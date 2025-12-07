id sub_2412907AC()
{
  if ([objc_opt_self() forceDisableRealWorldOcclusion])
  {
    v1 = 0;
  }

  else
  {
    result = [objc_opt_self() supportsSceneReconstruction];
    v3 = *(v0 + OBJC_IVAR___ASVPreviewViewControllerInternal_interfaceState + 8) - 3;
    if (v3 < 3)
    {
      v1 = result;
    }

    else
    {
      v1 = 0;
    }

    if ((result & 1) == 0 && v3 <= 2)
    {
      v4 = *(v0 + OBJC_IVAR___ASVPreviewViewControllerInternal_modelController);
      if (!v4)
      {
        __break(1u);
        return result;
      }

      v1 = *(v4 + OBJC_IVAR____TtC11AssetViewer15ModelController_isFaceAnchoredScene);
    }
  }

  if (qword_27E537CD0 != -1)
  {
    swift_once();
  }

  v5 = sub_241352FFC();
  __swift_project_value_buffer(v5, qword_27E53A538);
  v6 = sub_241352FDC();
  v7 = sub_2413540DC();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 67109120;
    *(v8 + 4) = v1;
    _os_log_impl(&dword_241215000, v6, v7, "shouldEnableRealWorldOcclusion: %{BOOL}d", v8, 8u);
    MEMORY[0x245CE4870](v8, -1, -1);
  }

  return v1;
}

BOOL sub_241290920()
{
  if ([objc_opt_self() supportsSceneReconstruction])
  {
    v1 = *(v0 + OBJC_IVAR___ASVPreviewViewControllerInternal_interfaceState + 8) - 2 < 4;
  }

  else
  {
    v1 = 0;
  }

  if (qword_27E537CD0 != -1)
  {
    swift_once();
  }

  v2 = sub_241352FFC();
  __swift_project_value_buffer(v2, qword_27E53A538);
  v3 = sub_241352FDC();
  v4 = sub_2413540DC();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 67109120;
    *(v5 + 4) = v1;
    _os_log_impl(&dword_241215000, v3, v4, "shouldEnableRealWorldCollision: %{BOOL}d", v5, 8u);
    MEMORY[0x245CE4870](v5, -1, -1);
  }

  return v1;
}

void sub_241290A48(uint64_t a1)
{
  if (qword_27E537CD0 != -1)
  {
    swift_once();
  }

  v1 = sub_241352FFC();
  __swift_project_value_buffer(v1, qword_27E53A538);
  v2 = sub_241352FDC();
  v3 = sub_2413540DC();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_241215000, v2, v3, "Dispatched after anchoring", v4, 2u);
    MEMORY[0x245CE4870](v4, -1, -1);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    if (Strong[OBJC_IVAR___ASVPreviewViewControllerInternal_interfaceState + 8] - 3 < 3 && (v6 = *&Strong[OBJC_IVAR___ASVPreviewViewControllerInternal_modelController]) != 0 && (v7 = *(v6 + OBJC_IVAR____TtC11AssetViewer15ModelController_arView)) != 0)
    {
      v8 = Strong;
      v9 = v7;
      sub_24135292C();
      sub_2413524EC();

      sub_24135243C();
      swift_dynamicCastClassUnconditional();
      sub_2413523DC();

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }
}

void sub_241290C40()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E538940, &qword_241366CB0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v50 - v2;
  *&v56 = sub_241352B6C();
  v4 = *(v56 - 8);
  MEMORY[0x28223BE20](v56);
  v6 = &v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_241287420();
  v8 = v7[OBJC_IVAR____TtC11AssetViewer28ARQuickLookOverlayController_operationMode];

  if (v8 == 1)
  {
    return;
  }

  *&v57 = OBJC_IVAR___ASVPreviewViewControllerInternal_modelController;
  v9 = *(v0 + OBJC_IVAR___ASVPreviewViewControllerInternal_modelController);
  if (!v9)
  {
LABEL_59:
    __break(1u);
    goto LABEL_60;
  }

  v10 = *(v9 + OBJC_IVAR____TtC11AssetViewer15ModelController_arView);
  if (!v10)
  {
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
LABEL_64:
    __break(1u);
LABEL_65:
    __break(1u);
    return;
  }

  if (*(v10 + qword_27E53A1C8) == 3)
  {
    return;
  }

  *(v0 + OBJC_IVAR___ASVPreviewViewControllerInternal_interfaceState + 8) = 2;
  [v0 updateInterfaceState];
  v11 = *(v0 + v57);
  if (!v11)
  {
    goto LABEL_61;
  }

  v51 = v3;
  v12 = *(v11 + OBJC_IVAR____TtC11AssetViewer15ModelController_entityControllers);
  if (v12 >> 62)
  {
    goto LABEL_54;
  }

  for (i = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_2413544EC())
  {

    v55 = v0;
    if (i)
    {
      v14 = 0;
      v54 = v12 & 0xC000000000000001;
      v53 = v12 & 0xFFFFFFFFFFFFFF8;
      v52 = (v4 + 8);
      while (1)
      {
        if (v54)
        {
          v15 = MEMORY[0x245CE29C0](v14, v12);
        }

        else
        {
          if (v14 >= *(v53 + 16))
          {
            goto LABEL_51;
          }

          v15 = *(v12 + 8 * v14 + 32);
        }

        v16 = v15;
        v17 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          __break(1u);
LABEL_51:
          __break(1u);
          goto LABEL_52;
        }

        v18 = *(v0 + v57);
        if (!v18)
        {
          break;
        }

        v19 = *(v18 + OBJC_IVAR____TtC11AssetViewer15ModelController_arView);
        if (!v19)
        {
          goto LABEL_57;
        }

        v20 = v19;
        sub_24135292C();
        v4 = sub_2413524BC();

        if (!v4)
        {
          goto LABEL_58;
        }

        sub_241352C5C();

        sub_2413518AC();
        sub_241352B5C();

        (*v52)(v6, v56);
        sub_241247C18(0, 0, 0, 0.35);
        if (qword_27E537C48 != -1)
        {
          swift_once();
        }

        v21 = *algn_27E541870;
        v22 = xmmword_27E541880;
        v23 = &v16[OBJC_IVAR____TtC11AssetViewer16EntityController_transformToWorldInARMode];
        *v23 = xmmword_27E541860;
        *(v23 + 1) = v21;
        *(v23 + 2) = v22;

        ++v14;
        v0 = v55;
        if (v17 == i)
        {
          goto LABEL_22;
        }
      }

      __break(1u);
LABEL_57:
      __break(1u);
LABEL_58:
      __break(1u);
      goto LABEL_59;
    }

LABEL_22:

    *(v0 + OBJC_IVAR___ASVPreviewViewControllerInternal_didPlaceFirstEntityInARWorld) = 0;
    sub_24128A758();
    v24 = sub_241351DEC();
    v25 = v51;
    (*(*(v24 - 8) + 56))(v51, 1, 1, v24);
    v26 = OBJC_IVAR___ASVPreviewViewControllerInternal_lastPlacedAnchoringComponentTarget;
    swift_beginAccess();
    sub_241255BC8(v25, v0 + v26, &qword_27E538940, &qword_241366CB0);
    swift_endAccess();
    v27 = *(v0 + v57);
    if (!v27)
    {
      goto LABEL_62;
    }

    v0 = *(v27 + OBJC_IVAR____TtC11AssetViewer15ModelController_entityControllers);
    v28 = v0 >> 62 ? sub_2413544EC() : *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10);

    if (!v28)
    {
      break;
    }

    v29 = 0;
    v12 = &OBJC_IVAR____TtC11AssetViewer16EntityController_physicsStateManager;
    while (1)
    {
      if ((v0 & 0xC000000000000001) != 0)
      {
        v30 = MEMORY[0x245CE29C0](v29, v0);
      }

      else
      {
        if (v29 >= *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_53;
        }

        v30 = *(v0 + 8 * v29 + 32);
      }

      v6 = v30;
      v31 = v29 + 1;
      if (__OFADD__(v29, 1))
      {
        break;
      }

      v4 = &v30[OBJC_IVAR____TtC11AssetViewer16EntityController_physicsStateManager];
      sub_24133B1DC(*&v30[OBJC_IVAR____TtC11AssetViewer16EntityController_physicsStateManager], *&v30[OBJC_IVAR____TtC11AssetViewer16EntityController_physicsStateManager + 8]);
      sub_24133AFBC(*v4, *(v4 + 1));

      ++v29;
      if (v31 == v28)
      {
        goto LABEL_34;
      }
    }

LABEL_52:
    __break(1u);
LABEL_53:
    __break(1u);
LABEL_54:
    ;
  }

LABEL_34:

  v32 = [objc_opt_self() triggerAffordanceShouldReshowAfterArReset];
  v33 = v55;
  if (v32)
  {
    v34 = OBJC_IVAR___ASVPreviewViewControllerInternal_interactionsShownState;
    swift_beginAccess();
    *(v33 + v34) = MEMORY[0x277D84F98];
  }

  v35 = *(v33 + v57);
  if (!v35)
  {
    goto LABEL_63;
  }

  if (*(*(v35 + OBJC_IVAR____TtC11AssetViewer15ModelController_modelAnimationController) + OBJC_IVAR____TtC11AssetViewer24ModelAnimationController_animationState) == 1)
  {
    if (qword_27E537CD0 != -1)
    {
      swift_once();
    }

    v36 = sub_241352FFC();
    __swift_project_value_buffer(v36, qword_27E53A538);
    v37 = sub_241352FDC();
    v38 = sub_2413540DC();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      *v39 = 0;
      _os_log_impl(&dword_241215000, v37, v38, "[Animation] Stop animation and audio, and seek to beginning inside stageBackToHologram() since showing scrubber", v39, 2u);
      MEMORY[0x245CE4870](v39, -1, -1);
    }

    v40 = v55;
    sub_241337AB8(0, 1);
    if (!*(v40 + v57))
    {
      goto LABEL_65;
    }

    sub_241349784(0.0);

    v41 = *(*(v40 + OBJC_IVAR___ASVPreviewViewControllerInternal_playbackViewController) + OBJC_IVAR____TtC11AssetViewer30PlaybackControlsViewController_scrubberView);
    v42 = &v41[OBJC_IVAR____TtC11AssetViewer12ScrubberView_timing];
    v43 = v41[OBJC_IVAR____TtC11AssetViewer12ScrubberView_timing];
    *&v44 = *&v41[OBJC_IVAR____TtC11AssetViewer12ScrubberView_timing + 8];
    v56 = v44;
    *&v44 = *&v41[OBJC_IVAR____TtC11AssetViewer12ScrubberView_timing + 24];
    v57 = v44;
    v45 = v41;
    Current = CFAbsoluteTimeGetCurrent();
    v59[0] = v43;
    v47 = v56;
    *&v48.f64[0] = v57;
    *&v59[8] = v56;
    *&v59[24] = v57;
    v60 = Current;
    *&v58[32] = *(v42 + 4);
    v49 = *(v42 + 1);
    *v58 = *v42;
    *&v58[16] = v49;
    *(v42 + 1) = *&v59[16];
    *v42 = *v59;
    *(v42 + 4) = v60;
    v48.f64[1] = Current;
    if (vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v47, *&v58[8]), vceqq_f64(v48, *&v58[24])))) & 1) == 0 || ((v43 ^ v58[0]))
    {
      sub_241283228(v58, v59);
    }

    v33 = v55;
  }

  sub_24128987C(0xA, 0);
  if (!*(v33 + OBJC_IVAR___ASVPreviewViewControllerInternal_worldRaycastStrategy))
  {
    goto LABEL_64;
  }

  sub_241256170();

  sub_2412C7010(1.0);
}

id sub_241291418()
{
  v1 = OBJC_IVAR___ASVPreviewViewControllerInternal_placeModelTimer;
  v2 = *(v0 + OBJC_IVAR___ASVPreviewViewControllerInternal_placeModelTimer);
  if (v2)
  {
    [v2 invalidate];
    v3 = *(v0 + v1);
  }

  else
  {
    v3 = 0;
  }

  *(v0 + v1) = 0;

  [objc_opt_self() cancelPreviousPerformRequestsWithTarget:v0 selector:sel_activateCoachingView object:0];
  v4 = sub_241289004();
  [v4 setActive:0 animated:0];

  v5 = (v0 + OBJC_IVAR___ASVPreviewViewControllerInternal_coachingOverlayViewDidDeactivateCompletionBlock);
  v6 = *(v0 + OBJC_IVAR___ASVPreviewViewControllerInternal_coachingOverlayViewDidDeactivateCompletionBlock);
  v7 = *(v0 + OBJC_IVAR___ASVPreviewViewControllerInternal_coachingOverlayViewDidDeactivateCompletionBlock + 8);
  *v5 = 0;
  v5[1] = 0;
  sub_2412186FC(v6, v7);
  v8 = OBJC_IVAR___ASVPreviewViewControllerInternal_hideLozengeTimer;
  v9 = *(v0 + OBJC_IVAR___ASVPreviewViewControllerInternal_hideLozengeTimer);
  if (v9)
  {
    [v9 invalidate];
    v10 = *(v0 + v8);
  }

  else
  {
    v10 = 0;
  }

  *(v0 + v8) = 0;

  v11 = *(v0 + OBJC_IVAR___ASVPreviewViewControllerInternal_lozengeLabel);

  return [v11 setHidden:1 animated:0];
}

void sub_241291524()
{
  v1 = v0;
  v2 = sub_2413538CC();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v67 = &v63 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = sub_2413538FC();
  v66 = *(v68 - 8);
  MEMORY[0x28223BE20](v68);
  v65 = &v63 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = sub_241352B6C();
  v6 = *(v87 - 8);
  MEMORY[0x28223BE20](v87);
  v8 = &v63 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = sub_2413517DC();
  v9 = *(v71 - 8);
  MEMORY[0x28223BE20](v71);
  v70 = &v63 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = sub_241352DDC();
  v11 = *(v78 - 8);
  MEMORY[0x28223BE20](v78);
  v77 = &v63 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  [v0 setFullScreen_];
  sub_241291418();
  v0[OBJC_IVAR___ASVPreviewViewControllerInternal_interfaceState + 8] = 1;
  [v0 updateInterfaceState];
  v88 = OBJC_IVAR___ASVPreviewViewControllerInternal_modelController;
  v13 = *&v0[OBJC_IVAR___ASVPreviewViewControllerInternal_modelController];
  if (!v13)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  if (*(v13 + OBJC_IVAR____TtC11AssetViewer15ModelController_rootEntityController))
  {
    v63 = v3;
    v64 = v2;
    v14 = dispatch_group_create();
    v15 = *&v0[v88];
    if (!v15)
    {
LABEL_34:
      __break(1u);
      goto LABEL_35;
    }

    v16 = v14;
    v17 = *(v15 + OBJC_IVAR____TtC11AssetViewer15ModelController_entityControllers);
    if (v17 >> 62)
    {
LABEL_28:
      v61 = v17;
      v62 = sub_2413544EC();
      v17 = v61;
      v18 = v62;
      if (v62)
      {
LABEL_6:
        v85 = OBJC_IVAR___ASVPreviewViewControllerInternal_didPlaceFirstEntityInARWorld;
        v86 = v17 & 0xC000000000000001;
        v72 = v17 & 0xFFFFFFFFFFFFFF8;
        v76 = (v11 + 8);
        v69 = v9 + 1;
        v82 = (v6 + 8);
        v19 = v17;

        v20 = v19;
        v11 = 0;
        v83 = v18;
        v84 = v19;
        while (1)
        {
          if (v86)
          {
            v21 = MEMORY[0x245CE29C0](v11);
          }

          else
          {
            if (v11 >= *(v72 + 16))
            {
              goto LABEL_27;
            }

            v21 = *(v20 + 8 * v11 + 32);
          }

          v9 = v21;
          v22 = v11 + 1;
          if (__OFADD__(v11, 1))
          {
            __break(1u);
LABEL_27:
            __break(1u);
            goto LABEL_28;
          }

          if (v1[v85] == 1)
          {
            sub_241352E1C();
            v80 = v24;
            v81 = v23;
            v79 = v25;
            sub_241352C5C();
            sub_24135195C();
            v26 = v77;
            sub_241352E2C();
            type metadata accessor for RESRT(0);
            sub_241352DCC();
            (*v76)(v26, v78);
            v27 = v91;
            v28 = v92;
            v29 = v9 + OBJC_IVAR____TtC11AssetViewer16EntityController_transformToWorldInARMode;
            *v29 = aBlock;
            *(v29 + 1) = v27;
            *(v29 + 2) = v28;
            if (*(v9 + OBJC_IVAR____TtC11AssetViewer16EntityController_shouldUseTightBoundsSPI) == 1)
            {
              sub_241352E1C();
              sub_24135195C();
              *&v33 = sub_2412AC428(v32, v31, v30);
              v80 = v34;
              v81 = v33;
              v79 = v35;
              v73 = v36;
              v37 = v70;
              sub_24135296C();
              sub_2413516FC();
              (*v69)(v37, v71);
              REEntityComputeTightMeshBounds();
              HIDWORD(v38) = HIDWORD(v74);
              HIDWORD(v39) = HIDWORD(v75);
              v75 = v39;
              v74 = v38;
            }

            else
            {
              sub_24135191C();
            }

            sub_24135174C();
            v40 = v9 + OBJC_IVAR____TtC11AssetViewer16EntityController_lastBoundingBox;
            *v40 = v41;
            *(v40 + 1) = v42;
          }

          v43 = *&v1[v88];
          if (!v43)
          {
            break;
          }

          v44 = *(v43 + OBJC_IVAR____TtC11AssetViewer15ModelController_arView);
          if (!v44)
          {
            goto LABEL_32;
          }

          v45 = v1;
          v46 = v44;
          sub_24135292C();
          v47 = sub_2413524BC();

          if (!v47)
          {
            __break(1u);
            break;
          }

          sub_241352C5C();

          sub_2413518AC();
          sub_241352B5C();

          (*v82)(v8, v87);
          dispatch_group_enter(v16);
          v6 = swift_allocObject();
          *(v6 + 16) = v16;
          v48 = v16;
          sub_241247C18(0, sub_2412B36D8, v6, 0.35);

          ++v11;
          v20 = v84;
          v1 = v45;
          if (v22 == v83)
          {

            goto LABEL_22;
          }
        }

        __break(1u);
LABEL_32:
        __break(1u);
        goto LABEL_33;
      }
    }

    else
    {
      v18 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v18)
      {
        goto LABEL_6;
      }
    }

LABEL_22:
    dispatch_group_enter(v16);
    v49 = *&v1[v88];
    if (!v49)
    {
LABEL_35:
      __break(1u);
      goto LABEL_36;
    }

    v50 = *(v49 + OBJC_IVAR____TtC11AssetViewer15ModelController_rootEntityController);
    if (!v50)
    {
LABEL_36:
      __break(1u);
      return;
    }

    v51 = swift_allocObject();
    *(v51 + 16) = v16;
    v52 = v16;
    v53 = v50;
    sub_241247C18(0, sub_2412B3430, v51, 0.35);

    v54 = OBJC_IVAR___ASVPreviewViewControllerInternal_didPlaceFirstEntityInARWorld;
    v1[OBJC_IVAR___ASVPreviewViewControllerInternal_hasPlacedModelInWorldAlready] = v1[OBJC_IVAR___ASVPreviewViewControllerInternal_didPlaceFirstEntityInARWorld];
    v1[v54] = 0;
    sub_24128A758();
    sub_241246158(0, &qword_27E538920, 0x277D85C78);
    v55 = sub_24135416C();
    v56 = swift_allocObject();
    swift_unknownObjectWeakInit();
    *&v92 = sub_2412B3438;
    *(&v92 + 1) = v56;
    *&aBlock = MEMORY[0x277D85DD0];
    *(&aBlock + 1) = 1107296256;
    *&v91 = sub_2412D5698;
    *(&v91 + 1) = &block_descriptor_101;
    v57 = _Block_copy(&aBlock);

    v58 = v65;
    sub_2413538DC();
    v89 = MEMORY[0x277D84F90];
    sub_2412B3164(&qword_27E539870, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E538930, &unk_2413674A0);
    sub_24123D370(&qword_27E539880, &unk_27E538930, &unk_2413674A0, MEMORY[0x277D83970]);
    v59 = v67;
    v60 = v64;
    sub_24135444C();
    sub_24135412C();
    _Block_release(v57);

    (*(v63 + 8))(v59, v60);
    (*(v66 + 8))(v58, v68);
  }
}

void sub_241291F60(uint64_t a1)
{
  v19 = sub_241352B6C();
  v1 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v3 = &v19 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v23 = OBJC_IVAR___ASVPreviewViewControllerInternal_modelController;
    v6 = *(Strong + OBJC_IVAR___ASVPreviewViewControllerInternal_modelController);
    if (!v6)
    {
LABEL_29:
      __break(1u);
      return;
    }

    v7 = *(v6 + OBJC_IVAR____TtC11AssetViewer15ModelController_entityControllers);
    if (v7 >> 62)
    {
LABEL_25:
      v8 = sub_2413544EC();
    }

    else
    {
      v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v8)
    {
      v9 = 0;
      v21 = v7 & 0xFFFFFFFFFFFFFF8;
      v22 = v7 & 0xC000000000000001;
      v10 = (v1 + 8);
      v20 = v5;
      while (1)
      {
        if (v22)
        {
          v12 = MEMORY[0x245CE29C0](v9, v7);
        }

        else
        {
          if (v9 >= *(v21 + 16))
          {
            goto LABEL_24;
          }

          v12 = *(v7 + 8 * v9 + 32);
        }

        v13 = v12;
        v14 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
          __break(1u);
LABEL_24:
          __break(1u);
          goto LABEL_25;
        }

        v15 = *&v5[v23];
        if (!v15)
        {
          break;
        }

        v16 = *(v15 + OBJC_IVAR____TtC11AssetViewer15ModelController_isFaceAnchoredScene);
        v17 = *(v15 + OBJC_IVAR____TtC11AssetViewer15ModelController_arView);
        if (v16)
        {
          v18 = &qword_27E53A1A8;
          if (!v17)
          {
            goto LABEL_28;
          }
        }

        else
        {
          v18 = &qword_27E53A1A0;
          if (!v17)
          {
            goto LABEL_27;
          }
        }

        if (*(v17 + *v18))
        {
          sub_241352C5C();

          sub_2413518AC();
          sub_241352B5C();

          (*v10)(v3, v19);
        }

        else
        {
          sub_241352C5C();
          sub_2413518BC();
        }

        v1 = *&v13[OBJC_IVAR____TtC11AssetViewer16EntityController_physicsStateManager];

        sub_24133D85C(v11);

        ++v9;
        v5 = v20;
        if (v14 == v8)
        {
          goto LABEL_21;
        }
      }

      __break(1u);
LABEL_27:
      __break(1u);
LABEL_28:
      __break(1u);
      goto LABEL_29;
    }

LABEL_21:

    sub_24129225C();
  }
}

void sub_24129225C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E538850, &unk_241366BF0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v10 - v2;
  if ((v0[OBJC_IVAR___ASVPreviewViewControllerInternal_onStartInteractionTriggered] & 1) == 0)
  {
    v0[OBJC_IVAR___ASVPreviewViewControllerInternal_onStartInteractionTriggered] = 1;
    v4 = sub_241353EEC();
    (*(*(v4 - 8) + 56))(v3, 1, 1, v4);
    sub_241353ECC();
    v5 = v0;
    v6 = sub_241353EBC();
    v7 = swift_allocObject();
    v8 = MEMORY[0x277D85700];
    v7[2] = v6;
    v7[3] = v8;
    v7[4] = v5;
    sub_241327238(0, 0, v3, &unk_2413674E0, v7);

    v9 = *&v5[OBJC_IVAR___ASVPreviewViewControllerInternal_modelController];
    if (v9)
    {
      if (*(*(v9 + OBJC_IVAR____TtC11AssetViewer15ModelController_modelAnimationController) + OBJC_IVAR____TtC11AssetViewer24ModelAnimationController_animationState + 1) == 1)
      {
        sub_241337AB8(1, 1);
      }
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_2412923E8()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E538940, &qword_241366CB0);
  MEMORY[0x28223BE20](v2 - 8);
  v177 = &v173 - v3;
  v4 = sub_241351DEC();
  v178 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v176 = &v173 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v175 = &v173 - v7;
  v8 = sub_241351B7C();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v191 = &v173 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v173 - v12;
  v193 = sub_241352B6C();
  v14 = *(v193 - 8);
  MEMORY[0x28223BE20](v193);
  v192 = &v173 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_24135256C();
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v173 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v199 = OBJC_IVAR___ASVPreviewViewControllerInternal_modelController;
  v21 = *(v1 + OBJC_IVAR___ASVPreviewViewControllerInternal_modelController);
  if (!v21)
  {
LABEL_186:
    __break(1u);
LABEL_187:
    __break(1u);
LABEL_188:
    __break(1u);
LABEL_189:
    __break(1u);
    goto LABEL_190;
  }

  if (!*(v21 + OBJC_IVAR____TtC11AssetViewer15ModelController_rootEntityController))
  {
    return;
  }

  v173 = v4;
  v22 = *(v21 + OBJC_IVAR____TtC11AssetViewer15ModelController_arView);
  if (!v22)
  {
    goto LABEL_189;
  }

  (*(v17 + 104))(v20, *MEMORY[0x277CDB590], v18);
  v23 = v22;
  sub_24135258C();

  v24 = *(v1 + v199);
  if (!v24)
  {
LABEL_190:
    __break(1u);
    goto LABEL_191;
  }

  v25 = *(v24 + OBJC_IVAR____TtC11AssetViewer15ModelController_isFaceAnchoredScene);
  v198 = v1;
  if (v25 != 1)
  {
    v48 = *(v24 + OBJC_IVAR____TtC11AssetViewer15ModelController_arView);
    if (v48)
    {
      v49 = v48;
      v50 = sub_2412907AC();
      sub_241321910(v50 & 1);

      v51 = *(v1 + v199);
      if (v51)
      {
        v28 = *(v51 + OBJC_IVAR____TtC11AssetViewer15ModelController_entityControllers);
        if (v28 >> 62)
        {
          goto LABEL_165;
        }

        v52 = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10);
        goto LABEL_29;
      }

      goto LABEL_194;
    }

    goto LABEL_192;
  }

  *(v1 + OBJC_IVAR___ASVPreviewViewControllerInternal_interfaceState + 8) = 3;
  [v1 updateInterfaceState];
  v26 = *(v1 + v199);
  if (!v26)
  {
LABEL_191:
    __break(1u);
LABEL_192:
    __break(1u);
    goto LABEL_193;
  }

  v27 = *(v26 + OBJC_IVAR____TtC11AssetViewer15ModelController_arView);
  if (!v27)
  {
LABEL_193:
    __break(1u);
LABEL_194:
    __break(1u);
LABEL_195:
    __break(1u);
LABEL_196:
    __break(1u);
LABEL_197:
    __break(1u);
LABEL_198:
    __break(1u);
    goto LABEL_199;
  }

  v28 = v27;
  sub_24131BD4C();

  v29 = *(v1 + v199);
  if (!v29)
  {
    goto LABEL_195;
  }

  v8 = *(v29 + OBJC_IVAR____TtC11AssetViewer15ModelController_entityControllers);
  if (v8 >> 62)
  {
    v30 = sub_2413544EC();
    if (!v30)
    {
      return;
    }
  }

  else
  {
    v30 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v30)
    {
      return;
    }
  }

  v197.i64[0] = v8 & 0xC000000000000001;
  v191 = (v8 & 0xFFFFFFFFFFFFFF8);
  v194.i64[0] = v14 + 8;

  v14 = 0;
  v196 = xmmword_241365D00;
  v195 = xmmword_241367070;
  while (1)
  {
    if (v197.i64[0])
    {
      v34 = MEMORY[0x245CE29C0](v14, v8);
    }

    else
    {
      if (v14 >= *(v191 + 2))
      {
        goto LABEL_160;
      }

      v34 = *(v8 + 8 * v14 + 32);
    }

    v35 = v34;
    v36 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    v37 = *&v34[OBJC_IVAR____TtC11AssetViewer16EntityController_worldGestureRecognizer];
    if (v37)
    {
      [v37 setEnabledGestureTypes_];
    }

    v38 = OBJC_IVAR____TtC11AssetViewer16EntityController_entity;

    sub_241352C5C();
    v9 = MEMORY[0x277CDB1B8];
    v39 = sub_2413519AC();
    *(v40 + 32) = 0;
    *(v40 + 40) = 0;
    v39(&v200, 0);

    v41 = sub_2413519AC();
    v42[1] = v196;
    v41(&v200, 0);

    v43 = sub_2413519AC();
    *v44 = v195;
    v43(&v200, 0);

    v45 = *(v198 + v199);
    if (!v45)
    {
      __break(1u);
LABEL_177:
      __break(1u);
LABEL_178:
      __break(1u);
LABEL_179:
      __break(1u);
LABEL_180:
      __break(1u);
LABEL_181:
      __break(1u);
LABEL_182:
      __break(1u);
LABEL_183:
      __break(1u);
LABEL_184:
      __break(1u);
LABEL_185:
      __break(1u);
      goto LABEL_186;
    }

    v46 = *(v45 + OBJC_IVAR____TtC11AssetViewer15ModelController_arView);
    if (!v46)
    {
      goto LABEL_177;
    }

    v47 = *&v35[v38];
    v13 = *(v46 + qword_27E53A1A0);
    if (v13)
    {

      v9 = v30;
      v31 = v8;
      v32 = v192;
      sub_2413518AC();
      v28 = v32;
      sub_241352B5C();

      v33 = v32;
      v8 = v31;
      v30 = v9;
      (*v194.i64[0])(v33, v193);
    }

    else
    {
      v28 = v47;
      sub_2413518BC();
    }

    ++v14;
    if (v36 == v30)
    {
LABEL_44:

      return;
    }
  }

  __break(1u);
