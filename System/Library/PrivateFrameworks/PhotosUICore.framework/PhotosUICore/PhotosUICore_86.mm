unint64_t sub_1A47253B4()
{
  result = qword_1EB1D09B0[0];
  if (!qword_1EB1D09B0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB1D09B0);
  }

  return result;
}

unint64_t sub_1A4725408()
{
  result = qword_1EB15C550[0];
  if (!qword_1EB15C550[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB15C550);
  }

  return result;
}

void sub_1A472545C(uint64_t a1@<X8>)
{
  v37 = a1;
  sub_1A4725CE4(0);
  v36 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v33[2] = v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  sub_1A4725DD8(0);
  v44 = v5;
  v6 = MEMORY[0x1EEE9AC00](v5);
  sub_1A47260A8(0, &qword_1EB140D08, MEMORY[0x1E697F948], v6);
  v41 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v43 = v33 - v8;
  v34 = sub_1A52429A4();
  v33[4] = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34);
  v35 = v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4726118(0);
  v42 = v10;
  MEMORY[0x1EEE9AC00](v10);
  sub_1A4726EF0(0, &qword_1EB140D28, type metadata accessor for SharedLibraryOwnerImageConfiguration, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v40 = v33 - v12;
  v13 = type metadata accessor for SharedLibraryOwnerImageConfiguration(0);
  v38 = *(v13 - 8);
  v39 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v33[3] = v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v33[5] = v33 - v16;
  v17 = sub_1A5249234();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v21 = v33 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *(v1 + 16);
  v23 = *(v1 + 8) + OBJC_IVAR____TtC12PhotosUICore23LemonadeInvitationModel_cellSpecs;
  v46[0] = *v23;
  v24 = *(v23 + 64);
  v26 = *(v23 + 16);
  v25 = *(v23 + 32);
  v46[3] = *(v23 + 48);
  v46[4] = v24;
  v46[1] = v26;
  v46[2] = v25;
  v28 = *(v23 + 96);
  v27 = *(v23 + 112);
  v29 = *(v23 + 80);
  v47 = *(v23 + 128);
  v46[6] = v28;
  v46[7] = v27;
  v46[5] = v29;
  if (*(v1 + 24) == 1)
  {
    sub_1A460525C(v46, v45);
  }

  else
  {
    v33[0] = v19;
    sub_1A460525C(v46, v45);
    sub_1A3D35B8C(v22, 0);
    v30 = sub_1A524D254();
    v31 = sub_1A524A014();
    v33[1] = v1;
    v32 = v31;
    sub_1A5246DF4(v30, &dword_1A3C1C000, v31, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

    sub_1A5249224();
    swift_getAtKeyPath();
    sub_1A3DD15BC(v22, 0);
    (*(v18 + 8))(v21, v33[0]);
  }

  sub_1A524DAA4();
}

void sub_1A4725CE4(uint64_t a1)
{
  if (!qword_1EB140CC0)
  {
    sub_1A4725FCC(255, &qword_1EB140CC8, MEMORY[0x1E69817E8], &type metadata for LemonadeSharedLibraryAvatarInvitationView.SharedLibraryBadgeViewModifier, MEMORY[0x1E697E830]);
    sub_1A4725D78(255);
    v1 = sub_1A5248804();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB140CC0);
    }
  }
}

void sub_1A4725D78(uint64_t a1)
{
  if (!qword_1EB140CD0)
  {
    sub_1A524BBF4();
    v1 = sub_1A5249C64();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB140CD0);
    }
  }
}

void sub_1A4725DD8(uint64_t a1)
{
  if (!qword_1EB140CD8)
  {
    sub_1A4726EF0(255, &qword_1EB140CE0, sub_1A4725E6C, MEMORY[0x1E6981F40]);
    sub_1A4726020();
    v1 = sub_1A524B8B4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB140CD8);
    }
  }
}

void sub_1A4725E6C(uint64_t a1)
{
  if (!qword_1EB140CE8)
  {
    sub_1A4725CE4(255);
    sub_1A4725EDC(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB140CE8);
    }
  }
}

void sub_1A4725EDC(uint64_t a1)
{
  if (!qword_1EB140CF0)
  {
    sub_1A4725F3C(255);
    v1 = sub_1A5248804();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB140CF0);
    }
  }
}

void sub_1A4725F3C(uint64_t a1)
{
  if (!qword_1EB140CF8)
  {
    sub_1A4725FCC(255, &qword_1EB13C210, MEMORY[0x1E697E790], MEMORY[0x1E697E788], MEMORY[0x1E69809C0]);
    sub_1A44B6A14();
    v1 = sub_1A5249C64();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB140CF8);
    }
  }
}

void sub_1A4725FCC(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = a5(0, a3, a4);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

unint64_t sub_1A4726020()
{
  result = qword_1EB140D00;
  if (!qword_1EB140D00)
  {
    sub_1A4726EF0(255, &qword_1EB140CE0, sub_1A4725E6C, MEMORY[0x1E6981F40]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB140D00);
  }

  return result;
}

void sub_1A47260A8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t), double a4)
{
  if (!*a2)
  {
    sub_1A4726118(255);
    v8 = v7;
    sub_1A4725DD8(255);
    v10 = a3(a1, v8, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

void sub_1A4726118(uint64_t a1)
{
  if (!qword_1EB140D10)
  {
    sub_1A4726CA8(255, &qword_1EB140D18, sub_1A47261B0, &type metadata for SharedLibraryImageProvider, MEMORY[0x1E69C1ED0]);
    v1 = sub_1A5248804();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB140D10);
    }
  }
}

unint64_t sub_1A47261B0()
{
  result = qword_1EB140D20;
  if (!qword_1EB140D20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB140D20);
  }

  return result;
}

uint64_t sub_1A4726204@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_1A5248714();
  v26 = *(v4 - 8);
  v27 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1A5249234();
  v25 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4726EF0(0, &qword_1EB140D28, type metadata accessor for SharedLibraryOwnerImageConfiguration, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v23 - v11;
  v13 = type metadata accessor for SharedLibraryOwnerImageConfiguration(0);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v23 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4605984(v12);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_1A47265D8(v12);
    return (*(v14 + 56))(a1, 1, 1, v13);
  }

  else
  {
    sub_1A4726860(v12, v16);
    v18 = *(v1 + 16);
    if (*(v2 + 24) == 1)
    {
      v19 = *(v2 + 16);
    }

    else
    {

      v20 = sub_1A524D254();
      v21 = sub_1A524A014();
      v24 = a1;
      v22 = v21;
      sub_1A5246DF4(v20, &dword_1A3C1C000, v21, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

      a1 = v24;
      sub_1A5249224();
      swift_getAtKeyPath();
      sub_1A3DD15BC(v18, 0);
      (*(v25 + 8))(v9, v7);
      v19 = v28;
    }

    *&v16[*(v13 + 24)] = v19;
    type metadata accessor for LemonadeSharedLibraryAvatarInvitationView(0);
    sub_1A401DA00(v6);
    (*(v26 + 40))(&v16[*(v13 + 20)], v6, v27);
    sub_1A47268C4(v16, a1, type metadata accessor for SharedLibraryOwnerImageConfiguration);
    (*(v14 + 56))(a1, 0, 1, v13);
    return sub_1A472692C(v16, type metadata accessor for SharedLibraryOwnerImageConfiguration);
  }
}

uint64_t sub_1A47265D8(uint64_t a1)
{
  sub_1A4726EF0(0, &qword_1EB140D28, type metadata accessor for SharedLibraryOwnerImageConfiguration, MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1A4726664(uint64_t a1)
{
  if (!qword_1EB140D30)
  {
    sub_1A4726EF0(255, &qword_1EB140CE0, sub_1A4725E6C, MEMORY[0x1E6981F40]);
    v1 = sub_1A52483B4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB140D30);
    }
  }
}

unint64_t sub_1A47266FC()
{
  result = qword_1EB140D38;
  if (!qword_1EB140D38)
  {
    sub_1A4726118(255);
    sub_1A472677C();
    sub_1A472680C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB140D38);
  }

  return result;
}

unint64_t sub_1A472677C()
{
  result = qword_1EB140D40;
  if (!qword_1EB140D40)
  {
    sub_1A4726CA8(255, &qword_1EB140D18, sub_1A47261B0, &type metadata for SharedLibraryImageProvider, MEMORY[0x1E69C1ED0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB140D40);
  }

  return result;
}

unint64_t sub_1A472680C()
{
  result = qword_1EB140D48;
  if (!qword_1EB140D48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB140D48);
  }

  return result;
}

uint64_t sub_1A4726860(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SharedLibraryOwnerImageConfiguration(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A47268C4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A472692C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t type metadata accessor for LemonadeSharedLibraryAvatarInvitationView(uint64_t a1)
{
  result = qword_1EB15D5E0;
  if (!qword_1EB15D5E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1A47269D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  v6 = v2[1];
  v7 = v2[2];
  sub_1A4726C08(0);
  v9 = (a2 + *(v8 + 36));
  v10 = *(sub_1A5248A14() + 20);
  v11 = *MEMORY[0x1E697F468];
  v12 = sub_1A52494A4();
  (*(*(v12 - 8) + 104))(&v9[v10], v11, v12);
  *v9 = v5;
  *(v9 + 1) = v5;
  sub_1A3F2ECA8(0);
  v14 = &v9[*(v13 + 36)];
  *v14 = v7;
  *(v14 + 1) = v7;
  sub_1A3F2EC14(0);
  v16 = &v9[*(v15 + 36)];
  *v16 = v6;
  *(v16 + 1) = v6;
  sub_1A4726DA4(0);
  v9[*(v17 + 56)] = 0;
  sub_1A4726D10(0);
  *&v9[*(v18 + 36)] = 256;
  sub_1A4726CA8(0, &qword_1EB140D60, sub_1A472680C, &type metadata for LemonadeSharedLibraryAvatarInvitationView.SharedLibraryBadgeViewModifier, MEMORY[0x1E697FDE8]);
  v20 = *(*(v19 - 8) + 16);

  return v20(a2, a1, v19);
}

uint64_t sub_1A4726B58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  *a2 = a3;
  *(a2 + 8) = a1;
  *(a2 + 16) = swift_getKeyPath();
  *(a2 + 24) = 0;
  v4 = *(type metadata accessor for LemonadeSharedLibraryAvatarInvitationView(0) + 28);
  *(a2 + v4) = swift_getKeyPath();
  sub_1A4726EF0(0, &qword_1EB1248A0, MEMORY[0x1E697E7E0], MEMORY[0x1E697DCB8]);

  return swift_storeEnumTagMultiPayload();
}

void sub_1A4726C08(uint64_t a1)
{
  if (!qword_1EB140D58)
  {
    sub_1A4726CA8(255, &qword_1EB140D60, sub_1A472680C, &type metadata for LemonadeSharedLibraryAvatarInvitationView.SharedLibraryBadgeViewModifier, MEMORY[0x1E697FDE8]);
    sub_1A4726D10(255);
    v1 = sub_1A5248804();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB140D58);
    }
  }
}

void sub_1A4726CA8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

void sub_1A4726D10(uint64_t a1)
{
  if (!qword_1EB140D68)
  {
    sub_1A4726DA4(255);
    sub_1A4726E5C(&qword_1EB140D78, sub_1A4726DA4, MEMORY[0x1E697F368]);
    v1 = sub_1A5247FC4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB140D68);
    }
  }
}

void sub_1A4726DA4(uint64_t a1)
{
  if (!qword_1EB140D70)
  {
    sub_1A3F2EC14(255);
    sub_1A3FA9580();
    sub_1A4726E5C(&qword_1EB12EA38, sub_1A3F2EC14, MEMORY[0x1E697DDF8]);
    v1 = sub_1A5249324();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB140D70);
    }
  }
}

