uint64_t sub_1C5710D28(uint64_t a1)
{
  v2 = [*(v1 + OBJC_IVAR___MUTransitDeparturesDataSource_dataProvider) inactiveLinesSectionControllersForSystem_];
  sub_1C5626E40(0, &qword_1EC170300, 0x1E696F3E0);
  v3 = sub_1C584F770();

  if (!(v3 >> 62))
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v4)
    {
      goto LABEL_3;
    }

LABEL_11:

    return MEMORY[0x1E69E7CC0];
  }

  v4 = sub_1C584FB90();
  if (!v4)
  {
    goto LABEL_11;
  }

LABEL_3:
  v8 = MEMORY[0x1E69E7CC0];
  result = sub_1C584FCC0();
  if (v4 < 0)
  {
    __break(1u);
  }

  else
  {
    v6 = 0;
    do
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        MEMORY[0x1C694A320](v6, v3);
      }

      else
      {
        v7 = *(v3 + 8 * v6 + 32);
      }

      ++v6;
      GEOLocationCoordinate2DMake();
      sub_1C584FCA0();
      sub_1C584FCD0();
      sub_1C584FCE0();
      sub_1C584FCB0();
    }

    while (v4 != v6);

    return v8;
  }

  return result;
}

uint64_t sub_1C5710EC8(SEL *a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(uint64_t))
{
  v8 = [*(v4 + OBJC_IVAR___MUTransitDeparturesDataSource_dataProvider) *a1];
  v9 = MEMORY[0x1E69E7CC0];
  if (!v8)
  {
    return v9;
  }

  v10 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v11 = sub_1C584F770();

  if (!(v11 >> 62))
  {
    v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v12)
    {
      goto LABEL_4;
    }

LABEL_12:

    return v9;
  }

  v12 = sub_1C584FB90();
  if (!v12)
  {
    goto LABEL_12;
  }

LABEL_4:
  result = sub_1C584FCC0();
  if ((v12 & 0x8000000000000000) == 0)
  {
    v14 = 0;
    do
    {
      if ((v11 & 0xC000000000000001) != 0)
      {
        v15 = MEMORY[0x1C694A320](v14, v11);
      }

      else
      {
        v15 = swift_unknownObjectRetain();
      }

      ++v14;
      a4(v15);
      sub_1C584FCA0();
      sub_1C584FCD0();
      sub_1C584FCE0();
      sub_1C584FCB0();
    }

    while (v12 != v14);
    goto LABEL_12;
  }

  __break(1u);
  return result;
}

id TransitDeparturesDataSource.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id TransitDeparturesDataSource.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id TransitDeparturesDataSource.traits(for:)()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = [Strong traitsForDeparturesDataSource_];
    swift_unknownObjectRelease();
    return v2;
  }

  else
  {
    result = [objc_allocWithZone(MEMORY[0x1E69A2210]) init];
    if (!result)
    {
      __break(1u);
    }
  }

  return result;
}

void *TransitDeparturesDataSource.transitDeparturesDataProviderDidReload(_:)()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    [result transitDeparturesDataSourceWantsReload_];
    return swift_unknownObjectRelease();
  }

  return result;
}

void *sub_1C57113CC(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1C57114A0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_1C57113EC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TransitDeparturesContainerViewModel(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void *sub_1C57114A0(void *result, int64_t a2, char a3, void *a4)
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
LABEL_30:
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

  if (!v9)
  {
    v13 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC170378, &qword_1C58776A8);
  v10 = *(type metadata accessor for TransitDeparturesContainerViewModel(0) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(type metadata accessor for TransitDeparturesContainerViewModel(0) - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

void sub_1C5711678()
{
  v1 = OBJC_IVAR____TtC6MapsUI27TransitIncidentsSectionView_incidentViewModels;
  swift_beginAccess();
  v18 = v0;
  v2 = *&v0[v1];
  if (v2 >> 62)
  {
    v3 = sub_1C584FB90();
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = MEMORY[0x1E69E7CC0];
  if (v3)
  {
    v20 = MEMORY[0x1E69E7CC0];

    sub_1C584FCC0();
    if (v3 < 0)
    {
      __break(1u);
      return;
    }

    type metadata accessor for TransitIncidentRowView();
    v5 = 0;
    v6 = v2 & 0xC000000000000001;
    v7 = v2;
    do
    {
      if (v6)
      {
        v8 = MEMORY[0x1C694A320](v5, v2);
      }

      else
      {
        v8 = *(v2 + 8 * v5 + 32);
      }

      v9 = v8;
      ++v5;
      v10 = sub_1C565D6A4(0.0, 0.0, 0.0, 0.0);
      v11 = v9;
      sub_1C565D528(v9);
      v12 = [v10 viewModel];
      v13 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v14 = swift_allocObject();
      *(v14 + 16) = v13;
      *(v14 + 24) = v11;
      aBlock[4] = sub_1C5711CB0;
      aBlock[5] = v14;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1C564A8C4;
      aBlock[3] = &block_descriptor_9;
      v15 = _Block_copy(aBlock);
      v16 = v11;

      [v12 setActionBlock_];
      _Block_release(v15);

      swift_unknownObjectRelease();
      sub_1C584FCA0();
      sub_1C584FCD0();
      sub_1C584FCE0();
      sub_1C584FCB0();
      v2 = v7;
    }

    while (v3 != v5);

    v4 = v20;
  }

  if (v4 >> 62)
  {
    sub_1C5641BC8();

    sub_1C584FD10();
  }

  else
  {

    sub_1C584FDD0();
    sub_1C5641BC8();
  }

  sub_1C5641BC8();
  v17 = sub_1C584F750();

  [v18 setRowViews_];
}

void sub_1C571199C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC6MapsUI27TransitIncidentsSectionView_incidentViewModels;
  swift_beginAccess();
  *(v1 + v3) = a1;

  sub_1C5711678();
}

void sub_1C5711CB0()
{
  v1 = *(v0 + 24);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = Strong + OBJC_IVAR____TtC6MapsUI27TransitIncidentsSectionView_feedbackDelegate;
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v5 = *(v4 + 8);
      ObjectType = swift_getObjectType();
      (*(v5 + 8))(v3, v1, ObjectType, v5);
      swift_unknownObjectRelease();
    }
  }
}

double block_copy_helper_10(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

id HikingTipCoordinator.__allocating_init(mapService:locationDelegate:mapAccessProvider:presenter:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = objc_allocWithZone(v4);
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  v7 = OBJC_IVAR___MUHikingTipCoordinator_muidToFetchedTooltipCache;
  *&v6[v7] = sub_1C5713620(MEMORY[0x1E69E7CC0]);
  v6[OBJC_IVAR___MUHikingTipCoordinator_isBusy] = 0;
  *&v6[OBJC_IVAR___MUHikingTipCoordinator_mapService] = a1;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectWeakAssign();
  swift_unknownObjectWeakAssign();
  v11.receiver = v6;
  v11.super_class = v4;
  v8 = a1;
  v9 = objc_msgSendSuper2(&v11, sel_init);

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v9;
}

id HikingTipCoordinator.init(mapService:locationDelegate:mapAccessProvider:presenter:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_1C571371C(a1, a2, a3, a4);

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v5;
}

void *sub_1C5711FB4()
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    [result coordinateForTooltip];
    v2 = v1;
    v4 = v3;
    swift_unknownObjectRelease();
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      [result requestHikingToolTipRegionIDForLocationCoordinate_];

      return swift_unknownObjectRelease();
    }
  }

  return result;
}

void sub_1C571205C(void *a1)
{
  v2 = v1;
  v4 = [a1 muid];
  v5 = OBJC_IVAR___MUHikingTipCoordinator_muidToFetchedTooltipCache;
  swift_beginAccess();
  v6 = *(v2 + v5);
  if (*(v6 + 16) && (v7 = sub_1C5712EF4(v4), (v8 & 1) != 0))
  {
    v9 = *(*(v6 + 56) + 8 * v7);
    sub_1C5712774(v9, 0, a1);
  }

  else
  {
    v10 = *(v2 + OBJC_IVAR___MUHikingTipCoordinator_mapService);
    v11 = [v10 defaultTraits];
    v12 = v11;
    if (v11)
    {
      [v11 setWantsRouteCreationTip_];
    }

    v13 = [v10 ticketForHikingIntroTip:a1 traits:v12];
    if (v13)
    {
      v14 = v13;
      v15 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v16 = swift_allocObject();
      *(v16 + 16) = v15;
      *(v16 + 24) = a1;
      aBlock[4] = sub_1C5713820;
      aBlock[5] = v16;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1C5664664;
      aBlock[3] = &block_descriptor_10;
      v17 = _Block_copy(aBlock);
      v18 = a1;

      [v14 submitWithHandler:v17 networkActivity:0];
      _Block_release(v17);

      swift_unknownObjectRelease();
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_1C571224C(void *a1, void *a2, uint64_t a3, void *a4)
{
  v7 = sub_1C584F2C0();
  v8 = *(v7 - 8);
  v10 = MEMORY[0x1EEE9AC00](v7, v9);
  v12 = &v44[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = MEMORY[0x1EEE9AC00](v10, v13);
  v16 = &v44[-v15];
  MEMORY[0x1EEE9AC00](v14, v17);
  v19 = &v44[-v18];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v21 = Strong;
    if (a2)
    {
      v22 = a2;
      v23 = sub_1C5716084();
      (*(v8 + 16))(v19, v23, v7);
      v24 = a2;
      v25 = sub_1C584F2A0();
      v26 = sub_1C584F9B0();

      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        v28 = swift_slowAlloc();
        *v27 = 138412290;
        v29 = a2;
        v30 = _swift_stdlib_bridgeErrorToNSError();
        *(v27 + 4) = v30;
        *v28 = v30;
        _os_log_impl(&dword_1C5620000, v25, v26, "HikingTipCoordinator: error downloading tip %@", v27, 0xCu);
        sub_1C567CCE0(v28);
        MEMORY[0x1C694B7A0](v28, -1, -1);
        MEMORY[0x1C694B7A0](v27, -1, -1);
      }

      else
      {
      }

      (*(v8 + 8))(v19, v7);
    }

    else if (a1)
    {
      v31 = a1;
      v32 = [v31 _geoMapItem];
      if (v32)
      {
        v33 = [v32 _tooltip];
        swift_unknownObjectRelease();
        if (v33)
        {
          v34 = [a4 muid];
          swift_beginAccess();
          v35 = v33;
          sub_1C57126B4(v33, v34);
          swift_endAccess();
          sub_1C5712774(v35, 0, a4);

          v21 = v35;
LABEL_12:

          return;
        }
      }

      v36 = sub_1C5716084();
      (*(v8 + 16))(v12, v36, v7);
      v37 = sub_1C584F2A0();
      v38 = sub_1C584F9B0();
      if (os_log_type_enabled(v37, v38))
      {
        v39 = swift_slowAlloc();
        *v39 = 0;
        _os_log_impl(&dword_1C5620000, v37, v38, "HikingTipCoordinator: mapItem does not contain tooltip", v39, 2u);
        MEMORY[0x1C694B7A0](v39, -1, -1);
      }

      (*(v8 + 8))(v12, v7);
    }

    else
    {
      v40 = sub_1C5716084();
      (*(v8 + 16))(v16, v40, v7);
      v41 = sub_1C584F2A0();
      v42 = sub_1C584F9B0();
      if (os_log_type_enabled(v41, v42))
      {
        v43 = swift_slowAlloc();
        *v43 = 0;
        _os_log_impl(&dword_1C5620000, v41, v42, "HikingTipCoordinator: error received nil mapItem", v43, 2u);
        MEMORY[0x1C694B7A0](v43, -1, -1);
      }

      (*(v8 + 8))(v16, v7);
    }

    *(v21 + OBJC_IVAR___MUHikingTipCoordinator_isBusy) = 0;
    goto LABEL_12;
  }
}

uint64_t sub_1C57126B4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v2;
    result = sub_1C571337C(a1, a2, isUniquelyReferenced_nonNull_native);
    *v2 = v12;
  }

  else
  {
    result = sub_1C5712EF4(a2);
    if (v8)
    {
      v9 = result;
      v10 = swift_isUniquelyReferenced_nonNull_native();
      v11 = *v2;
      v13 = *v3;
      if (!v10)
      {
        sub_1C57134C4();
        v11 = v13;
      }

      result = sub_1C571320C(v9, v11);
      *v3 = v11;
    }
  }

  return result;
}

uint64_t sub_1C5712774(void *a1, void *a2, void *a3)
{
  v78 = a2;
  v5 = sub_1C584F2C0();
  v6 = *(v5 - 8);
  v8 = MEMORY[0x1EEE9AC00](v5, v7);
  v81 = &v74 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &v74 - v11;
  v13 = sub_1C5716084();
  v79 = *(v6 + 16);
  v80 = v13;
  v77 = v6 + 16;
  v79(v12);
  v14 = a1;
  v15 = a3;
  v16 = sub_1C584F2A0();
  v17 = sub_1C584F990();

  v18 = os_log_type_enabled(v16, v17);
  v19 = &selRef_shouldBlurChromeHeaderButtons;
  v83 = v6;
  v84 = v5;
  if (v18)
  {
    v20 = swift_slowAlloc();
    v76 = swift_slowAlloc();
    v87 = v76;
    *v20 = 134218754;
    *(v20 + 4) = [v15 muid];

    *(v20 + 12) = 2080;
    v21 = [v14 title];
    if (v21)
    {
      v22 = v21;
      v23 = sub_1C584F660();
      v25 = v24;
    }

    else
    {
      v23 = 0;
      v25 = 0;
    }

    v85 = v23;
    v86 = v25;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16FE60, &unk_1C5877750);
    v26 = sub_1C584F680();
    v28 = sub_1C5649518(v26, v27, &v87);

    *(v20 + 14) = v28;
    *(v20 + 22) = 2080;
    v29 = [v14 subtitle];
    if (v29)
    {
      v30 = v29;
      v31 = sub_1C584F660();
      v33 = v32;
    }

    else
    {
      v31 = 0;
      v33 = 0;
    }

    v85 = v31;
    v86 = v33;
    v34 = sub_1C584F680();
    v36 = sub_1C5649518(v34, v35, &v87);

    *(v20 + 24) = v36;
    *(v20 + 32) = 2080;
    v85 = [v14 photo];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC170490, &qword_1C5877760);
    v37 = sub_1C584F680();
    v39 = sub_1C5649518(v37, v38, &v87);

    *(v20 + 34) = v39;
    _os_log_impl(&dword_1C5620000, v16, v17, "HikingTipCoordinator: will try to present tip with muid: %llu title:%s subtitle:%s image:%s", v20, 0x2Au);
    v40 = v76;
    swift_arrayDestroy();
    MEMORY[0x1C694B7A0](v40, -1, -1);
    MEMORY[0x1C694B7A0](v20, -1, -1);

    v76 = *(v83 + 8);
    v76(v12, v84);
    v19 = &selRef_shouldBlurChromeHeaderButtons;
  }

  else
  {

    v76 = *(v6 + 8);
    v76(v12, v5);
  }

  v41 = [v14 title];
  if (v41)
  {
    v42 = v41;
    v75 = sub_1C584F660();
    v44 = v43;
  }

  else
  {
    v75 = 0;
    v44 = 0;
  }

  v45 = [v14 v19[137]];
  if (v45)
  {
    v46 = v45;
    v47 = sub_1C584F660();
    v49 = v48;
  }

  else
  {
    v47 = 0;
    v49 = 0;
  }

  v50 = [v14 actionLink];
  v51 = v15;
  if (v50)
  {
    v52 = v50;
    v53 = sub_1C584F660();
    v55 = v54;
  }

  else
  {
    v53 = 0;
    v55 = 0;
  }

  type metadata accessor for HikingTipViewModel();
  v56 = v78;
  v57 = v78;
  v58 = [v14 usesOriginMapItem];
  v59 = v51;
  v60 = sub_1C57736C0(v59, v75, v44, v47, v49, v53, v55, v56, v58);
  v61 = v82;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v63 = [Strong displayHikingTipWithViewModel_];
    swift_unknownObjectRelease();
  }

  else
  {
    v63 = 0;
  }

  v64 = v84;
  v65 = v81;
  (v79)(v81, v80, v84);
  v66 = sub_1C584F2A0();
  v67 = sub_1C584F990();
  if (os_log_type_enabled(v66, v67))
  {
    v68 = swift_slowAlloc();
    v69 = swift_slowAlloc();
    v85 = v69;
    *v68 = 136315138;
    if (v63)
    {
      v70 = 0x6564656563637573;
    }

    else
    {
      v70 = 0x64656C696166;
    }

    if (v63)
    {
      v71 = 0xE900000000000064;
    }

    else
    {
      v71 = 0xE600000000000000;
    }

    v72 = sub_1C5649518(v70, v71, &v85);

    *(v68 + 4) = v72;
    _os_log_impl(&dword_1C5620000, v66, v67, "HikingTipCoordinator: attempt to present tip %s", v68, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v69);
    MEMORY[0x1C694B7A0](v69, -1, -1);
    MEMORY[0x1C694B7A0](v68, -1, -1);
  }

  result = (v76)(v65, v64);
  *(v61 + OBJC_IVAR___MUHikingTipCoordinator_isBusy) = 0;
  return result;
}

id HikingTipCoordinator.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id HikingTipCoordinator.__deallocating_deinit(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for HikingTipCoordinator();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

unint64_t sub_1C5712EF4(uint64_t a1)
{
  v2 = sub_1C584FE90();

  return sub_1C5712F38(a1, v2);
}

unint64_t sub_1C5712F38(uint64_t a1, uint64_t a2)
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

void sub_1C5712FA4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC170498, &qword_1C5877768);
  v6 = sub_1C584FD40();
  v7 = v6;
  if (*(v5 + 16))
  {
    v32 = v3;
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
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((v4 & 1) == 0)
      {
        v22 = v21;
      }

      v23 = sub_1C584FE90();
      v24 = -1 << *(v7 + 32);
      v25 = v23 & ~v24;
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
        return;
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
}

uint64_t sub_1C571320C(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1C584FB60() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 48);
      v10 = (v9 + 8 * v6);
      result = sub_1C584FE90();
      v11 = result & v7;
      if (v3 >= v8)
      {
        if (v11 >= v8 && v3 >= v11)
        {
LABEL_15:
          v14 = (v9 + 8 * v3);
          if (v3 != v6 || v14 >= v10 + 1)
          {
            *v14 = *v10;
          }

          v15 = *(a2 + 56);
          v16 = (v15 + 8 * v3);
          v17 = (v15 + 8 * v6);
          if (v3 != v6 || v16 >= v17 + 1)
          {
            *v16 = *v17;
            v3 = v6;
          }
        }
      }

      else if (v11 >= v8 || v3 >= v11)
      {
        goto LABEL_15;
      }

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

unint64_t sub_1C571337C(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  result = sub_1C5712EF4(a2);
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
  if (v16 >= v14 && (a3 & 1) != 0)
  {
LABEL_8:
    v19 = *v4;
    if (v15)
    {
      v20 = v19[7];
      v21 = *(v20 + 8 * result);
      *(v20 + 8 * result) = a1;

      return MEMORY[0x1EEE66BB8](result, v21);
    }

    v19[(result >> 6) + 8] |= 1 << result;
    *(v19[6] + 8 * result) = a2;
    *(v19[7] + 8 * result) = a1;
    v22 = v19[2];
    v13 = __OFADD__(v22, 1);
    v23 = v22 + 1;
    if (!v13)
    {
      v19[2] = v23;
      return result;
    }

    goto LABEL_15;
  }

  if (v16 >= v14 && (a3 & 1) == 0)
  {
    v17 = result;
    sub_1C57134C4();
    result = v17;
    goto LABEL_8;
  }

  sub_1C5712FA4(v14, a3 & 1);
  result = sub_1C5712EF4(a2);
  if ((v15 & 1) == (v18 & 1))
  {
    goto LABEL_8;
  }

LABEL_16:
  result = sub_1C584FE00();
  __break(1u);
  return MEMORY[0x1EEE66BB8](result, v21);
}

void sub_1C57134C4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC170498, &qword_1C5877768);
  v2 = *v0;
  v3 = sub_1C584FD30();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
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
        v19 = v18;
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
}

unint64_t sub_1C5713620(void *a1)
{
  v1 = a1[2];
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC170498, &qword_1C5877768);
  v3 = sub_1C584FD50();
  v4 = a1[4];
  v5 = a1[5];
  result = sub_1C5712EF4(v4);
  if (v7)
  {
LABEL_7:
    __break(1u);
LABEL_8:
    v16 = v5;
    return v3;
  }

  v8 = (a1 + 7);
  while (1)
  {
    *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    *(v3[6] + 8 * result) = v4;
    *(v3[7] + 8 * result) = v5;
    v9 = v3[2];
    v10 = __OFADD__(v9, 1);
    v11 = v9 + 1;
    if (v10)
    {
      break;
    }

    v3[2] = v11;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v12 = v8 + 2;
    v4 = *(v8 - 1);
    v13 = *v8;
    v14 = v5;
    result = sub_1C5712EF4(v4);
    v8 = v12;
    v5 = v13;
    if (v15)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

id sub_1C571371C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  v6 = OBJC_IVAR___MUHikingTipCoordinator_muidToFetchedTooltipCache;
  *&v4[v6] = sub_1C5713620(MEMORY[0x1E69E7CC0]);
  v4[OBJC_IVAR___MUHikingTipCoordinator_isBusy] = 0;
  *&v4[OBJC_IVAR___MUHikingTipCoordinator_mapService] = a1;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectWeakAssign();
  swift_unknownObjectWeakAssign();
  v9.receiver = v4;
  v9.super_class = type metadata accessor for HikingTipCoordinator();
  v7 = a1;
  return objc_msgSendSuper2(&v9, sel_init);
}

