void sub_1A223213C()
{
  v1 = v0;
  *(v0 + OBJC_IVAR____TtC13MediaControls33MediaControlsModuleNowPlayingView_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v2 = OBJC_IVAR____TtC13MediaControls33MediaControlsModuleNowPlayingView_artworkControl;
  type metadata accessor for ArtworkControl(0, v3);
  *(v1 + v2) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v4 = OBJC_IVAR____TtC13MediaControls33MediaControlsModuleNowPlayingView_headerView;
  type metadata accessor for SessionHeaderView(0);
  *(v1 + v4) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v5 = OBJC_IVAR____TtC13MediaControls33MediaControlsModuleNowPlayingView_timeControlsView;
  type metadata accessor for NowPlayingTimeControlsView(0);
  *(v1 + v5) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v6 = OBJC_IVAR____TtC13MediaControls33MediaControlsModuleNowPlayingView_transportControlsView;
  type metadata accessor for NowPlayingTransportControlsView(0, v7);
  *(v1 + v6) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v8 = OBJC_IVAR____TtC13MediaControls33MediaControlsModuleNowPlayingView_volumeControlsView;
  type metadata accessor for NowPlayingVolumeControlsView(0);
  *(v1 + v8) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v9 = OBJC_IVAR____TtC13MediaControls33MediaControlsModuleNowPlayingView_upperRouteButton;
  type metadata accessor for MediaControlsModuleRouteButton(0, v10);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  *(v1 + v9) = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v12 = OBJC_IVAR____TtC13MediaControls33MediaControlsModuleNowPlayingView_lowerRouteButton;
  *(v1 + v12) = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v13 = OBJC_IVAR____TtC13MediaControls33MediaControlsModuleNowPlayingView_mediaSuggestionsView;
  type metadata accessor for MediaSuggestionsView(0, v14);
  *(v1 + v13) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v15 = OBJC_IVAR____TtC13MediaControls33MediaControlsModuleNowPlayingView_backdropView;
  type metadata accessor for BackdropView(0, v16);
  *(v1 + v15) = sub_1A22571F0(5.0);
  v17 = OBJC_IVAR____TtC13MediaControls33MediaControlsModuleNowPlayingView_viewModel;
  v18 = type metadata accessor for MediaControlsModuleSessionPresenter.ViewModel(0);
  (*(*(v18 - 8) + 56))(v1 + v17, 1, 1, v18);
  *(v1 + OBJC_IVAR____TtC13MediaControls33MediaControlsModuleNowPlayingView_artworkImage) = 0;
  v19 = (v1 + OBJC_IVAR____TtC13MediaControls33MediaControlsModuleNowPlayingView_sessionInteractor);
  *v19 = 0;
  v19[1] = 0;
  *(v1 + OBJC_IVAR____TtC13MediaControls33MediaControlsModuleNowPlayingView_moduleLayout) = 1;
  *(v1 + OBJC_IVAR____TtC13MediaControls33MediaControlsModuleNowPlayingView_layout) = 1;
  *(v1 + OBJC_IVAR____TtC13MediaControls33MediaControlsModuleNowPlayingView_visualStylingProvider) = 0;
  *(v1 + OBJC_IVAR____TtC13MediaControls33MediaControlsModuleNowPlayingView_contentMetrics) = 0;
  *(v1 + OBJC_IVAR____TtC13MediaControls33MediaControlsModuleNowPlayingView_onScreen) = 0;
  *(v1 + OBJC_IVAR____TtC13MediaControls33MediaControlsModuleNowPlayingView_isResizing) = 0;
  sub_1A22E7028();
  __break(1u);
}

void sub_1A22323AC(float a1)
{
  v93 = sub_1A22E5738();
  v89 = *(v93 - 8);
  v2 = MEMORY[0x1EEE9AC00](v93);
  v79 = &v79 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v2);
  v80 = &v79 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB088BE8, &qword_1A230AB90);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v88 = &v79 - v6;
  v7 = sub_1A22E5D98();
  v83 = *(v7 - 8);
  v8 = MEMORY[0x1EEE9AC00](v7);
  v10 = &v79 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v79 - v11;
  v13 = type metadata accessor for RoutePickerItemView.ViewModel(0);
  v90 = *(v13 - 8);
  v14 = MEMORY[0x1EEE9AC00](v13);
  v16 = &v79 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v14);
  v19 = &v79 - v18;
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v79 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB088820, &qword_1A2309FF0);
  v23 = MEMORY[0x1EEE9AC00](v22 - 8);
  v25 = &v79 - v24;
  (*((*MEMORY[0x1E69E7D40] & *v1) + 0x100))(v23);
  v26 = type metadata accessor for MediaControlsModuleSessionPresenter.ViewModel(0);
  if ((*(*(v26 - 8) + 48))(v25, 1, v26) || (v81 = v16, v82 = v19, v87 = v13, v85 = v12, v91 = v7, v92 = v10, v27 = &v25[*(v26 + 40)], (v28 = *v27) == 0))
  {
    sub_1A210D9B0(v25, &qword_1EB088820, &qword_1A2309FF0);
  }

  else
  {
    v86 = v1;
    v29 = v27[1];

    sub_1A210D9B0(v25, &qword_1EB088820, &qword_1A2309FF0);
    sub_1A22D46C4(v28, v29);
    v30 = v28;

    v31 = MEMORY[0x1E69E7CC0];
    v84 = *(v28 + 16);
    if (v84)
    {
      v32 = 0;
      v33 = v88;
      v34 = v90;
      v35 = v81;
      while (v32 < *(v30 + 16))
      {
        v37 = (*(v34 + 80) + 32) & ~*(v34 + 80);
        v38 = v34[9];
        sub_1A2232EDC(v30 + v37 + v38 * v32, v21, type metadata accessor for RoutePickerItemView.ViewModel);
        if (sub_1A226C080())
        {
          sub_1A2129A30(v21, v35, type metadata accessor for RoutePickerItemView.ViewModel);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v94 = v31;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_1A2129B8C(0, *(v31 + 16) + 1, 1);
            v31 = v94;
          }

          v41 = *(v31 + 16);
          v40 = *(v31 + 24);
          if (v41 >= v40 >> 1)
          {
            sub_1A2129B8C((v40 > 1), v41 + 1, 1);
            v31 = v94;
          }

          *(v31 + 16) = v41 + 1;
          sub_1A2129A30(v35, v31 + v37 + v41 * v38, type metadata accessor for RoutePickerItemView.ViewModel);
          v33 = v88;
        }

        else
        {
          sub_1A2232F64(v21, type metadata accessor for RoutePickerItemView.ViewModel);
        }

        ++v32;
        v34 = v90;
        v36 = v87;
        if (v84 == v32)
        {
          goto LABEL_16;
        }
      }

      __break(1u);
    }

    else
    {
      v36 = v87;
      v33 = v88;
      v34 = v90;
LABEL_16:

      v42 = *(v31 + 16);
      if (v42)
      {
        v43 = *(v36 + 44);
        v44 = v31 + ((*(v34 + 80) + 32) & ~*(v34 + 80));
        v87 = v34[9];
        v45 = v82;
        v46 = (v83 + 48);
        v84 = (v83 + 32);
        v90 = MEMORY[0x1E69E7CC0];
        v81 = v43;
        v47 = v91;
        do
        {
          sub_1A2232EDC(v44, v45, type metadata accessor for RoutePickerItemView.ViewModel);
          sub_1A2214CF8(&v43[v45], v33, &qword_1EB088BE8, &qword_1A230AB90);
          sub_1A2232F64(v45, type metadata accessor for RoutePickerItemView.ViewModel);
          if ((*v46)(v33, 1, v47) == 1)
          {
            sub_1A210D9B0(v33, &qword_1EB088BE8, &qword_1A230AB90);
          }

          else
          {
            v48 = *v84;
            (*v84)(v85, v33, v47);
            v49 = v90;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v49 = sub_1A2231D44(0, v49[2] + 1, 1, v49);
            }

            v51 = v49[2];
            v50 = v49[3];
            v90 = v49;
            if (v51 >= v50 >> 1)
            {
              v90 = sub_1A2231D44((v50 > 1), v51 + 1, 1, v90);
            }

            v52 = v90;
            v90[2] = v51 + 1;
            v48(&v52[((*(v83 + 80) + 32) & ~*(v83 + 80)) + *(v83 + 72) * v51]);
            v33 = v88;
            v43 = v81;
            v45 = v82;
          }

          v44 += v87;
          --v42;
        }

        while (v42);

        v53 = v90;
      }

      else
      {

        v53 = MEMORY[0x1E69E7CC0];
      }

      v54 = v53[2];
      if (v54)
      {
        v94 = MEMORY[0x1E69E7CC0];
        sub_1A2231F1C(0, v54, 0);
        v55 = v94;
        v56 = v83 + 16;
        v57 = *(v83 + 16);
        v58 = *(v83 + 80);
        v90 = v53;
        v59 = v53 + ((v58 + 32) & ~v58);
        v87 = *(v83 + 72);
        v88 = v57;
        v60 = (v83 + 8);
        v61 = v79;
        v62 = v92;
        do
        {
          v63 = v91;
          v64 = v56;
          (v88)(v62, v59, v91);
          sub_1A22E5D88();
          v62 = v92;
          (*v60)(v92, v63);
          v94 = v55;
          v66 = *(v55 + 16);
          v65 = *(v55 + 24);
          if (v66 >= v65 >> 1)
          {
            sub_1A2231F1C((v65 > 1), v66 + 1, 1);
            v62 = v92;
            v55 = v94;
          }

          *(v55 + 16) = v66 + 1;
          (*(v89 + 32))(v55 + ((*(v89 + 80) + 32) & ~*(v89 + 80)) + *(v89 + 72) * v66, v61, v93);
          v59 += v87;
          --v54;
          v56 = v64;
        }

        while (v54);
      }

      else
      {

        v55 = MEMORY[0x1E69E7CC0];
      }

      v67 = *(v55 + 16);
      v68 = v80;
      if (v67)
      {
        v69 = *((*MEMORY[0x1E69E7D40] & *v86) + 0x130);
        v91 = (*MEMORY[0x1E69E7D40] & *v86) + 304;
        v92 = v69;
        v70 = *(v89 + 16);
        v71 = v55 + ((*(v89 + 80) + 32) & ~*(v89 + 80));
        v72 = *(v89 + 72);
        v73 = (v89 + 8);
        for (i = v70(v80, v71, v93); ; i = v70(v68, v71, v75))
        {
          if (v92(i))
          {
            v77 = v76;
            ObjectType = swift_getObjectType();
            (*(v77 + 16))(v68, ObjectType, v77);
            swift_unknownObjectRelease();
          }

          v75 = v93;
          (*v73)(v68, v93);
          v71 += v72;
          if (!--v67)
          {
            break;
          }
        }
      }
    }
  }
}

void sub_1A2232D4C(uint64_t a1)
{
  sub_1A2232E38(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1A2232E38(uint64_t a1)
{
  if (!qword_1ED9501E8[0])
  {
    type metadata accessor for MediaControlsModuleSessionPresenter.ViewModel(255);
    v1 = sub_1A22E6D68();
    if (!v2)
    {
      atomic_store(v1, qword_1ED9501E8);
    }
  }
}

uint64_t sub_1A2232EDC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A2232F64(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1A2232FCC()
{
  sub_1A2115288(0, &qword_1ED94E930, 0x1E69E9BF8);
  result = sub_1A22E6D48();
  qword_1EB0913D0 = result;
  return result;
}

uint64_t *sub_1A2233030()
{
  if (qword_1EB08B8E0 != -1)
  {
    swift_once();
  }

  return &qword_1EB0913D0;
}

id sub_1A2233080()
{
  if (qword_1EB08B8E0 != -1)
  {
    swift_once();
  }

  v0 = qword_1EB0913D0;

  return v0;
}

uint64_t sub_1A22330F8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1A22E6468();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1A22E6488();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = aBlock - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A2115288(0, &qword_1ED94EA48, 0x1E69E9610);
  v12 = sub_1A22E6B28();
  v13 = swift_allocObject();
  *(v13 + 24) = 0;
  *(v13 + 32) = 0;
  *(v13 + 16) = 501;
  *(v13 + 40) = 1;
  *(v13 + 48) = a1;
  *(v13 + 56) = a2;
  aBlock[4] = sub_1A2233610;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1A210E3F0;
  aBlock[3] = &block_descriptor_2;
  v14 = _Block_copy(aBlock);
  sub_1A22339D4(0x1F5, 0, 0, 1);

  sub_1A22E6478();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1A2233A34();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB088C08, &unk_1A230FC00);
  sub_1A210B498();
  sub_1A22E6DA8();
  MEMORY[0x1A58DAD70](0, v11, v7, v14);
  _Block_release(v14);

  (*(v5 + 8))(v7, v4);
  return (*(v9 + 8))(v11, v8);
}

void sub_1A2233430(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = sub_1A22E54D8();
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  (*(a3 + 16))(a3, a1);
}

id ProductKitWrapper.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ProductKitWrapper.init()()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_init);
}

id ProductKitWrapper.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1A22335B0(void *a1, uint64_t a2, void *a3, char a4)
{
  if (a4 == 2)
  {
  }

  else
  {
    if (a4)
    {
      return;
    }

    a1 = a3;
  }
}

void sub_1A2233610()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 48);
  if (*(v0 + 40))
  {
    if (*(v0 + 40) != 1)
    {
      v2(0, v1);
      return;
    }

    v3 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
    v4 = sub_1A22E6598();
    v20 = [v3 initWithDomain:v4 code:v1 userInfo:0];

    v2(0, v20);
  }

  else
  {
    v6 = *(v0 + 24);
    v5 = *(v0 + 32);

    v7 = v5;
    v8 = sub_1A22E6598();
    v9 = [objc_opt_self() imageNamed:v8 inBundle:v7 compatibleWithTraitCollection:0];

    if (v9)
    {

      v10 = sub_1A22E6A98();
      if (qword_1EB08B8E0 != -1)
      {
        swift_once();
      }

      v11 = qword_1EB0913D0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB088C10, qword_1A230A190);
      v12 = swift_allocObject();
      *(v12 + 16) = xmmword_1A2308E80;
      *(v12 + 56) = sub_1A2115288(0, &qword_1ED94E960, 0x1E69DCAB8);
      *(v12 + 64) = sub_1A2233AE0(&qword_1EB088C28, &qword_1ED94E960, 0x1E69DCAB8);
      *(v12 + 32) = v9;
      v13 = v9;
      sub_1A22E6228(v10, &dword_1A20FC000, v11, "[MRPKW] got image: %@", 21, 2, v12);

      v20 = v13;
      v2(v9, 0);
    }

    else
    {
      v14 = sub_1A22E6A98();
      if (qword_1EB08B8E0 != -1)
      {
        swift_once();
      }

      v15 = qword_1EB0913D0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB088C10, qword_1A230A190);
      v16 = swift_allocObject();
      *(v16 + 16) = xmmword_1A230A140;
      *(v16 + 56) = MEMORY[0x1E69E6158];
      *(v16 + 64) = sub_1A2233A8C();
      *(v16 + 32) = v1;
      *(v16 + 40) = v6;
      *(v16 + 96) = sub_1A2115288(0, &qword_1EB088C18, 0x1E696AAE8);
      *(v16 + 104) = sub_1A2233AE0(&qword_1EB088C20, &qword_1EB088C18, 0x1E696AAE8);
      *(v16 + 72) = v7;
      v17 = v7;
      sub_1A22E6228(v14, &dword_1A20FC000, v15, "[MRPKW] failed to get image; fileName: %@, bundle: %@", 53, 2, v16);

      v18 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
      v19 = sub_1A22E6598();
      v20 = [v18 initWithDomain:v19 code:503 userInfo:0];

      v2(0, v20);
    }
  }
}

id sub_1A22339D4(id result, uint64_t a2, void *a3, char a4)
{
  if (a4 == 2)
  {
  }

  else
  {
    if (a4)
    {
      return result;
    }

    result = a3;
  }

  return result;
}

unint64_t sub_1A2233A34()
{
  result = qword_1ED94EB28;
  if (!qword_1ED94EB28)
  {
    sub_1A22E6468();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED94EB28);
  }

  return result;
}

unint64_t sub_1A2233A8C()
{
  result = qword_1ED94EB18;
  if (!qword_1ED94EB18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED94EB18);
  }

  return result;
}

uint64_t sub_1A2233AE0(unint64_t *a1, unint64_t *a2, void *a3)
{
  result = *a1;
  if (!result)
  {
    sub_1A2115288(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1A2233B98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1 == a5 && a2 == a6 || (v12 = sub_1A22E71E8(), result = 0, (v12 & 1) != 0))
  {
    if (a3 == a7 && a4 == a8)
    {
      return 1;
    }

    else
    {

      return sub_1A22E71E8();
    }
  }

  return result;
}

uint64_t sub_1A2233C40(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (v7 = sub_1A22E71E8(), result = 0, (v7 & 1) != 0))
  {
    if (v2 == v4 && v3 == v5)
    {
      return 1;
    }

    else
    {

      return sub_1A22E71E8();
    }
  }

  return result;
}

uint64_t sub_1A2233E18(char a1)
{
  result = type metadata accessor for RoutePickerSnapshot(0);
  *(v1 + *(result + 24)) = a1;
  return result;
}

uint64_t sub_1A2233E90()
{
  v1 = (v0 + *(type metadata accessor for RoutePickerSnapshot(0) + 28));
  v2 = *v1;
  sub_1A2214638(*v1, v1[1], v1[2], v1[3]);
  return v2;
}

void sub_1A2233EF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = (v4 + *(type metadata accessor for RoutePickerSnapshot(0) + 28));
  sub_1A221467C(*v9, v9[1], v9[2], v9[3]);
  *v9 = a1;
  v9[1] = a2;
  v9[2] = a3;
  v9[3] = a4;
}

uint64_t sub_1A2233F9C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1A22E5C88();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v24 - v9;
  v11 = *(a1 + 16);
  if (v11 != *(a2 + 16))
  {
    v21 = 0;
    return v21 & 1;
  }

  if (!v11 || a1 == a2)
  {
    v21 = 1;
    return v21 & 1;
  }

  v12 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v13 = a1 + v12;
  v14 = a2 + v12;
  v16 = *(v5 + 16);
  v15 = v5 + 16;
  v17 = (v15 - 8);
  v24 = *(v15 + 56);
  v25 = v16;
  while (1)
  {
    v18 = v25;
    result = (v25)(v10, v13, v4);
    if (!v11)
    {
      break;
    }

    v20 = v15;
    v18(v8, v14, v4);
    sub_1A223C7E4(&qword_1ED950740, MEMORY[0x1E69AE600], MEMORY[0x1E69AE610]);
    v21 = sub_1A22E6568();
    v22 = *v17;
    (*v17)(v8, v4);
    v22(v10, v4);
    if (v21)
    {
      v14 += v24;
      v13 += v24;
      v23 = v11-- == 1;
      v15 = v20;
      if (!v23)
      {
        continue;
      }
    }

    return v21 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_1A22341B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, void *a8@<X8>)
{
  *a8 = a1;
  v15 = type metadata accessor for RoutePickerSnapshot(0);
  result = sub_1A223A01C(a2, a8 + v15[5]);
  *(a8 + v15[6]) = a3;
  v17 = (a8 + v15[7]);
  *v17 = a4;
  v17[1] = a5;
  v17[2] = a6;
  v17[3] = a7;
  return result;
}

uint64_t sub_1A223423C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char *a7@<X8>)
{
  v24 = a5;
  v25 = a6;
  v9 = a2;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB088C30, &qword_1A230A1B0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v24 - v13;
  v15 = type metadata accessor for RoutePickerSnapshot(0);
  v16 = v15[5];
  v17 = sub_1A22E5C88();
  (*(*(v17 - 8) + 56))(&a7[v16], 1, 1, v17);
  *a7 = sub_1A22E1270(v9);
  sub_1A22E6038();
  sub_1A212E4EC(v14, &a7[v16], &qword_1EB088C30, &qword_1A230A1B0);
  if (v9)
  {
    v18 = *(sub_1A22E6068() + 16);

    v19 = v18 != 0;
  }

  else
  {
    v19 = 0;
  }

  v20 = &a7[v15[7]];
  v21 = sub_1A22E6088();
  result = (*(*(v21 - 8) + 8))(a1, v21);
  a7[v15[6]] = v19;
  *v20 = a3;
  *(v20 + 1) = a4;
  v23 = v25;
  *(v20 + 2) = v24;
  *(v20 + 3) = v23;
  return result;
}

double sub_1A22343D8@<D0>(char *a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB088C30, &qword_1A230A1B0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v16 - v3;
  v5 = sub_1A22E6088();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A22E6048();
  v9 = type metadata accessor for RoutePickerSnapshot(0);
  v10 = v9[5];
  v11 = sub_1A22E5C88();
  (*(*(v11 - 8) + 56))(&a1[v10], 1, 1, v11);
  v12 = &a1[v9[7]];
  *a1 = sub_1A22E1270(1);
  sub_1A22E6038();
  sub_1A212E4EC(v4, &a1[v10], &qword_1EB088C30, &qword_1A230A1B0);
  v13 = sub_1A22E6068();
  (*(v6 + 8))(v8, v5);
  v14 = *(v13 + 16);

  a1[v9[6]] = v14 != 0;
  result = 0.0;
  *v12 = 0u;
  *(v12 + 1) = 0u;
  return result;
}

uint64_t sub_1A22345B8@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1A22E58F8();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_1A2234620(uint64_t a1)
{
  v3 = sub_1A22E58F8();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t sub_1A2234688()
{
  type metadata accessor for SessionsController.State(0);
}

void sub_1A22346BC(uint64_t a1)
{
  v3 = *(type metadata accessor for SessionsController.State(0) + 20);

  *(v1 + v3) = a1;
}

uint64_t sub_1A2234748()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB088C88, &qword_1A230A420);
  v4 = 1;
  v1 = sub_1A2249D0C(MEMORY[0x1E69E6370], v0);
  v2 = sub_1A211A6BC();
  result = sub_1A2249D84(0xD000000000000016, 0x80000001A2303C30, &v4, v1, v2 & 1);
  qword_1ED951C38 = result;
  return result;
}

uint64_t sub_1A2234804(char a1)
{
  result = type metadata accessor for SessionsController.State(0);
  *(v1 + *(result + 24)) = a1;
  return result;
}

uint64_t sub_1A223487C(uint64_t a1, uint64_t a2)
{
  if (sub_1A22E58E8() & 1) != 0 && (v4 = type metadata accessor for SessionsController.State(0), (sub_1A2112E98(*(a1 + *(v4 + 20)), *(a2 + *(v4 + 20)))))
  {
    v5 = *(a1 + *(v4 + 24)) ^ *(a2 + *(v4 + 24)) ^ 1;
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

uint64_t sub_1A22348F4@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x1E69AE580];
  v3 = sub_1A22E58F8();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_1A2234968()
{
  if (qword_1ED951C30 != -1)
  {
    swift_once();
  }

  v0 = *(*qword_1ED951C38 + 160);

  v0(&v3, v1);

  return v3;
}

uint64_t sub_1A2234A08@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v8 = sub_1A22E58F8();
  (*(*(v8 - 8) + 32))(a4, a1, v8);
  result = type metadata accessor for SessionsController.State(0);
  *(a4 + *(result + 20)) = a2;
  *(a4 + *(result + 24)) = a3;
  return result;
}

uint64_t sub_1A2234A90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (sub_1A22E58E8() & 1) != 0 && (sub_1A2112E98(*(a1 + *(a3 + 20)), *(a2 + *(a3 + 20))))
  {
    v6 = *(a1 + *(a3 + 24)) ^ *(a2 + *(a3 + 24)) ^ 1;
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

uint64_t sub_1A2234BD0()
{
  v1 = v0 + OBJC_IVAR____TtC13MediaControls18SessionsController_state;
  swift_beginAccess();
  return *(v1 + *(type metadata accessor for SessionsController.State(0) + 24));
}

uint64_t sub_1A2234C24(char a1)
{
  v3 = type metadata accessor for SessionsController.State(0);
  v4 = v3 - 8;
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = OBJC_IVAR____TtC13MediaControls18SessionsController_state;
  swift_beginAccess();
  sub_1A223CD60(v1 + v7, v6, type metadata accessor for SessionsController.State);
  v6[*(v4 + 32)] = a1;
  return sub_1A223526C(v6);
}

void (*sub_1A2234CF0(uint64_t *a1))(uint64_t a1)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
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
  v6 = type metadata accessor for SessionsController.State(0);
  *(v5 + 32) = v6;
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(*(*(v6 - 8) + 64));
  }

  v8 = OBJC_IVAR____TtC13MediaControls18SessionsController_state;
  *(v5 + 40) = v7;
  *(v5 + 48) = v8;
  v9 = v1 + v8;
  swift_beginAccess();
  *(v5 + 56) = *(v9 + *(v6 + 24));
  return sub_1A2234DD4;
}

void sub_1A2234DD4(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 40);
  v3 = *(*a1 + 32);
  v4 = *(*a1 + 56);
  sub_1A223CD60(*(*a1 + 24) + *(*a1 + 48), v2, type metadata accessor for SessionsController.State);
  v2[*(v3 + 24)] = v4;
  sub_1A223526C(v2);
  free(v2);

  free(v1);
}

void sub_1A2234E5C(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x1E69AE580];
  v3 = sub_1A22E58F8();
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for SessionsController.State(0);
  *(a1 + *(v4 + 20)) = MEMORY[0x1E69E7CD0];
  v5 = *(v4 + 24);
  if (qword_1ED951C30 != -1)
  {
    swift_once();
  }

  v6 = *(*qword_1ED951C38 + 160);

  v6(&v8, v7);

  *(a1 + v5) = v8;
}

void sub_1A2234F70(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1A22E58F8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = v2 + OBJC_IVAR____TtC13MediaControls18SessionsController_state;
  swift_beginAccess();
  (*(v5 + 16))(v7, v8, v4);
  sub_1A223C7E4(&qword_1ED950770, MEMORY[0x1E69AE588], MEMORY[0x1E69AE590]);
  v9 = sub_1A22E6568();
  (*(v5 + 8))(v7, v4);
  if ((v9 & 1) == 0)
  {
    sub_1A2237414();
  }

  v10 = type metadata accessor for SessionsController.State(0);
  v11 = *(a1 + *(v10 + 20));

  LOBYTE(v11) = sub_1A2112E98(v12, v11);

  if (v11)
  {
LABEL_15:
    if (*(v8 + *(v10 + 24)) != *(a1 + *(v10 + 24)))
    {
      sub_1A223767C(0, 0, 0, 0);
    }
  }

  else
  {
    v27 = v10;
    v25 = a1;
    v13 = OBJC_IVAR____TtC13MediaControls18SessionsController_controllers;
    swift_beginAccess();
    v26 = v2;
    v14 = *(v2 + v13);
    v15 = 1 << *(v14 + 32);
    v16 = -1;
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    v17 = v16 & *(v14 + 64);
    v18 = (v15 + 63) >> 6;
    swift_bridgeObjectRetain_n();
    v19 = 0;
    while (v17)
    {
      v20 = v19;
LABEL_12:
      v21 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
      v22 = *(**(*(v14 + 56) + ((v20 << 9) | (8 * v21))) + 136);

      v22(v23);
    }

    while (1)
    {
      v20 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v20 >= v18)
      {

        a1 = v25;
        v10 = v27;
        goto LABEL_15;
      }

      v17 = *(v14 + 64 + 8 * v20);
      ++v19;
      if (v17)
      {
        v19 = v20;
        goto LABEL_12;
      }
    }

    __break(1u);
  }
}

