uint64_t sub_25AF20AC4(uint64_t a1)
{
  sub_25B005B34();
  sub_25B005B24();
  sub_25B005AE4();
  result = swift_task_isCurrentExecutor();
  if ((result & 1) == 0)
  {
    result = swift_task_reportUnexpectedExecutor();
  }

  v3 = *(a1 + 32);
  v4 = qword_27FA30B10;
  if (v3 > 0xFD)
  {
    if (qword_27FA30B10)
    {
      v5 = *(qword_27FA30B10 + OBJC_IVAR____TtC17NanoControlCenter11GlanceModel_editDoneButtonModel);

      goto LABEL_8;
    }

    __break(1u);
LABEL_14:
    __break(1u);
    return result;
  }

  if (!qword_27FA30B10)
  {
    goto LABEL_14;
  }

  v7 = *(a1 + 8);
  v8 = *(a1 + 16);
  v9 = *(a1 + 24);
  *&v15 = *a1;
  v6 = v15;
  *(&v15 + 1) = v7;
  v16 = v8;
  v17 = v9;
  v18 = v3;
  v10 = *(a1 + *(type metadata accessor for LabelOpacityEffect(0) + 20));
  sub_25AF1D7EC(v15, v7, v8, v9, v3);
  v11 = v4;
  v5 = sub_25AF730A0(&v15, (v10 & 1) == 0);

  sub_25AF231D0(v6, v7, v8, v9, v3);
LABEL_8:
  v12 = *(v5 + OBJC_IVAR____TtC17NanoControlCenter17GlanceButtonModel_visualsModel);

  sub_25AF205EC();
  if ((v13 & 1) == *(v12 + 202))
  {
    *(v12 + 202) = v13 & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    *&v15 = v12;
    sub_25AF23F7C(&qword_27FA23D58, type metadata accessor for ControlCenterStyle.VisualsModel, &unk_25B0108CC);
    sub_25B004224();
  }
}

void sub_25AF20D80(char a1, uint64_t a2, char a3)
{
  v6 = sub_25B004B14();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0) + 8;
  if (a3)
  {
    if (a2 != 2)
    {
      return;
    }
  }

  else
  {

    sub_25B005CC4();
    v10 = sub_25B004F24();
    sub_25B0044A4();

    sub_25B004B04();
    swift_getAtKeyPath();
    sub_25AF241CC(a2, 0);
    (*(v7 + 8))(v9, v6);
    if (v17[0] != 2)
    {
      return;
    }
  }

  v11 = qword_27FA30B10;
  if (!qword_27FA30B10)
  {
    __break(1u);
LABEL_11:
    __break(1u);
    return;
  }

  swift_getKeyPath();
  *v17 = v11;
  sub_25AF23F7C(&qword_27FA25250, type metadata accessor for GlanceModel, &protocol conformance descriptor for GlanceModel);
  v12 = v11;
  sub_25B004234();

  v13 = OBJC_IVAR____TtC17NanoControlCenter11GlanceModel__editMode;
  swift_beginAccess();
  LOBYTE(v13) = v12[v13];

  if ((v13 & 1) == 0)
  {
    v14 = qword_27FA30B10;
    if (qword_27FA30B10)
    {
      swift_getKeyPath();
      v16 = v14;
      v15 = v14;
      sub_25B004234();

      swift_beginAccess();

      sub_25AF258CC(a1 & 1);
      return;
    }

    goto LABEL_11;
  }
}

void *sub_25AF21018(uint64_t a1, char a2, uint64_t a3, char a4)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA23FA0, &qword_25B00A548);
  MEMORY[0x28223BE20](v9);
  v11 = &v18 - v10;
  sub_25AF20D80(a2, a3, a4 & 1);
  if (v12)
  {
    sub_25B004BC4();
    *v11 = sub_25B005094();
    *(v11 + 1) = v13;
    v11[16] = v14 & 1;
    *(v11 + 3) = v15;
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA23FA8, &qword_25B00A550);
  }

  else
  {
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA23FA8, &qword_25B00A550);
    (*(*(v16 - 8) + 16))(v11, a1, v16);
    swift_storeEnumTagMultiPayload();
  }

  sub_25AF0F274(&qword_27FA23FB0, &qword_27FA23FA8, &qword_25B00A550, MEMORY[0x277CE04B0]);
  return sub_25B004C74();
}

uint64_t sub_25AF2121C(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_25AF21254()
{
  result = qword_27FA23C30;
  if (!qword_27FA23C30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA23BB0, &qword_25B009518);
    sub_25AF21310();
    sub_25AF23F7C(&qword_27FA23C68, type metadata accessor for LabelOpacityEffect, &unk_25B009AF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA23C30);
  }

  return result;
}

unint64_t sub_25AF21310()
{
  result = qword_27FA23C38;
  if (!qword_27FA23C38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA23C40, &qword_25B009590);
    sub_25AF213C8();
    sub_25AF0F274(&qword_27FA23C00, &qword_27FA23C08, &qword_25B009548, MEMORY[0x277CE04A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA23C38);
  }

  return result;
}

unint64_t sub_25AF213C8()
{
  result = qword_27FA23C48;
  if (!qword_27FA23C48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA23C28, &qword_25B009588);
    v3 = sub_25AF0F274(&qword_27FA23C50, &qword_27FA23C58, &qword_25B009598, MEMORY[0x277CDD870]);
    sub_25AF21480(v3, v1, v2);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA23C48);
  }

  return result;
}

unint64_t sub_25AF21480(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27FA23C60;
  if (!qword_27FA23C60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA23C60);
  }

  return result;
}

uint64_t sub_25AF214E4(__int16 a1, uint64_t a2, char a3)
{
  v6 = sub_25B004B14();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v10 = &v15[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if ((a1 & 0x100) == 0)
  {
    goto LABEL_2;
  }

  if (a3)
  {
    if (a2 == 2)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v12 = v8;

    sub_25B005CC4();
    v13 = sub_25B004F24();
    sub_25B0044A4();

    sub_25B004B04();
    swift_getAtKeyPath();
    sub_25AF241CC(a2, 0);
    (*(v7 + 8))(v10, v12);
    if (v15[15] == 2)
    {
LABEL_7:
      v11 = sub_25AF258CC(a1 & 1) ^ 1;
      return v11 & 1;
    }
  }

LABEL_2:
  v11 = 0;
  return v11 & 1;
}

double sub_25AF21664@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (v2[1])
  {
    v5 = 256;
  }

  else
  {
    v5 = 0;
  }

  sub_25AF214E4(v5 | *v2, *(v2 + 1), v2[16]);
  sub_25B0056B4();
  sub_25B0046D4();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA23E58, &qword_25B00A1E0);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  v7 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA23E60, &qword_25B00A1E8) + 36));
  *v7 = v9;
  v7[1] = v10;
  result = *&v11;
  v7[2] = v11;
  return result;
}

void sub_25AF2175C()
{
  v1 = *(v0 + 32);
  v2 = qword_27FA30B10;
  if (v1 <= 0xFD)
  {
    if (qword_27FA30B10)
    {
      v4 = *v0;
      v5 = *(v0 + 8);
      v6 = *(v0 + 16);
      v7 = *(v0 + 24);
      v8 = *(v0 + 49);
      *&v10 = v4;
      *(&v10 + 1) = v5;
      v11 = v6;
      v12 = v7;
      v13 = v1;
      sub_25AF1D7EC(v4, v5, v6, v7, v1);
      v9 = v2;
      v3 = sub_25AF730A0(&v10, v8 ^ 1u);

      sub_25AF231D0(v4, v5, v6, v7, v1);
      goto LABEL_6;
    }
  }

  else
  {
    if (qword_27FA30B10)
    {
      v3 = *(qword_27FA30B10 + OBJC_IVAR____TtC17NanoControlCenter11GlanceModel_editDoneButtonModel);

LABEL_6:
      swift_getKeyPath();
      *&v10 = v3;
      sub_25AF23F7C(&qword_27FA25270, type metadata accessor for GlanceButtonModel, &unk_25B011C14);
      sub_25B004234();

      return;
    }

    __break(1u);
  }

  __break(1u);
}

void sub_25AF218BC()
{
  v0 = qword_27FA30B10;
  if (!qword_27FA30B10)
  {
    __break(1u);
LABEL_7:
    __break(1u);
    return;
  }

  swift_getKeyPath();
  sub_25AF23F7C(&qword_27FA25250, type metadata accessor for GlanceModel, &protocol conformance descriptor for GlanceModel);
  v1 = v0;
  sub_25B004234();

  v2 = *&v1[OBJC_IVAR____TtC17NanoControlCenter11GlanceModel__currentTransition];

  if (v2)
  {
    v3 = qword_27FA30B10;
    if (qword_27FA30B10)
    {
      swift_getKeyPath();
      v4 = v3;
      sub_25B004234();

      return;
    }

    goto LABEL_7;
  }
}

uint64_t sub_25AF219FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA23F10, &qword_25B00A348);
  MEMORY[0x28223BE20](v5);
  v7 = &v21 - v6;
  v28 = *(v2 + 24);
  v8 = v2[1];
  v25 = *v2;
  v26 = v8;
  v27 = v2[2];
  if ((v28 & 1) != 0 && (v28 & 0x100) != 0 && (v9 = v2[1], v21 = *v2, v22 = v9, v23 = v2[2], v24 = *(v2 + 24), sub_25AF218BC(), (v10 & 1) == 0))
  {
    v21 = v25;
    v22 = v26;
    v23 = v27;
    v24 = v28;
    sub_25AF2175C();
    v11 = v20;
  }

  else
  {
    v11 = 1;
  }

  v12 = swift_allocObject();
  *(v12 + 16) = v11 & 1;
  v13 = swift_allocObject();
  v14 = v26;
  *(v13 + 16) = v25;
  *(v13 + 32) = v14;
  *(v13 + 48) = v27;
  *(v13 + 64) = v28;
  v15 = swift_allocObject();
  *(v15 + 16) = sub_25AF260EC;
  *(v15 + 24) = v13;
  v16 = swift_allocObject();
  *(v16 + 16) = sub_25AF26130;
  *(v16 + 24) = v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA23F18, &qword_25B00A350);
  (*(*(v17 - 8) + 16))(v7, a1, v17);
  v18 = &v7[*(v5 + 36)];
  *v18 = sub_25AF2609C;
  v18[1] = v12;
  v18[2] = sub_25AF2613C;
  v18[3] = v16;
  sub_25AF25B0C(v7, a2, &qword_27FA23F10, &qword_25B00A348);
  return sub_25AF26170(&v25, &v21);
}

void sub_25AF21C50(char a1@<W1>, uint64_t a2@<X8>)
{
  v4 = sub_25B004C94();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MinY = 0.0;
  if ((a1 & 1) == 0)
  {
    v17[0] = 0xD00000000000001ELL;
    v17[1] = 0x800000025B016770;
    sub_25B004D74();
    sub_25B004734();
    v10 = v9;
    v12 = v11;
    v14 = v13;
    v16 = v15;
    (*(v5 + 8))(v7, v4);
    v18.origin.x = v10;
    v18.origin.y = v12;
    v18.size.width = v14;
    v18.size.height = v16;
    MinY = CGRectGetMinY(v18);
  }

  *a2 = MinY;
  *(a2 + 8) = a1 & 1;
}

uint64_t sub_25AF21DB4(uint64_t a1, char a2, uint64_t a3)
{
  sub_25B005B34();
  sub_25B005B24();
  sub_25B005AE4();
  result = swift_task_isCurrentExecutor();
  if ((result & 1) == 0)
  {
    result = swift_task_reportUnexpectedExecutor();
  }

  if (a2)
  {
  }

  else if (qword_27FA30B10)
  {
    swift_beginAccess();
    v7 = *(a3 + 40);

    sub_25AF31AC4(v7, *&a1);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_25AF21EEC(uint64_t a1, char a2, void (*a3)(uint64_t, void))
{
  sub_25B005B34();
  sub_25B005B24();
  sub_25B005AE4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  a3(a1, a2 & 1);
}

uint64_t sub_25AF21FC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, char a3@<W3>, uint64_t a4@<X8>)
{
  v8 = sub_25B004B14();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3)
  {
    v12 = a2;
  }

  else
  {

    sub_25B005CC4();
    v13 = sub_25B004F24();
    sub_25B0044A4();

    sub_25B004B04();
    swift_getAtKeyPath();
    sub_25AF241CC(a2, 0);
    (*(v9 + 8))(v11, v8);
    v12 = v20;
  }

  v14 = 0;
  if (v12 == 2)
  {
    v15 = sub_25AFB6BB4();
    swift_getKeyPath();
    v19 = v15;
    sub_25AF23F7C(&qword_27FA23D20, type metadata accessor for GlanceButtonModel.OverscrollModel, &unk_25B011B8C);
    sub_25B004234();

    v14 = *(v15 + 16);
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA23D28, &qword_25B009CA8);
  (*(*(v16 - 8) + 16))(a4, a1, v16);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA23D30, &qword_25B009CB0);
  v18 = (a4 + *(result + 36));
  *v18 = 0;
  v18[1] = v14;
  return result;
}

void sub_25AF22238(uint64_t a1)
{
  v15 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA23C98, &qword_25B009BE0);
  MEMORY[0x28223BE20](v2);
  v4 = &v13 - v3;
  v5 = qword_27FA30B10;
  if (qword_27FA30B10)
  {
    v6 = *v1;
    v13 = v1[1];
    v14 = v6;
    v7 = *(v1 + 32);
    v8 = *(v1 + 5);
    swift_getKeyPath();
    *&v16 = v5;
    sub_25AF23F7C(&qword_27FA25250, type metadata accessor for GlanceModel, &protocol conformance descriptor for GlanceModel);
    v9 = v5;
    sub_25B004234();

    v10 = OBJC_IVAR____TtC17NanoControlCenter11GlanceModel__editMode;
    swift_beginAccess();
    LODWORD(v10) = v9[v10];

    if (v10 == 1)
    {
      v16 = v14;
      v17 = v13;
      v18 = v7;
      v19 = v8;
      sub_25AF224D8(v4);
      v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA23CA0, &qword_25B009C10);
      (*(*(v11 - 8) + 56))(v4, 0, 1, v11);
    }

    else
    {
      v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA23CA0, &qword_25B009C10);
      (*(*(v12 - 8) + 56))(v4, 1, 1, v12);
    }

    sub_25B0045B4();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA23CA8, &qword_25B009C18);
    sub_25AF0F274(&qword_27FA23CB0, &qword_27FA23CA8, &qword_25B009C18, MEMORY[0x277CE04B0]);
    sub_25AF23FC4();
    sub_25B0052C4();
    sub_25AF2602C(v4, &qword_27FA23C98, &qword_25B009BE0);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_25AF224D8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v22[1] = a1;
  v22[0] = sub_25B004C94();
  MEMORY[0x28223BE20](v22[0]);
  v3 = sub_25B004D94();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA23CC8, &qword_25B009C20);
  MEMORY[0x28223BE20](v7);
  v9 = v22 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA23CD0, &qword_25B009C28);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = v22 - v12;
  v14 = v2[1];
  v24 = *v2;
  v25 = v14;
  v26 = v2[2];
  sub_25B004D84();
  v15 = swift_allocObject();
  v16 = v25;
  v15[1] = v24;
  v15[2] = v16;
  v15[3] = v26;
  sub_25AF24080(&v24, v23);
  sub_25AF23F7C(&qword_27FA23CD8, MEMORY[0x277CDE208], MEMORY[0x277CDE200]);
  sub_25B005594();

  (*(v4 + 8))(v6, v3);
  sub_25B004D64();
  sub_25B004554();
  v17 = swift_allocObject();
  v18 = v25;
  v17[1] = v24;
  v17[2] = v18;
  v17[3] = v26;
  sub_25AF24080(&v24, v23);
  sub_25AF0F274(&qword_27FA23CE0, &qword_27FA23CC8, &qword_25B009C20, MEMORY[0x277CDDA40]);
  sub_25AF240C0();
  sub_25B0055A4();

  sub_25AF2602C(v9, &qword_27FA23CC8, &qword_25B009C20);
  v19 = swift_allocObject();
  v20 = v25;
  v19[1] = v24;
  v19[2] = v20;
  v19[3] = v26;
  sub_25AF24080(&v24, v23);
  sub_25AF0F274(&qword_27FA23D00, &qword_27FA23CD0, &qword_25B009C28, MEMORY[0x277CDFB18]);
  sub_25B005594();

  return (*(v11 + 8))(v13, v10);
}

void sub_25AF22928(uint64_t a1, __int128 *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA23D08, &qword_25B00E1F0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v19 - v4;
  sub_25B005B34();
  sub_25B005B24();
  sub_25B005AE4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (!qword_27FA30B10)
  {
    __break(1u);
    goto LABEL_8;
  }

  swift_beginAccess();
  v6 = *(a2 + 5);

  sub_25AF31D44(v6);
  v8 = v7;

  v9 = qword_27FA30B10;
  if (!qword_27FA30B10)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v10 = OBJC_IVAR____TtC17NanoControlCenter11GlanceModel_buttonLayout;
  swift_beginAccess();
  v11 = *(v9 + v10);
  swift_getKeyPath();
  v21[0] = v11;
  sub_25AF23F7C(&qword_27FA23D18, type metadata accessor for ButtonLayout, &protocol conformance descriptor for ButtonLayout);

  sub_25B004234();

  swift_beginAccess();
  v12 = *(v11 + 96);

  if (qword_27FA30B10)
  {
    v13 = *(a2 + 32);
    v14 = *(qword_27FA30B10 + OBJC_IVAR____TtC17NanoControlCenter11GlanceModel_draggingModel);
    v15 = qword_27FA30B10;
    v16 = a2[1];
    v20 = *a2;
    v19 = v16;
    *(v14 + 32) = v8 - v12;
    *(v14 + 40) = 0;
    sub_25AFEC930();
    sub_25AF64634(v17);
    v18 = sub_25B004594();
    (*(*(v18 - 8) + 56))(v5, 1, 1, v18);
    sub_25AF659A4(v5);
    v22[0] = v20;
    v22[1] = v19;
    v23 = v13;
    sub_25AF24080(a2, v21);
    sub_25AF74C58(v22);

    return;
  }

LABEL_9:
  __break(1u);
}

void sub_25AF22C20(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA23D08, &qword_25B00E1F0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v20 - v3;
  v5 = sub_25B004594();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA23CF0, &unk_25B009C30);
  MEMORY[0x28223BE20](v9);
  v11 = &v20 - v10;
  sub_25B005B34();
  sub_25B005B24();
  sub_25B005AE4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_25AF25FC4(a1, v11, &qword_27FA23CF0, &unk_25B009C30);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v13 = *v11;
  if (EnumCaseMultiPayload != 1)
  {
    if (*v11)
    {
      goto LABEL_9;
    }

    goto LABEL_11;
  }

  v14 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA23D10, qword_25B009C40) + 48);
  if (!v13)
  {
    sub_25AF2602C(&v11[v14], &qword_27FA23D08, &qword_25B00E1F0);
LABEL_11:
    if (qword_27FA23800 != -1)
    {
      swift_once();
    }

    v15 = sub_25B0044C4();
    __swift_project_value_buffer(v15, qword_27FA30C28);
    v16 = sub_25B0044B4();
    v17 = sub_25B005CB4();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v21 = v19;
      *v18 = 136315138;
      *(v18 + 4) = sub_25AF8E7DC(0x7473654767617264, 0xEB00000000657275, &v21);
      _os_log_impl(&dword_25AF0B000, v16, v17, "%s unexpected case — longPressGesture failed?", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v19);
      MEMORY[0x25F85EC30](v19, -1, -1);
      MEMORY[0x25F85EC30](v18, -1, -1);
    }

    return;
  }

  if ((*(v6 + 48))(&v11[v14], 1, v5) == 1)
  {
LABEL_9:

    return;
  }

  (*(v6 + 32))(v8, &v11[v14], v5);
  if (qword_27FA30B10)
  {
    (*(v6 + 16))(v4, v8, v5);
    (*(v6 + 56))(v4, 0, 1, v5);

    sub_25AF659A4(v4);

    (*(v6 + 8))(v8, v5);
    goto LABEL_9;
  }

  __break(1u);
}

void sub_25AF2304C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA23D08, &qword_25B00E1F0);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = v5 - v1;
  sub_25B005B34();
  sub_25B005B24();
  sub_25B005AE4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (qword_27FA30B10)
  {
    v3 = qword_27FA30B10;
    sub_25AF64634(0);
    v4 = sub_25B004594();
    (*(*(v4 - 8) + 56))(v2, 1, 1, v4);
    sub_25AF659A4(v2);
    memset(v5, 0, sizeof(v5));
    v6 = -2;
    sub_25AF74C58(v5);
  }

  else
  {
    __break(1u);
  }
}

void *sub_25AF231D0(void *result, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  if (a5 <= 0xFDu)
  {
    return sub_25AF18128(result, a2, a3, a4, a5);
  }

  return result;
}

double sub_25AF231E4@<D0>(uint64_t *a1@<X0>, double *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_25AF23F7C(&qword_27FA23D20, type metadata accessor for GlanceButtonModel.OverscrollModel, &unk_25B011B8C);
  sub_25B004234();

  result = *(v3 + 16);
  *a2 = result;
  return result;
}

id sub_25AF232B4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_25AF23F7C(&qword_27FA23D60, type metadata accessor for EditingModel, &unk_25B013C30);
  sub_25B004234();

  v4 = *(v3 + 24);
  v5 = *(v3 + 32);
  v6 = *(v3 + 40);
  v7 = *(v3 + 48);
  *a2 = v4;
  *(a2 + 8) = v5;
  *(a2 + 16) = v6;
  *(a2 + 24) = v7;
  v8 = *(v3 + 56);
  *(a2 + 32) = v8;
  return sub_25AF1D7EC(v4, v5, v6, v7, v8);
}

void sub_25AF23370(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  *&v5 = *a1;
  *(&v5 + 1) = v1;
  v6 = v2;
  v7 = v3;
  v8 = v4;
  sub_25AF1D7EC(v5, v1, v2, v3, v4);
  sub_25AFDB57C(&v5);
}

uint64_t sub_25AF233C4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_25B004A74();
  *a1 = result;
  return result;
}

