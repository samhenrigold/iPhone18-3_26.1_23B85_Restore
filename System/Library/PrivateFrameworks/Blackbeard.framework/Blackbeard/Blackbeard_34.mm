uint64_t sub_1E626C930()
{
  v1 = *(type metadata accessor for AppComposer(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(sub_1E65E55E8() - 8);
  v5 = (v2 + v3 + *(v4 + 80)) & ~*(v4 + 80);
  v6 = *(v4 + 64);
  v7 = *(sub_1E65D7EB8() - 8);
  v8 = (v5 + v6 + *(v7 + 80)) & ~*(v7 + 80);
  v9 = v0 + ((*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8);

  return sub_1E625DDFC(v0 + v2, v0 + v5, v0 + v8, v9);
}

void sub_1E626CA84(uint64_t a1)
{
  v1 = [*(a1 + qword_1EE2D9180) navigationItem];
  [v1 _setBottomPaletteNeedsUpdate];
}

uint64_t sub_1E626CB94()
{
  v1 = *(type metadata accessor for AppComposer(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = v2 + *(v1 + 64);
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077760, &unk_1E66011D0) - 8);
  v5 = (v3 + *(v4 + 80)) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077750, &unk_1E66011C0) - 8);
  v8 = (v6 + *(v7 + 80) + 8) & ~*(v7 + 80);
  v9 = (*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072B60, &unk_1E65FA490) - 8);
  v11 = (v9 + *(v10 + 80) + 9) & ~*(v10 + 80);
  v12 = v11 + *(v10 + 64);
  return sub_1E6246074((v0 + v2), v0 + v5, *(v0 + v6), v0 + v8, *(v0 + v9), *(v0 + v9 + 8), (v0 + v11), *(v0 + v12), *(v0 + (v12 & 0xFFFFFFFFFFFFFFF8) + 8), *(v0 + (((v12 & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)), *(v0 + (((v12 & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8));
}

uint64_t sub_1E626CDB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v9 = *(type metadata accessor for AppComposer(0) - 8);
  v10 = v4 + ((*(v9 + 80) + 16) & ~*(v9 + 80));

  return sub_1E624A504(a1, a2, a3, v10, a4);
}

uint64_t sub_1E626CE48@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AppComposer(0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077760, &unk_1E66011D0) - 8);
  v7 = v1 + ((v5 + *(v6 + 80) + 40) & ~*(v6 + 80));

  return sub_1E624A854((v1 + v4), v1 + v5, v7, a1);
}

char *sub_1E626CF50(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, void *a5, void *a6, void *a7, uint64_t a8, char a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v15 = v14;
  v61 = a8;
  v62 = a7;
  v63 = a5;
  v64 = a6;
  v69 = a2;
  v70 = a4;
  ObjectType = swift_getObjectType();
  v68 = sub_1E65E43B8();
  *&v67 = *(v68 - 8);
  MEMORY[0x1EEE9AC00](v68);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077810, &qword_1E65F96A0);
  v19 = MEMORY[0x1EEE9AC00](v18 - 8);
  v21 = &v59 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v23 = &v59 - v22;
  v24 = &v15[qword_1EE2D9170];
  *(v24 + 1) = 0;
  v60 = v24;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  *&v15[qword_1EE2D91A8] = 0;
  *&v15[qword_1EE2D9130] = 0;
  v66 = a1;
  sub_1E5DFD1CC(a1, v23, &unk_1ED077810, &qword_1E65F96A0);
  v25 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077250, &qword_1E65F9860));
  sub_1E5DFD1CC(v23, v21, &unk_1ED077810, &qword_1E65F96A0);
  v26 = sub_1E65E4058();
  sub_1E5DFE50C(v23, &unk_1ED077810, &qword_1E65F96A0);
  *&v15[qword_1EE2D9180] = v26;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074278, &unk_1E65FBA70);
  v27 = swift_allocObject();
  v67 = xmmword_1E65EB9E0;
  *(v27 + 16) = xmmword_1E65EB9E0;
  v28 = v26;
  sub_1E65E4398();
  sub_1E65E43A8();
  v72 = v27;
  sub_1E6275330(&qword_1EE2D4BC0, MEMORY[0x1E697CC60], MEMORY[0x1E697CC68]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074280, &qword_1E65EFF70);
  sub_1E5FED46C(&qword_1EE2D4850, &qword_1ED074280, &qword_1E65EFF70, MEMORY[0x1E69E6328]);
  sub_1E65E6738();
  sub_1E65E4028();

  *&v15[qword_1EE2D9158] = v69;
  v72 = MEMORY[0x1E69E7CC0];
  if (!(a3 >> 62))
  {
    v29 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v29)
    {
      goto LABEL_3;
    }

LABEL_20:
    v31 = MEMORY[0x1E69E7CC0];
    goto LABEL_21;
  }

LABEL_19:
  v29 = sub_1E65E67C8();
  if (!v29)
  {
    goto LABEL_20;
  }

LABEL_3:
  v30 = 0;
  v31 = MEMORY[0x1E69E7CC0];
  do
  {
    v32 = v30;
    while (1)
    {
      if ((a3 & 0xC000000000000001) != 0)
      {
        v33 = MEMORY[0x1E694E2D0](v32, a3);
      }

      else
      {
        if (v32 >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_18;
        }

        v33 = *(a3 + 8 * v32 + 32);
      }

      v34 = v33;
      v30 = v32 + 1;
      if (__OFADD__(v32, 1))
      {
        __break(1u);
LABEL_18:
        __break(1u);
        goto LABEL_19;
      }

      type metadata accessor for BarButtonItem(0);
      if (swift_dynamicCastClass())
      {
        break;
      }

      ++v32;
      if (v30 == v29)
      {
        goto LABEL_21;
      }
    }

    MEMORY[0x1E694D8F0]();
    if (*((v72 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v72 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1E65E5F68();
    }

    sub_1E65E5FA8();
    v31 = v72;
  }

  while (v30 != v29);
LABEL_21:
  v59 = a13;
  *&v15[qword_1EE2D9140] = v31;
  v35 = qword_1EE2D9160;
  v36 = sub_1E65DEEA8();
  v37 = *(v36 - 8);
  v68 = v36;
  v69 = v37;
  (*(v37 + 16))(&v15[v35], v70, v36);
  v39 = v63;
  v38 = v64;
  *&v15[qword_1EE2D9188] = v63;
  *&v15[qword_1EE2D9198] = v38;
  v40 = &v15[qword_1EE2D9120];
  v41 = v61;
  v42 = v62;
  *v40 = v62;
  v40[1] = v41;
  v15[qword_1EE2D9118] = a9 & 1;
  *(v60 + 1) = a11;
  swift_unknownObjectWeakAssign();
  v43 = &v15[qword_1EE2D9108];
  *v43 = v59;
  v43[1] = a14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077258, &qword_1E65FBA80);
  swift_allocObject();
  v44 = v42;

  v45 = v39;
  v46 = v38;
  *&v15[qword_1EE2D9148] = sub_1E65E4D18();
  v71.receiver = v15;
  v71.super_class = ObjectType;
  v47 = objc_msgSendSuper2(&v71, sel_initWithNibName_bundle_, 0, 0);
  v48 = *&v47[qword_1EE2D9180];
  v49 = v47;
  v50 = [v48 navigationItem];
  sub_1E5DEF738(0, &unk_1EE2D4680, 0x1E69DC708);
  v51 = sub_1E65E5EF8();

  [v50 setRightBarButtonItems_];

  KeyPath = swift_getKeyPath();
  *(&v59 - 2) = MEMORY[0x1EEE9AC00](KeyPath);
  swift_getKeyPath();
  swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_1E5FED46C(&qword_1EE2D6590, &qword_1ED072618, qword_1E65FBAF0, MEMORY[0x1E699D8F8]);
  sub_1E65E4D08();

  sub_1E65E4CF8();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078260, &qword_1E65F98D0);
  v53 = swift_allocObject();
  *(v53 + 16) = v67;
  v54 = sub_1E65E3B98();
  v55 = MEMORY[0x1E69DC0A0];
  *(v53 + 32) = v54;
  *(v53 + 40) = v55;
  v56 = sub_1E65E3BA8();
  v57 = MEMORY[0x1E69DC2B0];
  *(v53 + 48) = v56;
  *(v53 + 56) = v57;
  sub_1E65E6388();

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  (*(v69 + 8))(v70, v68);
  sub_1E5DFE50C(v66, &unk_1ED077810, &qword_1E65F96A0);
  return v49;
}

char *sub_1E626D770(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, void *a5, void *a6, void *a7, uint64_t a8, char a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v15 = v14;
  v61 = a8;
  v62 = a7;
  v63 = a5;
  v64 = a6;
  v69 = a2;
  v70 = a4;
  ObjectType = swift_getObjectType();
  v68 = sub_1E65E43B8();
  *&v67 = *(v68 - 8);
  MEMORY[0x1EEE9AC00](v68);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0777F0, &qword_1E65F9690);
  v19 = MEMORY[0x1EEE9AC00](v18 - 8);
  v21 = &v59 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v23 = &v59 - v22;
  v24 = &v15[qword_1EE2D9170];
  *(v24 + 1) = 0;
  v60 = v24;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  *&v15[qword_1EE2D91A8] = 0;
  *&v15[qword_1EE2D9130] = 0;
  v66 = a1;
  sub_1E5DFD1CC(a1, v23, &unk_1ED0777F0, &qword_1E65F9690);
  v25 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077268, &qword_1E65F98E0));
  sub_1E5DFD1CC(v23, v21, &unk_1ED0777F0, &qword_1E65F9690);
  v26 = sub_1E65E4058();
  sub_1E5DFE50C(v23, &unk_1ED0777F0, &qword_1E65F9690);
  *&v15[qword_1EE2D9180] = v26;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074278, &unk_1E65FBA70);
  v27 = swift_allocObject();
  v67 = xmmword_1E65EB9E0;
  *(v27 + 16) = xmmword_1E65EB9E0;
  v28 = v26;
  sub_1E65E4398();
  sub_1E65E43A8();
  v72 = v27;
  sub_1E6275330(&qword_1EE2D4BC0, MEMORY[0x1E697CC60], MEMORY[0x1E697CC68]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074280, &qword_1E65EFF70);
  sub_1E5FED46C(&qword_1EE2D4850, &qword_1ED074280, &qword_1E65EFF70, MEMORY[0x1E69E6328]);
  sub_1E65E6738();
  sub_1E65E4028();

  *&v15[qword_1EE2D9158] = v69;
  v72 = MEMORY[0x1E69E7CC0];
  if (!(a3 >> 62))
  {
    v29 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v29)
    {
      goto LABEL_3;
    }

LABEL_20:
    v31 = MEMORY[0x1E69E7CC0];
    goto LABEL_21;
  }

LABEL_19:
  v29 = sub_1E65E67C8();
  if (!v29)
  {
    goto LABEL_20;
  }

LABEL_3:
  v30 = 0;
  v31 = MEMORY[0x1E69E7CC0];
  do
  {
    v32 = v30;
    while (1)
    {
      if ((a3 & 0xC000000000000001) != 0)
      {
        v33 = MEMORY[0x1E694E2D0](v32, a3);
      }

      else
      {
        if (v32 >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_18;
        }

        v33 = *(a3 + 8 * v32 + 32);
      }

      v34 = v33;
      v30 = v32 + 1;
      if (__OFADD__(v32, 1))
      {
        __break(1u);
LABEL_18:
        __break(1u);
        goto LABEL_19;
      }

      type metadata accessor for BarButtonItem(0);
      if (swift_dynamicCastClass())
      {
        break;
      }

      ++v32;
      if (v30 == v29)
      {
        goto LABEL_21;
      }
    }

    MEMORY[0x1E694D8F0]();
    if (*((v72 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v72 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1E65E5F68();
    }

    sub_1E65E5FA8();
    v31 = v72;
  }

  while (v30 != v29);
LABEL_21:
  v59 = a13;
  *&v15[qword_1EE2D9140] = v31;
  v35 = qword_1EE2D9160;
  v36 = sub_1E65DEEA8();
  v37 = *(v36 - 8);
  v68 = v36;
  v69 = v37;
  (*(v37 + 16))(&v15[v35], v70, v36);
  v39 = v63;
  v38 = v64;
  *&v15[qword_1EE2D9188] = v63;
  *&v15[qword_1EE2D9198] = v38;
  v40 = &v15[qword_1EE2D9120];
  v41 = v61;
  v42 = v62;
  *v40 = v62;
  v40[1] = v41;
  v15[qword_1EE2D9118] = a9 & 1;
  *(v60 + 1) = a11;
  swift_unknownObjectWeakAssign();
  v43 = &v15[qword_1EE2D9108];
  *v43 = v59;
  v43[1] = a14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077258, &qword_1E65FBA80);
  swift_allocObject();
  v44 = v42;

  v45 = v39;
  v46 = v38;
  *&v15[qword_1EE2D9148] = sub_1E65E4D18();
  v71.receiver = v15;
  v71.super_class = ObjectType;
  v47 = objc_msgSendSuper2(&v71, sel_initWithNibName_bundle_, 0, 0);
  v48 = *&v47[qword_1EE2D9180];
  v49 = v47;
  v50 = [v48 navigationItem];
  sub_1E5DEF738(0, &unk_1EE2D4680, 0x1E69DC708);
  v51 = sub_1E65E5EF8();

  [v50 setRightBarButtonItems_];

  KeyPath = swift_getKeyPath();
  *(&v59 - 2) = MEMORY[0x1EEE9AC00](KeyPath);
  swift_getKeyPath();
  swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_1E5FED46C(&qword_1EE2D6590, &qword_1ED072618, qword_1E65FBAF0, MEMORY[0x1E699D8F8]);
  sub_1E65E4D08();

  sub_1E65E4CF8();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078260, &qword_1E65F98D0);
  v53 = swift_allocObject();
  *(v53 + 16) = v67;
  v54 = sub_1E65E3B98();
  v55 = MEMORY[0x1E69DC0A0];
  *(v53 + 32) = v54;
  *(v53 + 40) = v55;
  v56 = sub_1E65E3BA8();
  v57 = MEMORY[0x1E69DC2B0];
  *(v53 + 48) = v56;
  *(v53 + 56) = v57;
  sub_1E65E6388();

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  (*(v69 + 8))(v70, v68);
  sub_1E5DFE50C(v66, &unk_1ED0777F0, &qword_1E65F9690);
  return v49;
}

char *sub_1E626DF90(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, void *a5, void *a6, void *a7, uint64_t a8, char a9, char *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v15 = v14;
  v65 = a8;
  v66 = a7;
  v67 = a5;
  v68 = a6;
  v78 = a2;
  v79 = a4;
  ObjectType = swift_getObjectType();
  v77 = sub_1E65E43B8();
  v74 = *(v77 - 8);
  *&v75 = v74;
  MEMORY[0x1EEE9AC00](v77);
  v76 = &v63 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0770D8, &unk_1E65FA4B0);
  v20 = *(v19 - 8);
  v21 = MEMORY[0x1EEE9AC00](v19);
  v23 = &v63 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v25 = &v63 - v24;
  v26 = &v15[qword_1EE2D9170];
  *(v26 + 1) = 0;
  v64 = v26;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  *&v15[qword_1EE2D91A8] = 0;
  *&v15[qword_1EE2D9130] = 0;
  v27 = *(v20 + 16);
  v73 = a1;
  v27(v25, a1, v19);
  v28 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0772F8, &qword_1E65F9910));
  v27(v23, v25, v19);
  v29 = sub_1E65E4058();
  v30 = *(v20 + 8);
  v70 = v20 + 8;
  v71 = v19;
  v69 = v30;
  v30(v25, v19);
  *&v15[qword_1EE2D9180] = v29;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074278, &unk_1E65FBA70);
  v31 = swift_allocObject();
  v75 = xmmword_1E65EB9E0;
  *(v31 + 16) = xmmword_1E65EB9E0;
  v32 = v29;
  sub_1E65E4398();
  sub_1E65E43A8();
  v81 = v31;
  sub_1E6275330(&qword_1EE2D4BC0, MEMORY[0x1E697CC60], MEMORY[0x1E697CC68]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074280, &qword_1E65EFF70);
  sub_1E5FED46C(&qword_1EE2D4850, &qword_1ED074280, &qword_1E65EFF70, MEMORY[0x1E69E6328]);
  sub_1E65E6738();
  sub_1E65E4028();

  *&v15[qword_1EE2D9158] = v78;
  v81 = MEMORY[0x1E69E7CC0];
  if (!(a3 >> 62))
  {
    v33 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v33)
    {
      goto LABEL_3;
    }

LABEL_20:
    v35 = MEMORY[0x1E69E7CC0];
    goto LABEL_21;
  }

LABEL_19:
  v33 = sub_1E65E67C8();
  if (!v33)
  {
    goto LABEL_20;
  }

LABEL_3:
  v34 = 0;
  v35 = MEMORY[0x1E69E7CC0];
  do
  {
    v36 = v34;
    while (1)
    {
      if ((a3 & 0xC000000000000001) != 0)
      {
        v37 = MEMORY[0x1E694E2D0](v36, a3);
      }

      else
      {
        if (v36 >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_18;
        }

        v37 = *(a3 + 8 * v36 + 32);
      }

      v38 = v37;
      v34 = v36 + 1;
      if (__OFADD__(v36, 1))
      {
        __break(1u);
LABEL_18:
        __break(1u);
        goto LABEL_19;
      }

      type metadata accessor for BarButtonItem(0);
      if (swift_dynamicCastClass())
      {
        break;
      }

      ++v36;
      if (v34 == v33)
      {
        goto LABEL_21;
      }
    }

    MEMORY[0x1E694D8F0]();
    if (*((v81 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v81 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1E65E5F68();
    }

    sub_1E65E5FA8();
    v35 = v81;
  }

  while (v34 != v33);
LABEL_21:
  v74 = a13;
  v76 = a10;
  *&v15[qword_1EE2D9140] = v35;
  v39 = qword_1EE2D9160;
  v40 = sub_1E65DEEA8();
  v41 = *(v40 - 8);
  v77 = v40;
  v78 = v41;
  (*(v41 + 16))(&v15[v39], v79, v40);
  v42 = v67;
  v43 = v68;
  *&v15[qword_1EE2D9188] = v67;
  *&v15[qword_1EE2D9198] = v43;
  v44 = &v15[qword_1EE2D9120];
  v45 = v65;
  v46 = v66;
  *v44 = v66;
  v44[1] = v45;
  v15[qword_1EE2D9118] = a9 & 1;
  *(v64 + 1) = a11;
  swift_unknownObjectWeakAssign();
  v47 = &v15[qword_1EE2D9108];
  *v47 = v74;
  v47[1] = a14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077258, &qword_1E65FBA80);
  swift_allocObject();
  v48 = v46;

  v49 = v42;
  v50 = v43;
  *&v15[qword_1EE2D9148] = sub_1E65E4D18();
  v80.receiver = v15;
  v80.super_class = ObjectType;
  v51 = objc_msgSendSuper2(&v80, sel_initWithNibName_bundle_, 0, 0);
  v52 = *&v51[qword_1EE2D9180];
  v53 = v51;
  v54 = [v52 navigationItem];
  sub_1E5DEF738(0, &unk_1EE2D4680, 0x1E69DC708);
  v55 = sub_1E65E5EF8();

  [v54 setRightBarButtonItems_];

  KeyPath = swift_getKeyPath();
  *(&v63 - 2) = MEMORY[0x1EEE9AC00](KeyPath);
  swift_getKeyPath();
  swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_1E5FED46C(&qword_1EE2D6590, &qword_1ED072618, qword_1E65FBAF0, MEMORY[0x1E699D8F8]);
  sub_1E65E4D08();

  sub_1E65E4CF8();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078260, &qword_1E65F98D0);
  v57 = swift_allocObject();
  *(v57 + 16) = v75;
  v58 = sub_1E65E3B98();
  v59 = MEMORY[0x1E69DC0A0];
  *(v57 + 32) = v58;
  *(v57 + 40) = v59;
  v60 = sub_1E65E3BA8();
  v61 = MEMORY[0x1E69DC2B0];
  *(v57 + 48) = v60;
  *(v57 + 56) = v61;
  sub_1E65E6388();

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  (*(v78 + 8))(v79, v77);
  v69(v73, v71);
  return v53;
}

char *sub_1E626E800(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, void *a5, void *a6, void *a7, uint64_t a8, char a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v15 = v14;
  v61 = a8;
  v62 = a7;
  v63 = a5;
  v64 = a6;
  v69 = a2;
  v70 = a4;
  ObjectType = swift_getObjectType();
  v68 = sub_1E65E43B8();
  *&v67 = *(v68 - 8);
  MEMORY[0x1EEE9AC00](v68);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0770D0, &unk_1E65FA480);
  v19 = MEMORY[0x1EEE9AC00](v18 - 8);
  v21 = &v59 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v23 = &v59 - v22;
  v24 = &v15[qword_1EE2D9170];
  *(v24 + 1) = 0;
  v60 = v24;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  *&v15[qword_1EE2D91A8] = 0;
  *&v15[qword_1EE2D9130] = 0;
  v66 = a1;
  sub_1E5DFD1CC(a1, v23, &qword_1ED0770D0, &unk_1E65FA480);
  v25 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077300, &qword_1E65F9918));
  sub_1E5DFD1CC(v23, v21, &qword_1ED0770D0, &unk_1E65FA480);
  v26 = sub_1E65E4058();
  sub_1E5DFE50C(v23, &qword_1ED0770D0, &unk_1E65FA480);
  *&v15[qword_1EE2D9180] = v26;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074278, &unk_1E65FBA70);
  v27 = swift_allocObject();
  v67 = xmmword_1E65EB9E0;
  *(v27 + 16) = xmmword_1E65EB9E0;
  v28 = v26;
  sub_1E65E4398();
  sub_1E65E43A8();
  v72 = v27;
  sub_1E6275330(&qword_1EE2D4BC0, MEMORY[0x1E697CC60], MEMORY[0x1E697CC68]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074280, &qword_1E65EFF70);
  sub_1E5FED46C(&qword_1EE2D4850, &qword_1ED074280, &qword_1E65EFF70, MEMORY[0x1E69E6328]);
  sub_1E65E6738();
  sub_1E65E4028();

  *&v15[qword_1EE2D9158] = v69;
  v72 = MEMORY[0x1E69E7CC0];
  if (!(a3 >> 62))
  {
    v29 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v29)
    {
      goto LABEL_3;
    }

LABEL_20:
    v31 = MEMORY[0x1E69E7CC0];
    goto LABEL_21;
  }

LABEL_19:
  v29 = sub_1E65E67C8();
  if (!v29)
  {
    goto LABEL_20;
  }

LABEL_3:
  v30 = 0;
  v31 = MEMORY[0x1E69E7CC0];
  do
  {
    v32 = v30;
    while (1)
    {
      if ((a3 & 0xC000000000000001) != 0)
      {
        v33 = MEMORY[0x1E694E2D0](v32, a3);
      }

      else
      {
        if (v32 >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_18;
        }

        v33 = *(a3 + 8 * v32 + 32);
      }

      v34 = v33;
      v30 = v32 + 1;
      if (__OFADD__(v32, 1))
      {
        __break(1u);
LABEL_18:
        __break(1u);
        goto LABEL_19;
      }

      type metadata accessor for BarButtonItem(0);
      if (swift_dynamicCastClass())
      {
        break;
      }

      ++v32;
      if (v30 == v29)
      {
        goto LABEL_21;
      }
    }

    MEMORY[0x1E694D8F0]();
    if (*((v72 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v72 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1E65E5F68();
    }

    sub_1E65E5FA8();
    v31 = v72;
  }

  while (v30 != v29);
LABEL_21:
  v59 = a13;
  *&v15[qword_1EE2D9140] = v31;
  v35 = qword_1EE2D9160;
  v36 = sub_1E65DEEA8();
  v37 = *(v36 - 8);
  v68 = v36;
  v69 = v37;
  (*(v37 + 16))(&v15[v35], v70, v36);
  v39 = v63;
  v38 = v64;
  *&v15[qword_1EE2D9188] = v63;
  *&v15[qword_1EE2D9198] = v38;
  v40 = &v15[qword_1EE2D9120];
  v41 = v61;
  v42 = v62;
  *v40 = v62;
  v40[1] = v41;
  v15[qword_1EE2D9118] = a9 & 1;
  *(v60 + 1) = a11;
  swift_unknownObjectWeakAssign();
  v43 = &v15[qword_1EE2D9108];
  *v43 = v59;
  v43[1] = a14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077258, &qword_1E65FBA80);
  swift_allocObject();
  v44 = v42;

  v45 = v39;
  v46 = v38;
  *&v15[qword_1EE2D9148] = sub_1E65E4D18();
  v71.receiver = v15;
  v71.super_class = ObjectType;
  v47 = objc_msgSendSuper2(&v71, sel_initWithNibName_bundle_, 0, 0);
  v48 = *&v47[qword_1EE2D9180];
  v49 = v47;
  v50 = [v48 navigationItem];
  sub_1E5DEF738(0, &unk_1EE2D4680, 0x1E69DC708);
  v51 = sub_1E65E5EF8();

  [v50 setRightBarButtonItems_];

  KeyPath = swift_getKeyPath();
  *(&v59 - 2) = MEMORY[0x1EEE9AC00](KeyPath);
  swift_getKeyPath();
  swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_1E5FED46C(&qword_1EE2D6590, &qword_1ED072618, qword_1E65FBAF0, MEMORY[0x1E699D8F8]);
  sub_1E65E4D08();

  sub_1E65E4CF8();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078260, &qword_1E65F98D0);
  v53 = swift_allocObject();
  *(v53 + 16) = v67;
  v54 = sub_1E65E3B98();
  v55 = MEMORY[0x1E69DC0A0];
  *(v53 + 32) = v54;
  *(v53 + 40) = v55;
  v56 = sub_1E65E3BA8();
  v57 = MEMORY[0x1E69DC2B0];
  *(v53 + 48) = v56;
  *(v53 + 56) = v57;
  sub_1E65E6388();

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  (*(v69 + 8))(v70, v68);
  sub_1E5DFE50C(v66, &qword_1ED0770D0, &unk_1E65FA480);
  return v49;
}

uint64_t sub_1E626F020(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E626F088()
{
  v2 = *(type metadata accessor for AppComposer(0) - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1E5FEE4D4;

  return sub_1E6316E2C(v0 + v3);
}

uint64_t sub_1E626F17C(uint64_t (*a1)(unint64_t, uint64_t))
{
  v2 = *(type metadata accessor for AppComposer(0) - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = v1 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8);

  return a1(v1 + v3, v4);
}

uint64_t sub_1E626F278()
{
  v1 = *(type metadata accessor for AppComposer(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 47) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 23) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v0 + v4);
  v7 = *v6;
  v8 = v6[1];

  return sub_1E63B1620((v0 + v2), v0 + v3, v7, v8, (v0 + v5));
}

uint64_t sub_1E626F320()
{
  v1 = *(type metadata accessor for AppComposer(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 23) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v0 + v3);
  v6 = *v5;
  v7 = v5[1];

  return sub_1E63B3AD4(v0 + v2, v6, v7, v0 + v4, (v0 + ((v4 + 47) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t sub_1E626F3D8@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AppComposer(0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(sub_1E65D76F8() - 8);
  v7 = (v5 + *(v6 + 80) + 16) & ~*(v6 + 80);
  v8 = (*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v1 + v5);
  v10 = *(v1 + v5 + 8);

  return sub_1E63B3C74(v1 + v4, v9, v10, v1 + v7, (v1 + v8), (v1 + ((v8 + 47) & 0xFFFFFFFFFFFFFFF8)), a1);
}

uint64_t sub_1E626F510(uint64_t (*a1)(unint64_t, uint64_t, uint64_t))
{
  v2 = *(type metadata accessor for AppComposer(0) - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (v1 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8));
  v5 = *v4;
  v6 = v4[1];

  return a1(v1 + v3, v5, v6);
}

uint64_t sub_1E626F5C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v11 = *(type metadata accessor for AppComposer(0) - 8);
  v12 = v5 + ((*(v11 + 80) + 16) & ~*(v11 + 80));

  return sub_1E63B6990(a1, a2, a3, a4, v12, a5);
}

unint64_t sub_1E626F664()
{
  result = qword_1ED077970;
  if (!qword_1ED077970)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1ED077960, &unk_1E65FA670);
    sub_1E626F6F0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED077970);
  }

  return result;
}

unint64_t sub_1E626F6F0()
{
  result = qword_1ED077140;
  if (!qword_1ED077140)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1ED077980, &qword_1E65F9720);
    sub_1E5FED46C(&qword_1ED077148, &unk_1ED077990, &unk_1E65FA680, MEMORY[0x1E6981870]);
    sub_1E626F7A8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED077140);
  }

  return result;
}

unint64_t sub_1E626F7A8()
{
  result = qword_1ED077150;
  if (!qword_1ED077150)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1ED0779A0, &qword_1E65F9728);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED077158, &unk_1E65FA690);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1ED0779B0, &qword_1E65ED910);
    sub_1E626F8FC();
    sub_1E5FED46C(&qword_1EE2D6870, &unk_1ED0779B0, &qword_1E65ED910, MEMORY[0x1E699CC80]);
    swift_getOpaqueTypeConformance2();
    sub_1E5FED46C(&qword_1EE2D4BE8, &unk_1ED0779E0, &qword_1E65EC400, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED077150);
  }

  return result;
}

unint64_t sub_1E626F8FC()
{
  result = qword_1ED077160;
  if (!qword_1ED077160)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED077158, &unk_1E65FA690);
    sub_1E5FED46C(&unk_1ED0779C0, &qword_1ED077168, &unk_1E65FA6A0, MEMORY[0x1E697DDD0]);
    sub_1E5FED46C(&unk_1ED0779D0, &qword_1ED077170, &qword_1E65F9730, MEMORY[0x1E6981F48]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED077160);
  }

  return result;
}

unint64_t sub_1E626F9E0()
{
  result = qword_1ED077180;
  if (!qword_1ED077180)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0770E0, &unk_1E65FA4C0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1ED077790, &qword_1E65F9668);
    sub_1E5FED46C(&unk_1ED0779F0, &unk_1ED077790, &qword_1E65F9668, MEMORY[0x1E699EAF0]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED077180);
  }

  return result;
}

unint64_t sub_1E626FB0C()
{
  result = qword_1ED077188;
  if (!qword_1ED077188)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1ED0777A0, &qword_1E65F9670);
    sub_1E626F9E0();
    sub_1E5FEB170();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED077188);
  }

  return result;
}