uint64_t sub_1A223526C(_BYTE *a1)
{
  v3 = type metadata accessor for SessionsController.State(0);
  v4 = MEMORY[0x1EEE9AC00](v3);
  v6 = &v11[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v11[-v7];
  v9 = OBJC_IVAR____TtC13MediaControls18SessionsController_state;
  swift_beginAccess();
  sub_1A223CD60(v1 + v9, v8, type metadata accessor for SessionsController.State);
  swift_beginAccess();
  sub_1A223CE9C(a1, v1 + v9);
  swift_endAccess();
  sub_1A223CD60(v1 + v9, v6, type metadata accessor for SessionsController.State);
  if ((sub_1A22E58E8() & 1) != 0 && (sub_1A2112E98(*&v6[*(v3 + 20)], *&v8[*(v3 + 20)]) & 1) != 0 && v6[*(v3 + 24)] == v8[*(v3 + 24)])
  {
    sub_1A223CE3C(a1, type metadata accessor for SessionsController.State);
    a1 = v6;
  }

  else
  {
    sub_1A223CE3C(v6, type metadata accessor for SessionsController.State);
    sub_1A2234F70(v8);
  }

  sub_1A223CE3C(a1, type metadata accessor for SessionsController.State);
  return sub_1A223CE3C(v8, type metadata accessor for SessionsController.State);
}

uint64_t sub_1A2235454@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v3 = a1(0);
  v4 = *(*(v3 - 8) + 56);

  return v4(a2, 1, 1, v3);
}

uint64_t sub_1A22354C8(uint64_t a1)
{
  v20 = a1;
  v2 = type metadata accessor for RoutePickerSnapshot(0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = (&v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB088C40, &qword_1A230A1C0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = (&v18 - v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB088C78, &qword_1A230A410);
  v10 = v9 - 8;
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v18 - v11;
  v13 = OBJC_IVAR____TtC13MediaControls18SessionsController_snapshot;
  swift_beginAccess();
  v14 = *(v10 + 56);
  v19 = v1;
  sub_1A2214CF8(v1 + v13, v12, &qword_1EB088C40, &qword_1A230A1C0);
  sub_1A2214CF8(v20, &v12[v14], &qword_1EB088C40, &qword_1A230A1C0);
  v15 = *(v3 + 48);
  if (v15(v12, 1, v2) == 1)
  {
    if (v15(&v12[v14], 1, v2) == 1)
    {
      return sub_1A210D9B0(v12, &qword_1EB088C40, &qword_1A230A1C0);
    }

    goto LABEL_6;
  }

  sub_1A2214CF8(v12, v8, &qword_1EB088C40, &qword_1A230A1C0);
  if (v15(&v12[v14], 1, v2) == 1)
  {
    sub_1A223CE3C(v8, type metadata accessor for RoutePickerSnapshot);
LABEL_6:
    sub_1A210D9B0(v12, &qword_1EB088C78, &qword_1A230A410);
    return sub_1A2109F28();
  }

  sub_1A223CCFC(&v12[v14], v5);
  v17 = sub_1A2239AE0(v8, v5);
  sub_1A223CE3C(v5, type metadata accessor for RoutePickerSnapshot);
  sub_1A223CE3C(v8, type metadata accessor for RoutePickerSnapshot);
  result = sub_1A210D9B0(v12, &qword_1EB088C40, &qword_1A230A1C0);
  if (!v17)
  {
    return sub_1A2109F28();
  }

  return result;
}

uint64_t sub_1A22357B8@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC13MediaControls18SessionsController_snapshot;
  swift_beginAccess();
  return sub_1A2214CF8(v1 + v3, a1, &qword_1EB088C40, &qword_1A230A1C0);
}

uint64_t sub_1A2235820(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB088C40, &qword_1A230A1C0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v8[-v4];
  v6 = OBJC_IVAR____TtC13MediaControls18SessionsController_snapshot;
  swift_beginAccess();
  sub_1A2214CF8(v1 + v6, v5, &qword_1EB088C40, &qword_1A230A1C0);
  swift_beginAccess();
  sub_1A223A1B0(a1, v1 + v6);
  swift_endAccess();
  sub_1A22354C8(v5);
  sub_1A210D9B0(a1, &qword_1EB088C40, &qword_1A230A1C0);
  return sub_1A210D9B0(v5, &qword_1EB088C40, &qword_1A230A1C0);
}

uint64_t sub_1A223592C@<X0>(uint64_t *a1@<X8>, uint64_t a2@<X1>)
{
  v3 = type metadata accessor for DefaultRoutingSessionsControllerFactory(0, a2);
  result = sub_1A226B134();
  a1[3] = v3;
  a1[4] = &off_1F143FC68;
  *a1 = result;
  return result;
}

uint64_t sub_1A223596C(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = a3;
  v6 = swift_allocObject();
  sub_1A22359C4(a1, a2, v3);
  return v6;
}

uint64_t sub_1A22359C4(uint64_t a1, void *a2, int a3)
{
  v4 = v3;
  LODWORD(v59) = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB088C30, &qword_1A230A1B0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v56 = &v51 - v8;
  v9 = sub_1A22E6088();
  v57 = *(v9 - 8);
  v58 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v55 = &v51 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB088C40, &qword_1A230A1C0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = (&v51 - v12);
  v14 = (v3 + OBJC_IVAR____TtC13MediaControls18SessionsController_routingSessionsController);
  *v14 = 0;
  v14[1] = 0;
  v15 = OBJC_IVAR____TtC13MediaControls18SessionsController_controllers;
  *(v4 + v15) = sub_1A223A0AC(MEMORY[0x1E69E7CC0]);
  v16 = OBJC_IVAR____TtC13MediaControls18SessionsController_hardwareVolumeController;
  type metadata accessor for HardwareVolumeController(0);
  *(v4 + v16) = sub_1A223DF90();
  v17 = OBJC_IVAR____TtC13MediaControls18SessionsController__observers;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB088C38, &qword_1A230A1B8);
  *(v4 + v17) = sub_1A22CE154();
  v18 = OBJC_IVAR____TtC13MediaControls18SessionsController__interactor;
  type metadata accessor for SessionsInteractorImpl(0, v19);
  *(v4 + v18) = sub_1A229813C();
  v20 = v4 + OBJC_IVAR____TtC13MediaControls18SessionsController_state;
  v21 = *MEMORY[0x1E69AE580];
  v22 = sub_1A22E58F8();
  (*(*(v22 - 8) + 104))(v20, v21, v22);
  v23 = type metadata accessor for SessionsController.State(0);
  *(v20 + *(v23 + 20)) = MEMORY[0x1E69E7CD0];
  v24 = *(v23 + 24);
  if (qword_1ED951C30 != -1)
  {
    swift_once();
  }

  v25 = *(*qword_1ED951C38 + 160);

  v25(v60, v26);

  *(v20 + v24) = v60[0];
  v27 = OBJC_IVAR____TtC13MediaControls18SessionsController_snapshot;
  v28 = type metadata accessor for RoutePickerSnapshot(0);
  v29 = *(v28 - 1);
  v30 = *(v29 + 56);
  v54 = v29 + 56;
  v30(v4 + v27, 1, 1, v28);
  v31 = (v4 + OBJC_IVAR____TtC13MediaControls18SessionsController_pendingTransition);
  *v31 = 0u;
  v31[1] = 0u;
  v32 = OBJC_IVAR____TtC13MediaControls18SessionsController_configuration;
  v33 = sub_1A22E6158();
  v34 = *(v33 - 8);
  (*(v34 + 16))(v4 + v32, a1, v33);
  v35 = sub_1A223A220(a2, v4 + OBJC_IVAR____TtC13MediaControls18SessionsController_routingSessionsControllerFactory);
  if (v59)
  {
    v36 = v55;
    sub_1A22E6048();
    v59 = a1;
    v37 = v28[5];
    v38 = sub_1A22E5C88();
    (*(*(v38 - 8) + 56))(v13 + v37, 1, 1, v38);
    v39 = v28[7];
    v53 = a2;
    v40 = (v13 + v39);
    *v13 = sub_1A22E1270(1);
    v52 = v30;
    v41 = v56;
    sub_1A22E6038();
    sub_1A212E4EC(v41, v13 + v37, &qword_1EB088C30, &qword_1A230A1B0);
    v42 = sub_1A22E6068();
    (*(v57 + 8))(v36, v58);
    v43 = *(v42 + 16);

    v44 = v43 == 0;
    a1 = v59;
    v45 = !v44;
    *(v13 + v28[6]) = v45;
    *v40 = 0u;
    v40[1] = 0u;
    a2 = v53;
    v52(v13, 0, 1, v28);
    v46 = OBJC_IVAR____TtC13MediaControls18SessionsController_snapshot;
    swift_beginAccess();
    sub_1A212E4EC(v13, v4 + v46, &qword_1EB088C40, &qword_1A230A1C0);
    v35 = swift_endAccess();
  }

  v47 = *(v4 + OBJC_IVAR____TtC13MediaControls18SessionsController_hardwareVolumeController);
  v48 = (*(*v4 + 232))(v35);
  (*(*v47 + 224))(v48, *(v49 + 8));
  __swift_destroy_boxed_opaque_existential_0(a2);
  (*(v34 + 8))(a1, v33);
  return v4;
}

double sub_1A2235F44(uint64_t a1, uint64_t a2)
{
  v5 = OBJC_IVAR____TtC13MediaControls18SessionsController__observers;
  v6 = *(**(v2 + OBJC_IVAR____TtC13MediaControls18SessionsController__observers) + 120);

  v8 = v6(v7);

  v9 = *(v8 + 16) + 1;
  v10 = 32;
  while (--v9)
  {
    v11 = *(v8 + v10);
    v10 += 16;
    if (v11 == a1)
    {

      return result;
    }
  }

  v13 = *(**(v2 + v5) + 136);

  v14 = v13(v22);
  v16 = v15;
  v17 = *v15;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v16 = v17;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v17 = sub_1A2238DA0(0, v17[2] + 1, 1, v17);
    *v16 = v17;
  }

  v20 = v17[2];
  v19 = v17[3];
  if (v20 >= v19 >> 1)
  {
    v17 = sub_1A2238DA0((v19 > 1), v20 + 1, 1, v17);
    *v16 = v17;
  }

  v17[2] = v20 + 1;
  v21 = &v17[2 * v20];
  v21[4] = a1;
  v21[5] = a2;
  swift_unknownObjectRetain();
  v14(v22, 0);

  return result;
}

void sub_1A2236108(uint64_t a1, uint64_t a2)
{
  v4 = *(**(v2 + OBJC_IVAR____TtC13MediaControls18SessionsController__observers) + 136);
  swift_unknownObjectRetain();

  v5 = v4(v10);
  v7 = v6;
  v8 = sub_1A223A284(v6, a1);
  swift_unknownObjectRelease();
  v9 = *(*v7 + 16);
  if (v9 < v8)
  {
    __break(1u);
  }

  else
  {
    sub_1A223A4C4(v8, v9);
    v5(v10, 0);
  }
}

uint64_t sub_1A22361F4()
{
  v1 = OBJC_IVAR____TtC13MediaControls18SessionsController_configuration;
  v2 = sub_1A22E6158();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC13MediaControls18SessionsController_routingSessionsControllerFactory));
  swift_unknownObjectRelease();

  sub_1A223CE3C(v0 + OBJC_IVAR____TtC13MediaControls18SessionsController_state, type metadata accessor for SessionsController.State);
  sub_1A210D9B0(v0 + OBJC_IVAR____TtC13MediaControls18SessionsController_snapshot, &qword_1EB088C40, &qword_1A230A1C0);
  sub_1A221467C(*(v0 + OBJC_IVAR____TtC13MediaControls18SessionsController_pendingTransition), *(v0 + OBJC_IVAR____TtC13MediaControls18SessionsController_pendingTransition + 8), *(v0 + OBJC_IVAR____TtC13MediaControls18SessionsController_pendingTransition + 16), *(v0 + OBJC_IVAR____TtC13MediaControls18SessionsController_pendingTransition + 24));
  return v0;
}

uint64_t sub_1A2236310()
{
  sub_1A22361F4();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_1A22363BC()
{
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB088C48, &qword_1A230A1C8);
  MEMORY[0x1EEE9AC00](v78);
  v83 = &v65[-v1];
  v2 = type metadata accessor for SessionsController.State(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v68 = &v65[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v89 = sub_1A22E58F8();
  v4 = *(v89 - 8);
  v5 = MEMORY[0x1EEE9AC00](v89);
  v77 = &v65[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = &v65[-v8];
  v10 = MEMORY[0x1EEE9AC00](v7);
  v12 = &v65[-v11];
  v13 = MEMORY[0x1EEE9AC00](v10);
  v82 = &v65[-v14];
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = &v65[-v16];
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = &v65[-v19];
  MEMORY[0x1EEE9AC00](v18);
  v67 = &v65[-v21];
  v69 = v0;
  v22 = *(**(v0 + OBJC_IVAR____TtC13MediaControls18SessionsController__observers) + 120);

  v24 = v22(v23);

  v25 = *(v24 + 16);
  v80 = v9;
  v81 = v17;
  v71 = v20;
  if (v25)
  {
    v91[0] = MEMORY[0x1E69E7CC0];
    sub_1A2238ED4(0, v25, 0);
    v26 = v91[0];
    v90 = (v4 + 32);
    v88 = v24;
    v27 = (v24 + 40);
    do
    {
      v28 = v4;
      v29 = *v27;
      ObjectType = swift_getObjectType();
      v31 = *(v29 + 8);
      swift_unknownObjectRetain();
      v31(ObjectType, v29);
      swift_unknownObjectRelease();
      v91[0] = v26;
      v33 = *(v26 + 16);
      v32 = *(v26 + 24);
      if (v33 >= v32 >> 1)
      {
        sub_1A2238ED4((v32 > 1), v33 + 1, 1);
        v26 = v91[0];
      }

      *(v26 + 16) = v33 + 1;
      v4 = v28;
      (*(v28 + 32))(v26 + ((*(v28 + 80) + 32) & ~*(v28 + 80)) + *(v28 + 72) * v33, v12, v89);
      v27 += 2;
      --v25;
    }

    while (v25);

    v9 = v80;
    v17 = v81;
    v20 = v71;
  }

  else
  {

    v26 = MEMORY[0x1E69E7CC0];
  }

  v34 = *MEMORY[0x1E69AE580];
  v35 = *MEMORY[0x1E69AE580];
  v36 = v89;
  v75 = *(v4 + 104);
  v76 = v4 + 104;
  v75(v20, v35, v89);
  v87 = *(v4 + 16);
  v88 = v4 + 16;
  v87(v17, v20, v36);
  v37 = *(v26 + 16);
  v38 = v82;
  if (!v37)
  {

    goto LABEL_28;
  }

  v66 = v34;
  v39 = v26 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
  v86 = *(v4 + 72);
  v79 = (v4 + 88);
  v73 = *MEMORY[0x1E69AE578];
  v72 = *MEMORY[0x1E69AE568];
  v84 = (v4 + 8);
  v70 = *MEMORY[0x1E69AE570];
  v90 = (v4 + 32);
  v85 = (v4 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v74 = v26;
  do
  {
    v87(v38, v39, v36);
    sub_1A223C7E4(&qword_1ED950770, MEMORY[0x1E69AE588], MEMORY[0x1E69AE590]);
    v41 = v38;
    if (sub_1A22E6568())
    {
      (*v84)(v17, v36);
      v40 = *v90;
      (*v90)(v9, v38, v36);
      goto LABEL_11;
    }

    v42 = v83;
    v43 = &v83[*(v78 + 48)];
    v40 = *v90;
    (*v90)(v83, v41, v36);
    v40(v43, v17, v36);
    v44 = *v79;
    v45 = (*v79)(v42, v36);
    v46 = v73;
    if (v45 == v73)
    {
      v47 = v43;
      v48 = v73;
LABEL_16:
      (*v84)(v47, v36);
      v50 = v77;
      v75(v77, v48, v36);
      v9 = v80;
      v17 = v81;
      goto LABEL_17;
    }

    v49 = v44(v43, v36);
    v47 = v42;
    v48 = v46;
    if (v49 == v46)
    {
      goto LABEL_16;
    }

    v51 = v83;
    v52 = v44(v83, v36);
    v53 = v72;
    if (v52 == v72)
    {
      v47 = v43;
      v48 = v72;
      goto LABEL_16;
    }

    v54 = v44(v43, v36);
    v47 = v51;
    v48 = v53;
    if (v54 == v53)
    {
      goto LABEL_16;
    }

    v55 = v83;
    v56 = v44(v83, v36);
    if (v56 == v70)
    {
      v9 = v80;
      v17 = v81;
    }

    else
    {
      v57 = v44(v43, v36);
      v43 = v55;
      v9 = v80;
      v17 = v81;
      if (v57 != v70)
      {
        v50 = v77;
        v75(v77, v66, v36);
        sub_1A210D9B0(v83, &qword_1EB088C48, &qword_1A230A1C8);
        goto LABEL_17;
      }
    }

    (*v84)(v43, v36);
    v50 = v77;
    v75(v77, v70, v36);
LABEL_17:
    v40(v9, v50, v36);
    v38 = v82;
LABEL_11:
    v40(v17, v9, v36);
    v39 += v86;
    --v37;
  }

  while (v37);

  v20 = v71;
LABEL_28:
  (*(v4 + 8))(v20, v36);
  v58 = v67;
  (*(v4 + 32))(v67, v17, v36);
  v59 = v4;
  v60 = OBJC_IVAR____TtC13MediaControls18SessionsController_state;
  v61 = v69;
  swift_beginAccess();
  v62 = v61 + v60;
  v63 = v68;
  sub_1A223CD60(v62, v68, type metadata accessor for SessionsController.State);
  (*(v59 + 40))(v63, v58, v36);
  return sub_1A223526C(v63);
}

void sub_1A2236C80()
{
  v1 = v0;
  v2 = *v0;
  v3 = sub_1A22E6248();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  if (*(v1 + OBJC_IVAR____TtC13MediaControls18SessionsController_routingSessionsController))
  {
    v48 = v2;
    v49 = &v46 - v8;
    v9 = *(v1 + OBJC_IVAR____TtC13MediaControls18SessionsController_routingSessionsController + 8);
    v10 = *(**(v1 + OBJC_IVAR____TtC13MediaControls18SessionsController__observers) + 120);
    swift_unknownObjectRetain();

    v12 = v10(v11);

    v13 = MEMORY[0x1E69E7CC0];
    v51 = MEMORY[0x1E69E7CC0];
    v14 = *(v12 + 16);
    if (v14)
    {
      v50 = v9;
      v46 = v4;
      v47 = v3;
      v15 = 0;
      v16 = (v12 + 40);
      while (v15 < *(v12 + 16))
      {
        ++v15;
        v17 = *v16;
        ObjectType = swift_getObjectType();
        v19 = *(v17 + 16);
        swift_unknownObjectRetain();
        v20 = v19(ObjectType, v17);
        swift_unknownObjectRelease();
        sub_1A22390CC(v20);
        v16 += 2;
        if (v14 == v15)
        {
          v9 = v50;
          v13 = v51;
          v4 = v46;
          v3 = v47;
          goto LABEL_7;
        }
      }

      __break(1u);
    }

    else
    {
LABEL_7:

      v21 = sub_1A210E724(v13);

      swift_getObjectType();
      v22 = sub_1A22E61B8();
      v23 = sub_1A2112E98(v21, v22);

      if (v23)
      {
        swift_unknownObjectRelease();
      }

      else
      {
        v32 = sub_1A2104EA0();
        v33 = v49;
        (*(v4 + 16))(v49, v32, v3);

        v34 = sub_1A22E6238();
        v35 = sub_1A22E6A98();

        if (os_log_type_enabled(v34, v35))
        {
          v36 = swift_slowAlloc();
          v50 = v9;
          v37 = v4;
          v38 = v36;
          v47 = swift_slowAlloc();
          v51 = v47;
          *v38 = 136315650;
          v39 = sub_1A22E7388();
          LODWORD(v48) = v35;
          v41 = sub_1A2103450(v39, v40, &v51);

          *(v38 + 4) = v41;
          *(v38 + 12) = 2080;
          *(v38 + 14) = sub_1A2103450(0xD000000000000023, 0x80000001A23039A0, &v51);
          *(v38 + 22) = 2080;
          v42 = sub_1A22E6938();
          v44 = sub_1A2103450(v42, v43, &v51);

          *(v38 + 24) = v44;
          _os_log_impl(&dword_1A20FC000, v34, v48, "[%s] %s: %s", v38, 0x20u);
          v45 = v47;
          swift_arrayDestroy();
          MEMORY[0x1A58DCD00](v45, -1, -1);
          MEMORY[0x1A58DCD00](v38, -1, -1);

          (*(v37 + 8))(v33, v3);
        }

        else
        {

          (*(v4 + 8))(v33, v3);
        }

        sub_1A22E61C8();
        swift_unknownObjectRelease();
      }
    }
  }

  else
  {
    v24 = sub_1A2104EA0();
    (*(v4 + 16))(v7, v24, v3);
    v25 = sub_1A22E6238();
    v26 = sub_1A22E6A98();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v51 = v28;
      *v27 = 136315394;
      v29 = sub_1A22E7388();
      v31 = sub_1A2103450(v29, v30, &v51);

      *(v27 + 4) = v31;
      *(v27 + 12) = 2080;
      *(v27 + 14) = sub_1A2103450(0xD000000000000023, 0x80000001A23039A0, &v51);
      _os_log_impl(&dword_1A20FC000, v25, v26, "[%s] %s - no routingSessionsController", v27, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1A58DCD00](v28, -1, -1);
      MEMORY[0x1A58DCD00](v27, -1, -1);
    }

    (*(v4 + 8))(v7, v3);
  }
}

void (*sub_1A22372E4(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  *(v3 + 32) = (*(*v1 + 256))();
  return sub_1A220BEF8;
}

void (*sub_1A223737C(void (*result)(__int128 *), uint64_t a2, uint64_t a3))(__int128 *)
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

uint64_t sub_1A2237414()
{
  v1 = sub_1A22E58F8();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x1EEE9AC00](v1);
  v5 = &ObjectType - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &ObjectType - v6;
  result = sub_1A22380B4();
  if (*(v0 + OBJC_IVAR____TtC13MediaControls18SessionsController_routingSessionsController))
  {
    v9 = *(v0 + OBJC_IVAR____TtC13MediaControls18SessionsController_routingSessionsController + 8);
    v16 = v5;
    v17 = v9;
    ObjectType = swift_getObjectType();
    v10 = OBJC_IVAR____TtC13MediaControls18SessionsController_state;
    swift_beginAccess();
    v11 = *(v2 + 16);
    v11(v7, v0 + v10, v1);
    swift_unknownObjectRetain();
    sub_1A22E6168();
    v11(v7, v0 + v10, v1);
    v12 = v16;
    (*(v2 + 104))(v16, *MEMORY[0x1E69AE580], v1);
    sub_1A223C7E4(&qword_1ED950770, MEMORY[0x1E69AE588], MEMORY[0x1E69AE590]);
    v13 = sub_1A22E6568();
    v14 = *(v2 + 8);
    v14(v12, v1);
    v14(v7, v1);
    if (((v13 ^ sub_1A22E6178()) & 1) == 0)
    {
      sub_1A22E6188();
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1A223767C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v65 = a2;
  v66 = a3;
  v62 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB088C40, &qword_1A230A1C0);
  v7 = MEMORY[0x1EEE9AC00](v6 - 8);
  v64 = &v53 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v63 = &v53 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB088C30, &qword_1A230A1B0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v53 - v11;
  v67 = type metadata accessor for RoutePickerSnapshot(0);
  v61 = *(v67 - 1);
  v13 = MEMORY[0x1EEE9AC00](v67);
  v15 = (&v53 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v53 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB088C50, &qword_1A230A3E0);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v20 = &v53 - v19;
  v21 = sub_1A22E6088();
  v22 = *(v21 - 8);
  v23 = MEMORY[0x1EEE9AC00](v21);
  v25 = &v53 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  if (!*(v4 + OBJC_IVAR____TtC13MediaControls18SessionsController_routingSessionsController))
  {
    (*(v22 + 56))(v20, 1, 1, v21);
    return sub_1A210D9B0(v20, &qword_1EB088C50, &qword_1A230A3E0);
  }

  v58 = v17;
  v59 = &v53 - v26;
  v57 = a4;
  v60 = v4;
  swift_getObjectType();
  swift_unknownObjectRetain();
  sub_1A22E61F8();
  swift_unknownObjectRelease();
  if ((*(v22 + 48))(v20, 1, v21) == 1)
  {
    return sub_1A210D9B0(v20, &qword_1EB088C50, &qword_1A230A3E0);
  }

  v27 = v59;
  (*(v22 + 32))(v59, v20, v21);
  (*(v22 + 16))(v25, v27, v21);
  v28 = v60 + OBJC_IVAR____TtC13MediaControls18SessionsController_state;
  swift_beginAccess();
  v29 = *(v28 + *(type metadata accessor for SessionsController.State(0) + 24));
  v30 = v67[5];
  v31 = sub_1A22E5C88();
  (*(*(v31 - 8) + 56))(v15 + v30, 1, 1, v31);
  *v15 = sub_1A22E1270(v29);
  sub_1A22E6038();
  sub_1A212E4EC(v12, v15 + v30, &qword_1EB088C30, &qword_1A230A1B0);
  if (v29 == 1)
  {
    v32 = sub_1A22E6068();
    v33 = *(v22 + 8);
    v55 = (v22 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v56 = v33;
    v33(v25, v21);
    v34 = *(v32 + 16);

    v35 = v34 != 0;
  }

  else
  {
    v37 = *(v22 + 8);
    v55 = (v22 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v56 = v37;
    v37(v25, v21);
    v35 = 0;
  }

  v39 = v66;
  v38 = v67;
  v40 = (v15 + v67[7]);
  *(v15 + v67[6]) = v35;
  v41 = v62;
  v42 = v65;
  *v40 = v62;
  v40[1] = v42;
  v43 = v57;
  v44 = v58;
  v40[2] = v39;
  v40[3] = v43;
  sub_1A223CCFC(v15, v44);
  v54 = type metadata accessor for RoutePickerSnapshot;
  v45 = v63;
  sub_1A223CD60(v44, v63, type metadata accessor for RoutePickerSnapshot);
  (*(v61 + 56))(v45, 0, 1, v38);
  v46 = OBJC_IVAR____TtC13MediaControls18SessionsController_snapshot;
  v47 = v60;
  swift_beginAccess();
  v48 = v64;
  sub_1A2214CF8(v47 + v46, v64, &qword_1EB088C40, &qword_1A230A1C0);
  swift_beginAccess();
  sub_1A2214638(v41, v42, v39, v43);
  sub_1A223A1B0(v45, v47 + v46);
  swift_endAccess();
  sub_1A22354C8(v48);
  sub_1A210D9B0(v48, &qword_1EB088C40, &qword_1A230A1C0);
  sub_1A210D9B0(v45, &qword_1EB088C40, &qword_1A230A1C0);
  v49 = *(**(v47 + OBJC_IVAR____TtC13MediaControls18SessionsController__observers) + 120);

  v51 = v49(v50);

  MEMORY[0x1EEE9AC00](v52);
  *(&v53 - 2) = v47;
  *(&v53 - 1) = v44;
  sub_1A223737C(sub_1A223CDC8, (&v53 - 4), v51);

  v56(v59, v21);
  return sub_1A223CE3C(v44, v54);
}

uint64_t sub_1A2237D44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB088C48, &qword_1A230A1C8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v21 - v7;
  v9 = sub_1A22E58F8();
  v22 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A223C7E4(&qword_1ED950770, MEMORY[0x1E69AE588], MEMORY[0x1E69AE590]);
  if ((sub_1A22E6568() & 1) == 0)
  {
    v14 = &v8[*(v6 + 48)];
    v15 = *(v22 + 16);
    v15(v8, v3, v9);
    v15(v14, a1, v9);
    v16 = *(v22 + 88);
    v17 = v16(v8, v9);
    v18 = *MEMORY[0x1E69AE578];
    if (v17 != v18)
    {
      if (v16(v14, v9) != v18)
      {
        v19 = v16(v8, v9);
        v18 = *MEMORY[0x1E69AE568];
        if (v19 == v18)
        {
          goto LABEL_9;
        }

        if (v16(v14, v9) != v18)
        {
          v20 = v16(v8, v9);
          v18 = *MEMORY[0x1E69AE570];
          if (v20 == v18)
          {
            goto LABEL_9;
          }

          if (v16(v14, v9) != v18)
          {
            (*(v22 + 104))(v11, *MEMORY[0x1E69AE580], v9);
            sub_1A210D9B0(v8, &qword_1EB088C48, &qword_1A230A1C8);
            return (*(v22 + 32))(a2, v11, v9);
          }
        }
      }

      v14 = v8;
    }

LABEL_9:
    (*(v22 + 8))(v14, v9);
    (*(v22 + 104))(v11, v18, v9);
    return (*(v22 + 32))(a2, v11, v9);
  }

  v12 = *(v22 + 16);

  return v12(a2, v3, v9);
}

uint64_t sub_1A22380B4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB088C80, &qword_1A230A418);
  v2 = v1 - 8;
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v23 - v3;
  v5 = sub_1A22E58F8();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v24 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v25 = &v23 - v10;
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v23 - v11;
  v13 = OBJC_IVAR____TtC13MediaControls18SessionsController_state;
  swift_beginAccess();
  v14 = *(v6 + 16);
  v14(v12, v0 + v13, v5);
  v16 = *(v0 + OBJC_IVAR____TtC13MediaControls18SessionsController_routingSessionsController);
  v15 = *(v0 + OBJC_IVAR____TtC13MediaControls18SessionsController_routingSessionsController + 8);
  v17 = &v4[*(v2 + 56)];
  (*(v6 + 32))(v4, v12, v5);
  *v17 = v16;
  *(v17 + 1) = v15;
  if (v16)
  {
    if ((*(v6 + 88))(v4, v5) == *MEMORY[0x1E69AE580])
    {
      swift_unknownObjectRetain();
      sub_1A22383E8();
      return swift_unknownObjectRelease();
    }

    goto LABEL_6;
  }

  v19 = v25;
  v14(v25, v4, v5);
  v20 = v24;
  (*(v6 + 104))(v24, *MEMORY[0x1E69AE580], v5);
  sub_1A223C7E4(&qword_1ED950770, MEMORY[0x1E69AE588], MEMORY[0x1E69AE590]);
  v21 = sub_1A22E6568();
  v22 = *(v6 + 8);
  v22(v20, v5);
  if (v21)
  {
    v22(v19, v5);
LABEL_6:
    swift_unknownObjectRetain();
    return sub_1A210D9B0(v4, &qword_1EB088C80, &qword_1A230A418);
  }

  sub_1A223883C();
  v22(v19, v5);
  return (v22)(v4, v5);
}

uint64_t sub_1A22383E8()
{
  v1 = v0;
  v34 = *v0;
  v2 = type metadata accessor for SessionsController.State(0);
  v3 = MEMORY[0x1EEE9AC00](v2);
  v5 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x1EEE9AC00](v3);
  v8 = &v31 - v7;
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v31 - v9;
  v11 = sub_1A22E6248();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1A2104EA0();
  (*(v12 + 16))(v14, v15, v11);
  v16 = sub_1A22E6238();
  v17 = sub_1A22E6A98();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v32 = v2;
    v19 = v18;
    v20 = swift_slowAlloc();
    v33 = v10;
    v31 = v20;
    v35[0] = v20;
    *v19 = 136315394;
    v21 = sub_1A22E7388();
    v23 = sub_1A2103450(v21, v22, v35);
    v34 = v11;
    v24 = v23;

    *(v19 + 4) = v24;
    *(v19 + 12) = 2080;
    *(v19 + 14) = sub_1A2103450(0xD000000000000023, 0x80000001A2303BE0, v35);
    _os_log_impl(&dword_1A20FC000, v16, v17, "[%s] %s", v19, 0x16u);
    v25 = v31;
    swift_arrayDestroy();
    v10 = v33;
    MEMORY[0x1A58DCD00](v25, -1, -1);
    v26 = v19;
    v2 = v32;
    MEMORY[0x1A58DCD00](v26, -1, -1);

    (*(v12 + 8))(v14, v34);
  }

  else
  {

    (*(v12 + 8))(v14, v11);
  }

  v27 = (v1 + OBJC_IVAR____TtC13MediaControls18SessionsController_routingSessionsController);
  *v27 = 0;
  v27[1] = 0;
  swift_unknownObjectRelease();
  v28 = OBJC_IVAR____TtC13MediaControls18SessionsController_state;
  swift_beginAccess();
  sub_1A223CD60(v1 + v28, v10, type metadata accessor for SessionsController.State);
  v29 = *(v2 + 20);

  *&v10[v29] = MEMORY[0x1E69E7CD0];
  sub_1A223CD60(v1 + v28, v8, type metadata accessor for SessionsController.State);
  swift_beginAccess();
  sub_1A223CE9C(v10, v1 + v28);
  swift_endAccess();
  sub_1A223CD60(v1 + v28, v5, type metadata accessor for SessionsController.State);
  if ((sub_1A22E58E8() & 1) != 0 && (sub_1A2112E98(*&v5[*(v2 + 20)], *&v8[*(v2 + 20)]) & 1) != 0 && v5[*(v2 + 24)] == v8[*(v2 + 24)])
  {
    sub_1A223CE3C(v5, type metadata accessor for SessionsController.State);
  }

  else
  {
    sub_1A223CE3C(v5, type metadata accessor for SessionsController.State);
    sub_1A2234F70(v8);
  }

  sub_1A223CE3C(v8, type metadata accessor for SessionsController.State);
  return sub_1A223CE3C(v10, type metadata accessor for SessionsController.State);
}

uint64_t sub_1A223883C()
{
  v1 = sub_1A22E6248();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1A2104EA0();
  (*(v2 + 16))(v4, v5, v1);

  v6 = sub_1A22E6238();
  v7 = sub_1A22E6A98();

  v8 = &unk_1ED951000;
  if (os_log_type_enabled(v6, v7))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v28 = v10;
    *v9 = 136315650;
    v11 = sub_1A22E7388();
    v13 = sub_1A2103450(v11, v12, &v28);

    *(v9 + 4) = v13;
    *(v9 + 12) = 2080;
    *(v9 + 14) = sub_1A2103450(0xD00000000000001FLL, 0x80000001A2303C10, &v28);
    *(v9 + 22) = 2080;
    sub_1A22E6158();
    sub_1A223C7E4(&qword_1ED950690, MEMORY[0x1E69AE838], MEMORY[0x1E69AE840]);
    v14 = sub_1A22E71D8();
    v16 = sub_1A2103450(v14, v15, &v28);

    *(v9 + 24) = v16;
    _os_log_impl(&dword_1A20FC000, v6, v7, "[%s] %s configuration: %s", v9, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1A58DCD00](v10, -1, -1);
    v17 = v9;
    v8 = &unk_1ED951000;
    MEMORY[0x1A58DCD00](v17, -1, -1);
  }

  (*(v2 + 8))(v4, v1);
  v18 = *(v0 + OBJC_IVAR____TtC13MediaControls18SessionsController_routingSessionsControllerFactory + 24);
  v19 = *(v0 + OBJC_IVAR____TtC13MediaControls18SessionsController_routingSessionsControllerFactory + 32);
  __swift_project_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC13MediaControls18SessionsController_routingSessionsControllerFactory), v18);
  v20 = (*(v19 + 8))(v0 + v8[393], v18, v19);
  v22 = v21;
  swift_getObjectType();
  sub_1A223C7E4(qword_1ED94F888, type metadata accessor for SessionsController, &unk_1A230A258);
  swift_unknownObjectRetain();
  sub_1A22E61E8();
  v23 = *(**(v0 + OBJC_IVAR____TtC13MediaControls18SessionsController__interactor) + 96);
  v24 = swift_unknownObjectRetain();
  v23(v24, v22);
  v25 = (v0 + OBJC_IVAR____TtC13MediaControls18SessionsController_routingSessionsController);
  *v25 = v20;
  v25[1] = v22;
  return swift_unknownObjectRelease();
}

