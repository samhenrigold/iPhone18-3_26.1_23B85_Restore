void sub_1A22C2180(void *a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = v3[4];
    v5 = *(v4 + v3[5]);
    v6 = (*(**(v4 + 32) + 192))(v3);
    *(v7 + *(type metadata accessor for SessionArtworkPresentationModel(0) + 24)) = v5;
    v6(v3, 0);
  }

  free(v3);
}

void *sub_1A22C223C(uint64_t a1)
{
  swift_allocObject();
  v2 = sub_1A22C361C(a1);

  return v2;
}

void *sub_1A22C2288(uint64_t a1)
{
  v1 = sub_1A22C361C(a1);

  return v1;
}

double sub_1A22C22BC(uint64_t a1)
{
  v3 = sub_1A22E5C88();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](a1);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____TtC13MediaControls16SessionPresenter_controller;
  v9 = *(v1 + OBJC_IVAR____TtC13MediaControls16SessionPresenter_controller);
  *(v1 + OBJC_IVAR____TtC13MediaControls16SessionPresenter_controller) = v5;
  if (v9 == v5)
  {
  }

  else
  {
    v10 = *(*v9 + 288);

    v10(v1, &off_1F1442D30);
    v11 = *(**(v1 + v8) + 280);

    v11(v1, &off_1F1442D30);

    v12 = *(**(v1 + v8) + 152);

    v12(v13);

    sub_1A22C2DD0(v7);

    (*(v4 + 8))(v7, v3);
  }

  return result;
}

uint64_t sub_1A22C24D8(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v4 = v3;
  v7 = sub_1A22E6248();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A2298A60(v10);

  v11 = sub_1A22E6238();
  v12 = sub_1A22E6A68();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v27 = v7;
    v14 = v13;
    v26 = swift_slowAlloc();
    v28 = v26;
    *v14 = 136315650;
    v15 = sub_1A22E7388();
    v17 = a2;
    v18 = sub_1A2103450(v15, v16, &v28);

    *(v14 + 4) = v18;
    *(v14 + 12) = 2080;
    *(v14 + 14) = sub_1A2103450(0xD00000000000002ALL, 0x80000001A2305620, &v28);
    *(v14 + 22) = 2080;
    a2 = v17;
    *(v14 + 24) = sub_1A2103450(v17, a3, &v28);
    _os_log_impl(&dword_1A20FC000, v11, v12, "[%s] %s %s", v14, 0x20u);
    v19 = v26;
    swift_arrayDestroy();
    MEMORY[0x1A58DCD00](v19, -1, -1);
    MEMORY[0x1A58DCD00](v14, -1, -1);

    v20 = (*(v8 + 8))(v10, v27);
  }

  else
  {

    v20 = (*(v8 + 8))(v10, v7);
  }

  result = (*(*v4 + 136))(v20);
  if (result)
  {
    v23 = v22;
    ObjectType = swift_getObjectType();
    (*(v23 + 24))(a2, a3, 1, ObjectType, v23);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1A22C27A0(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v4 = v3;
  v7 = sub_1A22E6248();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A2298A60(v10);

  v11 = sub_1A22E6238();
  v12 = sub_1A22E6A68();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v27 = v7;
    v14 = v13;
    v26 = swift_slowAlloc();
    v28 = v26;
    *v14 = 136315650;
    v15 = sub_1A22E7388();
    v17 = a2;
    v18 = sub_1A2103450(v15, v16, &v28);

    *(v14 + 4) = v18;
    *(v14 + 12) = 2080;
    *(v14 + 14) = sub_1A2103450(0xD00000000000002ELL, 0x80000001A23055F0, &v28);
    *(v14 + 22) = 2080;
    a2 = v17;
    *(v14 + 24) = sub_1A2103450(v17, a3, &v28);
    _os_log_impl(&dword_1A20FC000, v11, v12, "[%s] %s %s", v14, 0x20u);
    v19 = v26;
    swift_arrayDestroy();
    MEMORY[0x1A58DCD00](v19, -1, -1);
    MEMORY[0x1A58DCD00](v14, -1, -1);

    v20 = (*(v8 + 8))(v10, v27);
  }

  else
  {

    v20 = (*(v8 + 8))(v10, v7);
  }

  result = (*(*v4 + 136))(v20);
  if (result)
  {
    v23 = v22;
    ObjectType = swift_getObjectType();
    (*(v23 + 24))(a2, a3, 2, ObjectType, v23);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1A22C2A68(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v4 = v3;
  v7 = sub_1A22E6248();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A2298A60(v10);

  v11 = sub_1A22E6238();
  v12 = sub_1A22E6A68();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v27 = v7;
    v14 = v13;
    v26 = swift_slowAlloc();
    v28 = v26;
    *v14 = 136315650;
    v15 = sub_1A22E7388();
    v17 = a2;
    v18 = sub_1A2103450(v15, v16, &v28);

    *(v14 + 4) = v18;
    *(v14 + 12) = 2080;
    *(v14 + 14) = sub_1A2103450(0xD00000000000002BLL, 0x80000001A23055C0, &v28);
    *(v14 + 22) = 2080;
    a2 = v17;
    *(v14 + 24) = sub_1A2103450(v17, a3, &v28);
    _os_log_impl(&dword_1A20FC000, v11, v12, "[%s] %s %s", v14, 0x20u);
    v19 = v26;
    swift_arrayDestroy();
    MEMORY[0x1A58DCD00](v19, -1, -1);
    MEMORY[0x1A58DCD00](v14, -1, -1);

    v20 = (*(v8 + 8))(v10, v27);
  }

  else
  {

    v20 = (*(v8 + 8))(v10, v7);
  }

  result = (*(*v4 + 136))(v20);
  if (result)
  {
    v23 = v22;
    ObjectType = swift_getObjectType();
    (*(v23 + 24))(a2, a3, 0, ObjectType, v23);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1A22C2D30(uint64_t a1, uint64_t a2)
{
  result = (*(*v2 + 136))(a1);
  if (result)
  {
    v6 = v5;
    ObjectType = swift_getObjectType();
    (*(v6 + 16))(a2, ObjectType, v6);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1A22C2DD0(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB089540, &unk_1A230FE80);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v31 = &v30 - v5;
  v6 = sub_1A22E5C88();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v30 - v11;
  v13 = type metadata accessor for SessionViewModel(0);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = (&v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = (*(**(v1 + 32) + 192))(v32);
  v17 = *(v7 + 24);
  v17(v18, a1, v6);
  v16(v32, 0);
  v19 = *(v2 + OBJC_IVAR____TtC13MediaControls16SessionPresenter_waveformController);
  v20 = (*((*MEMORY[0x1E69E7D40] & *v19) + 0x88))(v32);
  v17(v21, a1, v6);
  v20(v32, 0);
  v22 = OBJC_IVAR____TtC13MediaControls16SessionPresenter_controller;
  v23 = *(**(v2 + OBJC_IVAR____TtC13MediaControls16SessionPresenter_controller) + 152);

  v23(v24);

  v25 = *(**(v2 + v22) + 152);

  v25(v26);

  v27 = v19;
  v28 = v31;
  sub_1A2284FEC(v10, v19, 0, v31);
  sub_1A22C1614(v12, v28, v15);
  return sub_1A22C1E2C(v15);
}

uint64_t sub_1A22C30E0()
{
  sub_1A210DA3C(v0 + 16);

  sub_1A22C1F68(v0 + OBJC_IVAR____TtC13MediaControls16SessionPresenter_viewModel);

  return v0;
}

uint64_t sub_1A22C3140()
{
  sub_1A210DA3C(v0 + 16);

  sub_1A22C1F68(v0 + OBJC_IVAR____TtC13MediaControls16SessionPresenter_viewModel);

  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

void sub_1A22C32E8(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB088BE8, &qword_1A230AB90);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v27 = v24 - v5;
  v28 = sub_1A22E6028();
  v26 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v7 = v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1A22E58D8();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A2130450();
  sub_1A226BD98(v29);
  sub_1A2129C6C();
  v12 = type metadata accessor for RoutePickerItemView.ViewModel(0);
  v13 = *(v12 + 44);
  sub_1A2129B74(a2 + v13);
  v25 = *(v12 + 48);
  v24[1] = sub_1A220D0C4();
  *a2 = sub_1A22E57D8();
  *(a2 + 8) = v14;
  v15 = sub_1A22E57E8();
  v17 = v16;

  *(a2 + 16) = v15;
  *(a2 + 24) = v17;
  *(a2 + 32) = sub_1A22E5838();
  *(a2 + 40) = v18;
  v19 = *(v9 + 16);
  v19(v11, a1, v8);
  sub_1A22C3BD0(v11, v30);
  v20 = v30[1];
  *(a2 + 48) = v30[0];
  *(a2 + 64) = v20;
  *(a2 + 80) = v31;
  v19(v11, a1, v8);
  *(a2 + 82) = sub_1A22C3990(v11);
  *(a2 + 83) = sub_1A22E58C8() & 1;
  v21 = sub_1A22E5898();
  *(a2 + 84) = v21;
  *(a2 + 88) = BYTE4(v21) & 1;
  sub_1A22E58B8();
  v22 = v27;
  sub_1A22E5F88();
  (*(v26 + 8))(v7, v28);
  sub_1A21251D8(v22, a2 + v13);
  v23 = sub_1A22E58A8();
  (*(v9 + 8))(a1, v8);

  *(a2 + v25) = v23;
}

double sub_1A22C35D8@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1A22C3BD0(a1, v5);
  result = *v5;
  v4 = v5[1];
  *a2 = v5[0];
  *(a2 + 16) = v4;
  *(a2 + 32) = v6;
  return result;
}

void *sub_1A22C361C(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB089540, &unk_1A230FE80);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v28 - v5;
  v7 = type metadata accessor for SessionViewModel(0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = (&v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = sub_1A22E5C88();
  v11 = MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v28 - v14;
  v1[3] = 0;
  swift_unknownObjectWeakInit();
  v1[5] = 0;
  *(v1 + OBJC_IVAR____TtC13MediaControls16SessionPresenter_isOnScreen) = 0;
  *(v1 + OBJC_IVAR____TtC13MediaControls16SessionPresenter_controller) = a1;
  type metadata accessor for SessionArtworkController(0);
  v16 = *(*a1 + 152);

  (v16)(v17);
  v1[4] = sub_1A22A03BC(v15);
  type metadata accessor for WaveformController(0);
  v16();
  *(v1 + OBJC_IVAR____TtC13MediaControls16SessionPresenter_waveformController) = sub_1A22D27DC(v15);
  v18 = (v16)();
  (v16)(v18);
  v19 = *(v1 + OBJC_IVAR____TtC13MediaControls16SessionPresenter_waveformController);
  v20 = v19;
  sub_1A2284FEC(v13, v19, 0, v6);
  sub_1A22C1614(v15, v6, v9);
  sub_1A2129A98(v9, v2 + OBJC_IVAR____TtC13MediaControls16SessionPresenter_viewModel, type metadata accessor for SessionViewModel);
  v21 = OBJC_IVAR____TtC13MediaControls16SessionPresenter_controller;
  v22 = *(**(v2 + OBJC_IVAR____TtC13MediaControls16SessionPresenter_controller) + 280);

  v22(v23, &off_1F1442D30);

  v24 = *(*v2[4] + 152);

  v24(v2, &off_1F1442D70);

  v25 = *(**(v2 + v21) + 296);

  v25(v26);

  return v2;
}

uint64_t sub_1A22C3990(uint64_t a1)
{
  v2 = sub_1A22E5808();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A22E5818();
  v6 = (*(v3 + 88))(v5, v2);
  if (v6 == *MEMORY[0x1E69AE530])
  {
    v7 = sub_1A22E58D8();
    (*(*(v7 - 8) + 8))(a1, v7);
    return 2;
  }

  if (v6 == *MEMORY[0x1E69AE528])
  {
    v9 = sub_1A22E58D8();
    (*(*(v9 - 8) + 8))(a1, v9);
    return 3;
  }

  if (v6 != *MEMORY[0x1E69AE540])
  {
    v12 = *MEMORY[0x1E69AE538];
    v13 = v6;
    v14 = sub_1A22E58D8();
    (*(*(v14 - 8) + 8))(a1, v14);
    if (v13 != v12)
    {
      (*(v3 + 8))(v5, v2);
      return 2;
    }

    return 3;
  }

  v10 = sub_1A22E5828();
  v11 = sub_1A22E58D8();
  (*(*(v11 - 8) + 8))(a1, v11);
  return (v10 & 1) == 0;
}

uint64_t sub_1A22C3BD0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB089C28, &qword_1A230FE68);
  v5 = MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v55 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v10 = &v55 - v9;
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = &v55 - v12;
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v55 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB089C30, &unk_1A230FE70);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v55 - v17;
  v19 = sub_1A22E57B8();
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v55 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A2130440();
  sub_1A2129C60();
  sub_1A2113050();
  sub_1A22E57C8();
  if ((*(v20 + 48))(v18, 1, v19) == 1)
  {
    v23 = sub_1A22E58D8();
    (*(*(v23 - 8) + 8))(a1, v23);
    result = sub_1A210D9B0(v18, &unk_1EB089C30, &unk_1A230FE70);
    v25 = 0.0;
    v26 = 0.0;
    v27 = 0;
    v28 = 512;
    v29 = 0.0;
    goto LABEL_36;
  }

  v59 = v7;
  v60 = a1;
  (*(v20 + 32))(v22, v18, v19);
  sub_1A22E5798();
  v30 = sub_1A22E5788();
  v31 = *(v30 - 8);
  v62 = *(v31 + 48);
  v32 = v62(v15, 1, v30);
  v61 = v31;
  if (v32 == 1)
  {
    sub_1A210D9B0(v15, &qword_1EB089C28, &qword_1A230FE68);
    v58 = 0.0;
    v33 = 1;
  }

  else
  {
    v56 = v22;
    v34 = a2;
    v35 = v20;
    v36 = v19;
    v37 = v31;
    v38 = sub_1A22E5768();
    v39 = v37;
    v19 = v36;
    v20 = v35;
    a2 = v34;
    v22 = v56;
    (*(v39 + 8))(v15, v30);
    v40 = v38 / 100.0;
    if ((v38 & 0x100) != 0)
    {
      v40 = 0.0;
    }

    v58 = v40;
    v33 = (v38 & 0x100) != 0;
  }

  v57 = v33;
  sub_1A22E5798();
  if (v62(v13, 1, v30) == 1)
  {
    sub_1A210D9B0(v13, &qword_1EB089C28, &qword_1A230FE68);
    v41 = 0.0;
    v42 = 1;
  }

  else
  {
    v43 = sub_1A22E5758();
    (*(v61 + 8))(v13, v30);
    if ((v43 & 0x100) != 0)
    {
      v41 = 0.0;
    }

    else
    {
      v41 = v43 / 100.0;
    }

    v42 = (v43 & 0x100) != 0;
  }

  sub_1A22E5798();
  if (v62(v10, 1, v30) == 1)
  {
    sub_1A210D9B0(v10, &qword_1EB089C28, &qword_1A230FE68);
  }

  else
  {
    v44 = sub_1A22E5778();
    (*(v61 + 8))(v10, v30);
    if ((v44 & 0x100) == 0)
    {
      v45 = v44 / 100.0;
      v26 = v45;
      if (v42)
      {
        v27 = 1;
        v58 = v44 / 100.0;
        v26 = 0.0;
      }

      else if (vabdd_f64(v41, v45) <= 0.09)
      {
        if ((*&v45 & 0xFFFFFFFFFFFFFLL) != 0)
        {
          v53 = v41;
        }

        else
        {
          v53 = v44 / 100.0;
        }

        v54 = v53;
        if ((~*&v45 & 0x7FF0000000000000) != 0)
        {
          v54 = v44 / 100.0;
        }

        if (v45 < v41)
        {
          v41 = v54;
        }

        v58 = v41;
        v26 = 0.0;
        v27 = 2;
      }

      else
      {
        v58 = v41;
        v27 = 3;
      }

      goto LABEL_26;
    }
  }

  if (v42)
  {
    v26 = 0.0;
    v46 = v58;
    if (v57)
    {
      v46 = 0.0;
    }

    v58 = v46;
    if (v57)
    {
      v27 = 255;
    }

    else
    {
      v27 = 2;
    }
  }

  else
  {
    v58 = v41;
    v26 = 0.0;
    v27 = 0;
  }

LABEL_26:
  v47 = v59;
  sub_1A22E5798();
  if (v62(v47, 1, v30) == 1)
  {
    sub_1A210D9B0(v47, &qword_1EB089C28, &qword_1A230FE68);
    v48 = 1;
    v29 = 0.0;
  }

  else
  {
    v49 = sub_1A22E5748();
    (*(v61 + 8))(v47, v30);
    if ((v49 & 0x100) != 0)
    {
      v29 = 0.0;
    }

    else
    {
      v29 = v49 / 100.0;
    }

    v48 = (v49 & 0x100) != 0;
  }

  v50 = sub_1A22E57A8();
  v51 = sub_1A22E58D8();
  (*(*(v51 - 8) + 8))(v60, v51);
  result = (*(v20 + 8))(v22, v19);
  if (v50)
  {
    v52 = 256;
  }

  else
  {
    v52 = 0;
  }

  v28 = v52 | v48;
  v25 = v58;
LABEL_36:
  *a2 = v25;
  *(a2 + 8) = v26;
  *(a2 + 16) = v27;
  *(a2 + 24) = v29;
  *(a2 + 32) = v28;
  return result;
}

uint64_t type metadata accessor for SessionPresenter(uint64_t a1)
{
  result = qword_1EB090508;
  if (!qword_1EB090508)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1A22C42EC(uint64_t a1)
{
  result = type metadata accessor for SessionViewModel(319);
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

__n128 sub_1A22C43F4@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 16) = v2;
  result = *(v1 + 32);
  *(a1 + 32) = result;
  return result;
}

__n128 sub_1A22C4408@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 64);
  *a1 = *(v1 + 48);
  *(a1 + 16) = v2;
  result = *(v1 + 80);
  *(a1 + 32) = result;
  return result;
}

double sub_1A22C441C@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 32) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

uint64_t sub_1A22C4438(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB089C40, &unk_1A230FE90);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A22C44B0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB089C40, &unk_1A230FE90);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

__n128 sub_1A22C4520@<Q0>(_OWORD *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v4 = a1[1];
  *a4 = *a1;
  *(a4 + 16) = v4;
  v5 = *a2;
  v6 = a2[1];
  *(a4 + 32) = a1[2];
  *(a4 + 48) = v5;
  v7 = a2[2];
  *(a4 + 64) = v6;
  *(a4 + 80) = v7;
  *(a4 + 128) = *(a3 + 32);
  result = *(a3 + 16);
  *(a4 + 96) = *a3;
  *(a4 + 112) = result;
  return result;
}

uint64_t sub_1A22C4550@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  if (a1)
  {
    result = CGAffineTransformMakeScale(&v7, 0.9, 0.9);
    v5 = *&v7.a;
    v4 = *&v7.c;
    v6 = *&v7.tx;
    *(a2 + 128) = 0;
    *(a2 + 96) = 0u;
    *(a2 + 112) = 0u;
  }

  else
  {
    result = sub_1A2299F34((a2 + 96));
    v4 = xmmword_1A2308710;
    v5 = xmmword_1A2308720;
    v6 = 0uLL;
  }

  *a2 = 0x3FF0000000000000;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0x3FF0000000000000;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  *(a2 + 48) = v5;
  *(a2 + 64) = v4;
  *(a2 + 80) = v6;
  return result;
}

id sub_1A22C45DC(char a1, uint64_t a2)
{
  v5 = objc_allocWithZone(v2);
  v5[OBJC_IVAR____TtC13MediaControls42RoutePickerPresentationAnimationController_style] = a1 & 1;
  *&v5[OBJC_IVAR____TtC13MediaControls42RoutePickerPresentationAnimationController_viewController] = a2;
  v7.receiver = v5;
  v7.super_class = v2;
  return objc_msgSendSuper2(&v7, sel_init);
}

id sub_1A22C4648(uint64_t a1, uint64_t a2)
{
  v2[OBJC_IVAR____TtC13MediaControls42RoutePickerPresentationAnimationController_style] = a1 & 1;
  *&v2[OBJC_IVAR____TtC13MediaControls42RoutePickerPresentationAnimationController_viewController] = a2;
  v4.receiver = v2;
  v4.super_class = type metadata accessor for RoutePickerPresentationAnimationController(a1, a2);
  return objc_msgSendSuper2(&v4, sel_init);
}

double sub_1A22C46BC()
{
  result = 0.35;
  if (*(v0 + OBJC_IVAR____TtC13MediaControls42RoutePickerPresentationAnimationController_style))
  {
    return 0.25;
  }

  return result;
}

void sub_1A22C470C(void *a1)
{
  v23 = [*(v1 + OBJC_IVAR____TtC13MediaControls42RoutePickerPresentationAnimationController_viewController) view];
  if (v23)
  {
    v3 = *(v1 + OBJC_IVAR____TtC13MediaControls42RoutePickerPresentationAnimationController_style);
    if (v3)
    {
      v4 = swift_allocObject();
      *(v4 + 16) = v23;
      *(v4 + 24) = a1;
      v5 = v23;
      v6 = sub_1A22C4A94;
    }

    else
    {
      v7 = [a1 containerView];
      [v7 addSubview_];

      v4 = swift_allocObject();
      *(v4 + 16) = a1;
      v6 = sub_1A22C4BF0;
    }

    v8 = v6;
    if ([swift_unknownObjectRetain() isAnimated])
    {
      v9 = MEMORY[0x1E69E7D40];
      v10 = (*((*MEMORY[0x1E69E7D40] & *v1) + 0x68))(a1);
      if (v3)
      {
        CGAffineTransformMakeScale(&v34, 0.9, 0.9);
        v12 = *&v34.a;
        v11 = *&v34.c;
        v13 = *&v34.tx;
        memset(v38, 0, 40);
      }

      else
      {
        sub_1A2299F34(v38);
        v11 = xmmword_1A2308710;
        v12 = xmmword_1A2308720;
        v13 = 0uLL;
      }

      v34.a = 1.0;
      v34.b = 0.0;
      v34.c = 0.0;
      v34.d = 1.0;
      v34.tx = 0.0;
      v34.ty = 0.0;
      v35 = v12;
      v36 = v11;
      v37 = v13;
      v25 = 0x3FF0000000000000uLL;
      *&v26 = 0;
      *(&v26 + 1) = 0x3FF0000000000000;
      v27 = 0uLL;
      [v23 setTransform_];
      sub_1A22C4AF8(&v34, &v25);
      v14 = swift_allocObject();
      v15 = v29;
      *(v14 + 104) = v30;
      v16 = v32;
      *(v14 + 120) = v31;
      *(v14 + 136) = v16;
      v17 = v25;
      *(v14 + 40) = v26;
      v18 = v28;
      *(v14 + 56) = v27;
      *(v14 + 72) = v18;
      *(v14 + 88) = v15;
      *(v14 + 16) = a1;
      v19 = v33;
      *(v14 + 24) = v17;
      v20 = *v9 & *v1;
      *(v14 + 152) = v19;
      *(v14 + 160) = v24;
      v21 = *(v20 + 120);
      v22 = v24;
      swift_unknownObjectRetain();
      v21(sub_1A22C4B30, v14, v8, v4, v10);

      sub_1A22C4BC0(&v34);
    }

    else
    {
      v8(1);
    }
  }

  else
  {

    [a1 completeTransition_];
  }
}

id sub_1A22C4A94(int a1)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  [v3 removeFromSuperview];
  v5 = ([v4 transitionWasCancelled] ^ 1) & a1;

  return [v4 completeTransition_];
}

id sub_1A22C4B30()
{
  v1 = v0;
  v2 = *(v0 + 160);
  v3 = [*(v0 + 16) containerView];
  sub_1A22C4438(v1 + 120, v6);
  sub_1A22E6C18();

  v4 = *(v1 + 88);
  v6[0] = *(v1 + 72);
  v6[1] = v4;
  v6[2] = *(v1 + 104);
  return [v2 setTransform_];
}

id sub_1A22C4BF0(int a1)
{
  v2 = *(v1 + 16);
  v3 = ([v2 transitionWasCancelled] ^ 1) & a1;

  return [v2 completeTransition_];
}

uint64_t sub_1A22C4CB0(void *a1, uint64_t a2, void *a3, uint64_t a4, double a5)
{
  v11 = *(v5 + OBJC_IVAR____TtC13MediaControls42RoutePickerPresentationAnimationController_style);
  sub_1A220C0E8(0, a2);
  if (v11)
  {
    v19 = 0u;
    v20 = 0u;
    v21 = 3;
    v12 = sub_1A2209D24();
    v13 = a5;
    v14 = 0;
  }

  else
  {
    sub_1A2209D24();
    nullsub_1();
    *&v19 = v15;
    *(&v19 + 1) = v16;
    v20 = 0uLL;
    v21 = 0;
    v12 = sub_1A2209D24();
    v13 = a5;
    v14 = 4;
  }

  sub_1A229BE28(v14, &v19, v18, v13, v12);
  sub_1A21179EC(v18, a1, a2, a3, a4);
  return sub_1A2116928(v18);
}

id sub_1A22C4E18(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for RoutePickerPresentationAnimationController(a1, a2);
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

unint64_t sub_1A22C4E60()
{
  result = qword_1EB089CC0;
  if (!qword_1EB089CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB089CC0);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_So6UIViewC5UIKitE8Material_pSg(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy136_8(uint64_t a1, uint64_t a2)
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
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  *(a1 + 80) = result;
  return result;
}

uint64_t sub_1A22C4F10(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 136))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 120);
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

uint64_t sub_1A22C4F6C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 120) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 136) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 136) = 0;
    }

    if (a2)
    {
      *(result + 120) = a2;
    }
  }

  return result;
}

void (*sub_1A22C4FF0(void *a1))(uint64_t a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = sub_1A22E6D68();
  v5[1] = v6;
  v7 = *(v6 - 8);
  v5[2] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[3] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[3] = malloc(*(v7 + 64));
    v9 = malloc(v8);
  }

  v5[4] = v9;
  sub_1A210DC50(v9);
  return sub_1A22C510C;
}

void sub_1A22C510C(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 24);
  v4 = *(*a1 + 32);
  if (a2)
  {
    v5 = v2[1];
    v6 = v2[2];
    (*(v6 + 16))(*(*a1 + 24), v4, v5);
    sub_1A21143A4(v3);
    (*(v6 + 8))(v4, v5);
  }

  else
  {
    sub_1A21143A4(*(*a1 + 32));
  }

  free(v4);
  free(v3);

  free(v2);
}

uint64_t sub_1A22C51C0(uint64_t a1)
{
  v3 = *v1;
  v4 = sub_1A2114A3C(a1);
  (*(*(*(v3 + 80) - 8) + 8))(a1);
  return v4;
}

uint64_t sub_1A22C52C0(int a1, int a2)
{
  if ((a1 ^ a2))
  {
    return 0;
  }

  if (sub_1A2229988(SBYTE1(a1), SBYTE1(a2)))
  {
    return ((a2 & 0x10000) == 0) ^ ((a1 & 0x10000u) >> 16);
  }

  return 0;
}

uint64_t sub_1A22C5324(char a1, unsigned __int8 a2, char a3)
{
  if (a3)
  {
    v3 = 0x10000;
  }

  else
  {
    v3 = 0;
  }

  return v3 & 0xFFFF00FE | (a2 << 8) | a1 & 1;
}

uint64_t sub_1A22C5340(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v3 = a1[2];
  v4 = a2[2];
  if (sub_1A2229988(a1[1], a2[1]))
  {
    return v3 ^ v4 ^ 1u;
  }

  else
  {
    return 0;
  }
}

void sub_1A22C539C(unsigned int a1)
{
  v3 = a1 >> 8;
  v4 = (v1 + OBJC_IVAR____TtC13MediaControls29RoutePickerItemBackgroundView_state);
  swift_beginAccess();
  v5 = *v4;
  v6 = v4[1];
  v7 = v4[2];
  *v4 = a1 & 1;
  v4[1] = v3;
  v4[2] = BYTE2(a1) & 1;
  if (v5 != (a1 & 1) || !sub_1A2229988(v3, v6) || ((a1 & 0x10000) == 0) == v7)
  {
    if (v7)
    {
      v8 = 0x10000;
    }

    else
    {
      v8 = 0;
    }

    sub_1A22C59B4(v8 | (v6 << 8) | v5);
  }
}

uint64_t sub_1A22C5468()
{
  v1 = OBJC_IVAR____TtC13MediaControls29RoutePickerItemBackgroundView_isHighlighted;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1A22C54AC(char a1)
{
  v3 = OBJC_IVAR____TtC13MediaControls29RoutePickerItemBackgroundView_isHighlighted;
  v4 = swift_beginAccess();
  *(v1 + v3) = a1;
  v5 = MEMORY[0x1E69E7D40];
  v6 = (*((*MEMORY[0x1E69E7D40] & *v1) + 0x60))(v4);
  return (*((*v5 & *v1) + 0xB8))(v6 & 1);
}

uint64_t (*sub_1A22C5560(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1A22C55C4;
}

uint64_t sub_1A22C55C4(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v5 = *(a1 + 24);
    v6 = MEMORY[0x1E69E7D40];
    v7 = (*((*MEMORY[0x1E69E7D40] & *v5) + 0x60))(result);
    return (*((*v6 & *v5) + 0xB8))(v7 & 1);
  }

  return result;
}

void *sub_1A22C5658(uint64_t a1, double a2, double a3, double a4, double a5, uint64_t a6)
{
  v11 = &v6[OBJC_IVAR____TtC13MediaControls29RoutePickerItemBackgroundView_state];
  *v11 = 0;
  v11[2] = 0;
  v6[OBJC_IVAR____TtC13MediaControls29RoutePickerItemBackgroundView_isHighlighted] = 0;
  v14.receiver = v6;
  v14.super_class = type metadata accessor for RoutePickerItemBackgroundView(a1, a6);
  v12 = objc_msgSendSuper2(&v14, sel_initWithFrame_, a2, a3, a4, a5);
  [v12 setUserInteractionEnabled_];
  sub_1A2115288(0, &qword_1ED94EA40, 0x1E69DD1B8);
  sub_1A22E6B58();
  MEMORY[0x1A58DAE60]();
  swift_unknownObjectRelease();

  (*((*MEMORY[0x1E69E7D40] & *v12) + 0xB8))(0);

  return v12;
}

void sub_1A22C58BC()
{
  v1 = v0 + OBJC_IVAR____TtC13MediaControls29RoutePickerItemBackgroundView_state;
  *v1 = 0;
  *(v1 + 2) = 0;
  *(v0 + OBJC_IVAR____TtC13MediaControls29RoutePickerItemBackgroundView_isHighlighted) = 0;
  sub_1A22E7028();
  __break(1u);
}

void sub_1A22C59B4(unsigned int a1)
{
  v40 = a1;
  swift_getObjectType();
  v2 = sub_1A22E6248();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A2298A60(v5);
  v6 = v1;
  v7 = sub_1A22E6238();
  v8 = sub_1A22E6A68();
  v9 = os_log_type_enabled(v7, v8);
  v10 = MEMORY[0x1E69E7D40];
  if (v9)
  {
    v11 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    aBlock[0] = v39;
    *v11 = 136315650;
    v12 = sub_1A22E7388();
    v14 = sub_1A2103450(v12, v13, aBlock);

    *(v11 + 4) = v14;
    *(v11 + 12) = 2080;
    v16 = *v6;
    v17 = *v10;
    v38 = v3;
    v18 = *((v17 & v16) + 0x60);
    v37 = v2;
    v42 = v18(v15) >> 8;
    sub_1A22C6BB4();
    v19 = sub_1A22E71D8();
    v21 = sub_1A2103450(v19, v20, aBlock);

    *(v11 + 14) = v21;
    *(v11 + 22) = 1024;
    v23 = (v18)(v22);
    v10 = MEMORY[0x1E69E7D40];
    v24 = v23;

    *(v11 + 24) = HIWORD(v24) & 1;
    _os_log_impl(&dword_1A20FC000, v7, v8, "[%s] updateState s:%s p:%{BOOL}d", v11, 0x1Cu);
    v25 = v39;
    swift_arrayDestroy();
    MEMORY[0x1A58DCD00](v25, -1, -1);
    MEMORY[0x1A58DCD00](v11, -1, -1);

    v26 = (*(v38 + 8))(v5, v37);
  }

  else
  {

    v26 = (*(v3 + 8))(v5, v2);
  }

  v27 = v40;
  v28 = v40 >> 8;
  v29 = *((*v10 & *v6) + 0x60);
  LOBYTE(aBlock[0]) = (v29)(v26) >> 8;
  v42 = v28;
  sub_1A226FA58();
  if (sub_1A22E6568())
  {
    v30 = 0;
    v31 = 0;
  }

  else
  {
    v32 = objc_opt_self();
    v31 = swift_allocObject();
    *(v31 + 16) = v6;
    v33 = swift_allocObject();
    v30 = sub_1A22C6B5C;
    *(v33 + 16) = sub_1A22C6B5C;
    *(v33 + 24) = v31;
    aBlock[4] = sub_1A22154EC;
    aBlock[5] = v33;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1A2212E7C;
    aBlock[3] = &block_descriptor_21;
    v34 = _Block_copy(aBlock);
    v35 = v6;

    [v32 performWithoutAnimation_];
    _Block_release(v34);
    LOBYTE(v32) = swift_isEscapingClosureAtFileLocation();

    if (v32)
    {
      __break(1u);
      return;
    }
  }

  if ((v27 ^ v29()) & 0x10000) != 0 || ((v29() ^ v27))
  {
    sub_1A22C5E78();
  }

  sub_1A210F5C0(v30, v31);
}

double sub_1A22C5E78()
{
  v1 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x60);
  if (v1())
  {
    if ((v1() & 0x10000) != 0)
    {
      v5 = swift_allocObject();
      *(v5 + 16) = v0;
      sub_1A2115288(0, &qword_1ED94E980, 0x1E69DD250);
      v6 = v0;
      sub_1A211A390(v10);
      sub_1A211A3F4(v11, 0.5);
      sub_1A2116928(v10);
      sub_1A229BD14(0, v12);
      sub_1A2116928(v11);
      v7 = swift_allocObject();
      *(v7 + 16) = v6;
      v8 = swift_allocObject();
      v8[2] = v6;
      v8[3] = sub_1A22C6A6C;
      v8[4] = v5;
      v9 = v6;

      sub_1A21179EC(v12, sub_1A22C6A74, v7, sub_1A22C6A7C, v8);

      sub_1A2116928(v12);
    }

    else if ((v1() & 0x10000) == 0)
    {
      v3 = swift_allocObject();
      *(v3 + 16) = v0;
      sub_1A2115288(0, &qword_1ED94E980, 0x1E69DD250);
      v4 = v0;
      sub_1A211A390(v12);
      sub_1A21179EC(v12, sub_1A22C6A64, v3, 0, 0);

      sub_1A2116928(v12);
    }
  }

  return result;
}

double sub_1A22C60C0(void *a1)
{
  v2 = *((*MEMORY[0x1E69E7D40] & *a1) + 0x60);
  if (v2())
  {
    if ((v2() & 0x10000) != 0)
    {
      v6 = swift_allocObject();
      *(v6 + 16) = a1;
      sub_1A2115288(0, &qword_1ED94E980, 0x1E69DD250);
      v7 = a1;
      sub_1A211A390(v11);
      sub_1A211A3F4(v12, 0.5);
      sub_1A2116928(v11);
      sub_1A229BD14(0, v13);
      sub_1A2116928(v12);
      v8 = swift_allocObject();
      *(v8 + 16) = v7;
      v9 = swift_allocObject();
      v9[2] = v7;
      v9[3] = sub_1A22C6C10;
      v9[4] = v6;
      v10 = v7;

      sub_1A21179EC(v13, sub_1A22C6C14, v8, sub_1A22C6C08, v9);

      sub_1A2116928(v13);
    }

    else if ((v2() & 0x10000) == 0)
    {
      v4 = swift_allocObject();
      *(v4 + 16) = a1;
      sub_1A2115288(0, &qword_1ED94E980, 0x1E69DD250);
      v5 = a1;
      sub_1A211A390(v13);
      sub_1A21179EC(v13, sub_1A22C6C0C, v4, 0, 0);

      sub_1A2116928(v13);
    }
  }

  return result;
}

void sub_1A22C630C(void *a1)
{
  v2 = (*((*MEMORY[0x1E69E7D40] & *a1) + 0x60))();
  v3 = sub_1A22C64F4(v2 & 0xFF01);
  v4 = [v3 colorWithAlphaComponent_];

  [a1 setBackgroundColor_];
}

uint64_t sub_1A22C63C0(void *a1, uint64_t a2, uint64_t a3)
{
  sub_1A2115288(0, &qword_1ED94E980, 0x1E69DD250);
  sub_1A211A390(v10);
  sub_1A211A3F4(v11, 0.5);
  sub_1A2116928(v10);
  sub_1A229BD14(0, v12);
  sub_1A2116928(v11);
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  v7 = swift_allocObject();
  *(v7 + 16) = a2;
  *(v7 + 24) = a3;
  v8 = a1;

  sub_1A21179EC(v12, sub_1A22C6A88, v6, sub_1A22154EC, v7);

  return sub_1A2116928(v12);
}

id sub_1A22C64F4(__int16 a1)
{
  v3 = [v1 traitCollection];
  v4 = [v3 userInterfaceStyle];

  v5 = a1 & 0xFF00;
  v6 = objc_opt_self();
  if (v4 == 2)
  {
    v7 = [v6 systemWhiteColor];
  }

  else
  {
    v7 = [v6 systemBlackColor];
  }

  v8 = v7;
  v9 = v8;
  if (v5)
  {
    v10 = 0.4;
  }

  else
  {
    v10 = 0.1;
  }

  v11 = [v8 colorWithAlphaComponent_];

  return v11;
}

void sub_1A22C65C8(char a1)
{
  v3 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x60);
  if ((v3() & 0x10000) == 0)
  {
    v4 = swift_allocObject();
    *(v4 + 16) = v1;
    if (a1)
    {
      sub_1A2115288(0, &qword_1ED94E980, 0x1E69DD250);
      v5 = v1;
      sub_1A211A390(v9);
      sub_1A21179EC(v9, sub_1A22C6C0C, v4, 0, 0);

      sub_1A2116928(v9);
    }

    else
    {
      v6 = v1;
      v7 = v3();
      v8 = sub_1A22C64F4(v7 & 0xFF01);
      [v6 setBackgroundColor_];
    }
  }
}

void sub_1A22C6728(void *a1)
{
  v2 = (*((*MEMORY[0x1E69E7D40] & *a1) + 0x60))();
  v3 = sub_1A22C64F4(v2 & 0xFF01);
  [a1 setBackgroundColor_];
}

void sub_1A22C67BC(char a1)
{
  sub_1A22C65C8(a1);
  v2 = [v1 layer];
  v3 = [v1 traitCollection];
  v4 = sub_1A228BD74();

  if (v4)
  {
    sub_1A224DFDC(v4);

    v5 = sub_1A22E6738();
  }

  else
  {
    v5 = 0;
  }

  [v2 setFilters_];
}

