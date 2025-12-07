void sub_1C577727C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = *(Strong + OBJC_IVAR____TtC6MapsUI24TransitConnectionRowView_infoPlatterSizeLayout);
    if (v2)
    {
      v3 = objc_opt_self();
      v4 = *MEMORY[0x1E69DDCF8];
      v5 = v2;
      v6 = [v3 preferredFontForTextStyle_];
      [v6 _mapkit_scaledValueForValue_];
      v8 = v7;

      (*((*MEMORY[0x1E69E7D40] & *v5) + 0xC0))(v8, v8);
    }
  }
}

double GridButtonCell.viewModel.getter()
{
  swift_beginAccess();
  swift_unknownObjectRetain();
  return result;
}

uint64_t GridButtonCell.viewModel.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___MUGridButtonCell_viewModel;
  swift_beginAccess();
  *&v1[v3] = a1;
  swift_unknownObjectRetain_n();
  swift_unknownObjectRelease();
  if (a1)
  {
    [v1 _mapsui_registerButtonCellModel_];
    swift_unknownObjectRelease();
  }

  _s6MapsUI14GridButtonCellC07dynamicdE14ModelDidChangeyySo09MUDynamicdeG0_pF_0();
  return swift_unknownObjectRelease();
}

double sub_1C57776A4@<D0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR___MUGridButtonCell_viewModel;
  swift_beginAccess();
  *a2 = *(v3 + v4);
  swift_unknownObjectRetain();
  return result;
}

void sub_1C5777700(uint64_t *a1, char **a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR___MUGridButtonCell_viewModel;
  swift_beginAccess();
  *&v3[v4] = v2;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  if (v2)
  {
    [v3 _mapsui_registerButtonCellModel_];
  }

  _s6MapsUI14GridButtonCellC07dynamicdE14ModelDidChangeyySo09MUDynamicdeG0_pF_0();
}

void _s6MapsUI14GridButtonCellC07dynamicdE14ModelDidChangeyySo09MUDynamicdeG0_pF_0()
{
  v1 = v0;
  v2 = sub_1C584EDD0();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1C584EDE0();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR___MUGridButtonCell_viewModel;
  swift_beginAccess();
  v13 = *&v1[v12];
  if (v13)
  {
    v14 = [swift_unknownObjectRetain() actionStyle];
    v29 = v3;
    v30 = v2;
    if (v14 == 1)
    {
      v15 = sub_1C584F510();
    }

    else
    {
      v15 = sub_1C584F520();
    }

    v31 = v15;

    v16 = [v13 titleString];
    sub_1C584F660();

    sub_1C584EE30();
    v17 = [v13 symbolName];
    if (v17)
    {
      v18 = v17;
      sub_1C584F660();
    }

    sub_1C584EE00();
    (*(v8 + 104))(v11, *MEMORY[0x1E69AE038], v7);
    sub_1C584EE40();
    (*(v29 + 104))(v6, *MEMORY[0x1E69AE030], v30);
    sub_1C584EE20();
    sub_1C584EE10();
    v19 = OBJC_IVAR___MUGridButtonCell_viewModel;
    swift_beginAccess();
    v20 = *&v1[v19];
    if (v20 && ([v20 respondsToSelector_] & 1) != 0 && (v21 = objc_msgSend(v20, sel_menu)) != 0)
    {
      v22 = v21;
      v23 = [objc_opt_self() buttonWithType_];
      [v23 setTranslatesAutoresizingMaskIntoConstraints_];
      [v23 setShowsMenuAsPrimaryAction_];
      [v23 setMenu_];
      [v1 addSubview_];
      v24 = [objc_allocWithZone(MUEdgeLayout) initWithItem:v23 container:v1];
      [v24 activate];

      v25 = *&v1[OBJC_IVAR___MUGridButtonCell_menuButton];
      *&v1[OBJC_IVAR___MUGridButtonCell_menuButton] = v23;
    }

    else
    {
      v26 = OBJC_IVAR___MUGridButtonCell_menuButton;
      v27 = *&v1[OBJC_IVAR___MUGridButtonCell_menuButton];
      if (v27)
      {
        [v27 removeFromSuperview];
        v25 = *&v1[v26];
      }

      else
      {
        v25 = 0;
      }

      *&v1[v26] = 0;
    }

    swift_unknownObjectRelease();
  }
}

uint64_t (*GridButtonCell.viewModel.modify(uint64_t *a1))()
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
  v4 = OBJC_IVAR___MUGridButtonCell_viewModel;
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  swift_beginAccess();
  return sub_1C5777BE8;
}

void sub_1C5777BE8(void *a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    if (*(*(v3 + 24) + *(v3 + 32)))
    {
      [*(v3 + 24) _mapsui_registerButtonCellModel_];
    }

    _s6MapsUI14GridButtonCellC07dynamicdE14ModelDidChangeyySo09MUDynamicdeG0_pF_0();
  }

  free(v3);
}

id GridButtonCell.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

void GridButtonCell.init(frame:)(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v36[0] = swift_getObjectType();
  v10 = sub_1C584EDA0();
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v36[1] = v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1C584EDD0();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13, v15);
  v17 = v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1C584EB60();
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18, v20);
  v22 = v36 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_1C584EDE0();
  MEMORY[0x1EEE9AC00](v23, v24);
  *&v5[OBJC_IVAR___MUGridButtonCell_hostingView] = 0;
  *&v5[OBJC_IVAR___MUGridButtonCell_menuButton] = 0;
  *&v5[OBJC_IVAR___MUGridButtonCell_viewModel] = 0;
  (*(v26 + 104))(v36 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x1E69AE038]);
  sub_1C584EB50();
  sub_1C584EB40();
  (*(v19 + 8))(v22, v18);
  (*(v14 + 104))(v17, *MEMORY[0x1E69AE030], v13);
  sub_1C584F520();
  sub_1C584EE50();
  swift_allocObject();
  *&v5[OBJC_IVAR___MUGridButtonCell_internalViewModel] = sub_1C584EDF0();
  v37.receiver = v5;
  v37.super_class = v36[0];

  v27 = objc_msgSendSuper2(&v37, sel_initWithFrame_, a1, a2, a3, a4);
  swift_allocObject();
  swift_unknownObjectWeakInit();

  v28 = v27;
  sub_1C584ED90();
  v29 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC1711B0, &qword_1C5879838));
  v30 = sub_1C584F460();
  v31 = OBJC_IVAR___MUGridButtonCell_hostingView;
  v32 = *&v28[OBJC_IVAR___MUGridButtonCell_hostingView];
  *&v28[OBJC_IVAR___MUGridButtonCell_hostingView] = v30;
  v33 = v30;

  [v28 addSubview_];
  v34 = *&v28[v31];
  if (v34)
  {
    v35 = [objc_allocWithZone(MUEdgeLayout) initWithItem:v34 container:v28];
    [v35 activate];
  }

  else
  {
    __break(1u);
  }
}

void sub_1C57781A4()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = OBJC_IVAR___MUGridButtonCell_viewModel;
    swift_beginAccess();
    if (*&v1[v2])
    {
      v3 = [swift_unknownObjectRetain() actionBlock];
      if (v3)
      {
        v4 = v3;
        (*(v3 + 2))(v3, v1);

        _Block_release(v4);
      }

      else
      {
      }

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }
}

id GridButtonCell.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_1C57783EC(uint64_t a1, __int128 *a2)
{
  v3 = a2[3];
  v13 = a2[2];
  v14 = v3;
  v15 = a2[4];
  v16 = *(a2 + 10);
  v4 = a2[1];
  v11 = *a2;
  v12 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC171280, qword_1C5879870);
  swift_unknownObjectRetain();
  sub_1C56236C4();
  *&v9[40] = v13;
  *&v9[56] = v14;
  *&v9[72] = v15;
  v10 = v16;
  *&v9[8] = v11;
  *&v9[24] = v12;
  sub_1C5763FAC(&v11, v8);
  *(v2 + OBJC_IVAR___MUCompositionalStackLayoutInternal_builder) = sub_1C562370C(v9);

  v6 = sub_1C562389C(v5, &off_1F44C6BC0);
  sub_1C5779578();
  *&v9[48] = v14;
  *&v9[64] = v15;
  *&v9[80] = v16;
  *v9 = v11;
  *&v9[16] = v12;
  *&v9[32] = v13;
  sub_1C563310C();
  swift_unknownObjectRelease();

  sub_1C5763FE4(&v11);
  return v6;
}

uint64_t CompositionalStackLayout.__allocating_init(container:groupRef:)(uint64_t a1, void *a2)
{
  v5 = objc_allocWithZone(v2);
  ObjectType = swift_getObjectType();
  (*((*MEMORY[0x1E69E7D40] & *a2) + 0x58))(v9);
  v7 = (*(ObjectType + 104))(a1, v9);

  swift_deallocPartialClassInstance();
  return v7;
}

uint64_t CompositionalStackLayout.init(container:groupRef:)(uint64_t a1, void *a2)
{
  ObjectType = swift_getObjectType();
  (*((*MEMORY[0x1E69E7D40] & *a2) + 0x58))(v7);
  v5 = (*(ObjectType + 104))(a1, v7);

  swift_deallocPartialClassInstance();
  return v5;
}

uint64_t sub_1C5778800()
{
  sub_1C5623A68(v2);
  Strong = swift_unknownObjectWeakLoadStrong();
  sub_1C57796A8(v2);
  return Strong;
}

uint64_t sub_1C57788F0(uint64_t a1)
{
  sub_1C5623A68(v4);
  swift_unknownObjectWeakAssign();
  sub_1C57796D8(v4, v3);
  sub_1C5623B40(v3, v1);
  sub_1C57796A8(v4);
  sub_1C5779578();
  return swift_unknownObjectRelease();
}

uint64_t sub_1C5778970@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x70))();
  *a2 = result;
  return result;
}

uint64_t sub_1C57789CC(void *a1, void **a2)
{
  v2 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x78);
  v3 = swift_unknownObjectRetain();
  return v2(v3);
}

void (*sub_1C5778A30(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0xD8uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 200) = v1;
  *(v3 + 208) = *(v1 + OBJC_IVAR___MUCompositionalStackLayoutInternal_builder);
  sub_1C5623A68(v3);
  Strong = swift_unknownObjectWeakLoadStrong();
  sub_1C57796A8(v4);
  *(v4 + 192) = Strong;
  return sub_1C5778AD0;
}

void sub_1C5778AD0(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  if (a2)
  {
    swift_unknownObjectRetain();
    sub_1C5623A68(v2);
    v3 = swift_unknownObjectWeakAssign();
    sub_1C57796D8(v3, v2 + 96);
    sub_1C5623B40(v2 + 96, v4);
    sub_1C57796A8(v2);
    sub_1C5779578();
    swift_unknownObjectRelease();
  }

  else
  {
    sub_1C5623A68(*a1);
    v5 = swift_unknownObjectWeakAssign();
    sub_1C57796D8(v5, v2 + 96);
    sub_1C5623B40(v2 + 96, v6);
    sub_1C57796A8(v2);
    sub_1C5779578();
  }

  swift_unknownObjectRelease();

  free(v2);
}

double sub_1C5778BA4@<D0>(uint64_t a1@<X8>)
{
  sub_1C5623A68(v6);
  v15 = v9;
  v16 = v10;
  v17 = v11;
  v18 = v12;
  v13 = v7;
  v14 = v8;
  sub_1C5763FAC(&v13, v5);
  sub_1C57796A8(v6);
  v2 = v16;
  *(a1 + 32) = v15;
  *(a1 + 48) = v2;
  *(a1 + 64) = v17;
  *(a1 + 80) = v18;
  result = *&v13;
  v4 = v14;
  *a1 = v13;
  *(a1 + 16) = v4;
  return result;
}

uint64_t sub_1C5778C48(uint64_t a1)
{
  v2 = *(a1 + 48);
  *&v9[32] = *(a1 + 32);
  *&v9[48] = v2;
  *&v9[64] = *(a1 + 64);
  *&v9[80] = *(a1 + 80);
  v3 = *(a1 + 16);
  *v9 = *a1;
  *&v9[16] = v3;
  sub_1C563310C();
  sub_1C5623A68(v9);
  v11[2] = *&v9[40];
  v11[3] = *&v9[56];
  v11[4] = *&v9[72];
  v12 = v10;
  v11[0] = *&v9[8];
  v11[1] = *&v9[24];
  sub_1C5763FE4(v11);
  v4 = *(a1 + 48);
  *&v9[40] = *(a1 + 32);
  *&v9[56] = v4;
  *&v9[72] = *(a1 + 64);
  v10 = *(a1 + 80);
  v5 = *(a1 + 16);
  *&v9[8] = *a1;
  *&v9[24] = v5;
  sub_1C57796D8(v9, v8);
  sub_1C5623B40(v8, v6);
  return sub_1C57796A8(v9);
}

void (*sub_1C5778D38(uint64_t *a1))(uint64_t *a1, char a2)
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
  v5 = (v3 + 280);
  *(v3 + 632) = *(v1 + OBJC_IVAR___MUCompositionalStackLayoutInternal_builder);
  sub_1C5623A68(v3);
  v6 = *(v4 + 56);
  *(v4 + 224) = *(v4 + 40);
  *(v4 + 240) = v6;
  *(v4 + 256) = *(v4 + 72);
  *(v4 + 272) = *(v4 + 88);
  v7 = *(v4 + 24);
  *(v4 + 192) = *(v4 + 8);
  *(v4 + 208) = v7;
  sub_1C5763FAC(v4 + 192, v4 + 96);
  sub_1C57796A8(v4);
  v8 = *(v4 + 240);
  v5[2] = *(v4 + 224);
  v5[3] = v8;
  v5[4] = *(v4 + 256);
  *(v4 + 360) = *(v4 + 272);
  v9 = *(v4 + 208);
  *v5 = *(v4 + 192);
  v5[1] = v9;
  return sub_1C5778E1C;
}

void sub_1C5778E1C(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *a1 + 280;
  if (a2)
  {
    v4 = *(*a1 + 328);
    *(v2 + 576) = *(*a1 + 312);
    *(v2 + 592) = v4;
    *(v2 + 608) = *(v3 + 64);
    v5 = *(v3 + 16);
    *(v2 + 544) = *v3;
    *(v2 + 560) = v5;
    *(v2 + 624) = *(v3 + 80);
    sub_1C5763FAC(v2 + 544, v2);
    sub_1C563310C();
    sub_1C5623A68(v2);
    v6 = *(v2 + 56);
    *(v2 + 488) = *(v2 + 40);
    *(v2 + 504) = v6;
    *(v2 + 520) = *(v2 + 72);
    *(v2 + 536) = *(v2 + 88);
    v7 = *(v2 + 24);
    *(v2 + 456) = *(v2 + 8);
    *(v2 + 472) = v7;
    sub_1C5763FE4(v2 + 456);
    v8 = *(v2 + 592);
    *(v2 + 40) = *(v2 + 576);
    *(v2 + 56) = v8;
    *(v2 + 72) = *(v2 + 608);
    *(v2 + 88) = *(v2 + 624);
    v9 = *(v2 + 560);
    *(v2 + 8) = *(v2 + 544);
    *(v2 + 24) = v9;
    sub_1C57796D8(v2, v2 + 96);
    sub_1C5623B40(v2 + 96, v10);
    sub_1C57796A8(v2);
    v11 = *(v3 + 48);
    *(v2 + 400) = *(v3 + 32);
    *(v2 + 416) = v11;
    *(v2 + 432) = *(v3 + 64);
    *(v2 + 448) = *(v3 + 80);
    v12 = *(v3 + 16);
    *(v2 + 368) = *v3;
    *(v2 + 384) = v12;
    sub_1C5763FE4(v2 + 368);
  }

  else
  {
    v18 = *(*a1 + 312);
    v19 = *(*a1 + 328);
    v20 = *(*a1 + 344);
    v16 = *v3;
    v17 = *(*a1 + 296);
    v21 = *(*a1 + 360);
    sub_1C563310C();
    sub_1C5623A68(v2);
    v13 = *(v2 + 56);
    *(v2 + 400) = *(v2 + 40);
    *(v2 + 416) = v13;
    *(v2 + 432) = *(v2 + 72);
    *(v2 + 448) = *(v2 + 88);
    v14 = *(v2 + 24);
    *(v2 + 368) = *(v2 + 8);
    *(v2 + 384) = v14;
    sub_1C5763FE4(v2 + 368);
    *(v2 + 40) = v18;
    *(v2 + 56) = v19;
    *(v2 + 72) = v20;
    *(v2 + 88) = v21;
    *(v2 + 8) = v16;
    *(v2 + 24) = v17;
    sub_1C57796D8(v2, v2 + 96);
    sub_1C5623B40(v2 + 96, v15);
    sub_1C57796A8(v2);
  }

  free(v2);
}

id sub_1C57790F4()
{
  type metadata accessor for CompositionalStackLayout.GroupRef();
  (*((*MEMORY[0x1E69E7D40] & *v0) + 0x88))(v2);
  return sub_1C575D800(v2);
}

void sub_1C577923C(void *a1)
{
  v2 = MEMORY[0x1E69E7D40];
  (*((*MEMORY[0x1E69E7D40] & *a1) + 0x58))(v4);
  (*((*v2 & *v1) + 0x90))(v4);
}

uint64_t sub_1C57792F4@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0xA0))();
  *a2 = result;
  return result;
}

void (*sub_1C57793B4(id *a1))(uint64_t a1, char a2)
{
  a1[1] = v1;
  type metadata accessor for CompositionalStackLayout.GroupRef();
  (*((*MEMORY[0x1E69E7D40] & *v1) + 0x88))(v4);
  *a1 = sub_1C575D800(v4);
  return sub_1C5779458;
}

void sub_1C5779458(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v5 = MEMORY[0x1E69E7D40];
  v6 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x58);
  if (a2)
  {
    v7 = v2;
    v6(v8);
    (*((*v5 & *v3) + 0x90))(v8);
  }

  else
  {
    v7 = v2;
    v6(v8);
    (*((*v5 & *v3) + 0x90))(v8);
  }
}

void sub_1C5779578()
{
  v1 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x70);
  v2 = v1();
  if (v2)
  {
    objc_opt_self();
    v3 = swift_dynamicCastObjCClass();
    if (v3)
    {
      v6 = v3;
      swift_unknownObjectRetain();
      goto LABEL_10;
    }

    v2 = swift_unknownObjectRelease();
  }

  if ((v1)(v2))
  {
    objc_opt_self();
    v4 = swift_dynamicCastObjCClass();
    if (v4)
    {
      v6 = [v4 owningView];
      swift_unknownObjectRelease();
      v5 = v6;
      goto LABEL_10;
    }

    swift_unknownObjectRelease();
  }

  v6 = 0;
LABEL_10:
  sub_1C571ACC0(v6);
}

