void sub_20BE012BC(uint64_t a1, uint64_t a2, __int128 *a3)
{
  v4 = sub_20C133244();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v24[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v8 = type metadata accessor for ShelfItemAction(0);
  MEMORY[0x28223BE20](v8);
  v10 = &v24[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v12 = Strong;
    v13 = swift_unknownObjectWeakLoadStrong();
    if (v13)
    {
      v14 = v13;
      v16 = *a3;
      v15 = a3[1];
      v25 = a3[2];
      v17 = v25;
      v26 = v15;
      *v10 = v16;
      v10[1] = v15;
      v10[2] = v17;
      v18 = swift_storeEnumTagMultiPayload();
      MEMORY[0x28223BE20](v18);
      *(&v23 - 4) = 0;
      *(&v23 - 24) = 1;
      *(&v23 - 2) = v10;
      *(&v23 - 1) = v14;
      v19 = *(v14 + OBJC_IVAR____TtC9SeymourUI11CatalogPage_collectionView);
      sub_20BE027C4(&v26, v24);
      sub_20BE027C4(&v25, v24);
      v20 = v12;
      v21 = [v19 indexPathForCell_];
      if (v21)
      {
        v22 = v21;
        sub_20C1331E4();

        sub_20C0C1CDC(v7, sub_20B5E275C);
        (*(v5 + 8))(v7, v4);
      }

      swift_unknownObjectRelease();

      sub_20B5E2760(v10);
    }

    else
    {
    }
  }
}

id sub_20BE0151C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ActivityPickerCell(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for ActivityPickerCell(uint64_t a1)
{
  result = qword_281103188;
  if (!qword_281103188)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_20BE0167C(uint64_t a1)
{
  sub_20B5E238C(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_20BE01734()
{
  v1 = sub_20C133244();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for ShelfItemAction(0);
  MEMORY[0x28223BE20](v5);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v9 = result;
    v10 = swift_storeEnumTagMultiPayload();
    v11 = MEMORY[0x28223BE20](v10);
    *(&v14 - 4) = 0;
    *(&v14 - 24) = 1;
    *(&v14 - 2) = v7;
    *(&v14 - 1) = v9;
    v12 = [*(v9 + OBJC_IVAR____TtC9SeymourUI11CatalogPage_collectionView) indexPathForCell_];
    if (v12)
    {
      v13 = v12;
      sub_20C1331E4();

      sub_20C0C1CDC(v4, sub_20B5E2A84);
      (*(v2 + 8))(v4, v1);
    }

    swift_unknownObjectRelease();
    return sub_20B5E2760(v7);
  }

  return result;
}

uint64_t sub_20BE01960(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 160))
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

uint64_t sub_20BE019A8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 152) = 0;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 160) = 1;
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

    *(result + 160) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

double sub_20BE01A20(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC9SeymourUI18ActivityPickerCell_delegate + 8) = a2;
  swift_unknownObjectWeakAssign();

  swift_unknownObjectRelease();
  return result;
}

uint64_t sub_20BE01A6C@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC9SeymourUI18ActivityPickerCell_itemInfo;
  swift_beginAccess();
  return sub_20B52F9E8(v1 + v3, a1, &qword_27C762550, &unk_20C1505A0);
}

uint64_t sub_20BE01AD4(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9SeymourUI18ActivityPickerCell_itemInfo;
  swift_beginAccess();
  sub_20B5E267C(a1, v1 + v3);
  return swift_endAccess();
}

void sub_20BE01B38(unint64_t a1)
{
  v3 = sub_20C13BB84();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v84 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (((a1 >> 57) & 0x78 | a1 & 7) != 4)
  {
    sub_20C13B534();

    v23 = v1;
    v24 = sub_20C13BB74();
    v25 = sub_20C13D1D4();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v89 = swift_slowAlloc();
      v92 = a1;
      v93 = v89;
      *v26 = 138543874;
      *(v26 + 4) = v23;
      *v27 = v23;
      *(v26 + 12) = 2160;
      *(v26 + 14) = 1752392040;
      *(v26 + 22) = 2080;
      v28 = sub_20B5F66D0();
      v29 = v23;
      v30 = MEMORY[0x20F2EFA40](&type metadata for ShelfItem, v28);
      v32 = sub_20B51E694(v30, v31, &v93);

      *(v26 + 24) = v32;
      _os_log_impl(&dword_20B517000, v24, v25, "Attempted to configure %{public}@ with item: %{mask.hash}s", v26, 0x20u);
      sub_20B520158(v27, &unk_27C762E30, &unk_20C150580);
      MEMORY[0x20F2F6A40](v27, -1, -1);
      v33 = v89;
      __swift_destroy_boxed_opaque_existential_1(v89);
      MEMORY[0x20F2F6A40](v33, -1, -1);
      MEMORY[0x20F2F6A40](v26, -1, -1);
    }

    (*(v4 + 8))(v6, v3);
    return;
  }

  v89 = v1;
  v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v84[2] = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x18);
  v8 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x20);
  v9 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x28);
  v10 = MEMORY[0x277D84F90];
  v93 = MEMORY[0x277D84F90];
  v11 = *(v7 + 16);

  v84[1] = v8;

  v86 = v9;
  v87 = v7;
  v85 = v11;
  if (v11)
  {
    v12 = 0;
    v13 = (v7 + 72);
    while (v12 < *(v87 + 16))
    {
      v14 = *(v13 - 32);
      v16 = *(v13 - 1);
      v15 = *v13;
      v17 = *(v13 - 2);
      v88 = *(v13 - 3);
      v18 = *(v13 - 5);
      swift_bridgeObjectRetain_n();

      sub_20B9C7E94(v18);
      v19 = sub_20C13C914();

      v20 = [objc_opt_self() smm:v19 systemImageNamed:?];

      v11 = [v20 imageWithRenderingMode_];
      sub_20B51C88C(0, &qword_27C7713A0, 0x277D750C8);
      v21 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v22 = swift_allocObject();
      *(v22 + 16) = v21;
      *(v22 + 24) = v18;
      *(v22 + 32) = v14;
      *(v22 + 40) = v88;
      *(v22 + 48) = v17;
      *(v22 + 56) = v16;
      *(v22 + 64) = v15;
      sub_20C13D624();
      MEMORY[0x20F2F43B0]();
      if (*((v93 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v93 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_20C13CCA4();
      }

      ++v12;
      sub_20C13CCE4();
      v13 += 6;
      if (v85 == v12)
      {
        v34 = v93;
        v9 = v86;
        v7 = v87;
        v10 = MEMORY[0x277D84F90];
        goto LABEL_13;
      }
    }

LABEL_67:
    __break(1u);
    goto LABEL_68;
  }

  v34 = v10;
LABEL_13:
  v84[0] = v34;
  v93 = v10;
  v85 = *(v9 + 16);
  if (v85)
  {
    v35 = 0;
    v12 = v9 + 72;
    while (v35 < *(v86 + 16))
    {
      v36 = *(v12 - 32);
      v38 = *(v12 - 8);
      v37 = *v12;
      v11 = *(v12 - 16);
      v88 = *(v12 - 24);
      v39 = *(v12 - 40);
      swift_bridgeObjectRetain_n();

      sub_20B9C7E94(v39);
      v40 = sub_20C13C914();

      v41 = [objc_opt_self() smm:v40 systemImageNamed:?];

      v42 = [v41 imageWithRenderingMode_];
      sub_20B51C88C(0, &qword_27C7713A0, 0x277D750C8);
      v43 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v44 = swift_allocObject();
      *(v44 + 16) = v43;
      *(v44 + 24) = v39;
      *(v44 + 32) = v36;
      *(v44 + 33) = v92;
      *(v44 + 36) = *(&v92 + 3);
      *(v44 + 40) = v88;
      *(v44 + 48) = v11;
      *(v44 + 56) = v38;
      *(v44 + 64) = v37;
      sub_20C13D624();
      MEMORY[0x20F2F43B0]();
      if (*((v93 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v93 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_20C13CCA4();
      }

      ++v35;
      sub_20C13CCE4();
      v12 += 48;
      if (v85 == v35)
      {
        v12 = v93;
        v9 = v86;
        v7 = v87;
        v10 = MEMORY[0x277D84F90];
        goto LABEL_21;
      }
    }

LABEL_68:
    __break(1u);
    goto LABEL_69;
  }

  v12 = v10;
LABEL_21:
  v90 = v7;
  v91 = v9;
  v45 = *(v7 + 16);
  v46 = *(v10 + 16);
  v47 = v46 + v45;
  if (__OFADD__(v46, v45))
  {
    goto LABEL_69;
  }

  v48 = MEMORY[0x277D84F90];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (!isUniquelyReferenced_nonNull_native || v47 > *(v48 + 3) >> 1)
  {
    if (v46 <= v47)
    {
      v50 = v46 + v45;
    }

    else
    {
      v50 = v46;
    }

    v48 = sub_20BC057DC(isUniquelyReferenced_nonNull_native, v50, 1, MEMORY[0x277D84F90]);
  }

  if (*(v87 + 16))
  {
    if ((*(v48 + 3) >> 1) - *(v48 + 2) < v45)
    {
      goto LABEL_71;
    }

    swift_arrayInitWithCopy();

    v51 = *(v48 + 2);
    if (v45)
    {
      v52 = __OFADD__(v51, v45);
      v51 += v45;
      if (v52)
      {
        goto LABEL_74;
      }

      *(v48 + 2) = v51;
    }
  }

  else
  {

    if (v45)
    {
      goto LABEL_70;
    }

    v51 = *(v48 + 2);
  }

  v53 = *(v9 + 16);
  v54 = v51 + v53;
  if (__OFADD__(v51, v53))
  {
LABEL_69:
    __break(1u);
    goto LABEL_70;
  }

  v55 = swift_isUniquelyReferenced_nonNull_native();
  if (v55 && v54 <= *(v48 + 3) >> 1)
  {
    if (*(v9 + 16))
    {
      goto LABEL_39;
    }

    goto LABEL_47;
  }

  if (v51 <= v54)
  {
    v58 = v51 + v53;
  }

  else
  {
    v58 = v51;
  }

  v48 = sub_20BC057DC(v55, v58, 1, v48);
  if (!*(v9 + 16))
  {
LABEL_47:

    if (!v53)
    {
LABEL_48:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76F408, &unk_20C17EE48);
      swift_arrayDestroy();
      v11 = 0;
      v59 = *(v48 + 2);
      v60 = MEMORY[0x277D84F90];
LABEL_49:
      v61 = 48 * v11;
      while (v59 != v11)
      {
        if (v11 >= *(v48 + 2))
        {
          __break(1u);
          goto LABEL_67;
        }

        ++v11;
        v62 = v61 + 48;
        v63 = v48[v61 + 40];
        v61 += 48;
        if (v63)
        {
          v64 = *&v48[v62 - 16];
          v66 = *&v48[v62];
          v65 = *&v48[v62 + 8];
          v68 = *&v48[v62 + 16];
          v67 = *&v48[v62 + 24];

          v69 = swift_isUniquelyReferenced_nonNull_native();
          v93 = v60;
          v87 = v64;
          v88 = v12;
          if ((v69 & 1) == 0)
          {
            sub_20BB5D450(0, v60[2] + 1, 1);
            v60 = v93;
          }

          v71 = v60[2];
          v70 = v60[3];
          if (v71 >= v70 >> 1)
          {
            sub_20BB5D450((v70 > 1), v71 + 1, 1);
            v60 = v93;
          }

          v60[2] = v71 + 1;
          v72 = &v60[6 * v71];
          v12 = v88;
          v72[4] = v87;
          *(v72 + 40) = 1;
          v72[6] = v66;
          v72[7] = v65;
          v72[8] = v68;
          v72[9] = v67;
          goto LABEL_49;
        }
      }

      if (v60[2])
      {
        v73 = v60[4];

        v11 = v89;
        v74 = *(v89 + OBJC_IVAR____TtC9SeymourUI18ActivityPickerCell_iconImageView);
        sub_20B9C7E94(v73);
        v75 = sub_20C13C914();

        v76 = [objc_opt_self() smm:v75 systemImageNamed:?];

        v77 = [v76 imageWithRenderingMode_];
        [v74 setImage_];
      }

      else
      {

        v11 = v89;
        [*(v89 + OBJC_IVAR____TtC9SeymourUI18ActivityPickerCell_iconImageView) setImage_];
      }

      if (!(v84[0] >> 62))
      {

        sub_20C13E004();
        sub_20B51C88C(0, &qword_27C764F30, 0x277D75720);
        goto LABEL_63;
      }

      goto LABEL_72;
    }

LABEL_70:
    __break(1u);
    goto LABEL_71;
  }

LABEL_39:
  if ((*(v48 + 3) >> 1) - *(v48 + 2) >= v53)
  {
    swift_arrayInitWithCopy();

    if (!v53)
    {
      goto LABEL_48;
    }

    v56 = *(v48 + 2);
    v52 = __OFADD__(v56, v53);
    v57 = v56 + v53;
    if (!v52)
    {
      *(v48 + 2) = v57;
      goto LABEL_48;
    }

LABEL_74:
    __break(1u);
    return;
  }

LABEL_71:
  __break(1u);
LABEL_72:
  sub_20B51C88C(0, &qword_27C764F30, 0x277D75720);

  sub_20C13DE34();

LABEL_63:

  sub_20B51C88C(0, &unk_27C76FED0, 0x277D75710);
  v78 = sub_20C13D554();
  if (v12 >> 62)
  {
    sub_20B51C88C(0, &qword_27C764F30, 0x277D75720);

    v79 = sub_20C13DE34();
  }

  else
  {

    sub_20C13E004();
    sub_20B51C88C(0, &qword_27C764F30, 0x277D75720);
    v79 = v12;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0, &unk_20C14F960);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20C14F580;
  *(inited + 32) = v78;
  v93 = v79;
  v81 = v78;
  sub_20B8D904C(inited);
  v82 = sub_20C13D554();
  v83 = *(v11 + OBJC_IVAR____TtC9SeymourUI18ActivityPickerCell_pickerButton);
  [v83 setMenu_];
  [v83 addTarget:v11 action:sel_menuOpened forControlEvents:0x4000];
  [v11 smu:v83 setPopUpMenuButton:?];
}

uint64_t objectdestroy_16Tm_0()
{

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

void sub_20BE02820(void *a1@<X8>)
{
  v2 = objc_opt_self();
  v16 = [v2 tertiarySystemBackgroundColor];
  v15 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.650980392 green:1.0 blue:0.0 alpha:1.0];
  v14 = [v2 whiteColor];
  v13 = [v2 whiteColor];
  v3 = *MEMORY[0x277D76918];
  v4 = MEMORY[0x277D84FA0];
  sub_20C13E164();
  v12 = v3;
  sub_20C13CA64();
  v5 = sub_20C13E1B4();
  v6 = -1 << *(v4 + 32);
  v7 = v5 & ~v6;
  if ((*(v4 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v7))
  {
    v8 = ~v6;
    while (1)
    {
      v9 = *(*(v4 + 48) + v7);
      if (v9 > 1 && v9 != 3 && v9 != 4)
      {
        break;
      }

      v10 = sub_20C13DFF4();

      if (v10)
      {
        goto LABEL_9;
      }

      v7 = (v7 + 1) & v8;
      if (((*(v4 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v7) & 1) == 0)
      {
        goto LABEL_8;
      }
    }

    v4 = MEMORY[0x277D84FA0];
  }

  else
  {
LABEL_8:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_20B706478(2u, v7, isUniquelyReferenced_nonNull_native);
  }

LABEL_9:
  *a1 = v16;
  a1[1] = v15;
  a1[2] = v14;
  a1[3] = v13;
  a1[4] = 0;
  a1[5] = 0;
  a1[6] = v12;
  a1[7] = 0x90000000002;
  a1[8] = 0;
  a1[9] = 1;
  a1[10] = v4;
}

void sub_20BE02AC4()
{
  *(v0 + OBJC_IVAR____TtC9SeymourUI18ActivityPickerCell_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v1 = OBJC_IVAR____TtC9SeymourUI18ActivityPickerCell_itemInfo;
  v2 = type metadata accessor for ShelfCellItemInfo(0);
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  v3 = OBJC_IVAR____TtC9SeymourUI18ActivityPickerCell_iconImageView;
  v4 = [objc_allocWithZone(MEMORY[0x277D755E8]) init];
  [v4 setTranslatesAutoresizingMaskIntoConstraints_];
  *(v0 + v3) = v4;
  v5 = OBJC_IVAR____TtC9SeymourUI18ActivityPickerCell_iconImageViewBackground;
  v6 = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  [v6 setTranslatesAutoresizingMaskIntoConstraints_];
  *(v0 + v5) = v6;
  v7 = OBJC_IVAR____TtC9SeymourUI18ActivityPickerCell_pickerButton;
  type metadata accessor for MenuPickerButton();
  v8 = [swift_getObjCClassFromMetadata() buttonWithType_];
  [v8 setTranslatesAutoresizingMaskIntoConstraints_];
  *(v0 + v7) = v8;
  v9 = v0 + OBJC_IVAR____TtC9SeymourUI18ActivityPickerCell_styleProvider;
  sub_20BE02820(v17);
  sub_20C13D514();
  v10 = v17[3];
  *(v9 + 32) = v17[2];
  *(v9 + 48) = v10;
  *(v9 + 64) = v17[4];
  v11 = v18;
  v12 = v17[1];
  *v9 = v17[0];
  *(v9 + 16) = v12;
  *(v9 + 80) = v11;
  *(v9 + 88) = 0x4030000000000000;
  *(v9 + 96) = v13;
  *(v9 + 104) = v14;
  *(v9 + 112) = xmmword_20C17ECD0;
  *(v9 + 128) = xmmword_20C17ECE0;
  *(v9 + 144) = xmmword_20C17ECE0;
  v15 = OBJC_IVAR____TtC9SeymourUI18ActivityPickerCell_titleLabel;
  v16 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  [v16 setTranslatesAutoresizingMaskIntoConstraints_];
  *(v0 + v15) = v16;
  sub_20C13DE24();
  __break(1u);
}

unint64_t sub_20BE02D34()
{
  result = qword_27C76F410;
  if (!qword_27C76F410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C76F410);
  }

  return result;
}

void sub_20BE02D88()
{
  if (*(v0 + 56))
  {
    v1 = [objc_opt_self() mainScreen];
    [v1 bounds];
    v3 = v2;
    v5 = v4;
    v7 = v6;
    v9 = v8;

    v14.origin.x = v3;
    v14.origin.y = v5;
    v14.size.width = v7;
    v14.size.height = v9;
    Width = CGRectGetWidth(v14);
    v15.origin.x = v3;
    v15.origin.y = v5;
    v15.size.width = v7;
    v15.size.height = v9;
    Height = CGRectGetHeight(v15);
    if (Height >= Width)
    {
      v12 = Width;
    }

    else
    {
      v12 = Height;
    }

    if (qword_27C7606D0 != -1)
    {
      swift_once();
    }

    v13 = *&qword_27C799F40;
    if (qword_27C7606E0 != -1)
    {
      swift_once();
    }

    *(v0 + 48) = (v12 - (v13 + *&qword_27C799F50)) * 0.5;
    *(v0 + 56) = 0;
  }
}

char *sub_20BE02ECC(double a1, double a2, double a3, double a4)
{
  *&v4[OBJC_IVAR____TtC9SeymourUI28WorkoutPlanScheduledItemCell_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v9 = OBJC_IVAR____TtC9SeymourUI28WorkoutPlanScheduledItemCell_itemInfo;
  v10 = type metadata accessor for ShelfCellItemInfo(0);
  (*(*(v10 - 8) + 56))(&v4[v9], 1, 1, v10);
  v4[OBJC_IVAR____TtC9SeymourUI28WorkoutPlanScheduledItemCell_showSeparator] = 1;
  v11 = [objc_allocWithZone(type metadata accessor for ArtworkView(0)) initWithFrame_];
  [v11 setTranslatesAutoresizingMaskIntoConstraints_];
  if (_UISolariumEnabled())
  {
    v12 = 16.0;
  }

  else
  {
    v12 = 4.0;
  }

  v13 = &v4[OBJC_IVAR____TtC9SeymourUI28WorkoutPlanScheduledItemCell_artworkView];
  v14 = [v11 layer];
  [v14 setCornerRadius_];

  [v11 setClipsToBounds_];
  *v13 = v11;
  v13[1] = &off_2822B63E8;
  v15 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  [v15 setTranslatesAutoresizingMaskIntoConstraints_];
  [v15 setAdjustsFontForContentSizeCategory_];
  v16 = *MEMORY[0x277D76940];
  v17 = objc_opt_self();
  v18 = [v17 preferredFontDescriptorWithTextStyle:v16 compatibleWithTraitCollection:0];
  v19 = [v18 fontDescriptorWithSymbolicTraits_];
  if (v19)
  {
    v20 = v19;

    v18 = v20;
  }

  v21 = OBJC_IVAR____TtC9SeymourUI28WorkoutPlanScheduledItemCell_captionLabel;
  v22 = objc_opt_self();
  v23 = [v22 fontWithDescriptor:v18 size:0.0];

  [v15 setFont_];
  [v15 setLineBreakMode_];
  [v15 setNumberOfLines_];
  [v15 setAllowsDefaultTighteningForTruncation_];
  v24 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.650980392 green:1.0 blue:0.0 alpha:1.0];
  [v15 setTextColor_];

  v25 = objc_opt_self();
  v26 = [v25 systemBackgroundColor];
  [v15 setBackgroundColor_];

  *&v4[v21] = v15;
  v27 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  [v27 setTranslatesAutoresizingMaskIntoConstraints_];
  [v27 setAdjustsFontForContentSizeCategory_];
  v28 = [v17 preferredFontDescriptorWithTextStyle:*MEMORY[0x277D769D0] compatibleWithTraitCollection:0];
  v29 = [v28 fontDescriptorWithSymbolicTraits_];
  if (v29)
  {
    v30 = v29;

    v28 = v30;
  }

  v31 = OBJC_IVAR____TtC9SeymourUI28WorkoutPlanScheduledItemCell_titleLabel;
  v32 = [v22 fontWithDescriptor:v28 size:0.0];

  [v27 setFont_];
  [v27 setAllowsDefaultTighteningForTruncation_];
  v33 = [v25 whiteColor];
  [v27 setTextColor_];

  [v27 setNumberOfLines_];
  [v27 setLineBreakMode_];
  *&v4[v31] = v27;
  v34 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  [v34 setTranslatesAutoresizingMaskIntoConstraints_];
  [v34 setAdjustsFontForContentSizeCategory_];
  v35 = [v17 preferredFontDescriptorWithTextStyle:*MEMORY[0x277D76968] compatibleWithTraitCollection:0];
  v36 = [v35 fontDescriptorWithSymbolicTraits_];
  if (v36)
  {
    v37 = v36;

    v35 = v37;
  }

  v38 = OBJC_IVAR____TtC9SeymourUI28WorkoutPlanScheduledItemCell_subtitleLabel;
  v39 = [v22 fontWithDescriptor:v35 size:0.0];

  [v34 setFont_];
  [v34 setAllowsDefaultTighteningForTruncation_];
  v40 = [v25 secondaryLabelColor];
  [v34 setTextColor_];

  [v34 setNumberOfLines_];
  [v34 setLineBreakMode_];
  *&v4[v38] = v34;
  v41 = OBJC_IVAR____TtC9SeymourUI28WorkoutPlanScheduledItemCell_separator;
  v42 = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  [v42 setTranslatesAutoresizingMaskIntoConstraints_];
  v43 = [v25 separatorColor];
  [v42 setBackgroundColor_];

  *&v4[v41] = v42;
  v44 = OBJC_IVAR____TtC9SeymourUI28WorkoutPlanScheduledItemCell_textLayoutGuide;
  *&v4[v44] = [objc_allocWithZone(MEMORY[0x277D756D0]) init];
  *&v4[OBJC_IVAR____TtC9SeymourUI28WorkoutPlanScheduledItemCell_layoutConstraints] = MEMORY[0x277D84F90];
  v45 = &v4[OBJC_IVAR____TtC9SeymourUI28WorkoutPlanScheduledItemCell_layout];
  __asm { FMOV            V0.2D, #10.0 }

  *v45 = _Q0;
  *(v45 + 1) = xmmword_20C163EB0;
  *(v45 + 2) = xmmword_20C17F000;
  *(v45 + 6) = 0;
  v45[56] = 1;
  *(v45 + 8) = 0x3FE2000000000000;
  v59.receiver = v4;
  v59.super_class = type metadata accessor for WorkoutPlanScheduledItemCell(0);
  v51 = objc_msgSendSuper2(&v59, sel_initWithFrame_, a1, a2, a3, a4);
  v52 = [v51 contentView];
  [v52 addSubview_];

  v53 = [v51 contentView];
  [v53 addSubview_];

  v54 = [v51 contentView];
  [v54 addSubview_];

  v55 = [v51 contentView];
  [v55 addSubview_];

  [v51 addSubview_];
  v56 = [v51 contentView];

  [v56 addLayoutGuide_];
  v57 = [objc_allocWithZone(MEMORY[0x277D756D0]) init];
  [v51 addLayoutGuide_];
  sub_20BE039B8();

  return v51;
}

uint64_t sub_20BE0376C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762550, &unk_20C1505A0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v11 - v2;
  v4 = type metadata accessor for WorkoutPlanScheduledItemCell(0);
  v12.receiver = v0;
  v12.super_class = v4;
  objc_msgSendSuper2(&v12, sel_prepareForReuse);
  v5 = *&v0[OBJC_IVAR____TtC9SeymourUI28WorkoutPlanScheduledItemCell_artworkView];
  v6 = [v5 layer];
  [v6 setBorderColor_];

  v7 = [v5 layer];
  [v7 setBorderWidth_];

  v8 = type metadata accessor for ShelfCellItemInfo(0);
  (*(*(v8 - 8) + 56))(v3, 1, 1, v8);
  v9 = OBJC_IVAR____TtC9SeymourUI28WorkoutPlanScheduledItemCell_itemInfo;
  swift_beginAccess();
  sub_20B5E267C(v3, &v0[v9]);
  return swift_endAccess();
}

void sub_20BE039B8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0, &unk_20C14F960);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_20C151850;
  v3 = v2;
  v4 = *&v0[OBJC_IVAR____TtC9SeymourUI28WorkoutPlanScheduledItemCell_artworkView];
  v5 = [v4 leadingAnchor];
  v6 = [v1 contentView];
  v7 = [v6 leadingAnchor];

  v8 = [v5 constraintEqualToAnchor_];
  v3[4] = v8;
  v9 = [v4 widthAnchor];
  v10 = &v1[OBJC_IVAR____TtC9SeymourUI28WorkoutPlanScheduledItemCell_layout];
  swift_beginAccess();
  sub_20BE02D88();
  v12 = v11;
  swift_endAccess();
  v13 = [v9 constraintEqualToConstant_];

  v3[5] = v13;
  v14 = [v4 heightAnchor];
  v15 = [v4 widthAnchor];
  v16 = [v14 constraintEqualToAnchor:v15 multiplier:v10[8]];

  v3[6] = v16;
  v17 = [v4 topAnchor];
  v18 = [v1 &selRef_setMaximumFractionDigits_];
  v19 = [v18 &selRef_setLineBreakMode_];

  v20 = [v17 constraintGreaterThanOrEqualToAnchor:v19 constant:*v10];
  v3[7] = v20;
  v21 = [v4 bottomAnchor];
  v22 = [v1 &selRef_setMaximumFractionDigits_];
  v23 = [v22 &selRef_secondaryLabel + 5];

  v105 = v10;
  v24 = [v21 constraintLessThanOrEqualToAnchor:v23 constant:-*v10];

  v3[8] = v24;
  v108 = v3;
  v25 = [v4 centerYAnchor];
  v26 = [v1 &selRef_setMaximumFractionDigits_];
  v27 = [v26 centerYAnchor];

  v28 = [v25 constraintEqualToAnchor_];
  v3[9] = v28;
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_20C150050;
  v30 = v29;
  v31 = *&v1[OBJC_IVAR____TtC9SeymourUI28WorkoutPlanScheduledItemCell_textLayoutGuide];
  v32 = [v31 leadingAnchor];
  v33 = [v4 trailingAnchor];
  v34 = [v32 constraintEqualToAnchor:v33 constant:v10[1]];

  v30[4] = v34;
  v35 = [v31 centerYAnchor];
  v36 = [v1 contentView];
  v37 = [v36 centerYAnchor];

  v38 = [v35 constraintEqualToAnchor_];
  v30[5] = v38;
  v39 = [v31 trailingAnchor];
  v40 = [v1 contentView];
  v41 = [v40 trailingAnchor];

  v42 = [v39 constraintEqualToAnchor_];
  v30[6] = v42;
  v43 = [v31 topAnchor];
  v44 = [v1 contentView];
  v45 = [v44 topAnchor];

  v46 = [v43 constraintGreaterThanOrEqualToAnchor_];
  v30[7] = v46;
  v107 = v30;
  v47 = [v31 bottomAnchor];
  v48 = [v1 &selRef_setMaximumFractionDigits_];
  v49 = [v48 bottomAnchor];

  v50 = [v47 constraintLessThanOrEqualToAnchor_];
  v30[8] = v50;
  v51 = swift_allocObject();
  *(v51 + 16) = xmmword_20C150040;
  v52 = *&v1[OBJC_IVAR____TtC9SeymourUI28WorkoutPlanScheduledItemCell_captionLabel];
  v53 = [v52 leadingAnchor];
  v54 = [v31 leadingAnchor];
  v55 = [v53 constraintEqualToAnchor_];

  *(v51 + 32) = v55;
  v56 = [v52 trailingAnchor];
  v57 = [v31 trailingAnchor];
  v58 = [v56 constraintEqualToAnchor_];

  v106 = v51;
  *(v51 + 40) = v58;
  v59 = [v52 topAnchor];
  v60 = [v31 topAnchor];
  v61 = [v59 &selRef:v60 alertControllerReleasedDictationButton:? + 5];

  *(v51 + 48) = v61;
  v62 = swift_allocObject();
  *(v62 + 16) = xmmword_20C150040;
  v63 = v62;
  v64 = *&v1[OBJC_IVAR____TtC9SeymourUI28WorkoutPlanScheduledItemCell_titleLabel];
  v65 = [v64 leadingAnchor];
  v66 = [v31 leadingAnchor];
  v67 = [v65 &selRef:v66 alertControllerReleasedDictationButton:? + 5];

  v63[4] = v67;
  v68 = [v64 trailingAnchor];
  v69 = [v31 trailingAnchor];
  v70 = [v68 &selRef:v69 alertControllerReleasedDictationButton:? + 5];

  v63[5] = v70;
  v104 = v63;
  v71 = [v64 topAnchor];
  v72 = [v52 bottomAnchor];
  v73 = [v71 constraintEqualToAnchor:v72 constant:v105[2]];

  v63[6] = v73;
  v74 = swift_allocObject();
  *(v74 + 16) = xmmword_20C14FE90;
  v75 = *&v1[OBJC_IVAR____TtC9SeymourUI28WorkoutPlanScheduledItemCell_subtitleLabel];
  v76 = [v75 leadingAnchor];
  v77 = [v31 leadingAnchor];
  v78 = [v76 constraintEqualToAnchor_];

  *(v74 + 32) = v78;
  v79 = [v75 trailingAnchor];
  v80 = [v31 trailingAnchor];
  v81 = [v79 constraintEqualToAnchor_];

  *(v74 + 40) = v81;
  v82 = [v75 topAnchor];
  v83 = [v64 bottomAnchor];
  v84 = [v82 constraintEqualToAnchor:v83 constant:v105[3]];

  *(v74 + 48) = v84;
  v85 = [v75 bottomAnchor];
  v86 = [v31 bottomAnchor];
  v87 = [v85 constraintEqualToAnchor_];

  *(v74 + 56) = v87;
  v88 = swift_allocObject();
  *(v88 + 16) = xmmword_20C14FE90;
  v89 = *&v1[OBJC_IVAR____TtC9SeymourUI28WorkoutPlanScheduledItemCell_separator];
  v90 = [v89 leadingAnchor];
  v91 = [v31 leadingAnchor];
  v92 = [v90 constraintEqualToAnchor_];

  *(v88 + 32) = v92;
  v93 = [v89 trailingAnchor];
  v94 = [v1 trailingAnchor];
  v95 = [v93 constraintEqualToAnchor_];

  *(v88 + 40) = v95;
  v96 = [v89 bottomAnchor];
  v97 = [v1 bottomAnchor];
  v98 = [v96 constraintEqualToAnchor_];

  *(v88 + 48) = v98;
  v99 = [v89 heightAnchor];
  sub_20C1387F4();
  v100 = [v99 constraintEqualToConstant_];

  *(v88 + 56) = v100;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768260, &unk_20C1569E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20C150DB0;
  *(inited + 32) = v108;
  *(inited + 40) = v107;
  *(inited + 48) = v106;
  *(inited + 56) = v104;
  *(inited + 64) = v74;
  *(inited + 72) = v88;
  v102 = objc_opt_self();
  sub_20BE54D20(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7677E0, &unk_20C15AA30);
  swift_arrayDestroy();
  sub_20B51C88C(0, &qword_281100500, 0x277CCAAD0);
  v103 = sub_20C13CC54();

  [v102 activateConstraints_];
}

id sub_20BE0465C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WorkoutPlanScheduledItemCell(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for WorkoutPlanScheduledItemCell(uint64_t a1)
{
  result = qword_281100C20;
  if (!qword_281100C20)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_20BE047B4(uint64_t a1)
{
  sub_20B5E238C(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

double sub_20BE048A0(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC9SeymourUI28WorkoutPlanScheduledItemCell_delegate + 8) = a2;
  swift_unknownObjectWeakAssign();

  swift_unknownObjectRelease();
  return result;
}

uint64_t sub_20BE048EC@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC9SeymourUI28WorkoutPlanScheduledItemCell_itemInfo;
  swift_beginAccess();
  return sub_20B5E26EC(v1 + v3, a1);
}

uint64_t sub_20BE04944(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9SeymourUI28WorkoutPlanScheduledItemCell_itemInfo;
  swift_beginAccess();
  sub_20B5E267C(a1, v1 + v3);
  return swift_endAccess();
}

id sub_20BE049A8(char a1)
{
  v2 = *v1;
  *(v2 + OBJC_IVAR____TtC9SeymourUI28WorkoutPlanScheduledItemCell_showSeparator) = a1;
  return [*(v2 + OBJC_IVAR____TtC9SeymourUI28WorkoutPlanScheduledItemCell_separator) setHidden_];
}

void sub_20BE049F8(unint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0, &unk_20C150360);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v230 = &v205 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v231 = &v205 - v7;
  v229 = v8;
  MEMORY[0x28223BE20](v9);
  v11 = &v205 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766670, &unk_20C151580);
  MEMORY[0x28223BE20](v12 - 8);
  v238 = &v205 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BAB0, &unk_20C150570);
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v228 = &v205 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v227 = v16;
  MEMORY[0x28223BE20](v17);
  v239 = &v205 - v18;
  v236 = sub_20C1391C4();
  v235 = *(v236 - 8);
  MEMORY[0x28223BE20](v236);
  v237 = &v205 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v233 = sub_20C138A64();
  v232 = *(v233 - 8);
  MEMORY[0x28223BE20](v233);
  v240 = &v205 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766680, &unk_20C14F920);
  MEMORY[0x28223BE20](v21 - 8);
  v234 = &v205 - v22;
  v23 = sub_20C13C554();
  v247 = *(v23 - 8);
  v248 = v23;
  MEMORY[0x28223BE20](v23);
  v246 = &v205 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_20C137C24();
  v252 = *(v25 - 8);
  v253 = v25;
  MEMORY[0x28223BE20](v25);
  v241 = v26;
  v242 = &v205 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v251 = &v205 - v28;
  v29 = sub_20C136CD4();
  v243 = *(v29 - 8);
  v244 = v29;
  MEMORY[0x28223BE20](v29);
  v250 = &v205 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_20C134E44();
  MEMORY[0x28223BE20](v31 - 8);
  v249 = &v205 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_20C13BB84();
  v254 = *(v33 - 8);
  v255 = v33;
  MEMORY[0x28223BE20](v33);
  v35 = &v205 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v36);
  v245 = &v205 - v37;
  v38 = sub_20C134014();
  MEMORY[0x28223BE20](v38);
  MEMORY[0x28223BE20](v39);
  MEMORY[0x28223BE20](v40);
  v256 = &v205 - v45;
  v46 = (a1 >> 57) & 0x78 | a1 & 7;
  if (v46 == 33)
  {
    v77 = *&v1[OBJC_IVAR____TtC9SeymourUI28WorkoutPlanScheduledItemCell_captionLabel];
    v78 = sub_20C13C914();
    [v77 setText_];

    v79 = *&v1[OBJC_IVAR____TtC9SeymourUI28WorkoutPlanScheduledItemCell_titleLabel];
    v80 = sub_20C13C914();
    [v79 setText_];

    v81 = *&v1[OBJC_IVAR____TtC9SeymourUI28WorkoutPlanScheduledItemCell_subtitleLabel];
    v82 = sub_20C13C914();
    [v81 setText_];

    sub_20BA1DB30();
    v83 = *&v1[OBJC_IVAR____TtC9SeymourUI28WorkoutPlanScheduledItemCell_artworkView];
    v84 = [v83 layer];
    [v84 setBorderColor_];

    v256 = [v83 layer];
    [v256 setBorderWidth_];
    v85 = v256;
  }

  else if (v46 == 32)
  {
    v209 = v15;
    v210 = v14;
    v206 = v11;
    v207 = v4;
    v208 = v3;
    v222 = v1;
    v47 = v41;
    v48 = v42;
    v226 = v43;
    v220 = v44;
    v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C772250, &unk_20C150590);
    v50 = swift_projectBox();
    v51 = v50 + *(v49 + 64);
    v52 = *(v51 + 8);
    v221 = *v51;
    v224 = v52;
    v53 = *(v51 + 24);
    v223 = *(v51 + 16);
    v54 = *(v51 + 32);
    v55 = *(v51 + 40);
    v56 = v50 + *(v49 + 80);
    v57 = *v56;
    v58 = *(v56 + 8);
    v59 = *(v56 + 24);
    v219 = *(v56 + 16);
    v218 = *(v56 + 32);
    v225 = v48;
    v60 = *(v48 + 16);
    LODWORD(v217) = *(v56 + 40);
    v61 = v256;
    v60(v256, v50, v47);
    v221 = v221;
    v224 = v224;
    v212 = v223;
    v215 = v53;

    v214 = v54;

    v213 = v55;
    v62 = v220;

    v211 = v57;
    v223 = v58;
    v63 = v219;
    v219 = v59;
    sub_20B6543CC(v57, v58, v63, v59);
    v64 = v245;
    sub_20C13B524();
    v60(v62, v61, v47);
    v60(v226, v61, v47);
    v65 = sub_20C13BB74();
    v66 = sub_20C13D1F4();
    v67 = os_log_type_enabled(v65, v66);
    v216 = v47;
    if (v67)
    {
      v68 = swift_slowAlloc();
      v218 = swift_slowAlloc();
      v257[0] = v218;
      *v68 = 136446466;
      v69 = sub_20C133E44();
      v71 = v70;
      v72 = *(v225 + 8);
      v72(v62, v47);
      v73 = sub_20B51E694(v69, v71, v257);

      *(v68 + 4) = v73;
      *(v68 + 12) = 2050;
      v74 = v226;
      v75 = sub_20C133EB4();
      v72(v74, v47);
      *(v68 + 14) = v75;
      _os_log_impl(&dword_20B517000, v65, v66, "[70636962] Configuring %{public}s with count %{public}ld", v68, 0x16u);
      v76 = v218;
      __swift_destroy_boxed_opaque_existential_1(v218);
      MEMORY[0x20F2F6A40](v76, -1, -1);
      MEMORY[0x20F2F6A40](v68, -1, -1);
    }

    else
    {
      v97 = *(v225 + 8);
      v97(v226, v47);

      v97(v62, v47);
    }

    (*(v254 + 8))(v64, v255);
    v99 = v249;
    v98 = v250;
    v100 = v222;
    v101 = *&v222[OBJC_IVAR____TtC9SeymourUI28WorkoutPlanScheduledItemCell_captionLabel];
    v102 = v251;
    v103 = v221;
    if (v223 == 1 || (, !v223))
    {
      v104 = 0;
    }

    else
    {
      v257[0] = v211;
      v257[1] = v223;
      sub_20B5F6EB0();
      sub_20C13D9E4();

      v104 = sub_20C13C914();
    }

    [v101 setText_];

    [*&v100[OBJC_IVAR____TtC9SeymourUI28WorkoutPlanScheduledItemCell_titleLabel] setAttributedText_];
    [*&v100[OBJC_IVAR____TtC9SeymourUI28WorkoutPlanScheduledItemCell_subtitleLabel] setAttributedText_];
    sub_20C133F04();
    v226 = sub_20C138054();
    v106 = v105;
    sub_20C134E34();
    sub_20C136CB4();
    v223 = sub_20C136CC4();
    v245 = v107;
    sub_20B51C88C(0, &qword_281100530, 0x277D85C78);
    v108 = sub_20C13D374();
    v110 = v246;
    v109 = v247;
    *v246 = v108;
    v111 = v248;
    (*(v109 + 104))(v110, *MEMORY[0x277D85200], v248);
    v112 = sub_20C13C584();
    (*(v109 + 8))(v110, v111);
    if (v112)
    {
      v114 = *&v100[OBJC_IVAR____TtC9SeymourUI28WorkoutPlanScheduledItemCell_artworkView];
      v113 = *&v100[OBJC_IVAR____TtC9SeymourUI28WorkoutPlanScheduledItemCell_artworkView + 8];
      ObjectType = swift_getObjectType();
      [v114 setContentMode_];
      v116 = sub_20BA66C54();
      v254 = ObjectType;
      v255 = v113;
      if (v116)
      {
        v117 = swift_allocObject();
        v248 = v114;
        v118 = v117;
        swift_unknownObjectWeakInit();
        v119 = v252;
        v120 = *(v252 + 16);
        v121 = v242;
        v122 = v102;
        v123 = v253;
        v211 = v252 + 16;
        v219 = v120;
        v120(v242, v122, v253);
        v124 = *(v119 + 80);
        v125 = (v124 + 24) & ~v124;
        v205 = v241 + 7;
        v220 = v106;
        v126 = (v241 + 7 + v125) & 0xFFFFFFFFFFFFFFF8;
        v127 = (v126 + 23) & 0xFFFFFFFFFFFFFFF8;
        v128 = (v127 + 23) & 0xFFFFFFFFFFFFFFF8;
        v246 = v124;
        v247 = (v128 + 15) & 0xFFFFFFFFFFFFFFF8;
        v129 = swift_allocObject();
        *(v129 + 16) = v118;
        v130 = *(v119 + 32);
        v218 = (v119 + 32);
        v217 = v130;
        v130(v129 + v125, v121, v123);
        v131 = (v129 + v126);
        v132 = v220;
        v133 = v245;
        *v131 = v223;
        v131[1] = v133;
        v134 = (v129 + v127);
        *v134 = v226;
        v134[1] = v132;
        *(v129 + v128) = 2;
        v135 = v129 + v247;
        *v135 = MEMORY[0x277D84F90];
        *(v135 + 8) = 0;
        v136 = (v129 + ((v128 + 31) & 0xFFFFFFFFFFFFFFF8));
        *v136 = 0;
        v136[1] = 0;
        v137 = v255;
        v138 = *(v255 + 152);

        v139 = v254;
        v138(sub_20BE063E8, v129, v254, v137);
        v140 = v248;

        [v140 bounds];
        if (v141 <= 0.0 || (v143 = v142, v142 <= 0.0))
        {

          v164 = v253;
          v166 = v243;
          v165 = v244;
          v98 = v250;
          v102 = v251;
          v99 = v249;
          v103 = v221;
        }

        else
        {
          v144 = v141;
          v145 = v137;
          v146 = v139;
          v247 = ~v246;
          (*(v145 + 120))(0, v139, v145);
          v147 = v234;
          v102 = v251;
          v148 = v253;
          v219(v234, v251, v253);
          (*(v252 + 56))(v147, 0, 1, v148);
          (*(v145 + 16))(v147, v146, v145);
          sub_20B51C88C(0, &qword_27C762070, 0x277D75348);
          sub_20C137BC4();
          v149 = sub_20C13D5A4();
          [v140 setBackgroundColor_];

          (*(v145 + 176))(COERCE_DOUBLE(*&v144), COERCE_DOUBLE(*&v143), 0, v146, v145);
          v234 = swift_allocObject();
          swift_unknownObjectWeakInit();
          v150 = v242;
          v151 = v148;
          v152 = v148;
          v153 = v219;
          v219(v242, v102, v151);
          v154 = (v246 + 16) & v247;
          v155 = (v205 + v154) & 0xFFFFFFFFFFFFFFF8;
          v156 = (v155 + 15) & 0xFFFFFFFFFFFFFFF8;
          v157 = swift_allocObject();
          v217(v157 + v154, v150, v152);
          *(v157 + v155) = v234;
          v158 = (v157 + v156);
          *v158 = v144;
          v158[1] = v143;
          v234 = v157;
          v159 = (v157 + ((v156 + 23) & 0xFFFFFFFFFFFFFFF8));
          *v159 = 0;
          v159[1] = 0;
          v153(v150, v102, v152);
          (*(v235 + 104))(v237, *MEMORY[0x277D542A8], v236);

          v160 = v240;
          sub_20C138A54();
          v161 = v238;
          sub_20B5F1DE8(v160, v238);
          v162 = v209;
          v163 = v210;
          if ((*(v209 + 48))(v161, 1, v210) == 1)
          {
            sub_20B520158(v161, &unk_27C766670, &unk_20C151580);
            sub_20BA1DB30();

            (*(v232 + 8))(v160, v233);
            v164 = v253;
          }

          else
          {
            v175 = *(v162 + 32);
            v245 = (v162 + 32);
            v175(v239, v161, v163);
            v176 = swift_allocObject();
            swift_unknownObjectWeakInit();
            v153(v150, v102, v253);
            v177 = (v246 + 40) & v247;
            v178 = v177 + v241;
            v179 = (v177 + v241) & 0xFFFFFFFFFFFFFFF8;
            v180 = v162;
            v181 = swift_allocObject();
            *(v181 + 2) = v176;
            v181[3] = v144;
            v181[4] = v143;
            v217(v181 + v177, v150, v253);
            *(v181 + v178) = 0;
            v182 = v181 + v179;
            *(v182 + 1) = 0;
            *(v182 + 2) = 0;
            v183 = swift_allocObject();
            *(v183 + 16) = sub_20BE0657C;
            *(v183 + 24) = v181;
            v184 = v228;
            (*(v180 + 16))(v228, v239, v163);
            v185 = (*(v180 + 80) + 16) & ~*(v180 + 80);
            v186 = (v227 + v185 + 7) & 0xFFFFFFFFFFFFFFF8;
            v187 = swift_allocObject();
            v175((v187 + v185), v184, v163);
            v188 = (v187 + v186);
            *v188 = sub_20B5F67A4;
            v188[1] = v183;
            v189 = v231;
            sub_20C137C94();
            v190 = swift_allocObject();
            v191 = v234;
            *(v190 + 16) = sub_20BE064C0;
            *(v190 + 24) = v191;
            v192 = swift_allocObject();
            *(v192 + 16) = sub_20B5F67D4;
            *(v192 + 24) = v190;
            v193 = v207;
            v194 = v230;
            v195 = v208;
            (*(v207 + 16))(v230, v189, v208);
            v196 = (*(v193 + 80) + 16) & ~*(v193 + 80);
            v197 = (v229 + v196 + 7) & 0xFFFFFFFFFFFFFFF8;
            v198 = swift_allocObject();
            (*(v193 + 32))(v198 + v196, v194, v195);
            v199 = (v198 + v197);
            *v199 = sub_20B5DF204;
            v199[1] = v192;

            v200 = v206;
            sub_20C137C94();
            v201 = *(v193 + 8);
            v201(v189, v195);
            v202 = sub_20C137CB4();
            v203 = swift_allocObject();
            *(v203 + 16) = 0;
            *(v203 + 24) = 0;
            v202(sub_20B52347C, v203);

            v204 = v253;

            v201(v200, v195);
            (*(v209 + 8))(v239, v210);
            (*(v232 + 8))(v240, v233);
            v164 = v204;
          }

          v166 = v243;
          v165 = v244;
          v99 = v249;
          v98 = v250;
          v103 = v221;
        }
      }

      else
      {

        v164 = v253;
        v166 = v243;
        v165 = v244;
      }

      (*(v252 + 8))(v102, v164);
      (*(v166 + 8))(v98, v165);

      sub_20B62A2AC(v99);
      v167 = v256;
      v168 = sub_20C133EB4() > 0;
      v169 = v255;
      (*(v255 + 264))(v168, v254, v255);
      v170 = sub_20C133E54();
      (*(v169 + 296))(v170);

      v171 = sub_20C133FF4();
      v173 = v172;
      LOBYTE(v169) = v174;
      sub_20B5F0A28(v171, v172, v174);
      sub_20B584078(v171, v173, v169);

      (*(v225 + 8))(v167, v216);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    sub_20C13B534();

    v86 = v1;
    v87 = sub_20C13BB74();
    v88 = sub_20C13D1D4();

    if (os_log_type_enabled(v87, v88))
    {
      v89 = swift_slowAlloc();
      v90 = swift_slowAlloc();
      v91 = swift_slowAlloc();
      v257[0] = v91;
      *v89 = 138543618;
      *(v89 + 4) = v86;
      *v90 = v86;
      *(v89 + 12) = 2082;
      v257[2] = a1;
      v92 = sub_20B5F66D0();
      v93 = v86;
      v94 = MEMORY[0x20F2EFA40](&type metadata for ShelfItem, v92);
      v96 = sub_20B51E694(v94, v95, v257);

      *(v89 + 14) = v96;
      _os_log_impl(&dword_20B517000, v87, v88, "Attempted to configure %{public}@ with item: %{public}s", v89, 0x16u);
      sub_20B520158(v90, &unk_27C762E30, &unk_20C150580);
      MEMORY[0x20F2F6A40](v90, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v91);
      MEMORY[0x20F2F6A40](v91, -1, -1);
      MEMORY[0x20F2F6A40](v89, -1, -1);
    }

    (*(v254 + 8))(v35, v255);
  }
}

