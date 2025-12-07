uint64_t CellViewModel.editing.getter()
{
  swift_getKeyPath();
  sub_25B6806EC(&qword_27FA46E90, type metadata accessor for CellViewModel, &protocol conformance descriptor for CellViewModel);
  sub_25B682188();

  swift_beginAccess();
  return *(v0 + 16);
}

uint64_t sub_25B67884C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_25B6806EC(&qword_27FA46E90, type metadata accessor for CellViewModel, &protocol conformance descriptor for CellViewModel);
  sub_25B682188();

  result = swift_beginAccess();
  *a2 = *(v3 + 16);
  return result;
}

uint64_t type metadata accessor for CellViewModel(uint64_t a1)
{
  result = qword_27FA46F38;
  if (!qword_27FA46F38)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t CellViewModel.editing.setter(char a1)
{
  v2 = a1 & 1;
  result = swift_beginAccess();
  if (*(v1 + 16) == v2)
  {
    *(v1 + 16) = v2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_25B6806EC(&qword_27FA46E90, type metadata accessor for CellViewModel, &protocol conformance descriptor for CellViewModel);
    sub_25B682178();
  }

  return result;
}

uint64_t sub_25B678AA0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  result = swift_beginAccess();
  *(v1 + 16) = v2;
  return result;
}

uint64_t (*CellViewModel.editing.modify(uint64_t *a1))()
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
  v4[4] = OBJC_IVAR____TtC23NanoSmartStackControlUI13CellViewModel___observationRegistrar;
  *v4 = v1;
  v4[5] = sub_25B6806EC(&qword_27FA46E90, type metadata accessor for CellViewModel, &protocol conformance descriptor for CellViewModel);
  sub_25B682188();

  *v4 = v1;
  swift_getKeyPath();
  sub_25B6821A8();

  swift_beginAccess();
  return sub_25B678C34;
}

void *CellViewModel.controlIdentity.getter()
{
  swift_getKeyPath();
  sub_25B6806EC(&qword_27FA46E90, type metadata accessor for CellViewModel, &protocol conformance descriptor for CellViewModel);
  sub_25B682188();

  v1 = *(v0 + 24);
  v2 = v1;
  return v1;
}

id sub_25B678CE8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_25B6806EC(&qword_27FA46E90, type metadata accessor for CellViewModel, &protocol conformance descriptor for CellViewModel);
  sub_25B682188();

  v4 = *(v3 + 24);
  *a2 = v4;

  return v4;
}

void sub_25B678DA0(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_25B678DD0(v1);
}

void sub_25B678DD0(void *a1)
{
  v2 = v1;
  v4 = *(v1 + 24);
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
    sub_25B6806EC(&qword_27FA46E90, type metadata accessor for CellViewModel, &protocol conformance descriptor for CellViewModel);
    sub_25B682178();

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  sub_25B6807D8();
  v5 = v4;
  v6 = a1;
  v7 = sub_25B6825C8();

  if ((v7 & 1) == 0)
  {
    goto LABEL_6;
  }

  v8 = *(v2 + 24);
LABEL_8:
  *(v2 + 24) = a1;
}

uint64_t sub_25B678F98(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA46EA0, &qword_25B682B48);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v9[-v5];
  sub_25B68001C(a1, &v9[-v5], &qword_27FA46EA0, &qword_25B682B48);
  v7 = *a2;
  swift_getKeyPath();
  v10 = v7;
  v11 = v6;
  v12 = v7;
  sub_25B6806EC(&qword_27FA46E90, type metadata accessor for CellViewModel, &protocol conformance descriptor for CellViewModel);
  sub_25B682178();

  return sub_25B68068C(v6, &qword_27FA46EA0, &qword_25B682B48);
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t CellViewModel.instanceType.setter(uint64_t a1)
{
  swift_getKeyPath();
  sub_25B6806EC(&qword_27FA46E90, type metadata accessor for CellViewModel, &protocol conformance descriptor for CellViewModel);
  sub_25B682178();

  return sub_25B68068C(a1, &qword_27FA46EA0, &qword_25B682B48);
}

uint64_t (*CellViewModel.instanceType.modify(uint64_t *a1))()
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
  v4[4] = OBJC_IVAR____TtC23NanoSmartStackControlUI13CellViewModel___observationRegistrar;
  *v4 = v1;
  v4[5] = sub_25B6806EC(&qword_27FA46E90, type metadata accessor for CellViewModel, &protocol conformance descriptor for CellViewModel);
  sub_25B682188();

  *v4 = v1;
  swift_getKeyPath();
  sub_25B6821A8();

  swift_beginAccess();
  return sub_25B67938C;
}

uint64_t CellViewModel.initialLoad.getter()
{
  swift_getKeyPath();
  v3 = v0;
  sub_25B6806EC(&qword_27FA46E90, type metadata accessor for CellViewModel, &protocol conformance descriptor for CellViewModel);
  sub_25B682188();

  v1 = OBJC_IVAR____TtC23NanoSmartStackControlUI13CellViewModel__initialLoad;
  swift_beginAccess();
  return *(v3 + v1);
}

uint64_t sub_25B679454@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_25B6806EC(&qword_27FA46E90, type metadata accessor for CellViewModel, &protocol conformance descriptor for CellViewModel);
  sub_25B682188();

  v4 = OBJC_IVAR____TtC23NanoSmartStackControlUI13CellViewModel__initialLoad;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t CellViewModel.initialLoad.setter(char a1)
{
  v2 = a1 & 1;
  v3 = OBJC_IVAR____TtC23NanoSmartStackControlUI13CellViewModel__initialLoad;
  result = swift_beginAccess();
  if (*(v1 + v3) == v2)
  {
    *(v1 + v3) = v2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_25B6806EC(&qword_27FA46E90, type metadata accessor for CellViewModel, &protocol conformance descriptor for CellViewModel);
    sub_25B682178();
  }

  return result;
}

uint64_t (*CellViewModel.initialLoad.modify(uint64_t *a1))()
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
  v4[4] = OBJC_IVAR____TtC23NanoSmartStackControlUI13CellViewModel___observationRegistrar;
  *v4 = v1;
  v4[5] = sub_25B6806EC(&qword_27FA46E90, type metadata accessor for CellViewModel, &protocol conformance descriptor for CellViewModel);
  sub_25B682188();

  *v4 = v1;
  swift_getKeyPath();
  sub_25B6821A8();

  swift_beginAccess();
  return sub_25B6797CC;
}

uint64_t sub_25B67984C@<X0>(uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X8>)
{
  swift_getKeyPath();
  v12 = v5;
  sub_25B6806EC(&qword_27FA46E90, type metadata accessor for CellViewModel, &protocol conformance descriptor for CellViewModel);
  sub_25B682188();

  v10 = *a2;
  swift_beginAccess();
  return sub_25B68001C(v12 + v10, a5, a3, a4);
}

uint64_t sub_25B679950@<X0>(uint64_t *a1@<X0>, uint64_t *a3@<X4>, uint64_t *a4@<X5>, uint64_t *a5@<X6>, uint64_t a6@<X8>)
{
  v10 = *a1;
  swift_getKeyPath();
  sub_25B6806EC(&qword_27FA46E90, type metadata accessor for CellViewModel, &protocol conformance descriptor for CellViewModel);
  sub_25B682188();

  v11 = *a3;
  swift_beginAccess();
  return sub_25B68001C(v10 + v11, a6, a4, a5);
}

uint64_t sub_25B679A34(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA46EC0, &qword_25B682FC0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v6 - v3;
  sub_25B68001C(a1, &v6 - v3, &qword_27FA46EC0, &qword_25B682FC0);
  return sub_25B679AE0(v4);
}

uint64_t sub_25B679AE0(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA46EC0, &qword_25B682FC0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v10 - v4;
  v6 = OBJC_IVAR____TtC23NanoSmartStackControlUI13CellViewModel__icon;
  swift_beginAccess();
  sub_25B68001C(v1 + v6, v5, &qword_27FA46EC0, &qword_25B682FC0);
  v7 = sub_25B680338(v5, a1);
  sub_25B68068C(v5, &qword_27FA46EC0, &qword_25B682FC0);
  if (v7)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    v10[-2] = v1;
    v10[-1] = a1;
    v10[2] = v1;
    sub_25B6806EC(&qword_27FA46E90, type metadata accessor for CellViewModel, &protocol conformance descriptor for CellViewModel);
    sub_25B682178();
  }

  else
  {
    swift_beginAccess();
    sub_25B680958(a1, v1 + v6, &qword_27FA46EC0, &qword_25B682FC0);
    swift_endAccess();
  }

  return sub_25B68068C(a1, &qword_27FA46EC0, &qword_25B682FC0);
}

uint64_t sub_25B679CDC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v9 = *a3;
  swift_beginAccess();
  sub_25B680958(a2, a1 + v9, a4, a5);
  return swift_endAccess();
}

