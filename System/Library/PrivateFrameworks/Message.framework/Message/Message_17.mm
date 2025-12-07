uint64_t sub_1B0740480()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2640, &qword_1B0E9B010);
  v3 = sub_1B0E46A48();
  v0 = sub_1B041C1E8();
  return MessageIdentifierSet.init(arrayLiteral:)(v3, &type metadata for UID, v0, v1);
}

id sub_1B07404FC(void *a1)
{
  MEMORY[0x1E69E5928](a1);
  v3 = [a1 persistentID];
  MEMORY[0x1E69E5920](a1);
  v4 = [v3 databaseID];
  MEMORY[0x1E69E5920](v3);
  return v4;
}

uint64_t sub_1B0740584(void *a1, uint64_t a2)
{
  v10 = a1;
  v11 = a2;
  v20 = 0;
  v19 = 0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  v8 = (*(*(v2 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v2);
  v12 = &v7 - v8;
  v15 = sub_1B0E43308();
  v13 = *(v15 - 8);
  v14 = v15 - 8;
  v9 = (*(v13 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v10);
  v3 = &v7 - v9;
  v16 = &v7 - v9;
  v20 = v4;
  v19 = v5;
  swift_getObjectType();
  swift_unknownObjectRetain();
  v18 = [v10 completedUIDs];
  swift_unknownObjectRelease();
  sub_1B03D08AC(v11, v12);
  sub_1B0A62478(v12, v3);
  v17 = sub_1B0E43258();
  (*(v13 + 8))(v16, v15);
  [v18 addIndexes_];
  MEMORY[0x1E69E5920](v17);
  return MEMORY[0x1E69E5920](v18);
}

unint64_t sub_1B0740794@<X0>(int *a1@<X0>, unint64_t *a2@<X8>)
{
  v6 = 0;
  v6 = *a1;
  sub_1B071C094();
  v5 = v6;
  result = sub_1B0740964(sub_1B074FE78, v4);
  *a2 = result;
  return result;
}

uint64_t sub_1B0740810(void *a1, int a2)
{
  v10 = a1;
  v9 = a2;
  swift_getObjectType();
  swift_unknownObjectRetain();
  v8[0] = sub_1B0E46A28();
  v8[1] = v2;
  v3 = sub_1B0E44838();
  MEMORY[0x1B2728B30](v3);

  sub_1B0E469E8();
  v4 = sub_1B0E44838();
  MEMORY[0x1B2728B30](v4);

  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B03B1198(v8);
  sub_1B0E44C88();
  v6 = sub_1B0E44AC8();

  [a1 setSourceRemoteID_];
  MEMORY[0x1E69E5920](v6);
  return swift_unknownObjectRelease();
}

uint64_t sub_1B07409AC(void *a1, uint64_t a2)
{
  swift_getObjectType();
  swift_unknownObjectRetain();
  [a1 setPhaseForResults_];
  swift_unknownObjectRelease();
  swift_getObjectType();
  swift_unknownObjectRetain();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B071C094();
  v3 = sub_1B0E451A8();

  [a1 setCompletedItems_];
  MEMORY[0x1E69E5920](v3);
  return swift_unknownObjectRelease();
}

id sub_1B0740AC0()
{
  v4 = *(v0 + 16);
  MEMORY[0x1E69E5928](v4);
  v5 = [v4 account];
  MEMORY[0x1E69E5920](v4);
  if (v5)
  {
    v3 = v5;
  }

  else
  {
    sub_1B0E465A8();
    __break(1u);
  }

  v2 = sub_1B039AB2C();
  MEMORY[0x1E69E5920](v3);
  return v2;
}

void *sub_1B0740C34(int a1, uint64_t a2)
{
  v8 = 0;
  v13 = a1;
  v12 = a2;
  v9 = a1;
  v5 = sub_1B041C1E8();
  v2 = sub_1B07467B8();
  result = MessageIdentifier.init<A>(exactly:)(&v9, &type metadata for UID, MEMORY[0x1E69E7668], v5, v2, &v10);
  if ((v11 & 1) == 0)
  {
    v8 = v10;
    v6 = v10;
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
    return MessageIdentifierSet.insert(_:)(v7, &v6, v4);
  }

  return result;
}

uint64_t sub_1B0740D70(uint64_t a1)
{
  v3 = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  v4 = (*(*(v7 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v3);
  v1 = &v3 - v4;
  v8 = &v3 - v4;
  v5 = swift_projectBox();
  v6 = &v10;
  swift_beginAccess();
  sub_1B03D08AC(v5, v1);
  swift_endAccess();
  v9 = MessageIdentifierSet.count.getter();
  sub_1B03D09B8(v8);
  return v9;
}

double sub_1B0740E54@<D0>(unsigned int *a1@<X0>, __int128 *a2@<X1>, _OWORD *a3@<X8>)
{
  v7 = *a1;
  v11 = *a2;
  sub_1B0E46A48();
  sub_1B074F084();
  sub_1B0E45438();
  *&v9 = FlagsChange.init(message:flags:changeIDs:)(v7, v11);
  *(&v9 + 1) = v3;
  *&v10 = v4;
  *(&v10 + 1) = v5;
  *a3 = v9;
  result = v4;
  a3[1] = v10;
  return result;
}

uint64_t sub_1B0740FC0(uint64_t a1)
{
  v8 = a1;
  v6 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v8);
  v7 = &v5 - v6;
  sub_1B03D08AC(v2, &v5 - v6);
  v3 = _s21UnfilteredFlagChangesVMa(0);
  sub_1B074F0FC(v7, v1 + *(v3 + 20));
  return sub_1B03D09B8(v8);
}

uint64_t sub_1B0741070()
{
  v2 = *(v0 + *(_s21UnfilteredFlagChangesVMa(0) + 24));
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  return v2;
}

uint64_t sub_1B07410A8(uint64_t a1)
{
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  *(v1 + *(_s21UnfilteredFlagChangesVMa(0) + 24)) = a1;
}

uint64_t sub_1B07410F4()
{
  v2 = *(v0 + *(_s21UnfilteredFlagChangesVMa(0) + 28));
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  return v2;
}

uint64_t sub_1B074112C(uint64_t a1)
{
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  *(v1 + *(_s21UnfilteredFlagChangesVMa(0) + 28)) = a1;
}

uint64_t sub_1B0741178(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1C00, &qword_1B0E9AFF8);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  return MessageIdentifierSet.formUnion(_:)(a2, v2);
}

int *sub_1B07411F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = a1;
  v10 = _s21UnfilteredFlagChangesVMa(0);
  sub_1B074BA2C(a2, a5 + v10[5]);
  result = v10;
  *(a5 + v10[6]) = a3;
  *(a5 + v10[7]) = a4;
  return result;
}

uint64_t sub_1B0741268()
{
  v2 = *(v0 + 8);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  return v2;
}

uint64_t sub_1B07412D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v4[1] = a1;
  v4[2] = a2;
  v4[3] = a3;
  v4[4] = a4;
}

uint64_t sub_1B0741390@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  *a6 = result;
  a6[1] = a2;
  a6[2] = a3;
  a6[3] = a4;
  a6[4] = a5;
  return result;
}

uint64_t sub_1B07413A8(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v38 = a1;
  v39 = a2;
  v45 = a3;
  v40 = a5;
  v43 = a6;
  v44 = a7;
  v35 = 0;
  v36 = sub_1B07419E4;
  v37 = sub_1B074F16C;
  v66 = 0;
  v65 = 0;
  v64 = 0;
  v63 = 0;
  v62 = 0;
  v61 = 0;
  v60 = 0;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  v41 = (*(*(v46 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v40);
  v42 = v14 - v41;
  v66 = v8;
  v65 = v9;
  v64 = v10;
  v63 = a4;
  v47 = swift_projectBox();
  v62 = v47;
  v61 = v43 + 16;
  v60 = v44;
  v59 = v45;
  if (MessageIdentifierSet.contains(_:)(&v59, v46))
  {
    v19 = v35;
    v20 = v35;
  }

  else
  {
    v11 = v42;
    v33 = v58;
    swift_beginAccess();
    sub_1B03D08AC(v47, v11);
    swift_endAccess();
    v57 = v45;
    v34 = MessageIdentifierSet.contains(_:)(&v57, v46);
    sub_1B03D09B8(v42);
    if (v34)
    {
      v19 = v35;
      v20 = v35;
    }

    else
    {
      v31 = v56;
      swift_beginAccess();
      v27 = *(v43 + 16);
      v29 = &v54;
      v54 = v45;
      v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1C10, &qword_1B0E9B008);
      v30 = sub_1B043CF70();
      sub_1B0E44778();
      v32 = v55;
      swift_endAccess();
      v53 = v32;
      v26 = v32 != 0;
      v25 = v26;
      sub_1B039E440(&v53);
      if (v25)
      {
        v24 = 1;
      }

      else
      {
        v21 = &v52;
        swift_beginAccess();
        v22 = *(v43 + 16);
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        swift_endAccess();
        v23 = sub_1B0E44628();

        v24 = v23 < v44;
      }

      if (v24)
      {
        MEMORY[0x1E69E5928](v38);
        MEMORY[0x1E69E5928](v39);
        v14[1] = v51;
        v51[0] = v38;
        v51[1] = v39;
        v16 = v50;
        swift_beginAccess();
        v14[0] = &v49;
        v49 = v45;
        v12 = swift_allocObject();
        v17 = v12;
        *(v12 + 16) = v36;
        *(v12 + 24) = 0;

        v18 = v17;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1CF0, &qword_1B0E9B0F0);
        v14[2] = &v48;
        v15 = sub_1B0E44728();
        sub_1B0E452E8();
        v15();
        swift_endAccess();

        v19 = v37;
        v20 = v18;
      }

      else
      {
        v19 = v35;
        v20 = v35;
      }
    }
  }

  return sub_1B04197E4(v19, v20);
}

uint64_t sub_1B0741A18@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

void *sub_1B0741A54(uint64_t a1, id *a2)
{
  v12 = 0;
  v8 = 0;
  v13 = a1;
  v12 = *a2;
  v9 = [v12 imapUID];
  v5 = sub_1B041C1E8();
  v2 = sub_1B03948EC();
  result = MessageIdentifier.init<A>(exactly:)(&v9, &type metadata for UID, MEMORY[0x1E69E6530], v5, v2, &v10);
  if ((v11 & 1) == 0)
  {
    v8 = v10;
    v6 = v10;
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
    return MessageIdentifierSet.insert(_:)(v7, &v6, v4);
  }

  return result;
}

uint64_t sub_1B0741B50@<X0>(id *a1@<X0>, void *a2@<X1>, unint64_t *a3@<X8>)
{
  v28 = 0;
  v27 = 0;
  v17 = *a1;
  v28 = v17;
  v27 = a2;
  v24 = [v17 imapUID];
  v18 = sub_1B041C1E8();
  v3 = sub_1B03948EC();
  MessageIdentifier.init<A>(exactly:)(&v24, &type metadata for UID, MEMORY[0x1E69E6530], v18, v3, &v25);
  v19 = v25;
  if (v26)
  {
    goto LABEL_9;
  }

  swift_beginAccess();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1C10, &qword_1B0E9B008);
  sub_1B043CF70();
  sub_1B0E44778();
  if (!v23)
  {
    swift_endAccess();
LABEL_9:
    result = v16;
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
    a3[3] = 0;
    return result;
  }

  swift_endAccess();
  v8 = [v17 serverFlags];
  KeyPath = swift_getKeyPath();

  v10 = sub_1B074B258();
  v12 = sub_1B074FF18();
  v13 = sub_1B039CA88(sub_1B074FEE4, KeyPath, v14, v10, MEMORY[0x1E69E73E0], v12, MEMORY[0x1E69E7410], v11);
  if (v16)
  {

    __break(1u);
    __break(1u);
  }

  else
  {

    v22 = sub_1B07420C8(v8, v13);
    sub_1B039CA88(sub_1B07422D8, 0, v14, &type metadata for ChangeID, MEMORY[0x1E69E73E0], v12, MEMORY[0x1E69E7410], v11);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1F18, &qword_1B0E9B220);
    sub_1B074F084();
    sub_1B074FFA0();
    sub_1B0E45598();
    v20 = FlagsChange.init(message:flags:changeIDs:)(v19, v22);
    *&v21 = v4;
    *(&v21 + 1) = v5;
    *a3 = v20;
    a3[1] = v6;
    *(a3 + 1) = v21;

    return 0;
  }

  return result;
}

uint64_t sub_1B0742030(void *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  MEMORY[0x1E69E5928](*a1);
  MEMORY[0x1E69E5928](v4);

  v5[0] = v3;
  v5[1] = v4;
  swift_getAtKeyPath();
  sub_1B06D61B0(v5);
}

uint64_t sub_1B07420C8(void *a1, uint64_t a2)
{
  v6[0] = 0;
  v6[1] = 0;
  v14 = a1;
  v13 = a2;
  MEMORY[0x1E69E5928](a1);
  v11 = sub_1B072136C(a1);
  iCloudCleanup = v19.iCloudCleanup;
  v9 = v11;
  v10 = v19.iCloudCleanup;
  *&v19.unread = v11;
  v19.iCloudCleanup &= 1u;
  v20 = FlagsWithModifications.init(flags:)(v19);
  *&v7 = *&v20.flags.unread;
  *(&v7 + 1) = *&v20.flags.iCloudCleanup;
  v8 = *&v20.originalFlags.value.label;
  v17 = v7;
  v18 = *&v20.originalFlags.value.label;
  v15 = v7;
  v16 = *&v20.originalFlags.value.label;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1CF8, &qword_1B0E9B0F8);
  sub_1B074F178();
  sub_1B0E45798();
  while (1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1D08, qword_1B0E9B100);
    sub_1B0E46518();
    if (!v5)
    {
      break;
    }

    sub_1B074C104(v5);
    (MEMORY[0x1E69E5920])();
  }

  sub_1B039E440(v6);
  v4 = v15;

  MEMORY[0x1E69E5920](a1);
  return v4;
}

uint64_t sub_1B07422D8@<X0>(void *a1@<X0>, unsigned int *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  MEMORY[0x1E69E5928](*a1);
  MEMORY[0x1E69E5928](v3);
  v6 = sub_1B07B7350(v3);
  MEMORY[0x1E69E5920](v4);
  result = v6;
  *a2 = v6;
  return result;
}

uint64_t sub_1B074236C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v16 = 0;
  v20 = a3;
  *&v21 = a4;
  *(&v21 + 1) = a5;
  v22 = a6;
  v19 = a1;
  v18 = a2;
  v11 = a3;
  v12 = a4;
  v13 = BYTE4(a4);
  v14 = *(&v21 + 5);
  v15 = BYTE5(a5);
  v17 = a6;
  v10 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  if ((MessageIdentifierSet.contains(_:)(&v10, v6) & 1) == 0)
  {
    return 0;
  }

  MEMORY[0x1E69E5928](a2);
  return a2;
}

uint64_t sub_1B07424A0@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(uint64_t, void)@<X1>, uint64_t *a3@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1C00, &qword_1B0E9AFF8);
  result = a2(a1, *(a1 + *(v3 + 48)));
  *a3 = result;
  return result;
}