void sub_20BE063E8()
{
  v1 = *(sub_20C137C24() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 23) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 23) & 0xFFFFFFFFFFFFFFF8;
  sub_20BA595EC(*(v0 + 16), v0 + v2, *(v0 + v3), *(v0 + v3 + 8), *(v0 + v4), *(v0 + v4 + 8), *(v0 + v5), *(v0 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v0 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 8), *(v0 + ((v5 + 31) & 0xFFFFFFFFFFFFFFF8)), *(v0 + ((v5 + 31) & 0xFFFFFFFFFFFFFFF8) + 8));
}

void sub_20BE064C0(void *a1)
{
  v3 = *(sub_20C137C24() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v1 + v5);
  v8 = *(v1 + v6);
  v9 = *(v1 + v6 + 8);
  v10 = (v1 + ((v6 + 23) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];

  sub_20BA638B0(a1, v1 + v4, v7, v11, v12, v8, v9);
}

void sub_20BE0657C(void **a1)
{
  v3 = *(sub_20C137C24() - 8);
  v4 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  sub_20B5F310C(*a1, *(v1 + 16), (v1 + v4), *(v1 + v4 + *(v3 + 64)), *(v1 + ((v4 + *(v3 + 64)) & 0xFFFFFFFFFFFFFFF8) + 8), *(v1 + ((v4 + *(v3 + 64)) & 0xFFFFFFFFFFFFFFF8) + 16), *(v1 + 24), *(v1 + 32));
}

void sub_20BE06630()
{
  *(v0 + OBJC_IVAR____TtC9SeymourUI28WorkoutPlanScheduledItemCell_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v1 = OBJC_IVAR____TtC9SeymourUI28WorkoutPlanScheduledItemCell_itemInfo;
  v2 = type metadata accessor for ShelfCellItemInfo(0);
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  *(v0 + OBJC_IVAR____TtC9SeymourUI28WorkoutPlanScheduledItemCell_showSeparator) = 1;
  v3 = [objc_allocWithZone(type metadata accessor for ArtworkView(0)) initWithFrame_];
  [v3 setTranslatesAutoresizingMaskIntoConstraints_];
  if (_UISolariumEnabled())
  {
    v4 = 16.0;
  }

  else
  {
    v4 = 4.0;
  }

  v5 = (v0 + OBJC_IVAR____TtC9SeymourUI28WorkoutPlanScheduledItemCell_artworkView);
  v6 = [v3 layer];
  [v6 setCornerRadius_];

  [v3 setClipsToBounds_];
  *v5 = v3;
  v5[1] = &off_2822B63E8;
  v7 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  [v7 setTranslatesAutoresizingMaskIntoConstraints_];
  [v7 setAdjustsFontForContentSizeCategory_];
  v8 = *MEMORY[0x277D76940];
  v9 = objc_opt_self();
  v10 = [v9 preferredFontDescriptorWithTextStyle:v8 compatibleWithTraitCollection:0];
  v11 = [v10 fontDescriptorWithSymbolicTraits_];
  if (v11)
  {
    v12 = v11;

    v10 = v12;
  }

  v13 = OBJC_IVAR____TtC9SeymourUI28WorkoutPlanScheduledItemCell_captionLabel;
  v14 = objc_opt_self();
  v15 = [v14 fontWithDescriptor:v10 size:0.0];

  [v7 setFont_];
  [v7 setLineBreakMode_];
  [v7 setNumberOfLines_];
  [v7 setAllowsDefaultTighteningForTruncation_];
  v16 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.650980392 green:1.0 blue:0.0 alpha:1.0];
  [v7 setTextColor_];

  v17 = objc_opt_self();
  v18 = [v17 systemBackgroundColor];
  [v7 setBackgroundColor_];

  *(v0 + v13) = v7;
  v19 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  [v19 setTranslatesAutoresizingMaskIntoConstraints_];
  [v19 setAdjustsFontForContentSizeCategory_];
  v20 = [v9 preferredFontDescriptorWithTextStyle:*MEMORY[0x277D769D0] compatibleWithTraitCollection:0];
  v21 = [v20 fontDescriptorWithSymbolicTraits_];
  if (v21)
  {
    v22 = v21;

    v20 = v22;
  }

  v23 = OBJC_IVAR____TtC9SeymourUI28WorkoutPlanScheduledItemCell_titleLabel;
  v24 = [v14 fontWithDescriptor:v20 size:0.0];

  [v19 setFont_];
  [v19 setAllowsDefaultTighteningForTruncation_];
  v25 = [v17 whiteColor];
  [v19 setTextColor_];

  [v19 setNumberOfLines_];
  [v19 setLineBreakMode_];
  *(v0 + v23) = v19;
  v26 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  [v26 &selRef_count + 2];
  [v26 setAdjustsFontForContentSizeCategory_];
  v27 = [v9 preferredFontDescriptorWithTextStyle:*MEMORY[0x277D76968] compatibleWithTraitCollection:0];
  v28 = [v27 fontDescriptorWithSymbolicTraits_];
  if (v28)
  {
    v29 = v28;

    v27 = v29;
  }

  v30 = OBJC_IVAR____TtC9SeymourUI28WorkoutPlanScheduledItemCell_subtitleLabel;
  v31 = [v14 fontWithDescriptor:v27 size:0.0];

  [v26 setFont_];
  [v26 setAllowsDefaultTighteningForTruncation_];
  v32 = [v17 secondaryLabelColor];
  [v26 setTextColor_];

  [v26 setNumberOfLines_];
  [v26 setLineBreakMode_];
  *(v0 + v30) = v26;
  v33 = OBJC_IVAR____TtC9SeymourUI28WorkoutPlanScheduledItemCell_separator;
  v34 = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  [v34 &selRef_count + 2];
  v35 = [v17 separatorColor];
  [v34 setBackgroundColor_];

  *(v0 + v33) = v34;
  v36 = OBJC_IVAR____TtC9SeymourUI28WorkoutPlanScheduledItemCell_textLayoutGuide;
  *(v0 + v36) = [objc_allocWithZone(MEMORY[0x277D756D0]) init];
  *(v0 + OBJC_IVAR____TtC9SeymourUI28WorkoutPlanScheduledItemCell_layoutConstraints) = MEMORY[0x277D84F90];
  v37 = v0 + OBJC_IVAR____TtC9SeymourUI28WorkoutPlanScheduledItemCell_layout;
  __asm { FMOV            V0.2D, #10.0 }

  *v37 = _Q0;
  *(v37 + 16) = xmmword_20C163EB0;
  *(v37 + 32) = xmmword_20C17F000;
  *(v37 + 48) = 0;
  *(v37 + 56) = 1;
  *(v37 + 64) = 0x3FE2000000000000;
  sub_20C13DE24();
  __break(1u);
}

char *sub_20BE06D08(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  *(v4 + OBJC_IVAR____TtC9SeymourUI16ActionBannerCell_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v10 = OBJC_IVAR____TtC9SeymourUI16ActionBannerCell_itemInfo;
  v11 = type metadata accessor for ShelfCellItemInfo(0);
  (*(*(v11 - 8) + 56))(v5 + v10, 1, 1, v11);
  v12 = OBJC_IVAR____TtC9SeymourUI16ActionBannerCell_contentStackView;
  v13 = [objc_allocWithZone(MEMORY[0x277D75A68]) init];
  [v13 setTranslatesAutoresizingMaskIntoConstraints_];
  [v13 setAlignment_];
  [v13 setAxis_];
  *(v5 + v12) = v13;
  v114 = OBJC_IVAR____TtC9SeymourUI16ActionBannerCell_titleLabel;
  v14 = [objc_allocWithZone(MEMORY[0x277D756B8]) &selRef_traitCollectionWithPreferredContentSizeCategory_];
  [v14 &selRef_count + 2];
  v15 = *MEMORY[0x277D74420];
  v16 = [objc_opt_self() preferredFontDescriptorWithTextStyle:*MEMORY[0x277D769A8] compatibleWithTraitCollection:0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7731F0, &unk_20C159850);
  inited = swift_initStackObject();
  v113 = xmmword_20C14F980;
  *(inited + 16) = xmmword_20C14F980;
  v18 = *MEMORY[0x277D74380];
  *(inited + 32) = *MEMORY[0x277D74380];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C771970, &unk_20C1500C0);
  v19 = swift_initStackObject();
  v20 = MEMORY[0x277D74430];
  *(v19 + 16) = v113;
  v21 = *v20;
  *(v19 + 32) = *v20;
  *(v19 + 40) = v15;
  v22 = v18;
  v23 = v21;
  v24 = sub_20B6B134C(v19);
  swift_setDeallocating();
  sub_20B520158(v19 + 32, &unk_27C773200, qword_20C158A40);
  *(inited + 64) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C771980, &qword_20C1500D0);
  *(inited + 40) = v24;
  sub_20B6B143C(inited);
  swift_setDeallocating();
  sub_20B520158(inited + 32, &qword_27C773210, &qword_20C159860);
  type metadata accessor for AttributeName(0);
  sub_20B5E5BD0();
  v25 = sub_20C13C744();

  v26 = [v16 fontDescriptorByAddingAttributes_];

  v27 = objc_opt_self();
  v28 = [v27 fontWithDescriptor:v26 size:0.0];

  [v14 setFont_];
  [v14 setLineBreakMode_];
  [v14 setNumberOfLines_];
  *(v5 + v114) = v14;
  v29 = OBJC_IVAR____TtC9SeymourUI16ActionBannerCell_messageLabel;
  v30 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  [v30 setTranslatesAutoresizingMaskIntoConstraints_];
  v31 = *MEMORY[0x277D76918];
  v32 = [v27 preferredFontForTextStyle_];
  [v30 setFont_];

  v33 = objc_opt_self();
  v34 = [v33 systemGrayColor];
  [v30 setTextColor_];

  [v30 setLineBreakMode_];
  [v30 setNumberOfLines_];
  *(v5 + v29) = v30;
  v35 = OBJC_IVAR____TtC9SeymourUI16ActionBannerCell_footerLabel;
  v36 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  [v36 setTranslatesAutoresizingMaskIntoConstraints_];
  [v36 setTextAlignment_];
  v37 = [v27 preferredFontForTextStyle_];
  [v36 setFont_];

  v38 = [v33 secondaryLabelColor];
  [v36 setTextColor_];

  [v36 setLineBreakMode_];
  [v36 setNumberOfLines_];
  [v36 setAdjustsFontForContentSizeCategory_];
  *(v5 + v35) = v36;
  *&v113 = v5;
  *(v5 + OBJC_IVAR____TtC9SeymourUI16ActionBannerCell_layout) = xmmword_20C156A10;
  v39 = type metadata accessor for ActionButtonTemplateBuilder();
  v40 = swift_allocObject();
  type metadata accessor for ActionButtonTemplateParser();
  v41 = swift_allocObject();
  v42 = qword_27C760AA0;

  v114 = v41;

  if (v42 != -1)
  {
    swift_once();
  }

  v43 = qword_27C76CF70;
  if (qword_27C760AA8 != -1)
  {
    swift_once();
  }

  v44 = qword_27C76CF78;
  v122[3] = v39;
  v122[4] = &off_2822EEB00;
  v122[0] = v40;
  v112 = v40;
  v120 = &type metadata for ActionButtonViewFactory;
  v121 = &off_2822B2B20;
  v45 = type metadata accessor for ActionButtonContainerView();
  v46 = objc_allocWithZone(v45);
  v47 = __swift_mutable_project_boxed_opaque_existential_1(v122, v39);
  v48 = MEMORY[0x28223BE20](v47);
  v50 = (&v109 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v51 + 16))(v50, v48);
  __swift_mutable_project_boxed_opaque_existential_1(v119, v120);
  v52 = *v50;
  v118[3] = v39;
  v118[4] = &off_2822EEB00;
  v117[4] = &off_2822B2B20;
  v118[0] = v52;
  v117[3] = &type metadata for ActionButtonViewFactory;
  *&v46[OBJC_IVAR____TtC9SeymourUI25ActionButtonContainerView_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v46[OBJC_IVAR____TtC9SeymourUI25ActionButtonContainerView_buttonActions] = MEMORY[0x277D84F90];
  *&v46[OBJC_IVAR____TtC9SeymourUI25ActionButtonContainerView_rootStackView] = 0;
  sub_20B51CC64(v118, &v46[OBJC_IVAR____TtC9SeymourUI25ActionButtonContainerView_templateBuilder]);
  v53 = &v46[OBJC_IVAR____TtC9SeymourUI25ActionButtonContainerView_templateParser];
  *v53 = v114;
  v53[1] = &off_28229AE20;
  sub_20B51CC64(v117, &v46[OBJC_IVAR____TtC9SeymourUI25ActionButtonContainerView_viewFactory]);
  *&v46[OBJC_IVAR____TtC9SeymourUI25ActionButtonContainerView_interGroupSpacing] = v43;
  *&v46[OBJC_IVAR____TtC9SeymourUI25ActionButtonContainerView_interItemSpacing] = v44;
  v116.receiver = v46;
  v116.super_class = v45;
  v54 = objc_msgSendSuper2(&v116, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  __swift_destroy_boxed_opaque_existential_1(v117);
  __swift_destroy_boxed_opaque_existential_1(v118);
  v55 = v54;
  __swift_destroy_boxed_opaque_existential_1(v119);
  __swift_destroy_boxed_opaque_existential_1(v122);
  [v55 setTranslatesAutoresizingMaskIntoConstraints_];

  v56 = v113;
  *(v113 + OBJC_IVAR____TtC9SeymourUI16ActionBannerCell_actionButtonContainerView) = v55;
  v57 = type metadata accessor for ActionBannerCell(0);
  v115.receiver = v56;
  v115.super_class = v57;
  v58 = objc_msgSendSuper2(&v115, sel_initWithFrame_, a1, a2, a3, a4);
  v59 = OBJC_IVAR____TtC9SeymourUI16ActionBannerCell_contentStackView;
  v60 = *&v58[OBJC_IVAR____TtC9SeymourUI16ActionBannerCell_contentStackView];
  v61 = v58;
  [v60 setSpacing_];
  [*&v58[v59] addArrangedSubview_];
  [*&v58[v59] addArrangedSubview_];
  v62 = v61;
  v63 = [v62 contentView];
  [v63 addSubview_];

  v64 = *&v62[OBJC_IVAR____TtC9SeymourUI16ActionBannerCell_actionButtonContainerView];
  v65 = OBJC_IVAR____TtC9SeymourUI16ActionBannerCell_actionButtonContainerView;
  *&v113 = OBJC_IVAR____TtC9SeymourUI16ActionBannerCell_actionButtonContainerView;
  *(v64 + OBJC_IVAR____TtC9SeymourUI25ActionButtonContainerView_delegate + 8) = &off_2822E99B0;
  swift_unknownObjectWeakAssign();

  v66 = [v62 &selRef_setMaximumFractionDigits_];
  [v66 addSubview_];

  v67 = [v62 &selRef_setMaximumFractionDigits_];
  v110 = OBJC_IVAR____TtC9SeymourUI16ActionBannerCell_footerLabel;
  [v67 addSubview_];

  v111 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0, &unk_20C14F960);
  v68 = swift_allocObject();
  *(v68 + 16) = xmmword_20C14FF90;
  v69 = [*&v58[v59] leadingAnchor];
  v70 = [v62 &selRef_setMaximumFractionDigits_];
  v71 = [v70 leadingAnchor];

  v72 = [v69 constraintEqualToAnchor_];
  *(v68 + 32) = v72;
  v73 = [*&v58[v59] trailingAnchor];
  v74 = [v62 &selRef_setMaximumFractionDigits_];
  v75 = [v74 trailingAnchor];

  v76 = [v73 &selRef:v75 alertControllerReleasedDictationButton:? + 5];
  *(v68 + 40) = v76;
  v77 = [*&v58[v59] topAnchor];
  v78 = [v62 contentView];
  v79 = [v78 &selRef_setLineBreakMode_];

  v80 = [v77 &selRef:v79 alertControllerReleasedDictationButton:? + 5];
  *(v68 + 48) = v80;
  v81 = v113;
  v82 = [*&v62[v113] leadingAnchor];
  v83 = [*&v58[v59] leadingAnchor];
  v84 = [v82 &selRef:v83 alertControllerReleasedDictationButton:? + 5];

  *(v68 + 56) = v84;
  v85 = [*&v62[v81] trailingAnchor];
  v86 = [*&v58[v59] trailingAnchor];
  v87 = [v85 constraintEqualToAnchor_];

  *(v68 + 64) = v87;
  v88 = [*&v62[v81] topAnchor];
  v89 = [*&v58[v59] bottomAnchor];
  v90 = [v88 constraintEqualToAnchor:v89 constant:20.0];

  *(v68 + 72) = v90;
  v91 = v110;
  v92 = [*&v62[v110] leadingAnchor];
  v93 = [v62 contentView];
  v94 = [v93 leadingAnchor];

  v95 = [v92 constraintEqualToAnchor_];
  *(v68 + 80) = v95;
  v96 = [*&v62[v91] trailingAnchor];
  v97 = [v62 contentView];
  v98 = [v97 trailingAnchor];

  v99 = [v96 constraintEqualToAnchor_];
  *(v68 + 88) = v99;
  v100 = [*&v62[v91] topAnchor];
  v101 = [*&v62[v113] bottomAnchor];
  v102 = [v100 constraintEqualToAnchor:v101 constant:10.0];

  *(v68 + 96) = v102;
  v103 = [*&v62[v91] bottomAnchor];
  v104 = [v62 contentView];

  v105 = [v104 bottomAnchor];
  v106 = [v103 constraintEqualToAnchor_];

  *(v68 + 104) = v106;
  sub_20B5E29D0();
  v107 = sub_20C13CC54();

  [v111 activateConstraints_];

  return v62;
}

id sub_20BE07CF4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ActionBannerCell(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for ActionBannerCell(uint64_t a1)
{
  result = qword_27C76F458;
  if (!qword_27C76F458)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_20BE07E2C(uint64_t a1)
{
  sub_20B5E238C(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_20BE07EF8(uint64_t a1)
{
  v3 = sub_20C133244();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for ShelfItemAction(0);
  MEMORY[0x28223BE20](v7);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v11 = result;
    sub_20B5F15A8(a1, v9);
    v12 = swift_storeEnumTagMultiPayload();
    v13 = MEMORY[0x28223BE20](v12);
    *(&v16 - 4) = 0;
    *(&v16 - 24) = 1;
    *(&v16 - 2) = v9;
    *(&v16 - 1) = v11;
    v14 = [*(v11 + OBJC_IVAR____TtC9SeymourUI11CatalogPage_collectionView) indexPathForCell_];
    if (v14)
    {
      v15 = v14;
      sub_20C1331E4();

      sub_20C0C1CDC(v6, sub_20B5E27BC);
      (*(v4 + 8))(v6, v3);
    }

    swift_unknownObjectRelease();
    return sub_20B5E2760(v9);
  }

  return result;
}

double sub_20BE080F8(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC9SeymourUI16ActionBannerCell_delegate + 8) = a2;
  swift_unknownObjectWeakAssign();

  swift_unknownObjectRelease();
  return result;
}

uint64_t sub_20BE08144@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC9SeymourUI16ActionBannerCell_itemInfo;
  swift_beginAccess();
  return sub_20B5E26EC(v1 + v3, a1);
}

uint64_t sub_20BE0819C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9SeymourUI16ActionBannerCell_itemInfo;
  swift_beginAccess();
  sub_20B5E267C(a1, v1 + v3);
  return swift_endAccess();
}

void sub_20BE08200(unint64_t a1)
{
  v3 = sub_20C13BB84();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v7 = &aBlock[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = (a1 >> 57) & 0x78 | a1 & 7;
  if (v8 == 68 || v8 == 3)
  {
    v10 = a1 & 0xFFFFFFFFFFFFFF8;
    v11 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x18);
    v12 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x28);
    v13 = *(v10 + 56);
    v14 = *(v10 + 64);

    v40 = v14;

    v15 = *&v1[OBJC_IVAR____TtC9SeymourUI16ActionBannerCell_titleLabel];
    if (v11)
    {

      v16 = sub_20C13C914();
    }

    else
    {
      v16 = 0;
    }

    [v15 setText_];

    [v15 setHidden_];
    v29 = *&v1[OBJC_IVAR____TtC9SeymourUI16ActionBannerCell_messageLabel];
    if (v12)
    {

      v30 = sub_20C13C914();
    }

    else
    {
      v30 = 0;
    }

    [v29 setText_];

    [v29 setHidden_];
    v31 = *&v1[OBJC_IVAR____TtC9SeymourUI16ActionBannerCell_footerLabel];
    if (v13)
    {

      v32 = sub_20C13C914();
    }

    else
    {
      v32 = 0;
    }

    [v31 setText_];

    [v31 setHidden_];
    v33 = objc_opt_self();
    v34 = swift_allocObject();
    v35 = v40;
    *(v34 + 16) = v1;
    *(v34 + 24) = v35;
    v36 = swift_allocObject();
    *(v36 + 16) = sub_20BE086F8;
    *(v36 + 24) = v34;
    aBlock[4] = sub_20B5E0E90;
    aBlock[5] = v36;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_20BB4C11C;
    aBlock[3] = &block_descriptor_137;
    v37 = _Block_copy(aBlock);
    v38 = v1;

    [v33 performWithoutAnimation_];
    _Block_release(v37);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }
  }

  else
  {
    v40 = v5;
    sub_20C13B534();

    v17 = v1;
    v18 = sub_20C13BB74();
    v19 = sub_20C13D1D4();

    if (os_log_type_enabled(v18, v19))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      aBlock[0] = v23;
      *v21 = 138543618;
      *(v21 + 4) = v17;
      *v22 = v17;
      *(v21 + 12) = 2082;
      aBlock[6] = a1;
      v24 = sub_20B5F66D0();
      v25 = v17;
      v26 = MEMORY[0x20F2EFA40](&type metadata for ShelfItem, v24);
      v28 = sub_20B51E694(v26, v27, aBlock);

      *(v21 + 14) = v28;
      _os_log_impl(&dword_20B517000, v18, v19, "Attempted to configure %{public}@ with item: %{public}s", v21, 0x16u);
      sub_20B520158(v22, &unk_27C762E30, &unk_20C150580);
      MEMORY[0x20F2F6A40](v22, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v23);
      MEMORY[0x20F2F6A40](v23, -1, -1);
      MEMORY[0x20F2F6A40](v21, -1, -1);
    }

    (*(v4 + 8))(v7, v40);
  }
}

void sub_20BE08744()
{
  *(v0 + OBJC_IVAR____TtC9SeymourUI16ActionBannerCell_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v1 = OBJC_IVAR____TtC9SeymourUI16ActionBannerCell_itemInfo;
  v2 = type metadata accessor for ShelfCellItemInfo(0);
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  v3 = OBJC_IVAR____TtC9SeymourUI16ActionBannerCell_contentStackView;
  v4 = [objc_allocWithZone(MEMORY[0x277D75A68]) init];
  [v4 setTranslatesAutoresizingMaskIntoConstraints_];
  [v4 setAlignment_];
  [v4 setAxis_];
  *(v0 + v3) = v4;
  v5 = OBJC_IVAR____TtC9SeymourUI16ActionBannerCell_titleLabel;
  v6 = [objc_allocWithZone(MEMORY[0x277D756B8]) &selRef_traitCollectionWithPreferredContentSizeCategory_];
  [v6 &selRef_count + 2];
  v7 = *MEMORY[0x277D74420];
  v8 = [objc_opt_self() preferredFontDescriptorWithTextStyle:*MEMORY[0x277D769A8] compatibleWithTraitCollection:0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7731F0, &unk_20C159850);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20C14F980;
  v10 = *MEMORY[0x277D74380];
  *(inited + 32) = *MEMORY[0x277D74380];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C771970, &unk_20C1500C0);
  v11 = swift_initStackObject();
  *(v11 + 16) = xmmword_20C14F980;
  v12 = *MEMORY[0x277D74430];
  *(v11 + 32) = *MEMORY[0x277D74430];
  *(v11 + 40) = v7;
  v13 = v10;
  v14 = v12;
  v15 = sub_20B6B134C(v11);

  *(inited + 64) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C771980, &qword_20C1500D0);
  *(inited + 40) = v15;
  sub_20B6B143C(inited);

  type metadata accessor for AttributeName(0);
  sub_20B5E5BD0();
  v16 = sub_20C13C744();

  v17 = [v8 fontDescriptorByAddingAttributes_];

  v18 = objc_opt_self();
  v19 = [v18 fontWithDescriptor:v17 size:0.0];

  [v6 setFont_];
  [v6 setLineBreakMode_];
  [v6 setNumberOfLines_];
  *(v0 + v5) = v6;
  v20 = OBJC_IVAR____TtC9SeymourUI16ActionBannerCell_messageLabel;
  v21 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  [v21 setTranslatesAutoresizingMaskIntoConstraints_];
  v22 = *MEMORY[0x277D76918];
  v23 = [v18 preferredFontForTextStyle_];
  [v21 setFont_];

  v24 = objc_opt_self();
  v25 = [v24 systemGrayColor];
  [v21 setTextColor_];

  [v21 setLineBreakMode_];
  [v21 setNumberOfLines_];
  *(v0 + v20) = v21;
  v26 = OBJC_IVAR____TtC9SeymourUI16ActionBannerCell_footerLabel;
  v27 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  [v27 setTranslatesAutoresizingMaskIntoConstraints_];
  [v27 setTextAlignment_];
  v28 = [v18 preferredFontForTextStyle_];
  [v27 setFont_];

  v29 = [v24 secondaryLabelColor];
  [v27 setTextColor_];

  [v27 setLineBreakMode_];
  [v27 setNumberOfLines_];
  [v27 setAdjustsFontForContentSizeCategory_];
  *(v0 + v26) = v27;
  *(v0 + OBJC_IVAR____TtC9SeymourUI16ActionBannerCell_layout) = xmmword_20C156A10;
  sub_20C13DE24();
  __break(1u);
}