uint64_t CellViewModel.disabled.getter()
{
  swift_getKeyPath();
  sub_25B6806EC(&qword_27FA46E90, type metadata accessor for CellViewModel, &protocol conformance descriptor for CellViewModel);
  sub_25B682188();

  return *(v0 + OBJC_IVAR____TtC23NanoSmartStackControlUI13CellViewModel__disabled);
}

uint64_t sub_25B679E04@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_25B6806EC(&qword_27FA46E90, type metadata accessor for CellViewModel, &protocol conformance descriptor for CellViewModel);
  sub_25B682188();

  *a2 = *(v3 + OBJC_IVAR____TtC23NanoSmartStackControlUI13CellViewModel__disabled);
  return result;
}

uint64_t sub_25B679EDC(uint64_t result)
{
  if (*(v1 + OBJC_IVAR____TtC23NanoSmartStackControlUI13CellViewModel__disabled) == (result & 1))
  {
    *(v1 + OBJC_IVAR____TtC23NanoSmartStackControlUI13CellViewModel__disabled) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_25B6806EC(&qword_27FA46E90, type metadata accessor for CellViewModel, &protocol conformance descriptor for CellViewModel);
    sub_25B682178();
  }

  return result;
}

uint64_t CellViewModel.isRemote.getter()
{
  swift_getKeyPath();
  sub_25B6806EC(&qword_27FA46E90, type metadata accessor for CellViewModel, &protocol conformance descriptor for CellViewModel);
  sub_25B682188();

  result = *(v0 + 24);
  if (result)
  {
    v2 = [result extensionIdentity];
    v3 = &v2[*MEMORY[0x277CFA128]];
    swift_beginAccess();
    v4 = *(v3 + 1);

    if (v4)
    {

      return 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_25B67A0FC(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA46EA0, &qword_25B682B48);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = (&v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v5);
  v9 = &v27 - v8;
  swift_getKeyPath();
  v29[0] = v1;
  sub_25B6806EC(&qword_27FA46E90, type metadata accessor for CellViewModel, &protocol conformance descriptor for CellViewModel);
  sub_25B682188();

  if (*(v1 + OBJC_IVAR____TtC23NanoSmartStackControlUI13CellViewModel__visibility) != a1)
  {
    swift_getKeyPath();
    v29[0] = v1;
    sub_25B682188();

    v11 = OBJC_IVAR____TtC23NanoSmartStackControlUI13CellViewModel__instanceType;
    swift_beginAccess();
    sub_25B68001C(v2 + v11, v9, &qword_27FA46EA0, &qword_25B682B48);
    v12 = sub_25B6821E8();
    v13 = *(v12 - 8);
    if ((*(v13 + 48))(v9, 1, v12) == 1)
    {
      return sub_25B68068C(v9, &qword_27FA46EA0, &qword_25B682B48);
    }

    sub_25B68001C(v9, v7, &qword_27FA46EA0, &qword_25B682B48);
    v14 = (*(v13 + 88))(v7, v12);
    if (v14 == *MEMORY[0x277CFA468])
    {
      (*(v13 + 96))(v7, v12);
      v15 = *v7;
      v30 = sub_25B682238();
      v16 = &unk_27FA46F28;
      v17 = MEMORY[0x277CFA490];
      v18 = MEMORY[0x277CFA488];
    }

    else
    {
      if (v14 != *MEMORY[0x277CFA478])
      {
        (*(v13 + 8))(v7, v12);
        return sub_25B68068C(v9, &qword_27FA46EA0, &qword_25B682B48);
      }

      (*(v13 + 96))(v7, v12);
      v15 = *v7;
      v30 = sub_25B682298();
      v16 = &unk_27FA46F20;
      v17 = MEMORY[0x277CFA4D0];
      v18 = MEMORY[0x277CFA4C8];
    }

    v31 = sub_25B6806EC(v16, v17, v18);
    v29[0] = v15;
    sub_25B68068C(v9, &qword_27FA46EA0, &qword_25B682B48);
    if (qword_27FA46E80 != -1)
    {
      swift_once();
    }

    v19 = sub_25B682398();
    __swift_project_value_buffer(v19, qword_27FA47330);

    v20 = sub_25B682378();
    v21 = sub_25B6825A8();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v28 = v23;
      *v22 = 136315138;
      swift_getKeyPath();
      v27 = v2;
      sub_25B682188();

      v24 = sub_25B6825B8();
      v26 = sub_25B67EEBC(v24, v25, &v28);

      *(v22 + 4) = v26;
      _os_log_impl(&dword_25B677000, v20, v21, "Sending visibility change to the control instance: %s", v22, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v23);
      MEMORY[0x25F869B00](v23, -1, -1);
      MEMORY[0x25F869B00](v22, -1, -1);
    }

    swift_getKeyPath();
    v28 = v2;
    sub_25B682188();

    __swift_mutable_project_boxed_opaque_existential_1(v29, v30);
    sub_25B6822C8();
    return __swift_destroy_boxed_opaque_existential_1Tm(v29);
  }

  return result;
}

uint64_t CellViewModel.visibility.getter()
{
  swift_getKeyPath();
  sub_25B6806EC(&qword_27FA46E90, type metadata accessor for CellViewModel, &protocol conformance descriptor for CellViewModel);
  sub_25B682188();

  return *(v0 + OBJC_IVAR____TtC23NanoSmartStackControlUI13CellViewModel__visibility);
}

uint64_t sub_25B67A6C0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_25B6806EC(&qword_27FA46E90, type metadata accessor for CellViewModel, &protocol conformance descriptor for CellViewModel);
  sub_25B682188();

  *a2 = *(v3 + OBJC_IVAR____TtC23NanoSmartStackControlUI13CellViewModel__visibility);
  return result;
}

uint64_t CellViewModel.visibility.setter(uint64_t a1)
{
  if (*(v1 + OBJC_IVAR____TtC23NanoSmartStackControlUI13CellViewModel__visibility) == a1)
  {

    return sub_25B67A0FC(a1);
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_25B6806EC(&qword_27FA46E90, type metadata accessor for CellViewModel, &protocol conformance descriptor for CellViewModel);
    sub_25B682178();
  }
}

void (*CellViewModel.visibility.modify(uint64_t *a1))(uint64_t **a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 8) = v1;
  swift_getKeyPath();
  v4[2] = OBJC_IVAR____TtC23NanoSmartStackControlUI13CellViewModel___observationRegistrar;
  *v4 = v1;
  v4[3] = sub_25B6806EC(&qword_27FA46E90, type metadata accessor for CellViewModel, &protocol conformance descriptor for CellViewModel);
  sub_25B682188();

  *v4 = v1;
  swift_getKeyPath();
  sub_25B6821A8();

  v5 = OBJC_IVAR____TtC23NanoSmartStackControlUI13CellViewModel__visibility;
  v4[4] = OBJC_IVAR____TtC23NanoSmartStackControlUI13CellViewModel__visibility;
  *v4 = *(v1 + v5);
  return sub_25B67AA10;
}

void sub_25B67AA10(uint64_t **a1)
{
  v1 = *a1;
  v2 = (*a1)[4];
  v3 = **a1;
  v4 = (*a1)[1];
  v5 = *(v4 + v2);
  *(v4 + v2) = v3;
  sub_25B67A0FC(v5);
  *v1 = v1[1];
  swift_getKeyPath();
  sub_25B682198();

  free(v1);
}

uint64_t sub_25B67ABA0(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  sub_25B6806EC(&qword_27FA46E90, type metadata accessor for CellViewModel, &protocol conformance descriptor for CellViewModel);
  sub_25B682188();

  v4 = *(v2 + *a2);

  return v4;
}

uint64_t sub_25B67AC68@<X0>(uint64_t *a1@<X0>, void *a3@<X4>, void *a4@<X8>)
{
  v6 = *a1;
  swift_getKeyPath();
  sub_25B6806EC(&qword_27FA46E90, type metadata accessor for CellViewModel, &protocol conformance descriptor for CellViewModel);
  sub_25B682188();

  v7 = (v6 + *a3);
  v8 = v7[1];
  *a4 = *v7;
  a4[1] = v8;
}

uint64_t sub_25B67AD4C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v8 = (v5 + *a3);
  v9 = v8[1];
  if (v9)
  {
    if (a2)
    {
      v10 = *v8 == a1 && v9 == a2;
      if (v10 || (sub_25B682628() & 1) != 0)
      {
        goto LABEL_8;
      }
    }

LABEL_12:
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_25B6806EC(&qword_27FA46E90, type metadata accessor for CellViewModel, &protocol conformance descriptor for CellViewModel);
    sub_25B682178();
  }

  if (a2)
  {
    goto LABEL_12;
  }

LABEL_8:
  *v8 = a1;
  v8[1] = a2;
}