uint64_t sub_1A4726E5C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1A4726EF0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1A4726F68(uint64_t a1)
{
  type metadata accessor for LemonadeInvitationModel(319);
  if (v1 <= 0x3F)
  {
    sub_1A46AA1B0();
    if (v2 <= 0x3F)
    {
      sub_1A4726EF0(319, &qword_1EB124710, MEMORY[0x1E697E7E0], MEMORY[0x1E697DCC0]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_1A4727054(double a1)
{
  result = qword_1EB140D80;
  if (!qword_1EB140D80)
  {
    sub_1A47260A8(255, &qword_1EB140D88, MEMORY[0x1E697F960], a1);
    sub_1A47266FC();
    sub_1A4726E5C(&qword_1EB140D50, sub_1A4725DD8, MEMORY[0x1E6981880]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB140D80);
  }

  return result;
}

unint64_t sub_1A4727120()
{
  result = qword_1EB140D90;
  if (!qword_1EB140D90)
  {
    sub_1A4726C08(255);
    sub_1A47271D0();
    sub_1A4726E5C(&unk_1EB140DA0, sub_1A4726D10, MEMORY[0x1E697DDB0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB140D90);
  }

  return result;
}

unint64_t sub_1A47271D0()
{
  result = qword_1EB140D98;
  if (!qword_1EB140D98)
  {
    sub_1A4726CA8(255, &qword_1EB140D60, sub_1A472680C, &type metadata for LemonadeSharedLibraryAvatarInvitationView.SharedLibraryBadgeViewModifier, MEMORY[0x1E697FDE8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB140D98);
  }

  return result;
}

uint64_t sub_1A4727360(uint64_t a1)
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_1A47273C0(uint64_t *a1))(void **a1, char a2)
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
  v5 = OBJC_IVAR____TtC12PhotosUICore32PhotosDetailsSharedLibraryWidget_widgetInteractionDelegate;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_1A3DA46A0;
}

uint64_t sub_1A47274F8(void *a1)
{
  if (*(v1 + OBJC_IVAR____TtC12PhotosUICore32PhotosDetailsSharedLibraryWidget_contextObservation))
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    sub_1A5246634();
  }

  sub_1A4110FA4(a1);
  result = (*((*MEMORY[0x1E69E7D40] & *v1) + 0x90))();
  if (result)
  {
    swift_allocObject();
    swift_unknownObjectWeakInit();

    sub_1A524D1A4();
  }

  __break(1u);
  return result;
}

void sub_1A4727638(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    (*((*MEMORY[0x1E69E7D40] & *Strong) + 0x200))(a2);
  }
}

void (*sub_1A47276C8(uint64_t *a1))(void **a1, char a2)
{
  a1[1] = v1;
  *a1 = sub_1A4110EF8();
  return sub_1A4727710;
}

void sub_1A4727710(void **a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v3 = v2;
    sub_1A47274F8(v3);
  }

  else
  {
    sub_1A47274F8(v2);
  }
}

id sub_1A4727778(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for PhotosDetailsSharedLibraryWidgetView(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = (&v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = type metadata accessor for PhotosDetailsSharedLibraryWidgetViewModel(0);
  v8 = MEMORY[0x1E69E7D40];
  v9 = *((*MEMORY[0x1E69E7D40] & *v1) + 0xA8);
  v10 = v9();
  v11 = (*(v7 + 440))();

  result = 0;
  if (v11)
  {
    v13 = *((*v8 & *v2) + 0x108);
    v14 = a1;
    v15 = v13();
    v16 = v9();
    v17 = sub_1A49E6068(v14, v15, v16);
    v18 = sub_1A47279E0();
    (*((*v8 & *v17) + 0x110))(v18 & 1);
    v19 = sub_1A4727A58();
    (*((*v8 & *v17) + 0x128))(v19 & 1);
    (*((*v8 & *v2) + 0xE0))(v17);
    sub_1A4727C00(0);
    v20 = v17;
    sub_1A406DE08(v6);
    v21 = PXSecureLockscreenSwiftUIHostingController.__allocating_init(rootView:)(v6);

    return v21;
  }

  return result;
}

uint64_t sub_1A47279E0()
{
  v1 = OBJC_IVAR____TtC12PhotosUICore32PhotosDetailsSharedLibraryWidget____lazy_storage___hasSiblingWidgetAbove;
  v2 = *(v0 + OBJC_IVAR____TtC12PhotosUICore32PhotosDetailsSharedLibraryWidget____lazy_storage___hasSiblingWidgetAbove);
  if (v2 == 2)
  {
    (*((*MEMORY[0x1E69E7D40] & *v0) + 0x168))();
    LOBYTE(v2) = 0;
    *(v0 + v1) = 0;
  }

  return v2 & 1;
}

uint64_t sub_1A4727A58()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC12PhotosUICore32PhotosDetailsSharedLibraryWidget____lazy_storage___hasSiblingWidgetBelow;
  v3 = *(v0 + OBJC_IVAR____TtC12PhotosUICore32PhotosDetailsSharedLibraryWidget____lazy_storage___hasSiblingWidgetBelow);
  if (v3 == 2)
  {
    v4 = MEMORY[0x1E69E7D40];
    if ((*((*MEMORY[0x1E69E7D40] & *v1) + 0x168))())
    {
      LOBYTE(v3) = 0;
    }

    else
    {
      v5 = type metadata accessor for PhotosDetailsAlbumAttributionWidgetViewModel(0);
      v6 = *((*v4 & *v1) + 0xA8);
      v7 = v6();
      v8 = (*(v5 + 376))();

      if (v8 & 1) != 0 || (type metadata accessor for PhotosDetailsSharedWithYouWidgetViewModel(0), v9 = v6(), v10 = sub_1A418D68C(v9), v9, (v10) || (type metadata accessor for PhotosDetailsSavedFromAppsWidgetViewModel(0), v11 = v6(), v12 = sub_1A440737C(v11), v11, (v12))
      {
        LOBYTE(v3) = 1;
      }

      else
      {
        type metadata accessor for PhotosDetailsAssetProvenanceViewModel(0);
        v14 = v6();
        LOBYTE(v3) = sub_1A3FBD1E0(v14);
      }
    }

    *(v1 + v2) = v3 & 1;
  }

  return v3 & 1;
}

void sub_1A4727C00(uint64_t a1)
{
  if (!qword_1EB140DC0)
  {
    v2 = type metadata accessor for PhotosDetailsSharedLibraryWidgetView(255);
    v3 = sub_1A4727C64();
    v5 = type metadata accessor for PXSecureLockscreenSwiftUIHostingController(a1, v2, v3, v4);
    if (!v6)
    {
      atomic_store(v5, &qword_1EB140DC0);
    }
  }
}

unint64_t sub_1A4727C64()
{
  result = qword_1EB131068;
  if (!qword_1EB131068)
  {
    type metadata accessor for PhotosDetailsSharedLibraryWidgetView(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB131068);
  }

  return result;
}

double sub_1A4727D18()
{
  v1 = sub_1A52486A4();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for PhotosDetailsSharedLibraryWidgetView(0);
  v6 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x108))();
  v7 = [v6 contentSizeCategory];

  sub_1A412028C(v7, v4);
  v8 = sub_1A4394B64(v4, v5, &off_1EE6D8FE0);
  (*(v2 + 8))(v4, v1);
  return v8;
}

uint64_t sub_1A4728070(uint64_t result)
{
  if ((result & 2) != 0)
  {
    result = (*((*MEMORY[0x1E69E7D40] & *v1) + 0x78))();
    if (result)
    {
      v2 = result;
      v3 = swift_allocObject();
      *(v3 + 16) = v2;
      *(v3 + 24) = v1;
      v6[4] = sub_1A4273BA8;
      v6[5] = v3;
      v6[0] = MEMORY[0x1E69E9820];
      v6[1] = 1107296256;
      v6[2] = sub_1A3C2E0D0;
      v6[3] = &block_descriptor_264;
      v4 = _Block_copy(v6);
      swift_unknownObjectRetain();
      v5 = v1;

      [v2 widget:v5 animateChanges:v4 withAnimationOptions:0];
      _Block_release(v4);
      return swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t sub_1A4728220()
{
  sub_1A3D35A10(v0 + OBJC_IVAR____TtC12PhotosUICore32PhotosDetailsSharedLibraryWidget_widgetInteractionDelegate);

  return swift_unknownObjectRelease();
}

id sub_1A4728260(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for PhotosDetailsSharedLibraryWidget();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_1A4728304()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1A52479E4();

  return v1;
}

void sub_1A4728378(_WORD *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1A52479E4();

  *a2 = v3;
}

uint64_t sub_1A47283F8(__int16 *a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = v2;
  return sub_1A52479F4();
}

void sub_1A4728468(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    type metadata accessor for PHAssetCloudLocalState(255);
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

void sub_1A4728514(void *a1, void *a2, void *a3)
{
  v4 = v3;
  v33 = a3;
  v7 = sub_1A5240E64();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = &v32 - v13;
  [a1 fetchPropertySetsIfNeeded];
  v15 = [a1 px_filename];
  sub_1A524C674();

  sub_1A5240D14();

  sub_1A5240D54();
  v16 = *(v8 + 8);
  v16(v10, v7);
  v17 = v4;
  v18 = sub_1A5240D34();
  v20 = v19;
  v16(v14, v7);
  v21 = (v17 + OBJC_IVAR____TtC12PhotosUICore36PhotosDetailsFilenameWidgetViewModel_fileName);
  *v21 = v18;
  v21[1] = v20;
  LOWORD(v18) = [a1 px_fetchCloudLocalState];
  swift_beginAccess();
  v34 = v18;
  type metadata accessor for PHAssetCloudLocalState(0);
  sub_1A52479A4();
  swift_endAccess();
  v22 = [a1 photoLibrary];
  if (v22)
  {
    v23 = v22;
    v24 = [v22 isCloudPhotoLibraryEnabled];

    *(v17 + OBJC_IVAR____TtC12PhotosUICore36PhotosDetailsFilenameWidgetViewModel_isiCloudEnabled) = v24;
    v25 = [a1 px_isUnsavedSyndicatedAsset];
    *(v17 + OBJC_IVAR____TtC12PhotosUICore36PhotosDetailsFilenameWidgetViewModel_isSyndicatedGuestAsset) = v25;
    v26 = a1;
    v27 = a2;
    v28 = v33;
    v29 = sub_1A4467460(v26, v27, v28);
    v30 = sub_1A446720C();
    v31 = [v30 photoLibrary];

    if (v31)
    {
      [v31 registerChangeObserver_];

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

double sub_1A47287EC()
{
  v1 = OBJC_IVAR____TtC12PhotosUICore36PhotosDetailsFilenameWidgetViewModel__cloudLocalState;
  sub_1A4728468(0, &unk_1EB128B10, MEMORY[0x1E695C070]);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return result;
}

uint64_t type metadata accessor for PhotosDetailsFilenameWidgetViewModel(uint64_t a1)
{
  result = qword_1EB171CE0;
  if (!qword_1EB171CE0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1A4728974(uint64_t a1)
{
  sub_1A4728468(319, &unk_1EB128B10, MEMORY[0x1E695C070]);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t PhotosViewConfigurationContext.init(selectionCoordinator:loadingStatusManager:basePredicate:initialFilterPredicate:sortDescriptors:contentStartingPosition:noContentPlaceholderType:shouldReverseOrder:curationContext:isForSmartAlbumAllPhotosCollection:allowsSwipeToSelect:isVerySlowFetch:wantsNumberedSelectionStyle:startsInSelectMode:photosViewDelegate:pickerClientBundleIdentifier:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char a8@<W7>, uint64_t a9@<X8>, uint64_t a10, char a11, char a12, char a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  swift_unknownObjectWeakInit();
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;
  *(a9 + 56) = a8;
  *(a9 + 64) = a10;
  *(a9 + 72) = a11;
  *(a9 + 73) = a12;
  *(a9 + 74) = a13;
  *(a9 + 75) = a14;
  *(a9 + 76) = a15;
  swift_unknownObjectWeakAssign();
  result = swift_unknownObjectRelease();
  *(a9 + 80) = a17;
  *(a9 + 88) = a18;
  return result;
}

id sub_1A4728B30(void *a1, void *a2)
{
  v5 = [a1 photoLibrary];
  v6 = *(v2 + 16);
  v7 = *(v2 + 24);
  v8 = *(v2 + 32);
  if (v8)
  {
    sub_1A4728C1C();
    v8 = sub_1A524CA14();
  }

  v9 = PXPhotosViewConfigurationForAppAndPickerWithAssetCollectionFetchResult(a1, 0, v5, a2, 0, v6, v7, v8, *v2, *(v2 + 56), *(v2 + 64), *(v2 + 72), *(v2 + 73), *(v2 + 74));

  return v9;
}

unint64_t sub_1A4728C1C()
{
  result = qword_1EB126B60;
  if (!qword_1EB126B60)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EB126B60);
  }

  return result;
}

id sub_1A4728C68(void *a1)
{
  result = [a1 photoLibrary];
  if (result)
  {
    v4 = result;
    v5 = [result librarySpecificFetchOptions];
    v6 = *(v1 + 56);
    [v5 setReverseSortOrder_];
    v7 = [objc_opt_self() fetchImportSessionsWithOptions_];
    v8 = [v7 photoLibrary];
    v9 = *(v1 + 16);
    v10 = *(v1 + 24);
    v11 = *(v1 + 32);
    if (v11)
    {
      sub_1A4728C1C();
      v11 = sub_1A524CA14();
    }

    v12 = PXPhotosViewConfigurationForAppAndPickerWithAssetCollectionFetchResult(v7, 0, v8, a1, 0, v9, v10, v11, *v1, v6, *(v1 + 64), *(v1 + 72), *(v1 + 73), *(v1 + 74));

    return v12;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1A4728DD0(void *a1)
{
  v2 = PXPhotosViewConfigurationForFeaturedPhotos(a1, *v1);

  return v2;
}

id sub_1A4728E00(void *a1)
{
  v2 = PXPhotosViewConfigurationForAssetCollectionWithReverseSortOrder(a1, 0, *(v1 + 56), *(v1 + 64), *v1);
  if ((MEMORY[0x1A590D320]() & 1) == 0)
  {
    [v2 setPrefersActionsInToolbar_];
    [v2 setTrailingAccessoryActionType_];
    [v2 setCenterAccessoryActionType_];
  }

  return v2;
}

uint64_t sub_1A4728E94(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 104))
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

uint64_t sub_1A4728EF0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 104) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 104) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t LemonadeDetailsNavigationType.hashValue.getter()
{
  v1 = *v0;
  sub_1A524EC94();
  MEMORY[0x1A590A010](v1);
  return sub_1A524ECE4();
}

uint64_t sub_1A472902C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1A4730F78();

  return MEMORY[0x1EEDDEA00](a1, a2, a3, a4, v8);
}

void *sub_1A4729090()
{
  sub_1A47290D8();

  return sub_1A5249244();
}

unint64_t sub_1A47290D8()
{
  result = qword_1EB15A8C8[0];
  if (!qword_1EB15A8C8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB15A8C8);
  }

  return result;
}

void sub_1A472916C(uint64_t a1@<X0>, void (*a2)(uint64_t)@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, void *a8@<X8>, uint64_t a9)
{
  v15 = type metadata accessor for LemonadeDetailsNavigationButton(0, a7, a9, a3);
  v16 = a8 + v15[12];
  sub_1A524B694();
  *v16 = v24;
  *(v16 + 1) = v25;
  v17 = v15[13];
  *(a8 + v17) = swift_getKeyPath();
  v18 = MEMORY[0x1E697DCB8];
  sub_1A4729334(0, &qword_1EB128A98, MEMORY[0x1E69C24E0], MEMORY[0x1E697DCB8]);
  swift_storeEnumTagMultiPayload();
  v19 = v15[14];
  *(a8 + v19) = swift_getKeyPath();
  sub_1A4729334(0, &qword_1EB128A80, sub_1A3D63A58, v18);
  swift_storeEnumTagMultiPayload();
  sub_1A52439E4();
  *a8 = a1;
  v20 = (a8 + v15[10]);
  *v20 = a5;
  v20[1] = a6;

  a2(v21);

  v22 = (a8 + v15[11]);
  *v22 = a3;
  v22[1] = a4;
}

void sub_1A4729334(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1A4729398@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v107 = a2;
  v4 = sub_1A5249B24();
  v105 = *(v4 - 8);
  v106 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v104 = (v85 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *(a1 + 16);
  v116 = *(a1 + 24);
  v117 = v6;
  v7 = sub_1A5242C44();
  v101 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v112 = v85 - v8;
  v9 = MEMORY[0x1E69E6720];
  sub_1A4729334(255, &qword_1EB121E00, sub_1A4729FE8, MEMORY[0x1E69E6720]);
  v11 = v10;
  WitnessTable = swift_getWitnessTable();
  v13 = sub_1A472A264();
  v120 = v7;
  v121 = v11;
  v122 = WitnessTable;
  v123 = v13;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v100 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v99 = v85 - v15;
  v103 = v7;
  v120 = v7;
  v121 = v11;
  v93 = WitnessTable;
  v122 = WitnessTable;
  v123 = v13;
  v92 = v13;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v102 = OpaqueTypeMetadata2;
  v120 = OpaqueTypeMetadata2;
  v121 = MEMORY[0x1E69E6370];
  v96 = OpaqueTypeConformance2;
  v122 = OpaqueTypeConformance2;
  v123 = MEMORY[0x1E69E6388];
  v98 = swift_getOpaqueTypeMetadata2();
  v97 = *(v98 - 8);
  MEMORY[0x1EEE9AC00](v98);
  v94 = v85 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v95 = v85 - v19;
  v88 = sub_1A5246E54();
  v87 = *(v88 - 1);
  MEMORY[0x1EEE9AC00](v88);
  v89 = v85 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *(a1 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v90 = v85 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v110 = v85 - v25;
  v111 = v26;
  MEMORY[0x1EEE9AC00](v27);
  v29 = v85 - v28;
  sub_1A4729334(0, &qword_1EB128C00, MEMORY[0x1E69E93D8], v9);
  MEMORY[0x1EEE9AC00](v30 - 8);
  v32 = v85 - v31;
  v33 = swift_getWitnessTable();
  v114 = a1;
  v108 = v2;
  MEMORY[0x1A5905890](a1, v33);
  v34 = sub_1A5246E94();
  v35 = *(v34 - 8);
  v36 = (*(v35 + 48))(v32, 1, v34);
  v91 = v11;
  if (v36 == 1)
  {
    sub_1A4731A58(v32, &qword_1EB128C00, MEMORY[0x1E69E93D8]);
    v37 = *(v21 + 16);
    v38 = (v21 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  }

  else
  {
    v39 = *(v21 + 16);
    v109 = (v21 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v115 = v39;
    v39(v29, v108, v114);
    sub_1A5246E44();
    v40 = sub_1A5246E84();
    v41 = sub_1A524D664();
    if (sub_1A524DEC4())
    {
      v42 = swift_slowAlloc();
      v113 = v21;
      LODWORD(v86) = v41;
      v43 = v42;
      v120 = swift_slowAlloc();
      *v43 = 136446210;
      v44 = v114;
      v45 = sub_1A524A694();
      v47 = v46;
      (*(v113 + 8))(v29, v44);
      sub_1A3C2EF94(v45, v47, &v120);
    }

    (*(v87 + 8))(v89, v88);
    (*(v21 + 8))(v29, v114);
    (*(v35 + 8))(v32, v34);
    v38 = v109;
    v37 = v115;
  }

  v48 = v110;
  v49 = v108;
  v50 = v114;
  v51 = v38;
  v115 = v37;
  v37(v110, v108, v114);
  v109 = v51;
  v52 = (*(v21 + 80) + 32) & ~*(v21 + 80);
  v89 = *(v21 + 80);
  v53 = swift_allocObject();
  v54 = v116;
  *(v53 + 16) = v117;
  *(v53 + 24) = v54;
  v55 = *(v21 + 32);
  v113 = v21 + 32;
  v55(v53 + v52, v48, v50);
  v56 = v55;
  v88 = v55;
  v57 = v90;
  v115(v90, v49, v50);
  v58 = v52;
  v87 = v52;
  v59 = swift_allocObject();
  v60 = v116;
  v61 = v117;
  *(v59 + 16) = v117;
  *(v59 + 24) = v60;
  v56(v59 + v58, v57, v50);
  sub_1A5242C34();
  v62 = (v49 + *(v50 + 48));
  LODWORD(v90) = *v62;
  v86 = *(v62 + 1);
  v118 = v90;
  v119 = v86;
  sub_1A47315D0(0, &qword_1EB1274B0, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
  v85[1] = v63;
  sub_1A524B6C4();
  sub_1A472ABEC(v49, v61, v60, v64);
  swift_checkMetadataState();
  v65 = sub_1A524B6E4();
  v67 = v104;
  v66 = v105;
  *v104 = v65;
  v68 = v106;
  (*(v66 + 104))(v67, *MEMORY[0x1E697C8C0], v106);
  v69 = v103;
  v70 = v99;
  v71 = v112;
  sub_1A524A9B4();

  (*(v66 + 8))(v67, v68);
  (*(v101 + 8))(v71, v69);
  LOBYTE(v120) = v90;
  v121 = v86;
  sub_1A524B6A4();
  LOBYTE(v120) = v118;
  v72 = v110;
  v73 = v114;
  v115(v110, v49, v114);
  v74 = v87;
  v75 = swift_allocObject();
  v76 = v116;
  *(v75 + 16) = v117;
  *(v75 + 24) = v76;
  v88(v75 + v74, v72, v73);
  v77 = v94;
  v78 = v102;
  sub_1A524B154();

  (*(v100 + 8))(v70, v78);
  v79 = v97;
  v80 = *(v97 + 16);
  v81 = v95;
  v82 = v98;
  v80(v95, v77, v98);
  v83 = *(v79 + 8);
  v83(v77, v82);
  v80(v107, v81, v82);
  return (v83)(v81, v82);
}

void sub_1A4729FE8(uint64_t a1)
{
  if (!qword_1EB121E08)
  {
    sub_1A472A0BC(255, &qword_1EB1238D8, sub_1A472A09C);
    sub_1A472A118();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB121E08);
    }
  }
}

void sub_1A472A0BC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1A5248804();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_1A472A118()
{
  result = qword_1EB1238E0;
  if (!qword_1EB1238E0)
  {
    sub_1A472A0BC(255, &qword_1EB1238D8, sub_1A472A09C);
    sub_1A472A1B4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1238E0);
  }

  return result;
}

unint64_t sub_1A472A1B4()
{
  result = qword_1EB1287F8;
  if (!qword_1EB1287F8)
  {
    sub_1A472A09C(255);
    sub_1A4731210(&qword_1EB129650, type metadata accessor for LemonadeNavigationDestinationView, &unk_1A536BD00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1287F8);
  }

  return result;
}

unint64_t sub_1A472A264()
{
  result = qword_1EB121DF8;
  if (!qword_1EB121DF8)
  {
    sub_1A4729334(255, &qword_1EB121E00, sub_1A4729FE8, MEMORY[0x1E69E6720]);
    sub_1A472A0BC(255, &qword_1EB1238D8, sub_1A472A09C);
    sub_1A472A118();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB121DF8);
  }

  return result;
}

void sub_1A472A36C(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = MEMORY[0x1E69E6720];
  sub_1A4729334(0, &qword_1EB1290B0, MEMORY[0x1E69C24E0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v57 - v8;
  sub_1A4729334(0, &qword_1EB129890, type metadata accessor for LemonadeNavigationDestination, v6);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v57 - v11;
  v13 = type metadata accessor for LemonadeNavigationDestination(0);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v57 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v57 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v57 - v21;
  v24 = type metadata accessor for LemonadeDetailsNavigationButton(0, a2, a3, v23);
  (*(a1 + v24[10]))();
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_1A4731A58(v12, &qword_1EB129890, type metadata accessor for LemonadeNavigationDestination);
    return;
  }

  sub_1A47319F0(v12, v22, type metadata accessor for LemonadeNavigationDestination);
  if (*a1 && (v25 = sub_1A52439D4(), v57 = v16, v26 = v22, v27 = v25, v29 = v28, sub_1A44CC22C(v9), v30 = sub_1A52434D4(), (*(*(v30 - 8) + 56))(v9, 0, 1, v30), v31 = sub_1A3C30368(), v32 = sub_1A4657324(v26, 0, v31 & 1, v27, v29, v9, 0, 0), v33 = v27, v22 = v26, v16 = v57, sub_1A3C33378(v33, v29), sub_1A4731A58(v9, &qword_1EB1290B0, MEMORY[0x1E69C24E0]), LOBYTE(v29) = sub_1A3E78D28(v32), sub_1A3E00630(v32), (v29 & 1) != 0))
  {
    v35.n128_f64[0] = sub_1A4655948();
    if (v34)
    {

      v36 = a1 + v24[12];
      v37 = *v36;
      v38 = *(v36 + 1);
      LOBYTE(v59) = v37;
      v60 = v38;
      v58 = 1;
      sub_1A47315D0(0, &qword_1EB1274B0, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
      v34 = sub_1A524B6B4();
    }

    v39 = *(a1 + v24[11]);
    if (v39)
    {
      v40 = v39(v34, v35);
      if (v41)
      {
        v59 = v40;
        v60 = v41;
        MEMORY[0x1EEE9AC00](v40);
        *(&v57 - 2) = &v59;
        if (sub_1A3D3E5DC(sub_1A3D3E6C0, (&v57 - 4), qword_1F17218B0))
        {
          sub_1A4731AC8(v22, type metadata accessor for LemonadeNavigationDestination);

          return;
        }

        v50 = objc_opt_self();
        v51 = *MEMORY[0x1E6991CD0];
        sub_1A4729334(0, &qword_1EB126200, sub_1A3F24E98, MEMORY[0x1E69E6F90]);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_1A52F8E10;
        *(inited + 32) = sub_1A524C674();
        *(inited + 40) = v53;
        v54 = v51;
        v55 = sub_1A524C634();

        *(inited + 48) = v55;
        sub_1A3E75770(inited);
        swift_setDeallocating();
        sub_1A4731AC8(inited + 32, sub_1A3F24E98);
        sub_1A3C52C70(0, &qword_1EB12B160, 0x1E69E58C0);
        v56 = sub_1A524C3D4();

        [v50 sendEvent:v54 withPayload:v56];
      }
    }

    v49 = v22;
  }

  else
  {
    v42 = sub_1A524D244();
    v43 = *sub_1A3CAA3FC();
    sub_1A4731B28(v22, v19, type metadata accessor for LemonadeNavigationDestination);
    if (os_log_type_enabled(v43, v42))
    {
      v44 = v43;
      v45 = swift_slowAlloc();
      v59 = swift_slowAlloc();
      *v45 = 136315138;
      sub_1A4731B28(v19, v16, type metadata accessor for LemonadeNavigationDestination);
      v46 = sub_1A524C714();
      v48 = v47;
      sub_1A4731AC8(v19, type metadata accessor for LemonadeNavigationDestination);
      sub_1A3C2EF94(v46, v48, &v59);
    }

    sub_1A4731AC8(v19, type metadata accessor for LemonadeNavigationDestination);
    v49 = v22;
  }

  sub_1A4731AC8(v49, type metadata accessor for LemonadeNavigationDestination);
}

void sub_1A472AAB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = *(v4 + 24);
  v7 = *(type metadata accessor for LemonadeDetailsNavigationButton(0, v5, v6, a4) - 8);
  v8 = (v4 + ((*(v7 + 80) + 32) & ~*(v7 + 80)));

  sub_1A472A36C(v8, v5, v6);
}

uint64_t sub_1A472AB3C@<X0>(uint64_t a1@<X3>, uint64_t a2@<X8>)
{
  v4 = *(v2 + 16);
  v5 = type metadata accessor for LemonadeDetailsNavigationButton(0, v4, *(v2 + 24), a1);
  v6 = *(*(v4 - 8) + 16);
  v7 = v2 + *(v5 + 36) + ((*(*(v5 - 8) + 80) + 32) & ~*(*(v5 - 8) + 80));

  return v6(a2, v7, v4);
}

uint64_t sub_1A472ABEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for LemonadeDetailsNavigationButton(0, a2, a3, a4);
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v15 - v10;
  (*(v8 + 16))(&v15 - v10, a1, v7, v9);
  v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = a2;
  *(v13 + 24) = a3;
  (*(v8 + 32))(v13 + v12, v11, v7);
  return v13;
}

uint64_t sub_1A472AD10@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for LemonadeNavigationDestination(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A472A0BC(0, &qword_1EB1238D8, sub_1A472A09C);
  v7 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v9 = (v24 - v8);
  sub_1A4729FE8(0);
  v11 = v10;
  v13.n128_f64[0] = MEMORY[0x1EEE9AC00](v10);
  v15 = v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *v1;
  if (*v1)
  {
    v24[0] = v12;

    sub_1A4655948();
    if (v17)
    {
      v18 = v17;
      sub_1A4731B28(v17 + OBJC_IVAR____TtC12PhotosUICore25LemonadeNavigationContext_rootDestination, v5, type metadata accessor for LemonadeNavigationDestination);

      sub_1A487864C(v5, v16, 0, v9);
      sub_1A472A09C(0);
      v20 = (v9 + *(v19 + 36));
      *v20 = sub_1A457F3D8;
      v20[1] = v18;
      v20[2] = 0;
      v20[3] = 0;
      v21 = (v9 + *(v7 + 36));
      *v21 = 0;
      v21[1] = 0;
      v21[2] = sub_1A4731970;
      v21[3] = v16;

      v24[1] = sub_1A524B414();
      sub_1A472A118();
      sub_1A524AE84();

      sub_1A4731978(v9);
      (*(v24[0] + 32))(a1, v15, v11);
      return (*(v24[0] + 56))(a1, 0, 1, v11);
    }

    v12 = v24[0];
  }

  v23 = *(v12 + 56);

  return v23(a1, 1, 1, v11, v13);
}

double sub_1A472B030(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for LemonadeDetailsNavigationButton(0, *(v4 + 16), *(v4 + 24), a4);
  v6 = (v4 + ((*(*(v5 - 8) + 80) + 32) & ~*(*(v5 - 8) + 80)));
  sub_1A47315D0(0, &qword_1EB1274B0, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
  sub_1A524B6A4();
  if ((v8 & 1) == 0)
  {
    if (*v6)
    {
      return sub_1A4655B14(0);
    }
  }

  return result;
}

uint64_t sub_1A472B100@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void (*a5)(uint64_t)@<X5>, uint64_t a6@<X7>, uint64_t a7@<X8>, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v29 = a6;
  v30 = a8;
  v31 = a9;
  v32 = a10;
  v15 = type metadata accessor for LemonadeItemDetailsNavigationButton(0, &v29);
  v16 = a7 + v15[16];
  *v16 = swift_getKeyPath();
  *(v16 + 8) = 0;
  v17 = a7 + v15[17];
  *v17 = swift_getKeyPath();
  *(v17 + 8) = 0;
  v18 = a7 + v15[18];
  *v18 = swift_getKeyPath();
  *(v18 + 40) = 0;
  v19 = a7 + v15[19];
  *v19 = swift_getKeyPath();
  *(v19 + 8) = 0;
  v20 = v15[20];
  *(a7 + v20) = swift_getKeyPath();
  sub_1A4729334(0, &qword_1EB128A80, sub_1A3D63A58, MEMORY[0x1E697DCB8]);
  swift_storeEnumTagMultiPayload();
  v21 = a7 + v15[21];
  v33 = 0;
  sub_1A524B694();
  v22 = v30;
  *v21 = v29;
  *(v21 + 8) = v22;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v24 = *(AssociatedTypeWitness - 8);
  (*(v24 + 16))(a7, a1, AssociatedTypeWitness);
  v25 = *(a6 - 8);
  (*(v25 + 16))(a7 + v15[13], a2, a6);
  *(a7 + v15[14]) = a3;

  a5(v26);

  swift_unknownObjectRelease();
  (*(v25 + 8))(a2, a6);
  return (*(v24 + 8))(a1, AssociatedTypeWitness);
}

uint64_t sub_1A472B3DC(uint64_t a1)
{
  v3 = sub_1A5249234();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = (v1 + *(a1 + 64));
  v8 = *v7;
  v9 = *(v7 + 8);

  if ((v9 & 1) == 0)
  {
    v10 = sub_1A524D254();
    v11 = sub_1A524A014();
    sub_1A5246DF4(v10, &dword_1A3C1C000, v11, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

    sub_1A5249224();
    swift_getAtKeyPath();

    (*(v4 + 8))(v6, v3);
    return v13[1];
  }

  return v8;
}

uint64_t sub_1A472B528(uint64_t a1)
{
  v3 = sub_1A5249234();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v12[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = v1 + *(a1 + 68);
  v8 = *v7;
  if (*(v7 + 8) != 1)
  {

    v9 = sub_1A524D254();
    v10 = sub_1A524A014();
    sub_1A5246DF4(v9, &dword_1A3C1C000, v10, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

    sub_1A5249224();
    swift_getAtKeyPath();
    sub_1A3C53AEC(v8, 0);
    (*(v4 + 8))(v6, v3);
    LOBYTE(v8) = v12[15];
  }

  return v8 & 1;
}

uint64_t sub_1A472B67C(uint64_t a1)
{
  v3 = sub_1A5249234();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = v1 + *(a1 + 76);
  result = *v7;
  if ((*(v7 + 8) & 1) == 0)
  {
    v9 = *v7;

    v10 = sub_1A524D254();
    v11 = sub_1A524A014();
    sub_1A5246DF4(v10, &dword_1A3C1C000, v11, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

    sub_1A5249224();
    swift_getAtKeyPath();
    sub_1A3C53AEC(v9, 0);
    (*(v4 + 8))(v6, v3);
    return v12[1];
  }

  return result;
}

uint64_t sub_1A472B7C8@<X0>(double *a1@<X0>, uint64_t a2@<X8>)
{
  v162 = a2;
  v150 = sub_1A5248B54();
  v149 = *(v150 - 8);
  MEMORY[0x1EEE9AC00](v150);
  v148 = &v119 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1A5242C04();
  v6 = *(a1 + 3);
  v7 = *(a1 + 5);
  v9 = type metadata accessor for LemonadeDetailsNavigationButton(255, v6, v7, v8);
  WitnessTable = swift_getWitnessTable();
  v11 = sub_1A4731210(&qword_1EB129158, MEMORY[0x1E69C2160], MEMORY[0x1E69C2158]);
  v170 = v9;
  v171 = v5;
  v172 = WitnessTable;
  v173 = v11;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v170 = v9;
  v171 = v5;
  v172 = WitnessTable;
  v173 = v11;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v170 = OpaqueTypeMetadata2;
  v171 = OpaqueTypeConformance2;
  swift_getOpaqueTypeMetadata2();
  v14 = sub_1A5249754();
  v15 = sub_1A524B514();
  v146 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v145 = &v119 - v16;
  v170 = OpaqueTypeMetadata2;
  v171 = OpaqueTypeConformance2;
  v180 = swift_getOpaqueTypeConformance2();
  v181 = v7;
  v144 = v14;
  v137 = swift_getWitnessTable();
  v179 = v137;
  v17 = swift_getWitnessTable();
  v170 = v15;
  v171 = v17;
  v18 = swift_getOpaqueTypeMetadata2();
  v143 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v142 = &v119 - v19;
  v20 = *(a1 + 4);
  v151 = *(a1 + 2);
  v152 = v20;
  type metadata accessor for LemonadeDetailsNavigationContextMenu(255, v151, v20, v21);
  v22 = sub_1A524DF24();
  v147 = v15;
  v170 = v15;
  v171 = v17;
  v138 = v17;
  v23 = swift_getOpaqueTypeConformance2();
  v178 = swift_getWitnessTable();
  v24 = swift_getWitnessTable();
  v164 = v18;
  v165 = v23;
  v170 = v18;
  v171 = v22;
  v166 = v22;
  v25 = v2;
  v172 = v23;
  v173 = v24;
  v163 = v24;
  v26 = swift_getOpaqueTypeMetadata2();
  v141 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v140 = &v119 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v139 = &v119 - v29;
  sub_1A3F330A8(255);
  *&v159 = v6;
  v30 = sub_1A5248804();
  v132 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30);
  v136 = &v119 - v31;
  v32 = sub_1A4731210(&qword_1EB127C80, sub_1A3F330A8, MEMORY[0x1E697FD58]);
  *&v160 = v7;
  v176 = v7;
  v177 = v32;
  v33 = swift_getWitnessTable();
  v170 = v30;
  v171 = v33;
  v34 = swift_getOpaqueTypeMetadata2();
  v128 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34);
  v126 = &v119 - v35;
  v133 = v30;
  v170 = v30;
  v171 = v33;
  v127 = v33;
  v36 = swift_getOpaqueTypeConformance2();
  v158 = v34;
  v170 = v34;
  v171 = v36;
  v155 = v36;
  v37 = swift_getOpaqueTypeMetadata2();
  v131 = *(v37 - 8);
  MEMORY[0x1EEE9AC00](v37);
  v130 = &v119 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v39);
  v129 = &v119 - v40;
  v153 = v41;
  v161 = v26;
  v157 = sub_1A5249754();
  v156 = *(v157 - 8);
  MEMORY[0x1EEE9AC00](v157);
  v154 = &v119 - v42;
  v135 = sub_1A5246E54();
  v134 = *(v135 - 8);
  MEMORY[0x1EEE9AC00](v135);
  v44 = &v119 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = *(a1 - 1);
  MEMORY[0x1EEE9AC00](v46);
  v124 = &v119 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  v123 = v47;
  MEMORY[0x1EEE9AC00](v48);
  v50 = &v119 - v49;
  sub_1A4729334(0, &qword_1EB128C00, MEMORY[0x1E69E93D8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v51 - 8);
  v53 = &v119 - v52;
  v54 = swift_getWitnessTable();
  MEMORY[0x1A5905890](a1, v54);
  v55 = sub_1A5246E94();
  v56 = *(v55 - 8);
  v57 = (*(v56 + 48))(v53, 1, v55);
  v125 = v45;
  if (v57 == 1)
  {
    sub_1A4731A58(v53, &qword_1EB128C00, MEMORY[0x1E69E93D8]);
    v58 = v152;
  }

  else
  {
    v59 = *(v45 + 16);
    v122 = v25;
    v59(v50, v25, a1);
    sub_1A5246E44();
    v60 = sub_1A5246E84();
    v121 = sub_1A524D664();
    if (sub_1A524DEC4())
    {
      v61 = swift_slowAlloc();
      v119 = v61;
      v120 = swift_slowAlloc();
      v170 = v120;
      *v61 = 136446210;
      v62 = sub_1A524A694();
      v64 = v63;
      (*(v45 + 8))(v50, a1);
      sub_1A3C2EF94(v62, v64, &v170);
    }

    (*(v134 + 8))(v44, v135);
    (*(v45 + 8))(v50, a1);
    v58 = v152;
    (*(v56 + 8))(v53, v55);
    v25 = v122;
  }

  v65 = sub_1A472B528(a1);
  v66 = v165;
  v67 = v163;
  v68 = v151;
  if ((v65 & 1) == 0)
  {
    goto LABEL_10;
  }

  (*(v58 + 144))(&v167, v25, v151, v58);
  if (!v169)
  {
    v65 = sub_1A47311B4(&v167, &qword_1EB124F38, &qword_1EB124F40, MEMORY[0x1E69C1E98], sub_1A3C34400);
LABEL_10:
    MEMORY[0x1EEE9AC00](v65);
    *&v95 = v68;
    *(&v95 + 1) = v159;
    v159 = v95;
    *&v96 = v58;
    *(&v96 + 1) = v160;
    v160 = v96;
    *(&v119 - 3) = v95;
    *(&v119 - 2) = v96;
    *(&v119 - 2) = v25;
    v97 = v145;
    sub_1A524B504();
    v98 = v148;
    sub_1A5248B44();
    v99 = v142;
    v100 = v147;
    sub_1A524A5C4();
    (*(v149 + 8))(v98, v150);
    v101 = (*(v146 + 8))(v97, v100);
    MEMORY[0x1EEE9AC00](v101);
    v102 = v160;
    *(&v119 - 3) = v159;
    *(&v119 - 2) = v102;
    *(&v119 - 2) = v25;
    v103 = swift_checkMetadataState();
    v104 = v140;
    v105 = v164;
    sub_1A524A954();
    (*(v143 + 8))(v99, v105);
    v170 = v105;
    v171 = v103;
    v172 = v66;
    v173 = v67;
    v106 = swift_getOpaqueTypeConformance2();
    v107 = v141;
    v108 = *(v141 + 16);
    v109 = v67;
    v110 = v139;
    v111 = v161;
    v108(v139, v104, v161);
    v112 = *(v107 + 8);
    v112(v104, v111);
    v108(v104, v110, v111);
    v92 = v109;
    v84 = v158;
    v85 = v155;
    v170 = v158;
    v171 = v155;
    v113 = swift_getOpaqueTypeConformance2();
    v94 = v154;
    sub_1A3DF4890(v104, v153, v111, v113, v106);
    v112(v104, v111);
    v112(v110, v111);
    goto LABEL_11;
  }

  sub_1A3C34460(&v167, &v170);
  LODWORD(v152) = (*(v58 + 136))(v25, v68, v58);
  sub_1A3D6F4A4();
  v69 = v68;
  v70 = v159;
  v71 = v160;
  sub_1A524AA44();
  v72 = v125;
  v73 = v124;
  (*(v125 + 16))(v124, v25, a1);
  sub_1A3C341C8(&v170, &v167);
  v74 = (*(v72 + 80) + 49) & ~*(v72 + 80);
  v75 = v58;
  v76 = (v123 + v74 + 7) & 0xFFFFFFFFFFFFFFF8;
  v77 = swift_allocObject();
  *&v78 = v69;
  *(&v78 + 1) = v70;
  *&v79 = v75;
  *(&v79 + 1) = v71;
  *(v77 + 16) = v78;
  *(v77 + 32) = v79;
  *(v77 + 48) = v152 & 1;
  (*(v72 + 32))(v77 + v74, v73, a1);
  sub_1A3C34460(&v167, v77 + v76);
  v80 = v126;
  v81 = v133;
  v82 = v136;
  sub_1A524AA84();

  (*(v132 + 8))(v82, v81);
  v83 = v130;
  v84 = v158;
  v85 = v155;
  sub_1A524A594();
  (*(v128 + 8))(v80, v84);
  *&v167 = v84;
  *(&v167 + 1) = v85;
  v86 = swift_getOpaqueTypeConformance2();
  v87 = v131;
  v88 = *(v131 + 16);
  v89 = v129;
  v90 = v153;
  v88(v129, v83, v153);
  v91 = *(v87 + 8);
  v91(v83, v90);
  v88(v83, v89, v90);
  v92 = v163;
  *&v167 = v164;
  *(&v167 + 1) = v166;
  v168 = v165;
  v169 = v163;
  v93 = swift_getOpaqueTypeConformance2();
  v94 = v154;
  sub_1A3DF4798(v83, v90, v161, v86, v93);
  v91(v83, v90);
  v91(v89, v90);
  __swift_destroy_boxed_opaque_existential_0(&v170);
LABEL_11:
  v170 = v84;
  v171 = v85;
  v114 = swift_getOpaqueTypeConformance2();
  v170 = v164;
  v171 = v166;
  v172 = v165;
  v173 = v92;
  v115 = swift_getOpaqueTypeConformance2();
  v174 = v114;
  v175 = v115;
  v116 = v157;
  swift_getWitnessTable();
  v117 = v156;
  (*(v156 + 16))(v162, v94, v116);
  return (*(v117 + 8))(v94, v116);
}

uint64_t sub_1A472CBB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v113 = a6;
  v114 = a1;
  v95 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v91 = &v79 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v90 = &v79 - v12;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v106 = AssociatedTypeWitness;
  v104 = swift_getAssociatedTypeWitness();
  v96 = *(v104 - 8);
  v87 = *(v96 + 64);
  MEMORY[0x1EEE9AC00](v104);
  v108 = &v79 - v14;
  v88 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v107 = &v79 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = v16;
  MEMORY[0x1EEE9AC00](v17);
  v86 = &v79 - v18;
  v20 = type metadata accessor for LemonadeDetailsNavigationButton(0, a3, a5, v19);
  v101 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v89 = (&v79 - v21);
  v22 = sub_1A5242C04();
  WitnessTable = swift_getWitnessTable();
  v24 = sub_1A4731210(&qword_1EB129158, MEMORY[0x1E69C2160], MEMORY[0x1E69C2158]);
  v117 = v20;
  v118 = v22;
  v119 = WitnessTable;
  v120 = v24;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v100 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v97 = &v79 - v26;
  v102 = v20;
  v117 = v20;
  v118 = v22;
  v93 = v22;
  v94 = WitnessTable;
  v119 = WitnessTable;
  v120 = v24;
  v92 = v24;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v112 = OpaqueTypeMetadata2;
  v117 = OpaqueTypeMetadata2;
  v118 = OpaqueTypeConformance2;
  v27 = swift_getOpaqueTypeMetadata2();
  v103 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v99 = &v79 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v98 = &v79 - v30;
  v31 = sub_1A5249754();
  v109 = *(v31 - 8);
  v110 = v31;
  MEMORY[0x1EEE9AC00](v31);
  v33 = &v79 - v32;
  v117 = a2;
  v118 = a3;
  v115 = a3;
  v116 = a5;
  v119 = a4;
  v120 = a5;
  v34 = type metadata accessor for LemonadeItemDetailsNavigationButton(0, &v117);
  v35 = v34[13];
  v36 = v114;
  v37 = (*(a4 + 128))();
  if (v37)
  {
    v91 = v27;
    v95 = v33;
    v90 = &v79;
    v83 = *(v36 + v34[14]);
    v38 = MEMORY[0x1EEE9AC00](v37);
    v84 = &v79 - 8;
    v39 = a2;
    v40 = v115;
    *(&v79 - 6) = a2;
    *(&v79 - 5) = v40;
    v41 = a4;
    v82 = a4;
    v42 = v116;
    *(&v79 - 4) = a4;
    *(&v79 - 3) = v42;
    v78 = v36;
    v43 = v88;
    v80 = *(v88 + 16);
    v44 = v86;
    v80(v86, v36 + v35, a2, v38);
    v45 = *(v43 + 80);
    v46 = (v45 + 48) & ~v45;
    v47 = v46 + v85;
    v81 = v46;
    v85 = v45 | 7;
    v48 = swift_allocObject();
    v50 = v115;
    v49 = v116;
    v48[2] = v39;
    v48[3] = v50;
    v48[4] = v41;
    v48[5] = v49;
    v88 = *(v43 + 32);
    (v88)(v48 + v46, v44, v39);
    (v80)(v107, v36 + v35, v39);
    v51 = v115;
    v52 = v116;
    v53 = v96;
    v54 = v36;
    v55 = v104;
    (*(v96 + 16))(v108, v54, v104);
    v56 = (v47 + *(v53 + 80)) & ~*(v53 + 80);
    v57 = (v87 + v56 + 7) & 0xFFFFFFFFFFFFFFF8;
    v58 = swift_allocObject();
    *(v58 + 2) = v39;
    *(v58 + 3) = v51;
    *(v58 + 4) = v82;
    *(v58 + 5) = v52;
    (v88)(&v58[v81], v107, v39);
    (*(v53 + 32))(&v58[v56], v108, v55);
    *&v58[v57] = v83;
    v59 = swift_retain_n();
    v60 = v89;
    sub_1A472916C(v59, sub_1A4731288, sub_1A47312B8, v48, sub_1A4731324, v58, v51, v89, v52);
    if (qword_1EB177A30 != -1)
    {
      swift_once();
    }

    v61 = swift_checkMetadataState();
    __swift_project_value_buffer(v61, qword_1EB1EBF58);
    v62 = v102;
    sub_1A524A944();
    (*(v101 + 8))(v60, v62);
    v120 = swift_getAssociatedTypeWitness();
    v121 = swift_getAssociatedConformanceWitness();
    __swift_allocate_boxed_opaque_existential_1(&v117);
    swift_getAssociatedConformanceWitness();
    sub_1A5246224();
  }

  v63 = v34[15];
  v64 = v95;
  v65 = *(v95 + 2);
  v66 = v36 + v63;
  v67 = v90;
  v68 = v115;
  v65(v90, v66, v115);
  v69 = v91;
  v65(v91, v67, v68);
  v71 = OpaqueTypeConformance2;
  v70 = v112;
  v117 = v112;
  v118 = OpaqueTypeConformance2;
  v72 = swift_getOpaqueTypeConformance2();
  sub_1A3DF4890(v69, v27, v68, v72, v116);
  v73 = *(v64 + 1);
  v73(v69, v68);
  v73(v67, v68);
  v74 = v113;
  v117 = v70;
  v118 = v71;
  v122 = swift_getOpaqueTypeConformance2();
  v123 = v116;
  v75 = v110;
  swift_getWitnessTable();
  v76 = v109;
  (*(v109 + 16))(v74, v33, v75);
  return (*(v76 + 8))(v33, v75);
}

uint64_t sub_1A472D7E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, char *a3@<X8>)
{
  v6 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16[0] = v9;
  v16[1] = v10;
  v16[2] = v11;
  v16[3] = v12;
  v13 = type metadata accessor for LemonadeItemDetailsNavigationButton(0, v16);
  v14 = *(v6 + 16);
  v14(v8, a1 + *(v13 + 60), a2);
  v14(a3, v8, a2);
  return (*(v6 + 8))(v8, a2);
}

uint64_t sub_1A472D8FC(__n128 a1, uint64_t a2, uint64_t a3, char a4)
{
  sub_1A5243F04();
  v6.n128_u64[0] = v7.n128_u64[0];
  v7.n128_u64[0] = 0;

  return MEMORY[0x1EEE2BDA8](a3, a4 & 1, v7, v6);
}

uint64_t sub_1A472D958@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X8>)
{
  v46 = a3;
  v47 = a6;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v42 = *(AssociatedTypeWitness - 1);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v44 = &v38 - v10;
  v41 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v43 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for LemonadeDetailsNavigationContextMenu(0, a2, a4, v13);
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v40 = (&v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v17);
  v39 = &v38 - v18;
  v19 = sub_1A524DF24();
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v38 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v38 - v24;
  v49[0] = a2;
  v49[1] = v46;
  v49[2] = a4;
  v49[3] = a5;
  v26 = type metadata accessor for LemonadeItemDetailsNavigationButton(0, v49);
  v27 = a1;
  if ((sub_1A472B528(v26) & 1) != 0 || (LOBYTE(v49[0]) = *(*(a1 + *(v26 + 56)) + OBJC_IVAR____TtC12PhotosUICore25LemonadeNavigationContext_presentationContext), v50 = 3, static LemonadePresentationContext.== infix(_:_:)(v49, &v50)))
  {
    (*(v15 + 56))(v22, 1, 1, v14);
    swift_getWitnessTable();
  }

  else
  {
    v28 = v41;
    (*(v41 + 16))(v43, v27 + *(v26 + 52), a2);
    v29 = v42;
    (*(v42 + 16))(v44, v27, AssociatedTypeWitness);
    KeyPath = swift_getKeyPath();
    v31 = v40;
    *v40 = KeyPath;
    *(v31 + 8) = 0;
    (*(v28 + 32))(v31 + *(v14 + 36), v43, a2);
    (*(v29 + 32))(v31 + *(v14 + 40), v44, AssociatedTypeWitness);
    swift_getWitnessTable();
    AssociatedTypeWitness = *(v15 + 16);
    v32 = v39;
    AssociatedTypeWitness(v39, v31, v14);
    v46 = v25;
    v33 = v15;
    v34 = *(v15 + 8);
    v34(v31, v14);
    AssociatedTypeWitness(v31, v32, v14);
    v34(v32, v14);
    (*(v33 + 32))(v22, v31, v14);
    (*(v33 + 56))(v22, 0, 1, v14);
    v25 = v46;
  }

  v35 = *(v20 + 16);
  v35(v25, v22, v19);
  v36 = *(v20 + 8);
  v36(v22, v19);
  WitnessTable = swift_getWitnessTable();
  swift_getWitnessTable();
  v35(v47, v25, v19);
  return (v36)(v25, v19);
}

uint64_t sub_1A472DEF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1;
  v78 = a2;
  v4 = a1 - 8;
  v73 = *(a1 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v71 = v5;
  v72 = &v60 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1A5242004();
  v76 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v75 = &v60 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v74 = &v60 - v9;
  sub_1A4731014(0, &qword_1EB122D18, MEMORY[0x1E697F948]);
  v65 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v67 = &v60 - v11;
  v69 = sub_1A5243124();
  v68 = *(v69 - 8);
  MEMORY[0x1EEE9AC00](v69);
  v66 = &v60 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = sub_1A5249234();
  v63 = *(v64 - 8);
  MEMORY[0x1EEE9AC00](v64);
  v14 = &v60 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A472EE20(0, &qword_1EB122A60, &qword_1EB122A68, MEMORY[0x1E697F960], sub_1A4731014);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v70 = &v60 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v17);
  v20 = &v60 - v19;
  v21 = *(v4 + 48);
  v24 = v4 + 24;
  v22 = *(v4 + 24);
  v23 = *(v24 + 8);
  (*(v23 + 144))(&v80, v2 + v21, v22, v23, v18);
  v77 = v6;
  v79 = v20;
  if (v81)
  {
    v60 = v22;
    v61 = v23;
    v62 = v3;
    sub_1A3C34460(&v80, v82);
    __swift_project_boxed_opaque_existential_1(v82, v82[3]);
    v25 = *(v2 + 8);

    v26 = v2;
    if ((v25 & 1) == 0)
    {
      v27 = sub_1A524D254();
      v28 = sub_1A524A014();
      v29 = v27;
      v26 = v2;
      sub_1A5246DF4(v29, &dword_1A3C1C000, v28, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

      sub_1A5249224();
      swift_getAtKeyPath();

      (*(v63 + 8))(v14, v64);
    }

    sub_1A52441F4();

    sub_1A3C34400(0, &qword_1EB124F40, MEMORY[0x1E69C1E98]);
    v30 = sub_1A524E614();

    MEMORY[0x1EEE9AC00](v31);
    v32 = v60;
    v33 = v61;
    *(&v60 - 4) = v60;
    *(&v60 - 3) = v33;
    *(&v60 - 2) = v26;
    sub_1A472EBEC(sub_1A4731258, (&v60 - 6), v30);

    v34 = v66;
    sub_1A5243114();
    v35 = v68;
    v36 = v69;
    (*(v68 + 16))(v67, v34, v69);
    swift_storeEnumTagMultiPayload();
    sub_1A4731210(&qword_1EB124DC8, MEMORY[0x1E69C23A0], MEMORY[0x1E69C2398]);
    v20 = v79;
    sub_1A5249744();
    (*(v35 + 8))(v34, v36);
    sub_1A4731014(0, &qword_1EB122A68, MEMORY[0x1E697F960]);
    (*(*(v37 - 8) + 56))(v20, 0, 1, v37);
    __swift_destroy_boxed_opaque_existential_0(v82);
    v3 = v62;
  }

  else
  {
    sub_1A47311B4(&v80, &qword_1EB124F38, &qword_1EB124F40, MEMORY[0x1E69C1E98], sub_1A3C34400);
    v38 = (*(v23 + 184))(v2 + v21, v22, v23);
    v26 = v2;
    v33 = v23;
    if (v38)
    {
      swift_unknownObjectRetain();
      v39 = v66;
      sub_1A5243104();
      v40 = v68;
      v41 = v69;
      (*(v68 + 16))(v67, v39, v69);
      swift_storeEnumTagMultiPayload();
      sub_1A4731210(&qword_1EB124DC8, MEMORY[0x1E69C23A0], MEMORY[0x1E69C2398]);
      sub_1A5249744();
      swift_unknownObjectRelease();
      (*(v40 + 8))(v39, v41);
      sub_1A4731014(0, &qword_1EB122A68, MEMORY[0x1E697F960]);
      (*(*(v42 - 8) + 56))(v20, 0, 1, v42);
    }

    else
    {
      sub_1A4731014(0, &qword_1EB122A68, MEMORY[0x1E697F960]);
      (*(*(v43 - 8) + 56))(v20, 1, 1, v43);
    }

    v32 = v22;
  }

  v45 = v72;
  v44 = v73;
  (*(v73 + 16))(v72, v26, v3);
  v46 = (*(v44 + 80) + 32) & ~*(v44 + 80);
  v47 = swift_allocObject();
  *(v47 + 16) = v32;
  *(v47 + 24) = v33;
  (*(v44 + 32))(v47 + v46, v45, v3);
  v48 = v74;
  sub_1A5241FF4();
  v49 = MEMORY[0x1E697F960];
  v50 = v20;
  v51 = v70;
  sub_1A473155C(v50, v70, &qword_1EB122A60, &qword_1EB122A68, MEMORY[0x1E697F960], sub_1A4731014);
  v53 = v75;
  v52 = v76;
  v54 = *(v76 + 16);
  v55 = v77;
  v54(v75, v48, v77);
  v56 = v78;
  sub_1A473155C(v51, v78, &qword_1EB122A60, &qword_1EB122A68, v49, sub_1A4731014);
  sub_1A473110C(0);
  v54((v56 + *(v57 + 48)), v53, v55);
  v58 = *(v52 + 8);
  v58(v48, v55);
  sub_1A47311B4(v79, &qword_1EB122A60, &qword_1EB122A68, v49, sub_1A4731014);
  v58(v53, v55);
  return sub_1A47311B4(v51, &qword_1EB122A60, &qword_1EB122A68, v49, sub_1A4731014);
}

uint64_t sub_1A472E934@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v23 = a2;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = sub_1A524DF24();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v24[-v12 - 8];
  v14 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v24[-v16 - 8];
  sub_1A3C341C8(a1, v24);
  sub_1A3C34400(0, &qword_1EB124F40, MEMORY[0x1E69C1E98]);
  v18 = swift_dynamicCast();
  v19 = *(v14 + 56);
  if (v18)
  {
    v19(v13, 0, 1, AssociatedTypeWitness);
    (*(v14 + 32))(v17, v13, AssociatedTypeWitness);
    type metadata accessor for LemonadeDetailsNavigationContextMenu(0, a3, a4, v20);
    v21 = (*(a4 + 184))(v17, a3, a4);
    result = (*(v14 + 8))(v17, AssociatedTypeWitness);
  }

  else
  {
    v19(v13, 1, 1, AssociatedTypeWitness);
    result = (*(v11 + 8))(v13, v10);
    v21 = 0;
  }

  *a5 = v21;
  return result;
}

void *sub_1A472EBEC(void *result, uint64_t a2, uint64_t a3)
{
  v4 = MEMORY[0x1E69E7CC0];
  v13 = MEMORY[0x1E69E7CC0];
  v5 = *(a3 + 16);
  if (v5)
  {
    v6 = result;
    v7 = 0;
    v8 = a3 + 32;
    v11 = a3 + 32;
    do
    {
      v9 = v8 + 40 * v7;
      for (i = v7; ; ++i)
      {
        if (i >= v5)
        {
          __break(1u);
LABEL_17:
          __break(1u);
          return result;
        }

        v7 = i + 1;
        if (__OFADD__(i, 1))
        {
          goto LABEL_17;
        }

        result = (v6)(&v12, v9);
        if (v3)
        {

          return v4;
        }

        if (v12)
        {
          break;
        }

        v9 += 40;
        if (v7 == v5)
        {
          return v4;
        }
      }

      MEMORY[0x1A5907D70](result);
      if (*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1A524CA74();
      }

      result = sub_1A524CAE4();
      v4 = v13;
      v8 = v11;
    }

    while (v7 != v5);
  }

  return v4;
}

uint64_t sub_1A472ED34()
{
  v0 = sub_1A5242C04();
  __swift_allocate_value_buffer(v0, qword_1EB1EBF58);
  __swift_project_value_buffer(v0, qword_1EB1EBF58);
  return sub_1A5247DE4();
}

id sub_1A472ED80(void *a1)
{
  sub_1A3C52C70(0, &qword_1EB126A10, off_1E771E328);
  v2 = [swift_getObjCClassFromMetadata() sharedInstance];
  v3 = [v2 enableDetailsViewPrototype];

  result = 0;
  if (v3)
  {
    return PXSoftLinkedProtoDetailsViewController(a1);
  }

  return result;
}

void sub_1A472EE20(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    a5(255, a3, a4);
    v6 = sub_1A524DF24();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

double sub_1A472EEC4()
{
  v1 = v0;
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v1[5];
  v15 = v2;
  v16 = v3;
  v17 = v4;
  v18 = v5;
  v6 = *(type metadata accessor for LemonadeItemDetailsNavigationButton(0, &v15) - 8);
  v8 = *(v6 + 80);
  v9 = *(v6 + 64);
  if ((v1[6] & 1) == 0)
  {
    v15 = v2;
    v16 = v3;
    v10 = (v9 + ((v8 + 49) & ~v8) + 7) & 0xFFFFFFFFFFFFFFF8;
    v17 = v4;
    v18 = v5;
    v11 = type metadata accessor for LemonadeItemDetailsNavigationButton(0, &v15);
    sub_1A472B3DC(v11);
    sub_1A3C341C8(v1 + v10, &v15);
    v12 = sub_1A52441C4();

    sub_1A47311B4(&v15, &qword_1EB124F38, &qword_1EB124F40, MEMORY[0x1E69C1E98], sub_1A3C34400);
    sub_1A472B3DC(v11);
    v13 = sub_1A52441B4();

    if (sub_1A472B67C(v11))
    {
      v14 = v13 < sub_1A472B67C(v11);
    }

    else
    {
      v14 = 1;
    }

    if (sub_1A472B67C(v11) == 1 || ((v14 | v12) & 1) != 0)
    {
      sub_1A472B3DC(v11);
      sub_1A5244224();
    }
  }

  return result;
}

void sub_1A472F12C(uint64_t a1)
{
  sub_1A4729334(319, &qword_1EB129D40, type metadata accessor for LemonadeNavigationContext, MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      sub_1A3C3637C();
      if (v3 <= 0x3F)
      {
        sub_1A4729334(319, &qword_1EB1201F0, sub_1A3C3637C, MEMORY[0x1E69E6720]);
        if (v4 <= 0x3F)
        {
          sub_1A47315D0(319, &qword_1EB1274B0, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
          if (v5 <= 0x3F)
          {
            sub_1A4729334(319, &qword_1EB124858, MEMORY[0x1E69C24E0], MEMORY[0x1E697DCC0]);
            if (v6 <= 0x3F)
            {
              sub_1A4729334(319, &qword_1EB124740, sub_1A3D63A58, MEMORY[0x1E697DCC0]);
              if (v7 <= 0x3F)
              {
                sub_1A52439F4();
                if (v8 <= 0x3F)
                {
                  swift_cvw_initStructMetadataWithLayoutString();
                }
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_1A472F328(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v38 = *(a3 + 16);
  v4 = *(v38 - 8);
  v5 = *(v4 + 84);
  v6 = *(sub_1A52434D4() - 8);
  if (*(v6 + 64) <= 8uLL)
  {
    v7 = 8;
  }

  else
  {
    v7 = *(v6 + 64);
  }

  sub_1A3D63A8C(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 84);
  v11 = *(v9 + 64);
  v12 = *(sub_1A52439F4() - 8);
  v13 = *(v4 + 80);
  v14 = *(v12 + 80);
  if (v5 <= *(v12 + 84))
  {
    v15 = *(v12 + 84);
  }

  else
  {
    v15 = v5;
  }

  if (v15 <= 0x7FFFFFFF)
  {
    v16 = 0x7FFFFFFF;
  }

  else
  {
    v16 = v15;
  }

  if (v10)
  {
    v17 = v11;
  }

  else
  {
    v17 = v11 + 1;
  }

  if (v17 <= 8)
  {
    v17 = 8;
  }

  if (!a2)
  {
    return 0;
  }

  v18 = *(v4 + 64) + 7;
  v19 = *(v6 + 80) & 0xF8;
  v20 = ~v19 & 0xFFFFFFFFFFFFFFF8;
  v21 = v19 + 23;
  v22 = *(v9 + 80) & 0xF8 | 7;
  v23 = v7 + v22 + 1;
  v24 = v17 + v14 + 1;
  if (a2 <= v16)
  {
    goto LABEL_39;
  }

  v25 = ((v24 + ((v23 + ((v21 + ((((((v18 + ((v13 + 8) & ~v13)) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)) & v20)) & ~v22)) & ~v14) + *(v12 + 64);
  v26 = 8 * v25;
  if (v25 <= 3)
  {
    v29 = ((a2 - v16 + ~(-1 << v26)) >> v26) + 1;
    if (HIWORD(v29))
    {
      v27 = *(a1 + v25);
      if (!v27)
      {
        goto LABEL_39;
      }

      goto LABEL_26;
    }

    if (v29 > 0xFF)
    {
      v27 = *(a1 + v25);
      if (!*(a1 + v25))
      {
        goto LABEL_39;
      }

      goto LABEL_26;
    }

    if (v29 < 2)
    {
LABEL_39:
      v33 = (a1 + v13 + 8) & ~v13;
      if (v5 == v16)
      {
        v34 = *(v4 + 48);

        return v34(v33, v5, v38);
      }

      else
      {
        v35 = ((v18 + v33) & 0xFFFFFFFFFFFFFFF8);
        if ((v15 & 0x80000000) != 0)
        {
          v37 = *(v12 + 48);

          return v37((v24 + ((v23 + ((v21 + ((((v35 + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)) & v20)) & ~v22)) & ~v14);
        }

        else
        {
          v36 = *v35;
          if (v36 >= 0xFFFFFFFF)
          {
            LODWORD(v36) = -1;
          }

          return (v36 + 1);
        }
      }
    }
  }

  v27 = *(a1 + v25);
  if (!*(a1 + v25))
  {
    goto LABEL_39;
  }

LABEL_26:
  v30 = (v27 - 1) << v26;
  if (v25 > 3)
  {
    v30 = 0;
  }

  if (v25)
  {
    if (v25 <= 3)
    {
      v31 = v25;
    }

    else
    {
      v31 = 4;
    }

    if (v31 > 2)
    {
      if (v31 == 3)
      {
        v32 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v32 = *a1;
      }
    }

    else if (v31 == 1)
    {
      v32 = *a1;
    }

    else
    {
      v32 = *a1;
    }
  }

  else
  {
    v32 = 0;
  }

  return v16 + (v32 | v30) + 1;
}

void sub_1A472F724(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v42 = *(a4 + 16);
  v6 = *(v42 - 8);
  v43 = v6;
  v7 = *(v6 + 84);
  v8 = *(sub_1A52434D4() - 8);
  if (*(v8 + 64) <= 8uLL)
  {
    v9 = 8;
  }

  else
  {
    v9 = *(v8 + 64);
  }

  sub_1A3D63A8C(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 84);
  v13 = *(v11 + 64);
  v14 = *(sub_1A52439F4() - 8);
  v15 = *(v6 + 80);
  v16 = *(v6 + 64);
  v17 = *(v8 + 80);
  v18 = *(v14 + 80);
  if (v7 <= *(v14 + 84))
  {
    v19 = *(v14 + 84);
  }

  else
  {
    v19 = v7;
  }

  if (v19 <= 0x7FFFFFFF)
  {
    v20 = 0x7FFFFFFF;
  }

  else
  {
    v20 = v19;
  }

  v21 = v16 + 7;
  v22 = (((((v16 + 7 + ((v15 + 8) & ~v15)) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  v23 = ~(v17 & 0xF8) & 0xFFFFFFFFFFFFFFF8;
  v24 = (v17 & 0xF8) + 23;
  v25 = *(v11 + 80) & 0xF8 | 7;
  v26 = v9 + v25 + 1;
  v27 = (v26 + ((v24 + v22) & v23)) & ~v25;
  if (v12)
  {
    v28 = v13;
  }

  else
  {
    v28 = v13 + 1;
  }

  if (v28 <= 8)
  {
    v28 = 8;
  }

  v29 = v28 + v18 + 1;
  v30 = ((v29 + v27) & ~v18) + *(v14 + 64);
  if (a3 <= v20)
  {
    v32 = 0;
    v31 = a1;
  }

  else
  {
    v31 = a1;
    if (v30 <= 3)
    {
      v35 = ((a3 - v20 + ~(-1 << (8 * v30))) >> (8 * v30)) + 1;
      if (HIWORD(v35))
      {
        v32 = 4;
      }

      else
      {
        if (v35 < 0x100)
        {
          v36 = 1;
        }

        else
        {
          v36 = 2;
        }

        if (v35 >= 2)
        {
          v32 = v36;
        }

        else
        {
          v32 = 0;
        }
      }
    }

    else
    {
      v32 = 1;
    }
  }

  if (v20 < a2)
  {
    v33 = ~v20 + a2;
    if (v30 < 4)
    {
      v34 = (v33 >> (8 * v30)) + 1;
      if (v30)
      {
        v37 = v33 & ~(-1 << (8 * v30));
        bzero(v31, v30);
        if (v30 != 3)
        {
          if (v30 == 2)
          {
            *v31 = v37;
            if (v32 > 1)
            {
LABEL_60:
              if (v32 == 2)
              {
                *&v31[v30] = v34;
              }

              else
              {
                *&v31[v30] = v34;
              }

              return;
            }
          }

          else
          {
            *v31 = v33;
            if (v32 > 1)
            {
              goto LABEL_60;
            }
          }

          goto LABEL_57;
        }

        *v31 = v37;
        v31[2] = BYTE2(v37);
      }

      if (v32 > 1)
      {
        goto LABEL_60;
      }
    }

    else
    {
      bzero(v31, v30);
      *v31 = v33;
      v34 = 1;
      if (v32 > 1)
      {
        goto LABEL_60;
      }
    }

LABEL_57:
    if (v32)
    {
      v31[v30] = v34;
    }

    return;
  }

  if (v32 > 1)
  {
    if (v32 != 2)
    {
      *&v31[v30] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_42;
    }

    *&v31[v30] = 0;
  }

  else if (v32)
  {
    v31[v30] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_42;
  }

  if (!a2)
  {
    return;
  }

LABEL_42:
  v38 = &v31[v15 + 8] & ~v15;
  if (v7 == v20)
  {
    v39 = *(v43 + 56);

    v39(v38, a2, v7, v42);
  }

  else
  {
    v40 = ((v21 + v38) & 0xFFFFFFFFFFFFFFF8);
    if ((v19 & 0x80000000) != 0)
    {
      v41 = *(v14 + 56);

      v41((v29 + ((v26 + ((v24 + ((((v40 + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)) & v23)) & ~v25)) & ~v18, a2);
    }

    else if ((a2 & 0x80000000) != 0)
    {
      *v40 = a2 & 0x7FFFFFFF;
      v40[1] = 0;
    }

    else
    {
      *v40 = (a2 - 1);
    }
  }
}

void sub_1A472FBA8(void *a1)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  if (v1 <= 0x3F)
  {
    swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      type metadata accessor for LemonadeNavigationContext(319);
      if (v3 <= 0x3F)
      {
        swift_checkMetadataState();
        if (v4 <= 0x3F)
        {
          sub_1A4729334(319, &qword_1EB124838, MEMORY[0x1E69C29F0], MEMORY[0x1E697DCC0]);
          if (v5 <= 0x3F)
          {
            sub_1A47315D0(319, &qword_1EB1246E0, MEMORY[0x1E69E6370], MEMORY[0x1E697DCC0]);
            if (v6 <= 0x3F)
            {
              sub_1A473067C(319, &qword_1EB124850, MEMORY[0x1E697DCC0]);
              if (v7 <= 0x3F)
              {
                sub_1A47315D0(319, &qword_1EB1246C0, MEMORY[0x1E69E6530], MEMORY[0x1E697DCC0]);
                if (v8 <= 0x3F)
                {
                  sub_1A4729334(319, &qword_1EB124740, sub_1A3D63A58, MEMORY[0x1E697DCC0]);
                  if (v9 <= 0x3F)
                  {
                    sub_1A47315D0(319, &qword_1EB1274B0, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
                    if (v10 <= 0x3F)
                    {
                      swift_cvw_initStructMetadataWithLayoutString();
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_1A472FE50(_DWORD *a1, unsigned int a2, void *a3)
{
  v5 = a3[2];
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  v41 = AssociatedTypeWitness;
  v8 = *(v7 + 84);
  v9 = *(v5 - 8);
  v10 = *(v9 + 84);
  v40 = v10;
  if (v10 <= v8)
  {
    v10 = *(v7 + 84);
  }

  v39 = a3[3];
  v11 = *(v39 - 8);
  v38 = *(v11 + 84);
  if (v10 <= v38)
  {
    v12 = *(v11 + 84);
  }

  else
  {
    v12 = v10;
  }

  if (v12 <= 0x7FFFFFFF)
  {
    v13 = 0x7FFFFFFF;
  }

  else
  {
    v13 = v12;
  }

  sub_1A3D63A8C(0);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = *(v9 + 80);
  v18 = *(v11 + 80);
  if (!*(v15 + 84))
  {
    ++v16;
  }

  v19 = 8;
  if (v16 > 8)
  {
    v19 = v16;
  }

  if (!a2)
  {
    return 0;
  }

  v20 = *(v7 + 64) + v17;
  v21 = *(v9 + 64) + 7;
  v22 = v18 + 8;
  v23 = a1;
  if (v13 >= a2)
  {
    goto LABEL_37;
  }

  v24 = *(v15 + 80) & 0xF8 | 7;
  v25 = ((v19 + ((v24 + ((*(v11 + 64) + ((v22 + ((v21 + (v20 & ~v17)) & 0xFFFFFFFFFFFFFFF8)) & ~v18) + 87) & 0xFFFFFFFFFFFFFFF8) + 9) & ~v24) + 8) & 0xFFFFFFFFFFFFFFF8) + 16;
  v26 = v25 & 0xFFFFFFF8;
  if ((v25 & 0xFFFFFFF8) != 0)
  {
    v27 = 2;
  }

  else
  {
    v27 = a2 - v13 + 1;
  }

  if (v27 >= 0x10000)
  {
    v28 = 4;
  }

  else
  {
    v28 = 2;
  }

  if (v27 < 0x100)
  {
    v28 = 1;
  }

  if (v27 >= 2)
  {
    v29 = v28;
  }

  else
  {
    v29 = 0;
  }

  if (v29 <= 1)
  {
    if (!v29)
    {
      goto LABEL_37;
    }

    v30 = *(a1 + v25);
    if (!v30)
    {
      goto LABEL_37;
    }

LABEL_33:
    v32 = v30 - 1;
    if (v26)
    {
      v32 = 0;
      LODWORD(v26) = *a1;
    }

    return v13 + (v26 | v32) + 1;
  }

  if (v29 == 2)
  {
    v30 = *(a1 + v25);
    if (v30)
    {
      goto LABEL_33;
    }
  }

  else
  {
    v30 = *(a1 + v25);
    if (v30)
    {
      goto LABEL_33;
    }
  }

LABEL_37:
  if (v8 == v13)
  {
    v33 = v41;
    v34 = *(v7 + 48);
    v35 = v8;
    goto LABEL_41;
  }

  v23 = ((a1 + v20) & ~v17);
  if (v40 == v13)
  {
    v35 = v40;
    v34 = *(v9 + 48);
    v33 = v5;
LABEL_41:

    return v34(v23, v35, v33);
  }

  v36 = ((v23 + v21) & 0xFFFFFFFFFFFFFFF8);
  if ((v12 & 0x80000000) != 0)
  {
    v34 = *(v11 + 48);
    v23 = ((v36 + v22) & ~v18);
    v35 = v38;
    v33 = v39;

    return v34(v23, v35, v33);
  }

  v37 = *v36;
  if (v37 >= 0xFFFFFFFF)
  {
    LODWORD(v37) = -1;
  }

  return (v37 + 1);
}

void sub_1A4730248(_DWORD *a1, unsigned int a2, unsigned int a3, void *a4)
{
  v5 = a4[2];
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v6 = *(swift_getAssociatedTypeWitness() - 8);
  v32 = v6;
  v7 = *(v6 + 84);
  v8 = *(v5 - 8);
  v33 = v8;
  v9 = *(v8 + 84);
  if (v9 <= v7)
  {
    v10 = *(v6 + 84);
  }

  else
  {
    v10 = *(v8 + 84);
  }

  v11 = *(a4[3] - 8);
  if (v10 <= *(v11 + 84))
  {
    v12 = *(v11 + 84);
  }

  else
  {
    v12 = v10;
  }

  if (v12 <= 0x7FFFFFFF)
  {
    v13 = 0x7FFFFFFF;
  }

  else
  {
    v13 = v12;
  }

  sub_1A3D63A8C(0);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = *(v8 + 80);
  v18 = *(v6 + 64) + v17;
  v19 = *(v8 + 64) + 7;
  v20 = *(v11 + 80);
  v21 = *(v15 + 80) & 0xF8 | 7;
  v22 = (v21 + ((*(v11 + 64) + ((v20 + 8 + ((v19 + (v18 & ~v17)) & 0xFFFFFFFFFFFFFFF8)) & ~v20) + 87) & 0xFFFFFFFFFFFFFFF8) + 9) & ~v21;
  if (!*(v15 + 84))
  {
    ++v16;
  }

  if (v16 <= 8)
  {
    v16 = 8;
  }

  v23 = ((v16 + v22 + 8) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v13 >= a3)
  {
    v26 = 0;
  }

  else
  {
    if (((v16 + v22 + 8) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v24 = a3 - v13 + 1;
    }

    else
    {
      v24 = 2;
    }

    if (v24 >= 0x10000)
    {
      v25 = 4;
    }

    else
    {
      v25 = 2;
    }

    if (v24 < 0x100)
    {
      v25 = 1;
    }

    if (v24 >= 2)
    {
      v26 = v25;
    }

    else
    {
      v26 = 0;
    }
  }

  if (a2 > v13)
  {
    if (v23)
    {
      v27 = 1;
    }

    else
    {
      v27 = a2 - v13;
    }

    if (v23)
    {
      bzero(a1, v23);
      *a1 = ~v13 + a2;
    }

    if (v26 > 1)
    {
      if (v26 == 2)
      {
        *(a1 + v23) = v27;
      }

      else
      {
        *(a1 + v23) = v27;
      }
    }

    else if (v26)
    {
      *(a1 + v23) = v27;
    }

    return;
  }

  if (v26 <= 1)
  {
    if (v26)
    {
      *(a1 + v23) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_45;
    }

LABEL_44:
    if (!a2)
    {
      return;
    }

    goto LABEL_45;
  }

  if (v26 == 2)
  {
    *(a1 + v23) = 0;
    goto LABEL_44;
  }

  *(a1 + v23) = 0;
  if (!a2)
  {
    return;
  }

LABEL_45:
  if (v7 == v13)
  {
    v28 = *(v32 + 56);
    v29 = a1;
    goto LABEL_49;
  }

  v29 = ((a1 + v18) & ~v17);
  if (v9 == v13)
  {
    v28 = *(v33 + 56);
LABEL_49:

LABEL_51:
    v28(v29);
    return;
  }

  v30 = ((v29 + v19) & 0xFFFFFFFFFFFFFFF8);
  if ((v12 & 0x80000000) != 0)
  {
    v28 = *(v11 + 56);
    v29 = ((v30 + v20 + 8) & ~v20);

    goto LABEL_51;
  }

  if ((a2 & 0x80000000) != 0)
  {
    v31 = a2 & 0x7FFFFFFF;
  }

  else
  {
    v31 = a2 - 1;
  }

  *v30 = v31;
}

void sub_1A473067C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    sub_1A472EE20(255, &qword_1EB129078, &qword_1EB129080, MEMORY[0x1E69C2558], sub_1A3C34400);
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

void sub_1A4730708(uint64_t a1)
{
  sub_1A4729334(319, &qword_1EB124838, MEMORY[0x1E69C29F0], MEMORY[0x1E697DCC0]);
  if (v1 <= 0x3F)
  {
    swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      swift_getAssociatedTypeWitness();
      swift_getAssociatedConformanceWitness();
      swift_getAssociatedTypeWitness();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1A473084C(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v8 = *(swift_getAssociatedTypeWitness() - 8);
  v9 = v8;
  if (v7 <= *(v8 + 84))
  {
    v10 = *(v8 + 84);
  }

  else
  {
    v10 = v7;
  }

  v11 = *(v6 + 80);
  v12 = *(v6 + 64);
  v13 = *(v8 + 80);
  v14 = *(v8 + 64);
  if (v10 <= 0xFE)
  {
    v15 = 254;
  }

  else
  {
    v15 = v10;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 <= v15)
  {
    goto LABEL_31;
  }

  v16 = ((v12 + ((v11 + 9) & ~v11) + v13) & ~v13) + v14;
  v17 = 8 * v16;
  if (v16 <= 3)
  {
    v20 = ((a2 - v15 + ~(-1 << v17)) >> v17) + 1;
    if (HIWORD(v20))
    {
      v18 = *(a1 + v16);
      if (!v18)
      {
        goto LABEL_31;
      }

      goto LABEL_18;
    }

    if (v20 > 0xFF)
    {
      v18 = *(a1 + v16);
      if (!*(a1 + v16))
      {
        goto LABEL_31;
      }

      goto LABEL_18;
    }

    if (v20 < 2)
    {
LABEL_31:
      if (v10 > 0xFE)
      {
        v25 = (a1 + v11 + 9) & ~v11;
        if (v7 == v15)
        {
          v26 = *(v6 + 48);

          return v26(v25, v7, v5);
        }

        else
        {
          v27 = *(v9 + 48);
          v28 = (v25 + v12 + v13) & ~v13;

          return v27(v28);
        }
      }

      else
      {
        v24 = *(a1 + 8);
        if (v24 > 1)
        {
          return (v24 ^ 0xFF) + 1;
        }

        else
        {
          return 0;
        }
      }
    }
  }

  v18 = *(a1 + v16);
  if (!*(a1 + v16))
  {
    goto LABEL_31;
  }

LABEL_18:
  v21 = (v18 - 1) << v17;
  if (v16 > 3)
  {
    v21 = 0;
  }

  if (v16)
  {
    if (v16 <= 3)
    {
      v22 = v16;
    }

    else
    {
      v22 = 4;
    }

    if (v22 > 2)
    {
      if (v22 == 3)
      {
        v23 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v23 = *a1;
      }
    }

    else if (v22 == 1)
    {
      v23 = *a1;
    }

    else
    {
      v23 = *a1;
    }
  }

  else
  {
    v23 = 0;
  }

  return v15 + (v23 | v21) + 1;
}

void sub_1A4730B70(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v29 = v8;
  v9 = *(v8 + 84);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v10 = *(swift_getAssociatedTypeWitness() - 8);
  v11 = v10;
  if (v9 <= *(v10 + 84))
  {
    v12 = *(v10 + 84);
  }

  else
  {
    v12 = v9;
  }

  v13 = *(v8 + 80);
  v14 = *(v8 + 64);
  v15 = *(v10 + 80);
  v16 = *(v10 + 64);
  if (v12 <= 0xFE)
  {
    v17 = 254;
  }

  else
  {
    v17 = v12;
  }

  v18 = ((v14 + ((v13 + 9) & ~v13) + v15) & ~v15) + v16;
  if (a3 <= v17)
  {
    v19 = 0;
  }

  else if (v18 <= 3)
  {
    v22 = ((a3 - v17 + ~(-1 << (8 * v18))) >> (8 * v18)) + 1;
    if (HIWORD(v22))
    {
      v19 = 4;
    }

    else
    {
      if (v22 < 0x100)
      {
        v23 = 1;
      }

      else
      {
        v23 = 2;
      }

      if (v22 >= 2)
      {
        v19 = v23;
      }

      else
      {
        v19 = 0;
      }
    }
  }

  else
  {
    v19 = 1;
  }

  if (v17 < a2)
  {
    v20 = ~v17 + a2;
    if (v18 < 4)
    {
      v21 = (v20 >> (8 * v18)) + 1;
      if (v18)
      {
        v24 = v20 & ~(-1 << (8 * v18));
        bzero(a1, v18);
        if (v18 != 3)
        {
          if (v18 == 2)
          {
            *a1 = v24;
            if (v19 > 1)
            {
LABEL_53:
              if (v19 == 2)
              {
                *&a1[v18] = v21;
              }

              else
              {
                *&a1[v18] = v21;
              }

              return;
            }
          }

          else
          {
            *a1 = v20;
            if (v19 > 1)
            {
              goto LABEL_53;
            }
          }

          goto LABEL_50;
        }

        *a1 = v24;
        a1[2] = BYTE2(v24);
      }

      if (v19 > 1)
      {
        goto LABEL_53;
      }
    }

    else
    {
      bzero(a1, v18);
      *a1 = v20;
      v21 = 1;
      if (v19 > 1)
      {
        goto LABEL_53;
      }
    }

LABEL_50:
    if (v19)
    {
      a1[v18] = v21;
    }

    return;
  }

  if (v19 > 1)
  {
    if (v19 != 2)
    {
      *&a1[v18] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_34;
    }

    *&a1[v18] = 0;
  }

  else if (v19)
  {
    a1[v18] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_34;
  }

  if (!a2)
  {
    return;
  }

LABEL_34:
  if (v12 > 0xFE)
  {
    v25 = &a1[v13 + 9] & ~v13;
    if (v9 == v17)
    {
      v26 = *(v29 + 56);

      v26(v25, a2, v9, v7);
    }

    else
    {
      v27 = *(v11 + 56);
      v28 = (v25 + v14 + v15) & ~v15;

      v27(v28, a2);
    }
  }

  else if (a2 > 0xFE)
  {
    a1[8] = 0;
    *a1 = (a2 - 255);
  }

  else
  {
    a1[8] = -a2;
  }
}

unint64_t sub_1A4730F78()
{
  result = qword_1EB140DF0;
  if (!qword_1EB140DF0)
  {
    sub_1A47315D0(255, &unk_1EB125548, &type metadata for LemonadeDetailsNavigationType, MEMORY[0x1E69E6720]);
    sub_1A3EE998C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB140DF0);
  }

  return result;
}

void sub_1A4731014(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = sub_1A5243124();
    v7 = a3(a1, v6, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_1A4731078(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = *(v4 + 24);
  v7 = type metadata accessor for LemonadeDetailsNavigationContextMenu(0, v5, v6, a4);
  return (*(v6 + 192))(v4 + ((*(*(v7 - 8) + 80) + 32) & ~*(*(v7 - 8) + 80)) + *(v7 + 40), v5, v6);
}

void sub_1A473110C(uint64_t a1)
{
  if (!qword_1EB122A58)
  {
    sub_1A472EE20(255, &qword_1EB122A60, &unk_1EB122A68, MEMORY[0x1E697F960], sub_1A4731014);
    sub_1A5242004();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB122A58);
    }
  }
}

uint64_t sub_1A47311B4(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  sub_1A472EE20(0, a2, a3, a4, a5);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

uint64_t sub_1A4731210(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1A4731324@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 32);
  v5 = ((*(*(v3 - 8) + 80) + 48) & ~*(*(v3 - 8) + 80)) + *(*(v3 - 8) + 64);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v6 = *(swift_getAssociatedTypeWitness() - 8);
  v7 = (v5 + *(v6 + 80)) & ~*(v6 + 80);
  v8 = *(v1 + ((*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8));
  if ((*(v4 + 128))(v1 + v7, v3, v4))
  {
    v9 = *(v8 + OBJC_IVAR____TtC12PhotosUICore25LemonadeNavigationContext_photoLibraryContext);
    (*(v4 + 120))(v1 + v7, v9, v3, v4);
    (*(v4 + 112))(v1 + v7, v9, v3, v4);
    v10 = 0;
  }

  else
  {
    v10 = 1;
  }

  v11 = type metadata accessor for LemonadeNavigationDestination(0);
  v12 = *(*(v11 - 8) + 56);

  return v12(a1, v10, 1, v11);
}

uint64_t sub_1A473155C(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t, uint64_t, uint64_t))
{
  sub_1A472EE20(0, a3, a4, a5, a6);
  (*(*(v8 - 8) + 16))(a2, a1, v8);
  return a2;
}

void sub_1A47315D0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t objectdestroyTm_75(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = type metadata accessor for LemonadeDetailsNavigationButton(0, v5, *(v4 + 24), a4);
  v7 = v4 + ((*(*(v6 - 1) + 80) + 32) & ~*(*(v6 - 1) + 80));

  (*(*(v5 - 8) + 8))(v7 + v6[9], v5);

  if (*(v7 + v6[11]))
  {
  }

  v8 = v6[13];
  sub_1A4729334(0, &qword_1EB128A98, MEMORY[0x1E69C24E0], MEMORY[0x1E697DCB8]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_1A52434D4();
    (*(*(v9 - 8) + 8))(v7 + v8, v9);
  }

  else
  {
  }

  v10 = v6[14];
  sub_1A4729334(0, &qword_1EB128A80, sub_1A3D63A58, MEMORY[0x1E697DCB8]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1A3D63A8C(0);
    v12 = v11;
    v13 = *(v11 - 8);
    if (!(*(v13 + 48))(v7 + v10, 1, v11))
    {
      (*(v13 + 8))(v7 + v10, v12);
    }
  }

  else
  {
  }

  v14 = v6[15];
  v15 = sub_1A52439F4();
  (*(*(v15 - 8) + 8))(v7 + v14, v15);

  return swift_deallocObject();
}

uint64_t sub_1A4731978(uint64_t a1)
{
  sub_1A472A0BC(0, &qword_1EB1238D8, sub_1A472A09C);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1A47319F0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A4731A58(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1A4729334(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1A4731AC8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1A4731B28(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_1A4731B90()
{
  result = qword_1EB1210D0;
  if (!qword_1EB1210D0)
  {
    sub_1A4729334(255, &qword_1EB1210C8, sub_1A473110C, MEMORY[0x1E6981F40]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1210D0);
  }

  return result;
}

double sub_1A4731C6C()
{
  swift_beginAccess();
  v0 = 1.0 / *&qword_1EB140DF8;
  swift_beginAccess();
  v1 = v0 * *&qword_1EB140E00;
  swift_beginAccess();
  return v1 + 1.0 / *&qword_1EB140E08;
}

void sub_1A4731D0C()
{
  swift_getKeyPath();
  (*(*v0 + 7144))();

  swift_beginAccess();
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A4731D90@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 1120))();
  *a2 = result;
  return result;
}

uint64_t (*sub_1A4731F6C(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 7144))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore21TimelineVFXEngineSpec___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A4753E4C(&qword_1EB1258C8, type metadata accessor for TimelineVFXEngineSpec, &unk_1A535D290);
  sub_1A52415F4();

  v4[7] = sub_1A3E0A030(v4);
  return sub_1A47320C0;
}

uint64_t sub_1A47320CC@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  (*(*v1 + 7144))();

  swift_beginAccess();
  return sub_1A3C341C8(v1 + 24, a1);
}

uint64_t (*sub_1A4732234(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 7144))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore21TimelineVFXEngineSpec___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A4753E4C(&qword_1EB1258C8, type metadata accessor for TimelineVFXEngineSpec, &unk_1A535D290);
  sub_1A52415F4();

  v4[7] = sub_1A3DE36A4(v4);
  return sub_1A4732388;
}

uint64_t sub_1A4732394@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  (*(*v1 + 7144))();

  swift_beginAccess();
  return sub_1A3C341C8(v1 + 64, a1);
}

uint64_t (*sub_1A47324FC(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 7144))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore21TimelineVFXEngineSpec___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A4753E4C(&qword_1EB1258C8, type metadata accessor for TimelineVFXEngineSpec, &unk_1A535D290);
  sub_1A52415F4();

  v4[7] = sub_1A45872A4(v4);
  return sub_1A4732650;
}

uint64_t sub_1A47326AC@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  (*(*v1 + 7144))();

  swift_beginAccess();
  return sub_1A3C341C8(v1 + 104, a1);
}

uint64_t sub_1A4732814(void *a1, uint64_t a2)
{
  swift_getKeyPath();
  (*(*v2 + 7152))();

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t (*sub_1A47328B4(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 7144))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore21TimelineVFXEngineSpec___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A4753E4C(&qword_1EB1258C8, type metadata accessor for TimelineVFXEngineSpec, &unk_1A535D290);
  sub_1A52415F4();

  v4[7] = sub_1A473265C(v4);
  return sub_1A4732A08;
}

float sub_1A4732A14()
{
  swift_getKeyPath();
  (*(*v0 + 7144))();

  swift_beginAccess();
  return v0[36];
}

void sub_1A4732B38(float a1)
{
  swift_beginAccess();
  if (v1[36] == a1)
  {
    v1[36] = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v4.n128_f64[0] = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v1 + 7152))(v4);
  }
}

uint64_t (*sub_1A4732C44(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 7144))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore21TimelineVFXEngineSpec___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A4753E4C(&qword_1EB1258C8, type metadata accessor for TimelineVFXEngineSpec, &unk_1A535D290);
  sub_1A52415F4();

  v4[7] = sub_1A3E0C604(v4);
  return sub_1A4732D98;
}

float sub_1A4732DF4()
{
  swift_getKeyPath();
  (*(*v0 + 7144))();

  swift_beginAccess();
  return v0[37];
}

void sub_1A4732F18(float a1)
{
  swift_beginAccess();
  if (v1[37] == a1)
  {
    v1[37] = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v4.n128_f64[0] = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v1 + 7152))(v4);
  }
}

uint64_t (*sub_1A4733024(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 7144))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore21TimelineVFXEngineSpec___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A4753E4C(&qword_1EB1258C8, type metadata accessor for TimelineVFXEngineSpec, &unk_1A535D290);
  sub_1A52415F4();

  v4[7] = sub_1A4732DA4(v4);
  return sub_1A4733178;
}

float sub_1A47331D4()
{
  swift_getKeyPath();
  (*(*v0 + 7144))();

  swift_beginAccess();
  return v0[38];
}

void sub_1A47332F8(float a1)
{
  swift_beginAccess();
  if (v1[38] == a1)
  {
    v1[38] = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v4.n128_f64[0] = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v1 + 7152))(v4);
  }
}

uint64_t (*sub_1A4733404(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 7144))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore21TimelineVFXEngineSpec___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A4753E4C(&qword_1EB1258C8, type metadata accessor for TimelineVFXEngineSpec, &unk_1A535D290);
  sub_1A52415F4();

  v4[7] = sub_1A4733184(v4);
  return sub_1A4733558;
}

float sub_1A47335B4()
{
  swift_getKeyPath();
  (*(*v0 + 7144))();

  swift_beginAccess();
  return v0[39];
}

void sub_1A47336D8(float a1)
{
  swift_beginAccess();
  if (v1[39] == a1)
  {
    v1[39] = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v4.n128_f64[0] = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v1 + 7152))(v4);
  }
}

uint64_t (*sub_1A47337E4(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 7144))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore21TimelineVFXEngineSpec___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A4753E4C(&qword_1EB1258C8, type metadata accessor for TimelineVFXEngineSpec, &unk_1A535D290);
  sub_1A52415F4();

  v4[7] = sub_1A4733564(v4);
  return sub_1A4733938;
}

float sub_1A4733944()
{
  swift_getKeyPath();
  (*(*v0 + 7144))();

  swift_beginAccess();
  return v0[40];
}

void sub_1A4733A68(float a1)
{
  swift_beginAccess();
  if (v1[40] == a1)
  {
    v1[40] = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v4.n128_f64[0] = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v1 + 7152))(v4);
  }
}

uint64_t (*sub_1A4733B74(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 7144))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore21TimelineVFXEngineSpec___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A4753E4C(&qword_1EB1258C8, type metadata accessor for TimelineVFXEngineSpec, &unk_1A535D290);
  sub_1A52415F4();

  v4[7] = sub_1A3E0CFEC(v4);
  return sub_1A4733CC8;
}

float sub_1A4733D24()
{
  swift_getKeyPath();
  (*(*v0 + 7144))();

  swift_beginAccess();
  return v0[41];
}

void sub_1A4733E48(float a1)
{
  swift_beginAccess();
  if (v1[41] == a1)
  {
    v1[41] = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v4.n128_f64[0] = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v1 + 7152))(v4);
  }
}

uint64_t (*sub_1A4733F54(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 7144))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore21TimelineVFXEngineSpec___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A4753E4C(&qword_1EB1258C8, type metadata accessor for TimelineVFXEngineSpec, &unk_1A535D290);
  sub_1A52415F4();

  v4[7] = sub_1A4733CD4(v4);
  return sub_1A47340A8;
}

float sub_1A4734104()
{
  swift_getKeyPath();
  (*(*v0 + 7144))();

  swift_beginAccess();
  return v0[42];
}

void sub_1A4734228(float a1)
{
  swift_beginAccess();
  if (v1[42] == a1)
  {
    v1[42] = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v4.n128_f64[0] = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v1 + 7152))(v4);
  }
}

uint64_t (*sub_1A4734334(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 7144))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore21TimelineVFXEngineSpec___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A4753E4C(&qword_1EB1258C8, type metadata accessor for TimelineVFXEngineSpec, &unk_1A535D290);
  sub_1A52415F4();

  v4[7] = sub_1A47340B4(v4);
  return sub_1A4734488;
}

float sub_1A47344E4()
{
  swift_getKeyPath();
  (*(*v0 + 7144))();

  swift_beginAccess();
  return v0[43];
}

void sub_1A4734608(float a1)
{
  swift_beginAccess();
  if (v1[43] == a1)
  {
    v1[43] = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v4.n128_f64[0] = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v1 + 7152))(v4);
  }
}

uint64_t (*sub_1A4734714(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 7144))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore21TimelineVFXEngineSpec___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A4753E4C(&qword_1EB1258C8, type metadata accessor for TimelineVFXEngineSpec, &unk_1A535D290);
  sub_1A52415F4();

  v4[7] = sub_1A4734494(v4);
  return sub_1A4734868;
}

float sub_1A4734874()
{
  swift_getKeyPath();
  (*(*v0 + 7144))();

  swift_beginAccess();
  return v0[44];
}

void sub_1A4734998(float a1)
{
  swift_beginAccess();
  if (v1[44] == a1)
  {
    v1[44] = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v4.n128_f64[0] = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v1 + 7152))(v4);
  }
}

uint64_t (*sub_1A4734AA4(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 7144))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore21TimelineVFXEngineSpec___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A4753E4C(&qword_1EB1258C8, type metadata accessor for TimelineVFXEngineSpec, &unk_1A535D290);
  sub_1A52415F4();

  v4[7] = sub_1A3E0D400(v4);
  return sub_1A4734BF8;
}

float sub_1A4734C54()
{
  swift_getKeyPath();
  (*(*v0 + 7144))();

  swift_beginAccess();
  return v0[45];
}

void sub_1A4734D78(float a1)
{
  swift_beginAccess();
  if (v1[45] == a1)
  {
    v1[45] = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v4.n128_f64[0] = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v1 + 7152))(v4);
  }
}

uint64_t (*sub_1A4734E84(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 7144))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore21TimelineVFXEngineSpec___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A4753E4C(&qword_1EB1258C8, type metadata accessor for TimelineVFXEngineSpec, &unk_1A535D290);
  sub_1A52415F4();

  v4[7] = sub_1A4734C04(v4);
  return sub_1A4734FD8;
}

float sub_1A4735034()
{
  swift_getKeyPath();
  (*(*v0 + 7144))();

  swift_beginAccess();
  return v0[46];
}

void sub_1A4735158(float a1)
{
  swift_beginAccess();
  if (v1[46] == a1)
  {
    v1[46] = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v4.n128_f64[0] = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v1 + 7152))(v4);
  }
}

uint64_t (*sub_1A4735264(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 7144))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore21TimelineVFXEngineSpec___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A4753E4C(&qword_1EB1258C8, type metadata accessor for TimelineVFXEngineSpec, &unk_1A535D290);
  sub_1A52415F4();

  v4[7] = sub_1A4734FE4(v4);
  return sub_1A47353B8;
}

float sub_1A4735414()
{
  swift_getKeyPath();
  (*(*v0 + 7144))();

  swift_beginAccess();
  return v0[47];
}

void sub_1A4735538(float a1)
{
  swift_beginAccess();
  if (v1[47] == a1)
  {
    v1[47] = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v4.n128_f64[0] = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v1 + 7152))(v4);
  }
}

uint64_t (*sub_1A4735644(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 7144))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore21TimelineVFXEngineSpec___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A4753E4C(&qword_1EB1258C8, type metadata accessor for TimelineVFXEngineSpec, &unk_1A535D290);
  sub_1A52415F4();

  v4[7] = sub_1A47353C4(v4);
  return sub_1A4735798;
}