uint64_t sub_25AF2341C(uint64_t a1)
{
  v2 = sub_25B005064();
  v3 = MEMORY[0x28223BE20](v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  return sub_25B0049A4();
}

uint64_t sub_25AF234E4(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v5 = *(a1 + 16);
  v4 = *(a1 + 24);
  v6 = *(a1 + 32);
  v8 = *a2;
  v7 = *(a2 + 8);
  v10 = *(a2 + 16);
  v9 = *(a2 + 24);
  v11 = *(a2 + 32);
  if (v6 <= 0xFD)
  {
    if (v11 > 0xFD)
    {
      goto LABEL_10;
    }

    v27 = *a1;
    v28 = v2;
    v29 = v5;
    v30 = v4;
    v31 = v6;
    v22 = v8;
    v23 = v7;
    v24 = v10;
    v25 = v9;
    v26 = v11;
    sub_25AF1D7EC(v3, v2, v5, v4, v6);
    sub_25AF1D7EC(v8, v7, v10, v9, v11);
    sub_25AF1D7EC(v3, v2, v5, v4, v6);
    sub_25AF181DC(v3, v2, v5, v4, v6);
    v12 = sub_25AFD33F0(&v27, &v22);
    sub_25AF18128(v22, v23, v24, v25, v26);
    sub_25AF18128(v27, v28, v29, v30, v31);
    sub_25AF18128(v3, v2, v5, v4, v6);
    sub_25AF231D0(v3, v2, v5, v4, v6);
    if ((v12 & 1) == 0)
    {
      goto LABEL_12;
    }
  }

  else
  {
    sub_25AF1D7EC(*a1, v2, v5, v4, v6);
    sub_25AF1D7EC(v8, v7, v10, v9, v11);
    if (v11 <= 0xFD)
    {
      goto LABEL_11;
    }

    sub_25AF231D0(v3, v2, v5, v4, v6);
  }

  v3 = *(a1 + 40);
  v2 = *(a1 + 48);
  v5 = *(a1 + 56);
  v4 = *(a1 + 64);
  v6 = *(a1 + 72);
  v8 = *(a2 + 40);
  v7 = *(a2 + 48);
  v10 = *(a2 + 56);
  v9 = *(a2 + 64);
  v11 = *(a2 + 72);
  if (v6 > 0xFD)
  {
    sub_25AF1D7EC(*(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 64), *(a1 + 72));
    sub_25AF1D7EC(v8, v7, v10, v9, v11);
    if (v11 > 0xFD)
    {
      sub_25AF231D0(v3, v2, v5, v4, v6);
      goto LABEL_15;
    }

LABEL_11:
    v27 = v3;
    v28 = v2;
    v29 = v5;
    v30 = v4;
    v31 = v6;
    v32 = v8;
    v33 = v7;
    v34 = v10;
    v35 = v9;
    v36 = v11;
    sub_25AF2602C(&v27, &qword_27FA23C70, &unk_25B0095A0);
    goto LABEL_12;
  }

  if (v11 > 0xFD)
  {
LABEL_10:
    sub_25AF1D7EC(v3, v2, v5, v4, v6);
    sub_25AF1D7EC(v8, v7, v10, v9, v11);
    sub_25AF1D7EC(v3, v2, v5, v4, v6);
    sub_25AF18128(v3, v2, v5, v4, v6);
    goto LABEL_11;
  }

  v27 = *(a1 + 40);
  v28 = v2;
  v29 = v5;
  v30 = v4;
  v31 = v6;
  v22 = v8;
  v23 = v7;
  v24 = v10;
  v25 = v9;
  v26 = v11;
  sub_25AF1D7EC(v3, v2, v5, v4, v6);
  sub_25AF1D7EC(v8, v7, v10, v9, v11);
  sub_25AF1D7EC(v3, v2, v5, v4, v6);
  sub_25AF181DC(v3, v2, v5, v4, v6);
  v15 = sub_25AFD33F0(&v27, &v22);
  sub_25AF18128(v22, v23, v24, v25, v26);
  sub_25AF18128(v27, v28, v29, v30, v31);
  sub_25AF18128(v3, v2, v5, v4, v6);
  sub_25AF231D0(v3, v2, v5, v4, v6);
  if ((v15 & 1) == 0)
  {
    goto LABEL_12;
  }

LABEL_15:
  if (*(a1 + 73) != *(a2 + 73) || *(a1 + 80) != *(a2 + 80))
  {
    goto LABEL_12;
  }

  v16 = *(a1 + 88);
  v17 = *(a2 + 88);
  if (v16 == 2)
  {
    if (v17 == 2)
    {
      goto LABEL_22;
    }

LABEL_12:
    v13 = 0;
    return v13 & 1;
  }

  v13 = 0;
  if (v17 != 2 && ((v17 ^ v16) & 1) == 0)
  {
LABEL_22:
    v18 = type metadata accessor for ButtonAndLabel(0);
    if (*(a1 + *(v18 + 36)) == *(a2 + *(v18 + 36)))
    {
      v19 = v18;
      type metadata accessor for ButtonAndLabel.ParentState(0);
      if (sub_25B004834())
      {
        v13 = *(a1 + *(v19 + 40)) ^ *(a2 + *(v19 + 40)) ^ 1;
        return v13 & 1;
      }
    }

    goto LABEL_12;
  }

  return v13 & 1;
}

uint64_t sub_25AF23944(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 124)
  {
    v4 = ((*(a1 + 32) >> 6) & 0xFFFFFF83 | (4 * ((*(a1 + 32) >> 1) & 0x1F))) ^ 0x7F;
    if (v4 >= 0x7D)
    {
      return 0;
    }

    else
    {
      return v4;
    }
  }

  else
  {
    v8 = type metadata accessor for ButtonAndLabel.ParentState(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_25AF23A08(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 124)
  {
    *result = 0u;
    *(result + 16) = 0u;
    *(result + 32) = ((~a2 & 0x7Cu) >> 1) | (~a2 << 6);
  }

  else
  {
    v7 = type metadata accessor for ButtonAndLabel.ParentState(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_25AF23AC0(uint64_t a1)
{
  sub_25AF1C95C(319, &qword_27FA23B90, &type metadata for GlanceButtonID);
  if (v1 <= 0x3F)
  {
    type metadata accessor for ButtonAndLabel.ParentState(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_25AF23B74(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 17))
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

uint64_t sub_25AF23BBC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 17) = 1;
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

    *(result + 17) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_17NanoControlCenter14GlanceButtonIDVSg(uint64_t a1)
{
  v1 = (*(a1 + 32) >> 6) & 0xFFFFFF83 | (4 * ((*(a1 + 32) >> 1) & 0x1F));
  v2 = v1 ^ 0x7F;
  v3 = 128 - v1;
  if (v2 >= 0x7D)
  {
    return 0;
  }

  else
  {
    return v3;
  }
}

__n128 __swift_memcpy51_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 47) = *(a2 + 47);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_25AF23C5C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 51))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 40);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_25AF23CA4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 50) = 0;
    *(result + 48) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 51) = 1;
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
      *(result + 40) = (a2 - 1);
      return result;
    }

    *(result + 51) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_25AF23D08(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7E && *(a1 + 48))
  {
    return (*a1 + 126);
  }

  v3 = ((*(a1 + 32) >> 6) & 0xFFFFFF83 | (4 * ((*(a1 + 32) >> 1) & 0x1F))) ^ 0x7F;
  if (v3 >= 0x7D)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_25AF23D5C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7D)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 126;
    if (a3 >= 0x7E)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7E)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      *result = 0u;
      *(result + 16) = 0u;
      *(result + 32) = 2 * (((-a2 >> 2) & 0x1F) - 32 * a2);
    }
  }

  return result;
}

__n128 __swift_memcpy49_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_25AF23DEC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 49))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 33);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_25AF23E40(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 49) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 49) = 0;
    }

    if (a2)
    {
      *(result + 33) = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_25AF23F7C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_25AF23FC4()
{
  result = qword_27FA23CB8;
  if (!qword_27FA23CB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA23C98, &qword_25B009BE0);
    sub_25AF0F274(&qword_27FA23CC0, &qword_27FA23CA0, &qword_25B009C10, MEMORY[0x277CDF728]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA23CB8);
  }

  return result;
}

unint64_t sub_25AF240C0()
{
  result = qword_27FA23CE8;
  if (!qword_27FA23CE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA23CF0, &unk_25B009C30);
    sub_25AF23F7C(&qword_27FA23CF8, MEMORY[0x277CDD708], MEMORY[0x277CDD710]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA23CE8);
  }

  return result;
}

uint64_t objectdestroyTm()
{
  sub_25AF18128(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48));

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_25AF241CC(uint64_t result, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return v2;
}

uint64_t sub_25AF24204(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_25AF2426C()
{
  v1 = type metadata accessor for LabelOpacityEffect(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = *(*(v1 - 8) + 64);
  v4 = (v2 + 16) & ~v2;
  v5 = v0 + v4;
  v6 = *(v0 + v4 + 32);
  if (v6 <= 0xFD)
  {
    sub_25AF18128(*v5, *(v5 + 8), *(v5 + 16), *(v5 + 24), v6);
  }

  v7 = *(v1 + 20);
  v8 = v7 + *(type metadata accessor for ButtonAndLabel.ParentState(0) + 20);
  v9 = sub_25B004844();
  (*(*(v9 - 8) + 8))(v5 + v8, v9);

  return MEMORY[0x2821FE8E8](v0, v4 + v3, v2 | 7);
}

uint64_t sub_25AF24378(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LabelOpacityEffect(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_25AF243DC()
{
  v1 = *(type metadata accessor for LabelOpacityEffect(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_25AF20AC4(v2);
}

unint64_t sub_25AF2443C()
{
  result = qword_27FA23D48;
  if (!qword_27FA23D48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA23D38, &qword_25B009CB8);
    sub_25AF0F274(&qword_27FA23D50, &qword_27FA23D40, &qword_25B009CC0, MEMORY[0x277CE04B0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA23D48);
  }

  return result;
}

uint64_t sub_25AF2452C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_25B004A34();
  *a1 = result;
  return result;
}

uint64_t sub_25AF24580(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v5 = *(a1 + 16);
  v4 = *(a1 + 24);
  v6 = *(a1 + 32);
  v8 = *a2;
  v7 = *(a2 + 8);
  v10 = *(a2 + 16);
  v9 = *(a2 + 24);
  v11 = *(a2 + 32);
  if (v6 > 0xFD)
  {
    v26 = *(a2 + 33);
    v28 = *(a1 + 33);
    v22 = *(a2 + 40);
    v24 = *(a1 + 40);
    v18 = *(a2 + 48);
    v20 = *(a1 + 48);
    v16 = *(a2 + 49);
    v17 = *(a1 + 49);
    v14 = *(a2 + 50);
    v15 = *(a1 + 50);
    sub_25AF1D7EC(v3, v2, v5, v4, v6);
    sub_25AF1D7EC(v8, v7, v10, v9, v11);
    if (v11 > 0xFD)
    {
      sub_25AF231D0(v3, v2, v5, v4, v6);
      result = 0;
      if (v28 != v26 || v24 != v22 || ((v20 ^ v18) & 1) != 0)
      {
        return result;
      }

      goto LABEL_16;
    }

LABEL_9:
    sub_25AF231D0(v3, v2, v5, v4, v6);
    sub_25AF231D0(v8, v7, v10, v9, v11);
    return 0;
  }

  if (v11 > 0xFD)
  {
    sub_25AF1D7EC(*a1, v2, v5, v4, v6);
    sub_25AF1D7EC(v8, v7, v10, v9, v11);
    sub_25AF1D7EC(v3, v2, v5, v4, v6);
    sub_25AF18128(v3, v2, v5, v4, v6);
    goto LABEL_9;
  }

  v27 = *(a2 + 33);
  v29 = *(a1 + 33);
  v23 = *(a2 + 40);
  v25 = *(a1 + 40);
  v19 = *(a2 + 48);
  v21 = *(a1 + 48);
  v16 = *(a2 + 49);
  v17 = *(a1 + 49);
  v14 = *(a2 + 50);
  v15 = *(a1 + 50);
  v35 = *a1;
  v36 = v2;
  v37 = v5;
  v38 = v4;
  v39 = v6;
  v30 = v8;
  v31 = v7;
  v32 = v10;
  v33 = v9;
  v34 = v11;
  sub_25AF1D7EC(v3, v2, v5, v4, v6);
  sub_25AF1D7EC(v8, v7, v10, v9, v11);
  sub_25AF1D7EC(v3, v2, v5, v4, v6);
  sub_25AF181DC(v3, v2, v5, v4, v6);
  v13 = sub_25AFD33F0(&v35, &v30);
  sub_25AF18128(v30, v31, v32, v33, v34);
  sub_25AF18128(v35, v36, v37, v38, v39);
  sub_25AF18128(v3, v2, v5, v4, v6);
  sub_25AF231D0(v3, v2, v5, v4, v6);
  result = 0;
  if ((v13 & 1) != 0 && ((v29 ^ v27) & 1) == 0 && v25 == v23 && ((v21 ^ v19) & 1) == 0)
  {
LABEL_16:
    if (v17 != 2)
    {
      result = 0;
      if (v16 == 2 || ((v16 ^ v17) & 1) != 0)
      {
        return result;
      }

      return v15 ^ v14 ^ 1u;
    }

    if (v16 == 2)
    {
      return v15 ^ v14 ^ 1u;
    }

    return 0;
  }

  return result;
}

unint64_t sub_25AF248A4()
{
  result = qword_27FA23DA8;
  if (!qword_27FA23DA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA23DA0, &qword_25B009DA8);
    v3 = sub_25AF24930();
    sub_25AF24BA8(v3, v1, v2);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA23DA8);
  }

  return result;
}

unint64_t sub_25AF24930()
{
  result = qword_27FA23DB0;
  if (!qword_27FA23DB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA23D98, &qword_25B009DA0);
    v3 = sub_25AF249BC();
    sub_25AF21480(v3, v1, v2);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA23DB0);
  }

  return result;
}

unint64_t sub_25AF249BC()
{
  result = qword_27FA23DB8;
  if (!qword_27FA23DB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA23D90, &qword_25B009D98);
    v3 = sub_25AF24A48();
    sub_25AF24B54(v3, v1, v2);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA23DB8);
  }

  return result;
}

unint64_t sub_25AF24A48()
{
  result = qword_27FA23DC0;
  if (!qword_27FA23DC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA23D88, &qword_25B009D90);
    v3 = sub_25AF0F274(&qword_27FA23DC8, &qword_27FA23DD0, &qword_25B009DB0, MEMORY[0x277CDD870]);
    sub_25AF24B00(v3, v1, v2);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA23DC0);
  }

  return result;
}

unint64_t sub_25AF24B00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27FA23DD8;
  if (!qword_27FA23DD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA23DD8);
  }

  return result;
}

unint64_t sub_25AF24B54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27FA23DE0;
  if (!qword_27FA23DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA23DE0);
  }

  return result;
}

unint64_t sub_25AF24BA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27FA23DE8;
  if (!qword_27FA23DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA23DE8);
  }

  return result;
}

uint64_t sub_25AF24C04(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v5 = *(a1 + 16);
  v4 = *(a1 + 24);
  v6 = *(a1 + 32);
  v8 = *a2;
  v7 = *(a2 + 8);
  v10 = *(a2 + 16);
  v9 = *(a2 + 24);
  v11 = *(a2 + 32);
  if (v6 > 0xFD)
  {
    v24 = *(a2 + 33);
    v26 = *(a1 + 33);
    v20 = *(a2 + 34);
    v22 = *(a1 + 34);
    v16 = *(a2 + 40);
    v18 = *(a1 + 40);
    v14 = *(a2 + 48);
    v15 = *(a1 + 48);
    sub_25AF1D7EC(v3, v2, v5, v4, v6);
    sub_25AF1D7EC(v8, v7, v10, v9, v11);
    if (v11 > 0xFD)
    {
      sub_25AF231D0(v3, v2, v5, v4, v6);
      result = 0;
      if (v26 != v24 || ((v22 ^ v20) & 1) != 0 || v18 != v16)
      {
        return result;
      }

      return v15 ^ v14 ^ 1u;
    }

LABEL_9:
    sub_25AF231D0(v3, v2, v5, v4, v6);
    sub_25AF231D0(v8, v7, v10, v9, v11);
    return 0;
  }

  if (v11 > 0xFD)
  {
    sub_25AF1D7EC(*a1, v2, v5, v4, v6);
    sub_25AF1D7EC(v8, v7, v10, v9, v11);
    sub_25AF1D7EC(v3, v2, v5, v4, v6);
    sub_25AF18128(v3, v2, v5, v4, v6);
    goto LABEL_9;
  }

  v25 = *(a2 + 33);
  v27 = *(a1 + 33);
  v21 = *(a2 + 34);
  v23 = *(a1 + 34);
  v17 = *(a2 + 40);
  v19 = *(a1 + 40);
  v14 = *(a2 + 48);
  v15 = *(a1 + 48);
  v33 = *a1;
  v34 = v2;
  v35 = v5;
  v36 = v4;
  v37 = v6;
  v28 = v8;
  v29 = v7;
  v30 = v10;
  v31 = v9;
  v32 = v11;
  sub_25AF1D7EC(v3, v2, v5, v4, v6);
  sub_25AF1D7EC(v8, v7, v10, v9, v11);
  sub_25AF1D7EC(v3, v2, v5, v4, v6);
  sub_25AF181DC(v3, v2, v5, v4, v6);
  v13 = sub_25AFD33F0(&v33, &v28);
  sub_25AF18128(v28, v29, v30, v31, v32);
  sub_25AF18128(v33, v34, v35, v36, v37);
  sub_25AF18128(v3, v2, v5, v4, v6);
  sub_25AF231D0(v3, v2, v5, v4, v6);
  result = 0;
  if ((v13 & 1) != 0 && v27 == v25 && v23 == v21 && v19 == v17)
  {
    return v15 ^ v14 ^ 1u;
  }

  return result;
}

__n128 __swift_memcpy36_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_25AF24EFC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 36))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 33);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_25AF24F50(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 36) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 36) = 0;
    }

    if (a2)
    {
      *(result + 33) = a2 + 1;
    }
  }

  return result;
}

__n128 __swift_memcpy50_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_25AF24FC4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 50))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 48);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_25AF25018(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 50) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 50) = 0;
    }

    if (a2)
    {
      *(result + 48) = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_25AF2507C()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA23CA8, &qword_25B009C18);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA23C98, &qword_25B009BE0);
  sub_25AF0F274(&qword_27FA23CB0, &qword_27FA23CA8, &qword_25B009C18, MEMORY[0x277CE04B0]);
  sub_25AF23FC4();
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_25AF2513C()
{
  result = qword_27FA23E00;
  if (!qword_27FA23E00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA23D30, &qword_25B009CB0);
    sub_25AF0F274(&qword_27FA23E08, &qword_27FA23D28, &qword_25B009CA8, MEMORY[0x277CE04B0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA23E00);
  }

  return result;
}

uint64_t sub_25AF251F4()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA23D38, &qword_25B009CB8);
  sub_25AF2443C();
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_25AF25270()
{
  result = qword_27FA23E10;
  if (!qword_27FA23E10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA23D70, &qword_25B009D48);
    v3 = sub_25AF0F274(&qword_27FA23E18, &qword_27FA23E20, &qword_25B00A090, MEMORY[0x277CE1198]);
    sub_25AF25328(v3, v1, v2);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA23E10);
  }

  return result;
}

unint64_t sub_25AF25328(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27FA23E28;
  if (!qword_27FA23E28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA23E28);
  }

  return result;
}

unint64_t sub_25AF25380()
{
  result = qword_27FA23E30;
  if (!qword_27FA23E30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA23DF8, &qword_25B009DC0);
    v3 = sub_25AF2540C();
    sub_25AF25524(v3, v1, v2);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA23E30);
  }

  return result;
}

unint64_t sub_25AF2540C()
{
  result = qword_27FA23E38;
  if (!qword_27FA23E38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA23E40, &qword_25B00A098);
    sub_25AF25498();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA23E38);
  }

  return result;
}

unint64_t sub_25AF25498()
{
  result = qword_27FA23E48;
  if (!qword_27FA23E48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA23DF0, &qword_25B009DB8);
    sub_25AF248A4();
    sub_25AF24930();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA23E48);
  }

  return result;
}

unint64_t sub_25AF25524(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27FA23E50;
  if (!qword_27FA23E50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA23E50);
  }

  return result;
}

void sub_25AF255CC(char a1)
{
  v1 = qword_27FA30B10;
  if (qword_27FA30B10)
  {
    swift_getKeyPath();
    sub_25AF23F7C(&qword_27FA25250, type metadata accessor for GlanceModel, &protocol conformance descriptor for GlanceModel);
    v3 = v1;
    sub_25B004234();

    v4 = OBJC_IVAR____TtC17NanoControlCenter11GlanceModel__editMode;
    swift_beginAccess();
    LOBYTE(v4) = v3[v4];

    if (v4)
    {
      return;
    }

    v5 = qword_27FA30B10;
    if (qword_27FA30B10)
    {
      swift_getKeyPath();
      v6 = v5;
      sub_25B004234();

      swift_beginAccess();

      sub_25AF258CC(a1 & 1);
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_25AF25740(char a1, char a2)
{
  if (a2 == 2)
  {
    v2 = qword_27FA30B10;
    if (!qword_27FA30B10)
    {
      __break(1u);
LABEL_9:
      __break(1u);
      return;
    }

    swift_getKeyPath();
    sub_25AF23F7C(&qword_27FA25250, type metadata accessor for GlanceModel, &protocol conformance descriptor for GlanceModel);
    v4 = v2;
    sub_25B004234();

    v5 = OBJC_IVAR____TtC17NanoControlCenter11GlanceModel__editMode;
    swift_beginAccess();
    LODWORD(v5) = v4[v5];

    if (v5 == 1)
    {
      v6 = qword_27FA30B10;
      if (qword_27FA30B10)
      {
        swift_getKeyPath();
        v7 = v6;
        sub_25B004234();

        swift_beginAccess();

        sub_25AF258CC(a1 & 1);
        return;
      }

      goto LABEL_9;
    }
  }
}

uint64_t sub_25AF258CC(uint64_t result)
{
  if (result)
  {
    if (qword_27FA30B10)
    {
      v1 = *(qword_27FA30B10 + OBJC_IVAR____TtC17NanoControlCenter11GlanceModel_editingModel);
      swift_getKeyPath();
      sub_25AF23F7C(&qword_27FA23D60, type metadata accessor for EditingModel, &unk_25B013C30);

      sub_25B004234();

      v2 = *(v1 + 16);

      v3 = v2 ^ 1;
      return v3 & 1;
    }

    __break(1u);
  }

  else if (qword_27FA30B10)
  {
    v4 = *(qword_27FA30B10 + OBJC_IVAR____TtC17NanoControlCenter11GlanceModel_editingModel);
    swift_getKeyPath();
    sub_25AF23F7C(&qword_27FA23D60, type metadata accessor for EditingModel, &unk_25B013C30);

    sub_25B004234();

    v3 = *(v4 + 16);

    return v3 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_25AF25A50@<X0>(uint64_t *a1@<X8>)
{
  result = sub_25B004A74();
  *a1 = result;
  return result;
}

uint64_t sub_25AF25AA8@<X0>(uint64_t a1@<X8>)
{
  result = sub_25B004AE4();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_25AF25B0C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

unint64_t sub_25AF25BE4()
{
  result = qword_27FA23EC8;
  if (!qword_27FA23EC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA23EB0, &qword_25B00A2C0);
    sub_25AF25C70();
    sub_25AF25D58();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA23EC8);
  }

  return result;
}

unint64_t sub_25AF25C70()
{
  result = qword_27FA23ED0;
  if (!qword_27FA23ED0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA23EB8, &qword_25B00A2C8);
    swift_getOpaqueTypeConformance2();
    sub_25AF0F274(&qword_27FA23ED8, &qword_27FA23EE0, &qword_25B00A308, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA23ED0);
  }

  return result;
}

unint64_t sub_25AF25D58()
{
  result = qword_27FA23EE8;
  if (!qword_27FA23EE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA23E98, &qword_25B00A2A8);
    sub_25AF25DE4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA23EE8);
  }

  return result;
}

unint64_t sub_25AF25DE4()
{
  result = qword_27FA23EF0;
  if (!qword_27FA23EF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA23E90, &qword_25B00A2A0);
    sub_25AF0F274(&qword_27FA23EF8, &qword_27FA23F00, &qword_25B00A310, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA23EF0);
  }

  return result;
}

unint64_t sub_25AF25E9C()
{
  result = qword_27FA23F08;
  if (!qword_27FA23F08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA23EC0, &qword_25B00A300);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA23F08);
  }

  return result;
}

uint64_t sub_25AF25F20(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_25AF25F30(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_25AF25F40(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_25AF25FC4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_25AF2602C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_25AF260A4()
{
  v1 = *(v0 + 48);
  if (v1 <= 0xFD)
  {
    sub_25AF18128(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), v1);
  }

  return MEMORY[0x2821FE8E8](v0, 66, 7);
}

uint64_t sub_25AF260F8()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_25AF261BC(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[17])
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

uint64_t sub_25AF26214(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
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

uint64_t sub_25AF2627C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 10))
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

uint64_t sub_25AF262C4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 10) = 1;
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

    *(result + 10) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_25AF26318()
{
  result = qword_27FA23F20;
  if (!qword_27FA23F20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA23E60, &qword_25B00A1E8);
    sub_25AF0F274(&qword_27FA23F28, &qword_27FA23E58, &qword_25B00A1E0, MEMORY[0x277CE04B0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA23F20);
  }

  return result;
}

unint64_t sub_25AF263D4()
{
  result = qword_27FA23F30;
  if (!qword_27FA23F30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA23E80, &qword_25B00A290);
    v3 = sub_25AF26460();
    sub_25AF2673C(v3, v1, v2);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA23F30);
  }

  return result;
}

unint64_t sub_25AF26460()
{
  result = qword_27FA23F38;
  if (!qword_27FA23F38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA23E70, &qword_25B00A220);
    v3 = sub_25AF264EC();
    sub_25AF266E8(v3, v1, v2);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA23F38);
  }

  return result;
}

unint64_t sub_25AF264EC()
{
  result = qword_27FA23F40;
  if (!qword_27FA23F40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA23E68, &qword_25B00A218);
    sub_25AF265A4();
    sub_25AF0F274(&qword_27FA23ED8, &qword_27FA23EE0, &qword_25B00A308, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA23F40);
  }

  return result;
}

unint64_t sub_25AF265A4()
{
  result = qword_27FA23F48;
  if (!qword_27FA23F48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA23E78, &qword_25B00A258);
    sub_25AF2665C();
    sub_25AF0F274(&qword_27FA23F60, &qword_27FA23F68, &qword_25B013E70, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA23F48);
  }

  return result;
}

unint64_t sub_25AF2665C()
{
  result = qword_27FA23F50;
  if (!qword_27FA23F50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA23F58, &unk_25B00A470);
    sub_25AF25BE4();
    sub_25AF25E9C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA23F50);
  }

  return result;
}

unint64_t sub_25AF266E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27FA23F70;
  if (!qword_27FA23F70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA23F70);
  }

  return result;
}

unint64_t sub_25AF2673C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27FA23F78;
  if (!qword_27FA23F78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA23F78);
  }

  return result;
}

unint64_t sub_25AF26794()
{
  result = qword_27FA23F80;
  if (!qword_27FA23F80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA23F10, &qword_25B00A348);
    sub_25AF0F274(&qword_27FA23F88, &qword_27FA23F18, &qword_25B00A350, MEMORY[0x277CE04B0]);
    sub_25AF0F274(&qword_27FA23F90, &qword_27FA23F98, &qword_25B00A480, MEMORY[0x277CE06A8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA23F80);
  }

  return result;
}

unint64_t sub_25AF2690C()
{
  result = qword_27FA23FE0;
  if (!qword_27FA23FE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA23FB8, &qword_25B00A558);
    sub_25AF269C4();
    sub_25AF0F274(&qword_27FA24010, &qword_27FA24018, &qword_25B00A5B8, MEMORY[0x277CE01A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA23FE0);
  }

  return result;
}

unint64_t sub_25AF269C4()
{
  result = qword_27FA23FE8;
  if (!qword_27FA23FE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA23FD0, &qword_25B00A5A0);
    sub_25AF26A7C();
    sub_25AF0F274(&qword_27FA24000, &qword_27FA24008, &qword_25B00A5B0, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA23FE8);
  }

  return result;
}

unint64_t sub_25AF26A7C()
{
  result = qword_27FA23FF0;
  if (!qword_27FA23FF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA23FC8, &qword_25B00A568);
    sub_25AF0F274(&qword_27FA23FF8, &qword_27FA23FC0, &qword_25B00A560, MEMORY[0x277CE04B0]);
    sub_25AF0F274(&qword_27FA23ED8, &qword_27FA23EE0, &qword_25B00A308, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA23FF0);
  }

  return result;
}