unint64_t sub_1E626FB98()
{
  result = qword_1ED077A30;
  if (!qword_1ED077A30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED077100, &unk_1E65FA500);
    sub_1E626FC24();
    sub_1E5FEB170();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED077A30);
  }

  return result;
}

unint64_t sub_1E626FC24()
{
  result = qword_1ED0771A8;
  if (!qword_1ED0771A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1ED077A40, &qword_1E65F9748);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0771B0, &qword_1E65FA6D0);
    sub_1E5FED46C(&unk_1ED077A50, &qword_1ED0771B0, &qword_1E65FA6D0, MEMORY[0x1E699EA30]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0771A8);
  }

  return result;
}

unint64_t sub_1E626FD54()
{
  result = qword_1ED07A420;
  if (!qword_1ED07A420)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1ED0776C0, &qword_1E65F9648);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0738F0, &qword_1E65F7280);
    sub_1E65E3F88();
    sub_1E5FED46C(&qword_1EE2D68F0, &qword_1ED0738F0, &qword_1E65F7280, MEMORY[0x1E699CAC8]);
    sub_1E6275330(&unk_1ED07A410, MEMORY[0x1E697C4E8], MEMORY[0x1E697C4E0]);
    swift_getOpaqueTypeConformance2();
    sub_1E5FED46C(&qword_1EE2D4C00, &unk_1ED07A430, &qword_1E65EC470, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED07A420);
  }

  return result;
}

uint64_t sub_1E626FED4@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AppComposer(0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 47) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v1 + ((v6 + 87) & 0xFFFFFFFFFFFFFFF8));

  return sub_1E61C9FC8(v1 + v4, v1 + v5, (v1 + v6), v7, a1);
}

uint64_t sub_1E626FF88@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AppComposer(0) - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 47) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v1 + 16);
  v9 = *(v1 + v5);
  v10 = *(v1 + ((v7 + 87) & 0xFFFFFFFFFFFFFFF8));

  return sub_1E61CA3B0(v8, v1 + v4, v9, v1 + v6, (v1 + v7), v10, a1);
}

uint64_t objectdestroy_116Tm()
{
  v96 = type metadata accessor for AppComposer(0);
  v94 = *(*(v96 - 1) + 80);
  v92 = *(*(v96 - 1) + 64);
  v93 = (v94 + 16) & ~v94;
  v95 = v0;
  v89 = v0 + v93;

  v1 = v0 + v93 + v96[5];
  swift_unknownObjectRelease();
  v2 = type metadata accessor for AppEnvironment(0);
  v3 = v2[6];
  v91 = type metadata accessor for AccountService();
  v90 = *(v91[-1].Description + 1);
  v90(v1 + v3, v91);
  v4 = v2[7];
  v88 = type metadata accessor for AppStateService();
  v87 = *(v88[-1].Description + 1);
  v87(v1 + v4, v88);
  v5 = v2[8];
  v86 = type metadata accessor for ArchivedSessionService();
  v85 = *(v86[-1].Description + 1);
  v85(v1 + v5, v86);
  v6 = v2[9];
  v84 = type metadata accessor for AssetService();
  v83 = *(v84[-1].Description + 1);
  v83(v1 + v6, v84);
  v7 = v2[10];
  v82 = type metadata accessor for AwardsService();
  v81 = *(v82[-1].Description + 1);
  v81(v1 + v7, v82);
  v8 = v2[11];
  v80 = type metadata accessor for BookmarkService();
  v79 = *(v80[-1].Description + 1);
  v79(v1 + v8, v80);
  v9 = v2[12];
  v78 = type metadata accessor for CatalogService();
  v77 = *(v78[-1].Description + 1);
  v77(v1 + v9, v78);
  v10 = v2[13];
  v76 = type metadata accessor for ConfigurationService();
  v75 = *(v76[-1].Description + 1);
  v75(v1 + v10, v76);
  v11 = v2[14];
  v74 = type metadata accessor for ContentAvailabilityService();
  v73 = *(v74[-1].Description + 1);
  v73(v1 + v11, v74);
  v12 = v2[15];
  v72 = type metadata accessor for EngagementService();
  v71 = *(v72[-1].Description + 1);
  v71(v1 + v12, v72);
  v13 = v2[16];
  v70 = type metadata accessor for HealthDataService();
  v69 = *(v70[-1].Description + 1);
  v69(v1 + v13, v70);
  v14 = v2[17];
  v68 = type metadata accessor for InteropService();
  v67 = *(v68[-1].Description + 1);
  v67(v1 + v14, v68);
  v15 = v2[18];
  v66 = type metadata accessor for LocalizationService();
  v65 = *(v66[-1].Description + 1);
  v65(v1 + v15, v66);
  v16 = v2[19];
  v64 = type metadata accessor for MarketingService();
  v63 = *(v64[-1].Description + 1);
  v63(v1 + v16, v64);
  v17 = v2[20];
  v62 = type metadata accessor for MetricService();
  v61 = *(v62[-1].Description + 1);
  v61(v1 + v17, v62);
  v18 = v2[21];
  v60 = type metadata accessor for PersonalizationService();
  v59 = *(v60[-1].Description + 1);
  v59(v1 + v18, v60);
  v19 = v2[22];
  v58 = type metadata accessor for PlayerService();
  v57 = *(v58[-1].Description + 1);
  v57(v1 + v19, v58);
  v20 = v2[23];
  v56 = type metadata accessor for PrivacyPreferenceService();
  v55 = *(v56[-1].Description + 1);
  v55(v1 + v20, v56);
  v21 = v2[24];
  v54 = type metadata accessor for RecommendationService();
  v53 = *(v54[-1].Description + 1);
  v53(v1 + v21, v54);
  v22 = v2[25];
  v52 = type metadata accessor for RemoteBrowsingService();
  v51 = *(v52[-1].Description + 1);
  v51(v1 + v22, v52);
  v23 = v2[26];
  v50 = type metadata accessor for SearchService();
  v49 = *(v50[-1].Description + 1);
  v49(v1 + v23, v50);
  v24 = v2[27];
  v48 = type metadata accessor for ServiceSubscriptionService();
  v47 = *(v48[-1].Description + 1);
  v47(v1 + v24, v48);
  v25 = v2[28];
  v41 = type metadata accessor for SessionService();
  v46 = *(v41[-1].Description + 1);
  v46(v1 + v25, v41);
  v26 = v2[29];
  v27 = type metadata accessor for SharePlayService();
  v45 = *(v27[-1].Description + 1);
  v45(v1 + v26, v27);
  v28 = v2[30];
  v29 = type metadata accessor for SiriService();
  v44 = *(v29[-1].Description + 1);
  v44(v1 + v28, v29);
  v30 = v2[31];
  v31 = type metadata accessor for SyncService();
  v43 = *(v31[-1].Description + 1);
  v43(v1 + v30, v31);

  v32 = v2[33];
  QueueService = type metadata accessor for UpNextQueueService();
  v42 = *(QueueService[-1].Description + 1);
  v42(v1 + v32, QueueService);
  __swift_destroy_boxed_opaque_existential_1((v1 + v2[34]));

  v34 = v2[36];
  v35 = type metadata accessor for WorkoutPlanService();
  v40 = *(v35[-1].Description + 1);
  v40(v1 + v34, v35);

  v36 = v89 + v96[7];

  v37 = v36 + *(type metadata accessor for AppDataItemResolver(0) + 24);
  swift_unknownObjectRelease();
  v90(v37 + v2[6], v91);
  v87(v37 + v2[7], v88);
  v85(v37 + v2[8], v86);
  v83(v37 + v2[9], v84);
  v81(v37 + v2[10], v82);
  v79(v37 + v2[11], v80);
  v77(v37 + v2[12], v78);
  v75(v37 + v2[13], v76);
  v73(v37 + v2[14], v74);
  v71(v37 + v2[15], v72);
  v69(v37 + v2[16], v70);
  v67(v37 + v2[17], v68);
  v65(v37 + v2[18], v66);
  v63(v37 + v2[19], v64);
  v61(v37 + v2[20], v62);
  v59(v37 + v2[21], v60);
  v57(v37 + v2[22], v58);
  v55(v37 + v2[23], v56);
  v53(v37 + v2[24], v54);
  v51(v37 + v2[25], v52);
  v49(v37 + v2[26], v50);
  v47(v37 + v2[27], v48);
  v46(v37 + v2[28], v41);
  v45(v37 + v2[29], v27);
  v44(v37 + v2[30], v29);
  v43(v37 + v2[31], v31);

  v42(v37 + v2[33], QueueService);
  __swift_destroy_boxed_opaque_existential_1((v37 + v2[34]));

  v40(v37 + v2[36], v35);
  swift_unknownObjectRelease();
  if (*(v89 + v96[9] + 8) >= 0xCuLL)
  {
  }

  v38 = (v89 + v96[10]);
  if (v38[3])
  {
    __swift_destroy_boxed_opaque_existential_1(v38);
  }

  __swift_destroy_boxed_opaque_existential_1((v95 + ((((v92 + v93 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)));

  return swift_deallocObject();
}

uint64_t sub_1E6270D70(uint64_t (*a1)(void, void))
{
  v3 = *(type metadata accessor for AppComposer(0) - 8);
  v4 = (v1 + ((*(v3 + 64) + ((*(v3 + 80) + 16) & ~*(v3 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8));
  return a1(*v4, v4[1]);
}

uint64_t objectdestroy_125Tm()
{
  v112 = type metadata accessor for AppComposer(0);
  v110 = *(*(v112 - 1) + 80);
  v1 = (v110 + 16) & ~v110;
  v2 = v1 + *(*(v112 - 1) + 64);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0776E0, &qword_1E65EDC00);
  v109 = *(*(v3 - 8) + 80);
  v106 = *(*(v3 - 8) + 64);
  v4 = sub_1E65D76F8();
  v107 = *(v4 - 8);
  v108 = v4;
  v105 = *(v107 + 80);
  v111 = v0;
  v102 = v0 + v1;

  v5 = v0 + v1 + v112[5];
  swift_unknownObjectRelease();
  v6 = type metadata accessor for AppEnvironment(0);
  v7 = v6[6];
  v104 = type metadata accessor for AccountService();
  v103 = *(v104[-1].Description + 1);
  v103(v5 + v7, v104);
  v8 = v6[7];
  v101 = type metadata accessor for AppStateService();
  v100 = *(v101[-1].Description + 1);
  v100(v5 + v8, v101);
  v9 = v6[8];
  v99 = type metadata accessor for ArchivedSessionService();
  v98 = *(v99[-1].Description + 1);
  v98(v5 + v9, v99);
  v10 = v6[9];
  v97 = type metadata accessor for AssetService();
  v96 = *(v97[-1].Description + 1);
  v96(v5 + v10, v97);
  v11 = v6[10];
  v95 = type metadata accessor for AwardsService();
  v94 = *(v95[-1].Description + 1);
  v94(v5 + v11, v95);
  v12 = v6[11];
  v93 = type metadata accessor for BookmarkService();
  v92 = *(v93[-1].Description + 1);
  v92(v5 + v12, v93);
  v13 = v6[12];
  v91 = type metadata accessor for CatalogService();
  v90 = *(v91[-1].Description + 1);
  v90(v5 + v13, v91);
  v14 = v6[13];
  v89 = type metadata accessor for ConfigurationService();
  v88 = *(v89[-1].Description + 1);
  v88(v5 + v14, v89);
  v15 = v6[14];
  v87 = type metadata accessor for ContentAvailabilityService();
  v86 = *(v87[-1].Description + 1);
  v86(v5 + v15, v87);
  v16 = v6[15];
  v85 = type metadata accessor for EngagementService();
  v84 = *(v85[-1].Description + 1);
  v84(v5 + v16, v85);
  v17 = v6[16];
  v83 = type metadata accessor for HealthDataService();
  v82 = *(v83[-1].Description + 1);
  v82(v5 + v17, v83);
  v18 = v6[17];
  v81 = type metadata accessor for InteropService();
  v80 = *(v81[-1].Description + 1);
  v80(v5 + v18, v81);
  v19 = v6[18];
  v79 = type metadata accessor for LocalizationService();
  v78 = *(v79[-1].Description + 1);
  v78(v5 + v19, v79);
  v20 = v6[19];
  v77 = type metadata accessor for MarketingService();
  v76 = *(v77[-1].Description + 1);
  v76(v5 + v20, v77);
  v21 = v6[20];
  v75 = type metadata accessor for MetricService();
  v74 = *(v75[-1].Description + 1);
  v74(v5 + v21, v75);
  v22 = v6[21];
  v73 = type metadata accessor for PersonalizationService();
  v72 = *(v73[-1].Description + 1);
  v72(v5 + v22, v73);
  v23 = v6[22];
  v71 = type metadata accessor for PlayerService();
  v70 = *(v71[-1].Description + 1);
  v70(v5 + v23, v71);
  v24 = v6[23];
  v69 = type metadata accessor for PrivacyPreferenceService();
  v68 = *(v69[-1].Description + 1);
  v68(v5 + v24, v69);
  v25 = v6[24];
  v67 = type metadata accessor for RecommendationService();
  v66 = *(v67[-1].Description + 1);
  v66(v5 + v25, v67);
  v26 = v6[25];
  v65 = type metadata accessor for RemoteBrowsingService();
  v64 = *(v65[-1].Description + 1);
  v64(v5 + v26, v65);
  v27 = v6[26];
  v63 = type metadata accessor for SearchService();
  v62 = *(v63[-1].Description + 1);
  v62(v5 + v27, v63);
  v28 = v6[27];
  v61 = type metadata accessor for ServiceSubscriptionService();
  v60 = *(v61[-1].Description + 1);
  v60(v5 + v28, v61);
  v29 = v6[28];
  v54 = type metadata accessor for SessionService();
  v59 = *(v54[-1].Description + 1);
  v59(v5 + v29, v54);
  v30 = v6[29];
  v31 = type metadata accessor for SharePlayService();
  v58 = *(v31[-1].Description + 1);
  v58(v5 + v30, v31);
  v32 = v6[30];
  v33 = type metadata accessor for SiriService();
  v57 = *(v33[-1].Description + 1);
  v57(v5 + v32, v33);
  v34 = v6[31];
  v35 = type metadata accessor for SyncService();
  v56 = *(v35[-1].Description + 1);
  v56(v5 + v34, v35);

  v36 = v6[33];
  QueueService = type metadata accessor for UpNextQueueService();
  v55 = *(QueueService[-1].Description + 1);
  v55(v5 + v36, QueueService);
  __swift_destroy_boxed_opaque_existential_1((v5 + v6[34]));

  v38 = v6[36];
  v39 = type metadata accessor for WorkoutPlanService();
  v53 = *(v39[-1].Description + 1);
  v53(v5 + v38, v39);

  v40 = v102 + v112[7];

  v41 = v40 + *(type metadata accessor for AppDataItemResolver(0) + 24);
  swift_unknownObjectRelease();
  v103(v41 + v6[6], v104);
  v100(v41 + v6[7], v101);
  v98(v41 + v6[8], v99);
  v96(v41 + v6[9], v97);
  v94(v41 + v6[10], v95);
  v92(v41 + v6[11], v93);
  v90(v41 + v6[12], v91);
  v88(v41 + v6[13], v89);
  v86(v41 + v6[14], v87);
  v84(v41 + v6[15], v85);
  v82(v41 + v6[16], v83);
  v80(v41 + v6[17], v81);
  v78(v41 + v6[18], v79);
  v76(v41 + v6[19], v77);
  v74(v41 + v6[20], v75);
  v72(v41 + v6[21], v73);
  v70(v41 + v6[22], v71);
  v68(v41 + v6[23], v69);
  v66(v41 + v6[24], v67);
  v64(v41 + v6[25], v65);
  v62(v41 + v6[26], v63);
  v60(v41 + v6[27], v61);
  v59(v41 + v6[28], v54);
  v58(v41 + v6[29], v31);
  v57(v41 + v6[30], v33);
  v56(v41 + v6[31], v35);

  v55(v41 + v6[33], QueueService);
  __swift_destroy_boxed_opaque_existential_1((v41 + v6[34]));

  v53(v41 + v6[36], v39);
  swift_unknownObjectRelease();
  if (*(v102 + v112[9] + 8) >= 0xCuLL)
  {
  }

  v42 = (v2 + v109) & ~v109;
  v43 = (v102 + v112[10]);
  if (v43[3])
  {
    __swift_destroy_boxed_opaque_existential_1(v43);
  }

  v44 = v111 + v42;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  sub_1E6001C2C(*v44, *(v44 + 8), *(v44 + 16));
  if (EnumCaseMultiPayload == 1)
  {
    v46 = v44 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED07A3F0, &unk_1E65F7290) + 48);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077A70, &qword_1E65F2620);
    v47 = swift_getEnumCaseMultiPayload();
    switch(v47)
    {
      case 2:

        break;
      case 1:
        v49 = sub_1E65DE508();
        (*(*(v49 - 8) + 8))(v46, v49);
        v50 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED07A400, &unk_1E65F7150) + 48);
        v51 = sub_1E65D76A8();
        (*(*(v51 - 8) + 8))(v46 + v50, v51);
        break;
      case 0:
        v48 = sub_1E65DE508();
        (*(*(v48 - 8) + 8))(v46, v48);
        break;
    }
  }

  (*(v107 + 8))(v111 + ((v42 + v106 + v105) & ~v105), v108);
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

void sub_1E6271D70(uint64_t a1, void *a2)
{
  v5 = *(sub_1E65D74E8() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  sub_1E63267A8(a1, a2, v6);
}

uint64_t objectdestroy_195Tm()
{
  v96 = type metadata accessor for AppComposer(0);
  v94 = *(*(v96 - 1) + 80);
  v92 = *(*(v96 - 1) + 64);
  v93 = (v94 + 16) & ~v94;
  v95 = v0;
  v89 = v0 + v93;

  v1 = v0 + v93 + v96[5];
  swift_unknownObjectRelease();
  v2 = type metadata accessor for AppEnvironment(0);
  v3 = v2[6];
  v91 = type metadata accessor for AccountService();
  v90 = *(v91[-1].Description + 1);
  v90(v1 + v3, v91);
  v4 = v2[7];
  v88 = type metadata accessor for AppStateService();
  v87 = *(v88[-1].Description + 1);
  v87(v1 + v4, v88);
  v5 = v2[8];
  v86 = type metadata accessor for ArchivedSessionService();
  v85 = *(v86[-1].Description + 1);
  v85(v1 + v5, v86);
  v6 = v2[9];
  v84 = type metadata accessor for AssetService();
  v83 = *(v84[-1].Description + 1);
  v83(v1 + v6, v84);
  v7 = v2[10];
  v82 = type metadata accessor for AwardsService();
  v81 = *(v82[-1].Description + 1);
  v81(v1 + v7, v82);
  v8 = v2[11];
  v80 = type metadata accessor for BookmarkService();
  v79 = *(v80[-1].Description + 1);
  v79(v1 + v8, v80);
  v9 = v2[12];
  v78 = type metadata accessor for CatalogService();
  v77 = *(v78[-1].Description + 1);
  v77(v1 + v9, v78);
  v10 = v2[13];
  v76 = type metadata accessor for ConfigurationService();
  v75 = *(v76[-1].Description + 1);
  v75(v1 + v10, v76);
  v11 = v2[14];
  v74 = type metadata accessor for ContentAvailabilityService();
  v73 = *(v74[-1].Description + 1);
  v73(v1 + v11, v74);
  v12 = v2[15];
  v72 = type metadata accessor for EngagementService();
  v71 = *(v72[-1].Description + 1);
  v71(v1 + v12, v72);
  v13 = v2[16];
  v70 = type metadata accessor for HealthDataService();
  v69 = *(v70[-1].Description + 1);
  v69(v1 + v13, v70);
  v14 = v2[17];
  v68 = type metadata accessor for InteropService();
  v67 = *(v68[-1].Description + 1);
  v67(v1 + v14, v68);
  v15 = v2[18];
  v66 = type metadata accessor for LocalizationService();
  v65 = *(v66[-1].Description + 1);
  v65(v1 + v15, v66);
  v16 = v2[19];
  v64 = type metadata accessor for MarketingService();
  v63 = *(v64[-1].Description + 1);
  v63(v1 + v16, v64);
  v17 = v2[20];
  v62 = type metadata accessor for MetricService();
  v61 = *(v62[-1].Description + 1);
  v61(v1 + v17, v62);
  v18 = v2[21];
  v60 = type metadata accessor for PersonalizationService();
  v59 = *(v60[-1].Description + 1);
  v59(v1 + v18, v60);
  v19 = v2[22];
  v58 = type metadata accessor for PlayerService();
  v57 = *(v58[-1].Description + 1);
  v57(v1 + v19, v58);
  v20 = v2[23];
  v56 = type metadata accessor for PrivacyPreferenceService();
  v55 = *(v56[-1].Description + 1);
  v55(v1 + v20, v56);
  v21 = v2[24];
  v54 = type metadata accessor for RecommendationService();
  v53 = *(v54[-1].Description + 1);
  v53(v1 + v21, v54);
  v22 = v2[25];
  v52 = type metadata accessor for RemoteBrowsingService();
  v51 = *(v52[-1].Description + 1);
  v51(v1 + v22, v52);
  v23 = v2[26];
  v50 = type metadata accessor for SearchService();
  v49 = *(v50[-1].Description + 1);
  v49(v1 + v23, v50);
  v24 = v2[27];
  v48 = type metadata accessor for ServiceSubscriptionService();
  v47 = *(v48[-1].Description + 1);
  v47(v1 + v24, v48);
  v25 = v2[28];
  v41 = type metadata accessor for SessionService();
  v46 = *(v41[-1].Description + 1);
  v46(v1 + v25, v41);
  v26 = v2[29];
  v27 = type metadata accessor for SharePlayService();
  v45 = *(v27[-1].Description + 1);
  v45(v1 + v26, v27);
  v28 = v2[30];
  v29 = type metadata accessor for SiriService();
  v44 = *(v29[-1].Description + 1);
  v44(v1 + v28, v29);
  v30 = v2[31];
  v31 = type metadata accessor for SyncService();
  v43 = *(v31[-1].Description + 1);
  v43(v1 + v30, v31);

  v32 = v2[33];
  QueueService = type metadata accessor for UpNextQueueService();
  v42 = *(QueueService[-1].Description + 1);
  v42(v1 + v32, QueueService);
  __swift_destroy_boxed_opaque_existential_1((v1 + v2[34]));

  v34 = v2[36];
  v35 = type metadata accessor for WorkoutPlanService();
  v40 = *(v35[-1].Description + 1);
  v40(v1 + v34, v35);

  v36 = v89 + v96[7];

  v37 = v36 + *(type metadata accessor for AppDataItemResolver(0) + 24);
  swift_unknownObjectRelease();
  v90(v37 + v2[6], v91);
  v87(v37 + v2[7], v88);
  v85(v37 + v2[8], v86);
  v83(v37 + v2[9], v84);
  v81(v37 + v2[10], v82);
  v79(v37 + v2[11], v80);
  v77(v37 + v2[12], v78);
  v75(v37 + v2[13], v76);
  v73(v37 + v2[14], v74);
  v71(v37 + v2[15], v72);
  v69(v37 + v2[16], v70);
  v67(v37 + v2[17], v68);
  v65(v37 + v2[18], v66);
  v63(v37 + v2[19], v64);
  v61(v37 + v2[20], v62);
  v59(v37 + v2[21], v60);
  v57(v37 + v2[22], v58);
  v55(v37 + v2[23], v56);
  v53(v37 + v2[24], v54);
  v51(v37 + v2[25], v52);
  v49(v37 + v2[26], v50);
  v47(v37 + v2[27], v48);
  v46(v37 + v2[28], v41);
  v45(v37 + v2[29], v27);
  v44(v37 + v2[30], v29);
  v43(v37 + v2[31], v31);

  v42(v37 + v2[33], QueueService);
  __swift_destroy_boxed_opaque_existential_1((v37 + v2[34]));

  v40(v37 + v2[36], v35);
  swift_unknownObjectRelease();
  if (*(v89 + v96[9] + 8) >= 0xCuLL)
  {
  }

  v38 = (v89 + v96[10]);
  if (v38[3])
  {
    __swift_destroy_boxed_opaque_existential_1(v38);
  }

  __swift_destroy_boxed_opaque_existential_1((v95 + ((((v92 + v93 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)));

  return swift_deallocObject();
}

uint64_t sub_1E6272B58(uint64_t a1, char a2, uint64_t (*a3)(uint64_t, void, unint64_t, uint64_t, unint64_t))
{
  v6 = *(type metadata accessor for AppComposer(0) - 8);
  v7 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v8 = (*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v3 + v8);

  return a3(a1, a2 & 1, v3 + v7, v9, v3 + ((v8 + 15) & 0xFFFFFFFFFFFFFFF8));
}

uint64_t sub_1E6272C28(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1E6272C88()
{
  v1 = *(type metadata accessor for AppComposer(0) - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 17) & ~*(v1 + 80));

  return sub_1E650988C(v2, v3);
}

unint64_t sub_1E6272CEC()
{
  result = qword_1ED07A470;
  if (!qword_1ED07A470)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1ED077820, &qword_1E65F96A8);
    sub_1E6272D78();
    sub_1E5FEB170();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED07A470);
  }

  return result;
}

unint64_t sub_1E6272D78()
{
  result = qword_1ED077AF0;
  if (!qword_1ED077AF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1ED07A480, &qword_1E65F97F0);
    sub_1E6272E30();
    sub_1E5FED46C(qword_1EE2D85C0, &unk_1ED07A4B0, &unk_1E65FA7C0, &unk_1E65FB060);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED077AF0);
  }

  return result;
}

unint64_t sub_1E6272E30()
{
  result = qword_1ED077B00;
  if (!qword_1ED077B00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1ED07A490, &unk_1E65FA7B0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1ED077B10, &qword_1E65F97F8);
    sub_1E5FED46C(&unk_1ED07A4A0, &unk_1ED077B10, &qword_1E65F97F8, MEMORY[0x1E699D430]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED077B00);
  }

  return result;
}

uint64_t sub_1E6272F2C()
{
  v1 = *(type metadata accessor for AppComposer(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));
  v3 = *(v2 + *(v1 + 64));

  return sub_1E625CED4(v2, v3);
}

uint64_t sub_1E6272FC4(uint64_t (*a1)(uint64_t))
{
  v3 = *(type metadata accessor for AppComposer(0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  return sub_1E625DA00(v1 + v4, *(v1 + v5), *(v1 + v5 + 8), v1 + ((v5 + 23) & 0xFFFFFFFFFFFFFFF8), a1);
}

unint64_t sub_1E6273064()
{
  result = qword_1ED0771E0;
  if (!qword_1ED0771E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0770C8, &unk_1E65FA420);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1ED077B40, &qword_1E65F9808);
    sub_1E627312C();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0771E0);
  }

  return result;
}

unint64_t sub_1E627312C()
{
  result = qword_1ED0771E8;
  if (!qword_1ED0771E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1ED077B40, &qword_1E65F9808);
    sub_1E5FED46C(&unk_1ED077B50, &qword_1ED0771F0, &unk_1E65FA7E0, MEMORY[0x1E699D1A8]);
    sub_1E5FEB170();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0771E8);
  }

  return result;
}

