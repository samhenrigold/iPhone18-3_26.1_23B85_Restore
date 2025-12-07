void sub_245FE0F04(uint64_t a1)
{
  v3 = sub_2460919F4();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_246091A64();
  v20 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for PhotogrammetrySample(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10 - 8);
  if ((*(v1 + OBJC_IVAR____TtC6CoreOC9PGManager_processStarted) & 1) == 0)
  {
    v19 = v7;
    v13 = *(v1 + OBJC_IVAR____TtC6CoreOC9PGManager_addSampleQueue);
    sub_245FFE868(a1, &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PhotogrammetrySample);
    v14 = (*(v11 + 80) + 24) & ~*(v11 + 80);
    v15 = swift_allocObject();
    *(v15 + 16) = v1;
    sub_245FFE800(&v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v15 + v14, type metadata accessor for PhotogrammetrySample);
    aBlock[4] = sub_245FFD5B8;
    aBlock[5] = v15;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_245F913A4;
    aBlock[3] = &unk_2858DF0C8;
    v16 = _Block_copy(aBlock);
    v17 = v13;

    sub_246091A14();
    v21 = MEMORY[0x277D84F90];
    sub_245FFF308(&qword_27EE3A380, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    sub_245F8E624(&qword_27EE39F38, &qword_246096680);
    sub_245FFD28C(&qword_27EE3A390, &qword_27EE39F38, &qword_246096680);
    sub_2460921A4();
    MEMORY[0x24C1969D0](0, v9, v6, v16);
    _Block_release(v16);

    (*(v4 + 8))(v6, v3);
    (*(v20 + 8))(v9, v19);
  }
}

uint64_t sub_245FE12A4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PhotogrammetrySample(0);
  MEMORY[0x28223BE20](v4);
  MEMORY[0x28223BE20](v5);
  v7 = (&v39 - v6);
  v8 = sub_2460918F4();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  MEMORY[0x28223BE20](v13);
  v15 = &v39 - v14;
  if (*(a1 + OBJC_IVAR____TtC6CoreOC9PGManager_processStarted))
  {
    v16 = sub_245FA31EC();
    (*(v9 + 16))(v11, v16, v8);
    v17 = sub_2460918D4();
    v18 = sub_246091FC4();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_245F8A000, v17, v18, "Process has started, ignore new re-localization queries.", v19, 2u);
      MEMORY[0x24C1989D0](v19, -1, -1);
    }

    return (*(v9 + 8))(v11, v8);
  }

  v42 = v8;
  v21 = *(a1 + OBJC_IVAR____TtC6CoreOC9PGManager_segmentIDConverter);

  sub_245FD1F30(a2, v21, 0);
  v41 = v22;

  v23 = a2 + *(v4 + 84);
  if (*(v23 + 8))
  {
    __break(1u);
    goto LABEL_15;
  }

  if (*(a2 + 728))
  {
LABEL_15:
    __break(1u);
    return result;
  }

  v24 = *v23;
  v25 = *(a2 + 720);
  type metadata accessor for RelocContext();

  v40 = v24;
  sub_245FC8664(v26, v24, v25);
  swift_beginAccess();
  v27 = CPGSessionLocalizeSample();
  if (v27)
  {
    v28 = v27;
    v29 = sub_245FA31EC();
    v30 = v42;
    (*(v9 + 16))(v15, v29, v42);
    sub_245FFE868(a2, v7, type metadata accessor for PhotogrammetrySample);
    v31 = sub_2460918D4();
    v32 = sub_246091FB4();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 134349312;
      v34 = *v7;
      sub_245FFEA30(v7, type metadata accessor for PhotogrammetrySample);
      *(v33 + 4) = v34;
      *(v33 + 12) = 1026;
      *(v33 + 14) = v28;
      _os_log_impl(&dword_245F8A000, v31, v32, "Failed to re-localize sample of id = %{public}ld with\nerror = %{public}d", v33, 0x12u);
      v30 = v42;
      MEMORY[0x24C1989D0](v33, -1, -1);
    }

    else
    {
      sub_245FFEA30(v7, type metadata accessor for PhotogrammetrySample);
    }

    v35 = (*(v9 + 8))(v15, v30);
    if ((*(*a1 + 488))(v35))
    {
      v37 = v36;
      ObjectType = swift_getObjectType();
      v43 = 1;
      memset(v44, 0, sizeof(v44));
      v45 = 1;
      (*(v37 + 8))(v44, *a2, v40, ObjectType, v37, v25);
      swift_unknownObjectRelease();
    }
  }

  return CPGSampleRelease();
}

void sub_245FE1964(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v24 = a2;
  v7 = sub_2460918F4();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a4)
  {
    __break(1u);
    goto LABEL_9;
  }

  v12 = (*(*a4 + 104))(v9);
  if (!v12)
  {
LABEL_9:
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v13 = v12;
  v14 = (*(*a4 + 128))();
  v15 = (*(*a4 + 152))();
  v16 = sub_245FA31EC();
  (*(v8 + 16))(v11, v16, v7);
  v17 = sub_2460918D4();
  v18 = sub_246091FC4();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v23 = a1;
    v20 = a3;
    v21 = v19;
    *v19 = 134349312;
    *(v19 + 4) = v24;
    *(v19 + 12) = 2050;
    *(v19 + 14) = v14;
    _os_log_impl(&dword_245F8A000, v17, v18, "Processing re-localization callback for query sample of id = %{public}llu in static segment ID = %{public}ld", v19, 0x16u);
    v22 = v21;
    a3 = v20;
    a1 = v23;
    MEMORY[0x24C1989D0](v22, -1, -1);
  }

  (*(v8 + 8))(v11, v7);
  if (!a1)
  {
    goto LABEL_10;
  }

  if (a3)
  {
    (*(*v13 + 2000))(a1, v24, a3, v14, v15);

    return;
  }

LABEL_11:
  __break(1u);
}

uint64_t sub_245FE1C08()
{
  v1 = sub_2460919F4();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_246091A64();
  MEMORY[0x28223BE20](v5);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v0 + OBJC_IVAR____TtC6CoreOC9PGManager_pgInputReader))
  {
    sub_245FFCF7C();
    swift_allocError();
    *v10 = 0xD00000000000003ALL;
    *(v10 + 8) = 0x800000024609FE60;
    *(v10 + 16) = 6;
    return swift_willThrow();
  }

  else
  {
    v20 = v2;
    v21 = v6;
    v12 = *(v0 + OBJC_IVAR____TtC6CoreOC9PGManager_processQueue);
    v19 = v7;
    v13 = swift_allocObject();
    swift_weakInit();
    aBlock[4] = sub_245FFD648;
    aBlock[5] = v13;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_245F913A4;
    aBlock[3] = &unk_2858DF0F0;
    v18 = _Block_copy(aBlock);
    v17 = v12;

    sub_246091A14();
    aBlock[7] = MEMORY[0x277D84F90];
    sub_245FFF308(&qword_27EE3A380, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    sub_245F8E624(&qword_27EE39F38, &qword_246096680);
    sub_245FFD28C(&qword_27EE3A390, &qword_27EE39F38, &qword_246096680);
    sub_2460921A4();
    v14 = v17;
    v15 = v18;
    MEMORY[0x24C1969D0](0, v9, v4, v18);
    _Block_release(v15);

    (*(v20 + 8))(v4, v1);
    (*(v19 + 8))(v9, v21);
  }
}

uint64_t sub_245FE1F5C(uint64_t a1)
{
  v1 = sub_2460918F4();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v34 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = v34 - v6;
  MEMORY[0x28223BE20](v8);
  v10 = v34 - v9;
  MEMORY[0x28223BE20](v11);
  v13 = v34 - v12;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    if (*(Strong + OBJC_IVAR____TtC6CoreOC9PGManager_isClosed))
    {
      v15 = sub_245FA31EC();
      (*(v2 + 16))(v4, v15, v1);
      v16 = sub_2460918D4();
      v17 = sub_246091FB4();
      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        *v18 = 0;
        _os_log_impl(&dword_245F8A000, v16, v17, "Skip resume. PGManager is closed.", v18, 2u);
        MEMORY[0x24C1989D0](v18, -1, -1);
      }

      else
      {
      }

      return (*(v2 + 8))(v4, v1);
    }

    else
    {
      swift_beginAccess();
      v25 = CPGSessionResumeProcessingWithCallbacks();
      v26 = sub_245FA31EC();
      v27 = *(v2 + 16);
      if (v25)
      {
        v27(v7, v26, v1);
        v28 = sub_2460918D4();
        v29 = sub_246091FB4();
        if (os_log_type_enabled(v28, v29))
        {
          v30 = swift_slowAlloc();
          *v30 = 0;
          _os_log_impl(&dword_245F8A000, v28, v29, "Request resumption failure.", v30, 2u);
          MEMORY[0x24C1989D0](v30, -1, -1);
        }

        else
        {
        }

        return (*(v2 + 8))(v7, v1);
      }

      else
      {
        v27(v10, v26, v1);
        v31 = sub_2460918D4();
        v32 = sub_246091FC4();
        if (os_log_type_enabled(v31, v32))
        {
          v33 = swift_slowAlloc();
          *v33 = 0;
          _os_log_impl(&dword_245F8A000, v31, v32, "Request resumption success.", v33, 2u);
          MEMORY[0x24C1989D0](v33, -1, -1);
        }

        else
        {
        }

        return (*(v2 + 8))(v10, v1);
      }
    }
  }

  else
  {
    v19 = sub_245FA31EC();
    (*(v2 + 16))(v13, v19, v1);
    v20 = sub_2460918D4();
    v21 = sub_246091FB4();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v34[0] = v23;
      *v22 = 136380675;
      *(v22 + 4) = sub_245F8D3C0(0x2928656D75736572, 0xE800000000000000, v34);
      _os_log_impl(&dword_245F8A000, v20, v21, "Backend Manager.%{private}s failed to capture the instance!", v22, 0xCu);
      sub_245F8E6F4(v23);
      MEMORY[0x24C1989D0](v23, -1, -1);
      MEMORY[0x24C1989D0](v22, -1, -1);
    }

    return (*(v2 + 8))(v13, v1);
  }
}

uint64_t sub_245FE23F4()
{
  v1 = v0;
  v2 = sub_2460918F4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v17 - v7;
  v9 = (v1 + 112);
  swift_beginAccess();
  if (*(v1 + 112) > 0.0001)
  {
    v10 = sub_245FA31EC();
    (*(v3 + 16))(v8, v10, v2);

    v11 = sub_2460918D4();
    v12 = sub_246091FC4();

    if (!os_log_type_enabled(v11, v12))
    {
      v5 = v8;
      goto LABEL_8;
    }

    v13 = swift_slowAlloc();
    *v13 = 134349056;
    *(v13 + 4) = *v9;
    _os_log_impl(&dword_245F8A000, v11, v12, "Mobile sfm point cloud voxel dimension set to %{public}f", v13, 0xCu);
    v5 = v8;
    goto LABEL_6;
  }

  *(v1 + 112) = 1008981770;
  v14 = sub_245FA31EC();
  (*(v3 + 16))(v5, v14, v2);

  v11 = sub_2460918D4();
  v15 = sub_246091FB4();

  if (os_log_type_enabled(v11, v15))
  {
    v13 = swift_slowAlloc();
    *v13 = 134349056;
    *(v13 + 4) = *v9;
    _os_log_impl(&dword_245F8A000, v11, v15, "Invalid mobile sfm point cloud voxel dimension, resume to default value %{public}f", v13, 0xCu);
LABEL_6:
    MEMORY[0x24C1989D0](v13, -1, -1);
  }

LABEL_8:

  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_245FE26BC(float a1)
{
  swift_beginAccess();
  *(v1 + 112) = a1;
  return sub_245FE23F4();
}

uint64_t (*sub_245FE2700(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_245FE2754;
}

uint64_t sub_245FE2754(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return sub_245FE23F4();
  }

  return result;
}

uint64_t sub_245FE2788()
{
  v1 = v0;
  v2 = sub_2460918F4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v63 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v63 - v7;
  MEMORY[0x28223BE20](v9);
  v11 = &v63 - v10;
  MEMORY[0x28223BE20](v12);
  v14 = &v63 - v13;
  MEMORY[0x28223BE20](v15);
  v17 = &v63 - v16;
  MEMORY[0x28223BE20](v18);
  v20 = &v63 - v19;
  if (*(v1 + 32) == 3)
  {
    v41 = sub_245FA31EC();
    (*(v3 + 16))(v8, v41, v2);
    v42 = sub_2460918D4();
    v43 = sub_246091FB4();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = v2;
      v45 = swift_slowAlloc();
      *v45 = 0;
      _os_log_impl(&dword_245F8A000, v42, v43, "Session initialization failed previously.  Not trying again.", v45, 2u);
      v46 = v45;
      v2 = v44;
      MEMORY[0x24C1989D0](v46, -1, -1);
    }

    (*(v3 + 8))(v8, v2);
    sub_245FFD204();
    swift_allocError();
    *v47 = 2;
    *(v47 + 8) = 1;
    return swift_willThrow();
  }

  else if (*(v1 + 32))
  {
    v48 = sub_245FA31EC();
    (*(v3 + 16))(v11, v48, v2);
    v49 = v2;
    v50 = sub_2460918D4();
    v51 = sub_246091FB4();
    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      *v52 = 0;
      _os_log_impl(&dword_245F8A000, v50, v51, "Session is already initialized.  Not running again.", v52, 2u);
      MEMORY[0x24C1989D0](v52, -1, -1);
    }

    return (*(v3 + 8))(v11, v49);
  }

  else
  {
    v70 = v2;
    v69 = *(v1 + 16);
    if (v69)
    {
      v21 = *(v1 + 24);

      v22 = sub_245FA31EC();
      v23 = *(v3 + 16);
      v64 = v22;
      v65 = v23;
      v66 = v3 + 16;
      (v23)(v20);
      v24 = sub_2460918D4();
      v25 = sub_246091FC4();
      v26 = os_log_type_enabled(v24, v25);
      v68 = v21;
      if (v26)
      {
        v27 = swift_slowAlloc();
        *v27 = 0;
        _os_log_impl(&dword_245F8A000, v24, v25, "Running the delayed initializer...", v27, 2u);
        v28 = v27;
        v21 = v68;
        MEMORY[0x24C1989D0](v28, -1, -1);
      }

      v29 = v70;
      v67 = *(v3 + 8);
      v30 = v67(v20, v70);
      *(v1 + 32) = 1;
      v31 = v71;
      v69(v30);
      if (v31)
      {
        v65(v5, v64, v29);
        v32 = v31;
        v33 = sub_2460918D4();
        v34 = sub_246091FB4();

        v35 = v29;
        if (os_log_type_enabled(v33, v34))
        {
          v36 = swift_slowAlloc();
          v37 = swift_slowAlloc();
          *v36 = 138412290;
          v38 = v31;
          v39 = _swift_stdlib_bridgeErrorToNSError();
          *(v36 + 4) = v39;
          *v37 = v39;
          _os_log_impl(&dword_245F8A000, v33, v34, "Delayed initialization failed: %@", v36, 0xCu);
          sub_245F8E744(v37, &qword_27EE3AE80, &qword_246096FA0);
          MEMORY[0x24C1989D0](v37, -1, -1);
          MEMORY[0x24C1989D0](v36, -1, -1);
        }

        v67(v5, v35);
        *(v1 + 32) = 3;
        swift_willThrow();
        return sub_245FFDCC4(v69, v68);
      }

      else
      {
        v58 = *(v1 + 16);
        v59 = *(v1 + 24);
        *(v1 + 16) = 0;
        *(v1 + 24) = 0;
        sub_245FFDCC4(v58, v59);
        *(v1 + 32) = 2;
        v65(v17, v64, v29);
        v60 = sub_2460918D4();
        v61 = sub_246091FC4();
        if (os_log_type_enabled(v60, v61))
        {
          v62 = swift_slowAlloc();
          *v62 = 0;
          _os_log_impl(&dword_245F8A000, v60, v61, "... done running the delayed initializer.", v62, 2u);
          MEMORY[0x24C1989D0](v62, -1, -1);
        }

        sub_245FFDCC4(v69, v21);

        return v67(v17, v29);
      }
    }

    else
    {
      v53 = sub_245FA31EC();
      v54 = v70;
      (*(v3 + 16))(v14, v53, v70);
      v55 = sub_2460918D4();
      v56 = sub_246091FB4();
      if (os_log_type_enabled(v55, v56))
      {
        v57 = swift_slowAlloc();
        *v57 = 0;
        _os_log_impl(&dword_245F8A000, v55, v56, "Initializer is nil.  Perhaps it failed on a previous run?", v57, 2u);
        MEMORY[0x24C1989D0](v57, -1, -1);
      }

      return (*(v3 + 8))(v14, v54);
    }
  }
}

uint64_t sub_245FE2E40()
{
  sub_245FFDCC4(*(v0 + 16), *(v0 + 24));

  return swift_deallocClassInstance();
}

void sub_245FE2E78()
{
  v1 = type metadata accessor for PhotogrammetrySession.Output(0);
  MEMORY[0x28223BE20](v1);
  v3 = &v13[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0) - 2];
  v4 = *(v0 + OBJC_IVAR____TtC6CoreOC9PGManager_requestNum);
  if (v4 < 0)
  {
    __break(1u);
  }

  else if (!v4)
  {

    sub_2460900AC();

    if (v13[1] == 1 || *(v0 + OBJC_IVAR____TtC6CoreOC9PGManager_isProcessCancelled) == 1)
    {
      if ((*(*v0 + 464))(v5))
      {
        v7 = v6;
        ObjectType = swift_getObjectType();
        swift_storeEnumTagMultiPayload();
        (*(v7 + 8))(v3, ObjectType, v7);
        swift_unknownObjectRelease();
        sub_245FFEA30(v3, type metadata accessor for PhotogrammetrySession.Output);
      }

      v13[0] = 0;

      sub_2460901B8(v13);

      *(v0 + OBJC_IVAR____TtC6CoreOC9PGManager_isProcessCancelled) = 0;
    }

    else if ((*(*v0 + 464))(v5))
    {
      v10 = v9;
      v11 = swift_getObjectType();
      swift_storeEnumTagMultiPayload();
      (*(v10 + 8))(v3, v11, v10);
      swift_unknownObjectRelease();
      sub_245FFEA30(v3, type metadata accessor for PhotogrammetrySession.Output);
    }
  }
}

uint64_t sub_245FE30BC()
{
  v1 = OBJC_IVAR____TtC6CoreOC9PGManager_numPixelsAccumulated;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_245FE3100(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC6CoreOC9PGManager_numPixelsAccumulated;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t sub_245FE3150()
{
  v1 = OBJC_IVAR____TtC6CoreOC9PGManager_numImagesAccumulated;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_245FE3194(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC6CoreOC9PGManager_numImagesAccumulated;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t sub_245FE31E4()
{
  v1 = sub_2460918F4();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v20[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v5);
  v6 = sub_245F8E624(&qword_27EE3A5B8, &qword_246098418);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v20[-v7];
  v9 = *(v0 + OBJC_IVAR____TtC6CoreOC9PGManager_pgInputReader);
  if (v9)
  {
    v10 = *(*v9 + 160);

    v10(v11);

    sub_246092324();

    sub_246092394();

    v18 = type metadata accessor for PhotogrammetrySample(0);
    if ((*(*(v18 - 8) + 48))(v8, 1, v18) != 1)
    {
      v19 = v8[688];
      sub_245FFEA30(v8, type metadata accessor for PhotogrammetrySample);
      v16 = v19 ^ 1;
      return v16 & 1;
    }
  }

  else
  {
    v12 = sub_245FA31EC();
    (*(v2 + 16))(v4, v12, v1);
    v13 = sub_2460918D4();
    v14 = sub_246091FB4();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_245F8A000, v13, v14, "Backend Manager: Tried to check if image url contain area mode data without a valid input reader!", v15, 2u);
      MEMORY[0x24C1989D0](v15, -1, -1);
    }

    (*(v2 + 8))(v4, v1);
  }

  v16 = 0;
  return v16 & 1;
}

uint64_t sub_245FE356C()
{
  v1 = v0;
  v2 = sub_2460918F4();
  v71 = *(v2 - 8);
  v72 = v2;
  MEMORY[0x28223BE20](v2);
  v67 = &v66 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v70 = &v66 - v5;
  MEMORY[0x28223BE20](v6);
  v68 = &v66 - v7;
  v78 = sub_246091834();
  v77 = *(v78 - 8);
  MEMORY[0x28223BE20](v78);
  v75 = &v66 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_245F8E624(&qword_27EE3A498, &unk_246097EB8);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v66 - v10;
  v12 = sub_246091704();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v66 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v66 - v17;
  MEMORY[0x28223BE20](v19);
  v76 = &v66 - v20;
  MEMORY[0x28223BE20](v21);
  v23 = &v66 - v22;
  v24 = CPGSessionOptionsCreate();
  v25 = CPGSfmOptionsCreate();
  if (v24)
  {
    v73 = v25;
    v74 = v24;
    v26 = OBJC_IVAR____TtC6CoreOC9PGManager_snapshotURL;
    swift_beginAccess();
    sub_245F8E7A4(v1 + v26, v11, &qword_27EE3A498, &unk_246097EB8);
    v27 = v12;
    if ((*(v13 + 48))(v11, 1, v12) == 1)
    {
      v66 = v1;
      sub_245F8E744(v11, &qword_27EE3A498, &unk_246097EB8);
      v28 = [objc_opt_self() defaultManager];
      v29 = [v28 temporaryDirectory];

      sub_2460916D4();
      sub_246091694();
      v30 = *(v13 + 8);
      v30(v15, v12);
      v31 = v75;
      sub_246091824();
      sub_2460917F4();
      (*(v77 + 8))(v31, v78);
      v32 = v76;
      sub_246091694();

      v30(v18, v27);
      v33 = sub_246091674();
      v34 = v74;
      LODWORD(v31) = CPGSessionOptionsSetWorkingDirectory();

      if (v31)
      {
        sub_245FFCF7C();
        swift_allocError();
        *v35 = 0xD00000000000002BLL;
        *(v35 + 8) = 0x80000002460A0940;
        *(v35 + 16) = 1;
        swift_willThrow();
        v30(v32, v27);
LABEL_33:
        CPGSfmOptionsRelease();
        return CPGSessionOptionsRelease();
      }

      v30(v32, v27);
      v38 = v66;
      v39 = v73;
      if (v73)
      {
LABEL_9:
        if (*(v38 + OBJC_IVAR____TtC6CoreOC9PGManager_isImageURLFreeformData) == 1)
        {
          CPGMaskingOptionsCreate();
          if (CPGMaskingOptionsSetMaskingType())
          {
            CPGMaskingOptionsRelease();
            v40 = sub_245FA31EC();
            (*(v71 + 16))(v70, v40, v72);
            v41 = sub_2460918D4();
            v42 = sub_246091FB4();
            if (os_log_type_enabled(v41, v42))
            {
              v43 = swift_slowAlloc();
              *v43 = 0;
              _os_log_impl(&dword_245F8A000, v41, v42, "Backend Manager: Failed to set CPG segmentation masking type", v43, 2u);
              MEMORY[0x24C1989D0](v43, -1, -1);
            }

            (*(v71 + 8))(v70, v72);
            v44 = 0x80000002460A09E0;
            sub_245FFCF7C();
            swift_allocError();
            *v45 = 0xD00000000000002BLL;
LABEL_23:
            *(v45 + 8) = v44;
            *(v45 + 16) = 0;
            goto LABEL_32;
          }

          v51 = CPGSessionOptionsSetMaskingOptions();
          CPGMaskingOptionsRelease();
          if (v51)
          {
            v52 = sub_245FA31EC();
            (*(v71 + 16))(v68, v52, v72);
            v53 = sub_2460918D4();
            v54 = sub_246091FB4();
            if (os_log_type_enabled(v53, v54))
            {
              v55 = swift_slowAlloc();
              *v55 = 0;
              _os_log_impl(&dword_245F8A000, v53, v54, "Backend Manager: Failed to set CPG segmentation masking option to session option", v55, 2u);
              MEMORY[0x24C1989D0](v55, -1, -1);
            }

            (*(v71 + 8))(v68, v72);
            v44 = 0x80000002460A0A10;
            sub_245FFCF7C();
            swift_allocError();
            *v45 = 0xD000000000000040;
            goto LABEL_23;
          }
        }

        v56 = v69;
        sub_245FFCCA4(*(v38 + OBJC_IVAR____TtC6CoreOC9PGManager_configuration), *(v38 + OBJC_IVAR____TtC6CoreOC9PGManager_configuration + 4), *(v38 + OBJC_IVAR____TtC6CoreOC9PGManager_configuration + 8), v34, v39);
        if (v56)
        {
          goto LABEL_33;
        }

        CPGSfmOptionsSetPoseUpdateCallback();
        if (*sub_245F925DC())
        {
          CPGSfmOptionsSetTrackUpdateCallback();
        }

        if (CPGSessionOptionsSetSfmOptions())
        {
          sub_245FFCF7C();
          swift_allocError();
          *v57 = 0xD000000000000026;
          *(v57 + 8) = 0x80000002460A0990;
          v58 = 1;
        }

        else
        {
          swift_beginAccess();
          v59 = CPGSessionCreate();
          swift_endAccess();
          if (!v59)
          {
            sub_245FE4E40();
            v61 = sub_245FA31EC();
            v62 = v67;
            (*(v71 + 16))(v67, v61, v72);
            v63 = sub_2460918D4();
            v64 = sub_246091FC4();
            if (os_log_type_enabled(v63, v64))
            {
              v65 = swift_slowAlloc();
              *v65 = 0;
              _os_log_impl(&dword_245F8A000, v63, v64, "Successfully initialized the backend session.", v65, 2u);
              MEMORY[0x24C1989D0](v65, -1, -1);
            }

            (*(v71 + 8))(v62, v72);
            goto LABEL_33;
          }

          sub_245FFCF7C();
          swift_allocError();
          *v57 = 0xD000000000000018;
          *(v57 + 8) = 0x80000002460A09C0;
          v58 = 3;
        }

        *(v57 + 16) = v58;
LABEL_32:
        swift_willThrow();
        goto LABEL_33;
      }

LABEL_18:
      sub_245FFCF7C();
      swift_allocError();
      *v50 = 0xD00000000000001ALL;
      *(v50 + 8) = 0x80000002460A0970;
      *(v50 + 16) = 2;
      swift_willThrow();
      goto LABEL_33;
    }

    (*(v13 + 32))(v23, v11, v12);
    v34 = v74;
    if (CPGSessionOptionsSetSnapshotEnabled())
    {
      sub_245FFCF7C();
      swift_allocError();
      *v37 = 0xD00000000000002ALL;
      *(v37 + 8) = 0x80000002460A0A60;
      *(v37 + 16) = 1;
    }

    else
    {
      v46 = v1;
      v47 = sub_246091674();
      v48 = CPGSessionOptionsSetWorkingDirectory();

      if (!v48)
      {
        (*(v13 + 8))(v23, v27);
        v38 = v46;
        v39 = v73;
        if (v73)
        {
          goto LABEL_9;
        }

        goto LABEL_18;
      }

      sub_245FFCF7C();
      swift_allocError();
      *v49 = 0xD00000000000002BLL;
      *(v49 + 8) = 0x80000002460A0940;
      *(v49 + 16) = 1;
    }

    swift_willThrow();
    (*(v13 + 8))(v23, v27);
    goto LABEL_33;
  }

  sub_245FFCF7C();
  swift_allocError();
  *v36 = 0xD00000000000001ELL;
  *(v36 + 8) = 0x80000002460A0900;
  *(v36 + 16) = 1;
  swift_willThrow();
  CPGSfmOptionsRelease();
  return CPGSessionOptionsRelease();
}

void sub_245FE407C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2460918F4();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 && a2 && a3)
  {
    v11 = v8;
    v12 = CPGUpdatedPosesCopySampleIDs();
    if (v12)
    {
      v13 = v12;
      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        v21 = 0;
        sub_246091DC4();

        v14 = v21;
        if (v21)
        {
          if (*(v21 + 16))
          {
            v15 = sub_245FA31EC();
            (*(v7 + 16))(v10, v15, v11);

            v16 = sub_2460918D4();
            v17 = sub_246091FC4();
            if (os_log_type_enabled(v16, v17))
            {
              v18 = swift_slowAlloc();
              *v18 = 134349056;
              v20 = *(v14 + 16);

              *(v18 + 4) = v20;

              _os_log_impl(&dword_245F8A000, v16, v17, "Processing pose update callback for %{public}ld samples", v18, 0xCu);
              MEMORY[0x24C1989D0](v18, -1, -1);
            }

            else
            {

              swift_bridgeObjectRelease_n();
            }

            (*(v7 + 8))(v10, v11);
          }

          else
          {
          }
        }
      }

      else
      {
      }
    }

    v19 = *(*a3 + 1984);

    v19(a1, a2);
  }
}

void sub_245FE42F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2460918F4();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 && a2 && a3)
  {
    v10 = sub_245FA31EC();
    (*(v7 + 16))(v9, v10, v6);
    v11 = sub_2460918D4();
    v12 = sub_246091FC4();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_245F8A000, v11, v12, "Received mobile sfm world tracks.", v13, 2u);
      MEMORY[0x24C1989D0](v13, -1, -1);
    }

    (*(v7 + 8))(v9, v6);
    v14 = *(*a3 + 1992);

    v14(a1, a2);
  }
}

uint64_t sub_245FE44C0()
{
  v1 = v0;
  v44 = sub_2460918F4();
  v42 = *(v44 - 8);
  MEMORY[0x28223BE20](v44);
  v43 = &v37 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_245F8E624(&qword_27EE3A498, &unk_246097EB8);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v37 - v4;
  v6 = sub_246091704();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v37 - v11;
  v13 = OBJC_IVAR____TtC6CoreOC9PGManager_snapshotURL;
  swift_beginAccess();
  sub_245F8E7A4(v1 + v13, v5, &qword_27EE3A498, &unk_246097EB8);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_245F8E744(v5, &qword_27EE3A498, &unk_246097EB8);
    sub_245FFCF7C();
    swift_allocError();
    *v14 = 0xD000000000000039;
    *(v14 + 8) = 0x80000002460A0860;
    *(v14 + 16) = 3;
    return swift_willThrow();
  }

  (*(v7 + 32))(v12, v5, v6);
  v16 = CPGSessionResumeOptionsCreate();
  if (!v16)
  {
    sub_245FFCF7C();
    swift_allocError();
    *v21 = 0xD000000000000025;
    *(v21 + 8) = 0x80000002460A08A0;
    *(v21 + 16) = 1;
    swift_willThrow();
    return (*(v7 + 8))(v12, v6);
  }

  v17 = v16;
  v18 = sub_246091674();
  swift_beginAccess();
  v19 = CPGSessionCreateWithSnapshotURL();
  swift_endAccess();

  if (v19)
  {
    sub_245FFCF7C();
    swift_allocError();
    *v20 = 0xD000000000000027;
    *(v20 + 8) = 0x80000002460A08D0;
    *(v20 + 16) = 3;
LABEL_9:
    swift_willThrow();
    CPGSessionResumeOptionsRelease();
    return (*(v7 + 8))(v12, v6);
  }

  v22 = v46;
  sub_245FE4E40();
  if (v22)
  {
    CPGSessionRelease();
    goto LABEL_9;
  }

  v46 = v17;
  *(v1 + OBJC_IVAR____TtC6CoreOC9PGManager_processStarted) = 1;
  v23 = sub_245FA31EC();
  v24 = v42;
  v25 = v43;
  (*(v42 + 16))(v43, v23, v44);
  (*(v7 + 16))(v9, v12, v6);
  v26 = sub_2460918D4();
  v27 = sub_246091FC4();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    v45[0] = v41;
    *v28 = 141558275;
    *(v28 + 4) = 1752392040;
    *(v28 + 12) = 2081;
    v40 = v26;
    v29 = sub_2460916F4();
    v37 = v30;
    v38 = v29;
    v39 = v27;
    v31 = *(v7 + 8);
    v31(v9, v6);
    v32 = v31;
    v33 = sub_245F8D3C0(v38, v37, v45);

    *(v28 + 14) = v33;
    v34 = v40;
    _os_log_impl(&dword_245F8A000, v40, v39, "Successfully initialized backend session with snapshot = %{private,mask.hash}s", v28, 0x16u);
    v35 = v41;
    sub_245F8E6F4(v41);
    MEMORY[0x24C1989D0](v35, -1, -1);
    MEMORY[0x24C1989D0](v28, -1, -1);

    (*(v24 + 8))(v43, v44);
  }

  else
  {

    v36 = *(v7 + 8);
    v36(v9, v6);
    v32 = v36;
    (*(v24 + 8))(v25, v44);
  }

  CPGSessionResumeOptionsRelease();
  return v32(v12, v6);
}