LABEL_154:
  __break(1u);
LABEL_155:
  __break(1u);
LABEL_156:
  __break(1u);
LABEL_157:
  __break(1u);
LABEL_158:
  __break(1u);
LABEL_159:
  __break(1u);
LABEL_160:
  __break(1u);
  while (1)
  {
    __break(1u);
LABEL_162:
    __break(1u);
LABEL_163:
    __break(1u);
LABEL_164:
    __break(1u);
LABEL_165:
    v52 = sub_2413544EC();
LABEL_29:
    v174 = v14;

    if (v52)
    {
      v14 = 0;
      v189 = v28 & 0xFFFFFFFFFFFFFF8;
      v190 = v28 & 0xC000000000000001;
      v179 = "ewer16EntityController,N,R";
      v185 = *MEMORY[0x277CDAC80];
      v184 = (v9 + 104);
      v183 = (v9 + 16);
      *&v53 = 136315138;
      v181 = v53;
      v182 = (v9 + 8);
      v180 = (v9 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v9 = v191;
      v188 = v13;
      v187 = v28;
      v186 = v52;
      do
      {
        if (v190)
        {
          v58 = MEMORY[0x245CE29C0](v14, v28);
        }

        else
        {
          if (v14 >= *(v189 + 16))
          {
            goto LABEL_155;
          }

          v58 = *(v28 + 8 * v14 + 32);
        }

        v59 = v58;
        if (__OFADD__(v14, 1))
        {
          goto LABEL_154;
        }

        v60 = *&v58[OBJC_IVAR____TtC11AssetViewer16EntityController_physicsStateManager + 8];
        v194.i64[0] = *&v58[OBJC_IVAR____TtC11AssetViewer16EntityController_physicsStateManager];
        v195.i64[0] = v60;
        if (qword_27E537CD0 != -1)
        {
          swift_once();
        }

        v61 = sub_241352FFC();
        __swift_project_value_buffer(v61, qword_27E53A538);
        v62 = sub_241352FDC();
        v63 = sub_2413540DC();
        v64 = os_log_type_enabled(v62, v63);
        v197.i64[0] = v59;
        v196.i64[0] = v14 + 1;
        if (v64)
        {
          v65 = swift_slowAlloc();
          v66 = swift_slowAlloc();
          v200 = v66;
          *v65 = v181;
          *(v65 + 4) = sub_2412DDC2C(0xD000000000000014, v179 | 0x8000000000000000, &v200);
          _os_log_impl(&dword_241215000, v62, v63, "PhysicsStateManager: %s", v65, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v66);
          v67 = v66;
          v13 = v188;
          MEMORY[0x245CE4870](v67, -1, -1);
          MEMORY[0x245CE4870](v65, -1, -1);
        }

        (*v184)(v13, v185, v8);
        (*v183)(v9, v13, v8);
        v68 = sub_241352FDC();
        v69 = sub_2413540DC();
        if (os_log_type_enabled(v68, v69))
        {
          v70 = swift_slowAlloc();
          v71 = swift_slowAlloc();
          v200 = v71;
          *v70 = v181;
          sub_2412B3164(&qword_27E538948, MEMORY[0x277CDAC88], &protocol conformance descriptor for PhysicsBodyMode);
          v72 = sub_24135491C();
          v73 = v8;
          v75 = v74;
          v54 = *v182;
          (*v182)(v191, v73);
          v76 = sub_2412DDC2C(v72, v75, &v200);
          v8 = v73;
          v9 = v191;

          *(v70 + 4) = v76;
          _os_log_impl(&dword_241215000, v68, v69, "PhysicsStateManager: setPhysicsBodyModeAll(mode:%s)", v70, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v71);
          v77 = v71;
          v13 = v188;
          MEMORY[0x245CE4870](v77, -1, -1);
          MEMORY[0x245CE4870](v70, -1, -1);
        }

        else
        {

          v54 = *v182;
          v55 = (*v182)(v9, v8);
        }

        v28 = v187;
        v56 = v186;
        MEMORY[0x28223BE20](v55);
        v57 = v195.i64[0];
        *(&v173 - 4) = v194.i64[0];
        *(&v173 - 3) = v57;
        *(&v173 - 2) = v13;
        sub_2412875B4(sub_2412B31E0, (&v173 - 6), v57);
        v54(v13, v8);

        ++v14;
      }

      while (v196.i64[0] != v56);
    }

    v78 = v198;
    if (*(v198 + OBJC_IVAR___ASVPreviewViewControllerInternal_hasPlacedModelInWorldAlready) != 1)
    {
      break;
    }

    v79 = *(v198 + v199);
    v28 = v174;
    if (!v79)
    {
      goto LABEL_198;
    }

    v80 = *(v79 + OBJC_IVAR____TtC11AssetViewer15ModelController_entityControllers);
    if (v80 >> 62)
    {
      v8 = sub_2413544EC();
    }

    else
    {
      v8 = *((v80 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v191 = 0;

    if (v8)
    {
      v9 = 0;
      v197.i64[0] = v80 & 0xC000000000000001;
      v196.i64[0] = v80 & 0xFFFFFFFFFFFFFF8;
      v14 = v28 + 8;
      do
      {
        if (v197.i64[0])
        {
          v81 = MEMORY[0x245CE29C0](v9, v80);
        }

        else
        {
          if (v9 >= *(v196.i64[0] + 16))
          {
            goto LABEL_158;
          }

          v81 = *(v80 + 8 * v9 + 32);
        }

        v82 = v81;
        v83 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
          goto LABEL_156;
        }

        v84 = *(v198 + v199);
        if (!v84)
        {
          goto LABEL_178;
        }

        v85 = *(v84 + OBJC_IVAR____TtC11AssetViewer15ModelController_arView);
        if (!v85)
        {
          goto LABEL_180;
        }

        v86 = v85;
        sub_24135292C();
        v87 = sub_2413524BC();

        if (!v87)
        {
          goto LABEL_182;
        }

        sub_241352C5C();

        v13 = v192;
        sub_2413518AC();
        v28 = v13;
        sub_241352B5C();

        (*v14)(v13, v193);

        ++v9;
      }

      while (v83 != v8);
    }

    v104 = v198;
    v105 = *(v198 + v199);
    if (!v105)
    {
      goto LABEL_200;
    }

    v106 = *(v105 + OBJC_IVAR____TtC11AssetViewer15ModelController_arView);
    if (!v106)
    {
      goto LABEL_202;
    }

    v107 = [v106 session];
    v108 = [v107 currentFrame];

    if (v108)
    {
      v109 = [v108 camera];

      v110 = [objc_opt_self() mainScreen];
      v111 = [v110 currentOrientation];

      v112 = v198;
      [v109 viewMatrixForOrientation_];
      v196 = v114;
      v197 = v113;
      v194 = v116;
      v195 = v115;

      v201.columns[1] = v196;
      v201.columns[0] = v197;
      v201.columns[3] = v194;
      v201.columns[2] = v195;
      v202 = __invert_f4(v201);
      v196 = v202.columns[1];
      v197 = v202.columns[0];
      v194 = v202.columns[3];
      v195 = v202.columns[2];
    }

    else
    {
      v123 = *(v104 + v199);
      if (!v123)
      {
        goto LABEL_207;
      }

      v124 = *(v123 + OBJC_IVAR____TtC11AssetViewer15ModelController_arView);
      if (!v124)
      {
        goto LABEL_208;
      }

      v125 = v124;
      sub_24135292C();
      v126 = sub_2413524BC();

      if (!v126)
      {
        goto LABEL_209;
      }

      sub_241352C5C();
      sub_24135193C();
      v196 = v128;
      v197 = v127;
      v194 = v130;
      v195 = v129;

      v112 = v198;
    }

    v131 = *(v112 + v199);
    if (!v131)
    {
      goto LABEL_203;
    }

    v132 = *(v131 + OBJC_IVAR____TtC11AssetViewer15ModelController_arView);
    if (!v132)
    {
      goto LABEL_204;
    }

    v133 = v132;
    sub_24135292C();
    v28 = sub_2413524BC();

    if (!v28)
    {
      goto LABEL_205;
    }

    v197.i64[0] = sub_241352C5C();
    sub_2413518CC();

    v134 = *(v198 + v199);
    if (!v134)
    {
      goto LABEL_206;
    }

    v135 = *(v134 + OBJC_IVAR____TtC11AssetViewer15ModelController_entityControllers);
    if (v135 >> 62)
    {
      v14 = sub_2413544EC();
    }

    else
    {
      v14 = *((v135 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (!v14)
    {
LABEL_113:

      sub_241290C40();
      return;
    }

    v9 = 0;
    v8 = v135 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if ((v135 & 0xC000000000000001) != 0)
      {
        v136 = MEMORY[0x245CE29C0](v9, v135);
      }

      else
      {
        if (v9 >= *((v135 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_162;
        }

        v136 = *(v135 + 8 * v9 + 32);
      }

      v28 = v136;
      v137 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      v138 = *(v198 + v199);
      if (!v138)
      {
        goto LABEL_185;
      }

      v139 = *(v138 + OBJC_IVAR____TtC11AssetViewer15ModelController_arView);
      if (!v139)
      {
        goto LABEL_184;
      }

      v140 = v139;
      sub_241247664(v140);
      v142 = v141;

      if (v142)
      {

        v28 = v198;
        *(v198 + OBJC_IVAR___ASVPreviewViewControllerInternal_didPlaceFirstEntityInARWorld) = 1;
        sub_24128A758();
        v143 = sub_241287420();
        [v143 startAutoHideControlsTimer];

        *(v28 + OBJC_IVAR___ASVPreviewViewControllerInternal_interfaceState + 8) = 3;
        [v28 updateInterfaceState];
        v144 = OBJC_IVAR___ASVPreviewViewControllerInternal_lastPlacedAnchoringComponentTarget;
        swift_beginAccess();
        v145 = v28 + v144;
        v146 = v177;
        sub_241246210(v145, v177, &qword_27E538940, &qword_241366CB0);
        v147 = v178;
        v148 = v173;
        if ((*(v178 + 48))(v146, 1, v173) == 1)
        {
          sub_241246278(v146, &qword_27E538940, &qword_241366CB0);
        }

        else
        {
          v149 = *(v147 + 32);
          v150 = v175;
          v149(v175, v146, v148);
          v8 = v176;
          v149(v176, v150, v148);
          v151 = (*(v147 + 88))(v8, v148);
          LODWORD(v149) = *MEMORY[0x277CDAD60];
          (*(v147 + 8))(v8, v148);
          if (v151 == v149 || v151 == *MEMORY[0x277CDAD88])
          {
            v163 = *(v28 + v199);
            if (!v163)
            {
              goto LABEL_211;
            }

            v78 = *(v163 + OBJC_IVAR____TtC11AssetViewer15ModelController_entityControllers);
            if (v78 >> 62)
            {
              v164 = sub_2413544EC();
            }

            else
            {
              v164 = *((v78 & 0xFFFFFFFFFFFFFF8) + 0x10);
            }

            if (!v164)
            {
LABEL_151:

              sub_24123E374();
              return;
            }

            v88 = 0;
            v196.i64[0] = v78 & 0xC000000000000001;
            v195.i64[0] = v78 & 0xFFFFFFFFFFFFFF8;
            v165 = (v174 + 8);
            while (1)
            {
              if (v196.i64[0])
              {
                v167 = MEMORY[0x245CE29C0](v88, v78);
              }

              else
              {
                if (v88 >= *(v195.i64[0] + 16))
                {
                  goto LABEL_169;
                }

                v167 = *(v78 + 8 * v88 + 32);
              }

              v168 = v167;
              v169 = v88 + 1;
              if (__OFADD__(v88, 1))
              {
                break;
              }

              sub_241352E3C();
              sub_2413519CC();

              v170 = *(v198 + v199);
              if (!v170)
              {
                goto LABEL_196;
              }

              v171 = *(v170 + OBJC_IVAR____TtC11AssetViewer15ModelController_arView);
              if (!v171)
              {
                goto LABEL_197;
              }

              v13 = *(v171 + qword_27E53A1A0);
              if (v13)
              {

                v172 = v192;
                sub_2413518AC();
                sub_241352B5C();

                (*v165)(v172, v193);
              }

              else
              {
                sub_2413518BC();
              }

              sub_24133D85C(v166);

              ++v88;
              if (v169 == v164)
              {
                goto LABEL_151;
              }
            }

            __break(1u);
LABEL_169:
            __break(1u);
            goto LABEL_170;
          }
        }

        v152 = *(v28 + v199);
        if (!v152)
        {
          goto LABEL_210;
        }

        v153 = *(v152 + OBJC_IVAR____TtC11AssetViewer15ModelController_entityControllers);
        if (v153 >> 62)
        {
          v9 = sub_2413544EC();
        }

        else
        {
          v9 = *((v153 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        if (v9)
        {
          v14 = 0;
          v196.i64[0] = v153 & 0xC000000000000001;
          v195.i64[0] = v153 & 0xFFFFFFFFFFFFFF8;
          v154 = (v174 + 8);
          while (1)
          {
            if (v196.i64[0])
            {
              v158 = MEMORY[0x245CE29C0](v14, v153);
            }

            else
            {
              if (v14 >= *(v195.i64[0] + 16))
              {
                goto LABEL_164;
              }

              v158 = *(v153 + 8 * v14 + 32);
            }

            v159 = v158;
            v160 = v14 + 1;
            if (__OFADD__(v14, 1))
            {
              goto LABEL_163;
            }

            v161 = *(v198 + v199);
            if (!v161)
            {
              goto LABEL_187;
            }

            v162 = *(v161 + OBJC_IVAR____TtC11AssetViewer15ModelController_arView);
            if (!v162)
            {
              goto LABEL_188;
            }

            v13 = *(v162 + qword_27E53A1A0);
            if (v13)
            {

              v8 = v192;
              sub_2413518AC();
              sub_241352B5C();

              (*v154)(v8, v193);
            }

            else
            {
              sub_2413518BC();
            }

            v155 = swift_allocObject();
            v156 = v198;
            *(v155 + 16) = v198;
            *(v155 + 24) = v159;
            v157 = v156;
            v28 = v159;
            sub_2412487A8(sub_2412B3200, v155);

            ++v14;
            if (v160 == v9)
            {
              goto LABEL_44;
            }
          }
        }

        goto LABEL_44;
      }

      ++v9;
      if (v137 == v14)
      {
        goto LABEL_113;
      }
    }
  }

  v88 = v174;
  if (qword_27E537CD0 != -1)
  {
LABEL_170:
    swift_once();
  }

  v89 = sub_241352FFC();
  v90 = __swift_project_value_buffer(v89, qword_27E53A538);
  v91 = sub_241352FDC();
  v92 = sub_2413540AC();
  if (os_log_type_enabled(v91, v92))
  {
    v93 = swift_slowAlloc();
    *v93 = 0;
    _os_log_impl(&dword_241215000, v91, v92, "In arHologram mode", v93, 2u);
    v94 = v93;
    v88 = v174;
    v78 = v198;
    MEMORY[0x245CE4870](v94, -1, -1);
  }

  v28 = v78 + OBJC_IVAR___ASVPreviewViewControllerInternal_interfaceState;
  *(v78 + OBJC_IVAR___ASVPreviewViewControllerInternal_interfaceState + 8) = 2;
  [v78 updateInterfaceState];
  v95 = *(v78 + v199);
  if (v95)
  {
    v96 = *(v95 + OBJC_IVAR____TtC11AssetViewer15ModelController_entityControllers);
    v195.i64[0] = v90;
    v194.i64[0] = v28;
    if (v96 >> 62)
    {
      v8 = sub_2413544EC();
    }

    else
    {
      v8 = *((v96 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v8)
    {
      v9 = 0;
      v197.i64[0] = v96 & 0xC000000000000001;
      v196.i64[0] = v96 & 0xFFFFFFFFFFFFFF8;
      v14 = v88 + 8;
      do
      {
        if (v197.i64[0])
        {
          v97 = MEMORY[0x245CE29C0](v9, v96);
        }

        else
        {
          if (v9 >= *(v196.i64[0] + 16))
          {
            goto LABEL_159;
          }

          v97 = *(v96 + 8 * v9 + 32);
        }

        v98 = v97;
        v99 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
          goto LABEL_157;
        }

        v100 = *(v198 + v199);
        if (!v100)
        {
          goto LABEL_179;
        }

        v101 = *(v100 + OBJC_IVAR____TtC11AssetViewer15ModelController_arView);
        if (!v101)
        {
          goto LABEL_181;
        }

        v102 = v101;
        sub_24135292C();
        v103 = sub_2413524BC();

        if (!v103)
        {
          goto LABEL_183;
        }

        sub_241352C5C();

        v13 = v192;
        sub_2413518AC();
        sub_241352B5C();

        (*v14)(v13, v193);
        v28 = v98;
        sub_241247C18(0, 0, 0, 0.35);

        ++v9;
      }

      while (v99 != v8);
    }

    if ([objc_opt_self() wantsParentToCameraInARAndEnableProbes])
    {
      v117 = sub_241352FDC();
      v118 = sub_2413540AC();
      v119 = os_log_type_enabled(v117, v118);
      v120 = v198;
      if (v119)
      {
        v121 = swift_slowAlloc();
        *v121 = 0;
        _os_log_impl(&dword_241215000, v117, v118, "Parenting to camera for debug", v121, 2u);
        MEMORY[0x245CE4870](v121, -1, -1);
      }

      *(v194.i64[0] + 8) = 3;
      [v120 updateInterfaceState];
    }

    else
    {
      v120 = v198;
      sub_2412C7010(0.1);
      sub_24134FB68();
    }

    v122 = *(v120 + v199);
    if (v122)
    {
      if (*(*(v122 + OBJC_IVAR____TtC11AssetViewer15ModelController_modelAnimationController) + OBJC_IVAR____TtC11AssetViewer24ModelAnimationController_animationState) == 1)
      {
        sub_241337AB8(0, 1);
      }

      return;
    }

    goto LABEL_201;
  }

LABEL_199:
  __break(1u);
LABEL_200:
  __break(1u);
LABEL_201:
  __break(1u);
LABEL_202:
  __break(1u);
LABEL_203:
  __break(1u);
LABEL_204:
  __break(1u);
LABEL_205:
  __break(1u);
LABEL_206:
  __break(1u);
LABEL_207:
  __break(1u);
LABEL_208:
  __break(1u);
LABEL_209:
  __break(1u);
LABEL_210:
  __break(1u);
LABEL_211:
  __break(1u);
}

double sub_241293D94(uint64_t a1, char *a2)
{
  sub_24123E374();
  sub_24130EE30(a2);
  v3 = *&a2[OBJC_IVAR____TtC11AssetViewer16EntityController_physicsStateManager + 8];

  return sub_24133D85C(v3);
}

void sub_241293DE8(__n128 a1, __n128 a2)
{
  v3 = v2;
  v73 = a2;
  v74 = a1;
  v4 = sub_2413517BC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v69 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = sub_2413517DC();
  v8 = *(v80 - 8);
  MEMORY[0x28223BE20](v80);
  v10 = &v69 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = OBJC_IVAR___ASVPreviewViewControllerInternal_modelController;
  v11 = *(v2 + OBJC_IVAR___ASVPreviewViewControllerInternal_modelController);
  if (!v11)
  {
LABEL_64:
    __break(1u);
    goto LABEL_65;
  }

  v12 = *(v11 + OBJC_IVAR____TtC11AssetViewer15ModelController_arView);
  if (!v12)
  {
LABEL_65:
    __break(1u);
    goto LABEL_66;
  }

  v13 = v12;
  sub_24135292C();
  v14 = sub_2413524BC();

  if (!v14)
  {
LABEL_66:
    __break(1u);
    goto LABEL_67;
  }

  sub_24135296C();
  sub_2413516FC();

  v78 = *(v8 + 8);
  v79 = v8 + 8;
  v78(v10, v80);
  v15 = *(v2 + v81);
  if (!v15)
  {
LABEL_67:
    __break(1u);
    goto LABEL_68;
  }

  v16 = *(v15 + OBJC_IVAR____TtC11AssetViewer15ModelController_arView);
  if (!v16)
  {
LABEL_68:
    __break(1u);
    goto LABEL_69;
  }

  v77 = v82[0];
  v17 = v16;
  sub_24135257C();
  sub_241351C8C();
  sub_2413516FC();

  v18 = *(v5 + 8);
  v5 += 8;
  v18(v7, v4);
  ServiceLocator = REEngineGetServiceLocator();
  if (!MEMORY[0x245CE3AB0](ServiceLocator))
  {
LABEL_69:
    __break(1u);
    goto LABEL_70;
  }

  v20 = [v2 view];
  if (!v20)
  {
LABEL_70:
    __break(1u);
    goto LABEL_71;
  }

  v21 = v20;
  v5 = &selRef_addConstraints_;
  [v20 bounds];
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v29 = v28;

  v83.origin.x = v23;
  v83.origin.y = v25;
  v83.size.width = v27;
  v83.size.height = v29;
  *&v30 = CGRectGetWidth(v83);
  v72 = v30;
  v31 = [v2 view];
  if (!v31)
  {
LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

  v32 = v31;
  [v31 bounds];
  v34 = v33;
  v36 = v35;
  v38 = v37;
  v40 = v39;

  v84.origin.x = v34;
  v84.origin.y = v36;
  v84.size.width = v38;
  v84.size.height = v40;
  *&v41 = CGRectGetHeight(v84);
  v42 = *(v2 + v81);
  if (!v42)
  {
LABEL_72:
    __break(1u);

    __break(1u);
    return;
  }

  v71 = v41;
  v43 = *(v42 + OBJC_IVAR____TtC11AssetViewer15ModelController_entityControllers);
  v82[0] = MEMORY[0x277D84F90];
  if (v43 >> 62)
  {
    goto LABEL_55;
  }

  for (i = *((v43 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_2413544EC())
  {

    v45 = MEMORY[0x277D84F90];
    if (i)
    {
      v70 = v3;
      v46 = 0;
      v3 = &OBJC_IVAR____TtC11AssetViewer16EntityController_entity;
      v75 = v10;
      while (1)
      {
        if ((v43 & 0xC000000000000001) != 0)
        {
          v47 = MEMORY[0x245CE29C0](v46, v43);
        }

        else
        {
          if (v46 >= *((v43 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_52;
          }

          v47 = *(v43 + 8 * v46 + 32);
        }

        v48 = v47;
        v49 = v46 + 1;
        if (__OFADD__(v46, 1))
        {
          break;
        }

        sub_24135296C();
        sub_2413516FC();
        v78(v10, v80);
        if (RECheckEntityInsideCustomMatrixCameraFrustumOneViewOneEyeWithScreenPosition())
        {
          sub_24135464C();
          sub_24135467C();
          v10 = v75;
          sub_24135468C();
          sub_24135465C();
        }

        else
        {
        }

        ++v46;
        if (v49 == i)
        {
          v10 = v82[0];
          v3 = v70;
          v45 = MEMORY[0x277D84F90];
          goto LABEL_25;
        }
      }

      __break(1u);
LABEL_52:
      __break(1u);
      goto LABEL_53;
    }

    v10 = MEMORY[0x277D84F90];
LABEL_25:

    v82[0] = sub_2412AAF20(v50);
    sub_2412A9528(v82);
    v5 = v82[0];
    v82[0] = v45;
    if ((v5 & 0x8000000000000000) == 0 && (v5 & 0x4000000000000000) == 0)
    {
      v51 = *(v5 + 16);
      if (!v51)
      {
        break;
      }

      goto LABEL_28;
    }

    v51 = sub_2413544EC();
    if (!v51)
    {
      break;
    }

LABEL_28:
    v52 = 0;
    while (1)
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        v53 = MEMORY[0x245CE29C0](v52, v5);
      }

      else
      {
        if (v52 >= *(v5 + 16))
        {
          goto LABEL_54;
        }

        v53 = *(v5 + 8 * v52 + 32);
      }

      v54 = v53;
      v55 = v52 + 1;
      if (__OFADD__(v52, 1))
      {
        break;
      }

      v56 = *(v3 + v81);
      if (!v56)
      {
        goto LABEL_62;
      }

      v57 = *(v56 + OBJC_IVAR____TtC11AssetViewer15ModelController_arView);
      if (!v57)
      {
        goto LABEL_63;
      }

      v43 = v57;
      sub_241247664(v43);
      v59 = v58;

      if (v59)
      {
        sub_24135464C();
        v43 = *(v82[0] + 16);
        sub_24135467C();
        sub_24135468C();
        sub_24135465C();
      }

      else
      {
      }

      ++v52;
      if (v55 == v51)
      {
        v45 = v82[0];
        goto LABEL_41;
      }
    }

LABEL_53:
    __break(1u);
LABEL_54:
    __break(1u);
LABEL_55:
    ;
  }

LABEL_41:

  if (qword_27E537CD0 != -1)
  {
    swift_once();
  }

  v60 = sub_241352FFC();
  __swift_project_value_buffer(v60, qword_27E53A538);

  v61 = sub_241352FDC();
  v5 = sub_2413540DC();

  if (os_log_type_enabled(v61, v5))
  {
    v62 = swift_slowAlloc();
    v63 = swift_slowAlloc();
    v82[0] = v63;
    *v62 = 136315138;
    v64 = type metadata accessor for EntityController(0);
    v65 = MEMORY[0x245CE21F0](v45, v64);
    v67 = sub_2412DDC2C(v65, v66, v82);

    *(v62 + 4) = v67;
    _os_log_impl(&dword_241215000, v61, v5, "Filtered HitTestResult: %s", v62, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v63);
    MEMORY[0x245CE4870](v63, -1, -1);
    MEMORY[0x245CE4870](v62, -1, -1);
  }

  if (v45 < 0 || (v45 & 0x4000000000000000) != 0)
  {
    if (!sub_2413544EC())
    {
      goto LABEL_59;
    }

LABEL_48:
    if ((v45 & 0xC000000000000001) != 0)
    {
      MEMORY[0x245CE29C0](0, v45);
      goto LABEL_59;
    }

    if (*(v45 + 16))
    {
      v68 = *(v45 + 32);
      goto LABEL_59;
    }

    __break(1u);
LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
    goto LABEL_64;
  }

  if (*(v45 + 16))
  {
    goto LABEL_48;
  }

LABEL_59:
}

uint64_t sub_2412945E4()
{
  sub_241352C5C();
  sub_24135191C();
  sub_24135176C();
  v11 = v0;
  sub_24135176C();
  v10 = v1;
  sub_24135176C();
  v9 = v2;
  sub_24135191C();
  sub_24135176C();
  v8 = v3;
  sub_24135176C();
  v7 = v4;
  sub_24135176C();
  *v5.i8 = vmul_f32(vmul_f32(vzip1_s32(v11, v8), vzip2_s32(v10, v7)), vzip1_s32(*&vextq_s8(v9, v9, 8uLL), *&vextq_s8(v5, v5, 8uLL)));
  return *&vcgt_f32(vdup_lane_s32(*v5.i8, 1), *v5.i8) & 1;
}

void sub_24129471C(float64_t a1, float64_t a2)
{
  v33 = OBJC_IVAR___ASVPreviewViewControllerInternal_modelController;
  v3 = *(v2 + OBJC_IVAR___ASVPreviewViewControllerInternal_modelController);
  if (!v3)
  {
LABEL_28:
    __break(1u);
    return;
  }

  v4 = *(v3 + OBJC_IVAR____TtC11AssetViewer15ModelController_entityControllers);
  if (v4 >> 62)
  {
LABEL_25:
    v5 = sub_2413544EC();
  }

  else
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v5)
  {
    v6 = 0;
    v7.f64[0] = a1;
    v7.f64[1] = a2;
    v8 = vcvt_f32_f64(v7);
    while (1)
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x245CE29C0](v6, v4);
      }

      else
      {
        if (v6 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_24;
        }

        v9 = *(v4 + 8 * v6 + 32);
      }

      v10 = v9;
      v11 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        __break(1u);
LABEL_24:
        __break(1u);
        goto LABEL_25;
      }

      v12 = *(v34 + v33);
      if (!v12)
      {
        break;
      }

      v13 = *(v12 + OBJC_IVAR____TtC11AssetViewer15ModelController_arView);
      if (!v13)
      {
        goto LABEL_27;
      }

      sub_241352C5C();
      v14 = v13;
      sub_24135196C();
      v15 = sub_24135294C();
      v17 = v16;
      v19 = v18;

      if ((v19 & 1) == 0)
      {
        *&v20.f64[0] = v15;
        v20.f64[1] = v17;
        *&v20.f64[0] = vsub_f32(vcvt_f32_f64(v20), v8);
        if (sqrtf(vaddv_f32(vmul_f32(*&v20.f64[0], *&v20.f64[0]))) < 88.0)
        {

          goto LABEL_18;
        }
      }

      ++v6;
      if (v11 == v5)
      {
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

LABEL_17:

  v10 = 0;
LABEL_18:
  if (qword_27E537CD0 != -1)
  {
    swift_once();
  }

  v21 = sub_241352FFC();
  __swift_project_value_buffer(v21, qword_27E53A538);
  v22 = v10;
  v23 = sub_241352FDC();
  v24 = sub_2413540DC();

  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v35 = v26;
    *v25 = 136315138;
    v27 = v22;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E538B98, &qword_241367688);
    v28 = sub_241353C7C();
    v30 = sub_2412DDC2C(v28, v29, &v35);

    *(v25 + 4) = v30;
    _os_log_impl(&dword_241215000, v23, v24, "screenPointHitTest result: %s", v25, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v26);
    MEMORY[0x245CE4870](v26, -1, -1);
    MEMORY[0x245CE4870](v25, -1, -1);
  }
}

void sub_241294A38(float64_t a1, float64_t a2)
{
  v92 = sub_2413517DC();
  v95 = *(v92 - 8);
  MEMORY[0x28223BE20](v92);
  v91 = v79 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_241351BBC();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v79 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_241351A7C();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = v79 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_2413520EC();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = v79 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = OBJC_IVAR___ASVPreviewViewControllerInternal_modelController;
  v88 = v2;
  v19 = *(v2 + OBJC_IVAR___ASVPreviewViewControllerInternal_modelController);
  if (!v19)
  {
LABEL_66:
    __break(1u);
    goto LABEL_67;
  }

  v96 = v6;
  v20 = *(v19 + OBJC_IVAR____TtC11AssetViewer15ModelController_arView);
  if (!v20)
  {
LABEL_67:
    __break(1u);
LABEL_68:
    __break(1u);
    return;
  }

  (*(v15 + 104))(v18, *MEMORY[0x277CDAE48], v14, v16);
  v21 = v20;
  sub_241351A3C();
  v22 = sub_24135293C();

  (*(v11 + 8))(v13, v10);
  (*(v15 + 8))(v18, v14);
  v23 = *(v22 + 16);
  if (v23)
  {
    v98[0] = MEMORY[0x277D84F90];
    sub_24135466C();
    v25 = *(v7 + 16);
    v24 = v7 + 16;
    v97 = v25;
    v26 = *(v24 + 64);
    v94 = v22;
    v27 = v22 + ((v26 + 32) & ~v26);
    v28 = v96;
    v29 = *(v24 + 56);
    v30 = (v24 - 8);
    do
    {
      v97(v9, v27, v28);
      sub_241351B8C();
      (*v30)(v9, v28);
      sub_24135464C();
      sub_24135467C();
      sub_24135468C();
      sub_24135465C();
      v27 += v29;
      --v23;
    }

    while (v23);

    v31 = v98[0];
  }

  else
  {

    v31 = MEMORY[0x277D84F90];
  }

  if (qword_27E537CD0 != -1)
  {
LABEL_58:
    swift_once();
  }

  v32 = sub_241352FFC();
  v33 = __swift_project_value_buffer(v32, qword_27E53A538);

  v34 = sub_241352FDC();
  v35 = sub_2413540DC();

  v36 = os_log_type_enabled(v34, v35);
  v86 = v31;
  v79[1] = v33;
  if (v36)
  {
    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v98[0] = v38;
    *v37 = 136315138;
    v39 = sub_241352C5C();
    v40 = MEMORY[0x245CE21F0](v31, v39);
    v42 = sub_2412DDC2C(v40, v41, v98);

    *(v37 + 4) = v42;
    _os_log_impl(&dword_241215000, v34, v35, "Normal hit-test resuts: %s", v37, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v38);
    MEMORY[0x245CE4870](v38, -1, -1);
    MEMORY[0x245CE4870](v37, -1, -1);
  }

  v43 = v88;
  v44 = *(v88 + v87);
  if (!v44)
  {
    goto LABEL_68;
  }

  v45 = *(v44 + OBJC_IVAR____TtC11AssetViewer15ModelController_entityControllers);
  if (v45 >> 62)
  {
    v46 = sub_2413544EC();
  }

  else
  {
    v46 = *((v45 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v47 = MEMORY[0x277D84F90];
  if (!v46)
  {
    goto LABEL_22;
  }

  v98[0] = MEMORY[0x277D84F90];

  sub_24135466C();
  if (v46 < 0)
  {
    __break(1u);
LABEL_65:
    __break(1u);
    goto LABEL_66;
  }

  v48 = 0;
  v31 = v45 & 0xC000000000000001;
  do
  {
    if (v31)
    {
      v49 = MEMORY[0x245CE29C0](v48, v45);
    }

    else
    {
      v49 = *(v45 + 8 * v48 + 32);
    }

    v50 = v49;
    ++v48;

    sub_24135464C();
    sub_24135467C();
    sub_24135468C();
    sub_24135465C();
  }

  while (v46 != v48);

  v47 = v98[0];
  v43 = v88;
LABEL_22:
  v51 = v86;
  if (v86 >> 62)
  {
    v52 = sub_2413544EC();
    if (v52)
    {
      goto LABEL_24;
    }

LABEL_61:

    v76.n128_f64[0] = a1;
    v77.n128_f64[0] = a2;
    sub_241293DE8(v76, v77);
    if (!v78)
    {
      sub_24129471C(a1, a2);
    }

    return;
  }

  v52 = *((v86 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v52)
  {
    goto LABEL_61;
  }

LABEL_24:
  v53 = 0;
  v83 = v52;
  v84 = v51 & 0xC000000000000001;
  v80 = v51 + 32;
  v81 = v51 & 0xFFFFFFFFFFFFFF8;
  v90 = (v95 + 8);
  v82 = v47;
  v54 = v92;
  while (1)
  {
    if (v84)
    {
      v55 = v53;
      v56 = MEMORY[0x245CE29C0](v53, v51);
      v57 = __OFADD__(v55, 1);
      v58 = v55 + 1;
      if (v57)
      {
        goto LABEL_56;
      }
    }

    else
    {
      if (v53 >= *(v81 + 16))
      {
        goto LABEL_57;
      }

      v56 = *(v80 + 8 * v53);
      v59 = v53;

      v57 = __OFADD__(v59, 1);
      v58 = v59 + 1;
      if (v57)
      {
LABEL_56:
        __break(1u);
LABEL_57:
        __break(1u);
        goto LABEL_58;
      }
    }

    v89 = v58;
    v96 = sub_24131268C(v47);
    if (!v96)
    {

      goto LABEL_26;
    }

    v60 = *(v43 + v87);
    if (!v60)
    {
      goto LABEL_65;
    }

    v85 = v56;
    v61 = *(v60 + OBJC_IVAR____TtC11AssetViewer15ModelController_entityControllers);
    v62 = v61 >> 62 ? sub_2413544EC() : *((v61 & 0xFFFFFFFFFFFFFF8) + 0x10);

    if (v62)
    {
      break;
    }

LABEL_25:

    v43 = v88;
    v51 = v86;
    v47 = v82;
LABEL_26:
    v53 = v89;
    if (v89 == v83)
    {
      goto LABEL_61;
    }
  }

  v63 = 0;
  v94 = v61 & 0xFFFFFFFFFFFFFF8;
  v95 = v61 & 0xC000000000000001;
  v93 = v61;
  while (1)
  {
    if (v95)
    {
      v64 = MEMORY[0x245CE29C0](v63, v61);
      v65 = v63 + 1;
      if (__OFADD__(v63, 1))
      {
        goto LABEL_54;
      }
    }

    else
    {
      if (v63 >= *(v94 + 16))
      {
        goto LABEL_55;
      }

      v64 = *(v61 + 8 * v63 + 32);
      v65 = v63 + 1;
      if (__OFADD__(v63, 1))
      {
LABEL_54:
        __break(1u);
LABEL_55:
        __break(1u);
        goto LABEL_56;
      }
    }

    v66 = v91;
    v67 = v64;
    sub_24135296C();
    v31 = MEMORY[0x277D841D8];
    sub_2413516FC();
    v68 = *v90;
    (*v90)(v66, v54);
    v97 = v98[0];
    sub_24135296C();
    sub_2413516FC();
    v68(v66, v54);
    if (v97 == v98[0])
    {
      break;
    }

    ++v63;
    v61 = v93;
    if (v65 == v62)
    {
      goto LABEL_25;
    }
  }

  v69 = sub_241352FDC();
  v70 = sub_2413540DC();

  if (os_log_type_enabled(v69, v70))
  {
    v71 = swift_slowAlloc();
    v72 = swift_slowAlloc();
    v98[0] = v72;
    *v71 = 136315138;
    v73 = sub_241352C0C();
    v75 = sub_2412DDC2C(v73, v74, v98);

    *(v71 + 4) = v75;
    _os_log_impl(&dword_241215000, v69, v70, "Using entityController: %s", v71, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v72);
    MEMORY[0x245CE4870](v72, -1, -1);
    MEMORY[0x245CE4870](v71, -1, -1);
  }

  else
  {
  }
}

void sub_241295418()
{
  v1 = [v0 view];
  if (!v1)
  {
    __break(1u);
    return;
  }

  v2 = v1;
  v3 = [v1 window];

  if (!v3 || (v4 = [v3 gestureRecognizers], v3, !v4))
  {
    v24 = 0;
    goto LABEL_46;
  }

  sub_241246158(0, &unk_27E538B40, 0x277D75548);
  v5 = sub_241353E2C();

  v35 = MEMORY[0x277D84F90];
  if (v5 >> 62)
  {
    goto LABEL_31;
  }

  for (i = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_2413544EC())
  {
    v7 = 0;
    while (1)
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x245CE29C0](v7, v5);
      }

      else
      {
        if (v7 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_30;
        }

        v8 = *(v5 + 8 * v7 + 32);
      }

      v9 = v8;
      v10 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        break;
      }

      v11 = [v8 name];
      if (v11)
      {
        v12 = v11;
        v13 = sub_241353C0C();
        v15 = v14;

        if (v13 == 0xD00000000000002BLL && 0x8000000241360160 == v15)
        {
LABEL_22:

LABEL_23:
          sub_24135464C();
          sub_24135467C();
          sub_24135468C();
          sub_24135465C();
          goto LABEL_8;
        }

        v17 = sub_24135497C();

        if (v17)
        {
          goto LABEL_23;
        }
      }

      v18 = [v9 name];
      if (v18)
      {
        v19 = v18;
        v20 = sub_241353C0C();
        v22 = v21;

        if (v20 == 0xD00000000000002FLL && 0x8000000241360130 == v22)
        {
          goto LABEL_22;
        }

        v23 = sub_24135497C();

        if (v23)
        {
          goto LABEL_23;
        }
      }

LABEL_8:
      ++v7;
      if (v10 == i)
      {
        v24 = v35;
        goto LABEL_33;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    ;
  }

  v24 = MEMORY[0x277D84F90];
LABEL_33:

  if ((v24 & 0x8000000000000000) != 0 || (v24 & 0x4000000000000000) != 0)
  {
    v25 = sub_2413544EC();
  }

  else
  {
    v25 = *(v24 + 16);
  }

  if (!v25)
  {
LABEL_45:

LABEL_46:
    if (qword_27E537CD0 == -1)
    {
      goto LABEL_47;
    }

    goto LABEL_59;
  }

  v26 = 0;
  while (1)
  {
    if ((v24 & 0xC000000000000001) != 0)
    {
      v27 = MEMORY[0x245CE29C0](v26, v24);
    }

    else
    {
      if (v26 >= *(v24 + 16))
      {
        goto LABEL_58;
      }

      v27 = *(v24 + 8 * v26 + 32);
    }

    v28 = v27;
    v29 = v26 + 1;
    if (__OFADD__(v26, 1))
    {
      break;
    }

    [v27 setEnabled_];

    ++v26;
    if (v29 == v25)
    {
      goto LABEL_45;
    }
  }

  __break(1u);
LABEL_58:
  __break(1u);
LABEL_59:
  swift_once();
LABEL_47:
  v30 = sub_241352FFC();
  __swift_project_value_buffer(v30, qword_27E53A538);

  oslog = sub_241352FDC();
  v31 = sub_2413540DC();
  if (os_log_type_enabled(oslog, v31))
  {
    v32 = swift_slowAlloc();
    *v32 = 134217984;
    if (v24)
    {
      if (v24 >> 62)
      {
        v33 = sub_2413544EC();
      }

      else
      {
        v33 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }
    }

    else
    {
      v33 = 0;
    }

    *(v32 + 4) = v33;

    _os_log_impl(&dword_241215000, oslog, v31, "Disabled %ld dismiss gestures", v32, 0xCu);
    MEMORY[0x245CE4870](v32, -1, -1);
  }

  else
  {

    swift_bridgeObjectRelease_n();
  }
}

uint64_t sub_2412958E0(void *a1, void *a2, uint64_t a3)
{
  v6 = OBJC_IVAR___ASVPreviewViewControllerInternal_entityControllerToTouchesMapping;
  swift_beginAccess();
  v7 = *(a3 + v6);
  if (*(v7 + 16) && (v8 = sub_2412FDBDC(a1), (v9 & 1) != 0))
  {
    v10 = *(*(v7 + 56) + 8 * v8);
    swift_endAccess();
    v18 = v10;
  }

  else
  {
    swift_endAccess();
    if (MEMORY[0x277D84F90] >> 62 && sub_2413544EC())
    {
      sub_2412C0B78(MEMORY[0x277D84F90]);
    }

    else
    {
      v11 = MEMORY[0x277D84FA0];
    }

    v18 = v11;
  }

  sub_24132F1E0(v17, a2);

  v12 = v18;
  swift_beginAccess();
  v13 = a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = *(a3 + v6);
  *(a3 + v6) = 0x8000000000000000;
  sub_2412A69CC(v12, v13, isUniquelyReferenced_nonNull_native);

  *(a3 + v6) = v16;
  return swift_endAccess();
}

void sub_241295A34(void *a1, uint64_t a2)
{
  v2 = OBJC_IVAR___ASVPreviewViewControllerInternal_modelController;
  v3 = *(a2 + OBJC_IVAR___ASVPreviewViewControllerInternal_modelController);
  if (!v3)
  {
    goto LABEL_30;
  }

  [a1 locationInView_];
  v6 = v5;
  v8 = v7;
  sub_241294A38(v5, v7);
  if (v9)
  {
    return;
  }

  v10 = OBJC_IVAR___ASVPreviewViewControllerInternal_touchToEntityControllerMapping;
  swift_beginAccess();
  v11 = *(a2 + v10);
  if ((v11 & 0xC000000000000001) == 0)
  {
    if (*(v11 + 16) != 1)
    {
      goto LABEL_16;
    }

    goto LABEL_7;
  }

  v12 = sub_2413544EC();

  if (v12 == 1)
  {
LABEL_7:

    v14 = sub_241322200(v13);
    v16 = v15;

    if (!v14)
    {
LABEL_32:
      __break(1u);
      goto LABEL_33;
    }

    v17 = *(a2 + v2);
    if (!v17)
    {
LABEL_33:
      __break(1u);
      goto LABEL_34;
    }

    [v14 locationInView_];
    sub_241294A38((v6 + v18) * 0.5, (v8 + v19) * 0.5);
    if (!v20)
    {

      goto LABEL_16;
    }

    v21 = OBJC_IVAR___ASVPreviewViewControllerInternal_fallbackTapGestureEntityController;
    v22 = *(a2 + OBJC_IVAR___ASVPreviewViewControllerInternal_fallbackTapGestureEntityController);
    if (!v22)
    {
LABEL_34:
      __break(1u);
LABEL_35:
      __break(1u);
      return;
    }

    v23 = v20;
    v24 = *&v22[OBJC_IVAR____TtC11AssetViewer16EntityController_worldGestureRecognizer];
    if (v24)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E538B90, &qword_241367680);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_241365EA0;
      sub_241246158(0, &qword_27E538A40, 0x277D75C68);
      sub_2412B3208(&qword_27E53A4B0, &qword_27E538A40, 0x277D75C68);
      v26 = v24;
      v27 = v14;
      sub_24135456C();
      sub_2412C0A18(inited);
      swift_setDeallocating();
      sub_2412AF728(inited + 32);
      v28 = sub_241353FEC();

      [v26 processTouches:v28 phase:{3, v14}];

      v22 = *(a2 + v21);
      if (!v22)
      {
        goto LABEL_35;
      }
    }

    swift_beginAccess();
    v29 = v22;
    v30 = sub_241338788(v44, v29);
    if (*v32)
    {
      v33 = sub_24132FD74(v14, v31);
      (v30)(v44, 0);
      swift_endAccess();

      v29 = v33;
    }

    else
    {
      (v30)(v44, 0);
      swift_endAccess();
    }

    swift_beginAccess();
    v36 = *(a2 + v10);
    if ((v36 & 0xC000000000000001) == 0)
    {
      v41 = v14;
      v42 = v23;
      goto LABEL_28;
    }

    if (v36 < 0)
    {
      v37 = *(a2 + v10);
    }

    else
    {
      v37 = v36 & 0xFFFFFFFFFFFFFF8;
    }

    v38 = v14;
    v39 = v23;
    v40 = sub_2413544EC();
    if (!__OFADD__(v40, 1))
    {
      *(a2 + v10) = sub_24126DDFC(v37, v40 + 1);
LABEL_28:
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v45 = *(a2 + v10);
      sub_2412A6B38(v23, v14, isUniquelyReferenced_nonNull_native);
      *(a2 + v10) = v45;

      swift_endAccess();
      sub_2412958E0(v23, v14, a2);

      return;
    }

    __break(1u);
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

LABEL_16:
  v34 = *(a2 + OBJC_IVAR___ASVPreviewViewControllerInternal_fallbackTapGestureEntityController);
  if (!v34)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v35 = v34;
}

void sub_241295E60(uint64_t a1, uint64_t a2)
{
  v5 = sub_241287420();
  v6 = v5[OBJC_IVAR____TtC11AssetViewer28ARQuickLookOverlayController_displayMode];

  if ((v6 & 1) == 0)
  {
    v7 = *(v2 + OBJC_IVAR___ASVPreviewViewControllerInternal_modelController);
    if (!v7)
    {
LABEL_29:
      __break(1u);
      goto LABEL_30;
    }

    v21 = *(v7 + OBJC_IVAR____TtC11AssetViewer15ModelController_entityControllers);
    v8 = *(v2 + OBJC_IVAR___ASVPreviewViewControllerInternal_fallbackTapGestureEntityController);
    if (!v8)
    {
LABEL_30:
      __break(1u);
      return;
    }

    v9 = v8;
    MEMORY[0x245CE21C0]();
    if (*((v21 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v21 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_241353E4C();
    }

    sub_241353E6C();
    if (v21 >> 62)
    {
      v10 = sub_2413544EC();
      if (v10)
      {
        goto LABEL_8;
      }
    }

    else
    {
      v10 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v10)
      {
LABEL_8:
        if (v10 >= 1)
        {
          v11 = 0;
          while (1)
          {
            if ((v21 & 0xC000000000000001) != 0)
            {
              v12 = MEMORY[0x245CE29C0](v11, v21);
            }

            else
            {
              v12 = *(v21 + 8 * v11 + 32);
            }

            v13 = v12;
            if (!*(a1 + 16))
            {
              goto LABEL_21;
            }

            v14 = sub_2412FDBDC(v12);
            if ((v15 & 1) == 0)
            {
              goto LABEL_21;
            }

            v16 = *(*(a1 + 56) + 8 * v14);
            if ((v16 & 0xC000000000000001) != 0)
            {

              if (!sub_2413544EC())
              {
                goto LABEL_20;
              }
            }

            else
            {
              v20 = *(v16 + 16);

              if (!v20)
              {
LABEL_20:

                goto LABEL_21;
              }
            }

            v17 = *&v13[OBJC_IVAR____TtC11AssetViewer16EntityController_worldGestureRecognizer];
            if (!v17)
            {

              goto LABEL_22;
            }

            v18 = v17;
            sub_24132A610(v16);

            v19 = sub_241353FEC();

            [v18 processTouches:v19 phase:a2];

LABEL_21:
LABEL_22:
            if (v10 == ++v11)
            {
              goto LABEL_26;
            }
          }
        }

        __break(1u);
        goto LABEL_29;
      }
    }

LABEL_26:
  }
}

void sub_241296108(void **a1, uint64_t a2)
{
  v3 = *a1;
  v4 = OBJC_IVAR___ASVPreviewViewControllerInternal_touchToEntityControllerMapping;
  swift_beginAccess();
  v5 = sub_241287500(v3, *(a2 + v4));
  if (v5)
  {
    v6 = v5;
    swift_endAccess();
    swift_beginAccess();
    v7 = sub_241338788(v15, v6);
    if (*v9)
    {
      v10 = sub_24132FD74(v3, v8);
      (v7)(v15, 0);
      swift_endAccess();
    }

    else
    {
      (v7)(v15, 0);
      swift_endAccess();
    }

    swift_beginAccess();
    v12 = sub_2412A299C(v3);
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    if (qword_27E537CD0 != -1)
    {
      swift_once();
    }

    v11 = sub_241352FFC();
    __swift_project_value_buffer(v11, qword_27E53A538);
    v12 = sub_241352FDC();
    v13 = sub_2413540BC();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_241215000, v12, v13, "Expected an entityController", v14, 2u);
      MEMORY[0x245CE4870](v14, -1, -1);
    }
  }
}

double sub_24129630C(void *a1, uint64_t a2, uint64_t a3, void *a4, void (*a5)(uint64_t))
{
  sub_241246158(0, &qword_27E538A40, 0x277D75C68);
  sub_2412B3208(&qword_27E53A4B0, &qword_27E538A40, 0x277D75C68);
  v8 = sub_241353FFC();
  v9 = a4;
  v10 = a1;
  a5(v8);

  return result;
}

Swift::Void __swiftcall PreviewViewController.didDismissActivityViewController()()
{
  v1 = sub_241287420();
  v2 = OBJC_IVAR____TtC11AssetViewer28ARQuickLookOverlayController_autoHideControlsTimer;
  [*&v1[OBJC_IVAR____TtC11AssetViewer28ARQuickLookOverlayController_autoHideControlsTimer] invalidate];
  v3 = *&v1[v2];
  *&v1[v2] = 0;

  if ((v1[OBJC_IVAR____TtC11AssetViewer28ARQuickLookOverlayController_displayMode] & 1) == 0 && v1[OBJC_IVAR____TtC11AssetViewer28ARQuickLookOverlayController_allowOverlayToBeHidden] == 1)
  {
    [v1 startAutoHideControlsTimer];
  }

  *(*(v0 + OBJC_IVAR___ASVPreviewViewControllerInternal____lazy_storage___overlayController) + OBJC_IVAR____TtC11AssetViewer28ARQuickLookOverlayController_operationMode) = 0;
}

id PreviewViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_241353BDC();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

id PreviewViewController.init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  v64 = a3;
  v62 = a2;
  v60[1] = a1;
  ObjectType = swift_getObjectType();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E538748, &unk_2413670C8);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v60 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E538750, &qword_2413660E0);
  MEMORY[0x28223BE20](v8 - 8);
  v65 = v60 - v9;
  v10 = sub_24135164C();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = v60 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = &v4[OBJC_IVAR___ASVPreviewViewControllerInternal_uuid];
  sub_24135163C();
  v15 = sub_2413515FC();
  v17 = v16;
  (*(v11 + 8))(v13, v10);
  v18 = sub_2412AE478(5, v15, v17);
  v20 = v19;
  v22 = v21;
  v24 = v23;

  *v14 = v18;
  v14[1] = v20;
  v14[2] = v22;
  v14[3] = v24;
  v25 = &v4[OBJC_IVAR___ASVPreviewViewControllerInternal_configuration];
  type metadata accessor for ARQLView(0);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v27 = [objc_opt_self() bundleForClass_];
  *v25 = 0xD000000000000020;
  *(v25 + 1) = 0x800000024135F540;
  *(v25 + 2) = v27;
  v25[24] = 0;
  *(v25 + 4) = 0;
  *(v25 + 5) = 0;
  *&v4[OBJC_IVAR___ASVPreviewViewControllerInternal_videoWriter] = 0;
  *&v4[OBJC_IVAR___ASVPreviewViewControllerInternal_videoInput] = 0;
  v28 = OBJC_IVAR___ASVPreviewViewControllerInternal_playbackViewController;
  *&v4[v28] = [objc_allocWithZone(type metadata accessor for PlaybackControlsViewController()) init];
  *&v4[OBJC_IVAR___ASVPreviewViewControllerInternal_animationComponents] = MEMORY[0x277D84FA0];
  (*(v11 + 56))(&v4[OBJC_IVAR___ASVPreviewViewControllerInternal_previewType], 1, 1, v10);
  v29 = OBJC_IVAR___ASVPreviewViewControllerInternal_debugAllowsARMode;
  v4[v29] = [objc_opt_self() wantsOpenInObjectMode] ^ 1;
  v4[OBJC_IVAR___ASVPreviewViewControllerInternal_didReceiveFirstARFrame] = 0;
  *&v4[OBJC_IVAR___ASVPreviewViewControllerInternal_modelController] = 0;
  v30 = &v4[OBJC_IVAR___ASVPreviewViewControllerInternal_interfaceState];
  *v30 = 0;
  v30[8] = 0;
  *&v4[OBJC_IVAR___ASVPreviewViewControllerInternal____lazy_storage___overlayController] = 0;
  v31 = &v4[OBJC_IVAR___ASVPreviewViewControllerInternal_shareSheetReplyBlock];
  *v31 = 0;
  v31[1] = 0;
  v32 = &v4[OBJC_IVAR___ASVPreviewViewControllerInternal_coachingOverlayViewDidDeactivateCompletionBlock];
  *v32 = 0;
  v32[1] = 0;
  *&v4[OBJC_IVAR___ASVPreviewViewControllerInternal____lazy_storage___coachingOverlayView] = 0;
  v4[OBJC_IVAR___ASVPreviewViewControllerInternal_onStartInteractionTriggered] = 0;
  v33 = MEMORY[0x277D84F98];
  *&v4[OBJC_IVAR___ASVPreviewViewControllerInternal_entityToInteractionsMapping] = MEMORY[0x277D84F98];
  *&v4[OBJC_IVAR___ASVPreviewViewControllerInternal_interactionsShownState] = v33;
  *&v4[OBJC_IVAR___ASVPreviewViewControllerInternal____lazy_storage___viewportScanner] = 0;
  *&v4[OBJC_IVAR___ASVPreviewViewControllerInternal_allowShowTriggerAffordanceTime] = 0x7FF0000000000000;
  *&v4[OBJC_IVAR___ASVPreviewViewControllerInternal_delayBeforeShowingTriggerAffordance] = 0x4018000000000000;
  *&v4[OBJC_IVAR___ASVPreviewViewControllerInternal_lastTriggerAffordanceUpdateTime] = 0;
  result = [objc_allocWithZone(ASVPercentLozenge) init];
  if (result)
  {
    *&v4[OBJC_IVAR___ASVPreviewViewControllerInternal_lozengeLabel] = result;
    swift_unknownObjectWeakInit();
    v35 = &v4[OBJC_IVAR___ASVPreviewViewControllerInternal_lozengeSafezone];
    *v35 = 0u;
    v35[1] = 0u;
    *&v4[OBJC_IVAR___ASVPreviewViewControllerInternal_touchToEntityControllerMapping] = v33;
    *&v4[OBJC_IVAR___ASVPreviewViewControllerInternal_entityControllerToTouchesMapping] = v33;
    *&v4[OBJC_IVAR___ASVPreviewViewControllerInternal_worldRaycastStrategy] = 0;
    *&v4[OBJC_IVAR___ASVPreviewViewControllerInternal_fallbackTapGestureEntityController] = 0;
    v36 = OBJC_IVAR___ASVPreviewViewControllerInternal_viewportDebugView;
    *&v4[v36] = [objc_allocWithZone(MEMORY[0x277D75D18]) initWithFrame_];
    *&v4[OBJC_IVAR___ASVPreviewViewControllerInternal_backlightController] = 0;
    v37 = OBJC_IVAR___ASVPreviewViewControllerInternal_defaultARConfiguration;
    *&v4[v37] = sub_2412894C8();
    v38 = OBJC_IVAR___ASVPreviewViewControllerInternal_faceTrackingConfiguration;
    v39 = [objc_allocWithZone(MEMORY[0x277CE5280]) init];
    [v39 setAutoFocusEnabled_];
    *&v4[v38] = v39;
    v4[OBJC_IVAR___ASVPreviewViewControllerInternal_isAutoFocusEnabled] = 1;
    v40 = &v4[OBJC_IVAR___ASVPreviewViewControllerInternal_singleTapScreenPoint];
    *v40 = 0;
    *(v40 + 1) = 0;
    v40[16] = 1;
    v4[OBJC_IVAR___ASVPreviewViewControllerInternal_hasPlacedModelInWorldAlready] = 0;
    *&v4[OBJC_IVAR___ASVPreviewViewControllerInternal_placeModelTimer] = 0;
    v41 = &v4[OBJC_IVAR___ASVPreviewViewControllerInternal_previewCompletionHandler];
    *v41 = 0;
    v41[1] = 0;
    v42 = OBJC_IVAR___ASVPreviewViewControllerInternal_analyticsViewDidAppearDate;
    v43 = sub_2413515EC();
    v44 = *(*(v43 - 8) + 56);
    v44(&v4[v42], 1, 1, v43);
    v44(&v4[OBJC_IVAR___ASVPreviewViewControllerInternal_analyticsLastDisplayModeToggledDate], 1, 1, v43);
    *&v4[OBJC_IVAR___ASVPreviewViewControllerInternal_analyticsObjectModeDuration] = 0;
    *&v4[OBJC_IVAR___ASVPreviewViewControllerInternal_analyticsARModeDuration] = 0;
    *&v4[OBJC_IVAR___ASVPreviewViewControllerInternal_analyticsTimeInObjectModeBeforeFirstTapARMode] = 0;
    *&v4[OBJC_IVAR___ASVPreviewViewControllerInternal_analyticsTimesWentIntoObjectMode] = 0;
    *&v4[OBJC_IVAR___ASVPreviewViewControllerInternal_analyticsTimesWentIntoARMode] = 0;
    v4[OBJC_IVAR___ASVPreviewViewControllerInternal_analyticsARObjectWasLevitated] = 0;
    *&v4[OBJC_IVAR___ASVPreviewViewControllerInternal_analyticsTimesPlayPauseButtonPressed] = 0;
    *&v4[OBJC_IVAR___ASVPreviewViewControllerInternal_analyticsTimesAnimationScrubbed] = 0;
    *&v4[OBJC_IVAR___ASVPreviewViewControllerInternal_analyticsTimesAnchoredToImage] = 0;
    *&v4[OBJC_IVAR___ASVPreviewViewControllerInternal_analyticsTimesAnchoredToObject] = 0;
    *&v4[OBJC_IVAR___ASVPreviewViewControllerInternal_analyticsLongestDuration] = 0;
    v45 = &v4[OBJC_IVAR___ASVPreviewViewControllerInternal_analyticsLastDimensionsString];
    *v45 = 0;
    v45[1] = 0xE000000000000000;
    v4[OBJC_IVAR___ASVPreviewViewControllerInternal_analyticsDidCloseByTappingOnCheckout] = 0;
    v4[OBJC_IVAR___ASVPreviewViewControllerInternal_analyticsFileWantsRealWorldPhysics] = 0;
    *&v4[OBJC_IVAR___ASVPreviewViewControllerInternal____lazy_storage___arAnchorTrackedStateUpdater] = 1;
    v4[OBJC_IVAR___ASVPreviewViewControllerInternal_didPlaceFirstEntityInARWorld] = 0;
    v46 = OBJC_IVAR___ASVPreviewViewControllerInternal_lastPlacedAnchoringComponentTarget;
    v47 = sub_241351DEC();
    (*(*(v47 - 8) + 56))(&v4[v46], 1, 1, v47);
    *&v4[OBJC_IVAR___ASVPreviewViewControllerInternal_currentDetectionImages] = 0;
    *&v4[OBJC_IVAR___ASVPreviewViewControllerInternal_currentDetectionObjects] = 0;
    *&v4[OBJC_IVAR___ASVPreviewViewControllerInternal_defaultGravity] = xmmword_241367080;
    *&v4[OBJC_IVAR___ASVPreviewViewControllerInternal_gravity] = xmmword_241367080;
    v48 = &v4[OBJC_IVAR___ASVPreviewViewControllerInternal_customizationOptions];
    v49 = sub_24135152C();
    v50 = *(*(v49 - 8) + 56);
    v50(v65, 1, 1, v49);
    v51 = type metadata accessor for ModelCustomizationOptions.BannerStyle(0);
    v52 = *(*(v51 - 8) + 56);
    v52(v7, 1, 1, v51);
    v53 = type metadata accessor for ModelCustomizationOptions(0);
    v61 = v7;
    v54 = *(v53 + 28);
    v50(&v48[v54], 1, 1, v49);
    v55 = *(v53 + 32);
    v52(&v48[v55], 1, 1, v51);
    *v48 = 257;
    v48[2] = 1;
    sub_241255BC8(v65, &v48[v54], &qword_27E538750, &qword_2413660E0);
    sub_241255BC8(v61, &v48[v55], &qword_27E538748, &unk_2413670C8);
    *&v4[OBJC_IVAR___ASVPreviewViewControllerInternal_debugActionsState] = 0;
    v4[OBJC_IVAR___ASVPreviewViewControllerInternal_isDismissing] = 0;
    v4[OBJC_IVAR___ASVPreviewViewControllerInternal_previewDidAppearCalled] = 0;
    v50(&v4[OBJC_IVAR___ASVPreviewViewControllerInternal_fileURL], 1, 1, v49);
    v56 = OBJC_IVAR___ASVPreviewViewControllerInternal_isWindowFullscreen;
    v67 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5386F8, &unk_2413670B0);
    swift_allocObject();
    *&v4[v56] = sub_24135311C();
    *&v4[OBJC_IVAR___ASVPreviewViewControllerInternal_isWindowFullscreenCancellable] = 0;
    *&v4[OBJC_IVAR___ASVPreviewViewControllerInternal_solariumNavController] = 0;
    *&v4[OBJC_IVAR___ASVPreviewViewControllerInternal____lazy_storage___replayObserver] = 0;
    *&v4[OBJC_IVAR___ASVPreviewViewControllerInternal_hideLozengeTimer] = 0;
    if (v62)
    {
      v57 = sub_241353BDC();
    }

    else
    {
      v57 = 0;
    }

    v66.receiver = v4;
    v66.super_class = ObjectType;
    v58 = v64;
    v59 = objc_msgSendSuper2(&v66, sel_initWithNibName_bundle_, v57, v64);

    return v59;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id PreviewViewController.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id PreviewViewController.init(coder:)(void *a1)
{
  v2 = v1;
  v60 = a1;
  ObjectType = swift_getObjectType();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E538748, &unk_2413670C8);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v57 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E538750, &qword_2413660E0);
  MEMORY[0x28223BE20](v6 - 8);
  v61 = &v57 - v7;
  v8 = sub_24135164C();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v57 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = &v2[OBJC_IVAR___ASVPreviewViewControllerInternal_uuid];
  sub_24135163C();
  v13 = sub_2413515FC();
  v15 = v14;
  (*(v9 + 8))(v11, v8);
  v16 = sub_2412AE478(5, v13, v15);
  v18 = v17;
  v20 = v19;
  v22 = v21;

  *v12 = v16;
  v12[1] = v18;
  v12[2] = v20;
  v12[3] = v22;
  v23 = &v2[OBJC_IVAR___ASVPreviewViewControllerInternal_configuration];
  type metadata accessor for ARQLView(0);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v25 = [objc_opt_self() bundleForClass_];
  *v23 = 0xD000000000000020;
  *(v23 + 1) = 0x800000024135F540;
  *(v23 + 2) = v25;
  v23[24] = 0;
  *(v23 + 4) = 0;
  *(v23 + 5) = 0;
  *&v2[OBJC_IVAR___ASVPreviewViewControllerInternal_videoWriter] = 0;
  *&v2[OBJC_IVAR___ASVPreviewViewControllerInternal_videoInput] = 0;
  v26 = OBJC_IVAR___ASVPreviewViewControllerInternal_playbackViewController;
  *&v2[v26] = [objc_allocWithZone(type metadata accessor for PlaybackControlsViewController()) init];
  *&v2[OBJC_IVAR___ASVPreviewViewControllerInternal_animationComponents] = MEMORY[0x277D84FA0];
  (*(v9 + 56))(&v2[OBJC_IVAR___ASVPreviewViewControllerInternal_previewType], 1, 1, v8);
  v27 = OBJC_IVAR___ASVPreviewViewControllerInternal_debugAllowsARMode;
  v2[v27] = [objc_opt_self() wantsOpenInObjectMode] ^ 1;
  v2[OBJC_IVAR___ASVPreviewViewControllerInternal_didReceiveFirstARFrame] = 0;
  *&v2[OBJC_IVAR___ASVPreviewViewControllerInternal_modelController] = 0;
  v28 = &v2[OBJC_IVAR___ASVPreviewViewControllerInternal_interfaceState];
  *v28 = 0;
  v28[8] = 0;
  *&v2[OBJC_IVAR___ASVPreviewViewControllerInternal____lazy_storage___overlayController] = 0;
  v29 = &v2[OBJC_IVAR___ASVPreviewViewControllerInternal_shareSheetReplyBlock];
  *v29 = 0;
  v29[1] = 0;
  v30 = &v2[OBJC_IVAR___ASVPreviewViewControllerInternal_coachingOverlayViewDidDeactivateCompletionBlock];
  *v30 = 0;
  v30[1] = 0;
  *&v2[OBJC_IVAR___ASVPreviewViewControllerInternal____lazy_storage___coachingOverlayView] = 0;
  v2[OBJC_IVAR___ASVPreviewViewControllerInternal_onStartInteractionTriggered] = 0;
  v31 = MEMORY[0x277D84F98];
  *&v2[OBJC_IVAR___ASVPreviewViewControllerInternal_entityToInteractionsMapping] = MEMORY[0x277D84F98];
  *&v2[OBJC_IVAR___ASVPreviewViewControllerInternal_interactionsShownState] = v31;
  *&v2[OBJC_IVAR___ASVPreviewViewControllerInternal____lazy_storage___viewportScanner] = 0;
  *&v2[OBJC_IVAR___ASVPreviewViewControllerInternal_allowShowTriggerAffordanceTime] = 0x7FF0000000000000;
  *&v2[OBJC_IVAR___ASVPreviewViewControllerInternal_delayBeforeShowingTriggerAffordance] = 0x4018000000000000;
  *&v2[OBJC_IVAR___ASVPreviewViewControllerInternal_lastTriggerAffordanceUpdateTime] = 0;
  result = [objc_allocWithZone(ASVPercentLozenge) init];
  if (result)
  {
    *&v2[OBJC_IVAR___ASVPreviewViewControllerInternal_lozengeLabel] = result;
    swift_unknownObjectWeakInit();
    v33 = &v2[OBJC_IVAR___ASVPreviewViewControllerInternal_lozengeSafezone];
    *v33 = 0u;
    v33[1] = 0u;
    *&v2[OBJC_IVAR___ASVPreviewViewControllerInternal_touchToEntityControllerMapping] = v31;
    *&v2[OBJC_IVAR___ASVPreviewViewControllerInternal_entityControllerToTouchesMapping] = v31;
    *&v2[OBJC_IVAR___ASVPreviewViewControllerInternal_worldRaycastStrategy] = 0;
    *&v2[OBJC_IVAR___ASVPreviewViewControllerInternal_fallbackTapGestureEntityController] = 0;
    v34 = OBJC_IVAR___ASVPreviewViewControllerInternal_viewportDebugView;
    *&v2[v34] = [objc_allocWithZone(MEMORY[0x277D75D18]) initWithFrame_];
    *&v2[OBJC_IVAR___ASVPreviewViewControllerInternal_backlightController] = 0;
    v35 = OBJC_IVAR___ASVPreviewViewControllerInternal_defaultARConfiguration;
    *&v2[v35] = sub_2412894C8();
    v36 = OBJC_IVAR___ASVPreviewViewControllerInternal_faceTrackingConfiguration;
    v37 = [objc_allocWithZone(MEMORY[0x277CE5280]) init];
    [v37 setAutoFocusEnabled_];
    *&v2[v36] = v37;
    v2[OBJC_IVAR___ASVPreviewViewControllerInternal_isAutoFocusEnabled] = 1;
    v38 = &v2[OBJC_IVAR___ASVPreviewViewControllerInternal_singleTapScreenPoint];
    *v38 = 0;
    *(v38 + 1) = 0;
    v38[16] = 1;
    v2[OBJC_IVAR___ASVPreviewViewControllerInternal_hasPlacedModelInWorldAlready] = 0;
    *&v2[OBJC_IVAR___ASVPreviewViewControllerInternal_placeModelTimer] = 0;
    v39 = &v2[OBJC_IVAR___ASVPreviewViewControllerInternal_previewCompletionHandler];
    *v39 = 0;
    v39[1] = 0;
    v40 = OBJC_IVAR___ASVPreviewViewControllerInternal_analyticsViewDidAppearDate;
    v41 = sub_2413515EC();
    v42 = *(*(v41 - 8) + 56);
    v42(&v2[v40], 1, 1, v41);
    v42(&v2[OBJC_IVAR___ASVPreviewViewControllerInternal_analyticsLastDisplayModeToggledDate], 1, 1, v41);
    *&v2[OBJC_IVAR___ASVPreviewViewControllerInternal_analyticsObjectModeDuration] = 0;
    *&v2[OBJC_IVAR___ASVPreviewViewControllerInternal_analyticsARModeDuration] = 0;
    *&v2[OBJC_IVAR___ASVPreviewViewControllerInternal_analyticsTimeInObjectModeBeforeFirstTapARMode] = 0;
    *&v2[OBJC_IVAR___ASVPreviewViewControllerInternal_analyticsTimesWentIntoObjectMode] = 0;
    *&v2[OBJC_IVAR___ASVPreviewViewControllerInternal_analyticsTimesWentIntoARMode] = 0;
    v2[OBJC_IVAR___ASVPreviewViewControllerInternal_analyticsARObjectWasLevitated] = 0;
    *&v2[OBJC_IVAR___ASVPreviewViewControllerInternal_analyticsTimesPlayPauseButtonPressed] = 0;
    *&v2[OBJC_IVAR___ASVPreviewViewControllerInternal_analyticsTimesAnimationScrubbed] = 0;
    *&v2[OBJC_IVAR___ASVPreviewViewControllerInternal_analyticsTimesAnchoredToImage] = 0;
    *&v2[OBJC_IVAR___ASVPreviewViewControllerInternal_analyticsTimesAnchoredToObject] = 0;
    *&v2[OBJC_IVAR___ASVPreviewViewControllerInternal_analyticsLongestDuration] = 0;
    v43 = &v2[OBJC_IVAR___ASVPreviewViewControllerInternal_analyticsLastDimensionsString];
    *v43 = 0;
    v43[1] = 0xE000000000000000;
    v2[OBJC_IVAR___ASVPreviewViewControllerInternal_analyticsDidCloseByTappingOnCheckout] = 0;
    v2[OBJC_IVAR___ASVPreviewViewControllerInternal_analyticsFileWantsRealWorldPhysics] = 0;
    *&v2[OBJC_IVAR___ASVPreviewViewControllerInternal____lazy_storage___arAnchorTrackedStateUpdater] = 1;
    v2[OBJC_IVAR___ASVPreviewViewControllerInternal_didPlaceFirstEntityInARWorld] = 0;
    v44 = OBJC_IVAR___ASVPreviewViewControllerInternal_lastPlacedAnchoringComponentTarget;
    v45 = sub_241351DEC();
    (*(*(v45 - 8) + 56))(&v2[v44], 1, 1, v45);
    *&v2[OBJC_IVAR___ASVPreviewViewControllerInternal_currentDetectionImages] = 0;
    *&v2[OBJC_IVAR___ASVPreviewViewControllerInternal_currentDetectionObjects] = 0;
    *&v2[OBJC_IVAR___ASVPreviewViewControllerInternal_defaultGravity] = xmmword_241367080;
    *&v2[OBJC_IVAR___ASVPreviewViewControllerInternal_gravity] = xmmword_241367080;
    v46 = &v2[OBJC_IVAR___ASVPreviewViewControllerInternal_customizationOptions];
    v47 = sub_24135152C();
    v48 = *(*(v47 - 8) + 56);
    v48(v61, 1, 1, v47);
    v49 = type metadata accessor for ModelCustomizationOptions.BannerStyle(0);
    v50 = *(*(v49 - 8) + 56);
    v50(v5, 1, 1, v49);
    v51 = type metadata accessor for ModelCustomizationOptions(0);
    v58 = v5;
    v52 = *(v51 + 28);
    v48(&v46[v52], 1, 1, v47);
    v53 = *(v51 + 32);
    v50(&v46[v53], 1, 1, v49);
    *v46 = 257;
    v46[2] = 1;
    sub_241255BC8(v61, &v46[v52], &qword_27E538750, &qword_2413660E0);
    sub_241255BC8(v58, &v46[v53], &qword_27E538748, &unk_2413670C8);
    *&v2[OBJC_IVAR___ASVPreviewViewControllerInternal_debugActionsState] = 0;
    v2[OBJC_IVAR___ASVPreviewViewControllerInternal_isDismissing] = 0;
    v2[OBJC_IVAR___ASVPreviewViewControllerInternal_previewDidAppearCalled] = 0;
    v48(&v2[OBJC_IVAR___ASVPreviewViewControllerInternal_fileURL], 1, 1, v47);
    v54 = OBJC_IVAR___ASVPreviewViewControllerInternal_isWindowFullscreen;
    v63 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5386F8, &unk_2413670B0);
    swift_allocObject();
    *&v2[v54] = sub_24135311C();
    *&v2[OBJC_IVAR___ASVPreviewViewControllerInternal_isWindowFullscreenCancellable] = 0;
    *&v2[OBJC_IVAR___ASVPreviewViewControllerInternal_solariumNavController] = 0;
    *&v2[OBJC_IVAR___ASVPreviewViewControllerInternal____lazy_storage___replayObserver] = 0;
    *&v2[OBJC_IVAR___ASVPreviewViewControllerInternal_hideLozengeTimer] = 0;
    v55 = v60;
    v62.receiver = v2;
    v62.super_class = ObjectType;
    v56 = objc_msgSendSuper2(&v62, sel_initWithCoder_, v60);

    if (v56)
    {
    }

    return v56;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_241297860(uint64_t a1@<X8>)
{
  sub_2412979B0();
  v3 = 0uLL;
  if (v4)
  {
    v5 = 0;
    v6 = 0;
    v7 = 0;
LABEL_13:
    *a1 = v5;
    *(a1 + 8) = v6;
    *(a1 + 16) = v7;
    *(a1 + 24) = v3;
    return;
  }

  v8 = OBJC_IVAR___ASVPreviewViewControllerInternal_modelController;
  v9 = *(v1 + OBJC_IVAR___ASVPreviewViewControllerInternal_modelController);
  if (!v9)
  {
    __break(1u);
    goto LABEL_15;
  }

  v10 = *(v9 + OBJC_IVAR____TtC11AssetViewer15ModelController_arView);
  if (!v10)
  {
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v11 = [v10 session];
  v6 = [v11 currentFrame];

  if (!v6)
  {
    v5 = 0;
    v7 = 0;
    v3 = 0uLL;
    goto LABEL_13;
  }

  v12 = *(v1 + v8);
  if (!v12)
  {
    goto LABEL_16;
  }

  v13 = *(v12 + OBJC_IVAR____TtC11AssetViewer15ModelController_arView);
  if (!v13)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v14 = [v13 session];
  v7 = *(v1 + OBJC_IVAR___ASVPreviewViewControllerInternal_worldRaycastStrategy);
  if (!v7)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v15 = *(v1 + v8);
  if (!v15)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v16 = *(v15 + OBJC_IVAR____TtC11AssetViewer15ModelController_arView);
  if (v16)
  {
    v5 = v14;

    [v16 bounds];
    *(&v3 + 1) = v17;
    goto LABEL_13;
  }

LABEL_20:
  __break(1u);
}

void sub_2412979B0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E538940, &qword_241366CB0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v22 - v2;
  v4 = sub_241351DEC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v22 - v9;
  v11 = *(v0 + OBJC_IVAR___ASVPreviewViewControllerInternal_interfaceState + 8);
  v12 = v11 > 5;
  v13 = (1 << v11) & 0x3A;
  if (!v12 && v13 != 0)
  {

    v15 = *(v0 + OBJC_IVAR___ASVPreviewViewControllerInternal_modelController);
    if (!v15)
    {
      __break(1u);
      return;
    }

    if ((*(v15 + OBJC_IVAR____TtC11AssetViewer15ModelController_isFaceAnchoredScene) & 1) == 0)
    {
      v16 = *(v0 + OBJC_IVAR___ASVPreviewViewControllerInternal_currentDetectionImages);
      if (!v16)
      {
        goto LABEL_12;
      }

      if ((v16 & 0xC000000000000001) != 0)
      {

        v17 = sub_2413544EC();

        if (!v17)
        {
LABEL_12:
          v18 = *(v0 + OBJC_IVAR___ASVPreviewViewControllerInternal_currentDetectionObjects);
          if (!v18)
          {
            return;
          }

          if ((v18 & 0xC000000000000001) != 0)
          {

            v19 = sub_2413544EC();

            if (!v19)
            {
              return;
            }
          }

          else if (!*(v18 + 16))
          {
            return;
          }
        }
      }

      else if (!*(v16 + 16))
      {
        goto LABEL_12;
      }

      v20 = OBJC_IVAR___ASVPreviewViewControllerInternal_lastPlacedAnchoringComponentTarget;
      swift_beginAccess();
      sub_241246210(v0 + v20, v3, &qword_27E538940, &qword_241366CB0);
      if ((*(v5 + 48))(v3, 1, v4) == 1)
      {
        sub_241246278(v3, &qword_27E538940, &qword_241366CB0);
      }

      else
      {
        v21 = *(v5 + 32);
        v21(v10, v3, v4);
        v21(v7, v10, v4);
        (*(v5 + 88))(v7, v4);
        (*(v5 + 8))(v7, v4);
      }
    }
  }
}

void sub_241297D88(uint64_t a1, char a2)
{
  sub_2412979B0();
  if (v4 & 1) != 0 || (v5 = sub_241287420(), v6 = v5[OBJC_IVAR____TtC11AssetViewer28ARQuickLookOverlayController_displayMode], v5, (v6))
  {

    swift_unknownObjectWeakAssign();
  }

  else
  {
    swift_unknownObjectWeakAssign();
    if (a2)
    {
      sub_24128F5C4();
      if (a2 == 1)
      {
        sub_2413233C4();
      }
    }

    else
    {
      v7 = OBJC_IVAR___ASVPreviewViewControllerInternal_hideLozengeTimer;
      v8 = *(v2 + OBJC_IVAR___ASVPreviewViewControllerInternal_hideLozengeTimer);
      if (v8)
      {
        [v8 invalidate];
        v9 = *(v2 + v7);
      }

      else
      {
        v9 = 0;
      }

      *(v2 + v7) = 0;

      v10 = *(v2 + OBJC_IVAR___ASVPreviewViewControllerInternal_lozengeLabel);

      [v10 setHidden:0 animated:1];
    }
  }
}

void PreviewViewController.preparePreviewOfFile(at:completionHandler:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v157 = a3;
  v156 = a2;
  v174[5] = *MEMORY[0x277D85DE8];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E538748, &unk_2413670C8);
  MEMORY[0x28223BE20](v5 - 8);
  v163 = &v152 - v6;
  v162 = type metadata accessor for ModelCustomizationOptions.BannerStyle(0);
  v161 = *(v162 - 8);
  MEMORY[0x28223BE20](v162);
  v153 = &v152 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v164 = type metadata accessor for ModelCustomizationOptions(0);
  MEMORY[0x28223BE20](v164);
  v159 = &v152 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E538780, &qword_2413670D8);
  MEMORY[0x28223BE20](v9 - 8);
  v158 = &v152 - v10;
  v11 = sub_24135152C();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v152 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E538750, &qword_2413660E0);
  MEMORY[0x28223BE20](v15 - 8);
  v160 = &v152 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v17);
  v20 = &v152 - v19;
  v21 = *(v12 + 16);
  v168 = a1;
  v21(&v152 - v19, a1, v11, v18);
  v166 = v12;
  v22 = *(v12 + 56);
  v167 = v11;
  v22(v20, 0, 1, v11);
  v23 = OBJC_IVAR___ASVPreviewViewControllerInternal_fileURL;
  swift_beginAccess();
  sub_241255BC8(v20, &v3[v23], &qword_27E538750, &qword_2413660E0);
  swift_endAccess();
  v24 = OBJC_IVAR___ASVPreviewViewControllerInternal_modelController;
  if (!*&v3[OBJC_IVAR___ASVPreviewViewControllerInternal_modelController])
  {
    __break(1u);
    goto LABEL_60;
  }

  v25 = [v3 view];
  if (!v25)
  {
LABEL_60:
    __break(1u);
    goto LABEL_61;
  }

  v26 = v25;
  [v25 frame];
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v34 = v33;

  *(swift_allocObject() + 16) = v3;
  v155 = v3;
  v35 = v3;
  sub_24124BCF8(0, sub_2412AF6DC, v28, v30, v32, v34);

  if (qword_27E537CD0 != -1)
  {
    swift_once();
  }

  v36 = sub_241352FFC();
  v37 = __swift_project_value_buffer(v36, qword_27E53A538);
  v38 = sub_241352FDC();
  v39 = sub_2413540DC();
  v40 = os_log_type_enabled(v38, v39);
  v165 = v37;
  if (v40)
  {
    v41 = swift_slowAlloc();
    *v41 = 0;
    _os_log_impl(&dword_241215000, v38, v39, "preparePreviewOfFile called", v41, 2u);
    MEMORY[0x245CE4870](v41, -1, -1);
  }

  v42 = swift_allocObject();
  v43 = v157;
  *(v42 + 16) = v156;
  *(v42 + 24) = v43;
  v44 = &v35[OBJC_IVAR___ASVPreviewViewControllerInternal_previewCompletionHandler];
  v45 = *&v35[OBJC_IVAR___ASVPreviewViewControllerInternal_previewCompletionHandler];
  v46 = *&v35[OBJC_IVAR___ASVPreviewViewControllerInternal_previewCompletionHandler + 8];
  *v44 = sub_2412AF700;
  v44[1] = v42;

  sub_2412186FC(v45, v46);
  v47 = v167;
  (v21)(v14, v168, v167);
  v48 = sub_241352FDC();
  v49 = sub_2413540DC();
  v50 = os_log_type_enabled(v48, v49);
  v154 = v24;
  if (v50)
  {
    v51 = swift_slowAlloc();
    v52 = swift_slowAlloc();
    v174[0] = v52;
    *v51 = 136315138;
    sub_2412B3164(&qword_27E539990, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
    v53 = sub_24135491C();
    v55 = v54;
    (*(v166 + 8))(v14, v47);
    v56 = sub_2412DDC2C(v53, v55, v174);

    *(v51 + 4) = v56;
    __swift_destroy_boxed_opaque_existential_0(v52);
    MEMORY[0x245CE4870](v52, -1, -1);
    MEMORY[0x245CE4870](v51, -1, -1);
  }

  else
  {

    (*(v166 + 8))(v14, v47);
  }

  v57 = v35;
  v58 = sub_241352FDC();
  v59 = sub_2413540DC();

  if (os_log_type_enabled(v58, v59))
  {
    v60 = swift_slowAlloc();
    v61 = swift_slowAlloc();
    v174[0] = v61;
    *v60 = 136315138;
    v62 = [v57 previewOptions];
    sub_241353B5C();

    v63 = sub_241353B6C();
    v65 = v64;

    v66 = sub_2412DDC2C(v63, v65, v174);

    *(v60 + 4) = v66;
    _os_log_impl(&dword_241215000, v58, v59, "Preview Options: %s", v60, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v61);
    MEMORY[0x245CE4870](v61, -1, -1);
    MEMORY[0x245CE4870](v60, -1, -1);
  }

  v67 = [v57 previewOptions];
  v68 = sub_241353B5C();

  v170 = v68;
  *&v172 = sub_241353C0C();
  *(&v172 + 1) = v69;
  sub_24135456C();
  if (*(v68 + 16) && (v70 = sub_2412FD8C4(v174), (v71 & 1) != 0))
  {
    sub_2412461A0(*(v68 + 56) + 32 * v70, &v172);
    sub_2412AF728(v174);
    sub_241246278(&v172, &qword_27E5386F0, &qword_2413670A8);
    *&v171[0] = sub_241353C0C();
    *(&v171[0] + 1) = v72;
    sub_24135456C();
    v73 = &_OBJC_LABEL_PROTOCOL___CAMDynamicShutterControlDelegate;
    v74 = v158;
    if (*(v68 + 16) && (v75 = sub_2412FD8C4(v174), (v76 & 1) != 0))
    {
      sub_2412461A0(*(v68 + 56) + 32 * v75, &v172);
      sub_2412AF728(v174);
      if (swift_dynamicCast())
      {
        v77 = v171[0];

        v78 = HIBYTE(*(&v77 + 1)) & 0xFLL;
        if ((*(&v77 + 1) & 0x2000000000000000) == 0)
        {
          v78 = v77 & 0xFFFFFFFFFFFFLL;
        }

        if (!v78)
        {
          goto LABEL_28;
        }
      }
    }

    else
    {
      sub_2412AF728(v174);
    }
  }

  else
  {
    sub_2412AF728(v174);
    v172 = 0u;
    v173 = 0u;
    sub_241246278(&v172, &qword_27E5386F0, &qword_2413670A8);
    v73 = &_OBJC_LABEL_PROTOCOL___CAMDynamicShutterControlDelegate;
    v74 = v158;
  }

  *&v172 = sub_241353C0C();
  *(&v172 + 1) = v79;
  v80 = MEMORY[0x277D837D0];
  sub_24135456C();
  sub_24135129C();
  v81 = sub_2413512DC();
  v82 = *(v81 - 8);
  if ((*(v82 + 48))(v74, 1, v81) == 1)
  {
    sub_241246278(v74, &unk_27E538780, &qword_2413670D8);
  }

  else
  {
    v83 = sub_2413512CC();
    v85 = v84;
    (*(v82 + 8))(v74, v81);
    if (v85)
    {
      *(&v173 + 1) = v80;
      *&v172 = v83;
      *(&v172 + 1) = v85;
      sub_241245AA4(&v172, v171);
      v86 = v170;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v169 = v86;
      sub_2412A6CB0(v171, v174, isUniquelyReferenced_nonNull_native);
      sub_2412AF728(v174);
      v170 = v169;
      goto LABEL_28;
    }
  }

  sub_2412A2B7C(v174, v171);
  sub_241246278(v171, &qword_27E5386F0, &qword_2413670A8);
  sub_2412AF728(v174);
LABEL_28:

  v89 = v159;
  sub_241303B7C(v88, v159);
  v90 = &v57[OBJC_IVAR___ASVPreviewViewControllerInternal_customizationOptions];
  swift_beginAccess();
  sub_2412B3554(v89, v90, type metadata accessor for ModelCustomizationOptions);
  sub_2413042D8();
  swift_endAccess();
  v91 = v57;
  v92 = sub_241352FDC();
  v93 = sub_2413540DC();

  if (os_log_type_enabled(v92, v93))
  {
    v94 = swift_slowAlloc();
    v95 = swift_slowAlloc();
    v174[0] = v95;
    *v94 = 136315138;
    sub_2412B30F0(v90, v89, type metadata accessor for ModelCustomizationOptions);
    v96 = sub_241305030();
    v97 = v89;
    v98 = v96;
    v100 = v99;
    sub_2412AF7A8(v97, type metadata accessor for ModelCustomizationOptions);
    v101 = sub_2412DDC2C(v98, v100, v174);

    *(v94 + 4) = v101;
    _os_log_impl(&dword_241215000, v92, v93, "Final customizationOptions: %s", v94, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v95);
    MEMORY[0x245CE4870](v95, -1, -1);
    MEMORY[0x245CE4870](v94, -1, -1);
  }

  v102 = v155;
  v103 = v163;
  v104 = v164;
  sub_241246210(v90 + *(v164 + 32), v163, &qword_27E538748, &unk_2413670C8);
  if ((*(v161 + 48))(v103, 1, v162) == 1)
  {
    sub_241246278(v103, &qword_27E538748, &unk_2413670C8);
  }

  else
  {
    v105 = v153;
    sub_2412B35BC(v103, v153, type metadata accessor for ModelCustomizationOptions.BannerStyle);
    v106 = sub_241287420();
    sub_2412AB10C(v105, v91, v106);

    sub_2412AF7A8(v105, type metadata accessor for ModelCustomizationOptions.BannerStyle);
  }

  v107 = v167;
  v108 = v90 + *(v104 + 28);
  v109 = v160;
  sub_241246210(v108, v160, &qword_27E538750, &qword_2413660E0);
  v110 = (*(v166 + 48))(v109, 1, v107);
  sub_241246278(v109, &qword_27E538750, &qword_2413660E0);
  if (v110 != 1)
  {
    [objc_opt_self() sendAnalyticsWithEvent_];
  }

  v111 = [v91 v73[38]];
  v112 = sub_241353B5C();

  *&v171[0] = sub_241353C0C();
  *(&v171[0] + 1) = v113;
  sub_24135456C();
  if (!*(v112 + 16) || (v114 = sub_2412FD8C4(v174), (v115 & 1) == 0))
  {

    sub_2412AF728(v174);
    goto LABEL_42;
  }

  sub_2412461A0(*(v112 + 56) + 32 * v114, &v172);
  sub_2412AF728(v174);

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_42:
    v120 = sub_241287420();
    v121 = [objc_opt_self() wantsStatusPillHidden];
    goto LABEL_43;
  }

  v116 = LOBYTE(v171[0]);
  v117 = sub_241352FDC();
  v118 = sub_2413540DC();
  if (os_log_type_enabled(v117, v118))
  {
    v119 = swift_slowAlloc();
    *v119 = 67109120;
    *(v119 + 4) = v116;
    _os_log_impl(&dword_241215000, v117, v118, "Overriding status pill to be hidden via SPI. %{BOOL}d", v119, 8u);
    MEMORY[0x245CE4870](v119, -1, -1);
  }

  v120 = sub_241287420();
  v121 = v116;
LABEL_43:
  v120[OBJC_IVAR____TtC11AssetViewer28ARQuickLookOverlayController_wantsStatusPillHidden] = v121;

  v122 = [v91 v73[38]];
  v123 = sub_241353B5C();

  *&v171[0] = sub_241353C0C();
  *(&v171[0] + 1) = v124;
  sub_24135456C();
  if (!*(v123 + 16) || (v125 = sub_2412FD8C4(v174), (v126 & 1) == 0))
  {

    sub_2412AF728(v174);
LABEL_51:
    v130 = [objc_opt_self() sharedInstance];
    v131 = v130;
    v132 = MEMORY[0x277CB8048];
    goto LABEL_52;
  }

  sub_2412461A0(*(v123 + 56) + 32 * v125, &v172);
  sub_2412AF728(v174);

  if ((swift_dynamicCast() & 1) == 0 || LOBYTE(v171[0]) != 1)
  {
    goto LABEL_51;
  }

  v127 = sub_241352FDC();
  v128 = sub_2413540DC();
  if (os_log_type_enabled(v127, v128))
  {
    v129 = swift_slowAlloc();
    *v129 = 0;
    _os_log_impl(&dword_241215000, v127, v128, "[Animation] Overriding audio category to playback", v129, 2u);
    MEMORY[0x245CE4870](v129, -1, -1);
  }

  v130 = [objc_opt_self() sharedInstance];
  v131 = v130;
  v132 = MEMORY[0x277CB8030];
LABEL_52:
  v133 = *v132;
  v174[0] = 0;
  v134 = [v130 setCategory:v133 error:v174];

  if (v134)
  {
    v135 = v174[0];
  }

  else
  {
    v136 = v174[0];
    v137 = sub_24135139C();

    swift_willThrow();
  }

  sub_24135229C();
  sub_24135228C();
  sub_24135227C();

  if (!*&v102[v154])
  {
LABEL_61:
    __break(1u);
  }

  v138 = swift_allocObject();
  v138[2] = v91;
  v139 = swift_allocObject();
  *(v139 + 16) = v91;
  v140 = v91;

  sub_24124CEAC(v168, sub_2412AF77C, v138, sub_2412AF784, v139);

  v141 = v140;
  v142 = sub_241352FDC();
  v143 = sub_2413540DC();

  if (os_log_type_enabled(v142, v143))
  {
    v144 = swift_slowAlloc();
    v145 = swift_slowAlloc();
    v174[0] = v145;
    *v144 = 136315138;
    v146 = [v141 v73[38]];
    sub_241353B5C();

    v73 = &_OBJC_LABEL_PROTOCOL___CAMDynamicShutterControlDelegate;
    v147 = sub_241353B6C();
    v149 = v148;

    v150 = sub_2412DDC2C(v147, v149, v174);

    *(v144 + 4) = v150;
    _os_log_impl(&dword_241215000, v142, v143, "previewOptions is set to %s", v144, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v145);
    MEMORY[0x245CE4870](v145, -1, -1);
    MEMORY[0x245CE4870](v144, -1, -1);
  }

  v151 = [v141 v73[38]];
  sub_241353B5C();

  sub_241353B6C();
}

void sub_2412994A8(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v3 = sub_24135138C();
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  (*(a2 + 16))(a2);
}

void sub_24129950C()
{
  v1 = v0;
  v2 = sub_2413538CC();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2413538FC();
  v45 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v44 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_24135391C();
  v8 = *(v46 - 8);
  MEMORY[0x28223BE20](v46);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v38 - v12;
  v14 = objc_opt_self();
  if ([v14 forceShowAnimationScrubber])
  {
    v15 = sub_241287420();
    sub_2412FA424(2);
  }

  v16 = [v14 overrideCameraStateSerializedString];
  if (v16)
  {
    v40 = v5;
    v17 = v16;
    v18 = sub_241353C0C();
    v39 = v19;

    if (qword_27E537CD0 != -1)
    {
      swift_once();
    }

    v41 = v6;
    v42 = v3;
    v43 = v2;
    v20 = sub_241352FFC();
    __swift_project_value_buffer(v20, qword_27E53A538);
    v21 = sub_241352FDC();
    v22 = sub_2413540DC();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_241215000, v21, v22, "User defaults wants to override camera state", v23, 2u);
      MEMORY[0x245CE4870](v23, -1, -1);
    }

    sub_241246158(0, &qword_27E538920, 0x277D85C78);
    v24 = sub_24135416C();
    sub_24135390C();
    sub_24135393C();
    v38 = *(v8 + 8);
    v38(v10, v46);
    v25 = swift_allocObject();
    v25[2] = v1;
    v25[3] = v18;
    v25[4] = v39;
    aBlock[4] = sub_2412B31BC;
    aBlock[5] = v25;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_2412D5698;
    aBlock[3] = &block_descriptor_3;
    v26 = _Block_copy(aBlock);
    v27 = v1;
    v28 = v44;
    sub_2413538DC();
    v47 = MEMORY[0x277D84F90];
    sub_2412B3164(&qword_27E539870, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E538930, &unk_2413674A0);
    sub_24123D370(&qword_27E539880, &unk_27E538930, &unk_2413674A0, MEMORY[0x277D83970]);
    v29 = v40;
    v30 = v43;
    sub_24135444C();
    MEMORY[0x245CE2500](v13, v28, v29, v26);
    _Block_release(v26);

    (*(v42 + 8))(v29, v30);
    (*(v45 + 8))(v28, v41);
    v38(v13, v46);
  }

  if (qword_27E537CD0 != -1)
  {
    swift_once();
  }

  v31 = sub_241352FFC();
  __swift_project_value_buffer(v31, qword_27E53A538);
  v32 = sub_241352FDC();
  v33 = sub_2413540DC();
  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    *v34 = 0;
    _os_log_impl(&dword_241215000, v32, v33, "Done additional setup in PreviewViewController", v34, 2u);
    MEMORY[0x245CE4870](v34, -1, -1);
  }

  v35 = *&v1[OBJC_IVAR___ASVPreviewViewControllerInternal_modelController];
  if (!v35)
  {
    __break(1u);
    goto LABEL_18;
  }

  v36 = *(v35 + OBJC_IVAR____TtC11AssetViewer15ModelController_arView);
  if (!v36)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (*(v36 + qword_27E53A1A0))
  {

    printHierarchy(entity:level:debugString:)(v37, 0, 0, 0xE000000000000000);

    return;
  }