double sub_20BE08C70()
{
  if (qword_27C7606F0 != -1)
  {
    swift_once();
  }

  result = *&xmmword_27C799F60;
  xmmword_27C76F468 = xmmword_27C799F60;
  *algn_27C76F478 = *&qword_27C799F70;
  return result;
}

double sub_20BE08CD0(uint64_t a1, void (*a2)(void))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;

    a2();
  }

  return result;
}

void sub_20BE08D7C()
{
  v8.receiver = v0;
  v8.super_class = type metadata accessor for PhoneSessionPortraitSummaryViewController(0);
  objc_msgSendSuper2(&v8, sel_viewDidLoad);
  v1 = [v0 view];
  if (v1)
  {
    v2 = v1;
    v3 = [objc_opt_self() systemBackgroundColor];
    [v2 setBackgroundColor_];

    v4 = [v0 view];
    if (v4)
    {
      v5 = v4;
      v6 = *&v0[OBJC_IVAR____TtC9SeymourUI41PhoneSessionPortraitSummaryViewController_scrollView];
      [v4 addSubview_];

      v7 = *&v0[OBJC_IVAR____TtC9SeymourUI41PhoneSessionPortraitSummaryViewController_contentView];
      [v6 addSubview_];
      [v7 addSubview_];
      [v7 addSubview_];
      [v7 addSubview_];
      [v7 addSubview_];
      [v7 addSubview_];
      sub_20BE09274();
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_20BE090B0(char a1)
{
  v10.receiver = v1;
  v10.super_class = type metadata accessor for PhoneSessionPortraitSummaryViewController(0);
  objc_msgSendSuper2(&v10, sel_viewWillDisappear_, a1 & 1);
  v3 = [v1 navigationController];
  if (v3)
  {
    v4 = v3;
    v5 = [v3 viewControllers];
    sub_20B51C88C(0, &qword_281100550, 0x277D75D28);
    v6 = sub_20C13CC74();

    v9 = v1;
    MEMORY[0x28223BE20](v7);
    v8[2] = &v9;
    LOBYTE(v5) = sub_20B79AEEC(sub_20B5978BC, v8, v6);

    if ((v5 & 1) == 0)
    {
      v9 = v1;
      sub_20BE0D2EC(&qword_27C76F530, type metadata accessor for PhoneSessionPortraitSummaryViewController, &unk_20C17F248);
      sub_20C138C64();
    }
  }
}

void sub_20BE09274()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0, &unk_20C14F960);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_20C14FE90;
  v2 = *&v0[OBJC_IVAR____TtC9SeymourUI41PhoneSessionPortraitSummaryViewController_scrollView];
  v3 = [v2 leadingAnchor];
  v4 = [v0 view];
  if (!v4)
  {
    __break(1u);
    goto LABEL_11;
  }

  v5 = v4;
  v6 = [v4 leadingAnchor];

  v7 = [v3 constraintEqualToAnchor_];
  *(v1 + 32) = v7;
  v8 = [v2 trailingAnchor];
  v9 = [v0 view];
  if (!v9)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v10 = v9;
  v11 = [v9 trailingAnchor];

  v12 = [v8 constraintEqualToAnchor_];
  *(v1 + 40) = v12;
  v13 = [v2 topAnchor];
  v14 = [v0 view];
  if (!v14)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v15 = v14;
  v16 = [v14 safeAreaLayoutGuide];

  v17 = [v16 topAnchor];
  v18 = [v13 constraintEqualToAnchor_];

  *(v1 + 48) = v18;
  v19 = [v2 bottomAnchor];
  v20 = [v0 view];
  if (!v20)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v21 = v20;
  v22 = [v20 bottomAnchor];

  v23 = [v19 constraintEqualToAnchor_];
  *(v1 + 56) = v23;
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_20C151850;
  v25 = *&v0[OBJC_IVAR____TtC9SeymourUI41PhoneSessionPortraitSummaryViewController_contentView];
  v26 = [v25 leadingAnchor];
  v27 = [v2 leadingAnchor];
  v28 = [v26 constraintEqualToAnchor_];

  *(v24 + 32) = v28;
  v29 = [v25 trailingAnchor];
  v30 = [v2 trailingAnchor];
  v31 = [v29 constraintEqualToAnchor_];

  *(v24 + 40) = v31;
  v32 = [v25 topAnchor];
  v33 = [v2 topAnchor];
  v34 = [v32 constraintEqualToAnchor_];

  *(v24 + 48) = v34;
  v35 = [v25 bottomAnchor];
  v36 = [v2 bottomAnchor];
  v37 = [v35 constraintEqualToAnchor_];

  *(v24 + 56) = v37;
  v38 = [v25 widthAnchor];
  v39 = [v0 view];
  if (!v39)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v40 = v39;
  v41 = [v39 widthAnchor];

  v42 = [v38 constraintEqualToAnchor_];
  *(v24 + 64) = v42;
  v43 = [v25 heightAnchor];
  v44 = [v0 view];
  if (!v44)
  {
LABEL_15:
    __break(1u);
    return;
  }

  v45 = v44;
  v133 = v1;
  v46 = [v44 safeAreaLayoutGuide];

  v47 = [v46 heightAnchor];
  v48 = [v43 constraintGreaterThanOrEqualToAnchor_];

  *(v24 + 72) = v48;
  v132 = v24;
  v49 = *&v0[OBJC_IVAR____TtC9SeymourUI41PhoneSessionPortraitSummaryViewController_contentSummaryView];
  v50 = [v49 topAnchor];
  v51 = [v25 topAnchor];
  v52 = [v50 &selRef:v51 alertControllerReleasedDictationButton:? + 5];

  v53 = OBJC_IVAR____TtC9SeymourUI41PhoneSessionPortraitSummaryViewController_contentSummaryViewTopConstraint;
  v54 = *&v0[OBJC_IVAR____TtC9SeymourUI41PhoneSessionPortraitSummaryViewController_contentSummaryViewTopConstraint];
  *&v0[OBJC_IVAR____TtC9SeymourUI41PhoneSessionPortraitSummaryViewController_contentSummaryViewTopConstraint] = v52;

  v55 = swift_allocObject();
  *(v55 + 16) = xmmword_20C150040;
  v56 = *&v0[v53];
  *(v55 + 32) = v56;
  v57 = v56;
  v58 = [v49 leadingAnchor];
  v59 = [v25 leadingAnchor];
  v60 = v25;
  if (qword_27C760C30 != -1)
  {
    swift_once();
  }

  v61 = [v58 constraintEqualToAnchor:v59 constant:*(&xmmword_27C76F468 + 1)];

  *(v55 + 40) = v61;
  v62 = [v49 trailingAnchor];
  v130 = v60;
  v63 = [v60 trailingAnchor];
  v64 = [v62 constraintEqualToAnchor:v63 constant:-*&qword_27C76F480];

  *(v55 + 48) = v64;
  v65 = *&v0[OBJC_IVAR____TtC9SeymourUI41PhoneSessionPortraitSummaryViewController_gridView];
  v66 = [v65 heightAnchor];
  v131 = v55;
  v67 = [v66 constraintEqualToConstant_];

  v68 = OBJC_IVAR____TtC9SeymourUI41PhoneSessionPortraitSummaryViewController_gridViewHeight;
  v69 = *&v0[OBJC_IVAR____TtC9SeymourUI41PhoneSessionPortraitSummaryViewController_gridViewHeight];
  *&v0[OBJC_IVAR____TtC9SeymourUI41PhoneSessionPortraitSummaryViewController_gridViewHeight] = v67;

  v70 = [v65 widthAnchor];
  v71 = [v70 constraintEqualToConstant_];

  v72 = OBJC_IVAR____TtC9SeymourUI41PhoneSessionPortraitSummaryViewController_gridViewWidth;
  v73 = *&v0[OBJC_IVAR____TtC9SeymourUI41PhoneSessionPortraitSummaryViewController_gridViewWidth];
  *&v0[OBJC_IVAR____TtC9SeymourUI41PhoneSessionPortraitSummaryViewController_gridViewWidth] = v71;

  v74 = swift_allocObject();
  *(v74 + 16) = xmmword_20C150050;
  v75 = *&v0[v68];
  v76 = *&v0[v72];
  *(v74 + 32) = v75;
  *(v74 + 40) = v76;
  v77 = v74;
  v78 = v75;
  v79 = v76;
  v80 = [v65 leadingAnchor];
  v81 = [v49 leadingAnchor];
  v82 = [v80 constraintEqualToAnchor_];

  v77[6] = v82;
  v83 = [v65 trailingAnchor];
  v84 = [v49 trailingAnchor];
  v85 = [v83 constraintLessThanOrEqualToAnchor_];

  v129 = v77;
  v77[7] = v85;
  v86 = [v65 topAnchor];
  v87 = [v49 bottomAnchor];
  v88 = [v86 constraintEqualToAnchor:v87 constant:36.0];

  v77[8] = v88;
  v89 = swift_allocObject();
  *(v89 + 16) = xmmword_20C150040;
  v90 = v89;
  v91 = *&v0[OBJC_IVAR____TtC9SeymourUI41PhoneSessionPortraitSummaryViewController_activityRingsView];
  v92 = [v91 leadingAnchor];
  v93 = [v49 leadingAnchor];
  v94 = [v92 constraintEqualToAnchor_];

  v90[4] = v94;
  v95 = [v91 trailingAnchor];
  v96 = [v49 trailingAnchor];
  v97 = [v95 constraintLessThanOrEqualToAnchor_];

  v90[5] = v97;
  v98 = [v91 topAnchor];
  v99 = [v65 bottomAnchor];
  v100 = [v98 constraintEqualToAnchor:v99 constant:9.0];

  v90[6] = v100;
  v101 = swift_allocObject();
  *(v101 + 16) = xmmword_20C14FE90;
  v102 = *&v0[OBJC_IVAR____TtC9SeymourUI41PhoneSessionPortraitSummaryViewController_bottomStackView];
  v103 = [v102 leadingAnchor];
  v104 = [v49 leadingAnchor];
  v105 = [v103 constraintEqualToAnchor_];

  *(v101 + 32) = v105;
  v106 = [v102 trailingAnchor];
  v107 = [v49 trailingAnchor];
  v108 = [v106 constraintEqualToAnchor_];

  *(v101 + 40) = v108;
  v109 = [v102 topAnchor];
  v110 = [v91 bottomAnchor];
  v111 = [v109 constraintGreaterThanOrEqualToAnchor:v110 constant:36.0];

  *(v101 + 48) = v111;
  v112 = [v102 bottomAnchor];
  v113 = [v130 bottomAnchor];
  v114 = [v112 constraintEqualToAnchor:v113 constant:-16.0];

  *(v101 + 56) = v114;
  v115 = swift_allocObject();
  *(v115 + 16) = xmmword_20C150040;
  v116 = *&v0[OBJC_IVAR____TtC9SeymourUI41PhoneSessionPortraitSummaryViewController_ttrButton];
  v117 = [v116 trailingAnchor];
  v118 = [v49 trailingAnchor];
  v119 = [v117 constraintEqualToAnchor_];

  *(v115 + 32) = v119;
  v120 = [v116 topAnchor];
  v121 = [v91 bottomAnchor];
  v122 = [v120 constraintGreaterThanOrEqualToAnchor_];

  *(v115 + 40) = v122;
  v123 = [v116 bottomAnchor];
  v124 = [v102 topAnchor];
  v125 = [v123 constraintLessThanOrEqualToAnchor:v124 constant:-36.0];

  *(v115 + 48) = v125;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768260, &unk_20C1569E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20C14F990;
  *(inited + 32) = v133;
  *(inited + 40) = v132;
  *(inited + 48) = v131;
  *(inited + 56) = v129;
  *(inited + 64) = v90;
  *(inited + 72) = v101;
  *(inited + 80) = v115;
  v127 = objc_opt_self();
  sub_20BE54D20(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7677E0, &unk_20C15AA30);
  swift_arrayDestroy();
  sub_20B51C88C(0, &qword_281100500, 0x277CCAAD0);
  v128 = sub_20C13CC54();

  [v127 activateConstraints_];
}

void sub_20BE0A0E0()
{
  v5.receiver = v0;
  v5.super_class = type metadata accessor for PhoneSessionPortraitSummaryViewController(0);
  objc_msgSendSuper2(&v5, sel_viewDidLayoutSubviews);
  v1 = [v0 view];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 window];

    if (v3)
    {
      v4 = *&v0[OBJC_IVAR____TtC9SeymourUI41PhoneSessionPortraitSummaryViewController_contentSummaryViewTopConstraint];
      [v3 bounds];
      [v4 setConstant_];
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_20BE0A204(__n128 a1)
{
  v150 = sub_20C1335F4();
  v151 = *(v150 - 8);
  MEMORY[0x28223BE20](v150);
  v148 = &v134 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v149 = &v134 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7698B0, &qword_20C17F2B0);
  MEMORY[0x28223BE20](v5 - 8);
  v146 = &v134 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v134 - v8;
  v144 = sub_20C137F24();
  v143 = *(v144 - 8);
  MEMORY[0x28223BE20](v144);
  v142 = &v134 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_20C1344C4();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v152 = &v134 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v147 = &v134 - v15;
  MEMORY[0x28223BE20](v16);
  v145 = &v134 - v17;
  MEMORY[0x28223BE20](v18);
  v20 = &v134 - v19;
  MEMORY[0x28223BE20](v21);
  v23 = &v134 - v22;
  v24 = objc_allocWithZone(MEMORY[0x277CCA898]);
  v25 = sub_20C13C914();
  v26 = [v24 initWithString_];

  v27 = v1;
  v28 = *(v12 + 16);
  v157 = *(v1 + OBJC_IVAR____TtC9SeymourUI41PhoneSessionPortraitSummaryViewController_presenter);
  v154 = OBJC_IVAR____TtC9SeymourUI23SessionSummaryPresenter_catalogWorkout;
  v156 = v12 + 16;
  v155 = v28;
  v28(v23, v157 + OBJC_IVAR____TtC9SeymourUI23SessionSummaryPresenter_catalogWorkout, v11);
  v29 = sub_20C1344B4();
  v31 = v30;
  LOBYTE(v25) = v32;
  v33 = *(v12 + 8);
  v158 = v12 + 8;
  v159 = v33;
  v33(v23, v11);
  v153 = v11;
  if ((v25 & 1) == 0)
  {
    sub_20B583F4C(v29, v31, 0);
    v59 = v26;
    v52 = v159;
    v34 = v27;
LABEL_31:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C766460, &unk_20C15C490);
    inited = swift_initStackObject();
    v104 = *MEMORY[0x277D740A8];
    *(inited + 32) = *MEMORY[0x277D740A8];
    *(inited + 16) = xmmword_20C14F320;
    v105 = *MEMORY[0x277D76920];
    v106 = objc_opt_self();
    v107 = v104;
    v108 = [v106 preferredFontDescriptorWithTextStyle:v105 compatibleWithTraitCollection:0];
    v109 = [v108 fontDescriptorWithSymbolicTraits_];
    if (v109)
    {
      v110 = v109;

      v108 = v110;
    }

    v111 = [objc_opt_self() fontWithDescriptor:v108 size:0.0];

    v112 = sub_20B51C88C(0, &qword_27C767A60, 0x277D74300);
    *(inited + 40) = v111;
    v113 = *MEMORY[0x277D740C0];
    *(inited + 64) = v112;
    *(inited + 72) = v113;
    v114 = v113;
    if (sub_20C1380F4() == 3)
    {
      v115 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:0.607843137 alpha:1.0];
    }

    else
    {
      v115 = [objc_opt_self() systemGrayColor];
    }

    v116 = v115;
    v117 = v157;
    *(inited + 104) = sub_20B51C88C(0, &qword_27C762070, 0x277D75348);
    *(inited + 80) = v116;
    sub_20B6B1650(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763978, &unk_20C163AF0);
    swift_arrayDestroy();
    v118 = objc_allocWithZone(MEMORY[0x277CCA898]);
    v119 = sub_20C13C914();

    type metadata accessor for Key(0);
    sub_20BE0D2EC(&qword_27C761D80, type metadata accessor for Key, &unk_20C14F0C4);
    v120 = sub_20C13C744();

    v121 = [v118 initWithString:v119 attributes:v120];

    v122 = *(v34 + OBJC_IVAR____TtC9SeymourUI41PhoneSessionPortraitSummaryViewController_contentSummaryView);
    v123 = OBJC_IVAR____TtC9SeymourUI25SummaryContentSummaryView_labels;
    [*(*&v122[OBJC_IVAR____TtC9SeymourUI25SummaryContentSummaryView_labels] + OBJC_IVAR____TtC9SeymourUI23SessionStackedLabelView_primaryLabel) setAttributedText_];
    v124 = *&v122[v123];
    v125 = OBJC_IVAR____TtC9SeymourUI23SessionStackedLabelView_secondaryLabel;
    [*(v124 + OBJC_IVAR____TtC9SeymourUI23SessionStackedLabelView_secondaryLabel) setHidden_];
    [*(v124 + v125) setAttributedText_];
    [v122 invalidateIntrinsicContentSize];
    v126 = v117 + v154;
    v127 = v59;
    v128 = v152;
    v129 = v153;
    v155(v152, v126, v153);
    v130 = sub_20C1344B4();
    v132 = v131;
    LOBYTE(v124) = v133;
    v52(v128, v129);
    v162 = v130;
    v163 = v132;
    LOBYTE(v129) = v124 & 1;
    v164 = v124 & 1;
    v160 = xmmword_20C152300;
    v161 = 1;
    sub_20B6A6418(v130, v132, v124 & 1);
    sub_20B590B28();
    sub_20B590B7C();
    LOBYTE(v124) = sub_20C133BF4();
    sub_20B583F4C(v162, v163, v164);
    sub_20B80447C((v124 & 1) == 0);
    sub_20B583F4C(v130, v132, v129);

    return;
  }

  v141 = v26;
  v138 = v31;
  if (v29 != 1)
  {
    v34 = v27;
    if (v29)
    {
      v59 = v141;
      v52 = v159;
    }

    else
    {
      v35 = (v27 + OBJC_IVAR____TtC9SeymourUI41PhoneSessionPortraitSummaryViewController_storefrontLocalizer);
      __swift_project_boxed_opaque_existential_1((v27 + OBJC_IVAR____TtC9SeymourUI41PhoneSessionPortraitSummaryViewController_storefrontLocalizer), *(v27 + OBJC_IVAR____TtC9SeymourUI41PhoneSessionPortraitSummaryViewController_storefrontLocalizer + 24));
      v36 = sub_20C138D34();
      v38 = v37;
      __swift_project_boxed_opaque_existential_1(v35, v35[3]);
      v151 = sub_20C138D34();
      v39 = v34;
      v41 = v40;
      v139 = v39;
      __swift_project_boxed_opaque_existential_1((v39 + OBJC_IVAR____TtC9SeymourUI41PhoneSessionPortraitSummaryViewController_mediaTagStringBuilder), *(v39 + OBJC_IVAR____TtC9SeymourUI41PhoneSessionPortraitSummaryViewController_mediaTagStringBuilder + 24));
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763168, &unk_20C153890);
      v42 = *(sub_20C138094() - 8);
      v43 = (*(v42 + 80) + 32) & ~*(v42 + 80);
      v44 = swift_allocObject();
      *(v44 + 16) = xmmword_20C14F980;
      v45 = (v44 + v43);
      *v45 = v36;
      v45[1] = v38;
      v45[2] = v151;
      v45[3] = v41;
      swift_storeEnumTagMultiPayload();
      v140 = sub_20C138544();

      v46 = v157;
      v47 = v154;
      v48 = v153;
      v49 = v155;
      v155(v20, v157 + v154, v153);
      sub_20C134474();
      v51 = v50;
      v52 = v159;
      v159(v20, v48);
      if (!v51)
      {
        v53 = v46 + v47;
        v54 = v145;
        v49(v145, v53, v48);
        v55 = sub_20C134494();
        v52(v54, v48);
        if (*(v55 + 16))
        {
          v56 = v143;
          v57 = v142;
          v58 = v144;
          (*(v143 + 16))(v142, v55 + ((*(v56 + 80) + 32) & ~*(v56 + 80)), v144);

          sub_20C137F04();
          (*(v56 + 8))(v57, v58);
        }

        else
        {
        }
      }

      v34 = v139;
      v59 = v140;
    }

    goto LABEL_31;
  }

  v135 = v29;
  v136 = v9;
  v60 = (v27 + OBJC_IVAR____TtC9SeymourUI41PhoneSessionPortraitSummaryViewController_storefrontLocalizer);
  __swift_project_boxed_opaque_existential_1((v27 + OBJC_IVAR____TtC9SeymourUI41PhoneSessionPortraitSummaryViewController_storefrontLocalizer), *(v27 + OBJC_IVAR____TtC9SeymourUI41PhoneSessionPortraitSummaryViewController_storefrontLocalizer + 24));
  v61 = sub_20C138D34();
  v63 = v62;
  __swift_project_boxed_opaque_existential_1(v60, v60[3]);
  v64 = sub_20C138D34();
  v145 = v65;
  v139 = v27;
  __swift_project_boxed_opaque_existential_1((v27 + OBJC_IVAR____TtC9SeymourUI41PhoneSessionPortraitSummaryViewController_mediaTagStringBuilder), *(v27 + OBJC_IVAR____TtC9SeymourUI41PhoneSessionPortraitSummaryViewController_mediaTagStringBuilder + 24));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763168, &unk_20C153890);
  v66 = *(sub_20C138094() - 8);
  v67 = (*(v66 + 80) + 32) & ~*(v66 + 80);
  v68 = swift_allocObject();
  *(v68 + 16) = xmmword_20C14F980;
  v69 = (v68 + v67);
  *v69 = v61;
  v69[1] = v63;
  v70 = v145;
  v69[2] = v64;
  v69[3] = v70;
  swift_storeEnumTagMultiPayload();
  v140 = sub_20C138544();

  v71 = v147;
  v155(v147, v157 + v154, v11);
  v72 = sub_20C134374();
  v52 = v159;
  v159(v71, v11);
  v73 = (v72 + 56);
  v74 = 1 << *(v72 + 32);
  v75 = -1;
  if (v74 < 64)
  {
    v75 = ~(-1 << v74);
  }

  v76 = v75 & *(v72 + 56);
  v77 = ((v74 + 63) >> 6);
  v143 = v151 + 16;
  v145 = (v151 + 32);
  v147 = (v151 + 8);

  v78 = 0;
  v79 = v150;
  v80 = v148;
  v142 = (v72 + 56);
  v141 = v77;
  v144 = v72;
  if (v76)
  {
    while (1)
    {
      v81 = v78;
LABEL_16:
      v82 = v151;
      v83 = v149;
      (*(v151 + 16))(v149, *(v72 + 48) + *(v151 + 72) * (__clz(__rbit64(v76)) | (v81 << 6)), v79);
      v137 = *(v82 + 32);
      v137(v80, v83, v79);
      v84 = sub_20C1335E4();
      v86 = v85;
      v162 = v84;
      v163 = v85;
      v88 = v87 & 1;
      v164 = v87 & 1;
      LOBYTE(v160) = 4;
      sub_20BE0D244();
      v89 = v80;
      sub_20BE0D298();
      v90 = sub_20C133C04();
      sub_20B583F4C(v84, v86, v88);
      if (v90)
      {

        v52 = v159;
        goto LABEL_26;
      }

      v91 = sub_20C1335E4();
      v93 = v92;
      v162 = v91;
      v163 = v92;
      v95 = v94 & 1;
      v164 = v94 & 1;
      LOBYTE(v160) = 2;
      v96 = sub_20C133C04();
      sub_20B583F4C(v91, v93, v95);
      v52 = v159;
      if (v96)
      {
        break;
      }

      v76 &= v76 - 1;
      v79 = v150;
      (*v147)(v89, v150);
      v78 = v81;
      v80 = v89;
      v72 = v144;
      v73 = v142;
      v77 = v141;
      if (!v76)
      {
        goto LABEL_12;
      }
    }

LABEL_26:
    v79 = v150;
    v137(v136, v148, v150);
    v97 = 0;
    v34 = v139;
    v59 = v140;
LABEL_27:
    v98 = v138;
    v99 = v151;
    v100 = v136;
    (*(v151 + 56))(v136, v97, 1, v79);

    v101 = v100;
    v102 = v146;
    sub_20B52F9E8(v101, v146, &qword_27C7698B0, &qword_20C17F2B0);
    if ((*(v99 + 48))(v102, 1, v79) == 1)
    {
      sub_20B520158(v102, &qword_27C7698B0, &qword_20C17F2B0);
    }

    else
    {
      sub_20C1335D4();
      (*v147)(v102, v79);
    }

    sub_20B583F4C(v135, v98, 1);
    sub_20B520158(v136, &qword_27C7698B0, &qword_20C17F2B0);
    goto LABEL_31;
  }

LABEL_12:
  v59 = v140;
  while (1)
  {
    v81 = v78 + 1;
    if (__OFADD__(v78, 1))
    {
      break;
    }

    if (v81 >= v77)
    {

      v97 = 1;
      v34 = v139;
      goto LABEL_27;
    }

    v76 = *&v73[8 * v81];
    ++v78;
    if (v76)
    {
      goto LABEL_16;
    }
  }

  __break(1u);
}