id sub_1A22C68F0(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for RoutePickerItemBackgroundView(a1, a2);
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t __swift_memcpy3_1(uint64_t result, __int16 *a2)
{
  v2 = *a2;
  *(result + 2) = *(a2 + 2);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for RoutePickerItemBackgroundView.State(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF)
  {
    if ((a2 + 33554177) >> 24)
    {
      v2 = *(a1 + 3);
      if (*(a1 + 3))
      {
        return (*a1 | (*(a1 + 2) << 16) | (v2 << 24)) - 16776961;
      }
    }

    else
    {
      v2 = *(a1 + 3);
      if (*(a1 + 3))
      {
        return (*a1 | (*(a1 + 2) << 16) | (v2 << 24)) - 16776961;
      }
    }
  }

  v4 = *a1;
  v5 = v4 >= 2;
  v6 = (v4 + 2147483646) & 0x7FFFFFFF;
  if (!v5)
  {
    v6 = -1;
  }

  return (v6 + 1);
}

uint64_t storeEnumTagSinglePayload for RoutePickerItemBackgroundView.State(uint64_t result, unsigned int a2, unsigned int a3)
{
  if ((a3 + 33554177) >> 24)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  if (a3 <= 0xFE)
  {
    v3 = 0;
  }

  if (a2 > 0xFE)
  {
    *result = a2 - 255;
    *(result + 2) = (a2 - 255) >> 16;
    if (v3)
    {
      v4 = ((a2 - 255) >> 24) + 1;
      if (v3 == 2)
      {
        *(result + 3) = v4;
      }

      else
      {
        *(result + 3) = v4;
      }
    }
  }

  else
  {
    if (!v3)
    {
      goto LABEL_10;
    }

    if (v3 == 2)
    {
      *(result + 3) = 0;
LABEL_10:
      if (!a2)
      {
        return result;
      }

LABEL_16:
      *result = a2 + 1;
      return result;
    }

    *(result + 3) = 0;
    if (a2)
    {
      goto LABEL_16;
    }
  }

  return result;
}

void sub_1A22C6A88()
{
  v1 = *(v0 + 16);
  v2 = (*((*MEMORY[0x1E69E7D40] & *v1) + 0x60))();
  v3 = sub_1A22C64F4(v2 & 0xFF01);
  [v1 setBackgroundColor_];
}

uint64_t objectdestroy_13Tm()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

unint64_t sub_1A22C6BB4()
{
  result = qword_1EB089D58;
  if (!qword_1EB089D58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB089D58);
  }

  return result;
}

uint64_t sub_1A22C6C20(uint64_t result)
{
  if (result < 0)
  {
    goto LABEL_20;
  }

  v1 = result;
  if (!result)
  {
    v3 = MEMORY[0x1E69E7CC0];
LABEL_17:
    v12 = v3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB089D60, &qword_1A2310108);
    sub_1A22C6F08();
    return sub_1A22E66E8();
  }

  v2 = 0;
  v3 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    if (("ItemBackgroundView" & 0x2F00000000000000) == 0x2000000000000000)
    {
      goto LABEL_5;
    }

    result = sub_1A22E6668();
    if (result < 0)
    {
      break;
    }

    v5 = result;
    if (!result)
    {
      goto LABEL_19;
    }

    v12 = 0;
    MEMORY[0x1A58DCD20](&v12, 8);
    if (v5 > v12 * v5)
    {
      v6 = -v5 % v5;
      while (v6 > v12 * v5)
      {
        v12 = 0;
        MEMORY[0x1A58DCD20](&v12, 8);
      }
    }

    sub_1A22E6678();
    v7 = sub_1A22E66D8();
    v9 = v8;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v3 = sub_1A22C6DFC(0, *(v3 + 2) + 1, 1, v3);
    }

    v11 = *(v3 + 2);
    v10 = *(v3 + 3);
    if (v11 >= v10 >> 1)
    {
      v3 = sub_1A22C6DFC((v10 > 1), v11 + 1, 1, v3);
    }

    *(v3 + 2) = v11 + 1;
    v4 = &v3[16 * v11];
    *(v4 + 4) = v7;
    *(v4 + 5) = v9;
LABEL_5:
    if (++v2 == v1)
    {
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  __break(1u);
  return result;
}

char *sub_1A22C6DFC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB089D68, &qword_1A2310110);
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

unint64_t sub_1A22C6F08()
{
  result = qword_1ED94EAF0;
  if (!qword_1ED94EAF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB089D60, &qword_1A2310108);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED94EAF0);
  }

  return result;
}

id sub_1A22C6F6C(_OWORD *a1)
{
  v1 = a1[3];
  v10 = a1[2];
  v11 = v1;
  v12 = a1[4];
  v2 = a1[1];
  v9[0] = *a1;
  v9[1] = v2;
  v3 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithType_];
  v4 = objc_opt_self();
  v5 = v3;
  v6 = [v4 valueWithCAColorMatrix_];
  [v5 setValue:v6 forKey:*MEMORY[0x1E6979AC0]];

  v7 = sub_1A22E67F8();
  [v5 setValue:v7 forKey:*MEMORY[0x1E69799C0]];

  return v5;
}

id sub_1A22C7064(float a1)
{
  v1 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithType_];
  v2 = sub_1A22E68F8();
  [v1 setValue:v2 forKey:*MEMORY[0x1E6979BA8]];

  return v1;
}

uint64_t sub_1A22C7128(char a1)
{
  v3 = swift_beginAccess();
  v1[24] = a1;
  result = (*(*v1 + 128))(v3);
  if (result)
  {
    v6 = v5;
    ObjectType = swift_getObjectType();
    (*(v6 + 8))(v1[24], ObjectType, v6);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1A22C71D0(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v2[5] = a2;
  swift_unknownObjectWeakAssign();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v4 = v2[5];
    ObjectType = swift_getObjectType();
    v6 = (*(*v2 + 104))();
    (*(v4 + 8))(v6, ObjectType, v4);
    swift_unknownObjectRelease();
  }

  return swift_unknownObjectRelease();
}

void (*sub_1A22C72A0(uint64_t *a1))(uint64_t a1, char a2)
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
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = *(v1 + 40);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v6;
  return sub_1A22C7334;
}

void sub_1A22C7334(uint64_t a1, char a2)
{
  v3 = *a1;
  *(*(*a1 + 40) + 40) = *(*a1 + 32);
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
    if (swift_unknownObjectWeakLoadStrong())
    {
      v4 = v3[5];
      v5 = v4[5];
      ObjectType = swift_getObjectType();
      v7 = (*(*v4 + 104))();
      (*(v5 + 8))(v7, ObjectType, v5);
      swift_unknownObjectRelease();
    }
  }

  free(v3);
}

uint64_t sub_1A22C7430(void *a1)
{
  v2 = swift_allocObject();
  *(v2 + 40) = 0;
  swift_unknownObjectWeakInit();
  *(v2 + 16) = a1;
  v3 = MEMORY[0x1E69E7D40];
  v4 = *((*MEMORY[0x1E69E7D40] & *a1) + 0x110);
  v5 = a1;
  *(v2 + 24) = v4();
  v6 = *((*v3 & *v5) + 0x140);

  v6(v7, &off_1F14432C8);

  return v2;
}

uint64_t sub_1A22C753C(void *a1)
{
  v2 = v1;
  *(v1 + 40) = 0;
  swift_unknownObjectWeakInit();
  *(v1 + 16) = a1;
  v4 = MEMORY[0x1E69E7D40];
  v5 = *((*MEMORY[0x1E69E7D40] & *a1) + 0x110);
  v6 = a1;
  *(v2 + 24) = v5();
  v7 = *((*v4 & *v6) + 0x140);

  v7(v8, &off_1F14432C8);

  return v2;
}

uint64_t sub_1A22C76BC()
{
  sub_1A210DA3C(v0 + 32);

  return MEMORY[0x1EEE6BDC0](v0, 48, 7);
}

uint64_t sub_1A22C76FC(uint64_t a1, char a2)
{
  v4 = swift_beginAccess();
  v2[24] = a2;
  result = (*(*v2 + 128))(v4);
  if (result)
  {
    v7 = v6;
    ObjectType = swift_getObjectType();
    (*(v7 + 8))(v2[24], ObjectType, v7);
    return swift_unknownObjectRelease();
  }

  return result;
}

double sub_1A22C7854@<D0>(uint64_t a1@<X8>)
{
  v2 = *(type metadata accessor for SessionHeaderView.ViewModel(0) + 32);
  v3 = type metadata accessor for SessionAccessoryView.ViewModel(0);
  (*(*(v3 - 8) + 56))(a1 + v2, 1, 1, v3);
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0xE000000000000000;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  return result;
}

uint64_t sub_1A22C78D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, uint64_t a10)
{
  *a9 = a1;
  a9[1] = a2;
  a9[2] = a3;
  a9[3] = a4;
  a9[4] = a5;
  a9[5] = a6;
  a9[6] = a7;
  a9[7] = a8;
  v10 = a9 + *(type metadata accessor for SessionHeaderView.ViewModel(0) + 32);

  return sub_1A22C792C(a10, v10);
}

uint64_t sub_1A22C792C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB089540, &unk_1A230FE80);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A22C79A4@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for SessionHeaderView.ViewModel(0);
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

id sub_1A22C7A10(uint64_t a1)
{
  v54 = a1;
  v2 = type metadata accessor for SessionAccessoryView.ViewModel(0);
  v48 = *(v2 - 8);
  v49 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v43 = &v42 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB089D80, &qword_1A23103C8);
  MEMORY[0x1EEE9AC00](v46);
  v50 = &v42 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB089540, &unk_1A230FE80);
  v6 = MEMORY[0x1EEE9AC00](v5 - 8);
  v47 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v51 = &v42 - v9;
  MEMORY[0x1EEE9AC00](v8);
  v52 = &v42 - v10;
  v11 = type metadata accessor for SessionHeaderView.ViewModel(0);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v44 = (&v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB088BE0, &unk_1A230A110);
  v15 = MEMORY[0x1EEE9AC00](v14 - 8);
  v45 = &v42 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v18 = (&v42 - v17);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB089D88, qword_1A23103D0);
  v20 = v19 - 8;
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v42 - v21;
  v53 = v1;
  v23 = v1 + OBJC_IVAR____TtC13MediaControls17SessionHeaderView_viewModel;
  swift_beginAccess();
  v24 = *(v20 + 56);
  sub_1A2214CF8(v23, v22, &qword_1EB088BE0, &unk_1A230A110);
  sub_1A2214CF8(v54, &v22[v24], &qword_1EB088BE0, &unk_1A230A110);
  v25 = *(v12 + 48);
  if (v25(v22, 1, v11) == 1)
  {
    if (v25(&v22[v24], 1, v11) == 1)
    {
      return sub_1A210D9B0(v22, &qword_1EB088BE0, &unk_1A230A110);
    }
  }

  else
  {
    sub_1A2214CF8(v22, v18, &qword_1EB088BE0, &unk_1A230A110);
    if (v25(&v22[v24], 1, v11) != 1)
    {
      v31 = v44;
      sub_1A22CD140(&v22[v24], v44, type metadata accessor for SessionHeaderView.ViewModel);
      v32 = sub_1A22CC524(v18, v31);
      sub_1A22CD064(v31, type metadata accessor for SessionHeaderView.ViewModel);
      sub_1A22CD064(v18, type metadata accessor for SessionHeaderView.ViewModel);
      result = sub_1A210D9B0(v22, &qword_1EB088BE0, &unk_1A230A110);
      v27 = v52;
      if (v32)
      {
        return result;
      }

      goto LABEL_7;
    }

    sub_1A22CD064(v18, type metadata accessor for SessionHeaderView.ViewModel);
  }

  sub_1A210D9B0(v22, &qword_1EB089D88, qword_1A23103D0);
  v27 = v52;
LABEL_7:
  sub_1A22CAA18();
  sub_1A22CBB98();
  if (v25(v23, 1, v11))
  {
    v29 = v48;
    v28 = v49;
    (*(v48 + 56))(v27, 1, 1, v49);
    v30 = v50;
  }

  else
  {
    sub_1A2214CF8(v23 + *(v11 + 32), v27, &qword_1EB089540, &unk_1A230FE80);
    v28 = v49;
    v30 = v50;
    v29 = v48;
  }

  v33 = v45;
  sub_1A2214CF8(v54, v45, &qword_1EB088BE0, &unk_1A230A110);
  if (v25(v33, 1, v11) == 1)
  {
    sub_1A210D9B0(v33, &qword_1EB088BE0, &unk_1A230A110);
    v34 = v51;
    (*(v29 + 56))(v51, 1, 1, v28);
  }

  else
  {
    v35 = v33 + *(v11 + 32);
    v34 = v51;
    sub_1A2214CF8(v35, v51, &qword_1EB089540, &unk_1A230FE80);
    sub_1A22CD064(v33, type metadata accessor for SessionHeaderView.ViewModel);
  }

  v36 = v47;
  v37 = *(v46 + 48);
  sub_1A2214CF8(v27, v30, &qword_1EB089540, &unk_1A230FE80);
  sub_1A2214CF8(v34, v30 + v37, &qword_1EB089540, &unk_1A230FE80);
  v38 = *(v29 + 48);
  if (v38(v30, 1, v28) == 1)
  {
    sub_1A210D9B0(v34, &qword_1EB089540, &unk_1A230FE80);
    sub_1A210D9B0(v27, &qword_1EB089540, &unk_1A230FE80);
    if (v38(v30 + v37, 1, v28) == 1)
    {
      return sub_1A210D9B0(v30, &qword_1EB089540, &unk_1A230FE80);
    }

    goto LABEL_20;
  }

  sub_1A2214CF8(v30, v36, &qword_1EB089540, &unk_1A230FE80);
  if (v38(v30 + v37, 1, v28) == 1)
  {
    sub_1A210D9B0(v51, &qword_1EB089540, &unk_1A230FE80);
    sub_1A210D9B0(v52, &qword_1EB089540, &unk_1A230FE80);
    sub_1A22CD064(v36, type metadata accessor for SessionAccessoryView.ViewModel);
LABEL_20:
    sub_1A210D9B0(v30, &qword_1EB089D80, &qword_1A23103C8);
    result = v53;
    return [result layoutIfNeeded];
  }

  v39 = v30 + v37;
  v40 = v43;
  sub_1A22CD140(v39, v43, type metadata accessor for SessionAccessoryView.ViewModel);
  sub_1A2129D04();
  v41 = sub_1A22E6568();
  sub_1A22CD064(v40, type metadata accessor for SessionAccessoryView.ViewModel);
  sub_1A210D9B0(v51, &qword_1EB089540, &unk_1A230FE80);
  sub_1A210D9B0(v52, &qword_1EB089540, &unk_1A230FE80);
  sub_1A22CD064(v36, type metadata accessor for SessionAccessoryView.ViewModel);
  sub_1A210D9B0(v30, &qword_1EB089540, &unk_1A230FE80);
  result = v53;
  if ((v41 & 1) == 0)
  {
    return [result layoutIfNeeded];
  }

  return result;
}

uint64_t sub_1A22C81F0@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC13MediaControls17SessionHeaderView_viewModel;
  swift_beginAccess();
  return sub_1A2214CF8(v1 + v3, a1, &qword_1EB088BE0, &unk_1A230A110);
}

uint64_t sub_1A22C8258(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB088BE0, &unk_1A230A110);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v8[-v4];
  v6 = OBJC_IVAR____TtC13MediaControls17SessionHeaderView_viewModel;
  swift_beginAccess();
  sub_1A2214CF8(v1 + v6, v5, &qword_1EB088BE0, &unk_1A230A110);
  swift_beginAccess();
  sub_1A22CC8F8(a1, v1 + v6);
  swift_endAccess();
  sub_1A22C7A10(v5);
  sub_1A210D9B0(a1, &qword_1EB088BE0, &unk_1A230A110);
  return sub_1A210D9B0(v5, &qword_1EB088BE0, &unk_1A230A110);
}

void (*sub_1A22C8364(uint64_t *a1))(char **a1, char a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB088BE0, &unk_1A230A110) - 8) + 64);
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
  v9 = OBJC_IVAR____TtC13MediaControls17SessionHeaderView_viewModel;
  v5[12] = v7;
  v5[13] = v9;
  swift_beginAccess();
  sub_1A2214CF8(v1 + v9, v8, &qword_1EB088BE0, &unk_1A230A110);
  return sub_1A22C8494;
}

void sub_1A22C8494(char **a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 12);
  v4 = *(*a1 + 13);
  v5 = *(*a1 + 10);
  v6 = *(*a1 + 11);
  v7 = *(*a1 + 9);
  if (a2)
  {
    sub_1A2214CF8(*(*a1 + 12), v6, &qword_1EB088BE0, &unk_1A230A110);
    sub_1A2214CF8(v7 + v4, v5, &qword_1EB088BE0, &unk_1A230A110);
    swift_beginAccess();
    sub_1A22CC8F8(v6, v7 + v4);
    swift_endAccess();
    sub_1A22C7A10(v5);
    sub_1A210D9B0(v5, &qword_1EB088BE0, &unk_1A230A110);
  }

  else
  {
    sub_1A2214CF8(v7 + v4, v6, &qword_1EB088BE0, &unk_1A230A110);
    swift_beginAccess();
    sub_1A22CC8F8(v3, v7 + v4);
    swift_endAccess();
    sub_1A22C7A10(v6);
  }

  sub_1A210D9B0(v6, &qword_1EB088BE0, &unk_1A230A110);
  sub_1A210D9B0(v3, &qword_1EB088BE0, &unk_1A230A110);
  free(v3);
  free(v6);
  free(v5);

  free(v2);
}

uint64_t sub_1A22C8600(char a1)
{
  if (a1 == 2)
  {
    return 0x79616C50776F6E2ELL;
  }

  if (a1 == 3)
  {
    return 0x6C6E4F747865742ELL;
  }

  v2 = (a1 & 1) == 0;
  if (a1)
  {
    v3 = 1702195828;
  }

  else
  {
    v3 = 0x65736C6166;
  }

  if (v2)
  {
    v4 = 0xE500000000000000;
  }

  else
  {
    v4 = 0xE400000000000000;
  }

  MEMORY[0x1A58DA8D0](v3, v4);

  return 0x287473696C2ELL;
}

uint64_t sub_1A22C86CC(uint64_t a1, char a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB089D70, qword_1A23101B0);
  v5 = MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v12 - v6;
  v8 = *(v5 + 56);
  *(&v12 - v6) = a2;
  sub_1A22CCFFC(a1, &v12 + v8 - v6, type metadata accessor for SessionAccessoryView.ViewModel);
  if (a2 == 2)
  {
    type metadata accessor for SessionAccessoryView.ViewModel(0);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if ((EnumCaseMultiPayload - 2) >= 2)
    {
      if (EnumCaseMultiPayload)
      {
        goto LABEL_3;
      }

      goto LABEL_9;
    }
  }

  else
  {
    if (a2 == 3)
    {
LABEL_3:
      sub_1A210D9B0(v7, &qword_1EB089D70, qword_1A23101B0);
      return 0;
    }

    type metadata accessor for SessionAccessoryView.ViewModel(0);
    v11 = swift_getEnumCaseMultiPayload();
    if ((v11 - 2) >= 2)
    {
      if (!v11)
      {
        goto LABEL_3;
      }

LABEL_9:
      sub_1A22CD064(&v7[v8], type metadata accessor for SessionAccessoryView.ViewModel);
    }
  }

  return 1;
}

uint64_t sub_1A22C8810()
{
  v1 = *v0;
  if (v1 == 2)
  {
    return 0x79616C50776F6E2ELL;
  }

  if (v1 == 3)
  {
    return 0x6C6E4F747865742ELL;
  }

  if (v1)
  {
    v3 = 1702195828;
  }

  else
  {
    v3 = 0x65736C6166;
  }

  if (v1)
  {
    v4 = 0xE400000000000000;
  }

  else
  {
    v4 = 0xE500000000000000;
  }

  MEMORY[0x1A58DA8D0](v3, v4);

  return 0x287473696C2ELL;
}

uint64_t sub_1A22C88D8()
{
  v1 = OBJC_IVAR____TtC13MediaControls17SessionHeaderView_layout;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_1A22C891C(int a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC13MediaControls17SessionHeaderView_layout;
  swift_beginAccess();
  v5 = *(v2 + v4);
  *(v2 + v4) = a1;
  if (a1 == 2)
  {
    if (v5 == 2)
    {
      return;
    }
  }

  else if (a1 == 3)
  {
    if (v5 == 3)
    {
      return;
    }
  }

  else if ((v5 & 0xFE) != 2 && ((v5 ^ a1) & 1) == 0)
  {
    return;
  }

  sub_1A22CAA18();
  v6 = sub_1A22CB424();
  v7 = *(v2 + OBJC_IVAR____TtC13MediaControls17SessionHeaderView_accessoryView);
  v8 = MEMORY[0x1E69E7D40];
  if ((*((*MEMORY[0x1E69E7D40] & *v2) + 0x110))(v6))
  {
    v9 = sub_1A22CC0BC();
  }

  else
  {
    v9 = 0;
  }

  (*((*v8 & *v7) + 0xB0))(v9 & 1);
  sub_1A22CBB98();
}

void (*sub_1A22C8A58(uint64_t *a1))(uint64_t a1, char a2)
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
  v5 = OBJC_IVAR____TtC13MediaControls17SessionHeaderView_layout;
  *(v3 + 24) = v1;
  *(v3 + 32) = v5;
  swift_beginAccess();
  *(v4 + 40) = *(v1 + v5);
  return sub_1A22C8AEC;
}

void sub_1A22C8AEC(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 40);
  v5 = *(*a1 + 24);
  v4 = *(*a1 + 32);
  v6 = *(v5 + v4);
  *(v5 + v4) = v3;
  if (a2)
  {
    if (v3 != 2)
    {
      if (v3 == 3)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }

LABEL_11:
    if (v6 == 2)
    {
      goto LABEL_16;
    }

    goto LABEL_12;
  }

  if (v3 == 2)
  {
    goto LABEL_11;
  }

  if (v3 == 3)
  {
LABEL_4:
    if (v6 == 3)
    {
      goto LABEL_16;
    }

LABEL_12:
    v7 = v2[3];
    sub_1A22CAA18();
    v8 = sub_1A22CB424();
    v9 = *(v7 + OBJC_IVAR____TtC13MediaControls17SessionHeaderView_accessoryView);
    v10 = MEMORY[0x1E69E7D40];
    if ((*((*MEMORY[0x1E69E7D40] & *v7) + 0x110))(v8))
    {
      v11 = sub_1A22CC0BC();
    }

    else
    {
      v11 = 0;
    }

    (*((*v10 & *v9) + 0xB0))(v11 & 1);
    sub_1A22CBB98();
    goto LABEL_16;
  }

LABEL_8:
  if (v6 & 0xFE) == 2 || ((v6 ^ v3))
  {
    goto LABEL_12;
  }

LABEL_16:

  free(v2);
}

id sub_1A22C8C48()
{
  v1 = *(v0 + 8);

  return v1;
}

void sub_1A22C8CBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  *(v4 + 8) = a1;
  *(v4 + 16) = a2;
  *(v4 + 24) = a3;
  *(v4 + 28) = BYTE4(a3) & 1;
  *(v4 + 32) = a4;
}

id sub_1A22C8D28()
{
  v1 = *(v0 + 40);

  return v1;
}

void sub_1A22C8D9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  *(v4 + 40) = a1;
  *(v4 + 48) = a2;
  *(v4 + 56) = a3;
  *(v4 + 60) = BYTE4(a3) & 1;
  *(v4 + 64) = a4;
}

void sub_1A22C8E24(double a1, double a2, double a3, double a4)
{
  v4[9] = a1;
  v4[10] = a2;
  v4[11] = a3;
  v4[12] = a4;
}

id sub_1A22C8E6C()
{
  v0 = *MEMORY[0x1E69DDD80];
  sub_1A211476C();
  v2 = v1;
  v6 = sub_1A21146A4(v1, v4, *MEMORY[0x1E69DB980], v3 | ((HIDWORD(v3) & 1) << 32), v5);

  return v6;
}

uint64_t sub_1A22C8F5C@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, double a10@<D0>, double a11@<D1>, double a12@<D2>, double a13@<D3>, double a14@<D4>, uint64_t a15)
{
  *a9 = result & 1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 28) = BYTE4(a4) & 1;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;
  *(a9 + 56) = a8;
  *(a9 + 60) = BYTE4(a8) & 1;
  *(a9 + 64) = a15;
  *(a9 + 72) = a10;
  *(a9 + 80) = a11;
  *(a9 + 88) = a12;
  *(a9 + 96) = a13;
  *(a9 + 104) = a14;
  return result;
}

double sub_1A22C8FB8@<D0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x1E69DDD80];
  sub_1A211476C();
  v4 = v3;
  v8 = sub_1A21146A4(v3, v6, *MEMORY[0x1E69DB980], v5 | ((HIDWORD(v5) & 1) << 32), v7);
  v10 = v9;
  v12 = v11;
  v14 = v13;

  sub_1A211476C();
  *a1 = 1;
  *(a1 + 8) = v8;
  *(a1 + 16) = v10;
  *(a1 + 24) = v12;
  *(a1 + 28) = BYTE4(v12) & 1;
  *(a1 + 32) = v14;
  *(a1 + 40) = v16;
  *(a1 + 48) = v17;
  *(a1 + 56) = v18;
  *(a1 + 60) = v15 & 1;
  *(a1 + 64) = v19;
  result = 0.0;
  *(a1 + 72) = xmmword_1A23101A0;
  *(a1 + 88) = xmmword_1A23101A0;
  *(a1 + 104) = 0x403A000000000000;
  return result;
}

__n128 sub_1A22C90C8@<Q0>(__n128 *a1@<X8>)
{
  v3 = (v1 + OBJC_IVAR____TtC13MediaControls17SessionHeaderView_style);
  swift_beginAccess();
  v4 = v3[5];
  v15 = v3[4];
  v16 = v4;
  v17 = v3[6];
  v5 = v3[1];
  v11 = *v3;
  v12 = v5;
  v6 = v3[3];
  v13 = v3[2];
  v14 = v6;
  sub_1A22CC968(&v11, v10);
  v7 = v16;
  a1[4] = v15;
  a1[5] = v7;
  a1[6] = v17;
  v8 = v12;
  *a1 = v11;
  a1[1] = v8;
  result = v14;
  a1[2] = v13;
  a1[3] = result;
  return result;
}

uint64_t sub_1A22C9168(_OWORD *a1)
{
  v3 = (v1 + OBJC_IVAR____TtC13MediaControls17SessionHeaderView_style);
  swift_beginAccess();
  v4 = v3[5];
  v12[4] = v3[4];
  v12[5] = v4;
  v12[6] = v3[6];
  v5 = v3[1];
  v12[0] = *v3;
  v12[1] = v5;
  v6 = v3[3];
  v12[2] = v3[2];
  v12[3] = v6;
  v7 = a1[1];
  *v3 = *a1;
  v3[1] = v7;
  v8 = a1[6];
  v3[5] = a1[5];
  v3[6] = v8;
  v9 = a1[4];
  v3[3] = a1[3];
  v3[4] = v9;
  v3[2] = a1[2];
  sub_1A22CC968(a1, v11);
  sub_1A22CC9A0(v12);
  sub_1A22CB424();
  sub_1A22CB5E0();
  sub_1A22CBB98();
  return sub_1A22CC9A0(a1);
}

id (*sub_1A22C9224(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1A22C9288;
}

id sub_1A22C9288(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    sub_1A22CB424();
    sub_1A22CB5E0();
    return sub_1A22CBB98();
  }

  return result;
}

id sub_1A22C92C8()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  v1 = sub_1A2114DFC();

  return v1;
}

id sub_1A22C9310()
{
  type metadata accessor for SessionAccessoryView(0);
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

double sub_1A22C935C()
{
  swift_beginAccess();

  return result;
}

double sub_1A22C93A4(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC13MediaControls17SessionHeaderView_visualStylingProvider;
  swift_beginAccess();
  *(v1 + v3) = a1;
  swift_retain_n();

  (*((*MEMORY[0x1E69E7D40] & **(v1 + OBJC_IVAR____TtC13MediaControls17SessionHeaderView_accessoryView)) + 0xE0))(a1);
  sub_1A22CB86C();

  return result;
}

uint64_t (*sub_1A22C9464(uint64_t *a1))()
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
  v4 = OBJC_IVAR____TtC13MediaControls17SessionHeaderView_visualStylingProvider;
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  swift_beginAccess();
  return sub_1A22C94EC;
}

void sub_1A22C94EC(void *a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = *((*MEMORY[0x1E69E7D40] & **(v3[3] + OBJC_IVAR____TtC13MediaControls17SessionHeaderView_accessoryView)) + 0xE0);

    v4(v5);
    sub_1A22CB86C();
  }

  free(v3);
}

double sub_1A22C9594()
{
  v1 = OBJC_IVAR____TtC13MediaControls17SessionHeaderView_fontScale;
  swift_beginAccess();
  return *(v0 + v1);
}

id sub_1A22C95D8(double a1)
{
  v3 = OBJC_IVAR____TtC13MediaControls17SessionHeaderView_fontScale;
  swift_beginAccess();
  *(v1 + v3) = a1;
  return sub_1A22CB5E0();
}

id (*sub_1A22C962C(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1A22C9690;
}

id sub_1A22C9690(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return sub_1A22CB5E0();
  }

  return result;
}

uint64_t sub_1A22C96C4()
{
  v1 = OBJC_IVAR____TtC13MediaControls17SessionHeaderView_onScreen;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1A22C9708(char a1)
{
  v3 = OBJC_IVAR____TtC13MediaControls17SessionHeaderView_onScreen;
  swift_beginAccess();
  *(v1 + v3) = a1;
  v4 = sub_1A22CB424();
  v5 = *(v1 + OBJC_IVAR____TtC13MediaControls17SessionHeaderView_accessoryView);
  v6 = MEMORY[0x1E69E7D40];
  if ((*((*MEMORY[0x1E69E7D40] & *v1) + 0x110))(v4))
  {
    v7 = sub_1A22CC0BC();
  }

  else
  {
    v7 = 0;
  }

  return (*((*v6 & *v5) + 0xB0))(v7 & 1);
}

uint64_t (*sub_1A22C97F4(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1A22C9858;
}

uint64_t sub_1A22C9858(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v5 = *(a1 + 24);
    v6 = sub_1A22CB424();
    v7 = *(v5 + OBJC_IVAR____TtC13MediaControls17SessionHeaderView_accessoryView);
    v8 = MEMORY[0x1E69E7D40];
    if ((*((*MEMORY[0x1E69E7D40] & *v5) + 0x110))(v6))
    {
      v9 = sub_1A22CC0BC();
    }

    else
    {
      v9 = 0;
    }

    return (*((*v8 & *v7) + 0xB0))(v9 & 1);
  }

  return result;
}

id sub_1A22C9968()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SessionHeaderView(0);
  return objc_msgSendSuper2(&v2, sel_isHighlighted);
}

id sub_1A22C9A28(char a1)
{
  v3 = type metadata accessor for SessionHeaderView(0);
  v7.receiver = v1;
  v7.super_class = v3;
  v4 = objc_msgSendSuper2(&v7, sel_isHighlighted);
  v6.receiver = v1;
  v6.super_class = v3;
  objc_msgSendSuper2(&v6, sel_setHighlighted_, a1 & 1);
  return sub_1A22C9A9C(v4);
}

id sub_1A22C9A9C(char a1)
{
  v2 = a1 & 1;
  result = [v1 isHighlighted];
  if (result != v2)
  {
    v4 = [v1 isHighlighted];
    sub_1A2115288(0, &qword_1ED94E980, 0x1E69DD250);
    if (v4)
    {
      sub_1A2126CF0(v9);
      v5 = swift_allocObject();
      *(v5 + 16) = v1;
      v6 = v1;
      v7 = sub_1A22CD0CC;
    }

    else
    {
      sub_1A229BE74(v9);
      v5 = swift_allocObject();
      *(v5 + 16) = v1;
      v8 = v1;
      v7 = sub_1A22CD0C4;
    }

    sub_1A21179EC(v9, v7, v5, 0, 0);

    return sub_1A2116928(v9);
  }

  return result;
}

char *sub_1A22C9BE8(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v10 = OBJC_IVAR____TtC13MediaControls17SessionHeaderView_viewModel;
  v11 = type metadata accessor for SessionHeaderView.ViewModel(0);
  (*(*(v11 - 8) + 56))(&v5[v10], 1, 1, v11);
  v5[OBJC_IVAR____TtC13MediaControls17SessionHeaderView_layout] = 2;
  v12 = &v5[OBJC_IVAR____TtC13MediaControls17SessionHeaderView_style];
  v13 = *MEMORY[0x1E69DDD80];
  sub_1A211476C();
  v15 = v14;
  v19 = sub_1A21146A4(v14, v17, *MEMORY[0x1E69DB980], v16 | ((HIDWORD(v16) & 1) << 32), v18);
  v21 = v20;
  v23 = v22;
  v25 = v24;

  v49 = BYTE4(v23) & 1;
  sub_1A211476C();
  v48 = v26 & 1;
  *v12 = 1;
  *(v12 + 1) = v19;
  *(v12 + 2) = v21;
  *(v12 + 6) = v23;
  v12[28] = BYTE4(v23) & 1;
  *(v12 + 4) = v25;
  *(v12 + 5) = v27;
  *(v12 + 6) = v28;
  *(v12 + 14) = v29;
  v12[60] = v26 & 1;
  *(v12 + 8) = v30;
  *(v12 + 72) = xmmword_1A23101A0;
  *(v12 + 88) = xmmword_1A23101A0;
  *(v12 + 13) = 0x403A000000000000;
  v31 = OBJC_IVAR____TtC13MediaControls17SessionHeaderView_titleLabel;
  v32 = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  v33 = sub_1A2114DFC();

  *&v5[v31] = v33;
  v34 = OBJC_IVAR____TtC13MediaControls17SessionHeaderView_subtitleLabel;
  v35 = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  v36 = sub_1A2114DFC();

  *&v5[v34] = v36;
  v37 = OBJC_IVAR____TtC13MediaControls17SessionHeaderView_accessoryView;
  type metadata accessor for SessionAccessoryView(0);
  *&v5[v37] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *&v5[OBJC_IVAR____TtC13MediaControls17SessionHeaderView_visualStylingProvider] = 0;
  *&v5[OBJC_IVAR____TtC13MediaControls17SessionHeaderView_fontScale] = 0x3FF0000000000000;
  v5[OBJC_IVAR____TtC13MediaControls17SessionHeaderView_onScreen] = 0;
  v47.receiver = v5;
  v47.super_class = type metadata accessor for SessionHeaderView(0);
  v38 = objc_msgSendSuper2(&v47, sel_initWithFrame_, a1, a2, a3, a4);
  v39 = OBJC_IVAR____TtC13MediaControls17SessionHeaderView_titleLabel;
  v40 = *&v38[OBJC_IVAR____TtC13MediaControls17SessionHeaderView_titleLabel];
  v41 = v38;
  [v40 setMarqueeEnabled_];
  [v41 addSubview_];
  v42 = OBJC_IVAR____TtC13MediaControls17SessionHeaderView_subtitleLabel;
  [*&v41[OBJC_IVAR____TtC13MediaControls17SessionHeaderView_subtitleLabel] setMarqueeEnabled_];
  [v41 addSubview_];
  [v41 addSubview_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB088D20, &qword_1A230A680);
  v43 = swift_allocObject();
  *(v43 + 16) = xmmword_1A2308E80;
  v44 = sub_1A22E6378();
  v45 = MEMORY[0x1E69DC2B0];
  *(v43 + 32) = v44;
  *(v43 + 40) = v45;
  MEMORY[0x1A58DAE60](v43, sel_updateContentSizeCategory);
  swift_unknownObjectRelease();

  sub_1A2115288(0, &qword_1ED94EA40, 0x1E69DD1B8);
  sub_1A22E6B58();
  MEMORY[0x1A58DAE60]();
  swift_unknownObjectRelease();

  sub_1A22CB424();
  sub_1A22CB5E0();
  sub_1A22CB86C();
  sub_1A22CBB98();

  return v41;
}