double block_copy_helper_11(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_1C5713890@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1C584EE90();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v29[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  type metadata accessor for MUPlaceActionBarTypeDirections();
  v7 = swift_dynamicCastClass();
  if (v7)
  {
    v8 = (v7 + OBJC_IVAR___MUPlaceActionBarTypeDirections_modality);
    v9 = v7;
    swift_beginAccess();
    v11 = *v8;
    v10 = v8[1];
    v12 = (v9 + OBJC_IVAR___MUPlaceActionBarTypeDirections_eta);
    swift_beginAccess();
    v13 = *v12;
    v14 = v12[1];
    *v6 = v11;
    v6[1] = v10;
    v6[2] = v13;
    v6[3] = v14;
    (*(v3 + 104))(v6, *MEMORY[0x1E69AE040], v2);

LABEL_10:
    sub_1C584EEB0();
    v25 = sub_1C584EEC0();
    return (*(*(v25 - 8) + 56))(a1, 0, 1, v25);
  }

  type metadata accessor for MUPlaceActionBarTypeAdd();
  v15 = swift_dynamicCastClass();
  if (v15)
  {
    v16 = OBJC_IVAR___MUPlaceActionBarTypeAdd_added;
    v17 = v15;
    swift_beginAccess();
    *v6 = *(v17 + v16);
    v18 = MEMORY[0x1E69AE048];
LABEL_9:
    (*(v3 + 104))(v6, *v18, v2);
    goto LABEL_10;
  }

  type metadata accessor for MUPlaceActionBarTypeFavorite();
  v19 = swift_dynamicCastClass();
  if (v19)
  {
    v20 = OBJC_IVAR___MUPlaceActionBarTypeFavorite_favorited;
    v21 = v19;
    swift_beginAccess();
    *v6 = *(v21 + v20);
    v18 = MEMORY[0x1E69AE060];
    goto LABEL_9;
  }

  type metadata accessor for MUPlaceActionBarTypeRate();
  v22 = swift_dynamicCastClass();
  if (v22)
  {
    v23 = OBJC_IVAR___MUPlaceActionBarTypeRate_rated;
    v24 = v22;
    swift_beginAccess();
    *v6 = *(v24 + v23);
    v18 = MEMORY[0x1E69AE050];
    goto LABEL_9;
  }

  v27 = sub_1C584EEC0();
  v28 = *(*(v27 - 8) + 56);

  return v28(a1, 1, 1, v27);
}

id MUPlaceActionBarController.actionDispatcher.getter()
{
  v1 = OBJC_IVAR____TtC6MapsUI26MUPlaceActionBarController_actionDispatcher;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void MUPlaceActionBarController.actionDispatcher.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC6MapsUI26MUPlaceActionBarController_actionDispatcher;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t MUPlaceActionBarController.delegate.setter(uint64_t a1)
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

uint64_t sub_1C5714058@<X0>(uint64_t *a2@<X8>)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  *a2 = result;
  return result;
}

void (*MUPlaceActionBarController.delegate.modify(uint64_t *a1))(void **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC6MapsUI26MUPlaceActionBarController_delegate;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_1C56430D0;
}

id MUPlaceActionBarController.__allocating_init(actionDispatcher:delegate:)(void *a1, uint64_t a2)
{
  v4 = objc_allocWithZone(v2);
  swift_unknownObjectWeakInit();
  *&v4[OBJC_IVAR____TtC6MapsUI26MUPlaceActionBarController_actionDispatcher] = a1;
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  v8.receiver = v4;
  v8.super_class = v2;
  v5 = a1;
  v6 = objc_msgSendSuper2(&v8, sel_init);

  swift_unknownObjectRelease();
  return v6;
}

id MUPlaceActionBarController.init(actionDispatcher:delegate:)(void *a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  swift_unknownObjectWeakInit();
  *&v2[OBJC_IVAR____TtC6MapsUI26MUPlaceActionBarController_actionDispatcher] = a1;
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  v8.receiver = v2;
  v8.super_class = ObjectType;
  v5 = a1;
  v6 = objc_msgSendSuper2(&v8, sel_init);

  swift_unknownObjectRelease();
  return v6;
}

uint64_t MUPlaceActionBarController.update(leadingItem:trailingItems:menuItems:)(char *a1, unint64_t a2, unint64_t a3)
{
  v7 = type metadata accessor for PlaceActionBarLayout(0);
  v9 = MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v135 = &v131 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v11);
  v139 = &v131 - v12;
  v13 = type metadata accessor for PlaceActionBarLayoutItem(0);
  v149 = *(v13 - 1);
  v15 = MEMORY[0x1EEE9AC00](v13, v14);
  v132 = &v131 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v15, v17);
  v133 = &v131 - v19;
  v21 = MEMORY[0x1EEE9AC00](v18, v20);
  v158 = &v131 - v22;
  MEMORY[0x1EEE9AC00](v21, v23);
  v157 = &v131 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC170510, qword_1C5877770);
  v27 = MEMORY[0x1EEE9AC00](v25 - 8, v26);
  v29 = (&v131 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v27, v30);
  v148 = &v131 - v31;
  v147 = sub_1C584EB60();
  v138 = *(v147 - 8);
  MEMORY[0x1EEE9AC00](v147, v32);
  v146 = &v131 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16FE18, &unk_1C5877850);
  v36 = MEMORY[0x1EEE9AC00](v34 - 8, v35);
  v134 = &v131 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = MEMORY[0x1EEE9AC00](v36, v38);
  v156 = &v131 - v40;
  MEMORY[0x1EEE9AC00](v39, v41);
  v43 = &v131 - v42;
  if (!a1 && a2)
  {
    if (a2 >> 62)
    {
      if (sub_1C584FB90())
      {
        goto LABEL_10;
      }
    }

    else if (*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_10;
    }

    if (a3)
    {
      if (a3 >> 62)
      {
        goto LABEL_66;
      }

      if (!*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
LABEL_8:
        swift_beginAccess();
        Strong = swift_unknownObjectWeakLoadStrong();
        if (Strong)
        {
          [Strong placeActionBarController:v3 didUpdateActionBarConfiguration:0];
          swift_unknownObjectRelease();
        }

        goto LABEL_10;
      }
    }
  }

  while (1)
  {
LABEL_10:
    v137 = v3;
    v46 = (v149 + 56);
    v45 = *(v149 + 56);
    v45(v43, 1, 1, v13);
    v140 = v43;
    v136 = a3;
    if (a1)
    {
      v153 = v45;
      type metadata accessor for MUPlaceActionDispatcher.CustomAction();
      v47 = OBJC_IVAR___MUPlaceActionBarItem_handlers;
      swift_beginAccess();
      v48 = *&a1[v47];

      v43 = a1;
      v152 = MUPlaceActionDispatcher.CustomAction.__allocating_init(handlers:)(v48);
      v49 = OBJC_IVAR___MUPlaceActionBarItem_type;
      swift_beginAccess();
      v50 = [*&v43[v49] symbol];
      v51 = sub_1C584F660();
      v150 = v52;
      v151 = v51;

      v53 = [*&v43[v49] title];
      v143 = a2;
      v154 = v29;
      v155 = v13;
      if (v53)
      {
        v54 = v53;
        v55 = sub_1C584F660();
        v144 = v56;
        v145 = v55;
      }

      else
      {
        v144 = 0;
        v145 = 0;
      }

      v57 = v146;
      sub_1C584EB50();
      v58 = sub_1C584EB40();
      v13 = v59;
      (*(v138 + 8))(v57, v147);
      v60 = &v43[OBJC_IVAR___MUPlaceActionBarItem_axID];
      swift_beginAccess();
      v62 = *v60;
      v61 = v60[1];

      v29 = v148;
      sub_1C5716754(v63);
      v64 = v152;
      v142 = v152;
      v128 = v58;
      v65 = v156;
      sub_1C57163A4(v29, v64, 0, 0, v151, v150, v145, v144, v156, v128, v13, v62, v61);
      a1 = v155;
      v153(v65, 0, 1, v155);
      v46 = v140;
      sub_1C56ECE38(v65, v140, &qword_1EC16FE18, &unk_1C5877850);
      v66 = *&v43[v49];
      a3 = v154;
      sub_1C5713890(v154);

      result = (*(v149 + 48))(v46, 1, a1);
      if (result == 1)
      {
        __break(1u);
        return result;
      }

      sub_1C56ECE38(a3, v46, &unk_1EC170510, qword_1C5877770);
      a2 = v143;
    }

    v68 = a2 ? a2 : MEMORY[0x1E69E7CC0];
    v3 = v68;
    if (v68 >> 62)
    {
      v69 = sub_1C584FB90();
      if (!v69)
      {
LABEL_36:

        v29 = MEMORY[0x1E69E7CC0];
        goto LABEL_37;
      }
    }

    else
    {
      v69 = *((v68 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v69)
      {
        goto LABEL_36;
      }
    }

    v145 = type metadata accessor for MUPlaceActionDispatcher.CustomAction();
    if (v69 < 1)
    {
      __break(1u);
      goto LABEL_60;
    }

    v141 = (v138 + 8);
    v142 = (v3 & 0xC000000000000001);

    v70 = v3;
    v71 = 0;
    v29 = MEMORY[0x1E69E7CC0];
    v143 = v69;
    v144 = v3;
    do
    {
      v154 = v29;
      if (v142)
      {
        v72 = MEMORY[0x1C694A320](v71, v70);
      }

      else
      {
        v72 = *(v70 + 8 * v71 + 32);
      }

      v73 = v72;
      swift_beginAccess();

      v153 = MUPlaceActionDispatcher.CustomAction.__allocating_init(handlers:)(v74);
      v75 = OBJC_IVAR___MUPlaceActionBarItem_type;
      swift_beginAccess();
      v76 = [*&v73[v75] symbol];
      v77 = sub_1C584F660();
      v150 = v78;
      v151 = v77;

      v79 = [*&v73[v75] title];
      if (v79)
      {
        v80 = v79;
        v81 = sub_1C584F660();
        v155 = v82;
        v156 = v81;
      }

      else
      {
        v155 = 0;
        v156 = 0;
      }

      v83 = v146;
      sub_1C584EB50();
      v84 = sub_1C584EB40();
      v13 = v85;
      (*v141)(v83, v147);
      v86 = &v73[OBJC_IVAR___MUPlaceActionBarItem_axID];
      swift_beginAccess();
      v87 = *v86;
      a2 = v86[1];

      v88 = v148;
      sub_1C5716754(v89);
      v90 = v153;
      v152 = v153;
      v130 = v87;
      v43 = v157;
      sub_1C57163A4(v88, v90, 0, 0, v151, v150, v156, v155, v157, v84, v13, v130, a2);
      v91 = *&v73[v75];
      sub_1C5713890(v88);

      sub_1C56ECE38(v88, v43, &unk_1EC170510, qword_1C5877770);
      sub_1C5715598(v43, v158, type metadata accessor for PlaceActionBarLayoutItem);
      v29 = v154;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v29 = sub_1C571535C(0, v29[2] + 1, 1, v29);
      }

      v93 = v29[2];
      v92 = v29[3];
      if (v93 >= v92 >> 1)
      {
        v29 = sub_1C571535C((v92 > 1), v93 + 1, 1, v29);
      }

      ++v71;

      v29[2] = v93 + 1;
      sub_1C5715534(v158, v29 + ((*(v149 + 80) + 32) & ~*(v149 + 80)) + *(v149 + 72) * v93);
      sub_1C5715600(v157, type metadata accessor for PlaceActionBarLayoutItem);
      v70 = v144;
    }

    while (v143 != v71);
LABEL_37:

    a3 = v136;
    if (!v136)
    {
      v46 = v137;
      a1 = v140;
      goto LABEL_55;
    }

    v3 = v136 & 0xFFFFFFFFFFFFFF8;
    v46 = v137;
    a1 = v140;
    if (!(v136 >> 62))
    {
      if (!*((v136 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_55;
      }

      goto LABEL_40;
    }

LABEL_60:
    if (!sub_1C584FB90())
    {
      goto LABEL_55;
    }

LABEL_40:
    v94 = swift_allocObject();
    *(v94 + 16) = a3;
    a1 = (a3 & 0xC000000000000001);
    if ((a3 & 0xC000000000000001) != 0)
    {
      break;
    }

    if (*(v3 + 16))
    {
      v95 = *(a3 + 32);

      v96 = v95;
      goto LABEL_43;
    }

    __break(1u);
LABEL_66:
    if (!sub_1C584FB90())
    {
      goto LABEL_8;
    }
  }

  v96 = MEMORY[0x1C694A320](0, a3);
LABEL_43:
  v97 = v96;
  v98 = OBJC_IVAR___MUPlaceActionBarItem_type;
  swift_beginAccess();
  v99 = *&v97[v98];

  v100 = [v99 symbol];
  v101 = sub_1C584F660();
  v103 = v102;

  if (a1)
  {
    v104 = MEMORY[0x1C694A320](0, a3);
  }

  else
  {
    v104 = *(a3 + 32);
  }

  v105 = v104;
  v106 = OBJC_IVAR___MUPlaceActionBarItem_type;
  swift_beginAccess();
  v107 = *&v105[v106];

  v108 = [v107 title];
  if (v108)
  {
    v109 = sub_1C584F660();
    v111 = v110;
  }

  else
  {
    v109 = 0;
    v111 = 0;
  }

  v112 = v146;
  sub_1C584EB50();
  v113 = sub_1C584EB40();
  v115 = v114;
  v116.n128_f64[0] = (*(v138 + 8))(v112, v147);
  v117 = v148;
  sub_1C5716754(v116);

  v129 = v113;
  v118 = v133;
  sub_1C57163A4(v117, sub_1C5715660, v94, 2, v101, v103, v109, v111, v133, v129, v115, 1970169165, 0xE400000000000000);
  v119 = v132;
  sub_1C5715598(v118, v132, type metadata accessor for PlaceActionBarLayoutItem);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v29 = sub_1C571535C(0, v29[2] + 1, 1, v29);
  }

  a1 = v140;
  v121 = v29[2];
  v120 = v29[3];
  if (v121 >= v120 >> 1)
  {
    v29 = sub_1C571535C((v120 > 1), v121 + 1, 1, v29);
  }

  sub_1C5715600(v133, type metadata accessor for PlaceActionBarLayoutItem);
  v29[2] = v121 + 1;
  sub_1C5715534(v119, v29 + ((*(v149 + 80) + 32) & ~*(v149 + 80)) + *(v149 + 72) * v121);
  v46 = v137;
LABEL_55:
  v122 = v134;
  sub_1C56466CC(a1, v134, &qword_1EC16FE18, &unk_1C5877850);
  v123 = v139;
  sub_1C57162A0(v122, v29, v139);
  type metadata accessor for PlaceActionBarConfiguration(0);
  v124 = v135;
  sub_1C5715598(v123, v135, type metadata accessor for PlaceActionBarLayout);
  v125 = OBJC_IVAR____TtC6MapsUI26MUPlaceActionBarController_actionDispatcher;
  swift_beginAccess();
  v126 = sub_1C5704684(v124, *&v46[v125], 0, 0);
  swift_beginAccess();
  v127 = swift_unknownObjectWeakLoadStrong();
  if (v127)
  {
    [v127 placeActionBarController:v46 didUpdateActionBarConfiguration:v126];

    swift_unknownObjectRelease();
  }

  else
  {
  }

  sub_1C5715600(v139, type metadata accessor for PlaceActionBarLayout);
  return sub_1C5625230(a1, &qword_1EC16FE18, &unk_1C5877850);
}

id MUPlaceActionBarController.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id MUPlaceActionBarController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void *sub_1C571535C(void *result, int64_t a2, char a3, void *a4)
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
LABEL_30:
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

  if (!v9)
  {
    v13 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC170A50, &unk_1C5878AF0);
  v10 = *(type metadata accessor for PlaceActionBarLayoutItem(0) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(type metadata accessor for PlaceActionBarLayoutItem(0) - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

uint64_t sub_1C5715534(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PlaceActionBarLayoutItem(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C5715598(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1C5715600(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

id sub_1C5715660(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16);
  sub_1C56466CC(a1, &v51, &qword_1EC16E790, &unk_1C586A110);
  sub_1C56466CC(a1, v49, &qword_1EC16E790, &unk_1C586A110);
  v43 = v5;
  if (!v50)
  {
    sub_1C5625230(v49, &qword_1EC16E790, &unk_1C586A110);
    goto LABEL_8;
  }

  sub_1C5626E40(0, &qword_1EC1705A0, 0x1E69DC708);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_8;
  }

  if (![v46 respondsToSelector_])
  {

LABEL_8:
    sub_1C56466CC(a1, v49, &qword_1EC16E790, &unk_1C586A110);
    if (v50)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC170590, &unk_1C58777D0);
      if (swift_dynamicCast())
      {
        if ([v46 respondsToSelector_])
        {
          v9 = [v46 button];
          swift_unknownObjectRelease();
          if (v9)
          {
            v10 = sub_1C5626E40(0, &qword_1EC170598, 0x1E69DC738);
            sub_1C5625230(&v51, &qword_1EC16E790, &unk_1C586A110);
          }

          else
          {
            sub_1C5625230(&v51, &qword_1EC16E790, &unk_1C586A110);
            v10 = 0;
          }

          v11 = 0uLL;
        }

        else
        {
          swift_unknownObjectRelease();
          v11 = v52;
          v9 = v51;
          v10 = v53;
        }

        v52 = v11;
        v51 = v9;
        v53 = v10;
      }
    }

    else
    {
      sub_1C5625230(v49, &qword_1EC16E790, &unk_1C586A110);
    }

    goto LABEL_18;
  }

  result = [v46 performSelector_];
  if (!result)
  {
    goto LABEL_52;
  }

  v7 = result;
  swift_unknownObjectRetain();
  ObjectType = swift_getObjectType();

  sub_1C5625230(&v51, &qword_1EC16E790, &unk_1C586A110);
  v51 = v7;
  v53 = ObjectType;
LABEL_18:
  v48 = MEMORY[0x1E69E7CC0];
  if (v5 >> 62)
  {
LABEL_45:
    v12 = sub_1C584FB90();
    if (v12)
    {
      goto LABEL_20;
    }

LABEL_46:
    v14 = MEMORY[0x1E69E7CC0];
LABEL_47:
    if (v14 >> 62)
    {
      sub_1C5626E40(0, &qword_1EC170520, 0x1E69DCC78);

      sub_1C584FD10();
    }

    else
    {

      sub_1C584FDD0();
      sub_1C5626E40(0, &qword_1EC170520, 0x1E69DCC78);
    }

    sub_1C5626E40(0, &qword_1EC16DE20, 0x1E69DCC60);
    v39 = sub_1C584FA70();
    sub_1C5625230(&v51, &qword_1EC16E790, &unk_1C586A110);
    return v39;
  }

  v12 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v12)
  {
    goto LABEL_46;
  }

LABEL_20:
  v13 = 0;
  v44 = v5 & 0xC000000000000001;
  v41 = v5 + 32;
  v42 = v5 & 0xFFFFFFFFFFFFFF8;
  v14 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    if (v44)
    {
      v15 = MEMORY[0x1C694A320](v13, v5);
    }

    else
    {
      if (v13 >= *(v42 + 16))
      {
        goto LABEL_44;
      }

      v15 = *(v41 + 8 * v13);
    }

    v16 = v15;
    if (__OFADD__(v13++, 1))
    {
      __break(1u);
LABEL_44:
      __break(1u);
      goto LABEL_45;
    }

    v18 = OBJC_IVAR___MUPlaceActionBarItem_menuProviders;
    swift_beginAccess();
    v19 = *&v16[v18];
    v20 = *(v19 + 16);
    if (v20)
    {

      v21 = v19 + 40;
      do
      {
        v22 = *(v21 - 8);
        v45[0] = a2;

        v22(&v47, &v51, v45);

        if (v47)
        {
          v23 = v47;
          MEMORY[0x1C6949DF0](v23);
          if (*((v48 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v48 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_1C584F7A0();
          }

          sub_1C584F7E0();

          v14 = v48;
        }

        v21 += 16;
        --v20;
      }

      while (v20);

      v5 = v43;
      goto LABEL_22;
    }

    v24 = OBJC_IVAR___MUPlaceActionBarItem_handlers;
    swift_beginAccess();
    v25 = *&v16[v24];
    if (!(v25 >> 62))
    {
      if (*((v25 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        break;
      }

      goto LABEL_42;
    }

    if (sub_1C584FB90())
    {
      break;
    }

LABEL_42:

LABEL_22:
    if (v13 == v12)
    {
      goto LABEL_47;
    }
  }

  v26 = OBJC_IVAR___MUPlaceActionBarItem_type;
  swift_beginAccess();
  result = [*&v16[v26] title];
  if (result)
  {
    v27 = result;
    sub_1C5626E40(0, &qword_1EC16E110, 0x1E69DC628);
    sub_1C584F660();

    v28 = [*&v16[v26] symbol];
    v29 = [objc_opt_self() systemImageNamed_];

    v30 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v40 = v30;
    v31 = sub_1C584FAD0();
    v32 = &v16[OBJC_IVAR___MUPlaceActionBarItem_axID];
    swift_beginAccess();
    v33 = *(v32 + 1);
    v45[0] = *v32;
    v45[1] = v33;
    v34 = v31;

    MEMORY[0x1C6949D90](0x6D657449756E654DLL, 0xE800000000000000);
    v35 = sub_1C584F630();

    [v34 setAccessibilityIdentifier_];

    sub_1C5626E40(0, &qword_1EC16DE20, 0x1E69DCC60);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16DBD0, &unk_1C58682B0);
    v36 = swift_allocObject();
    *(v36 + 16) = xmmword_1C5867970;
    *(v36 + 32) = v34;
    v37 = v34;
    v38 = sub_1C584FA70();
    MEMORY[0x1C6949DF0](v38);
    if (*((v48 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v48 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1C584F7A0();
    }

    sub_1C584F7E0();

    v14 = v48;
    goto LABEL_22;
  }

  __break(1u);
LABEL_52:
  __break(1u);
  return result;
}

void sub_1C5715EB4()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = OBJC_IVAR___MUPlaceActionBarItem_handlers;
    swift_beginAccess();
    v3 = *&v1[v2];
    if (v3 >> 62)
    {
      v4 = sub_1C584FB90();
      if (v4)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v4)
      {
LABEL_4:
        if (v4 < 1)
        {
          __break(1u);
          return;
        }

        for (i = 0; i != v4; ++i)
        {
          if ((v3 & 0xC000000000000001) != 0)
          {
            v6 = MEMORY[0x1C694A320](i, v3);
          }

          else
          {
            v6 = *(v3 + 8 * i + 32);
            _Block_copy(v6);
          }

          v6[2](v6);
          _Block_release(v6);
        }
      }
    }
  }
}

uint64_t sub_1C5715FE4()
{
  v0 = sub_1C584F2C0();
  __swift_allocate_value_buffer(v0, qword_1EC18FA08);
  __swift_project_value_buffer(v0, qword_1EC18FA08);
  swift_beginAccess();

  return sub_1C584F2B0();
}

uint64_t sub_1C57160A8()
{
  v0 = sub_1C584F2C0();
  __swift_allocate_value_buffer(v0, qword_1EC190458);
  __swift_project_value_buffer(v0, qword_1EC190458);
  swift_beginAccess();

  return sub_1C584F2B0();
}

uint64_t sub_1C5716174(void *a1, uint64_t a2, uint64_t a3)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v4 = sub_1C584F2C0();

  return __swift_project_value_buffer(v4, a2);
}

uint64_t sub_1C57161C8()
{
  v1 = [*v0 serviceResumesDescription];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1C584F660();

  return v3;
}

id sub_1C5716230()
{
  result = [*v0 line];
  if (!result)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1C57162A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_1C56534F4(a1, a3, &qword_1EC16FE18, &unk_1C5877850);
  result = type metadata accessor for PlaceActionBarLayout(0);
  *(a3 + *(result + 20)) = a2;
  return result;
}

double sub_1C5716310(void *a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 == 2)
  {
  }

  else if (a3 <= 1u)
  {
    v3 = a1;
  }

  return result;
}