uint64_t sub_1A2238C0C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SessionsController.State(0);
  v5 = v4 - 8;
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____TtC13MediaControls18SessionsController_state;
  swift_beginAccess();
  sub_1A223CD60(a1 + v8, v7, type metadata accessor for SessionsController.State);
  v9 = *(v5 + 28);

  *&v7[v9] = a2;
  return sub_1A223526C(v7);
}

void *sub_1A2238DA0(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB088C70, &qword_1A230A408);
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
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB088C68, &qword_1A230A400);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1A2238ED4(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1A2238EF4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1A2238EF4(void *result, int64_t a2, char a3, void *a4)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB088C60, &qword_1A230A3F8);
  v10 = *(sub_1A22E58F8() - 8);
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
  v15 = *(sub_1A22E58F8() - 8);
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

void *sub_1A22390CC(void *result)
{
  v3 = result[2];
  v4 = *v1;
  v5 = *(*v1 + 2);
  v6 = v5 + v3;
  if (__OFADD__(v5, v3))
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v7 = result;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (!isUniquelyReferenced_nonNull_native || (v9 = *(v4 + 3) >> 1, v9 < v6))
  {
    if (v5 <= v6)
    {
      v10 = v5 + v3;
    }

    else
    {
      v10 = v5;
    }

    v4 = sub_1A22130F0(isUniquelyReferenced_nonNull_native, v10, 1, v4);
    v9 = *(v4 + 3) >> 1;
  }

  v11 = *(v4 + 2);
  v12 = v9 - v11;
  result = sub_1A2124F34(&v42, &v4[16 * v11 + 32], v9 - v11, v7);
  if (result < v3)
  {
    goto LABEL_15;
  }

  v15 = result;
  if (result)
  {
    v16 = *(v4 + 2);
    v17 = __OFADD__(v16, result);
    v18 = result + v16;
    if (v17)
    {
      __break(1u);
LABEL_19:
      v21 = (v14 + 64) >> 6;
      if (v21 <= v2 + 1)
      {
        v22 = v2 + 1;
      }

      else
      {
        v22 = (v14 + 64) >> 6;
      }

      v23 = v22 - 1;
      do
      {
        v24 = v2 + 1;
        if (__OFADD__(v2, 1))
        {
LABEL_48:
          __break(1u);
          return result;
        }

        if (v24 >= v21)
        {
          v45 = v23;
          v46 = 0;
          goto LABEL_13;
        }

        v25 = *(v13 + 8 * v24);
        ++v2;
      }

      while (!v25);
      v39 = v14;
      v19 = (v25 - 1) & v25;
      v20 = __clz(__rbit64(v25)) | (v24 << 6);
      v2 = v24;
      goto LABEL_27;
    }

    *(v4 + 2) = v18;
  }

  result = v42;
  if (v15 != v12)
  {
    goto LABEL_13;
  }

LABEL_16:
  v12 = *(v4 + 2);
  v13 = v43;
  v14 = v44;
  v2 = v45;
  v41 = v43;
  if (!v46)
  {
    goto LABEL_19;
  }

  v19 = (v46 - 1) & v46;
  v20 = __clz(__rbit64(v46)) | (v45 << 6);
  v39 = v44;
  v21 = (v44 + 64) >> 6;
LABEL_27:
  v40 = result;
  v26 = (result[6] + 16 * v20);
  v28 = *v26;
  v27 = v26[1];

  v29 = v41;
LABEL_29:
  while (1)
  {
    v30 = *(v4 + 3);
    v31 = v30 >> 1;
    if ((v30 >> 1) < v12 + 1)
    {
      break;
    }

    if (v12 < v31)
    {
      goto LABEL_31;
    }

LABEL_28:
    *(v4 + 2) = v12;
  }

  v37 = sub_1A22130F0((v30 > 1), v12 + 1, 1, v4);
  v29 = v41;
  v4 = v37;
  v31 = *(v37 + 3) >> 1;
  if (v12 >= v31)
  {
    goto LABEL_28;
  }

LABEL_31:
  while (1)
  {
    v32 = &v4[16 * v12 + 32];
    *v32 = v28;
    *(v32 + 1) = v27;
    ++v12;
    if (!v19)
    {
      break;
    }

    result = v40;
LABEL_38:
    v35 = __clz(__rbit64(v19));
    v19 &= v19 - 1;
    v36 = (result[6] + ((v2 << 10) | (16 * v35)));
    v28 = *v36;
    v27 = v36[1];

    v29 = v41;
    if (v12 == v31)
    {
      v12 = v31;
      *(v4 + 2) = v31;
      goto LABEL_29;
    }
  }

  v33 = v2;
  result = v40;
  while (1)
  {
    v34 = v33 + 1;
    if (__OFADD__(v33, 1))
    {
      __break(1u);
      goto LABEL_48;
    }

    if (v34 >= v21)
    {
      break;
    }

    v19 = *(v29 + 8 * v34);
    ++v33;
    if (v19)
    {
      v2 = v34;
      goto LABEL_38;
    }
  }

  if (v21 <= v2 + 1)
  {
    v38 = v2 + 1;
  }

  else
  {
    v38 = v21;
  }

  v44 = v39;
  v45 = v38 - 1;
  v46 = 0;
  *(v4 + 2) = v12;
LABEL_13:
  result = sub_1A212508C(result);
  *v1 = v4;
  return result;
}