id sub_1A22C9FD4()
{
  [*&v0[OBJC_IVAR____TtC13MediaControls17SessionHeaderView_titleLabel] setMarqueeRunning_];
  [*&v0[OBJC_IVAR____TtC13MediaControls17SessionHeaderView_subtitleLabel] setMarqueeRunning_];
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SessionHeaderView(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_1A22CA18C()
{
  v1 = v0;
  v99.receiver = v0;
  v99.super_class = type metadata accessor for SessionHeaderView(0);
  objc_msgSendSuper2(&v99, sel_layoutSubviews);
  [v0 bounds];
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = *(v0 + OBJC_IVAR____TtC13MediaControls17SessionHeaderView_accessoryView);
  [v10 sizeThatFits_];
  v12 = v11;
  v14 = v13;
  v116.origin.x = v3;
  v116.origin.y = v5;
  v116.size.width = v7;
  v116.size.height = v9;
  v15 = CGRectGetMaxX(v116) - v12;
  [v1 bounds];
  sub_1A210F570(v16, v17, v18, v19, v15, 0.0, v12, v14);
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v27 = v26;
  [v1 bounds];
  v111 = v28;
  v112 = v29;
  v113 = v30;
  v114 = v31;
  v115 = 0;
  sub_1A22E6BA8();
  [v10 setFrame_];
  if (sub_1A22CC0BC())
  {
    v117.origin.x = v21;
    v117.origin.y = v23;
    v117.size.width = v25;
    v117.size.height = v27;
    CGRectGetWidth(v117);
    (*((*MEMORY[0x1E69E7D40] & *v1) + 0xC8))(v100);
    sub_1A22CC9A0(v100);
    sub_1A2209D24();
    sub_1A2209D24();
    sub_1A2209D24();
    sub_1A2127EF0();
    v3 = v32;
    v5 = v33;
    v7 = v34;
    v9 = v35;
  }

  v36 = *(v1 + OBJC_IVAR____TtC13MediaControls17SessionHeaderView_titleLabel);
  sub_1A22CA69C();
  v38 = v37;
  v40 = v39;
  v41 = *(v1 + OBJC_IVAR____TtC13MediaControls17SessionHeaderView_subtitleLabel);
  sub_1A22CA69C();
  v43 = v42;
  v45 = v44;
  v46 = sub_1A22CBC48();
  v47 = sub_1A22CBE88();
  if (v46)
  {
    if (!v47)
    {
      v118.origin.x = v3;
      v118.origin.y = v5;
      v118.size.width = v7;
      v118.size.height = v9;
      MinX = CGRectGetMinX(v118);
      [v1 bounds];
      sub_1A210F570(v49, v50, v51, v52, MinX, 0.0, v38, v40);
      v54 = v53;
      v56 = v55;
      v58 = v57;
      v60 = v59;
      [v1 bounds];
      v106 = v61;
      v107 = v62;
      v108 = v63;
      v109 = v64;
      v110 = 0;
      sub_1A22E6BA8();
      [v36 setFrame_];
      v119.origin.x = v3;
      v119.origin.y = v5;
      v119.size.width = v7;
      v119.size.height = v9;
      CGRectGetMinX(v119);
      v120.origin.x = v54;
      v120.origin.y = v56;
      v120.size.width = v58;
      v120.size.height = v60;
      CGRectGetMaxY(v120);
      [v1 bounds];
      v101 = v65;
      v102 = v66;
      v103 = v67;
      v104 = v68;
      v105 = 0;
LABEL_9:
      sub_1A22E6BA8();
      return [v41 setFrame_];
    }

LABEL_8:
    [v1 bounds];
    v106 = v90;
    v107 = v91;
    v108 = v92;
    v109 = v93;
    v110 = 0;
    sub_1A22E6BA8();
    [v36 setFrame_];
    v124.origin.x = v3;
    v124.origin.y = v5;
    v124.size.width = v7;
    v124.size.height = v9;
    CGRectGetMinX(v124);
    v125.origin.x = v3;
    v125.origin.y = v5;
    v125.size.width = v7;
    v125.size.height = v9;
    CGRectGetMaxY(v125);
    [v1 bounds];
    v101 = v94;
    v102 = v95;
    v103 = v96;
    v104 = v97;
    v105 = 0;
    goto LABEL_9;
  }

  if (!v47)
  {
    goto LABEL_8;
  }

  v121.origin.x = v3;
  v121.origin.y = v5;
  v121.size.width = v7;
  v121.size.height = v9;
  v69 = CGRectGetMinX(v121);
  [v1 bounds];
  sub_1A210F570(v70, v71, v72, v73, v69, 0.0, v43, v45);
  v75 = v74;
  v77 = v76;
  v79 = v78;
  v81 = v80;
  [v1 bounds];
  v106 = v82;
  v107 = v83;
  v108 = v84;
  v109 = v85;
  v110 = 0;
  sub_1A22E6BA8();
  [v41 setFrame_];
  v122.origin.x = v3;
  v122.origin.y = v5;
  v122.size.width = v7;
  v122.size.height = v9;
  CGRectGetMinX(v122);
  v123.origin.x = v75;
  v123.origin.y = v77;
  v123.size.width = v79;
  v123.size.height = v81;
  CGRectGetMinY(v123);
  [v1 bounds];
  v101 = v86;
  v102 = v87;
  v103 = v88;
  v104 = v89;
  v105 = 0;
  sub_1A22E6BA8();
  v41 = v36;
  return [v41 setFrame_];
}

void sub_1A22CA69C()
{
  [v0 sizeThatFits_];
  v1 = [v0 font];
  if (v1)
  {
    v2 = v1;
    [v1 lineHeight];
  }

  else
  {
    __break(1u);
  }
}

double sub_1A22CA7A8(double a1)
{
  sub_1A22CA69C();
  sub_1A22CA69C();
  return a1;
}

id sub_1A22CA894(uint64_t a1, uint64_t a2)
{
  (*((*MEMORY[0x1E69E7D40] & *v2) + 0xC8))(v7);
  sub_1A22CC9A0(v7);
  if (v7[0])
  {
    return 0;
  }

  v6.receiver = v2;
  v6.super_class = type metadata accessor for SessionHeaderView(0);
  return objc_msgSendSuper2(&v6, sel_beginTrackingWithTouch_withEvent_, a1, a2);
}

id sub_1A22CAA18()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB089540, &unk_1A230FE80);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v69 - v3;
  v5 = type metadata accessor for SessionHeaderView.ViewModel(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v73 = &v69 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v69 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB088BE0, &unk_1A230A110);
  v12 = MEMORY[0x1EEE9AC00](v11 - 8);
  v75 = &v69 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = &v69 - v15;
  v17 = MEMORY[0x1EEE9AC00](v14);
  v71 = &v69 - v18;
  v19 = MEMORY[0x1EEE9AC00](v17);
  v72 = &v69 - v20;
  v21 = MEMORY[0x1EEE9AC00](v19);
  v23 = &v69 - v22;
  v74 = *(v0 + OBJC_IVAR____TtC13MediaControls17SessionHeaderView_titleLabel);
  v24 = MEMORY[0x1E69E7D40];
  v25 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x98);
  v79 = (*MEMORY[0x1E69E7D40] & *v0) + 152;
  v80 = v25;
  (v25)(v21);
  v26 = *(v6 + 48);
  v77 = v5;
  v78 = v26;
  v27 = (v6 + 48);
  v28 = v26(v23, 1, v5);
  v76 = v10;
  if (v28)
  {
    v29 = v24;
    sub_1A210D9B0(v23, &qword_1EB088BE0, &unk_1A230A110);
    v30 = 0;
  }

  else
  {
    v70 = v4;
    sub_1A22CCFFC(v23, v10, type metadata accessor for SessionHeaderView.ViewModel);
    v31 = sub_1A210D9B0(v23, &qword_1EB088BE0, &unk_1A230A110);
    v29 = v24;
    v32 = (*((*v24 & *v0) + 0xB0))(v31);
    v33 = [v1 traitCollection];
    sub_1A22CB338(v32, v33);
    v35 = v34;

    sub_1A22CD064(v10, type metadata accessor for SessionHeaderView.ViewModel);
    if (v35)
    {
      v30 = sub_1A22E6598();
    }

    else
    {
      v30 = 0;
    }

    v4 = v70;
  }

  v36 = v27;
  [v74 setText_];

  v37 = v29;
  v38 = *((*v29 & *v1) + 0xB0);
  v39 = v38();
  if ((v39 & 0xFE) == 2 || (v39 & 1) == 0)
  {
    goto LABEL_12;
  }

  v40 = v72;
  v80();
  if (v78(v40, 1, v77))
  {
    v41 = v40;
LABEL_11:
    v39 = sub_1A210D9B0(v41, &qword_1EB088BE0, &unk_1A230A110);
    goto LABEL_12;
  }

  v55 = v76;
  sub_1A22CCFFC(v40, v76, type metadata accessor for SessionHeaderView.ViewModel);
  sub_1A210D9B0(v40, &qword_1EB088BE0, &unk_1A230A110);
  v70 = v4;
  v56 = *(v55 + 32);
  v57 = *(v55 + 40);

  v58 = v55;
  v37 = MEMORY[0x1E69E7D40];
  sub_1A22CD064(v58, type metadata accessor for SessionHeaderView.ViewModel);
  v59 = sub_1A22DC57C(v56, v57);
  v4 = v70;

  if (!v59)
  {
    goto LABEL_12;
  }

  v60 = v71;
  (v80)(v39);
  if (v78(v60, 1, v77))
  {

    v41 = v60;
    goto LABEL_11;
  }

  v61 = v76;
  sub_1A22CCFFC(v60, v76, type metadata accessor for SessionHeaderView.ViewModel);
  sub_1A210D9B0(v60, &qword_1EB088BE0, &unk_1A230A110);
  v62 = *(v61 + 56);
  v74 = *(v61 + 48);

  sub_1A22CD064(v61, type metadata accessor for SessionHeaderView.ViewModel);
  if (v62)
  {
    v63 = *(v1 + OBJC_IVAR____TtC13MediaControls17SessionHeaderView_subtitleLabel);
    sub_1A2115288(0, &qword_1ED94EA38, 0x1E696AAB0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB088D30, qword_1A230A720);
    v64 = swift_allocObject();
    *(v64 + 16) = xmmword_1A230A140;
    *(v64 + 32) = v59;
    *(v64 + 40) = 0;
    *(v64 + 48) = 1;
    *(v64 + 56) = v74;
    *(v64 + 64) = v62;
    *(v64 + 72) = 0;
    v65 = v59;
    v66 = [v1 traitCollection];
    v67 = sub_1A220C2CC();
    v44 = sub_1A220C2D8(v64, v67, v68, v66);
    v4 = v70;

    [v63 setAttributedText_];

    v51 = v76;
    v43 = v77;
    v37 = MEMORY[0x1E69E7D40];
    v45 = v75;
    goto LABEL_21;
  }

  v37 = MEMORY[0x1E69E7D40];
LABEL_12:
  v42 = *(v1 + OBJC_IVAR____TtC13MediaControls17SessionHeaderView_subtitleLabel);
  (v80)(v39);
  v43 = v77;
  if (v78(v16, 1, v77))
  {
    sub_1A210D9B0(v16, &qword_1EB088BE0, &unk_1A230A110);
    v44 = 0;
    v45 = v75;
  }

  else
  {
    v74 = v36;
    v46 = v73;
    sub_1A22CCFFC(v16, v73, type metadata accessor for SessionHeaderView.ViewModel);
    v47 = sub_1A210D9B0(v16, &qword_1EB088BE0, &unk_1A230A110);
    v48 = (v38)(v47);
    v49 = 56;
    if ((v48 & 0xFE) == 2)
    {
      v49 = 24;
    }

    v50 = *(v46 + v49);

    sub_1A22CD064(v46, type metadata accessor for SessionHeaderView.ViewModel);
    if (v50)
    {
      v44 = sub_1A22E6598();
    }

    else
    {
      v44 = 0;
    }

    v43 = v77;
    v45 = v75;
  }

  [v42 setText_];
  v51 = v76;
LABEL_21:

  v52 = *(v1 + OBJC_IVAR____TtC13MediaControls17SessionHeaderView_accessoryView);
  if (sub_1A22CC0BC())
  {
    v80();
    if (!v78(v45, 1, v43))
    {
      sub_1A22CCFFC(v45, v51, type metadata accessor for SessionHeaderView.ViewModel);
      sub_1A210D9B0(v45, &qword_1EB088BE0, &unk_1A230A110);
      sub_1A2214CF8(v51 + *(v43 + 32), v4, &qword_1EB089540, &unk_1A230FE80);
      sub_1A22CD064(v51, type metadata accessor for SessionHeaderView.ViewModel);
      goto LABEL_25;
    }

    sub_1A210D9B0(v45, &qword_1EB088BE0, &unk_1A230A110);
  }

  v53 = type metadata accessor for SessionAccessoryView.ViewModel(0);
  (*(*(v53 - 8) + 56))(v4, 1, 1, v53);
LABEL_25:
  (*((*v37 & *v52) + 0x98))(v4);
  return [v1 setNeedsLayout];
}

uint64_t sub_1A22CB338(char a1, id a2)
{
  v3 = *v2;
  v4 = v2[1];
  if ((a1 & 0xFE) == 2)
  {
    goto LABEL_7;
  }

  if (!v4)
  {
    v3 = v2[2];
    goto LABEL_7;
  }

  v5 = v2[3];
  if (!v5)
  {
LABEL_7:

    return v3;
  }

  v6 = v2[2];
  if ([a2 layoutDirection] == 1)
  {
    v10 = v6;

    MEMORY[0x1A58DA8D0](2108704, 0xE300000000000000);
    v7 = v3;
    v8 = v4;
  }

  else
  {
    v10 = v3;

    MEMORY[0x1A58DA8D0](2108704, 0xE300000000000000);
    v7 = v6;
    v8 = v5;
  }

  MEMORY[0x1A58DA8D0](v7, v8);
  return v10;
}

id sub_1A22CB424()
{
  v1 = *(v0 + OBJC_IVAR____TtC13MediaControls17SessionHeaderView_titleLabel);
  v2 = MEMORY[0x1E69E7D40];
  v3 = *((*MEMORY[0x1E69E7D40] & *v0) + 0xB0);
  if (v3() == 2)
  {
    v4 = (*((*v2 & *v0) + 0x110))();
  }

  else
  {
    v4 = 0;
  }

  v5 = [v1 setMarqueeRunning_];
  v6 = *(v0 + OBJC_IVAR____TtC13MediaControls17SessionHeaderView_subtitleLabel);
  if ((v3)(v5) == 2)
  {
    v7 = (*((*v2 & *v0) + 0x110))();
  }

  else
  {
    v7 = 0;
  }

  v8 = [v6 setMarqueeRunning_];
  v9 = *((*v2 & *v0) + 0xC8);
  v9(v11, v8);
  sub_1A22CC9A0(v11);
  v9(v12, [v1 setMarqueeLoopPadding_]);
  sub_1A22CC9A0(v12);
  return [v6 setMarqueeLoopPadding_];
}

id sub_1A22CB5E0()
{
  v20 = *(v0 + OBJC_IVAR____TtC13MediaControls17SessionHeaderView_titleLabel);
  v1 = MEMORY[0x1E69E7D40];
  v22 = *((*MEMORY[0x1E69E7D40] & *v0) + 0xC8);
  v22(v23);
  v2 = v23[2];
  v3 = v24;
  v4 = v25;
  v5 = v26;
  v6 = v23[1];

  sub_1A22CC9A0(v23);
  v7 = [v0 traitCollection];
  v8 = *((*v1 & *v0) + 0xF8);
  v9 = v8();
  LOBYTE(v27[0]) = v4;
  v10 = sub_1A21275D8(v7, v6, v2, v3 | (v4 << 32), v5, v9);

  [v20 setFont_];
  v21 = *(v0 + OBJC_IVAR____TtC13MediaControls17SessionHeaderView_subtitleLabel);
  v22(v27);
  v11 = v27[6];
  v12 = v28;
  v13 = v29;
  v14 = v30;
  v15 = v27[5];

  sub_1A22CC9A0(v27);
  v16 = [v0 traitCollection];
  v17 = v8();
  v18 = sub_1A21275D8(v16, v15, v11, v12 | (v13 << 32), v14, v17);

  [v21 setFont_];
  return [v0 setNeedsLayout];
}

void sub_1A22CB86C()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR____TtC13MediaControls17SessionHeaderView_titleLabel];
  v3 = *((*MEMORY[0x1E69E7D40] & *v0) + 0xE0);
  v4 = v3();
  v5 = v4;
  if (v4)
  {
    (*(*v4 + 104))(v16);

    v5 = sub_1A22DF514(0);
  }

  [v2 setTextColor_];

  v6 = *&v1[OBJC_IVAR____TtC13MediaControls17SessionHeaderView_subtitleLabel];
  v7 = v3();
  v8 = v7;
  if (v7)
  {
    (*(*v7 + 104))(v17);

    v8 = sub_1A22DF514(1u);
  }

  [v6 setTextColor_];

  v9 = [v6 layer];
  v10 = [v1 traitCollection];
  v11 = sub_1A228BEC0();

  if (v11)
  {
    sub_1A224DFDC(v11);

    v11 = sub_1A22E6738();
  }

  [v9 setFilters_];

  v12 = [*&v1[OBJC_IVAR____TtC13MediaControls17SessionHeaderView_accessoryView] layer];
  v13 = [v1 traitCollection];
  v14 = sub_1A228BEC0();

  if (v14)
  {
    sub_1A224DFDC(v14);

    v15 = sub_1A22E6738();
  }

  else
  {
    v15 = 0;
  }

  [v12 setFilters_];
}

id sub_1A22CBB98()
{
  v1 = *(v0 + OBJC_IVAR____TtC13MediaControls17SessionHeaderView_titleLabel);
  if (sub_1A22CBC48())
  {
    v2 = 1.0;
  }

  else
  {
    v2 = 0.0;
  }

  [v1 setAlpha_];
  v3 = *(v0 + OBJC_IVAR____TtC13MediaControls17SessionHeaderView_subtitleLabel);
  if (sub_1A22CBE88())
  {
    v4 = 1.0;
  }

  else
  {
    v4 = 0.0;
  }

  [v3 setAlpha_];
  v5 = *(v0 + OBJC_IVAR____TtC13MediaControls17SessionHeaderView_accessoryView);
  if (sub_1A22CC0BC())
  {
    v6 = 1.0;
  }

  else
  {
    v6 = 0.0;
  }

  return [v5 setAlpha_];
}

BOOL sub_1A22CBC48()
{
  v1 = type metadata accessor for SessionHeaderView.ViewModel(0);
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB088BE0, &unk_1A230A110);
  v6 = MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v18 - v7;
  v9 = MEMORY[0x1E69E7D40];
  (*((*MEMORY[0x1E69E7D40] & *v0) + 0x98))(v6);
  if ((*(v2 + 48))(v8, 1, v1))
  {
    sub_1A210D9B0(v8, &qword_1EB088BE0, &unk_1A230A110);
    return 0;
  }

  sub_1A22CCFFC(v8, v4, type metadata accessor for SessionHeaderView.ViewModel);
  v11 = sub_1A210D9B0(v8, &qword_1EB088BE0, &unk_1A230A110);
  v12 = (*((*v9 & *v0) + 0xB0))(v11);
  v13 = [v0 traitCollection];
  v14 = sub_1A22CB338(v12, v13);
  v16 = v15;

  sub_1A22CD064(v4, type metadata accessor for SessionHeaderView.ViewModel);
  if (!v16)
  {
    return 0;
  }

  v17 = HIBYTE(v16) & 0xF;
  if ((v16 & 0x2000000000000000) == 0)
  {
    v17 = v14 & 0xFFFFFFFFFFFFLL;
  }

  return v17 != 0;
}

BOOL sub_1A22CBE88()
{
  v1 = type metadata accessor for SessionHeaderView.ViewModel(0);
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB088BE0, &unk_1A230A110);
  v6 = MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v18 - v7;
  v9 = MEMORY[0x1E69E7D40];
  (*((*MEMORY[0x1E69E7D40] & *v0) + 0x98))(v6);
  if ((*(v2 + 48))(v8, 1, v1))
  {
    sub_1A210D9B0(v8, &qword_1EB088BE0, &unk_1A230A110);
    return 0;
  }

  sub_1A22CCFFC(v8, v4, type metadata accessor for SessionHeaderView.ViewModel);
  v11 = sub_1A210D9B0(v8, &qword_1EB088BE0, &unk_1A230A110);
  v12 = (*((*v9 & *v0) + 0xB0))(v11);
  v13 = 48;
  if ((v12 & 0xFE) == 2)
  {
    v13 = 16;
  }

  v14 = 56;
  if ((v12 & 0xFE) == 2)
  {
    v14 = 24;
  }

  v15 = *&v4[v14];
  v16 = *&v4[v13];

  sub_1A22CD064(v4, type metadata accessor for SessionHeaderView.ViewModel);
  if (!v15)
  {
    return 0;
  }

  v17 = HIBYTE(v15) & 0xF;
  if ((v15 & 0x2000000000000000) == 0)
  {
    v17 = v16 & 0xFFFFFFFFFFFFLL;
  }

  return v17 != 0;
}

uint64_t sub_1A22CC0BC()
{
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB089D70, qword_1A23101B0);
  MEMORY[0x1EEE9AC00](v28);
  v2 = &v27 - v1;
  v3 = type metadata accessor for SessionHeaderView.ViewModel(0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB088BE0, &unk_1A230A110);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v27 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB089540, &unk_1A230FE80);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v27 - v11;
  v13 = type metadata accessor for SessionAccessoryView.ViewModel(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = &v27 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*((*MEMORY[0x1E69E7D40] & *v0) + 0x98))(v15);
  if ((*(v4 + 48))(v9, 1, v3))
  {
    sub_1A210D9B0(v9, &qword_1EB088BE0, &unk_1A230A110);
    (*(v14 + 56))(v12, 1, 1, v13);
LABEL_4:
    v18 = &qword_1EB089540;
    v19 = &unk_1A230FE80;
    v20 = v12;
LABEL_5:
    sub_1A210D9B0(v20, v18, v19);
    return 0;
  }

  sub_1A22CCFFC(v9, v6, type metadata accessor for SessionHeaderView.ViewModel);
  sub_1A210D9B0(v9, &qword_1EB088BE0, &unk_1A230A110);
  sub_1A2214CF8(&v6[*(v3 + 32)], v12, &qword_1EB089540, &unk_1A230FE80);
  sub_1A22CD064(v6, type metadata accessor for SessionHeaderView.ViewModel);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    goto LABEL_4;
  }

  v22 = sub_1A22CD140(v12, v17, type metadata accessor for SessionAccessoryView.ViewModel);
  v23 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0xB0))(v22);
  v24 = *(v28 + 48);
  *v2 = v23;
  sub_1A22CD140(v17, &v2[v24], type metadata accessor for SessionAccessoryView.ViewModel);
  if (v23 == 2)
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if ((EnumCaseMultiPayload - 2) < 2)
    {
      return 1;
    }

    if (EnumCaseMultiPayload)
    {
      goto LABEL_8;
    }
  }

  else
  {
    if (v23 == 3)
    {
LABEL_8:
      v18 = &qword_1EB089D70;
      v19 = qword_1A23101B0;
      v20 = v2;
      goto LABEL_5;
    }

    v26 = swift_getEnumCaseMultiPayload();
    if ((v26 - 2) < 2)
    {
      return 1;
    }

    if (!v26)
    {
      goto LABEL_8;
    }
  }

  sub_1A22CD064(&v2[v24], type metadata accessor for SessionAccessoryView.ViewModel);
  return 1;
}

BOOL sub_1A22CC524(void *a1, void *a2)
{
  v4 = type metadata accessor for SessionAccessoryView.ViewModel(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB089540, &unk_1A230FE80);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v26 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB089D80, &qword_1A23103C8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v26 - v12;
  v14 = a1[1];
  v15 = a2[1];
  if (v14)
  {
    if (!v15 || (*a1 != *a2 || v14 != v15) && (sub_1A22E71E8() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v15)
  {
    return 0;
  }

  v16 = a1[3];
  v17 = a2[3];
  if (v16)
  {
    if (!v17 || (a1[2] != a2[2] || v16 != v17) && (sub_1A22E71E8() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v17)
  {
    return 0;
  }

  if ((a1[4] != a2[4] || a1[5] != a2[5]) && (sub_1A22E71E8() & 1) == 0)
  {
    return 0;
  }

  v18 = a1[7];
  v19 = a2[7];
  if (v18)
  {
    if (!v19 || (a1[6] != a2[6] || v18 != v19) && (sub_1A22E71E8() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v19)
  {
    return 0;
  }

  v20 = *(type metadata accessor for SessionHeaderView.ViewModel(0) + 32);
  v21 = a1 + v20;
  v22 = *(v11 + 48);
  sub_1A2214CF8(v21, v13, &qword_1EB089540, &unk_1A230FE80);
  sub_1A2214CF8(a2 + v20, &v13[v22], &qword_1EB089540, &unk_1A230FE80);
  v23 = *(v5 + 48);
  if (v23(v13, 1, v4) == 1)
  {
    if (v23(&v13[v22], 1, v4) == 1)
    {
      sub_1A210D9B0(v13, &qword_1EB089540, &unk_1A230FE80);
      return 1;
    }

    goto LABEL_30;
  }

  sub_1A2214CF8(v13, v10, &qword_1EB089540, &unk_1A230FE80);
  if (v23(&v13[v22], 1, v4) == 1)
  {
    sub_1A22CD064(v10, type metadata accessor for SessionAccessoryView.ViewModel);
LABEL_30:
    sub_1A210D9B0(v13, &qword_1EB089D80, &qword_1A23103C8);
    return 0;
  }

  sub_1A22CD140(&v13[v22], v7, type metadata accessor for SessionAccessoryView.ViewModel);
  sub_1A2129D04();
  v25 = sub_1A22E6568();
  sub_1A22CD064(v7, type metadata accessor for SessionAccessoryView.ViewModel);
  sub_1A22CD064(v10, type metadata accessor for SessionAccessoryView.ViewModel);
  sub_1A210D9B0(v13, &qword_1EB089540, &unk_1A230FE80);
  return (v25 & 1) != 0;
}

uint64_t sub_1A22CC8F8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB088BE0, &unk_1A230A110);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

void sub_1A22CC9F0()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC13MediaControls17SessionHeaderView_viewModel;
  v3 = type metadata accessor for SessionHeaderView.ViewModel(0);
  (*(*(v3 - 8) + 56))(v1 + v2, 1, 1, v3);
  *(v1 + OBJC_IVAR____TtC13MediaControls17SessionHeaderView_layout) = 2;
  v4 = v1 + OBJC_IVAR____TtC13MediaControls17SessionHeaderView_style;
  v5 = *MEMORY[0x1E69DDD80];
  sub_1A211476C();
  v7 = v6;
  v11 = sub_1A21146A4(v6, v9, *MEMORY[0x1E69DB980], v8 | ((HIDWORD(v8) & 1) << 32), v10);
  v13 = v12;
  v15 = v14;
  v17 = v16;

  sub_1A211476C();
  *v4 = 1;
  *(v4 + 8) = v11;
  *(v4 + 16) = v13;
  *(v4 + 24) = v15;
  *(v4 + 28) = BYTE4(v15) & 1;
  *(v4 + 32) = v17;
  *(v4 + 40) = v19;
  *(v4 + 48) = v20;
  *(v4 + 56) = v21;
  *(v4 + 60) = v18 & 1;
  *(v4 + 64) = v22;
  *(v4 + 72) = xmmword_1A23101A0;
  *(v4 + 88) = xmmword_1A23101A0;
  *(v4 + 104) = 0x403A000000000000;
  v23 = OBJC_IVAR____TtC13MediaControls17SessionHeaderView_titleLabel;
  v24 = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  v25 = sub_1A2114DFC();

  *(v1 + v23) = v25;
  v26 = OBJC_IVAR____TtC13MediaControls17SessionHeaderView_subtitleLabel;
  v27 = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  v28 = sub_1A2114DFC();

  *(v1 + v26) = v28;
  v29 = OBJC_IVAR____TtC13MediaControls17SessionHeaderView_accessoryView;
  type metadata accessor for SessionAccessoryView(0);
  *(v1 + v29) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *(v1 + OBJC_IVAR____TtC13MediaControls17SessionHeaderView_visualStylingProvider) = 0;
  *(v1 + OBJC_IVAR____TtC13MediaControls17SessionHeaderView_fontScale) = 0x3FF0000000000000;
  *(v1 + OBJC_IVAR____TtC13MediaControls17SessionHeaderView_onScreen) = 0;
  sub_1A22E7028();
  __break(1u);
}

unint64_t sub_1A22CCC40()
{
  result = qword_1EB089D78;
  if (!qword_1EB089D78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB089D78);
  }

  return result;
}

void sub_1A22CCC9C(uint64_t a1)
{
  sub_1A22CCE84(319, qword_1ED94FAC8, type metadata accessor for SessionHeaderView.ViewModel);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1A22CCDB8(uint64_t a1)
{
  sub_1A22CCFAC(319, qword_1ED950878, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    sub_1A22CCE84(319, qword_1ED950978, type metadata accessor for SessionAccessoryView.ViewModel);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1A22CCE84(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1A22E6D68();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1A22CCEE8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 112))
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

uint64_t sub_1A22CCF30(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 112) = 1;
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

    *(result + 112) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_1A22CCFAC(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_1A22CCFFC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A22CD064(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

id sub_1A22CD0D8(double a1)
{
  v3 = *(v1 + 16);
  [*(v3 + OBJC_IVAR____TtC13MediaControls17SessionHeaderView_titleLabel) setAlpha_];
  v4 = *(v3 + OBJC_IVAR____TtC13MediaControls17SessionHeaderView_subtitleLabel);

  return [v4 setAlpha_];
}

uint64_t sub_1A22CD140(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A22CD200(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7 = *(a1 + 48);
  v8 = *(a1 + 56);
  v9 = *(a7 + 8);
  v10 = *(a1 + 16);
  v12[0] = *a1;
  v12[1] = v10;
  v12[2] = *(a1 + 32);
  v13 = v7;
  v14 = v8;
  return v9(v12, a2, a3, a4, a5, a6);
}

double sub_1A22CD2A0(uint64_t a1, uint64_t a2)
{
  v2 = [objc_opt_self() blackColor];
  sub_1A2220C34(v2, v13, 0.0, 3.0, 6.0, 0.2, 6.0);
  v3 = sub_1A221E310();
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = sub_1A223EC78();
  v11 = sub_1A2113050();
  sub_1A223ECE4(v13, v11 & 1, v14, 6.0, v3, v5, v7, v9, v10);
  xmmword_1EB091780 = v16;
  unk_1EB091790 = v17;
  byte_1EB0917A0 = v18;
  xmmword_1EB091740 = v14[0];
  *algn_1EB091750 = v14[1];
  result = *&v15;
  xmmword_1EB091760 = v14[2];
  unk_1EB091770 = v15;
  return result;
}

__int128 *sub_1A22CD398()
{
  if (qword_1ED952498 != -1)
  {
    swift_once();
  }

  return &xmmword_1EB091740;
}

uint64_t sub_1A22CD3E8@<X0>(uint64_t a1@<X8>)
{
  v2 = a1;
  if (qword_1ED952498 != -1)
  {
    swift_once();
    v2 = a1;
  }

  return sub_1A211C42C(&xmmword_1EB091740, v2);
}

void *sub_1A22CD458()
{
  v1 = OBJC_IVAR____TtC13MediaControls26MediaSuggestionArtworkView_icon;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_1A22CD4A4(void *a1)
{
  v3 = OBJC_IVAR____TtC13MediaControls26MediaSuggestionArtworkView_icon;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  v5 = a1;

  v6 = (*((*MEMORY[0x1E69E7D40] & **(v1 + OBJC_IVAR____TtC13MediaControls26MediaSuggestionArtworkView_iconView)) + 0xB0))(v9);
  v8 = *(v7 + 16);
  *(v7 + 16) = a1;

  v6(v9, 0);
}

uint64_t (*sub_1A22CD578(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  *a1 = v3;
  v4 = OBJC_IVAR____TtC13MediaControls26MediaSuggestionArtworkView_icon;
  *(v3 + 32) = v1;
  *(v3 + 40) = v4;
  swift_beginAccess();
  return sub_1A22CD600;
}

void sub_1A22CD600(void *a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = v3[4];
    v5 = *(v4 + v3[5]);
    v6 = *((*MEMORY[0x1E69E7D40] & **(v4 + OBJC_IVAR____TtC13MediaControls26MediaSuggestionArtworkView_iconView)) + 0xB0);
    v7 = v5;
    v8 = v6(v3);
    v10 = *(v9 + 16);
    *(v9 + 16) = v5;

    v8(v3, 0);
  }

  free(v3);
}

char *sub_1A22CD6C8(double a1, double a2, double a3, double a4, uint64_t a5, uint64_t a6)
{
  v11 = OBJC_IVAR____TtC13MediaControls26MediaSuggestionArtworkView_iconView;
  type metadata accessor for ArtworkView(0, a6);
  v12 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *&v6[v11] = v12;
  *&v6[OBJC_IVAR____TtC13MediaControls26MediaSuggestionArtworkView_icon] = 0;
  v23.receiver = v6;
  v23.super_class = type metadata accessor for MediaSuggestionArtworkView(v12, v13);
  v14 = objc_msgSendSuper2(&v23, sel_initWithFrame_, a1, a2, a3, a4);
  v15 = OBJC_IVAR____TtC13MediaControls26MediaSuggestionArtworkView_iconView;
  v16 = *&v14[OBJC_IVAR____TtC13MediaControls26MediaSuggestionArtworkView_iconView];
  v17 = v14;
  [v16 setContentMode_];
  [*&v14[v15] setClipsToBounds_];
  v18 = qword_1ED952498;
  v19 = *&v14[v15];
  if (v18 != -1)
  {
    swift_once();
  }

  v24[3] = unk_1EB091770;
  v24[4] = xmmword_1EB091780;
  v24[5] = unk_1EB091790;
  v24[0] = xmmword_1EB091740;
  v25 = byte_1EB0917A0;
  v24[1] = *algn_1EB091750;
  v24[2] = xmmword_1EB091760;
  v20 = *((*MEMORY[0x1E69E7D40] & *v19) + 0x90);
  sub_1A211C42C(v24, v22);
  v20(v24);

  [v17 addSubview_];
  return v17;
}

void sub_1A22CD8D4(uint64_t a1, uint64_t a2)
{
  v3 = OBJC_IVAR____TtC13MediaControls26MediaSuggestionArtworkView_iconView;
  type metadata accessor for ArtworkView(0, a2);
  *(v2 + v3) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *(v2 + OBJC_IVAR____TtC13MediaControls26MediaSuggestionArtworkView_icon) = 0;
  sub_1A22E7028();
  __break(1u);
}

id sub_1A22CDA00(uint64_t a1, uint64_t a2)
{
  v15.receiver = v2;
  v15.super_class = type metadata accessor for MediaSuggestionArtworkView(a1, a2);
  objc_msgSendSuper2(&v15, sel_layoutSubviews);
  v3 = [v2 bounds];
  v4 = (*((*MEMORY[0x1E69E7D40] & *v2) + 0xD0))(v3);
  v21.origin.x = UIEdgeInsetsInsetRect_1(v4);
  x = v21.origin.x;
  y = v21.origin.y;
  width = v21.size.width;
  height = v21.size.height;
  CGRectGetMaxX(v21);
  v22.origin.x = x;
  v22.origin.y = y;
  v22.size.width = width;
  v22.size.height = height;
  CGRectGetMaxY(v22);
  v9 = *(v2 + OBJC_IVAR____TtC13MediaControls26MediaSuggestionArtworkView_iconView);
  [v2 bounds];
  v16 = v10;
  v17 = v11;
  v18 = v12;
  v19 = v13;
  v20 = 0;
  sub_1A22E6BA8();
  return [v9 setFrame_];
}

void sub_1A22CDB70()
{
  v1 = *(v0 + OBJC_IVAR____TtC13MediaControls26MediaSuggestionArtworkView_icon);
}

id sub_1A22CDBB0(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for MediaSuggestionArtworkView(a1, a2);
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

id sub_1A22CDC40(uint64_t a1)
{
  v2 = sub_1A22E63C8();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v10[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  (*(v3 + 16))(v5, a1, v2);
  v10[3] = sub_1A22E6408();
  v10[4] = MEMORY[0x1E69DC388];
  __swift_allocate_boxed_opaque_existential_0Tm(v10);
  v7 = v6;
  sub_1A22E6418();
  sub_1A22E6C18();

  (*(v3 + 8))(a1, v2);
  return v7;
}

Swift::Void __swiftcall UIView.setGlassBackground()()
{
  v0 = sub_1A22E63C8();
  MEMORY[0x1EEE9AC00](v0 - 8);
  sub_1A22E6388();
  v1[3] = sub_1A22E6408();
  v1[4] = MEMORY[0x1E69DC388];
  __swift_allocate_boxed_opaque_existential_0Tm(v1);
  sub_1A22E6418();
  sub_1A22E6C18();
}

void sub_1A22CDE30(void *a1)
{
  v2 = sub_1A22E63C8();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v3 = a1;
  sub_1A22E6388();
  v4[3] = sub_1A22E6408();
  v4[4] = MEMORY[0x1E69DC388];
  __swift_allocate_boxed_opaque_existential_0Tm(v4);
  sub_1A22E6418();
  sub_1A22E6C18();
}

uint64_t sub_1A22CDEE8(uint64_t a1)
{
  v2 = sub_1A22E63C8();
  MEMORY[0x1EEE9AC00](v2);
  (*(v4 + 16))(&v7[-1] - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  v7[3] = sub_1A22E6408();
  v7[4] = MEMORY[0x1E69DC388];
  __swift_allocate_boxed_opaque_existential_0Tm(v7);
  sub_1A22E6418();
  return sub_1A22E6C18();
}

uint64_t sub_1A22CDFDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for WeakReference(0, a1, a3, a4);

  return sub_1A22E6498();
}

uint64_t sub_1A22CE00C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_1A22E6D68();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v11 - v7;
  (*(v9 + 16))(&v11 - v7, a1);
  return (*(**a2 + 128))(v8);
}

uint64_t sub_1A22CE11C()
{

  return MEMORY[0x1EEE6BDC0](v0, 24, 7);
}

void *sub_1A22CE154()
{
  v0 = swift_allocObject();
  type metadata accessor for WeakReference(0, *(*v0 + 80), v1, v2);
  v0[2] = sub_1A22E6498();
  return v0;
}

void *sub_1A22CE1AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for WeakReference(0, *(*v4 + 80), a3, a4);
  v4[2] = sub_1A22E6498();
  return v4;
}

double sub_1A22CE2FC@<D0>(_OWORD *a1@<X8>)
{
  sub_1A220D25C(v4);
  sub_1A225522C(v4, 0, v5);
  v2 = v5[1];
  *a1 = v5[0];
  a1[1] = v2;
  a1[2] = v6[0];
  result = *(v6 + 9);
  *(a1 + 41) = *(v6 + 9);
  return result;
}

double sub_1A22CE354@<D0>(_OWORD *a1@<X8>)
{
  v3 = (v1 + OBJC_IVAR____TtC13MediaControls23MediaControlsModuleView_viewModel);
  swift_beginAccess();
  v4 = v3[1];
  v8 = *v3;
  v9 = v4;
  v10[0] = v3[2];
  *(v10 + 9) = *(v3 + 41);
  sub_1A2256704(&v8, v7);
  v5 = v9;
  *a1 = v8;
  a1[1] = v5;
  a1[2] = v10[0];
  result = *(v10 + 9);
  *(a1 + 41) = *(v10 + 9);
  return result;
}

void sub_1A22CE3E4(__int128 *a1)
{
  v2 = v1;
  v4 = (v1 + OBJC_IVAR____TtC13MediaControls23MediaControlsModuleView_viewModel);
  swift_beginAccess();
  v5 = v4[1];
  v22 = *v4;
  v23 = v5;
  v24[0] = v4[2];
  v6 = v24[0];
  *(v24 + 9) = *(v4 + 41);
  v25[0] = v22;
  v25[1] = v5;
  v26[0] = v6;
  *(v26 + 9) = *(v24 + 9);
  v7 = a1[1];
  *v4 = *a1;
  v4[1] = v7;
  *(v4 + 41) = *(a1 + 41);
  v4[2] = a1[2];
  sub_1A2256704(&v22, v29);
  sub_1A225673C(v25);
  v8 = v4[1];
  v27[0] = *v4;
  v27[1] = v8;
  v10 = *v4;
  v9 = v4[1];
  v28[0] = v4[2];
  *(v28 + 9) = *(v4 + 41);
  v19 = v10;
  v20 = v9;
  *v21 = v4[2];
  *&v21[9] = *(v4 + 41);
  v16 = v22;
  v17 = v23;
  *v18 = v24[0];
  *&v18[9] = *(v24 + 9);
  sub_1A2256704(v27, v29);
  sub_1A22CE60C();
  LOBYTE(v4) = sub_1A22E6568();
  v29[0] = v19;
  v29[1] = v20;
  v30[0] = *v21;
  *(v30 + 9) = *&v21[9];
  sub_1A225673C(v29);
  v11 = sub_1A225673C(&v22);
  if ((v4 & 1) == 0)
  {
    v12 = *(v2 + OBJC_IVAR____TtC13MediaControls23MediaControlsModuleView_sessionsView);
    v13 = MEMORY[0x1E69E7D40];
    (*((*MEMORY[0x1E69E7D40] & *v2) + 0xA8))(&v19, v11);
    v16 = v19;
    v17 = v20;
    *v18 = *v21;
    *&v18[16] = *&v21[16];
    v14 = (*((*v13 & *v12) + 0xB0))(&v16);
    v15 = (*((*v13 & *v2) + 0xC0))(v14);
    sub_1A22D0060(v15 & 0x101010101);
  }
}

unint64_t sub_1A22CE60C()
{
  result = qword_1ED9503D0;
  if (!qword_1ED9503D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED9503D0);
  }

  return result;
}

void (*sub_1A22CE660(uint64_t *a1))(__int128 **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x1A0uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 408) = v1;
  v5 = (v1 + OBJC_IVAR____TtC13MediaControls23MediaControlsModuleView_viewModel);
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  v8 = v5[2];
  *(v4 + 41) = *(v5 + 41);
  v4[1] = v7;
  v4[2] = v8;
  *v4 = v6;
  v9 = *v5;
  v10 = v5[1];
  v11 = v5[2];
  *(v4 + 233) = *(v5 + 41);
  v4[13] = v10;
  v4[14] = v11;
  v4[12] = v9;
  sub_1A2256704(v4, (v4 + 16));
  return sub_1A22CE72C;
}

void sub_1A22CE72C(__int128 **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[13];
  if (a2)
  {
    v2[4] = v2[12];
    v2[5] = v3;
    v2[6] = v2[14];
    *(v2 + 105) = *(v2 + 233);
    sub_1A2256704((v2 + 4), (v2 + 20));
    sub_1A22CE3E4(v2 + 4);
    v4 = v2[13];
    v2[16] = v2[12];
    v2[17] = v4;
    v2[18] = v2[14];
    *(v2 + 297) = *(v2 + 233);
    sub_1A225673C((v2 + 16));
  }

  else
  {
    v2[8] = v2[12];
    v2[9] = v3;
    v2[10] = v2[14];
    *(v2 + 169) = *(v2 + 233);
    sub_1A22CE3E4(v2 + 8);
  }

  free(v2);
}

uint64_t sub_1A22CE7E8()
{
  v1 = (v0 + OBJC_IVAR____TtC13MediaControls23MediaControlsModuleView_state);
  swift_beginAccess();
  v2 = 0x100000000;
  if (!v1[4])
  {
    v2 = 0;
  }

  v3 = 0x1000000;
  if (!v1[3])
  {
    v3 = 0;
  }

  v4 = 0x10000;
  if (!v1[2])
  {
    v4 = 0;
  }

  v5 = 256;
  if (!v1[1])
  {
    v5 = 0;
  }

  return v5 | *v1 | v4 | v3 | v2;
}

void sub_1A22CE880(unint64_t a1)
{
  v2 = a1;
  v3 = (a1 >> 8) & 1;
  v4 = (a1 >> 16) & 1;
  v5 = (a1 >> 24) & 1;
  v6 = HIDWORD(a1) & 1;
  v7 = (v1 + OBJC_IVAR____TtC13MediaControls23MediaControlsModuleView_state);
  swift_beginAccess();
  v8 = *v7;
  v9 = v7[1];
  v10 = v7[2];
  v11 = v7[3];
  v12 = v7[4];
  *v7 = v2 & 1;
  v7[1] = v3;
  v7[2] = v4;
  v7[3] = v5;
  v7[4] = v6;
  if (v8 != (v2 & 1) || ((v3 ^ v9) & 1) != 0 || ((v4 ^ v10) & 1) != 0 || ((v5 ^ v11) & 1) != 0 || ((v6 ^ v12) & 1) != 0)
  {
    v13 = v12 == 0;
    v14 = 0x100000000;
    if (v13)
    {
      v14 = 0;
    }

    v13 = v11 == 0;
    v15 = 0x1000000;
    if (v13)
    {
      v15 = 0;
    }

    v13 = v10 == 0;
    v16 = 0x10000;
    if (v13)
    {
      v16 = 0;
    }

    v13 = v9 == 0;
    v17 = 256;
    if (v13)
    {
      v17 = 0;
    }

    sub_1A22D0060(v17 | v8 | v16 | v15 | v14);
  }
}

void (*sub_1A22CE988(uint64_t *a1))(unsigned __int8 **a1)
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
  v5 = OBJC_IVAR____TtC13MediaControls23MediaControlsModuleView_state;
  *(v3 + 24) = v1;
  *(v3 + 32) = v5;
  v6 = (v1 + v5);
  swift_beginAccess();
  v7 = v6[1];
  v8 = v6[2];
  v9 = v6[3];
  v10 = v6[4];
  v4[40] = *v6;
  v4 += 40;
  v4[1] = v7;
  v4[2] = v8;
  v4[3] = v9;
  v4[4] = v10;
  return sub_1A22CEA40;
}

void sub_1A22CEA40(unsigned __int8 **a1)
{
  v1 = *a1;
  v2 = (*(*a1 + 3) + *(*a1 + 4));
  v3 = (*a1)[40];
  v4 = v1[41];
  v5 = v1[42];
  v6 = v1[43];
  v7 = v1[44];
  v8 = *v2;
  v9 = v2[1];
  v10 = v2[2];
  v11 = v2[3];
  v12 = v2[4];
  *v2 = v3;
  v2[1] = v4;
  v2[2] = v5;
  v2[3] = v6;
  v2[4] = v7;
  if (v3 != v8 || ((v4 ^ v9) & 1) != 0 || ((v5 ^ v10) & 1) != 0 || ((v6 ^ v11) & 1) != 0 || v7 != v12)
  {
    v13 = v12 == 0;
    v14 = 0x100000000;
    if (v13)
    {
      v14 = 0;
    }

    v13 = v11 == 0;
    v15 = 0x1000000;
    if (v13)
    {
      v15 = 0;
    }

    v13 = v10 == 0;
    v16 = 0x10000;
    if (v13)
    {
      v16 = 0;
    }

    v13 = v9 == 0;
    v17 = 256;
    if (v13)
    {
      v17 = 0;
    }

    sub_1A22D0060(v17 | v8 | v16 | v15 | v14);
  }

  free(v1);
}

uint64_t sub_1A22CEB28()
{
  v1 = OBJC_IVAR____TtC13MediaControls23MediaControlsModuleView_shareAudioView;
  v2 = swift_beginAccess();
  v3 = *(v0 + v1);
  v4 = MEMORY[0x1E69E7D40];
  if (v3)
  {
    v5 = OBJC_IVAR____TtC13MediaControls23MediaControlsModuleView_embeddedView;
    v6 = *(v0 + OBJC_IVAR____TtC13MediaControls23MediaControlsModuleView_embeddedView);
    v7 = v3;
    if (v6)
    {
      v8 = v6;
      sub_1A22D0C54();
      [v8 removeFromSuperview];

      v9 = *(v0 + v5);
      *(v0 + v5) = 0;
    }

    v11 = (*((*v4 & *v0) + 0xC0))(v7);
    sub_1A22D0E94(v3, v11 & 1);
  }

  else
  {
    v10 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0xC0))(v2);
    sub_1A22D10C8(v10 & 1);
  }

  v12 = *(v0 + v1) != 0;
  v13 = (*((*v4 & *v0) + 0xD0))(v16);
  *(v14 + 3) = v12;
  return v13(v16, 0);
}

void *sub_1A22CECA8()
{
  v1 = OBJC_IVAR____TtC13MediaControls23MediaControlsModuleView_shareAudioView;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_1A22CECF4(void *a1)
{
  v3 = OBJC_IVAR____TtC13MediaControls23MediaControlsModuleView_shareAudioView;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  v5 = a1;

  sub_1A22CEB28();
}

uint64_t (*sub_1A22CED5C(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1A22CEDC0;
}

uint64_t sub_1A22CEDC0(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return sub_1A22CEB28();
  }

  return result;
}

id sub_1A22CEDF4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB089DC0, qword_1A2310508);
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

void sub_1A22CEE5C(void *a1)
{
  v3 = OBJC_IVAR____TtC13MediaControls23MediaControlsModuleView_previewView;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  if (!v4)
  {
    v9 = a1;
    v6 = a1;
    if (!a1)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v5 = a1;
  [v4 removeFromSuperview];
  v6 = *(v1 + v3);
  if (v6)
  {
LABEL_3:
    v7 = v6;
    v8 = [v1 addSubview_];
    (*((*MEMORY[0x1E69E7D40] & *v1) + 0x1C0))(v8);
  }

LABEL_4:
}

void sub_1A22CEF50(char a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC13MediaControls23MediaControlsModuleView_layout;
  swift_beginAccess();
  *(v2 + v4) = a1;
  sub_1A221B9F4();
  if ((sub_1A22E6568() & 1) == 0)
  {
    sub_1A22CFE14();
  }
}

void (*sub_1A22CEFDC(uint64_t *a1))(uint64_t a1)
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
  v5 = OBJC_IVAR____TtC13MediaControls23MediaControlsModuleView_layout;
  *(v3 + 24) = v1;
  *(v3 + 32) = v5;
  swift_beginAccess();
  *(v4 + 40) = *(v1 + v5);
  return sub_1A22CF070;
}

void sub_1A22CF070(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 40);
  v4 = *(*a1 + 24);
  v3 = *(*a1 + 32);
  v5 = *(v4 + v3);
  *(v4 + v3) = v2;
  v1[41] = v2;
  v1[42] = v5;
  sub_1A221B9F4();
  if ((sub_1A22E6568() & 1) == 0)
  {
    sub_1A22CFE14();
  }

  free(v1);
}

uint64_t sub_1A22CF0FC()
{
  v1 = OBJC_IVAR____TtC13MediaControls23MediaControlsModuleView_contentRenderingMode;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_1A22CF140(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC13MediaControls23MediaControlsModuleView_contentRenderingMode;
  swift_beginAccess();
  v5 = *(v1 + v3);
  *(v1 + v3) = a1;
  if (v5 != a1)
  {
    if (a1 == 1)
    {
      type metadata accessor for MediaControlsModulePreviewView(0, v4);
      v6 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    }

    else
    {
      v6 = 0;
    }

    sub_1A22CEE5C(v6);
    sub_1A22D0C54();
  }
}

void (*sub_1A22CF1D0(uint64_t *a1))(uint64_t a1, uint64_t a2)
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
  v5 = OBJC_IVAR____TtC13MediaControls23MediaControlsModuleView_contentRenderingMode;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = *(v1 + v5);
  return sub_1A22CF264;
}

void sub_1A22CF264(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(*a1 + 24);
  v5 = *(*a1 + 32);
  v4 = *(*a1 + 40);
  v6 = *(v5 + v4);
  *(v5 + v4) = v3;
  if ((a2 & 1) == 0)
  {
    if (v6 == v3)
    {
      goto LABEL_9;
    }

    if (v3 != 1)
    {
      goto LABEL_4;
    }

LABEL_7:
    type metadata accessor for MediaControlsModulePreviewView(0, a2);
    v7 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    goto LABEL_8;
  }

  if (v6 == v3)
  {
    goto LABEL_9;
  }

  if (v3 == 1)
  {
    goto LABEL_7;
  }

LABEL_4:
  v7 = 0;
LABEL_8:
  sub_1A22CEE5C(v7);
  sub_1A22D0C54();
LABEL_9:

  free(v2);
}

void sub_1A22CF2FC(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC13MediaControls23MediaControlsModuleView_contentMetrics;
  v5 = swift_beginAccess();
  v6 = *(v2 + v4);
  if (v6)
  {
    if (a1)
    {
      sub_1A22E6B98();
      v7 = v6;
      v8 = a1;
      v9 = sub_1A22E6C88();

      if (v9)
      {
        return;
      }
    }
  }

  else if (!a1)
  {
    return;
  }

  v10 = (*((*MEMORY[0x1E69E7D40] & **(v2 + OBJC_IVAR____TtC13MediaControls23MediaControlsModuleView_sessionsView)) + 0x138))(v5);
  v11 = v10;
  v19 = *(v10 + 16);
  if (v19)
  {
    v12 = 0;
    v13 = (v10 + 48);
    while (v12 < *(v11 + 16))
    {
      ++v12;
      v14 = *v13;
      v15 = MEMORY[0x1E69E7D40];
      v16 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x150);

      v17 = v14;
      v18 = v16();
      (*((*v15 & *v17) + 0x168))(v18);

      v13 += 3;
      if (v19 == v12)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_10:
  }
}

void *sub_1A22CF4E4()
{
  v1 = OBJC_IVAR____TtC13MediaControls23MediaControlsModuleView_contentMetrics;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_1A22CF530(void *a1)
{
  v3 = OBJC_IVAR____TtC13MediaControls23MediaControlsModuleView_contentMetrics;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  v5 = a1;
  sub_1A22CF2FC(v4);
}

void (*sub_1A22CF59C(uint64_t *a1))(uint64_t a1, char a2)
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
  v5 = OBJC_IVAR____TtC13MediaControls23MediaControlsModuleView_contentMetrics;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  v6 = *(v1 + v5);
  *(v4 + 24) = v6;
  v7 = v6;
  return sub_1A22CF638;
}

void sub_1A22CF638(uint64_t a1, char a2)
{
  v3 = *a1;
  v5 = (*a1 + 24);
  v4 = *v5;
  v7 = *(*a1 + 32);
  v6 = *(*a1 + 40);
  v8 = *(v7 + v6);
  *(v7 + v6) = *v5;
  v9 = v4;
  v10 = v9;
  if (a2)
  {
    v11 = v9;
    sub_1A22CF2FC(v8);

    v8 = *v5;
  }

  else
  {
    sub_1A22CF2FC(v8);
  }

  free(v3);
}

double sub_1A22CF6D4()
{
  v1 = OBJC_IVAR____TtC13MediaControls23MediaControlsModuleView_cornerRadius;
  swift_beginAccess();
  return *(v0 + v1);
}

void (*sub_1A22CF718(uint64_t *a1))(uint64_t a1)
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
  v5 = OBJC_IVAR____TtC13MediaControls23MediaControlsModuleView_cornerRadius;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = *(v1 + v5);
  return sub_1A22CF7AC;
}

void sub_1A22CF7AC(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 24);
  v4 = *(*a1 + 32);
  v3 = *(*a1 + 40);
  v5 = *(v4 + v3);
  *(v4 + v3) = v2;
  if (v2 != v5)
  {
    (*((*MEMORY[0x1E69E7D40] & *v1[4]) + 0x1C0))();
  }

  free(v1);
}

char *sub_1A22CF83C(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v10 = &v4[OBJC_IVAR____TtC13MediaControls23MediaControlsModuleView_viewModel];
  sub_1A220D25C(v37);
  sub_1A225522C(v37, 0, v38);
  v11 = v38[1];
  *v10 = v38[0];
  v10[1] = v11;
  v10[2] = v39[0];
  *(v10 + 41) = *(v39 + 9);
  v12 = &v5[OBJC_IVAR____TtC13MediaControls23MediaControlsModuleView_state];
  *v12 = 0;
  v12[4] = 0;
  *&v5[OBJC_IVAR____TtC13MediaControls23MediaControlsModuleView_shareAudioView] = 0;
  *&v5[OBJC_IVAR____TtC13MediaControls23MediaControlsModuleView_embeddedView] = 0;
  v13 = OBJC_IVAR____TtC13MediaControls23MediaControlsModuleView_sessionsView;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB089DC0, qword_1A2310508);
  *&v5[v13] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v14 = OBJC_IVAR____TtC13MediaControls23MediaControlsModuleView_allSpeakersButton;
  type metadata accessor for RoutePickerAllSpeakersButton(0, v15);
  v16 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v17 = sub_1A2114DFC();

  *&v5[v14] = v17;
  *&v5[OBJC_IVAR____TtC13MediaControls23MediaControlsModuleView_previewView] = 0;
  v5[OBJC_IVAR____TtC13MediaControls23MediaControlsModuleView_layout] = 1;
  *&v5[OBJC_IVAR____TtC13MediaControls23MediaControlsModuleView_contentRenderingMode] = 0;
  *&v5[OBJC_IVAR____TtC13MediaControls23MediaControlsModuleView_contentMetrics] = 0;
  *&v5[OBJC_IVAR____TtC13MediaControls23MediaControlsModuleView_cornerRadius] = 0;
  v36.receiver = v5;
  v36.super_class = type metadata accessor for MediaControlsModuleView(v18, v19);
  v20 = objc_msgSendSuper2(&v36, sel_initWithFrame_, a1, a2, a3, a4);
  v21 = OBJC_IVAR____TtC13MediaControls23MediaControlsModuleView_sessionsView;
  v22 = *&v20[OBJC_IVAR____TtC13MediaControls23MediaControlsModuleView_sessionsView];
  v23 = v20;
  [v22 setContentInsetAdjustmentBehavior_];
  [*&v20[v21] setShowsVerticalScrollIndicator_];
  v24 = *&v20[v21];
  type metadata accessor for MediaControlsModuleSessionView(0, v25);
  v26 = v24;
  v27 = sub_1A211A6BC();
  v28 = MEMORY[0x1E69E7D40];
  (*((*MEMORY[0x1E69E7D40] & *v26) + 0xE0))(2, v27 & 1);

  v29 = *&v20[v21];
  v30 = *((*v28 & *v29) + 0x1A0);
  v31 = v29;
  v30(v23, &off_1F1443680);

  [v23 addSubview_];
  v32 = OBJC_IVAR____TtC13MediaControls23MediaControlsModuleView_allSpeakersButton;
  [*&v23[OBJC_IVAR____TtC13MediaControls23MediaControlsModuleView_allSpeakersButton] setOverrideUserInterfaceStyle_];
  v33 = *&v23[v32];
  sub_1A229CA20(v40);
  sub_1A211A470(1, 0, v40);
  sub_1A2116928(v40);

  [v23 addSubview_];
  v34 = sub_1A211A6BC();
  sub_1A211A6C4(v34 & 1, sub_1A22D1674);

  sub_1A22CFE14();
  sub_1A22D0460(0, 1);

  return v23;
}