unint64_t sub_25AF26B64()
{
  result = qword_27FA24028;
  if (!qword_27FA24028)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA24030, &unk_25B00A5C0);
    sub_25AF0F274(&qword_27FA23FB0, &qword_27FA23FA8, &qword_25B00A550, MEMORY[0x277CE04B0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA24028);
  }

  return result;
}

uint64_t sub_25AF26C1C()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA23FB8, &qword_25B00A558);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA23FD8, &qword_25B00A5A8);
  sub_25AF2690C();
  sub_25B004954();
  sub_25AF23F7C(&qword_27FA24020, MEMORY[0x277CDFCB0], MEMORY[0x277CDFCA8]);
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_25AF26D40()
{
  swift_getKeyPath();
  sub_25AF2EBDC(&qword_27FA24078, type metadata accessor for _ControlsAvailableModel, &unk_25B00A758);
  sub_25B004234();
}

uint64_t sub_25AF26DE4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_25AF2EBDC(&qword_27FA24078, type metadata accessor for _ControlsAvailableModel, &unk_25B00A758);
  sub_25B004234();

  *a2 = *(v3 + 16);
}

uint64_t sub_25AF26EBC(uint64_t a1)
{
  if (sub_25AF38114(*(v1 + 16), a1))
  {
    *(v1 + 16) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_25AF2EBDC(&qword_27FA24078, type metadata accessor for _ControlsAvailableModel, &unk_25B00A758);
    sub_25B004224();
  }
}

uint64_t sub_25AF27000()
{
  swift_getKeyPath();
  sub_25AF2EBDC(&qword_27FA24078, type metadata accessor for _ControlsAvailableModel, &unk_25B00A758);
  sub_25B004234();
}

uint64_t sub_25AF270A4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_25AF2EBDC(&qword_27FA24078, type metadata accessor for _ControlsAvailableModel, &unk_25B00A758);
  sub_25B004234();

  *a2 = *(v3 + 24);
}

uint64_t sub_25AF2717C(uint64_t a1)
{
  if (sub_25AF38114(*(v1 + 24), a1))
  {
    *(v1 + 24) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_25AF2EBDC(&qword_27FA24078, type metadata accessor for _ControlsAvailableModel, &unk_25B00A758);
    sub_25B004224();
  }
}

uint64_t sub_25AF272C0()
{
  swift_getKeyPath();
  sub_25AF2EBDC(&qword_27FA24078, type metadata accessor for _ControlsAvailableModel, &unk_25B00A758);
  sub_25B004234();
}

uint64_t sub_25AF27364@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_25AF2EBDC(&qword_27FA24078, type metadata accessor for _ControlsAvailableModel, &unk_25B00A758);
  sub_25B004234();

  *a2 = *(v3 + 32);
}

uint64_t sub_25AF27410(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_25AF2EBDC(&qword_27FA24078, type metadata accessor for _ControlsAvailableModel, &unk_25B00A758);
  sub_25B004224();
}

uint64_t sub_25AF274DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[8] = a4;
  v5[9] = a5;
  v5[6] = a2;
  v5[7] = a3;
  v5[5] = a1;
  sub_25B005B34();
  v5[10] = sub_25B005B24();
  v7 = sub_25B005AE4();
  v5[11] = v7;
  v5[12] = v6;

  return MEMORY[0x2822009F8](sub_25AF2757C, v7, v6);
}

uint64_t sub_25AF2757C()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[13] = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    v0[14] = v2;
    *v2 = v0;
    v2[1] = sub_25AF2767C;
    v3 = v0[7];
    v4 = v0[8];
    v6 = v0[5];
    v5 = v0[6];

    return sub_25AF2782C(v6, v5, v3, v4);
  }

  else
  {

    v8 = v0[1];

    return v8(0);
  }
}

uint64_t sub_25AF2767C(uint64_t a1)
{
  v2 = *v1;
  *(*v1 + 120) = a1;

  v3 = *(v2 + 96);
  v4 = *(v2 + 88);

  return MEMORY[0x2822009F8](sub_25AF277C8, v4, v3);
}

uint64_t sub_25AF277C8()
{

  v1 = *(v0 + 120);
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_25AF2782C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a1;
  v5[4] = a2;
  sub_25B005B34();
  v5[7] = sub_25B005B24();
  v7 = sub_25B005AE4();
  v5[8] = v7;
  v5[9] = v6;

  return MEMORY[0x2822009F8](sub_25AF278C8, v7, v6);
}

uint64_t sub_25AF278C8()
{
  v18 = v0;
  if (qword_27FA23800 != -1)
  {
    swift_once();
  }

  v1 = sub_25B0044C4();
  __swift_project_value_buffer(v1, qword_27FA30C28);

  v2 = sub_25B0044B4();
  v3 = sub_25B005C94();

  if (os_log_type_enabled(v2, v3))
  {
    v5 = v0[3];
    v4 = v0[4];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v17 = v7;
    *v6 = 136315394;
    *(v6 + 4) = sub_25AF8E7DC(0x726F66286E6F6369, 0xEA0000000000293ALL, &v17);
    *(v6 + 12) = 2080;
    *(v6 + 14) = sub_25AF8E7DC(v5, v4, &v17);
    _os_log_impl(&dword_25AF0B000, v2, v3, "%s bundle ID: %s", v6, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x25F85EC30](v7, -1, -1);
    MEMORY[0x25F85EC30](v6, -1, -1);
  }

  v8 = v0[6];
  swift_getKeyPath();
  v0[2] = v8;
  sub_25AF2EBDC(&qword_27FA24078, type metadata accessor for _ControlsAvailableModel, &unk_25B00A758);
  sub_25B004234();

  v9 = *(v8 + 32);
  if (*(v9 + 16))
  {
    v11 = v0[3];
    v10 = v0[4];

    v12 = sub_25AF8EE80(v11, v10);
    if (v13)
    {
      v0[10] = *(*(v9 + 56) + 8 * v12);

      v14 = swift_task_alloc();
      v0[11] = v14;
      *v14 = v0;
      v14[1] = sub_25AF27BE0;

      return sub_25AF35D5C();
    }
  }

  else
  {
  }

  v16 = v0[1];

  return v16(0);
}

uint64_t sub_25AF27BE0(uint64_t a1)
{
  v2 = *v1;
  *(*v1 + 96) = a1;

  v3 = *(v2 + 72);
  v4 = *(v2 + 64);

  return MEMORY[0x2822009F8](sub_25AF27D08, v4, v3);
}

uint64_t sub_25AF27D08()
{

  v1 = *(v0 + 96);
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_25AF27D78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[2] = sub_25B005B34();
  v8[3] = sub_25B005B24();
  v13 = swift_task_alloc();
  v8[4] = v13;
  *v13 = v8;
  v13[1] = sub_25AF27E54;

  return sub_25AF27FF0(a5, a6, a7, a8);
}

uint64_t sub_25AF27E54()
{

  v1 = sub_25B005AE4();

  return MEMORY[0x2822009F8](sub_25AF27F90, v1, v0);
}

uint64_t sub_25AF27F90()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_25AF27FF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[97] = v4;
  v5[96] = a4;
  v5[95] = a3;
  v5[94] = a2;
  v5[93] = a1;
  v5[98] = *v4;
  sub_25B005B34();
  v5[99] = sub_25B005B24();
  v7 = sub_25B005AE4();
  v5[100] = v7;
  v5[101] = v6;

  return MEMORY[0x2822009F8](sub_25AF280C4, v7, v6);
}

uint64_t sub_25AF280C4()
{
  v16 = v0;
  if (qword_27FA23800 != -1)
  {
    swift_once();
  }

  v1 = sub_25B0044C4();
  __swift_project_value_buffer(v1, qword_27FA30C28);

  v2 = sub_25B0044B4();
  v3 = sub_25B005C94();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[94];
    v5 = v0[93];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v15 = v7;
    *v6 = 136315394;
    *(v6 + 4) = sub_25AF8E7DC(0x726F662864616F6CLL, 0xEA0000000000293ALL, &v15);
    *(v6 + 12) = 2080;
    *(v6 + 14) = sub_25AF8E7DC(v5, v4, &v15);
    _os_log_impl(&dword_25AF0B000, v2, v3, "%s bundle ID: %s", v6, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x25F85EC30](v7, -1, -1);
    MEMORY[0x25F85EC30](v6, -1, -1);
  }

  v14 = (*(v0[97] + 24) + **(v0[97] + 24));
  v8 = swift_task_alloc();
  v0[102] = v8;
  *v8 = v0;
  v8[1] = sub_25AF28330;
  v9 = v0[96];
  v10 = v0[95];
  v11 = v0[94];
  v12 = v0[93];

  return v14(v12, v11, v10, v9);
}

uint64_t sub_25AF28330(uint64_t a1)
{
  v2 = *v1;
  *(*v1 + 824) = a1;

  v3 = *(v2 + 808);
  v4 = *(v2 + 800);

  return MEMORY[0x2822009F8](sub_25AF28458, v4, v3);
}

uint64_t sub_25AF28458()
{
  v1 = v0[103];
  if (v1)
  {

    v2 = v1;
    sub_25AF2C458(v1);

    v3 = v0[1];

    return v3();
  }

  else
  {
    v5 = v0[98];
    v6 = objc_allocWithZone(MEMORY[0x277D1B1A8]);
    v7 = sub_25B005924();
    v8 = [v6 initWithBundleIdentifier_];
    v0[104] = v8;

    v9 = [objc_opt_self() mainScreen];
    [v9 scale];
    v11 = v10;

    v12 = swift_allocObject();
    v0[105] = v12;
    v12[2] = v8;
    v12[3] = v11;
    v12[4] = v5;
    v13 = swift_task_alloc();
    v0[106] = v13;
    *(v13 + 16) = &unk_25B00A8B0;
    *(v13 + 24) = v12;
    v14 = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA24098, &qword_25B00AF90);
    swift_asyncLet_begin();

    return MEMORY[0x282200928](v0 + 2);
  }
}

uint64_t sub_25AF2865C()
{
  v1 = *(v0 + 696);
  v2 = v1;
  sub_25AF2C458(v1);

  return MEMORY[0x282200920](v0 + 16, v0 + 696, sub_25AF286D4, v0 + 704);
}

