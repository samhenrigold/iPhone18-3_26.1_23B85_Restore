unint64_t sub_21C9C5410()
{
  result = qword_27CDF3F30;
  if (!qword_27CDF3F30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF3F38, &qword_21CBB99C8);
    sub_21C707CF8(&qword_27CDF3F40, type metadata accessor for PMGroupInvitationView, &unk_21CBBA4B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF3F30);
  }

  return result;
}

uint64_t sub_21C9C54D0(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for PMGroupInvitationsList(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_21C9C2A08(a1, a2, v6);
}

uint64_t sub_21C9C5558(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB058, &unk_21CBB50B0);
  return v3(a1, *(a1 + *(v4 + 48)));
}

uint64_t sub_21C9C55C0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_21C9C5620@<X0>(_BYTE *a1@<X8>)
{
  v3 = *(type metadata accessor for PMGroupInvitationsList(0) - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(sub_21CB85C44() - 8);
  v7 = v1 + ((v4 + v5 + *(v6 + 80)) & ~*(v6 + 80));

  return sub_21C9C44AC(v7, a1);
}

uint64_t objectdestroy_40Tm()
{
  v1 = type metadata accessor for PMGroupInvitationsList(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = sub_21CB85C44();
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v15 = *(v6 + 64);
  swift_unknownObjectRelease();
  v8 = v0 + v3;

  v9 = v0 + v3 + v1[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEDBE8, &qword_21CBAE7D0);
  if (swift_getEnumCaseMultiPayload() != 1 || (v10 = sub_21CB823B4(), (*(*(v10 - 8) + 8))(v9, v10), *(v9 + *(type metadata accessor for PMDismissAction(0) + 20))))
  {
  }

  v11 = v8 + v1[7];
  if (!(*(v6 + 48))(v11, 1, v5))
  {
    (*(v6 + 8))(v11, v5);
  }

  v12 = v2 | v7;
  v13 = (v3 + v4 + v7) & ~v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDED978, &qword_21CBA7DE8);

  sub_21C7025C4(*(v8 + v1[8]), *(v8 + v1[8] + 8));
  (*(v6 + 8))(v0 + v13, v5);

  return MEMORY[0x2821FE8E8](v0, v13 + v15, v12 | 7);
}

uint64_t sub_21C9C595C(unsigned __int8 *a1)
{
  v3 = *(type metadata accessor for PMGroupInvitationsList(0) - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(sub_21CB85C44() - 8);
  v7 = *(v1 + 16);
  v8 = *(v1 + 24);
  v9 = v1 + ((v4 + v5 + *(v6 + 80)) & ~*(v6 + 80));

  return sub_21C9C491C(a1, v7, v8, v1 + v4, v9);
}

unint64_t sub_21C9C5A34()
{
  result = qword_27CDF3F60;
  if (!qword_27CDF3F60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF3F10, &unk_21CBB9980);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF3E90, &qword_21CBB98B0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF3E88, &qword_21CBB98A8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF3F00, &unk_21CBB9970);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF3E80, &qword_21CBB98A0);
    sub_21CB829D4();
    sub_21C9C4DDC();
    sub_21C707CF8(&qword_27CDED1A0, MEMORY[0x277CDDAB8], MEMORY[0x277CDDAA8]);
    swift_getOpaqueTypeConformance2();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF1870, &qword_21CBB21E0);
    sub_21C9C52B8();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_21C71F3FC();
    swift_getOpaqueTypeConformance2();
    sub_21C87E710();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF3F60);
  }

  return result;
}

uint64_t sub_21C9C5C48(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF20B0, &unk_21CBA0090);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v10 - v4;
  v6 = OBJC_IVAR____TtC17PasswordManagerUI27PMGroupInvitationsListModel__groupIDForInvitationToPresent;
  swift_beginAccess();
  sub_21C6EDBAC(v1 + v6, v5, &unk_27CDF20B0, &unk_21CBA0090);
  v7 = sub_21C9C8E88(v5, a1);
  sub_21C6EA794(v5, &unk_27CDF20B0, &unk_21CBA0090);
  if (v7)
  {
    KeyPath = swift_getKeyPath(byte_21CBB9AE8);
    MEMORY[0x28223BE20](KeyPath);
    v10[-2] = v1;
    v10[-1] = a1;
    v10[2] = v1;
    sub_21C9C91C4(&qword_27CDEDA48, type metadata accessor for PMGroupInvitationsListModel, &unk_21CBB9AC0);
    sub_21CB810C4();
  }

  else
  {
    swift_beginAccess();
    sub_21C898198(a1, v1 + v6);
    swift_endAccess();
  }

  return sub_21C6EA794(a1, &unk_27CDF20B0, &unk_21CBA0090);
}

uint64_t sub_21C9C5E34()
{
  swift_getKeyPath(byte_21CBB9B18);
  sub_21C9C91C4(&qword_27CDEDA48, type metadata accessor for PMGroupInvitationsListModel, &unk_21CBB9AC0);
  sub_21CB810D4();
}

uint64_t sub_21C9C5EEC()
{
  swift_getKeyPath(asc_21CBB9BE8);
  sub_21C9C91C4(&qword_27CDEDA48, type metadata accessor for PMGroupInvitationsListModel, &unk_21CBB9AC0);
  sub_21CB810D4();
}

uint64_t sub_21C9C5F90@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath(asc_21CBB9BE8);
  sub_21C9C91C4(&qword_27CDEDA48, type metadata accessor for PMGroupInvitationsListModel, &unk_21CBB9AC0);
  sub_21CB810D4();

  *a2 = *(v3 + 16);
}

uint64_t sub_21C9C603C(uint64_t a1)
{

  v4 = sub_21C967CC4(v3, a1);

  if (v4)
  {
    *(v1 + 16) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath(asc_21CBB9BE8);
    MEMORY[0x28223BE20](KeyPath);
    sub_21C9C91C4(&qword_27CDEDA48, type metadata accessor for PMGroupInvitationsListModel, &unk_21CBB9AC0);
    sub_21CB810C4();
  }
}

uint64_t sub_21C9C6190(uint64_t a1, uint64_t a2)
{
  *(a1 + 24) = a2;
}

uint64_t sub_21C9C61F8(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC17PasswordManagerUI27PMGroupInvitationsListModel__groupIDForInvitationToPresent;
  swift_beginAccess();
  sub_21C898198(a2, a1 + v4);
  return swift_endAccess();
}

uint64_t sub_21C9C6264(__n128 a1)
{
  v2 = v1;
  v3 = type metadata accessor for PMGroupInvitationsListModel.Action(0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF20B0, &unk_21CBA0090);
  MEMORY[0x28223BE20](v6 - 8);
  v25 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v24 - v9;
  v11 = sub_21CB85C44();
  v12 = *(v11 - 8);
  *&v13 = MEMORY[0x28223BE20](v11).n128_u64[0];
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath(aH_81, v13);
  v27 = v1;
  sub_21C9C91C4(&qword_27CDEDA48, type metadata accessor for PMGroupInvitationsListModel, &unk_21CBB9AC0);
  sub_21CB810D4();

  v16 = OBJC_IVAR____TtC17PasswordManagerUI27PMGroupInvitationsListModel__groupIDForRecentlyAcceptedInvitation;
  swift_beginAccess();
  sub_21C6EDBAC(v2 + v16, v10, &unk_27CDF20B0, &unk_21CBA0090);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    return sub_21C6EA794(v10, &unk_27CDF20B0, &unk_21CBA0090);
  }

  (*(v12 + 32))(v15, v10, v11);
  swift_getKeyPath(asc_21CBB9BE8);
  v26 = v2;
  sub_21CB810D4();

  v18 = *(v2 + 16);

  v19 = sub_21C8A1334(v15, v18);

  if (v19)
  {
    v20 = *(v2 + OBJC_IVAR____TtC17PasswordManagerUI27PMGroupInvitationsListModel_actionPerformed);
    (*(v12 + 16))(v5, v15, v11);
    v21 = *(v12 + 56);
    v21(v5, 0, 1, v11);

    v20(v5);

    sub_21C9C9294(v5, type metadata accessor for PMGroupInvitationsListModel.Action);
    v22 = v25;
    v21(v25, 1, 1, v11);
    sub_21C9C6890(v22);
    sub_21C9C75D0(v23);
  }

  return (*(v12 + 8))(v15, v11);
}

uint64_t sub_21C9C6628@<X0>(const char *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  swift_getKeyPath(a1);
  sub_21C9C91C4(&qword_27CDEDA48, type metadata accessor for PMGroupInvitationsListModel, &unk_21CBB9AC0);
  sub_21CB810D4();

  v6 = *a2;
  swift_beginAccess();
  return sub_21C6EDBAC(v3 + v6, a3, &unk_27CDF20B0, &unk_21CBA0090);
}

uint64_t sub_21C9C6700@<X0>(uint64_t *a1@<X0>, const char *a2@<X3>, uint64_t *a3@<X4>, uint64_t a4@<X8>)
{
  v6 = *a1;
  swift_getKeyPath(a2);
  sub_21C9C91C4(&qword_27CDEDA48, type metadata accessor for PMGroupInvitationsListModel, &unk_21CBB9AC0);
  sub_21CB810D4();

  v7 = *a3;
  swift_beginAccess();
  return sub_21C6EDBAC(v6 + v7, a4, &unk_27CDF20B0, &unk_21CBA0090);
}

uint64_t sub_21C9C67DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(char *))
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF20B0, &unk_21CBA0090);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v11 - v8;
  sub_21C6EDBAC(a1, &v11 - v8, &unk_27CDF20B0, &unk_21CBA0090);
  return a5(v9);
}

uint64_t sub_21C9C6890(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF20B0, &unk_21CBA0090);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v11 - v4;
  v6 = OBJC_IVAR____TtC17PasswordManagerUI27PMGroupInvitationsListModel__groupIDForRecentlyAcceptedInvitation;
  swift_beginAccess();
  sub_21C6EDBAC(v1 + v6, v5, &unk_27CDF20B0, &unk_21CBA0090);
  v7 = sub_21C9C8E88(v5, a1);
  sub_21C6EA794(v5, &unk_27CDF20B0, &unk_21CBA0090);
  if (v7)
  {
    KeyPath = swift_getKeyPath(aH_81);
    MEMORY[0x28223BE20](KeyPath);
    v11[-2] = v1;
    v11[-1] = a1;
    v11[2] = v1;
    sub_21C9C91C4(&qword_27CDEDA48, type metadata accessor for PMGroupInvitationsListModel, &unk_21CBB9AC0);
    sub_21CB810C4();
  }

  else
  {
    sub_21C6EDBAC(a1, v5, &unk_27CDF20B0, &unk_21CBA0090);
    swift_beginAccess();
    sub_21C898198(v5, v1 + v6);
    swift_endAccess();
    sub_21C9C6264(v9);
    sub_21C6EA794(v5, &unk_27CDF20B0, &unk_21CBA0090);
  }

  return sub_21C6EA794(a1, &unk_27CDF20B0, &unk_21CBA0090);
}

uint64_t sub_21C9C6AA4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF20B0, &unk_21CBA0090);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v10 - v5;
  sub_21C6EDBAC(a2, &v10 - v5, &unk_27CDF20B0, &unk_21CBA0090);
  v7 = OBJC_IVAR____TtC17PasswordManagerUI27PMGroupInvitationsListModel__groupIDForRecentlyAcceptedInvitation;
  swift_beginAccess();
  sub_21C898198(v6, a1 + v7);
  swift_endAccess();
  sub_21C9C6264(v8);
  return sub_21C6EA794(v6, &unk_27CDF20B0, &unk_21CBA0090);
}

uint64_t sub_21C9C6B98()
{
  swift_getKeyPath(asc_21CBB9BC0);
  sub_21C9C91C4(&qword_27CDEDA48, type metadata accessor for PMGroupInvitationsListModel, &unk_21CBB9AC0);
  sub_21CB810D4();

  return *(v0 + OBJC_IVAR____TtC17PasswordManagerUI27PMGroupInvitationsListModel__isProcessingInvitation);
}

uint64_t sub_21C9C6C40@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath(asc_21CBB9BC0);
  sub_21C9C91C4(&qword_27CDEDA48, type metadata accessor for PMGroupInvitationsListModel, &unk_21CBB9AC0);
  sub_21CB810D4();

  *a2 = *(v3 + OBJC_IVAR____TtC17PasswordManagerUI27PMGroupInvitationsListModel__isProcessingInvitation);
  return result;
}

uint64_t sub_21C9C6CF0(uint64_t result)
{
  if (*(v1 + OBJC_IVAR____TtC17PasswordManagerUI27PMGroupInvitationsListModel__isProcessingInvitation) == (result & 1))
  {
    *(v1 + OBJC_IVAR____TtC17PasswordManagerUI27PMGroupInvitationsListModel__isProcessingInvitation) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath(asc_21CBB9BC0);
    MEMORY[0x28223BE20](KeyPath);
    sub_21C9C91C4(&qword_27CDEDA48, type metadata accessor for PMGroupInvitationsListModel, &unk_21CBB9AC0);
    sub_21CB810C4();
  }

  return result;
}

uint64_t sub_21C9C6E08(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF20B0, &unk_21CBA0090);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v13 - v4;
  v6 = MEMORY[0x277D84F90];
  *(v1 + 16) = MEMORY[0x277D84F90];
  *(v1 + 24) = v6;
  v7 = OBJC_IVAR____TtC17PasswordManagerUI27PMGroupInvitationsListModel__groupIDForInvitationToPresent;
  v8 = sub_21CB85C44();
  v9 = *(*(v8 - 8) + 56);
  v9(v1 + v7, 1, 1, v8);
  v9(v1 + OBJC_IVAR____TtC17PasswordManagerUI27PMGroupInvitationsListModel__groupIDForRecentlyAcceptedInvitation, 1, 1, v8);
  *(v1 + OBJC_IVAR____TtC17PasswordManagerUI27PMGroupInvitationsListModel__isProcessingInvitation) = 0;
  v10 = (v1 + OBJC_IVAR____TtC17PasswordManagerUI27PMGroupInvitationsListModel_actionPerformed);
  *v10 = nullsub_1;
  v10[1] = 0;
  *(v1 + OBJC_IVAR____TtC17PasswordManagerUI27PMGroupInvitationsListModel__subscriptions) = MEMORY[0x277D84FA0];
  v11 = OBJC_IVAR____TtC17PasswordManagerUI27PMGroupInvitationsListModel__groupsStore;
  *(v1 + v11) = swift_getKeyPath(byte_21CBB9B48);
  sub_21CB81104();
  sub_21C9C7108();
  sub_21C6EDBAC(a1, v5, &unk_27CDF20B0, &unk_21CBA0090);
  sub_21C9C5C48(v5);
  sub_21C6EA794(a1, &unk_27CDF20B0, &unk_21CBA0090);
  return v1;
}

uint64_t sub_21C9C6FB8(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC17PasswordManagerUI27PMGroupInvitationsListModel__subscriptions;
  swift_beginAccess();

  v5 = sub_21C7A230C(v4, a1);

  if (v5)
  {
    *(v1 + v3) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath(aH_82);
    MEMORY[0x28223BE20](KeyPath);
    sub_21C9C91C4(&qword_27CDEDA48, type metadata accessor for PMGroupInvitationsListModel, &unk_21CBB9AC0);
    sub_21CB810C4();
  }
}

uint64_t sub_21C9C7108()
{
  v1 = *(v0 + OBJC_IVAR____TtC17PasswordManagerUI27PMGroupInvitationsListModel__groupsStore);
  v2 = qword_27CDEA4C0;

  if (v2 != -1)
  {
    swift_once();
  }

  sub_21CB86544();
  sub_21C7073E8(v1, v6);

  v3 = swift_allocObject();
  swift_weakInit();
  v4 = swift_allocObject();
  *(v4 + 16) = sub_21C9C920C;
  *(v4 + 24) = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF3FB8, &qword_21CBBD7C0);
  sub_21C9C9214();
  sub_21CB81E04();

  swift_getKeyPath(aH_82);
  sub_21C9C91C4(&qword_27CDEDA48, type metadata accessor for PMGroupInvitationsListModel, &unk_21CBB9AC0);
  sub_21CB810D4();

  swift_getKeyPath(aH_82);
  sub_21CB810F4();

  swift_beginAccess();
  sub_21CB81CB4();
  swift_endAccess();

  swift_getKeyPath(aH_82);
  sub_21CB810E4();
}

uint64_t sub_21C9C7390(uint64_t a1)
{
  v2 = sub_21CB85C44();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB058, &unk_21CBB50B0);
  MEMORY[0x28223BE20](v6);
  v8 = v11 - v7;
  sub_21C6EDBAC(a1, v11 - v7, &qword_27CDEB058, &unk_21CBB50B0);

  (*(v3 + 16))(v5, v8, v2);
  sub_21C9C9294(v8, type metadata accessor for PMSharingGroup);
  sub_21C9C91C4(&qword_27CDECD58, MEMORY[0x277D49978], MEMORY[0x277D49998]);
  sub_21CB857F4();
  sub_21CB857F4();
  if (v11[2] == v11[0] && v11[3] == v11[1])
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_21CB86344();
  }

  (*(v3 + 8))(v5, v2);

  return v9 & 1;
}

uint64_t sub_21C9C75D0(__n128 a1)
{
  v2 = type metadata accessor for PMGroupInvitationsListModel.Action(0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF20B0, &unk_21CBA0090);
  *&v6 = MEMORY[0x28223BE20](v5 - 8).n128_u64[0];
  v8 = &v15 - v7;
  swift_getKeyPath(byte_21CBB9B18, v6);
  v16 = v1;
  sub_21C9C91C4(&qword_27CDEDA48, type metadata accessor for PMGroupInvitationsListModel, &unk_21CBB9AC0);
  sub_21CB810D4();

  if (!*(*(v1 + 24) + 16))
  {
    swift_getKeyPath(aH_81);
    v16 = v1;
    sub_21CB810D4();

    v10 = OBJC_IVAR____TtC17PasswordManagerUI27PMGroupInvitationsListModel__groupIDForRecentlyAcceptedInvitation;
    swift_beginAccess();
    sub_21C6EDBAC(v1 + v10, v8, &unk_27CDF20B0, &unk_21CBA0090);
    v11 = sub_21CB85C44();
    v12 = *(v11 - 8);
    v13 = (*(v12 + 48))(v8, 1, v11);
    result = sub_21C6EA794(v8, &unk_27CDF20B0, &unk_21CBA0090);
    if (v13 == 1)
    {
      swift_getKeyPath(asc_21CBB9BC0);
      v15 = v1;
      sub_21CB810D4();

      if ((*(v1 + OBJC_IVAR____TtC17PasswordManagerUI27PMGroupInvitationsListModel__isProcessingInvitation) & 1) == 0)
      {
        v14 = *(v1 + OBJC_IVAR____TtC17PasswordManagerUI27PMGroupInvitationsListModel_actionPerformed);
        (*(v12 + 56))(v4, 1, 1, v11);

        v14(v4);

        return sub_21C9C9294(v4, type metadata accessor for PMGroupInvitationsListModel.Action);
      }
    }
  }

  return result;
}

uint64_t sub_21C9C78AC()
{
  swift_getKeyPath(aH_82);
  sub_21C9C91C4(&qword_27CDEDA48, type metadata accessor for PMGroupInvitationsListModel, &unk_21CBB9AC0);
  sub_21CB810D4();

  swift_beginAccess();
}

uint64_t sub_21C9C796C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath(aH_82);
  sub_21C9C91C4(&qword_27CDEDA48, type metadata accessor for PMGroupInvitationsListModel, &unk_21CBB9AC0);
  sub_21CB810D4();

  v4 = OBJC_IVAR____TtC17PasswordManagerUI27PMGroupInvitationsListModel__subscriptions;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

uint64_t sub_21C9C7A34(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC17PasswordManagerUI27PMGroupInvitationsListModel__subscriptions;
  swift_beginAccess();
  *(a1 + v4) = a2;
}

uint64_t sub_21C9C7AA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for PMSharingGroup(0);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_21CB85C44();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_21C9C7DC4(a1);
  }

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v15 = *(a2 + 16);
    v16 = MEMORY[0x277D84F90];
    if (v15)
    {
      v24[0] = Strong;
      v24[1] = a3;
      v26[0] = MEMORY[0x277D84F90];
      sub_21C7B0BC8(0, v15, 0);
      v16 = v26[0];
      v17 = a2 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v18 = *(v7 + 72);
      v24[2] = v11 + 32;
      v25 = v18;
      do
      {
        sub_21C94B4A8(v17, v9);
        (*(v11 + 16))(v13, v9, v10);
        sub_21C9C9294(v9, type metadata accessor for PMSharingGroup);
        v26[0] = v16;
        v20 = *(v16 + 16);
        v19 = *(v16 + 24);
        if (v20 >= v19 >> 1)
        {
          sub_21C7B0BC8((v19 > 1), v20 + 1, 1);
          v16 = v26[0];
        }

        *(v16 + 16) = v20 + 1;
        (*(v11 + 32))(v16 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v20, v13, v10);
        v17 += v25;
        --v15;
      }

      while (v15);
    }

    sub_21C9C603C(v16);
  }

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_21C9C6264(v21);
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_21C9C75D0(v23);
  }

  return result;
}

uint64_t sub_21C9C7DC4(uint64_t a1)
{
  v2 = v1;
  v66 = a1;
  v3 = type metadata accessor for PMSharingGroup(0);
  v65 = *(v3 - 8);
  MEMORY[0x28223BE20](v3 - 8);
  v69 = &v63 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v63 - v6;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB058, &unk_21CBB50B0);
  v8 = *(v76 - 8);
  MEMORY[0x28223BE20](v76);
  v73 = &v63 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v63 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB068, &unk_21CBB9C10);
  v71 = *(v13 - 8);
  v72 = v13;
  *&v14 = MEMORY[0x28223BE20](v13).n128_u64[0];
  v16 = &v63 - v15;
  swift_getKeyPath(byte_21CBB9B18, v14);
  v17 = OBJC_IVAR____TtC17PasswordManagerUI27PMGroupInvitationsListModel___observationRegistrar;
  v77[0] = v2;
  v67 = sub_21C9C91C4(&qword_27CDEDA48, type metadata accessor for PMGroupInvitationsListModel, &unk_21CBB9AC0);
  v68 = v17;
  sub_21CB810D4();

  v74 = v2;
  v18 = *(v2 + 24);
  v19 = *(v18 + 16);
  v20 = MEMORY[0x277D84F90];
  v75 = v8;
  if (v19)
  {
    v64 = v7;
    v77[0] = MEMORY[0x277D84F90];

    sub_21C7B12E8(0, v19, 0);
    v21 = 0;
    v70 = v18 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
    v20 = v77[0];
    while (v21 < *(v18 + 16))
    {
      v22 = v19;
      v23 = v18;
      sub_21C6EDBAC(v70 + *(v75 + 72) * v21, v12, &qword_27CDEB058, &unk_21CBB50B0);
      v24 = *&v12[*(v76 + 48)];
      v25 = *(v72 + 48);
      v26 = sub_21CB85C44();
      (*(*(v26 - 8) + 16))(v16, v12, v26);
      *&v16[v25] = v24;

      sub_21C6EA794(v12, &qword_27CDEB058, &unk_21CBB50B0);
      v77[0] = v20;
      v28 = *(v20 + 2);
      v27 = *(v20 + 3);
      if (v28 >= v27 >> 1)
      {
        sub_21C7B12E8((v27 > 1), v28 + 1, 1);
        v20 = v77[0];
      }

      ++v21;
      *(v20 + 2) = v28 + 1;
      sub_21C716934(v16, v20 + ((*(v71 + 80) + 32) & ~*(v71 + 80)) + *(v71 + 72) * v28, &qword_27CDEB068, &unk_21CBB9C10);
      v19 = v22;
      v18 = v23;
      if (v22 == v21)
      {

        v7 = v64;
        goto LABEL_8;
      }
    }

    __break(1u);

    __break(1u);
  }

  else
  {
LABEL_8:
    v29 = v75;
    if (*(v20 + 2))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEFF20, &qword_21CBADE60);
      v30 = sub_21CB86224();
    }

    else
    {
      v30 = MEMORY[0x277D84F98];
    }

    v77[0] = v30;
    sub_21C9C9398(v20, 1, v77);

    v31 = v77[0];
    v32 = v66;
    v33 = *(v66 + 16);
    if (v33)
    {
      v71 = 0;
      v78 = MEMORY[0x277D84F90];
      sub_21C7B12A8(0, v33, 0);
      v34 = v78;
      v35 = v32 + ((*(v65 + 80) + 32) & ~*(v65 + 80));
      v72 = *(v65 + 72);
      do
      {
        sub_21C94B4A8(v35, v7);
        if (*(v31 + 2) && (v36 = sub_21CB10A54(v7), (v37 & 1) != 0))
        {
          v38 = *(*(v31 + 7) + 8 * v36);
        }

        else
        {
          v39 = v7;
          v40 = v7;
          v41 = v69;
          sub_21C94B4A8(v39, v69);
          v42 = type metadata accessor for PMGroupManagerMain();
          v43 = swift_allocObject();
          v77[3] = v42;
          v77[4] = &off_282E54DD8;
          v77[0] = v43;
          type metadata accessor for PMGroupInvitationModel(0);
          v44 = swift_allocObject();
          v45 = __swift_mutable_project_boxed_opaque_existential_1(v77, v42);
          v46 = MEMORY[0x28223BE20](v45);
          v48 = (&v63 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0));
          (*(v49 + 16))(v48, v46);
          v50 = v41;
          v7 = v40;
          v29 = v75;
          v38 = sub_21C9C8B2C(v50, *v48, v44);
          __swift_destroy_boxed_opaque_existential_0(v77);
        }

        v51 = swift_allocObject();
        swift_weakInit();
        v52 = (v38 + OBJC_IVAR____TtC17PasswordManagerUI22PMGroupInvitationModel_didStartProcessingInvitation);
        *v52 = sub_21C9C9810;
        v52[1] = v51;

        v53 = swift_allocObject();
        swift_weakInit();
        v54 = (v38 + OBJC_IVAR____TtC17PasswordManagerUI22PMGroupInvitationModel_recentlyAcceptedInvitationUpdated);
        *v54 = sub_21C9C9818;
        v54[1] = v53;

        v55 = *(v76 + 48);
        v56 = v73;
        sub_21C9C9820(v7, v73);
        v57 = v56;
        *(v56 + v55) = v38;
        v78 = v34;
        v59 = *(v34 + 16);
        v58 = *(v34 + 24);
        if (v59 >= v58 >> 1)
        {
          sub_21C7B12A8((v58 > 1), v59 + 1, 1);
          v57 = v73;
          v34 = v78;
        }

        *(v34 + 16) = v59 + 1;
        sub_21C716934(v57, v34 + ((*(v29 + 80) + 32) & ~*(v29 + 80)) + *(v29 + 72) * v59, &qword_27CDEB058, &unk_21CBB50B0);
        v35 += v72;
        --v33;
      }

      while (v33);
    }

    else
    {

      v34 = MEMORY[0x277D84F90];
    }

    KeyPath = swift_getKeyPath(byte_21CBB9B18);
    MEMORY[0x28223BE20](KeyPath);
    v61 = v74;
    *(&v63 - 2) = v74;
    *(&v63 - 1) = v34;
    v77[0] = v61;
    sub_21CB810C4();
  }

  return result;
}

uint64_t sub_21C9C85D4(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if (*(result + OBJC_IVAR____TtC17PasswordManagerUI27PMGroupInvitationsListModel__isProcessingInvitation) == 1)
    {
      *(result + OBJC_IVAR____TtC17PasswordManagerUI27PMGroupInvitationsListModel__isProcessingInvitation) = 1;
    }

    else
    {
      KeyPath = swift_getKeyPath(asc_21CBB9BC0);
      MEMORY[0x28223BE20](KeyPath);
      sub_21C9C91C4(&qword_27CDEDA48, type metadata accessor for PMGroupInvitationsListModel, &unk_21CBB9AC0);
      sub_21CB810C4();
    }
  }

  return result;
}

uint64_t sub_21C9C8724(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF20B0, &unk_21CBA0090);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v11 - v4;
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_21C6EDBAC(a1, v5, &unk_27CDF20B0, &unk_21CBA0090);
    sub_21C9C6890(v5);
  }

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    if (*(Strong + OBJC_IVAR____TtC17PasswordManagerUI27PMGroupInvitationsListModel__isProcessingInvitation))
    {
      v7 = Strong;
      KeyPath = swift_getKeyPath(asc_21CBB9BC0);
      MEMORY[0x28223BE20](KeyPath);
      v11[-2] = v7;
      LOBYTE(v11[-1]) = 0;
      v11[1] = v7;
      sub_21C9C91C4(&qword_27CDEDA48, type metadata accessor for PMGroupInvitationsListModel, &unk_21CBB9AC0);
      sub_21CB810C4();
    }

    else
    {
      *(Strong + OBJC_IVAR____TtC17PasswordManagerUI27PMGroupInvitationsListModel__isProcessingInvitation) = 0;
    }
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_21C9C75D0(v10);
  }

  return result;
}

uint64_t sub_21C9C8940()
{

  sub_21C6EA794(v0 + OBJC_IVAR____TtC17PasswordManagerUI27PMGroupInvitationsListModel__groupIDForInvitationToPresent, &unk_27CDF20B0, &unk_21CBA0090);
  sub_21C6EA794(v0 + OBJC_IVAR____TtC17PasswordManagerUI27PMGroupInvitationsListModel__groupIDForRecentlyAcceptedInvitation, &unk_27CDF20B0, &unk_21CBA0090);

  v1 = OBJC_IVAR____TtC17PasswordManagerUI27PMGroupInvitationsListModel___observationRegistrar;
  v2 = sub_21CB81114();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t sub_21C9C8A2C()
{
  sub_21C9C8940();

  return swift_deallocClassInstance();
}

uint64_t sub_21C9C8AD4(uint64_t a1)
{
  v1 = sub_21CB85C44();
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v1;
}

uint64_t sub_21C9C8B2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v25 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1E98, &unk_21CBB2A80);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v24 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAC78, &qword_21CBA00C0);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v24 - v11;
  v28 = type metadata accessor for PMGroupManagerMain();
  v29 = &off_282E54DD8;
  *&v27 = a2;
  v13 = OBJC_IVAR____TtC17PasswordManagerUI22PMGroupInvitationModel__failedToAcceptAlertPresented;
  LOBYTE(v26) = 0;
  sub_21CB81D74();
  v14 = *(v10 + 32);
  v14(a3 + v13, v12, v9);
  v15 = OBJC_IVAR____TtC17PasswordManagerUI22PMGroupInvitationModel__failedToAcceptError;
  v26 = 0;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1EC0, &qword_21CBB2AB0);
  sub_21CB81D74();
  v16 = *(v6 + 32);
  v16(a3 + v15, v8, v5);
  v17 = OBJC_IVAR____TtC17PasswordManagerUI22PMGroupInvitationModel__failedToDeclineAlertPresented;
  LOBYTE(v26) = 0;
  sub_21CB81D74();
  v14(a3 + v17, v12, v9);
  v18 = OBJC_IVAR____TtC17PasswordManagerUI22PMGroupInvitationModel__failedToDeclineError;
  v26 = 0;
  sub_21CB81D74();
  v16(a3 + v18, v8, v5);
  v19 = OBJC_IVAR____TtC17PasswordManagerUI22PMGroupInvitationModel__isProcessingInvitation;
  LOBYTE(v26) = 0;
  sub_21CB81D74();
  v14(a3 + v19, v12, v9);
  v20 = OBJC_IVAR____TtC17PasswordManagerUI22PMGroupInvitationModel__isDeclineAlertPresented;
  LOBYTE(v26) = 0;
  sub_21CB81D74();
  v14(a3 + v20, v12, v9);
  *(a3 + OBJC_IVAR____TtC17PasswordManagerUI22PMGroupInvitationModel_knownUserStatusCache) = MEMORY[0x277D84F98];
  v21 = (a3 + OBJC_IVAR____TtC17PasswordManagerUI22PMGroupInvitationModel_didStartProcessingInvitation);
  *v21 = nullsub_1;
  v21[1] = 0;
  v22 = (a3 + OBJC_IVAR____TtC17PasswordManagerUI22PMGroupInvitationModel_recentlyAcceptedInvitationUpdated);
  *v22 = nullsub_1;
  v22[1] = 0;
  sub_21C9C9820(v25, a3 + OBJC_IVAR____TtC17PasswordManagerUI22PMGroupInvitationModel_group);
  sub_21C6EA568(&v27, a3 + 16);
  return a3;
}