uint64_t sub_1C5716338@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1C584EEC0();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

int *sub_1C57163A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  sub_1C56534F4(a1, a9, &unk_1EC170510, qword_1C5877770);
  result = type metadata accessor for PlaceActionBarLayoutItem(0);
  v21 = a9 + result[5];
  *v21 = a2;
  *(v21 + 8) = a3;
  *(v21 + 16) = a4;
  v22 = (a9 + result[6]);
  *v22 = a5;
  v22[1] = a6;
  v23 = (a9 + result[7]);
  *v23 = a7;
  v23[1] = a8;
  v24 = (a9 + result[8]);
  *v24 = a10;
  v24[1] = a11;
  v25 = (a9 + result[9]);
  *v25 = a12;
  v25[1] = a13;
  return result;
}

void sub_1C57164A4(uint64_t a1)
{
  sub_1C5716588(319, &qword_1EC16D108, type metadata accessor for PlaceActionBarLayoutItem, MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    sub_1C5716588(319, &qword_1EC16D090, type metadata accessor for PlaceActionBarLayoutItem, MEMORY[0x1E69E62F8]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1C5716588(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_1C5716614(uint64_t a1)
{
  sub_1C5716588(319, &qword_1EC16D890, MEMORY[0x1E69AE080], MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    sub_1C57166E8();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1C57166E8()
{
  if (!qword_1EC16D0D0)
  {
    v0 = sub_1C584FAF0();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC16D0D0);
    }
  }
}

uint64_t WatchPlaceAcceptsPaymentsViewModel.title.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t WatchPlaceAcceptsPaymentsViewModel.init(title:amenityItemViewModels:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = result;
  a4[1] = a2;
  a4[2] = a3;
  return result;
}

uint64_t sub_1C57167A4()
{
  v1 = *(v0 + 48);

  return v1;
}

uint64_t sub_1C571681C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1C5716864(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
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

uint64_t sub_1C57168D8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 65))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1C5716920(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 65) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 65) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t WatchPlaceRibbonItemViewModel.axIDPrefix.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t WatchPlaceRibbonItemViewModel.title.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t WatchPlaceRibbonItemViewModel.symbol.getter()
{
  v1 = *(v0 + 48);

  return v1;
}

uint64_t WatchPlaceRibbonItemViewModel.text.getter()
{
  swift_getKeyPath();
  sub_1C5716B90();
  sub_1C584EF40();

  swift_beginAccess();
  v1 = *(v0 + 72);

  return v1;
}

double sub_1C5716AC0@<D0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1C5716B90();
  sub_1C584EF40();

  swift_beginAccess();
  v4 = *(v3 + 80);
  *a2 = *(v3 + 72);
  a2[1] = v4;

  return result;
}

uint64_t sub_1C5716B50(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return WatchPlaceRibbonItemViewModel.text.setter(v1, v2);
}

unint64_t sub_1C5716B90()
{
  result = qword_1EC170620;
  if (!qword_1EC170620)
  {
    type metadata accessor for WatchPlaceRibbonItemViewModel(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC170620);
  }

  return result;
}

uint64_t type metadata accessor for WatchPlaceRibbonItemViewModel(uint64_t a1)
{
  result = qword_1EC18E1C0;
  if (!qword_1EC18E1C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t WatchPlaceRibbonItemViewModel.text.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 72) == a1 && *(v2 + 80) == a2;
  if (v5 || (sub_1C584FDC0() & 1) != 0)
  {
    *(v2 + 72) = a1;
    *(v2 + 80) = a2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath, v8);
    sub_1C5716B90();
    sub_1C584EF30();
  }
}

uint64_t sub_1C5716D58()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  swift_beginAccess();
  *(v1 + 72) = v2;
  *(v1 + 80) = v3;
}

uint64_t (*WatchPlaceRibbonItemViewModel.text.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  swift_getKeyPath();
  v4[4] = OBJC_IVAR____TtC6MapsUI29WatchPlaceRibbonItemViewModel___observationRegistrar;
  *v4 = v1;
  v4[5] = sub_1C5716B90();
  sub_1C584EF40();

  *v4 = v1;
  swift_getKeyPath();
  sub_1C584EF60();

  swift_beginAccess();
  return sub_1C5716ED0;
}

void sub_1C5716ED0(void *a1)
{
  v1 = *a1;
  swift_endAccess();
  *v1 = v1[3];
  swift_getKeyPath();
  sub_1C584EF50();

  free(v1);
}

void *WatchPlaceRibbonItemViewModel.__allocating_init(title:symbol:symbolColor:text:axIDPrefix:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v17 = swift_allocObject();
  sub_1C584EF70();
  v17[4] = a1;
  v17[5] = a2;
  v17[6] = a3;
  v17[7] = a4;
  v17[8] = a5;
  v17[9] = a6;
  v17[10] = a7;
  v17[2] = a8;
  v17[3] = a9;
  return v17;
}

void *WatchPlaceRibbonItemViewModel.init(title:symbol:symbolColor:text:axIDPrefix:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_1C584EF70();
  v9[4] = a1;
  v9[5] = a2;
  v9[6] = a3;
  v9[7] = a4;
  v9[8] = a5;
  v9[9] = a6;
  v9[10] = a7;
  v9[2] = a8;
  v9[3] = a9;
  return v9;
}

void *WatchPlaceRibbonItemViewModel.__allocating_init(title:symbol:symbolColor:initialText:textPublisher:axIDPrefix:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v34 = a7;
  v35 = a8;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16E130, &qword_1C5869660);
  MEMORY[0x1EEE9AC00](v16 - 8, v17);
  v19 = &v30 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC170628, &unk_1C5877AE0);
  v32 = *(v20 - 8);
  v33 = v20;
  MEMORY[0x1EEE9AC00](v20, v21);
  v31 = &v30 - v22;
  v23 = swift_allocObject();
  sub_1C584EF70();
  v23[4] = a1;
  v23[5] = a2;
  v23[6] = a3;
  v23[7] = a4;
  v23[8] = a5;
  v23[9] = a6;
  v23[10] = v34;
  v23[2] = a9;
  v23[3] = a10;
  v24 = v35;
  sub_1C57176FC(v35, v19);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16E138, &qword_1C5869668);
  v26 = *(v25 - 8);
  if ((*(v26 + 48))(v19, 1, v25) == 1)
  {
    sub_1C571776C(v24);
    sub_1C571776C(v19);
  }

  else
  {
    sub_1C563D368(&qword_1EC170630, &qword_1EC16E138, &qword_1C5869668, MEMORY[0x1E695C068]);

    v27 = v31;
    sub_1C584F3D0();
    (*(v26 + 8))(v19, v25);
    swift_allocObject();
    swift_weakInit();
    sub_1C563D368(&qword_1EC170638, &qword_1EC170628, &unk_1C5877AE0, MEMORY[0x1E695BC80]);
    v28 = v33;
    sub_1C584F3E0();

    sub_1C571776C(v24);
    (*(v32 + 8))(v27, v28);
  }

  return v23;
}

void *WatchPlaceRibbonItemViewModel.init(title:symbol:symbolColor:initialText:textPublisher:axIDPrefix:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v11 = v10;
  v35 = a7;
  v36 = a8;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16E130, &qword_1C5869660);
  MEMORY[0x1EEE9AC00](v18 - 8, v19);
  v21 = &v31 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC170628, &unk_1C5877AE0);
  v33 = *(v22 - 8);
  v34 = v22;
  MEMORY[0x1EEE9AC00](v22, v23);
  v32 = &v31 - v24;
  sub_1C584EF70();
  v11[4] = a1;
  v11[5] = a2;
  v11[6] = a3;
  v11[7] = a4;
  v11[8] = a5;
  v11[9] = a6;
  v11[10] = v35;
  v11[2] = a9;
  v11[3] = a10;
  v25 = v36;
  sub_1C57176FC(v36, v21);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16E138, &qword_1C5869668);
  v27 = *(v26 - 8);
  if ((*(v27 + 48))(v21, 1, v26) == 1)
  {
    sub_1C571776C(v25);
    sub_1C571776C(v21);
  }

  else
  {
    sub_1C563D368(&qword_1EC170630, &qword_1EC16E138, &qword_1C5869668, MEMORY[0x1E695C068]);

    v28 = v32;
    sub_1C584F3D0();
    (*(v27 + 8))(v21, v26);
    swift_allocObject();
    swift_weakInit();
    sub_1C563D368(&qword_1EC170638, &qword_1EC170628, &unk_1C5877AE0, MEMORY[0x1E695BC80]);
    v29 = v34;
    sub_1C584F3E0();

    sub_1C571776C(v25);
    (*(v33 + 8))(v28, v29);
  }

  return v11;
}

uint64_t sub_1C57176FC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16E130, &qword_1C5869660);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C571776C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16E130, &qword_1C5869660);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

double sub_1C57177D4@<D0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v2 = *a1;
  v3 = a1[1];
  *a2 = v2;
  a2[1] = v3;

  return result;
}

double sub_1C57177E0(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {

    WatchPlaceRibbonItemViewModel.text.setter(v2, v3);
  }

  return result;
}

char *WatchPlaceRibbonItemViewModel.deinit()
{

  v1 = OBJC_IVAR____TtC6MapsUI29WatchPlaceRibbonItemViewModel___observationRegistrar;
  v2 = sub_1C584EF80();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t WatchPlaceRibbonItemViewModel.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtC6MapsUI29WatchPlaceRibbonItemViewModel___observationRegistrar;
  v2 = sub_1C584EF80();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_1C57179B4(uint64_t a1)
{
  result = sub_1C584EF80();
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

uint64_t sub_1C5717ABC@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR____TtC6MapsUI33MUWebBasedPlacecardViewController_viewControllerDelegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 8);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_1C5717B18(uint64_t *a1, void *a2)
{
  v2 = a1[1];
  v3 = *a2 + OBJC_IVAR____TtC6MapsUI33MUWebBasedPlacecardViewController_viewControllerDelegate;
  swift_beginAccess();
  *(v3 + 8) = v2;
  return swift_unknownObjectWeakAssign();
}

uint64_t MUWebBasedPlacecardViewController.viewControllerDelegate.setter(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC6MapsUI33MUWebBasedPlacecardViewController_viewControllerDelegate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*MUWebBasedPlacecardViewController.viewControllerDelegate.modify(uint64_t *a1))(uint64_t a1, char a2)
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
  v5 = OBJC_IVAR____TtC6MapsUI33MUWebBasedPlacecardViewController_viewControllerDelegate;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_1C5634780;
}

uint64_t MUWebBasedPlacecardViewController.defaultHeight.getter()
{
  v1 = v0 + OBJC_IVAR____TtC6MapsUI33MUWebBasedPlacecardViewController_defaultHeight;
  swift_beginAccess();
  return *v1;
}

uint64_t sub_1C5717D24@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR____TtC6MapsUI33MUWebBasedPlacecardViewController_defaultHeight;
  result = swift_beginAccess();
  v5 = *(v3 + 8);
  *a2 = *v3;
  *(a2 + 8) = v5;
  return result;
}

uint64_t sub_1C5717D80(uint64_t *a1, void *a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *a2 + OBJC_IVAR____TtC6MapsUI33MUWebBasedPlacecardViewController_defaultHeight;
  swift_beginAccess();
  *v4 = v2;
  *(v4 + 8) = v3;
  return sub_1C5717E48();
}

uint64_t MUWebBasedPlacecardViewController.defaultHeight.setter(uint64_t a1, char a2)
{
  v5 = v2 + OBJC_IVAR____TtC6MapsUI33MUWebBasedPlacecardViewController_defaultHeight;
  swift_beginAccess();
  *v5 = a1;
  *(v5 + 8) = a2 & 1;
  return sub_1C5717E48();
}

uint64_t sub_1C5717E48()
{
  v1 = OBJC_IVAR____TtC6MapsUI33MUWebBasedPlacecardViewController_heightConstraint;
  v2 = *(v0 + OBJC_IVAR____TtC6MapsUI33MUWebBasedPlacecardViewController_heightConstraint);
  if (v2)
  {
    v3 = v0 + OBJC_IVAR____TtC6MapsUI33MUWebBasedPlacecardViewController_defaultHeight;
    swift_beginAccess();
    v4 = *v3;
    if (*(v3 + 8))
    {
      v4 = 0.0;
    }

    [v2 setConstant_];
    v5 = *(v0 + v1);
    if (v5)
    {
LABEL_5:
      v6 = OBJC_IVAR____TtC6MapsUI33MUWebBasedPlacecardViewController_webView;
      swift_beginAccess();
      v7 = *(v0 + v6);
      v8 = v5;
      v9 = [v7 scrollView];
      v10 = [v9 isScrollEnabled];

      [v8 setActive_];
    }
  }

  else
  {
    v15 = OBJC_IVAR____TtC6MapsUI33MUWebBasedPlacecardViewController_webView;
    swift_beginAccess();
    v16 = [*(v0 + v15) heightAnchor];
    v17 = v0 + OBJC_IVAR____TtC6MapsUI33MUWebBasedPlacecardViewController_defaultHeight;
    swift_beginAccess();
    v18 = *v17;
    if (*(v17 + 8))
    {
      v18 = 0.0;
    }

    v19 = [v16 constraintEqualToConstant_];

    v20 = *(v0 + v1);
    *(v0 + v1) = v19;

    v5 = *(v0 + v1);
    if (v5)
    {
      goto LABEL_5;
    }
  }

  v11 = v0 + OBJC_IVAR____TtC6MapsUI33MUWebBasedPlacecardViewController_viewControllerDelegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v13 = *(v11 + 8);
    ObjectType = swift_getObjectType();
    (*(v13 + 16))(ObjectType, v13);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t (*MUWebBasedPlacecardViewController.defaultHeight.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1C57180A4;
}

uint64_t sub_1C57180A4(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return sub_1C5717E48();
  }

  return result;
}

id MUWebBasedPlacecardViewController.webView.getter()
{
  v1 = OBJC_IVAR____TtC6MapsUI33MUWebBasedPlacecardViewController_webView;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

char *MUWebBasedPlacecardViewController.init(webView:)(void *a1)
{
  ObjectType = swift_getObjectType();
  *&v1[OBJC_IVAR____TtC6MapsUI33MUWebBasedPlacecardViewController_viewControllerDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v4 = &v1[OBJC_IVAR____TtC6MapsUI33MUWebBasedPlacecardViewController_defaultHeight];
  *v4 = 0;
  v4[8] = 1;
  *&v1[OBJC_IVAR____TtC6MapsUI33MUWebBasedPlacecardViewController_heightConstraint] = 0;
  *&v1[OBJC_IVAR____TtC6MapsUI33MUWebBasedPlacecardViewController_loadingOverlayController] = 0;
  v5 = OBJC_IVAR____TtC6MapsUI33MUWebBasedPlacecardViewController_UIMenusDictionary;
  v6 = MEMORY[0x1E69E7CC0];
  *&v1[v5] = sub_1C571A608(MEMORY[0x1E69E7CC0], &qword_1EC1706E8, &qword_1C5877C50);
  v7 = OBJC_IVAR____TtC6MapsUI33MUWebBasedPlacecardViewController_textSelectionViewsDictionary;
  *&v1[v7] = sub_1C571A608(v6, &qword_1EC1706E0, &qword_1C5877C48);
  *&v1[OBJC_IVAR____TtC6MapsUI33MUWebBasedPlacecardViewController_webView] = a1;
  v30.receiver = v1;
  v30.super_class = ObjectType;
  v8 = a1;
  v9 = objc_msgSendSuper2(&v30, sel_initWithNibName_bundle_, 0, 0);
  v10 = OBJC_IVAR____TtC6MapsUI33MUWebBasedPlacecardViewController_webView;
  swift_beginAccess();
  v11 = *&v9[v10];
  v12 = v9;
  v13 = [v11 scrollView];
  [v13 setDelegate_];

  v14 = OBJC_IVAR____TtC6MapsUI33MUWebBasedPlacecardViewController_webView;
  swift_beginAccess();
  v15 = *&v12[v14];
  v16 = sub_1C584F630();
  [v15 setAccessibilityIdentifier_];

  result = [v12 view];
  if (result)
  {
    v18 = result;
    [result addSubview_];

    [*&v12[v14] setTranslatesAutoresizingMaskIntoConstraints_];
    v19 = [*&v12[v14] scrollView];
    [v19 setContentInsetAdjustmentBehavior_];

    v20 = *&v12[v14];
    result = [v12 view];
    if (result)
    {
      v21 = result;
      v22 = [objc_allocWithZone(MUEdgeLayout) initWithItem:v20 container:result];

      v23 = objc_opt_self();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16DBD0, &unk_1C58682B0);
      v24 = swift_allocObject();
      *(v24 + 16) = xmmword_1C5867970;
      *(v24 + 32) = v22;
      sub_1C5626E40(0, &qword_1EC16CFF8, off_1E8216188);
      v25 = v22;
      v26 = sub_1C584F750();

      [v23 _mapsui_activateLayouts_];

      v27 = objc_opt_self();
      v28 = [v27 defaultCenter];
      [v28 addObserver:v12 selector:sel_sceneDidEnterBackground name:*MEMORY[0x1E69DE348] object:0];

      v29 = [v27 defaultCenter];
      [v29 addObserver:v12 selector:sel_sceneWillEnterForeground name:*MEMORY[0x1E69DE360] object:0];

      return v12;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

id MUWebBasedPlacecardViewController.__deallocating_deinit()
{
  ObjectType = swift_getObjectType();
  v2 = *&v0[OBJC_IVAR____TtC6MapsUI33MUWebBasedPlacecardViewController_heightConstraint];
  if (v2)
  {
    v3 = OBJC_IVAR____TtC6MapsUI33MUWebBasedPlacecardViewController_webView;
    swift_beginAccess();
    [*&v0[v3] removeConstraint_];
  }

  v4 = objc_opt_self();
  v5 = [v4 defaultCenter];
  [v5 removeObserver:v0 name:*MEMORY[0x1E69DE348] object:0];

  v6 = [v4 defaultCenter];
  [v6 removeObserver:v0 name:*MEMORY[0x1E69DE360] object:0];

  v8.receiver = v0;
  v8.super_class = ObjectType;
  return objc_msgSendSuper2(&v8, sel_dealloc);
}

Swift::Void __swiftcall MUWebBasedPlacecardViewController.viewDidLoad()()
{
  v7.receiver = v0;
  v7.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v7, sel_viewDidLoad);
  v1 = objc_opt_self();
  v2 = [v1 mainScreen];
  [v2 bounds];

  v3 = [v1 mainScreen];
  UIRoundToScreenScale();
  v5 = v4;

  v6 = &v0[OBJC_IVAR____TtC6MapsUI33MUWebBasedPlacecardViewController_defaultHeight];
  swift_beginAccess();
  *v6 = v5;
  v6[8] = 0;
  sub_1C5717E48();
}

Swift::Void __swiftcall MUWebBasedPlacecardViewController.viewWillAppear(_:)(Swift::Bool a1)
{
  v6.receiver = v1;
  v6.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v6, sel_viewWillAppear_, a1);
  v3 = &v1[OBJC_IVAR____TtC6MapsUI33MUWebBasedPlacecardViewController_viewControllerDelegate];
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v4 = *(v3 + 1);
    ObjectType = swift_getObjectType();
    (*(v4 + 32))(1, ObjectType, v4);
    swift_unknownObjectRelease();
  }
}

Swift::Void __swiftcall MUWebBasedPlacecardViewController.viewDidLayoutSubviews()()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v2, sel_viewDidLayoutSubviews);
  v1 = *&v0[OBJC_IVAR____TtC6MapsUI33MUWebBasedPlacecardViewController_loadingOverlayController];
  if (v1)
  {
    [v1 updateLayoutForBoundsChange];
  }
}

void sub_1C5718B84(char *a1, uint64_t a2, char a3)
{
  v5 = &a1[OBJC_IVAR____TtC6MapsUI33MUWebBasedPlacecardViewController_viewControllerDelegate];
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v6 = *(v5 + 1);
    ObjectType = swift_getObjectType();
    v8 = *(v6 + 32);
    v9 = a1;
    v8(a3 & 1, ObjectType, v6);
    swift_unknownObjectRelease();
  }
}

void sub_1C5718C3C()
{
  v1 = OBJC_IVAR____TtC6MapsUI33MUWebBasedPlacecardViewController_webView;
  swift_beginAccess();
  v2 = [*(v0 + v1) scrollView];
  v3 = [v2 subviews];

  sub_1C5626E40(0, &qword_1ED77E800, 0x1E69DD250);
  v4 = sub_1C584F770();

  if (!(v4 >> 62))
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5)
    {
      goto LABEL_3;
    }