void sub_1C5779710(__int128 *a1)
{
  v2 = v1;
  v4 = *(a1 + 2);
  v5 = *(a1 + 3);
  v7 = *(a1 + 4);
  v6 = *(a1 + 5);
  v9 = *(a1 + 6);
  v8 = *(a1 + 7);
  v10 = *(a1 + 8);
  v11 = *(a1 + 9);
  v12 = *(a1 + 10);
  v75 = *a1;
  v76 = v4;
  v77 = v5;
  v78 = v7;
  v79 = v6;
  v80 = v9;
  v81 = v8;
  v82 = v10;
  v83 = v11;
  v84 = v12;
  v13 = *(v2 + 24);
  v93[0] = *(v2 + 8);
  v93[1] = v13;
  v14 = *(v2 + 40);
  v15 = *(v2 + 56);
  v16 = *(v2 + 72);
  v94 = *(v2 + 88);
  v93[3] = v15;
  v93[4] = v16;
  v93[2] = v14;
  v17 = *(v2 + 56);
  v88 = *(v2 + 40);
  v89 = v17;
  v90 = *(v2 + 72);
  v91 = *(v2 + 88);
  v18 = *(v2 + 24);
  v86 = *(v2 + 8);
  v87 = v18;
  sub_1C5763FAC(v93, v95);
  v19 = sub_1C575CE74();
  v95[2] = v88;
  v95[3] = v89;
  v95[4] = v90;
  v96 = v91;
  v95[0] = v86;
  v95[1] = v87;
  sub_1C5763FE4(v95);
  if (v19)
  {
    sub_1C56250A4(v2, v92);
    v92[16] = 0;
  }

  else
  {
    v75 = *a1;
    v76 = v4;
    v77 = v5;
    v78 = v7;
    v79 = v6;
    v80 = v9;
    v81 = v8;
    v82 = v10;
    v83 = v11;
    v84 = v12;
    sub_1C56330C0(v92);
  }

  v20 = *(v5 + 16);
  v21 = MEMORY[0x1E69E7CC0];
  if (v20)
  {
    v56 = v7;
    v57 = v9;
    v58 = v10;
    v59 = v8;
    *&v61[0] = MEMORY[0x1E69E7CC0];
    sub_1C5675B20(0, v20, 0);
    v22 = *&v61[0];
    v60 = v5;
    v23 = v5 + 32;
    do
    {
      sub_1C56331B4(v23, &v75);
      sub_1C563326C(&v75, &v65);
      v24 = *(&v66 + 1);
      v25 = v67;
      __swift_project_boxed_opaque_existential_1(&v65, *(&v66 + 1));
      (*(v25 + 8))(v63, v24, v25);
      __swift_destroy_boxed_opaque_existential_1(&v65);
      v26 = v79;
      v27 = v80;
      v28 = v81;
      v29 = v82;
      v30 = v83;
      v31 = v84;
      v74[0] = v85;
      v32 = sub_1C5633434();
      sub_1C563E43C(v63, v74, &type metadata for LayoutItemSpecification, v32, &v86, v26, v27, v28, v29, v30, v31);
      sub_1C56332A4(&v75);
      *&v61[0] = v22;
      v34 = *(v22 + 16);
      v33 = *(v22 + 24);
      if (v34 >= v33 >> 1)
      {
        sub_1C5675B20((v33 > 1), v34 + 1, 1);
        v22 = *&v61[0];
      }

      *(v22 + 16) = v34 + 1;
      sub_1C5683AE4(&v86, v22 + 80 * v34 + 32);
      v23 += 96;
      --v20;
    }

    while (v20);
    v5 = v60;
    v10 = v58;
    v8 = v59;
    v9 = v57;
    v7 = v56;
    v21 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v22 = MEMORY[0x1E69E7CC0];
  }

  sub_1C5625EE8(v92, &v75);
  *&v65 = v7;

  sub_1C565297C(&v75, v4, v22, &v65, &v86, v9, v8, v10, v11, v12);
  sub_1C5625EE8(v92, &v75);
  v35 = sub_1C570FBF0(v4);
  *&v65 = v6;
  sub_1C5688A00(&v75, v35, v22, &v65, v74, v8, v10, v11, v12);
  v73 = v21;
  v36 = sub_1C564CD3C();
  v37 = sub_1C5650E8C(v36);
  v38 = sub_1C5687648(v37);
  sub_1C5650E8C(v38);
  v39 = *(v5 + 16);
  if (!v39)
  {
LABEL_29:
    sub_1C5675B40(v74);
    sub_1C5675B94(&v86);
    sub_1C5626250(v92);
    return;
  }

  v40 = &qword_1EC170F60;
  v41 = v5 + 32;
  while (1)
  {
    sub_1C56331B4(v41, &v75);
    sub_1C563326C(&v75, v72);
    sub_1C56332A4(&v75);
    sub_1C5632F90(v72, v71);
    __swift_instantiateConcreteTypeFromMangledNameV2(v40, &unk_1C58791A0);
    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_15;
    }

    v42 = v40;
    v63[2] = v67;
    v63[3] = v68;
    v63[4] = v69;
    v64 = v70;
    v63[0] = v65;
    v63[1] = v66;
    v61[2] = v67;
    v61[3] = v68;
    v61[4] = v69;
    v62 = v70;
    v61[0] = v65;
    v61[1] = v66;
    v43 = v2;
    sub_1C5779710(v61);
    v45 = v44;
    sub_1C5763FE4(v63);
    v46 = *(v45 + 16);
    v47 = v73;
    v48 = v73[2];
    v49 = v48 + v46;
    if (__OFADD__(v48, v46))
    {
      break;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (!isUniquelyReferenced_nonNull_native || (v51 = v47[3] >> 1, v51 < v49))
    {
      if (v48 <= v49)
      {
        v52 = v48 + v46;
      }

      else
      {
        v52 = v48;
      }

      v47 = sub_1C5625864(isUniquelyReferenced_nonNull_native, v52, 1, v47);
      v51 = v47[3] >> 1;
    }

    v2 = v43;
    if (*(v45 + 16))
    {
      if (v51 - v47[2] < v46)
      {
        goto LABEL_32;
      }

      swift_arrayInitWithCopy();

      if (v46)
      {
        v53 = v47[2];
        v54 = __OFADD__(v53, v46);
        v55 = v53 + v46;
        if (v54)
        {
          goto LABEL_33;
        }

        v47[2] = v55;
      }
    }

    else
    {

      if (v46)
      {
        goto LABEL_31;
      }
    }

    v73 = v47;
    v40 = v42;
LABEL_15:
    v41 += 96;
    if (!--v39)
    {
      goto LABEL_29;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
}

uint64_t sub_1C5779C90()
{
  v1 = *(v0 + 56);
  v14[2] = *(v0 + 40);
  v14[3] = v1;
  v14[4] = *(v0 + 72);
  v15 = *(v0 + 88);
  v2 = *(v0 + 24);
  v14[0] = *(v0 + 8);
  v14[1] = v2;
  v3 = *(v0 + 56);
  v10 = *(v0 + 40);
  v11 = v3;
  v12 = *(v0 + 72);
  v13 = *(v0 + 88);
  v4 = *(v0 + 24);
  v8 = *(v0 + 8);
  v9 = v4;
  sub_1C5763FAC(v14, v16);
  sub_1C5779710(&v8);
  v6 = v5;
  v16[2] = v10;
  v16[3] = v11;
  v16[4] = v12;
  v17 = v13;
  v16[0] = v8;
  v16[1] = v9;
  sub_1C5763FE4(v16);
  return v6;
}

uint64_t sub_1C5779D48()
{
  sub_1C584FEA0();
  sub_1C5662408();
  sub_1C584F5F0();
  sub_1C577A0D8();
  sub_1C584F5F0();
  return sub_1C584FEF0();
}

uint64_t sub_1C5779DDC(uint64_t a1)
{
  sub_1C5662408();
  sub_1C584F5F0();
  sub_1C577A0D8();
  return sub_1C584F5F0();
}

uint64_t sub_1C5779E60(uint64_t a1)
{
  sub_1C584FEA0();
  sub_1C5662408();
  sub_1C584F5F0();
  sub_1C577A0D8();
  sub_1C584F5F0();
  return sub_1C584FEF0();
}

id CompositionalStackLayout.__deallocating_deinit(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for CompositionalStackLayout();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_1C5779F78(uint64_t a1, uint64_t a2)
{
  if (sub_1C5623E2C(a1, a2))
  {
    v4 = *(a1 + 56);
    v24[2] = *(a1 + 40);
    v24[3] = v4;
    v24[4] = *(a1 + 72);
    v25 = *(a1 + 88);
    v5 = *(a1 + 24);
    v24[0] = *(a1 + 8);
    v24[1] = v5;
    v20 = *(a1 + 40);
    v21 = *(a1 + 56);
    v22 = *(a1 + 72);
    v23 = *(a1 + 88);
    v18 = *(a1 + 8);
    v19 = *(a1 + 24);
    v6 = *(a2 + 24);
    v26[0] = *(a2 + 8);
    v26[1] = v6;
    v7 = *(a2 + 40);
    v8 = *(a2 + 56);
    v9 = *(a2 + 72);
    v27 = *(a2 + 88);
    v26[3] = v8;
    v26[4] = v9;
    v26[2] = v7;
    v14 = *(a2 + 40);
    v15 = *(a2 + 56);
    v16 = *(a2 + 72);
    v17 = *(a2 + 88);
    v12 = *(a2 + 8);
    v13 = *(a2 + 24);
    sub_1C5763FAC(v24, v30);
    sub_1C5763FAC(v26, v30);
    v10 = sub_1C575CE74();
    v28[2] = v14;
    v28[3] = v15;
    v28[4] = v16;
    v29 = v17;
    v28[0] = v12;
    v28[1] = v13;
    sub_1C5763FE4(v28);
    v30[2] = v20;
    v30[3] = v21;
    v30[4] = v22;
    v31 = v23;
    v30[0] = v18;
    v30[1] = v19;
    sub_1C5763FE4(v30);
  }

  else
  {
    v10 = 0;
  }

  return v10 & 1;
}

unint64_t sub_1C577A0D8()
{
  result = qword_1EC171290;
  if (!qword_1EC171290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC171290);
  }

  return result;
}

unint64_t sub_1C577A150(uint64_t a1)
{
  result = sub_1C577A178();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1C577A178()
{
  result = qword_1ED77E888;
  if (!qword_1ED77E888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED77E888);
  }

  return result;
}

unint64_t sub_1C577A1D0()
{
  result = qword_1ED77E880;
  if (!qword_1ED77E880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED77E880);
  }

  return result;
}

uint64_t sub_1C577A374(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 96))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1C577A3BC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 96) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 96) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void (*TransitLineItemActionManager.delegate.modify(uint64_t *a1))(uint64_t a1, char a2)
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
  v5 = OBJC_IVAR___MUTransitLineItemActionManager_delegate;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_1C56685B4;
}

uint64_t sub_1C577A4F8@<X0>(uint64_t *a3@<X8>)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  *a3 = result;
  return result;
}

void (*TransitLineItemActionManager.analyticsDelegate.modify(uint64_t *a1))(uint64_t a1, char a2)
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
  v5 = OBJC_IVAR___MUTransitLineItemActionManager_analyticsDelegate;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_1C566688C;
}

id TransitLineItemActionManager.__allocating_init(delegate:analyticsDelegate:)(uint64_t a1, uint64_t a2)
{
  v3 = objc_allocWithZone(v2);
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  v6.receiver = v3;
  v6.super_class = v2;
  v4 = objc_msgSendSuper2(&v6, sel_init);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v4;
}

id TransitLineItemActionManager.init(delegate:analyticsDelegate:)(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  v6.receiver = v2;
  v6.super_class = ObjectType;
  v4 = objc_msgSendSuper2(&v6, sel_init);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v4;
}

id TransitLineItemActionManager.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id TransitLineItemActionManager.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t TransitLineItemActionManager.createRowActions(with:)(uint64_t a1)
{
  v1 = MEMORY[0x1E69E7CC0];
  v5 = MEMORY[0x1E69E7CC0];
  if (_MKRAPIsAvailable())
  {
    v2 = [objc_opt_self() actionItemWithType_];
    [v2 setEnabled_];
    v3 = v2;
    MEMORY[0x1C6949DF0]();
    if (*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1C584F7A0();
    }

    sub_1C584F7E0();

    return v5;
  }

  return v1;
}

void TransitLineItemActionManager.performAction(_:options:completion:)(void *a1, uint64_t a2, void (*a3)(uint64_t), uint64_t a4)
{
  if (a1)
  {
    if (a2)
    {
      v8 = a1;
      v9 = sub_1C584F5C0();
    }

    else
    {
      v11 = a1;
      v9 = 0;
    }

    v12 = [objc_allocWithZone(MEMORY[0x1E696F2F8]) initWithOptions_];

    if (v12)
    {
      if ([v12 isQuickAction])
      {
        v13 = 30;
      }

      else
      {
        v13 = 201;
      }

      if ([a1 type] == 1)
      {
        swift_beginAccess();
        Strong = swift_unknownObjectWeakLoadStrong();
        if (Strong)
        {
          v15 = Strong;
          v16 = [v12 analyticsModuleMetadata];
          [v15 infoCardAnalyticsDidSelectAction:5013 target:v13 eventValue:0 moduleMetadata:v16 feedbackDelegateSelector:62 actionRichProviderId:0 classification:0];

          swift_unknownObjectRelease();
        }

        swift_beginAccess();
        v17 = swift_unknownObjectWeakLoadStrong();
        if (v17)
        {
          [v17 lineItemManager:v4 didSelectReportAProblemWithEnvironment:v12];
          swift_unknownObjectRelease();
        }
      }

      if (a3)
      {

        a3(v18);

        sub_1C5632FA8(a3, a4);
      }

      else
      {
      }
    }

    else
    {
      __break(1u);
    }
  }

  else if (a3)
  {

    a3(v10);

    sub_1C5632FA8(a3, a4);
  }
}

uint64_t _s6MapsUI28TransitLineItemActionManagerC19createFooterActionsSaySo011MKPlaceCardfE0CGSgyF_0(uint64_t a1)
{
  v1 = MEMORY[0x1E69E7CC0];
  v5 = MEMORY[0x1E69E7CC0];
  if (_MKRAPIsAvailable())
  {
    v2 = [objc_opt_self() actionItemWithType_];
    [v2 setEnabled_];
    v3 = v2;
    MEMORY[0x1C6949DF0]();
    if (*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1C584F7A0();
    }

    sub_1C584F7E0();

    return v5;
  }

  return v1;
}

unint64_t sub_1C577AFF8()
{
  result = qword_1EC1713D8;
  if (!qword_1EC1713D8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EC1713D8);
  }

  return result;
}

uint64_t LazyScrollableVStack.init(alignment:spacing:ignoresTopSafeArea:content:)@<X0>(uint64_t result@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>, double a6@<D0>)
{
  *a5 = result;
  *(a5 + 8) = a3;
  *(a5 + 16) = a4;
  *(a5 + 24) = a6;
  *(a5 + 32) = a2;
  return result;
}

double LazyScrollableVStack.body.getter@<D0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = *(v2 + 16);
  v18[0] = *v2;
  v18[1] = v5;
  v19 = *(v2 + 32);
  v6 = swift_allocObject();
  v7 = *(a1 + 24);
  *(v6 + 16) = *(a1 + 16);
  *(v6 + 24) = v7;
  v8 = *(v2 + 16);
  *(v6 + 32) = *v2;
  *(v6 + 48) = v8;
  *(v6 + 64) = *(v2 + 32);
  (*(*(a1 - 8) + 16))(v17, v18, a1);
  sub_1C584F400();
  sub_1C584F470();
  WitnessTable = swift_getWitnessTable();
  v16 = MEMORY[0x1E697E270];
  swift_getWitnessTable();
  sub_1C584F410();
  swift_getWitnessTable();
  v13 = sub_1C584F440();
  v14 = v9;
  v10 = sub_1C584F450();
  swift_getWitnessTable();
  v11 = *(*(v10 - 8) + 16);
  v11(v17, &v13, v10);

  v13 = v17[0];
  v14 = v17[1];
  v11(a2, &v13, v10);

  return result;
}

uint64_t sub_1C577B270@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v22 = a5;
  sub_1C584F400();
  sub_1C584F470();
  WitnessTable = swift_getWitnessTable();
  v28 = MEMORY[0x1E697E270];
  swift_getWitnessTable();
  v9 = sub_1C584F410();
  v10 = *(v9 - 8);
  v12 = MEMORY[0x1EEE9AC00](v9, v11);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v15);
  v17 = &v21 - v16;
  v23 = a3;
  v24 = a4;
  v25 = a2;
  v26 = a1;
  sub_1C584F4A0();
  sub_1C584F420();
  swift_getWitnessTable();
  v18 = *(v10 + 16);
  v18(v17, v14, v9);
  v19 = *(v10 + 8);
  v19(v14, v9);
  v18(v22, v17, v9);
  return (v19)(v17, v9);
}

uint64_t sub_1C577B4A4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v27[1] = a2;
  v27[2] = a4;
  v34 = a5;
  v6 = sub_1C584F490();
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v8 = sub_1C584F400();
  v33 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v8);
  v10 = v27 - v9;
  v28 = v11;
  v12 = sub_1C584F470();
  v30 = *(v12 - 8);
  v14 = MEMORY[0x1EEE9AC00](v12, v13);
  v31 = v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14, v16);
  v32 = v27 - v17;
  sub_1C577B7C8();
  v29 = v10;
  sub_1C584F3F0();
  if (a1[4])
  {
    sub_1C584F430();
  }

  v18 = v28;
  WitnessTable = swift_getWitnessTable();
  v20 = v31;
  v21 = v29;
  sub_1C584F4F0();
  (*(v33 + 8))(v21, v18);
  v35 = WitnessTable;
  v36 = MEMORY[0x1E697E270];
  swift_getWitnessTable();
  v22 = v30;
  v23 = *(v30 + 16);
  v24 = v32;
  v23(v32, v20, v12);
  v25 = *(v22 + 8);
  v25(v20, v12);
  v23(v34, v24, v12);
  return (v25)(v24, v12);
}

uint64_t sub_1C577B7C8()
{
  sub_1C584F490();
  sub_1C577B8C8();
  return sub_1C584FF00();
}

uint64_t sub_1C577B868(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

unint64_t sub_1C577B8C8()
{
  result = qword_1EC171440;
  if (!qword_1EC171440)
  {
    sub_1C584F490();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC171440);
  }

  return result;
}

id RealTimeEVChargerUtility.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id RealTimeEVChargerUtility.init()()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_init);
}