uint64_t sub_21C9C8E88(uint64_t a1, uint64_t a2)
{
  v4 = sub_21CB85C44();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF20B0, &unk_21CBA0090);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v21 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAC40, &qword_21CBA1A40);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v21 - v12;
  v15 = *(v14 + 56);
  sub_21C6EDBAC(a1, &v21 - v12, &unk_27CDF20B0, &unk_21CBA0090);
  sub_21C6EDBAC(a2, &v13[v15], &unk_27CDF20B0, &unk_21CBA0090);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) != 1)
  {
    sub_21C6EDBAC(v13, v10, &unk_27CDF20B0, &unk_21CBA0090);
    if (v16(&v13[v15], 1, v4) != 1)
    {
      (*(v5 + 32))(v7, &v13[v15], v4);
      sub_21C9C91C4(&qword_27CDEAC48, MEMORY[0x277D49978], MEMORY[0x277D49990]);
      v18 = sub_21CB85574();
      v19 = *(v5 + 8);
      v19(v7, v4);
      v19(v10, v4);
      sub_21C6EA794(v13, &unk_27CDF20B0, &unk_21CBA0090);
      v17 = v18 ^ 1;
      return v17 & 1;
    }

    (*(v5 + 8))(v10, v4);
    goto LABEL_6;
  }

  if (v16(&v13[v15], 1, v4) != 1)
  {
LABEL_6:
    sub_21C6EA794(v13, &qword_27CDEAC40, &qword_21CBA1A40);
    v17 = 1;
    return v17 & 1;
  }

  sub_21C6EA794(v13, &unk_27CDF20B0, &unk_21CBA0090);
  v17 = 0;
  return v17 & 1;
}

uint64_t sub_21C9C91C4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_21C9C9214()
{
  result = qword_27CDF3FC0;
  if (!qword_27CDF3FC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF3FB8, &qword_21CBBD7C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF3FC0);
  }

  return result;
}

uint64_t sub_21C9C9294(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_21C9C935C()
{
  *(*(v0 + 16) + 16) = *(v0 + 24);
}

void sub_21C9C9398(uint64_t a1, char a2, void (**a3)(char *, uint64_t))
{
  v54 = a3;
  v6 = sub_21CB85C44();
  v48 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB068, &unk_21CBB9C10);
  MEMORY[0x28223BE20](v9);
  v53 = &v45 - v12;
  v13 = *(a1 + 16);
  if (!v13)
  {
    return;
  }

  v14 = *(v10 + 48);
  v15 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v50 = *(v11 + 72);
  v45 = v15;
  v46 = a1;
  v16 = a1 + v15;
  v17 = v53;
  sub_21C6EDBAC(v16, v53, &qword_27CDEB068, &unk_21CBB9C10);
  v18 = *(v48 + 32);
  v51 = (v48 + 32);
  v52 = v6;
  v18(v8, v17, v6);
  v49 = v14;
  v19 = *(v17 + v14);
  v20 = *v54;
  v22 = sub_21CB10A54(v8);
  v23 = *(v20 + 2);
  v24 = (v21 & 1) == 0;
  v25 = v23 + v24;
  if (__OFADD__(v23, v24))
  {
    goto LABEL_24;
  }

  LOBYTE(v3) = v21;
  if (*(v20 + 3) >= v25)
  {
    v17 = v51;
    if ((a2 & 1) == 0)
    {
      goto LABEL_26;
    }

    v28 = v19;
    while (1)
    {
LABEL_8:
      v19 = *v54;
      v47 = v17 - 3;
      if (v3)
      {
        v3 = v52;
        (*(v17 - 3))(v8, v52);
        *(*(v19 + 7) + 8 * v22) = v28;
      }

      else
      {
        *(v19 + (v22 >> 6) + 8) |= 1 << v22;
        v3 = v52;
        v18((*(v19 + 6) + *(v48 + 72) * v22), v8, v52);
        *(*(v19 + 7) + 8 * v22) = v28;
        v29 = *(v19 + 2);
        v30 = __OFADD__(v29, 1);
        v31 = v29 + 1;
        if (v30)
        {
          goto LABEL_25;
        }

        *(v19 + 2) = v31;
      }

      v18 = (v13 - 1);
      if (v13 == 1)
      {
        return;
      }

      v13 = v46 + v50 + v45;
      while (1)
      {
        v32 = v53;
        sub_21C6EDBAC(v13, v53, &qword_27CDEB068, &unk_21CBB9C10);
        v19 = *v17;
        (*v17)(v8, v32, v3);
        v33 = *(v32 + v49);
        v34 = *v54;
        v22 = sub_21CB10A54(v8);
        v36 = *(v34 + 2);
        v37 = (v35 & 1) == 0;
        v38 = v36 + v37;
        if (__OFADD__(v36, v37))
        {
          break;
        }

        v39 = v35;
        if (*(v34 + 3) < v38)
        {
          sub_21C8D32D8(v38, 1);
          v40 = sub_21CB10A54(v8);
          if ((v39 & 1) != (v41 & 1))
          {
            goto LABEL_27;
          }

          v22 = v40;
        }

        v42 = *v54;
        if (v39)
        {
          v3 = v52;
          (*v47)(v8, v52);
          *(*(v42 + 7) + 8 * v22) = v33;

          v17 = v51;
        }

        else
        {
          *(v42 + (v22 >> 6) + 8) |= 1 << v22;
          v17 = v51;
          v3 = v52;
          (v19)(*(v42 + 6) + *(v48 + 72) * v22, v8, v52);
          *(*(v42 + 7) + 8 * v22) = v33;
          v43 = *(v42 + 2);
          v30 = __OFADD__(v43, 1);
          v44 = v43 + 1;
          if (v30)
          {
            goto LABEL_25;
          }

          *(v42 + 2) = v44;
        }

        v13 += v50;
        v18 = (v18 - 1);
        if (!v18)
        {
          return;
        }
      }

LABEL_24:
      __break(1u);
LABEL_25:
      __break(1u);
LABEL_26:
      v28 = v19;
      sub_21C8D6630();
    }
  }

  sub_21C8D32D8(v25, a2 & 1);
  v26 = sub_21CB10A54(v8);
  if ((v3 & 1) == (v27 & 1))
  {
    v22 = v26;
    v28 = v19;
    v17 = v51;
    goto LABEL_8;
  }

LABEL_27:
  sub_21CB863B4();
  __break(1u);
}

uint64_t sub_21C9C9820(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PMSharingGroup(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21C9C9884()
{
  *(*(v0 + 16) + 24) = *(v0 + 24);
}

void *sub_21C9C9904@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = a1;
  a2[1] = swift_getKeyPath(byte_21CBB9CA8);
  v3 = type metadata accessor for PMAccountHistoryView(0);
  v4 = *(v3 + 24);
  *(a2 + v4) = swift_getKeyPath(byte_21CBB9CD0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE480, &qword_21CBA13D0);
  swift_storeEnumTagMultiPayload();
  v5 = a2 + *(v3 + 28);

  result = sub_21CB84D44();
  *v5 = v7;
  *(v5 + 1) = v8;
  return result;
}

uint64_t sub_21C9C99C8()
{
  type metadata accessor for PMAccountHistoryView(0);
  sub_21C9CD7EC(&unk_27CDF3FD0, type metadata accessor for PMAccountHistoryView, &unk_21CBB9D28);

  return sub_21CB82924();
}

uint64_t type metadata accessor for PMAccountHistoryView(uint64_t a1)
{
  result = qword_27CDF3FE0;
  if (!qword_27CDF3FE0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21C9C9AE4(uint64_t a1)
{
  type metadata accessor for PMAccountHistoryModel(319);
  if (v1 <= 0x3F)
  {
    sub_21C9C9BF8(319, &unk_27CDF3FF0, type metadata accessor for PMAccountsState, type metadata accessor for PMDependency);
    if (v2 <= 0x3F)
    {
      sub_21C9C9BF8(319, &qword_27CDEB178, MEMORY[0x277CDD848], MEMORY[0x277CDF468]);
      if (v3 <= 0x3F)
      {
        sub_21C7210DC();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_21C9C9BF8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_21C9C9C78@<X0>(uint64_t a1@<X8>)
{
  v62 = a1;
  v61 = sub_21CB82FD4();
  v60 = *(v61 - 8);
  MEMORY[0x28223BE20](v61);
  v59 = &v45 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for PMAccount(0);
  MEMORY[0x28223BE20](v3 - 8);
  v56 = &v45 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = sub_21CB829D4();
  v50 = *(v49 - 8);
  MEMORY[0x28223BE20](v49);
  v6 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF4018, &qword_21CBB9D78);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v45 - v9;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF4020, &qword_21CBB9D80);
  v48 = *(v51 - 8);
  MEMORY[0x28223BE20](v51);
  v12 = &v45 - v11;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF4028, &qword_21CBB9D88);
  MEMORY[0x28223BE20](v47);
  v14 = &v45 - v13;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF4030, &qword_21CBB9D90);
  v55 = *(v54 - 8);
  MEMORY[0x28223BE20](v54);
  v52 = &v45 - v15;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF4038, &qword_21CBB9D98);
  v58 = *(v57 - 8);
  MEMORY[0x28223BE20](v57);
  v53 = &v45 - v16;
  v64 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF4040, &qword_21CBB9DA0);
  sub_21C6EADEC(&qword_27CDF4048, &qword_27CDF4040, &qword_21CBB9DA0, MEMORY[0x277CE14C0]);
  sub_21CB83EF4();
  sub_21CB85294();
  sub_21C6EADEC(&unk_27CDF4050, &qword_27CDF4018, &qword_21CBB9D78, MEMORY[0x277CDE580]);
  sub_21C9CD7EC(&qword_27CDED1A0, MEMORY[0x277CDDAB8], MEMORY[0x277CDDAA8]);
  v17 = v49;
  sub_21CB849C4();
  (*(v50 + 8))(v6, v17);
  (*(v8 + 8))(v10, v7);
  sub_21CB85214();
  sub_21CB82AC4();
  (*(v48 + 32))(v14, v12, v51);
  v18 = v47;
  v19 = &v14[*(v47 + 36)];
  v20 = v74;
  *(v19 + 4) = v73;
  *(v19 + 5) = v20;
  *(v19 + 6) = v75;
  v21 = v70;
  *v19 = v69;
  *(v19 + 1) = v21;
  v22 = v72;
  *(v19 + 2) = v71;
  *(v19 + 3) = v22;
  v23 = v46;
  v24 = *v46;
  swift_getKeyPath(aH_83);
  v65 = v24;
  sub_21C9CD7EC(&qword_27CDF4060, type metadata accessor for PMAccountHistoryModel, &unk_21CBB3238);
  sub_21CB810D4();

  v25 = OBJC_IVAR____TtC17PasswordManagerUI21PMAccountHistoryModel__account;
  swift_beginAccess();
  v26 = v24 + v25;
  v27 = v56;
  sub_21C9CD920(v26, v56, type metadata accessor for PMAccount);
  v28 = PMAccount.effectiveTitle.getter();
  v30 = v29;
  sub_21C7195A0(v27, type metadata accessor for PMAccount);
  v65 = v28;
  v66 = v30;
  v31 = sub_21C9CD690();
  v32 = sub_21C71F3FC();
  v33 = MEMORY[0x277D837D0];
  v34 = v52;
  sub_21CB842F4();

  sub_21C6EA794(v14, &qword_27CDF4028, &qword_21CBB9D88);
  v35 = v60;
  v36 = v59;
  v37 = v61;
  (*(v60 + 104))(v59, *MEMORY[0x277CDDDB0], v61);
  v65 = v18;
  v66 = v33;
  v67 = v31;
  v68 = v32;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v39 = v53;
  v40 = v54;
  sub_21CB84684();
  (*(v35 + 8))(v36, v37);
  (*(v55 + 8))(v34, v40);
  v63 = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF4078, &qword_21CBB9DD0);
  v65 = v40;
  v66 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v41 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF4080, &qword_21CBB9DD8);
  v42 = sub_21C6EADEC(&qword_27CDF4088, &qword_27CDF4080, &qword_21CBB9DD8, MEMORY[0x277CDDF68]);
  v65 = v41;
  v66 = v42;
  swift_getOpaqueTypeConformance2();
  v43 = v57;
  sub_21CB84894();
  return (*(v58 + 8))(v39, v43);
}

uint64_t sub_21C9CA5E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v59 = a2;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF4100, &qword_21CBB9E50);
  v57 = *(v62 - 8);
  MEMORY[0x28223BE20](v62);
  v54 = &v50 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF4108, &qword_21CBB9E58);
  MEMORY[0x28223BE20](v4 - 8);
  v58 = &v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v50 - v7;
  v9 = sub_21CB81024();
  v60 = *(v9 - 8);
  v61 = v9;
  MEMORY[0x28223BE20](v9);
  v52 = &v50 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v50 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF4110, &qword_21CBB9E60);
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF4118, &qword_21CBB9E68);
  MEMORY[0x28223BE20](v16 - 8);
  v56 = &v50 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v55 = &v50 - v19;
  v20 = sub_21C94D700();
  if (v20 >> 62)
  {
    v21 = sub_21CB85FA4();
  }

  else
  {
    v21 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v53 = a1;
  if (v21)
  {
    sub_21CB81014();
    v22 = sub_21CB81004();
    v24 = v23;
    v25 = (*(v60 + 8))(v13, v61);
    v51 = v8;
    v64 = v22;
    v65 = v24;
    MEMORY[0x28223BE20](v25);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF4120, &unk_21CBB9E70);
    sub_21C6EADEC(&qword_27CDF4128, &qword_27CDF4120, &unk_21CBB9E70, MEMORY[0x277CDE5A0]);
    sub_21C71F3FC();
    sub_21CB85014();
    v8 = v51;
    v26 = v55;
    (*(v15 + 32))();
    (*(v15 + 56))(v26, 0, 1, v14);
  }

  else
  {
    v26 = v55;
    (*(v15 + 56))(v55, 1, 1, v14);
  }

  v27 = sub_21C94CE44();
  if (v27 >> 62)
  {
    v44 = sub_21CB85FA4();

    if (v44)
    {
      goto LABEL_8;
    }

LABEL_11:
    v43 = 1;
    v42 = v57;
    goto LABEL_12;
  }

  v28 = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10);

  if (!v28)
  {
    goto LABEL_11;
  }

LABEL_8:
  v55 = &v50;
  MEMORY[0x28223BE20](v29);
  v30 = v53;
  sub_21CB81014();
  v31 = v52;
  sub_21CB81014();
  v32 = sub_21CB80FF4();
  v34 = v33;
  v35 = *(v60 + 8);
  v36 = v31;
  v37 = v61;
  v35(v36, v61);
  v35(v13, v37);
  v64 = v32;
  v65 = v34;
  sub_21C71F3FC();
  v64 = sub_21CB84054();
  v65 = v38;
  v66 = v39 & 1;
  v67 = v40;
  sub_21C9CAFC8(v30, v63);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF4120, &unk_21CBB9E70);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF4130, &qword_21CBB1B70);
  sub_21C6EADEC(&qword_27CDF4128, &qword_27CDF4120, &unk_21CBB9E70, MEMORY[0x277CDE5A0]);
  sub_21C87DED8();
  v41 = v54;
  sub_21CB85044();
  v42 = v57;
  (*(v57 + 32))(v8, v41, v62);
  v43 = 0;
LABEL_12:
  (*(v42 + 56))(v8, v43, 1, v62);
  v45 = v56;
  sub_21C6EDBAC(v26, v56, &qword_27CDF4118, &qword_21CBB9E68);
  v46 = v58;
  sub_21C6EDBAC(v8, v58, &qword_27CDF4108, &qword_21CBB9E58);
  v47 = v59;
  sub_21C6EDBAC(v45, v59, &qword_27CDF4118, &qword_21CBB9E68);
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF4140, &qword_21CBB9E80);
  sub_21C6EDBAC(v46, v47 + *(v48 + 48), &qword_27CDF4108, &qword_21CBB9E58);
  sub_21C6EA794(v8, &qword_27CDF4108, &qword_21CBB9E58);
  sub_21C6EA794(v26, &qword_27CDF4118, &qword_21CBB9E68);
  sub_21C6EA794(v46, &qword_27CDF4108, &qword_21CBB9E58);
  return sub_21C6EA794(v45, &qword_27CDF4118, &qword_21CBB9E68);
}

uint64_t sub_21C9CAD8C(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF4148, qword_21CBB9E88);
  sub_21C9CDC80();
  return sub_21CB83F34();
}

uint64_t sub_21C9CADF8(uint64_t a1, uint64_t (*a2)(__n128), uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for PMAccountHistoryView(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6 - 8);
  v13[1] = a2(v9);
  swift_getKeyPath(byte_21CBB9EA0);
  sub_21C9CD920(a1, v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PMAccountHistoryView);
  v10 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v11 = swift_allocObject();
  sub_21C9CDAC8(v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v11 + v10, type metadata accessor for PMAccountHistoryView);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF4160, &qword_21CBA3DF8);
  sub_21C6EADEC(&qword_27CDEC278, &qword_27CDF4160, &qword_21CBA3DF8, MEMORY[0x277D83980]);
  sub_21C9CDD04();
  return sub_21CB84FD4();
}

uint64_t sub_21C9CAFC8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_21CB81024();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for PMAccount.Storage(0);
  MEMORY[0x28223BE20](v8);
  v10 = (v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = type metadata accessor for PMAccount(0);
  MEMORY[0x28223BE20](v11);
  v13 = v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *a1;
  v15 = sub_21C94D700();
  if (v15 >> 62)
  {
    v29[0] = v5;
    v28 = sub_21CB85FA4();
    v5 = v29[0];

    if (!v28)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v16 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);

    if (!v16)
    {
LABEL_8:
      result = 0;
      v24 = 0;
      v27 = 0;
      v25 = 0;
      goto LABEL_9;
    }
  }

  swift_getKeyPath(aH_83, v5);
  v29[3] = v14;
  sub_21C9CD7EC(&qword_27CDF4060, type metadata accessor for PMAccountHistoryModel, &unk_21CBB3238);
  sub_21CB810D4();

  v17 = OBJC_IVAR____TtC17PasswordManagerUI21PMAccountHistoryModel__account;
  swift_beginAccess();
  sub_21C9CD920(v14 + v17, v13, type metadata accessor for PMAccount);
  sub_21C9CD920(&v13[*(v11 + 24)], v10, type metadata accessor for PMAccount.Storage);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_21C7195A0(v13, type metadata accessor for PMAccount);
    sub_21C7195A0(v10, type metadata accessor for PMAccount.Storage);
    goto LABEL_8;
  }

  v18 = *v10;
  v19 = [*v10 isCurrentUserOriginalContributor];

  sub_21C7195A0(v13, type metadata accessor for PMAccount);
  if (!v19)
  {
    goto LABEL_8;
  }

  sub_21CB81014();
  v20 = sub_21CB81004();
  v22 = v21;
  (*(v29[0] + 8))(v7, v4);
  v29[1] = v20;
  v29[2] = v22;
  sub_21C71F3FC();
  result = sub_21CB84054();
  v27 = v26 & 1;
LABEL_9:
  *a2 = result;
  a2[1] = v24;
  a2[2] = v27;
  a2[3] = v25;
  return result;
}

uint64_t sub_21C9CB364()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF4080, &qword_21CBB9DD8);
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v6 - v2;
  sub_21C9CB488(&v6 - v2);
  v4 = sub_21C6EADEC(&qword_27CDF4088, &qword_27CDF4080, &qword_21CBB9DD8, MEMORY[0x277CDDF68]);
  MEMORY[0x21CF131E0](v3, v0, v4);
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_21C9CB488@<X0>(uint64_t a1@<X8>)
{
  v59 = a1;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF4090, &unk_21CBB9DE0);
  MEMORY[0x28223BE20](v58);
  v57 = &v47 - v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC010, &qword_21CBAA950);
  v55 = *(v3 - 8);
  v56 = v3;
  MEMORY[0x28223BE20](v3);
  v54 = &v47 - v4;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF40A0, &qword_21CBB9DF0);
  v5 = *(v51 - 8);
  MEMORY[0x28223BE20](v51);
  v49 = &v47 - v6;
  v7 = sub_21CB83604();
  MEMORY[0x28223BE20](v7 - 8);
  v52 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF40A8, &qword_21CBB9DF8);
  v48 = *(v50 - 8);
  MEMORY[0x28223BE20](v50);
  v47 = &v47 - v9;
  v10 = type metadata accessor for PMAccount.Storage(0);
  MEMORY[0x28223BE20](v10);
  v12 = (&v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = type metadata accessor for PMAccount(0);
  v14 = v13 - 8;
  MEMORY[0x28223BE20](v13);
  v16 = &v47 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF40B0, &qword_21CBB9E00);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = &v47 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v21 = MEMORY[0x28223BE20](v20).n128_u64[0];
  v23 = &v47 - v22;
  v53 = v1;
  v24 = *v1;
  swift_getKeyPath(aH_83, v21);
  v62 = v24;
  sub_21C9CD7EC(&qword_27CDF4060, type metadata accessor for PMAccountHistoryModel, &unk_21CBB3238);
  sub_21CB810D4();

  v25 = OBJC_IVAR____TtC17PasswordManagerUI21PMAccountHistoryModel__account;
  swift_beginAccess();
  sub_21C9CD920(v24 + v25, v16, type metadata accessor for PMAccount);
  sub_21C9CD920(&v16[*(v14 + 32)], v12, type metadata accessor for PMAccount.Storage);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_21C7195A0(v16, type metadata accessor for PMAccount);
    sub_21C7195A0(v12, type metadata accessor for PMAccount.Storage);
LABEL_5:
    v36 = v51;
    (*(v5 + 56))(v19, 1, 1, v51);
    v37 = sub_21C6EADEC(&unk_27CDF40B8, &qword_27CDF40A8, &qword_21CBB9DF8, MEMORY[0x277CDD7A8]);
    v60 = v50;
    v61 = v37;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    MEMORY[0x21CF13220](v19, v36, OpaqueTypeConformance2);
    sub_21C6EA794(v19, &qword_27CDF40B0, &qword_21CBB9E00);
    v29 = v53;
    goto LABEL_6;
  }

  v26 = *v12;
  v27 = [*v12 isCurrentUserOriginalContributor];

  sub_21C7195A0(v16, type metadata accessor for PMAccount);
  if (!v27)
  {
    goto LABEL_5;
  }

  v28 = sub_21CB835B4();
  MEMORY[0x28223BE20](v28);
  v29 = v53;
  *(&v47 - 2) = v53;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF40C8, &unk_21CBB9E08);
  sub_21C9CD83C();
  v30 = v47;
  sub_21CB82194();
  v31 = sub_21C6EADEC(&unk_27CDF40B8, &qword_27CDF40A8, &qword_21CBB9DF8, MEMORY[0x277CDD7A8]);
  v33 = v49;
  v32 = v50;
  MEMORY[0x21CF131E0](v30, v50, v31);
  v34 = v51;
  (*(v5 + 16))(v19, v33, v51);
  (*(v5 + 56))(v19, 0, 1, v34);
  v60 = v32;
  v61 = v31;
  v35 = swift_getOpaqueTypeConformance2();
  MEMORY[0x21CF13220](v19, v34, v35);
  sub_21C6EA794(v19, &qword_27CDF40B0, &qword_21CBB9E00);
  (*(v5 + 8))(v33, v34);
  (*(v48 + 8))(v30, v32);
LABEL_6:
  v39 = sub_21CB835C4();
  MEMORY[0x28223BE20](v39);
  *(&v47 - 2) = v29;
  type metadata accessor for PMPlatformRoleButton(0);
  sub_21C9CD7EC(&qword_27CDEC040, type metadata accessor for PMPlatformRoleButton, &unk_21CBA2ED8);
  v40 = v54;
  sub_21CB82194();
  v41 = v57;
  v42 = *(v58 + 48);
  sub_21C7725E4(v23, v57);
  v43 = v55;
  v44 = v41 + v42;
  v45 = v56;
  (*(v55 + 16))(v44, v40, v56);
  sub_21CB83394();
  (*(v43 + 8))(v40, v45);
  return sub_21C6EA794(v23, &qword_27CDF40B0, &qword_21CBB9E00);
}

int *sub_21C9CBCCC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v39 = a1;
  v44 = a2;
  v43 = sub_21CB81024();
  v3 = *(v43 - 8);
  MEMORY[0x28223BE20](v43);
  v5 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for PMAccountHistoryView(0);
  v7 = v6 - 8;
  v8 = *(v6 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBE38, &unk_21CBA3770);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v38 - v11;
  sub_21CB81ED4();
  v13 = sub_21CB81F14();
  (*(*(v13 - 8) + 56))(v12, 0, 1, v13);
  v40 = type metadata accessor for PMAccountHistoryView;
  sub_21C9CD920(a1, &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PMAccountHistoryView);
  v14 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v15 = swift_allocObject();
  sub_21C9CDAC8(&v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v15 + v14, type metadata accessor for PMAccountHistoryView);
  sub_21CB84D94();
  sub_21CB81014();
  v16 = sub_21CB81004();
  v41 = v17;
  v42 = v16;
  (*(v3 + 8))(v5, v43);
  v18 = v39;
  v19 = v39 + *(v7 + 36);
  v20 = *v19;
  v21 = *(v19 + 8);
  v48 = v20;
  v49 = v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF40F0, &qword_21CBA2500);
  sub_21CB84D74();
  v22 = v45;
  v23 = v46;
  LODWORD(v43) = v47;
  v24 = v40;
  sub_21C9CD920(v18, &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v40);
  v25 = swift_allocObject();
  sub_21C9CDAC8(&v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v25 + v14, type metadata accessor for PMAccountHistoryView);
  sub_21C9CD920(v18, &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v24);
  v26 = swift_allocObject();
  sub_21C9CDAC8(&v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v26 + v14, type metadata accessor for PMAccountHistoryView);
  v27 = swift_allocObject();
  *(v27 + 16) = sub_21C9CD9A0;
  *(v27 + 24) = v25;
  v28 = swift_allocObject();
  *(v28 + 16) = sub_21C9CDA10;
  *(v28 + 24) = v26;
  KeyPath = swift_getKeyPath(byte_21CBB9E20);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF40C8, &unk_21CBB9E08);
  v31 = (v44 + *(v30 + 36));
  *v31 = KeyPath;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC000, &qword_21CBA27F0);
  swift_storeEnumTagMultiPayload();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF40E0, &qword_21CBB9E18);
  *(v31 + result[18]) = 0;
  v33 = (v31 + result[15]);
  v34 = v41;
  *v33 = v42;
  v33[1] = v34;
  v35 = v31 + result[16];
  *v35 = v22;
  *(v35 + 1) = v23;
  v35[16] = v43;
  *(v31 + result[17]) = 0;
  *(v31 + result[19]) = 2;
  v36 = (v31 + result[20]);
  *v36 = sub_21C8E1174;
  v36[1] = v27;
  v37 = (v31 + result[21]);
  *v37 = sub_21C9CDA80;
  v37[1] = v28;
  return result;
}

uint64_t sub_21C9CC1A0@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v55 = a1;
  v57 = a2;
  v2 = type metadata accessor for PMAccountHistoryView(0);
  v54 = *(v2 - 8);
  v52 = *(v54 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v51 = &v44 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBE38, &unk_21CBA3770);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v44 - v5;
  v7 = sub_21CB81024();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v44 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBE40, &unk_21CBA8200);
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v56 = &v44 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v53 = &v44 - v18;
  MEMORY[0x28223BE20](v19);
  v50 = &v44 - v20;
  MEMORY[0x28223BE20](v21);
  v49 = &v44 - v22;
  sub_21CB81014();
  sub_21CB81014();
  v23 = sub_21CB80FF4();
  v25 = v24;
  v26 = *(v8 + 8);
  v47 = v8 + 8;
  v48 = v7;
  v26(v10, v7);
  v26(v13, v7);
  v58 = v23;
  v59 = v25;
  sub_21CB81ED4();
  v27 = sub_21CB81F14();
  v28 = *(v27 - 8);
  v45 = *(v28 + 56);
  v46 = v28 + 56;
  v45(v6, 0, 1, v27);
  v29 = v51;
  sub_21C9CD920(v55, v51, type metadata accessor for PMAccountHistoryView);
  v30 = (*(v54 + 80) + 16) & ~*(v54 + 80);
  v31 = swift_allocObject();
  sub_21C9CDAC8(v29, v31 + v30, type metadata accessor for PMAccountHistoryView);
  sub_21C71F3FC();
  v32 = v49;
  sub_21CB84DC4();
  sub_21CB81014();
  v33 = sub_21CB81004();
  v35 = v34;
  v26(v13, v48);
  v58 = v33;
  v59 = v35;
  sub_21CB81EF4();
  v45(v6, 0, 1, v27);
  v36 = v50;
  sub_21CB84DC4();
  v37 = *(v15 + 16);
  v38 = v53;
  v37(v53, v32, v14);
  v39 = v56;
  v37(v56, v36, v14);
  v40 = v57;
  v37(v57, v38, v14);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0168, &qword_21CBB1D30);
  v37(&v40[*(v41 + 48)], v39, v14);
  v42 = *(v15 + 8);
  v42(v36, v14);
  v42(v32, v14);
  v42(v39, v14);
  return (v42)(v38, v14);
}

uint64_t sub_21C9CC74C()
{
  v0 = sub_21CB823B4();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21C94DBBC();
  type metadata accessor for PMAccountHistoryView(0);
  sub_21C95B2C8(v3);
  sub_21CB823A4();
  return (*(v1 + 8))(v3, v0);
}

double sub_21C9CC838@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v50 = a2;
  v49 = sub_21CB81024();
  v47 = *(v49 - 8);
  MEMORY[0x28223BE20](v49);
  v48 = &v46 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = type metadata accessor for PMAccount.MockData(0);
  MEMORY[0x28223BE20](v46);
  v5 = &v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for PMAccount.Storage(0);
  MEMORY[0x28223BE20](v6);
  v8 = (&v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF20B0, &unk_21CBA0090);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v46 - v13;
  v15 = type metadata accessor for PMAccount(0);
  v16 = v15 - 8;
  *&v17 = MEMORY[0x28223BE20](v15).n128_u64[0];
  v19 = &v46 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *a1;
  swift_getKeyPath(aH_83, v17);
  *&v56 = v20;
  sub_21C9CD7EC(&qword_27CDF4060, type metadata accessor for PMAccountHistoryModel, &unk_21CBB3238);
  sub_21CB810D4();

  v21 = OBJC_IVAR____TtC17PasswordManagerUI21PMAccountHistoryModel__account;
  swift_beginAccess();
  sub_21C9CD920(v20 + v21, v19, type metadata accessor for PMAccount);
  sub_21C9CD920(&v19[*(v16 + 32)], v8, type metadata accessor for PMAccount.Storage);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_21C7195A0(v19, type metadata accessor for PMAccount);
    sub_21C9CDAC8(v8, v5, type metadata accessor for PMAccount.MockData);
    sub_21C6EDBAC(&v5[*(v46 + 72)], v11, &unk_27CDF20B0, &unk_21CBA0090);
    v22 = type metadata accessor for PMAccount.MockData;
    v23 = v5;
  }

  else
  {
    v24 = *v8;
    sub_21CB85B94();

    v22 = type metadata accessor for PMAccount;
    v23 = v19;
  }

  sub_21C7195A0(v23, v22);
  sub_21C7C3490(v11, v14);
  v25 = sub_21CB85C44();
  v26 = (*(*(v25 - 8) + 48))(v14, 1, v25);
  sub_21C6EA794(v14, &unk_27CDF20B0, &unk_21CBA0090);
  v27 = (v47 + 8);
  if (v26 == 1)
  {
    v28 = v48;
    sub_21CB81014();
    v29 = sub_21CB81004();
    v31 = v30;
    (*v27)(v28, v49);
    *&v56 = v29;
    *(&v56 + 1) = v31;
    sub_21C71F3FC();
    v51 = sub_21CB84054();
    v52 = v32;
    v53 = v33 & 1;
    v54 = v34;
    v55 = 1;
  }

  else
  {
    v35 = v48;
    sub_21CB81014();
    v36 = sub_21CB81004();
    v38 = v37;
    (*v27)(v35, v49);
    *&v56 = v36;
    *(&v56 + 1) = v38;
    sub_21C71F3FC();
    v51 = sub_21CB84054();
    v52 = v39;
    v53 = v40 & 1;
    v54 = v41;
    v55 = 0;
  }

  sub_21CB83494();
  result = *&v56;
  v43 = v57;
  v44 = v58;
  v45 = v50;
  *v50 = v56;
  v45[1] = v43;
  *(v45 + 32) = v44;
  return result;
}

uint64_t sub_21C9CCD94@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v19 = a1;
  v3 = type metadata accessor for PMAccountHistoryView(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = sub_21CB81024();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for PMPlatformRoleButton(0);
  sub_21CB81EE4();
  sub_21CB81014();
  v11 = sub_21CB81004();
  v13 = v12;
  (*(v7 + 8))(v9, v6);
  sub_21C9CD920(v19, &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PMAccountHistoryView);
  v14 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v15 = swift_allocObject();
  result = sub_21C9CDAC8(&v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v15 + v14, type metadata accessor for PMAccountHistoryView);
  *a2 = v11;
  a2[1] = v13;
  v17 = (a2 + *(v10 + 24));
  *v17 = sub_21C9CDB48;
  v17[1] = v15;
  return result;
}