float sub_1A47357F4()
{
  swift_getKeyPath();
  (*(*v0 + 7144))();

  swift_beginAccess();
  return v0[48];
}

void sub_1A4735918(float a1)
{
  swift_beginAccess();
  if (v1[48] == a1)
  {
    v1[48] = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v4.n128_f64[0] = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v1 + 7152))(v4);
  }
}

uint64_t (*sub_1A4735A24(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 7144))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore21TimelineVFXEngineSpec___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A4753E4C(&qword_1EB1258C8, type metadata accessor for TimelineVFXEngineSpec, &unk_1A535D290);
  sub_1A52415F4();

  v4[7] = sub_1A47357A4(v4);
  return sub_1A4735B78;
}

float sub_1A4735BD4()
{
  swift_getKeyPath();
  (*(*v0 + 7144))();

  swift_beginAccess();
  return v0[49];
}

void sub_1A4735CF8(float a1)
{
  swift_beginAccess();
  if (v1[49] == a1)
  {
    v1[49] = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v4.n128_f64[0] = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v1 + 7152))(v4);
  }
}

uint64_t (*sub_1A4735E04(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 7144))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore21TimelineVFXEngineSpec___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A4753E4C(&qword_1EB1258C8, type metadata accessor for TimelineVFXEngineSpec, &unk_1A535D290);
  sub_1A52415F4();

  v4[7] = sub_1A4735B84(v4);
  return sub_1A4735F58;
}