LABEL_19:
  __break(1u);
}

void sub_241299B4C(uint64_t a1, uint64_t a2, unint64_t a3)
{
  sub_2412B3F74();
  v6 = *(a1 + OBJC_IVAR___ASVPreviewViewControllerInternal_debugActionsState);
  if (v6)
  {
    v7 = v6;
    sub_24125BB64(a2, a3);
  }
}

void sub_241299BEC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 32);
  v3 = *(a2 + 16);
  v4[0] = *a2;
  v4[1] = v3;
  v5 = v2;
  v6 = *(a2 + 40);
  sub_241299C34(a1, v4);
}

void sub_241299C34(uint64_t a1, uint64_t a2)
{
  v3 = OBJC_IVAR___ASVPreviewViewControllerInternal_modelController;
  v4 = *&v2[OBJC_IVAR___ASVPreviewViewControllerInternal_modelController];
  if (!v4 || !*(v4 + OBJC_IVAR____TtC11AssetViewer15ModelController_arView))
  {
    return;
  }

  v5 = v2;
  v6 = *(a2 + 16);
  v7 = *(a2 + 24);
  v8 = *(a2 + 32);
  v28 = *(a2 + 40);
  *oslog = *a2;
  if (qword_27E537CD0 != -1)
  {
    swift_once();
  }

  v9 = sub_241352FFC();
  __swift_project_value_buffer(v9, qword_27E53A538);
  v10 = sub_241352FDC();
  v11 = sub_2413540DC();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_241215000, v10, v11, "handleLoadSuccess() called", v12, 2u);
    MEMORY[0x245CE4870](v12, -1, -1);
  }

  v13 = sub_241287420();
  v14 = sub_241288D44();
  sub_2412F8078(v14 & 1);

  v15 = *&v5[v3];
  if (!v15)
  {
    __break(1u);
    goto LABEL_21;
  }

  v16 = *(v15 + OBJC_IVAR____TtC11AssetViewer15ModelController_arView);
  if (!v16)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v17 = v16;
  sub_24135292C();
  sub_2413524EC();

  sub_24135243C();
  swift_dynamicCastClassUnconditional();
  sub_24135241C();

  swift_unknownObjectRelease();
  sub_2412B3164(&qword_27E5388F0, type metadata accessor for PreviewViewController, &protocol conformance descriptor for PreviewViewController);
  sub_24135239C();

  sub_24129A898();
  sub_24129950C();
  sub_24129AD8C();
  v31 = *oslog;
  v32 = v6;
  v33 = v7;
  v34 = v8;
  v35 = v28;
  sub_2412EED18(&v31);
  v18 = *&v5[v3];
  if (!v18)
  {
LABEL_22:
    __break(1u);
    return;
  }

  v19 = *(v18 + OBJC_IVAR____TtC11AssetViewer15ModelController_variantLoader);
  if (v19)
  {
    v20 = *&v5[OBJC_IVAR___ASVPreviewViewControllerInternal____lazy_storage___overlayController];
    v21 = *(v19 + OBJC_IVAR____TtC11AssetViewer14VariantsLoader_configurations);
    v22 = *(v19 + OBJC_IVAR____TtC11AssetViewer14VariantsLoader_analytics);
    v23 = *(v19 + OBJC_IVAR____TtC11AssetViewer14VariantsLoader_analytics + 8);
    v24 = *(v19 + OBJC_IVAR____TtC11AssetViewer14VariantsLoader_analytics + 16);

    v25 = v20;

    sub_2412AB2A0(v21, v5, v22, v23, v24, v25);

    [v5 updateInterfaceState];
  }

  else
  {
    osloga = sub_241352FDC();
    v26 = sub_2413540BC();
    if (os_log_type_enabled(osloga, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&dword_241215000, osloga, v26, "variantLoader object not available", v27, 2u);
      MEMORY[0x245CE4870](v27, -1, -1);
    }
  }
}