void sub_1A2239388(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB088C58, &qword_1A230A3E8);
  v35 = v4;
  v6 = sub_1A22E7058();
  v7 = v6;
  if (*(v5 + 16))
  {
    v34 = v5;
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
      if ((v35 & 1) == 0)
      {
      }

      sub_1A22E72A8();
      sub_1A22E6658();
      v25 = sub_1A22E72F8();
      v26 = -1 << *(v7 + 32);
      v27 = v25 & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v34;
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

    if ((v35 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v2;
    if (v33 >= 64)
    {
      bzero(v9, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
}

void sub_1A2239630(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1A22E6DB8() + 1) & ~v5;
    do
    {
      sub_1A22E72A8();

      sub_1A22E6658();
      v9 = sub_1A22E72F8();

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
}

void sub_1A22397E0(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1A210FF30(a2, a3);
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
      sub_1A2239388(v16, a4 & 1);
      v11 = sub_1A210FF30(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        sub_1A22E7208();
        __break(1u);
        return;
      }
    }

    else
    {
      v19 = v11;
      sub_1A223995C();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * v11) = a1;

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

void sub_1A223995C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB088C58, &qword_1A230A3E8);
  v2 = *v0;
  v3 = sub_1A22E7048();
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

BOOL sub_1A2239AE0(uint64_t *a1, uint64_t *a2)
{
  v4 = sub_1A22E5C88();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB088C30, &qword_1A230A1B0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v40 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB088C90, qword_1A230A428);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v40 - v12;
  if ((sub_1A2233F9C(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  v14 = type metadata accessor for RoutePickerSnapshot(0);
  v15 = a1;
  v16 = a2;
  v40 = v14;
  v41 = v15;
  v17 = *(v14 + 20);
  v18 = *(v11 + 48);
  sub_1A2214CF8(v15 + v17, v13, &qword_1EB088C30, &qword_1A230A1B0);
  v19 = v16 + v17;
  v20 = v16;
  sub_1A2214CF8(v19, &v13[v18], &qword_1EB088C30, &qword_1A230A1B0);
  v21 = *(v5 + 48);
  if (v21(v13, 1, v4) == 1)
  {
    if (v21(&v13[v18], 1, v4) == 1)
    {
      sub_1A210D9B0(v13, &qword_1EB088C30, &qword_1A230A1B0);
      goto LABEL_9;
    }

LABEL_7:
    sub_1A210D9B0(v13, &qword_1EB088C90, qword_1A230A428);
    return 0;
  }

  sub_1A2214CF8(v13, v10, &qword_1EB088C30, &qword_1A230A1B0);
  if (v21(&v13[v18], 1, v4) == 1)
  {
    (*(v5 + 8))(v10, v4);
    goto LABEL_7;
  }

  (*(v5 + 32))(v7, &v13[v18], v4);
  sub_1A223C7E4(&qword_1ED950740, MEMORY[0x1E69AE600], MEMORY[0x1E69AE610]);
  v22 = sub_1A22E6568();
  v23 = *(v5 + 8);
  v23(v7, v4);
  v23(v10, v4);
  v20 = v16;
  sub_1A210D9B0(v13, &qword_1EB088C30, &qword_1A230A1B0);
  if ((v22 & 1) == 0)
  {
    return 0;
  }

LABEL_9:
  if (*(v41 + *(v40 + 24)) != *(v20 + *(v40 + 24)))
  {
    return 0;
  }

  v24 = *(v40 + 28);
  v26 = *(v41 + v24);
  v25 = *(v41 + v24 + 8);
  v28 = *(v41 + v24 + 16);
  v27 = *(v41 + v24 + 24);
  v29 = (v20 + v24);
  v31 = *v29;
  v30 = v29[1];
  v33 = v29[2];
  v32 = v29[3];
  if (!v25)
  {
    if (!v30)
    {
      return 1;
    }

    goto LABEL_19;
  }

  if (!v30)
  {
LABEL_19:
    sub_1A2214638(*v29, v29[1], v29[2], v29[3]);
    sub_1A2214638(v26, v25, v28, v27);
    sub_1A221467C(v26, v25, v28, v27);
    v35 = v31;
    v36 = v30;
    v37 = v33;
    v38 = v32;
LABEL_20:
    sub_1A221467C(v35, v36, v37, v38);
    return 0;
  }

  if ((v26 != v31 || v25 != v30) && (sub_1A22E71E8() & 1) == 0)
  {
    sub_1A2214638(v31, v30, v33, v32);
    sub_1A2214638(v26, v25, v28, v27);

    v35 = v26;
    v36 = v25;
    v37 = v28;
    v38 = v27;
    goto LABEL_20;
  }

  if (v28 == v33 && v27 == v32)
  {
    sub_1A2214638(v31, v30, v28, v27);
    sub_1A2214638(v26, v25, v28, v27);

    sub_1A221467C(v26, v25, v28, v27);
    return 1;
  }

  v39 = sub_1A22E71E8();
  sub_1A2214638(v31, v30, v33, v32);
  sub_1A2214638(v26, v25, v28, v27);

  sub_1A221467C(v26, v25, v28, v27);
  return (v39 & 1) != 0;
}

uint64_t sub_1A223A01C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB088C30, &qword_1A230A1B0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1A223A0AC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB088C58, &qword_1A230A3E8);
    v3 = sub_1A22E7078();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_1A210FF30(v5, v6);
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

uint64_t sub_1A223A1B0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB088C40, &qword_1A230A1C0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A223A220(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

void *sub_1A223A284(void *result, uint64_t a2)
{
  v3 = *result;
  v4 = *(*result + 16);
  if (!v4)
  {
    return 0;
  }

  v6 = result;
  v7 = 0;
  for (i = 4; v3[i] != a2; i += 2)
  {
    if (v4 == ++v7)
    {
      return *(*result + 16);
    }
  }

  if (v2)
  {
    return v7;
  }

  v9 = v7 + 1;
  if (!__OFADD__(v7, 1))
  {
    if (v9 == v4)
    {
      return v7;
    }

    v10 = i * 8 + 16;
    while (v9 < v4)
    {
      if (*(v3 + v10) != a2)
      {
        if (v9 != v7)
        {
          if (v7 >= v4)
          {
            goto LABEL_23;
          }

          v12 = *(v3 + v10);
          v11 = *&v3[2 * v7 + 4];
          swift_unknownObjectRetain();
          swift_unknownObjectRetain();
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v3 = sub_1A2239ACC(v3);
          }

          *&v3[2 * v7 + 4] = v12;
          result = swift_unknownObjectRelease();
          if (v9 >= v3[2])
          {
            goto LABEL_24;
          }

          *(v3 + v10) = v11;
          result = swift_unknownObjectRelease();
          *v6 = v3;
        }

        ++v7;
      }

      ++v9;
      v4 = v3[2];
      v10 += 16;
      if (v9 == v4)
      {
        return v7;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_1A223A3F4(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v7 = *v3;
  v8 = v7 + 32 + 16 * result;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB088C68, &qword_1A230A400);
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v10)
  {
    goto LABEL_13;
  }

  v11 = *(v7 + 16);
  v9 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v9)
  {
    goto LABEL_17;
  }

  result = v8 + 16 * a3;
  v13 = (v7 + 32 + 16 * a2);
  if (result != v13 || result >= v13 + 16 * v12)
  {
    result = memmove(result, v13, 16 * v12);
  }

  v15 = *(v7 + 16);
  v9 = __OFADD__(v15, v10);
  v16 = v15 + v10;
  if (v9)
  {
    goto LABEL_18;
  }

  *(v7 + 16) = v16;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

unint64_t sub_1A223A4C4(unint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v4 = *v2;
  v5 = *(*v2 + 16);
  if (v5 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v6 = result;
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v7 = result - a2;
  if (__OFSUB__(0, a2 - result))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v8 = v5 + v7;
  if (__OFADD__(v5, v7))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v4;
  if (!isUniquelyReferenced_nonNull_native || v8 > v4[3] >> 1)
  {
    if (v5 <= v8)
    {
      v10 = v8;
    }

    else
    {
      v10 = v5;
    }

    v4 = sub_1A2238DA0(isUniquelyReferenced_nonNull_native, v10, 1, v4);
    *v2 = v4;
  }

  result = sub_1A223A3F4(v6, a2, 0);
  *v2 = v4;
  return result;
}

uint64_t sub_1A223A584()
{
  v1 = sub_1A22E6468();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = aBlock - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1A22E6488();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = aBlock - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A210B4FC(0, v9);
  v10 = sub_1A22E6B28();
  aBlock[4] = sub_1A210EA8C;
  v14 = v0;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1A210E3F0;
  aBlock[3] = &block_descriptor_58;
  v11 = _Block_copy(aBlock);

  sub_1A22E6478();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1A223C7E4(&qword_1ED94EB28, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB088C08, &unk_1A230FC00);
  sub_1A210B498();
  sub_1A22E6DA8();
  MEMORY[0x1A58DAD70](0, v8, v4, v11);
  _Block_release(v11);

  (*(v2 + 8))(v4, v1);
  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1A223A824(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v21 = a3;
  v8 = sub_1A22E6468();
  v23 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_1A22E6488();
  v11 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A210B4FC(0, v14);
  v15 = sub_1A22E6B28();
  v16 = swift_allocObject();
  v16[2] = v4;
  v16[3] = a1;
  v17 = v21;
  v16[4] = a2;
  v16[5] = v17;
  v16[6] = a4;
  aBlock[4] = sub_1A223CC7C;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1A210E3F0;
  aBlock[3] = &block_descriptor_55;
  v18 = _Block_copy(aBlock);

  sub_1A22E6478();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1A223C7E4(&qword_1ED94EB28, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB088C08, &unk_1A230FC00);
  sub_1A210B498();
  sub_1A22E6DA8();
  MEMORY[0x1A58DAD70](0, v13, v10, v18);
  _Block_release(v18);

  (*(v23 + 8))(v10, v8);
  return (*(v11 + 8))(v13, v22);
}

uint64_t sub_1A223AB0C(uint64_t a1)
{
  v3 = sub_1A22E6468();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1A22E6488();
  v7 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A210B4FC(0, v10);
  v11 = sub_1A22E6B28();
  v12 = swift_allocObject();
  *(v12 + 16) = v1;
  *(v12 + 24) = a1;
  aBlock[4] = sub_1A223CC74;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1A210E3F0;
  aBlock[3] = &block_descriptor_49;
  v13 = _Block_copy(aBlock);

  sub_1A22E6478();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1A223C7E4(&qword_1ED94EB28, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB088C08, &unk_1A230FC00);
  sub_1A210B498();
  sub_1A22E6DA8();
  MEMORY[0x1A58DAD70](0, v9, v6, v13);
  _Block_release(v13);

  (*(v4 + 8))(v6, v3);
  return (*(v7 + 8))(v9, v16);
}

uint64_t sub_1A223ADD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v23 = a2;
  v24 = a3;
  v6 = sub_1A22E6468();
  v28 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1A22E6488();
  v26 = *(v9 - 8);
  v27 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1A22E5998();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  sub_1A210B4FC(0, v15);
  v25 = sub_1A22E6B28();
  (*(v13 + 16))(&v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v12);
  v16 = (*(v13 + 80) + 24) & ~*(v13 + 80);
  v17 = swift_allocObject();
  *(v17 + 16) = v4;
  (*(v13 + 32))(v17 + v16, &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v12);
  v18 = (v17 + ((v14 + v16 + 7) & 0xFFFFFFFFFFFFFFF8));
  v19 = v24;
  *v18 = v23;
  v18[1] = v19;
  aBlock[4] = sub_1A223C9B0;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1A210E3F0;
  aBlock[3] = &block_descriptor_40;
  v20 = _Block_copy(aBlock);

  sub_1A22E6478();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1A223C7E4(&qword_1ED94EB28, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB088C08, &unk_1A230FC00);
  sub_1A210B498();
  sub_1A22E6DA8();
  v21 = v25;
  MEMORY[0x1A58DAD70](0, v11, v8, v20);
  _Block_release(v20);

  (*(v28 + 8))(v8, v6);
  return (*(v26 + 8))(v11, v27);
}

uint64_t sub_1A223B174(uint64_t a1, uint64_t a2)
{
  v5 = sub_1A22E6468();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1A22E6488();
  v9 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A210B4FC(0, v12);
  v13 = sub_1A22E6B28();
  aBlock[4] = a1;
  v19 = v2;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1A210E3F0;
  aBlock[3] = a2;
  v14 = _Block_copy(aBlock);

  sub_1A22E6478();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1A223C7E4(&qword_1ED94EB28, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB088C08, &unk_1A230FC00);
  sub_1A210B498();
  sub_1A22E6DA8();
  MEMORY[0x1A58DAD70](0, v11, v8, v14);
  _Block_release(v14);

  (*(v6 + 8))(v8, v5);
  return (*(v9 + 8))(v11, v17);
}

uint64_t sub_1A223B404(uint64_t a1)
{
  v2 = sub_1A22E6468();
  v20 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1A22E6488();
  v18 = *(v5 - 8);
  v19 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1A22E5EE8();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  sub_1A210B4FC(0, v11);
  v12 = sub_1A22E6B28();
  (*(v9 + 16))(&v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v8);
  v13 = (*(v9 + 80) + 24) & ~*(v9 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = v17;
  (*(v9 + 32))(v14 + v13, &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v8);
  aBlock[4] = sub_1A223C6FC;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1A210E3F0;
  aBlock[3] = &block_descriptor_3;
  v15 = _Block_copy(aBlock);

  sub_1A22E6478();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1A223C7E4(&qword_1ED94EB28, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB088C08, &unk_1A230FC00);
  sub_1A210B498();
  sub_1A22E6DA8();
  MEMORY[0x1A58DAD70](0, v7, v4, v15);
  _Block_release(v15);

  (*(v20 + 8))(v4, v2);
  return (*(v18 + 8))(v7, v19);
}

uint64_t sub_1A223B788(uint64_t a1, unint64_t a2)
{
  v4 = sub_1A22E6248();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A2298A60(v7);

  v8 = sub_1A22E6238();
  v9 = sub_1A22E6A98();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v17 = a1;
    v11 = v10;
    v12 = swift_slowAlloc();
    v18 = v12;
    *v11 = 136315650;
    v13 = sub_1A22E7388();
    v15 = sub_1A2103450(v13, v14, &v18);

    *(v11 + 4) = v15;
    *(v11 + 12) = 2080;
    *(v11 + 14) = sub_1A2103450(0xD00000000000002BLL, 0x80000001A2303B90, &v18);
    *(v11 + 22) = 2080;
    *(v11 + 24) = sub_1A2103450(v17, a2, &v18);
    _os_log_impl(&dword_1A20FC000, v8, v9, "[%s] %s: %s", v11, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1A58DCD00](v12, -1, -1);
    MEMORY[0x1A58DCD00](v11, -1, -1);
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_1A223B9C4(uint64_t a1, unint64_t a2)
{
  v4 = sub_1A22E6248();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A2298A60(v7);

  v8 = sub_1A22E6238();
  v9 = sub_1A22E6A98();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v17 = a1;
    v11 = v10;
    v12 = swift_slowAlloc();
    v18 = v12;
    *v11 = 136315650;
    v13 = sub_1A22E7388();
    v15 = sub_1A2103450(v13, v14, &v18);

    *(v11 + 4) = v15;
    *(v11 + 12) = 2080;
    *(v11 + 14) = sub_1A2103450(0xD000000000000028, 0x80000001A2303B60, &v18);
    *(v11 + 22) = 2080;
    *(v11 + 24) = sub_1A2103450(v17, a2, &v18);
    _os_log_impl(&dword_1A20FC000, v8, v9, "[%s] %s: %s", v11, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1A58DCD00](v12, -1, -1);
    MEMORY[0x1A58DCD00](v11, -1, -1);
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_1A223BC00(uint64_t a1, unint64_t a2)
{
  v4 = sub_1A22E6248();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A2298A60(v7);

  v8 = sub_1A22E6238();
  v9 = sub_1A22E6A98();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v17 = a1;
    v11 = v10;
    v12 = swift_slowAlloc();
    v18 = v12;
    *v11 = 136315650;
    v13 = sub_1A22E7388();
    v15 = sub_1A2103450(v13, v14, &v18);

    *(v11 + 4) = v15;
    *(v11 + 12) = 2080;
    *(v11 + 14) = sub_1A2103450(0xD000000000000031, 0x80000001A2303B20, &v18);
    *(v11 + 22) = 2080;
    *(v11 + 24) = sub_1A2103450(v17, a2, &v18);
    _os_log_impl(&dword_1A20FC000, v8, v9, "[%s] %s: %s", v11, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1A58DCD00](v12, -1, -1);
    MEMORY[0x1A58DCD00](v11, -1, -1);
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_1A223BE3C(uint64_t a1, unint64_t a2)
{
  v4 = sub_1A22E6248();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A2298A60(v7);

  v8 = sub_1A22E6238();
  v9 = sub_1A22E6A98();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v17 = a1;
    v11 = v10;
    v12 = swift_slowAlloc();
    v18 = v12;
    *v11 = 136315650;
    v13 = sub_1A22E7388();
    v15 = sub_1A2103450(v13, v14, &v18);

    *(v11 + 4) = v15;
    *(v11 + 12) = 2080;
    *(v11 + 14) = sub_1A2103450(0xD00000000000002ELL, 0x80000001A2303AF0, &v18);
    *(v11 + 22) = 2080;
    *(v11 + 24) = sub_1A2103450(v17, a2, &v18);
    _os_log_impl(&dword_1A20FC000, v8, v9, "[%s] %s: %s", v11, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1A58DCD00](v12, -1, -1);
    MEMORY[0x1A58DCD00](v11, -1, -1);
  }

  return (*(v5 + 8))(v7, v4);
}

void sub_1A223C17C(uint64_t a1)
{
  sub_1A223C280(319, &qword_1ED94EB00, MEMORY[0x1E69AE600], MEMORY[0x1E69E62F8]);
  if (v1 <= 0x3F)
  {
    sub_1A223C280(319, &qword_1ED950738, MEMORY[0x1E69AE600], MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      sub_1A223C2E4();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1A223C280(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1A223C2E4()
{
  if (!qword_1ED94F630)
  {
    v0 = sub_1A22E6D68();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED94F630);
    }
  }
}

uint64_t sub_1A223C334(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_1A223C37C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_1A223C480(uint64_t a1)
{
  sub_1A22E6158();
  if (v1 <= 0x3F)
  {
    type metadata accessor for SessionsController.State(319);
    if (v2 <= 0x3F)
    {
      sub_1A223C280(319, qword_1ED94F5F8, type metadata accessor for RoutePickerSnapshot, MEMORY[0x1E69E6720]);
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_1A223C618(uint64_t a1)
{
  sub_1A22E58F8();
  if (v1 <= 0x3F)
  {
    sub_1A223C6A4();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1A223C6A4()
{
  if (!qword_1ED94EAC0)
  {
    v0 = sub_1A22E6978();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED94EAC0);
    }
  }
}

double sub_1A223C6FC()
{
  v1 = *(sub_1A22E5EE8() - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));
  v4 = *(**(v2 + OBJC_IVAR____TtC13MediaControls18SessionsController__observers) + 120);

  v6 = v4(v5);

  v8[2] = v2;
  v8[3] = v3;
  sub_1A223737C(sub_1A223C82C, v8, v6);

  return result;
}

uint64_t sub_1A223C7E4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1A223C82C(void *a1)
{
  v3 = *(v1 + 16);
  v2 = *(v1 + 24);
  v4 = a1[1];
  ObjectType = swift_getObjectType();
  return (*(v4 + 56))(v3, &off_1F143D738, v2, ObjectType, v4);
}

void sub_1A223C8A0()
{
  v1 = *(**(v0 + OBJC_IVAR____TtC13MediaControls18SessionsController__observers) + 120);

  v3 = v1(v2);

  v4 = *(v3 + 16);
  if (v4)
  {
    v5 = 0;
    v6 = (v3 + 40);
    while (v5 < *(v3 + 16))
    {
      ++v5;
      v7 = *v6;
      ObjectType = swift_getObjectType();
      v9 = *(v7 + 48);
      swift_unknownObjectRetain();
      v9(v0, &off_1F143D738, ObjectType, v7);
      swift_unknownObjectRelease();
      v6 += 2;
      if (v4 == v5)
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_5:
  }
}

double sub_1A223C9B0()
{
  v1 = *(sub_1A22E5998() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = *(v0 + 16);
  v5 = v0 + v2;
  v6 = *(**(v4 + OBJC_IVAR____TtC13MediaControls18SessionsController__observers) + 120);

  v10 = *(v0 + v3);
  v8 = v6(v7);

  v12 = v4;
  v13 = v5;
  v14 = v10;
  sub_1A223737C(sub_1A223CADC, v11, v8);

  return result;
}

uint64_t sub_1A223CADC(void *a1)
{
  v2 = v1[2];
  v3 = v1[3];
  v5 = v1[4];
  v4 = v1[5];
  v6 = a1[1];
  ObjectType = swift_getObjectType();
  return (*(v6 + 40))(v2, &off_1F143D738, v3, v5, v4, ObjectType, v6);
}

void sub_1A223CB64()
{
  v1 = *(**(v0 + OBJC_IVAR____TtC13MediaControls18SessionsController__observers) + 120);

  v3 = v1(v2);

  v4 = *(v3 + 16);
  if (v4)
  {
    v5 = 0;
    v6 = (v3 + 40);
    while (v5 < *(v3 + 16))
    {
      ++v5;
      v7 = *v6;
      ObjectType = swift_getObjectType();
      v9 = *(v7 + 32);
      swift_unknownObjectRetain();
      v9(v0, &off_1F143D738, ObjectType, v7);
      swift_unknownObjectRelease();
      v6 += 2;
      if (v4 == v5)
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_5:
  }
}

double sub_1A223CC7C()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[6];
  v5 = (v0[2] + OBJC_IVAR____TtC13MediaControls18SessionsController_pendingTransition);
  v6 = *v5;
  v7 = v5[1];
  v8 = v5[2];
  v9 = v5[3];
  *v5 = v1;
  v5[1] = v2;
  v5[2] = v3;
  v5[3] = v4;

  return sub_1A221467C(v6, v7, v8, v9);
}

uint64_t sub_1A223CCFC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RoutePickerSnapshot(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A223CD60(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A223CDC8(void *a1)
{
  v3 = *(v1 + 16);
  v2 = *(v1 + 24);
  v4 = a1[1];
  ObjectType = swift_getObjectType();
  return (*(v4 + 24))(v3, &off_1F143D738, v2, ObjectType, v4);
}

uint64_t sub_1A223CE3C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1A223CE9C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SessionsController.State(0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A223CF3C()
{
  sub_1A22E72A8();
  MEMORY[0x1A58DB4F0](0);
  return sub_1A22E72F8();
}

uint64_t sub_1A223CFA8(uint64_t a1)
{
  sub_1A22E72A8();
  MEMORY[0x1A58DB4F0](0);
  return sub_1A22E72F8();
}

uint64_t sub_1A223CFF8@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1A22E6088();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

void (*sub_1A223D064(uint64_t *a1))(char **a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x70uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB088C50, &qword_1A230A3E0) - 8) + 64);
  if (v3)
  {
    v5[10] = swift_coroFrameAlloc();
    v5[11] = swift_coroFrameAlloc();
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v5[10] = malloc(v6);
    v5[11] = malloc(v6);
    v7 = malloc(v6);
  }

  v8 = v7;
  v9 = OBJC_IVAR____TtC13MediaControls24HardwareVolumeController_routingSessionSnapshot;
  v5[12] = v7;
  v5[13] = v9;
  swift_beginAccess();
  sub_1A210AB00(v1 + v9, v8);
  return sub_1A223D184;
}

void sub_1A223D184(char **a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 12);
  v4 = *(*a1 + 13);
  v5 = *(*a1 + 10);
  v6 = *(*a1 + 11);
  v7 = *(*a1 + 9);
  if (a2)
  {
    sub_1A210AB00(*(*a1 + 12), v6);
    sub_1A210AB00(v7 + v4, v5);
    swift_beginAccess();
    sub_1A2109BCC(v6, v7 + v4);
    swift_endAccess();
    sub_1A2109C3C(v5);
    sub_1A210D9B0(v5, &qword_1EB088C50, &qword_1A230A3E0);
  }

  else
  {
    sub_1A210AB00(v7 + v4, v6);
    swift_beginAccess();
    sub_1A2109BCC(v3, v7 + v4);
    swift_endAccess();
    sub_1A2109C3C(v6);
  }

  sub_1A210D9B0(v6, &qword_1EB088C50, &qword_1A230A3E0);
  sub_1A210D9B0(v3, &qword_1EB088C50, &qword_1A230A3E0);
  free(v3);
  free(v6);
  free(v5);

  free(v2);
}

uint64_t sub_1A223D31C(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC13MediaControls24HardwareVolumeController_interactor;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_1A223D388(uint64_t *a1))(uint64_t a1, char a2)
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
  v5 = OBJC_IVAR____TtC13MediaControls24HardwareVolumeController_interactor;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_1A2209C9C;
}

void sub_1A223D428(int a1, uint64_t a2, unint64_t a3)
{
  v4 = v3;
  v8 = sub_1A22E6248();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtC13MediaControls24HardwareVolumeController_eligibilityMap;
  v13 = *(v3 + OBJC_IVAR____TtC13MediaControls24HardwareVolumeController_eligibilityMap);
  if (*(v13 + 16))
  {

    v14 = sub_1A210FF30(a2, a3);
    if (v15)
    {
      v16 = *(v13 + 56);
      v34 = a3;
      v17 = *(v16 + v14);

      a3 = v34;
      if (v17 == (a1 & 1))
      {
        return;
      }
    }

    else
    {
    }
  }

  v18 = *(v4 + v12);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v34 = a2;
  v35 = v18;
  v33 = a1;
  sub_1A223E4D8(a1 & 1, a2, a3, isUniquelyReferenced_nonNull_native);
  v20 = *(v4 + v12);
  *(v4 + v12) = v35;

  sub_1A223E104(v21, v20);
  v23 = v22;

  if ((v23 & 1) == 0)
  {
    sub_1A210ABC8();
  }

  v24 = sub_1A229886C();
  (*(v9 + 16))(v11, v24, v8);

  v25 = sub_1A22E6238();
  v26 = sub_1A22E6A98();

  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v35 = v28;
    *v27 = 136315650;
    v29 = sub_1A22E7388();
    v31 = sub_1A2103450(v29, v30, &v35);

    *(v27 + 4) = v31;
    *(v27 + 12) = 1024;
    *(v27 + 14) = v33 & 1;
    *(v27 + 18) = 2080;
    *(v27 + 20) = sub_1A2103450(v34, a3, &v35);
    _os_log_impl(&dword_1A20FC000, v25, v26, "[%s].setIsEligible: %{BOOL}d for %s", v27, 0x1Cu);
    swift_arrayDestroy();
    MEMORY[0x1A58DCD00](v28, -1, -1);
    MEMORY[0x1A58DCD00](v27, -1, -1);
  }

  (*(v9 + 8))(v11, v8);
}

double sub_1A223D75C(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = sub_1A22E6248();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v76 = &v69 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v71 = &v69 - v9;
  v10 = sub_1A22E5C88();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v73 = &v69 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v70 = &v69 - v15;
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = &v69 - v17;
  v72 = v4;
  v19 = (*(v4 + 216))(v16);
  v77 = v5;
  v74 = v11;
  v75 = v6;
  if (v19)
  {
    v21 = v19;
    v22 = v20;
    type metadata accessor for SessionHardwareButtonEventConsumer(0);
    v23 = *(v11 + 16);
    v23(v18, a1, v10);
    swift_unknownObjectRetain();
    v48 = sub_1A225E404(v18, v21, v22);
    v49 = [objc_allocWithZone(MRUHardwareButtonEventForwarding) initWithConsumer_];
    v50 = *(v2 + OBJC_IVAR____TtC13MediaControls24HardwareVolumeController_assertion);
    *(v2 + OBJC_IVAR____TtC13MediaControls24HardwareVolumeController_assertion) = v49;

    v51 = sub_1A229886C();
    v52 = v75;
    v53 = v71;
    (*(v75 + 16))(v71, v51, v77);
    v54 = v70;
    v23(v70, a1, v10);
    v55 = sub_1A22E6238();
    v56 = sub_1A22E6A98();
    if (os_log_type_enabled(v55, v56))
    {
      v58 = v54;
      v59 = swift_slowAlloc();
      v73 = swift_slowAlloc();
      v79[0] = v73;
      *v59 = 136315394;
      v60 = sub_1A22E7388();
      v62 = sub_1A2103450(v60, v61, v79);
      v76 = v48;
      v63 = v62;

      *(v59 + 4) = v63;
      *(v59 + 12) = 2080;
      v64 = sub_1A22E59B8();
      v66 = v65;
      (*(v74 + 8))(v58, v10);
      v67 = sub_1A2103450(v64, v66, v79);
      v48 = v76;

      *(v59 + 14) = v67;
      _os_log_impl(&dword_1A20FC000, v55, v56, "[%s].requestHardwareControls succeeded for %s", v59, 0x16u);
      v68 = v73;
      swift_arrayDestroy();
      MEMORY[0x1A58DCD00](v68, -1, -1);
      MEMORY[0x1A58DCD00](v59, -1, -1);
      swift_unknownObjectRelease();

      (*(v52 + 8))(v71, v77);
    }

    else
    {
      swift_unknownObjectRelease();

      (*(v74 + 8))(v54, v10);
      (*(v52 + 8))(v53, v77);
    }

    *(v2 + OBJC_IVAR____TtC13MediaControls24HardwareVolumeController_consumer) = v48;
  }

  else
  {
    sub_1A223EA08();
    v24 = swift_allocError();
    swift_willThrow();
    v25 = sub_1A229886C();
    v26 = v76;
    (*(v6 + 16))(v76, v25, v5);
    v27 = v73;
    v28 = v74;
    (*(v74 + 16))(v73, a1, v10);
    v29 = v24;
    v30 = sub_1A22E6238();
    v31 = sub_1A22E6A98();

    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v71 = v10;
      v33 = v32;
      v34 = v28;
      v35 = swift_slowAlloc();
      v79[0] = v35;
      *v33 = 136315650;
      v36 = sub_1A22E7388();
      v38 = sub_1A2103450(v36, v37, v79);

      *(v33 + 4) = v38;
      *(v33 + 12) = 2080;
      v39 = sub_1A22E59B8();
      v41 = v40;
      (*(v34 + 8))(v27, v71);
      v42 = sub_1A2103450(v39, v41, v79);

      *(v33 + 14) = v42;
      *(v33 + 22) = 2080;
      v78 = v24;
      v43 = v24;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB088C98, &qword_1A230A4A0);
      v44 = sub_1A22E6638();
      v46 = sub_1A2103450(v44, v45, v79);

      *(v33 + 24) = v46;
      _os_log_impl(&dword_1A20FC000, v30, v31, "[%s].requestHardwareControls failed for %s - %s", v33, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1A58DCD00](v35, -1, -1);
      MEMORY[0x1A58DCD00](v33, -1, -1);

      (*(v75 + 8))(v76, v77);
    }

    else
    {

      (*(v28 + 8))(v27, v10);
      (*(v6 + 8))(v26, v5);
    }
  }

  return result;
}

uint64_t sub_1A223DE64()
{
  sub_1A210D9B0(v0 + OBJC_IVAR____TtC13MediaControls24HardwareVolumeController_routingSessionSnapshot, &qword_1EB088C50, &qword_1A230A3E0);

  sub_1A210DA3C(v0 + OBJC_IVAR____TtC13MediaControls24HardwareVolumeController_interactor);
  return v0;
}

uint64_t sub_1A223DEDC()
{
  sub_1A210D9B0(v0 + OBJC_IVAR____TtC13MediaControls24HardwareVolumeController_routingSessionSnapshot, &qword_1EB088C50, &qword_1A230A3E0);

  sub_1A210DA3C(v0 + OBJC_IVAR____TtC13MediaControls24HardwareVolumeController_interactor);
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_1A223DF90()
{
  v0 = swift_allocObject();
  v1 = OBJC_IVAR____TtC13MediaControls24HardwareVolumeController_routingSessionSnapshot;
  v2 = sub_1A22E6088();
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  v3 = OBJC_IVAR____TtC13MediaControls24HardwareVolumeController_eligibilityMap;
  *(v0 + v3) = sub_1A223E7AC(MEMORY[0x1E69E7CC0]);
  *(v0 + OBJC_IVAR____TtC13MediaControls24HardwareVolumeController_assertion) = 0;
  *(v0 + OBJC_IVAR____TtC13MediaControls24HardwareVolumeController_consumer) = 0;
  *(v0 + OBJC_IVAR____TtC13MediaControls24HardwareVolumeController_interactor + 8) = 0;
  swift_unknownObjectWeakInit();
  return v0;
}

uint64_t sub_1A223E054()
{
  v1 = OBJC_IVAR____TtC13MediaControls24HardwareVolumeController_routingSessionSnapshot;
  v2 = sub_1A22E6088();
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  v3 = OBJC_IVAR____TtC13MediaControls24HardwareVolumeController_eligibilityMap;
  *(v0 + v3) = sub_1A223E7AC(MEMORY[0x1E69E7CC0]);
  *(v0 + OBJC_IVAR____TtC13MediaControls24HardwareVolumeController_assertion) = 0;
  *(v0 + OBJC_IVAR____TtC13MediaControls24HardwareVolumeController_consumer) = 0;
  *(v0 + OBJC_IVAR____TtC13MediaControls24HardwareVolumeController_interactor + 8) = 0;
  swift_unknownObjectWeakInit();
  return v0;
}

void sub_1A223E104(uint64_t a1, uint64_t a2)
{
  if (a1 != a2 && *(a1 + 16) == *(a2 + 16))
  {
    v4 = 0;
    v5 = 1 << *(a1 + 32);
    v6 = -1;
    if (v5 < 64)
    {
      v6 = ~(-1 << v5);
    }

    v7 = v6 & *(a1 + 64);
    v8 = (v5 + 63) >> 6;
    while (v7)
    {
      v9 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
LABEL_13:
      v12 = v9 | (v4 << 6);
      v13 = (*(a1 + 48) + 16 * v12);
      v14 = *v13;
      v15 = v13[1];
      v16 = *(*(a1 + 56) + v12);

      v17 = sub_1A210FF30(v14, v15);
      v19 = v18;

      if ((v19 & 1) == 0 || v16 != *(*(a2 + 56) + v17))
      {
        return;
      }
    }

    v10 = v4;
    while (1)
    {
      v4 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      if (v4 >= v8)
      {
        return;
      }

      v11 = *(a1 + 64 + 8 * v4);
      ++v10;
      if (v11)
      {
        v9 = __clz(__rbit64(v11));
        v7 = (v11 - 1) & v11;
        goto LABEL_13;
      }
    }

    __break(1u);
  }
}

void sub_1A223E238(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB088CA8, &qword_1A230A4A8);
  v35 = v4;
  v6 = sub_1A22E7058();
  v7 = v6;
  if (*(v5 + 16))
  {
    v34 = v5;
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
      v24 = *(*(v5 + 56) + v20);
      if ((v35 & 1) == 0)
      {
      }

      sub_1A22E72A8();
      sub_1A22E6658();
      v25 = sub_1A22E72F8();
      v26 = -1 << *(v7 + 32);
      v27 = v25 & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + v15) = v24;
      ++*(v7 + 16);
      v5 = v34;
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

    if ((v35 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v2;
    if (v33 >= 64)
    {
      bzero(v9, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
}

unint64_t sub_1A223E4D8(char a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  result = sub_1A210FF30(a2, a3);
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
      sub_1A223E238(v16, a4 & 1);
      result = sub_1A210FF30(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_16:
        result = sub_1A22E7208();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = result;
      sub_1A223E644();
      result = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    *(v21[7] + result) = a1 & 1;
    return result;
  }

  v21[(result >> 6) + 8] |= 1 << result;
  v22 = (v21[6] + 16 * result);
  *v22 = a2;
  v22[1] = a3;
  *(v21[7] + result) = a1 & 1;
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

void sub_1A223E644()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB088CA8, &qword_1A230A4A8);
  v2 = *v0;
  v3 = sub_1A22E7048();
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
        v20 = *v18;
        v19 = v18[1];
        LOBYTE(v18) = *(*(v2 + 56) + v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = v20;
        v21[1] = v19;
        *(*(v4 + 56) + v17) = v18;
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

unint64_t sub_1A223E7AC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB088CA8, &qword_1A230A4A8);
    v3 = sub_1A22E7078();

    for (i = (a1 + 48); ; i += 24)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_1A210FF30(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + result) = v7;
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

uint64_t type metadata accessor for HardwareVolumeController(uint64_t a1)
{
  result = qword_1ED951658;
  if (!qword_1ED951658)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1A223E8FC(uint64_t a1)
{
  sub_1A223E9B0(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1A223E9B0(uint64_t a1)
{
  if (!qword_1ED950698)
  {
    sub_1A22E6088();
    v1 = sub_1A22E6D68();
    if (!v2)
    {
      atomic_store(v1, &qword_1ED950698);
    }
  }
}

unint64_t sub_1A223EA08()
{
  result = qword_1EB08BA78;
  if (!qword_1EB08BA78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB08BA78);
  }

  return result;
}

unint64_t sub_1A223EA5C()
{
  result = qword_1EB088CA0;
  if (!qword_1EB088CA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB088CA0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for HardwareVolumeController.RequestControlsError(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for HardwareVolumeController.RequestControlsError(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

unint64_t sub_1A223EB94()
{
  result = qword_1EB08BA80[0];
  if (!qword_1EB08BA80[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB08BA80);
  }

  return result;
}

id sub_1A223EBF8@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 32);
  v4 = *(v1 + 40);
  v5 = *(v1 + 48);
  *a1 = v2;
  *(a1 + 8) = *(v1 + 16);
  *(a1 + 24) = v3;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return v2;
}

__n128 sub_1A223EC24(uint64_t a1)
{
  v3 = *(a1 + 16);
  *(v1 + 8) = *a1;
  *(v1 + 24) = v3;
  result = *(a1 + 32);
  *(v1 + 40) = result;
  return result;
}

void sub_1A223EC6C(double a1, double a2, double a3, double a4)
{
  v4[7] = a1;
  v4[8] = a2;
  v4[9] = a3;
  v4[10] = a4;
}

__n128 sub_1A223ECE4@<Q0>(uint64_t a1@<X0>, unsigned __int8 a2@<W1>, __n128 *a3@<X8>, double a4@<D0>, double a5@<D1>, double a6@<D2>, double a7@<D3>, double a8@<D4>, double a9@<D5>)
{
  v9 = *a1;
  v10 = *(a1 + 24);
  v11 = *(a1 + 32);
  v12 = *(a1 + 40);
  a3->n128_f64[0] = a4;
  a3->n128_u64[1] = v9;
  result = *(a1 + 8);
  a3[1] = result;
  a3[2].n128_u64[0] = v10;
  a3[2].n128_u32[2] = v11;
  a3[3].n128_u64[0] = v12;
  a3[3].n128_f64[1] = a5;
  a3[4].n128_f64[0] = a6;
  a3[4].n128_f64[1] = a7;
  a3[5].n128_f64[0] = a8;
  a3[5].n128_f64[1] = a9;
  a3[6].n128_u8[0] = a2;
  return result;
}

uint64_t sub_1A223ED20(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 80);
  v11[4] = *(a1 + 64);
  v11[5] = v2;
  v12 = *(a1 + 96);
  v3 = *(a1 + 16);
  v11[0] = *a1;
  v11[1] = v3;
  v4 = *(a1 + 48);
  v11[2] = *(a1 + 32);
  v11[3] = v4;
  v5 = *(a2 + 16);
  v13[0] = *a2;
  v13[1] = v5;
  v6 = *(a2 + 32);
  v7 = *(a2 + 48);
  v8 = *(a2 + 64);
  v9 = *(a2 + 80);
  v14 = *(a2 + 96);
  v13[4] = v8;
  v13[5] = v9;
  v13[2] = v6;
  v13[3] = v7;
  return sub_1A22406D4(v11, v13) & 1;
}

__int128 *sub_1A223ED8C()
{
  if (qword_1ED952120 != -1)
  {
    swift_once();
  }

  return &xmmword_1ED953488;
}

id sub_1A223EDDC(uint64_t a1)
{
  v3 = v1 + OBJC_IVAR____TtC13MediaControls11ArtworkView_style;
  result = swift_beginAccess();
  v5 = *(v3 + 5);
  v33 = *(v3 + 4);
  v34 = v5;
  v35 = v3[96];
  v6 = *(v3 + 1);
  v29 = *v3;
  v30 = v6;
  v7 = *(v3 + 3);
  v31 = *(v3 + 2);
  v32 = v7;
  v7.n128_u64[0] = v29;
  if (*&v29 != *a1 || (v24 = *(&v29 + 1), v25 = v30, v26 = v31, v27 = DWORD2(v31), v28 = v32.n128_u64[0], v8 = *(a1 + 24), v23[3] = *(a1 + 8), v23[4] = v8, v23[5] = *(a1 + 40), sub_1A211C42C(&v29, v22), v9 = sub_1A2220D30(), result = sub_1A211C464(&v29), (v9 & 1) == 0) || (v7.n128_u64[0] = v32.n128_u64[1], v32.n128_f64[1] != *(a1 + 56)) || (v7.n128_u64[0] = *(a1 + 64), *&v33 != v7.n128_f64[0]) || (v7.n128_u64[0] = *(a1 + 72), *(&v33 + 1) != v7.n128_f64[0]) || (v7.n128_u64[0] = *(a1 + 80), *&v34 != v7.n128_f64[0]) || (v7.n128_u64[0] = *(&v34 + 1), *(&v34 + 1) != *(a1 + 88)) || v35 != (*(a1 + 96) & 1))
  {
    v10 = *(v1 + OBJC_IVAR____TtC13MediaControls11ArtworkView_shadowView);
    v11 = MEMORY[0x1E69E7D40];
    v12 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x88);
    v13 = v1;
    v12(&v18, result, v7);
    v23[0] = v19;
    v23[1] = v20;
    v23[2] = v21;
    v14 = (*((*v11 & *v10) + 0x60))(v23);
    v15 = *(v1 + OBJC_IVAR____TtC13MediaControls11ArtworkView_placeholderImageView);
    (v12)(v22, v14);
    sub_1A211C464(v22);
    v16 = [objc_opt_self() configurationWithPointSize_];
    [v15 setSymbolConfiguration_];

    v17 = (*((*v11 & *v13) + 0xD8))([v13 setNeedsLayout]);
    [*(v13 + OBJC_IVAR____TtC13MediaControls11ArtworkView_imageView) _setContinuousCornerRadius_];
    [v10 _setContinuousCornerRadius_];
    [*(v13 + OBJC_IVAR____TtC13MediaControls11ArtworkView_backgroundView) _setContinuousCornerRadius_];
    return sub_1A2240280();
  }

  return result;
}

uint64_t sub_1A223F0C8(uint64_t a1)
{
  v3 = v1 + OBJC_IVAR____TtC13MediaControls11ArtworkView_style;
  swift_beginAccess();
  v4 = *(v3 + 80);
  v15 = *(v3 + 64);
  v16 = v4;
  v17 = *(v3 + 96);
  v5 = *(v3 + 16);
  v12[0] = *v3;
  v12[1] = v5;
  v6 = *(v3 + 48);
  v13 = *(v3 + 32);
  v14 = v6;
  v18[0] = v12[0];
  v18[1] = v5;
  v18[2] = v13;
  v18[3] = v6;
  v18[4] = v15;
  v18[5] = v4;
  v19 = v17;
  v7 = *(a1 + 16);
  *v3 = *a1;
  *(v3 + 16) = v7;
  *(v3 + 96) = *(a1 + 96);
  v8 = *(a1 + 80);
  *(v3 + 64) = *(a1 + 64);
  *(v3 + 80) = v8;
  v9 = *(a1 + 48);
  *(v3 + 32) = *(a1 + 32);
  *(v3 + 48) = v9;
  sub_1A211C42C(v12, v11);
  sub_1A211C42C(a1, v11);
  sub_1A211C464(v18);
  sub_1A223EDDC(v12);
  sub_1A211C464(v12);
  return sub_1A211C464(a1);
}

void (*sub_1A223F1A0(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x368uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = (v3 + 312);
  *(v3 + 856) = v1;
  v6 = OBJC_IVAR____TtC13MediaControls11ArtworkView_style;
  *(v3 + 864) = OBJC_IVAR____TtC13MediaControls11ArtworkView_style;
  v7 = (v1 + v6);
  swift_beginAccess();
  v8 = *v7;
  v9 = v7[2];
  *(v4 + 16) = v7[1];
  *(v4 + 32) = v9;
  *v4 = v8;
  v10 = v7[3];
  v11 = v7[4];
  v12 = v7[5];
  *(v4 + 96) = *(v7 + 96);
  *(v4 + 64) = v11;
  *(v4 + 80) = v12;
  *(v4 + 48) = v10;
  v14 = v7[4];
  v13 = v7[5];
  v15 = v7[3];
  *(v4 + 408) = *(v7 + 96);
  v5[4] = v14;
  v5[5] = v13;
  v5[3] = v15;
  v16 = *v7;
  v17 = v7[2];
  v5[1] = v7[1];
  v5[2] = v17;
  *v5 = v16;
  sub_1A211C42C(v4, v4 + 416);
  return sub_1A223F294;
}

void sub_1A223F294(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *a1 + 312;
  v4 = *a1 + 520;
  v5 = (*(v2 + 856) + *(v2 + 864));
  v6 = *(*a1 + 328);
  if (a2)
  {
    *(v2 + 624) = *v3;
    *(v2 + 640) = v6;
    *(v2 + 720) = *(v3 + 96);
    v7 = *(v3 + 80);
    *(v2 + 688) = *(v3 + 64);
    *(v2 + 704) = v7;
    v8 = *(v3 + 48);
    v10 = *v3;
    v9 = *(v3 + 16);
    v11 = *(v3 + 32);
    *(v2 + 656) = v11;
    *(v2 + 672) = v8;
    v12 = *v5;
    v13 = v5[1];
    *(v2 + 136) = v5[2];
    *(v2 + 120) = v13;
    *(v2 + 104) = v12;
    v14 = v5[3];
    v15 = v5[4];
    v16 = v5[5];
    *(v2 + 200) = *(v5 + 96);
    *(v2 + 184) = v16;
    *(v2 + 168) = v15;
    *(v2 + 152) = v14;
    v17 = *v5;
    v18 = v5[2];
    *(v4 + 16) = v5[1];
    *(v4 + 32) = v18;
    *v4 = v17;
    v19 = v5[3];
    v20 = v5[5];
    v21 = *(v5 + 96);
    *(v4 + 64) = v5[4];
    *(v4 + 80) = v20;
    *(v4 + 48) = v19;
    *(v4 + 96) = v21;
    v5[1] = v9;
    v5[2] = v11;
    *v5 = v10;
    v22 = *(v3 + 48);
    v23 = *(v3 + 64);
    v24 = *(v3 + 80);
    *(v5 + 96) = *(v3 + 96);
    v5[4] = v23;
    v5[5] = v24;
    v5[3] = v22;
    sub_1A211C42C(v2 + 624, v2 + 728);
    sub_1A211C42C(v2 + 624, v2 + 728);
    sub_1A211C42C(v2 + 104, v2 + 728);
    sub_1A211C464(v4);
    sub_1A223EDDC(v2 + 104);
    sub_1A211C464(v2 + 104);
    sub_1A211C464(v2 + 624);
    v25 = *(v3 + 80);
    *(v2 + 480) = *(v3 + 64);
    *(v2 + 496) = v25;
    *(v2 + 512) = *(v3 + 96);
    v26 = *(v3 + 16);
    *(v2 + 416) = *v3;
    *(v2 + 432) = v26;
    v27 = *(v3 + 48);
    *(v2 + 448) = *(v3 + 32);
    *(v2 + 464) = v27;
    v28 = v2 + 416;
  }

  else
  {
    *v4 = *v3;
    *(v4 + 16) = v6;
    *(v4 + 96) = *(v3 + 96);
    v29 = *(v3 + 80);
    *(v4 + 64) = *(v3 + 64);
    *(v4 + 80) = v29;
    v30 = *(v3 + 48);
    v32 = *v3;
    v31 = *(v3 + 16);
    v33 = *(v3 + 32);
    *(v4 + 32) = v33;
    *(v4 + 48) = v30;
    v34 = *v5;
    v35 = v5[2];
    *(v2 + 224) = v5[1];
    *(v2 + 240) = v35;
    *(v2 + 208) = v34;
    v36 = v5[3];
    v37 = v5[4];
    v38 = v5[5];
    *(v2 + 304) = *(v5 + 96);
    *(v2 + 272) = v37;
    *(v2 + 288) = v38;
    *(v2 + 256) = v36;
    v39 = *v5;
    v40 = v5[2];
    *(v2 + 432) = v5[1];
    *(v2 + 448) = v40;
    *(v2 + 416) = v39;
    v41 = v5[3];
    v42 = v5[5];
    v43 = *(v5 + 96);
    *(v2 + 480) = v5[4];
    *(v2 + 496) = v42;
    *(v2 + 464) = v41;
    *(v2 + 512) = v43;
    v5[1] = v31;
    v5[2] = v33;
    *v5 = v32;
    v44 = *(v3 + 48);
    v45 = *(v3 + 64);
    v46 = *(v3 + 80);
    *(v5 + 96) = *(v3 + 96);
    v5[4] = v45;
    v5[5] = v46;
    v5[3] = v44;
    sub_1A211C42C(v2 + 208, v2 + 624);
    sub_1A211C42C(v4, v2 + 624);
    sub_1A211C464(v2 + 416);
    sub_1A223EDDC(v2 + 208);
    sub_1A211C464(v2 + 208);
    v28 = v4;
  }

  sub_1A211C464(v28);

  free(v2);
}

uint64_t sub_1A223F554()
{
  v1 = (v0 + OBJC_IVAR____TtC13MediaControls11ArtworkView_viewModel);
  swift_beginAccess();
  v2 = *v1;
  v3 = v1[2];

  v4 = v3;
  return v2;
}

double sub_1A223F5C0(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = (v3 + OBJC_IVAR____TtC13MediaControls11ArtworkView_viewModel);
  swift_beginAccess();
  v8 = v7[2];
  *v7 = a1;
  v7[1] = a2;
  v7[2] = a3;

  v9 = a3;

  sub_1A22400D8();

  return result;
}

id (*sub_1A223F660(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1A223F6C4;
}

id sub_1A223F6C4(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return sub_1A22400D8();
  }

  return result;
}

id sub_1A223F6F8()
{
  v0 = objc_allocWithZone(MEMORY[0x1E69DCAE0]);

  return [v0 init];
}

__int128 *sub_1A223F730(uint64_t a1, uint64_t a2)
{
  type metadata accessor for ShadowView(0, a2);
  if (qword_1ED952120 != -1)
  {
    swift_once();
  }

  v4[0] = *(&xmmword_1ED953488 + 8);
  v4[1] = *(&xmmword_1ED953498 + 8);
  v4[2] = *(&xmmword_1ED9534A8 + 8);
  v2 = *(&xmmword_1ED953488 + 1);
  return sub_1A2220FCC(v4);
}

double sub_1A223F7B8()
{
  v1 = OBJC_IVAR____TtC13MediaControls11ArtworkView_contentScale;
  swift_beginAccess();
  return *(v0 + v1);
}

id sub_1A223F7FC(double a1)
{
  v3 = OBJC_IVAR____TtC13MediaControls11ArtworkView_contentScale;
  v4 = swift_beginAccess();
  *(v1 + v3) = a1;
  v5 = (*((*MEMORY[0x1E69E7D40] & *v1) + 0xD8))(v4);
  [*(v1 + OBJC_IVAR____TtC13MediaControls11ArtworkView_imageView) _setContinuousCornerRadius_];
  [*(v1 + OBJC_IVAR____TtC13MediaControls11ArtworkView_shadowView) _setContinuousCornerRadius_];
  return [*(v1 + OBJC_IVAR____TtC13MediaControls11ArtworkView_backgroundView) _setContinuousCornerRadius_];
}

id (*sub_1A223F8CC(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1A223F930;
}

id sub_1A223F930(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v5 = *(a1 + 24);
    v6 = (*((*MEMORY[0x1E69E7D40] & *v5) + 0xD8))(result);
    [*(v5 + OBJC_IVAR____TtC13MediaControls11ArtworkView_imageView) _setContinuousCornerRadius_];
    [*(v5 + OBJC_IVAR____TtC13MediaControls11ArtworkView_shadowView) _setContinuousCornerRadius_];
    v7 = *(v5 + OBJC_IVAR____TtC13MediaControls11ArtworkView_backgroundView);

    return [v7 _setContinuousCornerRadius_];
  }

  return result;
}

void *sub_1A223FA04(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v10 = OBJC_IVAR____TtC13MediaControls11ArtworkView_style;
  if (qword_1ED952120 != -1)
  {
    swift_once();
  }

  v51[2] = xmmword_1ED9534A8;
  v51[3] = *&qword_1ED9534B8;
  v51[4] = xmmword_1ED9534C8;
  v51[5] = unk_1ED9534D8;
  v52 = byte_1ED9534E8;
  v51[0] = xmmword_1ED953488;
  v51[1] = xmmword_1ED953498;
  v46 = *(&xmmword_1ED953488 + 1);
  v47 = xmmword_1ED953498;
  v48 = xmmword_1ED9534A8;
  v49 = DWORD2(xmmword_1ED9534A8);
  v50 = qword_1ED9534B8;
  memmove(&v5[v10], &xmmword_1ED953488, 0x61uLL);
  v11 = &v5[OBJC_IVAR____TtC13MediaControls11ArtworkView_viewModel];
  *(v11 + 1) = 0;
  *(v11 + 2) = 0;
  *v11 = 0;
  v12 = OBJC_IVAR____TtC13MediaControls11ArtworkView_backgroundView;
  v13 = objc_allocWithZone(MEMORY[0x1E69DD250]);
  sub_1A211C42C(v51, v44);
  sub_1A211C42C(v51, v44);
  *&v5[v12] = [v13 init];
  v14 = OBJC_IVAR____TtC13MediaControls11ArtworkView_placeholderImageView;
  *&v5[v14] = [objc_allocWithZone(MEMORY[0x1E69DCAE0]) init];
  v15 = OBJC_IVAR____TtC13MediaControls11ArtworkView_shadowView;
  type metadata accessor for ShadowView(0, v16);
  *&v5[v15] = sub_1A2220FCC(&v46);
  v17 = OBJC_IVAR____TtC13MediaControls11ArtworkView_imageView;
  v18 = [objc_allocWithZone(MEMORY[0x1E69DCAE0]) init];
  *&v5[v17] = v18;
  *&v5[OBJC_IVAR____TtC13MediaControls11ArtworkView_contentScale] = 0x3FF0000000000000;
  v39.receiver = v5;
  v39.super_class = type metadata accessor for ArtworkView(v18, v19);
  v20 = objc_msgSendSuper2(&v39, sel_initWithFrame_, a1, a2, a3, a4);
  [v20 setAccessibilityIgnoresInvertColors_];
  v21 = OBJC_IVAR____TtC13MediaControls11ArtworkView_backgroundView;
  [*(v20 + OBJC_IVAR____TtC13MediaControls11ArtworkView_backgroundView) setUserInteractionEnabled_];
  v22 = *(v20 + v21);
  sub_1A225C9E8(v22, v23);

  [v20 addSubview_];
  v24 = OBJC_IVAR____TtC13MediaControls11ArtworkView_placeholderImageView;
  [*(v20 + OBJC_IVAR____TtC13MediaControls11ArtworkView_placeholderImageView) setUserInteractionEnabled_];
  [*(v20 + v24) setContentMode_];
  [v20 addSubview_];
  v25 = OBJC_IVAR____TtC13MediaControls11ArtworkView_shadowView;
  [*(v20 + OBJC_IVAR____TtC13MediaControls11ArtworkView_shadowView) setUserInteractionEnabled_];
  [v20 addSubview_];
  v26 = OBJC_IVAR____TtC13MediaControls11ArtworkView_imageView;
  [*(v20 + OBJC_IVAR____TtC13MediaControls11ArtworkView_imageView) setUserInteractionEnabled_];
  [*(v20 + v26) setContentMode_];
  [*(v20 + v26) setClipsToBounds_];
  [v20 addSubview_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB088D20, &qword_1A230A680);
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_1A2308E80;
  v28 = sub_1A22E6298();
  v29 = MEMORY[0x1E69DC0F8];
  *(v27 + 32) = v28;
  *(v27 + 40) = v29;
  MEMORY[0x1A58DAE60](v27, sel_userInterfaceStyleChanged);
  swift_unknownObjectRelease();

  v31 = *(v20 + v25);
  v32 = MEMORY[0x1E69E7D40];
  v33 = *((*MEMORY[0x1E69E7D40] & *v20) + 0x88);
  v33(&v40, v30);
  v45[0] = v41;
  v45[1] = v42;
  v45[2] = v43;
  v34 = (*((*v32 & *v31) + 0x60))(v45);
  v35 = *(v20 + v24);
  v33(v44, v34);
  sub_1A211C464(v44);
  v36 = [objc_opt_self() configurationWithPointSize_];
  [v35 setSymbolConfiguration_];

  v37 = (*((*v32 & *v20) + 0xD8))([v20 setNeedsLayout]);
  [*(v20 + v26) _setContinuousCornerRadius_];
  [*(v20 + v25) _setContinuousCornerRadius_];
  [*(v20 + v21) _setContinuousCornerRadius_];

  return v20;
}

double sub_1A223FF08()
{
  v1 = v0;
  v2 = MEMORY[0x1E69E7D40];
  v3 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x88))(v14);
  (*((*v2 & *v0) + 0xA0))(v3);
  v5 = v4;

  if (v5)
  {
    [v5 size];
    v7 = v6;
    v9 = v8;
  }

  else
  {
    v7 = 0.0;
    v9 = 0.0;
  }

  sub_1A224002C(v7, v9);
  v11 = v10;
  v12 = sub_1A211C464(v14);
  return v11 * (*((*v2 & *v1) + 0xB8))(v12);
}

id sub_1A22400D8()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR____TtC13MediaControls11ArtworkView_imageView];
  v3 = *((*MEMORY[0x1E69E7D40] & *v0) + 0xA0);
  v3();
  v5 = v4;

  [v2 setImage_];

  v6 = *&v1[OBJC_IVAR____TtC13MediaControls11ArtworkView_placeholderImageView];
  v7 = (v3)();
  v9 = v8;

  if (v9)
  {
    v11 = sub_1A22DC57C(v7, v9);
  }

  else
  {
    v11 = 0;
  }

  [v6 setImage_];

  sub_1A2115288(0, &qword_1ED94E980, 0x1E69DD250);
  sub_1A2126CF0(v15);
  sub_1A229BD14(0x10000, v16);
  sub_1A2116928(v15);
  v12 = swift_allocObject();
  *(v12 + 16) = v1;
  v13 = v1;
  sub_1A21179EC(v16, sub_1A2240C0C, v12, 0, 0);

  sub_1A2116928(v16);
  return [v13 setNeedsLayout];
}

id sub_1A2240280()
{
  v1 = *(v0 + OBJC_IVAR____TtC13MediaControls11ArtworkView_shadowView);
  v2 = MEMORY[0x1E69E7D40];
  v3 = *((*MEMORY[0x1E69E7D40] & *v0) + 0xA0);
  v3();
  v5 = v4;

  if (v5)
  {

    v6 = 1.0;
  }

  else
  {
    v6 = 0.0;
  }

  v7 = [v1 setAlpha_];
  v8 = *(v0 + OBJC_IVAR____TtC13MediaControls11ArtworkView_backgroundView);
  (v3)(v7);
  v10 = v9;

  if (v10)
  {

    v11 = 0.0;
  }

  else
  {
    v11 = 1.0;
  }

  v12 = [v8 setAlpha_];
  v13 = *(v0 + OBJC_IVAR____TtC13MediaControls11ArtworkView_placeholderImageView);
  (*((*v2 & *v0) + 0x88))(v19, v12);
  v14 = sub_1A211C464(v19);
  v15 = 0.0;
  if (v20)
  {
    (v3)(v14);
    v17 = v16;

    if (v17)
    {
    }

    else
    {
      v15 = 1.0;
    }
  }

  return [v13 setAlpha_];
}

id sub_1A22404DC(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for ArtworkView(a1, a2);
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

__n128 sub_1A22405A8(uint64_t a1, uint64_t a2)
{
  v2 = sub_1A2220D34(a1, a2);
  v3 = sub_1A21275D0();
  sub_1A2220C34(v2, &v6, 0.0, 2.0, 4.0, 0.3, v3);
  *&xmmword_1ED953488 = 0x4020000000000000;
  *(&xmmword_1ED953488 + 1) = v6;
  xmmword_1ED953498 = v7;
  *&xmmword_1ED9534A8 = v8;
  DWORD2(xmmword_1ED9534A8) = v9;
  qword_1ED9534B8 = v10;
  result = *MEMORY[0x1E69DDCE0];
  v5 = *(MEMORY[0x1E69DDCE0] + 16);
  unk_1ED9534C0 = *MEMORY[0x1E69DDCE0];
  *(&xmmword_1ED9534C8 + 8) = v5;
  qword_1ED9534E0 = 0x4036000000000000;
  byte_1ED9534E8 = 0;
  return result;
}

uint64_t sub_1A2240658@<X0>(uint64_t a1@<X8>)
{
  v2 = a1;
  if (qword_1ED952120 != -1)
  {
    swift_once();
    v2 = a1;
  }

  return sub_1A211C42C(&xmmword_1ED953488, v2);
}

uint64_t sub_1A22406D4(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  if ((sub_1A2220D30() & 1) == 0)
  {
    goto LABEL_10;
  }

  v4 = 0;
  if (*(a1 + 56) != *(a2 + 56) || *(a1 + 64) != *(a2 + 64) || *(a1 + 72) != *(a2 + 72) || *(a1 + 80) != *(a2 + 80))
  {
    return v4 & 1;
  }

  if (*(a1 + 88) == *(a2 + 88))
  {
    v4 = *(a1 + 96) ^ *(a2 + 96) ^ 1;
  }

  else
  {
LABEL_10:
    v4 = 0;
  }

  return v4 & 1;
}

uint64_t sub_1A22407C4(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, void *a6)
{
  if (a2)
  {
    if (!a5)
    {
      return 0;
    }

    if (a1 != a4 || a2 != a5)
    {
      v6 = a3;
      v7 = a6;
      v8 = sub_1A22E71E8();
      a6 = v7;
      a3 = v6;
      if ((v8 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (a5)
  {
    return 0;
  }

  if (a3)
  {
    if (a6)
    {
      v9 = a3;
      v10 = a6;
      sub_1A2115288(0, &qword_1ED94E960, 0x1E69DCAB8);
      v11 = v10;
      v12 = v9;
      v13 = sub_1A22E6C88();

      if (v13)
      {
        return 1;
      }
    }
  }

  else if (!a6)
  {
    return 1;
  }

  return 0;
}

void sub_1A2240894()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC13MediaControls11ArtworkView_style;
  if (qword_1ED952120 != -1)
  {
    swift_once();
  }

  v16[2] = xmmword_1ED9534A8;
  v16[3] = *&qword_1ED9534B8;
  v16[4] = xmmword_1ED9534C8;
  v16[5] = unk_1ED9534D8;
  v17 = byte_1ED9534E8;
  v16[0] = xmmword_1ED953488;
  v16[1] = xmmword_1ED953498;
  v11 = *(&xmmword_1ED953488 + 1);
  v12 = xmmword_1ED953498;
  v13 = xmmword_1ED9534A8;
  v14 = DWORD2(xmmword_1ED9534A8);
  v15 = qword_1ED9534B8;
  memmove((v1 + v2), &xmmword_1ED953488, 0x61uLL);
  v3 = (v1 + OBJC_IVAR____TtC13MediaControls11ArtworkView_viewModel);
  v3[1] = 0;
  v3[2] = 0;
  *v3 = 0;
  v4 = OBJC_IVAR____TtC13MediaControls11ArtworkView_backgroundView;
  v5 = objc_allocWithZone(MEMORY[0x1E69DD250]);
  sub_1A211C42C(v16, v10);
  sub_1A211C42C(v16, v10);
  *(v1 + v4) = [v5 init];
  v6 = OBJC_IVAR____TtC13MediaControls11ArtworkView_placeholderImageView;
  *(v1 + v6) = [objc_allocWithZone(MEMORY[0x1E69DCAE0]) init];
  v7 = OBJC_IVAR____TtC13MediaControls11ArtworkView_shadowView;
  type metadata accessor for ShadowView(0, v8);
  *(v1 + v7) = sub_1A2220FCC(&v11);
  v9 = OBJC_IVAR____TtC13MediaControls11ArtworkView_imageView;
  *(v1 + v9) = [objc_allocWithZone(MEMORY[0x1E69DCAE0]) init];
  *(v1 + OBJC_IVAR____TtC13MediaControls11ArtworkView_contentScale) = 0x3FF0000000000000;
  sub_1A22E7028();
  __break(1u);
}

__n128 __swift_memcpy97_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_1A2240A84(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 97))
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

uint64_t sub_1A2240ACC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 96) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 97) = 1;
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

    *(result + 97) = 0;
    if (a2)
    {
      goto LABEL_8;
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

uint64_t sub_1A2240B4C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 24))
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

uint64_t sub_1A2240BA8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

id sub_1A2240C0C()
{
  v1 = *(v0 + 16);
  v2 = sub_1A2240280();
  v3 = (*((*MEMORY[0x1E69E7D40] & *v1) + 0xD8))(v2);
  [*(v1 + OBJC_IVAR____TtC13MediaControls11ArtworkView_imageView) _setContinuousCornerRadius_];
  [*(v1 + OBJC_IVAR____TtC13MediaControls11ArtworkView_shadowView) _setContinuousCornerRadius_];
  v4 = *(v1 + OBJC_IVAR____TtC13MediaControls11ArtworkView_backgroundView);

  return [v4 _setContinuousCornerRadius_];
}

BOOL sub_1A2240CCC(uint64_t a1, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  v3 = v2 == 0;
  return !a2 || v3;
}

void sub_1A2240D14()
{
  v0 = *MEMORY[0x1E69DDD28];
  sub_1A211476C();
  qword_1ED953588 = v1;
  unk_1ED953590 = v2;
  dword_1ED953598 = v3;
  byte_1ED95359C = v4 & 1;
  qword_1ED9535A0 = v5;
}

uint64_t *sub_1A2240D58()
{
  if (qword_1ED952320 != -1)
  {
    swift_once();
  }

  return &qword_1ED953588;
}

id sub_1A2240DA8()
{
  if (qword_1ED952320 != -1)
  {
    swift_once();
  }

  v0 = qword_1ED953588;

  return v0;
}

void sub_1A2240E54(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
}

uint64_t sub_1A2240E8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1 == a5 && a2 == a6 || (v12 = sub_1A22E71E8(), result = 0, (v12 & 1) != 0))
  {
    if (a4)
    {
      if (a8 && (a3 == a7 && a4 == a8 || (sub_1A22E71E8() & 1) != 0))
      {
        return 1;
      }
    }

    else if (!a8)
    {
      return 1;
    }

    return 0;
  }

  return result;
}

uint64_t sub_1A2240F30(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v5 = a2[2];
  v4 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (v7 = sub_1A22E71E8(), result = 0, (v7 & 1) != 0))
  {
    if (v3)
    {
      if (v4)
      {
        v9 = v2 == v5 && v3 == v4;
        if (v9 || (sub_1A22E71E8() & 1) != 0)
        {
          return 1;
        }
      }
    }

    else if (!v4)
    {
      return 1;
    }

    return 0;
  }

  return result;
}

void (*sub_1A2240FD0(uint64_t **a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x48uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC13MediaControls30MediaControlsModuleRouteButton_viewModel;
  v3[7] = v1;
  v3[8] = v5;
  v6 = (v1 + v5);
  swift_beginAccess();
  v7 = *v6;
  v8 = v6[1];
  v9 = v6[2];
  v10 = v6[3];
  *v4 = *v6;
  v4[1] = v8;
  v4[2] = v9;
  v4[3] = v10;
  sub_1A2117FA8(v7, v8, v9, v10);
  return sub_1A2241074;
}

void sub_1A2241074(uint64_t **a1, char a2)
{
  v3 = *a1;
  v4 = ((*a1)[7] + (*a1)[8]);
  v5 = **a1;
  v6 = v3[1];
  v7 = v3[2];
  v8 = v3[3];
  v9 = *v4;
  v10 = v4[1];
  v11 = v4[2];
  v12 = v4[3];
  *v4 = v5;
  v4[1] = v6;
  v4[2] = v7;
  v4[3] = v8;
  if (a2)
  {
    sub_1A2117FA8(v5, v6, v7, v8);
    sub_1A2118F38(v9, v10, v11, v12);
    sub_1A221467C(v9, v10, v11, v12);
    v13 = *v3;
    v14 = v3[1];
    v15 = v3[2];
    v16 = v3[3];
  }

  else
  {
    sub_1A2118F38(v9, v10, v11, v12);
    v13 = v9;
    v14 = v10;
    v15 = v11;
    v16 = v12;
  }

  sub_1A221467C(v13, v14, v15, v16);

  free(v3);
}

id sub_1A2241144()
{
  v0 = objc_allocWithZone(MEMORY[0x1E69DCC10]);

  return [v0 init];
}

id sub_1A224117C(char a1)
{
  v3 = OBJC_IVAR____TtC13MediaControls30MediaControlsModuleRouteButton_showLabel;
  swift_beginAccess();
  *(v1 + v3) = a1;
  v4 = sub_1A2241B30();
  v5 = *(v1 + OBJC_IVAR____TtC13MediaControls30MediaControlsModuleRouteButton_label);
  v6 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x98);
  if (v6(v4))
  {
    v7 = 1.0;
  }

  else
  {
    v7 = 0.0;
  }

  v8 = [v5 setAlpha_];
  v9 = *(v1 + OBJC_IVAR____TtC13MediaControls30MediaControlsModuleRouteButton_imageView);
  if (v6(v8))
  {
    v10 = 0.0;
  }

  else
  {
    v10 = 1.0;
  }

  [v9 setAlpha_];
  return [v1 setNeedsLayout];
}

id (*sub_1A224127C(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1A22412E0;
}

id sub_1A22412E0(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v5 = *(a1 + 24);
    v6 = sub_1A2241B30();
    v7 = *(v5 + OBJC_IVAR____TtC13MediaControls30MediaControlsModuleRouteButton_label);
    v8 = *((*MEMORY[0x1E69E7D40] & *v5) + 0x98);
    if (v8(v6))
    {
      v9 = 1.0;
    }

    else
    {
      v9 = 0.0;
    }

    v10 = [v7 setAlpha_];
    v11 = *(v5 + OBJC_IVAR____TtC13MediaControls30MediaControlsModuleRouteButton_imageView);
    if (v8(v10))
    {
      v12 = 0.0;
    }

    else
    {
      v12 = 1.0;
    }

    [v11 setAlpha_];

    return [v5 setNeedsLayout];
  }

  return result;
}

double sub_1A2241434(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC13MediaControls30MediaControlsModuleRouteButton_visualStylingProvider;
  swift_beginAccess();
  *(v1 + v3) = a1;

  (*((*MEMORY[0x1E69E7D40] & *v1) + 0xF0))(v4);

  return result;
}

uint64_t (*sub_1A22414D4(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1A2241538;
}

uint64_t sub_1A2241538(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return (*((*MEMORY[0x1E69E7D40] & **(a1 + 24)) + 0xF0))(result);
  }

  return result;
}

void *sub_1A224159C()
{
  v1 = OBJC_IVAR____TtC13MediaControls30MediaControlsModuleRouteButton_contentMetrics;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_1A22415E8(void *a1)
{
  v3 = OBJC_IVAR____TtC13MediaControls30MediaControlsModuleRouteButton_contentMetrics;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  v5 = a1;

  sub_1A2241B30();
}

id (*sub_1A2241650(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1A22416B4;
}

id sub_1A22416B4(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return sub_1A2241B30();
  }

  return result;
}

void *sub_1A22416E8(double a1, double a2, double a3, double a4)
{
  v9 = &v4[OBJC_IVAR____TtC13MediaControls30MediaControlsModuleRouteButton_viewModel];
  *v9 = 0u;
  v9[1] = 0u;
  v10 = OBJC_IVAR____TtC13MediaControls30MediaControlsModuleRouteButton_imageView;
  *&v4[v10] = [objc_allocWithZone(MEMORY[0x1E69DCAE0]) init];
  v11 = OBJC_IVAR____TtC13MediaControls30MediaControlsModuleRouteButton_label;
  v12 = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  *&v4[v11] = v12;
  v4[OBJC_IVAR____TtC13MediaControls30MediaControlsModuleRouteButton_showLabel] = 0;
  *&v4[OBJC_IVAR____TtC13MediaControls30MediaControlsModuleRouteButton_visualStylingProvider] = 0;
  *&v4[OBJC_IVAR____TtC13MediaControls30MediaControlsModuleRouteButton_contentMetrics] = 0;
  v33.receiver = v4;
  v33.super_class = type metadata accessor for MediaControlsModuleRouteButton(v12, v13);
  v14 = objc_msgSendSuper2(&v33, sel_initWithFrame_, a1, a2, a3, a4);
  sub_1A225C9E8(v14, v15);
  sub_1A225CA7C();
  v16 = OBJC_IVAR____TtC13MediaControls30MediaControlsModuleRouteButton_imageView;
  [*(v14 + OBJC_IVAR____TtC13MediaControls30MediaControlsModuleRouteButton_imageView) setUserInteractionEnabled_];
  [*(v14 + v16) setContentMode_];
  [v14 addSubview_];
  v17 = OBJC_IVAR____TtC13MediaControls30MediaControlsModuleRouteButton_label;
  [*(v14 + OBJC_IVAR____TtC13MediaControls30MediaControlsModuleRouteButton_label) setUserInteractionEnabled_];
  [v14 addSubview_];
  v18 = [objc_allocWithZone(MEMORY[0x1E69DCDB0]) initWithDelegate_];
  [v14 addInteraction_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB088D20, &qword_1A230A680);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_1A2308E80;
  v20 = sub_1A22E6378();
  v21 = MEMORY[0x1E69DC2B0];
  *(v19 + 32) = v20;
  *(v19 + 40) = v21;
  MEMORY[0x1A58DAE60](v19, sel_updateContentSizeCategory);
  swift_unknownObjectRelease();

  [v14 setAccessibilityTraits_];
  [v14 setIsAccessibilityElement_];
  v22 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v32[4] = sub_1A2241CF0;
  v32[5] = v22;
  v32[0] = MEMORY[0x1E69E9820];
  v32[1] = 1107296256;
  v32[2] = sub_1A2241A5C;
  v32[3] = &block_descriptor_4;
  v23 = _Block_copy(v32);

  [v14 setAccessibilityLabelBlock_];
  _Block_release(v23);

  v24 = sub_1A2241B30();
  v25 = *(v14 + v17);
  v26 = *((*MEMORY[0x1E69E7D40] & *v14) + 0x98);
  if (v26(v24))
  {
    v27 = 1.0;
  }

  else
  {
    v27 = 0.0;
  }

  v28 = [v25 setAlpha_];
  v29 = *(v14 + v16);
  if (v26(v28))
  {
    v30 = 0.0;
  }

  else
  {
    v30 = 1.0;
  }

  [v29 setAlpha_];

  return v14;
}

id sub_1A2241A5C(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
  v4 = v3;

  if (v4)
  {
    v5 = sub_1A22E6598();
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

id sub_1A2241B30()
{
  v1 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0xC8))();
  if (v1)
  {
    v2 = v1;
    [v1 metricsScaleFactor];
    v4 = v3;
  }

  else
  {
    v4 = 1.0;
  }

  v5 = *(v0 + OBJC_IVAR____TtC13MediaControls30MediaControlsModuleRouteButton_label);
  if (qword_1ED952320 != -1)
  {
    swift_once();
  }

  v6 = qword_1ED953588;
  v7 = unk_1ED953590;
  v8 = dword_1ED953598;
  v9 = byte_1ED95359C;
  v10 = qword_1ED9535A0;
  v11 = [v0 traitCollection];
  v12 = sub_1A21275D8(v11, v6, v7, v8 | (v9 << 32), v10, v4);

  [v5 setFont_];
  v13 = *(v0 + OBJC_IVAR____TtC13MediaControls30MediaControlsModuleRouteButton_imageView);
  v14 = [objc_opt_self() configurationWithPointSize:5 weight:v4 * 17.0];
  [v13 setPreferredSymbolConfiguration_];

  return [v0 setNeedsLayout];
}

char *sub_1A2241CF0()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = result;
    v2 = *&result[OBJC_IVAR____TtC13MediaControls30MediaControlsModuleRouteButton_label];

    v3 = [v2 text];
    if (v3)
    {
      v4 = sub_1A22E65C8();

      return v4;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void sub_1A2241DEC()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC13MediaControls30MediaControlsModuleRouteButton_imageView);
  v3 = *((*MEMORY[0x1E69E7D40] & *v0) + 0xB0);
  v4 = v3();
  v5 = v4;
  if (v4)
  {
    (*(*v4 + 104))(v9);

    v5 = sub_1A22DF514(0);
  }

  [v2 setTintColor_];

  v6 = *(v1 + OBJC_IVAR____TtC13MediaControls30MediaControlsModuleRouteButton_label);
  v7 = v3();
  if (v7)
  {
    (*(*v7 + 104))(v10);

    v8 = sub_1A22DF514(0);
  }

  else
  {
    v8 = 0;
  }

  [v6 setTextColor_];
}

id sub_1A2241FA8(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for MediaControlsModuleRouteButton(a1, a2);
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t sub_1A2242060()
{
  sub_1A2115288(0, &qword_1EB088D28, 0x1E69DCDC0);
  [v0 bounds];
  return sub_1A22E6AB8();
}

char *sub_1A22421C0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB088D30, qword_1A230A720);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void sub_1A22422DC()
{
  v1 = (v0 + OBJC_IVAR____TtC13MediaControls30MediaControlsModuleRouteButton_viewModel);
  *v1 = 0u;
  v1[1] = 0u;
  v2 = OBJC_IVAR____TtC13MediaControls30MediaControlsModuleRouteButton_imageView;
  *(v0 + v2) = [objc_allocWithZone(MEMORY[0x1E69DCAE0]) init];
  v3 = OBJC_IVAR____TtC13MediaControls30MediaControlsModuleRouteButton_label;
  *(v0 + v3) = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  *(v0 + OBJC_IVAR____TtC13MediaControls30MediaControlsModuleRouteButton_showLabel) = 0;
  *(v0 + OBJC_IVAR____TtC13MediaControls30MediaControlsModuleRouteButton_visualStylingProvider) = 0;
  *(v0 + OBJC_IVAR____TtC13MediaControls30MediaControlsModuleRouteButton_contentMetrics) = 0;
  sub_1A22E7028();
  __break(1u);
}

uint64_t sub_1A22423BC()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB088D38, &unk_1A2310DA0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v24 - v3;
  v5 = sub_1A22E6268();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = (&v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = sub_1A22E6278();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = (&v24 - v14);
  v16 = [objc_allocWithZone(MEMORY[0x1E69DD070]) initWithView_];
  *v15 = v16;
  (*(v10 + 104))(v15, *MEMORY[0x1E69DBF70], v9);
  v17 = v16;
  [v1 bounds];
  *v8 = [objc_opt_self() bezierPathWithOvalInRect_];
  (*(v6 + 104))(v8, *MEMORY[0x1E69DBED8], v5);
  sub_1A2115288(0, &unk_1EB088D40, 0x1E69DCDD0);
  (*(v10 + 16))(v13, v15, v9);
  (*(v6 + 16))(v4, v8, v5);
  (*(v6 + 56))(v4, 0, 1, v5);
  v22 = sub_1A22E6AA8();

  (*(v6 + 8))(v8, v5);
  (*(v10 + 8))(v15, v9);
  return v22;
}

uint64_t sub_1A2242728(uint64_t a1, uint64_t a2)
{
  v2 = [objc_opt_self() routingButtonAllSpeakersAndTVsTitle];
  v3 = sub_1A22E65C8();

  return v3;
}

double sub_1A22427C4(void *a1, char a2)
{
  v3 = [a1 userInterfaceIdiom];
  result = 0.0;
  if (!v3 && (a2 & 1) != 0)
  {
    v5 = MGGetProductType();
    v6 = v5 == 1060988941 || v5 == 3885279870;
    result = 41.0;
    if (v6)
    {
      return 24.0;
    }
  }

  return result;
}

double sub_1A224282C(char a1)
{
  result = 32.0;
  if (a1)
  {
    return 0.0;
  }

  return result;
}

BOOL sub_1A2242878(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    if (a2)
    {
      return a1 == a2;
    }

    return 0;
  }

  return !a2;
}

BOOL sub_1A22428A0(void *a1, uint64_t *a2)
{
  v2 = *a2;
  if (*a1)
  {
    if (v2)
    {
      return *a1 == v2;
    }

    return 0;
  }

  return !v2;
}

uint64_t sub_1A22428F8(uint64_t result, __int16 a2, uint64_t a3, __int16 a4)
{
  if (result)
  {
    v4 = result;
    result = 0;
    if (v4 != a3 || ((a2 ^ a4) & 1) != 0)
    {
      return result;
    }

    return ((a4 & 0x100) == 0) ^ ((a2 & 0x100) >> 8);
  }

  if (!a3 && ((a2 ^ a4) & 1) == 0)
  {
    return ((a4 & 0x100) == 0) ^ ((a2 & 0x100) >> 8);
  }

  return result;
}

uint64_t sub_1A2242940(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8) ^ *(a2 + 8);
  if (*a1)
  {
    if ((*a1 != v2) | v3 & 1)
    {
      return 0;
    }
  }

  else if ((v2 != 0) | v3 & 1)
  {
    return 0;
  }

  return *(a1 + 9) ^ *(a2 + 9) ^ 1u;
}

id sub_1A224299C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB088D50, &qword_1A230A7A0);
  v0 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v1 = sub_1A2114DFC();

  return v1;
}

id sub_1A22429F4(uint64_t a1, uint64_t a2)
{
  type metadata accessor for RoutePickerAllSpeakersButton(0, a2);
  v2 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v3 = sub_1A2114DFC();

  return v3;
}

id sub_1A2242A40()
{
  v1 = (v0 + OBJC_IVAR____TtC13MediaControls12SessionsView_state);
  swift_beginAccess();
  v2 = *v1;
  v3 = *v1;
  return v2;
}

void sub_1A2242AB0(void *a1, __int16 a2)
{
  sub_1A2246898(a1, a2 & 0x101);
}

void (*sub_1A2242AF0(uint64_t *a1))(uint64_t a1, char a2)
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
  *(v3 + 40) = v1;
  v5 = v1 + OBJC_IVAR____TtC13MediaControls12SessionsView_state;
  swift_beginAccess();
  v6 = *v5;
  v7 = *(v5 + 8);
  v8 = *(v5 + 9);
  *(v4 + 24) = *v5;
  v4 += 24;
  *(v4 + 8) = v7;
  *(v4 + 9) = v8;
  v9 = v6;
  return sub_1A2242BA0;
}

void sub_1A2242BA0(uint64_t a1, char a2)
{
  v2 = *a1;
  v4 = (*a1 + 24);
  v3 = *v4;
  v5 = *(*a1 + 32);
  if (a2)
  {
    if (*(*a1 + 33))
    {
      v6 = 256;
    }

    else
    {
      v6 = 0;
    }

    v7 = v3;
    sub_1A2246898(v3, v6 | v5);

    v3 = *v4;
  }

  else
  {
    if (*(*a1 + 33))
    {
      v8 = 256;
    }

    else
    {
      v8 = 0;
    }

    sub_1A2246898(*(*a1 + 24), v8 | v5);
  }

  free(v2);
}

uint64_t sub_1A2242C94(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC13MediaControls12SessionsView_delegate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_1A2242D00(uint64_t *a1))(uint64_t a1, char a2)
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
  v5 = OBJC_IVAR____TtC13MediaControls12SessionsView_delegate;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_1A2209C9C;
}

double sub_1A2242DA0@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  *(a1 + 41) = 0u;
  a1[1] = 0u;
  a1[2] = 0u;
  *a1 = 0u;
  return result;
}

void sub_1A2242DB4(uint64_t *a1)
{
  v2 = v1;
  v4 = v2 + OBJC_IVAR____TtC13MediaControls12SessionsView_viewModel;
  swift_beginAccess();
  v5 = *(v4 + 1);
  v54[0] = *v4;
  v54[1] = v5;
  v55[0] = *(v4 + 2);
  *(v55 + 9) = *(v4 + 41);
  v6 = *&v54[0];
  v7 = *(v4 + 24);
  v62 = *(v4 + 8);
  v63 = v7;
  v64 = *(v4 + 40);
  LOBYTE(v65) = v4[56];
  v8 = *a1;
  v9 = *(a1 + 3);
  v50 = *(a1 + 1);
  v51 = v9;
  v52 = *(a1 + 5);
  v53 = *(a1 + 56);
  if (!*&v54[0])
  {
    if (!v8)
    {
      *v44 = 0;
      *&v44[8] = *(v4 + 8);
      *&v44[24] = *(v4 + 24);
      *&v44[40] = *(v4 + 40);
      v44[56] = v4[56];
      sub_1A224695C(v54, &v59);
      sub_1A224695C(a1, &v59);
      v42 = v44;
      goto LABEL_21;
    }

    sub_1A224695C(v54, v44);
    sub_1A224695C(a1, v44);
    goto LABEL_8;
  }

  *v44 = *&v54[0];
  *&v44[8] = *(v4 + 8);
  *&v44[24] = *(v4 + 24);
  *&v44[40] = *(v4 + 40);
  v44[56] = v4[56];
  v59 = *v44;
  v60 = *&v44[16];
  *v61 = *&v44[32];
  *&v61[9] = *&v44[41];
  if (!v8)
  {
    *v58 = *v44;
    *&v58[16] = *&v44[16];
    *&v58[32] = *&v44[32];
    *&v58[41] = *&v44[41];
    sub_1A224695C(v54, v57);
    sub_1A224695C(a1, v57);
    sub_1A224695C(v44, v57);
    sub_1A2248550(v58);
LABEL_8:
    *&v44[8] = v62;
    *&v44[24] = v63;
    *&v44[40] = v64;
    v46 = v50;
    *v44 = v6;
    v44[56] = v65;
    v45 = v8;
    v47 = v51;
    v48 = v52;
    v49 = v53;
    v11 = sub_1A210D9B0(v44, &qword_1EB088E60, &unk_1A230A9B0);
    goto LABEL_9;
  }

  *&v58[8] = *(a1 + 1);
  *&v58[24] = *(a1 + 3);
  *&v58[40] = *(a1 + 5);
  v58[56] = *(a1 + 56);
  *v58 = v8;
  sub_1A224695C(v54, v57);
  sub_1A224695C(a1, v57);
  sub_1A224695C(v44, v57);
  sub_1A22485A4();
  v10 = sub_1A22E6568();
  *v56 = *v58;
  *&v56[16] = *&v58[16];
  *&v56[32] = *&v58[32];
  *&v56[41] = *&v58[41];
  sub_1A2248550(v56);
  *v57 = v59;
  *&v57[16] = v60;
  *&v57[32] = *v61;
  *&v57[41] = *&v61[9];
  sub_1A2248550(v57);
  *v58 = v6;
  *&v58[8] = v62;
  *&v58[24] = v63;
  *&v58[40] = v64;
  v58[56] = v65;
  v11 = sub_1A210D9B0(v58, &qword_1EB088D70, qword_1A230A7A8);
  if (v10)
  {
    return;
  }

LABEL_9:
  v12 = MEMORY[0x1E69E7D40];
  v13 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x110);
  v13(v58, v11);
  *&v57[8] = *&v58[8];
  *&v57[24] = *&v58[24];
  *&v57[40] = *&v58[40];
  v14 = (*v58 != 0) & v58[56];
  *v57 = *v58;
  v57[56] = v58[56];
  sub_1A210D9B0(v57, &qword_1EB088D70, qword_1A230A7A8);
  v15 = (*((*v12 & *v2) + 0xF0))(v44);
  *(v16 + 8) = v14;
  v17 = v15(v44, 0);
  v18 = *(v2 + OBJC_IVAR____TtC13MediaControls12SessionsView_routePickerSessionsView);
  v43 = v13;
  v13(&v59, v17);
  sub_1A220D0C4();
  sub_1A2130450();
  v19 = sub_1A220D184();
  v21 = v20;
  v23 = v22;
  v25 = v24;

  sub_1A221467C(v19, v21, v23, v25);
  v26 = v59;
  if (v59)
  {
    v27 = *(&v59 + 1);
    v29 = *(&v60 + 1);
    v28 = v60;
    v30 = *&v61[8];
    v31 = *&v61[16];
    if (*v61)
    {

      nullsub_1();
      v29 = v32;
      v34 = v33;
      v30 = v35;
      v31 = v36;
    }

    else
    {

      v34 = 0;
    }

    sub_1A220D27C(v26, v27, v28, v29, v34, v30, v31, v44);
    sub_1A210D9B0(&v59, &qword_1EB088D70, qword_1A230A7A8);
  }

  else
  {
    sub_1A220D25C(v44);
  }

  v62 = *v44;
  v63 = *&v44[16];
  v64 = *&v44[32];
  v65 = *&v44[48];
  v37 = (*((*MEMORY[0x1E69E7D40] & *v18) + 0xB0))(&v62);
  v43(v44, v37);
  v38 = *v44;
  if (!*v44)
  {
    *v56 = 0;
    *&v56[8] = *&v44[8];
    *&v56[24] = *&v44[24];
    *&v56[40] = *&v44[40];
    v56[56] = v44[56];
    v42 = v56;
LABEL_21:
    sub_1A210D9B0(v42, &qword_1EB088D70, qword_1A230A7A8);
    return;
  }

  *v56 = *v44;
  *&v56[8] = *&v44[8];
  *&v56[24] = *&v44[24];
  *&v56[40] = *&v44[40];
  v56[56] = v44[56];

  sub_1A210D9B0(v56, &qword_1EB088D70, qword_1A230A7A8);
  v39 = *(v38 + 16);

  if (v39)
  {
    v40 = *(v2 + OBJC_IVAR____TtC13MediaControls12SessionsView_allSpeakersButtonInitialConstraints);
    if (v40)
    {
      v41 = *(*v40 + 384);

      v41(0);
    }
  }
}

double sub_1A2243420@<D0>(_OWORD *a1@<X8>)
{
  v3 = (v1 + OBJC_IVAR____TtC13MediaControls12SessionsView_viewModel);
  swift_beginAccess();
  v4 = v3[1];
  v8 = *v3;
  v9 = v4;
  v10[0] = v3[2];
  *(v10 + 9) = *(v3 + 41);
  sub_1A224695C(&v8, v7);
  v5 = v9;
  *a1 = v8;
  a1[1] = v5;
  a1[2] = v10[0];
  result = *(v10 + 9);
  *(a1 + 41) = *(v10 + 9);
  return result;
}

uint64_t sub_1A22434B0(_OWORD *a1)
{
  v3 = (v1 + OBJC_IVAR____TtC13MediaControls12SessionsView_viewModel);
  swift_beginAccess();
  v4 = v3[1];
  v9[0] = *v3;
  v9[1] = v4;
  v10[0] = v3[2];
  v5 = v10[0];
  *(v10 + 9) = *(v3 + 41);
  v11[0] = v9[0];
  v11[1] = v4;
  v12[0] = v5;
  *(v12 + 9) = *(v10 + 9);
  v6 = a1[1];
  *v3 = *a1;
  v3[1] = v6;
  *(v3 + 41) = *(a1 + 41);
  v3[2] = a1[2];
  sub_1A224695C(v9, v8);
  sub_1A210D9B0(v11, &qword_1EB088D70, qword_1A230A7A8);
  sub_1A2242DB4(v9);
  return sub_1A210D9B0(v9, &qword_1EB088D70, qword_1A230A7A8);
}

uint64_t (*sub_1A2243584(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x228uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 536) = v1;
  v5 = OBJC_IVAR____TtC13MediaControls12SessionsView_viewModel;
  *(v3 + 544) = OBJC_IVAR____TtC13MediaControls12SessionsView_viewModel;
  v6 = (v1 + v5);
  swift_beginAccess();
  v7 = *v6;
  v8 = v6[1];
  v9 = v6[2];
  *(v4 + 41) = *(v6 + 41);
  v4[1] = v8;
  v4[2] = v9;
  *v4 = v7;
  v10 = *v6;
  v11 = v6[1];
  v12 = v6[2];
  *(v4 + 233) = *(v6 + 41);
  v4[13] = v11;
  v4[14] = v12;
  v4[12] = v10;
  sub_1A224695C(v4, (v4 + 16));
  return sub_1A2243654;
}

void sub_1A2243654(void *a1, char a2)
{
  v2 = *a1;
  v3 = (*a1 + 256);
  v4 = (*a1 + 320);
  v5 = (*(v2 + 536) + *(v2 + 544));
  if (a2)
  {
    v6 = *(v2 + 208);
    *(v2 + 384) = *(v2 + 192);
    *(v2 + 400) = v6;
    v8 = *(v2 + 192);
    v7 = *(v2 + 208);
    *(v2 + 416) = *(v2 + 224);
    *(v2 + 425) = *(v2 + 233);
    v10 = v5[1];
    v9 = v5[2];
    v11 = *v5;
    *(v2 + 105) = *(v5 + 41);
    *(v2 + 80) = v10;
    *(v2 + 96) = v9;
    *(v2 + 64) = v11;
    v12 = *(v5 + 41);
    v14 = v5[1];
    v13 = v5[2];
    *v4 = *v5;
    v4[1] = v14;
    v4[2] = v13;
    *(v4 + 41) = v12;
    v15 = *(v2 + 224);
    *(v5 + 41) = *(v2 + 233);
    v5[1] = v7;
    v5[2] = v15;
    *v5 = v8;
    sub_1A224695C(v2 + 384, v2 + 448);
    sub_1A224695C(v2 + 64, v2 + 448);
    sub_1A210D9B0(v4, &qword_1EB088D70, qword_1A230A7A8);
    sub_1A2242DB4((v2 + 64));
    sub_1A210D9B0(v2 + 64, &qword_1EB088D70, qword_1A230A7A8);
    v16 = *(v2 + 208);
    *v3 = *(v2 + 192);
    v3[1] = v16;
    v3[2] = *(v2 + 224);
    *(v3 + 41) = *(v2 + 233);
    v17 = v3;
  }

  else
  {
    v19 = v5[1];
    v18 = v5[2];
    v20 = *v5;
    *(v2 + 169) = *(v5 + 41);
    *(v2 + 144) = v19;
    *(v2 + 160) = v18;
    *(v2 + 128) = v20;
    v22 = v5[1];
    v21 = v5[2];
    v23 = *v5;
    *(v3 + 41) = *(v5 + 41);
    v3[1] = v22;
    v3[2] = v21;
    *v3 = v23;
    v24 = *(v2 + 192);
    v25 = *(v2 + 208);
    v26 = *(v2 + 224);
    *(v5 + 41) = *(v2 + 233);
    v5[1] = v25;
    v5[2] = v26;
    *v5 = v24;
    sub_1A224695C(v2 + 128, v4);
    sub_1A210D9B0(v3, &qword_1EB088D70, qword_1A230A7A8);
    sub_1A2242DB4((v2 + 128));
    v17 = v2 + 128;
  }

  sub_1A210D9B0(v17, &qword_1EB088D70, qword_1A230A7A8);

  free(v2);
}

double sub_1A2243820()
{
  v1 = *(v0 + OBJC_IVAR____TtC13MediaControls12SessionsView_routePickerSessionsView);
  [v1 contentSize];
  v3 = v2;
  [v1 adjustedContentInset];
  return v3;
}

void sub_1A2243880(void *a1)
{
  v2 = *(a1 + OBJC_IVAR____TtC13MediaControls12SessionsView_routePickerSessionsView);
  v3 = MEMORY[0x1E69E7D40];
  v4 = (*((*MEMORY[0x1E69E7D40] & *a1) + 0x160))();
  v5 = (*((*v3 & *v2) + 0x158))(v4 & 1);
  v6 = (*((*v3 & *a1) + 0xE0))(v5);
  sub_1A2246464();
}

uint64_t sub_1A2243990()
{
  v1 = OBJC_IVAR____TtC13MediaControls12SessionsView_onScreen;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1A22439D4(char a1)
{
  v3 = a1 & 1;
  v4 = OBJC_IVAR____TtC13MediaControls12SessionsView_onScreen;
  result = swift_beginAccess();
  v6 = v1[v4];
  v1[v4] = a1;
  if (v6 != v3)
  {
    if (a1)
    {
      sub_1A229C2E0(v9);
    }

    else
    {
      sub_1A229C304(v9);
    }

    v11[0] = v9[0];
    v11[1] = v9[1];
    v12[0] = v10[0];
    *(v12 + 9) = *(v10 + 9);
    sub_1A2115288(0, &qword_1ED94E980, 0x1E69DD250);
    v7 = swift_allocObject();
    *(v7 + 16) = v1;
    v8 = v1;
    sub_1A21179EC(v11, sub_1A22469CC, v7, 0, 0);

    return sub_1A2116928(v9);
  }

  return result;
}

void (*sub_1A2243ADC(uint64_t *a1))(char **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0xE8uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC13MediaControls12SessionsView_onScreen;
  *(v3 + 216) = v1;
  *(v3 + 224) = v5;
  swift_beginAccess();
  *(v4 + 57) = *(v1 + v5);
  return sub_1A2243B70;
}

void sub_1A2243B70(char **a1, char a2)
{
  v2 = *a1;
  v4 = *(*a1 + 27);
  v3 = *(*a1 + 28);
  v5 = (*a1)[57];
  v6 = *(v4 + v3);
  *(v4 + v3) = v5;
  if (a2)
  {
    if (((v5 ^ v6) & 1) == 0)
    {
      goto LABEL_13;
    }

    if (v5)
    {
      sub_1A229C2E0((v2 + 16));
    }

    else
    {
      sub_1A229C304((v2 + 16));
    }

    v7 = v2[27];
    v8 = *(v2 + 9);
    *v2 = *(v2 + 8);
    *(v2 + 1) = v8;
    *(v2 + 2) = *(v2 + 10);
    *(v2 + 41) = *(v2 + 169);
    sub_1A2115288(0, &qword_1ED94E980, 0x1E69DD250);
    v9 = swift_allocObject();
    *(v9 + 16) = v7;
    v10 = v7;
    v11 = v2;
  }

  else
  {
    if (((v5 ^ v6) & 1) == 0)
    {
      goto LABEL_13;
    }

    if (v5)
    {
      sub_1A229C2E0((v2 + 16));
    }

    else
    {
      sub_1A229C304((v2 + 16));
    }

    v12 = v2[27];
    v13 = *(v2 + 9);
    *(v2 + 4) = *(v2 + 8);
    *(v2 + 5) = v13;
    *(v2 + 6) = *(v2 + 10);
    *(v2 + 105) = *(v2 + 169);
    sub_1A2115288(0, &qword_1ED94E980, 0x1E69DD250);
    v9 = swift_allocObject();
    *(v9 + 16) = v12;
    v14 = v12;
    v11 = (v2 + 8);
  }

  sub_1A21179EC(v11, sub_1A22485F8, v9, 0, 0);

  sub_1A2116928((v2 + 16));
LABEL_13:

  free(v2);
}

double sub_1A2243D0C()
{
  v1 = v0 + OBJC_IVAR____TtC13MediaControls12SessionsView_contentAlignmentPoint;
  swift_beginAccess();
  return *v1;
}

id sub_1A2243D54(double a1, double a2)
{
  v5 = (v2 + OBJC_IVAR____TtC13MediaControls12SessionsView_contentAlignmentPoint);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
  return [*(v2 + OBJC_IVAR____TtC13MediaControls12SessionsView_routePickerSessionsView) setContentAlignmentPoint_];
}

uint64_t (*sub_1A2243DCC(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = OBJC_IVAR____TtC13MediaControls12SessionsView_contentAlignmentPoint;
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  swift_beginAccess();
  return sub_1A2243E54;
}

void sub_1A2243E54(void *a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    [*(v3[3] + OBJC_IVAR____TtC13MediaControls12SessionsView_routePickerSessionsView) setContentAlignmentPoint_];
  }

  free(v3);
}

double sub_1A2243EC0(uint64_t a1, uint64_t a2)
{
  type metadata accessor for VisualStylingProvider(0, a2);
  v2 = sub_1A22DF4C0();
  v3 = *(v2 + 1);
  v11[0] = *v2;
  v11[1] = v3;
  v12 = v2[4];
  v4 = v3;
  v5 = *&v11[0];
  v6 = *(&v11[0] + 1);
  v7 = v4;
  v8 = *(&v4 + 1);
  v9 = v12;
  *&result = sub_1A22DF6F0(v11).n128_u64[0];
  return result;
}

uint64_t sub_1A2243F38@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 152))();
  *a2 = result;
  return result;
}

uint64_t sub_1A2243F84(id *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(**a2 + 160);
  v4 = *a1;
  return v3(v2);
}

uint64_t sub_1A2243FDC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 224))();
  *a2 = result;
  return result;
}