uint64_t sub_1B07425B4(uint64_t a1)
{
  MEMORY[0x1EEE9AC00](a1);
  v863 = v886;
  v793 = v2;
  v862 = v3;
  v849 = v4;
  v794 = v1;
  v795 = sub_1B074E050;
  v796 = sub_1B0394C30;
  v797 = sub_1B0394C24;
  v798 = sub_1B074DFFC;
  v799 = sub_1B039BA88;
  v800 = sub_1B039BB94;
  v801 = sub_1B0394C24;
  v802 = sub_1B039BBA0;
  v803 = sub_1B039BC08;
  v804 = sub_1B06BA324;
  v805 = sub_1B074E0E4;
  v806 = sub_1B039BCF8;
  v807 = sub_1B070B550;
  v808 = sub_1B039BCF8;
  v809 = sub_1B0398F5C;
  v810 = sub_1B0398F5C;
  v811 = sub_1B0399178;
  v812 = sub_1B0398F5C;
  v813 = sub_1B0398F5C;
  v814 = sub_1B039BA94;
  v815 = sub_1B0398F5C;
  v816 = sub_1B0398F5C;
  v817 = sub_1B0399178;
  v818 = sub_1B0398F5C;
  v819 = sub_1B0398F5C;
  v820 = sub_1B03991EC;
  v821 = sub_1B0398F5C;
  v822 = sub_1B0398F5C;
  v823 = sub_1B03993BC;
  v824 = sub_1B0398F5C;
  v825 = sub_1B0398F5C;
  v826 = sub_1B039BCEC;
  v827 = sub_1B0398F5C;
  v828 = sub_1B0398F5C;
  v829 = sub_1B039BCEC;
  v864 = v891;
  memset(v891, 0, sizeof(v891));
  memset(&v890[3], 0, 24);
  v890[0] = 0;
  v890[1] = 0;
  v889 = 0;
  v882 = 0;
  v883 = 0;
  v866 = 0;
  v876 = 0;
  v873 = 0;
  v870 = 0;
  v838 = 0;
  v830 = sub_1B0E439A8();
  v831 = *(v830 - 8);
  v832 = v830 - 8;
  v833 = (*(v831 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v830);
  v834 = &v165 - v833;
  v835 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1BF8, &qword_1B0E9AFF0);
  v836 = (*(*(v835 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v838);
  v837 = &v165 - v836;
  *(v863 + 25) = &v165 - v836;
  v839 = _s6LoggerVMa_1(v5);
  v840 = (*(*(v839 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v838);
  v841 = &v165 - v840;
  v842 = (v6 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v7);
  v843 = &v165 - v842;
  v844 = sub_1B0E42E68();
  v845 = *(v844 - 8);
  v846 = v844 - 8;
  v847 = (*(v845 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v844);
  v848 = &v165 - v847;
  v850 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  v856 = *(*(v850 - 8) + 64);
  v851 = (v856 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v862);
  v852 = &v165 - v851;
  v853 = (v856 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v8);
  v9 = v856;
  v854 = (&v165 - v853);
  *(v10 + 192) = &v165 - v853;
  v855 = (v9 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v11);
  v12 = v856;
  v859 = &v165 - v855;
  *(v13 + 184) = &v165 - v855;
  v857 = (v12 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v14);
  v858 = &v165 - v857;
  v15[22] = &v165 - v857;
  v15[21] = v16;
  v15[20] = v17;
  v15[19] = v1;
  v861 = sub_1B041C1E8();
  v860 = &type metadata for UID;
  MessageIdentifierSet.init()();
  MessageIdentifierSet.init()();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  *(v863 + 16) = v862;
  v865 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1B50, &unk_1B0E9DDF0);
  sub_1B074B86C();
  sub_1B0E45798();
  for (i = v866; ; i = v165)
  {
    v791 = i;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E36C0, &qword_1B0E9B018);
    sub_1B0E46518();
    v792 = *(v863 + 15);
    if (!v792)
    {
      break;
    }

    v790 = v792;
    v18 = v844;
    v19 = v848;
    v20 = v845;
    v21 = v794;
    v784 = v792;
    *(v863 + 14) = v792;
    v785 = *(v20 + 16);
    v786 = v20 + 16;
    v785(v19, v21 + OBJC_IVAR____TtC7Message24MailboxPersistenceHelper_mailboxURL, v18);
    v789 = sub_1B0720178(v848);
    v787 = *(v845 + 8);
    v788 = v845 + 8;
    v787(v848, v844);
    if (!v789)
    {
      v785(v848, v794 + OBJC_IVAR____TtC7Message24MailboxPersistenceHelper_mailboxURL, v844);
      v774 = sub_1B0721E7C(v848);
      v787(v848, v844);
      if (v774)
      {
        v773 = v774;
        v23 = v774;
        v766 = v774;
        *(v863 + 12) = v774;
        v771 = [v23 itemsToDelete];
        v767 = sub_1B071C094();
        v770 = sub_1B0E451B8();
        *(v863 + 11) = v770;
        v768 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1C30, &unk_1B0E9AEA0);
        v769 = sub_1B071C0F8();
        v772 = sub_1B0E45748();

        MEMORY[0x1E69E5920](v771);
        if ((v772 & 1) == 0)
        {
          v764 = [v766 itemsToDelete];
          *(v863 + 8) = sub_1B0E451B8();
          sub_1B0E45798();
          MEMORY[0x1E69E5920](v764);
          for (j = v791; ; j = v755)
          {
            v762 = j;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1C40, &qword_1B0E9B030);
            sub_1B0E46518();
            v763 = *(v863 + 7);
            if (!v763)
            {
              break;
            }

            v761 = v763;
            v759 = v763;
            *(v863 + 6) = v763;
            *(v863 + 5) = sub_1B0917A3C();
            v760 = v887;
            if (v888)
            {
              v754 = [v759 sourceRemoteID];
              if (v754)
              {
                v753 = v754;
                v748 = v754;
                v749 = sub_1B0E44AD8();
                v750 = v24;
                MEMORY[0x1E69E5920](v748);
                v751 = v749;
                v752 = v750;
              }

              else
              {
                v751 = 0;
                v752 = 0;
              }

              v25 = v863;
              v26 = v759;
              v27 = v752;
              *v863 = v751;
              *(v25 + 1) = v27;
              MEMORY[0x1E69E5928](v26);
              if (*(v863 + 1))
              {
                *(v863 + 1) = *v863;
              }

              else
              {
                v747 = [v759 sourceMessage];
                if (v747)
                {
                  v746 = v747;
                  v744 = v747;
                  swift_getObjectType();
                  v745 = [v744 remoteID];
                  if (v745)
                  {
                    v743 = v745;
                    v736 = v745;
                    v737 = sub_1B0E44AD8();
                    v738 = v28;
                    MEMORY[0x1E69E5920](v736);
                    v739 = v737;
                    v740 = v738;
                  }

                  else
                  {
                    v739 = 0;
                    v740 = 0;
                  }

                  v735 = v740;
                  v734 = v739;
                  swift_unknownObjectRelease();
                  v741 = v734;
                  v742 = v735;
                }

                else
                {
                  v741 = 0;
                  v742 = 0;
                }

                v884 = v741;
                v885 = v742;
                if (v742)
                {
                  v29 = v863;
                  v30 = v885;
                  *(v863 + 2) = v884;
                  *(v29 + 3) = v30;
                }

                else
                {
                  v31 = sub_1B0E44838();
                  v32 = v863;
                  *(v863 + 2) = v31;
                  *(v32 + 3) = v33;
                  if (v885)
                  {
                    sub_1B03B1198(&v884);
                  }
                }

                if (*(v863 + 1))
                {
                  sub_1B03B1198(v886);
                }
              }

              v34 = v834;
              MEMORY[0x1E69E5920](v759);
              v689 = *(v863 + 2);
              v690 = *(v863 + 3);
              v882 = v689;
              v883 = v690;
              v682 = &OBJC_IVAR____TtC7Message24MailboxPersistenceHelper_logger;
              sub_1B074B69C(v794 + OBJC_IVAR____TtC7Message24MailboxPersistenceHelper_logger, v841);
              (*(v831 + 16))(v34, v841, v830);
              sub_1B074B764(v841);

              sub_1B074B69C(v794 + *v682, v843);
              v35 = (v843 + *(v839 + 20));
              v685 = *v35;
              v686 = *(v35 + 1);
              v687 = *(v35 + 1);
              v688 = *(v35 + 4);
              _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
              sub_1B074B764(v843);

              _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
              v684 = 36;
              v705 = 7;
              v36 = swift_allocObject();
              v37 = v686;
              v38 = v687;
              v39 = v688;
              v692 = v36;
              *(v36 + 16) = v685;
              *(v36 + 20) = v37;
              *(v36 + 24) = v38;
              *(v36 + 32) = v39;
              sub_1B0394868();
              sub_1B0394868();
              sub_1B0394868();
              _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
              v40 = swift_allocObject();
              v41 = v686;
              v42 = v687;
              v43 = v688;
              v683 = v40;
              *(v40 + 16) = v685;
              *(v40 + 20) = v41;
              *(v40 + 24) = v42;
              *(v40 + 32) = v43;

              v704 = 32;
              v44 = swift_allocObject();
              v45 = v683;
              v697 = v44;
              *(v44 + 16) = v795;
              *(v44 + 24) = v45;
              sub_1B0394868();
              sub_1B0394868();

              v46 = swift_allocObject();
              v47 = v686;
              v48 = v687;
              v49 = v688;
              v700 = v46;
              *(v46 + 16) = v685;
              *(v46 + 20) = v47;
              *(v46 + 24) = v48;
              *(v46 + 32) = v49;

              _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
              v50 = swift_allocObject();
              v51 = v690;
              v706 = v50;
              *(v50 + 16) = v689;
              *(v50 + 24) = v51;
              v732 = sub_1B0E43988();
              v733 = sub_1B0E458E8();
              v702 = 17;
              v708 = swift_allocObject();
              v694 = 16;
              *(v708 + 16) = 16;
              v709 = swift_allocObject();
              v696 = 4;
              *(v709 + 16) = 4;
              v52 = swift_allocObject();
              v691 = v52;
              *(v52 + 16) = v796;
              *(v52 + 24) = 0;
              v53 = swift_allocObject();
              v54 = v691;
              v710 = v53;
              *(v53 + 16) = v797;
              *(v53 + 24) = v54;
              v711 = swift_allocObject();
              *(v711 + 16) = 0;
              v712 = swift_allocObject();
              *(v712 + 16) = 1;
              v55 = swift_allocObject();
              v56 = v692;
              v693 = v55;
              *(v55 + 16) = v798;
              *(v55 + 24) = v56;
              v57 = swift_allocObject();
              v58 = v693;
              v713 = v57;
              *(v57 + 16) = v799;
              *(v57 + 24) = v58;
              v714 = swift_allocObject();
              *(v714 + 16) = v694;
              v715 = swift_allocObject();
              *(v715 + 16) = v696;
              v59 = swift_allocObject();
              v695 = v59;
              *(v59 + 16) = v800;
              *(v59 + 24) = 0;
              v60 = swift_allocObject();
              v61 = v695;
              v716 = v60;
              *(v60 + 16) = v801;
              *(v60 + 24) = v61;
              v717 = swift_allocObject();
              *(v717 + 16) = 0;
              v718 = swift_allocObject();
              *(v718 + 16) = v696;
              v62 = swift_allocObject();
              v63 = v697;
              v698 = v62;
              *(v62 + 16) = v802;
              *(v62 + 24) = v63;
              v64 = swift_allocObject();
              v65 = v698;
              v719 = v64;
              *(v64 + 16) = v803;
              *(v64 + 24) = v65;
              v720 = swift_allocObject();
              *(v720 + 16) = 112;
              v721 = swift_allocObject();
              v703 = 8;
              *(v721 + 16) = 8;
              v699 = swift_allocObject();
              *(v699 + 16) = 0x786F626C69616DLL;
              v66 = swift_allocObject();
              v67 = v699;
              v722 = v66;
              *(v66 + 16) = v804;
              *(v66 + 24) = v67;
              v723 = swift_allocObject();
              *(v723 + 16) = 37;
              v724 = swift_allocObject();
              *(v724 + 16) = v703;
              v68 = swift_allocObject();
              v69 = v700;
              v701 = v68;
              *(v68 + 16) = v805;
              *(v68 + 24) = v69;
              v70 = swift_allocObject();
              v71 = v701;
              v725 = v70;
              *(v70 + 16) = v806;
              *(v70 + 24) = v71;
              v726 = swift_allocObject();
              *(v726 + 16) = 34;
              v727 = swift_allocObject();
              *(v727 + 16) = v703;
              v72 = swift_allocObject();
              v73 = v706;
              v707 = v72;
              *(v72 + 16) = v807;
              *(v72 + 24) = v73;
              v74 = swift_allocObject();
              v75 = v707;
              v729 = v74;
              *(v74 + 16) = v808;
              *(v74 + 24) = v75;
              v731 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
              v728 = sub_1B0E46A48();
              v730 = v76;

              v77 = v708;
              v78 = v730;
              *v730 = v809;
              v78[1] = v77;

              v79 = v709;
              v80 = v730;
              v730[2] = v810;
              v80[3] = v79;

              v81 = v710;
              v82 = v730;
              v730[4] = v811;
              v82[5] = v81;

              v83 = v711;
              v84 = v730;
              v730[6] = v812;
              v84[7] = v83;

              v85 = v712;
              v86 = v730;
              v730[8] = v813;
              v86[9] = v85;

              v87 = v713;
              v88 = v730;
              v730[10] = v814;
              v88[11] = v87;

              v89 = v714;
              v90 = v730;
              v730[12] = v815;
              v90[13] = v89;

              v91 = v715;
              v92 = v730;
              v730[14] = v816;
              v92[15] = v91;

              v93 = v716;
              v94 = v730;
              v730[16] = v817;
              v94[17] = v93;

              v95 = v717;
              v96 = v730;
              v730[18] = v818;
              v96[19] = v95;

              v97 = v718;
              v98 = v730;
              v730[20] = v819;
              v98[21] = v97;

              v99 = v719;
              v100 = v730;
              v730[22] = v820;
              v100[23] = v99;

              v101 = v720;
              v102 = v730;
              v730[24] = v821;
              v102[25] = v101;

              v103 = v721;
              v104 = v730;
              v730[26] = v822;
              v104[27] = v103;

              v105 = v722;
              v106 = v730;
              v730[28] = v823;
              v106[29] = v105;

              v107 = v723;
              v108 = v730;
              v730[30] = v824;
              v108[31] = v107;

              v109 = v724;
              v110 = v730;
              v730[32] = v825;
              v110[33] = v109;

              v111 = v725;
              v112 = v730;
              v730[34] = v826;
              v112[35] = v111;

              v113 = v726;
              v114 = v730;
              v730[36] = v827;
              v114[37] = v113;

              v115 = v727;
              v116 = v730;
              v730[38] = v828;
              v116[39] = v115;

              v117 = v729;
              v118 = v730;
              v730[40] = v829;
              v118[41] = v117;
              sub_1B0394964();

              if (os_log_type_enabled(v732, v733))
              {
                v119 = v709;
                v120 = v708;
                v121 = v762;
                v654 = sub_1B0E45D78();
                v653 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
                v655 = sub_1B03949A8(0, v653, v653);
                v656 = sub_1B03949A8(2, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
                v657 = &v881;
                v881 = v654;
                v658 = &v880;
                v880 = v655;
                v659 = &v879;
                v879 = v656;
                sub_1B0394A48(3, &v881);
                sub_1B0394A48(7, v657);
                v877 = v809;
                v878 = v120;
                sub_1B03949FC(&v877, v657, v658, v659);
                v660 = v121;
                v661 = v120;
                v662 = v119;
                v663 = v710;
                v664 = v711;
                v665 = v712;
                v666 = v713;
                v667 = v714;
                v668 = v715;
                v669 = v716;
                v670 = v717;
                v671 = v718;
                v672 = v719;
                v673 = v720;
                v674 = v721;
                v675 = v722;
                v676 = v723;
                v677 = v724;
                v678 = v725;
                v679 = v726;
                v680 = v727;
                v681 = v729;
                if (v121)
                {
                  v631 = v661;
                  v632 = v662;
                  v633 = v663;
                  v634 = v664;
                  v635 = v665;
                  v636 = v666;
                  v637 = v667;
                  v638 = v668;
                  v639 = v669;
                  v640 = v670;
                  v641 = v671;
                  v642 = v672;
                  v643 = v673;
                  v644 = v674;
                  v645 = v675;
                  v646 = v676;
                  v647 = v677;
                  v648 = v678;
                  v649 = v679;
                  v650 = v680;
                  v651 = v681;
                  v190 = v681;
                  v189 = v680;
                  v188 = v679;
                  v187 = v678;
                  v186 = v677;
                  v185 = v676;
                  v184 = v675;
                  v183 = v674;
                  v182 = v673;
                  v181 = v672;
                  v180 = v671;
                  v179 = v670;
                  v178 = v669;
                  v177 = v668;
                  v176 = v667;
                  v175 = v666;
                  v174 = v665;
                  v173 = v664;
                  v172 = v663;
                  v171 = v662;

                  __break(1u);
                }

                else
                {
                  v123 = v709;
                  v124 = v708;
                  v877 = v810;
                  v878 = v709;
                  sub_1B03949FC(&v877, &v881, &v880, &v879);
                  v609 = 0;
                  v610 = v124;
                  v611 = v123;
                  v612 = v710;
                  v613 = v711;
                  v614 = v712;
                  v615 = v713;
                  v616 = v714;
                  v617 = v715;
                  v618 = v716;
                  v619 = v717;
                  v620 = v718;
                  v621 = v719;
                  v622 = v720;
                  v623 = v721;
                  v624 = v722;
                  v625 = v723;
                  v626 = v724;
                  v627 = v725;
                  v628 = v726;
                  v629 = v727;
                  v630 = v729;
                  v125 = v709;
                  v126 = v708;
                  v877 = v811;
                  v878 = v710;
                  sub_1B03949FC(&v877, &v881, &v880, &v879);
                  v587 = 0;
                  v588 = v126;
                  v589 = v125;
                  v590 = v710;
                  v591 = v711;
                  v592 = v712;
                  v593 = v713;
                  v594 = v714;
                  v595 = v715;
                  v596 = v716;
                  v597 = v717;
                  v598 = v718;
                  v599 = v719;
                  v600 = v720;
                  v601 = v721;
                  v602 = v722;
                  v603 = v723;
                  v604 = v724;
                  v605 = v725;
                  v606 = v726;
                  v607 = v727;
                  v608 = v729;
                  v127 = v709;
                  v128 = v708;
                  v877 = v812;
                  v878 = v711;
                  sub_1B03949FC(&v877, &v881, &v880, &v879);
                  v565 = 0;
                  v566 = v128;
                  v567 = v127;
                  v568 = v710;
                  v569 = v711;
                  v570 = v712;
                  v571 = v713;
                  v572 = v714;
                  v573 = v715;
                  v574 = v716;
                  v575 = v717;
                  v576 = v718;
                  v577 = v719;
                  v578 = v720;
                  v579 = v721;
                  v580 = v722;
                  v581 = v723;
                  v582 = v724;
                  v583 = v725;
                  v584 = v726;
                  v585 = v727;
                  v586 = v729;
                  v129 = v709;
                  v130 = v708;
                  v877 = v813;
                  v878 = v712;
                  sub_1B03949FC(&v877, &v881, &v880, &v879);
                  v543 = 0;
                  v544 = v130;
                  v545 = v129;
                  v546 = v710;
                  v547 = v711;
                  v548 = v712;
                  v549 = v713;
                  v550 = v714;
                  v551 = v715;
                  v552 = v716;
                  v553 = v717;
                  v554 = v718;
                  v555 = v719;
                  v556 = v720;
                  v557 = v721;
                  v558 = v722;
                  v559 = v723;
                  v560 = v724;
                  v561 = v725;
                  v562 = v726;
                  v563 = v727;
                  v564 = v729;
                  v131 = v709;
                  v132 = v708;
                  v877 = v814;
                  v878 = v713;
                  sub_1B03949FC(&v877, &v881, &v880, &v879);
                  v521 = 0;
                  v522 = v132;
                  v523 = v131;
                  v524 = v710;
                  v525 = v711;
                  v526 = v712;
                  v527 = v713;
                  v528 = v714;
                  v529 = v715;
                  v530 = v716;
                  v531 = v717;
                  v532 = v718;
                  v533 = v719;
                  v534 = v720;
                  v535 = v721;
                  v536 = v722;
                  v537 = v723;
                  v538 = v724;
                  v539 = v725;
                  v540 = v726;
                  v541 = v727;
                  v542 = v729;
                  v133 = v709;
                  v134 = v708;
                  v877 = v815;
                  v878 = v714;
                  sub_1B03949FC(&v877, &v881, &v880, &v879);
                  v499 = 0;
                  v500 = v134;
                  v501 = v133;
                  v502 = v710;
                  v503 = v711;
                  v504 = v712;
                  v505 = v713;
                  v506 = v714;
                  v507 = v715;
                  v508 = v716;
                  v509 = v717;
                  v510 = v718;
                  v511 = v719;
                  v512 = v720;
                  v513 = v721;
                  v514 = v722;
                  v515 = v723;
                  v516 = v724;
                  v517 = v725;
                  v518 = v726;
                  v519 = v727;
                  v520 = v729;
                  v135 = v709;
                  v136 = v708;
                  v877 = v816;
                  v878 = v715;
                  sub_1B03949FC(&v877, &v881, &v880, &v879);
                  v477 = 0;
                  v478 = v136;
                  v479 = v135;
                  v480 = v710;
                  v481 = v711;
                  v482 = v712;
                  v483 = v713;
                  v484 = v714;
                  v485 = v715;
                  v486 = v716;
                  v487 = v717;
                  v488 = v718;
                  v489 = v719;
                  v490 = v720;
                  v491 = v721;
                  v492 = v722;
                  v493 = v723;
                  v494 = v724;
                  v495 = v725;
                  v496 = v726;
                  v497 = v727;
                  v498 = v729;
                  v137 = v709;
                  v138 = v708;
                  v877 = v817;
                  v878 = v716;
                  sub_1B03949FC(&v877, &v881, &v880, &v879);
                  v455 = 0;
                  v456 = v138;
                  v457 = v137;
                  v458 = v710;
                  v459 = v711;
                  v460 = v712;
                  v461 = v713;
                  v462 = v714;
                  v463 = v715;
                  v464 = v716;
                  v465 = v717;
                  v466 = v718;
                  v467 = v719;
                  v468 = v720;
                  v469 = v721;
                  v470 = v722;
                  v471 = v723;
                  v472 = v724;
                  v473 = v725;
                  v474 = v726;
                  v475 = v727;
                  v476 = v729;
                  v139 = v709;
                  v140 = v708;
                  v877 = v818;
                  v878 = v717;
                  sub_1B03949FC(&v877, &v881, &v880, &v879);
                  v433 = 0;
                  v434 = v140;
                  v435 = v139;
                  v436 = v710;
                  v437 = v711;
                  v438 = v712;
                  v439 = v713;
                  v440 = v714;
                  v441 = v715;
                  v442 = v716;
                  v443 = v717;
                  v444 = v718;
                  v445 = v719;
                  v446 = v720;
                  v447 = v721;
                  v448 = v722;
                  v449 = v723;
                  v450 = v724;
                  v451 = v725;
                  v452 = v726;
                  v453 = v727;
                  v454 = v729;
                  v141 = v709;
                  v142 = v708;
                  v877 = v819;
                  v878 = v718;
                  sub_1B03949FC(&v877, &v881, &v880, &v879);
                  v411 = 0;
                  v412 = v142;
                  v413 = v141;
                  v414 = v710;
                  v415 = v711;
                  v416 = v712;
                  v417 = v713;
                  v418 = v714;
                  v419 = v715;
                  v420 = v716;
                  v421 = v717;
                  v422 = v718;
                  v423 = v719;
                  v424 = v720;
                  v425 = v721;
                  v426 = v722;
                  v427 = v723;
                  v428 = v724;
                  v429 = v725;
                  v430 = v726;
                  v431 = v727;
                  v432 = v729;
                  v143 = v709;
                  v144 = v708;
                  v877 = v820;
                  v878 = v719;
                  sub_1B03949FC(&v877, &v881, &v880, &v879);
                  v389 = 0;
                  v390 = v144;
                  v391 = v143;
                  v392 = v710;
                  v393 = v711;
                  v394 = v712;
                  v395 = v713;
                  v396 = v714;
                  v397 = v715;
                  v398 = v716;
                  v399 = v717;
                  v400 = v718;
                  v401 = v719;
                  v402 = v720;
                  v403 = v721;
                  v404 = v722;
                  v405 = v723;
                  v406 = v724;
                  v407 = v725;
                  v408 = v726;
                  v409 = v727;
                  v410 = v729;
                  v145 = v709;
                  v146 = v708;
                  v877 = v821;
                  v878 = v720;
                  sub_1B03949FC(&v877, &v881, &v880, &v879);
                  v367 = 0;
                  v368 = v146;
                  v369 = v145;
                  v370 = v710;
                  v371 = v711;
                  v372 = v712;
                  v373 = v713;
                  v374 = v714;
                  v375 = v715;
                  v376 = v716;
                  v377 = v717;
                  v378 = v718;
                  v379 = v719;
                  v380 = v720;
                  v381 = v721;
                  v382 = v722;
                  v383 = v723;
                  v384 = v724;
                  v385 = v725;
                  v386 = v726;
                  v387 = v727;
                  v388 = v729;
                  v147 = v709;
                  v148 = v708;
                  v877 = v822;
                  v878 = v721;
                  sub_1B03949FC(&v877, &v881, &v880, &v879);
                  v345 = 0;
                  v346 = v148;
                  v347 = v147;
                  v348 = v710;
                  v349 = v711;
                  v350 = v712;
                  v351 = v713;
                  v352 = v714;
                  v353 = v715;
                  v354 = v716;
                  v355 = v717;
                  v356 = v718;
                  v357 = v719;
                  v358 = v720;
                  v359 = v721;
                  v360 = v722;
                  v361 = v723;
                  v362 = v724;
                  v363 = v725;
                  v364 = v726;
                  v365 = v727;
                  v366 = v729;
                  v149 = v709;
                  v150 = v708;
                  v877 = v823;
                  v878 = v722;
                  sub_1B03949FC(&v877, &v881, &v880, &v879);
                  v323 = 0;
                  v324 = v150;
                  v325 = v149;
                  v326 = v710;
                  v327 = v711;
                  v328 = v712;
                  v329 = v713;
                  v330 = v714;
                  v331 = v715;
                  v332 = v716;
                  v333 = v717;
                  v334 = v718;
                  v335 = v719;
                  v336 = v720;
                  v337 = v721;
                  v338 = v722;
                  v339 = v723;
                  v340 = v724;
                  v341 = v725;
                  v342 = v726;
                  v343 = v727;
                  v344 = v729;
                  v151 = v709;
                  v152 = v708;
                  v877 = v824;
                  v878 = v723;
                  sub_1B03949FC(&v877, &v881, &v880, &v879);
                  v301 = 0;
                  v302 = v152;
                  v303 = v151;
                  v304 = v710;
                  v305 = v711;
                  v306 = v712;
                  v307 = v713;
                  v308 = v714;
                  v309 = v715;
                  v310 = v716;
                  v311 = v717;
                  v312 = v718;
                  v313 = v719;
                  v314 = v720;
                  v315 = v721;
                  v316 = v722;
                  v317 = v723;
                  v318 = v724;
                  v319 = v725;
                  v320 = v726;
                  v321 = v727;
                  v322 = v729;
                  v153 = v709;
                  v154 = v708;
                  v877 = v825;
                  v878 = v724;
                  sub_1B03949FC(&v877, &v881, &v880, &v879);
                  v279 = 0;
                  v280 = v154;
                  v281 = v153;
                  v282 = v710;
                  v283 = v711;
                  v284 = v712;
                  v285 = v713;
                  v286 = v714;
                  v287 = v715;
                  v288 = v716;
                  v289 = v717;
                  v290 = v718;
                  v291 = v719;
                  v292 = v720;
                  v293 = v721;
                  v294 = v722;
                  v295 = v723;
                  v296 = v724;
                  v297 = v725;
                  v298 = v726;
                  v299 = v727;
                  v300 = v729;
                  v155 = v709;
                  v156 = v708;
                  v877 = v826;
                  v878 = v725;
                  sub_1B03949FC(&v877, &v881, &v880, &v879);
                  v257 = 0;
                  v258 = v156;
                  v259 = v155;
                  v260 = v710;
                  v261 = v711;
                  v262 = v712;
                  v263 = v713;
                  v264 = v714;
                  v265 = v715;
                  v266 = v716;
                  v267 = v717;
                  v268 = v718;
                  v269 = v719;
                  v270 = v720;
                  v271 = v721;
                  v272 = v722;
                  v273 = v723;
                  v274 = v724;
                  v275 = v725;
                  v276 = v726;
                  v277 = v727;
                  v278 = v729;
                  v157 = v709;
                  v158 = v708;
                  v877 = v827;
                  v878 = v726;
                  sub_1B03949FC(&v877, &v881, &v880, &v879);
                  v235 = 0;
                  v236 = v158;
                  v237 = v157;
                  v238 = v710;
                  v239 = v711;
                  v240 = v712;
                  v241 = v713;
                  v242 = v714;
                  v243 = v715;
                  v244 = v716;
                  v245 = v717;
                  v246 = v718;
                  v247 = v719;
                  v248 = v720;
                  v249 = v721;
                  v250 = v722;
                  v251 = v723;
                  v252 = v724;
                  v253 = v725;
                  v254 = v726;
                  v255 = v727;
                  v256 = v729;
                  v159 = v709;
                  v160 = v708;
                  v877 = v828;
                  v878 = v727;
                  sub_1B03949FC(&v877, &v881, &v880, &v879);
                  v213 = 0;
                  v214 = v160;
                  v215 = v159;
                  v216 = v710;
                  v217 = v711;
                  v218 = v712;
                  v219 = v713;
                  v220 = v714;
                  v221 = v715;
                  v222 = v716;
                  v223 = v717;
                  v224 = v718;
                  v225 = v719;
                  v226 = v720;
                  v227 = v721;
                  v228 = v722;
                  v229 = v723;
                  v230 = v724;
                  v231 = v725;
                  v232 = v726;
                  v233 = v727;
                  v234 = v729;
                  v161 = v709;
                  v162 = v708;
                  v877 = v829;
                  v878 = v729;
                  sub_1B03949FC(&v877, &v881, &v880, &v879);
                  v191 = 0;
                  v192 = v162;
                  v193 = v161;
                  v194 = v710;
                  v195 = v711;
                  v196 = v712;
                  v197 = v713;
                  v198 = v714;
                  v199 = v715;
                  v200 = v716;
                  v201 = v717;
                  v202 = v718;
                  v203 = v719;
                  v204 = v720;
                  v205 = v721;
                  v206 = v722;
                  v207 = v723;
                  v208 = v724;
                  v209 = v725;
                  v210 = v726;
                  v211 = v727;
                  v212 = v729;
                  _os_log_impl(&dword_1B0389000, v732, v733, "[%.*hhx-%.*X] [%{sensitive,mask.mailbox}s] Found invalid UID '%{public}s' while looking for flag changes.", v654, 0x35u);
                  sub_1B03998A8(v655, 0, v653);
                  sub_1B03998A8(v656, 2, MEMORY[0x1E69E7CA0] + 8);
                  sub_1B0E45D58();

                  v652 = v191;
                }
              }

              else
              {
                v122 = v762;

                v652 = v122;
              }

              v170 = v652;
              MEMORY[0x1E69E5920](v732);
              (*(v831 + 8))(v834, v830);

              MEMORY[0x1E69E5920](v759);
              v755 = v170;
            }

            else
            {
              v758 = v760;
              v756 = v760;
              v876 = v760;
              sub_1B03D08AC(v858, v852);
              HIDWORD(v875) = v756;
              v757 = MessageIdentifierSet.contains(_:)(&v875 + 4, v850);
              sub_1B03D09B8(v852);
              if (v757)
              {
                v874 = v756;
                MessageIdentifierSet.insert(_:)(&v875, &v874, v850);
              }

              MEMORY[0x1E69E5920](v759);
              v755 = v762;
            }
          }

          sub_1B039E440(v890);
          MEMORY[0x1E69E5920](v766);
          v169 = v762;
LABEL_51:
          v775 = v169;
          goto LABEL_52;
        }

        MEMORY[0x1E69E5920](v766);
      }

      v785(v848, v794 + OBJC_IVAR____TtC7Message24MailboxPersistenceHelper_mailboxURL, v844);
      v168 = sub_1B0829F6C(v848);
      v787(v848, v844);
      if (v168)
      {
        v167 = v168;
        v163 = v852;
        v166 = v168;
        *(v863 + 13) = v168;
        sub_1B0917CB8(v163);
        MessageIdentifierSet.formUnion(_:)(v852, v850);
        sub_1B03D09B8(v852);
        MEMORY[0x1E69E5920](v166);
      }

      v169 = v791;
      goto LABEL_51;
    }

    v783 = v789;
    v781 = v789;
    v873 = v789;
    sub_1B074B69C(v794 + OBJC_IVAR____TtC7Message24MailboxPersistenceHelper_logger, v843);
    sub_1B07204E0(v843, v854);
    v22 = v852;
    sub_1B074B764(v843);
    sub_1B03D08AC(v854, v22);
    sub_1B074B4A4();
    sub_1B0E45798();
    for (k = v791; ; k = v779)
    {
      v779 = k;
      sub_1B0E46518();
      v780 = v871;
      if (v872)
      {
        break;
      }

      v778 = v780;
      v776 = v780;
      v870 = v780;
      sub_1B03D08AC(v858, v852);
      HIDWORD(v869) = v776;
      v777 = MessageIdentifierSet.contains(_:)(&v869 + 4, v850);
      sub_1B03D09B8(v852);
      if (v777)
      {
        v868 = v776;
        MessageIdentifierSet.insert(_:)(&v869, &v868, v850);
      }
    }

    sub_1B03D09B8(v837);
    sub_1B03D09B8(v854);
    MEMORY[0x1E69E5920](v781);
    v775 = v779;
LABEL_52:
    v165 = v775;
    MEMORY[0x1E69E5920](v784);
  }

  sub_1B039E440(v891);
  sub_1B074BA2C(v859, v793);
  return sub_1B03D09B8(v858);
}

void *sub_1B0746530(id *a1, uint64_t a2)
{
  v10 = 0;
  v9 = 0;
  v4 = *a1;
  v10 = v4;
  v9 = a2;
  v6 = [v4 imapUID];
  v5 = sub_1B041C1E8();
  v2 = sub_1B07467B8();
  result = MessageIdentifier.init<A>(exactly:)(&v6, &type metadata for UID, MEMORY[0x1E69E7668], v5, v2, &v7);
  if ((v8 & 1) == 0)
  {
    [v4 serverFlags];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1F20, &qword_1B0E9B228);
    return sub_1B0E44788();
  }

  return result;
}

unint64_t sub_1B0746680()
{
  v2 = qword_1EB6DAFF8;
  if (!qword_1EB6DAFF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB6E1B30, &qword_1B0E9AF68);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DAFF8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B0746730()
{
  v2 = qword_1EB6DAE48;
  if (!qword_1EB6DAE48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB6E1B40, &unk_1B0E9AF70);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DAE48);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B07467B8()
{
  v2 = qword_1EB6DA330;
  if (!qword_1EB6DA330)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DA330);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1B0746830(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v237 = a1;
  v236 = a2;
  v235 = a3;
  v192 = sub_1B074E050;
  v193 = sub_1B0394C30;
  v194 = sub_1B0394C24;
  v195 = sub_1B074DFFC;
  v196 = sub_1B039BA88;
  v197 = sub_1B039BB94;
  v198 = sub_1B0394C24;
  v199 = sub_1B039BBA0;
  v200 = sub_1B039BC08;
  v201 = sub_1B06BA324;
  v202 = sub_1B074E0E4;
  v203 = sub_1B039BCF8;
  v204 = sub_1B0750028;
  v205 = sub_1B039BCF8;
  v206 = sub_1B0398F5C;
  v207 = sub_1B0398F5C;
  v208 = sub_1B0399178;
  v209 = sub_1B0398F5C;
  v210 = sub_1B0398F5C;
  v211 = sub_1B039BA94;
  v212 = sub_1B0398F5C;
  v213 = sub_1B0398F5C;
  v214 = sub_1B0399178;
  v215 = sub_1B0398F5C;
  v216 = sub_1B0398F5C;
  v217 = sub_1B03991EC;
  v218 = sub_1B0398F5C;
  v219 = sub_1B0398F5C;
  v220 = sub_1B03993BC;
  v221 = sub_1B0398F5C;
  v222 = sub_1B0398F5C;
  v223 = sub_1B039BCEC;
  v224 = sub_1B0398F5C;
  v225 = sub_1B0398F5C;
  v226 = sub_1B039BCEC;
  v256 = 0;
  v255 = 0;
  v254 = 0;
  v247 = 0;
  v227 = 0;
  v228 = _s6LoggerVMa_1(0);
  v229 = (*(*(v228 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v230 = &v98 - v229;
  v231 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v4);
  v232 = &v98 - v231;
  v233 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v6);
  v234 = &v98 - v233;
  v238 = sub_1B0E439A8();
  v239 = *(v238 - 8);
  v240 = v238 - 8;
  v241 = (*(v239 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v237);
  v242 = &v98 - v241;
  v256 = v7;
  v243 = *v8;
  v255 = v243;
  v254 = v9;
  swift_getObjectType();
  swift_unknownObjectRetain();
  v244 = [v243 remoteID];
  if (v244)
  {
    v190 = v244;
    v185 = v244;
    v186 = sub_1B0E44AD8();
    v187 = v10;
    MEMORY[0x1E69E5920](v185);
    v188 = v186;
    v189 = v187;
  }

  else
  {
    v188 = 0;
    v189 = 0;
  }

  v183 = v189;
  v182 = v188;
  swift_unknownObjectRelease();
  v253 = sub_1B08252D8(v182, v183);
  v184 = v253;
  if ((v253 & 0x100000000) != 0)
  {
    (*(v239 + 16))(v242, v235, v238);
    sub_1B074B69C(v235, v234);
    sub_1B074B69C(v234, v232);
    sub_1B074E41C(v234, v230);
    v13 = (v232 + *(v228 + 20));
    v131 = *v13;
    v132 = *(v13 + 1);
    v133 = *(v13 + 1);
    v134 = *(v13 + 4);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B074B764(v232);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v130 = 36;
    v150 = 7;
    v14 = swift_allocObject();
    v15 = v132;
    v16 = v133;
    v17 = v134;
    v136 = v14;
    *(v14 + 16) = v131;
    *(v14 + 20) = v15;
    *(v14 + 24) = v16;
    *(v14 + 32) = v17;
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v18 = swift_allocObject();
    v19 = v132;
    v20 = v133;
    v21 = v134;
    v129 = v18;
    *(v18 + 16) = v131;
    *(v18 + 20) = v19;
    *(v18 + 24) = v20;
    *(v18 + 32) = v21;

    v149 = 32;
    v22 = swift_allocObject();
    v23 = v129;
    v141 = v22;
    *(v22 + 16) = v192;
    *(v22 + 24) = v23;
    sub_1B0394868();
    sub_1B0394868();

    v24 = swift_allocObject();
    v25 = v132;
    v26 = v133;
    v27 = v134;
    v28 = v24;
    v29 = v230;
    v145 = v28;
    *(v28 + 16) = v131;
    *(v28 + 20) = v25;
    *(v28 + 24) = v26;
    *(v28 + 32) = v27;
    sub_1B074B764(v29);
    swift_unknownObjectRetain();
    v143 = 24;
    v151 = swift_allocObject();
    *(v151 + 16) = v243;
    v177 = sub_1B0E43988();
    v178 = sub_1B0E458E8();
    v147 = 17;
    v153 = swift_allocObject();
    v138 = 16;
    *(v153 + 16) = 16;
    v154 = swift_allocObject();
    v140 = 4;
    *(v154 + 16) = 4;
    v30 = swift_allocObject();
    v135 = v30;
    *(v30 + 16) = v193;
    *(v30 + 24) = 0;
    v31 = swift_allocObject();
    v32 = v135;
    v155 = v31;
    *(v31 + 16) = v194;
    *(v31 + 24) = v32;
    v156 = swift_allocObject();
    *(v156 + 16) = 0;
    v157 = swift_allocObject();
    *(v157 + 16) = 1;
    v33 = swift_allocObject();
    v34 = v136;
    v137 = v33;
    *(v33 + 16) = v195;
    *(v33 + 24) = v34;
    v35 = swift_allocObject();
    v36 = v137;
    v158 = v35;
    *(v35 + 16) = v196;
    *(v35 + 24) = v36;
    v159 = swift_allocObject();
    *(v159 + 16) = v138;
    v160 = swift_allocObject();
    *(v160 + 16) = v140;
    v37 = swift_allocObject();
    v139 = v37;
    *(v37 + 16) = v197;
    *(v37 + 24) = 0;
    v38 = swift_allocObject();
    v39 = v139;
    v161 = v38;
    *(v38 + 16) = v198;
    *(v38 + 24) = v39;
    v162 = swift_allocObject();
    *(v162 + 16) = 0;
    v163 = swift_allocObject();
    *(v163 + 16) = v140;
    v40 = swift_allocObject();
    v41 = v141;
    v142 = v40;
    *(v40 + 16) = v199;
    *(v40 + 24) = v41;
    v42 = swift_allocObject();
    v43 = v142;
    v164 = v42;
    *(v42 + 16) = v200;
    *(v42 + 24) = v43;
    v165 = swift_allocObject();
    *(v165 + 16) = 112;
    v166 = swift_allocObject();
    v148 = 8;
    *(v166 + 16) = 8;
    v144 = swift_allocObject();
    *(v144 + 16) = 0x786F626C69616DLL;
    v44 = swift_allocObject();
    v45 = v144;
    v167 = v44;
    *(v44 + 16) = v201;
    *(v44 + 24) = v45;
    v168 = swift_allocObject();
    *(v168 + 16) = 37;
    v169 = swift_allocObject();
    *(v169 + 16) = v148;
    v46 = swift_allocObject();
    v47 = v145;
    v146 = v46;
    *(v46 + 16) = v202;
    *(v46 + 24) = v47;
    v48 = swift_allocObject();
    v49 = v146;
    v170 = v48;
    *(v48 + 16) = v203;
    *(v48 + 24) = v49;
    v171 = swift_allocObject();
    *(v171 + 16) = 34;
    v172 = swift_allocObject();
    *(v172 + 16) = v148;
    v50 = swift_allocObject();
    v51 = v151;
    v152 = v50;
    *(v50 + 16) = v204;
    *(v50 + 24) = v51;
    v52 = swift_allocObject();
    v53 = v152;
    v174 = v52;
    *(v52 + 16) = v205;
    *(v52 + 24) = v53;
    v176 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
    v173 = sub_1B0E46A48();
    v175 = v54;

    v55 = v153;
    v56 = v175;
    *v175 = v206;
    v56[1] = v55;

    v57 = v154;
    v58 = v175;
    v175[2] = v207;
    v58[3] = v57;

    v59 = v155;
    v60 = v175;
    v175[4] = v208;
    v60[5] = v59;

    v61 = v156;
    v62 = v175;
    v175[6] = v209;
    v62[7] = v61;

    v63 = v157;
    v64 = v175;
    v175[8] = v210;
    v64[9] = v63;

    v65 = v158;
    v66 = v175;
    v175[10] = v211;
    v66[11] = v65;

    v67 = v159;
    v68 = v175;
    v175[12] = v212;
    v68[13] = v67;

    v69 = v160;
    v70 = v175;
    v175[14] = v213;
    v70[15] = v69;

    v71 = v161;
    v72 = v175;
    v175[16] = v214;
    v72[17] = v71;

    v73 = v162;
    v74 = v175;
    v175[18] = v215;
    v74[19] = v73;

    v75 = v163;
    v76 = v175;
    v175[20] = v216;
    v76[21] = v75;

    v77 = v164;
    v78 = v175;
    v175[22] = v217;
    v78[23] = v77;

    v79 = v165;
    v80 = v175;
    v175[24] = v218;
    v80[25] = v79;

    v81 = v166;
    v82 = v175;
    v175[26] = v219;
    v82[27] = v81;

    v83 = v167;
    v84 = v175;
    v175[28] = v220;
    v84[29] = v83;

    v85 = v168;
    v86 = v175;
    v175[30] = v221;
    v86[31] = v85;

    v87 = v169;
    v88 = v175;
    v175[32] = v222;
    v88[33] = v87;

    v89 = v170;
    v90 = v175;
    v175[34] = v223;
    v90[35] = v89;

    v91 = v171;
    v92 = v175;
    v175[36] = v224;
    v92[37] = v91;

    v93 = v172;
    v94 = v175;
    v175[38] = v225;
    v94[39] = v93;

    v95 = v174;
    v96 = v175;
    v175[40] = v226;
    v96[41] = v95;
    sub_1B0394964();

    if (os_log_type_enabled(v177, v178))
    {
      v122 = sub_1B0E45D78();
      v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
      v123 = sub_1B03949A8(0, v121, v121);
      v124 = sub_1B03949A8(2, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
      v125 = &v252;
      v252 = v122;
      v126 = &v251;
      v251 = v123;
      v127 = &v250;
      v250 = v124;
      sub_1B0394A48(3, &v252);
      sub_1B0394A48(7, v125);
      v97 = v191;
      v248 = v206;
      v249 = v153;
      sub_1B03949FC(&v248, v125, v126, v127);
      v128 = v97;
      if (v97)
      {

        __break(1u);
      }

      else
      {
        v248 = v207;
        v249 = v154;
        sub_1B03949FC(&v248, &v252, &v251, &v250);
        v119 = 0;
        v248 = v208;
        v249 = v155;
        sub_1B03949FC(&v248, &v252, &v251, &v250);
        v118 = 0;
        v248 = v209;
        v249 = v156;
        sub_1B03949FC(&v248, &v252, &v251, &v250);
        v117 = 0;
        v248 = v210;
        v249 = v157;
        sub_1B03949FC(&v248, &v252, &v251, &v250);
        v116 = 0;
        v248 = v211;
        v249 = v158;
        sub_1B03949FC(&v248, &v252, &v251, &v250);
        v115 = 0;
        v248 = v212;
        v249 = v159;
        sub_1B03949FC(&v248, &v252, &v251, &v250);
        v114 = 0;
        v248 = v213;
        v249 = v160;
        sub_1B03949FC(&v248, &v252, &v251, &v250);
        v113 = 0;
        v248 = v214;
        v249 = v161;
        sub_1B03949FC(&v248, &v252, &v251, &v250);
        v112 = 0;
        v248 = v215;
        v249 = v162;
        sub_1B03949FC(&v248, &v252, &v251, &v250);
        v111 = 0;
        v248 = v216;
        v249 = v163;
        sub_1B03949FC(&v248, &v252, &v251, &v250);
        v110 = 0;
        v248 = v217;
        v249 = v164;
        sub_1B03949FC(&v248, &v252, &v251, &v250);
        v109 = 0;
        v248 = v218;
        v249 = v165;
        sub_1B03949FC(&v248, &v252, &v251, &v250);
        v108 = 0;
        v248 = v219;
        v249 = v166;
        sub_1B03949FC(&v248, &v252, &v251, &v250);
        v107 = 0;
        v248 = v220;
        v249 = v167;
        sub_1B03949FC(&v248, &v252, &v251, &v250);
        v106 = 0;
        v248 = v221;
        v249 = v168;
        sub_1B03949FC(&v248, &v252, &v251, &v250);
        v105 = 0;
        v248 = v222;
        v249 = v169;
        sub_1B03949FC(&v248, &v252, &v251, &v250);
        v104 = 0;
        v248 = v223;
        v249 = v170;
        sub_1B03949FC(&v248, &v252, &v251, &v250);
        v103 = 0;
        v248 = v224;
        v249 = v171;
        sub_1B03949FC(&v248, &v252, &v251, &v250);
        v102 = 0;
        v248 = v225;
        v249 = v172;
        sub_1B03949FC(&v248, &v252, &v251, &v250);
        v101 = 0;
        v248 = v226;
        v249 = v174;
        sub_1B03949FC(&v248, &v252, &v251, &v250);
        v100 = 0;
        _os_log_impl(&dword_1B0389000, v177, v178, "[%.*hhx-%.*X] [%{sensitive,mask.mailbox}s] Found invalid UID '%{public}s' from message's remoteID while looking for flag changes.", v122, 0x35u);
        sub_1B03998A8(v123, 0, v121);
        sub_1B03998A8(v124, 2, MEMORY[0x1E69E7CA0] + 8);
        sub_1B0E45D58();

        v120 = v100;
      }
    }

    else
    {

      v120 = v191;
    }

    v99 = v120;
    MEMORY[0x1E69E5920](v177);
    (*(v239 + 8))(v242, v238);
    return v99;
  }

  else
  {
    v181 = v184;
    v247 = v184;
    v179 = &v245;
    v245 = v184;
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
    MessageIdentifierSet.insert(_:)(v246, v179, v11);
    result = v191;
    v180 = v191;
  }

  return result;
}

uint64_t sub_1B0748720(void *a1)
{
  swift_getObjectType();
  swift_unknownObjectRetain();
  v9 = [a1 remoteID];
  if (v9)
  {
    v4 = sub_1B0E44AD8();
    v5 = v1;
    MEMORY[0x1E69E5920](v9);
    v6 = v4;
    v7 = v5;
  }

  else
  {
    v6 = 0;
    v7 = 0;
  }

  swift_unknownObjectRelease();
  v10 = v6;
  v11 = v7;
  if (v7)
  {
    v12 = v10;
    v13 = v11;
  }

  else
  {
    v12 = sub_1B0E44838();
    v13 = v2;
  }

  return v12;
}

uint64_t sub_1B0748858(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v228 = a1;
  v227 = a2;
  v226 = a3;
  v183 = sub_1B074E050;
  v184 = sub_1B0394C30;
  v185 = sub_1B0394C24;
  v186 = sub_1B074DFFC;
  v187 = sub_1B039BA88;
  v188 = sub_1B039BB94;
  v189 = sub_1B0394C24;
  v190 = sub_1B039BBA0;
  v191 = sub_1B039BC08;
  v192 = sub_1B06BA324;
  v193 = sub_1B074E0E4;
  v194 = sub_1B039BCF8;
  v195 = sub_1B070B550;
  v196 = sub_1B039BCF8;
  v197 = sub_1B0398F5C;
  v198 = sub_1B0398F5C;
  v199 = sub_1B0399178;
  v200 = sub_1B0398F5C;
  v201 = sub_1B0398F5C;
  v202 = sub_1B039BA94;
  v203 = sub_1B0398F5C;
  v204 = sub_1B0398F5C;
  v205 = sub_1B0399178;
  v206 = sub_1B0398F5C;
  v207 = sub_1B0398F5C;
  v208 = sub_1B03991EC;
  v209 = sub_1B0398F5C;
  v210 = sub_1B0398F5C;
  v211 = sub_1B03993BC;
  v212 = sub_1B0398F5C;
  v213 = sub_1B0398F5C;
  v214 = sub_1B039BCEC;
  v215 = sub_1B0398F5C;
  v216 = sub_1B0398F5C;
  v217 = sub_1B039BCEC;
  v249 = 0;
  v247 = 0;
  v248 = 0;
  v246 = 0;
  v239 = 0;
  v218 = 0;
  v219 = _s6LoggerVMa_1(0);
  v220 = (*(*(v219 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v221 = &v99 - v220;
  v222 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v4);
  v223 = &v99 - v222;
  v224 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v6);
  v225 = &v99 - v224;
  v229 = sub_1B0E439A8();
  v230 = *(v229 - 8);
  v231 = v229 - 8;
  v232 = (*(v230 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v228);
  v233 = &v99 - v232;
  v249 = v7;
  v234 = *v8;
  v235 = v8[1];
  v247 = v234;
  v248 = v235;
  v246 = v9;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v245 = sub_1B08252D8(v234, v235);
  v236 = v245;
  if ((v245 & 0x100000000) != 0)
  {
    (*(v230 + 16))(v233, v226, v229);
    sub_1B074B69C(v226, v225);
    sub_1B074B69C(v225, v223);
    sub_1B074E41C(v225, v221);
    v12 = (v223 + *(v219 + 20));
    v132 = *v12;
    v133 = *(v12 + 1);
    v134 = *(v12 + 1);
    v135 = *(v12 + 4);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B074B764(v223);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v131 = 36;
    v150 = 7;
    v13 = swift_allocObject();
    v14 = v133;
    v15 = v134;
    v16 = v135;
    v137 = v13;
    *(v13 + 16) = v132;
    *(v13 + 20) = v14;
    *(v13 + 24) = v15;
    *(v13 + 32) = v16;
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v17 = swift_allocObject();
    v18 = v133;
    v19 = v134;
    v20 = v135;
    v130 = v17;
    *(v17 + 16) = v132;
    *(v17 + 20) = v18;
    *(v17 + 24) = v19;
    *(v17 + 32) = v20;

    v149 = 32;
    v21 = swift_allocObject();
    v22 = v130;
    v142 = v21;
    *(v21 + 16) = v183;
    *(v21 + 24) = v22;
    sub_1B0394868();
    sub_1B0394868();

    v23 = swift_allocObject();
    v24 = v133;
    v25 = v134;
    v26 = v135;
    v27 = v23;
    v28 = v221;
    v145 = v27;
    *(v27 + 16) = v132;
    *(v27 + 20) = v24;
    *(v27 + 24) = v25;
    *(v27 + 32) = v26;
    sub_1B074B764(v28);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v29 = swift_allocObject();
    v30 = v235;
    v151 = v29;
    *(v29 + 16) = v234;
    *(v29 + 24) = v30;
    v177 = sub_1B0E43988();
    v178 = sub_1B0E458E8();
    v147 = 17;
    v153 = swift_allocObject();
    v139 = 16;
    *(v153 + 16) = 16;
    v154 = swift_allocObject();
    v141 = 4;
    *(v154 + 16) = 4;
    v31 = swift_allocObject();
    v136 = v31;
    *(v31 + 16) = v184;
    *(v31 + 24) = 0;
    v32 = swift_allocObject();
    v33 = v136;
    v155 = v32;
    *(v32 + 16) = v185;
    *(v32 + 24) = v33;
    v156 = swift_allocObject();
    *(v156 + 16) = 0;
    v157 = swift_allocObject();
    *(v157 + 16) = 1;
    v34 = swift_allocObject();
    v35 = v137;
    v138 = v34;
    *(v34 + 16) = v186;
    *(v34 + 24) = v35;
    v36 = swift_allocObject();
    v37 = v138;
    v158 = v36;
    *(v36 + 16) = v187;
    *(v36 + 24) = v37;
    v159 = swift_allocObject();
    *(v159 + 16) = v139;
    v160 = swift_allocObject();
    *(v160 + 16) = v141;
    v38 = swift_allocObject();
    v140 = v38;
    *(v38 + 16) = v188;
    *(v38 + 24) = 0;
    v39 = swift_allocObject();
    v40 = v140;
    v161 = v39;
    *(v39 + 16) = v189;
    *(v39 + 24) = v40;
    v162 = swift_allocObject();
    *(v162 + 16) = 0;
    v163 = swift_allocObject();
    *(v163 + 16) = v141;
    v41 = swift_allocObject();
    v42 = v142;
    v143 = v41;
    *(v41 + 16) = v190;
    *(v41 + 24) = v42;
    v43 = swift_allocObject();
    v44 = v143;
    v164 = v43;
    *(v43 + 16) = v191;
    *(v43 + 24) = v44;
    v165 = swift_allocObject();
    *(v165 + 16) = 112;
    v166 = swift_allocObject();
    v148 = 8;
    *(v166 + 16) = 8;
    v144 = swift_allocObject();
    *(v144 + 16) = 0x786F626C69616DLL;
    v45 = swift_allocObject();
    v46 = v144;
    v167 = v45;
    *(v45 + 16) = v192;
    *(v45 + 24) = v46;
    v168 = swift_allocObject();
    *(v168 + 16) = 37;
    v169 = swift_allocObject();
    *(v169 + 16) = v148;
    v47 = swift_allocObject();
    v48 = v145;
    v146 = v47;
    *(v47 + 16) = v193;
    *(v47 + 24) = v48;
    v49 = swift_allocObject();
    v50 = v146;
    v170 = v49;
    *(v49 + 16) = v194;
    *(v49 + 24) = v50;
    v171 = swift_allocObject();
    *(v171 + 16) = 34;
    v172 = swift_allocObject();
    *(v172 + 16) = v148;
    v51 = swift_allocObject();
    v52 = v151;
    v152 = v51;
    *(v51 + 16) = v195;
    *(v51 + 24) = v52;
    v53 = swift_allocObject();
    v54 = v152;
    v174 = v53;
    *(v53 + 16) = v196;
    *(v53 + 24) = v54;
    v176 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
    v173 = sub_1B0E46A48();
    v175 = v55;

    v56 = v153;
    v57 = v175;
    *v175 = v197;
    v57[1] = v56;

    v58 = v154;
    v59 = v175;
    v175[2] = v198;
    v59[3] = v58;

    v60 = v155;
    v61 = v175;
    v175[4] = v199;
    v61[5] = v60;

    v62 = v156;
    v63 = v175;
    v175[6] = v200;
    v63[7] = v62;

    v64 = v157;
    v65 = v175;
    v175[8] = v201;
    v65[9] = v64;

    v66 = v158;
    v67 = v175;
    v175[10] = v202;
    v67[11] = v66;

    v68 = v159;
    v69 = v175;
    v175[12] = v203;
    v69[13] = v68;

    v70 = v160;
    v71 = v175;
    v175[14] = v204;
    v71[15] = v70;

    v72 = v161;
    v73 = v175;
    v175[16] = v205;
    v73[17] = v72;

    v74 = v162;
    v75 = v175;
    v175[18] = v206;
    v75[19] = v74;

    v76 = v163;
    v77 = v175;
    v175[20] = v207;
    v77[21] = v76;

    v78 = v164;
    v79 = v175;
    v175[22] = v208;
    v79[23] = v78;

    v80 = v165;
    v81 = v175;
    v175[24] = v209;
    v81[25] = v80;

    v82 = v166;
    v83 = v175;
    v175[26] = v210;
    v83[27] = v82;

    v84 = v167;
    v85 = v175;
    v175[28] = v211;
    v85[29] = v84;

    v86 = v168;
    v87 = v175;
    v175[30] = v212;
    v87[31] = v86;

    v88 = v169;
    v89 = v175;
    v175[32] = v213;
    v89[33] = v88;

    v90 = v170;
    v91 = v175;
    v175[34] = v214;
    v91[35] = v90;

    v92 = v171;
    v93 = v175;
    v175[36] = v215;
    v93[37] = v92;

    v94 = v172;
    v95 = v175;
    v175[38] = v216;
    v95[39] = v94;

    v96 = v174;
    v97 = v175;
    v175[40] = v217;
    v97[41] = v96;
    sub_1B0394964();

    if (os_log_type_enabled(v177, v178))
    {
      v123 = sub_1B0E45D78();
      v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
      v124 = sub_1B03949A8(0, v122, v122);
      v125 = sub_1B03949A8(2, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
      v126 = &v244;
      v244 = v123;
      v127 = &v243;
      v243 = v124;
      v128 = &v242;
      v242 = v125;
      sub_1B0394A48(3, &v244);
      sub_1B0394A48(7, v126);
      v98 = v182;
      v240 = v197;
      v241 = v153;
      sub_1B03949FC(&v240, v126, v127, v128);
      v129 = v98;
      if (v98)
      {

        __break(1u);
      }

      else
      {
        v240 = v198;
        v241 = v154;
        sub_1B03949FC(&v240, &v244, &v243, &v242);
        v120 = 0;
        v240 = v199;
        v241 = v155;
        sub_1B03949FC(&v240, &v244, &v243, &v242);
        v119 = 0;
        v240 = v200;
        v241 = v156;
        sub_1B03949FC(&v240, &v244, &v243, &v242);
        v118 = 0;
        v240 = v201;
        v241 = v157;
        sub_1B03949FC(&v240, &v244, &v243, &v242);
        v117 = 0;
        v240 = v202;
        v241 = v158;
        sub_1B03949FC(&v240, &v244, &v243, &v242);
        v116 = 0;
        v240 = v203;
        v241 = v159;
        sub_1B03949FC(&v240, &v244, &v243, &v242);
        v115 = 0;
        v240 = v204;
        v241 = v160;
        sub_1B03949FC(&v240, &v244, &v243, &v242);
        v114 = 0;
        v240 = v205;
        v241 = v161;
        sub_1B03949FC(&v240, &v244, &v243, &v242);
        v113 = 0;
        v240 = v206;
        v241 = v162;
        sub_1B03949FC(&v240, &v244, &v243, &v242);
        v112 = 0;
        v240 = v207;
        v241 = v163;
        sub_1B03949FC(&v240, &v244, &v243, &v242);
        v111 = 0;
        v240 = v208;
        v241 = v164;
        sub_1B03949FC(&v240, &v244, &v243, &v242);
        v110 = 0;
        v240 = v209;
        v241 = v165;
        sub_1B03949FC(&v240, &v244, &v243, &v242);
        v109 = 0;
        v240 = v210;
        v241 = v166;
        sub_1B03949FC(&v240, &v244, &v243, &v242);
        v108 = 0;
        v240 = v211;
        v241 = v167;
        sub_1B03949FC(&v240, &v244, &v243, &v242);
        v107 = 0;
        v240 = v212;
        v241 = v168;
        sub_1B03949FC(&v240, &v244, &v243, &v242);
        v106 = 0;
        v240 = v213;
        v241 = v169;
        sub_1B03949FC(&v240, &v244, &v243, &v242);
        v105 = 0;
        v240 = v214;
        v241 = v170;
        sub_1B03949FC(&v240, &v244, &v243, &v242);
        v104 = 0;
        v240 = v215;
        v241 = v171;
        sub_1B03949FC(&v240, &v244, &v243, &v242);
        v103 = 0;
        v240 = v216;
        v241 = v172;
        sub_1B03949FC(&v240, &v244, &v243, &v242);
        v102 = 0;
        v240 = v217;
        v241 = v174;
        sub_1B03949FC(&v240, &v244, &v243, &v242);
        v101 = 0;
        _os_log_impl(&dword_1B0389000, v177, v178, "[%.*hhx-%.*X] [%{sensitive,mask.mailbox}s] Found invalid UID '%{public}s' from action's remoteIDs while looking for flag changes.", v123, 0x35u);
        sub_1B03998A8(v124, 0, v122);
        sub_1B03998A8(v125, 2, MEMORY[0x1E69E7CA0] + 8);
        sub_1B0E45D58();

        v121 = v101;
      }
    }

    else
    {

      v121 = v182;
    }

    v100 = v121;
    MEMORY[0x1E69E5920](v177);
    (*(v230 + 8))(v233, v229);
    return v100;
  }

  else
  {
    v181 = v236;
    v239 = v236;
    v179 = &v237;
    v237 = v236;
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
    MessageIdentifierSet.insert(_:)(v238, v179, v10);
    result = v182;
    v180 = v182;
  }

  return result;
}

unint64_t sub_1B074A67C(unint64_t a1, char a2, uint64_t a3)
{
  v34 = a1;
  v35 = a2;
  v5 = a1;
  v6 = BYTE1(a1);
  v7 = BYTE2(a1);
  v8 = BYTE3(a1);
  v9 = BYTE4(a1);
  v10 = BYTE5(a1);
  v11 = BYTE6(a1);
  v12 = HIBYTE(a1);
  v28 = a1;
  v29 = a1 >> 8;
  v30 = BYTE5(a1);
  v31 = HIWORD(a1);
  v32 = a2;
  v27 = a3;
  v15 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  MEMORY[0x1E69E5928](a3);
  v14 = swift_allocObject();
  *(v14 + 16) = a3;
  *(v14 + 24) = v5;
  *(v14 + 25) = v6;
  *(v14 + 26) = v7;
  *(v14 + 27) = v8;
  *(v14 + 28) = v9;
  *(v14 + 29) = v10;
  *(v14 + 30) = v11;
  *(v14 + 31) = v12;
  *(v14 + 32) = a2;

  v18 = swift_allocObject();
  *(v18 + 16) = sub_1B074F200;
  *(v18 + 24) = v14;

  v25 = sub_1B074F260;
  v26 = v18;
  aBlock = MEMORY[0x1E69E9820];
  v21 = 1107296256;
  v22 = 0;
  v23 = sub_1B074C0AC;
  v24 = &block_descriptor_1256;
  v16 = _Block_copy(&aBlock);

  v17 = [v15 initWithBuilder_];
  _Block_release(v16);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  result = isEscapingClosureAtFileLocation;
  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    MEMORY[0x1E69E5928](v17);
    v33 = v17;
    MEMORY[0x1E69E5920](a3);
    MEMORY[0x1E69E5920](v33);

    return v17;
  }

  return result;
}

unint64_t sub_1B074A9DC(unint64_t a1, char a2)
{
  v31 = a1;
  v32 = a2;
  v3 = a1;
  v4 = BYTE1(a1);
  v5 = BYTE2(a1);
  v6 = BYTE3(a1);
  v7 = BYTE4(a1);
  v8 = BYTE5(a1);
  v9 = BYTE6(a1);
  v10 = HIBYTE(a1);
  v25 = a1;
  v26 = a1 >> 8;
  v27 = BYTE5(a1);
  v28 = HIWORD(a1);
  v29 = a2;
  v13 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v12 = swift_allocObject();
  v12[16] = v3;
  v12[17] = v4;
  v12[18] = v5;
  v12[19] = v6;
  v12[20] = v7;
  v12[21] = v8;
  v12[22] = v9;
  v12[23] = v10;
  v12[24] = a2;

  v16 = swift_allocObject();
  *(v16 + 16) = sub_1B074F2D0;
  *(v16 + 24) = v12;

  v23 = sub_1B074F260;
  v24 = v16;
  aBlock = MEMORY[0x1E69E9820];
  v19 = 1107296256;
  v20 = 0;
  v21 = sub_1B074C0AC;
  v22 = &block_descriptor_1265;
  v14 = _Block_copy(&aBlock);

  v15 = [v13 initWithBuilder_];
  _Block_release(v14);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  result = isEscapingClosureAtFileLocation;
  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    MEMORY[0x1E69E5928](v15);
    v30 = v15;
    MEMORY[0x1E69E5920](v15);

    return v15;
  }

  return result;
}

unint64_t sub_1B074AC8C()
{
  v2 = qword_1EB6DA868;
  if (!qword_1EB6DA868)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EB6DA868);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_1B074ACF0()
{
  v2 = qword_1EB6DAEF0;
  if (!qword_1EB6DAEF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E1B58, &unk_1B0E9AF80);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DAEF0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B074AD9C()
{
  v2 = qword_1EB6DAEF8;
  if (!qword_1EB6DAEF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E1B58, &unk_1B0E9AF80);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DAEF8);
    return WitnessTable;
  }

  return v2;
}

id sub_1B074AE24@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_1B0E42E68();
  v3 = v1 + ((*(*(v2 - 8) + 80) + 16) & ~*(*(v2 - 8) + 80));

  return sub_1B0721E28(a1, v3);
}

unint64_t sub_1B074AEA4()
{
  v2 = qword_1EB6DA918;
  if (!qword_1EB6DA918)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EB6DA918);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_1B074AF08()
{
  v2 = qword_1EB6DA4F0;
  if (!qword_1EB6DA4F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E1B60, &unk_1B0EA09B0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DA4F0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B074AF90()
{
  v2 = qword_1EB6DA440;
  if (!qword_1EB6DA440)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB6E1B68, &qword_1B0E9AF90);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DA440);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B074B040()
{
  v2 = qword_1EB6DA3C0;
  if (!qword_1EB6DA3C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB6E1B78, &qword_1B0E9AF98);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DA3C0);
    return WitnessTable;
  }

  return v2;
}

id sub_1B074B0C8@<X0>(void *a1@<X8>)
{
  v2 = sub_1B0E42E68();
  v3 = v1 + ((*(*(v2 - 8) + 80) + 16) & ~*(*(v2 - 8) + 80));

  return sub_1B07224BC(v3, a1);
}

unint64_t sub_1B074B174()
{
  v2 = qword_1EB6DA420;
  if (!qword_1EB6DA420)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E1B88, &unk_1B0E9AFA0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DA420);
    return WitnessTable;
  }

  return v2;
}

void sub_1B074B1FC()
{
}

unint64_t sub_1B074B258()
{
  v2 = qword_1EB6DAA68;
  if (!qword_1EB6DAA68)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EB6DAA68);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_1B074B2E4()
{
  v2 = qword_1EB6DAE30;
  if (!qword_1EB6DAE30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB6E1B98, &qword_1B0E9AFB8);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DAE30);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B074B394()
{
  v2 = qword_1EB6DAD00;
  if (!qword_1EB6DAD00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB6E1BA8, &qword_1B0E9AFC0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DAD00);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B074B41C()
{
  v2 = qword_1EB6DB538;
  if (!qword_1EB6DB538)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E1BC0, &qword_1B0E9AFD0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DB538);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B074B4A4()
{
  v2 = qword_1EB6DE400;
  if (!qword_1EB6DE400)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DE400);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B074B52C()
{
  v2 = qword_1EB6DB710;
  if (!qword_1EB6DB710)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB6E1BC8, &qword_1B0E9AFD8);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DB710);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B074B5DC()
{
  v2 = qword_1EB6DA540;
  if (!qword_1EB6DA540)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB6E1BD8, &unk_1B0E9AFE0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DA540);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1B074B69C(uint64_t a1, uint64_t a2)
{
  v2 = sub_1B0E439A8();
  (*(*(v2 - 8) + 16))(a2, a1);
  v3 = _s6LoggerVMa_1(0);
  v8 = a1 + *(v3 + 20);
  v9 = a2 + *(v3 + 20);
  *v9 = *v8;
  *(v9 + 4) = *(v8 + 4);
  v7 = *(v8 + 8);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  result = a2;
  *(v9 + 8) = v7;
  *(v9 + 16) = *(v8 + 16);
  return result;
}

uint64_t sub_1B074B764(uint64_t a1)
{
  v1 = sub_1B0E439A8();
  (*(*(v1 - 8) + 8))(a1);
  _s6LoggerVMa_1(0);

  return a1;
}

unint64_t sub_1B074B7E4()
{
  v2 = qword_1EB6DB410;
  if (!qword_1EB6DB410)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB6E1BE8, &qword_1B0ECD5D0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DB410);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B074B86C()
{
  v2 = qword_1EB6DAF50;
  if (!qword_1EB6DAF50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E1B50, &unk_1B0E9DDF0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DAF50);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B074B8F4()
{
  v2 = qword_1EB6DB838;
  if (!qword_1EB6DB838)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB6E1C20, &unk_1B0E9B020);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DB838);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B074B97C()
{
  v2 = qword_1EB6DE3F0;
  if (!qword_1EB6DE3F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DE3F0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1B074BA2C(uint64_t a1, uint64_t a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3120, qword_1B0E9B270);
  (*(*(v2 - 8) + 32))(a2, a1);
  return a2;
}

uint64_t sub_1B074BA9C(void *a1, uint64_t a2, char a3)
{
  v13 = a2;
  v14 = BYTE1(a2);
  v15 = BYTE2(a2);
  v16 = BYTE3(a2);
  v18 = BYTE4(a2);
  v9 = BYTE5(a2);
  v10 = BYTE6(a2);
  v11 = HIBYTE(a2);
  swift_getObjectType();
  swift_unknownObjectRetain();
  [a1 setRead_];
  swift_unknownObjectRelease();
  swift_getObjectType();
  swift_unknownObjectRetain();
  [a1 setDeleted_];
  swift_unknownObjectRelease();
  swift_getObjectType();
  swift_unknownObjectRetain();
  [a1 setReplied_];
  swift_unknownObjectRelease();
  swift_getObjectType();
  swift_unknownObjectRetain();
  [a1 setDraft_];
  swift_unknownObjectRelease();
  swift_getObjectType();
  swift_unknownObjectRetain();
  if (v18 == 2)
  {
    v8 = 0;
  }

  else
  {
    v8 = v18;
  }

  [a1 setForwarded_];
  swift_unknownObjectRelease();
  swift_getObjectType();
  swift_unknownObjectRetain();
  if (v9 == 2)
  {
    v7 = 0;
  }

  else
  {
    v7 = v9;
  }

  [a1 setRedirected_];
  swift_unknownObjectRelease();
  swift_getObjectType();
  swift_unknownObjectRetain();
  if (a3 == 2)
  {
    v6 = 0;
  }

  else
  {
    v6 = a3;
  }

  [a1 setTouchedByCleanup_];
  swift_unknownObjectRelease();
  swift_getObjectType();
  swift_unknownObjectRetain();
  [a1 setJunkLevel_];
  swift_unknownObjectRelease();
  v5 = sub_1B074BF0C(v11);
  if (v3)
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    [a1 setFlagged_];
  }

  else
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    [a1 setFlagged_];
    swift_unknownObjectRelease();
    swift_getObjectType();
    swift_unknownObjectRetain();
    [a1 setFlagColor_];
  }

  return swift_unknownObjectRelease();
}