float sub_1A4735F64()
{
  swift_getKeyPath();
  (*(*v0 + 7144))();

  swift_beginAccess();
  return v0[50];
}

void sub_1A4736088(float a1)
{
  swift_beginAccess();
  if (v1[50] == a1)
  {
    v1[50] = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v4.n128_f64[0] = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v1 + 7152))(v4);
  }
}

uint64_t (*sub_1A4736194(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 7144))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore21TimelineVFXEngineSpec___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A4753E4C(&qword_1EB1258C8, type metadata accessor for TimelineVFXEngineSpec, &unk_1A535D290);
  sub_1A52415F4();

  v4[7] = sub_1A3E0DC68(v4);
  return sub_1A47362E8;
}

float sub_1A4736344()
{
  swift_getKeyPath();
  (*(*v0 + 7144))();

  swift_beginAccess();
  return v0[51];
}

void sub_1A4736468(float a1)
{
  swift_beginAccess();
  if (v1[51] == a1)
  {
    v1[51] = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v4.n128_f64[0] = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v1 + 7152))(v4);
  }
}

uint64_t (*sub_1A4736574(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 7144))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore21TimelineVFXEngineSpec___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A4753E4C(&qword_1EB1258C8, type metadata accessor for TimelineVFXEngineSpec, &unk_1A535D290);
  sub_1A52415F4();

  v4[7] = sub_1A47362F4(v4);
  return sub_1A47366C8;
}