uint64_t sub_25B67AEDC(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  sub_25B6806EC(&qword_27FA46E90, type metadata accessor for CellViewModel, &protocol conformance descriptor for CellViewModel);
  sub_25B682188();

  return *(v2 + *a2);
}

uint64_t sub_25B67AF90@<X0>(uint64_t *a1@<X0>, void *a3@<X4>, _BYTE *a4@<X8>)
{
  v6 = *a1;
  swift_getKeyPath();
  sub_25B6806EC(&qword_27FA46E90, type metadata accessor for CellViewModel, &protocol conformance descriptor for CellViewModel);
  sub_25B682188();

  *a4 = *(v6 + *a3);
  return result;
}

uint64_t sub_25B67B090(uint64_t result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + *a2);
  if (v5 != 2)
  {
    if (result != 2 && ((v5 ^ result) & 1) == 0)
    {
      goto LABEL_7;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_25B6806EC(&qword_27FA46E90, type metadata accessor for CellViewModel, &protocol conformance descriptor for CellViewModel);
    sub_25B682178();
  }

  if (result != 2)
  {
    goto LABEL_6;
  }

LABEL_7:
  *(v4 + *a2) = result;
  return result;
}

uint64_t sub_25B67B1CC(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  sub_25B6806EC(&qword_27FA46E90, type metadata accessor for CellViewModel, &protocol conformance descriptor for CellViewModel);
  sub_25B682188();
}

uint64_t sub_25B67B284@<X0>(uint64_t *a1@<X0>, void *a3@<X4>, void *a4@<X8>)
{
  v6 = *a1;
  swift_getKeyPath();
  sub_25B6806EC(&qword_27FA46E90, type metadata accessor for CellViewModel, &protocol conformance descriptor for CellViewModel);
  sub_25B682188();

  *a4 = *(v6 + *a3);
}

uint64_t sub_25B67B38C(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v6 = *a2;
  if (!*(v4 + *a2))
  {
    if (!a1)
    {
      goto LABEL_7;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_25B6806EC(&qword_27FA46E90, type metadata accessor for CellViewModel, &protocol conformance descriptor for CellViewModel);
    sub_25B682178();
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  v7 = sub_25B682458();

  if ((v7 & 1) == 0)
  {
    goto LABEL_6;
  }

LABEL_7:
  *(v4 + v6) = a1;
}

uint64_t sub_25B67B548(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  v11 = *a1;
  v10 = a1[1];

  return sub_25B67AD4C(v11, v10, a5, a6, a7);
}

uint64_t CellViewModel.__allocating_init(controlIdentity:instanceType:initialLoad:title:icon:currentTint:state:currentValue:isAnimating:tint:)(void *a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unsigned int a8, uint64_t a9, uint64_t a10, unsigned __int8 a11, uint64_t a12)
{
  v44 = a8;
  v47 = a7;
  v48 = a6;
  v41 = a5;
  v40 = a4;
  v50 = a12;
  v46 = a11;
  v45 = a10;
  v43 = a9;
  v38 = a3 & 1;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA46EC0, &qword_25B682FC0);
  MEMORY[0x28223BE20](v14 - 8);
  v39 = &v37[-v15];
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA46EA0, &qword_25B682B48);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v37[-v17];
  v19 = swift_allocObject();
  *(v19 + 16) = 0;
  *(v19 + 24) = 0;
  v20 = OBJC_IVAR____TtC23NanoSmartStackControlUI13CellViewModel__instanceType;
  v21 = sub_25B6821E8();
  (*(*(v21 - 8) + 56))(v19 + v20, 1, 1, v21);
  v22 = OBJC_IVAR____TtC23NanoSmartStackControlUI13CellViewModel__initialLoad;
  *(v19 + OBJC_IVAR____TtC23NanoSmartStackControlUI13CellViewModel__initialLoad) = 0;
  v23 = (v19 + OBJC_IVAR____TtC23NanoSmartStackControlUI13CellViewModel__title);
  *v23 = 0;
  v23[1] = 0;
  v24 = OBJC_IVAR____TtC23NanoSmartStackControlUI13CellViewModel__icon;
  v25 = sub_25B6821D8();
  (*(*(v25 - 8) + 56))(v19 + v24, 1, 1, v25);
  *(v19 + OBJC_IVAR____TtC23NanoSmartStackControlUI13CellViewModel__disabled) = 0;
  *(v19 + OBJC_IVAR____TtC23NanoSmartStackControlUI13CellViewModel__visibility) = 0;
  *(v19 + OBJC_IVAR____TtC23NanoSmartStackControlUI13CellViewModel__currentTint) = 0;
  *(v19 + OBJC_IVAR____TtC23NanoSmartStackControlUI13CellViewModel__state) = 2;
  v26 = (v19 + OBJC_IVAR____TtC23NanoSmartStackControlUI13CellViewModel__currentValue);
  *v26 = 0;
  v26[1] = 0;
  *(v19 + OBJC_IVAR____TtC23NanoSmartStackControlUI13CellViewModel__isAnimating) = 2;
  *(v19 + OBJC_IVAR____TtC23NanoSmartStackControlUI13CellViewModel__tint) = 0;
  v27 = (v19 + OBJC_IVAR____TtC23NanoSmartStackControlUI13CellViewModel__subtitle);
  *v27 = 0;
  v27[1] = 0;
  v28 = OBJC_IVAR____TtC23NanoSmartStackControlUI13CellViewModel__viewModelUpdateTask;
  *(v19 + OBJC_IVAR____TtC23NanoSmartStackControlUI13CellViewModel__viewModelUpdateTask) = 0;
  sub_25B6821B8();
  v42 = a1;
  sub_25B678DD0(a1);
  v49 = a2;
  sub_25B68001C(a2, v18, &qword_27FA46EA0, &qword_25B682B48);
  swift_getKeyPath();
  v51 = v19;
  v52 = v18;
  v53[0] = v19;
  sub_25B6806EC(&qword_27FA46E90, type metadata accessor for CellViewModel, &protocol conformance descriptor for CellViewModel);
  sub_25B682178();
  v29 = v38;

  sub_25B68068C(v18, &qword_27FA46EA0, &qword_25B682B48);
  swift_beginAccess();
  if (*(v19 + v22) == v29)
  {
    *(v19 + v22) = v29;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    *&v37[-16] = v19;
    v37[-8] = v29;
    v53[0] = v19;
    sub_25B682178();
  }

  sub_25B67AD4C(v40, v41, &OBJC_IVAR____TtC23NanoSmartStackControlUI13CellViewModel__title, &unk_25B682B78, sub_25B680734);
  v31 = v48;
  v32 = v39;
  sub_25B68001C(v48, v39, &qword_27FA46EC0, &qword_25B682FC0);
  sub_25B679AE0(v32);

  sub_25B67B38C(v33, &OBJC_IVAR____TtC23NanoSmartStackControlUI13CellViewModel__currentTint, "@D<$", sub_25B6802D4);
  sub_25B67B090(v44, &OBJC_IVAR____TtC23NanoSmartStackControlUI13CellViewModel__state, " D<$", sub_25B6802BC);
  sub_25B67AD4C(v43, v45, &OBJC_IVAR____TtC23NanoSmartStackControlUI13CellViewModel__currentValue, &unk_25B682C70, sub_25B68029C);
  sub_25B67B090(v46, &OBJC_IVAR____TtC23NanoSmartStackControlUI13CellViewModel__isAnimating, &unk_25B682C98, sub_25B680284);

  sub_25B67B38C(v34, &OBJC_IVAR____TtC23NanoSmartStackControlUI13CellViewModel__tint, &unk_25B682CC0, sub_25B680264);
  swift_beginAccess();
  if (*(v19 + v28))
  {
    v35 = swift_getKeyPath();
    MEMORY[0x28223BE20](v35);
    *&v37[-16] = v19;
    *&v37[-8] = 0;
    v53[0] = v19;
    sub_25B682178();
  }

  CellViewModel.currentInstance.getter(v53);
  if (v54)
  {
    __swift_project_boxed_opaque_existential_1(v53, v54);
    sub_25B6822B8();

    sub_25B68068C(v31, &qword_27FA46EC0, &qword_25B682FC0);
    sub_25B68068C(v49, &qword_27FA46EA0, &qword_25B682B48);
    __swift_destroy_boxed_opaque_existential_1Tm(v53);
  }

  else
  {

    sub_25B68068C(v31, &qword_27FA46EC0, &qword_25B682FC0);
    sub_25B68068C(v49, &qword_27FA46EA0, &qword_25B682B48);
    sub_25B68068C(v53, &qword_27FA46F10, &qword_25B682D10);
  }

  return v19;
}

