uint64_t sub_1B7A5AEF8()
{
  v2 = *v0;
  v1 = v0[1];

  if (v2 == sub_1B7A99180() && v1 == v3)
  {
  }

  else
  {
    v5 = sub_1B7A9AE80();

    if ((v5 & 1) == 0)
    {
      v6 = v0[3];
      v22 = sub_1B7A99180();
      v23 = v7;
      MEMORY[0x1EEE9AC00](v22);
      v21 = &v22;
      LOBYTE(v6) = sub_1B7A59214(sub_1B7A5D7B4, v20, v6);

      if (v6)
      {
        return 2;
      }
    }
  }

  v9 = (v0 + 3);
  v10 = v0[3];
  v22 = sub_1B7A99180();
  v23 = v11;
  MEMORY[0x1EEE9AC00](v22);
  v21 = &v22;
  v12 = sub_1B7A59214(sub_1B7A5DC70, v20, v10);

  if (v12)
  {
    return 0;
  }

  if (*(v10 + 16) == 4)
  {
    sub_1B7A5D474(0, 1, sub_1B7987E34, sub_1B79B86D8);
  }

  v13 = sub_1B7A99180();
  v15 = v14;
  v16 = *v9;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v16 = sub_1B7987E34(0, *(v16 + 2) + 1, 1, v16);
  }

  v18 = *(v16 + 2);
  v17 = *(v16 + 3);
  if (v18 >= v17 >> 1)
  {
    v16 = sub_1B7987E34((v17 > 1), v18 + 1, 1, v16);
  }

  *(v16 + 2) = v18 + 1;
  v19 = &v16[16 * v18];
  *(v19 + 4) = v13;
  *(v19 + 5) = v15;
  *v9 = v16;
  return 1;
}

uint64_t sub_1B7A5B154(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = _s13PopupHUDModelC8RowModelVMa(0);
  v28 = *(v7 - 8);
  v29 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1B7A99160();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);

  *v3 = a2;
  v3[1] = a3;
  v14 = v3[2];
  swift_getKeyPath();
  swift_getKeyPath();
  v30 = a2;
  v31 = a3;

  sub_1B7A96F30();
  (*(v11 + 16))(v13, a1, v10);
  v15 = (*(v11 + 88))(v13, v10);
  if (v15 == *MEMORY[0x1E69AB088])
  {
    (*(v11 + 96))(v13, v10);
    v16 = *v13;
    v17 = *(*v13 + 16);
    if (v17)
    {
      v27[1] = v14;
      v30 = MEMORY[0x1E69E7CC0];
      sub_1B79D024C(0, v17, 0);
      sub_1B7A9A760();
      v18 = v30;
      v27[0] = v16;
      v19 = (v16 + 40);
      do
      {
        v20 = *(v19 - 1);
        v21 = *v19;

        sub_1B7A9A750();
        sub_1B7A9A710();
        if ((swift_task_isCurrentExecutor() & 1) == 0)
        {
          swift_task_reportUnexpectedExecutor();
        }

        v22 = *(v29 + 24);
        v23 = sub_1B7A99000();
        (*(*(v23 - 8) + 56))(&v9[v22], 1, 1, v23);

        *v9 = v20;
        *(v9 + 1) = v21;
        *(v9 + 2) = 0x8FB8EFB18FE2;
        *(v9 + 3) = 0xA600000000000000;
        v30 = v18;
        v25 = *(v18 + 16);
        v24 = *(v18 + 24);
        if (v25 >= v24 >> 1)
        {
          sub_1B79D024C((v24 > 1), v25 + 1, 1);
          v18 = v30;
        }

        *(v18 + 16) = v25 + 1;
        sub_1B7A5D750(v9, v18 + ((*(v28 + 80) + 32) & ~*(v28 + 80)) + *(v28 + 72) * v25);
        v19 += 2;
        --v17;
      }

      while (v17);
    }

    else
    {

      v18 = MEMORY[0x1E69E7CC0];
    }

    swift_getKeyPath();
    swift_getKeyPath();
    v30 = v18;
  }

  else
  {
    if (v15 != *MEMORY[0x1E69AB080])
    {
      return (*(v11 + 8))(v13, v10);
    }

    swift_getKeyPath();
    swift_getKeyPath();
    v30 = MEMORY[0x1E69E7CC0];
  }

  return sub_1B7A96F30();
}

uint64_t sub_1B7A5B594(uint64_t *a1)
{
  sub_1B7A9A760();
  sub_1B7A9A750();
  sub_1B7A9A710();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v3 = *a1;
  v2 = a1[1];
  if (v3 == sub_1B7A991A0() && v2 == v4)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_1B7A9AE80();
  }

  return v5 & 1;
}

double sub_1B7A5B684@<D0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA497C0, &qword_1B7AA8D90);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v17[-v3];
  v5 = sub_1B7A97910();
  v25 = 1;
  sub_1B7A5B8B4(&v18);
  v28 = v20;
  v29 = v21;
  v30 = v22;
  v31 = v23;
  v26 = v18;
  v27 = v19;
  v32[2] = v20;
  v32[3] = v21;
  v32[4] = v22;
  v32[5] = v23;
  v32[0] = v18;
  v32[1] = v19;
  sub_1B7957820(&v26, v17, &qword_1EBA49810, &qword_1B7AA7548);
  sub_1B7957888(v32, &qword_1EBA49810, &qword_1B7AA7548);
  *&v24[39] = v28;
  *&v24[55] = v29;
  *&v24[71] = v30;
  *&v24[87] = v31;
  *&v24[7] = v26;
  *&v24[23] = v27;
  v6 = v25;
  v7 = *MEMORY[0x1E6980E08];
  v8 = sub_1B7A97F70();
  v9 = *(v8 - 8);
  (*(v9 + 104))(v4, v7, v8);
  (*(v9 + 56))(v4, 0, 1, v8);
  v10 = sub_1B7A97F90();
  sub_1B7957888(v4, &qword_1EBA497C0, &qword_1B7AA8D90);
  KeyPath = swift_getKeyPath();
  v12 = *&v24[32];
  *(a1 + 65) = *&v24[48];
  v13 = *&v24[80];
  *(a1 + 81) = *&v24[64];
  *(a1 + 97) = v13;
  result = *v24;
  v15 = *&v24[16];
  *(a1 + 17) = *v24;
  *(a1 + 33) = v15;
  *a1 = v5;
  *(a1 + 8) = 0;
  *(a1 + 16) = v6;
  v16 = *&v24[95];
  *(a1 + 49) = v12;
  *(a1 + 112) = v16;
  *(a1 + 120) = KeyPath;
  *(a1 + 128) = v10;
  return result;
}

uint64_t sub_1B7A5B8B4@<X0>(uint64_t a2@<X8>)
{
  sub_1B7A9A760();
  sub_1B7A9A750();
  sub_1B7A9A710();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  sub_1B7999DD8(isCurrentExecutor, v4, v5);

  v6 = sub_1B7A98080();
  v8 = v7;
  v10 = v9;
  v12 = v11;

  v13 = sub_1B7A98080();
  v15 = v14;
  v16 = v10 & 1;
  v21 = v10 & 1;
  v18 = v17 & 1;
  *a2 = v6;
  *(a2 + 8) = v8;
  *(a2 + 16) = v16;
  *(a2 + 24) = v12;
  *(a2 + 32) = 0;
  *(a2 + 40) = 1;
  *(a2 + 41) = 0;
  *(a2 + 48) = 0;
  *(a2 + 56) = 1;
  *(a2 + 64) = v13;
  *(a2 + 72) = v14;
  *(a2 + 80) = v17 & 1;
  *(a2 + 88) = v19;
  sub_1B7999FBC(v6, v8, v16);

  sub_1B7999FBC(v13, v15, v18);

  sub_1B795A450(v13, v15, v18);

  sub_1B795A450(v6, v8, v21);
}

uint64_t sub_1B7A5BA80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA49758, &qword_1B7AA7450);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = (v20 - v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA49760, &qword_1B7AA7458);
  v10 = v9 - 8;
  MEMORY[0x1EEE9AC00](v9);
  v12 = v20 - v11;
  *v8 = sub_1B7A98A20();
  v8[1] = v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA49768, &qword_1B7AA7460);
  sub_1B7A5BC6C(a1, a2, v8 + *(v14 + 44));
  sub_1B7A98A00();
  sub_1B7A976F0();
  sub_1B797E788(v8, v12, &qword_1EBA49758, &qword_1B7AA7450);
  v15 = &v12[*(v10 + 44)];
  v16 = v20[5];
  *(v15 + 4) = v20[4];
  *(v15 + 5) = v16;
  *(v15 + 6) = v20[6];
  v17 = v20[1];
  *v15 = v20[0];
  *(v15 + 1) = v17;
  v18 = v20[3];
  *(v15 + 2) = v20[2];
  *(v15 + 3) = v18;
  sub_1B797E788(v12, a3, &qword_1EBA49760, &qword_1B7AA7458);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA49770, &qword_1B7AA7468);
  *(a3 + *(result + 36)) = 0x3FE8000000000000;
  return result;
}

uint64_t sub_1B7A5BC6C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v44[1] = a2;
  v44[0] = a1;
  v47 = a3;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA49778, &qword_1B7AA7470);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = v44 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA49780, &qword_1B7AA7478);
  MEMORY[0x1EEE9AC00](v6);
  v8 = v44 - v7;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA49788, &qword_1B7AA7480);
  MEMORY[0x1EEE9AC00](v45);
  v10 = v44 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA49790, &qword_1B7AA7488);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v44 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA49798, &qword_1B7AA7490);
  MEMORY[0x1EEE9AC00](v14);
  v16 = v44 - v15;
  sub_1B7A9A760();
  v46 = sub_1B7A9A750();
  sub_1B7A9A710();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  *v5 = sub_1B7A97990();
  *(v5 + 1) = 0;
  v5[16] = 1;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA497A0, &qword_1B7AA7498);
  sub_1B7A5C118(&v5[*(v17 + 44)]);
  sub_1B7A98A10();
  sub_1B7A976F0();
  sub_1B797E788(v5, v8, &qword_1EBA49778, &qword_1B7AA7470);
  v18 = &v8[*(v6 + 36)];
  v19 = v53;
  *(v18 + 4) = v52;
  *(v18 + 5) = v19;
  *(v18 + 6) = v54;
  v20 = v49;
  *v18 = v48;
  *(v18 + 1) = v20;
  v21 = v51;
  *(v18 + 2) = v50;
  *(v18 + 3) = v21;
  v22 = sub_1B7A97ED0();
  sub_1B7A96FE0();
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  sub_1B797E788(v8, v10, &qword_1EBA49780, &qword_1B7AA7478);
  v31 = &v10[*(v45 + 36)];
  *v31 = v22;
  *(v31 + 1) = v24;
  *(v31 + 2) = v26;
  *(v31 + 3) = v28;
  *(v31 + 4) = v30;
  v31[40] = 0;
  v32 = &v13[*(v11 + 36)];
  sub_1B7A989D0();
  v33 = sub_1B7A97ED0();
  v32[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA497A8, &qword_1B7AA74A0) + 36)] = v33;
  sub_1B797E788(v10, v13, &qword_1EBA49788, &qword_1B7AA7480);
  v34 = &v16[*(v14 + 36)];
  v35 = *(sub_1B7A97670() + 20);
  v36 = *MEMORY[0x1E697F468];
  v37 = sub_1B7A97970();
  (*(*(v37 - 8) + 104))(&v34[v35], v36, v37);
  __asm { FMOV            V0.2D, #5.0 }

  *v34 = _Q0;
  *&v34[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA497B0, &qword_1B7AA74A8) + 36)] = 256;
  sub_1B797E788(v13, v16, &qword_1EBA49790, &qword_1B7AA7488);
  sub_1B797E788(v16, v47, &qword_1EBA49798, &qword_1B7AA7490);
}

uint64_t sub_1B7A5C118@<X0>(uint64_t a2@<X8>)
{
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA497B8, &unk_1B7AA74B0);
  v36 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v38);
  v37 = &v32[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v4);
  v39 = &v32[-v5];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA497C0, &qword_1B7AA8D90);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v32[-v7];
  sub_1B7A9A760();
  v35 = sub_1B7A9A750();
  sub_1B7A9A710();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_1B7A96F20();

  sub_1B7999DD8(v9, v10, v11);
  v12 = sub_1B7A98080();
  v14 = v13;
  v16 = v15;
  v17 = sub_1B7A97F70();
  (*(*(v17 - 8) + 56))(v8, 1, 1, v17);
  sub_1B7A97F90();
  sub_1B7957888(v8, &qword_1EBA497C0, &qword_1B7AA8D90);
  v18 = sub_1B7A98060();
  v20 = v19;
  v33 = v21;
  v34 = v22;

  sub_1B795A450(v12, v14, v16 & 1);

  swift_getKeyPath();
  swift_getKeyPath();
  sub_1B7A96F20();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA48790, &unk_1B7AA36B0);
  _s20PopupHUDListItemViewVMa(0);
  sub_1B797EC34(&qword_1EBA497C8, &qword_1EBA48790, &unk_1B7AA36B0, MEMORY[0x1E69E6338]);
  sub_1B7A5D950(&qword_1EBA497D0, _s20PopupHUDListItemViewVMa, &unk_1B7AA74F4);
  sub_1B7A5D950(&qword_1EBA497D8, _s13PopupHUDModelC8RowModelVMa, &unk_1B7AA728C);
  v23 = v39;
  sub_1B7A988D0();
  v24 = v36;
  v25 = v37;
  v26 = *(v36 + 16);
  v27 = v38;
  v26(v37, v23, v38);
  *a2 = v18;
  *(a2 + 8) = v20;
  v28 = v33 & 1;
  *(a2 + 16) = v33 & 1;
  *(a2 + 24) = v34;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA497E0, &unk_1B7AA74C0);
  v26((a2 + *(v29 + 48)), v25, v27);
  sub_1B7999FBC(v18, v20, v28);
  v30 = *(v24 + 8);

  v30(v39, v27);
  v30(v25, v27);
  sub_1B795A450(v18, v20, v28);
}

uint64_t sub_1B7A5C614@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1B7A9A760();
  sub_1B7A9A750();
  sub_1B7A9A710();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_1B7A5D6EC(a1, a2);
}

void sub_1B7A5C838()
{
  v1 = v0;
  v43.receiver = v0;
  v43.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v43, sel_viewDidLoad);
  swift_beginAccess();
  _s13PopupHUDModelCMa(0);
  sub_1B7A5D950(&qword_1EBA49738, _s13PopupHUDModelCMa, &unk_1B7AA72C4);

  sub_1B7A97490();
  v2 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA49740, &unk_1B7AA73B0));
  v3 = sub_1B7A97A40();
  v4 = [v3 view];
  if (!v4)
  {
    __break(1u);
    goto LABEL_15;
  }

  v5 = v4;
  v6 = [objc_opt_self() clearColor];
  [v5 setBackgroundColor_];

  [v1 addChildViewController_];
  v7 = [v3 view];
  if (!v7)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v8 = v7;
  [v7 setTranslatesAutoresizingMaskIntoConstraints_];

  v9 = [v1 view];
  if (!v9)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v10 = v9;
  v11 = [v3 view];
  if (!v11)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v12 = v11;
  [v10 addSubview_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA46480, &unk_1B7A9D190);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1B7AA7220;
  v14 = [v3 view];
  if (!v14)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v15 = v14;
  v16 = [v14 topAnchor];

  v17 = [v1 view];
  if (!v17)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v18 = v17;
  v19 = [v17 topAnchor];

  v20 = [v16 constraintEqualToAnchor_];
  *(v13 + 32) = v20;
  v21 = [v3 view];
  if (!v21)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v22 = v21;
  v23 = [v21 leadingAnchor];

  v24 = [v1 view];
  if (!v24)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v25 = v24;
  v26 = [v24 leadingAnchor];

  v27 = [v23 constraintEqualToAnchor_];
  *(v13 + 40) = v27;
  v28 = [v3 view];
  if (!v28)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v29 = v28;
  v30 = [v28 bottomAnchor];

  v31 = [v1 view];
  if (!v31)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v32 = v31;
  v33 = [v31 bottomAnchor];

  v34 = [v30 constraintEqualToAnchor_];
  *(v13 + 48) = v34;
  v35 = [v3 view];

  if (!v35)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v36 = [v35 trailingAnchor];

  v37 = [v1 view];
  if (v37)
  {
    v38 = v37;
    v39 = objc_opt_self();
    v40 = [v38 trailingAnchor];

    v41 = [v36 constraintEqualToAnchor_];
    *(v13 + 56) = v41;
    sub_1B7A2442C();
    v42 = sub_1B7A9A630();

    [v39 activateConstraints_];

    [v3 didMoveToParentViewController_];
    return;
  }

LABEL_25:
  __break(1u);
}

uint64_t sub_1B7A5CF00(uint64_t a1, double a2)
{
  result = _s21PopupHUDConfigurationVMa(319);
  if (v3 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

void sub_1B7A5CFD8(uint64_t a1)
{
  _s13PopupHUDModelCMa(319);
  if (v1 <= 0x3F)
  {
    sub_1B7A5D0A8(319, &qword_1EBA496F0, MEMORY[0x1E69AAF60], MEMORY[0x1E69E62F8]);
    if (v2 <= 0x3F)
    {
      sub_1B7A99B00();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1B7A5D0A8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_1B7A5D140(uint64_t a1)
{
  sub_1B7A5D1BC(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_1B7A5D1BC(uint64_t a1)
{
  if (!qword_1EBA49710)
  {
    sub_1B7A99000();
    v1 = sub_1B7A9AB60();
    if (!v2)
    {
      atomic_store(v1, &qword_1EBA49710);
    }
  }
}

uint64_t sub_1B7A5D220@<X0>(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1B7A96F20();

  *a2 = v4;
  return result;
}

uint64_t sub_1B7A5D2A0(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_1B7A96F30();
}

uint64_t sub_1B7A5D31C@<X0>(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1B7A96F20();

  *a2 = v4;
  a2[1] = v5;
  return result;
}

uint64_t sub_1B7A5D39C(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_1B7A96F30();
}

uint64_t sub_1B7A5D474(uint64_t result, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(uint64_t, uint64_t, void))
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  v6 = *v4;
  v7 = *(*v4 + 16);
  if (v7 < a2)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v8 = result;
  if (__OFSUB__(a2, result))
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v9 = result - a2;
  if (__OFSUB__(0, a2 - result))
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v10 = v7 + v9;
  if (__OFADD__(v7, v9))
  {
LABEL_14:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v4 = v6;
  if (!isUniquelyReferenced_nonNull_native || v10 > *(v6 + 24) >> 1)
  {
    v6 = a3();
    *v4 = v6;
  }

  result = a4(v8, a2, 0);
  *v4 = v6;
  return result;
}

uint64_t sub_1B7A5D54C(uint64_t a1, uint64_t a2)
{
  sub_1B7A98FE0();
  if (v2 >= 1.0)
  {
    MEMORY[0x1B8CAB750](43, 0xE100000000000000);
    sub_1B7A9A890();
    v5 = 115;
    v6 = 0xE100000000000000;
  }

  else
  {
    if (v2 < 0.0 || v2 > 1.0)
    {
      return 9215458;
    }

    MEMORY[0x1B8CAB750](43, 0xE100000000000000);
    sub_1B7A9A890();
    v5 = 29549;
    v6 = 0xE200000000000000;
  }

  MEMORY[0x1B8CAB750](v5, v6);
  return 0;
}

uint64_t sub_1B7A5D67C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA496F8, &qword_1B7AA7278);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B7A5D6EC(uint64_t a1, uint64_t a2)
{
  v4 = _s13PopupHUDModelC8RowModelVMa(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B7A5D750(uint64_t a1, uint64_t a2)
{
  v4 = _s13PopupHUDModelC8RowModelVMa(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B7A5D7D0(uint64_t *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_1B7A9AE80() & 1;
  }
}

unint64_t sub_1B7A5D828()
{
  result = qword_1EBA49730;
  if (!qword_1EBA49730)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA49728, &unk_1B7AA73A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA49730);
  }

  return result;
}

uint64_t sub_1B7A5D8A4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1B7A5D950(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1B7A5D9C0(uint64_t a1)
{
  result = _s13PopupHUDModelC8RowModelVMa(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_1B7A5DA2C()
{
  result = qword_1EBA497F8;
  if (!qword_1EBA497F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA49770, &qword_1B7AA7468);
    sub_1B7A5DAB8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA497F8);
  }

  return result;
}

unint64_t sub_1B7A5DAB8()
{
  result = qword_1EBA49800;
  if (!qword_1EBA49800)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA49760, &qword_1B7AA7458);
    sub_1B797EC34(&qword_1EBA49808, &qword_1EBA49758, &qword_1B7AA7450, MEMORY[0x1E6981880]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA49800);
  }

  return result;
}

unint64_t sub_1B7A5DB8C()
{
  result = qword_1EBA49818;
  if (!qword_1EBA49818)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA49820, &qword_1B7AA7580);
    sub_1B797EC34(&qword_1EBA49828, qword_1EBA49830, &qword_1B7AA7588, MEMORY[0x1E69817F8]);
    sub_1B797EC34(&qword_1EBA47D58, &qword_1EBA47CC0, &unk_1B7AA7590, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA49818);
  }

  return result;
}

uint64_t EnvironmentValues.isFlowStackSheetPresented.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1B7A5DCCC(a1, a2, a3);
  sub_1B7A97890();
  return v4;
}

unint64_t sub_1B7A5DCCC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDC0FE30[0];
  if (!qword_1EDC0FE30[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDC0FE30);
  }

  return result;
}

double sub_1B7A5DD20@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  sub_1B7A5DCCC(a1, a2, a3);
  sub_1B7A97890();
  result = *&v6;
  *a4 = v6;
  *(a4 + 16) = v7;
  return result;
}

uint64_t sub_1B7A5DD78(uint64_t *a1)
{
  v1 = sub_1B797DEF0(*a1, a1[1]);
  sub_1B7A5DCCC(v1, v2, v3);
  return sub_1B7A978A0();
}

uint64_t sub_1B7A5DE14(uint64_t **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = *a1;
  v15 = *a1;

  sub_1B7A5DF50(a1, a2, a3, v21);
  v18[0] = v14[10];
  v18[1] = a5;
  v19 = *(v15 + 11);
  v20 = a7;
  v16 = type metadata accessor for FlowStackSheetViewModifier(0, v18);
  MEMORY[0x1B8CA96D0](v21, a4, v16, a6);
  return (*(*(v16 - 8) + 8))(v21, v16);
}

uint64_t sub_1B7A5DF50@<X0>(uint64_t **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v7 = *a1;
  *(a4 + 64) = swift_getKeyPath();
  *(a4 + 104) = 0;
  type metadata accessor for FlowStackSheetAuthority(0, v7[10], v7[11], v7[12]);

  swift_getWitnessTable();
  *a4 = sub_1B7A97490();
  *(a4 + 8) = v8;
  *(a4 + 16) = a2;
  *(a4 + 24) = a3;

  sub_1B7A986C0();
  *(a4 + 32) = v10;
  *(a4 + 40) = v11;
  sub_1B7A986C0();

  *(a4 + 48) = v10;
  *(a4 + 56) = v11;
  return result;
}

uint64_t sub_1B7A5E098@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v51 = a1;
  v52 = a3;
  *&v41 = a2 + 3;
  v5 = a2[2];
  sub_1B7A9AB60();
  v50 = sub_1B7A98870();
  v49 = *(v50 - 8);
  MEMORY[0x1EEE9AC00](v50);
  v39 = &v37 - v6;
  swift_getWitnessTable();
  v7 = sub_1B7A97C30();
  v42 = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA498B8, &qword_1B7AA7758);
  v46 = v8;
  WitnessTable = swift_getWitnessTable();
  v10 = a2[5];
  v43 = sub_1B7A60274();
  *&v56 = v7;
  *(&v56 + 1) = v5;
  *&v57 = v8;
  *(&v57 + 1) = WitnessTable;
  *&v58 = v10;
  *(&v58 + 1) = v43;
  v47 = MEMORY[0x1E697D530];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v48 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v40 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v44 = &v37 - v13;
  v14 = a2[4];
  v38 = v5;
  type metadata accessor for FlowStackSheetAuthority(0, v5, v14, v10);
  swift_getWitnessTable();
  sub_1B7A974A0();
  *&v15 = v5;
  *(&v15 + 1) = *v41;
  v41 = v15;
  *&v16 = v14;
  *(&v16 + 1) = v10;
  v37 = v16;
  v53 = v15;
  v54 = v16;
  v55 = a2[6];
  v17 = v55;
  swift_getKeyPath();
  v18 = v39;
  sub_1B7A974B0();

  (*(*(a2 - 1) + 16))(&v56, v3, a2);
  v19 = swift_allocObject();
  v20 = v37;
  *(v19 + 16) = v41;
  *(v19 + 32) = v20;
  v21 = v58;
  *(v19 + 104) = v59;
  v22 = *v61;
  *(v19 + 120) = v60;
  *(v19 + 136) = v22;
  *(v19 + 145) = *&v61[9];
  v23 = v57;
  *(v19 + 56) = v56;
  *(v19 + 48) = v17;
  *(v19 + 72) = v23;
  *(v19 + 88) = v21;
  v24 = swift_checkMetadataState();
  v25 = v43;
  v26 = v40;
  v27 = v18;
  v28 = v38;
  v29 = v46;
  sub_1B7A98420();

  (*(v49 + 8))(v27, v50);
  *&v56 = v24;
  *(&v56 + 1) = v28;
  *&v57 = v29;
  *(&v57 + 1) = WitnessTable;
  *&v58 = v10;
  *(&v58 + 1) = v25;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v31 = v44;
  v32 = v26;
  v33 = v26;
  v34 = OpaqueTypeMetadata2;
  sub_1B7957EE0(v33, OpaqueTypeMetadata2, OpaqueTypeConformance2);
  v35 = *(v48 + 8);
  v35(v32, v34);
  sub_1B7957EE0(v31, v34, OpaqueTypeConformance2);
  return (v35)(v31, v34);
}

uint64_t sub_1B7A5E5B8()
{
  sub_1B7A9A760();
  sub_1B7A9A750();
  sub_1B7A9A710();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }
}

__n128 sub_1B7A5E648@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, unint64_t a4@<X4>, unint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X8>)
{
  sub_1B7A9A760();
  sub_1B7A9A750();
  sub_1B7A9A710();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  *&v17 = a2;
  *(&v17 + 1) = a3;
  v18.n128_u64[0] = a4;
  v18.n128_u64[1] = a5;
  v19 = a6;
  v14 = type metadata accessor for FlowStackSheetViewModifier(0, &v17);
  sub_1B7A5E74C(a1, v14, &v17);

  v15 = v19;
  result = v18;
  *a7 = v17;
  *(a7 + 16) = result;
  *(a7 + 32) = v15;
  return result;
}

uint64_t sub_1B7A5E74C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v50 = a1;
  v51 = a3;
  v6 = *(a2 + 16);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v9 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = sub_1B7A29804();
  v10 = *(a2 - 8);
  v52 = *(v10 + 16);
  v11 = v10 + 16;
  v52(&v64, v3, a2);
  v49 = v11;
  (*(v7 + 16))(v9, a1, v6);
  v12 = (*(v7 + 80) + 161) & ~*(v7 + 80);
  v13 = swift_allocObject();
  v14.i64[0] = v6;
  v16 = *(a2 + 40);
  v15 = *(a2 + 48);
  *(v13 + 48) = v15;
  v17 = v15;
  v48 = v15;
  *(v13 + 104) = v66[1];
  *(v13 + 120) = v67;
  *(v13 + 136) = v68[0];
  *(v13 + 145) = *(v68 + 9);
  *(v13 + 56) = v64;
  *(v13 + 72) = v65;
  *(v13 + 88) = v66[0];
  v54 = *(a2 + 24);
  *&v18 = vdupq_laneq_s64(v54, 1).u64[0];
  *(&v18 + 1) = v16;
  *(v13 + 16) = vzip1q_s64(v14, v54);
  *(v13 + 32) = v18;
  (*(v7 + 32))(v13 + v12, v9, v6);
  v52(&v60, v53, a2);
  v19 = swift_allocObject();
  v20 = v62[0];
  *(v19 + 104) = v62[1];
  v21 = v63[0];
  *(v19 + 120) = v62[2];
  *(v19 + 136) = v21;
  *(v19 + 145) = *(v63 + 9);
  v22 = v61;
  *(v19 + 56) = v60;
  *(v19 + 72) = v22;
  *(v19 + 16) = v6;
  *(v19 + 24) = v54;
  *(v19 + 40) = v16;
  *(v19 + 48) = v17;
  *(v19 + 88) = v20;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA498D0, &unk_1B7AA77A0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA481A0, &qword_1B7AA24E8);
  v25 = sub_1B7A6039C();
  v45 = sub_1B7A02270();
  sub_1B7A4AE88(v47, sub_1B7A60340, v13, sub_1B7A60388, v19, &v70);
  v46 = *(&v72 + 1);
  v47 = *(&v71 + 1);
  v73 = v70;
  v60 = v70;
  v61 = v71;
  v62[0] = v72;
  LOBYTE(v57) = 2;
  *&v64 = v6;
  *(&v64 + 1) = v23;
  v26 = v54.i64[1];
  *(&v65 + 1) = v54.i64[1];
  *&v65 = v24;
  *&v66[0] = v16;
  *(&v66[0] + 1) = v25;
  *&v66[1] = v45;
  v27 = type metadata accessor for FlowStack(0, &v64);
  WitnessTable = swift_getWitnessTable();
  View.presentedBy(_:)(&v57, v27, WitnessTable);
  type metadata accessor for FlowStackAuthority(255, v6, v26, v16);
  swift_getWitnessTable();
  v29 = sub_1B7A974C0();
  (*(*(v29 - 8) + 8))(&v73, v29);

  v57 = v64;
  v58 = v65;
  v59[0] = v66[0];
  *(v59 + 9) = *(v66 + 9);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA481B8, &qword_1B7AA24F0);
  v30 = sub_1B7A97590();
  v31 = sub_1B797EC34(&qword_1EBA481B0, &qword_1EBA481B8, &qword_1B7AA24F0, MEMORY[0x1E6980A18]);
  v55 = WitnessTable;
  v56 = v31;
  v32 = swift_getWitnessTable();
  sub_1B7A5FA20(v50, v30, v32, &v69);
  v60 = v57;
  v61 = v58;
  v62[0] = v59[0];
  *(v62 + 9) = *(v59 + 9);
  (*(*(v30 - 8) + 8))(&v60, v30);
  v33 = v69;
  KeyPath = swift_getKeyPath();
  v52(&v64, v53, a2);
  sub_1B7A9A760();
  v35 = sub_1B7A9A750();
  v36 = swift_allocObject();
  v37 = MEMORY[0x1E69E85E0];
  *(v36 + 16) = v35;
  *(v36 + 24) = v37;
  *(v36 + 32) = v6;
  *(v36 + 40) = v54;
  v38 = v48;
  *(v36 + 56) = v16;
  *(v36 + 64) = v38;
  *(v36 + 120) = v66[1];
  *(v36 + 136) = v67;
  *(v36 + 152) = v68[0];
  *(v36 + 161) = *(v68 + 9);
  *(v36 + 72) = v64;
  *(v36 + 88) = v65;
  *(v36 + 104) = v66[0];
  v39 = sub_1B7A9A750();
  v40 = swift_allocObject();
  *(v40 + 16) = v39;
  *(v40 + 24) = v37;
  result = sub_1B7A98840();
  v42 = v64;
  v43 = v65;
  v44 = v51;
  *v51 = v33;
  v44[1] = KeyPath;
  *(v44 + 1) = v42;
  *(v44 + 32) = v43;
  return result;
}