uint64_t sub_25AF286F0()
{
  v1 = *(v0 + 832);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_25AF28778()
{

  sub_25AF1895C(*(v0 + 48), *(v0 + 56));
  v1 = OBJC_IVAR____TtC17NanoControlCenter23_ControlsAvailableModel___observationRegistrar;
  v2 = sub_25B004274();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_25AF28864(uint64_t a1)
{
  result = sub_25B004274();
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

uint64_t sub_25AF28914(uint64_t a1)
{
  if (qword_27FA23800 != -1)
  {
LABEL_54:
    swift_once();
  }

  v61 = v1;
  v2 = sub_25B0044C4();
  __swift_project_value_buffer(v2, qword_27FA30C28);
  v3 = sub_25B0044B4();
  v4 = sub_25B005C94();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v73[0] = v6;
    *v5 = 136315138;
    *(v5 + 4) = sub_25AF8E7DC(0xD000000000000018, 0x800000025B016960, v73);
    _os_log_impl(&dword_25AF0B000, v3, v4, "%s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v6);
    MEMORY[0x25F85EC30](v6, -1, -1);
    MEMORY[0x25F85EC30](v5, -1, -1);
  }

  KeyPath = swift_getKeyPath();
  MEMORY[0x28223BE20](KeyPath);
  v8 = OBJC_IVAR____TtC17NanoControlCenter23_ControlsAvailableModel___observationRegistrar;
  v73[0] = v61;
  sub_25AF2EBDC(&qword_27FA24078, type metadata accessor for _ControlsAvailableModel, &unk_25B00A758);
  v1 = &v61[v8];
  sub_25B004224();

  v9 = a1 + 64;
  v10 = 1 << *(a1 + 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & *(a1 + 64);
  v62 = (v10 + 63) >> 6;

  v13 = 0;
  v57 = MEMORY[0x277D84F90];
  v56 = MEMORY[0x277D84F90];
LABEL_7:
  v15 = v61;
  v14 = v62;
LABEL_8:
  v16 = v13;
  if (!v12)
  {
    goto LABEL_10;
  }

  do
  {
    v17 = v16;
LABEL_13:
    v66 = v17;
    v67 = v12;
    v18 = __clz(__rbit64(v12)) | (v17 << 6);
    v19 = (*(a1 + 48) + 16 * v18);
    v60 = *v19;
    v20 = *(*(a1 + 56) + 8 * v18);
    v21 = *(v15 + 6);
    v22 = *(v15 + 7);
    v65 = v19[1];

    sub_25AF2EBC4(v21, v22);
    v68 = v20;
    sub_25AF34F34(2, v21, v22, v73);
    sub_25AF1895C(v21, v22);
    v23 = v73[0];
    v24 = *(v15 + 6);
    if (v24)
    {
      v25 = *(v73[0] + 2);
      v72 = *(v15 + 7);
      sub_25AF2EBC4(*(v15 + 6), v72);

      if (v25)
      {
        v26 = 0;
        v27 = v23 + 56;
        v69 = v25;
        v58 = v25 - 1;
        v1 = MEMORY[0x277D84F90];
        v70 = v24;
        v71 = v23;
        v59 = v23 + 56;
        while (2)
        {
          v63 = v1;
          v28 = &v27[32 * v26];
          v29 = v26;
          while (1)
          {
            if (v29 >= *(v23 + 2))
            {
              __break(1u);
LABEL_53:
              __break(1u);
              goto LABEL_54;
            }

            v30 = *(v28 - 3);
            v31 = *(v28 - 2);
            v32 = *(v28 - 1);
            v33 = *v28;
            sub_25B005B34();

            v34 = v30;
            sub_25B005B24();
            sub_25B005AE4();
            if ((swift_task_isCurrentExecutor() & 1) == 0)
            {
              swift_task_reportUnexpectedExecutor();
            }

            sub_25B005B24();
            sub_25B005AE4();
            if ((swift_task_isCurrentExecutor() & 1) == 0)
            {
              swift_task_reportUnexpectedExecutor();
            }

            v73[0] = v34;
            v73[1] = v31;
            v73[2] = v32;
            v73[3] = v33;
            v35 = v34;

            v24 = v70;
            v1 = v70(v73);

            if (v1)
            {
              break;
            }

            ++v29;

            v28 += 4;
            v23 = v71;
            if (v69 == v29)
            {
              v1 = v63;
              goto LABEL_33;
            }
          }

          v1 = v63;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v74 = v63;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_25AF98A50(0, *(v63 + 16) + 1, 1);
            v1 = v74;
          }

          v38 = *(v1 + 16);
          v37 = *(v1 + 24);
          if (v38 >= v37 >> 1)
          {
            sub_25AF98A50((v37 > 1), v38 + 1, 1);
            v1 = v74;
          }

          v26 = v29 + 1;
          *(v1 + 16) = v38 + 1;
          v39 = v1 + 40 * v38;
          *(v39 + 32) = v35;
          *(v39 + 40) = v31;
          *(v39 + 48) = v32;
          *(v39 + 56) = v33;
          *(v39 + 64) = 64;
          v23 = v71;
          v27 = v59;
          if (v58 != v29)
          {
            continue;
          }

          break;
        }
      }

      else
      {
        v1 = MEMORY[0x277D84F90];
      }

LABEL_33:
      sub_25AF1895C(v24, v72);

      v15 = v61;
    }

    else
    {

      v1 = sub_25AF1737C(v40, sub_25AF29178);
    }

    v12 = (v67 - 1) & v67;
    v41 = *(v1 + 16);

    if (v41)
    {
      v42 = *(v68 + 32);
      v43 = *(v68 + 40);

      sub_25AF35688(v73);
      if (v73[0] >> 62)
      {
        v44 = sub_25B005EA4();
      }

      else
      {
        v44 = *((v73[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v45 = v56;
      if (!v44)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v45 = sub_25AFCD344(0, *(v56 + 2) + 1, 1, v56);
        }

        v46 = v45;
        v47 = *(v45 + 2);
        v56 = v46;
        v48 = *(v46 + 3);
        v1 = v47 + 1;
        if (v47 >= v48 >> 1)
        {
          v56 = sub_25AFCD344((v48 > 1), v47 + 1, 1, v56);
        }

        *(v56 + 2) = v1;
        v49 = &v56[32 * v47];
        *(v49 + 4) = v60;
        *(v49 + 5) = v65;
        *(v49 + 6) = v42;
        *(v49 + 7) = v43;
        v9 = a1 + 64;
        v15 = v61;
        v14 = v62;
        v13 = v66;
        goto LABEL_8;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v57 = sub_25AFCD344(0, *(v57 + 2) + 1, 1, v57);
      }

      v51 = *(v57 + 2);
      v50 = *(v57 + 3);
      v1 = v51 + 1;
      if (v51 >= v50 >> 1)
      {
        v57 = sub_25AFCD344((v50 > 1), v51 + 1, 1, v57);
      }

      *(v57 + 2) = v1;
      v52 = &v57[32 * v51];
      *(v52 + 4) = v60;
      *(v52 + 5) = v65;
      *(v52 + 6) = v42;
      *(v52 + 7) = v43;
      v9 = a1 + 64;
      v13 = v66;
      goto LABEL_7;
    }

    v16 = v66;
    v9 = a1 + 64;
    v14 = v62;
  }

  while (v12);
  while (1)
  {
LABEL_10:
    v17 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      goto LABEL_53;
    }

    if (v17 >= v14)
    {
      break;
    }

    v12 = *(v9 + 8 * v17);
    ++v16;
    if (v12)
    {
      goto LABEL_13;
    }
  }

  v73[0] = v57;

  sub_25AF2CE7C(v73);
  v53 = v73[0];
  v73[0] = v56;

  sub_25AF2CE7C(v73);

  v54 = v73[0];
  sub_25AF26EBC(v53);
  return sub_25AF2717C(v54);
}

uint64_t sub_25AF29178@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v3 = *(a1 + 8);
  v6 = *(a1 + 16);
  v5 = *(a1 + 24);
  sub_25B005B34();
  sub_25B005B24();
  sub_25B005AE4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v7 = v4;

  *a2 = v7;
  *(a2 + 8) = v3;
  *(a2 + 16) = v6;
  *(a2 + 24) = v5;
  *(a2 + 32) = 64;
  return result;
}

uint64_t sub_25AF29238(uint64_t a1, char a2)
{
  v2 = a1;
  if ((a2 & 1) == 0)
  {

    return v2;
  }

  if (qword_27FA23760 == -1)
  {
    v3 = *(a1 + 16);
    if (v3)
    {
      goto LABEL_4;
    }

    return MEMORY[0x277D84F90];
  }

  swift_once();
  v3 = *(v2 + 16);
  if (!v3)
  {
    return MEMORY[0x277D84F90];
  }

LABEL_4:
  v4 = qword_27FA30B38;
  v5 = (v2 + 64);
  v2 = MEMORY[0x277D84F90];
  v20 = qword_27FA30B38;
  do
  {
    v6 = *(v5 - 2);
    v7 = *(v5 - 1);
    v8 = *(v5 - 3);
    *&v21 = *(v5 - 4);
    *(&v21 + 1) = v8;
    v22 = v6;
    v23 = v7;
    v24 = *v5;
    sub_25AF181DC(v21, v8, v6, v7, v24);
    v9 = sub_25AF29400(&v21, v4);
    v10 = v21;
    v12 = v22;
    v11 = v23;
    v13 = v24;
    if (v9)
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v25 = v2;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_25AF98A50(0, *(v2 + 16) + 1, 1);
        v2 = v25;
      }

      v16 = *(v2 + 16);
      v15 = *(v2 + 24);
      v17 = v16 + 1;
      if (v16 >= v15 >> 1)
      {
        sub_25AF98A50((v15 > 1), v16 + 1, 1);
        v17 = v16 + 1;
        v2 = v25;
      }

      *(v2 + 16) = v17;
      v18 = v2 + 40 * v16;
      *(v18 + 32) = v10;
      *(v18 + 48) = v12;
      *(v18 + 56) = v11;
      *(v18 + 64) = v13;
      v4 = v20;
    }

    else
    {
      sub_25AF18128(v21, *(&v21 + 1), v22, v23, v24);
    }

    v5 += 40;
    --v3;
  }

  while (v3);
  return v2;
}

uint64_t sub_25AF29400(__int128 *a1, uint64_t a2)
{
  v15 = *a1;
  v16 = a1[1];
  v3 = *(a1 + 32);
  sub_25B005B34();
  sub_25B005B24();
  sub_25B005AE4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = 1 << *(a2 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a2 + 56);
  v7 = (v4 + 63) >> 6;

  v9 = 0;
  while (v6)
  {
    v10 = v9;
LABEL_12:
    v11 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v12 = *(a2 + 48) + 40 * (v11 | (v10 << 6));
    LOBYTE(v11) = *(v12 + 32);
    v20 = v16;
    v19 = v15;
    v21 = v3;
    v13 = *(v12 + 16);
    v17[0] = *v12;
    v17[1] = v13;
    v18 = v11;
    result = sub_25AFD19C4(v17);
    if (result)
    {
      v14 = 0;
LABEL_15:

      return v14;
    }
  }

  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v7)
    {
      v14 = 1;
      goto LABEL_15;
    }

    v6 = *(a2 + 56 + 8 * v10);
    ++v9;
    if (v6)
    {
      v9 = v10;
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_25AF29594(char a1, char a2)
{
  v3 = v2;
  if ((a1 & 1) == 0)
  {
    swift_getKeyPath();
    if (a2)
    {
      sub_25AF2EBDC(&qword_27FA24078, type metadata accessor for _ControlsAvailableModel, &unk_25B00A758);
      sub_25B004234();

      v4 = *(v3 + 16);
      goto LABEL_5;
    }

    sub_25AF2EBDC(&qword_27FA24078, type metadata accessor for _ControlsAvailableModel, &unk_25B00A758);
    sub_25B004234();

    v6 = *(v3 + 16);
    v7 = *(v6 + 16);

    if (!v7)
    {
      v4 = MEMORY[0x277D84F90];
      goto LABEL_26;
    }

    v9 = 0;
    v10 = v6 + 56;
    v4 = MEMORY[0x277D84F90];
LABEL_8:
    v22 = v4;
    v11 = (v10 + 32 * v9);
    v12 = v9;
    while (1)
    {
      if (v12 >= *(v6 + 16))
      {
        __break(1u);
        return result;
      }

      v14 = *(v11 - 3);
      v13 = *(v11 - 2);
      v15 = *v11;
      v23 = *(v11 - 1);
      sub_25B005B34();

      sub_25B005B24();
      sub_25B005AE4();
      if ((swift_task_isCurrentExecutor() & 1) == 0)
      {
        swift_task_reportUnexpectedExecutor();
      }

      if (v14 == 0xD000000000000016 && 0x800000025B015F90 == v13)
      {
      }

      else
      {
        v16 = sub_25B006174();

        if ((v16 & 1) == 0)
        {
          v17 = v22;
          result = swift_isUniquelyReferenced_nonNull_native();
          if ((result & 1) == 0)
          {
            result = sub_25AF98A90(0, *(v22 + 16) + 1, 1);
            v17 = v22;
          }

          v18 = v17;
          v19 = *(v17 + 16);
          v20 = *(v18 + 24);
          if (v19 >= v20 >> 1)
          {
            result = sub_25AF98A90((v20 > 1), v19 + 1, 1);
            v18 = v22;
          }

          v9 = v12 + 1;
          *(v18 + 16) = v19 + 1;
          v21 = (v18 + 32 * v19);
          v21[4] = v14;
          v21[5] = v13;
          v21[6] = v23;
          v21[7] = v15;
          v10 = v6 + 56;
          v4 = v18;
          if (v7 - 1 == v12)
          {
LABEL_26:

            return v4;
          }

          goto LABEL_8;
        }
      }

      ++v12;
      v11 += 4;
      if (v7 == v12)
      {
        v4 = v22;
        goto LABEL_26;
      }
    }
  }

  swift_getKeyPath();
  sub_25AF2EBDC(&qword_27FA24078, type metadata accessor for _ControlsAvailableModel, &unk_25B00A758);
  sub_25B004234();

  v4 = *(v2 + 24);
LABEL_5:

  return v4;
}

uint64_t sub_25AF29950(uint64_t a1, char a2)
{
  swift_getKeyPath();
  v33 = v2;
  sub_25AF2EBDC(&qword_27FA24078, type metadata accessor for _ControlsAvailableModel, &unk_25B00A758);
  sub_25B004234();

  v29 = v2;
  v3 = v2[2];
  v4 = *(v3 + 16);

  if (v4)
  {
    v6 = 0;
    v26 = 0xD000000000000016;
    v32 = 0x800000025B015F90;
    v7 = v3 + 56;
    while (v6 < *(v3 + 16))
    {
      v9 = *(v7 - 24);
      v8 = *(v7 - 16);
      sub_25B005B34();

      sub_25B005B24();
      sub_25B005AE4();
      if ((swift_task_isCurrentExecutor() & 1) == 0)
      {
        swift_task_reportUnexpectedExecutor();
      }

      if (v9 == 0xD000000000000016 && 0x800000025B015F90 == v8)
      {

        goto LABEL_13;
      }

      v10 = sub_25B006174();

      if (v10)
      {

        v32 = v8;
        v26 = v9;
LABEL_13:
        swift_getKeyPath();
        sub_25B004234();

        if (*(v29[4] + 16))
        {

          sub_25AF8EE80(v26, v8);
          if (v11)
          {

            v12 = v29[6];
            v13 = v29[7];
            sub_25AF2EBC4(v12, v13);
            sub_25AF34F34(2, v12, v13, &v33);
            sub_25AF1895C(v12, v13);

            v14 = v33;
            v15 = *(v33 + 16);
            if (v15)
            {
              v33 = MEMORY[0x277D84F90];
              sub_25AF98A50(0, v15, 0);
              v16 = v33;
              v17 = (v14 + 56);
              do
              {
                v18 = *(v17 - 3);
                v19 = *v17;
                v30 = *(v17 - 1);
                v31 = *(v17 - 2);

                v20 = v18;
                sub_25B005B24();
                sub_25B005AE4();
                if ((swift_task_isCurrentExecutor() & 1) == 0)
                {
                  swift_task_reportUnexpectedExecutor();
                }

                v33 = v16;
                v22 = *(v16 + 16);
                v21 = *(v16 + 24);
                if (v22 >= v21 >> 1)
                {
                  sub_25AF98A50((v21 > 1), v22 + 1, 1);
                  v16 = v33;
                }

                v17 += 4;
                *(v16 + 16) = v22 + 1;
                v23 = v16 + 40 * v22;
                *(v23 + 32) = v20;
                *(v23 + 40) = v31;
                *(v23 + 48) = v30;
                *(v23 + 56) = v19;
                *(v23 + 64) = 64;
                --v15;
              }

              while (v15);

              v24 = a1;
              if (!a1)
              {
                goto LABEL_29;
              }

LABEL_28:
              v33 = sub_25AF2DE18(v26, v32, v24);
              sub_25AF36720(v16);
              v16 = v33;
LABEL_29:
              v25 = sub_25AF29238(v16, a2 & 1);

              return v25;
            }
          }
        }

        v16 = MEMORY[0x277D84F90];
        v24 = a1;
        if (a1)
        {
          goto LABEL_28;
        }

        goto LABEL_29;
      }

      ++v6;

      v7 += 32;
      if (v4 == v6)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_10:

    return MEMORY[0x277D84F90];
  }

  return result;
}

unint64_t sub_25AF29DB8(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v236 = MEMORY[0x277D84F90];
  v237 = MEMORY[0x277D84F90];
  v6 = sub_25AF2E7A8();
  v7 = sub_25AF2E980(&unk_286C4BF90, &unk_25B00A840, &OBJC_IVAR____TtC17NanoControlCenter11GlanceModel__isTinkerWatch, 100);
  v8 = sub_25AF19100(&unk_286C4C018);
  swift_arrayDestroy();
  v9 = sub_25AF2E980(&unk_286C4BFB8, &unk_25B00A808, &OBJC_IVAR____TtC17NanoControlCenter11GlanceModel__hasBaseband, 1);
  v10 = sub_25AF2EA98();

  sub_25AF36720(v10);
  v11 = a1;
  swift_getKeyPath();
  v223 = v2;
  sub_25AF2EBDC(&qword_27FA24078, type metadata accessor for _ControlsAvailableModel, &unk_25B00A758);
  sub_25B004234();

  v12 = v2[4];
  v13 = v12 + 64;
  v14 = 1 << *(v12 + 32);
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  else
  {
    v15 = -1;
  }

  v16 = v15 & *(v12 + 64);
  v194 = 0x800000025B015F90;
  v17 = (v14 + 63) >> 6;
  v212 = v12;
  swift_bridgeObjectRetain_n();
  v196 = v3;

  v197 = a2;

  v204 = v6;

  v203 = v7;

  v199 = v8;
  v18 = v16;
  v19 = v17;
  v20 = v13;

  v198 = v9;

  v22 = 0;
  v23 = 0;
  v207 = v11;
  v205 = (v11 + 64);
  v24 = MEMORY[0x277D84F90];
  v195 = MEMORY[0x277D84F90];
  v208 = MEMORY[0x277D84F90];
  v209 = v13;
  v206 = v17;
LABEL_5:
  v25 = v22;
  if (!v18)
  {
    goto LABEL_7;
  }

  do
  {
    v26 = v25;
LABEL_10:
    v27 = *(v212 + 56);
    v214 = v26;
    v28 = *(v27 + ((v26 << 9) | (8 * __clz(__rbit64(v18)))));
    v29 = sub_25B005B34();
    v215 = v28;

    v213 = sub_25B005B24();
    v222 = v29;
    sub_25B005AE4();
    isCurrentExecutor = swift_task_isCurrentExecutor();
    if ((isCurrentExecutor & 1) == 0)
    {
      isCurrentExecutor = swift_task_reportUnexpectedExecutor();
    }

    v18 &= v18 - 1;
    v31 = *(v215 + 24);
    v223 = *(v215 + 16);
    v224 = v31;
    MEMORY[0x28223BE20](isCurrentExecutor);
    v192[2] = &v223;
    if ((sub_25AF355DC(sub_25AF2EB6C, v192, &unk_286C4C058) & 1) == 0)
    {
      v32 = v196[6];
      v33 = v196[7];
      sub_25AF2EBC4(v32, v33);
      sub_25AF34F34(0, v32, v33, &v223);
      sub_25AF1895C(v32, v33);
      v34 = v223;
      v35 = *(v223 + 16);
      v219 = v24;
      v201 = v18;
      if (v35)
      {
        v211 = v23;
        v233[0] = MEMORY[0x277D84F90];
        sub_25AF98A50(0, v35, 0);
        v36 = v233[0];
        v221 = v34;
        v37 = (v34 + 56);
        do
        {
          v38 = *(v37 - 3);
          v39 = *(v37 - 2);
          v41 = *(v37 - 1);
          v40 = *v37;

          v42 = v38;
          sub_25B005B24();
          sub_25B005AE4();
          if ((swift_task_isCurrentExecutor() & 1) == 0)
          {
            swift_task_reportUnexpectedExecutor();
          }

          v43 = v36;
          v233[0] = v36;
          v45 = v36[2];
          v44 = v36[3];
          if (v45 >= v44 >> 1)
          {
            sub_25AF98A50((v44 > 1), v45 + 1, 1);
            v43 = v233[0];
          }

          v37 += 4;
          *(v43 + 16) = v45 + 1;
          v36 = v43;
          v46 = v43 + 40 * v45;
          *(v46 + 32) = v42;
          *(v46 + 40) = v39;
          *(v46 + 48) = v41;
          *(v46 + 56) = v40;
          *(v46 + 64) = 64;
          --v35;
        }

        while (v35);

        v23 = v211;
        v24 = v219;
        v20 = v209;
        v19 = v206;
        v18 = v201;
      }

      else
      {

        v36 = MEMORY[0x277D84F90];
      }

      if (v197 && (*(v215 + 16) == 0xD000000000000016 && v194 == *(v215 + 24) || (sub_25B006174() & 1) != 0))
      {
        v223 = v197;

        sub_25AF36720(v36);
        v36 = v223;
      }

      v202 = v36;
      v47 = v36[2];
      v48 = MEMORY[0x25F85DA50](v47, MEMORY[0x277D83B88], MEMORY[0x277D83B98]);
      v223 = v48;
      if (v47)
      {
        v49 = 0;
        do
        {
          v50 = v49 + 1;
          sub_25AF90B14(v233, v49);
          v49 = v50;
        }

        while (v47 != v50);
        v51 = v223;
      }

      else
      {
        v51 = v48;
      }

      v235 = v51;
      if (*(v51 + 16))
      {
        v200 = v202 + 4;
        v193 = MEMORY[0x277D84F90];
        while (1)
        {
          v52 = sub_25B005E64();
          result = sub_25AF2DA08(v52, *(v51 + 36));
          if ((result & 0x8000000000000000) != 0)
          {
            goto LABEL_160;
          }

          if (result >= v202[2])
          {
LABEL_161:
            __break(1u);
LABEL_162:
            __break(1u);
            goto LABEL_163;
          }

          v211 = v23;
          v210 = result;
          v53 = &v200[5 * result];
          v54 = v53[1];
          v55 = v53[2];
          v56 = v53[3];
          v57 = *(v53 + 32);
          v58 = *(v207 + 16);
          v221 = *v53;
          v216 = v54;
          v217 = v55;
          v218 = v56;
          LODWORD(v220) = v57;
          sub_25AF181DC(v221, v54, v55, v56, v57);
          v59 = v58 + 1;
          v60 = v205;
          while (2)
          {
            if (--v59)
            {
              v63 = *(v60 - 4);
              v62 = *(v60 - 3);
              v64 = *(v60 - 2);
              v65 = *(v60 - 1);
              v66 = *v60;
              sub_25AF181DC(v63, v62, v64, v65, *v60);
              sub_25B005B24();
              sub_25B005AE4();
              if ((swift_task_isCurrentExecutor() & 1) == 0)
              {
                swift_task_reportUnexpectedExecutor();
              }

              v60 += 40;
              v223 = v63;
              v224 = v62;
              v225 = v64;
              v226 = v65;
              v227 = v66;
              v233[0] = v221;
              v233[1] = v216;
              v233[2] = v217;
              v233[3] = v218;
              v234 = v220;
              v61 = sub_25AFD19C4(v233);
              sub_25AF18128(v63, v62, v64, v65, v66);

              if ((v61 & 1) == 0)
              {
                continue;
              }

              sub_25AF99710(v210);
              sub_25AF18128(v221, v216, v217, v218, v220);
              v51 = v235;
              v23 = v211;
              v24 = v219;
              v20 = v209;
              v19 = v206;
              v18 = v201;
              if (!*(v235 + 16))
              {
                goto LABEL_70;
              }
            }

            else if (v220 >> 6)
            {
              v23 = v211;
              v24 = v219;
              v20 = v209;
              v19 = v206;
              v18 = v201;
              if (v220 >> 6 == 1)
              {
                v67 = [v221 kind];
                v68 = sub_25B005934();
                v70 = v69;

                LOBYTE(v67) = sub_25AF716C8(v68, v70, v204);

                if (v67)
                {
                  goto LABEL_55;
                }

                v71 = [v221 kind];
                v72 = sub_25B005934();
                v74 = v73;

                LOBYTE(v71) = sub_25AF716C8(v72, v74, v199);

                if ((v71 & 1) == 0)
                {
                  goto LABEL_48;
                }

                goto LABEL_63;
              }

LABEL_48:
              v75 = v193;
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v75 = sub_25AFCD450(0, *(v75 + 2) + 1, 1, v75);
              }

              v193 = v75;
              v77 = *(v75 + 2);
              v76 = *(v75 + 3);
              if (v77 >= v76 >> 1)
              {
                v193 = sub_25AFCD450((v76 > 1), v77 + 1, 1, v193);
              }

              v78 = v193;
              *(v193 + 2) = v77 + 1;
              v79 = &v78[40 * v77];
              v80 = v216;
              *(v79 + 4) = v221;
              *(v79 + 5) = v80;
              v81 = v218;
              *(v79 + 6) = v217;
              *(v79 + 7) = v81;
              v79[64] = v220;
              v51 = v235;
              if (!*(v235 + 16))
              {
                goto LABEL_70;
              }
            }

            else
            {
              v82 = sub_25AFA0C7C();
              v23 = v211;
              v24 = v219;
              v20 = v209;
              v19 = v206;
              v18 = v201;
              if (v82)
              {
LABEL_55:
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v208 = sub_25AFCD450(0, *(v208 + 2) + 1, 1, v208);
                }

                v84 = *(v208 + 2);
                v83 = *(v208 + 3);
                if (v84 >= v83 >> 1)
                {
                  v208 = sub_25AFCD450((v83 > 1), v84 + 1, 1, v208);
                }

                v85 = v208;
                *(v208 + 2) = v84 + 1;
                v86 = &v85[40 * v84];
                v87 = v216;
                *(v86 + 4) = v221;
                *(v86 + 5) = v87;
                v88 = v218;
                *(v86 + 6) = v217;
                *(v86 + 7) = v88;
                v86[64] = v220;
                v237 = v85;
                goto LABEL_60;
              }

              if ((sub_25AFA0C7C() & 1) == 0)
              {
                goto LABEL_48;
              }

LABEL_63:
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v195 = sub_25AFCD450(0, *(v195 + 2) + 1, 1, v195);
              }

              v90 = *(v195 + 2);
              v89 = *(v195 + 3);
              if (v90 >= v89 >> 1)
              {
                v195 = sub_25AFCD450((v89 > 1), v90 + 1, 1, v195);
              }

              v91 = v195;
              *(v195 + 2) = v90 + 1;
              v92 = &v91[40 * v90];
              v93 = v216;
              *(v92 + 4) = v221;
              *(v92 + 5) = v93;
              v94 = v218;
              *(v92 + 6) = v217;
              *(v92 + 7) = v94;
              v92[64] = v220;
              v236 = v91;
LABEL_60:
              v51 = v235;
              if (!*(v235 + 16))
              {
                goto LABEL_70;
              }
            }

            break;
          }
        }
      }

      v193 = MEMORY[0x277D84F90];
LABEL_70:

      v95 = v193;
      v96 = *(v193 + 2);
      if (v96)
      {
        result = sub_25AF2DAD8(v96);
        if ((result & 0x8000000000000000) != 0)
        {
          goto LABEL_162;
        }

        if (result >= *(v95 + 2))
        {
LABEL_163:
          __break(1u);
          return result;
        }

        v97 = &v95[40 * result];
        v98 = *(v97 + 4);
        v99 = *(v97 + 5);
        v101 = *(v97 + 6);
        v100 = *(v97 + 7);
        v102 = v97[64];
        sub_25AF181DC(v98, v99, v101, v100, v102);

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v219 = sub_25AFCD450(0, *(v219 + 2) + 1, 1, v219);
        }

        v104 = *(v219 + 2);
        v103 = *(v219 + 3);
        if (v104 >= v103 >> 1)
        {
          v219 = sub_25AFCD450((v103 > 1), v104 + 1, 1, v219);
        }

        v105 = v219;
        *(v219 + 2) = v104 + 1;
        v106 = &v105[40 * v104];
        *(v106 + 4) = v98;
        *(v106 + 5) = v99;
        *(v106 + 6) = v101;
        *(v106 + 7) = v100;
        v24 = v105;
        v106[64] = v102;

        v20 = v209;
        v19 = v206;
        v18 = v201;
      }

      else
      {
      }

      v22 = v214;
      goto LABEL_5;
    }

    v25 = v214;
  }

  while (v18);
  while (1)
  {
LABEL_7:
    v26 = v25 + 1;
    if (__OFADD__(v25, 1))
    {
LABEL_156:
      __break(1u);
      goto LABEL_157;
    }

    if (v26 >= v19)
    {
      break;
    }

    v18 = *(v20 + 8 * v26);
    ++v25;
    if (v18)
    {
      goto LABEL_10;
    }
  }

  v107 = 0;
  v108 = MEMORY[0x277D84F90];
  do
  {
    v110 = *(v24 + 2);
    if (v110)
    {
      v223 = 0;
      result = MEMORY[0x25F85EC50](&v223, 8);
      v111 = (v223 * v110) >> 64;
      if (v110 > v223 * v110)
      {
        v112 = -v110 % v110;
        if (v112 > v223 * v110)
        {
          do
          {
            v223 = 0;
            result = MEMORY[0x25F85EC50](&v223, 8);
          }

          while (v112 > v223 * v110);
          v111 = (v223 * v110) >> 64;
        }
      }

      if (v111 < *(v24 + 2))
      {
        v113 = &v24[40 * v111];
        v114 = *(v113 + 4);
        v115 = *(v113 + 5);
        v220 = v114;
        v117 = *(v113 + 6);
        v116 = *(v113 + 7);
        v118 = v113[64];
        sub_25AF181DC(v114, v115, v117, v116, v113[64]);
        v214 = v116;
        v215 = v115;
        sub_25AF181DC(v114, v115, v117, v116, v118);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v108 = sub_25AFCD450(0, *(v108 + 2) + 1, 1, v108);
        }

        v120 = *(v108 + 2);
        v119 = *(v108 + 3);
        if (v120 >= v119 >> 1)
        {
          v108 = sub_25AFCD450((v119 > 1), v120 + 1, 1, v108);
        }

        *(v108 + 2) = v120 + 1;
        v121 = &v108[40 * v120];
        result = v220;
        v122 = v215;
        *(v121 + 4) = v220;
        *(v121 + 5) = v122;
        v123 = v214;
        *(v121 + 6) = v117;
        *(v121 + 7) = v123;
        v121[64] = v118;
        v218 = *(v24 + 2);
        if (v218)
        {
          v209 = v107;
          v210 = v108;
          v211 = v23;
          LODWORD(v217) = v118 & 0xC0;
          v124 = 40;
          v125 = 1;
          v126 = v215;
          v213 = v117;
          v219 = v24;
          LODWORD(v212) = v118;
          while (1)
          {
            v127 = &v24[v124];
            v129 = *&v24[v124 - 8];
            v128 = *v127;
            v131 = *(v127 + 1);
            v130 = *(v127 + 2);
            v132 = v127[24];
            v223 = v129;
            v224 = v128;
            v225 = v131;
            v226 = v130;
            v227 = v132;
            v228 = result;
            v229 = v126;
            v230 = v117;
            v231 = v123;
            v232 = v118;
            v222 = v125;
            v221 = v124;
            if (v132 >> 6)
            {
              if (v132 >> 6 == 1)
              {
                if (v217 != 64)
                {
                  goto LABEL_119;
                }

                v133 = result;
                v216 = sub_25AF18BD4(0, &qword_27FA27200, 0x277D82BB8);
                sub_25AF181DC(v129, v128, v131, v130, v132);
                sub_25AF181DC(v133, v126, v117, v123, v118);
                sub_25AF181DC(v129, v128, v131, v130, v132);
                v134 = v123;
                v135 = v131;
                v136 = v132;
                v137 = v130;
                v138 = v118;
                v139 = v128;
                v140 = v129;
                sub_25AF181DC(v133, v126, v117, v134, v138);
                sub_25AF181DC(v129, v139, v135, v130, v136);
                if ((sub_25B005DE4() & 1) == 0)
                {
                  sub_25AF2602C(&v223, &unk_27FA25590, qword_25B00A7F0);
                  sub_25AF18128(v129, v139, v135, v130, v136);
                  v153 = v133;
                  v126 = v215;
                  v117 = v213;
                  v154 = v135;
                  v123 = v214;
                  v155 = v139;
                  v118 = v212;
                  sub_25AF18128(v153, v215, v213, v214, v212);
                  result = sub_25AF18128(v129, v155, v154, v137, v136);
                  goto LABEL_120;
                }

                v141 = v136;
                v142 = v140;
                v143 = v135;
                v144 = v212;
                v126 = v215;
                if (v139 != v215)
                {
                  v156 = v139;
                  sub_25AF2602C(&v223, &unk_27FA25590, qword_25B00A7F0);
                  sub_25AF18128(v142, v139, v135, v137, v141);
                  v117 = v213;
                  v123 = v214;
                  v118 = v144;
                  sub_25AF18128(v220, v126, v213, v214, v144);
                  v157 = v142;
                  v158 = v156;
                  v159 = v143;
                  v160 = v137;
LABEL_135:
                  result = sub_25AF18128(v157, v158, v159, v160, v141);
                  goto LABEL_120;
                }

                v145 = v220;
                v117 = v213;
                v123 = v214;
                v118 = v212;
                if (!v137)
                {
                  sub_25AF2602C(&v223, &unk_27FA25590, qword_25B00A7F0);
                  sub_25AF18128(v142, v126, v143, 0, v141);
                  if (!v123)
                  {
                    sub_25AF18128(v145, v126, v117, 0, v118);
                    v165 = v142;
                    v166 = v126;
                    v167 = v143;
                    v168 = 0;
LABEL_141:
                    sub_25AF18128(v165, v166, v167, v168, v141);
LABEL_142:
                    v169 = v219;
                    result = swift_isUniquelyReferenced_nonNull_native();
                    if ((result & 1) == 0)
                    {
                      result = sub_25AFCDB8C(v169);
                      v169 = result;
                    }

                    v170 = *(v169 + 2);
                    if (v222 - 1 < v170)
                    {
                      v171 = v123;
                      v172 = v117;
                      v173 = v126;
                      v174 = v169;
                      v175 = v170 - 1;
                      v176 = &v221[v169];
                      v177 = &v221[v169 - 8];
                      v178 = *v177;
                      v179 = *(v176 + 1);
                      v221 = *v176;
                      v180 = *(v176 + 2);
                      v181 = v176[24];
                      memmove(v177, v176 + 32, 40 * (v170 - v222));
                      *(v174 + 2) = v175;
                      v24 = v174;
                      sub_25AF18128(v220, v173, v172, v171, v118);
                      sub_25AF18128(v178, v221, v179, v180, v181);
                      v23 = v211;
                      v108 = v210;
                      v107 = v209;
                      goto LABEL_81;
                    }

LABEL_159:
                    __break(1u);
LABEL_160:
                    __break(1u);
                    goto LABEL_161;
                  }

                  sub_25AF18128(v145, v126, v117, v123, v118);
                  v157 = v142;
                  v158 = v126;
                  v159 = v143;
                  v160 = 0;
                  goto LABEL_135;
                }

                if (!v214)
                {
                  sub_25AF2602C(&v223, &unk_27FA25590, qword_25B00A7F0);
                  sub_25AF18128(v142, v126, v143, v137, v141);
                  sub_25AF18128(v145, v126, v117, 0, v118);
                  v157 = v142;
                  v158 = v126;
                  v159 = v143;
                  v160 = v137;
                  goto LABEL_135;
                }

                if (v143 == v213 && v137 == v214)
                {
                  sub_25AF2602C(&v223, &unk_27FA25590, qword_25B00A7F0);
                  sub_25AF18128(v142, v126, v117, v123, v141);
                  sub_25AF18128(v145, v126, v117, v123, v118);
                  v165 = v142;
                  v166 = v126;
                  v167 = v117;
                  v168 = v123;
                  goto LABEL_141;
                }

                v146 = v220;
                v147 = sub_25B006174();
                sub_25AF2602C(&v223, &unk_27FA25590, qword_25B00A7F0);
                sub_25AF18128(v142, v215, v143, v137, v141);
                v148 = v146;
                v126 = v215;
                sub_25AF18128(v148, v215, v117, v123, v118);
                result = sub_25AF18128(v142, v126, v143, v137, v141);
                if (v147)
                {
                  goto LABEL_142;
                }
              }

              else
              {
                if (v217 != 128)
                {
                  goto LABEL_119;
                }

                if (v132)
                {
                  if ((v118 & 1) == 0)
                  {
                    goto LABEL_119;
                  }

                  v149 = result;
                  if ((v129 != result || v128 != v126) && (sub_25B006174() & 1) == 0)
                  {
                    result = v149;
LABEL_119:
                    sub_25AF181DC(result, v126, v117, v123, v118);
                    sub_25AF181DC(v129, v128, v131, v130, v132);
                    result = sub_25AF2602C(&v223, &unk_27FA25590, qword_25B00A7F0);
                    goto LABEL_120;
                  }

                  if (v131 == v117 && v130 == v123)
                  {
                    sub_25AF181DC(v149, v126, v117, v123, v118);
                    sub_25AF181DC(v129, v128, v117, v123, v132);
LABEL_138:
                    sub_25AF2602C(&v223, &unk_27FA25590, qword_25B00A7F0);
                    goto LABEL_142;
                  }

                  v150 = sub_25B006174();
                  v151 = v149;
                  v152 = v150;
                  sub_25AF181DC(v151, v126, v117, v123, v118);
                  sub_25AF181DC(v129, v128, v131, v130, v132);
                }

                else
                {
                  if (v118)
                  {
                    goto LABEL_119;
                  }

                  v161 = v117;
                  v162 = v126;
                  v163 = result;
                  sub_25AF18BD4(0, &qword_27FA27200, 0x277D82BB8);
                  sub_25AF181DC(v129, v128, v131, v130, v132);
                  v164 = v161;
                  v123 = v214;
                  sub_25AF181DC(v163, v162, v164, v214, v118);
                  sub_25AF181DC(v129, v128, v131, v130, v132);
                  if ((sub_25B005DE4() & 1) == 0)
                  {
                    sub_25AF18128(v129, v128, v131, v130, v132);
                    result = sub_25AF2602C(&v223, &unk_27FA25590, qword_25B00A7F0);
                    v126 = v162;
                    v117 = v213;
                    goto LABEL_120;
                  }

                  v109 = v128 == v162;
                  v126 = v162;
                  v117 = v213;
                  if (v109 && v131 == v213)
                  {
                    sub_25AF18128(v129, v126, v213, v130, v132);
                    goto LABEL_138;
                  }

                  v152 = sub_25B006174();
                  sub_25AF18128(v129, v128, v131, v130, v132);
                }

                result = sub_25AF2602C(&v223, &unk_27FA25590, qword_25B00A7F0);
                if (v152)
                {
                  goto LABEL_142;
                }
              }
            }

            else
            {
              sub_25AF181DC(result, v126, v117, v123, v118);
              result = sub_25AF2602C(&v223, &unk_27FA25590, qword_25B00A7F0);
              if (v118 <= 0x3F && v129 == v220)
              {
                goto LABEL_142;
              }
            }

LABEL_120:
            if (v218 == v222)
            {
              __break(1u);
              goto LABEL_156;
            }

            v125 = v222 + 1;
            v124 = (v221 + 40);
            v24 = v219;
            result = v220;
          }
        }

LABEL_158:
        __break(1u);
        goto LABEL_159;
      }

LABEL_157:
      __break(1u);
      goto LABEL_158;
    }

