uint64_t sub_2612752B0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v13 - v3;
  v5 = sub_26129B684();
  sub_26125A870(v5, v4, &qword_27FE9F560, &qword_2613A3CB0);
  v6 = sub_2613A124C();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(v4, 1, v6) == 1)
  {
    sub_26124C718(v4, &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {

    v8 = sub_2613A122C();
    v9 = sub_2613A1D7C();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v14 = v11;
      *v10 = 136446210;
      *(v10 + 4) = sub_26124C11C(*(a1 + 32), *(a1 + 40), &v14);
      _os_log_impl(&dword_261243000, v8, v9, "%{public}s connection invalidated", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v11);
      MEMORY[0x266701350](v11, -1, -1);
      MEMORY[0x266701350](v10, -1, -1);
    }

    (*(v7 + 8))(v4, v6);
  }

  return sub_261275DC0(0);
}

void sub_2612754B4(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v10 = v6[4];
  v11 = v6[5];
  v12 = objc_allocWithZone(MEMORY[0x277D66BD8]);
  v13 = sub_2613A189C();
  v14 = sub_2613A189C();
  v15 = [v12 initWithServiceName:v13 viewControllerClassName:v14];

  type metadata accessor for RemoteAlertInvalidationHandler();

  v16 = sub_2612F6038(v10, v11, a4, a5);
  v17 = v6[14];
  v6[14] = v16;
  v18 = v16;

  v19 = [objc_allocWithZone(MEMORY[0x277D66BD0]) init];
  [v19 setXpcEndpoint_];
  swift_unknownObjectRelease();
  sub_261258410(a2);
  v20 = sub_2613A17EC();

  [v19 setUserInfo_];

  v21 = [objc_opt_self() newHandleWithDefinition:v15 configurationContext:v19];
  [v21 registerObserver_];
  v29 = [objc_allocWithZone(MEMORY[0x277D66BC0]) init];
  if (a3)
  {
    v22 = objc_opt_self();
    v23 = a3;
    v24 = [v22 processHandleForNSXPCConnection_];
    v25 = [objc_opt_self() predicateForProcess_];
    v26 = [objc_allocWithZone(MEMORY[0x277D66C08]) initWithTargetPredicate_];
    [v26 setShouldDismissOnUILock_];
    [v26 setShouldDismissInSwitcher_];
    [v29 setPresentationTarget_];
  }

  [v21 activateWithContext_];
}

uint64_t sub_2612757A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v30 - v12;
  type metadata accessor for RemoteSceneUIHandle();
  v14 = *(v4 + 120);

  v15 = sub_2612F3E4C(v14, a3, a4);
  if (v15)
  {
    v16 = v15;
    v17 = sub_26129B89C();
    sub_26125A870(v17, v13, &qword_27FE9F560, &qword_2613A3CB0);
    v18 = sub_2613A124C();
    v19 = *(v18 - 8);
    if ((*(v19 + 48))(v13, 1, v18) == 1)
    {
      sub_26124C718(v13, &qword_27FE9F560, &qword_2613A3CB0);
    }

    else
    {
      v24 = sub_2613A122C();
      v25 = sub_2613A1D9C();
      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        *v26 = 0;
        _os_log_impl(&dword_261243000, v24, v25, "opening remote scene UI", v26, 2u);
        MEMORY[0x266701350](v26, -1, -1);
      }

      (*(v19 + 8))(v13, v18);
    }

    sub_261258410(a2);
    (*(*v16 + 152))();
  }

  else
  {
    v20 = sub_26129B89C();
    sub_26125A870(v20, v11, &qword_27FE9F560, &qword_2613A3CB0);
    v21 = sub_2613A124C();
    v22 = *(v21 - 8);
    if ((*(v22 + 48))(v11, 1, v21) == 1)
    {
      return sub_26124C718(v11, &qword_27FE9F560, &qword_2613A3CB0);
    }

    else
    {
      v27 = sub_2613A122C();
      v28 = sub_2613A1D8C();
      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        *v29 = 0;
        _os_log_impl(&dword_261243000, v27, v28, "Unable to create ui service", v29, 2u);
        MEMORY[0x266701350](v29, -1, -1);
      }

      return (*(v22 + 8))(v11, v21);
    }
  }
}

uint64_t sub_261275B28()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v16 - v3;
  v5 = sub_26129B684();
  sub_26125A870(v5, v4, &qword_27FE9F560, &qword_2613A3CB0);
  v6 = sub_2613A124C();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(v4, 1, v6) == 1)
  {
    sub_26124C718(v4, &qword_27FE9F560, &qword_2613A3CB0);
    if (v1[3])
    {
LABEL_3:

      sub_2613A179C();
    }
  }

  else
  {

    v8 = sub_2613A122C();
    v9 = sub_2613A1D9C();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v17 = v11;
      *v10 = 136446466;
      *(v10 + 4) = sub_26124C11C(v1[4], v1[5], &v17);
      *(v10 + 12) = 2080;
      if (v1[3])
      {
        v12 = 0x29286C65636E6163;
      }

      else
      {
        v12 = 7104878;
      }

      if (v1[3])
      {
        v13 = 0xE800000000000000;
      }

      else
      {
        v13 = 0xE300000000000000;
      }

      v14 = sub_26124C11C(v12, v13, &v17);

      *(v10 + 14) = v14;
      _os_log_impl(&dword_261243000, v8, v9, "%{public}s deferred cleanup - %s", v10, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x266701350](v11, -1, -1);
      MEMORY[0x266701350](v10, -1, -1);
    }

    (*(v7 + 8))(v4, v6);
    if (v1[3])
    {
      goto LABEL_3;
    }
  }

  v1[3] = 0;
}