void sub_24129A000(void *a1)
{
  v2 = v1;
  if (qword_27E537CD0 != -1)
  {
    swift_once();
  }

  v4 = sub_241352FFC();
  __swift_project_value_buffer(v4, qword_27E53A538);
  v5 = a1;
  v6 = sub_241352FDC();
  v7 = sub_2413540BC();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v17 = v9;
    *v8 = 136315138;
    swift_getErrorValue();
    v10 = sub_241354A3C();
    v12 = sub_2412DDC2C(v10, v11, &v17);

    *(v8 + 4) = v12;
    _os_log_impl(&dword_241215000, v6, v7, "PreviewViewController handleLoadFailure, error: %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x245CE4870](v9, -1, -1);
    MEMORY[0x245CE4870](v8, -1, -1);
  }

  v13 = objc_opt_self();
  v14 = sub_24135138C();
  [v13 sendAnalyticsWithEvent:12 error:v14];

  v15 = sub_241287420();
  sub_2412F7BEC(a1);

  if (*(*(v2 + OBJC_IVAR___ASVPreviewViewControllerInternal____lazy_storage___overlayController) + OBJC_IVAR____TtC11AssetViewer28ARQuickLookOverlayController_displayMode) != 1)
  {
    goto LABEL_8;
  }

  if (*(v2 + OBJC_IVAR___ASVPreviewViewControllerInternal_modelController))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E538860, &qword_241367370);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_241366530;

    *(inited + 32) = REHierarchicalFadeComponentGetComponentType();
    *(inited + 40) = REProjectiveShadowReceiverComponentGetComponentType();
    sub_24124C864(inited, 0.0);

    swift_setDeallocating();