void *sub_1A22CFBE0(uint64_t a1)
{
  v3 = MEMORY[0x1E69E7D40];
  result = (*((*MEMORY[0x1E69E7D40] & **(v1 + OBJC_IVAR____TtC13MediaControls23MediaControlsModuleView_sessionsView)) + 0x148))();
  if (result)
  {
    v5 = result;
    v6 = (*((*v3 & *result) + 0x1C0))(a1);

    return (v6 & 1);
  }

  return result;
}

uint64_t sub_1A22CFC9C(uint64_t a1, uint64_t a2)
{
  v2 = [objc_opt_self() currentDevice];
  v3 = [v2 userInterfaceIdiom];

  if (v3 == 1)
  {
    return 1;
  }

  return sub_1A225CB4C();
}

uint64_t sub_1A22CFD24(void *a1)
{
  v3 = MEMORY[0x1E69E7D40];
  v4 = (*((*MEMORY[0x1E69E7D40] & *a1) + 0x248))();
  v5 = sub_1A220C928(v4 & 1, 0);
  v6.n128_u64[0] = 24.0;
  if (v5)
  {
    v5 = (*((*v3 & *v1) + 0x168))(24.0);
  }

  return (*((*v3 & *a1) + 0x180))(v5, v6);
}

void sub_1A22CFE14()
{
  v1 = v0;
  v18 = *(v0 + OBJC_IVAR____TtC13MediaControls23MediaControlsModuleView_sessionsView);
  v2 = (*((*MEMORY[0x1E69E7D40] & *v18) + 0x138))();
  v3 = v2;
  v19 = *(v2 + 16);
  if (v19)
  {
    v4 = 0;
    v5 = (v2 + 48);
    v6 = MEMORY[0x1E69E7D40];
    while (v4 < *(v3 + 16))
    {
      ++v4;
      v7 = *v5;
      v8 = *((*v6 & *v1) + 0x120);

      v9 = v7;
      v10 = v8();
      (*((*v6 & *v9) + 0x120))(v10);

      v5 += 3;
      if (v19 == v4)
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_5:

    v12 = MEMORY[0x1E69E7D40];
    v13 = (*((*MEMORY[0x1E69E7D40] & *v1) + 0x120))(v11);
    v14 = sub_1A229DF34(v13);
    v15 = (*((*v12 & *v18) + 0xE0))(v14, 0);
    v16 = (*((*v12 & *v1) + 0xC0))(v15);
    v17 = sub_1A22D0460(v16 & 1, 0);

    [v1 setNeedsLayout];
  }
}

void sub_1A22D0060(unint64_t a1)
{
  v2 = v1;
  v4 = *((*MEMORY[0x1E69E7D40] & *v1) + 0xC0);
  v5 = v4();
  v6 = sub_1A22D0460(v5 & 1, 0);
  v7 = (v4)(v6);
  if ((v7 ^ a1))
  {
    v8 = *(v1 + OBJC_IVAR____TtC13MediaControls23MediaControlsModuleView_sessionsView);
    v9 = v4();
    v7 = (*((*MEMORY[0x1E69E7D40] & *v8) + 0x158))(v9 & 1);
  }

  v10 = (v4)(v7);
  if (((a1 >> 8) & 1) != ((v10 >> 8) & 1))
  {
    v11 = v4();
    if ((v11 & 0x100) == 0)
    {
      v12 = *(v1 + OBJC_IVAR____TtC13MediaControls23MediaControlsModuleView_sessionsView);
      v13 = (*((*MEMORY[0x1E69E7D40] & *v12) + 0xC8))();
      v11 = sub_1A210E438(v13, 1);
      if (v11)
      {
        v14 = MEMORY[0x1E69E7D40];
        v15 = (*((*MEMORY[0x1E69E7D40] & *v1) + 0x120))();
        v16 = sub_1A229DF34(v15);
        type metadata accessor for MediaControlsModuleSessionView(0, v17);
        v18 = sub_1A211A6BC();
        v11 = (*((*v14 & *v12) + 0xE0))(v16, v18 & 1);
      }
    }

    if (((v4)(v11) & 0x100) == 0)
    {
      v19 = (*((*MEMORY[0x1E69E7D40] & *v2) + 0xD8))();
      if (v19)
      {

        (*((*MEMORY[0x1E69E7D40] & *v2) + 0xE0))(0);
      }
    }

    v10 = [v2 setNeedsLayout];
  }

  if (((a1 >> 16) & 1) != (((v4)(v10) >> 16) & 1))
  {
    v20 = (*((*MEMORY[0x1E69E7D40] & **(v2 + OBJC_IVAR____TtC13MediaControls23MediaControlsModuleView_sessionsView)) + 0x138))();
    v21 = v20;
    v22 = *(v20 + 16);
    if (v22)
    {
      v23 = 0;
      v24 = (v20 + 48);
      while (v23 < *(v21 + 16))
      {
        ++v23;
        v25 = *v24;

        v26 = v25;
        v27 = (v4() >> 16) & 1;
        (*((*MEMORY[0x1E69E7D40] & *v26) + 0x198))(v27);

        v24 += 3;
        if (v22 == v23)
        {
          goto LABEL_16;
        }
      }

      __break(1u);
    }

    else
    {
LABEL_16:
    }
  }
}

double sub_1A22D0460(char a1, char a2)
{
  v3 = v2;
  v6 = MEMORY[0x1E69E7D40];
  v7 = *((*MEMORY[0x1E69E7D40] & *v2) + 0xA8);
  v7(v23);
  v8 = v23[0];
  v28 = v23[0];

  sub_1A225673C(v23);
  v9 = *(v8 + 16);
  v10 = sub_1A22D1BEC(&v28);
  (v7)(v24, v10);
  v11 = sub_1A225673C(v24);
  if ((v25 & 1) == 0 || (v12 = *((*v6 & *v3) + 0xC0), ((v12)(v11) & 1) == 0) || (v12() & 0x100) == 0 || (v12() & 0x10000) != 0 || (v13 = (*((*v6 & *v3) + 0x120))(), sub_1A229DF5C(v13)) || (v12() & 0x1000000) != 0)
  {
    v15 = 0;
  }

  else if (v9 < 3)
  {
    v15 = 1;
  }

  else
  {
    v14 = (*((*v6 & **(v3 + OBJC_IVAR____TtC13MediaControls23MediaControlsModuleView_sessionsView)) + 0xC8))();
    v15 = sub_1A210E438(v14, 1);
  }

  if ((v15 ^ ((*((*v6 & *v3) + 0xC0))() >> 32) & 1) & 1) != 0 || (a2)
  {
    v17 = (*((*v6 & *v3) + 0xD0))(v27);
    *(v18 + 4) = v15;
    v17(v27, 0);
    sub_1A211A390(v26);
    sub_1A211A470(!v15, a1 & 1, v26);
    sub_1A2116928(v26);
    v19 = swift_allocObject();
    *(v19 + 16) = v3;
    *(v19 + 24) = v15;
    if (a1)
    {
      sub_1A2115288(0, &qword_1ED94E980, 0x1E69DD250);
      v20 = v3;
      sub_1A211A390(v27);
      v21 = swift_allocObject();
      v21[2] = sub_1A22D1C54;
      v21[3] = v19;
      v21[4] = v20;
      v22 = v20;

      sub_1A21179EC(v27, sub_1A2247C4C, v21, 0, 0);

      sub_1A2116928(v27);
    }

    else
    {
      sub_1A22D07E8(v3, v15);
    }
  }

  return result;
}

id sub_1A22D07E8(char *a1, char a2)
{
  v4 = *&a1[OBJC_IVAR____TtC13MediaControls23MediaControlsModuleView_allSpeakersButton];
  if (a2)
  {
    sub_1A229A32C(&v12);
  }

  else
  {
    v14 = 0;
    v12 = 0u;
    v13 = 0u;
  }

  sub_1A22E6C18();
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

  return [a1 setNeedsLayout];
}

void sub_1A22D08EC()
{
  v1 = MEMORY[0x1E69E7D40];
  v2 = (*((*MEMORY[0x1E69E7D40] & **(v0 + OBJC_IVAR____TtC13MediaControls23MediaControlsModuleView_sessionsView)) + 0x138))();
  v3 = v2;
  v13 = *(v2 + 16);
  if (v13)
  {
    v4 = 0;
    v5 = (v2 + 48);
    while (v4 < *(v3 + 16))
    {
      v6 = *v5;
      v7 = *((*v1 & **v5) + 0x248);

      v8 = v6;
      v9 = v7();
      if (sub_1A220C928(v9 & 1, 0))
      {
        (*((*v1 & *v12) + 0x168))(24.0);
      }

      ++v4;
      (*((*v1 & *v8) + 0x180))();

      v5 += 3;
      if (v13 == v4)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_7:

    v11 = (*((*v1 & *v12) + 0x108))(v10);
    if (v11)
    {
      v14 = v11;
      (*((*v1 & *v12) + 0x168))();
      [v14 _setContinuousCornerRadius_];
    }
  }
}

id sub_1A22D0B5C()
{
  v1 = MEMORY[0x1E69E7D40];
  (*((*MEMORY[0x1E69E7D40] & *v0) + 0x1C0))();
  sub_1A211C5AC();
  v2 = (*((*v1 & *v0) + 0xC0))();
  sub_1A22D0060(v2 & 0x101010101);
  v3 = *(v0 + OBJC_IVAR____TtC13MediaControls23MediaControlsModuleView_sessionsView);
  v4 = (*((*v1 & *v3) + 0xC8))();
  v5 = sub_1A210E438(v4, 1);

  return [v3 setAlwaysBounceVertical_];
}

id sub_1A22D0C54()
{
  v1 = MEMORY[0x1E69E7D40];
  v2 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x138))();
  v3 = (*((*v1 & *v0) + 0xD8))();
  if (v2 == 1)
  {

    v4 = (*((*v1 & *v0) + 0x108))();
    if (v4)
    {
      v5 = v4;
      [v4 setAlpha_];
    }

    [*(v0 + OBJC_IVAR____TtC13MediaControls23MediaControlsModuleView_sessionsView) setAlpha_];
    v6 = *(v0 + OBJC_IVAR____TtC13MediaControls23MediaControlsModuleView_embeddedView);
LABEL_11:
    v10 = 0.0;
    goto LABEL_12;
  }

  if (v3)
  {

    v7 = (*((*v1 & *v0) + 0x108))();
    if (v7)
    {
      v8 = v7;
      [v7 setAlpha_];
    }

    v9 = *(v0 + OBJC_IVAR____TtC13MediaControls23MediaControlsModuleView_embeddedView);
    if (v9)
    {
      [v9 setAlpha_];
    }

    v6 = *(v0 + OBJC_IVAR____TtC13MediaControls23MediaControlsModuleView_sessionsView);
    goto LABEL_11;
  }

  v12 = (*((*v1 & *v0) + 0x108))();
  if (v12)
  {
    v13 = v12;
    [v12 setAlpha_];
  }

  v14 = *(v0 + OBJC_IVAR____TtC13MediaControls23MediaControlsModuleView_embeddedView);
  if (v14)
  {
    [v14 setAlpha_];
  }

  v6 = *(v0 + OBJC_IVAR____TtC13MediaControls23MediaControlsModuleView_sessionsView);
  v10 = 1.0;
LABEL_12:

  return [v6 setAlpha_];
}

void sub_1A22D0E94(uint64_t a1, char a2)
{
  v3 = v2;
  v6 = sub_1A22E63C8();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v18[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1A2115288(0, &qword_1ED94E980, 0x1E69DD250);
  sub_1A22E6388();
  v9 = sub_1A22CDC40(v8);
  v10 = sub_1A2114DFC();
  [v9 addSubview_];

  v19 = a1;
  v20 = v9;
  v11 = sub_1A211A6BC();
  sub_1A211A6C4(v11 & 1, sub_1A22D1B34);

  v13 = v3;
  (*((*MEMORY[0x1E69E7D40] & *v3) + 0x168))(v12);
  [v9 _setContinuousCornerRadius_];
  v14 = *(v3 + OBJC_IVAR____TtC13MediaControls23MediaControlsModuleView_embeddedView);
  *(v3 + OBJC_IVAR____TtC13MediaControls23MediaControlsModuleView_embeddedView) = v9;
  v15 = v9;

  [v13 addSubview_];
  if (a2)
  {
    [v15 setAlpha_];
    [v13 layoutIfNeeded];
    sub_1A211A390(v21);
    v16 = swift_allocObject();
    *(v16 + 16) = v13;
    v17 = v13;
    sub_1A21179EC(v21, sub_1A22D1C64, v16, 0, 0);

    sub_1A2116928(v21);
  }

  else
  {
    sub_1A22D0C54();
  }
}

void sub_1A22D10C8(char a1)
{
  v2 = OBJC_IVAR____TtC13MediaControls23MediaControlsModuleView_embeddedView;
  v3 = *&v1[OBJC_IVAR____TtC13MediaControls23MediaControlsModuleView_embeddedView];
  if (v3)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v1;
    if (a1)
    {
      sub_1A2115288(0, &qword_1ED94E980, 0x1E69DD250);
      v6 = v3;
      v7 = v1;
      sub_1A211A390(v13);
      v8 = swift_allocObject();
      *(v8 + 16) = v7;
      v9 = v7;

      sub_1A21179EC(v13, sub_1A22D1B10, v8, sub_1A22D1AC4, v5);

      sub_1A2116928(v13);
    }

    else
    {
      v10 = v3;
      v11 = v1;
      sub_1A22D0C54();
      [v10 removeFromSuperview];

      v12 = *&v1[v2];
      *&v1[v2] = 0;
    }
  }
}

id sub_1A22D1254(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for MediaControlsModuleView(a1, a2);
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

double sub_1A22D1360(double *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  sub_1A2115288(0, &qword_1ED94E980, 0x1E69DD250);
  v11 = swift_allocObject();
  v11[2] = a2;
  v11[3] = a3;
  v11[4] = v5;

  v12 = v5;
  sub_1A21179EC(a1, sub_1A22D19F4, v11, a4, a5);

  return result;
}

uint64_t sub_1A22D1430(uint64_t (*a1)(void), uint64_t a2, void *a3, uint64_t a4)
{
  v9 = MEMORY[0x1E69E7D40];
  if (((*((*MEMORY[0x1E69E7D40] & *v4) + 0xC0))() & 0x100) != 0 || (v10 = (*((*v9 & *v4) + 0x120))(), sub_1A229DF4C(v10)))
  {
    sub_1A229C070(v14);
    sub_1A2115288(0, &qword_1ED94E980, 0x1E69DD250);
    v11 = swift_allocObject();
    v11[2] = a1;
    v11[3] = a2;
    v11[4] = v4;

    v12 = v4;
    sub_1A21179EC(v14, sub_1A22D1C60, v11, a3, a4);

    return sub_1A2116928(v14);
  }

  else
  {
    result = a1();
    if (a3)
    {
      return (a3)(1);
    }
  }

  return result;
}

double sub_1A22D15A0(double *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  sub_1A2115288(0, &qword_1ED94E980, 0x1E69DD250);
  v11 = swift_allocObject();
  v11[2] = a2;
  v11[3] = a3;
  v11[4] = v5;

  v12 = v5;
  sub_1A21179EC(a1, sub_1A22D1C60, v11, a4, a5);

  return result;
}

uint64_t sub_1A22D1674()
{
  v1 = *(v0 + 16);
  v2 = *&v1[OBJC_IVAR____TtC13MediaControls23MediaControlsModuleView_allSpeakersButton];
  v3 = [v2 topAnchor];
  sub_1A2115288(0, &qword_1ED94EA00, 0x1E696ACF0);
  v4 = [*(*&v1[OBJC_IVAR____TtC13MediaControls23MediaControlsModuleView_sessionsView] + qword_1ED94F398) bottomAnchor];
  sub_1A2254498();
  v5 = sub_1A211AA50();

  sub_1A2127270(v3, v5);
  v7 = v6;
  v9 = v8;

  sub_1A2115288(0, &qword_1ED94EA08, 0x1E696ACE8);

  v10 = v7;
  v11 = [v2 centerXAnchor];
  v12 = [v1 centerXAnchor];
  v13 = sub_1A211AAD0();
  v15 = v14;

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB088E40, &unk_1A230A900);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_1A230A140;
  *(v16 + 56) = &type metadata for Constraint;
  *(v16 + 64) = &off_1F14441B0;
  *(v16 + 32) = v10;
  *(v16 + 40) = v9;
  *(v16 + 96) = &type metadata for Constraint;
  *(v16 + 104) = &off_1F14441B0;
  *(v16 + 72) = v13;
  *(v16 + 80) = v15;

  v17 = v13;
  sub_1A211AB54(v16, v18);
  v20 = v19;

  return v20;
}

void sub_1A22D187C()
{
  v1 = v0;
  v2 = (v0 + OBJC_IVAR____TtC13MediaControls23MediaControlsModuleView_viewModel);
  sub_1A220D25C(v10);
  sub_1A225522C(v10, 0, v11);
  v3 = v11[1];
  *v2 = v11[0];
  v2[1] = v3;
  v2[2] = v12[0];
  *(v2 + 41) = *(v12 + 9);
  v4 = v1 + OBJC_IVAR____TtC13MediaControls23MediaControlsModuleView_state;
  *v4 = 0;
  *(v4 + 4) = 0;
  *(v1 + OBJC_IVAR____TtC13MediaControls23MediaControlsModuleView_shareAudioView) = 0;
  *(v1 + OBJC_IVAR____TtC13MediaControls23MediaControlsModuleView_embeddedView) = 0;
  v5 = OBJC_IVAR____TtC13MediaControls23MediaControlsModuleView_sessionsView;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB089DC0, qword_1A2310508);
  *(v1 + v5) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v6 = OBJC_IVAR____TtC13MediaControls23MediaControlsModuleView_allSpeakersButton;
  type metadata accessor for RoutePickerAllSpeakersButton(0, v7);
  v8 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v9 = sub_1A2114DFC();

  *(v1 + v6) = v9;
  *(v1 + OBJC_IVAR____TtC13MediaControls23MediaControlsModuleView_previewView) = 0;
  *(v1 + OBJC_IVAR____TtC13MediaControls23MediaControlsModuleView_layout) = 1;
  *(v1 + OBJC_IVAR____TtC13MediaControls23MediaControlsModuleView_contentRenderingMode) = 0;
  *(v1 + OBJC_IVAR____TtC13MediaControls23MediaControlsModuleView_contentMetrics) = 0;
  *(v1 + OBJC_IVAR____TtC13MediaControls23MediaControlsModuleView_cornerRadius) = 0;
  sub_1A22E7028();
  __break(1u);
}

uint64_t __swift_memcpy5_1(uint64_t result, int *a2)
{
  v2 = *a2;
  *(result + 4) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for MediaControlsModuleView.State(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[5])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for MediaControlsModuleView.State(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 4) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 5) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 5) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

void sub_1A22D1AC4()
{
  v1 = *(v0 + 24);
  [*(v0 + 16) removeFromSuperview];
  v2 = *(v1 + OBJC_IVAR____TtC13MediaControls23MediaControlsModuleView_embeddedView);
  *(v1 + OBJC_IVAR____TtC13MediaControls23MediaControlsModuleView_embeddedView) = 0;
}

uint64_t sub_1A22D1B34()
{
  v1 = *(v0 + 24);
  sub_1A211A728(v8);
  v2 = sub_1A211A7DC(v8, v1);
  sub_1A211A9FC(v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB088E40, &unk_1A230A900);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1A2308E80;
  *(v3 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB088840, &unk_1A2308EF0);
  *(v3 + 64) = &off_1F14441C0;
  *(v3 + 32) = v2;
  sub_1A211AB54(v3, v4);
  v6 = v5;

  return v6;
}

uint64_t sub_1A22D1BEC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB088758, &qword_1A23105F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_1A22D1C68(void *a1, char a2, void (*a3)(id))
{
  [v3 addChildViewController_];
  a3([a1 beginAppearanceTransition:1 animated:a2 & 1]);
  [a1 didMoveToParentViewController_];

  return [a1 endAppearanceTransition];
}

id sub_1A22D1D0C(void *a1, char a2, void (*a3)(id))
{
  [a1 willMoveToParentViewController_];
  a3([a1 beginAppearanceTransition:0 animated:a2 & 1]);
  [a1 removeFromParentViewController];

  return [a1 endAppearanceTransition];
}

id sub_1A22D1D9C()
{
  v0 = objc_allocWithZone(MEMORY[0x1E695E000]);
  v1 = sub_1A22E6598();
  v2 = [v0 initWithSuiteName_];

  return v2;
}

uint64_t sub_1A22D1E2C(char a1)
{
  result = type metadata accessor for WaveformController.Model(0);
  *(v1 + *(result + 20)) = a1;
  return result;
}

unint64_t sub_1A22D1EA4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB089440, &unk_1A230D640);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v10 - v1;
  sub_1A22E5B48();
  v3 = sub_1A22E5B38();
  v4 = *(v3 - 8);
  if ((*(v4 + 48))(v2, 1, v3) == 1)
  {
    sub_1A210D9B0(v2, &unk_1EB089440, &unk_1A230D640);
    v5 = 0;
    LOBYTE(v6) = 1;
  }

  else
  {
    v7 = sub_1A22E5AF8();
    v8 = v7;
    v6 = HIDWORD(v7) & 1;
    (*(v4 + 8))(v2, v3);
    v5 = v8;
  }

  return v5 | (v6 << 32);
}

BOOL sub_1A22D1FE8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB089440, &unk_1A230D640);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v8 - v2;
  if ((sub_1A22E5B88() & 1) == 0 || *(v0 + *(type metadata accessor for WaveformController.Model(0) + 20)) != 1 || (sub_1A22E5C78() & 1) == 0)
  {
    return 0;
  }

  sub_1A22E5B48();
  v4 = sub_1A22E5B38();
  v5 = *(v4 - 8);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    sub_1A210D9B0(v3, &unk_1EB089440, &unk_1A230D640);
    return 1;
  }

  else
  {
    v7 = sub_1A22E5AF8();
    (*(v5 + 8))(v3, v4);
    return (v7 & 0x100000000) != 0 || v7 != 0;
  }
}