uint64_t sub_245FE4A74()
{
  v1 = v0;
  v2 = sub_2460918F4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v1 + OBJC_IVAR____TtC6CoreOC9PGManager_addSampleCallbackBundle) = CPGAddSampleCallbackBundleCreate();
  if (CPGAddSampleCallbackBundleSetStreamProcessingCallback())
  {
    CPGAddSampleCallbackBundleRelease();
    sub_245FFCF7C();
    swift_allocError();
    *v6 = 0xD00000000000003CLL;
    *(v6 + 8) = 0x80000002460A0820;
    *(v6 + 16) = 4;
    return swift_willThrow();
  }

  else
  {
    v8 = sub_245FA31EC();
    (*(v3 + 16))(v5, v8, v2);
    v9 = sub_2460918D4();
    v10 = sub_246091FC4();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_245F8A000, v9, v10, "Successfully set the add sample callback bundle.", v11, 2u);
      MEMORY[0x24C1989D0](v11, -1, -1);
    }

    return (*(v3 + 8))(v5, v2);
  }
}

void sub_245FE4C5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_2460918F4();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 && a3 && a4)
  {
    v12 = sub_245FA31EC();
    (*(v9 + 16))(v11, v12, v8);
    v13 = sub_2460918D4();
    v14 = sub_246091FC4();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 134349056;
      *(v15 + 4) = a2;
      _os_log_impl(&dword_245F8A000, v13, v14, "Add sample stream processing callback for id = %{public}llu", v15, 0xCu);
      MEMORY[0x24C1989D0](v15, -1, -1);
    }

    (*(v9 + 8))(v11, v8);
    v16 = *(*a4 + 1912);

    v16(a1, a2, a3);
  }
}

uint64_t sub_245FE4E40()
{
  v1 = v0;
  v2 = 0xD000000000000034;
  v3 = sub_2460918F4();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v1 + OBJC_IVAR____TtC6CoreOC9PGManager_processingCallbackBundle) = CPGProcessingCallbackBundleCreate();
  if (CPGProcessingCallbackBundleSetCompleteOutputCallback())
  {
    v7 = "tCompletionCallback failed!";
    v2 = 0xD00000000000003CLL;
LABEL_7:
    CPGProcessingCallbackBundleRelease();
    sub_245FFCF7C();
    swift_allocError();
    *v8 = v2;
    *(v8 + 8) = v7 | 0x8000000000000000;
    *(v8 + 16) = 4;
    return swift_willThrow();
  }

  if (CPGProcessingCallbackBundleSetProgressCallback())
  {
    v7 = "mpleteOutputCallback failed!";
    v2 = 0xD000000000000036;
    goto LABEL_7;
  }

  if (CPGProcessingCallbackBundleSetWarningCallback())
  {
    v7 = "ogressCallback failed!";
    goto LABEL_7;
  }

  v10 = sub_245FA31EC();
  (*(v4 + 16))(v6, v10, v3);
  v11 = sub_2460918D4();
  v12 = sub_246091FC4();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_245F8A000, v11, v12, "Successfully set callback bundle.", v13, 2u);
    MEMORY[0x24C1989D0](v13, -1, -1);
  }

  return (*(v4 + 8))(v6, v3);
}

void sub_245FE5098(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v58 = a2;
  v7 = sub_2460918F4();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_245F8E624(&qword_27EE3A498, &unk_246097EB8);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v50 - v12;
  v14 = sub_246091704();
  MEMORY[0x28223BE20](v14);
  v16 = &v50 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v50 - v18;
  MEMORY[0x28223BE20](v20);
  v24 = &v50 - v23;
  if (a1 && v58 && a3 && a4)
  {
    v56 = v21;
    v57 = v22;
    if (!CPGOutputGetFailure())
    {
      ModelURL = CPGOutputGetModelURL();
      if (ModelURL)
      {
        v55 = ModelURL;
        objc_opt_self();
        v27 = swift_dynamicCastObjCClass();
        if (v27)
        {
          v28 = *(v57 + 56);
          v53 = v27;
          v54 = a3;
          v29 = v56;
          v28(v13, 1, 1, v56);
          sub_245FFF308(&qword_27EE3A5C8, MEMORY[0x277CC9260], MEMORY[0x277CC9288]);
          sub_2460923B4();

          v30 = v29;
          a3 = v54;
          if ((*(v57 + 48))(v13, 1, v30) != 1)
          {
            v31 = v13;
            v32 = *(v57 + 32);
            v32(v19, v31, v56);
            v33 = v19;
            v34 = v56;
            v32(v24, v33, v56);
            v35 = sub_245FA31EC();
            v36 = v8;
            v37 = v57;
            v55 = v36;
            (v36)[2](v10, v35, v7);
            (*(v37 + 16))(v16, v24, v34);
            v38 = sub_2460918D4();
            v39 = sub_246091FC4();
            if (os_log_type_enabled(v38, v39))
            {
              v40 = swift_slowAlloc();
              v53 = swift_slowAlloc();
              v59 = v53;
              *v40 = 141558275;
              *(v40 + 4) = 1752392040;
              *(v40 + 12) = 2081;
              v52 = v39;
              v50 = sub_2460916F4();
              v51 = v38;
              v42 = v41;
              v43 = *(v37 + 8);
              v43(v16, v56);
              v44 = sub_245F8D3C0(v50, v42, &v59);

              *(v40 + 14) = v44;
              v45 = v51;
              _os_log_impl(&dword_245F8A000, v51, v52, "Processing output callback at url = %{private,mask.hash}s", v40, 0x16u);
              v46 = v53;
              sub_245F8E6F4(v53);
              MEMORY[0x24C1989D0](v46, -1, -1);
              MEMORY[0x24C1989D0](v40, -1, -1);

              (*(v55 + 1))(v10, v7);
              v47 = v24;
              v48 = v56;
            }

            else
            {

              v43 = *(v37 + 8);
              v49 = v56;
              v43(v16, v56);
              (*(v55 + 1))(v10, v7);
              v47 = v24;
              v48 = v49;
            }

            v43(v47, v48);
            a3 = v54;
          }
        }

        else
        {
        }
      }
    }

    v25 = *(*a4 + 1968);

    v25(a1, v58, a3);
  }
}

void sub_245FE55D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_2460918F4();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 && a2 && a3 && a4)
  {
    v33 = v10;
    CPGProgressGetFractionCompleted();
    v14 = v13;
    Message = CPGProgressGetMessage();
    if (Message)
    {
      v16 = Message;
      v17 = sub_246091C04();
      v19 = v18;

      v20 = sub_245FA31EC();
      (*(v9 + 16))(v12, v20, v33);

      v21 = sub_2460918D4();
      v22 = sub_246091FC4();

      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        v32 = v22;
        v24 = v17;
        v25 = v23;
        v26 = swift_slowAlloc();
        v31 = v21;
        v27 = v26;
        v34 = v26;
        *v25 = 134349314;
        *(v25 + 4) = v14;
        *(v25 + 12) = 2082;
        v28 = sub_245F8D3C0(v24, v19, &v34);

        *(v25 + 14) = v28;
        v29 = v31;
        _os_log_impl(&dword_245F8A000, v31, v32, "Processing progress callback with fraction completed = %{public}f, message = %{public}s", v25, 0x16u);
        sub_245F8E6F4(v27);
        MEMORY[0x24C1989D0](v27, -1, -1);
        MEMORY[0x24C1989D0](v25, -1, -1);
      }

      else
      {
      }

      (*(v9 + 8))(v12, v33);
      v30 = *(*a4 + 1920);

      v30(a1, a2, a3);
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_245FE588C()
{
  v1 = v0;
  v2 = sub_2460918F4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v1 + OBJC_IVAR____TtC6CoreOC9PGManager_finalizeInputCallbackBundle) = CPGFinalizeInputCallbackBundleCreate();
  if (CPGFinalizeInputCallbackBundleSetCompletionCallback())
  {
    CPGFinalizeInputCallbackBundleRelease();
    sub_245FFCF7C();
    swift_allocError();
    *v6 = 0xD00000000000003BLL;
    *(v6 + 8) = 0x80000002460A0720;
    *(v6 + 16) = 4;
    return swift_willThrow();
  }

  else
  {
    v8 = sub_245FA31EC();
    (*(v3 + 16))(v5, v8, v2);
    v9 = sub_2460918D4();
    v10 = sub_246091FC4();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_245F8A000, v9, v10, "Successfully set finalizing input callback bundle.", v11, 2u);
      MEMORY[0x24C1989D0](v11, -1, -1);
    }

    return (*(v3 + 8))(v5, v2);
  }
}

void sub_245FE5A74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2460918F4();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v24 - v11;
  if (a1 && a2 && a3)
  {
    v27 = a2;
    v13 = sub_245FA31EC();
    v25 = *(v7 + 16);
    v26 = v13;
    v25(v12);
    v14 = sub_2460918D4();
    v15 = sub_246091FC4();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_245F8A000, v14, v15, "Finalize input C-callback", v16, 2u);
      MEMORY[0x24C1989D0](v16, -1, -1);
    }

    v17 = *(v7 + 8);
    v17(v12, v6);
    v18 = v27;
    if (CPGFinalizeInputResultGetErrorCode())
    {
      (v25)(v9, v26, v6);
      v19 = sub_2460918D4();
      v20 = sub_246091FB4();
      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        *v21 = 0;
        _os_log_impl(&dword_245F8A000, v19, v20, "Error in finalizing input result!", v21, 2u);
        v22 = v21;
        v18 = v27;
        MEMORY[0x24C1989D0](v22, -1, -1);
      }

      v17(v9, v6);
    }

    v23 = *(*a3 + 2008);

    v23(a1, v18);
  }
}

void sub_245FE5D14(uint64_t a1)
{
  v2 = sub_2460918F4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v27 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v28 = &v25 - v6;
  v7 = sub_245FD36E0(a1);
  v33 = *(v7 + 2);
  v26 = v3;
  if (v33)
  {
    v32 = OBJC_IVAR____TtC6CoreOC9PGManager_session;
    swift_beginAccess();
    v8 = 0;
    v9 = 0;
    v30 = (v3 + 16);
    v31 = 0;
    v29 = (v3 + 8);
    v10 = v28;
    while (v9 < *(v7 + 2))
    {
      if (CPGSessionAddTemporalDepthPointFrame())
      {
        if (__OFADD__(v8++, 1))
        {
          goto LABEL_18;
        }

        v12 = sub_245FA31EC();
        (*v30)(v10, v12, v2);
        v13 = sub_2460918D4();
        v14 = sub_246091FB4();
        if (os_log_type_enabled(v13, v14))
        {
          v15 = v2;
          v16 = swift_slowAlloc();
          *v16 = 0;
          _os_log_impl(&dword_245F8A000, v13, v14, "Failed to add temporal LiDAR point frame.", v16, 2u);
          v17 = v16;
          v2 = v15;
          v10 = v28;
          MEMORY[0x24C1989D0](v17, -1, -1);
        }

        (*v29)(v10, v2);
      }

      else
      {
        if (__OFADD__(v31, 1))
        {
          goto LABEL_19;
        }

        ++v31;
      }

      ++v9;
      CPGTemporalDepthPointFrameRelease();
      if (v33 == v9)
      {

        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
  }

  else
  {

    v8 = 0;
    v31 = 0;
LABEL_14:
    v18 = sub_245FA31EC();
    v19 = v26;
    (*(v26 + 16))(v27, v18, v2);
    v20 = sub_2460918D4();
    v21 = sub_246091FC4();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = v2;
      v23 = swift_slowAlloc();
      *v23 = 134349312;
      *(v23 + 4) = v31;
      *(v23 + 12) = 2050;
      *(v23 + 14) = v8;
      _os_log_impl(&dword_245F8A000, v20, v21, "Passed %{public}ld temporal LiDAR point frames to backend session, failed for %{public}ld frames.", v23, 0x16u);
      v24 = v23;
      v2 = v22;
      MEMORY[0x24C1989D0](v24, -1, -1);
    }

    (*(v19 + 8))(v27, v2);
  }
}

uint64_t sub_245FE6070(uint64_t (*a1)(void), uint64_t a2)
{
  v94 = a1;
  v97 = type metadata accessor for PhotogrammetrySession.Output(0);
  MEMORY[0x28223BE20](v97);
  v96 = (&v85 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = sub_245F8E624(&qword_27EE3A498, &unk_246097EB8);
  MEMORY[0x28223BE20](v5 - 8);
  v92 = &v85 - v6;
  v93 = sub_246091704();
  *&v91 = *(v93 - 8);
  MEMORY[0x28223BE20](v93);
  v88 = &v85 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2460918F4();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v95 = &v85 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v90 = &v85 - v12;
  MEMORY[0x28223BE20](v13);
  v89 = &v85 - v14;
  MEMORY[0x28223BE20](v15);
  v87 = &v85 - v16;
  MEMORY[0x28223BE20](v17);
  v19 = &v85 - v18;
  MEMORY[0x28223BE20](v20);
  v22 = &v85 - v21;
  v23 = sub_246091AF4();
  v24 = *(v23 - 8);
  v25 = MEMORY[0x28223BE20](v23);
  v27 = (&v85 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  v28 = *(v2 + OBJC_IVAR____TtC6CoreOC9PGManager_processQueue);
  *v27 = v28;
  (*(v24 + 104))(v27, *MEMORY[0x277D85200], v23, v25);
  v29 = v28;
  LOBYTE(v28) = sub_246091B24();
  result = (*(v24 + 8))(v27, v23);
  if ((v28 & 1) == 0)
  {
    __break(1u);
    return result;
  }

  v86 = a2;
  v101 = v2;
  v31 = sub_245FA31EC();
  v32 = *(v9 + 16);
  v98 = v31;
  v99 = v32;
  (v32)(v22);
  v33 = sub_2460918D4();
  v34 = sub_246091FC4();
  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    *v35 = 0;
    _os_log_impl(&dword_245F8A000, v33, v34, "Began adding images from the image folder...", v35, 2u);
    MEMORY[0x24C1989D0](v35, -1, -1);
  }

  v36 = (v9 + 8);
  v100 = *(v9 + 8);
  v100(v22, v8);
  v37 = v101;
  if (*(v101 + OBJC_IVAR____TtC6CoreOC9PGManager_isClosed))
  {
    v38 = v95;
    v99(v95, v98, v8);
    v39 = sub_2460918D4();
    v40 = sub_246091FB4();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      *v41 = 0;
      _os_log_impl(&dword_245F8A000, v39, v40, "Can't add new samples. Backend manager is closed", v41, 2u);
      MEMORY[0x24C1989D0](v41, -1, -1);
    }

    v46 = v38;
    return (v100)(v46, v8);
  }

  if (*(v101 + OBJC_IVAR____TtC6CoreOC9PGManager_processStarted))
  {
    v42 = v90;
    v99(v90, v98, v8);
    v43 = sub_2460918D4();
    v44 = sub_246091FC4();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      *v45 = 0;
      _os_log_impl(&dword_245F8A000, v43, v44, "Images have already been added... continuing.", v45, 2u);
      MEMORY[0x24C1989D0](v45, -1, -1);
    }

    v46 = v42;
    return (v100)(v46, v8);
  }

  v47 = OBJC_IVAR____TtC6CoreOC9PGManager_imagesURL;
  swift_beginAccess();
  v48 = v37 + v47;
  v49 = v92;
  sub_245F8E7A4(v48, v92, &qword_27EE3A498, &unk_246097EB8);
  v50 = v91;
  v51 = v93;
  if ((*(v91 + 48))(v49, 1, v93) == 1)
  {
    v52 = sub_245F8E744(v49, &qword_27EE3A498, &unk_246097EB8);
    v53 = 0;
    v54 = 1;
  }

  else
  {
    v55 = v88;
    (*(v50 + 32))(v88, v49, v51);
    v53 = sub_245FFC654();
    v54 = v56;
    v52 = (*(v50 + 8))(v55, v51);
  }

  v57 = v94;
  v58 = (*(*v94 + 160))(v52);
  v94 = v53;
  v95 = v36;
  v59 = *(v101 + OBJC_IVAR____TtC6CoreOC9PGManager_segmentIDConverter);
  v60 = *(*v57 + 184);
  LODWORD(v93) = v54;
  v61 = v58;

  v63 = v60(v62);
  (*(*v59 + 120))(v63 & 1);

  v65 = (*(*v57 + 128))(v64);
  v89 = v61;
  sub_245FE6EC8(v61, v86, v65, 0, v94, v93 & 1);
  v66 = (*(*v57 + 176))();
  v90 = v66;
  v68 = *(v66 + 16);
  if (v68)
  {
    v69 = *(*v101 + 464);
    v93 = *v101 + 464;
    v94 = v69;
    v70 = (v90 + 32);
    v92 = 0x80000002460A06D0;
    *&v67 = 134349056;
    v91 = v67;
    do
    {
      v72 = *v70++;
      v71 = v72;
      v99(v19, v98, v8);
      v73 = sub_2460918D4();
      v74 = sub_246091FC4();
      if (os_log_type_enabled(v73, v74))
      {
        v75 = swift_slowAlloc();
        *v75 = v91;
        *(v75 + 4) = v71;
        _os_log_impl(&dword_245F8A000, v73, v74, "invalidSample: id = %{public}ld", v75, 0xCu);
        MEMORY[0x24C1989D0](v75, -1, -1);
      }

      v76 = (v100)(v19, v8);
      if (v94(v76))
      {
        v78 = v77;
        ObjectType = swift_getObjectType();
        v80 = v96;
        *v96 = v71;
        *(v80 + 8) = 0xD00000000000004ELL;
        *(v80 + 16) = v92;
        swift_storeEnumTagMultiPayload();
        (*(v78 + 8))(v80, ObjectType, v78);
        swift_unknownObjectRelease();
        sub_245FFEA30(v80, type metadata accessor for PhotogrammetrySession.Output);
      }

      --v68;
    }

    while (v68);
  }

  v81 = v87;
  v99(v87, v98, v8);
  v82 = sub_2460918D4();
  v83 = sub_246091FC4();
  if (os_log_type_enabled(v82, v83))
  {
    v84 = swift_slowAlloc();
    *v84 = 0;
    _os_log_impl(&dword_245F8A000, v82, v83, "... done adding images from the image folder.", v84, 2u);
    MEMORY[0x24C1989D0](v84, -1, -1);
  }

  return (v100)(v81, v8);
}