double sub_1B7A5ED84@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, void *a8@<X8>)
{
  v47 = a7;
  v53 = a6;
  v45 = a4;
  v44 = a2;
  v52 = a8;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v12 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v14 = &v44 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v48 = &v44 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B797C490(v65);
  KeyPath = v66;
  v51 = v67;
  v49 = __swift_project_boxed_opaque_existential_1(v65, v66);
  v17 = *(a1 + 16);
  sub_1B7A99320();
  v17(v14);
  (*(v12 + 8))(v14, AssociatedTypeWitness);
  v61 = 0;
  v18 = *(a1 + 40);
  LOBYTE(v54) = *(a1 + 32);
  *(&v54 + 1) = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA46A50, &unk_1B7AA63D0);
  sub_1B7A986D0();
  LOBYTE(AssociatedTypeWitness) = v62;
  v19 = *(a1 + 56);
  LOBYTE(v54) = *(a1 + 48);
  *(&v54 + 1) = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA49928, &qword_1B7AA7818);
  sub_1B7A986D0();
  v60[0] = v60[1];
  v46 = a3;
  *&v54 = a3;
  v20 = v45;
  *(&v54 + 1) = v45;
  v21 = a5;
  v22 = v53;
  *&v55 = a5;
  *(&v55 + 1) = v53;
  v23 = v47;
  *&v56 = v47;
  v24 = type metadata accessor for FlowStackSheetViewModifier(0, &v54);
  v25 = *(*(v24 - 8) + 16);
  v25(&v54, a1, v24);
  v26 = swift_allocObject();
  v27 = v56;
  *(v26 + 104) = v57;
  v28 = *v59;
  *(v26 + 120) = v58;
  *(v26 + 136) = v28;
  *(v26 + 145) = *&v59[9];
  v29 = v55;
  *(v26 + 56) = v54;
  *(v26 + 72) = v29;
  *(v26 + 16) = a3;
  *(v26 + 24) = v20;
  v30 = v20;
  *(v26 + 32) = v21;
  *(v26 + 40) = v22;
  *(v26 + 48) = v23;
  *(v26 + 88) = v27;
  sub_1B7A35FE0(v48, 1, &v61, AssociatedTypeWitness, v60, sub_1B7A6077C, v26, v20, &v62, v23);
  *&v54 = v62;
  DWORD2(v54) = v63;
  v55 = v64;
  v51 = sub_1B7A3609C(&v54, KeyPath, v51);

  KeyPath = swift_getKeyPath();
  __swift_destroy_boxed_opaque_existential_1(v65);
  v25(&v54, a1, v24);
  v31 = swift_allocObject();
  v32 = v56;
  *(v31 + 104) = v57;
  v33 = *v59;
  *(v31 + 120) = v58;
  *(v31 + 136) = v33;
  *(v31 + 145) = *&v59[9];
  v34 = v55;
  *(v31 + 56) = v54;
  *(v31 + 72) = v34;
  v35 = v46;
  *(v31 + 16) = v46;
  *(v31 + 24) = v30;
  v36 = v53;
  *(v31 + 32) = v21;
  *(v31 + 40) = v36;
  *(v31 + 48) = v23;
  *(v31 + 88) = v32;
  v25(&v54, a1, v24);
  v37 = swift_allocObject();
  v38 = v56;
  *(v37 + 104) = v57;
  v39 = *v59;
  *(v37 + 120) = v58;
  *(v37 + 136) = v39;
  *(v37 + 145) = *&v59[9];
  result = *&v54;
  v41 = v55;
  *(v37 + 56) = v54;
  *(v37 + 72) = v41;
  *(v37 + 16) = v35;
  *(v37 + 24) = v30;
  *(v37 + 32) = v21;
  *(v37 + 40) = v36;
  *(v37 + 48) = v23;
  *(v37 + 88) = v38;
  v42 = v52;
  v43 = KeyPath;
  *v52 = v51;
  v42[1] = v43;
  *(v42 + 16) = 2;
  v42[3] = sub_1B7A60550;
  v42[4] = v31;
  v42[5] = sub_1B7A605D4;
  v42[6] = v37;
  return result;
}

uint64_t sub_1B7A5F2B8(unsigned __int8 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v24 = a2;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA46B40, &qword_1B7A9DF90);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v24 - v14;
  v25 = *a1;
  sub_1B7A9A760();
  sub_1B7A9A750();
  sub_1B7A9A710();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v16 = sub_1B7A9A7E0();
  (*(*(v16 - 8) + 56))(v15, 1, 1, v16);
  *&v26 = a3;
  *(&v26 + 1) = a4;
  *&v27 = a5;
  *(&v27 + 1) = a6;
  *&v28 = a7;
  v17 = type metadata accessor for FlowStackSheetViewModifier(0, &v26);
  (*(*(v17 - 8) + 16))(&v26, v24, v17);
  v18 = sub_1B7A9A750();
  v19 = swift_allocObject();
  v20 = v28;
  *(v19 + 120) = v29;
  v21 = v31[0];
  *(v19 + 136) = v30;
  *(v19 + 152) = v21;
  *(v19 + 161) = *(v31 + 9);
  v22 = v27;
  *(v19 + 72) = v26;
  *(v19 + 88) = v22;
  *(v19 + 16) = v18;
  *(v19 + 24) = MEMORY[0x1E69E85E0];
  *(v19 + 32) = a3;
  *(v19 + 40) = a4;
  *(v19 + 48) = a5;
  *(v19 + 56) = a6;
  *(v19 + 64) = a7;
  *(v19 + 104) = v20;
  *(v19 + 177) = v25;
  sub_1B79A9B34(0, 0, v15, &unk_1B7AA7858, v19);
}

uint64_t sub_1B7A5F4FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 49) = a5;
  *(v5 + 32) = a4;
  sub_1B7A9A760();
  *(v5 + 40) = sub_1B7A9A750();
  v7 = sub_1B7A9A710();

  return MEMORY[0x1EEE6DFA0](sub_1B7A5F59C, v7, v6);
}

uint64_t sub_1B7A5F59C()
{
  v1 = *(v0 + 49);
  v2 = *(v0 + 32);

  v3 = *(v2 + 56);
  *(v0 + 16) = *(v2 + 48);
  *(v0 + 24) = v3;
  *(v0 + 48) = v1;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA49928, &qword_1B7AA7818);
  sub_1B7A986E0();

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1B7A5F650(char *a1, uint64_t a2)
{
  sub_1B7A9A760();
  sub_1B7A9A750();
  sub_1B7A9A710();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA46A50, &unk_1B7AA63D0);
  sub_1B7A986E0();
}

uint64_t sub_1B7A5F728@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v14 = a1;
  MEMORY[0x1EEE9AC00](a1);
  v17 = v28 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B797C490(v42);
  v29 = v43;
  v30 = v44;
  v28[1] = __swift_project_boxed_opaque_existential_1(v42, v43);
  (*(a2 + 16))(v14);
  v38 = 0;
  v18 = *(a2 + 40);
  LOBYTE(v31) = *(a2 + 32);
  *(&v31 + 1) = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA46A50, &unk_1B7AA63D0);
  sub_1B7A986D0();
  LOBYTE(v14) = v39;
  v19 = *(a2 + 56);
  LOBYTE(v31) = *(a2 + 48);
  *(&v31 + 1) = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA49928, &qword_1B7AA7818);
  sub_1B7A986D0();
  v37[0] = v37[1];
  *&v31 = a3;
  *(&v31 + 1) = a4;
  *&v32 = a5;
  *(&v32 + 1) = a6;
  *&v33 = a7;
  v20 = type metadata accessor for FlowStackSheetViewModifier(0, &v31);
  (*(*(v20 - 8) + 16))(&v31, a2, v20);
  v21 = swift_allocObject();
  v22 = v33;
  *(v21 + 104) = v34;
  v23 = *v36;
  *(v21 + 120) = v35;
  *(v21 + 136) = v23;
  *(v21 + 145) = *&v36[9];
  v24 = v32;
  *(v21 + 56) = v31;
  *(v21 + 72) = v24;
  *(v21 + 16) = a3;
  *(v21 + 24) = a4;
  *(v21 + 32) = a5;
  *(v21 + 40) = a6;
  *(v21 + 48) = a7;
  *(v21 + 88) = v22;
  sub_1B7A35FE0(v17, 0, &v38, v14, v37, sub_1B7A6052C, v21, a4, &v39, a7);
  *&v31 = v39;
  DWORD2(v31) = v40;
  v32 = v41;
  v25 = sub_1B7A3609C(&v31, v29, v30);

  KeyPath = swift_getKeyPath();
  result = __swift_destroy_boxed_opaque_existential_1(v42);
  *a8 = v25;
  *(a8 + 8) = KeyPath;
  *(a8 + 16) = 2;
  return result;
}

uint64_t sub_1B7A5FA20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v9 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v12);
  (*(v15 + 16))(&v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v13);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA49910, &qword_1B7AA77F8);
  if (swift_dynamicCast())
  {
    v16 = *(&v36 + 1);
    v17 = v37;
    __swift_project_boxed_opaque_existential_1(&v35, *(&v36 + 1));
    (*(v17 + 8))(v38, v16, v17);
    __swift_destroy_boxed_opaque_existential_1(&v35);
    if (*(&v38[1] + 1))
    {
      sub_1B795C1E4(v38, v39);
      v34 = v40;
      v18 = v40;
      v19 = __swift_project_boxed_opaque_existential_1(v39, v40);
      *(&v38[1] + 8) = v34;
      boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(v38);
      (*(*(v18 - 8) + 16))(boxed_opaque_existential_1Tm, v19, v18);
      v21 = *(&v38[1] + 8);
      v31 = __swift_project_boxed_opaque_existential_1(v38, *(&v38[1] + 1));
      *&v35 = a2;
      *(&v35 + 1) = v21;
      *&v36 = a4;
      *(&v36 + 1) = *(&v21 + 1);
      v33 = MEMORY[0x1E697D160];
      OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
      *&v34 = &v30;
      v23 = a4;
      v24 = *(OpaqueTypeMetadata2 - 8);
      v25 = *(v24 + 64);
      MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
      v32 = a5;
      v26 = (v25 + 15) & 0xFFFFFFFFFFFFFFF0;
      v27 = sub_1B7A98280();
      v31 = &v30;
      v28 = MEMORY[0x1EEE9AC00](v27);
      (*(v24 + 16))(&v30 - v26, &v30 - v26, OpaqueTypeMetadata2, v28);
      *&v35 = a2;
      *(&v35 + 1) = v21;
      *&v36 = v23;
      *(&v36 + 1) = *(&v21 + 1);
      swift_getOpaqueTypeConformance2();
      *v32 = sub_1B7A987F0();
      (*(v24 + 8))(&v30 - v26, OpaqueTypeMetadata2);
      __swift_destroy_boxed_opaque_existential_1(v38);
      return __swift_destroy_boxed_opaque_existential_1(v39);
    }
  }

  else
  {
    v37 = 0;
    v35 = 0u;
    v36 = 0u;
    sub_1B7957888(&v35, &qword_1EBA49918, &qword_1B7AA7800);
    memset(v38, 0, 40);
  }

  sub_1B7957888(v38, &qword_1EBA49920, &unk_1B7AA7808);
  (*(v9 + 16))(v11, v5, a2);
  result = sub_1B7A987F0();
  *a5 = result;
  return result;
}

uint64_t sub_1B7A5FE64@<X0>(BOOL *a1@<X8>)
{
  sub_1B7A9A760();
  sub_1B7A9A750();
  sub_1B7A9A710();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v2 = sub_1B7A29318();

  *a1 = v2;
  return result;
}

uint64_t sub_1B7A5FF10()
{
  sub_1B7A9A760();
  sub_1B7A9A750();
  sub_1B7A9A710();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }
}

void sub_1B7A5FFA4(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
}

void (*EnvironmentValues.isFlowStackSheetPresented.modify(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v6 = v3;
  *a1 = v3;
  *(v3 + 48) = v1;
  *(v3 + 56) = sub_1B7A5DCCC(v3, v4, v5);
  sub_1B7A97890();
  v7 = *(v6 + 40);
  *v6 = *(v6 + 24);
  *(v6 + 16) = v7;
  return sub_1B7A60050;
}

void sub_1B7A60050(uint64_t **a1, char a2)
{
  v3 = *a1;
  v4 = **a1;
  v5 = v3[1];
  v3[3] = v4;
  v6 = *(v3 + 16);
  v3[4] = v5;
  *(v3 + 40) = v6;
  if (a2)
  {
    sub_1B797DEF0(v4, v5);
    sub_1B7A978A0();
    sub_1B797D5AC(*v3, v3[1]);
  }

  else
  {
    sub_1B7A978A0();
  }

  free(v3);
}

uint64_t sub_1B7A6011C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 __swift_memcpy105_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 89) = *(a2 + 89);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_1B7A60184(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 105))
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

uint64_t sub_1B7A601CC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 104) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 105) = 1;
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

    *(result + 105) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1B7A60274()
{
  result = qword_1EBA498C0;
  if (!qword_1EBA498C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA498B8, &qword_1B7AA7758);
    sub_1B797EC34(&qword_1EDC0EB38, &qword_1EBA498C8, &qword_1B7AA7760, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA498C0);
  }

  return result;
}

unint64_t sub_1B7A6039C()
{
  result = qword_1EBA498D8;
  if (!qword_1EBA498D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA498D0, &unk_1B7AA77A0);
    sub_1B7A60454();
    sub_1B797EC34(&qword_1EBA49900, &qword_1EBA49908, &qword_1B7AA77C8, MEMORY[0x1E6980620]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA498D8);
  }

  return result;
}

unint64_t sub_1B7A60454()
{
  result = qword_1EBA498E0;
  if (!qword_1EBA498E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA498E8, &unk_1B7AA77B0);
    sub_1B7A02270();
    sub_1B797EC34(&qword_1EBA498F0, &qword_1EBA498F8, &qword_1B7AA77C0, MEMORY[0x1E6980620]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA498E0);
  }

  return result;
}

uint64_t objectdestroyTm_6()
{

  if (*(v0 + 160))
  {
    __swift_destroy_boxed_opaque_existential_1((v0 + 120));
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t objectdestroy_16Tm_0(uint64_t a1)
{
  swift_unknownObjectRelease();

  if (*(v1 + 176))
  {
    __swift_destroy_boxed_opaque_existential_1((v1 + 136));
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1B7A60688(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 177);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1B798D338;

  return sub_1B7A5F4FC(a1, v4, v5, v1 + 72, v6);
}

uint64_t Button.init<>(_:action:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1B7A60808(a1, a2, a3);
  sub_1B7A98730();
}

unint64_t sub_1B7A60808(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBA49930;
  if (!qword_1EBA49930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA49930);
  }

  return result;
}

uint64_t Button.init<>(_:role:action:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA47018, &qword_1B7A9EFA0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = sub_1B7957820(a2, &v12[-v7], &qword_1EBA47018, &qword_1B7A9EFA0);
  v13 = a1;
  sub_1B7A60808(v8, v9, v10);
  sub_1B7A98720();
  sub_1B7957888(a2, &qword_1EBA47018, &qword_1B7A9EFA0);
}

uint64_t Button.init<>(_:localizer:action:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, __n128 a5)
{
  sub_1B7A98730();
  __swift_destroy_boxed_opaque_existential_1(a2);
}

uint64_t Text.init(_:localizer:)(uint64_t (**a1)(void *), void *a2)
{
  v3 = (*a1)(a2);
  __swift_destroy_boxed_opaque_existential_1(a2);

  return v3;
}

uint64_t Button.init<>(_:localizer:role:action:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA47018, &qword_1B7A9EFA0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  sub_1B7957820(a3, &v11[-v9], &qword_1EBA47018, &qword_1B7A9EFA0);
  v12 = a1;
  v13 = a2;
  sub_1B7A98720();
  sub_1B7957888(a3, &qword_1EBA47018, &qword_1B7A9EFA0);
  __swift_destroy_boxed_opaque_existential_1(a2);
}

uint64_t sub_1B7A60BFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_1B7A60808(a1, a2, a3);
  sub_1B7A98690();
}

uint64_t sub_1B7A60CE8@<X0>(uint64_t *a1@<X8>)
{

  result = sub_1B7A98680();
  *a1 = result;
  return result;
}

uint64_t sub_1B7A60D5C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_1B7A98690();

  __swift_destroy_boxed_opaque_existential_1(a2);
}

uint64_t sub_1B7A60E14@<X0>(uint64_t *a1@<X8>)
{

  result = sub_1B7A985E0();
  *a1 = result;
  return result;
}

uint64_t Picker.init<>(_:selection:content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t x8_0@<X8>)
{
  v25 = a4;
  v26 = a6;
  v15 = sub_1B7A98870();
  v16 = *(v15 - 8);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v19 = &v25 - v18;
  v20 = (*(v16 + 16))(&v25 - v18, a2, v15, v17);
  v27 = a1;
  v23 = sub_1B7A60808(v20, v21, v22);
  sub_1B7A60FCC(v19, a3, v25, sub_1B7A63250, v26, x8_0, v23, a7, a8);
  (*(v16 + 8))(a2, v15);
}

uint64_t sub_1B7A60FCC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a7@<X7>, uint64_t a8@<X8>, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v18[4] = a3;
  v18[5] = a7;
  v18[0] = a4;
  v18[1] = a8;
  v18[2] = a2;
  v18[3] = a9;
  MEMORY[0x1EEE9AC00](a1);
  v12 = sub_1B7A98870();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = (*(v13 + 16))(v18 - v15, a1, v12, v14);
  (v18[0])(v16);
  sub_1B7A987B0();
  return (*(v13 + 8))(a1, v12);
}

uint64_t Picker.init<>(_:localizer:selection:content:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v23 = a5;
  v24 = a7;
  v22 = a4;
  v15 = sub_1B7A98870();
  v16 = *(v15 - 8);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v19 = &v21 - v18;
  (*(v16 + 16))(&v21 - v18, a3, v15, v17);
  v25 = a1;
  v26 = a2;
  sub_1B7A60FCC(v19, v22, v23, sub_1B7A6324C, v24, a9, MEMORY[0x1E6981138], a8, a10);
  (*(v16 + 8))(a3, v15);
  __swift_destroy_boxed_opaque_existential_1(a2);
}

uint64_t Section<>.init<A>(_:localizer:content:)(uint64_t (**a1)(void *), void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v11 = (*a1)(a2);
  sub_1B7999DD8(v11, v8, v9);
  sub_1B7A98910();
  __swift_destroy_boxed_opaque_existential_1(a2);
}

{
  v11 = (*a1)(a2);
  sub_1B7999DD8(v11, v8, v9);
  sub_1B7A98920();
  __swift_destroy_boxed_opaque_existential_1(a2);
}

uint64_t Section<>.init(_:localizer:content:)(uint64_t (**a1)(void *), void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = (*a1)(a2);
  sub_1B7999DD8(v10, v7, v8);
  sub_1B7A98930();
  __swift_destroy_boxed_opaque_existential_1(a2);
}

uint64_t Toggle.init<>(_:isOn:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1B7A60808(a1, a2, a3);
  sub_1B7A987C0();
}

double sub_1B7A615A8@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = a1[2];
  *a2 = swift_getKeyPath();
  *(a2 + 8) = 0;
  *(a2 + 16) = v4;
  *(a2 + 24) = v3;
  *(a2 + 32) = v5;

  return result;
}

uint64_t Toggle.init<>(_:localizer:isOn:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_1B7A987C0();
  __swift_destroy_boxed_opaque_existential_1(a2);
}

uint64_t sub_1B7A61694@<X0>(uint64_t (**a1)(void *)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *a1;
  sub_1B7999E90(a2, v9);

  v5 = v4(v9);
  v7 = v6;
  __swift_destroy_boxed_opaque_existential_1(v9);

  *a3 = v5;
  *(a3 + 8) = v7;
  *(a3 + 16) = 0;
  *(a3 + 24) = MEMORY[0x1E69E7CC0];
  return result;
}

uint64_t sub_1B7A61740@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v42 = a1;
  v43 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA49948, &qword_1B7AA7A18);
  MEMORY[0x1EEE9AC00](v3);
  v38 = v37 - v4;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA49950, &qword_1B7AA7A20);
  MEMORY[0x1EEE9AC00](v44);
  v45 = v37 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA49958, &qword_1B7AA7A28);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v41 = v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v40 = v37 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v39 = v37 - v12;
  v13 = sub_1B7A97880();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = v37 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = v2[1];
  v48 = *v2;
  v49 = v17;
  v50 = *(v2 + 4);
  v18 = *v2;
  v51 = *v2;
  v52 = *(v2 + 8);
  v19 = v52;

  if ((v19 & 1) == 0)
  {
    sub_1B7A9AA10();
    v20 = sub_1B7A97E70();
    sub_1B7A96D30();

    sub_1B7A97870();
    swift_getAtKeyPath();
    sub_1B7957888(&v51, &qword_1EBA47DE8, &qword_1B7AA7A30);
    (*(v14 + 8))(v16, v13);
    v18 = v47[0];
  }

  if (v18)
  {
    type metadata accessor for _LocalizerOwner(0);
    sub_1B79F2650(v21);

    sub_1B7A97490();
    v38 = v22;
    sub_1B7A974A0();
    swift_getKeyPath();
    sub_1B7A974B0();

    v23 = *(v7 + 16);
    v24 = v39;
    v37[2] = v18;
    v25 = v42;
    v23(v39, v42, v6);
    v37[1] = v3;
    v26 = (*(v7 + 80) + 16) & ~*(v7 + 80);
    v37[0] = swift_allocObject();
    v27 = *(v7 + 32);
    v27(v37[0] + v26, v24, v6);
    v28 = v40;
    v23(v40, v25, v6);
    v39 = swift_allocObject();
    v27(&v39[v26], v28, v6);
    v29 = v41;
    v23(v41, v25, v6);
    v30 = swift_allocObject();
    v27(v30 + v26, v29, v6);
    v31 = v30 + ((v26 + v8 + 7) & 0xFFFFFFFFFFFFFFF8);
    v32 = v49;
    *v31 = v48;
    *(v31 + 16) = v32;
    *(v31 + 32) = v50;
    v47[8] = sub_1B7A62BA4;
    v47[9] = v37[0];
    v47[10] = sub_1B7A62BD4;
    v47[11] = v39;
    v47[12] = sub_1B7A62C04;
    v47[13] = v30;
    sub_1B7957820(v47, v45, &qword_1EBA49960, &qword_1B7AA7A38);
    swift_storeEnumTagMultiPayload();
    sub_1B7A62C34(&v48, v46);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA49960, &qword_1B7AA7A38);
    sub_1B797EC34(&qword_1EBA49968, &qword_1EBA49960, &qword_1B7AA7A38, &unk_1B7AA7000);
    sub_1B797EC34(&qword_1EBA49970, &qword_1EBA49948, &qword_1B7AA7A18, &protocol conformance descriptor for _RequirementFailureView<A, B>);
    sub_1B7A97B30();

    return sub_1B7957888(v47, &qword_1EBA49960, &qword_1B7AA7A38);
  }

  else
  {
    v34 = v38;
    (*(v7 + 16))(v38, v42, v6);
    v35 = swift_allocObject();
    *(v35 + 16) = 0xD000000000000022;
    *(v35 + 24) = 0x80000001B7AC61C0;
    v36 = (v34 + *(v3 + 52));
    *v36 = sub_1B797D598;
    v36[1] = v35;
    sub_1B7957820(v34, v45, &qword_1EBA49948, &qword_1B7AA7A18);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA49960, &qword_1B7AA7A38);
    sub_1B797EC34(&qword_1EBA49968, &qword_1EBA49960, &qword_1B7AA7A38, &unk_1B7AA7000);
    sub_1B797EC34(&qword_1EBA49970, &qword_1EBA49948, &qword_1B7AA7A18, &protocol conformance descriptor for _RequirementFailureView<A, B>);
    sub_1B7A97B30();
    return sub_1B7957888(v34, &qword_1EBA49948, &qword_1B7AA7A18);
  }
}

uint64_t sub_1B7A61EE8(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *a1;
  v7 = a1[1];
  v9 = a1[2];
  KeyPath = swift_getKeyPath();
  v12 = 0;
  v13 = v8;
  v14 = v7;
  v15 = v9;

  MEMORY[0x1B8CA96D0](&KeyPath, a2, a4, a3);
  j__swift_release(KeyPath);
}

unint64_t sub_1B7A61FA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBA49938;
  if (!qword_1EBA49938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA49938);
  }

  return result;
}

uint64_t get_witness_table_7SwiftUI4ViewRzlAA15ModifiedContentVyx011_JetEngine_aB0024LocalizedNavigationTitleC8Modifier33_2360066CC44703D6FE8597C16DE4267ELLVGAaBHPxAaBHD1__AhA0cK0HPyHCHCTm(void *a1, uint64_t a2, uint64_t (*a3)(void))
{
  sub_1B7A97590();
  a3();
  return swift_getWitnessTable();
}

unint64_t sub_1B7A62064(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBA49940;
  if (!qword_1EBA49940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA49940);
  }

  return result;
}

uint64_t sub_1B7A620F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v42 = a1;
  v43 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA49980, &qword_1B7AA7A68);
  MEMORY[0x1EEE9AC00](v3);
  v38 = v37 - v4;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA49988, &qword_1B7AA7A70);
  MEMORY[0x1EEE9AC00](v44);
  v45 = v37 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA49990, &qword_1B7AA7A78);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v41 = v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v40 = v37 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v39 = v37 - v12;
  v13 = sub_1B7A97880();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = v37 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = v2[1];
  v48 = *v2;
  v49 = v17;
  v50 = *(v2 + 4);
  v18 = *v2;
  v51 = *v2;
  v52 = *(v2 + 8);
  v19 = v52;

  if ((v19 & 1) == 0)
  {
    sub_1B7A9AA10();
    v20 = sub_1B7A97E70();
    sub_1B7A96D30();

    sub_1B7A97870();
    swift_getAtKeyPath();
    sub_1B7957888(&v51, &qword_1EBA47DE8, &qword_1B7AA7A30);
    (*(v14 + 8))(v16, v13);
    v18 = v47[0];
  }

  if (v18)
  {
    type metadata accessor for _LocalizerOwner(0);
    sub_1B79F2650(v21);

    sub_1B7A97490();
    v38 = v22;
    sub_1B7A974A0();
    swift_getKeyPath();
    sub_1B7A974B0();

    v23 = *(v7 + 16);
    v24 = v39;
    v37[2] = v18;
    v25 = v42;
    v23(v39, v42, v6);
    v37[1] = v3;
    v26 = (*(v7 + 80) + 16) & ~*(v7 + 80);
    v37[0] = swift_allocObject();
    v27 = *(v7 + 32);
    v27(v37[0] + v26, v24, v6);
    v28 = v40;
    v23(v40, v25, v6);
    v39 = swift_allocObject();
    v27(&v39[v26], v28, v6);
    v29 = v41;
    v23(v41, v25, v6);
    v30 = swift_allocObject();
    v27(v30 + v26, v29, v6);
    v31 = v30 + ((v26 + v8 + 7) & 0xFFFFFFFFFFFFFFF8);
    v32 = v49;
    *v31 = v48;
    *(v31 + 16) = v32;
    *(v31 + 32) = v50;
    v47[8] = sub_1B7A62C6C;
    v47[9] = v37[0];
    v47[10] = sub_1B7A62DB0;
    v47[11] = v39;
    v47[12] = sub_1B7A62F38;
    v47[13] = v30;
    sub_1B7957820(v47, v45, &qword_1EBA49998, &qword_1B7AA7A80);
    swift_storeEnumTagMultiPayload();
    sub_1B7A6303C(&v48, v46);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA49998, &qword_1B7AA7A80);
    sub_1B797EC34(&qword_1EBA499A0, &qword_1EBA49998, &qword_1B7AA7A80, &unk_1B7AA7000);
    sub_1B797EC34(&qword_1EBA499A8, &qword_1EBA49980, &qword_1B7AA7A68, &protocol conformance descriptor for _RequirementFailureView<A, B>);
    sub_1B7A97B30();

    return sub_1B7957888(v47, &qword_1EBA49998, &qword_1B7AA7A80);
  }

  else
  {
    v34 = v38;
    (*(v7 + 16))(v38, v42, v6);
    v35 = swift_allocObject();
    *(v35 + 16) = 0xD000000000000022;
    *(v35 + 24) = 0x80000001B7AC61C0;
    v36 = (v34 + *(v3 + 52));
    *v36 = sub_1B799A220;
    v36[1] = v35;
    sub_1B7957820(v34, v45, &qword_1EBA49980, &qword_1B7AA7A68);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA49998, &qword_1B7AA7A80);
    sub_1B797EC34(&qword_1EBA499A0, &qword_1EBA49998, &qword_1B7AA7A80, &unk_1B7AA7000);
    sub_1B797EC34(&qword_1EBA499A8, &qword_1EBA49980, &qword_1B7AA7A68, &protocol conformance descriptor for _RequirementFailureView<A, B>);
    sub_1B7A97B30();
    return sub_1B7957888(v34, &qword_1EBA49980, &qword_1B7AA7A68);
  }
}

uint64_t sub_1B7A6288C(uint64_t a1, uint64_t *a2, uint64_t *a3, unint64_t *a4, void (*a5)(uint64_t, uint64_t, void, uint64_t, uint64_t, uint64_t))
{
  v8 = sub_1B7A97960();
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v16 = sub_1B797EC34(a4, a2, a3, MEMORY[0x1E697FDF8]);
  a5(v8, v10, v12 & 1, v14, v15, v16);
}

uint64_t sub_1B7A62984(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, unint64_t *a5, void (*a6)(uint64_t, uint64_t, void, uint64_t, uint64_t, uint64_t))
{
  v9 = sub_1B7A97960();
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v17 = sub_1B797EC34(a5, a3, a4, MEMORY[0x1E697FDF8]);
  a6(v9, v11, v13 & 1, v15, v16, v17);
}

uint64_t sub_1B7A62A78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, unint64_t *a6, void (*a7)(void *, uint64_t, void, uint64_t, unint64_t))
{
  v23 = *(a3 + 16);
  v24 = *(a3 + 32);
  v12 = v23;
  sub_1B7A4E6F8(&v23, v22);
  v13 = v12(a1);
  v15 = v14;
  sub_1B7A4E754(&v23);
  v22[0] = v13;
  v22[1] = v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  v17 = sub_1B797EC34(a6, a4, a5, MEMORY[0x1E697FDF8]);
  v20 = sub_1B7999DD8(v17, v18, v19);
  a7(v22, v16, MEMORY[0x1E69E6158], v17, v20);
}