uint64_t sub_261275DC0(int a1)
{
  v2 = v1;
  v95 = a1;
  v80 = *v1;
  v3 = sub_2613A177C();
  v88 = *(v3 - 8);
  v89 = v3;
  v4 = MEMORY[0x28223BE20](v3);
  v86 = &v78 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v87 = &v78 - v6;
  v7 = sub_2613A172C();
  v84 = *(v7 - 8);
  v85 = v7;
  MEMORY[0x28223BE20](v7);
  v83 = &v78 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = sub_2613A171C();
  MEMORY[0x28223BE20](v81);
  v82 = &v78 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v90 = &v78 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v91 = &v78 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v79 = &v78 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v78 - v18;
  MEMORY[0x28223BE20](v17);
  v21 = &v78 - v20;
  v22 = sub_26129B684();
  sub_26125A870(v22, v21, &qword_27FE9F560, &qword_2613A3CB0);
  v23 = sub_2613A124C();
  v24 = *(v23 - 8);
  v94 = *(v24 + 48);
  v25 = v94(v21, 1, v23);
  v92 = v24;
  v93 = v2;
  if (v25 == 1)
  {
    v26 = v23;
    sub_26124C718(v21, &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {
    v27 = sub_26125A798();
    v28 = sub_261291AA8();
    sub_26129BC3C(v27 & 1, v2, 0xD000000000000015, 0x80000002613B8AE0, v28, v29);

    v26 = v23;
    (*(v24 + 8))(v21, v23);
  }

  if (v95 && v95 == 1)
  {

LABEL_8:
    sub_26125A870(v22, v19, &qword_27FE9F560, &qword_2613A3CB0);
    if (v94(v19, 1, v26) == 1)
    {
      v31 = sub_26124C718(v19, &qword_27FE9F560, &qword_2613A3CB0);
      v32 = v93;
    }

    else
    {
      v32 = v93;

      v33 = sub_2613A122C();
      v34 = sub_2613A1D8C();

      if (os_log_type_enabled(v33, v34))
      {
        v35 = swift_slowAlloc();
        v36 = swift_slowAlloc();
        aBlock[0] = v36;
        *v35 = 136446210;
        *(v35 + 4) = sub_26124C11C(v32[4], v32[5], aBlock);
        _os_log_impl(&dword_261243000, v33, v34, "%{public}s cannot be presented, cleaning up", v35, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v36);
        MEMORY[0x266701350](v36, -1, -1);
        MEMORY[0x266701350](v35, -1, -1);
      }

      v31 = (*(v92 + 8))(v19, v26);
    }

    return (*(*v32 + 448))(v31);
  }

  v30 = sub_2613A241C();

  if (v30)
  {
    goto LABEL_8;
  }

  if (v95)
  {
    v38 = sub_2613A241C();

    if ((v38 & 1) == 0)
    {
      v39 = v79;
      sub_26125A870(v22, v79, &qword_27FE9F560, &qword_2613A3CB0);
      v40 = v94(v39, 1, v26);
      v42 = v92;
      v41 = v93;
      if (v40 == 1)
      {
        sub_26124C718(v39, &qword_27FE9F560, &qword_2613A3CB0);
      }

      else
      {

        v73 = sub_2613A122C();
        v74 = sub_2613A1D8C();

        if (os_log_type_enabled(v73, v74))
        {
          v75 = swift_slowAlloc();
          v76 = swift_slowAlloc();
          aBlock[0] = v76;
          *v75 = 136446210;
          *(v75 + 4) = sub_26124C11C(v41[4], v41[5], aBlock);
          _os_log_impl(&dword_261243000, v73, v74, "%{public}s invalidated with unexpected error", v75, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v76);
          MEMORY[0x266701350](v76, -1, -1);
          MEMORY[0x266701350](v75, -1, -1);
        }

        (*(v42 + 8))(v39, v26);
      }

      v77 = sub_261275B28();
      return (*(*v41 + 448))(v77);
    }
  }

  else
  {
  }

  v43 = v91;
  sub_26125A870(v22, v91, &qword_27FE9F560, &qword_2613A3CB0);
  v44 = v26;
  v45 = v94;
  v46 = v94(v43, 1, v26);
  v47 = v92;
  v48 = v93;
  if (v46 == 1)
  {
    v49 = sub_26124C718(v43, &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {

    v50 = sub_2613A122C();
    v51 = sub_2613A1D8C();

    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      v53 = swift_slowAlloc();
      aBlock[0] = v53;
      *v52 = 136446210;
      *(v52 + 4) = sub_26124C11C(v48[4], v48[5], aBlock);
      _os_log_impl(&dword_261243000, v50, v51, "%{public}s invalidated normally with .handleRequested event", v52, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v53);
      MEMORY[0x266701350](v53, -1, -1);
      v54 = v52;
      v43 = v91;
      MEMORY[0x266701350](v54, -1, -1);
    }

    v49 = (*(v47 + 8))(v43, v44);
  }

  if ((*(*v48 + 192))(v49))
  {
    v55 = swift_allocObject();
    swift_weakInit();
    v56 = swift_allocObject();
    v57 = v80;
    v56[2] = *(v80 + 80);
    v56[3] = *(v57 + 88);
    v56[4] = v55;
    aBlock[4] = sub_26127DF94;
    aBlock[5] = v56;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_261276D54;
    aBlock[3] = &block_descriptor_162;
    _Block_copy(aBlock);
    v96 = MEMORY[0x277D84F90];
    sub_26127E054(&qword_27FE9F4B0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE9F640, &unk_2613AA600);
    sub_26127DF9C(&qword_27FE9F4B8, &unk_27FE9F640, &unk_2613AA600);
    sub_2613A203C();
    sub_2613A17AC();
    swift_allocObject();
    v58 = sub_2613A178C();

    v48[3] = v58;

    sub_26127BBE0();
    v60 = v83;
    v59 = v84;
    v61 = v85;
    (*(v84 + 104))(v83, *MEMORY[0x277D851C8], v85);
    v62 = sub_2613A1E3C();
    (*(v59 + 8))(v60, v61);
    v63 = v86;
    sub_2613A176C();
    v64 = v87;
    sub_2613A17CC();
    v65 = *(v88 + 8);
    v66 = v63;
    v67 = v89;
    v65(v66, v89);
    sub_2613A1DFC();

    return (v65)(v64, v67);
  }

  else
  {
    v68 = v90;
    sub_26125A870(v22, v90, &qword_27FE9F560, &qword_2613A3CB0);
    if (v45(v68, 1, v44) == 1)
    {
      return sub_26124C718(v68, &qword_27FE9F560, &qword_2613A3CB0);
    }

    else
    {

      v69 = sub_2613A122C();
      v70 = sub_2613A1D8C();

      if (os_log_type_enabled(v69, v70))
      {
        v71 = swift_slowAlloc();
        v72 = swift_slowAlloc();
        aBlock[0] = v72;
        *v71 = 136446210;
        *(v71 + 4) = sub_26124C11C(v48[4], v48[5], aBlock);
        _os_log_impl(&dword_261243000, v69, v70, "%{public}s already closed, no deferred cleanup needed", v71, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v72);
        MEMORY[0x266701350](v72, -1, -1);
        MEMORY[0x266701350](v71, -1, -1);
      }

      return (*(v47 + 8))(v90, v44);
    }
  }
}

uint64_t sub_261276AA0(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v15 - v2;
  v4 = sub_26129B684();
  sub_26125A870(v4, v3, &qword_27FE9F560, &qword_2613A3CB0);
  v5 = sub_2613A124C();
  v6 = *(v5 - 8);
  if ((*(v6 + 48))(v3, 1, v5) == 1)
  {
    sub_26124C718(v3, &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {

    v7 = sub_2613A122C();
    v8 = sub_2613A1D8C();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v17[0] = v10;
      *v9 = 136446210;
      swift_beginAccess();
      Strong = swift_weakLoadStrong();
      if (Strong)
      {
        v12 = *(Strong + 40);
        v16 = *(Strong + 32);

        Strong = v16;
      }

      else
      {
        v12 = 0xE000000000000000;
      }

      v13 = sub_26124C11C(Strong, v12, v17);

      *(v9 + 4) = v13;
      _os_log_impl(&dword_261243000, v7, v8, "%{public}s deferred cleanup triggered", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v10);
      MEMORY[0x266701350](v10, -1, -1);
      MEMORY[0x266701350](v9, -1, -1);
    }

    (*(v6 + 8))(v3, v5);
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    (*(*result + 448))(result);
  }

  return result;
}

uint64_t sub_261276D54(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

id sub_261276D98(uint64_t a1, uint64_t a2)
{
  v5 = [objc_opt_self() anonymousListener];
  v6 = swift_allocObject();
  v6[2] = v2;
  v6[3] = a1;
  v6[4] = a2;

  sub_26124A17C(a1, a2);
  v7 = *sub_2612E788C();
  v8 = v5;

  nullsub_1();
  v10 = v9;
  sub_2612E81B8(v9, v11, v12);

  v13 = [v8 endpoint];

  return v13;
}

void sub_261276EAC(void *a1, uint64_t (*a2)(void *a1), uint64_t a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v27 - v10;
  v12 = sub_26129B684();
  sub_26125A870(v12, v11, &qword_27FE9F560, &qword_2613A3CB0);
  v13 = sub_2613A124C();
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v11, 1, v13) == 1)
  {
    sub_26124C718(v11, &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {
    v29 = v8;

    v15 = sub_2613A122C();
    v16 = sub_2613A1D7C();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v28 = a3;
      v18 = v17;
      v19 = swift_slowAlloc();
      aBlock = v19;
      *v18 = 136446210;
      *(v18 + 4) = sub_26124C11C(v4[4], v4[5], &aBlock);
      _os_log_impl(&dword_261243000, v15, v16, "%{public}s configuring connection", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v19);
      MEMORY[0x266701350](v19, -1, -1);
      v20 = v18;
      a3 = v28;
      MEMORY[0x266701350](v20, -1, -1);
    }

    (*(v14 + 8))(v11, v13);
  }

  [a1 setExportedInterface_];
  [a1 setExportedObject_];
  [a1 setRemoteObjectInterface_];
  v35 = sub_26127DF74;
  v36 = v4;
  aBlock = MEMORY[0x277D85DD0];
  v32 = 1107296256;
  v33 = sub_261277574;
  v34 = &block_descriptor_0;
  v21 = _Block_copy(&aBlock);

  v22 = [a1 remoteObjectProxyWithErrorHandler_];
  _Block_release(v21);
  sub_2613A202C();
  swift_unknownObjectRelease();
  if (swift_dynamicCast())
  {
    v23 = v30;
  }

  else
  {
    v23 = 0;
  }

  swift_beginAccess();
  v4[9] = v23;
  swift_unknownObjectRelease();
  if (a2)
  {
    v35 = a2;
    v36 = a3;
    aBlock = MEMORY[0x277D85DD0];
    v32 = 1107296256;
    v33 = sub_261276D54;
    v34 = &block_descriptor_155;
    v24 = _Block_copy(&aBlock);
    sub_26124A17C(a2, a3);

    [a1 setInvalidationHandler_];
    _Block_release(v24);
    sub_26124A228(a2, a3);
  }

  [a1 resume];
  swift_beginAccess();
  v25 = v4[8];
  v4[8] = a1;
  v26 = a1;
}

uint64_t sub_261277300(void *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v19 - v5;
  v7 = sub_26129B684();
  sub_26125A870(v7, v6, &qword_27FE9F560, &qword_2613A3CB0);
  v8 = sub_2613A124C();
  v9 = *(v8 - 8);
  if ((*(v9 + 48))(v6, 1, v8) == 1)
  {
    sub_26124C718(v6, &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {

    v10 = a1;
    v11 = sub_2613A122C();
    v12 = sub_2613A1D8C();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v20 = v14;
      *v13 = 136446466;
      *(v13 + 4) = sub_26124C11C(*(a2 + 32), *(a2 + 40), &v20);
      *(v13 + 12) = 2082;
      swift_getErrorValue();
      v15 = sub_2613A24FC();
      v17 = sub_26124C11C(v15, v16, &v20);

      *(v13 + 14) = v17;
      _os_log_impl(&dword_261243000, v11, v12, "%{public}s connection invalidated with error: %{public}s", v13, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x266701350](v14, -1, -1);
      MEMORY[0x266701350](v13, -1, -1);
    }

    (*(v9 + 8))(v6, v8);
  }

  return sub_261275DC0(0);
}

void sub_261277574(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

void sub_2612775DC()
{
  v1 = (*(*v0 + 240))();
  [v1 invalidate];

  swift_beginAccess();
  v2 = v0[8];
  v0[8] = 0;
}

uint64_t sub_261277658(const char *a1, char a2)
{
  v5 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v18[-1] - v7;
  v9 = sub_26129B684();
  sub_26125A870(v9, v8, &qword_27FE9F560, &qword_2613A3CB0);
  v10 = sub_2613A124C();
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v8, 1, v10) == 1)
  {
    sub_26124C718(v8, &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {

    v12 = sub_2613A122C();
    v13 = sub_2613A1D9C();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v18[0] = v15;
      *v14 = 136446210;
      *(v14 + 4) = sub_26124C11C(*(v5 + 32), *(v5 + 40), v18);
      _os_log_impl(&dword_261243000, v12, v13, a1, v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v15);
      MEMORY[0x266701350](v15, -1, -1);
      MEMORY[0x266701350](v14, -1, -1);
    }

    (*(v11 + 8))(v8, v10);
  }

  result = swift_beginAccess();
  *(v5 + 16) = a2;
  return result;
}

void *sub_2612778B4(const char **a1)
{
  result = (*(*v1 + 264))();
  if (result)
  {
    [result *a1];

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_261277974(uint64_t a1)
{

  sub_26127BEAC();
}

id *sub_2612779B0()
{

  swift_unknownObjectRelease();
  MEMORY[0x266701400](v0 + 12);
  MEMORY[0x266701400](v0 + 13);

  return v0;
}

uint64_t sub_261277A20()
{
  sub_2612779B0();

  return swift_deallocClassInstance();
}

uint64_t sub_261277BB0(void *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v30 - v9;
  v11 = type metadata accessor for UIContextType(0);
  MEMORY[0x28223BE20](v11);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_26139F64C();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26139F61C();
  sub_26139F5DC();
  (*(v15 + 8))(v17, v14);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F468, &unk_2613A4D80);
  v19 = *(v18 + 48);
  v20 = *(v18 + 64);
  *v13 = a1;
  v21 = sub_26139F97C();
  (*(*(v21 - 8) + 16))(&v13[v19], a2, v21);
  v13[v20] = a3;
  swift_storeEnumTagMultiPayload();
  v22 = a1;
  if (sub_26127C0E8(v13))
  {
    v4[128] = 1;
    (*(*v4 + 384))();

    return sub_26127D754(v13);
  }

  else
  {
    v24 = sub_26129B6C4();
    sub_26125A870(v24, v10, &qword_27FE9F560, &qword_2613A3CB0);
    v25 = sub_2613A124C();
    v26 = *(v25 - 8);
    if ((*(v26 + 48))(v10, 1, v25) == 1)
    {
      sub_26127D754(v13);
      return sub_26124C718(v10, &qword_27FE9F560, &qword_2613A3CB0);
    }

    else
    {
      v27 = sub_2613A122C();
      v28 = sub_2613A1D8C();
      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        *v29 = 0;
        _os_log_impl(&dword_261243000, v27, v28, "daemon | Context data not available, closing UI", v29, 2u);
        MEMORY[0x266701350](v29, -1, -1);
      }

      sub_26127D754(v13);
      return (*(v26 + 8))(v10, v25);
    }
  }
}

uint64_t sub_261277F38(uint64_t a1, uint64_t a2, void *a3, int a4)
{
  v5 = v4;
  v28 = a4;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v27[-v10];
  v12 = type metadata accessor for UIContextType(0);
  MEMORY[0x28223BE20](v12);
  v14 = &v27[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = sub_26139F64C();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v27[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_26139F3BC();
  sub_26139F5DC();
  (*(v16 + 8))(v18, v15);
  *v14 = a1;
  *(v14 + 1) = a2;
  *(v14 + 2) = a3;
  v14[24] = v28;
  swift_storeEnumTagMultiPayload();

  v19 = a3;
  if (sub_26127C0E8(v14))
  {
    v5[128] = 3;
    (*(*v5 + 384))();

    return sub_26127D754(v14);
  }

  else
  {
    v21 = sub_26129B704();
    sub_26125A870(v21, v11, &qword_27FE9F560, &qword_2613A3CB0);
    v22 = sub_2613A124C();
    v23 = *(v22 - 8);
    if ((*(v23 + 48))(v11, 1, v22) == 1)
    {
      sub_26127D754(v14);
      return sub_26124C718(v11, &qword_27FE9F560, &qword_2613A3CB0);
    }

    else
    {
      v24 = sub_2613A122C();
      v25 = sub_2613A1D8C();
      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        *v26 = 0;
        _os_log_impl(&dword_261243000, v24, v25, "daemon | Context data not available, closing UI", v26, 2u);
        MEMORY[0x266701350](v26, -1, -1);
      }

      sub_26127D754(v14);
      return (*(v23 + 8))(v11, v22);
    }
  }
}

void sub_2612782A8()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v5 = &v18[-1] - v4;
  if (v0[128] != 3)
  {
    v6 = (*(*v0 + 240))(v3);
    if (v6)
    {
      v7 = v6;
      sub_26128DAD8(v7, v18);
      sub_26127D7B0(v18);
      if ((v19 & 1) == 0)
      {
        v10 = sub_26129B6C4();
        sub_26125A870(v10, v5, &qword_27FE9F560, &qword_2613A3CB0);
        v11 = sub_2613A124C();
        v12 = *(v11 - 8);
        if ((*(v12 + 48))(v5, 1, v11) == 1)
        {
          v13 = sub_26124C718(v5, &qword_27FE9F560, &qword_2613A3CB0);
        }

        else
        {
          v14 = sub_2613A122C();
          v15 = sub_2613A1D8C();
          if (os_log_type_enabled(v14, v15))
          {
            v16 = swift_slowAlloc();
            *v16 = 0;
            _os_log_impl(&dword_261243000, v14, v15, "daemon | Invalid entitlement, closing UI", v16, 2u);
            MEMORY[0x266701350](v16, -1, -1);
          }

          v13 = (*(v12 + 8))(v5, v11);
        }

        (*(*v1 + 464))(v13);
LABEL_13:

        return;
      }
    }

    v8 = sub_261277658("%{public}s did load", 1);
    v9 = (*(*v0 + 288))(v8);
    if (!v9)
    {
      return;
    }

    v7 = v9;
    sub_261318F10();
    goto LABEL_13;
  }
}

void sub_26127854C(char a1)
{
  v3 = (*(*v1 + 288))();
  if (v3)
  {
    v4 = v3;
    v5 = (*(*v1 + 544))();
    sub_261319DDC(a1 & 1, v5 & 1);
  }

  v1[128] = 0;
  sub_26127BC3C();
}

uint64_t sub_261278600(_BYTE *a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  v5 = *(*a1 + 288);

  v6 = v5();
  if (v6)
  {
    v7 = v6;
    v8 = (*(*a1 + 544))();
    sub_261319DDC(v3, v8 & 1);
  }

  a1[128] = 0;
  sub_26127BC3C();
}

void *sub_2612786D4()
{
  v1 = sub_261277658("%{public}s invalidated", 0);
  result = (*(*v0 + 288))(v1);
  if (result)
  {
    v3 = result;
    if (v0[128] == 3)
    {
      v4 = sub_2613A0DDC();
    }

    else
    {
      v4 = sub_2613A0DEC();
    }

    sub_261318724(v4, v5);
  }

  return result;
}

uint64_t sub_261278788(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v23 = a5;
  v24 = a6;
  v21 = a3;
  v22 = a4;
  v19 = a1;
  v20 = a2;
  v18 = sub_2613A1E0C();
  v6 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v8 = v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2613A1DDC();
  MEMORY[0x28223BE20](v9);
  v10 = sub_2613A175C();
  MEMORY[0x28223BE20](v10 - 8);
  v11 = swift_allocObject();
  *(v11 + 128) = 0;
  *(v11 + 16) = 0;
  *(v11 + 24) = 0;
  *(v11 + 64) = 0;
  *(v11 + 72) = 0;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  *(v11 + 112) = 0;
  v12 = sub_26127BBE0();
  v17[0] = "stFailed";
  v17[1] = v12;
  sub_2613A174C();
  v25 = MEMORY[0x277D84F90];
  sub_26127E054(&qword_281451970, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F460, qword_2613A4D60);
  sub_26127DF9C(qword_281451988, &qword_27FE9F460, qword_2613A4D60);
  sub_2613A203C();
  (*(v6 + 104))(v8, *MEMORY[0x277D85268], v18);
  *(v11 + 120) = sub_2613A1E2C();
  v13 = v20;
  *(v11 + 32) = v19;
  *(v11 + 40) = v13;
  v14 = v22;
  *(v11 + 48) = v21;
  *(v11 + 56) = v14;
  v15 = v24;
  *(v11 + 80) = v23;
  *(v11 + 88) = v15;
  return v11;
}

uint64_t sub_261278A40()
{
  sub_2612779B0();

  return swift_deallocClassInstance();
}

uint64_t sub_26127910C(uint64_t a1, uint64_t a2, int a3, uint64_t a4, unsigned int a5)
{
  v34[1] = a4;
  v37 = a3;
  v36 = a1;
  v35 = HIWORD(a5);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  MEMORY[0x28223BE20](v6 - 8);
  v34[0] = v34 - v7;
  v8 = type metadata accessor for UIContextType(0);
  MEMORY[0x28223BE20](v8);
  v10 = v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F220, qword_2613A5530);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = v34 - v12;
  v14 = sub_26139EF7C();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = v34 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_26139F64C();
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v21 = v34 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26139F4FC();
  sub_26139F5DC();
  (*(v19 + 8))(v21, v18);
  sub_261291238(v35);
  sub_26128FAFC(52, v13);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    sub_26124C718(v13, &qword_27FE9F220, qword_2613A5530);
  }

  else
  {
    (*(v15 + 8))(v17, v14);
    (*(v15 + 32))(v17, v13, v14);
  }

  v22 = sub_26139EEAC();
  *v10 = v36;
  *(v10 + 1) = a2;
  v10[16] = v37 & 1;
  *(v10 + 3) = v22;
  *(v10 + 4) = v23;
  v24 = *MEMORY[0x277D43810];
  v25 = sub_26139FA8C();
  (*(*(v25 - 8) + 104))(v10, v24, v25);
  swift_storeEnumTagMultiPayload();
  if (sub_26127C0E8(v10))
  {
    (*(*v34[2] + 384))();

    sub_26127D754(v10);
    return (*(v15 + 8))(v17, v14);
  }

  else
  {
    v27 = sub_26129B744();
    v28 = v34[0];
    sub_26125A870(v27, v34[0], &qword_27FE9F560, &qword_2613A3CB0);
    v29 = sub_2613A124C();
    v30 = *(v29 - 8);
    if ((*(v30 + 48))(v28, 1, v29) == 1)
    {
      sub_26127D754(v10);
      (*(v15 + 8))(v17, v14);
      return sub_26124C718(v28, &qword_27FE9F560, &qword_2613A3CB0);
    }

    else
    {
      v31 = sub_2613A122C();
      v32 = sub_2613A1D8C();
      if (os_log_type_enabled(v31, v32))
      {
        v33 = swift_slowAlloc();
        *v33 = 0;
        _os_log_impl(&dword_261243000, v31, v32, "daemon | Context data not available, closing UI", v33, 2u);
        MEMORY[0x266701350](v33, -1, -1);
      }

      sub_26127D754(v10);
      (*(v15 + 8))(v17, v14);
      return (*(v30 + 8))(v28, v29);
    }
  }
}

void sub_26127964C()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v5 = &v28[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v28[-1] - v7;
  v9 = (*(*v0 + 240))(v6);
  if (!v9)
  {
LABEL_4:
    v11 = (*(*v0 + 288))();
    if (v11)
    {
      v12 = v11;
      sub_261277658("%{public}s did load", 1);
      sub_26131D770();
    }

    else
    {
      v17 = sub_26129B4AC();
      sub_26125A870(v17, v5, &qword_27FE9F560, &qword_2613A3CB0);
      v18 = sub_2613A124C();
      v19 = *(v18 - 8);
      if ((*(v19 + 48))(v5, 1, v18) == 1)
      {
        v20 = sub_26124C718(v5, &qword_27FE9F560, &qword_2613A3CB0);
      }

      else
      {
        v24 = sub_2613A122C();
        v25 = sub_2613A1D9C();
        if (os_log_type_enabled(v24, v25))
        {
          v26 = swift_slowAlloc();
          *v26 = 0;
          _os_log_impl(&dword_261243000, v24, v25, "No delegate to notify about RegUI load, closing UI", v26, 2u);
          MEMORY[0x266701350](v26, -1, -1);
        }

        v20 = (*(v19 + 8))(v5, v18);
      }

      (*(*v1 + 464))(v20);
    }

    return;
  }

  v10 = v9;
  sub_26128DAD8(v10, v28);
  sub_26127D7B0(v28);
  if (v29)
  {

    goto LABEL_4;
  }

  v13 = sub_26129B4AC();
  sub_26125A870(v13, v8, &qword_27FE9F560, &qword_2613A3CB0);
  v14 = sub_2613A124C();
  v15 = *(v14 - 8);
  if ((*(v15 + 48))(v8, 1, v14) == 1)
  {
    v16 = sub_26124C718(v8, &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {
    v21 = sub_2613A122C();
    v22 = sub_2613A1D9C();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_261243000, v21, v22, "Invalid entitlement, closing UI", v23, 2u);
      MEMORY[0x266701350](v23, -1, -1);
    }

    v16 = (*(v15 + 8))(v8, v14);
  }

  (*(*v1 + 464))(v16);
}

uint64_t sub_261279A5C(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{

  a3(v4);
}

uint64_t sub_261279AA0()
{
  v1 = (*(*v0 + 288))();
  if (v1)
  {
    v2 = v1;
    sub_26131D5E4();
  }

  return sub_261277658("%{public}s invalidated", 0);
}

uint64_t sub_261279B10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v23 = a5;
  v24 = a6;
  v21 = a3;
  v22 = a4;
  v19 = a1;
  v20 = a2;
  v18 = sub_2613A1E0C();
  v7 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2613A1DDC();
  MEMORY[0x28223BE20](v10);
  v11 = sub_2613A175C();
  MEMORY[0x28223BE20](v11 - 8);
  *(v6 + 16) = 0;
  *(v6 + 24) = 0;
  *(v6 + 64) = 0;
  *(v6 + 72) = 0;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  *(v6 + 112) = 0;
  v12 = sub_26127BBE0();
  v17[0] = "stFailed";
  v17[1] = v12;
  sub_2613A174C();
  v25 = MEMORY[0x277D84F90];
  sub_26127E054(&qword_281451970, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F460, qword_2613A4D60);
  sub_26127DF9C(qword_281451988, &qword_27FE9F460, qword_2613A4D60);
  sub_2613A203C();
  (*(v7 + 104))(v9, *MEMORY[0x277D85268], v18);
  *(v6 + 120) = sub_2613A1E2C();
  v13 = v20;
  *(v6 + 32) = v19;
  *(v6 + 40) = v13;
  v14 = v22;
  *(v6 + 48) = v21;
  *(v6 + 56) = v14;
  v15 = v24;
  *(v6 + 80) = v23;
  *(v6 + 88) = v15;
  return v6;
}

void *sub_261279DB0(uint64_t a1, unint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v34 - v8;
  v10 = sub_26129B744();
  sub_26125A870(v10, v9, &qword_27FE9F560, &qword_2613A3CB0);
  v11 = sub_2613A124C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 48);
  if (v13(v9, 1, v11) == 1)
  {
    sub_26124C718(v9, &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {
    v37 = v12;

    v14 = sub_2613A122C();
    v15 = sub_2613A1D9C();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v35 = a2;
      v17 = v16;
      v18 = swift_slowAlloc();
      v36 = a1;
      v19 = v18;
      v39 = v18;
      *v17 = 136315138;
      *(v17 + 4) = sub_26124C11C(v36, v35, &v39);
      _os_log_impl(&dword_261243000, v14, v15, "daemon | notifyRegUIResult - %s", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v19);
      v20 = v19;
      a1 = v36;
      MEMORY[0x266701350](v20, -1, -1);
      MEMORY[0x266701350](v17, -1, -1);
    }

    v12 = v37;
    (*(v37 + 8))(v9, v11);
  }

  sub_26125A870(v10, v7, &qword_27FE9F560, &qword_2613A3CB0);
  if (v13(v7, 1, v11) == 1)
  {
    v21 = sub_26124C718(v7, &qword_27FE9F560, &qword_2613A3CB0);
    v22 = v38;
  }

  else
  {
    v23 = v38;

    v22 = v23;
    v24 = sub_2613A122C();
    v25 = sub_2613A1D9C();

    if (os_log_type_enabled(v24, v25))
    {
      v36 = a1;
      v37 = v12;
      v26 = 0xD000000000000017;
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v39 = v28;
      *v27 = 136315138;
      if ((*(*v23 + 264))())
      {
        swift_unknownObjectRelease();
        v29 = "daemon | optional failed";
      }

      else
      {
        v29 = "tlessReaderUI.scene.xpc";
        v26 = 0xD000000000000018;
      }

      v30 = sub_26124C11C(v26, v29 | 0x8000000000000000, &v39);

      *(v27 + 4) = v30;
      _os_log_impl(&dword_261243000, v24, v25, "daemon | %s", v27, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v28);
      MEMORY[0x266701350](v28, -1, -1);
      MEMORY[0x266701350](v27, -1, -1);

      v12 = v37;
      v22 = v38;
    }

    else
    {
    }

    v21 = (*(v12 + 8))(v7, v11);
  }

  result = (*(*v22 + 264))(v21);
  if (result)
  {
    v32 = result;
    v33 = sub_2613A189C();
    [v32 notifyRegUIResultWithResult_];

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_26127A41C(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  v4 = *(*a1 + 288);

  v5 = v4();
  if (v5)
  {
    v6 = v5;
    a3();
  }
}

uint64_t sub_26127A4AC(uint64_t a1)
{
  v3 = type metadata accessor for UIContextType(0);
  MEMORY[0x28223BE20](v3);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_26139FEEC();
  (*(*(v6 - 8) + 16))(v5, a1, v6);
  swift_storeEnumTagMultiPayload();
  if (sub_26127C0E8(v5))
  {
    (*(*v1 + 384))();
  }

  return sub_26127D754(v5);
}

uint64_t sub_26127A5D4()
{
  v1 = (*(*v0 + 312))();
  if (v1)
  {
    v2 = v1;
    sub_26134AE24(0);
  }

  return sub_261277658("%{public}s invalidated", 0);
}

uint64_t sub_26127A64C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v23 = a5;
  v24 = a6;
  v21 = a3;
  v22 = a4;
  v19 = a1;
  v20 = a2;
  v18 = sub_2613A1E0C();
  v6 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v8 = v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2613A1DDC();
  MEMORY[0x28223BE20](v9);
  v10 = sub_2613A175C();
  MEMORY[0x28223BE20](v10 - 8);
  v11 = swift_allocObject();
  *(v11 + 16) = 0;
  *(v11 + 24) = 0;
  *(v11 + 64) = 0;
  *(v11 + 72) = 0;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  *(v11 + 112) = 0;
  v12 = sub_26127BBE0();
  v17[0] = "stFailed";
  v17[1] = v12;
  sub_2613A174C();
  v25 = MEMORY[0x277D84F90];
  sub_26127E054(&qword_281451970, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F460, qword_2613A4D60);
  sub_26127DF9C(qword_281451988, &qword_27FE9F460, qword_2613A4D60);
  sub_2613A203C();
  (*(v6 + 104))(v8, *MEMORY[0x277D85268], v18);
  *(v11 + 120) = sub_2613A1E2C();
  v13 = v20;
  *(v11 + 32) = v19;
  *(v11 + 40) = v13;
  v14 = v22;
  *(v11 + 48) = v21;
  *(v11 + 56) = v14;
  v15 = v24;
  *(v11 + 80) = v23;
  *(v11 + 88) = v15;
  return v11;
}

uint64_t sub_26127A900()
{
  sub_2612779B0();

  return swift_deallocClassInstance();
}

uint64_t sub_26127A93C(uint64_t a1, uint64_t a2, uint64_t a3, const char **a4)
{
  v6 = *(*a1 + 264);

  v8 = v6(v7);
  if (v8)
  {
    [v8 *a4];
    swift_unknownObjectRelease();
  }
}

uint64_t sub_26127A9E0(uint64_t a1, uint64_t a2, void *a3, const char **a4)
{
  v5 = *(*a1 + 264);
  v6 = a3;

  v8 = v5(v7);
  if (v8)
  {
    [v8 *a4];
    swift_unknownObjectRelease();
  }
}

uint64_t sub_26127ABCC(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  v6 = *(*a1 + 312);

  v7 = v6();
  if (v7)
  {
    v8 = v7;
    a4(a3);
  }
}

uint64_t sub_26127ADB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UIContextType(0);
  MEMORY[0x28223BE20](v6);
  v8 = (&v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v8 = a1;
  v8[1] = a2;
  v9 = *MEMORY[0x277D43808];
  v10 = sub_26139FA8C();
  (*(*(v10 - 8) + 104))(v8, v9, v10);
  swift_storeEnumTagMultiPayload();

  if (sub_26127C0E8(v8))
  {
    (*(*v3 + 384))();
  }

  return sub_26127D754(v8);
}

void *sub_26127AEF8()
{
  v1 = (*v0 + 264);
  v2 = *v1;
  v3 = (*v1)();
  if (v3)
  {
    [v3 closeUI];
    v3 = swift_unknownObjectRelease();
  }

  result = (v2)(v3);
  if (result)
  {
    [result closeUI];

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_26127AFB0(uint64_t a1)
{
  v1 = *(*a1 + 264);

  v3 = v1(v2);
  if (v3)
  {
    [v3 closeUI];
    v3 = swift_unknownObjectRelease();
  }

  v4 = v1(v3);
  if (v4)
  {
    [v4 closeUI];
    swift_unknownObjectRelease();
  }
}

void sub_26127B064()
{
  v1 = sub_261277658("%{public}s did load", 1);
  v2 = (*(*v0 + 312))(v1);
  if (v2)
  {
    v3 = v2;
    sub_261356784();
  }
}

uint64_t sub_26127B0F8(uint64_t a1)
{

  v2 = sub_261277658("%{public}s did load", 1);
  v3 = (*(*a1 + 312))(v2);
  if (v3)
  {
    v4 = v3;
    sub_261356784();
  }
}

void sub_26127B18C()
{
  if ((*(*v0 + 192))())
  {
    v1 = (*(*v0 + 312))();
    if (v1)
    {
      v2 = v1;
      v3 = sub_261253D6C();
      sub_26134B8A0(v3 & 1);
    }
  }

  sub_26127BC3C();
}

uint64_t sub_26127B224(uint64_t a1)
{
  v2 = *(*a1 + 192);

  if (v2())
  {
    v3 = (*(*a1 + 312))();
    if (v3)
    {
      v4 = v3;
      v5 = sub_261253D6C();
      sub_26134B8A0(v5 & 1);
    }
  }

  sub_26127BC3C();
}

uint64_t sub_26127B2E0()
{
  v1 = (*(*v0 + 312))();
  if (v1)
  {
    v2 = v1;
    sub_261357180();
  }

  return sub_261277658("%{public}s invalidated", 0);
}

uint64_t sub_26127B448(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  v4 = *(*a1 + 312);

  v5 = v4();
  if (v5)
  {
    v6 = v5;
    a3();
  }
}

uint64_t sub_26127B4E0(unsigned __int8 a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v31 = a4;
  v27 = sub_2613A1E0C();
  v5 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v28 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2613A1DDC();
  MEMORY[0x28223BE20](v7);
  v8 = sub_2613A175C();
  MEMORY[0x28223BE20](v8 - 8);
  v9 = sub_2613A0D4C();
  v29 = v10;
  v30 = v9;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v13 = objc_opt_self();
      v26 = [v13 interfaceWithProtocol_];
      v25 = [v13 interfaceWithProtocol_];
      type metadata accessor for IdentityUIManager(0);
      v12 = swift_allocObject();
      *(v12 + 16) = 0;
      *(v12 + 24) = 0;
      *(v12 + 64) = 0;
      *(v12 + 72) = 0;
      swift_unknownObjectWeakInit();
      swift_unknownObjectWeakInit();
      *(v12 + 112) = 0;
      v24 = sub_26127BBE0();
      sub_2613A174C();
      v32 = MEMORY[0x277D84F90];
      sub_26127E054(&qword_281451970, MEMORY[0x277D85230], MEMORY[0x277D85238]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F460, qword_2613A4D60);
      sub_26127DF9C(qword_281451988, &qword_27FE9F460, qword_2613A4D60);
      goto LABEL_6;
    }

    v24 = 0x80000002613B8800;
    v18 = objc_opt_self();
    v26 = [v18 interfaceWithProtocol_];
    v25 = [v18 interfaceWithProtocol_];
    type metadata accessor for IdentityRegUIManager(0);
LABEL_9:
    v12 = swift_allocObject();
    *(v12 + 16) = 0;
    *(v12 + 24) = 0;
    *(v12 + 64) = 0;
    *(v12 + 72) = 0;
    swift_unknownObjectWeakInit();
    swift_unknownObjectWeakInit();
    *(v12 + 112) = 0;
    v23 = sub_26127BBE0();
    sub_2613A174C();
    v32 = MEMORY[0x277D84F90];
    sub_26127E054(&qword_281451970, MEMORY[0x277D85230], MEMORY[0x277D85238]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F460, qword_2613A4D60);
    sub_26127DF9C(qword_281451988, &qword_27FE9F460, qword_2613A4D60);
    sub_2613A203C();
    (*(v5 + 104))(v28, *MEMORY[0x277D85268], v27);
    v19 = sub_2613A1E2C();
    v16 = v24;
    *(v12 + 120) = v19;
    v15 = 0xD000000000000030;
    goto LABEL_10;
  }

  if (a1)
  {
    v24 = 0x80000002613B8800;
    v17 = objc_opt_self();
    v26 = [v17 interfaceWithProtocol_];
    v25 = [v17 interfaceWithProtocol_];
    type metadata accessor for RegistrationUIManager(0);
    goto LABEL_9;
  }

  v11 = objc_opt_self();
  v26 = [v11 interfaceWithProtocol_];
  v25 = [v11 interfaceWithProtocol_];
  type metadata accessor for TransactionUIManager(0);
  v12 = swift_allocObject();
  *(v12 + 128) = 0;
  *(v12 + 16) = 0;
  *(v12 + 24) = 0;
  *(v12 + 64) = 0;
  *(v12 + 72) = 0;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  *(v12 + 112) = 0;
  v24 = sub_26127BBE0();
  sub_2613A174C();
  v32 = MEMORY[0x277D84F90];
  sub_26127E054(&qword_281451970, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F460, qword_2613A4D60);
  sub_26127DF9C(qword_281451988, &qword_27FE9F460, qword_2613A4D60);
LABEL_6:
  sub_2613A203C();
  (*(v5 + 104))(v28, *MEMORY[0x277D85268], v27);
  v14 = sub_2613A1E2C();
  v15 = 0;
  *(v12 + 120) = v14;
  v16 = 0xE000000000000000;
LABEL_10:
  v20 = v29;
  *(v12 + 32) = v30;
  *(v12 + 40) = v20;
  *(v12 + 48) = v15;
  *(v12 + 56) = v16;
  v21 = v25;
  *(v12 + 80) = v26;
  *(v12 + 88) = v21;
  return swift_dynamicCastClassUnconditional();
}

unint64_t sub_26127BB94(uint64_t a1, uint64_t a2)
{
  v2 = sub_2613A228C();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_26127BBE0()
{
  result = qword_281451968;
  if (!qword_281451968)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_281451968);
  }

  return result;
}

void sub_26127BC3C()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v15[-v3];
  v5 = sub_26129B684();
  sub_26125A870(v5, v4, &qword_27FE9F560, &qword_2613A3CB0);
  v6 = sub_2613A124C();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(v4, 1, v6) == 1)
  {
    sub_26124C718(v4, &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {

    v8 = sub_2613A122C();
    v9 = sub_2613A1D9C();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v16[0] = v11;
      *v10 = 136446210;
      *(v10 + 4) = sub_26124C11C(*(v1 + 32), *(v1 + 40), v16);
      _os_log_impl(&dword_261243000, v8, v9, "%{public}s finished", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v11);
      MEMORY[0x266701350](v11, -1, -1);
      MEMORY[0x266701350](v10, -1, -1);
    }

    (*(v7 + 8))(v4, v6);
  }

  swift_beginAccess();
  *(v1 + 16) = 0;
  v12 = sub_261275B28();
  v13 = (*(*v1 + 240))(v12);
  [v13 invalidate];

  swift_beginAccess();
  v14 = *(v1 + 64);
  *(v1 + 64) = 0;
}

void sub_26127BEAC()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v13[-1] - v3;
  v5 = sub_26129B684();
  sub_26125A870(v5, v4, &qword_27FE9F560, &qword_2613A3CB0);
  v6 = sub_2613A124C();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(v4, 1, v6) == 1)
  {
    sub_26124C718(v4, &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {

    v8 = sub_2613A122C();
    v9 = sub_2613A1D9C();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v13[0] = v11;
      *v10 = 136446210;
      *(v10 + 4) = sub_26124C11C(*(v1 + 32), *(v1 + 40), v13);
      _os_log_impl(&dword_261243000, v8, v9, "%{public}s finished", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v11);
      MEMORY[0x266701350](v11, -1, -1);
      MEMORY[0x266701350](v10, -1, -1);
    }

    (*(v7 + 8))(v4, v6);
  }

  swift_beginAccess();
  *(v1 + 16) = 0;
  sub_261275B28();
  sub_2612775DC();
}

unint64_t sub_26127C0E8(uint64_t a1)
{
  v218[107] = *MEMORY[0x277D85DE8];
  v2 = sub_26139FEEC();
  v216 = *(v2 - 8);
  v217 = v2;
  MEMORY[0x28223BE20](v2);
  v215 = &v200[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v211 = sub_26139FA8C();
  v206 = *(v211 - 8);
  MEMORY[0x28223BE20](v211);
  v210 = &v200[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v8 = &v200[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = MEMORY[0x28223BE20](v6);
  v203 = &v200[-v10];
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v200[-v12];
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v200[-v15];
  MEMORY[0x28223BE20](v14);
  v204 = &v200[-v17];
  v18 = sub_26139F8EC();
  v213 = *(v18 - 8);
  v214 = v18;
  v19 = MEMORY[0x28223BE20](v18);
  v205 = &v200[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v21 = MEMORY[0x28223BE20](v19);
  v209 = &v200[-v22];
  v23 = MEMORY[0x28223BE20](v21);
  v208 = &v200[-v24];
  v25 = MEMORY[0x28223BE20](v23);
  v207 = &v200[-v26];
  MEMORY[0x28223BE20](v25);
  v212 = &v200[-v27];
  v28 = sub_26139F97C();
  v29 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v31 = &v200[-((v30 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v32 = type metadata accessor for UIContextType(0);
  MEMORY[0x28223BE20](v32);
  v34 = &v200[-((v33 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_26127DFF0(a1, v34);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v46 = v206;
      v47 = v210;
      v48 = v211;
      (*(v206 + 32))(v210, v34, v211);
      v49 = sub_26127E054(&qword_27FE9F4C8, MEMORY[0x277D43818], MEMORY[0x277D43820]);
      v50 = sub_26124AEF8(0, 0, v48, v49);
      if (v51 >> 60 != 15)
      {
        v105 = v50;
        v106 = v51;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F2E8, &unk_2613A43A0);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_2613A4310;
        v108 = v212;
        v109 = v213;
        v110 = v46;
        v111 = v214;
        (*(v213 + 104))(v212, *MEMORY[0x277D43730], v214);
        v112 = sub_26139F8DC();
        v114 = v113;
        (*(v109 + 8))(v108, v111);
        *(inited + 32) = v112;
        *(inited + 72) = MEMORY[0x277CC9318];
        *(inited + 40) = v114;
        *(inited + 48) = v105;
        *(inited + 56) = v106;
        v115 = sub_261259E78(inited);
        swift_setDeallocating();
        sub_26124C718(inited + 32, &qword_27FE9F2F0, &qword_2613A4BD0);
        (*(v110 + 8))(v210, v211);
        return v115;
      }

      v52 = sub_26129B744();
      sub_26125A870(v52, v16, &qword_27FE9F560, &qword_2613A3CB0);
      v53 = sub_2613A124C();
      v54 = *(v53 - 8);
      if ((*(v54 + 48))(v16, 1, v53) != 1)
      {
        v127 = sub_2613A122C();
        v128 = sub_2613A1D8C();
        if (os_log_type_enabled(v127, v128))
        {
          v129 = swift_slowAlloc();
          *v129 = 0;
          _os_log_impl(&dword_261243000, v127, v128, "Unable to encode registration request", v129, 2u);
          MEMORY[0x266701350](v129, -1, -1);
        }

        (*(v46 + 8))(v47, v48);
        (*(v54 + 8))(v16, v53);
        return 0;
      }

      (*(v46 + 8))(v47, v48);
      v55 = v16;
    }

    else
    {
      v98 = v217;
      (*(v216 + 32))(v215, v34, v217);
      v99 = sub_26127E054(&qword_27FE9F4C0, MEMORY[0x277D439D0], MEMORY[0x277D439D8]);
      v100 = sub_26124AEF8(0, 0, v98, v99);
      if (v101 >> 60 != 15)
      {
        v210 = v100;
        v211 = v101;
        type metadata accessor for Mock();
        LODWORD(v205) = sub_26129B0F4(14);
        if (sub_26129B0F4(16))
        {
          v206 = 60;
        }

        else
        {
          v206 = sub_2613A0D0C();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F2E8, &unk_2613A43A0);
        v133 = swift_initStackObject();
        *(v133 + 16) = xmmword_2613A4D40;
        v134 = v212;
        v135 = v213;
        v136 = *(v213 + 104);
        v137 = v214;
        v136(v212, *MEMORY[0x277D43750], v214);
        v138 = sub_26139F8DC();
        v140 = v139;
        v141 = *(v135 + 8);
        v141(v134, v137);
        *(v133 + 32) = v138;
        v213 = v133 + 32;
        *(v133 + 40) = v140;
        v142 = sub_2613A026C();
        *(v133 + 72) = MEMORY[0x277D83B88];
        *(v133 + 48) = v142;
        v143 = v207;
        v136(v207, *MEMORY[0x277D43758], v137);
        v144 = sub_26139F8DC();
        v146 = v145;
        v141(v143, v137);
        *(v133 + 80) = v144;
        *(v133 + 88) = v146;
        *(v133 + 120) = MEMORY[0x277CC9318];
        v147 = v210;
        v148 = v211;
        *(v133 + 96) = v210;
        *(v133 + 104) = v148;
        v149 = v208;
        v136(v208, *MEMORY[0x277D43740], v137);
        sub_26124C778(v147, v148);
        v150 = sub_26139F8DC();
        v152 = v151;
        v141(v149, v137);
        *(v133 + 128) = v150;
        *(v133 + 136) = v152;
        *(v133 + 168) = MEMORY[0x277D839B0];
        *(v133 + 144) = v205 & 1;
        v153 = v209;
        v136(v209, *MEMORY[0x277D43748], v137);
        v154 = sub_26139F8DC();
        v156 = v155;
        v141(v153, v137);
        *(v133 + 176) = v154;
        *(v133 + 184) = v156;
        *(v133 + 216) = MEMORY[0x277D83B88];
        *(v133 + 192) = v206;
        v191 = sub_261259E78(v133);
        swift_setDeallocating();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F2F0, &qword_2613A4BD0);
        swift_arrayDestroy();
        sub_26124A168(v210, v211);
        (*(v216 + 8))(v215, v217);
        return v191;
      }

      v102 = sub_26129BB98();
      sub_26125A870(v102, v13, &qword_27FE9F560, &qword_2613A3CB0);
      v103 = sub_2613A124C();
      v104 = *(v103 - 8);
      if ((*(v104 + 48))(v13, 1, v103) != 1)
      {
        v130 = sub_2613A122C();
        v131 = sub_2613A1D8C();
        if (os_log_type_enabled(v130, v131))
        {
          v132 = swift_slowAlloc();
          *v132 = 0;
          _os_log_impl(&dword_261243000, v130, v131, "Unable to encode identity request", v132, 2u);
          MEMORY[0x266701350](v132, -1, -1);
        }

        (*(v216 + 8))(v215, v217);
        (*(v104 + 8))(v13, v103);
        return 0;
      }

      (*(v216 + 8))(v215, v217);
      v55 = v13;
    }
  }

  else if (EnumCaseMultiPayload)
  {
    v57 = *v34;
    v56 = *(v34 + 1);
    v58 = *(v34 + 2);
    v59 = v34[24];
    v60 = objc_opt_self();
    v218[0] = 0;
    v61 = [v60 archivedDataWithRootObject:v58 requiringSecureCoding:1 error:v218];
    v62 = v218[0];
    if (v61)
    {
      v63 = sub_26139F01C();
      v216 = v64;
      v217 = v63;

      type metadata accessor for Mock();
      LODWORD(v211) = sub_26129B0F4(14);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F2E8, &unk_2613A43A0);
      v65 = swift_initStackObject();
      *(v65 + 16) = xmmword_2613A4D50;
      v66 = *MEMORY[0x277D43750];
      LODWORD(v210) = v59;
      v68 = v212;
      v67 = v213;
      v206 = v56;
      v215 = v58;
      v69 = *(v213 + 104);
      v204 = v57;
      v70 = v214;
      v69(v212, v66, v214);
      v71 = sub_26139F8DC();
      v73 = v72;
      v74 = *(v67 + 8);
      v74(v68, v70);
      *(v65 + 32) = v71;
      v213 = v65 + 32;
      *(v65 + 40) = v73;
      v75 = sub_2613A026C();
      *(v65 + 72) = MEMORY[0x277D83B88];
      *(v65 + 48) = v75;
      v76 = v207;
      v69(v207, *MEMORY[0x277D43768], v70);
      v77 = sub_26139F8DC();
      v79 = v78;
      v74(v76, v70);
      *(v65 + 80) = v77;
      *(v65 + 88) = v79;
      *(v65 + 120) = MEMORY[0x277D837D0];
      v80 = v206;
      *(v65 + 96) = v204;
      *(v65 + 104) = v80;
      v81 = v208;
      v69(v208, *MEMORY[0x277D43770], v70);
      v82 = sub_26139F8DC();
      v84 = v83;
      v74(v81, v70);
      *(v65 + 128) = v82;
      *(v65 + 136) = v84;
      *(v65 + 168) = MEMORY[0x277CC9318];
      v86 = v216;
      v85 = v217;
      *(v65 + 144) = v217;
      *(v65 + 152) = v86;
      v87 = v209;
      v69(v209, *MEMORY[0x277D43738], v70);
      sub_26124C778(v85, v86);
      v88 = sub_26139F8DC();
      v90 = v89;
      v74(v87, v70);
      v91 = MEMORY[0x277D839B0];
      *(v65 + 176) = v88;
      *(v65 + 184) = v90;
      *(v65 + 216) = v91;
      *(v65 + 192) = v210;
      v92 = v205;
      v69(v205, *MEMORY[0x277D43740], v70);
      v93 = sub_26139F8DC();
      v95 = v94;
      v74(v92, v70);
      *(v65 + 224) = v93;
      *(v65 + 232) = v95;
      *(v65 + 264) = v91;
      *(v65 + 240) = v211 & 1;
      v96 = sub_261259E78(v65);
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F2F0, &qword_2613A4BD0);
      swift_arrayDestroy();

      sub_26124C6C4(v217, v216);
      return v96;
    }

    v122 = v62;

    v123 = sub_26139EE7C();

    swift_willThrow();
    v124 = sub_26129B704();
    sub_26125A870(v124, v8, &qword_27FE9F560, &qword_2613A3CB0);
    v125 = sub_2613A124C();
    v126 = *(v125 - 8);
    if ((*(v126 + 48))(v8, 1, v125) != 1)
    {
      v197 = sub_2613A122C();
      v198 = sub_2613A1D8C();
      if (os_log_type_enabled(v197, v198))
      {
        v199 = swift_slowAlloc();
        *v199 = 0;
        _os_log_impl(&dword_261243000, v197, v198, "Unable to encode pin configuration", v199, 2u);
        MEMORY[0x266701350](v199, -1, -1);
      }

      (*(v126 + 8))(v8, v125);
      return 0;
    }

    v55 = v8;
  }

  else
  {
    v36 = *v34;
    v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F468, &unk_2613A4D80);
    v38 = v34[*(v37 + 64)];
    (*(v29 + 32))(v31, &v34[*(v37 + 48)], v28);
    v39 = objc_opt_self();
    v218[0] = 0;
    v40 = [v39 archivedDataWithRootObject:v36 requiringSecureCoding:1 error:v218];
    v41 = v218[0];
    if (v40)
    {
      v42 = sub_26139F01C();
      v44 = v43;

      sub_26139ECEC();
      swift_allocObject();
      sub_26139ECDC();
      sub_26127E054(&qword_27FE9F4D0, MEMORY[0x277D43798], MEMORY[0x277D437A0]);
      v45 = sub_26139ECCC();
      v217 = v42;
      v215 = v45;
      v211 = v157;

      type metadata accessor for Mock();
      LODWORD(v203) = sub_26129B0F4(14);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F2E8, &unk_2613A43A0);
      v158 = swift_initStackObject();
      v210 = v31;
      v159 = v158;
      *(v158 + 16) = xmmword_2613A4D50;
      v160 = *MEMORY[0x277D43750];
      v161 = v213;
      v204 = v36;
      v162 = *(v213 + 104);
      v202 = v28;
      v163 = v212;
      v206 = v29;
      v164 = v214;
      v162(v212, v160, v214);
      v165 = sub_26139F8DC();
      v216 = v44;
      v167 = v166;
      v201 = v38;
      v168 = *(v161 + 8);
      v168(v163, v164);
      *(v159 + 32) = v165;
      v213 = v159 + 32;
      *(v159 + 40) = v167;
      v169 = sub_2613A026C();
      *(v159 + 72) = MEMORY[0x277D83B88];
      *(v159 + 48) = v169;
      v170 = v207;
      v162(v207, *MEMORY[0x277D43728], v164);
      v171 = sub_26139F8DC();
      v173 = v172;
      v168(v170, v164);
      *(v159 + 80) = v171;
      *(v159 + 88) = v173;
      *(v159 + 120) = MEMORY[0x277CC9318];
      v175 = v216;
      v174 = v217;
      *(v159 + 96) = v217;
      *(v159 + 104) = v175;
      v176 = v208;
      v162(v208, *MEMORY[0x277D43760], v164);
      sub_26124C778(v174, v175);
      v177 = sub_26139F8DC();
      v179 = v178;
      v168(v176, v164);
      *(v159 + 128) = v177;
      *(v159 + 136) = v179;
      *(v159 + 168) = MEMORY[0x277CC9318];
      v180 = v215;
      v181 = v211;
      *(v159 + 144) = v215;
      *(v159 + 152) = v181;
      v182 = v209;
      v162(v209, *MEMORY[0x277D43738], v164);
      sub_26124C778(v180, v181);
      v183 = sub_26139F8DC();
      v185 = v184;
      v168(v182, v164);
      v186 = MEMORY[0x277D839B0];
      *(v159 + 176) = v183;
      *(v159 + 184) = v185;
      *(v159 + 216) = v186;
      *(v159 + 192) = v201;
      v187 = v205;
      v162(v205, *MEMORY[0x277D43740], v164);
      v188 = sub_26139F8DC();
      v190 = v189;
      v168(v187, v164);
      *(v159 + 224) = v188;
      *(v159 + 232) = v190;
      *(v159 + 264) = v186;
      *(v159 + 240) = v203 & 1;
      v191 = sub_261259E78(v159);
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F2F0, &qword_2613A4BD0);
      swift_arrayDestroy();

      sub_26124C6C4(v217, v216);
      sub_26124C6C4(v215, v211);
      (*(v206 + 8))(v210, v202);
      return v191;
    }

    v116 = v41;
    v117 = sub_26139EE7C();

    swift_willThrow();
    v118 = sub_26129B6C4();
    v119 = v203;
    sub_26125A870(v118, v203, &qword_27FE9F560, &qword_2613A3CB0);
    v120 = sub_2613A124C();
    v121 = *(v120 - 8);
    if ((*(v121 + 48))(v119, 1, v120) != 1)
    {
      v192 = sub_2613A122C();
      v193 = sub_2613A1D8C();
      if (os_log_type_enabled(v192, v193))
      {
        v194 = v36;
        v195 = swift_slowAlloc();
        *v195 = 0;
        _os_log_impl(&dword_261243000, v192, v193, "Unable to encode transaction request", v195, 2u);
        MEMORY[0x266701350](v195, -1, -1);
        v196 = v194;
        v119 = v203;
      }

      else
      {
        v196 = v192;
        v192 = v36;
      }

      (*(v29 + 8))(v31, v28);
      (*(v121 + 8))(v119, v120);
      return 0;
    }

    (*(v29 + 8))(v31, v28);

    v55 = v119;
  }

  sub_26124C718(v55, &qword_27FE9F560, &qword_2613A3CB0);
  return 0;
}

uint64_t sub_26127D754(uint64_t a1)
{
  v2 = type metadata accessor for UIContextType(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_26127D884(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_26127D8C0()
{
  result = qword_27FE9F470;
  if (!qword_27FE9F470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE9F470);
  }

  return result;
}

unint64_t sub_26127D918()
{
  result = qword_27FE9F478;
  if (!qword_27FE9F478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE9F478);
  }

  return result;
}

unint64_t sub_26127D970()
{
  result = qword_27FE9F480;
  if (!qword_27FE9F480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE9F480);
  }

  return result;
}

unint64_t sub_26127D9C8()
{
  result = qword_27FE9F488;
  if (!qword_27FE9F488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE9F488);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SEEnvironmentType(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for SEEnvironmentType(uint64_t result, unsigned int a2, unsigned int a3)
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

void sub_26127DD28(uint64_t a1)
{
  sub_26127DDFC(319);
  if (v1 <= 0x3F)
  {
    sub_26127DE78(319);
    if (v2 <= 0x3F)
    {
      sub_26127DEEC(319, &qword_27FE9F4A0, MEMORY[0x277D43818]);
      if (v3 <= 0x3F)
      {
        sub_26127DEEC(319, &qword_27FE9F4A8, MEMORY[0x277D439D0]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        }
      }
    }
  }
}

void sub_26127DDFC(uint64_t a1)
{
  if (!qword_27FE9F490)
  {
    sub_26139FD4C();
    sub_26139F97C();
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &qword_27FE9F490);
    }
  }
}

void sub_26127DE78(uint64_t a1)
{
  if (!qword_27FE9F498)
  {
    sub_26139FA7C();
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &qword_27FE9F498);
    }
  }
}