uint64_t CellViewModel.init(controlIdentity:instanceType:initialLoad:title:icon:currentTint:state:currentValue:isAnimating:tint:)(void *a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unsigned int a8, uint64_t a9, uint64_t a10, unsigned __int8 a11, uint64_t a12)
{
  v13 = v12;
  v45 = a8;
  v48 = a7;
  v49 = a6;
  v42 = a5;
  v41 = a4;
  v51 = a12;
  v47 = a11;
  v46 = a10;
  v44 = a9;
  v39 = a3 & 1;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA46EC0, &qword_25B682FC0);
  MEMORY[0x28223BE20](v16 - 8);
  v40 = &v38[-v17];
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA46EA0, &qword_25B682B48);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = &v38[-v19];
  *(v13 + 16) = 0;
  *(v13 + 24) = 0;
  v21 = OBJC_IVAR____TtC23NanoSmartStackControlUI13CellViewModel__instanceType;
  v22 = sub_25B6821E8();
  (*(*(v22 - 8) + 56))(v13 + v21, 1, 1, v22);
  v23 = OBJC_IVAR____TtC23NanoSmartStackControlUI13CellViewModel__initialLoad;
  *(v13 + OBJC_IVAR____TtC23NanoSmartStackControlUI13CellViewModel__initialLoad) = 0;
  v24 = (v13 + OBJC_IVAR____TtC23NanoSmartStackControlUI13CellViewModel__title);
  *v24 = 0;
  v24[1] = 0;
  v25 = OBJC_IVAR____TtC23NanoSmartStackControlUI13CellViewModel__icon;
  v26 = sub_25B6821D8();
  (*(*(v26 - 8) + 56))(v13 + v25, 1, 1, v26);
  *(v13 + OBJC_IVAR____TtC23NanoSmartStackControlUI13CellViewModel__disabled) = 0;
  *(v13 + OBJC_IVAR____TtC23NanoSmartStackControlUI13CellViewModel__visibility) = 0;
  *(v13 + OBJC_IVAR____TtC23NanoSmartStackControlUI13CellViewModel__currentTint) = 0;
  *(v13 + OBJC_IVAR____TtC23NanoSmartStackControlUI13CellViewModel__state) = 2;
  v27 = (v13 + OBJC_IVAR____TtC23NanoSmartStackControlUI13CellViewModel__currentValue);
  *v27 = 0;
  v27[1] = 0;
  *(v13 + OBJC_IVAR____TtC23NanoSmartStackControlUI13CellViewModel__isAnimating) = 2;
  *(v13 + OBJC_IVAR____TtC23NanoSmartStackControlUI13CellViewModel__tint) = 0;
  v28 = (v13 + OBJC_IVAR____TtC23NanoSmartStackControlUI13CellViewModel__subtitle);
  *v28 = 0;
  v28[1] = 0;
  v29 = OBJC_IVAR____TtC23NanoSmartStackControlUI13CellViewModel__viewModelUpdateTask;
  *(v13 + OBJC_IVAR____TtC23NanoSmartStackControlUI13CellViewModel__viewModelUpdateTask) = 0;
  sub_25B6821B8();
  v43 = a1;
  sub_25B678DD0(a1);
  v50 = a2;
  sub_25B68001C(a2, v20, &qword_27FA46EA0, &qword_25B682B48);
  swift_getKeyPath();
  v52 = v13;
  v53 = v20;
  v54[0] = v13;
  sub_25B6806EC(&qword_27FA46E90, type metadata accessor for CellViewModel, &protocol conformance descriptor for CellViewModel);
  sub_25B682178();
  v30 = v39;

  sub_25B68068C(v20, &qword_27FA46EA0, &qword_25B682B48);
  swift_beginAccess();
  if (*(v13 + v23) == v30)
  {
    *(v13 + v23) = v30;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    *&v38[-16] = v13;
    v38[-8] = v30;
    v54[0] = v13;
    sub_25B682178();
  }

  sub_25B67AD4C(v41, v42, &OBJC_IVAR____TtC23NanoSmartStackControlUI13CellViewModel__title, &unk_25B682B78, sub_25B680734);
  v32 = v49;
  v33 = v40;
  sub_25B68001C(v49, v40, &qword_27FA46EC0, &qword_25B682FC0);
  sub_25B679AE0(v33);

  sub_25B67B38C(v34, &OBJC_IVAR____TtC23NanoSmartStackControlUI13CellViewModel__currentTint, "@D<$", sub_25B6802D4);
  sub_25B67B090(v45, &OBJC_IVAR____TtC23NanoSmartStackControlUI13CellViewModel__state, " D<$", sub_25B6802BC);
  sub_25B67AD4C(v44, v46, &OBJC_IVAR____TtC23NanoSmartStackControlUI13CellViewModel__currentValue, &unk_25B682C70, sub_25B68029C);
  sub_25B67B090(v47, &OBJC_IVAR____TtC23NanoSmartStackControlUI13CellViewModel__isAnimating, &unk_25B682C98, sub_25B680284);

  sub_25B67B38C(v35, &OBJC_IVAR____TtC23NanoSmartStackControlUI13CellViewModel__tint, &unk_25B682CC0, sub_25B680264);
  swift_beginAccess();
  if (*(v13 + v29))
  {
    v36 = swift_getKeyPath();
    MEMORY[0x28223BE20](v36);
    *&v38[-16] = v13;
    *&v38[-8] = 0;
    v54[0] = v13;
    sub_25B682178();
  }

  CellViewModel.currentInstance.getter(v54);
  if (v55)
  {
    __swift_project_boxed_opaque_existential_1(v54, v55);
    sub_25B6822B8();

    sub_25B68068C(v32, &qword_27FA46EC0, &qword_25B682FC0);
    sub_25B68068C(v50, &qword_27FA46EA0, &qword_25B682B48);
    __swift_destroy_boxed_opaque_existential_1Tm(v54);
  }

  else
  {

    sub_25B68068C(v32, &qword_27FA46EC0, &qword_25B682FC0);
    sub_25B68068C(v50, &qword_27FA46EA0, &qword_25B682B48);
    sub_25B68068C(v54, &qword_27FA46F10, &qword_25B682D10);
  }

  return v13;
}

uint64_t CellViewModel.__allocating_init(controlIdentity:)(void *a1)
{
  v2 = swift_allocObject();
  CellViewModel.init(controlIdentity:)(a1);
  return v2;
}

uint64_t CellViewModel.init(controlIdentity:)(void *a1)
{
  v2 = v1;
  *(v2 + 16) = 0;
  *(v2 + 24) = 0;
  v4 = OBJC_IVAR____TtC23NanoSmartStackControlUI13CellViewModel__instanceType;
  v5 = sub_25B6821E8();
  (*(*(v5 - 8) + 56))(v2 + v4, 1, 1, v5);
  *(v2 + OBJC_IVAR____TtC23NanoSmartStackControlUI13CellViewModel__initialLoad) = 0;
  v6 = (v2 + OBJC_IVAR____TtC23NanoSmartStackControlUI13CellViewModel__title);
  *v6 = 0;
  v6[1] = 0;
  v7 = OBJC_IVAR____TtC23NanoSmartStackControlUI13CellViewModel__icon;
  v8 = sub_25B6821D8();
  (*(*(v8 - 8) + 56))(v2 + v7, 1, 1, v8);
  *(v2 + OBJC_IVAR____TtC23NanoSmartStackControlUI13CellViewModel__disabled) = 0;
  *(v2 + OBJC_IVAR____TtC23NanoSmartStackControlUI13CellViewModel__visibility) = 0;
  *(v2 + OBJC_IVAR____TtC23NanoSmartStackControlUI13CellViewModel__currentTint) = 0;
  *(v2 + OBJC_IVAR____TtC23NanoSmartStackControlUI13CellViewModel__state) = 2;
  v9 = (v2 + OBJC_IVAR____TtC23NanoSmartStackControlUI13CellViewModel__currentValue);
  *v9 = 0;
  v9[1] = 0;
  *(v2 + OBJC_IVAR____TtC23NanoSmartStackControlUI13CellViewModel__isAnimating) = 2;
  *(v2 + OBJC_IVAR____TtC23NanoSmartStackControlUI13CellViewModel__tint) = 0;
  v10 = (v2 + OBJC_IVAR____TtC23NanoSmartStackControlUI13CellViewModel__subtitle);
  *v10 = 0;
  v10[1] = 0;
  v11 = OBJC_IVAR____TtC23NanoSmartStackControlUI13CellViewModel__viewModelUpdateTask;
  *(v2 + OBJC_IVAR____TtC23NanoSmartStackControlUI13CellViewModel__viewModelUpdateTask) = 0;
  sub_25B6821B8();
  v12 = a1;
  sub_25B678DD0(a1);
  swift_beginAccess();
  if (*(v2 + v11))
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    v15[0] = v2;
    sub_25B6806EC(&qword_27FA46E90, type metadata accessor for CellViewModel, &protocol conformance descriptor for CellViewModel);
    sub_25B682178();
  }

  CellViewModel.currentInstance.getter(v15);
  if (v16)
  {
    __swift_project_boxed_opaque_existential_1(v15, v16);
    sub_25B6822B8();

    __swift_destroy_boxed_opaque_existential_1Tm(v15);
  }

  else
  {

    sub_25B68068C(v15, &qword_27FA46F10, &qword_25B682D10);
  }

  return v2;
}