uint64_t sub_21C9CCFA8(uint64_t a1)
{
  v16 = sub_21CB82F84();
  v2 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE480, &qword_21CBA13D0);
  MEMORY[0x28223BE20](v5);
  v7 = &v15 - v6;
  v8 = sub_21CB823B4();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for PMAccountHistoryView(0);
  sub_21C6EDBAC(a1 + *(v12 + 24), v7, &qword_27CDEE480, &qword_21CBA13D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v9 + 32))(v11, v7, v8);
  }

  else
  {
    sub_21CB85B04();
    v13 = sub_21CB83C94();
    sub_21CB81C14();

    sub_21CB82F74();
    swift_getAtKeyPath();

    (*(v2 + 8))(v4, v16);
  }

  sub_21CB823A4();
  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_21C9CD230(uint64_t a1)
{
  type metadata accessor for PMAccountHistoryView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF40F0, &qword_21CBA2500);
  return sub_21CB84D64();
}

uint64_t sub_21C9CD2A4@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_21CB81024();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v25[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v6);
  v8 = &v25[-v7];
  sub_21CB81014();
  sub_21CB81014();
  v9 = sub_21CB80FF4();
  v11 = v10;
  v12 = *(v3 + 8);
  v12(v5, v2);
  v12(v8, v2);
  v26 = v9;
  v27 = v11;
  sub_21C71F3FC();
  v13 = sub_21CB84054();
  v15 = v14;
  LOBYTE(v8) = v16;
  v26 = sub_21CB84A64();
  v17 = sub_21CB83FC4();
  v19 = v18;
  v21 = v20;
  v23 = v22;
  sub_21C74A72C(v13, v15, v8 & 1);

  *a1 = v17;
  *(a1 + 8) = v19;
  *(a1 + 16) = v21 & 1;
  *(a1 + 24) = v23;
  return result;
}

void sub_21C9CD4A4(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 identifier];
  v4 = sub_21CB855C4();
  v6 = v5;

  *a2 = v4;
  a2[1] = v6;
}

uint64_t sub_21C9CD4FC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  v6 = type metadata accessor for PMAccount(0);
  *&v7 = MEMORY[0x28223BE20](v6 - 8).n128_u64[0];
  v9 = v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *a1;
  v11 = *a2;
  swift_getKeyPath(aH_83, v7);
  v18[1] = v11;
  sub_21C9CD7EC(&qword_27CDF4060, type metadata accessor for PMAccountHistoryModel, &unk_21CBB3238);
  swift_unknownObjectRetain();
  sub_21CB810D4();

  v12 = OBJC_IVAR____TtC17PasswordManagerUI21PMAccountHistoryModel__account;
  swift_beginAccess();
  sub_21C9CD920(v11 + v12, v9, type metadata accessor for PMAccount);
  v13 = PMAccount.userVisibleDomain.getter();
  if (!v14)
  {
    v13 = PMAccount.effectiveTitle.getter();
  }

  v15 = v13;
  v16 = v14;
  result = sub_21C7195A0(v9, type metadata accessor for PMAccount);
  *a3 = v10;
  a3[1] = v15;
  a3[2] = v16;
  return result;
}

unint64_t sub_21C9CD690()
{
  result = qword_27CDF4068;
  if (!qword_27CDF4068)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF4028, &qword_21CBB9D88);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF4018, &qword_21CBB9D78);
    sub_21CB829D4();
    sub_21C6EADEC(&unk_27CDF4050, &qword_27CDF4018, &qword_21CBB9D78, MEMORY[0x277CDE580]);
    sub_21C9CD7EC(&qword_27CDED1A0, MEMORY[0x277CDDAB8], MEMORY[0x277CDDAA8]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF4068);
  }

  return result;
}

uint64_t sub_21C9CD7EC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_21C9CD83C()
{
  result = qword_27CDF40D0;
  if (!qword_27CDF40D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF40C8, &unk_21CBB9E08);
    sub_21C6EADEC(&qword_27CDEBE50, &qword_27CDEBE40, &unk_21CBA8200, MEMORY[0x277CDF028]);
    sub_21C6EADEC(&qword_27CDF40D8, &unk_27CDF40E0, &qword_21CBB9E18, &unk_21CBAA4A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF40D0);
  }

  return result;
}

uint64_t sub_21C9CD920(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21C9CD9A0@<X0>(char *a1@<X8>)
{
  v3 = *(type metadata accessor for PMAccountHistoryView(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_21C9CC1A0(v4, a1);
}

double sub_21C9CDA10@<D0>(_OWORD *a1@<X8>)
{
  v3 = *(type metadata accessor for PMAccountHistoryView(0) - 8);
  v4 = (v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80)));

  return sub_21C9CC838(v4, a1);
}

double sub_21C9CDA80@<D0>(uint64_t a1@<X8>)
{
  (*(v1 + 16))(v6);
  v3 = v7;
  result = *v6;
  v5 = v6[1];
  *a1 = v6[0];
  *(a1 + 16) = v5;
  *(a1 + 32) = v3;
  return result;
}

uint64_t sub_21C9CDAC8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_21C9CDB60(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for PMAccountHistoryView(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

unint64_t sub_21C9CDC80()
{
  result = qword_27CDF4150;
  if (!qword_27CDF4150)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF4148, qword_21CBB9E88);
    sub_21C9CDD04();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF4150);
  }

  return result;
}

unint64_t sub_21C9CDD04()
{
  result = qword_27CDF4158;
  if (!qword_27CDF4158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF4158);
  }

  return result;
}

uint64_t type metadata accessor for PMShareWiFiNetworkButton(uint64_t a1)
{
  result = qword_27CDF4168;
  if (!qword_27CDF4168)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21C9CDEA0(uint64_t a1)
{
  type metadata accessor for PMWiFiNetwork(319);
  if (v1 <= 0x3F)
  {
    sub_21C735A14(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_21C9CDF48@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v44 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF4178, &qword_21CBB9F60);
  MEMORY[0x28223BE20](v3 - 8);
  v37[1] = v37 - v4;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF4180, &qword_21CBB9F68);
  v39 = *(v43 - 8);
  MEMORY[0x28223BE20](v43);
  v38 = v37 - v5;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF4188, &qword_21CBB9F70);
  MEMORY[0x28223BE20](v41);
  v7 = v37 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF4190, &qword_21CBB9F78);
  MEMORY[0x28223BE20](v8 - 8);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF4198, &qword_21CBB9F80);
  v40 = *(v42 - 8);
  MEMORY[0x28223BE20](v42);
  v10 = v37 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF41A0, &qword_21CBB9F88);
  v12 = v11 - 8;
  MEMORY[0x28223BE20](v11);
  v14 = v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = v37 - v16;
  v18 = type metadata accessor for PMWiFiIcon(0);
  v19 = v18[5];
  sub_21C84BF7C(v2, &v17[v19]);
  v20 = type metadata accessor for PMWiFiNetwork(0);
  (*(*(v20 - 8) + 56))(&v17[v19], 0, 1, v20);
  v21 = *(v2 + *(type metadata accessor for PMShareWiFiNetworkButton(0) + 20));
  *v17 = xmmword_21CBB9ED0;
  *(v17 + 1) = xmmword_21CBB9EE0;
  v17[v18[6]] = v21;
  v22 = v18[7];
  *&v17[v22] = swift_getKeyPath(asc_21CBB9F90);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB5E0, &qword_21CBA21D0);
  swift_storeEnumTagMultiPayload();
  KeyPath = swift_getKeyPath(asc_21CBB9F90);
  v24 = &v17[*(v12 + 44)];
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF41A8, &qword_21CBB9FC8);
  sub_21C74F0F8(v24 + *(v25 + 28));
  *v24 = KeyPath;
  sub_21C9CE860(v17, v14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF41B0, &unk_21CBB9FD0);
  swift_allocObject();
  MEMORY[0x21CF11F10](v14);
  sub_21CB82404();
  if (sub_21CB823F4())
  {
    v26 = sub_21CB84BA4();

    v48 = sub_21C9CE60C();
    v49 = v27;
    v46 = sub_21C9CE60C();
    v47 = v28;
    v45 = v26;
    sub_21C9CE9E0();
    sub_21C71F3FC();

    sub_21CB822A4();
    sub_21C9CE8D0();
    sub_21CB852D4();
    v29 = v40;
    v30 = v42;
    (*(v40 + 16))(v7, v10, v42);
    swift_storeEnumTagMultiPayload();
    sub_21C9CE924(&qword_27CDF41C0, &qword_27CDF4198, &qword_21CBB9F80);
    sub_21C9CE924(&qword_27CDF41C8, &qword_27CDF4180, &qword_21CBB9F68);
    sub_21CB83494();

    (*(v29 + 8))(v10, v30);
  }

  else
  {

    v48 = sub_21C9CE60C();
    v49 = v31;
    v46 = sub_21C9CE60C();
    v47 = v32;
    sub_21C71F3FC();
    sub_21CB82294();
    sub_21C9CE8D0();
    v33 = v38;
    sub_21CB852D4();
    v34 = v39;
    v35 = v43;
    (*(v39 + 16))(v7, v33, v43);
    swift_storeEnumTagMultiPayload();
    sub_21C9CE924(&qword_27CDF41C0, &qword_27CDF4198, &qword_21CBB9F80);
    sub_21C9CE924(&qword_27CDF41C8, &qword_27CDF4180, &qword_21CBB9F68);
    sub_21CB83494();
    (*(v34 + 8))(v33, v35);
  }

  return sub_21C9CE978(v17);
}

uint64_t sub_21C9CE60C()
{
  v1 = sub_21CB81024();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = v0[5];
  if (v5)
  {
    v6 = v0[4];

    sub_21CB81014();
    sub_21CB81004();
    (*(v2 + 8))(v4, v1);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB290, &qword_21CBA15C0);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_21CBA15B0;
    v9 = v0[2];
    v8 = v0[3];
    v10 = MEMORY[0x277D837D0];
    *(v7 + 56) = MEMORY[0x277D837D0];
    v11 = sub_21C7C0050();
    *(v7 + 32) = v9;
    *(v7 + 40) = v8;
    *(v7 + 96) = v10;
    *(v7 + 104) = v11;
    *(v7 + 64) = v11;
    *(v7 + 72) = v6;
    *(v7 + 80) = v5;
  }

  else
  {
    sub_21CB81014();
    sub_21CB81004();
    (*(v2 + 8))(v4, v1);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB290, &qword_21CBA15C0);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_21CBA0690;
    v14 = v0[2];
    v13 = v0[3];
    *(v12 + 56) = MEMORY[0x277D837D0];
    *(v12 + 64) = sub_21C7C0050();
    *(v12 + 32) = v14;
    *(v12 + 40) = v13;
  }

  v15 = sub_21CB85594();

  return v15;
}

uint64_t sub_21C9CE860(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF41A0, &qword_21CBB9F88);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_21C9CE8D0()
{
  result = qword_27CDF41B8;
  if (!qword_27CDF41B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF41B8);
  }

  return result;
}

uint64_t sub_21C9CE924(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_21C9CE978(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF41A0, &qword_21CBB9F88);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_21C9CE9E0()
{
  result = qword_27CDF41D0;
  if (!qword_27CDF41D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF41D0);
  }

  return result;
}

unint64_t sub_21C9CEA34()
{
  result = qword_27CDF41D8;
  if (!qword_27CDF41D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF41E0, &unk_21CBB9FE0);
    sub_21C9CE924(&qword_27CDF41C0, &qword_27CDF4198, &qword_21CBB9F80);
    sub_21C9CE924(&qword_27CDF41C8, &qword_27CDF4180, &qword_21CBB9F68);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF41D8);
  }

  return result;
}

uint64_t sub_21C9CEB3C(uint64_t a1)
{
  v2 = sub_21CB834E4();
  v3 = MEMORY[0x28223BE20](v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  return sub_21CB82DC4();
}

uint64_t sub_21C9CEC04@<X0>(_BYTE *a1@<X8>)
{
  result = sub_21CB82DE4();
  *a1 = result & 1;
  return result;
}

uint64_t sub_21C9CEC5C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, int a3@<W3>, uint64_t a4@<X8>)
{
  v58 = a3;
  v61 = a2;
  v57 = a1;
  v70 = a4;
  v71 = sub_21CB83274();
  v69 = *(v71 - 8);
  MEMORY[0x28223BE20](v71);
  v68 = &v54 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = type metadata accessor for PMAppSourceListRowLabelStyle(0);
  MEMORY[0x28223BE20](v67);
  v6 = (&v54 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = sub_21CB83124();
  MEMORY[0x28223BE20](v7 - 8);
  v56 = sub_21CB82F84();
  v55 = *(v56 - 8);
  MEMORY[0x28223BE20](v56);
  v54 = &v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_21CB81024();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v54 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEA4E8, &unk_21CBA28F0);
  v60 = *(v62 - 8);
  MEMORY[0x28223BE20](v62);
  v14 = &v54 - v13;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF41E8, &qword_21CBBA0D8);
  MEMORY[0x28223BE20](v59);
  v16 = &v54 - v15;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF41F0, &qword_21CBBA0E0);
  MEMORY[0x28223BE20](v64);
  v18 = &v54 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF41F8, &qword_21CBBA0E8);
  v65 = *(v19 - 8);
  v66 = v19;
  MEMORY[0x28223BE20](v19);
  v63 = &v54 - v20;
  sub_21CB81014();
  v21 = sub_21CB81004();
  v23 = v22;
  (*(v10 + 8))(v12, v9);
  v72 = v21;
  v73 = v23;
  sub_21C71F3FC();
  sub_21CB84CB4();
  swift_getKeyPath(aP_71);
  swift_getKeyPath(a0_38);
  sub_21CB81DB4();

  v24 = *(v72 + 16);

  if ((v58 & 1) == 0)
  {
    v25 = v61;

    sub_21CB85B04();
    v26 = sub_21CB83C94();
    sub_21CB81C14();

    v27 = v54;
    sub_21CB82F74();
    swift_getAtKeyPath();
    sub_21C7025C4(v25, 0);
    (*(v55 + 8))(v27, v56);
  }

  sub_21CB83114();
  sub_21CB83104();
  v72 = v24;
  sub_21CB830E4();
  sub_21CB83104();
  sub_21CB83144();
  v28 = sub_21CB84034();
  v30 = v29;
  v32 = v31 & 1;
  sub_21C9CF4F0();
  v33 = v62;
  sub_21CB84774();
  sub_21C74A72C(v28, v30, v32);

  LOBYTE(v28) = sub_21CB83D34();
  sub_21CB81F24();
  v35 = v34;
  v37 = v36;
  v39 = v38;
  v41 = v40;
  (*(v60 + 8))(v14, v33);
  v42 = &v16[*(v59 + 36)];
  *v42 = v28;
  *(v42 + 1) = v35;
  *(v42 + 2) = v37;
  *(v42 + 3) = v39;
  *(v42 + 4) = v41;
  v42[40] = 0;
  KeyPath = swift_getKeyPath(byte_21CBBA138);
  sub_21C772AC8(v16, v18);
  v44 = v64;
  v45 = &v18[*(v64 + 36)];
  *v45 = KeyPath;
  v45[8] = 0;
  *v6 = swift_getKeyPath(byte_21CBBA160);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBC90, &qword_21CBA5D20);
  swift_storeEnumTagMultiPayload();
  v46 = v67;
  v47 = v6 + *(v67 + 20);
  *v47 = swift_getKeyPath(byte_21CBBA198);
  v47[8] = 0;
  *(v6 + *(v46 + 24)) = 1;
  v48 = sub_21C9CF554();
  v49 = sub_21C9CF844(&qword_27CDECF90, type metadata accessor for PMAppSourceListRowLabelStyle, &unk_21CBB2930);
  v50 = v63;
  sub_21CB840E4();
  sub_21C81E164(v6);
  sub_21C772BB8(v18);
  v51 = v68;
  sub_21CB83254();
  v72 = v44;
  v73 = v46;
  v74 = v48;
  v75 = v49;
  swift_getOpaqueTypeConformance2();
  v52 = v66;
  sub_21CB84594();
  (*(v69 + 8))(v51, v71);
  return (*(v65 + 8))(v50, v52);
}

unint64_t sub_21C9CF4F0()
{
  result = qword_27CDEC0A0;
  if (!qword_27CDEC0A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEA4E8, &unk_21CBA28F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEC0A0);
  }

  return result;
}

unint64_t sub_21C9CF554()
{
  result = qword_27CDF4200;
  if (!qword_27CDF4200)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF41F0, &qword_21CBBA0E0);
    sub_21C9CF5E0();
    sub_21C9CF6A8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF4200);
  }

  return result;
}

unint64_t sub_21C9CF5E0()
{
  result = qword_27CDF4208;
  if (!qword_27CDF4208)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF41E8, &qword_21CBBA0D8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEA4E8, &unk_21CBA28F0);
    sub_21C9CF4F0();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF4208);
  }

  return result;
}

unint64_t sub_21C9CF6A8()
{
  result = qword_27CDF4210;
  if (!qword_27CDF4210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF4210);
  }

  return result;
}

unint64_t sub_21C9CF6FC()
{
  result = qword_27CDF4218;
  if (!qword_27CDF4218)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF4220, &qword_21CBBA1C8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF41F0, &qword_21CBBA0E0);
    type metadata accessor for PMAppSourceListRowLabelStyle(255);
    sub_21C9CF554();
    sub_21C9CF844(&qword_27CDECF90, type metadata accessor for PMAppSourceListRowLabelStyle, &unk_21CBB2930);
    swift_getOpaqueTypeConformance2();
    sub_21C9CF844(&qword_27CDEB908, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF4218);
  }

  return result;
}

uint64_t sub_21C9CF844(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t type metadata accessor for PMWiFiIcon(uint64_t a1)
{
  result = qword_27CDF4228;
  if (!qword_27CDF4228)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21C9CF900(uint64_t a1)
{
  sub_21C9CF9FC(319, &qword_27CDEE648, type metadata accessor for PMWiFiNetwork, MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    sub_21C9CF9FC(319, &qword_27CDEC498, MEMORY[0x277CDF3E0], MEMORY[0x277CDF468]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_21C9CF9FC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

double sub_21C9CFA8C@<D0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v45 = a1;
  v40 = sub_21CB82054();
  v3 = *(v40 - 8);
  MEMORY[0x28223BE20](v40);
  v5 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v38 - v7;
  v41 = sub_21CB84A44();
  v9 = *(v41 - 8);
  MEMORY[0x28223BE20](v41);
  v42 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_21CB82A84();
  v12 = v11 - 8;
  MEMORY[0x28223BE20](v11);
  v14 = &v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBB08, &qword_21CBA2B80);
  MEMORY[0x28223BE20](v43);
  v16 = &v38 - v15;
  *&v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBAF8, &qword_21CBBA2C0);
  MEMORY[0x28223BE20](v44);
  v18 = &v38 - v17;
  v19 = *v2;
  v20 = *(v12 + 28);
  v21 = *MEMORY[0x277CE0118];
  v22 = sub_21CB831A4();
  (*(*(v22 - 8) + 104))(&v14[v20], v21, v22);
  *v14 = v19;
  *(v14 + 1) = v19;
  if (*(v2 + *(type metadata accessor for PMWiFiIcon(0) + 24)) == 1)
  {
    (*(v9 + 104))(v42, *MEMORY[0x277CE0EE8], v41);
    v23 = sub_21CB84B44();
  }

  else
  {
    v39 = v2;
    sub_21C74F0F8(v8);
    v24 = v40;
    (*(v3 + 104))(v5, *MEMORY[0x277CDF3D0], v40);
    sub_21CB82044();
    v25 = *(v3 + 8);
    v25(v5, v24);
    v25(v8, v24);
    (*(v9 + 104))(v42, *MEMORY[0x277CE0EE8], v41);
    v23 = sub_21CB84B44();
    v2 = v39;
  }

  sub_21C9D03AC(v14, v16);
  v26 = v43;
  *&v16[*(v43 + 52)] = v23;
  *&v16[*(v26 + 56)] = 256;
  sub_21CB85214();
  sub_21CB82374();
  sub_21C716934(v16, v18, &qword_27CDEBB08, &qword_21CBA2B80);
  v27 = &v18[*(v44 + 36)];
  v28 = v50;
  *v27 = v49;
  *(v27 + 1) = v28;
  *(v27 + 2) = v51;
  v29 = sub_21CB85214();
  v31 = v30;
  sub_21C9CFF74(v2, &v46);
  v32 = v47;
  v33 = v48;
  v44 = v46;
  v34 = v18;
  v35 = v45;
  sub_21C716934(v34, v45, &qword_27CDEBAF8, &qword_21CBBA2C0);
  v36 = v35 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF4238, &unk_21CBBA2C8) + 36);
  result = *&v44;
  *v36 = v44;
  *(v36 + 16) = v32;
  *(v36 + 24) = v33;
  *(v36 + 32) = v29;
  *(v36 + 40) = v31;
  return result;
}

uint64_t sub_21C9CFF74@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBB58, &qword_21CBAF8A0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v28 - v5;
  v7 = sub_21CB84A44();
  v29 = *(v7 - 8);
  v30 = v7;
  MEMORY[0x28223BE20](v7);
  v31 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_21CB82054();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v28 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE678, &unk_21CBBA210);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v28 - v17;
  v19 = type metadata accessor for PMWiFiIcon(0);
  sub_21C6EF0A0(a1 + *(v19 + 20), v18);
  v20 = type metadata accessor for PMWiFiNetwork(0);
  if ((*(*(v20 - 8) + 48))(v18, 1, v20) == 1)
  {
    sub_21C6EA794(v18, &qword_27CDEE678, &unk_21CBBA210);
  }

  else
  {
    sub_21C864EF0(v18);
  }

  v21 = sub_21CB84BB4();
  if (*(a1 + *(v19 + 24)) == 1)
  {
    v22 = sub_21CB84AD4();
  }

  else
  {
    sub_21C74F0F8(v15);
    (*(v10 + 104))(v12, *MEMORY[0x277CDF3D0], v9);
    sub_21CB82044();
    v23 = *(v10 + 8);
    v23(v12, v9);
    v23(v15, v9);
    (*(v29 + 104))(v31, *MEMORY[0x277CE0EE8], v30);
    v22 = sub_21CB84B44();
  }

  v24 = v22;
  v25 = sub_21CB83DC4();
  (*(*(v25 - 8) + 56))(v6, 1, 1, v25);
  v26 = sub_21CB83E14();
  sub_21C6EA794(v6, &qword_27CDEBB58, &qword_21CBAF8A0);
  result = swift_getKeyPath(byte_21CBBA2D8);
  *a2 = v21;
  a2[1] = v24;
  a2[2] = result;
  a2[3] = v26;
  return result;
}

uint64_t sub_21C9D03AC(uint64_t a1, uint64_t a2)
{
  v4 = sub_21CB82A84();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_21C9D0410()
{
  result = qword_27CDF4240;
  if (!qword_27CDF4240)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF4238, &unk_21CBBA2C8);
    sub_21C7E9188();
    sub_21C6EADEC(&qword_27CDF4248, &qword_27CDF4250, &qword_21CBBA308, MEMORY[0x277CDFC88]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF4240);
  }

  return result;
}

uint64_t sub_21C9D04F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  v35[1] = a5;
  v9 = sub_21CB83124();
  MEMORY[0x28223BE20](v9 - 8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF4258, &qword_21CBBA3E8);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = v35 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF4260, &qword_21CBBA3F0);
  MEMORY[0x28223BE20](v14);
  v16 = v35 - v15;
  v35[4] = a1;
  v35[5] = a2;
  v35[6] = a3;
  v36 = a4 & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF4268, &unk_21CBBA3F8);
  sub_21C9D1170();
  sub_21CB84C84();
  swift_getKeyPath(aP_72);
  swift_getKeyPath(aP_73);
  sub_21CB81DB4();

  v17 = *(v37 + 16);

  sub_21CB83114();
  sub_21CB83104();
  v37 = v17;
  sub_21CB830E4();
  sub_21CB83104();
  sub_21CB83144();
  v18 = sub_21CB84034();
  v20 = v19;
  LOBYTE(a1) = v21 & 1;
  sub_21C9D1290();
  sub_21CB84774();
  sub_21C74A72C(v18, v20, a1);

  v22 = sub_21CB83D34();
  sub_21CB81F24();
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  (*(v11 + 8))(v13, v10);
  v31 = &v16[*(v14 + 36)];
  *v31 = v22;
  *(v31 + 1) = v24;
  *(v31 + 2) = v26;
  *(v31 + 3) = v28;
  *(v31 + 4) = v30;
  v31[40] = 0;
  sub_21CB85184();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF4288, &qword_21CBBA458);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF4290, &qword_21CBBA460);
  v32 = sub_21C9D12F4();
  sub_21C9D13BC();
  v33 = sub_21C830EB0();
  v37 = v14;
  v38 = &type metadata for PMAccountsListNavigationCellLabelStyle;
  v39 = v32;
  v40 = v33;
  swift_getOpaqueTypeConformance2();
  sub_21CB84964();
  return sub_21C772EC0(v16);
}

uint64_t sub_21C9D094C@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_21CB81024();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21CB81014();
  v6 = sub_21CB81004();
  v8 = v7;
  (*(v3 + 8))(v5, v2);
  v13[0] = v6;
  v13[1] = v8;
  sub_21C71F3FC();
  result = sub_21CB84054();
  *a1 = result;
  *(a1 + 8) = v10;
  *(a1 + 16) = v11 & 1;
  *(a1 + 24) = v12;
  return result;
}

uint64_t sub_21C9D0A78@<X0>(uint64_t a1@<X2>, char a2@<W3>, uint64_t a3@<X8>)
{
  v29 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF42A8, &qword_21CBBA490);
  v28 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v27 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF42B0, &qword_21CBBA498);
  MEMORY[0x28223BE20](v8);
  v10 = (&v27 - v9);
  v11 = sub_21CB82F84();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    if ((a1 & 1) == 0)
    {
LABEL_3:
      v15 = sub_21CB84BB4();
      v16 = sub_21CB84AE4();
      v10->i64[0] = v15;
      v10->i64[1] = v16;
      v10[1] = vdupq_n_s64(0x4040000000000000uLL);
      v10[2].i64[0] = 0x4018000000000000;
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDED698, &unk_21CBB8140);
      sub_21C830D18();
      v17 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF4278, &qword_21CBBA408);
      v18 = MEMORY[0x277CE1088];
      v19 = MEMORY[0x277CE1078];
      v30 = MEMORY[0x277CE1088];
      v31 = MEMORY[0x277CE1078];
      OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
      v30 = v18;
      v31 = MEMORY[0x277CE1350];
      v32 = v17;
      v33 = v19;
      v34 = MEMORY[0x277CE1340];
      v35 = OpaqueTypeConformance2;
      swift_getOpaqueTypeConformance2();
      return sub_21CB83494();
    }
  }

  else
  {

    sub_21CB85B04();
    v22 = sub_21CB83C94();
    sub_21CB81C14();

    sub_21CB82F74();
    swift_getAtKeyPath();
    sub_21C7025C4(a1, 0);
    (*(v12 + 8))(v14, v11);
    if ((v30 & 1) == 0)
    {
      goto LABEL_3;
    }
  }

  v36 = sub_21CB84BB4();
  sub_21CB85184();
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF4278, &qword_21CBBA408);
  v24 = MEMORY[0x277CE1088];
  v30 = MEMORY[0x277CE1088];
  v31 = MEMORY[0x277CE1078];
  v26 = swift_getOpaqueTypeConformance2();
  sub_21CB84974();

  v25 = v28;
  (*(v28 + 16))(v10, v7, v5);
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDED698, &unk_21CBB8140);
  sub_21C830D18();
  v30 = v24;
  v31 = MEMORY[0x277CE1350];
  v32 = v23;
  v33 = MEMORY[0x277CE1078];
  v34 = MEMORY[0x277CE1340];
  v35 = v26;
  swift_getOpaqueTypeConformance2();
  sub_21CB83494();
  return (*(v25 + 8))(v7, v5);
}

uint64_t sub_21C9D0F48(void *a1)
{
  v2 = sub_21CB82724();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7[1] = *a1;
  sub_21CB82714();
  sub_21CB84234();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_21C9D1044@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  KeyPath = swift_getKeyPath(asc_21CBBA468);
  sub_21C772F30(a1, a2);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF4288, &qword_21CBBA458);
  v6 = a2 + *(result + 36);
  *v6 = KeyPath;
  *(v6 + 8) = 0;
  return result;
}

uint64_t sub_21C9D10B0()
{
  swift_getKeyPath(asc_21CBBA468);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF4260, &qword_21CBBA3F0);
  sub_21C9D12F4();
  sub_21C830EB0();
  sub_21CB840E4();
}

unint64_t sub_21C9D1170()
{
  result = qword_27CDF4270;
  if (!qword_27CDF4270)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF4268, &unk_21CBBA3F8);
    sub_21C830D18();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF4278, &qword_21CBBA408);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF4270);
  }

  return result;
}

unint64_t sub_21C9D1290()
{
  result = qword_27CDF4280;
  if (!qword_27CDF4280)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF4258, &qword_21CBBA3E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF4280);
  }

  return result;
}

unint64_t sub_21C9D12F4()
{
  result = qword_27CDF4298;
  if (!qword_27CDF4298)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF4260, &qword_21CBBA3F0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF4258, &qword_21CBBA3E8);
    sub_21C9D1290();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF4298);
  }

  return result;
}

unint64_t sub_21C9D13BC()
{
  result = qword_27CDF42A0;
  if (!qword_27CDF42A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF4288, &qword_21CBBA458);
    sub_21C9D12F4();
    sub_21C9CF6A8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF42A0);
  }

  return result;
}