LABEL_81:
    v109 = v107++ == 3;
  }

  while (!v109);

  v233[0] = MEMORY[0x277D84F90];
  if (*(v208 + 2) * 15.0 <= 60.0)
  {
    v182 = *(v208 + 2) * 15.0;
  }

  else
  {
    v182 = 60.0;
  }

  v183 = *(v195 + 2) * 2.5;
  if (v183 > 20.0)
  {
    v183 = 20.0;
  }

  v184 = *(v108 + 2);
  if (v184)
  {
    v185 = v182 + v183;
    v186 = (v108 + 64);
    do
    {
      v187 = *(v186 - 2);
      v188 = *(v186 - 1);
      v189 = *(v186 - 3);
      v190 = *v186;
      v223 = *(v186 - 4);
      v224 = v189;
      v225 = v187;
      v226 = v188;
      v227 = v190;
      sub_25AF181DC(v223, v189, v187, v188, v190);
      sub_25AF2B7B4(&v223, &v237, v233, &v236, v182, v185);
      sub_25AF18128(v223, v224, v225, v226, v227);
      v186 += 40;
      --v184;
    }

    while (v184);
  }

  v191 = v233[0];

  return v191;
}

uint64_t sub_25AF2B7B4(uint64_t a1, uint8_t *a2, uint64_t *a3, uint64_t a4, double a5, double a6)
{
  v10 = *a1;
  v11 = *(a1 + 8);
  v13 = *(a1 + 16);
  v12 = *(a1 + 24);
  v14 = *(a1 + 32);
  sub_25B005B34();
  sub_25B005B24();
  sub_25B005AE4();
  v16 = v15;
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v17 = sub_25AF2DAD8(0x64uLL) + 1;
  swift_beginAccess();
  v18 = *(*a2 + 16);
  v19 = v17;
  if (v18)
  {
    v20 = v19 < a5;
  }

  else
  {
    v20 = 0;
  }

  if (v20)
  {
    v37 = v17 % v18;
    if (v17 % v18 < 0)
    {
      __break(1u);
    }

    else
    {
      v71 = 40 * v37;
      v38 = *a2 + 40 * v37;
      v17 = *(v38 + 32);
      v14 = *(v38 + 40);
      v16 = *(v38 + 48);
      a4 = *(v38 + 56);
      LOBYTE(v10) = *(v38 + 64);
      v11 = *a3;
      sub_25AF181DC(v17, v14, v16, a4, v10);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *a3 = v11;
      v73 = v37;
      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_25;
      }
    }

    v11 = sub_25AFCD450(0, *(v11 + 16) + 1, 1, v11);
    *a3 = v11;
LABEL_25:
    v41 = *(v11 + 16);
    v40 = *(v11 + 24);
    v42 = v41 + 1;
    if (v41 >= v40 >> 1)
    {
      v11 = sub_25AFCD450((v40 > 1), v41 + 1, 1, v11);
      *a3 = v11;
    }

    *(v11 + 16) = v42;
    v43 = v11 + 40 * v41;
    *(v43 + 32) = v17;
    *(v43 + 40) = v14;
    *(v43 + 48) = v16;
    *(v43 + 56) = a4;
    *(v43 + 64) = v10;
    if (qword_27FA23800 != -1)
    {
      swift_once();
    }

    v44 = sub_25B0044C4();
    __swift_project_value_buffer(v44, qword_27FA30C28);
    v45 = sub_25B0044B4();
    a4 = sub_25B005CD4();
    if (os_log_type_enabled(v45, a4))
    {
      v16 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      v82[0] = v46;
      *v16 = 136315138;
      swift_beginAccess();
      if (v73 >= *(*a2 + 16))
      {
        __break(1u);
LABEL_49:
        swift_once();
        goto LABEL_34;
      }

      v47 = *a2 + v71;
      v48 = *(v47 + 40);
      v49 = *(v47 + 48);
      v50 = *(v47 + 56);
      v77 = *(v47 + 32);
      v78 = v48;
      v79 = v49;
      v80 = v50;
      v81 = *(v47 + 64);
      sub_25AF181DC(v77, v48, v49, v50, v81);
      v51 = sub_25AFD3228();
      v53 = v52;
      sub_25AF18128(v77, v78, v79, v80, v81);
      v54 = sub_25AF8E7DC(v51, v53, v82);

      *(v16 + 4) = v54;
      _os_log_impl(&dword_25AF0B000, v45, a4, "Suggesting rank one control/button %s", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v46);
      MEMORY[0x25F85EC30](v46, -1, -1);
      MEMORY[0x25F85EC30](v16, -1, -1);
    }

    swift_beginAccess();
    sub_25AF64304(v73, &v77);
LABEL_44:
    swift_endAccess();
    sub_25AF18128(v77, v78, v79, v80, v81);
  }

  swift_beginAccess();
  v21 = *(*a4 + 16);
  if (v21)
  {
    v22 = v19 < a5;
  }

  else
  {
    v22 = 1;
  }

  if (v22 || v19 >= a6)
  {
    if (qword_27FA23800 != -1)
    {
      swift_once();
    }

    v24 = sub_25B0044C4();
    __swift_project_value_buffer(v24, qword_27FA30C28);
    sub_25AF181DC(v10, v11, v13, v12, v14);
    v25 = sub_25B0044B4();
    v26 = sub_25B005CD4();
    sub_25AF18128(v10, v11, v13, v12, v14);
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v74 = swift_slowAlloc();
      v76[0] = v74;
      *v27 = 136315138;
      v77 = v10;
      v78 = v11;
      v79 = v13;
      v80 = v12;
      v81 = v14;
      sub_25AF181DC(v10, v11, v13, v12, v14);
      v72 = v26;
      v28 = sub_25AFD3228();
      v30 = v29;
      sub_25AF18128(v10, v11, v13, v12, v14);
      v31 = sub_25AF8E7DC(v28, v30, v76);

      *(v27 + 4) = v31;
      _os_log_impl(&dword_25AF0B000, v25, v72, "Keeping random control/button: %s", v27, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v74);
      MEMORY[0x25F85EC30](v74, -1, -1);
      MEMORY[0x25F85EC30](v27, -1, -1);
    }

    v32 = *a3;
    sub_25AF181DC(v10, v11, v13, v12, v14);
    v33 = swift_isUniquelyReferenced_nonNull_native();
    *a3 = v32;
    if ((v33 & 1) == 0)
    {
      v32 = sub_25AFCD450(0, *(v32 + 2) + 1, 1, v32);
      *a3 = v32;
    }

    v35 = *(v32 + 2);
    v34 = *(v32 + 3);
    if (v35 >= v34 >> 1)
    {
      v32 = sub_25AFCD450((v34 > 1), v35 + 1, 1, v32);
      *a3 = v32;
    }

    *(v32 + 2) = v35 + 1;
    v36 = &v32[40 * v35];
    *(v36 + 4) = v10;
    *(v36 + 5) = v11;
    *(v36 + 6) = v13;
    *(v36 + 7) = v12;
    v36[64] = v14;
  }

  v42 = v17 % v21;
  if (qword_27FA23800 != -1)
  {
    goto LABEL_49;
  }

LABEL_34:
  v55 = sub_25B0044C4();
  v56 = __swift_project_value_buffer(v55, qword_27FA30C28);
  v57 = sub_25B0044B4();
  v58 = sub_25B005CD4();
  if (!os_log_type_enabled(v57, v58))
  {

    swift_beginAccess();
    if ((v42 & 0x8000000000000000) != 0)
    {
      __break(1u);
      goto LABEL_51;
    }

LABEL_39:
    if (v42 < *(*a4 + 16))
    {
      v66 = *a4 + 40 * v42;
      v56 = *(v66 + 32);
      v57 = *(v66 + 40);
      v16 = *(v66 + 48);
      a2 = *(v66 + 56);
      v58 = *(v66 + 64);
      v11 = *a3;
      sub_25AF181DC(v56, v57, v16, a2, v58);
      v67 = swift_isUniquelyReferenced_nonNull_native();
      *a3 = v11;
      v73 = v42;
      if (v67)
      {
LABEL_41:
        v69 = *(v11 + 16);
        v68 = *(v11 + 24);
        if (v69 >= v68 >> 1)
        {
          v11 = sub_25AFCD450((v68 > 1), v69 + 1, 1, v11);
          *a3 = v11;
        }

        *(v11 + 16) = v69 + 1;
        v70 = v11 + 40 * v69;
        *(v70 + 32) = v56;
        *(v70 + 40) = v57;
        *(v70 + 48) = v16;
        *(v70 + 56) = a2;
        *(v70 + 64) = v58;
        swift_beginAccess();
        sub_25AF64304(v73, &v77);
        goto LABEL_44;
      }

LABEL_52:
      v11 = sub_25AFCD450(0, *(v11 + 16) + 1, 1, v11);
      *a3 = v11;
      goto LABEL_41;
    }

LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  a2 = swift_slowAlloc();
  v11 = swift_slowAlloc();
  v76[0] = v11;
  *a2 = 136315138;
  result = swift_beginAccess();
  if ((v42 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v42 < *(*a4 + 16))
  {
    v60 = *a4 + 40 * v42;
    v61 = *(v60 + 40);
    v62 = *(v60 + 48);
    v63 = *(v60 + 56);
    v77 = *(v60 + 32);
    v78 = v61;
    v79 = v62;
    v80 = v63;
    v81 = *(v60 + 64);
    sub_25AF181DC(v77, v61, v62, v63, v81);
    v64 = sub_25AFD3228();
    v16 = v65;
    sub_25AF18128(v77, v78, v79, v80, v81);
    v56 = sub_25AF8E7DC(v64, v16, v76);

    *(a2 + 4) = v56;
    _os_log_impl(&dword_25AF0B000, v57, v58, "Suggesting rank two control/button: %s", a2, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v11);
    MEMORY[0x25F85EC30](v11, -1, -1);
    MEMORY[0x25F85EC30](a2, -1, -1);

    swift_beginAccess();
    goto LABEL_39;
  }

  __break(1u);
  return result;
}

void *sub_25AF2C070()
{
  result = sub_25AF18C1C(&unk_286C4BEC0);
  off_27FA24038 = result;
  return result;
}

uint64_t sub_25AF2C098()
{
  sub_25B006294();
  sub_25B005994();
  sub_25B005994();
  return sub_25B0062D4();
}

uint64_t sub_25AF2C100(uint64_t a1)
{
  sub_25B005994();

  return sub_25B005994();
}

uint64_t sub_25AF2C150(uint64_t a1)
{
  sub_25B006294();
  sub_25B005994();
  sub_25B005994();
  return sub_25B0062D4();
}

uint64_t sub_25AF2C1B4@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t sub_25AF2C1C0(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (v7 = sub_25B006174(), result = 0, (v7 & 1) != 0))
  {
    if (v2 == v4 && v3 == v5)
    {
      return 1;
    }

    else
    {

      return sub_25B006174();
    }
  }

  return result;
}

void sub_25AF2C264()
{
  v0 = [objc_opt_self() genericApplicationIcon];
  v1 = sub_25AF2F248(v0, 0, 1.0);
  if (v1)
  {
    v2 = v1;

    qword_27FA30AF8 = v2;
  }

  else
  {
    __break(1u);
  }
}

void *sub_25AF2C2C8()
{
  swift_getKeyPath();
  sub_25AF2EBDC(&qword_27FA240A0, type metadata accessor for _ControlsAvailableModel.LoadingModel, &unk_25B00A73C);
  sub_25B004234();

  v1 = *(v0 + 16);
  v2 = v1;
  return v1;
}

id sub_25AF2C370@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_25AF2EBDC(&qword_27FA240A0, type metadata accessor for _ControlsAvailableModel.LoadingModel, &unk_25B00A73C);
  sub_25B004234();

  v4 = *(v3 + 16);
  *a2 = v4;

  return v4;
}

void sub_25AF2C428(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_25AF2C458(v1);
}