uint64_t objectdestroy_15Tm_0(uint64_t *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  (*(*(v3 - 8) + 8))(v2 + ((*(*(v3 - 8) + 80) + 16) & ~*(*(v3 - 8) + 80)), v3);

  return swift_deallocObject();
}

uint64_t objectdestroy_21Tm(uint64_t *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *(v3 - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v4 + 8))(v2 + v5, v3);
  j__swift_release(*(v2 + v6));

  return swift_deallocObject();
}

uint64_t sub_1B7A62F68(uint64_t a1, uint64_t *a2, uint64_t *a3, unint64_t *a4, void (*a5)(void *, uint64_t, void, uint64_t, unint64_t))
{
  v11 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a2, a3) - 8);
  v12 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  return sub_1B7A62A78(a1, v5 + v12, v5 + ((*(v11 + 64) + v12 + 7) & 0xFFFFFFFFFFFFFFF8), a2, a3, a4, a5);
}

unint64_t sub_1B7A63074()
{
  result = qword_1EBA499B8;
  if (!qword_1EBA499B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA499C0, &qword_1B7AA7A88);
    sub_1B797EC34(&qword_1EBA49968, &qword_1EBA49960, &qword_1B7AA7A38, &unk_1B7AA7000);
    sub_1B797EC34(&qword_1EBA49970, &qword_1EBA49948, &qword_1B7AA7A18, &protocol conformance descriptor for _RequirementFailureView<A, B>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA499B8);
  }

  return result;
}

unint64_t sub_1B7A63158()
{
  result = qword_1EBA499C8;
  if (!qword_1EBA499C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_1EBA499D0, &unk_1B7AA7A90);
    sub_1B797EC34(&qword_1EBA499A0, &qword_1EBA49998, &qword_1B7AA7A80, &unk_1B7AA7000);
    sub_1B797EC34(&qword_1EBA499A8, &qword_1EBA49980, &qword_1B7AA7A68, &protocol conformance descriptor for _RequirementFailureView<A, B>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA499C8);
  }

  return result;
}

uint64_t ShelfGridPadding.init(leading:trailing:)@<X0>(uint64_t result@<X0>, char a2@<W1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  *a5 = result;
  *(a5 + 8) = a2 & 1;
  *(a5 + 16) = a3;
  *(a5 + 24) = a4 & 1;
  return result;
}

void ShelfGridPadding.init(floatLiteral:)(uint64_t a1@<X8>, double a2@<D0>)
{
  *a1 = a2;
  *(a1 + 8) = 0;
  *(a1 + 16) = a2;
  *(a1 + 24) = 0;
}

uint64_t ShelfGridPadding.leading.setter(uint64_t result, char a2)
{
  *v2 = result;
  *(v2 + 8) = a2 & 1;
  return result;
}

uint64_t ShelfGridPadding.trailing.setter(uint64_t result, char a2)
{
  *(v2 + 16) = result;
  *(v2 + 24) = a2 & 1;
  return result;
}

uint64_t static Transaction.appleServicesLoading.getter()
{
  sub_1B7A98A40();

  return sub_1B7A97180();
}

id ExternalURLActionImplementation.init()@<X0>(void *a1@<X8>)
{
  result = [objc_opt_self() defaultWorkspace];
  if (result)
  {
    *a1 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1B7A633B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[12] = a3;
  v4[13] = a4;
  v4[10] = a1;
  v4[11] = a2;
  v5 = sub_1B7A98FA0();
  v4[14] = v5;
  v4[15] = *(v5 - 8);
  v4[16] = swift_task_alloc();
  v4[17] = sub_1B7A9A760();
  v4[18] = sub_1B7A9A750();
  v7 = sub_1B7A9A710();
  v4[19] = v7;
  v4[20] = v6;

  return MEMORY[0x1EEE6DFA0](sub_1B7A634AC, v7, v6);
}

uint64_t sub_1B7A634AC()
{
  v1 = [objc_allocWithZone(MEMORY[0x1E69636B8]) init];
  *(v0 + 168) = v1;
  [v1 setSensitive_];
  v2 = sub_1B7A9A750();
  *(v0 + 176) = v2;
  if (v2)
  {
    swift_getObjectType();
    v3 = sub_1B7A9A710();
    v5 = v4;
  }

  else
  {
    v3 = 0;
    v5 = 0;
  }

  return MEMORY[0x1EEE6DFA0](sub_1B7A63588, v3, v5);
}

uint64_t sub_1B7A63588()
{
  v1 = v0[21];
  v2 = v0[16];
  v3 = v0[12];
  v4 = v0[11];
  v0[2] = v0;
  v0[7] = v2;
  v0[3] = sub_1B7A6364C;
  v5 = swift_continuation_init();
  sub_1B7A638BC(v5, v3, v4, v1);

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1B7A6364C(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 48);
  *(*v1 + 184) = v3;
  if (v3)
  {
    swift_willThrow();

    v4 = v2[19];
    v5 = v2[20];
    v6 = sub_1B7A63840;
  }

  else
  {
    v8 = v2[15];
    v7 = v2[16];
    v9 = v2[14];
    v10 = v2[10];

    (*(v8 + 32))(v10, v7, v9);
    v4 = v2[19];
    v5 = v2[20];
    v6 = sub_1B7A637C4;
  }

  return MEMORY[0x1EEE6DFA0](v6, v4, v5);
}

uint64_t sub_1B7A637C4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1B7A63840()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_1B7A638BC(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_1B7A96B90();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = aBlock - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B7A9A760();
  sub_1B7A9A750();
  sub_1B7A9A710();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_1B7A9A020();
  v11 = sub_1B7A96B50();
  (*(v8 + 8))(v10, v7);
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  aBlock[4] = sub_1B7A648AC;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B7A63C44;
  aBlock[3] = &block_descriptor_4;
  v13 = _Block_copy(aBlock);

  [a2 openURL:v11 configuration:a4 completionHandler:v13];
  _Block_release(v13);
}

uint64_t sub_1B7A63AC8(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = sub_1B7A98FA0();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA46B60, &qword_1B7AA0260);
    v10 = swift_allocError();
    *v11 = a2;
    v12 = a2;

    return MEMORY[0x1EEE6DEE8](a3, v10);
  }

  else
  {
    (*(v6 + 104))(v9, *MEMORY[0x1E69AB010], v5, v7);
    (*(v6 + 32))(*(*(a3 + 64) + 40), v9, v5);
    return swift_continuation_throwingResume();
  }
}

uint64_t sub_1B7A63C44(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  if (a2)
  {
    v5 = sub_1B7A9A3A0();
  }

  else
  {
    v5 = 0;
  }

  v6 = a3;
  v4(v5, a3);
}

uint64_t sub_1B7A63CF8(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6)
{
  v6[2] = a6;
  v8 = sub_1B7A98FA0();
  v6[3] = v8;
  v6[4] = *(v8 - 8);
  v9 = swift_task_alloc();
  v6[5] = v9;
  v12 = (a4 + *a4);
  v10 = swift_task_alloc();
  v6[6] = v10;
  *v10 = v6;
  v10[1] = sub_1B7A63E58;

  return v12(v9);
}

uint64_t sub_1B7A63E58()
{
  *(*v1 + 56) = v0;

  if (v0)
  {
    v2 = sub_1B7A63FFC;
  }

  else
  {
    v2 = sub_1B7A63F6C;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1B7A63F6C()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[3];
  sub_1B7A9A140();
  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1B7A63FFC()
{
  v1 = *(v0 + 56);
  sub_1B7A9A130();

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1B7A64074(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA46B40, &qword_1B7A9DF90);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v23 - v10;
  sub_1B7A6471C(a3, v23 - v10);
  v12 = sub_1B7A9A7E0();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_1B7A6478C(v11);
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    v14 = 0;
    v16 = 0;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  sub_1B7A9A7D0();
  (*(v13 + 8))(v11, v12);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  swift_getObjectType();
  swift_unknownObjectRetain();
  v14 = sub_1B7A9A710();
  v16 = v15;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v17 = sub_1B7A9A4F0() + 32;
    v18 = swift_allocObject();
    *(v18 + 16) = a4;
    *(v18 + 24) = a5;

    if (v16 | v14)
    {
      v24[0] = 0;
      v24[1] = 0;
      v19 = v24;
      v24[2] = v14;
      v24[3] = v16;
    }

    else
    {
      v19 = 0;
    }

    v23[1] = 7;
    v23[2] = v19;
    v23[3] = v17;
    v21 = swift_task_create();

    sub_1B7A6478C(a3);

    return v21;
  }

LABEL_8:
  sub_1B7A6478C(a3);
  v20 = swift_allocObject();
  *(v20 + 16) = a4;
  *(v20 + 24) = a5;
  if (v16 | v14)
  {
    v24[4] = 0;
    v24[5] = 0;
    v24[6] = v14;
    v24[7] = v16;
  }

  return swift_task_create();
}

uint64_t sub_1B7A64330(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA46B40, &qword_1B7A9DF90);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v20 - v6;
  v8 = sub_1B7A9A030();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v12 = *v2;
  (*(v9 + 16))(&v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v8, v11);
  v13 = (*(v9 + 80) + 24) & ~*(v9 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = *(a2 + 16);
  (*(v9 + 32))(v14 + v13, &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v8);
  *(v14 + ((v10 + v13 + 7) & 0xFFFFFFFFFFFFFFF8)) = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA46FF0, &unk_1B7AA01E0);
  v15 = v12;
  v16 = sub_1B7A9A150();
  v17 = sub_1B7A9A7E0();
  (*(*(v17 - 8) + 56))(v7, 1, 1, v17);
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = &unk_1B7AA7BE8;
  v18[5] = v14;
  v18[6] = v16;

  sub_1B7A64074(0, 0, v7, &unk_1B7A9EE00, v18);

  return v16;
}

uint64_t sub_1B7A645AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1B7A64600(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(sub_1B7A9A030() - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = *(v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1B798D338;

  return sub_1B7A633B0(a1, v1 + v6, v7, v4);
}

uint64_t sub_1B7A6471C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA46B40, &qword_1B7A9DF90);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B7A6478C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA46B40, &qword_1B7A9DF90);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B7A647F4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1B798D54C;

  return sub_1B79DC72C(a1, v4);
}

uint64_t View.dataObject<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for DataObjectBox(0, v9, v9, v10);
  (*(v6 + 16))(v8, a1, a3);
  sub_1B7A64A78(v8);
  swift_getWitnessTable();
  sub_1B7A98240();
}

uint64_t sub_1B7A64A18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = type metadata accessor for DataObjectBox(0, a1, a3, a4);
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEDDFCC0](v4, WitnessTable);
}

uint64_t sub_1B7A64A78(uint64_t a1)
{
  v2 = swift_allocObject();
  (*(*(*(*v2 + 80) - 8) + 32))(v2 + *(*v2 + 88), a1);
  return v2;
}

uint64_t sub_1B7A64B0C()
{
  (*(*(*(*v0 + 80) - 8) + 8))(v0 + *(*v0 + 88));

  return swift_deallocClassInstance();
}

uint64_t sub_1B7A64BB8(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1B7A64C4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1B7A64C88(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
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

uint64_t sub_1B7A64CE4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_1B7A64D4C@<X0>(uint64_t a1@<X0>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  type metadata accessor for DataObjectBox(0, a3, a3, a4);
  swift_getWitnessTable();
  if (a1)
  {
    v8 = *(*(a3 - 8) + 16);
    v9 = a1 + *(*a1 + 88);

    return v8(a5, v9, a3);
  }

  else
  {
    result = sub_1B7A97700();
    __break(1u);
  }

  return result;
}

void *EnvironmentValues.dispatchIntent.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1B79DC584(a1, a2, a3);

  return sub_1B7A97890();
}

uint64_t IntentDispatchAction.callAsFunction<A>(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[9] = a3;
  v6[10] = a4;
  v6[7] = a1;
  v6[8] = a2;
  v7 = *v5;
  v6[11] = a5;
  v6[12] = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA47320, &qword_1B7AA0040);
  v9 = swift_task_alloc();
  v6[13] = v9;
  *v9 = v6;
  v9[1] = sub_1B7A64F50;

  return MEMORY[0x1EEE16770](v6 + 2, v8, v8);
}

uint64_t sub_1B7A64F50()
{
  *(*v1 + 112) = v0;

  if (v0)
  {
    v2 = sub_1B7A6523C;
  }

  else
  {
    v2 = sub_1B7A65064;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1B7A65064()
{
  v1 = v0[5];
  v2 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v1);
  v3 = swift_task_alloc();
  v0[15] = v3;
  *v3 = v0;
  v3[1] = sub_1B7A65128;
  v5 = v0[11];
  v4 = v0[12];
  v6 = v0[9];
  v7 = v0[10];
  v8 = v0[7];
  v9 = v0[8];

  return MEMORY[0x1EEE16990](v8, v9, v4, v6, v7, v5, v1, v2);
}

uint64_t sub_1B7A65128()
{
  *(*v1 + 128) = v0;

  if (v0)
  {
    v2 = sub_1B7A65254;
  }

  else
  {
    v2 = sub_1B7A67374;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1B7A65254()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t IntentDispatchAction.callAsFunction<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[9] = a3;
  v5[10] = a4;
  v5[7] = a1;
  v5[8] = a2;
  v5[11] = *v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA47320, &qword_1B7AA0040);
  v7 = swift_task_alloc();
  v5[12] = v7;
  *v7 = v5;
  v7[1] = sub_1B7A65380;

  return MEMORY[0x1EEE16770](v5 + 2, v6, v6);
}

uint64_t sub_1B7A65380()
{
  *(*v1 + 104) = v0;

  if (v0)
  {
    v2 = sub_1B7A656D0;
  }

  else
  {
    v2 = sub_1B7A65494;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1B7A65494()
{
  v1 = v0[5];
  v2 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v1);
  v3 = swift_task_alloc();
  v0[14] = v3;
  *v3 = v0;
  v3[1] = sub_1B7A65558;
  v5 = v0[10];
  v4 = v0[11];
  v6 = v0[8];
  v7 = v0[9];
  v8 = v0[7];

  return MEMORY[0x1EEE16988](v8, v6, v4, v7, v5, v1, v2);
}

uint64_t sub_1B7A65558()
{
  *(*v1 + 120) = v0;

  if (v0)
  {
    v2 = sub_1B7A656E8;
  }

  else
  {
    v2 = sub_1B7A6566C;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1B7A6566C()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1B7A656E8()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t View.intentDispatcher(_:with:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_getKeyPath();
  sub_1B7999E90(a1, v8);
  v6 = swift_allocObject();
  sub_1B795C1E4(v8, v6 + 16);
  *(v6 + 56) = a2;

  sub_1B7A98320();
}

uint64_t sub_1B7A65824(uint64_t *a1, uint64_t a2)
{
  v4 = sub_1B7A98C30();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B7A9A760();
  sub_1B7A9A750();
  sub_1B7A9A710();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_1B7999E90(a2, v15);
  v8 = swift_allocObject();
  sub_1B795C1E4(v15, v8 + 16);
  v9 = *a1;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA47320, &qword_1B7AA0040);
  v11 = swift_allocObject();
  v11[2] = &unk_1B7AA7E30;
  v11[3] = v8;
  v11[4] = v9;

  MEMORY[0x1B8CA9E30](v10, &unk_1B7AA7E38, v11, v10);
  v12 = sub_1B7A992C0();

  (*(v5 + 8))(v7, v4);

  *a1 = v12;
  return result;
}

uint64_t sub_1B7A65A3C(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1B7A65A5C, 0, 0);
}

uint64_t sub_1B7A65A5C()
{
  sub_1B7999E90(v0[3], v0[2]);
  v1 = v0[1];

  return v1();
}

uint64_t sub_1B7A65AD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_getKeyPath();

  sub_1B7A98320();
}

uint64_t sub_1B7A65B70(uint64_t *a1, uint64_t a2)
{
  v4 = sub_1B7A98C30();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B7A9A760();
  sub_1B7A9A750();
  sub_1B7A9A710();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v8 = *a1;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA47320, &qword_1B7AA0040);
  v10 = swift_allocObject();
  v10[2] = &unk_1B7AA7E18;
  v10[3] = a2;
  v10[4] = v8;
  swift_retain_n();
  MEMORY[0x1B8CA9E30](v9, &unk_1B7A9F4C0, v10, v9);
  v11 = sub_1B7A992C0();

  (*(v5 + 8))(v7, v4);

  *a1 = v11;
  return result;
}

uint64_t sub_1B7A65D50(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA47320, &qword_1B7AA0040);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1B798D54C;

  return MEMORY[0x1EEE16770](a1, v3, v3);
}

uint64_t sub_1B7A65E18(uint64_t *a1, uint64_t a2)
{
  v4 = sub_1B7A98C30();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B7A9A760();
  sub_1B7A9A750();
  sub_1B7A9A710();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA47320, &qword_1B7AA0040);
  if (sub_1B7A99250())
  {
    v9 = *a1;
    v10 = swift_allocObject();
    v10[2] = &unk_1B7AA7E48;
    v10[3] = a2;
    v10[4] = v9;
    swift_retain_n();
    MEMORY[0x1B8CA9E30](v8, &unk_1B7AA7E50, v10, v8);
    v11 = sub_1B7A992C0();

    (*(v5 + 8))(v7, v4);

    *a1 = v11;
  }

  else
  {
  }

  return result;
}

uint64_t View.intentDispatcher(with:implementations:)(uint64_t a1, void (*a2)(void), uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10[3] = sub_1B7A99B50();
  v10[4] = MEMORY[0x1E69AB358];
  __swift_allocate_boxed_opaque_existential_1Tm(v10);
  a2();
  View.intentDispatcher(_:with:)(v10, a1, a4, a5);
  return __swift_destroy_boxed_opaque_existential_1(v10);
}

unint64_t sub_1B7A660E8()
{
  result = qword_1EBA46BB0;
  if (!qword_1EBA46BB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA46B88, &qword_1B7AA9E50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA46BB0);
  }

  return result;
}

uint64_t sub_1B7A6617C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 16);
  *(v4 + 24) = &type metadata for _NoIntentDispatcherSet;
  *(v4 + 32) = sub_1B7A66AAC(a1, a2, a3);
  v5 = *(v3 + 8);

  return v5();
}

uint64_t sub_1B7A661F0(uint64_t a1, int *a2, uint64_t a3, uint64_t a4)
{
  v6 = v4;
  v6[27] = a1;
  v6[28] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA49B58, &qword_1B7AA7DF8);
  v6[29] = swift_task_alloc();
  v8 = sub_1B7A99B50();
  v6[30] = v8;
  v6[31] = *(v8 - 8);
  v6[32] = swift_task_alloc();
  v11 = (a2 + *a2);
  v9 = swift_task_alloc();
  v6[33] = v9;
  *v9 = v6;
  v9[1] = sub_1B7A6638C;

  return v11(a1);
}

uint64_t sub_1B7A6638C()
{
  v2 = *v1;

  if (v0)
  {

    v3 = *(v2 + 8);

    return v3();
  }

  else
  {

    return MEMORY[0x1EEE6DFA0](sub_1B7A664E4, 0, 0);
  }
}

uint64_t sub_1B7A664E4()
{
  if (v0[28])
  {
    v1 = v0[31];
    sub_1B7999E90(v0[27], (v0 + 2));

    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA47320, &qword_1B7AA0040);
    v3 = swift_dynamicCast();
    v4 = *(v1 + 56);
    if (v3)
    {
      v6 = v0[31];
      v5 = v0[32];
      v8 = v0[29];
      v7 = v0[30];
      v4(v8, 0, 1, v7);
      (*(v6 + 32))(v5, v8, v7);

      v9 = swift_task_alloc();
      v0[34] = v9;
      *v9 = v0;
      v9[1] = sub_1B7A66730;

      return MEMORY[0x1EEE16770](v0 + 7, v2, v2);
    }

    else
    {
      v11 = v0[29];
      v4(v11, 1, 1, v0[30]);
      sub_1B7957888(v11, &qword_1EBA49B58, &qword_1B7AA7DF8);
      return sub_1B7A9AD70();
    }
  }

  else
  {

    v10 = v0[1];

    return v10();
  }
}

uint64_t sub_1B7A66730()
{
  *(*v1 + 280) = v0;

  if (v0)
  {
    v2 = sub_1B7A66994;
  }

  else
  {
    v2 = sub_1B7A66860;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1B7A66860()
{
  v2 = v0[31];
  v1 = v0[32];
  v3 = v0[30];
  v4 = v0[27];
  sub_1B7999E90((v0 + 7), (v0 + 17));
  v5 = MEMORY[0x1E69AB358];
  v0[15] = v3;
  v0[16] = v5;
  __swift_allocate_boxed_opaque_existential_1Tm(v0 + 12);
  (*(v2 + 16))();
  sub_1B7A66A3C((v0 + 17), (v0 + 22));
  sub_1B7A99B10();

  sub_1B7957888((v0 + 17), &qword_1EBA49B60, &qword_1B7AA7E00);
  __swift_destroy_boxed_opaque_existential_1(v0 + 7);
  (*(v2 + 8))(v1, v3);
  __swift_destroy_boxed_opaque_existential_1(v4);
  sub_1B795C1E4(v0 + 6, v4);

  v6 = v0[1];

  return v6();
}

uint64_t sub_1B7A66994()
{
  v2 = v0[31];
  v1 = v0[32];
  v3 = v0[30];
  v4 = v0[27];

  (*(v2 + 8))(v1, v3);
  __swift_destroy_boxed_opaque_existential_1(v4);

  v5 = v0[1];

  return v5();
}

uint64_t sub_1B7A66A3C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA49B60, &qword_1B7AA7E00);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1B7A66AAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBA49B68;
  if (!qword_1EBA49B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA49B68);
  }

  return result;
}

uint64_t sub_1B7A66B00(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1B798D54C;

  return sub_1B7A65D50(a1);
}

uint64_t sub_1B7A66B9C(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1B798D54C;

  return sub_1B7A65A3C(a1, v1 + 16);
}

uint64_t sub_1B7A66C40(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1B798D54C;

  return sub_1B7A65D50(a1);
}

uint64_t sub_1B7A66CEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[4] = a5;
  v6[5] = a6;
  v6[2] = a2;
  v6[3] = a4;
  return MEMORY[0x1EEE6DFA0](sub_1B7A66D10, 0, 0);
}

uint64_t sub_1B7A66D10()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v3 + 16) = *(v0 + 24);
  *(v3 + 32) = v1;
  *(v3 + 40) = v2;
  sub_1B7A99720();

  v4 = sub_1B7A99A30();
  sub_1B7A6731C();
  swift_allocError();
  (*(*(v4 - 8) + 104))(v5, *MEMORY[0x1E69AB2F8], v4);
  swift_willThrow();
  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_1B7A66E38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1B7A9AC50();
  MEMORY[0x1B8CAB750](0xD00000000000003FLL, 0x80000001B7AC7F50);
  swift_getDynamicType();
  v3 = sub_1B7A9AFF0();
  MEMORY[0x1B8CAB750](v3);

  MEMORY[0x1B8CAB750](2108990, 0xE300000000000000);

  MEMORY[0x1B8CAB750](0xD000000000000053, 0x80000001B7AC7F90);

  MEMORY[0x1B8CAB750](0xD000000000000043, 0x80000001B7AC7FF0);

  return 0;
}

uint64_t sub_1B7A66F5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_1B798D338;

  return sub_1B7A66CEC(a1, a2, a3, a4, a5, a6);
}

uint64_t sub_1B7A6702C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15 = swift_task_alloc();
  *(v7 + 16) = v15;
  *v15 = v7;
  v15[1] = sub_1B798D54C;

  return MEMORY[0x1EEE169A8](a1, a2, a3, a6, a4, a7, a5);
}

uint64_t sub_1B7A67110(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v17 = swift_task_alloc();
  *(v8 + 16) = v17;
  *v17 = v8;
  v17[1] = sub_1B798D54C;

  return MEMORY[0x1EEE169B0](a1, a2, a3, a4, a7, a5, a8, a6);
}

uint64_t sub_1B7A67204(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v17 = swift_task_alloc();
  *(v8 + 16) = v17;
  *v17 = v8;
  v17[1] = sub_1B798D54C;

  return MEMORY[0x1EEE169B8](a1, a2, a3, a4, a7, a5, a8, a6);
}

unint64_t sub_1B7A6731C()
{
  result = qword_1EBA49B70;
  if (!qword_1EBA49B70)
  {
    sub_1B7A99A30();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA49B70);
  }

  return result;
}

uint64_t sub_1B7A67378(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1B797E898(a1, a2, a3);
  sub_1B7A97890();
  return v4;
}

uint64_t View.onViewAppearanceChange(perform:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7[0] = a1;
  v7[1] = a2;
  v7[2] = swift_getKeyPath();
  v7[3] = 0;
  v8 = 0;
  MEMORY[0x1B8CA96D0](v7, a3, &type metadata for _OnViewAppearanceChangeViewModifier, a4);
}

uint64_t View.viewAppearance(_:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  swift_getKeyPath();
  sub_1B7A98150();
}

uint64_t get_enum_tag_for_layout_string_7SwiftUI7BindingVySbGSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1B7A67520@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v44 = a2;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA49B78, &qword_1B7AA8038);
  MEMORY[0x1EEE9AC00](v43);
  v5 = &v40 - v4;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA49B80, &qword_1B7AA8040);
  MEMORY[0x1EEE9AC00](v42);
  v7 = &v40 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA49B88, &qword_1B7AA8048);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v40 - v9;
  v11 = sub_1B7A97880();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = *(v2 + 32);
  v48 = *(v2 + 16);
  v16 = v48;
  if (HIBYTE(v49) != 1)
  {
    v41 = v13;

    sub_1B7A9AA10();
    v30 = sub_1B7A97E70();
    v40 = v16;
    v31 = v30;
    sub_1B7A96D30();

    sub_1B7A97870();
    swift_getAtKeyPath();
    sub_1B7957888(&v48, &qword_1EBA49B90, &qword_1B7AA8050);
    (*(v12 + 8))(v15, v41);
    v16 = v45;
    v18 = v46;
    v17 = v47;
    if (v46)
    {
      goto LABEL_3;
    }

LABEL_5:
    v32 = swift_allocObject();
    v33 = *(v2 + 16);
    *(v32 + 16) = *v2;
    *(v32 + 32) = v33;
    *(v32 + 48) = *(v2 + 32);
    v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA49B98, &qword_1B7AA8058);
    (*(*(v34 - 8) + 16))(v5, a1, v34);
    v35 = &v5[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA49BA0, &qword_1B7AA8060) + 36)];
    *v35 = sub_1B7A67E48;
    v35[1] = v32;
    v35[2] = 0;
    v35[3] = 0;
    v36 = swift_allocObject();
    v37 = *(v2 + 16);
    *(v36 + 16) = *v2;
    *(v36 + 32) = v37;
    *(v36 + 48) = *(v2 + 32);
    v38 = &v5[*(v43 + 36)];
    *v38 = 0;
    *(v38 + 1) = 0;
    *(v38 + 2) = sub_1B7A67E6C;
    *(v38 + 3) = v36;
    sub_1B7957820(v5, v7, &qword_1EBA49B78, &qword_1B7AA8038);
    swift_storeEnumTagMultiPayload();
    sub_1B7957820(&v48, &v45, &qword_1EBA49B90, &qword_1B7AA8050);

    sub_1B7957820(&v48, &v45, &qword_1EBA49B90, &qword_1B7AA8050);
    sub_1B7A67F74(&qword_1EDC0FD20, &qword_1EBA49B88, &qword_1B7AA8048, sub_1B7A67E90);
    sub_1B7A67F74(&qword_1EDC0FD28, &qword_1EBA49B78, &qword_1B7AA8038, sub_1B7A67FF8);

    sub_1B7A97B30();
    v27 = v5;
    v28 = &qword_1EBA49B78;
    v29 = &qword_1B7AA8038;
    return sub_1B7957888(v27, v28, v29);
  }

  v17 = v49;
  v18 = *(&v48 + 1);
  sub_1B797DEF0(v48, *(&v48 + 1));
  if (!v18)
  {
    goto LABEL_5;
  }

LABEL_3:
  v41 = *(v2 + 8);
  v19 = v16;
  v20 = swift_allocObject();
  v21 = *(v2 + 16);
  *(v20 + 16) = *v2;
  *(v20 + 32) = v21;
  *(v20 + 48) = *(v2 + 32);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA49B98, &qword_1B7AA8058);
  (*(*(v22 - 8) + 16))(v10, a1, v22);
  v23 = &v10[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA49BA8, &qword_1B7AA8068) + 36)];
  *v23 = v19;
  *(v23 + 1) = v18;
  v23[16] = v17 & 1;
  *(v23 + 3) = sub_1B7A680F8;
  *(v23 + 4) = v20;
  v23[40] = 1;
  v24 = swift_allocObject();
  v25 = *(v2 + 16);
  *(v24 + 40) = *v2;
  *(v24 + 16) = v19;
  *(v24 + 24) = v18;
  *(v24 + 32) = v17 & 1;
  *(v24 + 56) = v25;
  *(v24 + 72) = *(v2 + 32);
  v26 = &v10[*(v8 + 36)];
  *v26 = 0;
  *(v26 + 1) = 0;
  *(v26 + 2) = sub_1B7A6813C;
  *(v26 + 3) = v24;
  sub_1B7957820(v10, v7, &qword_1EBA49B88, &qword_1B7AA8048);
  swift_storeEnumTagMultiPayload();
  sub_1B7957820(&v48, &v45, &qword_1EBA49B90, &qword_1B7AA8050);

  sub_1B7957820(&v48, &v45, &qword_1EBA49B90, &qword_1B7AA8050);
  sub_1B7A67F74(&qword_1EDC0FD20, &qword_1EBA49B88, &qword_1B7AA8048, sub_1B7A67E90);
  sub_1B7A67F74(&qword_1EDC0FD28, &qword_1EBA49B78, &qword_1B7AA8038, sub_1B7A67FF8);

  sub_1B7A97B30();
  v27 = v10;
  v28 = &qword_1EBA49B88;
  v29 = &qword_1B7AA8048;
  return sub_1B7957888(v27, v28, v29);
}

uint64_t sub_1B7A67C08(uint64_t a1, uint64_t a2, char a3, void (**a4)(void))
{
  sub_1B7A9A760();
  sub_1B7A9A750();
  sub_1B7A9A710();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_1B797D54C();
  if (sub_1B7A9AAF0() & 1) != 0 || (sub_1B7A9AAE0() & 1) != 0 || (sub_1B7A9AB10())
  {
    v11 = a1;
    v12 = a2;
    v13 = a3 & 1;
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA45DF8, &qword_1B7AA0470);
    MEMORY[0x1B8CA9A40](&v10, v8);
    if (v10 == 1)
    {
      (*a4)(0);
    }
  }

  else
  {
  }
}

uint64_t sub_1B7A67D54(void (**a1)(void), uint64_t a2, char a3)
{
  sub_1B7A9A760();
  sub_1B7A9A750();
  sub_1B7A9A710();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  (*a1)(a3 & 1);
}