float sub_1A47366D4()
{
  swift_getKeyPath();
  (*(*v0 + 7144))();

  swift_beginAccess();
  return v0[52];
}

void sub_1A47367F8(float a1)
{
  swift_beginAccess();
  if (v1[52] == a1)
  {
    v1[52] = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v4.n128_f64[0] = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v1 + 7152))(v4);
  }
}

uint64_t (*sub_1A4736904(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 7144))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore21TimelineVFXEngineSpec___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A4753E4C(&qword_1EB1258C8, type metadata accessor for TimelineVFXEngineSpec, &unk_1A535D290);
  sub_1A52415F4();

  v4[7] = sub_1A3E0E0BC(v4);
  return sub_1A4736A58;
}

float sub_1A4736AB4()
{
  swift_getKeyPath();
  (*(*v0 + 7144))();

  swift_beginAccess();
  return v0[53];
}

void sub_1A4736BD8(float a1)
{
  swift_beginAccess();
  if (v1[53] == a1)
  {
    v1[53] = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v4.n128_f64[0] = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v1 + 7152))(v4);
  }
}

uint64_t (*sub_1A4736CE4(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 7144))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore21TimelineVFXEngineSpec___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A4753E4C(&qword_1EB1258C8, type metadata accessor for TimelineVFXEngineSpec, &unk_1A535D290);
  sub_1A52415F4();

  v4[7] = sub_1A4736A64(v4);
  return sub_1A4736E38;
}