id RealTimeEVChargerUtility.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id _s6MapsUI24RealTimeEVChargerUtilityC10evPlugIcon13configurationSo7UIImageCSgSo0K13ConfigurationC_tFZ_0(uint64_t a1)
{
  v2 = sub_1C584F630();
  v3 = [objc_opt_self() systemImageNamed:v2 withConfiguration:a1];

  if (v3)
  {
    v4 = [v3 CGImage];
    if (v4)
    {
      v5 = v4;
      [v3 scale];
      v7 = [objc_allocWithZone(MEMORY[0x1E69DCAB8]) initWithCGImage:v5 scale:2 orientation:v6];

      v8 = [v7 imageWithRenderingMode_];
      return v8;
    }
  }

  return 0;
}

uint64_t _s6MapsUI24RealTimeEVChargerUtilityC03getcD11ChargerInfo6garage7chargerSo06MURealdE0CSo15VGVirtualGarageCSg_So24GEOEVChargerAvailabilityCtFZ_0(void *a1, id a2)
{
  if (a1)
  {
    v3 = [a1 vehicles];
    sub_1C5626E40(0, &qword_1EC16E320, 0x1E69DF8A0);
    v4 = sub_1C584F770();

    if (v4 >> 62)
    {
      while (2)
      {
        v5 = sub_1C584FB90();
        if (v5)
        {
LABEL_4:
          v19 = a2;
          v6 = 0;
          v20 = MEMORY[0x1E69E7CC0];
          a2 = &unk_1F44C8A78;
          do
          {
            if ((v4 & 0xC000000000000001) != 0)
            {
              v7 = MEMORY[0x1C694A320](v6, v4);
            }

            else
            {
              if (v6 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_23;
              }

              v7 = *(v4 + 32 + 8 * v6);
            }

            v8 = v7;
            if (__OFADD__(v6++, 1))
            {
              goto LABEL_22;
            }

            v10 = 0x20u;
            do
            {
              v11 = *(&unk_1F44C8A78 + v10);
              if ((v11 & ~[v8 supportedConnectors]) == 0)
              {
                GEOEvChargingConnectorTypeFromVGConnectorType();
                sub_1C584FE70();
                MEMORY[0x1C6949DF0]();
                if (*((v20 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v20 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                {
                  sub_1C584F7A0();
                }

                sub_1C584F7E0();
              }

              v10 += 8;
            }

            while (v10 != 104);
          }

          while (v6 != v5);

          sub_1C5626E40(0, &qword_1EC16E148, 0x1E696AD98);
          v12 = sub_1C584F750();
          a2 = v19;
          v4 = [v19 aggregatedTotalCount_];

          if (v4 >= 1)
          {
            v13 = sub_1C584F750();

            v14 = [v19 aggregatedAvailableCount_];

            v15 = [v19 _realTimePlugAvailabilityStatus];
            goto LABEL_29;
          }

          result = [v19 availableEVChargers];
          if ((result & 0x8000000000000000) == 0)
          {
            v14 = result;
            result = [v19 totalEVChargers];
            if ((result & 0x8000000000000000) == 0)
            {
              goto LABEL_28;
            }

            __break(1u);
LABEL_22:
            __break(1u);
LABEL_23:
            __break(1u);
            continue;
          }

          goto LABEL_34;
        }

        break;
      }
    }

    else
    {
      v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v5)
      {
        goto LABEL_4;
      }
    }
  }

  result = [a2 availableEVChargers];
  if (result < 0)
  {
    __break(1u);
    goto LABEL_33;
  }

  v14 = result;
  result = [a2 totalEVChargers];
  if (result < 0)
  {
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
    return result;
  }

LABEL_28:
  v4 = result;
  v15 = [a2 _availabilityStatus];
LABEL_29:
  v17 = v15;
  v18 = objc_allocWithZone(MURealTimeEVCharger);

  return [v18 initWithAvailable:v14 total:v4 status:v17];
}

uint64_t sub_1C577BF34()
{
  sub_1C584FEA0();
  if (swift_unknownObjectWeakLoadStrong())
  {
    MEMORY[0x1C694A560]();
    swift_unknownObjectRelease();
  }

  return sub_1C584FEF0();
}

uint64_t sub_1C577BF8C()
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    MEMORY[0x1C694A560]();

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1C577BFE4(uint64_t a1)
{
  sub_1C584FEA0();
  if (swift_unknownObjectWeakLoadStrong())
  {
    MEMORY[0x1C694A560]();
    swift_unknownObjectRelease();
  }

  return sub_1C584FEF0();
}

unint64_t sub_1C577C03C()
{
  result = qword_1EC171450;
  if (!qword_1EC171450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC171450);
  }

  return result;
}

unint64_t sub_1C577C094()
{
  result = qword_1ED77E8A8;
  if (!qword_1ED77E8A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED77E8A8);
  }

  return result;
}

uint64_t sub_1C577C0F8(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1C577C118(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 8) = v3;
  return result;
}

id sub_1C577C150(void *a1)
{
  result = [a1 name];
  if (result)
  {
    v2 = result;
    v3 = sub_1C584F660();

    return v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1C577C1AC(void *a1)
{
  v2 = [a1 labelItems];
  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  result = [a1 labelItems];
  if (result)
  {
    v4 = result;
    v5 = sub_1C584F770();

    return v5;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1C577C240(uint64_t a1)
{
  objc_opt_self();
  v1 = swift_dynamicCastObjCClass();
  if (!v1)
  {
    goto LABEL_7;
  }

  v2 = v1;
  swift_unknownObjectRetain();
  v3 = [v2 identifier];
  v4 = sub_1C584F660();
  v6 = v5;

  v7 = HIBYTE(v6) & 0xF;
  if ((v6 & 0x2000000000000000) == 0)
  {
    v7 = v4 & 0xFFFFFFFFFFFFLL;
  }

  if (!v7)
  {
    swift_unknownObjectRelease();
LABEL_7:
    v13 = 0;
    v12 = 0xE000000000000000;
    goto LABEL_8;
  }

  v8 = [v2 identifier];
  v9 = sub_1C584F660();
  v11 = v10;

  MEMORY[0x1C6949D90](v9, v11);

  MEMORY[0x1C6949D90](39, 0xE100000000000000);
  swift_unknownObjectRelease();
  v13 = 39;
  v12 = 0xE100000000000000;
LABEL_8:
  MEMORY[0x1C6949D90](60, 0xE100000000000000);
  swift_getObjectType();
  swift_getMetatypeMetadata();
  v14 = sub_1C584F680();
  MEMORY[0x1C6949D90](v14);

  MEMORY[0x1C6949D90](8250, 0xE200000000000000);
  sub_1C584FCF0();
  MEMORY[0x1C6949D90](62, 0xE100000000000000);
  MEMORY[0x1C6949D90](v13, v12);

  return 0;
}

uint64_t sub_1C577C44C()
{
  if (!swift_unknownObjectWeakLoadStrong())
  {
    return 0x296C6C756E28;
  }

  ObjectType = swift_getObjectType();
  v1 = sub_1C577C240(ObjectType);
  swift_unknownObjectRelease();
  return v1;
}

uint64_t sub_1C577C4B8()
{
  sub_1C5625EE8(v0, &v18);
  v18 = sub_1C584F6A0();
  v19 = v1;
  MEMORY[0x1C6949D90](46, 0xE100000000000000);
  v15 = *(v0 + 24);
  type metadata accessor for Attribute(0);
  v2 = sub_1C584F6A0();
  MEMORY[0x1C6949D90](v2);

  v20 = v18;
  v21 = v19;
  MEMORY[0x1C6949D90](32, 0xE100000000000000);
  v18 = *(v0 + 32);
  type metadata accessor for Relation(0);
  v3 = sub_1C584F6A0();
  MEMORY[0x1C6949D90](v3);

  sub_1C5626108(v0 + 40, &v15);
  if (v17 == 255)
  {
    sub_1C571D770(&v15);
    v18 = 32;
    v19 = 0xE100000000000000;
    v8 = sub_1C584F8B0();
    MEMORY[0x1C6949D90](v8);

    MEMORY[0x1C6949D90](v18, v19);

    v9 = *(v0 + 104);
    if (!v9)
    {
      goto LABEL_16;
    }

    goto LABEL_12;
  }

  sub_1C56251C8(&v15, &v18);
  if (*(v0 + 72) != 1.0)
  {
    v15 = 32;
    v16 = 0xE100000000000000;
    v4 = sub_1C584F8B0();
    MEMORY[0x1C6949D90](v4);

    MEMORY[0x1C6949D90](10784, 0xE200000000000000);
    MEMORY[0x1C6949D90](v15, v16);
  }

  sub_1C5625EE8(&v18, &v15);
  v5 = sub_1C584F6A0();
  MEMORY[0x1C6949D90](v5);

  MEMORY[0x1C6949D90](46, 0xE100000000000000);
  v15 = *(v0 + 64);
  v6 = sub_1C584F6A0();
  MEMORY[0x1C6949D90](v6);

  MEMORY[0x1C6949D90](32, 0xE100000000000000);

  v7 = *(v0 + 80);
  if (v7 <= 0.0)
  {
    if (v7 >= 0.0)
    {
      goto LABEL_11;
    }

    v15 = 2108704;
    v16 = 0xE300000000000000;
  }

  else
  {
    v15 = 2108192;
    v16 = 0xE300000000000000;
  }

  v10 = sub_1C584F8B0();
  MEMORY[0x1C6949D90](v10);

  MEMORY[0x1C6949D90](v15, v16);

LABEL_11:
  sub_1C5626250(&v18);
  v9 = *(v0 + 104);
  if (!v9)
  {
    goto LABEL_16;
  }

LABEL_12:
  v11 = HIBYTE(v9) & 0xF;
  if ((v9 & 0x2000000000000000) == 0)
  {
    v11 = *(v0 + 96) & 0xFFFFFFFFFFFFLL;
  }

  if (v11)
  {
    v18 = 10016;
    v19 = 0xE200000000000000;
    MEMORY[0x1C6949D90]();
    MEMORY[0x1C6949D90](39, 0xE100000000000000);
    MEMORY[0x1C6949D90](v18, v19);
  }

LABEL_16:
  type metadata accessor for UILayoutPriority(0);
  v12 = *(v0 + 88);
  *&v18 = v12;
  LODWORD(v15) = 1148846080;
  sub_1C5625AB0(&qword_1ED77E830, MEMORY[0x1E69DC400]);
  result = sub_1C584F2D0();
  if ((result & 1) == 0)
  {
    return v20;
  }

  v18 = 2113568;
  v19 = 0xE300000000000000;
  if ((LODWORD(v12) & 0x7FFFFFFFu) > 0x7F7FFFFF)
  {
    __break(1u);
    goto LABEL_23;
  }

  if (v12 <= -9.2234e18)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (v12 < 9.2234e18)
  {
    v15 = v12;
    v14 = sub_1C584FD90();
    MEMORY[0x1C6949D90](v14);

    MEMORY[0x1C6949D90](v18, v19);

    return v20;
  }

LABEL_24:
  __break(1u);
  return result;
}

uint64_t sub_1C577C8C8()
{
  sub_1C5625EE8(v0, v5);
  if (v6)
  {
    v4[0] = v5[0];
    v4[1] = v5[1];
    return sub_1C584F6A0();
  }

  else
  {
    sub_1C5626058(v5, v4);
    sub_1C56250A4(v4, &v3);
    v2 = sub_1C584F6A0();
    sub_1C56260B4(v4);
    return v2;
  }
}

uint64_t NSLayoutRelation.debugDescription.getter(uint64_t a1)
{
  v1 = 15678;
  v2 = 63;
  if (!a1)
  {
    v2 = 61;
  }

  if (a1 != 1)
  {
    v1 = v2;
  }

  if (a1 == -1)
  {
    return 15676;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_1C577CC08()
{
  v1 = *v0;
  v2 = 15678;
  v3 = 63;
  if (!*v0)
  {
    v3 = 61;
  }

  if (v1 != 1)
  {
    v2 = v3;
  }

  if (v1 == -1)
  {
    return 15676;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_1C577CC74()
{
  result = sub_1C577EDD0(MEMORY[0x1E69E7CC0]);
  qword_1EC18F518 = result;
  return result;
}

void sub_1C577CC9C(uint64_t a1)
{
  if ([v1 isTesting])
  {
    v3 = [objc_opt_self() defaultCenter];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1714C0, &unk_1C5879D98);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1C5867900;
    sub_1C584FBF0();
    *(inited + 96) = MEMORY[0x1E69E6530];
    *(inited + 72) = a1;
    sub_1C5748DE0(inited);
    swift_setDeallocating();
    sub_1C5625230(inited + 32, &qword_1EC170B98, &unk_1C5878630);
    v5 = sub_1C584F5C0();

    [v3 postNotificationName:@"MUWebBasedPlacecardContentLoadNotification" object:v1 userInfo:v5];
  }
}

void sub_1C577CF90(uint64_t a1)
{
  v2 = sub_1C584E7C0();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1C584F2C0();
  v8 = *(v7 - 1);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC170AC0, &qword_1C5878418);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v15 = &v43 - v14;
  v16 = sub_1C584E7B0();
  if (!v16)
  {
    goto LABEL_15;
  }

  sub_1C577D5DC(v16);
  v18 = v17;

  if (!v18)
  {
    goto LABEL_15;
  }

  if (!*(v18 + 16))
  {
    goto LABEL_14;
  }

  v19 = sub_1C5645D34(0x746E657665, 0xE500000000000000);
  if ((v20 & 1) == 0)
  {
    goto LABEL_14;
  }

  sub_1C56465F8(*(v18 + 56) + 32 * v19, aBlock);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_14;
  }

  if (!*(v18 + 16))
  {
    goto LABEL_14;
  }

  v45 = v51;
  v21 = sub_1C5645D34(0x656D614E74736574, 0xE800000000000000);
  if ((v22 & 1) == 0)
  {
    goto LABEL_14;
  }

  sub_1C56465F8(*(v18 + 56) + 32 * v21, aBlock);

  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_15;
  }

  v43 = v51;
  v44 = v52;
  sub_1C584E7A0();
  if (!v48)
  {

    sub_1C5625230(aBlock, &qword_1EC16E790, &unk_1C586A110);
LABEL_15:
    v30 = sub_1C5726A3C();
    (*(v8 + 16))(v11, v30, v7);
    (*(v3 + 16))(v6, a1, v2);
    v31 = sub_1C584F2A0();
    v32 = sub_1C584F9B0();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = v6;
      v35 = v8;
      v36 = swift_slowAlloc();
      aBlock[0] = v36;
      *v33 = 136315138;
      sub_1C577EFBC();
      v37 = sub_1C584FD90();
      v45 = v11;
      v46 = v7;
      v38 = v37;
      v40 = v39;
      (*(v3 + 8))(v34, v2);
      v41 = sub_1C5649518(v38, v40, aBlock);

      *(v33 + 4) = v41;
      _os_log_impl(&dword_1C5620000, v31, v32, "Failed to parse the object from notification:%s", v33, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v36);
      MEMORY[0x1C694B7A0](v36, -1, -1);
      MEMORY[0x1C694B7A0](v33, -1, -1);

      (*(v35 + 8))(v45, v46);
    }

    else
    {

      (*(v3 + 8))(v6, v2);
      (*(v8 + 8))(v11, v7);
    }

    return;
  }

  v23 = v44;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC171538, &qword_1C5879DA8);
  if (!swift_dynamicCast())
  {
LABEL_14:

    goto LABEL_15;
  }

  v24 = v51;
  if (v45 == 1)
  {
    [v46 fetchWebScrollFPSWithCompletion_];
    if (qword_1EC18F510 != -1)
    {
      swift_once();
    }

    sub_1C584EB20();
    v42 = sub_1C584EB30();
    (*(*(v42 - 8) + 56))(v15, 0, 1, v42);
    swift_beginAccess();
    sub_1C577D8B8(v15, v43, v23);
    swift_endAccess();
  }

  else
  {
    if (v45 == 2)
    {
      v25 = swift_allocObject();
      v26 = v46;
      v27 = v43;
      v25[2] = v46;
      v25[3] = v27;
      v25[4] = v23;
      v25[5] = v24;
      v49 = sub_1C577F014;
      v50 = v25;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1C577DA90;
      v48 = &block_descriptor_15;
      v28 = _Block_copy(aBlock);
      v29 = v26;
      swift_unknownObjectRetain();

      [v29 fetchWebScrollFPSWithCompletion_];
      swift_unknownObjectRelease();
      _Block_release(v28);
      return;
    }
  }

  swift_unknownObjectRelease();
}

void sub_1C577D5DC(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC171540, &qword_1C5868548);
    v2 = sub_1C584FD50();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

  do
  {
LABEL_10:
    v10 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      __break(1u);
LABEL_22:
      __break(1u);
LABEL_23:
      __break(1u);
      return;
    }

    if (v10 >= v6)
    {

      return;
    }

    v5 = *(a1 + 64 + 8 * v10);
    ++v7;
  }

  while (!v5);
  while (1)
  {
    v11 = __clz(__rbit64(v5)) | (v10 << 6);
    sub_1C57492F4(*(a1 + 48) + 40 * v11, v27);
    sub_1C56465F8(*(a1 + 56) + 32 * v11, v28 + 8);
    v25[0] = v28[0];
    v25[1] = v28[1];
    v26 = v29;
    v24[0] = v27[0];
    v24[1] = v27[1];
    sub_1C57492F4(v24, v19);
    if (!swift_dynamicCast())
    {
      break;
    }

    v5 &= v5 - 1;
    sub_1C56465F8(v25 + 8, v20);
    sub_1C5625230(v24, &qword_1EC171560, &unk_1C5879DC0);
    v21 = v18;
    sub_1C563D304(v20, v22);
    v12 = v21;
    sub_1C563D304(v22, v23);
    sub_1C563D304(v23, &v21);
    v13 = sub_1C5645D34(v12, *(&v12 + 1));
    if (v14)
    {
      *(v2[6] + 16 * v13) = v12;
      v8 = v13;

      v9 = (v2[7] + 32 * v8);
      __swift_destroy_boxed_opaque_existential_1(v9);
      sub_1C563D304(&v21, v9);
      v7 = v10;
      if (!v5)
      {
        goto LABEL_10;
      }
    }

    else
    {
      if (v2[2] >= v2[3])
      {
        goto LABEL_22;
      }

      *(v2 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v13;
      *(v2[6] + 16 * v13) = v12;
      sub_1C563D304(&v21, (v2[7] + 32 * v13));
      v15 = v2[2];
      v16 = __OFADD__(v15, 1);
      v17 = v15 + 1;
      if (v16)
      {
        goto LABEL_23;
      }

      v2[2] = v17;
      v7 = v10;
      if (!v5)
      {
        goto LABEL_10;
      }
    }

LABEL_9:
    v10 = v7;
  }

  sub_1C5625230(v24, &qword_1EC171560, &unk_1C5879DC0);
}

void sub_1C577D8B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC170AC0, &qword_1C5878418);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v10 = &v17 - v9;
  v11 = sub_1C584EB30();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v13);
  v15 = &v17 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v12 + 48))(a1, 1, v11) == 1)
  {
    sub_1C5625230(a1, &unk_1EC170AC0, &qword_1C5878418);
    sub_1C577E244(a2, a3, v10);

    sub_1C5625230(v10, &unk_1EC170AC0, &qword_1C5878418);
  }

  else
  {
    (*(v12 + 32))(v15, a1, v11);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;
    sub_1C577E920(v15, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v18;
  }
}