unint64_t sub_1B7A67E90()
{
  result = qword_1EDC0FD40;
  if (!qword_1EDC0FD40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA49BA8, &qword_1B7AA8068);
    sub_1B797EC34(&qword_1EDC0FCF8, &qword_1EBA49B98, &qword_1B7AA8058, MEMORY[0x1E697FDF8]);
    sub_1B797EC34(qword_1EDC0FDA8, &qword_1EBA49BB0, &unk_1B7AA8070, &unk_1B7A9F7E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC0FD40);
  }

  return result;
}

uint64_t sub_1B7A67F74(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1B7A67FF8()
{
  result = qword_1EDC0FD48;
  if (!qword_1EDC0FD48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA49BA0, &qword_1B7AA8060);
    sub_1B797EC34(&qword_1EDC0FCF8, &qword_1EBA49B98, &qword_1B7AA8058, MEMORY[0x1E697FDF8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC0FD48);
  }

  return result;
}

uint64_t objectdestroyTm_7()
{

  sub_1B797D5A0(*(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 49));

  return swift_deallocObject();
}

unsigned __int8 *sub_1B7A680F8(unsigned __int8 *result, _BYTE *a2)
{
  v3 = *result;
  if ((v3 & 1) != 0 || *a2)
  {
    return (*(v2 + 16))(*a2 | v3 ^ 1u);
  }

  return result;
}

unint64_t sub_1B7A6815C()
{
  result = qword_1EDC0FD18;
  if (!qword_1EDC0FD18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_1EBA49BB8, &qword_1B7AA8098);
    sub_1B7A67F74(&qword_1EDC0FD20, &qword_1EBA49B88, &qword_1B7AA8048, sub_1B7A67E90);
    sub_1B7A67F74(&qword_1EDC0FD28, &qword_1EBA49B78, &qword_1B7AA8038, sub_1B7A67FF8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC0FD18);
  }

  return result;
}

uint64_t sub_1B7A68240@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v8 = *a3;
  v9 = *(a3 + 8);
  v10 = a3[2];
  v11 = *(a3 + 24);
  *a8 = result;
  *(a8 + 8) = a2;
  *(a8 + 16) = v8;
  *(a8 + 24) = v9;
  *(a8 + 32) = v10;
  *(a8 + 40) = v11;
  *(a8 + 48) = a4;
  *(a8 + 56) = a5;
  *(a8 + 64) = a6;
  *(a8 + 72) = a7;
  return result;
}

uint64_t sub_1B7A68270(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1B7A682AC(uint64_t *a1, int a2)
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

uint64_t sub_1B7A682F4(uint64_t result, int a2, int a3)
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

uint64_t sub_1B7A683A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v46 = a2;
  v4 = sub_1B7A97BF0();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v45 = v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_1B7A98990();
  v6 = *(v44 - 8);
  MEMORY[0x1EEE9AC00](v44);
  v8 = (v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = sub_1B7A989A0();
  MEMORY[0x1EEE9AC00](v9 - 8);
  v41 = v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA47548, &qword_1B7A9FB88);
  v42 = *(a1 + 16);
  v12 = v42;
  v13 = sub_1B7A68DE0();
  *&v53 = v11;
  *(&v53 + 1) = MEMORY[0x1E69E69B8];
  *&v54 = v12;
  *(&v54 + 1) = v13;
  *&v55 = MEMORY[0x1E69E69C0];
  v36 = sub_1B7A988E0();
  v39 = *(a1 + 24);
  v52 = v39;
  WitnessTable = swift_getWitnessTable();
  v14 = sub_1B7A98A90();
  v43 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v34 = v32 - v15;
  v37 = swift_getWitnessTable();
  *&v53 = v14;
  *(&v53 + 1) = v37;
  v38 = MEMORY[0x1E697D1A0];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v40 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v18 = v32 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v33 = v32 - v20;
  v21 = v2[3];
  v55 = v2[2];
  v56 = v21;
  v57 = v2[4];
  v22 = v2[1];
  v53 = *v2;
  v54 = v22;
  v32[1] = v55;
  v58 = BYTE8(v55);
  *v8 = xmmword_1B7A9FA60;
  (*(v6 + 104))(v8, *MEMORY[0x1E697D748], v44);
  v23 = v41;
  sub_1B7A989B0();
  if (*(&v53 + 1) >= *(v53 + 16))
  {
    v25 = *(v53 + 16);
  }

  else
  {
    v25 = *(&v53 + 1);
  }

  sub_1B79CF8C4(v23, v25, v24);
  v47 = v42;
  v48 = v39;
  v49 = &v53;
  sub_1B79CFF54();
  v26 = v34;
  sub_1B7A98A80();
  v27 = v37;
  sub_1B7A982A0();
  (*(v43 + 8))(v26, v14);
  v50 = v14;
  v51 = v27;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v29 = v33;
  sub_1B7957EE0(v18, OpaqueTypeMetadata2, OpaqueTypeConformance2);
  v30 = *(v40 + 8);
  v30(v18, OpaqueTypeMetadata2);
  sub_1B7957EE0(v29, OpaqueTypeMetadata2, OpaqueTypeConformance2);
  return (v30)(v29, OpaqueTypeMetadata2);
}

uint64_t sub_1B7A68910@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v27 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA47548, &qword_1B7A9FB88);
  v24 = sub_1B7A68DE0();
  v25 = v7;
  v29[0] = v7;
  v29[1] = MEMORY[0x1E69E69B8];
  v29[2] = a2;
  v29[3] = v24;
  v29[4] = MEMORY[0x1E69E69C0];
  v8 = sub_1B7A988E0();
  v26 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v23 - v12;
  sub_1B7A9A760();
  v23[1] = sub_1B7A9A750();
  sub_1B7A9A710();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v29[10] = *a1;
  swift_getKeyPath();
  v14 = swift_allocObject();
  *(v14 + 16) = a2;
  *(v14 + 24) = a3;
  v15 = *(a1 + 3);
  *(v14 + 64) = *(a1 + 2);
  *(v14 + 80) = v15;
  *(v14 + 96) = *(a1 + 4);
  v16 = *(a1 + 1);
  *(v14 + 32) = *a1;
  *(v14 + 48) = v16;
  v17 = swift_allocObject();
  v17[2] = a2;
  v17[3] = a3;
  v17[4] = sub_1B7A68E50;
  v17[5] = v14;

  v19 = type metadata accessor for _ResolvedHorizontalShelfLayout(0, a2, a3, v18);
  (*(*(v19 - 8) + 16))(v29, a1, v19);
  sub_1B7A988B0();
  v28 = a3;
  WitnessTable = swift_getWitnessTable();
  sub_1B7957EE0(v10, v8, WitnessTable);
  v21 = *(v26 + 8);
  v21(v10, v8);
  sub_1B7957EE0(v13, v8, WitnessTable);
  v21(v13, v8);
}

uint64_t sub_1B7A68C28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v18[0] = a2;
  v18[1] = a6;
  v10 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v12 = v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = v18 - v14;
  sub_1B7A9A760();
  sub_1B7A9A750();
  sub_1B7A9A710();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  (*(a3 + 64))(a1, v18[0]);
  sub_1B7957EE0(v12, a4, a5);
  v16 = *(v10 + 8);
  v16(v12, a4);
  sub_1B7957EE0(v15, a4, a5);
  v16(v15, a4);
}

unint64_t sub_1B7A68DE0()
{
  result = qword_1EBA47550;
  if (!qword_1EBA47550)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA47548, &qword_1B7A9FB88);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA47550);
  }

  return result;
}

double _TaskViewDefaultWorking.init()@<D0>(void *a1@<X8>)
{
  if (qword_1EBA45B98 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  *a1 = qword_1EBA49C40;

  return result;
}

uint64_t _TaskViewDefaultFailed.init(error:retry:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = result;
  a4[1] = a2;
  a4[2] = a3;
  return result;
}

uint64_t _TaskViewPlaceholderWorking.init(placeholder:content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v14 = sub_1B7A9AB60();
  (*(*(v14 - 8) + 32))(a7, a1, v14);
  result = type metadata accessor for _TaskViewPlaceholderWorking(0, a4, a5, a6);
  v16 = (a7 + *(result + 44));
  *v16 = a2;
  v16[1] = a3;
  return result;
}

uint64_t TaskView.init(_:task:working:failed:content:)@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, __int128 a12, __int128 a13, uint64_t a14, uint64_t a15)
{
  v46 = a7;
  v47 = a8;
  v44 = a5;
  v45 = a6;
  v40 = a2;
  v41 = a3;
  v38 = a12;
  v39 = a13;
  v42 = a10;
  v43 = a4;
  swift_getTupleTypeMetadata2();
  v17 = sub_1B7A9A100();
  v18 = sub_1B7A9AB60();
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v35 - v20;
  v37 = *a1;
  v36 = *(a1 + 2);
  v48 = a11;
  v49 = a12;
  v50 = a13;
  v51 = a14;
  v52 = a15;
  v22 = type metadata accessor for TaskView(0, &v48);
  v23 = a9 + v22[19];
  v24 = *(*(v17 - 8) + 56);
  v24(v21, 1, 1, v17);
  sub_1B7A69204(v21);
  *a9 = v37;
  *(a9 + 16) = v36;
  v24(v21, 1, 1, v17);
  v25 = sub_1B7A98700();
  (*(*(v25 - 8) + 8))(v23, v25);
  *(v23 + *(v25 + 28)) = 0;
  result = (*(v19 + 32))(v23, v21, v18);
  v27 = (a9 + v22[20]);
  v28 = v41;
  *v27 = v40;
  v27[1] = v28;
  v29 = (a9 + v22[21]);
  v30 = v44;
  *v29 = v43;
  v29[1] = v30;
  v31 = (a9 + v22[22]);
  v32 = v46;
  *v31 = v45;
  v31[1] = v32;
  v33 = (a9 + v22[23]);
  v34 = v42;
  *v33 = v47;
  v33[1] = v34;
  return result;
}

uint64_t sub_1B7A69204(uint64_t a1)
{
  swift_getTupleTypeMetadata2();
  sub_1B7A9A100();
  v4 = sub_1B7A9AB60();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  (*(v5 + 16))(&v9 - v7, a1, v4, v6);
  sub_1B7A986C0();
  return (*(v5 + 8))(a1, v4);
}

uint64_t sub_1B7A6937C(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  swift_getTupleTypeMetadata2();
  sub_1B7A9A100();
  sub_1B7A9AB60();
  v3 = sub_1B7A98700();
  return a2(v3);
}

uint64_t TaskView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v69 = a2;
  v68 = sub_1B7A9A7E0();
  v67 = *(v68 - 8);
  MEMORY[0x1EEE9AC00](v68);
  v66 = &v49.i8[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v59 = *(a1 + 16);
  v5 = v59;
  swift_getTupleTypeMetadata2();
  sub_1B7A9A100();
  sub_1B7A9AB60();
  v63 = sub_1B7A98870();
  v62 = *(v63 - 8);
  v61 = *(v62 + 64);
  MEMORY[0x1EEE9AC00](v63);
  v60 = &v49.i8[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v7);
  v70 = &v49.i8[-v8];
  v9 = sub_1B7A98E50();
  v89 = MEMORY[0x1E69E76E8];
  WitnessTable = swift_getWitnessTable();
  v11.i64[0] = v5;
  v51 = &v82;
  v58 = *(a1 + 24);
  v85 = v58.i64[0];
  v71 = vzip1q_s64(v11, v58);
  v49 = vdupq_laneq_s64(v58, 1);
  v12 = *(a1 + 48);
  v86 = v9;
  v87 = v12;
  v88 = WitnessTable;
  v52 = v12;
  sub_1B7A987A0();
  v50 = sub_1B7A97B40();
  v53 = *(a1 + 40);
  v13 = v53;
  sub_1B7A97B40();
  v56 = sub_1B7A985B0();
  v55 = *(v56 - 8);
  MEMORY[0x1EEE9AC00](v56);
  v54 = &v49.i8[-v14];
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA49C48, &qword_1B7AA81D0);
  v65 = sub_1B7A97590();
  v15 = *(v65 - 8);
  MEMORY[0x1EEE9AC00](v65);
  v57 = &v49.i8[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v17);
  v64 = &v49.i8[-v18];
  *&v19 = v49.i64[0];
  *(&v19 + 1) = v13;
  v73 = v19;
  v72 = v71;
  v74 = v12;
  v71 = *(a1 + 56);
  v75 = v71;
  v76 = v2;
  v20 = swift_getWitnessTable();
  v83 = v71.i64[0];
  v84 = v20;
  v81 = swift_getWitnessTable();
  *v51 = v71.i64[1];
  v51 = swift_getWitnessTable();
  sub_1B7A985A0();
  sub_1B7A69324();
  v21 = v70;
  sub_1B7A6937C(a1, MEMORY[0x1E6981780]);
  v22 = (v2 + *(a1 + 80));
  v23 = v22[1];
  v50 = *v22;
  sub_1B7A69324();
  v24 = v80;
  v25 = v62;
  v26 = v60;
  v27 = v63;
  (*(v62 + 16))(v60, v21, v63);
  v28 = (*(v25 + 80) + 80) & ~*(v25 + 80);
  v29 = v55;
  v30 = (v61 + v28 + 7) & 0xFFFFFFFFFFFFFFF8;
  v31 = swift_allocObject();
  *(v31 + 16) = v59;
  *(v31 + 24) = v58;
  *&v32 = v53;
  *(&v32 + 1) = v52;
  *(v31 + 56) = v71;
  *(v31 + 40) = v32;
  *(v31 + 72) = v24;
  v33 = v31 + v28;
  v34 = v27;
  (*(v25 + 32))(v33, v26, v27);
  v35 = (v31 + v30);
  *v35 = v50;
  v35[1] = v23;
  v79 = v51;

  v36 = v56;
  v37 = swift_getWitnessTable();
  sub_1B7A6B434(v37, v38, v39);
  v40 = v66;
  sub_1B7A9A780();
  v41 = v57;
  v42 = v54;
  sub_1B7A983C0();

  (*(v67 + 8))(v40, v68);
  (*(v25 + 8))(v70, v34);
  (*(v29 + 8))(v42, v36);
  v43 = sub_1B797EC34(&qword_1EBA49C58, &qword_1EBA49C48, &qword_1B7AA81D0, MEMORY[0x1E697C520]);
  v77 = v37;
  v78 = v43;
  v44 = v65;
  v45 = swift_getWitnessTable();
  v46 = v64;
  sub_1B7957EE0(v41, v44, v45);
  v47 = *(v15 + 8);
  v47(v41, v44);
  sub_1B7957EE0(v46, v44, v45);
  return (v47)(v46, v44);
}

uint64_t sub_1B7A69BE4@<X0>(char *a1@<X0>, void (**a2)(void, void)@<X1>, void (**a3)(void, void)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v109 = a1;
  v119 = a9;
  v132 = a2;
  v133 = a3;
  v134 = a4;
  v135 = a5;
  v136 = a6;
  v137 = a7;
  v117 = a7;
  v118 = a8;
  v138 = a8;
  v14 = type metadata accessor for TaskView(0, &v132);
  v98 = *(v14 - 1);
  v93 = *(v98 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v96 = v90 - v15;
  v101 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v100 = v90 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v99 = v90 - v19;
  v92 = *(a3 - 1);
  MEMORY[0x1EEE9AC00](v20);
  v91 = v90 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_1B7A98E50();
  v131 = MEMORY[0x1E69E76E8];
  WitnessTable = swift_getWitnessTable();
  v104 = a3;
  v132 = a3;
  v133 = v22;
  v90[2] = v22;
  v103 = a6;
  v134 = a6;
  v135 = WitnessTable;
  v90[1] = WitnessTable;
  v24 = sub_1B7A987A0();
  v97 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v95 = v90 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v94 = v90 - v27;
  v102 = *(a2 - 1);
  MEMORY[0x1EEE9AC00](v28);
  v30 = v90 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v115 = v31;
  v32 = sub_1B7A97B40();
  v106 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v105 = v90 - v33;
  v108 = a4;
  v34 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v37 = v90 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v38);
  v40 = v90 - v39;
  v107 = a2;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v42 = sub_1B7A9A100();
  v43 = sub_1B7A9AB60();
  MEMORY[0x1EEE9AC00](v43 - 8);
  v45 = v90 - v44;
  v114 = v32;
  v116 = a5;
  v113 = sub_1B7A97B40();
  v112 = *(v113 - 8);
  MEMORY[0x1EEE9AC00](v113);
  v111 = v90 - v46;
  sub_1B7A9A760();
  v110 = sub_1B7A9A750();
  sub_1B7A9A710();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v47 = v109;
  sub_1B7A6937C(v14, MEMORY[0x1E6981778]);
  if ((*(*(v42 - 8) + 48))(v45, 1, v42) == 1)
  {
    (*&v47[v14[21]])();
    v48 = v108;
    v49 = v117;
    sub_1B7957EE0(v37, v108, v117);
    v50 = *(v34 + 8);
    v50(v37, v48);
    sub_1B7957EE0(v40, v48, v49);
    v51 = v115;
    v52 = swift_getWitnessTable();
    v109 = v40;
    v53 = v105;
    sub_1B79B5878(v37, v48, v51, v49, v52);
    v120 = v49;
    v121 = v52;
    v54 = v114;
    v55 = swift_getWitnessTable();
    v56 = v111;
    v57 = v118;
    sub_1B79B5878(v53, v54, v116, v55, v118);
    v106[1](v53, v54);
    v50(v37, v48);
    v50(v109, v48);
  }

  else if (swift_getEnumCaseMultiPayload() == 1)
  {
    v106 = *v45;
    v58 = v106;
    v105 = *&v47[v14[22]];
    v59 = v98;
    v60 = v96;
    (*(v98 + 16))(v96, v47, v14);
    v61 = (*(v59 + 80) + 72) & ~*(v59 + 80);
    v62 = swift_allocObject();
    v63 = v104;
    *(v62 + 2) = v107;
    *(v62 + 3) = v63;
    v64 = v116;
    *(v62 + 4) = v108;
    *(v62 + 5) = v64;
    v49 = v117;
    *(v62 + 6) = v103;
    *(v62 + 7) = v49;
    v57 = v118;
    *(v62 + 8) = v118;
    (*(v59 + 32))(&v62[v61], v60, v14);
    v65 = v100;
    (v105)(v58, sub_1B7A6DDB4, v62);

    v66 = v99;
    sub_1B7957EE0(v65, v64, v57);
    v67 = *(v101 + 8);
    v67(v65, v64);
    sub_1B7957EE0(v66, v64, v57);
    v68 = swift_getWitnessTable();
    v129 = v49;
    v130 = v68;
    v69 = v114;
    v70 = swift_getWitnessTable();
    v71 = v111;
    sub_1B7959A28(v65, v69, v64, v70, v57);

    v67(v65, v64);
    v67(v66, v64);
    v56 = v71;
  }

  else
  {
    v72 = *v45;
    v73 = *(v102 + 32);
    v74 = &v45[*(TupleTypeMetadata2 + 48)];
    v90[0] = v30;
    v73(v30, v74, v107);
    v75 = v91;
    (*&v47[v14[23]])(v30);
    v124 = v72;
    sub_1B7A98E60();
    v124 = v132;
    v76 = v95;
    v77 = v104;
    sub_1B7A98390();
    (*(v92 + 8))(v75, v77);
    v78 = v115;
    v79 = swift_getWitnessTable();
    v80 = v94;
    sub_1B7957EE0(v76, v78, v79);
    v81 = *(v97 + 8);
    v81(v76, v78);
    sub_1B7957EE0(v80, v78, v79);
    v82 = v105;
    v49 = v117;
    sub_1B7959A28(v76, v108, v78, v117, v79);
    v122 = v49;
    v123 = v79;
    v83 = v114;
    v84 = swift_getWitnessTable();
    v85 = v111;
    v57 = v118;
    sub_1B79B5878(v82, v83, v116, v84, v118);
    v106[1](v82, v83);
    v81(v76, v78);
    v81(v80, v78);
    v56 = v85;
    (*(v102 + 8))(v90[0], v107);
  }

  v86 = swift_getWitnessTable();
  v127 = v49;
  v128 = v86;
  v125 = swift_getWitnessTable();
  v126 = v57;
  v87 = v113;
  v88 = swift_getWitnessTable();
  sub_1B7957EE0(v56, v87, v88);
  (*(v112 + 8))(v56, v87);
}

uint64_t sub_1B7A6A924(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v23 = a8;
  v24 = a1;
  swift_getTupleTypeMetadata2();
  v14 = sub_1B7A9A100();
  v15 = sub_1B7A9AB60();
  v16 = *(v15 - 8);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v19 = &v22 - v18;
  (*(*(v14 - 8) + 56))(&v22 - v18, 1, 1, v14, v17);
  v25[0] = a2;
  v25[1] = a3;
  v25[2] = a4;
  v25[3] = a5;
  v25[4] = a6;
  v25[5] = a7;
  v25[6] = v23;
  v20 = type metadata accessor for TaskView(0, v25);
  sub_1B7A6DE7C(v19, v20);
  return (*(v16 + 8))(v19, v15);
}

uint64_t sub_1B7A6AAA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v5[7] = swift_getTupleTypeMetadata2();
  v5[8] = sub_1B7A9A100();
  v6 = sub_1B7A9AB60();
  v5[9] = v6;
  v5[10] = *(v6 - 8);
  v5[11] = swift_task_alloc();
  v5[12] = swift_task_alloc();
  v5[13] = swift_task_alloc();
  sub_1B7A9A760();
  v5[14] = sub_1B7A9A750();
  v8 = sub_1B7A9A710();
  v5[15] = v8;
  v5[16] = v7;

  return MEMORY[0x1EEE6DFA0](sub_1B7A6ABF4, v8, v7);
}

uint64_t sub_1B7A6ABF4()
{
  v1 = v0[13];
  v2 = v0[8];
  v0[17] = sub_1B7A98870();
  MEMORY[0x1B8CA9A40]();
  v3 = *(v2 - 8);
  v0[18] = v3;
  v4 = (*(v3 + 48))(v1, 1, v2);
  v5 = v0[13];
  if (v4 == 1)
  {
    (*(v0[10] + 8))(v0[13], v0[9]);
LABEL_10:
    v11 = v0[12];
    v12 = v0[4];
    v13 = *(v0[7] + 48);
    *v11 = v0[2];
    v15 = (v12 + *v12);
    v14 = swift_task_alloc();
    v0[19] = v14;
    *v14 = v0;
    v14[1] = sub_1B7A6AEA8;

    return v15(&v11[v13]);
  }

  v6 = v0[8];
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v3 + 8))(v5, v6);
    goto LABEL_10;
  }

  v7 = *(v0[7] + 48);
  if (*v5 != v0[2])
  {
    (*(*(v0[6] - 8) + 8))(&v5[v7]);
    goto LABEL_10;
  }

  v8 = v0[6];

  (*(*(v8 - 8) + 8))(&v5[v7], v8);

  v9 = v0[1];

  return v9();
}

uint64_t sub_1B7A6AEA8()
{
  v2 = *v1;
  *(*v1 + 160) = v0;

  v3 = *(v2 + 128);
  v4 = *(v2 + 120);
  if (v0)
  {
    v5 = sub_1B7A6B0BC;
  }

  else
  {
    v5 = sub_1B7A6AFE4;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

uint64_t sub_1B7A6AFE4()
{
  v1 = v0[18];
  v2 = v0[12];
  v3 = v0[8];

  swift_storeEnumTagMultiPayload();
  (*(v1 + 56))(v2, 0, 1, v3);
  sub_1B7A98810();

  v4 = v0[1];

  return v4();
}

uint64_t sub_1B7A6B0BC()
{
  v1 = v0[20];
  v2 = v0[18];
  v3 = v0[11];
  v4 = v0[8];

  *v3 = v1;
  swift_storeEnumTagMultiPayload();
  (*(v2 + 56))(v3, 0, 1, v4);
  sub_1B7A98810();

  v5 = v0[1];

  return v5();
}

uint64_t sub_1B7A6B1A0()
{
  sub_1B7A97280();
  sub_1B7A98A40();
  sub_1B7A97180();
  if (sub_1B7A97170())
  {
    sub_1B7A98A50();
  }

  v0 = sub_1B7A972A0();

  qword_1EBA49C40 = v0;
  return result;
}

uint64_t sub_1B7A6B29C()
{
  v2 = *(v0 + 16);
  swift_getTupleTypeMetadata2();
  sub_1B7A9A100();
  sub_1B7A9AB60();
  v3 = *(sub_1B7A98870() - 8);
  v4 = (*(v3 + 80) + 80) & ~*(v3 + 80);
  v5 = *(v0 + 72);
  v6 = (v0 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));
  v7 = *v6;
  v8 = v6[1];
  v9 = swift_task_alloc();
  *(v1 + 16) = v9;
  *v9 = v1;
  v9[1] = sub_1B798D338;

  return sub_1B7A6AAA8(v5, v0 + v4, v7, v8, v2);
}

unint64_t sub_1B7A6B434(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBA49C50;
  if (!qword_1EBA49C50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA49C50);
  }

  return result;
}

void _TaskViewDefaultWorking.init(animateRemoval:)(char a1@<W0>, uint64_t *a2@<X8>)
{
  if (a1)
  {
    if (qword_1EBA45B98 != -1)
    {
      swift_once();
    }

    v3 = qword_1EBA49C40;
  }

  else
  {
    if (qword_1EBA45B98 != -1)
    {
      swift_once();
    }

    sub_1B7A97290();
    v3 = sub_1B7A97270();
  }

  *a2 = v3;
}

double _TaskViewDefaultWorking.body.getter@<D0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  sub_1B7A986C0();
  KeyPath = swift_getKeyPath();
  v5 = swift_getKeyPath();
  v6 = swift_getKeyPath();
  v7 = swift_getKeyPath();
  *a1 = sub_1B795AAEC;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  *(a1 + 24) = v9;
  *(a1 + 32) = v10;
  *(a1 + 40) = KeyPath;
  *(a1 + 48) = 0;
  *(a1 + 56) = v5;
  *(a1 + 64) = 0;
  *(a1 + 72) = v6;
  *(a1 + 80) = 0;
  *(a1 + 88) = v7;
  *(a1 + 96) = 0;
  *(a1 + 104) = v3;

  return result;
}

uint64_t _TaskViewPlaceholderWorking.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v50 = a2;
  v3 = *(a1 + 24);
  v46 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v43 = &v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v45 = &v42 - v6;
  v47 = v7;
  v8 = *(v7 + 16);
  v9 = sub_1B7A9AB60();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v42 - v11;
  v13 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v44 = &v42 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1B7A97B40();
  v48 = *(v16 - 8);
  v49 = v16;
  v17 = MEMORY[0x1EEE9AC00](v16);
  v19 = &v42 - v18;
  (*(v10 + 16))(v12, v2, v9, v17);
  if ((*(v13 + 48))(v12, 1, v8) == 1)
  {
    v20 = v47;
    v21 = (*(v10 + 8))(v12, v9);
    if (qword_1EBA45B98 != -1)
    {
      v21 = swift_once();
    }

    v53 = qword_1EBA49C40;
    v24 = *(v20 + 32);
    v25 = sub_1B7A6BAF0(v21, v22, v23);

    sub_1B7959A28(&v53, v3, &type metadata for _TaskViewDefaultWorking, v24, v25);
  }

  else
  {
    v29 = v44;
    (*(v13 + 32))(v44, v12, v8);
    v30 = v47;
    v31 = v43;
    (*(v2 + *(v47 + 44)))(v29);
    v24 = *(v30 + 32);
    v32 = v45;
    sub_1B7957EE0(v31, v3, v24);
    v33 = *(v46 + 8);
    v33(v31, v3);
    v34 = sub_1B7957EE0(v32, v3, v24);
    v37 = sub_1B7A6BAF0(v34, v35, v36);
    sub_1B79B5878(v31, v3, &type metadata for _TaskViewDefaultWorking, v24, v37);
    v33(v31, v3);
    v33(v32, v3);
    v26 = (*(v13 + 8))(v29, v8);
  }

  v38 = sub_1B7A6BAF0(v26, v27, v28);
  v51 = v24;
  v52 = v38;
  v39 = v49;
  WitnessTable = swift_getWitnessTable();
  sub_1B7957EE0(v19, v39, WitnessTable);
  return (*(v48 + 8))(v19, v39);
}

unint64_t sub_1B7A6BAF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBA49C60[0];
  if (!qword_1EBA49C60[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EBA49C60);
  }

  return result;
}

uint64_t _TaskViewDefaultFailed.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(v1 + 8);
  v5 = *(v1 + 16);
  v6 = v3;

  ContentUnavailableView.init<>(error:retry:)(v3, v4, v5, a1);
  KeyPath = swift_getKeyPath();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA46DF8, &qword_1B7A9E7D0);
  v9 = a1 + *(result + 36);
  *v9 = KeyPath;
  *(v9 + 8) = 2;
  return result;
}

uint64_t sub_1B7A6BBD4@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(v1 + 8);
  v5 = *(v1 + 16);
  v6 = v3;

  ContentUnavailableView.init<>(error:retry:)(v3, v4, v5, a1);
  KeyPath = swift_getKeyPath();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA46DF8, &qword_1B7A9E7D0);
  v9 = a1 + *(result + 36);
  *v9 = KeyPath;
  *(v9 + 8) = 2;
  return result;
}

uint64_t TaskView.init<>(_:task:content:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v11 = a1[1];
  v12 = a1[2];
  *&v26 = *a1;
  *(&v26 + 1) = v11;
  v27 = v12;

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA46C08, &unk_1B7A9E020);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA46C10, &unk_1B7AA5330);
  v15 = sub_1B797EC34(&qword_1EBA46C18, &qword_1EBA46C08, &unk_1B7A9E020, &protocol conformance descriptor for LoadingView<A>);
  v16 = sub_1B797EC34(&qword_1EBA46C20, &qword_1EBA46C10, &unk_1B7AA5330, &protocol conformance descriptor for ContentUnavailableView<A, B, C>);
  *&v19 = v14;
  *(&v19 + 1) = a8;
  *&v18 = a7;
  *(&v18 + 1) = v13;
  TaskView.init(_:task:working:failed:content:)(&v26, a2, a3, j___s18_JetEngine_SwiftUI11LoadingViewVACy0cD04TextVGycAFRszrlufC, 0, sub_1B79AF2C8, 0, a4, a9, a5, a6, v18, v19, v15, v16);
}