uint64_t sub_1A4736E44()
{
  swift_getKeyPath();
  (*(*v0 + 7144))();

  swift_beginAccess();
  return v0[216];
}

uint64_t sub_1A4736EC4@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 2176))();
  *a2 = result & 1;
  return result;
}

void sub_1A4736F6C(char a1)
{
  v2 = a1 & 1;
  swift_beginAccess();
  if (v1[216] == v2)
  {
    v1[216] = v2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v4.n128_f64[0] = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v1 + 7152))(v4);
  }
}

uint64_t (*sub_1A473706C(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 7144))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore21TimelineVFXEngineSpec___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A4753E4C(&qword_1EB1258C8, type metadata accessor for TimelineVFXEngineSpec, &unk_1A535D290);
  sub_1A52415F4();

  v4[7] = sub_1A3E0E488(v4);
  return sub_1A47371C0;
}

uint64_t sub_1A473721C()
{
  swift_getKeyPath();
  (*(*v0 + 7144))();

  swift_beginAccess();
  return v0[217];
}

uint64_t sub_1A473729C@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 2224))();
  *a2 = result & 1;
  return result;
}

void sub_1A4737344(char a1)
{
  v2 = a1 & 1;
  swift_beginAccess();
  if (v1[217] == v2)
  {
    v1[217] = v2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v4.n128_f64[0] = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v1 + 7152))(v4);
  }
}

uint64_t (*sub_1A4737444(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 7144))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore21TimelineVFXEngineSpec___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A4753E4C(&qword_1EB1258C8, type metadata accessor for TimelineVFXEngineSpec, &unk_1A535D290);
  sub_1A52415F4();

  v4[7] = sub_1A47371CC(v4);
  return sub_1A4737598;
}

uint64_t sub_1A47375F4()
{
  swift_getKeyPath();
  (*(*v0 + 7144))();

  swift_beginAccess();
  return v0[218];
}

uint64_t sub_1A4737674@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 2272))();
  *a2 = result & 1;
  return result;
}

void sub_1A473771C(char a1)
{
  v2 = a1 & 1;
  swift_beginAccess();
  if (v1[218] == v2)
  {
    v1[218] = v2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v4.n128_f64[0] = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v1 + 7152))(v4);
  }
}

uint64_t (*sub_1A473781C(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 7144))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore21TimelineVFXEngineSpec___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A4753E4C(&qword_1EB1258C8, type metadata accessor for TimelineVFXEngineSpec, &unk_1A535D290);
  sub_1A52415F4();

  v4[7] = sub_1A47375A4(v4);
  return sub_1A4737970;
}

uint64_t sub_1A47379CC()
{
  swift_getKeyPath();
  (*(*v0 + 7144))();

  swift_beginAccess();
  return v0[219];
}

uint64_t sub_1A4737A4C@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 2320))();
  *a2 = result & 1;
  return result;
}

void sub_1A4737AF4(char a1)
{
  v2 = a1 & 1;
  swift_beginAccess();
  if (v1[219] == v2)
  {
    v1[219] = v2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v4.n128_f64[0] = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v1 + 7152))(v4);
  }
}

uint64_t (*sub_1A4737BF4(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 7144))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore21TimelineVFXEngineSpec___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A4753E4C(&qword_1EB1258C8, type metadata accessor for TimelineVFXEngineSpec, &unk_1A535D290);
  sub_1A52415F4();

  v4[7] = sub_1A473797C(v4);
  return sub_1A4737D48;
}

uint64_t sub_1A4737DA4()
{
  swift_getKeyPath();
  (*(*v0 + 7144))();

  swift_beginAccess();
  return v0[220];
}

uint64_t sub_1A4737E24@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 2368))();
  *a2 = result & 1;
  return result;
}

void sub_1A4737ECC(char a1)
{
  v2 = a1 & 1;
  swift_beginAccess();
  if (v1[220] == v2)
  {
    v1[220] = v2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v4.n128_f64[0] = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v1 + 7152))(v4);
  }
}

uint64_t (*sub_1A4737FCC(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 7144))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore21TimelineVFXEngineSpec___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A4753E4C(&qword_1EB1258C8, type metadata accessor for TimelineVFXEngineSpec, &unk_1A535D290);
  sub_1A52415F4();

  v4[7] = sub_1A4737D54(v4);
  return sub_1A4738120;
}

uint64_t sub_1A473817C()
{
  swift_getKeyPath();
  (*(*v0 + 7144))();

  swift_beginAccess();
  return v0[221];
}

uint64_t sub_1A47381FC@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 2416))();
  *a2 = result & 1;
  return result;
}

void sub_1A47382A4(char a1)
{
  v2 = a1 & 1;
  swift_beginAccess();
  if (v1[221] == v2)
  {
    v1[221] = v2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v4.n128_f64[0] = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v1 + 7152))(v4);
  }
}

uint64_t (*sub_1A47383A4(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 7144))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore21TimelineVFXEngineSpec___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A4753E4C(&qword_1EB1258C8, type metadata accessor for TimelineVFXEngineSpec, &unk_1A535D290);
  sub_1A52415F4();

  v4[7] = sub_1A473812C(v4);
  return sub_1A47384F8;
}

uint64_t sub_1A4738554()
{
  swift_getKeyPath();
  (*(*v0 + 7144))();

  swift_beginAccess();
  return v0[222];
}

uint64_t sub_1A47385D4@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 2464))();
  *a2 = result & 1;
  return result;
}

void sub_1A473867C(char a1)
{
  v2 = a1 & 1;
  swift_beginAccess();
  if (v1[222] == v2)
  {
    v1[222] = v2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v4.n128_f64[0] = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v1 + 7152))(v4);
  }
}

uint64_t (*sub_1A473877C(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 7144))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore21TimelineVFXEngineSpec___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A4753E4C(&qword_1EB1258C8, type metadata accessor for TimelineVFXEngineSpec, &unk_1A535D290);
  sub_1A52415F4();

  v4[7] = sub_1A4738504(v4);
  return sub_1A47388D0;
}

double sub_1A47388DC()
{
  swift_getKeyPath();
  (*(*v0 + 7144))();

  swift_beginAccess();
  return v0[28];
}

void sub_1A4738A00(double a1)
{
  swift_beginAccess();
  if (v1[28] == a1)
  {
    v1[28] = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v4.n128_f64[0] = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v1 + 7152))(v4);
  }
}

uint64_t (*sub_1A4738B08(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 7144))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore21TimelineVFXEngineSpec___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A4753E4C(&qword_1EB1258C8, type metadata accessor for TimelineVFXEngineSpec, &unk_1A535D290);
  sub_1A52415F4();

  v4[7] = sub_1A3E0E85C(v4);
  return sub_1A4738C5C;
}

id sub_1A4738C68()
{
  swift_getKeyPath();
  (*(*v0 + 7144))();

  swift_beginAccess();
  v1 = v0[29];

  return v1;
}

uint64_t sub_1A4738CF8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 2560))();
  *a2 = result;
  return result;
}

void sub_1A4738DA8(void *a1)
{
  v2 = v1;
  swift_beginAccess();
  v4 = v1[29];
  sub_1A4751BB8();
  v5 = v4;
  v6 = sub_1A524DBF4();

  if (v6)
  {
    v7 = v2[29];
    v2[29] = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v9.n128_f64[0] = MEMORY[0x1EEE9AC00](KeyPath);
    v10 = v2;
    v11 = a1;
    (*(*v2 + 7152))(v9);
  }
}

uint64_t (*sub_1A4738EE0(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 7144))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore21TimelineVFXEngineSpec___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A4753E4C(&qword_1EB1258C8, type metadata accessor for TimelineVFXEngineSpec, &unk_1A535D290);
  sub_1A52415F4();

  v4[7] = sub_1A3E0EFFC(v4);
  return sub_1A4739034;
}

double sub_1A4739090()
{
  swift_getKeyPath();
  (*(*v0 + 7144))();

  swift_beginAccess();
  return v0[30];
}

void sub_1A47391B4(double a1)
{
  swift_beginAccess();
  if (v1[30] == a1)
  {
    v1[30] = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v4.n128_f64[0] = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v1 + 7152))(v4);
  }
}

uint64_t (*sub_1A47392BC(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 7144))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore21TimelineVFXEngineSpec___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A4753E4C(&qword_1EB1258C8, type metadata accessor for TimelineVFXEngineSpec, &unk_1A535D290);
  sub_1A52415F4();

  v4[7] = sub_1A4739040(v4);
  return sub_1A4739410;
}

id sub_1A473946C()
{
  swift_getKeyPath();
  (*(*v0 + 7144))();

  swift_beginAccess();
  v1 = v0[31];

  return v1;
}

uint64_t sub_1A47394FC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 2656))();
  *a2 = result;
  return result;
}

void sub_1A47395AC(void *a1)
{
  v2 = v1;
  swift_beginAccess();
  v4 = v1[31];
  sub_1A4751BB8();
  v5 = v4;
  v6 = sub_1A524DBF4();

  if (v6)
  {
    v7 = v2[31];
    v2[31] = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v9.n128_f64[0] = MEMORY[0x1EEE9AC00](KeyPath);
    v10 = v2;
    v11 = a1;
    (*(*v2 + 7152))(v9);
  }
}

uint64_t (*sub_1A47396E4(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 7144))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore21TimelineVFXEngineSpec___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A4753E4C(&qword_1EB1258C8, type metadata accessor for TimelineVFXEngineSpec, &unk_1A535D290);
  sub_1A52415F4();

  v4[7] = sub_1A473941C(v4);
  return sub_1A4739838;
}

id sub_1A4739844()
{
  swift_getKeyPath();
  (*(*v0 + 7144))();

  swift_beginAccess();
  v1 = v0[32];

  return v1;
}

uint64_t sub_1A47398D4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 2704))();
  *a2 = result;
  return result;
}

void sub_1A4739984(void *a1)
{
  v2 = v1;
  swift_beginAccess();
  v4 = v1[32];
  sub_1A4751BB8();
  v5 = v4;
  v6 = sub_1A524DBF4();

  if (v6)
  {
    v7 = v2[32];
    v2[32] = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v9.n128_f64[0] = MEMORY[0x1EEE9AC00](KeyPath);
    v10 = v2;
    v11 = a1;
    (*(*v2 + 7152))(v9);
  }
}

uint64_t (*sub_1A4739ABC(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 7144))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore21TimelineVFXEngineSpec___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A4753E4C(&qword_1EB1258C8, type metadata accessor for TimelineVFXEngineSpec, &unk_1A535D290);
  sub_1A52415F4();

  v4[7] = sub_1A3E0F99C(v4);
  return sub_1A4739C10;
}

float sub_1A4739C6C()
{
  swift_getKeyPath();
  (*(*v0 + 7144))();

  swift_beginAccess();
  return v0[66];
}

void sub_1A4739D90(float a1)
{
  swift_beginAccess();
  if (v1[66] == a1)
  {
    v1[66] = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v4.n128_f64[0] = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v1 + 7152))(v4);
  }
}

uint64_t (*sub_1A4739E9C(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 7144))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore21TimelineVFXEngineSpec___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A4753E4C(&qword_1EB1258C8, type metadata accessor for TimelineVFXEngineSpec, &unk_1A535D290);
  sub_1A52415F4();

  v4[7] = sub_1A4739C1C(v4);
  return sub_1A4739FF0;
}

float sub_1A473A04C()
{
  swift_getKeyPath();
  (*(*v0 + 7144))();

  swift_beginAccess();
  return v0[67];
}

void sub_1A473A170(float a1)
{
  swift_beginAccess();
  if (v1[67] == a1)
  {
    v1[67] = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v4.n128_f64[0] = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v1 + 7152))(v4);
  }
}

uint64_t (*sub_1A473A27C(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 7144))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore21TimelineVFXEngineSpec___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A4753E4C(&qword_1EB1258C8, type metadata accessor for TimelineVFXEngineSpec, &unk_1A535D290);
  sub_1A52415F4();

  v4[7] = sub_1A4739FFC(v4);
  return sub_1A473A3D0;
}

float sub_1A473A42C()
{
  swift_getKeyPath();
  (*(*v0 + 7144))();

  swift_beginAccess();
  return v0[68];
}

void sub_1A473A550(float a1)
{
  swift_beginAccess();
  if (v1[68] == a1)
  {
    v1[68] = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v4.n128_f64[0] = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v1 + 7152))(v4);
  }
}

uint64_t (*sub_1A473A65C(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 7144))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore21TimelineVFXEngineSpec___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A4753E4C(&qword_1EB1258C8, type metadata accessor for TimelineVFXEngineSpec, &unk_1A535D290);
  sub_1A52415F4();

  v4[7] = sub_1A473A3DC(v4);
  return sub_1A473A7B0;
}

float sub_1A473A80C()
{
  swift_getKeyPath();
  (*(*v0 + 7144))();

  swift_beginAccess();
  return v0[69];
}

void sub_1A473A930(float a1)
{
  swift_beginAccess();
  if (v1[69] == a1)
  {
    v1[69] = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v4.n128_f64[0] = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v1 + 7152))(v4);
  }
}

uint64_t (*sub_1A473AA3C(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 7144))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore21TimelineVFXEngineSpec___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A4753E4C(&qword_1EB1258C8, type metadata accessor for TimelineVFXEngineSpec, &unk_1A535D290);
  sub_1A52415F4();

  v4[7] = sub_1A473A7BC(v4);
  return sub_1A473AB90;
}

float sub_1A473ABEC()
{
  swift_getKeyPath();
  (*(*v0 + 7144))();

  swift_beginAccess();
  return v0[70];
}

void sub_1A473AD10(float a1)
{
  swift_beginAccess();
  if (v1[70] == a1)
  {
    v1[70] = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v4.n128_f64[0] = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v1 + 7152))(v4);
  }
}

uint64_t (*sub_1A473AE1C(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 7144))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore21TimelineVFXEngineSpec___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A4753E4C(&qword_1EB1258C8, type metadata accessor for TimelineVFXEngineSpec, &unk_1A535D290);
  sub_1A52415F4();

  v4[7] = sub_1A473AB9C(v4);
  return sub_1A473AF70;
}

float sub_1A473AFCC()
{
  swift_getKeyPath();
  (*(*v0 + 7144))();

  swift_beginAccess();
  return v0[71];
}

void sub_1A473B0F0(float a1)
{
  swift_beginAccess();
  if (v1[71] == a1)
  {
    v1[71] = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v4.n128_f64[0] = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v1 + 7152))(v4);
  }
}

uint64_t (*sub_1A473B1FC(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 7144))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore21TimelineVFXEngineSpec___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A4753E4C(&qword_1EB1258C8, type metadata accessor for TimelineVFXEngineSpec, &unk_1A535D290);
  sub_1A52415F4();

  v4[7] = sub_1A473AF7C(v4);
  return sub_1A473B350;
}