id sub_20BE0B3B0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765360, &unk_20C17F2A0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v20 - v2;
  v4 = OBJC_IVAR____TtC9SeymourUI41PhoneSessionPortraitSummaryViewController_summary;
  swift_beginAccess();
  sub_20B52F9E8(&v0[v4], v3, &unk_27C765360, &unk_20C17F2A0);
  v5 = type metadata accessor for SessionSummaryViewModel(0);
  LODWORD(v4) = (*(*(v5 - 8) + 48))(v3, 1, v5);
  result = sub_20B520158(v3, &unk_27C765360, &unk_20C17F2A0);
  if (v4 != 1)
  {
    [*(*&v0[OBJC_IVAR____TtC9SeymourUI41PhoneSessionPortraitSummaryViewController_gridView] + OBJC_IVAR____TtC9SeymourUI21SummaryMetricGridView_layout) invalidateLayout];
    result = [v0 view];
    if (result)
    {
      v7 = result;
      v8 = [result safeAreaLayoutGuide];

      [v8 layoutFrame];
      v10 = v9;
      v12 = v11;
      v14 = v13;
      v16 = v15;

      v21.origin.x = v10;
      v21.origin.y = v12;
      v21.size.width = v14;
      v21.size.height = v16;
      Width = CGRectGetWidth(v21);
      sub_20BA00314(2, Width);
      v19 = v18;
      [*&v0[OBJC_IVAR____TtC9SeymourUI41PhoneSessionPortraitSummaryViewController_gridViewWidth] setConstant_];
      return [*&v0[OBJC_IVAR____TtC9SeymourUI41PhoneSessionPortraitSummaryViewController_gridViewHeight] setConstant_];
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

id sub_20BE0B5DC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PhoneSessionPortraitSummaryViewController(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for PhoneSessionPortraitSummaryViewController(uint64_t a1)
{
  result = qword_2811005D8;
  if (!qword_2811005D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_20BE0B808(uint64_t a1)
{
  sub_20B79F044(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

id sub_20BE0B8EC(uint64_t a1)
{
  [*(a1 + OBJC_IVAR____TtC9SeymourUI41PhoneSessionPortraitSummaryViewController_contentSummaryView) setAlpha_];
  [*(a1 + OBJC_IVAR____TtC9SeymourUI41PhoneSessionPortraitSummaryViewController_gridView) setAlpha_];
  [*(a1 + OBJC_IVAR____TtC9SeymourUI41PhoneSessionPortraitSummaryViewController_bottomStackView) setAlpha_];
  v2 = *(a1 + OBJC_IVAR____TtC9SeymourUI41PhoneSessionPortraitSummaryViewController_activityRingsView);

  return [v2 setAlpha_];
}

void sub_20BE0B97C(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C770980, &unk_20C1588A0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v26 - v5;
  v7 = type metadata accessor for SummaryActivityRingsMetricViewModel(0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765360, &unk_20C17F2A0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v26 - v12;
  sub_20BE0D120(a1, &v26 - v12);
  v14 = type metadata accessor for SessionSummaryViewModel(0);
  (*(*(v14 - 8) + 56))(v13, 0, 1, v14);
  v15 = OBJC_IVAR____TtC9SeymourUI41PhoneSessionPortraitSummaryViewController_summary;
  swift_beginAccess();
  sub_20B7A30E4(v13, &v2[v15]);
  swift_endAccess();
  sub_20B52F9E8(a1 + *(v14 + 60), v6, &unk_27C770980, &unk_20C1588A0);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_20B520158(v6, &unk_27C770980, &unk_20C1588A0);
    v16 = [*&v2[OBJC_IVAR____TtC9SeymourUI41PhoneSessionPortraitSummaryViewController_activityRingsView] setHidden_];
  }

  else
  {
    sub_20BE0D184(v6, v10);
    v17 = *&v2[OBJC_IVAR____TtC9SeymourUI41PhoneSessionPortraitSummaryViewController_activityRingsView];
    sub_20BC5762C(v10, 1);
    [v17 setHidden_];
    v16 = sub_20BE0D1E8(v10);
  }

  v18 = sub_20B839B88(v16);
  sub_20BA006A0(v18);

  sub_20BE0A204(v19);
  v20 = [v2 view];
  if (!v20)
  {
    __break(1u);
    goto LABEL_9;
  }

  v21 = v20;
  [v20 setNeedsUpdateConstraints];

  v22 = [v2 view];
  if (!v22)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v23 = v22;
  [v22 setNeedsLayout];

  v24 = [v2 view];
  if (v24)
  {
    v25 = v24;
    [v24 layoutIfNeeded];

    return;
  }

LABEL_10:
  __break(1u);
}

void sub_20BE0BCD8(id a1)
{
  v17.receiver = v1;
  v17.super_class = type metadata accessor for PhoneSessionPortraitSummaryViewController(0);
  objc_msgSendSuper2(&v17, sel_traitCollectionDidChange_, a1);
  if (a1)
  {
    a1 = [a1 preferredContentSizeCategory];
  }

  v3 = [v1 traitCollection];
  v4 = [v3 preferredContentSizeCategory];

  if (!a1)
  {

    goto LABEL_11;
  }

  v5 = sub_20C13C954();
  v7 = v6;
  if (v5 != sub_20C13C954() || v7 != v8)
  {
    v10 = sub_20C13DFF4();

    if (v10)
    {
      return;
    }

LABEL_11:
    v11 = [v1 view];
    if (v11)
    {
      v12 = v11;
      [v11 setNeedsUpdateConstraints];

      v13 = [v1 view];
      if (v13)
      {
        v14 = v13;
        [v13 setNeedsLayout];

        v15 = [v1 view];
        if (v15)
        {
          v16 = v15;
          [v15 layoutIfNeeded];

          return;
        }

        goto LABEL_19;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
LABEL_19:
    __break(1u);
    return;
  }
}

void sub_20BE0BF58()
{
  v1 = objc_opt_self();
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  v5[4] = sub_20BE0D118;
  v5[5] = v2;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 1107296256;
  v5[2] = sub_20B7B548C;
  v5[3] = &block_descriptor_138;
  v3 = _Block_copy(v5);
  v4 = v0;

  [v1 animateWithDuration:v3 animations:0.3];
  _Block_release(v3);
}

void sub_20BE0C0EC(uint64_t a1, uint64_t a2)
{
  v3 = sub_20B84DBE8(a1, a2);
  [v2 presentViewController:v3 animated:1 completion:0];
}

uint64_t sub_20BE0C140@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763250, &qword_20C153CB0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v16 - v4;
  v6 = sub_20C1344C4();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v10, *(v1 + OBJC_IVAR____TtC9SeymourUI41PhoneSessionPortraitSummaryViewController_presenter) + OBJC_IVAR____TtC9SeymourUI23SessionSummaryPresenter_catalogWorkout, v6, v8);
  sub_20C134414();
  (*(v7 + 8))(v10, v6);
  v11 = sub_20C135B04();
  v12 = (*(*(v11 - 8) + 48))(v5, 1, v11);
  sub_20B520158(v5, &qword_27C763250, &qword_20C153CB0);
  v13 = sub_20C1390D4();
  v14 = MEMORY[0x277D54278];
  if (v12 != 1)
  {
    v14 = MEMORY[0x277D54280];
  }

  return (*(*(v13 - 8) + 104))(a1, *v14, v13);
}

char *sub_20BE0C3A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void *a6)
{
  v7 = OBJC_IVAR____TtC9SeymourUI41PhoneSessionPortraitSummaryViewController_contentSummaryView;
  v8 = [objc_allocWithZone(type metadata accessor for SummaryContentSummaryView()) initWithFrame_];
  [v8 setTranslatesAutoresizingMaskIntoConstraints_];
  *&v6[v7] = v8;
  v9 = OBJC_IVAR____TtC9SeymourUI41PhoneSessionPortraitSummaryViewController_scrollView;
  v10 = [objc_allocWithZone(MEMORY[0x277D759D8]) &selRef:0.0 :{0.0, 0.0, 0.0}hysteresis];
  [v10 &selRef_count + 2];
  v11 = sub_20C13C914();
  [v10 setAccessibilityIdentifier_];

  *&v6[v9] = v10;
  v12 = OBJC_IVAR____TtC9SeymourUI41PhoneSessionPortraitSummaryViewController_contentView;
  v13 = [objc_allocWithZone(MEMORY[0x277D75D18]) &selRef:0.0 :{0.0, 0.0, 0.0}hysteresis];
  [v13 &selRef_count + 2];
  v96 = objc_opt_self();
  v14 = [v96 clearColor];
  [v13 setBackgroundColor_];

  *&v6[v12] = v13;
  v15 = OBJC_IVAR____TtC9SeymourUI41PhoneSessionPortraitSummaryViewController_gridView;
  v16 = [objc_allocWithZone(type metadata accessor for SummaryMetricGridView()) &selRef:0.0 :{0.0, 0.0, 0.0}hysteresis];
  [v16 &selRef_count + 2];
  *&v6[v15] = v16;
  v17 = OBJC_IVAR____TtC9SeymourUI41PhoneSessionPortraitSummaryViewController_bottomStackView;
  v18 = [objc_allocWithZone(MEMORY[0x277D75A68]) &selRef:0.0 :{0.0, 0.0, 0.0}hysteresis];
  [v18 &selRef_count + 2];
  [v18 setAlignment_];
  [v18 setAxis_];
  [v18 setDistribution_];
  [v18 setSpacing_];
  *&v6[v17] = v18;
  v98 = OBJC_IVAR____TtC9SeymourUI41PhoneSessionPortraitSummaryViewController_doneButton;
  v19 = type metadata accessor for SummaryPlatterButtonView();
  v20 = [objc_allocWithZone(v19) &selRef:0.0 :{0.0, 0.0, 0.0}hysteresis];
  [v20 &selRef_count + 2];
  v21 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.650980392 green:1.0 blue:0.0 alpha:1.0];
  [v20 &:v21 OBJC:? LABEL:? PROTOCOL:? :? :?UINavigationControllerDelegate];

  type metadata accessor for SeymourLocalizationBundle();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v22 = objc_opt_self();
  v23 = [v22 bundleForClass_];
  sub_20C132964();

  v24 = [v96 blackColor];
  v25 = OBJC_IVAR____TtC9SeymourUI24SummaryPlatterButtonView_label;
  v26 = *&v20[OBJC_IVAR____TtC9SeymourUI24SummaryPlatterButtonView_label];
  v27 = sub_20C13C914();

  [v26 setText_];

  [*&v20[v25] setTextColor_];
  [v20 setNeedsLayout];

  v28 = sub_20C13C914();
  [v20 setAccessibilityIdentifier_];

  *&v6[v98] = v20;
  v29 = [objc_allocWithZone(v19) initWithFrame_];
  [v29 setTranslatesAutoresizingMaskIntoConstraints_];
  LODWORD(v28) = sub_20C1380F4();
  v30 = objc_allocWithZone(MEMORY[0x277D75348]);
  v31 = 0.15;
  if (v28 == 3)
  {
    v31 = 0.415686275;
  }

  v32 = [v30 initWithWhite:v31 alpha:1.0];
  v33 = OBJC_IVAR____TtC9SeymourUI41PhoneSessionPortraitSummaryViewController_cooldownButton;
  [v29 setBackgroundColor_];

  v34 = [v22 bundleForClass_];
  sub_20C132964();

  v35 = [v96 whiteColor];
  v36 = OBJC_IVAR____TtC9SeymourUI24SummaryPlatterButtonView_label;
  v37 = *&v29[OBJC_IVAR____TtC9SeymourUI24SummaryPlatterButtonView_label];
  v38 = sub_20C13C914();

  [v37 setText_];

  [*&v29[v36] setTextColor_];
  [v29 setNeedsLayout];

  v39 = sub_20C13C914();
  [v29 setAccessibilityIdentifier_];

  *&v6[v33] = v29;
  v40 = [objc_allocWithZone(MEMORY[0x277D75220]) init];
  v41 = [objc_opt_self() configurationWithPointSize_];
  v42 = sub_20C13C914();
  v43 = [objc_opt_self() systemImageNamed:v42 withConfiguration:v41];

  if (v43)
  {
    v44 = [v43 imageWithRenderingMode_];
  }

  else
  {
    v44 = 0;
  }

  v45 = OBJC_IVAR____TtC9SeymourUI41PhoneSessionPortraitSummaryViewController_ttrButton;
  [v40 setBackgroundImage:v44 forState:0];

  v46 = v40;
  [v46 setTranslatesAutoresizingMaskIntoConstraints_];
  v47 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.650980392 green:1.0 blue:0.0 alpha:1.0];
  [v46 setTintColor_];

  *&v6[v45] = v46;
  v48 = OBJC_IVAR____TtC9SeymourUI41PhoneSessionPortraitSummaryViewController_activityRingsToScrollViewBottomConstraint;
  *&v6[v48] = [objc_allocWithZone(MEMORY[0x277CCAAD0]) init];
  v49 = OBJC_IVAR____TtC9SeymourUI41PhoneSessionPortraitSummaryViewController_contentSummaryViewTopConstraint;
  *&v6[v49] = [objc_allocWithZone(MEMORY[0x277CCAAD0]) init];
  v50 = OBJC_IVAR____TtC9SeymourUI41PhoneSessionPortraitSummaryViewController_gridViewHeight;
  *&v6[v50] = [objc_allocWithZone(MEMORY[0x277CCAAD0]) init];
  v51 = OBJC_IVAR____TtC9SeymourUI41PhoneSessionPortraitSummaryViewController_gridViewWidth;
  *&v6[v51] = [objc_allocWithZone(MEMORY[0x277CCAAD0]) init];
  v52 = OBJC_IVAR____TtC9SeymourUI41PhoneSessionPortraitSummaryViewController_gridViewTopSpacing;
  *&v6[v52] = [objc_allocWithZone(MEMORY[0x277CCAAD0]) init];
  v53 = OBJC_IVAR____TtC9SeymourUI41PhoneSessionPortraitSummaryViewController_summary;
  v54 = type metadata accessor for SessionSummaryViewModel(0);
  (*(*(v54 - 8) + 56))(&v6[v53], 1, 1, v54);
  *&v6[OBJC_IVAR____TtC9SeymourUI41PhoneSessionPortraitSummaryViewController_presenter] = a1;
  v55 = &v6[OBJC_IVAR____TtC9SeymourUI41PhoneSessionPortraitSummaryViewController_eventHub];
  *v55 = a3;
  *(v55 + 1) = a4;
  sub_20B51CC64(a5, &v6[OBJC_IVAR____TtC9SeymourUI41PhoneSessionPortraitSummaryViewController_storefrontLocalizer]);
  sub_20B51CC64(a6, &v6[OBJC_IVAR____TtC9SeymourUI41PhoneSessionPortraitSummaryViewController_mediaTagStringBuilder]);
  v56 = *(a1 + OBJC_IVAR____TtC9SeymourUI23SessionSummaryPresenter_stringBuilder + 48);
  v107[2] = *(a1 + OBJC_IVAR____TtC9SeymourUI23SessionSummaryPresenter_stringBuilder + 32);
  v107[3] = v56;
  v108 = *(a1 + OBJC_IVAR____TtC9SeymourUI23SessionSummaryPresenter_stringBuilder + 64);
  v57 = *(a1 + OBJC_IVAR____TtC9SeymourUI23SessionSummaryPresenter_stringBuilder + 16);
  v107[0] = *(a1 + OBJC_IVAR____TtC9SeymourUI23SessionSummaryPresenter_stringBuilder);
  v107[1] = v57;
  memmove(&v6[OBJC_IVAR____TtC9SeymourUI41PhoneSessionPortraitSummaryViewController_stringBuilder], (a1 + OBJC_IVAR____TtC9SeymourUI23SessionSummaryPresenter_stringBuilder), 0x42uLL);
  v58 = objc_allocWithZone(type metadata accessor for SummaryActivityRingsView());

  swift_unknownObjectRetain();
  sub_20B7A3194(v107, v106);
  v59 = [v58 init];
  [v59 setTranslatesAutoresizingMaskIntoConstraints_];
  *&v6[OBJC_IVAR____TtC9SeymourUI41PhoneSessionPortraitSummaryViewController_activityRingsView] = v59;
  v105.receiver = v6;
  v105.super_class = type metadata accessor for PhoneSessionPortraitSummaryViewController(0);
  v60 = objc_msgSendSuper2(&v105, sel_initWithNibName_bundle_, 0, 0);
  *(*&v60[OBJC_IVAR____TtC9SeymourUI41PhoneSessionPortraitSummaryViewController_presenter] + 24) = &off_2822E9A50;
  swift_unknownObjectWeakAssign();
  v61 = OBJC_IVAR____TtC9SeymourUI41PhoneSessionPortraitSummaryViewController_bottomStackView;
  v62 = *&v60[OBJC_IVAR____TtC9SeymourUI41PhoneSessionPortraitSummaryViewController_bottomStackView];
  v63 = OBJC_IVAR____TtC9SeymourUI41PhoneSessionPortraitSummaryViewController_doneButton;
  v64 = *&v60[OBJC_IVAR____TtC9SeymourUI41PhoneSessionPortraitSummaryViewController_doneButton];
  v65 = v60;
  [v62 addArrangedSubview_];
  v66 = OBJC_IVAR____TtC9SeymourUI41PhoneSessionPortraitSummaryViewController_cooldownButton;
  [*&v60[v61] addArrangedSubview_];
  v67 = *&v60[v63];
  v68 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v69 = &v67[OBJC_IVAR____TtC9SeymourUI24SummaryPlatterButtonView_onTapped];
  v70 = *&v67[OBJC_IVAR____TtC9SeymourUI24SummaryPlatterButtonView_onTapped];
  v71 = *&v67[OBJC_IVAR____TtC9SeymourUI24SummaryPlatterButtonView_onTapped + 8];
  *v69 = sub_20BE0D058;
  v69[1] = v68;
  v72 = v67;

  sub_20B583ECC(v70, v71);

  v73 = *&v65[v66];
  v74 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v75 = &v73[OBJC_IVAR____TtC9SeymourUI24SummaryPlatterButtonView_onTapped];
  v76 = *&v73[OBJC_IVAR____TtC9SeymourUI24SummaryPlatterButtonView_onTapped];
  v77 = *&v73[OBJC_IVAR____TtC9SeymourUI24SummaryPlatterButtonView_onTapped + 8];
  *v75 = sub_20BE0D088;
  v75[1] = v74;
  v78 = v65;
  v79 = v73;

  sub_20B583ECC(v76, v77);

  v80 = *&v78[OBJC_IVAR____TtC9SeymourUI41PhoneSessionPortraitSummaryViewController_ttrButton];
  [v80 addTarget:v78 action:sel_handleGuidedRunButtonTapped forControlEvents:64];

  v81 = OBJC_IVAR____TtC9SeymourUI41PhoneSessionPortraitSummaryViewController_contentSummaryView;
  v82 = *&v78[OBJC_IVAR____TtC9SeymourUI41PhoneSessionPortraitSummaryViewController_contentSummaryView];
  v83 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v84 = &v82[OBJC_IVAR____TtC9SeymourUI25SummaryContentSummaryView_onBookmarkTapped];
  v85 = *&v82[OBJC_IVAR____TtC9SeymourUI25SummaryContentSummaryView_onBookmarkTapped];
  v86 = *&v82[OBJC_IVAR____TtC9SeymourUI25SummaryContentSummaryView_onBookmarkTapped + 8];
  *v84 = sub_20BE0D0B8;
  v84[1] = v83;
  v87 = v82;

  sub_20B583ECC(v85, v86);

  v88 = *&v78[v81];
  v89 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v90 = v88;

  v91 = &v90[OBJC_IVAR____TtC9SeymourUI25SummaryContentSummaryView_onShareButtonTapped];
  v92 = *&v90[OBJC_IVAR____TtC9SeymourUI25SummaryContentSummaryView_onShareButtonTapped];
  v93 = *&v90[OBJC_IVAR____TtC9SeymourUI25SummaryContentSummaryView_onShareButtonTapped + 8];
  *v91 = sub_20BE0D0E8;
  v91[1] = v89;

  sub_20B583ECC(v92, v93);

  [*&v78[v81] setAlpha_];
  [*&v78[OBJC_IVAR____TtC9SeymourUI41PhoneSessionPortraitSummaryViewController_gridView] setAlpha_];
  [*&v60[v61] setAlpha_];
  [*&v78[OBJC_IVAR____TtC9SeymourUI41PhoneSessionPortraitSummaryViewController_activityRingsView] setAlpha_];

  __swift_destroy_boxed_opaque_existential_1(a6);
  __swift_destroy_boxed_opaque_existential_1(a5);
  v94 = sub_20C137254();
  (*(*(v94 - 8) + 8))(a2, v94);
  return v78;
}

uint64_t sub_20BE0D120(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SessionSummaryViewModel(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_20BE0D184(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SummaryActivityRingsMetricViewModel(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_20BE0D1E8(uint64_t a1)
{
  v2 = type metadata accessor for SummaryActivityRingsMetricViewModel(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_20BE0D244()
{
  result = qword_27C76F520;
  if (!qword_27C76F520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C76F520);
  }

  return result;
}

unint64_t sub_20BE0D298()
{
  result = qword_27C76F528;
  if (!qword_27C76F528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C76F528);
  }

  return result;
}

uint64_t sub_20BE0D2EC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_20BE0D510()
{
  v1 = OBJC_IVAR____TtC9SeymourUI41PhoneSessionPortraitSummaryViewController_contentSummaryView;
  v2 = [objc_allocWithZone(type metadata accessor for SummaryContentSummaryView()) initWithFrame_];
  [v2 setTranslatesAutoresizingMaskIntoConstraints_];
  *(v0 + v1) = v2;
  v3 = OBJC_IVAR____TtC9SeymourUI41PhoneSessionPortraitSummaryViewController_scrollView;
  v4 = [objc_allocWithZone(MEMORY[0x277D759D8]) &selRef:0.0 :{0.0, 0.0, 0.0}hysteresis];
  [v4 &selRef_count + 2];
  v5 = sub_20C13C914();
  [v4 setAccessibilityIdentifier_];

  *(v0 + v3) = v4;
  v6 = OBJC_IVAR____TtC9SeymourUI41PhoneSessionPortraitSummaryViewController_contentView;
  v7 = [objc_allocWithZone(MEMORY[0x277D75D18]) &selRef:0.0 :{0.0, 0.0, 0.0}hysteresis];
  [v7 &selRef_count + 2];
  v49 = objc_opt_self();
  v8 = [v49 clearColor];
  [v7 setBackgroundColor_];

  *(v0 + v6) = v7;
  v9 = OBJC_IVAR____TtC9SeymourUI41PhoneSessionPortraitSummaryViewController_gridView;
  v10 = [objc_allocWithZone(type metadata accessor for SummaryMetricGridView()) &selRef:0.0 :{0.0, 0.0, 0.0}hysteresis];
  [v10 &selRef_count + 2];
  *(v0 + v9) = v10;
  v11 = OBJC_IVAR____TtC9SeymourUI41PhoneSessionPortraitSummaryViewController_bottomStackView;
  v12 = [objc_allocWithZone(MEMORY[0x277D75A68]) &selRef:0.0 :{0.0, 0.0, 0.0}hysteresis];
  [v12 &selRef_count + 2];
  [v12 setAlignment_];
  [v12 setAxis_];
  [v12 setDistribution_];
  [v12 setSpacing_];
  *(v0 + v11) = v12;
  v51 = OBJC_IVAR____TtC9SeymourUI41PhoneSessionPortraitSummaryViewController_doneButton;
  v13 = type metadata accessor for SummaryPlatterButtonView();
  v14 = [objc_allocWithZone(v13) &selRef:0.0 :{0.0, 0.0, 0.0}hysteresis];
  [v14 &selRef_count + 2];
  v15 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.650980392 green:1.0 blue:0.0 alpha:1.0];
  [v14 &:v15 OBJC:? LABEL:? PROTOCOL:? :? :?UINavigationControllerDelegate];

  type metadata accessor for SeymourLocalizationBundle();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v16 = objc_opt_self();
  v17 = [v16 bundleForClass_];
  sub_20C132964();

  v18 = [v49 blackColor];
  v19 = OBJC_IVAR____TtC9SeymourUI24SummaryPlatterButtonView_label;
  v20 = *&v14[OBJC_IVAR____TtC9SeymourUI24SummaryPlatterButtonView_label];
  v21 = sub_20C13C914();

  [v20 setText_];

  [*&v14[v19] setTextColor_];
  [v14 setNeedsLayout];

  v22 = sub_20C13C914();
  [v14 setAccessibilityIdentifier_];

  *(v0 + v51) = v14;
  v23 = [objc_allocWithZone(v13) initWithFrame_];
  [v23 setTranslatesAutoresizingMaskIntoConstraints_];
  LODWORD(v19) = sub_20C1380F4();
  v24 = objc_allocWithZone(MEMORY[0x277D75348]);
  v25 = 0.15;
  if (v19 == 3)
  {
    v25 = 0.415686275;
  }

  v26 = [v24 initWithWhite:v25 alpha:1.0];
  v27 = OBJC_IVAR____TtC9SeymourUI41PhoneSessionPortraitSummaryViewController_cooldownButton;
  [v23 setBackgroundColor_];

  v28 = [v16 bundleForClass_];
  sub_20C132964();

  v29 = [v49 whiteColor];
  v30 = OBJC_IVAR____TtC9SeymourUI24SummaryPlatterButtonView_label;
  v31 = *&v23[OBJC_IVAR____TtC9SeymourUI24SummaryPlatterButtonView_label];
  v32 = sub_20C13C914();

  [v31 setText_];

  [*&v23[v30] setTextColor_];
  [v23 setNeedsLayout];

  v33 = sub_20C13C914();
  [v23 setAccessibilityIdentifier_];

  *(v0 + v27) = v23;
  v34 = [objc_allocWithZone(MEMORY[0x277D75220]) init];
  v35 = [objc_opt_self() configurationWithPointSize_];
  v36 = sub_20C13C914();
  v37 = [objc_opt_self() systemImageNamed:v36 withConfiguration:v35];

  if (v37)
  {
    v38 = [v37 imageWithRenderingMode_];
  }

  else
  {
    v38 = 0;
  }

  v39 = OBJC_IVAR____TtC9SeymourUI41PhoneSessionPortraitSummaryViewController_ttrButton;
  [v34 setBackgroundImage:v38 forState:0];

  v40 = v34;
  [v40 setTranslatesAutoresizingMaskIntoConstraints_];
  v41 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.650980392 green:1.0 blue:0.0 alpha:1.0];
  [v40 setTintColor_];

  *(v0 + v39) = v40;
  v42 = OBJC_IVAR____TtC9SeymourUI41PhoneSessionPortraitSummaryViewController_activityRingsToScrollViewBottomConstraint;
  *(v0 + v42) = [objc_allocWithZone(MEMORY[0x277CCAAD0]) init];
  v43 = OBJC_IVAR____TtC9SeymourUI41PhoneSessionPortraitSummaryViewController_contentSummaryViewTopConstraint;
  *(v0 + v43) = [objc_allocWithZone(MEMORY[0x277CCAAD0]) init];
  v44 = OBJC_IVAR____TtC9SeymourUI41PhoneSessionPortraitSummaryViewController_gridViewHeight;
  *(v0 + v44) = [objc_allocWithZone(MEMORY[0x277CCAAD0]) init];
  v45 = OBJC_IVAR____TtC9SeymourUI41PhoneSessionPortraitSummaryViewController_gridViewWidth;
  *(v0 + v45) = [objc_allocWithZone(MEMORY[0x277CCAAD0]) init];
  v46 = OBJC_IVAR____TtC9SeymourUI41PhoneSessionPortraitSummaryViewController_gridViewTopSpacing;
  *(v0 + v46) = [objc_allocWithZone(MEMORY[0x277CCAAD0]) init];
  v47 = OBJC_IVAR____TtC9SeymourUI41PhoneSessionPortraitSummaryViewController_summary;
  v48 = type metadata accessor for SessionSummaryViewModel(0);
  (*(*(v48 - 8) + 56))(v0 + v47, 1, 1, v48);
  sub_20C13DE24();
  __break(1u);
}

uint64_t __swift_memcpy12_4(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 2);
  *result = v2;
  return result;
}

uint64_t _s11EnvironmentVwet(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 12))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 4);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t _s11EnvironmentVwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 12) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 12) = 0;
    }

    if (a2)
    {
      *(result + 4) = a2 + 1;
    }
  }

  return result;
}

uint64_t TVNavigationRouterInterceptionPresenter.__allocating_init()()
{
  v0 = swift_allocObject();
  v1 = v0 + OBJC_IVAR____TtC9SeymourUI39TVNavigationRouterInterceptionPresenter_currentHandler;
  *v1 = 0u;
  *(v1 + 16) = 0u;
  *(v1 + 32) = 0;
  *(v0 + OBJC_IVAR____TtC9SeymourUI39TVNavigationRouterInterceptionPresenter_display + 8) = 0;
  swift_unknownObjectWeakInit();
  type metadata accessor for TVNavigationRouterInterceptionPresenter.State(0);
  swift_storeEnumTagMultiPayload();
  return v0;
}

uint64_t TVNavigationRouterInterceptionPresenter.init()()
{
  v1 = v0 + OBJC_IVAR____TtC9SeymourUI39TVNavigationRouterInterceptionPresenter_currentHandler;
  *v1 = 0u;
  *(v1 + 16) = 0u;
  *(v1 + 32) = 0;
  *(v0 + OBJC_IVAR____TtC9SeymourUI39TVNavigationRouterInterceptionPresenter_display + 8) = 0;
  swift_unknownObjectWeakInit();
  type metadata accessor for TVNavigationRouterInterceptionPresenter.State(0);
  swift_storeEnumTagMultiPayload();
  return v0;
}

uint64_t sub_20BE0DF84@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v60 = a2;
  v53 = a1;
  v48 = a3;
  v5 = type metadata accessor for NavigationRequest(0);
  v51 = *(v5 - 8);
  v6 = *(v51 + 64);
  MEMORY[0x28223BE20](v5);
  v52 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7641C0, &qword_20C161470);
  v58 = *(v7 - 8);
  v8 = *(v58 + 64);
  MEMORY[0x28223BE20](v7);
  v59 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v56 = &v46 - v10;
  MEMORY[0x28223BE20](v11);
  v13 = &v46 - v12;
  MEMORY[0x28223BE20](v14);
  v16 = &v46 - v15;
  v17 = sub_20C13BB84();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = &v46 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B534();
  sub_20C13BB64();
  (*(v18 + 8))(v20, v17);
  v55 = v4;
  v21 = v4 + OBJC_IVAR____TtC9SeymourUI39TVNavigationRouterInterceptionPresenter_display;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v57 = Strong;
    v54 = *(v21 + 8);
    v23 = v52;
    sub_20BE103F4(v53, v52, type metadata accessor for NavigationRequest);
    v24 = (*(v51 + 80) + 16) & ~*(v51 + 80);
    v25 = swift_allocObject();
    sub_20B75B150(v23, v25 + v24);
    sub_20C137CA4();
    v26 = v58;
    v27 = *(v58 + 16);
    v27(v13, v16, v7);
    v28 = *(v60 + 16);
    v29 = v13;
    if (v28)
    {
      v47 = v16;
      v30 = v60 + 32;
      v52 = v26 + 32;
      v53 = v8 + 7;
      v51 = v26 + 8;
      v46 = (v26 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v31 = v59;
      v50 = v27;
      v49 = v5;
      do
      {
        v60 = v30;
        v58 = v28;
        sub_20B51CC64(v30, v62);
        v32 = swift_allocObject();
        swift_weakInit();
        sub_20B51CC64(v62, v61);
        v33 = swift_allocObject();
        sub_20B51C710(v61, v33 + 16);
        v34 = v57;
        *(v33 + 7) = v32;
        *(v33 + 8) = v34;
        *(v33 + 9) = v54;
        v50(v31, v29, v7);
        v35 = (*(v26 + 80) + 16) & ~*(v26 + 80);
        v36 = (v53 + v35) & 0xFFFFFFFFFFFFFFF8;
        v37 = swift_allocObject();
        v38 = *(v26 + 32);
        v38(v37 + v35, v59, v7);
        v39 = (v37 + v36);
        *v39 = sub_20BE11108;
        v39[1] = v33;
        swift_unknownObjectRetain();
        v40 = v56;
        sub_20C137C94();
        __swift_destroy_boxed_opaque_existential_1(v62);
        v41 = *(v26 + 8);
        v41(v29, v7);
        v38(v29, v40, v7);
        v31 = v59;
        v30 = v60 + 40;
        v28 = v58 - 1;
      }

      while (v58 != 1);
      swift_unknownObjectRelease();
      v42 = v48;
      v16 = v47;
    }

    else
    {
      swift_unknownObjectRelease();
      v41 = *(v26 + 8);
      v42 = v48;
    }

    v41(v16, v7);
    return (*(v26 + 32))(v42, v29, v7);
  }

  else
  {
    sub_20B5D9BA8();
    v43 = swift_allocError();
    *v44 = 12;
    *(swift_allocObject() + 16) = v43;
    return sub_20C137CA4();
  }
}

uint64_t sub_20BE0E584@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v42 = a6;
  v11 = type metadata accessor for NavigationRequest(0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_20C13BB84();
  v14 = *(v41 - 8);
  MEMORY[0x28223BE20](v41);
  v16 = v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B534();
  sub_20B51CC64(a2, v45);
  v43 = a1;
  sub_20BE103F4(a1, v13, type metadata accessor for NavigationRequest);
  v17 = sub_20C13BB74();
  v18 = sub_20C13D1F4();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v38[1] = a3;
    v20 = v19;
    v21 = swift_slowAlloc();
    v40 = a5;
    v22 = v21;
    v44[0] = v21;
    *v20 = 136446466;
    v39 = a4;
    __swift_project_boxed_opaque_existential_1(v45, v45[3]);
    v23 = sub_20C1382C4();
    v25 = v24;
    __swift_destroy_boxed_opaque_existential_1(v45);
    v26 = sub_20B51E694(v23, v25, v44);

    *(v20 + 4) = v26;
    *(v20 + 12) = 2082;
    v27 = NavigationRequest.description.getter();
    v29 = v28;
    sub_20B76BB2C(v13, type metadata accessor for NavigationRequest);
    v30 = sub_20B51E694(v27, v29, v44);
    a4 = v39;

    *(v20 + 14) = v30;
    _os_log_impl(&dword_20B517000, v17, v18, "Starting interception using %{public}s for %{public}s", v20, 0x16u);
    swift_arrayDestroy();
    v31 = v22;
    a5 = v40;
    MEMORY[0x20F2F6A40](v31, -1, -1);
    MEMORY[0x20F2F6A40](v20, -1, -1);

    (*(v14 + 8))(v16, v41);
  }

  else
  {

    sub_20B76BB2C(v13, type metadata accessor for NavigationRequest);
    (*(v14 + 8))(v16, v41);
    __swift_destroy_boxed_opaque_existential_1(v45);
  }

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v33 = Strong;
    sub_20B51CC64(a2, v45);
    v34 = OBJC_IVAR____TtC9SeymourUI39TVNavigationRouterInterceptionPresenter_currentHandler;
    swift_beginAccess();
    sub_20BB2C72C(v45, v33 + v34);
    swift_endAccess();
  }

  v35 = a2[3];
  v36 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v35);
  return (*(v36 + 16))(v43, a4, a5, v35, v36);
}

void sub_20BE0E944(void (*a1)(void **), uint64_t a2, uint64_t a3, int a4)
{
  v46 = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0, &unk_20C150360);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v44 - v8;
  v10 = type metadata accessor for TVNavigationRouterInterceptionPresenter.State(0);
  MEMORY[0x28223BE20](v10);
  v12 = &v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = (&v44 - v14);
  v16 = swift_allocObject();
  *(v16 + 16) = a1;
  *(v16 + 24) = a2;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {

    goto LABEL_6;
  }

  v44 = v7;
  v45 = v6;
  v18 = OBJC_IVAR____TtC9SeymourUI39TVNavigationRouterInterceptionPresenter_state;
  v19 = Strong;
  swift_beginAccess();
  sub_20BE103F4(v19 + v18, v15, type metadata accessor for TVNavigationRouterInterceptionPresenter.State);

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v21 = *v15;
    goto LABEL_8;
  }

  if (EnumCaseMultiPayload != 1)
  {
LABEL_6:

    sub_20B5D9BA8();
    v23 = swift_allocError();
    *v24 = 9;
    *&v49[0] = v23;
    BYTE8(v49[0]) = 1;
    a1(v49);
    goto LABEL_17;
  }

  v21 = *v15;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764D60, "^>\a");
  sub_20B76BB2C(v15 + *(v22 + 48), type metadata accessor for NavigationRequest);
LABEL_8:
  swift_beginAccess();
  v25 = swift_weakLoadStrong();
  if (v25)
  {
    v26 = v25;
    swift_storeEnumTagMultiPayload();
    v27 = OBJC_IVAR____TtC9SeymourUI39TVNavigationRouterInterceptionPresenter_state;
    swift_beginAccess();
    sub_20BE11140(v12, v26 + v27);
    swift_endAccess();
  }

  swift_beginAccess();
  v28 = swift_weakLoadStrong();
  if (v28)
  {
    v50 = 0;
    memset(v49, 0, sizeof(v49));
    v29 = OBJC_IVAR____TtC9SeymourUI39TVNavigationRouterInterceptionPresenter_currentHandler;
    v30 = v28;
    swift_beginAccess();
    sub_20BB2C72C(v49, v30 + v29);
    swift_endAccess();
  }

  swift_beginAccess();
  v31 = swift_weakLoadStrong();
  if (v31)
  {
    v32 = v31 + OBJC_IVAR____TtC9SeymourUI39TVNavigationRouterInterceptionPresenter_display;
    v33 = swift_unknownObjectWeakLoadStrong();
    v34 = *(v32 + 8);

    if (v33)
    {
      ObjectType = swift_getObjectType();
      (*(v34 + 80))(v46 & 1, ObjectType, v34);
      v36 = swift_allocObject();
      v36[2] = v21;
      v36[3] = sub_20B5D9B44;
      v36[4] = v16;
      v37 = v45;
      v38 = sub_20C137CB4();
      v39 = swift_allocObject();
      *(v39 + 16) = sub_20BE112A0;
      *(v39 + 24) = v36;

      v38(sub_20B52347C, v39);
      swift_unknownObjectRelease();

      (*(v44 + 8))(v9, v37);
      return;
    }
  }

  v40 = [v21 view];
  if (!v40)
  {
    __break(1u);
    return;
  }

  v41 = v40;

  v42 = [v41 window];
  [v42 makeKeyAndVisible];
  sub_20B5D9BA8();
  v23 = swift_allocError();
  *v43 = 12;
  v47 = v23;
  v48 = 1;
  a1(&v47);

LABEL_17:
}

void sub_20BE0EEB0(uint64_t *a1, id a2, void (*a3)(uint64_t, uint64_t))
{
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = [a2 view];
  if (v6)
  {
    v7 = v6;
    v8 = [v6 window];

    [v8 makeKeyAndVisible];
    a3(v4, v5);
  }

  else
  {
    __break(1u);
  }
}

void sub_20BE0EF6C()
{
  v1 = type metadata accessor for TVNavigationRouterInterceptionPresenter.State(0);
  MEMORY[0x28223BE20](v1);
  v3 = (&v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = OBJC_IVAR____TtC9SeymourUI39TVNavigationRouterInterceptionPresenter_state;
  swift_beginAccess();
  sub_20BE103F4(v0 + v4, v3, type metadata accessor for TVNavigationRouterInterceptionPresenter.State);
  if (swift_getEnumCaseMultiPayload() == 1)
  {

    v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764D60, "^>\a");
    sub_20B76BB2C(v3 + *(v5 + 48), type metadata accessor for NavigationRequest);
    v6 = v0 + OBJC_IVAR____TtC9SeymourUI39TVNavigationRouterInterceptionPresenter_display;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v7 = *(v6 + 8);
      ObjectType = swift_getObjectType();
      (*(v7 + 88))(ObjectType, v7);
      swift_unknownObjectRelease();
    }
  }

  else
  {
    sub_20B76BB2C(v3, type metadata accessor for TVNavigationRouterInterceptionPresenter.State);
  }
}

uint64_t TVNavigationRouterInterceptionPresenter.deinit()
{
  sub_20B76BB2C(v0 + OBJC_IVAR____TtC9SeymourUI39TVNavigationRouterInterceptionPresenter_state, type metadata accessor for TVNavigationRouterInterceptionPresenter.State);
  sub_20B520158(v0 + OBJC_IVAR____TtC9SeymourUI39TVNavigationRouterInterceptionPresenter_currentHandler, &qword_27C76A9B8, &qword_20C16DF00);
  sub_20B583E6C(v0 + OBJC_IVAR____TtC9SeymourUI39TVNavigationRouterInterceptionPresenter_display);
  return v0;
}

uint64_t TVNavigationRouterInterceptionPresenter.__deallocating_deinit()
{
  sub_20B76BB2C(v0 + OBJC_IVAR____TtC9SeymourUI39TVNavigationRouterInterceptionPresenter_state, type metadata accessor for TVNavigationRouterInterceptionPresenter.State);
  sub_20B520158(v0 + OBJC_IVAR____TtC9SeymourUI39TVNavigationRouterInterceptionPresenter_currentHandler, &qword_27C76A9B8, &qword_20C16DF00);
  sub_20B583E6C(v0 + OBJC_IVAR____TtC9SeymourUI39TVNavigationRouterInterceptionPresenter_display);

  return swift_deallocClassInstance();
}

uint64_t TVNavigationRouterInterceptionPresenter.activate(with:)(void *a1)
{
  v2 = sub_20C13BB84();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B534();
  sub_20C13BB64();
  (*(v3 + 8))(v5, v2);
  v6 = swift_allocObject();
  swift_weakInit();
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  *(v7 + 24) = a1;
  v8 = a1;
  return sub_20C137C94();
}

void sub_20BE0F368(void (*a1)(void **), uint64_t a2, uint64_t a3, void *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0, &unk_20C150360);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v33 - v10;
  v12 = type metadata accessor for TVNavigationRouterInterceptionPresenter.State(0);
  MEMORY[0x28223BE20](v12);
  v14 = &v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = swift_allocObject();
  *(v15 + 16) = a1;
  *(v15 + 24) = a2;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {

LABEL_8:
    sub_20B5D9BA8();
    v29 = swift_allocError();
    *v30 = 3;
    v38 = v29;
    v39 = 1;
    v31 = &v38;
    goto LABEL_10;
  }

  v34 = a4;
  v35 = v9;
  v17 = OBJC_IVAR____TtC9SeymourUI39TVNavigationRouterInterceptionPresenter_state;
  v18 = Strong;
  swift_beginAccess();
  sub_20BE103F4(v18 + v17, v14, type metadata accessor for TVNavigationRouterInterceptionPresenter.State);

  if (swift_getEnumCaseMultiPayload() != 2)
  {

    sub_20B76BB2C(v14, type metadata accessor for TVNavigationRouterInterceptionPresenter.State);
    goto LABEL_8;
  }

  sub_20B76BB2C(v14, type metadata accessor for TVNavigationRouterInterceptionPresenter.State);
  swift_beginAccess();
  v19 = swift_weakLoadStrong();
  if (v19)
  {
    v20 = v19 + OBJC_IVAR____TtC9SeymourUI39TVNavigationRouterInterceptionPresenter_display;
    v21 = swift_unknownObjectWeakLoadStrong();
    v22 = *(v20 + 8);

    if (v21)
    {
      ObjectType = swift_getObjectType();
      v24 = v34;
      (*(v22 + 72))(v34, ObjectType, v22);
      v25 = swift_allocObject();
      v25[2] = a3;
      v25[3] = v24;
      v25[4] = sub_20B5DF614;
      v25[5] = v15;

      v26 = v24;
      v27 = sub_20C137CB4();
      v28 = swift_allocObject();
      *(v28 + 16) = sub_20BE112F4;
      *(v28 + 24) = v25;

      v27(sub_20B5DF6DC, v28);
      swift_unknownObjectRelease();

      (*(v35 + 8))(v11, v8);
      return;
    }
  }

  sub_20B5D9BA8();
  v29 = swift_allocError();
  *v32 = 12;
  v36 = v29;
  v37 = 1;
  v31 = &v36;
LABEL_10:
  a1(v31);
}

void sub_20BE0F778(uint64_t a1, uint64_t a2, void *a3, void (*a4)(void *, void))
{
  v6 = type metadata accessor for TVNavigationRouterInterceptionPresenter.State(0);
  MEMORY[0x28223BE20](v6);
  v8 = (&v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    *v8 = a3;
    swift_storeEnumTagMultiPayload();
    v11 = OBJC_IVAR____TtC9SeymourUI39TVNavigationRouterInterceptionPresenter_state;
    swift_beginAccess();
    v12 = a3;
    sub_20BE11140(v8, v10 + v11);
    swift_endAccess();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762A80, &unk_20C1512F0);
  sub_20C13E1D4();
  v13 = v15;
  v14 = v16;
  a4(v15, v16);
  sub_20B583FB8(v13, v14);
}

uint64_t TVNavigationRouterInterceptionPresenter.deactivate()()
{
  v0 = sub_20C13BB84();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B534();
  sub_20C13BB64();
  (*(v1 + 8))(v3, v0);
  v4 = swift_allocObject();
  swift_weakInit();
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = 1;
  return sub_20C137C94();
}

uint64_t TVNavigationRouterInterceptionPresenter.handleNavigationRequest(_:with:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v16[1] = a3;
  v5 = type metadata accessor for NavigationRequest(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = sub_20C13BB84();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B534();
  sub_20C13BB64();
  (*(v9 + 8))(v11, v8);
  v12 = swift_allocObject();
  swift_weakInit();
  sub_20BE103F4(a1, v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for NavigationRequest);
  v13 = (*(v6 + 80) + 24) & ~*(v6 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = v12;
  sub_20B75B150(v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v14 + v13);
  *(v14 + ((v7 + v13 + 7) & 0xFFFFFFFFFFFFFFF8)) = a2;

  return sub_20C137C94();
}

uint64_t sub_20BE0FCA0(void (*a1)(void), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v67 = a5;
  v72 = a4;
  v75 = a2;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76D250, &unk_20C155D00);
  MEMORY[0x28223BE20](v74);
  v8 = (&v63 - v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7641C0, &qword_20C161470);
  v68 = *(v9 - 8);
  v69 = v9;
  v10 = *(v68 + 64);
  MEMORY[0x28223BE20](v9);
  v66 = &v63 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v63 - v12;
  MEMORY[0x28223BE20](v14);
  v73 = &v63 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76F568, &unk_20C17F370);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v63 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v70 = &v63 - v20;
  v21 = type metadata accessor for TVNavigationRouterInterceptionPresenter.State(0);
  MEMORY[0x28223BE20](v21);
  v23 = (&v63 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v24);
  v26 = (&v63 - v25);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    goto LABEL_4;
  }

  v28 = Strong;
  v65 = v18;
  v71 = a1;
  v29 = OBJC_IVAR____TtC9SeymourUI39TVNavigationRouterInterceptionPresenter_state;
  swift_beginAccess();
  sub_20BE103F4(v28 + v29, v26, type metadata accessor for TVNavigationRouterInterceptionPresenter.State);

  if (swift_getEnumCaseMultiPayload())
  {
    sub_20B76BB2C(v26, type metadata accessor for TVNavigationRouterInterceptionPresenter.State);
    a1 = v71;
LABEL_4:
    sub_20B5D9BA8();
    v30 = swift_allocError();
    *v31 = 9;
    *v8 = v30;
    swift_storeEnumTagMultiPayload();
    a1(v8);
    v32 = &unk_27C76D250;
    v33 = &unk_20C155D00;
    v34 = v8;
    return sub_20B520158(v34, v32, v33);
  }

  v36 = *v26;
  swift_beginAccess();
  v37 = swift_weakLoadStrong();
  if (v37)
  {
    v38 = v37;
    v39 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764D60, "^>\a") + 48);
    *v23 = v36;
    sub_20BE103F4(v72, v23 + v39, type metadata accessor for NavigationRequest);
    swift_storeEnumTagMultiPayload();
    v40 = OBJC_IVAR____TtC9SeymourUI39TVNavigationRouterInterceptionPresenter_state;
    swift_beginAccess();
    v41 = v36;
    sub_20BE11140(v23, v38 + v40);
    swift_endAccess();
  }

  swift_beginAccess();
  v42 = swift_weakLoadStrong();
  v43 = v65;
  v64 = v36;
  if (v42)
  {
    v44 = v73;
    sub_20BE0DF84(v72, v67, v73);

    v45 = swift_allocObject();
    *(v45 + 2) = a3;
    *(v45 + 3) = v36;
    v46 = v75;
    *(v45 + 4) = v71;
    *(v45 + 5) = v46;
    v47 = v68;
    v48 = v69;
    (*(v68 + 16))(v13, v44, v69);
    v49 = (*(v47 + 80) + 16) & ~*(v47 + 80);
    v50 = v10 + v49;
    v51 = v47;
    v52 = (v50 + 7) & 0xFFFFFFFFFFFFFFF8;
    v53 = swift_allocObject();
    (*(v51 + 32))(v53 + v49, v13, v48);
    v54 = (v53 + v52);
    *v54 = sub_20BE111A4;
    v54[1] = v45;
    type metadata accessor for NavigationRequest(0);
    v55 = v64;

    v56 = v70;
    sub_20C137C94();
    (*(v51 + 8))(v73, v48);
    v57 = 0;
  }

  else
  {
    v57 = 1;
    v48 = v69;
    v56 = v70;
    v51 = v68;
  }

  (*(v51 + 56))(v56, v57, 1, v48);
  sub_20B52F9E8(v56, v43, &qword_27C76F568, &unk_20C17F370);
  if ((*(v51 + 48))(v43, 1, v48) == 1)
  {
    sub_20B520158(v43, &qword_27C76F568, &unk_20C17F370);
    sub_20B5D9BA8();
    v58 = swift_allocError();
    *v59 = 2;
    *v8 = v58;
    swift_storeEnumTagMultiPayload();
    v71(v8);

    sub_20B520158(v8, &unk_27C76D250, &unk_20C155D00);
    v34 = v56;
    v32 = &qword_27C76F568;
    v33 = &unk_20C17F370;
  }

  else
  {
    v60 = v66;
    (*(v51 + 32))(v66, v43, v48);
    v61 = sub_20C137CB4();
    v62 = swift_allocObject();
    *(v62 + 16) = 0;
    *(v62 + 24) = 0;
    v61(sub_20B52F238, v62);

    (*(v51 + 8))(v60, v48);
    v32 = &qword_27C76F568;
    v33 = &unk_20C17F370;
    v34 = v56;
  }

  return sub_20B520158(v34, v32, v33);
}