LABEL_8:
    sub_24129AD8C();
    return;
  }

  __break(1u);
}

double sub_24129A264()
{
  v1 = v0;
  v2 = sub_2413538CC();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2413538FC();
  v32 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_24135391C();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&result = MEMORY[0x28223BE20](v13).n128_u64[0];
  v16 = &v24 - v15;
  if ((*(v1 + OBJC_IVAR___ASVPreviewViewControllerInternal_isDismissing) & 1) == 0)
  {
    sub_241246158(0, &qword_27E538920, 0x277D85C78);
    v28 = v2;
    v29 = sub_24135416C();
    sub_24135390C();
    sub_24135393C();
    v17 = *(v10 + 8);
    v30 = v10 + 8;
    v31 = v17;
    v17(v12, v9);
    v18 = swift_allocObject();
    swift_unknownObjectWeakInit();
    aBlock[4] = sub_2412B3258;
    aBlock[5] = v18;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_2412D5698;
    aBlock[3] = &block_descriptor_79;
    v26 = _Block_copy(aBlock);

    sub_2413538DC();
    v33 = MEMORY[0x277D84F90];
    sub_2412B3164(&qword_27E539870, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    v27 = v9;
    v25 = v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E538930, &unk_2413674A0);
    v19 = v32;
    v20 = v8;
    sub_24123D370(&qword_27E539880, &unk_27E538930, &unk_2413674A0, MEMORY[0x277D83970]);
    v21 = v28;
    sub_24135444C();
    v22 = v26;
    v23 = v29;
    MEMORY[0x245CE2500](v16, v20, v5, v26);
    _Block_release(v22);

    (*(v3 + 8))(v5, v21);
    (*(v19 + 8))(v20, v25);
    v31(v16, v27);
  }

  return result;
}

void sub_24129A67C(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E538850, &unk_241366BF0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v13 - v2;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    if ((Strong[OBJC_IVAR___ASVPreviewViewControllerInternal_isDismissing] & 1) == 0 && (Strong[OBJC_IVAR___ASVPreviewViewControllerInternal_onStartInteractionTriggered] & 1) == 0)
    {
      Strong[OBJC_IVAR___ASVPreviewViewControllerInternal_onStartInteractionTriggered] = 1;
      v5 = Strong;
      v6 = sub_241353EEC();
      (*(*(v6 - 8) + 56))(v3, 1, 1, v6);
      sub_241353ECC();
      v7 = v5;
      v8 = v5;
      v9 = sub_241353EBC();
      v10 = swift_allocObject();
      v11 = MEMORY[0x277D85700];
      v10[2] = v9;
      v10[3] = v11;
      v10[4] = v8;
      sub_241327238(0, 0, v3, &unk_2413674D8, v10);

      v12 = *&v8[OBJC_IVAR___ASVPreviewViewControllerInternal_modelController];
      if (!v12)
      {
        __break(1u);
        return;
      }

      Strong = v7;
      if (*(*(v12 + OBJC_IVAR____TtC11AssetViewer15ModelController_modelAnimationController) + OBJC_IVAR____TtC11AssetViewer24ModelAnimationController_animationState + 1) == 1)
      {
        sub_241337AB8(1, 1);
        Strong = v7;
      }
    }
  }
}

void sub_24129A898()
{
  v1 = v0;
  if (qword_27E537CD0 != -1)
  {
    swift_once();
  }

  v2 = sub_241352FFC();
  __swift_project_value_buffer(v2, qword_27E53A538);
  v3 = sub_241352FDC();
  v4 = sub_2413540DC();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_241215000, v3, v4, "startARSessionOrForceObjectMode() called", v5, 2u);
    MEMORY[0x245CE4870](v5, -1, -1);
  }

  v6 = OBJC_IVAR___ASVPreviewViewControllerInternal_debugAllowsARMode;
  if (*(v1 + OBJC_IVAR___ASVPreviewViewControllerInternal_debugAllowsARMode) == 1)
  {
    v7 = sub_241287420();
    v8 = v7[OBJC_IVAR____TtC11AssetViewer28ARQuickLookOverlayController_isARModeEnabled];

    if (v8)
    {
      v9 = sub_241352FDC();
      v10 = sub_2413540DC();
      if (os_log_type_enabled(v9, v10))
      {
        v11 = swift_slowAlloc();
        *v11 = 0;
        _os_log_impl(&dword_241215000, v9, v10, "startARSessionOrForceObjectMode() called -- bottom", v11, 2u);
        MEMORY[0x245CE4870](v11, -1, -1);
      }

      if ((*(*(v1 + OBJC_IVAR___ASVPreviewViewControllerInternal____lazy_storage___overlayController) + OBJC_IVAR____TtC11AssetViewer28ARQuickLookOverlayController_displayMode) & 1) == 0)
      {
        sub_2412923E8();
      }

      v12 = sub_241352FDC();
      v13 = sub_2413540DC();
      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        *v14 = 0;
        _os_log_impl(&dword_241215000, v12, v13, "Start AR session", v14, 2u);
        MEMORY[0x245CE4870](v14, -1, -1);
      }

      sub_24128987C(0, 3);
      return;
    }
  }

  v15 = sub_241352FDC();
  v16 = sub_2413540DC();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&dword_241215000, v15, v16, "Starting in Object Mode after file loaded.", v17, 2u);
    MEMORY[0x245CE4870](v17, -1, -1);
  }

  if ((*(v1 + v6) & 1) == 0)
  {
    v18 = sub_241352FDC();
    v19 = sub_2413540DC();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_241215000, v18, v19, "Force object mode from user default.", v20, 2u);
      MEMORY[0x245CE4870](v20, -1, -1);
    }

    v21 = sub_241287420();
    [v21 enableWorldModeControl_];
  }

  v22 = sub_241352FDC();
  v23 = sub_2413540DC();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    *v24 = 0;
    _os_log_impl(&dword_241215000, v22, v23, "Force reset to object mode SRT", v24, 2u);
    MEMORY[0x245CE4870](v24, -1, -1);
  }

  v25 = *(v1 + OBJC_IVAR___ASVPreviewViewControllerInternal_modelController);
  if (!v25)
  {
    __break(1u);
    goto LABEL_36;
  }

  v26 = *(v25 + OBJC_IVAR____TtC11AssetViewer15ModelController_rootEntityController);
  if (!v26)
  {
LABEL_36:
    __break(1u);
    return;
  }

  v27 = v26;
  sub_241247C18(0, 0, 0, 0.0);

  if (*(v1 + OBJC_IVAR___ASVPreviewViewControllerInternal_previewDidAppearCalled) == 1)
  {

    sub_24129A264();
  }

  else
  {
    v28 = [objc_opt_self() defaultCenter];
    v29 = v28;
    if (qword_27E537B28 != -1)
    {
      swift_once();
      v28 = v29;
    }

    [v28 addObserver:v1 selector:? name:? object:?];
  }
}