float sub_1A473B3AC()
{
  swift_getKeyPath();
  (*(*v0 + 7144))();

  swift_beginAccess();
  return v0[72];
}

void sub_1A473B4D0(float a1)
{
  swift_beginAccess();
  if (v1[72] == a1)
  {
    v1[72] = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v4.n128_f64[0] = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v1 + 7152))(v4);
  }
}

uint64_t (*sub_1A473B5DC(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 7144))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore21TimelineVFXEngineSpec___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A4753E4C(&qword_1EB1258C8, type metadata accessor for TimelineVFXEngineSpec, &unk_1A535D290);
  sub_1A52415F4();

  v4[7] = sub_1A473B35C(v4);
  return sub_1A473B730;
}

float sub_1A473B78C()
{
  swift_getKeyPath();
  (*(*v0 + 7144))();

  swift_beginAccess();
  return v0[73];
}

void sub_1A473B8B0(float a1)
{
  swift_beginAccess();
  if (v1[73] == a1)
  {
    v1[73] = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v4.n128_f64[0] = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v1 + 7152))(v4);
  }
}

uint64_t (*sub_1A473B9BC(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 7144))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore21TimelineVFXEngineSpec___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A4753E4C(&qword_1EB1258C8, type metadata accessor for TimelineVFXEngineSpec, &unk_1A535D290);
  sub_1A52415F4();

  v4[7] = sub_1A473B73C(v4);
  return sub_1A473BB10;
}

float sub_1A473BB6C()
{
  swift_getKeyPath();
  (*(*v0 + 7144))();

  swift_beginAccess();
  return v0[74];
}

void sub_1A473BC90(float a1)
{
  swift_beginAccess();
  if (v1[74] == a1)
  {
    v1[74] = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v4.n128_f64[0] = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v1 + 7152))(v4);
  }
}

uint64_t (*sub_1A473BD9C(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 7144))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore21TimelineVFXEngineSpec___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A4753E4C(&qword_1EB1258C8, type metadata accessor for TimelineVFXEngineSpec, &unk_1A535D290);
  sub_1A52415F4();

  v4[7] = sub_1A473BB1C(v4);
  return sub_1A473BEF0;
}

uint64_t sub_1A473BF4C()
{
  swift_getKeyPath();
  (*(*v0 + 7144))();

  swift_beginAccess();
  return v0[300];
}

uint64_t sub_1A473BFCC@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 3184))();
  *a2 = result & 1;
  return result;
}

void sub_1A473C074(char a1)
{
  v2 = a1 & 1;
  swift_beginAccess();
  if (v1[300] == v2)
  {
    v1[300] = v2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v4.n128_f64[0] = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v1 + 7152))(v4);
  }
}

uint64_t (*sub_1A473C174(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 7144))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore21TimelineVFXEngineSpec___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A4753E4C(&qword_1EB1258C8, type metadata accessor for TimelineVFXEngineSpec, &unk_1A535D290);
  sub_1A52415F4();

  v4[7] = sub_1A473BEFC(v4);
  return sub_1A473C2C8;
}

uint64_t sub_1A473C324()
{
  swift_getKeyPath();
  (*(*v0 + 7144))();

  swift_beginAccess();
  return v0[301];
}

uint64_t sub_1A473C3A4@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 3232))();
  *a2 = result & 1;
  return result;
}

void sub_1A473C44C(char a1)
{
  v2 = a1 & 1;
  swift_beginAccess();
  if (v1[301] == v2)
  {
    v1[301] = v2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v4.n128_f64[0] = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v1 + 7152))(v4);
  }
}

uint64_t (*sub_1A473C54C(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 7144))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore21TimelineVFXEngineSpec___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A4753E4C(&qword_1EB1258C8, type metadata accessor for TimelineVFXEngineSpec, &unk_1A535D290);
  sub_1A52415F4();

  v4[7] = sub_1A473C2D4(v4);
  return sub_1A473C6A0;
}

uint64_t sub_1A473C6FC()
{
  swift_getKeyPath();
  (*(*v0 + 7144))();

  swift_beginAccess();
  return v0[302];
}

uint64_t sub_1A473C77C@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 3280))();
  *a2 = result & 1;
  return result;
}

void sub_1A473C824(char a1)
{
  v2 = a1 & 1;
  swift_beginAccess();
  if (v1[302] == v2)
  {
    v1[302] = v2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v4.n128_f64[0] = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v1 + 7152))(v4);
  }
}

uint64_t (*sub_1A473C924(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 7144))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore21TimelineVFXEngineSpec___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A4753E4C(&qword_1EB1258C8, type metadata accessor for TimelineVFXEngineSpec, &unk_1A535D290);
  sub_1A52415F4();

  v4[7] = sub_1A473C6AC(v4);
  return sub_1A473CA78;
}

uint64_t sub_1A473CAD4()
{
  swift_getKeyPath();
  (*(*v0 + 7144))();

  swift_beginAccess();
  return v0[303];
}

uint64_t sub_1A473CB54@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 3328))();
  *a2 = result & 1;
  return result;
}

void sub_1A473CBFC(char a1)
{
  v2 = a1 & 1;
  swift_beginAccess();
  if (v1[303] == v2)
  {
    v1[303] = v2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v4.n128_f64[0] = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v1 + 7152))(v4);
  }
}

uint64_t (*sub_1A473CCFC(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 7144))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore21TimelineVFXEngineSpec___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A4753E4C(&qword_1EB1258C8, type metadata accessor for TimelineVFXEngineSpec, &unk_1A535D290);
  sub_1A52415F4();

  v4[7] = sub_1A473CA84(v4);
  return sub_1A473CE50;
}

uint64_t sub_1A473CEAC()
{
  swift_getKeyPath();
  (*(*v0 + 7144))();

  swift_beginAccess();
  return v0[304];
}

uint64_t sub_1A473CF2C@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 3376))();
  *a2 = result & 1;
  return result;
}

void sub_1A473CFD4(char a1)
{
  v2 = a1 & 1;
  swift_beginAccess();
  if (v1[304] == v2)
  {
    v1[304] = v2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v4.n128_f64[0] = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v1 + 7152))(v4);
  }
}

uint64_t (*sub_1A473D0D4(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 7144))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore21TimelineVFXEngineSpec___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A4753E4C(&qword_1EB1258C8, type metadata accessor for TimelineVFXEngineSpec, &unk_1A535D290);
  sub_1A52415F4();

  v4[7] = sub_1A473CE5C(v4);
  return sub_1A473D228;
}

double sub_1A473D284()
{
  swift_getKeyPath();
  (*(*v0 + 7144))();

  swift_beginAccess();
  return v0[39];
}

void sub_1A473D3A8(double a1)
{
  swift_beginAccess();
  if (v1[39] == a1)
  {
    v1[39] = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v4.n128_f64[0] = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v1 + 7152))(v4);
  }
}

uint64_t (*sub_1A473D4B0(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 7144))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore21TimelineVFXEngineSpec___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A4753E4C(&qword_1EB1258C8, type metadata accessor for TimelineVFXEngineSpec, &unk_1A535D290);
  sub_1A52415F4();

  v4[7] = sub_1A473D234(v4);
  return sub_1A473D604;
}

double sub_1A473D660()
{
  swift_getKeyPath();
  (*(*v0 + 7144))();

  swift_beginAccess();
  return v0[40];
}

void sub_1A473D784(double a1)
{
  swift_beginAccess();
  if (v1[40] == a1)
  {
    v1[40] = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v4.n128_f64[0] = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v1 + 7152))(v4);
  }
}

uint64_t (*sub_1A473D88C(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 7144))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore21TimelineVFXEngineSpec___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A4753E4C(&qword_1EB1258C8, type metadata accessor for TimelineVFXEngineSpec, &unk_1A535D290);
  sub_1A52415F4();

  v4[7] = sub_1A473D610(v4);
  return sub_1A473D9E0;
}

float sub_1A473DA3C()
{
  swift_getKeyPath();
  (*(*v0 + 7144))();

  swift_beginAccess();
  return v0[82];
}

void sub_1A473DB60(float a1)
{
  swift_beginAccess();
  if (v1[82] == a1)
  {
    v1[82] = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v4.n128_f64[0] = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v1 + 7152))(v4);
  }
}

uint64_t (*sub_1A473DC6C(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 7144))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore21TimelineVFXEngineSpec___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A4753E4C(&qword_1EB1258C8, type metadata accessor for TimelineVFXEngineSpec, &unk_1A535D290);
  sub_1A52415F4();

  v4[7] = sub_1A473D9EC(v4);
  return sub_1A473DDC0;
}

float sub_1A473DE1C()
{
  swift_getKeyPath();
  (*(*v0 + 7144))();

  swift_beginAccess();
  return v0[83];
}

void sub_1A473DF40(float a1)
{
  swift_beginAccess();
  if (v1[83] == a1)
  {
    v1[83] = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v4.n128_f64[0] = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v1 + 7152))(v4);
  }
}

uint64_t (*sub_1A473E04C(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 7144))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore21TimelineVFXEngineSpec___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A4753E4C(&qword_1EB1258C8, type metadata accessor for TimelineVFXEngineSpec, &unk_1A535D290);
  sub_1A52415F4();

  v4[7] = sub_1A473DDCC(v4);
  return sub_1A473E1A0;
}

float sub_1A473E1FC()
{
  swift_getKeyPath();
  (*(*v0 + 7144))();

  swift_beginAccess();
  return v0[84];
}

void sub_1A473E320(float a1)
{
  swift_beginAccess();
  if (v1[84] == a1)
  {
    v1[84] = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v4.n128_f64[0] = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v1 + 7152))(v4);
  }
}

uint64_t (*sub_1A473E42C(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 7144))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore21TimelineVFXEngineSpec___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A4753E4C(&qword_1EB1258C8, type metadata accessor for TimelineVFXEngineSpec, &unk_1A535D290);
  sub_1A52415F4();

  v4[7] = sub_1A473E1AC(v4);
  return sub_1A473E580;
}

double sub_1A473E5DC()
{
  swift_getKeyPath();
  (*(*v0 + 7144))();

  swift_beginAccess();
  return v0[43];
}

void sub_1A473E700(double a1)
{
  swift_beginAccess();
  if (v1[43] == a1)
  {
    v1[43] = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v4.n128_f64[0] = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v1 + 7152))(v4);
  }
}

uint64_t (*sub_1A473E808(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 7144))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore21TimelineVFXEngineSpec___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A4753E4C(&qword_1EB1258C8, type metadata accessor for TimelineVFXEngineSpec, &unk_1A535D290);
  sub_1A52415F4();

  v4[7] = sub_1A473E58C(v4);
  return sub_1A473E95C;
}

uint64_t sub_1A473E9B8()
{
  swift_getKeyPath();
  (*(*v0 + 7144))();

  swift_beginAccess();
  return v0[352];
}

uint64_t sub_1A473EA38@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 3712))();
  *a2 = result & 1;
  return result;
}

void sub_1A473EAE0(char a1)
{
  v2 = a1 & 1;
  swift_beginAccess();
  if (v1[352] == v2)
  {
    v1[352] = v2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v4.n128_f64[0] = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v1 + 7152))(v4);
  }
}

uint64_t (*sub_1A473EBE0(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 7144))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore21TimelineVFXEngineSpec___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A4753E4C(&qword_1EB1258C8, type metadata accessor for TimelineVFXEngineSpec, &unk_1A535D290);
  sub_1A52415F4();

  v4[7] = sub_1A473E968(v4);
  return sub_1A473ED34;
}

double sub_1A473ED90()
{
  swift_getKeyPath();
  (*(*v0 + 7144))();

  swift_beginAccess();
  return v0[45];
}

void sub_1A473EEB4(double a1)
{
  swift_beginAccess();
  if (v1[45] == a1)
  {
    v1[45] = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v4.n128_f64[0] = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v1 + 7152))(v4);
  }
}

uint64_t (*sub_1A473EFBC(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 7144))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore21TimelineVFXEngineSpec___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A4753E4C(&qword_1EB1258C8, type metadata accessor for TimelineVFXEngineSpec, &unk_1A535D290);
  sub_1A52415F4();

  v4[7] = sub_1A473ED40(v4);
  return sub_1A473F110;
}

double sub_1A473F16C()
{
  swift_getKeyPath();
  (*(*v0 + 7144))();

  swift_beginAccess();
  return v0[46];
}

void sub_1A473F290(double a1)
{
  swift_beginAccess();
  if (v1[46] == a1)
  {
    v1[46] = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v4.n128_f64[0] = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v1 + 7152))(v4);
  }
}

uint64_t (*sub_1A473F398(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 7144))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore21TimelineVFXEngineSpec___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A4753E4C(&qword_1EB1258C8, type metadata accessor for TimelineVFXEngineSpec, &unk_1A535D290);
  sub_1A52415F4();

  v4[7] = sub_1A473F11C(v4);
  return sub_1A473F4EC;
}

double sub_1A473F548()
{
  swift_getKeyPath();
  (*(*v0 + 7144))();

  swift_beginAccess();
  return v0[47];
}

void sub_1A473F66C(double a1)
{
  swift_beginAccess();
  if (v1[47] == a1)
  {
    v1[47] = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v4.n128_f64[0] = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v1 + 7152))(v4);
  }
}

uint64_t (*sub_1A473F774(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 7144))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore21TimelineVFXEngineSpec___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A4753E4C(&qword_1EB1258C8, type metadata accessor for TimelineVFXEngineSpec, &unk_1A535D290);
  sub_1A52415F4();

  v4[7] = sub_1A473F4F8(v4);
  return sub_1A473F8C8;
}

double sub_1A473F8D4()
{
  swift_getKeyPath();
  (*(*v0 + 7144))();

  swift_beginAccess();
  return v0[48];
}

void sub_1A473F9F8(double a1)
{
  swift_beginAccess();
  if (v1[48] == a1)
  {
    v1[48] = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v4.n128_f64[0] = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v1 + 7152))(v4);
  }
}

uint64_t (*sub_1A473FB00(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 7144))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore21TimelineVFXEngineSpec___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A4753E4C(&qword_1EB1258C8, type metadata accessor for TimelineVFXEngineSpec, &unk_1A535D290);
  sub_1A52415F4();

  v4[7] = sub_1A405F470(v4);
  return sub_1A473FC54;
}

double sub_1A473FCB0()
{
  swift_getKeyPath();
  (*(*v0 + 7144))();

  swift_beginAccess();
  return v0[49];
}

void sub_1A473FDD4(double a1)
{
  swift_beginAccess();
  if (v1[49] == a1)
  {
    v1[49] = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v4.n128_f64[0] = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v1 + 7152))(v4);
  }
}

uint64_t (*sub_1A473FEDC(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 7144))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore21TimelineVFXEngineSpec___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A4753E4C(&qword_1EB1258C8, type metadata accessor for TimelineVFXEngineSpec, &unk_1A535D290);
  sub_1A52415F4();

  v4[7] = sub_1A473FC60(v4);
  return sub_1A4740030;
}

id sub_1A474008C()
{
  swift_getKeyPath();
  (*(*v0 + 7144))();

  swift_beginAccess();
  v1 = v0[50];

  return v1;
}

uint64_t sub_1A474011C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 4000))();
  *a2 = result;
  return result;
}

void sub_1A47401CC(void *a1)
{
  v2 = v1;
  swift_beginAccess();
  v4 = v1[50];
  sub_1A4751BB8();
  v5 = v4;
  v6 = sub_1A524DBF4();

  if (v6)
  {
    v7 = v2[50];
    v2[50] = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v9.n128_f64[0] = MEMORY[0x1EEE9AC00](KeyPath);
    v10 = v2;
    v11 = a1;
    (*(*v2 + 7152))(v9);
  }
}

uint64_t (*sub_1A4740304(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 7144))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore21TimelineVFXEngineSpec___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A4753E4C(&qword_1EB1258C8, type metadata accessor for TimelineVFXEngineSpec, &unk_1A535D290);
  sub_1A52415F4();

  v4[7] = sub_1A474003C(v4);
  return sub_1A4740458;
}

double sub_1A47404B4()
{
  swift_getKeyPath();
  (*(*v0 + 7144))();

  swift_beginAccess();
  return v0[51];
}

void sub_1A47405D8(double a1)
{
  swift_beginAccess();
  if (v1[51] == a1)
  {
    v1[51] = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v4.n128_f64[0] = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v1 + 7152))(v4);
  }
}

uint64_t (*sub_1A47406E0(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 7144))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore21TimelineVFXEngineSpec___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A4753E4C(&qword_1EB1258C8, type metadata accessor for TimelineVFXEngineSpec, &unk_1A535D290);
  sub_1A52415F4();

  v4[7] = sub_1A4740464(v4);
  return sub_1A4740834;
}

double sub_1A4740890()
{
  swift_getKeyPath();
  (*(*v0 + 7144))();

  swift_beginAccess();
  return v0[52];
}

void sub_1A47409B4(double a1)
{
  swift_beginAccess();
  if (v1[52] == a1)
  {
    v1[52] = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v4.n128_f64[0] = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v1 + 7152))(v4);
  }
}

uint64_t (*sub_1A4740ABC(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 7144))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore21TimelineVFXEngineSpec___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A4753E4C(&qword_1EB1258C8, type metadata accessor for TimelineVFXEngineSpec, &unk_1A535D290);
  sub_1A52415F4();

  v4[7] = sub_1A4740840(v4);
  return sub_1A4740C10;
}

double sub_1A4740C6C()
{
  swift_getKeyPath();
  (*(*v0 + 7144))();

  swift_beginAccess();
  return v0[53];
}

void sub_1A4740D90(double a1)
{
  swift_beginAccess();
  if (v1[53] == a1)
  {
    v1[53] = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v4.n128_f64[0] = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v1 + 7152))(v4);
  }
}

uint64_t (*sub_1A4740E98(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 7144))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore21TimelineVFXEngineSpec___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A4753E4C(&qword_1EB1258C8, type metadata accessor for TimelineVFXEngineSpec, &unk_1A535D290);
  sub_1A52415F4();

  v4[7] = sub_1A4740C1C(v4);
  return sub_1A4740FEC;
}

id sub_1A4741048()
{
  swift_getKeyPath();
  (*(*v0 + 7144))();

  swift_beginAccess();
  v1 = v0[54];

  return v1;
}

uint64_t sub_1A47410D8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 4192))();
  *a2 = result;
  return result;
}

void sub_1A4741188(void *a1)
{
  v2 = v1;
  swift_beginAccess();
  v4 = v1[54];
  sub_1A4751BB8();
  v5 = v4;
  v6 = sub_1A524DBF4();

  if (v6)
  {
    v7 = v2[54];
    v2[54] = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v9.n128_f64[0] = MEMORY[0x1EEE9AC00](KeyPath);
    v10 = v2;
    v11 = a1;
    (*(*v2 + 7152))(v9);
  }
}

uint64_t (*sub_1A47412C0(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 7144))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore21TimelineVFXEngineSpec___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A4753E4C(&qword_1EB1258C8, type metadata accessor for TimelineVFXEngineSpec, &unk_1A535D290);
  sub_1A52415F4();

  v4[7] = sub_1A4740FF8(v4);
  return sub_1A4741414;
}

float sub_1A4741470()
{
  swift_getKeyPath();
  (*(*v0 + 7144))();

  swift_beginAccess();
  return v0[110];
}

void sub_1A4741594(float a1)
{
  swift_beginAccess();
  if (v1[110] == a1)
  {
    v1[110] = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v4.n128_f64[0] = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v1 + 7152))(v4);
  }
}

uint64_t (*sub_1A47416A0(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 7144))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore21TimelineVFXEngineSpec___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A4753E4C(&qword_1EB1258C8, type metadata accessor for TimelineVFXEngineSpec, &unk_1A535D290);
  sub_1A52415F4();

  v4[7] = sub_1A4741420(v4);
  return sub_1A47417F4;
}

float sub_1A4741850()
{
  swift_getKeyPath();
  (*(*v0 + 7144))();

  swift_beginAccess();
  return v0[111];
}

void sub_1A4741974(float a1)
{
  swift_beginAccess();
  if (v1[111] == a1)
  {
    v1[111] = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v4.n128_f64[0] = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v1 + 7152))(v4);
  }
}

uint64_t (*sub_1A4741A80(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 7144))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore21TimelineVFXEngineSpec___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A4753E4C(&qword_1EB1258C8, type metadata accessor for TimelineVFXEngineSpec, &unk_1A535D290);
  sub_1A52415F4();

  v4[7] = sub_1A4741800(v4);
  return sub_1A4741BD4;
}

float sub_1A4741C30()
{
  swift_getKeyPath();
  (*(*v0 + 7144))();

  swift_beginAccess();
  return v0[112];
}

void sub_1A4741D54(float a1)
{
  swift_beginAccess();
  if (v1[112] == a1)
  {
    v1[112] = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v4.n128_f64[0] = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v1 + 7152))(v4);
  }
}

uint64_t (*sub_1A4741E60(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 7144))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore21TimelineVFXEngineSpec___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A4753E4C(&qword_1EB1258C8, type metadata accessor for TimelineVFXEngineSpec, &unk_1A535D290);
  sub_1A52415F4();

  v4[7] = sub_1A4741BE0(v4);
  return sub_1A4741FB4;
}

float sub_1A4742010()
{
  swift_getKeyPath();
  (*(*v0 + 7144))();

  swift_beginAccess();
  return v0[113];
}

void sub_1A4742134(float a1)
{
  swift_beginAccess();
  if (v1[113] == a1)
  {
    v1[113] = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v4.n128_f64[0] = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v1 + 7152))(v4);
  }
}

uint64_t (*sub_1A4742240(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 7144))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore21TimelineVFXEngineSpec___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A4753E4C(&qword_1EB1258C8, type metadata accessor for TimelineVFXEngineSpec, &unk_1A535D290);
  sub_1A52415F4();

  v4[7] = sub_1A4741FC0(v4);
  return sub_1A4742394;
}