uint64_t sub_20BE103F4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_20BE1045C(void (*a1)(void), uint64_t a2)
{
  v5 = *(type metadata accessor for NavigationRequest(0) - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = *(v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = *(v2 + 16);

  return sub_20BE0FCA0(a1, a2, v8, v2 + v6, v7);
}

uint64_t sub_20BE1050C(uint64_t a1, uint64_t a2, void *a3, uint64_t (*a4)(uint64_t))
{
  v7 = type metadata accessor for TVNavigationRouterInterceptionPresenter.State(0);
  MEMORY[0x28223BE20](v7);
  v9 = &v15[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    *v9 = a3;
    swift_storeEnumTagMultiPayload();
    v12 = OBJC_IVAR____TtC9SeymourUI39TVNavigationRouterInterceptionPresenter_state;
    swift_beginAccess();
    v13 = a3;
    sub_20BE11140(v9, v11 + v12);
    swift_endAccess();
  }

  return a4(a1);
}

uint64_t TVNavigationRouterInterceptionPresenter.cancel()@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v33[1] = a1;
  v33[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0, &unk_20C150360);
  v3 = *(v33[0] - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v33[0]);
  v5 = v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = v33 - v7;
  v9 = type metadata accessor for TVNavigationRouterInterceptionPresenter.State(0);
  MEMORY[0x28223BE20](v9);
  v11 = (v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = sub_20C13BB84();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B534();
  sub_20C13BB64();
  (*(v13 + 8))(v15, v12);
  v16 = OBJC_IVAR____TtC9SeymourUI39TVNavigationRouterInterceptionPresenter_state;
  swift_beginAccess();
  sub_20BE103F4(v2 + v16, v11, type metadata accessor for TVNavigationRouterInterceptionPresenter.State);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload != 1)
    {
      return _s9SeymourUI41RemoteBrowsingSiriBeginSessionInterceptorC6cancel0A4Core7PromiseVyytGyF_0();
    }

    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764D60, "^>\a");
    v19 = type metadata accessor for NavigationRequest;
    v20 = v11 + *(v18 + 48);
  }

  else
  {
    v19 = type metadata accessor for TVNavigationRouterInterceptionPresenter.State;
    v20 = v11;
  }

  sub_20B76BB2C(v20, v19);
  v21 = OBJC_IVAR____TtC9SeymourUI39TVNavigationRouterInterceptionPresenter_currentHandler;
  swift_beginAccess();
  sub_20B52F9E8(v2 + v21, &v34, &qword_27C76A9B8, &qword_20C16DF00);
  if (v35)
  {
    sub_20B51C710(&v34, v36);
    v22 = v37;
    v23 = v38;
    __swift_project_boxed_opaque_existential_1(v36, v37);
    (*(v23 + 24))(v22, v23);
    v24 = swift_allocObject();
    swift_weakInit();
    v25 = swift_allocObject();
    *(v25 + 16) = sub_20BE10B60;
    *(v25 + 24) = v24;
    v26 = swift_allocObject();
    *(v26 + 16) = sub_20B5DF3B8;
    *(v26 + 24) = v25;
    v27 = v33[0];
    (*(v3 + 16))(v5, v8, v33[0]);
    v28 = (*(v3 + 80) + 16) & ~*(v3 + 80);
    v29 = (v4 + v28 + 7) & 0xFFFFFFFFFFFFFFF8;
    v30 = swift_allocObject();
    (*(v3 + 32))(v30 + v28, v5, v27);
    v31 = (v30 + v29);
    *v31 = sub_20B5DF3D4;
    v31[1] = v26;
    sub_20C137C94();
    (*(v3 + 8))(v8, v27);
    return __swift_destroy_boxed_opaque_existential_1(v36);
  }

  sub_20B520158(&v34, &qword_27C76A9B8, &qword_20C16DF00);
  return _s9SeymourUI41RemoteBrowsingSiriBeginSessionInterceptorC6cancel0A4Core7PromiseVyytGyF_0();
}

double sub_20BE10AD0(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v6 = 0;
    memset(v5, 0, sizeof(v5));
    v3 = OBJC_IVAR____TtC9SeymourUI39TVNavigationRouterInterceptionPresenter_currentHandler;
    v4 = Strong;
    swift_beginAccess();
    sub_20BB2C72C(v5, v4 + v3);
    swift_endAccess();
  }

  return result;
}

uint64_t sub_20BE10B68(void *a1)
{
  v2 = sub_20C13BB84();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B534();
  sub_20C13BB64();
  (*(v3 + 8))(v5, v2);
  v6 = swift_allocObject();
  swift_weakInit();
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  *(v7 + 24) = a1;
  v8 = a1;
  return sub_20C137C94();
}

uint64_t sub_20BE10CF4()
{
  v0 = sub_20C13BB84();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B534();
  sub_20C13BB64();
  (*(v1 + 8))(v3, v0);
  v4 = swift_allocObject();
  swift_weakInit();
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = 1;
  return sub_20C137C94();
}

uint64_t sub_20BE10EE4(uint64_t a1)
{
  result = type metadata accessor for TVNavigationRouterInterceptionPresenter.State(319);
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

void sub_20BE10FD8(uint64_t a1)
{
  sub_20BE1104C();
  if (v1 <= 0x3F)
  {
    sub_20BE11094(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_20BE1104C()
{
  if (!qword_27C76F558)
  {
    v0 = sub_20B62BB28();
    if (!v1)
    {
      atomic_store(v0, &qword_27C76F558);
    }
  }
}

void sub_20BE11094(uint64_t a1)
{
  if (!qword_27C76F560)
  {
    sub_20B62BB28();
    type metadata accessor for NavigationRequest(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_27C76F560);
    }
  }
}

uint64_t sub_20BE11140(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TVNavigationRouterInterceptionPresenter.State(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_20BE111D8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t, unint64_t, uint64_t, uint64_t))
{
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a3, a4) - 8);
  v9 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v10 = (v5 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];

  return a5(a1, a2, v5 + v9, v11, v12);
}

uint64_t objectdestroy_58Tm()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

double sub_20BE11308()
{
  sub_20BE1D844();
  swift_getObjectType();
  sub_20C13AEC4();
  swift_allocObject();
  swift_weakInit();
  sub_20C13A784();

  __swift_destroy_boxed_opaque_existential_1(v1);
  sub_20C13A994();
  swift_allocObject();
  swift_weakInit();
  sub_20C13A784();

  __swift_destroy_boxed_opaque_existential_1(v1);
  sub_20C13A714();
  swift_allocObject();
  swift_weakInit();
  sub_20C13A784();

  __swift_destroy_boxed_opaque_existential_1(v1);
  sub_20C13AF44();
  swift_allocObject();
  swift_weakInit();

  sub_20C13A7A4();

  __swift_destroy_boxed_opaque_existential_1(v1);

  sub_20C13B244();
  swift_allocObject();
  swift_weakInit();

  sub_20C13A7A4();

  __swift_destroy_boxed_opaque_existential_1(v1);

  sub_20C13A4E4();
  swift_allocObject();
  swift_weakInit();

  sub_20C13A7A4();

  __swift_destroy_boxed_opaque_existential_1(v1);

  return result;
}

double sub_20BE1166C()
{
  sub_20BE1E83C();
  swift_getObjectType();
  sub_20C13AEC4();
  swift_allocObject();
  swift_weakInit();
  sub_20C13A784();

  __swift_destroy_boxed_opaque_existential_1(v1);
  sub_20C13A994();
  swift_allocObject();
  swift_weakInit();
  sub_20C13A784();

  __swift_destroy_boxed_opaque_existential_1(v1);
  sub_20C13A714();
  swift_allocObject();
  swift_weakInit();
  sub_20C13A784();

  __swift_destroy_boxed_opaque_existential_1(v1);
  sub_20C13AF44();
  swift_allocObject();
  swift_weakInit();

  sub_20C13A7A4();

  __swift_destroy_boxed_opaque_existential_1(v1);

  sub_20C13B244();
  swift_allocObject();
  swift_weakInit();

  sub_20C13A7A4();

  __swift_destroy_boxed_opaque_existential_1(v1);

  sub_20C13A4E4();
  swift_allocObject();
  swift_weakInit();

  sub_20C13A7A4();

  __swift_destroy_boxed_opaque_existential_1(v1);

  return result;
}

double sub_20BE119D0()
{
  sub_20BE1F834();
  swift_getObjectType();
  sub_20C13AEC4();
  swift_allocObject();
  swift_weakInit();
  sub_20C13A784();

  __swift_destroy_boxed_opaque_existential_1(v1);
  sub_20C13A994();
  swift_allocObject();
  swift_weakInit();
  sub_20C13A784();

  __swift_destroy_boxed_opaque_existential_1(v1);
  sub_20C13A714();
  swift_allocObject();
  swift_weakInit();
  sub_20C13A784();

  __swift_destroy_boxed_opaque_existential_1(v1);
  sub_20C13AF44();
  swift_allocObject();
  swift_weakInit();

  sub_20C13A7A4();

  __swift_destroy_boxed_opaque_existential_1(v1);

  sub_20C13B244();
  swift_allocObject();
  swift_weakInit();

  sub_20C13A7A4();

  __swift_destroy_boxed_opaque_existential_1(v1);

  sub_20C13A4E4();
  swift_allocObject();
  swift_weakInit();

  sub_20C13A7A4();

  __swift_destroy_boxed_opaque_existential_1(v1);

  return result;
}

double sub_20BE11D34()
{
  sub_20BE2082C();
  swift_getObjectType();
  sub_20C13AEC4();
  swift_allocObject();
  swift_weakInit();
  sub_20C13A784();

  __swift_destroy_boxed_opaque_existential_1(v1);
  sub_20C13A994();
  swift_allocObject();
  swift_weakInit();
  sub_20C13A784();

  __swift_destroy_boxed_opaque_existential_1(v1);
  sub_20C13A714();
  swift_allocObject();
  swift_weakInit();
  sub_20C13A784();

  __swift_destroy_boxed_opaque_existential_1(v1);
  sub_20C13AF44();
  swift_allocObject();
  swift_weakInit();

  sub_20C13A7A4();

  __swift_destroy_boxed_opaque_existential_1(v1);

  sub_20C13B244();
  swift_allocObject();
  swift_weakInit();

  sub_20C13A7A4();

  __swift_destroy_boxed_opaque_existential_1(v1);

  sub_20C13A4E4();
  swift_allocObject();
  swift_weakInit();

  sub_20C13A7A4();

  __swift_destroy_boxed_opaque_existential_1(v1);

  return result;
}

double sub_20BE120A4()
{
  sub_20BE21830();
  swift_getObjectType();
  sub_20C13AEC4();
  swift_allocObject();
  swift_weakInit();
  sub_20C13A784();

  __swift_destroy_boxed_opaque_existential_1(v1);
  sub_20C13A994();
  swift_allocObject();
  swift_weakInit();
  sub_20C13A784();

  __swift_destroy_boxed_opaque_existential_1(v1);
  sub_20C13A714();
  swift_allocObject();
  swift_weakInit();
  sub_20C13A784();

  __swift_destroy_boxed_opaque_existential_1(v1);
  sub_20C13AF44();
  swift_allocObject();
  swift_weakInit();

  sub_20C13A7A4();

  __swift_destroy_boxed_opaque_existential_1(v1);

  sub_20C13B244();
  swift_allocObject();
  swift_weakInit();

  sub_20C13A7A4();

  __swift_destroy_boxed_opaque_existential_1(v1);

  sub_20C13A4E4();
  swift_allocObject();
  swift_weakInit();

  sub_20C13A7A4();

  __swift_destroy_boxed_opaque_existential_1(v1);

  return result;
}

double sub_20BE12408()
{
  sub_20BE22828();
  swift_getObjectType();
  sub_20C13AEC4();
  swift_allocObject();
  swift_weakInit();
  sub_20C13A784();

  __swift_destroy_boxed_opaque_existential_1(v1);
  sub_20C13A994();
  swift_allocObject();
  swift_weakInit();
  sub_20C13A784();

  __swift_destroy_boxed_opaque_existential_1(v1);
  sub_20C13A714();
  swift_allocObject();
  swift_weakInit();
  sub_20C13A784();

  __swift_destroy_boxed_opaque_existential_1(v1);
  sub_20C13AF44();
  swift_allocObject();
  swift_weakInit();

  sub_20C13A7A4();

  __swift_destroy_boxed_opaque_existential_1(v1);

  sub_20C13B244();
  swift_allocObject();
  swift_weakInit();

  sub_20C13A7A4();

  __swift_destroy_boxed_opaque_existential_1(v1);

  sub_20C13A4E4();
  swift_allocObject();
  swift_weakInit();

  sub_20C13A7A4();

  __swift_destroy_boxed_opaque_existential_1(v1);

  return result;
}

double sub_20BE1276C()
{
  sub_20BE23820();
  swift_getObjectType();
  sub_20C13AEC4();
  swift_allocObject();
  swift_weakInit();
  sub_20C13A784();

  __swift_destroy_boxed_opaque_existential_1(v1);
  sub_20C13A994();
  swift_allocObject();
  swift_weakInit();
  sub_20C13A784();

  __swift_destroy_boxed_opaque_existential_1(v1);
  sub_20C13A714();
  swift_allocObject();
  swift_weakInit();
  sub_20C13A784();

  __swift_destroy_boxed_opaque_existential_1(v1);
  sub_20C13AF44();
  swift_allocObject();
  swift_weakInit();

  sub_20C13A7A4();

  __swift_destroy_boxed_opaque_existential_1(v1);

  sub_20C13B244();
  swift_allocObject();
  swift_weakInit();

  sub_20C13A7A4();

  __swift_destroy_boxed_opaque_existential_1(v1);

  sub_20C13A4E4();
  swift_allocObject();
  swift_weakInit();

  sub_20C13A7A4();

  __swift_destroy_boxed_opaque_existential_1(v1);

  return result;
}

double sub_20BE12AD0()
{
  sub_20BE24818();
  swift_getObjectType();
  sub_20C13AEC4();
  swift_allocObject();
  swift_weakInit();
  sub_20C13A784();

  __swift_destroy_boxed_opaque_existential_1(v1);
  sub_20C13A994();
  swift_allocObject();
  swift_weakInit();
  sub_20C13A784();

  __swift_destroy_boxed_opaque_existential_1(v1);
  sub_20C13A714();
  swift_allocObject();
  swift_weakInit();
  sub_20C13A784();

  __swift_destroy_boxed_opaque_existential_1(v1);
  sub_20C13AF44();
  swift_allocObject();
  swift_weakInit();

  sub_20C13A7A4();

  __swift_destroy_boxed_opaque_existential_1(v1);

  sub_20C13B244();
  swift_allocObject();
  swift_weakInit();

  sub_20C13A7A4();

  __swift_destroy_boxed_opaque_existential_1(v1);

  sub_20C13A4E4();
  swift_allocObject();
  swift_weakInit();

  sub_20C13A7A4();

  __swift_destroy_boxed_opaque_existential_1(v1);

  return result;
}

double sub_20BE12E34()
{
  sub_20BE25810();
  swift_getObjectType();
  sub_20C13AEC4();
  swift_allocObject();
  swift_weakInit();
  sub_20C13A784();

  __swift_destroy_boxed_opaque_existential_1(v1);
  sub_20C13A994();
  swift_allocObject();
  swift_weakInit();
  sub_20C13A784();

  __swift_destroy_boxed_opaque_existential_1(v1);
  sub_20C13A714();
  swift_allocObject();
  swift_weakInit();
  sub_20C13A784();

  __swift_destroy_boxed_opaque_existential_1(v1);
  sub_20C13AF44();
  swift_allocObject();
  swift_weakInit();

  sub_20C13A7A4();

  __swift_destroy_boxed_opaque_existential_1(v1);

  sub_20C13B244();
  swift_allocObject();
  swift_weakInit();

  sub_20C13A7A4();

  __swift_destroy_boxed_opaque_existential_1(v1);

  sub_20C13A4E4();
  swift_allocObject();
  swift_weakInit();

  sub_20C13A7A4();

  __swift_destroy_boxed_opaque_existential_1(v1);

  return result;
}

double sub_20BE131B0()
{
  sub_20BE26850();
  swift_getObjectType();
  sub_20C13AEC4();
  swift_allocObject();
  swift_weakInit();
  sub_20C13A784();

  __swift_destroy_boxed_opaque_existential_1(v1);
  sub_20C13A994();
  swift_allocObject();
  swift_weakInit();
  sub_20C13A784();

  __swift_destroy_boxed_opaque_existential_1(v1);
  sub_20C13A714();
  swift_allocObject();
  swift_weakInit();
  sub_20C13A784();

  __swift_destroy_boxed_opaque_existential_1(v1);
  sub_20C13AF44();
  swift_allocObject();
  swift_weakInit();

  sub_20C13A7A4();

  __swift_destroy_boxed_opaque_existential_1(v1);

  sub_20C13B244();
  swift_allocObject();
  swift_weakInit();

  sub_20C13A7A4();

  __swift_destroy_boxed_opaque_existential_1(v1);

  sub_20C13A4E4();
  swift_allocObject();
  swift_weakInit();

  sub_20C13A7A4();

  __swift_destroy_boxed_opaque_existential_1(v1);

  return result;
}

double sub_20BE13514()
{
  sub_20BE27848();
  swift_getObjectType();
  sub_20C13AEC4();
  swift_allocObject();
  swift_weakInit();
  sub_20C13A784();

  __swift_destroy_boxed_opaque_existential_1(v1);
  sub_20C13A994();
  swift_allocObject();
  swift_weakInit();
  sub_20C13A784();

  __swift_destroy_boxed_opaque_existential_1(v1);
  sub_20C13A714();
  swift_allocObject();
  swift_weakInit();
  sub_20C13A784();

  __swift_destroy_boxed_opaque_existential_1(v1);
  sub_20C13AF44();
  swift_allocObject();
  swift_weakInit();

  sub_20C13A7A4();

  __swift_destroy_boxed_opaque_existential_1(v1);

  sub_20C13B244();
  swift_allocObject();
  swift_weakInit();

  sub_20C13A7A4();

  __swift_destroy_boxed_opaque_existential_1(v1);

  sub_20C13A4E4();
  swift_allocObject();
  swift_weakInit();

  sub_20C13A7A4();

  __swift_destroy_boxed_opaque_existential_1(v1);

  return result;
}

double sub_20BE13890()
{
  sub_20BE28888();
  swift_getObjectType();
  sub_20C13AEC4();
  swift_allocObject();
  swift_weakInit();
  sub_20C13A784();

  __swift_destroy_boxed_opaque_existential_1(v1);
  sub_20C13A994();
  swift_allocObject();
  swift_weakInit();
  sub_20C13A784();

  __swift_destroy_boxed_opaque_existential_1(v1);
  sub_20C13A714();
  swift_allocObject();
  swift_weakInit();
  sub_20C13A784();

  __swift_destroy_boxed_opaque_existential_1(v1);
  sub_20C13AF44();
  swift_allocObject();
  swift_weakInit();

  sub_20C13A7A4();

  __swift_destroy_boxed_opaque_existential_1(v1);

  sub_20C13B244();
  swift_allocObject();
  swift_weakInit();

  sub_20C13A7A4();

  __swift_destroy_boxed_opaque_existential_1(v1);

  sub_20C13A4E4();
  swift_allocObject();
  swift_weakInit();

  sub_20C13A7A4();

  __swift_destroy_boxed_opaque_existential_1(v1);

  return result;
}

double sub_20BE13BF4()
{
  sub_20BE29880();
  swift_getObjectType();
  sub_20C13AEC4();
  swift_allocObject();
  swift_weakInit();
  sub_20C13A784();

  __swift_destroy_boxed_opaque_existential_1(v1);
  sub_20C13A994();
  swift_allocObject();
  swift_weakInit();
  sub_20C13A784();

  __swift_destroy_boxed_opaque_existential_1(v1);
  sub_20C13A714();
  swift_allocObject();
  swift_weakInit();
  sub_20C13A784();

  __swift_destroy_boxed_opaque_existential_1(v1);
  sub_20C13AF44();
  swift_allocObject();
  swift_weakInit();

  sub_20C13A7A4();

  __swift_destroy_boxed_opaque_existential_1(v1);

  sub_20C13B244();
  swift_allocObject();
  swift_weakInit();

  sub_20C13A7A4();

  __swift_destroy_boxed_opaque_existential_1(v1);

  sub_20C13A4E4();
  swift_allocObject();
  swift_weakInit();

  sub_20C13A7A4();

  __swift_destroy_boxed_opaque_existential_1(v1);

  return result;
}

double sub_20BE13F70()
{
  sub_20BE2A8C0();
  swift_getObjectType();
  sub_20C13AEC4();
  swift_allocObject();
  swift_weakInit();
  sub_20C13A784();

  __swift_destroy_boxed_opaque_existential_1(v1);
  sub_20C13A994();
  swift_allocObject();
  swift_weakInit();
  sub_20C13A784();

  __swift_destroy_boxed_opaque_existential_1(v1);
  sub_20C13A714();
  swift_allocObject();
  swift_weakInit();
  sub_20C13A784();

  __swift_destroy_boxed_opaque_existential_1(v1);
  sub_20C13AF44();
  swift_allocObject();
  swift_weakInit();

  sub_20C13A7A4();

  __swift_destroy_boxed_opaque_existential_1(v1);

  sub_20C13B244();
  swift_allocObject();
  swift_weakInit();

  sub_20C13A7A4();

  __swift_destroy_boxed_opaque_existential_1(v1);

  sub_20C13A4E4();
  swift_allocObject();
  swift_weakInit();

  sub_20C13A7A4();

  __swift_destroy_boxed_opaque_existential_1(v1);

  return result;
}

double sub_20BE142EC()
{
  sub_20BE2B900();
  swift_getObjectType();
  sub_20C13AEC4();
  swift_allocObject();
  swift_weakInit();
  sub_20C13A784();

  __swift_destroy_boxed_opaque_existential_1(v1);
  sub_20C13A994();
  swift_allocObject();
  swift_weakInit();
  sub_20C13A784();

  __swift_destroy_boxed_opaque_existential_1(v1);
  sub_20C13A714();
  swift_allocObject();
  swift_weakInit();
  sub_20C13A784();

  __swift_destroy_boxed_opaque_existential_1(v1);
  sub_20C13AF44();
  swift_allocObject();
  swift_weakInit();

  sub_20C13A7A4();

  __swift_destroy_boxed_opaque_existential_1(v1);

  sub_20C13B244();
  swift_allocObject();
  swift_weakInit();

  sub_20C13A7A4();

  __swift_destroy_boxed_opaque_existential_1(v1);

  sub_20C13A4E4();
  swift_allocObject();
  swift_weakInit();

  sub_20C13A7A4();

  __swift_destroy_boxed_opaque_existential_1(v1);

  return result;
}

double sub_20BE14668()
{
  sub_20BE2C940();
  swift_getObjectType();
  sub_20C13AEC4();
  swift_allocObject();
  swift_weakInit();
  sub_20C13A784();

  __swift_destroy_boxed_opaque_existential_1(v1);
  sub_20C13A994();
  swift_allocObject();
  swift_weakInit();
  sub_20C13A784();

  __swift_destroy_boxed_opaque_existential_1(v1);
  sub_20C13A714();
  swift_allocObject();
  swift_weakInit();
  sub_20C13A784();

  __swift_destroy_boxed_opaque_existential_1(v1);
  sub_20C13AF44();
  swift_allocObject();
  swift_weakInit();

  sub_20C13A7A4();

  __swift_destroy_boxed_opaque_existential_1(v1);

  sub_20C13B244();
  swift_allocObject();
  swift_weakInit();

  sub_20C13A7A4();

  __swift_destroy_boxed_opaque_existential_1(v1);

  sub_20C13A4E4();
  swift_allocObject();
  swift_weakInit();

  sub_20C13A7A4();

  __swift_destroy_boxed_opaque_existential_1(v1);

  return result;
}

double sub_20BE149E4()
{
  sub_20BE2D980();
  swift_getObjectType();
  sub_20C13AEC4();
  swift_allocObject();
  swift_weakInit();
  sub_20C13A784();

  __swift_destroy_boxed_opaque_existential_1(v1);
  sub_20C13A994();
  swift_allocObject();
  swift_weakInit();
  sub_20C13A784();

  __swift_destroy_boxed_opaque_existential_1(v1);
  sub_20C13A714();
  swift_allocObject();
  swift_weakInit();
  sub_20C13A784();

  __swift_destroy_boxed_opaque_existential_1(v1);
  sub_20C13AF44();
  swift_allocObject();
  swift_weakInit();

  sub_20C13A7A4();

  __swift_destroy_boxed_opaque_existential_1(v1);

  sub_20C13B244();
  swift_allocObject();
  swift_weakInit();

  sub_20C13A7A4();

  __swift_destroy_boxed_opaque_existential_1(v1);

  sub_20C13A4E4();
  swift_allocObject();
  swift_weakInit();

  sub_20C13A7A4();

  __swift_destroy_boxed_opaque_existential_1(v1);

  return result;
}

double sub_20BE14D48()
{
  sub_20BE2E978();
  swift_getObjectType();
  sub_20C13AEC4();
  swift_allocObject();
  swift_weakInit();
  sub_20C13A784();

  __swift_destroy_boxed_opaque_existential_1(v1);
  sub_20C13A994();
  swift_allocObject();
  swift_weakInit();
  sub_20C13A784();

  __swift_destroy_boxed_opaque_existential_1(v1);
  sub_20C13A714();
  swift_allocObject();
  swift_weakInit();
  sub_20C13A784();

  __swift_destroy_boxed_opaque_existential_1(v1);
  sub_20C13AF44();
  swift_allocObject();
  swift_weakInit();

  sub_20C13A7A4();

  __swift_destroy_boxed_opaque_existential_1(v1);

  sub_20C13B244();
  swift_allocObject();
  swift_weakInit();

  sub_20C13A7A4();

  __swift_destroy_boxed_opaque_existential_1(v1);

  sub_20C13A4E4();
  swift_allocObject();
  swift_weakInit();

  sub_20C13A7A4();

  __swift_destroy_boxed_opaque_existential_1(v1);

  return result;
}

double sub_20BE150AC()
{
  sub_20BE2F970();
  swift_getObjectType();
  sub_20C13AEC4();
  swift_allocObject();
  swift_weakInit();
  sub_20C13A784();

  __swift_destroy_boxed_opaque_existential_1(v1);
  sub_20C13A994();
  swift_allocObject();
  swift_weakInit();
  sub_20C13A784();

  __swift_destroy_boxed_opaque_existential_1(v1);
  sub_20C13A714();
  swift_allocObject();
  swift_weakInit();
  sub_20C13A784();

  __swift_destroy_boxed_opaque_existential_1(v1);
  sub_20C13AF44();
  swift_allocObject();
  swift_weakInit();

  sub_20C13A7A4();

  __swift_destroy_boxed_opaque_existential_1(v1);

  sub_20C13B244();
  swift_allocObject();
  swift_weakInit();

  sub_20C13A7A4();

  __swift_destroy_boxed_opaque_existential_1(v1);

  sub_20C13A4E4();
  swift_allocObject();
  swift_weakInit();

  sub_20C13A7A4();

  __swift_destroy_boxed_opaque_existential_1(v1);

  return result;
}

double sub_20BE15410()
{
  sub_20BE3096C();
  swift_getObjectType();
  sub_20C13AEC4();
  swift_allocObject();
  swift_weakInit();
  sub_20C13A784();

  __swift_destroy_boxed_opaque_existential_1(v1);
  sub_20C13A994();
  swift_allocObject();
  swift_weakInit();
  sub_20C13A784();

  __swift_destroy_boxed_opaque_existential_1(v1);
  sub_20C13A714();
  swift_allocObject();
  swift_weakInit();
  sub_20C13A784();

  __swift_destroy_boxed_opaque_existential_1(v1);
  sub_20C13AF44();
  swift_allocObject();
  swift_weakInit();

  sub_20C13A7A4();

  __swift_destroy_boxed_opaque_existential_1(v1);

  sub_20C13B244();
  swift_allocObject();
  swift_weakInit();

  sub_20C13A7A4();

  __swift_destroy_boxed_opaque_existential_1(v1);

  sub_20C13A4E4();
  swift_allocObject();
  swift_weakInit();

  sub_20C13A7A4();

  __swift_destroy_boxed_opaque_existential_1(v1);

  return result;
}

uint64_t sub_20BE1578C(uint64_t a1, void (*a2)(uint64_t *__return_ptr, uint64_t *, __int128 *), uint64_t a3, uint64_t a4)
{
  v14 = a1;
  v5 = v4;
  v8 = a1;
  v9 = *(a4 + 16);

  if (v9)
  {
    for (i = (a4 + 32); ; ++i)
    {
      v13 = *i;
      swift_unknownObjectRetain();
      a2(&v12, &v14, &v13);
      if (v5)
      {
        break;
      }

      swift_unknownObjectRelease();
      v8 = v12;
      v14 = v12;
      if (!--v9)
      {
        return v8;
      }
    }

    swift_unknownObjectRelease();
  }

  return v8;
}

void sub_20BE15860(uint64_t a1, void (*a2)(uint64_t *__return_ptr, uint64_t *, uint64_t *), uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = a1;

  if (a4 != a5)
  {
    if (a5 >= a4)
    {
      while (a5 != a4)
      {
        v10 = a4;
        a2(&v9, &v11, &v10);

        if (!v5)
        {
          ++a4;
          v11 = v9;
          if (a5 != a4)
          {
            continue;
          }
        }

        return;
      }

      __break(1u);
    }

    __break(1u);
  }
}

uint64_t sub_20BE15914(uint64_t a1, void (*a2)(uint64_t *__return_ptr, uint64_t *, void *, double), uint64_t a3, uint64_t a4)
{
  v19 = a1;
  v5 = v4;
  v8 = a1;
  v9 = *(a4 + 16);

  if (v9)
  {
    v10 = (a4 + 48);
    while (1)
    {
      v11 = *(v10 - 2);
      v12 = *(v10 - 1);
      v13 = *v10;
      v17[0] = v11;
      v17[1] = v12;
      v18 = v13;
      v14 = sub_20B6D8740(v11, v12, v13);
      a2(&v16, &v19, v17, v14);
      if (v5)
      {
        break;
      }

      v10 += 24;
      sub_20B6D8768(v11, v12, v13);

      v8 = v16;
      v19 = v16;
      if (!--v9)
      {
        return v8;
      }
    }

    sub_20B6D8768(v11, v12, v13);
  }

  return v8;
}

void sub_20BE15A0C(uint64_t a1, void (*a2)(uint64_t *__return_ptr, uint64_t *, char *), uint64_t a3, uint64_t a4)
{
  v20 = a2;
  v22 = sub_20C1351B4();
  MEMORY[0x28223BE20](v22);
  v9 = v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = a1;
  v10 = a4 + 56;
  v11 = 1 << *(a4 + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & *(a4 + 56);
  v14 = (v11 + 63) >> 6;
  v18[1] = v7 + 16;
  v19 = v7;
  v21 = (v7 + 8);

  v23 = a4;

  v15 = 0;
  if (v13)
  {
    while (1)
    {
      v16 = v15;
      v17 = v22;
LABEL_9:
      (*(v19 + 16))(v9, *(v23 + 48) + *(v19 + 72) * (__clz(__rbit64(v13)) | (v16 << 6)), v17);
      v20(&v24, &v25, v9);
      if (v4)
      {
        break;
      }

      v13 &= v13 - 1;
      (*v21)(v9, v17);

      v25 = v24;
      v15 = v16;
      if (!v13)
      {
        goto LABEL_5;
      }
    }

    (*v21)(v9, v17);

LABEL_13:
  }

  else
  {
LABEL_5:
    v17 = v22;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v16 >= v14)
      {
        goto LABEL_13;
      }

      v13 = *(v10 + 8 * v16);
      ++v15;
      if (v13)
      {
        goto LABEL_9;
      }
    }

    __break(1u);
  }
}

void sub_20BE15C40(uint64_t a1)
{
  v2 = sub_20C138034();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = v23 - v7;
  v10.n128_f64[0] = MEMORY[0x28223BE20](v9);
  v12 = v23 - v11;
  v13 = 0;
  v24 = a1;
  v16 = *(a1 + 56);
  v15 = a1 + 56;
  v14 = v16;
  v17 = 1 << *(v15 - 24);
  v18 = -1;
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  v19 = v18 & v14;
  v20 = (v17 + 63) >> 6;
  v23[1] = v3 + 32;
  v23[2] = v3 + 16;
  v23[0] = v3 + 8;
  if ((v18 & v14) != 0)
  {
    do
    {
      v21 = v13;
LABEL_9:
      v22 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
      (*(v3 + 16))(v12, *(v24 + 48) + *(v3 + 72) * (v22 | (v21 << 6)), v2, v10);
      (*(v3 + 32))(v5, v12, v2);
      sub_20B6FF26C(v8, v5);
      (*(v3 + 8))(v8, v2);
    }

    while (v19);
  }

  while (1)
  {
    v21 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v21 >= v20)
    {

      return;
    }

    v19 = *(v15 + 8 * v21);
    ++v13;
    if (v19)
    {
      v13 = v21;
      goto LABEL_9;
    }
  }

  __break(1u);
}

void sub_20BE15E50(uint64_t a1)
{
  v2 = 0;
  v3 = a1 + 56;
  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a1 + 56);
  v7 = (v4 + 63) >> 6;
  if (v6)
  {
    while (1)
    {
      v8 = v2;
LABEL_9:
      v9 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      v10 = (*(a1 + 48) + ((v8 << 10) | (16 * v9)));
      v11 = *v10;
      v12 = v10[1];

      sub_20B527618(&v13, v11, v12);

      if (!v6)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v8 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      __break(1u);
      return;
    }

    if (v8 >= v7)
    {
      break;
    }

    v6 = *(v3 + 8 * v8);
    ++v2;
    if (v6)
    {
      v2 = v8;
      goto LABEL_9;
    }
  }
}

void sub_20BE15F54()
{
  v1 = *(*(v0 + 504) + OBJC_IVAR____TtC9SeymourUI11CatalogPage_shelves);
  v2 = *(v1 + 16);
  if (v2)
  {

    v3 = 0;
    v4 = (v1 + 40);
    while (v3 < *(v1 + 16))
    {
      v5 = *v4;
      ObjectType = swift_getObjectType();
      v7 = *(v5 + 40);
      swift_unknownObjectRetain();
      v7(v13, ObjectType, v5);
      v18 = v13[8];
      v19 = v13[9];
      v20 = v14;
      v15[4] = v13[4];
      v15[5] = v13[5];
      v16 = v13[6];
      v17 = v13[7];
      v15[0] = v13[0];
      v15[1] = v13[1];
      v15[2] = v13[2];
      v15[3] = v13[3];
      if (sub_20B5EAF8C(v15) == 1)
      {
        v8 = 1;
      }

      else
      {
        v9 = *(&v16 + 1);
        v21[0] = *(&v16 + 1);
        sub_20B52F9E8(v21, v12, &qword_27C763188, &unk_20C1538A0);
        sub_20B520158(v13, &qword_27C762340, &unk_20C150290);
        v10 = *(v9 + 16);
        sub_20B520158(v21, &qword_27C763188, &unk_20C1538A0);
        v8 = v10 == 0;
      }

      type metadata accessor for TVWorkoutPlanDetailNextWorkoutsShelf(0);
      v11 = swift_dynamicCastClass();
      swift_unknownObjectRelease();
      if (!v11 || v8)
      {
        ++v3;
        v4 += 2;
        if (v2 != v3)
        {
          continue;
        }
      }

      return;
    }

    __break(1u);
  }
}