id sub_24129AD8C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E538868, &qword_241367378);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v26[-v2];
  v4 = type metadata accessor for PreviewType(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v26[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = OBJC_IVAR___ASVPreviewViewControllerInternal_previewType;
  swift_beginAccess();
  sub_2412B30F0(&v0[v7], v6, type metadata accessor for PreviewType);
  v8 = sub_24135164C();
  LODWORD(v7) = (*(*(v8 - 8) + 48))(v6, 1, v8);
  sub_2412AF7A8(v6, type metadata accessor for PreviewType);
  if (v7 == 1)
  {
    result = [v0 view];
    if (result)
    {
      v10 = result;
      v11 = objc_opt_self();
      v12 = [v11 systemBackgroundColor];
      [v10 setBackgroundColor_];

      result = [v0 view];
      if (result)
      {
        v13 = result;
        v14 = [result window];

        if (v14)
        {
          v15 = [v11 blackColor];
          [v14 setBackgroundColor_];
        }

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

LABEL_6:
  v16 = sub_2413515EC();
  (*(*(v16 - 8) + 56))(v3, 1, 1, v16);
  v17 = OBJC_IVAR___ASVPreviewViewControllerInternal_analyticsViewDidAppearDate;
  swift_beginAccess();
  sub_241255BC8(v3, &v0[v17], &qword_27E538868, &qword_241367378);
  swift_endAccess();
  sub_2412B43D8();
  v18 = sub_241287420();
  v19 = OBJC_IVAR____TtC11AssetViewer28ARQuickLookOverlayController_autoHideControlsTimer;
  [*&v18[OBJC_IVAR____TtC11AssetViewer28ARQuickLookOverlayController_autoHideControlsTimer] invalidate];
  v20 = *&v18[v19];
  *&v18[v19] = 0;

  v21 = &v0[OBJC_IVAR___ASVPreviewViewControllerInternal_previewCompletionHandler];
  v22 = *&v0[OBJC_IVAR___ASVPreviewViewControllerInternal_previewCompletionHandler];
  if (v22)
  {
    v23 = v21[1];

    v22(0);
    sub_2412186FC(v22, v23);
    v24 = *v21;
  }

  else
  {
    v24 = 0;
  }

  v25 = v21[1];
  *v21 = 0;
  v21[1] = 0;
  return sub_2412186FC(v24, v25);
}

uint64_t sub_24129B0D8(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E538940, &qword_241366CB0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = (&v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v6);
  v8 = &v19 - v7;
  v9 = OBJC_IVAR___ASVPreviewViewControllerInternal_currentDetectionImages;
  v10 = *(v1 + OBJC_IVAR___ASVPreviewViewControllerInternal_currentDetectionImages);
  if (v10)
  {
    if ((v10 & 0xC000000000000001) != 0)
    {

      v11 = sub_2413544EC();

      if (!v11)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }

    if (*(v10 + 16))
    {
LABEL_4:
      *(v1 + v9) = 0;

      sub_24128AB54();
    }
  }

LABEL_5:
  v12 = OBJC_IVAR___ASVPreviewViewControllerInternal_currentDetectionObjects;
  v13 = *(v1 + OBJC_IVAR___ASVPreviewViewControllerInternal_currentDetectionObjects);
  if (!v13)
  {
    goto LABEL_9;
  }

  if ((v13 & 0xC000000000000001) != 0)
  {

    v14 = sub_2413544EC();

    if (!v14)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  if (*(v13 + 16))
  {
LABEL_8:
    *(v1 + v12) = 0;

    sub_24128AD50();
  }

LABEL_9:
  sub_241246210(a1, v8, &qword_27E538940, &qword_241366CB0);
  v15 = sub_241351DEC();
  v16 = *(v15 - 8);
  if ((*(v16 + 48))(v8, 1, v15) != 1)
  {
    sub_241246210(v8, v5, &qword_27E538940, &qword_241366CB0);
    v17 = (*(v16 + 88))(v5, v15);
    if (v17 == *MEMORY[0x277CDAD60])
    {
      (*(v16 + 96))(v5, v15);
      sub_241280864(*v5, v5[1], v5[2], v5[3]);
    }

    else
    {
      if (v17 != *MEMORY[0x277CDAD88])
      {
        (*(v16 + 8))(v5, v15);
        return sub_241246278(v8, &qword_27E538940, &qword_241366CB0);
      }

      (*(v16 + 96))(v5, v15);
      sub_241280D8C(*v5, v5[1], v5[2], v5[3]);
    }
  }

  return sub_241246278(v8, &qword_27E538940, &qword_241366CB0);
}

void sub_24129B3BC()
{
  v1 = v0;
  v2 = sub_241287420();
  v3 = *&v2[OBJC_IVAR____TtC11AssetViewer28ARQuickLookOverlayController_bottomControlCapabilities];

  v4 = OBJC_IVAR___ASVPreviewViewControllerInternal_modelController;
  v5 = *(v1 + OBJC_IVAR___ASVPreviewViewControllerInternal_modelController);
  if (!v5)
  {
    __break(1u);
    goto LABEL_25;
  }

  v6 = (v5 + OBJC_IVAR____TtC11AssetViewer15ModelController_fileMetadata);
  v8 = v6[1];
  v7 = v6[2];
  v9 = *v6;
  v28 = *(v6 + 6);
  v27[1] = v8;
  v27[2] = v7;
  v27[0] = v9;
  v23 = *v6;
  v24 = v6[1];
  v25 = v6[2];
  v26 = *(v6 + 6);

  sub_241255B50(v27, v29);
  sub_241349C30((v3 & 8) != 0, &v23);

  v29[0] = v23;
  v29[1] = v24;
  v29[2] = v25;
  v30 = v26;
  sub_241244AE8(v29);
  if (!*(v1 + v4))
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  swift_getKeyPath();
  swift_getKeyPath();

  sub_24135316C();

  v10 = *(v1 + v4);
  if (v10)
  {
    v11 = *&v23;
    if (*(*(v10 + OBJC_IVAR____TtC11AssetViewer15ModelController_modelAnimationController) + OBJC_IVAR____TtC11AssetViewer24ModelAnimationController_animationState) != 1)
    {
      goto LABEL_9;
    }

    if (qword_27E537CD0 != -1)
    {
      goto LABEL_23;
    }

    while (1)
    {
      v12 = sub_241352FFC();
      __swift_project_value_buffer(v12, qword_27E53A538);
      v13 = sub_241352FDC();
      v14 = sub_2413540DC();
      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        *v15 = 0;
        _os_log_impl(&dword_241215000, v13, v14, "[Animation] Showing animation scrubber view", v15, 2u);
        MEMORY[0x245CE4870](v15, -1, -1);
      }

      v16 = *(v1 + OBJC_IVAR___ASVPreviewViewControllerInternal____lazy_storage___overlayController);
      sub_2412FA424(2);

      v17.f64[0] = 0.0;
      sub_241281AE0(v11, 0.0, v17);
      v10 = *(v1 + v4);
      if (!v10)
      {
        goto LABEL_27;
      }

LABEL_9:
      if (*(*(v10 + OBJC_IVAR____TtC11AssetViewer15ModelController_modelAnimationController) + OBJC_IVAR____TtC11AssetViewer24ModelAnimationController_animationState + 1) == 1)
      {
        if (qword_27E537CD0 != -1)
        {
          swift_once();
        }

        v18 = sub_241352FFC();
        __swift_project_value_buffer(v18, qword_27E53A538);
        v19 = sub_241352FDC();
        v20 = sub_2413540DC();
        if (os_log_type_enabled(v19, v20))
        {
          v21 = swift_slowAlloc();
          *v21 = 0;
          _os_log_impl(&dword_241215000, v19, v20, "[Animation] Auto playing", v21, 2u);
          MEMORY[0x245CE4870](v21, -1, -1);
        }

        if (!*(v1 + v4))
        {
          goto LABEL_28;
        }

        sub_24134950C(1);
      }

      v22 = ceil(v11);
      if ((*&v22 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
      {
        break;
      }

      if (v22 <= -9.22337204e18)
      {
        goto LABEL_21;
      }

      if (v22 < 9.22337204e18)
      {
        *(v1 + OBJC_IVAR___ASVPreviewViewControllerInternal_analyticsLongestDuration) = v22;
        return;
      }

LABEL_22:
      __break(1u);
LABEL_23:
      swift_once();
    }

    __break(1u);
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
}

id sub_24129B7CC(uint64_t a1)
{
  v2 = v1;
  v101 = sub_2413517DC();
  v4 = *(v101 - 8);
  MEMORY[0x28223BE20](v101);
  v100 = &v90 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E538940, &qword_241366CB0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v90 - v7;
  v10 = *(a1 + 16);
  isUniquelyReferenced_nonNull_native = *(a1 + 24);
  LOBYTE(v11) = *(a1 + 32);
  if (qword_27E537CD0 != -1)
  {
LABEL_79:
    swift_once();
  }

  v12 = sub_241352FFC();
  v13 = __swift_project_value_buffer(v12, qword_27E53A538);
  v14 = sub_241352FDC();
  v15 = sub_2413540DC();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&dword_241215000, v14, v15, "PreviewViewController.commonFullscreenSetupAfterSceneLoad()", v16, 2u);
    MEMORY[0x245CE4870](v16, -1, -1);
  }

  if (v11)
  {
    v17 = *(v2 + OBJC_IVAR___ASVPreviewViewControllerInternal_defaultGravity);
  }

  else
  {
    *&v17 = v10;
    *(&v17 + 1) = isUniquelyReferenced_nonNull_native;
  }

  *(v2 + OBJC_IVAR___ASVPreviewViewControllerInternal_gravity) = v17;
  sub_24128AF44();
  v18 = OBJC_IVAR___ASVPreviewViewControllerInternal_modelController;
  v19 = *(v2 + OBJC_IVAR___ASVPreviewViewControllerInternal_modelController);
  if (!v19)
  {
    goto LABEL_83;
  }

  v20 = OBJC_IVAR____TtC11AssetViewer15ModelController_anchoringComponentTarget;
  swift_beginAccess();
  sub_241246210(v19 + v20, v8, &qword_27E538940, &qword_241366CB0);
  sub_24129B0D8(v8);
  sub_241246278(v8, &qword_27E538940, &qword_241366CB0);
  v21 = *(v2 + v18);
  if (!v21)
  {
LABEL_84:
    __break(1u);
    goto LABEL_85;
  }

  v22 = *(v21 + OBJC_IVAR____TtC11AssetViewer15ModelController_entityControllers);
  v94 = v13;
  v98 = v4;
  if (v22 >> 62)
  {
    v23 = sub_2413544EC();
  }

  else
  {
    v23 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v23)
  {
    goto LABEL_19;
  }

  v105 = MEMORY[0x277D84F90];

  sub_24135466C();
  if (v23 < 0)
  {
    __break(1u);
LABEL_83:
    __break(1u);
    goto LABEL_84;
  }

  v13 = v18;
  v24 = 0;
  do
  {
    if ((v22 & 0xC000000000000001) != 0)
    {
      v25 = MEMORY[0x245CE29C0](v24, v22);
    }

    else
    {
      v25 = *(v22 + 8 * v24 + 32);
    }

    v26 = v25;
    ++v24;

    sub_24135464C();
    sub_24135467C();
    sub_24135468C();
    sub_24135465C();
  }

  while (v23 != v24);

LABEL_19:
  v27 = *(v2 + v18);
  if (!v27)
  {
LABEL_85:
    __break(1u);
LABEL_86:
    __break(1u);
LABEL_87:
    __break(1u);
    goto LABEL_88;
  }

  v93 = v18;
  v28 = *(v27 + OBJC_IVAR____TtC11AssetViewer15ModelController_arView);
  isUniquelyReferenced_nonNull_native = v98;
  if (!v28)
  {
    goto LABEL_86;
  }

  v29 = v28;
  sub_24135292C();
  sub_2413524EC();

  sub_24135243C();
  swift_dynamicCastClassUnconditional();
  v30 = sub_2413523CC();
  swift_unknownObjectRelease();
  v31 = MEMORY[0x277D84F98];
  v105 = MEMORY[0x277D84F98];
  sub_241287784(v30, &v105);

  v13 = v105;
  v32 = OBJC_IVAR___ASVPreviewViewControllerInternal_entityToInteractionsMapping;
  swift_beginAccess();
  *(v2 + v32) = v13;

  v33 = sub_241287498();
  swift_beginAccess();
  *(v33 + 40) = v31;

  v11 = &v13[8];
  v34 = 1 << LOBYTE(v13[4].isa);
  v35 = -1;
  if (v34 < 64)
  {
    v35 = ~(-1 << v34);
  }

  v8 = v35 & v13[8].isa;
  v10 = (v34 + 63) >> 6;
  v98 = (isUniquelyReferenced_nonNull_native + 8);
  v99 = OBJC_IVAR___ASVPreviewViewControllerInternal____lazy_storage___viewportScanner;
  v95 = v13;

  v4 = 0;
  v97 = v2;
  while (v8)
  {
LABEL_31:
    v13 = *(*(v95 + 48) + ((v4 << 9) | (8 * __clz(__rbit64(v8)))));
    v2 = *(v2 + v99);

    v38 = v100;
    sub_24135296C();
    sub_2413516FC();
    (*v98)(v38, v101);
    v39 = v104;
    swift_beginAccess();
    swift_retain_n();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v103 = *(v2 + 40);
    v40 = v103;
    *(v2 + 40) = 0x8000000000000000;
    v41 = sub_2412FDB74(v39);
    v43 = v40[2];
    v44 = (v42 & 1) == 0;
    v45 = __OFADD__(v43, v44);
    v46 = v43 + v44;
    if (v45)
    {
LABEL_77:
      __break(1u);
LABEL_78:
      __break(1u);
      goto LABEL_79;
    }

    v47 = v42;
    if (v40[3] < v46)
    {
      sub_2412A3E80(v46, isUniquelyReferenced_nonNull_native);
      v41 = sub_2412FDB74(v39);
      if ((v47 & 1) != (v48 & 1))
      {
        goto LABEL_92;
      }

LABEL_36:
      v49 = v103;
      if (v47)
      {
        goto LABEL_24;
      }

      goto LABEL_37;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_36;
    }

    isUniquelyReferenced_nonNull_native = v41;
    sub_2412A8184();
    v41 = isUniquelyReferenced_nonNull_native;
    v49 = v103;
    if (v47)
    {
LABEL_24:
      v36 = v49[7] + 16 * v41;
      *v36 = 1;
      *(v36 + 8) = v13;
      swift_unknownObjectRelease();
      goto LABEL_25;
    }

LABEL_37:
    v49[(v41 >> 6) + 8] |= 1 << v41;
    *(v49[6] + 8 * v41) = v39;
    v50 = v49[7] + 16 * v41;
    *v50 = 1;
    *(v50 + 8) = v13;
    v51 = v49[2];
    v45 = __OFADD__(v51, 1);
    v52 = v51 + 1;
    if (v45)
    {
      goto LABEL_78;
    }

    v49[2] = v52;
LABEL_25:
    v8 &= v8 - 1;
    *(v2 + 40) = v49;
    swift_endAccess();

    v2 = v97;
  }

  while (1)
  {
    v37 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      __break(1u);
LABEL_73:
      __break(1u);
LABEL_74:
      __break(1u);
LABEL_75:
      __break(1u);
LABEL_76:
      __break(1u);
      goto LABEL_77;
    }

    if (v37 >= v10)
    {
      break;
    }

    v8 = *(v11 + 8 * v37);
    ++v4;
    if (v8)
    {
      v4 = v37;
      goto LABEL_31;
    }
  }

  v96 = OBJC_IVAR___ASVPreviewViewControllerInternal_worldRaycastStrategy;
  v53 = *(v2 + OBJC_IVAR___ASVPreviewViewControllerInternal_worldRaycastStrategy);
  if (!v53)
  {
    goto LABEL_87;
  }

  *(v53 + 32) = 1;
  v13 = v2;
  v54 = sub_241352FDC();
  v55 = sub_2413540DC();
  v56 = os_log_type_enabled(v54, v55);
  isUniquelyReferenced_nonNull_native = v93;
  if (v56)
  {
    v57 = swift_slowAlloc();
    *v57 = 67109120;
    v58 = *(v2 + v96);
    if (!v58)
    {
      goto LABEL_91;
    }

    *(v57 + 1) = *(v58 + 32);
    v59 = v57;

    _os_log_impl(&dword_241215000, v54, v55, "Wants extended planes: %{BOOL}d", v59, 8u);
    MEMORY[0x245CE4870](v59, -1, -1);
  }

  else
  {

    v54 = v13;
  }

  v60 = *(v2 + isUniquelyReferenced_nonNull_native);
  if (v60)
  {
    v61 = *(v60 + OBJC_IVAR____TtC11AssetViewer15ModelController_rootEntityController);
    if (!v61)
    {
      goto LABEL_89;
    }

    v62 = v61;

    *&v62[OBJC_IVAR____TtC11AssetViewer16EntityController_delegate + 8] = &off_285300698;
    swift_unknownObjectWeakAssign();

    v63 = *(v2 + isUniquelyReferenced_nonNull_native);
    if (v63)
    {
      v64 = *(v63 + OBJC_IVAR____TtC11AssetViewer15ModelController_entityControllers);
      if (v64 >> 62)
      {
        v65 = sub_2413544EC();
      }

      else
      {
        v65 = *((v64 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v8 = OBJC_IVAR___ASVPreviewViewControllerInternal_customizationOptions;

      v91 = v8;
      swift_beginAccess();
      if (!v65)
      {
LABEL_71:

        return [v13 accessibilityDidSetUpEntityControllers];
      }

      v11 = 0;
      v95 = v64 & 0xC000000000000001;
      v94 = v64 & 0xFFFFFFFFFFFFFF8;
      v93 = v64;
      v92 = v65;
      while (1)
      {
        if (v95)
        {
          v67 = MEMORY[0x245CE29C0](v11, v64);
        }

        else
        {
          if (v11 >= *(v94 + 16))
          {
            goto LABEL_74;
          }

          v67 = *(v64 + 8 * v11 + 32);
        }

        v4 = v67;
        v10 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
          goto LABEL_73;
        }

        *&v67[OBJC_IVAR____TtC11AssetViewer16EntityController_delegate + 8] = &off_285300698;
        swift_unknownObjectWeakAssign();
        v68 = swift_allocObject();
        *(v68 + 16) = v13;
        v69 = (v4 + OBJC_IVAR____TtC11AssetViewer16EntityController_shouldDisableGesturesHandler);
        v70 = *(v4 + OBJC_IVAR____TtC11AssetViewer16EntityController_shouldDisableGesturesHandler);
        v71 = *(v4 + OBJC_IVAR____TtC11AssetViewer16EntityController_shouldDisableGesturesHandler + 8);
        *v69 = sub_2412B3408;
        v69[1] = v68;
        v72 = v13;
        sub_2412186FC(v70, v71);
        *(v4 + OBJC_IVAR____TtC11AssetViewer16EntityController_sceneUnderstandingState) = *(v2 + v96);

        v73 = *(v4 + OBJC_IVAR____TtC11AssetViewer16EntityController_worldGestureRecognizer);
        if (v73)
        {
          [v73 setAllowObjectScaling_];
        }

        v8 = v13;
        v74 = *(v2 + v99);

        v75 = v100;
        sub_24135296C();
        sub_2413516FC();
        (*v98)(v75, v101);
        v76 = v103;
        swift_beginAccess();
        v4 = v4;
        v2 = swift_isUniquelyReferenced_nonNull_native();
        v102 = *(v74 + 40);
        v77 = v102;
        *(v74 + 40) = 0x8000000000000000;
        isUniquelyReferenced_nonNull_native = sub_2412FDB74(v76);
        v79 = v77[2];
        v80 = (v78 & 1) == 0;
        v81 = v79 + v80;
        if (__OFADD__(v79, v80))
        {
          goto LABEL_75;
        }

        v82 = v78;
        if (v77[3] >= v81)
        {
          if ((v2 & 1) == 0)
          {
            sub_2412A8184();
          }
        }

        else
        {
          sub_2412A3E80(v81, v2);
          v83 = sub_2412FDB74(v76);
          if ((v82 & 1) != (v84 & 1))
          {
            goto LABEL_92;
          }

          isUniquelyReferenced_nonNull_native = v83;
        }

        v2 = v97;
        v85 = v102;
        if (v82)
        {
          v66 = v102[7] + 16 * isUniquelyReferenced_nonNull_native;
          *v66 = 1;
          *(v66 + 8) = v4;
          swift_unknownObjectRelease();
        }

        else
        {
          v102[(isUniquelyReferenced_nonNull_native >> 6) + 8] |= 1 << isUniquelyReferenced_nonNull_native;
          *(v85[6] + 8 * isUniquelyReferenced_nonNull_native) = v76;
          v86 = v85[7] + 16 * isUniquelyReferenced_nonNull_native;
          *v86 = 1;
          *(v86 + 8) = v4;
          v87 = v85[2];
          v45 = __OFADD__(v87, 1);
          v88 = v87 + 1;
          if (v45)
          {
            goto LABEL_76;
          }

          v85[2] = v88;
        }

        *(v74 + 40) = v85;
        swift_endAccess();

        ++v11;
        v64 = v93;
        v13 = v8;
        if (v10 == v92)
        {
          goto LABEL_71;
        }
      }
    }

    goto LABEL_90;
  }

LABEL_88:
  __break(1u);
LABEL_89:
  __break(1u);
LABEL_90:
  __break(1u);
LABEL_91:

  __break(1u);
LABEL_92:
  result = sub_2413549DC();
  __break(1u);
  return result;
}

uint64_t sub_24129C3D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[30] = a4;
  v5[31] = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E538850, &unk_241366BF0);
  v5[32] = swift_task_alloc();
  v5[33] = sub_241353ECC();
  v5[34] = sub_241353EBC();
  v7 = sub_241353E8C();
  v5[35] = v7;
  v5[36] = v6;

  return MEMORY[0x2822009F8](sub_24129C4A8, v7, v6);
}

void sub_24129C4A8()
{
  v1 = v0[32];
  v2 = v0[30];
  v3 = sub_241287420();
  v4 = sub_241353EEC();
  (*(*(v4 - 8) + 56))(v1, 1, 1, v4);
  v5 = v3;
  v6 = sub_241353EBC();
  v7 = swift_allocObject();
  v8 = MEMORY[0x277D85700];
  v7[2] = v6;
  v7[3] = v8;
  v7[4] = v5;
  *&v5[OBJC_IVAR____TtC11AssetViewer28ARQuickLookOverlayController_loadingTask] = sub_241241C74(0, 0, v1, &unk_241367360, v7);

  v9 = OBJC_IVAR___ASVPreviewViewControllerInternal_modelController;
  v0[37] = OBJC_IVAR___ASVPreviewViewControllerInternal_modelController;
  v10 = *(v2 + v9);
  v0[38] = v10;
  if (v10)
  {

    v11 = swift_task_alloc();
    v0[39] = v11;
    *v11 = v0;
    v11[1] = sub_24129C64C;
    v12 = v0[31];

    sub_24124ED04((v0 + 9), (v0 + 2), v12);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_24129C64C()
{
  v2 = *v1;
  *(*v1 + 320) = v0;

  if (v0)
  {
    v3 = *(v2 + 280);
    v4 = *(v2 + 288);
    v5 = sub_24129C8CC;
  }

  else
  {

    v6 = *(v2 + 88);
    *(v2 + 128) = *(v2 + 72);
    *(v2 + 144) = v6;
    *(v2 + 160) = *(v2 + 104);
    *(v2 + 176) = *(v2 + 120);
    sub_241244AE8(v2 + 128);
    v3 = *(v2 + 280);
    v4 = *(v2 + 288);
    v5 = sub_24129C7B8;
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

void sub_24129C7B8()
{
  v1 = v0[37];
  v2 = v0[30];
  v3 = *(v2 + OBJC_IVAR___ASVPreviewViewControllerInternal____lazy_storage___overlayController);
  v4 = sub_241288D44();
  sub_2412F8078(v4 & 1);

  if (*(v2 + v1))
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E538860, &qword_241367370);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_241366530;
    *(inited + 32) = REHierarchicalFadeComponentGetComponentType();
    *(inited + 40) = REProjectiveShadowReceiverComponentGetComponentType();
    sub_24124C864(inited, 1.0);

    swift_setDeallocating();

    v6 = v0[1];

    v6();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_24129C8CC()
{
  v1 = *(v0 + 320);

  *(v0 + 232) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E539D10, &qword_241369840);
  v3 = swift_dynamicCast();
  v4 = *(v0 + 320);
  if (v3)
  {

    v5 = *(v0 + 232);
  }

  else
  {

    sub_24129A000(v4);
    v5 = v4;
  }

  v6 = *(v0 + 8);

  return v6();
}

void sub_24129CA9C()
{
  v1 = v0;
  v2 = type metadata accessor for PreviewType(0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_241287420();
  v6 = v5[OBJC_IVAR____TtC11AssetViewer28ARQuickLookOverlayController_operationMode];

  if (v6 != 2)
  {
    if (qword_27E537CD0 != -1)
    {
      swift_once();
    }

    v7 = sub_241352FFC();
    __swift_project_value_buffer(v7, qword_27E53A538);
    v8 = sub_241352FDC();
    v9 = sub_2413540DC();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_241215000, v8, v9, "ARQL cleanupAfterDisappear", v10, 2u);
      MEMORY[0x245CE4870](v10, -1, -1);
    }

    [objc_opt_self() cancelPreviousPerformRequestsWithTarget:v1 selector:sel_activateCoachingView object:0];
    v11 = sub_241289004();
    [v11 setActive:0 animated:0];

    v12 = (v1 + OBJC_IVAR___ASVPreviewViewControllerInternal_coachingOverlayViewDidDeactivateCompletionBlock);
    v13 = *(v1 + OBJC_IVAR___ASVPreviewViewControllerInternal_coachingOverlayViewDidDeactivateCompletionBlock);
    v14 = *(v1 + OBJC_IVAR___ASVPreviewViewControllerInternal_coachingOverlayViewDidDeactivateCompletionBlock + 8);
    *v12 = 0;
    v12[1] = 0;
    sub_2412186FC(v13, v14);
    v15 = OBJC_IVAR___ASVPreviewViewControllerInternal_placeModelTimer;
    v16 = *(v1 + OBJC_IVAR___ASVPreviewViewControllerInternal_placeModelTimer);
    if (v16)
    {
      [v16 invalidate];
      v17 = *(v1 + v15);
    }

    else
    {
      v17 = 0;
    }

    *(v1 + v15) = 0;

    *(*(v1 + OBJC_IVAR___ASVPreviewViewControllerInternal____lazy_storage___overlayController) + OBJC_IVAR____TtC11AssetViewer28ARQuickLookOverlayController_delegate + 8) = 0;
    swift_unknownObjectWeakAssign();
    v18 = OBJC_IVAR___ASVPreviewViewControllerInternal_modelController;
    v19 = *(v1 + OBJC_IVAR___ASVPreviewViewControllerInternal_modelController);
    if (v19)
    {
      v20 = (v19 + OBJC_IVAR____TtC11AssetViewer15ModelController_arViewDelegateForwarded);
      *v20 = 0;
      v20[1] = 0;
      swift_unknownObjectRelease();
      v21 = OBJC_IVAR___ASVPreviewViewControllerInternal_previewType;
      swift_beginAccess();
      sub_2412B30F0(v1 + v21, v4, type metadata accessor for PreviewType);
      v22 = sub_24135164C();
      LODWORD(v21) = (*(*(v22 - 8) + 48))(v4, 1, v22);
      v23 = sub_2412AF7A8(v4, type metadata accessor for PreviewType);
      if (v21 != 1)
      {
LABEL_15:
        v28 = MEMORY[0x245CE3D50](v23);
        sub_24129CE64(v1);
        objc_autoreleasePoolPop(v28);
        sub_241336ED0();
        return;
      }

      v24 = *(v1 + v18);
      if (v24)
      {
        v25 = *(v24 + OBJC_IVAR____TtC11AssetViewer15ModelController_animationManager);
        swift_beginAccess();
        v25[5] = MEMORY[0x277D84F98];

        v26 = v25[3];
        if (v26)
        {
          v27 = v25[4];

          v26(0);
          sub_2412186FC(v26, v27);
        }

        goto LABEL_15;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }
}

void sub_24129CE64(uint64_t a1)
{
  v3 = type metadata accessor for PreviewType(0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v51 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_241289004();
  [v6 setSession_];

  v7 = *(a1 + OBJC_IVAR___ASVPreviewViewControllerInternal_fallbackTapGestureEntityController);
  *(a1 + OBJC_IVAR___ASVPreviewViewControllerInternal_fallbackTapGestureEntityController) = 0;

  v8 = *(a1 + OBJC_IVAR___ASVPreviewViewControllerInternal____lazy_storage___arAnchorTrackedStateUpdater);
  *(a1 + OBJC_IVAR___ASVPreviewViewControllerInternal____lazy_storage___arAnchorTrackedStateUpdater) = 0;
  v9 = sub_2412B3544(v8);
  v10 = OBJC_IVAR___ASVPreviewViewControllerInternal_modelController;
  v11 = *(a1 + OBJC_IVAR___ASVPreviewViewControllerInternal_modelController);
  if (!v11)
  {
    __break(1u);
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v12 = *(v11 + OBJC_IVAR____TtC11AssetViewer15ModelController_arView);
  if (v12)
  {
    v13 = [v12 session];
    [v13 _removeObserver_];
  }

  v14 = OBJC_IVAR___ASVPreviewViewControllerInternal_previewType;
  swift_beginAccess();
  sub_2412B30F0(a1 + v14, v5, type metadata accessor for PreviewType);
  v15 = sub_24135164C();
  LODWORD(v14) = (*(*(v15 - 8) + 48))(v5, 1, v15);
  sub_2412AF7A8(v5, type metadata accessor for PreviewType);
  v16 = *(a1 + v10);
  if (v14 == 1)
  {
    if (!v16)
    {
LABEL_36:
      __break(1u);
      goto LABEL_37;
    }

    v17 = *(v16 + OBJC_IVAR____TtC11AssetViewer15ModelController_arView);
    if (v17)
    {
      v18 = v17;
      sub_24135280C();

      v16 = *(a1 + v10);
      if (!v16)
      {
        goto LABEL_38;
      }
    }

    v19 = *(v16 + OBJC_IVAR____TtC11AssetViewer15ModelController_arView);
    if (!v19 || (v20 = v19, sub_24135292C(), sub_2413524EC(), , sub_24135243C(), swift_dynamicCastClassUnconditional(), sub_24135241C(), v20, swift_unknownObjectRelease(), sub_2412B3164(&qword_27E5388F0, type metadata accessor for PreviewViewController, &protocol conformance descriptor for PreviewViewController), sub_2413523AC(), , *(a1 + v10)))
    {

      sub_24124CA78(v21);
    }

    goto LABEL_29;
  }

  if (v16)
  {
    v22 = *(v16 + OBJC_IVAR____TtC11AssetViewer15ModelController_rootEntityController);
    v23 = &OBJC_IVAR____TtC11AssetViewer16EntityController_delegate;
    if (v22)
    {
      *(v22 + OBJC_IVAR____TtC11AssetViewer16EntityController_delegate + 8) = 0;
      swift_unknownObjectWeakAssign();
      v16 = *(a1 + v10);
      if (!v16)
      {
        goto LABEL_39;
      }
    }

    v54 = v1;
    v24 = *(v16 + OBJC_IVAR____TtC11AssetViewer15ModelController_entityControllers);
    v52 = v10;
    v53 = a1;
    if (v24 >> 62)
    {
      goto LABEL_33;
    }

    for (i = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_2413544EC())
    {

      if (!i)
      {
        break;
      }

      v26 = 0;
      v27 = v24 & 0xC000000000000001;
      v56 = v24 & 0xFFFFFFFFFFFFFF8;
      v55 = v24;
      while (1)
      {
        if (v27)
        {
          v31 = MEMORY[0x245CE29C0](v26, v24);
        }

        else
        {
          if (v26 >= *(v56 + 16))
          {
            goto LABEL_32;
          }

          v31 = *(v24 + 8 * v26 + 32);
        }

        v32 = v31;
        v33 = v26 + 1;
        if (__OFADD__(v26, 1))
        {
          break;
        }

        *&v31[*v23 + 8] = 0;
        swift_unknownObjectWeakAssign();
        if (qword_27E537CD0 != -1)
        {
          swift_once();
        }

        v34 = sub_241352FFC();
        __swift_project_value_buffer(v34, qword_27E53A538);
        v35 = sub_241352FDC();
        v36 = sub_2413540DC();
        if (os_log_type_enabled(v35, v36))
        {
          v37 = v27;
          v38 = i;
          v39 = v23;
          v40 = swift_slowAlloc();
          *v40 = 0;
          _os_log_impl(&dword_241215000, v35, v36, "Set shouldDisableGesturesHandler to nil", v40, 2u);
          v41 = v40;
          v23 = v39;
          i = v38;
          v27 = v37;
          v24 = v55;
          MEMORY[0x245CE4870](v41, -1, -1);
        }

        v28 = &v32[OBJC_IVAR____TtC11AssetViewer16EntityController_shouldDisableGesturesHandler];
        v29 = *&v32[OBJC_IVAR____TtC11AssetViewer16EntityController_shouldDisableGesturesHandler];
        v30 = *&v32[OBJC_IVAR____TtC11AssetViewer16EntityController_shouldDisableGesturesHandler + 8];
        *v28 = 0;
        *(v28 + 1) = 0;
        sub_2412186FC(v29, v30);

        ++v26;
        if (v33 == i)
        {
          goto LABEL_28;
        }
      }

      __break(1u);
LABEL_32:
      __break(1u);
LABEL_33:
      ;
    }

LABEL_28:

    a1 = v53;
    v10 = v52;
LABEL_29:
    v42 = OBJC_IVAR___ASVPreviewViewControllerInternal_touchToEntityControllerMapping;
    swift_beginAccess();
    v43 = MEMORY[0x277D84F98];
    *(a1 + v42) = MEMORY[0x277D84F98];

    v44 = OBJC_IVAR___ASVPreviewViewControllerInternal_entityControllerToTouchesMapping;
    swift_beginAccess();
    *(a1 + v44) = v43;

    v45 = OBJC_IVAR___ASVPreviewViewControllerInternal_entityToInteractionsMapping;
    swift_beginAccess();
    *(a1 + v45) = v43;

    v46 = sub_241287498();
    swift_beginAccess();
    *(v46 + 40) = v43;

    v47 = *(a1 + v10);
    if (v47)
    {
      v48 = (v47 + OBJC_IVAR____TtC11AssetViewer15ModelController_additionalSetupAfterSceneSetupCallback);
      v50 = *(v47 + OBJC_IVAR____TtC11AssetViewer15ModelController_additionalSetupAfterSceneSetupCallback);
      v49 = *(v47 + OBJC_IVAR____TtC11AssetViewer15ModelController_additionalSetupAfterSceneSetupCallback + 8);
      *v48 = 0;
      v48[1] = 0;

      sub_2412186FC(v50, v49);

      *(a1 + v10) = 0;

      return;
    }

    goto LABEL_35;
  }

LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
}

double sub_24129D468()
{
  v0 = sub_2413538CC();
  v37 = *(v0 - 8);
  v38 = v0;
  MEMORY[0x28223BE20](v0);
  v35 = &v33 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_2413538FC();
  v34 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v33 = &v33 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27E537BF0 != -1)
  {
    goto LABEL_23;
  }

  while (1)
  {
    swift_beginAccess();
    v3 = qword_27E5417B8;
    v4 = *(qword_27E5417B8 + 16);
    if (v4)
    {
      v5 = sub_2412A2808(*(qword_27E5417B8 + 16), 0);
      v6 = sub_2412AAFB4(&aBlock, v5 + 4, v4, v3);
      v7 = aBlock;
      swift_bridgeObjectRetain_n();
      sub_24121C274(v7);
      if (v6 == v4)
      {
        goto LABEL_6;
      }

      __break(1u);
    }

    v5 = MEMORY[0x277D84F90];
LABEL_6:
    aBlock = v5;
    sub_2412A94BC(&aBlock);

    v8 = aBlock;
    v9 = *(aBlock + 2);
    if (!v9)
    {
      break;
    }

    v50 = MEMORY[0x277D84F90];
    sub_2412DE1D4(0, v9, 0);
    v10 = 0;
    v11 = v50;
    v12 = (v8 + 40);
    while (v10 < *(v8 + 2))
    {
      v13 = *(v12 - 1);
      v14 = *v12;
      v48 = 0;
      v49 = 0xE000000000000000;
      MEMORY[0x245CE20D0](v13, v14);
      MEMORY[0x245CE20D0](8250, 0xE200000000000000);
      swift_beginAccess();
      v15 = qword_27E5417B8;
      if (*(qword_27E5417B8 + 16) && (v16 = sub_2412FDA14(v13, v14), (v17 & 1) != 0))
      {
        sub_24127C104(*(v15 + 56) + 40 * v16, &v45);
      }

      else
      {
        v47 = 0;
        v45 = 0u;
        v46 = 0u;
      }

      swift_endAccess();
      if (*(&v46 + 1))
      {
        sub_241258074(&v45, &aBlock);
      }

      else
      {
        v42 = MEMORY[0x277D837D0];
        v43 = MEMORY[0x277D83838];
        aBlock = 0;
        v40 = 0xE000000000000000;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E538B38, &qword_241367638);
      sub_2413546CC();
      __swift_destroy_boxed_opaque_existential_0(&aBlock);
      v19 = v48;
      v18 = v49;
      v50 = v11;
      v21 = *(v11 + 16);
      v20 = *(v11 + 24);
      if (v21 >= v20 >> 1)
      {
        sub_2412DE1D4((v20 > 1), v21 + 1, 1);
        v11 = v50;
      }

      ++v10;
      *(v11 + 16) = v21 + 1;
      v22 = v11 + 16 * v21;
      *(v22 + 32) = v19;
      *(v22 + 40) = v18;
      v12 += 2;
      if (v9 == v10)
      {

        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_23:
    swift_once();
  }

  v11 = MEMORY[0x277D84F90];
LABEL_21:
  aBlock = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E538B08, &unk_241369670);
  sub_24123D370(&qword_27E538B10, &qword_27E538B08, &unk_241369670, MEMORY[0x277D83958]);
  v23 = sub_241353BAC();
  v25 = v24;

  sub_241246158(0, &qword_27E538920, 0x277D85C78);
  v26 = sub_24135416C();
  v27 = swift_allocObject();
  *(v27 + 16) = v23;
  *(v27 + 24) = v25;
  v43 = sub_2412B3654;
  v44 = v27;
  aBlock = MEMORY[0x277D85DD0];
  v40 = 1107296256;
  v41 = sub_2412D5698;
  v42 = &block_descriptor_140;
  v28 = _Block_copy(&aBlock);
  v29 = v33;
  sub_2413538DC();
  *&v45 = MEMORY[0x277D84F90];
  sub_2412B3164(&qword_27E539870, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E538930, &unk_2413674A0);
  sub_24123D370(&qword_27E539880, &unk_27E538930, &unk_2413674A0, MEMORY[0x277D83970]);
  v30 = v35;
  v31 = v38;
  sub_24135444C();
  MEMORY[0x245CE2540](0, v29, v30, v28);
  _Block_release(v28);

  (*(v37 + 8))(v30, v31);
  (*(v34 + 8))(v29, v36);

  return result;
}

void sub_24129DAB0(uint64_t a1, uint64_t a2)
{
  if (qword_27E537BE8 != -1)
  {
    swift_once();
  }

  v2 = qword_27E5417B0;
  v3 = sub_241353BDC();
  [v2 setText_];
}

void sub_24129DB50(void *a1)
{
  sub_24129DCA4(a1);
  if (v2)
  {
    [objc_opt_self() cancelPreviousPerformRequestsWithTarget:v1 selector:sel_activateCoachingView object:0];
    v3 = sub_241289004();
    [v3 setActive:0 animated:1];

    v4 = (v1 + OBJC_IVAR___ASVPreviewViewControllerInternal_coachingOverlayViewDidDeactivateCompletionBlock);
    v5 = *(v1 + OBJC_IVAR___ASVPreviewViewControllerInternal_coachingOverlayViewDidDeactivateCompletionBlock);
    v6 = *(v1 + OBJC_IVAR___ASVPreviewViewControllerInternal_coachingOverlayViewDidDeactivateCompletionBlock + 8);
    *v4 = 0;
    v4[1] = 0;
    sub_2412186FC(v5, v6);
    v7 = OBJC_IVAR___ASVPreviewViewControllerInternal_placeModelTimer;
    v8 = *(v1 + OBJC_IVAR___ASVPreviewViewControllerInternal_placeModelTimer);
    if (v8)
    {
      [v8 invalidate];
      v9 = *(v1 + v7);
    }

    else
    {
      v9 = 0;
    }

    *(v1 + v7) = 0;

    v10 = sub_241287420();
    v10[OBJC_IVAR____TtC11AssetViewer28ARQuickLookOverlayController_allowOverlayToBeHidden] = 1;

    [*(v1 + OBJC_IVAR___ASVPreviewViewControllerInternal____lazy_storage___overlayController) startAutoHideControlsTimer];
  }
}

void sub_24129DC48(uint64_t a1, char *a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    sub_24130EE30(a2);
  }
}

void sub_24129DCA4(void *a1)
{
  v2 = OBJC_IVAR___ASVPreviewViewControllerInternal_modelController;
  v3 = *(v1 + OBJC_IVAR___ASVPreviewViewControllerInternal_modelController);
  if (!v3)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v4 = v1;
  if (*(v3 + OBJC_IVAR____TtC11AssetViewer15ModelController_isFaceAnchoredScene) == 1)
  {
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      v6 = *(v3 + OBJC_IVAR____TtC11AssetViewer15ModelController_arView);
      if (v6)
      {
        v7 = a1;
        v8 = v6;
        sub_24135281C();

        sub_24129225C();
        v9 = *(v1 + v2);
        if (v9)
        {
          v10 = *(v9 + OBJC_IVAR____TtC11AssetViewer15ModelController_arView);
          if (v10)
          {
            v11 = v10;

            return;
          }

          goto LABEL_35;
        }

LABEL_34:
        __break(1u);
LABEL_35:
        __break(1u);
LABEL_36:
        __break(1u);
        goto LABEL_37;
      }

LABEL_33:
      __break(1u);
      goto LABEL_34;
    }

    return;
  }

  v12 = *(v1 + OBJC_IVAR___ASVPreviewViewControllerInternal_currentDetectionImages);
  if (v12)
  {
    if ((v12 & 0xC000000000000001) == 0)
    {
      goto LABEL_17;
    }

    v13 = sub_2413544EC();

    if (v13 >= 1)
    {
      while (1)
      {
        v14 = sub_241287420();
        v15 = v14[OBJC_IVAR____TtC11AssetViewer28ARQuickLookOverlayController_displayMode];

        if (v15)
        {
          break;
        }

        objc_opt_self();
        if (!swift_dynamicCastObjCClass())
        {
          break;
        }

        v12 = v4;
        sub_24129DF90();
        v16 = *(v4 + OBJC_IVAR___ASVPreviewViewControllerInternal_analyticsTimesAnchoredToImage);
        v17 = __OFADD__(v16, 1);
        v18 = v16 + 1;
        if (v17)
        {
          __break(1u);
          goto LABEL_31;
        }

        *(v4 + OBJC_IVAR___ASVPreviewViewControllerInternal_analyticsTimesAnchoredToImage) = v18;
        v19 = *(v4 + v2);
        if (!v19)
        {
          goto LABEL_36;
        }

        if (*(v19 + OBJC_IVAR____TtC11AssetViewer15ModelController_arView))
        {
          goto LABEL_28;
        }

        __break(1u);
LABEL_17:
        if (*(v12 + 16) < 1)
        {
          goto LABEL_18;
        }
      }

      return;
    }
  }

LABEL_18:
  v20 = *(v4 + OBJC_IVAR___ASVPreviewViewControllerInternal_currentDetectionObjects);
  if (!v20)
  {
    return;
  }

  if ((v20 & 0xC000000000000001) != 0)
  {

    v21 = sub_2413544EC();

    if (v21 < 1)
    {
      return;
    }
  }

  else if (*(v20 + 16) < 1)
  {
    return;
  }

  v22 = sub_241287420();
  v23 = v22[OBJC_IVAR____TtC11AssetViewer28ARQuickLookOverlayController_displayMode];

  if ((v23 & 1) == 0)
  {
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      sub_24129DF90();
      v24 = *(v4 + OBJC_IVAR___ASVPreviewViewControllerInternal_analyticsTimesAnchoredToObject);
      v17 = __OFADD__(v24, 1);
      v25 = v24 + 1;
      if (!v17)
      {
        *(v4 + OBJC_IVAR___ASVPreviewViewControllerInternal_analyticsTimesAnchoredToObject) = v25;
        v26 = *(v4 + v2);
        if (v26)
        {
          if (*(v26 + OBJC_IVAR____TtC11AssetViewer15ModelController_arView))
          {
LABEL_28:

            return;
          }

          goto LABEL_38;
        }

LABEL_37:
        __break(1u);
LABEL_38:
        __break(1u);
        return;
      }

LABEL_31:
      __break(1u);
      goto LABEL_32;
    }
  }
}

void sub_24129DF90()
{
  v1 = v0;
  v109 = sub_241351DEC();
  v110 = *(v109 - 8);
  MEMORY[0x28223BE20](v109);
  v105 = &v103 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E538AA0, &qword_2413675E8);
  MEMORY[0x28223BE20](v107);
  v108 = &v103 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E538940, &qword_241366CB0);
  MEMORY[0x28223BE20](v4 - 8);
  v106 = &v103 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v103 - v7;
  MEMORY[0x28223BE20](v9);
  v111 = &v103 - v10;
  v114 = sub_241352B6C();
  v11 = *(v114 - 8);
  MEMORY[0x28223BE20](v114);
  v113 = &v103 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v117 = sub_2413517DC();
  v13 = *(v117 - 8);
  MEMORY[0x28223BE20](v117);
  v116 = &v103 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v125 = sub_241352DDC();
  v15 = *(v125 - 8);
  MEMORY[0x28223BE20](v125);
  v124 = &v103 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27E537CD0 != -1)
  {
LABEL_68:
    swift_once();
  }

  v17 = sub_241352FFC();
  v131 = __swift_project_value_buffer(v17, qword_27E53A538);
  v18 = sub_241352FDC();
  v19 = sub_2413540DC();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&dword_241215000, v18, v19, "entityDidPlaceOnARAnchor called", v20, 2u);
    MEMORY[0x245CE4870](v20, -1, -1);
  }

  v127 = OBJC_IVAR___ASVPreviewViewControllerInternal_modelController;
  v21 = *&v1[OBJC_IVAR___ASVPreviewViewControllerInternal_modelController];
  if (!v21)
  {
    goto LABEL_72;
  }

  if (!*(v21 + OBJC_IVAR____TtC11AssetViewer15ModelController_rootEntityController))
  {
    return;
  }

  v22 = *(v21 + OBJC_IVAR____TtC11AssetViewer15ModelController_entityControllers);
  v126 = v22;
  if (v22 >> 62)
  {
    v23 = sub_2413544EC();
  }

  else
  {
    v23 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v104 = v8;
  if (v23)
  {
    v130 = v126 & 0xC000000000000001;
    v118 = v126 & 0xFFFFFFFFFFFFFF8;
    v129 = OBJC_IVAR___ASVPreviewViewControllerInternal_didPlaceFirstEntityInARWorld;
    v123 = (v15 + 8);
    v15 = v126;
    v115 = (v13 + 8);
    v112 = (v11 + 8);

    v11 = 0;
    *&v24 = 134218496;
    v122 = v24;
    v128 = v23;
    while (1)
    {
      if (v130)
      {
        v25 = MEMORY[0x245CE29C0](v11, v15);
      }

      else
      {
        if (v11 >= *(v118 + 16))
        {
          goto LABEL_67;
        }

        v25 = *(v15 + 8 * v11 + 32);
      }

      v13 = v25;
      if (__OFADD__(v11, 1))
      {
        __break(1u);
LABEL_67:
        __break(1u);
        goto LABEL_68;
      }

      v132 = v11 + 1;
      if ((v25[OBJC_IVAR____TtC11AssetViewer16EntityController_animationID + 8] & 1) == 0)
      {
        v26 = *&v25[OBJC_IVAR____TtC11AssetViewer16EntityController_animationID];
        v27 = *&v25[OBJC_IVAR____TtC11AssetViewer16EntityController_animationManager];
        swift_beginAccess();
        v29 = v27[5];
        if (*(v29 + 16))
        {
          v30 = sub_2412FD908(v26, v28);
          if (v31)
          {
            v32 = *(*(v29 + 56) + 8 * v30);
            swift_beginAccess();
            v34 = sub_2412FD908(v26, v33);
            v36 = v35;

            if (v36)
            {
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v29 = v27[5];
              v140 = v29;
              v27[5] = 0x8000000000000000;
              if (!isUniquelyReferenced_nonNull_native)
              {
                sub_2412A7970();
                v29 = v140;
              }

              sub_241339218(v34, v29, v38);
              v27[5] = v29;
            }

            v39 = swift_endAccess();
            v40 = v27[3];
            if (v40)
            {
              v41 = v27[4];
              v42 = *(v29 + 16);

              v40(v42);
              v39 = sub_2412186FC(v40, v41);
            }

            v43 = *(v32 + 48);
            if (v43)
            {
              v43(v39, *(v32 + 24));
            }
          }
        }
      }

      if (v1[v129])
      {
        sub_241352E1C();
        v135 = v44;
        v134 = v45;
        v133 = v46;
        sub_241352C5C();
        v8 = MEMORY[0x277CDB1B8];
        sub_24135195C();
        v47 = v124;
        sub_241352E2C();
        type metadata accessor for RESRT(0);
        sub_241352DCC();
        (*v123)(v47, v125);
        v48 = v137;
        v49 = v138;
        v50 = &v13[OBJC_IVAR____TtC11AssetViewer16EntityController_transformToWorldInARMode];
        *v50 = v136;
        *(v50 + 1) = v48;
        *(v50 + 2) = v49;
        if (v13[OBJC_IVAR____TtC11AssetViewer16EntityController_shouldUseTightBoundsSPI] == 1)
        {
          sub_241352E1C();
          sub_24135195C();
          v134 = v51;
          v135 = v52;
          *&v54 = simd_matrix4x4(v53);
          v136 = v54;
          v137 = v55;
          v138 = v56;
          v139 = v57;
          sub_24135410C();
          sub_241354A8C();
          sub_241354A9C();
          v135 = v139;
          v134 = v138;
          v133 = v137;
          v119 = v136;
          v58 = v116;
          sub_24135296C();
          sub_2413516FC();
          (*v115)(v58, v117);
          REEntityComputeTightMeshBounds();
          HIDWORD(v59) = HIDWORD(v121);
          HIDWORD(v60) = HIDWORD(v120);
          v121 = v59;
          v120 = v60;
        }

        else
        {
          sub_24135191C();
        }

        sub_24135174C();
        v61 = &v13[OBJC_IVAR____TtC11AssetViewer16EntityController_lastBoundingBox];
        *v61 = v62;
        *(v61 + 1) = v63;
      }

      else
      {
        v8 = MEMORY[0x277CDB1B8];
      }

      v13 = v13;
      v64 = sub_241352FDC();
      v65 = sub_2413540DC();

      if (os_log_type_enabled(v64, v65))
      {
        v66 = swift_slowAlloc();
        *v66 = v122;
        sub_241352C5C();
        sub_2413519BC();
        *(v66 + 4) = v67;
        *(v66 + 12) = 2048;
        sub_2413519BC();
        *(v66 + 14) = v68;
        *(v66 + 22) = 2048;
        v15 = v126;
        v8 = MEMORY[0x277CDB1B8];
        sub_2413519BC();
        *(v66 + 24) = v69;
        _os_log_impl(&dword_241215000, v64, v65, "Previous controller.entity.transform: %f,%f, %f", v66, 0x20u);
        MEMORY[0x245CE4870](v66, -1, -1);
      }

      sub_241352E3C();
      v135 = v70;
      v134 = v71;
      v133 = v72;
      sub_241352C5C();
      sub_2413519CC();

      v73 = sub_24135188C();
      if (v73)
      {
        v74 = *&v1[v127];
        if (!v74)
        {
          goto LABEL_71;
        }

        v75 = *(v74 + OBJC_IVAR____TtC11AssetViewer15ModelController_arView);
        if (!v75)
        {
          __break(1u);
LABEL_71:
          __break(1u);
LABEL_72:
          __break(1u);
LABEL_73:
          __break(1u);
LABEL_74:
          __break(1u);
          return;
        }

        v76 = *(v75 + qword_27E53A1A0);
        if (v73 == v76)
        {
          goto LABEL_43;
        }

        if (!v76)
        {
          sub_2413518BC();
LABEL_43:

          goto LABEL_44;
        }

        v77 = v113;
        sub_2413518AC();
        sub_241352B5C();

        v78 = v77;
        v15 = v126;
        (*v112)(v78, v114);
      }

LABEL_44:
      v79 = *&v13[OBJC_IVAR____TtC11AssetViewer16EntityController_worldGestureRecognizer];
      if (v79)
      {
        [v79 setEnabledGestureTypes_];
      }

      ++v11;
      if (v132 == v128)
      {

        break;
      }
    }
  }

  if ((v1[OBJC_IVAR___ASVPreviewViewControllerInternal_didPlaceFirstEntityInARWorld] & 1) == 0)
  {
    v1[OBJC_IVAR___ASVPreviewViewControllerInternal_didPlaceFirstEntityInARWorld] = 1;
    sub_24128A758();
    sub_24129225C();
  }

  v80 = v109;
  v81 = v111;
  if (v1[OBJC_IVAR___ASVPreviewViewControllerInternal_interfaceState + 8] == 3)
  {
    v82 = sub_241352FDC();
    v83 = sub_2413540DC();
    if (os_log_type_enabled(v82, v83))
    {
      v84 = swift_slowAlloc();
      *v84 = 0;
      _os_log_impl(&dword_241215000, v82, v83, "=== Interface state mode already anchored ===", v84, 2u);
      MEMORY[0x245CE4870](v84, -1, -1);
    }
  }

  else
  {
    v1[OBJC_IVAR___ASVPreviewViewControllerInternal_interfaceState + 8] = 3;
    [v1 updateInterfaceState];
  }

  v85 = OBJC_IVAR___ASVPreviewViewControllerInternal_lastPlacedAnchoringComponentTarget;
  swift_beginAccess();
  sub_241246210(&v1[v85], v81, &qword_27E538940, &qword_241366CB0);
  v86 = *&v1[v127];
  if (!v86)
  {
    goto LABEL_73;
  }

  v87 = OBJC_IVAR____TtC11AssetViewer15ModelController_anchoringComponentTarget;
  swift_beginAccess();
  v88 = *(v107 + 48);
  v89 = v108;
  sub_241246210(v81, v108, &qword_27E538940, &qword_241366CB0);
  v90 = v86 + v87;
  v91 = v89;
  sub_241246210(v90, v89 + v88, &qword_27E538940, &qword_241366CB0);
  v92 = *(v110 + 48);
  if (v92(v89, 1, v80) == 1)
  {
    sub_241246278(v81, &qword_27E538940, &qword_241366CB0);
    if (v92(v89 + v88, 1, v80) == 1)
    {
      sub_241246278(v89, &qword_27E538940, &qword_241366CB0);
      return;
    }
  }

  else
  {
    v93 = v104;
    sub_241246210(v89, v104, &qword_27E538940, &qword_241366CB0);
    if (v92(v89 + v88, 1, v80) != 1)
    {
      v98 = v110;
      v99 = v91 + v88;
      v100 = v105;
      (*(v110 + 32))(v105, v99, v80);
      sub_2412B3164(&qword_27E538AA8, MEMORY[0x277CDADA8], MEMORY[0x277CDADB0]);
      v101 = sub_241353BCC();
      v102 = *(v98 + 8);
      v102(v100, v80);
      sub_241246278(v111, &qword_27E538940, &qword_241366CB0);
      v102(v93, v80);
      sub_241246278(v91, &qword_27E538940, &qword_241366CB0);
      if (v101)
      {
        return;
      }

      goto LABEL_61;
    }

    sub_241246278(v111, &qword_27E538940, &qword_241366CB0);
    (*(v110 + 8))(v93, v80);
  }

  sub_241246278(v89, &qword_27E538AA0, &qword_2413675E8);
LABEL_61:
  v94 = *&v1[v127];
  if (!v94)
  {
    goto LABEL_74;
  }

  v95 = OBJC_IVAR____TtC11AssetViewer15ModelController_anchoringComponentTarget;
  swift_beginAccess();
  v96 = v94 + v95;
  v97 = v106;
  sub_241246210(v96, v106, &qword_27E538940, &qword_241366CB0);
  swift_beginAccess();
  sub_241255BC8(v97, &v1[v85], &qword_27E538940, &qword_241366CB0);
  swift_endAccess();
}

void sub_24129EFAC()
{
  *(v0 + OBJC_IVAR___ASVPreviewViewControllerInternal_isDismissing) = 1;
  sub_2412EFFE0();
  v1 = sub_241287420();
  v1[OBJC_IVAR____TtC11AssetViewer28ARQuickLookOverlayController_operationMode] = 1;

  v2 = *(v0 + OBJC_IVAR___ASVPreviewViewControllerInternal____lazy_storage___overlayController);
  v3 = OBJC_IVAR____TtC11AssetViewer28ARQuickLookOverlayController_autoHideControlsTimer;
  v4 = *&v2[OBJC_IVAR____TtC11AssetViewer28ARQuickLookOverlayController_autoHideControlsTimer];
  v5 = v2;
  [v4 invalidate];
  v6 = *&v2[v3];
  *&v2[v3] = 0;

  sub_2412A0224();
}

void sub_24129F054(char a1, char a2)
{
  v3 = v2;
  LOBYTE(v4) = a2;
  LOBYTE(v5) = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E538868, &qword_241367378);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v42 - v7;
  v9 = sub_2413515EC();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v15 = MEMORY[0x28223BE20](v13).n128_u64[0];
  v17 = &v42 - v16;
  if ((v4 & 1) == 0)
  {
LABEL_21:
    if ((v5 & 1) == 0)
    {
      if (v3[OBJC_IVAR___ASVPreviewViewControllerInternal_didPlaceFirstEntityInARWorld] == 1)
      {

        sub_241290C40();
      }

      return;
    }

    sub_241291524();
    v29 = &v3[OBJC_IVAR___ASVPreviewViewControllerInternal_analyticsTimesWentIntoObjectMode];
    v30 = *&v3[OBJC_IVAR___ASVPreviewViewControllerInternal_analyticsTimesWentIntoObjectMode];
    v31 = __OFADD__(v30, 1);
    v18 = v30 + 1;
    if (!v31)
    {
      goto LABEL_40;
    }

    __break(1u);
LABEL_25:
    if (!v18)
    {
LABEL_51:
      __break(1u);
      goto LABEL_52;
    }

    v32 = *(v18 + OBJC_IVAR____TtC11AssetViewer15ModelController_rootEntityController);
    if (!v32)
    {
LABEL_53:
      __break(1u);
      goto LABEL_54;
    }

    v3 = v14;
    [*(v32 + OBJC_IVAR____TtC11AssetViewer16EntityController_worldGestureRecognizer) cancelDeceleration];
    v24 = v44;
    sub_2412923E8();
    v29 = (v24 + OBJC_IVAR___ASVPreviewViewControllerInternal_analyticsTimesWentIntoARMode);
    if (!*(v24 + OBJC_IVAR___ASVPreviewViewControllerInternal_analyticsTimesWentIntoARMode))
    {
      v33 = OBJC_IVAR___ASVPreviewViewControllerInternal_analyticsLastDisplayModeToggledDate;
      v24 = v44;
      swift_beginAccess();
      sub_241246210(v24 + v33, v8, &qword_27E538868, &qword_241367378);
      if ((*(v10 + 48))(v8, 1, v3) == 1)
      {
        sub_241246278(v8, &qword_27E538868, &qword_241367378);
      }

      else
      {
        (*(v10 + 32))(v17, v8, v3);
        sub_2413515DC();
        v34 = v24;
        v24 = v12;
        sub_24135157C();
        v36 = v35;
        v37 = *(v10 + 8);
        v37(v12, v3);
        v37(v17, v3);
        *(v34 + OBJC_IVAR___ASVPreviewViewControllerInternal_analyticsTimeInObjectModeBeforeFirstTapARMode) = v36;
      }
    }

    v18 = *v29 + 1;
    if (__OFADD__(*v29, 1))
    {
LABEL_47:
      __break(1u);
LABEL_48:
      v4 = sub_2413544EC();
      goto LABEL_10;
    }

    v3 = v44;
LABEL_40:
    *v29 = v18;
    v38 = sub_241287420();
    v39 = *&v38[OBJC_IVAR____TtC11AssetViewer28ARQuickLookOverlayController_backgroundDimmingView];

    [v39 setHidden_];
    if (v5)
    {
      v40 = *&v3[OBJC_IVAR___ASVPreviewViewControllerInternal____lazy_storage___overlayController];
      *&v40[OBJC_IVAR____TtC11AssetViewer28ARQuickLookOverlayController_currentTriggerAffordance] = 0;
      [v40 updateStatusPill];
      v41 = *&v3[OBJC_IVAR___ASVPreviewViewControllerInternal_modelController];
      if (!v41)
      {
LABEL_57:
        __break(1u);
        return;
      }

      if ((*(v41 + OBJC_IVAR____TtC11AssetViewer15ModelController_isFaceAnchoredScene) & 1) == 0)
      {
        sub_24128ED54();
      }
    }

    sub_24129F5F4(v4 & 1);
    return;
  }

  v43 = OBJC_IVAR___ASVPreviewViewControllerInternal_modelController;
  v44 = v2;
  v18 = *&v2[OBJC_IVAR___ASVPreviewViewControllerInternal_modelController];
  if ((v5 & 1) == 0)
  {
    goto LABEL_25;
  }

  if (!v18)
  {
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  v19 = *(v18 + OBJC_IVAR____TtC11AssetViewer15ModelController_rootEntityController);
  if (!v19)
  {
LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

  [*(v19 + OBJC_IVAR____TtC11AssetViewer16EntityController_worldGestureRecognizer) cancelDeceleration];
  v20 = *&v2[v43];
  if (!v20)
  {
LABEL_54:
    __break(1u);
    goto LABEL_55;
  }

  v21 = *(v20 + OBJC_IVAR____TtC11AssetViewer15ModelController_rootEntityController);
  if (!v21)
  {
LABEL_55:
    __break(1u);
    goto LABEL_56;
  }

  v22 = v21;
  sub_241247C18(0, 0, 0, 0.35);

  v23 = *&v3[v43];
  if (!v23)
  {
LABEL_56:
    __break(1u);
    goto LABEL_57;
  }

  v24 = *(v23 + OBJC_IVAR____TtC11AssetViewer15ModelController_entityControllers);
  if (v24 >> 62)
  {
    goto LABEL_48;
  }

  v4 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_10:

  if (v4)
  {
    v5 = 0;
    v10 = v24 & 0xC000000000000001;
    while (1)
    {
      if (v10)
      {
        v8 = MEMORY[0x245CE29C0](v5, v24);
        v12 = v44;
        v25 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
LABEL_20:
          __break(1u);
          goto LABEL_21;
        }
      }

      else
      {
        v12 = v44;
        if (v5 >= *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_47;
        }

        v8 = *(v24 + 8 * v5 + 32);
        v25 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          goto LABEL_20;
        }
      }

      v26 = *&v12[v43];
      if (!v26)
      {
        break;
      }

      v17 = *&v8[OBJC_IVAR____TtC11AssetViewer16EntityController_physicsStateManager];
      v27 = *&v8[OBJC_IVAR____TtC11AssetViewer16EntityController_physicsStateManager + 8];
      v3 = *(v26 + OBJC_IVAR____TtC11AssetViewer15ModelController_animationManager);

      sub_24133B4B4(v28, v17, v27);

      ++v5;
      if (v25 == v4)
      {
        goto LABEL_34;
      }
    }

    __break(1u);
    goto LABEL_50;
  }

LABEL_34:
}

uint64_t sub_24129F5F4(int a1)
{
  v2 = v1;
  v23 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E538868, &qword_241367378);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v22[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v6);
  v8 = &v22[-v7];
  v9 = sub_2413515EC();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v22[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v13);
  v15 = &v22[-v14];
  v16 = OBJC_IVAR___ASVPreviewViewControllerInternal_analyticsLastDisplayModeToggledDate;
  swift_beginAccess();
  sub_241246210(v2 + v16, v8, &qword_27E538868, &qword_241367378);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_241246278(v8, &qword_27E538868, &qword_241367378);
  }

  (*(v10 + 32))(v15, v8, v9);
  sub_2413515DC();
  sub_24135157C();
  v19 = v18;
  v20 = *(v10 + 8);
  v20(v12, v9);
  v21 = &OBJC_IVAR___ASVPreviewViewControllerInternal_analyticsObjectModeDuration;
  if ((v23 & 1) == 0)
  {
    v21 = &OBJC_IVAR___ASVPreviewViewControllerInternal_analyticsARModeDuration;
  }

  *(v2 + *v21) = v19 + *(v2 + *v21);
  sub_2413515DC();
  v20(v15, v9);
  (*(v10 + 56))(v5, 0, 1, v9);
  swift_beginAccess();
  sub_241255BC8(v5, v2 + v16, &qword_27E538868, &qword_241367378);
  return swift_endAccess();
}