uint64_t TaskView.init<>(_:task:placeholder:content:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v42 = a3;
  v43 = a6;
  v39 = a4;
  v40 = a9;
  v41 = a2;
  v44 = a10;
  v45 = a5;
  v36 = a7;
  v14 = sub_1B7A9AB60();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x1EEE9AC00](v14);
  v19 = &v35 - v18;
  v20 = a1[1];
  v21 = a1[2];
  *&v48 = *a1;
  *(&v48 + 1) = v20;
  v35 = v48;
  v37 = v20;
  v38 = v14;
  v49 = v21;
  (*(v15 + 16))(v19, a4, v14, v17);
  v22 = (*(v15 + 80) + 40) & ~*(v15 + 80);
  v23 = swift_allocObject();
  *(v23 + 2) = a7;
  *(v23 + 3) = a8;
  *(v23 + 4) = v44;
  (*(v15 + 32))(&v23[v22], v19, v14);
  v24 = &v23[(v16 + v22 + 7) & 0xFFFFFFFFFFFFFFF8];
  v25 = v43;
  *v24 = v45;
  *(v24 + 1) = v25;

  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA46C08, &unk_1B7A9E020);
  v26 = sub_1B7A97B40();
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA46C10, &unk_1B7AA5330);
  v28 = sub_1B797EC34(&qword_1EBA46C18, &qword_1EBA46C08, &unk_1B7A9E020, &protocol conformance descriptor for LoadingView<A>);
  v29 = v44;
  v46 = v44;
  v47 = v28;
  WitnessTable = swift_getWitnessTable();
  v31 = sub_1B797EC34(&qword_1EBA46C20, &qword_1EBA46C10, &unk_1B7AA5330, &protocol conformance descriptor for ContentUnavailableView<A, B, C>);
  *&v34 = v27;
  *(&v34 + 1) = v29;
  *&v33 = a8;
  *(&v33 + 1) = v26;
  TaskView.init(_:task:working:failed:content:)(&v48, v41, v42, sub_1B7A6C6B0, v23, sub_1B79AF2C8, 0, v45, v40, v43, v36, v33, v34, WitnessTable, v31);
  (*(v15 + 8))(v39, v38);
}

uint64_t sub_1B7A6C0D8@<X0>(uint64_t a1@<X0>, void (*a2)(char *)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v40 = a6;
  v33 = a3;
  v34 = a2;
  v36 = a1;
  v41 = a7;
  v35 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v33 - v12;
  v14 = sub_1B7A9AB60();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v33 - v16;
  v18 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v33 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA46C08, &unk_1B7A9E020);
  v39 = sub_1B7A97B40();
  v38 = *(v39 - 8);
  v22 = MEMORY[0x1EEE9AC00](v39);
  v24 = &v33 - v23;
  (*(v15 + 16))(v17, v36, v14, v22);
  if ((*(v18 + 48))(v17, 1, a4) == 1)
  {
    (*(v15 + 8))(v17, v14);
    LOBYTE(v44) = 0;
    sub_1B7A986C0();
    BYTE8(v45) = v50[0];
    *&v46 = *(&v50[0] + 1);
    *(&v46 + 1) = swift_getKeyPath();
    LOBYTE(v47) = 0;
    *(&v47 + 1) = swift_getKeyPath();
    LOBYTE(v48) = 0;
    *(&v48 + 1) = swift_getKeyPath();
    v49 = 0;
    *&v44 = sub_1B795AAEC;
    *(&v44 + 1) = 0;
    LOBYTE(v45) = 1;
    v25 = sub_1B797EC34(&qword_1EBA46C18, &qword_1EBA46C08, &unk_1B7A9E020, &protocol conformance descriptor for LoadingView<A>);
    v26 = v40;
    sub_1B7959A28(&v44, a5, v37, v40, v25);
    v50[2] = v46;
    v50[3] = v47;
    v50[4] = v48;
    v51 = v49;
    v50[0] = v44;
    v50[1] = v45;
    sub_1B79DBA88(v50);
  }

  else
  {
    (*(v18 + 32))(v21, v17, a4);
    v34(v21);
    v26 = v40;
    sub_1B7957EE0(v10, a5, v40);
    v27 = *(v35 + 8);
    v27(v10, a5);
    sub_1B7957EE0(v13, a5, v26);
    v28 = sub_1B797EC34(&qword_1EBA46C18, &qword_1EBA46C08, &unk_1B7A9E020, &protocol conformance descriptor for LoadingView<A>);
    sub_1B79B5878(v10, a5, v37, v26, v28);
    v27(v10, a5);
    v27(v13, a5);
    (*(v18 + 8))(v21, a4);
  }

  v29 = sub_1B797EC34(&qword_1EBA46C18, &qword_1EBA46C08, &unk_1B7A9E020, &protocol conformance descriptor for LoadingView<A>);
  v42 = v26;
  v43 = v29;
  v30 = v39;
  WitnessTable = swift_getWitnessTable();
  sub_1B7957EE0(v24, v30, WitnessTable);
  return (*(v38 + 8))(v24, v30);
}

uint64_t sub_1B7A6C6B0@<X0>(uint64_t a1@<X8>)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  v6 = *(sub_1B7A9AB60() - 8);
  v7 = (*(v6 + 80) + 40) & ~*(v6 + 80);
  v8 = v1 + ((*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8);
  v9 = *v8;
  v10 = *(v8 + 1);

  return sub_1B7A6C0D8(v1 + v7, v9, v10, v3, v4, v5, a1);
}

uint64_t TaskView.init<>(task:placeholder:content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v21 = a5;
  v22 = a7;
  v16 = sub_1B7A9AB60();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v21 - v18;
  v23 = 0;
  sub_1B7A98850();
  (*(v17 + 16))(v19, a3, v16);
  TaskView.init<>(_:task:placeholder:content:)(v24, a1, a2, v19, a4, v21, a6, v22, a9, a8);
  return (*(v17 + 8))(a3, v16);
}

uint64_t TaskView.init<A>(task:content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  sub_1B7A98850();
  v19 = swift_allocObject();
  v19[2] = a5;
  v19[3] = a6;
  v19[4] = a7;
  v19[5] = a8;
  v19[6] = a10;
  v19[7] = a1;
  v19[8] = a2;
  return TaskView.init<>(_:task:content:)(v21, &unk_1B7AA82A0, v19, a3, a4, a5, a6, a8, a9);
}

uint64_t sub_1B7A6CA4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[5] = a6;
  v8[6] = a8;
  v8[3] = a2;
  v8[4] = a3;
  v8[2] = a1;
  sub_1B7A9A760();
  v8[7] = sub_1B7A9A750();
  v10 = sub_1B7A9A710();
  v8[8] = v10;
  v8[9] = v9;

  return MEMORY[0x1EEE6DFA0](sub_1B7A6CAEC, v10, v9);
}

uint64_t sub_1B7A6CAEC()
{
  *(v0 + 80) = (*(v0 + 24))();
  v1 = swift_task_alloc();
  *(v0 + 88) = v1;
  *v1 = v0;
  v1[1] = sub_1B7A6CB9C;
  v2 = *(v0 + 40);
  v3 = *(v0 + 48);
  v4 = *(v0 + 16);

  return MEMORY[0x1EEE176D0](v4, v2, v3);
}

uint64_t sub_1B7A6CB9C()
{
  v2 = *v1;
  *(*v1 + 96) = v0;

  v3 = *(v2 + 72);
  v4 = *(v2 + 64);
  if (v0)
  {
    v5 = sub_1B7A6DF94;
  }

  else
  {
    v5 = sub_1B7A6DF90;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

uint64_t sub_1B7A6CCD8(uint64_t a1)
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
  v11[1] = sub_1B798D54C;

  return sub_1B7A6CA4C(a1, v9, v10, v4, v5, v6, v7, v8);
}

uint64_t TaskView.init<A>(task:placeholder:content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  v23 = a2;
  v24 = a8;
  v26 = a4;
  v27 = a5;
  v25 = a9;
  v15 = sub_1B7A9AB60();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v22 - v17;
  v28 = 0;
  sub_1B7A98850();
  v19 = swift_allocObject();
  v19[2] = a6;
  v19[3] = a7;
  v20 = v23;
  v19[4] = v24;
  v19[5] = a10;
  v19[6] = a11;
  v19[7] = a1;
  v19[8] = v20;
  (*(v16 + 16))(v18, a3, v15);
  TaskView.init<>(_:task:placeholder:content:)(v29, &unk_1B7AA82B0, v19, v18, v26, v27, a6, a7, v25, a10);
  return (*(v16 + 8))(a3, v15);
}

uint64_t sub_1B7A6CF5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[5] = a6;
  v8[6] = a8;
  v8[3] = a2;
  v8[4] = a3;
  v8[2] = a1;
  sub_1B7A9A760();
  v8[7] = sub_1B7A9A750();
  v10 = sub_1B7A9A710();
  v8[8] = v10;
  v8[9] = v9;

  return MEMORY[0x1EEE6DFA0](sub_1B7A6CFFC, v10, v9);
}

uint64_t sub_1B7A6CFFC()
{
  *(v0 + 80) = (*(v0 + 24))();
  v1 = swift_task_alloc();
  *(v0 + 88) = v1;
  *v1 = v0;
  v1[1] = sub_1B7A6D0AC;
  v2 = *(v0 + 40);
  v3 = *(v0 + 48);
  v4 = *(v0 + 16);

  return MEMORY[0x1EEE176D0](v4, v2, v3);
}

uint64_t sub_1B7A6D0AC()
{
  v2 = *v1;
  *(*v1 + 96) = v0;

  v3 = *(v2 + 72);
  v4 = *(v2 + 64);
  if (v0)
  {
    v5 = sub_1B7A6D258;
  }

  else
  {
    v5 = sub_1B7A6D1E8;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

uint64_t sub_1B7A6D1E8()
{
  swift_unknownObjectRelease();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1B7A6D258()
{
  swift_unknownObjectRelease();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1B7A6D2C8(uint64_t a1)
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
  v11[1] = sub_1B798D338;

  return sub_1B7A6CF5C(a1, v9, v10, v4, v5, v6, v7, v8);
}

void sub_1B7A6D498(uint64_t a1)
{
  sub_1B7A6D844();
  if (v1 <= 0x3F)
  {
    swift_getTupleTypeMetadata2();
    sub_1B7A9A100();
    sub_1B7A9AB60();
    sub_1B7A98700();
    if (v2 <= 0x3F)
    {
      sub_1B7958DD8();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1B7A6D570(uint64_t a1, int a2, uint64_t a3)
{
  v3 = *(*(a3 + 16) - 8);
  v4 = *(v3 + 80);
  v5 = ((v4 + 8) & ~v4) + *(v3 + 64);
  if (v5 <= 8)
  {
    v5 = 8;
  }

  if (!a2)
  {
    return 0;
  }

  if ((a2 & 0x80000000) == 0)
  {
    goto LABEL_5;
  }

  v8 = ((((((((((v4 + 24) & (~v4 | 0xFFFFFFFFFFFFFF07)) + (v5 & 0xFFFFFFFFFFFFFFF8) + 16) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
  v9 = v8 & 0xFFFFFFF8;
  v10 = a2 - 2147483646;
  if ((v8 & 0xFFFFFFF8) != 0)
  {
    v10 = 2;
  }

  if (v10 >= 0x10000)
  {
    v11 = 4;
  }

  else
  {
    v11 = 2;
  }

  if (v10 < 0x100)
  {
    v12 = 1;
  }

  else
  {
    v12 = v11;
  }

  if (v12 == 4)
  {
    v13 = *(a1 + v8);
    if (!v13)
    {
      goto LABEL_5;
    }
  }

  else if (v12 == 2)
  {
    v13 = *(a1 + v8);
    if (!v13)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v13 = *(a1 + v8);
    if (!v13)
    {
LABEL_5:
      v6 = *(a1 + 8);
      if (v6 >= 0xFFFFFFFF)
      {
        LODWORD(v6) = -1;
      }

      return (v6 + 1);
    }
  }

  v14 = v13 - 1;
  if (v9)
  {
    v14 = 0;
    LODWORD(v9) = *a1;
  }

  return (v9 | v14) ^ 0x80000000;
}

int *sub_1B7A6D6B0(int *result, int a2, int a3, uint64_t a4)
{
  v4 = *(*(a4 + 16) - 8);
  v5 = *(v4 + 80);
  v6 = ((v5 + 8) & ~v5) + *(v4 + 64);
  if (v6 <= 8)
  {
    v6 = 8;
  }

  v7 = ((((((((((v5 + 24) & (~v5 | 0xFFFFFFFFFFFFFF07)) + (v6 & 0xFFFFFFFFFFFFFFF8) + 16) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (a3 < 0)
  {
    v9 = a3 - 2147483646;
    if (v7)
    {
      v9 = 2;
    }

    if (v9 >= 0x10000)
    {
      v10 = 4;
    }

    else
    {
      v10 = 2;
    }

    if (v9 < 0x100)
    {
      v8 = 1;
    }

    else
    {
      v8 = v10;
    }

    if ((a2 & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_18:
    v11 = a2 & 0x7FFFFFFF;
    if (v7)
    {
      v12 = 1;
    }

    else
    {
      v12 = v11 + 1;
    }

    if (v7)
    {
      v13 = result;
      bzero(result, v7);
      result = v13;
      *v13 = v11;
    }

    if (v8 > 1)
    {
      if (v8 == 2)
      {
        *(result + v7) = v12;
      }

      else
      {
        *(result + v7) = v12;
      }
    }

    else if (v8)
    {
      *(result + v7) = v12;
    }

    return result;
  }

  v8 = 0;
  if (a2 < 0)
  {
    goto LABEL_18;
  }

LABEL_5:
  if (v8 <= 1)
  {
    if (v8)
    {
      *(result + v7) = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_29;
    }

LABEL_28:
    if (!a2)
    {
      return result;
    }

    goto LABEL_29;
  }

  if (v8 == 2)
  {
    *(result + v7) = 0;
    goto LABEL_28;
  }

  *(result + v7) = 0;
  if (a2)
  {
LABEL_29:
    *(result + 1) = (a2 - 1);
  }

  return result;
}

void sub_1B7A6D844()
{
  if (!qword_1EBA49CE8[0])
  {
    v0 = sub_1B7A98870();
    if (!v1)
    {
      atomic_store(v0, qword_1EBA49CE8);
    }
  }
}

unint64_t sub_1B7A6D8A4(uint64_t a1)
{
  result = sub_1B7A9AB60();
  if (v2 <= 0x3F)
  {
    result = sub_1B7958DD8();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1B7A6D92C(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  if (v5)
  {
    v6 = v5 - 1;
  }

  else
  {
    v6 = 0;
  }

  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = v6;
  }

  v8 = *(*(*(a3 + 16) - 8) + 64);
  if (!v5)
  {
    ++v8;
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_33;
  }

  v9 = ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  v10 = a2 - v7;
  v11 = v9 & 0xFFFFFFF8;
  if ((v9 & 0xFFFFFFF8) != 0)
  {
    v12 = 2;
  }

  else
  {
    v12 = v10 + 1;
  }

  if (v12 >= 0x10000)
  {
    v13 = 4;
  }

  else
  {
    v13 = 2;
  }

  if (v12 < 0x100)
  {
    v13 = 1;
  }

  if (v12 >= 2)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  if (v14 > 1)
  {
    if (v14 == 2)
    {
      v15 = *(a1 + v9);
      if (!v15)
      {
        goto LABEL_33;
      }
    }

    else
    {
      v15 = *(a1 + v9);
      if (!v15)
      {
        goto LABEL_33;
      }
    }
  }

  else if (!v14 || (v15 = *(a1 + v9)) == 0)
  {
LABEL_33:
    if (v6 < 0x7FFFFFFF)
    {
      v19 = *((a1 + v8 + 7) & 0xFFFFFFFFFFFFFFF8);
      if (v19 >= 0xFFFFFFFF)
      {
        LODWORD(v19) = -1;
      }

      return (v19 + 1);
    }

    else
    {
      v18 = (*(v4 + 48))(a1);
      if (v18 >= 2)
      {
        return v18 - 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v17 = v15 - 1;
  if (v11)
  {
    v17 = 0;
    LODWORD(v11) = *a1;
  }

  return v7 + (v11 | v17) + 1;
}

void sub_1B7A6DA9C(_DWORD *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = v6 - 1;
  if (!v6)
  {
    v7 = 0;
  }

  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = v7;
  }

  v9 = *(*(*(a4 + 16) - 8) + 64);
  if (!v6)
  {
    ++v9;
  }

  v10 = ((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (((v9 + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v11 = a3 - v8 + 1;
  }

  else
  {
    v11 = 2;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v8 < a3)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  if (a2 > v8)
  {
    if (((v9 + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v15 = a2 - v8;
    }

    else
    {
      v15 = 1;
    }

    if (((v9 + 7) & 0xFFFFFFF8) != 0xFFFFFFF0)
    {
      v16 = ~v8 + a2;
      v17 = a1;
      bzero(a1, v10);
      a1 = v17;
      *v17 = v16;
    }

    if (v14 > 1)
    {
      if (v14 == 2)
      {
        *(a1 + v10) = v15;
      }

      else
      {
        *(a1 + v10) = v15;
      }
    }

    else if (v14)
    {
      *(a1 + v10) = v15;
    }

    return;
  }

  if (v14 > 1)
  {
    if (v14 != 2)
    {
      *(a1 + v10) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_40;
    }

    *(a1 + v10) = 0;
LABEL_39:
    if (!a2)
    {
      return;
    }

    goto LABEL_40;
  }

  if (!v14)
  {
    goto LABEL_39;
  }

  *(a1 + v10) = 0;
  if (!a2)
  {
    return;
  }

LABEL_40:
  if (v7 < 0x7FFFFFFF)
  {
    v22 = ((a1 + v9 + 7) & 0xFFFFFFFFFFFFFFF8);
    if ((a2 & 0x80000000) != 0)
    {
      *v22 = a2 & 0x7FFFFFFF;
      v22[1] = 0;
    }

    else
    {
      *v22 = a2 - 1;
    }
  }

  else if (v7 >= a2)
  {
    v23 = *(v5 + 56);

    v23();
  }

  else
  {
    if (v9 <= 3)
    {
      v18 = ~(-1 << (8 * v9));
    }

    else
    {
      v18 = -1;
    }

    if (v9)
    {
      v19 = v18 & (~v7 + a2);
      if (v9 <= 3)
      {
        v20 = v9;
      }

      else
      {
        v20 = 4;
      }

      v21 = a1;
      bzero(a1, v9);
      if (v20 > 2)
      {
        if (v20 == 3)
        {
          *v21 = v19;
          *(v21 + 2) = BYTE2(v19);
        }

        else
        {
          *v21 = v19;
        }
      }

      else if (v20 == 1)
      {
        *v21 = v19;
      }

      else
      {
        *v21 = v19;
      }
    }
  }
}

unint64_t sub_1B7A6DCFC()
{
  result = qword_1EBA49D70;
  if (!qword_1EBA49D70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA49D78, &qword_1B7AA84D8);
    sub_1B79B33A0();
    sub_1B797EC34(&qword_1EBA46CD8, &qword_1EBA46CE0, &unk_1B7AA6E40, MEMORY[0x1E697FDC0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA49D70);
  }

  return result;
}

uint64_t sub_1B7A6DDB4()
{
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[6];
  v6 = v0[7];
  v7 = v0[8];
  v11[0] = v0[2];
  v1 = v11[0];
  v11[1] = v2;
  v11[2] = v3;
  v11[3] = v4;
  v11[4] = v5;
  v11[5] = v6;
  v11[6] = v7;
  v8 = *(type metadata accessor for TaskView(0, v11) - 8);
  v9 = v0 + ((*(v8 + 80) + 72) & ~*(v8 + 80));

  return sub_1B7A6A924(v9, v1, v2, v3, v4, v5, v6, v7);
}

uint64_t sub_1B7A6DE7C(uint64_t a1, uint64_t a2)
{
  swift_getTupleTypeMetadata2();
  sub_1B7A9A100();
  v3 = sub_1B7A9AB60();
  v4 = MEMORY[0x1EEE9AC00](v3);
  (*(v6 + 16))(&v8 - v5, a1, v3, v4);
  sub_1B7A98700();
  return sub_1B7A986E0();
}

uint64_t _JetLocalizeDefaultFailed.init(error:retry:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = result;
  a4[1] = a2;
  a4[2] = a3;
  return result;
}

uint64_t JetLocalize.init(working:failed:content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  result = swift_getKeyPath();
  *a7 = result;
  *(a7 + 8) = 0;
  *(a7 + 32) = a1;
  *(a7 + 40) = a2;
  *(a7 + 48) = a3;
  *(a7 + 56) = a4;
  *(a7 + 16) = a5;
  *(a7 + 24) = a6;
  return result;
}

uint64_t sub_1B7A6E018()
{
  v1 = sub_1B7A97880();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  v6 = *(v0 + 8);

  if ((v6 & 1) == 0)
  {
    sub_1B7A9AA10();
    v7 = sub_1B7A97E70();
    sub_1B7A96D30();

    sub_1B7A97870();
    swift_getAtKeyPath();
    j__swift_release(v5);
    (*(v2 + 8))(v4, v1);
    return v9[1];
  }

  return v5;
}

uint64_t JetLocalize.body.getter(void *a1)
{
  v3 = v1[1];
  v80 = *v1;
  v81 = v3;
  v4 = v1[3];
  v6 = *v1;
  v5 = v1[1];
  v82 = v1[2];
  v83 = v4;
  v77 = v6;
  v78 = v5;
  v7 = v1[3];
  *v79 = v1[2];
  *&v79[16] = v7;
  if (sub_1B7A6E018())
  {
    type metadata accessor for _LocalizerOwner(0);
    sub_1B7A6FFB8(&qword_1EBA47E08, type metadata accessor for _LocalizerOwner, &unk_1B7AA16F8);

    sub_1B7A97490();
    sub_1B7A974A0();
    swift_getKeyPath();
    sub_1B7A974B0();

    v10 = swift_allocObject();
    v11 = a1[2];
    v12 = a1[3];
    *(v10 + 16) = v11;
    *(v10 + 24) = v12;
    v13 = a1[4];
    v14 = a1[5];
    *(v10 + 32) = v13;
    *(v10 + 40) = v14;
    v62 = a1;
    v15 = a1[6];
    v16 = v62[7];
    *(v10 + 48) = v15;
    *(v10 + 56) = v16;
    v17 = v81;
    *(v10 + 64) = v80;
    *(v10 + 80) = v17;
    v18 = v83;
    *(v10 + 96) = v82;
    *(v10 + 112) = v18;
    v19 = swift_allocObject();
    *(v19 + 16) = v11;
    *(v19 + 24) = v12;
    v61 = v12;
    *(v19 + 32) = v13;
    *(v19 + 40) = v14;
    *(v19 + 48) = v15;
    *(v19 + 56) = v16;
    v20 = v81;
    *(v19 + 64) = v80;
    *(v19 + 80) = v20;
    v21 = v83;
    *(v19 + 96) = v82;
    *(v19 + 112) = v21;
    v22 = swift_allocObject();
    *(v22 + 16) = v11;
    *(v22 + 24) = v12;
    *(v22 + 32) = v13;
    *(v22 + 40) = v14;
    *(v22 + 48) = v15;
    *(v22 + 56) = v16;
    v23 = v81;
    *(v22 + 64) = v80;
    *(v22 + 80) = v23;
    v24 = v83;
    *(v22 + 96) = v82;
    *(v22 + 112) = v24;
    v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA47EA8, &qword_1B7AA17A8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA47E78, &qword_1B7AA16A0);
    v25 = sub_1B7A97590();
    v64 = v14;
    v65 = sub_1B797EC34(&qword_1EBA47E80, &qword_1EBA47E78, &qword_1B7AA16A0, MEMORY[0x1E6980A18]);
    WitnessTable = swift_getWitnessTable();
    *&v59 = v13;
    *(&v59 + 1) = WitnessTable;
    *&v58 = v25;
    *(&v58 + 1) = v61;
    sub_1B7A55184(&v66, sub_1B7A6FF1C, v10, sub_1B7A6FF30, v19, sub_1B7A6FF98, v22, v60, &v77, v58, v59, v15, v16);
    v66 = v60;
    v67 = v25;
    *&v68 = v61;
    *(&v68 + 1) = v13;
    v69 = WitnessTable;
    *&v70 = v15;
    a1 = v62;
    *(&v70 + 1) = v16;
    v27 = type metadata accessor for _ResultView(0, &v66);
    v28 = swift_getWitnessTable();
    sub_1B7957EE0(&v77, v27, v28);
    v29 = *(*(v62 - 1) + 16);
    v29(v63, &v80, v62);
    v29(v63, &v80, v62);
    v29(v63, &v80, v62);
    v30 = *(*(v27 - 8) + 8);
    v30(&v77, v27);
    sub_1B7957EE0(&v66, v27, v28);
    v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA46788, &unk_1B7A9D6E0);
    v32 = sub_1B797EC34(&qword_1EBA46790, &qword_1EBA46788, &unk_1B7A9D6E0, &protocol conformance descriptor for _RequirementFailureView<A, B>);
    sub_1B79B5878(v63, v27, v31, v28, v32);

    v30(v63, v27);
    v30(&v66, v27);
  }

  else
  {
    *&v77 = 0xD000000000000022;
    *(&v77 + 1) = 0x80000001B7AC61C0;
    sub_1B7999DD8(0, v8, v9);
    v33 = sub_1B7A98080();
    v35 = v34;
    v37 = v36;
    v39 = v38;
    v40 = swift_allocObject();
    *(v40 + 16) = 0xD000000000000022;
    *(v40 + 24) = 0x80000001B7AC61C0;
    v66 = v33;
    v67 = v35;
    LOBYTE(v68) = v37 & 1;
    *(&v68 + 1) = v39;
    v69 = sub_1B797D598;
    *&v70 = v40;
    v41 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA47EA8, &qword_1B7AA17A8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA47E78, &qword_1B7AA16A0);
    v42 = sub_1B7A97590();
    v75 = a1[5];
    v76 = sub_1B797EC34(&qword_1EBA47E80, &qword_1EBA47E78, &qword_1B7AA16A0, MEMORY[0x1E6980A18]);
    v43 = swift_getWitnessTable();
    *&v77 = v41;
    *(&v77 + 1) = v42;
    v78 = *(a1 + 3);
    *v79 = v43;
    *&v79[8] = *(a1 + 3);
    v44 = type metadata accessor for _ResultView(0, &v77);
    v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA46788, &unk_1B7A9D6E0);
    v46 = swift_getWitnessTable();
    v47 = sub_1B797EC34(&qword_1EBA46790, &qword_1EBA46788, &unk_1B7A9D6E0, &protocol conformance descriptor for _RequirementFailureView<A, B>);
    sub_1B7959A28(&v66, v44, v45, v46, v47);
    sub_1B795A450(v66, v67, v68);
  }

  v48 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA47EA8, &qword_1B7AA17A8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA47E78, &qword_1B7AA16A0);
  v49 = sub_1B7A97590();
  v50 = a1[5];
  v51 = sub_1B797EC34(&qword_1EBA47E80, &qword_1EBA47E78, &qword_1B7AA16A0, MEMORY[0x1E6980A18]);
  v73 = v50;
  v74 = v51;
  v52 = swift_getWitnessTable();
  v66 = v48;
  v67 = v49;
  v68 = *(a1 + 3);
  v69 = v52;
  v70 = *(a1 + 3);
  type metadata accessor for _ResultView(255, &v66);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA46788, &unk_1B7A9D6E0);
  v53 = sub_1B7A97B40();
  v54 = swift_getWitnessTable();
  v55 = sub_1B797EC34(&qword_1EBA46790, &qword_1EBA46788, &unk_1B7A9D6E0, &protocol conformance descriptor for _RequirementFailureView<A, B>);
  v71 = v54;
  v72 = v55;
  v56 = swift_getWitnessTable();
  sub_1B7957EE0(&v77, v53, v56);
  return (*(*(v53 - 8) + 8))(&v77, v53);
}

uint64_t sub_1B7A6E978(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = &v18 - v13;
  (*(v15 + 32))(v12);
  sub_1B7957EE0(v10, a3, a6);
  v16 = *(v8 + 8);
  v16(v10, a3);
  sub_1B7957EE0(v14, a3, a6);
  return (v16)(v14, a3);
}

uint64_t sub_1B7A6EAAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v24 - v15;
  v18 = *(v17 + 48);
  v20 = _taskRetry(for:)(v19);
  v18(a1, v20, v21);

  sub_1B7957EE0(v13, a5, a8);
  v22 = *(v11 + 8);
  v22(v13, a5);
  sub_1B7957EE0(v16, a5, a8);
  return (v22)(v16, a5);
}

uint64_t sub_1B7A6EC0C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X5>, uint64_t a5@<X8>)
{
  v32 = a4;
  v34 = a5;
  v33 = sub_1B7A96C30();
  v31 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a3 - 8);
  v28 = a3;
  v29 = v10;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA47E78, &qword_1B7AA16A0);
  v14 = sub_1B7A97590();
  v30 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v17);
  v20 = &v27 - v19;
  (*(a2 + 16))(a1, v18);
  swift_getKeyPath();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B7A9A2D0();
  v21 = v28;
  v22 = v32;
  sub_1B7A98150();

  (*(v31 + 8))(v9, v33);
  (*(v29 + 8))(v13, v21);
  v23 = sub_1B797EC34(&qword_1EBA47E80, &qword_1EBA47E78, &qword_1B7AA16A0, MEMORY[0x1E6980A18]);
  v35 = v22;
  v36 = v23;
  WitnessTable = swift_getWitnessTable();
  sub_1B7957EE0(v16, v14, WitnessTable);
  v25 = *(v30 + 8);
  v25(v16, v14);
  sub_1B7957EE0(v20, v14, WitnessTable);
  return (v25)(v20, v14);
}

uint64_t _JetLocalizeDefaultWorking.body.getter()
{
  v0 = sub_1B7A97660();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B7A97960();
  if (qword_1EDC10A28 != -1)
  {
    swift_once();
  }

  v4 = qword_1EDC10A30;
  v5 = sub_1B7A98070();
  v7 = v6;
  v12[1] = v5;
  v12[2] = v6;
  v9 = v8 & 1;
  v13 = v8 & 1;
  v14 = v10;
  sub_1B7A97650();
  sub_1B7A984D0();
  (*(v1 + 8))(v3, v0);
  sub_1B795A450(v5, v7, v9);
}

uint64_t sub_1B7A6F138()
{
  v0 = sub_1B7A97660();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B7A97960();
  if (qword_1EDC10A28 != -1)
  {
    swift_once();
  }

  v4 = qword_1EDC10A30;
  v5 = sub_1B7A98070();
  v7 = v6;
  v12[1] = v5;
  v12[2] = v6;
  v9 = v8 & 1;
  v13 = v8 & 1;
  v14 = v10;
  sub_1B7A97650();
  sub_1B7A984D0();
  (*(v1 + 8))(v3, v0);
  sub_1B795A450(v5, v7, v9);
}

uint64_t _JetLocalizeDefaultFailed.body.getter@<X0>(uint64_t a1@<X8>)
{
  v23 = a1;
  v2 = sub_1B7A97BD0();
  v3 = *(v2 - 8);
  v21 = v2;
  v22 = v3;
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA49D80, &qword_1B7AA8558);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v20 - v8;
  v10 = *(v1 + 2);
  v11 = swift_allocObject();
  v12 = *v1;
  *(v11 + 16) = *v1;
  *(v11 + 32) = v10;
  v13 = v12;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA49D88, &unk_1B7AA8560);
  v14 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA48F98, &qword_1B7AA4A58);
  v15 = sub_1B7A97950();
  v16 = sub_1B797EC34(&qword_1EBA48FA0, &qword_1EBA48F98, &qword_1B7AA4A58, MEMORY[0x1E697D658]);
  v17 = sub_1B7A6FFB8(&qword_1EBA48628, MEMORY[0x1E697C4E8], MEMORY[0x1E697C4E0]);
  v24 = v14;
  v25 = v15;
  v26 = v16;
  v27 = v17;
  swift_getOpaqueTypeConformance2();
  sub_1B7A98730();
  sub_1B7A97BC0();
  sub_1B797EC34(qword_1EBA49D90, &qword_1EBA49D80, &qword_1B7AA8558, MEMORY[0x1E697D680]);
  sub_1B7A6FFB8(qword_1EBA47CD0, MEMORY[0x1E697C720], MEMORY[0x1E697C718]);
  v18 = v21;
  sub_1B7A98110();
  (*(v22 + 8))(v5, v18);
  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_1B7A6F65C(uint64_t a1, void (*a2)(uint64_t))
{
  sub_1B7A9A760();
  sub_1B7A9A750();
  sub_1B7A9A710();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  a2(isCurrentExecutor);
}

uint64_t sub_1B7A6F70C(double a1)
{
  v1 = sub_1B7A97950();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA48F98, &qword_1B7AA4A58);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v10 - v7;
  sub_1B7A9A760();
  sub_1B7A9A750();
  sub_1B7A9A710();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_1B7A98690();
  sub_1B7A97940();
  sub_1B797EC34(&qword_1EBA48FA0, &qword_1EBA48F98, &qword_1B7AA4A58, MEMORY[0x1E697D658]);
  sub_1B7A6FFB8(&qword_1EBA48628, MEMORY[0x1E697C4E8], MEMORY[0x1E697C4E0]);
  sub_1B7A980E0();
  (*(v2 + 8))(v4, v1);
  (*(v6 + 8))(v8, v5);
}

uint64_t sub_1B7A6F9C4@<X0>(uint64_t a1@<X8>)
{
  sub_1B7A9A760();
  sub_1B7A9A750();
  sub_1B7A9A710();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_1B7A97960();
  if (qword_1EDC10A28 != -1)
  {
    swift_once();
  }

  v2 = qword_1EDC10A30;
  v3 = sub_1B7A98070();
  v5 = v4;
  v7 = v6;
  v9 = v8;

  *a1 = v3;
  *(a1 + 8) = v5;
  *(a1 + 16) = v7 & 1;
  *(a1 + 24) = v9;
  return result;
}

uint64_t sub_1B7A6FB20@<X0>(uint64_t *a1@<X8>)
{
  sub_1B7A9A760();
  sub_1B7A9A750();
  sub_1B7A9A710();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v2 = sub_1B7A985E0();

  *a1 = v2;
  return result;
}

uint64_t sub_1B7A6FBD4@<X0>(uint64_t a1@<X8>)
{
  v23 = a1;
  v2 = sub_1B7A97BD0();
  v3 = *(v2 - 8);
  v21 = v2;
  v22 = v3;
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA49D80, &qword_1B7AA8558);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v20 - v8;
  v10 = *(v1 + 2);
  v11 = swift_allocObject();
  v12 = *v1;
  *(v11 + 16) = *v1;
  *(v11 + 32) = v10;
  v13 = v12;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA49D88, &unk_1B7AA8560);
  v14 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA48F98, &qword_1B7AA4A58);
  v15 = sub_1B7A97950();
  v16 = sub_1B797EC34(&qword_1EBA48FA0, &qword_1EBA48F98, &qword_1B7AA4A58, MEMORY[0x1E697D658]);
  v17 = sub_1B7A6FFB8(&qword_1EBA48628, MEMORY[0x1E697C4E8], MEMORY[0x1E697C4E0]);
  v24 = v14;
  v25 = v15;
  v26 = v16;
  v27 = v17;
  swift_getOpaqueTypeConformance2();
  sub_1B7A98730();
  sub_1B7A97BC0();
  sub_1B797EC34(qword_1EBA49D90, &qword_1EBA49D80, &qword_1B7AA8558, MEMORY[0x1E697D680]);
  sub_1B7A6FFB8(qword_1EBA47CD0, MEMORY[0x1E697C720], MEMORY[0x1E697C718]);
  v18 = v21;
  sub_1B7A98110();
  (*(v22 + 8))(v5, v18);
  return (*(v7 + 8))(v9, v6);
}

uint64_t objectdestroy_6Tm_0()
{
  j__swift_release(*(v0 + 64));

  return swift_deallocObject();
}

uint64_t sub_1B7A6FFB8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1B7A70084(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 __swift_memcpy64_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1B7A700D4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_1B7A7011C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t objectdestroy_15Tm_1()
{

  return swift_deallocObject();
}

__n128 ActionButton.init(role:action:label:)@<Q0>(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  *(a7 + 80) = swift_getKeyPath();
  *(a7 + 120) = 0;
  v15 = type metadata accessor for ActionButton(0, a5, a6, v14);
  v16 = *(v15 + 44);
  *(a7 + v16) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA45C98, &unk_1B7AA0460);
  swift_storeEnumTagMultiPayload();
  v17 = a7 + *(v15 + 48);
  *v17 = swift_getKeyPath();
  *(v17 + 8) = 0;
  *(v17 + 16) = 0;
  v19 = type metadata accessor for CustomLabelButtonContent(0, a5, a6, v18);
  *(a7 + 24) = v19;
  *(a7 + 32) = swift_getWitnessTable();
  boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(a7);
  sub_1B7A71578(a1, boxed_opaque_existential_1Tm);
  v21 = (boxed_opaque_existential_1Tm + *(v19 + 36));
  *v21 = a3;
  v21[1] = a4;
  *(a7 + 72) = *(a2 + 4);
  v23 = *a2;
  result = a2[1];
  *(a7 + 56) = result;
  *(a7 + 40) = v23;
  return result;
}

uint64_t sub_1B7A7036C(uint64_t a1)
{
  sub_1B7957820(a1, v6, &qword_1EBA47828, &qword_1B7AA0240);
  v1 = sub_1B7957820(v6, &v5, &qword_1EBA47828, &qword_1B7AA0240);
  sub_1B7A42B54(v1, v2, v3);
  sub_1B7A978A0();
  return sub_1B7957888(v6, &qword_1EBA47828, &qword_1B7AA0240);
}

__n128 ActionButton.init<>(role:action:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *(a3 + 80) = swift_getKeyPath();
  *(a3 + 120) = 0;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA49E18, &qword_1B7AA8840);
  v7 = *(v6 + 44);
  *(a3 + v7) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA45C98, &unk_1B7AA0460);
  swift_storeEnumTagMultiPayload();
  v8 = a3 + *(v6 + 48);
  *v8 = swift_getKeyPath();
  *(v8 + 8) = 0;
  *(v8 + 16) = 0;
  *(a3 + 24) = type metadata accessor for DefaultLabelButtonContent(0);
  *(a3 + 32) = sub_1B7A7275C(&qword_1EBA49E20, type metadata accessor for DefaultLabelButtonContent, &unk_1B7AA89C0);
  boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(a3);
  v10 = sub_1B7A96FC0();
  (*(*(v10 - 8) + 32))(boxed_opaque_existential_1Tm, a1, v10);
  result = *a2;
  v12 = *(a2 + 16);
  *(a3 + 40) = *a2;
  *(a3 + 56) = v12;
  *(a3 + 72) = *(a2 + 32);
  return result;
}

__n128 ActionButton.init<A>(_:role:action:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __int128 *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v12 = *(a4 - 8);
  v13 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = a4;
  *(v14 + 24) = a5;
  (*(v12 + 32))(v14 + v13, a1, a4);
  *(a6 + 80) = swift_getKeyPath();
  *(a6 + 120) = 0;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA49E28, &qword_1B7AA8848);
  v16 = *(v15 + 44);
  *(a6 + v16) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA45C98, &unk_1B7AA0460);
  swift_storeEnumTagMultiPayload();
  v17 = a6 + *(v15 + 48);
  *v17 = swift_getKeyPath();
  *(v17 + 8) = 0;
  *(v17 + 16) = 0;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA49E30, &unk_1B7AA8850);
  *(a6 + 24) = v18;
  *(a6 + 32) = sub_1B797EC34(&qword_1EBA49E38, &qword_1EBA49E30, &unk_1B7AA8850, &unk_1B7AA89DC);
  boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(a6);
  sub_1B7A71578(a2, boxed_opaque_existential_1Tm);
  v20 = (boxed_opaque_existential_1Tm + *(v18 + 36));
  *v20 = sub_1B7A7153C;
  v20[1] = v14;
  *(a6 + 72) = *(a3 + 4);
  v22 = *a3;
  result = a3[1];
  *(a6 + 56) = result;
  *(a6 + 40) = v22;
  return result;
}

uint64_t sub_1B7A70760@<X0>(uint64_t a1@<X0>, uint64_t a4@<X8>)
{
  v5 = MEMORY[0x1EEE9AC00](a1);
  (*(v7 + 16))(&v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v5);
  result = sub_1B7A98080();
  *a4 = result;
  *(a4 + 8) = v9;
  *(a4 + 16) = v10 & 1;
  *(a4 + 24) = v11;
  return result;
}

__n128 ActionButton.init<>(_:role:action:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, __int128 *a6@<X5>, uint64_t a7@<X8>)
{
  v14 = swift_allocObject();
  *(v14 + 16) = a1;
  *(v14 + 24) = a2;
  *(v14 + 32) = a3;
  *(v14 + 40) = a4;
  *(a7 + 80) = swift_getKeyPath();
  *(a7 + 120) = 0;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA49E28, &qword_1B7AA8848);
  v16 = *(v15 + 44);
  *(a7 + v16) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA45C98, &unk_1B7AA0460);
  swift_storeEnumTagMultiPayload();
  v17 = a7 + *(v15 + 48);
  *v17 = swift_getKeyPath();
  *(v17 + 8) = 0;
  *(v17 + 16) = 0;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA49E30, &unk_1B7AA8850);
  *(a7 + 24) = v18;
  *(a7 + 32) = sub_1B797EC34(&qword_1EBA49E38, &qword_1EBA49E30, &unk_1B7AA8850, &unk_1B7AA89DC);
  boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(a7);
  sub_1B7A71578(a5, boxed_opaque_existential_1Tm);
  v20 = (boxed_opaque_existential_1Tm + *(v18 + 36));
  *v20 = sub_1B7A715E8;
  v20[1] = v14;
  *(a7 + 72) = *(a6 + 4);
  v22 = *a6;
  result = a6[1];
  *(a7 + 56) = result;
  *(a7 + 40) = v22;
  return result;
}

uint64_t sub_1B7A709C8@<X0>(uint64_t a5@<X8>)
{

  result = sub_1B7A98070();
  *a5 = result;
  *(a5 + 8) = v7;
  *(a5 + 16) = v8 & 1;
  *(a5 + 24) = v9;
  return result;
}

__n128 ActionButton.init<>(_:role:action:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __int128 *a3@<X2>, uint64_t a4@<X8>)
{
  v8 = swift_allocObject();
  *(v8 + 16) = *a1;
  *(v8 + 32) = *(a1 + 16);
  *(a4 + 80) = swift_getKeyPath();
  *(a4 + 120) = 0;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA49E40, &qword_1B7AA8860);
  v10 = *(v9 + 44);
  *(a4 + v10) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA45C98, &unk_1B7AA0460);
  swift_storeEnumTagMultiPayload();
  v11 = a4 + *(v9 + 48);
  *v11 = swift_getKeyPath();
  *(v11 + 8) = 0;
  *(v11 + 16) = 0;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA49E48, &qword_1B7AA8868);
  *(a4 + 24) = v12;
  *(a4 + 32) = sub_1B797EC34(qword_1EBA49E50, &qword_1EBA49E48, &qword_1B7AA8868, &unk_1B7AA89DC);
  boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(a4);
  sub_1B7A71578(a2, boxed_opaque_existential_1Tm);
  v14 = (boxed_opaque_existential_1Tm + *(v12 + 36));
  *v14 = sub_1B7A715F8;
  v14[1] = v8;
  *(a4 + 72) = *(a3 + 4);
  v16 = *a3;
  result = a3[1];
  *(a4 + 56) = result;
  *(a4 + 40) = v16;
  return result;
}

double sub_1B7A70BE4@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = a1[2];
  *a2 = swift_getKeyPath();
  *(a2 + 8) = 0;
  *(a2 + 16) = v4;
  *(a2 + 24) = v3;
  *(a2 + 32) = v5;

  return result;
}

__n128 ActionButton.init<>(_:localizer:role:action:)@<Q0>(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, __int128 *a4@<X3>, uint64_t a5@<X8>)
{
  v10 = swift_allocObject();
  *(v10 + 16) = *a1;
  *(v10 + 32) = *(a1 + 16);
  sub_1B795C1E4(a2, v10 + 40);
  *(a5 + 80) = swift_getKeyPath();
  *(a5 + 120) = 0;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA49E28, &qword_1B7AA8848);
  v12 = *(v11 + 44);
  *(a5 + v12) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA45C98, &unk_1B7AA0460);
  swift_storeEnumTagMultiPayload();
  v13 = a5 + *(v11 + 48);
  *v13 = swift_getKeyPath();
  *(v13 + 8) = 0;
  *(v13 + 16) = 0;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA49E30, &unk_1B7AA8850);
  *(a5 + 24) = v14;
  *(a5 + 32) = sub_1B797EC34(&qword_1EBA49E38, &qword_1EBA49E30, &unk_1B7AA8850, &unk_1B7AA89DC);
  boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(a5);
  sub_1B7A71578(a3, boxed_opaque_existential_1Tm);
  v16 = (boxed_opaque_existential_1Tm + *(v14 + 36));
  *v16 = sub_1B7A71600;
  v16[1] = v10;
  *(a5 + 72) = *(a4 + 4);
  v18 = *a4;
  result = a4[1];
  *(a5 + 56) = result;
  *(a5 + 40) = v18;
  return result;
}