void sub_25AF2C458(void *a1)
{
  v2 = v1;
  v4 = *(v1 + 16);
  if (!v4)
  {
    if (!a1)
    {
      v8 = 0;
      goto LABEL_8;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_25AF2EBDC(&qword_27FA240A0, type metadata accessor for _ControlsAvailableModel.LoadingModel, &unk_25B00A73C);
    sub_25B004224();

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  sub_25AF18BD4(0, &qword_27FA240A8, 0x277D755B8);
  v5 = v4;
  v6 = a1;
  v7 = sub_25B005DE4();

  if ((v7 & 1) == 0)
  {
    goto LABEL_6;
  }

  v8 = *(v2 + 16);
LABEL_8:
  *(v2 + 16) = a1;
}

uint64_t sub_25AF2C5E8()
{

  v1 = OBJC_IVAR____TtCC17NanoControlCenter23_ControlsAvailableModel12LoadingModel___observationRegistrar;
  v2 = sub_25B004274();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_25AF2C6BC(uint64_t a1)
{
  result = sub_25B004274();
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

uint64_t sub_25AF2C764(uint64_t a1, int a2)
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

uint64_t sub_25AF2C7AC(uint64_t result, int a2, int a3)
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

unint64_t sub_25AF2C80C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27FA24070;
  if (!qword_27FA24070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA24070);
  }

  return result;
}

uint64_t sub_25AF2C880(uint64_t a1, double a2)
{
  *(v2 + 24) = a2;
  *(v2 + 16) = a1;
  return MEMORY[0x2822009F8](sub_25AF2C8A4, 0, 0);
}

uint64_t sub_25AF2C8A4()
{
  v1 = sub_25AF2F248(*(v0 + 16), 1, *(v0 + 24));
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_25AF2C90C(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 24) = v3;
  *v3 = v2;
  v3[1] = sub_25AF2C9F8;

  return v5();
}

uint64_t sub_25AF2C9F8(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  *v3 = a1;
  v4 = *(v6 + 8);

  return v4();
}

id sub_25AF2CB0C(void **a1)
{
  v2 = sub_25B005D24();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_25B005D04();
  MEMORY[0x28223BE20](v6);
  v7 = sub_25B005854();
  MEMORY[0x28223BE20](v7 - 8);
  v8 = *a1;
  if (*a1)
  {
    v9 = *a1;
  }

  else
  {
    v14[0] = sub_25AF18BD4(0, &qword_27FA271F0, 0x277D85C78);
    sub_25B005844();
    v14[1] = MEMORY[0x277D84F90];
    sub_25AF2EBDC(&qword_27FA24080, MEMORY[0x277D85230], MEMORY[0x277D85238]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FA25660, &unk_25B00A870);
    sub_25AF2EC2C();
    sub_25B005E54();
    (*(v3 + 104))(v5, *MEMORY[0x277D85260], v2);
    v10 = sub_25B005D54();
    swift_beginAccess();
    v11 = *a1;
    *a1 = v10;
    v9 = v10;

    v8 = 0;
  }

  v12 = v8;
  return v9;
}

uint64_t sub_25AF2CDB4()
{
  *(*(v0 + 16) + 24) = *(v0 + 24);
}

uint64_t sub_25AF2CE40()
{
  *(*(v0 + 16) + 16) = *(v0 + 24);
}

uint64_t sub_25AF2CE7C(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_25AFFF09C(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_25AF2CEE8(v5);
  *a1 = v2;
  return result;
}

uint64_t sub_25AF2CEE8(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_25B006114();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x277D84F90];
      }

      else
      {
        v5 = sub_25B005A84();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_25AF2D0E8(v7, v8, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_25AF2CFE0(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_25AF2CFE0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v5 = result;
    v6 = *a4;
    sub_25AF2ECCC(result, a2, a3);
    v7 = v6 + 32 * v4 - 32;
    v8 = v5 - v4;
LABEL_5:
    v9 = v8;
    v10 = v7;
    while (1)
    {
      result = sub_25B005E24();
      if (result != -1)
      {
LABEL_4:
        ++v4;
        v7 += 32;
        --v8;
        if (v4 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v6)
      {
        break;
      }

      v11 = *(v10 + 32);
      v12 = *(v10 + 40);
      v13 = *(v10 + 48);
      v14 = *(v10 + 56);
      v15 = *(v10 + 16);
      *(v10 + 32) = *v10;
      *(v10 + 48) = v15;
      *v10 = v11;
      *(v10 + 8) = v12;
      *(v10 + 16) = v13;
      *(v10 + 24) = v14;
      v10 -= 32;
      if (__CFADD__(v9++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_25AF2D0E8(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v6 = v5;
  v7 = result;
  v8 = a3[1];
  if (v8 >= 1)
  {
    v9 = 0;
    v10 = MEMORY[0x277D84F90];
    v93 = result;
    while (1)
    {
      v11 = v9;
      v12 = v9 + 1;
      if (v12 >= v8)
      {
        v8 = v12;
      }

      else
      {
        v94 = v6;
        v13 = 32 * v11;
        v14 = *a3 + 32 * v11;
        sub_25AF2ECCC(result, a2, a3);
        result = sub_25B005E24();
        v15 = v11;
        v16 = result;
        v96 = v15;
        v4 = v15 + 2;
        v17 = v14 + 88;
        while (v8 != v4)
        {
          result = sub_25B005E24();
          ++v4;
          v17 += 32;
          if ((v16 == -1) == (result != -1))
          {
            v8 = v4 - 1;
            break;
          }
        }

        if (v16 == -1)
        {
          v11 = v96;
          v7 = v93;
          if (v8 < v96)
          {
            __break(1u);
LABEL_124:
            __break(1u);
LABEL_125:
            __break(1u);
LABEL_126:
            __break(1u);
LABEL_127:
            __break(1u);
LABEL_128:
            __break(1u);
LABEL_129:
            __break(1u);
            return result;
          }

          if (v96 < v8)
          {
            v65 = 32 * v8 - 16;
            v66 = v13 + 24;
            v67 = v8;
            v68 = v96;
            v6 = v94;
            while (1)
            {
              if (v68 != --v67)
              {
                v75 = *a3;
                if (!*a3)
                {
                  goto LABEL_127;
                }

                v69 = (v75 + v66);
                v70 = v75 + v65;
                v71 = *(v69 - 3);
                v72 = *(v69 - 1);
                v73 = *v69;
                v74 = *v70;
                *(v69 - 3) = *(v70 - 16);
                *(v69 - 1) = v74;
                *(v70 - 16) = v71;
                *v70 = v72;
                *(v70 + 8) = v73;
              }

              ++v68;
              v65 -= 32;
              v66 += 32;
              if (v68 >= v67)
              {
                goto LABEL_12;
              }
            }
          }

          v6 = v94;
        }

        else
        {
          v7 = v93;
          v6 = v94;
          v11 = v96;
        }
      }

LABEL_12:
      v18 = a3[1];
      if (v8 >= v18)
      {
        goto LABEL_20;
      }

      if (__OFSUB__(v8, v11))
      {
        goto LABEL_119;
      }

      if (v8 - v11 >= a4)
      {
        goto LABEL_20;
      }

      if (__OFADD__(v11, a4))
      {
        goto LABEL_120;
      }

      if (v11 + a4 < v18)
      {
        v18 = v11 + a4;
      }

      if (v18 < v11)
      {
LABEL_121:
        __break(1u);
        goto LABEL_122;
      }

      if (v8 == v18)
      {
LABEL_20:
        v19 = v8;
      }

      else
      {
        v99 = v18;
        v95 = v6;
        v76 = v11;
        v77 = *a3;
        sub_25AF2ECCC(result, a2, a3);
        v78 = v77 + 32 * v8 - 32;
        v97 = v76;
        v4 = v76 - v8;
        do
        {
          v79 = v4;
          v80 = v78;
          do
          {
            result = sub_25B005E24();
            if (result != -1)
            {
              break;
            }

            if (!v77)
            {
              goto LABEL_124;
            }

            v81 = *(v80 + 32);
            v82 = *(v80 + 40);
            v83 = *(v80 + 48);
            v84 = *(v80 + 56);
            v85 = *(v80 + 16);
            *(v80 + 32) = *v80;
            *(v80 + 48) = v85;
            *v80 = v81;
            *(v80 + 8) = v82;
            *(v80 + 16) = v83;
            *(v80 + 24) = v84;
            v80 -= 32;
          }

          while (!__CFADD__(v79++, 1));
          ++v8;
          v78 += 32;
          --v4;
        }

        while (v8 != v99);
        v7 = v93;
        v6 = v95;
        v11 = v97;
        v19 = v99;
      }

      if (v19 < v11)
      {
        goto LABEL_118;
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_25AFCD240(0, *(v10 + 2) + 1, 1, v10);
        v10 = result;
      }

      v4 = *(v10 + 2);
      v20 = *(v10 + 3);
      v21 = v4 + 1;
      if (v4 >= v20 >> 1)
      {
        result = sub_25AFCD240((v20 > 1), v4 + 1, 1, v10);
        v10 = result;
      }

      *(v10 + 2) = v21;
      v22 = &v10[16 * v4];
      *(v22 + 4) = v11;
      *(v22 + 5) = v19;
      v23 = *v7;
      if (!*v7)
      {
        goto LABEL_128;
      }

      v98 = v19;
      if (v4)
      {
        while (1)
        {
          v24 = v21 - 1;
          if (v21 >= 4)
          {
            break;
          }

          if (v21 == 3)
          {
            v25 = *(v10 + 4);
            v26 = *(v10 + 5);
            v35 = __OFSUB__(v26, v25);
            v27 = v26 - v25;
            v28 = v35;
LABEL_41:
            if (v28)
            {
              goto LABEL_107;
            }

            v41 = &v10[16 * v21];
            v43 = *v41;
            v42 = *(v41 + 1);
            v44 = __OFSUB__(v42, v43);
            v45 = v42 - v43;
            v46 = v44;
            if (v44)
            {
              goto LABEL_110;
            }

            v47 = &v10[16 * v24 + 32];
            v49 = *v47;
            v48 = *(v47 + 1);
            v35 = __OFSUB__(v48, v49);
            v50 = v48 - v49;
            if (v35)
            {
              goto LABEL_113;
            }

            if (__OFADD__(v45, v50))
            {
              goto LABEL_114;
            }

            if (v45 + v50 >= v27)
            {
              if (v27 < v50)
              {
                v24 = v21 - 2;
              }

              goto LABEL_62;
            }

            goto LABEL_55;
          }

          v51 = &v10[16 * v21];
          v53 = *v51;
          v52 = *(v51 + 1);
          v35 = __OFSUB__(v52, v53);
          v45 = v52 - v53;
          v46 = v35;
LABEL_55:
          if (v46)
          {
            goto LABEL_109;
          }

          v54 = &v10[16 * v24];
          v56 = *(v54 + 4);
          v55 = *(v54 + 5);
          v35 = __OFSUB__(v55, v56);
          v57 = v55 - v56;
          if (v35)
          {
            goto LABEL_112;
          }

          if (v57 < v45)
          {
            goto LABEL_3;
          }

LABEL_62:
          v4 = v24 - 1;
          if (v24 - 1 >= v21)
          {
            __break(1u);
LABEL_103:
            __break(1u);
LABEL_104:
            __break(1u);
LABEL_105:
            __break(1u);
LABEL_106:
            __break(1u);
LABEL_107:
            __break(1u);
LABEL_108:
            __break(1u);
LABEL_109:
            __break(1u);
LABEL_110:
            __break(1u);
LABEL_111:
            __break(1u);
LABEL_112:
            __break(1u);
LABEL_113:
            __break(1u);
LABEL_114:
            __break(1u);
LABEL_115:
            __break(1u);
LABEL_116:
            __break(1u);
LABEL_117:
            __break(1u);
LABEL_118:
            __break(1u);
LABEL_119:
            __break(1u);
LABEL_120:
            __break(1u);
            goto LABEL_121;
          }

          if (!*a3)
          {
            goto LABEL_125;
          }

          v62 = *&v10[16 * v4 + 32];
          v63 = *&v10[16 * v24 + 40];
          sub_25AF2D78C((*a3 + 32 * v62), (*a3 + 32 * *&v10[16 * v24 + 32]), (*a3 + 32 * v63), v23);
          if (v6)
          {
          }

          if (v63 < v62)
          {
            goto LABEL_103;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v10 = sub_25AFFEFEC(v10);
          }

          if (v4 >= *(v10 + 2))
          {
            goto LABEL_104;
          }

          v64 = &v10[16 * v4];
          *(v64 + 4) = v62;
          *(v64 + 5) = v63;
          result = sub_25AFFEF60(v24);
          v21 = *(v10 + 2);
          if (v21 <= 1)
          {
            goto LABEL_3;
          }
        }

        v29 = &v10[16 * v21 + 32];
        v30 = *(v29 - 64);
        v31 = *(v29 - 56);
        v35 = __OFSUB__(v31, v30);
        v32 = v31 - v30;
        if (v35)
        {
          goto LABEL_105;
        }

        v34 = *(v29 - 48);
        v33 = *(v29 - 40);
        v35 = __OFSUB__(v33, v34);
        v27 = v33 - v34;
        v28 = v35;
        if (v35)
        {
          goto LABEL_106;
        }

        v36 = &v10[16 * v21];
        v38 = *v36;
        v37 = *(v36 + 1);
        v35 = __OFSUB__(v37, v38);
        v39 = v37 - v38;
        if (v35)
        {
          goto LABEL_108;
        }

        v35 = __OFADD__(v27, v39);
        v40 = v27 + v39;
        if (v35)
        {
          goto LABEL_111;
        }

        if (v40 >= v32)
        {
          v58 = &v10[16 * v24 + 32];
          v60 = *v58;
          v59 = *(v58 + 1);
          v35 = __OFSUB__(v59, v60);
          v61 = v59 - v60;
          if (v35)
          {
            goto LABEL_115;
          }

          if (v27 < v61)
          {
            v24 = v21 - 2;
          }

          goto LABEL_62;
        }

        goto LABEL_41;
      }

LABEL_3:
      v8 = a3[1];
      v9 = v98;
      if (v98 >= v8)
      {
        goto LABEL_90;
      }
    }
  }

  v10 = MEMORY[0x277D84F90];
LABEL_90:
  v87 = v7;
  v7 = v6;
  v6 = *v87;
  if (!*v87)
  {
    goto LABEL_129;
  }

  result = swift_isUniquelyReferenced_nonNull_native();
  v4 = a3;
  if ((result & 1) == 0)
  {
LABEL_122:
    result = sub_25AFFEFEC(v10);
    v10 = result;
  }

  v88 = *(v10 + 2);
  if (v88 >= 2)
  {
    while (1)
    {
      v89 = *v4;
      if (!*v4)
      {
        goto LABEL_126;
      }

      v4 = *&v10[16 * v88];
      v90 = *&v10[16 * v88 + 24];
      sub_25AF2D78C((v89 + 32 * v4), (v89 + 32 * *&v10[16 * v88 + 16]), (v89 + 32 * v90), v6);
      if (v7)
      {
      }

      if (v90 < v4)
      {
        goto LABEL_116;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v10 = sub_25AFFEFEC(v10);
      }

      if (v88 - 2 >= *(v10 + 2))
      {
        goto LABEL_117;
      }

      v91 = &v10[16 * v88];
      *v91 = v4;
      *(v91 + 1) = v90;
      result = sub_25AFFEF60(v88 - 1);
      v88 = *(v10 + 2);
      v4 = a3;
      if (v88 <= 1)
      {
      }
    }
  }
}

uint64_t sub_25AF2D78C(char *__src, char *__dst, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __dst;
  v7 = __src;
  v8 = __dst - __src;
  v9 = __dst - __src + 31;
  if (__dst - __src >= 0)
  {
    v9 = __dst - __src;
  }

  v10 = v9 >> 5;
  v11 = a3 - __dst;
  v12 = a3 - __dst + 31;
  if (a3 - __dst >= 0)
  {
    v12 = a3 - __dst;
  }

  v13 = v12 >> 5;
  if (v10 >= v12 >> 5)
  {
    if (a4 != __dst || &__dst[32 * v13] <= a4)
    {
      __src = memmove(a4, __dst, 32 * v13);
    }

    v14 = &v4[32 * v13];
    if (v11 >= 32 && v6 > v7)
    {
      sub_25AF2ECCC(__src, __dst, a3);
LABEL_27:
      v5 -= 32;
      do
      {
        v18 = v5 + 32;
        if (sub_25B005E24() == -1)
        {
          v21 = v6 - 32;
          if (v18 != v6)
          {
            v22 = *(v6 - 1);
            *v5 = *v21;
            *(v5 + 1) = v22;
          }

          if (v14 <= v4 || (v6 -= 32, v21 <= v7))
          {
            v6 = v21;
            goto LABEL_39;
          }

          goto LABEL_27;
        }

        v19 = v14 - 32;
        if (v18 != v14)
        {
          v20 = *(v14 - 1);
          *v5 = *v19;
          *(v5 + 1) = v20;
        }

        v5 -= 32;
        v14 -= 32;
      }

      while (v19 > v4);
      v14 = v19;
    }
  }

  else
  {
    if (a4 != __src || &__src[32 * v10] <= a4)
    {
      __src = memmove(a4, __src, 32 * v10);
    }

    v14 = &v4[32 * v10];
    if (v8 >= 32 && v6 < v5)
    {
      sub_25AF2ECCC(__src, __dst, a3);
      while (sub_25B005E24() == -1)
      {
        v15 = v6;
        v16 = v7 == v6;
        v6 += 32;
        if (!v16)
        {
          goto LABEL_14;
        }

LABEL_15:
        v7 += 32;
        if (v4 >= v14 || v6 >= v5)
        {
          goto LABEL_37;
        }
      }

      v15 = v4;
      v16 = v7 == v4;
      v4 += 32;
      if (v16)
      {
        goto LABEL_15;
      }

LABEL_14:
      v17 = *(v15 + 1);
      *v7 = *v15;
      *(v7 + 1) = v17;
      goto LABEL_15;
    }

LABEL_37:
    v6 = v7;
  }

LABEL_39:
  if (v6 != v4 || v6 >= &v4[(v14 - v4 + (v14 - v4 < 0 ? 0x1FuLL : 0)) & 0xFFFFFFFFFFFFFFE0])
  {
    memmove(v6, v4, 32 * ((v14 - v4) / 32));
  }

  return 1;
}

uint64_t sub_25AF2DA08(unint64_t a1, int a2)
{
  v3 = v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if ((a1 & 0x8000000000000000) != 0 || (v7 = isUniquelyReferenced_nonNull_native, isUniquelyReferenced_nonNull_native = a1, v8 = *v3, 1 << *(*v3 + 32) <= a1))
  {
    __break(1u);
    goto LABEL_8;
  }

  if (((*(v8 + 8 * (a1 >> 6) + 56) >> a1) & 1) == 0)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (*(v8 + 36) != a2)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v12 = *v3;
  if (!v7)
  {
LABEL_10:
    v11 = isUniquelyReferenced_nonNull_native;
    sub_25AF94858();
    isUniquelyReferenced_nonNull_native = v11;
    v8 = v12;
  }

  v9 = *(*(v8 + 48) + 8 * isUniquelyReferenced_nonNull_native);
  sub_25AF9A244(isUniquelyReferenced_nonNull_native);
  *v3 = v12;
  return v9;
}

unint64_t sub_25AF2DAD8(unint64_t result)
{
  if (result)
  {
    v1 = result;
    v3 = 0;
    MEMORY[0x25F85EC50](&v3, 8);
    result = (v3 * v1) >> 64;
    if (v3 * v1 < v1)
    {
      v2 = -v1 % v1;
      if (v2 > v3 * v1)
      {
        do
        {
          v3 = 0;
          MEMORY[0x25F85EC50](&v3, 8);
        }

        while (v2 > v3 * v1);
        return (v3 * v1) >> 64;
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_25AF2DB64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FA24790, &qword_25B0090E0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v26 - v11;
  swift_beginAccess();
  v13 = *(v4 + 40);
  v14 = *(v13 + 16);

  if (!v14)
  {
    goto LABEL_5;
  }

  v15 = sub_25AF8EE80(a1, a2);
  if ((v16 & 1) == 0)
  {

LABEL_5:
    v19 = swift_allocObject();
    swift_weakInit();
    type metadata accessor for _ControlsAvailableModel.LoadingModel(0);
    v18 = swift_allocObject();
    v18[2] = 0;

    sub_25B004264();
    v18[3] = &unk_25B00A888;
    v18[4] = v19;

    swift_beginAccess();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27 = *(v5 + 40);
    *(v5 + 40) = 0x8000000000000000;
    sub_25AF160A8(v18, a1, a2, isUniquelyReferenced_nonNull_native);

    *(v5 + 40) = v27;
    swift_endAccess();
    v21 = sub_25B005B64();
    (*(*(v21 - 8) + 56))(v12, 1, 1, v21);
    sub_25B005B34();

    v22 = sub_25B005B24();
    v23 = swift_allocObject();
    v24 = MEMORY[0x277D85700];
    v23[2] = v22;
    v23[3] = v24;
    v23[4] = v18;
    v23[5] = a1;
    v23[6] = a2;
    v23[7] = a3;
    v23[8] = a4;
    sub_25AF6C7F8(0, 0, v12, &unk_25B00A898, v23);

    return v18;
  }

  v17 = v15;

  v18 = *(*(v13 + 56) + 8 * v17);

  return v18;
}

uint64_t sub_25AF2DE18(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (!a2)
  {
    return MEMORY[0x277D84F90];
  }

  v5 = result;
  if (result != 0xD00000000000001FLL || 0x800000025B016070 != a2)
  {
    result = sub_25B006174();
    if ((result & 1) == 0)
    {
      if (v5 == 0xD000000000000016 && 0x800000025B015F90 == a2 || (result = sub_25B006174(), (result & 1) != 0))
      {
        v25 = *(a3 + 16);
        if (v25)
        {
          v26 = 0;
          v44 = a3 + 32;
          v24 = MEMORY[0x277D84F90];
          v46 = v25;
LABEL_34:
          v27 = v26;
          while (v27 < v25)
          {
            v26 = v27 + 1;
            if (__OFADD__(v27, 1))
            {
              goto LABEL_59;
            }

            v28 = v44 + 40 * v27;
            v29 = *v28;
            v30 = *(v28 + 8);
            v32 = *(v28 + 16);
            v31 = *(v28 + 24);
            v33 = *(v28 + 32);
            sub_25B005B34();
            sub_25AF181DC(v29, v30, v32, v31, v33);
            sub_25B005B24();
            sub_25B005AE4();
            if ((swift_task_isCurrentExecutor() & 1) == 0)
            {
              swift_task_reportUnexpectedExecutor();
            }

            if (v33 <= 0x3F)
            {
              sub_25AF181DC(v29, v30, v32, v31, v33);
              if (qword_27FA23708 != -1)
              {
                swift_once();
              }

              v34 = off_27FA24038;
              if (!*(off_27FA24038 + 2) || (sub_25B006294(), MEMORY[0x25F85E0A0](v29), v35 = sub_25B0062D4(), v36 = -1 << v34[32], v37 = v35 & ~v36, ((*&v34[((v37 >> 3) & 0xFFFFFFFFFFFFFF8) + 56] >> v37) & 1) == 0))
              {
LABEL_48:

                result = swift_isUniquelyReferenced_nonNull_native();
                if ((result & 1) == 0)
                {
                  result = sub_25AF98A50(0, *(v24 + 16) + 1, 1);
                }

                v40 = *(v24 + 16);
                v39 = *(v24 + 24);
                if (v40 >= v39 >> 1)
                {
                  result = sub_25AF98A50((v39 > 1), v40 + 1, 1);
                }

                *(v24 + 16) = v40 + 1;
                v41 = v24 + 40 * v40;
                *(v41 + 32) = v29;
                *(v41 + 40) = v30;
                *(v41 + 48) = v32;
                *(v41 + 56) = v31;
                *(v41 + 64) = v33;
                v25 = v46;
                if (v26 != v46)
                {
                  goto LABEL_34;
                }

                return v24;
              }

              v38 = ~v36;
              while (*(*(v34 + 6) + 8 * v37) != v29)
              {
                v37 = (v37 + 1) & v38;
                if (((*&v34[((v37 >> 3) & 0xFFFFFFFFFFFFFF8) + 56] >> v37) & 1) == 0)
                {
                  goto LABEL_48;
                }
              }
            }

            sub_25AF18128(v29, v30, v32, v31, v33);

            v27 = v26;
            v25 = v46;
            if (v26 == v46)
            {
              return v24;
            }
          }

          goto LABEL_58;
        }
      }

      return MEMORY[0x277D84F90];
    }
  }

  v6 = *(a3 + 16);
  if (!v6)
  {
    return MEMORY[0x277D84F90];
  }

  v7 = 0;
  v43 = a3 + 32;
  v42 = MEMORY[0x277D84F90];
  v45 = *(a3 + 16);
  while (v7 < v6)
  {
    v8 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      goto LABEL_57;
    }

    v9 = v43 + 40 * v7;
    v10 = *v9;
    v11 = *(v9 + 8);
    v13 = *(v9 + 16);
    v12 = *(v9 + 24);
    v14 = *(v9 + 32);
    sub_25B005B34();
    sub_25AF181DC(v10, v11, v13, v12, v14);
    sub_25B005B24();
    sub_25B005AE4();
    if ((swift_task_isCurrentExecutor() & 1) == 0)
    {
      swift_task_reportUnexpectedExecutor();
    }

    ++v7;
    if (v14 > 0x3F)
    {
      goto LABEL_7;
    }

    sub_25AF181DC(v10, v11, v13, v12, v14);
    if (qword_27FA23708 != -1)
    {
      swift_once();
    }

    v15 = off_27FA24038;
    if (*(off_27FA24038 + 2) && (sub_25B006294(), MEMORY[0x25F85E0A0](v10), v16 = sub_25B0062D4(), v17 = -1 << *(v15 + 32), v18 = v16 & ~v17, ((*(v15 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v18) & 1) != 0))
    {
      v19 = ~v17;
      while (*(v15[6] + 8 * v18) != v10)
      {
        v18 = (v18 + 1) & v19;
        if (((*(v15 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v18) & 1) == 0)
        {
          goto LABEL_7;
        }
      }

      v20 = v42;
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_25AF98A50(0, *(v42 + 16) + 1, 1);
        v20 = v42;
      }

      v22 = *(v20 + 16);
      v21 = *(v20 + 24);
      if (v22 >= v21 >> 1)
      {
        result = sub_25AF98A50((v21 > 1), v22 + 1, 1);
        v20 = v42;
      }

      *(v20 + 16) = v22 + 1;
      v42 = v20;
      v23 = v20 + 40 * v22;
      *(v23 + 32) = v10;
      *(v23 + 40) = v11;
      *(v23 + 48) = v13;
      *(v23 + 56) = v12;
      *(v23 + 64) = v14;
    }

    else
    {
LABEL_7:
      sub_25AF18128(v10, v11, v13, v12, v14);
    }

    v6 = v45;
    if (v8 == v45)
    {
      return v42;
    }
  }

  __break(1u);
LABEL_57:
  __break(1u);
LABEL_58:
  __break(1u);
LABEL_59:
  __break(1u);
  return result;
}

id sub_25AF2E3DC()
{
  v24[1] = *MEMORY[0x277D85DE8];
  v24[0] = 0;
  v0 = sub_25AF2CB0C(v24);
  v1 = [objc_allocWithZone(MEMORY[0x277CC37B0]) initWithQueue_];

  v23 = 0;
  v2 = [v1 getStewieSupport_];
  if (v2)
  {
    v3 = v2;
    v4 = v23;
    v5 = [v3 status];
    if (qword_27FA23800 != -1)
    {
      swift_once();
    }

    v6 = sub_25B0044C4();
    __swift_project_value_buffer(v6, qword_27FA30C28);
    v7 = sub_25B0044B4();
    v8 = sub_25B005CD4();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v23 = v10;
      *v9 = 136315394;
      *(v9 + 4) = sub_25AF8E7DC(0xD000000000000014, 0x800000025B016910, &v23);
      *(v9 + 12) = 1024;
      *(v9 + 14) = v5;
      _os_log_impl(&dword_25AF0B000, v7, v8, "%s - Skipper support status: %{BOOL}d", v9, 0x12u);
      __swift_destroy_boxed_opaque_existential_0Tm(v10);
      MEMORY[0x25F85EC30](v10, -1, -1);
      MEMORY[0x25F85EC30](v9, -1, -1);
    }
  }

  else
  {
    v11 = v23;
    v12 = sub_25B004084();

    swift_willThrow();
    if (qword_27FA23800 != -1)
    {
      swift_once();
    }

    v13 = sub_25B0044C4();
    __swift_project_value_buffer(v13, qword_27FA30C28);
    v14 = v12;
    v15 = sub_25B0044B4();
    v16 = sub_25B005CB4();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v24[0] = v19;
      *v17 = 136315394;
      *(v17 + 4) = sub_25AF8E7DC(0xD000000000000014, 0x800000025B016910, v24);
      *(v17 + 12) = 2112;
      v20 = v12;
      v21 = _swift_stdlib_bridgeErrorToNSError();
      *(v17 + 14) = v21;
      *v18 = v21;
      _os_log_impl(&dword_25AF0B000, v15, v16, "%s - Error getting Stewie support status: %@", v17, 0x16u);
      sub_25AF2602C(v18, &qword_27FA23AC0, &qword_25B009140);
      MEMORY[0x25F85EC30](v18, -1, -1);
      __swift_destroy_boxed_opaque_existential_0Tm(v19);
      MEMORY[0x25F85EC30](v19, -1, -1);
      MEMORY[0x25F85EC30](v17, -1, -1);
    }

    else
    {
    }

    return 0;
  }

  return v5;
}

uint64_t sub_25AF2E7A8()
{
  v10 = MEMORY[0x277D84FA0];
  if (sub_25AF2E3DC())
  {
    if (qword_27FA23800 != -1)
    {
      swift_once();
    }

    v0 = sub_25B0044C4();
    __swift_project_value_buffer(v0, qword_27FA30C28);
    v1 = sub_25B0044B4();
    v2 = sub_25B005CD4();
    if (os_log_type_enabled(v1, v2))
    {
      v3 = swift_slowAlloc();
      *v3 = 0;
      _os_log_impl(&dword_25AF0B000, v1, v2, "calculateRankOneControls Found skipper supported", v3, 2u);
      MEMORY[0x25F85EC30](v3, -1, -1);
    }

    sub_25AF8FEC4(&v9, 0xD000000000000022, 0x800000025B0168E0);

    return v10;
  }

  else
  {
    if (qword_27FA23800 != -1)
    {
      swift_once();
    }

    v5 = sub_25B0044C4();
    __swift_project_value_buffer(v5, qword_27FA30C28);
    v6 = sub_25B0044B4();
    v7 = sub_25B005CD4();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_25AF0B000, v6, v7, "calculateRankOneControls did not find skipper supported", v8, 2u);
      MEMORY[0x25F85EC30](v8, -1, -1);
    }

    return MEMORY[0x277D84FA0];
  }
}

uint64_t sub_25AF2E980(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  result = sub_25AF18C1C(a1);
  v12 = result;
  v7 = qword_27FA30B10;
  if (qword_27FA30B10)
  {
    v8 = result;
    swift_getKeyPath();
    v11[1] = v7;
    sub_25AF2EBDC(&qword_27FA25250, type metadata accessor for GlanceModel, &protocol conformance descriptor for GlanceModel);
    v9 = v7;
    sub_25B004234();

    v10 = *a3;
    swift_beginAccess();
    LODWORD(v10) = v9[v10];

    if (v10 == 1)
    {
      sub_25AF9024C(v11, a4);
      return v12;
    }

    return v8;
  }

  else
  {
    __break(1u);
  }

  return result;
}

char *sub_25AF2EA98()
{
  v0 = sub_25AFCD450(0, 1, 1, MEMORY[0x277D84F90]);
  v2 = *(v0 + 2);
  v1 = *(v0 + 3);
  v3 = v1 >> 1;
  v4 = v2 + 1;
  if (v1 >> 1 <= v2)
  {
    v0 = sub_25AFCD450((v1 > 1), v2 + 1, 1, v0);
    v1 = *(v0 + 3);
    v3 = v1 >> 1;
  }

  *(v0 + 2) = v4;
  v5 = &v0[40 * v2];
  v6 = v2 + 2;
  *(v5 + 4) = 10;
  *(v5 + 5) = 0;
  *(v5 + 6) = 0;
  *(v5 + 7) = 0;
  v5[64] = 0;
  if (v3 < v6)
  {
    v0 = sub_25AFCD450((v1 > 1), v6, 1, v0);
  }

  *(v0 + 2) = v6;
  v7 = &v0[40 * v4];
  *(v7 + 4) = 16;
  *(v7 + 5) = 0;
  *(v7 + 6) = 0;
  *(v7 + 7) = 0;
  v7[64] = 0;
  return v0;
}

uint64_t sub_25AF2EB6C(uint64_t *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_25B006174() & 1;
  }
}

uint64_t sub_25AF2EBC4(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_25AF2EBDC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_25AF2EC2C()
{
  result = qword_27FA24088;
  if (!qword_27FA24088)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27FA25660, &unk_25B00A870);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA24088);
  }

  return result;
}

uint64_t sub_25AF2EC90()
{
  *(*(v0 + 16) + 32) = *(v0 + 24);
}

unint64_t sub_25AF2ECCC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27FA24090;
  if (!qword_27FA24090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA24090);
  }

  return result;
}

uint64_t sub_25AF2ED20()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_25AF2ED58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  *v10 = v5;
  v10[1] = sub_25AF2F588;

  return sub_25AF274DC(a1, a2, a3, a4, v4);
}

uint64_t sub_25AF2EE18()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_25AF2EE68(uint64_t a1)
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
  v11[1] = sub_25AF18ADC;

  return sub_25AF27D78(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_25AF2EF44()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_25AF2EF7C()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_25AF2F028;

  return sub_25AF2C880(v2, v3);
}

uint64_t sub_25AF2F028(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t sub_25AF2F124(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_25AF18ADC;

  return sub_25AF2C90C(a1, v4);
}

void sub_25AF2F1E0(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_25AF2C458(v1);
}

void sub_25AF2F210()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + 16);
  *(v1 + 16) = v2;
  v4 = v2;
}

id sub_25AF2F248(void *a1, char a2, double a3)
{
  v6 = sub_25B005894();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = (&v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_27FA23800 != -1)
  {
    swift_once();
  }

  v10 = sub_25B0044C4();
  __swift_project_value_buffer(v10, qword_27FA30C28);
  v11 = sub_25B0044B4();
  v12 = sub_25B005C94();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v24 = v14;
    *v13 = 136315138;
    *(v13 + 4) = sub_25AF8E7DC(0xD00000000000001ALL, 0x800000025B016980, &v24);
    _os_log_impl(&dword_25AF0B000, v11, v12, "%s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v14);
    MEMORY[0x25F85EC30](v14, -1, -1);
    MEMORY[0x25F85EC30](v13, -1, -1);
  }

  v15 = [objc_allocWithZone(MEMORY[0x277D1B1C8]) initWithSize:19.0 scale:{19.0, a3}];
  [v15 setShape_];
  if ((a2 & 1) == 0)
  {
    v18 = [a1 imageForDescriptor_];
    if (!v18)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  sub_25AF18BD4(0, &qword_27FA271F0, 0x277D85C78);
  *v9 = sub_25B005D34();
  (*(v7 + 104))(v9, *MEMORY[0x277D851F0], v6);
  v16 = sub_25B0058A4();
  result = (*(v7 + 8))(v9, v6);
  if (v16)
  {
    v18 = [a1 prepareImageForDescriptor_];
    if (!v18)
    {
LABEL_8:

      return 0;
    }

LABEL_10:
    v19 = v18;
    v20 = [v18 CGImage];
    if (v20)
    {
      v21 = v20;
      v22 = [objc_allocWithZone(MEMORY[0x277D755B8]) initWithCGImage:v20 scale:0 orientation:a3];

      return v22;
    }

    return 0;
  }

  __break(1u);
  return result;
}

uint64_t sub_25AF2F5A4@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v4 = sub_25B004B14();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA241A0, &qword_25B012CC0);
  MEMORY[0x28223BE20](v8);
  v10 = &v14 - v9;
  sub_25AF31768(v2, &v14 - v9);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_25B004704();
    return (*(*(v11 - 8) + 32))(a1, v10, v11);
  }

  else
  {
    sub_25B005CC4();
    v13 = sub_25B004F24();
    sub_25B0044A4();

    sub_25B004B04();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

void sub_25AF2F78C(void *a1@<X8>)
{
  v2 = v1;
  v75 = a1;
  v3 = sub_25B004204();
  MEMORY[0x28223BE20](v3 - 8);
  v65[1] = v65 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_25B005904();
  MEMORY[0x28223BE20](v5 - 8);
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA24168, &qword_25B00AAF0);
  MEMORY[0x28223BE20](v71);
  v74 = (v65 - v6);
  v7 = type metadata accessor for ControlConfigurationView(0);
  v67 = *(v7 - 8);
  v8 = *(v67 + 64);
  MEMORY[0x28223BE20](v7);
  v9 = v65 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = v65 - v11;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FA24170, &qword_25B00AAF8);
  v69 = *(v73 - 8);
  MEMORY[0x28223BE20](v73);
  v68 = v65 - v13;
  v14 = sub_25AF301A0(v2);
  v72 = v14;
  if (v14)
  {
    v15 = [v14 deviceID];
    v66 = sub_25B005934();
    v70 = v16;
  }

  else
  {
    v66 = 0;
    v70 = 0;
  }

  v17 = v2 + *(v7 + 20);
  v18 = *v17;
  v19 = [*v17 intentReference];
  if (v19)
  {
    v20 = v19;
    v21 = [v19 intent];

    if (v21)
    {
      v22 = qword_27FA30B10;
      if (qword_27FA30B10)
      {
        v24 = *(v17 + 24);
        *v81 = *v17;
        v23 = *v81;
        *&v81[8] = *(v17 + 8);
        *&v81[24] = v24;
        LOBYTE(v82) = 64;
        v25 = *(v2 + *(v7 + 24));

        v26 = v22;
        v27 = v23;
        v28 = sub_25AF730A0(v81, v25);

        swift_getKeyPath();
        *v81 = v28;
        sub_25AF313E0();
        sub_25B004234();

        v30 = *(v28 + 96);
        v29 = *(v28 + 104);

        if (v29)
        {
          v31 = v30;
        }

        else
        {
          v31 = 0;
        }

        if (v29)
        {
          v32 = v29;
        }

        else
        {
          v32 = 0xE000000000000000;
        }

        sub_25AF31438(v2, v12);
        v33 = (*(v67 + 80) + 16) & ~*(v67 + 80);
        v34 = swift_allocObject();
        sub_25AF314A0(v12, v34 + v33);
        sub_25AF31438(v2, v9);
        v35 = swift_allocObject();
        sub_25AF314A0(v9, v35 + v33);
        v36 = v21;
        v37 = sub_25B004884();
        v38 = sub_25B004F44();
        *&v76 = v36;
        *(&v76 + 1) = v31;
        *&v77 = v32;
        *(&v77 + 1) = v66;
        *&v78 = v70;
        *(&v78 + 1) = 12;
        *&v79 = sub_25AF31504;
        *(&v79 + 1) = v34;
        *v80 = sub_25AF316A0;
        *&v80[8] = v35;
        *&v80[16] = v37;
        v80[24] = v38;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA241A8, &qword_25B00AB40);
        sub_25B004914();
        v39 = swift_allocObject();
        *(v39 + 16) = xmmword_25B00A900;
        sub_25B004904();
        v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA24180, &qword_25B00AB08);
        v41 = sub_25AF312D0();
        v42 = v68;
        MEMORY[0x25F85D020](2, v39, v40, v41);

        v82 = v78;
        v83 = v79;
        *v84 = *v80;
        *&v84[9] = *&v80[9];
        *v81 = v76;
        *&v81[16] = v77;
        sub_25AF31700(v81);
        v43 = v69;
        v44 = v73;
        (*(v69 + 16))(v74, v42, v73);
        swift_storeEnumTagMultiPayload();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA25750, &qword_25B00AB00);
        *&v76 = v40;
        *(&v76 + 1) = v41;
        swift_getOpaqueTypeConformance2();
        sub_25AF3135C();
        sub_25B004C74();

        (*(v43 + 8))(v42, v44);
        return;
      }