uint64_t sub_1B074BE70(char a1)
{
  if (a1 == 3 || !a1)
  {
    return 0;
  }

  if (a1 == 1)
  {
    return 1;
  }

  return 2;
}

uint64_t sub_1B074BF0C(char a1)
{
  if (a1 == 8)
  {
    return 0;
  }

  if (a1)
  {
    switch(a1)
    {
      case 1:
        return 0;
      case 2:
        return 1;
      case 3:
        return 2;
      case 4:
        return 3;
      case 5:
        return 4;
      case 6:
        return 5;
    }

    return 6;
  }

  return 0;
}

uint64_t sub_1B074C0AC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  swift_unknownObjectRetain();
  v3(a2);
  return swift_unknownObjectRelease();
}

uint64_t sub_1B074C104(void *a1)
{
  if ([a1 readChanged])
  {
    *v9 = ([a1 read] ^ 1) & 1;
  }

  if ([a1 deletedChanged])
  {
    v9[1] = [a1 deleted];
  }

  if ([a1 repliedChanged])
  {
    v9[2] = [a1 replied];
  }

  if ([a1 draftChanged])
  {
    v9[3] = [a1 draft];
  }

  if ([a1 forwardedChanged])
  {
    v9[4] = [a1 forwarded];
  }

  if ([a1 redirectedChanged])
  {
    v9[5] = [a1 redirected];
  }

  if ([a1 touchedByCleanupChanged])
  {
    v9[8] = [a1 touchedByCleanup];
  }

  v6 = [a1 flaggedChanged];
  v4 = [a1 flagged];
  v5 = [a1 flagColorChanged];
  v7 = [a1 flagColor];
  if (v6)
  {
    if (!v4)
    {
      v9[7] = 0;
      goto LABEL_39;
    }
  }

  else if (!v5)
  {
    goto LABEL_39;
  }

  if ((v5 & 1) == 0)
  {
    goto LABEL_37;
  }

  if (!v7)
  {
    v9[7] = 1;
    goto LABEL_39;
  }

  if (v7 == 1)
  {
    v9[7] = 2;
    goto LABEL_39;
  }

  if (v7 == 2)
  {
    v9[7] = 3;
    goto LABEL_39;
  }

  if (v7 == 3)
  {
    v9[7] = 4;
    goto LABEL_39;
  }

  if (v7 == 4)
  {
    v9[7] = 5;
    goto LABEL_39;
  }

  if (v7 == 5)
  {
    v9[7] = 6;
    goto LABEL_39;
  }

  if (v7 == 6)
  {
    v9[7] = 7;
  }

  else
  {
LABEL_37:
    if (v6 & 1) != 0 && (v4)
    {
      v9[7] = 1;
    }
  }

LABEL_39:
  [a1 junkLevelSetByUserChanged];
  [a1 junkLevelSetByUser];
  v3 = [a1 junkLevelChanged];
  v1 = [a1 junkLevel];
  result = v3;
  if (v3)
  {
    if (v1 == 1)
    {
      v9[6] = 1;
    }

    else if (v1 == 2)
    {
      v9[6] = 2;
    }

    else
    {
      v9[6] = 0;
    }
  }

  return result;
}

uint64_t sub_1B074C554(void *a1, id a2, uint64_t a3, unsigned __int8 a4)
{
  v16 = a3;
  v8 = BYTE1(a3);
  v9 = BYTE2(a3);
  v10 = BYTE3(a3);
  v11 = BYTE4(a3);
  v12 = BYTE5(a3);
  v13 = BYTE6(a3);
  v14 = HIBYTE(a3);
  v15 = a4;
  if ([a2 read] == (a3 & 1))
  {
    swift_getObjectType();
    [a1 changesReadTo_];
  }

  if ([a2 deleted] != (v8 & 1))
  {
    swift_getObjectType();
    [a1 changesDeletedTo_];
  }

  if ([a2 replied] != (v9 & 1))
  {
    swift_getObjectType();
    [a1 changesRepliedTo_];
  }

  result = [a2 draft];
  if (result != (v10 & 1))
  {
    swift_getObjectType();
    result = [a1 changesDraftTo_];
  }

  if (v11 != 2)
  {
    result = [a2 forwarded];
    if (result != (v11 & 1))
    {
      swift_getObjectType();
      result = [a1 changesForwardedTo_];
    }
  }

  if (v12 != 2)
  {
    result = [a2 redirected];
    if (result != (v12 & 1))
    {
      swift_getObjectType();
      result = [a1 changesRedirectedTo_];
    }
  }

  if (v15 != 2)
  {
    result = [a2 touchedByCleanup];
    if (result != (v15 & 1))
    {
      swift_getObjectType();
      result = [a1 changesTouchedByCleanupTo_];
    }
  }

  if (v13 != 3)
  {
    if (v13)
    {
      if (v13 == 1)
      {
        [a2 junkLevel];
        type metadata accessor for ECJunkMailLevel(0);
        sub_1B074FD30();
        result = sub_1B0E44A28();
        if ((result & 1) == 0)
        {
          swift_getObjectType();
          result = [a1 changesJunkLevelTo_];
        }
      }

      else
      {
        [a2 junkLevel];
        type metadata accessor for ECJunkMailLevel(0);
        sub_1B074FD30();
        result = sub_1B0E44A28();
        if ((result & 1) == 0)
        {
          swift_getObjectType();
          result = [a1 changesJunkLevelTo_];
        }
      }
    }

    else
    {
      [a2 junkLevel];
      type metadata accessor for ECJunkMailLevel(0);
      sub_1B074FD30();
      result = sub_1B0E44A28();
      if ((result & 1) == 0)
      {
        swift_getObjectType();
        result = [a1 changesJunkLevelTo_];
      }
    }
  }

  if (v14 != 8 || (result = [a2 flagged], (result & 1) != 0))
  {
    if (v14 != 8)
    {
      if (v14)
      {
        switch(v14)
        {
          case 1u:
            if (([a2 flagged] & 1) == 0)
            {
              swift_getObjectType();
              [a1 changesFlaggedTo_];
            }

            [a2 flagColor];
            type metadata accessor for ECMessageFlagColor(0);
            sub_1B074FCB0();
            result = sub_1B0E44A28();
            if ((result & 1) == 0)
            {
              swift_getObjectType();
              return [a1 changesFlagColorTo_];
            }

            break;
          case 2u:
            if (([a2 flagged] & 1) == 0)
            {
              swift_getObjectType();
              [a1 changesFlaggedTo_];
            }

            [a2 flagColor];
            type metadata accessor for ECMessageFlagColor(0);
            sub_1B074FCB0();
            result = sub_1B0E44A28();
            if ((result & 1) == 0)
            {
              swift_getObjectType();
              return [a1 changesFlagColorTo_];
            }

            break;
          case 3u:
            if (([a2 flagged] & 1) == 0)
            {
              swift_getObjectType();
              [a1 changesFlaggedTo_];
            }

            [a2 flagColor];
            type metadata accessor for ECMessageFlagColor(0);
            sub_1B074FCB0();
            result = sub_1B0E44A28();
            if ((result & 1) == 0)
            {
              swift_getObjectType();
              return [a1 changesFlagColorTo_];
            }

            break;
          case 4u:
            if (([a2 flagged] & 1) == 0)
            {
              swift_getObjectType();
              [a1 changesFlaggedTo_];
            }

            [a2 flagColor];
            type metadata accessor for ECMessageFlagColor(0);
            sub_1B074FCB0();
            result = sub_1B0E44A28();
            if ((result & 1) == 0)
            {
              swift_getObjectType();
              return [a1 changesFlagColorTo_];
            }

            break;
          case 5u:
            if (([a2 flagged] & 1) == 0)
            {
              swift_getObjectType();
              [a1 changesFlaggedTo_];
            }

            [a2 flagColor];
            type metadata accessor for ECMessageFlagColor(0);
            sub_1B074FCB0();
            result = sub_1B0E44A28();
            if ((result & 1) == 0)
            {
              swift_getObjectType();
              return [a1 changesFlagColorTo_];
            }

            break;
          case 6u:
            if (([a2 flagged] & 1) == 0)
            {
              swift_getObjectType();
              [a1 changesFlaggedTo_];
            }

            [a2 flagColor];
            type metadata accessor for ECMessageFlagColor(0);
            sub_1B074FCB0();
            result = sub_1B0E44A28();
            if ((result & 1) == 0)
            {
              swift_getObjectType();
              return [a1 changesFlagColorTo_];
            }

            break;
          default:
            v5 = [a2 flagged];
            if ((v5 & 1) == 0)
            {
              swift_getObjectType();
              [a1 changesFlaggedTo_];
            }

            [a2 flagColor];
            type metadata accessor for ECMessageFlagColor(0);
            sub_1B074FCB0();
            result = sub_1B0E44A28();
            if ((result & 1) == 0)
            {
              swift_getObjectType();
              return [a1 changesFlagColorTo_];
            }

            break;
        }
      }

      else
      {
        result = [a2 flagged];
        if (result)
        {
          swift_getObjectType();
          return [a1 changesFlaggedTo_];
        }
      }
    }
  }

  else
  {
    swift_getObjectType();
    return [a1 changesFlaggedTo_];
  }

  return result;
}

unint64_t sub_1B074D188(uint64_t a1, char a2)
{
  if (a1)
  {
    v48 = 0;
    v49 = 0;
    v50 = 0;
    v51 = 0;
    v52 = 0;
    v53 = 0;
    v54 = 0;
    v55 = 0;
    v56 = 0;
    v57 = 0;
  }

  else
  {
    v48 = 1;
    v49 = 1;
    v50 = 1;
    v51 = 1;
    v52 = 1;
    v53 = 1;
    v54 = 1;
    v55 = 1;
    v56 = 1;
    v57 = 1;
  }

  if ((a1 & 0x100) != 0)
  {
    v39 = v57 | 2;
    v40 = v57 | 2;
    v41 = v57 | 2;
    v42 = v57 | 2;
    v43 = v57 | 2;
    v44 = v57 | 2;
    v45 = v57 | 2;
    v46 = v57 | 2;
    v47 = v57 | 2;
  }

  else
  {
    v39 = v48;
    v40 = v49;
    v41 = v50;
    v42 = v51;
    v43 = v52;
    v44 = v53;
    v45 = v54;
    v46 = v55;
    v47 = v56;
  }

  if ((a1 & 0x10000) != 0)
  {
    v31 = v47 | 4;
    v32 = v47 | 4;
    v33 = v47 | 4;
    v34 = v47 | 4;
    v35 = v47 | 4;
    v36 = v47 | 4;
    v37 = v47 | 4;
    v38 = v47 | 4;
  }

  else
  {
    v31 = v39;
    v32 = v40;
    v33 = v41;
    v34 = v42;
    v35 = v43;
    v36 = v44;
    v37 = v45;
    v38 = v46;
  }

  if ((a1 & 0x1000000) != 0)
  {
    v24 = v38 | 0x40;
    v25 = v38 | 0x40;
    v26 = v38 | 0x40;
    v27 = v38 | 0x40;
    v28 = v38 | 0x40;
    v29 = v38 | 0x40;
    v30 = v38 | 0x40;
  }

  else
  {
    v24 = v31;
    v25 = v32;
    v26 = v33;
    v27 = v34;
    v28 = v35;
    v29 = v36;
    v30 = v37;
  }

  if (BYTE4(a1) == 2 || (a1 & 0x100000000) == 0)
  {
    v18 = v24;
    v19 = v25;
    v20 = v26;
    v21 = v27;
    v22 = v28;
    v23 = v29;
  }

  else
  {
    v18 = v30 | 0x100;
    v19 = v30 | 0x100;
    v20 = v30 | 0x100;
    v21 = v30 | 0x100;
    v22 = v30 | 0x100;
    v23 = v30 | 0x100;
  }

  if (BYTE5(a1) == 2 || (a1 & 0x10000000000) == 0)
  {
    v13 = v18;
    v14 = v19;
    v15 = v20;
    v16 = v21;
    v17 = v22;
  }

  else
  {
    v13 = v23 | 0x200;
    v14 = v23 | 0x200;
    v15 = v23 | 0x200;
    v16 = v23 | 0x200;
    v17 = v23 | 0x200;
  }

  if (a2 == 2 || (a2 & 1) == 0)
  {
    v9 = v13;
    v10 = v14;
    v11 = v15;
    v12 = v16;
  }

  else
  {
    v9 = v17 | 0x800000000000;
    v10 = v17 | 0x800000000000;
    v11 = v17 | 0x800000000000;
    v12 = v17 | 0x800000000000;
  }

  if (BYTE6(a1) == 3)
  {
    v7 = v9;
    v8 = v10;
  }

  else
  {
    if (BYTE6(a1))
    {
      if (BYTE6(a1) == 1)
      {
        v5 = v11 | 0x200000;
        v6 = v11 | 0x200000;
      }

      else
      {
        v5 = v12 | 0x80000000;
        v6 = v12 | 0x80000000;
      }
    }

    else
    {
      v5 = v9;
      v6 = v10;
    }

    v7 = v5;
    v8 = v6;
  }

  if (HIBYTE(a1) == 8)
  {
    v4 = v7;
  }

  else if (HIBYTE(a1))
  {
    v4 = v8 | 0x10;
  }

  else
  {
    v4 = v7;
  }

  if (HIBYTE(a1) == 8)
  {
    return v4;
  }

  if (!HIBYTE(a1))
  {
    return v4;
  }

  switch(HIBYTE(a1))
  {
    case 1u:
      return MFMessageFlagsSetFlagColor(v4, 0);
    case 2u:
      return MFMessageFlagsSetFlagColor(v4, 1);
    case 3u:
      return MFMessageFlagsSetFlagColor(v4, 2);
    case 4u:
      return MFMessageFlagsSetFlagColor(v4, 3);
    case 5u:
      return MFMessageFlagsSetFlagColor(v4, 4);
    case 6u:
      return MFMessageFlagsSetFlagColor(v4, 5);
  }

  return MFMessageFlagsSetFlagColor(v4, 6);
}