uint64_t sub_1E62731E4(uint64_t a1)
{
  v4 = *(type metadata accessor for AppComposer(0) - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1E5DFE6BC;

  return sub_1E625CAB4(a1, v1 + v5);
}

uint64_t sub_1E62732C0()
{
  v2 = *(type metadata accessor for AppComposer(0) - 8);
  v3 = (*(v2 + 80) + 48) & ~*(v2 + 80);
  v4 = v3 + *(v2 + 64);
  v5 = v0[2];
  v6 = v0[3];
  v7 = v0[4];
  v8 = v0[5];
  v9 = v0 + (v4 & 0xFFFFFFFFFFFFFFF8);
  v10 = *(v9 + 1);
  v11 = *(v9 + 2);
  v12 = *(v0 + v4);
  v13 = swift_task_alloc();
  *(v1 + 16) = v13;
  *v13 = v1;
  v13[1] = sub_1E5DFE6BC;

  return sub_1E617344C(v5, v6, v7, v8, v0 + v3, v12, v10, v11);
}

uint64_t objectdestroy_157Tm()
{
  v93 = type metadata accessor for AppComposer(0);
  v92 = *(*(v93 - 1) + 80);

  swift_unknownObjectRelease();
  v89 = v0 + ((v92 + 48) & ~v92);

  v1 = v89 + v93[5];
  swift_unknownObjectRelease();
  v2 = type metadata accessor for AppEnvironment(0);
  v3 = v2[6];
  v91 = type metadata accessor for AccountService();
  v90 = *(v91[-1].Description + 1);
  v90(v1 + v3, v91);
  v4 = v2[7];
  v88 = type metadata accessor for AppStateService();
  v87 = *(v88[-1].Description + 1);
  v87(v1 + v4, v88);
  v5 = v2[8];
  v86 = type metadata accessor for ArchivedSessionService();
  v85 = *(v86[-1].Description + 1);
  v85(v1 + v5, v86);
  v6 = v2[9];
  v84 = type metadata accessor for AssetService();
  v83 = *(v84[-1].Description + 1);
  v83(v1 + v6, v84);
  v7 = v2[10];
  v82 = type metadata accessor for AwardsService();
  v81 = *(v82[-1].Description + 1);
  v81(v1 + v7, v82);
  v8 = v2[11];
  v80 = type metadata accessor for BookmarkService();
  v79 = *(v80[-1].Description + 1);
  v79(v1 + v8, v80);
  v9 = v2[12];
  v78 = type metadata accessor for CatalogService();
  v77 = *(v78[-1].Description + 1);
  v77(v1 + v9, v78);
  v10 = v2[13];
  v76 = type metadata accessor for ConfigurationService();
  v75 = *(v76[-1].Description + 1);
  v75(v1 + v10, v76);
  v11 = v2[14];
  v74 = type metadata accessor for ContentAvailabilityService();
  v73 = *(v74[-1].Description + 1);
  v73(v1 + v11, v74);
  v12 = v2[15];
  v72 = type metadata accessor for EngagementService();
  v71 = *(v72[-1].Description + 1);
  v71(v1 + v12, v72);
  v13 = v2[16];
  v70 = type metadata accessor for HealthDataService();
  v69 = *(v70[-1].Description + 1);
  v69(v1 + v13, v70);
  v14 = v2[17];
  v68 = type metadata accessor for InteropService();
  v67 = *(v68[-1].Description + 1);
  v67(v1 + v14, v68);
  v15 = v2[18];
  v66 = type metadata accessor for LocalizationService();
  v65 = *(v66[-1].Description + 1);
  v65(v1 + v15, v66);
  v16 = v2[19];
  v64 = type metadata accessor for MarketingService();
  v63 = *(v64[-1].Description + 1);
  v63(v1 + v16, v64);
  v17 = v2[20];
  v62 = type metadata accessor for MetricService();
  v61 = *(v62[-1].Description + 1);
  v61(v1 + v17, v62);
  v18 = v2[21];
  v60 = type metadata accessor for PersonalizationService();
  v59 = *(v60[-1].Description + 1);
  v59(v1 + v18, v60);
  v19 = v2[22];
  v58 = type metadata accessor for PlayerService();
  v57 = *(v58[-1].Description + 1);
  v57(v1 + v19, v58);
  v20 = v2[23];
  v56 = type metadata accessor for PrivacyPreferenceService();
  v55 = *(v56[-1].Description + 1);
  v55(v1 + v20, v56);
  v21 = v2[24];
  v54 = type metadata accessor for RecommendationService();
  v53 = *(v54[-1].Description + 1);
  v53(v1 + v21, v54);
  v22 = v2[25];
  v52 = type metadata accessor for RemoteBrowsingService();
  v51 = *(v52[-1].Description + 1);
  v51(v1 + v22, v52);
  v23 = v2[26];
  v50 = type metadata accessor for SearchService();
  v49 = *(v50[-1].Description + 1);
  v49(v1 + v23, v50);
  v24 = v2[27];
  v48 = type metadata accessor for ServiceSubscriptionService();
  v47 = *(v48[-1].Description + 1);
  v47(v1 + v24, v48);
  v25 = v2[28];
  v41 = type metadata accessor for SessionService();
  v46 = *(v41[-1].Description + 1);
  v46(v1 + v25, v41);
  v26 = v2[29];
  v27 = type metadata accessor for SharePlayService();
  v45 = *(v27[-1].Description + 1);
  v45(v1 + v26, v27);
  v28 = v2[30];
  v29 = type metadata accessor for SiriService();
  v44 = *(v29[-1].Description + 1);
  v44(v1 + v28, v29);
  v30 = v2[31];
  v31 = type metadata accessor for SyncService();
  v43 = *(v31[-1].Description + 1);
  v43(v1 + v30, v31);

  v32 = v2[33];
  QueueService = type metadata accessor for UpNextQueueService();
  v42 = *(QueueService[-1].Description + 1);
  v42(v1 + v32, QueueService);
  __swift_destroy_boxed_opaque_existential_1((v1 + v2[34]));

  v34 = v2[36];
  v35 = type metadata accessor for WorkoutPlanService();
  v40 = *(v35[-1].Description + 1);
  v40(v1 + v34, v35);

  v36 = v89 + v93[7];

  v37 = v36 + *(type metadata accessor for AppDataItemResolver(0) + 24);
  swift_unknownObjectRelease();
  v90(v37 + v2[6], v91);
  v87(v37 + v2[7], v88);
  v85(v37 + v2[8], v86);
  v83(v37 + v2[9], v84);
  v81(v37 + v2[10], v82);
  v79(v37 + v2[11], v80);
  v77(v37 + v2[12], v78);
  v75(v37 + v2[13], v76);
  v73(v37 + v2[14], v74);
  v71(v37 + v2[15], v72);
  v69(v37 + v2[16], v70);
  v67(v37 + v2[17], v68);
  v65(v37 + v2[18], v66);
  v63(v37 + v2[19], v64);
  v61(v37 + v2[20], v62);
  v59(v37 + v2[21], v60);
  v57(v37 + v2[22], v58);
  v55(v37 + v2[23], v56);
  v53(v37 + v2[24], v54);
  v51(v37 + v2[25], v52);
  v49(v37 + v2[26], v50);
  v47(v37 + v2[27], v48);
  v46(v37 + v2[28], v41);
  v45(v37 + v2[29], v27);
  v44(v37 + v2[30], v29);
  v43(v37 + v2[31], v31);

  v42(v37 + v2[33], QueueService);
  __swift_destroy_boxed_opaque_existential_1((v37 + v2[34]));

  v40(v37 + v2[36], v35);
  swift_unknownObjectRelease();
  if (*(v89 + v93[9] + 8) >= 0xCuLL)
  {
  }

  v38 = (v89 + v93[10]);
  if (v38[3])
  {
    __swift_destroy_boxed_opaque_existential_1(v38);
  }

  return swift_deallocObject();
}

uint64_t sub_1E62740F4(uint64_t a1)
{
  v4 = *(type metadata accessor for AppComposer(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1E5DFE6BC;

  return sub_1E61753E4(a1, v6, v7, v1 + v5);
}

unint64_t sub_1E6274228()
{
  result = qword_1ED077C80;
  if (!qword_1ED077C80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED073DA8, &unk_1E65FA550);
    sub_1E6071DCC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED077C80);
  }

  return result;
}

uint64_t sub_1E62742F0(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v4 = *(type metadata accessor for AppComposer(0) - 8);
  v5 = v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return a2(a1, v5);
}

uint64_t sub_1E6274384(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, unint64_t, unint64_t, unint64_t, uint64_t))
{
  v6 = *(type metadata accessor for AppComposer(0) - 8);
  v7 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v8 = (*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v8 + 47) & 0xFFFFFFFFFFFFFFF8;
  v10 = *(sub_1E65D76F8() - 8);
  v11 = v3 + ((v9 + *(v10 + 80) + 80) & ~*(v10 + 80));

  return a3(a1, a2, v3 + v7, v3 + v8, v3 + v9, v11);
}

uint64_t sub_1E62744A8(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for AppComposer(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

unint64_t sub_1E627451C()
{
  result = qword_1ED077210;
  if (!qword_1ED077210)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED077208, &qword_1E65F9848);
    sub_1E5FED46C(&qword_1ED077218, &qword_1ED077220, &qword_1E65F9850, MEMORY[0x1E699D630]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED077210);
  }

  return result;
}

unint64_t sub_1E62745D4()
{
  result = qword_1ED077230;
  if (!qword_1ED077230)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED077228, &unk_1E65FA8E0);
    sub_1E5FED46C(&qword_1ED077238, &qword_1ED077240, &qword_1E65F9858, MEMORY[0x1E699D598]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED077230);
  }

  return result;
}

unint64_t sub_1E627468C()
{
  result = qword_1ED077278;
  if (!qword_1ED077278)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0770B8, &unk_1E65FA400);
    sub_1E5FED46C(&qword_1ED077280, &qword_1ED077288, &qword_1E65F98E8, MEMORY[0x1E6981880]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED077278);
  }

  return result;
}

unint64_t sub_1E6274744()
{
  result = qword_1ED077290;
  if (!qword_1ED077290)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED076F58, &qword_1E65F8FA0);
    sub_1E5FED46C(&qword_1ED077298, &qword_1ED076F78, &qword_1E65F8FB0, &unk_1E65FE7C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED077290);
  }

  return result;
}

unint64_t sub_1E62747FC()
{
  result = qword_1ED0772A0;
  if (!qword_1ED0772A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED076FA0, &qword_1E65F90D0);
    sub_1E5FED46C(&qword_1ED0772A8, &qword_1ED076FD0, &qword_1E65F9118, &unk_1E65FE7C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0772A0);
  }

  return result;
}

unint64_t sub_1E62748B4()
{
  result = qword_1ED0772B8;
  if (!qword_1ED0772B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0772B0, &qword_1E65F98F0);
    sub_1E6274940();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0772B8);
  }

  return result;
}

unint64_t sub_1E6274940()
{
  result = qword_1ED0772C0;
  if (!qword_1ED0772C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0772C8, &qword_1E65F98F8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0772D0, &qword_1E65F9900);
    sub_1E5FED46C(&qword_1ED0772D8, &qword_1ED0772D0, &qword_1E65F9900, &unk_1E65FE7C0);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0772C0);
  }

  return result;
}

unint64_t sub_1E6274A3C()
{
  result = qword_1ED0772E8;
  if (!qword_1ED0772E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0772E0, &qword_1E65F9908);
    sub_1E5FED46C(&qword_1ED0772F0, &unk_1ED077DB0, &unk_1E65FAB30, &unk_1E65FE7C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0772E8);
  }

  return result;
}

char *sub_1E6274AF4(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, void *a5, void *a6, void *a7, uint64_t a8, char a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v15 = v14;
  v61 = a8;
  v62 = a7;
  v63 = a5;
  v64 = a6;
  v69 = a2;
  v70 = a4;
  ObjectType = swift_getObjectType();
  v68 = sub_1E65E43B8();
  *&v67 = *(v68 - 8);
  MEMORY[0x1EEE9AC00](v68);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0756B8, &qword_1E65F1C68);
  v19 = MEMORY[0x1EEE9AC00](v18 - 8);
  v21 = &v59 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v23 = &v59 - v22;
  v24 = &v15[qword_1EE2D9170];
  *(v24 + 1) = 0;
  v60 = v24;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  *&v15[qword_1EE2D91A8] = 0;
  *&v15[qword_1EE2D9130] = 0;
  v66 = a1;
  sub_1E5DFD1CC(a1, v23, &qword_1ED0756B8, &qword_1E65F1C68);
  v25 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077310, &qword_1E65F9928));
  sub_1E5DFD1CC(v23, v21, &qword_1ED0756B8, &qword_1E65F1C68);
  v26 = sub_1E65E4058();
  sub_1E5DFE50C(v23, &qword_1ED0756B8, &qword_1E65F1C68);
  *&v15[qword_1EE2D9180] = v26;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074278, &unk_1E65FBA70);
  v27 = swift_allocObject();
  v67 = xmmword_1E65EB9E0;
  *(v27 + 16) = xmmword_1E65EB9E0;
  v28 = v26;
  sub_1E65E4398();
  sub_1E65E43A8();
  v72 = v27;
  sub_1E6275330(&qword_1EE2D4BC0, MEMORY[0x1E697CC60], MEMORY[0x1E697CC68]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074280, &qword_1E65EFF70);
  sub_1E5FED46C(&qword_1EE2D4850, &qword_1ED074280, &qword_1E65EFF70, MEMORY[0x1E69E6328]);
  sub_1E65E6738();
  sub_1E65E4028();

  *&v15[qword_1EE2D9158] = v69;
  v72 = MEMORY[0x1E69E7CC0];
  if (!(a3 >> 62))
  {
    v29 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v29)
    {
      goto LABEL_3;
    }

LABEL_20:
    v31 = MEMORY[0x1E69E7CC0];
    goto LABEL_21;
  }

LABEL_19:
  v29 = sub_1E65E67C8();
  if (!v29)
  {
    goto LABEL_20;
  }

LABEL_3:
  v30 = 0;
  v31 = MEMORY[0x1E69E7CC0];
  do
  {
    v32 = v30;
    while (1)
    {
      if ((a3 & 0xC000000000000001) != 0)
      {
        v33 = MEMORY[0x1E694E2D0](v32, a3);
      }

      else
      {
        if (v32 >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_18;
        }

        v33 = *(a3 + 8 * v32 + 32);
      }

      v34 = v33;
      v30 = v32 + 1;
      if (__OFADD__(v32, 1))
      {
        __break(1u);
LABEL_18:
        __break(1u);
        goto LABEL_19;
      }

      type metadata accessor for BarButtonItem(0);
      if (swift_dynamicCastClass())
      {
        break;
      }

      ++v32;
      if (v30 == v29)
      {
        goto LABEL_21;
      }
    }

    MEMORY[0x1E694D8F0]();
    if (*((v72 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v72 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1E65E5F68();
    }

    sub_1E65E5FA8();
    v31 = v72;
  }

  while (v30 != v29);
LABEL_21:
  v59 = a13;
  *&v15[qword_1EE2D9140] = v31;
  v35 = qword_1EE2D9160;
  v36 = sub_1E65DEEA8();
  v37 = *(v36 - 8);
  v68 = v36;
  v69 = v37;
  (*(v37 + 16))(&v15[v35], v70, v36);
  v39 = v63;
  v38 = v64;
  *&v15[qword_1EE2D9188] = v63;
  *&v15[qword_1EE2D9198] = v38;
  v40 = &v15[qword_1EE2D9120];
  v41 = v61;
  v42 = v62;
  *v40 = v62;
  v40[1] = v41;
  v15[qword_1EE2D9118] = a9 & 1;
  *(v60 + 1) = a11;
  swift_unknownObjectWeakAssign();
  v43 = &v15[qword_1EE2D9108];
  *v43 = v59;
  v43[1] = a14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077258, &qword_1E65FBA80);
  swift_allocObject();
  v44 = v42;

  v45 = v39;
  v46 = v38;
  *&v15[qword_1EE2D9148] = sub_1E65E4D18();
  v71.receiver = v15;
  v71.super_class = ObjectType;
  v47 = objc_msgSendSuper2(&v71, sel_initWithNibName_bundle_, 0, 0);
  v48 = *&v47[qword_1EE2D9180];
  v49 = v47;
  v50 = [v48 navigationItem];
  sub_1E5DEF738(0, &unk_1EE2D4680, 0x1E69DC708);
  v51 = sub_1E65E5EF8();

  [v50 setRightBarButtonItems_];

  KeyPath = swift_getKeyPath();
  *(&v59 - 2) = MEMORY[0x1EEE9AC00](KeyPath);
  swift_getKeyPath();
  swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_1E5FED46C(&qword_1EE2D6590, &qword_1ED072618, qword_1E65FBAF0, MEMORY[0x1E699D8F8]);
  sub_1E65E4D08();

  sub_1E65E4CF8();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078260, &qword_1E65F98D0);
  v53 = swift_allocObject();
  *(v53 + 16) = v67;
  v54 = sub_1E65E3B98();
  v55 = MEMORY[0x1E69DC0A0];
  *(v53 + 32) = v54;
  *(v53 + 40) = v55;
  v56 = sub_1E65E3BA8();
  v57 = MEMORY[0x1E69DC2B0];
  *(v53 + 48) = v56;
  *(v53 + 56) = v57;
  sub_1E65E6388();

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  (*(v69 + 8))(v70, v68);
  sub_1E5DFE50C(v66, &qword_1ED0756B8, &qword_1E65F1C68);
  return v49;
}

uint64_t sub_1E6275330(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

char *sub_1E6275404(uint64_t a1, uint64_t a2, int a3, uint64_t a4, unint64_t a5, uint64_t a6, void *a7, void *a8, void *a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t *a17, uint64_t *a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  v22 = v21;
  v59 = a7;
  v60 = a8;
  v64 = a4;
  v65 = a6;
  LODWORD(v63) = a3;
  ObjectType = swift_getObjectType();
  v25 = sub_1E65E43B8();
  v62 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v26 = &v21[qword_1EE2D9170];
  *(v26 + 1) = 0;
  v58 = v26;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  *&v21[qword_1EE2D91A8] = 0;
  *&v21[qword_1EE2D9130] = 0;
  v27 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(a17, a18));
  v68 = a2;
  v69 = v63;
  v28 = sub_1E65E4058();
  *&v21[qword_1EE2D9180] = v28;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074278, &unk_1E65FBA70);
  v63 = xmmword_1E65EB9E0;
  *(swift_allocObject() + 16) = xmmword_1E65EB9E0;
  v29 = v28;
  sub_1E65E4398();
  sub_1E65E43A8();
  sub_1E6275330(&qword_1EE2D4BC0, MEMORY[0x1E697CC60], MEMORY[0x1E697CC68]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074280, &qword_1E65EFF70);
  sub_1E5FED46C(&qword_1EE2D4850, &qword_1ED074280, &qword_1E65EFF70, MEMORY[0x1E69E6328]);
  sub_1E65E6738();
  sub_1E65E4028();

  *&v21[qword_1EE2D9158] = v64;
  v67 = MEMORY[0x1E69E7CC0];
  if (!(a5 >> 62))
  {
    v30 = *((a5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v30)
    {
      goto LABEL_3;
    }

LABEL_20:
    v32 = MEMORY[0x1E69E7CC0];
    goto LABEL_21;
  }

LABEL_19:
  v30 = sub_1E65E67C8();
  if (!v30)
  {
    goto LABEL_20;
  }

LABEL_3:
  v31 = 0;
  v32 = MEMORY[0x1E69E7CC0];
  do
  {
    v33 = v31;
    while (1)
    {
      if ((a5 & 0xC000000000000001) != 0)
      {
        v34 = MEMORY[0x1E694E2D0](v33, a5);
      }

      else
      {
        if (v33 >= *((a5 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_18;
        }

        v34 = *(a5 + 8 * v33 + 32);
      }

      v35 = v34;
      v31 = v33 + 1;
      if (__OFADD__(v33, 1))
      {
        __break(1u);
LABEL_18:
        __break(1u);
        goto LABEL_19;
      }

      type metadata accessor for BarButtonItem(0);
      if (swift_dynamicCastClass())
      {
        break;
      }

      ++v33;
      if (v31 == v30)
      {
        goto LABEL_21;
      }
    }

    MEMORY[0x1E694D8F0]();
    if (*((v67 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v67 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1E65E5F68();
    }

    sub_1E65E5FA8();
    v32 = v67;
  }

  while (v31 != v30);
LABEL_21:
  v64 = a21;
  v56[2] = a19;
  v56[3] = a20;
  v56[0] = a15;
  v56[1] = a14;
  *&v22[qword_1EE2D9140] = v32;
  v36 = qword_1EE2D9160;
  v57 = sub_1E65DEEA8();
  v62 = *(v57 - 8);
  (*(v62 + 16))(&v22[v36], v65, v57);
  v37 = v59;
  v38 = v60;
  *&v22[qword_1EE2D9188] = v59;
  *&v22[qword_1EE2D9198] = v38;
  v39 = &v22[qword_1EE2D9120];
  *v39 = a9;
  v39[1] = a10;
  v22[qword_1EE2D9118] = a11 & 1;
  *(v58 + 1) = a13;
  swift_unknownObjectWeakAssign();
  v40 = &v22[qword_1EE2D9108];
  *v40 = v56[0];
  v40[1] = a16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077258, &qword_1E65FBA80);
  swift_allocObject();
  v41 = a9;

  v42 = v37;
  v43 = v38;
  *&v22[qword_1EE2D9148] = sub_1E65E4D18();
  v66.receiver = v22;
  v66.super_class = ObjectType;
  v44 = objc_msgSendSuper2(&v66, sel_initWithNibName_bundle_, 0, 0);
  v45 = *&v44[qword_1EE2D9180];
  v46 = v44;
  v47 = [v45 navigationItem];
  sub_1E5DEF738(0, &unk_1EE2D4680, 0x1E69DC708);
  v48 = sub_1E65E5EF8();

  [v47 setRightBarButtonItems_];

  KeyPath = swift_getKeyPath();
  v56[-2] = MEMORY[0x1EEE9AC00](KeyPath);
  swift_getKeyPath();
  swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_1E5FED46C(&qword_1EE2D6590, &qword_1ED072618, qword_1E65FBAF0, MEMORY[0x1E699D8F8]);
  sub_1E65E4D08();

  sub_1E65E4CF8();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078260, &qword_1E65F98D0);
  v50 = swift_allocObject();
  *(v50 + 16) = v63;
  v51 = sub_1E65E3B98();
  v52 = MEMORY[0x1E69DC0A0];
  *(v50 + 32) = v51;
  *(v50 + 40) = v52;
  v53 = sub_1E65E3BA8();
  v54 = MEMORY[0x1E69DC2B0];
  *(v50 + 48) = v53;
  *(v50 + 56) = v54;
  sub_1E65E6388();

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  (*(v62 + 8))(v65, v57);
  return v46;
}

uint64_t ToastService.publishToastAction.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t ToastService.actionStream.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t ToastService.requestToastDismissal.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_1E6275C18(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_1E6275C60(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t dispatch thunk of RouteDetourProtocol.resolveDetour(for:composer:display:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v17 = (*(a7 + 8) + **(a7 + 8));
  v15 = swift_task_alloc();
  *(v7 + 16) = v15;
  *v15 = v7;
  v15[1] = sub_1E5DFA78C;

  return v17(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t sub_1E6275E18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  v6[5] = type metadata accessor for PageMetricsClick(0);
  v6[6] = swift_task_alloc();
  v6[7] = sub_1E65DF618();
  v6[8] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E6275EE0, 0, 0);
}

uint64_t sub_1E6275EE0()
{
  sub_1E6276C38(v0[2], v0[8]);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v2 = v0[8];
  if (EnumCaseMultiPayload > 1)
  {
    v2 += *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077328, &qword_1E65F99C0) + 48);
    v35 = sub_1E65DF6C8();
  }

  else
  {
    if (!EnumCaseMultiPayload)
    {
      v4 = v0[5];
      v3 = v0[6];
      v5 = v0[3];
      v6 = v0[4];
      v7 = *v2;
      v8 = sub_1E65D9D78();
      (*(*(v8 - 8) + 56))(v3, 1, 1, v8);
      v9 = v4[5];
      v10 = *MEMORY[0x1E69CBAA0];
      v11 = sub_1E65D8C68();
      (*(*(v11 - 8) + 104))(v3 + v9, v10, v11);
      v12 = v4[6];
      v13 = sub_1E65D74E8();
      (*(*(v13 - 8) + 56))(v3 + v12, 1, 1, v13);
      v14 = v4[8];
      v15 = sub_1E65DA208();
      (*(*(v15 - 8) + 56))(v3 + v14, 1, 1, v15);
      v16 = sub_1E6462E80(v5, v7);
      v18 = v17;
      v19 = v4[14];
      v20 = *MEMORY[0x1E69CBCC8];
      v21 = sub_1E65D8F28();
      (*(*(v21 - 8) + 104))(v3 + v19, v20, v21);
      v22 = v4[15];
      v23 = *MEMORY[0x1E69CC488];
      v24 = sub_1E65D9908();
      v25 = *(v24 - 8);
      (*(v25 + 104))(v3 + v22, v23, v24);
      (*(v25 + 56))(v3 + v22, 0, 1, v24);
      v26 = MEMORY[0x1E69E7CC0];
      v27 = sub_1E6427784(MEMORY[0x1E69E7CC0]);
      *(v3 + v4[7]) = v26;
      v28 = (v3 + v4[9]);
      *v28 = 0;
      v28[1] = 0;
      v29 = (v3 + v4[10]);
      *v29 = 0;
      v29[1] = 0;
      *(v3 + v4[11]) = v27;
      v30 = (v3 + v4[12]);
      *v30 = 0;
      v30[1] = 0;
      v31 = (v3 + v4[13]);
      *v31 = v16;
      v31[1] = v18;
      v37 = (*(v6 + 48) + **(v6 + 48));
      v32 = swift_task_alloc();
      v0[9] = v32;
      *v32 = v0;
      v32[1] = sub_1E627632C;
      v33 = v0[6];

      return v37(v33);
    }

    v35 = sub_1E65DF658();
  }

  (*(*(v35 - 8) + 8))(v2, v35);

  v36 = v0[1];

  return v36();
}

uint64_t sub_1E627632C()
{
  *(*v1 + 80) = v0;

  if (v0)
  {
    v2 = sub_1E62764B8;
  }

  else
  {
    v2 = sub_1E6276440;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1E6276440()
{
  sub_1E5FC0990(*(v0 + 48));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E62764B8()
{
  sub_1E5FC0990(*(v0 + 48));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E6276534(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[2] = a4;
  v6[3] = a6;
  v7 = sub_1E65DF6C8();
  v6[4] = v7;
  v6[5] = *(v7 - 8);
  v6[6] = swift_task_alloc();
  v6[7] = type metadata accessor for PageMetricsClick(0);
  v6[8] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E6276624, 0, 0);
}

uint64_t sub_1E6276624()
{
  v1 = v0[2];
  v2 = v0[8];
  if (v1 >> 62)
  {

    v35 = v0[1];

    return v35();
  }

  else
  {
    v3 = v0[6];
    v4 = v0[7];
    v5 = v0[4];
    v6 = v0[5];
    v7 = v0[3];
    v8 = sub_1E65D9D78();
    (*(*(v8 - 8) + 56))(v2, 1, 1, v8);
    v9 = v4[5];
    v10 = *MEMORY[0x1E69CBAA0];
    v11 = sub_1E65D8C68();
    (*(*(v11 - 8) + 104))(v2 + v9, v10, v11);
    v12 = v4[6];
    v13 = sub_1E65D74E8();
    (*(*(v13 - 8) + 56))(v2 + v12, 1, 1, v13);
    v14 = v4[8];
    v15 = sub_1E65DA208();
    (*(*(v15 - 8) + 56))(v2 + v14, 1, 1, v15);
    (*(v6 + 104))(v3, *MEMORY[0x1E699E6E8], v5);
    v16 = sub_1E6462E80(v3, v1);
    v18 = v17;
    (*(v6 + 8))(v3, v5);
    v19 = v4[14];
    v20 = *MEMORY[0x1E69CBCC8];
    v21 = sub_1E65D8F28();
    (*(*(v21 - 8) + 104))(v2 + v19, v20, v21);
    v22 = v4[15];
    v23 = *MEMORY[0x1E69CC488];
    v24 = sub_1E65D9908();
    v25 = *(v24 - 8);
    (*(v25 + 104))(v2 + v22, v23, v24);
    (*(v25 + 56))(v2 + v22, 0, 1, v24);
    v26 = MEMORY[0x1E69E7CC0];
    v27 = sub_1E6427784(MEMORY[0x1E69E7CC0]);
    *(v2 + v4[7]) = v26;
    v28 = (v2 + v4[9]);
    *v28 = 0;
    v28[1] = 0;
    v29 = (v2 + v4[10]);
    *v29 = 0;
    v29[1] = 0;
    *(v2 + v4[11]) = v27;
    v30 = (v2 + v4[12]);
    *v30 = 0;
    v30[1] = 0;
    v31 = (v2 + v4[13]);
    *v31 = v16;
    v31[1] = v18;
    v36 = (*(v7 + 48) + **(v7 + 48));
    v32 = swift_task_alloc();
    v0[9] = v32;
    *v32 = v0;
    v32[1] = sub_1E6276A30;
    v33 = v0[8];

    return v36(v33);
  }
}

uint64_t sub_1E6276A30()
{
  *(*v1 + 80) = v0;

  if (v0)
  {
    v2 = sub_1E6276BBC;
  }

  else
  {
    v2 = sub_1E6276B44;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1E6276B44()
{
  sub_1E5FC0990(*(v0 + 64));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E6276BBC()
{
  sub_1E5FC0990(*(v0 + 64));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E6276C38(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E65DF618();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E6276C9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[8] = a3;
  v4[9] = v3;
  v4[6] = a1;
  v4[7] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0735D0, &unk_1E65ED670);
  v4[10] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072330, &qword_1E65EAB70);
  v4[11] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072340, &qword_1E65EA410);
  v4[12] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072338, qword_1E65EAB78);
  v4[13] = swift_task_alloc();
  v4[14] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0752C8, &unk_1E65F8500);
  v4[15] = swift_task_alloc();
  v5 = sub_1E65D8668();
  v4[16] = v5;
  v4[17] = *(v5 - 8);
  v4[18] = swift_task_alloc();
  v4[19] = swift_task_alloc();
  v4[20] = swift_task_alloc();
  v4[21] = swift_task_alloc();
  v4[22] = swift_task_alloc();
  v4[23] = swift_task_alloc();
  v4[24] = swift_task_alloc();
  v4[25] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0753C0, &unk_1E6606290);
  v4[26] = swift_task_alloc();
  v6 = sub_1E65D9658();
  v4[27] = v6;
  v4[28] = *(v6 - 8);
  v4[29] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E6276F64, 0, 0);
}

uint64_t sub_1E6276F64()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076DE0, &qword_1E65F84B0);
  sub_1E65E4C98();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    goto LABEL_17;
  }

  if (!EnumCaseMultiPayload)
  {
    (*(v0[28] + 32))(v0[29], v0[26], v0[27]);
    goto LABEL_6;
  }

  if (EnumCaseMultiPayload != 1)
  {
    sub_1E5DFE50C(v0[26], &qword_1ED0753C0, &unk_1E6606290);
LABEL_17:
    v66 = v0[6];
    v67 = sub_1E65D7A38();
    (*(*(v67 - 8) + 56))(v66, 1, 1, v67);
    goto LABEL_18;
  }

  v3 = v0[28];
  v2 = v0[29];
  v5 = v0[26];
  v4 = v0[27];
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0753C8, &qword_1E65F1A48) + 48);
  (*(v3 + 32))(v2, v5, v4);
  v7 = sub_1E65D76A8();
  (*(*(v7 - 8) + 8))(v5 + v6, v7);