uint64_t sub_1A2244028(id *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(**a2 + 232);
  v4 = *a1;
  return v3(v2);
}

id sub_1A22440A4(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for SessionsView(a1, a2);
  objc_msgSendSuper2(&v4, sel_didMoveToWindow);
  return sub_1A2244CDC();
}

uint64_t sub_1A2244160(uint64_t a1, uint64_t a2)
{
  v5.receiver = v2;
  v5.super_class = type metadata accessor for SessionsView(a1, a2);
  v3 = objc_msgSendSuper2(&v5, sel_layoutSubviews);
  return (*((*MEMORY[0x1E69E7D40] & **&v2[OBJC_IVAR____TtC13MediaControls12SessionsView_routePickerSessionsView]) + 0x1C8))(v3);
}

double sub_1A2244294(double *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  sub_1A2115288(0, &qword_1ED94E980, 0x1E69DD250);
  v11 = swift_allocObject();
  v11[2] = a2;
  v11[3] = a3;
  v11[4] = v5;

  v12 = v5;
  sub_1A21179EC(a1, sub_1A2215434, v11, a4, a5);

  return result;
}

uint64_t sub_1A2244364(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1A229C070(v10);
  (*((*MEMORY[0x1E69E7D40] & *v4) + 0x1A0))(v10, a1, a2, a3, a4);
  return sub_1A2116928(v10);
}