void sub_26127DEEC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void))
{
  if (!*a2)
  {
    v4 = a3(0);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_26127DF9C(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_26127DFF0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UIContextType(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26127E054(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

BOOL sub_26127E13C(uint64_t a1)
{
  sub_2612FF320();
  sub_261273F80();
  return (sub_2613A185C() & 1) == 0;
}

unint64_t sub_26127E19C(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v5 = 0x44656761726F7473;
    v6 = 0x797269707865;
    if (a1 != 8)
    {
      v6 = 0xD000000000000015;
    }

    if (a1 != 7)
    {
      v5 = v6;
    }

    v7 = 0xD000000000000010;
    if (a1 != 5)
    {
      v7 = 0x4449656C646E7562;
    }

    if (a1 <= 6u)
    {
      return v7;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 25705;
    v2 = 0x746E61686372656DLL;
    v3 = 0x4972656E74726170;
    if (a1 != 3)
    {
      v3 = 0xD000000000000014;
    }

    if (a1 != 2)
    {
      v2 = v3;
    }

    if (a1)
    {
      v1 = 0x496E6F6973736573;
    }

    if (a1 <= 1u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_26127E300@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_26127EB54(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_26127E328(uint64_t a1)
{
  v2 = sub_26127EA58();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26127E364(uint64_t a1)
{
  v2 = sub_26127EA58();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26127E3A0(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F4D8, &qword_2613A51E0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v10[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26127EA58();
  sub_2613A262C();
  LOBYTE(v11) = 0;
  sub_2613A238C();
  if (!v2)
  {
    LOBYTE(v11) = 1;
    sub_2613A238C();
    LOBYTE(v11) = 2;
    sub_2613A238C();
    LOBYTE(v11) = 3;
    sub_2613A238C();
    LOBYTE(v11) = 4;
    sub_2613A238C();
    LOBYTE(v11) = 5;
    sub_2613A238C();
    LOBYTE(v11) = 6;
    sub_2613A238C();
    LOBYTE(v11) = 7;
    sub_2613A23AC();
    v11 = *(v3 + 120);
    v10[15] = 8;
    sub_26127EAAC();
    sub_2613A23CC();
    LOBYTE(v11) = 9;
    sub_2613A239C();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_26127E660(uint64_t a1)
{
  sub_2613A19DC();
  sub_2613A19DC();
  sub_2613A19DC();
  sub_2613A19DC();
  sub_2613A19DC();
  sub_2613A19DC();
  sub_2613A19DC();
  v2 = *(v1 + 112);
  if (v2 == 0.0)
  {
    v2 = 0.0;
  }

  MEMORY[0x266700A30](*&v2);
  sub_26127EB00();
  sub_2613A183C();
  return sub_2613A258C();
}

uint64_t sub_26127E734@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, double a10@<D0>, double a11@<D1>, __int128 a12, __int128 a13, uint64_t a14, uint64_t a15, int a16, char a17)
{
  *a9 = result;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;
  *(a9 + 56) = a8;
  *(a9 + 64) = a12;
  *(a9 + 80) = a13;
  *(a9 + 96) = a14;
  *(a9 + 104) = a15;
  *(a9 + 112) = a10;
  *(a9 + 120) = a16;
  *(a9 + 128) = a11;
  *(a9 + 136) = a17;
  return result;
}

__n128 sub_26127E770@<Q0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_26127EE98(a2, v8);
  if (!v2)
  {
    v5 = v9[0];
    *(a1 + 96) = v8[6];
    *(a1 + 112) = v5;
    *(a1 + 121) = *(v9 + 9);
    v6 = v8[3];
    *(a1 + 32) = v8[2];
    *(a1 + 48) = v6;
    v7 = v8[5];
    *(a1 + 64) = v8[4];
    *(a1 + 80) = v7;
    result = v8[1];
    *a1 = v8[0];
    *(a1 + 16) = result;
  }

  return result;
}

uint64_t sub_26127E7E4()
{
  sub_2613A256C();
  sub_26127E660(v1);
  return sub_2613A25CC();
}

uint64_t sub_26127E828(uint64_t a1)
{
  sub_2613A256C();
  sub_26127E660(v2);
  return sub_2613A25CC();
}

uint64_t sub_26127E864@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t sub_26127E870(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[7];
  v11[6] = a1[6];
  v12[0] = v2;
  *(v12 + 9) = *(a1 + 121);
  v3 = a1[3];
  v11[2] = a1[2];
  v11[3] = v3;
  v4 = a1[5];
  v11[4] = a1[4];
  v11[5] = v4;
  v5 = a1[1];
  v11[0] = *a1;
  v11[1] = v5;
  v6 = a2[7];
  v13[6] = a2[6];
  v14[0] = v6;
  *(v14 + 9) = *(a2 + 121);
  v7 = a2[3];
  v13[2] = a2[2];
  v13[3] = v7;
  v8 = a2[5];
  v13[4] = a2[4];
  v13[5] = v8;
  v9 = a2[1];
  v13[0] = *a2;
  v13[1] = v9;
  return sub_26127E8F8(v11, v13) & 1;
}

uint64_t sub_26127E8F8(uint64_t *a1, uint64_t a2)
{
  v4 = *a1 == *a2 && a1[1] == *(a2 + 8);
  if (v4 || (sub_2613A241C()) && (a1[2] == *(a2 + 16) ? (v5 = a1[3] == *(a2 + 24)) : (v5 = 0), (v5 || (sub_2613A241C()) && (a1[4] == *(a2 + 32) && a1[5] == *(a2 + 40) || (sub_2613A241C())) && (a1[6] == *(a2 + 48) && a1[7] == *(a2 + 56) || (sub_2613A241C()) && (a1[8] == *(a2 + 64) && a1[9] == *(a2 + 72) || (sub_2613A241C()) && (a1[10] == *(a2 + 80) && a1[11] == *(a2 + 88) || (sub_2613A241C()) && (a1[12] == *(a2 + 96) && a1[13] == *(a2 + 104) || (sub_2613A241C()) && *(a1 + 14) == *(a2 + 112) && sub_2612FF3B8(*(a1 + 30), *(a2 + 120), *(a1 + 16), *(a2 + 128)))
  {
    v6 = *(a1 + 136) ^ *(a2 + 136) ^ 1;
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

unint64_t sub_26127EA58()
{
  result = qword_27FEA2300[0];
  if (!qword_27FEA2300[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FEA2300);
  }

  return result;
}

unint64_t sub_26127EAAC()
{
  result = qword_27FE9F4E0;
  if (!qword_27FE9F4E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE9F4E0);
  }

  return result;
}

unint64_t sub_26127EB00()
{
  result = qword_27FE9F4E8;
  if (!qword_27FE9F4E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE9F4E8);
  }

  return result;
}

uint64_t sub_26127EB54(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_2613A241C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x496E6F6973736573 && a2 == 0xE900000000000044 || (sub_2613A241C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x746E61686372656DLL && a2 == 0xEA00000000004449 || (sub_2613A241C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x4972656E74726170 && a2 == 0xE900000000000044 || (sub_2613A241C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000014 && 0x80000002613B7ED0 == a2 || (sub_2613A241C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000010 && 0x80000002613B8F50 == a2 || (sub_2613A241C() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x4449656C646E7562 && a2 == 0xE800000000000000 || (sub_2613A241C() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x44656761726F7473 && a2 == 0xEF6E6F6974617275 || (sub_2613A241C() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x797269707865 && a2 == 0xE600000000000000 || (sub_2613A241C() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000015 && 0x80000002613B8F70 == a2)
  {

    return 9;
  }

  else
  {
    v6 = sub_2613A241C();

    if (v6)
    {
      return 9;
    }

    else
    {
      return 10;
    }
  }
}

uint64_t sub_26127EE98@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F4F8, &unk_2613A5460);
  v5 = *(v44 - 8);
  MEMORY[0x28223BE20](v44);
  v7 = &v32 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26127EA58();
  sub_2613A260C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  v43 = a2;
  LOBYTE(v53) = 0;
  v8 = sub_2613A22DC();
  v42 = v9;
  LOBYTE(v53) = 1;
  v10 = sub_2613A22DC();
  v41 = v11;
  v37 = v10;
  LOBYTE(v53) = 2;
  v36 = sub_2613A22DC();
  v40 = v12;
  LOBYTE(v53) = 3;
  v35 = sub_2613A22DC();
  v39 = v13;
  LOBYTE(v53) = 4;
  v34 = sub_2613A22DC();
  v38 = v14;
  LOBYTE(v53) = 5;
  *&v33 = sub_2613A22DC();
  *(&v33 + 1) = v15;
  LOBYTE(v53) = 6;
  *&v32 = sub_2613A22DC();
  *(&v32 + 1) = v16;
  LOBYTE(v53) = 7;
  sub_2613A22FC();
  v18 = v17;
  LOBYTE(v45) = 8;
  sub_26127F6C4();
  sub_2613A231C();
  v69 = v53;
  v19 = v54;
  v70 = 9;
  v20 = sub_2613A22EC();
  (*(v5 + 8))(v7, v44);
  LODWORD(v44) = v20 & 1;
  v22 = v41;
  v21 = v42;
  *&v45 = v8;
  *(&v45 + 1) = v42;
  *&v46 = v37;
  *(&v46 + 1) = v41;
  v23 = v39;
  v24 = v40;
  *&v47 = v36;
  *(&v47 + 1) = v40;
  *&v48 = v35;
  *(&v48 + 1) = v39;
  v25 = v38;
  *&v49 = v34;
  *(&v49 + 1) = v38;
  v50 = v33;
  v51 = v32;
  *&v52[0] = v18;
  DWORD2(v52[0]) = v69;
  *&v52[1] = v19;
  BYTE8(v52[1]) = v44;
  sub_261274028(&v45, &v53);
  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  v53 = v8;
  v54 = v21;
  v55 = v37;
  v56 = v22;
  v57 = v36;
  v58 = v24;
  v59 = v35;
  v60 = v23;
  v61 = v34;
  v62 = v25;
  v63 = v33;
  v64 = v32;
  v65 = v18;
  v66 = v69;
  v67 = v19;
  v68 = v44;
  result = sub_261273FD4(&v53);
  v27 = v52[0];
  v28 = v43;
  v43[6] = v51;
  v28[7] = v27;
  *(v28 + 121) = *(v52 + 9);
  v29 = v48;
  v28[2] = v47;
  v28[3] = v29;
  v30 = v50;
  v28[4] = v49;
  v28[5] = v30;
  v31 = v46;
  *v28 = v45;
  v28[1] = v31;
  return result;
}

unint64_t sub_26127F468()
{
  result = qword_27FE9F4F0;
  if (!qword_27FE9F4F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE9F4F0);
  }

  return result;
}

__n128 __swift_memcpy137_8(uint64_t a1, uint64_t a2)
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
  *(a1 + 121) = *(a2 + 121);
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  *(a1 + 80) = result;
  return result;
}

uint64_t sub_26127F4F0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 137))
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

uint64_t sub_26127F538(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 136) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 137) = 1;
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

    *(result + 137) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_26127F5C0()
{
  result = qword_27FEA2690[0];
  if (!qword_27FEA2690[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FEA2690);
  }

  return result;
}

unint64_t sub_26127F618()
{
  result = qword_27FEA27A0;
  if (!qword_27FEA27A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEA27A0);
  }

  return result;
}

unint64_t sub_26127F670()
{
  result = qword_27FEA27A8[0];
  if (!qword_27FEA27A8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FEA27A8);
  }

  return result;
}

unint64_t sub_26127F6C4()
{
  result = qword_27FE9F500;
  if (!qword_27FE9F500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE9F500);
  }

  return result;
}

uint64_t sub_26127F718(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  v5 = (v4 + OBJC_IVAR____TtC21ProximityReaderDaemon25DiscoveryAnalyticsManager_analyticsSessionID);
  *v5 = 0;
  v5[1] = 0;
  v6 = (v4 + OBJC_IVAR____TtC21ProximityReaderDaemon25DiscoveryAnalyticsManager_appId);
  *v6 = a1;
  v6[1] = a2;
  sub_26139F9FC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F400, &unk_2613A4A90);
  *(v4 + OBJC_IVAR____TtC21ProximityReaderDaemon25DiscoveryAnalyticsManager_serializer) = sub_26139F8BC();
  return v4;
}

uint64_t sub_26127F7B4(uint64_t a1, uint64_t a2)
{
  v29[1] = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = v29 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE9F580, &qword_2613A5480);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v29 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F508, &qword_2613A5488);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v29 - v9;
  v11 = sub_26139FEAC();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v11);
  v15 = v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v17 = v29 - v16;
  sub_2612816AC(&qword_27FE9F510, MEMORY[0x277D439B0], MEMORY[0x277D439B8]);
  nullsub_1();
  sub_26124B218(v11, v11, v10);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_26124C718(v10, &qword_27FE9F508, &qword_2613A5488);
    v18 = sub_26129B97C();
    sub_26125A870(v18, v4, &qword_27FE9F560, &qword_2613A3CB0);
    v19 = sub_2613A124C();
    v20 = *(v19 - 8);
    if ((*(v20 + 48))(v4, 1, v19) == 1)
    {
      return sub_26124C718(v4, &qword_27FE9F560, &qword_2613A3CB0);
    }

    else
    {
      v26 = sub_2613A122C();
      v27 = sub_2613A1D8C();
      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        *v28 = 0;
        _os_log_impl(&dword_261243000, v26, v27, "DiscoveryAnalyticsManager - sendAnalytics - unable to decode analytics data", v28, 2u);
        MEMORY[0x266701350](v28, -1, -1);
      }

      return (*(v20 + 8))(v4, v19);
    }
  }

  else
  {
    v22 = *(v12 + 32);
    v22(v17, v10, v11);
    v23 = sub_2613A1C1C();
    (*(*(v23 - 8) + 56))(v7, 1, 1, v23);
    (*(v12 + 16))(v15, v17, v11);
    v24 = (*(v12 + 80) + 32) & ~*(v12 + 80);
    v25 = swift_allocObject();
    *(v25 + 16) = 0;
    *(v25 + 24) = 0;
    v22((v25 + v24), v15, v11);
    *(v25 + ((v13 + v24 + 7) & 0xFFFFFFFFFFFFFFF8)) = v29[0];

    sub_261266800(0, 0, v7, &unk_2613A5498, v25);

    return (*(v12 + 8))(v17, v11);
  }
}

uint64_t sub_26127FC58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[86] = a5;
  v5[85] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v5[87] = swift_task_alloc();
  v6 = sub_26139FE6C();
  v5[88] = v6;
  v5[89] = *(v6 - 8);
  v5[90] = swift_task_alloc();
  v5[91] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26127FD60, 0, 0);
}

uint64_t sub_26127FD60()
{
  v99 = v0;
  v1 = *(v0 + 728);
  v2 = *(v0 + 712);
  v3 = *(v0 + 704);
  sub_26139FE4C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F408, &unk_2613A4AB0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2613A5470;
  *(inited + 32) = sub_2613A087C();
  *(inited + 40) = v5;
  sub_26139FE9C();
  v6 = sub_26139FE5C();
  v8 = v7;
  v9 = *(v2 + 8);
  *(v0 + 736) = v9;
  *(v0 + 744) = (v2 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v97 = v9;
  v9(v1, v3);
  v10 = MEMORY[0x277D837D0];
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 48) = v6;
  *(inited + 56) = v8;
  *(inited + 80) = sub_2613A07EC();
  *(inited + 88) = v11;
  v12 = sub_26139FE3C();
  *(inited + 120) = v10;
  *(inited + 96) = v12;
  *(inited + 104) = v13;
  *(inited + 128) = sub_2613A085C();
  *(inited + 136) = v14;
  v15 = sub_26139FE7C();
  *(inited + 168) = v10;
  *(inited + 144) = v15;
  *(inited + 152) = v16;
  *(inited + 176) = sub_2613A06CC();
  *(inited + 184) = v17;
  v18 = sub_26139FE0C();
  *(inited + 216) = v10;
  *(inited + 192) = v18;
  *(inited + 200) = v19;
  *(inited + 224) = sub_2613A064C();
  *(inited + 232) = v20;
  v21 = sub_26139FDFC();
  *(inited + 264) = v10;
  *(inited + 240) = v21;
  *(inited + 248) = v22;
  *(inited + 272) = sub_2613A063C();
  *(inited + 280) = v23;
  v24 = sub_26139FDEC();
  *(inited + 312) = v10;
  *(inited + 288) = v24;
  *(inited + 296) = v25;
  v26 = sub_261268144(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F410, &qword_2613A54F0);
  swift_arrayDestroy();
  if (sub_26139FDDC())
  {
    v27 = *(v0 + 688);
    v28 = sub_2613A07BC();
    v30 = v29;
    v31 = *(v27 + OBJC_IVAR____TtC21ProximityReaderDaemon25DiscoveryAnalyticsManager_appId);
    v32 = *(v27 + OBJC_IVAR____TtC21ProximityReaderDaemon25DiscoveryAnalyticsManager_appId + 8);
    *(v0 + 552) = v10;
    *(v0 + 528) = v31;
    *(v0 + 536) = v32;
    sub_26125A7B0((v0 + 528), (v0 + 560));

    LOBYTE(v32) = swift_isUniquelyReferenced_nonNull_native();
    v98 = v26;
    v33 = *(v0 + 584);
    v34 = __swift_mutable_project_boxed_opaque_existential_0(v0 + 560, v33);
    v35 = *(v33 - 8);
    v36 = swift_task_alloc();
    (*(v35 + 16))(v36, v34, v33);
    sub_261267EDC(*v36, v36[1], v28, v30, v32, &v98);

    __swift_destroy_boxed_opaque_existential_0Tm((v0 + 560));

    v26 = v98;
  }

  v37 = sub_26139FE1C();
  if (v37 != 2)
  {
    v38 = v37;
    v39 = sub_2613A070C();
    v41 = v40;
    *(v0 + 488) = MEMORY[0x277D839B0];
    *(v0 + 464) = v38 & 1;
    sub_26125A7B0((v0 + 464), (v0 + 496));
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v98 = v26;
    v43 = __swift_mutable_project_boxed_opaque_existential_0(v0 + 496, *(v0 + 520));
    sub_2612814D0(*v43, v39, v41, isUniquelyReferenced_nonNull_native, &v98);

    __swift_destroy_boxed_opaque_existential_0Tm((v0 + 496));
    v26 = v98;
  }

  v44 = sub_26139FE2C();
  if (v45)
  {
    v46 = v44;
    v47 = v45;
    v48 = sub_2613A077C();
    v50 = v49;
    *(v0 + 424) = v10;
    *(v0 + 400) = v46;
    *(v0 + 408) = v47;
    sub_26125A7B0((v0 + 400), (v0 + 432));
    LOBYTE(v46) = swift_isUniquelyReferenced_nonNull_native();
    v98 = v26;
    v51 = *(v0 + 456);
    v52 = __swift_mutable_project_boxed_opaque_existential_0(v0 + 432, v51);
    v53 = *(v51 - 8);
    v54 = swift_task_alloc();
    (*(v53 + 16))(v54, v52, v51);
    sub_261267EDC(*v54, v54[1], v48, v50, v46, &v98);

    __swift_destroy_boxed_opaque_existential_0Tm((v0 + 432));

    v26 = v98;
  }

  v55 = sub_26139FE8C();
  if (v56)
  {
    v57 = v55;
    v58 = v56;
    v59 = sub_2613A086C();
    v61 = v60;
    *(v0 + 360) = v10;
    *(v0 + 336) = v57;
    *(v0 + 344) = v58;
    sub_26125A7B0((v0 + 336), (v0 + 368));
    LOBYTE(v57) = swift_isUniquelyReferenced_nonNull_native();
    v98 = v26;
    v62 = *(v0 + 392);
    v63 = __swift_mutable_project_boxed_opaque_existential_0(v0 + 368, v62);
    v64 = *(v62 - 8);
    v65 = swift_task_alloc();
    (*(v64 + 16))(v65, v63, v62);
    sub_261267EDC(*v65, v65[1], v59, v61, v57, &v98);

    __swift_destroy_boxed_opaque_existential_0Tm((v0 + 368));

    v26 = v98;
  }

  *(v0 + 752) = v26;
  v66 = *(v0 + 728);
  v67 = *(v0 + 720);
  v68 = *(v0 + 712);
  v69 = *(v0 + 704);
  sub_26139FE9C();
  v70 = *MEMORY[0x277D43990];
  v71 = *(v68 + 104);
  *(v0 + 760) = v71;
  *(v0 + 768) = (v68 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v71(v67, v70, v69);
  *(v0 + 776) = sub_2612816AC(&qword_27FE9F518, MEMORY[0x277D439A0], MEMORY[0x277D439A8]);
  sub_2613A1B1C();
  sub_2613A1B1C();
  v97(v67, v69);
  v97(v66, v69);
  if (*(v0 + 616) == *(v0 + 624) || (v72 = *(v0 + 728), v73 = *(v0 + 720), v74 = *(v0 + 704), sub_26139FE9C(), v96 = *MEMORY[0x277D43998], (v71)(v73), sub_2613A1B1C(), sub_2613A1B1C(), v97(v73, v74), v97(v72, v74), *(v0 + 632) == *(v0 + 640)))
  {
    v75 = sub_2613A090C();
    v77 = v76;
    *(v0 + 784) = v76;
    v78 = sub_26139FE0C();
    v80 = v79;
    *(v0 + 792) = v79;
    v81 = swift_task_alloc();
    *(v0 + 800) = v81;
    *v81 = v0;
    v81[1] = sub_261280664;

    return MEMORY[0x2821A5168](v75, v77, v78, v80);
  }

  else
  {
    v82 = *(v0 + 760);
    v83 = *(v0 + 736);
    v84 = *(v0 + 728);
    v85 = *(v0 + 720);
    v86 = *(v0 + 704);
    sub_26139FE9C();
    v82(v85, *MEMORY[0x277D43988], v86);
    sub_2613A1B1C();
    sub_2613A1B1C();
    v83(v85, v86);
    v83(v84, v86);
    if (*(v0 + 648) == *(v0 + 656))
    {
      v87 = 1;
    }

    else
    {
      v88 = *(v0 + 760);
      v89 = *(v0 + 736);
      v90 = *(v0 + 728);
      v91 = *(v0 + 720);
      v92 = *(v0 + 704);
      sub_26139FE9C();
      v88(v91, v96, v92);
      sub_2613A1B1C();
      sub_2613A1B1C();
      v89(v91, v92);
      v89(v90, v92);
      v87 = *(v0 + 664) == *(v0 + 672);
    }

    v93 = swift_task_alloc();
    *(v0 + 816) = v93;
    *v93 = v0;
    v93[1] = sub_261280B4C;
    v94 = *(v0 + 752);

    return sub_2612816F4(v94, v87);
  }
}

uint64_t sub_261280664(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v3[74] = v2;
  v3[75] = a1;
  v3[76] = a2;
  v3[101] = a2;

  return MEMORY[0x2822009F8](sub_2612807A8, 0, 0);
}

uint64_t sub_2612807A8()
{
  v1 = v0[101];
  if (v1)
  {
    v2 = (v0[86] + OBJC_IVAR____TtC21ProximityReaderDaemon25DiscoveryAnalyticsManager_analyticsSessionID);
    *v2 = v0[75];
    v2[1] = v1;

    v3 = v0[95];
    v4 = v0[92];
    v5 = v0[91];
    v6 = v0[90];
    v7 = v0[88];
    sub_26139FE9C();
    v3(v6, *MEMORY[0x277D43988], v7);
    sub_2613A1B1C();
    sub_2613A1B1C();
    v4(v6, v7);
    v4(v5, v7);
    if (v0[81] == v0[82])
    {
      v8 = 1;
    }

    else
    {
      v13 = v0[95];
      v14 = v0[92];
      v15 = v0[91];
      v16 = v0[90];
      v17 = v0[88];
      sub_26139FE9C();
      v13(v16, *MEMORY[0x277D43998], v17);
      sub_2613A1B1C();
      sub_2613A1B1C();
      v14(v16, v17);
      v14(v15, v17);
      v8 = v0[83] == v0[84];
    }

    v18 = swift_task_alloc();
    v0[102] = v18;
    *v18 = v0;
    v18[1] = sub_261280B4C;
    v19 = v0[94];

    return sub_2612816F4(v19, v8);
  }

  else
  {
    v9 = v0[87];

    v10 = sub_26129B97C();
    sub_26125A870(v10, v9, &qword_27FE9F560, &qword_2613A3CB0);
    v11 = sub_2613A124C();
    v12 = *(v11 - 8);
    if ((*(v12 + 48))(v9, 1, v11) == 1)
    {
      sub_26124C718(v0[87], &qword_27FE9F560, &qword_2613A3CB0);
    }

    else
    {
      v21 = sub_2613A122C();
      v22 = sub_2613A1D8C();
      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        *v23 = 0;
        _os_log_impl(&dword_261243000, v21, v22, "DiscoveryAnalyticsManager - sendEvent - could not create analytics session", v23, 2u);
        MEMORY[0x266701350](v23, -1, -1);
      }

      v24 = v0[87];

      (*(v12 + 8))(v24, v11);
    }

    v25 = v0[1];

    return v25();
  }
}

uint64_t sub_261280B4C()
{

  return MEMORY[0x2822009F8](sub_261280C64, 0, 0);
}

uint64_t sub_261280C64()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_261280CDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  *(v6 + 112) = a6;
  *(v6 + 80) = a4;
  *(v6 + 88) = a5;
  *(v6 + 64) = a2;
  *(v6 + 72) = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  *(v6 + 96) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_261280D80, 0, 0);
}

uint64_t sub_261280D80()
{
  v30 = v0;
  v1 = *(v0 + 64);
  v2 = sub_2613A087C();
  if (*(v1 + 16))
  {
    v4 = sub_26124E5EC(v2, v3);
    v6 = v5;

    if (v6)
    {
      sub_26124C994(*(*(v0 + 64) + 56) + 32 * v4, v0 + 16);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE9F520, &unk_2613AA870);
      if (swift_dynamicCast())
      {
        v7 = *(v0 + 96);
        v9 = *(v0 + 48);
        v8 = *(v0 + 56);
        v10 = sub_26129B97C();
        sub_26125A870(v10, v7, &qword_27FE9F560, &qword_2613A3CB0);
        v11 = sub_2613A124C();
        v12 = *(v11 - 8);
        v13 = (*(v12 + 48))(v7, 1, v11);
        v14 = *(v0 + 96);
        if (v13 == 1)
        {

          sub_26124C718(v14, &qword_27FE9F560, &qword_2613A3CB0);
        }

        else
        {

          v20 = sub_2613A122C();
          v21 = sub_2613A1D7C();

          if (os_log_type_enabled(v20, v21))
          {
            v22 = swift_slowAlloc();
            v23 = swift_slowAlloc();
            v29 = v23;
            *v22 = 136315394;
            v24 = sub_26124C11C(v9, v8, &v29);

            *(v22 + 4) = v24;
            *(v22 + 12) = 2080;
            v25 = sub_2613A180C();
            v27 = sub_26124C11C(v25, v26, &v29);

            *(v22 + 14) = v27;
            _os_log_impl(&dword_261243000, v20, v21, "Sending event: [%s] [%s]", v22, 0x16u);
            swift_arrayDestroy();
            MEMORY[0x266701350](v23, -1, -1);
            MEMORY[0x266701350](v22, -1, -1);
          }

          else
          {
          }

          (*(v12 + 8))(*(v0 + 96), v11);
        }
      }
    }
  }

  else
  {
  }

  v15 = swift_task_alloc();
  *(v0 + 104) = v15;
  *v15 = v0;
  v15[1] = sub_2612810E4;
  v16 = *(v0 + 112);
  v18 = *(v0 + 80);
  v17 = *(v0 + 88);
  v19 = *(v0 + 64);

  return MEMORY[0x2821A5190](v18, v17, v19, v16);
}

uint64_t sub_2612810E4()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_2612811F8()
{
  v1 = OBJC_IVAR____TtC21ProximityReaderDaemon25DiscoveryAnalyticsManager_manager;
  v2 = sub_26139FA0C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_2612812CC()
{
  v2 = *(sub_26139FEAC() - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = *(v0 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8));
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_261262AA4;

  return sub_26127FC58(v5, v6, v7, v0 + v3, v4);
}

uint64_t type metadata accessor for DiscoveryAnalyticsManager(uint64_t a1)
{
  result = qword_27FEA2850;
  if (!qword_27FEA2850)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_261281420(uint64_t a1)
{
  result = sub_26139FA0C();
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

_OWORD *sub_2612814D0(char a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5)
{
  LOBYTE(v23) = a1;
  v24 = MEMORY[0x277D839B0];
  v9 = *a5;
  v11 = sub_26124E5EC(a2, a3);
  v12 = v9[2];
  v13 = (v10 & 1) == 0;
  v14 = v12 + v13;
  if (__OFADD__(v12, v13))
  {
    __break(1u);
    goto LABEL_14;
  }

  v15 = v10;
  v16 = v9[3];
  if (v16 >= v14 && (a4 & 1) != 0)
  {
LABEL_7:
    v17 = *a5;
    if (v15)
    {
LABEL_8:
      v18 = (v17[7] + 32 * v11);
      __swift_destroy_boxed_opaque_existential_0Tm(v18);
      return sub_26125A7B0(&v23, v18);
    }

    goto LABEL_11;
  }

  if (v16 >= v14 && (a4 & 1) == 0)
  {
    sub_261267D38();
    goto LABEL_7;
  }

  sub_261267A80(v14, a4 & 1);
  v20 = sub_26124E5EC(a2, a3);
  if ((v15 & 1) != (v21 & 1))
  {
LABEL_14:
    result = sub_2613A249C();
    __break(1u);
    return result;
  }

  v11 = v20;
  v17 = *a5;
  if (v15)
  {
    goto LABEL_8;
  }

LABEL_11:
  v22 = __swift_mutable_project_boxed_opaque_existential_0(&v23, MEMORY[0x277D839B0]);
  sub_261281628(v11, a2, a3, *v22, v17);

  return __swift_destroy_boxed_opaque_existential_0Tm(&v23);
}

_OWORD *sub_261281628(unint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  LOBYTE(v11) = a4;
  v12 = MEMORY[0x277D839B0];
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_26125A7B0(&v11, (a5[7] + 32 * a1));
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

uint64_t sub_2612816AC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2612816F4(uint64_t a1, char a2)
{
  *(v3 + 56) = a2;
  *(v3 + 16) = a1;
  *(v3 + 24) = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  *(v3 + 32) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_261281794, 0, 0);
}

uint64_t sub_261281794(uint64_t a1)
{
  v2 = *(v1 + 24);
  v3 = *(v2 + OBJC_IVAR____TtC21ProximityReaderDaemon25DiscoveryAnalyticsManager_analyticsSessionID + 8);
  if (v3)
  {
    v4 = *(v1 + 56);
    v5 = *(v1 + 16);
    v6 = *(v2 + OBJC_IVAR____TtC21ProximityReaderDaemon25DiscoveryAnalyticsManager_analyticsSessionID);
    *(v1 + 40) = *(v2 + OBJC_IVAR____TtC21ProximityReaderDaemon25DiscoveryAnalyticsManager_serializer);
    v7 = swift_allocObject();
    *(v1 + 48) = v7;
    *(v7 + 16) = v5;
    *(v7 + 24) = v2;
    *(v7 + 32) = v6;
    *(v7 + 40) = v3;
    *(v7 + 48) = v4;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F400, &unk_2613A4A90);
    sub_261268774();
    v9 = sub_2613A1BCC();

    return MEMORY[0x2822009F8](sub_261281A0C, v9, v8);
  }

  else
  {
    v10 = *(v1 + 32);
    v11 = sub_26129B97C();
    sub_26125A870(v11, v10, &qword_27FE9F560, &qword_2613A3CB0);
    v12 = sub_2613A124C();
    v13 = *(v12 - 8);
    if ((*(v13 + 48))(v10, 1, v12) == 1)
    {
      sub_26124C718(*(v1 + 32), &qword_27FE9F560, &qword_2613A3CB0);
    }

    else
    {
      v14 = sub_2613A122C();
      v15 = sub_2613A1D8C();
      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        *v16 = 0;
        _os_log_impl(&dword_261243000, v14, v15, "DiscoveryAnalyticsManager - sendEvent - analytics session not found", v16, 2u);
        MEMORY[0x266701350](v16, -1, -1);
      }

      v17 = *(v1 + 32);

      (*(v13 + 8))(v17, v12);
    }

    v18 = *(v1 + 8);

    return v18();
  }
}

uint64_t sub_261281A0C()
{
  sub_26139F8AC();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_261281A94()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = *(v0 + 40);
  v6 = *(v0 + 48);
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_261262AA4;

  return sub_261280CDC(v7, v2, v3, v4, v5, v6);
}

uint64_t type metadata accessor for TransactionContainer(uint64_t a1)
{
  result = qword_27FEA29F0;
  if (!qword_27FEA29F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_261281B9C@<X0>(uint64_t a1@<X8>)
{
  v71 = a1;
  v2 = sub_26139F13C();
  MEMORY[0x28223BE20](v2);
  v70 = &v44 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))();
  v5 = type metadata accessor for TransactionContainer(0);
  v6 = v5[6];
  v7 = (v1 + v5[5]);
  v8 = v7[1];
  v69 = *v7;
  v9 = v5[15];
  v10 = (v1 + v5[16]);
  v11 = *v10;
  v55 = v10[1];
  v56 = v8;
  v12 = *(v1 + v6 + 8);
  v67 = *(v1 + v6);
  v68 = v11;
  v72 = v12;
  v13 = v5[8];
  v14 = (v1 + v5[7]);
  v15 = v14[1];
  v66 = *v14;
  v52 = v15;
  v16 = v5[9];
  v17 = (v1 + v5[10]);
  v18 = v17[1];
  v50 = *v17;
  v19 = v50;
  v20 = *(v1 + v13 + 8);
  v65 = *(v1 + v13);
  v48 = v20;
  v21 = *(v1 + v16 + 8);
  v64 = *(v1 + v16);
  v22 = (v1 + v5[11]);
  v23 = *v22;
  v24 = v22[1];
  v25 = (v1 + v5[12]);
  v27 = *v25;
  v26 = v25[1];
  v62 = v27;
  v63 = v23;
  v49 = v26;
  v28 = v5[14];
  v29 = (v1 + v5[13]);
  v30 = v29[1];
  v61 = *v29;
  LODWORD(v23) = *(v1 + v28);
  v59 = *(v1 + v9);
  v60 = v23;
  LODWORD(v9) = *(v1 + v5[18]);
  v57 = *(v1 + v5[19]);
  v58 = v9;
  v31 = v5[21];
  v54 = *(v1 + v5[20]);
  v32 = *(v1 + v31 + 8);
  v53 = *(v1 + v31);
  v45 = v32;
  v33 = (v1 + v5[22]);
  v34 = (v1 + v5[25]);
  v35 = (v1 + v5[26]);
  v36 = v33[1];
  v51 = *v33;
  v37 = v34[1];
  v47 = *v34;
  v38 = v35[1];
  v46 = *v35;

  sub_26124C778(v19, v18);
  v39 = v48;

  v40 = v49;

  v41 = v45;

  v42 = sub_26125A798();
  return sub_2612CC02C(v70, v69, v56, 4, v68, v55, 8, v67, v71, v72, v66, v52, v50, v18, v65, v39, v64, v21, v63, v24, v62, v40, v61, v30, v60, v59, 1, v58, v57, v54, v53, v41, 0, v51, v36, 0, v47, v37, 0, 1, 0, 1, v46, v38, v42 & 1);
}

unint64_t sub_261281F14(char a1)
{
  result = 0x746361736E617274;
  switch(a1)
  {
    case 1:
      result = 0x6B726F7774656ELL;
      break;
    case 2:
      result = 0xD00000000000001BLL;
      break;
    case 3:
    case 19:
      result = 0xD000000000000018;
      break;
    case 4:
      result = 0xD000000000000013;
      break;
    case 5:
      result = 0xD000000000000012;
      break;
    case 6:
      result = 0x436C6172656E6567;
      break;
    case 7:
      result = 0x64496B656BLL;
      break;
    case 8:
      result = 0x746E756F6D61;
      break;
    case 9:
      result = 0x79636E6572727563;
      break;
    case 10:
      result = 0xD000000000000014;
      break;
    case 11:
      result = 0x69757165526E6970;
      break;
    case 12:
      result = 0x6C757365526D7663;
      break;
    case 13:
      result = 0x6974617269707865;
      break;
    case 14:
      result = 0xD000000000000012;
      break;
    case 15:
      result = 0xD000000000000010;
      break;
    case 16:
      result = 0x626C6C6146726F66;
      break;
    case 17:
      result = 0x6B6361626C6C6166;
      break;
    case 18:
      result = 0xD000000000000015;
      break;
    case 20:
      result = 0xD00000000000001DLL;
      break;
    case 21:
      result = 0xD000000000000011;
      break;
    case 22:
      result = 0x7954707041796170;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_2612821EC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_26128CE20(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_261282220(uint64_t a1)
{
  v2 = sub_261282860();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26128225C(uint64_t a1)
{
  v2 = sub_261282860();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_261282298(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F530, &qword_2613A5520);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v13[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_261282860();
  sub_2613A262C();
  LOBYTE(v14) = 0;
  sub_26139F13C();
  sub_26128DA8C(&qword_27FE9F538, MEMORY[0x277CC95F0], MEMORY[0x277CC95F8]);
  sub_2613A23CC();
  if (!v2)
  {
    v9 = type metadata accessor for TransactionContainer(0);
    LOBYTE(v14) = 1;
    sub_2613A238C();
    LOBYTE(v14) = 2;
    sub_2613A238C();
    LOBYTE(v14) = 3;
    sub_2613A238C();
    LOBYTE(v14) = 4;
    sub_2613A238C();
    LOBYTE(v14) = 5;
    sub_2613A238C();
    v10 = (v3 + *(v9 + 40));
    v11 = v10[1];
    v14 = *v10;
    v15 = v11;
    v13[15] = 6;
    sub_26124C778(v14, v11);
    sub_2612828B4();
    sub_2613A23CC();
    sub_26124C6C4(v14, v15);
    LOBYTE(v14) = 7;
    sub_2613A238C();
    LOBYTE(v14) = 8;
    sub_2613A238C();
    LOBYTE(v14) = 9;
    sub_2613A238C();
    LOBYTE(v14) = 10;
    sub_2613A239C();
    LOBYTE(v14) = 11;
    sub_2613A239C();
    LOBYTE(v14) = 12;
    sub_2613A238C();
    LOBYTE(v14) = 13;
    sub_2613A23AC();
    LOBYTE(v14) = 14;
    sub_2613A239C();
    LOBYTE(v14) = 15;
    sub_2613A239C();
    LOBYTE(v14) = 16;
    sub_2613A239C();
    LOBYTE(v14) = 17;
    sub_2613A238C();
    LOBYTE(v14) = 18;
    sub_2613A238C();
    LOBYTE(v14) = 19;
    sub_2613A234C();
    LOBYTE(v14) = 20;
    sub_2613A234C();
    LOBYTE(v14) = 21;
    sub_2613A238C();
    LOBYTE(v14) = 22;
    sub_2613A238C();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_261282860()
{
  result = qword_27FEA2868[0];
  if (!qword_27FEA2868[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FEA2868);
  }

  return result;
}

unint64_t sub_2612828B4()
{
  result = qword_27FE9F540;
  if (!qword_27FE9F540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE9F540);
  }

  return result;
}

uint64_t sub_261282908@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v70 = a2;
  v4 = sub_26139F13C();
  v69 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v71 = v66 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F548, &qword_2613A5528);
  v72 = *(v6 - 8);
  v73 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = v66 - v7;
  v9 = type metadata accessor for TransactionContainer(0);
  MEMORY[0x28223BE20](v9);
  v11 = v66 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_261282860();
  v74 = v8;
  sub_2613A260C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  v12 = v70;
  v67 = v9;
  v68 = v11;
  LOBYTE(v75) = 0;
  sub_26128DA8C(&qword_27FE9F550, MEMORY[0x277CC95F0], MEMORY[0x277CC9618]);
  v13 = v71;
  sub_2613A231C();
  v14 = v68;
  v15 = *(v69 + 32);
  v71 = v4;
  v15(v68, v13, v4);
  LOBYTE(v75) = 1;
  v16 = sub_2613A22DC();
  v17 = v67;
  v18 = &v14[v67[5]];
  *v18 = v16;
  v18[1] = v19;
  LOBYTE(v75) = 2;
  v66[1] = 0;
  v20 = sub_2613A22DC();
  v21 = &v14[v17[6]];
  *v21 = v20;
  v21[1] = v22;
  LOBYTE(v75) = 3;
  v23 = sub_2613A22DC();
  v24 = &v14[v17[7]];
  *v24 = v23;
  v24[1] = v25;
  LOBYTE(v75) = 4;
  v26 = sub_2613A22DC();
  v27 = &v14[v17[8]];
  *v27 = v26;
  v27[1] = v28;
  LOBYTE(v75) = 5;
  v29 = sub_2613A22DC();
  v30 = &v14[v17[9]];
  *v30 = v29;
  v30[1] = v31;
  v76 = 6;
  sub_261283714();
  sub_2613A231C();
  *&v14[v17[10]] = v75;
  LOBYTE(v75) = 7;
  v32 = sub_2613A22DC();
  v33 = &v68[v67[11]];
  *v33 = v32;
  v33[1] = v34;
  LOBYTE(v75) = 8;
  v35 = sub_2613A22DC();
  v36 = &v68[v67[12]];
  *v36 = v35;
  v36[1] = v37;
  LOBYTE(v75) = 9;
  v38 = sub_2613A22DC();
  v39 = &v68[v67[13]];
  *v39 = v38;
  v39[1] = v40;
  LOBYTE(v75) = 10;
  v68[v67[14]] = sub_2613A22EC() & 1;
  LOBYTE(v75) = 11;
  v68[v67[15]] = sub_2613A22EC() & 1;
  LOBYTE(v75) = 12;
  v41 = sub_2613A22DC();
  v42 = &v68[v67[16]];
  *v42 = v41;
  v42[1] = v43;
  LOBYTE(v75) = 13;
  sub_2613A22FC();
  *&v68[v67[17]] = v44;
  LOBYTE(v75) = 14;
  v68[v67[18]] = sub_2613A22EC() & 1;
  LOBYTE(v75) = 15;
  v68[v67[19]] = sub_2613A22EC() & 1;
  LOBYTE(v75) = 16;
  v68[v67[20]] = sub_2613A22EC() & 1;
  LOBYTE(v75) = 17;
  v45 = sub_2613A22DC();
  v46 = &v68[v67[21]];
  *v46 = v45;
  v46[1] = v47;
  LOBYTE(v75) = 18;
  v48 = sub_2613A22DC();
  v49 = &v68[v67[22]];
  *v49 = v48;
  v49[1] = v50;
  LOBYTE(v75) = 19;
  v51 = sub_2613A229C();
  v52 = &v68[v67[23]];
  *v52 = v51;
  v52[1] = v53;
  LOBYTE(v75) = 20;
  v54 = sub_2613A229C();
  v55 = &v68[v67[24]];
  *v55 = v54;
  v55[1] = v56;
  LOBYTE(v75) = 21;
  v57 = sub_2613A22DC();
  v58 = &v68[v67[25]];
  *v58 = v57;
  v58[1] = v59;
  LOBYTE(v75) = 22;
  v60 = sub_2613A22DC();
  v62 = v61;
  (*(v72 + 8))(v74, v73);
  v63 = v68;
  v64 = &v68[v67[26]];
  *v64 = v60;
  v64[1] = v62;
  sub_26128C5AC(v63, v12, type metadata accessor for TransactionContainer);
  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  return sub_26128C614(v63, type metadata accessor for TransactionContainer);
}

unint64_t sub_261283714()
{
  result = qword_27FE9F558;
  if (!qword_27FE9F558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE9F558);
  }

  return result;
}

void *sub_261283798(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  swift_defaultActor_initialize();
  v4[16] = a1;
  v4[17] = a2;
  v5 = MEMORY[0x277D84F98];
  v4[14] = MEMORY[0x277D84F98];
  v4[15] = v5;
  return v4;
}

uint64_t sub_2612837F0(char *a1, uint64_t a2)
{
  v3 = v2;
  v44 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v38 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F568, &unk_2613AC620);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v38 - v9;
  v11 = sub_26139F13C();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v38 - v16;
  v43 = v3;
  v18 = v46;
  result = sub_2612848F4(a2);
  if (!v18)
  {
    v41 = v15;
    v42 = v12;
    v46 = 0;
    v20 = v44;
    v39 = *(v12 + 16);
    v40 = v11;
    v39(v17, v44, v11);
    sub_26128C5AC(a2, v10, type metadata accessor for TransactionContainer);
    v21 = type metadata accessor for TransactionContainer(0);
    (*(*(v21 - 8) + 56))(v10, 0, 1, v21);
    swift_beginAccess();
    sub_261283E48(v10, v17);
    swift_endAccess();
    sub_261286AD4(v20, *(a2 + *(v21 + 68)));
    v22 = sub_26129B5FC();
    sub_26125A870(v22, v7, &qword_27FE9F560, &qword_2613A3CB0);
    v23 = sub_2613A124C();
    v24 = *(v23 - 8);
    if ((*(v24 + 48))(v7, 1, v23) == 1)
    {
      return sub_26124C718(v7, &qword_27FE9F560, &qword_2613A3CB0);
    }

    else
    {
      v25 = v40;
      v26 = v41;
      v39(v41, v44, v40);
      v27 = sub_2613A122C();
      v28 = sub_2613A1D7C();
      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        v30 = swift_slowAlloc();
        v44 = v7;
        v45[0] = v30;
        v31 = v30;
        *v29 = 136315138;
        sub_26128DA8C(&qword_27FE9F570, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
        v32 = sub_2613A23EC();
        v33 = v26;
        v35 = v34;
        (*(v42 + 8))(v33, v25);
        v36 = sub_26124C11C(v32, v35, v45);

        *(v29 + 4) = v36;
        _os_log_impl(&dword_261243000, v27, v28, "Inserting: [ %s ] on cache", v29, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v31);
        v37 = v31;
        v7 = v44;
        MEMORY[0x266701350](v37, -1, -1);
        MEMORY[0x266701350](v29, -1, -1);
      }

      else
      {

        (*(v42 + 8))(v26, v25);
      }

      return (*(v24 + 8))(v7, v23);
    }
  }

  return result;
}

uint64_t sub_261283C88(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v2;
    sub_26128B698(a1, a2, isUniquelyReferenced_nonNull_native);
    v7 = sub_26139F13C();
    result = (*(*(v7 - 8) + 8))(a2, v7);
    *v2 = v20;
  }

  else
  {
    v9 = sub_26128A6E4(a2);
    if (v10)
    {
      v11 = v9;
      v12 = swift_isUniquelyReferenced_nonNull_native();
      v13 = *v2;
      v21 = *v3;
      if (!v12)
      {
        sub_26128BDA0();
        v13 = v21;
      }

      v14 = *(v13 + 48);
      v15 = sub_26139F13C();
      v16 = *(v15 - 8);
      v17 = *(v16 + 8);
      v17(v14 + *(v16 + 72) * v11, v15);
      swift_unknownObjectRelease();
      sub_26128B034(v11, v13);
      result = (v17)(a2, v15);
      *v3 = v13;
    }

    else
    {
      v18 = sub_26139F13C();
      v19 = *(*(v18 - 8) + 8);

      return v19(a2, v18);
    }
  }

  return result;
}

uint64_t sub_261283E48(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F568, &unk_2613AC620);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v16 - v6;
  v8 = type metadata accessor for TransactionContainer(0);
  MEMORY[0x28223BE20](v8);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v11 + 48))(a1, 1) == 1)
  {
    sub_26124C718(a1, &qword_27FE9F568, &unk_2613AC620);
    sub_26128A55C(a2, v7);
    v12 = sub_26139F13C();
    (*(*(v12 - 8) + 8))(a2, v12);
    return sub_26124C718(v7, &qword_27FE9F568, &unk_2613AC620);
  }

  else
  {
    sub_26128A77C(a1, v10);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v2;
    sub_26128B864(v10, a2, isUniquelyReferenced_nonNull_native);
    v15 = sub_26139F13C();
    result = (*(*(v15 - 8) + 8))(a2, v15);
    *v2 = v17;
  }

  return result;
}

uint64_t sub_261284054@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  swift_beginAccess();
  v5 = *(v2 + 112);
  if (*(v5 + 16))
  {

    v6 = sub_26128A6E4(a1);
    if (v7)
    {
      v8 = v6;
      v9 = *(v5 + 56);
      v10 = type metadata accessor for TransactionContainer(0);
      v11 = *(v10 - 8);
      sub_26128C5AC(v9 + *(v11 + 72) * v8, a2, type metadata accessor for TransactionContainer);

      return (*(v11 + 56))(a2, 0, 1, v10);
    }
  }

  v13 = type metadata accessor for TransactionContainer(0);
  return (*(*(v13 - 8) + 56))(a2, 1, 1, v13);
}

uint64_t sub_2612841B0(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F568, &unk_2613AC620);
  MEMORY[0x28223BE20](v4 - 8);
  v51 = &v43 - v5;
  v52 = sub_26139F13C();
  v6 = *(v52 - 8);
  v7 = MEMORY[0x28223BE20](v52);
  v9 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v43 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v43 - v13;
  v15 = type metadata accessor for TransactionContainer(0);
  v53 = *(v15 - 8);
  v16 = MEMORY[0x28223BE20](v15);
  v18 = &v43 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v54 = &v43 - v19;
  result = swift_beginAccess();
  v21 = *(v1 + 112);
  if (*(v21 + 16))
  {

    v50 = a1;
    v22 = sub_26128A6E4(a1);
    if (v23)
    {
      sub_26128C5AC(*(v21 + 56) + *(v53 + 72) * v22, v18, type metadata accessor for TransactionContainer);

      sub_26128A77C(v18, v54);
      v24 = sub_26129B5FC();
      sub_26125A870(v24, v14, &qword_27FE9F560, &qword_2613A3CB0);
      v25 = sub_2613A124C();
      v26 = *(v25 - 8);
      if ((*(v26 + 48))(v14, 1, v25) == 1)
      {
        sub_26124C718(v14, &qword_27FE9F560, &qword_2613A3CB0);
        v27 = *(v6 + 16);
        v28 = v52;
      }

      else
      {
        v29 = *(v6 + 16);
        v47 = v25;
        v48 = (v6 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
        v28 = v52;
        v49 = v29;
        v29(v11, v50, v52);
        v30 = sub_2613A122C();
        v46 = sub_2613A1D7C();
        if (os_log_type_enabled(v30, v46))
        {
          v31 = swift_slowAlloc();
          v45 = swift_slowAlloc();
          v55[0] = v45;
          *v31 = 136315138;
          sub_26128DA8C(&qword_27FE9F570, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
          v44 = v30;
          v43 = sub_2613A23EC();
          v33 = v32;
          (*(v6 + 8))(v11, v52);
          v34 = sub_26124C11C(v43, v33, v55);

          v35 = v31;
          v28 = v52;
          *(v35 + 1) = v34;
          v36 = v44;
          v37 = v35;
          _os_log_impl(&dword_261243000, v44, v46, "Removing: [ %s ] from cache", v35, 0xCu);
          v38 = v45;
          __swift_destroy_boxed_opaque_existential_0Tm(v45);
          MEMORY[0x266701350](v38, -1, -1);
          MEMORY[0x266701350](v37, -1, -1);
        }

        else
        {

          (*(v6 + 8))(v11, v28);
        }

        (*(v26 + 8))(v14, v47);
        v27 = v49;
      }

      v39 = v50;
      v27(v9, v50, v28);
      v40 = v51;
      (*(v53 + 56))(v51, 1, 1, v15);
      swift_beginAccess();
      sub_261283E48(v40, v9);
      swift_endAccess();
      swift_beginAccess();
      if (*(*(v2 + 120) + 16))
      {

        sub_26128A6E4(v39);
        if (v41)
        {
          swift_unknownObjectRetain();

          swift_getObjectType();
          sub_2613A1E8C();
          swift_unknownObjectRelease();
        }

        else
        {
        }
      }

      v27(v9, v39, v28);
      swift_beginAccess();
      sub_261283C88(0, v9);
      swift_endAccess();
      v42 = v54;
      sub_261285364(v54);
      return sub_26128C614(v42, type metadata accessor for TransactionContainer);
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_2612847FC@<X0>(uint64_t a1@<X8>)
{
  v6 = sub_26139F0DC();
  v7 = v2;
  MEMORY[0x2666FFEA0](46, 0xE100000000000000);
  MEMORY[0x2666FFEA0](6513780, 0xE300000000000000);

  MEMORY[0x2666FFEA0](v6, v7);

  sub_26139EECC();

  v3 = sub_26139EF7C();
  v4 = *(*(v3 - 8) + 56);

  return v4(a1, 0, 1, v3);
}

uint64_t sub_2612848F4(uint64_t a1)
{
  v85 = sub_26139F87C();
  v83 = *(v85 - 8);
  MEMORY[0x28223BE20](v85);
  v84 = &v74 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for TransactionContainer(0);
  v4 = MEMORY[0x28223BE20](v3);
  v6 = &v74 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v82 = &v74 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v86 = &v74 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v74 - v12;
  MEMORY[0x28223BE20](v11);
  v87 = (&v74 - v14);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F220, qword_2613A5530);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v74 - v16;
  v18 = sub_26139EF7C();
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v21 = &v74 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2612847FC(v17);
  if ((*(v19 + 48))(v17, 1, v18) == 1)
  {
    sub_26124C718(v17, &qword_27FE9F220, qword_2613A5530);
    goto LABEL_5;
  }

  (*(v19 + 32))(v21, v17, v18);
  v22 = sub_26128DA8C(&unk_27FE9F660, type metadata accessor for TransactionContainer, &unk_2613A5590);
  v23 = v3;
  v24 = v19;
  v81 = sub_26124A620(v23, v22);
  v26 = v18;
  v27 = v21;
  if (v25 >> 60 == 15)
  {
    (*(v24 + 8))(v21, v18);
LABEL_5:
    v28 = sub_26129B5FC();
    sub_26125A870(v28, v13, &qword_27FE9F560, &qword_2613A3CB0);
    v29 = sub_2613A124C();
    v30 = *(v29 - 8);
    if ((*(v30 + 48))(v13, 1, v29) == 1)
    {
      return sub_26124C718(v13, &qword_27FE9F560, &qword_2613A3CB0);
    }

    sub_26128C5AC(a1, v6, type metadata accessor for TransactionContainer);
    v32 = sub_2613A122C();
    v33 = sub_2613A1D8C();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v87 = swift_slowAlloc();
      v90 = v87;
      *v34 = 136315138;
      sub_26139F13C();
      sub_26128DA8C(&qword_27FE9F570, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v35 = sub_2613A23EC();
      v37 = v36;
      sub_26128C614(v6, type metadata accessor for TransactionContainer);
      v38 = sub_26124C11C(v35, v37, &v90);

      *(v34 + 4) = v38;
      _os_log_impl(&dword_261243000, v32, v33, "Could not save cache data: [%s]", v34, 0xCu);
      v39 = v87;
      __swift_destroy_boxed_opaque_existential_0Tm(v87);
      MEMORY[0x266701350](v39, -1, -1);
      MEMORY[0x266701350](v34, -1, -1);
    }

    else
    {

      sub_26128C614(v6, type metadata accessor for TransactionContainer);
    }

    return (*(v30 + 8))(v13, v29);
  }

  v40 = v25;
  v78 = v24;
  v76 = sub_26129B5FC();
  v41 = v87;
  sub_26125A870(v76, v87, &qword_27FE9F560, &qword_2613A3CB0);
  v42 = sub_2613A124C();
  v77 = *(v42 - 8);
  v43 = *(v77 + 48);
  v80 = v42;
  v75 = v43;
  v44 = (v43)(v41, 1);
  v79 = v40;
  if (v44 == 1)
  {
    sub_26124C718(v41, &qword_27FE9F560, &qword_2613A3CB0);
    v45 = v88;
    v46 = v86;
    v47 = v81;
    v48 = v84;
  }

  else
  {
    v49 = v82;
    sub_26128C5AC(a1, v82, type metadata accessor for TransactionContainer);
    v50 = sub_2613A122C();
    v51 = sub_2613A1D7C();
    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      v74 = swift_slowAlloc();
      v90 = v74;
      *v52 = 136315138;
      sub_26139F13C();
      v53 = v49;
      v54 = v26;
      sub_26128DA8C(&qword_27FE9F570, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v55 = sub_2613A23EC();
      v57 = v56;
      sub_26128C614(v53, type metadata accessor for TransactionContainer);
      v58 = sub_26124C11C(v55, v57, &v90);
      v26 = v54;

      *(v52 + 4) = v58;
      _os_log_impl(&dword_261243000, v50, v51, "Saving cache data: [%s] to FS", v52, 0xCu);
      v59 = v74;
      __swift_destroy_boxed_opaque_existential_0Tm(v74);
      MEMORY[0x266701350](v59, -1, -1);
      v60 = v52;
      v41 = v87;
      MEMORY[0x266701350](v60, -1, -1);
    }

    else
    {

      sub_26128C614(v49, type metadata accessor for TransactionContainer);
    }

    v45 = v88;
    v46 = v86;
    v40 = v79;
    v48 = v84;
    (*(v77 + 8))(v41, v80);
    v47 = v81;
  }

  sub_26139F86C();
  v61 = v45;
  sub_26139F83C();
  v62 = (v83 + 8);
  if (v61)
  {
    (*v62)(v48, v85);
    sub_26125A870(v76, v46, &qword_27FE9F560, &qword_2613A3CB0);
    if (v75(v46, 1, v80) == 1)
    {
      sub_26124C718(v46, &qword_27FE9F560, &qword_2613A3CB0);
      v63 = v78;
      v64 = v79;
    }

    else
    {
      v65 = v61;
      v66 = sub_2613A122C();
      v67 = sub_2613A1D8C();

      if (os_log_type_enabled(v66, v67))
      {
        v68 = swift_slowAlloc();
        v88 = swift_slowAlloc();
        v89 = v61;
        v90 = v88;
        *v68 = 136315138;
        v69 = v61;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F650, &qword_2613A57C0);
        v70 = sub_2613A195C();
        v72 = sub_26124C11C(v70, v71, &v90);

        *(v68 + 4) = v72;
        v47 = v81;
        _os_log_impl(&dword_261243000, v66, v67, "Could not save cache data: [%s]", v68, 0xCu);
        v73 = v88;
        __swift_destroy_boxed_opaque_existential_0Tm(v88);
        MEMORY[0x266701350](v73, -1, -1);
        MEMORY[0x266701350](v68, -1, -1);
      }

      v63 = v78;
      v64 = v79;
      (*(v77 + 8))(v46, v80);
    }

    swift_willThrow();
    sub_26124A168(v47, v64);
    return (*(v63 + 8))(v27, v26);
  }

  else
  {
    sub_26124A168(v47, v40);
    (*v62)(v48, v85);
    return (*(v78 + 8))(v27, v26);
  }
}

uint64_t sub_261285364(uint64_t a1)
{
  v2 = type metadata accessor for TransactionContainer(0);
  MEMORY[0x28223BE20](v2 - 8);
  v50 = &v44 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v51 = &v44 - v8;
  v9 = sub_26139F87C();
  v52 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F220, qword_2613A5530);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v44 - v13;
  v15 = sub_26139EF7C();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v44 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2612847FC(v14);
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    sub_26124C718(v14, &qword_27FE9F220, qword_2613A5530);
    v19 = sub_26129B5FC();
    sub_26125A870(v19, v7, &qword_27FE9F560, &qword_2613A3CB0);
    v20 = sub_2613A124C();
    v21 = *(v20 - 8);
    if ((*(v21 + 48))(v7, 1, v20) == 1)
    {
      return sub_26124C718(v7, &qword_27FE9F560, &qword_2613A3CB0);
    }

    else
    {
      v24 = sub_2613A122C();
      v25 = sub_2613A1D8C();
      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        *v26 = 0;
        _os_log_impl(&dword_261243000, v24, v25, "Cache data file does not exist, cannot be removed", v26, 2u);
        MEMORY[0x266701350](v26, -1, -1);
      }

      return (*(v21 + 8))(v7, v20);
    }
  }

  else
  {
    (*(v16 + 32))(v18, v14, v15);
    sub_26139F86C();
    if (sub_26139F85C())
    {
      v23 = v53;
      sub_26139F84C();
      if (v23)
      {
        (*(v52 + 8))(v11, v9);
        return (*(v16 + 8))(v18, v15);
      }

      else
      {
        v27 = sub_26129B5FC();
        v28 = v51;
        sub_26125A870(v27, v51, &qword_27FE9F560, &qword_2613A3CB0);
        v29 = sub_2613A124C();
        v30 = *(v29 - 8);
        v31 = *(v30 + 48);
        v49 = v29;
        if (v31(v28, 1) == 1)
        {
          (*(v52 + 8))(v11, v9);
          (*(v16 + 8))(v18, v15);
          return sub_26124C718(v28, &qword_27FE9F560, &qword_2613A3CB0);
        }

        else
        {
          v32 = a1;
          v33 = v50;
          sub_26128C5AC(v32, v50, type metadata accessor for TransactionContainer);
          v34 = sub_2613A122C();
          v48 = sub_2613A1D7C();
          if (os_log_type_enabled(v34, v48))
          {
            v35 = swift_slowAlloc();
            v46 = v30;
            v36 = v35;
            v47 = swift_slowAlloc();
            v54 = v47;
            *v36 = 136315138;
            sub_26139F13C();
            v53 = 0;
            sub_26128DA8C(&qword_27FE9F570, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
            v45 = v34;
            v37 = sub_2613A23EC();
            v39 = v38;
            sub_26128C614(v33, type metadata accessor for TransactionContainer);
            v40 = sub_26124C11C(v37, v39, &v54);

            v41 = v36;
            v44 = v36;
            *(v36 + 4) = v40;
            v42 = v45;
            v30 = v46;
            _os_log_impl(&dword_261243000, v45, v48, "Deleted cache data: [%s] from FS", v41, 0xCu);
            v43 = v47;
            __swift_destroy_boxed_opaque_existential_0Tm(v47);
            MEMORY[0x266701350](v43, -1, -1);
            MEMORY[0x266701350](v44, -1, -1);
          }

          else
          {

            sub_26128C614(v33, type metadata accessor for TransactionContainer);
          }

          (*(v52 + 8))(v11, v9);
          (*(v16 + 8))(v18, v15);
          return (*(v30 + 8))(v51, v49);
        }
      }
    }

    else
    {
      (*(v52 + 8))(v11, v9);
      return (*(v16 + 8))(v18, v15);
    }
  }
}

uint64_t sub_261285A98()
{
  v1 = sub_26139F0BC();
  v66 = *(v1 - 8);
  v67 = v1;
  MEMORY[0x28223BE20](v1);
  v65 = &v60 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F220, qword_2613A5530);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v60 - v4;
  v6 = sub_26139EF7C();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v75 = &v60 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v74 = &v60 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v72 = &v60 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v60 - v15;
  MEMORY[0x28223BE20](v14);
  v18 = &v60 - v17;
  v19 = sub_26139F87C();
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v22 = (&v60 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_26139F86C();
  v23 = *(v0 + 128);
  v24 = *(v0 + 136);
  v68 = v0;
  v25 = v23;
  sub_26139EF5C();
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_26124C718(v5, &qword_27FE9F220, qword_2613A5530);
    return (*(v20 + 8))(v22, v19);
  }

  v73 = v25;
  v76 = *(v7 + 32);
  v77 = v7 + 32;
  (v76)(v18, v5, v6);
  if ((sub_26139F85C() & 1) == 0 || (result = sub_26139F81C()) == 0)
  {
    (*(v7 + 8))(v18, v6);
    return (*(v20 + 8))(v22, v19);
  }

  v71 = v6;
  v61 = v18;
  v62 = v20;
  v63 = v19;
  v69 = *(result + 16);
  v70 = v22;
  if (v69)
  {
    v27 = 0;
    v28 = (result + 40);
    v29 = MEMORY[0x277D84F90];
    while (v27 < *(result + 16))
    {
      v30 = result;
      v31 = *(v28 - 1);
      v32 = *v28;
      v78 = v73;
      v79 = v24;

      MEMORY[0x2666FFEA0](v31, v32);
      sub_26139EECC();

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v29 = sub_26128A380(0, *(v29 + 2) + 1, 1, v29, &qword_27FE9F620, &qword_2613A57B0, MEMORY[0x277CC9260]);
      }

      v34 = *(v29 + 2);
      v33 = *(v29 + 3);
      if (v34 >= v33 >> 1)
      {
        v29 = sub_26128A380((v33 > 1), v34 + 1, 1, v29, &qword_27FE9F620, &qword_2613A57B0, MEMORY[0x277CC9260]);
      }

      ++v27;
      *(v29 + 2) = v34 + 1;
      (v76)(&v29[((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v34], v16, v71);
      v28 += 2;
      result = v30;
      if (v69 == v27)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  v29 = MEMORY[0x277D84F90];
LABEL_18:

  v73 = *(v29 + 2);
  if (v73)
  {
    v35 = 0;
    v69 = v7 + 16;
    v64 = (v7 + 8);
    v36 = MEMORY[0x277D84F90];
    v37 = v71;
    v38 = v72;
    while (1)
    {
      if (v35 >= *(v29 + 2))
      {
        goto LABEL_47;
      }

      v39 = (*(v7 + 80) + 32) & ~*(v7 + 80);
      v40 = *(v7 + 72);
      (*(v7 + 16))(v38, &v29[v39 + v40 * v35], v37);
      if (sub_26139EE9C() == 6513780 && v41 == 0xE300000000000000)
      {
        break;
      }

      v42 = sub_2613A241C();

      if (v42)
      {
        goto LABEL_27;
      }

      result = (*v64)(v38, v37);
LABEL_21:
      if (v73 == ++v35)
      {
        goto LABEL_33;
      }
    }

LABEL_27:
    (v76)(v75, v38, v37);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v78 = v36;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_26128C338(0, *(v36 + 16) + 1, 1);
      v36 = v78;
    }

    v45 = *(v36 + 16);
    v44 = *(v36 + 24);
    if (v45 >= v44 >> 1)
    {
      sub_26128C338((v44 > 1), v45 + 1, 1);
      v36 = v78;
    }

    *(v36 + 16) = v45 + 1;
    result = (v76)(v36 + v39 + v45 * v40, v75, v37);
    v38 = v72;
    goto LABEL_21;
  }

  v36 = MEMORY[0x277D84F90];
  v37 = v71;
LABEL_33:

  v46 = v65;
  sub_26139F0AC();
  sub_26139F07C();
  v48 = v47;
  result = (*(v66 + 8))(v46, v67);
  v49 = *(v36 + 16);
  if (!v49)
  {
LABEL_45:

    (*(v7 + 8))(v61, v37);

    v20 = v62;
    v19 = v63;
    v22 = v70;
    return (*(v20 + 8))(v22, v19);
  }

  v50 = 0;
  v76 = v49 - 1;
  v51 = MEMORY[0x277D84F90];
LABEL_35:
  v77 = v51;
  v52 = v50;
  v53 = v68;
  while (v52 < *(v36 + 16))
  {
    v54 = v74;
    (*(v7 + 16))(v74, v36 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v52, v37);
    v50 = (v52 + 1);
    sub_261286300(v54, v70, v53, v48);
    LOBYTE(v78) = 0;
    result = (*(v7 + 8))(v54, v37);
    if ((v78 & 1) == 0)
    {
      v55 = v77;
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_26128A28C(0, *(v55 + 16) + 1, 1, v55);
        v55 = result;
      }

      v57 = *(v55 + 16);
      v56 = *(v55 + 24);
      v58 = v55;
      v59 = v57 + 1;
      if (v57 >= v56 >> 1)
      {
        result = sub_26128A28C((v56 > 1), v57 + 1, 1, v55);
        v58 = result;
      }

      v51 = v58;
      *(v58 + 16) = v59;
      if (v76 != v52)
      {
        goto LABEL_35;
      }

      goto LABEL_45;
    }

    ++v52;
    if (v49 == v50)
    {
      goto LABEL_45;
    }
  }

LABEL_48:
  __break(1u);
  return result;
}

uint64_t sub_261286300(uint64_t a1, void *a2, uint64_t a3, double a4)
{
  v71 = a3;
  v72 = sub_26139F13C();
  v70 = *(v72 - 8);
  MEMORY[0x28223BE20](v72);
  v8 = &v64 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v73 = &v64 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = &v64 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F568, &unk_2613AC620);
  v15 = MEMORY[0x28223BE20](v14 - 8);
  v17 = &v64 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v64 - v18;
  v20 = type metadata accessor for TransactionContainer(0);
  v21 = *(v20 - 8);
  v22 = MEMORY[0x28223BE20](v20);
  v24 = &v64 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v26 = &v64 - v25;
  v74 = a1;
  v75 = a2;
  v27 = sub_26139F82C();
  v65 = v24;
  v66 = v13;
  v68 = v8;
  v69 = v26;
  v67 = v17;
  v28 = v72;
  v29 = v27;
  v31 = v30;
  sub_26128DA8C(&qword_27FE9F618, type metadata accessor for TransactionContainer, &unk_2613A5568);
  sub_26124B218(v20, v20, v19);
  sub_26124C6C4(v29, v31);
  if ((*(v21 + 48))(v19, 1, v20) == 1)
  {
    v32 = v73;
    sub_26124C718(v19, &qword_27FE9F568, &unk_2613AC620);
LABEL_3:
    v33 = sub_26129B5FC();
    sub_26125A870(v33, v32, &qword_27FE9F560, &qword_2613A3CB0);
    v34 = sub_2613A124C();
    v35 = *(v34 - 8);
    if ((*(v35 + 48))(v32, 1, v34) == 1)
    {
      sub_26124C718(v32, &qword_27FE9F560, &qword_2613A3CB0);
    }

    else
    {
      v36 = sub_2613A122C();
      v37 = sub_2613A1D9C();
      if (os_log_type_enabled(v36, v37))
      {
        v38 = swift_slowAlloc();
        *v38 = 0;
        _os_log_impl(&dword_261243000, v36, v37, "Sanitizing previous cache data", v38, 2u);
        MEMORY[0x266701350](v38, -1, -1);
      }

      (*(v35 + 8))(v32, v34);
    }

    return sub_26139F84C();
  }

  v40 = v20;
  v41 = v69;
  sub_26128A77C(v19, v69);
  v42 = *(v41 + *(v20 + 68));
  if (v42 + -0.5 <= a4)
  {
    sub_26128C614(v41, type metadata accessor for TransactionContainer);
    v32 = v73;
    goto LABEL_3;
  }

  v43 = sub_26129B5FC();
  v44 = v66;
  sub_26125A870(v43, v66, &qword_27FE9F560, &qword_2613A3CB0);
  v45 = sub_2613A124C();
  v46 = *(v45 - 8);
  if ((*(v46 + 48))(v44, 1, v45) == 1)
  {
    sub_26124C718(v44, &qword_27FE9F560, &qword_2613A3CB0);
    v47 = v68;
    v48 = v28;
    v49 = v70;
  }

  else
  {
    v50 = v41;
    v51 = v65;
    sub_26128C5AC(v50, v65, type metadata accessor for TransactionContainer);
    v52 = sub_2613A122C();
    v53 = sub_2613A1D7C();
    v48 = v28;
    if (os_log_type_enabled(v52, v53))
    {
      v54 = swift_slowAlloc();
      v75 = swift_slowAlloc();
      v76[0] = v75;
      *v54 = 136315138;
      sub_26128DA8C(&qword_27FE9F570, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      LODWORD(v74) = v53;
      v55 = sub_2613A23EC();
      v56 = v51;
      v57 = v55;
      v59 = v58;
      sub_26128C614(v56, type metadata accessor for TransactionContainer);
      v60 = sub_26124C11C(v57, v59, v76);

      *(v54 + 4) = v60;
      _os_log_impl(&dword_261243000, v52, v74, "Loading cache data from FS: [%s]", v54, 0xCu);
      v61 = v75;
      __swift_destroy_boxed_opaque_existential_0Tm(v75);
      MEMORY[0x266701350](v61, -1, -1);
      MEMORY[0x266701350](v54, -1, -1);
    }

    else
    {

      sub_26128C614(v51, type metadata accessor for TransactionContainer);
    }

    v49 = v70;
    (*(v46 + 8))(v44, v45);
    v47 = v68;
  }

  v62 = v67;
  v63 = v69;
  (*(v49 + 16))(v47, v69, v48);
  sub_26128C5AC(v63, v62, type metadata accessor for TransactionContainer);
  (*(v21 + 56))(v62, 0, 1, v40);
  swift_beginAccess();
  sub_261283E48(v62, v47);
  swift_endAccess();
  sub_261286AD4(v63, v42);
  return sub_26128C614(v63, type metadata accessor for TransactionContainer);
}

uint64_t sub_261286AD4(uint64_t a1, double a2)
{
  v89 = a1;
  v3 = sub_2613A170C();
  v86 = *(v3 - 8);
  v87 = v3;
  v4 = MEMORY[0x28223BE20](v3);
  v85 = &v63[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v4);
  v84 = &v63[-v6];
  v7 = sub_2613A177C();
  v82 = *(v7 - 8);
  v83 = v7;
  v8 = MEMORY[0x28223BE20](v7);
  v80 = &v63[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v8);
  v81 = &v63[-v10];
  v79 = sub_26139F0BC();
  v78 = *(v79 - 8);
  MEMORY[0x28223BE20](v79);
  v77 = &v63[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v76 = sub_2613A171C();
  v75 = *(v76 - 8);
  MEMORY[0x28223BE20](v76);
  v73 = &v63[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v74 = sub_2613A175C();
  v72 = *(v74 - 8);
  MEMORY[0x28223BE20](v74);
  v71 = &v63[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v70 = sub_2613A1E5C();
  v68 = *(v70 - 8);
  MEMORY[0x28223BE20](v70);
  v15 = &v63[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = sub_26139F13C();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v19 = MEMORY[0x28223BE20](v16);
  v69 = &v63[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v19);
  v21 = &v63[-v20];
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  MEMORY[0x28223BE20](v22 - 8);
  v24 = &v63[-v23];
  swift_beginAccess();
  v88 = v2;
  if (*(*(v2 + 120) + 16))
  {

    sub_26128A6E4(v89);
    if (v25)
    {
      swift_unknownObjectRetain();

      swift_getObjectType();
      sub_2613A1E8C();
      swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  v26 = sub_26129B5FC();
  sub_26125A870(v26, v24, &qword_27FE9F560, &qword_2613A3CB0);
  v27 = sub_2613A124C();
  v28 = *(v27 - 8);
  if ((*(v28 + 48))(v24, 1, v27) == 1)
  {
    sub_26124C718(v24, &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {
    (*(v17 + 16))(v21, v89, v16);
    v29 = sub_2613A122C();
    v30 = sub_2613A1D7C();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v67 = v16;
      v32 = v31;
      v66 = swift_slowAlloc();
      aBlock[0] = v66;
      *v32 = 136315138;
      sub_26128DA8C(&qword_27FE9F570, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v65 = v29;
      v33 = sub_2613A23EC();
      v64 = v30;
      v35 = v34;
      (*(v17 + 8))(v21, v67);
      v36 = sub_26124C11C(v33, v35, aBlock);

      v37 = v32;
      v16 = v67;
      *(v37 + 1) = v36;
      v38 = v65;
      _os_log_impl(&dword_261243000, v65, v64, "Scheduling timer to remove cache data: [%s]", v37, 0xCu);
      v39 = v66;
      __swift_destroy_boxed_opaque_existential_0Tm(v66);
      MEMORY[0x266701350](v39, -1, -1);
      MEMORY[0x266701350](v37, -1, -1);
    }

    else
    {

      (*(v17 + 8))(v21, v16);
    }

    (*(v28 + 8))(v24, v27);
  }

  sub_26128D8D4();
  sub_2613A1E4C();
  v40 = sub_2613A1E6C();
  (*(v68 + 8))(v15, v70);
  v67 = v40;
  ObjectType = swift_getObjectType();
  v42 = v69;
  (*(v17 + 16))(v69, v89, v16);
  v43 = (*(v17 + 80) + 16) & ~*(v17 + 80);
  v44 = swift_allocObject();
  (*(v17 + 32))(v44 + v43, v42, v16);
  *(v44 + ((v18 + v43 + 7) & 0xFFFFFFFFFFFFFFF8)) = v88;
  aBlock[4] = sub_26128D920;
  aBlock[5] = v44;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_261276D54;
  aBlock[3] = &block_descriptor_1;
  v45 = _Block_copy(aBlock);

  v46 = v71;
  sub_2613A173C();
  v47 = v73;
  v70 = ObjectType;
  sub_261287B10();
  sub_2613A1E7C();
  _Block_release(v45);
  (*(v75 + 8))(v47, v76);
  (*(v72 + 8))(v46, v74);

  v48 = v77;
  sub_26139F0AC();
  sub_26139F07C();
  (*(v78 + 8))(v48, v79);
  v49 = v80;
  sub_2613A176C();
  v50 = v81;
  sub_2613A17CC();
  v82 = *(v82 + 8);
  v51 = v49;
  v52 = v83;
  (v82)(v51, v83);
  v54 = v86;
  v53 = v87;
  v55 = *(v86 + 104);
  v56 = v84;
  v55(v84, *MEMORY[0x277D85180], v87);
  v57 = v85;
  *v85 = 0;
  v55(v57, *MEMORY[0x277D85168], v53);
  v58 = v67;
  MEMORY[0x266700370](v50, v56, v57, v70);
  v59 = *(v54 + 8);
  v59(v57, v53);
  v59(v56, v53);
  (v82)(v50, v52);
  sub_2613A1E9C();
  v60 = v88;
  swift_beginAccess();
  swift_unknownObjectRetain();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v90 = *(v60 + 120);
  *(v60 + 120) = 0x8000000000000000;
  sub_26128B698(v58, v89, isUniquelyReferenced_nonNull_native);
  *(v60 + 120) = v90;
  swift_endAccess();
  return swift_unknownObjectRelease();
}

uint64_t sub_2612875D4(uint64_t a1, uint64_t a2)
{
  v34 = a2;
  v3 = sub_26139F13C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v26 - v11;
  v33 = sub_26129B5FC();
  sub_26125A870(v33, v12, &qword_27FE9F560, &qword_2613A3CB0);
  v13 = sub_2613A124C();
  v14 = *(v13 - 8);
  v32 = *(v14 + 48);
  if (v32(v12, 1, v13) == 1)
  {
    sub_26124C718(v12, &qword_27FE9F560, &qword_2613A3CB0);
    v15 = a1;
  }

  else
  {
    v30 = v14;
    v31 = v13;
    v16 = *(v4 + 16);
    v29 = a1;
    v16(v6, a1, v3);
    v17 = sub_2613A122C();
    v18 = sub_2613A1D7C();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v35 = v27;
      *v19 = 136315138;
      sub_26128DA8C(&qword_27FE9F570, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v20 = sub_2613A23EC();
      v28 = v10;
      v22 = v21;
      (*(v4 + 8))(v6, v3);
      v23 = sub_26124C11C(v20, v22, &v35);

      *(v19 + 4) = v23;
      _os_log_impl(&dword_261243000, v17, v18, "Timer expired, removing cache data: [%s]", v19, 0xCu);
      v24 = v27;
      __swift_destroy_boxed_opaque_existential_0Tm(v27);
      MEMORY[0x266701350](v24, -1, -1);
      MEMORY[0x266701350](v19, -1, -1);
    }

    else
    {

      (*(v4 + 8))(v6, v3);
    }

    (*(v30 + 8))(v12, v31);
    v15 = v29;
  }

  return (*(*v34 + 184))(v15);
}

uint64_t sub_261287B10()
{
  sub_2613A171C();
  sub_26128DA8C(&qword_27FE9F4B0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE9F640, &unk_2613AA600);
  sub_26128D9C4();
  return sub_2613A203C();
}

uint64_t sub_261287BC8()
{

  swift_defaultActor_destroy();

  return swift_defaultActor_deallocate();
}

uint64_t sub_261287C1C()
{
  type metadata accessor for TransactionDataManager();
  v0 = swift_allocObject();
  result = sub_261287CA8();
  qword_27FEAEC68 = v0;
  return result;
}

uint64_t *sub_261287C58()
{
  if (qword_27FEA2860 != -1)
  {
    swift_once();
  }

  return &qword_27FEAEC68;
}

uint64_t sub_261287CA8()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE9F580, &qword_2613A5480);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v14 - v3;
  *(v0 + 16) = MEMORY[0x277D84F90];
  sub_2613A121C();
  v5 = sub_2613A11EC();
  v7 = v6;
  type metadata accessor for TransactionContainerCache();
  v8 = swift_allocObject();
  swift_defaultActor_initialize();
  v8[16] = v5;
  v8[17] = v7;
  v9 = MEMORY[0x277D84F98];
  v8[14] = MEMORY[0x277D84F98];
  v8[15] = v9;
  *(v1 + 24) = v8;
  v10 = sub_2613A1C1C();
  (*(*(v10 - 8) + 56))(v4, 1, 1, v10);
  v11 = swift_allocObject();
  swift_weakInit();
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = v11;
  sub_261287FE0(0, 0, v4, &unk_2613A5788, v12);

  return v1;
}

uint64_t sub_261287E28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 40) = a1;
  *(v4 + 48) = a4;
  return MEMORY[0x2822009F8](sub_261287E48, 0, 0);
}

uint64_t sub_261287E48()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 56) = Strong;
  if (Strong)
  {
    v2 = *(Strong + 24);
    *(v0 + 64) = v2;

    v3 = (*v2 + 216) & 0xFFFFFFFFFFFFLL | 0x42A7000000000000;
    *(v0 + 72) = *(*v2 + 216);
    *(v0 + 80) = v3;

    return MEMORY[0x2822009F8](sub_261287F44, v2, 0);
  }

  else
  {
    **(v0 + 40) = 1;
    v4 = *(v0 + 8);

    return v4();
  }
}

uint64_t sub_261287F44()
{
  (*(v0 + 72))();

  return MEMORY[0x2822009F8](sub_261287FB8, 0, 0);
}

uint64_t sub_261287FE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE9F580, &qword_2613A5480);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v25 - v10;
  sub_26125A870(a3, v25 - v10, &unk_27FE9F580, &qword_2613A5480);
  v12 = sub_2613A1C1C();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_26124C718(v11, &unk_27FE9F580, &qword_2613A5480);
  }

  else
  {
    sub_2613A1C0C();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_2613A1BCC();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_2613A198C() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE9F600, &unk_2613AD080);
      v21 = (v18 | v16);
      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v22 = swift_task_create();

      sub_26124C718(a3, &unk_27FE9F580, &qword_2613A5480);

      return v22;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_26124C718(a3, &unk_27FE9F580, &qword_2613A5480);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE9F600, &unk_2613AD080);
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_2612882F4(uint64_t a1)
{
  v3 = sub_26139F13C();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v21 - v8;
  v12 = *(v1 + 16);
  v10 = (v1 + 16);
  v11 = v12;
  v13 = v12[2];
  if (v13 > 9)
  {
    sub_26128D698(0, 1);
    (*(v4 + 16))(v7, a1, v3);
    v11 = *v10;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v10 = v11;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v11 = sub_26128A380(0, v11[2] + 1, 1, v11, &qword_27FE9F310, qword_2613A44C0, MEMORY[0x277CC95F0]);
      *v10 = v11;
    }

    v16 = v11[2];
    v19 = v11[3];
    v17 = v16 + 1;
    if (v16 >= v19 >> 1)
    {
      v11 = sub_26128A380((v19 > 1), v16 + 1, 1, v11, &qword_27FE9F310, qword_2613A44C0, MEMORY[0x277CC95F0]);
    }

    v9 = v7;
  }

  else
  {
    (*(v4 + 16))(&v21 - v8, a1, v3);
    v14 = swift_isUniquelyReferenced_nonNull_native();
    *v10 = v11;
    if ((v14 & 1) == 0)
    {
      v11 = sub_26128A380(0, v13 + 1, 1, v11, &qword_27FE9F310, qword_2613A44C0, MEMORY[0x277CC95F0]);
      *v10 = v11;
    }

    v16 = v11[2];
    v15 = v11[3];
    v17 = v16 + 1;
    if (v16 >= v15 >> 1)
    {
      v11 = sub_26128A380((v15 > 1), v16 + 1, 1, v11, &qword_27FE9F310, qword_2613A44C0, MEMORY[0x277CC95F0]);
    }
  }

  v11[2] = v17;
  result = (*(v4 + 32))(v11 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v16, v9, v3);
  *v10 = v11;
  return result;
}