uint64_t CellViewModel.viewModelUpdateTask.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC23NanoSmartStackControlUI13CellViewModel__viewModelUpdateTask;
  swift_beginAccess();
  if (*(v1 + v3))
  {
    if (a1)
    {

      v4 = sub_25B682578();

      if (v4)
      {
        goto LABEL_7;
      }
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_25B6806EC(&qword_27FA46E90, type metadata accessor for CellViewModel, &protocol conformance descriptor for CellViewModel);
    sub_25B682178();
  }

  if (a1)
  {
    goto LABEL_6;
  }

LABEL_7:
  *(v1 + v3) = a1;
}

uint64_t CellViewModel.currentInstance.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA46EA0, &qword_25B682B48);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = (&v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v5);
  v9 = &v19 - v8;
  swift_getKeyPath();
  v20 = v1;
  sub_25B6806EC(&qword_27FA46E90, type metadata accessor for CellViewModel, &protocol conformance descriptor for CellViewModel);
  sub_25B682188();

  v10 = OBJC_IVAR____TtC23NanoSmartStackControlUI13CellViewModel__instanceType;
  swift_beginAccess();
  sub_25B68001C(v2 + v10, v9, &qword_27FA46EA0, &qword_25B682B48);
  v11 = sub_25B6821E8();
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v9, 1, v11) == 1)
  {
    goto LABEL_2;
  }

  sub_25B68001C(v9, v7, &qword_27FA46EA0, &qword_25B682B48);
  v13 = (*(v12 + 88))(v7, v11);
  if (v13 == *MEMORY[0x277CFA468])
  {
    (*(v12 + 96))(v7, v11);
    v14 = *v7;
    *(a1 + 24) = sub_25B682238();
    v15 = &unk_27FA46F28;
    v16 = MEMORY[0x277CFA490];
    v17 = MEMORY[0x277CFA488];
LABEL_9:
    *(a1 + 32) = sub_25B6806EC(v15, v16, v17);
    *a1 = v14;
    return sub_25B68068C(v9, &qword_27FA46EA0, &qword_25B682B48);
  }

  if (v13 == *MEMORY[0x277CFA478])
  {
    (*(v12 + 96))(v7, v11);
    v14 = *v7;
    *(a1 + 24) = sub_25B682298();
    v15 = &unk_27FA46F20;
    v16 = MEMORY[0x277CFA4D0];
    v17 = MEMORY[0x277CFA4C8];
    goto LABEL_9;
  }

  if (v13 == *MEMORY[0x277CFA470])
  {
    (*(v12 + 96))(v7, v11);
    v14 = *v7;
    *(a1 + 24) = sub_25B682248();
    v15 = &unk_27FA46F18;
    v16 = MEMORY[0x277CFA4B8];
    v17 = MEMORY[0x277CFA4B0];
    goto LABEL_9;
  }

  (*(v12 + 8))(v7, v11);
LABEL_2:
  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return sub_25B68068C(v9, &qword_27FA46EA0, &qword_25B682B48);
}

uint64_t CellViewModel.deinit()
{
  v1 = v0;
  sub_25B682508();
  sub_25B67CF44(sub_25B67E970, v0, "NanoSmartStackControlUI/CellViewModel.swift", 43, 2u, 108);

  sub_25B68068C(v0 + OBJC_IVAR____TtC23NanoSmartStackControlUI13CellViewModel__instanceType, &qword_27FA46EA0, &qword_25B682B48);

  sub_25B68068C(v0 + OBJC_IVAR____TtC23NanoSmartStackControlUI13CellViewModel__icon, &qword_27FA46EC0, &qword_25B682FC0);

  v2 = OBJC_IVAR____TtC23NanoSmartStackControlUI13CellViewModel___observationRegistrar;
  v3 = sub_25B6821C8();
  (*(*(v3 - 8) + 8))(v1 + v2, v3);
  return v1;
}

uint64_t sub_25B67CD34(uint64_t a1)
{
  swift_getKeyPath();
  v4[0] = a1;
  sub_25B6806EC(&qword_27FA46E90, type metadata accessor for CellViewModel, &protocol conformance descriptor for CellViewModel);
  sub_25B682188();

  v2 = OBJC_IVAR____TtC23NanoSmartStackControlUI13CellViewModel__viewModelUpdateTask;
  swift_beginAccess();
  if (*(a1 + v2))
  {

    sub_25B682588();
  }

  CellViewModel.currentInstance.getter(v4);
  if (!v5)
  {
    return sub_25B68068C(v4, &qword_27FA46F10, &qword_25B682D10);
  }

  __swift_project_boxed_opaque_existential_1(v4, v5);
  sub_25B6822B8();
  return __swift_destroy_boxed_opaque_existential_1Tm(v4);
}

uint64_t CellViewModel.viewModelUpdateTask.getter()
{
  swift_getKeyPath();
  sub_25B6806EC(&qword_27FA46E90, type metadata accessor for CellViewModel, &protocol conformance descriptor for CellViewModel);
  sub_25B682188();

  swift_beginAccess();
}

uint64_t sub_25B67CF44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, uint64_t a6)
{
  sub_25B6824F8();

  swift_task_getMainExecutor();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    goto LABEL_8;
  }

  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  *(v9 + 24) = a2;
  sub_25B68023C();
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (v6)
  {
    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      return result;
    }

    __break(1u);
  }

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
LABEL_8:
    sub_25B6825F8();
    MEMORY[0x25F869630](0xD00000000000003FLL, 0x800000025B683470);
    v12 = sub_25B682638();
    MEMORY[0x25F869630](v12);

    MEMORY[0x25F869630](46, 0xE100000000000000);
    result = sub_25B682618();
    __break(1u);
  }

  return result;
}

uint64_t CellViewModel.__deallocating_deinit()
{
  CellViewModel.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_25B67D124@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_25B6806EC(&qword_27FA46E90, type metadata accessor for CellViewModel, &protocol conformance descriptor for CellViewModel);
  sub_25B682188();

  v4 = OBJC_IVAR____TtC23NanoSmartStackControlUI13CellViewModel__viewModelUpdateTask;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

uint64_t sub_25B67D218(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC23NanoSmartStackControlUI13CellViewModel__viewModelUpdateTask;
  swift_beginAccess();
  *(a1 + v4) = a2;
}

uint64_t (*CellViewModel.viewModelUpdateTask.modify(uint64_t *a1))()
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
  v4[4] = OBJC_IVAR____TtC23NanoSmartStackControlUI13CellViewModel___observationRegistrar;
  *v4 = v1;
  v4[5] = sub_25B6806EC(&qword_27FA46E90, type metadata accessor for CellViewModel, &protocol conformance descriptor for CellViewModel);
  sub_25B682188();

  *v4 = v1;
  swift_getKeyPath();
  sub_25B6821A8();

  swift_beginAccess();
  return sub_25B67D3D0;
}

void sub_25B67D3DC(void *a1, uint64_t a2, uint64_t a3)
{
  v3 = *a1;
  swift_endAccess();
  *v3 = v3[3];
  swift_getKeyPath();
  sub_25B682198();

  free(v3);
}

uint64_t CellViewModel.updateCellViewModel(instanceIdentity:controlType:)(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA46EA0, &qword_25B682B48);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v11 - v4;
  CellViewModel.currentInstance.getter(v14);
  if (v15)
  {
    __swift_project_boxed_opaque_existential_1(v14, v15);
    sub_25B6822B8();
    __swift_destroy_boxed_opaque_existential_1Tm(v14);
  }

  else
  {
    sub_25B68068C(v14, &qword_27FA46F10, &qword_25B682D10);
  }

  sub_25B6822A8();
  KeyPath = swift_getKeyPath();
  MEMORY[0x28223BE20](KeyPath);
  *(&v11 - 2) = v2;
  *(&v11 - 1) = v5;
  v14[0] = v2;
  sub_25B6806EC(&qword_27FA46E90, type metadata accessor for CellViewModel, &protocol conformance descriptor for CellViewModel);
  sub_25B682178();

  sub_25B68068C(v5, &qword_27FA46EA0, &qword_25B682B48);
  CellViewModel.currentInstance.getter(&v12);
  if (!v13)
  {
    return sub_25B68068C(&v12, &qword_27FA46F10, &qword_25B682D10);
  }

  sub_25B67E98C(&v12, v14);
  v7 = v15;
  v8 = v16;
  v9 = __swift_project_boxed_opaque_existential_1(v14, v15);
  CellViewModel.observeViewModelUpdates<A>(_:)(v9, v7, v8);
  __swift_project_boxed_opaque_existential_1(v14, v15);
  sub_25B6822E8();
  return __swift_destroy_boxed_opaque_existential_1Tm(v14);
}