uint64_t sub_245FE6AE0(uint64_t a1, int a2, float a3)
{
  v32 = a2;
  v33 = a1;
  v5 = type metadata accessor for PhotogrammetrySession.Output(0);
  MEMORY[0x28223BE20](v5);
  v7 = &v31[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = sub_245F8E624(&qword_27EE3A4B8, &unk_246097ED8);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v31[-v9];
  v11 = type metadata accessor for PhotogrammetrySession.Request(0);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v31[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = OBJC_IVAR____TtC6CoreOC9PGManager_firstRequest;
  swift_beginAccess();
  sub_245F8E7A4(v3 + v15, v10, &qword_27EE3A4B8, &unk_246097ED8);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    return sub_245F8E744(v10, &qword_27EE3A4B8, &unk_246097ED8);
  }

  v17 = sub_245FFE800(v10, v14, type metadata accessor for PhotogrammetrySession.Request);
  v18 = *(*v3 + 464);
  if (v18(v17))
  {
    v20 = v19;
    ObjectType = swift_getObjectType();
    v22 = *(sub_245F8E624(&qword_27EE3A568, &qword_2460983E0) + 48);
    sub_245FFE868(v14, v7, type metadata accessor for PhotogrammetrySession.Request);
    *&v7[v22] = a3;
    swift_storeEnumTagMultiPayload();
    (*(v20 + 8))(v7, ObjectType, v20);
    swift_unknownObjectRelease();
    sub_245FFEA30(v7, type metadata accessor for PhotogrammetrySession.Output);
  }

  v34 = 0;
  v23 = sub_24602883C(v33, v32 & 1, &v34, &v35);
  v24 = v35;
  v25 = v36;
  v26 = v37;
  if (v18(v23))
  {
    v28 = v27;
    v29 = swift_getObjectType();
    v30 = &v7[*(sub_245F8E624(&qword_27EE3A570, &qword_2460983E8) + 48)];
    sub_245FFE868(v14, v7, type metadata accessor for PhotogrammetrySession.Request);
    *v30 = v24;
    v30[8] = v25;
    v30[9] = v26;
    swift_storeEnumTagMultiPayload();
    (*(v28 + 8))(v7, v29, v28);
    swift_unknownObjectRelease();
    sub_245FFEA30(v7, type metadata accessor for PhotogrammetrySession.Output);
  }

  return sub_245FFEA30(v14, type metadata accessor for PhotogrammetrySession.Request);
}

void sub_245FE6EC8(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, int a6)
{
  v7 = v6;
  v158 = a6;
  v159 = a5;
  v169 = a4;
  v146 = a3;
  v175 = a2;
  v167 = a1;
  v174 = type metadata accessor for PhotogrammetrySample(0);
  v177 = *(v174 - 8);
  MEMORY[0x28223BE20](v174);
  v157 = &v135 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v148 = (&v135 - v10);
  MEMORY[0x28223BE20](v11);
  v140 = (&v135 - v12);
  MEMORY[0x28223BE20](v13);
  v162 = (&v135 - v14);
  v15 = sub_245F8E624(&qword_27EE3A5B8, &qword_246098418);
  MEMORY[0x28223BE20](v15 - 8);
  v168 = &v135 - v16;
  v160 = type metadata accessor for PhotogrammetrySession.Output(0);
  MEMORY[0x28223BE20](v160);
  v161 = (&v135 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v151 = type metadata accessor for PhotogrammetrySession.Request(0);
  v155 = *(v151 - 8);
  MEMORY[0x28223BE20](v151);
  v166 = (&v135 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = sub_245F8E624(&qword_27EE3A4B8, &unk_246097ED8);
  MEMORY[0x28223BE20](v19 - 8);
  v144 = &v135 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v23 = &v135 - v22;
  MEMORY[0x28223BE20](v24);
  v26 = &v135 - v25;
  v27 = sub_2460918F4();
  v28 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v145 = &v135 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v136 = &v135 - v31;
  MEMORY[0x28223BE20](v32);
  v176 = &v135 - v33;
  MEMORY[0x28223BE20](v34);
  v147 = &v135 - v35;
  MEMORY[0x28223BE20](v36);
  v139 = &v135 - v37;
  MEMORY[0x28223BE20](v38);
  v40 = &v135 - v39;
  v41 = sub_246091AF4();
  v42 = *(v41 - 8);
  v43 = MEMORY[0x28223BE20](v41);
  v45 = (&v135 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0));
  v46 = *(v7 + OBJC_IVAR____TtC6CoreOC9PGManager_processQueue);
  *v45 = v46;
  (*(v42 + 104))(v45, *MEMORY[0x277D85200], v41, v43);
  v47 = v46;
  LOBYTE(v46) = sub_246091B24();
  (*(v42 + 8))(v45, v41);
  if ((v46 & 1) == 0)
  {
LABEL_54:
    __break(1u);
LABEL_55:
    __break(1u);
    return;
  }

  v48 = sub_245FA31EC();
  v49 = *(v28 + 16);
  v171 = v48;
  v172 = v28 + 16;
  v170 = v49;
  (v49)(v40);
  v50 = sub_2460918D4();
  v51 = sub_246091FC4();
  if (os_log_type_enabled(v50, v51))
  {
    v52 = swift_slowAlloc();
    *v52 = 0;
    _os_log_impl(&dword_245F8A000, v50, v51, "Began adding images from the sample sequence...", v52, 2u);
    MEMORY[0x24C1989D0](v52, -1, -1);
  }

  v53 = v28 + 8;
  v173 = *(v28 + 8);
  v173(v40, v27);
  v154 = OBJC_IVAR____TtC6CoreOC9PGManager_isAddSampleCancelled;
  LOBYTE(v181) = 0;

  sub_2460901B8(&v181);

  if (!*(v175 + 16))
  {
    goto LABEL_55;
  }

  v54 = v155;
  sub_245FFE868(v175 + ((*(v155 + 80) + 32) & ~*(v155 + 80)), v26, type metadata accessor for PhotogrammetrySession.Request);
  v55 = v151;
  (*(v54 + 56))(v26, 0, 1, v151);
  v56 = OBJC_IVAR____TtC6CoreOC9PGManager_firstRequest;
  swift_beginAccess();
  sub_245F97BAC(v26, v7 + v56, &qword_27EE3A4B8, &unk_246097ED8);
  swift_endAccess();
  v143 = v56;
  sub_245F8E7A4(v7 + v56, v23, &qword_27EE3A4B8, &unk_246097ED8);
  v57 = *(v54 + 48);
  v155 = v54 + 48;
  v142 = v57;
  v58 = v57(v23, 1, v55);
  v153 = v53;
  if (v58 == 1)
  {
    sub_245F8E744(v23, &qword_27EE3A4B8, &unk_246097ED8);
  }

  else
  {
    v59 = v166;
    v60 = sub_245FFE800(v23, v166, type metadata accessor for PhotogrammetrySession.Request);
    v61 = *(*v7 + 464);
    if (v61(v60))
    {
      v63 = v62;
      ObjectType = swift_getObjectType();
      v65 = v27;
      v66 = *(sub_245F8E624(&qword_27EE3A568, &qword_2460983E0) + 48);
      v67 = v59;
      v68 = v161;
      sub_245FFE868(v67, v161, type metadata accessor for PhotogrammetrySession.Request);
      *(v68 + v66) = 0;
      v27 = v65;
      swift_storeEnumTagMultiPayload();
      (*(v63 + 8))(v68, ObjectType, v63);
      swift_unknownObjectRelease();
      sub_245FFEA30(v68, type metadata accessor for PhotogrammetrySession.Output);
    }

    LOBYTE(v179) = 0;
    v69 = sub_24602883C(v159, v158 & 1, &v179, &v181);
    v70 = v181;
    v71 = v182;
    v72 = BYTE1(v182);
    if (v61(v69))
    {
      v74 = v73;
      v175 = swift_getObjectType();
      v75 = sub_245F8E624(&qword_27EE3A570, &qword_2460983E8);
      v76 = v161;
      v77 = v161 + *(v75 + 48);
      v78 = v166;
      sub_245FFE868(v166, v161, type metadata accessor for PhotogrammetrySession.Request);
      *v77 = v70;
      v77[8] = v71;
      v77[9] = v72;
      swift_storeEnumTagMultiPayload();
      (*(v74 + 8))(v76, v175, v74);
      swift_unknownObjectRelease();
      sub_245FFEA30(v76, type metadata accessor for PhotogrammetrySession.Output);
      v79 = v78;
    }

    else
    {
      v79 = v166;
    }

    sub_245FFEA30(v79, type metadata accessor for PhotogrammetrySession.Request);
  }

  v80 = v162;
  sub_24601EF7C(&v181);
  v81 = v182;
  v82 = sub_246092324();
  v167 = OBJC_IVAR____TtC6CoreOC9PGManager_segmentIDConverter;
  v83 = OBJC_IVAR____TtC6CoreOC9PGManager_configuration;
  v152 = OBJC_IVAR____TtC6CoreOC9PGManager_session;
  swift_beginAccess();
  v84 = v168;
  sub_246092394();
  v85 = *(v177 + 48);
  v177 += 48;
  v166 = v85;
  v87 = 0;
  if ((v85)(v84, 1, v174) == 1)
  {
LABEL_42:

    if (v169)
    {
LABEL_44:
      sub_245FE6AE0(v159, v158 & 1, 0.1);
      goto LABEL_45;
    }
  }

  else
  {
    v165 = v82;
    v87 = 0;
    v175 = 0;
    v163 = v7 + v83;
    v88 = v146;
    v164 = v81;
    if (v81 < v146)
    {
      v88 = v81;
    }

    v149 = 0x80000002460A0330;
    v137 = 0x80000002460A0350;
    v89 = v88;
    *&v86 = 134349056;
    v150 = v86;
    *&v86 = 134349312;
    v135 = v86;
    v138 = v27;
    while (1)
    {
      sub_245FFE800(v84, v80, type metadata accessor for PhotogrammetrySample);

      sub_2460900AC();

      if (v179)
      {
        sub_245FFEA30(v80, type metadata accessor for PhotogrammetrySample);

        return;
      }

      if (v175 >= v164)
      {
        break;
      }

      v90 = *(v7 + v167);
      v91 = *(v163 + 24);

      sub_245FD1F30(v80, v90, v91);
      v93 = v92;

      v156 = v93;
      v94 = CPGSessionAddSample();
      if (v94)
      {
        v95 = v94;
        v179 = 0;
        v180 = 0xE000000000000000;
        sub_246092284();

        v179 = 0xD00000000000002FLL;
        v180 = v137;
        v141 = v95;
        v178 = v95;
        v96 = sub_2460923D4();
        MEMORY[0x24C196640](v96);

        v98 = v179;
        v99 = v180;
        if ((*(*v7 + 464))(v97))
        {
          v101 = v100;
          v102 = swift_getObjectType();
          v103 = v162;
          v104 = v161;
          *v161 = *v162;
          v104[1] = v98;
          v104[2] = v99;
          swift_storeEnumTagMultiPayload();
          (*(v101 + 8))(v104, v102, v101);
          swift_unknownObjectRelease();
          sub_245FFEA30(v104, type metadata accessor for PhotogrammetrySession.Output);
        }

        else
        {

          v103 = v162;
        }

        v105 = v147;
        v27 = v138;
        v170(v147, v171, v138);
        v112 = v103;
        v113 = v148;
        sub_245FFE868(v112, v148, type metadata accessor for PhotogrammetrySample);
        v107 = sub_2460918D4();
        v114 = sub_246091FB4();
        if (os_log_type_enabled(v107, v114))
        {
          v115 = v105;
          v116 = swift_slowAlloc();
          *v116 = v135;
          v117 = *v113;
          sub_245FFEA30(v113, type metadata accessor for PhotogrammetrySample);
          *(v116 + 4) = v117;
          *(v116 + 12) = 1026;
          *(v116 + 14) = v141;
          _os_log_impl(&dword_245F8A000, v107, v114, "Failed to add sample of id = %{public}ld, with error code = %{public}d", v116, 0x12u);
          MEMORY[0x24C1989D0](v116, -1, -1);
          v105 = v115;
        }

        else
        {
          sub_245FFEA30(v113, type metadata accessor for PhotogrammetrySample);
        }

        v84 = v168;
      }

      else
      {
        ++v175;
        v105 = v139;
        v170(v139, v171, v27);
        v106 = v140;
        sub_245FFE868(v80, v140, type metadata accessor for PhotogrammetrySample);
        v107 = sub_2460918D4();
        v108 = sub_246091FC4();
        if (os_log_type_enabled(v107, v108))
        {
          v109 = v105;
          v110 = swift_slowAlloc();
          *v110 = v150;
          v111 = *v106;
          sub_245FFEA30(v106, type metadata accessor for PhotogrammetrySample);
          *(v110 + 4) = v111;
          v84 = v168;
          _os_log_impl(&dword_245F8A000, v107, v108, "Added sample of id = %{public}ld", v110, 0xCu);
          MEMORY[0x24C1989D0](v110, -1, -1);
          v105 = v109;
        }

        else
        {
          sub_245FFEA30(v106, type metadata accessor for PhotogrammetrySample);
        }
      }

      v173(v105, v27);
      CPGSampleRelease();
      v80 = v162;
      sub_245FE5D14(v162);
      v118 = v87 + 1;
      if (__OFADD__(v87, 1))
      {
        __break(1u);
        goto LABEL_54;
      }

      if ((v169 & 1) == 0)
      {
        v119 = (v118 / v89) * 0.1;
        if (v119 > 0.1)
        {
          v119 = 0.1;
        }

        sub_245FE6AE0(v159, v158 & 1, v119);
      }

      sub_245FFEA30(v80, type metadata accessor for PhotogrammetrySample);
      sub_246092394();
      ++v87;
      if ((v166)(v84, 1, v174) == 1)
      {
        v87 = v118;
        goto LABEL_42;
      }
    }

    v120 = v136;
    v170(v136, v171, v27);
    v121 = sub_2460918D4();
    v122 = sub_246091FB4();
    if (os_log_type_enabled(v121, v122))
    {
      v123 = swift_slowAlloc();
      *v123 = v150;
      *(v123 + 4) = v164;
      _os_log_impl(&dword_245F8A000, v121, v122, "Stop adding sample, exceeded max number of samples device limit: %{public}ld.", v123, 0xCu);
      MEMORY[0x24C1989D0](v123, -1, -1);
    }

    v173(v120, v27);
    sub_245FFEA30(v80, type metadata accessor for PhotogrammetrySample);
    if (v169)
    {
      goto LABEL_44;
    }
  }

  if (v87 < v146)
  {
    goto LABEL_44;
  }

LABEL_45:
  v124 = v144;
  sub_245F8E7A4(v7 + v143, v144, &qword_27EE3A4B8, &unk_246097ED8);
  v125 = v142(v124, 1, v151);
  v126 = sub_245F8E744(v124, &qword_27EE3A4B8, &unk_246097ED8);
  if (v125 != 1)
  {
    *(v7 + OBJC_IVAR____TtC6CoreOC9PGManager_adjustedProgressBase) = 1036831949;
  }

  v127 = v145;
  if ((*(v7 + OBJC_IVAR____TtC6CoreOC9PGManager_processStarted) & 1) == 0)
  {
    *(v7 + OBJC_IVAR____TtC6CoreOC9PGManager_processStarted) = 1;
    if ((*(*v7 + 464))(v126))
    {
      v129 = v128;
      v130 = swift_getObjectType();
      v131 = v161;
      swift_storeEnumTagMultiPayload();
      (*(v129 + 8))(v131, v130, v129);
      swift_unknownObjectRelease();
      sub_245FFEA30(v131, type metadata accessor for PhotogrammetrySession.Output);
    }
  }

  v170(v127, v171, v27);
  v132 = sub_2460918D4();
  v133 = sub_246091FC4();
  if (os_log_type_enabled(v132, v133))
  {
    v134 = swift_slowAlloc();
    *v134 = 0;
    _os_log_impl(&dword_245F8A000, v132, v133, "... done adding images from sample sequence.", v134, 2u);
    MEMORY[0x24C1989D0](v134, -1, -1);
  }

  v173(v127, v27);
}

void sub_245FE84A8(unint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = sub_2460918F4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v18[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v20 = 6;
  if (a1 < 25001)
  {
    v8 = &byte_2858DEC60;
  }

  else if (a1 < 0xC351)
  {
    v8 = &byte_2858DEC70;
  }

  else if (a1 < 0x186A1)
  {
    v8 = &byte_2858DEC80;
  }

  else if (a1 < 0x3D091)
  {
    v8 = &byte_2858DECA0;
  }

  else
  {
    if (a1 > 0x1C9C380)
    {
      goto LABEL_12;
    }

    v8 = &byte_2858DECB0;
  }

  v20 = *v8;
LABEL_12:
  v9 = sub_245FA31EC();
  (*(v5 + 16))(v7, v9, v4);
  v10 = v20;
  v11 = sub_2460918D4();
  v12 = sub_246091FC4();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v19[0] = v14;
    *v13 = 136446210;
    v18[15] = v10;
    v15 = sub_246091C54();
    v17 = sub_245F8D3C0(v15, v16, v19);

    *(v13 + 4) = v17;
    _os_log_impl(&dword_245F8A000, v11, v12, "Selected %{public}s as next high detail level", v13, 0xCu);
    sub_245F8E6F4(v14);
    MEMORY[0x24C1989D0](v14, -1, -1);
    MEMORY[0x24C1989D0](v13, -1, -1);
  }

  (*(v5 + 8))(v7, v4);
  swift_beginAccess();
  *a2 = v20;
}

void sub_245FE8728(char *a1, uint64_t a2)
{
  v61 = a1;
  v4 = sub_2460918F4();
  v59 = *(v4 - 8);
  v60 = v4;
  MEMORY[0x28223BE20](v4);
  v58 = &v53 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for PhotogrammetrySession.Request(0);
  v66 = *(v6 - 8);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v53 - v10;
  v12 = sub_245F8E624(&qword_27EE3A590, &qword_246098400);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v65 = (&v53 - v14);
  v15 = sub_245F8E624(&qword_27EE3A598, &qword_246098408);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v53 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = (&v53 - v19);
  v73[0] = 3;
  v21 = *(a2 + 16);
  v67 = a2;
  v68 = v21;
  v55 = v2 + OBJC_IVAR____TtC6CoreOC9PGManager_configuration;
  swift_beginAccess();
  v22 = 0;
  v23 = 0;
  v24 = (v13 + 56);
  v25 = (v13 + 48);
  v62 = -1;
  v63 = 0;
LABEL_2:
  v64 = v23;
  while (1)
  {
    if (v22 == v68)
    {
      v26 = 1;
      v22 = v68;
      goto LABEL_8;
    }

    if (v22 >= v68)
    {
      break;
    }

    if (__OFADD__(v22, 1))
    {
      goto LABEL_36;
    }

    v27 = v65;
    v28 = v67 + ((*(v66 + 80) + 32) & ~*(v66 + 80)) + *(v66 + 72) * v22;
    v29 = *(v12 + 48);
    *v65 = v22;
    sub_245FFE868(v28, v27 + v29, type metadata accessor for PhotogrammetrySession.Request);
    sub_245FC5914(v27, v17, &qword_27EE3A590, &qword_246098400);
    v26 = 0;
    ++v22;
LABEL_8:
    (*v24)(v17, v26, 1, v12);
    sub_245FC5914(v17, v20, &qword_27EE3A598, &qword_246098408);
    if ((*v25)(v20, 1, v12) == 1)
    {
      v42 = sub_245FA31EC();
      v44 = v58;
      v43 = v59;
      v45 = v60;
      (*(v59 + 16))(v58, v42, v60);
      v46 = sub_2460918D4();
      v47 = sub_246091FA4();
      if (os_log_type_enabled(v46, v47))
      {
        v48 = swift_slowAlloc();
        v49 = swift_slowAlloc();
        v72 = v49;
        *v48 = 136446466;
        LOBYTE(v69) = v73[0];
        v50 = sub_246091C54();
        v52 = sub_245F8D3C0(v50, v51, &v72);

        *(v48 + 4) = v52;
        *(v48 + 12) = 2050;
        *(v48 + 14) = v63;
        _os_log_impl(&dword_245F8A000, v46, v47, "Request with the highest detail level = %{public}s is at the index = %{public}ld", v48, 0x16u);
        sub_245F8E6F4(v49);
        MEMORY[0x24C1989D0](v49, -1, -1);
        MEMORY[0x24C1989D0](v48, -1, -1);
      }

      (*(v43 + 8))(v44, v45);
      *v61 = v73[0];
      return;
    }

    v30 = *v20;
    sub_245FFE800(v20 + *(v12 + 48), v11, type metadata accessor for PhotogrammetrySession.Request);
    sub_245FFE868(v11, v8, type metadata accessor for PhotogrammetrySession.Request);
    v31 = sub_245F8E624(&qword_27EE3A470, &qword_2460983C0);
    if (!(*(*(v31 - 8) + 48))(v8, 3, v31))
    {
      v56 = v8[*(v31 + 48)];
      v71 = v56;
      v70 = 6;
      v57 = sub_245FFE8D0();
      sub_246091D94();
      sub_246091D94();
      if (v72 == v69)
      {
        MaxPolyCount = CPGOutputModelOptionsGetMaxPolyCount();
        sub_245FE84A8(MaxPolyCount, &v72);
        v33 = v72;
        if (qword_27EE3C130 != -1)
        {
          v41 = v72;
          swift_once();
          v33 = v41;
        }

        v34 = qword_27EE3C138;
        if (!*(qword_27EE3C138 + 16))
        {
          goto LABEL_22;
        }

        v35 = sub_245FF84C0(v33);
        if ((v36 & 1) == 0)
        {
          goto LABEL_22;
        }

LABEL_21:
        LODWORD(v57) = 0;
        v54 = *(*(v34 + 56) + 8 * v35);
      }

      else
      {
        if (qword_27EE3C130 != -1)
        {
          swift_once();
        }

        v34 = qword_27EE3C138;
        if (*(qword_27EE3C138 + 16))
        {
          v35 = sub_245FF84C0(v56);
          if (v37)
          {
            goto LABEL_21;
          }
        }

LABEL_22:
        v54 = 0;
        LODWORD(v57) = 1;
      }

      v38 = sub_245FCA01C(v11);
      sub_245FFEA30(v11, type metadata accessor for PhotogrammetrySession.Request);
      if (v57)
      {
LABEL_24:
        v39 = v62;
        v30 = v63;
      }

      else if (v62 >= v54)
      {
        if (v54 != v62) | v38 & 1 || ((v64 ^ 1))
        {
          v64 &= (v54 != v62) | v38;
          goto LABEL_24;
        }

        v64 = 0;
        v73[0] = v56;
        v39 = v62;
      }

      else
      {
        v73[0] = v56;
        v64 = v38;
        v39 = v54;
      }

      v40 = sub_246091704();
      (*(*(v40 - 8) + 8))(v8, v40);
      v62 = v39;
      v63 = v30;
      v23 = v64;
      goto LABEL_2;
    }

    sub_245FFEA30(v11, type metadata accessor for PhotogrammetrySession.Request);
    sub_245FFEA30(v8, type metadata accessor for PhotogrammetrySession.Request);
  }

  __break(1u);
LABEL_36:
  __break(1u);
}

void sub_245FE8EF8(uint64_t a1@<X0>, unint64_t a2@<X8>)
{
  v5 = sub_245F8E624(&qword_27EE3A4B8, &unk_246097ED8);
  MEMORY[0x28223BE20](v5 - 8);
  v69 = &v61[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v7);
  v68 = &v61[-v8];
  v9 = sub_245F8E624(&qword_27EE3A590, &qword_246098400);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v61[-v11];
  v13 = sub_245F8E624(&qword_27EE3A598, &qword_246098408);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v61[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v16);
  v18 = &v61[-v17];
  v19 = type metadata accessor for PhotogrammetrySession.Request(0);
  v73 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v67 = &v61[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v21);
  v72 = &v61[-v22];
  MEMORY[0x28223BE20](v23);
  v25 = &v61[-v24];
  MEMORY[0x28223BE20](v26);
  v29 = &v61[-v28];
  v71 = &v61[-v28];
  v30 = *(a1 + 16);
  if (!v30)
  {
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v70 = v10;
  v66 = v27;
  v76.i64[0] = v2;
  v10 = OBJC_IVAR____TtC6CoreOC9PGManager_requestByCPGRequest;
  swift_beginAccess();
  v2 = v76.i64[0];
  if (*(*(v76.i64[0] + v10) + 16) || *(v76.i64[0] + OBJC_IVAR____TtC6CoreOC9PGManager_sfmMap))
  {
    *(a2 + 8) = 1792;
    *(a2 + 10) = 0;
    *a2 = a1;

    return;
  }

  v63 = a2;
  sub_245FE8728(&v78, a1);
  if (v31 >= v30)
  {
    goto LABEL_33;
  }

  v62 = v78.u8[0];
  v10 = (*(v73 + 80) + 32) & ~*(v73 + 80);
  v32 = *(v73 + 72);
  v77.i64[0] = v31;
  v74.i64[0] = a1 + v10;
  v75.i64[0] = v32;
  a2 = v71;
  sub_245FFE868(a1 + v10 + v32 * v31, v71, type metadata accessor for PhotogrammetrySession.Request);
  v65 = sub_245FF7EC4(0, 1, 1, MEMORY[0x277D84F90]);
  v2 = v65[2];
  v29 = v65[3];
  a1 = v2 + 1;
  if (v2 >= v29 >> 1)
  {
LABEL_34:
    v65 = sub_245FF7EC4((v29 > 1), a1, 1, v65);
  }

  v33 = v65;
  v65[2] = a1;
  v64 = v10;
  sub_245FFE800(a2, v33 + v10 + v2 * v75.i64[0], type metadata accessor for PhotogrammetrySession.Request);
  v10 = 0;
  v29 = v70;
  v2 = v70 + 56;
  a1 = v70 + 48;
  while (1)
  {
    if (v10 == v30)
    {
      v34 = 1;
      v10 = v30;
    }

    else
    {
      if (v10 >= v30)
      {
        __break(1u);
LABEL_31:
        __break(1u);
        goto LABEL_32;
      }

      a2 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        goto LABEL_31;
      }

      v35 = v10 * v75.i64[0];
      v36 = *(v9 + 48);
      *v12 = v10;
      sub_245FFE868(v74.i64[0] + v35, v12 + v36, type metadata accessor for PhotogrammetrySession.Request);
      sub_245FC5914(v12, v15, &qword_27EE3A590, &qword_246098400);
      v34 = 0;
      ++v10;
    }

    (*v2)(v15, v34, 1, v9);
    sub_245FC5914(v15, v18, &qword_27EE3A598, &qword_246098408);
    if ((*a1)(v18, 1, v9) == 1)
    {
      break;
    }

    a2 = *v18;
    sub_245FFE800(v18 + *(v9 + 48), v25, type metadata accessor for PhotogrammetrySession.Request);
    if (a2 == v77.i64[0])
    {
      sub_245FFEA30(v25, type metadata accessor for PhotogrammetrySession.Request);
    }

    else
    {
      sub_245FFE868(v25, v72, type metadata accessor for PhotogrammetrySession.Request);
      a2 = v65[2];
      v37 = v65[3];
      v71 = (a2 + 1);
      if (a2 >= v37 >> 1)
      {
        v65 = sub_245FF7EC4((v37 > 1), a2 + 1, 1, v65);
      }

      sub_245FFEA30(v25, type metadata accessor for PhotogrammetrySession.Request);
      v38 = v65;
      v65[2] = v71;
      sub_245FFE800(v72, v38 + v64 + a2 * v75.i64[0], type metadata accessor for PhotogrammetrySession.Request);
    }
  }

  v39 = v65;
  if (v65[2])
  {
    v40 = v68;
    sub_245FFE868(v65 + v64, v68, type metadata accessor for PhotogrammetrySession.Request);
    v41 = v73;
    v42 = v66;
    (*(v73 + 56))(v40, 0, 1, v66);
    v43 = OBJC_IVAR____TtC6CoreOC9PGManager_firstRequest;
    v44 = v76.i64[0];
    swift_beginAccess();
    sub_245F97BAC(v40, v44 + v43, &qword_27EE3A4B8, &unk_246097ED8);
    swift_endAccess();
    v87 = 1;
    v45 = v44 + v43;
    v46 = v69;
    sub_245F8E7A4(v45, v69, &qword_27EE3A4B8, &unk_246097ED8);
    if ((*(v41 + 48))(v46, 1, v42) != 1)
    {
      v47 = v67;
      sub_245FFE868(v46, v67, type metadata accessor for PhotogrammetrySession.Request);
      v48 = sub_245F8E624(&qword_27EE3A470, &qword_2460983C0);
      v49 = (*(*(v48 - 8) + 48))(v47, 3, v48);
      v50 = v63;
      if (v49)
      {

        sub_245FFEA30(v47, type metadata accessor for PhotogrammetrySession.Request);
LABEL_23:
        v51 = 0;
LABEL_29:
        sub_245FFEA30(v46, type metadata accessor for PhotogrammetrySession.Request);

        v60 = v87;
        *v50 = v39;
        *(v50 + 8) = v60;
        *(v50 + 9) = v62;
        *(v50 + 10) = v51;
        return;
      }

      v52 = &v47[*(v48 + 64)];
      v53 = *(v52 + 7);
      v84 = *(v52 + 6);
      v85 = v53;
      v86 = v52[128];
      v54 = *(v52 + 3);
      v80 = *(v52 + 2);
      v81 = v54;
      v55 = *(v52 + 5);
      v82 = *(v52 + 4);
      v83 = v55;
      v56 = *(v52 + 1);
      v78 = *v52;
      v79 = v56;
      if (sub_245F97DBC(&v78) == 1)
      {
      }

      else
      {
        v77 = v78;
        v76 = v79;
        v75 = v80;
        v74 = v81;

        if (sub_246021E38(v57, v77, v76, v75, v74))
        {
          v58 = sub_246091704();
          (*(*(v58 - 8) + 8))(v47, v58);
          goto LABEL_23;
        }
      }

      v59 = sub_246091704();
      (*(*(v59 - 8) + 8))(v47, v59);
      v51 = 1;
      goto LABEL_29;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_245FE9894(char *a1)
{
  v75 = *MEMORY[0x277D85DE8];
  v3 = sub_2460918F4();
  v67 = *(v3 - 8);
  v68 = v3;
  MEMORY[0x28223BE20](v3);
  v63 = &v59 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v66 = &v59 - v6;
  MEMORY[0x28223BE20](v7);
  v60 = &v59 - v8;
  MEMORY[0x28223BE20](v9);
  v11 = &v59 - v10;
  MEMORY[0x28223BE20](v12);
  v14 = &v59 - v13;
  v15 = sub_245F8E624(&qword_27EE3A4B8, &unk_246097ED8);
  MEMORY[0x28223BE20](v15 - 8);
  v65 = &v59 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v62 = &v59 - v18;
  MEMORY[0x28223BE20](v19);
  v21 = &v59 - v20;
  v22 = *a1;
  v23 = OBJC_IVAR____TtC6CoreOC9PGManager_firstRequest;
  swift_beginAccess();
  v69 = v1;
  sub_245F8E7A4(v1 + v23, v21, &qword_27EE3A4B8, &unk_246097ED8);
  v24 = type metadata accessor for PhotogrammetrySession.Request(0);
  v61 = *(v24 - 8);
  v64 = *(v61 + 48);
  v25 = v64(v21, 1, v24);
  sub_245F8E744(v21, &qword_27EE3A4B8, &unk_246097ED8);
  if (v25 == 1)
  {
    __break(1u);
    goto LABEL_33;
  }

  v74 = 0;
  if (CPGRequestCreateWithDetail())
  {
    return 0;
  }

  v71 = v22;
  v70 = 6;
  sub_245FFE8D0();
  sub_246091D94();
  sub_246091D94();
  v26 = v67;
  v27 = v68;
  v28 = v69;
  if (v73 != v72)
  {
    goto LABEL_10;
  }

  if (!*(v69 + OBJC_IVAR____TtC6CoreOC9PGManager_configuration + 16))
  {
    v39 = sub_245FA31EC();
    (*(v26 + 16))(v11, v39, v27);
    v40 = sub_2460918D4();
    v41 = sub_246091FB4();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = v26;
      v43 = swift_slowAlloc();
      *v43 = 0;
      _os_log_impl(&dword_245F8A000, v40, v41, "Output model options is nil", v43, 2u);
      MEMORY[0x24C1989D0](v43, -1, -1);

      (*(v42 + 8))(v11, v27);
    }

    else
    {

      (*(v26 + 8))(v11, v27);
    }

    return 0;
  }

  if (CPGRequestSetCustomOutputModelOptions())
  {
    return 0;
  }

  if (!v74)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v29 = sub_245FA31EC();
  (*(v26 + 16))(v14, v29, v27);
  v30 = sub_2460918D4();
  v31 = sub_246091FC4();
  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    *v32 = 0;
    _os_log_impl(&dword_245F8A000, v30, v31, "Set custom detail level for base frame request", v32, 2u);
    v33 = v32;
    v28 = v69;
    MEMORY[0x24C1989D0](v33, -1, -1);
  }

  (*(v26 + 8))(v14, v27);
LABEL_10:
  if (!v74)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  if (*(v28 + OBJC_IVAR____TtC6CoreOC9PGManager_configuration + 25) != 1)
  {
    goto LABEL_22;
  }

  if (CPGRequestSetOutputQuadMeshEnabled())
  {
    v34 = sub_245FA31EC();
    v35 = v66;
    (*(v26 + 16))(v66, v34, v27);
    v36 = sub_2460918D4();
    v37 = sub_246091FB4();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      *v38 = 0;
      _os_log_impl(&dword_245F8A000, v36, v37, "Error setting quad mesh output for base frame request", v38, 2u);
      MEMORY[0x24C1989D0](v38, -1, -1);
    }

    (*(v26 + 8))(v35, v27);
    goto LABEL_23;
  }

  if (!v74)
  {
LABEL_35:
    __break(1u);
  }

  v44 = sub_245FA31EC();
  v45 = v60;
  (*(v26 + 16))(v60, v44, v27);
  v46 = sub_2460918D4();
  v47 = sub_246091FC4();
  if (os_log_type_enabled(v46, v47))
  {
    v48 = swift_slowAlloc();
    *v48 = 0;
    _os_log_impl(&dword_245F8A000, v46, v47, "Set quad mesh model file for base frame request", v48, 2u);
    v49 = v48;
    v28 = v69;
    MEMORY[0x24C1989D0](v49, -1, -1);
  }

  (*(v26 + 8))(v45, v27);
LABEL_22:
  swift_beginAccess();
  result = CPGSessionProcessRequestWithCallbacks();
  v51 = v74;
  if (result)
  {
LABEL_23:
    CPGRequestRelease();
    return 0;
  }

  *(v28 + OBJC_IVAR____TtC6CoreOC9PGManager_baseFrameCPGRequest) = v74;
  if (!v51)
  {
    __break(1u);
    goto LABEL_37;
  }

  v52 = v65;
  sub_245F8E7A4(v28 + v23, v65, &qword_27EE3A4B8, &unk_246097ED8);
  result = v64(v52, 1, v24);
  if (result == 1)
  {
LABEL_37:
    __break(1u);
    return result;
  }

  v53 = v62;
  sub_245FFE800(v52, v62, type metadata accessor for PhotogrammetrySession.Request);
  (*(v61 + 56))(v53, 0, 1, v24);
  swift_beginAccess();
  sub_245FD4674(v53, v51);
  swift_endAccess();
  v54 = sub_245FA31EC();
  v55 = v63;
  (*(v26 + 16))(v63, v54, v27);
  v56 = sub_2460918D4();
  v57 = sub_246091FC4();
  if (os_log_type_enabled(v56, v57))
  {
    v58 = swift_slowAlloc();
    *v58 = 0;
    _os_log_impl(&dword_245F8A000, v56, v57, "Successfully passed a base frame request to backend session.", v58, 2u);
    MEMORY[0x24C1989D0](v58, -1, -1);
  }

  (*(v26 + 8))(v55, v27);
  CPGRequestRelease();
  return 1;
}

uint64_t sub_245FEA118(uint64_t a1)
{
  v10[5] = *MEMORY[0x277D85DE8];
  v3 = type metadata accessor for PhotogrammetrySession.Request(0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_245FFE868(a1, v5, type metadata accessor for PhotogrammetrySession.Request);
  v6 = sub_245F8E624(&qword_27EE3A470, &qword_2460983C0);
  if ((*(*(v6 - 8) + 48))(v5, 3, v6))
  {
    return sub_245FFEA30(v5, type metadata accessor for PhotogrammetrySession.Request);
  }

  v10[4] = 0;
  if (CPGRequestCreateWithDetail())
  {
    goto LABEL_4;
  }

  if (*(v1 + OBJC_IVAR____TtC6CoreOC9PGManager_configuration + 25) == 1 && CPGRequestSetOutputQuadMeshEnabled())
  {
    CPGRequestRelease();
LABEL_4:
    v8 = sub_246091704();
    return (*(*(v8 - 8) + 8))(v5, v8);
  }

  swift_beginAccess();
  CPGSessionGetEstimatedProcessingTime();
  CPGRequestRelease();
  v9 = sub_246091704();
  return (*(*(v9 - 8) + 8))(v5, v9);
}

void sub_245FEA360(uint64_t a1, uint64_t a2, char *a3, float32x4_t *a4)
{
  v5 = v4;
  v139 = a1;
  v189 = *MEMORY[0x277D85DE8];
  v8 = sub_245F8E624(&qword_27EE3A4B8, &unk_246097ED8);
  MEMORY[0x28223BE20](v8 - 8);
  v132 = &v124 - v9;
  v10 = sub_2460918F4();
  v136 = *(v10 - 8);
  v137 = v10;
  MEMORY[0x28223BE20](v10);
  v133 = &v124 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v135 = &v124 - v13;
  MEMORY[0x28223BE20](v14);
  v134 = &v124 - v15;
  MEMORY[0x28223BE20](v16);
  v18 = &v124 - v17;
  MEMORY[0x28223BE20](v19);
  v21 = &v124 - v20;
  v138 = type metadata accessor for PhotogrammetrySession.Output(0);
  MEMORY[0x28223BE20](v138);
  v23 = &v124 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = OBJC_IVAR____TtC6CoreOC9PGManager_sfmMap;
  if (!*(v5 + OBJC_IVAR____TtC6CoreOC9PGManager_sfmMap))
  {
LABEL_87:
    __break(1u);
  }

  v25 = *a3;
  v26 = (v5 + OBJC_IVAR____TtC6CoreOC9PGManager_reCenterTransform);
  v27 = *(v5 + OBJC_IVAR____TtC6CoreOC9PGManager_reCenterTransform + 112);
  v168[6] = *(v5 + OBJC_IVAR____TtC6CoreOC9PGManager_reCenterTransform + 96);
  v168[7] = v27;
  v169 = *(v5 + OBJC_IVAR____TtC6CoreOC9PGManager_reCenterTransform + 128);
  v28 = *(v5 + OBJC_IVAR____TtC6CoreOC9PGManager_reCenterTransform + 48);
  v168[2] = *(v5 + OBJC_IVAR____TtC6CoreOC9PGManager_reCenterTransform + 32);
  v168[3] = v28;
  v29 = *(v5 + OBJC_IVAR____TtC6CoreOC9PGManager_reCenterTransform + 80);
  v168[4] = *(v5 + OBJC_IVAR____TtC6CoreOC9PGManager_reCenterTransform + 64);
  v168[5] = v29;
  v30 = *(v5 + OBJC_IVAR____TtC6CoreOC9PGManager_reCenterTransform + 16);
  v168[0] = *(v5 + OBJC_IVAR____TtC6CoreOC9PGManager_reCenterTransform);
  v168[1] = v30;
  if (sub_245F97DBC(v168))
  {
    __break(1u);
    goto LABEL_78;
  }

  v167 = 0;
  v31 = a4[7];
  v176 = a4[6];
  v177 = v31;
  v178 = a4[8].u8[0];
  v32 = a4[3];
  v172 = a4[2];
  v173 = v32;
  v33 = a4[5];
  v174 = a4[4];
  v175 = v33;
  v34 = a4[1];
  v170 = *a4;
  v171 = v34;
  v35 = sub_245F97DBC(&v170);
  if (v35 == 1 || (sub_246021E38(v35, v170, v171, v172, v173) & 1) == 0)
  {
LABEL_16:
    if (!CPGRequestCreateWithDetail())
    {
      goto LABEL_35;
    }

    if ((*(*v5 + 464))())
    {
      v48 = v47;
      ObjectType = swift_getObjectType();
      v50 = &v23[*(sub_245F8E624(&qword_27EE3A548, &unk_246098FB0) + 48)];
      sub_245FFE868(v139, v23, type metadata accessor for PhotogrammetrySession.Request);
      *v50 = 3;
      v50[8] = 1;
      swift_storeEnumTagMultiPayload();
      (*(v48 + 8))(v23, ObjectType, v48);
      swift_unknownObjectRelease();
      sub_245FFEA30(v23, type metadata accessor for PhotogrammetrySession.Output);
    }

    v43 = OBJC_IVAR____TtC6CoreOC9PGManager_requestNum;
    v51 = *(v5 + OBJC_IVAR____TtC6CoreOC9PGManager_requestNum);
    v45 = __OFSUB__(v51, 1);
    v46 = v51 - 1;
    if (!v45)
    {
LABEL_20:
      *(v5 + v43) = v46;
      sub_245FE2E78();
      return;
    }

LABEL_78:
    __break(1u);
    goto LABEL_79;
  }

  if (!*(v5 + v24))
  {
    __break(1u);
    goto LABEL_89;
  }

  v36 = v26[7];
  v155 = v26[6];
  v156 = v36;
  v157 = v26[8].i8[0];
  v37 = v26[3];
  v151 = v26[2];
  v152 = v37;
  v38 = v26[5];
  v153 = v26[4];
  v154 = v38;
  v39 = v26[1];
  v149 = *v26;
  v150 = v39;
  if (sub_245F97DBC(&v149))
  {
LABEL_80:
    __break(1u);
LABEL_81:
    __break(1u);
    goto LABEL_82;
  }

  v164 = v155;
  v165 = v156;
  v166 = v157;
  v160 = v151;
  v161 = v152;
  v162 = v153;
  v163 = v154;
  v158 = v149;
  v159 = v150;
  if (sub_245F97DBC(&v158) == 1)
  {
LABEL_89:
    __break(1u);
    goto LABEL_90;
  }

  v144 = v162;
  v145 = v163;
  v146 = v164;
  v147 = v165;
  v140 = v158;
  v141 = v159;
  v142 = v160;
  v143 = v161;
  MutableCopy = CPGSfmMapCreateMutableCopy();
  if (!MutableCopy)
  {
LABEL_11:
    if ((*(*v5 + 464))(MutableCopy))
    {
      v18 = v41;
      v42 = swift_getObjectType();
      v21 = &v23[*(sub_245F8E624(&qword_27EE3A548, &unk_246098FB0) + 48)];
      sub_245FFE868(v139, v23, type metadata accessor for PhotogrammetrySession.Request);
      *v21 = 3;
      v21[8] = 1;
      swift_storeEnumTagMultiPayload();
      (*(v18 + 1))(v23, v42, v18);
      swift_unknownObjectRelease();
      sub_245FFEA30(v23, type metadata accessor for PhotogrammetrySession.Output);
    }

    v43 = OBJC_IVAR____TtC6CoreOC9PGManager_requestNum;
    v44 = *(v5 + OBJC_IVAR____TtC6CoreOC9PGManager_requestNum);
    v45 = __OFSUB__(v44, 1);
    v46 = v44 - 1;
    if (!v45)
    {
      goto LABEL_20;
    }

    __break(1u);
    goto LABEL_16;
  }

  v184 = v144;
  v185 = v145;
  v186 = v146;
  v187 = v147;
  v180 = v140;
  v181 = v141;
  v182 = v142;
  v183 = v143;
  if (CPGSfmMapTransformBy())
  {
    goto LABEL_10;
  }

  v52 = a4[7];
  v186 = a4[6];
  v187 = v52;
  v188 = a4[8].u8[0];
  v53 = a4[3];
  v182 = a4[2];
  v183 = v53;
  v54 = a4[5];
  v184 = a4[4];
  v185 = v54;
  v55 = a4[1];
  v180 = *a4;
  v181 = v55;
  v56 = sub_245F97DBC(&v180);
  if (v56 == 1)
  {
    OCNonModularSPI_Serialization_InvalidBoundingBoxTransform();
    v130 = v58;
    v131 = v57;
    v128 = v60;
    v129 = v59;
    sub_246027DB4();
    PhotogrammetrySession.Request.Geometry.init(orientedBoundsTransform:rootTransform:)(&v148, v61, v62);
  }

  else
  {
    v63 = a4[5];
    v148.rootTransform.columns[0] = a4[4];
    v148.rootTransform.columns[1] = v63;
    v64 = a4[7];
    v148.rootTransform.columns[2] = a4[6];
    v148.rootTransform.columns[3] = v64;
    v65 = a4[1];
    v148.orientedBoundsTransform.columns[0] = *a4;
    v148.orientedBoundsTransform.columns[1] = v65;
    v66 = a4[3];
    v148.orientedBoundsTransform.columns[2] = a4[2];
    v148.orientedBoundsTransform.columns[3] = v66;
  }

  if (v130 = v148.rootTransform.columns[1], v131 = v148.rootTransform.columns[0], v128 = v148.rootTransform.columns[3], v129 = v148.rootTransform.columns[2], v126 = v148.orientedBoundsTransform.columns[1], v127 = v148.orientedBoundsTransform.columns[0], v124 = v148.orientedBoundsTransform.columns[3], v125 = v148.orientedBoundsTransform.columns[2], (sub_246021E38(v56, v148.orientedBoundsTransform.columns[0], v148.orientedBoundsTransform.columns[1], v148.orientedBoundsTransform.columns[2], v148.orientedBoundsTransform.columns[3])) && ((v179 = 0, sub_246021188(&v148, v127, v126, v125, v124), CPGBoundingBoxCreateFromTransform()) || (v67 = CPGSfmMapSetBoundingBox(), CPGBoundingBoxRelease(), v67)) || (sub_246021188(&v148, v131, v130, v129, v128), CPGSfmMapTransformBy()))
  {
LABEL_10:
    MutableCopy = CPGSfmMapRelease();
    goto LABEL_11;
  }

  CPGSfmMapRetain();
  CPGSfmMapRelease();
  if (CPGRequestCreateWithDetailAndSfmMap())
  {
    if ((*(*v5 + 464))())
    {
      v69 = v68;
      v70 = swift_getObjectType();
      v71 = &v23[*(sub_245F8E624(&qword_27EE3A548, &unk_246098FB0) + 48)];
      sub_245FFE868(v139, v23, type metadata accessor for PhotogrammetrySession.Request);
      *v71 = 3;
      v71[8] = 1;
      swift_storeEnumTagMultiPayload();
      (*(v69 + 8))(v23, v70, v69);
      swift_unknownObjectRelease();
      sub_245FFEA30(v23, type metadata accessor for PhotogrammetrySession.Output);
    }

    v72 = *(v5 + OBJC_IVAR____TtC6CoreOC9PGManager_requestNum);
    v45 = __OFSUB__(v72, 1);
    v73 = v72 - 1;
    if (!v45)
    {
      *(v5 + OBJC_IVAR____TtC6CoreOC9PGManager_requestNum) = v73;
      sub_245FE2E78();
      CPGSfmMapRelease();
      return;
    }

    goto LABEL_86;
  }

  CPGSfmMapRelease();
LABEL_35:
  if (!v167)
  {
LABEL_79:
    __break(1u);
    goto LABEL_80;
  }

  v149.i8[0] = v25;
  v148.orientedBoundsTransform.columns[0].i8[0] = 6;
  sub_245FFE8D0();
  sub_246091D94();
  v74 = sub_246091D94();
  if (v180.i64[0] != v158.i64[0])
  {
    goto LABEL_54;
  }

  if (!*(v5 + OBJC_IVAR____TtC6CoreOC9PGManager_configuration + 16))
  {
    goto LABEL_44;
  }

  if (!CPGRequestSetCustomOutputModelOptions())
  {
    if (!v167)
    {
LABEL_84:
      __break(1u);
      goto LABEL_85;
    }

    v91 = sub_245FA31EC();
    (*(v136 + 16))(v21, v91, v137);
    v92 = sub_2460918D4();
    v93 = sub_246091FC4();
    if (os_log_type_enabled(v92, v93))
    {
      v94 = swift_slowAlloc();
      *v94 = 0;
      _os_log_impl(&dword_245F8A000, v92, v93, "Set custom detail level model file request", v94, 2u);
      MEMORY[0x24C1989D0](v94, -1, -1);
    }

    (*(v136 + 8))(v21, v137);
LABEL_54:
    v96 = v136;
    v95 = v137;
    if (*(v5 + OBJC_IVAR____TtC6CoreOC9PGManager_configuration + 25) == 1)
    {
      if (CPGRequestSetOutputQuadMeshEnabled())
      {
        if ((*(*v5 + 464))())
        {
          v98 = v97;
          v99 = swift_getObjectType();
          v100 = &v23[*(sub_245F8E624(&qword_27EE3A548, &unk_246098FB0) + 48)];
          sub_245FFE868(v139, v23, type metadata accessor for PhotogrammetrySession.Request);
          *v100 = 3;
          v100[8] = 1;
          swift_storeEnumTagMultiPayload();
          (*(v98 + 8))(v23, v99, v98);
          swift_unknownObjectRelease();
          sub_245FFEA30(v23, type metadata accessor for PhotogrammetrySession.Output);
        }

        v101 = *(v5 + OBJC_IVAR____TtC6CoreOC9PGManager_requestNum);
        v45 = __OFSUB__(v101, 1);
        v102 = v101 - 1;
        if (!v45)
        {
          *(v5 + OBJC_IVAR____TtC6CoreOC9PGManager_requestNum) = v102;
          sub_245FE2E78();
          v103 = sub_245FA31EC();
          v104 = v135;
          (*(v96 + 16))(v135, v103, v95);
          v105 = sub_2460918D4();
          v106 = sub_246091FB4();
          if (os_log_type_enabled(v105, v106))
          {
            v107 = swift_slowAlloc();
            *v107 = 0;
            v108 = "Error setting quad mesh output model";
LABEL_74:
            _os_log_impl(&dword_245F8A000, v105, v106, v108, v107, 2u);
            MEMORY[0x24C1989D0](v107, -1, -1);
            goto LABEL_75;
          }

          goto LABEL_75;
        }

LABEL_82:
        __break(1u);
LABEL_83:
        __break(1u);
        goto LABEL_84;
      }

      if (!v167)
      {
LABEL_85:
        __break(1u);
LABEL_86:
        __break(1u);
        goto LABEL_87;
      }

      v109 = sub_245FA31EC();
      v110 = v134;
      (*(v96 + 16))(v134, v109, v95);
      v111 = sub_2460918D4();
      v112 = sub_246091FC4();
      if (os_log_type_enabled(v111, v112))
      {
        v113 = swift_slowAlloc();
        *v113 = 0;
        _os_log_impl(&dword_245F8A000, v111, v112, "Set quad mesh model file request", v113, 2u);
        v110 = v134;
        MEMORY[0x24C1989D0](v113, -1, -1);
      }

      (*(v96 + 8))(v110, v95);
    }

    swift_beginAccess();
    if (v167)
    {
      if (CPGSessionProcessRequestWithCallbacks())
      {
        if ((*(*v5 + 464))())
        {
          v115 = v114;
          v116 = swift_getObjectType();
          v117 = &v23[*(sub_245F8E624(&qword_27EE3A548, &unk_246098FB0) + 48)];
          sub_245FFE868(v139, v23, type metadata accessor for PhotogrammetrySession.Request);
          *v117 = 3;
          v117[8] = 1;
          swift_storeEnumTagMultiPayload();
          (*(v115 + 8))(v23, v116, v115);
          swift_unknownObjectRelease();
          sub_245FFEA30(v23, type metadata accessor for PhotogrammetrySession.Output);
        }

        v118 = *(v5 + OBJC_IVAR____TtC6CoreOC9PGManager_requestNum);
        v45 = __OFSUB__(v118, 1);
        v119 = v118 - 1;
        if (!v45)
        {
          *(v5 + OBJC_IVAR____TtC6CoreOC9PGManager_requestNum) = v119;
          sub_245FE2E78();
LABEL_76:
          CPGRequestRelease();
          return;
        }

        goto LABEL_81;
      }

      v120 = v167;
      if (v167)
      {
        v121 = v132;
        sub_245FFE868(v139, v132, type metadata accessor for PhotogrammetrySession.Request);
        v122 = type metadata accessor for PhotogrammetrySession.Request(0);
        (*(*(v122 - 8) + 56))(v121, 0, 1, v122);
        swift_beginAccess();
        sub_245FD4674(v121, v120);
        swift_endAccess();
        v123 = sub_245FA31EC();
        v104 = v133;
        (*(v96 + 16))(v133, v123, v95);
        v105 = sub_2460918D4();
        v106 = sub_246091FC4();
        if (os_log_type_enabled(v105, v106))
        {
          v107 = swift_slowAlloc();
          *v107 = 0;
          v108 = "Successfully passed the model file request to backend session.";
          goto LABEL_74;
        }

LABEL_75:

        (*(v96 + 8))(v104, v95);
        goto LABEL_76;
      }

LABEL_91:
      __break(1u);
      return;
    }

LABEL_90:
    __break(1u);
    goto LABEL_91;
  }

  v74 = (*(*v5 + 464))();
  if (v74)
  {
    v18 = v75;
    v76 = swift_getObjectType();
    v77 = &v23[*(sub_245F8E624(&qword_27EE3A548, &unk_246098FB0) + 48)];
    sub_245FFE868(v139, v23, type metadata accessor for PhotogrammetrySession.Request);
    *v77 = 3;
    v77[8] = 1;
    swift_storeEnumTagMultiPayload();
    (*(v18 + 1))(v23, v76, v18);
    swift_unknownObjectRelease();
    v74 = sub_245FFEA30(v23, type metadata accessor for PhotogrammetrySession.Output);
  }

  v43 = OBJC_IVAR____TtC6CoreOC9PGManager_requestNum;
  v78 = *(v5 + OBJC_IVAR____TtC6CoreOC9PGManager_requestNum);
  v45 = __OFSUB__(v78, 1);
  v46 = v78 - 1;
  if (!v45)
  {
    goto LABEL_20;
  }

  __break(1u);
LABEL_44:
  if ((*(*v5 + 464))(v74))
  {
    v80 = v79;
    v81 = swift_getObjectType();
    v82 = &v23[*(sub_245F8E624(&qword_27EE3A548, &unk_246098FB0) + 48)];
    sub_245FFE868(v139, v23, type metadata accessor for PhotogrammetrySession.Request);
    *v82 = 3;
    v82[8] = 1;
    swift_storeEnumTagMultiPayload();
    (*(v80 + 8))(v23, v81, v80);
    swift_unknownObjectRelease();
    sub_245FFEA30(v23, type metadata accessor for PhotogrammetrySession.Output);
  }

  v83 = *(v5 + OBJC_IVAR____TtC6CoreOC9PGManager_requestNum);
  v45 = __OFSUB__(v83, 1);
  v84 = v83 - 1;
  v86 = v136;
  v85 = v137;
  if (v45)
  {
    goto LABEL_83;
  }

  *(v5 + OBJC_IVAR____TtC6CoreOC9PGManager_requestNum) = v84;
  sub_245FE2E78();
  v87 = sub_245FA31EC();
  (*(v86 + 16))(v18, v87, v85);
  v88 = sub_2460918D4();
  v89 = sub_246091FB4();
  if (os_log_type_enabled(v88, v89))
  {
    v90 = swift_slowAlloc();
    *v90 = 0;
    _os_log_impl(&dword_245F8A000, v88, v89, "Output model options is nil", v90, 2u);
    MEMORY[0x24C1989D0](v90, -1, -1);
  }

  (*(v86 + 8))(v18, v85);
}

uint64_t sub_245FEB48C(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for PhotogrammetrySession.Request(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = (&v28[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = type metadata accessor for PhotogrammetrySession.Output(0);
  MEMORY[0x28223BE20](v8);
  v10 = &v28[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for PhotogrammetrySession.Result(0);
  MEMORY[0x28223BE20](v11);
  v13 = (&v28[-1] - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (*(*(v2 + OBJC_IVAR____TtC6CoreOC9PGManager_pointCloud) + 16))
  {
    v5 = v2;
    sub_245FEC2F4(a1);

    _s6CoreOC20ObjectCaptureSessionC5FrameV8FeedbackV8rawValueAGSi_tcfC_0(v14, v28);
    *v13 = v28[0];
    v15 = swift_storeEnumTagMultiPayload();
    v16 = (*(*v2 + 464))(v15);
    if (v16)
    {
      v5 = v16;
      v7 = v17;
      ObjectType = swift_getObjectType();
      v19 = *(sub_245F8E624(&qword_27EE3A550, &qword_2460983C8) + 48);
      sub_245FFE868(a1, v10, type metadata accessor for PhotogrammetrySession.Request);
      sub_245FFE868(v13, &v10[v19], type metadata accessor for PhotogrammetrySession.Result);
      swift_storeEnumTagMultiPayload();
      v7[1](v10, ObjectType, v7);
      swift_unknownObjectRelease();
      sub_245FFEA30(v10, type metadata accessor for PhotogrammetrySession.Output);
    }

    v20 = *(v2 + OBJC_IVAR____TtC6CoreOC9PGManager_requestNum);
    v21 = __OFSUB__(v20, 1);
    v22 = v20 - 1;
    if (!v21)
    {
      *(v2 + OBJC_IVAR____TtC6CoreOC9PGManager_requestNum) = v22;
      sub_245FE2E78();
      return sub_245FFEA30(v13, type metadata accessor for PhotogrammetrySession.Result);
    }

    __break(1u);
    goto LABEL_11;
  }

  sub_245FFE868(a1, v7, type metadata accessor for PhotogrammetrySession.Request);
  v10 = OBJC_IVAR____TtC6CoreOC9PGManager_cachedRequests;
  swift_beginAccess();
  a1 = *&v10[v2];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v10[v2] = a1;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
LABEL_11:
    a1 = sub_245FF7EC4(0, a1[2] + 1, 1, a1);
    *&v10[v2] = a1;
  }

  v26 = a1[2];
  v25 = a1[3];
  if (v26 >= v25 >> 1)
  {
    a1 = sub_245FF7EC4((v25 > 1), v26 + 1, 1, a1);
  }

  a1[2] = v26 + 1;
  sub_245FFE800(v7, a1 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v26, type metadata accessor for PhotogrammetrySession.Request);
  *&v10[v2] = a1;
  return swift_endAccess();
}

uint64_t sub_245FEB84C(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for PhotogrammetrySession.Request(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for PhotogrammetrySession.Output(0);
  MEMORY[0x28223BE20](v8);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for PhotogrammetrySession.Result(0);
  MEMORY[0x28223BE20](v11);
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = (v2 + OBJC_IVAR____TtC6CoreOC9PGManager_orientedBoundsTransform);
  if (*(v2 + OBJC_IVAR____TtC6CoreOC9PGManager_orientedBoundsTransform + 64))
  {
    sub_245FFE868(a1, v7, type metadata accessor for PhotogrammetrySession.Request);
    v15 = OBJC_IVAR____TtC6CoreOC9PGManager_cachedRequests;
    swift_beginAccess();
    v16 = *(v2 + v15);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v2 + v15) = v16;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v16 = sub_245FF7EC4(0, v16[2] + 1, 1, v16);
      *(v2 + v15) = v16;
    }

    v19 = v16[2];
    v18 = v16[3];
    if (v19 >= v18 >> 1)
    {
      v16 = sub_245FF7EC4((v18 > 1), v19 + 1, 1, v16);
    }

    v16[2] = v19 + 1;
    sub_245FFE800(v7, v16 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v19, type metadata accessor for PhotogrammetrySession.Request);
    *(v2 + v15) = v16;
    return swift_endAccess();
  }

  else
  {
    v21 = v14[2];
    v34 = v14[1];
    v35 = v21;
    v33 = *v14;
    v22 = *(v14 + 6);
    v23 = *(v14 + 7);
    sub_245FEC2F4(a1);
    v24 = v34;
    *v13 = v33;
    *(v13 + 1) = v24;
    *(v13 + 2) = v35;
    *(v13 + 6) = v22;
    *(v13 + 7) = v23;
    v25 = swift_storeEnumTagMultiPayload();
    result = (*(*v2 + 464))(v25);
    if (result)
    {
      v27 = v26;
      ObjectType = swift_getObjectType();
      v29 = *(sub_245F8E624(&qword_27EE3A550, &qword_2460983C8) + 48);
      sub_245FFE868(a1, v10, type metadata accessor for PhotogrammetrySession.Request);
      sub_245FFE868(v13, &v10[v29], type metadata accessor for PhotogrammetrySession.Result);
      swift_storeEnumTagMultiPayload();
      (*(v27 + 8))(v10, ObjectType, v27);
      swift_unknownObjectRelease();
      result = sub_245FFEA30(v10, type metadata accessor for PhotogrammetrySession.Output);
    }

    v30 = *(v2 + OBJC_IVAR____TtC6CoreOC9PGManager_requestNum);
    v31 = __OFSUB__(v30, 1);
    v32 = v30 - 1;
    if (v31)
    {
      __break(1u);
    }

    else
    {
      *(v2 + OBJC_IVAR____TtC6CoreOC9PGManager_requestNum) = v32;
      sub_245FE2E78();
      return sub_245FFEA30(v13, type metadata accessor for PhotogrammetrySession.Result);
    }
  }

  return result;
}

uint64_t sub_245FEBC1C(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for PhotogrammetrySession.Request(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = (&v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = type metadata accessor for PhotogrammetrySession.Output(0);
  MEMORY[0x28223BE20](v8);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for PhotogrammetrySession.Result(0);
  MEMORY[0x28223BE20](v11);
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtC6CoreOC9PGManager_posesBySample;
  swift_beginAccess();
  if (*(*(v2 + v14) + 16))
  {
    sub_245FEC2F4(a1);
    swift_beginAccess();

    sub_245FEC06C(v15);
    v7 = v16;

    v17._rawValue = *(v2 + v14);
    v18 = OBJC_IVAR____TtC6CoreOC9PGManager_intrinsicsBySample;
    swift_beginAccess();
    v19._rawValue = *(v2 + v18);

    PhotogrammetrySession.Poses.init(posesBySample:intrinsicsBySample:lensDistortionDataBySample:)(v17, v19, v7);
    v20 = v35;
    *v13 = v34;
    *(v13 + 2) = v20;
    v21 = swift_storeEnumTagMultiPayload();
    v5 = v2;
    v22 = (*(*v2 + 464))(v21);
    if (v22)
    {
      v5 = v22;
      v7 = v23;
      ObjectType = swift_getObjectType();
      v25 = *(sub_245F8E624(&qword_27EE3A550, &qword_2460983C8) + 48);
      sub_245FFE868(a1, v10, type metadata accessor for PhotogrammetrySession.Request);
      sub_245FFE868(v13, &v10[v25], type metadata accessor for PhotogrammetrySession.Result);
      swift_storeEnumTagMultiPayload();
      v7[1](v10, ObjectType, v7);
      swift_unknownObjectRelease();
      sub_245FFEA30(v10, type metadata accessor for PhotogrammetrySession.Output);
    }

    v26 = *(v2 + OBJC_IVAR____TtC6CoreOC9PGManager_requestNum);
    v27 = __OFSUB__(v26, 1);
    v28 = v26 - 1;
    if (!v27)
    {
      *(v2 + OBJC_IVAR____TtC6CoreOC9PGManager_requestNum) = v28;
      sub_245FE2E78();
      return sub_245FFEA30(v13, type metadata accessor for PhotogrammetrySession.Result);
    }

    __break(1u);
    goto LABEL_11;
  }

  sub_245FFE868(a1, v7, type metadata accessor for PhotogrammetrySession.Request);
  v10 = OBJC_IVAR____TtC6CoreOC9PGManager_cachedRequests;
  swift_beginAccess();
  a1 = *&v10[v2];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v10[v2] = a1;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
LABEL_11:
    a1 = sub_245FF7EC4(0, a1[2] + 1, 1, a1);
    *&v10[v2] = a1;
  }

  v32 = a1[2];
  v31 = a1[3];
  if (v32 >= v31 >> 1)
  {
    a1 = sub_245FF7EC4((v31 > 1), v32 + 1, 1, a1);
  }

  a1[2] = v32 + 1;
  sub_245FFE800(v7, a1 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v32, type metadata accessor for PhotogrammetrySession.Request);
  *&v10[v2] = a1;
  return swift_endAccess();
}

void sub_245FEC06C(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_245F8E624(&qword_27EE3A558, &unk_2460983D0);
    v1 = sub_246092384();
  }

  else
  {
    v1 = MEMORY[0x277D84F98];
  }

  v2 = 1 << *(a1 + 32);
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  else
  {
    v3 = -1;
  }

  v4 = v3 & *(a1 + 64);
  v5 = (v2 + 63) >> 6;
  v6 = v1 + 64;

  v7 = 0;
  while (v4)
  {
LABEL_15:
    v10 = __clz(__rbit64(v4)) | (v7 << 6);
    v11 = *(*(a1 + 48) + 8 * v10);
    sub_245F8E7A4(*(a1 + 56) + 32 * v10, &v22, &unk_27EE3AA00, &qword_246098380);
    sub_245F8E624(&unk_27EE3AA00, &qword_246098380);
    sub_245F8E624(&qword_27EE3A560, &qword_246099A90);
    swift_dynamicCast();
    v12 = sub_2460924F4();
    v13 = -1 << *(v1 + 32);
    v14 = v12 & ~v13;
    v15 = v14 >> 6;
    if (((-1 << v14) & ~*(v6 + 8 * (v14 >> 6))) == 0)
    {
      v16 = 0;
      v17 = (63 - v13) >> 6;
      while (++v15 != v17 || (v16 & 1) == 0)
      {
        v18 = v15 == v17;
        if (v15 == v17)
        {
          v15 = 0;
        }

        v16 |= v18;
        v19 = *(v6 + 8 * v15);
        if (v19 != -1)
        {
          v8 = __clz(__rbit64(~v19)) + (v15 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v8 = __clz(__rbit64((-1 << v14) & ~*(v6 + 8 * (v14 >> 6)))) | v14 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v4 &= v4 - 1;
    *(v6 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
    *(*(v1 + 48) + 8 * v8) = v11;
    *(*(v1 + 56) + 16 * v8) = v21;
    ++*(v1 + 16);
  }

  while (1)
  {
    v9 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v9 >= v5)
    {

      return;
    }

    v4 = *(a1 + 64 + 8 * v9);
    ++v7;
    if (v4)
    {
      v7 = v9;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
}

uint64_t sub_245FEC2F4(uint64_t a1)
{
  v2 = v1;
  v57 = type metadata accessor for PhotogrammetrySession.Output(0);
  MEMORY[0x28223BE20](v57);
  v5 = &v52 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_245F8E624(&qword_27EE3A4B8, &unk_246097ED8);
  MEMORY[0x28223BE20](v6 - 8);
  v56 = &v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v52 - v9;
  v11 = type metadata accessor for PhotogrammetrySession.Request(0);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v52 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61[0] = 6;
  sub_24602883C(0, 1, v61, &v62);
  v58 = v62;
  v59 = v63;
  v60 = v64;
  v15 = OBJC_IVAR____TtC6CoreOC9PGManager_firstRequest;
  swift_beginAccess();
  sub_245F8E7A4(v2 + v15, v10, &qword_27EE3A4B8, &unk_246097ED8);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    v16 = sub_245F8E744(v10, &qword_27EE3A4B8, &unk_246097ED8);
LABEL_10:
    v29 = (*v2 + 464);
    v30 = *v29;
    v31 = (*v29)(v16);
    if (v31)
    {
      v33 = v32;
      ObjectType = swift_getObjectType();
      v35 = *(sub_245F8E624(&qword_27EE3A568, &qword_2460983E0) + 48);
      sub_245FFE868(a1, v5, type metadata accessor for PhotogrammetrySession.Request);
      *&v5[v35] = 0;
      swift_storeEnumTagMultiPayload();
      (*(v33 + 8))(v5, ObjectType, v33);
      swift_unknownObjectRelease();
      v31 = sub_245FFEA30(v5, type metadata accessor for PhotogrammetrySession.Output);
    }

    v36 = v30(v31);
    if (v36)
    {
      v38 = v37;
      v39 = swift_getObjectType();
      v40 = &v5[*(sub_245F8E624(&qword_27EE3A570, &qword_2460983E8) + 48)];
      sub_245FFE868(a1, v5, type metadata accessor for PhotogrammetrySession.Request);
      *v40 = v58;
      v41 = v60;
      v40[8] = v59;
      v40[9] = v41;
      swift_storeEnumTagMultiPayload();
      (*(v38 + 8))(v5, v39, v38);
      swift_unknownObjectRelease();
      v36 = sub_245FFEA30(v5, type metadata accessor for PhotogrammetrySession.Output);
    }

    v42 = v30(v36);
    if (v42)
    {
      v44 = v43;
      v45 = swift_getObjectType();
      v46 = *(sub_245F8E624(&qword_27EE3A568, &qword_2460983E0) + 48);
      sub_245FFE868(a1, v5, type metadata accessor for PhotogrammetrySession.Request);
      *&v5[v46] = 0x3FF0000000000000;
      swift_storeEnumTagMultiPayload();
      (*(v44 + 8))(v5, v45, v44);
      swift_unknownObjectRelease();
      v42 = sub_245FFEA30(v5, type metadata accessor for PhotogrammetrySession.Output);
    }

    result = v30(v42);
    if (result)
    {
      v48 = v47;
      v49 = swift_getObjectType();
      v50 = &v5[*(sub_245F8E624(&qword_27EE3A570, &qword_2460983E8) + 48)];
      sub_245FFE868(a1, v5, type metadata accessor for PhotogrammetrySession.Request);
      *v50 = v58;
      v51 = v60;
      v50[8] = v59;
      v50[9] = v51;
      swift_storeEnumTagMultiPayload();
      (*(v48 + 8))(v5, v49, v48);
      swift_unknownObjectRelease();
      return sub_245FFEA30(v5, type metadata accessor for PhotogrammetrySession.Output);
    }

    return result;
  }

  sub_245FFE800(v10, v14, type metadata accessor for PhotogrammetrySession.Request);
  if ((static PhotogrammetrySession.Request.== infix(_:_:)(v14, a1) & 1) == 0)
  {
    v16 = sub_245FFEA30(v14, type metadata accessor for PhotogrammetrySession.Request);
    goto LABEL_10;
  }

  v55 = a1;
  v17 = (*v2 + 464);
  v18 = *v17;
  v19 = (*v17)();
  if (v19)
  {
    v53 = v20;
    v54 = swift_getObjectType();
    v21 = *(sub_245F8E624(&qword_27EE3A568, &qword_2460983E0) + 48);
    sub_245FFE868(v55, v5, type metadata accessor for PhotogrammetrySession.Request);
    *&v5[v21] = 0x3FF0000000000000;
    swift_storeEnumTagMultiPayload();
    (*(v53 + 8))(v5, v54);
    swift_unknownObjectRelease();
    v19 = sub_245FFEA30(v5, type metadata accessor for PhotogrammetrySession.Output);
  }

  if ((v18)(v19))
  {
    v23 = v22;
    v24 = swift_getObjectType();
    v25 = &v5[*(sub_245F8E624(&qword_27EE3A570, &qword_2460983E8) + 48)];
    sub_245FFE868(v55, v5, type metadata accessor for PhotogrammetrySession.Request);
    *v25 = v58;
    v26 = v60;
    v25[8] = v59;
    v25[9] = v26;
    swift_storeEnumTagMultiPayload();
    (*(v23 + 8))(v5, v24, v23);
    swift_unknownObjectRelease();
    sub_245FFEA30(v5, type metadata accessor for PhotogrammetrySession.Output);
  }

  sub_245FFEA30(v14, type metadata accessor for PhotogrammetrySession.Request);
  v27 = v56;
  (*(v12 + 56))(v56, 1, 1, v11);
  swift_beginAccess();
  sub_245F97BAC(v27, v2 + v15, &qword_27EE3A4B8, &unk_246097ED8);
  return swift_endAccess();
}

void sub_245FECAB0()
{
  v1 = v0;
  v95 = type metadata accessor for PhotogrammetrySession.Output(0);
  MEMORY[0x28223BE20](v95);
  v94 = &v82 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = type metadata accessor for PhotogrammetrySession.Result(0);
  MEMORY[0x28223BE20](v98);
  v4 = &v82 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v82 - v6;
  MEMORY[0x28223BE20](v8);
  v10 = (&v82 - v9);
  v91 = sub_246091704();
  v11 = *(v91 - 8);
  MEMORY[0x28223BE20](v91);
  v90 = &v82 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for PhotogrammetrySession.Request(0);
  v102 = *(v13 - 8);
  MEMORY[0x28223BE20](v13 - 8);
  v103 = &v82 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v82 - v16;
  v89 = OBJC_IVAR____TtC6CoreOC9PGManager_pointCloud;
  if (!*(*(v1 + OBJC_IVAR____TtC6CoreOC9PGManager_pointCloud) + 16))
  {
    goto LABEL_32;
  }

  v88 = v1 + OBJC_IVAR____TtC6CoreOC9PGManager_orientedBoundsTransform;
  if (*(v1 + OBJC_IVAR____TtC6CoreOC9PGManager_orientedBoundsTransform + 64))
  {
    goto LABEL_35;
  }

  v18 = OBJC_IVAR____TtC6CoreOC9PGManager_posesBySample;
  swift_beginAccess();
  v87 = v18;
  if (!*(*(v1 + v18) + 16))
  {
    goto LABEL_33;
  }

  v19 = OBJC_IVAR____TtC6CoreOC9PGManager_cachedRequests;
  swift_beginAccess();
  v20 = *(v1 + v19);
  v101 = *(v20 + 16);
  if (!v101)
  {
LABEL_27:
    *(v1 + v19) = MEMORY[0x277D84F90];

    return;
  }

  v82 = v19;
  v96 = v7;
  v21 = OBJC_IVAR____TtC6CoreOC9PGManager_lensDistortionDataBySample;
  v22 = OBJC_IVAR____TtC6CoreOC9PGManager_intrinsicsBySample;
  v97 = OBJC_IVAR____TtC6CoreOC9PGManager_requestNum;
  v100 = v20 + ((*(v102 + 80) + 32) & ~*(v102 + 80));
  v23 = v20;

  v86 = v21;
  swift_beginAccess();
  v85 = v22;
  swift_beginAccess();
  v24 = 0;
  v83 = (v11 + 8);
  v84 = (v11 + 32);
  v92 = v10;
  v93 = v4;
  v99 = v23;
  while (v24 < *(v23 + 16))
  {
    sub_245FFE868(v100 + *(v102 + 72) * v24, v17, type metadata accessor for PhotogrammetrySession.Request);
    v25 = v103;
    sub_245FFE868(v17, v103, type metadata accessor for PhotogrammetrySession.Request);
    v26 = sub_245F8E624(&qword_27EE3A470, &qword_2460983C0);
    v27 = (*(*(v26 - 8) + 48))(v25, 3, v26);
    if (v27 > 1)
    {
      if (v27 == 2)
      {
        sub_245FEC2F4(v17);
        if (*(v88 + 64))
        {
          goto LABEL_34;
        }

        v38 = *(v88 + 16);
        v37 = *(v88 + 32);
        v39 = *(v88 + 48);
        v40 = *(v88 + 56);
        v41 = v96;
        *v96 = *v88;
        *(v41 + 16) = v38;
        *(v41 + 32) = v37;
        *(v41 + 48) = v39;
        *(v41 + 56) = v40;
        v42 = swift_storeEnumTagMultiPayload();
        if ((*(*v1 + 464))(v42))
        {
          v44 = v43;
          ObjectType = swift_getObjectType();
          v46 = *(sub_245F8E624(&qword_27EE3A550, &qword_2460983C8) + 48);
          v47 = v94;
          sub_245FFE868(v17, v94, type metadata accessor for PhotogrammetrySession.Request);
          v48 = v47 + v46;
          v4 = v93;
          sub_245FFE868(v41, v48, type metadata accessor for PhotogrammetrySession.Result);
          swift_storeEnumTagMultiPayload();
          v49 = ObjectType;
          v23 = v99;
          (*(v44 + 8))(v47, v49, v44);
          swift_unknownObjectRelease();
          v50 = v47;
          v10 = v92;
          sub_245FFEA30(v50, type metadata accessor for PhotogrammetrySession.Output);
        }

        v51 = *(v1 + v97);
        v52 = __OFSUB__(v51, 1);
        v53 = v51 - 1;
        if (v52)
        {
          goto LABEL_31;
        }

        *(v1 + v97) = v53;
        sub_245FE2E78();
        v54 = v96;
      }

      else
      {
        sub_245FEC2F4(v17);

        sub_245FEC06C(v66);
        v68._rawValue = v67;

        v69._rawValue = *(v1 + v87);
        v70._rawValue = *(v1 + v85);

        PhotogrammetrySession.Poses.init(posesBySample:intrinsicsBySample:lensDistortionDataBySample:)(v69, v70, v68);
        v71 = v107;
        *v4 = v106;
        *(v4 + 2) = v71;
        v72 = swift_storeEnumTagMultiPayload();
        if ((*(*v1 + 464))(v72))
        {
          v74 = v73;
          v75 = swift_getObjectType();
          v76 = *(sub_245F8E624(&qword_27EE3A550, &qword_2460983C8) + 48);
          v77 = v94;
          sub_245FFE868(v17, v94, type metadata accessor for PhotogrammetrySession.Request);
          v78 = v77 + v76;
          v4 = v93;
          sub_245FFE868(v93, v78, type metadata accessor for PhotogrammetrySession.Result);
          swift_storeEnumTagMultiPayload();
          (*(v74 + 8))(v77, v75, v74);
          swift_unknownObjectRelease();
          v79 = v77;
          v10 = v92;
          sub_245FFEA30(v79, type metadata accessor for PhotogrammetrySession.Output);
        }

        v80 = *(v1 + v97);
        v52 = __OFSUB__(v80, 1);
        v81 = v80 - 1;
        v23 = v99;
        if (v52)
        {
          goto LABEL_30;
        }

        *(v1 + v97) = v81;
        sub_245FE2E78();
        v54 = v4;
      }
    }

    else
    {
      if (!v27)
      {
        v28 = *(v103 + *(v26 + 48));
        v29 = (v103 + *(v26 + 64));
        v30 = v29[7];
        v104[6] = v29[6];
        v104[7] = v30;
        v105 = v29[8].i8[0];
        v31 = v29[3];
        v104[2] = v29[2];
        v104[3] = v31;
        v32 = v29[5];
        v104[4] = v29[4];
        v104[5] = v32;
        v33 = v29[1];
        v104[0] = *v29;
        v104[1] = v33;
        v35 = v90;
        v34 = v91;
        (*v84)(v90);
        LOBYTE(v106) = v28;
        v23 = v99;
        sub_245FEA360(v17, v36, &v106, v104);
        (*v83)(v35, v34);
        goto LABEL_7;
      }

      sub_245FEC2F4(v17);

      _s6CoreOC20ObjectCaptureSessionC5FrameV8FeedbackV8rawValueAGSi_tcfC_0(v55, &v106);
      *v10 = v106;
      v56 = swift_storeEnumTagMultiPayload();
      if ((*(*v1 + 464))(v56))
      {
        v58 = v57;
        v59 = swift_getObjectType();
        v60 = *(sub_245F8E624(&qword_27EE3A550, &qword_2460983C8) + 48);
        v61 = v94;
        sub_245FFE868(v17, v94, type metadata accessor for PhotogrammetrySession.Request);
        v62 = v61 + v60;
        v4 = v93;
        sub_245FFE868(v10, v62, type metadata accessor for PhotogrammetrySession.Result);
        swift_storeEnumTagMultiPayload();
        v63 = v59;
        v23 = v99;
        (*(v58 + 8))(v61, v63, v58);
        swift_unknownObjectRelease();
        sub_245FFEA30(v61, type metadata accessor for PhotogrammetrySession.Output);
      }

      v64 = *(v1 + v97);
      v52 = __OFSUB__(v64, 1);
      v65 = v64 - 1;
      if (v52)
      {
        goto LABEL_29;
      }

      *(v1 + v97) = v65;
      sub_245FE2E78();
      v54 = v10;
    }

    sub_245FFEA30(v54, type metadata accessor for PhotogrammetrySession.Result);
LABEL_7:
    sub_245FFEA30(v17, type metadata accessor for PhotogrammetrySession.Request);
    if (v101 == ++v24)
    {

      v19 = v82;
      goto LABEL_27;
    }
  }

  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
}

void sub_245FED478()
{
  v104 = type metadata accessor for PhotogrammetrySession.Output(0);
  MEMORY[0x28223BE20](v104);
  v103 = &v93 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = type metadata accessor for PhotogrammetrySession.Request(0);
  v99 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8);
  v96 = &v93 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = &v93 - v5;
  MEMORY[0x28223BE20](v7);
  v98 = &v93 - v8;
  v9 = sub_245F8E624(&qword_27EE3A538, &qword_2460983A8);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v93 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = (&v93 - v13);
  v15 = OBJC_IVAR____TtC6CoreOC9PGManager_requestByCPGRequest;
  swift_beginAccess();
  v93 = v15;
  v16 = *(v0 + v15);
  v19 = *(v16 + 64);
  v18 = v16 + 64;
  v17 = v19;
  v20 = 1 << *(*(v0 + v15) + 32);
  v21 = -1;
  if (v20 < 64)
  {
    v21 = ~(-1 << v20);
  }

  v22 = v21 & v17;
  v100 = *(v0 + v15);
  v101 = OBJC_IVAR____TtC6CoreOC9PGManager_baseFrameCPGRequest;
  v107 = OBJC_IVAR____TtC6CoreOC9PGManager_requestNum;
  v97 = OBJC_IVAR____TtC6CoreOC9PGManager_isAddSampleCancelled;
  v95 = OBJC_IVAR____TtC6CoreOC9PGManager_isProcessCancelled;
  v23 = (v20 + 63) >> 6;

  v24 = 0;
  v108 = v0;
  v105 = v11;
  v106 = v14;
  v102 = v6;
  v94 = v18;
  while (2)
  {
    if (v22)
    {
      v25 = v24;
      goto LABEL_16;
    }

    if (v23 <= v24 + 1)
    {
      v26 = v24 + 1;
    }

    else
    {
      v26 = v23;
    }

    v27 = v26 - 1;
    do
    {
      v25 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
LABEL_56:
        __break(1u);
LABEL_57:
        __break(1u);
LABEL_58:
        __break(1u);
LABEL_59:
        __break(1u);
        return;
      }

      if (v25 >= v23)
      {
        v59 = sub_245F8E624(&qword_27EE3A540, &unk_2460983B0);
        (*(*(v59 - 8) + 56))(v11, 1, 1, v59);
        v22 = 0;
        v24 = v27;
        goto LABEL_17;
      }

      v22 = *(v18 + 8 * v25);
      ++v24;
    }

    while (!v22);
    v24 = v25;
LABEL_16:
    v28 = __clz(__rbit64(v22));
    v22 &= v22 - 1;
    v29 = v28 | (v25 << 6);
    v30 = *(*(v100 + 48) + 8 * v29);
    v31 = v98;
    sub_245FFE868(*(v100 + 56) + *(v99 + 72) * v29, v98, type metadata accessor for PhotogrammetrySession.Request);
    v32 = sub_245F8E624(&qword_27EE3A540, &unk_2460983B0);
    v33 = *(v32 + 48);
    v34 = v105;
    *v105 = v30;
    v35 = v31;
    v11 = v34;
    sub_245FFE800(v35, &v34[v33], type metadata accessor for PhotogrammetrySession.Request);
    (*(*(v32 - 8) + 56))(v11, 0, 1, v32);
    v14 = v106;
LABEL_17:
    sub_245FC5914(v11, v14, &qword_27EE3A538, &qword_2460983A8);
    v36 = sub_245F8E624(&qword_27EE3A540, &unk_2460983B0);
    if ((*(*(v36 - 8) + 48))(v14, 1, v36) != 1)
    {
      v37 = v14;
      v38 = *v14;
      v39 = sub_245FFE800(v37 + *(v36 + 48), v6, type metadata accessor for PhotogrammetrySession.Request);
      v40 = *(v108 + v101);
      if (v40)
      {
        if (v38 == v40)
        {
          if (!sub_245FC9F0C(v6) || (v39 = sub_245FCA01C(v6), (v39 & 1) != 0))
          {
            sub_245FFEA30(v6, type metadata accessor for PhotogrammetrySession.Request);
            goto LABEL_5;
          }
        }
      }

      v41 = (*v108 + 464);
      v42 = *v41;
      if ((*v41)(v39))
      {
        v44 = v43;
        ObjectType = swift_getObjectType();
        v46 = sub_245F8E624(&qword_27EE3A548, &unk_246098FB0);
        v47 = v103;
        v48 = v103 + *(v46 + 48);
        sub_245FFE868(v102, v103, type metadata accessor for PhotogrammetrySession.Request);
        *v48 = 5;
        *(v48 + 8) = 1;
        swift_storeEnumTagMultiPayload();
        (*(v44 + 8))(v47, ObjectType, v44);
        swift_unknownObjectRelease();
        v18 = v94;
        sub_245FFEA30(v47, type metadata accessor for PhotogrammetrySession.Output);
      }

      v49 = *(v108 + v107);
      v50 = __OFSUB__(v49, 1);
      v51 = v49 - 1;
      if (v50)
      {
        goto LABEL_58;
      }

      *(v108 + v107) = v51;
      if (v51 < 0)
      {
        goto LABEL_59;
      }

      if (v51)
      {
        v6 = v102;
        sub_245FFEA30(v102, type metadata accessor for PhotogrammetrySession.Request);
        v11 = v105;
LABEL_5:
        v14 = v106;
      }

      else
      {

        sub_2460900AC();

        v14 = v106;
        if ((v110[0] & 1) != 0 || *(v108 + v95) == 1)
        {
          if (v42(v52))
          {
            v54 = v53;
            v55 = swift_getObjectType();
            v56 = v103;
            swift_storeEnumTagMultiPayload();
            v57 = v55;
            v14 = v106;
            (*(v54 + 8))(v56, v57, v54);
            swift_unknownObjectRelease();
            sub_245FFEA30(v56, type metadata accessor for PhotogrammetrySession.Output);
          }

          v58 = v108;
          v110[0] = 0;

          sub_2460901B8(v110);

          v6 = v102;
          sub_245FFEA30(v102, type metadata accessor for PhotogrammetrySession.Request);
          *(v58 + v95) = 0;
          v11 = v105;
        }

        else
        {
          if (v42(v52))
          {
            v61 = v60;
            v62 = swift_getObjectType();
            v63 = v103;
            swift_storeEnumTagMultiPayload();
            v64 = v62;
            v14 = v106;
            (*(v61 + 8))(v63, v64, v61);
            swift_unknownObjectRelease();
            sub_245FFEA30(v63, type metadata accessor for PhotogrammetrySession.Output);
          }

          v6 = v102;
          sub_245FFEA30(v102, type metadata accessor for PhotogrammetrySession.Request);
          v11 = v105;
        }
      }

      continue;
    }

    break;
  }

  v65 = OBJC_IVAR____TtC6CoreOC9PGManager_cachedRequests;
  v66 = v108;
  swift_beginAccess();
  v67 = *(v66 + v65);
  v68 = *(v67 + 16);
  if (v68)
  {
    v105 = v65;
    v69 = *(*v108 + 464);
    v70 = v99;
    v71 = v67 + ((*(v99 + 80) + 32) & ~*(v99 + 80));
    v102 = v67;

    v106 = *(v70 + 72);
    v72 = v96;
    while (1)
    {
      v73 = sub_245FFE868(v71, v72, type metadata accessor for PhotogrammetrySession.Request);
      if (v69(v73))
      {
        v75 = v74;
        v76 = swift_getObjectType();
        v77 = sub_245F8E624(&qword_27EE3A548, &unk_246098FB0);
        v78 = v103;
        v79 = v103 + *(v77 + 48);
        sub_245FFE868(v72, v103, type metadata accessor for PhotogrammetrySession.Request);
        *v79 = 5;
        *(v79 + 8) = 1;
        swift_storeEnumTagMultiPayload();
        (*(v75 + 8))(v78, v76, v75);
        swift_unknownObjectRelease();
        sub_245FFEA30(v78, type metadata accessor for PhotogrammetrySession.Output);
      }

      v80 = *(v108 + v107);
      v50 = __OFSUB__(v80, 1);
      v81 = v80 - 1;
      if (v50)
      {
        goto LABEL_56;
      }

      *(v108 + v107) = v81;
      if (v81 < 0)
      {
        goto LABEL_57;
      }

      if (!v81)
      {

        sub_2460900AC();

        if ((v109 & 1) != 0 || *(v108 + v95) == 1)
        {
          if (v69(v82))
          {
            v84 = v83;
            v85 = swift_getObjectType();
            v86 = v103;
            swift_storeEnumTagMultiPayload();
            (*(v84 + 8))(v86, v85, v84);
            swift_unknownObjectRelease();
            sub_245FFEA30(v86, type metadata accessor for PhotogrammetrySession.Output);
          }

          v87 = v108;
          v109 = 0;

          sub_2460901B8(&v109);

          v72 = v96;
          sub_245FFEA30(v96, type metadata accessor for PhotogrammetrySession.Request);
          *(v87 + v95) = 0;
          goto LABEL_40;
        }

        if (v69(v82))
        {
          v89 = v88;
          v90 = swift_getObjectType();
          v91 = v103;
          swift_storeEnumTagMultiPayload();
          (*(v89 + 8))(v91, v90, v89);
          swift_unknownObjectRelease();
          sub_245FFEA30(v91, type metadata accessor for PhotogrammetrySession.Output);
        }
      }

      v72 = v96;
      sub_245FFEA30(v96, type metadata accessor for PhotogrammetrySession.Request);
LABEL_40:
      v71 += v106;
      if (!--v68)
      {

        v65 = v105;
        break;
      }
    }
  }

  v92 = v108;
  *(v108 + v65) = MEMORY[0x277D84F90];

  *(v92 + v93) = MEMORY[0x277D84F98];
}

uint64_t sub_245FEDFE8()
{
  v1 = OBJC_IVAR____TtC6CoreOC9PGManager_session;
  swift_beginAccess();
  if (*(v0 + v1))
  {
    CPGSessionRelease();
  }

  if (*(v0 + OBJC_IVAR____TtC6CoreOC9PGManager_addSampleCallbackBundle))
  {
    CPGAddSampleCallbackBundleRelease();
  }

  if (*(v0 + OBJC_IVAR____TtC6CoreOC9PGManager_processingCallbackBundle))
  {
    CPGProcessingCallbackBundleRelease();
  }

  if (*(v0 + OBJC_IVAR____TtC6CoreOC9PGManager_finalizeInputCallbackBundle))
  {
    CPGFinalizeInputCallbackBundleRelease();
  }

  if (*(v0 + OBJC_IVAR____TtC6CoreOC9PGManager_sfmMap))
  {
    CPGSfmMapRelease();
  }

  result = *(v0 + OBJC_IVAR____TtC6CoreOC9PGManager_configuration + 16);
  if (result)
  {
    return CPGOutputModelOptionsRelease();
  }

  return result;
}

id sub_245FEE09C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v286 = a1;
  v291 = *MEMORY[0x277D85DE8];
  v6 = sub_245F8E624(&qword_27EE3A508, &unk_246098368);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = (&v253 - v7);
  v9 = sub_246091704();
  v10 = *(v9 - 8);
  v283 = v9;
  v284 = v10;
  MEMORY[0x28223BE20](v9);
  v12 = &v253 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v273 = &v253 - v14;
  MEMORY[0x28223BE20](v15);
  v270 = &v253 - v16;
  MEMORY[0x28223BE20](v17);
  v277 = (&v253 - v18);
  MEMORY[0x28223BE20](v19);
  v275 = &v253 - v20;
  MEMORY[0x28223BE20](v21);
  v279 = (&v253 - v22);
  MEMORY[0x28223BE20](v23);
  v267 = &v253 - v24;
  MEMORY[0x28223BE20](v25);
  v268 = &v253 - v26;
  MEMORY[0x28223BE20](v27);
  v281 = &v253 - v28;
  MEMORY[0x28223BE20](v29);
  v285 = &v253 - v30;
  v31 = sub_2460918F4();
  v32 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v272 = &v253 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v34);
  v36 = (&v253 - v35);
  MEMORY[0x28223BE20](v37);
  v39 = &v253 - v38;
  MEMORY[0x28223BE20](v40);
  v278 = (&v253 - v41);
  MEMORY[0x28223BE20](v42);
  v271 = &v253 - v43;
  MEMORY[0x28223BE20](v44);
  v274 = &v253 - v45;
  MEMORY[0x28223BE20](v46);
  v269 = &v253 - v47;
  MEMORY[0x28223BE20](v48);
  v276 = &v253 - v49;
  MEMORY[0x28223BE20](v50);
  v52 = &v253 - v51;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    v61 = sub_245FA31EC();
    (*(v32 + 16))(v52, v61, v31);
    v62 = sub_2460918D4();
    v63 = sub_246091FB4();
    if (os_log_type_enabled(v62, v63))
    {
      v64 = swift_slowAlloc();
      v65 = swift_slowAlloc();
      v289 = v65;
      *v64 = 136380675;
      *(v64 + 4) = sub_245F8D3C0(0xD00000000000002BLL, 0x80000002460A0BA0, &v289);
      _os_log_impl(&dword_245F8A000, v62, v63, "Backend Manager.%{private}s failed to capture the instance!", v64, 0xCu);
      sub_245F8E6F4(v65);
      MEMORY[0x24C1989D0](v65, -1, -1);
      MEMORY[0x24C1989D0](v64, -1, -1);
    }

    (*(v32 + 8))(v52, v31);
    return CPGOutputRelease();
  }

  v54 = Strong;
  v282 = v31;
  v280 = v32;
  if (*(Strong + OBJC_IVAR____TtC6CoreOC9PGManager_isClosed))
  {
    v55 = sub_245FA31EC();
    v56 = v280;
    v57 = v282;
    (*(v280 + 16))(v39, v55, v282);
    v58 = sub_2460918D4();
    v59 = sub_246091FB4();
    if (os_log_type_enabled(v58, v59))
    {
      v60 = swift_slowAlloc();
      *v60 = 0;
      _os_log_impl(&dword_245F8A000, v58, v59, "Can't copy to URL. Backend manager is closed.", v60, 2u);
      MEMORY[0x24C1989D0](v60, -1, -1);
    }

    else
    {
    }

    (*(v56 + 8))(v39, v57);
    return CPGOutputRelease();
  }

  v66 = swift_allocObject();
  *(v66 + 16) = 1;
  v67 = sub_246091614();
  v68 = sub_246091654();
  v266 = v54;
  if ((v68 & 1) == 0)
  {
    if (*(v67 + 16))
    {
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        v69 = *(v67 + 16);
        if (v69)
        {
LABEL_12:
          *(v67 + 16) = v69 - 1;

          goto LABEL_13;
        }

LABEL_96:
        __break(1u);
        goto LABEL_97;
      }
    }

    else
    {
      __break(1u);
    }

    v67 = sub_245FFBC54(v67);
    v69 = *(v67 + 16);
    if (v69)
    {
      goto LABEL_12;
    }

    goto LABEL_96;
  }

LABEL_13:
  v264 = a3;
  v265 = a4;
  v70 = objc_opt_self();
  v263 = v67;
  v71 = sub_246091DB4();
  v72 = [v70 pathWithComponents_];

  v73 = v72;
  if (!v72)
  {
    sub_246091C04();
    v73 = sub_246091BD4();
  }

  sub_246091C04();
  sub_246091644();
  v74 = objc_opt_self();
  v75 = [v74 defaultManager];
  v76 = [v75 fileExistsAtPath_];

  if ((v76 & 1) == 0)
  {
    v77 = [v74 defaultManager];
    v78 = v285;
    v79 = sub_246091674();
    v289 = 0;
    v80 = [v77 createDirectoryAtURL:v79 withIntermediateDirectories:1 attributes:0 error:&v289];

    if (!v80)
    {
      v260 = v66;
      v105 = v289;

      v106 = sub_2460915D4();

      swift_willThrow();
      v107 = sub_245FA31EC();
      v108 = v280;
      (*(v280 + 16))(v36, v107, v282);
      v110 = v283;
      v109 = v284;
      (*(v284 + 16))(v12, v78, v283);
      v111 = sub_2460918D4();
      v112 = sub_246091FB4();
      if (os_log_type_enabled(v111, v112))
      {
        v113 = swift_slowAlloc();
        v279 = swift_slowAlloc();
        v289 = v279;
        *v113 = 141558275;
        *(v113 + 4) = 1752392040;
        *(v113 + 12) = 2081;
        v114 = sub_2460916F4();
        v281 = v106;
        v115 = v109;
        v117 = v116;
        v118 = *(v115 + 8);
        v118(v12, v110);
        v119 = sub_245F8D3C0(v114, v117, &v289);

        *(v113 + 14) = v119;
        _os_log_impl(&dword_245F8A000, v111, v112, "Failed to create directory = %{private,mask.hash}s", v113, 0x16u);
        v120 = v279;
        sub_245F8E6F4(v279);
        MEMORY[0x24C1989D0](v120, -1, -1);
        MEMORY[0x24C1989D0](v113, -1, -1);

        (*(v108 + 8))(v36, v282);
        v118(v285, v283);
      }

      else
      {

        v132 = *(v109 + 8);
        v132(v12, v110);
        (*(v108 + 8))(v36, v282);
        v132(v78, v110);
      }

      v133 = v264;
      v134 = v260;
      *(v260 + 16) = 0;
      sub_245FF02E8(v266, v134, v133, v265);

      goto LABEL_85;
    }

    v81 = v289;
  }

  v82 = v266;
  v83 = (v266 + OBJC_IVAR____TtC6CoreOC9PGManager_configuration);
  sub_245FC8730(*(v266 + OBJC_IVAR____TtC6CoreOC9PGManager_configuration + 25), v8);
  v84 = sub_245F8E624(&qword_27EE3A468, &unk_246097A90);
  if ((*(*(v84 - 8) + 48))(v8, 1, v84) == 1)
  {
    (*(v284 + 8))(v285, v283);

    sub_245F8E744(v8, &qword_27EE3A508, &unk_246098368);
    *(v66 + 16) = 0;
LABEL_20:
    v85 = v82;
    v86 = v66;
    v87 = v264;
LABEL_83:
    v207 = v265;
LABEL_84:
    sub_245FF02E8(v85, v86, v87, v207);

LABEL_85:

    return CPGOutputRelease();
  }

  v257 = v83;
  v88 = *v8;
  v89 = *(v8 + *(v84 + 64));
  v90 = *(v284 + 32);
  v91 = v8 + *(v84 + 48);
  v262 = v284 + 32;
  v261 = v90;
  v90(v281, v91, v283);
  v258 = v88;
  v92 = [v88 rootNode];
  result = [objc_msgSend(v92 subtreeIterator)];
  v259 = result;
  if (result)
  {

    swift_unknownObjectRelease();
    v94 = sub_246091BD4();
    v95 = sub_246091BD4();
    type metadata accessor for PGManager(0);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v97 = objc_opt_self();
    v98 = [v97 bundleForClass_];
    v99 = [v98 infoDictionary];

    v253 = v92;
    v254 = v89;
    v256 = v94;
    v255 = v95;
    if (v99)
    {
      v100 = sub_246091B64();

      if (*(v100 + 16) && (v101 = sub_245F8D968(0x656C646E75424643, 0xEF6E6F6973726556), (v102 & 1) != 0))
      {
        sub_245F8E5C8(*(v100 + 56) + 32 * v101, &v289);

        if (swift_dynamicCast())
        {
          v103 = v287;
          v104 = v288;
LABEL_33:
          v121 = OCGitHash()();
          v289 = v103;
          v290 = v104;

          MEMORY[0x24C196640](46, 0xE100000000000000);

          MEMORY[0x24C196640](v121._countAndFlagsBits, v121._object);

          v123 = v289;
          v122 = v290;
          v124 = sub_246091BD4();
          v125 = [v97 bundleWithIdentifier_];

          v260 = v66;
          if (v125)
          {
            v126 = [v125 infoDictionary];

            if (v126)
            {
              v127 = sub_246091B64();

              if (*(v127 + 16) && (v128 = sub_245F8D968(0x656C646E75424643, 0xEF6E6F6973726556), (v129 & 1) != 0))
              {
                sub_245F8E5C8(*(v127 + 56) + 32 * v128, &v289);

                if (swift_dynamicCast())
                {
                  v131 = v287;
                  v130 = v288;
LABEL_43:
                  v289 = 0xD00000000000001BLL;
                  v290 = 0x80000002460A0D60;
                  MEMORY[0x24C196640](v123, v122);

                  MEMORY[0x24C196640](8254, 0xE200000000000000);

                  MEMORY[0x24C196640](60, 0xE100000000000000);

                  MEMORY[0x24C196640](v131, v130);

                  MEMORY[0x24C196640](62, 0xE100000000000000);

                  v135 = objc_allocWithZone(MEMORY[0x277D77878]);
                  v136 = sub_246091BD4();

                  v36 = &off_278E99000;
                  v137 = [v135 initWithString_];

                  v138 = v259;
                  v139 = v256;
                  v140 = v255;
                  [v259 setDictionaryMetadataWithKey:v256 dictionaryKey:v255 value:v137];

                  v141 = sub_246091BD4();
                  v142 = sub_246091BD4();
                  v143 = v257;
                  if (v257[25])
                  {
                    v144 = 256;
                  }

                  else
                  {
                    v144 = 0;
                  }

                  sub_245FD02E8(v265, *v257 | (*(v257 + 1) << 32), *(v257 + 2), *(v257 + 2), v144 | v257[24]);
                  v145 = objc_allocWithZone(MEMORY[0x277D77878]);
                  v146 = sub_246091BD4();

                  v147 = [v145 initWithString_];

                  [v138 setDictionaryMetadataWithKey:v141 dictionaryKey:v142 value:v147];
                  v148 = v258;
                  [v258 save];
                  a3 = v264;
                  if (sub_246091654())
                  {
                    v8 = v283;
                    v149 = v280;
                    if (v143[25] == 1)
                    {
                      QuadMeshObjAssetsURLs = CPGOutputGetQuadMeshObjAssetsURLs();
                    }

                    else
                    {
                      QuadMeshObjAssetsURLs = CPGOutputGetObjAssetsURLs();
                    }

                    v178 = v284;
                    v179 = v276;
                    v180 = v260;
                    if (QuadMeshObjAssetsURLs)
                    {
                      a3 = v149;
                      v36 = v284;
                      v181 = v260;
                      v182 = QuadMeshObjAssetsURLs;
                      objc_opt_self();
                      if (swift_dynamicCastObjCClass())
                      {
                        v289 = 0;
                        type metadata accessor for CFURL();
                        v183 = v182;
                        sub_246091DC4();
                        v279 = v183;

                        v54 = v289;
                        if (v289)
                        {
                          v66 = v181;
                          if (!(v289 >> 62))
                          {
                            v184 = *((v289 & 0xFFFFFFFFFFFFFF8) + 0x10);
                            v185 = v36;
                            if (v184)
                            {
LABEL_63:
                              v289 = MEMORY[0x277D84F90];
                              sub_245FAC7A8(0, v184 & ~(v184 >> 63), 0);
                              if (v184 < 0)
                              {
                                __break(1u);
                              }

                              v186 = 0;
                              v187 = v289;
                              v188 = v268;
                              do
                              {
                                if ((v54 & 0xC000000000000001) != 0)
                                {
                                  v189 = MEMORY[0x24C196C20](v186, v54);
                                }

                                else
                                {
                                  v189 = *(v54 + 8 * v186 + 32);
                                }

                                v190 = v189;
                                sub_2460916D4();

                                v289 = v187;
                                v192 = *(v187 + 2);
                                v191 = *(v187 + 3);
                                if (v192 >= v191 >> 1)
                                {
                                  sub_245FAC7A8((v191 > 1), v192 + 1, 1);
                                  v187 = v289;
                                }

                                ++v186;
                                *(v187 + 2) = v192 + 1;
                                v261(&v187[((*(v284 + 80) + 32) & ~*(v284 + 80)) + *(v284 + 72) * v192], v188, v8);
                              }

                              while (v184 != v186);

                              v232 = v264;
                              v233 = v280;
                              v185 = v284;
                              goto LABEL_100;
                            }

LABEL_99:
                            v233 = a3;

                            v187 = MEMORY[0x277D84F90];
                            v232 = v264;
LABEL_100:
                            v235 = sub_245FFDE2C(v187);

                            v236 = sub_245FFDE2C(v254);

                            sub_245FF0760(v236, v235);
                            v238 = v237;
                            MEMORY[0x28223BE20](v237);
                            *(&v253 - 2) = v232;
                            sub_245FF0BEC(sub_245FFECB4, (&v253 - 4), v238);

                            v239 = sub_245FA31EC();
                            v233[2](v269, v239, v282);
                            v240 = v267;
                            (v185[2])(v267, v232, v8);
                            v241 = sub_2460918D4();
                            v242 = sub_246091FC4();
                            if (os_log_type_enabled(v241, v242))
                            {
                              v243 = v240;
                              v244 = swift_slowAlloc();
                              v245 = swift_slowAlloc();
                              v289 = v245;
                              *v244 = 141558275;
                              *(v244 + 4) = 1752392040;
                              *(v244 + 12) = 2081;
                              v246 = sub_2460916F4();
                              v248 = v247;
                              v249 = v185[1];
                              (v249)(v243, v8);
                              v250 = sub_245F8D3C0(v246, v248, &v289);

                              *(v244 + 14) = v250;
                              _os_log_impl(&dword_245F8A000, v241, v242, "Save OBJ+USDA assets to directory = %{private,mask.hash}s", v244, 0x16u);
                              sub_245F8E6F4(v245);
                              v251 = v245;
                              v66 = v260;
                              MEMORY[0x24C1989D0](v251, -1, -1);
                              MEMORY[0x24C1989D0](v244, -1, -1);

                              (*(v280 + 8))(v269, v282);
                              (v249)(v281, v8);
                              (v249)(v285, v8);
                            }

                            else
                            {

                              v252 = v185[1];
                              (v252)(v240, v8);
                              (v233[1])(v269, v282);
                              (v252)(v281, v8);
                              (v252)(v285, v8);
                            }

LABEL_91:
                            v82 = v266;
                            goto LABEL_20;
                          }

LABEL_98:
                          v184 = sub_246092354();
                          v185 = v36;
                          if (v184)
                          {
                            goto LABEL_63;
                          }

                          goto LABEL_99;
                        }
                      }

                      else
                      {
                        v279 = v182;
                      }

                      v180 = v181;
                      v178 = v36;
                      v149 = a3;
                      a3 = v264;
                    }

                    else
                    {
                      v279 = 0;
                    }

                    v209 = sub_245FA31EC();
                    (*(v149 + 2))(v179, v209, v282);
                    v210 = sub_2460918D4();
                    v211 = sub_246091FB4();
                    if (os_log_type_enabled(v210, v211))
                    {
                      v212 = swift_slowAlloc();
                      *v212 = 0;
                      _os_log_impl(&dword_245F8A000, v210, v211, "Failed to get output OBJ assets!", v212, 2u);
                      v213 = v212;
                      v148 = v258;
                      MEMORY[0x24C1989D0](v213, -1, -1);
                    }

                    (*(v149 + 1))(v179, v282);
                    v214 = v178[1];
                    (v214)(v281, v8);
                    (v214)(v285, v8);
                    *(v180 + 16) = 0;
                    v215 = v266;
LABEL_82:
                    v85 = v215;
                    v86 = v180;
                    v87 = a3;
                    goto LABEL_83;
                  }

                  if (sub_2460915F4() == 2053403509 && v151 == 0xE400000000000000)
                  {

                    v54 = v284;
                    v152 = v278;
                    v66 = v279;
                    v8 = v277;
LABEL_53:
                    v154 = v275;
                    sub_246091684();
                    sub_2460916B4();
                    v155 = *(v54 + 8);
                    v156 = v283;
                    v284 = v54 + 8;
                    v277 = v155;
                    (v155)(v154, v283);
                    v157 = sub_246091674();
                    v158 = [v148 exportToURL_];

                    if (!v158)
                    {
                      v193 = sub_245FA31EC();
                      v194 = v280;
                      (*(v280 + 16))(v152, v193, v282);
                      v195 = v273;
                      (*(v54 + 16))(v273, v66, v156);
                      v196 = sub_2460918D4();
                      v197 = sub_246091FB4();
                      if (os_log_type_enabled(v196, v197))
                      {
                        v198 = swift_slowAlloc();
                        v199 = v195;
                        v200 = swift_slowAlloc();
                        v289 = v200;
                        *v198 = 141558275;
                        *(v198 + 4) = 1752392040;
                        *(v198 + 12) = 2081;
                        v201 = sub_2460916F4();
                        v203 = v202;
                        (v277)(v199, v156);
                        v204 = sub_245F8D3C0(v201, v203, &v289);
                        v205 = v260;

                        *(v198 + 14) = v204;
                        _os_log_impl(&dword_245F8A000, v196, v197, "Failed to compile USDA to USDC = %{private,mask.hash}s", v198, 0x16u);
                        sub_245F8E6F4(v200);
                        MEMORY[0x24C1989D0](v200, -1, -1);
                        MEMORY[0x24C1989D0](v198, -1, -1);

                        (*(v194 + 8))(v278, v282);
                        v206 = v277;
                        (v277)(v279, v156);
                        (v206)(v281, v156);
                        (v206)(v285, v156);
                        v207 = v265;
                      }

                      else
                      {

                        v208 = v277;
                        (v277)(v195, v156);
                        (*(v194 + 8))(v152, v282);
                        (v208)(v66, v156);
                        (v208)(v281, v156);
                        (v208)(v285, v156);
                        v207 = v265;
                        v205 = v260;
                      }

                      *(v205 + 16) = 0;
                      v85 = v266;
                      v86 = v205;
                      v87 = v264;
                      goto LABEL_84;
                    }

                    v159 = objc_allocWithZone(MEMORY[0x277D778A8]);
                    v160 = sub_246091674();
                    v161 = [v159 initSceneFromURL_];

                    v162 = v282;
                    if (v161)
                    {
                      v163 = sub_246091674();
                      [v161 saveAndCreateUSDZPackageWithURL_];

                      v164 = sub_245FA31EC();
                      v165 = v280;
                      (*(v280 + 16))(v274, v164, v162);
                      v166 = v283;
                      (*(v54 + 16))(v8, a3, v283);
                      v167 = sub_2460918D4();
                      v168 = sub_246091FC4();
                      if (os_log_type_enabled(v167, v168))
                      {
                        v169 = v8;
                        v170 = swift_slowAlloc();
                        v278 = swift_slowAlloc();
                        v289 = v278;
                        *v170 = 141558275;
                        *(v170 + 4) = 1752392040;
                        *(v170 + 12) = 2081;
                        v171 = sub_2460916F4();
                        v172 = v165;
                        v174 = v173;
                        v175 = v277;
                        (v277)(v169, v166);
                        v176 = sub_245F8D3C0(v171, v174, &v289);

                        *(v170 + 14) = v176;
                        _os_log_impl(&dword_245F8A000, v167, v168, "Save USD scene to USDZ = %{private,mask.hash}s", v170, 0x16u);
                        v177 = v278;
                        sub_245F8E6F4(v278);
                        MEMORY[0x24C1989D0](v177, -1, -1);
                        MEMORY[0x24C1989D0](v170, -1, -1);

                        (*(v172 + 8))(v274, v282);
                        (v175)(v279, v166);
                        (v175)(v281, v166);
                        (v175)(v285, v166);
                      }

                      else
                      {

                        v231 = v277;
                        (v277)(v8, v166);
                        (*(v165 + 8))(v274, v282);
                        (v231)(v279, v166);
                        (v231)(v281, v166);
                        (v231)(v285, v166);
                      }

                      v66 = v260;
                      goto LABEL_91;
                    }

                    v216 = sub_245FA31EC();
                    v217 = v271;
                    (*(v280 + 16))(v271, v216, v162);
                    v218 = v270;
                    v219 = v283;
                    (*(v54 + 16))(v270, v66, v283);
                    v220 = sub_2460918D4();
                    v221 = sub_246091FB4();
                    if (os_log_type_enabled(v220, v221))
                    {
                      v222 = swift_slowAlloc();
                      v223 = swift_slowAlloc();
                      v289 = v223;
                      *v222 = 141558275;
                      *(v222 + 4) = 1752392040;
                      *(v222 + 12) = 2081;
                      v224 = sub_2460916F4();
                      v226 = v225;
                      v227 = v218;
                      v228 = v277;
                      (v277)(v227, v219);
                      v229 = sub_245F8D3C0(v224, v226, &v289);
                      v180 = v260;

                      *(v222 + 14) = v229;
                      _os_log_impl(&dword_245F8A000, v220, v221, "Failed to load the compiled USDC (%{private,mask.hash}s scene for archival.", v222, 0x16u);
                      sub_245F8E6F4(v223);
                      v230 = v223;
                      a3 = v264;
                      MEMORY[0x24C1989D0](v230, -1, -1);
                      MEMORY[0x24C1989D0](v222, -1, -1);

                      (*(v280 + 8))(v271, v282);
                      (v228)(v279, v219);
                      (v228)(v281, v219);
                      (v228)(v285, v219);
                      v215 = v266;
                    }

                    else
                    {

                      v234 = v277;
                      (v277)(v218, v219);
                      (*(v280 + 8))(v217, v162);
                      (v234)(v66, v219);
                      (v234)(v281, v219);
                      (v234)(v285, v219);
                      v215 = v266;
                      v180 = v260;
                    }

                    *(v180 + 16) = 0;
                    goto LABEL_82;
                  }

                  v153 = sub_2460923E4();

                  v54 = v284;
                  v152 = v278;
                  v66 = v279;
                  v8 = v277;
                  if (v153)
                  {
                    goto LABEL_53;
                  }

LABEL_97:
                  __break(1u);
                  goto LABEL_98;
                }
              }

              else
              {
              }
            }
          }

          v130 = 0xE300000000000000;
          v131 = 4271950;
          goto LABEL_43;
        }
      }

      else
      {
      }
    }

    v104 = 0xE500000000000000;
    v103 = 0x302E302E30;
    goto LABEL_33;
  }

  __break(1u);
  return result;
}

uint64_t sub_245FF02E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v28 = a3;
  v29 = a4;
  v30 = a2;
  v32 = sub_2460919F4();
  v35 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v31 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_246091A64();
  v33 = *(v6 - 8);
  v34 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for PhotogrammetrySession.Request(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_246091704();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](v13);
  v17 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = *(a1 + OBJC_IVAR____TtC6CoreOC9PGManager_processQueue);
  (*(v14 + 16))(v17, v28, v13, v16);
  sub_245FFE868(v29, v12, type metadata accessor for PhotogrammetrySession.Request);
  v18 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v19 = (v15 + *(v10 + 80) + v18) & ~*(v10 + 80);
  v20 = swift_allocObject();
  v21 = v30;
  *(v20 + 16) = a1;
  *(v20 + 24) = v21;
  (*(v14 + 32))(v20 + v18, v17, v13);
  sub_245FFE800(v12, v20 + v19, type metadata accessor for PhotogrammetrySession.Request);
  aBlock[4] = sub_245FFEE68;
  aBlock[5] = v20;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_245F913A4;
  aBlock[3] = &unk_2858DF690;
  v22 = _Block_copy(aBlock);
  v23 = v27;

  sub_246091A14();
  v36 = MEMORY[0x277D84F90];
  sub_245FFF308(&qword_27EE3A380, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  sub_245F8E624(&qword_27EE39F38, &qword_246096680);
  sub_245FFD28C(&qword_27EE3A390, &qword_27EE39F38, &qword_246096680);
  v25 = v31;
  v24 = v32;
  sub_2460921A4();
  MEMORY[0x24C1969D0](0, v8, v25, v22);
  _Block_release(v22);

  (*(v35 + 8))(v25, v24);
  (*(v33 + 8))(v8, v34);
}

void sub_245FF0760(uint64_t a1, uint64_t a2)
{
  v4 = sub_246091704();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = v25 - v9;
  v12 = MEMORY[0x28223BE20](v11);
  v14 = v25 - v13;
  v15 = 0;
  v26 = a1;
  v27 = a2;
  v18 = *(a1 + 56);
  v17 = a1 + 56;
  v16 = v18;
  v19 = 1 << *(v17 - 24);
  v20 = -1;
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  v21 = v20 & v16;
  v22 = (v19 + 63) >> 6;
  v25[2] = v5 + 32;
  v25[3] = v5 + 16;
  v25[1] = v5 + 8;
  if ((v20 & v16) != 0)
  {
    do
    {
      v23 = v15;
LABEL_9:
      v24 = __clz(__rbit64(v21));
      v21 &= v21 - 1;
      (*(v5 + 16))(v14, *(v26 + 48) + *(v5 + 72) * (v24 | (v23 << 6)), v4, v12);
      (*(v5 + 32))(v7, v14, v4);
      sub_245FFA960(v10, v7);
      (*(v5 + 8))(v10, v4);
    }

    while (v21);
  }

  while (1)
  {
    v23 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v23 >= v22)
    {

      return;
    }

    v21 = *(v17 + 8 * v23);
    ++v15;
    if (v21)
    {
      v15 = v23;
      goto LABEL_9;
    }
  }

  __break(1u);
}

uint64_t sub_245FF097C()
{
  v20[1] = *MEMORY[0x277D85DE8];
  v19 = sub_246091704();
  v0 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v2 = &v18 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_246091664();
  sub_2460916A4();

  v3 = objc_opt_self();
  v4 = [v3 defaultManager];
  v5 = sub_246091674();
  v20[0] = 0;
  v6 = [v4 removeItemAtURL:v5 error:v20];

  if (v6)
  {
    v7 = v20[0];
  }

  else
  {
    v8 = v20[0];
    v9 = sub_2460915D4();

    swift_willThrow();
  }

  v10 = [v3 defaultManager];
  v11 = sub_246091674();
  v12 = sub_246091674();
  v20[0] = 0;
  v13 = [v10 copyItemAtURL:v11 toURL:v12 error:v20];

  if (v13)
  {
    v14 = *(v0 + 8);
    v15 = v20[0];
    return v14(v2, v19);
  }

  else
  {
    v17 = v20[0];
    sub_2460915D4();

    swift_willThrow();
    return (*(v0 + 8))(v2, v19);
  }
}

void sub_245FF0BEC(void (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v17 = a1;
  v19 = sub_246091704();
  v5 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a3 + 56;
  v9 = 1 << *(a3 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & *(a3 + 56);
  v12 = (v9 + 63) >> 6;
  v16 = v5 + 16;
  v18 = (v5 + 8);
  v20 = a3;

  v13 = 0;
  if (v11)
  {
    while (1)
    {
      v14 = v13;
      v15 = v19;
LABEL_9:
      (*(v5 + 16))(v7, *(v20 + 48) + *(v5 + 72) * (__clz(__rbit64(v11)) | (v14 << 6)), v15);
      v17(v7);
      if (v3)
      {
        break;
      }

      v11 &= v11 - 1;
      (*v18)(v7, v15);
      v13 = v14;
      if (!v11)
      {
        goto LABEL_5;
      }
    }

    (*v18)(v7, v15);
LABEL_13:
  }

  else
  {
LABEL_5:
    v15 = v19;
    while (1)
    {
      v14 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v14 >= v12)
      {
        goto LABEL_13;
      }

      v11 = *(v8 + 8 * v14);
      ++v13;
      if (v11)
      {
        goto LABEL_9;
      }
    }

    __break(1u);
  }
}

uint64_t sub_245FF0DE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = sub_2460919F4();
  v21 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_246091A64();
  v19 = *(v10 - 8);
  v20 = v10;
  MEMORY[0x28223BE20](v10);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  CPGAddSampleStreamProcessingOutputRetain();
  v13 = *(v4 + OBJC_IVAR____TtC6CoreOC9PGManager_addSampleQueue);
  v14 = swift_allocObject();
  swift_weakInit();
  v15 = swift_allocObject();
  v15[2] = a3;
  v15[3] = v14;
  v15[4] = a2;
  aBlock[4] = sub_245FFD650;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_245F913A4;
  aBlock[3] = &unk_2858DF140;
  v16 = _Block_copy(aBlock);
  v17 = v13;

  sub_246091A14();
  v22 = MEMORY[0x277D84F90];
  sub_245FFF308(&qword_27EE3A380, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  sub_245F8E624(&qword_27EE39F38, &qword_246096680);
  sub_245FFD28C(&qword_27EE3A390, &qword_27EE39F38, &qword_246096680);
  sub_2460921A4();
  MEMORY[0x24C1969D0](0, v12, v9, v16);
  _Block_release(v16);

  (*(v21 + 8))(v9, v7);
  (*(v19 + 8))(v12, v20);
}

uint64_t sub_245FF10F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_2460918F4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    if (*(Strong + OBJC_IVAR____TtC6CoreOC9PGManager_isClosed))
    {
      v10 = sub_245FA31EC();
      (*(v5 + 16))(v7, v10, v4);
      v11 = sub_2460918D4();
      v12 = sub_246091FC4();
      if (os_log_type_enabled(v11, v12))
      {
        v13 = swift_slowAlloc();
        *v13 = 0;
        _os_log_impl(&dword_245F8A000, v11, v12, "Skip add sample callback. Backend manager is closed.", v13, 2u);
        MEMORY[0x24C1989D0](v13, -1, -1);
      }

      else
      {
      }

      (*(v5 + 8))(v7, v4);
    }

    else
    {
      FlipRecommendation = CPGAddSampleStreamProcessingOutputGetFlipRecommendation();
      if ((*(*v9 + 440))())
      {
        v16 = v15;
        ObjectType = swift_getObjectType();
        (*(v16 + 8))(a3, FlipRecommendation == 1, ObjectType, v16);

        swift_unknownObjectRelease();
      }

      else
      {
      }
    }
  }

  return CPGAddSampleStreamProcessingOutputRelease();
}

uint64_t sub_245FF1388(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v79 = a1;
  v80 = a2;
  v77 = type metadata accessor for PhotogrammetrySession.Output(0);
  MEMORY[0x28223BE20](v77);
  v76 = &v74 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_245F8E624(&qword_27EE3A4B8, &unk_246097ED8);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v74 - v5;
  v7 = type metadata accessor for PhotogrammetrySession.Request(0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v75 = &v74 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v74 - v11;
  MEMORY[0x28223BE20](v13);
  v15 = &v74 - v14;
  MEMORY[0x28223BE20](v16);
  v78 = &v74 - v17;
  v18 = sub_2460918F4();
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v21 = &v74 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v24 = &v74 - v23;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v26 = Strong;
    if (*(Strong + OBJC_IVAR____TtC6CoreOC9PGManager_isClosed))
    {
      v27 = sub_245FA31EC();
      (*(v19 + 16))(v21, v27, v18);
      v28 = sub_2460918D4();
      v29 = sub_246091FB4();
      if (os_log_type_enabled(v28, v29))
      {
        v30 = swift_slowAlloc();
        *v30 = 0;
        _os_log_impl(&dword_245F8A000, v28, v29, "Skip progress callback. Backend manager is closed.", v30, 2u);
        MEMORY[0x24C1989D0](v30, -1, -1);
      }

      else
      {
      }

      (*(v19 + 8))(v21, v18);
      goto LABEL_18;
    }

    v36 = OBJC_IVAR____TtC6CoreOC9PGManager_requestByCPGRequest;
    swift_beginAccess();
    v37 = *(v26 + v36);
    v38 = v79;
    if (!*(v37 + 16) || (v39 = sub_245FF8528(v79), (v40 & 1) == 0))
    {

      goto LABEL_18;
    }

    sub_245FFE868(*(v37 + 56) + *(v8 + 72) * v39, v15, type metadata accessor for PhotogrammetrySession.Request);
    v41 = v15;
    v42 = v78;
    sub_245FFE800(v41, v78, type metadata accessor for PhotogrammetrySession.Request);
    CPGProgressGetFractionCompleted();
    v44 = v43;
    CPGProgressGetEstimatedRemainingTime();
    v46 = v45;
    ProcessingStep = CPGProgressGetProcessingStep();
    if (ProcessingStep >= 7)
    {
      v48 = 6;
    }

    else
    {
      v48 = 0x5040302010006uLL >> (8 * ProcessingStep);
    }

    v49 = OBJC_IVAR____TtC6CoreOC9PGManager_firstRequest;
    swift_beginAccess();
    sub_245F8E7A4(v26 + v49, v6, &qword_27EE3A4B8, &unk_246097ED8);
    if ((*(v8 + 48))(v6, 1, v7) == 1)
    {
      v50 = sub_245F8E744(v6, &qword_27EE3A4B8, &unk_246097ED8);
LABEL_26:
      v55 = v76;
LABEL_34:
      v59 = (*v26 + 464);
      v60 = *v59;
      if ((*v59)(v50))
      {
        v62 = v61;
        ObjectType = swift_getObjectType();
        v64 = *(sub_245F8E624(&qword_27EE3A568, &qword_2460983E0) + 48);
        sub_245FFE868(v78, v55, type metadata accessor for PhotogrammetrySession.Request);
        *(v55 + v64) = v44;
        swift_storeEnumTagMultiPayload();
        (*(v62 + 8))(v55, ObjectType, v62);
        swift_unknownObjectRelease();
        sub_245FFEA30(v55, type metadata accessor for PhotogrammetrySession.Output);
      }

      v81 = v48;
      v65 = sub_24602883C(*&v46, 0, &v81, &v82);
      v66 = v82;
      v67 = v83;
      v68 = v84;
      if (v60(v65))
      {
        v70 = v69;
        v71 = swift_getObjectType();
        v72 = v55 + *(sub_245F8E624(&qword_27EE3A570, &qword_2460983E8) + 48);
        v73 = v78;
        sub_245FFE868(v78, v55, type metadata accessor for PhotogrammetrySession.Request);
        *v72 = v66;
        *(v72 + 8) = v67;
        *(v72 + 9) = v68;
        swift_storeEnumTagMultiPayload();
        (*(v70 + 8))(v55, v71, v70);

        swift_unknownObjectRelease();
        sub_245FFEA30(v55, type metadata accessor for PhotogrammetrySession.Output);
      }

      else
      {

        v73 = v78;
      }

      sub_245FFEA30(v73, type metadata accessor for PhotogrammetrySession.Request);
      goto LABEL_18;
    }

    sub_245FFE800(v6, v12, type metadata accessor for PhotogrammetrySession.Request);
    if ((static PhotogrammetrySession.Request.== infix(_:_:)(v12, v42) & 1) == 0)
    {
      v50 = sub_245FFEA30(v12, type metadata accessor for PhotogrammetrySession.Request);
      goto LABEL_26;
    }

    v52 = *(v26 + OBJC_IVAR____TtC6CoreOC9PGManager_baseFrameCPGRequest);
    if (!v52 || v52 != v38)
    {
      v56 = v75;
      sub_245FFE800(v12, v75, type metadata accessor for PhotogrammetrySession.Request);
      v57 = sub_245F8E624(&qword_27EE3A470, &qword_2460983C0);
      if ((*(*(v57 - 8) + 48))(v56, 3, v57))
      {
        v50 = sub_245FFEA30(v56, type metadata accessor for PhotogrammetrySession.Request);
        v48 = 1;
      }

      else
      {
        v58 = sub_246091704();
        v50 = (*(*(v58 - 8) + 8))(v56, v58);
        v48 = 5;
      }

      v54 = 1.0;
      goto LABEL_33;
    }

    if (sub_245FC9F0C(v42))
    {
      v53 = sub_245FCA01C(v42);
      v50 = sub_245FFEA30(v12, type metadata accessor for PhotogrammetrySession.Request);
      v54 = 1.0;
      if ((v53 & 1) == 0)
      {
        goto LABEL_33;
      }
    }

    else
    {
      v50 = sub_245FFEA30(v12, type metadata accessor for PhotogrammetrySession.Request);
    }

    v46 = v46 + *(v26 + OBJC_IVAR____TtC6CoreOC9PGManager_modelFileRequestEstimatedTime);
    v54 = 0.9;
LABEL_33:
    v55 = v76;
    v44 = *(v26 + OBJC_IVAR____TtC6CoreOC9PGManager_adjustedProgressBase) + (v44 * (v54 - *(v26 + OBJC_IVAR____TtC6CoreOC9PGManager_adjustedProgressBase)));
    goto LABEL_34;
  }

  v31 = sub_245FA31EC();
  (*(v19 + 16))(v24, v31, v18);
  v32 = sub_2460918D4();
  v33 = sub_246091FB4();
  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v85[0] = v35;
    *v34 = 136380675;
    *(v34 + 4) = sub_245F8D3C0(0xD00000000000002BLL, 0x80000002460A0D80, v85);
    _os_log_impl(&dword_245F8A000, v32, v33, "Backend Manager.%{private}s failed to capture the instance!", v34, 0xCu);
    sub_245F8E6F4(v35);
    MEMORY[0x24C1989D0](v35, -1, -1);
    MEMORY[0x24C1989D0](v34, -1, -1);
  }

  (*(v19 + 8))(v24, v18);
LABEL_18:
  CPGRequestRelease();
  return CPGProgressRelease();
}

uint64_t sub_245FF1D14(uint64_t a1)
{
  v178 = a1;
  v247 = *MEMORY[0x277D85DE8];
  v2 = sub_2460918F4();
  v180 = *(v2 - 8);
  v181 = v2;
  MEMORY[0x28223BE20](v2);
  *&v179 = v152 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = v152 - v5;
  MEMORY[0x28223BE20](v7);
  v9 = v152 - v8;
  MEMORY[0x28223BE20](v10);
  v12 = v152 - v11;
  MEMORY[0x28223BE20](v13);
  v15 = v152 - v14;
  MEMORY[0x28223BE20](v16);
  v18 = v152 - v17;
  MEMORY[0x28223BE20](v19);
  v21 = v152 - v20;
  MEMORY[0x28223BE20](v22);
  v24 = v152 - v23;
  MEMORY[0x28223BE20](v25);
  v27 = v152 - v26;
  v28 = sub_245F8E624(&qword_27EE3A508, &unk_246098368);
  MEMORY[0x28223BE20](v28 - 8);
  if (*(v182 + OBJC_IVAR____TtC6CoreOC9PGManager_sfmMap))
  {
    v30 = v182;
    v31 = *(v182 + OBJC_IVAR____TtC6CoreOC9PGManager_reCenterTransform + 64);
    v233 = *(v182 + OBJC_IVAR____TtC6CoreOC9PGManager_reCenterTransform + 80);
    v32 = *(v182 + OBJC_IVAR____TtC6CoreOC9PGManager_reCenterTransform + 112);
    v234 = *(v182 + OBJC_IVAR____TtC6CoreOC9PGManager_reCenterTransform + 96);
    v235 = v32;
    v33 = *(v182 + OBJC_IVAR____TtC6CoreOC9PGManager_reCenterTransform);
    v229 = *(v182 + OBJC_IVAR____TtC6CoreOC9PGManager_reCenterTransform + 16);
    v34 = *(v182 + OBJC_IVAR____TtC6CoreOC9PGManager_reCenterTransform + 48);
    v230 = *(v182 + OBJC_IVAR____TtC6CoreOC9PGManager_reCenterTransform + 32);
    v231 = v34;
    v232 = v31;
    v236 = *(v182 + OBJC_IVAR____TtC6CoreOC9PGManager_reCenterTransform + 128);
    v228 = v33;
    v35 = sub_245F97DBC(&v228);
    v36 = v180;
    v37 = v181;
    v38 = v179;
    if (v35 != 1)
    {
      v39 = v30;
      if (!*(*(v30 + OBJC_IVAR____TtC6CoreOC9PGManager_pointCloud) + 16))
      {
        __break(1u);
LABEL_72:
        __break(1u);
LABEL_73:
        v144 = v36;

        v145 = sub_245FA31EC();
        v147 = v180;
        v146 = v181;
        v148 = v170.f64[0];
        (*(v180 + 16))(*&v170.f64[0], v145, v181);
        v149 = sub_2460918D4();
        v150 = sub_246091FB4();
        if (os_log_type_enabled(v149, v150))
        {
          v151 = swift_slowAlloc();
          *v151 = 0;
          _os_log_impl(&dword_245F8A000, v149, v150, "Failed to get bounding box in world coordinate.", v151, 2u);
          MEMORY[0x24C1989D0](v151, -1, -1);
        }

        (*(v147 + 8))(COERCE_FLOAT64_T(*&v148), v146);
        CPGSfmWorldTracksRelease();

        return 0;
      }

      if ((*(v30 + OBJC_IVAR____TtC6CoreOC9PGManager_orientedBoundsTransform + 64) & 1) == 0)
      {
        v40 = OBJC_IVAR____TtC6CoreOC9PGManager_posesBySample;
        swift_beginAccess();
        if (*(*(v39 + v40) + 16))
        {
          v41 = sub_245FA31EC();
          (*(v36 + 16))(COERCE_DOUBLE(*&v38), v41, v37);
          v42 = sub_2460918D4();
          v43 = sub_246091FC4();
          if (os_log_type_enabled(v42, v43))
          {
            v44 = swift_slowAlloc();
            *v44 = 0;
            _os_log_impl(&dword_245F8A000, v42, v43, "Base coordinate system built.", v44, 2u);
            MEMORY[0x24C1989D0](v44, -1, -1);
          }

          (*(v36 + 8))(COERCE_DOUBLE(*&v38), v37);
          return 1;
        }

        goto LABEL_72;
      }
    }

LABEL_80:
    __break(1u);
  }

  *&v177.f64[0] = v152 - v29;
  v179 = *&v6;
  v175 = v24;
  *&v176.f64[0] = v9;
  v173 = v21;
  *&v174.f64[0] = v12;
  v171 = OBJC_IVAR____TtC6CoreOC9PGManager_sfmMap;
  *&v172.f64[0] = v15;
  *&v170.f64[0] = v18;
  v46 = v182;
  v47 = v182 + OBJC_IVAR____TtC6CoreOC9PGManager_reCenterTransform;
  v48 = *(v182 + OBJC_IVAR____TtC6CoreOC9PGManager_reCenterTransform + 112);
  v220[6] = *(v182 + OBJC_IVAR____TtC6CoreOC9PGManager_reCenterTransform + 96);
  v220[7] = v48;
  v221 = *(v182 + OBJC_IVAR____TtC6CoreOC9PGManager_reCenterTransform + 128);
  v49 = *(v182 + OBJC_IVAR____TtC6CoreOC9PGManager_reCenterTransform + 48);
  v220[2] = *(v182 + OBJC_IVAR____TtC6CoreOC9PGManager_reCenterTransform + 32);
  v220[3] = v49;
  v50 = *(v182 + OBJC_IVAR____TtC6CoreOC9PGManager_reCenterTransform + 80);
  v220[4] = *(v182 + OBJC_IVAR____TtC6CoreOC9PGManager_reCenterTransform + 64);
  v220[5] = v50;
  v51 = *(v182 + OBJC_IVAR____TtC6CoreOC9PGManager_reCenterTransform + 16);
  v220[0] = *(v182 + OBJC_IVAR____TtC6CoreOC9PGManager_reCenterTransform);
  v220[1] = v51;
  result = sub_245F97DBC(v220);
  v52 = v180;
  if (result != 1)
  {
    goto LABEL_81;
  }

  v53 = OBJC_IVAR____TtC6CoreOC9PGManager_pointCloud;
  if (*(*(v46 + OBJC_IVAR____TtC6CoreOC9PGManager_pointCloud) + 16))
  {
    __break(1u);
LABEL_77:
    __break(1u);
LABEL_78:
    __break(1u);
LABEL_79:
    __break(1u);
    goto LABEL_80;
  }

  v54 = (v46 + OBJC_IVAR____TtC6CoreOC9PGManager_orientedBoundsTransform);
  if ((*(v46 + OBJC_IVAR____TtC6CoreOC9PGManager_orientedBoundsTransform + 64) & 1) == 0)
  {
LABEL_81:
    __break(1u);
LABEL_82:
    __break(1u);
    return result;
  }

  v55 = OBJC_IVAR____TtC6CoreOC9PGManager_posesBySample;
  swift_beginAccess();
  if (*(*(v46 + v55) + 16))
  {
    goto LABEL_77;
  }

  v169 = v53;
  SfmMap = CPGOutputGetSfmMap();
  if (!SfmMap)
  {
    goto LABEL_22;
  }

  v57 = SfmMap;
  v58 = CPGSfmMapCopyAllSampleIDs();
  if (!v58)
  {
    goto LABEL_22;
  }

  v59 = v58;
  objc_opt_self();
  if (!swift_dynamicCastObjCClass())
  {

    goto LABEL_22;
  }

  v168 = v27;
  v228.f64[0] = 0.0;
  sub_246091DC4();

  if (!*&v228.f64[0])
  {
LABEL_22:
    v63 = sub_245FA31EC();
    v64 = v179;
    v65 = v181;
    (*(v52 + 16))(COERCE_DOUBLE(*&v179), v63, v181);
    v66 = sub_2460918D4();
    v67 = sub_246091FB4();
    if (!os_log_type_enabled(v66, v67))
    {
LABEL_25:

LABEL_26:
      (*(v52 + 8))(COERCE_FLOAT64_T(*&v64), v65);
      return 0;
    }

    v68 = swift_slowAlloc();
    *v68 = 0;
    v69 = "Failed to get sfmMap or the sampleID array is empty.";
LABEL_24:
    _os_log_impl(&dword_245F8A000, v66, v67, v69, v68, 2u);
    MEMORY[0x24C1989D0](v68, -1, -1);
    goto LABEL_25;
  }

  v60 = *(*&v228.f64[0] + 16);
  if (!v60)
  {

    goto LABEL_22;
  }

  v179 = v228.f64[0];
  v167 = v60;
  v61 = *&v177.f64[0];
  sub_245FC8730(*(v46 + OBJC_IVAR____TtC6CoreOC9PGManager_configuration + 25), *&v177.f64[0]);
  v62 = sub_245F8E624(&qword_27EE3A468, &unk_246097A90);
  if ((*(*(v62 - 8) + 48))(v61, 1, v62) == 1)
  {

    sub_245F8E744(v61, &qword_27EE3A508, &unk_246098368);
LABEL_30:
    v75 = sub_245FA31EC();
    v64 = v176.f64[0];
    v65 = v181;
    (*(v52 + 16))(*&v176.f64[0], v75, v181);
    v66 = sub_2460918D4();
    v67 = sub_246091FB4();
    if (!os_log_type_enabled(v66, v67))
    {
      goto LABEL_25;
    }

    v68 = swift_slowAlloc();
    *v68 = 0;
    v69 = "Failed to get mesh in world coordinate.";
    goto LABEL_24;
  }

  v160 = v54;
  v70 = *v61;
  v178 = v57;
  v71 = *(v62 + 48);

  v72 = sub_246091704();
  v73 = v61 + v71;
  v36 = v70;
  v74 = v178;
  (*(*(v72 - 8) + 8))(v73, v72);
  sub_245FC9964(v74, v36, v222);
  v233 = v222[5];
  v234 = v222[6];
  v235 = v222[7];
  v229 = v222[1];
  v230 = v222[2];
  v231 = v222[3];
  v232 = v222[4];
  v236 = v223;
  v228 = v222[0];
  if (sub_245F97DBC(&v228) == 1)
  {

    goto LABEL_30;
  }

  v176 = v228;
  v177 = v229;
  v165 = v230;
  v166 = v231;
  v163 = v232;
  v164 = v233;
  v161 = v234;
  v162 = v235;
  v219 = 0;
  if (CPGSfmMapCopyTracksInsideBoundingBoxInWorldCoordinate() || (v81 = v219) == 0)
  {
    v76 = v36;

    v77 = sub_245FA31EC();
    v64 = v174.f64[0];
    v65 = v181;
    (*(v52 + 16))(*&v174.f64[0], v77, v181);
    v78 = sub_2460918D4();
    v79 = sub_246091FB4();
    if (os_log_type_enabled(v78, v79))
    {
      v80 = swift_slowAlloc();
      *v80 = 0;
      _os_log_impl(&dword_245F8A000, v78, v79, "Failed to copy tracks inside bounding box in world coordinate.", v80, 2u);
      MEMORY[0x24C1989D0](v80, -1, -1);
    }

    goto LABEL_26;
  }

  v159 = v55;
  Count = CPGSfmWorldTracksGetCount();
  if (Count < 1 || (v83 = Count, (Positions = CPGSfmWorldTracksGetPositions()) == 0) || (v85 = Positions, (Colors = CPGSfmWorldTracksGetColors()) == 0))
  {
    v107 = v36;

    v108 = sub_245FA31EC();
    v109 = v180;
    v110 = v181;
    v111 = v172.f64[0];
    (*(v180 + 16))(*&v172.f64[0], v108, v181);
    v112 = sub_2460918D4();
    v113 = sub_246091FB4();
    if (os_log_type_enabled(v112, v113))
    {
      v114 = swift_slowAlloc();
      *v114 = 0;
      _os_log_impl(&dword_245F8A000, v112, v113, "Failed to get positions or colors of world tracks.", v114, 2u);
      MEMORY[0x24C1989D0](v114, -1, -1);
    }

    (*(v109 + 8))(COERCE_FLOAT64_T(*&v111), v110);
    CPGSfmWorldTracksRelease();

    return 0;
  }

  v87 = Colors;
  v88 = CPGSfmMapCopyBoundingBox();
  if (!v88)
  {
    goto LABEL_73;
  }

  v152[2] = v81;
  v153 = v36;
  v152[1] = v88;
  CPGBoundingBoxGetTransform();
  v154 = v210;
  v155 = v211;
  v156 = v212;
  v157 = v213;
  v170 = v215;
  v158 = v214;
  v174 = v217;
  v172 = v216;
  v210 = v176;
  v211 = v177;
  v212 = v165;
  v213 = v166;
  v214 = v163;
  v215 = v164;
  v216 = v161;
  v217 = v162;
  sub_245F97D8C(&v210);
  v89 = v217;
  *(v47 + 96) = v216;
  *(v47 + 112) = v89;
  *(v47 + 128) = v218;
  v90 = v213;
  *(v47 + 32) = v212;
  *(v47 + 48) = v90;
  v91 = v215;
  *(v47 + 64) = v214;
  *(v47 + 80) = v91;
  v92 = v211;
  *v47 = v210;
  *(v47 + 16) = v92;
  v197[0] = vmlaq_laneq_f64(vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(v176, v154.f64[0]), v165, v154, 1), v163, v155.f64[0]), v161, v155, 1);
  v197[1] = vmlaq_laneq_f64(vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(v177, v154.f64[0]), v166, v154, 1), v164, v155.f64[0]), v162, v155, 1);
  v197[2] = vmlaq_laneq_f64(vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(v176, v156.f64[0]), v165, v156, 1), v163, v157.f64[0]), v161, v157, 1);
  v197[3] = vmlaq_laneq_f64(vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(v177, v156.f64[0]), v166, v156, 1), v164, v157.f64[0]), v162, v157, 1);
  v197[4] = vmlaq_laneq_f64(vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(v176, v158.f64[0]), v165, v158, 1), v163, v170.f64[0]), v161, v170, 1);
  v197[5] = vmlaq_laneq_f64(vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(v177, v158.f64[0]), v166, v158, 1), v164, v170.f64[0]), v162, v170, 1);
  v197[6] = vmlaq_laneq_f64(vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(v176, v172.f64[0]), v165, v172, 1), v163, v174.f64[0]), v161, v174, 1);
  v197[7] = vmlaq_laneq_f64(vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(v177, v172.f64[0]), v166, v172, 1), v164, v174.f64[0]), v162, v174, 1);
  *&v93 = sub_2460211BC(v197);
  v184 = 0;
  v94 = v160;
  *v160 = v93;
  v94[1] = v95;
  v94[2] = v96;
  v94[3] = v97;
  *(v94 + 64) = 0;
  v98 = MEMORY[0x277D84F90];
  do
  {
    v99 = *(v85 + 16);
    v100 = vaddq_f64(v162, vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(v177, *v85), v166, *v85, 1), v164, v99.n128_f64[0])).f64[0];
    v99.n128_u64[0] = vcvt_f32_f64(vaddq_f64(v161, vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(v176, *v85), v165, *v85, 1), v163, v99.n128_f64[0])));
    *&v100 = v100;
    v99.n128_u64[1] = LODWORD(v100);
    LODWORD(v100) = *v87;
    v101 = vmovl_u8(*&v100);
    v101.i16[3] = 255;
    sub_2460286C4(vuzp1_s8(*v101.i8, v99.n128_u64[0]).u32[0], &v189, v99);
    v174 = v189;
    v1.i32[0] = LODWORD(v190.f64[0]);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v98 = sub_245FF81A8(0, *(v98 + 2) + 1, 1, v98);
    }

    v103 = *(v98 + 2);
    v102 = *(v98 + 3);
    if (v103 >= v102 >> 1)
    {
      v98 = sub_245FF81A8((v102 > 1), v103 + 1, 1, v98);
    }

    v104 = vmovl_u8(v1).u64[0];
    *(v98 + 2) = v103 + 1;
    v105 = &v98[32 * v103];
    *(v105 + 2) = v174;
    *(v105 + 12) = vuzp1_s8(v104, v104).u32[0];
    ++v87;
    v85 += 32;
    --v83;
    v106 = v168;
  }

  while (v83);
  *(v46 + v169) = v98;

  v115 = OBJC_IVAR____TtC6CoreOC9PGManager_intrinsicsBySample;
  *&v172.f64[0] = OBJC_IVAR____TtC6CoreOC9PGManager_lensDistortionDataBySample;
  *&v174.f64[0] = v180 + 16;
  v180 += 8;
  v116 = 32;
  *&v117.f64[0] = 134349056;
  v170 = v117;
  v118 = v175;
  do
  {
    v120 = *(*&v179 + v116);
    if (CPGSfmMapIsSampleRegistered())
    {
      v206 = 0;
      if (CPGSfmMapGetCameraBySampleID() || !v206)
      {
        v121 = sub_245FA31EC();
        v122 = v173;
        (**&v174.f64[0])(v173, v121, v181);
        v123 = sub_2460918D4();
        v124 = sub_246091FB4();
        if (os_log_type_enabled(v123, v124))
        {
          v125 = swift_slowAlloc();
          *v125 = LODWORD(v170.f64[0]);
          *(v125 + 4) = v120;
          _os_log_impl(&dword_245F8A000, v123, v124, "Failed to get the camera of sample %{public}llu", v125, 0xCu);
          v126 = v125;
          v122 = v173;
          MEMORY[0x24C1989D0](v126, -1, -1);
        }

        (*v180)(v122, v181);
        v183 = 1;
        memset(v244, 0, 64);
        v244[64] = 1;
        if (v120 < 0)
        {
          goto LABEL_79;
        }

        swift_beginAccess();
        sub_245FFBAA4(v244, v120, v226);
        swift_endAccess();
        memset(v243, 0, 48);
        v243[48] = 1;
        swift_beginAccess();
        sub_245FFB8F8(v243, v120, v227);
        swift_endAccess();
        v208 = 0u;
        v209 = 0u;
        swift_beginAccess();
        sub_245FFB794(&v208, v120, &v198);
        sub_245F8E744(&v198, &qword_27EE3A510, &qword_246098378);
        swift_endAccess();
        v118 = v175;
        v106 = v168;
      }

      else
      {
        v132 = sub_245FA31EC();
        (**&v174.f64[0])(v118, v132, v181);
        v133 = sub_2460918D4();
        v134 = sub_246091FC4();
        if (os_log_type_enabled(v133, v134))
        {
          v135 = swift_slowAlloc();
          *v135 = LODWORD(v170.f64[0]);
          *(v135 + 4) = v120;
          _os_log_impl(&dword_245F8A000, v133, v134, "Populating the camera pose of sample %{public}llu", v135, 0xCu);
          MEMORY[0x24C1989D0](v135, -1, -1);
        }

        v118 = v175;
        result = (*v180)(v175, v181);
        v136 = v182;
        if (v120 < 0)
        {
          goto LABEL_82;
        }

        CPGCameraGetTransform();
        v189 = vmlaq_laneq_f64(vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(v176, v198.f64[0]), v165, v198, 1), v163, v199.f64[0]), v161, v199, 1);
        v190 = vmlaq_laneq_f64(vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(v177, v198.f64[0]), v166, v198, 1), v164, v199.f64[0]), v162, v199, 1);
        v191 = vmlaq_laneq_f64(vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(v176, v200.f64[0]), v165, v200, 1), v163, v201.f64[0]), v161, v201, 1);
        v192 = vmlaq_laneq_f64(vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(v177, v200.f64[0]), v166, v200, 1), v164, v201.f64[0]), v162, v201, 1);
        v193 = vmlaq_laneq_f64(vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(v176, v202.f64[0]), v165, v202, 1), v163, v203.f64[0]), v161, v203, 1);
        v194 = vmlaq_laneq_f64(vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(v177, v202.f64[0]), v166, v202, 1), v164, v203.f64[0]), v162, v203, 1);
        v195 = vmlaq_laneq_f64(vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(v176, v204.f64[0]), v165, v204, 1), v163, v205.f64[0]), v161, v205, 1);
        v196 = vmlaq_laneq_f64(vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(v177, v204.f64[0]), v166, v204, 1), v164, v205.f64[0]), v162, v205, 1);
        *&v137 = sub_2460211BC(&v189);
        v207 = 0;
        v241[0] = v137;
        v241[1] = v138;
        v241[2] = v139;
        v241[3] = v140;
        v242 = 0;
        v141 = v159;
        swift_beginAccess();
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v208.f64[0] = *(v136 + v141);
        *(v136 + v141) = 0x8000000000000000;
        sub_245FF9E14(v241, v120, isUniquelyReferenced_nonNull_native);
        *(v182 + v141) = v208.f64[0];
        swift_endAccess();
        CPGCameraGetIntrinsics();
        v188[0] = v198;
        v188[1] = v199;
        v188[2] = v200;
        v188[4] = v202;
        v188[5] = v203;
        v188[3] = v201;
        sub_2460211F0(v188, v185);
        v237[0] = v185[0];
        v237[1] = v185[1];
        v238 = v186;
        v239 = v187;
        v240 = 0;
        swift_beginAccess();
        v143 = swift_isUniquelyReferenced_nonNull_native();
        v208.f64[0] = *(v182 + v115);
        *(v182 + v115) = 0x8000000000000000;
        sub_245FF9CC0(v237, v120, v143);
        *(v182 + v115) = v208.f64[0];
        swift_endAccess();
        sub_245FF31BC(v120, &v208);
        if (*&v208.f64[1])
        {
          *&v199.f64[1] = &type metadata for LensDistortionData;
          v198 = v208;
        }

        else
        {
          v198 = 0uLL;
          v199.f64[0] = 0.0;
          *&v199.f64[1] = 1;
        }

        v106 = v168;
        swift_beginAccess();
        sub_245FD48C8(&v198, v120);
        swift_endAccess();
      }
    }

    else
    {
      v127 = sub_245FA31EC();
      (**&v174.f64[0])(v106, v127, v181);
      v128 = sub_2460918D4();
      v129 = sub_246091FB4();
      if (os_log_type_enabled(v128, v129))
      {
        v130 = swift_slowAlloc();
        *v130 = LODWORD(v170.f64[0]);
        *(v130 + 4) = v120;
        _os_log_impl(&dword_245F8A000, v128, v129, "Sample %{public}llu is not registered.", v130, 0xCu);
        v131 = v130;
        v106 = v168;
        MEMORY[0x24C1989D0](v131, -1, -1);
      }

      (*v180)(v106, v181);
      LOBYTE(v206) = 1;
      memset(v246, 0, 64);
      v246[64] = 1;
      if (v120 < 0)
      {
        goto LABEL_78;
      }

      swift_beginAccess();
      sub_245FFBAA4(v246, v120, v224);
      swift_endAccess();
      memset(v245, 0, 48);
      v245[48] = 1;
      swift_beginAccess();
      sub_245FFB8F8(v245, v120, v225);
      swift_endAccess();
      v208 = 0u;
      v209 = 0u;
      swift_beginAccess();
      sub_245FFB794(&v208, v120, &v198);
      sub_245F8E744(&v198, &qword_27EE3A510, &qword_246098378);
      swift_endAccess();
      v118 = v175;
    }

    v116 += 8;
    --v167;
    v119 = v182;
  }

  while (v167);

  *(v119 + v171) = v178;
  CPGSfmMapRetain();
  CPGBoundingBoxRelease();
  CPGSfmWorldTracksRelease();

  return 1;
}