unint64_t sub_1B074DB60(uint64_t a1, uint64_t a2)
{
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;

  v15 = sub_1B074F260;
  v16 = v8;
  aBlock = MEMORY[0x1E69E9820];
  v11 = 1107296256;
  v12 = 0;
  v13 = sub_1B074C0AC;
  v14 = &block_descriptor_1281;
  v6 = _Block_copy(&aBlock);
  v7 = [v5 initWithBuilder_];
  _Block_release(v6);

  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  result = isEscapingClosureAtFileLocation;
  if ((isEscapingClosureAtFileLocation & 1) == 0)
  {
    return v7;
  }

  __break(1u);
  return result;
}

unint64_t sub_1B074DCB0(uint64_t a1, uint64_t a2)
{
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;

  v15 = sub_1B074F260;
  v16 = v8;
  aBlock = MEMORY[0x1E69E9820];
  v11 = 1107296256;
  v12 = 0;
  v13 = sub_1B074C0AC;
  v14 = &block_descriptor_1293;
  v6 = _Block_copy(&aBlock);
  v7 = [v5 initWithBuilder_];
  _Block_release(v6);

  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  result = isEscapingClosureAtFileLocation;
  if ((isEscapingClosureAtFileLocation & 1) == 0)
  {
    return v7;
  }

  __break(1u);
  return result;
}

unint64_t sub_1B074DE00(uint64_t a1, uint64_t a2)
{
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;

  v15 = sub_1B074F260;
  v16 = v8;
  aBlock = MEMORY[0x1E69E9820];
  v11 = 1107296256;
  v12 = 0;
  v13 = sub_1B074C0AC;
  v14 = &block_descriptor_1287;
  v6 = _Block_copy(&aBlock);
  v7 = [v5 initWithBuilder_];
  _Block_release(v6);

  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  result = isEscapingClosureAtFileLocation;
  if ((isEscapingClosureAtFileLocation & 1) == 0)
  {
    return v7;
  }

  __break(1u);
  return result;
}

id sub_1B074DF78(uint64_t a1, uint64_t a2)
{
  v4 = [v2 initWithFirst:a1 second:a2];
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v4;
}

uint64_t sub_1B074DFFC()
{
  LOBYTE(v2) = *(v0 + 16);
  HIDWORD(v2) = *(v0 + 20);
  return sub_1B074DFE0(v2);
}

uint64_t sub_1B074E050()
{
  LOBYTE(v2) = *(v0 + 16);
  HIDWORD(v2) = *(v0 + 20);
  return sub_1B074E034(v2);
}

uint64_t sub_1B074E0E4()
{
  LOBYTE(v2) = *(v0 + 16);
  HIDWORD(v2) = *(v0 + 20);
  return sub_1B074E088(v2, *(v0 + 24), *(v0 + 32));
}

uint64_t sub_1B074E11C(uint64_t a1)
{
  v5 = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  v6 = (*(*(v7 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v1 = MEMORY[0x1EEE9AC00](v5);
  v8 = &v5 - v6;
  v2(v1);
  v10 = MessageIdentifierSet.debugDescription.getter();
  v9 = v3;
  sub_1B03D09B8(v8);
  return v10;
}

uint64_t _s21UnfilteredFlagChangesVMa(uint64_t a1)
{
  v2 = qword_1EB6DBBB8;
  if (!qword_1EB6DBBB8)
  {
    return swift_getSingletonMetadata();
  }

  return v2;
}

uint64_t sub_1B074E258(uint64_t a1)
{

  v3 = *(_s21UnfilteredFlagChangesVMa(0) + 20);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3120, qword_1B0E9B270);
  (*(*(v1 - 8) + 8))(a1 + v3);

  return a1;
}

void *sub_1B074E30C(uint64_t *a1, void *a2)
{
  v3 = *a1;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  *a2 = v3;
  v4 = a1[1];
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  a2[1] = v4;
  v6 = a1[2];
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  a2[2] = v6;
  v8 = a1[3];
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  result = a2;
  a2[3] = v8;
  return result;
}

unint64_t sub_1B074E39C()
{
  v2 = qword_1EB6DA940;
  if (!qword_1EB6DA940)
  {
    sub_1B0E45C48();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DA940);
    return WitnessTable;
  }

  return v2;
}

__n128 sub_1B074E41C(uint64_t a1, uint64_t a2)
{
  v2 = sub_1B0E439A8();
  (*(*(v2 - 8) + 32))(a2, a1);
  v3 = _s6LoggerVMa_1(0);
  v4 = (a1 + *(v3 + 20));
  result = *v4;
  v6 = (a2 + *(v3 + 20));
  *v6 = *v4;
  v6[1].n128_u32[0] = v4[1].n128_u32[0];
  return result;
}

void *sub_1B074E4B4(uint64_t *a1, void *a2)
{
  v3 = *a1;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  *a2 = v3;
  v4 = a1[1];
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  a2[1] = v4;
  v5 = a1[2];
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  a2[2] = v5;
  v7 = a1[3];
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  a2[3] = v7;
  v9 = a1[4];
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  result = a2;
  a2[4] = v9;
  return result;
}

char *sub_1B074E568(char *a1, char *a2)
{
  v4 = *a1;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  *a2 = v4;
  v9 = _s21UnfilteredFlagChangesVMa(0);
  v5 = v9[5];
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3120, qword_1B0E9B270);
  (*(*(v2 - 8) + 16))(&a2[v5], &a1[v5]);
  v7 = v9[6];
  v8 = *&a1[v7];
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  *&a2[v7] = v8;
  v11 = v9[7];
  v12 = *&a1[v11];
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  result = a2;
  *&a2[v11] = v12;
  return result;
}

char *sub_1B074E678(char *a1, char *a2)
{
  *a2 = *a1;
  v5 = _s21UnfilteredFlagChangesVMa(0);
  v4 = v5[5];
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3120, qword_1B0E9B270);
  (*(*(v2 - 8) + 32))(&a2[v4], &a1[v4]);
  result = a2;
  *&a2[v5[6]] = *&a1[v5[6]];
  *&a2[v5[7]] = *&a1[v5[7]];
  return result;
}

uint64_t sub_1B074E744()
{
  v1 = *(_s21UnfilteredFlagChangesVMa(0) - 8);
  v2 = (v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80)));

  return sub_1B07374C8(v2);
}

void *sub_1B074E7A8(uint64_t *a1, void *a2)
{
  v4 = *a1;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  result = a2;
  *a2 = v4;
  return result;
}

unint64_t sub_1B074E7E0()
{
  v2 = qword_1EB6DB420;
  if (!qword_1EB6DB420)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB6E1BE8, &qword_1B0ECD5D0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DB420);
    return WitnessTable;
  }

  return v2;
}

void sub_1B074E868()
{
}

double sub_1B074E8C4()
{
  v1 = *(sub_1B0E43108() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_1B0740BF0(v2);
}

void *sub_1B074E95C(void *a1, uint64_t a2, uint64_t a3, double (*a4)(void))
{
  (a4)(a1, a2, a3);
  v5 = *a1;
  sub_1B0E45E48();
  result = a1;
  *a1 = v5 + 8;
  return result;
}

unint64_t sub_1B074EA1C()
{
  v2 = qword_1EB6DB588;
  if (!qword_1EB6DB588)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB6E1C48, &qword_1B0E9B038);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DB588);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B074EAA4()
{
  v2 = qword_1EB6DB580;
  if (!qword_1EB6DB580)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB6E1C48, &qword_1B0E9B038);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DB580);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1B074EB58(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  if (!(*(*(v1 - 8) + 48))(a1, 1))
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3120, qword_1B0E9B270);
    (*(*(v2 - 8) + 8))(a1);
  }

  return a1;
}

uint64_t sub_1B074EC14(uint64_t a1, uint64_t a2)
{
  *a2 = *a1;
  *(a2 + 4) = *(a1 + 4);
  *(a2 + 20) = *(a1 + 20);
  v4 = *(a1 + 24);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  result = a2;
  *(a2 + 24) = v4;
  return result;
}

uint64_t sub_1B074EC64(uint64_t a1, uint64_t a2)
{
  LOWORD(v4) = *(v2 + 24);
  BYTE2(v4) = *(v2 + 26);
  BYTE3(v4) = *(v2 + 27);
  BYTE4(v4) = *(v2 + 28);
  *(&v4 + 5) = *(v2 + 29);
  BYTE13(v4) = *(v2 + 37);
  return sub_1B074236C(a1, a2, *(v2 + 16), v4, *(&v4 + 1), *(v2 + 40));
}

unint64_t sub_1B074ECF8()
{
  v2 = qword_1EB6E1CA8;
  if (!qword_1EB6E1CA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E1CA0, &qword_1B0E9B0A8);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6E1CA8);
    return WitnessTable;
  }

  return v2;
}

void sub_1B074ED80()
{
}

void *sub_1B074EDD0(uint64_t *a1, void *a2)
{
  v3 = *a1;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  *a2 = v3;
  v4 = a1[1];
  v5 = a1[2];

  a2[1] = v4;
  a2[2] = v5;
  v6 = a1[3];
  v7 = a1[4];

  a2[3] = v6;
  a2[4] = v7;
  v9 = a1[5];
  v10 = a1[6];

  a2[5] = v9;
  a2[6] = v10;
  v12 = a1[7];
  v13 = a1[8];

  result = a2;
  a2[7] = v12;
  a2[8] = v13;
  return result;
}

void sub_1B074EEBC()
{
}

uint64_t sub_1B074EF18@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  v3 = v1 + ((*(*(v2 - 8) + 80) + 16) & ~*(*(v2 - 8) + 80));

  return sub_1B07404E0(v3, a1);
}

unint64_t sub_1B074EFAC()
{
  v2 = qword_1EB6DA6F0;
  if (!qword_1EB6DA6F0)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EB6DA6F0);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_1B074F018()
{
  v2 = qword_1EB6DA620;
  if (!qword_1EB6DA620)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EB6DA620);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_1B074F084()
{
  v2 = qword_1EB6DC988;
  if (!qword_1EB6DC988)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DC988);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1B074F0FC(uint64_t a1, uint64_t a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3120, qword_1B0E9B270);
  (*(*(v2 - 8) + 40))(a2, a1);
  return a2;
}

unint64_t sub_1B074F178()
{
  v2 = qword_1EB6DAF90;
  if (!qword_1EB6DAF90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB6E1CF8, &qword_1B0E9B0F8);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DAF90);
    return WitnessTable;
  }

  return v2;
}

uint64_t block_copy_helper_1254(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

uint64_t block_copy_helper_1263(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

void *__swift_memcpy13_4(void *result, void *a2)
{
  *result = *a2;
  *(result + 5) = *(a2 + 5);
  return result;
}

uint64_t sub_1B074F3D0(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 > 0xFE && *(a1 + 13))
    {
      v5 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 4);
      v4 = -1;
      if ((v3 & 0xFFFFFFFE) != 0)
      {
        v4 = v3 & 1 | ((v3 & 0xFE) - 2) & 0x7FFFFFFF;
      }

      v5 = v4;
    }
  }

  else
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_1B074F520(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = result;
  v4 = (result + 13);
  if (a2 > 0xFE)
  {
    result = 0;
    *(v3 + 12) = 0;
    *(v3 + 8) = 0;
    *v3 = a2 - 255;
    if (a3 >= 0xFF)
    {
      *v4 = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *v4 = 0;
    }

    if (a2)
    {
      *(result + 4) = a2 + 1;
    }
  }

  return result;
}

unint64_t sub_1B074F738(uint64_t a1)
{
  v5 = sub_1B074F848(319);
  if (v1 <= 0x3F)
  {
    v5 = sub_1B043B29C(319);
    if (v2 <= 0x3F)
    {
      v5 = sub_1B074F8DC(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return v5;
}

unint64_t sub_1B074F848(uint64_t a1)
{
  v5 = qword_1EB6DB428;
  if (!qword_1EB6DB428)
  {
    v4 = sub_1B0E45358();
    v5 = v4;
    if (!v1)
    {
      v2 = v4;
      atomic_store(v4, &qword_1EB6DB428);
      return v2;
    }
  }

  return v5;
}

unint64_t sub_1B074F8DC(uint64_t a1)
{
  v5 = qword_1EB6DB598;
  if (!qword_1EB6DB598)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E1C00, &qword_1B0E9AFF8);
    v4 = sub_1B0E45358();
    v5 = v4;
    if (!v1)
    {
      v2 = v4;
      atomic_store(v4, &qword_1EB6DB598);
      return v2;
    }
  }

  return v5;
}

uint64_t sub_1B074F9B0(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 40))
    {
      v4 = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v3 = -1;
      if (!HIDWORD(*a1))
      {
        v3 = *a1;
      }

      v4 = v3;
    }
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1B074FAC8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFF)
  {
    *result = a2 + 0x80000000;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    if (a3 > 0x7FFFFFFF)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFF)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *result = a2 - 1;
    }
  }

  return result;
}

unint64_t sub_1B074FCB0()
{
  v2 = qword_1EB6E1DD8;
  if (!qword_1EB6E1DD8)
  {
    type metadata accessor for ECMessageFlagColor(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6E1DD8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B074FD30()
{
  v2 = qword_1EB6DABA0;
  if (!qword_1EB6DABA0)
  {
    type metadata accessor for ECJunkMailLevel(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DABA0);
    return WitnessTable;
  }

  return v2;
}

uint64_t block_copy_helper_1279(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

uint64_t block_copy_helper_1285(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

uint64_t block_copy_helper_1291(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

unint64_t sub_1B074FF18()
{
  v2 = qword_1EB6DAF80;
  if (!qword_1EB6DAF80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB6E1C10, &qword_1B0E9B008);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DAF80);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B074FFA0()
{
  v2 = qword_1EB6DB330;
  if (!qword_1EB6DB330)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E1F18, &qword_1B0E9B220);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DB330);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1B0750048@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  if (a2)
  {
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    if (a3)
    {
      static IMAPAccount.makeMailboxURL(accountID:pathComponents:)(a1, a2, a3, a4);
    }
  }

  v5 = sub_1B0E42E68();
  return (*(*(v5 - 8) + 56))(a4, 1);
}

uint64_t static IMAPAccount.makeMailboxURL(accountID:pathComponents:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v33 = a4;
  v36 = a1;
  v35 = a2;
  v34 = a3;
  v52 = 0;
  v50 = 0;
  v51 = 0;
  v49 = 0;
  v48 = 0;
  v37 = sub_1B0E42A68();
  v38 = *(v37 - 8);
  v39 = v37 - 8;
  v40 = (*(v38 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v36);
  v41 = v21 - v40;
  v42 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v6);
  v43 = v21 - v42;
  v52 = v21 - v42;
  v50 = v7;
  v51 = v8;
  v49 = v9;
  v48 = v4;
  if (sub_1B0E44DA8() & 1) != 0 || (v47 = v34, v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2A70, &qword_1B0E9B5F0), sub_1B0750598(), (sub_1B0E45748()))
  {
    v20 = sub_1B0E42E68();
    return (*(*(v20 - 8) + 56))(v33, 1);
  }

  else
  {
    sub_1B0E42A58();
    v25 = 1;
    sub_1B0E44838();
    sub_1B0E42A48();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    MEMORY[0x1B2724B40](v36, v35);
    v21[2] = 1;
    v10 = sub_1B0E46A28();
    v27 = &v45;
    v45 = v10;
    v46 = v11;
    v21[1] = "/";
    v12 = sub_1B0E44838();
    v21[0] = v13;
    MEMORY[0x1B2728B30](v12);

    v44[2] = v34;
    v21[3] = sub_1B0E44838();
    v21[4] = v14;
    sub_1B03B11C4();
    v22 = sub_1B0E448E8();
    v23 = v15;

    v24 = v44;
    v44[0] = v22;
    v44[1] = v23;
    sub_1B0E46A08();
    sub_1B03B1198(v24);
    v16 = sub_1B0E44838();
    v26 = v17;
    MEMORY[0x1B2728B30](v16);

    v29 = v45;
    v28 = v46;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B03B1198(v27);
    v18 = sub_1B0E44C88();
    MEMORY[0x1B2724B50](v18);
    (*(v38 + 16))(v41, v43, v37);
    sub_1B0E42A18();
    v31 = *(v38 + 8);
    v30 = v38 + 8;
    v31(v41, v37);
    return (v31)(v43, v37);
  }
}

unint64_t sub_1B0750598()
{
  v2 = qword_1EB6DB058;
  if (!qword_1EB6DB058)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E2A70, &qword_1B0E9B5F0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DB058);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1B07508A4(void *a1, void *a2, uint64_t a3)
{
  v44 = a1;
  v41 = a2;
  v42 = a3;
  v60 = 0;
  v59 = 0;
  v58 = 0;
  v57 = 0;
  v56 = 0;
  v53 = 0;
  v54 = 0;
  v55 = 0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2600, &qword_1B0E9A080);
  v40 = (*(*(v4 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v4);
  v49 = &v15 - v40;
  v48 = sub_1B0E42E68();
  v46 = *(v48 - 8);
  v47 = v48 - 8;
  v43 = (*(v46 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v42);
  v45 = &v15 - v43;
  v60 = &v15 - v43;
  v59 = v44;
  v58 = v5;
  v57 = v6;
  v56 = v3;
  sub_1B071C180(v6, v7);
  if ((*(v46 + 48))(v49, 1, v48) == 1)
  {
    return sub_1B06E3800(v49);
  }

  (*(v46 + 32))(v45, v49, v48);
  v37 = static IMAPAccount.accountIDAndPathComponents(fromMailboxURL:)(v45);
  v38 = v9;
  v39 = v10;
  if (!v9)
  {
    return (*(v46 + 8))(v45, v48);
  }

  v34 = v37;
  v35 = v38;
  v36 = v39;
  v31 = v36;
  v32 = v35;
  v33 = v34;
  v53 = v34;
  v54 = v35;
  v55 = v36;
  if (v44)
  {
    v30 = v44;
    v26 = v44;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v11 = sub_1B0E44AC8();
    v27 = v51;
    v51[0] = v11;
    v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1FA0, &unk_1B0E9B240);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1F98, &qword_1B0E9B238);
    swift_dynamicCast();
    v29 = v50;
    swift_unknownObjectRetain();
    v12 = v29;
    if (v29)
    {
      v25 = v29;
      v23 = v29;
      swift_unknownObjectRelease();
      v24 = v23;
    }

    else
    {
      v24 = 0;
    }

    *v26 = v24;
  }

  if (v41)
  {
    v22 = v41;
    v18 = v41;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v13 = sub_1B0E451A8();
    v19 = &v52;
    v52 = v13;
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1F90, &qword_1B0E9B230);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1F98, &qword_1B0E9B238);
    swift_dynamicCast();
    v21 = v51[1];
    swift_unknownObjectRetain();
    v14 = v21;
    if (v21)
    {
      v17 = v21;
      v15 = v21;
      swift_unknownObjectRelease();
      v16 = v15;
    }

    else
    {
      v16 = 0;
    }

    *v18 = v16;
  }

  return (*(v46 + 8))(v45, v48);
}

uint64_t static IMAPAccount.accountIDAndPathComponents(fromMailboxURL:)(uint64_t a1)
{
  v45 = 0;
  v46 = 0;
  v44 = 0;
  v29 = 0;
  v50 = a1;
  v49 = v1;
  v20 = sub_1B0E42E28();
  v21 = v2;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v19 = sub_1B0E44838();
  v22 = v3;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v47[0] = v20;
  v47[1] = v21;
  *&v48 = v19;
  *(&v48 + 1) = v22;
  if (!v21)
  {
    if (!*(&v48 + 1))
    {
      sub_1B03B1198(v47);
      v18 = 1;
      goto LABEL_7;
    }

    goto LABEL_9;
  }

  sub_1B070B280(v47, &v25);
  if (!*(&v48 + 1))
  {
    sub_1B03B1198(&v25);
LABEL_9:
    sub_1B06FF6F0(v47);
    v18 = 0;
    goto LABEL_7;
  }

  v24 = v25;
  v23 = v48;
  v17 = MEMORY[0x1B2726DE0](v25, *(&v25 + 1), v48, *(&v48 + 1));
  sub_1B03B1198(&v23);
  sub_1B03B1198(&v24);
  sub_1B03B1198(v47);
  v18 = v17;
LABEL_7:

  if ((v18 & 1) == 0)
  {
    return 0;
  }

  v16 = sub_1B0E42E08();
  if (!v4)
  {
    return 0;
  }

  v45 = v16;
  v46 = v4;
  v5 = sub_1B0E44DA8();
  if (v5)
  {

    return 0;
  }

  v11 = sub_1B0E42D28();
  v44 = v11;
  v43 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2A70, &qword_1B0E9B5F0);
  sub_1B0750598();
  sub_1B0E45728();
  v13 = v41;
  v14 = v42;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v12 = sub_1B0E44838();
  v15 = v6;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v39[0] = v13;
  v39[1] = v14;
  *&v40 = v12;
  *(&v40 + 1) = v15;
  if (!v14)
  {
    if (!*(&v40 + 1))
    {
      sub_1B03B1198(v39);
      v10 = 1;
      goto LABEL_21;
    }

    goto LABEL_23;
  }

  sub_1B070B280(v39, &v28);
  if (!*(&v40 + 1))
  {
    sub_1B03B1198(&v28);
LABEL_23:
    sub_1B06FF6F0(v39);
    v10 = 0;
    goto LABEL_21;
  }

  v27 = v28;
  v26 = v40;
  v9 = MEMORY[0x1B2726DE0](v28, *(&v28 + 1), v40, *(&v40 + 1));
  sub_1B03B1198(&v26);
  sub_1B03B1198(&v27);
  sub_1B03B1198(v39);
  v10 = v9;
LABEL_21:

  if ((v10 & 1) != 0 && sub_1B0E452A8() > 1)
  {
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v34 = v11;
    sub_1B0750030();
    sub_1B0E45768();
    v30 = v35;
    v31 = v36;
    v32 = v37;
    v33 = v38;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1FA8, &qword_1B0E9E160);
    sub_1B07512FC();
    v29 = sub_1B0E45378();

    return v16;
  }

  else
  {

    return 0;
  }
}

unint64_t sub_1B07512FC()
{
  v2 = qword_1EB6DA560;
  if (!qword_1EB6DA560)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E1FA8, &qword_1B0E9E160);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DA560);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1B0751598()
{
  MEMORY[0x1E69E5928](v0);
  v5 = [v0 taskManager];
  MEMORY[0x1E69E5920](v0);
  if (!v5)
  {
    return 0;
  }

  type metadata accessor for TaskManager(0);
  v4 = swift_dynamicCastClass();
  if (v4)
  {
    return v4;
  }

  swift_unknownObjectRelease();
  return 0;
}

uint64_t sub_1B075168C(uint64_t a1, uint64_t a2, void (*a3)(uint64_t), uint64_t a4)
{
  v19 = a1;
  v18 = a2;
  v16 = a3;
  v17 = a4;
  v30 = 0;
  v29 = 0;
  v28 = 0;
  v26 = 0;
  v27 = 0;
  v25 = 0;
  v24 = 0;
  v23 = 0;
  v20 = (*(*(_s18MailboxPersistenceVMa(0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v11 - v20;
  v30 = &v11 - v20;
  v29 = v5;
  v28 = v6;
  v26 = v7;
  v27 = v8;
  v25 = v4;
  v22 = sub_1B0751598();
  if (v22)
  {
    v14 = v22;
    v13 = v22;
    v23 = v22;
    sub_1B0A44788(v19, v18, v16, v17);
    return MEMORY[0x1E69E5920](v13);
  }

  else
  {
    v10 = v21;
    MEMORY[0x1E69E5928](v15);
    sub_1B07BF968(v15, v10);
    v12 = sub_1B07C0364(v19);
    v24 = v12;

    v16(v12);

    return sub_1B03F4F08(v21);
  }
}

uint64_t sub_1B075188C()
{
  v2 = (v0 + OBJC_IVAR___MFSwiftIMAPMailboxTaskManager_library);
  swift_beginAccess();
  v3 = *v2;
  MEMORY[0x1E69E5928](*v2);
  swift_endAccess();
  return v3;
}

uint64_t sub_1B0751964(uint64_t a1)
{
  MEMORY[0x1E69E5928](a1);
  v4 = (v1 + OBJC_IVAR___MFSwiftIMAPMailboxTaskManager_library);
  swift_beginAccess();
  v2 = *v4;
  *v4 = a1;
  MEMORY[0x1E69E5920](v2);
  swift_endAccess();
  return MEMORY[0x1E69E5920](a1);
}

uint64_t sub_1B07519FC()
{
  v2 = *(v0 + OBJC_IVAR___MFSwiftIMAPMailboxTaskManager_mailbox);
  MEMORY[0x1E69E5928](v2);
  return v2;
}

uint64_t sub_1B0751A44()
{
  v2 = *(v0 + OBJC_IVAR___MFSwiftIMAPMailboxTaskManager_taskManager);
  MEMORY[0x1E69E5928](v2);
  return v2;
}

char *sub_1B0751AD0(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v10 = a1;
  v9 = a2;
  v11 = v2;
  *&v2[OBJC_IVAR___MFSwiftIMAPMailboxTaskManager_library] = 0;
  MEMORY[0x1E69E5928](a1);
  *&v11[OBJC_IVAR___MFSwiftIMAPMailboxTaskManager_mailbox] = a1;
  MEMORY[0x1E69E5928](a2);
  *&v11[OBJC_IVAR___MFSwiftIMAPMailboxTaskManager_taskManager] = a2;
  v8.receiver = v11;
  v8.super_class = ObjectType;
  v7 = objc_msgSendSuper2(&v8, sel_init);
  MEMORY[0x1E69E5928](v7);
  v11 = v7;
  MEMORY[0x1E69E5920](a2);
  MEMORY[0x1E69E5920](a1);
  MEMORY[0x1E69E5920](v11);
  return v7;
}

id sub_1B0751CE0()
{
  v3 = v0;
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1B0752138(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v11 = *(v3 + OBJC_IVAR___MFSwiftIMAPMailboxTaskManager_taskManager);
  MEMORY[0x1E69E5928](v11);
  v10 = *(v5 + OBJC_IVAR___MFSwiftIMAPMailboxTaskManager_mailbox);
  MEMORY[0x1E69E5928](v10);

  v9 = swift_allocObject();
  *(v9 + 16) = a2;
  *(v9 + 24) = a3;
  sub_1B0A44874(a1, v10, sub_1B07523E0, v9);

  MEMORY[0x1E69E5920](v10);
  return MEMORY[0x1E69E5920](v11);
}

uint64_t sub_1B075225C(void *a1, unint64_t a2, char a3, void (*a4)(void *, unint64_t, void *))
{
  if (a3)
  {
    MEMORY[0x1E69E5928](a1);

    MEMORY[0x1E69E5928](a1);
    a4(0, 0xF000000000000000, a1);

    return MEMORY[0x1E69E5920](a1);
  }

  else
  {
    sub_1B03B2000(a1, a2);

    sub_1B03B2000(a1, a2);
    a4(a1, a2, 0);
    sub_1B070E144(a1, a2);

    return sub_1B0391D50(a1, a2);
  }
}

uint64_t sub_1B07524C8(uint64_t a1, unint64_t a2, void *a3, uint64_t a4)
{
  sub_1B070E18C(a1, a2);
  if ((a2 & 0xF000000000000000) == 0xF000000000000000)
  {
    v9 = 0;
  }

  else
  {
    v8 = sub_1B0E42F18();
    sub_1B0391D50(a1, a2);
    v9 = v8;
  }

  v4 = a3;
  if (a3)
  {
    v6 = sub_1B0E42CC8();

    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  (*(a4 + 16))(a4, v9);
  MEMORY[0x1E69E5920](v7);
  return MEMORY[0x1E69E5920](v9);
}

uint64_t sub_1B0752604(uint64_t a1, _BYTE *a2)
{
  v9 = *(v2 + OBJC_IVAR___MFSwiftIMAPMailboxTaskManager_taskManager);
  MEMORY[0x1E69E5928](v9);
  MEMORY[0x1E69E5928](a1);
  v7 = *(v6 + OBJC_IVAR___MFSwiftIMAPMailboxTaskManager_mailbox);
  MEMORY[0x1E69E5928](v7);
  v10 = sub_1B0A45238(a1, v7);
  v11 = v3;
  MEMORY[0x1E69E5920](v7);
  MEMORY[0x1E69E5920](a1);
  MEMORY[0x1E69E5920](v9);
  if ((v11 & 0xF000000000000000) != 0xF000000000000000 && a2)
  {
    *a2 = 0;
  }

  return v10;
}

uint64_t sub_1B0752888(uint64_t a1)
{
  v13 = a1;
  v12 = v1;
  v9[0] = sub_1B0752604(a1, 0);
  v9[1] = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1FC8, &unk_1B0E9B250);
  v3 = sub_1B071952C();
  sub_1B03F1A20(sub_1B07529EC, 0, v6, MEMORY[0x1E69E73E0], v3, v7, &v10);
  sub_1B043C03C(v9);
  v8 = v10;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2750, &unk_1B0E9DE60);
  sub_1B03F1A20(sub_1B0752A60, 0, v4, MEMORY[0x1E69E73E0], MEMORY[0x1E6969080], v7, &v11);
  sub_1B06D4E94(&v8);
  return v11;
}

uint64_t sub_1B07529EC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *a1;
  v4 = a1[1];
  sub_1B03B2000(*a1, v4);
  *a2 = sub_1B0E42F18();
  return sub_1B0391D50(v5, v4);
}

id sub_1B0752A60@<X0>(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v12 = *a1;
  v14 = [*a1 mf_rangeOfRFC822HeaderData];
  result = [v12 mf:v14 subdataWithRange:v2];
  v13 = result;
  if (result)
  {
    v7 = sub_1B0E42F38();
    v8 = v4;
    result = MEMORY[0x1E69E5920](v13);
    v9 = v7;
    v10 = v8;
  }

  else
  {
    v9 = 0;
    v10 = 0xF000000000000000;
  }

  if ((v10 & 0xF000000000000000) == 0xF000000000000000)
  {
    result = sub_1B0E465A8();
    __break(1u);
  }

  else
  {
    v5 = v9;
    v6 = v10;
  }

  *a2 = v5;
  a2[1] = v6;
  return result;
}

uint64_t sub_1B0752D18(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v34 = [a1 partNumber];
  if (v34)
  {
    v28 = sub_1B0E44AD8();
    v29 = v5;
    MEMORY[0x1E69E5920](v34);
    v30 = v28;
    v31 = v29;
  }

  else
  {
    v30 = 0;
    v31 = 0;
  }

  if (v31)
  {
    v6 = [a1 mimeBody];
    if (v6)
    {
      v27 = v6;
    }

    else
    {
      LOBYTE(v12) = 2;
      v13 = 86;
      LODWORD(v14) = 0;
      sub_1B0E465A8();
      __break(1u);
    }

    v26 = [v27 message];
    MEMORY[0x1E69E5920](v27);
    if (v26)
    {
      v24 = swift_dynamicCastObjCProtocolConditional();
      v25 = 0;
      if (v24)
      {
        ObjectType = swift_getObjectType();
        v7 = sub_1B0753584();
        v25 = dynamic_cast_existential_0_superclass_conditional(v24, ObjectType, v7);
      }

      if (v25)
      {
        v22 = v25;
      }

      else
      {
        MEMORY[0x1E69E5920](v26);
        v22 = 0;
      }

      v21 = v22;
    }

    else
    {
      v21 = 0;
    }

    if (v21)
    {
      v8 = [a5 progressBlock];
      v20 = v8;
      if (v8)
      {
        v9 = swift_allocObject();
        *(v9 + 16) = v20;
        v18 = sub_1B075352C;
        v19 = v9;
      }

      else
      {
        v18 = 0;
        v19 = 0;
      }

      sub_1B070E90C(v18);
      if (v18)
      {
        v10 = swift_allocObject();
        *(v10 + 16) = v18;
        *(v10 + 24) = v19;
        v16 = sub_1B0753520;
        v17 = v10;
      }

      else
      {
        v16 = 0;
        v17 = 0;
      }

      if (v16)
      {
        v35 = v16;
        v36 = v17;
      }

      else
      {
        v35 = sub_1B075332C;
        v36 = 0;
      }

      v15 = swift_allocObject();
      *(v15 + 16) = v35;
      *(v15 + 24) = v36;
      sub_1B07533BC(v30, v31, v21, sub_1B07533B0, v15);

      sub_1B04197E4(v18, v19);
      MEMORY[0x1E69E5920](v21);
    }

    else
    {
    }
  }

  return 0;
}

uint64_t sub_1B075335C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t *, uint64_t *, uint64_t *))
{
  v7 = a1;
  v6 = a2;
  v5 = a3;
  return a4(&v7, &v6, &v5);
}

uint64_t sub_1B07533BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v15 = *(v5 + OBJC_IVAR___MFSwiftIMAPMailboxTaskManager_taskManager);
  MEMORY[0x1E69E5928](v15);
  v14 = *(v7 + OBJC_IVAR___MFSwiftIMAPMailboxTaskManager_mailbox);
  MEMORY[0x1E69E5928](v14);

  v12 = swift_allocObject();
  *(v12 + 16) = a4;
  *(v12 + 24) = a5;
  v16 = sub_1B0A469A0(a1, a2, a3, v14, sub_1B07537D4, v12);

  MEMORY[0x1E69E5920](v14);
  MEMORY[0x1E69E5920](v15);
  return v16 & 1;
}