uint64_t CellViewModel.updateCellViewModel(instanceIdentity:controlType:suggested:hasBeenForegrounded:)(uint64_t a1, uint64_t a2, char a3, char a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA46EA0, &qword_25B682B48);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v15 - v8;
  CellViewModel.currentInstance.getter(v18);
  if (v19)
  {
    __swift_project_boxed_opaque_existential_1(v18, v19);
    sub_25B6822B8();
    __swift_destroy_boxed_opaque_existential_1Tm(v18);
  }

  else
  {
    sub_25B68068C(v18, &qword_27FA46F10, &qword_25B682D10);
  }

  sub_25B6822A8();
  KeyPath = swift_getKeyPath();
  MEMORY[0x28223BE20](KeyPath);
  *(&v15 - 2) = v4;
  *(&v15 - 1) = v9;
  v18[0] = v4;
  sub_25B6806EC(&qword_27FA46E90, type metadata accessor for CellViewModel, &protocol conformance descriptor for CellViewModel);
  sub_25B682178();

  sub_25B68068C(v9, &qword_27FA46EA0, &qword_25B682B48);
  CellViewModel.currentInstance.getter(&v16);
  if (!v17)
  {
    return sub_25B68068C(&v16, &qword_27FA46F10, &qword_25B682D10);
  }

  sub_25B67E98C(&v16, v18);
  v11 = v19;
  v12 = v20;
  v13 = __swift_project_boxed_opaque_existential_1(v18, v19);
  CellViewModel.observeViewModelUpdates<A>(_:)(v13, v11, v12);
  if (a3 & 1) == 0 || (a4)
  {
    __swift_project_boxed_opaque_existential_1(v18, v19);
    sub_25B6822E8();
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(v18);
}

uint64_t CellViewModel.observeViewModelUpdates<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v39 = a1;
  v41 = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = sub_25B6825D8();
  v35 = *(v7 - 8);
  v36 = v7;
  v8 = MEMORY[0x28223BE20](v7);
  v38 = &v34 - v9;
  v42 = AssociatedTypeWitness;
  v40 = *(AssociatedTypeWitness - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v34 = &v34 - v11;
  v12 = *(a2 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA46F30, &qword_25B682D40);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v34 - v15;
  swift_getKeyPath();
  v44 = v4;
  sub_25B6806EC(&qword_27FA46E90, type metadata accessor for CellViewModel, &protocol conformance descriptor for CellViewModel);
  sub_25B682188();

  v17 = OBJC_IVAR____TtC23NanoSmartStackControlUI13CellViewModel__viewModelUpdateTask;
  swift_beginAccess();
  if (*(v4 + v17) && (, sub_25B682588(), , *(v4 + v17)))
  {
    KeyPath = swift_getKeyPath();
    v37 = &v34;
    MEMORY[0x28223BE20](KeyPath);
    *(&v34 - 2) = v4;
    *(&v34 - 1) = 0;
    v43 = v4;
    sub_25B682178();
  }

  else
  {
    *(v4 + v17) = 0;
  }

  v19 = sub_25B682528();
  (*(*(v19 - 8) + 56))(v16, 1, 1, v19);
  v20 = swift_allocObject();
  swift_weakInit();
  v21 = *(v12 + 16);
  v37 = v4;
  v21(&v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v39, a2);
  sub_25B682508();

  v22 = sub_25B6824F8();
  v23 = (*(v12 + 80) + 48) & ~*(v12 + 80);
  v24 = swift_allocObject();
  v25 = MEMORY[0x277D85700];
  *(v24 + 2) = v22;
  *(v24 + 3) = v25;
  v26 = v41;
  *(v24 + 4) = a2;
  *(v24 + 5) = v26;
  (*(v12 + 32))(&v24[v23], &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), a2);
  *&v24[(v13 + v23 + 7) & 0xFFFFFFFFFFFFFFF8] = v20;

  sub_25B67E5A0(0, 0, v16, &unk_25B682D50, v24);
  v27 = v38;
  sub_25B6822F8();
  v28 = v40;
  v29 = v42;
  if ((*(v40 + 48))(v27, 1, v42) == 1)
  {
    (*(v35 + 8))(v27, v36);
  }

  else
  {
    v30 = v34;
    (*(v28 + 32))(v34, v27, v29);
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    sub_25B67F464(v30, v37, v29, AssociatedConformanceWitness);
    (*(v28 + 8))(v30, v29);
  }

  CellViewModel.viewModelUpdateTask.setter(v32);
}

uint64_t sub_25B67DED0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[7] = a6;
  v7[8] = a7;
  v7[5] = a4;
  v7[6] = a5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7[9] = AssociatedTypeWitness;
  v7[10] = *(AssociatedTypeWitness - 8);
  v7[11] = swift_task_alloc();
  sub_25B6825D8();
  v7[12] = swift_task_alloc();
  v9 = sub_25B682568();
  v7[13] = v9;
  v7[14] = *(v9 - 8);
  v7[15] = swift_task_alloc();
  v10 = sub_25B682558();
  v7[16] = v10;
  v7[17] = *(v10 - 8);
  v7[18] = swift_task_alloc();
  v7[19] = sub_25B682508();
  v7[20] = sub_25B6824F8();
  v12 = sub_25B6824E8();
  v7[21] = v12;
  v7[22] = v11;

  return MEMORY[0x2822009F8](sub_25B67E0DC, v12, v11);
}

uint64_t sub_25B67E0DC()
{
  v2 = v0[14];
  v1 = v0[15];
  v3 = v0[13];
  sub_25B6822D8();
  sub_25B682538();
  (*(v2 + 8))(v1, v3);
  swift_beginAccess();
  v4 = sub_25B6824F8();
  v0[23] = v4;
  v5 = swift_task_alloc();
  v0[24] = v5;
  *v5 = v0;
  v5[1] = sub_25B67E200;
  v6 = v0[16];
  v7 = v0[12];
  v8 = MEMORY[0x277D85700];

  return MEMORY[0x2822003E8](v7, v4, v8, v6);
}

uint64_t sub_25B67E200()
{
  v1 = *v0;

  v2 = *(v1 + 176);
  v3 = *(v1 + 168);

  return MEMORY[0x2822009F8](sub_25B67E344, v3, v2);
}

uint64_t sub_25B67E344()
{
  v1 = v0[12];
  v2 = v0[9];
  v3 = v0[10];
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    (*(v0[17] + 8))(v0[18], v0[16]);

LABEL_9:

    v21 = v0[1];

    return v21();
  }

  (*(v3 + 32))(v0[11], v1, v2);
  if ((sub_25B682598() & 1) != 0 || (Strong = swift_weakLoadStrong()) == 0)
  {
    v16 = v0[17];
    v15 = v0[18];
    v17 = v0[16];
    v19 = v0[10];
    v18 = v0[11];
    v20 = v0[9];

    (*(v19 + 8))(v18, v20);
    (*(v16 + 8))(v15, v17);
    goto LABEL_9;
  }

  v5 = Strong;
  v7 = v0[10];
  v6 = v0[11];
  v8 = v0[9];
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  sub_25B67F464(v6, v5, v8, AssociatedConformanceWitness);

  (*(v7 + 8))(v6, v8);
  v10 = sub_25B6824F8();
  v0[23] = v10;
  v11 = swift_task_alloc();
  v0[24] = v11;
  *v11 = v0;
  v11[1] = sub_25B67E200;
  v12 = v0[16];
  v13 = v0[12];
  v14 = MEMORY[0x277D85700];

  return MEMORY[0x2822003E8](v13, v10, v14, v12);
}