LABEL_6:
  v8 = v0[24];
  v9 = v0[16];
  v10 = v0[17];
  v11 = v0[15];
  sub_1E65D9618();
  sub_1E65D85C8();
  v12 = *(v10 + 8);
  v12(v8, v9);
  v13 = sub_1E65D9678();
  v14 = (*(*(v13 - 8) + 48))(v11, 1, v13);
  sub_1E5DFE50C(v11, &qword_1ED0752C8, &unk_1E65F8500);
  v15 = v0[29];
  v76 = v0[27];
  v77 = v0[28];
  v16 = v0[16];
  v82 = v0[12];
  v78 = v0[10];
  v79 = v0[11];
  v81 = v0[8];
  v80 = v0[7];
  v83 = v0[6];
  if (v14 == 1)
  {
    v18 = v0[22];
    v17 = v0[23];
    v72 = v0[21];
    v75 = v0[20];
    v19 = v0[14];
    sub_1E65D9618();
    sub_1E65D8528();
    v12(v17, v16);
    v70 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077330, &qword_1E65F99D0) + 48);
    sub_1E65D9618();
    v20 = sub_1E65D8658();
    v22 = v21;
    v24 = v23;
    v12(v18, v16);
    sub_1E6277978(v20, v22, v24 & 1, v19);
    sub_1E5F87058(v20, v22, v24 & 1);
    v25 = sub_1E65D9648();
    v26 = sub_1E6277BA4(v25);
    LOBYTE(v22) = v27;

    if (v22)
    {
      v28 = 0;
    }

    else
    {
      v28 = v26;
    }

    *(v19 + v70) = v28;
    v29 = *MEMORY[0x1E69CBDE0];
    v30 = sub_1E65D8F38();
    v31 = *(v30 - 8);
    (*(v31 + 104))(v19, v29, v30);
    (*(v31 + 56))(v19, 0, 1, v30);
    sub_1E65D9618();
    sub_1E65D8538();
    v12(v72, v16);
    v32 = sub_1E65D74E8();
    (*(*(v32 - 8) + 56))(v82, 0, 1, v32);
    sub_1E65D9618();
    (*(v77 + 8))(v15, v76);
    v33 = sub_1E65D85B8();
    v35 = v34;
    v12(v75, v16);
    v0[4] = v33;
    v0[5] = v35;
    sub_1E65E5E58();
    v36 = sub_1E65D9908();
    (*(*(v36 - 8) + 56))(v79, 1, 1, v36);
    v37 = sub_1E65D9F88();
    (*(*(v37 - 8) + 56))(v78, 1, 1, v37);
    sub_1E5FA9D34(v80, v81);
    v38 = v83;
  }

  else
  {
    v73 = v0[21];
    v74 = v0[20];
    v40 = v0[18];
    v39 = v0[19];
    v41 = v0[16];
    v42 = v0[13];
    sub_1E65D9618();
    sub_1E65D8528();
    v12(v39, v41);
    v71 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077330, &qword_1E65F99D0) + 48);
    sub_1E65D9618();
    v43 = sub_1E65D8658();
    v45 = v44;
    v47 = v46;
    v12(v40, v41);
    sub_1E6277978(v43, v45, v47 & 1, v42);
    sub_1E5F87058(v43, v45, v47 & 1);
    v48 = sub_1E65D9648();
    v49 = sub_1E6277BA4(v48);
    LOBYTE(v40) = v50;

    if (v40)
    {
      v51 = 0;
    }

    else
    {
      v51 = v49;
    }

    *(v42 + v71) = v51;
    v52 = *MEMORY[0x1E69CBDE0];
    v53 = sub_1E65D8F38();
    v54 = *(v53 - 8);
    (*(v54 + 104))(v42, v52, v53);
    (*(v54 + 56))(v42, 0, 1, v53);
    sub_1E65D9618();
    sub_1E65D8538();
    v12(v73, v41);
    v55 = sub_1E65D74E8();
    (*(*(v55 - 8) + 56))(v82, 0, 1, v55);
    sub_1E65D9618();
    (*(v77 + 8))(v15, v76);
    v56 = sub_1E65D85B8();
    v58 = v57;
    v12(v74, v41);
    v0[2] = v56;
    v0[3] = v58;
    sub_1E65E5E58();
    v59 = *MEMORY[0x1E69CC498];
    v60 = sub_1E65D9908();
    v61 = *(v60 - 8);
    (*(v61 + 104))(v79, v59, v60);
    (*(v61 + 56))(v79, 0, 1, v60);
    v62 = *MEMORY[0x1E69CCA78];
    v63 = sub_1E65D9F88();
    v64 = *(v63 - 8);
    (*(v64 + 104))(v78, v62, v63);
    (*(v64 + 56))(v78, 0, 1, v63);
    sub_1E5FA9D34(v80, v81);
    v38 = v83;
  }

  sub_1E65D7A28();
  v65 = sub_1E65D7A38();
  (*(*(v65 - 8) + 56))(v38, 0, 1, v65);
LABEL_18:

  v68 = v0[1];

  return v68();
}

uint64_t sub_1E6277978@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077338, &qword_1E65F99D8);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v18 - v9;
  v19 = a1;
  v20 = a2;
  v21 = a3 & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0758E0, &qword_1E65F1FE8);
  sub_1E65D7FB8();
  if (HIBYTE(v18) >= 2u)
  {
    if (HIBYTE(v18) - 2 >= 2)
    {
      v16 = sub_1E65D88B8();
      v17 = *(v16 - 8);
      (*(v17 + 56))(v10, 1, 1, v16);
      return (*(v17 + 104))(a4, *MEMORY[0x1E69CB640], v16);
    }

    v11 = MEMORY[0x1E69CB638];
  }

  else
  {
    v11 = MEMORY[0x1E69CB630];
  }

  v12 = *v11;
  v13 = sub_1E65D88B8();
  v14 = *(v13 - 8);
  (*(v14 + 104))(v10, v12, v13);
  (*(v14 + 56))(v10, 0, 1, v13);
  return (*(v14 + 32))(a4, v10, v13);
}

uint64_t sub_1E6277BA4(uint64_t a1)
{
  v2 = sub_1E65DADF8();
  v3 = MEMORY[0x1EEE9AC00](v2);
  v5 = (&v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v3);
  v8 = &v14 - v7;
  v9 = *(a1 + 16);
  if (!v9)
  {
    return 0;
  }

  v10 = 0;
  v11 = a1 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
  v12 = *(v6 + 72);
  do
  {
    sub_1E6277CFC(v11, v8);
    sub_1E60EB82C(v8, v5);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v10 = *v5;
    }

    else
    {
      sub_1E6277D60(v5);
    }

    v11 += v12;
    --v9;
  }

  while (v9);
  return v10;
}

uint64_t sub_1E6277CFC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E65DADF8();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E6277D60(uint64_t a1)
{
  v2 = sub_1E65DADF8();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t getEnumTagSinglePayload for PresentationAction(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0x3FFF)
  {
    goto LABEL_17;
  }

  if (a2 + 49153 <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a2 + 49153 < 0xFF0000)
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
      return (*a1 | (v4 << 16)) - 49153;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 16)) - 49153;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 49153;
    }
  }

LABEL_17:
  v6 = (*a1 & 0xFE | (*a1 >> 15) | (*a1 >> 1) & 0x3F00) ^ 0x3FFF;
  if (v6 >= 0x3FFE)
  {
    v6 = -1;
  }

  return v6 + 1;
}

_WORD *storeEnumTagSinglePayload for PresentationAction(_WORD *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 49153 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 49153 < 0xFF0000)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0x3FFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0x3FFE)
  {
    v6 = ((a2 - 0x3FFF) >> 16) + 1;
    *result = a2 - 0x3FFF;
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        result[1] = v6;
      }

      else
      {
        *(result + 1) = v6;
      }
    }

    else if (v5)
    {
      *(result + 2) = v6;
    }

    return result;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_21;
      }

      return result;
    }

    result[1] = 0;
  }

  else if (v5)
  {
    *(result + 2) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_21:
    v7 = ((-a2 >> 1) & 0x1FFF) - (a2 << 13);
    *result = (4 * v7) & 0xFE00 | (2 * (v7 & 0x7F));
    return result;
  }

  if (a2)
  {
    goto LABEL_21;
  }

  return result;
}

uint64_t sub_1E6277F80(uint64_t a1)
{
  v3 = sub_1E65D76A8();
  MEMORY[0x1EEE9AC00](v3 - 8);
  v44 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = sub_1E65DA558();
  v5 = *(v43 - 8);
  MEMORY[0x1EEE9AC00](v43);
  v42 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_1E65DA2D8();
  v7 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v41);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a1 + 16);
  v11 = MEMORY[0x1E69E7CC0];
  if (!v10)
  {
    return v11;
  }

  v32 = v1;
  v50 = MEMORY[0x1E69E7CC0];
  sub_1E601BD9C(0, v10, 0);
  v11 = v50;
  v49 = a1 + 56;
  result = sub_1E65E6748();
  v13 = result;
  v14 = 0;
  v39 = v7;
  v40 = v5;
  v37 = v5 + 8;
  v38 = v5 + 16;
  v35 = a1;
  v36 = v7 + 32;
  v33 = a1 + 64;
  v34 = v10;
  while ((v13 & 0x8000000000000000) == 0 && v13 < 1 << *(a1 + 32))
  {
    if ((*(v49 + 8 * (v13 >> 6)) & (1 << v13)) == 0)
    {
      goto LABEL_21;
    }

    v45 = v14;
    v46 = *(a1 + 36);
    v47 = v13 >> 6;
    v17 = v40;
    v18 = *(a1 + 48) + *(v40 + 72) * v13;
    v19 = *(v40 + 16);
    v20 = v42;
    v48 = v11;
    v21 = v43;
    v19(v42, v18, v43);
    sub_1E65DA548();
    sub_1E65DA538();
    sub_1E65DA2C8();
    v22 = v21;
    v11 = v48;
    (*(v17 + 8))(v20, v22);
    v50 = v11;
    v24 = *(v11 + 16);
    v23 = *(v11 + 24);
    if (v24 >= v23 >> 1)
    {
      sub_1E601BD9C((v23 > 1), v24 + 1, 1);
      v11 = v50;
    }

    *(v11 + 16) = v24 + 1;
    result = (*(v39 + 32))(v11 + ((*(v39 + 80) + 32) & ~*(v39 + 80)) + *(v39 + 72) * v24, v9, v41);
    a1 = v35;
    v15 = 1 << *(v35 + 32);
    if (v13 >= v15)
    {
      goto LABEL_22;
    }

    v25 = *(v49 + 8 * v47);
    if ((v25 & (1 << v13)) == 0)
    {
      goto LABEL_23;
    }

    if (v46 != *(v35 + 36))
    {
      goto LABEL_24;
    }

    v26 = v25 & (-2 << (v13 & 0x3F));
    if (v26)
    {
      v15 = __clz(__rbit64(v26)) | v13 & 0x7FFFFFFFFFFFFFC0;
      v16 = v34;
    }

    else
    {
      v27 = v47 << 6;
      v28 = v47 + 1;
      v16 = v34;
      v29 = (v33 + 8 * v47);
      while (v28 < (v15 + 63) >> 6)
      {
        v31 = *v29++;
        v30 = v31;
        v27 += 64;
        ++v28;
        if (v31)
        {
          result = sub_1E5F87098(v13, v46, 0);
          v15 = __clz(__rbit64(v30)) + v27;
          goto LABEL_4;
        }
      }

      result = sub_1E5F87098(v13, v46, 0);
    }

LABEL_4:
    v14 = v45 + 1;
    v13 = v15;
    if (v45 + 1 == v16)
    {
      return v11;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

uint64_t sub_1E62783AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = sub_1E65D8668();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();
  v5 = sub_1E65D9658();
  v3[8] = v5;
  v3[9] = *(v5 - 8);
  v3[10] = swift_task_alloc();
  v6 = sub_1E65D9EA8();
  v3[11] = v6;
  v3[12] = *(v6 - 8);
  v3[13] = swift_task_alloc();
  v7 = sub_1E65D9C48();
  v3[14] = v7;
  v3[15] = *(v7 - 8);
  v3[16] = swift_task_alloc();
  v8 = sub_1E65D9FF8();
  v3[17] = v8;
  v3[18] = *(v8 - 8);
  v3[19] = swift_task_alloc();
  v3[20] = type metadata accessor for RouteResource(0);
  v3[21] = swift_task_alloc();
  v9 = sub_1E65DB718();
  v3[22] = v9;
  v3[23] = *(v9 - 8);
  v3[24] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E627866C, 0, 0);
}

uint64_t sub_1E627866C()
{
  sub_1E62796F0(*(v0 + 24), *(v0 + 168), type metadata accessor for RouteResource);
  if (swift_getEnumCaseMultiPayload() == 14)
  {
    (*(*(v0 + 184) + 32))(*(v0 + 192), *(v0 + 168), *(v0 + 176));
    *(v0 + 288) = *(type metadata accessor for AppComposer(0) + 20);
    *(v0 + 200) = type metadata accessor for AppEnvironment(0);
    active = RemoteBrowsingService.requireActiveEnvironment.getter();
    *(v0 + 208) = v2;
    v9 = (active + *active);
    v3 = swift_task_alloc();
    *(v0 + 216) = v3;
    *v3 = v0;
    v3[1] = sub_1E62788B0;
    v4 = *(v0 + 152);

    return v9(v4);
  }

  else
  {
    v6 = *(v0 + 16);
    v7 = *(v0 + 24);
    sub_1E62386D4(*(v0 + 168));
    sub_1E62796F0(v7, v6, type metadata accessor for RouteDestination);

    v8 = *(v0 + 8);

    return v8();
  }
}

uint64_t sub_1E62788B0()
{
  *(*v1 + 224) = v0;

  if (v0)
  {

    v2 = sub_1E6279324;
  }

  else
  {
    v2 = sub_1E62789CC;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1E62789CC()
{

  sub_1E65D9FA8();
  sub_1E65D9FB8();
  v1 = sub_1E65D9FC8();
  v2 = sub_1E6277F80(v1);

  sub_1E65DB6C8();
  sub_1E600A4E8(v2);

  sub_1E65DB6E8();
  sub_1E65DB6F8();
  sub_1E65D9C38();
  started = SiriService.evaluateStartWorkoutRequest.getter();
  v0[29] = v4;
  v9 = (started + *started);
  v5 = swift_task_alloc();
  v0[30] = v5;
  *v5 = v0;
  v5[1] = sub_1E6278BA4;
  v6 = v0[16];
  v7 = v0[13];

  return v9(v7, v6);
}

uint64_t sub_1E6278BA4()
{
  *(*v1 + 248) = v0;

  if (v0)
  {

    v2 = sub_1E6279400;
  }

  else
  {
    v2 = sub_1E6278CC0;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1E6278CC0()
{

  v1 = CatalogService.fetchRemoteCatalogWorkoutDetail.getter();
  v0[32] = v2;
  v3 = sub_1E65D9E88();
  v5 = v4;
  v0[33] = v4;
  v9 = (v1 + *v1);
  v6 = swift_task_alloc();
  v0[34] = v6;
  *v6 = v0;
  v6[1] = sub_1E6278E0C;
  v7 = v0[10];

  return v9(v7, v3, v5);
}

uint64_t sub_1E6278E0C()
{
  *(*v1 + 280) = v0;

  if (v0)
  {

    v2 = sub_1E6279510;
  }

  else
  {

    v2 = sub_1E6278F70;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1E6278F70()
{
  v1 = sub_1E65D9E98();
  if ((v2 & 1) == 0)
  {
    v3 = v1;
    v5 = v0[6];
    v4 = v0[7];
    v6 = v0[5];
    sub_1E65D9618();
    v7 = sub_1E65D8658();
    v9 = v8;
    v11 = v10;
    (*(v5 + 8))(v4, v6);
    if (v11)
    {
      v44 = v0[22];
      v46 = v0[24];
      v40 = v0[19];
      v42 = v0[23];
      v12 = v0[18];
      v13 = v0[15];
      v37 = v0[16];
      v38 = v0[17];
      v14 = v0[13];
      v15 = v0[12];
      v35 = v0[11];
      v36 = v0[14];
      v16 = v0[9];
      v34 = v0[10];
      v33 = v0[8];
      v17 = v0[2];
      v18 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077900, &unk_1E65EA7E0) + 112);
      *v17 = 0;
      *(v17 + 8) = 0;
      *(v17 + 16) = sub_1E65D9E88();
      *(v17 + 24) = v19;
      *(v17 + 32) = v3;
      *(v17 + 40) = v7;
      v20 = sub_1E65D96F8();
      (*(*(v20 - 8) + 56))(v17 + v18, 1, 1, v20);
      *(v17 + 48) = 0;
      swift_storeEnumTagMultiPayload();
      v21 = type metadata accessor for RouteDestination(0);
      type metadata accessor for RouteSource(0);
      swift_storeEnumTagMultiPayload();
      (*(v16 + 8))(v34, v33);
      (*(v15 + 8))(v14, v35);
      (*(v13 + 8))(v37, v36);
      (*(v12 + 8))(v40, v38);
      (*(v42 + 8))(v46, v44);
      *(v17 + *(v21 + 24)) = MEMORY[0x1E69E7CD0];

      v22 = v0[1];
      goto LABEL_6;
    }

    sub_1E5F87058(v7, v9, 0);
  }

  v23 = v0[18];
  v43 = v0[17];
  v45 = v0[19];
  v24 = v0[15];
  v39 = v0[14];
  v41 = v0[16];
  v25 = v0[12];
  v26 = v0[13];
  v28 = v0[10];
  v27 = v0[11];
  v29 = v0[8];
  v30 = v0[9];
  sub_1E6279758();
  swift_allocError();
  *v31 = 1;
  swift_willThrow();
  (*(v30 + 8))(v28, v29);
  (*(v25 + 8))(v26, v27);
  (*(v24 + 8))(v41, v39);
  (*(v23 + 8))(v45, v43);
  (*(v0[23] + 8))(v0[24], v0[22]);

  v22 = v0[1];
LABEL_6:

  return v22();
}

uint64_t sub_1E6279324()
{
  (*(v0[23] + 8))(v0[24], v0[22]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1E6279400()
{
  v2 = v0[18];
  v1 = v0[19];
  v3 = v0[17];
  (*(v0[15] + 8))(v0[16], v0[14]);
  (*(v2 + 8))(v1, v3);
  (*(v0[23] + 8))(v0[24], v0[22]);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1E6279510()
{
  v2 = v0[18];
  v1 = v0[19];
  v4 = v0[16];
  v3 = v0[17];
  v5 = v0[14];
  v6 = v0[15];
  (*(v0[12] + 8))(v0[13], v0[11]);
  (*(v6 + 8))(v4, v5);
  (*(v2 + 8))(v1, v3);
  (*(v0[23] + 8))(v0[24], v0[22]);

  v7 = v0[1];

  return v7();
}

uint64_t sub_1E6279640(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1E5DFA78C;

  return sub_1E62783AC(a1, a2, a3);
}

uint64_t sub_1E62796F0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_1E6279758()
{
  result = qword_1ED077340;
  if (!qword_1ED077340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED077340);
  }

  return result;
}

unint64_t sub_1E62797D0()
{
  result = qword_1ED077348;
  if (!qword_1ED077348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED077348);
  }

  return result;
}

void sub_1E6279824(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

uint64_t sub_1E627988C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0726C8, &qword_1E66094D0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v19 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0735B0, &qword_1E65EA000);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v19 - v12;
  v14 = sub_1E65E60A8();
  (*(*(v14 - 8) + 56))(v13, 1, 1, v14);
  (*(v7 + 16))(v10, a1, v6);
  v15 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = 0;
  *(v16 + 24) = 0;
  (*(v7 + 32))(v16 + v15, v10, v6);
  v17 = (v16 + ((v8 + v15 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v17 = a2;
  v17[1] = a3;
  swift_unknownObjectRetain();
  sub_1E64B80F8(0, 0, v13, &unk_1E65F9C10, v16);
}

uint64_t sub_1E6279A94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[9] = a5;
  v6[10] = a6;
  v6[8] = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0726C8, &qword_1E66094D0);
  v6[11] = v7;
  v8 = *(v7 - 8);
  v6[12] = v8;
  v6[13] = *(v8 + 64);
  v6[14] = swift_task_alloc();
  sub_1E65D7848();
  v6[15] = swift_task_alloc();
  sub_1E65E5C28();
  v6[16] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E6279BC4, 0, 0);
}

uint64_t sub_1E6279BC4()
{
  sub_1E65E5BA8();
  type metadata accessor for LocalizationBundle();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v0[17] = ObjCClassFromMetadata;
  v2 = objc_opt_self();
  v0[18] = v2;
  v3 = [v2 bundleForClass_];
  sub_1E65D77C8();
  v0[19] = sub_1E65E5CD8();
  v0[20] = v4;
  sub_1E65E5BA8();
  v5 = [v2 bundleForClass_];
  sub_1E65D77C8();
  v0[21] = sub_1E65E5CD8();
  v0[22] = v6;
  v0[23] = sub_1E65E6058();
  v0[24] = sub_1E65E6048();
  v8 = sub_1E65E5FC8();

  return MEMORY[0x1EEE6DFA0](sub_1E6279D80, v8, v7);
}

uint64_t sub_1E6279D80()
{

  v1 = sub_1E65E5C48();

  v2 = sub_1E65E5C48();

  *(v0 + 200) = [objc_opt_self() alertControllerWithTitle:v1 message:v2 preferredStyle:1];

  return MEMORY[0x1EEE6DFA0](sub_1E6279E60, 0, 0);
}

uint64_t sub_1E6279E60()
{
  v2 = v0[17];
  v1 = v0[18];
  v3 = v0[14];
  v4 = v0[11];
  v5 = v0[12];
  v6 = v0[8];
  sub_1E65E5BA8();
  v7 = [v1 bundleForClass_];
  sub_1E65D77C8();
  v0[26] = sub_1E65E5CD8();
  v0[27] = v8;
  (*(v5 + 16))(v3, v6, v4);
  v9 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v10 = swift_allocObject();
  v0[28] = v10;
  (*(v5 + 32))(v10 + v9, v3, v4);
  v0[29] = sub_1E65E6048();
  v12 = sub_1E65E5FC8();

  return MEMORY[0x1EEE6DFA0](sub_1E6279FE8, v12, v11);
}

uint64_t sub_1E6279FE8()
{
  v1 = v0[28];

  v2 = sub_1E65E5C48();

  v0[6] = sub_1E627EAB0;
  v0[7] = v1;
  v0[2] = MEMORY[0x1E69E9820];
  v0[3] = 1107296256;
  v0[4] = sub_1E6279824;
  v0[5] = &block_descriptor_9;
  v3 = _Block_copy(v0 + 2);

  v0[30] = [objc_opt_self() actionWithTitle:v2 style:1 handler:v3];
  _Block_release(v3);

  return MEMORY[0x1EEE6DFA0](sub_1E627A11C, 0, 0);
}

uint64_t sub_1E627A11C(uint64_t a1)
{
  *(v1 + 248) = sub_1E65E6048();
  v3 = sub_1E65E5FC8();

  return MEMORY[0x1EEE6DFA0](sub_1E627A1A8, v3, v2);
}

uint64_t sub_1E627A1A8()
{
  v1 = *(v0 + 240);
  v2 = *(v0 + 200);

  [v2 addAction_];

  return MEMORY[0x1EEE6DFA0](sub_1E627A228, 0, 0);
}

uint64_t sub_1E627A228()
{
  v1 = v0[25];
  v10 = v0[10];
  ObjectType = swift_getObjectType();
  v3 = swift_allocObject();
  v0[32] = v3;
  *(v3 + 16) = v1;
  v4 = *(v10 + 24);
  v5 = v1;
  v9 = (v4 + *v4);
  v6 = swift_task_alloc();
  v0[33] = v6;
  *v6 = v0;
  v6[1] = sub_1E627A394;
  v7 = v0[10];

  return v9(sub_1E5FB7C38, v3, ObjectType, v7);
}

uint64_t sub_1E627A394()
{

  return MEMORY[0x1EEE6DFA0](sub_1E627A4AC, 0, 0);
}

uint64_t sub_1E627A4AC()
{
  v1 = *(v0 + 200);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1E627A53C()
{
  v0 = sub_1E65D8018();
  sub_1E627F2D8(&qword_1ED077378, 255, MEMORY[0x1E69CB200], MEMORY[0x1E69CB208]);
  swift_allocError();
  (*(*(v0 - 8) + 104))(v1, *MEMORY[0x1E69CB1F8], v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0726C8, &qword_1E66094D0);
  return sub_1E65E5FE8();
}

uint64_t type metadata accessor for RemoteDisplayDetour.State(uint64_t a1)
{
  result = qword_1ED077358;
  if (!qword_1ED077358)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1E627A6D8(uint64_t a1)
{
  sub_1E627A730(319);
  v2 = v1;
  if (v3 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v2;
}

void sub_1E627A730(uint64_t a1)
{
  if (!qword_1ED077368)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0726C8, &qword_1E66094D0);
    type metadata accessor for AppEnvironment(255);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED071EE8, &qword_1E65F59D0);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &qword_1ED077368);
    }
  }
}

uint64_t sub_1E627A87C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[6] = a5;
  v6[7] = v5;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  type metadata accessor for RemoteDisplayDetour.State(0);
  v6[8] = swift_task_alloc();
  v6[9] = type metadata accessor for RouteResource(0);
  v6[10] = swift_task_alloc();
  v7 = sub_1E65D74E8();
  v6[11] = v7;
  v6[12] = *(v7 - 8);
  v6[13] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E627A9A0, 0, 0);
}

uint64_t sub_1E627A9A0()
{
  sub_1E627E900(v0[3], v0[10], type metadata accessor for RouteResource);
  if (swift_getEnumCaseMultiPayload() == 19)
  {
    v1 = v0[7];
    v2 = v0[8];
    (*(v0[12] + 32))(v0[13], v0[10], v0[11]);
    v3 = *(v1 + 24);
    v4 = *(*v3 + *MEMORY[0x1E69E6B68] + 16);
    v5 = (*(*v3 + 48) + 3) & 0x1FFFFFFFCLL;
    os_unfair_lock_lock((v3 + v5));
    sub_1E627E900(v3 + v4, v2, type metadata accessor for RemoteDisplayDetour.State);
    os_unfair_lock_unlock((v3 + v5));
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077350, &qword_1E65F9B38);
    LODWORD(v3) = (*(*(v6 - 8) + 48))(v2, 1, v6);
    sub_1E627ECF0(v2, type metadata accessor for RemoteDisplayDetour.State);
    if (v3 == 1)
    {
      v7 = v0[4];
      v8 = *(type metadata accessor for AppComposer(0) + 20);
      v9 = swift_task_alloc();
      v0[14] = v9;
      *v9 = v0;
      v9[1] = sub_1E627ACA4;
      v10 = v0[5];
      v11 = v0[6];

      return sub_1E627E224(v7 + v8, v10, v11);
    }

    sub_1E627E1D0();
    swift_allocError();
    *v16 = 0;
    swift_willThrow();
    (*(v0[12] + 8))(v0[13], v0[11]);

    v15 = v0[1];
  }

  else
  {
    v14 = v0[2];
    v13 = v0[3];
    sub_1E627ECF0(v0[10], type metadata accessor for RouteResource);
    sub_1E627E900(v13, v14, type metadata accessor for RouteDestination);

    v15 = v0[1];
  }

  return v15();
}

uint64_t sub_1E627ACA4()
{
  v2 = *v1;
  v2[15] = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1E627B1E8, 0, 0);
  }

  else
  {
    v8 = v2[6];
    ObjectType = swift_getObjectType();
    v7 = (*(v8 + 24) + **(v8 + 24));
    v4 = swift_task_alloc();
    v2[16] = v4;
    *v4 = v2;
    v4[1] = sub_1E627AEBC;
    v5 = v2[6];

    return v7(nullsub_1, 0, ObjectType, v5);
  }
}

uint64_t sub_1E627AEBC()
{

  return MEMORY[0x1EEE6DFA0](sub_1E627AFB8, 0, 0);
}

uint64_t sub_1E627AFB8()
{
  v1 = *(v0 + 104);
  v3 = *(v0 + 48);
  v2 = *(v0 + 56);
  v4 = *(v0 + 24);
  v5 = swift_task_alloc();
  *(v0 + 136) = v5;
  v6 = *(v0 + 32);
  *(v5 + 16) = v2;
  *(v5 + 24) = v6;
  *(v5 + 40) = v3;
  *(v5 + 48) = v1;
  *(v5 + 56) = v4;
  v7 = swift_task_alloc();
  *(v0 + 144) = v7;
  *v7 = v0;
  v7[1] = sub_1E627B0CC;
  v8 = *(v0 + 56);
  v9 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DE18](v7, &unk_1E65F9BF8, v5, sub_1E627E8A4, v8, 0, 0, v9);
}