uint64_t sub_2612885B8(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F568, &unk_2613AC620);
  v3[5] = swift_task_alloc();
  v4 = type metadata accessor for TransactionContainer(0);
  v3[6] = v4;
  v3[7] = *(v4 - 8);
  v3[8] = swift_task_alloc();
  v5 = sub_26139F13C();
  v3[9] = v5;
  v3[10] = *(v5 - 8);
  v3[11] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v3[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_261288748, 0, 0);
}

uint64_t sub_261288748(uint64_t a1)
{
  v23 = v1;
  v2 = v1[12];
  v3 = sub_26129B5FC();
  sub_26125A870(v3, v2, &qword_27FE9F560, &qword_2613A3CB0);
  v4 = sub_2613A124C();
  v5 = *(v4 - 8);
  if ((*(v5 + 48))(v2, 1, v4) == 1)
  {
    sub_26124C718(v1[12], &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {
    (*(v1[10] + 16))(v1[11], v1[3], v1[9]);
    v6 = sub_2613A122C();
    v7 = sub_2613A1D7C();
    v8 = os_log_type_enabled(v6, v7);
    v10 = v1[10];
    v9 = v1[11];
    v11 = v1[9];
    if (v8)
    {
      v21 = v7;
      v12 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v22 = v20;
      *v12 = 136315138;
      sub_26128DA8C(&qword_27FE9F570, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v13 = sub_2613A23EC();
      v15 = v14;
      (*(v10 + 8))(v9, v11);
      v16 = sub_26124C11C(v13, v15, &v22);

      *(v12 + 4) = v16;
      _os_log_impl(&dword_261243000, v6, v21, "Retrieving: [%s] from cache", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v20);
      MEMORY[0x266701350](v20, -1, -1);
      MEMORY[0x266701350](v12, -1, -1);
    }

    else
    {

      (*(v10 + 8))(v9, v11);
    }

    (*(v5 + 8))(v1[12], v4);
  }

  v17 = *(v1[4] + 24);
  v1[13] = v17;
  v18 = (*v17 + 176) & 0xFFFFFFFFFFFFLL | 0x8B93000000000000;
  v1[14] = *(*v17 + 176);
  v1[15] = v18;

  return MEMORY[0x2822009F8](sub_261288A10, v17, 0);
}

uint64_t sub_261288A10()
{
  (*(v0 + 112))(*(v0 + 24));

  return MEMORY[0x2822009F8](sub_261288A84, 0, 0);
}

uint64_t sub_261288A84()
{
  v1 = v0[5];
  if ((*(v0[7] + 48))(v1, 1, v0[6]) == 1)
  {
    sub_26124C718(v1, &qword_27FE9F568, &unk_2613AC620);
    (*(v0[7] + 56))(v0[2], 1, 1, v0[6]);

    v2 = v0[1];

    return v2();
  }

  else
  {
    v4 = v0[13];
    sub_26128A77C(v1, v0[8]);
    v5 = (*v4 + 184) & 0xFFFFFFFFFFFFLL | 0xF994000000000000;
    v0[16] = *(*v4 + 184);
    v0[17] = v5;

    return MEMORY[0x2822009F8](sub_261288BD4, v4, 0);
  }
}

uint64_t sub_261288BD4()
{
  (*(v0 + 128))(*(v0 + 24));

  return MEMORY[0x2822009F8](sub_261288C6C, 0, 0);
}

uint64_t sub_261288C6C()
{
  sub_26128A77C(v0[8], v0[2]);
  (*(v0[7] + 56))(v0[2], 0, 1, v0[6]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_261288D20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t a1), uint64_t (*a5)(uint64_t a1))
{
  v170 = a5;
  v163 = a2;
  v164 = a4;
  v172 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE9F580, &qword_2613A5480);
  MEMORY[0x28223BE20](v6 - 8);
  v173 = &v150 - v7;
  v8 = type metadata accessor for TransactionContainer(0);
  v165 = *(v8 - 1);
  v9 = MEMORY[0x28223BE20](v8);
  v166 = v10;
  v167 = &v150 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v12 = &v150 - v11;
  v13 = sub_26139F0BC();
  v161 = *(v13 - 8);
  v162 = v13;
  MEMORY[0x28223BE20](v13);
  v160 = &v150 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_26139F13C();
  v174 = *(v15 - 8);
  v175 = v15;
  v16 = MEMORY[0x28223BE20](v15);
  v171 = &v150 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v169 = v17;
  MEMORY[0x28223BE20](v16);
  v176 = &v150 - v18;
  v19 = type metadata accessor for TransactionData(0);
  MEMORY[0x28223BE20](v19);
  v21 = &v150 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v23 = MEMORY[0x28223BE20](v22 - 8);
  v159 = &v150 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v26 = &v150 - v25;
  v157 = sub_26129B5FC();
  sub_26125A870(v157, v26, &qword_27FE9F560, &qword_2613A3CB0);
  v27 = sub_2613A124C();
  v168 = *(v27 - 8);
  v28 = *(v168 + 48);
  v156 = v168 + 48;
  v155 = v28;
  v29 = v28(v26, 1, v27);
  v158 = v27;
  if (v29 == 1)
  {
    sub_26124C718(v26, &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {
    sub_26128C5AC(a1, v21, type metadata accessor for TransactionData);
    v30 = sub_2613A122C();
    v31 = sub_2613A1D7C();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v153 = v32;
      v154 = swift_slowAlloc();
      v178 = v154;
      *v32 = 136315138;
      sub_26128DA8C(&qword_27FE9F570, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      LODWORD(v152) = v31;
      v33 = sub_2613A23EC();
      v35 = v34;
      sub_26128C614(v21, type metadata accessor for TransactionData);
      v36 = sub_26124C11C(v33, v35, &v178);

      v37 = v153;
      *(v153 + 1) = v36;
      v38 = v37;
      _os_log_impl(&dword_261243000, v30, v152, "Storing: [%s] in cache", v37, 0xCu);
      v39 = v154;
      __swift_destroy_boxed_opaque_existential_0Tm(v154);
      MEMORY[0x266701350](v39, -1, -1);
      MEMORY[0x266701350](v38, -1, -1);
    }

    else
    {

      sub_26128C614(v21, type metadata accessor for TransactionData);
    }

    (*(v168 + 8))(v26, v27);
  }

  v40 = v176;
  v41 = v175;
  v42 = v174 + 16;
  v43 = *(v174 + 16);
  v43(v176, a1);
  v44 = *(v177 + 16);

  v45 = v40;
  LOBYTE(v40) = sub_2612899E4(v40, v44);

  if (v40)
  {
    v46 = v159;
    sub_26125A870(v157, v159, &qword_27FE9F560, &qword_2613A3CB0);
    v47 = v158;
    if (v155(v46, 1, v158) == 1)
    {
      sub_26124C718(v46, &qword_27FE9F560, &qword_2613A3CB0);
      v48 = v174;
    }

    else
    {
      v138 = sub_2613A122C();
      v139 = sub_2613A1D7C();
      v140 = os_log_type_enabled(v138, v139);
      v48 = v174;
      if (v140)
      {
        v141 = swift_slowAlloc();
        *v141 = 0;
        _os_log_impl(&dword_261243000, v138, v139, "Transaction ID already saved", v141, 2u);
        MEMORY[0x266701350](v141, -1, -1);
      }

      (*(v168 + 8))(v46, v47);
    }

    v142 = sub_2613A1C1C();
    v143 = v173;
    (*(*(v142 - 8) + 56))(v173, 1, 1, v142);
    v144 = swift_allocObject();
    swift_weakInit();
    v145 = v171;
    v146 = v175;
    v137 = v176;
    (v43)(v171, v176, v175);
    v136 = v146;
    v147 = (*(v48 + 80) + 40) & ~*(v48 + 80);
    v148 = swift_allocObject();
    *(v148 + 2) = 0;
    *(v148 + 3) = 0;
    *(v148 + 4) = v144;
    (*(v48 + 32))(&v148[v147], v145, v136);
    sub_261289D40(0, 0, v143, &unk_2613A5560, v148);
  }

  else
  {
    v49 = v160;
    sub_26139F0AC();
    sub_26139F07C();
    v51 = v50;
    (*(v161 + 8))(v49, v162);
    v150 = v42;
    v52 = v43;
    (v43)(v12, v45, v41);
    v53 = (a1 + v19[5]);
    v54 = *v53;
    v168 = v53[1];
    v55 = v168;
    v56 = v19[10];
    v57 = (a1 + v19[9]);
    v58 = *v57;
    v161 = v57[1];
    v59 = v161;
    v60 = (a1 + v56);
    v61 = v19[11];
    v62 = v19[12];
    v64 = v19[13];
    v63 = v19[14];
    v66 = v19[15];
    v65 = v19[16];
    v68 = v19[17];
    v67 = v19[18];
    v69 = v19[7];
    v71 = v19[20];
    v70 = v19[21];
    v73 = v19[22];
    v72 = v19[23];
    v74 = v19[27];
    v75 = v19[29];
    v76 = v19[32];
    v77 = &v12[v8[5]];
    *v77 = v54;
    *(v77 + 1) = v55;
    v78 = *v60;
    v158 = v60[1];
    v79 = v158;
    v80 = (a1 + v62);
    v81 = &v12[v8[6]];
    *v81 = v58;
    *(v81 + 1) = v59;
    v82 = *v80;
    v157 = v80[1];
    v83 = v157;
    v84 = &v12[v8[7]];
    *v84 = v78;
    *(v84 + 1) = v79;
    v85 = *(a1 + v64);
    v86 = *(a1 + v64 + 8);
    v154 = v86;
    v87 = (a1 + v61);
    v88 = &v12[v8[8]];
    *v88 = v82;
    *(v88 + 1) = v83;
    v156 = *v87;
    v89 = v156;
    v155 = v87[1];
    v90 = v155;
    v91 = (a1 + v63);
    v92 = &v12[v8[9]];
    *v92 = v85;
    *(v92 + 1) = v86;
    v93 = *v91;
    v162 = v91[1];
    v94 = v162;
    v95 = (a1 + v66);
    v96 = &v12[v8[10]];
    *v96 = v89;
    v96[1] = v90;
    v97 = &v12[v8[11]];
    *v97 = v93;
    *(v97 + 1) = v94;
    v98 = *v95;
    v160 = v95[1];
    v99 = v160;
    v100 = (a1 + v65);
    v101 = &v12[v8[12]];
    *v101 = v98;
    *(v101 + 1) = v99;
    v102 = *v100;
    v159 = v100[1];
    v103 = v159;
    v104 = &v12[v8[13]];
    *v104 = v102;
    *(v104 + 1) = v103;
    v12[v8[14]] = *(a1 + v68);
    v105 = (a1 + v69);
    v12[v8[15]] = *(a1 + v67);
    v106 = *v105;
    v153 = v105[1];
    v107 = v153;
    v108 = &v12[v8[16]];
    *v108 = v106;
    *(v108 + 1) = v107;
    LOBYTE(v71) = *(a1 + v71);
    *&v12[v8[17]] = v51 + 55.0;
    v12[v8[18]] = v71;
    v12[v8[19]] = *(a1 + v70);
    v12[v8[20]] = *(a1 + v73);
    v109 = (a1 + v72);
    v110 = *v109;
    v152 = v109[1];
    v111 = v152;
    v112 = (a1 + v74);
    v113 = (a1 + v75);
    v114 = (a1 + v76);
    v115 = &v12[v8[21]];
    *v115 = v110;
    *(v115 + 1) = v111;
    v116 = *v112;
    v151 = v112[1];
    v117 = v151;
    v118 = &v12[v8[22]];
    *v118 = v116;
    *(v118 + 1) = v117;
    v119 = &v12[v8[23]];
    *v119 = v163;
    v119[1] = v172;
    v120 = &v12[v8[24]];
    *v120 = v164;
    v121 = *v113;
    v163 = v113[1];
    v122 = v163;
    v120[1] = v170;
    v123 = &v12[v8[25]];
    *v123 = v121;
    *(v123 + 1) = v122;
    v124 = v114[1];
    v125 = &v12[v8[26]];
    *v125 = *v114;
    *(v125 + 1) = v124;
    v126 = sub_2613A1C1C();
    (*(*(v126 - 8) + 56))(v173, 1, 1, v126);
    v127 = swift_allocObject();
    swift_weakInit();
    v128 = v171;
    v129 = v175;
    v52(v171, v176, v175);
    v164 = type metadata accessor for TransactionContainer;
    v130 = v167;
    sub_26128C5AC(v12, v167, type metadata accessor for TransactionContainer);
    v131 = v174;
    v132 = (*(v174 + 80) + 40) & ~*(v174 + 80);
    v133 = (v169 + *(v165 + 80) + v132) & ~*(v165 + 80);
    v134 = swift_allocObject();
    v134[2] = 0;
    v134[3] = 0;
    v134[4] = v127;
    v135 = v134 + v132;
    v136 = v129;
    (*(v131 + 32))(v135, v128, v129);
    sub_26128A77C(v130, v134 + v133);

    sub_26124C778(v156, v155);

    sub_261289D40(0, 0, v173, &unk_2613A5550, v134);

    v137 = v176;
    sub_2612882F4(v176);
    sub_26128C614(v12, v164);
    v48 = v131;
  }

  return (*(v48 + 8))(v137, v136);
}

BOOL sub_2612899E4(uint64_t a1, uint64_t a2)
{
  v2 = 0;
  v3 = *(a2 + 16);
  do
  {
    v4 = v2;
    if (v3 == v2)
    {
      break;
    }

    sub_26139F13C();
    ++v2;
    sub_26128DA8C(&unk_281451E70, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
  }

  while ((sub_2613A188C() & 1) == 0);
  return v3 != v4;
}

uint64_t sub_261289AF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[7] = a5;
  v6[8] = a6;
  v6[5] = a1;
  v6[6] = a4;
  return MEMORY[0x2822009F8](sub_261289B14, 0, 0);
}

uint64_t sub_261289B14()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 72) = Strong;
  if (Strong)
  {
    v2 = *(Strong + 24);
    *(v0 + 80) = v2;

    v3 = (*v2 + 168) & 0xFFFFFFFFFFFFLL | 0xB04F000000000000;
    *(v0 + 88) = *(*v2 + 168);
    *(v0 + 96) = v3;

    return MEMORY[0x2822009F8](sub_261289C14, v2, 0);
  }

  else
  {
    **(v0 + 40) = 1;
    v4 = *(v0 + 8);

    return v4();
  }
}

uint64_t sub_261289C14()
{
  (*(v0 + 88))(*(v0 + 56), *(v0 + 64));
  *(v0 + 104) = 0;

  return MEMORY[0x2822009F8](sub_261289CB0, 0, 0);
}

uint64_t sub_261289CDC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_261289D40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE9F580, &qword_2613A5480);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v22 - v9;
  sub_26125A870(a3, v22 - v9, &unk_27FE9F580, &qword_2613A5480);
  v11 = sub_2613A1C1C();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_26124C718(v10, &unk_27FE9F580, &qword_2613A5480);
  }

  else
  {
    sub_2613A1C0C();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_2613A1BCC();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_2613A198C() + 32;

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE9F600, &unk_2613AD080);
      v19 = (v17 | v15);
      if (v17 | v15)
      {
        v23[0] = 0;
        v23[1] = 0;
        v19 = v23;
        v23[2] = v15;
        v23[3] = v17;
      }

      v22[1] = 7;
      v22[2] = v19;
      v22[3] = v18;
      v20 = swift_task_create();

      sub_26124C718(a3, &unk_27FE9F580, &qword_2613A5480);

      return v20;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_26124C718(a3, &unk_27FE9F580, &qword_2613A5480);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE9F600, &unk_2613AD080);
  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_261289FFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  v5[5] = a1;
  return MEMORY[0x2822009F8](sub_26128A020, 0, 0);
}