uint64_t type metadata accessor for PMGroupInvitationView(uint64_t a1)
{
  result = qword_27CDF42B8;
  if (!qword_27CDF42B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21C9D14BC(uint64_t a1)
{
  type metadata accessor for PMSharingGroup(319);
  if (v1 <= 0x3F)
  {
    sub_21C722638(319, &qword_27CDEE2A8, MEMORY[0x277D839B0], MEMORY[0x277CE11F8]);
    if (v3 <= 0x3F)
    {
      sub_21C9D15F8(319, v2);
      if (v4 <= 0x3F)
      {
        sub_21C9D1650(319);
        if (v5 <= 0x3F)
        {
          sub_21C9BA6D4(319);
          if (v6 <= 0x3F)
          {
            sub_21C722638(319, &qword_27CDED658, &type metadata for PMAccountsNavigationStyle, MEMORY[0x277CDF468]);
            if (v7 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_21C9D15F8(uint64_t a1, __n128 a2)
{
  if (!qword_27CDF42C8)
  {
    type metadata accessor for PMGroupMemberImageModel(255);
    v2 = sub_21CB85E54();
    if (!v3)
    {
      atomic_store(v2, &qword_27CDF42C8);
    }
  }
}

void sub_21C9D1650(uint64_t a1)
{
  if (!qword_27CDF42D0)
  {
    type metadata accessor for PMGroupMemberImageCache();
    sub_21C9D6288(&qword_27CDEECA8, type metadata accessor for PMGroupMemberImageCache, &unk_21CBBBA3C);
    v1 = sub_21CB826A4();
    if (!v2)
    {
      atomic_store(v1, &qword_27CDF42D0);
    }
  }
}

uint64_t sub_21C9D1728@<X0>(uint64_t a1@<X8>)
{
  v123 = a1;
  v2 = sub_21CB83874();
  v121 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v4 = &v89 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_21CB83274();
  v120 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v119 = &v89 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_21CB83A34();
  v117 = *(v7 - 8);
  v118 = v7;
  MEMORY[0x28223BE20](v7);
  v116 = &v89 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_21CB81024();
  v104 = *(v9 - 8);
  v105 = v9;
  MEMORY[0x28223BE20](v9);
  v103 = &v89 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v124 = type metadata accessor for PMGroupInvitationView(0);
  v98 = *(v124 - 1);
  v11 = *(v98 + 64);
  MEMORY[0x28223BE20](v124);
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF42D8, &qword_21CBBA508);
  MEMORY[0x28223BE20](v100);
  v13 = &v89 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF42E0, &qword_21CBBA510);
  v101 = *(v14 - 8);
  v102 = v14;
  MEMORY[0x28223BE20](v14);
  v99 = &v89 - v15;
  v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF42E8, &qword_21CBBA518);
  MEMORY[0x28223BE20](v126);
  v125 = &v89 - v16;
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF42F0, &qword_21CBBA520);
  v106 = *(v108 - 8);
  MEMORY[0x28223BE20](v108);
  v127 = &v89 - v17;
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF42F8, &qword_21CBBA528);
  v109 = *(v111 - 8);
  MEMORY[0x28223BE20](v111);
  v107 = &v89 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF4300, &qword_21CBBA530);
  v112 = *(v19 - 8);
  v113 = v19;
  MEMORY[0x28223BE20](v19);
  v110 = &v89 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF4308, &qword_21CBBA538);
  v122 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v115 = &v89 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v114 = &v89 - v24;
  sub_21CB25D9C(v141);
  if (v143)
  {
    v94 = v21;
    v95 = v5;
    v96 = v4;
    v97 = v2;
    v148[0] = v141[0];
    v148[1] = v141[1];
    v149 = v142;
    v150 = v143;
    v151 = v144;
    v152 = v145;
    v153 = v146;
    v154 = v147;
    v25 = v13;
    *v13 = sub_21CB832E4();
    *(v13 + 1) = 0;
    v13[16] = 1;
    v26 = &v13[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF4310, &qword_21CBBA540) + 44)];
    *v26 = sub_21CB83054();
    *(v26 + 1) = 0;
    v26[16] = 1;
    v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF4318, &unk_21CBBA548);
    sub_21C9D2884(v1, v148, &v26[*(v27 + 44)]);
    v28 = v1 + *(v124 + 5);
    v29 = *v28;
    v30 = *(v28 + 8);
    LOBYTE(v28) = *(v28 + 16);
    v129 = v29;
    v130 = v30;
    LOBYTE(v131) = v28;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDECFE8, &unk_21CBA9A90);
    sub_21CB84F54();
    v128 = v1;
    v90 = v140;
    sub_21C9D5C48(v1, &v89 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PMGroupInvitationView);
    v31 = *(v98 + 80);
    v32 = (v31 + 16) & ~v31;
    v91 = v32 + v11;
    v92 = v31;
    v33 = swift_allocObject();
    v93 = v32;
    v98 = &v89 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
    sub_21C9D5CB0(v98, v33 + v32, type metadata accessor for PMGroupInvitationView);
    v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF4320, &unk_21CBBA558);
    v89 = sub_21C6EADEC(&qword_27CDF4328, &qword_27CDF42D8, &qword_21CBBA508, MEMORY[0x277CE1198]);
    v35 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF3E20, &unk_21CBB9760);
    v36 = sub_21CB83994();
    v37 = sub_21C9C11A8();
    v129 = v35;
    v130 = v36;
    v131 = v37;
    v132 = MEMORY[0x277CDE2B8];
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v38 = v34;
    v39 = v99;
    v40 = v100;
    sub_21CB847B4();
    v41 = v128;

    sub_21C6EA794(v25, &qword_27CDF42D8, &qword_21CBBA508);
    v138 = 0xD000000000000016;
    v139 = 0x800000021CB96880;
    v42 = v124;
    sub_21CB852C4();
    v129 = v40;
    v130 = v38;
    v131 = v89;
    v132 = OpaqueTypeConformance2;
    swift_getOpaqueTypeConformance2();
    v43 = v125;
    v44 = v102;
    sub_21CB845E4();
    (*(v101 + 8))(v39, v44);
    v45 = (v41 + *(v42 + 9));
    swift_getKeyPath(byte_21CBBA568);
    swift_getKeyPath(byte_21CBBA590);
    sub_21CB81DB4();

    LOBYTE(v38) = v129;
    KeyPath = swift_getKeyPath(byte_21CBBA5B0);
    v47 = swift_allocObject();
    *(v47 + 16) = v38;
    v48 = &v43[*(v126 + 36)];
    *v48 = KeyPath;
    v48[1] = sub_21C735744;
    v48[2] = v47;
    swift_getKeyPath(aX_52);
    swift_getKeyPath(a8_28);
    sub_21CB81DB4();

    if (v129 && (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDED298, &qword_21CBA6570), sub_21C82A2F0(), (swift_dynamicCast() & 1) != 0))
    {
      v49 = v138;
      [v138 safari_isOrContainsNetworkUnavailableError];
    }

    else
    {
      v49 = 0;
    }

    v50 = v103;
    sub_21CB81014();
    v51 = sub_21CB81004();
    v53 = v52;

    (*(v104 + 8))(v50, v105);
    v138 = v51;
    v139 = v53;
    v124 = *v45;
    v105 = type metadata accessor for PMGroupInvitationModel(0);
    sub_21C9D6288(&qword_27CDF3D20, type metadata accessor for PMGroupInvitationModel, &unk_21CBB93B8);
    sub_21CB82684();
    swift_getKeyPath(asc_21CBBA628);
    sub_21CB82694();

    swift_getKeyPath(aX_52);
    swift_getKeyPath(a8_28);
    sub_21CB81DB4();

    v54 = v136;
    v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDED298, &qword_21CBA6570);
    v103 = sub_21C9D57F4();
    v104 = sub_21C71F3FC();
    v55 = v126;
    v56 = v125;
    sub_21CB84734();

    sub_21C6EA794(v56, &qword_27CDF42E8, &qword_21CBBA518);
    v57 = type metadata accessor for PMSharingGroup(0);
    v58 = (v128 + *(v57 + 20));
    v59 = *v58;
    v60 = v58[1];
    v61 = sub_21C9BD434(v57);
    v62 = sub_21C7C2FB4(v59, v60, v61 & 1);
    v125 = v63;
    v136 = v62;
    v137 = v63;
    sub_21CB82684();
    swift_getKeyPath(byte_21CBBA650);
    sub_21CB82694();

    v124 = &v89;
    LODWORD(v105) = v140;
    MEMORY[0x28223BE20](v64);
    v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1748, &qword_21CBBDF70);
    v129 = v55;
    v130 = MEMORY[0x277D837D0];
    v131 = MEMORY[0x277CE1428];
    v132 = v102;
    v66 = v104;
    v133 = v103;
    v134 = v104;
    v135 = MEMORY[0x277CE1410];
    v67 = swift_getOpaqueTypeConformance2();
    v88 = sub_21C6EADEC(&qword_27CDF1750, &qword_27CDF1748, &qword_21CBBDF70, MEMORY[0x277CE14C0]);
    v68 = v107;
    v69 = v108;
    v70 = v127;
    sub_21CB84764();

    (*(v106 + 8))(v70, v69);
    v71 = v116;
    sub_21CB83A24();
    v129 = v69;
    v130 = MEMORY[0x277D837D0];
    v131 = v65;
    v132 = v67;
    v133 = v66;
    v134 = v88;
    v72 = swift_getOpaqueTypeConformance2();
    v74 = v110;
    v73 = v111;
    sub_21CB844F4();
    (*(v117 + 8))(v71, v118);
    (*(v109 + 8))(v68, v73);
    v75 = v119;
    sub_21CB83254();
    v129 = v73;
    v130 = v72;
    swift_getOpaqueTypeConformance2();
    v76 = v115;
    v77 = v113;
    sub_21CB84614();
    (*(v120 + 8))(v75, v95);
    (*(v112 + 8))(v74, v77);
    v78 = v96;
    sub_21CB83864();
    v79 = v98;
    sub_21C9D5C48(v128, v98, type metadata accessor for PMGroupInvitationView);
    v80 = swift_allocObject();
    sub_21C9D5CB0(v79, v80 + v93, type metadata accessor for PMGroupInvitationView);
    v81 = v114;
    v82 = v94;
    sub_21CB828A4();
    sub_21C6EA794(v141, &qword_27CDECC50, &unk_21CBB52A0);

    (*(v121 + 8))(v78, v97);
    sub_21C6EA794(v76, &qword_27CDF4308, &qword_21CBBA538);
    v83 = v123;
    sub_21C773330(v81, v123);
    return (*(v122 + 56))(v83, 0, 1, v82);
  }

  else
  {
    v85 = v123;
    v86 = *(v122 + 56);

    return v86(v85, 1, 1, v21);
  }
}

uint64_t sub_21C9D2884@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v21 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF4338, &qword_21CBBA700);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v20 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF4340, &qword_21CBBA708);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v20 - v15;
  sub_21C9D44F0(a1, &v20 - v15);
  *v10 = sub_21CB832F4();
  *(v10 + 1) = 0;
  v10[16] = 1;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF4348, &qword_21CBBA710);
  sub_21C9D2AB0(a1, v21, &v10[*(v17 + 44)]);
  sub_21C6EDBAC(v16, v13, &qword_27CDF4340, &qword_21CBBA708);
  sub_21C6EDBAC(v10, v7, &qword_27CDF4338, &qword_21CBBA700);
  sub_21C6EDBAC(v13, a3, &qword_27CDF4340, &qword_21CBBA708);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF4350, &qword_21CBBA718);
  sub_21C6EDBAC(v7, a3 + *(v18 + 48), &qword_27CDF4338, &qword_21CBBA700);
  sub_21C6EA794(v10, &qword_27CDF4338, &qword_21CBBA700);
  sub_21C6EA794(v16, &qword_27CDF4340, &qword_21CBBA708);
  sub_21C6EA794(v7, &qword_27CDF4338, &qword_21CBBA700);
  return sub_21C6EA794(v13, &qword_27CDF4340, &qword_21CBBA708);
}

uint64_t sub_21C9D2AB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v50 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF4358, &qword_21CBBA720);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v43 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF4360, &qword_21CBBA728);
  v9 = v8 - 8;
  MEMORY[0x28223BE20](v8);
  v49 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v43 - v12;
  MEMORY[0x28223BE20](v14);
  v51 = &v43 - v15;
  v48 = sub_21CB84FB4();
  v45 = *(v48 - 8);
  v16 = v45;
  MEMORY[0x28223BE20](v48);
  v47 = &v43 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v43 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF4368, &qword_21CBBA730);
  MEMORY[0x28223BE20](v21 - 8);
  v23 = &v43 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v26 = &v43 - v25;
  *v26 = sub_21CB83054();
  *(v26 + 1) = 0;
  v26[16] = 1;
  v27 = &v26[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF4370, &qword_21CBBA738) + 44)];
  v46 = v26;
  sub_21C9D2F9C(a1, a2, v27);
  v44 = v20;
  sub_21CB84FA4();
  *v7 = sub_21CB83074();
  *(v7 + 1) = 0;
  v7[16] = 1;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF4378, &qword_21CBBA740);
  sub_21C9D4ED8(a1, &v7[*(v28 + 44)]);
  sub_21CB85224();
  sub_21CB82AC4();
  sub_21C716934(v7, v13, &qword_27CDF4358, &qword_21CBBA720);
  v29 = &v13[*(v9 + 44)];
  v30 = v57;
  *(v29 + 4) = v56;
  *(v29 + 5) = v30;
  *(v29 + 6) = v58;
  v31 = v53;
  *v29 = v52;
  *(v29 + 1) = v31;
  v32 = v55;
  *(v29 + 2) = v54;
  *(v29 + 3) = v32;
  v33 = v51;
  sub_21C716934(v13, v51, &qword_27CDF4360, &qword_21CBBA728);
  sub_21C6EDBAC(v26, v23, &qword_27CDF4368, &qword_21CBBA730);
  v34 = *(v16 + 16);
  v35 = v47;
  v36 = v48;
  v34(v47, v20, v48);
  v37 = v33;
  v38 = v49;
  sub_21C6EDBAC(v37, v49, &qword_27CDF4360, &qword_21CBBA728);
  v39 = v50;
  sub_21C6EDBAC(v23, v50, &qword_27CDF4368, &qword_21CBBA730);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF4380, &qword_21CBBA748);
  v34((v39 + *(v40 + 48)), v35, v36);
  sub_21C6EDBAC(v38, v39 + *(v40 + 64), &qword_27CDF4360, &qword_21CBBA728);
  sub_21C6EA794(v51, &qword_27CDF4360, &qword_21CBBA728);
  v41 = *(v45 + 8);
  v41(v44, v36);
  sub_21C6EA794(v46, &qword_27CDF4368, &qword_21CBBA730);
  sub_21C6EA794(v38, &qword_27CDF4360, &qword_21CBBA728);
  v41(v35, v36);
  return sub_21C6EA794(v23, &qword_27CDF4368, &qword_21CBBA730);
}

uint64_t sub_21C9D2F9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v46 = a3;
  v5 = sub_21CB82A54();
  v6 = *(v5 - 8);
  v44 = v5;
  v45 = v6;
  MEMORY[0x28223BE20](v5);
  v39 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for PMGroupInvitationView(0);
  v36 = *(v8 - 8);
  v9 = *(v36 + 64);
  MEMORY[0x28223BE20](v8);
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF43A0, &qword_21CBBA7A0);
  v40 = *(v38 - 8);
  MEMORY[0x28223BE20](v38);
  v11 = &v35 - v10;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF43A8, &qword_21CBBA7A8) - 8;
  MEMORY[0x28223BE20](v42);
  v43 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v37 = &v35 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF43B0, &qword_21CBBA7B0);
  MEMORY[0x28223BE20](v15 - 8);
  v41 = &v35 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v35 - v18;
  *v19 = sub_21CB832F4();
  *(v19 + 1) = 0;
  v19[16] = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF43B8, &qword_21CBBA7B8);
  v47 = a1;
  v48 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF43C0, &qword_21CBBA7C0);
  sub_21C6EADEC(&qword_27CDF43C8, &qword_27CDF43C0, &qword_21CBBA7C0, MEMORY[0x277CE14C0]);
  sub_21CB81FC4();
  sub_21C9D5C48(a1, &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PMGroupInvitationView);
  v20 = (*(v36 + 80) + 16) & ~*(v36 + 80);
  v21 = swift_allocObject();
  sub_21C9D5CB0(&v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v21 + v20, type metadata accessor for PMGroupInvitationView);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF43D0, &qword_21CBBA7C8);
  sub_21C9D5D8C();
  sub_21CB84DA4();
  v22 = v39;
  sub_21CB82A44();
  sub_21C6EADEC(&qword_27CDF43E0, &qword_27CDF43A0, &qword_21CBBA7A0, MEMORY[0x277CDF028]);
  sub_21C9D6288(&qword_27CDED508, MEMORY[0x277CDDB18], MEMORY[0x277CDDB08]);
  v23 = v37;
  v24 = v38;
  v25 = v44;
  sub_21CB84124();
  (*(v45 + 8))(v22, v25);
  (*(v40 + 8))(v11, v24);
  swift_getKeyPath(byte_21CBBA568);
  swift_getKeyPath(byte_21CBBA590);
  sub_21CB81DB4();

  LOBYTE(v11) = v49;
  KeyPath = swift_getKeyPath(byte_21CBBA5B0);
  v27 = swift_allocObject();
  *(v27 + 16) = v11;
  v28 = v41;
  v29 = (v23 + *(v42 + 44));
  *v29 = KeyPath;
  v29[1] = sub_21C87E800;
  v29[2] = v27;
  sub_21C6EDBAC(v19, v28, &qword_27CDF43B0, &qword_21CBBA7B0);
  v30 = v43;
  sub_21C6EDBAC(v23, v43, &qword_27CDF43A8, &qword_21CBBA7A8);
  v31 = v46;
  sub_21C6EDBAC(v28, v46, &qword_27CDF43B0, &qword_21CBBA7B0);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF43E8, &unk_21CBBA7D0);
  v33 = v31 + *(v32 + 48);
  *v33 = 0;
  *(v33 + 8) = 1;
  sub_21C6EDBAC(v30, v31 + *(v32 + 64), &qword_27CDF43A8, &qword_21CBBA7A8);
  sub_21C6EA794(v23, &qword_27CDF43A8, &qword_21CBBA7A8);
  sub_21C6EA794(v19, &qword_27CDF43B0, &qword_21CBBA7B0);
  sub_21C6EA794(v30, &qword_27CDF43A8, &qword_21CBBA7A8);
  return sub_21C6EA794(v28, &qword_27CDF43B0, &qword_21CBBA7B0);
}

uint64_t sub_21C9D35FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v33 = a2;
  v3 = sub_21CB83994();
  v4 = *(v3 - 8);
  v31 = v3;
  v32 = v4;
  MEMORY[0x28223BE20](v3);
  v6 = v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for PMSharingGroup(0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for PMGroupInvitationDetails(0);
  v11 = (v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF3E20, &unk_21CBB9760);
  MEMORY[0x28223BE20](v30);
  v15 = v29 - v14;
  v29[2] = a1;
  sub_21C9D5C48(a1, v9, type metadata accessor for PMSharingGroup);
  v29[1] = type metadata accessor for PMGroupInvitationView(0);
  v16 = &v13[v11[7]];
  type metadata accessor for PMPasswordManagerState(0);
  sub_21C9D6288(&qword_27CDED2D0, type metadata accessor for PMPasswordManagerState, &protocol conformance descriptor for PMPasswordManagerState);

  *v16 = sub_21CB82B84();
  v16[1] = v17;
  v18 = v11[9];
  *&v13[v18] = swift_getKeyPath(byte_21CBBA6C8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE480, &qword_21CBA13D0);
  swift_storeEnumTagMultiPayload();
  sub_21C9D5C48(v9, v13, type metadata accessor for PMSharingGroup);
  v19 = &v13[v11[8]];
  type metadata accessor for PMGroupInvitationModel(0);
  sub_21C9D6288(&qword_27CDF3D20, type metadata accessor for PMGroupInvitationModel, &unk_21CBB93B8);
  v20 = sub_21CB82674();
  v22 = v21;
  sub_21C979EE8(v9);
  *v19 = v20;
  v19[1] = v22;
  sub_21CB85214();
  sub_21CB82AC4();
  sub_21C9D5CB0(v13, v15, type metadata accessor for PMGroupInvitationDetails);
  v23 = &v15[*(v30 + 36)];
  v24 = v41;
  *(v23 + 4) = v40;
  *(v23 + 5) = v24;
  *(v23 + 6) = v42;
  v25 = v37;
  *v23 = v36;
  *(v23 + 1) = v25;
  v26 = v39;
  *(v23 + 2) = v38;
  *(v23 + 3) = v26;
  v34 = 0xD000000000000016;
  v35 = 0x800000021CB96880;
  sub_21CB852C4();
  sub_21CB834F4();
  sub_21C9C11A8();
  v27 = v31;
  sub_21CB84524();
  (*(v32 + 8))(v6, v27);
  return sub_21C6EA794(v15, &qword_27CDF3E20, &unk_21CBB9760);
}

uint64_t sub_21C9D3AAC@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v47 = a1;
  v51 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBE38, &unk_21CBA3770);
  MEMORY[0x28223BE20](v2 - 8);
  v50 = &v42 - v3;
  v4 = type metadata accessor for PMGroupInvitationView(0);
  v45 = *(v4 - 8);
  v5 = *(v45 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v44 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_21CB81024();
  v43 = v6;
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBE40, &unk_21CBA8200);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v49 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v48 = &v42 - v14;
  MEMORY[0x28223BE20](v15);
  v46 = &v42 - v16;
  MEMORY[0x28223BE20](v17);
  v19 = &v42 - v18;
  sub_21CB81014();
  v20 = sub_21CB81004();
  v22 = v21;
  v23 = *(v7 + 8);
  v23(v9, v6);
  v52 = v20;
  v53 = v22;
  v24 = v44;
  sub_21C9D5C48(v47, v44, type metadata accessor for PMGroupInvitationView);
  v25 = (*(v45 + 80) + 16) & ~*(v45 + 80);
  v26 = swift_allocObject();
  sub_21C9D5CB0(v24, v26 + v25, type metadata accessor for PMGroupInvitationView);
  sub_21C71F3FC();
  sub_21CB84DE4();
  sub_21CB81014();
  v27 = sub_21CB81004();
  v29 = v28;
  v23(v9, v43);
  v52 = v27;
  v53 = v29;
  v30 = v50;
  sub_21CB81EF4();
  v31 = sub_21CB81F14();
  (*(*(v31 - 8) + 56))(v30, 0, 1, v31);
  v32 = v46;
  sub_21CB84DC4();
  v33 = *(v11 + 16);
  v34 = v48;
  v35 = v19;
  v33(v48, v19, v10);
  v36 = v49;
  v37 = v32;
  v33(v49, v32, v10);
  v38 = v51;
  v33(v51, v34, v10);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0168, &qword_21CBB1D30);
  v33(&v38[*(v39 + 48)], v36, v10);
  v40 = *(v11 + 8);
  v40(v37, v10);
  v40(v35, v10);
  v40(v36, v10);
  return (v40)(v34, v10);
}

uint64_t sub_21C9D3FD0(uint64_t a1)
{
  v2 = type metadata accessor for PMGroupInvitationView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1D50, &qword_21CBA0C00);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v15 - v7;
  v9 = sub_21CB858E4();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  sub_21C9D5C48(a1, v5, type metadata accessor for PMGroupInvitationView);
  sub_21CB858B4();
  v10 = sub_21CB858A4();
  v11 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v12 = swift_allocObject();
  v13 = MEMORY[0x277D85700];
  *(v12 + 16) = v10;
  *(v12 + 24) = v13;
  sub_21C9D5CB0(v5, v12 + v11, type metadata accessor for PMGroupInvitationView);
  sub_21C822ECC(0, 0, v8, &unk_21CBBA680, v12);
}

uint64_t sub_21C9D41B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  sub_21CB858B4();
  v4[3] = sub_21CB858A4();
  v6 = sub_21CB85874();
  v4[4] = v6;
  v4[5] = v5;

  return MEMORY[0x2822009F8](sub_21C9D4248, v6, v5);
}

uint64_t sub_21C9D4248()
{
  type metadata accessor for PMGroupInvitationView(0);
  v1 = swift_task_alloc();
  *(v0 + 48) = v1;
  *v1 = v0;
  v1[1] = sub_21C9D42EC;

  return sub_21C9BDE98();
}

uint64_t sub_21C9D42EC()
{
  v2 = *v1;
  *(*v1 + 56) = v0;

  v3 = *(v2 + 40);
  v4 = *(v2 + 32);
  if (v0)
  {
    v5 = sub_21C9D448C;
  }

  else
  {
    v5 = sub_21C9D4428;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_21C9D4428()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_21C9D448C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_21C9D44F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v27[1] = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBB58, &qword_21CBAF8A0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v27 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF43F0, &qword_21CBBA7E0);
  MEMORY[0x28223BE20](v6);
  v8 = v27 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF43F8, &qword_21CBBA7E8);
  MEMORY[0x28223BE20](v9);
  v11 = v27 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF4400, &qword_21CBBA7F0);
  MEMORY[0x28223BE20](v12);
  v14 = v27 - v13;
  v15 = type metadata accessor for PMGroupInvitationView(0);
  if (sub_21C9BD434(v15))
  {
    v16 = *(a1 + *(v15 + 28));
    *v14 = *(a1 + *(v15 + 24));
    *(v14 + 1) = v16;
    v14[16] = 0;
    swift_storeEnumTagMultiPayload();
    sub_21C9D6178();
    sub_21C9D61CC();

    return sub_21CB83494();
  }

  else
  {
    v18 = [objc_opt_self() unknownSenderImageName];
    sub_21CB855C4();

    v27[0] = sub_21CB84BB4();
    v19 = sub_21CB83DC4();
    (*(*(v19 - 8) + 56))(v5, 1, 1, v19);
    v20 = sub_21CB83E14();
    sub_21C6EA794(v5, &qword_27CDEBB58, &qword_21CBAF8A0);
    KeyPath = swift_getKeyPath(byte_21CBBA7F8);
    sub_21CB85214();
    sub_21CB82374();
    v22 = &v8[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF4408, &unk_21CBBA828) + 36)];
    v23 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF2390, &qword_21CBB3D80) + 28);
    sub_21CB83344();
    v24 = sub_21CB83354();
    (*(*(v24 - 8) + 56))(&v22[v23], 0, 1, v24);
    *v22 = swift_getKeyPath(aH_84);
    *v8 = v27[0];
    *(v8 + 1) = KeyPath;
    *(v8 + 2) = v20;
    v25 = v29;
    *(v8 + 56) = v30;
    v26 = v28;
    *(v8 + 40) = v25;
    *(v8 + 24) = v26;
    *&v8[*(v6 + 36)] = sub_21CB84A84();
    sub_21C9D5F7C();
    sub_21CB84494();
    sub_21C6EA794(v8, &qword_27CDF43F0, &qword_21CBBA7E0);
    sub_21C6EDBAC(v11, v14, &qword_27CDF43F8, &qword_21CBBA7E8);
    swift_storeEnumTagMultiPayload();
    sub_21C9D6178();
    sub_21C9D61CC();
    sub_21CB83494();
    return sub_21C6EA794(v11, &qword_27CDF43F8, &qword_21CBBA7E8);
  }
}

uint64_t sub_21C9D494C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for PMGroupInvitationView(0);
  if (sub_21C9BD434(v4))
  {
    v19 = *(a1 + *(type metadata accessor for PMSharingGroup(0) + 20));
    sub_21C71F3FC();
  }

  else
  {
    v5 = [objc_opt_self() unknownSenderCellTitle];
    v6 = sub_21CB855C4();
    v8 = v7;

    *&v19 = v6;
    *(&v19 + 1) = v8;
    sub_21C71F3FC();
  }

  sub_21CB84054();
  sub_21CB83494();
  v9 = objc_opt_self();
  sub_21C9D5F04(v19, *(&v19 + 1), v20);
  v10 = sub_21C9DC5CC();
  v11 = [v9 invitationDescriptionForOwner_];

  sub_21CB855C4();
  sub_21C71F3FC();
  v12 = sub_21CB84054();
  v14 = v13;
  LOBYTE(v9) = v15;
  v17 = v16;
  sub_21C9D5F04(v19, *(&v19 + 1), v20);
  LOBYTE(v9) = v9 & 1;
  sub_21C79B058(v12, v14, v9);

  sub_21C9D5F40(v19, *(&v19 + 1), v20);
  *a2 = v19;
  *(a2 + 16) = v20;
  *(a2 + 32) = v21;
  *(a2 + 40) = v12;
  *(a2 + 48) = v14;
  *(a2 + 56) = v9;
  *(a2 + 64) = v17;
  sub_21C74A72C(v12, v14, v9);

  return sub_21C9D5F40(v19, *(&v19 + 1), v20);
}

uint64_t sub_21C9D4BF4(uint64_t a1)
{
  type metadata accessor for PMGroupInvitationView(0);
  swift_getKeyPath(byte_21CBBA650);
  swift_getKeyPath(byte_21CBBA688);

  return sub_21CB81DC4();
}

uint64_t sub_21C9D4C7C@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_21CB83094();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEA4E8, &unk_21CBA28F0);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v12 - v8;
  sub_21CB83134();
  sub_21CB84CA4();
  sub_21CB83084();
  sub_21C6EADEC(&qword_27CDEC0A0, &qword_27CDEA4E8, &unk_21CBA28F0, MEMORY[0x277CDEFF0]);
  sub_21C9D6288(&qword_27CDEC0A8, MEMORY[0x277CDDE78], MEMORY[0x277CDDE70]);
  sub_21CB840E4();
  (*(v3 + 8))(v5, v2);
  (*(v7 + 8))(v9, v6);
  v10 = sub_21CB84A84();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF43D0, &qword_21CBBA7C8);
  *(a1 + *(result + 36)) = v10;
  return result;
}

uint64_t sub_21C9D4ED8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v66 = a2;
  v3 = type metadata accessor for PMGroupInvitationView(0);
  v4 = v3 - 8;
  v59 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v60 = v5;
  v62 = v58 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEDA98, &unk_21CBABCB0);
  MEMORY[0x28223BE20](v64);
  v65 = v58 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v58[0] = v58 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1FD0, &qword_21CBB92A0);
  MEMORY[0x28223BE20](v9);
  v11 = v58 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF4388, &qword_21CBBA750);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = v58 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = v58 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF4390, &qword_21CBBA758);
  MEMORY[0x28223BE20](v19 - 8);
  v63 = v58 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v22 = MEMORY[0x28223BE20](v21).n128_u64[0];
  v24 = v58 - v23;
  v25 = *(v4 + 44);
  v61 = a1;
  v26 = *(a1 + v25 + 8);
  swift_getKeyPath(byte_21CBBA568, v22);
  swift_getKeyPath(byte_21CBBA590);
  v58[1] = v26;
  sub_21CB81DB4();

  if (v67 == 1)
  {
    sub_21CB82234();
    v27 = &v11[*(v9 + 36)];
    v28 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF13A0, &qword_21CBB1100) + 28);
    v29 = *MEMORY[0x277CDF438];
    v30 = sub_21CB82064();
    (*(*(v30 - 8) + 104))(&v27[v28], v29, v30);
    *v27 = swift_getKeyPath(byte_21CBBA770);
    LOBYTE(v27) = sub_21CB83D34();
    v31 = sub_21CB83D24();
    sub_21CB83D24();
    if (sub_21CB83D24() != v27)
    {
      v31 = sub_21CB83D24();
    }

    sub_21CB81F24();
    v33 = v32;
    v35 = v34;
    v37 = v36;
    v39 = v38;
    sub_21C716934(v11, v15, &qword_27CDF1FD0, &qword_21CBB92A0);
    v40 = &v15[*(v12 + 36)];
    *v40 = v31;
    *(v40 + 1) = v33;
    *(v40 + 2) = v35;
    *(v40 + 3) = v37;
    *(v40 + 4) = v39;
    v40[40] = 0;
    sub_21C716934(v15, v18, &qword_27CDF4388, &qword_21CBBA750);
    sub_21C716934(v18, v24, &qword_27CDF4388, &qword_21CBBA750);
    v41 = 0;
  }

  else
  {
    v41 = 1;
  }

  (*(v13 + 56))(v24, v41, 1, v12);
  v42 = [objc_opt_self() viewButtonTitle];
  v43 = sub_21CB855C4();
  v45 = v44;

  v67 = v43;
  v68 = v45;
  v46 = v62;
  sub_21C9D5C48(v61, v62, type metadata accessor for PMGroupInvitationView);
  v47 = (*(v59 + 80) + 16) & ~*(v59 + 80);
  v48 = swift_allocObject();
  sub_21C9D5CB0(v46, v48 + v47, type metadata accessor for PMGroupInvitationView);
  sub_21C71F3FC();
  v49 = v58[0];
  sub_21CB84DE4();
  swift_getKeyPath(byte_21CBBA568);
  swift_getKeyPath(byte_21CBBA590);
  sub_21CB81DB4();

  LOBYTE(v47) = v67;
  KeyPath = swift_getKeyPath(byte_21CBBA5B0);
  v51 = swift_allocObject();
  *(v51 + 16) = v47;
  v52 = v63;
  v53 = (v49 + *(v64 + 36));
  *v53 = KeyPath;
  v53[1] = sub_21C87E800;
  v53[2] = v51;
  sub_21C6EDBAC(v24, v52, &qword_27CDF4390, &qword_21CBBA758);
  v54 = v65;
  sub_21C6EDBAC(v49, v65, &qword_27CDEDA98, &unk_21CBABCB0);
  v55 = v66;
  sub_21C6EDBAC(v52, v66, &qword_27CDF4390, &qword_21CBBA758);
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF4398, &unk_21CBBA760);
  sub_21C6EDBAC(v54, v55 + *(v56 + 48), &qword_27CDEDA98, &unk_21CBABCB0);
  sub_21C6EA794(v49, &qword_27CDEDA98, &unk_21CBABCB0);
  sub_21C6EA794(v24, &qword_27CDF4390, &qword_21CBBA758);
  sub_21C6EA794(v54, &qword_27CDEDA98, &unk_21CBABCB0);
  return sub_21C6EA794(v52, &qword_27CDF4390, &qword_21CBBA758);
}

uint64_t sub_21C9D55A4(uint64_t a1)
{
  type metadata accessor for PMGroupInvitationView(0);
  swift_getKeyPath(byte_21CBBA568);
  swift_getKeyPath(byte_21CBBA590);
  sub_21CB81DB4();

  if ((v2 & 1) == 0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDECFE8, &unk_21CBA9A90);
    return sub_21CB84F34();
  }

  return result;
}

uint64_t sub_21C9D5688@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PMGroupInvitationView(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_21C9D35FC(v4, a1);
}

uint64_t sub_21C9D56F8@<X0>(void *a2@<X8>)
{
  swift_getKeyPath(aX_52);
  swift_getKeyPath(a8_28);
  sub_21CB81DB4();

  *a2 = v4;
  return result;
}

uint64_t sub_21C9D5778(void **a1, uint64_t *a2)
{
  v2 = *a1;
  swift_getKeyPath(aX_52);
  swift_getKeyPath(a8_28);

  v3 = v2;
  return sub_21CB81DC4();
}

unint64_t sub_21C9D57F4()
{
  result = qword_27CDF4330;
  if (!qword_27CDF4330)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF42E8, &qword_21CBBA518);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF42E0, &qword_21CBBA510);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF42D8, &qword_21CBBA508);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF4320, &unk_21CBBA558);
    sub_21C6EADEC(&qword_27CDF4328, &qword_27CDF42D8, &qword_21CBBA508, MEMORY[0x277CE1198]);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF3E20, &unk_21CBB9760);
    sub_21CB83994();
    sub_21C9C11A8();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_21C6EADEC(&qword_27CDEBC80, &qword_27CDEBC88, &qword_21CBA3170, MEMORY[0x277CE08A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF4330);
  }

  return result;
}

uint64_t sub_21C9D5A18(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC580, &qword_21CBBA870);
  MEMORY[0x28223BE20](v2 - 8);
  sub_21C6EDBAC(a1, &v5 - v3, &qword_27CDEC580, &qword_21CBBA870);
  return sub_21CB82DA4();
}