double sub_20BE16144()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762220, &qword_20C151250);
  result = MEMORY[0x28223BE20](v1 - 8);
  v4 = &v8 - v3;
  if (!*(v0 + OBJC_IVAR____TtC9SeymourUI35TVWorkoutPlanDetailPageDataProvider_state))
  {
    *(v0 + OBJC_IVAR____TtC9SeymourUI35TVWorkoutPlanDetailPageDataProvider_state) = 1;
    v5 = sub_20C13CDF4();
    (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
    v6 = swift_allocObject();
    swift_weakInit();
    v7 = swift_allocObject();
    v7[2] = 0;
    v7[3] = 0;
    v7[4] = v6;
    sub_20B6383D0(0, 0, v4, &unk_20C17F630, v7);
  }

  return result;
}

double sub_20BE1627C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762220, &qword_20C151250);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v11 - v5;
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    v8 = sub_20C13CDF4();
    (*(*(v8 - 8) + 56))(v6, 1, 1, v8);
    v9 = swift_allocObject();
    swift_weakInit();
    v10 = swift_allocObject();
    v10[2] = 0;
    v10[3] = 0;
    v10[4] = v9;
    sub_20B6383D0(0, 0, v6, a3, v10);
  }

  return result;
}

uint64_t sub_20BE163CC(uint64_t *a1, void (*a2)(char *, uint64_t, uint64_t), uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v215 = a4;
  *&v226 = a3;
  v223 = a2;
  v207 = *v4;
  v7 = sub_20C13C6C4();
  MEMORY[0x28223BE20](v7 - 8);
  v203 = &v192 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_20C132EE4();
  v201 = *(v9 - 8);
  v202 = v9;
  MEMORY[0x28223BE20](v9);
  v200 = &v192 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v198 = sub_20C133154();
  v205 = *(v198 - 8);
  MEMORY[0x28223BE20](v198);
  v197 = &v192 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762AC0, &qword_20C14FC90);
  MEMORY[0x28223BE20](v12 - 8);
  v195 = &v192 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v193 = &v192 - v15;
  MEMORY[0x28223BE20](v16);
  v196 = &v192 - v17;
  v216 = sub_20C133134();
  v221 = *(v216 - 8);
  MEMORY[0x28223BE20](v216);
  v219 = &v192 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v220 = sub_20C132E94();
  v218 = *(v220 - 8);
  MEMORY[0x28223BE20](v220);
  v194 = &v192 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v204 = &v192 - v21;
  MEMORY[0x28223BE20](v22);
  v224 = &v192 - v23;
  v24 = sub_20C137C24();
  v209 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v199 = &v192 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C772000, &unk_20C16D940);
  MEMORY[0x28223BE20](v26 - 8);
  v28 = &v192 - v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766680, &unk_20C14F920);
  MEMORY[0x28223BE20](v29 - 8);
  v210 = (&v192 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v31);
  v33 = &v192 - v32;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76A970, &qword_20C14FC10);
  MEMORY[0x28223BE20](v34 - 8);
  v36 = &v192 - v35;
  v37 = sub_20C133954();
  v38 = *(v37 - 8);
  v39 = *(v38 + 16);
  v217 = a1;
  v214 = (v38 + 16);
  v212 = v39;
  v39(v36, a1, v37);
  v41 = *(v38 + 56);
  v40 = (v38 + 56);
  v211 = v41;
  (v41)(v36, 0, 1, v37);
  v42 = OBJC_IVAR____TtC9SeymourUI35TVWorkoutPlanDetailPageDataProvider_workoutPlan;
  swift_beginAccess();
  sub_20B5DF2D4(v36, v5 + v42, &unk_27C76A970, &qword_20C14FC10);
  swift_endAccess();
  v43 = OBJC_IVAR____TtC9SeymourUI35TVWorkoutPlanDetailPageDataProvider_workoutPlanSummary;
  swift_beginAccess();
  v225 = v5;
  v44 = v5 + v43;
  v45 = v209;
  sub_20B606B6C(v226, v44, &unk_27C772020, &qword_20C182C00);
  swift_endAccess();
  v46 = *(v45 + 56);
  v222 = v33;
  v213 = v24;
  v46(v33, 1, 1, v24);
  sub_20B52F9E8(v223, v28, &unk_27C772000, &unk_20C16D940);
  v47 = sub_20C137374();
  v48 = *(v47 - 8);
  if ((*(v48 + 48))(v28, 1, v47) == 1)
  {
    sub_20B520158(v28, &unk_27C772000, &unk_20C16D940);
    v49 = v225;
    v50 = v225[22];
    v51 = v50[9];
    v52 = v50[10];
    __swift_project_boxed_opaque_existential_1(v50 + 6, v51);
    v206 = sub_20B5E107C(0xD000000000000020, 0x800000020C1B19E0, v51, v52);
    v208 = v53;
    v54 = v49;
  }

  else
  {
    v206 = sub_20C137314();
    v208 = v55;
    (*(v48 + 8))(v28, v47);
    v54 = v225;
  }

  v56 = v210;
  sub_20B52F9E8(v222, v210, &unk_27C766680, &unk_20C14F920);
  v57 = v213;
  if ((*(v45 + 48))(v56, 1, v213) == 1)
  {
    sub_20B520158(v56, &unk_27C766680, &unk_20C14F920);
  }

  else
  {
    v58 = v199;
    (*(v45 + 32))(v199, v56, v57);
    sub_20BC4E008(v58);
    (*(v45 + 8))(v58, v57);
  }

  if (swift_unknownObjectWeakLoadStrong())
  {
    v59 = v54[5];
    ObjectType = swift_getObjectType();
    *&v240 = &off_2822EA028;
    *(&v239 + 1) = v207;
    *&v238 = v54;
    v61 = *(v59 + 16);

    v213 = v36;
    v210 = v40;
    v62 = v37;
    v63 = v222;
    v61(&v238, v222, v206, v208, 0, 0, ObjectType, v59);
    v54 = v225;

    swift_unknownObjectRelease();
    v64 = v63;
    v37 = v62;
    v36 = v213;
    sub_20B520158(v64, &unk_27C766680, &unk_20C14F920);
    __swift_destroy_boxed_opaque_existential_1(&v238);
  }

  else
  {
    sub_20B520158(v222, &unk_27C766680, &unk_20C14F920);
  }

  v65 = v54[58];
  v66 = v217;
  v212(v36, v217, v37);
  (v211)(v36, 0, 1, v37);
  v67 = OBJC_IVAR____TtC9SeymourUI30TVWorkoutPlanDetailHeaderShelf_workoutPlan;
  swift_beginAccess();
  sub_20B5DF2D4(v36, v65 + v67, &unk_27C76A970, &qword_20C14FC10);
  swift_endAccess();
  v68 = OBJC_IVAR____TtC9SeymourUI30TVWorkoutPlanDetailHeaderShelf_workoutPlanTemplateMetadata;
  swift_beginAccess();
  sub_20B606B6C(v223, v65 + v68, &unk_27C772000, &unk_20C16D940);
  swift_endAccess();
  v69 = OBJC_IVAR____TtC9SeymourUI30TVWorkoutPlanDetailHeaderShelf_workoutPlanSummary;
  swift_beginAccess();
  sub_20B606B6C(v226, v65 + v69, &unk_27C772020, &qword_20C182C00);
  swift_endAccess();
  sub_20C0503AC();
  *&v226 = v65;
  sub_20C04FDFC();
  sub_20C132E64();
  v70 = *MEMORY[0x277CC9968];
  v71 = v221;
  v72 = *(v221 + 104);
  v73 = v219;
  v74 = v216;
  v72(v219, v70, v216);
  v75 = sub_20C133834();
  v78 = *(v71 + 8);
  v77 = v71 + 8;
  v76 = v78;
  v78(v73, v74);
  if (*(v75 + 16))
  {
    v79 = v225;
LABEL_16:
    v90 = v215;
    goto LABEL_17;
  }

  v222 = v76;
  v223 = v72;
  v221 = v77;
  v80 = v196;
  sub_20C1338D4();
  v81 = v218;
  v82 = v220;
  (*(v218 + 56))(v80, 0, 1, v220);
  v214 = *(v81 + 32);
  v214(v204, v80, v82);
  v83 = v197;
  sub_20C133124();
  v84 = v216;
  v223(v73, v70, v216);
  v85 = v193;
  sub_20C1330F4();
  v86 = v73;
  v87 = v218;
  v222(v86, v84);
  v88 = *(v205 + 8);
  v205 += 8;
  v213 = v88;
  (v88)(v83, v198);
  v211 = *(v87 + 48);
  v212 = (v87 + 48);
  if (v211(v85, 1, v82) == 1)
  {
    (*(v87 + 8))(v204, v82);
    v89 = v85;
LABEL_14:
    sub_20B520158(v89, &qword_27C762AC0, &qword_20C14FC90);
LABEL_15:
    v79 = v225;
    v66 = v217;
    goto LABEL_16;
  }

  v214(v194, v85, v82);
  v176 = v204;
  v177 = v87 + 8;
  if (sub_20C132E04())
  {
    v210 = v177;
    v208 = v177 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v178 = v194;
    LODWORD(v209) = v70;
    while (1)
    {

      v179 = v176;
      v180 = v219;
      v181 = v216;
      v223(v219, v70, v216);
      v75 = sub_20C133834();
      v222(v180, v181);
      if (*(v75 + 16) || (sub_20C132E04() & 1) != 0)
      {
        v190 = *v210;
        v191 = v220;
        (*v210)(v178, v220);
        v190(v179, v191);
        goto LABEL_15;
      }

      v182 = v197;
      sub_20C133124();
      v183 = v70;
      v184 = v219;
      v223(v219, v183, v181);
      v185 = v195;
      sub_20C1330F4();
      v222(v184, v181);
      (v213)(v182, v198);
      v186 = *v210;
      v187 = v220;
      (*v210)(v178, v220);
      if (v211(v185, 1, v187) == 1)
      {
        break;
      }

      v214(v178, v185, v187);
      v176 = v204;
      v188 = sub_20C132E04();
      v70 = v209;
      if ((v188 & 1) == 0)
      {
        goto LABEL_46;
      }
    }

    v186(v204, v187);
    v89 = v185;
    goto LABEL_14;
  }

  v186 = *v177;
LABEL_46:
  v79 = v225;
  v90 = v215;
  v189 = v220;
  v186(v194, v220);
  v186(v176, v189);
  v66 = v217;
LABEL_17:
  *&v238 = v75;
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763E80, &qword_20C1555A0);
  sub_20B6D6ABC(&qword_27C772280, &qword_27C763E80, &qword_20C1555A0, MEMORY[0x277D83520]);
  sub_20BE43E70(&qword_27C762288, MEMORY[0x277D51FE0], MEMORY[0x277D51FF0]);
  v91 = sub_20C13CBF4();

  v92 = v79[59];
  if (v90)
  {
    v93 = v90;
  }

  else
  {
    v93 = MEMORY[0x277D84FA0];
  }

  sub_20B77001C(v66, v91, v93);

  sub_20BE17D1C(v66, v90);
  if (*(v79 + OBJC_IVAR____TtC9SeymourUI35TVWorkoutPlanDetailPageDataProvider_state) != 1)
  {
    return (*(v218 + 8))(v224, v220);
  }

  *(v79 + OBJC_IVAR____TtC9SeymourUI35TVWorkoutPlanDetailPageDataProvider_state) = 2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766A00, &qword_20C1538C0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20C14F320;
  *(inited + 32) = v226;
  *(inited + 40) = &off_282302E30;
  *(inited + 48) = v92;
  *(inited + 56) = &off_2822A3E08;
  swift_beginAccess();

  v96 = sub_20BEF73DC(v95);

  *&v238 = inited;
  sub_20B8D8FF8(v96);
  v97 = v238;
  v249 = v238;
  swift_beginAccess();
  v98 = v79[61];
  if (v98 >> 62)
  {
    if (!sub_20C13DB34())
    {
      goto LABEL_28;
    }
  }

  else if (!*((v98 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_28;
  }

  v99 = v79[22];
  v100 = v99[9];
  v101 = v99[10];
  __swift_project_boxed_opaque_existential_1(v99 + 6, v100);
  v102 = sub_20B5E107C(0x53554F4956455250, 0xEE00534B4545575FLL, v100, v101);
  v104 = v103;
  type metadata accessor for TitledSeparatorShelf(0);
  v105 = swift_allocObject();
  *(v105 + 24) = 0;
  swift_unknownObjectWeakInit();
  sub_20C132ED4();
  v106 = v105 + OBJC_IVAR____TtC9SeymourUI20TitledSeparatorShelf_row;
  sub_20B5D8060(&v238);
  v107 = v243;
  *(v106 + 64) = v242;
  *(v106 + 80) = v107;
  *(v106 + 160) = v248;
  v108 = v247;
  *(v106 + 128) = v246;
  *(v106 + 144) = v108;
  v109 = v245;
  *(v106 + 96) = v244;
  *(v106 + 112) = v109;
  v110 = v239;
  *v106 = v238;
  *(v106 + 16) = v110;
  v111 = v241;
  *(v106 + 32) = v240;
  *(v106 + 48) = v111;
  v112 = (v105 + OBJC_IVAR____TtC9SeymourUI20TitledSeparatorShelf_title);
  *v112 = v102;
  v112[1] = v104;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v97 = sub_20BC0577C(0, v97[2] + 1, 1, v97);
  }

  v114 = v97[2];
  v113 = v97[3];
  if (v114 >= v113 >> 1)
  {
    v97 = sub_20BC0577C((v113 > 1), v114 + 1, 1, v97);
  }

  v97[2] = v114 + 1;
  v115 = &v97[2 * v114];
  v115[4] = v105;
  v115[5] = &off_2822CAF68;
  v249 = v97;

  v117 = sub_20BEF73DC(v116);

  sub_20B8D8FF8(v117);
LABEL_28:
  v118 = v200;
  sub_20C133804();
  v119 = sub_20C132EA4();
  v222 = v120;
  v223 = v119;
  (*(v201 + 8))(v118, v202);
  v121 = v249;
  sub_20C133AA4();
  LODWORD(v221) = v237;
  v122 = *(v79[63] + OBJC_IVAR____TtC9SeymourUI11CatalogPage_collectionView);
  sub_20C13C734();
  v219 = v122;
  v123 = sub_20C13C724();
  v124 = type metadata accessor for CatalogPageImpressionTracker();
  v125 = swift_allocObject();
  sub_20C13C714();

  sub_20C13C6B4();
  v126 = MEMORY[0x277D221C0];
  v125[2] = sub_20C13C6D4();
  v125[3] = v123;
  v125[4] = v126;
  *(&v239 + 1) = v124;
  v127 = sub_20BE43E70(&qword_27C761A90, type metadata accessor for CatalogPageImpressionTracker, &unk_20C167088);
  *&v240 = v127;
  *&v238 = v125;
  v128 = type metadata accessor for MetricLocationStore();
  v129 = swift_allocObject();
  v130 = MEMORY[0x277D84F90];
  v131 = MEMORY[0x277D84F98];
  *(v129 + 16) = MEMORY[0x277D84F90];
  *(v129 + 24) = v131;
  v132 = __swift_mutable_project_boxed_opaque_existential_1(&v238, v124);
  v217 = &v192;
  v133 = MEMORY[0x28223BE20](v132);
  v135 = (&v192 - ((v134 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v136 + 16))(v135, v133);
  v137 = *v135;
  v236[4] = v127;
  v236[3] = v124;
  v236[0] = v137;
  v235[3] = v128;
  v235[4] = &off_2822B6968;
  v235[0] = v129;
  v138 = v121[2];
  if (v138)
  {
    v215 = v128;
    v216 = v127;
    v234[0] = v130;
    sub_20BB5D394(0, v138, 0);
    v139 = 4;
    v140 = v234[0];
    do
    {
      v141 = *&v121[v139];
      v234[0] = v140;
      v142 = *(v140 + 16);
      v143 = *(v140 + 24);
      v226 = v141;
      swift_unknownObjectRetain();
      if (v142 >= v143 >> 1)
      {
        sub_20BB5D394((v143 > 1), v142 + 1, 1);
        v140 = v234[0];
      }

      *(v140 + 16) = v142 + 1;
      v144 = v140 + 24 * v142;
      *(v144 + 32) = v226;
      *(v144 + 48) = 0;
      v139 += 2;
      --v138;
    }

    while (v138);

    v128 = v215;
    v127 = v216;
  }

  else
  {

    v140 = MEMORY[0x277D84F90];
  }

  sub_20B51CC64(v236, v234);
  sub_20B51CC64(v235, v233);
  v145 = __swift_mutable_project_boxed_opaque_existential_1(v234, v234[3]);
  v146 = MEMORY[0x28223BE20](v145);
  v148 = (&v192 - ((v147 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v149 + 16))(v148, v146);
  v150 = __swift_mutable_project_boxed_opaque_existential_1(v233, v233[3]);
  v151 = MEMORY[0x28223BE20](v150);
  v153 = (&v192 - ((v152 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v154 + 16))(v153, v151);
  v155 = *v148;
  v156 = *v153;
  v231 = v124;
  v232 = v127;
  v230[0] = v155;
  v228 = v128;
  v229 = &off_2822B6968;
  v227[0] = v156;
  v157 = objc_allocWithZone(type metadata accessor for CatalogPage());
  v158 = __swift_mutable_project_boxed_opaque_existential_1(v230, v231);
  v159 = MEMORY[0x28223BE20](v158);
  v161 = (&v192 - ((v160 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v162 + 16))(v161, v159);
  v163 = __swift_mutable_project_boxed_opaque_existential_1(v227, v228);
  v164 = MEMORY[0x28223BE20](v163);
  v166 = (&v192 - ((v165 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v167 + 16))(v166, v164);
  v168 = sub_20BE3AA74(v223, v222, v140, v221, v219, *v161, *v166, 2, v157);
  __swift_destroy_boxed_opaque_existential_1(v235);
  __swift_destroy_boxed_opaque_existential_1(v236);
  __swift_destroy_boxed_opaque_existential_1(v227);
  __swift_destroy_boxed_opaque_existential_1(v230);
  __swift_destroy_boxed_opaque_existential_1(v233);
  __swift_destroy_boxed_opaque_existential_1(v234);
  __swift_destroy_boxed_opaque_existential_1(&v238);
  v169 = v225;
  v170 = v225[63];
  v225[63] = v168;

  if (swift_unknownObjectWeakLoadStrong())
  {
    v171 = v169[3];
    v172 = swift_getObjectType();
    *&v240 = &off_2822EA1C0;
    *(&v239 + 1) = v207;
    *&v238 = v169;
    v173 = v169[63];

    v174 = v173;
    sub_20B76FFF8(&v238, v174, v172, v171);
    swift_unknownObjectRelease();

    (*(v218 + 8))(v224, v220);
    return __swift_destroy_boxed_opaque_existential_1(&v238);
  }

  return (*(v218 + 8))(v224, v220);
}

uint64_t sub_20BE17D1C(char *a1, uint64_t a2)
{
  v109 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76F5B0, &qword_20C17F620);
  MEMORY[0x28223BE20](v4);
  v96 = &v87 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v100 = &v87 - v7;
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76F5B8, &qword_20C17F628);
  MEMORY[0x28223BE20](v95);
  v101 = &v87 - v8;
  v9 = sub_20C133154();
  v10 = *(v9 - 8);
  v103 = v9;
  v104 = v10;
  MEMORY[0x28223BE20](v9);
  v102 = &v87 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_20C133594();
  MEMORY[0x28223BE20](v12 - 8);
  v108 = &v87 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_20C133A14();
  v110 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v16 = &v87 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v87 - v18;
  MEMORY[0x28223BE20](v20);
  v22 = (&v87 - v21);
  MEMORY[0x28223BE20](v23);
  v98 = &v87 - v24;
  MEMORY[0x28223BE20](v25);
  v99 = &v87 - v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762AC0, &qword_20C14FC90);
  MEMORY[0x28223BE20](v27 - 8);
  v29 = &v87 - v28;
  v30 = sub_20C132E94();
  v105 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v107 = &v87 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32);
  v97 = &v87 - v33;
  v111 = v2;
  if (*(v2 + OBJC_IVAR____TtC9SeymourUI35TVWorkoutPlanDetailPageDataProvider_state) == 1)
  {
    v34 = v111;
    swift_beginAccess();
    v35 = v30;
    v36 = MEMORY[0x277D84F90];
    v34[60] = MEMORY[0x277D84F90];

    swift_beginAccess();
    v34[61] = v36;
    v30 = v35;

    swift_beginAccess();
    v34[62] = MEMORY[0x277D84F98];
  }

  sub_20C1338D4();
  v106 = v16;
  v94 = v4;
  v93 = v22;
  v37 = v105;
  (*(v105 + 56))(v29, 0, 1, v30);
  v38 = a1;
  v39 = v97;
  (*(v37 + 32))(v97, v29, v30);
  sub_20C133944();
  v40 = v102;
  sub_20C133014();
  sub_20C1339E4();
  sub_20C133014();
  v41 = v98;
  sub_20C1339A4();
  v42 = *(v104 + 8);
  v104 += 8;
  v92 = v42;
  v42(v40, v103);
  v43 = v37;
  v44 = v93;
  (*(v43 + 16))(v107, v39, v30);
  sub_20C133014();
  sub_20C1339F4();
  v89 = sub_20BE43E70(&qword_27C76F5C0, MEMORY[0x277D501F0], MEMORY[0x277D501F8]);
  if ((sub_20C13C844() & 1) == 0)
  {
    goto LABEL_23;
  }

  v88 = v30;
  v108 = v38;
  v45 = v41;
  v46 = v96;
  v47 = v110;
  v48 = *(v110 + 16);
  v49 = v100;
  v48(v100, v45, v14);
  v50 = v94;
  v51 = v49 + *(v94 + 48);
  v107 = v48;
  v48(v51, v44, v14);
  sub_20B52F9E8(v49, v46, &qword_27C76F5B0, &qword_20C17F620);
  v90 = *(v50 + 48);
  v52 = v47;
  v54 = v47 + 32;
  v53 = *(v47 + 32);
  v53(v101, v46, v14);
  v91 = *(v52 + 8);
  v91(v46 + v90, v14);
  sub_20BE43EB8(v100, v46);
  v55 = *(v50 + 48);
  v56 = v101;
  v57 = &v101[*(v95 + 36)];
  v90 = v54;
  v87 = v53;
  v53(v57, v46 + v55, v14);
  v44 = v91;
  v91(v46, v14);
  v58 = v102;
  sub_20C133014();
  v59 = sub_20C133A04();
  v92(v58, v103);
  sub_20B520158(v56, &qword_27C76F5B8, &qword_20C17F628);
  v60 = *(v59 + 16);
  if (v60)
  {
    v61 = 0;
    v62 = v107;
    while (v61 < *(v59 + 16))
    {
      v63 = (v62)(v19, v59 + ((*(v110 + 80) + 32) & ~*(v110 + 80)) + *(v110 + 72) * v61, v14);
      sub_20BE188B0(v19, v108, v111, v109, v63);
      ++v61;
      v44(v19, v14);
      if (v60 == v61)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
    goto LABEL_22;
  }

  v62 = v107;
LABEL_10:

  v64 = v98;
  v65 = v99;
  v19 = v89;
  if (sub_20C13C834())
  {
    v44(v93, v14);
    v44(v64, v14);
    v66 = v65;
    goto LABEL_20;
  }

  if (sub_20C13C844())
  {
    v67 = v100;
    (v62)(v100, v65, v14);
    v68 = v62;
    v69 = v94;
    (v68)(v67 + *(v94 + 48), v64, v14);
    v70 = v96;
    sub_20B52F9E8(v67, v96, &qword_27C76F5B0, &qword_20C17F620);
    v71 = *(v69 + 48);
    v72 = v101;
    v73 = v87;
    v87(v101, v70, v14);
    v74 = v70 + v71;
    v75 = v91;
    v91(v74, v14);
    sub_20BE43EB8(v67, v70);
    v73(v72 + *(v95 + 36), v70 + *(v94 + 48), v14);
    v44 = v75;
    v75(v70, v14);
    v76 = v102;
    sub_20C133014();
    v77 = sub_20C133A04();
    v92(v76, v103);
    sub_20B520158(v72, &qword_27C76F5B8, &qword_20C17F628);
    v104 = sub_20C01C0D0(1uLL, v77);
    v81 = v80 >> 1;
    if (v79 != v80 >> 1)
    {
      v82 = v78;
      v19 = v79;
      if (v79 <= (v80 >> 1))
      {
        v83 = v80 >> 1;
      }

      else
      {
        v83 = v79;
      }

      while (v83 != v19)
      {
        v84 = v106;
        v85 = (v107)(v106, v82 + *(v110 + 72) * v19, v14);
        sub_20BE18E84(v84, v108, v111, v109, v85);
        ++v19;
        v44(v84, v14);
        if (v81 == v19)
        {
          goto LABEL_19;
        }
      }

LABEL_22:
      __break(1u);
LABEL_23:
      __break(1u);
      goto LABEL_24;
    }

LABEL_19:
    swift_unknownObjectRelease();
    v44(v93, v14);
    v44(v98, v14);
    v66 = v99;
LABEL_20:
    v44(v66, v14);
    return (*(v105 + 8))(v97, v88);
  }

LABEL_24:
  __break(1u);

  result = (v44)(v19, v14);
  __break(1u);
  return result;
}

void sub_20BE188B0(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, double a5)
{
  v37 = a4;
  v38 = a2;
  v7 = sub_20C133A14();
  v33 = *(v7 - 8);
  v34 = v7;
  MEMORY[0x28223BE20](v7);
  v36 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_20C133134();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_20C133154();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_20C132E94();
  v39 = *(v17 - 8);
  v40 = v17;
  MEMORY[0x28223BE20](v17);
  v19 = &v33 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C133014();
  sub_20C1339D4();
  v35 = a1;
  sub_20C1339B4();
  (*(v14 + 8))(v16, v13);
  v20 = v38;
  (*(v10 + 104))(v12, *MEMORY[0x277CC9940], v9);
  v21 = sub_20C133834();
  (*(v10 + 8))(v12, v9);
  v41 = v21;
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763E80, &qword_20C1555A0);
  sub_20B6D6ABC(&qword_27C772280, &qword_27C763E80, &qword_20C1555A0, MEMORY[0x277D83520]);
  sub_20BE43E70(&qword_27C762288, MEMORY[0x277D51FE0], MEMORY[0x277D51FF0]);
  v22 = sub_20C13CBF4();

  swift_beginAccess();
  if (*(a3[62] + 16) && (sub_20B65AD60(v19), (v23 & 1) != 0))
  {
    swift_endAccess();
    swift_beginAccess();
    v24 = a3[62];
    if (!*(v24 + 16) || (v25 = sub_20B65AD60(v19), (v26 & 1) == 0))
    {
      swift_endAccess();

      goto LABEL_16;
    }

    v27 = *(*(v24 + 56) + 8 * v25);
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    v28 = v36;
    (*(v33 + 16))(v36, v35, v34);
    type metadata accessor for TVWorkoutPlanDetailWeeklyWorkoutsShelf(0);
    swift_allocObject();

    v27 = sub_20C0BA87C(v29, v28, 47);
  }

  if (v37)
  {
    v30 = v37;
  }

  else
  {
    v30 = MEMORY[0x277D84FA0];
  }

  sub_20C0B8AFC(v20, v22, v30);

  if (*(a3 + OBJC_IVAR____TtC9SeymourUI35TVWorkoutPlanDetailPageDataProvider_state) != 1)
  {
    (*(v39 + 8))(v19, v40);

    return;
  }

  swift_beginAccess();

  MEMORY[0x20F2F43B0](v31);
  if (*((a3[60] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((a3[60] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_20C13CCA4();
  }

  sub_20C13CCE4();
  swift_endAccess();
  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v42 = a3[62];
  a3[62] = 0x8000000000000000;
  sub_20B91E994(v27, v19, isUniquelyReferenced_nonNull_native);
  a3[62] = v42;
  swift_endAccess();

LABEL_16:
  (*(v39 + 8))(v19, v40);
}

void sub_20BE18E84(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, double a5)
{
  v37 = a4;
  v38 = a2;
  v7 = sub_20C133A14();
  v33 = *(v7 - 8);
  v34 = v7;
  MEMORY[0x28223BE20](v7);
  v36 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_20C133134();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_20C133154();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_20C132E94();
  v39 = *(v17 - 8);
  v40 = v17;
  MEMORY[0x28223BE20](v17);
  v19 = &v33 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C133014();
  sub_20C1339D4();
  v35 = a1;
  sub_20C1339B4();
  (*(v14 + 8))(v16, v13);
  v20 = v38;
  (*(v10 + 104))(v12, *MEMORY[0x277CC9940], v9);
  v21 = sub_20C133834();
  (*(v10 + 8))(v12, v9);
  v41 = v21;
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763E80, &qword_20C1555A0);
  sub_20B6D6ABC(&qword_27C772280, &qword_27C763E80, &qword_20C1555A0, MEMORY[0x277D83520]);
  sub_20BE43E70(&qword_27C762288, MEMORY[0x277D51FE0], MEMORY[0x277D51FF0]);
  v22 = sub_20C13CBF4();

  swift_beginAccess();
  if (*(a3[62] + 16) && (sub_20B65AD60(v19), (v23 & 1) != 0))
  {
    swift_endAccess();
    swift_beginAccess();
    v24 = a3[62];
    if (!*(v24 + 16) || (v25 = sub_20B65AD60(v19), (v26 & 1) == 0))
    {
      swift_endAccess();

      goto LABEL_16;
    }

    v27 = *(*(v24 + 56) + 8 * v25);
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    v28 = v36;
    (*(v33 + 16))(v36, v35, v34);
    type metadata accessor for TVWorkoutPlanDetailWeeklyWorkoutsShelf(0);
    swift_allocObject();

    v27 = sub_20C0BA87C(v29, v28, 48);
  }

  if (v37)
  {
    v30 = v37;
  }

  else
  {
    v30 = MEMORY[0x277D84FA0];
  }

  sub_20C0B8AFC(v20, v22, v30);

  if (*(a3 + OBJC_IVAR____TtC9SeymourUI35TVWorkoutPlanDetailPageDataProvider_state) != 1)
  {
    (*(v39 + 8))(v19, v40);

    return;
  }

  swift_beginAccess();

  MEMORY[0x20F2F43B0](v31);
  if (*((a3[61] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((a3[61] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_20C13CCA4();
  }

  sub_20C13CCE4();
  swift_endAccess();
  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v42 = a3[62];
  a3[62] = 0x8000000000000000;
  sub_20B91E994(v27, v19, isUniquelyReferenced_nonNull_native);
  a3[62] = v42;
  swift_endAccess();

LABEL_16:
  (*(v39 + 8))(v19, v40);
}

uint64_t sub_20BE19458(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[40] = a4;
  v5 = sub_20C132EE4();
  v4[41] = v5;
  v4[42] = *(v5 - 8);
  v4[43] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C772020, &qword_20C182C00);
  v4[44] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C772000, &unk_20C16D940);
  v4[45] = swift_task_alloc();
  v6 = sub_20C13BB84();
  v4[46] = v6;
  v4[47] = *(v6 - 8);
  v4[48] = swift_task_alloc();
  v4[49] = swift_task_alloc();
  v4[50] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76A970, &qword_20C14FC10);
  v4[51] = swift_task_alloc();
  v7 = sub_20C133954();
  v4[52] = v7;
  v4[53] = *(v7 - 8);
  v4[54] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20BE19690, 0, 0);
}

uint64_t sub_20BE19690()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_20B51CC64(Strong + 136, (v0 + 2));

    v2 = v0[5];
    v3 = v0[6];
    __swift_project_boxed_opaque_existential_1(v0 + 2, v2);
    v4 = swift_task_alloc();
    v0[55] = v4;
    *v4 = v0;
    v4[1] = sub_20BE198F0;
    v5 = v0[51];

    return MEMORY[0x2821ADE88](v5, v2, v3);
  }

  else
  {
    (*(v0[53] + 56))(v0[51], 1, 1, v0[52]);
    sub_20B520158(v0[51], &unk_27C76A970, &qword_20C14FC10);
    sub_20C13B454();
    v6 = sub_20C13BB74();
    v7 = sub_20C13D1D4();
    v8 = os_log_type_enabled(v6, v7);
    v9 = v0[50];
    v10 = v0[46];
    v11 = v0[47];
    if (v8)
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_20B517000, v6, v7, "Couldn't find active plan.", v12, 2u);
      MEMORY[0x20F2F6A40](v12, -1, -1);
    }

    (*(v11 + 8))(v9, v10);

    v13 = v0[1];

    return v13();
  }
}

uint64_t sub_20BE198F0()
{
  *(*v1 + 448) = v0;

  if (v0)
  {
    v2 = sub_20BE1B1C8;
  }

  else
  {
    v2 = sub_20BE19A04;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_20BE19A04()
{
  v1 = v0[52];
  v2 = v0[53];
  v3 = v0[51];
  (*(v2 + 56))(v3, 0, 1, v1);
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_20B520158(v0[51], &unk_27C76A970, &qword_20C14FC10);
    sub_20C13B454();
    v4 = sub_20C13BB74();
    v5 = sub_20C13D1D4();
    v6 = os_log_type_enabled(v4, v5);
    v7 = v0[50];
    v8 = v0[46];
    v9 = v0[47];
    if (v6)
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_20B517000, v4, v5, "Couldn't find active plan.", v10, 2u);
      MEMORY[0x20F2F6A40](v10, -1, -1);
    }

    (*(v9 + 8))(v7, v8);
    goto LABEL_5;
  }

  (*(v0[53] + 32))(v0[54], v0[51], v0[52]);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v14 = v0[41];
    v15 = v0[42];
    sub_20B51CC64(Strong + 136, (v0 + 7));

    v16 = v0[10];
    v17 = v0[11];
    __swift_project_boxed_opaque_existential_1(v0 + 7, v16);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C769650, &unk_20C168BB0);
    v18 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    v19 = swift_allocObject();
    *(v19 + 16) = xmmword_20C14F980;
    sub_20C133854();
    v20 = sub_20BE8D710(v19);
    v0[57] = v20;
    swift_setDeallocating();
    (*(v15 + 8))(v19 + v18, v14);
    swift_deallocClassInstance();
    v21 = swift_task_alloc();
    v0[58] = v21;
    *v21 = v0;
    v21[1] = sub_20BE1A10C;

    return MEMORY[0x2821ADEE0](v20, v16, v17);
  }

  else
  {
    v22 = v0[45];
    v23 = sub_20C137374();
    (*(*(v23 - 8) + 56))(v22, 1, 1, v23);
    sub_20C13B454();
    v24 = sub_20C13BB74();
    v25 = sub_20C13D1D4();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&dword_20B517000, v24, v25, "Couldn't find workout template associated with active plan.", v26, 2u);
      MEMORY[0x20F2F6A40](v26, -1, -1);
    }

    v27 = v0[49];
    v28 = v0[46];
    v29 = v0[47];

    (*(v29 + 8))(v27, v28);
    swift_beginAccess();
    v30 = swift_weakLoadStrong();
    if (v30)
    {
      sub_20B51CC64(v30 + 136, (v0 + 12));

      v31 = v0[15];
      v32 = v0[16];
      __swift_project_boxed_opaque_existential_1(v0 + 12, v31);
      sub_20C133804();
      v33 = swift_task_alloc();
      v0[61] = v33;
      *v33 = v0;
      v33[1] = sub_20BE1A704;
      v35 = v0[43];
      v34 = v0[44];

      return MEMORY[0x2821ADEE8](v34, v35, v31, v32);
    }

    else
    {
      v36 = v0[44];
      v37 = sub_20C1353F4();
      (*(*(v37 - 8) + 56))(v36, 1, 1, v37);
      swift_beginAccess();
      v38 = swift_weakLoadStrong();
      if (v38)
      {
        sub_20B51CC64(v38 + 136, (v0 + 17));

        v39 = v0[20];
        v40 = v0[21];
        __swift_project_boxed_opaque_existential_1(v0 + 17, v39);
        v41 = swift_task_alloc();
        v0[62] = v41;
        *v41 = v0;
        v41[1] = sub_20BE1AB6C;

        return MEMORY[0x2821ADE90](v39, v40);
      }

      else
      {
        v0[64] = 0;
        swift_beginAccess();
        v42 = swift_weakLoadStrong();
        v0[65] = v42;
        if (!v42)
        {

          v46 = v0[53];
          v45 = v0[54];
          v47 = v0[52];
          v48 = v0[45];
          sub_20B520158(v0[44], &unk_27C772020, &qword_20C182C00);
          (*(v46 + 8))(v45, v47);
          sub_20B520158(v48, &unk_27C772000, &unk_20C16D940);
LABEL_5:

          v11 = v0[1];

          return v11();
        }

        sub_20C13CDA4();
        v0[66] = sub_20C13CD94();
        v44 = sub_20C13CD24();

        return MEMORY[0x2822009F8](sub_20BE1AE60, v44, v43);
      }
    }
  }
}