float sub_1A47423F0()
{
  swift_getKeyPath();
  (*(*v0 + 7144))();

  swift_beginAccess();
  return v0[114];
}

void sub_1A4742514(float a1)
{
  swift_beginAccess();
  if (v1[114] == a1)
  {
    v1[114] = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v4.n128_f64[0] = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v1 + 7152))(v4);
  }
}

uint64_t (*sub_1A4742620(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 7144))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore21TimelineVFXEngineSpec___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A4753E4C(&qword_1EB1258C8, type metadata accessor for TimelineVFXEngineSpec, &unk_1A535D290);
  sub_1A52415F4();

  v4[7] = sub_1A47423A0(v4);
  return sub_1A4742774;
}

float sub_1A47427D0()
{
  swift_getKeyPath();
  (*(*v0 + 7144))();

  swift_beginAccess();
  return v0[115];
}

void sub_1A47428F4(float a1)
{
  swift_beginAccess();
  if (v1[115] == a1)
  {
    v1[115] = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v4.n128_f64[0] = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v1 + 7152))(v4);
  }
}

uint64_t (*sub_1A4742A00(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 7144))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore21TimelineVFXEngineSpec___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A4753E4C(&qword_1EB1258C8, type metadata accessor for TimelineVFXEngineSpec, &unk_1A535D290);
  sub_1A52415F4();

  v4[7] = sub_1A4742780(v4);
  return sub_1A4742B54;
}

double sub_1A4742BB0()
{
  swift_getKeyPath();
  (*(*v0 + 7144))();

  swift_beginAccess();
  return v0[58];
}

void sub_1A4742CD4(double a1)
{
  swift_beginAccess();
  if (v1[58] == a1)
  {
    v1[58] = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v4.n128_f64[0] = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v1 + 7152))(v4);
  }
}

uint64_t (*sub_1A4742DDC(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 7144))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore21TimelineVFXEngineSpec___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A4753E4C(&qword_1EB1258C8, type metadata accessor for TimelineVFXEngineSpec, &unk_1A535D290);
  sub_1A52415F4();

  v4[7] = sub_1A4742B60(v4);
  return sub_1A4742F30;
}

double sub_1A4742F8C()
{
  swift_getKeyPath();
  (*(*v0 + 7144))();

  swift_beginAccess();
  return v0[59];
}

void sub_1A47430B0(double a1)
{
  swift_beginAccess();
  if (v1[59] == a1)
  {
    v1[59] = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v4.n128_f64[0] = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v1 + 7152))(v4);
  }
}

uint64_t (*sub_1A47431B8(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 7144))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore21TimelineVFXEngineSpec___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A4753E4C(&qword_1EB1258C8, type metadata accessor for TimelineVFXEngineSpec, &unk_1A535D290);
  sub_1A52415F4();

  v4[7] = sub_1A4742F3C(v4);
  return sub_1A474330C;
}

double sub_1A4743368()
{
  swift_getKeyPath();
  (*(*v0 + 7144))();

  swift_beginAccess();
  return v0[60];
}

void sub_1A474348C(double a1)
{
  swift_beginAccess();
  if (v1[60] == a1)
  {
    v1[60] = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v4.n128_f64[0] = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v1 + 7152))(v4);
  }
}

uint64_t (*sub_1A4743594(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 7144))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore21TimelineVFXEngineSpec___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A4753E4C(&qword_1EB1258C8, type metadata accessor for TimelineVFXEngineSpec, &unk_1A535D290);
  sub_1A52415F4();

  v4[7] = sub_1A4743318(v4);
  return sub_1A47436E8;
}

double sub_1A4743744()
{
  swift_getKeyPath();
  (*(*v0 + 7144))();

  swift_beginAccess();
  return v0[61];
}

void sub_1A4743868(double a1)
{
  swift_beginAccess();
  if (v1[61] == a1)
  {
    v1[61] = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v4.n128_f64[0] = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v1 + 7152))(v4);
  }
}

uint64_t (*sub_1A4743970(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 7144))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore21TimelineVFXEngineSpec___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A4753E4C(&qword_1EB1258C8, type metadata accessor for TimelineVFXEngineSpec, &unk_1A535D290);
  sub_1A52415F4();

  v4[7] = sub_1A47436F4(v4);
  return sub_1A4743AC4;
}

double sub_1A4743B20()
{
  swift_getKeyPath();
  (*(*v0 + 7144))();

  swift_beginAccess();
  return v0[62];
}

void sub_1A4743C44(double a1)
{
  swift_beginAccess();
  if (v1[62] == a1)
  {
    v1[62] = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v4.n128_f64[0] = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v1 + 7152))(v4);
  }
}

uint64_t (*sub_1A4743D4C(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 7144))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore21TimelineVFXEngineSpec___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A4753E4C(&qword_1EB1258C8, type metadata accessor for TimelineVFXEngineSpec, &unk_1A535D290);
  sub_1A52415F4();

  v4[7] = sub_1A4743AD0(v4);
  return sub_1A4743EA0;
}

float sub_1A4743EFC()
{
  swift_getKeyPath();
  (*(*v0 + 7144))();

  swift_beginAccess();
  return v0[126];
}

void sub_1A4744020(float a1)
{
  swift_beginAccess();
  if (v1[126] == a1)
  {
    v1[126] = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v4.n128_f64[0] = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v1 + 7152))(v4);
  }
}

uint64_t (*sub_1A474412C(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 7144))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore21TimelineVFXEngineSpec___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A4753E4C(&qword_1EB1258C8, type metadata accessor for TimelineVFXEngineSpec, &unk_1A535D290);
  sub_1A52415F4();

  v4[7] = sub_1A4743EAC(v4);
  return sub_1A4744280;
}

id sub_1A47442DC()
{
  swift_getKeyPath();
  (*(*v0 + 7144))();

  swift_beginAccess();
  v1 = v0[64];

  return v1;
}

uint64_t sub_1A474436C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 4816))();
  *a2 = result;
  return result;
}

void sub_1A474441C(void *a1)
{
  v2 = v1;
  v4 = (v1 + 512);
  swift_beginAccess();
  v5 = *(v1 + 512);
  sub_1A4751BB8();
  v6 = v5;
  v7 = sub_1A524DBF4();

  if (v7)
  {
    v8 = *v4;
    *v4 = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v10.n128_f64[0] = MEMORY[0x1EEE9AC00](KeyPath);
    v11 = v2;
    v12 = a1;
    (*(*v2 + 7152))(v10);
  }
}

uint64_t (*sub_1A4744558(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 7144))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore21TimelineVFXEngineSpec___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A4753E4C(&qword_1EB1258C8, type metadata accessor for TimelineVFXEngineSpec, &unk_1A535D290);
  sub_1A52415F4();

  v4[7] = sub_1A474428C(v4);
  return sub_1A47446AC;
}

id sub_1A4744708()
{
  swift_getKeyPath();
  (*(*v0 + 7144))();

  swift_beginAccess();
  v1 = v0[65];

  return v1;
}

uint64_t sub_1A4744798@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 4864))();
  *a2 = result;
  return result;
}

void sub_1A4744848(void *a1)
{
  v2 = v1;
  v4 = (v1 + 520);
  swift_beginAccess();
  v5 = *(v1 + 520);
  sub_1A4751BB8();
  v6 = v5;
  v7 = sub_1A524DBF4();

  if (v7)
  {
    v8 = *v4;
    *v4 = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v10.n128_f64[0] = MEMORY[0x1EEE9AC00](KeyPath);
    v11 = v2;
    v12 = a1;
    (*(*v2 + 7152))(v10);
  }
}

uint64_t (*sub_1A4744984(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 7144))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore21TimelineVFXEngineSpec___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A4753E4C(&qword_1EB1258C8, type metadata accessor for TimelineVFXEngineSpec, &unk_1A535D290);
  sub_1A52415F4();

  v4[7] = sub_1A47446B8(v4);
  return sub_1A4744AD8;
}

id sub_1A4744B34()
{
  swift_getKeyPath();
  (*(*v0 + 7144))();

  swift_beginAccess();
  v1 = v0[66];

  return v1;
}

uint64_t sub_1A4744BC4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 4912))();
  *a2 = result;
  return result;
}

void sub_1A4744C74(void *a1)
{
  v2 = v1;
  v4 = (v1 + 528);
  swift_beginAccess();
  v5 = *(v1 + 528);
  sub_1A4751BB8();
  v6 = v5;
  v7 = sub_1A524DBF4();

  if (v7)
  {
    v8 = *v4;
    *v4 = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v10.n128_f64[0] = MEMORY[0x1EEE9AC00](KeyPath);
    v11 = v2;
    v12 = a1;
    (*(*v2 + 7152))(v10);
  }
}

uint64_t (*sub_1A4744DB0(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 7144))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore21TimelineVFXEngineSpec___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A4753E4C(&qword_1EB1258C8, type metadata accessor for TimelineVFXEngineSpec, &unk_1A535D290);
  sub_1A52415F4();

  v4[7] = sub_1A4744AE4(v4);
  return sub_1A4744F04;
}

id sub_1A4744F60()
{
  swift_getKeyPath();
  (*(*v0 + 7144))();

  swift_beginAccess();
  v1 = v0[67];

  return v1;
}

uint64_t sub_1A4744FF0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 4960))();
  *a2 = result;
  return result;
}

void sub_1A47450A0(void *a1)
{
  v2 = v1;
  v4 = (v1 + 536);
  swift_beginAccess();
  v5 = *(v1 + 536);
  sub_1A4751BB8();
  v6 = v5;
  v7 = sub_1A524DBF4();

  if (v7)
  {
    v8 = *v4;
    *v4 = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v10.n128_f64[0] = MEMORY[0x1EEE9AC00](KeyPath);
    v11 = v2;
    v12 = a1;
    (*(*v2 + 7152))(v10);
  }
}

uint64_t (*sub_1A47451DC(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 7144))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore21TimelineVFXEngineSpec___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A4753E4C(&qword_1EB1258C8, type metadata accessor for TimelineVFXEngineSpec, &unk_1A535D290);
  sub_1A52415F4();

  v4[7] = sub_1A4744F10(v4);
  return sub_1A4745330;
}

double sub_1A474538C()
{
  swift_getKeyPath();
  (*(*v0 + 7144))();

  swift_beginAccess();
  return v0[68];
}

void sub_1A47454B0(double a1)
{
  swift_beginAccess();
  if (v1[68] == a1)
  {
    v1[68] = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v4.n128_f64[0] = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v1 + 7152))(v4);
  }
}

uint64_t (*sub_1A47455BC(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 7144))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore21TimelineVFXEngineSpec___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A4753E4C(&qword_1EB1258C8, type metadata accessor for TimelineVFXEngineSpec, &unk_1A535D290);
  sub_1A52415F4();

  v4[7] = sub_1A474533C(v4);
  return sub_1A4745710;
}

id sub_1A474576C()
{
  swift_getKeyPath();
  (*(*v0 + 7144))();

  swift_beginAccess();
  v1 = v0[69];

  return v1;
}

uint64_t sub_1A47457FC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 5056))();
  *a2 = result;
  return result;
}

void sub_1A47458AC(void *a1)
{
  v2 = v1;
  v4 = (v1 + 552);
  swift_beginAccess();
  v5 = *(v1 + 552);
  sub_1A4751BB8();
  v6 = v5;
  v7 = sub_1A524DBF4();

  if (v7)
  {
    v8 = *v4;
    *v4 = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v10.n128_f64[0] = MEMORY[0x1EEE9AC00](KeyPath);
    v11 = v2;
    v12 = a1;
    (*(*v2 + 7152))(v10);
  }
}

uint64_t (*sub_1A47459E8(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 7144))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore21TimelineVFXEngineSpec___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A4753E4C(&qword_1EB1258C8, type metadata accessor for TimelineVFXEngineSpec, &unk_1A535D290);
  sub_1A52415F4();

  v4[7] = sub_1A474571C(v4);
  return sub_1A4745B3C;
}

double sub_1A4745B98()
{
  swift_getKeyPath();
  (*(*v0 + 7144))();

  swift_beginAccess();
  return v0[70];
}

void sub_1A4745CBC(double a1)
{
  swift_beginAccess();
  if (v1[70] == a1)
  {
    v1[70] = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v4.n128_f64[0] = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v1 + 7152))(v4);
  }
}

uint64_t (*sub_1A4745DC8(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 7144))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore21TimelineVFXEngineSpec___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A4753E4C(&qword_1EB1258C8, type metadata accessor for TimelineVFXEngineSpec, &unk_1A535D290);
  sub_1A52415F4();

  v4[7] = sub_1A4745B48(v4);
  return sub_1A4745F1C;
}

id sub_1A4745F78()
{
  swift_getKeyPath();
  (*(*v0 + 7144))();

  swift_beginAccess();
  v1 = v0[71];

  return v1;
}

uint64_t sub_1A4746008@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 5152))();
  *a2 = result;
  return result;
}

void sub_1A47460B8(void *a1)
{
  v2 = v1;
  v4 = (v1 + 568);
  swift_beginAccess();
  v5 = *(v1 + 568);
  sub_1A4751BB8();
  v6 = v5;
  v7 = sub_1A524DBF4();

  if (v7)
  {
    v8 = *v4;
    *v4 = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v10.n128_f64[0] = MEMORY[0x1EEE9AC00](KeyPath);
    v11 = v2;
    v12 = a1;
    (*(*v2 + 7152))(v10);
  }
}

uint64_t (*sub_1A47461F4(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 7144))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore21TimelineVFXEngineSpec___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A4753E4C(&qword_1EB1258C8, type metadata accessor for TimelineVFXEngineSpec, &unk_1A535D290);
  sub_1A52415F4();

  v4[7] = sub_1A4745F28(v4);
  return sub_1A4746348;
}

uint64_t sub_1A47463A4()
{
  swift_getKeyPath();
  (*(*v0 + 7144))();

  swift_beginAccess();
  return v0[576];
}

uint64_t sub_1A4746424@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 5200))();
  *a2 = result & 1;
  return result;
}

void sub_1A47464CC(char a1)
{
  v2 = a1 & 1;
  swift_beginAccess();
  if (v1[576] == v2)
  {
    v1[576] = v2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v4.n128_f64[0] = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v1 + 7152))(v4);
  }
}

uint64_t (*sub_1A47465CC(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 7144))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore21TimelineVFXEngineSpec___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A4753E4C(&qword_1EB1258C8, type metadata accessor for TimelineVFXEngineSpec, &unk_1A535D290);
  sub_1A52415F4();

  v4[7] = sub_1A4746354(v4);
  return sub_1A4746720;
}

double sub_1A474677C()
{
  swift_getKeyPath();
  (*(*v0 + 7144))();

  swift_beginAccess();
  return v0[73];
}

void sub_1A47468A0(double a1)
{
  swift_beginAccess();
  if (v1[73] == a1)
  {
    v1[73] = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v4.n128_f64[0] = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v1 + 7152))(v4);
  }
}

uint64_t (*sub_1A47469AC(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 7144))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore21TimelineVFXEngineSpec___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A4753E4C(&qword_1EB1258C8, type metadata accessor for TimelineVFXEngineSpec, &unk_1A535D290);
  sub_1A52415F4();

  v4[7] = sub_1A474672C(v4);
  return sub_1A4746B00;
}

id sub_1A4746B5C()
{
  swift_getKeyPath();
  (*(*v0 + 7144))();

  swift_beginAccess();
  v1 = v0[74];

  return v1;
}

uint64_t sub_1A4746BEC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 5296))();
  *a2 = result;
  return result;
}

void sub_1A4746C9C(void *a1)
{
  v2 = v1;
  v4 = (v1 + 592);
  swift_beginAccess();
  v5 = *(v1 + 592);
  sub_1A4751BB8();
  v6 = v5;
  v7 = sub_1A524DBF4();

  if (v7)
  {
    v8 = *v4;
    *v4 = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v10.n128_f64[0] = MEMORY[0x1EEE9AC00](KeyPath);
    v11 = v2;
    v12 = a1;
    (*(*v2 + 7152))(v10);
  }
}

uint64_t (*sub_1A4746DD8(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 7144))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore21TimelineVFXEngineSpec___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A4753E4C(&qword_1EB1258C8, type metadata accessor for TimelineVFXEngineSpec, &unk_1A535D290);
  sub_1A52415F4();

  v4[7] = sub_1A4746B0C(v4);
  return sub_1A4746F2C;
}

id sub_1A4746F88()
{
  swift_getKeyPath();
  (*(*v0 + 7144))();

  swift_beginAccess();
  v1 = v0[75];

  return v1;
}

uint64_t sub_1A4747018@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 5344))();
  *a2 = result;
  return result;
}

void sub_1A47470C8(void *a1)
{
  v2 = v1;
  v4 = (v1 + 600);
  swift_beginAccess();
  v5 = *(v1 + 600);
  sub_1A4751BB8();
  v6 = v5;
  v7 = sub_1A524DBF4();

  if (v7)
  {
    v8 = *v4;
    *v4 = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v10.n128_f64[0] = MEMORY[0x1EEE9AC00](KeyPath);
    v11 = v2;
    v12 = a1;
    (*(*v2 + 7152))(v10);
  }
}

uint64_t (*sub_1A4747204(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 7144))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore21TimelineVFXEngineSpec___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A4753E4C(&qword_1EB1258C8, type metadata accessor for TimelineVFXEngineSpec, &unk_1A535D290);
  sub_1A52415F4();

  v4[7] = sub_1A4746F38(v4);
  return sub_1A4747358;
}

double sub_1A47473B4()
{
  swift_getKeyPath();
  (*(*v0 + 7144))();

  swift_beginAccess();
  return v0[76];
}

void sub_1A47474D8(double a1)
{
  swift_beginAccess();
  if (v1[76] == a1)
  {
    v1[76] = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v4.n128_f64[0] = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v1 + 7152))(v4);
  }
}

uint64_t (*sub_1A47475E4(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 7144))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore21TimelineVFXEngineSpec___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A4753E4C(&qword_1EB1258C8, type metadata accessor for TimelineVFXEngineSpec, &unk_1A535D290);
  sub_1A52415F4();

  v4[7] = sub_1A4747364(v4);
  return sub_1A4747738;
}

double sub_1A4747794()
{
  swift_getKeyPath();
  (*(*v0 + 7144))();

  swift_beginAccess();
  return v0[77];
}

void sub_1A47478B8(double a1)
{
  swift_beginAccess();
  if (v1[77] == a1)
  {
    v1[77] = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v4.n128_f64[0] = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v1 + 7152))(v4);
  }
}

uint64_t (*sub_1A47479C4(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 7144))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore21TimelineVFXEngineSpec___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A4753E4C(&qword_1EB1258C8, type metadata accessor for TimelineVFXEngineSpec, &unk_1A535D290);
  sub_1A52415F4();

  v4[7] = sub_1A4747744(v4);
  return sub_1A4747B18;
}

float sub_1A4747B74()
{
  swift_getKeyPath();
  (*(*v0 + 7144))();

  swift_beginAccess();
  return v0[156];
}

void sub_1A4747C98(float a1)
{
  swift_beginAccess();
  if (v1[156] == a1)
  {
    v1[156] = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v4.n128_f64[0] = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v1 + 7152))(v4);
  }
}

uint64_t (*sub_1A4747DA4(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 7144))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore21TimelineVFXEngineSpec___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A4753E4C(&qword_1EB1258C8, type metadata accessor for TimelineVFXEngineSpec, &unk_1A535D290);
  sub_1A52415F4();

  v4[7] = sub_1A4747B24(v4);
  return sub_1A4747EF8;
}

id sub_1A4747F54()
{
  swift_getKeyPath();
  (*(*v0 + 7144))();

  swift_beginAccess();
  v1 = v0[79];

  return v1;
}

uint64_t sub_1A4747FE4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 5536))();
  *a2 = result;
  return result;
}

void sub_1A4748094(void *a1)
{
  v2 = v1;
  v4 = (v1 + 632);
  swift_beginAccess();
  v5 = *(v1 + 632);
  sub_1A4751BB8();
  v6 = v5;
  v7 = sub_1A524DBF4();

  if (v7)
  {
    v8 = *v4;
    *v4 = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v10.n128_f64[0] = MEMORY[0x1EEE9AC00](KeyPath);
    v11 = v2;
    v12 = a1;
    (*(*v2 + 7152))(v10);
  }
}

uint64_t (*sub_1A47481D0(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 7144))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore21TimelineVFXEngineSpec___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A4753E4C(&qword_1EB1258C8, type metadata accessor for TimelineVFXEngineSpec, &unk_1A535D290);
  sub_1A52415F4();

  v4[7] = sub_1A4747F04(v4);
  return sub_1A4748324;
}

float sub_1A4748380()
{
  swift_getKeyPath();
  (*(*v0 + 7144))();

  swift_beginAccess();
  return v0[160];
}

void sub_1A47484A4(float a1)
{
  swift_beginAccess();
  if (v1[160] == a1)
  {
    v1[160] = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v4.n128_f64[0] = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v1 + 7152))(v4);
  }
}

uint64_t (*sub_1A47485B0(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 7144))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore21TimelineVFXEngineSpec___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A4753E4C(&qword_1EB1258C8, type metadata accessor for TimelineVFXEngineSpec, &unk_1A535D290);
  sub_1A52415F4();

  v4[7] = sub_1A4748330(v4);
  return sub_1A4748704;
}

double sub_1A4748760()
{
  swift_getKeyPath();
  (*(*v0 + 7144))();

  swift_beginAccess();
  return v0[81];
}

void sub_1A4748884(double a1)
{
  swift_beginAccess();
  if (v1[81] == a1)
  {
    v1[81] = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v4.n128_f64[0] = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v1 + 7152))(v4);
  }
}

uint64_t (*sub_1A4748990(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 7144))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore21TimelineVFXEngineSpec___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A4753E4C(&qword_1EB1258C8, type metadata accessor for TimelineVFXEngineSpec, &unk_1A535D290);
  sub_1A52415F4();

  v4[7] = sub_1A4748710(v4);
  return sub_1A4748AE4;
}