uint64_t sub_1A22D2148(uint64_t a1, uint64_t a2)
{
  if (sub_1A22E5B98())
  {
    v4 = type metadata accessor for WaveformController.Model(0);
    v5 = *(a1 + *(v4 + 20)) ^ *(a2 + *(v4 + 20)) ^ 1;
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

uint64_t sub_1A22D219C@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v6 = sub_1A22E5C88();
  (*(*(v6 - 8) + 32))(a3, a1, v6);
  result = type metadata accessor for WaveformController.Model(0);
  *(a3 + *(result + 20)) = a2;
  return result;
}

uint64_t sub_1A22D2218(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (sub_1A22E5B98())
  {
    v6 = *(a1 + *(a3 + 20)) ^ *(a2 + *(a3 + 20)) ^ 1;
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

uint64_t sub_1A22D2270(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB089E08, &qword_1A23105F8);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v16[-v4];
  v6 = type metadata accessor for WaveformController.Model(0);
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v16[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v16[-v11];
  v13 = OBJC_IVAR____TtC13MediaControls18WaveformController_model;
  swift_beginAccess();
  sub_1A212EEFC(v1 + v13, v12);
  swift_beginAccess();
  sub_1A22D248C(a1, v1 + v13);
  swift_endAccess();
  sub_1A212EEFC(v1 + v13, v10);
  if ((sub_1A22E5B98() & 1) == 0)
  {
    sub_1A2128BA8(v10);
    goto LABEL_5;
  }

  v14 = v10[*(v6 + 20)];
  sub_1A2128BA8(v10);
  if (v14 != v12[*(v6 + 20)])
  {
LABEL_5:
    sub_1A212EEFC(v12, v5);
    (*(v7 + 56))(v5, 0, 1, v6);
    sub_1A22D2E44();
    sub_1A2128BA8(a1);
    sub_1A210D9B0(v5, &qword_1EB089E08, &qword_1A23105F8);
    return sub_1A2128BA8(v12);
  }

  sub_1A2128BA8(a1);
  return sub_1A2128BA8(v12);
}

uint64_t sub_1A22D248C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WaveformController.Model(0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

id sub_1A22D24F0(uint64_t a1, uint64_t a2)
{
  v2 = [objc_opt_self() zero];

  return v2;
}

id sub_1A22D2530()
{
  v1 = OBJC_IVAR____TtC13MediaControls18WaveformController_waveformData;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void sub_1A22D2584(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC13MediaControls18WaveformController_waveformData;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_1A22D25DC()
{
  v1 = OBJC_IVAR____TtC13MediaControls18WaveformController_isPlaying;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_1A22D2620(char a1)
{
  v2 = v1;
  v4 = a1 & 1;
  v5 = OBJC_IVAR____TtC13MediaControls18WaveformController_isPlaying;
  swift_beginAccess();
  v6 = *(v2 + v5);
  *(v2 + v5) = a1;
  if (v6 != v4)
  {
    v7 = *(**(v2 + OBJC_IVAR____TtC13MediaControls18WaveformController__observers) + 120);

    v9 = v7(v8);

    v17 = *(v9 + 16);
    if (v17)
    {
      v10 = 0;
      v11 = (v9 + 40);
      while (v10 < *(v9 + 16))
      {
        ++v10;
        v12 = *v11;
        ObjectType = swift_getObjectType();
        v14 = *((*MEMORY[0x1E69E7D40] & *v2) + 0xA8);
        v15 = swift_unknownObjectRetain();
        v16 = v14(v15);
        (*(v12 + 16))(v2, v16 & 1, ObjectType, v12);
        swift_unknownObjectRelease();
        v11 += 2;
        if (v17 == v10)
        {
          goto LABEL_6;
        }
      }

      __break(1u);
    }

    else
    {
LABEL_6:
    }
  }
}

char *sub_1A22D2810(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB089E08, &qword_1A23105F8);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v18 - v5;
  v7 = OBJC_IVAR____TtC13MediaControls18WaveformController_waveformData;
  *&v2[v7] = [objc_opt_self() zero];
  v2[OBJC_IVAR____TtC13MediaControls18WaveformController_isPlaying] = 0;
  *&v2[OBJC_IVAR____TtC13MediaControls18WaveformController_audioAnalyzer] = 0;
  v8 = OBJC_IVAR____TtC13MediaControls18WaveformController__observers;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB089E10, qword_1A2310600);
  *&v2[v8] = sub_1A22CE154();
  v9 = &v2[OBJC_IVAR____TtC13MediaControls18WaveformController_model];
  v10 = sub_1A22E5C88();
  v11 = *(v10 - 8);
  (*(v11 + 16))(v9, a1, v10);
  v12 = type metadata accessor for WaveformController.Model(0);
  v9[*(v12 + 20)] = 0;
  v13 = type metadata accessor for WaveformController(0);
  v19.receiver = v2;
  v19.super_class = v13;
  v14 = objc_msgSendSuper2(&v19, sel_init);
  v15 = OBJC_IVAR____TtC13MediaControls18WaveformController_model;
  swift_beginAccess();
  sub_1A212EEFC(v14 + v15, v6);
  (*(*(v12 - 8) + 56))(v6, 0, 1, v12);
  v16 = v14;
  sub_1A22D2E44();

  (*(v11 + 8))(a1, v10);
  sub_1A210D9B0(v6, &qword_1EB089E08, &qword_1A23105F8);
  return v16;
}

double sub_1A22D2A48(uint64_t a1, uint64_t a2)
{
  v5 = OBJC_IVAR____TtC13MediaControls18WaveformController__observers;
  v6 = *(**(v2 + OBJC_IVAR____TtC13MediaControls18WaveformController__observers) + 120);

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
    v17 = sub_1A22D3794(0, v17[2] + 1, 1, v17);
    *v16 = v17;
  }

  v20 = v17[2];
  v19 = v17[3];
  if (v20 >= v19 >> 1)
  {
    v17 = sub_1A22D3794((v19 > 1), v20 + 1, 1, v17);
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

void sub_1A22D2C0C(uint64_t a1, uint64_t a2)
{
  v4 = *(**(v2 + OBJC_IVAR____TtC13MediaControls18WaveformController__observers) + 136);
  swift_unknownObjectRetain();

  v5 = v4(v10);
  v7 = v6;
  v8 = sub_1A22D38DC(v6, a1);
  swift_unknownObjectRelease();
  v9 = *(*v7 + 16);
  if (v9 < v8)
  {
    __break(1u);
  }

  else
  {
    sub_1A22D3B1C(v8, v9);
    v5(v10, 0);
  }
}

void sub_1A22D2CF8(void *a1, char a2)
{
  v4 = OBJC_IVAR____TtC13MediaControls18WaveformController_waveformData;
  swift_beginAccess();
  v5 = *(v2 + v4);
  *(v2 + v4) = a1;

  v6 = *(**(v2 + OBJC_IVAR____TtC13MediaControls18WaveformController__observers) + 120);
  v7 = a1;

  v9 = v6(v8);

  v10 = *(v9 + 16);
  if (v10)
  {
    v11 = 0;
    v12 = (v9 + 40);
    while (v11 < *(v9 + 16))
    {
      ++v11;
      v13 = *v12;
      ObjectType = swift_getObjectType();
      v15 = *(v13 + 8);
      swift_unknownObjectRetain();
      v15(v2, v7, a2 & 1, ObjectType, v13);
      swift_unknownObjectRelease();
      v12 += 2;
      if (v10 == v11)
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

void sub_1A22D2E44()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB089440, &unk_1A230D640);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v28 - v3;
  v5 = type metadata accessor for WaveformController.Model(0);
  v6 = MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = &v28 - v10;
  v12 = MEMORY[0x1E69E7D40];
  v13 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x78);
  (v13)(v9);
  v14 = sub_1A22E5C78();
  v15 = sub_1A22E5C88();
  (*(*(v15 - 8) + 8))(v11, v15);
  sub_1A22D2620(v14 & 1);
  v16 = [objc_opt_self() currentSettings];
  v17 = [v16 staticWaveform];

  if (!v17)
  {
    v13();
    v22 = sub_1A22D1FE8();
    sub_1A2128BA8(v11);
    if (!v22)
    {
      sub_1A2128884();
      return;
    }

    v23 = *(v1 + OBJC_IVAR____TtC13MediaControls18WaveformController_audioAnalyzer);
    if (v23)
    {
      v24 = [*(v1 + OBJC_IVAR____TtC13MediaControls18WaveformController_audioAnalyzer) pid];
    }

    else
    {
      v24 = 0;
    }

    v13();
    sub_1A22E5B48();
    v25 = sub_1A22E5B38();
    v26 = *(v25 - 8);
    if ((*(v26 + 48))(v4, 1, v25) == 1)
    {
      sub_1A2128BA8(v8);
      sub_1A210D9B0(v4, &unk_1EB089440, &unk_1A230D640);
      if (!v23)
      {
        return;
      }
    }

    else
    {
      v27 = sub_1A22E5AF8();
      sub_1A2128BA8(v8);
      (*(v26 + 8))(v4, v25);
      if (v23)
      {
        if ((v27 & 0x100000000) == 0 && v24 == v27)
        {
          return;
        }
      }

      else if ((v27 & 0x100000000) != 0)
      {
        return;
      }
    }

    sub_1A22D31F0();
    return;
  }

  v18 = (*((*v12 & *v1) + 0xA8))();
  v19 = objc_opt_self();
  v20 = &selRef_staticData;
  if ((v18 & 1) == 0)
  {
    v20 = &selRef_zero;
  }

  v21 = [v19 *v20];
  sub_1A22D2CF8(v21, 0);
}

void sub_1A22D31F0()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_1A22E6248();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB089440, &unk_1A230D640);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v28 - v8;
  v10 = type metadata accessor for WaveformController.Model(0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A2128884();
  (*((*MEMORY[0x1E69E7D40] & *v0) + 0x78))();
  sub_1A22E5B48();
  v13 = sub_1A22E5B38();
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v9, 1, v13) == 1)
  {
    sub_1A2128BA8(v12);
    sub_1A210D9B0(v9, &unk_1EB089440, &unk_1A230D640);
  }

  else
  {
    v30 = ObjectType;
    v15 = sub_1A22E5AF8();
    sub_1A2128BA8(v12);
    (*(v14 + 8))(v9, v13);
    if ((v15 & 0x100000000) == 0)
    {
      v16 = [objc_opt_self() audioAnalyzerForPID_];
      sub_1A2298A64(v6);
      v17 = v16;
      v18 = sub_1A22E6238();
      v19 = sub_1A22E6A98();

      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        v28 = swift_slowAlloc();
        v29 = swift_slowAlloc();
        v31 = v29;
        *v20 = 136315650;
        v21 = sub_1A22E7388();
        v30 = v4;
        v23 = sub_1A2103450(v21, v22, &v31);

        *(v20 + 4) = v23;
        *(v20 + 12) = 2112;
        *(v20 + 14) = v17;
        v24 = v28;
        *v28 = v17;
        *(v20 + 22) = 1024;
        *(v20 + 24) = v15;
        v25 = v17;
        _os_log_impl(&dword_1A20FC000, v18, v19, "[%s] setUpAnalyzer: %@ for pid: %d", v20, 0x1Cu);
        sub_1A210D9B0(v24, &unk_1EB089E80, &qword_1A230DBA0);
        MEMORY[0x1A58DCD00](v24, -1, -1);
        v26 = v29;
        __swift_destroy_boxed_opaque_existential_0(v29);
        MEMORY[0x1A58DCD00](v26, -1, -1);
        MEMORY[0x1A58DCD00](v20, -1, -1);

        (*(v30 + 8))(v6, v3);
      }

      else
      {

        (*(v4 + 8))(v6, v3);
      }

      [v17 addObserver_];
      v27 = *(v1 + OBJC_IVAR____TtC13MediaControls18WaveformController_audioAnalyzer);
      *(v1 + OBJC_IVAR____TtC13MediaControls18WaveformController_audioAnalyzer) = v17;
    }
  }
}

id sub_1A22D36F0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WaveformController(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void *sub_1A22D3794(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB089E98, &unk_1A23106A0);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB089E90, &qword_1A2310698);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1A22D38DC(void *result, uint64_t a2)
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
            v3 = sub_1A22D38C8(v3);
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

unint64_t sub_1A22D3A4C(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v7 = *v3;
  v8 = v7 + 32 + 16 * result;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB089E90, &qword_1A2310698);
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

unint64_t sub_1A22D3B1C(unint64_t result, uint64_t a2)
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

    v4 = sub_1A22D3794(isUniquelyReferenced_nonNull_native, v10, 1, v4);
    *v2 = v4;
  }

  result = sub_1A22D3A4C(v6, a2, 0);
  *v2 = v4;
  return result;
}

uint64_t sub_1A22D3BE4(uint64_t a1)
{
  result = type metadata accessor for WaveformController.Model(319);
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

uint64_t sub_1A22D3CF4(uint64_t a1)
{
  result = sub_1A22E5C88();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1A22D3D68@<X0>(void (*a1)(uint64_t)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  a1(v3);
  v6 = *(*(a2 - 8) + 16);

  return v6(a3, v3, a2);
}

double sub_1A22D3E7C(char a1, double a2)
{
  v4 = sub_1A221CF04();
  v5 = 0.0;
  if (a1)
  {
    v5 = 14.0;
  }

  return v5 + (a2 + -1.0) * 8.0 + *v4 * a2;
}

__n128 sub_1A22D3EE0@<Q0>(_OWORD *a1@<X8>)
{
  v1 = *(MEMORY[0x1E69DC5C0] + 16);
  *a1 = *MEMORY[0x1E69DC5C0];
  a1[1] = v1;
  result = *MEMORY[0x1E69DDCE0];
  v3 = *(MEMORY[0x1E69DDCE0] + 16);
  a1[2] = *MEMORY[0x1E69DDCE0];
  a1[3] = v3;
  return result;
}

void sub_1A22D3F04(double *a1@<X8>, double a2@<D0>, double a3@<D1>, double a4@<D2>, double a5@<D3>, double a6@<D4>, double a7@<D5>, double a8@<D6>, double a9@<D7>)
{
  *a1 = a2;
  a1[1] = a3;
  a1[2] = a4;
  a1[3] = a5;
  a1[4] = a6;
  a1[5] = a7;
  a1[6] = a8;
  a1[7] = a9;
}

BOOL sub_1A22D3F18(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  v7[0] = *a1;
  v7[1] = v2;
  v3 = a1[3];
  v7[2] = a1[2];
  v7[3] = v3;
  v4 = a2[1];
  v8[0] = *a2;
  v8[1] = v4;
  v5 = a2[3];
  v8[2] = a2[2];
  v8[3] = v5;
  return sub_1A22D778C(v7, v8);
}

void sub_1A22D3F64(uint64_t a1)
{
  v3 = v1 + OBJC_IVAR____TtC13MediaControls20RoutePickerItemsView_metrics;
  v4 = swift_beginAccess();
  v5.n128_u64[0] = *v3;
  v6.n128_u64[0] = *a1;
  if (*v3 != *a1 || ((v5.n128_u64[0] = *(a1 + 24), v6.n128_u64[0] = *(v3 + 3), *(v3 + 1) == *(a1 + 8)) ? (v7 = *(v3 + 2) == *(a1 + 16)) : (v7 = 0), v7 ? (v8 = v6.n128_f64[0] == v5.n128_f64[0]) : (v8 = 0), !v8 || (v5.n128_u64[0] = *(v3 + 4), v6.n128_u64[0] = *(a1 + 32), v5.n128_f64[0] != v6.n128_f64[0]) || ((v5.n128_u64[0] = *(v3 + 5), v6.n128_u64[0] = *(v3 + 6), v5.n128_f64[0] == *(a1 + 40)) ? (v9 = v6.n128_f64[0] == *(a1 + 48)) : (v9 = 0), v9 ? (v10 = *(v3 + 7) == *(a1 + 56)) : (v10 = 0), !v10)))
  {
    v11 = *(v1 + OBJC_IVAR____TtC13MediaControls20RoutePickerItemsView_collectionView);
    (*((*MEMORY[0x1E69E7D40] & *v1) + 0x90))(v14, v4, v5, v6);
    v12 = [v11 setScrollIndicatorInsets_];
    sub_1A22D6444(v12, v13);
  }
}

void sub_1A22D4074(_OWORD *a1)
{
  v3 = (v1 + OBJC_IVAR____TtC13MediaControls20RoutePickerItemsView_metrics);
  swift_beginAccess();
  v4 = v3[1];
  v8[0] = *v3;
  v8[1] = v4;
  v5 = v3[3];
  v8[2] = v3[2];
  v8[3] = v5;
  v6 = a1[1];
  *v3 = *a1;
  v3[1] = v6;
  v7 = a1[3];
  v3[2] = a1[2];
  v3[3] = v7;
  sub_1A22D3F64(v8);
}

void (*sub_1A22D40EC(uint64_t *a1))(uint64_t a1, char a2)
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
  v5 = OBJC_IVAR____TtC13MediaControls20RoutePickerItemsView_metrics;
  *(v3 + 216) = v1;
  *(v3 + 224) = v5;
  v6 = (v1 + v5);
  swift_beginAccess();
  v7 = *v6;
  v8 = v6[1];
  v9 = v6[3];
  v4[10] = v6[2];
  v4[11] = v9;
  v4[8] = v7;
  v4[9] = v8;
  return sub_1A22D418C;
}

void sub_1A22D418C(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = (*(*a1 + 216) + *(*a1 + 224));
  if (a2)
  {
    v4 = *a1;
  }

  else
  {
    v4 = (*a1 + 64);
  }

  v5 = v3[3];
  v7 = *v3;
  v6 = v3[1];
  v4[2] = v3[2];
  v4[3] = v5;
  *v4 = v7;
  v4[1] = v6;
  v8 = v2[8];
  v9 = v2[9];
  v10 = v2[11];
  v3[2] = v2[10];
  v3[3] = v10;
  *v3 = v8;
  v3[1] = v9;
  sub_1A22D3F64(v4);

  free(v2);
}

uint64_t sub_1A22D420C(unsigned __int16 a1, uint64_t a2, unsigned __int16 a3, uint64_t a4)
{
  if ((a1 ^ a3) & 0x100) != 0 || ((a1 ^ a3))
  {
    return 0;
  }

  else
  {
    return sub_1A22D422C(a2, a4);
  }
}

uint64_t sub_1A22D422C(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v2 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = 1 << *(result + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(result + 64);
  v7 = (v4 + 63) >> 6;
  while (v6)
  {
    v8 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
LABEL_13:
    v11 = (*(v2 + 48) + 16 * (v8 | (v3 << 6)));
    v12 = *v11;
    v13 = v11[1];

    sub_1A210FF30(v12, v13);
    v15 = v14;

    if (v15)
    {
      sub_1A226FAB0();
      result = sub_1A22E6568();
      if (result)
      {
        continue;
      }
    }

    return 0;
  }

  v9 = v3;
  while (1)
  {
    v3 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v3 >= v7)
    {
      return 1;
    }

    v10 = *(v2 + 64 + 8 * v3);
    ++v9;
    if (v10)
    {
      v8 = __clz(__rbit64(v10));
      v6 = (v10 - 1) & v10;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1A22D43B4(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2 || ((a1[1] ^ a2[1]) & 1) != 0)
  {
    return 0;
  }

  else
  {
    return sub_1A22D422C(*(a1 + 1), *(a2 + 1));
  }
}

double sub_1A22D43E8(unsigned int a1, uint64_t a2)
{
  v5 = v2 + OBJC_IVAR____TtC13MediaControls20RoutePickerItemsView_state;
  v6 = swift_beginAccess();
  v7 = *v5;
  v8 = v5[1];
  v9 = *(v5 + 1);
  *v5 = a1 & 1;
  v5[1] = BYTE1(a1) & 1;
  *(v5 + 1) = a2;
  if (v7 != (a1 & 1) || (((a1 >> 8) & 1 ^ v8) & 1) != 0 || (v10 = , v11 = sub_1A22D422C(v10, v9), v6 = , (v11 & 1) == 0))
  {
    v12 = *((*MEMORY[0x1E69E7D40] & *v2) + 0xA8);
    v13 = v12(v6);

    if (v8 != (v13 & 0x100) >> 8)
    {
      v14 = sub_1A2122FA4(1);
    }

    v12(v14);
    v16 = v15;

    v17 = sub_1A22D422C(v16, v9);

    if ((v17 & 1) == 0 || (v19 = v12(v18), , v7 != (v19 & 1)))
    {
      sub_1A22D56D4();
    }
  }

  return result;
}

void (*sub_1A22D455C(uint64_t *a1))(uint64_t **a1, char a2)
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
  v5 = v1 + OBJC_IVAR____TtC13MediaControls20RoutePickerItemsView_state;
  swift_beginAccess();
  v6 = *(v5 + 1);
  v7 = *(v5 + 8);
  *(v4 + 24) = *v5;
  v4 += 24;
  *(v4 + 1) = v6;
  *(v4 + 8) = v7;

  return sub_1A22D460C;
}

void sub_1A22D460C(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 24);
  if (*(*a1 + 25))
  {
    v4 = 256;
  }

  else
  {
    v4 = 0;
  }

  v5 = v2[4];
  if (a2)
  {

    sub_1A22D43E8(v4 | v3, v5);
  }

  else
  {
    sub_1A22D43E8(v4 | v3, v2[4]);
  }

  free(v2);
}

void __spoils<X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> sub_1A22D46C4(uint64_t a1, uint64_t a2)
{

  sub_1A22D6F1C(v2);
}

void sub_1A22D4708(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a5@<X8>)
{
  v9 = type metadata accessor for RoutePickerItemView.ViewModel(0);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = (&v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = a3;

  sub_1A22D6F1C(v13);
  v14 = v20;
  v15 = *(v20 + 16);
  if (v15)
  {
    v16 = 0;
    while (v16 < *(v14 + 16))
    {
      sub_1A2123C78(v14 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v16, v12);
      v17 = *v12 == a1 && v12[1] == a2;
      if (v17 || (sub_1A22E71E8() & 1) != 0)
      {

        sub_1A21245E0(v12, a5);
        v18 = 0;
        goto LABEL_12;
      }

      ++v16;
      sub_1A2123CDC(v12);
      if (v15 == v16)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_10:

    v18 = 1;
LABEL_12:
    (*(v10 + 56))(a5, v18, 1, v9);
  }
}

uint64_t sub_1A22D48B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if ((sub_1A212669C(a1, a3) & 1) == 0)
  {
    return 0;
  }

  return sub_1A212669C(a2, a4);
}

uint64_t sub_1A22D4908(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a2 + 16);
  MEMORY[0x1A58DB4F0](v5);
  if (v5)
  {
    v6 = *(type metadata accessor for RoutePickerItemView.ViewModel(0) - 8);
    v7 = a2 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
    v8 = *(v6 + 72);
    sub_1A212A328(&qword_1EB089EB0, &unk_1A230CC08);
    do
    {
      sub_1A22E6548();
      v7 += v8;
      --v5;
    }

    while (v5);
  }

  v9 = *(a3 + 16);
  result = MEMORY[0x1A58DB4F0](v9);
  if (v9)
  {
    v11 = *(type metadata accessor for RoutePickerItemView.ViewModel(0) - 8);
    v12 = a3 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
    v13 = *(v11 + 72);
    sub_1A212A328(&qword_1EB089EB0, &unk_1A230CC08);
    do
    {
      result = sub_1A22E6548();
      v12 += v13;
      --v9;
    }

    while (v9);
  }

  return result;
}

uint64_t sub_1A22D4AB0(uint64_t a1, uint64_t a2)
{
  sub_1A22E72A8();
  sub_1A22D4908(v5, a1, a2);
  return sub_1A22E72F8();
}

uint64_t sub_1A22D4B00()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1A22E72A8();
  sub_1A22D4908(v4, v1, v2);
  return sub_1A22E72F8();
}

uint64_t sub_1A22D4B54(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  sub_1A22E72A8();
  sub_1A22D4908(v5, v2, v3);
  return sub_1A22E72F8();
}

uint64_t sub_1A22D4B9C(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  if ((sub_1A212669C(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  return sub_1A212669C(v2, v3);
}

void (*sub_1A22D4BF8(uint64_t *a1))(uint64_t a1, char a2)
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
  v5 = OBJC_IVAR____TtC13MediaControls20RoutePickerItemsView_viewModel;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = (v1 + v5);
  swift_beginAccess();
  v7 = *v6;
  v8 = v6[1];
  *(v4 + 24) = *v6;
  *(v4 + 32) = v8;
  sub_1A2124CD0(v7, v8);
  return sub_1A22D4C94;
}

void sub_1A22D4C94(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 24);
  v4 = *(*a1 + 32);
  if (a2)
  {
    sub_1A2124CD0(*(*a1 + 24), v4);
    sub_1A211BB9C(v3, v4);
    v5 = v2[3];
    v6 = v2[4];
LABEL_13:
    sub_1A211BC80(v5, v6);
    goto LABEL_14;
  }

  v7 = (v2[5] + v2[6]);
  v9 = *v7;
  v8 = v7[1];
  *v7 = v3;
  v7[1] = v4;
  if (v3)
  {
    if (v9)
    {

      if (sub_1A212669C(v3, v9))
      {
        v10 = sub_1A212669C(v4, v8);
        sub_1A211BC80(v3, v4);
        if (v10)
        {
          goto LABEL_12;
        }
      }

      else
      {
        sub_1A211BC80(v3, v4);
      }
    }

LABEL_11:
    sub_1A2122FA4(1);
LABEL_12:
    v5 = v9;
    v6 = v8;
    goto LABEL_13;
  }

  if (v9)
  {
    goto LABEL_11;
  }

LABEL_14:

  free(v2);
}

uint64_t sub_1A22D4DEC(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC13MediaControls20RoutePickerItemsView_sessionInteractor);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
  return swift_unknownObjectRelease();
}

uint64_t sub_1A22D4EAC(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC13MediaControls20RoutePickerItemsView_animationCoordinator;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_1A22D4F18(uint64_t *a1))(uint64_t a1, char a2)
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
  v5 = OBJC_IVAR____TtC13MediaControls20RoutePickerItemsView_animationCoordinator;
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

id sub_1A22D4FB8()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E69DC850]) init];
  v1 = [objc_allocWithZone(MEMORY[0x1E69DC7F0]) initWithFrame:v0 collectionViewLayout:{0.0, 0.0, 0.0, 0.0}];

  v2 = sub_1A2114DFC();
  return v2;
}

id sub_1A22D5034()
{
  v1 = OBJC_IVAR____TtC13MediaControls20RoutePickerItemsView____lazy_storage___dataSource;
  v2 = *(v0 + OBJC_IVAR____TtC13MediaControls20RoutePickerItemsView____lazy_storage___dataSource);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC13MediaControls20RoutePickerItemsView____lazy_storage___dataSource);
  }

  else
  {
    v4 = *(v0 + OBJC_IVAR____TtC13MediaControls20RoutePickerItemsView_collectionView);
    swift_allocObject();
    swift_unknownObjectWeakInit();
    objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB089F98, qword_1A2310A80));
    v5 = v4;
    v6 = v0;
    v7 = sub_1A22E6328();
    v8 = *(v0 + v1);
    *(v6 + v1) = v7;
    v3 = v7;

    v2 = 0;
  }

  v9 = v2;
  return v3;
}

char *sub_1A22D510C(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v10 = &v4[OBJC_IVAR____TtC13MediaControls20RoutePickerItemsView_metrics];
  v11 = *(MEMORY[0x1E69DC5C0] + 16);
  *v10 = *MEMORY[0x1E69DC5C0];
  *(v10 + 1) = v11;
  v12 = *(MEMORY[0x1E69DDCE0] + 16);
  *(v10 + 2) = *MEMORY[0x1E69DDCE0];
  *(v10 + 3) = v12;
  v13 = &v4[OBJC_IVAR____TtC13MediaControls20RoutePickerItemsView_state];
  *v13 = 0;
  *(v13 + 1) = MEMORY[0x1E69E7CC8];
  v14 = &v4[OBJC_IVAR____TtC13MediaControls20RoutePickerItemsView_viewModel];
  *v14 = 0;
  *(v14 + 1) = 0;
  v15 = &v4[OBJC_IVAR____TtC13MediaControls20RoutePickerItemsView_sessionInteractor];
  *v15 = 0;
  *(v15 + 1) = 0;
  *&v4[OBJC_IVAR____TtC13MediaControls20RoutePickerItemsView_animationCoordinator + 8] = 0;
  swift_unknownObjectWeakInit();
  v16 = OBJC_IVAR____TtC13MediaControls20RoutePickerItemsView_collectionView;
  v17 = [objc_allocWithZone(MEMORY[0x1E69DC850]) init];
  v18 = [objc_allocWithZone(MEMORY[0x1E69DC7F0]) initWithFrame:v17 collectionViewLayout:{0.0, 0.0, 0.0, 0.0}];

  v19 = sub_1A2114DFC();
  *&v5[v16] = v19;
  *&v5[OBJC_IVAR____TtC13MediaControls20RoutePickerItemsView____lazy_storage___dataSource] = 0;
  *&v5[OBJC_IVAR____TtC13MediaControls20RoutePickerItemsView_layoutConstraints] = 0;
  v43.receiver = v5;
  v43.super_class = type metadata accessor for RoutePickerItemsView(v20, v21);
  v22 = objc_msgSendSuper2(&v43, sel_initWithFrame_, a1, a2, a3, a4);
  v23 = OBJC_IVAR____TtC13MediaControls20RoutePickerItemsView_collectionView;
  v24 = *&v22[OBJC_IVAR____TtC13MediaControls20RoutePickerItemsView_collectionView];
  v25 = v22;
  v26 = v24;
  v27 = sub_1A22D5034();
  [v26 setDataSource_];

  v28 = *&v22[v23];
  [v28 setDelegate_];

  v29 = *&v22[v23];
  type metadata accessor for RoutePickerItemCell(0);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v31 = v29;
  sub_1A2125094();

  v32 = sub_1A22E6598();

  [v31 registerClass:ObjCClassFromMetadata forCellWithReuseIdentifier:v32];

  v33 = *&v22[v23];
  v34 = objc_opt_self();
  v35 = v33;
  v36 = [v34 clearColor];
  [v35 setBackgroundColor_];

  [*&v22[v23] setAlwaysBounceVertical_];
  v37 = *&v22[v23];
  v38 = sub_1A22E6598();
  [v37 setAccessibilityIdentifier_];

  [v25 addSubview_];
  v39 = sub_1A211A6BC();
  *&v25[OBJC_IVAR____TtC13MediaControls20RoutePickerItemsView_layoutConstraints] = sub_1A211A6C4(v39 & 1, sub_1A22D7820);

  sub_1A22D6444(v40, v41);

  return v25;
}

double sub_1A22D54C0(double a1)
{
  sub_1A212397C();

  sub_1A221CF04();
  return a1;
}

void sub_1A22D5594()
{
  v1 = [*(v0 + OBJC_IVAR____TtC13MediaControls20RoutePickerItemsView_collectionView) contextMenuInteraction];
  [v1 dismissMenu];
}

uint64_t sub_1A22D55F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a3;
  v7 = (*((*MEMORY[0x1E69E7D40] & *v3) + 0xB8))(v13);
  v9 = v8;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *(v9 + 8);
  *(v9 + 8) = 0x8000000000000000;
  sub_1A22D74C0(v4, a1, a2, isUniquelyReferenced_nonNull_native);
  *(v9 + 8) = v12;

  return v7(v13, 0);
}

void sub_1A22D56D4()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB089A70, &qword_1A230F840);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v50 = &v49 - v3;
  v4 = sub_1A22E56B8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v56 = &v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for RoutePickerItemView.ViewModel(0);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = (&v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = sub_1A212397C();
  v12 = *(v11 + 16);
  v55 = v4;
  v60 = v0;
  if (v12)
  {
    v62 = v5;
    v63[0] = MEMORY[0x1E69E7CC0];
    sub_1A210E5F8(0, v12, 0);
    v13 = v63[0];
    v14 = *(v8 + 80);
    v61 = v11;
    v15 = v11 + ((v14 + 32) & ~v14);
    v16 = *(v8 + 72);
    do
    {
      sub_1A2123C78(v15, v10);
      v17 = *v10;
      v18 = v10[1];

      sub_1A2123CDC(v10);
      v63[0] = v13;
      v20 = v13[2];
      v19 = v13[3];
      if (v20 >= v19 >> 1)
      {
        sub_1A210E5F8((v19 > 1), v20 + 1, 1);
        v13 = v63[0];
      }

      v13[2] = v20 + 1;
      v21 = &v13[2 * v20];
      v21[4] = v17;
      v21[5] = v18;
      v15 += v16;
      --v12;
    }

    while (v12);

    v1 = v60;
    v4 = v55;
    v5 = v62;
  }

  else
  {

    v13 = MEMORY[0x1E69E7CC0];
  }

  v22 = v50;
  v23 = v56;
  v62 = v13[2];
  if (v62)
  {
    v24 = 0;
    v61 = (v5 + 48);
    v58 = (v5 + 32);
    v59 = OBJC_IVAR____TtC13MediaControls20RoutePickerItemsView_collectionView;
    v57 = (v5 + 8);
    v25 = v13 + 5;
    while (v24 < v13[2])
    {
      v27 = *(v25 - 1);
      v26 = *v25;

      v28 = sub_1A22D5034();
      v63[0] = v27;
      v63[1] = v26;
      sub_1A22E6368();

      if ((*v61)(v22, 1, v4) == 1)
      {

        sub_1A22B2C0C(v22);
      }

      else
      {
        (*v58)(v23, v22, v4);
        v29 = v1;
        v30 = v4;
        v31 = *(v29 + v59);
        v32 = sub_1A22E5688();
        v33 = [v31 cellForItemAtIndexPath_];

        if (v33)
        {
          type metadata accessor for RoutePickerItemCell(0);
          v34 = swift_dynamicCastClass();
          if (v34)
          {
            v54 = v33;
            v53 = OBJC_IVAR____TtC13MediaControls19RoutePickerItemCell_itemView;
            v35 = *(v34 + OBJC_IVAR____TtC13MediaControls19RoutePickerItemCell_itemView);
            v36 = *((*MEMORY[0x1E69E7D40] & *v60) + 0xA8);
            v52 = (*MEMORY[0x1E69E7D40] & *v60) + 168;
            v37 = v34;
            v51 = v36();

            v38 = (*((*MEMORY[0x1E69E7D40] & *v35) + 0xA8))(v63);
            *v39 = v51 & 1;
            v40 = v38(v63, 0);
            v41 = *(v37 + v53);
            (v36)(v40);
            v43 = v42;
            if (*(v42 + 16) && (v44 = sub_1A210FF30(v27, v26), (v45 & 1) != 0))
            {
              v46 = *(*(v43 + 56) + v44);
            }

            else
            {
              v46 = 0;
            }

            v1 = v60;

            v47 = (*((*MEMORY[0x1E69E7D40] & *v41) + 0xA8))(v63);
            *(v48 + 2) = v46;
            v47(v63, 0);

            v23 = v56;
            v4 = v55;
            (*v57)(v56, v55);

            v22 = v50;
          }

          else
          {

            v23 = v56;
            v4 = v55;
            (*v57)(v56, v55);
            v1 = v60;
          }
        }

        else
        {
          (*v57)(v23, v30);

          v4 = v30;
          v1 = v60;
        }
      }

      ++v24;
      v25 += 2;
      if (v62 == v24)
      {
        goto LABEL_23;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_23:
  }
}

uint64_t sub_1A22D5CA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + OBJC_IVAR____TtC13MediaControls19RoutePickerItemCell_itemView);
  v6 = MEMORY[0x1E69E7D40];
  v7 = *((*MEMORY[0x1E69E7D40] & *v3) + 0xA8);
  v8 = v7();

  v9 = *((*v6 & *v5) + 0xA8);
  v10 = v9(v22);
  *v11 = v8 & 1;
  v12 = v10(v22, 0);
  (v7)(v12);
  v14 = v13;
  if (*(v13 + 16) && (v15 = sub_1A210FF30(a2, a3), (v16 & 1) != 0))
  {
    v17 = *(*(v14 + 56) + v15);
  }

  else
  {
    v17 = 0;
  }

  v18 = v9(v22);
  *(v19 + 2) = v17;
  return v18(v22, 0);
}

unint64_t sub_1A22D5E14(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB088838, qword_1A2308EB0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v24 - v8;
  sub_1A2125094();

  v10 = sub_1A22E6598();

  v11 = sub_1A22E5688();
  v12 = [a1 dequeueReusableCellWithReuseIdentifier:v10 forIndexPath:v11];

  type metadata accessor for RoutePickerItemCell(0);
  v13 = swift_dynamicCastClass();
  if (!v13)
  {

    return v13;
  }

  v14 = sub_1A212397C();
  result = sub_1A22E56A8();
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v16 = result;
    if (result < *(v14 + 16))
    {
      v17 = type metadata accessor for RoutePickerItemView.ViewModel(0);
      v18 = *(v17 - 8);
      sub_1A2123C78(v14 + ((*(v18 + 80) + 32) & ~*(v18 + 80)) + *(v18 + 72) * v16, v9);

      (*(v18 + 56))(v9, 0, 1, v17);
      v19 = MEMORY[0x1E69E7D40];
      (*((*MEMORY[0x1E69E7D40] & *v13) + 0x70))(v9);
      v20 = *(v13 + OBJC_IVAR____TtC13MediaControls19RoutePickerItemCell_itemView);
      v21 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v22 = *((*v19 & *v20) + 0xE8);
      v23 = v20;

      v22(sub_1A22D80D8, v21);

      sub_1A22D5CA8(v13, a3, a4);
      return v13;
    }
  }

  __break(1u);
  return result;
}

double sub_1A22D60E4(uint64_t a1)
{
  v2 = v1;
  v3 = sub_1A22D5034();
  sub_1A22E6338();

  if (v13)
  {
    v5 = sub_1A226B3C4();
    v6 = *v5 == v12 && v13 == *(v5 + 1);
    if (v6 || (sub_1A22E71E8() & 1) != 0)
    {

      v7 = (*((*MEMORY[0x1E69E7D40] & *v2) + 0xB8))(&v12);
      *(v8 + 1) = 1;
      v7(&v12, 0);
    }

    else if ((*((*MEMORY[0x1E69E7D40] & *v2) + 0xE0))())
    {
      v10 = v9;
      ObjectType = swift_getObjectType();
      (*(v10 + 8))(v12, v13, ObjectType, v10);

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  return result;
}

id sub_1A22D6260(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC13MediaControls20RoutePickerItemsView_collectionView);
  v3 = sub_1A22E5688();
  v4 = [v2 cellForItemAtIndexPath_];

  result = 0;
  if (v4)
  {
    type metadata accessor for RoutePickerItemCell(0);
    v6 = swift_dynamicCastClass();
    if (v6)
    {
      v7 = v6;
      v8 = [objc_allocWithZone(MEMORY[0x1E69DCE28]) init];
      v9 = [objc_opt_self() systemBackgroundColor];
      v10 = [v9 colorWithAlphaComponent_];

      [v8 setBackgroundColor_];
      v11 = v4;
      [v7 bounds];
      v13 = v12;
      v15 = v14;
      v17 = v16;
      v19 = v18;
      [v7 bounds];
      v24 = sub_1A2128180(v20, v21, v22, v23);
      v25 = [objc_opt_self() bezierPathWithRoundedRect:v13 cornerRadius:{v15, v17, v19, v24}];
      [v8 setVisiblePath_];

      v26 = [objc_allocWithZone(MEMORY[0x1E69DD070]) initWithView:v7 parameters:v8];
      return v26;
    }

    else
    {

      return 0;
    }
  }

  return result;
}

void sub_1A22D6444(uint64_t a1, uint64_t a2)
{
  v3 = objc_opt_self();
  v4 = [v3 fractionalWidthDimension_];
  v5 = [v3 fractionalHeightDimension_];
  v6 = objc_opt_self();
  v7 = [v6 sizeWithWidthDimension:v4 heightDimension:v5];

  v8 = [objc_opt_self() itemWithLayoutSize_];
  v9 = [v3 fractionalWidthDimension_];
  v10 = [v3 absoluteDimension_];
  v11 = [v6 sizeWithWidthDimension:v9 heightDimension:v10];

  v12 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0898A0, &qword_1A2308C60);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1A230DE30;
  *(v13 + 32) = v8;
  sub_1A2115288(0, &qword_1ED94E9E0, 0x1E6995578);
  v14 = v8;
  v15 = sub_1A22E6738();

  v16 = [v12 horizontalGroupWithLayoutSize:v11 subitems:v15];

  v17 = [objc_opt_self() sectionWithGroup_];
  v18 = [v17 setInterGroupSpacing_];
  (*((*MEMORY[0x1E69E7D40] & *v2) + 0x90))(v22, v18);
  [v17 setContentInsets_];
  v21 = [objc_allocWithZone(MEMORY[0x1E69DC810]) init];
  [v21 setScrollDirection_];
  v19 = *(v2 + OBJC_IVAR____TtC13MediaControls20RoutePickerItemsView_collectionView);
  v20 = [objc_allocWithZone(MEMORY[0x1E69DC808]) initWithSection:v17 configuration:v21];
  [v19 setCollectionViewLayout_];

  [v19 setContentOffset_];
}