uint64_t sub_21C9D5AE4(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for PMGroupInvitationView(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t sub_21C9D5B58(uint64_t a1)
{
  v4 = *(type metadata accessor for PMGroupInvitationView(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_21C702EFC;

  return sub_21C9D41B0(a1, v6, v7, v1 + v5);
}

uint64_t sub_21C9D5C48(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21C9D5CB0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_21C9D5D8C()
{
  result = qword_27CDF43D8;
  if (!qword_27CDF43D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF43D0, &qword_21CBBA7C8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEA4E8, &unk_21CBA28F0);
    sub_21CB83094();
    sub_21C6EADEC(&qword_27CDEC0A0, &qword_27CDEA4E8, &unk_21CBA28F0, MEMORY[0x277CDEFF0]);
    sub_21C9D6288(&qword_27CDEC0A8, MEMORY[0x277CDDE78], MEMORY[0x277CDDE70]);
    swift_getOpaqueTypeConformance2();
    sub_21C6EADEC(&unk_27CDF45A0, &qword_27CDEECF0, &qword_21CBAF890, MEMORY[0x277CE0740]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF43D8);
  }

  return result;
}

uint64_t sub_21C9D5F04(uint64_t a1, uint64_t a2, char a3)
{
  sub_21C79B058(a1, a2, a3 & 1);
}

uint64_t sub_21C9D5F40(uint64_t a1, uint64_t a2, char a3)
{
  sub_21C74A72C(a1, a2, a3 & 1);
}

unint64_t sub_21C9D5F7C()
{
  result = qword_27CDF4410;
  if (!qword_27CDF4410)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF43F0, &qword_21CBBA7E0);
    sub_21C9D6034();
    sub_21C6EADEC(&unk_27CDF45A0, &qword_27CDEECF0, &qword_21CBAF890, MEMORY[0x277CE0740]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF4410);
  }

  return result;
}

unint64_t sub_21C9D6034()
{
  result = qword_27CDF4418;
  if (!qword_27CDF4418)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF4408, &unk_21CBBA828);
    sub_21C9D60EC();
    sub_21C6EADEC(&qword_27CDF23A8, &qword_27CDF2390, &qword_21CBB3D80, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF4418);
  }

  return result;
}

unint64_t sub_21C9D60EC()
{
  result = qword_27CDF4420;
  if (!qword_27CDF4420)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF4428, &qword_21CBBA868);
    sub_21C74DDEC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF4420);
  }

  return result;
}

unint64_t sub_21C9D6178()
{
  result = qword_27CDF4430;
  if (!qword_27CDF4430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF4430);
  }

  return result;
}

unint64_t sub_21C9D61CC()
{
  result = qword_27CDF4438;
  if (!qword_27CDF4438)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF43F8, &qword_21CBBA7E8);
    sub_21C9D5F7C();
    sub_21C9D6288(&qword_27CDEB908, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF4438);
  }

  return result;
}

uint64_t sub_21C9D6288(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_21C9D62D0()
{
  result = qword_27CDF4440;
  if (!qword_27CDF4440)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF4448, &qword_21CBBA878);
    sub_21C9D6354();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF4440);
  }

  return result;
}

unint64_t sub_21C9D6354()
{
  result = qword_27CDF4450;
  if (!qword_27CDF4450)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF4308, &qword_21CBBA538);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF42F8, &qword_21CBBA528);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF42F0, &qword_21CBBA520);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF1748, &qword_21CBBDF70);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF42E8, &qword_21CBBA518);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDED298, &qword_21CBA6570);
    sub_21C9D57F4();
    sub_21C71F3FC();
    swift_getOpaqueTypeConformance2();
    sub_21C6EADEC(&qword_27CDF1750, &qword_27CDF1748, &qword_21CBBDF70, MEMORY[0x277CE14C0]);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_21C9D6288(&qword_27CDEB908, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF4450);
  }

  return result;
}

uint64_t sub_21C9D6584(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[41] = a3;
  v4[42] = a4;
  v4[39] = a1;
  v4[40] = a2;
  return MEMORY[0x2822009F8](sub_21C9D65A8, 0, 0);
}

uint64_t sub_21C9D65A8()
{
  v1 = v0;
  v2 = v0 + 192;
  v3 = *(v1 + 336);
  v4 = [objc_opt_self() sharedManager];
  *(v1 + 344) = v4;
  v5 = *(v3 + 16);
  if (v5)
  {
    v6 = *(v1 + 336);
    sub_21CB86154();
    v7 = (v6 + 32);
    do
    {
      v8 = *v7;
      v9 = v7[2];
      *(v1 + 96) = v7[1];
      *(v1 + 112) = v9;
      *(v1 + 80) = v8;
      v10 = v7[3];
      v11 = v7[4];
      v12 = v7[6];
      *(v1 + 160) = v7[5];
      *(v1 + 176) = v12;
      *(v1 + 128) = v10;
      *(v1 + 144) = v11;
      sub_21C7A33F0(v1 + 80, v2);
      sub_21C9DC5CC();
      sub_21C7A344C(v1 + 80);
      sub_21CB86134();
      sub_21CB86164();
      sub_21CB86174();
      sub_21CB86144();
      v7 += 7;
      --v5;
    }

    while (v5);
  }

  sub_21C6E8F4C(0, &qword_27CDEE440, 0x277CBAA00);
  v13 = sub_21CB85814();

  v14 = [v4 KCSharingParticipantsFromGroupMembers_];

  if (!v14)
  {
    sub_21C6E8F4C(0, &qword_27CDF4460, 0x277CDBD40);
    sub_21CB85824();
    v14 = sub_21CB85814();
  }

  v15 = sub_21CB85584();
  v16 = [v15 safari_stringByTrimmingWhitespace];

  if (!v16)
  {
    sub_21CB855C4();
    v16 = sub_21CB85584();
  }

  v17 = [objc_allocWithZone(MEMORY[0x277CDBD08]) initWithParticipants:v14 displayName:v16];
  *(v1 + 352) = v17;

  v18 = [objc_opt_self() sharedInstance];
  *(v1 + 360) = v18;
  v19 = [objc_allocWithZone(MEMORY[0x277CDBD10]) initWithNewGroup_];
  *(v1 + 368) = v19;
  *(v1 + 16) = v1;
  *(v1 + 56) = v1 + 304;
  *(v1 + 24) = sub_21C9D6908;
  v20 = swift_continuation_init();
  *(v1 + 248) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF4458, &unk_21CBBA8E0);
  *(v1 + 192) = MEMORY[0x277D85DD0];
  *(v1 + 200) = 1107296256;
  *(v1 + 208) = sub_21C952AD0;
  *(v1 + 216) = &block_descriptor_21;
  *(v1 + 224) = v20;
  [v18 createGroupWithRequest:v19 completion:v2];

  return MEMORY[0x282200938](v1 + 16);
}

uint64_t sub_21C9D6908()
{
  v1 = *(*v0 + 48);
  *(*v0 + 376) = v1;
  if (v1)
  {
    v2 = sub_21C9D6B1C;
  }

  else
  {
    v2 = sub_21C9D6A18;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_21C9D6A18()
{
  v1 = *(v0 + 368);
  v2 = *(v0 + 344);
  v3 = *(v0 + 352);
  v5 = *(v0 + 304);
  v4 = *(v0 + 312);

  v6 = [objc_opt_self() sharedStore];
  [v6 _addNewGroupToCachedSharingGroups_];

  v7 = [objc_opt_self() sharedProvider];
  [v7 _addNewGroupToCachedGroups_];

  sub_21C7B9304(v4);
  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_21C9D6B1C(uint64_t a1)
{
  v2 = v1[46];
  v4 = v1[44];
  v3 = v1[45];
  v5 = v1[43];
  swift_willThrow();

  v6 = v1[1];

  return v6();
}

uint64_t sub_21C9D6BA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[56] = a5;
  v6[57] = v5;
  v6[54] = a3;
  v6[55] = a4;
  v6[52] = a1;
  v6[53] = a2;
  v7 = sub_21CB85C44();
  v6[58] = v7;
  v8 = *(v7 - 8);
  v6[59] = v8;
  v6[60] = *(v8 + 64);
  v6[61] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1D50, &qword_21CBA0C00);
  v6[62] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21C9D6CB0, 0, 0);
}