void sub_24129F8C0()
{
  v1 = v0;
  if (qword_27E537CD0 != -1)
  {
    swift_once();
  }

  v2 = sub_241352FFC();
  __swift_project_value_buffer(v2, qword_27E53A538);
  v3 = sub_241352FDC();
  v4 = sub_2413540DC();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_241215000, v3, v4, "Share button pressed", v5, 2u);
    MEMORY[0x245CE4870](v5, -1, -1);
  }

  v6 = sub_241287420();
  v7 = v6[OBJC_IVAR____TtC11AssetViewer28ARQuickLookOverlayController_operationMode];

  if (v7 != 1 && (sub_2412A0404() & 1) != 0)
  {
    [objc_opt_self() sendAnalyticsWithEvent_];
    v8 = *(v1 + OBJC_IVAR___ASVPreviewViewControllerInternal____lazy_storage___overlayController);
    v8[OBJC_IVAR____TtC11AssetViewer28ARQuickLookOverlayController_operationMode] = 2;
    v9 = OBJC_IVAR____TtC11AssetViewer28ARQuickLookOverlayController_autoHideControlsTimer;
    v10 = *&v8[OBJC_IVAR____TtC11AssetViewer28ARQuickLookOverlayController_autoHideControlsTimer];
    v11 = v8;
    [v10 invalidate];
    v12 = *&v8[v9];
    *&v8[v9] = 0;
  }
}