uint64_t sub_25B67E5A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA46F30, &qword_25B682D40);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v25 - v10;
  sub_25B68001C(a3, v25 - v10, &qword_27FA46F30, &qword_25B682D40);
  v12 = sub_25B682528();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_25B68068C(v11, &qword_27FA46F30, &qword_25B682D40);
  }

  else
  {
    sub_25B682518();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_25B6824E8();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_25B6824B8() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      sub_25B68068C(a3, &qword_27FA46F30, &qword_25B682D40);

      return v23;
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

  sub_25B68068C(a3, &qword_27FA46F30, &qword_25B682D40);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

void *sub_25B67E8B4@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_25B67E8D0()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + OBJC_IVAR____TtC23NanoSmartStackControlUI13CellViewModel__visibility);
  *(v1 + OBJC_IVAR____TtC23NanoSmartStackControlUI13CellViewModel__visibility) = *(v0 + 24);
  return sub_25B67A0FC(v2);
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_25B67E98C(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_25B67E9A4()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_25B67E9DC()
{
  v1 = *(v0 + 32);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_25B67EAAC(uint64_t a1)
{
  v4 = v1[4];
  v5 = v1[5];
  v6 = (*(*(v4 - 8) + 80) + 48) & ~*(*(v4 - 8) + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = *(v1 + ((*(*(v4 - 8) + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_25B67EBD8;

  return sub_25B67DED0(a1, v7, v8, v1 + v6, v9, v4, v5);
}

uint64_t sub_25B67EBD8()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_25B67ECCC(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_25B67EDC4;

  return v6(a1);
}

uint64_t sub_25B67EDC4()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

unint64_t sub_25B67EEBC(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_25B67EF88(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_25B6808F8(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1Tm(v11);
  return v7;
}

unint64_t sub_25B67EF88(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_25B67F094(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_25B682608();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

void *sub_25B67F094(uint64_t a1, unint64_t a2)
{
  v3 = sub_25B67F0E0(a1, a2);
  sub_25B67F210(&unk_286CEBBB8);
  return v3;
}

void *sub_25B67F0E0(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = sub_25B67F2FC(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_25B682608();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_25B6824D8();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_25B67F2FC(v10, 0);
        result = sub_25B6825E8();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_25B67F210(uint64_t result)
{
  v2 = *(result + 16);
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
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_25B67F370(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_25B67F2FC(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA46F90, &qword_25B682EF8);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_25B67F370(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA46F90, &qword_25B682EF8);
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

uint64_t sub_25B67F464(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v55 = 0;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA46F60, &qword_25B682EC0);
  MEMORY[0x28223BE20](v8 - 8);
  v51 = &v47 - v9;
  v10 = sub_25B682228();
  v52 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v49 = &v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA46F68, &qword_25B682EC8);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v47 - v13;
  v15 = sub_25B682288();
  v53 = *(v15 - 8);
  v54 = v15;
  MEMORY[0x28223BE20](v15);
  v50 = &v47 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA46EC0, &qword_25B682FC0);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = &v47 - v18;
  v57[3] = a3;
  v57[4] = a4;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v57);
  (*(*(a3 - 8) + 16))(boxed_opaque_existential_1, a1, a3);
  v21 = OBJC_IVAR____TtC23NanoSmartStackControlUI13CellViewModel__initialLoad;
  swift_beginAccess();
  if (*(a2 + v21) == 1)
  {
    *(a2 + v21) = 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v48 = v10;
    v47 = &v47;
    MEMORY[0x28223BE20](KeyPath);
    *(&v47 - 2) = a2;
    *(&v47 - 8) = 1;
    v56[0] = a2;
    sub_25B6806EC(&qword_27FA46E90, type metadata accessor for CellViewModel, &protocol conformance descriptor for CellViewModel);
    v23 = v55;
    sub_25B682178();
    v55 = v23;
    v10 = v48;
  }

  v24 = sub_25B682318();
  sub_25B67AD4C(v24, v25, &OBJC_IVAR____TtC23NanoSmartStackControlUI13CellViewModel__title, &unk_25B682B78, sub_25B680734);
  sub_25B682308();
  sub_25B679AE0(v19);
  v26 = sub_25B682328() & 1;
  if (v26 == *(a2 + OBJC_IVAR____TtC23NanoSmartStackControlUI13CellViewModel__disabled))
  {
    *(a2 + OBJC_IVAR____TtC23NanoSmartStackControlUI13CellViewModel__disabled) = v26;
  }

  else
  {
    v27 = swift_getKeyPath();
    MEMORY[0x28223BE20](v27);
    *(&v47 - 2) = a2;
    *(&v47 - 8) = v26;
    v56[0] = a2;
    sub_25B6806EC(&qword_27FA46E90, type metadata accessor for CellViewModel, &protocol conformance descriptor for CellViewModel);
    sub_25B682178();
  }

  v28 = v53;
  sub_25B67FF98(v57, v56);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA46F70, &qword_25B682ED0);
  v29 = v54;
  v30 = swift_dynamicCast();
  v31 = *(v28 + 56);
  if (v30)
  {
    v31(v14, 0, 1, v29);
    v32 = v50;
    (*(v28 + 32))(v50, v14, v29);
    v33 = sub_25B682278();
    sub_25B67B090(v33 & 1, &OBJC_IVAR____TtC23NanoSmartStackControlUI13CellViewModel__state, " D<$", sub_25B6802BC);
    v34 = sub_25B682258();
    sub_25B67B38C(v34, &OBJC_IVAR____TtC23NanoSmartStackControlUI13CellViewModel__currentTint, "@D<$", sub_25B6802D4);
    v35 = sub_25B682268();
    sub_25B67AD4C(v35, v36, &OBJC_IVAR____TtC23NanoSmartStackControlUI13CellViewModel__currentValue, &unk_25B682C70, sub_25B68029C);
    (*(v28 + 8))(v32, v29);
  }

  else
  {
    v31(v14, 1, 1, v29);
    sub_25B68068C(v14, &qword_27FA46F68, &qword_25B682EC8);
    sub_25B67FF98(v57, v56);
    v37 = v51;
    v38 = swift_dynamicCast();
    v39 = v52;
    v40 = *(v52 + 56);
    if (v38)
    {
      v40(v37, 0, 1, v10);
      v41 = v49;
      (*(v39 + 32))(v49, v37, v10);
      v42 = sub_25B6821F8();
      sub_25B67B090(v42 & 1, &OBJC_IVAR____TtC23NanoSmartStackControlUI13CellViewModel__isAnimating, &unk_25B682C98, sub_25B680284);
      v43 = sub_25B682208();
      sub_25B67B38C(v43, &OBJC_IVAR____TtC23NanoSmartStackControlUI13CellViewModel__tint, &unk_25B682CC0, sub_25B680264);
      v44 = sub_25B682218();
      sub_25B67AD4C(v44, v45, &OBJC_IVAR____TtC23NanoSmartStackControlUI13CellViewModel__subtitle, &unk_25B682CE8, sub_25B67FFFC);
      (*(v39 + 8))(v41, v10);
    }

    else
    {
      v40(v37, 1, 1, v10);
      sub_25B68068C(v37, &qword_27FA46F60, &qword_25B682EC0);
    }
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(v57);
}

void sub_25B67FC3C(uint64_t a1)
{
  sub_25B67FE1C(319, &qword_27FA46F48, MEMORY[0x277CFA480]);
  if (v1 <= 0x3F)
  {
    sub_25B67FE1C(319, &qword_27FA46F50, MEMORY[0x277CFA458]);
    if (v2 <= 0x3F)
    {
      sub_25B6821C8();
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_25B67FE1C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_25B6825D8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void type metadata accessor for CHSControlVisibility()
{
  if (!qword_27FA46F58)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_27FA46F58);
    }
  }
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_25B67FF24()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = OBJC_IVAR____TtC23NanoSmartStackControlUI13CellViewModel__initialLoad;
  result = swift_beginAccess();
  *(v1 + v3) = v2;
  return result;
}

uint64_t sub_25B67FF98(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_25B68001C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_25B680084()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_25B6800BC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_25B680A0C;

  return sub_25B67ECCC(a1, v4);
}

uint64_t sub_25B680174(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_25B67EBD8;

  return sub_25B67ECCC(a1, v4);
}

uint64_t sub_25B6802F4(void *a1)
{
  *(*(v1 + 16) + *a1) = *(v1 + 24);
}

uint64_t sub_25B680338(uint64_t a1, uint64_t a2)
{
  v4 = sub_25B6821D8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA46EC0, &qword_25B682FC0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v21 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA46F78, &qword_25B682EF0);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v14 = &v21 - v13;
  v15 = *(v12 + 56);
  sub_25B68001C(a1, &v21 - v13, &qword_27FA46EC0, &qword_25B682FC0);
  sub_25B68001C(a2, &v14[v15], &qword_27FA46EC0, &qword_25B682FC0);
  v16 = *(v5 + 48);
  if (v16(v14, 1, v4) != 1)
  {
    sub_25B68001C(v14, v10, &qword_27FA46EC0, &qword_25B682FC0);
    if (v16(&v14[v15], 1, v4) != 1)
    {
      (*(v5 + 32))(v7, &v14[v15], v4);
      sub_25B6806EC(&qword_27FA46F80, MEMORY[0x277CFA458], MEMORY[0x277CFA460]);
      v18 = sub_25B6824A8();
      v19 = *(v5 + 8);
      v19(v7, v4);
      v19(v10, v4);
      sub_25B68068C(v14, &qword_27FA46EC0, &qword_25B682FC0);
      v17 = v18 ^ 1;
      return v17 & 1;
    }

    (*(v5 + 8))(v10, v4);
    goto LABEL_6;
  }

  if (v16(&v14[v15], 1, v4) != 1)
  {
LABEL_6:
    sub_25B68068C(v14, &qword_27FA46F78, &qword_25B682EF0);
    v17 = 1;
    return v17 & 1;
  }

  sub_25B68068C(v14, &qword_27FA46EC0, &qword_25B682FC0);
  v17 = 0;
  return v17 & 1;
}

uint64_t sub_25B68068C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_25B6806EC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_25B680754(void *a1)
{
  v2 = v1[4];
  v3 = (v1[2] + *a1);
  *v3 = v1[3];
  v3[1] = v2;
}

void sub_25B6807A0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + 24);
  *(v1 + 24) = v2;
  v4 = v2;
}

unint64_t sub_25B6807D8()
{
  result = qword_27FA46F88;
  if (!qword_27FA46F88)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27FA46F88);
  }

  return result;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return v3;
}

uint64_t __swift_destroy_boxed_opaque_existential_1Tm(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

uint64_t sub_25B6808F8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_25B680958(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 24))(a2, a1, v6);
  return a2;
}

uint64_t ControlCellContentView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v14 = a1;
  v1 = sub_25B682498();
  v2 = *(v1 - 8);
  v12 = v1;
  v13 = v2;
  MEMORY[0x28223BE20](v1);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA46F98, &qword_25B682F10);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v11 - v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA46FA0, &qword_25B682F18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA46FA8, &qword_25B682F20);
  v15 = MEMORY[0x277CE0BD8];
  v16 = MEMORY[0x277CE0BC8];
  swift_getOpaqueTypeConformance2();
  sub_25B680F30(&qword_27FA46FB0, &qword_27FA46FA8, &qword_25B682F20, MEMORY[0x277CE11A8]);
  sub_25B682468();
  sub_25B682488();
  sub_25B680F30(&qword_27FA46FB8, &qword_27FA46F98, &qword_25B682F10, MEMORY[0x277CDEFF0]);
  sub_25B681AC8(&qword_27FA46FC0, MEMORY[0x277CE3ED8], MEMORY[0x277CE3ED0]);
  v9 = v12;
  sub_25B682428();
  (*(v13 + 8))(v4, v9);
  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_25B680D18()
{
  v0 = sub_25B6823B8();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25B6823C8();
  v4 = sub_25B6823F8();
  v6 = v5;
  v11[1] = v4;
  v11[2] = v5;
  v8 = v7 & 1;
  v12 = v7 & 1;
  v13 = v9;
  sub_25B6823A8();
  sub_25B682448();
  (*(v1 + 8))(v3, v0);
  sub_25B681B10(v4, v6, v8);
}

uint64_t sub_25B680E90@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  *a2 = sub_25B682478();
  a2[1] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA46FC8, &qword_25B682FB8);
  return sub_25B680F94(a1, a2 + *(v5 + 44));
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_25B680F30(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
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

uint64_t sub_25B680F94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v27 = sub_25B6823B8();
  v4 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA46EC0, &qword_25B682FC0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v26 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA46FD0, &qword_25B682FC8);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v26 - v15;
  MEMORY[0x28223BE20](v14);
  v18 = &v26 - v17;
  v28 = sub_25B6823D8();
  swift_getKeyPath();
  v29 = a1;
  sub_25B681AC8(&qword_27FA46E90, type metadata accessor for CellViewModel, &protocol conformance descriptor for CellViewModel);
  sub_25B682188();

  v19 = OBJC_IVAR____TtC23NanoSmartStackControlUI13CellViewModel__icon;
  swift_beginAccess();
  sub_25B6818A8(a1 + v19, v9);
  v20 = sub_25B6821D8();
  v21 = *(v20 - 8);
  if ((*(v21 + 48))(v9, 1, v20) == 1)
  {
    sub_25B681918(v9);
    v22 = 1;
  }

  else
  {
    sub_25B6823A8();
    sub_25B681AC8(&qword_27FA46FE8, MEMORY[0x277CFA458], MEMORY[0x277CFA450]);
    sub_25B682448();
    (*(v4 + 8))(v6, v27);
    (*(v21 + 8))(v9, v20);
    v22 = 0;
  }

  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA46FD8, &qword_25B682FF8);
  (*(*(v23 - 8) + 56))(v16, v22, 1, v23);
  sub_25B681980(v16, v18);
  sub_25B6819F0(v18, v13);
  *a2 = v28;
  *(a2 + 4) = 256;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA46FE0, &unk_25B683000);
  sub_25B6819F0(v13, a2 + *(v24 + 48));
  sub_25B681A60(v18);
  return sub_25B681A60(v13);
}