double sub_1C577DA90(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = sub_1C584F770();

  v2(v3);

  return result;
}

uint64_t sub_1C577DBE8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WebPlacecardBridgeReply.MUWebMethodArguments(0);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for WebPlacecardBridgeReply.MUPerfMarkers(0);
  v10 = MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v13);
  v15 = &v22 - v14;
  v16 = type metadata accessor for WebPlacecardBridgeReply.MUNativeWebCall(0);
  MEMORY[0x1EEE9AC00](v16 - 8, v17);
  v19 = &v22 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C569789C(v19);
  sub_1C569A8D8(12);
  sub_1C569BF54(v15);
  sub_1C569CA6C(1);
  sub_1C577F144(v15, v12);
  sub_1C569A908(v7);
  sub_1C569BF70(v12);
  sub_1C569AAB0(v7);
  v20 = swift_allocObject();
  *(v20 + 16) = a1;
  *(v20 + 24) = a2;
  sub_1C5633060(a1, a2);
  sub_1C572FEB0(v19, sub_1C577F1A8, v20);

  sub_1C577F940(v15, type metadata accessor for WebPlacecardBridgeReply.MUPerfMarkers);
  return sub_1C577F940(v19, type metadata accessor for WebPlacecardBridgeReply.MUNativeWebCall);
}

uint64_t sub_1C577DDFC(uint64_t a1, double (*a2)(void), uint64_t a3)
{
  v23[1] = a3;
  v5 = type metadata accessor for WebBridgeReply.MUWebBridgeReplyResult(0);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for WebBridgeReply.MUPerfMarkerResult(0);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = (v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC16E6E0, &qword_1C586A108);
  MEMORY[0x1EEE9AC00](v13 - 8, v14);
  v16 = v23 - v15;
  v17 = type metadata accessor for WebBridgeReply(0);
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17, v19);
  v21 = v23 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C56466CC(a1, v16, &unk_1EC16E6E0, &qword_1C586A108);
  if ((*(v18 + 48))(v16, 1, v17) == 1)
  {
    result = sub_1C5625230(v16, &unk_1EC16E6E0, &qword_1C586A108);
    if (!a2)
    {
      return result;
    }

    return (a2)(MEMORY[0x1E69E7CC0]);
  }

  sub_1C577F8DC(v16, v21);
  if (!sub_1C569CC84())
  {
    result = sub_1C577F940(v21, type metadata accessor for WebBridgeReply);
    if (!a2)
    {
      return result;
    }

    return (a2)(MEMORY[0x1E69E7CC0]);
  }

  sub_1C569CAEC(v8);
  sub_1C569CCC0(v12);
  sub_1C577F940(v8, type metadata accessor for WebBridgeReply.MUWebBridgeReplyResult);
  if (a2)
  {
    a2(*v12);
  }

  sub_1C577F940(v21, type metadata accessor for WebBridgeReply);
  return sub_1C577F940(v12, type metadata accessor for WebBridgeReply.MUPerfMarkerResult);
}

uint64_t sub_1C577E244@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = sub_1C5645D34(a1, a2);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v20 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1C577EB50();
      v10 = v20;
    }

    v11 = *(v10 + 56);
    v12 = sub_1C584EB30();
    v19 = *(v12 - 8);
    (*(v19 + 32))(a3, v11 + *(v19 + 72) * v8, v12);
    sub_1C577E734(v8, v10);
    *v4 = v10;
    v13 = *(v19 + 56);
    v14 = a3;
    v15 = 0;
    v16 = v12;
  }

  else
  {
    v17 = sub_1C584EB30();
    v13 = *(*(v17 - 8) + 56);
    v16 = v17;
    v14 = a3;
    v15 = 1;
  }

  return v13(v14, v15, 1, v16);
}

void sub_1C577E3B4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v47 = sub_1C584EB30();
  v5 = *(v47 - 8);
  MEMORY[0x1EEE9AC00](v47, v6);
  v46 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC171548, &qword_1C5879DB0);
  v44 = v4;
  v9 = sub_1C584FD40();
  v10 = v9;
  if (*(v8 + 16))
  {
    v11 = 0;
    v12 = (v8 + 64);
    v13 = 1 << *(v8 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v8 + 64);
    v16 = (v13 + 63) >> 6;
    v40 = v2;
    v41 = (v5 + 16);
    v42 = v8;
    v43 = v5;
    v45 = (v5 + 32);
    v17 = v9 + 64;
    while (v15)
    {
      v20 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_15:
      v23 = v20 | (v11 << 6);
      v24 = *(v8 + 56);
      v25 = (*(v8 + 48) + 16 * v23);
      v27 = *v25;
      v26 = v25[1];
      v28 = *(v43 + 72);
      v29 = v24 + v28 * v23;
      if (v44)
      {
        (*v45)(v46, v29, v47);
      }

      else
      {
        (*v41)(v46, v29, v47);
      }

      sub_1C584FEA0();
      sub_1C584F6C0();
      v30 = sub_1C584FEF0();
      v31 = -1 << *(v10 + 32);
      v32 = v30 & ~v31;
      v33 = v32 >> 6;
      if (((-1 << v32) & ~*(v17 + 8 * (v32 >> 6))) == 0)
      {
        v34 = 0;
        v35 = (63 - v31) >> 6;
        while (++v33 != v35 || (v34 & 1) == 0)
        {
          v36 = v33 == v35;
          if (v33 == v35)
          {
            v33 = 0;
          }

          v34 |= v36;
          v37 = *(v17 + 8 * v33);
          if (v37 != -1)
          {
            v18 = __clz(__rbit64(~v37)) + (v33 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v18 = __clz(__rbit64((-1 << v32) & ~*(v17 + 8 * (v32 >> 6)))) | v32 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      v19 = (*(v10 + 48) + 16 * v18);
      *v19 = v27;
      v19[1] = v26;
      (*v45)((*(v10 + 56) + v28 * v18), v46, v47);
      ++*(v10 + 16);
      v8 = v42;
    }

    v21 = v11;
    while (1)
    {
      v11 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v11 >= v16)
      {
        break;
      }

      v22 = v12[v11];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v15 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v44 & 1) == 0)
    {

      v3 = v40;
      goto LABEL_34;
    }

    v38 = 1 << *(v8 + 32);
    v3 = v40;
    if (v38 >= 64)
    {
      bzero(v12, ((v38 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v38;
    }

    *(v8 + 16) = 0;
  }

LABEL_34:
  *v3 = v10;
}

void sub_1C577E734(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1C584FB60() + 1) & ~v5;
    while (1)
    {
      sub_1C584FEA0();

      sub_1C584F6C0();
      v9 = sub_1C584FEF0();

      v10 = v9 & v7;
      if (v3 >= v8)
      {
        break;
      }

      if (v10 < v8)
      {
        goto LABEL_10;
      }

LABEL_11:
      v11 = *(a2 + 48);
      v12 = (v11 + 16 * v3);
      v13 = (v11 + 16 * v6);
      if (v3 != v6 || v12 >= v13 + 1)
      {
        *v12 = *v13;
      }

      v14 = *(a2 + 56);
      v15 = *(*(sub_1C584EB30() - 8) + 72);
      v16 = v15 * v3;
      v17 = v14 + v15 * v3;
      v18 = v15 * v6;
      v19 = v14 + v15 * v6 + v15;
      if (v16 < v18 || v17 >= v19)
      {
        swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v16 == v18)
        {
          goto LABEL_5;
        }

        swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
      if (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    if (v10 < v8)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v3 < v10)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_20:
  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }
}

void sub_1C577E920(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v12 = sub_1C5645D34(a2, a3);
  v13 = v10[2];
  v14 = (v11 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_17;
  }

  v16 = v11;
  v17 = v10[3];
  if (v17 < v15 || (a4 & 1) == 0)
  {
    if (v17 >= v15 && (a4 & 1) == 0)
    {
      sub_1C577EB50();
      goto LABEL_7;
    }

    sub_1C577E3B4(v15, a4 & 1);
    v25 = sub_1C5645D34(a2, a3);
    if ((v16 & 1) == (v26 & 1))
    {
      v12 = v25;
      v18 = *v5;
      if (v16)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

LABEL_17:
    sub_1C584FE00();
    __break(1u);
    return;
  }

LABEL_7:
  v18 = *v5;
  if (v16)
  {
LABEL_8:
    v19 = v18[7];
    v20 = sub_1C584EB30();
    v21 = *(v20 - 8);
    v22 = *(v21 + 40);
    v23 = v20;
    v24 = v19 + *(v21 + 72) * v12;

    v22(v24, a1, v23);
    return;
  }

LABEL_13:
  sub_1C577EAA0(v12, a2, a3, a1, v18);
}

uint64_t sub_1C577EAA0(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v8 = (a5[6] + 16 * a1);
  *v8 = a2;
  v8[1] = a3;
  v9 = a5[7];
  v10 = sub_1C584EB30();
  result = (*(*(v10 - 8) + 32))(v9 + *(*(v10 - 8) + 72) * a1, a4, v10);
  v12 = a5[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v14;
  }

  return result;
}

void sub_1C577EB50()
{
  v1 = v0;
  v36 = sub_1C584EB30();
  v38 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36, v2);
  v35 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC171548, &qword_1C5879DB0);
  v4 = *v0;
  v5 = sub_1C584FD30();
  v6 = v5;
  if (*(v4 + 16))
  {
    v7 = (v5 + 64);
    v8 = (v4 + 64);
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    v31 = v1;
    v32 = v4 + 64;
    if (v6 != v4 || v7 >= &v8[8 * v9])
    {
      memmove(v7, v8, 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v37 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v4 + 64);
    v15 = (v12 + 63) >> 6;
    v33 = v38 + 32;
    v34 = v38 + 16;
    if (v14)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v39 = (v14 - 1) & v14;
LABEL_14:
        v19 = v16 | (v10 << 6);
        v20 = 16 * v19;
        v21 = (*(v4 + 48) + 16 * v19);
        v22 = *v21;
        v23 = v21[1];
        v24 = v38;
        v25 = *(v38 + 72) * v19;
        v26 = v35;
        v27 = v36;
        (*(v38 + 16))(v35, *(v4 + 56) + v25, v36);
        v28 = v37;
        v29 = (*(v37 + 48) + v20);
        *v29 = v22;
        v29[1] = v23;
        (*(v24 + 32))(*(v28 + 56) + v25, v26, v27);

        v14 = v39;
      }

      while (v39);
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

        v1 = v31;
        v6 = v37;
        goto LABEL_18;
      }

      v18 = *(v32 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v39 = (v18 - 1) & v18;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }
}

unint64_t sub_1C577EDD0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC171550, &qword_1C5879DB8);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = (&v23 - v5);
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC171548, &qword_1C5879DB0);
    v8 = sub_1C584FD50();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_1C56466CC(v10, v6, &unk_1EC171550, &qword_1C5879DB8);
      v12 = *v6;
      v13 = v6[1];
      result = sub_1C5645D34(*v6, v13);
      if (v15)
      {
        break;
      }

      v16 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v17 = (v8[6] + 16 * result);
      *v17 = v12;
      v17[1] = v13;
      v18 = v8[7];
      v19 = sub_1C584EB30();
      result = (*(*(v19 - 8) + 32))(v18 + *(*(v19 - 8) + 72) * v16, v6 + v9, v19);
      v20 = v8[2];
      v21 = __OFADD__(v20, 1);
      v22 = v20 + 1;
      if (v21)
      {
        goto LABEL_10;
      }

      v8[2] = v22;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1C577EFBC()
{
  result = qword_1EC1714C8;
  if (!qword_1EC1714C8)
  {
    sub_1C584E7C0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1714C8);
  }

  return result;
}

void sub_1C577F014(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 40);
  v4 = sub_1C584F750();
  v5 = sub_1C584F630();
  v6 = [v2 generateReportWithResult:v4 testName:v5];

  v7 = sub_1C584F5D0();
  sub_1C5644230(v7);

  v8 = sub_1C584F5C0();

  [v3 addWebPlacecardMetrics_];
}

double block_copy_helper_16(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_1C577F144(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WebPlacecardBridgeReply.MUPerfMarkers(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1C577F1B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC170AC0, &qword_1C5878418);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = &v66 - v8;
  v71 = sub_1C584EB30();
  v10 = *(v71 - 8);
  v12 = MEMORY[0x1EEE9AC00](v71, v11);
  v14 = &v66 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v12, v15);
  v18 = &v66 - v17;
  MEMORY[0x1EEE9AC00](v16, v19);
  v21 = &v66 - v20;
  result = sub_1C564647C(MEMORY[0x1E69E7CC0]);
  v23 = *(a1 + 16);
  if (v23)
  {
    v69 = v21;
    v70 = result;
    if (qword_1EC18F510 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v24 = qword_1EC18F518;
    if (!*(qword_1EC18F518 + 16) || (v25 = sub_1C5645D34(a2, a3), (v26 & 1) == 0))
    {
      swift_endAccess();
      return v70;
    }

    v27 = *(v24 + 56) + *(v10 + 72) * v25;
    v28 = *(v10 + 16);
    v67 = v23;
    v29 = v71;
    v28(v18, v27, v71);
    (*(v10 + 32))(v69, v18, v29);
    swift_endAccess();
    swift_beginAccess();
    v68 = a2;
    sub_1C577E244(a2, a3, v9);
    swift_endAccess();
    sub_1C5625230(v9, &unk_1EC170AC0, &qword_1C5878418);
    sub_1C584EB20();
    sub_1C584EAF0();
    v31 = v30;
    v32 = *(v10 + 8);
    v33 = v29;
    v34 = v67;
    v32(v14, v33);
    v66 = v10 + 8;
    if (v34 >= 8)
    {
      v35 = v34 & 0x7FFFFFFFFFFFFFF8;
      v39 = a1 + 48;
      v36 = 0.0;
      v40 = v34 & 0x7FFFFFFFFFFFFFF8;
      do
      {
        v36 = (((((((v36 + COERCE_FLOAT(*(v39 - 16))) + COERCE_FLOAT(HIDWORD(*(v39 - 16)))) + COERCE_FLOAT(*(v39 - 8))) + COERCE_FLOAT(HIDWORD(*(v39 - 16)))) + COERCE_FLOAT(*v39)) + COERCE_FLOAT(HIDWORD(*v39))) + COERCE_FLOAT(*(v39 + 8))) + COERCE_FLOAT(HIDWORD(*v39));
        v39 += 32;
        v40 -= 8;
      }

      while (v40);
      v37 = a3;
      v38 = v68;
      if (v34 == v35)
      {
        goto LABEL_14;
      }
    }

    else
    {
      v35 = 0;
      v36 = 0.0;
      v37 = a3;
      v38 = v68;
    }

    v41 = v34 - v35;
    v42 = (a1 + 4 * v35 + 32);
    do
    {
      v43 = *v42++;
      v36 = v36 + v43;
      --v41;
    }

    while (v41);
LABEL_14:
    v44 = (v34 / v36) * 1000.0;
    *&v74 = 977489990;
    *(&v74 + 1) = 0xE400000000000000;
    MEMORY[0x1C6949D90](v38, v37);
    v45 = v74;

    MEMORY[0x1C6949D90](0xD000000000000010, 0x80000001C589C990);
    v46 = v74;
    v75 = MEMORY[0x1E69E6448];
    *&v74 = v44;
    sub_1C563D304(&v74, v73);
    v47 = v70;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v72 = v47;
    sub_1C564611C(v73, v46, *(&v46 + 1), isUniquelyReferenced_nonNull_native);

    v49 = v72;
    v74 = v45;

    MEMORY[0x1C6949D90](0xD000000000000015, 0x80000001C589C9B0);
    v50 = MEMORY[0x1E69E6158];
    v51 = v74;
    v75 = MEMORY[0x1E69E6158];
    *&v74 = 7565414;
    *(&v74 + 1) = 0xE300000000000000;
    sub_1C563D304(&v74, v73);
    v52 = swift_isUniquelyReferenced_nonNull_native();
    v72 = v49;
    sub_1C564611C(v73, v51, *(&v51 + 1), v52);

    v53 = v72;
    v74 = v45;

    MEMORY[0x1C6949D90](0xD000000000000016, 0x80000001C589C9D0);
    v54 = v74;
    v75 = MEMORY[0x1E69E6530];
    *&v74 = v34;
    sub_1C563D304(&v74, v73);
    v55 = swift_isUniquelyReferenced_nonNull_native();
    v72 = v53;
    sub_1C564611C(v73, v54, *(&v54 + 1), v55);

    v56 = v72;
    v74 = v45;

    MEMORY[0x1C6949D90](0xD00000000000001BLL, 0x80000001C589C9F0);
    v57 = v74;
    v75 = v50;
    *&v74 = 0;
    *(&v74 + 1) = 0xE000000000000000;
    sub_1C563D304(&v74, v73);
    v58 = swift_isUniquelyReferenced_nonNull_native();
    v72 = v56;
    sub_1C564611C(v73, v57, *(&v57 + 1), v58);

    v59 = v72;
    v74 = v45;

    MEMORY[0x1C6949D90](0xD000000000000026, 0x80000001C589CA10);
    v60 = v74;
    v61 = v31;
    v75 = MEMORY[0x1E69E6448];
    *&v74 = v34 / v61;
    sub_1C563D304(&v74, v73);
    v62 = swift_isUniquelyReferenced_nonNull_native();
    v72 = v59;
    sub_1C564611C(v73, v60, *(&v60 + 1), v62);

    v63 = v72;
    v74 = v45;

    MEMORY[0x1C6949D90](0xD00000000000002BLL, 0x80000001C589CA40);

    v64 = v74;
    v75 = v50;
    *&v74 = 7565414;
    *(&v74 + 1) = 0xE300000000000000;
    sub_1C563D304(&v74, v73);
    v65 = swift_isUniquelyReferenced_nonNull_native();
    v72 = v63;
    sub_1C564611C(v73, v64, *(&v64 + 1), v65);

    v32(v69, v71);
    return v72;
  }

  return result;
}

void sub_1C577F87C(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = sub_1C584F750();
  (*(v2 + 16))(v2, v3);
}

uint64_t sub_1C577F8DC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WebBridgeReply(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C577F940(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1C5780D3C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id MUGetMUPlaceExternalActionMenuHelperLog()
{
  if (MUGetMUPlaceExternalActionMenuHelperLog_onceToken != -1)
  {
    dispatch_once(&MUGetMUPlaceExternalActionMenuHelperLog_onceToken, &__block_literal_global_52);
  }

  v1 = MUGetMUPlaceExternalActionMenuHelperLog_log;

  return v1;
}

uint64_t __MUGetMUPlaceExternalActionMenuHelperLog_block_invoke()
{
  v0 = os_log_create("com.apple.MapsUI", "MUPlaceExternalActionMenuHelper");
  v1 = MUGetMUPlaceExternalActionMenuHelperLog_log;
  MUGetMUPlaceExternalActionMenuHelperLog_log = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

void sub_1C5781758(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 56));
  objc_destroyWeak((v2 + 48));
  objc_destroyWeak((v3 - 104));
  _Unwind_Resume(a1);
}

void sub_1C5781EB4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1C5783200(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id _MULocalizedStringFromThisBundle(void *a1)
{
  v1 = MEMORY[0x1E696AAE8];
  v2 = a1;
  v3 = [v1 _mapsuiBundle];
  v4 = [v3 _mapsui_localizedStringForKey:v2 value:@"<unlocalized>" table:0];

  return v4;
}

id MUMap(void *a1, void *a2)
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  if (v3)
  {
    v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v6 = v3;
    v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = 0;
      v10 = *v16;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v16 != v10)
          {
            objc_enumerationMutation(v6);
          }

          v12 = v4[2](v4, *(*(&v15 + 1) + 8 * i), v9);
          if (v12)
          {
            [v5 addObject:{v12, v15}];
          }

          ++v9;
        }

        v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v8);
    }

    v13 = [v5 copy];
  }

  else
  {
    v13 = MEMORY[0x1E695E0F0];
  }

  return v13;
}