uint64_t sub_21C9D6CB0()
{
  v1 = *(v0 + 448);
  v2 = [objc_opt_self() sharedManager];
  *(v0 + 504) = v2;
  v3 = *(v1 + 16);
  if (v3)
  {
    v4 = *(v0 + 448);
    sub_21CB86154();
    v5 = (v4 + 32);
    do
    {
      v6 = *v5;
      v7 = v5[2];
      *(v0 + 96) = v5[1];
      *(v0 + 112) = v7;
      *(v0 + 80) = v6;
      v8 = v5[3];
      v9 = v5[4];
      v10 = v5[6];
      *(v0 + 160) = v5[5];
      *(v0 + 176) = v10;
      *(v0 + 128) = v8;
      *(v0 + 144) = v9;
      sub_21C7A33F0(v0 + 80, v0 + 192);
      sub_21C9DC5CC();
      sub_21C7A344C(v0 + 80);
      sub_21CB86134();
      sub_21CB86164();
      sub_21CB86174();
      sub_21CB86144();
      v5 += 7;
      --v3;
    }

    while (v3);
  }

  sub_21C6E8F4C(0, &qword_27CDEE440, 0x277CBAA00);
  v11 = sub_21CB85814();

  v12 = [v2 KCSharingParticipantsFromGroupMembers_];

  sub_21C6E8F4C(0, &qword_27CDF4460, 0x277CDBD40);
  v13 = sub_21CB85824();

  v14 = [objc_opt_self() sharedProvider];
  sub_21CB85B64();
  v15 = sub_21CB85584();

  v16 = [v14 cachedGroupWithID_];
  *(v0 + 512) = v16;

  if (!v16)
  {
    goto LABEL_22;
  }

  [v16 copy];
  sub_21CB85EF4();
  swift_unknownObjectRelease();
  sub_21C6E8F4C(0, &qword_27CDF90A0, 0x277CDBD08);
  if ((swift_dynamicCast() & 1) == 0)
  {

LABEL_22:

    sub_21C9DBB28();
    swift_allocError();
    swift_willThrow();

    v32 = *(v0 + 8);

    return v32();
  }

  v17 = *(v0 + 400);
  *(v0 + 520) = v17;
  v99 = v17;
  v18 = [v17 participants];
  v19 = sub_21CB85824();

  if (v19 >> 62)
  {
    goto LABEL_44;
  }

  for (i = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_21CB85FA4())
  {
    v102 = v13;
    if (i)
    {
      v21 = 0;
      v22 = MEMORY[0x277D84F90];
      while (1)
      {
        if ((v19 & 0xC000000000000001) != 0)
        {
          v23 = MEMORY[0x21CF15BD0](v21, v19);
        }

        else
        {
          if (v21 >= *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_41;
          }

          v23 = *(v19 + 8 * v21 + 32);
        }

        v24 = v23;
        v13 = v21 + 1;
        if (__OFADD__(v21, 1))
        {
          break;
        }

        v25 = [v23 handle];
        v26 = sub_21CB855C4();
        v28 = v27;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v22 = sub_21CA4F2EC(0, *(v22 + 2) + 1, 1, v22);
        }

        v30 = *(v22 + 2);
        v29 = *(v22 + 3);
        if (v30 >= v29 >> 1)
        {
          v22 = sub_21CA4F2EC((v29 > 1), v30 + 1, 1, v22);
        }

        *(v22 + 2) = v30 + 1;
        v31 = &v22[16 * v30];
        *(v31 + 4) = v26;
        *(v31 + 5) = v28;
        ++v21;
        if (v13 == i)
        {
          goto LABEL_26;
        }
      }

      __break(1u);
LABEL_41:
      __break(1u);
      goto LABEL_42;
    }

    v22 = MEMORY[0x277D84F90];
LABEL_26:
    *(v0 + 528) = v22;

    if (!(v102 >> 62))
    {
      v101 = *((v102 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v101)
      {
        break;
      }

      goto LABEL_28;
    }

    v101 = sub_21CB85FA4();
    if (!v101)
    {
      break;
    }

LABEL_28:
    v34 = 0;
    v13 = v102 & 0xC000000000000001;
    v35 = MEMORY[0x277D84F90];
    while (1)
    {
      if (v13)
      {
        v36 = MEMORY[0x21CF15BD0](v34, v102);
      }

      else
      {
        if (v34 >= *((v102 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_43;
        }

        v36 = *(v102 + 8 * v34 + 32);
      }

      v37 = v36;
      v19 = v34 + 1;
      if (__OFADD__(v34, 1))
      {
        break;
      }

      v38 = [v36 handle];
      v39 = sub_21CB855C4();
      v41 = v40;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v35 = sub_21CA4F2EC(0, *(v35 + 2) + 1, 1, v35);
      }

      v43 = *(v35 + 2);
      v42 = *(v35 + 3);
      if (v43 >= v42 >> 1)
      {
        v35 = sub_21CA4F2EC((v42 > 1), v43 + 1, 1, v35);
      }

      *(v35 + 2) = v43 + 1;
      v44 = &v35[16 * v43];
      *(v44 + 4) = v39;
      *(v44 + 5) = v41;
      ++v34;
      if (v19 == v101)
      {
        goto LABEL_47;
      }
    }

LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    ;
  }

  v35 = MEMORY[0x277D84F90];
LABEL_47:
  *(v0 + 536) = v35;
  v45 = [v99 participants];
  v46 = sub_21CB85824();

  if (v46 >> 62)
  {
    goto LABEL_111;
  }

  v100 = v46 & 0xFFFFFFFFFFFFFF8;
  for (j = *((v46 & 0xFFFFFFFFFFFFFF8) + 0x10); ; j = sub_21CB85FA4())
  {
    *(v0 + 544) = MEMORY[0x277D84F98];
    if (j)
    {
      break;
    }

LABEL_77:

    v78 = sub_21CB85584();
    v79 = [v78 safari_stringByTrimmingWhitespace];

    if (!v79)
    {
      sub_21CB855C4();
      v79 = sub_21CB85584();
    }

    [v99 setDisplayName_];

    v80 = [v99 participants];
    v81 = sub_21CB85824();

    if (v81 >> 62)
    {
      v82 = sub_21CB85FA4();
    }

    else
    {
      v82 = *((v81 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v83 = v99;
    if (v82)
    {
      v84 = 0;
      while (1)
      {
        if ((v81 & 0xC000000000000001) != 0)
        {
          v85 = MEMORY[0x21CF15BD0](v84, v81);
        }

        else
        {
          if (v84 >= *((v81 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_105;
          }

          v85 = *(v81 + 8 * v84 + 32);
        }

        v86 = v85;
        v87 = v84 + 1;
        if (__OFADD__(v84, 1))
        {
          break;
        }

        [v83 removeParticipant_];

        ++v84;
        if (v87 == v82)
        {
          goto LABEL_90;
        }
      }

LABEL_104:
      __break(1u);
LABEL_105:
      __break(1u);
LABEL_106:

      return sub_21CB863B4();
    }

LABEL_90:

    v88 = v83;
    if (!v101)
    {
LABEL_99:

      v93 = [objc_allocWithZone(MEMORY[0x277CDBD38]) initWithUpdatedGroup_];
      *(v0 + 552) = v93;
      v94 = [objc_opt_self() sharedInstance];
      *(v0 + 560) = v94;
      *(v0 + 16) = v0;
      *(v0 + 56) = v0 + 408;
      *(v0 + 24) = sub_21C9D78B8;
      v95 = swift_continuation_init();
      *(v0 + 360) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF4458, &unk_21CBBA8E0);
      *(v0 + 304) = MEMORY[0x277D85DD0];
      *(v0 + 312) = 1107296256;
      *(v0 + 320) = sub_21C952AD0;
      *(v0 + 328) = &block_descriptor_49;
      *(v0 + 336) = v95;
      [v94 updateGroupWithRequest:v93 completion:v0 + 304];
      v67 = v0 + 16;

      return MEMORY[0x282200938](v67);
    }

    v89 = 0;
    v46 = &selRef_symbolForTypeIdentifier_error_;
    while (1)
    {
      if ((v102 & 0xC000000000000001) != 0)
      {
        v90 = MEMORY[0x21CF15BD0](v89, v102);
      }

      else
      {
        if (v89 >= *((v102 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_110;
        }

        v90 = *(v102 + 8 * v89 + 32);
      }

      v91 = v90;
      v92 = v89 + 1;
      if (__OFADD__(v89, 1))
      {
        break;
      }

      [v88 addParticipant_];

      ++v89;
      if (v92 == v101)
      {
        goto LABEL_99;
      }
    }

    __break(1u);
LABEL_110:
    __break(1u);
LABEL_111:
    v100 = v46 & 0xFFFFFFFFFFFFFF8;
  }

  v48 = MEMORY[0x277D84F98];
  v49 = 0;
  while (2)
  {
    if ((v46 & 0xC000000000000001) != 0)
    {
      v50 = MEMORY[0x21CF15BD0](v49, v46);
    }

    else
    {
      if (v49 >= *(v100 + 16))
      {
        goto LABEL_103;
      }

      v50 = *(v46 + 8 * v49 + 32);
    }

    v51 = v50;
    v52 = v49 + 1;
    if (__OFADD__(v49, 1))
    {
      __break(1u);
LABEL_103:
      __break(1u);
      goto LABEL_104;
    }

    v53 = [v50 handle];
    v54 = sub_21CB855C4();
    v56 = v55;

    v57 = [v51 participantID];
    if (!v57)
    {
      v58 = sub_21CB10A3C(v54, v56);
      v60 = v59;

      if ((v60 & 1) == 0)
      {

        ++v49;
        if (v52 == j)
        {
          goto LABEL_77;
        }

        continue;
      }

      if (!swift_isUniquelyReferenced_nonNull_native())
      {
        sub_21C8D6350();
      }

      sub_21CADB690(v58, v48, v71);
LABEL_70:

LABEL_75:
      *(v0 + 544) = v48;
      if (v52 == j)
      {
        goto LABEL_77;
      }

      v49 = v52;
      continue;
    }

    break;
  }

  v61 = v57;
  v96 = sub_21CB855C4();
  v97 = v62;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v64 = sub_21CB10A3C(v54, v56);
  v65 = v48[2];
  v66 = (v63 & 1) == 0;
  v67 = v65 + v66;
  if (!__OFADD__(v65, v66))
  {
    v68 = v63;
    if (v48[3] < v67)
    {
      sub_21C8D2D78(v67, isUniquelyReferenced_nonNull_native);
      v69 = sub_21CB10A3C(v54, v56);
      if ((v68 & 1) != (v70 & 1))
      {
        goto LABEL_106;
      }

      v64 = v69;
      if ((v68 & 1) == 0)
      {
        goto LABEL_73;
      }

LABEL_69:

      v72 = (v48[7] + 16 * v64);
      *v72 = v96;
      v72[1] = v97;

      goto LABEL_70;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      if (v63)
      {
        goto LABEL_69;
      }
    }

    else
    {
      sub_21C8D6350();
      if (v68)
      {
        goto LABEL_69;
      }
    }

LABEL_73:
    v48[(v64 >> 6) + 8] |= 1 << v64;
    v73 = (v48[6] + 16 * v64);
    *v73 = v54;
    v73[1] = v56;
    v74 = (v48[7] + 16 * v64);
    *v74 = v96;
    v74[1] = v97;

    v75 = v48[2];
    v76 = __OFADD__(v75, 1);
    v77 = v75 + 1;
    if (v76)
    {
      goto LABEL_114;
    }

    v48[2] = v77;
    goto LABEL_75;
  }

  __break(1u);
LABEL_114:
  __break(1u);
  return MEMORY[0x282200938](v67);
}

uint64_t sub_21C9D78B8()
{
  v1 = *(*v0 + 48);
  *(*v0 + 568) = v1;
  if (v1)
  {

    v2 = sub_21C9D7CFC;
  }

  else
  {
    v2 = sub_21C9D79E8;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_21C9D79E8()
{
  v1 = *(v0 + 560);
  v2 = *(v0 + 408);
  sub_21C7B9304(*(v0 + 416));

  if ([objc_opt_self() isSignInWithAppleCredentialSharingEnabled])
  {

    v4 = sub_21CB009AC(v3);

    v6 = sub_21CB009AC(v5);

    if (*(v6 + 16) <= *(v4 + 16) >> 3)
    {
      sub_21C8648B8(v6);

      v7 = v4;
    }

    else
    {
      v7 = sub_21C9D8AA8(v6, v4);
    }

    v11 = *(v0 + 552);
    v12 = *(v0 + 520);
    v13 = *(v0 + 504);
    v10 = *(v0 + 512);
    if (*(v7 + 16))
    {
      v27 = *(v0 + 544);
      v28 = *(v0 + 520);
      v14 = *(v0 + 488);
      v15 = *(v0 + 496);
      v29 = *(v0 + 552);
      v30 = *(v0 + 504);
      v16 = *(v0 + 472);
      v26 = *(v0 + 480);
      v31 = *(v0 + 512);
      v17 = *(v0 + 456);
      v18 = *(v0 + 464);
      v19 = *(v0 + 424);

      v20 = sub_21CB858E4();
      (*(*(v20 - 8) + 56))(v15, 1, 1, v20);
      (*(v16 + 16))(v14, v19, v18);
      v21 = (*(v16 + 80) + 48) & ~*(v16 + 80);
      v22 = swift_allocObject();
      *(v22 + 2) = 0;
      *(v22 + 3) = 0;
      *(v22 + 4) = v17;
      *(v22 + 5) = v7;
      v23 = v18;
      v10 = v31;
      (*(v16 + 32))(&v22[v21], v14, v23);
      *&v22[(v26 + v21 + 7) & 0xFFFFFFFFFFFFFFF8] = v27;

      sub_21C98B308(0, 0, v15, &unk_21CBBA948, v22);

      goto LABEL_10;
    }
  }

  else
  {
    v8 = *(v0 + 552);
    v9 = *(v0 + 504);
    v10 = *(v0 + 512);
  }

LABEL_10:

  v24 = *(v0 + 8);

  return v24();
}

uint64_t sub_21C9D7CFC(uint64_t a1)
{
  v2 = v1[70];
  v3 = v1[69];
  v4 = v1[65];
  v6 = v1[63];
  v5 = v1[64];
  swift_willThrow();

  v7 = v1[1];

  return v7();
}

uint64_t sub_21C9D7DAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[3] = a6;
  v7[4] = a7;
  v7[2] = a5;
  return MEMORY[0x2822009F8](sub_21C9D7DD0, 0, 0);
}

uint64_t sub_21C9D7DD0(uint64_t a1)
{
  v2 = sub_21CB85B64();
  v4 = v3;
  v1[5] = v3;
  v5 = swift_task_alloc();
  v1[6] = v5;
  *v5 = v1;
  v5[1] = sub_21C9D7E84;
  v6 = v1[4];
  v7 = v1[2];

  return sub_21C9DBCB4(v7, v2, v4, v6);
}

uint64_t sub_21C9D7E84()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_21C9D7F94(uint64_t a1, void *a2)
{
  v3 = __swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  v4 = *v3;
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDED298, &qword_21CBA6570);
    v5 = swift_allocError();
    *v6 = a2;
    v7 = a2;

    return MEMORY[0x282200958](v4, v5);
  }

  else
  {
    v8 = *v3;

    return MEMORY[0x282200950](v8);
  }
}

uint64_t sub_21C9D8064(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[14] = a7;
  v8[15] = a8;
  v8[12] = a5;
  v8[13] = a6;
  v8[10] = a3;
  v8[11] = a4;
  v8[9] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1D50, &qword_21CBA0C00);
  v8[16] = swift_task_alloc();
  v8[17] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21C9D8118, 0, 0);
}

void sub_21C9D8118()
{
  v2 = v0[10];
  v1 = v0[11];
  v3 = v2 + 56;
  v42 = v0 + 2;
  v4 = -1;
  v5 = -1 << *(v2 + 32);
  if (-v5 < 64)
  {
    v4 = ~(-1 << -v5);
  }

  v6 = v4 & *(v2 + 56);
  v7 = (63 - v5) >> 6;

  v8 = 0;
  v45 = v2;
  v46 = v1;
  v43 = v0;
  v44 = v7;
  if (v6)
  {
    goto LABEL_6;
  }

  while (1)
  {
LABEL_7:
    v10 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      __break(1u);
      return;
    }

    if (v10 >= v7)
    {
      break;
    }

    v9 = *(v3 + 8 * v10);
    ++v8;
    if (v9)
    {
      v8 = v10;
      while (1)
      {
        v51 = (v9 - 1) & v9;
        if (*(v1 + 16) && (v11 = (*(v2 + 48) + ((v8 << 10) | (16 * __clz(__rbit64(v9))))), v12 = *v11, v13 = v11[1], , v14 = sub_21CB10A3C(v12, v13), v16 = v15, , (v16 & 1) != 0))
        {
          v17 = v0[17];
          v50 = v0[16];
          v18 = v0[15];
          v19 = v0[12];
          v20 = v0[13];
          v47 = v19;
          v21 = (*(v1 + 56) + 16 * v14);
          v22 = v21[1];
          v48 = *v21;
          v49 = v0[14];
          v23 = sub_21CB858E4();
          v24 = *(v23 - 8);
          v25 = v17;
          (*(v24 + 56))(v17, 1, 1, v23);
          v26 = swift_allocObject();
          v26[2] = 0;
          v26[3] = 0;
          v26[4] = v19;
          v26[5] = v20;
          v26[6] = v48;
          v26[7] = v22;
          v26[8] = v49;
          v26[9] = v18;
          sub_21C9641E0(v25, v50);
          v0 = v43;
          LODWORD(v19) = (*(v24 + 48))(v50, 1, v23);

          v27 = v47;
          v28 = v20;

          v29 = v43[16];
          if (v19 == 1)
          {
            sub_21C6EA794(v43[16], &qword_27CDF1D50, &qword_21CBA0C00);
          }

          else
          {
            sub_21CB858D4();
            (*(v24 + 8))(v29, v23);
          }

          v7 = v44;
          if (v26[2])
          {
            swift_getObjectType();
            swift_unknownObjectRetain();
            v34 = sub_21CB85874();
            v36 = v35;
            swift_unknownObjectRelease();
          }

          else
          {
            v34 = 0;
            v36 = 0;
          }

          v37 = *v43[9];
          v38 = swift_allocObject();
          *(v38 + 16) = &unk_21CBBA970;
          *(v38 + 24) = v26;

          if (v36 | v34)
          {
            v39 = v42;
            *v42 = 0;
            v42[1] = 0;
            v43[4] = v34;
            v43[5] = v36;
          }

          else
          {
            v39 = 0;
          }

          v40 = v43[17];
          v43[6] = 1;
          v43[7] = v39;
          v43[8] = v37;
          swift_task_create();

          sub_21C6EA794(v40, &qword_27CDF1D50, &qword_21CBA0C00);
          v2 = v45;
          v1 = v46;
          v6 = v51;
          if (!v51)
          {
            goto LABEL_7;
          }
        }

        else
        {
          if (qword_27CDEA478 != -1)
          {
            swift_once();
          }

          v30 = sub_21CB81C84();
          __swift_project_value_buffer(v30, qword_27CE186F8);
          v31 = sub_21CB81C64();
          v32 = sub_21CB85AF4();
          if (os_log_type_enabled(v31, v32))
          {
            v33 = swift_slowAlloc();
            *v33 = 0;
            _os_log_impl(&dword_21C6E5000, v31, v32, "ParticipantID is missing.", v33, 2u);
            MEMORY[0x21CF16D90](v33, -1, -1);
          }

          v6 = v51;
          if (!v51)
          {
            goto LABEL_7;
          }
        }

LABEL_6:
        v9 = v6;
      }
    }
  }

  v41 = v0[1];

  v41();
}

uint64_t sub_21C9D85EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[22] = a8;
  v8[23] = v10;
  v8[20] = a6;
  v8[21] = a7;
  v8[18] = a4;
  v8[19] = a5;
  return MEMORY[0x2822009F8](sub_21C9D861C, 0, 0);
}

uint64_t sub_21C9D861C()
{
  v2 = v0[18];
  v1 = v0[19];
  v3 = sub_21CB85584();
  v0[24] = v3;
  v0[2] = v0;
  v0[3] = sub_21C9D8750;
  v4 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF4468, &qword_21CBBA910);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_21CAB18DC;
  v0[13] = &block_descriptor_66;
  v0[14] = v4;
  [v2 participantRemovedWithContext:v1 participantID:v3 completion:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_21C9D8750()
{
  v1 = *(*v0 + 48);
  *(*v0 + 200) = v1;
  if (v1)
  {
    v2 = sub_21C9D88C0;
  }

  else
  {
    v2 = sub_21C9D8860;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_21C9D8860()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_21C9D88C0(uint64_t a1)
{
  v17 = v1;
  v2 = v1[24];
  swift_willThrow();

  if (qword_27CDEA478 != -1)
  {
    swift_once();
  }

  v3 = sub_21CB81C84();
  __swift_project_value_buffer(v3, qword_27CE186F8);

  v4 = sub_21CB81C64();
  v5 = sub_21CB85AF4();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v1[25];
  if (v6)
  {
    v9 = v1[22];
    v8 = v1[23];
    v11 = v1[20];
    v10 = v1[21];
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v16[0] = v13;
    *v12 = 136315394;
    *(v12 + 4) = sub_21C98E004(v11, v10, v16);
    *(v12 + 12) = 2080;
    *(v12 + 14) = sub_21C98E004(v9, v8, v16);
    _os_log_impl(&dword_21C6E5000, v4, v5, "An error occurred while attempting to remove the departed participant's (%s) SIWA accounts from the group (%s)", v12, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x21CF16D90](v13, -1, -1);
    MEMORY[0x21CF16D90](v12, -1, -1);
  }

  v14 = v1[1];

  return v14();
}

uint64_t sub_21C9D8AA8(uint64_t a1, uint64_t a2)
{
  v5 = a2;
  v66 = *MEMORY[0x277D85DE8];
  if (!*(a2 + 16))
  {

    return MEMORY[0x277D84FA0];
  }

  v53 = 0;
  v7 = a1 + 56;
  v6 = *(a1 + 56);
  v8 = -1;
  v9 = -1 << *(a1 + 32);
  v57 = ~v9;
  if (-v9 < 64)
  {
    v10 = ~(-1 << -v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & v6;
  v12 = (63 - v9) >> 6;
  v61 = (a2 + 56);

  v15 = 0;
  v59 = v13;
  if (!v11)
  {
LABEL_6:
    v16 = v15;
    while (1)
    {
      v17 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        goto LABEL_56;
      }

      if (v17 >= v12)
      {
        goto LABEL_53;
      }

      v11 = *(v7 + 8 * v17);
      ++v16;
      if (v11)
      {
        v15 = v17;
        break;
      }
    }
  }

  while (1)
  {
    v18 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    v19 = *(v13 + 48);
    v60 = v15;
    v20 = (v19 + ((v15 << 10) | (16 * v18)));
    v22 = *v20;
    v21 = v20[1];
    sub_21CB86484();

    sub_21CB854C4();
    v23 = sub_21CB864D4();
    v24 = -1 << *(v5 + 32);
    v2 = v23 & ~v24;
    v8 = v2 >> 6;
    v4 = 1 << v2;
    if (((1 << v2) & v61[v2 >> 6]) != 0)
    {
      break;
    }

LABEL_19:

    v13 = v59;
    v15 = v60;
    v8 = -1;
    if (!v11)
    {
      goto LABEL_6;
    }
  }

  v3 = ~v24;
  while (1)
  {
    v25 = (*(v5 + 48) + 16 * v2);
    v26 = *v25 == v22 && v25[1] == v21;
    if (v26 || (sub_21CB86344() & 1) != 0)
    {
      break;
    }

    v2 = (v2 + 1) & v3;
    v8 = v2 >> 6;
    v4 = 1 << v2;
    if (((1 << v2) & v61[v2 >> 6]) == 0)
    {
      goto LABEL_19;
    }
  }

  v3 = v59;
  v27 = v60;
  v63 = v57;
  v64 = v60;
  v65 = v11;
  v62[0] = v59;
  v62[1] = v7;

  v29 = *(v5 + 32);
  v54 = ((1 << v29) + 63) >> 6;
  v14 = 8 * v54;
  if ((v29 & 0x3Fu) > 0xD)
  {
    goto LABEL_57;
  }

  while (1)
  {
    v55 = &v53;
    MEMORY[0x28223BE20](v28);
    v2 = &v53 - ((v30 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v2, v61, v30);
    v31 = *(v2 + 8 * v8) & ~v4;
    v32 = *(v5 + 16);
    v58 = v2;
    *(v2 + 8 * v8) = v31;
    v33 = v32 - 1;
LABEL_23:
    v56 = v33;
    if (v11)
    {
      goto LABEL_33;
    }

LABEL_28:
    v35 = v27;
    while (1)
    {
      v36 = v35 + 1;
      if (__OFADD__(v35, 1))
      {
        break;
      }

      if (v36 >= v12)
      {
        v5 = sub_21CAA1B00(v58, v54, v56, v5);
        goto LABEL_51;
      }

      v11 = *(v7 + 8 * v36);
      ++v35;
      if (v11)
      {
        v27 = v36;
        while (1)
        {
LABEL_33:
          while (1)
          {
            v37 = __clz(__rbit64(v11));
            v11 &= v11 - 1;
            v38 = *(v3 + 48);
            v60 = v27;
            v39 = (v38 + ((v27 << 10) | (16 * v37)));
            v40 = *v39;
            v4 = v39[1];
            sub_21CB86484();

            sub_21CB854C4();
            v41 = sub_21CB864D4();
            v42 = -1 << *(v5 + 32);
            v8 = v41 & ~v42;
            v2 = v8 >> 6;
            v43 = 1 << v8;
            if (((1 << v8) & v61[v8 >> 6]) != 0)
            {
              break;
            }

LABEL_45:

            v27 = v60;
            if (!v11)
            {
              goto LABEL_28;
            }
          }

          v44 = (*(v5 + 48) + 16 * v8);
          if (*v44 != v40 || v44[1] != v4)
          {
            v46 = ~v42;
            while ((sub_21CB86344() & 1) == 0)
            {
              v8 = (v8 + 1) & v46;
              v2 = v8 >> 6;
              v43 = 1 << v8;
              if (((1 << v8) & v61[v8 >> 6]) == 0)
              {
                v3 = v59;
                goto LABEL_45;
              }

              v47 = (*(v5 + 48) + 16 * v8);
              if (*v47 == v40 && v47[1] == v4)
              {
                break;
              }
            }
          }

          v3 = v59;
          v34 = v58[v2];
          v58[v2] = v34 & ~v43;
          v26 = (v34 & v43) == 0;
          v27 = v60;
          if (!v26)
          {
            break;
          }

          if (!v11)
          {
            goto LABEL_28;
          }
        }

        v33 = v56 - 1;
        if (__OFSUB__(v56, 1))
        {
          __break(1u);
        }

        if (v56 == 1)
        {

          v5 = MEMORY[0x277D84FA0];
          goto LABEL_51;
        }

        goto LABEL_23;
      }
    }

    __break(1u);
LABEL_56:
    __break(1u);
LABEL_57:
    v49 = v14;

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }

    v27 = v60;
  }

  v50 = swift_slowAlloc();
  memcpy(v50, v61, v49);
  v51 = v53;
  v52 = sub_21C9D9018(v50, v54, v5, v2, v62);

  if (!v51)
  {

    MEMORY[0x21CF16D90](v50, -1, -1);
    v3 = v62[0];
    v57 = v63;
    v5 = v52;
LABEL_51:
    v13 = v3;
LABEL_53:
    sub_21C6F1E7C(v13);
    return v5;
  }

  result = MEMORY[0x21CF16D90](v50, -1, -1);
  __break(1u);
  return result;
}

unint64_t *sub_21C9D9018(unint64_t *result, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v7 = *(a3 + 16);
  v31 = result;
  *(result + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v8 = v7 - 1;
  v9 = a3 + 56;
  while (2)
  {
    v30 = v8;
    do
    {
      while (1)
      {
        v11 = a5[3];
        v12 = a5[4];
        if (!v12)
        {
          v14 = (a5[2] + 64) >> 6;
          v15 = a5[3];
          while (1)
          {
            v13 = v15 + 1;
            if (__OFADD__(v15, 1))
            {
              __break(1u);
              goto LABEL_30;
            }

            if (v13 >= v14)
            {
              break;
            }

            v12 = *(a5[1] + 8 * v13);
            ++v15;
            if (v12)
            {
              goto LABEL_10;
            }
          }

          if (v14 <= v11 + 1)
          {
            v28 = v11 + 1;
          }

          else
          {
            v28 = (a5[2] + 64) >> 6;
          }

          a5[3] = v28 - 1;
          a5[4] = 0;

          return sub_21CAA1B00(v31, a2, v30, a3);
        }

        v13 = a5[3];
LABEL_10:
        v16 = (*(*a5 + 48) + ((v13 << 10) | (16 * __clz(__rbit64(v12)))));
        v18 = *v16;
        v17 = v16[1];
        a5[3] = v13;
        a5[4] = (v12 - 1) & v12;
        sub_21CB86484();

        sub_21CB854C4();
        v19 = sub_21CB864D4();
        v20 = -1 << *(a3 + 32);
        v21 = v19 & ~v20;
        v22 = v21 >> 6;
        v23 = 1 << v21;
        if (((1 << v21) & *(v9 + 8 * (v21 >> 6))) != 0)
        {
          break;
        }

LABEL_21:
      }

      v24 = (*(a3 + 48) + 16 * v21);
      if (*v24 != v18 || v24[1] != v17)
      {
        v26 = ~v20;
        while ((sub_21CB86344() & 1) == 0)
        {
          v21 = (v21 + 1) & v26;
          v22 = v21 >> 6;
          v23 = 1 << v21;
          if (((1 << v21) & *(v9 + 8 * (v21 >> 6))) == 0)
          {
            goto LABEL_21;
          }

          v27 = (*(a3 + 48) + 16 * v21);
          if (*v27 == v18 && v27[1] == v17)
          {
            break;
          }
        }
      }

      v10 = v31[v22];
      v31[v22] = v10 & ~v23;
    }

    while ((v10 & v23) == 0);
    v8 = v30 - 1;
    if (__OFSUB__(v30, 1))
    {
LABEL_30:
      __break(1u);
    }

    else
    {
      if (v30 != 1)
      {
        continue;
      }

      return MEMORY[0x277D84FA0];
    }

    return result;
  }
}

uint64_t sub_21C9D9250(uint64_t a1, void *a2)
{
  if (*(a1 + 32) == *a2 && *(a1 + 40) == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_21CB86344() & 1;
  }
}

uint64_t sub_21C9D92A8(uint64_t a1, uint64_t a2, char a3)
{
  v28[0] = a1;
  v5 = type metadata accessor for PMSharingGroup(0);
  MEMORY[0x28223BE20](v5);
  v7 = v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = v28 - v9;
  v11 = [objc_opt_self() sharedProvider];
  sub_21CB85B64();
  v12 = sub_21CB85584();

  v13 = [v11 cachedGroupWithID_];

  if (v13)
  {
    sub_21C7B9304(v7);

    sub_21C9C9820(v7, v10);
    sub_21CB25D9C(v36);
    if (v37 && (v14 = v38, v15 = sub_21C6EA794(v36, &qword_27CDECC50, &unk_21CBB52A0), (v14 & 1) != 0))
    {
      if (a3)
      {
        if (a3 == 1)
        {
          sub_21CB25D9C(v39);
          v16 = *(&v40 + 1);
          if (*(&v40 + 1))
          {
            v17 = v40;

            sub_21C6EA794(v39, &qword_27CDECC50, &unk_21CBB52A0);
            if (v17 == v28[0] && v16 == a2)
            {

              LOBYTE(v13) = 0;
            }

            else
            {
              v24 = sub_21CB86344();

              LOBYTE(v13) = v24 ^ 1;
            }

            goto LABEL_24;
          }
        }

        else
        {
          sub_21CB25D9C(v39);
          v22 = *(&v40 + 1);
          if (!*(&v40 + 1))
          {

            LOBYTE(v13) = 0;
            goto LABEL_24;
          }

          v23 = v40;

          sub_21C6EA794(v39, &qword_27CDECC50, &unk_21CBB52A0);
          if (v23 != v28[0] || v22 != a2)
          {
            LOBYTE(v13) = sub_21CB86344();

            goto LABEL_24;
          }
        }

        LOBYTE(v13) = 1;
LABEL_24:
        sub_21C979EE8(v10);

        return v13 & 1;
      }

      v29[0] = v28[0];
      v29[1] = a2;
      MEMORY[0x28223BE20](v15);
      v28[-2] = v29;
      sub_21C969088(sub_21C9DC3D0, v18, v30);
      v40 = v31;
      v41 = v32;
      v43 = v34;
      v44 = v35;
      v42 = v33;
      v39[0] = v30[0];
      v39[1] = v30[1];
      if (*(&v31 + 1))
      {
        v19 = v44;
        v20 = [objc_opt_self() sharedStore];
        if (v19)
        {

          v21 = sub_21CB85584();
        }

        else
        {
          v21 = 0;
        }

        sub_21CB85B64();
        v25 = sub_21CB85584();

        v26 = [v20 _hasPersonWithParticipantID_contributedSavedAccountsToGroupWithID_];

        sub_21C6EA794(v39, &qword_27CDECC50, &unk_21CBB52A0);
        sub_21C979EE8(v10);
        LOBYTE(v13) = v26 ^ 1;
      }

      else
      {
        sub_21C979EE8(v10);
        LOBYTE(v13) = 1;
      }
    }

    else
    {
      sub_21C979EE8(v10);
      LOBYTE(v13) = 0;
    }
  }

  return v13 & 1;
}

uint64_t sub_21C9D9710()
{
  if (![objc_opt_self() isSignInWithAppleCredentialSharingEnabled])
  {
    if (qword_27CDEA478 != -1)
    {
      swift_once();
    }

    v10 = sub_21CB81C84();
    __swift_project_value_buffer(v10, qword_27CE186F8);
    v11 = sub_21CB81C64();
    v12 = sub_21CB85AE4();
    if (!os_log_type_enabled(v11, v12))
    {
      goto LABEL_17;
    }

    v13 = swift_slowAlloc();
    *v13 = 0;
    v14 = "SignInWithAppleCredentialSharing is not enabled";
    goto LABEL_16;
  }

  v1 = objc_opt_self();
  v2 = [v1 sharedInstance];
  v3 = [v2 primaryAuthKitAccount];
  v0[19] = v3;

  if (v3)
  {
    v4 = [v1 sharedInstance];
    v5 = [v4 altDSIDForAccount_];

    if (v5)
    {
      v6 = [objc_allocWithZone(MEMORY[0x277CF02E8]) initWithAltDSID_];
      v0[20] = v6;

      sub_21CB85B64();
      v7 = sub_21CB85584();

      [v6 setCurrentGroupID_];

      v8 = [objc_allocWithZone(PMSignInWithAppleController) init];
      v0[21] = v8;
      v0[2] = v0;
      v0[3] = sub_21C9D9AC8;
      v9 = swift_continuation_init();
      v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF4468, &qword_21CBBA910);
      v0[10] = MEMORY[0x277D85DD0];
      v0[11] = 1107296256;
      v0[12] = sub_21CAB18DC;
      v0[13] = &block_descriptor_37_0;
      v0[14] = v9;
      [v8 leaveGroupWithContext:v6 completion:v0 + 10];

      return MEMORY[0x282200938](v0 + 2);
    }
  }

  if (qword_27CDEA478 != -1)
  {
    swift_once();
  }

  v15 = sub_21CB81C84();
  __swift_project_value_buffer(v15, qword_27CE186F8);
  v11 = sub_21CB81C64();
  v12 = sub_21CB85AF4();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    v14 = "Missing account or altDSID. Unable to proceed with group departures for Sign in with Apple.";
LABEL_16:
    _os_log_impl(&dword_21C6E5000, v11, v12, v14, v13, 2u);
    MEMORY[0x21CF16D90](v13, -1, -1);
  }

LABEL_17:

  v16 = v0[1];

  return v16();
}

uint64_t sub_21C9D9AC8()
{
  v1 = *(*v0 + 48);
  *(*v0 + 176) = v1;
  if (v1)
  {
    v2 = sub_21C9D9BD8;
  }

  else
  {
    v2 = sub_21C9DC4E0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_21C9D9BD8(uint64_t a1)
{
  swift_willThrow();
  if (qword_27CDEA478 != -1)
  {
    swift_once();
  }

  v2 = sub_21CB81C84();
  __swift_project_value_buffer(v2, qword_27CE186F8);
  v3 = sub_21CB81C64();
  v4 = sub_21CB85AF4();
  v5 = os_log_type_enabled(v3, v4);
  v7 = v1[21];
  v6 = v1[22];
  v9 = v1[19];
  v8 = v1[20];
  if (v5)
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_21C6E5000, v3, v4, "Failed group departure operations for Sign in with Apple accounts.", v10, 2u);
    MEMORY[0x21CF16D90](v10, -1, -1);
  }

  v11 = v1[1];

  return v11();
}

uint64_t sub_21C9D9D40()
{
  if (![objc_opt_self() isSignInWithAppleCredentialSharingEnabled])
  {
    if (qword_27CDEA478 != -1)
    {
      swift_once();
    }

    v10 = sub_21CB81C84();
    __swift_project_value_buffer(v10, qword_27CE186F8);
    v11 = sub_21CB81C64();
    v12 = sub_21CB85AE4();
    if (!os_log_type_enabled(v11, v12))
    {
      goto LABEL_17;
    }

    v13 = swift_slowAlloc();
    *v13 = 0;
    v14 = "SignInWithAppleCredentialSharing is not enabled";
    goto LABEL_16;
  }

  v1 = objc_opt_self();
  v2 = [v1 sharedInstance];
  v3 = [v2 primaryAuthKitAccount];
  v0[19] = v3;

  if (v3)
  {
    v4 = [v1 sharedInstance];
    v5 = [v4 altDSIDForAccount_];

    if (v5)
    {
      v6 = [objc_allocWithZone(MEMORY[0x277CF02E8]) initWithAltDSID_];
      v0[20] = v6;

      sub_21CB85B64();
      v7 = sub_21CB85584();

      [v6 setCurrentGroupID_];

      v8 = [objc_allocWithZone(PMSignInWithAppleController) init];
      v0[21] = v8;
      v0[2] = v0;
      v0[3] = sub_21C9DA0F8;
      v9 = swift_continuation_init();
      v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF4468, &qword_21CBBA910);
      v0[10] = MEMORY[0x277D85DD0];
      v0[11] = 1107296256;
      v0[12] = sub_21CAB18DC;
      v0[13] = &block_descriptor_34_0;
      v0[14] = v9;
      [v8 deleteAllItemsFromDepartedGroupWithContext:v6 completion:v0 + 10];

      return MEMORY[0x282200938](v0 + 2);
    }
  }

  if (qword_27CDEA478 != -1)
  {
    swift_once();
  }

  v15 = sub_21CB81C84();
  __swift_project_value_buffer(v15, qword_27CE186F8);
  v11 = sub_21CB81C64();
  v12 = sub_21CB85AF4();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    v14 = "Missing account or altDSID. Unable to proceed with group departures for Sign in with Apple.";
LABEL_16:
    _os_log_impl(&dword_21C6E5000, v11, v12, v14, v13, 2u);
    MEMORY[0x21CF16D90](v13, -1, -1);
  }

LABEL_17:

  v16 = v0[1];

  return v16();
}

uint64_t sub_21C9DA0F8()
{
  v1 = *(*v0 + 48);
  *(*v0 + 176) = v1;
  if (v1)
  {
    v2 = sub_21C9DA274;
  }

  else
  {
    v2 = sub_21C9DA208;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_21C9DA208()
{
  v1 = *(v0 + 160);
  v2 = *(v0 + 168);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_21C9DA274(uint64_t a1)
{
  swift_willThrow();
  if (qword_27CDEA478 != -1)
  {
    swift_once();
  }

  v2 = sub_21CB81C84();
  __swift_project_value_buffer(v2, qword_27CE186F8);
  v3 = sub_21CB81C64();
  v4 = sub_21CB85AF4();
  v5 = os_log_type_enabled(v3, v4);
  v7 = v1[21];
  v6 = v1[22];
  v9 = v1[19];
  v8 = v1[20];
  if (v5)
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_21C6E5000, v3, v4, "Failed to cleanup Sign in with Apple items", v10, 2u);
    MEMORY[0x21CF16D90](v10, -1, -1);
  }

  v11 = v1[1];

  return v11();
}

uint64_t sub_21C9DA3BC(uint64_t a1)
{
  *(v1 + 280) = a1;
  v3 = swift_task_alloc();
  *(v1 + 288) = v3;
  *v3 = v1;
  v3[1] = sub_21C9DA454;

  return sub_21C9D96F0(a1);
}

uint64_t sub_21C9DA454()
{

  return MEMORY[0x2822009F8](sub_21C9DA550, 0, 0);
}

uint64_t sub_21C9DA550(uint64_t a1)
{
  sub_21CB85B64();
  v2 = objc_allocWithZone(MEMORY[0x277CDBD28]);
  v3 = sub_21CB85584();

  v4 = [v2 initWithGroupID_];
  v1[37] = v4;

  v5 = [objc_opt_self() sharedInstance];
  v1[38] = v5;
  v1[2] = v1;
  v1[3] = sub_21C9DA6EC;
  v6 = swift_continuation_init();
  v1[25] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF4468, &qword_21CBBA910);
  v1[18] = MEMORY[0x277D85DD0];
  v1[19] = 1107296256;
  v1[20] = sub_21C9D7F94;
  v1[21] = &block_descriptor_40_0;
  v1[22] = v6;
  [v5 leaveGroupWithRequest:v4 completion:v1 + 18];

  return MEMORY[0x282200938](v1 + 2);
}

uint64_t sub_21C9DA6EC()
{
  v1 = *(*v0 + 48);
  *(*v0 + 312) = v1;
  if (v1)
  {
    v2 = sub_21C9DAC58;
  }

  else
  {
    v2 = sub_21C9DA7FC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_21C9DA7FC()
{
  v1 = [objc_opt_self() sharedStore];
  *(v0 + 320) = v1;
  sub_21CB85B64();
  v2 = sub_21CB85584();
  *(v0 + 328) = v2;

  *(v0 + 80) = v0;
  *(v0 + 120) = v0 + 272;
  *(v0 + 88) = sub_21C9DA970;
  v3 = swift_continuation_init();
  *(v0 + 264) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF4470, &qword_21CBBA918);
  *(v0 + 208) = MEMORY[0x277D85DD0];
  *(v0 + 216) = 1107296256;
  *(v0 + 224) = sub_21C82D1CC;
  *(v0 + 232) = &block_descriptor_44;
  *(v0 + 240) = v3;
  [v1 _recordGroupIdentifierForExitCleanup_completionHandler_];

  return MEMORY[0x282200938](v0 + 80);
}

uint64_t sub_21C9DA970()
{

  return MEMORY[0x2822009F8](sub_21C9DAA50, 0, 0);
}

uint64_t sub_21C9DAA50()
{
  v1 = *(v0 + 320);
  v2 = *(v0 + 328);

  v3 = swift_task_alloc();
  *(v0 + 336) = v3;
  *v3 = v0;
  v3[1] = sub_21C9DAAF8;
  v4 = *(v0 + 280);

  return sub_21C9D9D20(v4);
}

uint64_t sub_21C9DAAF8()
{

  return MEMORY[0x2822009F8](sub_21C9DABF4, 0, 0);
}

uint64_t sub_21C9DABF4()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_21C9DAC58(uint64_t a1)
{
  v2 = v1[38];
  v3 = v1[37];
  swift_willThrow();

  v4 = v1[1];

  return v4();
}

uint64_t sub_21C9DACD0(uint64_t a1)
{
  *(v1 + 280) = a1;
  v3 = swift_task_alloc();
  *(v1 + 288) = v3;
  *v3 = v1;
  v3[1] = sub_21C9DAD68;

  return sub_21C9D96F0(a1);
}

uint64_t sub_21C9DAD68()
{

  return MEMORY[0x2822009F8](sub_21C9DAE64, 0, 0);
}

uint64_t sub_21C9DAE64(uint64_t a1)
{
  sub_21CB85B64();
  v2 = objc_allocWithZone(MEMORY[0x277CDBD18]);
  v3 = sub_21CB85584();

  v4 = [v2 initWithGroupID_];
  v1[37] = v4;

  v5 = [objc_opt_self() sharedInstance];
  v1[38] = v5;
  v1[2] = v1;
  v1[3] = sub_21C9DB000;
  v6 = swift_continuation_init();
  v1[25] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF4468, &qword_21CBBA910);
  v1[18] = MEMORY[0x277D85DD0];
  v1[19] = 1107296256;
  v1[20] = sub_21C9D7F94;
  v1[21] = &block_descriptor_25;
  v1[22] = v6;
  [v5 deleteGroupWithRequest:v4 completion:v1 + 18];

  return MEMORY[0x282200938](v1 + 2);
}

uint64_t sub_21C9DB000()
{
  v1 = *(*v0 + 48);
  *(*v0 + 312) = v1;
  if (v1)
  {
    v2 = sub_21C9DC4E8;
  }

  else
  {
    v2 = sub_21C9DB110;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_21C9DB110()
{
  v1 = [objc_opt_self() sharedStore];
  *(v0 + 320) = v1;
  sub_21CB85B64();
  v2 = sub_21CB85584();
  *(v0 + 328) = v2;

  *(v0 + 80) = v0;
  *(v0 + 120) = v0 + 272;
  *(v0 + 88) = sub_21C9DB284;
  v3 = swift_continuation_init();
  *(v0 + 264) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF4470, &qword_21CBBA918);
  *(v0 + 208) = MEMORY[0x277D85DD0];
  *(v0 + 216) = 1107296256;
  *(v0 + 224) = sub_21C82D1CC;
  *(v0 + 232) = &block_descriptor_29;
  *(v0 + 240) = v3;
  [v1 _recordGroupIdentifierForExitCleanup_completionHandler_];

  return MEMORY[0x282200938](v0 + 80);
}

uint64_t sub_21C9DB284()
{

  return MEMORY[0x2822009F8](sub_21C9DB364, 0, 0);
}

uint64_t sub_21C9DB364()
{
  v1 = *(v0 + 320);
  v2 = *(v0 + 328);

  v3 = swift_task_alloc();
  *(v0 + 336) = v3;
  *v3 = v0;
  v3[1] = sub_21C9DB40C;
  v4 = *(v0 + 280);

  return sub_21C9D9D20(v4);
}

uint64_t sub_21C9DB40C()
{

  return MEMORY[0x2822009F8](sub_21C9DC4F0, 0, 0);
}

uint64_t sub_21C9DB528()
{
  v1 = [objc_opt_self() sharedInstance];
  v0[20] = v1;
  sub_21CB85B64();
  v2 = sub_21CB85584();
  v0[21] = v2;

  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_21C9DB694;
  v3 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF4458, &unk_21CBBA8E0);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_21C952AD0;
  v0[13] = &block_descriptor_17;
  v0[14] = v3;
  [v1 acceptInviteForGroupID:v2 completion:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_21C9DB694()
{
  v1 = *(*v0 + 48);
  *(*v0 + 176) = v1;
  if (v1)
  {
    v2 = sub_21C9DB814;
  }

  else
  {
    v2 = sub_21C9DB7A4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_21C9DB7A4()
{
  v1 = *(v0 + 160);
  v2 = *(v0 + 168);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_21C9DB814(uint64_t a1)
{
  v2 = v1[21];
  v3 = v1[20];
  swift_willThrow();

  v4 = v1[1];

  return v4();
}

uint64_t sub_21C9DB8AC()
{
  v1 = [objc_opt_self() sharedInstance];
  v0[20] = v1;
  sub_21CB85B64();
  v2 = sub_21CB85584();
  v0[21] = v2;

  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_21C9DBA18;
  v3 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF4458, &unk_21CBBA8E0);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_21C952AD0;
  v0[13] = &block_descriptor_23;
  v0[14] = v3;
  [v1 declineInviteForGroupID:v2 completion:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_21C9DBA18()
{
  v1 = *(*v0 + 48);
  *(*v0 + 176) = v1;
  if (v1)
  {
    v2 = sub_21C9DC4EC;
  }

  else
  {
    v2 = sub_21C9DC4E4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

unint64_t sub_21C9DBB28()
{
  result = qword_27CDF4478;
  if (!qword_27CDF4478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF4478);
  }

  return result;
}

uint64_t sub_21C9DBB7C(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_21CB85C44() - 8);
  v6 = (*(v5 + 80) + 48) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = v1[5];
  v11 = *(v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_21C702EFC;

  return sub_21C9D7DAC(a1, v7, v8, v9, v10, v1 + v6, v11);
}

uint64_t sub_21C9DBCB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x2822009F8](sub_21C9DBCD8, 0, 0);
}

uint64_t sub_21C9DBCD8()
{
  v1 = objc_opt_self();
  v2 = [v1 sharedInstance];
  v3 = [v2 primaryAuthKitAccount];
  v0[6] = v3;

  if (v3)
  {
    v4 = [v1 sharedInstance];
    v5 = [v4 altDSIDForAccount_];

    if (v5)
    {
      v6 = v0[4];
      v7 = v0[5];
      v9 = v0[2];
      v8 = v0[3];
      v10 = [objc_allocWithZone(MEMORY[0x277CF02E8]) initWithAltDSID_];
      v0[7] = v10;

      v11 = sub_21CB85584();
      [v10 setCurrentGroupID_];

      v12 = [objc_allocWithZone(PMSignInWithAppleController) init];
      v0[8] = v12;
      v13 = swift_task_alloc();
      v0[9] = v13;
      v13[2] = v9;
      v13[3] = v7;
      v13[4] = v12;
      v13[5] = v10;
      v13[6] = v8;
      v13[7] = v6;
      v14 = swift_task_alloc();
      v0[10] = v14;
      *v14 = v0;
      v14[1] = sub_21C9DBFCC;

      return MEMORY[0x282200600]();
    }
  }

  if (qword_27CDEA478 != -1)
  {
    swift_once();
  }

  v15 = sub_21CB81C84();
  __swift_project_value_buffer(v15, qword_27CE186F8);
  v16 = sub_21CB81C64();
  v17 = sub_21CB85AF4();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&dword_21C6E5000, v16, v17, "Missing account or altDSID. Unable to proceed with group departures for Sign in with Apple.", v18, 2u);
    MEMORY[0x21CF16D90](v18, -1, -1);
  }

  v19 = v0[1];

  return v19();
}

uint64_t sub_21C9DBFCC()
{

  return MEMORY[0x2822009F8](sub_21C9DC0E4, 0, 0);
}

uint64_t sub_21C9DC0E4()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_21C9DC150(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = v2[5];
  v11 = v2[6];
  v10 = v2[7];
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_21C6F35D0;

  return sub_21C9D8064(a1, a2, v6, v7, v8, v9, v11, v10);
}

uint64_t sub_21C9DC22C(uint64_t a1)
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
  v11[1] = sub_21C6F35D0;

  return sub_21C9D85EC(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_21C9DC318(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_21C6F35D0;

  return sub_21C6EE100(a1, v4);
}

uint64_t sub_21C9DC3D0(uint64_t a1)
{
  v2 = *(v1 + 16);
  if (*(a1 + 32) == *v2 && *(a1 + 40) == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_21CB86344() & 1;
  }
}

unint64_t sub_21C9DC43C()
{
  result = qword_27CDF4480;
  if (!qword_27CDF4480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF4480);
  }

  return result;
}

__n128 __swift_memcpy112_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = result;
  *(a1 + 64) = v5;
  return result;
}

uint64_t sub_21C9DC518(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 112))
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

uint64_t sub_21C9DC560(uint64_t result, int a2, int a3)
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
      *(result + 40) = (a2 - 1);
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

id sub_21C9DC5CC()
{
  v1 = [objc_allocWithZone(MEMORY[0x277CBAA00]) init];
  if (*(v0 + 8))
  {
    v2 = sub_21CB85584();
  }

  else
  {
    v2 = 0;
  }

  [v1 setContactDisplayName_];

  if (*(v0 + 24))
  {
    v3 = sub_21CB85584();
  }

  else
  {
    v3 = 0;
  }

  [v1 setShortContactDisplayName_];

  v4 = sub_21CB85584();
  [v1 setHandle_];

  v5 = sub_21CB85584();
  [v1 setHandleForDisplay_];

  [v1 setIsMeParticipant_];
  [v1 setGroupPermissionLevel_];
  [v1 setInviteStatus_];
  if (*(v0 + 96))
  {
    v6 = sub_21CB85584();
  }

  else
  {
    v6 = 0;
  }

  [v1 setParticipantID_];

  [v1 setContact_];
  return v1;
}

void sub_21C9DC744(uint64_t a1)
{
  if (*(v1 + 8))
  {
    sub_21CB864A4();
    sub_21CB854C4();
    if (*(v1 + 24))
    {
LABEL_3:
      sub_21CB864A4();
      sub_21CB854C4();
      goto LABEL_6;
    }
  }

  else
  {
    sub_21CB864A4();
    if (*(v1 + 24))
    {
      goto LABEL_3;
    }
  }

  sub_21CB864A4();
LABEL_6:
  sub_21CB854C4();
  sub_21CB854C4();
  sub_21CB854C4();
  sub_21CB864A4();
  MEMORY[0x21CF15F90](*(v1 + 81));
  MEMORY[0x21CF15F90](*(v1 + 82));
  if (!*(v1 + 96))
  {
    sub_21CB864A4();
    v2 = *(v1 + 104);
    if (v2)
    {
      goto LABEL_8;
    }

LABEL_12:
    sub_21CB864A4();
    return;
  }

  sub_21CB864A4();
  sub_21CB854C4();
  v2 = *(v1 + 104);
  if (!v2)
  {
    goto LABEL_12;
  }

LABEL_8:
  sub_21CB864A4();
  v3 = v2;
  sub_21CB85DE4();
}

uint64_t sub_21C9DC8A8()
{
  sub_21CB86484();
  sub_21C9DC744(v1);
  return sub_21CB864D4();
}

uint64_t sub_21C9DC8EC(uint64_t a1)
{
  sub_21CB86484();
  sub_21C9DC744(v2);
  return sub_21CB864D4();
}

uint64_t sub_21C9DC928(_OWORD *a1, __int128 *a2)
{
  v2 = a1[5];
  v13[4] = a1[4];
  v13[5] = v2;
  v3 = a1[6];
  v4 = a1[1];
  v13[0] = *a1;
  v13[1] = v4;
  v5 = a1[3];
  v13[2] = a1[2];
  v13[3] = v5;
  v6 = *a2;
  v7 = a2[1];
  v13[6] = v3;
  v14[0] = v6;
  v8 = a2[2];
  v9 = a2[3];
  v10 = a2[6];
  v14[5] = a2[5];
  v14[6] = v10;
  v11 = a2[4];
  v14[3] = v9;
  v14[4] = v11;
  v14[1] = v7;
  v14[2] = v8;
  return sub_21C9DCA4C(v13, v14) & 1;
}

unint64_t sub_21C9DC994()
{
  result = qword_27CDF4488;
  if (!qword_27CDF4488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF4488);
  }

  return result;
}

unint64_t sub_21C9DC9EC()
{
  result = qword_27CDF4490;
  if (!qword_27CDF4490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF4490);
  }

  return result;
}

uint64_t sub_21C9DCA40@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 40);
  *a1 = *(v1 + 32);
  a1[1] = v2;
}