uint64_t sub_25B681390@<X0>(uint64_t a1@<X8>)
{
  v14 = a1;
  v1 = sub_25B682498();
  v2 = *(v1 - 8);
  v12 = v1;
  v13 = v2;
  MEMORY[0x28223BE20](v1);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA46F98, &qword_25B682F10);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v11 - v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA46FA0, &qword_25B682F18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA46FA8, &qword_25B682F20);
  v15 = MEMORY[0x277CE0BD8];
  v16 = MEMORY[0x277CE0BC8];
  swift_getOpaqueTypeConformance2();
  sub_25B680F30(&qword_27FA46FB0, &qword_27FA46FA8, &qword_25B682F20, MEMORY[0x277CE11A8]);
  sub_25B682468();
  sub_25B682488();
  sub_25B680F30(&qword_27FA46FB8, &qword_27FA46F98, &qword_25B682F10, MEMORY[0x277CDEFF0]);
  sub_25B681AC8(&qword_27FA46FC0, MEMORY[0x277CE3ED8], MEMORY[0x277CE3ED0]);
  v9 = v12;
  sub_25B682428();
  (*(v13 + 8))(v4, v9);
  return (*(v6 + 8))(v8, v5);
}

uint64_t *__swift_initWithCopy_strong(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  return a1;
}

uint64_t *__swift_assignWithCopy_strong(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  return a1;
}

uint64_t *__swift_assignWithTake_strong(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  return a1;
}

uint64_t getEnumTagSinglePayload for ControlCellContentView(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 8))
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

uint64_t storeEnumTagSinglePayload for ControlCellContentView(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_25B6817C0()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA46F98, &qword_25B682F10);
  sub_25B682498();
  sub_25B680F30(&qword_27FA46FB8, &qword_27FA46F98, &qword_25B682F10, MEMORY[0x277CDEFF0]);
  sub_25B681AC8(&qword_27FA46FC0, MEMORY[0x277CE3ED8], MEMORY[0x277CE3ED0]);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_25B6818A8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA46EC0, &qword_25B682FC0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_25B681918(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA46EC0, &qword_25B682FC0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_25B681980(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA46FD0, &qword_25B682FC8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_25B6819F0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA46FD0, &qword_25B682FC8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_25B681A60(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA46FD0, &qword_25B682FC8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_25B681AC8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_25B681B10(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t ControlCellView.cellViewModel.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

void ControlCellView.init(cellViewModel:)(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = [objc_opt_self() currentDevice];
  if (v4)
  {
    v5 = v4;
    type metadata accessor for ControlCellView(0);
    sub_25B682358();

    *a2 = a1;
  }

  else
  {
    __break(1u);
  }
}

uint64_t type metadata accessor for ControlCellView(uint64_t a1)
{
  result = qword_27FA46FF0;
  if (!qword_27FA46FF0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t ControlCellView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  type metadata accessor for ControlCellView(0);
  sub_25B682338();
  v5 = v4;
  sub_25B682348();
  v7 = v6;
  sub_25B682338();
  v9 = v8;
  sub_25B682348();
  v11 = v10;
  v12 = sub_25B6823E8();
  *a1 = v3;
  *(a1 + 8) = v12;
  *(a1 + 16) = v5;
  *(a1 + 24) = v7;
  *(a1 + 32) = v9;
  *(a1 + 40) = v11;
  *(a1 + 48) = 0;
}

uint64_t sub_25B681D0C@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  sub_25B682338();
  v5 = v4;
  sub_25B682348();
  v7 = v6;
  sub_25B682338();
  v9 = v8;
  sub_25B682348();
  v11 = v10;
  v12 = sub_25B6823E8();
  *a1 = v3;
  *(a1 + 8) = v12;
  *(a1 + 16) = v5;
  *(a1 + 24) = v7;
  *(a1 + 32) = v9;
  *(a1 + 40) = v11;
  *(a1 + 48) = 0;
}

uint64_t sub_25B681DC8(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_25B682368();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_25B681E88(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_25B682368();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_25B681F2C(uint64_t a1)
{
  result = type metadata accessor for CellViewModel(319);
  if (v2 <= 0x3F)
  {
    result = sub_25B682368();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_25B681FB4()
{
  result = qword_27FA47000;
  if (!qword_27FA47000)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA47008, &qword_25B683088);
    sub_25B682040();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA47000);
  }

  return result;
}

unint64_t sub_25B682040()
{
  result = qword_27FA47010;
  if (!qword_27FA47010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA47010);
  }

  return result;
}

uint64_t sub_25B682094()
{
  v0 = sub_25B682398();
  __swift_allocate_value_buffer(v0, qword_27FA47330);
  __swift_project_value_buffer(v0, qword_27FA47330);
  return sub_25B682388();
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}