id MUFindFirst(void *a1, void *a2)
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  if (v3)
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v5 = v3;
    v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = 0;
      v9 = *v16;
      while (2)
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v16 != v9)
          {
            objc_enumerationMutation(v5);
          }

          v11 = *(*(&v15 + 1) + 8 * i);
          v14 = 0;
          if (v4[2](v4, v11, v8, &v14))
          {
            v12 = v11;
            goto LABEL_15;
          }

          if (v14)
          {
            goto LABEL_12;
          }

          ++v8;
        }

        v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
        v12 = 0;
        if (v7)
        {
          continue;
        }

        break;
      }
    }

    else
    {
LABEL_12:
      v12 = 0;
    }

LABEL_15:
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

double MUPlacePlatterCornerRadius(void *a1)
{
  v1 = a1;
  if (!v1)
  {
    v1 = [MEMORY[0x1E69DCEB0] mainScreen];
  }

  v2 = [v1 traitCollection];
  _UITableViewDefaultSectionCornerRadiusForTraitCollection();
  v4 = v3;

  return v4;
}

double kMUPlaceHorizontalStackSpacing(int a1)
{
  result = 8.0;
  if (a1)
  {
    return 10.0;
  }

  return result;
}

uint64_t __MUGetMUPlaceCoverPhotoTransitionControllerLog_block_invoke()
{
  v0 = os_log_create("com.apple.MapsUI", "MUPlaceCoverPhotoTransitionController");
  v1 = MUGetMUPlaceCoverPhotoTransitionControllerLog_log;
  MUGetMUPlaceCoverPhotoTransitionControllerLog_log = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

void sub_1C5784B7C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1C5785EC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1C57860F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id MUGetPlaceCardAnalyticsUILog()
{
  if (MUGetPlaceCardAnalyticsUILog_onceToken != -1)
  {
    dispatch_once(&MUGetPlaceCardAnalyticsUILog_onceToken, &__block_literal_global_132);
  }

  v1 = MUGetPlaceCardAnalyticsUILog_log;

  return v1;
}

uint64_t __MUGetPlaceCardAnalyticsUILog_block_invoke()
{
  v0 = os_log_create("com.apple.MapsUI", "PlaceCardAnalyticsUI");
  v1 = MUGetPlaceCardAnalyticsUILog_log;
  MUGetPlaceCardAnalyticsUILog_log = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

id MUGetPlaceCardRevealLoggingLog()
{
  if (MUGetPlaceCardRevealLoggingLog_onceToken != -1)
  {
    dispatch_once(&MUGetPlaceCardRevealLoggingLog_onceToken, &__block_literal_global_136);
  }

  v1 = MUGetPlaceCardRevealLoggingLog_log;

  return v1;
}

uint64_t __MUGetPlaceCardRevealLoggingLog_block_invoke()
{
  v0 = os_log_create("com.apple.MapsUI", "PlaceCardRevealLogging");
  v1 = MUGetPlaceCardRevealLoggingLog_log;
  MUGetPlaceCardRevealLoggingLog_log = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

void sub_1C579277C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, ...)
{
  va_start(va, a28);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C5792A64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C57939F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1C57943C0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_1C57957D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1C5795A74(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1C5796460(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1C5796D58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, id a41)
{
  objc_destroyWeak((v41 + 56));
  objc_destroyWeak(&a41);
  objc_destroyWeak((v42 - 248));
  _Unwind_Resume(a1);
}

void sub_1C579729C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1C57981AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1C5799458(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1C5799828(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 56));
  objc_destroyWeak(v1);
  _Unwind_Resume(a1);
}

void sub_1C5799F84(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 56));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_1C579A194(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_1C579A644(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_1C579AA58(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 72));
  _Unwind_Resume(a1);
}

void sub_1C579B800(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, id a28)
{
  objc_destroyWeak(&a21);
  objc_destroyWeak(&a28);
  objc_destroyWeak((v28 - 128));
  _Unwind_Resume(a1);
}

void sub_1C579C7E8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 40));
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v3 - 88));
  _Unwind_Resume(a1);
}

void sub_1C579CFA0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1C579D1B4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 72));
  _Unwind_Resume(a1);
}

void sub_1C579DE6C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_1C579E558(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1C579FD60(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 64));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_1C579FEDC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_1C57A00B4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_1C57A0FA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C57A6A38(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 128));
  _Unwind_Resume(a1);
}

void sub_1C57A9064(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1C57AB2EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id location)
{
  objc_destroyWeak((v22 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1C57ABB04(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1C57AD238(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C57ADC50(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1C57B06C8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

id unwrapLayoutItem(void *a1)
{
  v1 = a1;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = [v1 internal];
  }

  else
  {
    v2 = v1;
  }

  v3 = v2;

  return v3;
}

id _MUCreateNoResultsActivityProviderError()
{
  v0 = MEMORY[0x1E696ABC0];
  v1 = GEOErrorDomain();
  v2 = [v0 errorWithDomain:v1 code:-8 userInfo:0];

  return v2;
}

void sub_1C57B604C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id MUGetMUActivityProvidersLog()
{
  if (MUGetMUActivityProvidersLog_onceToken != -1)
  {
    dispatch_once(&MUGetMUActivityProvidersLog_onceToken, &__block_literal_global_189);
  }

  v1 = MUGetMUActivityProvidersLog_log;

  return v1;
}

uint64_t __MUGetMUActivityProvidersLog_block_invoke()
{
  v0 = os_log_create("com.apple.MapsUI", "MUActivityProviders");
  v1 = MUGetMUActivityProvidersLog_log;
  MUGetMUActivityProvidersLog_log = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

void sub_1C57B6E58(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id MUPlaceSectionHeaderFont()
{
  v0 = +[MUInfoCardStyle sectionHeaderStyle];
  v1 = MEMORY[0x1E69DDD80];
  if (v0 == 1)
  {
    v2 = MEMORY[0x1E69DB970];
  }

  else
  {
    v1 = MEMORY[0x1E69DDDC8];
    v2 = MEMORY[0x1E69DB980];
  }

  v3 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*v1];
  v4 = [v3 _mapkit_fontWithWeight:*v2];

  return v4;
}

id MUPlaceSectionHeaderSubtitleFont()
{
  v0 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD80]];
  v1 = [v0 _mapkit_fontWithWeight:*MEMORY[0x1E69DB978]];

  return v1;
}

id MUPlaceSectionHeaderAccessoryButtonFont()
{
  if (+[MUInfoCardStyle sectionHeaderStyle]== 1)
  {
    v0 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD28]];
    v1 = [v0 _mapkit_fontWithWeight:*MEMORY[0x1E69DB970]];
  }

  else
  {
    v1 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD80]];
  }

  return v1;
}

void sub_1C57B8CD8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t __MUGetMUPlaceEnrichmentActionLog_block_invoke()
{
  v0 = os_log_create("com.apple.MapsUI", "MUPlaceEnrichmentAction");
  v1 = MUGetMUPlaceEnrichmentActionLog_log;
  MUGetMUPlaceEnrichmentActionLog_log = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

uint64_t MURevealedButtonModuleTypeForActionType(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  result = 2;
  switch(a1)
  {
    case 0:
    case 2:
    case 3:
    case 4:
    case 7:
    case 8:
    case 12:
    case 14:
    case 15:
    case 18:
    case 19:
    case 20:
    case 22:
    case 23:
    case 24:
    case 25:
    case 26:
    case 27:
    case 28:
    case 29:
    case 30:
    case 32:
    case 33:
    case 34:
    case 35:
    case 36:
    case 37:
    case 38:
    case 39:
    case 40:
    case 41:
    case 42:
    case 43:
    case 44:
    case 45:
    case 46:
    case 47:
    case 48:
    case 49:
    case 50:
      v3 = MUGetPlaceCardLog();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
      {
        v4 = MKPlaceCardActionTypeAsString();
        v5 = 138412290;
        v6 = v4;
      }

      goto LABEL_5;
    case 1:
      return result;
    case 5:
    case 6:
      result = 52;
      break;
    case 9:
      result = 51;
      break;
    case 10:
      result = 4;
      break;
    case 11:
      result = 5;
      break;
    case 13:
      result = 6;
      break;
    case 16:
      result = 3;
      break;
    case 17:
      result = 10;
      break;
    case 21:
      result = 1;
      break;
    case 31:
      result = 50;
      break;
    default:
LABEL_5:
      result = 0;
      break;
  }

  return result;
}

id MUExternalActionRevealedAnalyticsModuleButtonsForAction(void *a1)
{
  v1 = a1;
  v2 = [v1 categoryId];
  v3 = [v1 actionProviders];

  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __MUExternalActionRevealedAnalyticsModuleButtonsForAction_block_invoke;
  v7[3] = &unk_1E8218CA8;
  v8 = v2;
  v4 = v2;
  v5 = MUMap(v3, v7);

  return v5;
}

id __MUExternalActionRevealedAnalyticsModuleButtonsForAction_block_invoke(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x1E69A24B0];
  v4 = a2;
  v5 = [v3 moduleButtonForType:7];
  v6 = [v4 appAdamId];

  [v5 setVendor:v6];
  [v5 setMetadata:*(a1 + 32)];

  return v5;
}

uint64_t MUActionButtonDetailAnalyticsLinkTypeFromActionType(int a1)
{
  if ((a1 - 1) > 3)
  {
    return 0;
  }

  else
  {
    return dword_1C5879FD0[a1 - 1];
  }
}

id MUPhotosRevealedModuleForProvider(void *a1)
{
  v1 = MEMORY[0x1E69A24C8];
  v2 = a1;
  v3 = objc_alloc_init(v1);
  v4 = [v2 displayType];

  [v3 setCategoryAlbumExists:v4 == 1];

  return v3;
}

id MUHeaderRevealedModuleForViewModel(void *a1)
{
  v1 = a1;
  v2 = objc_alloc_init(MEMORY[0x1E69A24D8]);
  if ([v1 supportsCoverPhoto])
  {
    [v2 addTitleElements:1];
  }

  if ([v1 supportsLogo])
  {
    [v2 addTitleElements:2];
  }

  if ([v1 isClaimed])
  {
    [v2 addTitleElements:3];
  }

  return v2;
}

void sub_1C57BAFF0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 40));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 72));
  _Unwind_Resume(a1);
}

void sub_1C57BCCDC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v3 - 56));
  _Unwind_Resume(a1);
}

void sub_1C57BEBBC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1C57BFCB0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1C57C01EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, id location)
{
  objc_destroyWeak((v32 + 40));
  objc_destroyWeak((v32 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1C57C0FD4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  objc_destroyWeak((v16 - 40));
  _Unwind_Resume(a1);
}

void sub_1C57C31E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1C57C4A68(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id MUCollectionViewDiffableDataSourceCellProviderForwardingBlock(id val)
{
  objc_initWeak(&location, val);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __MUCollectionViewDiffableDataSourceCellProviderForwardingBlock_block_invoke;
  v3[3] = &unk_1E8218E40;
  objc_copyWeak(&v4, &location);
  v1 = _Block_copy(v3);
  objc_destroyWeak(&v4);
  objc_destroyWeak(&location);

  return v1;
}

id __MUCollectionViewDiffableDataSourceCellProviderForwardingBlock_block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v11 = [WeakRetained collectionView:v7 cellForItemAtIndexPath:v8 itemIdentifier:v9];

  if (!v11)
  {
    if (!NavdRecentLocationsEntitlment_block_invoke_fallbackCellRegistration)
    {
      v12 = [MEMORY[0x1E69DC800] registrationWithCellClass:objc_opt_class() configurationHandler:&__block_literal_global_4541];
      v13 = NavdRecentLocationsEntitlment_block_invoke_fallbackCellRegistration;
      NavdRecentLocationsEntitlment_block_invoke_fallbackCellRegistration = v12;
    }

    v11 = [v7 dequeueConfiguredReusableCellWithRegistration:? forIndexPath:? item:?];
  }

  return v11;
}

void sub_1C57C52A8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 + 48));
  objc_destroyWeak((v3 - 88));
  _Unwind_Resume(a1);
}

void sub_1C57C7854(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1C57C84C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id MUGetMURouteSnapshotManagerLog()
{
  if (MUGetMURouteSnapshotManagerLog_onceToken != -1)
  {
    dispatch_once(&MUGetMURouteSnapshotManagerLog_onceToken, &__block_literal_global_51);
  }

  v1 = MUGetMURouteSnapshotManagerLog_log;

  return v1;
}

uint64_t __MUGetMURouteSnapshotManagerLog_block_invoke()
{
  v0 = os_log_create("com.apple.MapsUI", "MURouteSnapshotManager");
  v1 = MUGetMURouteSnapshotManagerLog_log;
  MUGetMURouteSnapshotManagerLog_log = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

void sub_1C57CA438(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__5692(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id metadataWithURL(void *a1)
{
  v1 = MEMORY[0x1E696ECA0];
  v2 = a1;
  v3 = objc_alloc_init(v1);
  [v3 setOriginalURL:v2];
  [v3 setURL:v2];

  return v3;
}

id imageWithPlaceholderAndLoadHandler(void *a1, void *a2)
{
  v3 = MEMORY[0x1E696ACA0];
  v4 = a2;
  v5 = a1;
  v6 = objc_alloc_init(v3);
  v7 = [*MEMORY[0x1E6982F28] identifier];
  [v6 registerItemForTypeIdentifier:v7 loadHandler:v4];

  v8 = [objc_alloc(MEMORY[0x1E696EC68]) initWithPlatformImage:v5];
  v9 = [objc_alloc(MEMORY[0x1E696EC68]) initWithItemProvider:v6 properties:0 placeholderImage:v8];

  return v9;
}

id createMapSnapshotImage(void *a1, int a2)
{
  v3 = [a1 copy];
  v4 = [MEMORY[0x1E696AAE8] mainBundle];
  v5 = [v4 bundleIdentifier];
  [v3 _setUseSnapshotService:{objc_msgSend(v5, "isEqualToString:", @"com.apple.Maps"}];

  if (a2)
  {
    v6 = 1;
  }

  else
  {
    v6 = 2;
  }

  v7 = [MEMORY[0x1E69DD1B8] traitCollectionWithUserInterfaceStyle:v6];
  [v3 setTraitCollection:v7];

  [v3 setSize:{300.0, 300.0}];
  v8 = [objc_alloc(MEMORY[0x1E696F2B8]) initWithOptions:v3];
  v9 = +[MUPlaceholderGridCache unretainedInstance];
  v10 = v9;
  if (a2)
  {
    [v9 lightGrid];
  }

  else
  {
    [v9 darkGrid];
  }
  v11 = ;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __createMapSnapshotImage_block_invoke;
  v15[3] = &unk_1E8218FD0;
  v16 = v8;
  v12 = v8;
  v13 = imageWithPlaceholderAndLoadHandler(v11, v15);

  return v13;
}

void __createMapSnapshotImage_block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = dispatch_get_global_queue(25, 0);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __createMapSnapshotImage_block_invoke_2;
  v7[3] = &unk_1E8219070;
  v8 = v3;
  v6 = v3;
  [v4 startWithQueue:v5 completionHandler:v7];
}

void __createMapSnapshotImage_block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __createMapSnapshotImage_block_invoke_3;
  block[3] = &unk_1E821B8D8;
  v11 = v5;
  v7 = *(a1 + 32);
  v12 = v6;
  v13 = v7;
  v8 = v6;
  v9 = v5;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __createMapSnapshotImage_block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) image];

  v3 = *(a1 + 48);
  if (v2)
  {
    v8 = [*(a1 + 32) image];
    v4 = UIImagePNGRepresentation(v8);
    (*(v3 + 16))(v3, v4, 0);
  }

  else
  {
    v5 = *(a1 + 40);
    v6 = *(v3 + 16);
    v7 = *(a1 + 48);

    v6(v7, 0, v5);
  }
}

id annotatedSnapshotImageWithMapItems(void *a1, int a2)
{
  v3 = MEMORY[0x1E696F188];
  v4 = a1;
  v5 = [v3 alloc];
  v6 = [MEMORY[0x1E696AAE8] mainBundle];
  v7 = [v6 bundleIdentifier];
  v8 = [v5 initWithMapItems:v4 mapSize:objc_msgSend(v7 useSnapshotService:{"isEqualToString:", @"com.apple.Maps", 300.0, 300.0}];

  if (a2)
  {
    v9 = 1;
  }

  else
  {
    v9 = 2;
  }

  v10 = [MEMORY[0x1E69DD1B8] traitCollectionWithUserInterfaceStyle:v9];
  [v8 setTraitCollection:v10];

  v11 = +[MUPlaceholderGridCache unretainedInstance];
  v12 = v11;
  if (a2)
  {
    [v11 lightGrid];
  }

  else
  {
    [v11 darkGrid];
  }
  v13 = ;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __annotatedSnapshotImageWithMapItems_block_invoke;
  v17[3] = &unk_1E8218FD0;
  v18 = v8;
  v14 = v8;
  v15 = imageWithPlaceholderAndLoadHandler(v13, v17);

  return v15;
}

void __annotatedSnapshotImageWithMapItems_block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = dispatch_get_global_queue(25, 0);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __annotatedSnapshotImageWithMapItems_block_invoke_2;
  v7[3] = &unk_1E8219070;
  v8 = v3;
  v6 = v3;
  [v4 startWithQueue:v5 completionHandler:v7];
}

void __annotatedSnapshotImageWithMapItems_block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __annotatedSnapshotImageWithMapItems_block_invoke_3;
  block[3] = &unk_1E821B8D8;
  v11 = v5;
  v7 = *(a1 + 32);
  v12 = v6;
  v13 = v7;
  v8 = v6;
  v9 = v5;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __annotatedSnapshotImageWithMapItems_block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) image];

  v3 = *(a1 + 48);
  if (v2)
  {
    v8 = [*(a1 + 32) image];
    v4 = UIImagePNGRepresentation(v8);
    (*(v3 + 16))(v3, v4, 0);
  }

  else
  {
    v5 = *(a1 + 40);
    v6 = *(v3 + 16);
    v7 = *(a1 + 48);

    v6(v7, 0, v5);
  }
}