LABEL_24:
      __break(1u);
      return;
    }
  }

  v45 = MobileGestalt_get_current_device();
  if (!v45)
  {
    __break(1u);
    goto LABEL_24;
  }

  v46 = v45;

  internalBuild = MobileGestalt_get_internalBuild();

  if (internalBuild)
  {
    *v81 = 0;
    *&v81[8] = 0xE000000000000000;
    sub_25B005F24();
    sub_25B0058F4();
    if (qword_27FA23728 != -1)
    {
      swift_once();
    }

    v48 = qword_27FA30B00;
    sub_25B0041F4();
    v49 = sub_25B005954();
    v51 = v50;

    *v81 = v49;
    *&v81[8] = v51;
    MEMORY[0x25F85D7B0](0xD000000000000020, 0x800000025B016B30);
    v52 = [v18 description];
    v53 = sub_25B005934();
    v55 = v54;

    MEMORY[0x25F85D7B0](v53, v55);

    MEMORY[0x25F85D7B0](23854, 0xE200000000000000);
    v76 = *v81;
    *&v77 = 0;
    *(&v77 + 1) = MEMORY[0x277D84F90];
    LOBYTE(v78) = 0;
  }

  else
  {
    sub_25B004BC4();
    if (qword_27FA23728 != -1)
    {
      swift_once();
    }

    v56 = qword_27FA30B00;
    *&v76 = sub_25B005094();
    *(&v76 + 1) = v58;
    *&v77 = v57 & 1;
    *(&v77 + 1) = v59;
    LOBYTE(v78) = 1;
  }

  sub_25B004C74();
  v60 = *&v81[16];
  v61 = v82;
  v62 = v74;
  *v74 = *v81;
  v62[1] = v60;
  *(v62 + 32) = v61;
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA25750, &qword_25B00AB00);
  v63 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA24180, &qword_25B00AB08);
  v64 = sub_25AF312D0();
  *v81 = v63;
  *&v81[8] = v64;
  swift_getOpaqueTypeConformance2();
  sub_25AF3135C();
  sub_25B004C74();
}

id sub_25AF301A0(uint64_t a1)
{
  v1 = [*(a1 + *(type metadata accessor for ControlConfigurationView(0) + 20)) extensionIdentity];
  v2 = [v1 isRemote];

  result = 0;
  if (!v2)
  {
    return result;
  }

  v4 = [objc_allocWithZone(MEMORY[0x277CFA300]) init];
  v5 = [v4 allPairedDevices];
  sub_25AF317D8();
  v6 = sub_25B005A44();

  if (v6 >> 62)
  {
    result = sub_25B005EA4();
    if (result)
    {
      goto LABEL_4;
    }

LABEL_9:

    return 0;
  }

  result = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
    goto LABEL_9;
  }

LABEL_4:
  if ((v6 & 0xC000000000000001) != 0)
  {
    v7 = MEMORY[0x25F85DD30](0, v6);
    goto LABEL_7;
  }

  if (*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v7 = *(v6 + 32);
LABEL_7:
    v8 = v7;

    return v8;
  }

  __break(1u);
  return result;
}

uint64_t sub_25AF302DC(uint64_t result, uint64_t a2)
{
  v2 = qword_27FA30B10;
  if (qword_27FA30B10)
  {
    v3 = result;
    v4 = a2 + *(type metadata accessor for ControlConfigurationView(0) + 20);
    v5 = *(v4 + 24);
    v8 = *v4;
    v9 = *(v4 + 8);
    v10 = v5;

    v6 = v2;
    v7 = v8;
    sub_25AF71F04(&v8, v3);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_25AF30388(uint64_t a1)
{
  v2 = sub_25B004704();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = (&v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = qword_27FA30B10;
  if (qword_27FA30B10)
  {
    v7 = a1 + *(type metadata accessor for ControlConfigurationView(0) + 20);
    v9 = *(v7 + 24);
    v12 = *v7;
    v8 = v12;
    v13 = *(v7 + 8);
    v14 = v9;

    v10 = v6;
    v11 = v8;
    sub_25AF2F5A4(v5);
    sub_25AF9B528();

    (*(v3 + 8))(v5, v2);
  }

  else
  {
    __break(1u);
  }
}

id sub_25AF304C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2 + *(a1 + 20);
  v6 = *v3;
  v4 = *(v3 + 24);
  *a2 = *v3;
  *(a2 + 8) = *(v3 + 8);
  *(a2 + 24) = v4;
  *(a2 + 32) = 64;

  return v6;
}

id sub_25AF30534()
{
  v1 = [objc_allocWithZone(MEMORY[0x277D7D7E8]) init];
  [v1 setIntent_];
  [v1 setFamily_];
  v2 = sub_25B005924();
  [v1 setWidgetDisplayName_];

  if (v0[4])
  {
    v3 = sub_25B005924();
    [v1 setRemoteDeviceIdentifier_];

    v4 = sub_25B005924();
    [v1 setRemoteAppLocalizedName_];
  }

  v5 = [objc_allocWithZone(MEMORY[0x277D7D7F0]) initWithOptions_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA24130, &qword_25B00AA50);
  sub_25B004F14();
  [v5 setDelegate_];

  return v5;
}

void *sub_25AF306DC@<X0>(void *a1@<X8>)
{
  v4 = v1[6];
  v3 = v1[7];
  v6 = v1[8];
  v5 = v1[9];
  v7 = type metadata accessor for ControlConfigurationViewRepresentable.Coordinator();
  v8 = objc_allocWithZone(v7);
  v9 = &v8[OBJC_IVAR____TtCV17NanoControlCenterP33_0684E9E8143E920EF7AE2D187751270D37ControlConfigurationViewRepresentable11Coordinator_updateConfiguration];
  *v9 = v4;
  *(v9 + 1) = v3;
  v10 = &v8[OBJC_IVAR____TtCV17NanoControlCenterP33_0684E9E8143E920EF7AE2D187751270D37ControlConfigurationViewRepresentable11Coordinator_cancelled];
  *v10 = v6;
  *(v10 + 1) = v5;
  v12.receiver = v8;
  v12.super_class = v7;

  result = objc_msgSendSuper2(&v12, sel_init);
  *a1 = result;
  return result;
}

uint64_t sub_25AF307B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_25AF30BFC(a1, a2, a3);

  return MEMORY[0x28212EF70](a1, a2, a3, v6);
}

uint64_t sub_25AF30818(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_25AF30BFC(a1, a2, a3);

  return MEMORY[0x28212EF38](a1, a2, a3, v6);
}

void sub_25AF3087C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_25AF30BFC(a1, a2, a3);
  sub_25B004EF4();
  __break(1u);
}

id sub_25AF30AE8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ControlConfigurationViewRepresentable.Coordinator();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_25AF30BA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27FA24128;
  if (!qword_27FA24128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA24128);
  }

  return result;
}

unint64_t sub_25AF30BFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27FA24138;
  if (!qword_27FA24138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA24138);
  }

  return result;
}

uint64_t sub_25AF30C50(uint64_t a1)
{
  v2 = v1;
  if (qword_27FA23800 != -1)
  {
    swift_once();
  }

  v4 = sub_25B0044C4();
  __swift_project_value_buffer(v4, qword_27FA30C28);
  v5 = sub_25B0044B4();
  v6 = sub_25B005C94();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v10 = v8;
    *v7 = 136315138;
    *(v7 + 4) = sub_25AF8E7DC(0xD000000000000033, 0x800000025B016AD0, &v10);
    _os_log_impl(&dword_25AF0B000, v5, v6, "%s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v8);
    MEMORY[0x25F85EC30](v8, -1, -1);
    MEMORY[0x25F85EC30](v7, -1, -1);
  }

  return (*(v2 + OBJC_IVAR____TtCV17NanoControlCenterP33_0684E9E8143E920EF7AE2D187751270D37ControlConfigurationViewRepresentable11Coordinator_updateConfiguration))(a1);
}

uint64_t sub_25AF30DB4()
{
  v1 = v0;
  if (qword_27FA23800 != -1)
  {
    swift_once();
  }

  v2 = sub_25B0044C4();
  __swift_project_value_buffer(v2, qword_27FA30C28);
  v3 = sub_25B0044B4();
  v4 = sub_25B005C94();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v8 = v6;
    *v5 = 136315138;
    *(v5 + 4) = sub_25AF8E7DC(0xD00000000000002ELL, 0x800000025B016AA0, &v8);
    _os_log_impl(&dword_25AF0B000, v3, v4, "%s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v6);
    MEMORY[0x25F85EC30](v6, -1, -1);
    MEMORY[0x25F85EC30](v5, -1, -1);
  }

  return (*(v1 + OBJC_IVAR____TtCV17NanoControlCenterP33_0684E9E8143E920EF7AE2D187751270D37ControlConfigurationViewRepresentable11Coordinator_cancelled))();
}

uint64_t sub_25AF30F24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FA24140, &qword_25B00AA58);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_25AF31000(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FA24140, &qword_25B00AA58);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t type metadata accessor for ControlConfigurationView(uint64_t a1)
{
  result = qword_27FA24150;
  if (!qword_27FA24150)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_25AF31110(uint64_t a1)
{
  sub_25AF31194(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_25AF31194(uint64_t a1)
{
  if (!qword_27FA24160)
  {
    sub_25B004704();
    v1 = sub_25B0045A4();
    if (!v2)
    {
      atomic_store(v1, &qword_27FA24160);
    }
  }
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

uint64_t sub_25AF31208(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
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

uint64_t sub_25AF31250(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

unint64_t sub_25AF312D0()
{
  result = qword_27FA24188;
  if (!qword_27FA24188)
  {
    v1 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA24180, &qword_25B00AB08);
    sub_25AF30BA8(v1, v2, v3);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA24188);
  }

  return result;
}

unint64_t sub_25AF3135C()
{
  result = qword_27FA24190;
  if (!qword_27FA24190)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA25750, &qword_25B00AB00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA24190);
  }

  return result;
}

unint64_t sub_25AF313E0()
{
  result = qword_27FA25270;
  if (!qword_27FA25270)
  {
    type metadata accessor for GlanceButtonModel(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA25270);
  }

  return result;
}

uint64_t sub_25AF31438(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ControlConfigurationView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_25AF314A0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ControlConfigurationView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_25AF31504(uint64_t a1)
{
  v3 = *(type metadata accessor for ControlConfigurationView(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_25AF302DC(a1, v4);
}

uint64_t objectdestroyTm_0()
{
  v1 = type metadata accessor for ControlConfigurationView(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA241A0, &qword_25B012CC0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_25B004704();
    (*(*(v5 - 8) + 8))(v0 + v3, v5);
  }

  else
  {
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

void sub_25AF316A0()
{
  v1 = *(type metadata accessor for ControlConfigurationView(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  sub_25AF30388(v2);
}

uint64_t sub_25AF31700(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA24180, &qword_25B00AB08);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_25AF31768(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA241A0, &qword_25B012CC0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_25AF317D8()
{
  result = qword_27FA241B0;
  if (!qword_27FA241B0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27FA241B0);
  }

  return result;
}

unint64_t sub_25AF31828()
{
  result = qword_27FA241B8;
  if (!qword_27FA241B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27FA241C0, &qword_25B00AB48);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA24180, &qword_25B00AB08);
    sub_25AF312D0();
    swift_getOpaqueTypeConformance2();
    sub_25AF3135C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA241B8);
  }

  return result;
}

double sub_25AF31974()
{
  swift_getKeyPath();
  sub_25AF34170(&qword_27FA23D18, &protocol conformance descriptor for ButtonLayout);
  sub_25B004234();

  swift_beginAccess();
  v1 = v0[18];
  swift_getKeyPath();
  sub_25B004234();

  swift_beginAccess();
  v2 = v0[15];
  swift_getKeyPath();
  sub_25B004234();

  v3 = v0[17];
  if (v2 > v3)
  {
    v3 = v2;
  }

  return (v1 - (v3 + v3) - v0[5]) * 0.5;
}

uint64_t sub_25AF31AC4(unint64_t a1, double a2)
{
  v3 = v2;
  swift_getKeyPath();
  sub_25AF34170(&qword_27FA23D18, &protocol conformance descriptor for ButtonLayout);
  sub_25B004234();

  v7 = *(*(v2 + 176) + 16);
  v8 = __OFSUB__(a1, v7);
  v9 = a1 - v7;
  if (v9 < 0 != v8)
  {
    goto LABEL_8;
  }

  v10 = v9 + 1;
  if (__OFADD__(v9, 1))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if ((v10 & 0x8000000000000000) == 0)
  {
    if (v9 == -1)
    {
      v11 = MEMORY[0x277D84F90];
    }

    else
    {
      v11 = sub_25B005A84();
      *(v11 + 16) = v10;
      bzero((v11 + 32), 8 * v10);
    }

    swift_getKeyPath();
    sub_25B004234();

    swift_getKeyPath();
    sub_25B004254();

    sub_25AF36634(v11);
    swift_getKeyPath();
    sub_25B004244();

LABEL_8:
    swift_getKeyPath();
    sub_25B004234();

    swift_getKeyPath();
    sub_25B004254();

    v12 = *(v3 + 176);
    result = swift_isUniquelyReferenced_nonNull_native();
    *(v3 + 176) = v12;
    if (result)
    {
      if ((a1 & 0x8000000000000000) == 0)
      {
        goto LABEL_10;
      }
    }

    else
    {
      result = sub_25AFCDB78(v12);
      v12 = result;
      if ((a1 & 0x8000000000000000) == 0)
      {
LABEL_10:
        if (*(v12 + 16) > a1)
        {
          *(v12 + 8 * a1 + 32) = a2;
          *(v3 + 176) = v12;
          swift_getKeyPath();
          sub_25B004244();
        }

        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

LABEL_16:
  __break(1u);
  return result;
}

void sub_25AF31D44(int64_t a1)
{
  swift_getKeyPath();
  v8[0] = v1;
  sub_25AF34170(&qword_27FA23D18, &protocol conformance descriptor for ButtonLayout);
  sub_25B004234();

  if (*(*(v1 + 176) + 16) > a1)
  {
    swift_getKeyPath();
    v8[0] = v1;
    sub_25B004234();

    if ((a1 & 0x8000000000000000) == 0)
    {
      if (*(*(v1 + 176) + 16) <= a1)
      {
        __break(1u);
      }

      else
      {
        swift_getKeyPath();
        v8[0] = v1;
        sub_25B004234();

        swift_beginAccess();
      }

      return;
    }

    __break(1u);
    goto LABEL_10;
  }

  if (qword_27FA23800 != -1)
  {
LABEL_10:
    swift_once();
  }

  v3 = sub_25B0044C4();
  __swift_project_value_buffer(v3, qword_27FA30C28);
  v4 = sub_25B0044B4();
  v5 = sub_25B005CA4();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v8[0] = v7;
    *v6 = 136315394;
    *(v6 + 4) = sub_25AF8E7DC(0xD000000000000019, 0x800000025B016D20, v8);
    *(v6 + 12) = 2048;
    *(v6 + 14) = a1;
    _os_log_impl(&dword_25AF0B000, v4, v5, "%s row: %ld is past the count of rowMinYPositions we have. Returning 0.", v6, 0x16u);
    __swift_destroy_boxed_opaque_existential_0Tm(v7);
    MEMORY[0x25F85EC30](v7, -1, -1);
    MEMORY[0x25F85EC30](v6, -1, -1);
  }
}

double ButtonLayout.topOffset.getter()
{
  swift_getKeyPath();
  sub_25AF34170(&qword_27FA23D18, &protocol conformance descriptor for ButtonLayout);
  sub_25B004234();

  swift_beginAccess();
  return *(v0 + 96);
}

uint64_t ButtonLayout.editMode.getter()
{
  swift_getKeyPath();
  sub_25AF34170(&qword_27FA23D18, &protocol conformance descriptor for ButtonLayout);
  sub_25B004234();

  swift_beginAccess();
  return *(v0 + 88);
}

uint64_t sub_25AF320F4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_25AF34170(&qword_27FA23D18, &protocol conformance descriptor for ButtonLayout);
  sub_25B004234();

  result = swift_beginAccess();
  *a2 = *(v3 + 88);
  return result;
}

uint64_t ButtonLayout.editMode.setter(char a1)
{
  v2 = a1 & 1;
  result = swift_beginAccess();
  if (*(v1 + 88) == v2)
  {
    *(v1 + 88) = v2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_25AF34170(&qword_27FA23D18, &protocol conformance descriptor for ButtonLayout);
    sub_25B004224();
  }

  return result;
}

uint64_t (*ButtonLayout.editMode.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
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
  v4[4] = OBJC_IVAR____TtC17NanoControlCenter12ButtonLayout___observationRegistrar;
  *v4 = v1;
  v4[5] = sub_25AF34170(&qword_27FA23D18, &protocol conformance descriptor for ButtonLayout);
  sub_25B004234();

  *v4 = v1;
  swift_getKeyPath();
  sub_25B004254();

  swift_beginAccess();
  return sub_25AF32400;
}

uint64_t ButtonLayout.topOffset.setter(double a1)
{
  result = swift_beginAccess();
  if (*(v1 + 96) == a1)
  {
    *(v1 + 96) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_25AF34170(&qword_27FA23D18, &protocol conformance descriptor for ButtonLayout);
    sub_25B004224();
  }

  return result;
}

double sub_25AF32878@<D0>(uint64_t *a1@<X0>, double *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_25AF34170(&qword_27FA23D18, &protocol conformance descriptor for ButtonLayout);
  sub_25B004234();

  swift_beginAccess();
  result = *(v3 + 96);
  *a2 = result;
  return result;
}

uint64_t type metadata accessor for ButtonLayout(uint64_t a1)
{
  result = qword_27FA241E0;
  if (!qword_27FA241E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_25AF329EC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  result = swift_beginAccess();
  *(v1 + 88) = v2;
  return result;
}

uint64_t sub_25AF32A40(uint64_t a1, double a2)
{
  result = swift_beginAccess();
  *(a1 + 96) = a2;
  return result;
}

uint64_t sub_25AF32A94()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  result = swift_beginAccess();
  *(v1 + 96) = v2;
  return result;
}

uint64_t (*ButtonLayout.topOffset.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
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
  v4[4] = OBJC_IVAR____TtC17NanoControlCenter12ButtonLayout___observationRegistrar;
  *v4 = v1;
  v4[5] = sub_25AF34170(&qword_27FA23D18, &protocol conformance descriptor for ButtonLayout);
  sub_25B004234();

  *v4 = v1;
  swift_getKeyPath();
  sub_25B004254();

  swift_beginAccess();
  return sub_25AF32C14;
}

double ButtonLayout.viewWidth.getter()
{
  swift_getKeyPath();
  sub_25AF34170(&qword_27FA23D18, &protocol conformance descriptor for ButtonLayout);
  sub_25B004234();

  swift_beginAccess();
  return *(v0 + 144);
}

double ButtonLayout.sideMargins.getter()
{
  swift_getKeyPath();
  sub_25AF34170(&qword_27FA23D18, &protocol conformance descriptor for ButtonLayout);
  sub_25B004234();

  swift_beginAccess();
  return *(v0 + 112);
}

__n128 sub_25AF32D64@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_25AF34170(&qword_27FA23D18, &protocol conformance descriptor for ButtonLayout);
  sub_25B004234();

  swift_beginAccess();
  result = *(v3 + 112);
  v5 = *(v3 + 128);
  *a2 = result;
  *(a2 + 16) = v5;
  return result;
}

double sub_25AF32E0C(double *a1, __n128 a2, __n128 a3, __n128 a4, __n128 a5)
{
  a2.n128_f64[0] = *a1;
  a3.n128_f64[0] = a1[1];
  a4.n128_f64[0] = a1[2];
  a5.n128_f64[0] = a1[3];
  return ButtonLayout.sideMargins.setter(a2, a3, a4, a5);
}

double ButtonLayout.sideMargins.setter(__n128 a1, __n128 a2, __n128 a3, __n128 a4)
{
  v11 = a3.n128_u64[0];
  v12 = a4.n128_f64[0];
  v9 = a1.n128_u64[0];
  v10 = a2.n128_u64[0];
  swift_beginAccess();
  *&v5.f64[0] = v9;
  *&v5.f64[1] = v10;
  *&v6.f64[0] = v11;
  v6.f64[1] = v12;
  if (vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*(v4 + 112), v5), vceqq_f64(*(v4 + 128), v6)))))
  {
    *(v4 + 112) = v9;
    *(v4 + 120) = v10;
    result = v12;
    *(v4 + 128) = v11;
    *(v4 + 136) = v12;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_25AF34170(&qword_27FA23D18, &protocol conformance descriptor for ButtonLayout);
    sub_25B004224();
  }

  return result;
}

uint64_t (*ButtonLayout.sideMargins.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
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
  v4[4] = OBJC_IVAR____TtC17NanoControlCenter12ButtonLayout___observationRegistrar;
  *v4 = v1;
  v4[5] = sub_25AF34170(&qword_27FA23D18, &protocol conformance descriptor for ButtonLayout);
  sub_25B004234();

  *v4 = v1;
  swift_getKeyPath();
  sub_25B004254();

  swift_beginAccess();
  return sub_25AF330B4;
}

double ButtonLayout.containingViewSize.getter()
{
  swift_getKeyPath();
  sub_25AF34170(&qword_27FA23D18, &protocol conformance descriptor for ButtonLayout);
  sub_25B004234();

  swift_beginAccess();
  return *(v0 + 144);
}

__n128 sub_25AF33160@<Q0>(__n128 **a1@<X0>, __n128 *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_25AF34170(&qword_27FA23D18, &protocol conformance descriptor for ButtonLayout);
  sub_25B004234();

  swift_beginAccess();
  result = v3[9];
  *a2 = result;
  return result;
}

double sub_25AF33260(unint64_t *a1, __n128 a2, __n128 a3, __n128 a4, __n128 a5)
{
  a2.n128_u64[0] = *a1;
  a3.n128_u64[0] = a1[1];
  a4.n128_u64[0] = a1[2];
  a5.n128_u64[0] = a1[3];
  return ButtonLayout.sideMargins.setter(a2, a3, a4, a5);
}

__n128 sub_25AF3328C()
{
  v1 = *(v0 + 16);
  v3 = *(v0 + 40);
  v4 = *(v0 + 24);
  swift_beginAccess();
  result = v4;
  *(v1 + 112) = v4;
  *(v1 + 128) = v3;
  return result;
}

uint64_t ButtonLayout.containingViewSize.setter(double a1, double a2)
{
  result = swift_beginAccess();
  if (*(v2 + 144) == a1 && *(v2 + 152) == a2)
  {
    *(v2 + 144) = a1;
    *(v2 + 152) = a2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_25AF34170(&qword_27FA23D18, &protocol conformance descriptor for ButtonLayout);
    sub_25B004224();
  }

  return result;
}

uint64_t sub_25AF33404()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  result = swift_beginAccess();
  *(v1 + 144) = v2;
  *(v1 + 152) = v3;
  return result;
}

uint64_t (*ButtonLayout.containingViewSize.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
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
  v4[4] = OBJC_IVAR____TtC17NanoControlCenter12ButtonLayout___observationRegistrar;
  *v4 = v1;
  v4[5] = sub_25AF34170(&qword_27FA23D18, &protocol conformance descriptor for ButtonLayout);
  sub_25B004234();

  *v4 = v1;
  swift_getKeyPath();
  sub_25B004254();

  swift_beginAccess();
  return sub_25AF33584;
}

double ButtonLayout.scrollViewSize.getter()
{
  swift_getKeyPath();
  sub_25AF34170(&qword_27FA23D18, &protocol conformance descriptor for ButtonLayout);
  sub_25B004234();

  swift_beginAccess();
  return *(v0 + 160);
}

__n128 sub_25AF33630@<Q0>(__n128 **a1@<X0>, __n128 *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_25AF34170(&qword_27FA23D18, &protocol conformance descriptor for ButtonLayout);
  sub_25B004234();

  swift_beginAccess();
  result = v3[10];
  *a2 = result;
  return result;
}

uint64_t ButtonLayout.scrollViewSize.setter(double a1, double a2)
{
  result = swift_beginAccess();
  if (*(v2 + 160) == a1 && *(v2 + 168) == a2)
  {
    *(v2 + 160) = a1;
    *(v2 + 168) = a2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_25AF34170(&qword_27FA23D18, &protocol conformance descriptor for ButtonLayout);
    sub_25B004224();
  }

  return result;
}

uint64_t sub_25AF3384C()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  result = swift_beginAccess();
  *(v1 + 160) = v2;
  *(v1 + 168) = v3;
  return result;
}

uint64_t (*ButtonLayout.scrollViewSize.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
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
  v4[4] = OBJC_IVAR____TtC17NanoControlCenter12ButtonLayout___observationRegistrar;
  *v4 = v1;
  v4[5] = sub_25AF34170(&qword_27FA23D18, &protocol conformance descriptor for ButtonLayout);
  sub_25B004234();

  *v4 = v1;
  swift_getKeyPath();
  sub_25B004254();

  swift_beginAccess();
  return sub_25AF339CC;
}