double sub_1A2244408()
{
  v1 = v0;
  if ((sub_1A225CB4C() & 1) != 0 || (v2 = [v0 traitCollection], v3 = sub_1A224CA58(), v2, v4 = 0.0, v3))
  {
    v5 = [v1 window];
    if (v5)
    {
      v6 = v5;
      [v5 safeAreaInsets];
      v4 = v7;
    }

    else
    {
      v4 = 0.0;
    }
  }

  v8 = (*((*MEMORY[0x1E69E7D40] & *v1) + 0xE0))();
  v10 = v9;

  v11 = 0.0;
  if ((v10 & 0x100) != 0)
  {
    v12 = sub_1A2254498();
    [*(v1 + OBJC_IVAR____TtC13MediaControls12SessionsView_allSpeakersButton) bounds];
    v11 = v12 + CGRectGetHeight(v14);
  }

  return v4 + v11;
}

void sub_1A2244520()
{
  v1 = v0;
  if (sub_1A225CB4C())
  {
    v2 = *&v0[OBJC_IVAR____TtC13MediaControls12SessionsView_routePickerSessionsView];
  }

  else
  {
    v3 = [v0 traitCollection];
    v4 = sub_1A224CA58();

    v2 = *&v1[OBJC_IVAR____TtC13MediaControls12SessionsView_routePickerSessionsView];
    if (!v4)
    {
      v6 = 0;
      v5 = 2;
      goto LABEL_6;
    }
  }

  v5 = 0;
  v6 = 1;
LABEL_6:
  type metadata accessor for SessionView(0);
  v7 = sub_1A211A6BC();
  (*((*MEMORY[0x1E69E7D40] & *v2) + 0xE0))(v5, v7 & 1);
  v8 = [v1 traitCollection];
  if ([v8 userInterfaceIdiom] || (v6 & 1) == 0)
  {
  }

  else
  {
    MGGetProductType();
  }

  [v2 contentInset];
  [v2 setContentInset_];
  [v2 contentInset];
  [v2 setContentInset_];
  sub_1A2244CDC();
  v9 = [v1 traitCollection];
  v10 = sub_1A224CA2C();

  if (v10)
  {
    v11 = *&v1[OBJC_IVAR____TtC13MediaControls12SessionsView_routePickerSessionsViewConstraints];
    if (v11)
    {
      if (v6)
      {
        v12 = 0.0;
      }

      else
      {
        v12 = 32.0;
      }

      if (v6)
      {
        v13 = 0.0;
      }

      else
      {
        v13 = 96.0;
      }

      v14 = *(*v11 + 376);

      v14(v15, v12, v13, v12, v13);
    }
  }
}