uint64_t sub_245FF31BC@<X0>(uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = sub_2460918F4();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = CPGCameraCopyLensDistortionData();
  if (v9)
  {
    v10 = v9;
    CPGLensDistortionDataGetDistortionCenter();
    v12 = v11;
    LUTLength = CPGLensDistortionDataGetLUTLength();
    v14 = sub_245FB1254(0, LUTLength & ~(LUTLength >> 63), 0, MEMORY[0x277D84F90]);
    LUTData = CPGLensDistortionDataGetLUTData();
    if (LUTLength < 0)
    {
      __break(1u);
    }

    else
    {
      if (LUTLength)
      {
        v16 = *(v14 + 2);
        do
        {
          v17 = *LUTData;
          v18 = *(v14 + 3);
          if (v16 >= v18 >> 1)
          {
            v19 = LUTData;
            v14 = sub_245FB1254((v18 > 1), v16 + 1, 1, v14);
            LUTData = v19;
          }

          *(v14 + 2) = v16 + 1;
          *&v14[4 * v16 + 32] = v17;
          ++LUTData;
          ++v16;
          --LUTLength;
        }

        while (LUTLength);
      }

      LensDistortionData.init(center:radialLookupTable:)(v14, v26, v12);
      v20 = v26[1];
      *a3 = v26[0];
      a3[1] = v20;
      LUTData = v10;
    }

    return MEMORY[0x282153188](LUTData);
  }

  else
  {
    v21 = sub_245FA31EC();
    (*(v6 + 16))(v8, v21, v5);
    v22 = sub_2460918D4();
    v23 = sub_246091FB4();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 134217984;
      *(v24 + 4) = a2;
      _os_log_impl(&dword_245F8A000, v22, v23, "Lens distortion data is not available for the camera with sampleID = %ld", v24, 0xCu);
      MEMORY[0x24C1989D0](v24, -1, -1);
    }

    result = (*(v6 + 8))(v8, v5);
    *a3 = 0;
    a3[1] = 0;
  }

  return result;
}