uint64_t dynamic_cast_existential_0_superclass_conditional(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (swift_dynamicCastMetatype())
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

unint64_t sub_1B0753584()
{
  v2 = qword_1EB6DAC00;
  if (!qword_1EB6DAC00)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EB6DAC00);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t sub_1B07536C8(uint64_t a1, char a2, uint64_t a3, void (*a4)(uint64_t, void, uint64_t))
{
  if (a2)
  {
    a1 = -1;
  }

  a4(a3, 0, a1);
}

uint64_t sub_1B0753954(uint64_t a1, _BYTE *a2)
{
  v9 = *(v2 + OBJC_IVAR___MFSwiftIMAPMailboxTaskManager_taskManager);
  MEMORY[0x1E69E5928](v9);
  v8 = *(v6 + OBJC_IVAR___MFSwiftIMAPMailboxTaskManager_mailbox);
  MEMORY[0x1E69E5928](v8);
  v10 = sub_1B0A45238(a1, v8);
  v11 = v3;
  MEMORY[0x1E69E5920](v8);
  MEMORY[0x1E69E5920](v9);
  if ((v11 & 0xF000000000000000) != 0xF000000000000000 && a2)
  {
    *a2 = 1;
  }

  return v10;
}

id sub_1B0753BBC(void *a1)
{
  v7 = *(v1 + OBJC_IVAR___MFSwiftIMAPMailboxTaskManager_taskManager);
  MEMORY[0x1E69E5928](v7);
  v9 = [a1 criterionForSQL];
  if (v9)
  {
    v5 = v9;
  }

  else
  {
    sub_1B0E465A8();
    __break(1u);
  }

  v3 = *(v6 + OBJC_IVAR___MFSwiftIMAPMailboxTaskManager_mailbox);
  MEMORY[0x1E69E5928](v3);
  v4 = sub_1B0A47B88(v5, v3);
  MEMORY[0x1E69E5920](v3);
  MEMORY[0x1E69E5920](v5);
  MEMORY[0x1E69E5920](v7);
  return v4;
}

id sub_1B0753DD0(uint64_t a1)
{
  v15 = a1;
  v22 = 0;
  v21 = 0;
  v20 = 0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E3670, &unk_1B0E9B260);
  v12 = (*(*(v2 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v2);
  v18 = v6 - v12;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E26C0, &unk_1B0E9DE10);
  v16 = *(v19 - 8);
  v17 = v19 - 8;
  v13 = (*(v16 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v15);
  v14 = v6 - v13;
  v22 = v6 - v13;
  v21 = v3;
  v20 = v1;
  MEMORY[0x1E69E5928](v3);
  sub_1B09122DC(v15, v18);
  if ((*(v16 + 48))(v18, 1, v19) == 1)
  {
    sub_1B0754028(v18);
    v6[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E36D0, &unk_1B0EA1DA0);
    v6[1] = type metadata accessor for MFUIDSet();
    v4 = sub_1B09122B0();
    return sub_1B0A47D18(v4);
  }

  else
  {
    sub_1B074BA2C(v18, v14);
    v8 = *(v11 + OBJC_IVAR___MFSwiftIMAPMailboxTaskManager_taskManager);
    MEMORY[0x1E69E5928](v8);
    v7 = *(v11 + OBJC_IVAR___MFSwiftIMAPMailboxTaskManager_mailbox);
    MEMORY[0x1E69E5928](v7);
    v9 = sub_1B0A47D70(v14, v7);
    MEMORY[0x1E69E5920](v7);
    MEMORY[0x1E69E5920](v8);
    sub_1B03D09B8(v14);
    return v9;
  }
}

uint64_t sub_1B0754028(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E26C0, &unk_1B0E9DE10);
  if (!(*(*(v1 - 8) + 48))(a1, 1))
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3120, qword_1B0E9B270);
    (*(*(v2 - 8) + 8))(a1);
  }

  return a1;
}

uint64_t sub_1B075440C()
{
  v2 = *(v0 + OBJC_IVAR___MFSwiftIMAPMailboxTaskManager_taskManager);
  MEMORY[0x1E69E5928](v2);
  sub_1B0A47ED8();
  MEMORY[0x1E69E5920](v2);
  return 0;
}

uint64_t sub_1B0754664()
{
  v2 = *(v0 + 16);

  return v2;
}

uint64_t sub_1B0754690()
{
  v2 = *(v0 + 24);
  MEMORY[0x1E69E5928](v2);
  return v2;
}

uint64_t sub_1B07546C4()
{
  swift_beginAccess();
  v2 = *(v0 + 32);
  swift_endAccess();
  return v2 & 1;
}

uint64_t sub_1B0754714(char a1)
{
  swift_beginAccess();
  *(v1 + 32) = a1;
  return swift_endAccess();
}

uint64_t sub_1B0754760()
{
  v2 = *(v0 + 16);

  v3 = *(v2 + 16);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();

  return v3;
}

uint64_t sub_1B07547DC()
{
  v2 = *(v0 + 16);

  v3 = *(v2 + 48);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();

  return v3;
}

uint64_t sub_1B0754838()
{
  swift_beginAccess();
  v2 = *(v0 + 40);
  swift_endAccess();
  return v2;
}

uint64_t sub_1B0754884(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 40) = a1;
  return swift_endAccess();
}

uint64_t sub_1B07548D0()
{
  swift_beginAccess();
  v2 = *(v0 + 48);
  swift_endAccess();
  return v2;
}

uint64_t sub_1B075491C(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 48) = a1;
  return swift_endAccess();
}

void *sub_1B07549BC(uint64_t *a1, uint64_t a2)
{
  *(v2 + 32) = 0;
  _s26AttachmentDecoderAndWriterC7DecoderCMa(0);
  v4 = *a1;
  v5 = a1[1];
  v6 = a1[2];
  v7 = a1[3];
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v8 = a1[6];
  v9 = a1[7];
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v12[2] = sub_1B0754B48(v4, v5, v6, v7, v8, v9);
  MEMORY[0x1E69E5928](a2);
  v12[3] = a2;
  v12[5] = a1[8];
  v12[6] = 0;
  MEMORY[0x1E69E5920](a2);
  sub_1B0754BBC();
  return v12;
}

uint64_t _s26AttachmentDecoderAndWriterC7DecoderCMa(uint64_t a1)
{
  v2 = qword_1EB6DC108;
  if (!qword_1EB6DC108)
  {
    return swift_getSingletonMetadata();
  }

  return v2;
}

void sub_1B0754BBC()
{
}