uint64_t sub_1B7A70DE0@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1B7A97880();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_1B7957820(v1 + 80, v10, &qword_1EBA45E08, &unk_1B7AA71C0);
  if (v12 == 1)
  {
    v8 = v10[1];
    *a1 = v10[0];
    *(a1 + 16) = v8;
    *(a1 + 32) = v11;
  }

  else
  {
    sub_1B7A9AA10();
    v9 = sub_1B7A97E70();
    sub_1B7A96D30();

    sub_1B7A97870();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }

  return result;
}

uint64_t sub_1B7A70F50@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = sub_1B7A97880();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA45C98, &unk_1B7AA0460);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v15 - v10;
  sub_1B7957820(v2 + *(a1 + 44), &v15 - v10, &qword_1EBA45C98, &unk_1B7AA0460);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = sub_1B7A99900();
    return (*(*(v12 - 8) + 32))(a2, v11, v12);
  }

  else
  {
    sub_1B7A9AA10();
    v14 = sub_1B7A97E70();
    sub_1B7A96D30();

    sub_1B7A97870();
    swift_getAtKeyPath();

    return (*(v6 + 8))(v8, v5);
  }
}

uint64_t (*sub_1B7A71154(uint64_t a1))()
{
  v3 = sub_1B7A97880();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = (v1 + *(a1 + 48));
  v8 = *v7;
  LODWORD(v7) = *(v7 + 16);
  v9 = v8;
  v13 = v8;
  if (v7 == 1)
  {
    sub_1B7974B84(v8, *(&v8 + 1));
    v10 = v13;
    if (v13)
    {
LABEL_3:
      *(swift_allocObject() + 16) = v10;
      return sub_1B7A72804;
    }
  }

  else
  {

    sub_1B7A9AA10();
    v12 = sub_1B7A97E70();
    sub_1B7A96D30();

    sub_1B7A97870();
    swift_getAtKeyPath();
    sub_1B79D7360(v9, *(&v13 + 1), 0);
    (*(v4 + 8))(v6, v3);
    v10 = v14;
    if (v14)
    {
      goto LABEL_3;
    }
  }

  return 0;
}

uint64_t (*sub_1B7A7133C(uint64_t a1, uint64_t a2, uint64_t a3))()
{
  sub_1B7A7282C(a1, a2, a3);
  sub_1B7A97890();
  if (!v5)
  {
    return 0;
  }

  v3 = swift_allocObject();
  *(v3 + 16) = v5;
  *(v3 + 24) = v6;
  return sub_1B7A72898;
}

double sub_1B7A713C4@<D0>(_OWORD *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>, uint64_t a4@<X2>)
{
  sub_1B7A7282C(a2, a3, a4);
  sub_1B7A97890();
  result = *&v6;
  *a1 = v6;
  return result;
}

uint64_t sub_1B7A71414(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*a1)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = v1;
    *(v3 + 24) = v2;
    v4 = swift_allocObject();
    *(v4 + 16) = sub_1B7A72898;
    *(v4 + 24) = v3;
  }

  v5 = sub_1B7974B84(v1, v2);
  sub_1B7A7282C(v5, v6, v7);
  return sub_1B7A978A0();
}

uint64_t type metadata accessor for DefaultLabelButtonContent(uint64_t a1)
{
  result = qword_1EBA49F08;
  if (!qword_1EBA49F08)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1B7A71578(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA47018, &qword_1B7A9EFA0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B7A7160C(uint64_t a1)
{
  v3 = sub_1B7A99900();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = (&v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1B7957820(v1 + 40, &v18, &qword_1EBA47020, &qword_1B7A9EFA8);
  if (!v19)
  {
    return sub_1B7957888(&v18, &qword_1EBA47020, &qword_1B7A9EFA8);
  }

  sub_1B795C1E4(&v18, v21);
  sub_1B7A70DE0(&v16);
  if (v17)
  {
    sub_1B795C1E4(&v16, &v18);
    v7 = sub_1B7A71154(a1);
    if (v7)
    {
      v9 = v7;
      v10 = v8;
      (v7)(v21);
      sub_1B7974C44(v9, v10);
    }

    v11 = v19;
    v12 = v20;
    __swift_project_boxed_opaque_existential_1(&v18, v19);
    sub_1B7A70F50(a1, v6);
    (*(v12 + 24))(v21, v6, v11, v12);
    (*(v4 + 8))(v6, v3);
    __swift_destroy_boxed_opaque_existential_1(v21);
    v13 = &v18;
  }

  else
  {
    sub_1B7957888(&v16, &qword_1EBA47828, &qword_1B7AA0240);
    sub_1B7A99720();
    v13 = v21;
  }

  return __swift_destroy_boxed_opaque_existential_1(v13);
}

uint64_t ActionButton.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a2;
  v3 = *(a1 + 24);
  v22 = *(a1 + 16);
  v4 = sub_1B7A98770();
  v23 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v21 - v5;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA46DE0, &qword_1B7A9E760);
  v7 = sub_1B7A97590();
  v24 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v21 - v11;
  v13 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  v15 = sub_1B7A71B64(v2, v22, v3, v14);
  (*(v13 + 24))(v15);

  sub_1B7957820((v2 + 5), v28, &qword_1EBA47020, &qword_1B7A9EFA8);
  sub_1B7957888(v28, &qword_1EBA47020, &qword_1B7A9EFA8);
  WitnessTable = swift_getWitnessTable();
  sub_1B7A98480();
  (*(v23 + 8))(v6, v4);
  v17 = sub_1B797EC34(&qword_1EBA46DD8, &qword_1EBA46DE0, &qword_1B7A9E760, MEMORY[0x1E6980B30]);
  v26 = WitnessTable;
  v27 = v17;
  v18 = swift_getWitnessTable();
  sub_1B7957EE0(v9, v7, v18);
  v19 = *(v24 + 8);
  v19(v9, v7);
  sub_1B7957EE0(v12, v7, v18);
  return (v19)(v12, v7);
}

uint64_t (*sub_1B7A71B64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4))(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for ActionButton(0, a2, a3, a4);
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v15 - v10;
  (*(v8 + 16))(&v15 - v10, a1, v7, v9);
  v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = a2;
  *(v13 + 24) = a3;
  (*(v8 + 32))(v13 + v12, v11, v7);
  return sub_1B7A727A4;
}

uint64_t sub_1B7A71CA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA47018, &qword_1B7A9EFA0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  sub_1B7957820(v3, &v7 - v5, &qword_1EBA47018, &qword_1B7A9EFA0);

  return sub_1B7A98720();
}

uint64_t sub_1B7A71D90(uint64_t a1, uint64_t a2)
{
  v5 = sub_1B7A96FC0();
  v6 = MEMORY[0x1EEE9AC00](v5);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v8, v2, v6);

  return MEMORY[0x1B8CA9980](v8, a1, a2);
}

uint64_t View.beforePerformingAction(perform:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_getKeyPath();
  if (a1)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = a1;
    *(v6 + 24) = a2;
    v7 = sub_1B79884D4;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  sub_1B7974B84(a1, a2);
  sub_1B7A98150();

  return sub_1B7974C44(v7, v6);
}

double ActionButton.init(role:action:label:)@<D0>(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  sub_1B795C1E4(a2, v14);
  *&result = ActionButton.init(role:action:label:)(a1, v14, a3, a4, a5, a6, a7).n128_u64[0];
  return result;
}

uint64_t ActionButton.init<A>(_:role:action:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v20 = a5;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA47018, &qword_1B7A9EFA0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v20 - v12;
  v14 = *(a4 - 8);
  v16 = MEMORY[0x1EEE9AC00](v15);
  v18 = &v20 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v14 + 16))(v18, a1, a4, v16);
  sub_1B7957820(a2, v13, &qword_1EBA47018, &qword_1B7A9EFA0);
  sub_1B7999E90(a3, v21);
  ActionButton.init<A>(_:role:action:)(v18, v13, v21, a4, v20, a6);
  __swift_destroy_boxed_opaque_existential_1(a3);
  sub_1B7957888(a2, &qword_1EBA47018, &qword_1B7A9EFA0);
  return (*(v14 + 8))(a1, a4);
}

uint64_t ActionButton.init<>(_:role:action:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, __int128 *a6@<X5>, uint64_t a7@<X8>)
{
  sub_1B795C1E4(a6, a7 + 40);
  v13 = swift_allocObject();
  *(v13 + 16) = a1;
  *(v13 + 24) = a2;
  *(v13 + 32) = a3;
  *(v13 + 40) = a4;
  *(a7 + 80) = swift_getKeyPath();
  *(a7 + 120) = 0;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA49E28, &qword_1B7AA8848);
  v15 = *(v14 + 44);
  *(a7 + v15) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA45C98, &unk_1B7AA0460);
  swift_storeEnumTagMultiPayload();
  v16 = a7 + *(v14 + 48);
  *v16 = swift_getKeyPath();
  *(v16 + 8) = 0;
  *(v16 + 16) = 0;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA49E30, &unk_1B7AA8850);
  *(a7 + 24) = v17;
  *(a7 + 32) = sub_1B797EC34(&qword_1EBA49E38, &qword_1EBA49E30, &unk_1B7AA8850, &unk_1B7AA89DC);
  boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(a7);
  result = sub_1B7A71578(a5, boxed_opaque_existential_1Tm);
  v20 = (boxed_opaque_existential_1Tm + *(v17 + 36));
  *v20 = sub_1B7A72890;
  v20[1] = v13;
  return result;
}

uint64_t objectdestroy_9Tm()
{

  return swift_deallocObject();
}

void sub_1B7A72384(uint64_t a1)
{
  swift_getExtendedExistentialTypeMetadata_unique();
  sub_1B7A72540(319, &qword_1EBA49ED8, &qword_1EBA49EE0, &unk_1B7AA8910, MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    sub_1B7A72540(319, qword_1EDC0EC28, &qword_1EBA47828, &qword_1B7AA0240, MEMORY[0x1E697DCC0]);
    if (v2 <= 0x3F)
    {
      sub_1B7956BC4(319, &qword_1EDC10148, MEMORY[0x1E69AB2B8], MEMORY[0x1E697DCC0]);
      if (v3 <= 0x3F)
      {
        sub_1B7A72540(319, &qword_1EBA49EE8, &qword_1EBA49EF0, qword_1B7AA8920, MEMORY[0x1E697DCC0]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1B7A72540(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_1B7A725CC(uint64_t a1)
{
  result = sub_1B7A96FC0();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_1B7A72638(uint64_t a1)
{
  sub_1B7956BC4(319, &qword_1EDC10160, MEMORY[0x1E697BDB0], MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    sub_1B7958DD8();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1B7A7275C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1B7A7282C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBA49FA0;
  if (!qword_1EBA49FA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA49FA0);
  }

  return result;
}

uint64_t View.onRawDeepLink(action:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8[0] = a1;
  v8[1] = a2;
  KeyPath = swift_getKeyPath();
  v10 = 0;

  MEMORY[0x1B8CA96D0](v8, a3, &type metadata for OnRawDeepLinkViewModifier, a4);
  v6 = KeyPath;

  return j__swift_release(v6);
}

unint64_t sub_1B7A72938(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBA49FA8;
  if (!qword_1EBA49FA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA49FA8);
  }

  return result;
}

uint64_t sub_1B7A7298C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 25))
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

uint64_t sub_1B7A729D4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 25) = 1;
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

    *(result + 25) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1B7A72A44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v35 = a1;
  v39 = a2;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA49FB0, &qword_1B7AA8BA0);
  MEMORY[0x1EEE9AC00](v38);
  v34 = &v33 - v3;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA49FB8, &qword_1B7AA8BA8);
  MEMORY[0x1EEE9AC00](v36);
  v5 = &v33 - v4;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA49FC0, &qword_1B7AA8BB0);
  MEMORY[0x1EEE9AC00](v37);
  v7 = &v33 - v6;
  v8 = sub_1B7A97880();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v2;
  v13 = v2[1];
  v14 = v2[2];
  v15 = *(v2 + 24);
  if (v15 != 1)
  {
    j__swift_retain(v14);
    sub_1B7A9AA10();
    v23 = sub_1B7A97E70();
    v33 = v7;
    v24 = v13;
    v25 = v5;
    v26 = v12;
    v27 = v23;
    sub_1B7A96D30();

    v12 = v26;
    v5 = v25;
    v13 = v24;
    v7 = v33;
    sub_1B7A97870();
    swift_getAtKeyPath();
    j__swift_release(v14);
    (*(v9 + 8))(v11, v8);
    v16 = v40;
    if (v40)
    {
      goto LABEL_3;
    }

LABEL_5:
    v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA49FC8, &qword_1B7AA8BB8);
    v29 = v34;
    (*(*(v28 - 8) + 16))(v34, v35, v28);
    v30 = swift_allocObject();
    *(v30 + 16) = 0xD000000000000073;
    *(v30 + 24) = 0x80000001B7AC8180;
    v31 = (v29 + *(v38 + 52));
    *v31 = sub_1B797D598;
    v31[1] = v30;
    sub_1B7957820(v29, v5, &qword_1EBA49FB0, &qword_1B7AA8BA0);
    swift_storeEnumTagMultiPayload();
    sub_1B7A73870();
    sub_1B797EC34(&qword_1EBA49FE0, &qword_1EBA49FB0, &qword_1B7AA8BA0, &protocol conformance descriptor for _RequirementFailureView<A, B>);
    sub_1B7A97B30();
    v20 = v29;
    v21 = &qword_1EBA49FB0;
    v22 = &qword_1B7AA8BA0;
    return sub_1B7957888(v20, v21, v22);
  }

  j__swift_retain(v14);
  v16 = v14;
  if (!v14)
  {
    goto LABEL_5;
  }

LABEL_3:
  v17 = swift_allocObject();
  *(v17 + 16) = v16;
  *(v17 + 24) = v12;
  *(v17 + 32) = v13;
  *(v17 + 40) = v14;
  *(v17 + 48) = v15;
  v18 = &v7[*(v37 + 36)];
  sub_1B7A97360();

  j__swift_retain(v14);
  sub_1B7A9A780();
  *v18 = &unk_1B7AA8BC8;
  *(v18 + 1) = v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA49FC8, &qword_1B7AA8BB8);
  (*(*(v19 - 8) + 16))(v7, v35, v19);
  sub_1B7957820(v7, v5, &qword_1EBA49FC0, &qword_1B7AA8BB0);
  swift_storeEnumTagMultiPayload();
  sub_1B7A73870();
  sub_1B797EC34(&qword_1EBA49FE0, &qword_1EBA49FB0, &qword_1B7AA8BA0, &protocol conformance descriptor for _RequirementFailureView<A, B>);
  sub_1B7A97B30();

  v20 = v7;
  v21 = &qword_1EBA49FC0;
  v22 = &qword_1B7AA8BB0;
  return sub_1B7957888(v20, v21, v22);
}

uint64_t sub_1B7A72F5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[6] = a2;
  v3[7] = a3;
  v3[5] = a1;
  v4 = sub_1B7A9A1C0();
  v3[8] = v4;
  v3[9] = *(v4 - 8);
  v3[10] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA49FE8, &unk_1B7AA8BD0);
  v3[11] = swift_task_alloc();
  v3[12] = sub_1B7A9A760();
  v3[13] = sub_1B7A9A750();
  v6 = sub_1B7A9A710();
  v3[14] = v6;
  v3[15] = v5;

  return MEMORY[0x1EEE6DFA0](sub_1B7A73090, v6, v5);
}

uint64_t sub_1B7A73090()
{
  v0[3] = v0[5];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA47BC8, &qword_1B7AA0D40);
  sub_1B797EC34(&qword_1EBA49FF0, &qword_1EBA47BC8, &qword_1B7AA0D40, MEMORY[0x1E69AB058]);
  sub_1B7A9A830();
  v0[16] = sub_1B7A9A750();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA49FF8, &unk_1B7AA8BE0);
  v2 = sub_1B797EC34(&qword_1EBA4A000, &qword_1EBA49FF8, &unk_1B7AA8BE0, MEMORY[0x1E69AB050]);
  v3 = swift_task_alloc();
  v0[17] = v3;
  *v3 = v0;
  v3[1] = sub_1B7A731FC;
  v4 = v0[11];

  return MEMORY[0x1EEE6D8C8](v4, v1, v2);
}

uint64_t sub_1B7A731FC()
{
  v2 = *v1;
  *(*v1 + 144) = v0;

  v3 = *(v2 + 128);
  if (v0)
  {
    if (v3)
    {
      swift_getObjectType();
      v4 = sub_1B7A9A710();
      v6 = v5;
    }

    else
    {
      v4 = 0;
      v6 = 0;
    }

    v7 = sub_1B7A735A4;
  }

  else
  {
    if (v3)
    {
      swift_getObjectType();
      v4 = sub_1B7A9A710();
      v6 = v8;
    }

    else
    {
      v4 = 0;
      v6 = 0;
    }

    v7 = sub_1B7A73394;
  }

  return MEMORY[0x1EEE6DFA0](v7, v4, v6);
}

uint64_t sub_1B7A73394()
{

  v1 = *(v0 + 112);
  v2 = *(v0 + 120);

  return MEMORY[0x1EEE6DFA0](sub_1B7A733F8, v1, v2);
}

uint64_t sub_1B7A733F8()
{
  v1 = v0[11];
  v2 = v0[8];
  v3 = v0[9];
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {

    v4 = v0[1];

    return v4();
  }

  else
  {
    v6 = v0[6];
    (*(v3 + 32))(v0[10], v1, v2);
    v9 = (v6 + *v6);
    v7 = swift_task_alloc();
    v0[19] = v7;
    *v7 = v0;
    v7[1] = sub_1B7A73630;
    v8 = v0[10];

    return v9(v8);
  }
}