void sub_245FF3444(uint64_t a1)
{
  v2 = v1;
  v26 = type metadata accessor for PhotogrammetrySession.Output(0);
  MEMORY[0x28223BE20](v26);
  v5 = (&v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = sub_245FFDFC8(a1);
  v7 = *(v6 + 2);
  if (v7)
  {
    v25 = a1;
    v27 = *(*v2 + 464);
    v8 = 32;
    do
    {
      v9 = *&v6[v8];
      if (v27())
      {
        v11 = v10;
        v12 = v2;
        ObjectType = swift_getObjectType();
        *v5 = v9;
        swift_storeEnumTagMultiPayload();
        v14 = ObjectType;
        v2 = v12;
        (*(v11 + 8))(v5, v14, v11);
        swift_unknownObjectRelease();
        sub_245FFEA30(v5, type metadata accessor for PhotogrammetrySession.Output);
      }

      v8 += 8;
      --v7;
    }

    while (v7);

    a1 = v25;
  }

  else
  {
  }

  v15 = sub_245FFE618(a1);
  if ((sub_245FCA1BC(v15) & 1) != 0 && (*(*v2 + 464))())
  {
    v17 = v16;
    v18 = swift_getObjectType();
    swift_storeEnumTagMultiPayload();
    (*(v17 + 8))(v5, v18, v17);
    swift_unknownObjectRelease();
    sub_245FFEA30(v5, type metadata accessor for PhotogrammetrySession.Output);
  }

  v19 = sub_245FCACB8(v15);

  if (v19)
  {
    if ((*(*v2 + 464))(v20))
    {
      v22 = v21;
      v23 = swift_getObjectType();
      swift_storeEnumTagMultiPayload();
      (*(v22 + 8))(v5, v23, v22);
      swift_unknownObjectRelease();
      sub_245FFEA30(v5, type metadata accessor for PhotogrammetrySession.Output);
    }
  }
}

uint64_t sub_245FF376C(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t), uint64_t a5, uint64_t a6, uint64_t a7)
{
  v25 = a7;
  v12 = sub_2460919F4();
  v28 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_246091A64();
  v26 = *(v15 - 8);
  v27 = v15;
  MEMORY[0x28223BE20](v15);
  v17 = &v24 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  CPGRequestRetain();
  a4(a3);
  v18 = *(v7 + OBJC_IVAR____TtC6CoreOC9PGManager_processQueue);
  v19 = swift_allocObject();
  swift_weakInit();
  v20 = swift_allocObject();
  v20[2] = a2;
  v20[3] = a3;
  v20[4] = v19;
  aBlock[4] = a6;
  aBlock[5] = v20;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_245F913A4;
  aBlock[3] = v25;
  v21 = _Block_copy(aBlock);
  v22 = v18;

  sub_246091A14();
  v29 = MEMORY[0x277D84F90];
  sub_245FFF308(&qword_27EE3A380, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  sub_245F8E624(&qword_27EE39F38, &qword_246096680);
  sub_245FFD28C(&qword_27EE3A390, &qword_27EE39F38, &qword_246096680);
  sub_2460921A4();
  MEMORY[0x24C1969D0](0, v17, v14, v21);
  _Block_release(v21);

  (*(v28 + 8))(v14, v12);
  (*(v26 + 8))(v17, v27);
}

uint64_t sub_245FF3A7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v182 = a2;
  v183 = a1;
  v201 = *MEMORY[0x277D85DE8];
  v3 = sub_2460919F4();
  v164 = *(v3 - 8);
  v165 = v3;
  MEMORY[0x28223BE20](v3);
  v162 = &v154 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v163 = sub_246091A64();
  v161 = *(v163 - 8);
  MEMORY[0x28223BE20](v163);
  v160 = &v154 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v159 = sub_246091A04();
  v157 = *(v159 - 8);
  MEMORY[0x28223BE20](v159);
  v155 = &v154 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_245F8E624(&qword_27EE3A498, &unk_246097EB8);
  MEMORY[0x28223BE20](v7 - 8);
  v170 = &v154 - v8;
  v9 = sub_246091704();
  v173 = *(v9 - 8);
  v174 = v9;
  MEMORY[0x28223BE20](v9);
  v158 = &v154 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v156 = v10;
  MEMORY[0x28223BE20](v11);
  v172 = &v154 - v12;
  v175 = type metadata accessor for PhotogrammetrySession.Output(0);
  MEMORY[0x28223BE20](v175);
  v176 = &v154 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_245F8E624(&qword_27EE3A4B8, &unk_246097ED8);
  MEMORY[0x28223BE20](v14 - 8);
  v171 = &v154 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v177 = &v154 - v17;
  v178 = type metadata accessor for PhotogrammetrySession.Request(0);
  v180 = *(v178 - 8);
  v18 = *(v180 + 64);
  MEMORY[0x28223BE20](v178);
  v166 = &v154 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v169 = &v154 - v20;
  MEMORY[0x28223BE20](v21);
  v167 = &v154 - v22;
  MEMORY[0x28223BE20](v23);
  v25 = &v154 - v24;
  MEMORY[0x28223BE20](v26);
  v181 = &v154 - v27;
  v28 = sub_2460918F4();
  v29 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v31 = &v154 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32);
  v34 = &v154 - v33;
  MEMORY[0x28223BE20](v35);
  v168 = &v154 - v36;
  MEMORY[0x28223BE20](v37);
  v39 = &v154 - v38;
  MEMORY[0x28223BE20](v40);
  v42 = &v154 - v41;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    v49 = sub_245FA31EC();
    (*(v29 + 16))(v42, v49, v28);
    v50 = sub_2460918D4();
    v51 = sub_246091FB4();
    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      v53 = swift_slowAlloc();
      *&v192 = v53;
      *v52 = 136380675;
      *(v52 + 4) = sub_245F8D3C0(0xD000000000000027, 0x80000002460A0B70, &v192);
      _os_log_impl(&dword_245F8A000, v50, v51, "Backend Manager.%{private}s failed to capture the instance!", v52, 0xCu);
      sub_245F8E6F4(v53);
      MEMORY[0x24C1989D0](v53, -1, -1);
      MEMORY[0x24C1989D0](v52, -1, -1);
    }

    (*(v29 + 8))(v42, v28);
    CPGRequestRelease();
    return CPGOutputRelease();
  }

  v179 = v29;
  if (*(Strong + OBJC_IVAR____TtC6CoreOC9PGManager_isClosed))
  {
    v44 = sub_245FA31EC();
    v45 = v179;
    (*(v179 + 16))(v31, v44, v28);
    v46 = sub_2460918D4();
    v47 = sub_246091FB4();
    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      *v48 = 0;
      _os_log_impl(&dword_245F8A000, v46, v47, "Skip output callback. Backend manager is closed.", v48, 2u);
      MEMORY[0x24C1989D0](v48, -1, -1);
    }

    else
    {
    }

    (*(v45 + 8))(v31, v28);
    CPGRequestRelease();
    return CPGOutputRelease();
  }

  v54 = OBJC_IVAR____TtC6CoreOC9PGManager_requestByCPGRequest;
  v55 = Strong;
  swift_beginAccess();
  v154 = v55;
  v56 = *(v55 + v54);
  v57 = v182;
  if (!*(v56 + 16) || (v58 = sub_245FF8528(v183), (v59 & 1) == 0))
  {
    v78 = sub_245FA31EC();
    v79 = v179;
    (*(v179 + 16))(v39, v78, v28);
    v80 = sub_2460918D4();
    v81 = sub_246091FB4();
    if (os_log_type_enabled(v80, v81))
    {
      v82 = swift_slowAlloc();
      *v82 = 0;
      _os_log_impl(&dword_245F8A000, v80, v81, "Resumed request handling is not implemented.", v82, 2u);
      MEMORY[0x24C1989D0](v82, -1, -1);
    }

    else
    {
    }

    (*(v79 + 8))(v39, v28);
    goto LABEL_69;
  }

  sub_245FFE868(*(v56 + 56) + *(v180 + 72) * v58, v25, type metadata accessor for PhotogrammetrySession.Request);
  sub_245FFE800(v25, v181, type metadata accessor for PhotogrammetrySession.Request);
  if (CPGOutputGetFailure())
  {
    Code = CPGProcessingFailureGetCode();
    v61 = sub_245FA31EC();
    v62 = v179;
    (*(v179 + 16))(v34, v61, v28);
    v63 = sub_2460918D4();
    v64 = sub_246091FB4();
    if (os_log_type_enabled(v63, v64))
    {
      v65 = swift_slowAlloc();
      *v65 = 67240192;
      *(v65 + 4) = Code;
      _os_log_impl(&dword_245F8A000, v63, v64, "Output error with code = %{public}d", v65, 8u);
      MEMORY[0x24C1989D0](v65, -1, -1);
    }

    v66 = (*(v62 + 8))(v34, v28);
    v67 = v181;
    if (!*(v154 + OBJC_IVAR____TtC6CoreOC9PGManager_sfmMap))
    {
      sub_245FED478();
      goto LABEL_29;
    }

    if ((*(*v154 + 464))(v66))
    {
      v69 = v68;
      v70 = Code;
      ObjectType = swift_getObjectType();
      v72 = sub_245F8E624(&qword_27EE3A548, &unk_246098FB0);
      v73 = v176;
      v74 = &v176[*(v72 + 48)];
      sub_245FFE868(v67, v176, type metadata accessor for PhotogrammetrySession.Request);
      *v74 = v70;
      v74[8] = 0;
      swift_storeEnumTagMultiPayload();
      (*(v69 + 8))(v73, ObjectType, v69);
      swift_unknownObjectRelease();
      sub_245FFEA30(v73, type metadata accessor for PhotogrammetrySession.Output);
    }

    v75 = *(v154 + OBJC_IVAR____TtC6CoreOC9PGManager_requestNum);
    v76 = __OFSUB__(v75, 1);
    v77 = v75 - 1;
    if (!v76)
    {
      *(v154 + OBJC_IVAR____TtC6CoreOC9PGManager_requestNum) = v77;
      sub_245FE2E78();
LABEL_29:
      v87 = v177;
      (*(v180 + 56))(v177, 1, 1, v178);
      swift_beginAccess();
      sub_245FD4674(v87, v183);
      swift_endAccess();

      v88 = v67;
LABEL_68:
      sub_245FFEA30(v88, type metadata accessor for PhotogrammetrySession.Request);
      goto LABEL_69;
    }

    __break(1u);
    goto LABEL_72;
  }

  v83 = OBJC_IVAR____TtC6CoreOC9PGManager_baseFrameCPGRequest;
  v84 = *(v154 + OBJC_IVAR____TtC6CoreOC9PGManager_baseFrameCPGRequest);
  if (v84 && v84 == v183)
  {
    v85 = v181;
    if (sub_245FC9F0C(v181))
    {
      v86 = sub_245FCA01C(v85);
    }

    else
    {
      v86 = 1;
    }

    v89 = v154;
    if ((sub_245FF1D14(v57) & 1) == 0)
    {
      sub_245FED478();
      *(v89 + OBJC_IVAR____TtC6CoreOC9PGManager_adjustedProgressBase) = 0;
      v122 = v177;
      (*(v180 + 56))(v177, 1, 1, v178);
      swift_beginAccess();
      sub_245FD4674(v122, v183);
      swift_endAccess();

      sub_245FFEA30(v181, type metadata accessor for PhotogrammetrySession.Request);
LABEL_69:
      CPGRequestRelease();
      return CPGOutputRelease();
    }

    sub_245FECAB0();
    if (v86)
    {
      *(v89 + OBJC_IVAR____TtC6CoreOC9PGManager_adjustedProgressBase) = 1063675494;
    }

    v90 = OBJC_IVAR____TtC6CoreOC9PGManager_isOneTimeOutputEmitted;
    if ((*(v89 + OBJC_IVAR____TtC6CoreOC9PGManager_isOneTimeOutputEmitted) & 1) == 0)
    {
      sub_245FF3444(v57);
      *(v89 + v90) = 1;
    }

    *(v89 + v83) = 0;
    if (v86)
    {
      v91 = v177;
      (*(v180 + 56))(v177, 1, 1, v178);
      swift_beginAccess();
      sub_245FD4674(v91, v183);
      swift_endAccess();

      v88 = v181;
      goto LABEL_68;
    }
  }

  v92 = OBJC_IVAR____TtC6CoreOC9PGManager_firstRequest;
  v93 = v154;
  swift_beginAccess();
  v94 = v93 + v92;
  v95 = v171;
  sub_245F8E7A4(v94, v171, &qword_27EE3A4B8, &unk_246097ED8);
  if ((*(v180 + 48))(v95, 1, v178) == 1)
  {
    sub_245F8E744(v95, &qword_27EE3A4B8, &unk_246097ED8);
    v96 = v181;
    v97 = v173;
  }

  else
  {
    v98 = v167;
    sub_245FFE800(v95, v167, type metadata accessor for PhotogrammetrySession.Request);
    v96 = v181;
    v99 = static PhotogrammetrySession.Request.== infix(_:_:)(v98, v181);
    sub_245FFEA30(v98, type metadata accessor for PhotogrammetrySession.Request);
    v97 = v173;
    if (v99)
    {
      v100 = v177;
      (*(v180 + 56))(v177, 1, 1, v178);
      v101 = v154;
      swift_beginAccess();
      sub_245F97BAC(v100, v101 + v92, &qword_27EE3A4B8, &unk_246097ED8);
      swift_endAccess();
      *(v101 + OBJC_IVAR____TtC6CoreOC9PGManager_adjustedProgressBase) = 0;
    }
  }

  v200 = 0;
  if (sub_245FCA01C(v96))
  {
    v200 = v57;
    v102 = v57;
    v103 = v174;
    v104 = v172;
    goto LABEL_54;
  }

  memmove(&v192, (v154 + OBJC_IVAR____TtC6CoreOC9PGManager_reCenterTransform), 0x81uLL);
  result = sub_245F97DBC(&v192);
  v103 = v174;
  v104 = v172;
  if (result != 1)
  {
    v184 = v192;
    v185 = v193;
    v186 = v194;
    v187 = v195;
    v188 = v196;
    v189 = v197;
    v190 = v198;
    v191 = v199;
    if (CPGOutputCreateWithTransform())
    {
      v106 = v96;
      v107 = sub_245FA31EC();
      v108 = v179;
      (*(v179 + 16))(v168, v107, v28);
      v109 = sub_2460918D4();
      v110 = sub_246091FB4();
      if (os_log_type_enabled(v109, v110))
      {
        v111 = swift_slowAlloc();
        *v111 = 0;
        _os_log_impl(&dword_245F8A000, v109, v110, "Backend Manager: Failed to transform backend output to base coordinate frame", v111, 2u);
        MEMORY[0x24C1989D0](v111, -1, -1);
      }

      v112 = (*(v108 + 8))(v168, v28);
      if ((*(*v154 + 464))(v112))
      {
        v114 = v113;
        v115 = swift_getObjectType();
        v116 = sub_245F8E624(&qword_27EE3A548, &unk_246098FB0);
        v117 = v176;
        v118 = &v176[*(v116 + 48)];
        sub_245FFE868(v106, v176, type metadata accessor for PhotogrammetrySession.Request);
        *v118 = 3;
        v118[8] = 1;
        swift_storeEnumTagMultiPayload();
        (*(v114 + 8))(v117, v115, v114);
        swift_unknownObjectRelease();
        sub_245FFEA30(v117, type metadata accessor for PhotogrammetrySession.Output);
      }

      v119 = *(v154 + OBJC_IVAR____TtC6CoreOC9PGManager_requestNum);
      v76 = __OFSUB__(v119, 1);
      v120 = v119 - 1;
      if (!v76)
      {
        *(v154 + OBJC_IVAR____TtC6CoreOC9PGManager_requestNum) = v120;
        sub_245FE2E78();
        v121 = v177;
        (*(v180 + 56))(v177, 1, 1, v178);
        swift_beginAccess();
        sub_245FD4674(v121, v183);
        swift_endAccess();

        v88 = v106;
        goto LABEL_68;
      }

LABEL_74:
      __break(1u);
    }

    v102 = v200;
LABEL_54:
    v124 = v169;
    v123 = v170;
    if (!v102)
    {
LABEL_72:
      __break(1u);
LABEL_73:
      __break(1u);
      goto LABEL_74;
    }

    sub_245FFE868(v96, v169, type metadata accessor for PhotogrammetrySession.Request);
    v125 = sub_245F8E624(&qword_27EE3A470, &qword_2460983C0);
    if ((*(*(v125 - 8) + 48))(v124, 3, v125))
    {
      (*(v97 + 56))(v123, 1, 1, v103);
      sub_245FFEA30(v124, type metadata accessor for PhotogrammetrySession.Request);
    }

    else
    {
      (*(v97 + 32))(v123, v124, v103);
      (*(v97 + 56))(v123, 0, 1, v103);
    }

    if ((*(v97 + 48))(v123, 1, v103) == 1)
    {
      v126 = sub_245F8E744(v123, &qword_27EE3A498, &unk_246097EB8);
    }

    else
    {
      v127 = *(v97 + 32);
      v127(v104, v123, v103);
      if (v200)
      {
        v171 = v200;
        CPGOutputRetain();
        sub_245F90360();
        v128 = *MEMORY[0x277D851C8];
        v175 = v127;
        v129 = v157;
        v130 = v155;
        v131 = v159;
        (*(v157 + 104))(v155, v128, v159);
        v176 = sub_246092084();
        (*(v129 + 8))(v130, v131);
        v179 = swift_allocObject();
        swift_weakInit();
        v132 = v158;
        v133 = v104;
        v134 = v174;
        (*(v97 + 16))(v158, v133, v174);
        sub_245FFE868(v181, v166, type metadata accessor for PhotogrammetrySession.Request);
        v135 = (*(v97 + 80) + 32) & ~*(v97 + 80);
        v136 = (v156 + *(v180 + 80) + v135) & ~*(v180 + 80);
        v137 = swift_allocObject();
        v138 = v179;
        *(v137 + 16) = v171;
        *(v137 + 24) = v138;
        v175(v137 + v135, v132, v134);
        sub_245FFE800(v166, v137 + v136, type metadata accessor for PhotogrammetrySession.Request);
        *&v194 = sub_245FFEC8C;
        *(&v194 + 1) = v137;
        *&v192 = MEMORY[0x277D85DD0];
        *(&v192 + 1) = 1107296256;
        *&v193 = sub_245F913A4;
        *(&v193 + 1) = &unk_2858DF618;
        v139 = _Block_copy(&v192);

        v140 = v160;
        sub_246091A14();
        *&v184 = MEMORY[0x277D84F90];
        sub_245FFF308(&qword_27EE3A380, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
        sub_245F8E624(&qword_27EE39F38, &qword_246096680);
        sub_245FFD28C(&qword_27EE3A390, &qword_27EE39F38, &qword_246096680);
        v141 = v162;
        v142 = v181;
        v143 = v165;
        sub_2460921A4();
        v144 = v176;
        MEMORY[0x24C1969D0](0, v140, v141, v139);
        _Block_release(v139);

        (*(v164 + 8))(v141, v143);
        (*(v161 + 8))(v140, v163);
        (*(v173 + 8))(v172, v174);

        goto LABEL_67;
      }

      v126 = (*(v97 + 8))(v104, v103);
    }

    if ((*(*v154 + 464))(v126))
    {
      v146 = v145;
      v147 = swift_getObjectType();
      v148 = sub_245F8E624(&qword_27EE3A548, &unk_246098FB0);
      v149 = v176;
      v150 = &v176[*(v148 + 48)];
      sub_245FFE868(v181, v176, type metadata accessor for PhotogrammetrySession.Request);
      *v150 = 3;
      v150[8] = 1;
      swift_storeEnumTagMultiPayload();
      (*(v146 + 8))(v149, v147, v146);
      swift_unknownObjectRelease();
      sub_245FFEA30(v149, type metadata accessor for PhotogrammetrySession.Output);
    }

    v151 = *(v154 + OBJC_IVAR____TtC6CoreOC9PGManager_requestNum);
    v76 = __OFSUB__(v151, 1);
    v152 = v151 - 1;
    if (v76)
    {
      goto LABEL_73;
    }

    *(v154 + OBJC_IVAR____TtC6CoreOC9PGManager_requestNum) = v152;
    sub_245FE2E78();
    v142 = v181;
LABEL_67:
    v153 = v177;
    (*(v180 + 56))(v177, 1, 1, v178);
    swift_beginAccess();
    sub_245FD4674(v153, v183);
    swift_endAccess();

    v88 = v142;
    goto LABEL_68;
  }

  __break(1u);
  return result;
}