uint64_t sub_1B0754C0C(uint64_t a1, uint64_t a2)
{
  v263 = a1;
  v262 = a2;
  v261 = 0;
  v205 = sub_1B074E050;
  v206 = sub_1B0394C30;
  v207 = sub_1B0394C24;
  v208 = sub_1B074DFFC;
  v209 = sub_1B039BA88;
  v210 = sub_1B039BB94;
  v211 = sub_1B0394C24;
  v212 = sub_1B039BBA0;
  v213 = sub_1B039BC08;
  v214 = sub_1B06BA324;
  v215 = sub_1B074E0E4;
  v216 = sub_1B039BCF8;
  v217 = sub_1B075CCFC;
  v218 = sub_1B03B0DF8;
  v219 = sub_1B075CD60;
  v220 = sub_1B06D5270;
  v221 = sub_1B0398F5C;
  v222 = sub_1B0398F5C;
  v223 = sub_1B0399178;
  v224 = sub_1B0398F5C;
  v225 = sub_1B0398F5C;
  v226 = sub_1B039BA94;
  v227 = sub_1B0398F5C;
  v228 = sub_1B0398F5C;
  v229 = sub_1B0399178;
  v230 = sub_1B0398F5C;
  v231 = sub_1B0398F5C;
  v232 = sub_1B03991EC;
  v233 = sub_1B0398F5C;
  v234 = sub_1B0398F5C;
  v235 = sub_1B03993BC;
  v236 = sub_1B0398F5C;
  v237 = sub_1B0398F5C;
  v238 = sub_1B039BCEC;
  v239 = sub_1B0398F5C;
  v240 = sub_1B0398F5C;
  v241 = sub_1B0399260;
  v242 = sub_1B0398F5C;
  v243 = sub_1B0398F5C;
  v244 = sub_1B06D527C;
  v282 = 0;
  v281 = 0;
  v280 = 0;
  v279 = 0;
  v245 = 0;
  v258 = 0;
  v246 = _s6LoggerVMa_1(0);
  v247 = (*(*(v246 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v248 = &v112 - v247;
  v249 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v4);
  v250 = &v112 - v249;
  v251 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v6);
  v252 = &v112 - v251;
  v253 = sub_1B0E439A8();
  v254 = *(v253 - 8);
  v255 = v253 - 8;
  v256 = (*(v254 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v258);
  v257 = &v112 - v256;
  v259 = (*(*(_s26AttachmentDecoderAndWriterC7DecoderC7EncodedOMa(v7) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v258);
  v260 = &v112 - v259;
  v264 = *(_s26AttachmentDecoderAndWriterC7DecoderC7DecodedVMa(v8) - 8);
  v265 = v264;
  v266 = *(v264 + 64);
  v267 = (v266 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v263);
  v268 = &v112 - v267;
  v269 = (v9 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v10);
  v270 = &v112 - v269;
  v282 = &v112 - v269;
  v281 = v11;
  v280 = v12;
  v279 = v2;
  v271 = v278;
  swift_beginAccess();
  v272 = *(v2 + 32);
  result = swift_endAccess();
  if ((v272 & 1) == 0)
  {
    v148 = *(v204 + 16);

    v147 = sub_1B0E443C8();
    v145 = *(v147 - 8);
    v146 = v147 - 8;
    (*(v145 + 16))(v260, v263);
    (*(v145 + 56))(v260, 0, 1, v147);
    sub_1B0757020(v260, v270);
    v14 = v257;
    sub_1B075B1E0(v260);

    (*(v254 + 16))(v14, v262, v253);
    sub_1B074B69C(v262, v252);
    sub_1B074B69C(v252, v250);
    sub_1B074E41C(v252, v248);
    v15 = (v250 + *(v246 + 20));
    v151 = *v15;
    v152 = *(v15 + 1);
    v153 = *(v15 + 1);
    v154 = *(v15 + 4);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B074B764(v250);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v150 = 36;
    v172 = 7;
    v16 = swift_allocObject();
    v17 = v152;
    v18 = v153;
    v19 = v154;
    v157 = v16;
    *(v16 + 16) = v151;
    *(v16 + 20) = v17;
    *(v16 + 24) = v18;
    *(v16 + 32) = v19;
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v20 = swift_allocObject();
    v21 = v152;
    v22 = v153;
    v23 = v154;
    v149 = v20;
    *(v20 + 16) = v151;
    *(v20 + 20) = v21;
    *(v20 + 24) = v22;
    *(v20 + 32) = v23;

    v171 = 32;
    v24 = swift_allocObject();
    v25 = v149;
    v162 = v24;
    *(v24 + 16) = v205;
    *(v24 + 24) = v25;
    sub_1B0394868();
    sub_1B0394868();

    v26 = swift_allocObject();
    v27 = v152;
    v28 = v153;
    v29 = v154;
    v30 = v26;
    v31 = v248;
    v165 = v30;
    *(v30 + 16) = v151;
    *(v30 + 20) = v27;
    *(v30 + 24) = v28;
    *(v30 + 32) = v29;
    sub_1B074B764(v31);
    sub_1B075CC34(v270, v268);
    v155 = (*(v265 + 80) + 16) & ~*(v265 + 80);
    v167 = swift_allocObject();
    sub_1B075CC98(v268, v167 + v155);
    sub_1B07575C4();

    sub_1B0394868();
    v202 = sub_1B0E43988();
    v203 = sub_1B0E45908();
    v169 = 17;
    v175 = swift_allocObject();
    v159 = 16;
    *(v175 + 16) = 16;
    v176 = swift_allocObject();
    v161 = 4;
    *(v176 + 16) = 4;
    v32 = swift_allocObject();
    v156 = v32;
    *(v32 + 16) = v206;
    *(v32 + 24) = 0;
    v33 = swift_allocObject();
    v34 = v156;
    v177 = v33;
    *(v33 + 16) = v207;
    *(v33 + 24) = v34;
    v178 = swift_allocObject();
    *(v178 + 16) = 0;
    v179 = swift_allocObject();
    *(v179 + 16) = 1;
    v35 = swift_allocObject();
    v36 = v157;
    v158 = v35;
    *(v35 + 16) = v208;
    *(v35 + 24) = v36;
    v37 = swift_allocObject();
    v38 = v158;
    v180 = v37;
    *(v37 + 16) = v209;
    *(v37 + 24) = v38;
    v181 = swift_allocObject();
    *(v181 + 16) = v159;
    v182 = swift_allocObject();
    *(v182 + 16) = v161;
    v39 = swift_allocObject();
    v160 = v39;
    *(v39 + 16) = v210;
    *(v39 + 24) = 0;
    v40 = swift_allocObject();
    v41 = v160;
    v183 = v40;
    *(v40 + 16) = v211;
    *(v40 + 24) = v41;
    v184 = swift_allocObject();
    *(v184 + 16) = 0;
    v185 = swift_allocObject();
    *(v185 + 16) = v161;
    v42 = swift_allocObject();
    v43 = v162;
    v163 = v42;
    *(v42 + 16) = v212;
    *(v42 + 24) = v43;
    v44 = swift_allocObject();
    v45 = v163;
    v186 = v44;
    *(v44 + 16) = v213;
    *(v44 + 24) = v45;
    v187 = swift_allocObject();
    *(v187 + 16) = 112;
    v188 = swift_allocObject();
    v170 = 8;
    *(v188 + 16) = 8;
    v174 = 24;
    v164 = swift_allocObject();
    *(v164 + 16) = 0x786F626C69616DLL;
    v46 = swift_allocObject();
    v47 = v164;
    v189 = v46;
    *(v46 + 16) = v214;
    *(v46 + 24) = v47;
    v190 = swift_allocObject();
    *(v190 + 16) = 37;
    v191 = swift_allocObject();
    *(v191 + 16) = v170;
    v48 = swift_allocObject();
    v49 = v165;
    v166 = v48;
    *(v48 + 16) = v215;
    *(v48 + 24) = v49;
    v50 = swift_allocObject();
    v51 = v166;
    v192 = v50;
    *(v50 + 16) = v216;
    *(v50 + 24) = v51;
    v193 = swift_allocObject();
    *(v193 + 16) = 0;
    v194 = swift_allocObject();
    *(v194 + 16) = v170;
    v52 = swift_allocObject();
    v53 = v167;
    v168 = v52;
    *(v52 + 16) = v217;
    *(v52 + 24) = v53;
    v54 = swift_allocObject();
    v55 = v168;
    v195 = v54;
    *(v54 + 16) = v218;
    *(v54 + 24) = v55;
    v196 = swift_allocObject();
    *(v196 + 16) = 0;
    v197 = swift_allocObject();
    *(v197 + 16) = v170;
    v56 = swift_allocObject();
    v57 = v204;
    v173 = v56;
    *(v56 + 16) = v219;
    *(v56 + 24) = v57;
    v58 = swift_allocObject();
    v59 = v173;
    v199 = v58;
    *(v58 + 16) = v220;
    *(v58 + 24) = v59;
    v201 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
    v198 = sub_1B0E46A48();
    v200 = v60;

    v61 = v175;
    v62 = v200;
    *v200 = v221;
    v62[1] = v61;

    v63 = v176;
    v64 = v200;
    v200[2] = v222;
    v64[3] = v63;

    v65 = v177;
    v66 = v200;
    v200[4] = v223;
    v66[5] = v65;

    v67 = v178;
    v68 = v200;
    v200[6] = v224;
    v68[7] = v67;

    v69 = v179;
    v70 = v200;
    v200[8] = v225;
    v70[9] = v69;

    v71 = v180;
    v72 = v200;
    v200[10] = v226;
    v72[11] = v71;

    v73 = v181;
    v74 = v200;
    v200[12] = v227;
    v74[13] = v73;

    v75 = v182;
    v76 = v200;
    v200[14] = v228;
    v76[15] = v75;

    v77 = v183;
    v78 = v200;
    v200[16] = v229;
    v78[17] = v77;

    v79 = v184;
    v80 = v200;
    v200[18] = v230;
    v80[19] = v79;

    v81 = v185;
    v82 = v200;
    v200[20] = v231;
    v82[21] = v81;

    v83 = v186;
    v84 = v200;
    v200[22] = v232;
    v84[23] = v83;

    v85 = v187;
    v86 = v200;
    v200[24] = v233;
    v86[25] = v85;

    v87 = v188;
    v88 = v200;
    v200[26] = v234;
    v88[27] = v87;

    v89 = v189;
    v90 = v200;
    v200[28] = v235;
    v90[29] = v89;

    v91 = v190;
    v92 = v200;
    v200[30] = v236;
    v92[31] = v91;

    v93 = v191;
    v94 = v200;
    v200[32] = v237;
    v94[33] = v93;

    v95 = v192;
    v96 = v200;
    v200[34] = v238;
    v96[35] = v95;

    v97 = v193;
    v98 = v200;
    v200[36] = v239;
    v98[37] = v97;

    v99 = v194;
    v100 = v200;
    v200[38] = v240;
    v100[39] = v99;

    v101 = v195;
    v102 = v200;
    v200[40] = v241;
    v102[41] = v101;

    v103 = v196;
    v104 = v200;
    v200[42] = v242;
    v104[43] = v103;

    v105 = v197;
    v106 = v200;
    v200[44] = v243;
    v106[45] = v105;

    v107 = v199;
    v108 = v200;
    v200[46] = v244;
    v108[47] = v107;
    sub_1B0394964();

    if (os_log_type_enabled(v202, v203))
    {
      v109 = v245;
      v138 = sub_1B0E45D78();
      v137 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
      v139 = sub_1B03949A8(0, v137, v137);
      v140 = sub_1B03949A8(1, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
      v141 = &v277;
      v277 = v138;
      v142 = &v276;
      v276 = v139;
      v143 = &v275;
      v275 = v140;
      sub_1B0394A48(3, &v277);
      sub_1B0394A48(8, v141);
      v273 = v221;
      v274 = v175;
      sub_1B03949FC(&v273, v141, v142, v143);
      v144 = v109;
      if (v109)
      {

        __break(1u);
      }

      else
      {
        v273 = v222;
        v274 = v176;
        sub_1B03949FC(&v273, &v277, &v276, &v275);
        v136 = 0;
        v273 = v223;
        v274 = v177;
        sub_1B03949FC(&v273, &v277, &v276, &v275);
        v135 = 0;
        v273 = v224;
        v274 = v178;
        sub_1B03949FC(&v273, &v277, &v276, &v275);
        v134 = 0;
        v273 = v225;
        v274 = v179;
        sub_1B03949FC(&v273, &v277, &v276, &v275);
        v133 = 0;
        v273 = v226;
        v274 = v180;
        sub_1B03949FC(&v273, &v277, &v276, &v275);
        v132 = 0;
        v273 = v227;
        v274 = v181;
        sub_1B03949FC(&v273, &v277, &v276, &v275);
        v131 = 0;
        v273 = v228;
        v274 = v182;
        sub_1B03949FC(&v273, &v277, &v276, &v275);
        v130 = 0;
        v273 = v229;
        v274 = v183;
        sub_1B03949FC(&v273, &v277, &v276, &v275);
        v129 = 0;
        v273 = v230;
        v274 = v184;
        sub_1B03949FC(&v273, &v277, &v276, &v275);
        v128 = 0;
        v273 = v231;
        v274 = v185;
        sub_1B03949FC(&v273, &v277, &v276, &v275);
        v127 = 0;
        v273 = v232;
        v274 = v186;
        sub_1B03949FC(&v273, &v277, &v276, &v275);
        v126 = 0;
        v273 = v233;
        v274 = v187;
        sub_1B03949FC(&v273, &v277, &v276, &v275);
        v125 = 0;
        v273 = v234;
        v274 = v188;
        sub_1B03949FC(&v273, &v277, &v276, &v275);
        v124 = 0;
        v273 = v235;
        v274 = v189;
        sub_1B03949FC(&v273, &v277, &v276, &v275);
        v123 = 0;
        v273 = v236;
        v274 = v190;
        sub_1B03949FC(&v273, &v277, &v276, &v275);
        v122 = 0;
        v273 = v237;
        v274 = v191;
        sub_1B03949FC(&v273, &v277, &v276, &v275);
        v121 = 0;
        v273 = v238;
        v274 = v192;
        sub_1B03949FC(&v273, &v277, &v276, &v275);
        v120 = 0;
        v273 = v239;
        v274 = v193;
        sub_1B03949FC(&v273, &v277, &v276, &v275);
        v119 = 0;
        v273 = v240;
        v274 = v194;
        sub_1B03949FC(&v273, &v277, &v276, &v275);
        v118 = 0;
        v273 = v241;
        v274 = v195;
        sub_1B03949FC(&v273, &v277, &v276, &v275);
        v117 = 0;
        v273 = v242;
        v274 = v196;
        sub_1B03949FC(&v273, &v277, &v276, &v275);
        v116 = 0;
        v273 = v243;
        v274 = v197;
        sub_1B03949FC(&v273, &v277, &v276, &v275);
        v115 = 0;
        v273 = v244;
        v274 = v199;
        sub_1B03949FC(&v273, &v277, &v276, &v275);
        _os_log_impl(&dword_1B0389000, v202, v203, "[%.*hhx-%.*X] [%{sensitive,mask.mailbox}s] Writing %{iec-bytes}ld bytes to file writer <0x%lx>", v138, 0x3Fu);
        sub_1B03998A8(v139, 0, v137);
        sub_1B03998A8(v140, 1, MEMORY[0x1E69E7CA0] + 8);
        sub_1B0E45D58();
      }
    }

    else
    {
    }

    MEMORY[0x1E69E5920](v202);
    (*(v254 + 8))(v257, v253);
    sub_1B0757690(v270);
    v113 = _s13IMAP2Protocol11MessageDataV04BodyD0V5countSivg_0();
    swift_beginAccess();
    result = v113;
    v110 = *(v204 + 48);
    v114 = v110 + v113;
    if (__OFADD__(v110, v113))
    {
      __break(1u);
    }

    else
    {
      *(v204 + 48) = v114;
      swift_endAccess();
      return sub_1B075CD68(v270);
    }
  }

  return result;
}

uint64_t sub_1B0757020@<X0>(const void *a1@<X0>, uint64_t a2@<X8>)
{
  v15 = a2;
  v24 = a1;
  v35 = 0;
  v34 = 0;
  v32 = 0;
  v31 = 0;
  v36 = 0;
  v16 = 0;
  v17 = sub_1B0E443C8();
  v18 = *(v17 - 8);
  v19 = v17 - 8;
  v20 = (*(v18 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v21 = v11 - v20;
  v22 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v4);
  v23 = v11 - v22;
  v36 = v11 - v22;
  v25 = (*(*(_s26AttachmentDecoderAndWriterC7DecoderC7EncodedOMa(v5) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v24);
  v26 = v11 - v25;
  v27 = (v6 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v7);
  v28 = v11 - v27;
  v35 = v8;
  v34 = v2;
  v29 = &v33;
  swift_beginAccess();
  v30 = *(v2 + 64);
  MEMORY[0x1E69E5928](v30);
  swift_endAccess();
  if (v30)
  {
    v14 = v30;
    v13 = v30;
    v31 = v30;
    sub_1B075CDC4(v24, v28);
    if ((*(v18 + 48))(v28, 1, v17) == 1)
    {
      [v13 done];
      sub_1B075BCE0();
      sub_1B075BAE0(v15);
    }

    else
    {
      v9 = v21;
      (*(v18 + 32))(v23, v28, v17);
      v36 = v23;
      MEMORY[0x1E69E5928](v13);
      (*(v18 + 16))(v9, v23, v17);
      v11[0] = sub_1B0E44338();
      MFDataConsumerAppendDispatchData();
      MEMORY[0x1E69E5920](v11[0]);
      v12 = *(v18 + 8);
      v11[1] = v18 + 8;
      v12(v21, v17);
      swift_unknownObjectRelease();
      sub_1B075BAE0(v15);
      v12(v23, v17);
    }

    return MEMORY[0x1E69E5920](v13);
  }

  else
  {
    sub_1B075CDC4(v24, v26);
    if ((*(v18 + 48))(v26, 1, v17) == 1)
    {
      sub_1B0E44378();
      return sub_1B075AEE8(v23, v15);
    }

    else
    {
      v32 = v23;
      (*(v18 + 32))(v23, v26, v17);
      v32 = v23;
      (*(v18 + 16))(v21);
      sub_1B075AEE8(v21, v15);
      return (*(v18 + 8))(v23, v17);
    }
  }
}

uint64_t sub_1B07574CC(uint64_t a1)
{
  v3[1] = a1;
  v7 = sub_1B0E443C8();
  v5 = *(v7 - 8);
  v6 = v7 - 8;
  v4 = (*(v5 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v1 = MEMORY[0x1EEE9AC00](v7);
  v8 = v3 - v4;
  (*(v5 + 16))(v3 - v4, v1);
  v9 = _s13IMAP2Protocol11MessageDataV04BodyD0V5countSivg_0();
  (*(v5 + 8))(v8, v7);
  return v9;
}

uint64_t sub_1B0757614()
{
  v3 = *(v0 + 24);
  MEMORY[0x1E69E5928](v3);
  MEMORY[0x1E69E5920](v3);
  if (v3)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B0757690(uint64_t a1)
{
  v7 = a1;
  v20 = 0;
  v19 = 0;
  v14 = sub_1B0E443C8();
  v12 = *(v14 - 8);
  v13 = v14 - 8;
  v8 = (v12[8] + 15) & 0xFFFFFFFFFFFFFFF0;
  v1 = MEMORY[0x1EEE9AC00](v14);
  v15 = &v5 - v8;
  v20 = v2;
  v19 = v9;
  v10 = v12[2];
  v11 = v12 + 2;
  v10(&v5 - v8, v1);
  sub_1B075CEE0();
  v18 = sub_1B0E45748();
  v16 = v12[1];
  v17 = v12 + 1;
  v16(v15, v14);
  result = v18;
  if ((v18 & 1) == 0)
  {
    v4 = v15;
    v6 = *(v9 + 24);
    MEMORY[0x1E69E5928](v6);
    (v10)(v4, v7, v14);
    v5 = sub_1B0E44338();
    [v6 writeData_];
    MEMORY[0x1E69E5920](v5);
    v16(v15, v14);
    return MEMORY[0x1E69E5920](v6);
  }

  return result;
}

uint64_t sub_1B0757864(uint64_t a1)
{
  v257 = a1;
  v256 = 0;
  v200 = sub_1B074E050;
  v201 = sub_1B0394C30;
  v202 = sub_1B0394C24;
  v203 = sub_1B074DFFC;
  v204 = sub_1B039BA88;
  v205 = sub_1B039BB94;
  v206 = sub_1B0394C24;
  v207 = sub_1B039BBA0;
  v208 = sub_1B039BC08;
  v209 = sub_1B06BA324;
  v210 = sub_1B074E0E4;
  v211 = sub_1B039BCF8;
  v212 = sub_1B075CCFC;
  v213 = sub_1B03B0DF8;
  v214 = sub_1B075CD60;
  v215 = sub_1B06D5270;
  v216 = sub_1B0398F5C;
  v217 = sub_1B0398F5C;
  v218 = sub_1B0399178;
  v219 = sub_1B0398F5C;
  v220 = sub_1B0398F5C;
  v221 = sub_1B039BA94;
  v222 = sub_1B0398F5C;
  v223 = sub_1B0398F5C;
  v224 = sub_1B0399178;
  v225 = sub_1B0398F5C;
  v226 = sub_1B0398F5C;
  v227 = sub_1B03991EC;
  v228 = sub_1B0398F5C;
  v229 = sub_1B0398F5C;
  v230 = sub_1B03993BC;
  v231 = sub_1B0398F5C;
  v232 = sub_1B0398F5C;
  v233 = sub_1B039BCEC;
  v234 = sub_1B0398F5C;
  v235 = sub_1B0398F5C;
  v236 = sub_1B0399260;
  v237 = sub_1B0398F5C;
  v238 = sub_1B0398F5C;
  v239 = sub_1B06D527C;
  v276 = 0;
  v275 = 0;
  v274 = 0;
  v240 = 0;
  v253 = 0;
  v241 = _s6LoggerVMa_1(0);
  v242 = (*(*(v241 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v243 = &v109 - v242;
  v244 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v3);
  v245 = &v109 - v244;
  v246 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v5);
  v247 = &v109 - v246;
  v248 = sub_1B0E439A8();
  v249 = *(v248 - 8);
  v250 = v248 - 8;
  v251 = (*(v249 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v253);
  v252 = &v109 - v251;
  v254 = (*(*(_s26AttachmentDecoderAndWriterC7DecoderC7EncodedOMa(v6) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v253);
  v255 = &v109 - v254;
  v258 = *(_s26AttachmentDecoderAndWriterC7DecoderC7DecodedVMa(v7) - 8);
  v259 = v258;
  v260 = *(v258 + 64);
  v261 = (v260 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v257);
  v262 = &v109 - v261;
  v263 = (v8 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v9);
  v264 = &v109 - v263;
  v276 = &v109 - v263;
  v275 = v10;
  v274 = v1;
  v265 = v273;
  swift_beginAccess();
  v266 = *(v1 + 32);
  result = swift_endAccess();
  if ((v266 & 1) == 0)
  {
    v141 = v272;
    swift_beginAccess();
    v151 = 1;
    *(v199 + 32) = 1;
    swift_endAccess();
    v142 = *(v199 + 16);

    v12 = sub_1B0E443C8();
    (*(*(v12 - 8) + 56))(v255, 1);
    sub_1B0757020(v255, v264);
    v13 = v252;
    sub_1B075B1E0(v255);

    (*(v249 + 16))(v13, v257, v248);
    sub_1B074B69C(v257, v247);
    sub_1B074B69C(v247, v245);
    sub_1B074E41C(v247, v243);
    v14 = (v245 + *(v241 + 20));
    v145 = *v14;
    v146 = *(v14 + 1);
    v147 = *(v14 + 1);
    v148 = *(v14 + 4);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B074B764(v245);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v144 = 36;
    v167 = 7;
    v15 = swift_allocObject();
    v16 = v146;
    v17 = v147;
    v18 = v148;
    v152 = v15;
    *(v15 + 16) = v145;
    *(v15 + 20) = v16;
    *(v15 + 24) = v17;
    *(v15 + 32) = v18;
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v19 = swift_allocObject();
    v20 = v146;
    v21 = v147;
    v22 = v148;
    v143 = v19;
    *(v19 + 16) = v145;
    *(v19 + 20) = v20;
    *(v19 + 24) = v21;
    *(v19 + 32) = v22;

    v166 = 32;
    v23 = swift_allocObject();
    v24 = v143;
    v157 = v23;
    *(v23 + 16) = v200;
    *(v23 + 24) = v24;
    sub_1B0394868();
    sub_1B0394868();

    v25 = swift_allocObject();
    v26 = v146;
    v27 = v147;
    v28 = v148;
    v29 = v25;
    v30 = v243;
    v160 = v29;
    *(v29 + 16) = v145;
    *(v29 + 20) = v26;
    *(v29 + 24) = v27;
    *(v29 + 32) = v28;
    sub_1B074B764(v30);
    sub_1B075CC34(v264, v262);
    v149 = (*(v259 + 80) + 16) & ~*(v259 + 80);
    v162 = swift_allocObject();
    sub_1B075CC98(v262, v162 + v149);
    sub_1B07575C4();

    sub_1B0394868();
    v197 = sub_1B0E43988();
    v198 = sub_1B0E45908();
    v164 = 17;
    v170 = swift_allocObject();
    v154 = 16;
    *(v170 + 16) = 16;
    v171 = swift_allocObject();
    v156 = 4;
    *(v171 + 16) = 4;
    v31 = swift_allocObject();
    v150 = v31;
    *(v31 + 16) = v201;
    *(v31 + 24) = 0;
    v32 = swift_allocObject();
    v33 = v150;
    v172 = v32;
    *(v32 + 16) = v202;
    *(v32 + 24) = v33;
    v173 = swift_allocObject();
    *(v173 + 16) = 0;
    v174 = swift_allocObject();
    *(v174 + 16) = v151;
    v34 = swift_allocObject();
    v35 = v152;
    v153 = v34;
    *(v34 + 16) = v203;
    *(v34 + 24) = v35;
    v36 = swift_allocObject();
    v37 = v153;
    v175 = v36;
    *(v36 + 16) = v204;
    *(v36 + 24) = v37;
    v176 = swift_allocObject();
    *(v176 + 16) = v154;
    v177 = swift_allocObject();
    *(v177 + 16) = v156;
    v38 = swift_allocObject();
    v155 = v38;
    *(v38 + 16) = v205;
    *(v38 + 24) = 0;
    v39 = swift_allocObject();
    v40 = v155;
    v178 = v39;
    *(v39 + 16) = v206;
    *(v39 + 24) = v40;
    v179 = swift_allocObject();
    *(v179 + 16) = 0;
    v180 = swift_allocObject();
    *(v180 + 16) = v156;
    v41 = swift_allocObject();
    v42 = v157;
    v158 = v41;
    *(v41 + 16) = v207;
    *(v41 + 24) = v42;
    v43 = swift_allocObject();
    v44 = v158;
    v181 = v43;
    *(v43 + 16) = v208;
    *(v43 + 24) = v44;
    v182 = swift_allocObject();
    *(v182 + 16) = 112;
    v183 = swift_allocObject();
    v165 = 8;
    *(v183 + 16) = 8;
    v169 = 24;
    v159 = swift_allocObject();
    *(v159 + 16) = 0x786F626C69616DLL;
    v45 = swift_allocObject();
    v46 = v159;
    v184 = v45;
    *(v45 + 16) = v209;
    *(v45 + 24) = v46;
    v185 = swift_allocObject();
    *(v185 + 16) = 37;
    v186 = swift_allocObject();
    *(v186 + 16) = v165;
    v47 = swift_allocObject();
    v48 = v160;
    v161 = v47;
    *(v47 + 16) = v210;
    *(v47 + 24) = v48;
    v49 = swift_allocObject();
    v50 = v161;
    v187 = v49;
    *(v49 + 16) = v211;
    *(v49 + 24) = v50;
    v188 = swift_allocObject();
    *(v188 + 16) = 0;
    v189 = swift_allocObject();
    *(v189 + 16) = v165;
    v51 = swift_allocObject();
    v52 = v162;
    v163 = v51;
    *(v51 + 16) = v212;
    *(v51 + 24) = v52;
    v53 = swift_allocObject();
    v54 = v163;
    v190 = v53;
    *(v53 + 16) = v213;
    *(v53 + 24) = v54;
    v191 = swift_allocObject();
    *(v191 + 16) = 0;
    v192 = swift_allocObject();
    *(v192 + 16) = v165;
    v55 = swift_allocObject();
    v56 = v199;
    v168 = v55;
    *(v55 + 16) = v214;
    *(v55 + 24) = v56;
    v57 = swift_allocObject();
    v58 = v168;
    v194 = v57;
    *(v57 + 16) = v215;
    *(v57 + 24) = v58;
    v196 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
    v193 = sub_1B0E46A48();
    v195 = v59;

    v60 = v170;
    v61 = v195;
    *v195 = v216;
    v61[1] = v60;

    v62 = v171;
    v63 = v195;
    v195[2] = v217;
    v63[3] = v62;

    v64 = v172;
    v65 = v195;
    v195[4] = v218;
    v65[5] = v64;

    v66 = v173;
    v67 = v195;
    v195[6] = v219;
    v67[7] = v66;

    v68 = v174;
    v69 = v195;
    v195[8] = v220;
    v69[9] = v68;

    v70 = v175;
    v71 = v195;
    v195[10] = v221;
    v71[11] = v70;

    v72 = v176;
    v73 = v195;
    v195[12] = v222;
    v73[13] = v72;

    v74 = v177;
    v75 = v195;
    v195[14] = v223;
    v75[15] = v74;

    v76 = v178;
    v77 = v195;
    v195[16] = v224;
    v77[17] = v76;

    v78 = v179;
    v79 = v195;
    v195[18] = v225;
    v79[19] = v78;

    v80 = v180;
    v81 = v195;
    v195[20] = v226;
    v81[21] = v80;

    v82 = v181;
    v83 = v195;
    v195[22] = v227;
    v83[23] = v82;

    v84 = v182;
    v85 = v195;
    v195[24] = v228;
    v85[25] = v84;

    v86 = v183;
    v87 = v195;
    v195[26] = v229;
    v87[27] = v86;

    v88 = v184;
    v89 = v195;
    v195[28] = v230;
    v89[29] = v88;

    v90 = v185;
    v91 = v195;
    v195[30] = v231;
    v91[31] = v90;

    v92 = v186;
    v93 = v195;
    v195[32] = v232;
    v93[33] = v92;

    v94 = v187;
    v95 = v195;
    v195[34] = v233;
    v95[35] = v94;

    v96 = v188;
    v97 = v195;
    v195[36] = v234;
    v97[37] = v96;

    v98 = v189;
    v99 = v195;
    v195[38] = v235;
    v99[39] = v98;

    v100 = v190;
    v101 = v195;
    v195[40] = v236;
    v101[41] = v100;

    v102 = v191;
    v103 = v195;
    v195[42] = v237;
    v103[43] = v102;

    v104 = v192;
    v105 = v195;
    v195[44] = v238;
    v105[45] = v104;

    v106 = v194;
    v107 = v195;
    v195[46] = v239;
    v107[47] = v106;
    sub_1B0394964();

    if (os_log_type_enabled(v197, v198))
    {
      v108 = v240;
      v134 = sub_1B0E45D78();
      v133 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
      v135 = sub_1B03949A8(0, v133, v133);
      v136 = sub_1B03949A8(1, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
      v137 = &v271;
      v271 = v134;
      v138 = &v270;
      v270 = v135;
      v139 = &v269;
      v269 = v136;
      sub_1B0394A48(3, &v271);
      sub_1B0394A48(8, v137);
      v267 = v216;
      v268 = v170;
      sub_1B03949FC(&v267, v137, v138, v139);
      v140 = v108;
      if (v108)
      {

        __break(1u);
      }

      else
      {
        v267 = v217;
        v268 = v171;
        sub_1B03949FC(&v267, &v271, &v270, &v269);
        v132 = 0;
        v267 = v218;
        v268 = v172;
        sub_1B03949FC(&v267, &v271, &v270, &v269);
        v131 = 0;
        v267 = v219;
        v268 = v173;
        sub_1B03949FC(&v267, &v271, &v270, &v269);
        v130 = 0;
        v267 = v220;
        v268 = v174;
        sub_1B03949FC(&v267, &v271, &v270, &v269);
        v129 = 0;
        v267 = v221;
        v268 = v175;
        sub_1B03949FC(&v267, &v271, &v270, &v269);
        v128 = 0;
        v267 = v222;
        v268 = v176;
        sub_1B03949FC(&v267, &v271, &v270, &v269);
        v127 = 0;
        v267 = v223;
        v268 = v177;
        sub_1B03949FC(&v267, &v271, &v270, &v269);
        v126 = 0;
        v267 = v224;
        v268 = v178;
        sub_1B03949FC(&v267, &v271, &v270, &v269);
        v125 = 0;
        v267 = v225;
        v268 = v179;
        sub_1B03949FC(&v267, &v271, &v270, &v269);
        v124 = 0;
        v267 = v226;
        v268 = v180;
        sub_1B03949FC(&v267, &v271, &v270, &v269);
        v123 = 0;
        v267 = v227;
        v268 = v181;
        sub_1B03949FC(&v267, &v271, &v270, &v269);
        v122 = 0;
        v267 = v228;
        v268 = v182;
        sub_1B03949FC(&v267, &v271, &v270, &v269);
        v121 = 0;
        v267 = v229;
        v268 = v183;
        sub_1B03949FC(&v267, &v271, &v270, &v269);
        v120 = 0;
        v267 = v230;
        v268 = v184;
        sub_1B03949FC(&v267, &v271, &v270, &v269);
        v119 = 0;
        v267 = v231;
        v268 = v185;
        sub_1B03949FC(&v267, &v271, &v270, &v269);
        v118 = 0;
        v267 = v232;
        v268 = v186;
        sub_1B03949FC(&v267, &v271, &v270, &v269);
        v117 = 0;
        v267 = v233;
        v268 = v187;
        sub_1B03949FC(&v267, &v271, &v270, &v269);
        v116 = 0;
        v267 = v234;
        v268 = v188;
        sub_1B03949FC(&v267, &v271, &v270, &v269);
        v115 = 0;
        v267 = v235;
        v268 = v189;
        sub_1B03949FC(&v267, &v271, &v270, &v269);
        v114 = 0;
        v267 = v236;
        v268 = v190;
        sub_1B03949FC(&v267, &v271, &v270, &v269);
        v113 = 0;
        v267 = v237;
        v268 = v191;
        sub_1B03949FC(&v267, &v271, &v270, &v269);
        v112 = 0;
        v267 = v238;
        v268 = v192;
        sub_1B03949FC(&v267, &v271, &v270, &v269);
        v111 = 0;
        v267 = v239;
        v268 = v194;
        sub_1B03949FC(&v267, &v271, &v270, &v269);
        _os_log_impl(&dword_1B0389000, v197, v198, "[%.*hhx-%.*X] [%{sensitive,mask.mailbox}s] Writing %{iec-bytes}ld bytes and closing file writer <0x%lx>", v134, 0x3Fu);
        sub_1B03998A8(v135, 0, v133);
        sub_1B03998A8(v136, 1, MEMORY[0x1E69E7CA0] + 8);
        sub_1B0E45D58();
      }
    }

    else
    {
    }

    MEMORY[0x1E69E5920](v197);
    (*(v249 + 8))(v252, v248);
    sub_1B0757690(v264);
    v110 = *(v199 + 24);
    MEMORY[0x1E69E5928](v110);
    [v110 close];
    MEMORY[0x1E69E5920](v110);
    return sub_1B075CD68(v264);
  }

  return result;
}

uint64_t sub_1B0759C14()
{
  swift_beginAccess();
  v5 = *(v0 + 32);
  swift_endAccess();
  if (v5)
  {
    v3 = 1;
  }

  else
  {
    swift_beginAccess();
    *(v4 + 32) = 1;
    swift_endAccess();
    v2 = *(v4 + 24);
    MEMORY[0x1E69E5928](v2);
    [v2 failAndClose];
    MEMORY[0x1E69E5920](v2);
    v3 = 0;
  }

  return v3 & 1;
}

uint64_t sub_1B0759D04()
{
  v2 = *(v0 + 24);
  MEMORY[0x1E69E5928](v2);
  [v2 failAndClose];
  return MEMORY[0x1E69E5920](v2);
}

uint64_t sub_1B0759D60()
{
  v2 = *(v0 + 24);
  MEMORY[0x1E69E5928](v2);
  [v2 failAndClose];
  MEMORY[0x1E69E5920](v2);

  MEMORY[0x1E69E5920](*(v0 + 24));
  return v3;
}

uint64_t sub_1B0759E98()
{
  v2 = *v0;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  return v2;
}

uint64_t sub_1B0759EF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  *v4 = a1;
  v4[1] = a2;
  v4[2] = a3;
  v4[3] = a4;
}

uint64_t sub_1B0759F74()
{
  v2 = *(v0 + 32);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  return v2;
}

uint64_t sub_1B0759FAC(uint64_t a1, uint64_t a2)
{
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
}

uint64_t sub_1B0759FF8()
{
  v2 = *(v0 + 48);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  return v2;
}

uint64_t sub_1B075A030(uint64_t a1, uint64_t a2)
{
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
}

void *sub_1B075A08C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, uint64_t a10)
{
  memset(__b, 0, sizeof(__b));
  v20[14] = a1;
  v20[15] = a2;
  v20[16] = a3;
  v20[17] = a4;
  v20[12] = a5;
  v20[13] = a6;
  v20[10] = a7;
  v20[11] = a8;
  v20[9] = a10;
  __b[4] = 0;
  __b[5] = 0;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  __b[0] = a1;
  __b[1] = a2;
  __b[2] = a3;
  __b[3] = a4;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  __b[4] = a5;
  __b[5] = a6;

  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  __b[6] = a7;
  __b[7] = a8;
  __b[8] = a10;
  memcpy(__dst, __b, sizeof(__dst));
  sub_1B075CFDC(__dst, v20);

  sub_1B0754BBC();
  return memcpy(a9, __dst, 0x48uLL);
}

uint64_t sub_1B075A230()
{
  v70 = v83;
  v82 = 0;
  v77 = 0;
  v78 = 0;
  v71 = 0;
  v72 = 0;
  v63 = sub_1B0E43788();
  v64 = *(v63 - 8);
  v65 = v63 - 8;
  v66 = (*(v64 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v63);
  v67 = v27 - v66;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1FE0, &qword_1B0E9B2B0);
  v68 = (*(*(v1 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v1);
  v69 = v27 - v68;
  v82 = v0;
  *(v2 + 64) = *(v0 + 32);
  sub_1B070B280(&v85, &v81);
  v70[5] = v70[4];
  if (v87)
  {
    v71 = v86;
    v72 = v87;
    v60 = v86;
    v61 = v87;
  }

  else
  {
    v3 = v70;
    v4 = v62;
    v5 = *v62;
    v45 = v84;
    v70[2] = v5;
    v3[3] = v4[1];
    sub_1B075D098(v84, &v80);
    v47 = v84[0];
    v46 = v84[1];
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B06FF6F0(v45);
    v6.stringValue._object = v46;
    v6.stringValue._countAndFlagsBits = v47;
    v7 = String.init(_:)(v6);
    countAndFlagsBits = v7._countAndFlagsBits;
    object = v7._object;
    v59 = 1;
    v8 = sub_1B0E44838();
    v49 = v9;
    v54 = MEMORY[0x1B2726DB0](countAndFlagsBits, object, v8);
    v56 = v10;

    v11 = v62;
    v12 = v70;
    v13 = *v62;
    v51 = v83;
    *v70 = v13;
    v12[1] = v11[1];
    sub_1B075D098(v83, &v79);
    v53 = v83[2];
    v52 = v83[3];
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B06FF6F0(v51);
    v14.stringValue._object = v52;
    v14.stringValue._countAndFlagsBits = v53;
    v15 = String.init(_:)(v14);
    v55 = v15._object;
    v57 = MEMORY[0x1B2726DB0](v54, v56, v15._countAndFlagsBits);
    v58 = v16;

    sub_1B0E436D8();
    sub_1B0E435F8();
    if ((*(v64 + 48))(v69, v59, v63) == 1)
    {
      sub_1B075D100(v69);
      v43 = 0;
      v44 = 0;
    }

    else
    {
      v41 = sub_1B0E43668();
      v42 = v17;
      (*(v64 + 8))(v69, v63);
      v43 = v41;
      v44 = v42;
    }

    v39 = v44;
    v40 = v43;
    if (v44)
    {
      v37 = v40;
      v38 = v39;
      v34 = v39;
      v28 = v40;
      v77 = v40;
      v78 = v39;
      v27[0] = 11;
      v18 = sub_1B0E46A28();
      v31 = &v75;
      v75 = v18;
      v76 = v19;
      v29 = 1;
      v20 = sub_1B0E44838();
      v27[1] = v21;
      MEMORY[0x1B2728B30](v20);

      v73 = v28;
      v74 = v34;
      sub_1B0E46A08();
      v22 = sub_1B0E44838();
      v30 = v23;
      MEMORY[0x1B2728B30](v22);

      v33 = v75;
      v32 = v76;
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      sub_1B03B1198(v31);
      v35 = sub_1B0E44C88();
      v36 = v24;

      v60 = v35;
      v61 = v36;
    }

    else
    {
      v60 = sub_1B0E44838();
      v61 = v25;
    }
  }

  return v60;
}

uint64_t sub_1B075A8D4()
{
  v2 = *(v0 + 16);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  return v2;
}

uint64_t sub_1B075A92C()
{
  swift_beginAccess();
  v2 = *(v0 + 64);
  MEMORY[0x1E69E5928](v2);
  swift_endAccess();
  return v2;
}

uint64_t sub_1B075A984(uint64_t a1)
{
  MEMORY[0x1E69E5928](a1);
  swift_beginAccess();
  v2 = *(v1 + 64);
  *(v1 + 64) = a1;
  MEMORY[0x1E69E5920](v2);
  swift_endAccess();
  return MEMORY[0x1E69E5920](a1);
}

uint64_t sub_1B075A9FC@<X0>(uint64_t a1@<X8>)
{
  v4 = v1 + OBJC_IVAR____TtCCC7Message25InProgressMessageDownload26AttachmentDecoderAndWriter7Decoder_decoded;
  swift_beginAccess();
  v2 = sub_1B0E443C8();
  (*(*(v2 - 8) + 16))(a1, v4);
  return swift_endAccess();
}

uint64_t sub_1B075AA88(uint64_t a1)
{
  v11 = a1;
  v12 = sub_1B0E443C8();
  v9 = *(v12 - 8);
  v10 = v12 - 8;
  v5 = (*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x1EEE9AC00](v12);
  v7 = &v4 - v5;
  (*(v9 + 16))(v2);
  v6 = v1 + OBJC_IVAR____TtCCC7Message25InProgressMessageDownload26AttachmentDecoderAndWriter7Decoder_decoded;
  v8 = &v13;
  swift_beginAccess();
  (*(v9 + 40))(v6, v7, v12);
  swift_endAccess();
  return (*(v9 + 8))(v11, v12);
}

uint64_t sub_1B075ABC8()
{
  v2 = v0 + OBJC_IVAR____TtCCC7Message25InProgressMessageDownload26AttachmentDecoderAndWriter7Decoder_decodedSmall;
  swift_beginAccess();
  v3 = *v2;
  sub_1B070E18C(*v2, *(v2 + 8));
  swift_endAccess();
  return v3;
}

uint64_t sub_1B075AC34(uint64_t a1, unint64_t a2)
{
  sub_1B070E18C(a1, a2);
  v6 = (v2 + OBJC_IVAR____TtCCC7Message25InProgressMessageDownload26AttachmentDecoderAndWriter7Decoder_decodedSmall);
  swift_beginAccess();
  v3 = *v6;
  v4 = v6[1];
  *v6 = a1;
  v6[1] = a2;
  sub_1B070E144(v3, v4);
  swift_endAccess();
  return sub_1B070E144(a1, a2);
}

uint64_t sub_1B075ACB8()
{
  v2 = (v0 + OBJC_IVAR____TtCCC7Message25InProgressMessageDownload26AttachmentDecoderAndWriter7Decoder_filterIsDone);
  swift_beginAccess();
  v3 = *v2;
  swift_endAccess();
  return v3 & 1;
}

uint64_t sub_1B075AD18(char a1)
{
  v3 = (v1 + OBJC_IVAR____TtCCC7Message25InProgressMessageDownload26AttachmentDecoderAndWriter7Decoder_filterIsDone);
  swift_beginAccess();
  *v3 = a1;
  return swift_endAccess();
}

uint64_t sub_1B075ADD4(uint64_t a1)
{
  v10 = a1;
  v9 = sub_1B0E443C8();
  v7 = *(v9 - 8);
  v8 = v9 - 8;
  v4 = (*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v1 = MEMORY[0x1EEE9AC00](v9);
  v5 = &v3 - v4;
  (*(v7 + 16))(v1);
  (*(v7 + 40))(v6, v5, v9);
  return (*(v7 + 8))(v10, v9);
}

void *sub_1B075AF48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[8] = 0;
  sub_1B0E44378();
  v7 = (v6 + OBJC_IVAR____TtCCC7Message25InProgressMessageDownload26AttachmentDecoderAndWriter7Decoder_decodedSmall);
  *v7 = 0;
  v7[1] = 0xF000000000000000;
  *(v6 + OBJC_IVAR____TtCCC7Message25InProgressMessageDownload26AttachmentDecoderAndWriter7Decoder_filterIsDone) = 0;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v6[2] = a1;
  v6[3] = a2;
  v6[4] = a3;
  v6[5] = a4;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v6[6] = a5;
  v6[7] = a6;
  v13 = sub_1B075B288(a1, a2, a3, a4, a5, a6, v6);
  swift_beginAccess();
  v8 = v6[8];
  v6[8] = v13;
  MEMORY[0x1E69E5920](v8);
  swift_endAccess();

  return v6;
}

uint64_t _s26AttachmentDecoderAndWriterC7DecoderC7EncodedOMa(uint64_t a1)
{
  v2 = qword_1EB6DC128;
  if (!qword_1EB6DC128)
  {
    return swift_getSingletonMetadata();
  }

  return v2;
}

uint64_t _s26AttachmentDecoderAndWriterC7DecoderC7DecodedVMa(uint64_t a1)
{
  v2 = qword_1EB6DC140;
  if (!qword_1EB6DC140)
  {
    return swift_getSingletonMetadata();
  }

  return v2;
}

uint64_t sub_1B075B1E0(uint64_t a1)
{
  v3 = sub_1B0E443C8();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1))
  {
    (*(v4 + 8))(a1, v3);
  }

  return a1;
}

id sub_1B075B288(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v61[2] = 0;
  v49 = 0;
  v61[6] = a1;
  v61[7] = a2;
  v61[8] = a3;
  v61[9] = a4;
  v61[4] = a5;
  v61[5] = a6;
  v61[3] = a7;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v61[0] = static BodyStructure.Encoding.binary.getter();
  v61[1] = v7;
  v60[2] = a5;
  v60[3] = a6;
  v37 = static BodyStructure.Encoding.__derived_struct_equals(_:_:)(v61[0], v7, a5, a6);
  sub_1B03B1198(v61);
  if (v37)
  {

    return 0;
  }

  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v60[0] = static BodyStructure.Encoding.sevenBit.getter();
  v60[1] = v8;
  v59[2] = a5;
  v59[3] = a6;
  v32 = static BodyStructure.Encoding.__derived_struct_equals(_:_:)(v60[0], v8, a5, a6);
  sub_1B03B1198(v60);
  if (v32)
  {

LABEL_7:
    sub_1B075D298();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    _s26AttachmentDecoderAndWriterC7DecoderC12DataConsumerCMa();

    sub_1B075BDA8(a7);
    v30 = [ObjCClassFromMetadata filterWithConsumer_];
    swift_unknownObjectRelease();
    if (v30)
    {
      sub_1B0E45FE8();
      sub_1B0392800(v38, v40);
      swift_unknownObjectRelease();
    }

    else
    {
      memset(v40, 0, sizeof(v40));
      v41 = 0;
    }

    if (!v41)
    {
      sub_1B0E465A8();
      __break(1u);
    }

    sub_1B0392800(v40, v42);
    sub_1B075D2FC();
    swift_dynamicCast();
    return v39;
  }

  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v59[0] = static BodyStructure.Encoding.eightBit.getter();
  v59[1] = v9;
  v58[2] = a5;
  v58[3] = a6;
  v31 = static BodyStructure.Encoding.__derived_struct_equals(_:_:)(v59[0], v9, a5, a6);
  sub_1B03B1198(v59);
  if (v31)
  {

    goto LABEL_7;
  }

  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v58[0] = static BodyStructure.Encoding.base64.getter();
  v58[1] = v10;
  v57[2] = a5;
  v57[3] = a6;
  v28 = static BodyStructure.Encoding.__derived_struct_equals(_:_:)(v58[0], v10, a5, a6);
  sub_1B03B1198(v58);
  if (v28)
  {

    sub_1B075D360();
    _s26AttachmentDecoderAndWriterC7DecoderC12DataConsumerCMa();

    v11 = sub_1B075BDA8(a7);
    v27 = sub_1B075BDE4(v11);
    if (v27)
    {
      return v27;
    }

    else
    {
      return 0;
    }
  }

  else
  {

    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v57[0] = static BodyStructure.Encoding.quotedPrintable.getter();
    v57[1] = v12;
    v56[2] = a5;
    v56[3] = a6;
    v25 = static BodyStructure.Encoding.__derived_struct_equals(_:_:)(v57[0], v12, a5, a6);
    sub_1B03B1198(v57);
    if (v25)
    {

      sub_1B075D234();
      v23 = swift_getObjCClassFromMetadata();
      _s26AttachmentDecoderAndWriterC7DecoderC12DataConsumerCMa();

      sub_1B075BDA8(a7);
      v24 = [v23 filterWithConsumer_];
      swift_unknownObjectRelease();
      if (v24)
      {
        sub_1B0E45FE8();
        sub_1B0392800(v43, v51);
        swift_unknownObjectRelease();
      }

      else
      {
        memset(v51, 0, sizeof(v51));
        v52 = 0;
      }

      if (!v52)
      {
        sub_1B0E465A8();
        __break(1u);
      }

      sub_1B0392800(v51, v53);
      swift_dynamicCast();
      v21 = v50;
      v49 = v50;
      [v50 setForTextPart_];
      sub_1B075D298();
      v20 = swift_getObjCClassFromMetadata();
      MEMORY[0x1E69E5928](v21);
      v22 = [v20 filterWithConsumer_];
      swift_unknownObjectRelease();
      if (v22)
      {
        sub_1B0E45FE8();
        sub_1B0392800(v44, v46);
        swift_unknownObjectRelease();
      }

      else
      {
        memset(v46, 0, sizeof(v46));
        v47 = 0;
      }

      if (!v47)
      {
        sub_1B0E465A8();
        __break(1u);
      }

      sub_1B0392800(v46, v48);
      sub_1B075D2FC();
      swift_dynamicCast();
      v19 = v45;
      MEMORY[0x1E69E5920](v21);
      return v19;
    }

    else
    {

      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v56[0] = sub_1B075BE24();
      v56[1] = v13;
      v54 = a5;
      v55 = a6;
      v18 = static BodyStructure.Encoding.__derived_struct_equals(_:_:)(v56[0], v13, a5, a6);
      sub_1B03B1198(v56);
      if (v18)
      {

        sub_1B075D1A8();
        _s26AttachmentDecoderAndWriterC7DecoderC12DataConsumerCMa();

        v14 = sub_1B075BDA8(a7);
        v17 = sub_1B075BDE4(v14);
        if (v17)
        {
          return v17;
        }

        else
        {
          return 0;
        }
      }

      else
      {

        return 0;
      }
    }
  }
}

uint64_t sub_1B075BAE0@<X0>(uint64_t a1@<X8>)
{
  v14 = a1;
  v23 = 0;
  v22 = 0;
  v19 = sub_1B0E443C8();
  v16 = *(v19 - 8);
  v17 = v19 - 8;
  v4 = (*(v16 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v19);
  v15 = &v4 - v4;
  v5 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](&v4 - v4);
  v18 = &v4 - v5;
  v23 = &v4 - v5;
  v22 = v1;
  v8 = &qword_1EB6DC000;
  v6 = v1 + OBJC_IVAR____TtCCC7Message25InProgressMessageDownload26AttachmentDecoderAndWriter7Decoder_decoded;
  v7 = &v21;
  v9 = 0;
  swift_beginAccess();
  v13 = *(v16 + 16);
  v12 = v16 + 16;
  v13(v18, v6, v19);
  swift_endAccess();
  sub_1B0E44378();
  v10 = v1 + v8[35];
  v11 = &v20;
  swift_beginAccess();
  (*(v16 + 40))(v10, v15, v19);
  swift_endAccess();
  v13(v15, v18, v19);
  sub_1B075AEE8(v15, v14);
  return (*(v16 + 8))(v18, v19);
}

uint64_t sub_1B075BCE0()
{
  v4 = (v0 + OBJC_IVAR____TtCCC7Message25InProgressMessageDownload26AttachmentDecoderAndWriter7Decoder_filterIsDone);
  swift_beginAccess();
  v5 = *v4;
  result = swift_endAccess();
  if ((v5 & 1) == 0)
  {
    sub_1B075C32C();
    v2 = (v3 + OBJC_IVAR____TtCCC7Message25InProgressMessageDownload26AttachmentDecoderAndWriter7Decoder_filterIsDone);
    swift_beginAccess();
    *v2 = 1;
    return swift_endAccess();
  }

  return result;
}

void sub_1B075BE58(uint64_t a1, unint64_t a2)
{
  v21 = 0;
  v19 = 0;
  v20 = 0;
  v22 = a1;
  v23 = a2;
  v17 = (v2 + OBJC_IVAR____TtCCC7Message25InProgressMessageDownload26AttachmentDecoderAndWriter7Decoder_filterIsDone);
  swift_beginAccess();
  v18 = *v17;
  swift_endAccess();
  if ((v18 & 1) == 0)
  {
    if (MEMORY[0x1B2725070](a1, a2) >= 100)
    {
      sub_1B075C32C();

      sub_1B0E42F08();
    }

    else
    {
      v11 = (v16 + OBJC_IVAR____TtCCC7Message25InProgressMessageDownload26AttachmentDecoderAndWriter7Decoder_decodedSmall);
      swift_beginAccess();
      v12 = *v11;
      v13 = v11[1];
      sub_1B070E18C(*v11, v13);
      swift_endAccess();
      if ((v13 & 0xF000000000000000) == 0xF000000000000000)
      {
        sub_1B03B2000(a1, a2);
        v7 = (v16 + OBJC_IVAR____TtCCC7Message25InProgressMessageDownload26AttachmentDecoderAndWriter7Decoder_decodedSmall);
        swift_beginAccess();
        v5 = *v7;
        v6 = v7[1];
        *v7 = a1;
        v7[1] = a2;
        sub_1B070E144(v5, v6);
        swift_endAccess();
      }

      else
      {
        v19 = v12;
        v20 = v13;
        sub_1B0E42FA8();
        if (MEMORY[0x1B2725070](v12, v13) <= 900)
        {
          v9 = v20;
          sub_1B03B2000(v19, v20);
          v8 = (v16 + OBJC_IVAR____TtCCC7Message25InProgressMessageDownload26AttachmentDecoderAndWriter7Decoder_decodedSmall);
          swift_beginAccess();
          v3 = *v8;
          v4 = v8[1];
          *v8 = v19;
          v8[1] = v9;
        }

        else
        {
          sub_1B03B2000(v19, v20);

          sub_1B0E42F08();

          sub_1B0391D50(v19, v20);
          v10 = (v16 + OBJC_IVAR____TtCCC7Message25InProgressMessageDownload26AttachmentDecoderAndWriter7Decoder_decodedSmall);
          swift_beginAccess();
          v3 = *v10;
          v4 = v10[1];
          *v10 = 0;
          v10[1] = 0xF000000000000000;
        }

        sub_1B070E144(v3, v4);
        swift_endAccess();
        sub_1B075D3E8(&v19);
      }
    }
  }
}

uint64_t sub_1B075C1FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = a1;
  v7 = a2;
  v10 = a3;
  v18 = 0;
  v19 = 0;
  v17 = 0;
  v15 = sub_1B0E443C8();
  v12 = *(v15 - 8);
  v13 = v15 - 8;
  v9 = (*(v12 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v8);
  v14 = &v7 - v9;
  v18 = v3;
  v19 = v4;
  v17 = v5;
  sub_1B0E44358();
  v11 = &v16;
  swift_beginAccess();
  sub_1B0E44388();
  swift_endAccess();
  return (*(v12 + 8))(v14, v15);
}

uint64_t sub_1B075C32C()
{
  v6 = (v0 + OBJC_IVAR____TtCCC7Message25InProgressMessageDownload26AttachmentDecoderAndWriter7Decoder_decodedSmall);
  swift_beginAccess();
  v7 = *v6;
  v8 = v6[1];
  sub_1B070E18C(*v6, v8);
  result = swift_endAccess();
  if ((v8 & 0xF000000000000000) != 0xF000000000000000)
  {

    sub_1B0E42F08();

    v4 = (v5 + OBJC_IVAR____TtCCC7Message25InProgressMessageDownload26AttachmentDecoderAndWriter7Decoder_decodedSmall);
    swift_beginAccess();
    v2 = *v4;
    v3 = v4[1];
    *v4 = 0;
    v4[1] = 0xF000000000000000;
    sub_1B070E144(v2, v3);
    swift_endAccess();
    return sub_1B0391D50(v7, v8);
  }

  return result;
}

uint64_t sub_1B075C4C8()
{
  sub_1B06FF6F0(v0 + 16);
  sub_1B03B1198(v0 + 48);
  sub_1B06D4E94((v0 + 64));
  v3 = OBJC_IVAR____TtCCC7Message25InProgressMessageDownload26AttachmentDecoderAndWriter7Decoder_decoded;
  v1 = sub_1B0E443C8();
  (*(*(v1 - 8) + 8))(v0 + v3);
  sub_1B043C03C(v0 + OBJC_IVAR____TtCCC7Message25InProgressMessageDownload26AttachmentDecoderAndWriter7Decoder_decodedSmall);
  return v4;
}

uint64_t sub_1B075C5D4()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  swift_endAccess();
  return Strong;
}

uint64_t sub_1B075C63C(uint64_t a1)
{

  swift_beginAccess();
  swift_weakAssign();

  swift_endAccess();
}

id sub_1B075C6BC(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  v7 = a1;
  v8 = v1;
  swift_weakInit();

  swift_beginAccess();
  swift_weakAssign();

  swift_endAccess();
  v6.receiver = v8;
  v6.super_class = ObjectType;
  v5 = objc_msgSendSuper2(&v6, sel_init);
  MEMORY[0x1E69E5928](v5);
  v8 = v5;

  MEMORY[0x1E69E5920](v8);
  return v5;
}

uint64_t sub_1B075C7CC(uint64_t a1, unint64_t a2)
{
  v10 = 0;
  v8 = 0;
  v9 = 0;
  v11 = a1;
  v12 = a2;
  sub_1B070E18C(a1, a2);
  if ((a2 & 0xF000000000000000) == 0xF000000000000000)
  {
    return 0;
  }

  v8 = a1;
  v9 = a2;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {

    sub_1B0391AD4(&Strong);
    swift_endAccess();
    sub_1B075BE58(a1, a2);
  }

  else
  {
    sub_1B0391AD4(&Strong);
    swift_endAccess();
  }

  v3 = MEMORY[0x1B2725070](a1, a2);
  sub_1B0391D50(a1, a2);
  return v3;
}

uint64_t sub_1B075CA28()
{
  v1[4] = 0;
  swift_beginAccess();
  v1[0] = swift_weakLoadStrong();
  if (v1[0])
  {

    sub_1B0391AD4(v1);
    swift_endAccess();
    sub_1B075BCE0();
  }

  else
  {
    sub_1B0391AD4(v1);
    return swift_endAccess();
  }
}

id sub_1B075CBEC(uint64_t a1)
{
  v3 = [v1 initWithConsumer_];
  swift_unknownObjectRelease();
  return v3;
}

uint64_t sub_1B075CC34(uint64_t a1, uint64_t a2)
{
  v2 = sub_1B0E443C8();
  (*(*(v2 - 8) + 16))(a2, a1);
  return a2;
}

uint64_t sub_1B075CC98(uint64_t a1, uint64_t a2)
{
  v2 = sub_1B0E443C8();
  (*(*(v2 - 8) + 32))(a2, a1);
  return a2;
}

uint64_t sub_1B075CCFC()
{
  v1 = *(_s26AttachmentDecoderAndWriterC7DecoderC7DecodedVMa(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_1B07574CC(v2);
}

uint64_t sub_1B075CD68(uint64_t a1)
{
  v1 = sub_1B0E443C8();
  (*(*(v1 - 8) + 8))(a1);
  return a1;
}

void *sub_1B075CDC4(const void *a1, void *a2)
{
  v6 = sub_1B0E443C8();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a1, 1))
  {
    v2 = _s26AttachmentDecoderAndWriterC7DecoderC7EncodedOMa(0);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v7 + 16))(a2, a1, v6);
    (*(v7 + 56))(a2, 0, 1, v6);
  }

  return a2;
}

unint64_t sub_1B075CEE0()
{
  v2 = qword_1EB6DB980;
  if (!qword_1EB6DB980)
  {
    sub_1B0E443C8();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DB980);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B075CF60()
{
  v2 = qword_1EB6E1FD8;
  if (!qword_1EB6E1FD8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6E1FD8);
    return WitnessTable;
  }

  return v2;
}

void *sub_1B075CFDC(void *a1, void *a2)
{
  *a2 = *a1;
  v3 = a1[1];
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  a2[1] = v3;
  a2[2] = a1[2];
  v4 = a1[3];
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  a2[3] = v4;
  a2[4] = a1[4];
  v5 = a1[5];
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  a2[5] = v5;
  a2[6] = a1[6];
  v7 = a1[7];
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  result = a2;
  a2[7] = v7;
  a2[8] = a1[8];
  return result;
}

void *sub_1B075D098(void *a1, void *a2)
{
  *a2 = *a1;
  v4 = a1[1];
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  a2[1] = v4;
  a2[2] = a1[2];
  v6 = a1[3];
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  result = a2;
  a2[3] = v6;
  return result;
}

uint64_t sub_1B075D100(uint64_t a1)
{
  v3 = sub_1B0E43788();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1))
  {
    (*(v4 + 8))(a1, v3);
  }

  return a1;
}

unint64_t sub_1B075D1A8()
{
  v2 = qword_1EB6E1FF0;
  if (!qword_1EB6E1FF0)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EB6E1FF0);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_1B075D234()
{
  v2 = qword_1EB6DA888;
  if (!qword_1EB6DA888)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EB6DA888);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_1B075D298()
{
  v2 = qword_1EB6DA770;
  if (!qword_1EB6DA770)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EB6DA770);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_1B075D2FC()
{
  v2 = qword_1EB6DA8F8;
  if (!qword_1EB6DA8F8)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EB6DA8F8);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_1B075D360()
{
  v2 = qword_1EB6DAB70;
  if (!qword_1EB6DAB70)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EB6DAB70);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t sub_1B075D488(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 72))
    {
      v4 = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v3 = -1;
      if (!HIDWORD(*(a1 + 8)))
      {
        v3 = *(a1 + 8);
      }

      v4 = v3;
    }
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1B075D5A0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFF)
  {
    *result = a2 + 0x80000000;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *(result + 40) = 0;
    *(result + 48) = 0;
    *(result + 56) = 0;
    *(result + 64) = 0;
    if (a3 > 0x7FFFFFFF)
    {
      *(result + 72) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFF)
    {
      *(result + 72) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 - 1;
    }
  }

  return result;
}

uint64_t sub_1B075D7B4(uint64_t a1)
{
  updated = sub_1B0E443C8();
  if (v1 <= 0x3F)
  {
    updated = swift_updateClassMetadata2();
    if (!updated)
    {
      return 0;
    }
  }

  return updated;
}

uint64_t sub_1B075D914(uint64_t a1)
{
  v3 = sub_1B0E443C8();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v3;
}

uint64_t sub_1B075D9E0(uint64_t a1)
{
  v3 = sub_1B0E443C8();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return v3;
}

unint64_t sub_1B075DA90()
{
  v2 = qword_1EB6E2060;
  if (!qword_1EB6E2060)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6E2060);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1B075DB14()
{
  swift_beginAccess();
  v2 = *(v0 + 20);
  swift_endAccess();
  return v2 & 1;
}

uint64_t sub_1B075DB64(char a1)
{
  swift_beginAccess();
  *(v1 + 20) = a1;
  return swift_endAccess();
}

void *sub_1B075DBB0@<X0>(void *a1@<X8>)
{
  swift_beginAccess();
  memcpy(__dst, (v1 + 24), 0xB1uLL);
  sub_1B075DC38(__dst, v4);
  swift_endAccess();
  return memcpy(a1, __dst, 0xB1uLL);
}

uint64_t *sub_1B075DC38(unsigned __int8 *a1, uint64_t *a2)
{
  v45 = a1;
  v46 = a2;
  if (a1[176] == 255)
  {
    memcpy(v46, v45, 0xB1uLL);
  }

  else
  {
    v2 = *v45;
    v3 = v45[1];
    v4 = v45[2];
    v5 = v45[3];
    v6 = v45[4];
    v7 = v45[5];
    v28 = v45[6];
    v29 = v45[7];
    v30 = v45[8];
    v31 = v45[9];
    v32 = v45[10];
    v33 = v45[11];
    v34 = v45[12];
    v35 = v45[13];
    v36 = v45[14];
    v37 = v45[15];
    v38 = v45[16];
    v39 = v45[17];
    v40 = v45[18];
    v41 = v45[19];
    v42 = v45[20];
    v43 = v45[21];
    v44 = *(v45 + 176);
    v27[16] = v27;
    sub_1B0716BB8(v2, v3, v4, v5, v6, v7, v28, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44);
    v8 = v28;
    v9 = v29;
    v10 = v30;
    v11 = v31;
    v12 = v32;
    v13 = v33;
    v14 = v34;
    v15 = v35;
    v16 = v36;
    v17 = v37;
    v18 = v38;
    v19 = v39;
    v20 = v40;
    v21 = v41;
    v22 = v42;
    v23 = v43;
    v24 = v44;
    v25 = v46;
    *v46 = v2;
    v25[1] = v3;
    v25[2] = v4;
    v25[3] = v5;
    v25[4] = v6;
    v25[5] = v7;
    v25[6] = v8;
    v25[7] = v9;
    v25[8] = v10;
    v25[9] = v11;
    v25[10] = v12;
    v25[11] = v13;
    v25[12] = v14;
    v25[13] = v15;
    v25[14] = v16;
    v25[15] = v17;
    v25[16] = v18;
    v25[17] = v19;
    v25[18] = v20;
    v25[19] = v21;
    v25[20] = v22;
    v25[21] = v23;
    *(v25 + 176) = v24 & 1;
  }

  return v46;
}

uint64_t *sub_1B075DE5C(unsigned __int8 *a1)
{
  sub_1B075DC38(a1, v4);
  swift_beginAccess();
  sub_1B075DEC8(a1, (v1 + 24));
  swift_endAccess();
  return sub_1B075E728(a1);
}

unsigned __int8 *sub_1B075DEC8(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v53 = a1;
  v54 = a2;
  if (a2[176] == 255)
  {
    memcpy(v54, v53, 0xB1uLL);
  }

  else if (*(v53 + 176) == 255)
  {
    sub_1B075E648(v54);
    memcpy(v54, v53, 0xB1uLL);
  }

  else
  {
    v2 = *v53;
    v34 = v53[1];
    v35 = v53[2];
    v36 = v53[3];
    v37 = v53[4];
    v38 = v53[5];
    v39 = v53[6];
    v40 = v53[7];
    v41 = v53[8];
    v42 = v53[9];
    v43 = v53[10];
    v44 = v53[11];
    v45 = v53[12];
    v46 = v53[13];
    v47 = v53[14];
    v48 = v53[15];
    v49 = v53[16];
    v3 = v53[17];
    v4 = v53[18];
    v5 = v53[19];
    v6 = v53[20];
    v7 = v53[21];
    v50 = *(v53 + 176);
    v8 = *v54;
    v9 = v54[1];
    v10 = v54[2];
    v11 = v54[3];
    v12 = v54[4];
    v13 = v54[5];
    v14 = v54[6];
    v15 = v54[7];
    v16 = v54[8];
    v17 = v54[9];
    v18 = v54[10];
    v19 = v54[11];
    v20 = v54[12];
    v21 = v54[13];
    v22 = v54[14];
    v23 = v54[15];
    v24 = v54[16];
    v25 = v54[17];
    v26 = v54[18];
    v27 = v54[19];
    v28 = v54[20];
    v29 = v54[21];
    v51 = *(v54 + 176);
    *v54 = v2;
    v54[1] = v34;
    v54[2] = v35;
    v54[3] = v36;
    v54[4] = v37;
    v54[5] = v38;
    v54[6] = v39;
    v54[7] = v40;
    v54[8] = v41;
    v54[9] = v42;
    v54[10] = v43;
    v54[11] = v44;
    v54[12] = v45;
    v54[13] = v46;
    v54[14] = v47;
    v54[15] = v48;
    v54[16] = v49;
    v30 = v50;
    v54[17] = v3;
    LOBYTE(v2) = v51;
    v31 = v54;
    v54[18] = v4;
    v31[19] = v5;
    v31[20] = v6;
    v31[21] = v7;
    *(v31 + 176) = v30 & 1;
    v52 = &v33;
    sub_1B075E1EC(v8, v9, v10, v11, v12, v13, v14, v15, v16, v17, v18, v19, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29, v2);
  }

  return v54;
}

uint64_t sub_1B075E1EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23)
{
  if (a23)
  {

    return sub_1B075E590(a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15);
  }

  else
  {

    return sub_1B075E388(a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22);
  }
}

uint64_t sub_1B075E388(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if (a2 != 1)
  {

    return sub_1B075E420(a3, a4, a5, a6, a7, a8, a9, a10, a11);
  }

  return result;
}

uint64_t sub_1B075E420(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (a2 != 1)
  {
    sub_1B075E4A0(result, a2);
    return sub_1B075E4F8(a6, a7, a8, a9);
  }

  return result;
}

uint64_t sub_1B075E4A0(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_1B075E4F8(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (result)
  {

    return sub_1B075E548(a2, a3, a4);
  }

  return result;
}

uint64_t sub_1B075E548(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_1B075E590(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  if (a2)
  {

    return sub_1B075E420(a4, a5, a6, a7, a8, a9, a10, a11, a12);
  }

  return result;
}

uint64_t *sub_1B075E728(uint64_t *a1)
{
  v26 = a1;
  if (*(a1 + 176) != 255)
  {
    v1 = *v26;
    v2 = v26[1];
    v3 = v26[2];
    v4 = v26[3];
    v5 = v26[4];
    v6 = v26[5];
    v7 = v26[6];
    v8 = v26[7];
    v9 = v26[8];
    v10 = v26[9];
    v11 = v26[10];
    v12 = v26[11];
    v13 = v26[12];
    v14 = v26[13];
    v15 = v26[14];
    v16 = v26[15];
    v17 = v26[16];
    v18 = v26[17];
    v19 = v26[18];
    v20 = v26[19];
    v21 = v26[20];
    v22 = v26[21];
    v23 = *(v26 + 176);
    v25[16] = v25;
    sub_1B075E1EC(v1, v2, v3, v4, v5, v6, v7, v8, v9, v10, v11, v12, v13, v14, v15, v16, v17, v18, v19, v20, v21, v22, v23);
  }

  return v26;
}

uint64_t sub_1B075E820@<X0>(char *a1@<X8>)
{
  v3 = (v1 + OBJC_IVAR____TtC7Message25InProgressMessageDownload_existingData);
  swift_beginAccess();
  sub_1B075E87C(v3, a1);
  return swift_endAccess();
}

char *sub_1B075E87C(char *a1, char *a2)
{
  v8 = _s31PreviouslyDownloadedMessageDataV4MIMEOMa(0);
  if (swift_getEnumCaseMultiPayload() < 2)
  {
    v2 = sub_1B0E443C8();
    (*(*(v2 - 8) + 16))(a2, a1);
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    memcpy(a2, a1, *(*(v8 - 8) + 64));
  }

  v4 = *(_s31PreviouslyDownloadedMessageDataVMa(0) + 20);
  v5 = *&a1[v4];
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  result = a2;
  *&a2[v4] = v5;
  return result;
}

uint64_t sub_1B075E9D4(uint64_t a1)
{
  v8 = a1;
  v4 = (*(*(_s31PreviouslyDownloadedMessageDataVMa(0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v8);
  v5 = &v4 - v4;
  sub_1B075E87C(v2, &v4 - v4);
  v6 = (v1 + OBJC_IVAR____TtC7Message25InProgressMessageDownload_existingData);
  v7 = &v9;
  swift_beginAccess();
  sub_1B075EA98(v5, v6);
  swift_endAccess();
  return sub_1B075ECD0(v8);
}

char *sub_1B075EA98(char *a1, char *a2)
{
  if (a2 != a1)
  {
    sub_1B075EC04(a2);
    v5 = _s31PreviouslyDownloadedMessageDataV4MIMEOMa(0);
    if (swift_getEnumCaseMultiPayload() < 2)
    {
      v2 = sub_1B0E443C8();
      (*(*(v2 - 8) + 32))(a2, a1);
      swift_storeEnumTagMultiPayload();
    }

    else
    {
      memcpy(a2, a1, *(*(v5 - 8) + 64));
    }
  }

  v3 = _s31PreviouslyDownloadedMessageDataVMa(0);
  *&a2[*(v3 + 20)] = *&a1[*(v3 + 20)];

  return a2;
}

uint64_t sub_1B075EC04(uint64_t a1)
{
  _s31PreviouslyDownloadedMessageDataV4MIMEOMa(0);
  if (swift_getEnumCaseMultiPayload() < 2)
  {
    v1 = sub_1B0E443C8();
    (*(*(v1 - 8) + 8))(a1);
  }

  return a1;
}

uint64_t sub_1B075ECD0(uint64_t a1)
{
  _s31PreviouslyDownloadedMessageDataV4MIMEOMa(0);
  if (swift_getEnumCaseMultiPayload() < 2)
  {
    v1 = sub_1B0E443C8();
    (*(*(v1 - 8) + 8))(a1);
  }

  _s31PreviouslyDownloadedMessageDataVMa(0);

  return a1;
}

uint64_t sub_1B075EDB4@<X0>(void *a1@<X8>)
{
  v3 = (v1 + OBJC_IVAR____TtC7Message25InProgressMessageDownload_downloadedHeader);
  swift_beginAccess();
  sub_1B075EE10(v3, a1);
  return swift_endAccess();
}

void *sub_1B075EE10(const void *a1, void *a2)
{
  v7 = type metadata accessor for MessageHeader(0);
  v8 = *(v7 - 8);
  if ((*(v8 + 48))(a1, 1))
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E26F0, &unk_1B0E9B4F0);
    memcpy(a2, a1, *(*(v3 - 8) + 64));
  }

  else
  {
    v2 = sub_1B0E443C8();
    (*(*(v2 - 8) + 16))(a2, a1);
    (*(v8 + 56))(a2, 0, 1, v7);
  }

  return a2;
}

uint64_t sub_1B075EF40(uint64_t a1)
{
  v8 = a1;
  v4 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E26F0, &unk_1B0E9B4F0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v8);
  v5 = &v4 - v4;
  sub_1B075EE10(v2, &v4 - v4);
  v6 = (v1 + OBJC_IVAR____TtC7Message25InProgressMessageDownload_downloadedHeader);
  v7 = &v9;
  swift_beginAccess();
  sub_1B075F010(v5, v6);
  swift_endAccess();
  return sub_1B075F220(v8);
}

void *sub_1B075F010(const void *a1, void *a2)
{
  v9 = type metadata accessor for MessageHeader(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 48);
  if ((v11)(a2, 1))
  {
    if (v11(a1, 1, v9))
    {
      v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E26F0, &unk_1B0E9B4F0);
      memcpy(a2, a1, *(*(v5 - 8) + 64));
    }

    else
    {
      v4 = sub_1B0E443C8();
      (*(*(v4 - 8) + 32))(a2, a1);
      (*(v10 + 56))(a2, 0, 1, v9);
    }
  }

  else if (v11(a1, 1, v9))
  {
    sub_1B075CD68(a2);
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E26F0, &unk_1B0E9B4F0);
    memcpy(a2, a1, *(*(v3 - 8) + 64));
  }

  else
  {
    v2 = sub_1B0E443C8();
    (*(*(v2 - 8) + 40))(a2, a1);
  }

  return a2;
}

uint64_t sub_1B075F220(uint64_t a1)
{
  v1 = type metadata accessor for MessageHeader(0);
  if (!(*(*(v1 - 8) + 48))(a1, 1))
  {
    v2 = sub_1B0E443C8();
    (*(*(v2 - 8) + 8))(a1);
  }

  return a1;
}

uint64_t sub_1B075F2C4()
{
  v2 = (v0 + OBJC_IVAR____TtC7Message25InProgressMessageDownload_sections);
  swift_beginAccess();
  v3 = *v2;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  swift_endAccess();
  return v3;
}

uint64_t sub_1B075F324(uint64_t a1)
{
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v3 = (v1 + OBJC_IVAR____TtC7Message25InProgressMessageDownload_sections);
  swift_beginAccess();
  *v3 = a1;

  swift_endAccess();
}

uint64_t sub_1B075F394()
{
  v2 = (v0 + OBJC_IVAR____TtC7Message25InProgressMessageDownload_passAndActionID);
  swift_beginAccess();
  v3 = *v2;
  swift_endAccess();
  return v3;
}

uint64_t sub_1B075F3F0(uint64_t a1)
{
  v3 = (v1 + OBJC_IVAR____TtC7Message25InProgressMessageDownload_passAndActionID);
  swift_beginAccess();
  *v3 = a1;
  return swift_endAccess();
}

uint64_t sub_1B075F44C@<X0>(void *a1@<X8>)
{
  v3 = (v1 + OBJC_IVAR____TtC7Message25InProgressMessageDownload_cleanedUpFullMessageData);
  swift_beginAccess();
  sub_1B075F4A8(v3, a1);
  return swift_endAccess();
}

void *sub_1B075F4A8(const void *a1, void *a2)
{
  v6 = sub_1B0E443C8();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a1, 1))
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2070, &qword_1B0E9F040);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v7 + 16))(a2, a1, v6);
    (*(v7 + 56))(a2, 0, 1, v6);
  }

  return a2;
}