uint64_t sub_21C9DCA4C(uint64_t *a1, uint64_t a2)
{
  v4 = a1[1];
  v5 = *(a2 + 8);
  if (v4)
  {
    if (!v5)
    {
      return 0;
    }

    v6 = *a1 == *a2 && v4 == v5;
    if (!v6 && (sub_21CB86344() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v5)
  {
    return 0;
  }

  v7 = a1[3];
  v8 = *(a2 + 24);
  if (v7)
  {
    if (!v8 || (a1[2] != *(a2 + 16) || v7 != v8) && (sub_21CB86344() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v8)
  {
    return 0;
  }

  if ((a1[4] != *(a2 + 32) || a1[5] != *(a2 + 40)) && (sub_21CB86344() & 1) == 0 || (a1[6] != *(a2 + 48) || a1[7] != *(a2 + 56)) && (sub_21CB86344() & 1) == 0 || (a1[8] != *(a2 + 64) || a1[9] != *(a2 + 72)) && (sub_21CB86344() & 1) == 0 || ((*(a1 + 80) ^ *(a2 + 80)) & 1) != 0 || *(a1 + 81) != *(a2 + 81) || *(a1 + 82) != *(a2 + 82))
  {
    return 0;
  }

  v9 = a1[12];
  v10 = *(a2 + 96);
  if (v9)
  {
    if (!v10 || (a1[11] != *(a2 + 88) || v9 != v10) && (sub_21CB86344() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v10)
  {
    return 0;
  }

  v11 = a1[13];
  v12 = *(a2 + 104);
  if (v11)
  {
    if (v12)
    {
      sub_21C9DCC18();
      v13 = v12;
      v14 = v11;
      v15 = sub_21CB85DD4();

      if (v15)
      {
        return 1;
      }
    }
  }

  else if (!v12)
  {
    return 1;
  }

  return 0;
}

unint64_t sub_21C9DCC18()
{
  result = qword_27CDF8A90;
  if (!qword_27CDF8A90)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27CDF8A90);
  }

  return result;
}

id sub_21C9DCC64@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = [a1 contactDisplayName];
  if (v4)
  {
    v5 = v4;
    v6 = sub_21CB855C4();
    v38 = v7;
    v39 = v6;
  }

  else
  {
    v38 = 0;
    v39 = 0;
  }

  v8 = [a1 shortContactDisplayName];
  if (v8)
  {
    v9 = v8;
    v10 = sub_21CB855C4();
    v36 = v11;
    v37 = v10;
  }

  else
  {
    v36 = 0;
    v37 = 0;
  }

  v12 = [a1 handle];
  v13 = sub_21CB855C4();
  v34 = v14;
  v35 = v13;

  v15 = [a1 handleForDisplay];
  sub_21CB855C4();

  v16 = sub_21CB857A4();
  v32 = v17;
  v33 = v16;
  v18 = [a1 displayName];
  v19 = sub_21CB855C4();
  v21 = v20;

  v22 = [a1 isMeParticipant];
  v23 = [a1 groupPermissionLevel];
  v24 = [a1 inviteStatus];
  v25 = [a1 participantID];
  if (v25)
  {
    v26 = v25;
    v27 = sub_21CB855C4();
    v29 = v28;
  }

  else
  {
    v27 = 0;
    v29 = 0;
  }

  if (v24 >= 4)
  {
    LOBYTE(v24) = 0;
  }

  if (v23 == 2)
  {
    v30 = 2;
  }

  else
  {
    v30 = v23 == 1;
  }

  result = [a1 contact];
  *a2 = v39;
  *(a2 + 8) = v38;
  *(a2 + 16) = v37;
  *(a2 + 24) = v36;
  *(a2 + 32) = v35;
  *(a2 + 40) = v34;
  *(a2 + 48) = v33;
  *(a2 + 56) = v32;
  *(a2 + 64) = v19;
  *(a2 + 72) = v21;
  *(a2 + 80) = v22;
  *(a2 + 81) = v30;
  *(a2 + 82) = v24;
  *(a2 + 88) = v27;
  *(a2 + 96) = v29;
  *(a2 + 104) = result;
  return result;
}

unint64_t sub_21C9DCEC4()
{
  result = qword_27CDF4498;
  if (!qword_27CDF4498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF4498);
  }

  return result;
}

unint64_t sub_21C9DCF1C()
{
  result = qword_27CDF44A0;
  if (!qword_27CDF44A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF44A0);
  }

  return result;
}

uint64_t type metadata accessor for PMLoginChoiceCell(uint64_t a1)
{
  result = qword_27CDF44C0;
  if (!qword_27CDF44C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21C9DCFE4(uint64_t a1)
{
  sub_21CB81884();
  if (v1 <= 0x3F)
  {
    sub_21C9DD0B8();
    if (v2 <= 0x3F)
    {
      sub_21C9DD11C(319);
      if (v3 <= 0x3F)
      {
        sub_21C735A14(319);
        if (v4 <= 0x3F)
        {
          sub_21C97C144(319);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

unint64_t sub_21C9DD0B8()
{
  result = qword_27CDF44D0;
  if (!qword_27CDF44D0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_27CDF44D0);
  }

  return result;
}

void sub_21C9DD11C(uint64_t a1)
{
  if (!qword_27CDF2C50)
  {
    sub_21C6E8F4C(255, &qword_27CDF44E0, 0x277CF0378);
    v1 = sub_21CB85E54();
    if (!v2)
    {
      atomic_store(v1, &qword_27CDF2C50);
    }
  }
}

uint64_t sub_21C9DD1A0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v41 = a1;
  v38 = sub_21CB83274();
  v34 = *(v38 - 8);
  MEMORY[0x28223BE20](v38);
  v40 = &v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v37 = &v33 - v5;
  v36 = sub_21CB83A34();
  v35 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF44E8, &qword_21CBBACD0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v33 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF44F0, &qword_21CBBACD8);
  MEMORY[0x28223BE20](v11);
  v13 = &v33 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF44F8, &qword_21CBBACE0);
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v33 - v16;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF4500, &qword_21CBBACE8);
  MEMORY[0x28223BE20](v39);
  v19 = &v33 - v18;
  *v10 = sub_21CB83074();
  *(v10 + 1) = 0;
  v10[16] = 1;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF4508, &qword_21CBBACF0);
  sub_21C9DD798(v2, &v10[*(v20 + 44)]);
  sub_21CB85224();
  v21 = v34;
  sub_21CB82AC4();
  sub_21C716934(v10, v13, &qword_27CDF44E8, &qword_21CBBACD0);
  v22 = &v13[*(v11 + 36)];
  v23 = v49;
  *(v22 + 4) = v48;
  *(v22 + 5) = v23;
  *(v22 + 6) = v50;
  v24 = v45;
  *v22 = v44;
  *(v22 + 1) = v24;
  v25 = v47;
  *(v22 + 2) = v46;
  *(v22 + 3) = v25;
  sub_21CB83A24();
  v26 = sub_21C9E026C();
  sub_21CB844F4();
  (*(v35 + 8))(v7, v36);
  sub_21C6EA794(v13, &qword_27CDF44F0, &qword_21CBBACD8);
  v27 = v37;
  sub_21CB83254();
  v42 = v11;
  v43 = v26;
  v28 = v38;
  swift_getOpaqueTypeConformance2();
  sub_21CB84594();
  v29 = *(v21 + 8);
  v29(v27, v28);
  (*(v15 + 8))(v17, v14);
  v30 = type metadata accessor for PMLoginChoiceCell(0);
  swift_getKeyPath(byte_21CBBACF8);
  swift_getKeyPath(byte_21CBBAD20);
  sub_21CB81DB4();

  if (v42 == *(v2 + *(v30 + 28)))
  {
    v31 = v40;
    sub_21CB83204();
  }

  else
  {
    v42 = MEMORY[0x277D84F90];
    sub_21C9E06B8(&qword_27CDF4520, MEMORY[0x277CE01F0], MEMORY[0x277CE0200]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF4528, &unk_21CBBAD40);
    sub_21C6EADEC(&qword_27CDF4530, &qword_27CDF4528, &unk_21CBBAD40, MEMORY[0x277D83970]);
    v31 = v40;
    sub_21CB85F14();
  }

  sub_21CB828B4();
  v29(v31, v28);
  return sub_21C773954(v19);
}

uint64_t sub_21C9DD798@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v66 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBB58, &qword_21CBAF8A0);
  MEMORY[0x28223BE20](v3 - 8);
  v59 = &v58 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF4540, &qword_21CBBAD50);
  v61 = *(v5 - 8);
  v62 = v5;
  MEMORY[0x28223BE20](v5);
  v60 = &v58 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF4548, &qword_21CBBAD58);
  MEMORY[0x28223BE20](v7 - 8);
  v65 = &v58 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v64 = &v58 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF4550, &qword_21CBBAD60);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v58 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF4558, &qword_21CBBAD68);
  MEMORY[0x28223BE20](v15 - 8);
  v63 = &v58 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v58 - v18;
  v20 = sub_21C9DDFBC();
  v67 = v19;
  if (v20)
  {
    sub_21C9DECCC(a1, v20, &v88);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF45B0, &qword_21CBBADC0);
    sub_21C9E0340();
    sub_21CB84494();

    v95 = v89[1];
    v96 = v89[2];
    v97 = v89[3];
    LOBYTE(v98) = v89[4];
    v93 = v88;
    v94 = v89[0];
    v21 = v67;
    sub_21C6EA794(&v93, &qword_27CDF45B0, &qword_21CBBADC0);
    sub_21C716934(v14, v21, &qword_27CDF4550, &qword_21CBBAD60);
    (*(v12 + 56))(v21, 0, 1, v11);
  }

  else
  {
    (*(v12 + 56))(v19, 1, 1, v11);
  }

  sub_21C9DEF74();
  if (v23)
  {
    v24 = v22;
    v25 = sub_21CB832F4();
    v69 = 1;
    sub_21C9E002C(v24, &v79);

    *&v68[7] = v79;
    *&v68[23] = v80;
    *&v68[39] = v81;
    *&v68[55] = v82;
    v26 = v69;
    v27 = sub_21CB83D14();
    if (sub_21C9DDFBC())
    {
    }

    sub_21CB81F24();
    *(&v89[1] + 1) = *&v68[16];
    *(&v89[2] + 1) = *&v68[32];
    *(&v89[3] + 1) = *&v68[48];
    LOBYTE(v70) = 0;
    v88 = v25;
    LOBYTE(v89[0]) = v26;
    *&v89[4] = *&v68[63];
    *(v89 + 1) = *v68;
    BYTE8(v89[4]) = v27;
    *&v90 = v28;
    *(&v90 + 1) = v29;
    *&v91 = v30;
    *(&v91 + 1) = v31;
    v92 = 0;
    nullsub_1();
    v99 = v90;
    v100 = v91;
    v101 = v92;
    v95 = v89[1];
    v96 = v89[2];
    v97 = v89[3];
    v98 = v89[4];
    v93 = v88;
    v94 = v89[0];
  }

  else
  {
    sub_21C9E0324(&v93);
  }

  v32 = type metadata accessor for PMLoginChoiceCell(0);
  swift_getKeyPath(byte_21CBBACF8);
  swift_getKeyPath(byte_21CBBAD20);
  sub_21CB81DB4();

  if (v88 == *(a1 + *(v32 + 28)))
  {
    v33 = sub_21CB84BB4();
    v34 = sub_21CB83DC4();
    v35 = v59;
    (*(*(v34 - 8) + 56))(v59, 1, 1, v34);
    v36 = sub_21CB83E14();
    sub_21C6EA794(v35, &qword_27CDEBB58, &qword_21CBAF8A0);
    KeyPath = swift_getKeyPath(byte_21CBBAD80);
    v38 = sub_21CB84A74();
    *&v88 = v33;
    *(&v88 + 1) = KeyPath;
    *&v89[0] = v36;
    *(&v89[0] + 1) = v38;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF4570, &unk_21CBBADB0);
    sub_21C8FD504();
    v39 = v60;
    sub_21CB84494();

    v40 = v64;
    sub_21C716934(v39, v64, &qword_27CDF4540, &qword_21CBBAD50);
    v41 = 0;
  }

  else
  {
    v41 = 1;
    v40 = v64;
  }

  (*(v61 + 56))(v40, v41, 1, v62);
  v42 = v67;
  v43 = v63;
  sub_21C6EDBAC(v67, v63, &qword_27CDF4558, &qword_21CBBAD68);
  v76 = v99;
  v77 = v100;
  v78 = v101;
  v72 = v95;
  v73 = v96;
  v74 = v97;
  v75 = v98;
  v70 = v93;
  v71 = v94;
  v44 = v65;
  sub_21C6EDBAC(v40, v65, &qword_27CDF4548, &qword_21CBBAD58);
  v45 = v66;
  sub_21C6EDBAC(v43, v66, &qword_27CDF4558, &qword_21CBBAD68);
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF4560, &qword_21CBBAD70);
  v47 = v46[12];
  v48 = v77;
  v85 = v76;
  v86 = v77;
  v50 = v74;
  v49 = v75;
  v83 = v74;
  v84 = v75;
  v51 = v72;
  v52 = v73;
  v81 = v72;
  v82 = v73;
  v54 = v70;
  v53 = v71;
  v79 = v70;
  v80 = v71;
  v55 = v45 + v47;
  *(v55 + 96) = v76;
  *(v55 + 112) = v48;
  *(v55 + 32) = v51;
  *(v55 + 48) = v52;
  *(v55 + 64) = v50;
  *(v55 + 80) = v49;
  v87 = v78;
  *(v55 + 128) = v78;
  *v55 = v54;
  *(v55 + 16) = v53;
  v56 = v45 + v46[16];
  *v56 = 0;
  *(v56 + 8) = 0;
  sub_21C6EDBAC(v44, v45 + v46[20], &qword_27CDF4548, &qword_21CBBAD58);
  sub_21C6EDBAC(&v79, &v88, &qword_27CDF4568, &qword_21CBBAD78);
  sub_21C6EA794(v40, &qword_27CDF4548, &qword_21CBBAD58);
  sub_21C6EA794(v42, &qword_27CDF4558, &qword_21CBBAD68);
  sub_21C6EA794(v44, &qword_27CDF4548, &qword_21CBBAD58);
  v90 = v76;
  v91 = v77;
  v92 = v78;
  v89[1] = v72;
  v89[2] = v73;
  v89[3] = v74;
  v89[4] = v75;
  v88 = v70;
  v89[0] = v71;
  sub_21C6EA794(&v88, &qword_27CDF4568, &qword_21CBBAD78);
  return sub_21C6EA794(v43, &qword_27CDF4558, &qword_21CBBAD68);
}

void *sub_21C9DDFBC()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF45F8, &unk_21CBBADE0);
  MEMORY[0x28223BE20](v2);
  v79 = &v76 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF4600, &qword_21CBB5D00);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v76 - v5;
  v83 = sub_21CB81A04();
  v85 = *(v83 - 8);
  MEMORY[0x28223BE20](v83);
  v8 = (&v76 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v9);
  v11 = &v76 - v10;
  MEMORY[0x28223BE20](v12);
  v81 = &v76 - v13;
  MEMORY[0x28223BE20](v14);
  v16 = &v76 - v15;
  MEMORY[0x28223BE20](v17);
  v19 = &v76 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF4608, &unk_21CBBADF0);
  MEMORY[0x28223BE20](v20 - 8);
  v80 = &v76 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v24 = &v76 - v23;
  MEMORY[0x28223BE20](v25);
  v27 = &v76 - v26;
  MEMORY[0x28223BE20](v28);
  v82 = (&v76 - v29);
  v30 = type metadata accessor for PMLoginChoiceCell(0);
  v84 = *(v1 + *(v30 + 20));
  v31 = [v84 loginChoiceKind];
  result = 0;
  if (v31 <= 3)
  {
    if ((v31 - 1) >= 2)
    {
      if (v31)
      {
        if (v31 == 3)
        {
          return sub_21CB84C14();
        }

        return result;
      }

      v48 = *(v1 + *(v30 + 24));
      if (v48)
      {
        v49 = v48;
        if ((sub_21CB81724() & 1) == 0)
        {

          return 0;
        }

        objc_opt_self();
        v50 = swift_dynamicCastObjCClass();
        if (v50)
        {
          v51 = v50;
          swift_unknownObjectRetain();
          v52 = [v51 underlyingAppleIDLoginChoice];
          if (v52)
          {
            v53 = v52;
            v54 = [objc_msgSend(v49 loginRowDataForLoginChoice_];

            swift_unknownObjectRelease();
LABEL_58:
            swift_unknownObjectRelease();
            v71 = sub_21CB84BA4();

            return v71;
          }

          swift_unknownObjectRelease();
        }

        v70 = [objc_msgSend(v49 loginRowData)];
        goto LABEL_58;
      }

      return 0;
    }

    if ((sub_21CB81724() & 1) == 0)
    {
      return 0;
    }

    if ((sub_21CB81724() & 1) == 0)
    {
      goto LABEL_53;
    }

    v41 = v83;
    v77 = *(v85 + 56);
    v78 = v85 + 56;
    v77(v82, 1, 1, v83);
    v42 = v84;
    swift_getObjectType();
    if (swift_conformsToProtocol2() && v42)
    {
      swift_getObjectType();
      swift_unknownObjectRetain();
      v43 = sub_21CB81984();
      v45 = v44;
      swift_unknownObjectRelease();
      v46 = v82;
      sub_21C6EA794(v82, &qword_27CDF4608, &unk_21CBBADF0);
      if (v45)
      {
        *v46 = v43;
        v46[1] = v45;
        v47 = MEMORY[0x277CBA880];
      }

      else
      {
        v47 = MEMORY[0x277CBA878];
      }

      v41 = v83;
    }

    else
    {
      v46 = v82;
      sub_21C6EA794(v82, &qword_27CDF4608, &unk_21CBBADF0);
      v47 = MEMORY[0x277CBA878];
    }

    (*(v85 + 104))(v46, *v47, v41);
    v77(v46, 0, 1, v41);
    sub_21CB81874();
    v57 = sub_21CB81864();
    v58 = *(v57 - 8);
    if ((*(v58 + 48))(v6, 1, v57) == 1)
    {
      sub_21C6EA794(v6, &qword_27CDF4600, &qword_21CBB5D00);
LABEL_45:
      v66 = v85;
LABEL_46:
      v68 = v81;
      v67 = v82;
LABEL_47:
      v69 = v80;
      sub_21C6EDBAC(v67, v80, &qword_27CDF4608, &unk_21CBBADF0);
      if ((*(v66 + 48))(v69, 1, v41) == 1)
      {
        sub_21C6EA794(v67, &qword_27CDF4608, &unk_21CBBADF0);
LABEL_52:
        sub_21C6EA794(v69, &qword_27CDF4608, &unk_21CBBADF0);
LABEL_53:
        if ([v84 loginChoiceKind] == 1)
        {
          sub_21CB81854();
          return sub_21CB84C14();
        }

        else
        {
          sub_21CB81844();
          return sub_21CB84BB4();
        }
      }

      (*(v66 + 32))(v68, v69, v41);
      [objc_opt_self() cellIconSize];
      sub_21C6E8F4C(0, &qword_27CDF4610, 0x277CBA968);
      if (!sub_21CB85D94())
      {
        (*(v66 + 8))(v68, v41);
        v69 = v82;
        goto LABEL_52;
      }

      v40 = sub_21CB84BA4();
      (*(v66 + 8))(v68, v41);
      sub_21C6EA794(v82, &qword_27CDF4608, &unk_21CBBADF0);
      return v40;
    }

    if ((*(v58 + 88))(v6, v57) != *MEMORY[0x277CBA7F8])
    {
      (*(v58 + 8))(v6, v57);
      goto LABEL_45;
    }

    (*(v58 + 96))(v6, v57);
    v59 = v85;
    v60 = v41;
    v61 = *(v85 + 32);
    v83 = v85 + 32;
    v76 = v61;
    v61(v19, v6, v41);
    (*(v59 + 16))(v27, v19, v41);
    v77(v27, 0, 1, v41);
    v62 = *(v2 + 48);
    v63 = v79;
    sub_21C6EDBAC(v82, v79, &qword_27CDF4608, &unk_21CBBADF0);
    sub_21C6EDBAC(v27, v63 + v62, &qword_27CDF4608, &unk_21CBBADF0);
    v64 = *(v59 + 48);
    if (v64(v63, 1, v60) == 1)
    {
      sub_21C6EA794(v27, &qword_27CDF4608, &unk_21CBBADF0);
      (*(v59 + 8))(v19, v60);
      v65 = v64(v63 + v62, 1, v60);
      v41 = v60;
      v66 = v59;
      if (v65 == 1)
      {
        sub_21C6EA794(v63, &qword_27CDF4608, &unk_21CBBADF0);
        v68 = v81;
        v67 = v82;
        goto LABEL_64;
      }
    }

    else
    {
      sub_21C6EDBAC(v63, v24, &qword_27CDF4608, &unk_21CBBADF0);
      if (v64(v63 + v62, 1, v60) != 1)
      {
        v76(v16, v63 + v62, v60);
        sub_21C9E06B8(&qword_27CDF4618, MEMORY[0x277CBA888], MEMORY[0x277CBA890]);
        v73 = sub_21CB85574();
        v74 = *(v85 + 8);
        v75 = v16;
        v66 = v85;
        v74(v75, v60);
        sub_21C6EA794(v27, &qword_27CDF4608, &unk_21CBBADF0);
        v74(v19, v60);
        v74(v24, v60);
        sub_21C6EA794(v63, &qword_27CDF4608, &unk_21CBBADF0);
        v41 = v60;
        v68 = v81;
        v67 = v82;
        if ((v73 & 1) == 0)
        {
          goto LABEL_47;
        }

LABEL_64:
        sub_21C6EA794(v67, &qword_27CDF4608, &unk_21CBBADF0);
        v77(v67, 1, 1, v41);
        goto LABEL_47;
      }

      sub_21C6EA794(v27, &qword_27CDF4608, &unk_21CBBADF0);
      v66 = v85;
      v72 = *(v85 + 8);
      v72(v19, v60);
      v72(v24, v60);
      v41 = v60;
    }

    sub_21C6EA794(v63, &qword_27CDF45F8, &unk_21CBBADE0);
    goto LABEL_46;
  }

  if (v31 == 4)
  {
    return sub_21CB84BB4();
  }

  if (v31 == 5)
  {
    v55 = v85;
    v56 = v83;
    (*(v85 + 104))(v11, *MEMORY[0x277CBA878], v83);
    [objc_opt_self() cellIconSize];
    sub_21C6E8F4C(0, &qword_27CDF4610, 0x277CBA968);
    if (sub_21CB85D94())
    {
      v40 = sub_21CB84BA4();
    }

    else
    {
      v40 = 0;
    }

    (*(v55 + 8))(v11, v56);
    return v40;
  }

  v33 = v85;
  if (v31 == 6)
  {
    objc_opt_self();
    result = swift_dynamicCastObjCClass();
    if (result)
    {
      v34 = result;
      swift_unknownObjectRetain();
      v35 = [v34 providerExtensionContainingAppBundleID];
      if (!v35)
      {
        swift_unknownObjectRelease();
        return 0;
      }

      v36 = v35;
      v37 = sub_21CB855C4();
      v39 = v38;

      *v8 = v37;
      v8[1] = v39;
      (*(v33 + 104))(v8, *MEMORY[0x277CBA880], v83);
      [objc_opt_self() cellIconSize];
      sub_21C6E8F4C(0, &qword_27CDF4610, 0x277CBA968);
      if (sub_21CB85D94())
      {
        v40 = sub_21CB84BA4();
        swift_unknownObjectRelease();
      }

      else
      {
        swift_unknownObjectRelease();
        v40 = 0;
      }

      (*(v33 + 8))(v8, v83);
      return v40;
    }
  }

  return result;
}

double sub_21C9DECCC@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBB58, &qword_21CBAF8A0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v22 - v7;
  if ([*(a1 + *(type metadata accessor for PMLoginChoiceCell(0) + 20)) loginChoiceKind] || !objc_msgSend(objc_opt_self(), sel_isAppleAccountBrandingEnabled))
  {
    [objc_opt_self() cellIconSize];
    sub_21CB85214();
    sub_21CB82374();
    v9 = v33;
    v10 = v34;
    v11 = v35;
    v12 = v36;
    v13 = v37;
    v14 = v38;
    v15 = sub_21CB83DC4();
    (*(*(v15 - 8) + 56))(v8, 1, 1, v15);
    v16 = sub_21CB83E14();
    sub_21C6EA794(v8, &qword_27CDEBB58, &qword_21CBAF8A0);
    KeyPath = swift_getKeyPath(byte_21CBBAD80);
    LOBYTE(v39) = v10;
    LOBYTE(v22[0]) = v12;

    v18 = sub_21CB84A74();
    v32 = 1;
    v22[0] = a2;
    v22[1] = v9;
    v23 = v10;
    v24 = v11;
    v25 = v12;
    v26 = v13;
    v27 = v14;
    v28 = KeyPath;
    v29 = v16;
    v30 = v18;
    v31 = 1;
  }

  else
  {
    LOBYTE(v33) = 0;
    v22[0] = a2;
    v31 = 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF45D8, &qword_21CBBADD0);
  sub_21C9E0450();
  sub_21CB83494();
  v19 = v42;
  *(a3 + 32) = v41;
  *(a3 + 48) = v19;
  *(a3 + 64) = v43;
  *(a3 + 80) = v44;
  result = *&v39;
  v21 = v40;
  *a3 = v39;
  *(a3 + 16) = v21;
  return result;
}

id sub_21C9DEF74()
{
  v1 = sub_21CB81024();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v108 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v108 - v6;
  v8 = type metadata accessor for PMLoginChoiceCell(0);
  v9 = [*(v0 + v8[5]) loginChoiceKind];
  result = 0;
  if (v9 <= 2)
  {
    if (!v9)
    {
      v28 = *(v0 + v8[6]);
      if (!v28)
      {
        return 0;
      }

      objc_opt_self();
      v29 = swift_dynamicCastObjCClass();
      v30 = v28;
      if (v29)
      {
        swift_unknownObjectRetain();
        v31 = [v29 underlyingAppleIDLoginChoice];
        if (v31)
        {
          v32 = v31;
          v33 = [v30 loginRowDataForLoginChoice_];
          v34 = [v33 loginRowText];
          v35 = sub_21CB855C4();

          v36 = [v33 loginRowDetailText];
          sub_21CB855C4();
          swift_unknownObjectRelease();

          swift_unknownObjectRelease();
          return v35;
        }

        swift_unknownObjectRelease();
      }

      v71 = [objc_msgSend(v30 loginRowData)];
      swift_unknownObjectRelease();
      v72 = sub_21CB855C4();

      v73 = [objc_msgSend(v30 loginRowData)];
      swift_unknownObjectRelease();
      sub_21CB855C4();

      return v72;
    }

    if (v9 != 1)
    {
      if (v9 != 2)
      {
        return result;
      }

      objc_opt_self();
      result = swift_dynamicCastObjCClass();
      if (!result)
      {
        return result;
      }

      v13 = result;
      swift_unknownObjectRetain();
      if ([v13 isRegistrationRequest])
      {
        v14 = [v13 localizedCredentialProviderName];
        v15 = sub_21CB855C4();
        v17 = v16;

        sub_21CB81014();
        sub_21CB81014();
        sub_21CB80FF4();
        v18 = *(v2 + 8);
        v18(v4, v1);
        v18(v7, v1);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB290, &qword_21CBA15C0);
        v19 = swift_allocObject();
        *(v19 + 16) = xmmword_21CBA0690;
        *(v19 + 56) = MEMORY[0x277D837D0];
        *(v19 + 64) = sub_21C7C0050();
        *(v19 + 32) = v15;
        *(v19 + 40) = v17;
        v20 = sub_21CB85594();
        goto LABEL_16;
      }

      v113 = v2;
      v54 = [v13 userVisibleName];
      v55 = sub_21CB855C4();
      v57 = v56;

      v58 = HIBYTE(v57) & 0xF;
      if ((v57 & 0x2000000000000000) == 0)
      {
        v58 = v55 & 0xFFFFFFFFFFFFLL;
      }

      if (v58)
      {
        v59 = [v13 userVisibleName];
        v60 = sub_21CB855C4();
      }

      else
      {
        sub_21CB81014();
        v111 = sub_21CB81004();
        v112 = v75;
        (*(v113 + 8))(v7, v1);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB290, &qword_21CBA15C0);
        v110 = swift_allocObject();
        *(v110 + 16) = xmmword_21CBA0690;
        result = [v13 identifier];
        if (!result)
        {
          goto LABEL_69;
        }

        v76 = result;
        v77 = [result credentialID];

        sub_21CB855C4();
        sub_21CB856C4();
        v78 = sub_21CB857B4();
        v108 = v79;
        v109 = v78;
        v81 = v80;
        v83 = v82;

        v84 = MEMORY[0x21CF15150](v109, v81, v108, v83);
        v86 = v85;

        v87 = v110;
        *(v110 + 56) = MEMORY[0x277D837D0];
        v87[8] = sub_21C7C0050();
        v87[4] = v84;
        v87[5] = v86;
        v60 = sub_21CB855F4();
      }

      if ([*(*(v0 + v8[9] + 8) + OBJC_IVAR____TtC17PasswordManagerUI32PMCredentialPickerViewController_presentationContext) shouldUseFallbackPasskeyUI])
      {
        swift_unknownObjectRelease();
        return v60;
      }

      v88 = [v13 groupName];
      v89 = v113;
      if (v88)
      {
        v90 = v88;
        v91 = sub_21CB855C4();
        v93 = v92;

        v94 = HIBYTE(v93) & 0xF;
        if ((v93 & 0x2000000000000000) == 0)
        {
          v94 = v91 & 0xFFFFFFFFFFFFLL;
        }

        if (v94)
        {
          sub_21CB81014();
          sub_21CB81004();
          (*(v89 + 8))(v7, v1);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB290, &qword_21CBA15C0);
          v95 = swift_allocObject();
          *(v95 + 16) = xmmword_21CBA0690;
          *(v95 + 56) = MEMORY[0x277D837D0];
          *(v95 + 64) = sub_21C7C0050();
          *(v95 + 32) = v91;
          *(v95 + 40) = v93;
          sub_21CB85594();

          swift_unknownObjectRelease();
          return v60;
        }
      }

      sub_21CB81014();
      sub_21CB81014();
      sub_21CB80FF4();
      swift_unknownObjectRelease();
      v107 = *(v89 + 8);
      v107(v4, v1);
      v107(v7, v1);
      return v60;
    }

    objc_opt_self();
    result = swift_dynamicCastObjCClass();
    if (!result)
    {
      return result;
    }

    v44 = result;
    swift_unknownObjectRetain();
    v45 = [v44 username];
    v46 = sub_21CB855C4();

    v47 = [v44 groupName];
    if (v47)
    {
      v48 = v47;
      v49 = sub_21CB855C4();
      v51 = v50;

      v52 = HIBYTE(v51) & 0xF;
      if ((v51 & 0x2000000000000000) == 0)
      {
        v52 = v49 & 0xFFFFFFFFFFFFLL;
      }

      if (v52)
      {
        sub_21CB81014();
        sub_21CB81004();
        (*(v2 + 8))(v7, v1);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB290, &qword_21CBA15C0);
        v53 = swift_allocObject();
        *(v53 + 16) = xmmword_21CBA0690;
        *(v53 + 56) = MEMORY[0x277D837D0];
        *(v53 + 64) = sub_21C7C0050();
        *(v53 + 32) = v49;
        *(v53 + 40) = v51;
        sub_21CB85594();

        swift_unknownObjectRelease();
        return v46;
      }
    }

    sub_21CB81014();
    sub_21CB81014();
    sub_21CB80FF4();
    swift_unknownObjectRelease();
    v74 = *(v2 + 8);
    v74(v4, v1);
    v74(v7, v1);
    return v46;
  }

  if (v9 > 4)
  {
    if (v9 == 5)
    {
      sub_21CB81014();
      sub_21CB81014();
      v39 = sub_21CB80FF4();
      v41 = v40;
      v42 = *(v2 + 8);
      v42(v4, v1);
      v42(v7, v1);
      sub_21CB81014();
      sub_21CB81004();
      v42(v7, v1);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB290, &qword_21CBA15C0);
      v43 = swift_allocObject();
      *(v43 + 16) = xmmword_21CBA0690;
      *(v43 + 56) = MEMORY[0x277D837D0];
      *(v43 + 64) = sub_21C7C0050();
      *(v43 + 32) = v39;
      *(v43 + 40) = v41;
      v11 = sub_21CB85594();

      return v11;
    }

    if (v9 != 6)
    {
      return result;
    }

    objc_opt_self();
    result = swift_dynamicCastObjCClass();
    if (!result)
    {
      return result;
    }

    v21 = result;
    swift_unknownObjectRetain();
    v22 = [v21 providerName];
    if (!v22)
    {
LABEL_35:
      swift_unknownObjectRelease();
      return 0;
    }

    v23 = v22;
    v24 = sub_21CB855C4();
    v26 = v25;

    sub_21CB81014();
    sub_21CB81004();
    (*(v2 + 8))(v7, v1);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB290, &qword_21CBA15C0);
    v27 = swift_allocObject();
    *(v27 + 16) = xmmword_21CBA0690;
    *(v27 + 56) = MEMORY[0x277D837D0];
    *(v27 + 64) = sub_21C7C0050();
    *(v27 + 32) = v24;
    *(v27 + 40) = v26;
    v20 = sub_21CB85594();
LABEL_16:

    swift_unknownObjectRelease();
    return v20;
  }

  if (v9 != 3)
  {
    sub_21CB81014();
    sub_21CB81014();
    v11 = sub_21CB80FF4();
    v12 = *(v2 + 8);
    v12(v4, v1);
    v12(v7, v1);
    return v11;
  }

  objc_opt_self();
  result = swift_dynamicCastObjCClass();
  if (result)
  {
    v37 = result;
    swift_unknownObjectRetain();
    v38 = [v37 credentialKind];
    if (v38 == 2)
    {
LABEL_25:
      sub_21CB81014();
      v20 = sub_21CB81004();
      swift_unknownObjectRelease();
      (*(v2 + 8))(v7, v1);
      return v20;
    }

    if (v38 != 1)
    {
      if (!v38)
      {
        goto LABEL_25;
      }

      goto LABEL_35;
    }

    v113 = v2;
    result = [v37 identifier];
    if (result)
    {
      v61 = result;
      v62 = [result credentialID];

      sub_21CB855C4();
      v63 = [v37 name];
      if (!v63)
      {
        goto LABEL_63;
      }

      v64 = v63;
      v65 = sub_21CB855C4();
      v67 = v66;

      v68 = HIBYTE(v67) & 0xF;
      if ((v67 & 0x2000000000000000) == 0)
      {
        v68 = v65 & 0xFFFFFFFFFFFFLL;
      }

      if (!v68)
      {
LABEL_63:
        sub_21CB81014();
        sub_21CB81004();
        (*(v113 + 8))(v7, v1);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB290, &qword_21CBA15C0);
        v96 = swift_allocObject();
        *(v96 + 16) = xmmword_21CBA0690;
        sub_21CB856C4();
        v97 = sub_21CB857B4();
        v99 = v98;
        v101 = v100;
        v103 = v102;

        v104 = MEMORY[0x21CF15150](v97, v99, v101, v103);
        v106 = v105;

        *(v96 + 56) = MEMORY[0x277D837D0];
        *(v96 + 64) = sub_21C7C0050();
        *(v96 + 32) = v104;
        *(v96 + 40) = v106;
        v70 = sub_21CB85594();

        swift_unknownObjectRelease();
        return v70;
      }

      result = [v37 name];
      if (result)
      {
        v69 = result;

        v70 = sub_21CB855C4();
        swift_unknownObjectRelease();

        return v70;
      }

LABEL_70:
      __break(1u);
      return result;
    }

    __break(1u);