uint64_t sub_245FF5240()
{
  v1 = sub_2460919F4();
  v14 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_246091A64();
  v12 = *(v4 - 8);
  v13 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v0 + OBJC_IVAR____TtC6CoreOC9PGManager_processQueue);
  v8 = swift_allocObject();
  swift_weakInit();
  aBlock[4] = sub_245FFD6AC;
  aBlock[5] = v8;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_245F913A4;
  aBlock[3] = &unk_2858DF208;
  v9 = _Block_copy(aBlock);
  v10 = v7;

  sub_246091A14();
  v15 = MEMORY[0x277D84F90];
  sub_245FFF308(&qword_27EE3A380, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  sub_245F8E624(&qword_27EE39F38, &qword_246096680);
  sub_245FFD28C(&qword_27EE3A390, &qword_27EE39F38, &qword_246096680);
  sub_2460921A4();
  MEMORY[0x24C1969D0](0, v6, v3, v9);
  _Block_release(v9);

  (*(v14 + 8))(v3, v1);
  (*(v12 + 8))(v6, v13);
}

uint64_t sub_245FF5520(uint64_t a1)
{
  v1 = sub_2460918F4();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v19 - v6;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    if (*(Strong + OBJC_IVAR____TtC6CoreOC9PGManager_isClosed))
    {
      v9 = sub_245FA31EC();
      (*(v2 + 16))(v4, v9, v1);
      v10 = sub_2460918D4();
      v11 = sub_246091FB4();
      if (os_log_type_enabled(v10, v11))
      {
        v12 = swift_slowAlloc();
        *v12 = 0;
        _os_log_impl(&dword_245F8A000, v10, v11, "Skip cancellation status callback. Backend manager is closed.", v12, 2u);
        MEMORY[0x24C1989D0](v12, -1, -1);
      }

      else
      {
      }

      return (*(v2 + 8))(v4, v1);
    }

    else
    {
      *(Strong + OBJC_IVAR____TtC6CoreOC9PGManager_isProcessCancelled) = 1;
      sub_245FED478();
    }
  }

  else
  {
    v13 = sub_245FA31EC();
    (*(v2 + 16))(v7, v13, v1);
    v14 = sub_2460918D4();
    v15 = sub_246091FB4();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v19 = v17;
      *v16 = 136380675;
      *(v16 + 4) = sub_245F8D3C0(0xD000000000000037, 0x80000002460A0B30, &v19);
      _os_log_impl(&dword_245F8A000, v14, v15, "Backend Manager.%{private}s failed to capture the instance!", v16, 0xCu);
      sub_245F8E6F4(v17);
      MEMORY[0x24C1989D0](v17, -1, -1);
      MEMORY[0x24C1989D0](v16, -1, -1);
    }

    return (*(v2 + 8))(v7, v1);
  }
}