uint64_t sub_1E627B0CC()
{
  *(*v1 + 152) = v0;

  if (v0)
  {
    v2 = sub_1E627B354;
  }

  else
  {

    v2 = sub_1E627B284;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1E627B1E8()
{
  (*(v0[12] + 8))(v0[13], v0[11]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1E627B284()
{
  sub_1E5FAA54C();
  swift_allocError();
  *v1 = 3;
  swift_willThrow();
  (*(v0[12] + 8))(v0[13], v0[11]);

  v2 = v0[1];

  return v2();
}

uint64_t sub_1E627B354()
{

  (*(v0[12] + 8))(v0[13], v0[11]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1E627B3F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[7] = a6;
  v7[8] = a7;
  v7[5] = a4;
  v7[6] = a5;
  v7[3] = a2;
  v7[4] = a3;
  v7[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1E627B424, 0, 0);
}

uint64_t sub_1E627B424()
{
  v1 = swift_task_alloc();
  *(v0 + 72) = v1;
  v2 = *(v0 + 40);
  v3 = *(v0 + 56);
  v1[1] = *(v0 + 24);
  v1[2] = v2;
  v1[3] = v3;
  v4 = swift_task_alloc();
  *(v0 + 80) = v4;
  *v4 = v0;
  v4[1] = sub_1E627B524;
  v5 = *(v0 + 16);
  v6 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DE38](v5, 0, 0, 0xD000000000000024, 0x80000001E66103D0, sub_1E627E8C8, v1, v6);
}

uint64_t sub_1E627B524()
{
  v2 = *v1;
  *(v2 + 88) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1E61244C0, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

void sub_1E627B660(uint64_t a1, uint64_t a2)
{
  if (qword_1EE2D7790 != -1)
  {
    swift_once();
  }

  v3 = sub_1E65E3B68();
  __swift_project_value_buffer(v3, qword_1EE2EA2A0);
  v4 = sub_1E65E3B18();
  v5 = *(a2 + 24);
  MEMORY[0x1EEE9AC00](v4);
  v6 = *(*v5 + *MEMORY[0x1E69E6B68] + 16);
  v7 = (*(*v5 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v5 + v7));
  sub_1E627E8D8(v5 + v6);
  os_unfair_lock_unlock((v5 + v7));
}

uint64_t sub_1E627B7D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v33 = a6;
  v34 = a8;
  v37 = a7;
  v31 = a3;
  v32 = a5;
  v11 = type metadata accessor for RouteSource(0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1E65E5238();
  v35 = *(v14 - 8);
  v36 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E627ECF0(a1, type metadata accessor for RemoteDisplayDetour.State);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077350, &qword_1E65F9B38);
  v18 = *(v17 + 48);
  v19 = (a1 + *(v17 + 64));
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0726C8, &qword_1E66094D0);
  (*(*(v20 - 8) + 16))(a1, a2, v20);
  v21 = type metadata accessor for AppComposer(0);
  sub_1E627E900(v31 + *(v21 + 20), a1 + v18, type metadata accessor for AppEnvironment);
  v22 = v32;
  *v19 = a4;
  v19[1] = v22;
  (*(*(v17 - 8) + 56))(a1, 0, 1, v17);
  v23 = type metadata accessor for RouteDestination(0);
  sub_1E627E900(v34 + *(v23 + 20), v13, type metadata accessor for RouteSource);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 4)
  {
    v25 = v36;
    v26 = v35;
    swift_unknownObjectRetain();
    goto LABEL_10;
  }

  if (EnumCaseMultiPayload > 1)
  {
    v26 = v35;
    v25 = v36;
    if (EnumCaseMultiPayload != 2 && EnumCaseMultiPayload != 3)
    {
      v27 = sub_1E65D8D48();
      v28 = *(*(v27 - 8) + 8);
      swift_unknownObjectRetain();
      v28(v13, v27);
LABEL_10:
      (*(v26 + 104))(v16, *MEMORY[0x1E69CD740], v25);
      goto LABEL_11;
    }

LABEL_9:
    swift_unknownObjectRetain();
    sub_1E627ECF0(v13, type metadata accessor for RouteSource);
    goto LABEL_10;
  }

  v26 = v35;
  v25 = v36;
  if (EnumCaseMultiPayload)
  {
    goto LABEL_9;
  }

  (*(v35 + 104))(v16, *MEMORY[0x1E69CD748], v36);
  swift_unknownObjectRetain();
  sub_1E627ECF0(v13, type metadata accessor for RouteSource);
LABEL_11:
  sub_1E65E54C8();
  return (*(v26 + 8))(v16, v25);
}

uint64_t sub_1E627BBB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_1E5DFA78C;

  return sub_1E627A87C(a1, a2, a3, a4, a5);
}

uint64_t sub_1E627BC84(uint64_t a1)
{
  v2 = type metadata accessor for RemoteDisplayDetour.State(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0726C8, &qword_1E66094D0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v16 - v7;
  sub_1E627E900(a1, v4, type metadata accessor for RemoteDisplayDetour.State);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077350, &qword_1E65F9B38);
  v10 = *(v9 - 8);
  if ((*(v10 + 48))(v4, 1, v9) == 1)
  {
    return sub_1E627ECF0(v4, type metadata accessor for RemoteDisplayDetour.State);
  }

  sub_1E627ECF0(a1, type metadata accessor for RemoteDisplayDetour.State);
  v12 = *(v9 + 48);
  swift_unknownObjectRelease();
  (*(v6 + 32))(v8, v4, v5);
  sub_1E627ECF0(&v4[v12], type metadata accessor for AppEnvironment);
  if (qword_1EE2D7790 != -1)
  {
    swift_once();
  }

  v13 = sub_1E65E3B68();
  __swift_project_value_buffer(v13, qword_1EE2EA2A0);
  sub_1E65E3B18();
  (*(v10 + 56))(a1, 1, 1, v9);
  sub_1E627E1D0();
  v14 = swift_allocError();
  *v15 = 2;
  v16[1] = v14;
  sub_1E65E5FE8();
  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1E627BF90(uint64_t a1)
{
  v2 = type metadata accessor for RemoteDisplayDetour.State(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E627E900(a1, v4, type metadata accessor for RemoteDisplayDetour.State);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077350, &qword_1E65F9B38);
  if ((*(*(v5 - 8) + 48))(v4, 1, v5) == 1)
  {
    return sub_1E627ECF0(v4, type metadata accessor for RemoteDisplayDetour.State);
  }

  v7 = *&v4[*(v5 + 64) + 8];
  sub_1E627ECF0(&v4[*(v5 + 48)], type metadata accessor for AppEnvironment);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0726C8, &qword_1E66094D0);
  (*(*(v8 - 8) + 8))(v4, v8);
  if (qword_1EE2D7790 != -1)
  {
    swift_once();
  }

  v9 = sub_1E65E3B68();
  __swift_project_value_buffer(v9, qword_1EE2EA2A0);
  sub_1E65E3B18();
  ObjectType = swift_getObjectType();
  (*(v7 + 8))(ObjectType, v7);
  return swift_unknownObjectRelease();
}

uint64_t sub_1E627C1B8(uint64_t a1)
{
  v3 = type metadata accessor for RemoteDisplayDetour.State(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0726C8, &qword_1E66094D0);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v18 - v8;
  sub_1E627E900(a1, v5, type metadata accessor for RemoteDisplayDetour.State);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077350, &qword_1E65F9B38);
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v5, 1, v10) == 1)
  {
    return sub_1E627ECF0(v5, type metadata accessor for RemoteDisplayDetour.State);
  }

  v18[1] = v1;
  sub_1E627ECF0(a1, type metadata accessor for RemoteDisplayDetour.State);
  v13 = *(v10 + 48);
  v18[0] = *&v5[*(v10 + 64) + 8];
  (*(v7 + 32))(v9, v5, v6);
  sub_1E627ECF0(&v5[v13], type metadata accessor for AppEnvironment);
  if (qword_1EE2D7790 != -1)
  {
    swift_once();
  }

  v14 = sub_1E65E3B68();
  __swift_project_value_buffer(v14, qword_1EE2EA2A0);
  sub_1E65E3B18();
  (*(v11 + 56))(a1, 1, 1, v10);
  sub_1E627E1D0();
  v15 = swift_allocError();
  *v16 = 2;
  v18[3] = v15;
  sub_1E65E5FE8();
  ObjectType = swift_getObjectType();
  (*(v18[0] + 16))(ObjectType);
  swift_unknownObjectRelease();
  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_1E627C500(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  v7 = *(a3 + 24);
  v8 = *(*v7 + *MEMORY[0x1E69E6B68] + 16);
  v9 = (*(*v7 + 48) + 3) & 0x1FFFFFFFCLL;

  os_unfair_lock_lock((v7 + v9));
  sub_1E627EEAC(v7 + v8);
  os_unfair_lock_unlock((v7 + v9));
}

void sub_1E627C61C(uint64_t a1, void (*a2)(void *, uint64_t), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v30 = a6;
  v31 = a8;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0735B0, &qword_1E65EA000);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v29 - v16;
  v18 = type metadata accessor for RemoteDisplayDetour.State(0);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v20 = &v29 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E627E900(a1, v20, type metadata accessor for RemoteDisplayDetour.State);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077350, &qword_1E65F9B38);
  if ((*(*(v21 - 8) + 48))(v20, 1, v21) == 1)
  {
    sub_1E627ECF0(v20, type metadata accessor for RemoteDisplayDetour.State);
    sub_1E5FAA54C();
    v22 = swift_allocError();
    *v23 = 3;
    a2(v22, 1);
  }

  else
  {
    v24 = *(v21 + 48);
    v29 = *&v20[*(v21 + 64)];
    sub_1E627ECF0(&v20[v24], type metadata accessor for AppEnvironment);
    v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0726C8, &qword_1E66094D0);
    (*(*(v25 - 8) + 8))(v20, v25);
    v26 = sub_1E65E60A8();
    (*(*(v26 - 8) + 56))(v17, 1, 1, v26);
    v27 = swift_allocObject();
    *(v27 + 16) = 0;
    *(v27 + 24) = 0;
    *(v27 + 32) = a4;
    *(v27 + 40) = a5;
    v28 = v31;
    *(v27 + 48) = v30;
    *(v27 + 56) = a7;
    *(v27 + 64) = v28;
    *(v27 + 72) = a9;
    *(v27 + 80) = a2;
    *(v27 + 88) = a3;
    *(v27 + 96) = v29;

    sub_1E64B80F8(0, 0, v17, &unk_1E65F9C30, v27);
  }
}

uint64_t sub_1E627C91C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 136) = v12;
  *(v8 + 120) = v11;
  *(v8 + 104) = v10;
  *(v8 + 88) = a7;
  *(v8 + 96) = a8;
  *(v8 + 72) = a5;
  *(v8 + 80) = a6;
  *(v8 + 64) = a4;
  return MEMORY[0x1EEE6DFA0](sub_1E627C95C, 0, 0);
}

uint64_t sub_1E627C95C()
{
  if (qword_1EE2D7790 != -1)
  {
    swift_once();
  }

  v1 = sub_1E65E3B68();
  __swift_project_value_buffer(v1, qword_1EE2EA2A0);
  sub_1E65E3B18();
  *(v0 + 144) = sub_1E65E6058();
  *(v0 + 152) = sub_1E65E6048();
  v3 = sub_1E65E5FC8();

  return MEMORY[0x1EEE6DFA0](sub_1E627CA74, v3, v2);
}

uint64_t sub_1E627CA74()
{
  v1 = *(v0 + 88);

  v2 = sub_1E65E5C48();
  if (v1)
  {
    v3 = sub_1E65E5C48();
  }

  else
  {
    v3 = 0;
  }

  *(v0 + 160) = [objc_opt_self() alertControllerWithTitle:v2 message:v3 preferredStyle:1];

  return MEMORY[0x1EEE6DFA0](sub_1E627CB4C, 0, 0);
}

uint64_t sub_1E627CB4C()
{
  v1 = v0[20];
  v3 = v0[14];
  v2 = v0[15];
  v4 = swift_allocObject();
  v0[21] = v4;
  v4[2] = v1;
  v4[3] = v3;
  v4[4] = v2;
  v5 = v1;

  v0[22] = sub_1E65E6048();
  v7 = sub_1E65E5FC8();

  return MEMORY[0x1EEE6DFA0](sub_1E627CC14, v7, v6);
}

uint64_t sub_1E627CC14()
{
  v1 = v0[21];

  v2 = sub_1E65E5C48();
  v0[6] = sub_1E627EFEC;
  v0[7] = v1;
  v0[2] = MEMORY[0x1E69E9820];
  v0[3] = 1107296256;
  v0[4] = sub_1E6279824;
  v0[5] = &block_descriptor_48;
  v3 = _Block_copy(v0 + 2);

  v0[23] = [objc_opt_self() actionWithTitle:v2 style:2 handler:v3];
  _Block_release(v3);

  return MEMORY[0x1EEE6DFA0](sub_1E627CD40, 0, 0);
}

uint64_t sub_1E627CD40(uint64_t a1)
{
  *(v1 + 192) = sub_1E65E6048();
  v3 = sub_1E65E5FC8();

  return MEMORY[0x1EEE6DFA0](sub_1E627CDCC, v3, v2);
}

uint64_t sub_1E627CDCC()
{
  v1 = *(v0 + 184);
  v2 = *(v0 + 160);

  [v2 addAction_];

  return MEMORY[0x1EEE6DFA0](sub_1E627CE4C, 0, 0);
}

uint64_t sub_1E627CE4C()
{
  v1 = v0[20];
  v10 = v0[17];
  ObjectType = swift_getObjectType();
  v3 = swift_allocObject();
  v0[25] = v3;
  *(v3 + 16) = v1;
  v4 = *(v10 + 24);
  v5 = v1;
  v9 = (v4 + *v4);
  v6 = swift_task_alloc();
  v0[26] = v6;
  *v6 = v0;
  v6[1] = sub_1E627CFB8;
  v7 = v0[17];

  return v9(sub_1E627F328, v3, ObjectType, v7);
}

uint64_t sub_1E627CFB8()
{

  return MEMORY[0x1EEE6DFA0](sub_1E627D0D0, 0, 0);
}

uint64_t sub_1E627D0D0()
{
  v1 = *(v0 + 160);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1E627D138(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0735B0, &qword_1E65EA000);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v14 - v8;
  v10 = sub_1E65E60A8();
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = a2;
  v11[5] = a3;
  v11[6] = a4;
  v12 = a2;

  sub_1E64B80F8(0, 0, v9, &unk_1E65F9C40, v11);
}

uint64_t sub_1E627D25C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[9] = a5;
  v6[10] = a6;
  v6[8] = a4;
  return MEMORY[0x1EEE6DFA0](sub_1E627D280, 0, 0);
}

uint64_t sub_1E627D280()
{
  v2 = v0[9];
  v1 = v0[10];
  v3 = swift_allocObject();
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  v0[6] = sub_1E627F0C0;
  v0[7] = v3;
  v0[2] = MEMORY[0x1E69E9820];
  v0[3] = 1107296256;
  v0[4] = sub_1E5E05AB0;
  v0[5] = &block_descriptor_62;
  v0[11] = _Block_copy(v0 + 2);

  sub_1E65E6058();
  v0[12] = sub_1E65E6048();
  v5 = sub_1E65E5FC8();

  return MEMORY[0x1EEE6DFA0](sub_1E627D3B0, v5, v4);
}

uint64_t sub_1E627D3B0()
{
  v1 = v0[11];
  v2 = v0[8];

  [v2 dismissViewControllerAnimated:1 completion:v1];
  _Block_release(v1);
  v3 = v0[1];

  return v3();
}

void sub_1E627D434(void (*a1)(uint64_t, void))
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B740, &qword_1E65ED600);
  sub_1E65E6D88();
  a1(v2, v3);
  sub_1E627F0C8(v2, v3);
}

uint64_t sub_1E627D4B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v35 = a2;
  v36 = a3;
  v4 = sub_1E65E5798();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0735B0, &qword_1E65EA000);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v37 = &v31 - v9;
  v10 = type metadata accessor for RemoteDisplayDetour.State(0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for AppEnvironment(0);
  v34 = *(v13 - 8);
  v14 = *(v34 + 64);
  v15 = MEMORY[0x1EEE9AC00](v13 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v31 - v16;
  sub_1E627E900(a1, v12, type metadata accessor for RemoteDisplayDetour.State);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077350, &qword_1E65F9B38);
  if ((*(*(v18 - 8) + 48))(v12, 1, v18) == 1)
  {
    v19 = type metadata accessor for RemoteDisplayDetour.State;
    v20 = v12;
  }

  else
  {
    v21 = *(v18 + 48);
    v33 = *&v12[*(v18 + 64)];
    v31 = type metadata accessor for AppEnvironment;
    v32 = v17;
    sub_1E5DFABE8(&v12[v21], v17, type metadata accessor for AppEnvironment);
    v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0726C8, &qword_1E66094D0);
    (*(*(v22 - 8) + 8))(v12, v22);
    v23 = sub_1E65E60A8();
    (*(*(v23 - 8) + 56))(v37, 1, 1, v23);
    v24 = &v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
    sub_1E627E900(v17, v24, type metadata accessor for AppEnvironment);
    (*(v5 + 16))(&v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v35, v4);
    v25 = (*(v34 + 80) + 32) & ~*(v34 + 80);
    v26 = (v14 + *(v5 + 80) + v25) & ~*(v5 + 80);
    v27 = (v6 + v26 + 7) & 0xFFFFFFFFFFFFFFF8;
    v35 = v4;
    v28 = v36;
    v29 = swift_allocObject();
    *(v29 + 16) = 0;
    *(v29 + 24) = 0;
    sub_1E5DFABE8(v24, v29 + v25, v31);
    (*(v5 + 32))(v29 + v26, v7, v35);
    *(v29 + v27) = v33;
    *(v29 + ((v27 + 23) & 0xFFFFFFFFFFFFFFF8)) = v28;
    swift_unknownObjectRetain();

    sub_1E6059EAC(0, 0, v37, &unk_1E65F9C20, v29);
    swift_unknownObjectRelease();

    v19 = type metadata accessor for AppEnvironment;
    v20 = v32;
  }

  return sub_1E627ECF0(v20, v19);
}

uint64_t sub_1E627D934(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[5] = a7;
  v8[6] = a8;
  v8[3] = a5;
  v8[4] = a6;
  v8[2] = a4;
  return MEMORY[0x1EEE6DFA0](sub_1E627D95C, 0, 0);
}

uint64_t sub_1E627D95C()
{
  if (qword_1EE2D7790 != -1)
  {
    swift_once();
  }

  v1 = sub_1E65E3B68();
  __swift_project_value_buffer(v1, qword_1EE2EA2A0);
  sub_1E65E3B18();
  type metadata accessor for AppEnvironment(0);
  v2 = PlayerService.makeSessionViewController.getter();
  v0[7] = v3;
  v7 = (v2 + *v2);
  v4 = swift_task_alloc();
  v0[8] = v4;
  *v4 = v0;
  v4[1] = sub_1E627DAEC;
  v5 = v0[3];

  return v7(v5);
}

uint64_t sub_1E627DAEC(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 72) = v1;

  if (v1)
  {
    v5 = sub_1E627DF10;
  }

  else
  {

    *(v4 + 80) = a1;
    v5 = sub_1E627DC1C;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1E627DC1C()
{
  v1 = v0[10];
  v2 = v0[6];
  v11 = v0[5];
  ObjectType = swift_getObjectType();
  v4 = swift_allocObject();
  v0[11] = v4;
  *(v4 + 16) = v1;
  *(v4 + 24) = v2;
  v5 = *(v11 + 24);
  v6 = v1;

  v10 = (v5 + *v5);
  v7 = swift_task_alloc();
  v0[12] = v7;
  *v7 = v0;
  v7[1] = sub_1E627DD94;
  v8 = v0[5];

  return v10(sub_1E627EDA4, v4, ObjectType, v8);
}

uint64_t sub_1E627DD94()
{

  return MEMORY[0x1EEE6DFA0](sub_1E627DEAC, 0, 0);
}

uint64_t sub_1E627DEAC()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E627DF10()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_1E627DFBC(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  v5 = *(v3 + 24);
  v6 = *(*v5 + *MEMORY[0x1E69E6B68] + 16);
  v7 = (*(*v5 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v5 + v7));
  a3(v5 + v6);

  os_unfair_lock_unlock((v5 + v7));
}

uint64_t sub_1E627E060(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = swift_allocObject();
  v13[2] = v6;
  v13[3] = a1;
  v13[4] = a2;
  v13[5] = a3;
  v13[6] = a4;
  v13[7] = a5;
  v13[8] = a6;

  return sub_1E65DACA8();
}

void sub_1E627E138()
{
  v1 = *(v0 + 24);
  v2 = *(*v1 + *MEMORY[0x1E69E6B68] + 16);
  v3 = (*(*v1 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v1 + v3));
  sub_1E627EB2C(v1 + v2);
  os_unfair_lock_unlock((v1 + v3));
}

unint64_t sub_1E627E1D0()
{
  result = qword_1ED077370;
  if (!qword_1ED077370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED077370);
  }

  return result;
}

uint64_t sub_1E627E224(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1E627E248, 0, 0);
}

uint64_t sub_1E627E248()
{
  if (qword_1EE2D7790 != -1)
  {
    swift_once();
  }

  v1 = sub_1E65E3B68();
  __swift_project_value_buffer(v1, qword_1EE2EA2A0);
  sub_1E65E3B18();
  type metadata accessor for AppEnvironment(0);
  v2 = SessionService.requireNewSessionsAllowed.getter();
  *(v0 + 40) = v3;
  v6 = (v2 + *v2);
  v4 = swift_task_alloc();
  *(v0 + 48) = v4;
  *v4 = v0;
  v4[1] = sub_1E627E3D4;

  return v6();
}

uint64_t sub_1E627E3D4()
{
  *(*v1 + 56) = v0;

  if (v0)
  {
    v2 = sub_1E627E4E8;
  }

  else
  {
    v2 = sub_1E5F9E40C;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1E627E4E8()
{
  v5 = *(v0 + 24);

  v1 = swift_task_alloc();
  *(v0 + 64) = v1;
  *(v1 + 16) = v5;
  v2 = swift_task_alloc();
  *(v0 + 72) = v2;
  *v2 = v0;
  v2[1] = sub_1E627E5E4;
  v3 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DE38](v2, 0, 0, 0xD00000000000002FLL, 0x80000001E6615180, sub_1E627E968, v1, v3);
}

uint64_t sub_1E627E5E4()
{
  *(*v1 + 80) = v0;

  if (v0)
  {
    v2 = sub_1E627E764;
  }

  else
  {

    v2 = sub_1E627E700;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1E627E700()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E627E764()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E627E7D0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1E5DFA78C;

  return sub_1E627B3F8(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_1E627E900(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E627E970(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0726C8, &qword_1E66094D0) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = *(v1 + 16);
  v8 = *(v1 + 24);
  v9 = (v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v10 = *v9;
  v11 = v9[1];
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_1E5DFA78C;

  return sub_1E6279A94(a1, v7, v8, v1 + v6, v10, v11);
}

uint64_t sub_1E627EAB0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0726C8, &qword_1E66094D0);

  return sub_1E627A53C();
}

uint64_t sub_1E627EB48(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for AppEnvironment(0) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(sub_1E65E5798() - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = (*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = (v10 + 23) & 0xFFFFFFFFFFFFFFF8;
  v12 = *(v1 + 16);
  v13 = *(v1 + 24);
  v14 = (v1 + v10);
  v15 = *v14;
  v16 = v14[1];
  v17 = *(v1 + v11);
  v18 = swift_task_alloc();
  *(v3 + 16) = v18;
  *v18 = v3;
  v18[1] = sub_1E5DFE6BC;

  return sub_1E627D934(a1, v12, v13, v1 + v6, v1 + v9, v15, v16, v17);
}

uint64_t sub_1E627ECF0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1E627ED50(uint64_t (*a1)(uint64_t, uint64_t, uint64_t))
{

  return a1(v1, 32, 7);
}

id sub_1E627EDA4(void *a1, uint64_t a2)
{
  v4 = *(v2 + 16);
  sub_1E627F2D8(&qword_1ED077380, a2, type metadata accessor for RemoteDisplayDetour, &unk_1E65F9BA8);
  sub_1E65E53D8();

  return [a1 pushViewController:v4 animated:1];
}

uint64_t sub_1E627EE6C(uint64_t a1, char a2)
{
  v3 = *(v2 + 16);
  v5 = a1;
  v6 = a2 & 1;
  return v3(&v5);
}

uint64_t sub_1E627EEE0(uint64_t a1)
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
  v11[1] = sub_1E5DFE6BC;

  return sub_1E627C91C(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1E627EFF8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1E5DFE6BC;

  return sub_1E627D25C(a1, v4, v5, v6, v7, v8);
}

void sub_1E627F0C8(id a1, char a2)
{
  if (a2)
  {
  }
}

uint64_t sub_1E627F0D4(uint64_t a1)
{
  v2 = v1;
  v3 = type metadata accessor for RemoteDisplayDetour.State(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077350, &qword_1E65F9B38);
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077388, &qword_1E65F9C50);
  v7 = swift_allocObject();
  *(v7 + ((*(*v7 + 48) + 3) & 0x1FFFFFFFCLL)) = 0;
  sub_1E5DFABE8(v5, v7 + *(*v7 + *MEMORY[0x1E69E6B68] + 16), type metadata accessor for RemoteDisplayDetour.State);
  *(v1 + 24) = v7;
  objc_allocWithZone(sub_1E65E54D8());

  v8 = sub_1E65E5488();
  *(v2 + 16) = v8;
  sub_1E627F2D8(&qword_1ED077390, v9, type metadata accessor for RemoteDisplayDetour, &unk_1E65F9B48);
  v10 = v8;

  sub_1E65E54B8();

  return v2;
}

uint64_t sub_1E627F2D8(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t AppComposer.workoutPlanArtworkViewBuilder(identifier:schedule:modalityIdentifierCount:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v28 = a3;
  v31 = a2;
  v32 = a1;
  v35 = a4;
  v36 = type metadata accessor for WorkoutPlanArtworkViewRepresentable(0);
  MEMORY[0x1EEE9AC00](v36);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077398, &qword_1E65F9C58);
  MEMORY[0x1EEE9AC00](v33);
  v7 = &v27 - v6;
  v34 = sub_1E65E55C8();
  v30 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34);
  v29 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1E65D76F8();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075D78, &qword_1E65F38F8);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v27 - v14;
  v16 = sub_1E65D9388();
  v17 = *(v16 - 8);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v20 = &v27 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v27 - v21;
  sub_1E617D084(v31, v15);
  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {
    sub_1E627F898(v15);
    (*(v10 + 16))(v5, v32, v9);
    *&v5[*(v36 + 20)] = v28;
    sub_1E627F900(v5, v7);
    swift_storeEnumTagMultiPayload();
    sub_1E627F964(&qword_1EE2D49B0, MEMORY[0x1E69CD8A8], MEMORY[0x1E69CD8A0]);
    sub_1E627F964(qword_1EE2D7828, type metadata accessor for WorkoutPlanArtworkViewRepresentable, &unk_1E65FEEF4);
    sub_1E65E4138();
    return sub_1E627F9AC(v5);
  }

  else
  {
    (*(v17 + 32))(v22, v15, v16);
    (*(v10 + 16))(v12, v32, v9);
    (*(v17 + 16))(v20, v22, v16);
    sub_1E65E53A8();
    swift_allocObject();
    sub_1E65E5398();

    v24 = v29;
    sub_1E65E55B8();
    v25 = v30;
    v26 = v34;
    (*(v30 + 16))(v7, v24, v34);
    swift_storeEnumTagMultiPayload();
    sub_1E627F964(&qword_1EE2D49B0, MEMORY[0x1E69CD8A8], MEMORY[0x1E69CD8A0]);
    sub_1E627F964(qword_1EE2D7828, type metadata accessor for WorkoutPlanArtworkViewRepresentable, &unk_1E65FEEF4);
    sub_1E65E4138();

    (*(v25 + 8))(v24, v26);
    return (*(v17 + 8))(v22, v16);
  }
}

uint64_t sub_1E627F898(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075D78, &qword_1E65F38F8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1E627F900(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WorkoutPlanArtworkViewRepresentable(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E627F964(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1E627F9AC(uint64_t a1)
{
  v2 = type metadata accessor for WorkoutPlanArtworkViewRepresentable(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_1E627FA08(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0773A0, &qword_1E65F9C60);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v21 - v9;
  if (a4 < 2u)
  {
    v11 = OBJC_IVAR____TtC10Blackbeard9AppRouter_offlineRoutingContext;
    v12 = swift_allocObject();
    swift_weakInit();
    v13 = swift_allocObject();
    v13[2] = a1;
    v13[3] = a2;
    v13[4] = a3;

    v14 = sub_1E6114F70((a1 + v11), sub_1E628007C, v12, sub_1E6280070, v13);

    return v14;
  }

  if (a4 == 3)
  {
    v15 = swift_allocObject();
    swift_weakInit();
    v16 = swift_allocObject();
    v16[2] = a1;
    v16[3] = a2;
    v16[4] = a3;

    sub_1E61163B8(sub_1E627FCF4, v15, sub_1E627FDE4, v16, v10);

    v17 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0773A8, &qword_1E65F9C68));
    v14 = sub_1E65E4058();
    v18 = [v14 view];
    if (v18)
    {
      v19 = v18;
      [v18 setAlpha_];

      return v14;
    }

    __break(1u);
  }

  result = sub_1E65E69D8();
  __break(1u);
  return result;
}

uint64_t sub_1E627FD10(uint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t *, void, void, void, void, void *))
{
  v5 = type metadata accessor for NavigationControllerRoutingContext(0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = (&v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *a1;
  v8 = a1[1];
  v12 = v9;
  v13 = v8;
  sub_1E5E24114(&v12, v7);
  v12 = v9;
  v13 = v8;
  v10 = a3(&v12, 0, 0, 0, 0, v7);
  sub_1E613584C(v7);
  return v10;
}

uint64_t sub_1E627FDF0@<X0>(uint64_t *a1@<X0>, uint64_t a3@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072A30, &qword_1E65EEA70);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v14[-1] - v6;
  v9 = *a1;
  v8 = a1[1];
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (!result)
  {
    goto LABEL_4;
  }

  v14[0] = v9;
  v14[1] = v8;
  sub_1E63350F4(v14, v7);

  v11 = type metadata accessor for NavigationControllerRoutingContext(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    result = sub_1E6135780(v7);
LABEL_4:
    *(a3 + 32) = 0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
    return result;
  }

  *(a3 + 24) = v11;
  *(a3 + 32) = &off_1F5FA9B10;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a3);
  return sub_1E61357E8(v7, boxed_opaque_existential_1);
}

uint64_t sub_1E627FF3C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(uint64_t *, uint64_t, uint64_t, uint64_t, uint64_t, void *))
{
  v13 = type metadata accessor for NavigationControllerRoutingContext(0);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = (&v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = *a1;
  v16 = a1[1];
  v20 = v17;
  v21 = v16;
  sub_1E5E24114(&v20, v15);
  v20 = v17;
  v21 = v16;
  v18 = a7(&v20, a2, a3, a4, a5, v15);
  sub_1E613584C(v15);
  return v18;
}

uint64_t objectdestroy_2Tm_1()
{

  return swift_deallocObject();
}

uint64_t sub_1E6280140(uint64_t (*a1)(uint64_t, uint64_t))
{
  v3 = *(v1 + OBJC_IVAR____TtC10Blackbeard14AppCoordinator_metricSceneLifecycleTracker + 24);
  v4 = *(v1 + OBJC_IVAR____TtC10Blackbeard14AppCoordinator_metricSceneLifecycleTracker + 32);
  __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC10Blackbeard14AppCoordinator_metricSceneLifecycleTracker), v3);
  return a1(v3, v4);
}

uint64_t sub_1E6280258(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  v5 = (*v3 + OBJC_IVAR____TtC10Blackbeard14AppCoordinator_metricSceneLifecycleTracker);
  v6 = v5[3];
  v7 = v5[4];
  __swift_project_boxed_opaque_existential_1(v5, v6);
  return a3(v6, v7);
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

uint64_t sub_1E62802D0(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_1E6280318(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1E6280378(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E65DAFD8();
  v79 = *(v4 - 8);
  v5 = MEMORY[0x1EEE9AC00](v4);
  v7 = &v59 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v77 = &v59 - v8;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074A08, &qword_1E65F3920);
  v69 = *(v78 - 8);
  v9 = MEMORY[0x1EEE9AC00](v78);
  v70 = &v59 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v68 = &v59 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077558, &qword_1E65F9F48);
  v13 = MEMORY[0x1EEE9AC00](v12 - 8);
  result = MEMORY[0x1EEE9AC00](v13);
  v72 = &v59 - v16;
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v71 = v15;
  v66 = v7;
  v67 = a2;
  v17 = 0;
  v63 = a1;
  v20 = *(a1 + 64);
  v19 = a1 + 64;
  v18 = v20;
  v21 = 1 << *(v19 - 32);
  v22 = -1;
  if (v21 < 64)
  {
    v22 = ~(-1 << v21);
  }

  v23 = v22 & v18;
  v60 = (v21 + 63) >> 6;
  v61 = v19;
  v62 = v69 + 16;
  v76 = (v69 + 32);
  v74 = v79 + 16;
  v75 = (v79 + 32);
  v64 = (v69 + 8);
  v65 = (v79 + 8);
  while (v23)
  {
    v73 = (v23 - 1) & v23;
    v24 = __clz(__rbit64(v23)) | (v17 << 6);
LABEL_16:
    v31 = v63;
    v33 = v68;
    v32 = v69;
    v34 = v78;
    (*(v69 + 16))(v68, *(v63 + 48) + *(v69 + 72) * v24, v78);
    v35 = *(v31 + 56);
    v36 = v79;
    v37 = v77;
    (*(v79 + 16))(v77, v35 + *(v79 + 72) * v24, v4);
    v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077560, &unk_1E65F9F50);
    v39 = *(v38 + 48);
    v40 = *(v32 + 32);
    v28 = v71;
    v40(v71, v33, v34);
    (*(v36 + 32))(v28 + v39, v37, v4);
    (*(*(v38 - 8) + 56))(v28, 0, 1, v38);
    v27 = v72;
    v23 = v73;
LABEL_17:
    sub_1E5FAB460(v28, v27, &qword_1ED077558, &qword_1E65F9F48);
    v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077560, &unk_1E65F9F50);
    v42 = (*(*(v41 - 8) + 48))(v27, 1, v41);
    v43 = v42 == 1;
    if (v42 == 1)
    {
      return v43;
    }

    v44 = *(v41 + 48);
    v45 = v4;
    v46 = v70;
    v47 = v78;
    (*v76)(v70, v27, v78);
    v48 = v66;
    (*v75)(v66, v27 + v44, v45);
    v49 = v67;
    v50 = sub_1E6416E74(v46);
    v52 = v51;
    (*v64)(v46, v47);
    if ((v52 & 1) == 0)
    {
      (*v65)(v48, v45);
      return 0;
    }

    v53 = v79;
    v54 = *(v49 + 56) + *(v79 + 72) * v50;
    v55 = v77;
    (*(v79 + 16))(v77, v54, v45);
    sub_1E6288E70(&qword_1ED077568, MEMORY[0x1E699CFC0], MEMORY[0x1E699CFD0]);
    v56 = sub_1E65E5B98();
    v57 = *(v53 + 8);
    v57(v55, v45);
    result = (v57)(v48, v45);
    v4 = v45;
    if ((v56 & 1) == 0)
    {
      return v43;
    }
  }

  if (v60 <= v17 + 1)
  {
    v25 = v17 + 1;
  }

  else
  {
    v25 = v60;
  }

  v26 = v25 - 1;
  v28 = v71;
  v27 = v72;
  while (1)
  {
    v29 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v29 >= v60)
    {
      v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077560, &unk_1E65F9F50);
      (*(*(v58 - 8) + 56))(v28, 1, 1, v58);
      v23 = 0;
      v17 = v26;
      goto LABEL_17;
    }

    v30 = *(v61 + 8 * v29);
    ++v17;
    if (v30)
    {
      v73 = (v30 - 1) & v30;
      v24 = __clz(__rbit64(v30)) | (v29 << 6);
      v17 = v29;
      goto LABEL_16;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1E62809C8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E65E31D8();
  v61 = *(v4 - 8);
  v5 = MEMORY[0x1EEE9AC00](v4);
  v7 = &v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v60 = &v50 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077540, &qword_1E65F9F30);
  v10 = MEMORY[0x1EEE9AC00](v9 - 8);
  result = MEMORY[0x1EEE9AC00](v10);
  v56 = a2;
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(v56 + 16))
  {
    return 0;
  }

  v54 = (&v50 - v12);
  v55 = v13;
  v53 = v7;
  v14 = 0;
  v51 = a1;
  v15 = *(a1 + 64);
  v50 = a1 + 64;
  v16 = 1 << *(a1 + 32);
  v17 = -1;
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  v18 = v17 & v15;
  v19 = (v16 + 63) >> 6;
  v57 = v61 + 16;
  v58 = (v61 + 32);
  v52 = (v61 + 8);
  while (1)
  {
    v20 = v55;
    if (!v18)
    {
      break;
    }

    v59 = (v18 - 1) & v18;
    v21 = __clz(__rbit64(v18)) | (v14 << 6);
LABEL_16:
    v26 = (*(v51 + 48) + 16 * v21);
    v27 = *v26;
    v28 = v26[1];
    v30 = v60;
    v29 = v61;
    (*(v61 + 16))(v60, *(v51 + 56) + *(v61 + 72) * v21, v4);
    v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077548, &unk_1E65F9F38);
    v32 = *(v31 + 48);
    *v20 = v27;
    *(v20 + 1) = v28;
    (*(v29 + 32))(&v20[v32], v30, v4);
    (*(*(v31 - 8) + 56))(v20, 0, 1, v31);