LABEL_14:

    v10 = OBJC_IVAR____TtC6MapsUI33MUWebBasedPlacecardViewController_UIMenusDictionary;
    swift_beginAccess();
    v11 = MEMORY[0x1E69E7CC8];
    *(v0 + v10) = MEMORY[0x1E69E7CC8];

    v12 = OBJC_IVAR____TtC6MapsUI33MUWebBasedPlacecardViewController_textSelectionViewsDictionary;
    swift_beginAccess();
    *(v0 + v12) = v11;

    return;
  }

  v5 = sub_1C584FB90();
  if (!v5)
  {
    goto LABEL_14;
  }

LABEL_3:
  if (v5 >= 1)
  {
    for (i = 0; i != v5; ++i)
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x1C694A320](i, v4);
      }

      else
      {
        v7 = *(v4 + 8 * i + 32);
      }

      v8 = v7;
      objc_opt_self();
      v9 = swift_dynamicCastObjCClass();
      if (v9 || (type metadata accessor for MUTextSelectionView(), (v9 = swift_dynamicCastClass()) != 0))
      {
        [v9 removeFromSuperview];
      }
    }

    goto LABEL_14;
  }

  __break(1u);
}

id sub_1C5718EA0()
{
  v1 = OBJC_IVAR____TtC6MapsUI33MUWebBasedPlacecardViewController_loadingOverlayController;
  v2 = *&v0[OBJC_IVAR____TtC6MapsUI33MUWebBasedPlacecardViewController_loadingOverlayController];
  if (v2)
  {
    [v2 removeLoadingOverlayAnimated:0 completion:0];
  }

  result = [v0 view];
  if (result)
  {
    v4 = result;
    v5 = OBJC_IVAR____TtC6MapsUI33MUWebBasedPlacecardViewController_webView;
    swift_beginAccess();
    v6 = [objc_allocWithZone(MULoadingOverlayController) initWithParentView:v4 contentView:*&v0[v5]];

    v7 = *&v0[v1];
    *&v0[v1] = v6;

    v8 = *&v0[v1];
    if (v8)
    {
      v9 = v8;
      GEOConfigGetDouble();
      [v9 setShowAfterInterval_];

      v10 = *&v0[v1];
      if (v10)
      {
        [v10 attachLoadingOverlay];
      }
    }

    sub_1C5718C3C();
    return sub_1C5717E48();
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1C5719014()
{
  v1 = OBJC_IVAR____TtC6MapsUI33MUWebBasedPlacecardViewController_loadingOverlayController;
  v2 = *(v0 + OBJC_IVAR____TtC6MapsUI33MUWebBasedPlacecardViewController_loadingOverlayController);
  if (v2)
  {
    [v2 removeLoadingOverlayAnimated:1 completion:0];
    v3 = *(v0 + v1);
  }

  else
  {
    v3 = 0;
  }

  *(v0 + v1) = 0;

  v4 = *MEMORY[0x1E69DD930];

  UIAccessibilityPostNotification(v4, 0);
}

Swift::Void __swiftcall MUWebBasedPlacecardViewController.removeInitialView()()
{
  v1 = OBJC_IVAR____TtC6MapsUI33MUWebBasedPlacecardViewController_loadingOverlayController;
  v2 = *(v0 + OBJC_IVAR____TtC6MapsUI33MUWebBasedPlacecardViewController_loadingOverlayController);
  if (v2)
  {
    [v2 removeLoadingOverlayAnimated:1 completion:0];
    v2 = *(v0 + v1);
  }

  *(v0 + v1) = 0;
}

uint64_t sub_1C57191B4(uint64_t a1, void *a2, void *a3)
{
  v4 = v3;
  v8 = type metadata accessor for WebPlacecardBridge.MUWebMenuButton(0);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v11 = &v65 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for WebPlacecardBridge.MUWebMenuButtonBoundingBox(0);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v15 = &v65 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1C5694BCC();
  v18 = v17;
  v19 = OBJC_IVAR____TtC6MapsUI33MUWebBasedPlacecardViewController_UIMenusDictionary;
  swift_beginAccess();
  v20 = *(v3 + v19);
  if (*(v20 + 16))
  {
    v65 = v4;
    v21 = v19;
    v22 = v11;
    v23 = v15;
    v24 = a1;
    v25 = a2;
    v26 = a3;
    v27 = sub_1C5645D34(v16, v18);
    v29 = v28;

    if (v29)
    {
      v30 = *(*(v20 + 56) + 8 * v27);
      v31 = v30;
    }

    else
    {
      v30 = 0;
    }

    a3 = v26;
    a2 = v25;
    a1 = v24;
    v15 = v23;
    v11 = v22;
    v19 = v21;
    v4 = v65;
  }

  else
  {

    v30 = 0;
  }

  swift_endAccess();
  sub_1C5694BE4(v15);
  v32 = sub_1C56959D4();
  v33 = sub_1C56959EC();
  v34 = sub_1C5695A1C();
  v35 = sub_1C5695A04();
  if (v30)
  {
    v36 = qword_1EC17B050;
    v37 = v30;
    if (v36 != -1)
    {
      swift_once();
    }

    v38 = sub_1C584F2C0();
    __swift_project_value_buffer(v38, qword_1EC18FA50);
    v39 = v37;
    v40 = sub_1C584F2A0();
    v41 = sub_1C584F990();

    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      *v42 = 138412290;
      *(v42 + 4) = v39;
      *v43 = v30;
      v44 = v39;
      _os_log_impl(&dword_1C5620000, v40, v41, "Updated existing UIMenu's frame: %@", v42, 0xCu);
      sub_1C567CCE0(v43);
      MEMORY[0x1C694B7A0](v43, -1, -1);
      MEMORY[0x1C694B7A0](v42, -1, -1);
    }

    [v39 setFrame:v32, v33, v34, v35];
    v45 = v39;
  }

  else
  {
    type metadata accessor for MUWebUIMenu(0);
    sub_1C571A800(a1, v11);
    v46 = sub_1C5773AD4(v11, a2, v32, v33, v34, v35);
    v47 = &v46[OBJC_IVAR____TtC6MapsUI11MUWebUIMenu_delegate];
    swift_beginAccess();
    *(v47 + 1) = &off_1F44C6BB0;
    swift_unknownObjectWeakAssign();
    v48 = OBJC_IVAR____TtC6MapsUI11MUWebUIMenu_mapItem;
    swift_beginAccess();
    v49 = *&v46[v48];
    *&v46[v48] = a3;

    v50 = OBJC_IVAR____TtC6MapsUI33MUWebBasedPlacecardViewController_webView;
    swift_beginAccess();
    v51 = *(v4 + v50);
    v52 = a3;
    v53 = [v51 scrollView];
    [v53 addSubview_];

    v54 = sub_1C5694BCC();
    v56 = v55;
    swift_beginAccess();
    v57 = v46;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v66 = *(v4 + v19);
    *(v4 + v19) = 0x8000000000000000;
    sub_1C571A310(v57, v54, v56, isUniquelyReferenced_nonNull_native, &qword_1EC1706E8, &qword_1C5877C50);

    *(v4 + v19) = v66;
    swift_endAccess();
    if (qword_1EC17B050 != -1)
    {
      swift_once();
    }

    v59 = sub_1C584F2C0();
    __swift_project_value_buffer(v59, qword_1EC18FA50);
    v60 = v57;
    v45 = sub_1C584F2A0();
    v61 = sub_1C584F990();

    if (os_log_type_enabled(v45, v61))
    {
      v62 = swift_slowAlloc();
      v63 = swift_slowAlloc();
      *v62 = 138412290;
      *(v62 + 4) = v60;
      *v63 = v60;
      v39 = v60;
      _os_log_impl(&dword_1C5620000, v45, v61, "Added new UIMenu: %@", v62, 0xCu);
      sub_1C567CCE0(v63);
      MEMORY[0x1C694B7A0](v63, -1, -1);
      MEMORY[0x1C694B7A0](v62, -1, -1);
    }

    else
    {
      v39 = v45;
      v45 = v60;
    }
  }

  return sub_1C571A864(v15);
}

uint64_t sub_1C5719754()
{
  v1 = v0;
  v2 = type metadata accessor for WebPlacecardBridge.MUWebMenuButtonBoundingBox(0);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = &v48 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1C5694BFC();
  v8 = v7;
  v9 = OBJC_IVAR____TtC6MapsUI33MUWebBasedPlacecardViewController_textSelectionViewsDictionary;
  swift_beginAccess();
  v10 = *(v0 + v9);
  if (*(v10 + 16))
  {
    v11 = sub_1C5645D34(v6, v8);
    v13 = v12;

    if (v13)
    {
      v14 = *(*(v10 + 56) + 8 * v11);
      v15 = v14;
      goto LABEL_6;
    }
  }

  else
  {
  }

  v14 = 0;
LABEL_6:
  swift_endAccess();
  sub_1C5694C2C(v5);
  v16 = sub_1C56959D4();
  v17 = sub_1C56959EC();
  v18 = sub_1C5695A1C();
  v19 = sub_1C5695A04();
  if (v14)
  {
    v20 = qword_1EC17B050;
    v21 = v14;
    if (v20 != -1)
    {
      swift_once();
    }

    v22 = sub_1C584F2C0();
    __swift_project_value_buffer(v22, qword_1EC18FA50);
    v23 = v21;
    v24 = sub_1C584F2A0();
    v25 = sub_1C584F990();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      *v26 = 138412290;
      *(v26 + 4) = v23;
      *v27 = v14;
      v28 = v23;
      _os_log_impl(&dword_1C5620000, v24, v25, "Updated existing text selection view's frame: %@", v26, 0xCu);
      sub_1C567CCE0(v27);
      MEMORY[0x1C694B7A0](v27, -1, -1);
      MEMORY[0x1C694B7A0](v26, -1, -1);
    }

    [v23 setFrame:v16, v17, v18, v19];
    v29 = v23;
  }

  else
  {
    type metadata accessor for MUTextSelectionView();
    v30 = sub_1C565D6A4(v16, v17, v18, v19);
    v31 = sub_1C5694C14();
    v33 = v32;
    v34 = &v30[OBJC_IVAR____TtC6MapsUI19MUTextSelectionView_text];
    swift_beginAccess();
    *v34 = v31;
    v34[1] = v33;

    v35 = OBJC_IVAR____TtC6MapsUI33MUWebBasedPlacecardViewController_webView;
    swift_beginAccess();
    v36 = [*(v1 + v35) scrollView];
    v37 = v30;
    [v36 addSubview_];

    v38 = sub_1C5694BFC();
    v40 = v39;
    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v48 = *(v1 + v9);
    *(v1 + v9) = 0x8000000000000000;
    sub_1C571A310(v37, v38, v40, isUniquelyReferenced_nonNull_native, &qword_1EC1706E0, &qword_1C5877C48);

    *(v1 + v9) = v48;
    swift_endAccess();
    if (qword_1EC17B050 != -1)
    {
      swift_once();
    }

    v42 = sub_1C584F2C0();
    __swift_project_value_buffer(v42, qword_1EC18FA50);
    v43 = v37;
    v29 = sub_1C584F2A0();
    v44 = sub_1C584F990();

    if (os_log_type_enabled(v29, v44))
    {
      v45 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      *v45 = 138412290;
      *(v45 + 4) = v43;
      *v46 = v43;
      v23 = v43;
      _os_log_impl(&dword_1C5620000, v29, v44, "Added new text selection view: %@", v45, 0xCu);
      sub_1C567CCE0(v46);
      MEMORY[0x1C694B7A0](v46, -1, -1);
      MEMORY[0x1C694B7A0](v45, -1, -1);
    }

    else
    {
      v23 = v29;
      v29 = v43;
    }
  }

  return sub_1C571A864(v5);
}

id MUWebBasedPlacecardViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_1C584F630();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

uint64_t sub_1C5719D98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = v5 + OBJC_IVAR____TtC6MapsUI33MUWebBasedPlacecardViewController_viewControllerDelegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v13 = *(v11 + 8);
    ObjectType = swift_getObjectType();
    v15 = sub_1C57042D4(a5);
    (*(v13 + 24))(a1, a2, a3, a4, v15, ObjectType, v13);
    return swift_unknownObjectRelease();
  }

  return result;
}

Swift::Void __swiftcall MUWebBasedPlacecardViewController.scrollViewDidScroll(_:)(UIScrollView *a1)
{
  v3 = v1 + OBJC_IVAR____TtC6MapsUI33MUWebBasedPlacecardViewController_viewControllerDelegate;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v4 = *(v3 + 8);
    ObjectType = swift_getObjectType();
    (*(v4 + 40))(v1, a1, ObjectType, v4);
    swift_unknownObjectRelease();
  }
}

uint64_t sub_1C5719FD0()
{
  v0 = sub_1C584F2C0();
  __swift_allocate_value_buffer(v0, qword_1EC18FA50);
  __swift_project_value_buffer(v0, qword_1EC18FA50);
  sub_1C5715FD8();
  swift_beginAccess();

  return sub_1C584F2B0();
}