uint64_t sub_245FF5848(uint64_t a1, uint64_t a2)
{
  v121 = *MEMORY[0x277D85DE8];
  v2 = sub_2460918F4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v105 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = v105 - v7;
  MEMORY[0x28223BE20](v9);
  v11 = v105 - v10;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    v18 = sub_245FA31EC();
    (*(v3 + 16))(v11, v18, v2);
    v19 = sub_2460918D4();
    v20 = sub_246091FB4();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      *&v120[0].f64[0] = v22;
      *v21 = 136380675;
      *(v21 + 4) = sub_245F8D3C0(0xD000000000000029, 0x80000002460A0B00, v120);
      _os_log_impl(&dword_245F8A000, v19, v20, "Backend Manager.%{private}s failed to capture the instance!", v21, 0xCu);
      sub_245F8E6F4(v22);
      MEMORY[0x24C1989D0](v22, -1, -1);
      MEMORY[0x24C1989D0](v21, -1, -1);
    }

    (*(v3 + 8))(v11, v2);
    return CPGUpdatedPosesRelease();
  }

  v13 = Strong;
  if (*(Strong + OBJC_IVAR____TtC6CoreOC9PGManager_isClosed))
  {
    v14 = sub_245FA31EC();
    (*(v3 + 16))(v5, v14, v2);
    v15 = sub_2460918D4();
    v16 = sub_246091FB4();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_245F8A000, v15, v16, "Skip pose update callback. Backend manager is closed.", v17, 2u);
      MEMORY[0x24C1989D0](v17, -1, -1);
    }

    else
    {
    }

    (*(v3 + 8))(v5, v2);
    return CPGUpdatedPosesRelease();
  }

  v23 = CPGUpdatedPosesCopySampleIDs();
  if (!v23)
  {
LABEL_18:
    if ((*(*v13 + 488))())
    {
      v36 = v35;
      ObjectType = swift_getObjectType();
      v38 = sub_245FFC558(MEMORY[0x277D84F90]);
      (*(v36 + 16))(v38, ObjectType, v36);
LABEL_67:

      swift_unknownObjectRelease();
      return CPGUpdatedPosesRelease();
    }

LABEL_69:

    return CPGUpdatedPosesRelease();
  }

  v24 = v23;
  objc_opt_self();
  if (!swift_dynamicCastObjCClass())
  {

    goto LABEL_18;
  }

  v120[0].f64[0] = 0.0;
  sub_246091DC4();

  if (!*&v120[0].f64[0])
  {
    goto LABEL_18;
  }

  v113 = v120[0].f64[0];
  v25 = sub_245FA31EC();
  (*(v3 + 16))(v8, v25, v2);
  v26 = sub_2460918D4();
  v27 = sub_246091FA4();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    *v28 = 0;
    _os_log_impl(&dword_245F8A000, v26, v27, "Received pose updates from mobileSfM.", v28, 2u);
    MEMORY[0x24C1989D0](v28, -1, -1);
  }

  (*(v3 + 8))(v8, v2);
  v29 = MEMORY[0x277D84F90];
  v112 = sub_245FFC558(MEMORY[0x277D84F90]);
  v30 = sub_245FFC558(v29);
  v116 = 0;
  v31 = v113;
  v32 = *(*&v113 + 16);
  v111 = v30;
  if (!v32)
  {
LABEL_59:

    if ((*(*v13 + 488))(v90))
    {
      v92 = v91;
      v93 = swift_getObjectType();
      (*(v92 + 16))(v112, v93, v92);

      v94 = swift_unknownObjectRelease();
    }

    else
    {
    }

    v95 = (*v13 + 512);
    v96 = *v95;
    if ((*v95)(v94))
    {
      v98 = v97;
      v99 = swift_getObjectType();
      (*(v98 + 8))(v111, v99, v98);

      v100 = swift_unknownObjectRelease();
    }

    else
    {
    }

    if (v96(v100))
    {
      v102 = v101;
      v103 = swift_getObjectType();
      (*(v102 + 16))(v29, v103, v102);
      goto LABEL_67;
    }

    goto LABEL_69;
  }

  v33 = 0;
  v34 = *&v113 + 32;
  v114 = *&v113 + 32;
  while (1)
  {
    if (v33 >= *(*&v31 + 16))
    {
      __break(1u);
LABEL_72:
      __break(1u);
LABEL_73:
      __break(1u);
LABEL_74:
      __break(1u);
LABEL_75:
      __break(1u);
LABEL_76:
      __break(1u);
LABEL_77:
      __break(1u);
LABEL_78:
      __break(1u);
    }

    v42 = *(v34 + 8 * v33);
    if (!CPGUpdatedPosesGetStateBySampleID())
    {
      if ((v116 - 1) >= 2)
      {
        if (v116 == 3)
        {
          if (v42 < 0)
          {
            goto LABEL_72;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v29 = sub_245FF82A8(0, *(v29 + 2) + 1, 1, v29, &qword_27EE3A0E8, &qword_24609ADA0);
          }

          v59 = *(v29 + 2);
          v58 = *(v29 + 3);
          if (v59 >= v58 >> 1)
          {
            v29 = sub_245FF82A8((v58 > 1), v59 + 1, 1, v29, &qword_27EE3A0E8, &qword_24609ADA0);
          }

          *(v29 + 2) = v59 + 1;
          *&v29[8 * v59 + 32] = v42;
          v34 = v114;
        }

        goto LABEL_22;
      }

      v119 = 0;
      if (!CPGUpdatedPosesCopyObjectTransformBySampleID() && v119)
      {
        if (v42 < 0)
        {
          goto LABEL_73;
        }

        v43 = v29;
        *&v106 = v119;
        CPGObjectTransformGetTransformMatrix();
        *&v44 = sub_2460211BC(v120);
        v107 = v44;
        v108 = v45;
        v109 = v46;
        v110 = v47;
        v48 = v112;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v118 = v48;
        v50 = sub_245FF8590(v42);
        v52 = *(v48 + 16);
        v53 = (v51 & 1) == 0;
        v54 = __OFADD__(v52, v53);
        v55 = v52 + v53;
        if (v54)
        {
          goto LABEL_75;
        }

        v56 = v51;
        if (*(v48 + 24) >= v55)
        {
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v89 = v50;
            sub_245FFA800();
            v50 = v89;
          }
        }

        else
        {
          sub_245FF9474(v55, isUniquelyReferenced_nonNull_native);
          v50 = sub_245FF8590(v42);
          if ((v56 & 1) != (v57 & 1))
          {
            goto LABEL_79;
          }
        }

        v29 = v43;
        v60 = v118;
        v34 = v114;
        v112 = v118;
        if (v56)
        {
          v61 = (v118[7] + (v50 << 6));
          v62 = v108;
          *v61 = v107;
          v61[1] = v62;
          v63 = v110;
          v61[2] = v109;
          v61[3] = v63;
        }

        else
        {
          v118[(v50 >> 6) + 8] |= 1 << v50;
          *(v60[6] + 8 * v50) = v42;
          v64 = (v60[7] + (v50 << 6));
          v65 = v108;
          *v64 = v107;
          v64[1] = v65;
          v66 = v110;
          v64[2] = v109;
          v64[3] = v66;
          v67 = v60[2];
          v54 = __OFADD__(v67, 1);
          v68 = v67 + 1;
          if (v54)
          {
            goto LABEL_77;
          }

          v60[2] = v68;
        }

        v31 = v113;
        CPGObjectTransformRelease();
      }

      v118 = 0;
      if (!CPGUpdatedPosesCopyCameraBySampleID())
      {
        if (v118)
        {
          break;
        }
      }
    }