LABEL_17:
    v33 = v54;
    sub_1E5FAB460(v20, v54, &qword_1ED077540, &qword_1E65F9F30);
    v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077548, &unk_1E65F9F38);
    v35 = (*(*(v34 - 8) + 48))(v33, 1, v34);
    v36 = v35 == 1;
    if (v35 == 1)
    {
      return v36;
    }

    v37 = *(v34 + 48);
    v39 = *v33;
    v38 = v33[1];
    v40 = v56;
    v41 = v53;
    (*v58)(v53, v33 + v37, v4);
    v42 = sub_1E6215038(v39, v38);
    v44 = v43;

    if ((v44 & 1) == 0)
    {
      (*v52)(v41, v4);
      return 0;
    }

    v46 = v60;
    v45 = v61;
    (*(v61 + 16))(v60, *(v40 + 56) + *(v61 + 72) * v42, v4);
    sub_1E6288E70(&qword_1ED077550, MEMORY[0x1E699EB58], MEMORY[0x1E699EB68]);
    v47 = sub_1E65E5B98();
    v48 = *(v45 + 8);
    v48(v46, v4);
    result = (v48)(v41, v4);
    v18 = v59;
    if ((v47 & 1) == 0)
    {
      return v36;
    }
  }

  if (v19 <= v14 + 1)
  {
    v22 = v14 + 1;
  }

  else
  {
    v22 = v19;
  }

  v23 = v22 - 1;
  while (1)
  {
    v24 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v24 >= v19)
    {
      v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077548, &unk_1E65F9F38);
      (*(*(v49 - 8) + 56))(v20, 1, 1, v49);
      v59 = 0;
      v14 = v23;
      goto LABEL_17;
    }

    v25 = *(v50 + 8 * v24);
    ++v14;
    if (v25)
    {
      v59 = (v25 - 1) & v25;
      v21 = __clz(__rbit64(v25)) | (v24 << 6);
      v14 = v24;
      goto LABEL_16;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1E6280ED8(uint64_t a1, uint64_t a2)
{
  v56 = sub_1E65DB048();
  v51 = *(v56 - 8);
  v4 = MEMORY[0x1EEE9AC00](v56);
  v52 = v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v50 = v46 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077508, &qword_1E65F9EF8);
  v8 = MEMORY[0x1EEE9AC00](v7 - 8);
  v53 = v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v8);
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v49 = v46 - v11;
  v12 = 0;
  v47 = a1;
  v15 = *(a1 + 64);
  v14 = a1 + 64;
  v13 = v15;
  v16 = 1 << *(v14 - 32);
  v17 = -1;
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  v18 = v17 & v13;
  v19 = (v16 + 63) >> 6;
  v46[0] = v14;
  v46[1] = v51 + 16;
  v54 = (v51 + 32);
  v48 = (v51 + 8);
  while (v18)
  {
    v55 = (v18 - 1) & v18;
    v20 = __clz(__rbit64(v18)) | (v12 << 6);
LABEL_16:
    v25 = v47;
    v26 = v50;
    v27 = v51;
    v28 = v56;
    (*(v51 + 16))(v50, *(v47 + 48) + *(v51 + 72) * v20, v56);
    v29 = *(*(v25 + 56) + 8 * v20);
    v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077510, &unk_1E65F9F00);
    v31 = *(v30 + 48);
    v32 = *(v27 + 32);
    v33 = v53;
    v32(v53, v26, v28);
    *(v33 + v31) = v29;
    (*(*(v30 - 8) + 56))(v33, 0, 1, v30);

LABEL_17:
    v34 = v49;
    sub_1E5FAB460(v33, v49, &qword_1ED077508, &qword_1E65F9EF8);
    v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077510, &unk_1E65F9F00);
    v36 = (*(*(v35 - 8) + 48))(v34, 1, v35);
    v37 = v36 == 1;
    if (v36 == 1)
    {
      return v37;
    }

    v38 = *(v35 + 48);
    v39 = v52;
    v40 = v56;
    (*v54)(v52, v34, v56);
    v41 = *(v34 + v38);
    sub_1E6416C60(v39);
    LOBYTE(v38) = v42;
    (*v48)(v39, v40);
    if ((v38 & 1) == 0)
    {

      return 0;
    }

    v44 = sub_1E6282D9C(v43, v41);

    v18 = v55;
    if ((v44 & 1) == 0)
    {
      return v37;
    }
  }

  if (v19 <= v12 + 1)
  {
    v21 = v12 + 1;
  }

  else
  {
    v21 = v19;
  }

  v22 = v21 - 1;
  while (1)
  {
    v23 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v23 >= v19)
    {
      v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077510, &unk_1E65F9F00);
      v33 = v53;
      (*(*(v45 - 8) + 56))(v53, 1, 1, v45);
      v55 = 0;
      v12 = v22;
      goto LABEL_17;
    }

    v24 = *(v46[0] + 8 * v23);
    ++v12;
    if (v24)
    {
      v55 = (v24 - 1) & v24;
      v20 = __clz(__rbit64(v24)) | (v23 << 6);
      v12 = v23;
      goto LABEL_16;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1E6281364(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E65E3508();
  v61 = *(v4 - 8);
  v5 = MEMORY[0x1EEE9AC00](v4);
  v7 = &v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v60 = &v50 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0774D0, &qword_1E65F9EC8);
  v10 = MEMORY[0x1EEE9AC00](v9 - 8);
  result = MEMORY[0x1EEE9AC00](v10);
  v56 = a2;
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(v56 + 16))
  {
    return 0;
  }

  v54 = (&v50 - v12);
  v55 = v13;
  v53 = v7;
  v14 = 0;
  v51 = a1;
  v15 = *(a1 + 64);
  v50 = a1 + 64;
  v16 = 1 << *(a1 + 32);
  v17 = -1;
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  v18 = v17 & v15;
  v19 = (v16 + 63) >> 6;
  v57 = v61 + 16;
  v58 = (v61 + 32);
  v52 = (v61 + 8);
  while (1)
  {
    v20 = v55;
    if (!v18)
    {
      break;
    }

    v59 = (v18 - 1) & v18;
    v21 = __clz(__rbit64(v18)) | (v14 << 6);
LABEL_16:
    v26 = (*(v51 + 48) + 16 * v21);
    v27 = *v26;
    v28 = v26[1];
    v30 = v60;
    v29 = v61;
    (*(v61 + 16))(v60, *(v51 + 56) + *(v61 + 72) * v21, v4);
    v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0774D8, &qword_1E65F9ED0);
    v32 = *(v31 + 48);
    *v20 = v27;
    *(v20 + 1) = v28;
    (*(v29 + 32))(&v20[v32], v30, v4);
    (*(*(v31 - 8) + 56))(v20, 0, 1, v31);

LABEL_17:
    v33 = v54;
    sub_1E5FAB460(v20, v54, &qword_1ED0774D0, &qword_1E65F9EC8);
    v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0774D8, &qword_1E65F9ED0);
    v35 = (*(*(v34 - 8) + 48))(v33, 1, v34);
    v36 = v35 == 1;
    if (v35 == 1)
    {
      return v36;
    }

    v37 = *(v34 + 48);
    v39 = *v33;
    v38 = v33[1];
    v40 = v56;
    v41 = v53;
    (*v58)(v53, v33 + v37, v4);
    v42 = sub_1E6215038(v39, v38);
    v44 = v43;

    if ((v44 & 1) == 0)
    {
      (*v52)(v41, v4);
      return 0;
    }

    v46 = v60;
    v45 = v61;
    (*(v61 + 16))(v60, *(v40 + 56) + *(v61 + 72) * v42, v4);
    sub_1E6288E70(&qword_1ED0774E0, MEMORY[0x1E699ECC8], MEMORY[0x1E699ECD8]);
    v47 = sub_1E65E5B98();
    v48 = *(v45 + 8);
    v48(v46, v4);
    result = (v48)(v41, v4);
    v18 = v59;
    if ((v47 & 1) == 0)
    {
      return v36;
    }
  }

  if (v19 <= v14 + 1)
  {
    v22 = v14 + 1;
  }

  else
  {
    v22 = v19;
  }

  v23 = v22 - 1;
  while (1)
  {
    v24 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v24 >= v19)
    {
      v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0774D8, &qword_1E65F9ED0);
      (*(*(v49 - 8) + 56))(v20, 1, 1, v49);
      v59 = 0;
      v14 = v23;
      goto LABEL_17;
    }

    v25 = *(v50 + 8 * v24);
    ++v14;
    if (v25)
    {
      v59 = (v25 - 1) & v25;
      v21 = __clz(__rbit64(v25)) | (v24 << 6);
      v14 = v24;
      goto LABEL_16;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1E6281874(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E65E2F28();
  v61 = *(v4 - 8);
  v5 = MEMORY[0x1EEE9AC00](v4);
  v7 = &v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v60 = &v50 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0774B8, &qword_1E65F9EB8);
  v10 = MEMORY[0x1EEE9AC00](v9 - 8);
  result = MEMORY[0x1EEE9AC00](v10);
  v56 = a2;
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(v56 + 16))
  {
    return 0;
  }

  v54 = (&v50 - v12);
  v55 = v13;
  v53 = v7;
  v14 = 0;
  v51 = a1;
  v15 = *(a1 + 64);
  v50 = a1 + 64;
  v16 = 1 << *(a1 + 32);
  v17 = -1;
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  v18 = v17 & v15;
  v19 = (v16 + 63) >> 6;
  v57 = v61 + 16;
  v58 = (v61 + 32);
  v52 = (v61 + 8);
  while (1)
  {
    v20 = v55;
    if (!v18)
    {
      break;
    }

    v59 = (v18 - 1) & v18;
    v21 = __clz(__rbit64(v18)) | (v14 << 6);
LABEL_16:
    v26 = (*(v51 + 48) + 16 * v21);
    v27 = *v26;
    v28 = v26[1];
    v30 = v60;
    v29 = v61;
    (*(v61 + 16))(v60, *(v51 + 56) + *(v61 + 72) * v21, v4);
    v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0774C0, &qword_1E65F9EC0);
    v32 = *(v31 + 48);
    *v20 = v27;
    *(v20 + 1) = v28;
    (*(v29 + 32))(&v20[v32], v30, v4);
    (*(*(v31 - 8) + 56))(v20, 0, 1, v31);

LABEL_17:
    v33 = v54;
    sub_1E5FAB460(v20, v54, &qword_1ED0774B8, &qword_1E65F9EB8);
    v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0774C0, &qword_1E65F9EC0);
    v35 = (*(*(v34 - 8) + 48))(v33, 1, v34);
    v36 = v35 == 1;
    if (v35 == 1)
    {
      return v36;
    }

    v37 = *(v34 + 48);
    v39 = *v33;
    v38 = v33[1];
    v40 = v56;
    v41 = v53;
    (*v58)(v53, v33 + v37, v4);
    v42 = sub_1E6215038(v39, v38);
    v44 = v43;

    if ((v44 & 1) == 0)
    {
      (*v52)(v41, v4);
      return 0;
    }

    v46 = v60;
    v45 = v61;
    (*(v61 + 16))(v60, *(v40 + 56) + *(v61 + 72) * v42, v4);
    sub_1E6288E70(&qword_1ED0774C8, MEMORY[0x1E699EA38], MEMORY[0x1E699EA48]);
    v47 = sub_1E65E5B98();
    v48 = *(v45 + 8);
    v48(v46, v4);
    result = (v48)(v41, v4);
    v18 = v59;
    if ((v47 & 1) == 0)
    {
      return v36;
    }
  }

  if (v19 <= v14 + 1)
  {
    v22 = v14 + 1;
  }

  else
  {
    v22 = v19;
  }

  v23 = v22 - 1;
  while (1)
  {
    v24 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v24 >= v19)
    {
      v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0774C0, &qword_1E65F9EC0);
      (*(*(v49 - 8) + 56))(v20, 1, 1, v49);
      v59 = 0;
      v14 = v23;
      goto LABEL_17;
    }

    v25 = *(v50 + 8 * v24);
    ++v14;
    if (v25)
    {
      v59 = (v25 - 1) & v25;
      v21 = __clz(__rbit64(v25)) | (v24 << 6);
      v14 = v24;
      goto LABEL_16;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1E6281D84(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E65E3468();
  v61 = *(v4 - 8);
  v5 = MEMORY[0x1EEE9AC00](v4);
  v7 = &v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v60 = &v50 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0774A8, &qword_1E65F9EA8);
  v10 = MEMORY[0x1EEE9AC00](v9 - 8);
  result = MEMORY[0x1EEE9AC00](v10);
  v56 = a2;
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(v56 + 16))
  {
    return 0;
  }

  v54 = (&v50 - v12);
  v55 = v13;
  v53 = v7;
  v14 = 0;
  v51 = a1;
  v15 = *(a1 + 64);
  v50 = a1 + 64;
  v16 = 1 << *(a1 + 32);
  v17 = -1;
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  v18 = v17 & v15;
  v19 = (v16 + 63) >> 6;
  v57 = v61 + 16;
  v58 = (v61 + 32);
  v52 = (v61 + 8);
  while (1)
  {
    v20 = v55;
    if (!v18)
    {
      break;
    }

    v59 = (v18 - 1) & v18;
    v21 = __clz(__rbit64(v18)) | (v14 << 6);
LABEL_16:
    v26 = (*(v51 + 48) + 16 * v21);
    v27 = *v26;
    v28 = v26[1];
    v30 = v60;
    v29 = v61;
    (*(v61 + 16))(v60, *(v51 + 56) + *(v61 + 72) * v21, v4);
    v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0774B0, &qword_1E65F9EB0);
    v32 = *(v31 + 48);
    *v20 = v27;
    *(v20 + 1) = v28;
    (*(v29 + 32))(&v20[v32], v30, v4);
    (*(*(v31 - 8) + 56))(v20, 0, 1, v31);

LABEL_17:
    v33 = v54;
    sub_1E5FAB460(v20, v54, &qword_1ED0774A8, &qword_1E65F9EA8);
    v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0774B0, &qword_1E65F9EB0);
    v35 = (*(*(v34 - 8) + 48))(v33, 1, v34);
    v36 = v35 == 1;
    if (v35 == 1)
    {
      return v36;
    }

    v37 = *(v34 + 48);
    v39 = *v33;
    v38 = v33[1];
    v40 = v56;
    v41 = v53;
    (*v58)(v53, v33 + v37, v4);
    v42 = sub_1E6215038(v39, v38);
    v44 = v43;

    if ((v44 & 1) == 0)
    {
      (*v52)(v41, v4);
      return 0;
    }

    v46 = v60;
    v45 = v61;
    (*(v61 + 16))(v60, *(v40 + 56) + *(v61 + 72) * v42, v4);
    sub_1E6288E70(&qword_1ED074FB0, MEMORY[0x1E699EC68], MEMORY[0x1E699EC78]);
    v47 = sub_1E65E5B98();
    v48 = *(v45 + 8);
    v48(v46, v4);
    result = (v48)(v41, v4);
    v18 = v59;
    if ((v47 & 1) == 0)
    {
      return v36;
    }
  }

  if (v19 <= v14 + 1)
  {
    v22 = v14 + 1;
  }

  else
  {
    v22 = v19;
  }

  v23 = v22 - 1;
  while (1)
  {
    v24 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v24 >= v19)
    {
      v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0774B0, &qword_1E65F9EB0);
      (*(*(v49 - 8) + 56))(v20, 1, 1, v49);
      v59 = 0;
      v14 = v23;
      goto LABEL_17;
    }

    v25 = *(v50 + 8 * v24);
    ++v14;
    if (v25)
    {
      v59 = (v25 - 1) & v25;
      v21 = __clz(__rbit64(v25)) | (v24 << 6);
      v14 = v24;
      goto LABEL_16;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1E6282294(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E65E2498();
  v61 = *(v4 - 8);
  v5 = MEMORY[0x1EEE9AC00](v4);
  v7 = &v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v60 = &v50 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0774E8, &qword_1E65F9ED8);
  v10 = MEMORY[0x1EEE9AC00](v9 - 8);
  result = MEMORY[0x1EEE9AC00](v10);
  v56 = a2;
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(v56 + 16))
  {
    return 0;
  }

  v54 = (&v50 - v12);
  v55 = v13;
  v53 = v7;
  v14 = 0;
  v51 = a1;
  v15 = *(a1 + 64);
  v50 = a1 + 64;
  v16 = 1 << *(a1 + 32);
  v17 = -1;
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  v18 = v17 & v15;
  v19 = (v16 + 63) >> 6;
  v57 = v61 + 16;
  v58 = (v61 + 32);
  v52 = (v61 + 8);
  while (1)
  {
    v20 = v55;
    if (!v18)
    {
      break;
    }

    v59 = (v18 - 1) & v18;
    v21 = __clz(__rbit64(v18)) | (v14 << 6);
LABEL_16:
    v26 = (*(v51 + 48) + 16 * v21);
    v27 = *v26;
    v28 = v26[1];
    v30 = v60;
    v29 = v61;
    (*(v61 + 16))(v60, *(v51 + 56) + *(v61 + 72) * v21, v4);
    v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0774F0, &qword_1E65F9EE0);
    v32 = *(v31 + 48);
    *v20 = v27;
    *(v20 + 1) = v28;
    (*(v29 + 32))(&v20[v32], v30, v4);
    (*(*(v31 - 8) + 56))(v20, 0, 1, v31);

LABEL_17:
    v33 = v54;
    sub_1E5FAB460(v20, v54, &qword_1ED0774E8, &qword_1E65F9ED8);
    v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0774F0, &qword_1E65F9EE0);
    v35 = (*(*(v34 - 8) + 48))(v33, 1, v34);
    v36 = v35 == 1;
    if (v35 == 1)
    {
      return v36;
    }

    v37 = *(v34 + 48);
    v39 = *v33;
    v38 = v33[1];
    v40 = v56;
    v41 = v53;
    (*v58)(v53, v33 + v37, v4);
    v42 = sub_1E6215038(v39, v38);
    v44 = v43;

    if ((v44 & 1) == 0)
    {
      (*v52)(v41, v4);
      return 0;
    }

    v46 = v60;
    v45 = v61;
    (*(v61 + 16))(v60, *(v40 + 56) + *(v61 + 72) * v42, v4);
    sub_1E6288E70(&qword_1ED074DA8, MEMORY[0x1E699F2C0], MEMORY[0x1E699F2D0]);
    v47 = sub_1E65E5B98();
    v48 = *(v45 + 8);
    v48(v46, v4);
    result = (v48)(v41, v4);
    v18 = v59;
    if ((v47 & 1) == 0)
    {
      return v36;
    }
  }

  if (v19 <= v14 + 1)
  {
    v22 = v14 + 1;
  }

  else
  {
    v22 = v19;
  }

  v23 = v22 - 1;
  while (1)
  {
    v24 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v24 >= v19)
    {
      v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0774F0, &qword_1E65F9EE0);
      (*(*(v49 - 8) + 56))(v20, 1, 1, v49);
      v59 = 0;
      v14 = v23;
      goto LABEL_17;
    }

    v25 = *(v50 + 8 * v24);
    ++v14;
    if (v25)
    {
      v59 = (v25 - 1) & v25;
      v21 = __clz(__rbit64(v25)) | (v24 << 6);
      v14 = v24;
      goto LABEL_16;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1E62827A4(unint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_13:
    v12 = v9 | (v4 << 6);
    v13 = *(*(v3 + 56) + 8 * v12);
    result = sub_1E6416C34(*(*(v3 + 48) + v12));
    if ((v14 & 1) == 0 || *(*(a2 + 56) + 8 * result) != v13)
    {
      return 0;
    }
  }

  v10 = v4;
  while (1)
  {
    v4 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v11 = *(v3 + 64 + 8 * v4);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v7 = (v11 - 1) & v11;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1E62828AC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E65DF438();
  v54 = *(v4 - 8);
  v5 = MEMORY[0x1EEE9AC00](v4);
  v55 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v53 = &v45 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0774F8, &qword_1E65F9EE8);
  v9 = MEMORY[0x1EEE9AC00](v8 - 8);
  result = MEMORY[0x1EEE9AC00](v9);
  v56 = a2;
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(v56 + 16))
  {
    return 0;
  }

  v48 = &v45 - v11;
  v49 = v12;
  v13 = 0;
  v46 = a1;
  v14 = *(a1 + 64);
  v45 = a1 + 64;
  v15 = 1 << *(a1 + 32);
  v16 = -1;
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  v17 = v16 & v14;
  v18 = (v15 + 63) >> 6;
  v50 = v54 + 16;
  v51 = (v54 + 32);
  v47 = (v54 + 8);
  while (1)
  {
    v19 = v49;
    if (!v17)
    {
      break;
    }

    v52 = (v17 - 1) & v17;
    v20 = __clz(__rbit64(v17)) | (v13 << 6);
LABEL_16:
    v25 = *(*(v46 + 48) + v20);
    v27 = v53;
    v26 = v54;
    (*(v54 + 16))(v53, *(v46 + 56) + *(v54 + 72) * v20, v4);
    v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077500, &qword_1E65F9EF0);
    v29 = *(v28 + 48);
    *v19 = v25;
    (*(v26 + 32))(&v19[v29], v27, v4);
    (*(*(v28 - 8) + 56))(v19, 0, 1, v28);
LABEL_17:
    v30 = v19;
    v31 = v48;
    sub_1E5FAB460(v30, v48, &qword_1ED0774F8, &qword_1E65F9EE8);
    v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077500, &qword_1E65F9EF0);
    v33 = (*(*(v32 - 8) + 48))(v31, 1, v32);
    v34 = v33 == 1;
    if (v33 == 1)
    {
      return v34;
    }

    v35 = *(v32 + 48);
    v36 = *v31;
    (*v51)(v55, &v31[v35], v4);
    v37 = sub_1E6416C34(v36);
    if ((v38 & 1) == 0)
    {
      (*v47)(v55, v4);
      return 0;
    }

    v39 = v53;
    v40 = v54;
    (*(v54 + 16))(v53, *(v56 + 56) + *(v54 + 72) * v37, v4);
    sub_1E6288E70(&qword_1ED074BA0, MEMORY[0x1E699E610], MEMORY[0x1E699E620]);
    v41 = v55;
    v42 = sub_1E65E5B98();
    v43 = *(v40 + 8);
    v43(v39, v4);
    result = (v43)(v41, v4);
    v17 = v52;
    if ((v42 & 1) == 0)
    {
      return v34;
    }
  }

  if (v18 <= v13 + 1)
  {
    v21 = v13 + 1;
  }

  else
  {
    v21 = v18;
  }

  v22 = v21 - 1;
  while (1)
  {
    v23 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v23 >= v18)
    {
      v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077500, &qword_1E65F9EF0);
      (*(*(v44 - 8) + 56))(v19, 1, 1, v44);
      v52 = 0;
      v13 = v22;
      goto LABEL_17;
    }

    v24 = *(v45 + 8 * v23);
    ++v13;
    if (v24)
    {
      v52 = (v24 - 1) & v24;
      v20 = __clz(__rbit64(v24)) | (v23 << 6);
      v13 = v23;
      goto LABEL_16;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1E6282D9C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074B28, &qword_1E65F1080);
  v79 = *(v4 - 8);
  v5 = MEMORY[0x1EEE9AC00](v4);
  v7 = &v59 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v77 = &v59 - v8;
  v78 = sub_1E65DB0E8();
  v69 = *(v78 - 8);
  v9 = MEMORY[0x1EEE9AC00](v78);
  v70 = &v59 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v68 = &v59 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077518, &qword_1E65F9F10);
  v13 = MEMORY[0x1EEE9AC00](v12 - 8);
  result = MEMORY[0x1EEE9AC00](v13);
  v72 = &v59 - v16;
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v71 = v15;
  v66 = v7;
  v67 = a2;
  v17 = 0;
  v63 = a1;
  v20 = *(a1 + 64);
  v19 = a1 + 64;
  v18 = v20;
  v21 = 1 << *(v19 - 32);
  v22 = -1;
  if (v21 < 64)
  {
    v22 = ~(-1 << v21);
  }

  v23 = v22 & v18;
  v60 = (v21 + 63) >> 6;
  v61 = v19;
  v62 = v69 + 16;
  v76 = (v69 + 32);
  v74 = v79 + 16;
  v75 = (v79 + 32);
  v64 = (v69 + 8);
  v65 = (v79 + 8);
  while (v23)
  {
    v73 = (v23 - 1) & v23;
    v24 = __clz(__rbit64(v23)) | (v17 << 6);
LABEL_16:
    v31 = v63;
    v33 = v68;
    v32 = v69;
    v34 = v78;
    (*(v69 + 16))(v68, *(v63 + 48) + *(v69 + 72) * v24, v78);
    v35 = *(v31 + 56);
    v36 = v79;
    v37 = v77;
    (*(v79 + 16))(v77, v35 + *(v79 + 72) * v24, v4);
    v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077520, &qword_1E65F9F18);
    v39 = *(v38 + 48);
    v40 = *(v32 + 32);
    v28 = v71;
    v40(v71, v33, v34);
    (*(v36 + 32))(v28 + v39, v37, v4);
    (*(*(v38 - 8) + 56))(v28, 0, 1, v38);
    v27 = v72;
    v23 = v73;