uint64_t sub_1B075F5D0(uint64_t a1)
{
  v8 = a1;
  v4 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2070, &qword_1B0E9F040) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v8);
  v5 = &v4 - v4;
  sub_1B075F4A8(v2, &v4 - v4);
  v6 = (v1 + OBJC_IVAR____TtC7Message25InProgressMessageDownload_cleanedUpFullMessageData);
  v7 = &v9;
  swift_beginAccess();
  sub_1B075F6A0(v5, v6);
  swift_endAccess();
  return sub_1B075B1E0(v8);
}

void *sub_1B075F6A0(const void *a1, void *a2)
{
  v7 = sub_1B0E443C8();
  v8 = *(v7 - 8);
  v9 = *(v8 + 48);
  if ((v9)(a2, 1))
  {
    if (v9(a1, 1, v7))
    {
      v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2070, &qword_1B0E9F040);
      memcpy(a2, a1, *(*(v3 - 8) + 64));
    }

    else
    {
      (*(v8 + 32))(a2, a1, v7);
      (*(v8 + 56))(a2, 0, 1, v7);
    }
  }

  else if (v9(a1, 1, v7))
  {
    (*(v8 + 8))(a2, v7);
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2070, &qword_1B0E9F040);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v8 + 40))(a2, a1, v7);
  }

  return a2;
}

unint64_t sub_1B075F8C8(void *a1)
{
  v13 = 0;
  v14 = a1;
  v7 = (v1 + OBJC_IVAR____TtC7Message25InProgressMessageDownload__cachedAttachmentFilenames);
  swift_beginAccess();
  v8 = *v7;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  swift_endAccess();
  if (v8)
  {
    return v8;
  }

  swift_beginAccess();
  memcpy(__dst, (v6 + 24), 0xB1uLL);
  sub_1B075DC38(__dst, v10);
  swift_endAccess();
  memcpy(v12, __dst, 0xB1uLL);
  if (sub_1B075FACC(v12) == 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E5EF0, &qword_1B0E9B500);
    sub_1B0E46A48();
    sub_1B07167A8();
    return sub_1B0E445D8();
  }

  else
  {
    memcpy(v15, v12, sizeof(v15));
    v9 = BodyStructure.makeAttachmentFilenames(cache:)(a1);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v3 = (v6 + OBJC_IVAR____TtC7Message25InProgressMessageDownload__cachedAttachmentFilenames);
    swift_beginAccess();
    *v3 = v9;

    swift_endAccess();
    sub_1B075E648(v12);
    return v9;
  }
}

uint64_t sub_1B075FACC(uint64_t a1)
{
  v1 = *(a1 + 176) ^ 0xFF;
  if (v1 >= 0xFE)
  {
    v1 = -1;
  }

  return v1 + 1;
}

uint64_t sub_1B075FBC0()
{
  v2 = (v0 + OBJC_IVAR____TtC7Message25InProgressMessageDownload__cachedAttachmentFilenames);
  swift_beginAccess();
  v3 = *v2;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  swift_endAccess();
  return v3;
}

uint64_t sub_1B075FC20(uint64_t a1)
{
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v3 = (v1 + OBJC_IVAR____TtC7Message25InProgressMessageDownload__cachedAttachmentFilenames);
  swift_beginAccess();
  *v3 = a1;

  swift_endAccess();
}

uint64_t sub_1B075FCE8(int a1, char a2)
{
  sub_1B075FEBC(v12);
  memcpy((v2 + 24), v12, 0xB1uLL);
  sub_1B0825490((v2 + OBJC_IVAR____TtC7Message25InProgressMessageDownload_existingData));
  v6 = OBJC_IVAR____TtC7Message25InProgressMessageDownload_downloadedHeader;
  v3 = type metadata accessor for MessageHeader(0);
  (*(*(v3 - 8) + 56))(v2 + v6, 1);
  v7 = OBJC_IVAR____TtC7Message25InProgressMessageDownload_sections;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2078, &qword_1B0E9B508);
  sub_1B0E46A48();
  type metadata accessor for InProgressMessageDownload.Section(0);
  sub_1B07167A8();
  *(v2 + v7) = sub_1B0E445D8();
  *(v2 + OBJC_IVAR____TtC7Message25InProgressMessageDownload_passAndActionID) = 2;
  v8 = OBJC_IVAR____TtC7Message25InProgressMessageDownload_cleanedUpFullMessageData;
  v4 = sub_1B0E443C8();
  (*(*(v4 - 8) + 56))(v2 + v8, 1);
  result = v11;
  *(v11 + OBJC_IVAR____TtC7Message25InProgressMessageDownload__cachedAttachmentFilenames) = 0;
  *(v11 + 16) = a1;
  *(v11 + 20) = a2;
  return result;
}

uint64_t sub_1B075FEBC(uint64_t result)
{
  *result = 0;
  *(result + 8) = 0;
  *(result + 16) = 0;
  *(result + 24) = 0;
  *(result + 32) = 0;
  *(result + 40) = 0;
  *(result + 48) = 0;
  *(result + 56) = 0;
  *(result + 64) = 0;
  *(result + 72) = 0;
  *(result + 80) = 0;
  *(result + 88) = 0;
  *(result + 96) = 0;
  *(result + 104) = 0;
  *(result + 112) = 0;
  *(result + 120) = 0;
  *(result + 128) = 0;
  *(result + 136) = 0;
  *(result + 144) = 0;
  *(result + 152) = 0;
  *(result + 160) = 0;
  *(result + 168) = 0;
  *(result + 176) = -1;
  return result;
}

uint64_t type metadata accessor for InProgressMessageDownload.Section(uint64_t a1)
{
  v2 = qword_1EB6DC0C8;
  if (!qword_1EB6DC0C8)
  {
    return swift_getSingletonMetadata();
  }

  return v2;
}

uint64_t sub_1B075FF94()
{
  sub_1B075E728((v0 + 24));
  sub_1B075ECD0(v0 + OBJC_IVAR____TtC7Message25InProgressMessageDownload_existingData);
  sub_1B075F220(v0 + OBJC_IVAR____TtC7Message25InProgressMessageDownload_downloadedHeader);
  sub_1B039E440((v0 + OBJC_IVAR____TtC7Message25InProgressMessageDownload_sections));
  sub_1B075B1E0(v0 + OBJC_IVAR____TtC7Message25InProgressMessageDownload_cleanedUpFullMessageData);
  sub_1B039E440((v0 + OBJC_IVAR____TtC7Message25InProgressMessageDownload__cachedAttachmentFilenames));
  return v2;
}

uint64_t sub_1B0760080()
{
  v31 = 0;
  v30 = 0;
  v23 = __b;
  v25 = 40;
  memset(__b, 0, sizeof(__b));
  v26 = 0;
  v21 = type metadata accessor for InProgressMessageDownload.Section(0);
  v8 = *(v21 - 8);
  v9 = v21 - 8;
  v10 = (*(v8 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v21);
  v11 = (v5 - v10);
  v12 = (v1 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v2);
  v13 = (v5 - v12);
  v31 = v5 - v12;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2080, &qword_1B0E9B510);
  v14 = (*(*(v3 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v3);
  v15 = v5 - v14;
  v30 = v0;
  v16 = (v0 + OBJC_IVAR____TtC7Message25InProgressMessageDownload_sections);
  v18 = &v28;
  swift_beginAccess();
  v17 = *v16;
  v22 = sub_1B07167A8();
  v20 = &type metadata for SectionSpecifier.Part;
  v19 = sub_1B0E446B8();
  swift_endAccess();
  v24 = &v32;
  MEMORY[0x1B2726760](v19, v20, v21, v22);
  memcpy(v23, v24, v25);
  while (1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2088, &qword_1B0E9B518);
    sub_1B0E44658();
    if ((*(v8 + 48))(v15, 1, v21) == 1)
    {
      break;
    }

    sub_1B076041C(v15, v13);
    sub_1B0760600(v13, v11);
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      v7 = *v11;
      v26 = v7;
      sub_1B0759D04();
    }

    else
    {
      sub_1B0760B84(v11);
    }

    sub_1B0760B84(v13);
  }

  sub_1B06B91B0();
  v6 = &v27;
  swift_beginAccess();
  v5[3] = sub_1B06A3D48();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2090, &qword_1B0E9B520);
  sub_1B0E446F8();
  return swift_endAccess();
}

uint64_t sub_1B076041C(uint64_t a1, uint64_t a2)
{
  v13 = type metadata accessor for InProgressMessageDownload.Section(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      *a2 = *a1;
      *(a2 + 8) = *(a1 + 8);
      *(a2 + 24) = *(a1 + 24);
      memcpy((a2 + 40), (a1 + 40), 0xB1uLL);
      v4 = type metadata accessor for MessageSectionDataConcatenator.CompleteSection(0);
      v8 = a2 + *(v4 + 28);
      v7 = a1 + *(v4 + 28);
      v5 = sub_1B0E443C8();
      (*(*(v5 - 8) + 32))(v8, v7);
      swift_storeEnumTagMultiPayload();
    }

    else
    {
      memcpy(a2, a1, *(*(v13 - 8) + 64));
    }
  }

  else
  {
    *a2 = *a1;
    *(a2 + 8) = *(a1 + 8);
    *(a2 + 16) = *(a1 + 16);
    *(a2 + 32) = *(a1 + 32);
    v2 = type metadata accessor for MessageSectionDataConcatenator(0);
    v10 = a2 + *(v2 + 28);
    v9 = a1 + *(v2 + 28);
    v3 = type metadata accessor for MessageSectionData.Concatenator(0);
    (*(*(v3 - 8) + 32))(v10, v9);
    swift_storeEnumTagMultiPayload();
  }

  return a2;
}

unint64_t *sub_1B0760600(__n128 *a1, unint64_t *a2)
{
  v89 = a1;
  v88 = a2;
  v90 = type metadata accessor for InProgressMessageDownload.Section(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v81 = v89->n128_u64[0];
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v11 = v89;
      *v88 = v81;
      if (v11[1].n128_u64[0])
      {
        v12 = v89;
        v88[1] = v89->n128_u64[1];
        v79 = v12[1].n128_u64[0];
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        v13 = v89;
        v14 = v88;
        v88[2] = v79;
        v14[3] = v13[1].n128_u64[1];
        v80 = v13[2].n128_u64[0];
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        v88[4] = v80;
      }

      else
      {
        v15 = v88;
        v16 = v89;
        *(v88 + 1) = *(v89 + 8);
        *(v15 + 3) = *(v16 + 24);
      }

      v77 = v88 + 5;
      v78 = &v89[2].n128_i8[8];
      if (v89[13].n128_u8[8] == 255)
      {
        memcpy(v77, v78, 0xB1uLL);
      }

      else
      {
        v17 = v89[2].n128_i64[1];
        v18 = v89[3].n128_i64[0];
        v19 = v89[3].n128_i64[1];
        v20 = v89[4].n128_i64[0];
        v21 = v89[4].n128_i64[1];
        v22 = v89[5].n128_i64[0];
        v60 = v89[5].n128_i64[1];
        v61 = v89[6].n128_i64[0];
        v62 = v89[6].n128_i64[1];
        v63 = v89[7].n128_i64[0];
        v64 = v89[7].n128_i64[1];
        v65 = v89[8].n128_i64[0];
        v66 = v89[8].n128_i64[1];
        v67 = v89[9].n128_i64[0];
        v68 = v89[9].n128_i64[1];
        v69 = v89[10].n128_i64[0];
        v70 = v89[10].n128_i64[1];
        v71 = v89[11].n128_i64[0];
        v72 = v89[11].n128_i64[1];
        v73 = v89[12].n128_i64[0];
        v74 = v89[12].n128_i64[1];
        v75 = v89[13].n128_i64[0];
        v76 = v89[13].n128_u8[8];
        v59 = &v50;
        sub_1B0716BB8(v17, v18, v19, v20, v21, v22, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76);
        v23 = v60;
        v24 = v61;
        v25 = v62;
        v26 = v63;
        v27 = v64;
        v28 = v65;
        v29 = v66;
        v30 = v67;
        v31 = v68;
        v32 = v69;
        v33 = v70;
        v34 = v71;
        v35 = v72;
        v36 = v73;
        v37 = v74;
        v38 = v75;
        v39 = v76;
        v40 = v88;
        v88[5] = v17;
        v40[6] = v18;
        v40[7] = v19;
        v40[8] = v20;
        v40[9] = v21;
        v40[10] = v22;
        v40[11] = v23;
        v40[12] = v24;
        v40[13] = v25;
        v40[14] = v26;
        v40[15] = v27;
        v40[16] = v28;
        v40[17] = v29;
        v40[18] = v30;
        v40[19] = v31;
        v40[20] = v32;
        v40[21] = v33;
        v40[22] = v34;
        v40[23] = v35;
        v40[24] = v36;
        v40[25] = v37;
        v40[26] = v38;
        *(v40 + 216) = v39 & 1;
      }

      v56 = 0;
      v41 = type metadata accessor for MessageSectionDataConcatenator.CompleteSection(0);
      v58 = v88 + *(v41 + 28);
      v57 = v89 + *(v41 + 28);
      v42 = sub_1B0E443C8();
      (*(*(v42 - 8) + 16))(v58, v57);
      swift_storeEnumTagMultiPayload();
    }

    else
    {
      if (EnumCaseMultiPayload == 2)
      {
        v55 = v89->n128_u64[0];

        *v88 = v55;
      }

      else
      {
        v51 = v89->n128_u64[0];
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        v43 = v89;
        v44 = v88;
        *v88 = v51;
        v44[1] = v43->n128_u64[1];
        v52 = v43[1].n128_u64[0];
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        v45 = v89;
        v46 = v88;
        v88[2] = v52;
        v46[3] = v45[1].n128_u64[1];
        v53 = v45[2].n128_u64[0];
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        v47 = v89;
        v48 = v88;
        v88[4] = v53;
        v48[5] = v47[2].n128_u64[1];
        v54 = v47[3].n128_u64[0];
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        v88[6] = v54;
      }

      swift_storeEnumTagMultiPayload();
    }
  }

  else
  {
    v2 = v89;
    *v88 = v89->n128_u32[0];
    v87 = v2->n128_u64[1];
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v3 = v89;
    v88[1] = v87;
    if (v3[1].n128_u64[1])
    {
      v4 = v89;
      v88[2] = v89[1].n128_u64[0];
      v85 = v4[1].n128_u64[1];
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v5 = v89;
      v6 = v88;
      v88[3] = v85;
      v6[4] = v5[2].n128_u64[0];
      v86 = v5[2].n128_u64[1];
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v88[5] = v86;
    }

    else
    {
      v7 = v88;
      v8 = v89;
      *(v88 + 1) = v89[1];
      *(v7 + 2) = v8[2];
    }

    v82 = 0;
    v9 = type metadata accessor for MessageSectionDataConcatenator(0);
    v84 = v88 + *(v9 + 28);
    v83 = v89 + *(v9 + 28);
    v10 = type metadata accessor for MessageSectionData.Concatenator(0);
    (*(*(v10 - 8) + 16))(v84, v83);
    swift_storeEnumTagMultiPayload();
  }

  return v88;
}