void sub_25AF339D8(void *a1, uint64_t a2, uint64_t a3)
{
  v3 = *a1;
  swift_endAccess();
  *v3 = v3[3];
  swift_getKeyPath();
  sub_25B004244();

  free(v3);
}

uint64_t sub_25AF33A5C()
{
  swift_getKeyPath();
  sub_25AF34170(&qword_27FA23D18, &protocol conformance descriptor for ButtonLayout);
  sub_25B004234();
}

uint64_t sub_25AF33AEC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_25AF34170(&qword_27FA23D18, &protocol conformance descriptor for ButtonLayout);
  sub_25B004234();

  *a2 = *(v3 + 176);
}

uint64_t sub_25AF33B84(uint64_t result)
{
  v2 = *(v1 + 176);
  v3 = *(v2 + 16);
  if (v3 == *(result + 16))
  {
    if (v3)
    {
      v4 = v2 == result;
    }

    else
    {
      v4 = 1;
    }

    if (v4)
    {
LABEL_10:
      *(v1 + 176) = result;
    }

    else
    {
      v5 = (v2 + 32);
      v6 = (result + 32);
      while (v3)
      {
        if (*v5 != *v6)
        {
          goto LABEL_13;
        }

        ++v5;
        ++v6;
        if (!--v3)
        {
          goto LABEL_10;
        }
      }

      __break(1u);
    }
  }

  else
  {
LABEL_13:
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_25AF34170(&qword_27FA23D18, &protocol conformance descriptor for ButtonLayout);
    sub_25B004224();
  }

  return result;
}

uint64_t ButtonLayout.__allocating_init(viewSize:sideMargins:topOffset:)(double a1, double a2, double a3, double a4, double a5, double a6, double a7)
{
  v14 = swift_allocObject();
  ButtonLayout.init(viewSize:sideMargins:topOffset:)(v14, a1, a2, a3, a4, a5, a6, a7);
  return v14;
}

uint64_t ButtonLayout.init(viewSize:sideMargins:topOffset:)(uint64_t a1, double a2, double a3, double a4, double a5, double a6, double a7, double a8)
{
  __asm { FMOV            V0.2D, #0.5 }

  *(v8 + 16) = _Q0;
  *(v8 + 88) = 0;
  *(v8 + 96) = xmmword_25B00AB80;
  *(v8 + 160) = 0;
  *(v8 + 168) = 0;
  *(v8 + 176) = MEMORY[0x277D84F90];
  sub_25B004264();
  *(v8 + 112) = a4;
  *(v8 + 120) = a5;
  *(v8 + 128) = a6;
  *(v8 + 136) = a7;
  *(v8 + 96) = a8;
  *(v8 + 144) = a2;
  *(v8 + 152) = a3;
  *(v8 + 32) = xmmword_25B00AB90;
  *(v8 + 48) = xmmword_25B00ABA0;
  *(v8 + 64) = 0x4016000000000000;
  *(v8 + 72) = xmmword_25B00ABB0;
  return v8;
}

uint64_t ButtonLayout.__allocating_init(viewSize:sideMargins:topOffset:buttonCorral:buttonLabels:)(uint64_t a1, uint64_t a2, double a3, double a4, double a5, double a6, double a7, double a8, double a9)
{

  v16 = swift_allocObject();
  __asm { FMOV            V0.2D, #0.5 }

  *(v16 + 16) = _Q0;
  *(v16 + 88) = 0;
  *(v16 + 104) = 0x3FF8000000000000;
  *(v16 + 160) = 0;
  *(v16 + 168) = 0;
  *(v16 + 176) = MEMORY[0x277D84F90];
  sub_25B004264();

  *(v16 + 112) = a5;
  *(v16 + 120) = a6;
  *(v16 + 128) = a7;
  *(v16 + 136) = a8;
  *(v16 + 96) = a9;
  *(v16 + 144) = a3;
  *(v16 + 152) = a4;
  *(v16 + 32) = xmmword_25B00AB90;
  *(v16 + 48) = xmmword_25B00ABA0;
  *(v16 + 64) = xmmword_25B00ABC0;
  *(v16 + 80) = 0x3FE6666666666666;
  return v16;
}

uint64_t ButtonLayout.init(viewSize:sideMargins:topOffset:buttonCorral:buttonLabels:)(uint64_t a1, uint64_t a2, double a3, double a4, double a5, double a6, double a7, double a8, double a9)
{

  __asm { FMOV            V0.2D, #0.5 }

  *(v9 + 16) = _Q0;
  *(v9 + 88) = 0;
  *(v9 + 96) = xmmword_25B00AB80;
  *(v9 + 160) = 0;
  *(v9 + 168) = 0;
  *(v9 + 176) = MEMORY[0x277D84F90];
  sub_25B004264();

  *(v9 + 112) = a5;
  *(v9 + 120) = a6;
  *(v9 + 128) = a7;
  *(v9 + 136) = a8;
  *(v9 + 96) = a9;
  *(v9 + 144) = a3;
  *(v9 + 152) = a4;
  *(v9 + 32) = xmmword_25B00AB90;
  *(v9 + 48) = xmmword_25B00ABA0;
  *(v9 + 64) = xmmword_25B00ABC0;
  *(v9 + 80) = 0x3FE6666666666666;
  return v9;
}

uint64_t ButtonLayout.deinit()
{

  v1 = OBJC_IVAR____TtC17NanoControlCenter12ButtonLayout___observationRegistrar;
  v2 = sub_25B004274();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t ButtonLayout.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtC17NanoControlCenter12ButtonLayout___observationRegistrar;
  v2 = sub_25B004274();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_25AF3412C(uint64_t a1)
{
  result = sub_25AF34170(&qword_27FA241D8, &protocol conformance descriptor for ButtonLayout);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25AF34170(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ButtonLayout(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_25AF341BC(uint64_t a1)
{
  result = sub_25B004274();
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

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for ButtonLayout.LayoutState(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for ButtonLayout.LayoutState(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 1;
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

  *(result + 9) = v3;
  return result;
}

uint64_t sub_25AF3433C(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_25AF34358(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 1;
  }

  else
  {
    *(result + 8) = 0;
  }

  return result;
}

__n128 __swift_memcpy56_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_25AF343B4(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 56))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_25AF343D4(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 56) = v3;
  return result;
}

double sub_25AF34430(unsigned __int8 a1)
{
  v3 = v1[5];
  swift_getKeyPath();
  sub_25AF34170(&qword_27FA23D18, &protocol conformance descriptor for ButtonLayout);
  sub_25B004234();

  swift_beginAccess();
  v4 = v1[15];
  swift_getKeyPath();
  sub_25B004234();

  if (v4 <= v1[17])
  {
    v4 = v1[17];
  }

  v5 = v4 + sub_25AF31974() * 0.5;
  v6 = v3 + sub_25AF31974();
  v7 = [objc_opt_self() sharedApplication];
  v8 = [v7 userInterfaceLayoutDirection];

  v9 = 1.0;
  if (((v8 != 0) ^ a1))
  {
    v9 = 0.0;
  }

  return v5 + v6 * v9;
}

void sub_25AF345A8(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D1>, double a6@<D2>)
{
  v12 = *(a1 + 16);
  v100[0] = *a1;
  v100[1] = v12;
  v101 = *(a1 + 32);
  v96 = sub_25AF63D44(v100, a2);
  if (v13)
  {
    if (qword_27FA23800 != -1)
    {
LABEL_53:
      swift_once();
    }

    v14 = sub_25B0044C4();
    __swift_project_value_buffer(v14, qword_27FA30C28);
    v15 = sub_25B0044B4();
    v16 = sub_25B005CB4();
    if (!os_log_type_enabled(v15, v16))
    {
      goto LABEL_47;
    }

    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v99[0] = v18;
    *v17 = 136315138;
    *(v17 + 4) = sub_25AF8E7DC(0xD00000000000004ELL, 0x800000025B016CD0, v99);
    v19 = "%s couldn't find dragging button in displayed buttons array";
LABEL_45:
    v74 = v16;
    v75 = v15;
    v76 = v17;
    v77 = 12;
LABEL_46:
    _os_log_impl(&dword_25AF0B000, v75, v74, v19, v76, v77);
    __swift_destroy_boxed_opaque_existential_0Tm(v18);
    MEMORY[0x25F85EC30](v18, -1, -1);
    MEMORY[0x25F85EC30](v17, -1, -1);
LABEL_47:

    goto LABEL_48;
  }

  swift_getKeyPath();
  v99[0] = v6;
  sub_25AF34170(&qword_27FA23D18, &protocol conformance descriptor for ButtonLayout);
  sub_25B004234();

  if (!*(*(v6 + 176) + 16))
  {
    if (qword_27FA23800 != -1)
    {
      swift_once();
    }

    v73 = sub_25B0044C4();
    __swift_project_value_buffer(v73, qword_27FA30C28);
    v15 = sub_25B0044B4();
    v16 = sub_25B005CB4();
    if (!os_log_type_enabled(v15, v16))
    {
      goto LABEL_47;
    }

    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v99[0] = v18;
    *v17 = 136315138;
    *(v17 + 4) = sub_25AF8E7DC(0xD00000000000004ELL, 0x800000025B016CD0, v99);
    v19 = "%s No row min Y positions. Can't reorder buttons";
    goto LABEL_45;
  }

  swift_getKeyPath();
  v99[0] = v6;
  sub_25B004234();

  swift_beginAccess();
  v92 = *(v6 + 96);
  v20 = sub_25AF31974();
  v21 = *(v6 + 32);
  v22 = sub_25AF34430(1u);
  v23 = sub_25AF34430(0);
  v95 = *(a2 + 16);
  swift_getKeyPath();
  v98 = v6;
  sub_25B004234();

  v24 = *(v6 + 96);
  swift_getKeyPath();
  v98 = v6;
  sub_25B004234();

  v94 = *(*(v6 + 176) + 16);
  if (v94)
  {
    v80 = a3;
    r2 = v22 - v20 * 0.5;
    r2_8 = v23 - v20 * 0.5;
    v88 = v92 + a5 - v21 * 0.5;
    v89 = v24 * 0.5 + a6;
    v87 = a4 - v20 * 0.5;
    swift_beginAccess();
    swift_beginAccess();
    a3 = 0;
    v25 = 0;
    v93 = 0;
    v86 = 0.0;
    v26 = 1;
    v90 = v21;
    v91 = v20;
    do
    {
      sub_25AF31D44(v25);
      if (v25 == 0x4000000000000000)
      {
        __break(1u);
        goto LABEL_53;
      }

      v28 = v27 - v89;
      if (v96 != a3)
      {
        v102.origin.x = v87;
        v102.origin.y = v88;
        v102.size.width = v20;
        v102.size.height = v21;
        v29 = r2;
        v84 = v28;
        v30 = v20;
        v31 = v21;
        v103 = CGRectIntersection(v102, *(&v28 - 1));
        x = v103.origin.x;
        y = v103.origin.y;
        width = v103.size.width;
        height = v103.size.height;
        swift_getKeyPath();
        v97 = v6;
        sub_25B004234();

        v36 = *(v6 + 144);
        swift_getKeyPath();
        v97 = v6;
        sub_25B004234();

        v37 = *(v6 + 120);
        swift_getKeyPath();
        v97 = v6;
        sub_25B004234();

        v38 = *(v6 + 136);
        if (v37 > v38)
        {
          v38 = v37;
        }

        v39 = (v36 - (v38 + v38) - *(v6 + 40)) * 0.5 * 0.5;
        r2_24 = *(v6 + 32) * 0.5;
        v104.origin.x = x;
        v104.origin.y = y;
        v104.size.width = width;
        v104.size.height = height;
        v40 = CGRectGetWidth(v104);
        v105.origin.x = x;
        v105.origin.y = y;
        v105.size.width = width;
        v105.size.height = height;
        v41 = CGRectGetHeight(v105);
        v106.origin.x = x;
        v106.origin.y = y;
        v106.size.width = width;
        v106.size.height = height;
        v42 = CGRectGetWidth(v106);
        v107.origin.x = x;
        v107.origin.y = y;
        v107.size.width = width;
        v107.size.height = height;
        v43 = CGRectGetHeight(v107);
        if (v39 <= v40 && r2_24 <= v41)
        {
          v45 = v42 * v43;
          v46 = v86;
          v47 = v93;
          if (v86 < v45)
          {
            v47 = a3;
          }

          v93 = v47;
          v26 &= v86 >= v45;
          if (v86 < v45)
          {
            v46 = v45;
          }

          v86 = v46;
        }

        v21 = v90;
        v20 = v91;
        v28 = v84;
      }

      if (a3 + 1 < v95 && v96 - 1 != a3)
      {
        v108.origin.x = v87;
        v108.origin.y = v88;
        v108.size.width = v20;
        v108.size.height = v21;
        v48 = r2_8;
        v49 = v20;
        v50 = v21;
        v109 = CGRectIntersection(v108, *(&v28 - 1));
        v51 = v109.origin.x;
        v52 = v109.origin.y;
        v53 = v109.size.width;
        v54 = v109.size.height;
        swift_getKeyPath();
        v97 = v6;
        sub_25B004234();

        v55 = *(v6 + 144);
        swift_getKeyPath();
        v97 = v6;
        sub_25B004234();

        v56 = *(v6 + 120);
        swift_getKeyPath();
        v97 = v6;
        sub_25B004234();

        v57 = *(v6 + 136);
        if (v56 > v57)
        {
          v57 = v56;
        }

        v58 = (v55 - (v57 + v57) - *(v6 + 40)) * 0.5 * 0.5;
        v85 = *(v6 + 32) * 0.5;
        v110.origin.x = v51;
        v110.origin.y = v52;
        v110.size.width = v53;
        v110.size.height = v54;
        v59 = CGRectGetWidth(v110);
        v111.origin.x = v51;
        v111.origin.y = v52;
        v111.size.width = v53;
        v111.size.height = v54;
        v60 = CGRectGetHeight(v111);
        v112.origin.x = v51;
        v112.origin.y = v52;
        v112.size.width = v53;
        v112.size.height = v54;
        v61 = CGRectGetWidth(v112);
        v113.origin.x = v51;
        v113.origin.y = v52;
        v113.size.width = v53;
        v113.size.height = v54;
        v62 = CGRectGetHeight(v113);
        if (v58 <= v59 && v85 <= v60)
        {
          v64 = v61 * v62;
          v65 = v86;
          v66 = v93;
          if (v86 < v64)
          {
            v66 = a3 + 1;
          }

          v93 = v66;
          v26 &= v86 >= v64;
          if (v86 < v64)
          {
            v65 = v64;
          }

          v86 = v65;
        }

        v21 = v90;
        v20 = v91;
      }

      ++v25;
      a3 += 2;
    }

    while (v94 != v25);
    a3 = v80;
    if (v26)
    {
      goto LABEL_48;
    }

    if (v93 >= v95)
    {
      if (qword_27FA23800 == -1)
      {
LABEL_50:
        v78 = sub_25B0044C4();
        __swift_project_value_buffer(v78, qword_27FA30C28);
        v15 = sub_25B0044B4();
        v79 = sub_25B005CD4();
        if (!os_log_type_enabled(v15, v79))
        {
          goto LABEL_47;
        }

        v17 = swift_slowAlloc();
        v18 = swift_slowAlloc();
        v97 = v18;
        *v17 = 136315394;
        *(v17 + 4) = sub_25AF8E7DC(0xD00000000000004ELL, 0x800000025B016CD0, &v97);
        *(v17 + 12) = 2048;
        *(v17 + 14) = v93;
        v74 = v79;
        v75 = v15;
        v76 = v17;
        v77 = 22;
        goto LABEL_46;
      }
    }

    else
    {
      if ((v93 & 0x8000000000000000) == 0)
      {
        v67 = a2 + 40 * v93;
        v68 = *(v67 + 32);
        v69 = *(v67 + 40);
        v70 = *(v67 + 48);
        v71 = *(v67 + 56);
        *v80 = v68;
        *(v80 + 8) = v69;
        *(v80 + 16) = v70;
        *(v80 + 24) = v71;
        v72 = *(v67 + 64);
        *(v80 + 32) = v72;
        sub_25AF181DC(v68, v69, v70, v71, v72);
        return;
      }

      __break(1u);
    }

    swift_once();
    goto LABEL_50;
  }

LABEL_48:
  *a3 = 0u;
  *(a3 + 16) = 0u;
  *(a3 + 32) = -2;
}

uint64_t sub_25AF34EF8()
{
  *(*(v0 + 16) + 176) = *(v0 + 24);
}

void sub_25AF34F34(uint64_t a1@<X0>, uint64_t (*a2)(void *)@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  if (a1 == 2)
  {
    sub_25AF35688(&v37);
    v6 = sub_25AF3535C(v37);
    swift_getKeyPath();
    v37 = v4;
    sub_25AF37B18();
    sub_25B004234();

    swift_beginAccess();

    v8 = sub_25AF369C4(v7);

    v9 = sub_25AF3535C(v8);
    v37 = v6;
    sub_25AF3653C(v9, sub_25AF38284);
  }

  else
  {
    if (a1)
    {
      swift_getKeyPath();
      sub_25AF37B18();
      sub_25B004234();

      swift_beginAccess();

      v11 = sub_25AF369C4(v10);

      v37 = v11;
      v38 = sub_25AF378E8;
      v39 = 0;
      v40 = sub_25AF3770C;
      v41 = 0;
      v42 = sub_25AF38708;
      v43 = 0;
      v44 = sub_25AF38718;
      v45 = 0;
      v12 = sub_25AF16F38(&v37);
      goto LABEL_7;
    }

    sub_25AF35688(&v37);
  }

  v38 = sub_25AF378E8;
  v39 = 0;
  v40 = sub_25AF3770C;
  v41 = 0;
  v42 = sub_25AF38708;
  v43 = 0;
  v44 = sub_25AF38718;
  v45 = 0;
  v12 = sub_25AF16F38(&v37);
LABEL_7:

  if (a2)
  {
    v30 = a4;
    v13 = v12[2];

    if (v13)
    {
      v14 = 0;
      v15 = (v12 + 7);
      v32 = v13;
      v29 = v13 - 1;
      v16 = MEMORY[0x277D84F90];
      do
      {
        v31 = v16;
        v17 = &v15[32 * v14];
        v18 = v14;
        while (1)
        {
          if (v18 >= v12[2])
          {
            __break(1u);
            return;
          }

          v19 = *(v17 - 3);
          v20 = *(v17 - 2);
          v21 = *(v17 - 1);
          v22 = *v17;
          sub_25B005B34();

          v23 = v19;
          sub_25B005B24();
          sub_25B005AE4();
          if ((swift_task_isCurrentExecutor() & 1) == 0)
          {
            swift_task_reportUnexpectedExecutor();
          }

          v35[0] = v23;
          v35[1] = v20;
          v35[2] = v21;
          v35[3] = v22;
          v24 = a2(v35);

          if (v24)
          {
            break;
          }

          ++v18;

          v17 += 32;
          if (v32 == v18)
          {
            v16 = v31;
            goto LABEL_24;
          }
        }

        v16 = v31;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v36 = v31;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_25AF98A30(0, v31[2] + 1, 1);
          v16 = v36;
        }

        v27 = v16[2];
        v26 = v16[3];
        if (v27 >= v26 >> 1)
        {
          sub_25AF98A30((v26 > 1), v27 + 1, 1);
          v16 = v36;
        }

        v14 = v18 + 1;
        v16[2] = v27 + 1;
        v28 = &v16[4 * v27];
        v28[4] = v23;
        v28[5] = v20;
        v28[6] = v21;
        v28[7] = v22;
        v15 = (v12 + 7);
      }

      while (v29 != v18);
    }

    else
    {
      v16 = MEMORY[0x277D84F90];
    }

LABEL_24:
    sub_25AF1895C(a2, a3);

    v12 = v16;
    a4 = v30;
  }

  *a4 = v12;
}

unint64_t sub_25AF3535C(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    return a1 & 0xFFFFFFFFFFFFFF8;
  }

  v3 = sub_25B005EA4();
  if (!v3)
  {
LABEL_7:

    return MEMORY[0x277D84F90];
  }

  v4 = v3;
  v5 = sub_25AF158D0();
  sub_25AF38284(v5 + 32, v4, a1);
  v7 = v6;

  result = v5;
  if (v7 != v4)
  {
    __break(1u);
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_25AF353F0(uint64_t (*a1)(id *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_15;
  }

  v4 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v4)
  {
    do
    {
      v5 = 0;
      v15 = a3 & 0xC000000000000001;
      v6 = a3 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if (v15)
        {
          v7 = a3;
          v8 = MEMORY[0x25F85DD30](v5, a3);
        }

        else
        {
          if (v5 >= *(v6 + 16))
          {
            goto LABEL_14;
          }

          v7 = a3;
          v8 = *(a3 + 8 * v5 + 32);
        }

        v9 = v8;
        v10 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          break;
        }

        v17 = v8;
        v11 = a1(&v17);

        if (!v3 && (v11 & 1) == 0)
        {
          ++v5;
          a3 = v7;
          if (v10 != v4)
          {
            continue;
          }
        }

        return v11 & 1;
      }

      __break(1u);
LABEL_14:
      __break(1u);
LABEL_15:
      v12 = a3;
      v13 = sub_25B005EA4();
      a3 = v12;
      v4 = v13;
    }

    while (v13);
  }

  v11 = 0;
  return v11 & 1;
}

uint64_t sub_25AF35518(uint64_t (*a1)(void **), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 64);
    do
    {
      v8 = v6;
      v9 = *(v7 - 2);
      v10 = *(v7 - 1);
      v11 = *(v7 - 3);
      v12 = *v7;
      v15 = *(v7 - 4);
      v16 = v11;
      v17 = v9;
      v18 = v10;
      v19 = v12;
      sub_25AF181DC(v15, v11, v9, v10, v12);
      v13 = a1(&v15);
      sub_25AF18128(v15, v16, v17, v18, v19);
      LOBYTE(v4) = (v3 != 0) | v13;
      if ((v3 != 0) | v13 & 1)
      {
        break;
      }

      v6 = v8 - 1;
      v7 += 40;
    }

    while (v8);
  }

  return v4 & 1;
}

uint64_t sub_25AF355DC(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = a1(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

uint64_t sub_25AF35688@<X0>(unint64_t a1@<X8>)
{
  swift_getKeyPath();
  sub_25AF37B18();
  sub_25B004234();

  swift_beginAccess();
  v3 = *(v1 + 48);
  v13 = MEMORY[0x277D84F90];
  if (v3 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_25B005EA4())
  {

    if (!i)
    {
      break;
    }

    v12 = a1;
    a1 = 0;
    while (1)
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x25F85DD30](a1, v3);
      }

      else
      {
        if (a1 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v7 = *(v3 + 8 * a1 + 32);
      }

      v8 = v7;
      v9 = a1 + 1;
      if (__OFADD__(a1, 1))
      {
        break;
      }

      sub_25B005B34();
      sub_25B005B24();
      sub_25B005AE4();
      if ((swift_task_isCurrentExecutor() & 1) == 0)
      {
        swift_task_reportUnexpectedExecutor();
      }

      v5 = [v8 remoteExtensionsByDeviceIdentifier];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA24228, &qword_25B00AF68);
      v6 = sub_25B0058C4();

      sub_25AF363BC(v6);
      ++a1;
      if (v9 == i)
      {
        a1 = v12;
        v10 = v13;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

  v10 = MEMORY[0x277D84F90];
LABEL_15:

  *a1 = v10;
  return result;
}

uint64_t sub_25AF358AC(uint64_t a1)
{
  swift_getKeyPath();
  v2 = &qword_27FA24000;
  v24 = a1;
  v20 = sub_25AF37B18();
  sub_25B004234();

  swift_beginAccess();
  v3 = *(a1 + 48);
  v22 = MEMORY[0x277D84F90];
  if (v3 >> 62)
  {
    goto LABEL_21;
  }

  for (i = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_25B005EA4())
  {
    v19 = v2[62];

    swift_beginAccess();
    if (!i)
    {
      break;
    }

    v5 = 0;
    v17 = v3 & 0xFFFFFFFFFFFFFF8;
    v18 = v3 & 0xC000000000000001;
    v16 = i;
    while (1)
    {
      if (v18)
      {
        v6 = MEMORY[0x25F85DD30](v5, v3);
      }

      else
      {
        if (v5 >= *(v17 + 16))
        {
          goto LABEL_20;
        }

        v6 = *(v3 + 8 * v5 + 32);
      }

      v7 = v6;
      v2 = (v5 + 1);
      if (__OFADD__(v5, 1))
      {
        break;
      }

      sub_25B005B34();
      sub_25B005B24();
      sub_25B005AE4();
      if ((swift_task_isCurrentExecutor() & 1) == 0)
      {
        swift_task_reportUnexpectedExecutor();
      }

      swift_getKeyPath();
      v8 = v21;
      v23 = v21;
      sub_25B004234();

      v10 = v8[6];
      v23 = v7;
      MEMORY[0x28223BE20](v9);
      v15[2] = &v23;

      v11 = sub_25AF353F0(sub_25AF38774, v15, v10);

      if (v11)
      {
      }

      else
      {
        sub_25B005F84();
        sub_25B005FA4();
        sub_25B005FB4();
        sub_25B005F94();
      }

      ++v5;
      if (v2 == v16)
      {
        v12 = v22;
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    ;
  }

  v12 = MEMORY[0x277D84F90];
LABEL_18:

  swift_getKeyPath();
  v13 = v21;
  v22 = v21;
  sub_25B004234();

  v22 = v13;
  swift_getKeyPath();
  sub_25B004254();

  swift_beginAccess();
  sub_25AF3653C(v12, sub_25AF38424);
  swift_endAccess();
  v22 = v13;
  swift_getKeyPath();
  sub_25B004244();
}