LABEL_17:
    sub_1E5FAB460(v28, v27, &qword_1ED077518, &qword_1E65F9F10);
    v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077520, &qword_1E65F9F18);
    v42 = (*(*(v41 - 8) + 48))(v27, 1, v41);
    v43 = v42 == 1;
    if (v42 == 1)
    {
      return v43;
    }

    v44 = *(v41 + 48);
    v45 = v4;
    v46 = v70;
    v47 = v78;
    (*v76)(v70, v27, v78);
    v48 = v66;
    (*v75)(v66, v27 + v44, v45);
    v49 = v67;
    v50 = sub_1E6416D34(v46);
    v52 = v51;
    (*v64)(v46, v47);
    if ((v52 & 1) == 0)
    {
      (*v65)(v48, v45);
      return 0;
    }

    v53 = v79;
    v54 = *(v49 + 56) + *(v79 + 72) * v50;
    v55 = v77;
    (*(v79 + 16))(v77, v54, v45);
    sub_1E5FED46C(&qword_1ED077528, &qword_1ED074B28, &qword_1E65F1080, MEMORY[0x1E699D080]);
    v56 = sub_1E65E5B98();
    v57 = *(v53 + 8);
    v57(v55, v45);
    result = (v57)(v48, v45);
    v4 = v45;
    if ((v56 & 1) == 0)
    {
      return v43;
    }
  }

  if (v60 <= v17 + 1)
  {
    v25 = v17 + 1;
  }

  else
  {
    v25 = v60;
  }

  v26 = v25 - 1;
  v28 = v71;
  v27 = v72;
  while (1)
  {
    v29 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v29 >= v60)
    {
      v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077520, &qword_1E65F9F18);
      (*(*(v58 - 8) + 56))(v28, 1, 1, v58);
      v23 = 0;
      v17 = v26;
      goto LABEL_17;
    }

    v30 = *(v61 + 8 * v29);
    ++v17;
    if (v30)
    {
      v73 = (v30 - 1) & v30;
      v24 = __clz(__rbit64(v30)) | (v29 << 6);
      v17 = v29;
      goto LABEL_16;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1E62833E8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E65E0D48();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v56 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v71 = &v56 - v9;
  v10 = sub_1E65E0B48();
  v65 = *(v10 - 8);
  v11 = MEMORY[0x1EEE9AC00](v10 - 8);
  v66 = &v56 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v64 = &v56 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077530, &qword_1E65F9F20);
  v15 = MEMORY[0x1EEE9AC00](v14 - 8);
  result = MEMORY[0x1EEE9AC00](v15);
  v67 = a2;
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(v67 + 16))
  {
    return 0;
  }

  v62 = &v56 - v17;
  v63 = v18;
  v19 = 0;
  v60 = a1;
  v22 = *(a1 + 64);
  v21 = a1 + 64;
  v20 = v22;
  v23 = 1 << *(v21 - 32);
  v24 = -1;
  if (v23 < 64)
  {
    v24 = ~(-1 << v23);
  }

  v25 = v24 & v20;
  v57 = (v23 + 63) >> 6;
  v58 = v21;
  v68 = v5 + 16;
  v69 = (v5 + 32);
  v61 = (v5 + 8);
  v59 = v8;
  while (v25)
  {
    v70 = (v25 - 1) & v25;
    v26 = __clz(__rbit64(v25)) | (v19 << 6);
    v27 = v63;
LABEL_16:
    v32 = v60;
    v33 = v64;
    v34 = MEMORY[0x1E699DD40];
    sub_1E6288EB8(*(v60 + 48) + *(v65 + 72) * v26, v64, MEMORY[0x1E699DD40]);
    v35 = v71;
    (*(v5 + 16))(v71, *(v32 + 56) + *(v5 + 72) * v26, v4);
    v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077538, &qword_1E65F9F28);
    v37 = *(v36 + 48);
    sub_1E6288F20(v33, v27, v34);
    (*(v5 + 32))(v27 + v37, v35, v4);
    (*(*(v36 - 8) + 56))(v27, 0, 1, v36);
    v8 = v59;
LABEL_17:
    v38 = v62;
    sub_1E5FAB460(v27, v62, &qword_1ED077530, &qword_1E65F9F20);
    v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077538, &qword_1E65F9F28);
    v40 = (*(*(v39 - 8) + 48))(v38, 1, v39);
    v41 = v40 == 1;
    if (v40 == 1)
    {
      return v41;
    }

    v42 = *(v39 + 48);
    v43 = MEMORY[0x1E699DD40];
    v44 = v66;
    sub_1E6288F20(v38, v66, MEMORY[0x1E699DD40]);
    (*v69)(v8, v38 + v42, v4);
    v45 = v67;
    v46 = v4;
    v47 = v8;
    v48 = sub_1E6416E08(v44);
    v50 = v49;
    sub_1E6288F88(v44, v43);
    if ((v50 & 1) == 0)
    {
      (*v61)(v47, v46);
      return 0;
    }

    v51 = *(v45 + 56) + *(v5 + 72) * v48;
    v52 = v71;
    (*(v5 + 16))(v71, v51, v46);
    sub_1E6288E70(&qword_1ED074A98, MEMORY[0x1E699DEB0], MEMORY[0x1E699DEC0]);
    v53 = sub_1E65E5B98();
    v54 = *(v5 + 8);
    v54(v52, v46);
    result = (v54)(v47, v46);
    v8 = v47;
    v4 = v46;
    v25 = v70;
    if ((v53 & 1) == 0)
    {
      return v41;
    }
  }

  if (v57 <= v19 + 1)
  {
    v28 = v19 + 1;
  }

  else
  {
    v28 = v57;
  }

  v29 = v28 - 1;
  v27 = v63;
  while (1)
  {
    v30 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      break;
    }

    if (v30 >= v57)
    {
      v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077538, &qword_1E65F9F28);
      (*(*(v55 - 8) + 56))(v27, 1, 1, v55);
      v70 = 0;
      v19 = v29;
      goto LABEL_17;
    }

    v31 = *(v58 + 8 * v30);
    ++v19;
    if (v31)
    {
      v70 = (v31 - 1) & v31;
      v26 = __clz(__rbit64(v31)) | (v30 << 6);
      v19 = v30;
      goto LABEL_16;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1E62839FC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072810, &qword_1E65EBE08);
  v61 = *(v4 - 8);
  v5 = MEMORY[0x1EEE9AC00](v4);
  v7 = &v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v60 = &v50 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077570, &qword_1E65F9F60);
  v10 = MEMORY[0x1EEE9AC00](v9 - 8);
  result = MEMORY[0x1EEE9AC00](v10);
  v56 = a2;
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(v56 + 16))
  {
    return 0;
  }

  v54 = (&v50 - v12);
  v55 = v13;
  v53 = v7;
  v14 = 0;
  v51 = a1;
  v15 = *(a1 + 64);
  v50 = a1 + 64;
  v16 = 1 << *(a1 + 32);
  v17 = -1;
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  v18 = v17 & v15;
  v19 = (v16 + 63) >> 6;
  v57 = v61 + 16;
  v58 = (v61 + 32);
  v52 = (v61 + 8);
  while (1)
  {
    v20 = v55;
    if (!v18)
    {
      break;
    }

    v59 = (v18 - 1) & v18;
    v21 = __clz(__rbit64(v18)) | (v14 << 6);
LABEL_16:
    v26 = (*(v51 + 48) + 16 * v21);
    v27 = *v26;
    v28 = v26[1];
    v30 = v60;
    v29 = v61;
    (*(v61 + 16))(v60, *(v51 + 56) + *(v61 + 72) * v21, v4);
    v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077578, &qword_1E65F9F68);
    v32 = *(v31 + 48);
    *v20 = v27;
    *(v20 + 1) = v28;
    (*(v29 + 32))(&v20[v32], v30, v4);
    (*(*(v31 - 8) + 56))(v20, 0, 1, v31);

LABEL_17:
    v33 = v54;
    sub_1E5FAB460(v20, v54, &qword_1ED077570, &qword_1E65F9F60);
    v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077578, &qword_1E65F9F68);
    v35 = (*(*(v34 - 8) + 48))(v33, 1, v34);
    v36 = v35 == 1;
    if (v35 == 1)
    {
      return v36;
    }

    v37 = *(v34 + 48);
    v39 = *v33;
    v38 = v33[1];
    v40 = v56;
    v41 = v53;
    (*v58)(v53, v33 + v37, v4);
    v42 = sub_1E6215038(v39, v38);
    v44 = v43;

    if ((v44 & 1) == 0)
    {
      (*v52)(v41, v4);
      return 0;
    }

    v46 = v60;
    v45 = v61;
    (*(v61 + 16))(v60, *(v40 + 56) + *(v61 + 72) * v42, v4);
    sub_1E5FED46C(&qword_1ED074998, &qword_1ED072810, &qword_1E65EBE08, MEMORY[0x1E699D748]);
    v47 = sub_1E65E5B98();
    v48 = *(v45 + 8);
    v48(v46, v4);
    result = (v48)(v41, v4);
    v18 = v59;
    if ((v47 & 1) == 0)
    {
      return v36;
    }
  }

  if (v19 <= v14 + 1)
  {
    v22 = v14 + 1;
  }

  else
  {
    v22 = v19;
  }

  v23 = v22 - 1;
  while (1)
  {
    v24 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v24 >= v19)
    {
      v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077578, &qword_1E65F9F68);
      (*(*(v49 - 8) + 56))(v20, 1, 1, v49);
      v59 = 0;
      v14 = v23;
      goto LABEL_17;
    }

    v25 = *(v50 + 8 * v24);
    ++v14;
    if (v25)
    {
      v59 = (v25 - 1) & v25;
      v21 = __clz(__rbit64(v25)) | (v24 << 6);
      v14 = v24;
      goto LABEL_16;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1E6283F14(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E65DFA08();
  v61 = *(v4 - 8);
  v5 = MEMORY[0x1EEE9AC00](v4);
  v7 = &v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v60 = &v50 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077580, &qword_1E65F9F70);
  v10 = MEMORY[0x1EEE9AC00](v9 - 8);
  result = MEMORY[0x1EEE9AC00](v10);
  v56 = a2;
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(v56 + 16))
  {
    return 0;
  }

  v54 = (&v50 - v12);
  v55 = v13;
  v53 = v7;
  v14 = 0;
  v51 = a1;
  v15 = *(a1 + 64);
  v50 = a1 + 64;
  v16 = 1 << *(a1 + 32);
  v17 = -1;
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  v18 = v17 & v15;
  v19 = (v16 + 63) >> 6;
  v57 = v61 + 16;
  v58 = (v61 + 32);
  v52 = (v61 + 8);
  while (1)
  {
    v20 = v55;
    if (!v18)
    {
      break;
    }

    v59 = (v18 - 1) & v18;
    v21 = __clz(__rbit64(v18)) | (v14 << 6);
LABEL_16:
    v26 = (*(v51 + 48) + 16 * v21);
    v27 = *v26;
    v28 = v26[1];
    v30 = v60;
    v29 = v61;
    (*(v61 + 16))(v60, *(v51 + 56) + *(v61 + 72) * v21, v4);
    v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077588, &qword_1E65F9F78);
    v32 = *(v31 + 48);
    *v20 = v27;
    *(v20 + 1) = v28;
    (*(v29 + 32))(&v20[v32], v30, v4);
    (*(*(v31 - 8) + 56))(v20, 0, 1, v31);

LABEL_17:
    v33 = v54;
    sub_1E5FAB460(v20, v54, &qword_1ED077580, &qword_1E65F9F70);
    v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077588, &qword_1E65F9F78);
    v35 = (*(*(v34 - 8) + 48))(v33, 1, v34);
    v36 = v35 == 1;
    if (v35 == 1)
    {
      return v36;
    }

    v37 = *(v34 + 48);
    v39 = *v33;
    v38 = v33[1];
    v40 = v56;
    v41 = v53;
    (*v58)(v53, v33 + v37, v4);
    v42 = sub_1E6215038(v39, v38);
    v44 = v43;

    if ((v44 & 1) == 0)
    {
      (*v52)(v41, v4);
      return 0;
    }

    v46 = v60;
    v45 = v61;
    (*(v61 + 16))(v60, *(v40 + 56) + *(v61 + 72) * v42, v4);
    sub_1E6288E70(&qword_1ED074950, MEMORY[0x1E699D450], MEMORY[0x1E699D460]);
    v47 = sub_1E65E5B98();
    v48 = *(v45 + 8);
    v48(v46, v4);
    result = (v48)(v41, v4);
    v18 = v59;
    if ((v47 & 1) == 0)
    {
      return v36;
    }
  }

  if (v19 <= v14 + 1)
  {
    v22 = v14 + 1;
  }

  else
  {
    v22 = v19;
  }

  v23 = v22 - 1;
  while (1)
  {
    v24 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v24 >= v19)
    {
      v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077588, &qword_1E65F9F78);
      (*(*(v49 - 8) + 56))(v20, 1, 1, v49);
      v59 = 0;
      v14 = v23;
      goto LABEL_17;
    }

    v25 = *(v50 + 8 * v24);
    ++v14;
    if (v25)
    {
      v59 = (v25 - 1) & v25;
      v21 = __clz(__rbit64(v25)) | (v24 << 6);
      v14 = v24;
      goto LABEL_16;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1E6284424(unint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_13:
    v12 = v9 | (v4 << 6);
    v13 = (*(v3 + 48) + 16 * v12);
    v14 = *v13;
    v15 = v13[1];
    v16 = *(*(v3 + 56) + 8 * v12);

    sub_1E5E06368(v16);
    v17 = sub_1E6215038(v14, v15);
    v19 = v18;

    if ((v19 & 1) == 0)
    {
      sub_1E5F87148(v16);
      return 0;
    }

    v20 = *(*(a2 + 56) + 8 * v17);
    sub_1E5E06368(v20);
    v21 = sub_1E65DBFE8();
    sub_1E5F87148(v20);
    result = sub_1E5F87148(v16);
    if ((v21 & 1) == 0)
    {
      return 0;
    }
  }

  v10 = v4;
  while (1)
  {
    v4 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v11 = *(v3 + 64 + 8 * v4);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v7 = (v11 - 1) & v11;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1E6284590(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E65DBED8();
  v61 = *(v4 - 8);
  v5 = MEMORY[0x1EEE9AC00](v4);
  v7 = &v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v60 = &v50 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077590, &qword_1E65F9F80);
  v10 = MEMORY[0x1EEE9AC00](v9 - 8);
  result = MEMORY[0x1EEE9AC00](v10);
  v56 = a2;
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(v56 + 16))
  {
    return 0;
  }

  v54 = (&v50 - v12);
  v55 = v13;
  v53 = v7;
  v14 = 0;
  v51 = a1;
  v15 = *(a1 + 64);
  v50 = a1 + 64;
  v16 = 1 << *(a1 + 32);
  v17 = -1;
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  v18 = v17 & v15;
  v19 = (v16 + 63) >> 6;
  v57 = v61 + 16;
  v58 = (v61 + 32);
  v52 = (v61 + 8);
  while (1)
  {
    v20 = v55;
    if (!v18)
    {
      break;
    }

    v59 = (v18 - 1) & v18;
    v21 = __clz(__rbit64(v18)) | (v14 << 6);
LABEL_16:
    v26 = (*(v51 + 48) + 16 * v21);
    v27 = *v26;
    v28 = v26[1];
    v30 = v60;
    v29 = v61;
    (*(v61 + 16))(v60, *(v51 + 56) + *(v61 + 72) * v21, v4);
    v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077598, &qword_1E65F9F88);
    v32 = *(v31 + 48);
    *v20 = v27;
    *(v20 + 1) = v28;
    (*(v29 + 32))(&v20[v32], v30, v4);
    (*(*(v31 - 8) + 56))(v20, 0, 1, v31);

LABEL_17:
    v33 = v54;
    sub_1E5FAB460(v20, v54, &qword_1ED077590, &qword_1E65F9F80);
    v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077598, &qword_1E65F9F88);
    v35 = (*(*(v34 - 8) + 48))(v33, 1, v34);
    v36 = v35 == 1;
    if (v35 == 1)
    {
      return v36;
    }

    v37 = *(v34 + 48);
    v39 = *v33;
    v38 = v33[1];
    v40 = v56;
    v41 = v53;
    (*v58)(v53, v33 + v37, v4);
    v42 = sub_1E6215038(v39, v38);
    v44 = v43;

    if ((v44 & 1) == 0)
    {
      (*v52)(v41, v4);
      return 0;
    }

    v46 = v60;
    v45 = v61;
    (*(v61 + 16))(v60, *(v40 + 56) + *(v61 + 72) * v42, v4);
    sub_1E6288E70(&qword_1ED074808, MEMORY[0x1E699D318], MEMORY[0x1E699D328]);
    v47 = sub_1E65E5B98();
    v48 = *(v45 + 8);
    v48(v46, v4);
    result = (v48)(v41, v4);
    v18 = v59;
    if ((v47 & 1) == 0)
    {
      return v36;
    }
  }

  if (v19 <= v14 + 1)
  {
    v22 = v14 + 1;
  }

  else
  {
    v22 = v19;
  }

  v23 = v22 - 1;
  while (1)
  {
    v24 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v24 >= v19)
    {
      v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077598, &qword_1E65F9F88);
      (*(*(v49 - 8) + 56))(v20, 1, 1, v49);
      v59 = 0;
      v14 = v23;
      goto LABEL_17;
    }

    v25 = *(v50 + 8 * v24);
    ++v14;
    if (v25)
    {
      v59 = (v25 - 1) & v25;
      v21 = __clz(__rbit64(v25)) | (v24 << 6);
      v14 = v24;
      goto LABEL_16;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1E6284AA0(uint64_t result, uint64_t a2)
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
    v11 = v8 | (v3 << 6);
    v12 = (*(v2 + 48) + 16 * v11);
    v13 = *v12;
    v14 = v12[1];
    v15 = *(*(v2 + 56) + 8 * v11);

    sub_1E6215038(v13, v14);
    v17 = v16;

    if ((v17 & 1) == 0)
    {

      return 0;
    }

    v19 = sub_1E6284C08(v18, v15);

    if ((v19 & 1) == 0)
    {
      return 0;
    }
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

uint64_t sub_1E6284C08(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E65DBD18();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4 - 8);
  v8 = &v57 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v64 = &v57 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0775A0, &qword_1E65F9F90);
  v11 = MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = (&v57 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  result = MEMORY[0x1EEE9AC00](v11);
  v16 = (&v57 - v15);
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v60 = v8;
  v61 = a2;
  v63 = v5;
  v17 = 0;
  v59 = a1;
  v20 = *(a1 + 64);
  v19 = a1 + 64;
  v18 = v20;
  v21 = 1 << *(v19 - 32);
  v22 = -1;
  if (v21 < 64)
  {
    v22 = ~(-1 << v21);
  }

  v23 = v22 & v18;
  v57 = (v21 + 63) >> 6;
  v58 = v19;
  v24 = &unk_1ED0775A8;
  v25 = &unk_1E65F9F98;
  while (v23)
  {
    v62 = (v23 - 1) & v23;
    v26 = __clz(__rbit64(v23)) | (v17 << 6);
    v27 = v63;
LABEL_16:
    v33 = (*(v59 + 48) + 16 * v26);
    v34 = *v33;
    v35 = v33[1];
    v36 = MEMORY[0x1E699D278];
    v37 = v64;
    sub_1E6288EB8(*(v59 + 56) + *(v27 + 72) * v26, v64, MEMORY[0x1E699D278]);
    v38 = __swift_instantiateConcreteTypeFromMangledNameV2(v24, v25);
    v39 = *(v38 + 48);
    *v13 = v34;
    v13[1] = v35;
    sub_1E6288F20(v37, v13 + v39, v36);
    (*(*(v38 - 8) + 56))(v13, 0, 1, v38);
    v30 = v61;
LABEL_17:
    sub_1E5FAB460(v13, v16, &qword_1ED0775A0, &qword_1E65F9F90);
    v40 = __swift_instantiateConcreteTypeFromMangledNameV2(v24, v25);
    v41 = (*(*(v40 - 8) + 48))(v16, 1, v40);
    v42 = v41 == 1;
    if (v41 == 1)
    {
      return v42;
    }

    v43 = *v16;
    v44 = v16[1];
    v45 = v60;
    sub_1E6288F20(v16 + *(v40 + 48), v60, MEMORY[0x1E699D278]);
    v46 = sub_1E6416F1C(v43, v44);
    if ((v47 & 1) == 0)
    {
      sub_1E6288F88(v45, MEMORY[0x1E699D278]);
      return 0;
    }

    v48 = MEMORY[0x1E699D278];
    v49 = v25;
    v50 = v24;
    v51 = v16;
    v52 = v13;
    v53 = v64;
    sub_1E6288EB8(*(v30 + 56) + *(v63 + 72) * v46, v64, MEMORY[0x1E699D278]);
    v54 = MEMORY[0x1E6943710](v53, v45);
    v55 = v53;
    v13 = v52;
    v16 = v51;
    v24 = v50;
    v25 = v49;
    sub_1E6288F88(v55, v48);
    result = sub_1E6288F88(v45, v48);
    v23 = v62;
    if ((v54 & 1) == 0)
    {
      return v42;
    }
  }

  if (v57 <= v17 + 1)
  {
    v28 = v17 + 1;
  }

  else
  {
    v28 = v57;
  }

  v29 = v28 - 1;
  v27 = v63;
  v30 = v61;
  while (1)
  {
    v31 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v31 >= v57)
    {
      v56 = __swift_instantiateConcreteTypeFromMangledNameV2(v24, v25);
      (*(*(v56 - 8) + 56))(v13, 1, 1, v56);
      v62 = 0;
      v17 = v29;
      goto LABEL_17;
    }

    v32 = *(v58 + 8 * v31);
    ++v17;
    if (v32)
    {
      v62 = (v32 - 1) & v32;
      v26 = __clz(__rbit64(v32)) | (v31 << 6);
      v17 = v31;
      goto LABEL_16;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1E6285090(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E65DBD88();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4 - 8);
  v8 = &v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v60 = &v53 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0775B0, &qword_1E65F9FA0);
  v11 = MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = (&v53 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  result = MEMORY[0x1EEE9AC00](v11);
  v58 = (&v53 - v15);
  if (a1 == a2)
  {
    return 1;
  }

  v16 = *(a1 + 16);
  v57 = a2;
  if (v16 != *(a2 + 16))
  {
    return 0;
  }

  v55 = v5;
  v56 = v8;
  v17 = 0;
  v54 = a1;
  v18 = *(a1 + 64);
  v53 = a1 + 64;
  v19 = 1 << *(a1 + 32);
  v20 = -1;
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  v21 = v20 & v18;
  v22 = (v19 + 63) >> 6;
  while (v21)
  {
    v59 = (v21 - 1) & v21;
    v23 = __clz(__rbit64(v21)) | (v17 << 6);
    v24 = v58;
LABEL_16:
    v29 = (*(v54 + 48) + 16 * v23);
    v30 = *v29;
    v31 = v29[1];
    v32 = MEMORY[0x1E699D2D0];
    v33 = v60;
    sub_1E6288EB8(*(v54 + 56) + *(v5 + 72) * v23, v60, MEMORY[0x1E699D2D0]);
    v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0775B8, &qword_1E65F9FA8);
    v35 = *(v34 + 48);
    *v13 = v30;
    v13[1] = v31;
    sub_1E6288F20(v33, v13 + v35, v32);
    (*(*(v34 - 8) + 56))(v13, 0, 1, v34);

LABEL_17:
    sub_1E5FAB460(v13, v24, &qword_1ED0775B0, &qword_1E65F9FA0);
    v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0775B8, &qword_1E65F9FA8);
    v37 = (*(*(v36 - 8) + 48))(v24, 1, v36);
    v38 = v37 == 1;
    if (v37 == 1)
    {
      return v38;
    }

    v39 = *(v36 + 48);
    v40 = *v24;
    v41 = v24[1];
    v42 = v56;
    sub_1E6288F20(v24 + v39, v56, MEMORY[0x1E699D2D0]);
    v43 = v57;
    v44 = sub_1E6215038(v40, v41);
    v46 = v45;

    if ((v46 & 1) == 0)
    {
      sub_1E6288F88(v42, MEMORY[0x1E699D2D0]);
      return 0;
    }

    v5 = v55;
    v47 = MEMORY[0x1E699D2D0];
    v48 = v13;
    v49 = v60;
    sub_1E6288EB8(*(v43 + 56) + *(v55 + 72) * v44, v60, MEMORY[0x1E699D2D0]);
    v50 = MEMORY[0x1E6943780](v49, v42);
    v51 = v49;
    v13 = v48;
    sub_1E6288F88(v51, v47);
    result = sub_1E6288F88(v42, v47);
    v21 = v59;
    if ((v50 & 1) == 0)
    {
      return v38;
    }
  }

  if (v22 <= v17 + 1)
  {
    v25 = v17 + 1;
  }

  else
  {
    v25 = v22;
  }

  v26 = v25 - 1;
  v24 = v58;
  while (1)
  {
    v27 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v27 >= v22)
    {
      v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0775B8, &qword_1E65F9FA8);
      (*(*(v52 - 8) + 56))(v13, 1, 1, v52);
      v59 = 0;
      v17 = v26;
      goto LABEL_17;
    }

    v28 = *(v53 + 8 * v27);
    ++v17;
    if (v28)
    {
      v59 = (v28 - 1) & v28;
      v23 = __clz(__rbit64(v28)) | (v27 << 6);
      v17 = v27;
      goto LABEL_16;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1E6285524(uint64_t result, uint64_t a2)
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

    sub_1E6215038(v12, v13);
    v15 = v14;

    if (v15)
    {
      result = sub_1E65E2E68();
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

uint64_t sub_1E628565C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072AE0, &qword_1E65F9E00);
  v61 = *(v4 - 8);
  v5 = MEMORY[0x1EEE9AC00](v4);
  v7 = &v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v60 = &v50 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076340, &qword_1E65F53F0);
  v10 = MEMORY[0x1EEE9AC00](v9 - 8);
  result = MEMORY[0x1EEE9AC00](v10);
  v56 = a2;
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(v56 + 16))
  {
    return 0;
  }

  v54 = (&v50 - v12);
  v55 = v13;
  v53 = v7;
  v14 = 0;
  v51 = a1;
  v15 = *(a1 + 64);
  v50 = a1 + 64;
  v16 = 1 << *(a1 + 32);
  v17 = -1;
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  v18 = v17 & v15;
  v19 = (v16 + 63) >> 6;
  v57 = v61 + 16;
  v58 = (v61 + 32);
  v52 = (v61 + 8);
  while (1)
  {
    v20 = v55;
    if (!v18)
    {
      break;
    }

    v59 = (v18 - 1) & v18;
    v21 = __clz(__rbit64(v18)) | (v14 << 6);
LABEL_16:
    v26 = (*(v51 + 48) + 16 * v21);
    v27 = *v26;
    v28 = v26[1];
    v30 = v60;
    v29 = v61;
    (*(v61 + 16))(v60, *(v51 + 56) + *(v61 + 72) * v21, v4);
    v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076348, &unk_1E65F9E90);
    v32 = *(v31 + 48);
    *v20 = v27;
    *(v20 + 1) = v28;
    (*(v29 + 32))(&v20[v32], v30, v4);
    (*(*(v31 - 8) + 56))(v20, 0, 1, v31);

LABEL_17:
    v33 = v54;
    sub_1E5FAB460(v20, v54, &qword_1ED076340, &qword_1E65F53F0);
    v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076348, &unk_1E65F9E90);
    v35 = (*(*(v34 - 8) + 48))(v33, 1, v34);
    v36 = v35 == 1;
    if (v35 == 1)
    {
      return v36;
    }

    v37 = *(v34 + 48);
    v39 = *v33;
    v38 = v33[1];
    v40 = v56;
    v41 = v53;
    (*v58)(v53, v33 + v37, v4);
    v42 = sub_1E6215038(v39, v38);
    v44 = v43;

    if ((v44 & 1) == 0)
    {
      (*v52)(v41, v4);
      return 0;
    }

    v46 = v60;
    v45 = v61;
    (*(v61 + 16))(v60, *(v40 + 56) + *(v61 + 72) * v42, v4);
    sub_1E5FED46C(&qword_1ED077498, &qword_1ED072AE0, &qword_1E65F9E00, MEMORY[0x1E699CB88]);
    v47 = sub_1E65E5B98();
    v48 = *(v45 + 8);
    v48(v46, v4);
    result = (v48)(v41, v4);
    v18 = v59;
    if ((v47 & 1) == 0)
    {
      return v36;
    }
  }

  if (v19 <= v14 + 1)
  {
    v22 = v14 + 1;
  }

  else
  {
    v22 = v19;
  }

  v23 = v22 - 1;
  while (1)
  {
    v24 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v24 >= v19)
    {
      v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076348, &unk_1E65F9E90);
      (*(*(v49 - 8) + 56))(v20, 1, 1, v49);
      v59 = 0;
      v14 = v23;
      goto LABEL_17;
    }

    v25 = *(v50 + 8 * v24);
    ++v14;
    if (v25)
    {
      v59 = (v25 - 1) & v25;
      v21 = __clz(__rbit64(v25)) | (v24 << 6);
      v14 = v24;
      goto LABEL_16;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1E6285B74(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072AE0, &qword_1E65F9E00);
  v5 = *(v4 - 8);
  v66 = v4;
  v67 = v5;
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v54 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v65 = &v54 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076328, &qword_1E65F53E8);
  v11 = MEMORY[0x1EEE9AC00](v10 - 8);
  v68 = (&v54 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  result = MEMORY[0x1EEE9AC00](v11);
  v15 = &v54 - v14;
  v69 = a2;
  if (a1 == a2)
  {
    LODWORD(v60) = 1;
    return v60;
  }

  if (*(a1 + 16) != *(v69 + 16))
  {
LABEL_24:
    LODWORD(v60) = 0;
    return v60;
  }

  v16 = 0;
  v57 = a1;
  v17 = *(a1 + 64);
  v55 = a1 + 64;
  v56 = v8;
  v18 = 1 << *(a1 + 32);
  v19 = -1;
  if (v18 < 64)
  {
    v19 = ~(-1 << v18);
  }

  v20 = v19 & v17;
  v21 = (v18 + 63) >> 6;
  v61 = v67 + 16;
  v62 = &v54 - v14;
  v63 = (v67 + 32);
  v58 = v21;
  v59 = (v67 + 8);
  while (v20)
  {
    v64 = (v20 - 1) & v20;
    v22 = __clz(__rbit64(v20)) | (v16 << 6);
LABEL_16:
    v27 = *(v57 + 56);
    v28 = *(v57 + 48) + 24 * v22;
    v29 = *(v28 + 8);
    v60 = *v28;
    v30 = v60;
    v32 = v66;
    v31 = v67;
    v33 = *(v28 + 16);
    v34 = v65;
    (*(v67 + 16))(v65, v27 + *(v67 + 72) * v22, v66);
    v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076330, &unk_1E65F9E80);
    v36 = *(v35 + 48);
    v37 = v68;
    *v68 = v30;
    v37[1] = v29;
    *(v37 + 16) = v33;
    (*(v31 + 32))(v37 + v36, v34, v32);
    (*(*(v35 - 8) + 56))(v37, 0, 1, v35);
    sub_1E600B01C(v60, v29, v33);
    v8 = v56;
    v15 = v62;
LABEL_17:
    sub_1E5FAB460(v68, v15, &qword_1ED076328, &qword_1E65F53E8);
    v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076330, &unk_1E65F9E80);
    v39 = (*(*(v38 - 8) + 48))(v15, 1, v38);
    LODWORD(v60) = v39 == 1;
    if (v39 == 1)
    {
      return v60;
    }

    v40 = v65;
    v41 = v66;
    v42 = v67;
    v43 = *(v38 + 48);
    v44 = *v15;
    v45 = *(v15 + 1);
    v46 = v15[16];
    (*v63)(v8, &v15[v43], v66);
    v47 = v8;
    v48 = sub_1E6416FB4(v44, v45, v46);
    v49 = v41;
    LOBYTE(v41) = v50;
    sub_1E6001C2C(v44, v45, v46);
    if ((v41 & 1) == 0)
    {
      (*v59)(v47, v49);
      goto LABEL_24;
    }

    (*(v42 + 16))(v40, *(v69 + 56) + *(v42 + 72) * v48, v49);
    sub_1E5FED46C(&qword_1ED077498, &qword_1ED072AE0, &qword_1E65F9E00, MEMORY[0x1E699CB88]);
    v51 = sub_1E65E5B98();
    v52 = *(v42 + 8);
    v52(v40, v49);
    result = (v52)(v47, v49);
    v8 = v47;
    v15 = v62;
    v21 = v58;
    v20 = v64;
    if ((v51 & 1) == 0)
    {
      return v60;
    }
  }

  if (v21 <= v16 + 1)
  {
    v23 = v16 + 1;
  }

  else
  {
    v23 = v21;
  }

  v24 = v23 - 1;
  while (1)
  {
    v25 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v25 >= v21)
    {
      v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076330, &unk_1E65F9E80);
      (*(*(v53 - 8) + 56))(v68, 1, 1, v53);
      v64 = 0;
      v16 = v24;
      goto LABEL_17;
    }

    v26 = *(v55 + 8 * v25);
    ++v16;
    if (v26)
    {
      v64 = (v26 - 1) & v26;
      v22 = __clz(__rbit64(v26)) | (v25 << 6);
      v16 = v25;
      goto LABEL_16;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1E62860DC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076308, &qword_1E65F53D8);
  v61 = *(v4 - 8);
  v5 = MEMORY[0x1EEE9AC00](v4);
  v7 = &v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v60 = &v50 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076310, &qword_1E65F53E0);
  v10 = MEMORY[0x1EEE9AC00](v9 - 8);
  result = MEMORY[0x1EEE9AC00](v10);
  v56 = a2;
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(v56 + 16))
  {
    return 0;
  }

  v54 = (&v50 - v12);
  v55 = v13;
  v53 = v7;
  v14 = 0;
  v51 = a1;
  v15 = *(a1 + 64);
  v50 = a1 + 64;
  v16 = 1 << *(a1 + 32);
  v17 = -1;
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  v18 = v17 & v15;
  v19 = (v16 + 63) >> 6;
  v57 = v61 + 16;
  v58 = (v61 + 32);
  v52 = (v61 + 8);
  while (1)
  {
    v20 = v55;
    if (!v18)
    {
      break;
    }

    v59 = (v18 - 1) & v18;
    v21 = __clz(__rbit64(v18)) | (v14 << 6);
LABEL_16:
    v26 = (*(v51 + 48) + 16 * v21);
    v27 = *v26;
    v28 = v26[1];
    v30 = v60;
    v29 = v61;
    (*(v61 + 16))(v60, *(v51 + 56) + *(v61 + 72) * v21, v4);
    v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076318, &unk_1E65F9E70);
    v32 = *(v31 + 48);
    *v20 = v27;
    *(v20 + 1) = v28;
    (*(v29 + 32))(&v20[v32], v30, v4);
    (*(*(v31 - 8) + 56))(v20, 0, 1, v31);