uint64_t sub_1B7A735A4()
{
  *(v0 + 32) = *(v0 + 144);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA46B60, &qword_1B7AA0260);
  v1 = MEMORY[0x1E69E73E0];
  v2 = swift_dynamicCast();
  v3 = MEMORY[0x1E69E7410];

  return MEMORY[0x1EEE6C240](v2, v1, v3);
}

uint64_t sub_1B7A73630()
{
  v1 = *v0;

  v2 = *(v1 + 120);
  v3 = *(v1 + 112);

  return MEMORY[0x1EEE6DFA0](sub_1B7A73750, v3, v2);
}

uint64_t sub_1B7A73750()
{
  (*(v0[9] + 8))(v0[10], v0[8]);
  v0[16] = sub_1B7A9A750();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA49FF8, &unk_1B7AA8BE0);
  v2 = sub_1B797EC34(&qword_1EBA4A000, &qword_1EBA49FF8, &unk_1B7AA8BE0, MEMORY[0x1E69AB050]);
  v3 = swift_task_alloc();
  v0[17] = v3;
  *v3 = v0;
  v3[1] = sub_1B7A731FC;
  v4 = v0[11];

  return MEMORY[0x1EEE6D8C8](v4, v1, v2);
}

unint64_t sub_1B7A73870()
{
  result = qword_1EBA49FD0;
  if (!qword_1EBA49FD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA49FC0, &qword_1B7AA8BB0);
    sub_1B797EC34(&qword_1EBA49FD8, &qword_1EBA49FC8, &qword_1B7AA8BB8, MEMORY[0x1E697FDF8]);
    sub_1B7A73928();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA49FD0);
  }

  return result;
}

unint64_t sub_1B7A73928()
{
  result = qword_1EDC10A70;
  if (!qword_1EDC10A70)
  {
    sub_1B7A97360();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC10A70);
  }

  return result;
}

uint64_t sub_1B7A73980()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1B798D338;

  return sub_1B7A72F5C(v2, v3, v4);
}

unint64_t sub_1B7A73A3C()
{
  result = qword_1EBA4A008;
  if (!qword_1EBA4A008)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_1EBA4A010, &qword_1B7AA8BF0);
    sub_1B7A73870();
    sub_1B797EC34(&qword_1EBA49FE0, &qword_1EBA49FB0, &qword_1B7AA8BA0, &protocol conformance descriptor for _RequirementFailureView<A, B>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA4A008);
  }

  return result;
}

void sub_1B7A73AF4(uint64_t a1)
{
  sub_1B7A73FBC();
  if (v1 <= 0x3F)
  {
    sub_1B7A9AB60();
    if (v2 <= 0x3F)
    {
      sub_1B7958DD8();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1B7A73B9C(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  if (v5)
  {
    v6 = v5 - 1;
  }

  else
  {
    v6 = 0;
  }

  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = v6;
  }

  v8 = *(v4 + 80);
  v9 = 7;
  if (!v5)
  {
    v9 = 8;
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_33;
  }

  v10 = ((((((v9 + *(*(*(a3 + 16) - 8) + 64) + ((v8 + 17) & ~v8)) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
  v11 = a2 - v7;
  v12 = v10 & 0xFFFFFFF8;
  if ((v10 & 0xFFFFFFF8) != 0)
  {
    v13 = 2;
  }

  else
  {
    v13 = v11 + 1;
  }

  if (v13 >= 0x10000)
  {
    v14 = 4;
  }

  else
  {
    v14 = 2;
  }

  if (v13 < 0x100)
  {
    v14 = 1;
  }

  if (v13 >= 2)
  {
    v15 = v14;
  }

  else
  {
    v15 = 0;
  }

  if (v15 > 1)
  {
    if (v15 == 2)
    {
      v16 = *(a1 + v10);
      if (!v16)
      {
        goto LABEL_33;
      }
    }

    else
    {
      v16 = *(a1 + v10);
      if (!v16)
      {
        goto LABEL_33;
      }
    }
  }

  else if (!v15 || (v16 = *(a1 + v10)) == 0)
  {
LABEL_33:
    if ((v6 & 0x80000000) != 0)
    {
      v20 = (*(v4 + 48))((a1 + v8 + 17) & ~v8);
      if (v20 >= 2)
      {
        return v20 - 1;
      }

      else
      {
        return 0;
      }
    }

    else
    {
      v19 = *(a1 + 8);
      if (v19 >= 0xFFFFFFFF)
      {
        LODWORD(v19) = -1;
      }

      return (v19 + 1);
    }
  }

  v18 = v16 - 1;
  if (v12)
  {
    v18 = 0;
    LODWORD(v12) = *a1;
  }

  return v7 + (v12 | v18) + 1;
}

void sub_1B7A73D2C(void *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = 0;
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  v8 = v7 - 1;
  if (!v7)
  {
    v8 = 0;
  }

  if (v8 <= 0x7FFFFFFF)
  {
    v9 = 0x7FFFFFFF;
  }

  else
  {
    v9 = v8;
  }

  v10 = *(v6 + 80);
  v11 = *(*(*(a4 + 16) - 8) + 64);
  if (!v7)
  {
    ++v11;
  }

  v12 = ((((((v11 + ((v10 + 17) & ~v10) + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v9 < a3)
  {
    v13 = a3 - v9;
    if (((((((v11 + ((v10 + 17) & ~v10) + 7) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v14 = v13 + 1;
    }

    else
    {
      v14 = 2;
    }

    if (v14 >= 0x10000)
    {
      v15 = 4;
    }

    else
    {
      v15 = 2;
    }

    if (v14 < 0x100)
    {
      v15 = 1;
    }

    if (v14 >= 2)
    {
      v5 = v15;
    }

    else
    {
      v5 = 0;
    }
  }

  if (a2 > v9)
  {
    if (((((((v11 + ((v10 + 17) & ~v10) + 7) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v16 = a2 - v9;
    }

    else
    {
      v16 = 1;
    }

    if (((((((v11 + ((v10 + 17) & ~v10) + 7) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) != 0xFFFFFFF0)
    {
      v17 = ~v9 + a2;
      v18 = a1;
      bzero(a1, v12);
      a1 = v18;
      *v18 = v17;
    }

    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(a1 + v12) = v16;
      }

      else
      {
        *(a1 + v12) = v16;
      }
    }

    else if (v5)
    {
      *(a1 + v12) = v16;
    }

    return;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(a1 + v12) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_38;
    }

    *(a1 + v12) = 0;
LABEL_37:
    if (!a2)
    {
      return;
    }

    goto LABEL_38;
  }

  if (!v5)
  {
    goto LABEL_37;
  }

  *(a1 + v12) = 0;
  if (!a2)
  {
    return;
  }

LABEL_38:
  if ((v8 & 0x80000000) != 0)
  {
    v19 = ((a1 + v10 + 17) & ~v10);
    if (v8 >= a2)
    {
      v23 = *(v6 + 56);
      v24 = a2 + 1;
      v25 = (a1 + v10 + 17) & ~v10;

      v23(v25, v24);
    }

    else
    {
      if (v11 <= 3)
      {
        v20 = ~(-1 << (8 * v11));
      }

      else
      {
        v20 = -1;
      }

      if (v11)
      {
        v21 = v20 & (~v8 + a2);
        if (v11 <= 3)
        {
          v22 = v11;
        }

        else
        {
          v22 = 4;
        }

        bzero(v19, v11);
        if (v22 > 2)
        {
          if (v22 == 3)
          {
            *v19 = v21;
            v19[2] = BYTE2(v21);
          }

          else
          {
            *v19 = v21;
          }
        }

        else if (v22 == 1)
        {
          *v19 = v21;
        }

        else
        {
          *v19 = v21;
        }
      }
    }
  }

  else if ((a2 & 0x80000000) != 0)
  {
    *(a1 + 16) = 0;
    *a1 = a2 & 0x7FFFFFFF;
    a1[1] = 0;
  }

  else
  {
    a1[1] = a2 - 1;
  }
}

void sub_1B7A73FBC()
{
  if (!qword_1EBA4A098)
  {
    v0 = sub_1B7A98870();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBA4A098);
    }
  }
}

uint64_t sub_1B7A74060(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = MEMORY[0x1EEE9AC00](a1);
  (*(v7 + 16))(&v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v5);
  sub_1B7A972B0();
  sub_1B7A98100();
}

uint64_t sub_1B7A7415C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v38 = a2;
  v35 = *(a1 + 48);
  v34 = *(a1 + 56);
  v33 = *(a1 + 64);
  v58 = v35;
  v59 = v34;
  v60 = v33;
  v32 = *(a1 + 24);
  v31 = *(a1 + 32);
  v56 = v32;
  v57 = v31;
  type metadata accessor for _FlowToastContentView(255, &v56);
  sub_1B7A97590();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA4A0A0, &unk_1B7AA8C88);
  sub_1B7A97590();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA46CE0, &unk_1B7AA6E40);
  sub_1B7A97590();
  WitnessTable = swift_getWitnessTable();
  v55 = MEMORY[0x1E697EBF8];
  v3 = MEMORY[0x1E697E858];
  v52 = swift_getWitnessTable();
  v53 = sub_1B797EC34(&qword_1EBA4A0A8, &qword_1EBA4A0A0, &unk_1B7AA8C88, MEMORY[0x1E697F940]);
  v37 = v3;
  v50 = swift_getWitnessTable();
  v51 = sub_1B797EC34(&qword_1EBA46CD8, &qword_1EBA46CE0, &unk_1B7AA6E40, MEMORY[0x1E697FDC0]);
  swift_getWitnessTable();
  v4 = sub_1B7A98770();
  v28 = sub_1B7A97640();
  v27 = swift_getWitnessTable();
  v26 = sub_1B7A76AC4(&qword_1EBA4A0B0, MEMORY[0x1E697C248], MEMORY[0x1E697C240]);
  v56 = v4;
  *&v57 = v28;
  *(&v57 + 1) = v27;
  v58 = v26;
  swift_getOpaqueTypeMetadata2();
  sub_1B7A9AB60();
  v5 = sub_1B7A985B0();
  v29 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v25 - v6;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA4A0B8, &unk_1B7AA8C98);
  v8 = sub_1B7A97590();
  v30 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v25 - v12;
  *&v14 = *(a1 + 16);
  *(&v14 + 1) = v32;
  v40 = v31;
  v39 = v14;
  v41 = v35;
  v42 = v34;
  v15 = v36;
  v43 = v33;
  v44 = v36;
  v56 = v4;
  *&v57 = v28;
  *(&v57 + 1) = v27;
  v58 = v26;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v16 = swift_getWitnessTable();
  sub_1B7A985A0();
  sub_1B7A98A70();
  v17 = *(v15 + 8);
  v18 = *(v15 + 16);
  v56 = *v15;
  *&v57 = v17;
  BYTE8(v57) = v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA45DF8, &qword_1B7AA0470);
  MEMORY[0x1B8CA9A40](&v48, v19);
  LOBYTE(v56) = v48;
  v47 = v16;
  v20 = swift_getWitnessTable();
  sub_1B7A984F0();

  (*(v29 + 8))(v7, v5);
  v21 = sub_1B797EC34(&qword_1EBA4A0C0, &qword_1EBA4A0B8, &unk_1B7AA8C98, MEMORY[0x1E697F548]);
  v45 = v20;
  v46 = v21;
  v22 = swift_getWitnessTable();
  sub_1B7957EE0(v10, v8, v22);
  v23 = *(v30 + 8);
  v23(v10, v8);
  sub_1B7957EE0(v13, v8, v22);
  return (v23)(v13, v8);
}

uint64_t sub_1B7A7479C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v114 = a1;
  v110 = a9;
  v16 = sub_1B7A97640();
  v100 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v99 = &v83 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v123 = a2;
  v124 = a3;
  v125 = a4;
  v126 = a5;
  v127 = a6;
  v128 = a7;
  v129 = a8;
  v102 = type metadata accessor for _FlowToastView(0, &v123);
  v93 = *(v102 - 8);
  v92 = *(v93 + 64);
  MEMORY[0x1EEE9AC00](v102);
  v101 = &v83 - v18;
  v103 = a3;
  v123 = a3;
  v124 = a4;
  v94 = a4;
  v95 = a5;
  v125 = a5;
  v126 = a6;
  v96 = a6;
  v97 = a7;
  v127 = a7;
  v128 = a8;
  v98 = a8;
  type metadata accessor for _FlowToastContentView(255, &v123);
  sub_1B7A97590();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA4A0A0, &unk_1B7AA8C88);
  sub_1B7A97590();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA46CE0, &unk_1B7AA6E40);
  v19 = sub_1B7A97590();
  WitnessTable = swift_getWitnessTable();
  v122 = MEMORY[0x1E697EBF8];
  v20 = swift_getWitnessTable();
  v21 = sub_1B797EC34(&qword_1EBA4A0A8, &qword_1EBA4A0A0, &unk_1B7AA8C88, MEMORY[0x1E697F940]);
  v119 = v20;
  v120 = v21;
  v22 = swift_getWitnessTable();
  v23 = sub_1B797EC34(&qword_1EBA46CD8, &qword_1EBA46CE0, &unk_1B7AA6E40, MEMORY[0x1E697FDC0]);
  v117 = v22;
  v118 = v23;
  v24 = swift_getWitnessTable();
  v91 = v19;
  v88 = v24;
  v25 = sub_1B7A98770();
  v90 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v89 = &v83 - v26;
  v27 = swift_getWitnessTable();
  v28 = sub_1B7A76AC4(&qword_1EBA4A0B0, MEMORY[0x1E697C248], MEMORY[0x1E697C240]);
  v112 = v27;
  v113 = v25;
  v123 = v25;
  v124 = v16;
  v109 = v16;
  v125 = v27;
  v126 = v28;
  v111 = v28;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v107 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v87 = &v83 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31);
  v86 = &v83 - v32;
  v33 = sub_1B7A9AB60();
  v34 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v36 = &v83 - v35;
  v105 = a2;
  v37 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](v38);
  v104 = &v83 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v108 = OpaqueTypeMetadata2;
  v106 = sub_1B7A9AB60();
  v40 = *(v106 - 8);
  MEMORY[0x1EEE9AC00](v106);
  v42 = &v83 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v43);
  v45 = &v83 - v44;
  sub_1B7A9A760();
  v46 = sub_1B7A9A750();
  sub_1B7A9A710();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v47 = v114;
  v48 = *(v114 + 8);
  v49 = *(v114 + 16);
  v123 = *v114;
  v124 = v48;
  LOBYTE(v125) = v49;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA45DF8, &qword_1B7AA0470);
  MEMORY[0x1B8CA9A40](&v116, v50);
  if (v116 == 1)
  {
    v85 = v42;
    v51 = v102;
    (*(v34 + 16))(v36, v47 + *(v102 + 76), v33);
    v52 = v105;
    if ((*(v37 + 48))(v36, 1, v105) != 1)
    {
      (*(v37 + 32))(v104, v36, v52);
      v84 = v45;
      v56 = v93;
      (*(v93 + 16))(v101, v47, v51);
      v57 = (*(v56 + 80) + 72) & ~*(v56 + 80);
      v58 = swift_allocObject();
      v59 = v103;
      *(v58 + 2) = v52;
      *(v58 + 3) = v59;
      v83 = v37;
      v60 = v94;
      v92 = v46;
      v61 = v95;
      *(v58 + 4) = v94;
      *(v58 + 5) = v61;
      v62 = v96;
      v63 = v51;
      v64 = v97;
      *(v58 + 6) = v96;
      *(v58 + 7) = v64;
      v65 = v98;
      *(v58 + 8) = v98;
      v66 = (*(v56 + 32))(&v58[v57], v101, v63);
      MEMORY[0x1EEE9AC00](v66);
      v67 = v103;
      *(&v83 - 10) = v52;
      *(&v83 - 9) = v67;
      *(&v83 - 8) = v60;
      *(&v83 - 7) = v61;
      v68 = v111;
      v70 = v112;
      v69 = v113;
      *(&v83 - 6) = v62;
      *(&v83 - 5) = v64;
      v71 = v114;
      *(&v83 - 4) = v65;
      *(&v83 - 3) = v71;
      *(&v83 - 2) = v104;
      v72 = v89;
      sub_1B7A98730();
      v73 = v99;
      sub_1B7A97630();
      v74 = v87;
      v55 = v109;
      sub_1B7A98110();
      (*(v100 + 8))(v73, v55);
      (*(v90 + 8))(v72, v69);
      v123 = v69;
      v124 = v55;
      v45 = v84;
      v125 = v70;
      v126 = v68;
      OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
      v76 = v86;
      v77 = v108;
      sub_1B7957EE0(v74, v108, OpaqueTypeConformance2);
      v78 = v107;
      v79 = *(v107 + 8);
      v79(v74, v77);
      sub_1B7957EE0(v76, v77, OpaqueTypeConformance2);
      v79(v76, v77);
      v80 = v85;
      (*(v78 + 32))(v85, v74, v77);
      (*(v78 + 56))(v80, 0, 1, v77);
      v53 = v106;
      (*(v40 + 16))(v45, v80, v106);
      v54 = *(v40 + 8);
      v54(v80, v53);
      (*(v83 + 8))(v104, v105);
      goto LABEL_8;
    }

    (*(v34 + 8))(v36, v33);
    v42 = v85;
  }

  (*(v107 + 56))(v42, 1, 1, v108);
  v53 = v106;
  (*(v40 + 16))(v45, v42, v106);
  v54 = *(v40 + 8);
  v54(v42, v53);
  v55 = v109;
LABEL_8:
  v123 = v113;
  v124 = v55;
  v125 = v112;
  v126 = v111;
  v115 = swift_getOpaqueTypeConformance2();
  v81 = swift_getWitnessTable();
  sub_1B7957EE0(v45, v53, v81);
  v54(v45, v53);
}

uint64_t sub_1B7A753AC(uint64_t *a1)
{
  sub_1B7A9A760();
  sub_1B7A9A750();
  sub_1B7A9A710();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA45DF8, &qword_1B7AA0470);
  sub_1B7A98810();
}

uint64_t sub_1B7A75478@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v144 = a1;
  v145 = a2;
  v130 = a9;
  v129 = sub_1B7A978F0();
  v125 = *(v129 - 8);
  MEMORY[0x1EEE9AC00](v129);
  v123 = &v104 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v127 = sub_1B7A975E0();
  v122 = *(v127 - 8);
  MEMORY[0x1EEE9AC00](v127);
  v121 = &v104 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA4A0C8, &qword_1B7AA8CA8);
  v126 = *(v128 - 8);
  MEMORY[0x1EEE9AC00](v128);
  v124 = &v104 - v18;
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA4A0D0, &qword_1B7AA8CB0);
  MEMORY[0x1EEE9AC00](v113);
  v112 = &v104 - v19;
  v132 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v110 = &v104 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v109 = &v104 - v23;
  v143 = v24;
  MEMORY[0x1EEE9AC00](v25);
  v106 = &v104 - v26;
  *&v176 = a3;
  *(&v176 + 1) = a4;
  *&v177 = a5;
  *(&v177 + 1) = a6;
  *&v178 = a7;
  *(&v178 + 1) = a8;
  *&v179 = a10;
  v149 = type metadata accessor for _FlowToastView(0, &v176);
  v133 = *(v149 - 8);
  v27 = *(v133 + 64);
  MEMORY[0x1EEE9AC00](v149);
  v107 = &v104 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v105 = &v104 - v29;
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v104 - v31;
  v147 = a4;
  v148 = a7;
  *&v176 = a4;
  *(&v176 + 1) = a5;
  v142 = a6;
  *&v177 = a6;
  *(&v177 + 1) = a7;
  v140 = a8;
  *&v178 = a8;
  *(&v178 + 1) = a10;
  v146 = a10;
  v108 = type metadata accessor for _FlowToastContentView(255, &v176);
  v33 = sub_1B7A97590();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA4A0A0, &unk_1B7AA8C88);
  v111 = v33;
  v34 = sub_1B7A97590();
  v117 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34);
  v141 = &v104 - v35;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA46CE0, &unk_1B7AA6E40);
  v118 = v34;
  v36 = sub_1B7A97590();
  v119 = *(v36 - 8);
  v120 = v36;
  MEMORY[0x1EEE9AC00](v36);
  v115 = &v104 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v38);
  v116 = &v104 - v39;
  sub_1B7A9A760();
  v114 = sub_1B7A9A750();
  sub_1B7A9A710();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v40 = v133;
  v41 = *(v133 + 16);
  v138 = v133 + 16;
  v139 = v41;
  v42 = v32;
  v41(v32, v144, v149);
  v43 = v132;
  v44 = *(v132 + 16);
  v131 = v132 + 16;
  v137 = v44;
  v45 = v106;
  v44(v106, v145, a3);
  v46 = *(v40 + 80);
  v47 = *(v43 + 80);
  v48 = (v46 + 72) & ~v46;
  v134 = v48;
  v49 = (v27 + v47 + v48) & ~v47;
  v136 = v46 | v47;
  v50 = swift_allocObject();
  v51 = v147;
  v52 = v148;
  v50[2] = a3;
  v50[3] = v51;
  v53 = v142;
  v50[4] = a5;
  v50[5] = v53;
  v135 = a5;
  v54 = v140;
  v50[6] = v52;
  v50[7] = v54;
  v50[8] = v146;
  v133 = *(v40 + 32);
  v55 = v50 + v48;
  v56 = v149;
  (v133)(v55, v42, v149);
  v57 = v54;
  v132 = *(v43 + 32);
  (v132)(v50 + v49, v45, a3);
  v58 = v105;
  v139(v105, v144, v56);
  v59 = v109;
  v137(v109, v145, a3);
  v60 = swift_allocObject();
  v61 = v147;
  v60[2] = a3;
  v60[3] = v61;
  v62 = v142;
  v60[4] = v135;
  v60[5] = v62;
  v60[6] = v148;
  v60[7] = v57;
  v60[8] = v146;
  v63 = v149;
  (v133)(v60 + v134, v58, v149);
  (v132)(v60 + v49, v59, a3);
  v64 = v107;
  v139(v107, v144, v63);
  v65 = v110;
  v137(v110, v145, a3);
  v66 = swift_allocObject();
  v67 = v147;
  v66[2] = a3;
  v66[3] = v67;
  v68 = v142;
  v66[4] = v135;
  v66[5] = v68;
  v69 = v149;
  v70 = v140;
  v66[6] = v148;
  v66[7] = v70;
  v66[8] = v146;
  (v133)(v66 + v134, v64, v69);
  (v132)(v66 + v49, v65, a3);
  *&v176 = sub_1B7A76780;
  *(&v176 + 1) = v50;
  *&v177 = sub_1B7A76798;
  *(&v177 + 1) = v60;
  *&v178 = sub_1B7A76984;
  *(&v178 + 1) = v66;
  sub_1B7A98A20();
  WitnessTable = swift_getWitnessTable();
  sub_1B7A98410();

  v162 = v172;
  v163 = v173;
  v164 = v174;
  v165 = v175;
  v158 = v168;
  v159 = v169;
  v160 = v170;
  v161 = v171;
  v156 = v166;
  v157 = v167;
  v71 = *(sub_1B7A97670() + 20);
  v72 = *MEMORY[0x1E697F468];
  v73 = sub_1B7A97970();
  v74 = v112;
  (*(*(v73 - 8) + 104))(&v112[v71], v72, v73);
  __asm { FMOV            V0.2D, #9.0 }

  *v74 = _Q0;
  v80 = v113;
  sub_1B7A989C0();
  *(v74 + *(v80 + 56)) = 256;
  sub_1B7A98A20();
  v154 = WitnessTable;
  v155 = MEMORY[0x1E697EBF8];
  v149 = MEMORY[0x1E697E858];
  v81 = v111;
  v82 = swift_getWitnessTable();
  sub_1B797EC34(&qword_1EBA4A0D8, &qword_1EBA4A0D0, &qword_1B7AA8CB0, MEMORY[0x1E697DB78]);
  sub_1B7A980C0();
  sub_1B7957888(v74, &qword_1EBA4A0D0, &qword_1B7AA8CB0);
  v182 = v162;
  v183 = v163;
  v184 = v164;
  v185 = v165;
  v178 = v158;
  v179 = v159;
  v180 = v160;
  v181 = v161;
  v176 = v156;
  v177 = v157;
  (*(*(v81 - 8) + 8))(&v176, v81);
  sub_1B7A98AE0();
  v83 = v121;
  sub_1B7A975F0();
  v84 = v123;
  sub_1B7A978E0();
  v85 = sub_1B7A76AC4(qword_1EBA4A0E0, MEMORY[0x1E697E898], MEMORY[0x1E697E890]);
  v86 = sub_1B7A76AC4(&qword_1EBA46C00, MEMORY[0x1E697F260], MEMORY[0x1E697F258]);
  v87 = v124;
  v88 = v127;
  v89 = v129;
  sub_1B7A970A0();
  (*(v125 + 8))(v84, v89);
  (*(v122 + 8))(v83, v88);
  v90 = sub_1B797EC34(&qword_1EBA4A0A8, &qword_1EBA4A0A0, &unk_1B7AA8C88, MEMORY[0x1E697F940]);
  v152 = v82;
  v153 = v90;
  v91 = v118;
  v92 = swift_getWitnessTable();
  *&v166 = v88;
  *(&v166 + 1) = v89;
  *&v167 = v85;
  *(&v167 + 1) = v86;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v94 = v115;
  v95 = v128;
  v96 = v141;
  sub_1B7A74060(v87, v91, v128, v92, OpaqueTypeConformance2);
  (*(v126 + 8))(v87, v95);
  (*(v117 + 8))(v96, v91);
  v97 = sub_1B797EC34(&qword_1EBA46CD8, &qword_1EBA46CE0, &unk_1B7AA6E40, MEMORY[0x1E697FDC0]);
  v150 = v92;
  v151 = v97;
  v98 = v120;
  v99 = swift_getWitnessTable();
  v100 = v116;
  sub_1B7957EE0(v94, v98, v99);
  v101 = *(v119 + 8);
  v101(v94, v98);
  sub_1B7957EE0(v100, v98, v99);
  v101(v100, v98);
}

uint64_t sub_1B7A761F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v11 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v13 = &v28[-1] - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v28[-1] - v15;
  v28[0] = v17;
  v28[1] = v18;
  v28[2] = v19;
  v28[3] = v20;
  v28[4] = v21;
  v28[5] = v22;
  v28[6] = v23;
  v24 = type metadata accessor for _FlowToastView(0, v28);
  (*(a1 + *(v24 + 80)))(a2);
  sub_1B7957EE0(v13, a4, a7);
  v25 = *(v11 + 8);
  v25(v13, a4);
  sub_1B7957EE0(v16, a4, a7);
  return (v25)(v16, a4);
}

uint64_t sub_1B7A7636C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v12 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v14 = &v29[-1] - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v29[-1] - v16;
  v29[0] = v18;
  v29[1] = v19;
  v29[2] = v20;
  v29[3] = v21;
  v29[4] = v22;
  v29[5] = v23;
  v29[6] = v24;
  v25 = type metadata accessor for _FlowToastView(0, v29);
  (*(a1 + *(v25 + 84)))(a2);
  sub_1B7957EE0(v14, a5, a8);
  v26 = *(v12 + 8);
  v26(v14, a5);
  sub_1B7957EE0(v17, a5, a8);
  return (v26)(v17, a5);
}

uint64_t sub_1B7A764E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v12 = *(a6 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v14 = &v28[-1] - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v28[-1] - v16;
  v28[0] = v18;
  v28[1] = v19;
  v28[2] = v20;
  v28[3] = v21;
  v28[4] = v22;
  v28[5] = v23;
  v28[6] = a9;
  v24 = type metadata accessor for _FlowToastView(0, v28);
  (*(a1 + *(v24 + 88)))(a2);
  sub_1B7957EE0(v14, a6, a9);
  v25 = *(v12 + 8);
  v25(v14, a6);
  sub_1B7957EE0(v17, a6, a9);
  return (v25)(v17, a6);
}

uint64_t sub_1B7A76680()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[6];
  v5 = v0[7];
  v6 = v0[8];
  v10[0] = v0[2];
  v10[1] = v1;
  v10[2] = v2;
  v10[3] = v3;
  v10[4] = v4;
  v10[5] = v5;
  v10[6] = v6;
  v7 = *(type metadata accessor for _FlowToastView(0, v10) - 8);
  v8 = (v0 + ((*(v7 + 80) + 72) & ~*(v7 + 80)));

  return sub_1B7A753AC(v8);
}

uint64_t objectdestroy_3Tm()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 32);
  v12[0] = *(v0 + 16);
  v11 = *&v12[0];
  v3 = *(v0 + 48);
  v12[1] = v2;
  v12[2] = v3;
  v13 = v1;
  v4 = type metadata accessor for _FlowToastView(0, v12);
  v5 = *(*(v4 - 8) + 64);
  v6 = (*(*(v4 - 8) + 80) + 72) & ~*(*(v4 - 8) + 80);
  v7 = *(v11 - 8);
  v8 = *(v7 + 80);

  v9 = *(v4 + 76);
  if (!(*(v7 + 48))(v0 + v6 + v9, 1, v11))
  {
    (*(v7 + 8))(v0 + v6 + v9, v11);
  }

  (*(v7 + 8))(v0 + ((v6 + v5 + v8) & ~v8), v11);
  return swift_deallocObject();
}

uint64_t sub_1B7A7699C(uint64_t (*a1)(char *, char *, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v4 = *(v1 + 3);
  v5 = *(v1 + 4);
  v6 = *(v1 + 5);
  v7 = *(v1 + 6);
  v8 = *(v1 + 7);
  v9 = *(v1 + 8);
  v13[0] = *(v1 + 2);
  v3 = v13[0];
  v13[1] = v4;
  v13[2] = v5;
  v13[3] = v6;
  v13[4] = v7;
  v13[5] = v8;
  v13[6] = v9;
  v10 = *(type metadata accessor for _FlowToastView(0, v13) - 8);
  v11 = (*(v10 + 80) + 72) & ~*(v10 + 80);
  return a1(&v1[v11], &v1[(v11 + *(v10 + 64) + *(*(v3 - 8) + 80)) & ~*(*(v3 - 8) + 80)], v3, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_1B7A76AC4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1B7A76B0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1B7A76B94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  v21 = *(a1 + 16);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA4A168, &unk_1B7AA8D80);
  sub_1B7A97590();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA47CC0, &unk_1B7AA7590);
  sub_1B7A97590();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA47438, &unk_1B7A9F630);
  sub_1B7A97590();
  sub_1B7A97590();
  sub_1B7A97590();
  v20 = *(a1 + 24);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA49000, &qword_1B7AA52E0);
  sub_1B7A97590();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA47CC8, &unk_1B7AA0FE0);
  sub_1B7A97590();
  sub_1B7A97590();
  sub_1B7A97590();
  v19 = *(a1 + 32);
  sub_1B7A97590();
  sub_1B7A97590();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA47450, &unk_1B7AA52F0);
  sub_1B7A97590();
  sub_1B7A97590();
  sub_1B7A97590();
  swift_getTupleTypeMetadata3();
  sub_1B7A98AC0();
  swift_getWitnessTable();
  v3 = sub_1B7A987E0();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v18 - v5;
  v7 = sub_1B7A97590();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v18 - v12;
  sub_1B7A97990();
  v24 = v21;
  v25 = v20;
  v26 = v19;
  v27 = *(a1 + 40);
  v28 = *(a1 + 56);
  v29 = v22;
  sub_1B7A987D0();
  WitnessTable = swift_getWitnessTable();
  sub_1B7A98440();
  (*(v4 + 8))(v6, v3);
  v30 = WitnessTable;
  v31 = MEMORY[0x1E697E5D8];
  v15 = swift_getWitnessTable();
  sub_1B7957EE0(v10, v7, v15);
  v16 = *(v8 + 8);
  v16(v10, v7);
  sub_1B7957EE0(v13, v7, v15);
  return (v16)(v13, v7);
}