void sub_1C571A074(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v6 = a2;
  v7 = *v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v38 = v6;
  v8 = sub_1C584FD40();
  v9 = v8;
  if (*(v7 + 16))
  {
    v37 = v7;
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
    v16 = v8 + 64;
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
      if ((v38 & 1) == 0)
      {

        v27 = v26;
      }

      sub_1C584FEA0();
      sub_1C584F6C0();
      v28 = sub_1C584FEF0();
      v29 = -1 << *(v9 + 32);
      v30 = v28 & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v16 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v16 + 8 * v31);
          if (v35 != -1)
          {
            v17 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v17 = __clz(__rbit64((-1 << v30) & ~*(v16 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v18 = (*(v9 + 48) + 16 * v17);
      *v18 = v24;
      v18[1] = v25;
      *(*(v9 + 56) + 8 * v17) = v26;
      ++*(v9 + 16);
      v7 = v37;
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

    if ((v38 & 1) == 0)
    {

      v5 = v4;
      goto LABEL_33;
    }

    v36 = 1 << *(v7 + 32);
    v5 = v4;
    if (v36 >= 64)
    {
      bzero(v11, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v36;
    }

    *(v7 + 16) = 0;
  }

LABEL_33:
  *v5 = v9;
}

void sub_1C571A310(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5, uint64_t *a6)
{
  v9 = v6;
  v14 = *v6;
  v15 = sub_1C5645D34(a2, a3);
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
      sub_1C571A074(v20, a4 & 1, a5, a6);
      v15 = sub_1C5645D34(a2, a3);
      if ((v21 & 1) != (v24 & 1))
      {
LABEL_18:
        v15 = sub_1C584FE00();
        __break(1u);
_objc_release_x1:
        MEMORY[0x1EEE66BB8](v15, v27);
        return;
      }
    }

    else
    {
      v23 = v15;
      sub_1C571A4AC(a5, a6);
      v15 = v23;
    }
  }

  v25 = *v9;
  if (v21)
  {
    v26 = v25[7];
    v27 = *(v26 + 8 * v15);
    *(v26 + 8 * v15) = a1;

    goto _objc_release_x1;
  }

  v25[(v15 >> 6) + 8] |= 1 << v15;
  v28 = (v25[6] + 16 * v15);
  *v28 = a2;
  v28[1] = a3;
  *(v25[7] + 8 * v15) = a1;
  v29 = v25[2];
  v19 = __OFADD__(v29, 1);
  v30 = v29 + 1;
  if (v19)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v25[2] = v30;
}

void sub_1C571A4AC(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_1C584FD30();
  v6 = v5;
  if (*(v4 + 16))
  {
    v7 = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || v7 >= v4 + 64 + 8 * v8)
    {
      memmove(v7, (v4 + 64), 8 * v8);
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

        v24 = v22;
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
}

unint64_t sub_1C571A608(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v5 = sub_1C584FD50();

    for (i = (a1 + 48); ; i += 3)
    {
      v7 = *(i - 2);
      v8 = *(i - 1);
      v9 = *i;

      v10 = v9;
      result = sub_1C5645D34(v7, v8);
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

void sub_1C571A704()
{
  *(v0 + OBJC_IVAR____TtC6MapsUI33MUWebBasedPlacecardViewController_viewControllerDelegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v1 = v0 + OBJC_IVAR____TtC6MapsUI33MUWebBasedPlacecardViewController_defaultHeight;
  *v1 = 0;
  *(v1 + 8) = 1;
  *(v0 + OBJC_IVAR____TtC6MapsUI33MUWebBasedPlacecardViewController_heightConstraint) = 0;
  *(v0 + OBJC_IVAR____TtC6MapsUI33MUWebBasedPlacecardViewController_loadingOverlayController) = 0;
  v2 = OBJC_IVAR____TtC6MapsUI33MUWebBasedPlacecardViewController_UIMenusDictionary;
  v3 = MEMORY[0x1E69E7CC0];
  *(v0 + v2) = sub_1C571A608(MEMORY[0x1E69E7CC0], &qword_1EC1706E8, &qword_1C5877C50);
  v4 = OBJC_IVAR____TtC6MapsUI33MUWebBasedPlacecardViewController_textSelectionViewsDictionary;
  *(v0 + v4) = sub_1C571A608(v3, &qword_1EC1706E0, &qword_1C5877C48);
  sub_1C584FD00();
  __break(1u);
}

uint64_t sub_1C571A800(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WebPlacecardBridge.MUWebMenuButton(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C571A864(uint64_t a1)
{
  v2 = type metadata accessor for WebPlacecardBridge.MUWebMenuButtonBoundingBox(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t String._mapsui_nilIfEmpty.getter(uint64_t a1, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v2)
  {
    return 0;
  }

  return a1;
}

uint64_t String._mapsui_quotedForLocale.getter(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C584ECE0();
  v5 = *(v4 - 8);
  v7 = MEMORY[0x1EEE9AC00](v4, v6);
  v9 = v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v10);
  v12 = v33 - v11;
  sub_1C584EC80();
  v13 = sub_1C584EC40();
  v15 = v14;
  v16 = *(v5 + 8);
  v16(v12, v4);
  v33[6] = v13;
  v33[7] = v15;
  v33[8] = a1;
  v33[9] = a2;

  sub_1C584EC80();
  v17 = sub_1C584EC30();
  v19 = v18;
  result = (v16)(v9, v4);
  v21 = 0;
  v33[10] = v17;
  v33[11] = v19;
  v22 = MEMORY[0x1E69E7CC0];
LABEL_2:
  if (v21 <= 3)
  {
    v23 = 3;
  }

  else
  {
    v23 = v21;
  }

  v24 = v23 + 1;
  v25 = 16 * v21 + 40;
  while (1)
  {
    if (v21 == 3)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16FE60, &unk_1C5877750);
      swift_arrayDestroy();
      v33[1] = v22;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16DA70, &qword_1C58679D0);
      sub_1C571AC5C();
      v32 = sub_1C584F600();

      return v32;
    }

    if (v24 == ++v21)
    {
      break;
    }

    v26 = v25 + 16;
    v27 = *(&v33[2] + v25);
    v25 += 16;
    if (v27)
    {
      v28 = *(&v33[-1] + v26);

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_1C5638228(0, *(v22 + 16) + 1, 1, v22);
        v22 = result;
      }

      v30 = *(v22 + 16);
      v29 = *(v22 + 24);
      if (v30 >= v29 >> 1)
      {
        result = sub_1C5638228((v29 > 1), v30 + 1, 1, v22);
        v22 = result;
      }

      *(v22 + 16) = v30 + 1;
      v31 = v22 + 16 * v30;
      *(v31 + 32) = v28;
      *(v31 + 40) = v27;
      goto LABEL_2;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1C571AC5C()
{
  result = qword_1EC170BB0;
  if (!qword_1EC170BB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC16DA70, &qword_1C58679D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC170BB0);
  }

  return result;
}

void sub_1C571ACC0(void *a1)
{
  sub_1C571D518(a1);
}

void (*sub_1C571AD30(uint64_t *a1))(id **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
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
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_1C571ADC0;
}

void sub_1C571ADC0(id **a1, char a2)
{
  v3 = *a1;
  v4 = (*a1)[3];
  swift_unknownObjectWeakAssign();
  if (a2)
  {

    swift_endAccess();
  }

  else
  {
    swift_endAccess();

    sub_1C5623E9C();
  }

  free(v3);
}

uint64_t sub_1C571AE4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *v3;
    sub_1C571CC38(a1, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v15;
  }

  else
  {
    v10 = sub_1C5645D34(a2, a3);
    v12 = v11;

    if (v12)
    {
      v13 = swift_isUniquelyReferenced_nonNull_native();
      v14 = *v4;
      v16 = *v4;
      if (!v13)
      {
        sub_1C571CDB0();
        v14 = v16;
      }

      result = sub_1C571CA88(v10, v14);
      *v4 = v14;
    }
  }

  return result;
}

unint64_t sub_1C571AF44(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  if (!result || (v3 & 0x8000000000000000) != 0 || (v3 & 0x4000000000000000) != 0)
  {
    result = sub_1C566CE90(v3);
    v3 = result;
  }

  v5 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = *((v3 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 0x20);
    memmove(((v3 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 32), ((v3 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 40), 8 * (v5 - 1 - a1));
    *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10) = v6;
    *v1 = v3;
    return v7;
  }

  return result;
}

uint64_t sub_1C571AFD4(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v4 = sub_1C584FB90();
  }

  else
  {
    v4 = *(a1 + 16);
  }

  if ((v2 & 0xC000000000000001) != 0)
  {
    if (v2 < 0)
    {
      v5 = v2;
    }

    else
    {
      v5 = v2 & 0xFFFFFFFFFFFFFF8;
    }

    if (v4 > sub_1C584FB90() / 8)
    {
      v6 = sub_1C584FB90();
      v2 = sub_1C571BACC(v5, v6, &qword_1EC170700, &unk_1C5877E48, &qword_1ED77E810, 0x1E696ACD8);
      return sub_1C5627A10(a1, v2, &qword_1ED77E810, 0x1E696ACD8, &qword_1ED77E808, &qword_1EC170700, &unk_1C5877E48);
    }
  }

  else if (v4 > *(v2 + 16) >> 3)
  {
    return sub_1C5627A10(a1, v2, &qword_1ED77E810, 0x1E696ACD8, &qword_1ED77E808, &qword_1EC170700, &unk_1C5877E48);
  }

  sub_1C571B874(a1, a2);
  return v2;
}

uint64_t sub_1C571B0F0(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v4 = sub_1C584FB90();
  }

  else
  {
    v4 = *(a1 + 16);
  }

  if ((v2 & 0xC000000000000001) != 0)
  {
    if (v2 < 0)
    {
      v5 = v2;
    }

    else
    {
      v5 = v2 & 0xFFFFFFFFFFFFFF8;
    }

    if (v4 > sub_1C584FB90() / 8)
    {
      v6 = sub_1C584FB90();
      v2 = sub_1C571BACC(v5, v6, &qword_1EC1706F8, &qword_1C5877E40, &unk_1ED77E840, 0x1E69DCC20);
      return sub_1C5627A10(a1, v2, &unk_1ED77E840, 0x1E69DCC20, &qword_1ED77E838, &qword_1EC1706F8, &qword_1C5877E40);
    }
  }

  else if (v4 > *(v2 + 16) >> 3)
  {
    return sub_1C5627A10(a1, v2, &unk_1ED77E840, 0x1E69DCC20, &qword_1ED77E838, &qword_1EC1706F8, &qword_1C5877E40);
  }

  sub_1C571B61C(a1, a2);
  return v2;
}

double sub_1C571B20C(uint64_t a1, uint64_t a2)
{
  sub_1C571D464(a1, a2);

  return result;
}

double sub_1C571B234(uint64_t a1, uint64_t a2)
{
  sub_1C571D4BC(a1, a2);

  return result;
}

void (*sub_1C571B290(uint64_t *a1))(uint64_t a1)
{
  if (MEMORY[0x1E69E7D08])
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
  swift_beginAccess();
  *(v4 + 24) = *(v1 + 16);
  return sub_1C571B31C;
}

void sub_1C571B31C(uint64_t a1)
{
  v1 = *a1;
  sub_1C5623FC8(*(*a1 + 24));

  free(v1);
}

void sub_1C571B35C(void *a1)
{
  sub_1C571D64C(a1);
}

uint64_t (*sub_1C571B394(uint64_t **a1))()
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
  v2[4] = sub_1C571AD30(v2);
  return sub_1C571B404;
}

void sub_1C571B404(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

uint64_t (*sub_1C571B484(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
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
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_1C571D7D8;
}

void sub_1C571B514(void **a1, char a2)
{
  v3 = *a1;
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

void *sub_1C571B594(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16DBD0, &unk_1C58682B0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = (2 * (v9 >> 3)) | 1;
  return result;
}

void sub_1C571B61C(uint64_t a1, uint64_t a2)
{
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (!sub_1C584FB90())
    {
      return;
    }
  }

  else if (!*(*v2 + 16))
  {
    return;
  }

  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_1C584FB80();
    sub_1C5626E40(0, &unk_1ED77E840, 0x1E69DCC20);
    sub_1C56279C0(&qword_1ED77E838, &unk_1ED77E840, 0x1E69DCC20);
    sub_1C584F950();
    a1 = v19;
    v4 = v20;
    v5 = v21;
    v6 = v22;
    v7 = v23;
  }

  else
  {
    v8 = -1 << *(a1 + 32);
    v4 = a1 + 56;
    v5 = ~v8;
    v9 = -v8;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v7 = v10 & *(a1 + 56);

    v6 = 0;
  }

  v11 = (v5 + 64) >> 6;
  if (a1 < 0)
  {
    goto LABEL_18;
  }

  while (1)
  {
    v12 = v6;
    v13 = v7;
    v14 = v6;
    if (!v7)
    {
      break;
    }

LABEL_16:
    v15 = (v13 - 1) & v13;
    v16 = *(*(a1 + 48) + ((v14 << 9) | (8 * __clz(__rbit64(v13)))));
    if (!v16)
    {
LABEL_22:
      sub_1C56280F4(a1);
      return;
    }

    while (1)
    {
      v17 = sub_1C571BCCC(v16, &unk_1ED77E840, 0x1E69DCC20, &qword_1EC1706F8, &qword_1C5877E40);

      v6 = v14;
      v7 = v15;
      if ((a1 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_18:
      if (sub_1C584FBB0())
      {
        sub_1C5626E40(0, &unk_1ED77E840, 0x1E69DCC20);
        swift_dynamicCast();
        v16 = v18;
        v14 = v6;
        v15 = v7;
        if (v18)
        {
          continue;
        }
      }

      goto LABEL_22;
    }
  }

  while (1)
  {
    v14 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v14 >= v11)
    {
      goto LABEL_22;
    }

    v13 = *(v4 + 8 * v14);
    ++v12;
    if (v13)
    {
      goto LABEL_16;
    }
  }

  __break(1u);
}

void sub_1C571B874(uint64_t a1, uint64_t a2)
{
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (!sub_1C584FB90())
    {
      return;
    }
  }

  else if (!*(*v2 + 16))
  {
    return;
  }

  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_1C584FB80();
    sub_1C5626E40(0, &qword_1ED77E810, 0x1E696ACD8);
    sub_1C56279C0(&qword_1ED77E808, &qword_1ED77E810, 0x1E696ACD8);
    sub_1C584F950();
    a1 = v19;
    v4 = v20;
    v5 = v21;
    v6 = v22;
    v7 = v23;
  }

  else
  {
    v8 = -1 << *(a1 + 32);
    v4 = a1 + 56;
    v5 = ~v8;
    v9 = -v8;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v7 = v10 & *(a1 + 56);

    v6 = 0;
  }

  v11 = (v5 + 64) >> 6;
  if (a1 < 0)
  {
    goto LABEL_18;
  }

  while (1)
  {
    v12 = v6;
    v13 = v7;
    v14 = v6;
    if (!v7)
    {
      break;
    }

LABEL_16:
    v15 = (v13 - 1) & v13;
    v16 = *(*(a1 + 48) + ((v14 << 9) | (8 * __clz(__rbit64(v13)))));
    if (!v16)
    {
LABEL_22:
      sub_1C56280F4(a1);
      return;
    }

    while (1)
    {
      v17 = sub_1C571BCCC(v16, &qword_1ED77E810, 0x1E696ACD8, &qword_1EC170700, &unk_1C5877E48);

      v6 = v14;
      v7 = v15;
      if ((a1 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_18:
      if (sub_1C584FBB0())
      {
        sub_1C5626E40(0, &qword_1ED77E810, 0x1E696ACD8);
        swift_dynamicCast();
        v16 = v18;
        v14 = v6;
        v15 = v7;
        if (v18)
        {
          continue;
        }
      }

      goto LABEL_22;
    }
  }

  while (1)
  {
    v14 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v14 >= v11)
    {
      goto LABEL_22;
    }

    v13 = *(v4 + 8 * v14);
    ++v12;
    if (v13)
    {
      goto LABEL_16;
    }
  }

  __break(1u);
}

uint64_t sub_1C571BACC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, unint64_t *a5, void *a6)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
    v10 = sub_1C584FC20();
    v23 = v10;
    sub_1C584FB80();
    if (sub_1C584FBB0())
    {
      sub_1C5626E40(0, a5, a6);
      do
      {
        swift_dynamicCast();
        v17 = *(v10 + 16);
        if (*(v10 + 24) <= v17)
        {
          sub_1C5627224(v17 + 1, a3, a4);
        }

        v10 = v23;
        result = sub_1C584FAB0();
        v12 = v23 + 56;
        v13 = -1 << *(v23 + 32);
        v14 = result & ~v13;
        v15 = v14 >> 6;
        if (((-1 << v14) & ~*(v23 + 56 + 8 * (v14 >> 6))) != 0)
        {
          v16 = __clz(__rbit64((-1 << v14) & ~*(v23 + 56 + 8 * (v14 >> 6)))) | v14 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v18 = 0;
          v19 = (63 - v13) >> 6;
          do
          {
            if (++v15 == v19 && (v18 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v20 = v15 == v19;
            if (v15 == v19)
            {
              v15 = 0;
            }

            v18 |= v20;
            v21 = *(v12 + 8 * v15);
          }

          while (v21 == -1);
          v16 = __clz(__rbit64(~v21)) + (v15 << 6);
        }

        *(v12 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
        *(*(v23 + 48) + 8 * v16) = v22;
        ++*(v23 + 16);
      }

      while (sub_1C584FBB0());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x1E69E7CD0];
  }

  return v10;
}

uint64_t sub_1C571BCCC(void *a1, unint64_t *a2, void *a3, uint64_t *a4, uint64_t *a5)
{
  v9 = *v5;
  if ((*v5 & 0xC000000000000001) != 0)
  {
    if (v9 < 0)
    {
      v12 = *v5;
    }

    else
    {
      v12 = v9 & 0xFFFFFFFFFFFFFF8;
    }

    v13 = a1;
    v14 = sub_1C584FBC0();

    if (v14)
    {
      v15 = sub_1C571C384(v12, v13, a4, a5, a2, a3);

      return v15;
    }

    return 0;
  }

  v26 = v5;
  sub_1C5626E40(0, a2, a3);
  v17 = sub_1C584FAB0();
  v18 = -1 << *(v9 + 32);
  v19 = v17 & ~v18;
  if (((*(v9 + 56 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) == 0)
  {
    return 0;
  }

  v20 = ~v18;
  while (1)
  {
    v21 = *(*(v9 + 48) + 8 * v19);
    v22 = sub_1C584FAC0();

    if (v22)
    {
      break;
    }

    v19 = (v19 + 1) & v20;
    if (((*(v9 + 56 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) == 0)
    {
      return 0;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v24 = *v26;
  v27 = *v26;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_1C571C504(a4, a5);
    v24 = v27;
  }

  v25 = *(*(v24 + 48) + 8 * v19);
  sub_1C571C644(v19);
  result = v25;
  *v26 = v27;
  return result;
}

unint64_t sub_1C571BE80(uint64_t a1, uint64_t a2)
{
  sub_1C584FAB0();
  result = sub_1C584FB70();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

void sub_1C571BF04(unint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5, unint64_t *a6, void *a7, uint64_t *a8, uint64_t *a9)
{
  v9 = a5;
  v11 = *(a3 + 16);
  *(a1 + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v12 = v11 - 1;
  v40 = a3 + 56;
  while (2)
  {
    v35 = v12;
    do
    {
      while (1)
      {
        if ((*v9 & 0x8000000000000000) != 0)
        {
          if (!sub_1C584FBB0())
          {
            goto LABEL_30;
          }

          sub_1C5626E40(0, a6, a7);
          swift_dynamicCast();
          v16 = v41;
          if (!v41)
          {
            goto LABEL_30;
          }
        }

        else
        {
          v13 = v9[3];
          v14 = v9[4];
          if (!v14)
          {
            v17 = (v9[2] + 64) >> 6;
            if (v17 <= v13 + 1)
            {
              v18 = v13 + 1;
            }

            else
            {
              v18 = (v9[2] + 64) >> 6;
            }

            v19 = v18 - 1;
            while (1)
            {
              v15 = v13 + 1;
              if (__OFADD__(v13, 1))
              {
                break;
              }

              if (v15 >= v17)
              {
                v16 = 0;
                v20 = 0;
                goto LABEL_18;
              }

              v14 = *(v9[1] + 8 * v15);
              ++v13;
              if (v14)
              {
                goto LABEL_17;
              }
            }

            __break(1u);
            goto LABEL_32;
          }

          v15 = v9[3];
LABEL_17:
          v20 = (v14 - 1) & v14;
          v16 = *(*(*v9 + 48) + ((v15 << 9) | (8 * __clz(__rbit64(v14)))));
          v21 = v16;
          v19 = v15;
LABEL_18:
          v9[3] = v19;
          v9[4] = v20;
          if (!v16)
          {
LABEL_30:

            sub_1C571C198(a1, a2, v35, a3, a8, a9);
            return;
          }
        }

        v22 = sub_1C584FAB0();
        v23 = -1 << *(a3 + 32);
        v24 = v22 & ~v23;
        v25 = v24 >> 6;
        v26 = 1 << v24;
        if (((1 << v24) & *(v40 + 8 * (v24 >> 6))) == 0)
        {
          goto LABEL_3;
        }

        sub_1C5626E40(0, a6, a7);
        v27 = *(*(a3 + 48) + 8 * v24);
        v28 = sub_1C584FAC0();

        if (v28)
        {
          break;
        }

        v29 = ~v23;
        while (1)
        {
          v24 = (v24 + 1) & v29;
          v25 = v24 >> 6;
          v26 = 1 << v24;
          if (((1 << v24) & *(v40 + 8 * (v24 >> 6))) == 0)
          {
            break;
          }

          v30 = *(*(a3 + 48) + 8 * v24);
          v31 = sub_1C584FAC0();

          if (v31)
          {
            goto LABEL_24;
          }
        }

LABEL_3:

        v9 = a5;
      }

LABEL_24:

      v9 = a5;
      v32 = a1[v25];
      a1[v25] = v32 & ~v26;
    }

    while ((v32 & v26) == 0);
    v12 = v35 - 1;
    if (__OFSUB__(v35, 1))
    {
LABEL_32:
      __break(1u);
      return;
    }

    if (v35 != 1)
    {
      continue;
    }

    break;
  }
}

uint64_t sub_1C571C198(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  v6 = a4;
  if (!a3)
  {
    v11 = MEMORY[0x1E69E7CD0];
LABEL_6:

    return v11;
  }

  v7 = a3;
  if (*(a4 + 16) == a3)
  {
    return v6;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  result = sub_1C584FC30();
  v11 = result;
  if (a2 < 1)
  {
    v12 = 0;
  }

  else
  {
    v12 = *a1;
  }

  v13 = 0;
  v14 = result + 56;
  while (v12)
  {
    v15 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
LABEL_17:
    v18 = *(*(v6 + 48) + 8 * (v15 | (v13 << 6)));
    result = sub_1C584FAB0();
    v19 = -1 << *(v11 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v14 + 8 * (v20 >> 6))) == 0)
    {
      v23 = 0;
      v24 = (63 - v19) >> 6;
      while (++v21 != v24 || (v23 & 1) == 0)
      {
        v25 = v21 == v24;
        if (v21 == v24)
        {
          v21 = 0;
        }

        v23 |= v25;
        v26 = *(v14 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v14 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v14 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    *(*(v11 + 48) + 8 * v22) = v18;
    ++*(v11 + 16);
    if (__OFSUB__(v7--, 1))
    {
      goto LABEL_32;
    }

    if (!v7)
    {
      goto LABEL_6;
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

    if (v13 >= a2)
    {
      goto LABEL_6;
    }

    v17 = a1[v13];
    ++v16;
    if (v17)
    {
      v15 = __clz(__rbit64(v17));
      v12 = (v17 - 1) & v17;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_1C571C384(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, unint64_t *a5, void *a6)
{
  v11 = v6;

  v12 = sub_1C584FB90();
  v13 = swift_unknownObjectRetain();
  v14 = sub_1C571BACC(v13, v12, a3, a4, a5, a6);
  v23 = v14;

  v15 = sub_1C584FAB0();
  v16 = -1 << *(v14 + 32);
  v17 = v15 & ~v16;
  if ((*(v14 + 56 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17))
  {
    v18 = ~v16;
    sub_1C5626E40(0, a5, a6);
    while (1)
    {
      v19 = *(*(v14 + 48) + 8 * v17);
      v20 = sub_1C584FAC0();

      if (v20)
      {
        break;
      }

      v17 = (v17 + 1) & v18;
      if (((*(v14 + 56 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17) & 1) == 0)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:

    __break(1u);
  }

  v21 = *(*(v14 + 48) + 8 * v17);
  sub_1C571C644(v17);
  result = sub_1C584FAC0();
  if (result)
  {
    *v11 = v23;
    return v21;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1C571C504(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_1C584FC00();
  v6 = v5;
  if (*(v4 + 16))
  {
    v7 = (v5 + 56);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || v7 >= v4 + 56 + 8 * v8)
    {
      memmove(v7, (v4 + 56), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 56);
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
        v20 = *(*(v4 + 48) + 8 * v19);
        *(*(v6 + 48) + 8 * v19) = v20;
        v21 = v20;
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

      v18 = *(v4 + 56 + 8 * v10);
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
}

void sub_1C571C644(unint64_t a1)
{
  v2 = a1;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (a1 + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_1C584FB60();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        v10 = *(*(v3 + 48) + 8 * v6);
        v11 = sub_1C584FAB0();

        v12 = v11 & v7;
        if (v2 >= v9)
        {
          if (v12 >= v9 && v2 >= v12)
          {
LABEL_16:
            v15 = *(v3 + 48);
            v16 = (v15 + 8 * v2);
            v17 = (v15 + 8 * v6);
            if (v2 != v6 || v16 >= v17 + 1)
            {
              *v16 = *v17;
              v2 = v6;
            }
          }
        }

        else if (v12 >= v9 || v2 >= v12)
        {
          goto LABEL_16;
        }

        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  v18 = *(v3 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v20;
    ++*(v3 + 36);
  }
}

void sub_1C571C7E4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC170710, &unk_1C5877E60);
  v36 = v4;
  v6 = sub_1C584FD40();
  v7 = v6;
  if (*(v5 + 16))
  {
    v35 = v5;
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
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v36 & 1) == 0)
      {

        v25 = v24;
      }

      sub_1C584FEA0();
      sub_1C584F6C0();
      v26 = sub_1C584FEF0();
      v27 = -1 << *(v7 + 32);
      v28 = v26 & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v14 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v14 + 8 * v29);
          if (v33 != -1)
          {
            v15 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v28) & ~*(v14 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v35;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v36 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v2;
    if (v34 >= 64)
    {
      bzero(v9, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
}

uint64_t sub_1C571CA88(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1C584FB60() + 1) & ~v5;
    do
    {
      sub_1C584FEA0();

      sub_1C584F6C0();
      v9 = sub_1C584FEF0();

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

void sub_1C571CC38(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1C5645D34(a2, a3);
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
      sub_1C571C7E4(v16, a4 & 1);
      v11 = sub_1C5645D34(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        v11 = sub_1C584FE00();
        __break(1u);
_objc_release_x1:
        MEMORY[0x1EEE66BB8](v11, v23);
        return;
      }
    }

    else
    {
      v19 = v11;
      sub_1C571CDB0();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    v22 = v21[7];
    v23 = *(v22 + 8 * v11);
    *(v22 + 8 * v11) = a1;

    goto _objc_release_x1;
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v24 = (v21[6] + 16 * v11);
  *v24 = a2;
  v24[1] = a3;
  *(v21[7] + 8 * v11) = a1;
  v25 = v21[2];
  v15 = __OFADD__(v25, 1);
  v26 = v25 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21[2] = v26;
}

void sub_1C571CDB0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC170710, &unk_1C5877E60);
  v2 = *v0;
  v3 = sub_1C584FD30();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
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
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;

        v22 = v20;
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
}

uint64_t *sub_1C571CF1C(uint64_t *result, uint64_t **a2, void *a3, uint64_t a4, unint64_t *a5, void *a6, unint64_t *a7, __n128 a8)
{
  v10 = a4;
  v12 = result;
  if ((a4 & 0xC000000000000001) == 0)
  {
LABEL_21:
    v16 = 0;
    v24 = -1 << *(v10 + 32);
    v14 = v10 + 56;
    v15 = ~v24;
    v25 = -v24;
    if (v25 < 64)
    {
      v26 = ~(-1 << v25);
    }

    else
    {
      v26 = -1;
    }

    v17 = v26 & *(v10 + 56);
    v18 = a3;
    if (a2)
    {
      goto LABEL_3;
    }

LABEL_25:
    a6 = 0;
    goto LABEL_32;
  }

  sub_1C584FB80();
  sub_1C5626E40(0, a5, a6);
  sub_1C56279C0(a7, a5, a6);
  result = sub_1C584F950();
  v10 = v33;
  v14 = v34;
  v15 = v35;
  v16 = v36;
  v17 = v37;
  v18 = a3;
  if (!a2)
  {
    goto LABEL_25;
  }

LABEL_3:
  if (!v18)
  {
    a6 = 0;
    goto LABEL_32;
  }

  if ((v18 & 0x8000000000000000) != 0)
  {
LABEL_35:
    __break(1u);
    return result;
  }

  v29 = a5;
  v30 = a6;
  a6 = 0;
  v28 = v15;
  a5 = ((v15 + 64) >> 6);
  v19 = 1;
  while (1)
  {
    if (v10 < 0)
    {
      if (!sub_1C584FBB0())
      {
        goto LABEL_30;
      }

      sub_1C5626E40(0, v29, v30);
      swift_dynamicCast();
      result = v32;
      v18 = a3;
      if (!v32)
      {
        goto LABEL_30;
      }

      goto LABEL_17;
    }

    v20 = v16;
    if (!v17)
    {
      break;
    }

    v21 = v16;
LABEL_13:
    v22 = __clz(__rbit64(v17));
    v17 &= v17 - 1;
    result = *(*(v10 + 48) + ((v21 << 9) | (8 * v22)));
    if (!result)
    {
      goto LABEL_30;
    }

LABEL_17:
    *a2 = result;
    if (v19 == v18)
    {
      a6 = v18;
      goto LABEL_30;
    }

    ++a2;
    a6 = v19;
    if (__OFADD__(v19++, 1))
    {
      __break(1u);
      goto LABEL_21;
    }
  }

  while (1)
  {
    v21 = (v20 + 1);
    if (__OFADD__(v20, 1))
    {
      __break(1u);
      goto LABEL_35;
    }

    if (v21 >= a5)
    {
      break;
    }

    v17 = *(v14 + 8 * v21);
    ++v20;
    if (v17)
    {
      v16 = v21;
      goto LABEL_13;
    }
  }

  v17 = 0;
  if (a5 <= (v16 + 1))
  {
    v27 = (v16 + 1);
  }

  else
  {
    v27 = a5;
  }

  v16 = v27 - 1;
LABEL_30:
  v15 = v28;
LABEL_32:
  *v12 = v10;
  v12[1] = v14;
  v12[2] = v15;
  v12[3] = v16;
  v12[4] = v17;
  return a6;
}

uint64_t sub_1C571D14C(unint64_t a1)
{
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1C584FB90())
  {
    v4 = sub_1C5626E40(0, &qword_1ED77E810, 0x1E696ACD8);
    v5 = sub_1C56279C0(&qword_1ED77E808, &qword_1ED77E810, 0x1E696ACD8);
    result = MEMORY[0x1C6949FF0](i, v4, v5);
    v13 = result;
    if (v2)
    {
      break;
    }

    v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return result;
    }

LABEL_7:
    v9 = 0;
    v2 = 0x1E696ACD8uLL;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v10 = MEMORY[0x1C694A320](v9, a1);
      }

      else
      {
        if (v9 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v10 = *(a1 + 8 * v9 + 32);
      }

      v11 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      sub_1C5626BCC(&v12, v10, &qword_1ED77E810, 0x1E696ACD8, &qword_1EC170700, &unk_1C5877E48);

      ++v9;
      if (v11 == v7)
      {
        return v13;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

  v8 = result;
  v7 = sub_1C584FB90();
  result = v8;
  if (v7)
  {
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_1C571D2D8(unint64_t a1)
{
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1C584FB90())
  {
    v4 = sub_1C5626E40(0, &unk_1ED77E840, 0x1E69DCC20);
    v5 = sub_1C56279C0(&qword_1ED77E838, &unk_1ED77E840, 0x1E69DCC20);
    result = MEMORY[0x1C6949FF0](i, v4, v5);
    v13 = result;
    if (v2)
    {
      break;
    }

    v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return result;
    }

LABEL_7:
    v9 = 0;
    v2 = 0x1E69DCC20uLL;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v10 = MEMORY[0x1C694A320](v9, a1);
      }

      else
      {
        if (v9 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v10 = *(a1 + 8 * v9 + 32);
      }

      v11 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      sub_1C5626BCC(&v12, v10, &unk_1ED77E840, 0x1E69DCC20, &qword_1EC1706F8, &qword_1C5877E40);

      ++v9;
      if (v11 == v7)
      {
        return v13;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

  v8 = result;
  v7 = sub_1C584FB90();
  result = v8;
  if (v7)
  {
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_1C571D464(uint64_t a1, uint64_t a2)
{
  sub_1C5624064(a1, a2);
  sub_1C5627450();
  v3 = *(*v2 + 152);
  swift_beginAccess();
  return *(v2 + v3);
}

uint64_t sub_1C571D4BC(uint64_t a1, uint64_t a2)
{
  sub_1C5624064(a1, a2);
  sub_1C5627450();
  v3 = v2 + *(*v2 + 152);
  swift_beginAccess();
  return *(v3 + 8);
}

void sub_1C571D518(uint64_t a1)
{
  v2 = v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakAssign();
  swift_beginAccess();
  v4 = swift_unknownObjectWeakLoadStrong();
  if (v4)
  {
    v5 = v4;
    if (Strong)
    {
      sub_1C5626E40(0, &qword_1ED77E800, 0x1E69DD250);
      v6 = Strong;
      v7 = sub_1C584FAC0();

      if (v7)
      {
        goto LABEL_10;
      }
    }

    else
    {
    }
  }

  else if (!Strong)
  {
    goto LABEL_10;
  }

  *(v2 + *(*v2 + 136)) = 1;
  sub_1C5623E9C();
  v8 = swift_beginAccess();
  if (v2[2] == 2)
  {
    sub_1C5624064(v8, v9);
    sub_1C5627450();
  }

LABEL_10:
}

void sub_1C571D64C(uint64_t a1)
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  sub_1C5623E9C();
}

uint64_t sub_1C571D698(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_1C571D6E0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1C571D770(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC16FE40, &qword_1C5876370);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t ConstraintLayout.layoutConstraints.getter()
{
  v1 = *(v0 + OBJC_IVAR___MUConstraintLayoutInternal_layoutBuilder + 8);
  ObjectType = swift_getObjectType();
  return (*(v1 + 8))(ObjectType, v1);
}

uint64_t ConstraintLayout.layoutGuides.getter()
{
  v1 = *(v0 + OBJC_IVAR___MUConstraintLayoutInternal_layoutBuilder + 8);
  ObjectType = swift_getObjectType();
  return (*(v1 + 16))(ObjectType, v1);
}

uint64_t ConstraintLayout.mode.getter()
{
  v1 = *(v0 + OBJC_IVAR___MUConstraintLayoutInternal_layoutBuilder + 8);
  ObjectType = swift_getObjectType();
  return (*(v1 + 24))(ObjectType, v1);
}

uint64_t ConstraintLayout.mode.setter(uint64_t a1)
{
  v3 = *(v1 + OBJC_IVAR___MUConstraintLayoutInternal_layoutBuilder + 8);
  ObjectType = swift_getObjectType();
  return (*(v3 + 32))(a1, ObjectType, v3);
}

uint64_t sub_1C571DB14@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(*a1 + OBJC_IVAR___MUConstraintLayoutInternal_layoutBuilder + 8);
  ObjectType = swift_getObjectType();
  result = (*(v3 + 24))(ObjectType, v3);
  *a2 = result;
  return result;
}

uint64_t sub_1C571DB74(uint64_t *a1, void *a2)
{
  v2 = *a1;
  v3 = *(*a2 + OBJC_IVAR___MUConstraintLayoutInternal_layoutBuilder + 8);
  ObjectType = swift_getObjectType();
  return (*(v3 + 32))(v2, ObjectType, v3);
}

uint64_t (*ConstraintLayout.mode.modify(void *a1))()
{
  v3 = *(v1 + OBJC_IVAR___MUConstraintLayoutInternal_layoutBuilder + 8);
  a1[1] = *(v1 + OBJC_IVAR___MUConstraintLayoutInternal_layoutBuilder);
  a1[2] = v3;
  a1[3] = swift_getObjectType();
  *a1 = (*(v3 + 24))();
  return sub_1C571DC58;
}

uint64_t ConstraintLayout.viewForForwardingSetNeedsUpdateConstraints.getter()
{
  v1 = *(v0 + OBJC_IVAR___MUConstraintLayoutInternal_layoutBuilder + 8);
  ObjectType = swift_getObjectType();
  return (*(v1 + 48))(ObjectType, v1);
}

uint64_t ConstraintLayout.viewForForwardingSetNeedsUpdateConstraints.setter(uint64_t a1)
{
  v3 = *(v1 + OBJC_IVAR___MUConstraintLayoutInternal_layoutBuilder + 8);
  ObjectType = swift_getObjectType();
  return (*(v3 + 56))(a1, ObjectType, v3);
}

uint64_t sub_1C571DE8C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(*a1 + OBJC_IVAR___MUConstraintLayoutInternal_layoutBuilder + 8);
  ObjectType = swift_getObjectType();
  result = (*(v3 + 48))(ObjectType, v3);
  *a2 = result;
  return result;
}

uint64_t sub_1C571DEEC(void **a1, void *a2)
{
  v2 = *a1;
  v3 = *(*a2 + OBJC_IVAR___MUConstraintLayoutInternal_layoutBuilder + 8);
  ObjectType = swift_getObjectType();
  v5 = *(v3 + 56);
  v6 = v2;
  return v5(v2, ObjectType, v3);
}

void (*ConstraintLayout.viewForForwardingSetNeedsUpdateConstraints.modify(void *a1))(void **a1, char a2)
{
  v3 = *(v1 + OBJC_IVAR___MUConstraintLayoutInternal_layoutBuilder + 8);
  a1[1] = *(v1 + OBJC_IVAR___MUConstraintLayoutInternal_layoutBuilder);
  a1[2] = v3;
  a1[3] = swift_getObjectType();
  *a1 = (*(v3 + 48))();
  return sub_1C571DFE0;
}

void sub_1C571DFE0(void **a1, char a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = v2[7];
  v5 = *a1;
  if (a2)
  {
    v6 = v5;
    v4(v5, v3, v2);
  }

  else
  {
    v4(*a1, v3, v2);
  }
}

id sub_1C571E08C(uint64_t a1, uint64_t a2)
{
  v5 = objc_allocWithZone(v2);
  v6 = &v5[OBJC_IVAR___MUConstraintLayoutInternal_layoutBuilder];
  *v6 = a1;
  *(v6 + 1) = a2;
  v12.receiver = v5;
  v12.super_class = v2;
  swift_unknownObjectRetain();
  v7 = objc_msgSendSuper2(&v12, sel_init);
  ObjectType = swift_getObjectType();
  v9 = *(a2 + 80);
  v10 = v7;
  v9(v7, ObjectType, a2);

  swift_unknownObjectRelease();
  return v10;
}

id ConstraintLayout.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ConstraintLayout.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ConstraintLayout();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void static NSLayoutConstraint.activate(layouts:constraints:)(unint64_t a1, unint64_t a2)
{
  v3 = a1;
  if (a1 >> 62)
  {
    goto LABEL_49;
  }

  v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v5 = &OBJC_IVAR____TtCC6MapsUI23MUPlaceActionDispatcher20PublisherGuideAction_shouldAddGuideToLibrary;
  while (v4)
  {
    v46 = v3 & 0xC000000000000001;
    v44 = v3 + 32;
    v45 = v3 & 0xFFFFFFFFFFFFFF8;

    v6 = 0;
    v42 = v4;
    v43 = v3;
    while (1)
    {
      if (v46)
      {
        v7 = MEMORY[0x1C694A320](v6, v3);
      }

      else
      {
        if (v6 >= *(v45 + 16))
        {
          goto LABEL_47;
        }

        v7 = *(v44 + 8 * v6);
      }

      v8 = v7;
      v9 = __OFADD__(v6++, 1);
      if (v9)
      {
        break;
      }

      v10 = &v7[v5[227]];
      v11 = *(v10 + 1);
      ObjectType = swift_getObjectType();
      if (!(*(v11 + 24))(ObjectType, v11))
      {
        v13 = *(v10 + 1);
        v14 = swift_getObjectType();
        (*(v13 + 32))(1, v14, v13);
      }

      v15 = *(v10 + 1);
      v16 = swift_getObjectType();
      v17 = (*(v15 + 8))(v16, v15);
      v18 = v17;
      v19 = v17 >> 62;
      if (v17 >> 62)
      {
        v20 = sub_1C584FB90();
      }

      else
      {
        v20 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v21 = a2 >> 62;
      if (a2 >> 62)
      {
        v34 = sub_1C584FB90();
        v23 = v34 + v20;
        if (__OFADD__(v34, v20))
        {
LABEL_42:
          __break(1u);
          break;
        }
      }

      else
      {
        v22 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v23 = v22 + v20;
        if (__OFADD__(v22, v20))
        {
          goto LABEL_42;
        }
      }

      if (!swift_isUniquelyReferenced_nonNull_bridgeObject())
      {
        if (!v21)
        {
          goto LABEL_24;
        }

LABEL_23:
        sub_1C584FB90();
        goto LABEL_24;
      }

      if (v21)
      {
        goto LABEL_23;
      }

      v24 = a2 & 0xFFFFFFFFFFFFFF8;
      if (v23 <= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v48 = a2;
        goto LABEL_25;
      }

LABEL_24:
      v48 = sub_1C584FC80();
      v24 = v48 & 0xFFFFFFFFFFFFFF8;
LABEL_25:
      v47 = v8;
      v25 = *(v24 + 16);
      a2 = *(v24 + 24);
      if (v19)
      {
        v26 = sub_1C584FB90();
        if (v26)
        {
LABEL_29:
          if (((a2 >> 1) - v25) < v20)
          {
            goto LABEL_45;
          }

          v27 = v24 + 8 * v25 + 32;
          if (v19)
          {
            if (v26 < 1)
            {
              goto LABEL_48;
            }

            sub_1C571ED54();
            for (i = 0; i != v26; ++i)
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC170720, &qword_1C5877E70);
              v29 = sub_1C571ECCC(v49, i, v18);
              v31 = *v30;
              (v29)(v49, 0);
              *(v27 + 8 * i) = v31;
            }

            v4 = v42;
            v3 = v43;
          }

          else
          {
            sub_1C5626E40(0, &qword_1ED77E810, 0x1E696ACD8);
            swift_arrayInitWithCopy();
          }

          v5 = &OBJC_IVAR____TtCC6MapsUI23MUPlaceActionDispatcher20PublisherGuideAction_shouldAddGuideToLibrary;
          a2 = v48;
          if (v20 > 0)
          {
            v32 = *(v24 + 16);
            v9 = __OFADD__(v32, v20);
            v33 = v32 + v20;
            if (v9)
            {
              goto LABEL_46;
            }

            *(v24 + 16) = v33;
          }

          goto LABEL_5;
        }
      }

      else
      {
        v26 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v26)
        {
          goto LABEL_29;
        }
      }

      v5 = &OBJC_IVAR____TtCC6MapsUI23MUPlaceActionDispatcher20PublisherGuideAction_shouldAddGuideToLibrary;
      a2 = v48;
      if (v20 > 0)
      {
        goto LABEL_44;
      }

LABEL_5:
      if (v6 == v4)
      {
        goto LABEL_51;
      }
    }

    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
LABEL_49:
    v4 = sub_1C584FB90();
    v5 = &OBJC_IVAR____TtCC6MapsUI23MUPlaceActionDispatcher20PublisherGuideAction_shouldAddGuideToLibrary;
  }

LABEL_51:
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  sub_1C5626E40(0, &qword_1ED77E810, 0x1E696ACD8);
  v36 = sub_1C584F750();

  [ObjCClassFromMetadata activateConstraints_];

  if (v4)
  {
    if (v4 < 1)
    {
      __break(1u);
    }

    else
    {
      v37 = 0;
      do
      {
        if ((v3 & 0xC000000000000001) != 0)
        {
          v38 = MEMORY[0x1C694A320](v37, v3);
        }

        else
        {
          v38 = *(v3 + 8 * v37 + 32);
        }

        v39 = v38;
        ++v37;
        v40 = *&v38[v5[227] + 8];
        v41 = swift_getObjectType();
        (*(v40 + 32))(2, v41, v40);
      }

      while (v4 != v37);
    }
  }
}

void static NSLayoutConstraint.deactivate(layouts:constraints:)(unint64_t a1, unint64_t a2)
{
  v3 = a1;
  if (a1 >> 62)
  {
    goto LABEL_46;
  }

  v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v5 = &OBJC_IVAR____TtCC6MapsUI23MUPlaceActionDispatcher20PublisherGuideAction_shouldAddGuideToLibrary;
  while (v4)
  {
    v43 = v3 & 0xC000000000000001;
    v41 = v3 + 32;
    v42 = v3 & 0xFFFFFFFFFFFFFF8;

    v6 = 0;
    v39 = v4;
    v40 = v3;
    while (1)
    {
      if (v43)
      {
        v7 = MEMORY[0x1C694A320](v6, v3);
      }

      else
      {
        if (v6 >= *(v42 + 16))
        {
          goto LABEL_44;
        }

        v7 = *(v41 + 8 * v6);
      }

      v8 = v7;
      v9 = __OFADD__(v6++, 1);
      if (v9)
      {
        break;
      }

      v10 = *&v7[v5[227] + 8];
      ObjectType = swift_getObjectType();
      v12 = (*(v10 + 8))(ObjectType, v10);
      v13 = v12;
      v14 = v12 >> 62;
      if (v12 >> 62)
      {
        v15 = sub_1C584FB90();
      }

      else
      {
        v15 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v16 = a2 >> 62;
      if (a2 >> 62)
      {
        v31 = sub_1C584FB90();
        v18 = v31 + v15;
        if (__OFADD__(v31, v15))
        {
LABEL_39:
          __break(1u);
          break;
        }
      }

      else
      {
        v17 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v18 = v17 + v15;
        if (__OFADD__(v17, v15))
        {
          goto LABEL_39;
        }
      }

      v44 = v8;
      if (swift_isUniquelyReferenced_nonNull_bridgeObject())
      {
        if (!v16)
        {
          v19 = a2 & 0xFFFFFFFFFFFFFF8;
          if (v18 <= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            goto LABEL_22;
          }

          goto LABEL_21;
        }

LABEL_20:
        sub_1C584FB90();
        goto LABEL_21;
      }

      if (v16)
      {
        goto LABEL_20;
      }

LABEL_21:
      a2 = sub_1C584FC80();
      v19 = a2 & 0xFFFFFFFFFFFFFF8;
LABEL_22:
      v45 = v15;
      v20 = *(v19 + 16);
      v21 = *(v19 + 24);
      if (v14)
      {
        v22 = sub_1C584FB90();
        if (v22)
        {
LABEL_26:
          if (((v21 >> 1) - v20) < v45)
          {
            goto LABEL_42;
          }

          v23 = v19 + 8 * v20 + 32;
          if (v14)
          {
            if (v22 < 1)
            {
              goto LABEL_45;
            }

            sub_1C571ED54();
            for (i = 0; i != v22; ++i)
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC170720, &qword_1C5877E70);
              v26 = sub_1C571ECCC(v46, i, v13);
              v28 = *v27;
              (v26)(v46, 0);
              *(v23 + 8 * i) = v28;
            }

            v4 = v39;
            v3 = v40;
            v24 = v45;
          }

          else
          {
            sub_1C5626E40(0, &qword_1ED77E810, 0x1E696ACD8);
            v24 = v45;
            swift_arrayInitWithCopy();
          }

          v5 = &OBJC_IVAR____TtCC6MapsUI23MUPlaceActionDispatcher20PublisherGuideAction_shouldAddGuideToLibrary;
          if (v24 > 0)
          {
            v29 = *(v19 + 16);
            v9 = __OFADD__(v29, v24);
            v30 = v29 + v24;
            if (v9)
            {
              goto LABEL_43;
            }

            *(v19 + 16) = v30;
          }

          goto LABEL_5;
        }
      }

      else
      {
        v22 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v22)
        {
          goto LABEL_26;
        }
      }

      v5 = &OBJC_IVAR____TtCC6MapsUI23MUPlaceActionDispatcher20PublisherGuideAction_shouldAddGuideToLibrary;
      if (v45 > 0)
      {
        goto LABEL_41;
      }

LABEL_5:
      if (v6 == v4)
      {
        goto LABEL_48;
      }
    }

    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    v4 = sub_1C584FB90();
    v5 = &OBJC_IVAR____TtCC6MapsUI23MUPlaceActionDispatcher20PublisherGuideAction_shouldAddGuideToLibrary;
  }

LABEL_48:
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  sub_1C5626E40(0, &qword_1ED77E810, 0x1E696ACD8);
  v33 = sub_1C584F750();

  [ObjCClassFromMetadata deactivateConstraints_];

  if (v4)
  {
    if (v4 < 1)
    {
      __break(1u);
    }

    else
    {
      v34 = 0;
      do
      {
        if ((v3 & 0xC000000000000001) != 0)
        {
          v35 = MEMORY[0x1C694A320](v34, v3);
        }

        else
        {
          v35 = *(v3 + 8 * v34 + 32);
        }

        v36 = v35;
        ++v34;
        v37 = *&v35[v5[227] + 8];
        v38 = swift_getObjectType();
        (*(v37 + 32))(0, v38, v37);
      }

      while (v4 != v34);
    }
  }
}

uint64_t sub_1C571EB8C(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, void))
{
  type metadata accessor for ConstraintLayout();
  v5 = sub_1C584F770();
  swift_getObjCClassMetadata();
  a4(v5, MEMORY[0x1E69E7CC0]);
}

uint64_t sub_1C571EC1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t))
{
  type metadata accessor for ConstraintLayout();
  v6 = sub_1C584F770();
  sub_1C5626E40(0, &qword_1ED77E810, 0x1E696ACD8);
  v7 = sub_1C584F770();
  swift_getObjCClassMetadata();
  a5(v6, v7);
}

void (*sub_1C571ECCC(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x1C694A320](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_1C571ED4C;
  }

  __break(1u);
  return result;
}

unint64_t sub_1C571ED54()
{
  result = qword_1EC170728;
  if (!qword_1EC170728)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC170720, &qword_1C5877E70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC170728);
  }

  return result;
}

uint64_t TransitDeparturesSectionViewProvider.needsRebuild.getter()
{
  v1 = OBJC_IVAR___MUTransitDeparturesSectionViewProvider_needsRebuild;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t TransitDeparturesSectionViewProvider.needsRebuild.setter(char a1)
{
  v3 = OBJC_IVAR___MUTransitDeparturesSectionViewProvider_needsRebuild;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

id sub_1C571EF64()
{
  v1 = OBJC_IVAR___MUTransitDeparturesSectionViewProvider____lazy_storage___systemFilterView;
  v2 = *(v0 + OBJC_IVAR___MUTransitDeparturesSectionViewProvider____lazy_storage___systemFilterView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR___MUTransitDeparturesSectionViewProvider____lazy_storage___systemFilterView);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x1E696F410]) initWithFrame_];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id TransitDeparturesSectionViewProvider.__allocating_init(dataSource:userInteractionDelegate:)(void *a1, uint64_t a2)
{
  v5 = objc_allocWithZone(v2);
  v6 = sub_1C5720138(a1, a2);

  swift_unknownObjectRelease();
  return v6;
}

id TransitDeparturesSectionViewProvider.init(dataSource:userInteractionDelegate:)(void *a1, uint64_t a2)
{
  v3 = sub_1C5720138(a1, a2);

  swift_unknownObjectRelease();
  return v3;
}

id sub_1C571F0E0(uint64_t a1, uint64_t a2)
{
  type metadata accessor for TransitConnectionsSectionView();
  v3 = sub_1C5640BEC(1);
  v4 = MEMORY[0x1E69E7D40];
  v5 = *((*MEMORY[0x1E69E7D40] & *v3) + 0x68);
  v6 = swift_unknownObjectRetain();
  v5(v6, &off_1F44C6DF0);
  v7 = *((*v4 & *v3) + 0x80);

  v7(v8);
  v9 = [objc_opt_self() transitConnectionsSectionHeaderTitle];
  if (!v9)
  {
    sub_1C584F660();
    v9 = sub_1C584F630();
  }

  v10 = [objc_allocWithZone(MUPlaceSectionHeaderViewModel) initWithTitleString_];

  v11 = [objc_opt_self() insetPlatterSectionViewForContentView:v3 sectionHeaderViewModel:v10 sectionFooterViewModel:a2];
  v12 = sub_1C584F630();
  [v11 setAccessibilityIdentifier_];

  return v11;
}

uint64_t sub_1C571F290(uint64_t a1)
{
  v2 = type metadata accessor for TransitDeparturesContainerViewModel(0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 16);
  v8 = MEMORY[0x1E69E7CC0];
  if (v7)
  {
    v18 = MEMORY[0x1E69E7CC0];
    sub_1C571FE50(0, v7, 0);
    v8 = v18;
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);
    do
    {
      sub_1C57222D0(v9, v6);
      v18 = v8;
      v12 = *(v8 + 16);
      v11 = *(v8 + 24);
      if (v12 >= v11 >> 1)
      {
        sub_1C571FE50((v11 > 1), v12 + 1, 1);
        v8 = v18;
      }

      v16 = v2;
      v17 = &off_1F44C6E80;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v15);
      sub_1C57222D0(v6, boxed_opaque_existential_1);
      *(v8 + 16) = v12 + 1;
      sub_1C56412D4(&v15, v8 + 40 * v12 + 32);
      sub_1C5722334(v6);
      v9 += v10;
      --v7;
    }

    while (v7);
  }

  return v8;
}

uint64_t sub_1C571F424(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v15 = MEMORY[0x1E69E7CC0];
    sub_1C571FE50(0, v1, 0);
    v2 = v15;
    v4 = (a1 + 32);
    do
    {
      v5 = *v4;
      v15 = v2;
      v6 = *(v2 + 16);
      v7 = *(v2 + 24);
      v8 = v5;
      if (v6 >= v7 >> 1)
      {
        v9 = v7 > 1;
        v10 = v8;
        sub_1C571FE50(v9, v6 + 1, 1);
        v8 = v10;
        v2 = v15;
      }

      v13 = &type metadata for TransitDeparturesInactiveLinesContainerViewModel;
      v14 = &off_1F44C83A8;
      *&v12 = v8;
      *(v2 + 16) = v6 + 1;
      sub_1C56412D4(&v12, v2 + 40 * v6 + 32);
      ++v4;
      --v1;
    }

    while (v1);
  }

  return v2;
}

void *sub_1C571F528(void *result)
{
  v2 = result[2];
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
  if (result && v5 <= v3[3] >> 1)
  {
    if (v6[2])
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_1C571FD08(result, v10, 1, v3);
  v3 = result;
  if (!v6[2])
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((v3[3] >> 1) - v3[2] < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC1707F0, qword_1C5877F48);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = v3[2];
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    v3[2] = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_1C571F630(unint64_t a1)
{
  if (a1 >> 62)
  {
    v3 = sub_1C584FB90();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!(*v1 >> 62))
  {
    v4 = *((*v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v5 = __OFADD__(v4, v3);
    result = v4 + v3;
    if (!v5)
    {
      goto LABEL_5;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v13 = sub_1C584FB90();
  v5 = __OFADD__(v13, v3);
  result = v13 + v3;
  if (v5)
  {
    goto LABEL_13;
  }

LABEL_5:
  sub_1C5640E88(result, 1);
  v7 = *v1;
  v8 = *v1 & 0xFFFFFFFFFFFFFF8;
  sub_1C571FFB8(v8 + 8 * *(v8 + 0x10) + 32, (*(v8 + 0x18) >> 1) - *(v8 + 0x10), a1);
  v10 = v9;

  if (v10 < v3)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v10 < 1)
  {
LABEL_9:
    *v1 = v7;
    return result;
  }

  v11 = *(v8 + 16);
  v5 = __OFADD__(v11, v10);
  v12 = v11 + v10;
  if (!v5)
  {
    *(v8 + 16) = v12;
    goto LABEL_9;
  }

LABEL_15:
  __break(1u);
  return result;
}

id sub_1C571F720()
{
  v1 = [objc_opt_self() viewModelForMapItem:*(*(v0 + OBJC_IVAR___MUTransitDeparturesSectionViewProvider_dataSource) + OBJC_IVAR___MUTransitDeparturesDataSource_mapItem) transitLine:0];
  if (v1)
  {
    v2 = OBJC_IVAR___MUTransitDeparturesSectionViewProvider_footerAttributionViewModel;
    swift_beginAccess();
    v3 = *(v0 + v2);
    *(v0 + v2) = v1;
    v4 = v1;

    v5 = swift_allocObject();
    swift_unknownObjectWeakInit();
    aBlock[4] = sub_1C5720610;
    aBlock[5] = v5;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1C56444F8;
    aBlock[3] = &block_descriptor_11;
    v6 = _Block_copy(aBlock);
    v7 = v4;

    [v7 setActionBlock_];
    _Block_release(v6);
  }

  return v1;
}

double TransitDeparturesSectionViewProvider.sectionViewsForCurrentState()()
{
  sub_1C5720700();

  return result;
}

void sub_1C571F918(void *a1, uint64_t a2)
{
  v3 = v2;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    v8 = *(v3 + OBJC_IVAR___MUTransitDeparturesSectionViewProvider_dataSource);
    v9 = OBJC_IVAR___MUTransitDeparturesDataSource_mapItem;
    if ([Strong sectionViewProvider:v3 canSelect:a1 using:*(v8 + OBJC_IVAR___MUTransitDeparturesDataSource_mapItem)])
    {
      [v7 sectionViewProvider:v3 didSelectDepartureSequence:a1 using:*(v8 + v9)];
LABEL_8:
      swift_unknownObjectRelease();
      return;
    }

    swift_unknownObjectRelease();
  }

  v10 = [a1 line];
  if (v10)
  {
    v11 = v10;
    type metadata accessor for TransitLineMarker();
    [*(*(v3 + OBJC_IVAR___MUTransitDeparturesSectionViewProvider_dataSource) + OBJC_IVAR___MUTransitDeparturesDataSource_mapItem) _coordinate];
    v14 = TransitLineMarker.__allocating_init(transitLine:locationHint:)(v11, v12, v13);
    v15 = swift_unknownObjectWeakLoadStrong();
    if (v15)
    {
      [v15 sectionViewProvider:v3 didSelect:v14 using:a2];

      goto LABEL_8;
    }
  }

  else
  {
    __break(1u);
  }
}

id TransitDeparturesSectionViewProvider.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id TransitDeparturesSectionViewProvider.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void *sub_1C571FC80(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    [result sectionViewProvider:v2 didSelectConnectionInfo:a2];
    return swift_unknownObjectRelease();
  }

  return result;
}

void *sub_1C571FD08(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1707E8, &qword_1C5877F40);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC1707F0, qword_1C5877F48);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1C571FE50(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1C571FE70(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1C571FE70(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1707E8, &qword_1C5877F40);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC1707F0, qword_1C5877F48);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_1C571FFB8(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_1C584FB90();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_1C584FB90();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1C5722204();
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1707D0, &qword_1C5877F30);
            v9 = sub_1C571ECCC(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_1C57221B8();
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

id sub_1C5720138(void *a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  swift_unknownObjectWeakInit();
  *&v2[OBJC_IVAR___MUTransitDeparturesSectionViewProvider_footerAttributionViewModel] = 0;
  v2[OBJC_IVAR___MUTransitDeparturesSectionViewProvider_needsRebuild] = 1;
  *&v2[OBJC_IVAR___MUTransitDeparturesSectionViewProvider_cachedViews] = MEMORY[0x1E69E7CC0];
  *&v2[OBJC_IVAR___MUTransitDeparturesSectionViewProvider____lazy_storage___systemFilterView] = 0;
  *&v2[OBJC_IVAR___MUTransitDeparturesSectionViewProvider____lazy_storage___overallIncidentsView] = 0;
  *&v2[OBJC_IVAR___MUTransitDeparturesSectionViewProvider_dataSource] = a1;
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  v7.receiver = v2;
  v7.super_class = ObjectType;
  v5 = a1;
  return objc_msgSendSuper2(&v7, sel_init);
}

uint64_t sub_1C5720224(char a1, char a2)
{
  v3 = MEMORY[0x1E69E7CC0];
  v38 = MEMORY[0x1E69E7CC0];
  result = sub_1C5710384();
  if (!result)
  {
    goto LABEL_29;
  }

  v5 = result;
  swift_unknownObjectRetain();
  GEOLocationCoordinate2DMake();
  v7 = sub_1C571088C(v6);
  swift_unknownObjectRelease();
  v8 = sub_1C571F290(v7);

  sub_1C571F528(v8);
  swift_unknownObjectRetain();
  GEOLocationCoordinate2DMake();
  v10 = sub_1C5710D28(v9);
  swift_unknownObjectRelease();
  v11 = sub_1C571F424(v10);

  sub_1C571F528(v11);
  v12 = v38;
  v13 = *(v38 + 16);
  if (!v13)
  {

    swift_unknownObjectRelease();
    return MEMORY[0x1E69E7CC0];
  }

  v27 = v5;
  v37 = v3;

  sub_1C584FCC0();
  v14 = *(v38 + 16);
  v15 = v38 + 32;
  result = type metadata accessor for TransitDeparturesContainerSectionView();
  v16 = 0;
  v28 = a2 ^ 1;
  v29 = a2;
  v30 = v14 - 1;
  v32 = v13;
  while (v14)
  {
    if (v16 >= *(v12 + 16))
    {
      goto LABEL_28;
    }

    sub_1C5633310(v15, v36);
    v34 = v16;
    sub_1C56412D4(v36, v35);
    v21 = sub_1C5640BEC(1);
    sub_1C5633310(v35, v33);
    sub_1C5640908(v33);
    v22 = &v21[OBJC_IVAR____TtC6MapsUI37TransitDeparturesContainerSectionView_rowFeedbackDelegate];
    swift_beginAccess();
    *(v22 + 1) = &off_1F44C6E00;
    swift_unknownObjectWeakAssign();
    if (v16)
    {
      v23 = objc_opt_self();
      v24 = 0;
      v17 = 0;
      if (v14 != 1 || (a2 & 1) != 0)
      {
        goto LABEL_6;
      }
    }

    else
    {
      v23 = objc_opt_self();
      if (v30)
      {
        if (a1)
        {
          v24 = 0;
          v17 = 0;
          goto LABEL_6;
        }

        v25 = 0;
LABEL_20:
        v26 = [objc_opt_self() transitDeparturesSectionHeaderTitle];
        if (!v26)
        {
          sub_1C584F660();
          v26 = sub_1C584F630();
        }

        v24 = [objc_allocWithZone(MUPlaceSectionHeaderViewModel) initWithTitleString_];

        if ((v25 & 1) == 0)
        {
          v17 = 0;
          a2 = v29;
          goto LABEL_6;
        }

        a2 = v29;
        goto LABEL_5;
      }

      v25 = v28;
      if ((a1 & 1) == 0)
      {
        goto LABEL_20;
      }

      v24 = 0;
      v17 = 0;
      a2 = v29;
      if (v29)
      {
        goto LABEL_6;
      }
    }

LABEL_5:
    v17 = sub_1C571F720();
LABEL_6:
    ++v16;
    v18 = [v23 insetPlatterSectionViewForContentView:v21 sectionHeaderViewModel:v24 sectionFooterViewModel:{v17, v27}];

    v19 = v18;
    v20 = sub_1C584F630();
    [v19 setAccessibilityIdentifier_];

    sub_1C5722268(&v34);
    sub_1C584FCA0();
    sub_1C584FCD0();
    sub_1C584FCE0();
    result = sub_1C584FCB0();
    --v14;
    v15 += 40;
    if (v32 == v16)
    {
      swift_unknownObjectRelease();
      swift_bridgeObjectRelease_n();
      return v37;
    }
  }

  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
  return result;
}

void sub_1C5720610()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = [*(*(Strong + OBJC_IVAR___MUTransitDeparturesSectionViewProvider_dataSource) + OBJC_IVAR___MUTransitDeparturesDataSource_dataProvider) transitPunchoutAttribution];
    if (v2)
    {
      v3 = v2;
      swift_beginAccess();
      v4 = swift_unknownObjectWeakLoadStrong();
      if (v4)
      {
        [v4 sectionViewProvider:v1 didSelectAttribution:v3];
        swift_unknownObjectRelease();
      }
    }
  }
}

double block_copy_helper_12(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

id sub_1C5720700()
{
  v1 = v0;
  v2 = OBJC_IVAR___MUTransitDeparturesSectionViewProvider_needsRebuild;
  swift_beginAccess();
  if ((*(v0 + v2) & 1) == 0)
  {
    v161 = OBJC_IVAR___MUTransitDeparturesSectionViewProvider_cachedViews;
    swift_beginAccess();
    return *(v1 + v161);
  }

  v3 = MEMORY[0x1E69E7CC0];
  v233 = MEMORY[0x1E69E7CC0];
  v4 = sub_1C5710574();
  v5 = *(v4 + 16);
  if (v5 < 2)
  {
    goto LABEL_281;
  }

  v6 = sub_1C571EF64();
  [v6 setDelegate_];

  v226 = OBJC_IVAR___MUTransitDeparturesSectionViewProvider____lazy_storage___systemFilterView;
  v7 = *(v1 + OBJC_IVAR___MUTransitDeparturesSectionViewProvider____lazy_storage___systemFilterView);
  v234[0] = v3;
  v8 = v7;
  sub_1C584FCC0();
  v220 = v5;
  v9 = v4 + 32;
  do
  {
    v9 += 8;
    swift_unknownObjectRetain();
    sub_1C584FCA0();
    sub_1C584FCD0();
    sub_1C584FCE0();
    sub_1C584FCB0();
    --v5;
  }

  while (v5);
  v221 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC1702E0, &qword_1C5877648);
  v10 = sub_1C584F750();

  [v8 setTransitSystems_];

  v219 = *(v1 + v226);
  v11 = [v219 transitSystems];
  v12 = sub_1C584F770();

  v13 = v12 & 0xFFFFFFFFFFFFFF8;
  if (v12 >> 62)
  {
    v2 = sub_1C584FB90();
  }

  else
  {
    v2 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v14 = 0;
  v15 = v12 & 0xC000000000000001;
  v222 = v12;
  v232 = v12 + 32;
  v228 = v12 & 0xC000000000000001;
  v225 = v2;
  v230 = v12 & 0xFFFFFFFFFFFFFF8;
  while (1)
  {
    if (v14 == v2)
    {
      v14 = 0;
      goto LABEL_276;
    }

    if (v15)
    {
      v17 = MEMORY[0x1C694A320](v14, v222);
    }

    else
    {
      if (v14 >= *(v13 + 16))
      {
        __break(1u);
LABEL_299:
        __break(1u);
        goto LABEL_300;
      }

      v17 = *(v232 + 8 * v14);
      swift_unknownObjectRetain();
    }

    v18 = sub_1C5710384();
    v19 = v17;
    v20 = v18;
    if (!v17 && !v18)
    {
      break;
    }

    v21 = v19 != 0;
    if (v18)
    {
      v21 = 0;
      v22 = v17 == 0;
    }

    else
    {
      v22 = 0;
    }

    if (v22 || v21 || (v23 = [v19 muid], v23 != objc_msgSend(v20, "muid")))
    {

      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      goto LABEL_9;
    }

    v24 = [v19 name];
    if (v24 || ([v20 name], (v227 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v25 = [v19 name];
      v26 = [v20 name];
      if (([v25 isEqualToString:v26] & 1) == 0)
      {

        if (v24)
        {

          swift_unknownObjectRelease();
          swift_unknownObjectRelease();

          v13 = v230;
          goto LABEL_9;
        }

        v28 = 0;
        v13 = v230;
LABEL_139:

        goto LABEL_140;
      }

      v223 = v25;
      v224 = v26;
      v27 = v24;
      v229 = 1;
    }

    else
    {
      v27 = 0;
      v227 = 0;
      v229 = 0;
    }

    v29 = [v19 artwork];
    v30 = [v20 artwork];
    v31 = v29;
    v32 = v30;
    v231 = v32;
    if (!(v29 | v30))
    {
      v28 = 1;
LABEL_32:
      v15 = v228;
      v24 = v27;
      v2 = v225;
      goto LABEL_136;
    }

    v28 = 0;
    if (v31)
    {
      v33 = v30 == 0;
    }

    else
    {
      v33 = 0;
    }

    v34 = v33;
    if (v32)
    {
      v35 = v29 == 0;
    }

    else
    {
      v35 = 0;
    }

    if (v35)
    {
      goto LABEL_32;
    }

    v15 = v228;
    v24 = v27;
    v2 = v225;
    if ((v34 & 1) == 0)
    {
      v36 = [v31 artworkSourceType];
      v215 = v31;
      v37 = v231;
      if (v36 != [v231 artworkSourceType] || (v38 = objc_msgSend(v215, "artworkUseType"), v38 != objc_msgSend(v231, "artworkUseType")))
      {
        v28 = 0;
        v31 = v215;
        goto LABEL_136;
      }

      v213 = v24;
      v39 = [v215 shieldDataSource];
      v40 = [v231 shieldDataSource];
      v207 = (v39 | v40);
      v41 = v39;
      v42 = v40;
      v212 = v41;
      v214 = v42;
      if (!(v39 | v40))
      {
LABEL_47:
        v43 = [v215 iconDataSource];
        v44 = [v37 iconDataSource];
        v45 = v43 | v44;
        v208 = v43;
        v46 = v43;
        v47 = v44;
        v204 = v46;
        v205 = v47;
        if (!v45)
        {
          goto LABEL_48;
        }

        v28 = 0;
        if (v46)
        {
          v63 = v44 == 0;
        }

        else
        {
          v63 = 0;
        }

        v64 = v63;
        if (v47)
        {
          v65 = v208 == 0;
        }

        else
        {
          v65 = 0;
        }

        if (v65)
        {
          v66 = v46;
          v15 = v228;
          v24 = v213;
          v31 = v215;
          goto LABEL_132;
        }

        v66 = v46;
        v15 = v228;
        v24 = v213;
        v31 = v215;
        if ((v64 & 1) == 0)
        {
          v67 = [v204 iconType];
          if (v67 != [v205 iconType] || (v68 = objc_msgSend(v204, "cartoID"), v68 != objc_msgSend(v205, "cartoID")) || (v69 = objc_msgSend(v204, "defaultTransitType"), v69 != objc_msgSend(v205, "defaultTransitType")) || (v70 = objc_msgSend(v204, "iconAttributeKey"), v70 != objc_msgSend(v205, "iconAttributeKey")))
          {
            v28 = 0;
            v66 = v204;
            v47 = v205;
            goto LABEL_132;
          }

          v210 = [v204 iconAttributeValue];
          v71 = [v205 iconAttributeValue];

          v37 = v231;
          if (v210 != v71)
          {
            v28 = 0;
            v15 = v228;
            v24 = v213;
            v31 = v215;
            goto LABEL_133;
          }

LABEL_48:
          v48 = [v215 iconFallbackShieldDataSource];
          v49 = [v37 iconFallbackShieldDataSource];
          v203 = v48;
          v50 = v49;
          v209 = v50;
          if (!(v48 | v49))
          {
LABEL_49:
            v51 = [v215 textDataSource];
            v52 = [v37 textDataSource];
            v195 = (v51 | v52);
            v53 = v51;
            v54 = v52;
            v196 = v53;
            v200 = v54;
            if (!(v51 | v52))
            {
              goto LABEL_50;
            }

            if (v53)
            {
              v82 = v52 == 0;
            }

            else
            {
              v82 = 0;
            }

            v83 = v82;
            if (v54)
            {
              v84 = v51 == 0;
            }

            else
            {
              v84 = 0;
            }

            v85 = v54;
            if (v84 || v83)
            {

              v28 = 0;
              v94 = v85;
              v15 = v228;
              v24 = v213;
              v31 = v215;
              goto LABEL_129;
            }

            v86 = [v53 text];
            v87 = [v85 text];
            v194 = v86;
            v88 = v87;
            if (!(v86 | v87))
            {
              v89 = v88;

              v37 = v231;
              goto LABEL_50;
            }

            if (v194)
            {
              v95 = v87 == 0;
            }

            else
            {
              v95 = 0;
            }

            v96 = v95;
            v193 = v88;
            if (v88)
            {
              v97 = v86 == 0;
            }

            else
            {
              v97 = 0;
            }

            v31 = v215;
            if (v97 || (v96 & 1) != 0)
            {

              v28 = 0;
              v94 = v193;
              v15 = v228;
              v24 = v213;
              goto LABEL_129;
            }

            v98 = [v194 formatStrings];
            v99 = [v193 formatStrings];
            v195 = (v98 | v99);
            v192 = v98;
            v100 = v99;
            v101 = &__block_literal_global;
            v191 = v100;
            if (!(v98 | v99))
            {

              goto LABEL_156;
            }

            v128 = v192;
            if (v192)
            {
              v129 = v99 == 0;
            }

            else
            {
              v129 = 0;
            }

            v130 = v129;
            if (v100)
            {
              v131 = v98 == 0;
            }

            else
            {
              v131 = 0;
            }

            if (v131 || (v130 & 1) != 0 || (v132 = [v192 count], v133 = objc_msgSend(v100, "count"), v128 = v192, v132 != v133))
            {

              v15 = v228;
              v24 = v213;
LABEL_216:

              v28 = 0;
              v94 = v191;
              goto LABEL_129;
            }

            v217 = v1;
            v237 = 0u;
            v238 = 0u;
            v235 = 0u;
            v236 = 0u;
            v134 = v192;
            v135 = [v134 countByEnumeratingWithState:&v235 objects:v234 count:16];
            if (v135)
            {
              v136 = v135;
              v137 = 0;
              v188 = *v236;
              while (2)
              {
                for (i = 0; i != v136; ++i)
                {
                  if (*v236 != v188)
                  {
                    objc_enumerationMutation(v134);
                  }

                  v195 = *(*(&v235 + 1) + 8 * i);
                  v139 = [v191 objectAtIndexedSubscript:v137];
                  LODWORD(v195) = __GEOServerFormattedStringEqual_block_invoke(v139, v195, v139);

                  if (!v195)
                  {

                    v31 = v215;
                    v1 = v217;
                    v15 = v228;
                    v24 = v213;
                    v2 = v225;
                    goto LABEL_216;
                  }

                  ++v137;
                }

                v136 = [v134 countByEnumeratingWithState:&v235 objects:v234 count:16];
                if (v136)
                {
                  continue;
                }

                break;
              }
            }

            v1 = v217;
LABEL_156:
            v102 = [v194 separators];
            v103 = [v193 separators];
            v104 = v102;
            v195 = v103;
            v105 = &__block_literal_global_59;
            v216 = v1;
            if (!(v102 | v103))
            {
              v186 = v104;

              goto LABEL_158;
            }

            if (v104)
            {
              v140 = v103 == 0;
            }

            else
            {
              v140 = 0;
            }

            v141 = v140;
            if (v195)
            {
              v142 = v102 == 0;
            }

            else
            {
              v142 = 0;
            }

            if (v142 || (v141 & 1) != 0 || (v143 = [v104 count], v143 != objc_msgSend(v195, "count")))
            {
            }

            else
            {
              v237 = 0u;
              v238 = 0u;
              v235 = 0u;
              v236 = 0u;
              v186 = v104;
              v144 = v104;
              v145 = [v144 countByEnumeratingWithState:&v235 objects:v234 count:16];
              if (v145)
              {
                v146 = v145;
                v147 = 0;
                v148 = *v236;
                while (2)
                {
                  for (j = 0; j != v146; ++j)
                  {
                    if (*v236 != v148)
                    {
                      objc_enumerationMutation(v144);
                    }

                    v189 = *(*(&v235 + 1) + 8 * j);
                    v150 = [v195 objectAtIndexedSubscript:v147];
                    LODWORD(v189) = __GEOServerFormattedStringEqual_block_invoke(v150, v189, v150);

                    if (!v189)
                    {

                      goto LABEL_270;
                    }

                    ++v147;
                  }

                  v146 = [v144 countByEnumeratingWithState:&v235 objects:v234 count:16];
                  if (v146)
                  {
                    continue;
                  }

                  break;
                }
              }

LABEL_158:
              v106 = [v194 formatTokens];
              v107 = [v193 formatTokens];
              v185 = v106;
              v108 = v107;
              v109 = &__block_literal_global_62;
              if (!(v106 | v107))
              {

                goto LABEL_160;
              }

              if (v185)
              {
                v151 = v107 == 0;
              }

              else
              {
                v151 = 0;
              }

              v152 = v151;
              if (v108)
              {
                v153 = v106 == 0;
              }

              else
              {
                v153 = 0;
              }

              if (!v153 && (v152 & 1) == 0)
              {
                v154 = [v185 count];
                if (v154 == [v108 count])
                {
                  v237 = 0u;
                  v238 = 0u;
                  v235 = 0u;
                  v236 = 0u;
                  obj = v185;
                  v155 = [obj countByEnumeratingWithState:&v235 objects:v234 count:16];
                  if (v155)
                  {
                    v156 = v155;
                    v157 = 0;
                    v158 = *v236;
                    while (2)
                    {
                      for (k = 0; k != v156; ++k)
                      {
                        if (*v236 != v158)
                        {
                          objc_enumerationMutation(obj);
                        }

                        v190 = *(*(&v235 + 1) + 8 * k);
                        v160 = [v108 objectAtIndexedSubscript:v157];
                        LODWORD(v190) = __GEOServerFormattedStringEqual_block_invoke_3(v160, v190, v160);

                        if (!v190)
                        {

                          goto LABEL_264;
                        }

                        ++v157;
                      }

                      v156 = [obj countByEnumeratingWithState:&v235 objects:v234 count:16];
                      if (v156)
                      {
                        continue;
                      }

                      break;
                    }
                  }

LABEL_160:
                  v110 = [v194 alternativeString];
                  v111 = [v193 alternativeString];
                  v112 = v110 | v111;
                  v113 = v110;
                  v114 = v111;
                  if (v112)
                  {
                    v187 = [v113 isEqual:v114];
                  }

                  else
                  {
                    v187 = 1;
                  }

                  v1 = v216;
                  v2 = v225;
                  v37 = v231;
                  if ((v187 & 1) == 0)
                  {
LABEL_51:
                    v28 = 0;
                    v15 = v228;
                    v24 = v213;
                    v31 = v215;
                    goto LABEL_130;
                  }

LABEL_50:
                  v55 = [v215 hasRoutingIncidentBadge];
                  if (v55 != [v37 hasRoutingIncidentBadge])
                  {
                    goto LABEL_51;
                  }

                  v31 = v215;
                  v91 = [v215 accessibilityText];
                  if (v91 || ([v231 accessibilityText], (v194 = objc_claimAutoreleasedReturnValue()) != 0))
                  {
                    v92 = [v215 accessibilityText];
                    v93 = [v231 accessibilityText];
                    v195 = v91;
                    v28 = [v92 isEqualToString:v93];

                    v15 = v228;
                    v24 = v213;
                    v94 = v195;
                    if (!v195)
                    {
                      v94 = v194;
                    }
                  }

                  else
                  {
                    v194 = 0;
                    v28 = 1;
                    v15 = v228;
                    v24 = v213;
                    v94 = 0;
                  }

LABEL_129:

LABEL_130:
                  v90 = v209;
LABEL_131:

                  v66 = v196;
                  v47 = v200;
                  goto LABEL_132;
                }
              }

LABEL_264:
LABEL_270:
              v104 = v186;
            }

            v28 = 0;
            v31 = v215;
            v1 = v216;
            v15 = v228;
            v24 = v213;
            v2 = v225;
            v94 = v195;
            goto LABEL_129;
          }

          if (v203)
          {
            v72 = v49 == 0;
          }

          else
          {
            v72 = 0;
          }

          v73 = v72;
          if (v50)
          {
            v74 = v48 == 0;
          }

          else
          {
            v74 = 0;
          }

          if (v74 || v73)
          {

            v28 = 0;
            v90 = v209;
            v196 = v203;
            v200 = v209;
            v15 = v228;
            v24 = v213;
            v31 = v215;
            goto LABEL_131;
          }

          v75 = [v203 shieldType];
          v15 = v228;
          v24 = v213;
          v31 = v215;
          if (v75 != [v209 shieldType])
          {

            v28 = 0;
            v90 = v209;
            v196 = v203;
            v200 = v209;
            goto LABEL_131;
          }

          v202 = [v203 shieldText];
          if (v202 || ([v209 shieldText], (v195 = objc_claimAutoreleasedReturnValue()) != 0))
          {
            v76 = [v203 shieldText];
            v77 = [v209 shieldText];
            v197 = v76;
            v78 = v76;
            v79 = v77;
            if (([v78 isEqualToString:v77] & 1) == 0)
            {

              v28 = 0;
              v90 = v202;
              if (!v202)
              {
                v90 = v195;
              }

              v196 = v203;
              v200 = v209;
              goto LABEL_131;
            }

            v31 = v197;
            v193 = v79;
            v80 = 1;
          }

          else
          {
            v195 = 0;
            v80 = 0;
          }

          v123 = [v203 shieldColorString];
          if (v123 || ([v209 shieldColorString], (v192 = objc_claimAutoreleasedReturnValue()) != 0))
          {
            LODWORD(v194) = v80;
            v124 = [v203 shieldColorString];
            v125 = [v209 shieldColorString];
            v199 = [v124 isEqualToString:v125];

            if (v123)
            {

              v126 = v202;
              if (v194)
              {
                goto LABEL_187;
              }

              goto LABEL_188;
            }

            v126 = v202;
            LOBYTE(v80) = v194;
            v127 = v192;
          }

          else
          {
            v127 = 0;
            v199 = 1;
            v126 = v202;
          }

          if (v80)
          {
LABEL_187:
          }

LABEL_188:

          if (v126)
          {
          }

          else
          {
          }

          v37 = v231;
          if (v199)
          {
            goto LABEL_49;
          }

          v47 = v209;
          v28 = 0;
          v15 = v228;
          v24 = v213;
          v31 = v215;
          v66 = v203;
        }

LABEL_132:
        v211 = v47;

LABEL_133:
        v81 = v205;
LABEL_134:

LABEL_135:
        goto LABEL_136;
      }

      if (v41)
      {
        v56 = v40 == 0;
      }

      else
      {
        v56 = 0;
      }

      v57 = v56;
      if (v42)
      {
        v58 = v39 == 0;
      }

      else
      {
        v58 = 0;
      }

      v59 = v41;
      v60 = v42;
      if (v58 || v57)
      {

        v28 = 0;
        v81 = v60;
        v15 = v228;
        v24 = v213;
        v31 = v215;
        goto LABEL_134;
      }

      v61 = [v41 shieldType];
      v22 = v61 == [v60 shieldType];
      v15 = v228;
      v24 = v213;
      v62 = v59;
      v31 = v215;
      if (!v22)
      {

        v28 = 0;
        v81 = v214;
        goto LABEL_134;
      }

      v206 = [v62 shieldText];
      if (v206 || ([v214 shieldText], (v203 = objc_claimAutoreleasedReturnValue()) != 0))
      {
        v207 = [v62 shieldText];
        v204 = [v214 shieldText];
        if (([v207 isEqualToString:?] & 1) == 0)
        {

          v28 = 0;
          v81 = v206;
          if (!v206)
          {
            v81 = v203;
          }

          goto LABEL_134;
        }

        v201 = 1;
      }

      else
      {
        v203 = 0;
        v201 = 0;
      }

      v115 = v62;
      v116 = [v62 shieldColorString];
      if (v116 || ([v214 shieldColorString], (v195 = objc_claimAutoreleasedReturnValue()) != 0))
      {
        v117 = [v115 shieldColorString];
        v118 = [v214 shieldColorString];
        v198 = [v117 isEqualToString:v118];

        if (v116)
        {

          v119 = v214;
          v121 = v204;
          v120 = v206;
          if (v201)
          {
            goto LABEL_167;
          }

          goto LABEL_168;
        }

        v119 = v214;
        v121 = v204;
        v120 = v206;
        v122 = v195;
      }

      else
      {
        v122 = 0;
        v198 = 1;
        v119 = v214;
        v121 = v204;
        v120 = v206;
      }

      if (v201)
      {
LABEL_167:
      }

LABEL_168:

      if (v120)
      {
      }

      else
      {
      }

      v37 = v231;
      if (v198)
      {
        goto LABEL_47;
      }

      v28 = 0;
      v15 = v228;
      v24 = v213;
      v31 = v215;
      goto LABEL_135;
    }

LABEL_136:

    if (v229)
    {
    }

    v13 = v230;
    if (!v24)
    {
      goto LABEL_139;
    }

LABEL_140:

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    if (v28)
    {
      goto LABEL_276;
    }

LABEL_9:
    if (__OFADD__(v14++, 1))
    {
      goto LABEL_299;
    }
  }

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
LABEL_276:

  [v219 setSelectedIndex_];

  v163 = [objc_opt_self() transitDeparturesSectionHeaderTitle];
  v2 = v221;
  if (!v163)
  {
    sub_1C584F660();
    v163 = sub_1C584F630();
  }

  v164 = [objc_allocWithZone(MUPlaceSectionHeaderViewModel) initWithTitleString_];

  v165 = [objc_allocWithZone(MUPlaceSectionView) initWithStyle:0 alwaysHideSeparators:1 sectionHeaderViewModel:v164 sectionFooterViewModel:0];
  [v165 attachViewToContentView_];
  v166 = v165;
  MEMORY[0x1C6949DF0]();
  v5 = v220;
  if (*((v233 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v233 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1C584F7A0();
  }

  sub_1C584F7E0();

LABEL_281:
  v167 = sub_1C5710E98();
  v168 = *(v167 + 16);
  if (!v5 || !sub_1C5710384())
  {

    if (!v168)
    {
      goto LABEL_295;
    }

    goto LABEL_291;
  }

  swift_unknownObjectRelease();
  result = sub_1C5710384();
  if (result)
  {

    swift_unknownObjectRetain();
    GEOLocationCoordinate2DMake();
    v171 = sub_1C57105A4(v170);
    swift_unknownObjectRelease();
    if (v171 >> 62)
    {
      v172 = sub_1C584FB90();
    }

    else
    {
      v172 = *((v171 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v218 = v1;
    if (v172 < 1)
    {
      v178 = v2;
    }

    else
    {
      type metadata accessor for TransitIncidentsSectionView();
      v173 = sub_1C5640BEC(1);
      sub_1C571199C(v171);
      v174 = &v173[OBJC_IVAR____TtC6MapsUI27TransitIncidentsSectionView_feedbackDelegate];
      swift_beginAccess();
      *(v174 + 1) = &off_1F44C6E10;
      swift_unknownObjectWeakAssign();
      v175 = [objc_opt_self() insetPlatterSectionViewForContentView:v173 sectionHeaderViewModel:0 sectionFooterViewModel:0];
      v176 = sub_1C584F630();
      [v175 setAccessibilityIdentifier_];

      v177 = v175;
      MEMORY[0x1C6949DF0]();
      if (*((v233 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v233 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1C584F7A0();
      }

      v178 = v2;
      sub_1C584F7E0();
    }

    swift_unknownObjectRetain();
    GEOLocationCoordinate2DMake();
    sub_1C571088C(v180);
    swift_unknownObjectRelease();
    swift_unknownObjectRetain();
    GEOLocationCoordinate2DMake();
    sub_1C5710D28(v181);
    swift_unknownObjectRelease();
    v182 = sub_1C5720224(v5 > 1, v168 != 0);

    sub_1C571F630(v182);
    swift_unknownObjectRelease();
    v2 = v178;
    v1 = v218;
    if (!v168)
    {
LABEL_295:

      goto LABEL_296;
    }

LABEL_291:
    v179 = sub_1C571F720();
    sub_1C571F0E0(v167, v179);

    MEMORY[0x1C6949DF0]();
    if (*((v233 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v233 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
LABEL_300:
      sub_1C584F7A0();
    }

    sub_1C584F7E0();
LABEL_296:
    v162 = v233;
    v183 = OBJC_IVAR___MUTransitDeparturesSectionViewProvider_cachedViews;
    swift_beginAccess();
    *(v1 + v183) = v233;

    *(v1 + v2) = 0;
    return v162;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1C5721F70(void *a1, uint64_t a2)
{
  v3 = v2;
  v5 = a1[3];
  v6 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v5);
  v7 = (*(v6 + 48))(v5, v6);
  v8 = v7;
  if (v9)
  {
    type metadata accessor for TransitLineMarker();
    [*(*(v2 + OBJC_IVAR___MUTransitDeparturesSectionViewProvider_dataSource) + OBJC_IVAR___MUTransitDeparturesDataSource_mapItem) _coordinate];
    v12 = TransitLineMarker.__allocating_init(transitLine:locationHint:)(v8, v10, v11);
    if (v12)
    {
      v13 = v12;
      swift_beginAccess();
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        [Strong sectionViewProvider:v3 didSelect:v13 using:a2];
        swift_unknownObjectRelease();
      }
    }
  }

  else
  {
    sub_1C571F918(v7, a2);

    swift_unknownObjectRelease();
  }
}

void sub_1C57220B0()
{
  v1 = [*(*(v0 + OBJC_IVAR___MUTransitDeparturesSectionViewProvider_dataSource) + OBJC_IVAR___MUTransitDeparturesDataSource_dataProvider) incidents];
  if (v1)
  {
    v2 = v1;
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      [Strong sectionViewProvider:v0 didSelectIncidents:v2];

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }
}

unint64_t sub_1C57221B8()
{
  result = qword_1EC1707C8;
  if (!qword_1EC1707C8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EC1707C8);
  }

  return result;
}

unint64_t sub_1C5722204()
{
  result = qword_1EC1707D8;
  if (!qword_1EC1707D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC1707D0, &qword_1C5877F30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1707D8);
  }

  return result;
}

uint64_t sub_1C5722268(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1707E0, &qword_1C5877F38);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C57222D0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TransitDeparturesContainerViewModel(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C5722334(uint64_t a1)
{
  v2 = type metadata accessor for TransitDeparturesContainerViewModel(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t __GEOServerFormattedStringEqual_block_invokeTm(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v4 = a2 | a3;
  v5 = a2;
  v6 = a3;
  v7 = v5;
  v8 = v6;
  if (v4)
  {
    v9 = [v7 isEqual:v8];
  }

  else
  {
    v9 = 1;
  }

  return v9;
}

uint64_t __GEOServerFormattedStringEqual_block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = GEOServerFormatTokenEqual();

  return v6;
}

uint64_t type metadata accessor for TransitDeparturesContainerViewModel(uint64_t a1)
{
  result = qword_1EC18E350;
  if (!qword_1EC18E350)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C57224B4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC1702F0, &unk_1C5877650);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C5722524@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, char *a6@<X8>)
{
  *a6 = a1;
  *(a6 + 1) = a2;
  v10 = type metadata accessor for TransitDeparturesContainerViewModel(0);
  v11 = v10[6];
  v12 = sub_1C584EB30();
  (*(*(v12 - 8) + 32))(&a6[v11], a3, v12);
  a6[v10[7]] = a4;
  v13 = &a6[v10[8]];

  return sub_1C57225D4(a5, v13);
}

uint64_t sub_1C57225D4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC1702F0, &unk_1C5877650);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C5722644()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC1702F0, &unk_1C5877650);
  MEMORY[0x1EEE9AC00](v1 - 8, v2);
  v55 = &v46 - v3;
  v54 = type metadata accessor for TransitDeparturesRowViewModel(0);
  v5 = MEMORY[0x1EEE9AC00](v54, v4);
  v7 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v46 - v9;
  v57 = sub_1C584EB30();
  v11 = *(v57 - 8);
  v13 = MEMORY[0x1EEE9AC00](v57, v12);
  v53 = &v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v15);
  v47 = &v46 - v16;
  v56 = v0;
  v17 = *v0;
  result = [*v0 numberOfRows];
  if (result < 0)
  {
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
  }

  else
  {
    if (result)
    {
      v19 = 0;
      v46 = (v11 + 8);
      v48 = (v11 + 16);
      v59 = MEMORY[0x1E69E7CC0];
      v50 = v10;
      v51 = v7;
      v52 = result;
      v49 = v17;
      while (1)
      {
        result = [v17 sequenceForRow:v19 outIsNewLine:0 outNextLineIsSame:{0, v46}];
        if (!result)
        {
          goto LABEL_32;
        }

        v20 = result;
        v21 = [v17 departureCutoffDate];
        if (v21)
        {
          v22 = v47;
          v23 = v21;
          sub_1C584EB10();

          v24 = sub_1C584EB00();
          (*v46)(v22, v57);
        }

        else
        {
          v24 = 0;
        }

        v25 = [v20 departuresValidForDate_];

        if (v25)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC170860, &unk_1C5877F60);
          v26 = sub_1C584F770();

          if (!(v26 >> 62))
          {
            goto LABEL_10;
          }
        }

        else
        {
          v26 = MEMORY[0x1E69E7CC0];
          if (!(MEMORY[0x1E69E7CC0] >> 62))
          {
LABEL_10:
            result = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (!result)
            {
              goto LABEL_17;
            }

            goto LABEL_11;
          }
        }

        result = sub_1C584FB90();
        if (!result)
        {
LABEL_17:

          v27 = 0;
          goto LABEL_18;
        }

LABEL_11:
        if ((v26 & 0xC000000000000001) != 0)
        {
          v27 = MEMORY[0x1C694A320](0, v26);
        }

        else
        {
          if (!*((v26 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_31;
          }

          v27 = *(v26 + 32);
          swift_unknownObjectRetain();
        }

LABEL_18:
        v28 = [v17 showOperatingHours];
        v58 = v19;
        if (v28)
        {
          v29 = 0;
        }

        else
        {
          v29 = [v17 serviceGapDescriptionForRow_];
        }

        v30 = v56;
        v31 = v56[1];
        v32 = type metadata accessor for TransitDeparturesContainerViewModel(0);
        v33 = v53;
        (*v48)(v53, v30 + v32[6], v57);
        v34 = v31;
        swift_unknownObjectRetain();
        v35 = [v17 departuresAreVehicleSpecific];
        v36 = v55;
        sub_1C57224B4(v30 + v32[8], v55);
        LOBYTE(v31) = *(v30 + v32[7]);
        v37 = v29;
        swift_unknownObjectRetain();
        v38 = v50;
        sub_1C57474B4(v34, v33, v20, v35, v27, v36, v31, v29, v50);
        v39 = v51;
        sub_1C5722B94(v38, v51);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v59 = sub_1C5722F1C(0, v59[2] + 1, 1, v59);
        }

        v40 = v52;
        v41 = v58;
        v43 = v59[2];
        v42 = v59[3];
        v17 = v49;
        if (v43 >= v42 >> 1)
        {
          v59 = sub_1C5722F1C((v42 > 1), v43 + 1, 1, v59);
        }

        v19 = v41 + 1;
        swift_unknownObjectRelease();

        swift_unknownObjectRelease();
        sub_1C5723064(v38);
        v61 = v54;
        v62 = &off_1F44C7B48;
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v60);
        sub_1C5722B94(v39, boxed_opaque_existential_1);
        v45 = v59;
        v59[2] = v43 + 1;
        sub_1C56412D4(&v60, &v45[5 * v43 + 4]);
        sub_1C5723064(v39);
        if (v40 == v19)
        {
          return v59;
        }
      }
    }

    return MEMORY[0x1E69E7CC0];
  }

  return result;
}

uint64_t sub_1C5722B94(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TransitDeparturesRowViewModel(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

id sub_1C5722BF8()
{
  result = [*v0 sequences];
  if (result)
  {
    v2 = result;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC170868, &qword_1C5877F70);
    v3 = sub_1C584F770();

    if (v3 >> 62)
    {
      goto LABEL_21;
    }

    for (i = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1C584FB90())
    {
      v5 = 0;
      v6 = *(v0 + 8);
      while ((v3 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x1C694A320](v5, v3);
        v8 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          goto LABEL_19;
        }

LABEL_13:
        v9 = [v6 incidentsForDepartureSequence_];
        if (v9)
        {
          v10 = v9;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16DE00, &qword_1C5868570);
          v11 = sub_1C584F770();

          if (v11 >> 62)
          {
            v0 = sub_1C584FB90();
          }

          else
          {
            v0 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          swift_unknownObjectRelease();
          if (v0 > 0)
          {
            v12 = 1;
            goto LABEL_23;
          }
        }

        else
        {
          swift_unknownObjectRelease();
        }

        ++v5;
        if (v8 == i)
        {
          goto LABEL_22;
        }
      }

      if (v5 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_20;
      }

      v7 = *(v3 + 8 * v5 + 32);
      swift_unknownObjectRetain();
      v8 = v5 + 1;
      if (!__OFADD__(v5, 1))
      {
        goto LABEL_13;
      }

LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      ;
    }

LABEL_22:
    v12 = 0;
LABEL_23:

    return v12;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1C5722DD8()
{
  result = [*v0 sequenceForRow:0 outIsNewLine:0 outNextLineIsSame:0];
  if (result)
  {
    result = [result containerDisplayName];
    if (result)
    {
      v2 = result;
      v3 = sub_1C584F660();
      swift_unknownObjectRelease();

      return v3;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}