double sub_1A224478C(char a1, char a2)
{
  v3 = v2;
  v6 = MEMORY[0x1E69E7D40];
  (*((*MEMORY[0x1E69E7D40] & *v2) + 0x110))(&v30);
  v7 = v30;
  if (v30)
  {
    v36 = v30;
    v37 = v31;
    v38 = v32;
    v39 = v33;
    v40 = v34;

    sub_1A210D9B0(&v36, &qword_1EB088D70, qword_1A230A7A8);
    v8 = *(v7 + 16);

    v10 = v8 > 2;
  }

  else
  {
    v36 = 0;
    v37 = v31;
    v38 = v32;
    v39 = v33;
    v40 = v34;
    v9 = sub_1A210D9B0(&v36, &qword_1EB088D70, qword_1A230A7A8);
    v10 = 0;
  }

  v11 = *((*v6 & *v3) + 0xE0);
  v12 = (v11)(v9);
  v14 = v13;

  if (v14 & 1) != 0 && ((*((*v6 & *v3) + 0x160))())
  {
    v29 = a1;
    v15 = *((*v6 & **(v3 + OBJC_IVAR____TtC13MediaControls12SessionsView_routePickerSessionsView)) + 0xC8);
    LOBYTE(v36) = v15();
    v35[0] = 2;
    sub_1A2215570();
    if (sub_1A22E6568())
    {
      v16 = 0;
    }

    else
    {
      v17 = v11();
      if (v17)
      {

        v16 = 0;
      }

      else if (v10)
      {
        v18 = v15();
        v16 = sub_1A210E438(v18, 1);
      }

      else
      {
        v16 = 1;
      }
    }

    a1 = v29;
  }

  else
  {
    v16 = 0;
  }

  v19 = v11();
  v21 = v20 & 0x100;

  if ((v16 ^ (v21 >> 8)) & 1) != 0 || (a2)
  {
    v23 = (*((*v6 & *v3) + 0xF0))(&v36);
    *(v24 + 9) = v16;
    v23(&v36, 0);
    sub_1A211A390(v35);
    sub_1A211A470(!v16, a1 & 1, v35);
    sub_1A2116928(v35);
    v25 = swift_allocObject();
    *(v25 + 16) = v3;
    *(v25 + 24) = v16;
    if (a1)
    {
      sub_1A2115288(0, &qword_1ED94E980, 0x1E69DD250);
      v26 = v3;
      sub_1A211A390(&v36);
      v27 = swift_allocObject();
      v27[2] = sub_1A2247C00;
      v27[3] = v25;
      v27[4] = v26;
      v28 = v26;

      sub_1A21179EC(&v36, sub_1A2247C4C, v27, 0, 0);

      sub_1A2116928(&v36);
    }

    else
    {
      sub_1A2244B9C(v3, v16);
    }
  }

  return result;
}

id sub_1A2244B9C(char *a1, char a2)
{
  v4 = *&a1[OBJC_IVAR____TtC13MediaControls12SessionsView_allSpeakersButton];
  v5 = [v4 titleLabel];
  if (v5)
  {
    v6 = 0.0;
    if (a2)
    {
      v6 = 1.0;
    }

    v7 = v5;
    [v5 setAlpha_];
  }

  v8 = [v4 imageView];
  if (v8)
  {
    v9 = 0.0;
    if (a2)
    {
      v9 = 1.0;
    }

    v10 = v8;
    [v8 setAlpha_];
  }

  if (a2)
  {
    sub_1A2299F1C(v14);
  }

  else
  {
    v15 = 0;
    memset(v14, 0, sizeof(v14));
  }

  sub_1A22E6C18();
  v11 = [a1 traitCollection];
  v12 = sub_1A224CA58();

  if (v12)
  {
    sub_1A224522C();
  }

  sub_1A2244CDC();

  return [a1 setNeedsLayout];
}

id sub_1A2244CDC()
{
  v1 = v0;
  if ((sub_1A225CB4C() & 1) != 0 || (v2 = [v0 traitCollection], v3 = sub_1A224CA58(), v2, v4 = 0.0, v3))
  {
    v5 = [v1 window];
    if (v5)
    {
      v6 = v5;
      [v5 safeAreaInsets];
      v4 = v7;
    }

    else
    {
      v4 = 0.0;
    }
  }

  v8 = *&v1[OBJC_IVAR____TtC13MediaControls12SessionsView_routePickerSessionsView];
  [v8 contentInset];
  if (v4 != v9)
  {
    if ((sub_1A225CB4C() & 1) != 0 || (v10 = [v1 traitCollection], v11 = sub_1A224CA58(), v10, v12 = 0.0, v11))
    {
      v13 = [v1 window];
      if (v13)
      {
        v14 = v13;
        [v13 safeAreaInsets];
        v12 = v15;
      }

      else
      {
        v12 = 0.0;
      }
    }

    [v8 contentInset];
    [v8 setContentInset_];
  }

  v16 = sub_1A2244408();
  result = [v8 contentInset];
  if (v16 != v18)
  {
    sub_1A2244408();
    [v8 contentInset];

    return [v8 setContentInset_];
  }

  return result;
}

void sub_1A2244EB0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = [objc_opt_self() effectWithStyle_];
  v6 = [objc_allocWithZone(MEMORY[0x1E69DD298]) initWithEffect_];

  v7 = sub_1A2114DFC();
  v8 = v7;
  [v8 _setContinuousCornerRadius_];
  v9 = [v8 contentView];
  v10 = sub_1A2114DFC();
  [v9 addSubview_];

  v11 = *&v3[OBJC_IVAR____TtC13MediaControls12SessionsView_embeddedView];
  *&v3[OBJC_IVAR____TtC13MediaControls12SessionsView_embeddedView] = v8;
  v12 = v8;

  [v3 addSubview_];
  if (sub_1A225CB4C())
  {
    v13 = 1;
  }

  else
  {
    v14 = [v3 traitCollection];
    v13 = sub_1A224CA58();
  }

  v15 = [v3 traitCollection];
  if ([v15 userInterfaceIdiom] || !v13)
  {
  }

  else
  {
    MGGetProductType();
  }

  if ((sub_1A225CB4C() & 1) != 0 || (v16 = [v3 traitCollection], v17 = sub_1A224CA58(), v16, v17))
  {
    v18 = [v3 window];
    if (v18)
    {
      v19 = v18;
      [v18 safeAreaInsets];
    }
  }

  MEMORY[0x1EEE9AC00](v18);
  v20 = sub_1A211A6BC();
  sub_1A211A6C4(v20 & 1, sub_1A2247830);

  if (v4)
  {
    [v12 setAlpha_];

    [v3 layoutIfNeeded];
    sub_1A2115288(0, &qword_1ED94E980, 0x1E69DD250);
    sub_1A211A390(v24);
    v21 = swift_allocObject();
    *(v21 + 16) = v12;
    *(v21 + 24) = v3;
    v22 = v12;
    v23 = v3;
    sub_1A21179EC(v24, sub_1A2247BAC, v21, 0, 0);

    sub_1A2116928(v24);
  }

  else
  {
  }
}

uint64_t sub_1A224522C()
{
  v1 = [v0 traitCollection];
  v2 = [v1 userInterfaceIdiom];

  [*(v0 + OBJC_IVAR____TtC13MediaControls12SessionsView_routePickerSessionsView) contentSize];
  v4 = v3;
  v6 = v5;
  if (v2 == 1)
  {
    sub_1A2244408();
    v4 = sub_1A225D47C(v4, v6, 0.0);
    v6 = v7;
  }

  result = (*((*MEMORY[0x1E69E7D40] & *v0) + 0xF8))();
  if (result)
  {
    v10 = v9;
    ObjectType = swift_getObjectType();
    (*(v10 + 40))(v0, ObjectType, v10, v4, v6);

    return swift_unknownObjectRelease();
  }

  return result;
}

char *sub_1A224536C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = MEMORY[0x1E69E7D40];
  result = (*((*MEMORY[0x1E69E7D40] & *v3) + 0xF8))(a1);
  if (result && (v9 = v8, ObjectType = swift_getObjectType(), v11 = (*(v9 + 56))(v3, a2, a3, ObjectType, v9), result = swift_unknownObjectRelease(), v11))
  {
    type metadata accessor for SessionPresenter(0);

    sub_1A22C223C(v12);
    type metadata accessor for SessionView(0);

    v14 = sub_1A2271060(v13);
    v15 = *((*v6 & *v14) + 0x248);

    v15(v16);

    return v14;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1A22454C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = (*((*MEMORY[0x1E69E7D40] & *v4) + 0xF8))(a1);
  if (result)
  {
    v10 = v9;
    ObjectType = swift_getObjectType();
    (*(v10 + 24))(v4, a2, a3, a4, ObjectType, v10);

    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_1A2245594(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = MEMORY[0x1E69E7D40];
  (*((*MEMORY[0x1E69E7D40] & *v4) + 0x110))(&v20, a1);
  v9 = v21;
  v10 = v22;
  if (!v20)
  {
    v14 = 0;
    v15 = v21;
    v16 = v22;
    v17 = v23;
    v18 = v24;
    v19 = v25;
    sub_1A210D9B0(&v14, &qword_1EB088D70, qword_1A230A7A8);
LABEL_7:
    v12 = (*((*v8 & **(a2 + OBJC_IVAR____TtC13MediaControls11SessionView_itemsView)) + 0xB8))(&v14);
    *(v13 + 1) = 0;
    v12(&v14, 0);
    return;
  }

  v14 = v20;
  v15 = v21;
  v16 = v22;
  v17 = v23;
  v18 = v24;
  v19 = v25;

  sub_1A210D9B0(&v14, &qword_1EB088D70, qword_1A230A7A8);
  if (v9 == a3 && v10 == a4)
  {

    return;
  }

  v11 = sub_1A22E71E8();

  if ((v11 & 1) == 0)
  {
    goto LABEL_7;
  }
}

void sub_1A224574C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  swift_getObjectType();
  v8 = sub_1A22E6248();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*((*MEMORY[0x1E69E7D40] & *v4) + 0xF8))(v10) && (v14 = v13, ObjectType = swift_getObjectType(), v16 = (*(v14 + 56))(v4, a3, a4, ObjectType, v14), swift_unknownObjectRelease(), v16))
  {
    (*(**(a2 + OBJC_IVAR____TtC13MediaControls11SessionView_presenter) + 288))(v16);
  }

  else
  {
    sub_1A2298A60(v12);

    v17 = sub_1A22E6238();
    v18 = sub_1A22E6A88();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v27 = v20;
      *v19 = 136315394;
      v21 = sub_1A22E7388();
      v23 = sub_1A2103450(v21, v22, &v27);
      v26 = v8;
      v24 = a3;
      v25 = v23;

      *(v19 + 4) = v25;
      *(v19 + 12) = 2080;
      *(v19 + 14) = sub_1A2103450(v24, a4, &v27);
      _os_log_impl(&dword_1A20FC000, v17, v18, "[%s] didTransitionTo - no controller for sessionIdentifier: %s", v19, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1A58DCD00](v20, -1, -1);
      MEMORY[0x1A58DCD00](v19, -1, -1);

      (*(v9 + 8))(v12, v26);
    }

    else
    {

      (*(v9 + 8))(v12, v8);
    }
  }
}

uint64_t sub_1A2245A58(uint64_t a1, uint64_t a2)
{
  result = (*((*MEMORY[0x1E69E7D40] & *v2) + 0xF8))(a1);
  if (result)
  {
    v6 = v5;
    ObjectType = swift_getObjectType();
    (*(v6 + 48))(v2, a2, ObjectType, v6);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1A2245B10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = (*((*MEMORY[0x1E69E7D40] & *v4) + 0xF8))(a1, a2);
  if (result)
  {
    v9 = v8;
    ObjectType = swift_getObjectType();
    (*(v9 + 16))(v4, a3, a4, ObjectType, v9);

    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_1A2245BDC(void *a1)
{
  v2 = v1;
  if (sub_1A225CB4C())
  {
    v4 = 0;
  }

  else
  {
    v5 = [v1 traitCollection];
    v6 = sub_1A224CA58();

    v4 = !v6;
  }

  v7 = (*((*MEMORY[0x1E69E7D40] & *a1) + 0x118))();
  v8 = v7;
  v9 = 0;
  v10 = v7 + 64;
  v11 = 1 << *(v7 + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & *(v7 + 64);
  v14 = (v11 + 63) >> 6;
  if (v13)
  {
    while (1)
    {
      v15 = v9;
LABEL_12:
      v16 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
      v17 = *(*(v8 + 56) + ((v15 << 9) | (8 * v16)));
      v18 = *((*MEMORY[0x1E69E7D40] & *v17) + 0x108);
      v19 = v17;
      v18(v4);

      if (!v13)
      {
        goto LABEL_8;
      }
    }
  }

  while (1)
  {
LABEL_8:
    v15 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      __break(1u);
      return;
    }

    if (v15 >= v14)
    {
      break;
    }

    v13 = *(v10 + 8 * v15);
    ++v9;
    if (v13)
    {
      v9 = v15;
      goto LABEL_12;
    }
  }

  v21 = (*((*MEMORY[0x1E69E7D40] & *v2) + 0xE0))(v20);
  sub_1A2246464();
}

id sub_1A2245DE8(void *a1, uint64_t a2)
{
  if ((*((*MEMORY[0x1E69E7D40] & *v2) + 0xF8))())
  {
    v6 = v5;
    ObjectType = swift_getObjectType();
    (*(v6 + 72))(v2, a1, a2, ObjectType, v6);
    swift_unknownObjectRelease();
  }

  v8 = sub_1A210E438(a2, 1);

  return [a1 setAlwaysBounceVertical_];
}

uint64_t sub_1A2245F28()
{
  result = (*((*MEMORY[0x1E69E7D40] & *v0) + 0xF8))();
  if (result)
  {
    v3 = v2;
    ObjectType = swift_getObjectType();
    (*(v3 + 8))(v0, ObjectType, v3);

    return swift_unknownObjectRelease();
  }

  return result;
}

id sub_1A2246090(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for SessionsView(a1, a2);
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

double sub_1A2246464()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_1A22E6248();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0xE0))(v5);
  if (v8)
  {
    v9 = v8;
    v10 = OBJC_IVAR____TtC13MediaControls12SessionsView_embeddedView;
    v11 = *(v0 + OBJC_IVAR____TtC13MediaControls12SessionsView_embeddedView);
    if (v11)
    {
      v43 = ObjectType;
      v12 = v11;
      v13 = sub_1A2104EA0();
      (*(v4 + 16))(v7, v13, v3);
      v14 = v12;
      v15 = v9;
      v16 = sub_1A22E6238();
      v17 = sub_1A22E6A88();

      v44 = v17;
      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        v42 = v10;
        v19 = v18;
        v41 = swift_slowAlloc();
        v46[0] = v41;
        *v19 = 136315650;
        v20 = sub_1A22E7388();
        v22 = sub_1A2103450(v20, v21, v46);
        v43 = v14;
        v23 = v22;

        *(v19 + 4) = v23;
        *(v19 + 12) = 2080;
        v24 = sub_1A22E6558();
        v26 = sub_1A2103450(v24, v25, v46);

        *(v19 + 14) = v26;
        *(v19 + 22) = 2080;
        v14 = v43;
        v27 = sub_1A22E6558();
        v29 = sub_1A2103450(v27, v28, v46);

        *(v19 + 24) = v29;
        _os_log_impl(&dword_1A20FC000, v16, v44, "[%s] Attempting to embed view(%s) while embedded view is not nil (%s).", v19, 0x20u);
        v30 = v41;
        swift_arrayDestroy();
        MEMORY[0x1A58DCD00](v30, -1, -1);
        v31 = v19;
        v10 = v42;
        MEMORY[0x1A58DCD00](v31, -1, -1);
      }

      (*(v4 + 8))(v7, v3);
      v32 = *(v1 + v10);
      [v32 removeFromSuperview];
    }

    sub_1A2244EB0(v9, 1);
  }

  else
  {
    v33 = swift_allocObject();
    *(v33 + 16) = v0;
    sub_1A2115288(0, &qword_1ED94E980, 0x1E69DD250);
    v34 = v0;
    sub_1A211A390(v45);
    v35 = swift_allocObject();
    *(v35 + 16) = v34;
    v36 = v34;

    sub_1A21179EC(v45, sub_1A2247CB4, v35, sub_1A2247C98, v33);

    sub_1A2116928(v45);
    sub_1A211A390(v46);
    v37 = swift_allocObject();
    *(v37 + 16) = v36;
    v38 = v36;
    sub_1A21179EC(v46, sub_1A2247CDC, v37, 0, 0);

    sub_1A2116928(v46);
  }

  return sub_1A224478C(1, 0);
}

void sub_1A2246898(void *a1, int a2)
{
  v5 = a2 & 0x100;
  v6 = v2 + OBJC_IVAR____TtC13MediaControls12SessionsView_state;
  swift_beginAccess();
  v7 = *v6;
  v8 = *(v6 + 8);
  v9 = *(v6 + 9);
  *v6 = a1;
  *(v6 + 8) = a2 & 1;
  *(v6 + 9) = BYTE1(a2) & 1;
  if (a1)
  {
    if (v7)
    {
      v10 = v7 == a1;
    }

    else
    {
      v10 = 0;
    }

    if (!v10)
    {
      goto LABEL_11;
    }
  }

  else if (v7)
  {
LABEL_11:
    v12 = a1;
    sub_1A2246464();
    goto LABEL_12;
  }

  if ((v8 ^ a2) & 1) != 0 || (((v5 != 0) ^ v9))
  {
    goto LABEL_11;
  }

  v11 = a1;
LABEL_12:
}

uint64_t sub_1A224695C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB088D70, qword_1A230A7A8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