uint64_t sub_26128A020()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 64) = Strong;
  if (Strong)
  {
    v2 = *(Strong + 24);
    *(v0 + 72) = v2;

    v3 = (*v2 + 184) & 0xFFFFFFFFFFFFLL | 0xF994000000000000;
    *(v0 + 80) = *(*v2 + 184);
    *(v0 + 88) = v3;

    return MEMORY[0x2822009F8](sub_26128A120, v2, 0);
  }

  else
  {
    **(v0 + 40) = 1;
    v4 = *(v0 + 8);

    return v4();
  }
}

uint64_t sub_26128A120()
{
  (*(v0 + 80))(*(v0 + 56));
  *(v0 + 96) = 0;

  return MEMORY[0x2822009F8](sub_26128A1BC, 0, 0);
}

uint64_t sub_26128A1E8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_26128A24C()
{

  return swift_deallocClassInstance();
}

char *sub_26128A28C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F610, &qword_2613A57A8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
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

void *sub_26128A380(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
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

uint64_t sub_26128A55C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = sub_26128A6E4(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v21 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_26128C020();
      v9 = v21;
    }

    v10 = *(v9 + 48);
    v11 = sub_26139F13C();
    (*(*(v11 - 8) + 8))(v10 + *(*(v11 - 8) + 72) * v7, v11);
    v12 = *(v9 + 56);
    v13 = type metadata accessor for TransactionContainer(0);
    v20 = *(v13 - 8);
    sub_26128A77C(v12 + *(v20 + 72) * v7, a2);
    sub_26128B354(v7, v9);
    *v3 = v9;
    v14 = *(v20 + 56);
    v15 = a2;
    v16 = 0;
    v17 = v13;
  }

  else
  {
    v18 = type metadata accessor for TransactionContainer(0);
    v14 = *(*(v18 - 8) + 56);
    v17 = v18;
    v15 = a2;
    v16 = 1;
  }

  return v14(v15, v16, 1, v17);
}