LABEL_69:
    __break(1u);
    goto LABEL_70;
  }

  return result;
}

uint64_t sub_21C9E002C@<X0>(uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  sub_21C71F3FC();

  v8 = sub_21CB84054();
  v10 = v9;
  v12 = v11;
  if (a4)
  {
    v34 = v7;

    v13 = sub_21CB84054();
    v15 = v14;
    v17 = v16;
    sub_21CB83E94();
    v35 = v10;
    v18 = sub_21CB84024();
    v20 = v19;
    v36 = v12;
    v22 = v21;

    sub_21C74A72C(v13, v15, v17 & 1);

    sub_21CB84A84();
    a4 = sub_21CB83FC4();
    v24 = v23;
    v26 = v25;
    v28 = v27;
    v29 = v22 & 1;
    v12 = v36;
    v30 = v18;
    v10 = v35;
    sub_21C74A72C(v30, v20, v29);

    v31 = v26 & 1;
    sub_21C79B058(a4, v24, v26 & 1);

    v7 = v34;
  }

  else
  {
    v24 = 0;
    v31 = 0;
    v28 = 0;
  }

  v32 = v7 & 1;
  sub_21C79B058(v8, v10, v7 & 1);

  sub_21C8FECB4(a4, v24, v31, v28);
  sub_21C85CDBC(a4, v24, v31, v28);
  *a5 = v8;
  *(a5 + 8) = v10;
  *(a5 + 16) = v32;
  *(a5 + 24) = v12;
  *(a5 + 32) = a4;
  *(a5 + 40) = v24;
  *(a5 + 48) = v31;
  *(a5 + 56) = v28;
  sub_21C85CDBC(a4, v24, v31, v28);
  sub_21C74A72C(v8, v10, v32);
}

unint64_t sub_21C9E026C()
{
  result = qword_27CDF4510;
  if (!qword_27CDF4510)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF44F0, &qword_21CBBACD8);
    sub_21C6EADEC(&qword_27CDF4518, &qword_27CDF44E8, &qword_21CBBACD0, MEMORY[0x277CE1138]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF4510);
  }

  return result;
}

double sub_21C9E0324(uint64_t a1)
{
  *(a1 + 128) = 0;
  result = 0.0;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

unint64_t sub_21C9E0340()
{
  result = qword_27CDF45B8;
  if (!qword_27CDF45B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF45B0, &qword_21CBBADC0);
    sub_21C9E03C4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF45B8);
  }

  return result;
}

unint64_t sub_21C9E03C4()
{
  result = qword_27CDF45C0;
  if (!qword_27CDF45C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF45C8, &qword_21CBBADC8);
    sub_21C9E0450();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF45C0);
  }

  return result;
}

unint64_t sub_21C9E0450()
{
  result = qword_27CDF45D0;
  if (!qword_27CDF45D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF45D8, &qword_21CBBADD0);
    sub_21C9E0508();
    sub_21C6EADEC(&unk_27CDF45A0, &qword_27CDEECF0, &qword_21CBAF890, MEMORY[0x277CE0740]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF45D0);
  }

  return result;
}

unint64_t sub_21C9E0508()
{
  result = qword_27CDF45E0;
  if (!qword_27CDF45E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF45E8, &qword_21CBBADD8);
    sub_21C8FD198();
    sub_21C6EADEC(&unk_27CDF4590, &qword_27CDEB8B8, &qword_21CBA4300, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF45E0);
  }

  return result;
}

unint64_t sub_21C9E05C0()
{
  result = qword_27CDF4620;
  if (!qword_27CDF4620)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF4500, &qword_21CBBACE8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF44F0, &qword_21CBBACD8);
    sub_21C9E026C();
    swift_getOpaqueTypeConformance2();
    sub_21C9E06B8(&qword_27CDEB908, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF4620);
  }

  return result;
}

uint64_t sub_21C9E06B8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t type metadata accessor for PMFileVaultRecoveryKeyIcon(uint64_t a1)
{
  result = qword_27CDF4628;
  if (!qword_27CDF4628)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21C9E0774(uint64_t a1)
{
  sub_21C735A14(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

__n128 sub_21C9E0814@<Q0>(uint64_t a1@<X8>)
{
  v42 = a1;
  v39 = sub_21CB84A44();
  v38 = *(v39 - 8);
  MEMORY[0x28223BE20](v39);
  v40 = &v36[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v3 = sub_21CB82054();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v36[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v7);
  v9 = &v36[-v8];
  v10 = sub_21CB82A84();
  MEMORY[0x28223BE20](v10);
  v12 = &v36[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBB08, &qword_21CBA2B80);
  MEMORY[0x28223BE20](v13);
  v15 = &v36[-v14];
  *&v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBAF8, &qword_21CBBA2C0);
  MEMORY[0x28223BE20](v41);
  v17 = &v36[-v16];
  v43.n128_u64[0] = v1;
  v37 = *(v1 + 16);
  if (v37 == 1)
  {
    v18 = sub_21CB85174();
    v19 = 56.0;
    if (v18)
    {
      v19 = 60.0;
    }
  }

  else
  {
    v19 = 44.0;
  }

  v20 = v19 / 44.0 * 6.0;
  v21 = *(v10 + 20);
  v22 = *MEMORY[0x277CE0118];
  v23 = sub_21CB831A4();
  (*(*(v23 - 8) + 104))(v12 + v21, v22, v23);
  *v12 = v20;
  v12[1] = v20;
  type metadata accessor for PMFileVaultRecoveryKeyIcon(0);
  sub_21C74F0F8(v9);
  (*(v4 + 104))(v6, *MEMORY[0x277CDF3D0], v3);
  sub_21CB82044();
  v24 = *(v4 + 8);
  v24(v6, v3);
  v24(v9, v3);
  (*(v38 + 104))(v40, *MEMORY[0x277CE0EE8], v39);
  v25 = sub_21CB84B44();
  sub_21C9D03AC(v12, v15);
  *&v15[*(v13 + 52)] = v25;
  *&v15[*(v13 + 56)] = 256;
  if (v37)
  {
    sub_21CB85174();
    sub_21CB85174();
  }

  sub_21CB85214();
  sub_21CB82374();
  sub_21C716934(v15, v17, &qword_27CDEBB08, &qword_21CBA2B80);
  v26 = &v17[*(v41 + 36)];
  v27 = v47;
  *v26 = v46;
  v26[1] = v27;
  v26[2] = v48;
  v28 = sub_21CB85214();
  v30 = v29;
  sub_21C9E0D20(v43.n128_i64[0], v44);
  v31 = v45;
  v43 = v44[1];
  v41 = v44[0];
  v32 = v17;
  v33 = v42;
  sub_21C716934(v32, v42, &qword_27CDEBAF8, &qword_21CBBA2C0);
  v34 = v33 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF4638, &unk_21CBBAE70) + 36);
  result = v43;
  *v34 = v41;
  *(v34 + 16) = result;
  *(v34 + 32) = v31;
  *(v34 + 40) = v28;
  *(v34 + 48) = v30;
  return result;
}

uint64_t sub_21C9E0D20@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v28 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBB58, &qword_21CBAF8A0);
  MEMORY[0x28223BE20](v3 - 8);
  v27 = &v26 - v4;
  v26 = sub_21CB84A44();
  v5 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_21CB82054();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v26 - v13;
  sub_21C9E1104();

  v15 = sub_21C963A60();
  v16 = [v15 name];

  sub_21CB855C4();
  v17 = sub_21CB84BB4();
  type metadata accessor for PMFileVaultRecoveryKeyIcon(0);
  sub_21C74F0F8(v14);
  (*(v9 + 104))(v11, *MEMORY[0x277CDF3D0], v8);
  sub_21CB82044();
  v18 = *(v9 + 8);
  v18(v11, v8);
  v18(v14, v8);
  (*(v5 + 104))(v7, *MEMORY[0x277CE0EE8], v26);
  v19 = sub_21CB84B44();
  KeyPath = swift_getKeyPath(a0_39);
  if (*(a1 + 16) == 1)
  {
    sub_21CB85174();
  }

  v21 = sub_21CB83DC4();
  v22 = v27;
  (*(*(v21 - 8) + 56))(v27, 1, 1, v21);
  v23 = sub_21CB83E14();
  sub_21C9E1150(v22);
  result = swift_getKeyPath(asc_21CBBAEB0);
  v25 = v28;
  *v28 = v17;
  v25[1] = KeyPath;
  v25[2] = v19;
  v25[3] = result;
  v25[4] = v23;
  return result;
}

unint64_t sub_21C9E1104()
{
  result = qword_27CDF28E0;
  if (!qword_27CDF28E0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27CDF28E0);
  }

  return result;
}

uint64_t sub_21C9E1150(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBB58, &qword_21CBAF8A0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_21C9E11B8()
{
  result = qword_27CDF4640;
  if (!qword_27CDF4640)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF4638, &unk_21CBBAE70);
    sub_21C7E9188();
    sub_21C6EADEC(&qword_27CDF4648, &qword_27CDF4650, &unk_21CBBAEE0, MEMORY[0x277CDFC88]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF4640);
  }

  return result;
}

void sub_21C9E12D8(uint64_t a1)
{
  sub_21C70640C(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for PMEmptyStateDetailView.Source(319);
    if (v2 <= 0x3F)
    {
      sub_21C735974(319, &qword_27CDEB308, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        sub_21C9E13F8(319);
        if (v4 <= 0x3F)
        {
          sub_21C735974(319, &qword_27CDF4000, MEMORY[0x277D839B0], MEMORY[0x277CE10B8]);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_21C9E13F8(uint64_t a1)
{
  if (!qword_27CDF4670)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF7670, &unk_21CBAA8F0);
    v1 = sub_21CB84D84();
    if (!v2)
    {
      atomic_store(v1, &qword_27CDF4670);
    }
  }
}

uint64_t sub_21C9E1484(uint64_t a1)
{
  v1 = sub_21CB85C44();
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v1;
}

uint64_t sub_21C9E14F8@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t *a3@<X8>)
{
  v134 = a2;
  v135 = sub_21CB81024();
  v133 = *(v135 - 8);
  MEMORY[0x28223BE20](v135);
  v131 = &v131 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v131 - v7;
  v9 = type metadata accessor for PMEmptyStateDetailView.Source(0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v131 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7670, &unk_21CBAA8F0);
  MEMORY[0x28223BE20](v12);
  v14 = &v131 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v16 = MEMORY[0x28223BE20](v15).n128_u64[0];
  v18 = &v131 - v17;
  KeyPath = swift_getKeyPath(aP_74, v16);
  if (qword_27CDEA4C0 != -1)
  {
    swift_once();
  }

  sub_21CB86544();
  sub_21C7073E8(KeyPath, v137);

  type metadata accessor for PMGroupsStore(0);
  sub_21C706530(&qword_27CDEB7C8, type metadata accessor for PMGroupsStore, &protocol conformance descriptor for PMGroupsStore);
  v20 = sub_21CB82674();
  v22 = v21;

  *a3 = v20;
  a3[1] = v22;
  v23 = type metadata accessor for PMEmptyStateDetailView(0);
  v24 = type metadata accessor for PMSharingGroup(0);
  (*(*(v24 - 8) + 56))(v18, 1, 1, v24);
  sub_21C9E48C0(v18, v14);
  sub_21CB84D44();
  sub_21C6EA794(v18, &qword_27CDF7670, &unk_21CBAA8F0);
  v25 = a3 + v23[11];
  v136 = 0;
  sub_21CB84D44();
  v26 = v138;
  *v25 = v137;
  *(v25 + 1) = v26;
  *(a3 + v23[12]) = 0;
  sub_21C9E4840(a1, a3 + v23[5], type metadata accessor for PMEmptyStateDetailView.Source);
  sub_21C9E4840(a1, v11, type metadata accessor for PMEmptyStateDetailView.Source);
  v27 = sub_21CB85C44();
  v28 = (*(*(v27 - 8) + 48))(v11, 6, v27);
  v29 = a1;
  if (v28 > 2)
  {
    if (v28 <= 4)
    {
      v132 = a1;
      if (v28 == 3)
      {
        v30 = (a3 + v23[6]);
        *v30 = 0xD000000000000015;
        v30[1] = 0x800000021CB96E80;
        sub_21CB81014();
        v31 = sub_21CB81004();
        v33 = v32;
        v34 = *(v133 + 8);
        v35 = v135;
        v34(v8, v135);
        v36 = (a3 + v23[7]);
        *v36 = v31;
        v36[1] = v33;
        sub_21CB81014();
        v37 = sub_21CB81004();
        v39 = v38;
        v34(v8, v35);
        v40 = (a3 + v23[8]);
        *v40 = v37;
        v40[1] = v39;
        sub_21CB81014();
        v41 = sub_21CB81004();
        v43 = v42;
        sub_21C9E4A3C(v132, type metadata accessor for PMEmptyStateDetailView.Source);
        result = (v34)(v8, v35);
LABEL_29:
        v116 = (a3 + v23[9]);
        *v116 = v41;
        v116[1] = v43;
        return result;
      }

      v79 = (a3 + v23[6]);
      *v79 = 1768319351;
      v79[1] = 0xE400000000000000;
      if (v134)
      {
        MGGetBoolAnswer();
      }

      sub_21CB81014();
      v107 = sub_21CB81004();
      v109 = v108;
      v57 = *(v133 + 8);
      v58 = v135;
      v57(v8, v135);
      v110 = (a3 + v23[7]);
      *v110 = v107;
      v110[1] = v109;
      MGGetBoolAnswer();
      sub_21CB81014();
      v111 = sub_21CB81004();
      v113 = v112;
      v57(v8, v58);
      v114 = (a3 + v23[8]);
      *v114 = v111;
      v114[1] = v113;
      goto LABEL_27;
    }

    if (v28 == 5)
    {
      v51 = 0xE600000000000000;
      v52 = 0x646C65696873;
      if (v134)
      {
        v52 = 0xD000000000000015;
        v51 = 0x800000021CB96D00;
      }

      v53 = (a3 + v23[6]);
      *v53 = v52;
      v53[1] = v51;
      sub_21CB81014();
      v54 = sub_21CB81004();
      v56 = v55;
      v132 = a1;
      v57 = *(v133 + 8);
      v58 = v135;
      v57(v8, v135);
      v59 = (a3 + v23[7]);
      *v59 = v54;
      v59[1] = v56;
      sub_21CB81014();
      v60 = sub_21CB81004();
      v62 = v61;
      v57(v8, v58);
      v63 = (a3 + v23[8]);
      *v63 = v60;
      v63[1] = v62;
LABEL_27:
      sub_21CB81014();
      goto LABEL_28;
    }

    v80 = (a3 + v23[6]);
    *v80 = 0x69662E6873617274;
    v80[1] = 0xEA00000000006C6CLL;
    if (v134)
    {
      sub_21CB81014();
      v81 = sub_21CB81004();
      v83 = v82;
      v84 = *(v133 + 8);
      v85 = v135;
      v84(v8, v135);
    }

    else
    {
      sub_21CB81014();
      v117 = v131;
      sub_21CB81014();
      v81 = sub_21CB80FF4();
      v83 = v118;
      v84 = *(v133 + 8);
      v119 = v117;
      v85 = v135;
      v84(v119, v135);
      v84(v8, v85);
    }

    v120 = (a3 + v23[7]);
    *v120 = v81;
    v120[1] = v83;
    v121 = [objc_opt_self() recentlyDeletedExpirationTimeInDays];
    sub_21CB81014();
    sub_21CB81004();
    v84(v8, v85);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB290, &qword_21CBA15C0);
    v122 = swift_allocObject();
    *(v122 + 16) = xmmword_21CBA0690;
    v137 = v121;
    sub_21C8C5CE4();
    v123 = sub_21CB85EE4();
    v125 = v124;
    *(v122 + 56) = MEMORY[0x277D837D0];
    *(v122 + 64) = sub_21C7C0050();
    *(v122 + 32) = v123;
    *(v122 + 40) = v125;
    v126 = sub_21CB85594();
    v128 = v127;

    result = sub_21C9E4A3C(v29, type metadata accessor for PMEmptyStateDetailView.Source);
    v129 = (a3 + v23[8]);
    *v129 = v126;
    v129[1] = v128;
    goto LABEL_32;
  }

  if (v28)
  {
    if (v28 != 1)
    {
      v70 = (a3 + v23[6]);
      *v70 = 0xD000000000000015;
      v70[1] = 0x800000021CB96F60;
      sub_21CB81014();
      v71 = sub_21CB81004();
      v73 = v72;
      v132 = v29;
      v57 = *(v133 + 8);
      v58 = v135;
      v57(v8, v135);
      v74 = (a3 + v23[7]);
      *v74 = v71;
      v74[1] = v73;
      sub_21CB81014();
      v75 = sub_21CB81004();
      v77 = v76;
      v57(v8, v58);
      v78 = (a3 + v23[8]);
      *v78 = v75;
      v78[1] = v77;
      sub_21CB81014();
LABEL_28:
      v41 = sub_21CB81004();
      v43 = v115;
      sub_21C9E4A3C(v132, type metadata accessor for PMEmptyStateDetailView.Source);
      result = (v57)(v8, v58);
      goto LABEL_29;
    }

    v45 = (a3 + v23[6]);
    *v45 = 0xD000000000000012;
    v45[1] = 0x800000021CB97080;
    v46 = v135;
    if (v134)
    {
      sub_21CB81014();
      v47 = sub_21CB81004();
      v49 = v48;
      v50 = *(v133 + 8);
    }

    else
    {
      sub_21CB81014();
      v99 = v131;
      sub_21CB81014();
      v47 = sub_21CB80FF4();
      v49 = v100;
      v50 = *(v133 + 8);
      v101 = v99;
      v46 = v135;
      v50(v101, v135);
    }

    v50(v8, v46);
    v102 = (a3 + v23[7]);
    *v102 = v47;
    v102[1] = v49;
    sub_21CB81014();
    v103 = sub_21CB81004();
    v105 = v104;
    sub_21C9E4A3C(v29, type metadata accessor for PMEmptyStateDetailView.Source);
    result = (v50)(v8, v46);
    v106 = (a3 + v23[8]);
    *v106 = v103;
    v106[1] = v105;
LABEL_32:
    v130 = (a3 + v23[9]);
    *v130 = 0;
    v130[1] = 0;
    return result;
  }

  v132 = a1;
  v64 = (a3 + v23[6]);
  *v64 = 0xD000000000000017;
  v64[1] = 0x800000021CB96AD0;
  if (v134)
  {
    sub_21CB81014();
    v65 = sub_21CB81004();
    v67 = v66;
    v68 = *(v133 + 8);
    v69 = v135;
    v68(v8, v135);
  }

  else
  {
    sub_21CB81014();
    v86 = v131;
    sub_21CB81014();
    v65 = sub_21CB80FF4();
    v67 = v87;
    v88 = *(v133 + 8);
    v89 = v86;
    v69 = v135;
    v88(v89, v135);
    v88(v8, v69);
    v68 = v88;
  }

  v90 = (a3 + v23[7]);
  *v90 = v65;
  v90[1] = v67;
  sub_21CB81014();
  v91 = sub_21CB81004();
  v93 = v92;
  v68(v8, v69);
  v94 = (a3 + v23[8]);
  *v94 = v91;
  v94[1] = v93;
  sub_21CB81014();
  v95 = sub_21CB81004();
  v97 = v96;
  sub_21C9E4A3C(v132, type metadata accessor for PMEmptyStateDetailView.Source);
  v68(v8, v69);
  v98 = (a3 + v23[9]);
  *v98 = v95;
  v98[1] = v97;
  return sub_21C9E4A3C(v11, type metadata accessor for PMEmptyStateDetailView.Source);
}

uint64_t sub_21C9E2490@<X0>(uint64_t a1@<X8>)
{
  v47 = a1;
  v2 = type metadata accessor for PMEmptyStateDetailView(0);
  v42 = *(v2 - 8);
  v39 = v2 - 8;
  MEMORY[0x28223BE20](v2 - 8);
  v40 = v3;
  v4 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF4688, &qword_21CBBAF78);
  MEMORY[0x28223BE20](v5 - 8);
  v48 = &v30 - v6;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF4690, &qword_21CBBAF80);
  v44 = *(v43 - 8);
  MEMORY[0x28223BE20](v43);
  v38 = &v30 - v7;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF4698, &qword_21CBBAF88);
  v46 = *(v45 - 8);
  MEMORY[0x28223BE20](v45);
  v49 = &v30 - v8;
  v52 = v1;
  v51 = v1;
  v50 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF46A0, &unk_21CBBAF90);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC318, &qword_21CBB26D0);
  sub_21C6EADEC(&qword_27CDF46A8, &qword_27CDF46A0, &unk_21CBBAF90, MEMORY[0x277CDEFF0]);
  sub_21C9E4640();
  sub_21CB83774();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF4658, &unk_21CBBAEF0);
  v36 = v1;
  sub_21CB84D74();
  v41 = type metadata accessor for PMEmptyStateDetailView;
  v37 = v4;
  sub_21C9E4840(v1, v4, type metadata accessor for PMEmptyStateDetailView);
  v9 = (*(v42 + 80) + 16) & ~*(v42 + 80);
  v10 = swift_allocObject();
  v42 = type metadata accessor for PMEmptyStateDetailView;
  sub_21C9E49C4(v4, v10 + v9, type metadata accessor for PMEmptyStateDetailView);
  v33 = type metadata accessor for PMSharingGroup(0);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE910, &qword_21CBAA7C8);
  v31 = sub_21C6EADEC(&qword_27CDF46B8, &qword_27CDF4690, &qword_21CBBAF80, MEMORY[0x277CDE158]);
  v32 = sub_21C706530(&qword_27CDEDBC8, type metadata accessor for PMSharingGroup, &unk_21CBCAC0C);
  v11 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEE918, &qword_21CBAA7D0);
  v12 = sub_21CB83994();
  v35 = v12;
  v13 = sub_21C6EADEC(&qword_27CDEE920, &qword_27CDEE918, &qword_21CBAA7D0, MEMORY[0x277CDDA18]);
  v53 = v11;
  v54 = v12;
  v55 = v13;
  v56 = MEMORY[0x277CDE2B8];
  v34 = MEMORY[0x277CDEB40];
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v15 = v48;
  v16 = v43;
  v17 = v33;
  v18 = v38;
  sub_21CB847C4();

  sub_21C6EA794(v15, &qword_27CDF4688, &qword_21CBBAF78);
  (*(v44 + 8))(v18, v16);
  v19 = v36;
  v20 = v36 + *(v39 + 52);
  v21 = *v20;
  v22 = *(v20 + 8);
  v59 = v21;
  v60 = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF40F0, &qword_21CBA2500);
  sub_21CB84D74();
  v23 = v19;
  v24 = v37;
  sub_21C9E4840(v23, v37, v41);
  v25 = swift_allocObject();
  sub_21C9E49C4(v24, v25 + v9, v42);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF14D0, &qword_21CBB1720);
  v53 = v16;
  v54 = v17;
  v55 = v30;
  v56 = v31;
  v57 = v32;
  v58 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v26 = sub_21C941AD8();
  v53 = &type metadata for PMPasskeysLearnMoreView;
  v54 = v35;
  v55 = v26;
  v56 = MEMORY[0x277CDE2B8];
  swift_getOpaqueTypeConformance2();
  v27 = v45;
  v28 = v49;
  sub_21CB847B4();

  return (*(v46 + 8))(v28, v27);
}

uint64_t sub_21C9E2C24(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB960, &qword_21CBBAFA0);
  sub_21C7E397C();
  return sub_21CB84C84();
}

uint64_t sub_21C9E2CC0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBB58, &qword_21CBAF8A0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v26 - v5;
  v7 = sub_21CB83ED4();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = (a1 + *(type metadata accessor for PMEmptyStateDetailView(0) + 28));
  v12 = v11[1];
  v26[2] = *v11;
  v26[3] = v12;
  sub_21C71F3FC();

  v13 = sub_21CB84054();
  v15 = v14;
  v17 = v16;
  (*(v8 + 104))(v10, *MEMORY[0x277CE0A80], v7);
  v18 = sub_21CB83DC4();
  (*(*(v18 - 8) + 56))(v6, 1, 1, v18);
  sub_21CB83E24();
  sub_21C6EA794(v6, &qword_27CDEBB58, &qword_21CBAF8A0);
  (*(v8 + 8))(v10, v7);
  v19 = sub_21CB84024();
  v21 = v20;
  LOBYTE(v6) = v22;
  v24 = v23;

  sub_21C74A72C(v13, v15, v17 & 1);

  result = swift_getKeyPath(byte_21CBBAFA8);
  *a2 = v19;
  *(a2 + 8) = v21;
  *(a2 + 16) = v6 & 1;
  *(a2 + 24) = v24;
  *(a2 + 32) = result;
  *(a2 + 40) = 0;
  *(a2 + 48) = 1;
  return result;
}

uint64_t sub_21C9E2F3C@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for PMEmptyStateDetailView(0);

  result = sub_21CB84BB4();
  *a2 = result;
  return result;
}

uint64_t sub_21C9E2F94@<X0>(uint64_t a2@<X8>)
{
  type metadata accessor for PMEmptyStateDetailView(0);
  sub_21C71F3FC();

  result = sub_21CB84054();
  *a2 = result;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5 & 1;
  *(a2 + 24) = v6;
  return result;
}

uint64_t sub_21C9E3014@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for PMEmptyStateDetailView(0);
  v26 = *(v4 - 8);
  v5 = *(v26 + 64);
  MEMORY[0x28223BE20](v4);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBE40, &unk_21CBA8200);
  v27 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v25 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC310, &unk_21CBA3F10);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v25 - v12;
  v14 = (a1 + *(v4 + 36));
  v15 = v14[1];
  if (v15)
  {
    v25 = a2;
    v16 = *v14;
    v28 = v10;
    sub_21C9E4840(a1, &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PMEmptyStateDetailView);
    v17 = *(v26 + 80);
    v26 = v6;
    v18 = (v17 + 16) & ~v17;
    v19 = swift_allocObject();
    v20 = sub_21C9E49C4(&v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v19 + v18, type metadata accessor for PMEmptyStateDetailView);
    MEMORY[0x28223BE20](v20);
    *(&v25 - 2) = v16;
    *(&v25 - 1) = v15;
    sub_21CB84DA4();
    v29 = 0x6E6F74747562;
    v30 = 0xE600000000000000;
    sub_21CB852C4();
    sub_21C6EADEC(&qword_27CDEBE50, &qword_27CDEBE40, &unk_21CBA8200, MEMORY[0x277CDF028]);
    v21 = v26;
    sub_21CB845E4();
    (*(v27 + 8))(v8, v21);
    v22 = v25;
    (*(v28 + 32))(v25, v13, v9);
    return (*(v28 + 56))(v22, 0, 1, v9);
  }

  else
  {
    v24 = *(v10 + 56);

    return v24(a2, 1, 1, v9, v11);
  }
}

void sub_21C9E3404(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7670, &unk_21CBAA8F0);
  MEMORY[0x28223BE20](v2 - 8);
  v67 = &v65 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v75 = &v65 - v5;
  MEMORY[0x28223BE20](v6);
  v74 = &v65 - v7;
  v8 = type metadata accessor for PMSharingGroup(0);
  v71 = *(v8 - 8);
  v72 = v8;
  MEMORY[0x28223BE20](v8);
  v73 = &v65 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_21CB85C44();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v65 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_21CB81024();
  v69 = *(v14 - 8);
  v70 = v14;
  MEMORY[0x28223BE20](v14);
  v16 = &v65 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC300, &qword_21CBA3ED0);
  MEMORY[0x28223BE20](v17 - 8);
  v68 = &v65 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v21 = &v65 - v20;
  MEMORY[0x28223BE20](v22);
  v24 = &v65 - v23;
  v25 = sub_21CB80BE4();
  v76 = *(v25 - 8);
  v77 = v25;
  MEMORY[0x28223BE20](v25);
  v65 = &v65 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v66 = &v65 - v28;
  v29 = type metadata accessor for PMEmptyStateDetailView.Source(0);
  MEMORY[0x28223BE20](v29 - 8);
  v31 = &v65 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = type metadata accessor for PMEmptyStateDetailView(0);
  v33 = a1;
  sub_21C9E4840(a1 + *(v32 + 20), v31, type metadata accessor for PMEmptyStateDetailView.Source);
  v34 = (*(v11 + 48))(v31, 6, v10);
  if (v34 <= 2)
  {
    v38 = v73;
    v37 = v74;
    v39 = v13;
    v40 = v75;
    if (v34)
    {
      if (v34 != 1)
      {
        v41 = v33 + *(v32 + 44);
        v42 = *v41;
        v43 = *(v41 + 8);
        v79 = v42;
        v80 = v43;
        v78 = 1;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF40F0, &qword_21CBA2500);
        sub_21CB84D64();
      }
    }

    else
    {
      v46 = v11;
      (*(v11 + 32))(v39, v31, v10);
      sub_21CA1D444(v39, v37);
      v47 = v37;
      v49 = v71;
      v48 = v72;
      if ((*(v71 + 48))(v47, 1, v72) == 1)
      {
        (*(v46 + 8))(v39, v10);
        sub_21C6EA794(v47, &qword_27CDF7670, &unk_21CBAA8F0);
      }

      else
      {
        v77 = v39;
        sub_21C9E49C4(v47, v38, type metadata accessor for PMSharingGroup);
        sub_21C9E4840(v38, v40, type metadata accessor for PMSharingGroup);
        (*(v49 + 56))(v40, 0, 1, v48);
        sub_21C9E48C0(v40, v67);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF4658, &unk_21CBBAEF0);
        sub_21CB84D64();
        sub_21C6EA794(v40, &qword_27CDF7670, &unk_21CBAA8F0);
        sub_21C9E4A3C(v38, type metadata accessor for PMSharingGroup);
        (*(v46 + 8))(v77, v10);
      }
    }
  }

  else if (v34 > 4)
  {
    if (v34 == 5)
    {
      sub_21CB81014();
      sub_21CB81004();
      (*(v69 + 8))(v16, v70);
      sub_21CB80BD4();

      v45 = v76;
      v44 = v77;
      if ((*(v76 + 48))(v24, 1, v77) == 1)
      {
        sub_21C6EA794(v24, &qword_27CDEC300, &qword_21CBA3ED0);
      }

      else
      {
        v60 = v66;
        (*(v45 + 32))(v66, v24, v44);
        v61 = [objc_opt_self() sharedApplication];
        v62 = sub_21CB80B74();
        sub_21CB134F0(MEMORY[0x277D84F90]);
        type metadata accessor for OpenExternalURLOptionsKey(0);
        sub_21C706530(&unk_27CDF8A40, type metadata accessor for OpenExternalURLOptionsKey, &unk_21CB9F90C);
        v63 = sub_21CB85464();

        [v61 openURL:v62 options:v63 completionHandler:0];

        (*(v45 + 8))(v60, v44);
      }
    }
  }

  else if (v34 == 3)
  {
    sub_21CB80BD4();
    v36 = v76;
    v35 = v77;
    if ((*(v76 + 48))(v21, 1, v77) == 1)
    {
      sub_21C6EA794(v21, &qword_27CDEC300, &qword_21CBA3ED0);
    }

    else
    {
      v56 = v65;
      (*(v36 + 32))(v65, v21, v35);
      v57 = [objc_opt_self() sharedApplication];
      v58 = sub_21CB80B74();
      sub_21CB134F0(MEMORY[0x277D84F90]);
      type metadata accessor for OpenExternalURLOptionsKey(0);
      sub_21C706530(&unk_27CDF8A40, type metadata accessor for OpenExternalURLOptionsKey, &unk_21CB9F90C);
      v59 = sub_21CB85464();

      [v57 openURL:v58 options:v59 completionHandler:0];

      (*(v36 + 8))(v56, v35);
    }
  }

  else
  {
    v50 = [objc_opt_self() defaultWorkspace];
    v52 = v76;
    v51 = v77;
    if (v50)
    {
      v53 = v50;
      v54 = v68;
      sub_21CB80BD4();
      if ((*(v52 + 48))(v54, 1, v51) == 1)
      {
        v55 = 0;
      }

      else
      {
        v55 = sub_21CB80B74();
        (*(v52 + 8))(v54, v51);
      }

      sub_21C73181C(MEMORY[0x277D84F90]);
      v64 = sub_21CB85464();

      [v53 openSensitiveURL:v55 withOptions:v64];
    }

    else
    {
      __break(1u);
    }
  }
}