uint64_t sub_1B0760B84(uint64_t a1)
{
  v32 = a1;
  type metadata accessor for InProgressMessageDownload.Section(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    switch(EnumCaseMultiPayload)
    {
      case 1:

        if (*(v32 + 16))
        {
        }

        if (*(v32 + 216) != 255)
        {
          v2 = *(v32 + 40);
          v3 = *(v32 + 48);
          v4 = *(v32 + 56);
          v5 = *(v32 + 64);
          v6 = *(v32 + 72);
          v7 = *(v32 + 80);
          v8 = *(v32 + 88);
          v9 = *(v32 + 96);
          v10 = *(v32 + 104);
          v11 = *(v32 + 112);
          v12 = *(v32 + 120);
          v13 = *(v32 + 128);
          v14 = *(v32 + 136);
          v15 = *(v32 + 144);
          v16 = *(v32 + 152);
          v17 = *(v32 + 160);
          v18 = *(v32 + 168);
          v19 = *(v32 + 176);
          v20 = *(v32 + 184);
          v21 = *(v32 + 192);
          v22 = *(v32 + 200);
          v23 = *(v32 + 208);
          v24 = *(v32 + 216);
          v29 = v27;
          sub_1B075E1EC(v2, v3, v4, v5, v6, v7, v8, v9, v10, v11, v12, v13, v14, v15, v16, v17, v18, v19, v20, v21, v22, v23, v24);
        }

        v27[15] = 0;
        v28 = v32 + *(type metadata accessor for MessageSectionDataConcatenator.CompleteSection(0) + 28);
        v25 = sub_1B0E443C8();
        (*(*(v25 - 8) + 8))(v28);
        break;
      case 2:

        break;
      case 3:

        break;
    }
  }

  else
  {

    if (*(v32 + 24))
    {
    }

    v30 = 0;
    v31 = v32 + *(type metadata accessor for MessageSectionDataConcatenator(0) + 28);
    v1 = type metadata accessor for MessageSectionData.Concatenator(0);
    (*(*(v1 - 8) + 8))(v31);
  }

  return v32;
}

unint64_t sub_1B0760E98()
{
  v2 = qword_1EB6E2098;
  if (!qword_1EB6E2098)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6E2098);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1B0760F34(uint64_t a1)
{
  v525 = a1;
  v518 = 0;
  v553 = 0;
  v552 = 0;
  v517 = 0;
  v519 = _s6LoggerVMa(0);
  v521 = *(*(v519 - 8) + 64);
  MEMORY[0x1EEE9AC00](0);
  v523 = (v521 + 15) & 0xFFFFFFFFFFFFFFF0;
  v520 = &v198 - v523;
  MEMORY[0x1EEE9AC00](v2);
  v522 = &v198 - v523;
  MEMORY[0x1EEE9AC00](v3);
  v524 = &v198 - v523;
  v526 = sub_1B0E439A8();
  v527 = *(v526 - 8);
  v528 = v527;
  v530 = *(v527 + 64);
  MEMORY[0x1EEE9AC00](v525);
  v532 = (v530 + 15) & 0xFFFFFFFFFFFFFFF0;
  v529 = &v198 - v532;
  MEMORY[0x1EEE9AC00](v4);
  v531 = &v198 - v532;
  MEMORY[0x1EEE9AC00](v5);
  v533 = &v198 - v532;
  v553 = v6;
  v552 = v1;
  if (!sub_1B0765644())
  {
    (*(v528 + 16))(v529, v525, v526);
    sub_1B0394784(v525, v524);
    sub_1B0394784(v524, v522);
    sub_1B03F4FD0(v524, v520);
    v136 = (v522 + *(v519 + 20));
    v241 = *v136;
    v242 = *(v136 + 1);
    sub_1B039480C(v522);
    v240 = 24;
    v272 = 7;
    v137 = swift_allocObject();
    v138 = v242;
    v252 = v137;
    *(v137 + 16) = v241;
    *(v137 + 20) = v138;
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    v139 = swift_allocObject();
    v140 = v242;
    v243 = v139;
    *(v139 + 16) = v241;
    *(v139 + 20) = v140;

    v271 = 32;
    v141 = swift_allocObject();
    v142 = v243;
    v263 = v141;
    *(v141 + 16) = sub_1B039BBE8;
    *(v141 + 24) = v142;
    sub_1B0394868();
    sub_1B0394868();

    sub_1B039480C(v520);

    v143 = swift_allocObject();
    v144 = v516;
    v273 = v143;
    *(v143 + 16) = sub_1B07AAFA4;
    *(v143 + 24) = v144;

    v295 = sub_1B0E43988();
    v244 = v295;
    v294 = sub_1B0E45908();
    v245 = v294;
    v267 = 17;
    v276 = swift_allocObject();
    v246 = v276;
    v255 = 16;
    *(v276 + 16) = 16;
    v277 = swift_allocObject();
    v247 = v277;
    v269 = 4;
    *(v277 + 16) = 4;
    v145 = swift_allocObject();
    v248 = v145;
    *(v145 + 16) = sub_1B0394C30;
    v258 = 0;
    *(v145 + 24) = 0;
    v146 = swift_allocObject();
    v147 = v248;
    v278 = v146;
    v249 = v146;
    *(v146 + 16) = sub_1B0394C24;
    *(v146 + 24) = v147;
    v279 = swift_allocObject();
    v250 = v279;
    v266 = 0;
    *(v279 + 16) = 0;
    v280 = swift_allocObject();
    v251 = v280;
    *(v280 + 16) = 1;
    v148 = swift_allocObject();
    v149 = v252;
    v253 = v148;
    *(v148 + 16) = sub_1B039BA2C;
    *(v148 + 24) = v149;
    v150 = swift_allocObject();
    v151 = v253;
    v281 = v150;
    v254 = v150;
    *(v150 + 16) = sub_1B039BA88;
    *(v150 + 24) = v151;
    v282 = swift_allocObject();
    v256 = v282;
    *(v282 + 16) = v255;
    v283 = swift_allocObject();
    v257 = v283;
    *(v283 + 16) = v269;
    v152 = swift_allocObject();
    v153 = v258;
    v259 = v152;
    *(v152 + 16) = sub_1B039BB94;
    *(v152 + 24) = v153;
    v154 = swift_allocObject();
    v155 = v259;
    v284 = v154;
    v260 = v154;
    *(v154 + 16) = sub_1B0394C24;
    *(v154 + 24) = v155;
    v285 = swift_allocObject();
    v261 = v285;
    *(v285 + 16) = v266;
    v286 = swift_allocObject();
    v262 = v286;
    *(v286 + 16) = v269;
    v156 = swift_allocObject();
    v157 = v263;
    v264 = v156;
    *(v156 + 16) = sub_1B039BBA0;
    *(v156 + 24) = v157;
    v158 = swift_allocObject();
    v159 = v264;
    v287 = v158;
    v265 = v158;
    *(v158 + 16) = sub_1B039BC08;
    *(v158 + 24) = v159;
    v288 = swift_allocObject();
    v268 = v288;
    *(v288 + 16) = v266;
    v289 = swift_allocObject();
    v270 = v289;
    *(v289 + 16) = v269;
    v160 = swift_allocObject();
    v161 = v273;
    v274 = v160;
    *(v160 + 16) = sub_1B07AB020;
    *(v160 + 24) = v161;
    v162 = swift_allocObject();
    v163 = v274;
    v292 = v162;
    v275 = v162;
    *(v162 + 16) = sub_1B039BC08;
    *(v162 + 24) = v163;
    v293 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
    v290 = sub_1B0E46A48();
    v291 = v164;

    v165 = v276;
    v166 = v291;
    *v291 = sub_1B0398F5C;
    v166[1] = v165;

    v167 = v277;
    v168 = v291;
    v291[2] = sub_1B0398F5C;
    v168[3] = v167;

    v169 = v278;
    v170 = v291;
    v291[4] = sub_1B0399178;
    v170[5] = v169;

    v171 = v279;
    v172 = v291;
    v291[6] = sub_1B0398F5C;
    v172[7] = v171;

    v173 = v280;
    v174 = v291;
    v291[8] = sub_1B0398F5C;
    v174[9] = v173;

    v175 = v281;
    v176 = v291;
    v291[10] = sub_1B039BA94;
    v176[11] = v175;

    v177 = v282;
    v178 = v291;
    v291[12] = sub_1B0398F5C;
    v178[13] = v177;

    v179 = v283;
    v180 = v291;
    v291[14] = sub_1B0398F5C;
    v180[15] = v179;

    v181 = v284;
    v182 = v291;
    v291[16] = sub_1B0399178;
    v182[17] = v181;

    v183 = v285;
    v184 = v291;
    v291[18] = sub_1B0398F5C;
    v184[19] = v183;

    v185 = v286;
    v186 = v291;
    v291[20] = sub_1B0398F5C;
    v186[21] = v185;

    v187 = v287;
    v188 = v291;
    v291[22] = sub_1B03991EC;
    v188[23] = v187;

    v189 = v288;
    v190 = v291;
    v291[24] = sub_1B0398F5C;
    v190[25] = v189;

    v191 = v289;
    v192 = v291;
    v291[26] = sub_1B0398F5C;
    v192[27] = v191;

    v193 = v291;
    v194 = v292;
    v291[28] = sub_1B03991EC;
    v193[29] = v194;
    sub_1B0394964();

    if (os_log_type_enabled(v295, v294))
    {
      v195 = v517;
      v234 = sub_1B0E45D78();
      v230 = v234;
      v231 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
      v232 = 0;
      v235 = sub_1B03949A8(0, v231, v231);
      v233 = v235;
      v236 = sub_1B03949A8(v232, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
      v551 = v234;
      v550 = v235;
      v549 = v236;
      v237 = &v551;
      sub_1B0394A48(0, &v551);
      sub_1B0394A48(5, v237);
      v547 = sub_1B0398F5C;
      v548 = v246;
      sub_1B03949FC(&v547, v237, &v550, &v549);
      v238 = v195;
      v239 = v195;
      if (v195)
      {
        v228 = 0;

        __break(1u);
      }

      else
      {
        v547 = sub_1B0398F5C;
        v548 = v247;
        sub_1B03949FC(&v547, &v551, &v550, &v549);
        v226 = 0;
        v227 = 0;
        v547 = sub_1B0399178;
        v548 = v249;
        sub_1B03949FC(&v547, &v551, &v550, &v549);
        v224 = 0;
        v225 = 0;
        v547 = sub_1B0398F5C;
        v548 = v250;
        sub_1B03949FC(&v547, &v551, &v550, &v549);
        v222 = 0;
        v223 = 0;
        v547 = sub_1B0398F5C;
        v548 = v251;
        sub_1B03949FC(&v547, &v551, &v550, &v549);
        v220 = 0;
        v221 = 0;
        v547 = sub_1B039BA94;
        v548 = v254;
        sub_1B03949FC(&v547, &v551, &v550, &v549);
        v218 = 0;
        v219 = 0;
        v547 = sub_1B0398F5C;
        v548 = v256;
        sub_1B03949FC(&v547, &v551, &v550, &v549);
        v216 = 0;
        v217 = 0;
        v547 = sub_1B0398F5C;
        v548 = v257;
        sub_1B03949FC(&v547, &v551, &v550, &v549);
        v214 = 0;
        v215 = 0;
        v547 = sub_1B0399178;
        v548 = v260;
        sub_1B03949FC(&v547, &v551, &v550, &v549);
        v212 = 0;
        v213 = 0;
        v547 = sub_1B0398F5C;
        v548 = v261;
        sub_1B03949FC(&v547, &v551, &v550, &v549);
        v210 = 0;
        v211 = 0;
        v547 = sub_1B0398F5C;
        v548 = v262;
        sub_1B03949FC(&v547, &v551, &v550, &v549);
        v208 = 0;
        v209 = 0;
        v547 = sub_1B03991EC;
        v548 = v265;
        sub_1B03949FC(&v547, &v551, &v550, &v549);
        v206 = 0;
        v207 = 0;
        v547 = sub_1B0398F5C;
        v548 = v268;
        sub_1B03949FC(&v547, &v551, &v550, &v549);
        v204 = 0;
        v205 = 0;
        v547 = sub_1B0398F5C;
        v548 = v270;
        sub_1B03949FC(&v547, &v551, &v550, &v549);
        v202 = 0;
        v203 = 0;
        v547 = sub_1B03991EC;
        v548 = v275;
        sub_1B03949FC(&v547, &v551, &v550, &v549);
        v200 = 0;
        v201 = 0;
        _os_log_impl(&dword_1B0389000, v244, v245, "[%.*hhx-%.*X] Mailbox was de-selected while download was in-progress for UID %u. Download did not complete, yet. Tearing down.", v230, 0x1Du);
        v199 = 0;
        sub_1B03998A8(v233, 0, v231);
        sub_1B03998A8(v236, v199, MEMORY[0x1E69E7CA0] + 8);
        sub_1B0E45D58();

        v229 = v200;
      }
    }

    else
    {
      v196 = v517;

      v229 = v196;
    }

    v198 = v229;

    (*(v528 + 8))(v529, v526);
    sub_1B0760080();
    v395 = 1;
    v396 = v198;
    return v395 & 1;
  }

  v7 = v517;
  v503 = (v516 + OBJC_IVAR____TtC7Message25InProgressMessageDownload_sections);
  v507 = 32;
  v504 = v546;
  v505 = 0;
  swift_beginAccess();
  v511 = *v503;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  swift_endAccess();

  v506 = &v198;
  MEMORY[0x1EEE9AC00](v505);
  v8 = v516;
  *(&v198 - 2) = v9;
  *(&v198 - 1) = v8;
  v508 = &v198;
  MEMORY[0x1EEE9AC00](v10);
  v510 = &v198 - 4;
  *(&v198 - 2) = sub_1B07AB0F0;
  *(&v198 - 1) = v11;
  v512 = type metadata accessor for InProgressMessageDownload.Section(v12);
  v509 = v512;
  v513 = sub_1B07167A8();
  v13 = sub_1B0E44688();
  v514 = v7;
  v515 = v13;
  if (!v7)
  {
    v495 = v515;

    v497 = &unk_1EB737000;
    v494 = (v516 + OBJC_IVAR____TtC7Message25InProgressMessageDownload_sections);
    v496 = v545;
    v498 = 0;
    swift_beginAccess();
    *v494 = v495;

    swift_endAccess();
    v499 = (v516 + v497[341]);
    v500 = v544;
    swift_beginAccess();
    v501 = *v499;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    swift_endAccess();
    v502 = MEMORY[0x1B27267E0](v501, &type metadata for SectionSpecifier.Part, v509, v513);

    if (v502)
    {
      (*(v528 + 16))(v533, v525, v526);
      sub_1B0394784(v525, v524);
      sub_1B0394784(v524, v522);
      sub_1B03F4FD0(v524, v520);
      v14 = (v522 + *(v519 + 20));
      v439 = *v14;
      v440 = *(v14 + 1);
      sub_1B039480C(v522);
      v438 = 24;
      v470 = 7;
      v15 = swift_allocObject();
      v16 = v440;
      v450 = v15;
      *(v15 + 16) = v439;
      *(v15 + 20) = v16;
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      v17 = swift_allocObject();
      v18 = v440;
      v441 = v17;
      *(v17 + 16) = v439;
      *(v17 + 20) = v18;

      v469 = 32;
      v19 = swift_allocObject();
      v20 = v441;
      v461 = v19;
      *(v19 + 16) = sub_1B039BBE8;
      *(v19 + 24) = v20;
      sub_1B0394868();
      sub_1B0394868();

      sub_1B039480C(v520);

      v21 = swift_allocObject();
      v22 = v516;
      v471 = v21;
      *(v21 + 16) = sub_1B07AAFA4;
      *(v21 + 24) = v22;

      v493 = sub_1B0E43988();
      v442 = v493;
      v492 = sub_1B0E45908();
      v443 = v492;
      v465 = 17;
      v474 = swift_allocObject();
      v444 = v474;
      v453 = 16;
      *(v474 + 16) = 16;
      v475 = swift_allocObject();
      v445 = v475;
      v467 = 4;
      *(v475 + 16) = 4;
      v23 = swift_allocObject();
      v446 = v23;
      *(v23 + 16) = sub_1B0394C30;
      v456 = 0;
      *(v23 + 24) = 0;
      v24 = swift_allocObject();
      v25 = v446;
      v476 = v24;
      v447 = v24;
      *(v24 + 16) = sub_1B0394C24;
      *(v24 + 24) = v25;
      v477 = swift_allocObject();
      v448 = v477;
      v464 = 0;
      *(v477 + 16) = 0;
      v478 = swift_allocObject();
      v449 = v478;
      *(v478 + 16) = 1;
      v26 = swift_allocObject();
      v27 = v450;
      v451 = v26;
      *(v26 + 16) = sub_1B039BA2C;
      *(v26 + 24) = v27;
      v28 = swift_allocObject();
      v29 = v451;
      v479 = v28;
      v452 = v28;
      *(v28 + 16) = sub_1B039BA88;
      *(v28 + 24) = v29;
      v480 = swift_allocObject();
      v454 = v480;
      *(v480 + 16) = v453;
      v481 = swift_allocObject();
      v455 = v481;
      *(v481 + 16) = v467;
      v30 = swift_allocObject();
      v31 = v456;
      v457 = v30;
      *(v30 + 16) = sub_1B039BB94;
      *(v30 + 24) = v31;
      v32 = swift_allocObject();
      v33 = v457;
      v482 = v32;
      v458 = v32;
      *(v32 + 16) = sub_1B0394C24;
      *(v32 + 24) = v33;
      v483 = swift_allocObject();
      v459 = v483;
      *(v483 + 16) = v464;
      v484 = swift_allocObject();
      v460 = v484;
      *(v484 + 16) = v467;
      v34 = swift_allocObject();
      v35 = v461;
      v462 = v34;
      *(v34 + 16) = sub_1B039BBA0;
      *(v34 + 24) = v35;
      v36 = swift_allocObject();
      v37 = v462;
      v485 = v36;
      v463 = v36;
      *(v36 + 16) = sub_1B039BC08;
      *(v36 + 24) = v37;
      v486 = swift_allocObject();
      v466 = v486;
      *(v486 + 16) = v464;
      v487 = swift_allocObject();
      v468 = v487;
      *(v487 + 16) = v467;
      v38 = swift_allocObject();
      v39 = v471;
      v472 = v38;
      *(v38 + 16) = sub_1B07AB020;
      *(v38 + 24) = v39;
      v40 = swift_allocObject();
      v41 = v472;
      v490 = v40;
      v473 = v40;
      *(v40 + 16) = sub_1B039BC08;
      *(v40 + 24) = v41;
      v491 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
      v488 = sub_1B0E46A48();
      v489 = v42;

      v43 = v474;
      v44 = v489;
      *v489 = sub_1B0398F5C;
      v44[1] = v43;

      v45 = v475;
      v46 = v489;
      v489[2] = sub_1B0398F5C;
      v46[3] = v45;

      v47 = v476;
      v48 = v489;
      v489[4] = sub_1B0399178;
      v48[5] = v47;

      v49 = v477;
      v50 = v489;
      v489[6] = sub_1B0398F5C;
      v50[7] = v49;

      v51 = v478;
      v52 = v489;
      v489[8] = sub_1B0398F5C;
      v52[9] = v51;

      v53 = v479;
      v54 = v489;
      v489[10] = sub_1B039BA94;
      v54[11] = v53;

      v55 = v480;
      v56 = v489;
      v489[12] = sub_1B0398F5C;
      v56[13] = v55;

      v57 = v481;
      v58 = v489;
      v489[14] = sub_1B0398F5C;
      v58[15] = v57;

      v59 = v482;
      v60 = v489;
      v489[16] = sub_1B0399178;
      v60[17] = v59;

      v61 = v483;
      v62 = v489;
      v489[18] = sub_1B0398F5C;
      v62[19] = v61;

      v63 = v484;
      v64 = v489;
      v489[20] = sub_1B0398F5C;
      v64[21] = v63;

      v65 = v485;
      v66 = v489;
      v489[22] = sub_1B03991EC;
      v66[23] = v65;

      v67 = v486;
      v68 = v489;
      v489[24] = sub_1B0398F5C;
      v68[25] = v67;

      v69 = v487;
      v70 = v489;
      v489[26] = sub_1B0398F5C;
      v70[27] = v69;

      v71 = v489;
      v72 = v490;
      v489[28] = sub_1B03991EC;
      v71[29] = v72;
      sub_1B0394964();

      if (os_log_type_enabled(v493, v492))
      {
        v73 = v514;
        v432 = sub_1B0E45D78();
        v428 = v432;
        v429 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
        v430 = 0;
        v433 = sub_1B03949A8(0, v429, v429);
        v431 = v433;
        v434 = sub_1B03949A8(v430, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
        v538 = v432;
        v537 = v433;
        v536 = v434;
        v435 = &v538;
        sub_1B0394A48(0, &v538);
        sub_1B0394A48(5, v435);
        v534 = sub_1B0398F5C;
        v535 = v444;
        sub_1B03949FC(&v534, v435, &v537, &v536);
        v436 = v73;
        v437 = v73;
        if (v73)
        {
          v426 = 0;

          __break(1u);
        }

        else
        {
          v534 = sub_1B0398F5C;
          v535 = v445;
          sub_1B03949FC(&v534, &v538, &v537, &v536);
          v424 = 0;
          v425 = 0;
          v534 = sub_1B0399178;
          v535 = v447;
          sub_1B03949FC(&v534, &v538, &v537, &v536);
          v422 = 0;
          v423 = 0;
          v534 = sub_1B0398F5C;
          v535 = v448;
          sub_1B03949FC(&v534, &v538, &v537, &v536);
          v420 = 0;
          v421 = 0;
          v534 = sub_1B0398F5C;
          v535 = v449;
          sub_1B03949FC(&v534, &v538, &v537, &v536);
          v418 = 0;
          v419 = 0;
          v534 = sub_1B039BA94;
          v535 = v452;
          sub_1B03949FC(&v534, &v538, &v537, &v536);
          v416 = 0;
          v417 = 0;
          v534 = sub_1B0398F5C;
          v535 = v454;
          sub_1B03949FC(&v534, &v538, &v537, &v536);
          v414 = 0;
          v415 = 0;
          v534 = sub_1B0398F5C;
          v535 = v455;
          sub_1B03949FC(&v534, &v538, &v537, &v536);
          v412 = 0;
          v413 = 0;
          v534 = sub_1B0399178;
          v535 = v458;
          sub_1B03949FC(&v534, &v538, &v537, &v536);
          v410 = 0;
          v411 = 0;
          v534 = sub_1B0398F5C;
          v535 = v459;
          sub_1B03949FC(&v534, &v538, &v537, &v536);
          v408 = 0;
          v409 = 0;
          v534 = sub_1B0398F5C;
          v535 = v460;
          sub_1B03949FC(&v534, &v538, &v537, &v536);
          v406 = 0;
          v407 = 0;
          v534 = sub_1B03991EC;
          v535 = v463;
          sub_1B03949FC(&v534, &v538, &v537, &v536);
          v404 = 0;
          v405 = 0;
          v534 = sub_1B0398F5C;
          v535 = v466;
          sub_1B03949FC(&v534, &v538, &v537, &v536);
          v402 = 0;
          v403 = 0;
          v534 = sub_1B0398F5C;
          v535 = v468;
          sub_1B03949FC(&v534, &v538, &v537, &v536);
          v400 = 0;
          v401 = 0;
          v534 = sub_1B03991EC;
          v535 = v473;
          sub_1B03949FC(&v534, &v538, &v537, &v536);
          v398 = 0;
          v399 = 0;
          _os_log_impl(&dword_1B0389000, v442, v443, "[%.*hhx-%.*X] Mailbox was de-selected while download was in-progress for UID %u. Tearing down.", v428, 0x1Du);
          v397 = 0;
          sub_1B03998A8(v431, 0, v429);
          sub_1B03998A8(v434, v397, MEMORY[0x1E69E7CA0] + 8);
          sub_1B0E45D58();

          v427 = v398;
        }
      }

      else
      {
        v74 = v514;

        v427 = v74;
      }

      v394 = v427;

      (*(v528 + 8))(v533, v526);
      sub_1B0760080();
      v395 = 1;
      v396 = v394;
    }

    else
    {
      (*(v528 + 16))(v531, v525, v526);
      sub_1B0394784(v525, v524);
      sub_1B0394784(v524, v522);
      sub_1B03F4FD0(v524, v520);
      v75 = (v522 + *(v519 + 20));
      v339 = *v75;
      v340 = *(v75 + 1);
      sub_1B039480C(v522);
      v338 = 24;
      v370 = 7;
      v76 = swift_allocObject();
      v77 = v340;
      v350 = v76;
      *(v76 + 16) = v339;
      *(v76 + 20) = v77;
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      v78 = swift_allocObject();
      v79 = v340;
      v341 = v78;
      *(v78 + 16) = v339;
      *(v78 + 20) = v79;

      v369 = 32;
      v80 = swift_allocObject();
      v81 = v341;
      v361 = v80;
      *(v80 + 16) = sub_1B039BBE8;
      *(v80 + 24) = v81;
      sub_1B0394868();
      sub_1B0394868();

      sub_1B039480C(v520);

      v82 = swift_allocObject();
      v83 = v516;
      v371 = v82;
      *(v82 + 16) = sub_1B07AAFA4;
      *(v82 + 24) = v83;

      v393 = sub_1B0E43988();
      v342 = v393;
      v392 = sub_1B0E45908();
      v343 = v392;
      v365 = 17;
      v374 = swift_allocObject();
      v344 = v374;
      v353 = 16;
      *(v374 + 16) = 16;
      v375 = swift_allocObject();
      v345 = v375;
      v367 = 4;
      *(v375 + 16) = 4;
      v84 = swift_allocObject();
      v346 = v84;
      *(v84 + 16) = sub_1B0394C30;
      v356 = 0;
      *(v84 + 24) = 0;
      v85 = swift_allocObject();
      v86 = v346;
      v376 = v85;
      v347 = v85;
      *(v85 + 16) = sub_1B0394C24;
      *(v85 + 24) = v86;
      v377 = swift_allocObject();
      v348 = v377;
      v364 = 0;
      *(v377 + 16) = 0;
      v378 = swift_allocObject();
      v349 = v378;
      *(v378 + 16) = 1;
      v87 = swift_allocObject();
      v88 = v350;
      v351 = v87;
      *(v87 + 16) = sub_1B039BA2C;
      *(v87 + 24) = v88;
      v89 = swift_allocObject();
      v90 = v351;
      v379 = v89;
      v352 = v89;
      *(v89 + 16) = sub_1B039BA88;
      *(v89 + 24) = v90;
      v380 = swift_allocObject();
      v354 = v380;
      *(v380 + 16) = v353;
      v381 = swift_allocObject();
      v355 = v381;
      *(v381 + 16) = v367;
      v91 = swift_allocObject();
      v92 = v356;
      v357 = v91;
      *(v91 + 16) = sub_1B039BB94;
      *(v91 + 24) = v92;
      v93 = swift_allocObject();
      v94 = v357;
      v382 = v93;
      v358 = v93;
      *(v93 + 16) = sub_1B0394C24;
      *(v93 + 24) = v94;
      v383 = swift_allocObject();
      v359 = v383;
      *(v383 + 16) = v364;
      v384 = swift_allocObject();
      v360 = v384;
      *(v384 + 16) = v367;
      v95 = swift_allocObject();
      v96 = v361;
      v362 = v95;
      *(v95 + 16) = sub_1B039BBA0;
      *(v95 + 24) = v96;
      v97 = swift_allocObject();
      v98 = v362;
      v385 = v97;
      v363 = v97;
      *(v97 + 16) = sub_1B039BC08;
      *(v97 + 24) = v98;
      v386 = swift_allocObject();
      v366 = v386;
      *(v386 + 16) = v364;
      v387 = swift_allocObject();
      v368 = v387;
      *(v387 + 16) = v367;
      v99 = swift_allocObject();
      v100 = v371;
      v372 = v99;
      *(v99 + 16) = sub_1B07AB020;
      *(v99 + 24) = v100;
      v101 = swift_allocObject();
      v102 = v372;
      v390 = v101;
      v373 = v101;
      *(v101 + 16) = sub_1B039BC08;
      *(v101 + 24) = v102;
      v391 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
      v388 = sub_1B0E46A48();
      v389 = v103;

      v104 = v374;
      v105 = v389;
      *v389 = sub_1B0398F5C;
      v105[1] = v104;

      v106 = v375;
      v107 = v389;
      v389[2] = sub_1B0398F5C;
      v107[3] = v106;

      v108 = v376;
      v109 = v389;
      v389[4] = sub_1B0399178;
      v109[5] = v108;

      v110 = v377;
      v111 = v389;
      v389[6] = sub_1B0398F5C;
      v111[7] = v110;

      v112 = v378;
      v113 = v389;
      v389[8] = sub_1B0398F5C;
      v113[9] = v112;

      v114 = v379;
      v115 = v389;
      v389[10] = sub_1B039BA94;
      v115[11] = v114;

      v116 = v380;
      v117 = v389;
      v389[12] = sub_1B0398F5C;
      v117[13] = v116;

      v118 = v381;
      v119 = v389;
      v389[14] = sub_1B0398F5C;
      v119[15] = v118;

      v120 = v382;
      v121 = v389;
      v389[16] = sub_1B0399178;
      v121[17] = v120;

      v122 = v383;
      v123 = v389;
      v389[18] = sub_1B0398F5C;
      v123[19] = v122;

      v124 = v384;
      v125 = v389;
      v389[20] = sub_1B0398F5C;
      v125[21] = v124;

      v126 = v385;
      v127 = v389;
      v389[22] = sub_1B03991EC;
      v127[23] = v126;

      v128 = v386;
      v129 = v389;
      v389[24] = sub_1B0398F5C;
      v129[25] = v128;

      v130 = v387;
      v131 = v389;
      v389[26] = sub_1B0398F5C;
      v131[27] = v130;

      v132 = v389;
      v133 = v390;
      v389[28] = sub_1B03991EC;
      v132[29] = v133;
      sub_1B0394964();

      if (os_log_type_enabled(v393, v392))
      {
        v134 = v514;
        v332 = sub_1B0E45D78();
        v328 = v332;
        v329 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
        v330 = 0;
        v333 = sub_1B03949A8(0, v329, v329);
        v331 = v333;
        v334 = sub_1B03949A8(v330, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
        v543 = v332;
        v542 = v333;
        v541 = v334;
        v335 = &v543;
        sub_1B0394A48(0, &v543);
        sub_1B0394A48(5, v335);
        v539 = sub_1B0398F5C;
        v540 = v344;
        sub_1B03949FC(&v539, v335, &v542, &v541);
        v336 = v134;
        v337 = v134;
        if (v134)
        {
          v326 = 0;

          __break(1u);
        }

        else
        {
          v539 = sub_1B0398F5C;
          v540 = v345;
          sub_1B03949FC(&v539, &v543, &v542, &v541);
          v324 = 0;
          v325 = 0;
          v539 = sub_1B0399178;
          v540 = v347;
          sub_1B03949FC(&v539, &v543, &v542, &v541);
          v322 = 0;
          v323 = 0;
          v539 = sub_1B0398F5C;
          v540 = v348;
          sub_1B03949FC(&v539, &v543, &v542, &v541);
          v320 = 0;
          v321 = 0;
          v539 = sub_1B0398F5C;
          v540 = v349;
          sub_1B03949FC(&v539, &v543, &v542, &v541);
          v318 = 0;
          v319 = 0;
          v539 = sub_1B039BA94;
          v540 = v352;
          sub_1B03949FC(&v539, &v543, &v542, &v541);
          v316 = 0;
          v317 = 0;
          v539 = sub_1B0398F5C;
          v540 = v354;
          sub_1B03949FC(&v539, &v543, &v542, &v541);
          v314 = 0;
          v315 = 0;
          v539 = sub_1B0398F5C;
          v540 = v355;
          sub_1B03949FC(&v539, &v543, &v542, &v541);
          v312 = 0;
          v313 = 0;
          v539 = sub_1B0399178;
          v540 = v358;
          sub_1B03949FC(&v539, &v543, &v542, &v541);
          v310 = 0;
          v311 = 0;
          v539 = sub_1B0398F5C;
          v540 = v359;
          sub_1B03949FC(&v539, &v543, &v542, &v541);
          v308 = 0;
          v309 = 0;
          v539 = sub_1B0398F5C;
          v540 = v360;
          sub_1B03949FC(&v539, &v543, &v542, &v541);
          v306 = 0;
          v307 = 0;
          v539 = sub_1B03991EC;
          v540 = v363;
          sub_1B03949FC(&v539, &v543, &v542, &v541);
          v304 = 0;
          v305 = 0;
          v539 = sub_1B0398F5C;
          v540 = v366;
          sub_1B03949FC(&v539, &v543, &v542, &v541);
          v302 = 0;
          v303 = 0;
          v539 = sub_1B0398F5C;
          v540 = v368;
          sub_1B03949FC(&v539, &v543, &v542, &v541);
          v300 = 0;
          v301 = 0;
          v539 = sub_1B03991EC;
          v540 = v373;
          sub_1B03949FC(&v539, &v543, &v542, &v541);
          v298 = 0;
          v299 = 0;
          _os_log_impl(&dword_1B0389000, v342, v343, "[%.*hhx-%.*X] Mailbox was de-selected while download was in-progress for UID %u. Waiting for file writer(s) to complete.", v328, 0x1Du);
          v297 = 0;
          sub_1B03998A8(v331, 0, v329);
          sub_1B03998A8(v334, v297, MEMORY[0x1E69E7CA0] + 8);
          sub_1B0E45D58();

          v327 = v298;
        }
      }

      else
      {
        v135 = v514;

        v327 = v135;
      }

      v296 = v327;

      (*(v528 + 8))(v531, v526);
      v395 = 0;
      v396 = v296;
    }

    return v395 & 1;
  }

  __break(1u);
  return result;
}