unint64_t sub_26128A6E4(uint64_t a1)
{
  sub_26139F13C();
  sub_26128DA8C(&qword_281451E80, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  v2 = sub_2613A182C();

  return sub_26128BBE0(a1, v2);
}

uint64_t sub_26128A77C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TransactionContainer(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_26128A7E0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = sub_26139F13C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F628, &qword_2613A57B8);
  v39 = v4;
  result = sub_2613A223C();
  v11 = result;
  if (*(v9 + 16))
  {
    v43 = v8;
    v35 = v2;
    v12 = 0;
    v13 = (v9 + 64);
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v9 + 64);
    v17 = (v14 + 63) >> 6;
    v36 = (v6 + 16);
    v37 = v9;
    v38 = v6;
    v40 = (v6 + 32);
    v18 = result + 64;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v23 = v20 | (v12 << 6);
      v24 = *(v9 + 48);
      v42 = *(v38 + 72);
      v25 = v24 + v42 * v23;
      if (v39)
      {
        (*v40)(v43, v25, v5);
        v41 = *(*(v9 + 56) + 8 * v23);
      }

      else
      {
        (*v36)(v43, v25, v5);
        v41 = *(*(v9 + 56) + 8 * v23);
        swift_unknownObjectRetain();
      }

      sub_26128DA8C(&qword_281451E80, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
      result = sub_2613A182C();
      v26 = -1 << *(v11 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v18 + 8 * (v27 >> 6))) == 0)
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
          v32 = *(v18 + 8 * v28);
          if (v32 != -1)
          {
            v19 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v27) & ~*(v18 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = (*v40)(*(v11 + 48) + v42 * v19, v43, v5);
      *(*(v11 + 56) + 8 * v19) = v41;
      ++*(v11 + 16);
      v9 = v37;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v22 = v13[v12];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_34;
    }

    v33 = 1 << *(v9 + 32);
    v3 = v35;
    if (v33 >= 64)
    {
      bzero(v13, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v33;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
  return result;
}

uint64_t sub_26128ABBC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = type metadata accessor for TransactionContainer(0);
  v42 = *(v5 - 8);
  MEMORY[0x28223BE20](v5 - 8);
  v47 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_26139F13C();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v46 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F658, &unk_2613A57C8);
  v43 = v4;
  result = sub_2613A223C();
  v12 = result;
  if (*(v10 + 16))
  {
    v38 = v2;
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
    v39 = (v8 + 16);
    v40 = v8;
    v44 = (v8 + 32);
    v19 = result + 64;
    v41 = v10;
    while (v17)
    {
      v21 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_15:
      v24 = v21 | (v13 << 6);
      v25 = *(v10 + 48);
      v45 = *(v8 + 72);
      v26 = v25 + v45 * v24;
      if (v43)
      {
        (*v44)(v46, v26, v7);
        v27 = *(v10 + 56);
        v28 = *(v42 + 72);
        sub_26128A77C(v27 + v28 * v24, v47);
      }

      else
      {
        (*v39)(v46, v26, v7);
        v29 = *(v10 + 56);
        v28 = *(v42 + 72);
        sub_26128C5AC(v29 + v28 * v24, v47, type metadata accessor for TransactionContainer);
      }

      sub_26128DA8C(&qword_281451E80, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
      result = sub_2613A182C();
      v30 = -1 << *(v12 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v19 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v19 + 8 * v32);
          if (v36 != -1)
          {
            v20 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v20 = __clz(__rbit64((-1 << v31) & ~*(v19 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v19 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      (*v44)((*(v12 + 48) + v45 * v20), v46, v7);
      result = sub_26128A77C(v47, *(v12 + 56) + v28 * v20);
      ++*(v12 + 16);
      v8 = v40;
      v10 = v41;
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

    if ((v43 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_34;
    }

    v37 = 1 << *(v10 + 32);
    v3 = v38;
    if (v37 >= 64)
    {
      bzero(v14, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v14 = -1 << v37;
    }

    *(v10 + 16) = 0;
  }

LABEL_34:
  *v3 = v12;
  return result;
}

unint64_t sub_26128B034(int64_t a1, uint64_t a2)
{
  v40 = sub_26139F13C();
  v4 = *(v40 - 8);
  result = MEMORY[0x28223BE20](v40);
  v39 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a2 + 64;
  v9 = -1 << *(a2 + 32);
  v10 = (a1 + 1) & ~v9;
  if ((*(a2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v41 = v6;
    v12 = sub_2613A205C();
    v13 = v40;
    v6 = v41;
    v14 = v11;
    v38 = (v12 + 1) & v11;
    v16 = *(v4 + 16);
    v15 = v4 + 16;
    v36 = a2 + 64;
    v37 = v16;
    v17 = *(v15 + 56);
    v35 = (v15 - 8);
    do
    {
      v18 = v17;
      v19 = v17 * v10;
      v20 = v39;
      v21 = v14;
      v22 = v15;
      v37(v39, *(v6 + 48) + v17 * v10, v13);
      sub_26128DA8C(&qword_281451E80, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
      v23 = sub_2613A182C();
      result = (*v35)(v20, v13);
      v14 = v21;
      v24 = v23 & v21;
      if (a1 >= v38)
      {
        if (v24 >= v38 && a1 >= v24)
        {
LABEL_15:
          v6 = v41;
          v27 = *(v41 + 48);
          result = v27 + v18 * a1;
          v15 = v22;
          if (v18 * a1 < v19 || (v17 = v18, result >= v27 + v19 + v18))
          {
            result = swift_arrayInitWithTakeFrontToBack();
            v6 = v41;
            v17 = v18;
            v14 = v21;
            v8 = v36;
          }

          else
          {
            v8 = v36;
            if (v18 * a1 != v19)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v6 = v41;
              v17 = v18;
              v14 = v21;
            }
          }

          v28 = *(v6 + 56);
          v29 = (v28 + 8 * a1);
          v30 = (v28 + 8 * v10);
          if (a1 != v10 || v29 >= v30 + 1)
          {
            *v29 = *v30;
            a1 = v10;
          }

          goto LABEL_4;
        }
      }

      else if (v24 >= v38 || a1 >= v24)
      {
        goto LABEL_15;
      }

      v15 = v22;
      v8 = v36;
      v17 = v18;
      v6 = v41;
LABEL_4:
      v10 = (v10 + 1) & v14;
    }

    while (((*(v8 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  *(v8 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v31 = *(v6 + 16);
  v32 = __OFSUB__(v31, 1);
  v33 = v31 - 1;
  if (v32)
  {
    __break(1u);
  }

  else
  {
    *(v6 + 16) = v33;
    ++*(v6 + 36);
  }

  return result;
}

unint64_t sub_26128B354(int64_t a1, uint64_t a2)
{
  v4 = sub_26139F13C();
  v5 = *(v4 - 8);
  result = MEMORY[0x28223BE20](v4);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a2 + 64;
  v10 = -1 << *(a2 + 32);
  v11 = (a1 + 1) & ~v10;
  if ((*(a2 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v41 = a2;
    v12 = ~v10;
    v13 = sub_2613A205C();
    v14 = v12;
    a2 = v41;
    v40 = (v13 + 1) & v14;
    v16 = *(v5 + 16);
    v15 = v5 + 16;
    v38 = v9;
    v39 = v16;
    v17 = *(v15 + 56);
    v37 = (v15 - 8);
    do
    {
      v18 = v17;
      v19 = v17 * v11;
      v20 = v14;
      v21 = v15;
      v39(v8, *(a2 + 48) + v17 * v11, v4);
      sub_26128DA8C(&qword_281451E80, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
      v22 = sub_2613A182C();
      result = (*v37)(v8, v4);
      v14 = v20;
      v23 = v22 & v20;
      if (a1 >= v40)
      {
        if (v23 >= v40 && a1 >= v23)
        {
LABEL_15:
          v15 = v21;
          if (v18 * a1 < v19 || *(v41 + 48) + v18 * a1 >= (*(v41 + 48) + v19 + v18))
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v18 * a1 != v19)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 = v41;
          v26 = *(v41 + 56);
          v27 = *(*(type metadata accessor for TransactionContainer(0) - 8) + 72);
          v28 = v27 * a1;
          result = v26 + v27 * a1;
          v29 = v27 * v11;
          v30 = v26 + v27 * v11 + v27;
          if (v28 < v29 || result >= v30)
          {
            result = swift_arrayInitWithTakeFrontToBack();
            a1 = v11;
            v9 = v38;
            v14 = v20;
          }

          else
          {
            a1 = v11;
            v32 = v28 == v29;
            v9 = v38;
            v14 = v20;
            if (!v32)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v14 = v20;
              a1 = v11;
            }
          }

          goto LABEL_4;
        }
      }

      else if (v23 >= v40 || a1 >= v23)
      {
        goto LABEL_15;
      }

      v15 = v21;
      v9 = v38;
      a2 = v41;
LABEL_4:
      v11 = (v11 + 1) & v14;
      v17 = v18;
    }

    while (((*(v9 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v33 = *(a2 + 16);
  v34 = __OFSUB__(v33, 1);
  v35 = v33 - 1;
  if (v34)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v35;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_26128B698(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_26139F13C();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_26128A6E4(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_15;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 < v17 || (a3 & 1) == 0)
  {
    if (v19 >= v17 && (a3 & 1) == 0)
    {
      sub_26128BDA0();
      goto LABEL_7;
    }

    sub_26128A7E0(v17, a3 & 1);
    v22 = sub_26128A6E4(a2);
    if ((v18 & 1) == (v23 & 1))
    {
      v14 = v22;
      v20 = *v4;
      if (v18)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v11, a2, v8);
      return sub_26128BA4C(v14, v11, a1, v20);
    }

LABEL_15:
    result = sub_2613A249C();
    __break(1u);
    return result;
  }

LABEL_7:
  v20 = *v4;
  if ((v18 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  *(v20[7] + 8 * v14) = a1;

  return swift_unknownObjectRelease();
}

uint64_t sub_26128B864(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_26139F13C();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_26128A6E4(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_15;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 < v17 || (a3 & 1) == 0)
  {
    if (v19 >= v17 && (a3 & 1) == 0)
    {
      sub_26128C020();
      goto LABEL_7;
    }

    sub_26128ABBC(v17, a3 & 1);
    v24 = sub_26128A6E4(a2);
    if ((v18 & 1) == (v25 & 1))
    {
      v14 = v24;
      v20 = *v4;
      if (v18)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v11, a2, v8);
      return sub_26128BB04(v14, v11, a1, v20);
    }

LABEL_15:
    result = sub_2613A249C();
    __break(1u);
    return result;
  }

LABEL_7:
  v20 = *v4;
  if ((v18 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v21 = v20[7];
  v22 = v21 + *(*(type metadata accessor for TransactionContainer(0) - 8) + 72) * v14;

  return sub_26128DA28(a1, v22);
}

uint64_t sub_26128BA4C(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_26139F13C();
  result = (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  *(a4[7] + 8 * a1) = a3;
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

uint64_t sub_26128BB04(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_26139F13C();
  (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  v10 = a4[7];
  v11 = type metadata accessor for TransactionContainer(0);
  result = sub_26128A77C(a3, v10 + *(*(v11 - 8) + 72) * a1);
  v13 = a4[2];
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (v14)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v15;
  }

  return result;
}

unint64_t sub_26128BBE0(uint64_t a1, uint64_t a2)
{
  v19 = a1;
  v4 = sub_26139F13C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = v2;
  v8 = -1 << *(v2 + 32);
  v9 = a2 & ~v8;
  v18 = v2 + 64;
  if ((*(v2 + 64 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    v13 = *(v5 + 16);
    v12 = v5 + 16;
    v11 = v13;
    v14 = *(v12 + 56);
    do
    {
      v11(v7, *(v20 + 48) + v14 * v9, v4);
      sub_26128DA8C(&unk_281451E70, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
      v15 = sub_2613A188C();
      (*(v12 - 8))(v7, v4);
      if (v15)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
    }

    while (((*(v18 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  return v9;
}

char *sub_26128BDA0()
{
  v1 = v0;
  v33 = sub_26139F13C();
  v35 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v32 = &v27 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F628, &qword_2613A57B8);
  v3 = *v0;
  v4 = sub_2613A222C();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 64);
    v7 = (v3 + 64);
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    v28 = v1;
    v29 = v3 + 64;
    if (v5 != v3 || result >= &v7[8 * v8])
    {
      result = memmove(result, v7, 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v34 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v30 = v35 + 32;
    v31 = v35 + 16;
    if (v13)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v36 = (v13 - 1) & v13;
LABEL_14:
        v18 = v15 | (v9 << 6);
        v19 = v35;
        v20 = *(v35 + 72) * v18;
        v22 = v32;
        v21 = v33;
        (*(v35 + 16))(v32, *(v3 + 48) + v20, v33);
        v23 = *(*(v3 + 56) + 8 * v18);
        v24 = v3;
        v25 = v34;
        (*(v19 + 32))(*(v34 + 48) + v20, v22, v21);
        v26 = *(v25 + 56);
        v3 = v24;
        *(v26 + 8 * v18) = v23;
        result = swift_unknownObjectRetain();
        v13 = v36;
      }

      while (v36);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v1 = v28;
        v5 = v34;
        goto LABEL_18;
      }

      v17 = *(v29 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v36 = (v17 - 1) & v17;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v5;
  }

  return result;
}

char *sub_26128C020()
{
  v1 = v0;
  v2 = type metadata accessor for TransactionContainer(0);
  v36 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8);
  v35 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_26139F13C();
  v37 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v33 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F658, &unk_2613A57C8);
  v5 = *v0;
  v6 = sub_2613A222C();
  v7 = v6;
  if (*(v5 + 16))
  {
    result = (v6 + 64);
    v9 = (v5 + 64);
    v10 = ((1 << *(v7 + 32)) + 63) >> 6;
    v29 = v1;
    v30 = v5 + 64;
    if (v7 != v5 || result >= &v9[8 * v10])
    {
      result = memmove(result, v9, 8 * v10);
    }

    v11 = 0;
    v12 = *(v5 + 16);
    v38 = v7;
    *(v7 + 16) = v12;
    v13 = 1 << *(v5 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v5 + 64);
    v16 = (v13 + 63) >> 6;
    v31 = v37 + 32;
    v32 = v37 + 16;
    v17 = v33;
    if (v15)
    {
      do
      {
        v18 = __clz(__rbit64(v15));
        v39 = (v15 - 1) & v15;
LABEL_14:
        v21 = v18 | (v11 << 6);
        v22 = v37;
        v23 = *(v37 + 72) * v21;
        v24 = v34;
        (*(v37 + 16))(v17, *(v5 + 48) + v23, v34);
        v25 = v35;
        v26 = *(v36 + 72) * v21;
        sub_26128C5AC(*(v5 + 56) + v26, v35, type metadata accessor for TransactionContainer);
        v27 = v38;
        (*(v22 + 32))(*(v38 + 48) + v23, v17, v24);
        result = sub_26128A77C(v25, *(v27 + 56) + v26);
        v15 = v39;
      }

      while (v39);
    }

    v19 = v11;
    v7 = v38;
    while (1)
    {
      v11 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v11 >= v16)
      {

        v1 = v29;
        goto LABEL_18;
      }

      v20 = *(v30 + 8 * v11);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v39 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v7;
  }

  return result;
}

void *sub_26128C338(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_26128CA40(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_26128C37C(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_26139F13C() - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(type metadata accessor for TransactionContainer(0) - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v1 + 32);
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_261265144;

  return sub_261289AF0(a1, v11, v12, v10, v1 + v6, v1 + v9);
}

uint64_t sub_26128C4C8(uint64_t a1)
{
  v4 = *(sub_26139F13C() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = *(v1 + 32);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_261262AA4;

  return sub_261289FFC(a1, v7, v8, v6, v1 + v5);
}

uint64_t sub_26128C5AC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_26128C614(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_26128C69C(uint64_t a1)
{
  sub_26139F13C();
  if (v1 <= 0x3F)
  {
    sub_26128C774();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_26128C774()
{
  if (!qword_27FE9F590)
  {
    v0 = sub_2613A1F8C();
    if (!v1)
    {
      atomic_store(v0, &qword_27FE9F590);
    }
  }
}

uint64_t getEnumTagSinglePayload for TransactionContainer.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xEA)
  {
    goto LABEL_17;
  }

  if (a2 + 22 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 22) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 22;
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

      return (*a1 | (v4 << 8)) - 22;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 22;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x17;
  v8 = v6 - 23;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for TransactionContainer.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 22 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 22) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xEA)
  {
    v4 = 0;
  }

  if (a2 > 0xE9)
  {
    v5 = ((a2 - 234) >> 8) + 1;
    *result = a2 + 22;
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
    *result = a2 + 22;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_26128C93C()
{
  result = qword_27FEA2B00[0];
  if (!qword_27FEA2B00[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FEA2B00);
  }

  return result;
}

unint64_t sub_26128C994()
{
  result = qword_27FEA2C10;
  if (!qword_27FEA2C10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEA2C10);
  }

  return result;
}

unint64_t sub_26128C9EC()
{
  result = qword_27FEA2C18[0];
  if (!qword_27FEA2C18[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FEA2C18);
  }

  return result;
}

void *sub_26128CA40(void *result, int64_t a2, char a3, void *a4)
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
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F620, &qword_2613A57B0);
  v10 = *(sub_26139EF7C() - 8);
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
  v15 = *(sub_26139EF7C() - 8);
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

uint64_t sub_26128CC18(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 24) = v3;
  *v3 = v2;
  v3[1] = sub_26128CD0C;

  return v5(v2 + 32);
}

uint64_t sub_26128CD0C()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  v5 = *v0;

  *v2 = *(v1 + 32);
  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_26128CE20(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746361736E617274 && a2 == 0xED000064496E6F69;
  if (v4 || (sub_2613A241C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6B726F7774656ELL && a2 == 0xE700000000000000 || (sub_2613A241C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD00000000000001BLL && 0x80000002613B90D0 == a2 || (sub_2613A241C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000018 && 0x80000002613B90F0 == a2 || (sub_2613A241C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000013 && 0x80000002613B9110 == a2 || (sub_2613A241C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000012 && 0x80000002613B9130 == a2 || (sub_2613A241C() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x436C6172656E6567 && a2 == 0xEF61746144647261 || (sub_2613A241C() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x64496B656BLL && a2 == 0xE500000000000000 || (sub_2613A241C() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x746E756F6D61 && a2 == 0xE600000000000000 || (sub_2613A241C() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x79636E6572727563 && a2 == 0xEC00000065646F43 || (sub_2613A241C() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD000000000000014 && 0x80000002613B9150 == a2 || (sub_2613A241C() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x69757165526E6970 && a2 == 0xEB00000000646572 || (sub_2613A241C() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0x6C757365526D7663 && a2 == 0xEF34366573614274 || (sub_2613A241C() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0x6974617269707865 && a2 == 0xEA00000000006E6FLL || (sub_2613A241C() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0xD000000000000012 && 0x80000002613B9170 == a2 || (sub_2613A241C() & 1) != 0)
  {

    return 14;
  }

  else if (a1 == 0xD000000000000010 && 0x80000002613B9190 == a2 || (sub_2613A241C() & 1) != 0)
  {

    return 15;
  }

  else if (a1 == 0x626C6C6146726F66 && a2 == 0xEB000000006B6361 || (sub_2613A241C() & 1) != 0)
  {

    return 16;
  }

  else if (a1 == 0x6B6361626C6C6166 && a2 == 0xEE00746E756F6D41 || (sub_2613A241C() & 1) != 0)
  {

    return 17;
  }

  else if (a1 == 0xD000000000000015 && 0x80000002613B91B0 == a2 || (sub_2613A241C() & 1) != 0)
  {

    return 18;
  }

  else if (a1 == 0xD000000000000018 && 0x80000002613B91D0 == a2 || (sub_2613A241C() & 1) != 0)
  {

    return 19;
  }

  else if (a1 == 0xD00000000000001DLL && 0x80000002613B91F0 == a2 || (sub_2613A241C() & 1) != 0)
  {

    return 20;
  }

  else if (a1 == 0xD000000000000011 && 0x80000002613B9210 == a2 || (sub_2613A241C() & 1) != 0)
  {

    return 21;
  }

  else if (a1 == 0x7954707041796170 && a2 == 0xEA00000000006570)
  {

    return 22;
  }

  else
  {
    v6 = sub_2613A241C();

    if (v6)
    {
      return 22;
    }

    else
    {
      return 23;
    }
  }
}

unint64_t sub_26128D550(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  result = sub_26139F13C();
  v10 = *(*(result - 8) + 72);
  v11 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_19;
  }

  v9 = *(*(result - 8) + 80);
  v12 = v7 + ((v9 + 32) & ~v9);
  v13 = v12 + v10 * a1;
  result = swift_arrayDestroy();
  v14 = a3 - v11;
  if (__OFSUB__(a3, v11))
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v15 = v10 * a3;
  if (v14)
  {
    v16 = *(v7 + 16);
    if (!__OFSUB__(v16, a2))
    {
      result = v13 + v15;
      v17 = v12 + v10 * a2;
      if (v13 + v15 < v17 || result >= v17 + (v16 - a2) * v10)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else if (result != v17)
      {
        result = swift_arrayInitWithTakeBackToFront();
      }

      v19 = *(v7 + 16);
      v20 = __OFADD__(v19, v14);
      v21 = v19 + v14;
      if (!v20)
      {
        *(v7 + 16) = v21;
        goto LABEL_15;
      }

LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
      return result;
    }

LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

LABEL_15:
  if (a3 >= 1 && v15 > 0)
  {
    goto LABEL_22;
  }

  return result;
}

unint64_t sub_26128D698(unint64_t result, uint64_t a2)
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

    v4 = sub_26128A380(isUniquelyReferenced_nonNull_native, v10, 1, v4, &qword_27FE9F310, qword_2613A44C0, MEMORY[0x277CC95F0]);
    *v2 = v4;
  }

  result = sub_26128D550(v6, a2, 0);
  *v2 = v4;
  return result;
}

uint64_t sub_26128D77C(uint64_t a1)
{
  v4 = *(v1 + 32);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_261262AA4;

  return sub_261287E28(a1, v5, v6, v4);
}

uint64_t sub_26128D81C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_261265144;

  return sub_26128CC18(a1, v4);
}

unint64_t sub_26128D8D4()
{
  result = qword_27FE9F630;
  if (!qword_27FE9F630)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27FE9F630);
  }

  return result;
}

uint64_t sub_26128D920()
{
  v1 = *(sub_26139F13C() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_2612875D4(v0 + v2, v3);
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_26128D9C4()
{
  result = qword_27FE9F4B8;
  if (!qword_27FE9F4B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27FE9F640, &unk_2613AA600);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE9F4B8);
  }

  return result;
}

uint64_t sub_26128DA28(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TransactionContainer(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_26128DA8C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_26128DAD8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_2613A189C();
  v5 = [a1 valueForEntitlement_];

  if (v5)
  {
    sub_2613A202C();
    swift_unknownObjectRelease();
  }

  else
  {
    v27 = 0u;
    v28 = 0u;
  }

  v29 = v27;
  v30 = v28;
  if (*(&v28 + 1))
  {
    if (swift_dynamicCast())
    {
      v25 = v26;
      goto LABEL_9;
    }
  }

  else
  {
    sub_26128E064(&v29);
  }

  v25 = 0;
LABEL_9:
  v6 = sub_2613A189C();
  v7 = [a1 valueForEntitlement_];

  if (v7)
  {
    sub_2613A202C();
    swift_unknownObjectRelease();
  }

  else
  {
    v27 = 0u;
    v28 = 0u;
  }

  v29 = v27;
  v30 = v28;
  if (*(&v28 + 1))
  {
    if (swift_dynamicCast())
    {
      v24 = v26;
      goto LABEL_17;
    }
  }

  else
  {
    sub_26128E064(&v29);
  }

  v24 = 0;
LABEL_17:
  v8 = sub_2613A189C();
  v9 = [a1 valueForEntitlement_];

  if (v9)
  {
    sub_2613A202C();
    swift_unknownObjectRelease();
  }

  else
  {
    v27 = 0u;
    v28 = 0u;
  }

  v29 = v27;
  v30 = v28;
  if (*(&v28 + 1))
  {
    if (swift_dynamicCast())
    {
      v23 = v26;
      goto LABEL_25;
    }
  }

  else
  {
    sub_26128E064(&v29);
  }

  v23 = 0;
LABEL_25:
  v10 = sub_2613A189C();
  v11 = [a1 valueForEntitlement_];

  if (v11)
  {
    sub_2613A202C();
    swift_unknownObjectRelease();
  }

  else
  {
    v27 = 0u;
    v28 = 0u;
  }

  v29 = v27;
  v30 = v28;
  if (*(&v28 + 1))
  {
    if (swift_dynamicCast())
    {
      v22 = v26;
      goto LABEL_33;
    }
  }

  else
  {
    sub_26128E064(&v29);
  }

  v22 = 0;
LABEL_33:
  v12 = sub_2613A189C();
  v13 = [a1 &selRef:v12 set:? appleIDContext:?];

  if (v13)
  {
    sub_2613A202C();
    swift_unknownObjectRelease();
  }

  else
  {
    v27 = 0u;
    v28 = 0u;
  }

  v29 = v27;
  v30 = v28;
  if (*(&v28 + 1))
  {
    if (swift_dynamicCast())
    {
      v14 = v26;
      goto LABEL_41;
    }
  }

  else
  {
    sub_26128E064(&v29);
  }

  v14 = 0;
LABEL_41:
  v15 = sub_2613A189C();
  v16 = [a1 &selRef:v15 set:? appleIDContext:?];

  if (v16)
  {
    sub_2613A202C();
    swift_unknownObjectRelease();
  }

  else
  {
    v27 = 0u;
    v28 = 0u;
  }

  v29 = v27;
  v30 = v28;
  if (*(&v28 + 1))
  {
    if (swift_dynamicCast())
    {
      v17 = v26;
      goto LABEL_49;
    }
  }

  else
  {
    sub_26128E064(&v29);
  }

  v17 = 0;
LABEL_49:
  v18 = sub_2613A189C();
  v19 = [a1 &selRef:v18 set:? appleIDContext:?];

  if (v19)
  {
    sub_2613A202C();

    swift_unknownObjectRelease();
  }

  else
  {

    v27 = 0u;
    v28 = 0u;
  }

  v29 = v27;
  v30 = v28;
  if (!*(&v28 + 1))
  {
    result = sub_26128E064(&v29);
    goto LABEL_56;
  }

  result = swift_dynamicCast();
  if (!result)
  {
LABEL_56:
    v21 = 0;
    goto LABEL_57;
  }

  v21 = v26;
LABEL_57:
  *a2 = 0xD000000000000043;
  *(a2 + 8) = 0x80000002613B92C0;
  *(a2 + 16) = 0xD00000000000002ALL;
  *(a2 + 24) = 0x80000002613B9310;
  *(a2 + 32) = 0xD000000000000030;
  *(a2 + 40) = 0x80000002613B9340;
  *(a2 + 48) = 0xD000000000000030;
  *(a2 + 56) = 0x80000002613B9380;
  *(a2 + 64) = 0xD000000000000030;
  *(a2 + 72) = 0x80000002613B93C0;
  *(a2 + 80) = v25;
  *(a2 + 81) = v24;
  *(a2 + 82) = v23;
  *(a2 + 83) = v22;
  *(a2 + 84) = v14;
  *(a2 + 85) = v17;
  *(a2 + 86) = v21;
  return result;
}

uint64_t sub_26128E064(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEA00C0, &unk_2613A44B0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

__n128 __swift_memcpy87_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 79) = *(a2 + 79);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_26128E0F0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 87))
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

uint64_t sub_26128E138(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 86) = 0;
    *(result + 84) = 0;
    *(result + 80) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 87) = 1;
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

    *(result + 87) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_26128E1A8()
{
  type metadata accessor for DBExclusiveAccessCoordinator();
  v0 = swift_allocObject();
  result = swift_defaultActor_initialize();
  *(v0 + 112) = 0;
  *(v0 + 120) = MEMORY[0x277D84F90];
  qword_27FEAEC70 = v0;
  return result;
}

uint64_t *sub_26128E1F4()
{
  if (qword_27FEA2CA0 != -1)
  {
    swift_once();
  }

  return &qword_27FEAEC70;
}

uint64_t sub_26128E244()
{
  *(v1 + 16) = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  *(v1 + 24) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26128E2E0, v0, 0);
}

uint64_t sub_26128E2E0(uint64_t a1, uint64_t a2)
{
  v3 = v2[2];
  if (*(v3 + 112))
  {
    v4 = sub_26128EDF8(a1, a2);
    v5 = swift_task_alloc();
    v2[4] = v5;
    *v5 = v2;
    v5[1] = sub_26128E530;
    v6 = v2[2];
    v7 = MEMORY[0x277D84F78] + 8;

    return MEMORY[0x2822007B8](v5, v3, v4, 0x4174736575716572, 0xEF29287373656363, sub_26128EE70, v6, v7);
  }

  else
  {
    v8 = v2[3];
    v9 = sub_26129B7C4();
    sub_26124AA44(v9, v8);
    v10 = sub_2613A124C();
    v11 = *(v10 - 8);
    if ((*(v11 + 48))(v8, 1, v10) == 1)
    {
      sub_26124D0CC(v2[3]);
    }

    else
    {
      v12 = sub_2613A122C();
      v13 = sub_2613A1D7C();
      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        *v14 = 0;
        _os_log_impl(&dword_261243000, v12, v13, "[ExclusiveAccess] access given", v14, 2u);
        MEMORY[0x266701350](v14, -1, -1);
      }

      v15 = v2[3];

      (*(v11 + 8))(v15, v10);
    }

    *(v3 + 112) = 1;

    v16 = v2[1];

    return v16();
  }
}

uint64_t sub_26128E530()
{
  v1 = *(*v0 + 16);

  return MEMORY[0x2822009F8](sub_26128E640, v1, 0);
}

uint64_t sub_26128E640()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_26128E6A0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F738, &qword_2613A5850);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v24 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v24 - v9;
  v11 = sub_26129B7C4();
  sub_26124AA44(v11, v10);
  v12 = sub_2613A124C();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v10, 1, v12) == 1)
  {
    sub_26124D0CC(v10);
  }

  else
  {
    v14 = sub_2613A122C();
    v15 = sub_2613A1D7C();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v25 = a1;
      v17 = v16;
      *v16 = 0;
      _os_log_impl(&dword_261243000, v14, v15, "[ExclusiveAccess] waiting in the queue", v16, 2u);
      v18 = v17;
      a1 = v25;
      MEMORY[0x266701350](v18, -1, -1);
    }

    (*(v13 + 8))(v10, v12);
  }

  (*(v5 + 16))(v7, a1, v4);
  v19 = *(a2 + 120);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a2 + 120) = v19;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v19 = sub_26128EE78(0, v19[2] + 1, 1, v19);
    *(a2 + 120) = v19;
  }

  v22 = v19[2];
  v21 = v19[3];
  if (v22 >= v21 >> 1)
  {
    v19 = sub_26128EE78((v21 > 1), v22 + 1, 1, v19);
  }

  v19[2] = v22 + 1;
  result = (*(v5 + 32))(v19 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v22, v7, v4);
  *(a2 + 120) = v19;
  return result;
}

uint64_t sub_26128E978()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F738, &qword_2613A5850);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v26 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v26 - v9;
  v11 = v0 + 120;
  v12 = *(*(v0 + 120) + 16);
  v13 = sub_26129B7C4();
  if (v12)
  {
    sub_26124AA44(v13, v8);
    v14 = sub_2613A124C();
    v15 = *(v14 - 8);
    if ((*(v15 + 48))(v8, 1, v14) == 1)
    {
      result = sub_26124D0CC(v8);
    }

    else
    {
      v19 = sub_2613A122C();
      v20 = sub_2613A1D7C();
      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        *v21 = 0;
        _os_log_impl(&dword_261243000, v19, v20, "[ExclusiveAccess] access given to the first in queue", v21, 2u);
        MEMORY[0x266701350](v21, -1, -1);
      }

      result = (*(v15 + 8))(v8, v14);
    }

    if (*(*v11 + 16))
    {
      (*(v2 + 16))(v4, *v11 + ((*(v2 + 80) + 32) & ~*(v2 + 80)), v1);
      sub_26128F1BC(0, 1);
      sub_2613A1BDC();
      return (*(v2 + 8))(v4, v1);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    sub_26124AA44(v13, v10);
    v17 = sub_2613A124C();
    v18 = *(v17 - 8);
    if ((*(v18 + 48))(v10, 1, v17) == 1)
    {
      result = sub_26124D0CC(v10);
      *(v0 + 112) = 0;
    }

    else
    {
      v22 = v0;
      v23 = sub_2613A122C();
      v24 = sub_2613A1D7C();
      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        *v25 = 0;
        _os_log_impl(&dword_261243000, v23, v24, "[ExclusiveAccess] empty queue", v25, 2u);
        MEMORY[0x266701350](v25, -1, -1);
      }

      result = (*(v18 + 8))(v10, v17);
      *(v22 + 112) = 0;
    }
  }

  return result;
}

uint64_t sub_26128ED2C()
{

  swift_defaultActor_destroy();

  return swift_defaultActor_deallocate();
}

uint64_t sub_26128ED64()
{
  if (qword_27FEA2CA0 != -1)
  {
    swift_once();
  }
}

uint64_t sub_26128EDC0(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for DBExclusiveAccessCoordinator();

  return MEMORY[0x2822005F8](v3, a2);
}

unint64_t sub_26128EDF8(uint64_t a1, uint64_t a2)
{
  result = qword_27FE9F730;
  if (!qword_27FE9F730)
  {
    type metadata accessor for DBExclusiveAccessCoordinator();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE9F730);
  }

  return result;
}

void *sub_26128EE78(void *result, int64_t a2, char a3, void *a4)
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
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F740, &unk_2613A58F0);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F738, &qword_2613A5850) - 8);
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
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F738, &qword_2613A5850) - 8);
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

unint64_t sub_26128F068(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F738, &qword_2613A5850);
  v10 = *(*(result - 8) + 72);
  v11 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_19;
  }

  v9 = *(*(result - 8) + 80);
  v12 = v7 + ((v9 + 32) & ~v9);
  v13 = v12 + v10 * a1;
  result = swift_arrayDestroy();
  v14 = a3 - v11;
  if (__OFSUB__(a3, v11))
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v15 = v10 * a3;
  if (v14)
  {
    v16 = *(v7 + 16);
    if (!__OFSUB__(v16, a2))
    {
      result = v13 + v15;
      v17 = v12 + v10 * a2;
      if (v13 + v15 < v17 || result >= v17 + (v16 - a2) * v10)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else if (result != v17)
      {
        result = swift_arrayInitWithTakeBackToFront();
      }

      v19 = *(v7 + 16);
      v20 = __OFADD__(v19, v14);
      v21 = v19 + v14;
      if (!v20)
      {
        *(v7 + 16) = v21;
        goto LABEL_15;
      }

LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
      return result;
    }

LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

LABEL_15:
  if (a3 >= 1 && v15 > 0)
  {
    goto LABEL_22;
  }

  return result;
}

unint64_t sub_26128F1BC(unint64_t result, uint64_t a2)
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

    v4 = sub_26128EE78(isUniquelyReferenced_nonNull_native, v10, 1, v4);
    *v2 = v4;
  }

  result = sub_26128F068(v6, a2, 0);
  *v2 = v4;
  return result;
}

uint64_t sub_26128F280(unsigned __int8 a1)
{
  if (a1 <= 7u)
  {
    goto LABEL_2;
  }

  if (a1 <= 9u)
  {
    if (a1 == 8)
    {
      return 6385965;
    }

    return 0;
  }

  if (a1 == 10)
  {
    return 0x65676174732DLL;
  }

  if (a1 != 11)
  {
    return 0;
  }

LABEL_2:
  MEMORY[0x2666FFEA0](45, 0xE100000000000000);
  sub_2613A21FC();
  return 0;
}

uint64_t sub_26128F34C(char a1)
{
  result = 7759204;
  switch(a1)
  {
    case 1:
      result = 24945;
      break;
    case 2:
      result = 3236209;
      break;
    case 3:
      result = 3301745;
      break;
    case 4:
      result = 3367281;
      break;
    case 5:
      result = 3432817;
      break;
    case 6:
      result = 3498353;
      break;
    case 7:
      result = 3563889;
      break;
    case 8:
      result = 0x74656B72616D6171;
      break;
    case 9:
      result = 0x7466617264;
      break;
    case 10:
      result = 0x676E6967617473;
      break;
    case 11:
      result = 1953654115;
      break;
    case 12:
      result = 1685025392;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_26128F458@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_261291AB4(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_26128F488@<X0>(uint64_t *a1@<X8>)
{
  result = sub_26128F34C(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_26128F574()
{
  v1 = *v0;
  sub_2613A256C();
  sub_26128F34C(v1);
  sub_2613A19DC();

  return sub_2613A25CC();
}

uint64_t sub_26128F5D8(uint64_t a1)
{
  sub_26128F34C(*v1);
  sub_2613A19DC();
}

uint64_t sub_26128F62C(uint64_t a1)
{
  v2 = *v1;
  sub_2613A256C();
  sub_26128F34C(v2);
  sub_2613A19DC();

  return sub_2613A25CC();
}

uint64_t sub_26128F68C(char a1)
{
  v2 = sub_2613A0C2C();
  v3 = v2();

  if (v3 & 1) == 0 && (a1)
  {
    v4 = [objc_allocWithZone(MEMORY[0x277CB8F48]) init];
    v5 = [v4 aa_primaryAppleAccount];

    if (v5 && (v6 = [v5 aa_isSandboxAccount], v5, (v6 & 1) != 0))
    {
      v7 = 11;
    }

    else if (sub_261291BBC())
    {
      v7 = 11;
    }

    else
    {
      v7 = 12;
    }

    goto LABEL_20;
  }

  v8 = sub_2613A0D9C();
  v10 = v9;
  v11 = sub_2613A0CDC();
  sub_261291B00(v8, v10, v11, v12);

  v68 = sub_26124C7CC();
  v64 = MEMORY[0x277D837D0];
  v66 = v68;
  sub_2613A1FFC();

  v13 = sub_2613A196C();
  v15 = v14;

  v16 = sub_261291AB4(v13, v15);
  if (v16 == 13)
  {
    v7 = 0;
  }

  else
  {
    v7 = v16;
  }

  if (sub_26128F34C(v7) == 7759204 && v17 == 0xE300000000000000)
  {

    goto LABEL_16;
  }

  v19 = sub_2613A241C();

  if (v19)
  {
LABEL_16:
    v7 = 4;
  }

LABEL_20:
  v20 = sub_2613A0C2C();
  v28 = v20(v20, v21, v22, v23, v24, v25, v26, v27, v64, v66);

  if (v28)
  {
    v29 = sub_2613A0DBC();
    v31 = v30;
    v32 = sub_2613A0CEC();
    sub_261291B00(v29, v31, v32, v33);

    v69 = sub_26124C7CC();
    v65 = MEMORY[0x277D837D0];
    v67 = v69;
    sub_2613A1FFC();

    v34 = sub_2613A196C();
    v36 = v35;

    v37 = sub_261291AB4(v34, v36);
    if (v37 == 13)
    {
      v38 = 0;
    }

    else
    {
      v38 = v37;
    }

    v39 = v38 << 8;
  }

  else
  {
    v40 = [objc_allocWithZone(MEMORY[0x277CB8F48]) init];
    v41 = [v40 aa_primaryAppleAccount];

    if (v41 && (v42 = [v41 aa_isSandboxAccount], v41, (v42 & 1) != 0))
    {
      v39 = 2304;
    }

    else
    {
      v39 = 3072;
    }
  }

  v43 = sub_2613A0C2C();
  v51 = v43(v43, v44, v45, v46, v47, v48, v49, v50, v65, v67);

  if (v51)
  {
    v52 = sub_2613A0DAC();
    v54 = v53;
    v55 = sub_2613A0CAC();
    sub_261291B00(v52, v54, v55, v56);

    sub_26124C7CC();
    sub_2613A1FFC();

    v57 = sub_2613A196C();
    v59 = v58;

    v60 = sub_261291AB4(v57, v59);
    if (v60 == 13)
    {
      v61 = 0;
    }

    else
    {
      v61 = v60;
    }

    v62 = v61 << 16;
  }

  else
  {
    v62 = 786432;
  }

  return v39 | v7 | v62;
}