uint64_t sub_20BE1A10C(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 472) = v1;

  if (v1)
  {
    v5 = sub_20BE1B440;
  }

  else
  {
    *(v4 + 480) = a1;
    v5 = sub_20BE1A258;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_20BE1A258()
{
  v1 = v0[45];
  sub_20BEDD734(v0[60], v1);

  __swift_destroy_boxed_opaque_existential_1(v0 + 7);
  v2 = sub_20C137374();
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    sub_20C13B454();
    v3 = sub_20C13BB74();
    v4 = sub_20C13D1D4();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_20B517000, v3, v4, "Couldn't find workout template associated with active plan.", v5, 2u);
      MEMORY[0x20F2F6A40](v5, -1, -1);
    }

    v6 = v0[49];
    v7 = v0[46];
    v8 = v0[47];

    (*(v8 + 8))(v6, v7);
  }

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_20B51CC64(Strong + 136, (v0 + 12));

    v10 = v0[15];
    v11 = v0[16];
    __swift_project_boxed_opaque_existential_1(v0 + 12, v10);
    sub_20C133804();
    v12 = swift_task_alloc();
    v0[61] = v12;
    *v12 = v0;
    v12[1] = sub_20BE1A704;
    v14 = v0[43];
    v13 = v0[44];

    return MEMORY[0x2821ADEE8](v13, v14, v10, v11);
  }

  else
  {
    v15 = v0[44];
    v16 = sub_20C1353F4();
    (*(*(v16 - 8) + 56))(v15, 1, 1, v16);
    swift_beginAccess();
    v17 = swift_weakLoadStrong();
    if (v17)
    {
      sub_20B51CC64(v17 + 136, (v0 + 17));

      v18 = v0[20];
      v19 = v0[21];
      __swift_project_boxed_opaque_existential_1(v0 + 17, v18);
      v20 = swift_task_alloc();
      v0[62] = v20;
      *v20 = v0;
      v20[1] = sub_20BE1AB6C;

      return MEMORY[0x2821ADE90](v18, v19);
    }

    else
    {
      v0[64] = 0;
      swift_beginAccess();
      v21 = swift_weakLoadStrong();
      v0[65] = v21;
      if (v21)
      {
        sub_20C13CDA4();
        v0[66] = sub_20C13CD94();
        v23 = sub_20C13CD24();

        return MEMORY[0x2822009F8](sub_20BE1AE60, v23, v22);
      }

      else
      {

        v25 = v0[53];
        v24 = v0[54];
        v26 = v0[52];
        v27 = v0[45];
        sub_20B520158(v0[44], &unk_27C772020, &qword_20C182C00);
        (*(v25 + 8))(v24, v26);
        sub_20B520158(v27, &unk_27C772000, &unk_20C16D940);

        v28 = v0[1];

        return v28();
      }
    }
  }
}

uint64_t sub_20BE1A704()
{
  v2 = *v1;

  v3 = v2[43];
  v4 = v2[42];
  v5 = v2[41];
  if (v0)
  {

    (*(v4 + 8))(v3, v5);
    v6 = sub_20BE1B6D0;
  }

  else
  {
    (*(v4 + 8))(v3, v5);
    v6 = sub_20BE1A89C;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_20BE1A89C()
{
  v1 = v0[44];
  v2 = sub_20C1353F4();
  (*(*(v2 - 8) + 56))(v1, 0, 1, v2);
  __swift_destroy_boxed_opaque_existential_1(v0 + 12);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_20B51CC64(Strong + 136, (v0 + 17));

    v4 = v0[20];
    v5 = v0[21];
    __swift_project_boxed_opaque_existential_1(v0 + 17, v4);
    v6 = swift_task_alloc();
    v0[62] = v6;
    *v6 = v0;
    v6[1] = sub_20BE1AB6C;

    return MEMORY[0x2821ADE90](v4, v5);
  }

  else
  {
    v0[64] = 0;
    swift_beginAccess();
    v7 = swift_weakLoadStrong();
    v0[65] = v7;
    if (v7)
    {
      sub_20C13CDA4();
      v0[66] = sub_20C13CD94();
      v9 = sub_20C13CD24();

      return MEMORY[0x2822009F8](sub_20BE1AE60, v9, v8);
    }

    else
    {

      v11 = v0[53];
      v10 = v0[54];
      v12 = v0[52];
      v13 = v0[45];
      sub_20B520158(v0[44], &unk_27C772020, &qword_20C182C00);
      (*(v11 + 8))(v10, v12);
      sub_20B520158(v13, &unk_27C772000, &unk_20C16D940);

      v14 = v0[1];

      return v14();
    }
  }
}

uint64_t sub_20BE1AB6C(uint64_t a1)
{
  v4 = *v2;

  if (v1)
  {

    v5 = sub_20BE1B9A0;
  }

  else
  {
    *(v4 + 504) = a1;
    v5 = sub_20BE1AC98;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_20BE1AC98()
{
  v1 = v0[63];
  __swift_destroy_boxed_opaque_existential_1(v0 + 17);
  v0[64] = v1;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[65] = Strong;
  if (Strong)
  {
    sub_20C13CDA4();
    v0[66] = sub_20C13CD94();
    v4 = sub_20C13CD24();

    return MEMORY[0x2822009F8](sub_20BE1AE60, v4, v3);
  }

  else
  {

    v6 = v0[53];
    v5 = v0[54];
    v7 = v0[52];
    v8 = v0[45];
    sub_20B520158(v0[44], &unk_27C772020, &qword_20C182C00);
    (*(v6 + 8))(v5, v7);
    sub_20B520158(v8, &unk_27C772000, &unk_20C16D940);

    v9 = v0[1];

    return v9();
  }
}

uint64_t sub_20BE1AE60()
{
  v1 = v0[64];
  v2 = v0[54];
  v4 = v0[44];
  v3 = v0[45];

  sub_20BE163CC(v2, v3, v4, v1);

  return MEMORY[0x2822009F8](sub_20BE1AF0C, 0, 0);
}

uint64_t sub_20BE1AF0C()
{
  v2 = v0[53];
  v1 = v0[54];
  v3 = v0[52];
  v4 = v0[45];
  sub_20B520158(v0[44], &unk_27C772020, &qword_20C182C00);
  (*(v2 + 8))(v1, v3);
  sub_20B520158(v4, &unk_27C772000, &unk_20C16D940);

  v5 = v0[1];

  return v5();
}

uint64_t sub_20BE1B01C()
{
  v1 = *(v0 + 544);

  v2 = *(v1 + 504);
  v3 = &v2[OBJC_IVAR____TtC9SeymourUI11CatalogPage_delegate];
  if (swift_unknownObjectWeakLoadStrong())
  {
    v4 = *(v3 + 1);
    swift_getObjectType();
    v5 = *(v4 + 248);
    v6 = v2;
    v5();
    swift_unknownObjectRelease();
  }

  return MEMORY[0x2822009F8](sub_20BE1B100, 0, 0);
}

uint64_t sub_20BE1B100()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_20BE1B1C8()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v1 = v0[56];
  v0[67] = v1;
  sub_20C13B454();
  v2 = v1;
  v3 = sub_20C13BB74();
  v4 = sub_20C13D1D4();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    v7 = v1;
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 4) = v8;
    *v6 = v8;
    _os_log_impl(&dword_20B517000, v3, v4, "Failed fetching workout plan data with error: %@", v5, 0xCu);
    sub_20B520158(v6, &unk_27C762E30, &unk_20C150580);
    MEMORY[0x20F2F6A40](v6, -1, -1);
    MEMORY[0x20F2F6A40](v5, -1, -1);
  }

  v10 = v0[47];
  v9 = v0[48];
  v11 = v0[46];

  (*(v10 + 8))(v9, v11);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[68] = Strong;
  if (Strong)
  {
    sub_20C13CDA4();
    v0[69] = sub_20C13CD94();
    v14 = sub_20C13CD24();

    return MEMORY[0x2822009F8](sub_20BE1B01C, v14, v13);
  }

  else
  {

    v15 = v0[1];

    return v15();
  }
}

uint64_t sub_20BE1B440()
{
  (*(v0[53] + 8))(v0[54], v0[52]);
  __swift_destroy_boxed_opaque_existential_1(v0 + 7);
  v1 = v0[59];
  v0[67] = v1;
  sub_20C13B454();
  v2 = v1;
  v3 = sub_20C13BB74();
  v4 = sub_20C13D1D4();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    v7 = v1;
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 4) = v8;
    *v6 = v8;
    _os_log_impl(&dword_20B517000, v3, v4, "Failed fetching workout plan data with error: %@", v5, 0xCu);
    sub_20B520158(v6, &unk_27C762E30, &unk_20C150580);
    MEMORY[0x20F2F6A40](v6, -1, -1);
    MEMORY[0x20F2F6A40](v5, -1, -1);
  }

  v10 = v0[47];
  v9 = v0[48];
  v11 = v0[46];

  (*(v10 + 8))(v9, v11);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[68] = Strong;
  if (Strong)
  {
    sub_20C13CDA4();
    v0[69] = sub_20C13CD94();
    v14 = sub_20C13CD24();

    return MEMORY[0x2822009F8](sub_20BE1B01C, v14, v13);
  }

  else
  {

    v15 = v0[1];

    return v15();
  }
}

uint64_t sub_20BE1B6D0()
{
  v1 = v0[44];
  __swift_destroy_boxed_opaque_existential_1(v0 + 12);
  v2 = sub_20C1353F4();
  (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_20B51CC64(Strong + 136, (v0 + 17));

    v4 = v0[20];
    v5 = v0[21];
    __swift_project_boxed_opaque_existential_1(v0 + 17, v4);
    v6 = swift_task_alloc();
    v0[62] = v6;
    *v6 = v0;
    v6[1] = sub_20BE1AB6C;

    return MEMORY[0x2821ADE90](v4, v5);
  }

  else
  {
    v0[64] = 0;
    swift_beginAccess();
    v7 = swift_weakLoadStrong();
    v0[65] = v7;
    if (v7)
    {
      sub_20C13CDA4();
      v0[66] = sub_20C13CD94();
      v9 = sub_20C13CD24();

      return MEMORY[0x2822009F8](sub_20BE1AE60, v9, v8);
    }

    else
    {

      v11 = v0[53];
      v10 = v0[54];
      v12 = v0[52];
      v13 = v0[45];
      sub_20B520158(v0[44], &unk_27C772020, &qword_20C182C00);
      (*(v11 + 8))(v10, v12);
      sub_20B520158(v13, &unk_27C772000, &unk_20C16D940);

      v14 = v0[1];

      return v14();
    }
  }
}

uint64_t sub_20BE1B9A0()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 17);
  v0[64] = 0;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[65] = Strong;
  if (Strong)
  {
    sub_20C13CDA4();
    v0[66] = sub_20C13CD94();
    v3 = sub_20C13CD24();

    return MEMORY[0x2822009F8](sub_20BE1AE60, v3, v2);
  }

  else
  {

    v5 = v0[53];
    v4 = v0[54];
    v6 = v0[52];
    v7 = v0[45];
    sub_20B520158(v0[44], &unk_27C772020, &qword_20C182C00);
    (*(v5 + 8))(v4, v6);
    sub_20B520158(v7, &unk_27C772000, &unk_20C16D940);

    v8 = v0[1];

    return v8();
  }
}

unint64_t sub_20BE1BB60(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for WorkoutPlanSwappableItem(0);
  v5 = *(v4 - 8);
  v72 = v4;
  v73 = v5;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v74 = &v59 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v59 - v8;
  v10 = sub_20C136104();
  v70 = *(v10 - 8);
  v71 = v10;
  MEMORY[0x28223BE20](v10);
  v69 = &v59 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76F5A8, &unk_20C17F5E8);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v59 - v13;
  v15 = sub_20C137294();
  v76 = *(v15 - 8);
  v77 = v15;
  MEMORY[0x28223BE20](v15);
  v17 = &v59 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C772270, &qword_20C155560);
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v21 = &v59 - v20;
  v22 = sub_20C135C54();
  v78 = *(v22 - 8);
  v79 = v22;
  MEMORY[0x28223BE20](v22);
  v80 = &v59 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = a1;
  v24 = sub_20C133FE4();
  if (v25)
  {
    return MEMORY[0x277D84F90];
  }

  v66 = v24;
  v67 = v2;
  v68 = v9;
  v26 = *(*(v2 + 504) + OBJC_IVAR____TtC9SeymourUI11CatalogPage_shelves);

  result = sub_20C133234();
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_19;
  }

  if (result >= *(v26 + 16))
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v28 = *(v26 + 16 * result + 32);
  swift_unknownObjectRetain();

  type metadata accessor for TVWorkoutPlanDetailNextWorkoutsShelf(0);
  v29 = swift_dynamicCastClass();
  if (v29 && (v30 = *(v29 + OBJC_IVAR____TtC9SeymourUI36TVWorkoutPlanDetailNextWorkoutsShelf_nextScheduledWorkouts)) != 0)
  {
    v65 = v29;

    if (sub_20C133204() < *(v30 + 16))
    {
      result = sub_20C133204();
      if ((result & 0x8000000000000000) == 0)
      {
        v64 = v28;
        if (result < *(v30 + 16))
        {
          sub_20B52F9E8(v30 + ((*(v19 + 80) + 32) & ~*(v19 + 80)) + *(v19 + 72) * result, v21, &unk_27C772270, &qword_20C155560);

          v32 = v78;
          v31 = v79;
          (*(v78 + 32))(v80, v21, v79);
          v60 = sub_20C133E44();
          v61 = v33;
          v34 = sub_20C133FF4();
          v63 = v35;
          LODWORD(v75) = v36;
          v37 = *(v65 + OBJC_IVAR____TtC9SeymourUI36TVWorkoutPlanDetailNextWorkoutsShelf_workoutPlanReferenceMetrics);
          MEMORY[0x28223BE20](v34);
          swift_unknownObjectRetain();

          v62 = v37;
          sub_20B6B7808(sub_20BE42E9C, v37, v14);
          v38 = v76;
          v39 = v77;
          if ((*(v76 + 48))(v14, 1, v77) == 1)
          {
            sub_20B520158(v14, &qword_27C76F5A8, &unk_20C17F5E8);
            v40 = v68;
LABEL_17:
            (*(v32 + 16))(v40 + *(v72 + 28), v80, v31);
            v44 = v60;
            *v40 = v66;
            *(v40 + 8) = v44;
            *(v40 + 16) = v61;
            *(v40 + 24) = v34;
            v45 = v34;
            v59 = v34;
            v46 = v63;
            *(v40 + 32) = v63;
            v47 = v75;
            *(v40 + 40) = v75;

            sub_20B760050(v45, v46, v47);
            sub_20BE1C408(v40);
            v77 = v48;
            sub_20B51C88C(0, &qword_27C7713A0, 0x277D750C8);
            v49 = sub_20C13C914();
            v50 = [objc_opt_self() systemImageNamed_];

            v51 = swift_allocObject();
            swift_weakInit();
            v52 = v74;
            sub_20B633138(v40, v74);
            v53 = v32;
            v54 = (*(v73 + 80) + 40) & ~*(v73 + 80);
            v55 = swift_allocObject();
            v56 = v65;
            v55[2] = v51;
            v55[3] = v56;
            v55[4] = &off_2822A3E08;
            sub_20BE43808(v52, v55 + v54, type metadata accessor for WorkoutPlanSwappableItem);
            swift_unknownObjectRetain();
            v57 = sub_20C13D624();
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0, &unk_20C14F960);
            v58 = swift_allocObject();
            *(v58 + 16) = xmmword_20C14F580;
            *(v58 + 32) = v57;
            sub_20BE42F34(v40, type metadata accessor for WorkoutPlanSwappableItem);

            sub_20B584078(v59, v63, v75);
            swift_unknownObjectRelease_n();

            (*(v53 + 8))(v80, v79);
            return v58;
          }

          (*(v38 + 32))(v17, v14, v39);
          v41 = v69;
          v42 = v38;
          sub_20C137264();
          v43 = sub_20C1360F4();
          (*(v70 + 8))(v41, v71);
          (*(v42 + 8))(v17, v39);
          v40 = v68;
          if ((v43 & 1) == 0)
          {
            goto LABEL_17;
          }

          sub_20B584078(v34, v63, v75);
          swift_unknownObjectRelease_n();

          (*(v32 + 8))(v80, v31);
          return MEMORY[0x277D84F90];
        }

LABEL_21:
        __break(1u);
        return result;
      }

LABEL_20:
      __break(1u);
      goto LABEL_21;
    }

    swift_unknownObjectRelease();
  }

  else
  {
    swift_unknownObjectRelease();
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_20BE1C408(uint64_t a1)
{
  v2 = 0xD000000000000019;
  v3 = *(a1 + 40);
  if (v3 != 255 && (v3 & 1) != 0 && *(a1 + 24) == 2)
  {
    v4 = "SWAP_WORKOUT_ACTION_TITLE";
    v2 = 0xD00000000000001CLL;
  }

  else
  {
    v4 = "activeWorkoutPlanDetail";
  }

  v5 = *(v1 + 176);
  v6 = v5[9];
  v7 = v5[10];
  __swift_project_boxed_opaque_existential_1(v5 + 6, v6);
  return sub_20B5E107C(v2, v4 | 0x8000000000000000, v6, v7);
}

uint64_t sub_20BE1C4A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = type metadata accessor for ShelfMetricAction(0);
  MEMORY[0x28223BE20](v8);
  v10 = &v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76A970, &qword_20C14FC10);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v47 - v12;
  v14 = sub_20C133954();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v47 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    (*(v15 + 56))(v13, 1, 1, v14);
    return sub_20B520158(v13, &unk_27C76A970, &qword_20C14FC10);
  }

  v48 = a4;
  v49 = v17;
  v19 = OBJC_IVAR____TtC9SeymourUI35TVWorkoutPlanDetailPageDataProvider_workoutPlan;
  v20 = Strong;
  swift_beginAccess();
  sub_20B52F9E8(v20 + v19, v13, &unk_27C76A970, &qword_20C14FC10);

  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    return sub_20B520158(v13, &unk_27C76A970, &qword_20C14FC10);
  }

  v21 = v49;
  (*(v15 + 32))(v49, v13, v14);
  swift_beginAccess();
  v22 = swift_weakLoadStrong();
  if (!v22)
  {
    return (*(v15 + 8))(v21, v14);
  }

  v23 = *(v22 + 504);

  v24 = sub_20C136664();
  (*(*(v24 - 8) + 56))(v10, 1, 1, v24);
  v25 = v8[5];
  v26 = *MEMORY[0x277D513D8];
  v27 = sub_20C134F24();
  (*(*(v27 - 8) + 104))(&v10[v25], v26, v27);
  v28 = v8[6];
  v29 = sub_20C132C14();
  (*(*(v29 - 8) + 56))(&v10[v28], 1, 1, v29);
  v30 = *(a5 + 16);
  v47 = *(a5 + 8);
  v31 = v8[8];
  v32 = sub_20C135ED4();
  (*(*(v32 - 8) + 56))(&v10[v31], 1, 1, v32);
  v33 = v8[10];
  v34 = *MEMORY[0x277D51768];
  v35 = sub_20C1352E4();
  (*(*(v35 - 8) + 104))(&v10[v33], v34, v35);
  v36 = v8[11];
  v37 = sub_20C136E94();
  (*(*(v37 - 8) + 56))(&v10[v36], 1, 1, v37);

  v38 = sub_20B6B29D4(MEMORY[0x277D84F90]);
  v39 = &v10[v8[7]];
  *v39 = v47;
  *(v39 + 1) = v30;
  v40 = &v10[v8[9]];
  *v40 = 0;
  *(v40 + 1) = 0;
  *&v10[v8[12]] = v38;
  ObjectType = swift_getObjectType();
  sub_20BB90F28(a3, v10, v23, ObjectType, v48);
  v42 = &v23[OBJC_IVAR____TtC9SeymourUI11CatalogPage_delegate];
  if (swift_unknownObjectWeakLoadStrong())
  {
    v43 = *(v42 + 1);
    v44 = swift_getObjectType();
    v45 = v49;
    (*(v43 + 272))(v23, a5, v49, 0, v44, v43);

    swift_unknownObjectRelease();
  }

  else
  {

    v45 = v49;
  }

  sub_20BE42F34(v10, type metadata accessor for ShelfMetricAction);
  return (*(v15 + 8))(v45, v14);
}

uint64_t sub_20BE1C9E4(uint64_t a1, uint64_t a2)
{
  v3 = sub_20C135C54();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C137284();
  v7 = MEMORY[0x20F2ED390](v6, a2);
  (*(v4 + 8))(v6, v3);
  return v7 & 1;
}

uint64_t sub_20BE1CAD0()
{
  sub_20B583E6C(v0 + 16);
  sub_20B583E6C(v0 + 32);

  swift_unknownObjectRelease();
  sub_20B58CFB0(*(v0 + 72), *(v0 + 80));

  __swift_destroy_boxed_opaque_existential_1((v0 + 96));
  __swift_destroy_boxed_opaque_existential_1((v0 + 136));

  __swift_destroy_boxed_opaque_existential_1((v0 + 184));
  __swift_destroy_boxed_opaque_existential_1((v0 + 224));
  __swift_destroy_boxed_opaque_existential_1((v0 + 264));
  __swift_destroy_boxed_opaque_existential_1((v0 + 304));
  __swift_destroy_boxed_opaque_existential_1((v0 + 344));
  __swift_destroy_boxed_opaque_existential_1((v0 + 384));
  __swift_destroy_boxed_opaque_existential_1((v0 + 424));

  sub_20B520158(v0 + OBJC_IVAR____TtC9SeymourUI35TVWorkoutPlanDetailPageDataProvider_workoutPlan, &unk_27C76A970, &qword_20C14FC10);
  sub_20B520158(v0 + OBJC_IVAR____TtC9SeymourUI35TVWorkoutPlanDetailPageDataProvider_workoutPlanSummary, &unk_27C772020, &qword_20C182C00);

  sub_20B520158(v0 + OBJC_IVAR____TtC9SeymourUI35TVWorkoutPlanDetailPageDataProvider_configuration, &qword_27C761800, &qword_20C14FDA0);
  return v0;
}

uint64_t sub_20BE1CC48()
{
  sub_20BE1CAD0();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for TVWorkoutPlanDetailPageDataProvider(uint64_t a1)
{
  result = qword_27C76F588;
  if (!qword_27C76F588)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_20BE1CCF4(uint64_t a1)
{
  sub_20BE1CED8(319, &qword_27C7629F8, MEMORY[0x277D50180]);
  if (v1 <= 0x3F)
  {
    sub_20BE1CED8(319, &qword_27C76F598, MEMORY[0x277D518F8]);
    if (v2 <= 0x3F)
    {
      sub_20BE1CED8(319, &qword_281103BF0, MEMORY[0x277D50560]);
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_20BE1CED8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_20C13D914();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_20BE1CF40()
{
  result = qword_27C76F5A0;
  if (!qword_27C76F5A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C76F5A0);
  }

  return result;
}

uint64_t sub_20BE1CF94@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v49 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7617E0, &unk_20C151A00);
  MEMORY[0x28223BE20](v3 - 8);
  v48 = &v41 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7621D0, &unk_20C14D9B0);
  MEMORY[0x28223BE20](v5 - 8);
  v47 = &v41 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7617F0, &unk_20C151A10);
  MEMORY[0x28223BE20](v7 - 8);
  v46 = &v41 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7669F0, &unk_20C14D9C0);
  MEMORY[0x28223BE20](v9 - 8);
  v45 = &v41 - v10;
  v11 = sub_20C132E94();
  v41 = *(v11 - 8);
  v42 = v11;
  MEMORY[0x28223BE20](v11);
  v13 = &v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_20C135214();
  v43 = *(v14 - 8);
  v44 = v14;
  MEMORY[0x28223BE20](v14);
  v16 = &v41 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76A970, &qword_20C14FC10);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = &v41 - v18;
  v20 = sub_20C133954();
  v21 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v23 = &v41 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = OBJC_IVAR____TtC9SeymourUI35TVWorkoutPlanDetailPageDataProvider_workoutPlan;
  swift_beginAccess();
  sub_20B52F9E8(v2 + v24, v19, &unk_27C76A970, &qword_20C14FC10);
  if ((*(v21 + 48))(v19, 1, v20) == 1)
  {
    sub_20B520158(v19, &unk_27C76A970, &qword_20C14FC10);
    v25 = sub_20C1352F4();
    (*(*(v25 - 8) + 56))(v45, 1, 1, v25);
    v26 = *(v2 + 72);
    v27 = *(v2 + 80);
    v28 = sub_20C132C14();
    (*(*(v28 - 8) + 56))(v46, 1, 1, v28);
    v29 = sub_20C135ED4();
    (*(*(v29 - 8) + 56))(v47, 1, 1, v29);
    v30 = sub_20C136914();
    (*(*(v30 - 8) + 56))(v48, 1, 1, v30);
    sub_20B58C2C8(v26, v27);
    return sub_20C133384();
  }

  else
  {
    (*(v21 + 32))(v23, v19, v20);
    sub_20C132E64();
    sub_20C1338C4();
    (*(v41 + 8))(v13, v42);
    v32 = sub_20C133874();
    v41 = v33;
    v42 = v32;
    v34 = v45;
    sub_20C133864();
    v35 = sub_20C1352F4();
    (*(*(v35 - 8) + 56))(v34, 0, 1, v35);
    v37 = *(v2 + 72);
    v36 = *(v2 + 80);
    v38 = sub_20C132C14();
    (*(*(v38 - 8) + 56))(v46, 1, 1, v38);
    v39 = sub_20C135ED4();
    (*(*(v39 - 8) + 56))(v47, 1, 1, v39);
    v40 = sub_20C136914();
    (*(*(v40 - 8) + 56))(v48, 1, 1, v40);
    sub_20B58C2C8(v37, v36);
    sub_20C133384();
    (*(v43 + 8))(v16, v44);
    return (*(v21 + 8))(v23, v20);
  }
}

uint64_t sub_20BE1D7DC@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC9SeymourUI35TVWorkoutPlanDetailPageDataProvider_configuration;
  swift_beginAccess();
  return sub_20B52F9E8(v1 + v3, a1, &qword_27C761800, &qword_20C14FDA0);
}

uint64_t sub_20BE1D844()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C769A80, &unk_20C155CB0);
  v136 = *(v2 - 8);
  v137 = v2;
  v135 = *(v136 + 64);
  MEMORY[0x28223BE20](v2);
  v134 = &v108 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v132 = &v108 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C761A30, &unk_20C14D9D0);
  v129 = *(v6 - 8);
  v130 = v6;
  v128 = *(v129 + 64);
  MEMORY[0x28223BE20](v6);
  v125 = &v108 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v124 = &v108 - v9;
  v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768680, &unk_20C155C90);
  v121 = *(v122 - 8);
  v120 = *(v121 + 64);
  MEMORY[0x28223BE20](v122);
  v119 = &v108 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v118 = &v108 - v12;
  v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C764170, &qword_20C180610);
  v116 = *(v117 - 8);
  v115 = *(v116 + 64);
  MEMORY[0x28223BE20](v117);
  v114 = &v108 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v113 = &v108 - v15;
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763330, &qword_20C155CD0);
  v111 = *(v112 - 8);
  v110 = *(v111 + 64);
  MEMORY[0x28223BE20](v112);
  v109 = &v108 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v108 = &v108 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C772290, &unk_20C17F5C0);
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  v22 = &v108 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v25 = &v108 - v24;
  v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0, &unk_20C150360);
  v126 = *(v131 - 8);
  v127 = v131 - 8;
  v138 = v126;
  MEMORY[0x28223BE20](v131 - 8);
  v133 = &v108 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v123 = &v108 - v28;
  MEMORY[0x28223BE20](v29);
  v139 = &v108 - v30;
  MEMORY[0x28223BE20](v31);
  v143 = &v108 - v32;
  MEMORY[0x28223BE20](v33);
  v142 = &v108 - v34;
  MEMORY[0x28223BE20](v35);
  v141 = &v108 - v36;
  MEMORY[0x28223BE20](v37);
  v140 = &v108 - v38;
  __swift_project_boxed_opaque_existential_1(v0 + 4, v0[7]);
  sub_20C139BA4();
  v39 = swift_allocObject();
  *(v39 + 16) = sub_20BE44398;
  *(v39 + 24) = v1;
  (*(v20 + 16))(v22, v25, v19);
  v40 = (*(v20 + 80) + 16) & ~*(v20 + 80);
  v41 = swift_allocObject();
  (*(v20 + 32))(v41 + v40, v22, v19);
  v42 = (v41 + ((v21 + v40 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v42 = sub_20BE447B4;
  v42[1] = v39;

  sub_20C137C94();
  (*(v20 + 8))(v25, v19);
  __swift_project_boxed_opaque_existential_1(v1 + 14, v1[17]);
  v43 = v108;
  sub_20C13A204();
  v44 = swift_allocObject();
  *(v44 + 16) = sub_20BE443B8;
  *(v44 + 24) = v1;
  v45 = v111;
  v46 = v109;
  v47 = v112;
  (*(v111 + 16))(v109, v43, v112);
  v48 = v45;
  v49 = (*(v45 + 80) + 16) & ~*(v45 + 80);
  v50 = (v110 + v49 + 7) & 0xFFFFFFFFFFFFFFF8;
  v51 = swift_allocObject();
  (*(v48 + 32))(v51 + v49, v46, v47);
  v52 = (v51 + v50);
  *v52 = sub_20BE447B8;
  v52[1] = v44;

  sub_20C137C94();
  (*(v48 + 8))(v43, v47);
  __swift_project_boxed_opaque_existential_1(v1 + 14, v1[17]);
  v53 = v113;
  sub_20C13A214();
  v54 = swift_allocObject();
  *(v54 + 16) = sub_20BE443DC;
  *(v54 + 24) = v1;
  v55 = v116;
  v56 = v114;
  v57 = v117;
  (*(v116 + 16))(v114, v53, v117);
  v58 = v55;
  v59 = (*(v55 + 80) + 16) & ~*(v55 + 80);
  v60 = (v115 + v59 + 7) & 0xFFFFFFFFFFFFFFF8;
  v61 = swift_allocObject();
  (*(v58 + 32))(v61 + v59, v56, v57);
  v62 = (v61 + v60);
  *v62 = sub_20BE447BC;
  v62[1] = v54;

  sub_20C137C94();
  (*(v58 + 8))(v53, v57);
  __swift_project_boxed_opaque_existential_1(v1 + 46, v1[49]);
  v63 = v118;
  sub_20C139724();
  v64 = swift_allocObject();
  *(v64 + 16) = sub_20BE443FC;
  *(v64 + 24) = v1;
  v65 = v121;
  v66 = v119;
  v67 = v122;
  (*(v121 + 16))(v119, v63, v122);
  v68 = v65;
  v69 = (*(v65 + 80) + 16) & ~*(v65 + 80);
  v70 = (v120 + v69 + 7) & 0xFFFFFFFFFFFFFFF8;
  v71 = swift_allocObject();
  (*(v68 + 32))(v71 + v69, v66, v67);
  v72 = (v71 + v70);
  *v72 = sub_20BE447C0;
  v72[1] = v64;

  sub_20C137C94();
  (*(v68 + 8))(v63, v67);
  __swift_project_boxed_opaque_existential_1(v1 + 24, v1[27]);
  v73 = v124;
  sub_20C1398E4();
  v74 = swift_allocObject();
  *(v74 + 16) = sub_20BE4445C;
  *(v74 + 24) = v1;
  v75 = v129;
  v76 = v130;
  v77 = v125;
  (*(v129 + 16))(v125, v73, v130);
  v78 = v75;
  v79 = (*(v75 + 80) + 16) & ~*(v75 + 80);
  v80 = (v128 + v79 + 7) & 0xFFFFFFFFFFFFFFF8;
  v81 = swift_allocObject();
  (*(v78 + 32))(v81 + v79, v77, v76);
  v82 = (v81 + v80);
  *v82 = sub_20B5DF4C4;
  v82[1] = v74;

  sub_20C137C94();
  (*(v78 + 8))(v73, v76);
  __swift_project_boxed_opaque_existential_1(v1 + 9, v1[12]);
  v83 = v132;
  sub_20C139E44();
  v84 = swift_allocObject();
  *(v84 + 16) = sub_20BE44480;
  *(v84 + 24) = v1;
  v85 = v136;
  v86 = v137;
  v87 = v134;
  (*(v136 + 16))(v134, v83, v137);
  v88 = v85;
  v89 = (*(v85 + 80) + 16) & ~*(v85 + 80);
  v90 = (v135 + v89 + 7) & 0xFFFFFFFFFFFFFFF8;
  v91 = swift_allocObject();
  (*(v88 + 32))(v91 + v89, v87, v86);
  v92 = (v91 + v90);
  *v92 = sub_20BE447C4;
  v92[1] = v84;

  v93 = v123;
  sub_20C137C94();
  (*(v88 + 8))(v83, v86);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762368, &unk_20C14FD80);
  v94 = *(v126 + 72);
  v95 = v138;
  v96 = (*(v138 + 80) + 32) & ~*(v138 + 80);
  v97 = swift_allocObject();
  *(v97 + 16) = xmmword_20C150DB0;
  v98 = v97 + v96;
  v99 = *(v95 + 16);
  v100 = v131;
  v99(v98, v140, v131);
  v99(v98 + v94, v141, v100);
  v99(v98 + 2 * v94, v142, v100);
  v99(v98 + 3 * v94, v143, v100);
  v101 = v139;
  v99(v98 + 4 * v94, v139, v100);
  v99(v98 + 5 * v94, v93, v100);
  v144 = v97;
  sub_20B51C88C(0, &qword_281100530, 0x277D85C78);
  v102 = sub_20C13D374();
  sub_20C13A7C4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76B798, &unk_20C171400);
  sub_20B6D6ABC(&qword_27C771DC0, &qword_27C76B798, &unk_20C171400, MEMORY[0x277D83988]);
  v103 = v133;
  sub_20C137C84();

  v104 = sub_20C137CB4();
  v105 = swift_allocObject();
  *(v105 + 16) = 0;
  *(v105 + 24) = 0;
  v104(sub_20B5DF6DC, v105);

  v106 = *(v138 + 8);
  v106(v103, v100);
  v106(v93, v100);
  v106(v101, v100);
  v106(v143, v100);
  v106(v142, v100);
  v106(v141, v100);
  return (v106)(v140, v100);
}