id sub_1A22D6780(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for RoutePickerItemsView(a1, a2);
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

void sub_1A22D6858(void *a1, uint64_t a2)
{
  sub_1A22D60E4(a2);
  v3 = sub_1A22E5688();
  [a1 deselectItemAtIndexPath:v3 animated:1];
}

uint64_t sub_1A22D69F8(uint64_t a1, void *a2)
{
  v4 = sub_1A22E5888();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v29 - v8;
  v10 = *(a1 + 16);
  if (v10)
  {
    v42 = MEMORY[0x1E69E7CC0];
    v37 = v7;
    v38 = a2;
    sub_1A22E6F38();
    v11 = sub_1A2115288(0, &qword_1ED94E940, 0x1E69DC628);
    v13 = *(v5 + 16);
    v12 = v5 + 16;
    v35 = v13;
    v36 = v11;
    v14 = *(v12 + 64);
    v15 = (a1 + ((v14 + 32) & ~v14));
    v33 = *(v12 + 56);
    v34 = v14;
    v32 = (v14 + 24) & ~v14;
    v39 = v12;
    v30 = (v12 - 8);
    v31 = (v12 + 16);
    do
    {
      v16 = v35;
      v35(v9, v15, v4);
      v17 = sub_1A22E5878();
      v40 = v18;
      v41 = v17;
      v19 = sub_1A22E5848();
      sub_1A22DC57C(v19, v20);

      v21 = v4;
      v22 = v37;
      v16(v37, v9, v21);
      v23 = v32;
      v24 = swift_allocObject();
      v25 = v38;
      *(v24 + 16) = v38;
      v26 = v22;
      v4 = v21;
      (*v31)(v24 + v23, v26, v21);
      v27 = v25;
      sub_1A22E6C98();
      (*v30)(v9, v21);
      sub_1A22E6F08();
      sub_1A22E6F48();
      sub_1A22E6F58();
      sub_1A22E6F18();
      v15 += v33;
      --v10;
    }

    while (v10);
  }

  sub_1A2115288(0, &qword_1EB089F80, 0x1E69DCC60);
  return sub_1A22E6C08();
}

id sub_1A22D6D8C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = sub_1A22E56B8();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A22E5698();
  v10 = a1;
  v11 = sub_1A22D6260(v9);

  (*(v7 + 8))(v9, v6);

  return v11;
}

id sub_1A22D6E8C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  sub_1A2115288(0, &unk_1EB089F70, 0x1E69DCC78);
  v3 = sub_1A22E6748();

  v4 = v2(v3);

  return v4;
}

void sub_1A22D6F1C(uint64_t a1)
{
  v2 = *(a1 + 16);
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

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= v3[3] >> 1)
  {
    if (*(a1 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  v3 = sub_1A22D7048(isUniquelyReferenced_nonNull_native, v12, 1, v3);
  if (!*(a1 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = (v3[3] >> 1) - v3[2];
  type metadata accessor for RoutePickerItemView.ViewModel(0);
  if (v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return;
  }

  v9 = v3[2];
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    v3[2] = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
}

void *sub_1A22D7048(void *result, int64_t a2, char a3, void *a4)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB089F90, &qword_1A230A130);
  v10 = *(type metadata accessor for RoutePickerItemView.ViewModel(0) - 8);
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
  v15 = *(type metadata accessor for RoutePickerItemView.ViewModel(0) - 8);
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

void sub_1A22D7220(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB089F88, &qword_1A2310A48);
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

unint64_t sub_1A22D74C0(char a1, uint64_t a2, uint64_t a3, char a4)
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
      sub_1A22D7220(v16, a4 & 1);
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
      sub_1A22D7624();
      result = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    *(v21[7] + result) = a1;
    return result;
  }

  v21[(result >> 6) + 8] |= 1 << result;
  v22 = (v21[6] + 16 * result);
  *v22 = a2;
  v22[1] = a3;
  *(v21[7] + result) = a1;
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

void sub_1A22D7624()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB089F88, &qword_1A2310A48);
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

BOOL sub_1A22D778C(double *a1, double *a2)
{
  result = 0;
  if (*a1 == *a2)
  {
    v2 = a1[1] == a2[1] && a1[2] == a2[2];
    v3 = v2 && a1[3] == a2[3];
    if (v3 && a1[4] == a2[4])
    {
      v4 = a1[5] == a2[5] && a1[6] == a2[6];
      if (v4 && a1[7] == a2[7])
      {
        return 1;
      }
    }
  }

  return result;
}

uint64_t sub_1A22D7820()
{
  v1 = *(v0 + 16);
  sub_1A2115288(0, &qword_1ED94EA58, 0x1E696ACE0);
  v2 = [v1 heightAnchor];
  sub_1A2257F8C(v2);
  v4 = v3;

  v5 = sub_1A22E08C0(v4);
  v7 = v6;

  KeyPath = swift_getKeyPath();
  v9 = sub_1A2127238(v5, v7, KeyPath);
  v42 = v10;

  sub_1A2115288(0, &qword_1ED94EA00, 0x1E696ACF0);
  v11 = *&v1[OBJC_IVAR____TtC13MediaControls20RoutePickerItemsView_collectionView];

  v41 = v9;
  v12 = [v11 topAnchor];
  v13 = [v1 topAnchor];
  v14 = sub_1A211AAD0();
  v40 = v15;

  sub_1A2115288(0, &qword_1ED94EA08, 0x1E696ACE8);

  v39 = v14;
  v16 = [v11 leadingAnchor];
  v17 = [v1 leadingAnchor];
  v18 = sub_1A211AAD0();
  v38 = v19;

  v37 = v18;
  v20 = [v11 trailingAnchor];
  v21 = [v1 trailingAnchor];
  v22 = sub_1A211AAD0();
  v36 = v23;

  v24 = v22;
  v25 = [v11 bottomAnchor];
  v26 = [v1 bottomAnchor];
  v27 = sub_1A211AAD0();
  v29 = v28;

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB088E40, &unk_1A230A900);
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_1A230A770;
  *(v30 + 56) = &type metadata for Constraint;
  *(v30 + 64) = &off_1F14441B0;
  *(v30 + 32) = v41;
  *(v30 + 40) = v42;
  *(v30 + 96) = &type metadata for Constraint;
  *(v30 + 104) = &off_1F14441B0;
  *(v30 + 72) = v39;
  *(v30 + 80) = v40;
  *(v30 + 136) = &type metadata for Constraint;
  *(v30 + 144) = &off_1F14441B0;
  *(v30 + 112) = v37;
  *(v30 + 120) = v38;
  *(v30 + 176) = &type metadata for Constraint;
  *(v30 + 184) = &off_1F14441B0;
  *(v30 + 152) = v24;
  *(v30 + 160) = v36;
  *(v30 + 216) = &type metadata for Constraint;
  *(v30 + 224) = &off_1F14441B0;
  *(v30 + 192) = v27;
  *(v30 + 200) = v29;

  v31 = v27;
  sub_1A211AB54(v30, v32);
  v34 = v33;

  return v34;
}

void sub_1A22D7BE8()
{
  v1 = v0;
  v2 = (v0 + OBJC_IVAR____TtC13MediaControls20RoutePickerItemsView_metrics);
  v3 = *(MEMORY[0x1E69DC5C0] + 16);
  *v2 = *MEMORY[0x1E69DC5C0];
  v2[1] = v3;
  v4 = *(MEMORY[0x1E69DDCE0] + 16);
  v2[2] = *MEMORY[0x1E69DDCE0];
  v2[3] = v4;
  v5 = v0 + OBJC_IVAR____TtC13MediaControls20RoutePickerItemsView_state;
  *v5 = 0;
  *(v5 + 8) = MEMORY[0x1E69E7CC8];
  v6 = (v0 + OBJC_IVAR____TtC13MediaControls20RoutePickerItemsView_viewModel);
  *v6 = 0;
  v6[1] = 0;
  v7 = (v0 + OBJC_IVAR____TtC13MediaControls20RoutePickerItemsView_sessionInteractor);
  *v7 = 0;
  v7[1] = 0;
  *(v0 + OBJC_IVAR____TtC13MediaControls20RoutePickerItemsView_animationCoordinator + 8) = 0;
  swift_unknownObjectWeakInit();
  v8 = OBJC_IVAR____TtC13MediaControls20RoutePickerItemsView_collectionView;
  v9 = [objc_allocWithZone(MEMORY[0x1E69DC850]) init];
  v10 = [objc_allocWithZone(MEMORY[0x1E69DC7F0]) initWithFrame:v9 collectionViewLayout:{0.0, 0.0, 0.0, 0.0}];

  v11 = sub_1A2114DFC();
  *(v1 + v8) = v11;
  *(v1 + OBJC_IVAR____TtC13MediaControls20RoutePickerItemsView____lazy_storage___dataSource) = 0;
  *(v1 + OBJC_IVAR____TtC13MediaControls20RoutePickerItemsView_layoutConstraints) = 0;
  sub_1A22E7028();
  __break(1u);
}

unint64_t sub_1A22D7D54(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for RoutePickerItemView.ViewModel(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + 16))
  {
    sub_1A22E56B8();
    v8 = sub_1A212397C();
    result = sub_1A22E56A8();
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (result < *(v8 + 16))
    {
      sub_1A2123C78(v8 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * result, v7);

      v10 = sub_1A226C0D4();
      sub_1A2123CDC(v7);
      if (*(v10 + 16))
      {
        v11 = swift_allocObject();
        *(v11 + 16) = v10;
        *(v11 + 24) = v2;
        v12 = objc_opt_self();
        aBlock[4] = sub_1A22D81A0;
        aBlock[5] = v11;
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 1107296256;
        aBlock[2] = sub_1A22D6E8C;
        aBlock[3] = &block_descriptor_22;
        v13 = _Block_copy(aBlock);
        v14 = v2;

        v15 = [v12 configurationWithIdentifier:0 previewProvider:0 actionProvider:v13];

        _Block_release(v13);
        return v15;
      }

      return 0;
    }

    __break(1u);
    return result;
  }

  return 0;
}

unint64_t sub_1A22D7FB0()
{
  result = qword_1EB089EE8;
  if (!qword_1EB089EE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB089EE8);
  }

  return result;
}

uint64_t sub_1A22D8008(uint64_t a1, int a2)
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

uint64_t sub_1A22D8028(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
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

  *(result + 64) = v3;
  return result;
}

void sub_1A22D80A4(unint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  sub_1A2123718(a1, a2, **(v3 + 16), *(v3 + 24));
  if (!v4)
  {
    *a3 = v6;
  }
}

void sub_1A22D80D8(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    if ((*((*MEMORY[0x1E69E7D40] & *Strong) + 0xE0))())
    {
      v5 = v4;
      ObjectType = swift_getObjectType();
      (*(v5 + 16))(a1, ObjectType, v5);
      swift_unknownObjectRelease();
    }
  }
}

uint64_t sub_1A22D81A8()
{
  v1 = *(*(sub_1A22E5888() - 8) + 80);
  result = (*((*MEMORY[0x1E69E7D40] & **(v0 + 16)) + 0xE0))();
  if (result)
  {
    v4 = v3;
    ObjectType = swift_getObjectType();
    (*(v4 + 48))(v0 + ((v1 + 24) & ~v1), ObjectType, v4);

    return swift_unknownObjectRelease();
  }

  return result;
}

unint64_t sub_1A22D8294(void *a1, uint64_t a2, uint64_t *a3)
{
  v6 = *a3;
  v5 = a3[1];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v8 = Strong;
  v9 = sub_1A22D5E14(a1, a2, v6, v5);

  return v9;
}

void sub_1A22D8324()
{
  v1 = *(*(v0 + 16) + OBJC_IVAR____TtC13MediaControls20RoutePickerItemsView_layoutConstraints);
  if (v1)
  {
    v2 = *(v0 + 24);
    v3 = *(*v1 + 248);

    v5 = v3(v4);

    [v5 setConstant_];
  }
}

id sub_1A22D8438()
{
  v0 = *MEMORY[0x1E6979928];
  v1 = objc_allocWithZone(MEMORY[0x1E6979378]);

  return [v1 initWithType_];
}

char *sub_1A22D8488(double a1, double a2, double a3, double a4)
{
  *&v4[OBJC_IVAR____TtC13MediaControls18BackgroundBlurView_enabledBlurRadius] = 0x4014000000000000;
  *&v4[OBJC_IVAR____TtC13MediaControls18BackgroundBlurView_disabledBlurRadius] = 0;
  v9 = OBJC_IVAR____TtC13MediaControls18BackgroundBlurView_blurFilter;
  v10 = [objc_allocWithZone(MEMORY[0x1E6979378]) initWithType_];
  *&v4[v9] = v10;
  v19.receiver = v4;
  v19.super_class = type metadata accessor for BackgroundBlurView(v10, v11);
  v12 = objc_msgSendSuper2(&v19, sel_initWithFrame_, a1, a2, a3, a4);
  v13 = [v12 layer];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB088918, &unk_1A230ACB0);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1A2308E80;
  v15 = *&v12[OBJC_IVAR____TtC13MediaControls18BackgroundBlurView_blurFilter];
  *(v14 + 56) = sub_1A2115288(0, &qword_1ED94E958, 0x1E6979378);
  *(v14 + 32) = v15;
  v16 = v15;
  v17 = sub_1A22E6738();

  [v13 setFilters_];

  return v12;
}

void sub_1A22D8660()
{
  *(v0 + OBJC_IVAR____TtC13MediaControls18BackgroundBlurView_enabledBlurRadius) = 0x4014000000000000;
  *(v0 + OBJC_IVAR____TtC13MediaControls18BackgroundBlurView_disabledBlurRadius) = 0;
  v1 = OBJC_IVAR____TtC13MediaControls18BackgroundBlurView_blurFilter;
  *(v0 + v1) = [objc_allocWithZone(MEMORY[0x1E6979378]) initWithType_];
  sub_1A22E7028();
  __break(1u);
}

void sub_1A22D87E0(char a1, char a2)
{
  if (a2)
  {
    v3 = sub_1A22E6598();
    v4 = [objc_opt_self() animationWithKeyPath_];

    v5 = objc_opt_self();
    v6 = v4;
    [v5 inheritedAnimationDuration];
    [v6 setDuration_];

    v7 = sub_1A22E56C8();
    [v6 setFromValue_];

    v8 = sub_1A22E56C8();
    [v6 setToValue_];

    v9 = [v2 layer];
    [v9 addAnimation:v6 forKey:0];
  }

  v10 = [v2 layer];
  v11 = sub_1A22E56C8();
  v12 = sub_1A22E6598();
  [v10 setValue:v11 forKeyPath:v12];
}

id sub_1A22D89BC(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for BackgroundBlurView(a1, a2);
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

id sub_1A22D8A00(uint64_t a1, uint64_t a2)
{
  v3 = OBJC_IVAR___MRUSessionsContainerViewController____lazy_storage___containerView;
  v4 = *(v2 + OBJC_IVAR___MRUSessionsContainerViewController____lazy_storage___containerView);
  if (v4)
  {
    v5 = *(v2 + OBJC_IVAR___MRUSessionsContainerViewController____lazy_storage___containerView);
  }

  else
  {
    type metadata accessor for RoutePickerContainerView(0, a2);
    v6 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    v7 = *(v2 + v3);
    *(v2 + v3) = v6;
    v5 = v6;

    v4 = 0;
  }

  v8 = v4;
  return v5;
}

uint64_t sub_1A22D8A78@<X0>(uint64_t a1@<X8>)
{
  v3 = (*((*MEMORY[0x1E69E7D40] & *v1) + 0x138))();
  if (!v3)
  {
    v9 = *MEMORY[0x1E69AE810];
    v10 = sub_1A22E6128();
    v7 = *(*(v10 - 8) + 104);
    v6 = v10;
    v11 = a1;
    v12 = v9;
    goto LABEL_26;
  }

  v4 = v3;
  v5 = [v3 mru_surface];

  v6 = sub_1A22E6128();
  v7 = *(*(v6 - 8) + 104);
  if (v5 <= 5)
  {
    if (v5 > 2)
    {
      if (v5 == 3)
      {
        v8 = MEMORY[0x1E69AE7E0];
      }

      else if (v5 == 4)
      {
        v8 = MEMORY[0x1E69AE808];
      }

      else
      {
        v8 = MEMORY[0x1E69AE800];
      }

      goto LABEL_25;
    }

    if (v5 == 1)
    {
      v8 = MEMORY[0x1E69AE7D8];
      goto LABEL_25;
    }

    if (v5 == 2)
    {
      v8 = MEMORY[0x1E69AE7D0];
      goto LABEL_25;
    }

LABEL_24:
    v8 = MEMORY[0x1E69AE810];
    goto LABEL_25;
  }

  if (v5 <= 7)
  {
    if (v5 == 6)
    {
      v8 = MEMORY[0x1E69AE7E8];
    }

    else
    {
      v8 = MEMORY[0x1E69AE7F8];
    }

    goto LABEL_25;
  }

  if (v5 == 8)
  {
    v8 = MEMORY[0x1E69AE818];
    goto LABEL_25;
  }

  if (v5 == 9)
  {
    v8 = MEMORY[0x1E69AE820];
    goto LABEL_25;
  }

  if (v5 != 10)
  {
    goto LABEL_24;
  }

  v8 = MEMORY[0x1E69AE7F0];
LABEL_25:
  v12 = *v8;
  v11 = a1;
LABEL_26:

  return v7(v11, v12, v6);
}

id sub_1A22D8C64()
{
  v1 = OBJC_IVAR___MRUSessionsContainerViewController____lazy_storage___anchoredPresentationSourceView;
  v2 = *(v0 + OBJC_IVAR___MRUSessionsContainerViewController____lazy_storage___anchoredPresentationSourceView);
  v3 = v2;
  if (v2 != 1)
  {
    goto LABEL_8;
  }

  v4 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x138))();
  if (!v4 || (v5 = v4, [v4 sourceRect], v7 = v6, v9 = v8, v11 = v10, v13 = v12, v5, v20.origin.x = 0.0, v20.origin.y = 0.0, v20.size.width = 0.0, v20.size.height = 0.0, v19.origin.x = v7, v19.origin.y = v9, v19.size.width = v11, v19.size.height = v13, CGRectEqualToRect(v19, v20)))
  {
    v3 = 0;
LABEL_7:
    v17 = *(v0 + v1);
    *(v0 + v1) = v3;
    v18 = v3;
    sub_1A2133060(v17);
LABEL_8:
    sub_1A2133070(v2);
    return v3;
  }

  v3 = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
  v14 = [objc_opt_self() clearColor];
  [v3 setBackgroundColor_];

  [v3 setFrame_];
  result = [v0 view];
  if (result)
  {
    v16 = result;
    [result addSubview_];

    goto LABEL_7;
  }

  __break(1u);
  return result;
}

id sub_1A22D8E1C()
{
  v1 = v0;
  v2 = OBJC_IVAR___MRUSessionsContainerViewController____lazy_storage___routePickerTransitioningDelegate;
  v3 = *&v0[OBJC_IVAR___MRUSessionsContainerViewController____lazy_storage___routePickerTransitioningDelegate];
  v4 = v3;
  if (v3 == 1)
  {
    v5 = [v1 traitCollection];
    v6 = [v5 userInterfaceIdiom];

    if (v6 == 1)
    {
      type metadata accessor for RoutePickerTransitioningDelegate(0, v7);
      type metadata accessor for RoutePickerTransitioningDelegate.PresentationStyle.AnchorInfo(0, v11);
      v12 = sub_1A22D8C64();
      v13 = sub_1A225CCF8(v12);
      v14 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v9 = sub_1A22DBB80;
      v8 = v13;
      v10 = v14;
    }

    else
    {
      if (v6)
      {
        v4 = 0;
        goto LABEL_8;
      }

      type metadata accessor for RoutePickerTransitioningDelegate(0, v7);
      v8 = 0;
      v9 = 0;
      v10 = 0;
    }

    v4 = sub_1A225CEB0(v8, v9, v10);
LABEL_8:
    v15 = *&v1[v2];
    *&v1[v2] = v4;
    v16 = v4;
    sub_1A2133060(v15);
  }

  sub_1A2133070(v3);
  return v4;
}

uint64_t sub_1A22D8F5C@<X0>(char *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB089FE0, qword_1A2310AC0);
  v4 = MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v13[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v13[-v7];
  v9 = OBJC_IVAR___MRUSessionsContainerViewController____lazy_storage___routingSessionConfiguration;
  swift_beginAccess();
  sub_1A22DBBE0(v1 + v9, v8);
  v10 = sub_1A22E6158();
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v8, 1, v10) != 1)
  {
    return (*(v11 + 32))(a1, v8, v10);
  }

  sub_1A22DBA00(v8);
  sub_1A22D912C(v1, a1);
  (*(v11 + 16))(v6, a1, v10);
  (*(v11 + 56))(v6, 0, 1, v10);
  swift_beginAccess();
  sub_1A22DBC50(v6, v1 + v9);
  return swift_endAccess();
}

uint64_t sub_1A22D912C@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  v4 = sub_1A22E6158();
  v90 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v89 = &v83 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v99 = sub_1A22E6108();
  MEMORY[0x1EEE9AC00](v99);
  v101 = &v83 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1A22E60C8();
  v8 = MEMORY[0x1EEE9AC00](v7 - 8);
  v94 = &v83 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v88 = &v83 - v11;
  MEMORY[0x1EEE9AC00](v10);
  v98 = &v83 - v12;
  v13 = sub_1A22E6128();
  v14 = MEMORY[0x1EEE9AC00](v13 - 8);
  v93 = &v83 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v87 = &v83 - v17;
  MEMORY[0x1EEE9AC00](v16);
  v97 = &v83 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB088E88, &qword_1A230AAB0);
  v20 = MEMORY[0x1EEE9AC00](v19 - 8);
  v92 = &v83 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x1EEE9AC00](v20);
  v86 = &v83 - v23;
  MEMORY[0x1EEE9AC00](v22);
  v96 = &v83 - v24;
  v102 = sub_1A22E6118();
  v25 = *(v102 - 8);
  v26 = MEMORY[0x1EEE9AC00](v102);
  v91 = (&v83 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  v28 = MEMORY[0x1EEE9AC00](v26);
  v85 = (&v83 - v29);
  MEMORY[0x1EEE9AC00](v28);
  v95 = (&v83 - v30);
  v100 = sub_1A2254A94();
  v31 = *((*MEMORY[0x1E69E7D40] & *a1) + 0x138);
  v32 = v31();
  if (v32)
  {
    v33 = v32;
    v34 = [v32 routeUID];

    if (v34)
    {
      v84 = v4;
      v35 = a2;
      v36 = sub_1A22E65C8();
      v38 = v37;

      if (v36 == 0x4C41434F4CLL && v38 == 0xE500000000000000)
      {

LABEL_7:
        v40 = MEMORY[0x1E69AE7B0];
LABEL_20:
        (*(v25 + 104))(v95, *v40, v102);
        goto LABEL_21;
      }

      v39 = sub_1A22E71E8();

      a2 = v35;
      v4 = v84;
      if (v39)
      {
        goto LABEL_7;
      }
    }
  }

  v41 = v31();
  if (v41)
  {
    v42 = v41;
    v43 = [v41 routeUID];

    if (v43)
    {
      v44 = sub_1A22E65C8();
      v46 = v45;

      v47 = v95;
      *v95 = v44;
      v47[1] = v46;
      (*(v25 + 104))(v47, *MEMORY[0x1E69AE7B8], v102);
LABEL_21:
      v66 = sub_1A22E60E8();
      (*(*(v66 - 8) + 56))(v96, 1, 1, v66);
      sub_1A22D8A78(v97);
      sub_1A22E60B8();
      v103 = MEMORY[0x1E69E7CC0];
      sub_1A22DBCC0(&qword_1EB08A0C0, MEMORY[0x1E69AE7A0], MEMORY[0x1E69AE7A8]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB08A0C8, &qword_1A2310B50);
      sub_1A22DBD08();
      sub_1A22E6DA8();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB088E90, qword_1A230AAB8);
      v67 = sub_1A22E6148();
      v68 = *(v67 - 8);
      v69 = (*(v68 + 80) + 32) & ~*(v68 + 80);
      v70 = swift_allocObject();
      *(v70 + 16) = xmmword_1A2308E80;
      (*(v68 + 104))(v70 + v69, *MEMORY[0x1E69AE830], v67);
      return sub_1A22E6138();
    }
  }

  v48 = v31();
  if (!v48 || (v49 = v48, v50 = [v48 presentingAppBundleID], v49, !v50))
  {
    v40 = MEMORY[0x1E69AE7C0];
    goto LABEL_20;
  }

  v98 = a2;
  v51 = sub_1A22E65C8();
  v53 = v52;

  v54 = v31();
  v84 = v4;
  if (!v54 || (v55 = v54, v56 = [v54 audioSessionID], v55, !v56))
  {
    v71 = v91;
    *v91 = v51;
    v71[1] = v53;
    (*(v25 + 104))();
    v72 = sub_1A22E60E8();
    (*(*(v72 - 8) + 56))(v92, 1, 1, v72);
    sub_1A22D8A78(v93);
    v73 = sub_1A22E60B8();
    v74 = (v31)(v73);
    if (v74)
    {
      v75 = v74;
      [v74 sortByIsVideoRoute];
    }

    v76 = v98;
    v78 = v89;
    v77 = v90;
    v103 = MEMORY[0x1E69E7CC0];
    sub_1A22DBCC0(&qword_1EB08A0C0, MEMORY[0x1E69AE7A0], MEMORY[0x1E69AE7A8]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB08A0C8, &qword_1A2310B50);
    sub_1A22DBD08();
    sub_1A22E6DA8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB088E90, qword_1A230AAB8);
    v79 = sub_1A22E6148();
    v80 = *(v79 - 8);
    v81 = (*(v80 + 80) + 32) & ~*(v80 + 80);
    v82 = swift_allocObject();
    *(v82 + 16) = xmmword_1A2308E80;
    (*(v80 + 104))(v82 + v81, *MEMORY[0x1E69AE830], v79);
    goto LABEL_26;
  }

  v57 = v85;
  *v85 = v51;
  v57[1] = v53;
  (*(v25 + 104))();
  v58 = sub_1A22E60E8();
  (*(*(v58 - 8) + 56))(v86, 1, 1, v58);
  sub_1A22D8A78(v87);
  sub_1A22E60B8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB088E90, qword_1A230AAB8);
  v59 = sub_1A22E6148();
  v60 = *(v59 - 8);
  v61 = (*(v60 + 80) + 32) & ~*(v60 + 80);
  result = swift_allocObject();
  *(result + 16) = xmmword_1A2308E80;
  if ((v56 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (!HIDWORD(v56))
  {
    *(result + v61) = v56;
    v63 = (*(v60 + 104))(result + v61, *MEMORY[0x1E69AE828], v59);
    v64 = (v31)(v63);
    if (v64)
    {
      v65 = v64;
      [v64 sortByIsVideoRoute];
    }

    v76 = v98;
    v78 = v89;
    v77 = v90;
    v103 = MEMORY[0x1E69E7CC0];
    sub_1A22DBCC0(&qword_1EB08A0C0, MEMORY[0x1E69AE7A0], MEMORY[0x1E69AE7A8]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB08A0C8, &qword_1A2310B50);
    sub_1A22DBD08();
    sub_1A22E6DA8();
LABEL_26:
    sub_1A22E6138();
    return (*(v77 + 32))(v76, v78, v84);
  }

  __break(1u);
  return result;
}

uint64_t sub_1A22D9CE4@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1A22E6158();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t sub_1A22D9D50()
{
  v1 = sub_1A22E6158();
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v10[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = (v0 + OBJC_IVAR___MRUSessionsContainerViewController____lazy_storage___sessionsController);
  if (*(v0 + OBJC_IVAR___MRUSessionsContainerViewController____lazy_storage___sessionsController))
  {
    v5 = *(v0 + OBJC_IVAR___MRUSessionsContainerViewController____lazy_storage___sessionsController);
  }

  else
  {
    type metadata accessor for SessionsController(0);
    sub_1A22D8F5C(v3);
    sub_1A223592C(v10, v6);
    v7 = sub_1A2113050();
    v5 = sub_1A223596C(v3, v10, v7 & 1);
    *v4 = v5;
    v4[1] = &off_1F143D738;

    swift_unknownObjectRelease();
  }

  swift_unknownObjectRetain();
  return v5;
}

void *sub_1A22D9E40()
{
  v1 = OBJC_IVAR___MRUSessionsContainerViewController____lazy_storage___sessionsViewController;
  v2 = *(v0 + OBJC_IVAR___MRUSessionsContainerViewController____lazy_storage___sessionsViewController);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR___MRUSessionsContainerViewController____lazy_storage___sessionsViewController);
LABEL_16:
    v35 = v2;
    return v3;
  }

  v4 = v0;
  type metadata accessor for SessionsViewController(0);
  v5 = sub_1A22D9D50();
  v7 = sub_1A229479C(v5, v6);
  [v7 setModalPresentationStyle_];
  v8 = sub_1A22D8E1C();
  [v7 setTransitioningDelegate_];

  v9 = MEMORY[0x1E69E7D40];
  v10 = (*((*MEMORY[0x1E69E7D40] & *v4) + 0x138))();
  if (v10)
  {
    v11 = v10;
    v12 = [v10 userInterfaceStyle];
    if (v12)
    {
      v13 = v12;
      v14 = [v12 integerValue];
    }

    else
    {
      v14 = 0;
    }
  }

  else
  {
    v14 = 0;
  }

  [v7 setOverrideUserInterfaceStyle_];

  v15 = swift_allocObject();
  swift_unknownObjectWeakInit();
  (*((*v9 & *v7) + 0x98))(sub_1A22DBD78, v15);
  v16 = [v4 traitCollection];
  v17 = sub_1A224CA58();

  v18.n128_u64[0] = 1.0;
  if (!v17)
  {
LABEL_15:
    (*((*v9 & *v7) + 0xC8))(0.5, v18);
    v34 = *(v4 + v1);
    *(v4 + v1) = v7;
    v3 = v7;

    v2 = 0;
    goto LABEL_16;
  }

  v19 = sub_1A22D8C64();
  if (!v19)
  {
    v18.n128_u64[0] = 0.5;
    goto LABEL_15;
  }

  v20 = v19;
  [v19 frame];

  sub_1A22E6BC8();
  v22 = v21;
  result = [v4 view];
  if (result)
  {
    v24 = result;
    [result bounds];
    v26 = v25;
    v28 = v27;
    v30 = v29;
    v32 = v31;

    v36.origin.x = v26;
    v36.origin.y = v28;
    v36.size.width = v30;
    v36.size.height = v32;
    v33 = v22 / CGRectGetHeight(v36);
    v18.n128_u64[0] = 1.0;
    if (v33 < 1.0)
    {
      v18.n128_f64[0] = v33;
    }

    goto LABEL_15;
  }

  __break(1u);
  return result;
}

void sub_1A22DA15C(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    (*((*MEMORY[0x1E69E7D40] & *Strong) + 0x180))(0, 1);
  }
}

void sub_1A22DA1F0(uint64_t a1, uint64_t a2)
{
  v3 = sub_1A22D8A00(a1, a2);
  [v2 setView_];
}

void *sub_1A22DA2FC()
{
  v1 = OBJC_IVAR___MRUSessionsContainerViewController_configuration;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_1A22DA3A4(void *a1)
{
  v3 = OBJC_IVAR___MRUSessionsContainerViewController_configuration;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  if (v4)
  {
    v5 = a1;
    v6 = sub_1A22D9E40();
    v7 = (*((*MEMORY[0x1E69E7D40] & *v1) + 0x138))();
    if (v7)
    {
      v8 = v7;
      v9 = [v7 userInterfaceStyle];
      if (v9)
      {
        v10 = v9;
        v11 = [v9 integerValue];
      }

      else
      {
        v11 = 0;
      }
    }

    else
    {
      v11 = 0;
    }

    [v6 setOverrideUserInterfaceStyle_];
  }
}

void (*sub_1A22DA4C8(uint64_t *a1))(uint64_t a1, char a2)
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
  v5 = OBJC_IVAR___MRUSessionsContainerViewController_configuration;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  v6 = *(v1 + v5);
  *(v4 + 24) = v6;
  v7 = v6;
  return sub_1A22DA564;
}

void sub_1A22DA564(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 24);
  if (a2)
  {
    v4 = v3;
    sub_1A22DA3A4(v3);
    v5 = v2[3];
  }

  else
  {
    v7 = v2[4];
    v6 = v2[5];
    v5 = *(v7 + v6);
    *(v7 + v6) = v3;
    if (!v5)
    {
      goto LABEL_12;
    }

    v8 = v2[4];
    v9 = v3;
    v10 = sub_1A22D9E40();
    v11 = (*((*MEMORY[0x1E69E7D40] & *v8) + 0x138))();
    if (v11)
    {
      v12 = v11;
      v13 = [v11 userInterfaceStyle];
      if (v13)
      {
        v14 = v13;
        v15 = [v13 integerValue];
      }

      else
      {
        v15 = 0;
      }
    }

    else
    {
      v15 = 0;
    }

    [v10 setOverrideUserInterfaceStyle_];
  }

LABEL_12:

  free(v2);
}

uint64_t sub_1A22DA9E4(void *a1, void (*a2)(void, void, __n128))
{
  v4 = (v2 + *a1);
  swift_beginAccess();
  v5 = *v4;
  (a2)(*v4, v4[1]);
  return v5;
}

double sub_1A22DAA4C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = sub_1A22E65C8();
  v5 = v4;

  v2(v3, v5);

  return result;
}

uint64_t sub_1A22DAB98(uint64_t a1, uint64_t a2, void *a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  v8 = (v4 + *a3);
  swift_beginAccess();
  v9 = *v8;
  v10 = v8[1];
  *v8 = a1;
  v8[1] = a2;
  return a4(v9, v10);
}