id categoryIconFromMapItem(void *a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = [v1 _styleAttributes];
  if (v2)
  {
    v3 = MEMORY[0x1E696F220];
    v4 = [MEMORY[0x1E69DCEB0] mainScreen];
    [v4 scale];
    v5 = [v3 imageForStyle:v2 size:5 forScale:0 format:?];

    if (v5)
    {
      v6 = createLinkPresentationImage(v5);

      v7 = v2;
      goto LABEL_13;
    }

    v8 = MUGetShareSheetLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v14 = 138412546;
      v15 = v2;
      v16 = 2112;
      v17 = v1;
      _os_log_impl(&dword_1C5620000, v8, OS_LOG_TYPE_ERROR, "Failed to retrieve POI icon with non-null attributes : %@ and mapItem : %@", &v14, 0x16u);
    }
  }

  v7 = [MEMORY[0x1E69A1DB0] addressMarkerStyleAttributes];

  v9 = MEMORY[0x1E696F220];
  v10 = [MEMORY[0x1E69DCEB0] mainScreen];
  [v10 scale];
  v11 = [v9 imageForStyle:v7 size:5 forScale:0 format:?];

  if (v11)
  {
    v6 = createLinkPresentationImage(v11);
  }

  else
  {
    v12 = MUGetShareSheetLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v14 = 138412546;
      v15 = v7;
      v16 = 2112;
      v17 = v1;
      _os_log_impl(&dword_1C5620000, v12, OS_LOG_TYPE_ERROR, "Failed to retrieve fallback address icon with attributes : %@ and mapItem : %@", &v14, 0x16u);
    }

    v6 = 0;
  }

LABEL_13:

  return v6;
}

id createLinkPresentationImage(void *a1)
{
  v1 = MEMORY[0x1E696EC68];
  v2 = a1;
  v3 = [v1 alloc];
  v4 = UIImagePNGRepresentation(v2);

  v5 = [v3 initWithData:v4 MIMEType:@"image/png"];

  return v5;
}

id HTMLStringForMetadata(void *a1)
{
  v1 = a1;
  v2 = [v1 URL];
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy__5898;
  v25 = __Block_byref_object_dispose__5899;
  v26 = 0;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __HTMLStringForMetadata_block_invoke;
  aBlock[3] = &unk_1E8218FF8;
  v3 = v2;
  v18 = v3;
  v4 = v1;
  v19 = v4;
  v20 = &v21;
  v5 = _Block_copy(aBlock);
  if ([MEMORY[0x1E696AF00] isMainThread])
  {
    v5[2](v5);
  }

  else
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __HTMLStringForMetadata_block_invoke_2;
    block[3] = &unk_1E821B860;
    v16 = v5;
    dispatch_sync(MEMORY[0x1E69E96A0], block);
  }

  v13 = HTMLBodyWrapperStringWithFormat(@"%@", v6, v7, v8, v9, v10, v11, v12, v22[5]);

  _Block_object_dispose(&v21, 8);

  return v13;
}