LABEL_22:
    if (v32 == ++v33)
    {
      goto LABEL_59;
    }
  }

  *&v110 = v29;
  if (v42 < 0)
  {
    goto LABEL_74;
  }

  v105[1] = v118;
  CPGCameraGetTransform();
  *&v69 = sub_2460211BC(v117);
  v106 = v69;
  v107 = v70;
  v108 = v71;
  v109 = v72;
  v73 = v111;
  v74 = swift_isUniquelyReferenced_nonNull_native();
  v115 = v73;
  v76 = sub_245FF8590(v42);
  v77 = v73[2];
  v78 = (v75 & 1) == 0;
  v79 = v77 + v78;
  if (__OFADD__(v77, v78))
  {
    goto LABEL_76;
  }

  v80 = v75;
  if (v73[3] >= v79)
  {
    if ((v74 & 1) == 0)
    {
      sub_245FFA800();
    }

    goto LABEL_56;
  }

  sub_245FF9474(v79, v74);
  v81 = sub_245FF8590(v42);
  if ((v80 & 1) == (v82 & 1))
  {
    v76 = v81;
LABEL_56:
    v34 = v114;
    v83 = v115;
    v111 = v115;
    if (v80)
    {
      v39 = (v115[7] + (v76 << 6));
      v40 = v107;
      *v39 = v106;
      v39[1] = v40;
      v41 = v109;
      v39[2] = v108;
      v39[3] = v41;
    }

    else
    {
      v115[(v76 >> 6) + 8] |= 1 << v76;
      *(v83[6] + 8 * v76) = v42;
      v84 = (v83[7] + (v76 << 6));
      v85 = v107;
      *v84 = v106;
      v84[1] = v85;
      v86 = v109;
      v84[2] = v108;
      v84[3] = v86;
      v87 = v83[2];
      v54 = __OFADD__(v87, 1);
      v88 = v87 + 1;
      if (v54)
      {
        goto LABEL_78;
      }

      v83[2] = v88;
    }

    v29 = v110;
    v31 = v113;
    CPGCameraRelease();
    goto LABEL_22;
  }

LABEL_79:
  result = sub_246092424();
  __break(1u);
  return result;
}

uint64_t sub_245FF6288(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, __n128), uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = v6;
  v12 = sub_2460919F4();
  v27 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_246091A64();
  v25 = *(v15 - 8);
  v26 = v15;
  v16 = MEMORY[0x28223BE20](v15);
  v18 = &v25 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  a3(a2, v16);
  v19 = *(v10 + OBJC_IVAR____TtC6CoreOC9PGManager_addSampleQueue);
  v20 = swift_allocObject();
  swift_weakInit();
  v21 = swift_allocObject();
  *(v21 + 16) = a2;
  *(v21 + 24) = v20;
  aBlock[4] = a5;
  aBlock[5] = v21;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_245F913A4;
  aBlock[3] = a6;
  v22 = _Block_copy(aBlock);
  v23 = v19;

  sub_246091A14();
  v28 = MEMORY[0x277D84F90];
  sub_245FFF308(&qword_27EE3A380, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  sub_245F8E624(&qword_27EE39F38, &qword_246096680);
  sub_245FFD28C(&qword_27EE3A390, &qword_27EE39F38, &qword_246096680);
  sub_2460921A4();
  MEMORY[0x24C1969D0](0, v18, v14, v22);
  _Block_release(v22);

  (*(v27 + 8))(v14, v12);
  (*(v25 + 8))(v18, v26);
}

void sub_245FF6588(uint64_t a1, uint64_t a2)
{
  v117 = *MEMORY[0x277D85DE8];
  v3 = sub_2460918F4();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v103 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v103 - v8;
  MEMORY[0x28223BE20](v10);
  v12 = &v103 - v11;
  MEMORY[0x28223BE20](v13);
  v112 = &v103 - v14;
  MEMORY[0x28223BE20](v15);
  v17 = &v103 - v16;
  MEMORY[0x28223BE20](v18);
  v20 = &v103 - v19;
  MEMORY[0x28223BE20](v21);
  v23 = &v103 - v22;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    v32 = sub_245FA31EC();
    (*(v4 + 16))(v23, v32, v3);
    v33 = sub_2460918D4();
    v34 = sub_246091FB4();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = v4;
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v116 = v37;
      *v36 = 136380675;
      *(v36 + 4) = sub_245F8D3C0(0xD000000000000029, 0x80000002460A0AD0, &v116);
      _os_log_impl(&dword_245F8A000, v33, v34, "Backend Manager.%{private}s failed to capture the instance!", v36, 0xCu);
      sub_245F8E6F4(v37);
      MEMORY[0x24C1989D0](v37, -1, -1);
      MEMORY[0x24C1989D0](v36, -1, -1);

      (*(v35 + 8))(v23, v3);
    }

    else
    {

      (*(v4 + 8))(v23, v3);
    }

    goto LABEL_31;
  }

  if (*(Strong + OBJC_IVAR____TtC6CoreOC9PGManager_isClosed))
  {
    v25 = sub_245FA31EC();
    v26 = v4;
    (*(v4 + 16))(v6, v25, v3);
    v27 = sub_2460918D4();
    v28 = sub_246091FB4();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = v3;
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&dword_245F8A000, v27, v28, "Skip track update callback. Backend manager is closed.", v30, 2u);
      v31 = v30;
      v3 = v29;
      MEMORY[0x24C1989D0](v31, -1, -1);
    }

    else
    {
    }

    (*(v26 + 8))(v6, v3);
    goto LABEL_31;
  }

  v108 = v17;
  v114 = Strong;
  Count = CPGSfmWorldTracksGetCount();
  v39 = sub_245FA31EC();
  v40 = *(v4 + 16);
  if (Count < 1)
  {
    v78 = v4;
    v40(v9, v39, v3);
    v79 = sub_2460918D4();
    v80 = sub_246091FB4();
    if (os_log_type_enabled(v79, v80))
    {
      v81 = v3;
      v82 = swift_slowAlloc();
      *v82 = 0;
      _os_log_impl(&dword_245F8A000, v79, v80, "Failed to fetch non-empty mobile sfm point cloud.", v82, 2u);
      v83 = v82;
      v3 = v81;
      MEMORY[0x24C1989D0](v83, -1, -1);
    }

    else
    {
    }

    (*(v78 + 8))(v9, v3);
    goto LABEL_31;
  }

  v109 = v39;
  v110 = v40;
  v111 = v4 + 16;
  (v40)(v20);
  v41 = sub_2460918D4();
  v42 = sub_246091FC4();
  if (os_log_type_enabled(v41, v42))
  {
    v43 = v4;
    v44 = swift_slowAlloc();
    *v44 = 134349056;
    *(v44 + 4) = Count;
    _os_log_impl(&dword_245F8A000, v41, v42, "Fetched mobile sfm point cloud of size = %{public}ld", v44, 0xCu);
    v45 = v44;
    v4 = v43;
    MEMORY[0x24C1989D0](v45, -1, -1);
  }

  v48 = *(v4 + 8);
  v46 = v4 + 8;
  v47 = v48;
  v48(v20, v3);
  Positions = CPGSfmWorldTracksGetPositions();
  if (!Positions || (v50 = Positions, (Normals = CPGSfmWorldTracksGetNormals()) == 0) || (v52 = Normals, (Colors = CPGSfmWorldTracksGetColors()) == 0))
  {
    v110(v12, v109, v3);
    v75 = sub_2460918D4();
    v76 = sub_246091FB4();
    if (os_log_type_enabled(v75, v76))
    {
      v77 = swift_slowAlloc();
      *v77 = 0;
      _os_log_impl(&dword_245F8A000, v75, v76, "Failed to get positions/normals/colors of world tracks.", v77, 2u);
      MEMORY[0x24C1989D0](v77, -1, -1);
    }

    else
    {
    }

    v47(v12, v3);
    goto LABEL_31;
  }

  v54 = Colors;
  v104 = v47;
  v105 = v46;
  v107 = v3;
  v106 = a1;
  v113 = *(*v114 + 728);
  v55 = MEMORY[0x277D84F90];
  do
  {
    v56 = *v50;
    v57 = v113;
    v58 = v113();
    v59 = v50[1];
    v60 = v57();
    v61 = v50[2];
    v62 = v57();
    v115 = *v52;
    v63 = v52[1].f64[0];
    v64 = sub_246022028(*v54);
    v65 = v54 + 1;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v55 = sub_245FF83A4(0, *(v55 + 2) + 1, 1, v55);
    }

    v67 = *(v55 + 2);
    v66 = *(v55 + 3);
    if (v67 >= v66 >> 1)
    {
      v55 = sub_245FF83A4((v66 > 1), v67 + 1, 1, v55);
    }

    v68 = v56;
    v69 = v59;
    v70 = v61;
    *&v71 = v68 / v58;
    *(&v71 + 1) = v69 / v60;
    *(&v71 + 1) = COERCE_UNSIGNED_INT(v70 / v62);
    *&v72 = vcvt_f32_f64(v115);
    *&v73 = v63;
    *(&v72 + 1) = v73;
    *(v55 + 2) = v67 + 1;
    v74 = &v55[48 * v67 + 32];
    *v74 = v71;
    *(v74 + 16) = v72;
    *(v74 + 32) = v64;
    *(v74 + 36) = 0;
    v52 += 2;
    v50 += 4;
    --Count;
    v54 = v65;
  }

  while (Count);
  v116 = 0;

  v84 = OCDataBufferCreateWithIOSurface();

  if (v84)
  {

    v85 = v112;
    v86 = v107;
    v110(v112, v109, v107);
    v87 = sub_2460918D4();
    v88 = sub_246091FB4();
    if (os_log_type_enabled(v87, v88))
    {
      v89 = swift_slowAlloc();
      *v89 = 0;
      _os_log_impl(&dword_245F8A000, v87, v88, "Failed to convert world tracks to data buffer.", v89, 2u);
      MEMORY[0x24C1989D0](v89, -1, -1);
    }

    else
    {
    }

    v104(v85, v86);
LABEL_44:

LABEL_31:
    CPGSfmWorldTracksRelease();
    return;
  }

  v90 = v116;
  v91 = v107;
  v92 = v114;
  if (v116)
  {
    type metadata accessor for OCDataBuffer();
    v93 = v90;

    v94 = sub_246091194(v93);
    v95 = v108;
    v110(v108, v109, v91);
    v96 = sub_2460918D4();
    v97 = sub_246091FC4();
    if (os_log_type_enabled(v96, v97))
    {
      v98 = swift_slowAlloc();
      *v98 = 134349056;
      *(v98 + 4) = (*(*v94 + 96))();
      _os_log_impl(&dword_245F8A000, v96, v97, "Data buffer size of mobile sfm point cloud is %{public}ld", v98, 0xCu);
      MEMORY[0x24C1989D0](v98, -1, -1);
    }

    v99 = (v104)(v95, v107);
    if ((*(*v92 + 560))(v99))
    {
      v101 = v100;
      ObjectType = swift_getObjectType();
      (*(v101 + 8))(v94, ObjectType, v101);

      swift_unknownObjectRelease();
    }

    else
    {
    }

    goto LABEL_44;
  }

  __break(1u);
}

void sub_245FF70A8(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (CPGLocalizationUpdatesGetState() != 1 || !CPGLocalizationUpdatesGetObjectTransform())
  {
    if (!(*(*v5 + 488))())
    {
      return;
    }

    v17 = v16;
    ObjectType = swift_getObjectType();
    LOBYTE(v20[0]) = 1;
    v19.n128_u64[1] = 0;
    memset(v22, 0, sizeof(v22));
    v23 = 1;
    if ((a3 & 0x8000000000000000) == 0)
    {
      v19.n128_f64[0] = a1;
      (*(v17 + 8))(v22, a3, a5, ObjectType, v17, v19);
      goto LABEL_9;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (!(*(*v5 + 488))())
  {
    return;
  }

  v10 = v9;
  v11 = swift_getObjectType();
  CPGObjectTransformGetTransformMatrix();
  v12.n128_f64[0] = sub_2460211BC(v22);
  v20[0] = v12;
  v20[1] = v13;
  v20[2] = v14;
  v20[3] = v15;
  v21 = 0;
  if (a3 < 0)
  {
    goto LABEL_12;
  }

  v12.n128_f64[0] = a1;
  (*(v10 + 8))(v20, a3, a5, v11, v10, v12);
LABEL_9:
  swift_unknownObjectRelease();
}

uint64_t sub_245FF7238(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_2460919F4();
  v20 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_246091A64();
  v18 = *(v9 - 8);
  v19 = v9;
  MEMORY[0x28223BE20](v9);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  CPGFinalizeInputResultRetain();
  v12 = *(v3 + OBJC_IVAR____TtC6CoreOC9PGManager_addSampleQueue);
  v13 = swift_allocObject();
  swift_weakInit();
  v14 = swift_allocObject();
  v14[2] = a2;
  v14[3] = v13;
  v14[4] = a1;
  aBlock[4] = sub_245FFD734;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_245F913A4;
  aBlock[3] = &unk_2858DF2F8;
  v15 = _Block_copy(aBlock);
  v16 = v12;

  sub_246091A14();
  v21 = MEMORY[0x277D84F90];
  sub_245FFF308(&qword_27EE3A380, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  sub_245F8E624(&qword_27EE39F38, &qword_246096680);
  sub_245FFD28C(&qword_27EE3A390, &qword_27EE39F38, &qword_246096680);
  sub_2460921A4();
  MEMORY[0x24C1969D0](0, v11, v8, v15);
  _Block_release(v15);

  (*(v20 + 8))(v8, v6);
  (*(v18 + 8))(v11, v19);
}

uint64_t sub_245FF7548(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v39[4] = *MEMORY[0x277D85DE8];
  v3 = sub_2460918F4();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v39[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v39[-1] - v8;
  MEMORY[0x28223BE20](v10);
  v12 = &v39[-1] - v11;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v14 = Strong;
    v15 = *(Strong + OBJC_IVAR____TtC6CoreOC9PGManager_isClosed);
    v16 = sub_245FA31EC();
    v17 = *(v4 + 16);
    if (v15)
    {
      v17(v6, v16, v3);
      v18 = sub_2460918D4();
      v19 = sub_246091FB4();
      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        *v20 = 0;
        _os_log_impl(&dword_245F8A000, v18, v19, "Skip finalize input callback exited. Backend Manager is closed.", v20, 2u);
        MEMORY[0x24C1989D0](v20, -1, -1);
      }

      else
      {
      }

      (*(v4 + 8))(v6, v3);
    }

    else
    {
      v17(v9, v16, v3);
      v26 = sub_2460918D4();
      v27 = sub_246091FC4();
      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        *v28 = 0;
        _os_log_impl(&dword_245F8A000, v26, v27, "Finalize input Swift callback", v28, 2u);
        MEMORY[0x24C1989D0](v28, -1, -1);
      }

      (*(v4 + 8))(v9, v3);
      ErrorCode = CPGFinalizeInputResultGetErrorCode();
      v30 = ErrorCode;
      if (ErrorCode)
      {
        v31 = 0;
        v32 = 1;
      }

      else
      {
        v39[0] = 0;
        ErrorCode = CPGRequestCreateWithDetail();
        v31 = 0;
        v32 = ErrorCode != 0;
        if (!ErrorCode)
        {
          CPGSessionGetEstimatedProcessingTime();
          v31 = v33;
          ErrorCode = CPGRequestRelease();
        }
      }

      if ((*(*v14 + 536))(ErrorCode))
      {
        v35 = v34;
        ObjectType = swift_getObjectType();
        (*(v35 + 8))(v30 == 0, v31, v32, ObjectType, v35);

        swift_unknownObjectRelease();
      }

      else
      {
      }
    }
  }

  else
  {
    v21 = sub_245FA31EC();
    (*(v4 + 16))(v12, v21, v3);
    v22 = sub_2460918D4();
    v23 = sub_246091FB4();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v39[0] = v25;
      *v24 = 136380675;
      *(v24 + 4) = sub_245F8D3C0(0xD000000000000030, 0x80000002460A0A90, v39);
      _os_log_impl(&dword_245F8A000, v22, v23, "Backend Manager.%{private}s failed to capture the instance!", v24, 0xCu);
      sub_245F8E6F4(v25);
      MEMORY[0x24C1989D0](v25, -1, -1);
      MEMORY[0x24C1989D0](v24, -1, -1);
    }

    (*(v4 + 8))(v12, v3);
  }

  return CPGFinalizeInputResultRelease();
}

void sub_245FF79F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v37 = a4;
  v7 = sub_2460918F4();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for PhotogrammetrySession.Output(0);
  MEMORY[0x28223BE20](v11);
  v13 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for PhotogrammetrySession.Result(0);
  MEMORY[0x28223BE20](v14);
  v16 = &v37 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(a1 + OBJC_IVAR____TtC6CoreOC9PGManager_isClosed) & 1) == 0)
  {
    v21 = swift_beginAccess();
    if (*(a2 + 16) == 1)
    {
      v22 = sub_246091704();
      (*(*(v22 - 8) + 16))(v16, a3, v22);
      v23 = swift_storeEnumTagMultiPayload();
      if ((*(*a1 + 464))(v23))
      {
        v25 = v24;
        ObjectType = swift_getObjectType();
        v27 = *(sub_245F8E624(&qword_27EE3A550, &qword_2460983C8) + 48);
        sub_245FFE868(v37, v13, type metadata accessor for PhotogrammetrySession.Request);
        sub_245FFE868(v16, &v13[v27], type metadata accessor for PhotogrammetrySession.Result);
        swift_storeEnumTagMultiPayload();
        (*(v25 + 8))(v13, ObjectType, v25);
        swift_unknownObjectRelease();
        sub_245FFEA30(v13, type metadata accessor for PhotogrammetrySession.Output);
      }

      v28 = *(a1 + OBJC_IVAR____TtC6CoreOC9PGManager_requestNum);
      v29 = __OFSUB__(v28, 1);
      v30 = v28 - 1;
      if (!v29)
      {
        *(a1 + OBJC_IVAR____TtC6CoreOC9PGManager_requestNum) = v30;
        sub_245FE2E78();
        sub_245FFEA30(v16, type metadata accessor for PhotogrammetrySession.Result);
        return;
      }

      __break(1u);
    }

    else
    {
      if ((*(*a1 + 464))(v21))
      {
        v32 = v31;
        v33 = swift_getObjectType();
        v34 = &v13[*(sub_245F8E624(&qword_27EE3A548, &unk_246098FB0) + 48)];
        sub_245FFE868(v37, v13, type metadata accessor for PhotogrammetrySession.Request);
        *v34 = 5;
        v34[8] = 1;
        swift_storeEnumTagMultiPayload();
        (*(v32 + 8))(v13, v33, v32);
        swift_unknownObjectRelease();
        sub_245FFEA30(v13, type metadata accessor for PhotogrammetrySession.Output);
      }

      v35 = *(a1 + OBJC_IVAR____TtC6CoreOC9PGManager_requestNum);
      v29 = __OFSUB__(v35, 1);
      v36 = v35 - 1;
      if (!v29)
      {
        *(a1 + OBJC_IVAR____TtC6CoreOC9PGManager_requestNum) = v36;
        sub_245FE2E78();
        return;
      }
    }

    __break(1u);
    return;
  }

  v17 = sub_245FA31EC();
  (*(v8 + 16))(v10, v17, v7);
  v18 = sub_2460918D4();
  v19 = sub_246091FB4();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&dword_245F8A000, v18, v19, "Defer in copy fails. Backend manager is closed.", v20, 2u);
    MEMORY[0x24C1989D0](v20, -1, -1);
  }

  (*(v8 + 8))(v10, v7);
}

void *sub_245FF7EC4(void *result, int64_t a2, char a3, void *a4)
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

  sub_245F8E624(&qword_27EE3A578, &qword_2460983F0);
  v10 = *(type metadata accessor for PhotogrammetrySession.Request(0) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
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
  v15 = *(type metadata accessor for PhotogrammetrySession.Request(0) - 8);
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

char *sub_245FF809C(char *result, int64_t a2, char a3, char *a4)
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
    sub_245F8E624(&qword_27EE3A218, &qword_246098F60);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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

char *sub_245FF81A8(char *result, int64_t a2, char a3, char *a4)
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
    sub_245F8E624(&qword_27EE3A530, &qword_2460983A0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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
  v15 = 32 * v8;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[v15])
    {
      memmove(v13, v14, v15);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, v15);
  }

  return v10;
}

char *sub_245FF82A8(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    sub_245F8E624(a5, a6);
    v12 = swift_allocObject();
    v13 = j__malloc_size(v12);
    v14 = v13 - 32;
    if (v13 < 32)
    {
      v14 = v13 - 25;
    }

    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * (v14 >> 3);
  }

  else
  {
    v12 = MEMORY[0x277D84F90];
  }

  v15 = v12 + 32;
  v16 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v15 >= &v16[8 * v10])
    {
      memmove(v15, v16, 8 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v15, v16, 8 * v10);
  }

  return v12;
}

char *sub_245FF83A4(char *result, int64_t a2, char a3, char *a4)
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
    sub_245F8E624(&qword_27EE3A5D0, &qword_246098428);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[48 * v8])
    {
      memmove(v12, v13, 48 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 48 * v8);
  }

  return v10;
}

unint64_t sub_245FF84C0(char a1)
{
  sub_245FFE988();
  v1 = sub_246091B84();
  return sub_245FF85CC(a1, v1);
}

unint64_t sub_245FF8528(uint64_t a1)
{
  sub_246092504();
  MEMORY[0x24C196E90](a1);
  v2 = sub_246092544();
  return sub_245FF8694(a1, v2);
}

unint64_t sub_245FF85CC(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    sub_245FFE9DC();
    do
    {
      if (sub_246091BB4())
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_245FF8694(uint64_t a1, uint64_t a2)
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

uint64_t sub_245FF8700(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_245F8E624(&qword_27EE3A610, &unk_246098470);
  result = sub_246092374();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v4;
    v31 = v3;
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
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + 4 * v19);
      result = sub_2460924F4();
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_33:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 4 * v15) = v21;
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

    if (v30)
    {
      v29 = 1 << *(v5 + 32);
      if (v29 >= 64)
      {
        bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v29;
      }

      *(v5 + 16) = 0;
    }

    v3 = v31;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

uint64_t sub_245FF8964(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = type metadata accessor for PhotogrammetrySession.Request(0);
  v35 = *(v5 - 8);
  MEMORY[0x28223BE20](v5 - 8);
  v37 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  sub_245F8E624(&qword_27EE3A588, &qword_2460983F8);
  v36 = v4;
  result = sub_246092374();
  v9 = result;
  if (*(v7 + 16))
  {
    v34 = v2;
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
    v16 = result + 64;
    while (v14)
    {
      v18 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v21 = v18 | (v10 << 6);
      v22 = *(*(v7 + 48) + 8 * v21);
      v23 = *(v35 + 72);
      v24 = *(v7 + 56) + v23 * v21;
      if (v36)
      {
        sub_245FFE800(v24, v37, type metadata accessor for PhotogrammetrySession.Request);
      }

      else
      {
        sub_245FFE868(v24, v37, type metadata accessor for PhotogrammetrySession.Request);
      }

      sub_246092504();
      MEMORY[0x24C196E90](v22);
      result = sub_246092544();
      v25 = -1 << *(v9 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v16 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v16 + 8 * v27);
          if (v31 != -1)
          {
            v17 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v26) & ~*(v16 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      *(*(v9 + 48) + 8 * v17) = v22;
      result = sub_245FFE800(v37, *(v9 + 56) + v23 * v17, type metadata accessor for PhotogrammetrySession.Request);
      ++*(v9 + 16);
    }

    v19 = v10;
    while (1)
    {
      v10 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v10 >= v15)
      {
        break;
      }

      v20 = v11[v10];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v14 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v36 & 1) == 0)
    {

      v3 = v34;
      goto LABEL_34;
    }

    v32 = 1 << *(v7 + 32);
    v3 = v34;
    if (v32 >= 64)
    {
      bzero((v7 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v32;
    }

    *(v7 + 16) = 0;
  }

LABEL_34:
  *v3 = v9;
  return result;
}

uint64_t sub_245FF8CC0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_245F8E624(&qword_27EE3A518, &qword_246098388);
  result = sub_246092374();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v3;
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
    v14 = result + 64;
    while (v12)
    {
      v18 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v21 = v18 | (v8 << 6);
      v22 = *(*(v5 + 48) + 8 * v21);
      v23 = (*(v5 + 56) + 32 * v21);
      if (v4)
      {
        v24 = v23[1];
        v34 = *v23;
        v35 = v24;
      }

      else
      {
        sub_245F8E7A4(v23, &v34, &unk_27EE3AA00, &qword_246098380);
      }

      result = sub_2460924F4();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v22;
      v16 = (*(v7 + 56) + 32 * v15);
      v17 = v35;
      *v16 = v34;
      v16[1] = v17;
      ++*(v7 + 16);
    }

    v19 = v8;
    while (1)
    {
      v8 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v20 = v9[v8];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v12 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if (v4)
    {
      v32 = 1 << *(v5 + 32);
      if (v32 >= 64)
      {
        bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v32;
      }

      *(v5 + 16) = 0;
    }

    v3 = v33;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

uint64_t sub_245FF8F4C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_245F8E624(&qword_27EE3A520, &qword_246098390);
  result = sub_246092374();
  v7 = result;
  if (*(v5 + 16))
  {
    v34 = v4;
    v35 = v3;
    v36 = v5;
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
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = *(v5 + 56) + (v20 << 6);
      v22 = *(*(v5 + 48) + 8 * v20);
      v23 = *(v21 + 48);
      v24 = *(v21 + 32);
      v25 = *(v21 + 40);
      v37 = *(v21 + 16);
      v38 = *v21;
      result = sub_2460924F4();
      v26 = -1 << *(v7 + 32);
      v27 = result & ~v26;
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

LABEL_33:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v22;
      v16 = *(v7 + 56) + (v15 << 6);
      *v16 = v38;
      *(v16 + 16) = v37;
      *(v16 + 32) = v24;
      *(v16 + 40) = v25;
      *(v16 + 48) = v23;
      ++*(v7 + 16);
      v5 = v36;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_33;
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

    if (v34)
    {
      v33 = 1 << *(v5 + 32);
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

    v3 = v35;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

uint64_t sub_245FF91D8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_245F8E624(&qword_27EE3A528, &qword_246098398);
  result = sub_246092374();
  v7 = result;
  if (*(v5 + 16))
  {
    v31 = v4;
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
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = *(*(v5 + 48) + 8 * v20);
      v22 = *(v5 + 56) + 80 * v20;
      v34 = *(v22 + 32);
      v35 = *(v22 + 48);
      v36 = *(v22 + 64);
      v32 = *v22;
      v33 = *(v22 + 16);
      result = sub_2460924F4();
      v23 = -1 << *(v7 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v14 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v14 + 8 * v25);
          if (v29 != -1)
          {
            v15 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v24) & ~*(v14 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v21;
      v16 = *(v7 + 56) + 80 * v15;
      *(v16 + 32) = v34;
      *(v16 + 48) = v35;
      *(v16 + 64) = v36;
      *v16 = v32;
      *(v16 + 16) = v33;
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_32;
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

    if (v31)
    {
      v30 = 1 << *(v5 + 32);
      if (v30 >= 64)
      {
        bzero((v5 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v30;
      }

      *(v5 + 16) = 0;
    }
  }

  *v3 = v7;
  return result;
}