LABEL_17:
    v33 = v54;
    sub_1E5FAB460(v20, v54, &qword_1ED076310, &qword_1E65F53E0);
    v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076318, &unk_1E65F9E70);
    v35 = (*(*(v34 - 8) + 48))(v33, 1, v34);
    v36 = v35 == 1;
    if (v35 == 1)
    {
      return v36;
    }

    v37 = *(v34 + 48);
    v39 = *v33;
    v38 = v33[1];
    v40 = v56;
    v41 = v53;
    (*v58)(v53, v33 + v37, v4);
    v42 = sub_1E6215038(v39, v38);
    v44 = v43;

    if ((v44 & 1) == 0)
    {
      (*v52)(v41, v4);
      return 0;
    }

    v46 = v60;
    v45 = v61;
    (*(v61 + 16))(v60, *(v40 + 56) + *(v61 + 72) * v42, v4);
    sub_1E5FED46C(&qword_1ED077490, &qword_1ED076308, &qword_1E65F53D8, MEMORY[0x1E699CB88]);
    v47 = sub_1E65E5B98();
    v48 = *(v45 + 8);
    v48(v46, v4);
    result = (v48)(v41, v4);
    v18 = v59;
    if ((v47 & 1) == 0)
    {
      return v36;
    }
  }

  if (v19 <= v14 + 1)
  {
    v22 = v14 + 1;
  }

  else
  {
    v22 = v19;
  }

  v23 = v22 - 1;
  while (1)
  {
    v24 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v24 >= v19)
    {
      v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076318, &unk_1E65F9E70);
      (*(*(v49 - 8) + 56))(v20, 1, 1, v49);
      v59 = 0;
      v14 = v23;
      goto LABEL_17;
    }

    v25 = *(v50 + 8 * v24);
    ++v14;
    if (v25)
    {
      v59 = (v25 - 1) & v25;
      v21 = __clz(__rbit64(v25)) | (v24 << 6);
      v14 = v24;
      goto LABEL_16;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1E62865F4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0762E8, &qword_1E65F53C8);
  v61 = *(v4 - 8);
  v5 = MEMORY[0x1EEE9AC00](v4);
  v7 = &v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v60 = &v50 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0762F0, &qword_1E65F53D0);
  v10 = MEMORY[0x1EEE9AC00](v9 - 8);
  result = MEMORY[0x1EEE9AC00](v10);
  v56 = a2;
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(v56 + 16))
  {
    return 0;
  }

  v54 = (&v50 - v12);
  v55 = v13;
  v53 = v7;
  v14 = 0;
  v51 = a1;
  v15 = *(a1 + 64);
  v50 = a1 + 64;
  v16 = 1 << *(a1 + 32);
  v17 = -1;
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  v18 = v17 & v15;
  v19 = (v16 + 63) >> 6;
  v57 = v61 + 16;
  v58 = (v61 + 32);
  v52 = (v61 + 8);
  while (1)
  {
    v20 = v55;
    if (!v18)
    {
      break;
    }

    v59 = (v18 - 1) & v18;
    v21 = __clz(__rbit64(v18)) | (v14 << 6);
LABEL_16:
    v26 = (*(v51 + 48) + 16 * v21);
    v27 = *v26;
    v28 = v26[1];
    v30 = v60;
    v29 = v61;
    (*(v61 + 16))(v60, *(v51 + 56) + *(v61 + 72) * v21, v4);
    v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0762F8, &unk_1E65F9E60);
    v32 = *(v31 + 48);
    *v20 = v27;
    *(v20 + 1) = v28;
    (*(v29 + 32))(&v20[v32], v30, v4);
    (*(*(v31 - 8) + 56))(v20, 0, 1, v31);

LABEL_17:
    v33 = v54;
    sub_1E5FAB460(v20, v54, &qword_1ED0762F0, &qword_1E65F53D0);
    v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0762F8, &unk_1E65F9E60);
    v35 = (*(*(v34 - 8) + 48))(v33, 1, v34);
    v36 = v35 == 1;
    if (v35 == 1)
    {
      return v36;
    }

    v37 = *(v34 + 48);
    v39 = *v33;
    v38 = v33[1];
    v40 = v56;
    v41 = v53;
    (*v58)(v53, v33 + v37, v4);
    v42 = sub_1E6215038(v39, v38);
    v44 = v43;

    if ((v44 & 1) == 0)
    {
      (*v52)(v41, v4);
      return 0;
    }

    v46 = v60;
    v45 = v61;
    (*(v61 + 16))(v60, *(v40 + 56) + *(v61 + 72) * v42, v4);
    sub_1E5FED46C(&qword_1ED077488, &qword_1ED0762E8, &qword_1E65F53C8, MEMORY[0x1E699CB88]);
    v47 = sub_1E65E5B98();
    v48 = *(v45 + 8);
    v48(v46, v4);
    result = (v48)(v41, v4);
    v18 = v59;
    if ((v47 & 1) == 0)
    {
      return v36;
    }
  }

  if (v19 <= v14 + 1)
  {
    v22 = v14 + 1;
  }

  else
  {
    v22 = v19;
  }

  v23 = v22 - 1;
  while (1)
  {
    v24 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v24 >= v19)
    {
      v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0762F8, &unk_1E65F9E60);
      (*(*(v49 - 8) + 56))(v20, 1, 1, v49);
      v59 = 0;
      v14 = v23;
      goto LABEL_17;
    }

    v25 = *(v50 + 8 * v24);
    ++v14;
    if (v25)
    {
      v59 = (v25 - 1) & v25;
      v21 = __clz(__rbit64(v25)) | (v24 << 6);
      v14 = v24;
      goto LABEL_16;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1E6286B0C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0762C8, &qword_1E65F53B8);
  v61 = *(v4 - 8);
  v5 = MEMORY[0x1EEE9AC00](v4);
  v7 = &v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v60 = &v50 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0762D0, &qword_1E65F53C0);
  v10 = MEMORY[0x1EEE9AC00](v9 - 8);
  result = MEMORY[0x1EEE9AC00](v10);
  v56 = a2;
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(v56 + 16))
  {
    return 0;
  }

  v54 = (&v50 - v12);
  v55 = v13;
  v53 = v7;
  v14 = 0;
  v51 = a1;
  v15 = *(a1 + 64);
  v50 = a1 + 64;
  v16 = 1 << *(a1 + 32);
  v17 = -1;
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  v18 = v17 & v15;
  v19 = (v16 + 63) >> 6;
  v57 = v61 + 16;
  v58 = (v61 + 32);
  v52 = (v61 + 8);
  while (1)
  {
    v20 = v55;
    if (!v18)
    {
      break;
    }

    v59 = (v18 - 1) & v18;
    v21 = __clz(__rbit64(v18)) | (v14 << 6);
LABEL_16:
    v26 = (*(v51 + 48) + 16 * v21);
    v27 = *v26;
    v28 = v26[1];
    v30 = v60;
    v29 = v61;
    (*(v61 + 16))(v60, *(v51 + 56) + *(v61 + 72) * v21, v4);
    v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0762D8, &unk_1E65F9E50);
    v32 = *(v31 + 48);
    *v20 = v27;
    *(v20 + 1) = v28;
    (*(v29 + 32))(&v20[v32], v30, v4);
    (*(*(v31 - 8) + 56))(v20, 0, 1, v31);

LABEL_17:
    v33 = v54;
    sub_1E5FAB460(v20, v54, &qword_1ED0762D0, &qword_1E65F53C0);
    v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0762D8, &unk_1E65F9E50);
    v35 = (*(*(v34 - 8) + 48))(v33, 1, v34);
    v36 = v35 == 1;
    if (v35 == 1)
    {
      return v36;
    }

    v37 = *(v34 + 48);
    v39 = *v33;
    v38 = v33[1];
    v40 = v56;
    v41 = v53;
    (*v58)(v53, v33 + v37, v4);
    v42 = sub_1E6215038(v39, v38);
    v44 = v43;

    if ((v44 & 1) == 0)
    {
      (*v52)(v41, v4);
      return 0;
    }

    v46 = v60;
    v45 = v61;
    (*(v61 + 16))(v60, *(v40 + 56) + *(v61 + 72) * v42, v4);
    sub_1E5FED46C(&qword_1ED077480, &qword_1ED0762C8, &qword_1E65F53B8, MEMORY[0x1E699CB88]);
    v47 = sub_1E65E5B98();
    v48 = *(v45 + 8);
    v48(v46, v4);
    result = (v48)(v41, v4);
    v18 = v59;
    if ((v47 & 1) == 0)
    {
      return v36;
    }
  }

  if (v19 <= v14 + 1)
  {
    v22 = v14 + 1;
  }

  else
  {
    v22 = v19;
  }

  v23 = v22 - 1;
  while (1)
  {
    v24 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v24 >= v19)
    {
      v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0762D8, &unk_1E65F9E50);
      (*(*(v49 - 8) + 56))(v20, 1, 1, v49);
      v59 = 0;
      v14 = v23;
      goto LABEL_17;
    }

    v25 = *(v50 + 8 * v24);
    ++v14;
    if (v25)
    {
      v59 = (v25 - 1) & v25;
      v21 = __clz(__rbit64(v25)) | (v24 << 6);
      v14 = v24;
      goto LABEL_16;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1E6287024(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = result + 64;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v26 = (v7 - 1) & v7;
LABEL_14:
    v12 = 16 * (v9 | (v3 << 6));
    v13 = result;
    v14 = (*(result + 48) + v12);
    v15 = *v14;
    v16 = v14[1];
    v17 = (*(result + 56) + v12);
    v19 = *v17;
    v18 = v17[1];

    v20 = sub_1E6215038(v15, v16);
    v22 = v21;

    if ((v22 & 1) == 0)
    {

      return 0;
    }

    v23 = (*(a2 + 56) + 16 * v20);
    if (*v23 == v19 && v23[1] == v18)
    {

      result = v13;
      v7 = v26;
    }

    else
    {
      v25 = sub_1E65E6C18();

      result = v13;
      v7 = v26;
      if ((v25 & 1) == 0)
      {
        return 0;
      }
    }
  }

  v10 = v3;
  while (1)
  {
    v3 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return 1;
    }

    v11 = *(v4 + 8 * v3);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v26 = (v11 - 1) & v11;
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1E62871C8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E65E2A38();
  v61 = *(v4 - 8);
  v5 = MEMORY[0x1EEE9AC00](v4);
  v7 = &v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v60 = &v50 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076350, &qword_1E65F53F8);
  v10 = MEMORY[0x1EEE9AC00](v9 - 8);
  result = MEMORY[0x1EEE9AC00](v10);
  v56 = a2;
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(v56 + 16))
  {
    return 0;
  }

  v54 = (&v50 - v12);
  v55 = v13;
  v53 = v7;
  v14 = 0;
  v51 = a1;
  v15 = *(a1 + 64);
  v50 = a1 + 64;
  v16 = 1 << *(a1 + 32);
  v17 = -1;
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  v18 = v17 & v15;
  v19 = (v16 + 63) >> 6;
  v57 = v61 + 16;
  v58 = (v61 + 32);
  v52 = (v61 + 8);
  while (1)
  {
    v20 = v55;
    if (!v18)
    {
      break;
    }

    v59 = (v18 - 1) & v18;
    v21 = __clz(__rbit64(v18)) | (v14 << 6);
LABEL_16:
    v26 = (*(v51 + 48) + 16 * v21);
    v27 = *v26;
    v28 = v26[1];
    v30 = v60;
    v29 = v61;
    (*(v61 + 16))(v60, *(v51 + 56) + *(v61 + 72) * v21, v4);
    v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076358, &qword_1E65F9EA0);
    v32 = *(v31 + 48);
    *v20 = v27;
    *(v20 + 1) = v28;
    (*(v29 + 32))(&v20[v32], v30, v4);
    (*(*(v31 - 8) + 56))(v20, 0, 1, v31);

LABEL_17:
    v33 = v54;
    sub_1E5FAB460(v20, v54, &qword_1ED076350, &qword_1E65F53F8);
    v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076358, &qword_1E65F9EA0);
    v35 = (*(*(v34 - 8) + 48))(v33, 1, v34);
    v36 = v35 == 1;
    if (v35 == 1)
    {
      return v36;
    }

    v37 = *(v34 + 48);
    v39 = *v33;
    v38 = v33[1];
    v40 = v56;
    v41 = v53;
    (*v58)(v53, v33 + v37, v4);
    v42 = sub_1E6215038(v39, v38);
    v44 = v43;

    if ((v44 & 1) == 0)
    {
      (*v52)(v41, v4);
      return 0;
    }

    v46 = v60;
    v45 = v61;
    (*(v61 + 16))(v60, *(v40 + 56) + *(v61 + 72) * v42, v4);
    sub_1E6288E70(&qword_1ED0774A0, MEMORY[0x1E699F498], MEMORY[0x1E699F4A8]);
    v47 = sub_1E65E5B98();
    v48 = *(v45 + 8);
    v48(v46, v4);
    result = (v48)(v41, v4);
    v18 = v59;
    if ((v47 & 1) == 0)
    {
      return v36;
    }
  }

  if (v19 <= v14 + 1)
  {
    v22 = v14 + 1;
  }

  else
  {
    v22 = v19;
  }

  v23 = v22 - 1;
  while (1)
  {
    v24 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v24 >= v19)
    {
      v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076358, &qword_1E65F9EA0);
      (*(*(v49 - 8) + 56))(v20, 1, 1, v49);
      v59 = 0;
      v14 = v23;
      goto LABEL_17;
    }

    v25 = *(v50 + 8 * v24);
    ++v14;
    if (v25)
    {
      v59 = (v25 - 1) & v25;
      v21 = __clz(__rbit64(v25)) | (v24 << 6);
      v14 = v24;
      goto LABEL_16;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1E62876D8(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077430, &unk_1E65F9E40);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v13 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E62886EC();
  sub_1E65E6DA8();
  v15 = *v3;
  v14 = 0;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0773C0, &qword_1E65F9DF8);
  sub_1E6288AD8();
  sub_1E65E6B78();
  if (!v2)
  {
    v13[2] = v9;
    v15 = v3[1];
    v14 = 1;
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0773D8, &qword_1E65F9E08);
    v11 = sub_1E6288B90();
    sub_1E65E6B78();
    v13[0] = v11;
    v13[1] = v10;
    v15 = v3[2];
    v14 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0773E8, &unk_1E65F9E10);
    sub_1E6288C48();
    sub_1E65E6B78();
    v15 = v3[3];
    v14 = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077400, &unk_1E65F9E20);
    sub_1E6288D00();
    sub_1E65E6B78();
    v15 = v3[4];
    v14 = 4;
    sub_1E65E6B78();
    v15 = v3[5];
    v14 = 5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077418, &unk_1E65F9E30);
    sub_1E6288DB8();
    sub_1E65E6B78();
    v15 = v3[6];
    v14 = 6;
    sub_1E65E6B78();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_1E6287A18()
{
  v1 = *v0;
  v2 = 0x4C676E6972616873;
  v3 = 0xD00000000000001ELL;
  if (v1 != 5)
  {
    v3 = 0xD000000000000013;
  }

  if (v1 == 3)
  {
    v2 = 0xD000000000000019;
  }

  if (*v0 > 4u)
  {
    v2 = v3;
  }

  v4 = 0xD000000000000013;
  v5 = 0xD00000000000001DLL;
  if (v1 != 1)
  {
    v5 = 0xD00000000000001CLL;
  }

  if (*v0)
  {
    v4 = v5;
  }

  if (*v0 <= 2u)
  {
    return v4;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1E6287B0C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1E6287F20(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1E6287B34(uint64_t a1)
{
  v2 = sub_1E62886EC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E6287B70(uint64_t a1)
{
  v2 = sub_1E62886EC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

double sub_1E6287BAC@<D0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_1E6288170(a2, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a1 = v6[0];
    *(a1 + 16) = v5;
    result = *&v7;
    *(a1 + 32) = v7;
    *(a1 + 48) = v8;
  }

  return result;
}

uint64_t sub_1E6287C14()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  v7 = v0[6];
  sub_1E65E6D28();
  sub_1E61AFA9C(v9, v1);
  sub_1E61AF5B0(v9, v2);
  sub_1E61AF134(v9, v3);
  sub_1E61AECB8(v9, v4);
  sub_1E61AF5B0(v9, v5);
  sub_1E61AE83C(v9, v6);
  sub_1E61AFA9C(v9, v7);
  return sub_1E65E6D78();
}

uint64_t sub_1E6287CC8(uint64_t a1)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[4];
  v8 = v1[5];
  v9 = v1[6];
  sub_1E61AFA9C(a1, v3);
  sub_1E61AF5B0(a1, v4);
  sub_1E61AF134(a1, v5);
  sub_1E61AECB8(a1, v6);
  sub_1E61AF5B0(a1, v7);
  sub_1E61AE83C(a1, v8);

  return sub_1E61AFA9C(a1, v9);
}

uint64_t sub_1E6287D68(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  sub_1E65E6D28();
  sub_1E61AFA9C(v10, v2);
  sub_1E61AF5B0(v10, v3);
  sub_1E61AF134(v10, v4);
  sub_1E61AECB8(v10, v5);
  sub_1E61AF5B0(v10, v6);
  sub_1E61AE83C(v10, v7);
  sub_1E61AFA9C(v10, v8);
  return sub_1E65E6D78();
}

uint64_t sub_1E6287E18(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v5[2] = *(a1 + 32);
  v6 = *(a1 + 48);
  v3 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v3;
  v7[2] = *(a2 + 32);
  v8 = *(a2 + 48);
  return sub_1E6287E74(v5, v7) & 1;
}

uint64_t sub_1E6287E74(uint64_t *a1, uint64_t *a2)
{
  if ((sub_1E628565C(*a1, *a2) & 1) == 0 || (sub_1E6285B74(a1[1], a2[1]) & 1) == 0 || (sub_1E62860DC(a1[2], a2[2]) & 1) == 0 || (sub_1E62865F4(a1[3], a2[3]) & 1) == 0 || (sub_1E6285B74(a1[4], a2[4]) & 1) == 0 || (sub_1E6286B0C(a1[5], a2[5]) & 1) == 0)
  {
    return 0;
  }

  v4 = a1[6];
  v5 = a2[6];

  return sub_1E628565C(v4, v5);
}

uint64_t sub_1E6287F20(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000013 && 0x80000001E66152E0 == a2 || (sub_1E65E6C18() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD00000000000001DLL && 0x80000001E6615300 == a2 || (sub_1E65E6C18() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD00000000000001CLL && 0x80000001E6615320 == a2 || (sub_1E65E6C18() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000019 && 0x80000001E6615340 == a2 || (sub_1E65E6C18() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x4C676E6972616873 && a2 == 0xEB000000006B6E69 || (sub_1E65E6C18() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD00000000000001ELL && 0x80000001E6615360 == a2 || (sub_1E65E6C18() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001E6615380 == a2)
  {

    return 6;
  }

  else
  {
    v5 = sub_1E65E6C18();

    if (v5)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

uint64_t sub_1E6288170@<X0>(void *a1@<X0>, unint64_t *a2@<X8>)
{
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0773B0, &qword_1E65F9DF0);
  v5 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v7 = v23 - v6;
  v8 = MEMORY[0x1E69E7CC0];
  sub_1E5DF9D44(MEMORY[0x1E69E7CC0]);
  v27 = sub_1E5E06D90(v8);
  v30 = sub_1E5E06FB4(v8);
  v31 = sub_1E5E071AC(v8);
  v33 = sub_1E5E06D90(v8);
  v32 = sub_1E5E073A4(v8);
  v9 = sub_1E5DF9D44(v8);
  v28 = a1;
  v29 = v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E62886EC();
  sub_1E65E6D98();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(v28);
  }

  else
  {
    v24 = a2;
    v25 = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0773C0, &qword_1E65F9DF8);
    v34 = 0;
    v10 = sub_1E6288740();
    v11 = v26;
    sub_1E65E6AD8();

    v12 = v35;
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0773D8, &qword_1E65F9E08);
    v34 = 1;
    v14 = sub_1E62887F8();
    sub_1E65E6AD8();
    v23[1] = v14;
    v23[2] = v13;

    v15 = v35;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0773E8, &unk_1E65F9E10);
    v34 = 2;
    sub_1E62888B0();
    sub_1E65E6AD8();
    v27 = v10;

    v16 = v35;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077400, &unk_1E65F9E20);
    v34 = 3;
    sub_1E6288968();
    sub_1E65E6AD8();

    v17 = v35;
    v34 = 4;
    sub_1E65E6AD8();

    v33 = v35;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077418, &unk_1E65F9E30);
    v34 = 5;
    sub_1E6288A20();
    sub_1E65E6AD8();

    v32 = v35;
    v34 = 6;
    sub_1E65E6AD8();
    (*(v25 + 8))(v7, v11);

    v18 = v35;

    v19 = v33;

    v20 = v32;

    __swift_destroy_boxed_opaque_existential_1(v28);

    v22 = v24;
    *v24 = v12;
    v22[1] = v15;
    v22[2] = v16;
    v22[3] = v17;
    v22[4] = v19;
    v22[5] = v20;
    v22[6] = v18;
  }

  return result;
}

unint64_t sub_1E62886EC()
{
  result = qword_1ED0773B8;
  if (!qword_1ED0773B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0773B8);
  }

  return result;
}

unint64_t sub_1E6288740()
{
  result = qword_1ED0773C8;
  if (!qword_1ED0773C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0773C0, &qword_1E65F9DF8);
    sub_1E5FED46C(&qword_1ED0773D0, &qword_1ED072AE0, &qword_1E65F9E00, MEMORY[0x1E699CB90]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0773C8);
  }

  return result;
}

unint64_t sub_1E62887F8()
{
  result = qword_1ED0773E0;
  if (!qword_1ED0773E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0773D8, &qword_1E65F9E08);
    sub_1E5E1CC5C();
    sub_1E5FED46C(&qword_1ED0773D0, &qword_1ED072AE0, &qword_1E65F9E00, MEMORY[0x1E699CB90]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0773E0);
  }

  return result;
}

unint64_t sub_1E62888B0()
{
  result = qword_1ED0773F0;
  if (!qword_1ED0773F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0773E8, &unk_1E65F9E10);
    sub_1E5FED46C(&qword_1ED0773F8, &qword_1ED076308, &qword_1E65F53D8, MEMORY[0x1E699CB90]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0773F0);
  }

  return result;
}

unint64_t sub_1E6288968()
{
  result = qword_1ED077408;
  if (!qword_1ED077408)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED077400, &unk_1E65F9E20);
    sub_1E5FED46C(&qword_1ED077410, &qword_1ED0762E8, &qword_1E65F53C8, MEMORY[0x1E699CB90]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED077408);
  }

  return result;
}

unint64_t sub_1E6288A20()
{
  result = qword_1ED077420;
  if (!qword_1ED077420)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED077418, &unk_1E65F9E30);
    sub_1E5FED46C(&qword_1ED077428, &qword_1ED0762C8, &qword_1E65F53B8, MEMORY[0x1E699CB90]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED077420);
  }

  return result;
}

unint64_t sub_1E6288AD8()
{
  result = qword_1ED077438;
  if (!qword_1ED077438)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0773C0, &qword_1E65F9DF8);
    sub_1E5FED46C(&qword_1ED077440, &qword_1ED072AE0, &qword_1E65F9E00, MEMORY[0x1E699CB78]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED077438);
  }

  return result;
}

unint64_t sub_1E6288B90()
{
  result = qword_1ED077448;
  if (!qword_1ED077448)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0773D8, &qword_1E65F9E08);
    sub_1E5E1CCB8();
    sub_1E5FED46C(&qword_1ED077440, &qword_1ED072AE0, &qword_1E65F9E00, MEMORY[0x1E699CB78]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED077448);
  }

  return result;
}

unint64_t sub_1E6288C48()
{
  result = qword_1ED077450;
  if (!qword_1ED077450)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0773E8, &unk_1E65F9E10);
    sub_1E5FED46C(&qword_1ED077458, &qword_1ED076308, &qword_1E65F53D8, MEMORY[0x1E699CB78]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED077450);
  }

  return result;
}

unint64_t sub_1E6288D00()
{
  result = qword_1ED077460;
  if (!qword_1ED077460)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED077400, &unk_1E65F9E20);
    sub_1E5FED46C(&qword_1ED077468, &qword_1ED0762E8, &qword_1E65F53C8, MEMORY[0x1E699CB78]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED077460);
  }

  return result;
}

unint64_t sub_1E6288DB8()
{
  result = qword_1ED077470;
  if (!qword_1ED077470)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED077418, &unk_1E65F9E30);
    sub_1E5FED46C(&qword_1ED077478, &qword_1ED0762C8, &qword_1E65F53B8, MEMORY[0x1E699CB78]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED077470);
  }

  return result;
}

uint64_t sub_1E6288E70(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1E6288EB8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E6288F20(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E6288F88(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1E6288FFC()
{
  result = qword_1ED0775C0;
  if (!qword_1ED0775C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0775C0);
  }

  return result;
}

unint64_t sub_1E6289054()
{
  result = qword_1ED0775C8;
  if (!qword_1ED0775C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0775C8);
  }

  return result;
}

unint64_t sub_1E62890AC()
{
  result = qword_1ED0775D0;
  if (!qword_1ED0775D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0775D0);
  }

  return result;
}

uint64_t sub_1E628910C()
{
  sub_1E65E6D28();
  sub_1E65E5D78();

  return sub_1E65E6D78();
}

uint64_t sub_1E62891C4(uint64_t a1)
{
  sub_1E65E5D78();
}

uint64_t sub_1E6289268(uint64_t a1)
{
  sub_1E65E6D28();
  sub_1E65E5D78();

  return sub_1E65E6D78();
}

unint64_t sub_1E628931C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1E6289700(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_1E628934C(uint64_t *a1@<X8>)
{
  v2 = 0xE300000000000000;
  v3 = 7368564;
  v4 = 0xE600000000000000;
  v5 = 0x6D6F74746F62;
  if (*v1 != 2)
  {
    v5 = 0x676E696C69617274;
    v4 = 0xE800000000000000;
  }

  if (*v1)
  {
    v3 = 0x676E696461656CLL;
    v2 = 0xE700000000000000;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

unint64_t sub_1E62893C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1E6289700(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1E62893E8(uint64_t a1)
{
  v2 = sub_1E62899B0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E6289424(uint64_t a1)
{
  v2 = sub_1E62899B0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t EdgeInsets.encode(to:)(void *a1, double a2, double a3, double a4, double a5)
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0775D8, &qword_1E65FA0C8);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v16 - v13;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E62899B0();
  sub_1E65E6DA8();
  v18 = a2;
  v17 = 0;
  sub_1E5F8BCBC();
  sub_1E65E6B78();
  if (!v5)
  {
    v18 = a3;
    v17 = 1;
    sub_1E65E6B78();
    v18 = a4;
    v17 = 2;
    sub_1E65E6B78();
    v18 = a5;
    v17 = 3;
    sub_1E65E6B78();
  }

  return (*(v12 + 8))(v14, v11);
}