void sub_1A22DAC5C(char a1, int a2)
{
  swift_getObjectType();
  v5 = sub_1A22E6158();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v36[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = sub_1A22E6248();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v36[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (a1)
  {
    v40 = a2;
    v13 = sub_1A2104EA0();
    (*(v10 + 16))(v12, v13, v9);
    v14 = v2;
    v15 = sub_1A22E6238();
    v16 = sub_1A22E6A98();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v37 = v16;
      v18 = v17;
      v38 = swift_slowAlloc();
      aBlock = v38;
      *v18 = 136315394;
      v19 = sub_1A22E7388();
      v39 = v14;
      v21 = sub_1A2103450(v19, v20, &aBlock);

      *(v18 + 4) = v21;
      *(v18 + 12) = 2080;
      sub_1A22D8F5C(v8);
      sub_1A22DBCC0(&qword_1ED950690, MEMORY[0x1E69AE838], MEMORY[0x1E69AE840]);
      v22 = sub_1A22E71D8();
      v24 = v23;
      (*(v6 + 8))(v8, v5);
      v25 = sub_1A2103450(v22, v24, &aBlock);

      *(v18 + 14) = v25;
      v14 = v39;
      _os_log_impl(&dword_1A20FC000, v15, v37, "[%s] Will present with configuration:%s", v18, 0x16u);
      v26 = v38;
      swift_arrayDestroy();
      MEMORY[0x1A58DCD00](v26, -1, -1);
      MEMORY[0x1A58DCD00](v18, -1, -1);
    }

    (*(v10 + 8))(v12, v9);
    v27 = [objc_opt_self() mainRunLoop];
    v28 = swift_allocObject();
    *(v28 + 16) = v14;
    *(v28 + 24) = v40 & 1;
    v45 = sub_1A22DB914;
    v46 = v28;
    aBlock = MEMORY[0x1E69E9820];
    v42 = 1107296256;
    v43 = sub_1A226B024;
    v44 = &block_descriptor_6;
    v29 = _Block_copy(&aBlock);
    v30 = v14;
    v31 = v29;
    v32 = v30;

    [v27 performBlock_];
    _Block_release(v31);
  }

  else
  {
    v33 = swift_allocObject();
    *(v33 + 16) = v2;
    v45 = sub_1A22DB90C;
    v46 = v33;
    aBlock = MEMORY[0x1E69E9820];
    v42 = 1107296256;
    v43 = sub_1A210E3F0;
    v44 = &block_descriptor_23;
    v34 = _Block_copy(&aBlock);
    v35 = v2;

    [v35 dismissViewControllerAnimated:a2 & 1 completion:v34];
    _Block_release(v34);
  }
}

void (*sub_1A22DB114(void *a1))(void)
{
  v2 = sub_1A22E58F8();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1A22D9E40();
  (*(v3 + 104))(v5, *MEMORY[0x1E69AE580], v2);
  v7 = MEMORY[0x1E69E7D40];
  (*((*MEMORY[0x1E69E7D40] & *v6) + 0xE8))(v5);

  sub_1A22D9D50();
  v9 = v8;
  ObjectType = swift_getObjectType();
  (*(v9 + 24))(ObjectType, v9);
  v11 = swift_unknownObjectRelease();
  result = (*((*v7 & *a1) + 0x150))(v11);
  if (result)
  {
    v14 = v13;
    v15 = result;
    result();
    return sub_1A210F5C0(v15, v14);
  }

  return result;
}

void (*sub_1A22DB320())(void)
{
  v1 = v0;
  v2 = sub_1A22E58F8();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1A22D9E40();
  (*(v3 + 104))(v5, *MEMORY[0x1E69AE580], v2);
  v7 = MEMORY[0x1E69E7D40];
  (*((*MEMORY[0x1E69E7D40] & *v6) + 0xE8))(v5);

  sub_1A22D9D50();
  v9 = v8;
  ObjectType = swift_getObjectType();
  (*(v9 + 24))(ObjectType, v9);
  v11 = swift_unknownObjectRelease();
  result = (*((*v7 & *v1) + 0x150))(v11);
  if (result)
  {
    v14 = v13;
    v15 = result;
    result();
    return sub_1A210F5C0(v15, v14);
  }

  return result;
}

id sub_1A22DB514(uint64_t a1, uint64_t a2, void *a3)
{
  *&v3[OBJC_IVAR___MRUSessionsContainerViewController____lazy_storage___containerView] = 0;
  *&v3[OBJC_IVAR___MRUSessionsContainerViewController____lazy_storage___anchoredPresentationSourceView] = 1;
  *&v3[OBJC_IVAR___MRUSessionsContainerViewController____lazy_storage___routePickerTransitioningDelegate] = 1;
  v6 = OBJC_IVAR___MRUSessionsContainerViewController____lazy_storage___routingSessionConfiguration;
  v7 = sub_1A22E6158();
  (*(*(v7 - 8) + 56))(&v3[v6], 1, 1, v7);
  v8 = &v3[OBJC_IVAR___MRUSessionsContainerViewController____lazy_storage___sessionsController];
  *v8 = 0;
  *(v8 + 1) = 0;
  *&v3[OBJC_IVAR___MRUSessionsContainerViewController____lazy_storage___sessionsViewController] = 0;
  *&v3[OBJC_IVAR___MRUSessionsContainerViewController_configuration] = 0;
  v9 = &v3[OBJC_IVAR___MRUSessionsContainerViewController_dismissalBlock];
  *v9 = 0;
  *(v9 + 1) = 0;
  v10 = &v3[OBJC_IVAR___MRUSessionsContainerViewController_customRowTappedBlock];
  *v10 = 0;
  *(v10 + 1) = 0;
  if (a2)
  {
    v11 = sub_1A22E6598();
  }

  else
  {
    v11 = 0;
  }

  v14.receiver = v3;
  v14.super_class = type metadata accessor for SessionsContainerViewController(0);
  v12 = objc_msgSendSuper2(&v14, sel_initWithNibName_bundle_, v11, a3);

  return v12;
}

id sub_1A22DB6C4(void *a1)
{
  *&v1[OBJC_IVAR___MRUSessionsContainerViewController____lazy_storage___containerView] = 0;
  *&v1[OBJC_IVAR___MRUSessionsContainerViewController____lazy_storage___anchoredPresentationSourceView] = 1;
  *&v1[OBJC_IVAR___MRUSessionsContainerViewController____lazy_storage___routePickerTransitioningDelegate] = 1;
  v3 = OBJC_IVAR___MRUSessionsContainerViewController____lazy_storage___routingSessionConfiguration;
  v4 = sub_1A22E6158();
  (*(*(v4 - 8) + 56))(&v1[v3], 1, 1, v4);
  v5 = &v1[OBJC_IVAR___MRUSessionsContainerViewController____lazy_storage___sessionsController];
  *v5 = 0;
  *(v5 + 1) = 0;
  *&v1[OBJC_IVAR___MRUSessionsContainerViewController____lazy_storage___sessionsViewController] = 0;
  *&v1[OBJC_IVAR___MRUSessionsContainerViewController_configuration] = 0;
  v6 = &v1[OBJC_IVAR___MRUSessionsContainerViewController_dismissalBlock];
  *v6 = 0;
  *(v6 + 1) = 0;
  v7 = &v1[OBJC_IVAR___MRUSessionsContainerViewController_customRowTappedBlock];
  v8 = type metadata accessor for SessionsContainerViewController(0);
  *v7 = 0;
  *(v7 + 1) = 0;
  v11.receiver = v1;
  v11.super_class = v8;
  v9 = objc_msgSendSuper2(&v11, sel_initWithCoder_, a1);

  if (v9)
  {
  }

  return v9;
}

id sub_1A22DB810(__n128 a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for SessionsContainerViewController(0);
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

id sub_1A22DB914()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = sub_1A22D9E40();
  v4 = [v3 presentationController];

  if (v4)
  {
    [v4 setDelegate_];
  }

  v5 = *&v1[OBJC_IVAR___MRUSessionsContainerViewController____lazy_storage___sessionsViewController];

  return [v1 presentViewController:v5 animated:v2 completion:0];
}

uint64_t type metadata accessor for SessionsContainerViewController(uint64_t a1)
{
  result = qword_1EB090C40;
  if (!qword_1EB090C40)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1A22DBA00(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB089FE0, qword_1A2310AC0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1A22DBA70(uint64_t a1)
{
  sub_1A22DBB28(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1A22DBB28(uint64_t a1)
{
  if (!qword_1EB08A0B0)
  {
    sub_1A22E6158();
    v1 = sub_1A22E6D68();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB08A0B0);
    }
  }
}

void sub_1A22DBB88(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  v4 = sub_1A22E6598();
  (*(v3 + 16))(v3, v4);
}

uint64_t sub_1A22DBBE0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB089FE0, qword_1A2310AC0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A22DBC50(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB089FE0, qword_1A2310AC0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A22DBCC0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1A22DBD08()
{
  result = qword_1EB08A0D0;
  if (!qword_1EB08A0D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB08A0C8, &qword_1A2310B50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB08A0D0);
  }

  return result;
}

uint64_t sub_1A22DBD94@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1A2277CAC();

  return sub_1A213045C(v2, a1);
}

uint64_t sub_1A22DBDDC@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1A2277E18();

  return sub_1A213045C(v2, a1);
}

uint64_t sub_1A22DBE2C()
{
  v0 = sub_1A22E5CD8();

  return MEMORY[0x1EEE1B290](v0);
}

__n128 sub_1A22DBE64@<Q0>(uint64_t a1@<X8>)
{
  sub_1A22E5CD8();
  sub_1A2279D04(v11, v2);
  v3 = objc_opt_self();
  sub_1A22E5CD8();
  v4 = [v3 goForwardSymbolForTimeInterval_];
  v5 = sub_1A22E65C8();
  v7 = v6;

  sub_1A22779D8(v11, v5, v7, v12);
  v8 = v12[5];
  *(a1 + 64) = v12[4];
  *(a1 + 80) = v8;
  *(a1 + 96) = v12[6];
  v9 = v12[1];
  *a1 = v12[0];
  *(a1 + 16) = v9;
  result = v12[3];
  *(a1 + 32) = v12[2];
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_1A22DBF28()
{
  v0 = sub_1A22E5CD8();

  return MEMORY[0x1EEE1B2B0](v0);
}

__n128 sub_1A22DBF60@<Q0>(uint64_t a1@<X8>)
{
  sub_1A22E5CD8();
  sub_1A2279D04(v11, -v2);
  v3 = objc_opt_self();
  sub_1A22E5CD8();
  v4 = [v3 goBackwardSymbolForTimeInterval_];
  v5 = sub_1A22E65C8();
  v7 = v6;

  sub_1A22779D8(v11, v5, v7, v12);
  v8 = v12[5];
  *(a1 + 64) = v12[4];
  *(a1 + 80) = v8;
  *(a1 + 96) = v12[6];
  v9 = v12[1];
  *a1 = v12[0];
  *(a1 + 16) = v9;
  result = v12[3];
  *(a1 + 32) = v12[2];
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_1A22DC048@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1A22783D4();

  return sub_1A213045C(v2, a1);
}

uint64_t sub_1A22DC084@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1A22781BC();

  return sub_1A213045C(v2, a1);
}

uint64_t sub_1A22DC0CC@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1A2278328();

  return sub_1A213045C(v2, a1);
}

uint64_t sub_1A22DC104(uint64_t a1)
{
  result = sub_1A22DC534(&qword_1ED9506E0, MEMORY[0x1E69AE6D0], MEMORY[0x1E69AE6D8]);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1A22DC15C(uint64_t a1)
{
  result = sub_1A22DC534(&qword_1EB08A0F0, MEMORY[0x1E69AE710], MEMORY[0x1E69AE718]);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1A22DC1B4(uint64_t a1)
{
  result = sub_1A22DC534(&qword_1EB08A0F8, MEMORY[0x1E69AE6F8], MEMORY[0x1E69AE700]);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1A22DC20C(uint64_t a1)
{
  result = sub_1A22DC534(&qword_1ED9506A8, MEMORY[0x1E69AE770], MEMORY[0x1E69AE778]);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1A22DC264(uint64_t a1)
{
  result = sub_1A22DC534(&qword_1ED9506F8, MEMORY[0x1E69AE680], MEMORY[0x1E69AE688]);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1A22DC2BC(uint64_t a1)
{
  result = sub_1A22DC534(&qword_1ED950718, MEMORY[0x1E69AE650], MEMORY[0x1E69AE658]);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1A22DC314(uint64_t a1)
{
  result = sub_1A22DC534(&qword_1ED950708, MEMORY[0x1E69AE668], MEMORY[0x1E69AE670]);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1A22DC36C(uint64_t a1)
{
  result = sub_1A22DC534(&qword_1ED9506C8, MEMORY[0x1E69AE728], MEMORY[0x1E69AE730]);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1A22DC3C4(uint64_t a1)
{
  result = sub_1A22DC534(&qword_1ED950728, MEMORY[0x1E69AE638], MEMORY[0x1E69AE640]);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1A22DC41C(uint64_t a1)
{
  result = sub_1A22DC534(&qword_1EB08A100, MEMORY[0x1E69AE758], MEMORY[0x1E69AE760]);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1A22DC474(uint64_t a1)
{
  result = sub_1A22DC534(&qword_1ED9506B8, MEMORY[0x1E69AE740], MEMORY[0x1E69AE748]);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1A22DC4DC(uint64_t a1)
{
  result = sub_1A22DC534(&qword_1EB08A108, MEMORY[0x1E69AE620], MEMORY[0x1E69AE628]);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1A22DC534(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

id sub_1A22DC57C(uint64_t a1, uint64_t a2)
{
  v2 = sub_1A22E6598();
  v3 = [objc_opt_self() _systemImageNamed_];

  return v3;
}

uint64_t sub_1A22DC5D0()
{
  v1 = v0;
  v2 = sub_1A22E5BD8();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for SessionAccessoryView.ViewModel(0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = (v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1A212A0A0(v1, v8);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      return 0x726F66657661772ELL;
    }

    else
    {
      return 0x6369747061682ELL;
    }
  }

  else if (EnumCaseMultiPayload)
  {
    v12 = v8[9];
    v20[8] = v8[8];
    v20[9] = v12;
    v13 = v8[11];
    v20[10] = v8[10];
    v20[11] = v13;
    v14 = v8[5];
    v20[4] = v8[4];
    v20[5] = v14;
    v15 = v8[7];
    v20[6] = v8[6];
    v20[7] = v15;
    v16 = v8[1];
    v20[0] = *v8;
    v20[1] = v16;
    v17 = v8[3];
    v20[2] = v8[2];
    v20[3] = v17;
    v19[0] = 0;
    v19[1] = 0xE000000000000000;
    MEMORY[0x1A58DA8D0](0x6F70736E6172742ELL, 0xEB00000000287472);
    sub_1A22E6FC8();
    v11 = v19[0];
    sub_1A211830C(v20);
  }

  else
  {
    (*(v3 + 32))(v5, v8, v2);
    *&v20[0] = 0x286E6F697463612ELL;
    *(&v20[0] + 1) = 0xE800000000000000;
    sub_1A22DC86C();
    v10 = sub_1A22E71D8();
    MEMORY[0x1A58DA8D0](v10);

    MEMORY[0x1A58DA8D0](41, 0xE100000000000000);
    v11 = *&v20[0];
    (*(v3 + 8))(v5, v2);
  }

  return v11;
}

unint64_t sub_1A22DC86C()
{
  result = qword_1EB08A110;
  if (!qword_1EB08A110)
  {
    sub_1A22E5BD8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB08A110);
  }

  return result;
}

double sub_1A22DC8EC()
{
  v0 = sub_1A22E18F0();
  sub_1A22E19A4(1, 5, v0, v2, 17.0, 0.62);
  result = *v2;
  xmmword_1ED9531A8 = v2[0];
  xmmword_1ED9531B8 = v2[1];
  qword_1ED9531C8 = v3;
  return result;
}

__int128 *sub_1A22DC948()
{
  if (qword_1ED9517D0 != -1)
  {
    swift_once();
  }

  return &xmmword_1ED9531A8;
}

double sub_1A22DC998@<D0>(uint64_t a1@<X8>)
{
  if (qword_1ED9517D0 != -1)
  {
    v4 = a1;
    swift_once();
    a1 = v4;
  }

  v1 = *(&xmmword_1ED9531A8 + 1);
  v2 = qword_1ED9531C8;
  *a1 = xmmword_1ED9531A8;
  *(a1 + 8) = v1;
  result = *&xmmword_1ED9531B8;
  *(a1 + 16) = xmmword_1ED9531B8;
  *(a1 + 32) = v2;
  return result;
}

uint64_t sub_1A22DCA18@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for SessionAccessoryView.ViewModel(0);
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

id (*sub_1A22DCA84(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1A22DCAE8;
}

id sub_1A22DCAE8(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    sub_1A22DE574();
    sub_1A210CA48();
    return sub_1A210C66C();
  }

  return result;
}

uint64_t sub_1A22DCB24()
{
  v1 = OBJC_IVAR____TtC13MediaControls20SessionAccessoryView_isOnScreen;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1A22DCB68(char a1)
{
  v3 = OBJC_IVAR____TtC13MediaControls20SessionAccessoryView_isOnScreen;
  swift_beginAccess();
  *(v1 + v3) = a1;
  return sub_1A22DE574();
}

uint64_t (*sub_1A22DCBBC(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1A22DCC20;
}

uint64_t sub_1A22DCC20(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return sub_1A22DE574();
  }

  return result;
}

id sub_1A22DCCE4(uint64_t (*a1)(void))
{
  a1(0);
  v1 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v2 = sub_1A2114DFC();

  return v2;
}

uint64_t sub_1A22DCD98(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC13MediaControls20SessionAccessoryView_delegate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_1A22DCE04(uint64_t *a1))(uint64_t a1, char a2)
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
  v5 = OBJC_IVAR____TtC13MediaControls20SessionAccessoryView_delegate;
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

char *sub_1A22DCEA4(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v11 = OBJC_IVAR____TtC13MediaControls20SessionAccessoryView_viewModel;
  v12 = type metadata accessor for SessionAccessoryView.ViewModel(0);
  (*(*(v12 - 8) + 56))(&v5[v11], 1, 1, v12);
  v5[OBJC_IVAR____TtC13MediaControls20SessionAccessoryView_isOnScreen] = 0;
  v13 = OBJC_IVAR____TtC13MediaControls20SessionAccessoryView_waveformView;
  type metadata accessor for WaveformView(0, v14);
  v15 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v16 = sub_1A2114DFC();

  *&v5[v13] = v16;
  v17 = OBJC_IVAR____TtC13MediaControls20SessionAccessoryView_hapticView;
  type metadata accessor for HapticView(0, v18);
  v19 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v20 = sub_1A2114DFC();

  *&v5[v17] = v20;
  v21 = OBJC_IVAR____TtC13MediaControls20SessionAccessoryView_actionButton;
  type metadata accessor for SessionActionButton(0);
  v22 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v23 = sub_1A2114DFC();

  *&v5[v21] = v23;
  v24 = OBJC_IVAR____TtC13MediaControls20SessionAccessoryView_transportButton;
  type metadata accessor for TransportButton(0, v25);
  v26 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v27 = sub_1A2114DFC();

  *&v5[v24] = v27;
  *&v5[OBJC_IVAR____TtC13MediaControls20SessionAccessoryView_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v5[OBJC_IVAR____TtC13MediaControls20SessionAccessoryView_visualStylingProvider] = 0;
  v54.receiver = v5;
  v54.super_class = type metadata accessor for SessionAccessoryView(0);
  v28 = objc_msgSendSuper2(&v54, sel_initWithFrame_, a1, a2, a3, a4);
  v29 = *&v28[OBJC_IVAR____TtC13MediaControls20SessionAccessoryView_hapticView];
  v30 = v28;
  [v30 addSubview_];
  [v30 addSubview_];
  v31 = OBJC_IVAR____TtC13MediaControls20SessionAccessoryView_transportButton;
  v32 = qword_1ED9517D0;
  v33 = *&v30[OBJC_IVAR____TtC13MediaControls20SessionAccessoryView_transportButton];
  if (v32 != -1)
  {
    swift_once();
  }

  v55[0] = xmmword_1ED9531A8;
  v55[1] = xmmword_1ED9531B8;
  v56 = qword_1ED9531C8;
  v34 = MEMORY[0x1E69E7D40];
  (*((*MEMORY[0x1E69E7D40] & *v33) + 0xC0))(v55);

  [*&v30[v31] setExclusiveTouch_];
  v35 = *&v30[v31];
  v36 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v37 = *((*v34 & *v35) + 0x138);
  v38 = v35;

  v37(sub_1A22DEACC, v36);

  [v30 addSubview_];
  v39 = OBJC_IVAR____TtC13MediaControls20SessionAccessoryView_actionButton;
  v40 = *&v30[OBJC_IVAR____TtC13MediaControls20SessionAccessoryView_actionButton];
  v41 = sub_1A21275D0();
  v44 = sub_1A22E1918(v41, v42, v43);
  [v40 setPreferredSymbolConfiguration:v44 forImageInState:0];

  v45 = *&v30[v39];
  sub_1A2115288(0, &qword_1ED94E940, 0x1E69DC628);
  v46 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v47 = v45;

  v48 = swift_allocObject();
  *(v48 + 16) = v46;
  *(v48 + 24) = ObjectType;
  v49 = sub_1A22E6C98();
  [v47 addAction:v49 forControlEvents:64];

  [*&v30[v39] setPointerInteractionEnabled_];
  v50 = *&v30[v39];
  sub_1A22E6D28();

  v51 = [v30 addSubview_];
  MEMORY[0x1EEE9AC00](v51);
  v52 = sub_1A211A6BC();
  sub_1A211A6C4(v52 & 1, sub_1A22DEADC);

  return v30;
}

void sub_1A22DD3E0(uint64_t a1, char a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0888B8, &qword_1A2309418);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v20 - v6;
  v8 = sub_1A22E5738();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v13 = Strong;
    sub_1A2214CF8(a1, v20, &qword_1EB0888D0, qword_1A2309430);
    v14 = v21;
    if (!v21)
    {

      sub_1A210D9B0(v20, &qword_1EB0888D0, qword_1A2309430);
      (*(v9 + 56))(v7, 1, 1, v8);
      goto LABEL_6;
    }

    v15 = v22;
    __swift_project_boxed_opaque_existential_1(v20, v21);
    (*(v15 + 32))(v14, v15);
    (*(v9 + 56))(v7, 0, 1, v8);
    __swift_destroy_boxed_opaque_existential_0(v20);
    if ((*(v9 + 48))(v7, 1, v8) == 1)
    {

LABEL_6:
      sub_1A210D9B0(v7, &qword_1EB0888B8, &qword_1A2309418);
      return;
    }

    v16 = (*(v9 + 32))(v11, v7, v8);
    if (a2)
    {
      (*(v9 + 8))(v11, v8);
    }

    else
    {
      if ((*((*MEMORY[0x1E69E7D40] & *v13) + 0xC0))(v16))
      {
        v18 = v17;
        ObjectType = swift_getObjectType();
        (*(v18 + 16))(v13, v11, ObjectType, v18);
        swift_unknownObjectRelease();
      }

      (*(v9 + 8))(v11, v8);
    }
  }
}

void *sub_1A22DD6FC(uint64_t a1, uint64_t a2)
{
  v57 = a2;
  v2 = sub_1A22E6248();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v53[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v4);
  v58 = &v53[-v7];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB088E70, qword_1A230A9C0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v53[-v9];
  v11 = sub_1A22E5BD8();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v53[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v53[-v16];
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v19 = result;
    (*((*MEMORY[0x1E69E7D40] & **(result + OBJC_IVAR____TtC13MediaControls20SessionAccessoryView_actionButton)) + 0x68))();
    if ((*(v12 + 48))(v10, 1, v11) == 1)
    {
      sub_1A210D9B0(v10, &qword_1EB088E70, qword_1A230A9C0);
      v20 = sub_1A2104EA0();
      v21 = v3;
      (*(v3 + 16))(v6, v20, v2);
      v22 = sub_1A22E6238();
      v23 = sub_1A22E6A88();
      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        v25 = v2;
        v26 = swift_slowAlloc();
        v59 = v26;
        *v24 = 136315138;
        v27 = sub_1A22E7388();
        v29 = sub_1A2103450(v27, v28, &v59);

        *(v24 + 4) = v29;
        _os_log_impl(&dword_1A20FC000, v22, v23, "[%s] Action button selected without action", v24, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v26);
        MEMORY[0x1A58DCD00](v26, -1, -1);
        MEMORY[0x1A58DCD00](v24, -1, -1);

        return (*(v21 + 8))(v6, v25);
      }

      else
      {

        return (*(v21 + 8))(v6, v2);
      }
    }

    else
    {
      (*(v12 + 32))(v17, v10, v11);
      v30 = sub_1A2104EA0();
      v31 = v3;
      v32 = v58;
      (*(v3 + 16))(v58, v30, v2);
      (*(v12 + 16))(v15, v17, v11);
      v33 = sub_1A22E6238();
      v34 = sub_1A22E6A68();
      v35 = os_log_type_enabled(v33, v34);
      v56 = v12;
      if (v35)
      {
        v36 = swift_slowAlloc();
        v54 = v34;
        v37 = v31;
        v38 = v36;
        v55 = swift_slowAlloc();
        v59 = v55;
        *v38 = 136315394;
        v39 = sub_1A22E7388();
        v41 = sub_1A2103450(v39, v40, &v59);
        v57 = v2;
        v42 = v41;

        *(v38 + 4) = v42;
        *(v38 + 12) = 2080;
        sub_1A22DC86C();
        v43 = sub_1A22E71D8();
        v45 = v44;
        v46 = *(v12 + 8);
        v46(v15, v11);
        v47 = sub_1A2103450(v43, v45, &v59);

        *(v38 + 14) = v47;
        _os_log_impl(&dword_1A20FC000, v33, v54, "[%s] Action selected: %s", v38, 0x16u);
        v48 = v55;
        swift_arrayDestroy();
        MEMORY[0x1A58DCD00](v48, -1, -1);
        MEMORY[0x1A58DCD00](v38, -1, -1);

        v49 = (*(v37 + 8))(v58, v57);
      }

      else
      {

        v46 = *(v12 + 8);
        v46(v15, v11);
        v49 = (*(v31 + 8))(v32, v2);
      }

      if ((*((*MEMORY[0x1E69E7D40] & *v19) + 0xC0))(v49))
      {
        v51 = v50;
        ObjectType = swift_getObjectType();
        (*(v51 + 8))(v19, v17, ObjectType, v51);

        swift_unknownObjectRelease();
      }

      else
      {
      }

      return (v46)(v17, v11);
    }
  }

  return result;
}

uint64_t sub_1A22DDD58(void *a1)
{
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
  [a1 bounds];
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

id sub_1A22DE158()
{
  v1 = sub_1A2252E94();

  return [v0 sizeThatFits_];
}

double sub_1A22DE18C()
{
  swift_beginAccess();

  return result;
}

double sub_1A22DE1D4(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC13MediaControls20SessionAccessoryView_visualStylingProvider;
  swift_beginAccess();
  *(v1 + v3) = a1;
  swift_retain_n();

  v4 = MEMORY[0x1E69E7D40];
  (*((*MEMORY[0x1E69E7D40] & **(v1 + OBJC_IVAR____TtC13MediaControls20SessionAccessoryView_waveformView)) + 0xA0))(a1);
  v5 = *((*v4 & **(v1 + OBJC_IVAR____TtC13MediaControls20SessionAccessoryView_hapticView)) + 0x88);

  v5(v6);
  v7 = *((*v4 & **(v1 + OBJC_IVAR____TtC13MediaControls20SessionAccessoryView_actionButton)) + 0x88);

  v7(v8);
  v9 = *((*v4 & **(v1 + OBJC_IVAR____TtC13MediaControls20SessionAccessoryView_transportButton)) + 0x120);

  v9(v10);

  return result;
}

uint64_t (*sub_1A22DE370(uint64_t *a1))()
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
  v4 = OBJC_IVAR____TtC13MediaControls20SessionAccessoryView_visualStylingProvider;
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  swift_beginAccess();
  return sub_1A22DE3F8;
}

void sub_1A22DE3F8(void *a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = v3[3];
    v5 = MEMORY[0x1E69E7D40];
    v6 = *((*MEMORY[0x1E69E7D40] & **(v4 + OBJC_IVAR____TtC13MediaControls20SessionAccessoryView_waveformView)) + 0xA0);

    v6(v7);
    v8 = *((*v5 & **(v4 + OBJC_IVAR____TtC13MediaControls20SessionAccessoryView_hapticView)) + 0x88);

    v8(v9);
    v10 = *((*v5 & **(v4 + OBJC_IVAR____TtC13MediaControls20SessionAccessoryView_actionButton)) + 0x88);

    v10(v11);
    v12 = *((*v5 & **(v4 + OBJC_IVAR____TtC13MediaControls20SessionAccessoryView_transportButton)) + 0x120);

    v12(v13);
  }

  free(v3);
}

uint64_t sub_1A22DE574()
{
  v1 = type metadata accessor for SessionAccessoryView.ViewModel(0);
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v25 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB089D80, &qword_1A23103C8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v24 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB089540, &unk_1A230FE80);
  v8 = MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = &v24 - v12;
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = &v24 - v15;
  v17 = *(v0 + OBJC_IVAR____TtC13MediaControls20SessionAccessoryView_waveformView);
  v18 = MEMORY[0x1E69E7D40];
  if ((*((*MEMORY[0x1E69E7D40] & *v0) + 0xA8))(v14))
  {
    (*((*v18 & *v0) + 0x90))();
    swift_storeEnumTagMultiPayload();
    (*(v2 + 56))(v13, 0, 1, v1);
    v19 = *(v4 + 48);
    sub_1A2214CF8(v16, v6, &qword_1EB089540, &unk_1A230FE80);
    sub_1A2214CF8(v13, &v6[v19], &qword_1EB089540, &unk_1A230FE80);
    v20 = *(v2 + 48);
    if (v20(v6, 1, v1) == 1)
    {
      sub_1A210D9B0(v13, &qword_1EB089540, &unk_1A230FE80);
      sub_1A210D9B0(v16, &qword_1EB089540, &unk_1A230FE80);
      if (v20(&v6[v19], 1, v1) == 1)
      {
        sub_1A210D9B0(v6, &qword_1EB089540, &unk_1A230FE80);
        v21 = 1;
LABEL_10:
        v18 = MEMORY[0x1E69E7D40];
        return (*((*v18 & *v17) + 0xD0))(v21 & 1);
      }
    }

    else
    {
      sub_1A2214CF8(v6, v10, &qword_1EB089540, &unk_1A230FE80);
      if (v20(&v6[v19], 1, v1) != 1)
      {
        v22 = v25;
        sub_1A22DF024(&v6[v19], v25);
        v21 = sub_1A2129D60(v10, v22);
        sub_1A212A104(v22);
        sub_1A210D9B0(v13, &qword_1EB089540, &unk_1A230FE80);
        sub_1A210D9B0(v16, &qword_1EB089540, &unk_1A230FE80);
        sub_1A212A104(v10);
        sub_1A210D9B0(v6, &qword_1EB089540, &unk_1A230FE80);
        goto LABEL_10;
      }

      sub_1A210D9B0(v13, &qword_1EB089540, &unk_1A230FE80);
      sub_1A210D9B0(v16, &qword_1EB089540, &unk_1A230FE80);
      sub_1A212A104(v10);
    }

    sub_1A210D9B0(v6, &qword_1EB089D80, &qword_1A23103C8);
    v21 = 0;
    goto LABEL_10;
  }

  v21 = 0;
  return (*((*v18 & *v17) + 0xD0))(v21 & 1);
}

id sub_1A22DE9C8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SessionAccessoryView(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1A22DEADC()
{
  v1 = *(v0 + 16);
  v2 = sub_1A22582C8();
  v4 = v3;
  v5 = sub_1A22581D0(v2, v3, v1);

  v6 = sub_1A2257E60();
  v8 = v7;
  v10 = sub_1A2257EBC(v6, v7, v9, 32.0, 32.0);

  v11 = sub_1A22582C8();
  v13 = v12;
  v14 = sub_1A22581D0(v11, v12, v1);

  v15 = sub_1A2257E60();
  v17 = v16;
  v19 = sub_1A2257EBC(v15, v16, v18, 22.0, 22.0);

  sub_1A211A728(v28);
  v20 = sub_1A211A7DC(v28, v1);
  sub_1A211A9FC(v28);
  sub_1A211A728(v29);
  v21 = sub_1A211A7DC(v29, v1);
  sub_1A211A9FC(v29);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB088E40, &unk_1A230A900);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_1A230B9B0;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB088840, &unk_1A2308EF0);
  *(v22 + 56) = v23;
  *(v22 + 64) = &off_1F14441C0;
  *(v22 + 32) = v5;
  *(v22 + 96) = v23;
  *(v22 + 104) = &off_1F14441C0;
  *(v22 + 72) = v10;
  *(v22 + 136) = v23;
  *(v22 + 144) = &off_1F14441C0;
  *(v22 + 112) = v14;
  *(v22 + 176) = v23;
  *(v22 + 184) = &off_1F14441C0;
  *(v22 + 152) = v19;
  *(v22 + 216) = v23;
  *(v22 + 224) = &off_1F14441C0;
  *(v22 + 192) = v20;
  *(v22 + 256) = v23;
  *(v22 + 264) = &off_1F14441C0;
  *(v22 + 232) = v21;
  sub_1A211AB54(v22, v24);
  v26 = v25;

  return v26;
}

void sub_1A22DECAC()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC13MediaControls20SessionAccessoryView_viewModel;
  v3 = type metadata accessor for SessionAccessoryView.ViewModel(0);
  (*(*(v3 - 8) + 56))(v1 + v2, 1, 1, v3);
  *(v1 + OBJC_IVAR____TtC13MediaControls20SessionAccessoryView_isOnScreen) = 0;
  v4 = OBJC_IVAR____TtC13MediaControls20SessionAccessoryView_waveformView;
  type metadata accessor for WaveformView(0, v5);
  v6 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v7 = sub_1A2114DFC();

  *(v1 + v4) = v7;
  v8 = OBJC_IVAR____TtC13MediaControls20SessionAccessoryView_hapticView;
  type metadata accessor for HapticView(0, v9);
  v10 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v11 = sub_1A2114DFC();

  *(v1 + v8) = v11;
  v12 = OBJC_IVAR____TtC13MediaControls20SessionAccessoryView_actionButton;
  type metadata accessor for SessionActionButton(0);
  v13 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v14 = sub_1A2114DFC();

  *(v1 + v12) = v14;
  v15 = OBJC_IVAR____TtC13MediaControls20SessionAccessoryView_transportButton;
  type metadata accessor for TransportButton(0, v16);
  v17 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v18 = sub_1A2114DFC();

  *(v1 + v15) = v18;
  *(v1 + OBJC_IVAR____TtC13MediaControls20SessionAccessoryView_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v1 + OBJC_IVAR____TtC13MediaControls20SessionAccessoryView_visualStylingProvider) = 0;
  sub_1A22E7028();
  __break(1u);
}

void sub_1A22DEE6C(uint64_t a1)
{
  sub_1A22DEF2C(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1A22DEF2C(uint64_t a1)
{
  if (!qword_1ED950978[0])
  {
    type metadata accessor for SessionAccessoryView.ViewModel(255);
    v1 = sub_1A22E6D68();
    if (!v2)
    {
      atomic_store(v1, qword_1ED950978);
    }
  }
}

uint64_t sub_1A22DEFAC(uint64_t a1)
{
  result = sub_1A22E5BD8();
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1A22DF024(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SessionAccessoryView.ViewModel(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t MRUHardwareButtonEvent.description.getter(uint64_t a1)
{
  v1 = 0x6E776F6E6B6E75;
  if (!a1)
  {
    v1 = 0xD000000000000010;
  }

  if (a1 == 1)
  {
    return 0x50656C676E69732ELL;
  }

  else
  {
    return v1;
  }
}

unint64_t sub_1A22DF0F0()
{
  v1 = 0x6E776F6E6B6E75;
  if (!*v0)
  {
    v1 = 0xD000000000000010;
  }

  if (*v0 == 1)
  {
    return 0x50656C676E69732ELL;
  }

  else
  {
    return v1;
  }
}

uint64_t MRUHardwareButtonKind.description.getter(uint64_t a1)
{
  v1 = 0x6E776F6E6B6E75;
  if (a1 == 1)
  {
    v1 = 0x44656D756C6F762ELL;
  }

  if (a1)
  {
    return v1;
  }

  else
  {
    return 0x49656D756C6F762ELL;
  }
}

uint64_t sub_1A22DF1C0()
{
  v1 = 0x6E776F6E6B6E75;
  if (*v0 == 1)
  {
    v1 = 0x44656D756C6F762ELL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x49656D756C6F762ELL;
  }
}

uint64_t sub_1A22DF228(unsigned __int8 a1)
{
  v1 = 0x7972616D6972702ELL;
  v2 = 0x726169747265742ELL;
  v3 = 0x6E7265746175712ELL;
  if (a1 != 3)
  {
    v3 = 0x746172617065732ELL;
  }

  if (a1 != 2)
  {
    v2 = v3;
  }

  if (a1)
  {
    v1 = 0x61646E6F6365732ELL;
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

uint64_t sub_1A22DF2D4()
{
  v1 = *v0;
  v2 = 0x7972616D6972702ELL;
  v3 = 0x726169747265742ELL;
  v4 = 0x6E7265746175712ELL;
  if (v1 != 3)
  {
    v4 = 0x746172617065732ELL;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x61646E6F6365732ELL;
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

id sub_1A22DF3E0(uint64_t a1, uint64_t a2)
{
  v2 = objc_opt_self();
  v3 = [v2 labelColor];
  v4 = [v2 secondaryLabelColor];
  v5 = [v2 tertiaryLabelColor];
  v6 = [v2 quaternaryLabelColor];
  result = [v2 labelColor];
  qword_1ED953170 = v3;
  *algn_1ED953178 = v4;
  qword_1ED953180 = v5;
  unk_1ED953188 = v6;
  qword_1ED953190 = result;
  return result;
}

uint64_t sub_1A22DF4B0@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  *a6 = result;
  a6[1] = a2;
  a6[2] = a3;
  a6[3] = a4;
  a6[4] = a5;
  return result;
}

uint64_t *sub_1A22DF4C0()
{
  if (qword_1ED9517B0 != -1)
  {
    swift_once();
  }

  return &qword_1ED953170;
}

id sub_1A22DF514(unsigned __int8 a1)
{
  v2 = v1 + 2;
  v3 = v1 + 3;
  if (a1 != 3)
  {
    v3 = v1 + 4;
  }

  if (a1 != 2)
  {
    v2 = v3;
  }

  v4 = v1 + 1;
  if (!a1)
  {
    v4 = v1;
  }

  if (a1 <= 1u)
  {
    v5 = v4;
  }

  else
  {
    v5 = v2;
  }

  return *v5;
}

id sub_1A22DF550@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = [*v2 resolvedColorWithTraitCollection_];
  v6 = [v2[1] resolvedColorWithTraitCollection_];
  v7 = [v2[2] resolvedColorWithTraitCollection_];
  v8 = [v2[3] resolvedColorWithTraitCollection_];
  result = [v2[4] resolvedColorWithTraitCollection_];
  *a2 = v5;
  a2[1] = v6;
  a2[2] = v7;
  a2[3] = v8;
  a2[4] = result;
  return result;
}

void sub_1A22DF624(uint64_t a1)
{
  swift_beginAccess();
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  v6 = v1[5];
  v7 = v1[6];
  v8 = *(a1 + 16);
  *(v1 + 1) = *a1;
  *(v1 + 2) = v8;
  v1[6] = *(a1 + 32);
}

__n128 sub_1A22DF6F0(uint64_t a1)
{
  v2 = swift_allocObject();
  result = *a1;
  v4 = *(a1 + 16);
  *(v2 + 16) = *a1;
  *(v2 + 32) = v4;
  v5 = *(a1 + 32);
  *(v2 + 56) = 0;
  *(v2 + 64) = 0;
  *(v2 + 48) = v5;
  return result;
}

uint64_t sub_1A22DF734(uint64_t a1)
{
  v2 = *(a1 + 16);
  *(v1 + 16) = *a1;
  *(v1 + 32) = v2;
  v3 = *(a1 + 32);
  *(v1 + 56) = 0;
  *(v1 + 64) = 0;
  *(v1 + 48) = v3;
  return v1;
}

uint64_t sub_1A22DF750(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  v7 = *(a1 + 16);
  *(v6 + 16) = *a1;
  *(v6 + 32) = v7;
  *(v6 + 48) = *(a1 + 32);
  v8 = objc_opt_self();
  *(v6 + 64) = [v8 _visualStylingProviderForRecipe_category_andUserInterfaceStyle_];
  *(v6 + 56) = [v8 _visualStylingProviderForRecipe_category_andUserInterfaceStyle_];
  return v6;
}

uint64_t sub_1A22DF808(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *a1;
  v7 = *(a1 + 8);
  v8 = *(a1 + 16);
  v9 = *(a1 + 24);
  v10 = *(a1 + 32);
  v11 = *(a1 + 16);
  *(v3 + 16) = *a1;
  *(v3 + 32) = v11;
  *(v3 + 48) = v10;
  v12 = objc_opt_self();
  v13 = v6;
  v14 = v7;
  v15 = v8;
  v16 = v9;
  v17 = v10;
  *(v3 + 64) = [v12 _visualStylingProviderForRecipe_category_andUserInterfaceStyle_];
  v18 = [v12 _visualStylingProviderForRecipe_category_andUserInterfaceStyle_];

  *(v3 + 56) = v18;
  return v3;
}

id sub_1A22DF904@<X0>(void *a1@<X8>)
{
  if (qword_1ED9517B0 != -1)
  {
    v11 = a1;
    swift_once();
    a1 = v11;
  }

  v1 = qword_1ED953170;
  v2 = *algn_1ED953178;
  v3 = qword_1ED953180;
  v4 = unk_1ED953188;
  v5 = qword_1ED953190;
  v12 = qword_1ED953190;
  *a1 = qword_1ED953170;
  a1[1] = v2;
  a1[2] = v3;
  a1[3] = v4;
  a1[4] = v5;
  v6 = v1;
  v7 = v2;
  v8 = v3;
  v9 = v4;

  return v12;
}

uint64_t sub_1A22DF9B0(uint64_t a1, uint64_t a2, char a3, uint64_t a4, char a5, uint64_t a6)
{
  v12 = swift_allocObject();
  v13 = *(a1 + 16);
  *(v12 + 16) = *a1;
  *(v12 + 32) = v13;
  *(v12 + 48) = *(a1 + 32);
  if ((a3 & 1) == 0)
  {
    *(v12 + 56) = [objc_opt_self() _visualStylingProviderForRecipe_category_andUserInterfaceStyle_];
    if ((a5 & 1) == 0)
    {
      goto LABEL_3;
    }

LABEL_5:
    v14 = 0;
    goto LABEL_6;
  }

  *(v12 + 56) = 0;
  if (a5)
  {
    goto LABEL_5;
  }

LABEL_3:
  v14 = [objc_opt_self() _visualStylingProviderForRecipe_category_andUserInterfaceStyle_];
LABEL_6:
  *(v12 + 64) = v14;
  return v12;
}

uint64_t sub_1A22DFA9C(uint64_t a1, uint64_t a2, char a3, uint64_t a4, char a5, uint64_t a6)
{
  v7 = a6;
  v9 = a4;
  v11 = *a1;
  v10 = *(a1 + 8);
  v12 = *(a1 + 16);
  v13 = *(a1 + 24);
  v14 = *(a1 + 32);
  v15 = *(a1 + 16);
  *(v6 + 16) = *a1;
  *(v6 + 32) = v15;
  *(v6 + 48) = v14;
  if ((a3 & 1) == 0)
  {
    v24 = objc_opt_self();
    v25 = v11;
    v26 = v10;
    v27 = v12;
    v28 = v13;
    v29 = v14;
    v30 = v24;
    v9 = a4;
    v7 = a6;
    *(v6 + 56) = [v30 _visualStylingProviderForRecipe_category_andUserInterfaceStyle_];
    if ((a5 & 1) == 0)
    {
      goto LABEL_3;
    }

LABEL_5:

    v21 = 0;
    goto LABEL_6;
  }

  v16 = v11;
  v17 = v10;
  v18 = v12;
  v19 = v13;
  v20 = v14;
  *(v6 + 56) = 0;
  if (a5)
  {
    goto LABEL_5;
  }

LABEL_3:
  v21 = [objc_opt_self() _visualStylingProviderForRecipe_category_andUserInterfaceStyle_];

LABEL_6:
  *(v6 + 64) = v21;
  return v6;
}

void sub_1A22DFBF0(char a1)
{
  v2 = [v1 _visualStylingForStyle_];
  if (!v2)
  {
    __break(1u);
    goto LABEL_5;
  }

  v3 = v2;
  v4 = [v2 color];

  if (!v4)
  {
LABEL_5:
    __break(1u);
  }
}

void sub_1A22DFC68(char a1, void *a2, id a3)
{
  v6 = [a3 userInterfaceStyle];
  v7 = 56;
  if (v6 == 2)
  {
    v7 = 64;
  }

  v8 = *(v3 + v7);
  if (v8)
  {
    v9 = qword_1A2310FB8[a1];
    v10 = v8;
    v13 = [v10 _visualStylingForStyle_];
    if (!v13)
    {
      __break(1u);
      return;
    }

    [a2 mt:v13 replaceVisualStyling:v13];
  }

  else
  {
    (*(*v3 + 104))(&v16);
    if (a1 <= 1u)
    {
      if (a1)
      {
        v11 = v17;
      }

      else
      {
        v11 = v16;
      }
    }

    else if (a1 == 2)
    {
      v11 = v18;
    }

    else if (a1 == 3)
    {
      v11 = v19;
    }

    else
    {
      v11 = v20;
    }

    v12 = v16;
    v15 = v11;

    [a2 mru:v15 applyVisualStylingWith:v15];
  }
}

id sub_1A22DFDD4(char a1)
{
  result = [v1 _visualStylingForStyle_];
  if (!result)
  {
    __break(1u);
  }

  return result;
}

id sub_1A22DFE18(void *a1, id a2)
{
  if ([a2 userInterfaceStyle] == 2)
  {
    v3 = 2;
  }

  else
  {
    v3 = 1;
  }

  return [a1 _setDrawsAsBackdropOverlayWithBlendMode_];
}

uint64_t sub_1A22DFE74()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = *(v0 + 40);

  return v0;
}

uint64_t sub_1A22DFED4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = *(v0 + 40);

  return MEMORY[0x1EEE6BDC0](v0, 72, 7);
}

id sub_1A22DFF4C()
{
  result = [objc_allocWithZone(MRUVisualStylingProvider) initWithLightVisualStylingProvider:*(v0 + 56) darkVisualStylingProvider:*(v0 + 64)];
  if (result)
  {
    v3 = result;
    v4 = sub_1A22E0214(0, v2);
    sub_1A22D3D68(sub_1A22E0010, v4, &v5);

    return v5;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1A22E0010(void **a1)
{
  v2 = *a1;
  v3 = *(*v1 + 104);
  v3(v12);
  v4 = v12[0];

  [v2 setPrimaryColor_];
  v3(v13);
  v5 = v13[1];

  [v2 setSecondaryColor_];
  v3(v14);
  v6 = v14[0];
  v7 = v14[2];

  [v2 setTertiaryColor_];
  v3(v15);
  v8 = v15[0];
  v9 = v15[3];

  [v2 setQuaternaryColor_];
  v3(v16);
  v10 = v16[0];
  v11 = v16[4];

  [v2 setSeparatorColor_];
}

unint64_t sub_1A22E0214(uint64_t a1, uint64_t a2)
{
  result = qword_1ED94E9B8;
  if (!qword_1ED94E9B8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ED94E9B8);
  }

  return result;
}

void sub_1A22E0260(void *a1)
{
  if (a1)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = v1;
    v4 = swift_allocObject();
    *(v4 + 16) = sub_1A22E0384;
    *(v4 + 24) = v3;
    v7[4] = sub_1A22E0388;
    v7[5] = v4;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 1107296256;
    v7[2] = sub_1A22E03B0;
    v7[3] = &block_descriptor_24;
    v5 = _Block_copy(v7);
    v6 = v1;

    [a1 applyToView:v6 withColorBlock:v5];
    _Block_release(v5);
  }

  else
  {
    __break(1u);
  }
}

void sub_1A22E03B0(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v3(a2);
}

uint64_t sub_1A22E05B0(void *a1)
{
  v5 = *((*MEMORY[0x1E69E7D40] & *v1) + 0xC8);
  v3 = a1;

  return v5(a1);
}

unint64_t sub_1A22E0628()
{
  result = qword_1EB08A120;
  if (!qword_1EB08A120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB08A120);
  }

  return result;
}

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1A22E06C4(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_1A22E070C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1A22E080C(void *a1)
{
  v3 = *((*MEMORY[0x1E69E7D40] & **(v1 + 16)) + 0xC8);
  v4 = a1;
  return v3(a1);
}

void *sub_1A22E08C0(void *a1)
{
  [a1 setPriority_];
  v2 = a1;

  return a1;
}

void sub_1A22E0904(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 16);
  *(v1 + 16) = a1;
}

void sub_1A22E0A3C(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 40);
  *(v1 + 40) = a1;
}

void sub_1A22E0AD4(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 48);
  *(v1 + 48) = a1;
}

void sub_1A22E0B6C(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 56);
  *(v1 + 56) = a1;
}

void sub_1A22E0C04(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 64);
  *(v1 + 64) = a1;
}

void sub_1A22E0C9C(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 72);
  *(v1 + 72) = a1;
}

double sub_1A22E0D34(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 80) = a1;

  return result;
}

void sub_1A22E0DCC(double a1, double a2, double a3, double a4)
{
  v9 = (*(*v4 + 152))();
  if (v9)
  {
    v10 = v9;
    [v9 setConstant_];
  }

  v11 = (*(*v4 + 176))();
  if (v11)
  {
    v12 = v11;
    [v11 setConstant_];
  }

  v13 = (*(*v4 + 200))();
  if (v13)
  {
    v14 = v13;
    [v13 setConstant_];
  }

  v15 = (*(*v4 + 224))();
  if (v15)
  {
    v16 = v15;
    [v15 setConstant_];
  }
}

double sub_1A22E0F44(id a1, uint64_t a2, char a3)
{
  v4 = v3;
  if (a3)
  {
    [a1 setActive_];
  }

  if (a2)
  {
    v13[0] = v4;

    v7 = a1;
    swift_setAtReferenceWritableKeyPath();
  }

  else
  {
    v8 = (*(*v4 + 360))(v13);
    v10 = v9;
    v11 = a1;
    MEMORY[0x1A58DA960]();
    if (*((*v10 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v10 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1A22E6768();
    }

    sub_1A22E67A8();
    v8(v13, 0);
  }

  return result;
}

double sub_1A22E1084()
{
  v0 = swift_allocObject();
  result = 0.0;
  *(v0 + 16) = 0u;
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0u;
  *(v0 + 64) = 0u;
  *(v0 + 80) = MEMORY[0x1E69E7CC0];
  return result;
}

double sub_1A22E10C0()
{
  result = 0.0;
  *(v0 + 48) = 0u;
  *(v0 + 64) = 0u;
  *(v0 + 16) = 0u;
  *(v0 + 32) = 0u;
  *(v0 + 80) = MEMORY[0x1E69E7CC0];
  return result;
}

uint64_t sub_1A22E10E0(void *a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB088FE0, &qword_1A2310FE0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1A2308E80;
  *(v4 + 32) = a1;
  *(v4 + 40) = a2;

  v5 = a1;
  return v4;
}

void (*sub_1A22E1150(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x1A58DB0F0](a2, a3);
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
    return sub_1A22E11D0;
  }

  __break(1u);
  return result;
}

unint64_t sub_1A22E120C()
{
  result = qword_1EB08A138;
  if (!qword_1EB08A138)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB08A130, &unk_1A2311100);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB08A138);
  }

  return result;
}

uint64_t sub_1A22E1270(char a1)
{
  v2 = sub_1A22E5C88();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB088C30, &qword_1A230A1B0);
  v7 = MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v19 - v10;
  sub_1A22E6038();
  sub_1A210FD2C(v11, v9);
  if ((*(v3 + 48))(v9, 1, v2) == 1)
  {
    v12 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v13 = *(v3 + 32);
    v13(v5, v9, v2);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB088FD8, &unk_1A230B168);
    v14 = (*(v3 + 80) + 32) & ~*(v3 + 80);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_1A2308E80;
    v13((v12 + v14), v5, v2);
  }

  sub_1A210FD9C(v11);
  v15 = sub_1A22E6058();
  v20 = v12;
  sub_1A210FE04(v15);
  v16 = v20;
  if (a1)
  {
    v17 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v17 = sub_1A22E6068();
  }

  v20 = v16;
  sub_1A210FE04(v17);
  return v20;
}

uint64_t sub_1A22E15D0()
{
  sub_1A2214CF8(v0, v4, &qword_1EB0888D0, qword_1A2309430);
  v1 = v5;
  if (v5)
  {
    v2 = v6;
    __swift_project_boxed_opaque_existential_1(v4, v5);
    LOBYTE(v1) = (*(v2 + 24))(v1, v2);
    __swift_destroy_boxed_opaque_existential_0(v4);
  }

  else
  {
    sub_1A210D9B0(v4, &qword_1EB0888D0, qword_1A2309430);
  }

  return v1 & 1;
}

uint64_t sub_1A22E167C@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC13MediaControls15TransportButton_viewModel;
  swift_beginAccess();
  return sub_1A2214CF8(v1 + v3, a1, &qword_1EB088850, &qword_1A2308F00);
}