void sub_24129FA78(char *a1)
{
  v2 = v1;
  v28 = sub_2413517DC();
  v4 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v27 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR___ASVPreviewViewControllerInternal_modelController;
  v7 = *&v1[OBJC_IVAR___ASVPreviewViewControllerInternal_modelController];
  if (!v7)
  {
    __break(1u);
    goto LABEL_35;
  }

  v8 = *(v7 + OBJC_IVAR____TtC11AssetViewer15ModelController_entityControllers);
  if (v8 >> 62)
  {
    goto LABEL_31;
  }

  v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_4:
  v10 = MEMORY[0x277D84F90];
  if (v9)
  {
    v31 = MEMORY[0x277D84F90];

    v11 = &v31;
    sub_24135466C();
    if (v9 < 0)
    {
      __break(1u);
      goto LABEL_33;
    }

    v29 = a1;
    v30 = v2;
    v12 = 0;
    do
    {
      if ((v8 & 0xC000000000000001) != 0)
      {
        v13 = MEMORY[0x245CE29C0](v12, v8);
      }

      else
      {
        v13 = *(v8 + 8 * v12 + 32);
      }

      v14 = v13;
      ++v12;

      sub_24135464C();
      sub_24135467C();
      sub_24135468C();
      sub_24135465C();
    }

    while (v9 != v12);

    v2 = v30;
    v10 = v31;
    a1 = v29;
  }

  v15 = sub_24131268C(v10);

  v29 = v15;
  if (!v15)
  {
    return;
  }

  v16 = *&v2[v6];
  if (!v16)
  {
LABEL_35:
    __break(1u);
    return;
  }

  v11 = *(v16 + OBJC_IVAR____TtC11AssetViewer15ModelController_entityControllers);
  if (v11 >> 62)
  {
LABEL_33:
    v17 = sub_2413544EC();
    goto LABEL_16;
  }

  v17 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_16:

  if (v17)
  {
    v18 = 0;
    v25 = v11 & 0xFFFFFFFFFFFFFF8;
    v26 = v11 & 0xC000000000000001;
    v23 = v11;
    v24 = v4 + 8;
    v19 = (v4 + 8);
    do
    {
      if (v26)
      {
        v20 = MEMORY[0x245CE29C0](v18, v11);
        v8 = v18 + 1;
        if (__OFADD__(v18, 1))
        {
LABEL_26:
          __break(1u);
          break;
        }
      }

      else
      {
        if (v18 >= *(v25 + 16))
        {
          __break(1u);
LABEL_31:
          v9 = sub_2413544EC();
          goto LABEL_4;
        }

        v20 = *(v11 + 8 * v18 + 32);
        v8 = v18 + 1;
        if (__OFADD__(v18, 1))
        {
          goto LABEL_26;
        }
      }

      a1 = v27;
      v2 = v20;
      sub_24135296C();
      v4 = MEMORY[0x277D841D8];
      sub_2413516FC();
      v21 = *v19;
      v6 = v28;
      (*v19)(a1, v28);
      v30 = v31;
      sub_24135296C();
      sub_2413516FC();
      v21(a1, v6);
      if (v30 == v31)
      {

        return;
      }

      ++v18;
      v11 = v23;
    }

    while (v8 != v17);
  }
}

void sub_24129FE0C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E538940, &qword_241366CB0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v18 - v2;
  v4 = sub_241351DEC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v18 - v9;
  v11 = sub_241287420();
  v12 = v11[OBJC_IVAR____TtC11AssetViewer28ARQuickLookOverlayController_displayMode];

  if ((v12 & 1) != 0 || *(v0 + OBJC_IVAR___ASVPreviewViewControllerInternal_didPlaceFirstEntityInARWorld) != 1)
  {
    if (*(*(v0 + OBJC_IVAR___ASVPreviewViewControllerInternal____lazy_storage___overlayController) + OBJC_IVAR____TtC11AssetViewer28ARQuickLookOverlayController_displayMode) == 1)
    {

      sub_24129225C();
    }
  }

  else
  {
    sub_24129225C();
    v13 = *(v0 + OBJC_IVAR___ASVPreviewViewControllerInternal_modelController);
    if (!v13)
    {
      __break(1u);
      return;
    }

    if ((*(v13 + OBJC_IVAR____TtC11AssetViewer15ModelController_isFaceAnchoredScene) & 1) == 0)
    {
      v14 = OBJC_IVAR___ASVPreviewViewControllerInternal_lastPlacedAnchoringComponentTarget;
      swift_beginAccess();
      sub_241246210(v0 + v14, v3, &qword_27E538940, &qword_241366CB0);
      if ((*(v5 + 48))(v3, 1, v4) == 1)
      {
        sub_241246278(v3, &qword_27E538940, &qword_241366CB0);
LABEL_13:
        sub_24130F64C();
        return;
      }

      v15 = *(v5 + 32);
      v15(v10, v3, v4);
      v15(v7, v10, v4);
      v16 = (*(v5 + 88))(v7, v4);
      v17 = *MEMORY[0x277CDAD60];
      (*(v5 + 8))(v7, v4);
      if (v16 != v17 && v16 != *MEMORY[0x277CDAD88])
      {
        goto LABEL_13;
      }
    }
  }
}

void sub_2412A00E8(uint64_t a1)
{
  v3 = sub_241287420();
  v4 = v3[OBJC_IVAR____TtC11AssetViewer28ARQuickLookOverlayController_displayMode];

  if (v4 == 1)
  {
    v5 = OBJC_IVAR___ASVPreviewViewControllerInternal_placeModelTimer;
    v6 = *(v1 + OBJC_IVAR___ASVPreviewViewControllerInternal_placeModelTimer);
    if (v6)
    {
      [v6 invalidate];
      v6 = *(v1 + v5);
    }

    *(v1 + v5) = 0;
  }

  else
  {
    v7 = sub_241351DEC();
    if ((*(*(v7 - 8) + 48))(a1, 1, v7) != 1)
    {
      v8 = OBJC_IVAR___ASVPreviewViewControllerInternal_placeModelTimer;
      v9 = *(v1 + OBJC_IVAR___ASVPreviewViewControllerInternal_placeModelTimer);
      if (v9)
      {
        [v9 invalidate];
        v10 = *(v1 + v8);
      }

      else
      {
        v10 = 0;
      }

      *(v1 + v8) = 0;

      sub_2412C7010(0.1);
    }
  }
}

void sub_2412A0224()
{
  v1 = v0;
  sub_241352C5C();
  sub_241352BFC();
  sub_241337AB8(0, 1);
  v2 = sub_241287420();
  v3 = v2[OBJC_IVAR____TtC11AssetViewer28ARQuickLookOverlayController_displayMode];

  if (v3 != 1)
  {
LABEL_5:

    PreviewViewController.dismissPreviewController()();
    return;
  }

  v4 = *(v1 + OBJC_IVAR___ASVPreviewViewControllerInternal_modelController);
  if (!v4)
  {
    __break(1u);
    goto LABEL_12;
  }

  if (!*(v4 + OBJC_IVAR____TtC11AssetViewer15ModelController_cameraController))
  {
LABEL_12:
    __break(1u);
    return;
  }

  if (sub_241259340())
  {
    goto LABEL_5;
  }

  v5 = *(v4 + OBJC_IVAR____TtC11AssetViewer15ModelController_rootEntityController);
  if (v5)
  {
    v6 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v7 = v5;

    sub_241247C18(0, sub_2412B315C, v6, 0.35);
  }
}

void sub_2412A03B0(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    PreviewViewController.dismissPreviewController()();
  }
}

uint64_t sub_2412A0404()
{
  v1 = sub_24135164C();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v60 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E538750, &qword_2413660E0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v60 - v6;
  v8 = sub_24135152C();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v60 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for PreviewType(0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v60 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = OBJC_IVAR___ASVPreviewViewControllerInternal_previewType;
  swift_beginAccess();
  sub_2412B30F0(&v0[v15], v14, type metadata accessor for PreviewType);
  if ((*(v2 + 48))(v14, 1, v1) == 1)
  {
    v16 = OBJC_IVAR___ASVPreviewViewControllerInternal_fileURL;
    swift_beginAccess();
    sub_241246210(&v0[v16], v7, &qword_27E538750, &qword_2413660E0);
    if ((*(v9 + 48))(v7, 1, v8) == 1)
    {
      sub_241246278(v7, &qword_27E538750, &qword_2413660E0);
      if (qword_27E537CD0 != -1)
      {
        swift_once();
      }

      v17 = sub_241352FFC();
      __swift_project_value_buffer(v17, qword_27E53A538);
      v18 = sub_241352FDC();
      v19 = sub_2413540BC();
      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        *v20 = 0;
        _os_log_impl(&dword_241215000, v18, v19, "fileURL should not be nil", v20, 2u);
        MEMORY[0x245CE4870](v20, -1, -1);
      }

      return 0;
    }

    (*(v9 + 32))(v11, v7, v8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E539D20, &qword_241367540);
    v46 = swift_allocObject();
    *(v46 + 16) = xmmword_241365EA0;
    *(v46 + 56) = v8;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v46 + 32));
    (*(v9 + 16))(boxed_opaque_existential_1, v11, v8);
    v48 = objc_allocWithZone(MEMORY[0x277D546D8]);
    v49 = sub_241353E1C();

    v50 = [v48 initWithActivityItems:v49 applicationActivities:0];

    v51 = [v50 popoverPresentationController];
    if (v51)
    {
      v52 = v51;
      v53 = sub_241287420();
      v54 = [v53 navigationItem];

      v55 = [v54 rightBarButtonItem];
      [v52 setBarButtonItem_];
    }

    [v0 presentViewController:v50 animated:1 completion:0];

    (*(v9 + 8))(v11, v8);
    return 1;
  }

  else
  {
    (*(v2 + 32))(v4, v14, v1);
    v21 = *&v0[OBJC_IVAR___ASVPreviewViewControllerInternal_shareSheetReplyBlock];
    if (!v21)
    {
      if (qword_27E537CD0 != -1)
      {
        swift_once();
      }

      v56 = sub_241352FFC();
      __swift_project_value_buffer(v56, qword_27E53A538);
      v57 = sub_241352FDC();
      v58 = sub_2413540BC();
      if (os_log_type_enabled(v57, v58))
      {
        v59 = swift_slowAlloc();
        *v59 = 0;
        _os_log_impl(&dword_241215000, v57, v58, "shareSheetReplyBlock is nil, cannot show share sheet", v59, 2u);
        MEMORY[0x245CE4870](v59, -1, -1);
      }

      (*(v2 + 8))(v4, v1);
      return 0;
    }

    v22 = *&v0[OBJC_IVAR___ASVPreviewViewControllerInternal_shareSheetReplyBlock + 8];

    result = [v0 view];
    if (result)
    {
      v24 = result;
      [result frame];
      v26 = v25;
      v28 = v27;
      v30 = v29;
      v32 = v31;

      v61.origin.x = v26;
      v61.origin.y = v28;
      v61.size.width = v30;
      v61.size.height = v32;
      v33 = CGRectGetWidth(v61) + -60.0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E539B80, &unk_241367530);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_241365EA0;
      *(inited + 32) = 0x656D617266;
      *(inited + 40) = 0xE500000000000000;
      v62.size.width = 44.0;
      v62.origin.y = 20.0;
      v62.origin.x = v33;
      v62.size.height = 44.0;
      v35 = NSStringFromCGRect(v62);
      v36 = sub_241353C0C();
      v38 = v37;

      *(inited + 72) = MEMORY[0x277D837D0];
      *(inited + 48) = v36;
      *(inited + 56) = v38;
      v39 = sub_241245974(inited);
      swift_setDeallocating();
      sub_241246278(inited + 32, &unk_27E538A20, &qword_241368980);
      sub_2412EDE54(v39);
      v41 = v40;

      v21(v41, v4);

      if (qword_27E537CD0 != -1)
      {
        swift_once();
      }

      v42 = sub_241352FFC();
      __swift_project_value_buffer(v42, qword_27E53A538);
      v43 = sub_241352FDC();
      v44 = sub_2413540BC();
      if (os_log_type_enabled(v43, v44))
      {
        v45 = swift_slowAlloc();
        *v45 = 0;
        _os_log_impl(&dword_241215000, v43, v44, "Requested show share sheet", v45, 2u);
        MEMORY[0x245CE4870](v45, -1, -1);
      }

      sub_2412186FC(v21, v22);

      (*(v2 + 8))(v4, v1);
      return 1;
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_2412A0CC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  sub_241353ECC();
  *(v4 + 24) = sub_241353EBC();
  v6 = sub_241353E8C();

  return MEMORY[0x2822009F8](sub_2412A0D58, v6, v5);
}

void sub_2412A0D58()
{
  v1 = OBJC_IVAR___ASVPreviewViewControllerInternal_modelController;
  v2 = *(*(v0 + 16) + OBJC_IVAR___ASVPreviewViewControllerInternal_modelController);
  if (!v2)
  {
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v13 = *(v0 + 16);
  v3 = *(v2 + OBJC_IVAR____TtC11AssetViewer15ModelController_entityControllers);
  if (v3 >> 62)
  {
    goto LABEL_20;
  }

  for (i = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_2413544EC())
  {

    if (!i)
    {
      break;
    }

    v5 = 0;
    while (1)
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x245CE29C0](v5, v3);
      }

      else
      {
        if (v5 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_19;
        }

        v6 = *(v3 + 8 * v5 + 32);
      }

      v7 = v6;
      v8 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      sub_24133D85C(*&v6[OBJC_IVAR____TtC11AssetViewer16EntityController_physicsStateManager + 8]);

      ++v5;
      if (v8 == i)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    ;
  }

LABEL_13:

  v9 = *(v13 + v1);
  if (!v9)
  {
    goto LABEL_22;
  }

  v10 = *(v9 + OBJC_IVAR____TtC11AssetViewer15ModelController_arView);
  if (!v10)
  {
LABEL_23:
    __break(1u);
    return;
  }

  v11 = v10;

  sub_24135292C();
  sub_2413524EC();

  sub_24135243C();
  swift_dynamicCastClassUnconditional();
  sub_241351C5C();
  swift_allocObject();
  sub_241351C4C();
  sub_2413523EC();

  swift_unknownObjectRelease();
  v12 = *(v0 + 8);

  v12();
}

void PreviewViewController.addDismissButtonTarget(_:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_241287420();
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  v6 = OBJC_IVAR____TtC11AssetViewer28ARQuickLookOverlayController_additionalDismissObservers;
  swift_beginAccess();
  v7 = *&v4[v6];

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v4[v6] = v7;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v7 = sub_2412A1DF4(0, v7[2] + 1, 1, v7, &qword_27E538AD8, &unk_241367610, &qword_27E538AE0, &unk_241368230);
    *&v4[v6] = v7;
  }

  v10 = v7[2];
  v9 = v7[3];
  if (v10 >= v9 >> 1)
  {
    v7 = sub_2412A1DF4((v9 > 1), v10 + 1, 1, v7, &qword_27E538AD8, &unk_241367610, &qword_27E538AE0, &unk_241368230);
  }

  v7[2] = v10 + 1;
  v11 = &v7[2 * v10];
  v11[4] = sub_241255F00;
  v11[5] = v5;
  *&v4[v6] = v7;
  swift_endAccess();
}

char *sub_2412A1324(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E538B30, &qword_241367630);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 80);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[80 * v8])
    {
      memmove(v12, v13, 80 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_2412A1444(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E538898, &qword_241367398);
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
    v10 = MEMORY[0x277D84F90];
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
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

char *sub_2412A1548(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E538890, &qword_241367390);
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
    v10 = MEMORY[0x277D84F90];
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

char *sub_2412A167C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E538A68, &unk_241367570);
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
    v10 = MEMORY[0x277D84F90];
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
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

char *sub_2412A17F8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E538A30, &qword_241367548);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 32 * v8);
  }

  return v10;
}

char *sub_2412A18FC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E538A50, &qword_241367558);
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
    v10 = MEMORY[0x277D84F90];
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
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

void *sub_2412A1A28(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5388A8, &qword_2413673A8);
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
    v10 = MEMORY[0x277D84F90];
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E5388B0, &unk_2413673B0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_2412A1B5C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5388A0, &qword_2413673A0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
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
    memcpy(v12, v13, 24 * v8);
  }

  return v10;
}

void *sub_2412A1C9C(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E538910, &unk_241367490);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E538918, &qword_241369090);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_2412A1DF4(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v16 = swift_allocObject();
    v17 = _swift_stdlib_malloc_size(v16);
    v18 = v17 - 32;
    if (v17 < 32)
    {
      v18 = v17 - 17;
    }

    v16[2] = v14;
    v16[3] = 2 * (v18 >> 4);
  }

  else
  {
    v16 = MEMORY[0x277D84F90];
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[2 * v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 16 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

void *sub_2412A1F50(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
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

void *sub_2412A212C(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5389F8, &qword_241367510);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[4 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 32 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E538728, &qword_2413670C0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_2412A2260(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E538AC0, &unk_241367600);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 29;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 2);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[4 * v8])
    {
      memmove(v13, v14, 4 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 4 * v8);
  }

  return v10;
}

char *sub_2412A2364(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E538888, &unk_241369680);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
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

char *sub_2412A2480(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E538880, &unk_241367380);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
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

void *sub_2412A25A0(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5389E8, &qword_241367500);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5389F0, &qword_241367508);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_2412A26E8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5388E8, &qword_2413673E8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_2412A2808(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E538890, &qword_241367390);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 17;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 4);
  return result;
}

void *sub_2412A288C(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E538900, &qword_241366C30);
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

uint64_t sub_2412A2914(uint64_t a1, __n128 a2)
{
  v3 = v2;
  v4 = sub_2412FD908(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *v2;
  v13 = *v3;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_2412A7970();
    v9 = v13;
  }

  v10 = v6;
  v11 = *(*(v9 + 56) + 8 * v6);
  sub_241339218(v10, v9, v8);
  *v3 = v9;
  return v11;
}

uint64_t sub_2412A299C(void *a1)
{
  v2 = v1;
  v3 = *v1;
  if ((*v1 & 0xC000000000000001) == 0)
  {
    v14 = sub_2412FDC20(a1);
    if (v15)
    {
      v3 = v14;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v8 = *v1;
      v19 = *v1;
      if (isUniquelyReferenced_nonNull_native)
      {
LABEL_10:

        v12 = *(*(v8 + 56) + 8 * v3);
        sub_24133951C(v3, v8, v17);
        goto LABEL_11;
      }

LABEL_15:
      sub_2412A85BC();
      v8 = v19;
      goto LABEL_10;
    }

    return 0;
  }

  if (v3 < 0)
  {
    v4 = *v1;
  }

  else
  {
    v4 = v3 & 0xFFFFFFFFFFFFFF8;
  }

  v5 = a1;
  v6 = sub_24135478C();

  if (!v6)
  {
    return 0;
  }

  swift_unknownObjectRelease();

  v7 = sub_2413544EC();
  v8 = sub_24126DDFC(v4, v7);

  v9 = sub_2412FDC20(v5);
  v11 = v10;

  if ((v11 & 1) == 0)
  {
    __break(1u);
    goto LABEL_15;
  }

  v12 = *(*(v8 + 56) + 8 * v9);
  sub_24133951C(v9, v8, v13);

LABEL_11:
  *v2 = v8;
  return v12;
}