char *sub_1A22469D4()
{
  v1 = v0;
  swift_getObjectType();
  v2 = OBJC_IVAR____TtC13MediaControls12SessionsView_routePickerSessionsView;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB088D50, &qword_1A230A7A0);
  v3 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v4 = sub_1A2114DFC();

  *&v1[v2] = v4;
  v5 = OBJC_IVAR____TtC13MediaControls12SessionsView_allSpeakersButton;
  type metadata accessor for RoutePickerAllSpeakersButton(0, v6);
  v7 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v8 = sub_1A2114DFC();

  *&v1[v5] = v8;
  v9 = &v1[OBJC_IVAR____TtC13MediaControls12SessionsView_shareAudioViews];
  *v9 = 0;
  v9[1] = 0;
  *&v1[OBJC_IVAR____TtC13MediaControls12SessionsView_embeddedView] = 0;
  v10 = &v1[OBJC_IVAR____TtC13MediaControls12SessionsView_state];
  *v10 = 0;
  *(v10 + 4) = 0;
  *&v1[OBJC_IVAR____TtC13MediaControls12SessionsView_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v11 = &v1[OBJC_IVAR____TtC13MediaControls12SessionsView_viewModel];
  *v11 = 0u;
  v11[1] = 0u;
  v11[2] = 0u;
  *(v11 + 41) = 0u;
  *&v1[OBJC_IVAR____TtC13MediaControls12SessionsView_routePickerSessionsViewConstraints] = 0;
  *&v1[OBJC_IVAR____TtC13MediaControls12SessionsView_allSpeakersButtonInitialConstraints] = 0;
  v1[OBJC_IVAR____TtC13MediaControls12SessionsView_onScreen] = 0;
  *&v1[OBJC_IVAR____TtC13MediaControls12SessionsView_contentAlignmentPoint] = xmmword_1A230A760;
  v12 = OBJC_IVAR____TtC13MediaControls12SessionsView_visualStylingProvider;
  type metadata accessor for VisualStylingProvider(0, v13);
  v14 = sub_1A22DF4C0();
  v15 = *(v14 + 1);
  v54[0] = *v14;
  v54[1] = v15;
  v55 = v14[4];
  v16 = v15;
  v17 = *&v54[0];
  v18 = *(&v54[0] + 1);
  v19 = v16;
  v20 = *(&v16 + 1);
  v21 = v55;
  sub_1A22DF6F0(v54);
  *&v1[v12] = v22;
  v52.receiver = v1;
  v52.super_class = type metadata accessor for SessionsView(v22, v23);
  v24 = objc_msgSendSuper2(&v52, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v25 = [v24 layer];
  [v25 setHitTestsAsOpaque_];

  v26 = OBJC_IVAR____TtC13MediaControls12SessionsView_routePickerSessionsView;
  [*&v24[OBJC_IVAR____TtC13MediaControls12SessionsView_routePickerSessionsView] setContentInsetAdjustmentBehavior_];
  [*&v24[v26] setShowsVerticalScrollIndicator_];
  v27 = *&v24[v26];
  v28 = &v24[OBJC_IVAR____TtC13MediaControls12SessionsView_contentAlignmentPoint];
  swift_beginAccess();
  [v27 setContentAlignmentPoint_];
  [v24 addSubview_];
  v29 = OBJC_IVAR____TtC13MediaControls12SessionsView_allSpeakersButton;
  v30 = *&v24[OBJC_IVAR____TtC13MediaControls12SessionsView_allSpeakersButton];
  sub_1A229CA20(v53);
  sub_1A211A470(1, 0, v53);
  sub_1A2116928(v53);

  v31 = *&v24[v29];
  sub_1A2115288(0, &qword_1ED94E940, 0x1E69DC628);
  v32 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v33 = v31;
  v34 = sub_1A22E6C98();
  [v33 addAction:v34 forControlEvents:{64, 0, 0, 0, sub_1A2247CFC, v32}];

  [v24 addSubview_];
  v35 = *&v24[v26];
  v36 = MEMORY[0x1E69E7D40];
  v37 = *((*MEMORY[0x1E69E7D40] & *v35) + 0x188);
  v38 = v24;
  v39 = v35;
  v37(v24, &off_1EE63EA18);

  v40 = *&v24[v26];
  v41 = *((*v36 & *v40) + 0x1A0);
  v42 = v38;
  v43 = v40;
  v41(v24, &off_1F143DDB8);

  v44 = [objc_allocWithZone(MEMORY[0x1E69DD060]) initWithTarget:v42 action:sel_backgroundTapAction_];
  [v44 setDelegate_];
  [v42 addGestureRecognizer_];
  v45 = sub_1A211A6BC();
  *&v42[OBJC_IVAR____TtC13MediaControls12SessionsView_routePickerSessionsViewConstraints] = sub_1A211A6C4(v45 & 1, sub_1A2247E2C);

  v46 = sub_1A211A6BC();
  *&v42[OBJC_IVAR____TtC13MediaControls12SessionsView_allSpeakersButtonInitialConstraints] = sub_1A211A6C4(v46 & 1, sub_1A22481FC);

  v47 = sub_1A211A6BC();
  sub_1A211A6C4(v47 & 1, sub_1A2248318);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB088D20, &qword_1A230A680);
  v48 = swift_allocObject();
  *(v48 + 16) = xmmword_1A2308E80;
  v49 = sub_1A22E6288();
  v50 = MEMORY[0x1E69DC0C8];
  *(v48 + 32) = v49;
  *(v48 + 40) = v50;
  sub_1A22E6C48();
  swift_unknownObjectRelease();

  sub_1A2244520();
  sub_1A224478C(0, 1);

  return v42;
}

void sub_1A2246FE4()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC13MediaControls12SessionsView_routePickerSessionsView;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB088D50, &qword_1A230A7A0);
  v3 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v4 = sub_1A2114DFC();

  *(v1 + v2) = v4;
  v5 = OBJC_IVAR____TtC13MediaControls12SessionsView_allSpeakersButton;
  type metadata accessor for RoutePickerAllSpeakersButton(0, v6);
  v7 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v8 = sub_1A2114DFC();

  *(v1 + v5) = v8;
  v9 = (v1 + OBJC_IVAR____TtC13MediaControls12SessionsView_shareAudioViews);
  *v9 = 0;
  v9[1] = 0;
  *(v1 + OBJC_IVAR____TtC13MediaControls12SessionsView_embeddedView) = 0;
  v10 = v1 + OBJC_IVAR____TtC13MediaControls12SessionsView_state;
  *v10 = 0;
  *(v10 + 8) = 0;
  *(v1 + OBJC_IVAR____TtC13MediaControls12SessionsView_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v11 = (v1 + OBJC_IVAR____TtC13MediaControls12SessionsView_viewModel);
  *v11 = 0u;
  v11[1] = 0u;
  v11[2] = 0u;
  *(v11 + 41) = 0u;
  *(v1 + OBJC_IVAR____TtC13MediaControls12SessionsView_routePickerSessionsViewConstraints) = 0;
  *(v1 + OBJC_IVAR____TtC13MediaControls12SessionsView_allSpeakersButtonInitialConstraints) = 0;
  *(v1 + OBJC_IVAR____TtC13MediaControls12SessionsView_onScreen) = 0;
  *(v1 + OBJC_IVAR____TtC13MediaControls12SessionsView_contentAlignmentPoint) = xmmword_1A230A760;
  v12 = OBJC_IVAR____TtC13MediaControls12SessionsView_visualStylingProvider;
  type metadata accessor for VisualStylingProvider(0, v13);
  v14 = sub_1A22DF4C0();
  v15 = *(v14 + 1);
  v23[0] = *v14;
  v23[1] = v15;
  v24 = v14[4];
  v16 = v15;
  v17 = *&v23[0];
  v18 = *(&v23[0] + 1);
  v19 = v16;
  v20 = *(&v16 + 1);
  v21 = v24;
  sub_1A22DF6F0(v23);
  *(v1 + v12) = v22;
  sub_1A22E7028();
  __break(1u);
}

uint64_t sub_1A22471B8(void *a1)
{
  v2 = v1;
  v4 = *&v1[OBJC_IVAR____TtC13MediaControls12SessionsView_routePickerSessionsView];
  v5 = [a1 locationInView_];
  v7 = v6;
  v9 = v8;
  v10 = (*((*MEMORY[0x1E69E7D40] & *v4) + 0x140))(v5);
  v11 = *(v10 + 16);
  if (v11)
  {
    v32 = MEMORY[0x1E69E7CC0];
    v12 = &v32;
    sub_1A22E6F38();
    v13 = 0;
    v14 = 48;
    do
    {
      if (v13 >= *(v10 + 16))
      {
        __break(1u);
        goto LABEL_20;
      }

      ++v13;
      v15 = *(v10 + v14);
      sub_1A22E6F08();
      sub_1A22E6F48();
      sub_1A22E6F58();
      v12 = &v32;
      sub_1A22E6F18();
      v14 += 24;
    }

    while (v11 != v13);

    v12 = v32;
  }

  else
  {

    v12 = MEMORY[0x1E69E7CC0];
  }

  v30 = v2;
  v31 = a1;
  if (v12 >> 62)
  {
    goto LABEL_22;
  }

  for (i = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1A22E6DE8())
  {
    v17 = 0;
    while (1)
    {
      if ((v12 & 0xC000000000000001) != 0)
      {
        v18 = MEMORY[0x1A58DB0F0](v17, v12);
      }

      else
      {
        if (v17 >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_21;
        }

        v18 = *(v12 + 8 * v17 + 32);
      }

      v19 = v18;
      v20 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      [v18 frame];
      v33.x = v7;
      v33.y = v9;
      v21 = CGRectContainsPoint(v34, v33);

      if (v21)
      {

        return 0;
      }

      ++v17;
      if (v20 == i)
      {
        goto LABEL_23;
      }
    }

LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    ;
  }

LABEL_23:

  v23 = [v31 view];
  if (v23)
  {
    v24 = v23;
    sub_1A2115288(0, &qword_1ED94E980, 0x1E69DD250);
    v25 = v30;
    v26 = sub_1A22E6C88();

    if (v26)
    {
      return 1;
    }
  }

  result = [v31 view];
  if (result)
  {
    v27 = result;
    sub_1A2115288(0, &qword_1ED94E980, 0x1E69DD250);
    v28 = v4;
    v29 = sub_1A22E6C88();

    return v29 & 1;
  }

  return result;
}

double sub_1A22474C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a1)
  {

    return sub_1A221467C(a4, a5, a6, a7);
  }

  return result;
}

uint64_t __swift_memcpy10_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t sub_1A2247628(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 10))
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

uint64_t sub_1A2247684(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 10) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 10) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_1A22476F4(uint64_t *a1, unsigned int a2)
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

uint64_t sub_1A2247744(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1A2247798(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void *sub_1A22477B0(void *result, int a2)
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

void type metadata accessor for CGPoint()
{
  if (!qword_1EB088E30)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_1EB088E30);
    }
  }
}

uint64_t sub_1A2247830()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  sub_1A211A728(v39);
  v38 = sub_1A211A7DC(v39, v1);
  sub_1A211A9FC(v39);
  v3 = [v1 leadingAnchor];
  sub_1A2115288(0, &qword_1ED94EA08, 0x1E696ACE8);
  v4 = [v2 leadingAnchor];
  v5 = sub_1A211AA50();

  sub_1A211AA90(v3, v5);
  v7 = v6;
  v9 = v8;

  v10 = v7;
  v11 = [v1 trailingAnchor];
  v12 = [v2 trailingAnchor];
  v13 = sub_1A211AB14();

  sub_1A211AA90(v11, v13);
  v15 = v14;
  v17 = v16;

  v18 = v15;
  v19 = [v1 bottomAnchor];
  sub_1A2115288(0, &qword_1ED94EA00, 0x1E696ACF0);
  v20 = [v2 bottomAnchor];
  v21 = sub_1A211AB14();

  sub_1A2127270(v19, v21);
  v23 = v22;
  v25 = v24;

  sub_1A2115288(0, &qword_1ED94EA58, 0x1E696ACE0);

  v26 = v23;
  v27 = [v1 heightAnchor];
  sub_1A2257F8C(v27);
  v29 = v28;
  v31 = v30;

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB088E40, &unk_1A230A900);
  v32 = swift_allocObject();
  *(v32 + 16) = xmmword_1A230A770;
  *(v32 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB088840, &unk_1A2308EF0);
  *(v32 + 64) = &off_1F14441C0;
  *(v32 + 32) = v38;
  *(v32 + 96) = &type metadata for Constraint;
  *(v32 + 104) = &off_1F14441B0;
  *(v32 + 72) = v10;
  *(v32 + 80) = v9;
  *(v32 + 136) = &type metadata for Constraint;
  *(v32 + 144) = &off_1F14441B0;
  *(v32 + 112) = v18;
  *(v32 + 120) = v17;
  *(v32 + 176) = &type metadata for Constraint;
  *(v32 + 184) = &off_1F14441B0;
  *(v32 + 152) = v26;
  *(v32 + 160) = v25;
  *(v32 + 216) = &type metadata for Constraint;
  *(v32 + 224) = &off_1F14441B0;
  *(v32 + 192) = v29;
  *(v32 + 200) = v31;

  v33 = v29;
  sub_1A211AB54(v32, v34);
  v36 = v35;

  return v36;
}

id sub_1A2247BAC()
{
  v1 = *(v0 + 24);
  [*(v0 + 16) setAlpha_];
  v2 = *(v1 + OBJC_IVAR____TtC13MediaControls12SessionsView_routePickerSessionsView);

  return [v2 setAlpha_];
}

uint64_t objectdestroy_10Tm()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

id sub_1A2247C4C()
{
  v1 = *(v0 + 32);
  (*(v0 + 16))();

  return [v1 layoutIfNeeded];
}

id sub_1A2247CB4()
{
  result = *(*(v0 + 16) + OBJC_IVAR____TtC13MediaControls12SessionsView_embeddedView);
  if (result)
  {
    return [result setAlpha_];
  }

  return result;
}

void sub_1A2247CFC()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = *(Strong + OBJC_IVAR____TtC13MediaControls12SessionsView_routePickerSessionsView);
    type metadata accessor for SessionView(0);
    v3 = v2;
    v4 = sub_1A211A6BC();
    v5 = MEMORY[0x1E69E7D40];
    (*((*MEMORY[0x1E69E7D40] & *v3) + 0xE0))(1, v4 & 1);

    if ((*((*v5 & *v1) + 0xF8))())
    {
      v7 = v6;
      ObjectType = swift_getObjectType();
      (*(v7 + 64))(v1, ObjectType, v7);
      swift_unknownObjectRelease();
    }
  }
}

uint64_t sub_1A2247E2C()
{
  v1 = *(v0 + 16);
  sub_1A2115288(0, &qword_1ED94EA00, 0x1E696ACF0);
  v2 = *&v1[OBJC_IVAR____TtC13MediaControls12SessionsView_routePickerSessionsView];
  v3 = [v2 topAnchor];
  v4 = [v1 topAnchor];
  v5 = sub_1A211AAD0();
  v7 = v6;

  KeyPath = swift_getKeyPath();
  v9 = sub_1A2127238(v5, v7, KeyPath);
  v47 = v10;

  sub_1A2115288(0, &qword_1ED94EA08, 0x1E696ACE8);

  v46 = v9;
  v11 = [v2 leadingAnchor];
  v12 = [v1 leadingAnchor];
  v13 = sub_1A211AAD0();
  v15 = v14;

  v16 = swift_getKeyPath();
  v17 = sub_1A2127238(v13, v15, v16);
  v45 = v18;

  v19 = v17;
  v20 = [v2 trailingAnchor];
  v21 = [v1 trailingAnchor];
  v22 = sub_1A211AAD0();
  v24 = v23;

  v25 = swift_getKeyPath();
  v26 = sub_1A2127238(v22, v24, v25);
  v44 = v27;

  v28 = v26;
  v29 = [v2 bottomAnchor];
  v30 = [v1 bottomAnchor];
  v31 = sub_1A211AAD0();
  v33 = v32;

  v34 = swift_getKeyPath();
  v35 = sub_1A2127238(v31, v33, v34);
  v37 = v36;

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB088E40, &unk_1A230A900);
  v38 = swift_allocObject();
  *(v38 + 16) = xmmword_1A230A780;
  *(v38 + 56) = &type metadata for Constraint;
  *(v38 + 64) = &off_1F14441B0;
  *(v38 + 32) = v46;
  *(v38 + 40) = v47;
  *(v38 + 96) = &type metadata for Constraint;
  *(v38 + 104) = &off_1F14441B0;
  *(v38 + 72) = v19;
  *(v38 + 80) = v45;
  *(v38 + 136) = &type metadata for Constraint;
  *(v38 + 144) = &off_1F14441B0;
  *(v38 + 112) = v28;
  *(v38 + 120) = v44;
  *(v38 + 176) = &type metadata for Constraint;
  *(v38 + 184) = &off_1F14441B0;
  *(v38 + 152) = v35;
  *(v38 + 160) = v37;

  v39 = v35;
  sub_1A211AB54(v38, v40);
  v42 = v41;

  return v42;
}

uint64_t sub_1A22481FC()
{
  v1 = *(v0 + 16);
  sub_1A2115288(0, &qword_1ED94EA00, 0x1E696ACF0);
  v2 = [*&v1[OBJC_IVAR____TtC13MediaControls12SessionsView_allSpeakersButton] topAnchor];
  v3 = [v1 bottomAnchor];
  v4 = sub_1A211AAD0();
  v6 = v5;

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB088E40, &unk_1A230A900);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1A2308E80;
  *(v7 + 56) = &type metadata for Constraint;
  *(v7 + 64) = &off_1F14441B0;
  *(v7 + 32) = v4;
  *(v7 + 40) = v6;

  v8 = v4;
  sub_1A211AB54(v7, v9);
  v11 = v10;

  return v11;
}

uint64_t sub_1A2248318()
{
  v1 = *(v0 + 16);
  v2 = *&v1[OBJC_IVAR____TtC13MediaControls12SessionsView_allSpeakersButton];
  v3 = [v2 topAnchor];
  sub_1A2115288(0, &qword_1ED94EA00, 0x1E696ACF0);
  v4 = [*(*&v1[OBJC_IVAR____TtC13MediaControls12SessionsView_routePickerSessionsView] + qword_1ED94F398) bottomAnchor];
  sub_1A2254498();
  v5 = sub_1A211AA50();

  sub_1A2127270(v3, v5);
  v7 = v6;

  v8 = sub_1A22E08C0(v7);
  v10 = v9;

  sub_1A2115288(0, &qword_1ED94EA08, 0x1E696ACE8);

  v11 = v8;
  v12 = [v2 centerXAnchor];
  v13 = [v1 centerXAnchor];
  v14 = sub_1A211AAD0();
  v16 = v15;

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB088E40, &unk_1A230A900);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_1A230A140;
  *(v17 + 56) = &type metadata for Constraint;
  *(v17 + 64) = &off_1F14441B0;
  *(v17 + 32) = v11;
  *(v17 + 40) = v10;
  *(v17 + 96) = &type metadata for Constraint;
  *(v17 + 104) = &off_1F14441B0;
  *(v17 + 72) = v14;
  *(v17 + 80) = v16;

  v18 = v14;
  sub_1A211AB54(v17, v19);
  v21 = v20;

  return v21;
}

unint64_t sub_1A22485A4()
{
  result = qword_1EB088E68;
  if (!qword_1EB088E68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB088E68);
  }

  return result;
}

uint64_t sub_1A22485FC@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1A22E5BD8();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t sub_1A2248668@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC13MediaControls19SessionActionButton_action;
  swift_beginAccess();
  return sub_1A22486C0(v1 + v3, a1);
}

uint64_t sub_1A22486C0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB088E70, qword_1A230A9C0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A2248730(uint64_t a1)
{
  v3 = sub_1A22E5BD8();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = OBJC_IVAR____TtC13MediaControls19SessionActionButton_action;
  swift_beginAccess();
  sub_1A22488D0(a1, &v1[v7]);
  swift_endAccess();
  v8 = 0;
  if (!(*(v4 + 48))(&v1[v7], 1, v3))
  {
    (*(v4 + 16))(v6, &v1[v7], v3);
    v9 = sub_1A22E5BB8();
    v11 = v10;
    (*(v4 + 8))(v6, v3);
    v8 = sub_1A22DC57C(v9, v11);
  }

  [v1 setImage:v8 forState:0];

  sub_1A2249270();
  return sub_1A2249440(a1);
}

uint64_t sub_1A22488D0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB088E70, qword_1A230A9C0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t (*sub_1A2248940(uint64_t *a1))()
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
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
  v6 = sub_1A22E5BD8();
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

  v9 = OBJC_IVAR____TtC13MediaControls19SessionActionButton_action;
  v5[6] = v8;
  v5[7] = v9;
  swift_beginAccess();
  return sub_1A2248A30;
}

void sub_1A2248A30(void *a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if (a2)
  {
    v4 = v3[6];
  }

  else
  {
    v5 = v3[7];
    v6 = v3[4];
    v7 = v3[5];
    v8 = v3[3];
    if ((*(v7 + 48))(&v8[v5], 1, v6))
    {
      v9 = 0;
    }

    else
    {
      v10 = v3[6];
      (*(v7 + 16))(v10, &v8[v5], v6);
      v11 = sub_1A22E5BB8();
      v13 = v12;
      (*(v7 + 8))(v10, v6);
      v9 = sub_1A22DC57C(v11, v13);

      v8 = v3[3];
    }

    v4 = v3[6];
    [v8 setImage:v9 forState:0];

    sub_1A2249270();
  }

  free(v4);

  free(v3);
}

char *sub_1A2248B58(double a1, double a2, double a3, double a4)
{
  swift_getObjectType();
  v9 = OBJC_IVAR____TtC13MediaControls19SessionActionButton_action;
  v10 = sub_1A22E5BD8();
  (*(*(v10 - 8) + 56))(&v4[v9], 1, 1, v10);
  v11 = OBJC_IVAR____TtC13MediaControls19SessionActionButton_backgroundView;
  *&v4[v11] = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
  *&v4[OBJC_IVAR____TtC13MediaControls19SessionActionButton_visualStylingProvider] = 0;
  v20.receiver = v4;
  v20.super_class = type metadata accessor for SessionActionButton(0);
  v12 = objc_msgSendSuper2(&v20, sel_initWithFrame_, a1, a2, a3, a4);
  v13 = [v12 imageView];
  if (v13)
  {
    v14 = v13;
    [v13 setContentMode_];
  }

  v15 = OBJC_IVAR____TtC13MediaControls19SessionActionButton_backgroundView;
  [*&v12[OBJC_IVAR____TtC13MediaControls19SessionActionButton_backgroundView] setUserInteractionEnabled_];
  v16 = *&v12[v15];
  sub_1A225C9E8(v16, v17);

  v18 = *&v12[v15];
  sub_1A225CA7C();

  [v12 insertSubview:*&v12[v15] atIndex:0];
  sub_1A2115288(0, &qword_1ED94EA40, 0x1E69DD1B8);
  sub_1A22E6B58();
  sub_1A22E6C48();

  swift_unknownObjectRelease();

  return v12;
}

void sub_1A2248D70()
{
  v1 = OBJC_IVAR____TtC13MediaControls19SessionActionButton_action;
  v2 = sub_1A22E5BD8();
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  v3 = OBJC_IVAR____TtC13MediaControls19SessionActionButton_backgroundView;
  *(v0 + v3) = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
  *(v0 + OBJC_IVAR____TtC13MediaControls19SessionActionButton_visualStylingProvider) = 0;
  sub_1A22E7028();
  __break(1u);
}

void sub_1A2248F24()
{
  v4.receiver = v0;
  v4.super_class = type metadata accessor for SessionActionButton(0);
  objc_msgSendSuper2(&v4, sel_layoutSubviews);
  v1 = *&v0[OBJC_IVAR____TtC13MediaControls19SessionActionButton_backgroundView];
  [v0 bounds];
  [v1 setFrame_];
  v2 = [v0 imageView];
  if (v2)
  {
    v3 = v2;
    [v0 bounds];
    [v3 setFrame_];
  }
}

double sub_1A2249098()
{
  swift_beginAccess();

  return result;
}

double sub_1A22490E0(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC13MediaControls19SessionActionButton_visualStylingProvider;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  if (a1)
  {
    if (v4 == a1)
    {
      goto LABEL_6;
    }
  }

  else
  {

    if (!v4)
    {
      goto LABEL_6;
    }
  }

  sub_1A2249270();

LABEL_6:

  return result;
}

void (*sub_1A2249170(uint64_t *a1))(void **a1, char a2)
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
  v5 = OBJC_IVAR____TtC13MediaControls19SessionActionButton_visualStylingProvider;
  swift_beginAccess();
  *(v4 + 24) = *(v1 + v5);

  return sub_1A224920C;
}

void sub_1A224920C(void **a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 3);
  if (a2)
  {

    sub_1A22490E0(v4);
  }

  else
  {
    sub_1A22490E0(v3);
  }

  free(v2);
}

void sub_1A2249270()
{
  v1 = v0;
  v2 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x80))();
  if (v2)
  {
    v3 = v2;
    if ([v1 isHighlighted])
    {
      v4 = 0.75;
    }

    else
    {
      v4 = 1.0;
    }

    v5 = [v1 isEnabled];
    v6 = [v1 traitCollection];
    if (v5)
    {
      v7 = 0;
    }

    else
    {
      v7 = 2;
    }

    v8 = (*(*v3 + 152))(v7, v6);

    v12 = [v8 colorWithAlphaComponent_];
    v9 = [v1 imageView];
    if (v9)
    {
      v10 = v9;
      v11 = [objc_opt_self() configurationWithHierarchicalColor_];
      [v10 setSymbolConfiguration_];
    }

    [v1 setTintColor_];
  }
}

uint64_t sub_1A2249440(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB088E70, qword_1A230A9C0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t type metadata accessor for SessionActionButton(uint64_t a1)
{
  result = qword_1ED952CC0;
  if (!qword_1ED952CC0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_1A2249538()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SessionActionButton(0);
  return objc_msgSendSuper2(&v2, sel_isHighlighted);
}

void sub_1A22495C4(char a1)
{
  v3 = type metadata accessor for SessionActionButton(0);
  v8.receiver = v1;
  v8.super_class = v3;
  v4 = objc_msgSendSuper2(&v8, sel_isHighlighted);
  v7.receiver = v1;
  v7.super_class = v3;
  objc_msgSendSuper2(&v7, sel_setHighlighted_, a1 & 1);
  if (v4 != [v1 isHighlighted])
  {
    if ([v1 isHighlighted])
    {
      sub_1A2249270();
    }

    else
    {
      sub_1A2115288(0, &qword_1ED94E980, 0x1E69DD250);
      sub_1A229BE48(v9);
      v5 = swift_allocObject();
      *(v5 + 16) = v1;
      v6 = v1;
      sub_1A21179EC(v9, sub_1A224977C, v5, 0, 0);

      sub_1A2116928(v9);
    }
  }
}

id sub_1A22496E4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SessionActionButton(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1A224977C()
{
  v1 = *(v0 + 16);
  v2 = (*((*MEMORY[0x1E69E7D40] & *v1) + 0x80))();
  if (v2)
  {
    v3 = v2;
    if ([v1 isHighlighted])
    {
      v4 = 0.75;
    }

    else
    {
      v4 = 1.0;
    }

    v5 = [v1 isEnabled];
    v6 = [v1 traitCollection];
    if (v5)
    {
      v7 = 0;
    }

    else
    {
      v7 = 2;
    }

    v8 = (*(*v3 + 152))(v7, v6);

    v9 = [v8 colorWithAlphaComponent_];
    v10 = [v1 imageView];
    if (v10)
    {
      v11 = v10;
      v12 = [objc_opt_self() configurationWithHierarchicalColor_];
      [v11 setSymbolConfiguration_];
    }

    [v1 setTintColor_];
  }
}