void (*sub_1A22E16E4(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x280uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 624) = v1;
  v5 = OBJC_IVAR____TtC13MediaControls15TransportButton_viewModel;
  *(v3 + 632) = OBJC_IVAR____TtC13MediaControls15TransportButton_viewModel;
  swift_beginAccess();
  sub_1A2214CF8(v1 + v5, v4, &qword_1EB088850, &qword_1A2308F00);
  return sub_1A22E1790;
}

void sub_1A22E1790(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 632);
  v4 = *(*a1 + 624);
  if (a2)
  {
    sub_1A2214CF8(*a1, v2 + 192, &qword_1EB088850, &qword_1A2308F00);
    sub_1A2214CF8(v4 + v3, v2 + 384, &qword_1EB088850, &qword_1A2308F00);
    swift_beginAccess();
    sub_1A2115EDC(v2 + 192, v4 + v3, &qword_1EB088850, &qword_1A2308F00);
    swift_endAccess();
    sub_1A2115F44(v2 + 384);
    sub_1A210D9B0(v2 + 384, &qword_1EB088850, &qword_1A2308F00);
  }

  else
  {
    sub_1A2214CF8(v4 + v3, v2 + 192, &qword_1EB088850, &qword_1A2308F00);
    swift_beginAccess();
    sub_1A2115EDC(v2, v4 + v3, &qword_1EB088850, &qword_1A2308F00);
    swift_endAccess();
    sub_1A2115F44(v2 + 192);
  }

  sub_1A210D9B0(v2 + 192, &qword_1EB088850, &qword_1A2308F00);
  sub_1A210D9B0(v2, &qword_1EB088850, &qword_1A2308F00);

  free(v2);
}

id sub_1A22E1918(double a1, uint64_t a2, uint64_t a3)
{
  v4 = [objc_opt_self() configurationWithPointSize:*(v3 + 16) weight:*(v3 + 24) scale:*(v3 + 8) * a1];

  return v4;
}

double sub_1A22E1980@<D0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0x4031000000000000;
  *&result = 5;
  *(a1 + 16) = xmmword_1A2311110;
  *(a1 + 32) = 0x3FF0000000000000;
  return result;
}

uint64_t sub_1A22E19A4@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, double a5@<D0>, double a6@<D1>)
{
  *a4 = result;
  *(a4 + 8) = a5;
  *(a4 + 16) = a2;
  *(a4 + 24) = a3;
  *(a4 + 32) = a6;
  return result;
}

__n128 sub_1A22E19B8@<Q0>(__n128 *a1@<X8>)
{
  v3 = (v1 + OBJC_IVAR____TtC13MediaControls15TransportButton_style);
  swift_beginAccess();
  v4 = v3->n128_u64[1];
  v5 = v3[2].n128_u64[0];
  a1->n128_u8[0] = v3->n128_u8[0];
  a1->n128_u64[1] = v4;
  result = v3[1];
  a1[1] = result;
  a1[2].n128_u64[0] = v5;
  return result;
}

void sub_1A22E1A20(uint64_t a1)
{
  v3 = v1 + OBJC_IVAR____TtC13MediaControls15TransportButton_style;
  swift_beginAccess();
  v4 = *(a1 + 16);
  *v3 = *a1;
  *(v3 + 1) = v4;
  *(v3 + 4) = *(a1 + 32);
  v5 = sub_1A22E3228();
  v6 = MEMORY[0x1E69E7D40];
  v7 = *((*MEMORY[0x1E69E7D40] & *v1) + 0xB8);
  v8 = (v7)(v16, v5);
  v9 = *((*v6 & *v1) + 0xD0);
  v10 = v9(v8);
  v11 = [objc_opt_self() configurationWithPointSize:v16[2] weight:v16[3] scale:v10 * *&v16[1]];
  [v1 setPreferredSymbolConfiguration:v11 forImageInState:0];

  v12 = *(v1 + OBJC_IVAR____TtC13MediaControls15TransportButton_packageView);
  v13 = v7(v17);
  v14 = *&v17[4];
  v15 = v9(v13);
  (*((*v6 & *v12) + 0xB0))(v14 * v15);
}

void (*sub_1A22E1BC4(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x70uLL);
  }

  *a1 = v3;
  *(v3 + 104) = v1;
  swift_beginAccess();
  return sub_1A22E1C50;
}

void sub_1A22E1C50(uint64_t *a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = *(v3 + 104);
    v5 = sub_1A22E3228();
    v6 = MEMORY[0x1E69E7D40];
    v7 = *((*MEMORY[0x1E69E7D40] & *v4) + 0xB8);
    v8 = (v7)(v5);
    v9 = *((*v6 & *v4) + 0xD0);
    v10 = v9(v8) * *(v3 + 48);
    v11 = [objc_opt_self() configurationWithPointSize:*(v3 + 56) weight:*(v3 + 64) scale:v10];
    [v4 setPreferredSymbolConfiguration:v11 forImageInState:0];

    v12 = *(v4 + OBJC_IVAR____TtC13MediaControls15TransportButton_packageView);
    v13 = v7();
    v14 = *(v3 + 32);
    v15 = v9(v13);
    (*((*v6 & *v12) + 0xB0))(v14 * v15);
  }

  free(v3);
}

double sub_1A22E1DEC()
{
  v1 = OBJC_IVAR____TtC13MediaControls15TransportButton_contentScale;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_1A22E1E30(double a1)
{
  v3 = OBJC_IVAR____TtC13MediaControls15TransportButton_contentScale;
  v4 = swift_beginAccess();
  *(v1 + v3) = a1;
  v5 = MEMORY[0x1E69E7D40];
  v6 = *((*MEMORY[0x1E69E7D40] & *v1) + 0xB8);
  v7 = (v6)(v15, v4);
  v8 = *((*v5 & *v1) + 0xD0);
  v9 = v8(v7);
  v10 = [objc_opt_self() configurationWithPointSize:v15[2] weight:v15[3] scale:v9 * *&v15[1]];
  [v1 setPreferredSymbolConfiguration:v10 forImageInState:0];

  v11 = *(v1 + OBJC_IVAR____TtC13MediaControls15TransportButton_packageView);
  v12 = v6(v16);
  v13 = *&v16[4];
  v14 = v8(v12);
  (*((*v5 & *v11) + 0xB0))(v13 * v14);
}

void (*sub_1A22E1FC0(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x70uLL);
  }

  *a1 = v3;
  *(v3 + 104) = v1;
  swift_beginAccess();
  return sub_1A22E204C;
}

void sub_1A22E204C(uint64_t *a1, char a2)
{
  v3 = *a1;
  v4 = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v5 = *(v3 + 104);
    v6 = MEMORY[0x1E69E7D40];
    v7 = *((*MEMORY[0x1E69E7D40] & *v5) + 0xB8);
    v8 = (v7)(v4);
    v9 = *((*v6 & *v5) + 0xD0);
    v10 = v9(v8) * *(v3 + 48);
    v11 = [objc_opt_self() configurationWithPointSize:*(v3 + 56) weight:*(v3 + 64) scale:v10];
    [v5 setPreferredSymbolConfiguration:v11 forImageInState:0];

    v12 = *(v5 + OBJC_IVAR____TtC13MediaControls15TransportButton_packageView);
    v13 = v7();
    v14 = *(v3 + 32);
    v15 = v9(v13);
    (*((*v6 & *v12) + 0xB0))(v14 * v15);
  }

  free(v3);
}

id sub_1A22E21E4(uint64_t a1, uint64_t a2)
{
  type metadata accessor for PackageView(0, a2);
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v2 init];
}

id sub_1A22E22BC(uint64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = type metadata accessor for TransportButton(a1, a2);
  v8.receiver = v2;
  v8.super_class = v4;
  v5 = objc_msgSendSuper2(&v8, sel_isHighlighted);
  v7.receiver = v2;
  v7.super_class = v4;
  objc_msgSendSuper2(&v7, sel_setHighlighted_, v3 & 1);
  return sub_1A22E232C(v5);
}

id sub_1A22E232C(char a1)
{
  v2 = a1 & 1;
  result = [v1 isHighlighted];
  if (result != v2)
  {
    v4 = [v1 isHighlighted];
    sub_1A2115288(0, &qword_1ED94E980, 0x1E69DD250);
    if (v4)
    {
      sub_1A229BE48(v9);
      v5 = swift_allocObject();
      *(v5 + 16) = v1;
      v6 = v1;
      v7 = sub_1A22E41A0;
    }

    else
    {
      sub_1A229BE74(v9);
      v5 = swift_allocObject();
      *(v5 + 16) = v1;
      v8 = v1;
      v7 = sub_1A22E4170;
    }

    sub_1A21179EC(v9, v7, v5, 0, 0);

    return sub_1A2116928(v9);
  }

  return result;
}

id sub_1A22E2458(SEL *a1, uint64_t a2)
{
  v5.receiver = v2;
  v5.super_class = type metadata accessor for TransportButton(a1, a2);
  return objc_msgSendSuper2(&v5, *a1);
}

void sub_1A22E2494(uint64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = type metadata accessor for TransportButton(a1, a2);
  v7.receiver = v2;
  v7.super_class = v4;
  v5 = objc_msgSendSuper2(&v7, sel_isEnabled);
  v6.receiver = v2;
  v6.super_class = v4;
  objc_msgSendSuper2(&v6, sel_setEnabled_, v3 & 1);
  if (v5 != [v2 isEnabled])
  {
    sub_1A22E337C();
  }
}

double sub_1A22E251C()
{
  swift_beginAccess();

  return result;
}

double sub_1A22E2564(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC13MediaControls15TransportButton_visualStylingProvider;
  swift_beginAccess();
  *(v1 + v3) = a1;

  sub_1A22E337C();

  return result;
}

void (*sub_1A22E25D4(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1A22E2638;
}

void sub_1A22E2638(uint64_t a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    sub_1A22E337C();
  }
}

uint64_t sub_1A22E266C()
{
  v1 = (v0 + OBJC_IVAR____TtC13MediaControls15TransportButton_onAction);
  swift_beginAccess();
  v2 = *v1;
  sub_1A2111D40(*v1, v1[1]);
  return v2;
}

uint64_t sub_1A22E26C8(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC13MediaControls15TransportButton_onAction);
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  *v5 = a1;
  v5[1] = a2;
  return sub_1A210F5C0(v6, v7);
}

char *sub_1A22E2788(double a1, double a2, double a3, double a4)
{
  v9 = &v4[OBJC_IVAR____TtC13MediaControls15TransportButton_viewModel];
  v9[10] = 0u;
  v9[11] = 0u;
  v9[8] = 0u;
  v9[9] = 0u;
  v9[6] = 0u;
  v9[7] = 0u;
  v9[4] = 0u;
  v9[5] = 0u;
  v9[2] = 0u;
  v9[3] = 0u;
  *v9 = 0u;
  v9[1] = 0u;
  v10 = &v4[OBJC_IVAR____TtC13MediaControls15TransportButton_style];
  *v10 = 0;
  *(v10 + 1) = 0x4031000000000000;
  *(v10 + 1) = xmmword_1A2311110;
  *(v10 + 4) = 0x3FF0000000000000;
  *&v4[OBJC_IVAR____TtC13MediaControls15TransportButton_contentScale] = 0x3FF0000000000000;
  v11 = OBJC_IVAR____TtC13MediaControls15TransportButton_backgroundView;
  *&v4[v11] = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
  v12 = OBJC_IVAR____TtC13MediaControls15TransportButton_packageView;
  type metadata accessor for PackageView(0, v13);
  v14 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *&v4[v12] = v14;
  *&v4[OBJC_IVAR____TtC13MediaControls15TransportButton_visualStylingProvider] = 0;
  v15 = &v4[OBJC_IVAR____TtC13MediaControls15TransportButton_onAction];
  *v15 = 0;
  v15[1] = 0;
  v4[OBJC_IVAR____TtC13MediaControls15TransportButton_isHolding] = 0;
  *&v4[OBJC_IVAR____TtC13MediaControls15TransportButton_onHoldDelayTimerInterval] = 0x3FE8000000000000;
  *&v4[OBJC_IVAR____TtC13MediaControls15TransportButton_onHoldDelayTimer] = 0;
  v28.receiver = v4;
  v28.super_class = type metadata accessor for TransportButton(v14, v16);
  v17 = objc_msgSendSuper2(&v28, sel_initWithFrame_, a1, a2, a3, a4);
  v18 = [v17 imageView];
  if (v18)
  {
    v19 = v18;
    [v18 setContentMode_];
  }

  v20 = OBJC_IVAR____TtC13MediaControls15TransportButton_backgroundView;
  [*&v17[OBJC_IVAR____TtC13MediaControls15TransportButton_backgroundView] setUserInteractionEnabled_];
  v21 = *&v17[v20];
  sub_1A225C9E8(v21, v22);

  v23 = *&v17[v20];
  sub_1A225CA7C();

  [v17 insertSubview:*&v17[v20] atIndex:0];
  v24 = OBJC_IVAR____TtC13MediaControls15TransportButton_packageView;
  [*&v17[OBJC_IVAR____TtC13MediaControls15TransportButton_packageView] setUserInteractionEnabled_];
  [v17 addSubview_];
  sub_1A22E3000();
  sub_1A22E3228();
  v25 = v17;
  [v25 addTarget:v25 action:sel_didTapInside_ forControlEvents:64];
  [v25 addTarget:v25 action:sel_didBeginHold_ forControlEvents:17];

  v26 = v25;
  [v26 addTarget:v26 action:sel_didDragExit_ forControlEvents:32];
  [v26 addTarget:v26 action:sel_didEndHolding_ forControlEvents:384];

  [v26 setPointerInteractionEnabled_];
  sub_1A22E6D28();

  return v26;
}

uint64_t sub_1A22E2A90(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB088D38, &unk_1A2310DA0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v39 - v3;
  v5 = sub_1A22E6268();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = (&v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = sub_1A22E6278();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = (&v39 - v14);
  v16 = [objc_allocWithZone(MEMORY[0x1E69DD070]) initWithView_];
  *v15 = v16;
  (*(v10 + 104))(v15, *MEMORY[0x1E69DBF98], v9);
  v40 = v16;
  [a1 bounds];
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;
  CGAffineTransformMakeScale(&v41, 1.3, 1.3);
  v42.origin.x = v18;
  v42.origin.y = v20;
  v42.size.width = v22;
  v42.size.height = v24;
  v43 = CGRectApplyAffineTransform(v42, &v41);
  x = v43.origin.x;
  y = v43.origin.y;
  width = v43.size.width;
  height = v43.size.height;
  [a1 bounds];
  sub_1A2128200(v29, v30, v31, v32, x, y, width, height);
  *v8 = [objc_opt_self() bezierPathWithOvalInRect_];
  (*(v6 + 104))(v8, *MEMORY[0x1E69DBED8], v5);
  sub_1A2115288(0, &unk_1EB088D40, 0x1E69DCDD0);
  (*(v10 + 16))(v13, v15, v9);
  (*(v6 + 16))(v4, v8, v5);
  (*(v6 + 56))(v4, 0, 1, v5);
  v37 = sub_1A22E6AA8();

  (*(v6 + 8))(v8, v5);
  (*(v10 + 8))(v15, v9);
  return v37;
}

void sub_1A22E2EB0(uint64_t a1, uint64_t a2)
{
  v10.receiver = v2;
  v10.super_class = type metadata accessor for TransportButton(a1, a2);
  objc_msgSendSuper2(&v10, sel_layoutSubviews);
  [v2 bounds];
  v4 = v3;
  v6 = v5;
  v7 = OBJC_IVAR____TtC13MediaControls15TransportButton_backgroundView;
  v8 = *&v2[OBJC_IVAR____TtC13MediaControls15TransportButton_backgroundView];
  sub_1A22E6BC8();
  [v8 setCenter_];

  [*&v2[v7] setBounds_];
  v9 = *&v2[OBJC_IVAR____TtC13MediaControls15TransportButton_packageView];
  sub_1A22E6BC8();
  [v9 setCenter_];
}

void sub_1A22E3000()
{
  v1 = v0;
  v2 = [v0 isHighlighted];
  v3 = MEMORY[0x1E69E7D40];
  v4 = *((*MEMORY[0x1E69E7D40] & *v1) + 0xB8);
  v5 = *(v1 + OBJC_IVAR____TtC13MediaControls15TransportButton_packageView);
  if (v2)
  {
    v6 = v4(v16);
    v7 = v17 * 0.8;
    v8 = (*((*v3 & *v1) + 0xD0))(v6);
    (*((*v3 & *v5) + 0xB0))(v7 * v8);

    v9 = [v1 imageView];
    if (!v9)
    {
      return;
    }

    v10 = v9;
    CGAffineTransformMakeScale(&v15, 0.8, 0.8);
    [v10 setTransform_];
  }

  else
  {
    v11 = v4(v16);
    v12 = v17;
    v13 = (*((*v3 & *v1) + 0xD0))(v11);
    (*((*v3 & *v5) + 0xB0))(v12 * v13);

    v14 = [v1 imageView];
    if (!v14)
    {
      return;
    }

    v10 = v14;
    *&v15.a = 0x3FF0000000000000uLL;
    v15.c = 0.0;
    v15.d = 1.0;
    *&v15.tx = 0uLL;
    [v14 setTransform_];
  }
}

id sub_1A22E3228()
{
  (*((*MEMORY[0x1E69E7D40] & *v0) + 0xB8))(v9);
  if (!LOBYTE(v9[0]))
  {
    v6 = OBJC_IVAR____TtC13MediaControls15TransportButton_backgroundView;
    [*(v0 + OBJC_IVAR____TtC13MediaControls15TransportButton_backgroundView) setAlpha_];
    return [*(v0 + v6) setTransform_];
  }

  if (LOBYTE(v9[0]) != 1)
  {
    v6 = OBJC_IVAR____TtC13MediaControls15TransportButton_backgroundView;
    [*(v0 + OBJC_IVAR____TtC13MediaControls15TransportButton_backgroundView) setAlpha_];
    return [*(v0 + v6) setTransform_];
  }

  v1 = [v0 isHighlighted];
  v2 = OBJC_IVAR____TtC13MediaControls15TransportButton_backgroundView;
  v3 = *(v0 + OBJC_IVAR____TtC13MediaControls15TransportButton_backgroundView);
  if (v1)
  {
    [v3 setAlpha_];
    v4 = *(v0 + v2);
    v5 = 1.2;
  }

  else
  {
    [v3 setAlpha_];
    v4 = *(v0 + v2);
    v5 = 1.4;
  }

  CGAffineTransformMakeScale(&v8, v5, v5);
  return [v4 setTransform_];
}

void sub_1A22E337C()
{
  v1 = v0;
  if ([v0 isEnabled])
  {
    v2 = 0;
  }

  else
  {
    v2 = 2;
  }

  v3 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x118);
  v4 = v3();
  if (v4)
  {
    v5 = v4;
    v6 = [v1 imageView];
    if (!v6)
    {
      __break(1u);
      return;
    }

    v7 = v6;
    v8 = [v1 traitCollection];
    (*(*v5 + 160))(v2, v7, v8);
  }

  v9 = v3();
  if (v9)
  {
    v10 = v9;
    v11 = *&v1[OBJC_IVAR____TtC13MediaControls15TransportButton_packageView];
    v12 = [v1 traitCollection];
    (*(*v10 + 160))(v2, v11, v12);
  }
}

void (*sub_1A22E3558(uint64_t a1))(_OWORD *, uint64_t)
{
  v3 = MEMORY[0x1E69E7D40];
  result = (*((*MEMORY[0x1E69E7D40] & *v1) + 0x130))();
  if (result)
  {
    v6 = result;
    v7 = v5;
    (*((*v3 & *v1) + 0xA0))(v8);
    if (*(&v9 + 1))
    {
      v10[8] = v8[8];
      v10[9] = v8[9];
      v10[10] = v8[10];
      v10[11] = v9;
      v10[4] = v8[4];
      v10[5] = v8[5];
      v10[6] = v8[6];
      v10[7] = v8[7];
      v10[0] = v8[0];
      v10[1] = v8[1];
      v10[2] = v8[2];
      v10[3] = v8[3];
      v6(v10, a1);
      sub_1A210F5C0(v6, v7);
      return sub_1A211830C(v10);
    }

    else
    {
      sub_1A210F5C0(v6, v7);
      return sub_1A210D9B0(v8, &qword_1EB088850, &qword_1A2308F00);
    }
  }

  return result;
}

id sub_1A22E37B0(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for TransportButton(a1, a2);
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

void sub_1A22E3884()
{
  v1 = (v0 + OBJC_IVAR____TtC13MediaControls15TransportButton_viewModel);
  v1[10] = 0u;
  v1[11] = 0u;
  v1[8] = 0u;
  v1[9] = 0u;
  v1[6] = 0u;
  v1[7] = 0u;
  v1[4] = 0u;
  v1[5] = 0u;
  v1[2] = 0u;
  v1[3] = 0u;
  *v1 = 0u;
  v1[1] = 0u;
  v2 = v0 + OBJC_IVAR____TtC13MediaControls15TransportButton_style;
  *v2 = 0;
  *(v2 + 8) = 0x4031000000000000;
  *(v2 + 16) = xmmword_1A2311110;
  *(v2 + 32) = 0x3FF0000000000000;
  *(v0 + OBJC_IVAR____TtC13MediaControls15TransportButton_contentScale) = 0x3FF0000000000000;
  v3 = OBJC_IVAR____TtC13MediaControls15TransportButton_backgroundView;
  *(v0 + v3) = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
  v4 = OBJC_IVAR____TtC13MediaControls15TransportButton_packageView;
  type metadata accessor for PackageView(0, v5);
  *(v0 + v4) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *(v0 + OBJC_IVAR____TtC13MediaControls15TransportButton_visualStylingProvider) = 0;
  v6 = (v0 + OBJC_IVAR____TtC13MediaControls15TransportButton_onAction);
  *v6 = 0;
  v6[1] = 0;
  *(v0 + OBJC_IVAR____TtC13MediaControls15TransportButton_isHolding) = 0;
  *(v0 + OBJC_IVAR____TtC13MediaControls15TransportButton_onHoldDelayTimerInterval) = 0x3FE8000000000000;
  *(v0 + OBJC_IVAR____TtC13MediaControls15TransportButton_onHoldDelayTimer) = 0;
  sub_1A22E7028();
  __break(1u);
}

unint64_t sub_1A22E39D8()
{
  result = qword_1EB08A190;
  if (!qword_1EB08A190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB08A190);
  }

  return result;
}

unint64_t sub_1A22E3A30()
{
  result = qword_1EB08A198;
  if (!qword_1EB08A198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB08A198);
  }

  return result;
}

__n128 __swift_memcpy192_8(uint64_t a1, __int128 *a2)
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
  v10 = a2[11];
  *(a1 + 160) = a2[10];
  *(a1 + 176) = v10;
  *(a1 + 128) = result;
  *(a1 + 144) = v9;
  return result;
}

uint64_t sub_1A22E3B3C(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && a1[40])
  {
    return (*a1 + 254);
  }

  v3 = *a1;
  v4 = v3 >= 3;
  v5 = v3 - 3;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_1A22E3B80(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *result = a2 + 2;
    }
  }

  return result;
}

void sub_1A22E3C14()
{
  v1 = OBJC_IVAR____TtC13MediaControls15TransportButton_onHoldDelayTimer;
  [*(v0 + OBJC_IVAR____TtC13MediaControls15TransportButton_onHoldDelayTimer) invalidate];
  v2 = *(v0 + v1);
  *(v0 + v1) = 0;

  if (*(v0 + OBJC_IVAR____TtC13MediaControls15TransportButton_isHolding) == 1)
  {
    *(v0 + OBJC_IVAR____TtC13MediaControls15TransportButton_isHolding) = 0;
    v3 = MEMORY[0x1E69E7D40];
    (*((*MEMORY[0x1E69E7D40] & *v0) + 0xA0))(v7);
    if (v8[18])
    {
      sub_1A2214CF8(v8, &v9, &qword_1EB0888C8, &qword_1A2309428);
      sub_1A210D9B0(v7, &qword_1EB088850, &qword_1A2308F00);
      if (*(&v10 + 1))
      {
        sub_1A210D9B0(&v9, &qword_1EB0888C8, &qword_1A2309428);
        v4 = *(v0 + OBJC_IVAR____TtC13MediaControls15TransportButton_packageView);
        v5 = *((*v3 & *v4) + 0xE8);
        v6 = v4;
        v5();

        sub_1A22E3558(2);
        return;
      }
    }

    else
    {
      sub_1A210D9B0(v7, &qword_1EB088850, &qword_1A2308F00);
      v9 = 0u;
      v10 = 0u;
      v11 = 0;
    }

    sub_1A210D9B0(&v9, &qword_1EB0888C8, &qword_1A2309428);
  }
}

void sub_1A22E3DB0()
{
  if (*(v0 + OBJC_IVAR____TtC13MediaControls15TransportButton_isHolding) == 1)
  {

    sub_1A22E3C14();
  }

  else
  {
    [*(v0 + OBJC_IVAR____TtC13MediaControls15TransportButton_onHoldDelayTimer) invalidate];
    v1 = *(v0 + OBJC_IVAR____TtC13MediaControls15TransportButton_packageView);
    v2 = *((*MEMORY[0x1E69E7D40] & *v1) + 0xD8);
    v3 = v1;
    v2();

    sub_1A22E3558(0);
  }
}

void sub_1A22E3E94()
{
  (*((*MEMORY[0x1E69E7D40] & *v0) + 0xA0))(v8);
  if (v9[18])
  {
    sub_1A2214CF8(v9, &v10, &qword_1EB0888C8, &qword_1A2309428);
    sub_1A210D9B0(v8, &qword_1EB088850, &qword_1A2308F00);
    if (*(&v11 + 1))
    {
      sub_1A210D9B0(&v10, &qword_1EB0888C8, &qword_1A2309428);
      v1 = OBJC_IVAR____TtC13MediaControls15TransportButton_onHoldDelayTimer;
      [*(v0 + OBJC_IVAR____TtC13MediaControls15TransportButton_onHoldDelayTimer) invalidate];
      v2 = objc_opt_self();
      v3 = *(v0 + OBJC_IVAR____TtC13MediaControls15TransportButton_onHoldDelayTimerInterval);
      v4 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v8[4] = sub_1A22E40A0;
      v9[0] = v4;
      v8[0] = MEMORY[0x1E69E9820];
      v8[1] = 1107296256;
      v8[2] = sub_1A224DB84;
      v8[3] = &block_descriptor_25;
      v5 = _Block_copy(v8);

      v6 = [v2 scheduledTimerWithTimeInterval:0 repeats:v5 block:v3];
      _Block_release(v5);
      v7 = *(v0 + v1);
      *(v0 + v1) = v6;

      return;
    }
  }

  else
  {
    sub_1A210D9B0(v8, &qword_1EB088850, &qword_1A2308F00);
    v10 = 0u;
    v11 = 0u;
    v12 = 0;
  }

  sub_1A210D9B0(&v10, &qword_1EB0888C8, &qword_1A2309428);
}

void sub_1A22E40A0(void *a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    [a1 invalidate];
    v3[OBJC_IVAR____TtC13MediaControls15TransportButton_isHolding] = 1;
    v4 = *&v3[OBJC_IVAR____TtC13MediaControls15TransportButton_packageView];
    v5 = *((*MEMORY[0x1E69E7D40] & *v4) + 0xE0);
    v6 = v4;
    v5();

    sub_1A22E3558(1);
  }
}

id sub_1A22E41B0(uint64_t a1, uint64_t a2)
{
  type metadata accessor for ResourceBundleClass(a1, a2);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass_];
  qword_1EB091358 = result;
  return result;
}

uint64_t sub_1A22E446C(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_1A22E6218();
  __swift_allocate_value_buffer(v5, a2);
  __swift_project_value_buffer(v5, a2);
  if (qword_1EB091350 != -1)
  {
    swift_once();
  }

  v6 = qword_1EB091358;
  return sub_1A22E6208();
}

uint64_t sub_1A22E4534(void *a1, uint64_t a2, uint64_t a3)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v4 = sub_1A22E6218();

  return __swift_project_value_buffer(v4, a2);
}

uint64_t sub_1A22E45AC@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v6 = sub_1A22E6218();
  v7 = __swift_project_value_buffer(v6, a2);
  v8 = *(*(v6 - 8) + 16);

  return v8(a4, v7, v6);
}

CAFrameRateRange CAFrameRateRangeMake(float minimum, float maximum, float preferred)
{
  MEMORY[0x1EEDD5E20](minimum, maximum, preferred);
  result.preferred = v5;
  result.maximum = v4;
  result.minimum = v3;
  return result;
}

CGRect CGRectApplyAffineTransform(CGRect rect, CGAffineTransform *t)
{
  MEMORY[0x1EEDBAD98](t, rect.origin, *&rect.origin.y, rect.size, *&rect.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
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

CGRect CGRectOffset(CGRect rect, CGFloat dx, CGFloat dy)
{
  MEMORY[0x1EEDBAE78](rect.origin, *&rect.origin.y, rect.size, *&rect.size.height, dx, dy);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

CGRect CGRectUnion(CGRect r1, CGRect r2)
{
  MEMORY[0x1EEDBAE88](r1.origin, *&r1.origin.y, r1.size, *&r1.size.height, r2.origin, *&r2.origin.y, r2.size, *&r2.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}