uint64_t sub_20BE1E83C()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C769A80, &unk_20C155CB0);
  v136 = *(v2 - 8);
  v137 = v2;
  v135 = *(v136 + 64);
  MEMORY[0x28223BE20](v2);
  v134 = &v108 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v132 = &v108 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C761A30, &unk_20C14D9D0);
  v129 = *(v6 - 8);
  v130 = v6;
  v128 = *(v129 + 64);
  MEMORY[0x28223BE20](v6);
  v125 = &v108 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v124 = &v108 - v9;
  v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768680, &unk_20C155C90);
  v121 = *(v122 - 8);
  v120 = *(v121 + 64);
  MEMORY[0x28223BE20](v122);
  v119 = &v108 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v118 = &v108 - v12;
  v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C764170, &qword_20C180610);
  v116 = *(v117 - 8);
  v115 = *(v116 + 64);
  MEMORY[0x28223BE20](v117);
  v114 = &v108 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v113 = &v108 - v15;
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763330, &qword_20C155CD0);
  v111 = *(v112 - 8);
  v110 = *(v111 + 64);
  MEMORY[0x28223BE20](v112);
  v109 = &v108 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v108 = &v108 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C772290, &unk_20C17F5C0);
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  v22 = &v108 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v25 = &v108 - v24;
  v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0, &unk_20C150360);
  v126 = *(v131 - 8);
  v127 = v131 - 8;
  v138 = v126;
  MEMORY[0x28223BE20](v131 - 8);
  v133 = &v108 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v123 = &v108 - v28;
  MEMORY[0x28223BE20](v29);
  v139 = &v108 - v30;
  MEMORY[0x28223BE20](v31);
  v143 = &v108 - v32;
  MEMORY[0x28223BE20](v33);
  v142 = &v108 - v34;
  MEMORY[0x28223BE20](v35);
  v141 = &v108 - v36;
  MEMORY[0x28223BE20](v37);
  v140 = &v108 - v38;
  __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
  sub_20C139BA4();
  v39 = swift_allocObject();
  *(v39 + 16) = sub_20BE41B04;
  *(v39 + 24) = v1;
  (*(v20 + 16))(v22, v25, v19);
  v40 = (*(v20 + 80) + 16) & ~*(v20 + 80);
  v41 = swift_allocObject();
  (*(v20 + 32))(v41 + v40, v22, v19);
  v42 = (v41 + ((v21 + v40 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v42 = sub_20BE447B4;
  v42[1] = v39;

  sub_20C137C94();
  (*(v20 + 8))(v25, v19);
  __swift_project_boxed_opaque_existential_1(v1 + 12, v1[15]);
  v43 = v108;
  sub_20C13A204();
  v44 = swift_allocObject();
  *(v44 + 16) = sub_20BE41B24;
  *(v44 + 24) = v1;
  v45 = v111;
  v46 = v109;
  v47 = v112;
  (*(v111 + 16))(v109, v43, v112);
  v48 = v45;
  v49 = (*(v45 + 80) + 16) & ~*(v45 + 80);
  v50 = (v110 + v49 + 7) & 0xFFFFFFFFFFFFFFF8;
  v51 = swift_allocObject();
  (*(v48 + 32))(v51 + v49, v46, v47);
  v52 = (v51 + v50);
  *v52 = sub_20BE447B8;
  v52[1] = v44;

  sub_20C137C94();
  (*(v48 + 8))(v43, v47);
  __swift_project_boxed_opaque_existential_1(v1 + 12, v1[15]);
  v53 = v113;
  sub_20C13A214();
  v54 = swift_allocObject();
  *(v54 + 16) = sub_20BE41B48;
  *(v54 + 24) = v1;
  v55 = v116;
  v56 = v114;
  v57 = v117;
  (*(v116 + 16))(v114, v53, v117);
  v58 = v55;
  v59 = (*(v55 + 80) + 16) & ~*(v55 + 80);
  v60 = (v115 + v59 + 7) & 0xFFFFFFFFFFFFFFF8;
  v61 = swift_allocObject();
  (*(v58 + 32))(v61 + v59, v56, v57);
  v62 = (v61 + v60);
  *v62 = sub_20BE447BC;
  v62[1] = v54;

  sub_20C137C94();
  (*(v58 + 8))(v53, v57);
  __swift_project_boxed_opaque_existential_1(v1 + 46, v1[49]);
  v63 = v118;
  sub_20C139724();
  v64 = swift_allocObject();
  *(v64 + 16) = sub_20BE41B68;
  *(v64 + 24) = v1;
  v65 = v121;
  v66 = v119;
  v67 = v122;
  (*(v121 + 16))(v119, v63, v122);
  v68 = v65;
  v69 = (*(v65 + 80) + 16) & ~*(v65 + 80);
  v70 = (v120 + v69 + 7) & 0xFFFFFFFFFFFFFFF8;
  v71 = swift_allocObject();
  (*(v68 + 32))(v71 + v69, v66, v67);
  v72 = (v71 + v70);
  *v72 = sub_20BE447C0;
  v72[1] = v64;

  sub_20C137C94();
  (*(v68 + 8))(v63, v67);
  __swift_project_boxed_opaque_existential_1(v1 + 22, v1[25]);
  v73 = v124;
  sub_20C1398E4();
  v74 = swift_allocObject();
  *(v74 + 16) = sub_20BE41B88;
  *(v74 + 24) = v1;
  v75 = v129;
  v76 = v130;
  v77 = v125;
  (*(v129 + 16))(v125, v73, v130);
  v78 = v75;
  v79 = (*(v75 + 80) + 16) & ~*(v75 + 80);
  v80 = (v128 + v79 + 7) & 0xFFFFFFFFFFFFFFF8;
  v81 = swift_allocObject();
  (*(v78 + 32))(v81 + v79, v77, v76);
  v82 = (v81 + v80);
  *v82 = sub_20B5DF4C4;
  v82[1] = v74;

  sub_20C137C94();
  (*(v78 + 8))(v73, v76);
  __swift_project_boxed_opaque_existential_1(v1 + 7, v1[10]);
  v83 = v132;
  sub_20C139E44();
  v84 = swift_allocObject();
  *(v84 + 16) = sub_20BE41BAC;
  *(v84 + 24) = v1;
  v85 = v136;
  v86 = v137;
  v87 = v134;
  (*(v136 + 16))(v134, v83, v137);
  v88 = v85;
  v89 = (*(v85 + 80) + 16) & ~*(v85 + 80);
  v90 = (v135 + v89 + 7) & 0xFFFFFFFFFFFFFFF8;
  v91 = swift_allocObject();
  (*(v88 + 32))(v91 + v89, v87, v86);
  v92 = (v91 + v90);
  *v92 = sub_20BE447C4;
  v92[1] = v84;

  v93 = v123;
  sub_20C137C94();
  (*(v88 + 8))(v83, v86);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762368, &unk_20C14FD80);
  v94 = *(v126 + 72);
  v95 = v138;
  v96 = (*(v138 + 80) + 32) & ~*(v138 + 80);
  v97 = swift_allocObject();
  *(v97 + 16) = xmmword_20C150DB0;
  v98 = v97 + v96;
  v99 = *(v95 + 16);
  v100 = v131;
  v99(v98, v140, v131);
  v99(v98 + v94, v141, v100);
  v99(v98 + 2 * v94, v142, v100);
  v99(v98 + 3 * v94, v143, v100);
  v101 = v139;
  v99(v98 + 4 * v94, v139, v100);
  v99(v98 + 5 * v94, v93, v100);
  v144 = v97;
  sub_20B51C88C(0, &qword_281100530, 0x277D85C78);
  v102 = sub_20C13D374();
  sub_20C13A7C4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76B798, &unk_20C171400);
  sub_20B6D6ABC(&qword_27C771DC0, &qword_27C76B798, &unk_20C171400, MEMORY[0x277D83988]);
  v103 = v133;
  sub_20C137C84();

  v104 = sub_20C137CB4();
  v105 = swift_allocObject();
  *(v105 + 16) = 0;
  *(v105 + 24) = 0;
  v104(sub_20B5DF6DC, v105);

  v106 = *(v138 + 8);
  v106(v103, v100);
  v106(v93, v100);
  v106(v101, v100);
  v106(v143, v100);
  v106(v142, v100);
  v106(v141, v100);
  return (v106)(v140, v100);
}

uint64_t sub_20BE1F834()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C769A80, &unk_20C155CB0);
  v136 = *(v2 - 8);
  v137 = v2;
  v135 = *(v136 + 64);
  MEMORY[0x28223BE20](v2);
  v134 = &v108 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v132 = &v108 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C761A30, &unk_20C14D9D0);
  v129 = *(v6 - 8);
  v130 = v6;
  v128 = *(v129 + 64);
  MEMORY[0x28223BE20](v6);
  v125 = &v108 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v124 = &v108 - v9;
  v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768680, &unk_20C155C90);
  v121 = *(v122 - 8);
  v120 = *(v121 + 64);
  MEMORY[0x28223BE20](v122);
  v119 = &v108 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v118 = &v108 - v12;
  v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C764170, &qword_20C180610);
  v116 = *(v117 - 8);
  v115 = *(v116 + 64);
  MEMORY[0x28223BE20](v117);
  v114 = &v108 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v113 = &v108 - v15;
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763330, &qword_20C155CD0);
  v111 = *(v112 - 8);
  v110 = *(v111 + 64);
  MEMORY[0x28223BE20](v112);
  v109 = &v108 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v108 = &v108 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C772290, &unk_20C17F5C0);
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  v22 = &v108 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v25 = &v108 - v24;
  v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0, &unk_20C150360);
  v126 = *(v131 - 8);
  v127 = v131 - 8;
  v138 = v126;
  MEMORY[0x28223BE20](v131 - 8);
  v133 = &v108 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v123 = &v108 - v28;
  MEMORY[0x28223BE20](v29);
  v139 = &v108 - v30;
  MEMORY[0x28223BE20](v31);
  v143 = &v108 - v32;
  MEMORY[0x28223BE20](v33);
  v142 = &v108 - v34;
  MEMORY[0x28223BE20](v35);
  v141 = &v108 - v36;
  MEMORY[0x28223BE20](v37);
  v140 = &v108 - v38;
  __swift_project_boxed_opaque_existential_1(v0 + 6, v0[9]);
  sub_20C139BA4();
  v39 = swift_allocObject();
  *(v39 + 16) = sub_20BE447FC;
  *(v39 + 24) = v1;
  (*(v20 + 16))(v22, v25, v19);
  v40 = (*(v20 + 80) + 16) & ~*(v20 + 80);
  v41 = swift_allocObject();
  (*(v20 + 32))(v41 + v40, v22, v19);
  v42 = (v41 + ((v21 + v40 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v42 = sub_20BE447B4;
  v42[1] = v39;

  sub_20C137C94();
  (*(v20 + 8))(v25, v19);
  __swift_project_boxed_opaque_existential_1(v1 + 16, v1[19]);
  v43 = v108;
  sub_20C13A204();
  v44 = swift_allocObject();
  *(v44 + 16) = sub_20BE44814;
  *(v44 + 24) = v1;
  v45 = v111;
  v46 = v109;
  v47 = v112;
  (*(v111 + 16))(v109, v43, v112);
  v48 = v45;
  v49 = (*(v45 + 80) + 16) & ~*(v45 + 80);
  v50 = (v110 + v49 + 7) & 0xFFFFFFFFFFFFFFF8;
  v51 = swift_allocObject();
  (*(v48 + 32))(v51 + v49, v46, v47);
  v52 = (v51 + v50);
  *v52 = sub_20BE447B8;
  v52[1] = v44;

  sub_20C137C94();
  (*(v48 + 8))(v43, v47);
  __swift_project_boxed_opaque_existential_1(v1 + 16, v1[19]);
  v53 = v113;
  sub_20C13A214();
  v54 = swift_allocObject();
  *(v54 + 16) = sub_20BE4482C;
  *(v54 + 24) = v1;
  v55 = v116;
  v56 = v114;
  v57 = v117;
  (*(v116 + 16))(v114, v53, v117);
  v58 = v55;
  v59 = (*(v55 + 80) + 16) & ~*(v55 + 80);
  v60 = (v115 + v59 + 7) & 0xFFFFFFFFFFFFFFF8;
  v61 = swift_allocObject();
  (*(v58 + 32))(v61 + v59, v56, v57);
  v62 = (v61 + v60);
  *v62 = sub_20BE447BC;
  v62[1] = v54;

  sub_20C137C94();
  (*(v58 + 8))(v53, v57);
  __swift_project_boxed_opaque_existential_1(v1 + 45, v1[48]);
  v63 = v118;
  sub_20C139724();
  v64 = swift_allocObject();
  *(v64 + 16) = sub_20BE44844;
  *(v64 + 24) = v1;
  v65 = v121;
  v66 = v119;
  v67 = v122;
  (*(v121 + 16))(v119, v63, v122);
  v68 = v65;
  v69 = (*(v65 + 80) + 16) & ~*(v65 + 80);
  v70 = (v120 + v69 + 7) & 0xFFFFFFFFFFFFFFF8;
  v71 = swift_allocObject();
  (*(v68 + 32))(v71 + v69, v66, v67);
  v72 = (v71 + v70);
  *v72 = sub_20BE447C0;
  v72[1] = v64;

  sub_20C137C94();
  (*(v68 + 8))(v63, v67);
  __swift_project_boxed_opaque_existential_1(v1 + 26, v1[29]);
  v73 = v124;
  sub_20C1398E4();
  v74 = swift_allocObject();
  *(v74 + 16) = sub_20BE42A94;
  *(v74 + 24) = v1;
  v75 = v129;
  v76 = v130;
  v77 = v125;
  (*(v129 + 16))(v125, v73, v130);
  v78 = v75;
  v79 = (*(v75 + 80) + 16) & ~*(v75 + 80);
  v80 = (v128 + v79 + 7) & 0xFFFFFFFFFFFFFFF8;
  v81 = swift_allocObject();
  (*(v78 + 32))(v81 + v79, v77, v76);
  v82 = (v81 + v80);
  *v82 = sub_20B5DF4C4;
  v82[1] = v74;

  sub_20C137C94();
  (*(v78 + 8))(v73, v76);
  __swift_project_boxed_opaque_existential_1(v1 + 11, v1[14]);
  v83 = v132;
  sub_20C139E44();
  v84 = swift_allocObject();
  *(v84 + 16) = sub_20BE4485C;
  *(v84 + 24) = v1;
  v85 = v136;
  v86 = v137;
  v87 = v134;
  (*(v136 + 16))(v134, v83, v137);
  v88 = v85;
  v89 = (*(v85 + 80) + 16) & ~*(v85 + 80);
  v90 = (v135 + v89 + 7) & 0xFFFFFFFFFFFFFFF8;
  v91 = swift_allocObject();
  (*(v88 + 32))(v91 + v89, v87, v86);
  v92 = (v91 + v90);
  *v92 = sub_20BE447C4;
  v92[1] = v84;

  v93 = v123;
  sub_20C137C94();
  (*(v88 + 8))(v83, v86);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762368, &unk_20C14FD80);
  v94 = *(v126 + 72);
  v95 = v138;
  v96 = (*(v138 + 80) + 32) & ~*(v138 + 80);
  v97 = swift_allocObject();
  *(v97 + 16) = xmmword_20C150DB0;
  v98 = v97 + v96;
  v99 = *(v95 + 16);
  v100 = v131;
  v99(v98, v140, v131);
  v99(v98 + v94, v141, v100);
  v99(v98 + 2 * v94, v142, v100);
  v99(v98 + 3 * v94, v143, v100);
  v101 = v139;
  v99(v98 + 4 * v94, v139, v100);
  v99(v98 + 5 * v94, v93, v100);
  v144 = v97;
  sub_20B51C88C(0, &qword_281100530, 0x277D85C78);
  v102 = sub_20C13D374();
  sub_20C13A7C4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76B798, &unk_20C171400);
  sub_20B6D6ABC(&qword_27C771DC0, &qword_27C76B798, &unk_20C171400, MEMORY[0x277D83988]);
  v103 = v133;
  sub_20C137C84();

  v104 = sub_20C137CB4();
  v105 = swift_allocObject();
  *(v105 + 16) = 0;
  *(v105 + 24) = 0;
  v104(sub_20B5DF6DC, v105);

  v106 = *(v138 + 8);
  v106(v103, v100);
  v106(v93, v100);
  v106(v101, v100);
  v106(v143, v100);
  v106(v142, v100);
  v106(v141, v100);
  return (v106)(v140, v100);
}

uint64_t sub_20BE2082C()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C769A80, &unk_20C155CB0);
  v136 = *(v2 - 8);
  v137 = v2;
  v135 = *(v136 + 64);
  MEMORY[0x28223BE20](v2);
  v134 = &v108 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v132 = &v108 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C761A30, &unk_20C14D9D0);
  v129 = *(v6 - 8);
  v130 = v6;
  v128 = *(v129 + 64);
  MEMORY[0x28223BE20](v6);
  v125 = &v108 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v124 = &v108 - v9;
  v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768680, &unk_20C155C90);
  v121 = *(v122 - 8);
  v120 = *(v121 + 64);
  MEMORY[0x28223BE20](v122);
  v119 = &v108 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v118 = &v108 - v12;
  v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C764170, &qword_20C180610);
  v116 = *(v117 - 8);
  v115 = *(v116 + 64);
  MEMORY[0x28223BE20](v117);
  v114 = &v108 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v113 = &v108 - v15;
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763330, &qword_20C155CD0);
  v111 = *(v112 - 8);
  v110 = *(v111 + 64);
  MEMORY[0x28223BE20](v112);
  v109 = &v108 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v108 = &v108 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C772290, &unk_20C17F5C0);
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  v22 = &v108 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v25 = &v108 - v24;
  v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0, &unk_20C150360);
  v126 = *(v131 - 8);
  v127 = v131 - 8;
  v138 = v126;
  MEMORY[0x28223BE20](v131 - 8);
  v133 = &v108 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v123 = &v108 - v28;
  MEMORY[0x28223BE20](v29);
  v139 = &v108 - v30;
  MEMORY[0x28223BE20](v31);
  v143 = &v108 - v32;
  MEMORY[0x28223BE20](v33);
  v142 = &v108 - v34;
  MEMORY[0x28223BE20](v35);
  v141 = &v108 - v36;
  MEMORY[0x28223BE20](v37);
  v140 = &v108 - v38;
  __swift_project_boxed_opaque_existential_1(v0 + 6, v0[9]);
  sub_20C139BA4();
  v39 = swift_allocObject();
  *(v39 + 16) = sub_20BE43BA4;
  *(v39 + 24) = v1;
  (*(v20 + 16))(v22, v25, v19);
  v40 = (*(v20 + 80) + 16) & ~*(v20 + 80);
  v41 = swift_allocObject();
  (*(v20 + 32))(v41 + v40, v22, v19);
  v42 = (v41 + ((v21 + v40 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v42 = sub_20BE447B4;
  v42[1] = v39;

  sub_20C137C94();
  (*(v20 + 8))(v25, v19);
  __swift_project_boxed_opaque_existential_1(v1 + 16, v1[19]);
  v43 = v108;
  sub_20C13A204();
  v44 = swift_allocObject();
  *(v44 + 16) = sub_20BE43BC4;
  *(v44 + 24) = v1;
  v45 = v111;
  v46 = v109;
  v47 = v112;
  (*(v111 + 16))(v109, v43, v112);
  v48 = v45;
  v49 = (*(v45 + 80) + 16) & ~*(v45 + 80);
  v50 = (v110 + v49 + 7) & 0xFFFFFFFFFFFFFFF8;
  v51 = swift_allocObject();
  (*(v48 + 32))(v51 + v49, v46, v47);
  v52 = (v51 + v50);
  *v52 = sub_20BE447B8;
  v52[1] = v44;

  sub_20C137C94();
  (*(v48 + 8))(v43, v47);
  __swift_project_boxed_opaque_existential_1(v1 + 16, v1[19]);
  v53 = v113;
  sub_20C13A214();
  v54 = swift_allocObject();
  *(v54 + 16) = sub_20BE43BE8;
  *(v54 + 24) = v1;
  v55 = v116;
  v56 = v114;
  v57 = v117;
  (*(v116 + 16))(v114, v53, v117);
  v58 = v55;
  v59 = (*(v55 + 80) + 16) & ~*(v55 + 80);
  v60 = (v115 + v59 + 7) & 0xFFFFFFFFFFFFFFF8;
  v61 = swift_allocObject();
  (*(v58 + 32))(v61 + v59, v56, v57);
  v62 = (v61 + v60);
  *v62 = sub_20BE447BC;
  v62[1] = v54;

  sub_20C137C94();
  (*(v58 + 8))(v53, v57);
  __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC9SeymourUI26PlaylistDetailDataProvider_upNextQueueClient), *(v1 + OBJC_IVAR____TtC9SeymourUI26PlaylistDetailDataProvider_upNextQueueClient + 24));
  v63 = v118;
  sub_20C139724();
  v64 = swift_allocObject();
  *(v64 + 16) = sub_20BE43C08;
  *(v64 + 24) = v1;
  v65 = v121;
  v66 = v119;
  v67 = v122;
  (*(v121 + 16))(v119, v63, v122);
  v68 = v65;
  v69 = (*(v65 + 80) + 16) & ~*(v65 + 80);
  v70 = (v120 + v69 + 7) & 0xFFFFFFFFFFFFFFF8;
  v71 = swift_allocObject();
  (*(v68 + 32))(v71 + v69, v66, v67);
  v72 = (v71 + v70);
  *v72 = sub_20BE447C0;
  v72[1] = v64;

  sub_20C137C94();
  (*(v68 + 8))(v63, v67);
  __swift_project_boxed_opaque_existential_1(v1 + 26, v1[29]);
  v73 = v124;
  sub_20C1398E4();
  v74 = swift_allocObject();
  *(v74 + 16) = sub_20BE43C28;
  *(v74 + 24) = v1;
  v75 = v129;
  v76 = v130;
  v77 = v125;
  (*(v129 + 16))(v125, v73, v130);
  v78 = v75;
  v79 = (*(v75 + 80) + 16) & ~*(v75 + 80);
  v80 = (v128 + v79 + 7) & 0xFFFFFFFFFFFFFFF8;
  v81 = swift_allocObject();
  (*(v78 + 32))(v81 + v79, v77, v76);
  v82 = (v81 + v80);
  *v82 = sub_20B5DF4C4;
  v82[1] = v74;

  sub_20C137C94();
  (*(v78 + 8))(v73, v76);
  __swift_project_boxed_opaque_existential_1(v1 + 11, v1[14]);
  v83 = v132;
  sub_20C139E44();
  v84 = swift_allocObject();
  *(v84 + 16) = sub_20BE43C4C;
  *(v84 + 24) = v1;
  v85 = v136;
  v86 = v137;
  v87 = v134;
  (*(v136 + 16))(v134, v83, v137);
  v88 = v85;
  v89 = (*(v85 + 80) + 16) & ~*(v85 + 80);
  v90 = (v135 + v89 + 7) & 0xFFFFFFFFFFFFFFF8;
  v91 = swift_allocObject();
  (*(v88 + 32))(v91 + v89, v87, v86);
  v92 = (v91 + v90);
  *v92 = sub_20BE447C4;
  v92[1] = v84;

  v93 = v123;
  sub_20C137C94();
  (*(v88 + 8))(v83, v86);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762368, &unk_20C14FD80);
  v94 = *(v126 + 72);
  v95 = v138;
  v96 = (*(v138 + 80) + 32) & ~*(v138 + 80);
  v97 = swift_allocObject();
  *(v97 + 16) = xmmword_20C150DB0;
  v98 = v97 + v96;
  v99 = *(v95 + 16);
  v100 = v131;
  v99(v98, v140, v131);
  v99(v98 + v94, v141, v100);
  v99(v98 + 2 * v94, v142, v100);
  v99(v98 + 3 * v94, v143, v100);
  v101 = v139;
  v99(v98 + 4 * v94, v139, v100);
  v99(v98 + 5 * v94, v93, v100);
  v144 = v97;
  sub_20B51C88C(0, &qword_281100530, 0x277D85C78);
  v102 = sub_20C13D374();
  sub_20C13A7C4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76B798, &unk_20C171400);
  sub_20B6D6ABC(&qword_27C771DC0, &qword_27C76B798, &unk_20C171400, MEMORY[0x277D83988]);
  v103 = v133;
  sub_20C137C84();

  v104 = sub_20C137CB4();
  v105 = swift_allocObject();
  *(v105 + 16) = 0;
  *(v105 + 24) = 0;
  v104(sub_20B5DF6DC, v105);

  v106 = *(v138 + 8);
  v106(v103, v100);
  v106(v93, v100);
  v106(v101, v100);
  v106(v143, v100);
  v106(v142, v100);
  v106(v141, v100);
  return (v106)(v140, v100);
}

uint64_t sub_20BE21830()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C769A80, &unk_20C155CB0);
  v136 = *(v2 - 8);
  v137 = v2;
  v135 = *(v136 + 64);
  MEMORY[0x28223BE20](v2);
  v134 = &v108 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v132 = &v108 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C761A30, &unk_20C14D9D0);
  v129 = *(v6 - 8);
  v130 = v6;
  v128 = *(v129 + 64);
  MEMORY[0x28223BE20](v6);
  v125 = &v108 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v124 = &v108 - v9;
  v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768680, &unk_20C155C90);
  v121 = *(v122 - 8);
  v120 = *(v121 + 64);
  MEMORY[0x28223BE20](v122);
  v119 = &v108 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v118 = &v108 - v12;
  v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C764170, &qword_20C180610);
  v116 = *(v117 - 8);
  v115 = *(v116 + 64);
  MEMORY[0x28223BE20](v117);
  v114 = &v108 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v113 = &v108 - v15;
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763330, &qword_20C155CD0);
  v111 = *(v112 - 8);
  v110 = *(v111 + 64);
  MEMORY[0x28223BE20](v112);
  v109 = &v108 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v108 = &v108 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C772290, &unk_20C17F5C0);
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  v22 = &v108 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v25 = &v108 - v24;
  v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0, &unk_20C150360);
  v126 = *(v131 - 8);
  v127 = v131 - 8;
  v138 = v126;
  MEMORY[0x28223BE20](v131 - 8);
  v133 = &v108 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v123 = &v108 - v28;
  MEMORY[0x28223BE20](v29);
  v139 = &v108 - v30;
  MEMORY[0x28223BE20](v31);
  v143 = &v108 - v32;
  MEMORY[0x28223BE20](v33);
  v142 = &v108 - v34;
  MEMORY[0x28223BE20](v35);
  v141 = &v108 - v36;
  MEMORY[0x28223BE20](v37);
  v140 = &v108 - v38;
  __swift_project_boxed_opaque_existential_1(v0 + 6, v0[9]);
  sub_20C139BA4();
  v39 = swift_allocObject();
  *(v39 + 16) = sub_20BE42C30;
  *(v39 + 24) = v1;
  (*(v20 + 16))(v22, v25, v19);
  v40 = (*(v20 + 80) + 16) & ~*(v20 + 80);
  v41 = swift_allocObject();
  (*(v20 + 32))(v41 + v40, v22, v19);
  v42 = (v41 + ((v21 + v40 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v42 = sub_20BE447B4;
  v42[1] = v39;

  sub_20C137C94();
  (*(v20 + 8))(v25, v19);
  __swift_project_boxed_opaque_existential_1(v1 + 16, v1[19]);
  v43 = v108;
  sub_20C13A204();
  v44 = swift_allocObject();
  *(v44 + 16) = sub_20BE42C6C;
  *(v44 + 24) = v1;
  v45 = v111;
  v46 = v109;
  v47 = v112;
  (*(v111 + 16))(v109, v43, v112);
  v48 = v45;
  v49 = (*(v45 + 80) + 16) & ~*(v45 + 80);
  v50 = (v110 + v49 + 7) & 0xFFFFFFFFFFFFFFF8;
  v51 = swift_allocObject();
  (*(v48 + 32))(v51 + v49, v46, v47);
  v52 = (v51 + v50);
  *v52 = sub_20BE447B8;
  v52[1] = v44;

  sub_20C137C94();
  (*(v48 + 8))(v43, v47);
  __swift_project_boxed_opaque_existential_1(v1 + 16, v1[19]);
  v53 = v113;
  sub_20C13A214();
  v54 = swift_allocObject();
  *(v54 + 16) = sub_20BE42C88;
  *(v54 + 24) = v1;
  v55 = v116;
  v56 = v114;
  v57 = v117;
  (*(v116 + 16))(v114, v53, v117);
  v58 = v55;
  v59 = (*(v55 + 80) + 16) & ~*(v55 + 80);
  v60 = (v115 + v59 + 7) & 0xFFFFFFFFFFFFFFF8;
  v61 = swift_allocObject();
  (*(v58 + 32))(v61 + v59, v56, v57);
  v62 = (v61 + v60);
  *v62 = sub_20BE447BC;
  v62[1] = v54;

  sub_20C137C94();
  (*(v58 + 8))(v53, v57);
  __swift_project_boxed_opaque_existential_1(v1 + 51, v1[54]);
  v63 = v118;
  sub_20C139724();
  v64 = swift_allocObject();
  *(v64 + 16) = sub_20BE42CC4;
  *(v64 + 24) = v1;
  v65 = v121;
  v66 = v119;
  v67 = v122;
  (*(v121 + 16))(v119, v63, v122);
  v68 = v65;
  v69 = (*(v65 + 80) + 16) & ~*(v65 + 80);
  v70 = (v120 + v69 + 7) & 0xFFFFFFFFFFFFFFF8;
  v71 = swift_allocObject();
  (*(v68 + 32))(v71 + v69, v66, v67);
  v72 = (v71 + v70);
  *v72 = sub_20BE447C0;
  v72[1] = v64;

  sub_20C137C94();
  (*(v68 + 8))(v63, v67);
  __swift_project_boxed_opaque_existential_1(v1 + 26, v1[29]);
  v73 = v124;
  sub_20C1398E4();
  v74 = swift_allocObject();
  *(v74 + 16) = sub_20BE42D00;
  *(v74 + 24) = v1;
  v75 = v129;
  v76 = v130;
  v77 = v125;
  (*(v129 + 16))(v125, v73, v130);
  v78 = v75;
  v79 = (*(v75 + 80) + 16) & ~*(v75 + 80);
  v80 = (v128 + v79 + 7) & 0xFFFFFFFFFFFFFFF8;
  v81 = swift_allocObject();
  (*(v78 + 32))(v81 + v79, v77, v76);
  v82 = (v81 + v80);
  *v82 = sub_20B5DF4C4;
  v82[1] = v74;

  sub_20C137C94();
  (*(v78 + 8))(v73, v76);
  __swift_project_boxed_opaque_existential_1(v1 + 11, v1[14]);
  v83 = v132;
  sub_20C139E44();
  v84 = swift_allocObject();
  *(v84 + 16) = sub_20BE42D24;
  *(v84 + 24) = v1;
  v85 = v136;
  v86 = v137;
  v87 = v134;
  (*(v136 + 16))(v134, v83, v137);
  v88 = v85;
  v89 = (*(v85 + 80) + 16) & ~*(v85 + 80);
  v90 = (v135 + v89 + 7) & 0xFFFFFFFFFFFFFFF8;
  v91 = swift_allocObject();
  (*(v88 + 32))(v91 + v89, v87, v86);
  v92 = (v91 + v90);
  *v92 = sub_20BE447C4;
  v92[1] = v84;

  v93 = v123;
  sub_20C137C94();
  (*(v88 + 8))(v83, v86);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762368, &unk_20C14FD80);
  v94 = *(v126 + 72);
  v95 = v138;
  v96 = (*(v138 + 80) + 32) & ~*(v138 + 80);
  v97 = swift_allocObject();
  *(v97 + 16) = xmmword_20C150DB0;
  v98 = v97 + v96;
  v99 = *(v95 + 16);
  v100 = v131;
  v99(v98, v140, v131);
  v99(v98 + v94, v141, v100);
  v99(v98 + 2 * v94, v142, v100);
  v99(v98 + 3 * v94, v143, v100);
  v101 = v139;
  v99(v98 + 4 * v94, v139, v100);
  v99(v98 + 5 * v94, v93, v100);
  v144 = v97;
  sub_20B51C88C(0, &qword_281100530, 0x277D85C78);
  v102 = sub_20C13D374();
  sub_20C13A7C4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76B798, &unk_20C171400);
  sub_20B6D6ABC(&qword_27C771DC0, &qword_27C76B798, &unk_20C171400, MEMORY[0x277D83988]);
  v103 = v133;
  sub_20C137C84();

  v104 = sub_20C137CB4();
  v105 = swift_allocObject();
  *(v105 + 16) = 0;
  *(v105 + 24) = 0;
  v104(sub_20B5DF6DC, v105);

  v106 = *(v138 + 8);
  v106(v103, v100);
  v106(v93, v100);
  v106(v101, v100);
  v106(v143, v100);
  v106(v142, v100);
  v106(v141, v100);
  return (v106)(v140, v100);
}

uint64_t sub_20BE22828()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C769A80, &unk_20C155CB0);
  v136 = *(v2 - 8);
  v137 = v2;
  v135 = *(v136 + 64);
  MEMORY[0x28223BE20](v2);
  v134 = &v108 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v132 = &v108 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C761A30, &unk_20C14D9D0);
  v129 = *(v6 - 8);
  v130 = v6;
  v128 = *(v129 + 64);
  MEMORY[0x28223BE20](v6);
  v125 = &v108 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v124 = &v108 - v9;
  v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768680, &unk_20C155C90);
  v121 = *(v122 - 8);
  v120 = *(v121 + 64);
  MEMORY[0x28223BE20](v122);
  v119 = &v108 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v118 = &v108 - v12;
  v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C764170, &qword_20C180610);
  v116 = *(v117 - 8);
  v115 = *(v116 + 64);
  MEMORY[0x28223BE20](v117);
  v114 = &v108 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v113 = &v108 - v15;
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763330, &qword_20C155CD0);
  v111 = *(v112 - 8);
  v110 = *(v111 + 64);
  MEMORY[0x28223BE20](v112);
  v109 = &v108 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v108 = &v108 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C772290, &unk_20C17F5C0);
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  v22 = &v108 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v25 = &v108 - v24;
  v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0, &unk_20C150360);
  v126 = *(v131 - 8);
  v127 = v131 - 8;
  v138 = v126;
  MEMORY[0x28223BE20](v131 - 8);
  v133 = &v108 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v123 = &v108 - v28;
  MEMORY[0x28223BE20](v29);
  v139 = &v108 - v30;
  MEMORY[0x28223BE20](v31);
  v143 = &v108 - v32;
  MEMORY[0x28223BE20](v33);
  v142 = &v108 - v34;
  MEMORY[0x28223BE20](v35);
  v141 = &v108 - v36;
  MEMORY[0x28223BE20](v37);
  v140 = &v108 - v38;
  __swift_project_boxed_opaque_existential_1(v0 + 6, v0[9]);
  sub_20C139BA4();
  v39 = swift_allocObject();
  *(v39 + 16) = sub_20BE4172C;
  *(v39 + 24) = v1;
  (*(v20 + 16))(v22, v25, v19);
  v40 = (*(v20 + 80) + 16) & ~*(v20 + 80);
  v41 = swift_allocObject();
  (*(v20 + 32))(v41 + v40, v22, v19);
  v42 = (v41 + ((v21 + v40 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v42 = sub_20BE447B4;
  v42[1] = v39;

  sub_20C137C94();
  (*(v20 + 8))(v25, v19);
  __swift_project_boxed_opaque_existential_1(v1 + 16, v1[19]);
  v43 = v108;
  sub_20C13A204();
  v44 = swift_allocObject();
  *(v44 + 16) = sub_20BE41744;
  *(v44 + 24) = v1;
  v45 = v111;
  v46 = v109;
  v47 = v112;
  (*(v111 + 16))(v109, v43, v112);
  v48 = v45;
  v49 = (*(v45 + 80) + 16) & ~*(v45 + 80);
  v50 = (v110 + v49 + 7) & 0xFFFFFFFFFFFFFFF8;
  v51 = swift_allocObject();
  (*(v48 + 32))(v51 + v49, v46, v47);
  v52 = (v51 + v50);
  *v52 = sub_20BE447B8;
  v52[1] = v44;

  sub_20C137C94();
  (*(v48 + 8))(v43, v47);
  __swift_project_boxed_opaque_existential_1(v1 + 16, v1[19]);
  v53 = v113;
  sub_20C13A214();
  v54 = swift_allocObject();
  *(v54 + 16) = sub_20BE41760;
  *(v54 + 24) = v1;
  v55 = v116;
  v56 = v114;
  v57 = v117;
  (*(v116 + 16))(v114, v53, v117);
  v58 = v55;
  v59 = (*(v55 + 80) + 16) & ~*(v55 + 80);
  v60 = (v115 + v59 + 7) & 0xFFFFFFFFFFFFFFF8;
  v61 = swift_allocObject();
  (*(v58 + 32))(v61 + v59, v56, v57);
  v62 = (v61 + v60);
  *v62 = sub_20BE447BC;
  v62[1] = v54;

  sub_20C137C94();
  (*(v58 + 8))(v53, v57);
  __swift_project_boxed_opaque_existential_1(v1 + 45, v1[48]);
  v63 = v118;
  sub_20C139724();
  v64 = swift_allocObject();
  *(v64 + 16) = sub_20BE41778;
  *(v64 + 24) = v1;
  v65 = v121;
  v66 = v119;
  v67 = v122;
  (*(v121 + 16))(v119, v63, v122);
  v68 = v65;
  v69 = (*(v65 + 80) + 16) & ~*(v65 + 80);
  v70 = (v120 + v69 + 7) & 0xFFFFFFFFFFFFFFF8;
  v71 = swift_allocObject();
  (*(v68 + 32))(v71 + v69, v66, v67);
  v72 = (v71 + v70);
  *v72 = sub_20BE447C0;
  v72[1] = v64;

  sub_20C137C94();
  (*(v68 + 8))(v63, v67);
  __swift_project_boxed_opaque_existential_1(v1 + 26, v1[29]);
  v73 = v124;
  sub_20C1398E4();
  v74 = swift_allocObject();
  *(v74 + 16) = sub_20BE41790;
  *(v74 + 24) = v1;
  v75 = v129;
  v76 = v130;
  v77 = v125;
  (*(v129 + 16))(v125, v73, v130);
  v78 = v75;
  v79 = (*(v75 + 80) + 16) & ~*(v75 + 80);
  v80 = (v128 + v79 + 7) & 0xFFFFFFFFFFFFFFF8;
  v81 = swift_allocObject();
  (*(v78 + 32))(v81 + v79, v77, v76);
  v82 = (v81 + v80);
  *v82 = sub_20B5DF4C4;
  v82[1] = v74;

  sub_20C137C94();
  (*(v78 + 8))(v73, v76);
  __swift_project_boxed_opaque_existential_1(v1 + 11, v1[14]);
  v83 = v132;
  sub_20C139E44();
  v84 = swift_allocObject();
  *(v84 + 16) = sub_20BE417B4;
  *(v84 + 24) = v1;
  v85 = v136;
  v86 = v137;
  v87 = v134;
  (*(v136 + 16))(v134, v83, v137);
  v88 = v85;
  v89 = (*(v85 + 80) + 16) & ~*(v85 + 80);
  v90 = (v135 + v89 + 7) & 0xFFFFFFFFFFFFFFF8;
  v91 = swift_allocObject();
  (*(v88 + 32))(v91 + v89, v87, v86);
  v92 = (v91 + v90);
  *v92 = sub_20BE447C4;
  v92[1] = v84;

  v93 = v123;
  sub_20C137C94();
  (*(v88 + 8))(v83, v86);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762368, &unk_20C14FD80);
  v94 = *(v126 + 72);
  v95 = v138;
  v96 = (*(v138 + 80) + 32) & ~*(v138 + 80);
  v97 = swift_allocObject();
  *(v97 + 16) = xmmword_20C150DB0;
  v98 = v97 + v96;
  v99 = *(v95 + 16);
  v100 = v131;
  v99(v98, v140, v131);
  v99(v98 + v94, v141, v100);
  v99(v98 + 2 * v94, v142, v100);
  v99(v98 + 3 * v94, v143, v100);
  v101 = v139;
  v99(v98 + 4 * v94, v139, v100);
  v99(v98 + 5 * v94, v93, v100);
  v144 = v97;
  sub_20B51C88C(0, &qword_281100530, 0x277D85C78);
  v102 = sub_20C13D374();
  sub_20C13A7C4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76B798, &unk_20C171400);
  sub_20B6D6ABC(&qword_27C771DC0, &qword_27C76B798, &unk_20C171400, MEMORY[0x277D83988]);
  v103 = v133;
  sub_20C137C84();

  v104 = sub_20C137CB4();
  v105 = swift_allocObject();
  *(v105 + 16) = 0;
  *(v105 + 24) = 0;
  v104(sub_20B5DF6DC, v105);

  v106 = *(v138 + 8);
  v106(v103, v100);
  v106(v93, v100);
  v106(v101, v100);
  v106(v143, v100);
  v106(v142, v100);
  v106(v141, v100);
  return (v106)(v140, v100);
}