uint64_t __Block_byref_object_copy__5898(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void __HTMLStringForMetadata_block_invoke(void *a1)
{
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  v5 = [objc_alloc(MEMORY[0x1E696EC90]) initWithURL:a1[4]];
  [v5 setMetadata:a1[5]];
  v2 = [v5 HTMLFragmentString];
  v3 = *(a1[6] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void sub_1C57CD968(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va1, a13);
  va_start(va, a13);
  v14 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  v20 = va_arg(va1, void);
  v21 = va_arg(va1, void);
  v22 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_1C57CEF14(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id HTMLBodyWrapperStringWithFormat(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v9 = MEMORY[0x1E696AEC0];
  v10 = a1;
  v11 = [[v9 alloc] initWithFormat:v10 arguments:&a9];

  v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"<html><head><meta charset=utf-8 /></head><body>%@</body></html>", v11];

  return v12;
}

id HTMLStringForPhoto(void *a1)
{
  v1 = MEMORY[0x1E696F3B8];
  v2 = a1;
  v3 = [v1 sharedInstance];
  [v3 screenScale];
  v5 = v4;
  v6 = [MEMORY[0x1E69A21D8] defaultPhotoOptionsWithCropStyle:4];
  v7 = [v2 bestPhotoForFrameSize:v6 displayScale:300.0 options:{150.0, v5}];

  v8 = MEMORY[0x1E696AEC0];
  v9 = [v7 url];
  v10 = [v8 stringWithFormat:@"<img style=border-radius:8px src=%@ width=%f height=%f>", v9, 0x4072C00000000000, 0x4062C00000000000];;

  return v10;
}

void MUHTMLStringForAnnotatedSnapshotImageWithMapItems(void *a1, void *a2)
{
  v3 = a2;
  v4 = MEMORY[0x1E696F188];
  v5 = a1;
  v6 = [v4 alloc];
  v7 = [MEMORY[0x1E696AAE8] mainBundle];
  v8 = [v7 bundleIdentifier];
  v9 = [v6 initWithMapItems:v5 mapSize:objc_msgSend(v8 useSnapshotService:{"isEqualToString:", @"com.apple.Maps", 300.0, 150.0}];

  v10 = [MEMORY[0x1E69DD1B8] traitCollectionWithUserInterfaceStyle:1];
  [v9 setTraitCollection:v10];

  v11 = dispatch_get_global_queue(25, 0);
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __MUHTMLStringForAnnotatedSnapshotImageWithMapItems_block_invoke;
  v13[3] = &unk_1E8219070;
  v14 = v3;
  v12 = v3;
  [v9 startWithQueue:v11 completionHandler:v13];
}

void __MUHTMLStringForAnnotatedSnapshotImageWithMapItems_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v11 = a2;
  v5 = a3;
  v6 = [v11 image];

  if (v6)
  {
    v7 = [v11 image];
    v8 = UIImagePNGRepresentation(v7);

    v9 = [v8 base64EncodedStringWithOptions:0];
    v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"<img style=border-radius:8px src=data:image/png;base64, %@ width=%f height=%f>", v9, 0x4072C00000000000, 0x4062C00000000000];;
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    (*(*(a1 + 32) + 16))();
  }
}

id HTMLStringForMapItemDetailsWithTitle(void *a1, void *a2)
{
  v3 = a2;
  v4 = MEMORY[0x1E695DF70];
  v5 = a1;
  v6 = objc_alloc_init(v4);
  v7 = MEMORY[0x1E696AEC0];
  v8 = [v5 _navigation_sanitizedStringForDisplayInHTML];

  v9 = [v7 stringWithFormat:@"<b>%@</b>", v8];

  v10 = [v3 _firstLocalizedCategoryName];
  if ([v10 length])
  {
    v11 = [v10 _navigation_sanitizedStringForDisplayInHTML];
    v12 = [v9 stringByAppendingFormat:@"<br>%@", v11];

    v9 = v12;
  }

  [v6 addObject:v9];
  v13 = [v3 _addressFormattedAsMultilineAddress];
  if ([v13 length])
  {
    v14 = [v13 _navigation_sanitizedStringForDisplayInHTML];
    [v6 addObject:v14];
  }

  v15 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v16 = [v3 phoneNumber];
  if ([v16 length])
  {
    v17 = [v16 _navigation_sanitizedStringForDisplayInHTML];
    [v15 addObject:v17];
  }

  v18 = [v3 url];
  v19 = [v18 absoluteString];

  if ([v19 length])
  {
    v20 = [MEMORY[0x1E696AEC0] _mapkit_shortenedURLStringForFullURLString:v19];
    v21 = [v20 _navigation_sanitizedStringForDisplayInHTML];

    v22 = [MEMORY[0x1E696AEC0] stringWithFormat:@"<a href=%@>%@</a>", v19, v21];
    [v15 addObject:v22];
  }

  v23 = [v15 componentsJoinedByString:@"<br>"];
  if ([v23 length])
  {
    [v6 addObject:v23];
  }

  v24 = [v6 componentsJoinedByString:@"<br><br>"];

  return v24;
}

id HTMLStringForURLWithLabel(void *a1, void *a2)
{
  v3 = a1;
  if (a2)
  {
    v4 = [a2 _navigation_sanitizedStringForDisplayInHTML];
  }

  else
  {
    v5 = _MULocalizedStringFromThisBundle(@"Open in Apple Maps [Sharing]");
    v4 = [v5 _navigation_sanitizedStringForDisplayInHTML];
  }

  v6 = MEMORY[0x1E696AEC0];
  v7 = [v3 absoluteString];

  v8 = [v6 stringWithFormat:@"<a href=%@>%@</a>", v7, v4];

  return v8;
}

void sub_1C57D2F34(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1C57D310C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1C57D3298(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1C57D40E0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_1C57D4704(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1C57D4C24(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1C57D62EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  objc_destroyWeak((v29 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1C57D6904(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_1C57D6B6C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_1C57D733C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, id location)
{
  objc_destroyWeak(&a23);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1C57D8194(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1C57D8618(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 72));
  _Unwind_Resume(a1);
}

id MUGetMUWebContentLog()
{
  if (MUGetMUWebContentLog_onceToken != -1)
  {
    dispatch_once(&MUGetMUWebContentLog_onceToken, &__block_literal_global_150);
  }

  v1 = MUGetMUWebContentLog_log;

  return v1;
}

uint64_t __MUGetMUWebContentLog_block_invoke()
{
  v0 = os_log_create("com.apple.MapsUI", "MUWebContent");
  v1 = MUGetMUWebContentLog_log;
  MUGetMUWebContentLog_log = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

void sub_1C57D9708(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1C57D9F34(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1C57DC46C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_1C57DCD18(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1C57DD498(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1C57DD92C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1C57DFD64(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1C57E059C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, id location)
{
  objc_destroyWeak((v23 + 72));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id MUGetMUGroupedExternalActionControllerLog()
{
  if (MUGetMUGroupedExternalActionControllerLog_onceToken != -1)
  {
    dispatch_once(&MUGetMUGroupedExternalActionControllerLog_onceToken, &__block_literal_global_104);
  }

  v1 = MUGetMUGroupedExternalActionControllerLog_log;

  return v1;
}

uint64_t __MUGetMUGroupedExternalActionControllerLog_block_invoke()
{
  v0 = os_log_create("com.apple.MapsUI", "MUGroupedExternalActionController");
  v1 = MUGetMUGroupedExternalActionControllerLog_log;
  MUGetMUGroupedExternalActionControllerLog_log = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

void sub_1C57E15A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, ...)
{
  va_start(va, a41);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C57E2D00(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1C57E42EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1C57E51F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location, ...)
{
  va_start(va, location);
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__8957(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id MUGetMUPlaceEnrichmentSectionControllerLog()
{
  if (MUGetMUPlaceEnrichmentSectionControllerLog_onceToken != -1)
  {
    dispatch_once(&MUGetMUPlaceEnrichmentSectionControllerLog_onceToken, &__block_literal_global_296);
  }

  v1 = MUGetMUPlaceEnrichmentSectionControllerLog_log;

  return v1;
}

uint64_t __MUGetMUPlaceEnrichmentSectionControllerLog_block_invoke()
{
  v0 = os_log_create("com.apple.MapsUI", "MUPlaceEnrichmentSectionController");
  v1 = MUGetMUPlaceEnrichmentSectionControllerLog_log;
  MUGetMUPlaceEnrichmentSectionControllerLog_log = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

void sub_1C57E5F74(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 + 48));
  objc_destroyWeak((v3 - 88));
  _Unwind_Resume(a1);
}

void sub_1C57E7804(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1C57E7C30(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v3 - 72));
  _Unwind_Resume(a1);
}

void sub_1C57E8FD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, ...)
{
  va_start(va, a36);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v36 - 192), 8);
  _Block_object_dispose((v36 - 144), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__9469(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __MUGetMUVariableBlurViewLog_block_invoke()
{
  v0 = os_log_create("com.apple.MapsUI", "MUVariableBlurView");
  v1 = MUGetMUVariableBlurViewLog_log;
  MUGetMUVariableBlurViewLog_log = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

id _createAmenityImageView()
{
  v0 = objc_alloc(MEMORY[0x1E69DCAE0]);
  v1 = [v0 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
  [v1 setTranslatesAutoresizingMaskIntoConstraints:0];
  v2 = [MEMORY[0x1E69DC888] labelColor];
  [v1 setTintColor:v2];

  return v1;
}

void sub_1C57EF864(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1C57F00A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__10417(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __MUGetMUVendorLinkSorterLog_block_invoke()
{
  v0 = os_log_create("com.apple.MapsUI", "MUVendorLinkSorter");
  v1 = MUGetMUVendorLinkSorterLog_log;
  MUGetMUVendorLinkSorterLog_log = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

void sub_1C57F035C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

id MUGetMUImpressionCalculatorBackgroundingLog()
{
  if (MUGetMUImpressionCalculatorBackgroundingLog_onceToken != -1)
  {
    dispatch_once(&MUGetMUImpressionCalculatorBackgroundingLog_onceToken, &__block_literal_global_168);
  }

  v1 = MUGetMUImpressionCalculatorBackgroundingLog_log;

  return v1;
}

uint64_t __MUGetMUImpressionCalculatorBackgroundingLog_block_invoke()
{
  v0 = os_log_create("com.apple.MapsUI", "MUImpressionCalculatorBackgrounding");
  v1 = MUGetMUImpressionCalculatorBackgroundingLog_log;
  MUGetMUImpressionCalculatorBackgroundingLog_log = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

id MUGetMUImpressionVisibilityCheckingLog()
{
  if (MUGetMUImpressionVisibilityCheckingLog_onceToken != -1)
  {
    dispatch_once(&MUGetMUImpressionVisibilityCheckingLog_onceToken, &__block_literal_global_164);
  }

  v1 = MUGetMUImpressionVisibilityCheckingLog_log;

  return v1;
}

uint64_t __MUGetMUImpressionVisibilityCheckingLog_block_invoke()
{
  v0 = os_log_create("com.apple.MapsUI", "MUImpressionVisibilityChecking");
  v1 = MUGetMUImpressionVisibilityCheckingLog_log;
  MUGetMUImpressionVisibilityCheckingLog_log = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

void sub_1C57F2C5C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 40));
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v3 - 88));
  _Unwind_Resume(a1);
}

id _createTitleLabel()
{
  v0 = [MUInfoCardStyle labelForProminence:0];
  [v0 setNumberOfLines:2];
  v1 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD00]];
  v2 = [v1 _mapkit_fontWithSymbolicTraits:0x8000];
  v3 = [v2 _mapkit_fontWithWeight:*MEMORY[0x1E69DB980]];
  [v0 setFont:v3];

  [v0 setLineBreakMode:4];
  LODWORD(v4) = 1.0;
  [v0 _setHyphenationFactor:v4];
  [v0 setAllowsDefaultTighteningForTruncation:1];

  return v0;
}

id _createSecondaryLabel()
{
  v0 = [MUInfoCardStyle labelForProminence:1];
  [v0 setNumberOfLines:2];
  v1 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD80]];
  [v0 setFont:v1];

  v2 = [MEMORY[0x1E69DC888] secondaryLabelColor];
  [v0 setTextColor:v2];

  [v0 setLineBreakMode:4];
  [v0 setAllowsDefaultTighteningForTruncation:1];

  return v0;
}

id _createFooterLabel()
{
  v0 = [MUInfoCardStyle labelForProminence:1];
  [v0 setNumberOfLines:2];
  v1 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD28]];
  v2 = [v1 _mapkit_fontWithSymbolicTraits:0x8000];
  [v0 setFont:v2];

  v3 = [MEMORY[0x1E69DC888] secondaryLabelColor];
  [v0 setTextColor:v3];

  [v0 setAllowsDefaultTighteningForTruncation:1];

  return v0;
}

double _calculateBoundingRectForAttributedStringWithHeight(void *a1, double a2)
{
  v3 = a1;
  if ([v3 length])
  {
    [v3 boundingRectWithSize:3 options:0 context:{a2, 1000.0}];
    v5 = v4;
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v12 = [MEMORY[0x1E696F3B8] sharedInstance];
    [v12 screenScale];

    v16.origin.x = v5;
    v16.origin.y = v7;
    v16.size.width = v9;
    v16.size.height = v11;
    CGRectGetWidth(v16);
    UICeilToScale();
    v14 = v13;
    v17.origin.x = v5;
    v17.origin.y = v7;
    v17.size.width = v14;
    v17.size.height = v11;
    CGRectGetHeight(v17);
    UICeilToScale();
  }

  else
  {
    v5 = *MEMORY[0x1E695F058];
  }

  return v5;
}

void sub_1C57F4220(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1C57F57B4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 40));
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v3 - 72));
  _Unwind_Resume(a1);
}

void sub_1C57F6A30(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak((v19 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1C57F8000(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, char a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, id location)
{
  objc_destroyWeak(&a55);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1C57F83A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id MUStringForGEOAmenityType(int a1)
{
  v2 = a1 - 1;
  v3 = @"Accepts Credit Cards";
  switch(v2)
  {
    case 0:
      goto LABEL_69;
    case 1:
      v3 = @"Wheelchair Accessible";
      goto LABEL_69;
    case 2:
      v3 = @"Kid Friendly";
      goto LABEL_69;
    case 3:
      v3 = @"Delivery";
      goto LABEL_69;
    case 4:
      v3 = @"Pets Allowed";
      goto LABEL_69;
    case 5:
      v3 = @"Open 24 Hours";
      goto LABEL_69;
    case 6:
      v3 = @"Fitness Center";
      goto LABEL_69;
    case 7:
      v3 = @"Free Breakfast";
      goto LABEL_69;
    case 8:
      v3 = @"Spa";
      goto LABEL_69;
    case 9:
      v3 = @"Swimming Pool";
      goto LABEL_69;
    case 10:
      v4 = MGGetBoolAnswer();
      v5 = @"Wi-Fi";
      v6 = @"WLAN";
      goto LABEL_46;
    case 11:
      v4 = MGGetBoolAnswer();
      v5 = @"Free Wi-Fi";
      v6 = @"Free WLAN";
LABEL_46:
      if (v4)
      {
        v3 = v6;
      }

      else
      {
        v3 = v5;
      }

      goto LABEL_69;
    case 12:
      v3 = @"Free Internet";
      goto LABEL_69;
    case 13:
      v3 = @"Shuttle Service";
      goto LABEL_69;
    case 14:
      v3 = @"Airport Transportation";
      goto LABEL_69;
    case 15:
      v3 = @"Parking Available";
      goto LABEL_69;
    case 16:
      v3 = @"Parking Garage";
      goto LABEL_69;
    case 17:
      v3 = @"Free Parking";
      goto LABEL_69;
    case 18:
      v3 = @"Smoking Allowed";
      goto LABEL_69;
    case 19:
      v3 = @"Reservations";
      goto LABEL_69;
    case 20:
      v3 = @"Accepts Apple Pay";
      goto LABEL_69;
    case 21:
      v3 = @"Gender-Neutral Restrooms";
      goto LABEL_69;
    case 22:
      v3 = @"Takeout";
      goto LABEL_69;
    case 23:
      v3 = @"Appointment Only";
      goto LABEL_69;
    case 24:
      v3 = @"Good for Groups";
      goto LABEL_69;
    case 25:
      v3 = @"Scenic View";
      goto LABEL_69;
    case 26:
      v3 = @"Outdoor Seating";
      goto LABEL_69;
    case 27:
      v3 = @"Waterfront";
      goto LABEL_69;
    case 28:
      v3 = @"Beachfront";
      goto LABEL_69;
    case 29:
      v3 = @"Dogs Allowed";
      goto LABEL_69;
    case 30:
      v3 = @"Drive-through";
      goto LABEL_69;
    case 31:
      v3 = @"Full Bar";
      goto LABEL_69;
    case 32:
      v3 = @"Vegetarian Options";
      goto LABEL_69;
    case 33:
      v3 = @"Vegan Options";
      goto LABEL_69;
    case 34:
      v3 = @"Glutenfree Options";
      goto LABEL_69;
    case 35:
      v3 = @"Soy-free Options";
      goto LABEL_69;
    case 36:
      v3 = @"Halal Options";
      goto LABEL_69;
    case 37:
      v3 = @"Dairy-free Options";
      goto LABEL_69;
    case 38:
      v3 = @"Meeting Rooms";
      goto LABEL_69;
    case 39:
      v3 = @"Smoke-free property";
      goto LABEL_69;
    case 40:
      v3 = @"Non-smoking Rooms";
      goto LABEL_69;
    case 41:
      v3 = @"Family Rooms";
      goto LABEL_69;
    case 42:
      v3 = @"Bar / Lounge";
      goto LABEL_69;
    case 43:
      v3 = @"Restaurant";
      goto LABEL_69;
    case 44:
      v3 = @"Laundry Service";
      goto LABEL_69;
    case 45:
      v3 = @"Large Tables";
      goto LABEL_69;
    case 46:
      v3 = @"Private Rooms";
      goto LABEL_69;
    case 47:
      v3 = @"High Chairs";
      goto LABEL_69;
    case 48:
      v3 = @"Self Ordering Online";
      goto LABEL_69;
    case 49:
      v3 = @"Online Queuing";
      goto LABEL_69;
    case 50:
      v3 = @"Seating for Couples";
      goto LABEL_69;
    case 51:
      v3 = @"Children's Discount";
      goto LABEL_69;
    case 52:
      v3 = @"IMAX";
      goto LABEL_69;
    case 53:
      v3 = @"Device Trade-in for Credit";
      goto LABEL_69;
    case 54:
      v3 = @"Free Today at Apple Sessions";
      goto LABEL_69;
    case 55:
      v3 = @"Small Business Solutions";
      goto LABEL_69;
    case 56:
      v3 = @"Hardware Repairs and Support";
      goto LABEL_69;
    case 57:
      v3 = @"Genius Bar Walk-ins";
      goto LABEL_69;
    case 58:
      v3 = @"Apple Authorized Service Provider";
      goto LABEL_69;
    case 59:
      v3 = @"Offers Same Day iPhone Screen Repair";
      goto LABEL_69;
    case 60:
      v3 = @"Walk-in Repairs";
      goto LABEL_69;
    case 61:
      v3 = @"Apple Authorized Drop-off Location";
LABEL_69:
      v7 = _MULocalizedStringFromThisBundle(v3);

      break;
    default:
      v7 = 0;

      break;
  }

  return v7;
}

id MUGetMUImpressionsLoggerLog()
{
  if (MUGetMUImpressionsLoggerLog_onceToken != -1)
  {
    dispatch_once(&MUGetMUImpressionsLoggerLog_onceToken, &__block_literal_global_11696);
  }

  v1 = MUGetMUImpressionsLoggerLog_log;

  return v1;
}

uint64_t __MUGetMUImpressionsLoggerLog_block_invoke()
{
  v0 = os_log_create("com.apple.MapsUI", "MUImpressionsLogger");
  v1 = MUGetMUImpressionsLoggerLog_log;
  MUGetMUImpressionsLoggerLog_log = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

void sub_1C57FC918(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1C57FD850(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__12685(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1C57FE4D8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_1C57FE604(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C57FE9F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__12821(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1C57FF96C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1C57FFFB8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id MUGetMUExpandableHoursViewLog()
{
  if (MUGetMUExpandableHoursViewLog_onceToken != -1)
  {
    dispatch_once(&MUGetMUExpandableHoursViewLog_onceToken, &__block_literal_global_136_13090);
  }

  v1 = MUGetMUExpandableHoursViewLog_log;

  return v1;
}

uint64_t __MUGetMUExpandableHoursViewLog_block_invoke()
{
  v0 = os_log_create("com.apple.MapsUI", "MUExpandableHoursView");
  v1 = MUGetMUExpandableHoursViewLog_log;
  MUGetMUExpandableHoursViewLog_log = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

void sub_1C5802880(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location)
{
  objc_destroyWeak((v21 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1C58068C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v21 + 40));
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1C5809684(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id ___defaultTitleAttributedStringForString_block_invoke(uint64_t a1)
{
  v14[2] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc(MEMORY[0x1E696AAB0]);
  v3 = *(a1 + 32);
  v4 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD28]];
  v5 = [v4 _mapkit_fontWithWeight:*MEMORY[0x1E69DB980]];
  v6 = [MEMORY[0x1E69DC888] secondaryLabelColor];
  v7 = *MEMORY[0x1E69DB650];
  v13[0] = *MEMORY[0x1E69DB648];
  v13[1] = v7;
  v14[0] = v5;
  v14[1] = v6;
  v8 = MEMORY[0x1E695DF20];
  v9 = v5;
  v10 = [v8 dictionaryWithObjects:v14 forKeys:v13 count:2];

  v11 = [v2 initWithString:v3 attributes:v10];

  return v11;
}

void sub_1C580DA20(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1C58128B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1C5814478(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1C5814C70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__16682(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1C5814FAC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id MUGetPlaceExtensionDiscoveryManagerLog()
{
  if (MUGetPlaceExtensionDiscoveryManagerLog_onceToken != -1)
  {
    dispatch_once(&MUGetPlaceExtensionDiscoveryManagerLog_onceToken, &__block_literal_global_99);
  }

  v1 = MUGetPlaceExtensionDiscoveryManagerLog_log;

  return v1;
}

uint64_t __MUGetPlaceExtensionDiscoveryManagerLog_block_invoke()
{
  v0 = os_log_create("com.apple.MapsUI", "PlaceExtensionDiscoveryManager");
  v1 = MUGetPlaceExtensionDiscoveryManagerLog_log;
  MUGetPlaceExtensionDiscoveryManagerLog_log = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

void sub_1C5815588(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1C5815904(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 56));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

id createMapPlaceholderGrid(uint64_t a1, double a2, double a3)
{
  v3 = a1;
  v6 = MUGetShareSheetLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1C5620000, v6, OS_LOG_TYPE_INFO, "Synchronously creating placeholder grid as it has not been prefetched. This is an expensive operation on the main thread.", buf, 2u);
  }

  v7 = createPlaceholderSnapshotOptions(v3, a2, a3);
  v8 = [MEMORY[0x1E696F2A0] createSnapshotWithOptions:v7 timeoutInSeconds:3];
  v9 = [v8 image];
  if (!v9)
  {
    v10 = [objc_alloc(MEMORY[0x1E69DCA78]) initWithSize:{a2, a3}];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __createMapPlaceholderGrid_block_invoke;
    v12[3] = &__block_descriptor_48_e40_v16__0__UIGraphicsImageRendererContext_8l;
    *&v12[4] = a2;
    *&v12[5] = a3;
    v9 = [v10 imageWithActions:v12];
  }

  return v9;
}

id createPlaceholderSnapshotOptions(int a1, double a2, double a3)
{
  v6 = objc_alloc_init(MEMORY[0x1E696F2B0]);
  [v6 setSize:{a2, a3}];
  [v6 setMapType:105];
  if (a1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  v8 = MEMORY[0x1E695DEC8];
  v9 = [MEMORY[0x1E69DD1B8] traitCollectionWithUserInterfaceStyle:v7];
  v10 = MEMORY[0x1E69DD1B8];
  v11 = [MEMORY[0x1E69DCEB0] mainScreen];
  [v11 nativeScale];
  v12 = [v10 traitCollectionWithDisplayScale:?];
  v13 = [v8 arrayWithObjects:{v9, v12, 0}];

  v14 = [MEMORY[0x1E69DD1B8] traitCollectionWithTraitsFromCollections:v13];
  [v6 setTraitCollection:v14];

  return v6;
}

void __createMapPlaceholderGrid_block_invoke(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x1E69DC888];
  v5 = a2;
  v4 = [v3 colorWithRed:0.5 green:0.5 blue:0.5 alpha:1.0];
  [v4 setFill];

  [v5 fillRect:{0.0, 0.0, *(a1 + 32), *(a1 + 40)}];
}

void sub_1C5816A9C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 48));
  _Unwind_Resume(a1);
}

void ___placeholderSnapshotQueue_block_invoke()
{
  v0 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  attr = dispatch_queue_attr_make_with_qos_class(v0, QOS_CLASS_USER_INITIATED, 0);

  v1 = dispatch_queue_create("com.apple.maps.PlaceholderSnapshotQueue", attr);
  v2 = _placeholderSnapshotQueue_snapshotQueue;
  _placeholderSnapshotQueue_snapshotQueue = v1;
}

id MUGetMUPhotoSliderViewLog()
{
  if (MUGetMUPhotoSliderViewLog_onceToken != -1)
  {
    dispatch_once(&MUGetMUPhotoSliderViewLog_onceToken, &__block_literal_global_17027);
  }

  v1 = MUGetMUPhotoSliderViewLog_log;

  return v1;
}

uint64_t __MUGetMUPhotoSliderViewLog_block_invoke()
{
  v0 = os_log_create("com.apple.MapsUI", "MUPhotoSliderView");
  v1 = MUGetMUPhotoSliderViewLog_log;
  MUGetMUPhotoSliderViewLog_log = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

id MUGetMUPlaceEnrichmentAPIControllerLog()
{
  if (MUGetMUPlaceEnrichmentAPIControllerLog_onceToken != -1)
  {
    dispatch_once(&MUGetMUPlaceEnrichmentAPIControllerLog_onceToken, &__block_literal_global_115);
  }

  v1 = MUGetMUPlaceEnrichmentAPIControllerLog_log;

  return v1;
}

uint64_t __MUGetMUPlaceEnrichmentAPIControllerLog_block_invoke()
{
  v0 = os_log_create("com.apple.MapsUI", "MUPlaceEnrichmentAPIController");
  v1 = MUGetMUPlaceEnrichmentAPIControllerLog_log;
  MUGetMUPlaceEnrichmentAPIControllerLog_log = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

void sub_1C5819300(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1C581A9AC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 56));
  _Unwind_Resume(a1);
}

id MUConvertedFormattedDurationString(double a1)
{
  v2 = objc_alloc(MEMORY[0x1E696AD28]);
  v3 = [MEMORY[0x1E696B008] milliseconds];
  v4 = [v2 initWithDoubleValue:v3 unit:a1];

  v5 = [MEMORY[0x1E696B008] seconds];
  v6 = [v4 measurementByConvertingToUnit:v5];
  [v6 doubleValue];
  v8 = v7;

  v9 = objc_alloc_init(MEMORY[0x1E696AB70]);
  v10 = [MEMORY[0x1E695DEE8] autoupdatingCurrentCalendar];
  [v9 setCalendar:v10];

  [v9 setAllowedUnits:112];
  [v9 setMaximumUnitCount:2];
  [v9 setUnitsStyle:2];
  v11 = [v9 stringFromTimeInterval:v8];

  return v11;
}

void MUConfigureMeasurementFormatter(void *a1, char a2, int a3, uint64_t a4, uint64_t a5)
{
  v12 = a1;
  v9 = [MEMORY[0x1E695DF58] autoupdatingCurrentLocale];
  [v12 setLocale:v9];

  [v12 setUnitStyle:2];
  [v12 setUnitOptions:1];
  v10 = [v12 numberFormatter];
  [v10 setMaximumFractionDigits:a4];

  v11 = [v12 numberFormatter];
  [v11 setRoundingMode:a5];

  if ((a2 & 1) == 0 && (a3 == 8 || a3 == 3))
  {
    [v12 setUnitStyle:1];
  }
}

id MUFactoidMeasurementFormatterForValue(int a1, double a2)
{
  v3 = 0;
  if (a1 > 4)
  {
    if (a1 > 6)
    {
      if (a1 == 7)
      {
        v4 = objc_alloc(MEMORY[0x1E696AD28]);
        v5 = [MEMORY[0x1E696AFE8] squareKilometers];
      }

      else
      {
        if (a1 != 8)
        {
          goto LABEL_20;
        }

        v4 = objc_alloc(MEMORY[0x1E696AD28]);
        v5 = [MEMORY[0x1E696AFE8] squareMeters];
      }

      goto LABEL_19;
    }

    if (a1 == 5)
    {
      v4 = objc_alloc(MEMORY[0x1E696AD28]);
      [MEMORY[0x1E696B058] meters];
    }

    else
    {
      v4 = objc_alloc(MEMORY[0x1E696AD28]);
      [MEMORY[0x1E696B008] milliseconds];
    }

    goto LABEL_8;
  }

  if (a1 > 2)
  {
    if (a1 == 3)
    {
      v4 = objc_alloc(MEMORY[0x1E696AD28]);
      [MEMORY[0x1E696B088] cubicMeters];
    }

    else
    {
      v4 = objc_alloc(MEMORY[0x1E696AD28]);
      [MEMORY[0x1E696B058] kilometers];
    }

    v5 = LABEL_8:;
    goto LABEL_19;
  }

  if (a1 >= 2)
  {
    if (a1 != 2)
    {
      goto LABEL_20;
    }

    v4 = objc_alloc(MEMORY[0x1E696AD28]);
    v5 = [MEMORY[0x1E696B088] cubicKilometers];
  }

  else
  {
    v4 = objc_alloc(MEMORY[0x1E696AD28]);
    v5 = [[_MUEmptyUnit alloc] initWithSymbol:&stru_1F44CA030];
  }

LABEL_19:
  v6 = v5;
  v3 = [v4 initWithDoubleValue:v5 unit:a2];

LABEL_20:

  return v3;
}

id MUFactoidImpericalMeasurementFormatterForValue(int a1, double a2)
{
  v3 = 0;
  if (a1 > 4)
  {
    if (a1 > 6)
    {
      if (a1 == 7)
      {
        v4 = objc_alloc(MEMORY[0x1E696AD28]);
        v5 = [MEMORY[0x1E696AFE8] squareMiles];
      }

      else
      {
        if (a1 != 8)
        {
          goto LABEL_20;
        }

        v4 = objc_alloc(MEMORY[0x1E696AD28]);
        v5 = [MEMORY[0x1E696AFE8] squareFeet];
      }

      goto LABEL_19;
    }

    if (a1 == 5)
    {
      v4 = objc_alloc(MEMORY[0x1E696AD28]);
      [MEMORY[0x1E696B058] feet];
    }

    else
    {
      v4 = objc_alloc(MEMORY[0x1E696AD28]);
      [MEMORY[0x1E696B008] milliseconds];
    }

    goto LABEL_8;
  }

  if (a1 > 2)
  {
    if (a1 == 3)
    {
      v4 = objc_alloc(MEMORY[0x1E696AD28]);
      [MEMORY[0x1E696B088] cubicFeet];
    }

    else
    {
      v4 = objc_alloc(MEMORY[0x1E696AD28]);
      [MEMORY[0x1E696B058] miles];
    }

    v5 = LABEL_8:;
    goto LABEL_19;
  }

  if (a1 >= 2)
  {
    if (a1 != 2)
    {
      goto LABEL_20;
    }

    v4 = objc_alloc(MEMORY[0x1E696AD28]);
    v5 = [MEMORY[0x1E696B088] cubicMiles];
  }

  else
  {
    v4 = objc_alloc(MEMORY[0x1E696AD28]);
    v5 = [[_MUEmptyUnit alloc] initWithSymbol:&stru_1F44CA030];
  }

LABEL_19:
  v6 = v5;
  v3 = [v4 initWithDoubleValue:v5 unit:a2];

LABEL_20:

  return v3;
}

id MUConvertedFormattedString(void *a1, void *a2, void *a3, int a4)
{
  v29 = *MEMORY[0x1E69E9840];
  v7 = a1;
  v8 = a2;
  v9 = a3;
  v10 = [v7 canBeConvertedToUnit:v8];
  if (MUGetFactoidConversionLog_onceToken != -1)
  {
    dispatch_once(&MUGetFactoidConversionLog_onceToken, &__block_literal_global_18000);
  }

  v11 = MUGetFactoidConversionLog_log;
  v12 = v11;
  if (v10)
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v13 = [v7 unit];
      v25 = 138412546;
      v26 = v13;
      v27 = 2112;
      v28 = v8;
      _os_log_impl(&dword_1C5620000, v12, OS_LOG_TYPE_INFO, "Will convert %@ to %@", &v25, 0x16u);
    }

    v14 = [v7 measurementByConvertingToUnit:v8];
    if (a4)
    {
      v15 = [MEMORY[0x1E696AFE8] squareMiles];
      v16 = [v8 isEqual:v15];

      if (v16)
      {
        v17 = objc_alloc(MEMORY[0x1E696AD28]);
        [v14 doubleValue];
        v19 = v18;
        v20 = [_MUEmptyUnit unitFromUnit:v8];
        v21 = [v17 initWithDoubleValue:v20 unit:v19];

        v14 = v21;
      }
    }

    v22 = [v9 stringFromMeasurement:v14];
  }

  else
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v23 = [v7 unit];
      v25 = 138412546;
      v26 = v23;
      v27 = 2112;
      v28 = v8;
      _os_log_impl(&dword_1C5620000, v12, OS_LOG_TYPE_ERROR, "Tried to convert %@ to %@ but unsuccessful. Using original unit", &v25, 0x16u);
    }

    v22 = [v9 stringFromMeasurement:v7];
  }

  return v22;
}

uint64_t __MUGetFactoidConversionLog_block_invoke()
{
  v0 = os_log_create("com.apple.MapsUI", "FactoidConversion");
  v1 = MUGetFactoidConversionLog_log;
  MUGetFactoidConversionLog_log = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

void sub_1C581E390(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1C581E894(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

__CFString *MUStringFromUIRectEdge(char a1)
{
  if ((a1 & 0xF) == 0)
  {
    v1 = @"UIRectEdgeNone";
    goto LABEL_11;
  }

  if ((a1 & 0xF) == 0xFLL)
  {
    v1 = @"UIRectEdgeAll";
    goto LABEL_11;
  }

  v3 = [MEMORY[0x1E695DF70] array];
  v4 = v3;
  if (a1)
  {
    [v3 addObject:@"UIRectEdgeTop"];
    if ((a1 & 2) == 0)
    {
LABEL_7:
      if ((a1 & 4) == 0)
      {
        goto LABEL_8;
      }

LABEL_16:
      [v4 addObject:@"UIRectEdgeBottom"];
      if ((a1 & 8) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_9;
    }
  }

  else if ((a1 & 2) == 0)
  {
    goto LABEL_7;
  }

  [v4 addObject:@"UIRectEdgeLeft"];
  if ((a1 & 4) != 0)
  {
    goto LABEL_16;
  }

LABEL_8:
  if ((a1 & 8) != 0)
  {
LABEL_9:
    [v4 addObject:@"UIRectEdgeRight"];
  }

LABEL_10:
  v1 = [v4 componentsJoinedByString:@" | "];

LABEL_11:

  return v1;
}

void MURoundPointsToNearestPixel(long double a1, double a2)
{
  if (a2 >= 1.0)
  {
    fmod(a1, 0.5 / a2);
  }
}

uint64_t MUContentSizeCategoryComparisonResult(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (v3 == v4)
  {
    v12 = 0;
    goto LABEL_18;
  }

  v6 = MEMORY[0x1E69DDC90];
  if (!v3)
  {
    v7 = 1;
    if (v4)
    {
      goto LABEL_4;
    }

LABEL_17:
    v12 = !v7;
    goto LABEL_18;
  }

  v7 = UIContentSizeCategoryCompareToCategory(v3, *MEMORY[0x1E69DDC90]) == NSOrderedSame;
  if (!v5)
  {
    goto LABEL_17;
  }

LABEL_4:
  v8 = UIContentSizeCategoryCompareToCategory(v5, *v6);
  if (v8)
  {
    v9 = 0;
  }

  else
  {
    v9 = v7;
  }

  if (v8)
  {
    v10 = v7;
  }

  else
  {
    v10 = 1;
  }

  v11 = v9 - 1;
  if (v7)
  {
    v12 = v11;
  }

  else
  {
    v12 = 1;
  }

  if ((v10 & 1) == 0)
  {
    v12 = UIContentSizeCategoryCompareToCategory(v3, v5);
  }

LABEL_18:

  return v12;
}

uint64_t MUIdiomInTraitEnvironment(void *a1)
{
  if (!a1)
  {
    return -1;
  }

  v1 = [a1 traitCollection];
  v2 = [v1 userInterfaceIdiom];

  return v2;
}

void MURegisterForButtonShapeEnablementChanges(void *a1, uint64_t a2)
{
  v4 = a1;
  if (objc_opt_respondsToSelector())
  {
    v3 = [MEMORY[0x1E696AD88] defaultCenter];
    [v3 addObserver:v4 selector:a2 name:*MEMORY[0x1E69DD8A8] object:0];
  }
}

id MUGetMUPlaceEnrichmentActionManagerLog()
{
  if (MUGetMUPlaceEnrichmentActionManagerLog_onceToken != -1)
  {
    dispatch_once(&MUGetMUPlaceEnrichmentActionManagerLog_onceToken, &__block_literal_global_200);
  }

  v1 = MUGetMUPlaceEnrichmentActionManagerLog_log;

  return v1;
}

void sub_1C58215AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v19 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t __MUGetMUPlaceEnrichmentActionManagerLog_block_invoke()
{
  v0 = os_log_create("com.apple.MapsUI", "MUPlaceEnrichmentActionManager");
  v1 = MUGetMUPlaceEnrichmentActionManagerLog_log;
  MUGetMUPlaceEnrichmentActionManagerLog_log = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

void sub_1C58231A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, ...)
{
  va_start(va, a56);
  _Block_object_dispose((v56 - 240), 8);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v56 - 176), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__18756(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id MUHighlightedAttributionString(void *a1, void *a2, void *a3, void *a4)
{
  v7 = a1;
  v8 = a2;
  v9 = a3;
  v10 = a4;
  if ([v7 length])
  {
    v11 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:v7 attributes:v8];
    if (!v10)
    {
      v10 = v8;
    }

    if ([v9 length])
    {
      v12 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:v9 attributes:v10];
      v13 = [MEMORY[0x1E696AAB0] localizedAttributedStringWithFormat:v11, v12];
    }

    else
    {
      v13 = v11;
    }
  }

  else
  {
    v13 = objc_opt_new();
  }

  return v13;
}

void sub_1C58254CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id _MUFactoidStringForFactoid(uint64_t a1, void *a2)
{
  v52 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [MUFactoidViewModel viewModelForFactoid:a1];
  v5 = [v4 valueString];
  v6 = v3;
  v7 = [v5 length];
  v8 = MEMORY[0x1E69DB650];
  v9 = MEMORY[0x1E69DB648];
  if (v7)
  {
    v10 = objc_alloc(MEMORY[0x1E696AAB0]);
    v11 = [MEMORY[0x1E69DC888] systemGrayColor];
    v12 = *v8;
    v48 = *v9;
    v49 = v12;
    v50 = v6;
    v51 = v11;
    v13 = MEMORY[0x1E695DF20];
    v14 = v6;
    v15 = [v13 dictionaryWithObjects:&v50 forKeys:&v48 count:2];

    v16 = [v10 initWithString:v5 attributes:v15];
  }

  else
  {
    v16 = 0;
  }

  v17 = [v4 symbolName];
  v18 = MEMORY[0x1E69DCAB8];
  v19 = MEMORY[0x1E69DCAD8];
  v20 = v6;
  v21 = [v19 configurationWithFont:v20 scale:1];
  v22 = [v18 _mapsui_resolvedSymbolImageNamed:v17 withConfiguration:v21];

  v23 = [v22 imageWithRenderingMode:2];

  if (v23)
  {
    v46 = v5;
    v24 = objc_alloc_init(MEMORY[0x1E69DB7F0]);
    [v24 setImage:v23];
    v25 = [MEMORY[0x1E696AAB0] attributedStringWithAttachment:v24];
    v26 = [v25 mutableCopy];

    v27 = [v4 symbolColor];

    if (v27)
    {
      v28 = [v4 symbolColor];
      v48 = *MEMORY[0x1E69DB650];
      v50 = v28;
      v29 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v50 forKeys:&v48 count:1];
      [v26 addAttributes:v29 range:{0, objc_msgSend(v26, "length")}];
    }

    v47[0] = v26;
    v30 = v20;
    if ([@" " length])
    {
      v45 = objc_alloc(MEMORY[0x1E696AAB0]);
      v31 = [MEMORY[0x1E69DC888] systemGrayColor];
      v32 = *MEMORY[0x1E69DB650];
      v48 = *MEMORY[0x1E69DB648];
      v49 = v32;
      v50 = v30;
      v51 = v31;
      v33 = v16;
      v34 = MEMORY[0x1E695DF20];
      v35 = v24;
      v36 = v20;
      v37 = v4;
      v38 = v23;
      v39 = v30;
      v40 = [v34 dictionaryWithObjects:&v50 forKeys:&v48 count:2];

      v23 = v38;
      v4 = v37;
      v20 = v36;
      v24 = v35;
      v41 = [v45 initWithString:@" " attributes:v40];

      v16 = v33;
    }

    else
    {
      v41 = 0;
    }

    v47[1] = v41;
    v47[2] = v16;
    v42 = [MEMORY[0x1E695DEC8] arrayWithObjects:v47 count:3];
    v43 = +[MapsUILayout buildAttributedDisplayStringForComponents:reverseIfRTLLayout:](MapsUILayout, "buildAttributedDisplayStringForComponents:reverseIfRTLLayout:", v42, [v4 shouldReverseForRTLLayout]);

    v5 = v46;
  }

  else
  {
    v43 = [v16 copy];
  }

  return v43;
}

void _MUFetchBadgeIconWithStyleAttributes(void *a1, char a2, void *a3)
{
  v5 = a1;
  v6 = MEMORY[0x1E69E96A0];
  v7 = MEMORY[0x1E69E96A0];
  v8 = a3;
  v9 = v8;
  if (v5)
  {
    v10 = [MEMORY[0x1E696F3B8] sharedInstance];
    [v10 screenScale];
    v12 = v11;

    if (_MUIconFetchingQueue_onceToken != -1)
    {
      dispatch_once(&_MUIconFetchingQueue_onceToken, &__block_literal_global_19250);
    }

    v13 = _MUIconFetchingQueue_iconFetchQueue;
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = ___MUFetchBadgeIconWithStyleAttributes_block_invoke;
    v15[3] = &unk_1E821A008;
    v16 = v5;
    v19 = 5;
    v20 = v12;
    v21 = a2;
    v14 = v6;
    v17 = v6;
    v18 = v9;
    dispatch_async(v13, v15);
  }

  else
  {
    (*(v8 + 2))(v8, 0, 0, 0);
  }
}

void sub_1C5829058(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1C582A8C0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_1C582C77C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_1C582D4AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1C582D71C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1C582EE28(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id MUGetMUPlacePhotoVCLog()
{
  if (MUGetMUPlacePhotoVCLog_onceToken != -1)
  {
    dispatch_once(&MUGetMUPlacePhotoVCLog_onceToken, &__block_literal_global_20489);
  }

  v1 = MUGetMUPlacePhotoVCLog_log;

  return v1;
}

uint64_t __MUGetMUPlacePhotoVCLog_block_invoke()
{
  v0 = os_log_create("com.apple.MapsUI", "MUPlacePhotoVC");
  v1 = MUGetMUPlacePhotoVCLog_log;
  MUGetMUPlacePhotoVCLog_log = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

void sub_1C58307B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1C5833920(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, id location)
{
  objc_destroyWeak((v33 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1C5833CE0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1C583429C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1C58348F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1C5834DAC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location)
{
  objc_destroyWeak((v21 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1C583578C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 128));
  _Unwind_Resume(a1);
}

void sub_1C5835BF0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1C5837198(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, id location, id a25)
{
  objc_destroyWeak((v25 + 40));
  objc_destroyWeak((v25 + 32));
  objc_destroyWeak(&location);
  objc_destroyWeak(&a25);
  objc_destroyWeak(v26 + 6);
  objc_destroyWeak(v26 + 5);
  objc_destroyWeak(v26 + 4);
  objc_destroyWeak((v27 - 128));
  objc_destroyWeak((v27 - 120));
  objc_destroyWeak((v27 - 112));
  _Unwind_Resume(a1);
}

id MUGetMUPlaceActionBarSectionControllerLog()
{
  if (MUGetMUPlaceActionBarSectionControllerLog_onceToken != -1)
  {
    dispatch_once(&MUGetMUPlaceActionBarSectionControllerLog_onceToken, &__block_literal_global_113);
  }

  v1 = MUGetMUPlaceActionBarSectionControllerLog_log;

  return v1;
}

uint64_t __MUGetMUPlaceActionBarSectionControllerLog_block_invoke()
{
  v0 = os_log_create("com.apple.MapsUI", "MUPlaceActionBarSectionController");
  v1 = MUGetMUPlaceActionBarSectionControllerLog_log;
  MUGetMUPlaceActionBarSectionControllerLog_log = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

void sub_1C5837FD0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id MUGetMUPlaceTilesViewLog()
{
  if (MUGetMUPlaceTilesViewLog_onceToken != -1)
  {
    dispatch_once(&MUGetMUPlaceTilesViewLog_onceToken, &__block_literal_global_21754);
  }

  v1 = MUGetMUPlaceTilesViewLog_log;

  return v1;
}

uint64_t __MUGetMUPlaceTilesViewLog_block_invoke()
{
  v0 = os_log_create("com.apple.MapsUI", "MUPlaceTilesView");
  v1 = MUGetMUPlaceTilesViewLog_log;
  MUGetMUPlaceTilesViewLog_log = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

void sub_1C583BC68(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1C583DB04(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 72));
  _Unwind_Resume(a1);
}

id MUGetMUWebContentLog_22854()
{
  if (MUGetMUWebContentLog_onceToken_22856 != -1)
  {
    dispatch_once(&MUGetMUWebContentLog_onceToken_22856, &__block_literal_global_303);
  }

  v1 = MUGetMUWebContentLog_log_22857;

  return v1;
}

uint64_t __MUGetMUWebContentLog_block_invoke_22859()
{
  v0 = os_log_create("com.apple.MapsUI", "MUWebContent");
  v1 = MUGetMUWebContentLog_log_22857;
  MUGetMUWebContentLog_log_22857 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

void sub_1C583E0A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location)
{
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1C583ECF0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v5 + 32));
  objc_destroyWeak((v4 + 32));
  objc_destroyWeak((v3 + 32));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v6 - 104));
  _Unwind_Resume(a1);
}

id MUGetMUAMSResultProviderLog()
{
  if (MUGetMUAMSResultProviderLog_onceToken != -1)
  {
    dispatch_once(&MUGetMUAMSResultProviderLog_onceToken, &__block_literal_global_23060);
  }

  v1 = MUGetMUAMSResultProviderLog_log;

  return v1;
}

uint64_t __MUGetMUAMSResultProviderLog_block_invoke()
{
  v0 = os_log_create("com.apple.MapsUI", "MUAMSResultProvider");
  v1 = MUGetMUAMSResultProviderLog_log;
  MUGetMUAMSResultProviderLog_log = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

id MUGetMUPlaceCardImpressionLoggingLog()
{
  if (MUGetMUPlaceCardImpressionLoggingLog_onceToken != -1)
  {
    dispatch_once(&MUGetMUPlaceCardImpressionLoggingLog_onceToken, &__block_literal_global_23148);
  }

  v1 = MUGetMUPlaceCardImpressionLoggingLog_log;

  return v1;
}

uint64_t __MUGetMUPlaceCardImpressionLoggingLog_block_invoke()
{
  v0 = os_log_create("com.apple.MapsUI", "MUPlaceCardImpressionLogging");
  v1 = MUGetMUPlaceCardImpressionLoggingLog_log;
  MUGetMUPlaceCardImpressionLoggingLog_log = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

void ___punchOutForAnnotatedList_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = a2;
  v5 = a3;
  v6 = MUGetPlaceCardLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = [v4 absoluteString];
    v8 = 138412546;
    v9 = v7;
    v10 = 2112;
    v11 = v5;
    _os_log_impl(&dword_1C5620000, v6, OS_LOG_TYPE_INFO, "Punched out annotated list with url %@ url and bundle identifier %@", &v8, 0x16u);
  }
}

id MUGetMUPhotoSliderTileProviderLog()
{
  if (MUGetMUPhotoSliderTileProviderLog_onceToken != -1)
  {
    dispatch_once(&MUGetMUPhotoSliderTileProviderLog_onceToken, &__block_literal_global_64_24275);
  }

  v1 = MUGetMUPhotoSliderTileProviderLog_log;

  return v1;
}

uint64_t __MUGetMUPhotoSliderTileProviderLog_block_invoke()
{
  v0 = os_log_create("com.apple.MapsUI", "MUPhotoSliderTileProvider");
  v1 = MUGetMUPhotoSliderTileProviderLog_log;
  MUGetMUPhotoSliderTileProviderLog_log = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

uint64_t __MUGetMUWebContentLog_block_invoke_24342()
{
  v0 = os_log_create("com.apple.MapsUI", "MUWebContent");
  v1 = MUGetMUWebContentLog_log_24338;
  MUGetMUWebContentLog_log_24338 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

id MUGetPlaceCardLog()
{
  if (MUGetPlaceCardLog_onceToken != -1)
  {
    dispatch_once(&MUGetPlaceCardLog_onceToken, &__block_literal_global_24349);
  }

  v1 = MUGetPlaceCardLog_log;

  return v1;
}

uint64_t __MUGetPlaceCardLog_block_invoke()
{
  v0 = os_log_create("com.apple.MapsUI", "PlaceCard");
  v1 = MUGetPlaceCardLog_log;
  MUGetPlaceCardLog_log = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

id MUGetShareSheetLog()
{
  if (MUGetShareSheetLog_onceToken != -1)
  {
    dispatch_once(&MUGetShareSheetLog_onceToken, &__block_literal_global_8);
  }

  v1 = MUGetShareSheetLog_log;

  return v1;
}

uint64_t __MUGetShareSheetLog_block_invoke()
{
  v0 = os_log_create("com.apple.MapsUI", "ShareSheet");
  v1 = MUGetShareSheetLog_log;
  MUGetShareSheetLog_log = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

void sub_1C584B6A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1C584CB80(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1C584D548(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, id location)
{
  objc_destroyWeak((v42 + 32));
  objc_destroyWeak(&a41);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1C584DEF0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
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

CGRect CGRectIntegral(CGRect rect)
{
  MEMORY[0x1EEDBAE38](rect.origin, *&rect.origin.y, rect.size, *&rect.size.height);
  result.size.height = v4;
  result.size.width = v3;
  result.origin.y = v2;
  result.origin.x = v1;
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

CGRect CGRectUnion(CGRect r1, CGRect r2)
{
  MEMORY[0x1EEDBAE88](r1.origin, *&r1.origin.y, r1.size, *&r1.size.height, r2.origin, *&r2.origin.y, r2.size, *&r2.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

CLLocationCoordinate2D CLLocationCoordinate2DMake(CLLocationDegrees latitude, CLLocationDegrees longitude)
{
  MEMORY[0x1EEDE89C8](latitude, longitude);
  result.longitude = v3;
  result.latitude = v2;
  return result;
}

__double2 __sincos_stret(double a1)
{
  MEMORY[0x1EEE73570](a1);
  result.__cosval = v2;
  result.__sinval = v1;
  return result;
}