uint64_t sub_1B7A77020@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void (*a6)(char *, uint64_t)@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v167 = a7;
  v155 = a6;
  v176 = a8;
  v177 = a5;
  v190 = a1;
  v162 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v158 = &v133 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA49000, &qword_1B7AA52E0);
  v165 = a4;
  v12 = sub_1B7A97590();
  v159 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v156 = &v133 - v13;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA47CC8, &unk_1B7AA0FE0);
  v161 = v12;
  v14 = sub_1B7A97590();
  v160 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v157 = &v133 - v15;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA47450, &unk_1B7AA52F0);
  v163 = v14;
  v16 = sub_1B7A97590();
  v169 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v166 = &v133 - v17;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA47CC0, &unk_1B7AA7590);
  v171 = v16;
  v18 = sub_1B7A97590();
  v168 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v164 = &v133 - v19;
  v170 = v20;
  v175 = sub_1B7A97590();
  v172 = *(v175 - 8);
  MEMORY[0x1EEE9AC00](v175);
  v174 = &v133 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v173 = &v133 - v23;
  v144 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v142 = &v133 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v154 = a3;
  v26 = sub_1B7A97590();
  v145 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v143 = &v133 - v27;
  v147 = v28;
  v29 = sub_1B7A97590();
  v148 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v146 = &v133 - v30;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA47438, &unk_1B7A9F630);
  v149 = v29;
  v31 = sub_1B7A97590();
  v151 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v150 = &v133 - v32;
  v152 = v33;
  v189 = sub_1B7A97590();
  v183 = *(v189 - 8);
  MEMORY[0x1EEE9AC00](v189);
  v188 = &v133 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v35);
  v184 = &v133 - v36;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA497C0, &qword_1B7AA8D90);
  MEMORY[0x1EEE9AC00](v37 - 8);
  v187 = &v133 - v38;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA475C8, &qword_1B7A9FCC8);
  MEMORY[0x1EEE9AC00](v39 - 8);
  v41 = &v133 - v40;
  v179 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](v42);
  v44 = &v133 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA4A168, &unk_1B7AA8D80);
  v180 = a2;
  v45 = sub_1B7A97590();
  v134 = *(v45 - 8);
  MEMORY[0x1EEE9AC00](v45);
  v47 = &v133 - v46;
  v48 = sub_1B7A97590();
  v136 = *(v48 - 8);
  MEMORY[0x1EEE9AC00](v48);
  v50 = &v133 - v49;
  v51 = sub_1B7A97590();
  v139 = *(v51 - 8);
  MEMORY[0x1EEE9AC00](v51);
  v137 = &v133 - v52;
  v135 = v53;
  v54 = sub_1B7A97590();
  v140 = *(v54 - 8);
  MEMORY[0x1EEE9AC00](v54);
  v138 = &v133 - v55;
  v141 = v56;
  v57 = sub_1B7A97590();
  v181 = *(v57 - 8);
  v182 = v57;
  MEMORY[0x1EEE9AC00](v57);
  v186 = &v133 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v59);
  v185 = &v133 - v60;
  sub_1B7A9A760();
  v153 = sub_1B7A9A750();
  sub_1B7A9A710();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  (*v190)(isCurrentExecutor);
  sub_1B7A979D0();
  v62 = sub_1B7A97A10();
  (*(*(v62 - 8) + 56))(v41, 0, 1, v62);
  v63 = v180;
  v64 = v177;
  sub_1B7A982D0();
  sub_1B7957888(v41, &qword_1EBA475C8, &qword_1B7A9FCC8);
  (*(v179 + 8))(v44, v63);
  v179 = sub_1B7A97F70();
  v65 = *(v179 - 8);
  v178 = *(v65 + 56);
  v180 = v65 + 56;
  v66 = v187;
  v178(v187, 1, 1, v179);
  sub_1B7A97F90();
  sub_1B7957888(v66, &qword_1EBA497C0, &qword_1B7AA8D90);
  v67 = MEMORY[0x1E6980A18];
  v68 = sub_1B797EC34(&qword_1EBA4A170, &qword_1EBA4A168, &unk_1B7AA8D80, MEMORY[0x1E6980A18]);
  v195[29] = v64;
  v195[30] = v68;
  WitnessTable = swift_getWitnessTable();
  sub_1B7A983B0();

  (*(v134 + 8))(v47, v45);
  sub_1B7A98580();
  sub_1B7A98570();

  v177 = sub_1B797EC34(&qword_1EBA47D58, &qword_1EBA47CC0, &unk_1B7AA7590, v67);
  v195[27] = WitnessTable;
  v195[28] = v177;
  v70 = swift_getWitnessTable();
  v71 = v137;
  sub_1B7A981C0();

  (*(v136 + 8))(v50, v48);
  sub_1B7A98A20();
  v136 = sub_1B797EC34(&qword_1EBA47430, &qword_1EBA47438, &unk_1B7A9F630, v67);
  v195[25] = v70;
  v195[26] = v136;
  v131 = v135;
  v132 = swift_getWitnessTable();
  v72 = v138;
  sub_1B7A98410();
  (*(v139 + 8))(v71, v131);
  sub_1B7A97EF0();
  v195[23] = v132;
  v195[24] = MEMORY[0x1E697EBF8];
  v73 = v141;
  v74 = swift_getWitnessTable();
  v75 = v186;
  sub_1B7A98450();
  (*(v140 + 8))(v72, v73);
  v195[21] = v74;
  v195[22] = MEMORY[0x1E697E5D8];
  v76 = v182;
  v139 = swift_getWitnessTable();
  sub_1B7957EE0(v75, v76, v139);
  v77 = *(v181 + 8);
  v140 = v181 + 8;
  v141 = v77;
  v78 = (v77)(v75, v76);
  v79 = v142;
  (*(v190 + 16))(v78);
  v80 = v143;
  v82 = v154;
  v81 = v155;
  sub_1B7A98340();
  (*(v144 + 8))(v79, v82);
  v83 = sub_1B797EC34(&qword_1EBA49018, &qword_1EBA49000, &qword_1B7AA52E0, v67);
  v195[19] = v81;
  v195[20] = v83;
  v84 = v147;
  v85 = swift_getWitnessTable();
  v86 = v146;
  sub_1B7A98500();
  (*(v145 + 8))(v80, v84);
  sub_1B7A98580();
  v87 = sub_1B797EC34(&qword_1EBA47D60, &qword_1EBA47CC8, &unk_1B7AA0FE0, v67);
  v195[17] = v85;
  v195[18] = v87;
  v88 = v149;
  v89 = swift_getWitnessTable();
  v90 = v150;
  sub_1B7A981C0();

  (*(v148 + 8))(v86, v88);
  sub_1B7A97F80();
  v91 = v187;
  v178(v187, 1, 1, v179);
  sub_1B7A97F90();
  sub_1B7957888(v91, &qword_1EBA497C0, &qword_1B7AA8D90);
  v195[15] = v89;
  v195[16] = v136;
  v92 = v152;
  v93 = swift_getWitnessTable();
  v94 = v188;
  sub_1B7A983B0();

  (*(v151 + 8))(v90, v92);
  v195[13] = v93;
  v195[14] = v177;
  v95 = v189;
  v152 = swift_getWitnessTable();
  sub_1B7957EE0(v94, v95, v152);
  v96 = *(v183 + 8);
  v154 = v183 + 8;
  v155 = v96;
  v97 = (v96)(v94, v95);
  v98 = v158;
  (*(v190 + 32))(v97);
  v99 = v156;
  v100 = v165;
  v101 = v167;
  sub_1B7A98340();
  (*(v162 + 8))(v98, v100);
  v195[11] = v101;
  v195[12] = v83;
  v102 = v161;
  v103 = swift_getWitnessTable();
  v104 = v157;
  sub_1B7A98500();
  (*(v159 + 8))(v99, v102);
  LODWORD(v195[0]) = sub_1B7A97C60();
  v195[9] = v103;
  v195[10] = v87;
  v105 = v163;
  v106 = swift_getWitnessTable();
  v107 = v166;
  sub_1B7A981D0();
  (*(v160 + 8))(v104, v105);
  v108 = v187;
  v178(v187, 1, 1, v179);
  sub_1B7A97F90();
  sub_1B7957888(v108, &qword_1EBA497C0, &qword_1B7AA8D90);
  v109 = sub_1B797EC34(&qword_1EBA47448, &qword_1EBA47450, &unk_1B7AA52F0, MEMORY[0x1E6980490]);
  v195[7] = v106;
  v195[8] = v109;
  v110 = v171;
  v111 = swift_getWitnessTable();
  v112 = v164;
  sub_1B7A983B0();

  (*(v169 + 8))(v107, v110);
  sub_1B7A97EE0();
  v195[5] = v111;
  v195[6] = v177;
  v113 = v170;
  v114 = swift_getWitnessTable();
  v115 = v174;
  sub_1B7A98450();
  (*(v168 + 8))(v112, v113);
  v195[3] = v114;
  v195[4] = MEMORY[0x1E697E5D8];
  v116 = v175;
  v187 = swift_getWitnessTable();
  v117 = v173;
  sub_1B7957EE0(v115, v116, v187);
  v118 = v172;
  v190 = *(v172 + 8);
  (v190)(v115, v116);
  v119 = v182;
  v120 = v186;
  (*(v181 + 16))(v186, v185, v182);
  v195[0] = v120;
  v121 = v184;
  v123 = v188;
  v122 = v189;
  (*(v183 + 16))(v188, v184, v189);
  v195[1] = v123;
  (*(v118 + 16))(v115, v117, v116);
  v195[2] = v115;
  v124 = v119;
  v194[0] = v119;
  v194[1] = v122;
  v125 = v122;
  v194[2] = v116;
  v191 = v139;
  v192 = v152;
  v193 = v187;
  sub_1B7959BAC(v195, 3uLL, v194);
  v126 = v190;
  (v190)(v117, v116);
  v127 = v125;
  v128 = v155;
  v155(v121, v127);
  v129 = v141;
  v141(v185, v124);
  v126(v115, v116);
  v128(v188, v189);
  v129(v186, v124);
}

uint64_t View.impressionableLayout<A>(_:scrollViewConfiguration:itemConfiguration:position:definesParentContext:)@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unsigned int a6@<W5>, uint64_t a7@<X6>, uint64_t x8_0@<X8>, uint64_t a9, uint64_t a10)
{
  v26 = a7;
  v25 = a6;
  v11 = a5;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA45C90, &qword_1B7A9C190);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v24 - v17;
  v19 = sub_1B7A9A370();
  v22 = sub_1B7A1D2A8(v19, v20, v21);
  View.impressionableLayout<A>(for:impressions:scrollViewConfiguration:itemConfiguration:position:definesParentContext:)(&type metadata for ComponentModelViewID, v18, a2, a3, a4, v11 & 1, v25, v26, x8_0, &type metadata for ComponentModelViewID, a9, v22);
  return sub_1B7957888(v18, &qword_1EBA45C90, &qword_1B7A9C190);
}

uint64_t View.impressionableLayoutItem(_:configuration:position:)@<X0>(void *a1@<X0>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t x8_0@<X8>)
{
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA45C90, &qword_1B7A9C190);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v22[-v14 - 8];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  _s9JetEngine14ComponentModelP01_aB8_SwiftUIE6viewIDAD0cd4ViewH0Vvg_0();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v16 = sub_1B7A9A370();
  v19 = sub_1B7A1D2A8(v16, v17, v18);
  View.impressionableLayoutItem<A>(itemId:impressions:position:)(v22, v15, a3, a4 & 1, a5, &type metadata for ComponentModelViewID, a6, v19, x8_0);
  sub_1B7957888(v15, &qword_1EBA45C90, &qword_1B7A9C190);
  return sub_1B79F9A0C(v22);
}

uint64_t sub_1B7A7880C()
{
  v7 = sub_1B7A9AA40();
  v0 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v2 = v6 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1B7A9AA20();
  MEMORY[0x1EEE9AC00](v3);
  v4 = sub_1B7A98B30();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6[1] = sub_1B79596F8(0, &qword_1EDC0E5F0, 0x1E69E9610);
  sub_1B7A98B20();
  v8 = MEMORY[0x1E69E7CC0];
  sub_1B7957C04(&qword_1EBA4A3B0, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA4A3B8, &unk_1B7AA91D0);
  sub_1B797EC34(qword_1EBA4A3C0, &qword_1EBA4A3B8, &unk_1B7AA91D0, MEMORY[0x1E69E6328]);
  sub_1B7A9ABA0();
  (*(v0 + 104))(v2, *MEMORY[0x1E69E8090], v7);
  result = sub_1B7A9AA70();
  qword_1EBA4A178 = result;
  return result;
}

uint64_t View.impressionableLayoutItem<A>(itemId:impressions:position:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v40 = a7;
  v35 = a5;
  v36 = a8;
  v38 = a1;
  v39 = a3;
  v41 = a9;
  v42 = a2;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA45C90, &qword_1B7A9C190);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v34 - v13;
  v15 = *(a6 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v34 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for ImpressionableLayoutItemViewModifier(0, a6, a8, v19);
  v21 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v23 = &v34 - v22;
  v24 = sub_1B7A97590();
  v37 = *(v24 - 8);
  v25 = MEMORY[0x1EEE9AC00](v24);
  v27 = &v34 - v26;
  (*(v15 + 16))(v18, v38, a6, v25);
  sub_1B7957820(v42, v14, &qword_1EBA45C90, &qword_1B7A9C190);
  v28 = v14;
  v29 = v39;
  sub_1B7A78D9C(v18, v28, v39, a4 & 1, a6, v36, v23);
  v30 = v40;
  MEMORY[0x1B8CA96D0](v23, v35, v20, v40);
  (*(v21 + 8))(v23, v20);
  WitnessTable = swift_getWitnessTable();
  v43 = v30;
  v44 = WitnessTable;
  v32 = swift_getWitnessTable();
  View.impressionableClickLocation(impressionMetrics:position:)(v42, v29, a4 & 1, v24, v32);
  return (*(v37 + 8))(v27, v24);
}

uint64_t sub_1B7A78D9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v14 = sub_1B7A96C20();
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v23 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for ImpressionableLayoutItemViewModifier(0, a5, a6, v17);
  sub_1B7A96C10();
  sub_1B7A792F8(v16);
  v19 = v18[12];
  *(a7 + v19) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA45CA0, &unk_1B7A9C240);
  swift_storeEnumTagMultiPayload();
  v20 = v18[13];
  *(a7 + v20) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA45C98, &unk_1B7AA0460);
  swift_storeEnumTagMultiPayload();
  (*(*(a5 - 8) + 32))(a7, a1, a5);
  result = sub_1B7A7FB60(a2, a7 + v18[9]);
  v22 = a7 + v18[10];
  *v22 = a3;
  *(v22 + 8) = a4 & 1;
  return result;
}

uint64_t View.impressionableLayout<A>(for:impressions:scrollViewConfiguration:itemConfiguration:position:definesParentContext:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, int a6@<W5>, unsigned int a7@<W6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v40 = a8;
  v38 = a7;
  v35 = a6;
  v36 = a5;
  v37 = a9;
  v32 = a3;
  v33 = a4;
  v34 = a1;
  v39 = a11;
  v31 = a10;
  v13 = sub_1B7A99A20();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v30 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA45C90, &qword_1B7A9C190);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v22 = &v30 - v21;
  v24 = type metadata accessor for ImpressionableLayoutViewModifier(0, a10, a12, v23);
  v25 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v27 = &v30 - v26;
  sub_1B7957820(a2, v22, &qword_1EBA45C90, &qword_1B7A9C190);
  v28 = *(v14 + 16);
  v28(v19, v32, v13);
  v28(v16, v33, v13);
  sub_1B7A791B4(v34, v22, v19, v36, v35 & 1, v16, v38, v31, v27, a12);
  MEMORY[0x1B8CA96D0](v27, v40, v24, v39);
  return (*(v25 + 8))(v27, v24);
}

uint64_t sub_1B7A791B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, char a7@<W6>, uint64_t a8@<X7>, char *a9@<X8>, uint64_t a10)
{
  v17 = type metadata accessor for ImpressionableLayoutViewModifier(0, a8, a10, a4);
  v18 = v17[14];
  *&a9[v18] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA45C98, &unk_1B7AA0460);
  swift_storeEnumTagMultiPayload();
  *a9 = a1;
  sub_1B7A7FB60(a2, &a9[v17[9]]);
  v19 = v17[10];
  v20 = sub_1B7A99A20();
  v21 = *(*(v20 - 8) + 32);
  v21(&a9[v19], a3, v20);
  v22 = &a9[v17[12]];
  *v22 = a4;
  v22[8] = a5 & 1;
  result = (v21)(&a9[v17[11]], a6, v20);
  a9[v17[13]] = a7;
  return result;
}

uint64_t sub_1B7A792F8(uint64_t a1)
{
  v3 = sub_1B7A96C20();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](v3);
  (*(v4 + 16))(&v8 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3, v5);
  sub_1B7A986C0();
  return (*(v4 + 8))(a1, v3);
}

uint64_t sub_1B7A793F0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA45D70, &unk_1B7A9C4E0);
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v9 - v2;
  v4 = sub_1B7A99900();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = (&v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1B797BE80(v7);
  sub_1B7A998B0();
  sub_1B7A96C20();
  sub_1B7A99920();
  (*(v1 + 8))(v3, v0);
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_1B7A79594@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v64 = a1;
  v67 = a3;
  v5 = sub_1B7A96C20();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v66 = &v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA45D18, &qword_1B7A9C320);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v65 = (&v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v9);
  v63 = &v49 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA45C90, &qword_1B7A9C190);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v60 = &v49 - v12;
  v13 = *(a2 + 16);
  v68 = v13;
  v57 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v55 = &v49 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(a2 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v18);
  swift_getWitnessTable();
  sub_1B7A97C30();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA45DB8, &qword_1B7AA8FA0);
  v56 = sub_1B7A97590();
  v61 = *(v56 - 8);
  MEMORY[0x1EEE9AC00](v56);
  v52 = &v49 - v19;
  v51 = *(a2 + 24);
  v20 = v51;
  v58 = type metadata accessor for _ImpressionableLayoutItemViewModifier(255, v13, v51, v21);
  v53 = sub_1B7A97590();
  v62 = *(v53 - 8);
  MEMORY[0x1EEE9AC00](v53);
  v54 = &v49 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v59 = &v49 - v24;
  swift_getKeyPath();
  (*(v16 + 16))(&v49 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0), v3, a2);
  v25 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v26 = swift_allocObject();
  v27 = v68;
  *(v26 + 16) = v68;
  *(v26 + 24) = v20;
  (*(v16 + 32))(v26 + v25, &v49 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0), a2);
  WitnessTable = swift_getWitnessTable();
  sub_1B7A98320();

  v29 = v55;
  v30 = v50;
  (*(v57 + 16))(v55, v50, v27);
  v31 = v60;
  sub_1B7957820(v30 + *(a2 + 36), v60, &qword_1EBA45C90, &qword_1B7A9C190);
  v32 = v30 + *(a2 + 40);
  v33 = *v32;
  v34 = *(v32 + 8);
  v35 = v63;
  sub_1B7A793F0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA45CF8, &unk_1B7A9C2E0);
  v36 = v66;
  sub_1B7A986D0();
  v37 = v65;
  sub_1B797BEA8(v65);
  v73 = sub_1B7A79DB8(v29, v31, v33, v34, v35, v36, v37, v68, v51);
  v38 = sub_1B797EC34(&qword_1EDC0EB28, &qword_1EBA45DB8, &qword_1B7AA8FA0, MEMORY[0x1E6980B30]);
  v71 = WitnessTable;
  v72 = v38;
  v39 = v56;
  v40 = swift_getWitnessTable();
  v41 = v54;
  v42 = v52;
  MEMORY[0x1B8CA96D0](&v73, v39, v58, v40);

  (*(v61 + 8))(v42, v39);
  v43 = swift_getWitnessTable();
  v69 = v40;
  v70 = v43;
  v44 = v53;
  v45 = swift_getWitnessTable();
  v46 = v59;
  sub_1B7957EE0(v41, v44, v45);
  v47 = *(v62 + 8);
  v47(v41, v44);
  sub_1B7957EE0(v46, v44, v45);
  return (v47)(v46, v44);
}

uint64_t sub_1B7A79C7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1B7957888(a1, &qword_1EBA45D18, &qword_1B7A9C320);
  sub_1B7A9A760();
  sub_1B7A9A750();
  sub_1B7A9A710();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  type metadata accessor for ImpressionableLayoutItemViewModifier(0, a3, a4, v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA45CF8, &unk_1B7A9C2E0);
  sub_1B7A986D0();
  v8 = sub_1B7A96C20();
  (*(*(v8 - 8) + 56))(a1, 0, 1, v8);
}

unint64_t sub_1B7A79DB8(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v55 = a8;
  v59 = a1;
  v60 = a7;
  v48 = a4;
  v50 = a3;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA45C90, &qword_1B7A9C190);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v47 - v13;
  v15 = sub_1B7A99670();
  v57 = *(v15 - 8);
  v58 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v56 = &v47 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA45D18, &qword_1B7A9C320);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v19 = &v47 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v47 - v21;
  v23 = sub_1B7A996F0();
  v51 = *(v23 - 8);
  v52 = v23;
  MEMORY[0x1EEE9AC00](v23);
  v62 = &v47 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = a5;
  sub_1B7957820(a5, v22, &qword_1EBA45D18, &qword_1B7A9C320);
  v25 = sub_1B7A96C20();
  v26 = *(v25 - 8);
  v27 = *(v26 + 48);
  v28 = v27(v22, 1, v25);
  v61 = a2;
  if (v28 == 1)
  {
    sub_1B7957888(v22, &qword_1EBA45D18, &qword_1B7A9C320);
    v47 = 0;
  }

  else
  {
    v47 = sub_1B7A96C00();
    (*(v26 + 8))(v22, v25);
  }

  v49 = a9;
  v53 = a6;
  sub_1B7A96C00();
  sub_1B7957820(v60, v19, &qword_1EBA45D18, &qword_1B7A9C320);
  if (v27(v19, 1, v25) == 1)
  {
    sub_1B7957888(v19, &qword_1EBA45D18, &qword_1B7A9C320);
  }

  else
  {
    sub_1B7A96C00();
    (*(v26 + 8))(v19, v25);
  }

  sub_1B7A996E0();
  sub_1B7957820(v61, v14, &qword_1EBA45C90, &qword_1B7A9C190);
  v30 = v57;
  v29 = v58;
  if ((*(v57 + 48))(v14, 1, v58) == 1)
  {
    sub_1B7957888(v14, &qword_1EBA45C90, &qword_1B7A9C190);
    v31 = type metadata accessor for LayoutItemImpressionInformation(255);
    v32 = v55;
    swift_getTupleTypeMetadata2();
    v33 = sub_1B7A9A680();
    v34 = sub_1B7A7F85C(v33, v32, v31, v49);

    sub_1B7957888(v60, &qword_1EBA45D18, &qword_1B7A9C320);
    (*(v26 + 8))(v53, v25);
    sub_1B7957888(v54, &qword_1EBA45D18, &qword_1B7A9C320);
    sub_1B7957888(v61, &qword_1EBA45C90, &qword_1B7A9C190);
    (*(*(v32 - 8) + 8))(v59, v32);
    v36 = v51;
    v35 = v52;
  }

  else
  {
    (*(v30 + 32))(v56, v14, v29);
    v37 = type metadata accessor for LayoutItemImpressionInformation(255);
    v38 = v55;
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    sub_1B7A9AE30();
    swift_allocObject();
    v40 = sub_1B7A9A650();
    v42 = v41 + *(TupleTypeMetadata2 + 48);
    v43 = *(v38 - 8);
    (*(v43 + 16))(v41, v59, v38);
    (*(v30 + 16))(v42, v56, v29);
    v36 = v51;
    v44 = v42 + *(v37 + 20);
    v35 = v52;
    (*(v51 + 16))(v44, v62, v52);
    v45 = sub_1B7A2A32C(v40, TupleTypeMetadata2);
    v34 = sub_1B7A7F85C(v45, v38, v37, v49);

    sub_1B7957888(v60, &qword_1EBA45D18, &qword_1B7A9C320);
    (*(v26 + 8))(v53, v25);
    sub_1B7957888(v54, &qword_1EBA45D18, &qword_1B7A9C320);
    sub_1B7957888(v61, &qword_1EBA45C90, &qword_1B7A9C190);
    (*(v43 + 8))(v59, v38);
    (*(v57 + 8))(v56, v58);
  }

  (*(v36 + 8))(v62, v35);
  return v34;
}

uint64_t sub_1B7A7A4F0@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v20[0] = a4;
  type metadata accessor for _ImpressionableLayoutItemViewModifier(255, a2, a3, a3);
  swift_getWitnessTable();
  sub_1B7A97C30();
  type metadata accessor for ImpressionPreferenceKey(255, a2, a3, v7);
  swift_getWitnessTable();
  sub_1B7A97DB0();
  v8 = sub_1B7A97590();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = v20 - v13;
  v20[3] = a1;
  WitnessTable = swift_getWitnessTable();
  sub_1B7A980F0();
  v16 = swift_getWitnessTable();
  v20[1] = WitnessTable;
  v20[2] = v16;
  v17 = swift_getWitnessTable();
  sub_1B7957EE0(v11, v8, v17);
  v18 = *(v9 + 8);
  v18(v11, v8);
  sub_1B7957EE0(v14, v8, v17);
  return (v18)(v14, v8);
}

uint64_t sub_1B7A7A760@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v78 = a1;
  v79 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA45D38, &unk_1B7AA4740);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v76 = &v52[-v7];
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA45D40, &qword_1B7A9C4B0);
  v75 = *(v77 - 8);
  MEMORY[0x1EEE9AC00](v77);
  v74 = &v52[-v8];
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA45D78, &qword_1B7A9D640);
  v71 = *(v73 - 8);
  MEMORY[0x1EEE9AC00](v73);
  v66 = &v52[-v9];
  v72 = sub_1B7A99900();
  v70 = *(v72 - 8);
  MEMORY[0x1EEE9AC00](v72);
  v69 = &v52[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v52[-v12];
  v14 = sub_1B7A99A20();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v52[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v54 = v17;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v52[-v19];
  v57 = &v52[-v19];
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA45C90, &qword_1B7A9C190);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v23 = &v52[-v22];
  v58 = &v52[-v22];
  v24 = *(a2 + 16);
  v64 = *(a2 + 24);
  v65 = v24;
  v62 = type metadata accessor for _ImpressionableLayoutViewModifier(0, v24, v64, v25);
  v68 = *(v62 - 8);
  MEMORY[0x1EEE9AC00](v62);
  v61 = &v52[-v26];
  swift_getWitnessTable();
  v60 = sub_1B7A97C30();
  v27 = sub_1B7A97590();
  v67 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v59 = &v52[-((v28 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v29);
  v63 = &v52[-v30];
  sub_1B7957820(v4 + *(a2 + 36), v23, &qword_1EBA45C90, &qword_1B7A9C190);
  v31 = *(v15 + 16);
  v31(v20, v4 + *(a2 + 40), v14);
  v32 = *(a2 + 44);
  v33 = v4 + *(a2 + 48);
  v56 = *v33;
  v55 = *(v33 + 8);
  v31(v17, v4 + v32, v14);
  v53 = *(v4 + *(a2 + 52));
  sub_1B797BE80(v13);
  v34 = v66;
  sub_1B7A99890();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA45D88, &qword_1B7A9C4F8);
  sub_1B7A99910();
  (*(v71 + 8))(v34, v73);
  v35 = *(v70 + 8);
  v36 = v72;
  v35(v13, v72);
  v38 = v82;
  v37 = v83;
  v39 = v69;
  sub_1B797BE80(v69);
  v40 = v74;
  sub_1B7A99880();
  sub_1B7A99DB0();
  v41 = v76;
  sub_1B7A99920();
  (*(v75 + 8))(v40, v77);
  v35(v39, v36);
  v42 = v61;
  sub_1B7A7AEF0(v58, v57, v56, v55, v54, v53, v38, v61, v37, v41, v65, v64);
  v43 = v60;
  WitnessTable = swift_getWitnessTable();
  v45 = v59;
  v46 = v62;
  MEMORY[0x1B8CA96D0](v42, v43, v62, WitnessTable);
  (*(v68 + 8))(v42, v46);
  v47 = swift_getWitnessTable();
  v80 = WitnessTable;
  v81 = v47;
  v48 = swift_getWitnessTable();
  v49 = v63;
  sub_1B7957EE0(v45, v27, v48);
  v50 = *(v67 + 8);
  v50(v45, v27);
  sub_1B7957EE0(v49, v27, v48);
  return (v50)(v49, v27);
}

uint64_t sub_1B7A7AEF0@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, char a4@<W4>, uint64_t a5@<X5>, char a6@<W6>, uint64_t a7@<X7>, uint64_t a8@<X8>, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v15 = type metadata accessor for _ImpressionableLayoutViewModifier(0, a11, a12, a3);
  v16 = v15[14];
  v17 = sub_1B7A99DB0();
  (*(*(v17 - 8) + 56))(a8 + v16, 1, 1, v17);
  v18 = a8 + v15[15];
  *v18 = swift_getKeyPath();
  *(v18 + 8) = 0;
  v19 = (a8 + v15[16]);
  v20 = type metadata accessor for LayoutItemImpressionInformation(255);
  swift_getTupleTypeMetadata2();
  v21 = sub_1B7A9A680();
  v22 = sub_1B7A7F85C(v21, a11, v20, a12);

  *v19 = sub_1B7A7B12C(v22, a11, a12);
  v19[1] = v23;
  v24 = (a8 + v15[17]);
  v25 = sub_1B7A9A380();
  *v24 = sub_1B7A7B18C(v25);
  v24[1] = v26;
  sub_1B7A7FB60(a1, a8);
  v27 = v15[9];
  v28 = sub_1B7A99A20();
  v29 = *(*(v28 - 8) + 32);
  v29(a8 + v27, a2, v28);
  v30 = a8 + v15[10];
  *v30 = a3;
  *(v30 + 8) = a4 & 1;
  v29(a8 + v15[11], a5, v28);
  *(a8 + v15[12]) = a6;
  v31 = (a8 + v15[13]);
  *v31 = a7;
  v31[1] = a9;

  return sub_1B7A7FBD0(a10, a8 + v16);
}

uint64_t sub_1B7A7B12C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for LayoutItemImpressionInformation(255);
  sub_1B7A9A3C0();
  sub_1B7A986C0();
  return v4;
}

uint64_t sub_1B7A7B18C(uint64_t a1)
{
  sub_1B7A9A8E0();
  sub_1B7A986C0();
  return v2;
}