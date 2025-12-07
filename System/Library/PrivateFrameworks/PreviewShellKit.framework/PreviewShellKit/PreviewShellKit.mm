void sub_25F0B53D0(uint64_t a1, uint64_t a2, __int16 a3)
{
  v41.receiver = v3;
  v41.super_class = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD469E0, &qword_25F17AC88);
  v4 = objc_msgSendSuper2(&v41, sel_initWithNibName_bundle_, 0, 0);
  v5 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD469E8, &qword_25F17AC90));
  v6 = v4;

  v7 = sub_25F178CEC();
  v8 = [v7 view];
  if (!v8)
  {
    __break(1u);
    goto LABEL_14;
  }

  v9 = v8;
  [v8 setTranslatesAutoresizingMaskIntoConstraints_];

  v10 = v6;
  [v10 addChildViewController_];
  v11 = [v10 view];
  if (!v11)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v12 = v11;
  v13 = [v7 view];
  if (!v13)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v14 = v13;
  [v12 addSubview_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD46960, &qword_25F17B190);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_25F17AA90;
  v16 = [v7 view];
  if (!v16)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v17 = v16;
  v18 = [v16 topAnchor];

  v19 = [v10 view];
  if (!v19)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v20 = [v19 topAnchor];

  v21 = [v18 constraintEqualToAnchor_];
  *(v15 + 32) = v21;
  v22 = [v7 view];
  if (!v22)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v23 = v22;
  v24 = [v22 bottomAnchor];

  v25 = [v10 view];
  if (!v25)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v26 = [v25 bottomAnchor];

  v27 = [v24 constraintEqualToAnchor_];
  *(v15 + 40) = v27;
  v28 = [v7 view];
  if (!v28)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v29 = v28;
  v30 = [v28 leftAnchor];

  v31 = [v10 view];
  if (!v31)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v32 = [v31 leftAnchor];

  v33 = [v30 constraintEqualToAnchor_];
  *(v15 + 48) = v33;
  v34 = [v7 view];

  if (!v34)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v35 = [v34 rightAnchor];

  v36 = [v10 view];
  if (v36)
  {

    v37 = objc_opt_self();
    v38 = [v36 rightAnchor];

    v39 = [v35 constraintEqualToAnchor_];
    *(v15 + 56) = v39;
    sub_25F0B7B5C();
    v40 = sub_25F17921C();

    [v37 activateConstraints_];

    [v7 didMoveToParentViewController_];
    return;
  }

LABEL_23:
  __break(1u);
}

void sub_25F0B5888(uint64_t a1)
{
  v40.receiver = v1;
  v40.super_class = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD46970, &qword_25F17AC00);
  v3 = objc_msgSendSuper2(&v40, sel_initWithNibName_bundle_, 0, 0);
  sub_25F0B7BA8(a1, v39);
  objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD46978, &qword_25F17AC08));
  v4 = v3;
  v5 = sub_25F178CEC();
  v6 = [v5 view];
  if (!v6)
  {
    __break(1u);
    goto LABEL_14;
  }

  v7 = v6;
  [v6 setTranslatesAutoresizingMaskIntoConstraints_];

  v8 = v4;
  [v8 addChildViewController_];
  v9 = [v8 view];
  if (!v9)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v10 = v9;
  v11 = [v5 view];
  if (!v11)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v12 = v11;
  [v10 addSubview_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD46960, &qword_25F17B190);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_25F17AA90;
  v14 = [v5 view];
  if (!v14)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v15 = v14;
  v16 = [v14 topAnchor];

  v17 = [v8 view];
  if (!v17)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v18 = [v17 topAnchor];

  v19 = [v16 constraintEqualToAnchor_];
  *(v13 + 32) = v19;
  v20 = [v5 view];
  if (!v20)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v21 = v20;
  v22 = [v20 bottomAnchor];

  v23 = [v8 view];
  if (!v23)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v24 = [v23 bottomAnchor];

  v25 = [v22 constraintEqualToAnchor_];
  *(v13 + 40) = v25;
  v26 = [v5 view];
  if (!v26)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v27 = v26;
  v28 = [v26 leftAnchor];

  v29 = [v8 view];
  if (!v29)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v30 = [v29 leftAnchor];

  v31 = [v28 constraintEqualToAnchor_];
  *(v13 + 48) = v31;
  v32 = [v5 view];

  if (!v32)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v33 = [v32 rightAnchor];

  v34 = [v8 view];
  if (v34)
  {
    v35 = objc_opt_self();
    v36 = [v34 rightAnchor];

    v37 = [v33 constraintEqualToAnchor_];
    *(v13 + 56) = v37;
    sub_25F0B7B5C();
    v38 = sub_25F17921C();

    [v35 activateConstraints_];

    [v5 didMoveToParentViewController_];
    sub_25F0B7C04(a1);
    return;
  }

LABEL_23:
  __break(1u);
}

void sub_25F0B5D40(char a1, void *a2, char a3, uint64_t a4)
{
  v50.receiver = v4;
  v50.super_class = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD46950, &qword_25F17ABE8);
  v9 = objc_msgSendSuper2(&v50, sel_initWithNibName_bundle_, 0, 0);
  LOBYTE(v47) = a1;
  v48 = a2;
  LOBYTE(v49) = a3;
  v10 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD46958, &unk_25F17ABF0));

  v11 = v9;
  v12 = a2;
  v13 = sub_25F178CEC();
  v14 = [v13 view];
  if (!v14)
  {
    __break(1u);
    goto LABEL_14;
  }

  v15 = v14;
  [v14 setTranslatesAutoresizingMaskIntoConstraints_];

  v16 = v11;
  [v16 addChildViewController_];
  v17 = [v16 view];
  if (!v17)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v18 = v17;
  v19 = [v13 view];
  if (!v19)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v20 = v19;
  [v18 addSubview_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD46960, &qword_25F17B190);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_25F17AA90;
  v22 = [v13 view];
  if (!v22)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v23 = v22;
  v24 = [v22 topAnchor];

  v25 = [v16 view];
  if (!v25)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v26 = [v25 topAnchor];

  v27 = [v24 constraintEqualToAnchor_];
  *(v21 + 32) = v27;
  v28 = [v13 view];
  if (!v28)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v29 = v28;
  v30 = [v28 bottomAnchor];

  v31 = [v16 view];
  if (!v31)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v32 = [v31 bottomAnchor];

  v33 = [v30 constraintEqualToAnchor_];
  *(v21 + 40) = v33;
  v34 = [v13 view];
  if (!v34)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v35 = v34;
  v36 = [v34 leftAnchor];

  v37 = [v16 view];
  if (!v37)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v38 = [v37 leftAnchor];

  v39 = [v36 constraintEqualToAnchor_];
  *(v21 + 48) = v39;
  v40 = [v13 view];

  if (!v40)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v41 = [v40 rightAnchor];

  v42 = [v16 view];
  if (v42)
  {

    v43 = objc_opt_self();
    v44 = [v42 rightAnchor];

    v45 = [v41 constraintEqualToAnchor_];
    *(v21 + 56) = v45;
    sub_25F0B7B5C();
    v46 = sub_25F17921C();

    [v43 activateConstraints_];

    [v13 didMoveToParentViewController_];
    return;
  }

LABEL_23:
  __break(1u);
}

id ConnectViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t ConnectView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD46810, &qword_25F17AAB0);
  v4 = v3 - 8;
  MEMORY[0x28223BE20](v3);
  v6 = v28 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD46818, &qword_25F17AAB8);
  v8 = v7 - 8;
  MEMORY[0x28223BE20](v7);
  v10 = v28 - v9;
  v11 = *v1;
  v12 = *(v1 + 8);
  v13 = *(v1 + 16);
  v14 = *(v1 + 17);
  *v6 = sub_25F178CDC();
  *(v6 + 1) = 0;
  v6[16] = 1;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD46820, &qword_25F17AAC0);
  if (v14)
  {
    v16 = 256;
  }

  else
  {
    v16 = 0;
  }

  sub_25F0B6530(v11, v12, v16 | v13, &v6[*(v15 + 44)]);
  v6[*(v4 + 44)] = sub_25F178D6C();
  sub_25F178F5C();
  sub_25F178BBC();
  sub_25F0B7D50(v6, v10, &qword_27FD46810, &qword_25F17AAB0);
  v17 = &v10[*(v8 + 44)];
  v18 = v28[5];
  *(v17 + 4) = v28[4];
  *(v17 + 5) = v18;
  *(v17 + 6) = v28[6];
  v19 = v28[1];
  *v17 = v28[0];
  *(v17 + 1) = v19;
  v20 = v28[3];
  *(v17 + 2) = v28[2];
  *(v17 + 3) = v20;
  v21 = sub_25F178E6C();
  v22 = sub_25F178D5C();
  v23 = sub_25F178F5C();
  v25 = v24;
  sub_25F0B7D50(v10, a1, &qword_27FD46818, &qword_25F17AAB8);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FD46828, &qword_25F17AAC8);
  v27 = a1 + *(result + 36);
  *v27 = v21;
  *(v27 + 8) = v22;
  *(v27 + 16) = v23;
  *(v27 + 24) = v25;
  return result;
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

uint64_t sub_25F0B6530@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __int16 a3@<W2>, uint64_t a4@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD46980, &qword_25F17AC10);
  v40 = *(v8 - 8);
  v41 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = &v37 - v9;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD46988, &qword_25F17AC18);
  v11 = MEMORY[0x28223BE20](v38);
  v42 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v37 - v14;
  MEMORY[0x28223BE20](v13);
  v39 = &v37 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD46990, &qword_25F17AC20);
  v18 = MEMORY[0x28223BE20](v17 - 8);
  v20 = &v37 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v37 - v21;
  *v22 = sub_25F178CDC();
  *(v22 + 1) = 0;
  v22[16] = 1;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD46998, &qword_25F17AC28);
  sub_25F0B69D0(&v22[*(v23 + 44)]);
  v24 = swift_allocObject();
  *(v24 + 16) = a1;
  *(v24 + 24) = a2;
  *(v24 + 32) = a3 & 1;
  *(v24 + 33) = HIBYTE(a3) & 1;
  v43 = a1;
  v44 = a2;
  v45 = a3 & 0x101;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD469A0, &qword_25F17AC30);
  sub_25F0B7D00(&qword_27FD469A8, &qword_27FD469A0, &qword_25F17AC30, MEMORY[0x277CE14C0]);
  sub_25F178F2C();
  v25 = 0;
  if ((a3 & 0x100) != 0)
  {
    v26 = sub_25F17905C();
    v27 = objc_opt_self();
    v28 = [v27 colorNamed_];

    if (!v28)
    {
      v29 = [v27 systemBlueColor];
    }

    v25 = sub_25F178E5C();
  }

  KeyPath = swift_getKeyPath();
  (*(v40 + 32))(v15, v10, v41);
  v31 = v39;
  v32 = &v15[*(v38 + 36)];
  *v32 = KeyPath;
  v32[1] = v25;
  sub_25F0B7D50(v15, v31, &qword_27FD46988, &qword_25F17AC18);
  sub_25F0B7E2C(v22, v20, &qword_27FD46990, &qword_25F17AC20);
  v33 = v42;
  sub_25F0B7E2C(v31, v42, &qword_27FD46988, &qword_25F17AC18);
  *a4 = 0;
  *(a4 + 8) = 1;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FD469B0, &qword_25F17AC68);
  sub_25F0B7E2C(v20, a4 + v34[12], &qword_27FD46990, &qword_25F17AC20);
  v35 = a4 + v34[16];
  *v35 = 0;
  *(v35 + 8) = 1;
  sub_25F0B7E2C(v33, a4 + v34[20], &qword_27FD46988, &qword_25F17AC18);
  sub_25F0B7E94(v31, &qword_27FD46988, &qword_25F17AC18);
  sub_25F0B7E94(v22, &qword_27FD46990, &qword_25F17AC20);
  sub_25F0B7E94(v33, &qword_27FD46988, &qword_25F17AC18);
  return sub_25F0B7E94(v20, &qword_27FD46990, &qword_25F17AC20);
}

uint64_t sub_25F0B69D0@<X0>(_BYTE *a1@<X8>)
{
  v38 = a1;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD469D0, &qword_25F17AC78);
  v1 = *(v37 - 8);
  v2 = MEMORY[0x28223BE20](v37);
  v36 = &v34[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v2);
  v5 = &v34[-v4];
  v6 = objc_allocWithZone(MEMORY[0x277D1B1A8]);
  v7 = sub_25F17905C();
  [v6 initWithBundleIdentifier_];

  v8 = [objc_opt_self() imageDescriptorNamed_];
  sub_25F17881C();
  sub_25F178CBC();
  v9 = sub_25F178DFC();
  v11 = v10;
  v13 = v12;
  sub_25F178DAC();
  v14 = sub_25F178DDC();
  v16 = v15;
  v18 = v17;
  sub_25F0B7E1C(v9, v11, v13 & 1);

  sub_25F178E8C();
  v19 = sub_25F178DEC();
  v21 = v20;
  v35 = v22;
  v24 = v23;

  sub_25F0B7E1C(v14, v16, v18 & 1);

  v25 = *(v1 + 16);
  v27 = v36;
  v26 = v37;
  v25(v36, v5, v37);
  v28 = v38;
  v25(v38, v27, v26);
  v29 = &v28[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD469D8, &qword_25F17AC80) + 48)];
  *v29 = v19;
  *(v29 + 1) = v21;
  v30 = v35;
  v31 = v35 & 1;
  v29[16] = v35 & 1;
  *(v29 + 3) = v24;
  sub_25F0B7E0C(v19, v21, v30 & 1);
  v32 = *(v1 + 8);

  v32(v5, v26);
  sub_25F0B7E1C(v19, v21, v31);

  return (v32)(v27, v26);
}

uint64_t sub_25F0B6D08()
{
  v0 = sub_25F176DBC();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = aBlock - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD469C0, &qword_25F17AC70);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = aBlock - v8;
  sub_25F176DAC();
  sub_25F0B7E2C(v9, v7, &qword_27FD469C0, &qword_25F17AC70);
  if ((*(v1 + 48))(v7, 1, v0) == 1)
  {
    sub_25F0B7E94(v9, &qword_27FD469C0, &qword_25F17AC70);
    v9 = v7;
  }

  else
  {
    (*(v1 + 32))(v3, v7, v0);
    v10 = [objc_opt_self() sharedApplication];
    v11 = sub_25F176D5C();
    sub_25F0EC920(MEMORY[0x277D84F90]);
    type metadata accessor for OpenExternalURLOptionsKey(0);
    sub_25F0B8008(&qword_27FD469C8, &unk_25F17AE50);
    v12 = sub_25F178FCC();

    aBlock[4] = nullsub_1;
    aBlock[5] = 0;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_25F0B711C;
    aBlock[3] = &block_descriptor;
    v13 = _Block_copy(aBlock);
    [v10 openURL:v11 options:v12 completionHandler:v13];
    _Block_release(v13);

    (*(v1 + 8))(v3, v0);
  }

  return sub_25F0B7E94(v9, &qword_27FD469C0, &qword_25F17AC70);
}

uint64_t sub_25F0B7024@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v4 = a3;
  sub_25F0B7DB8(a1, a2, a3);

  v6 = sub_25F178E0C();
  v8 = v7;
  v10 = v9;
  v12 = v11;
  if (v4)
  {
    v13 = sub_25F178ECC();
  }

  else
  {
    v13 = 0;
  }

  v14 = v10 & 1;
  sub_25F0B7E0C(v6, v8, v14);
  *a4 = v6;
  *(a4 + 8) = v8;
  *(a4 + 16) = v14;
  *(a4 + 24) = v12;
  *(a4 + 32) = v13;

  sub_25F0B7E1C(v6, v8, v14);
}

uint64_t sub_25F0B711C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

uint64_t default argument 0 of JITBootstrapAgentConnectionIdentifier.init(stringIdentifier:)()
{
  v0 = sub_25F176DFC();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25F176DEC();
  v4 = sub_25F176DDC();
  (*(v1 + 8))(v3, v0);
  return v4;
}

uint64_t sub_25F0B72B4(uint64_t a1, id *a2)
{
  result = sub_25F17906C();
  *a2 = 0;
  return result;
}

uint64_t sub_25F0B732C(uint64_t a1, id *a2)
{
  v3 = sub_25F17907C();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_25F0B73AC@<X0>(uint64_t *a1@<X8>)
{
  sub_25F17908C();
  v2 = sub_25F17905C();

  *a1 = v2;
  return result;
}

uint64_t sub_25F0B73F0()
{
  v0 = sub_25F17908C();
  v1 = MEMORY[0x25F8D5120](v0);

  return v1;
}

uint64_t sub_25F0B742C(uint64_t a1)
{
  sub_25F17908C();
  sub_25F17911C();
}

uint64_t sub_25F0B7480(uint64_t a1)
{
  sub_25F17908C();
  sub_25F1798CC();
  sub_25F17911C();
  v1 = sub_25F17990C();

  return v1;
}

BOOL sub_25F0B7510(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

uint64_t sub_25F0B7574(void *a1, uint64_t *a2)
{
  v2 = sub_25F17908C();
  v4 = v3;
  if (v2 == sub_25F17908C() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_25F17983C();
  }

  return v7 & 1;
}

uint64_t sub_25F0B7608@<X0>(uint64_t *a2@<X8>)
{
  v3 = sub_25F17905C();

  *a2 = v3;
  return result;
}

uint64_t sub_25F0B7650@<X0>(uint64_t *a1@<X8>)
{
  result = sub_25F17908C();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_25F0B767C(uint64_t a1)
{
  v2 = sub_25F0B8008(&qword_27FD469C8, &unk_25F17AE50);
  v3 = sub_25F0B8008(&qword_27FD46A78, &unk_25F17ADA4);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t type metadata accessor for ConnectViewController(uint64_t a1)
{
  result = qword_27FD46838;
  if (!qword_27FD46838)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

__n128 __swift_memcpy18_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u16[0] = a2[1].n128_u16[0];
  *a1 = result;
  return result;
}

uint64_t sub_25F0B77FC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 18))
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

uint64_t sub_25F0B7844(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 18) = 1;
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

    *(result + 18) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_25F0B7898()
{
  result = qword_27FD46848;
  if (!qword_27FD46848)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27FD46828, &qword_25F17AAC8);
    sub_25F0B7998();
    sub_25F0B7D00(&qword_27FD46870, &qword_27FD46878, &qword_25F17ABA0, MEMORY[0x277CE0328]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD46848);
  }

  return result;
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

unint64_t sub_25F0B7998()
{
  result = qword_27FD46850;
  if (!qword_27FD46850)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FD46818, &qword_25F17AAB8);
    sub_25F0B7A24();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD46850);
  }

  return result;
}

unint64_t sub_25F0B7A24()
{
  result = qword_27FD46858;
  if (!qword_27FD46858)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FD46810, &qword_25F17AAB0);
    sub_25F0B7D00(&qword_27FD46860, &qword_27FD46868, &qword_25F17AB98, MEMORY[0x277CE1198]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD46858);
  }

  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_25F0B7B00(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_25F0B7B20(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 16) = v3;
  return result;
}

unint64_t sub_25F0B7B5C()
{
  result = qword_27FD46968;
  if (!qword_27FD46968)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27FD46968);
  }

  return result;
}

uint64_t sub_25F0B7C58()
{

  return MEMORY[0x2821FE8E8](v0, 34, 7);
}

uint64_t sub_25F0B7CE0@<X0>(uint64_t a1@<X8>)
{
  if (*(v1 + 33))
  {
    v2 = 256;
  }

  else
  {
    v2 = 0;
  }

  return sub_25F0B7024(*(v1 + 16), *(v1 + 24), v2 | *(v1 + 32), a1);
}

uint64_t sub_25F0B7D00(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
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

uint64_t sub_25F0B7D50(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

unint64_t sub_25F0B7DB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27FD48850;
  if (!qword_27FD48850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD48850);
  }

  return result;
}

uint64_t sub_25F0B7E0C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_25F0B7E1C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_25F0B7E2C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_25F0B7E94(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_25F0B7F2C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_25F0B7F4C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 4) = v3;
  return result;
}

void sub_25F0B7F88(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v5)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t sub_25F0B8008(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for OpenExternalURLOptionsKey(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PreviewAgentUtilities(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for PreviewAgentUtilities(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

uint64_t PreviewSceneAgentProxy.sceneClientSettingsUpdates.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD46B40, &qword_25F17AF00);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v10 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD46B48, &qword_25F17AF08);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v10 - v7;
  (*(v6 + 16))(&v10 - v7, *(v0 + 40) + OBJC_IVAR____TtCC15PreviewShellKit22PreviewSceneAgentProxyP33_3E64D4B6ABF6A6AD0F98F116D965CFCA13SceneDelegate_clientSettingsUpdates, v5);
  MEMORY[0x25F8D5300](&type metadata for SceneClientSettingsUpdate);
  sub_25F17936C();
  (*(v2 + 8))(v4, v1);
  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_25F0B838C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t *a7)
{
  v9 = v7;
  v8[9] = a6;
  v8[10] = v9;
  v8[7] = a4;
  v8[8] = a5;
  v8[5] = a2;
  v8[6] = a3;
  v8[4] = a1;
  v8[11] = *v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD46D00, &qword_25F17B140);
  v8[12] = v11;
  v8[13] = *(v11 - 8);
  v8[14] = swift_task_alloc();
  v12 = sub_25F1780FC();
  v8[15] = v12;
  v13 = *(v12 - 8);
  v8[16] = v13;
  v8[17] = *(v13 + 64);
  v8[18] = swift_task_alloc();
  v8[19] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD46BB0, &qword_25F17AF30);
  v8[20] = swift_task_alloc();
  v14 = sub_25F1787BC();
  v8[21] = v14;
  v8[22] = *(v14 - 8);
  v8[23] = swift_task_alloc();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD46D08, &qword_25F17B148);
  v8[24] = v15;
  v16 = *(v15 - 8);
  v8[25] = v16;
  v8[26] = *(v16 + 64);
  v8[27] = swift_task_alloc();
  v8[28] = swift_task_alloc();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD46B88, &qword_25F17AF28);
  v8[29] = v17;
  v8[30] = *(v17 - 8);
  v8[31] = swift_task_alloc();
  v18 = sub_25F1783FC();
  v8[32] = v18;
  v8[33] = *(v18 - 8);
  v19 = swift_task_alloc();
  v20 = *a7;
  v8[34] = v19;
  v8[35] = v20;
  v8[36] = sub_25F17930C();
  v8[37] = sub_25F1792FC();
  v22 = sub_25F1792CC();
  v8[38] = v22;
  v8[39] = v21;

  return MEMORY[0x2822009F8](sub_25F0B8710, v22, v21);
}

uint64_t sub_25F0B8710()
{
  v1 = v0[34];
  v2 = v0[9];
  v3 = v0[10];
  v4 = v0[8];
  v5 = v0[5];
  (*(v0[33] + 104))(v1, *MEMORY[0x277D404B8], v0[32]);
  sub_25F17859C();
  swift_allocObject();
  LOBYTE(v17) = 2;
  *(v3 + 16) = sub_25F17858C();
  v6 = OBJC_IVAR____TtC15PreviewShellKit22PreviewSceneAgentProxy_currentUpdateDelegate;
  v0[40] = OBJC_IVAR____TtC15PreviewShellKit22PreviewSceneAgentProxy_currentUpdateDelegate;
  v7 = v3 + v6;
  *v7 = 0u;
  *(v7 + 16) = 0u;
  *(v7 + 32) = 0;
  *(v3 + 24) = [objc_allocWithZone(PSScene) initWithScene_];
  v8 = OBJC_IVAR____TtC15PreviewShellKit22PreviewSceneAgentProxy_messageStreamHub;
  v0[41] = OBJC_IVAR____TtC15PreviewShellKit22PreviewSceneAgentProxy_messageStreamHub;
  v9 = (v3 + v8);
  *v9 = v4;
  v9[1] = v2;

  v10 = sub_25F176F4C();
  v11 = [v10 pid];

  *(v3 + 32) = v11;
  sub_25F176E1C();
  v12 = sub_25F177E3C();
  v13 = sub_25F0BF2A8(&qword_27FD46C28, MEMORY[0x277D40F10], MEMORY[0x277D40EE8]);
  sub_25F176EFC();
  v14 = swift_task_alloc();
  v0[42] = v14;
  *v14 = v0;
  v14[1] = sub_25F0B8950;
  v15 = v0[31];

  return MEMORY[0x2821A1908](v15, v12, v12, v13);
}

uint64_t sub_25F0B8950()
{
  v2 = *v1;
  *(*v1 + 344) = v0;

  if (v0)
  {

    v3 = *(v2 + 304);
    v4 = *(v2 + 312);
    v5 = sub_25F0B9398;
  }

  else
  {
    v3 = *(v2 + 304);
    v4 = *(v2 + 312);
    v5 = sub_25F0B8A6C;
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

uint64_t sub_25F0B8A6C()
{
  v58 = v0[35];
  v2 = v0[30];
  v1 = v0[31];
  v3 = v0[29];
  v60 = v0[28];
  v66 = v0[27];
  v4 = v0[24];
  v54 = v0[25];
  v56 = v0[26];
  v5 = v0[22];
  v6 = v0[23];
  v50 = v0[21];
  v61 = v0[20];
  v7 = v0[10];
  v8 = v0[5];
  v64 = v0[4];

  (*(v2 + 32))(v7 + OBJC_IVAR____TtC15PreviewShellKit22PreviewSceneAgentProxy_connectionSender, v1, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD46D10, &qword_25F17B150);
  *(swift_allocObject() + 16) = v8;
  v62 = v8;
  v9 = sub_25F1770FC();
  *(v7 + 48) = v9;
  v10 = objc_allocWithZone(type metadata accessor for PreviewSceneAgentProxy.SceneDelegate(0));
  v11 = swift_retain_n();
  v59 = v9;
  *(v7 + 40) = sub_25F0BD704(v11);
  v12 = *(v4 + 48);
  sub_25F1787CC();
  sub_25F1792FC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FD46C38, qword_25F17C0E0);
  v13 = sub_25F177F3C();

  (*(v5 + 8))(v6, v50);
  *(v60 + v12) = v13;
  sub_25F0B7E2C(v60, v66, &qword_27FD46D08, &qword_25F17B148);

  v14 = OBJC_IVAR____TtC15PreviewShellKit22PreviewSceneAgentProxy_disconnected;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD46B60, &qword_25F17AF10);
  v16 = v7;
  (*(*(v15 - 8) + 32))(v7 + v14, v66, v15);

  sub_25F17711C();
  [v62 setDelegate_];
  v17 = *(v7 + 40);
  v0[2] = v17;
  sub_25F0B7E2C(v60, v66, &qword_27FD46D08, &qword_25F17B148);
  v18 = *(v54 + 80);
  v19 = (v18 + 16) & ~v18;
  v56 += 7;
  v20 = swift_allocObject();
  sub_25F0C0520(v66, v20 + v19);
  *(v20 + ((v19 + v56) & 0xFFFFFFFFFFFFFFF8)) = v16;
  sub_25F0BF2A8(&qword_27FD46CE0, type metadata accessor for PreviewSceneAgentProxy.SceneDelegate, &unk_25F17B104);
  v21 = v16;

  v22 = v17;
  sub_25F1783EC();

  v23 = sub_25F17932C();
  v51 = *(*(v23 - 8) + 56);
  v51(v61, 1, 1, v23);
  sub_25F0B7E2C(v60, v66, &qword_27FD46D08, &qword_25F17B148);

  v24 = sub_25F1792FC();
  v25 = (v18 + 40) & ~v18;
  v26 = (v25 + v56) & 0xFFFFFFFFFFFFFFF8;
  v27 = swift_allocObject();
  v27[2] = v24;
  v27[3] = MEMORY[0x277D85700];
  v27[4] = v64;
  sub_25F0C0520(v66, v27 + v25);
  *(v27 + v26) = v21;
  sub_25F0CD9E8(0, 0, v61, &unk_25F17B160, v27);

  v51(v61, 1, 1, v23);
  sub_25F0B7E2C(v60, v66, &qword_27FD46D08, &qword_25F17B148);
  v63 = v62;

  v28 = sub_25F1792FC();
  v29 = (v26 + 15) & 0xFFFFFFFFFFFFFFF8;
  v30 = swift_allocObject();
  v30[2] = v28;
  v30[3] = MEMORY[0x277D85700];
  v30[4] = v21;
  sub_25F0C0520(v66, v30 + v25);
  *(v30 + v26) = v64;
  *(v30 + v29) = v63;
  *(v30 + ((v29 + 15) & 0xFFFFFFFFFFFFFFF8)) = v59;
  sub_25F0CD9E8(0, 0, v61, &unk_25F17B170, v30);

  v31 = v0[28];
  if (v58)
  {
    v32 = v0[35];
    v33 = v0[5];
    swift_unknownObjectRelease();

    v34 = v31;
  }

  else
  {
    v57 = v0[18];
    v53 = v0[16];
    v35 = v0[14];
    v55 = v0[15];
    v49 = v0[19];
    v52 = v0[13];
    v48 = v0[12];
    v36 = v0[10];
    v37 = v0[7];
    v65 = v0[5];
    v38 = *(v36 + 24);
    v67 = v0[28];
    ObjectType = swift_getObjectType();
    v40 = *(v37 + 48);
    v41 = v38;
    v42 = v40(ObjectType, v37);
    [v41 updateSceneSettings:v42 with:0];

    (*(v37 + 56))(ObjectType, v37);

    sub_25F177EBC();

    (*(v52 + 8))(v35, v48);
    v0[3] = v36;
    (*(v53 + 16))(v57, v49, v55);
    v43 = (*(v53 + 80) + 16) & ~*(v53 + 80);
    v44 = swift_allocObject();
    (*(v53 + 32))(v44 + v43, v57, v55);
    sub_25F0BF2A8(&qword_27FD46CF8, type metadata accessor for PreviewSceneAgentProxy, &protocol conformance descriptor for PreviewSceneAgentProxy);
    sub_25F17848C();

    swift_unknownObjectRelease();

    (*(v53 + 8))(v49, v55);
    v34 = v67;
  }

  sub_25F0B7E94(v34, &qword_27FD46D08, &qword_25F17B148);

  v45 = v0[1];
  v46 = v0[10];

  return v45(v46);
}

uint64_t sub_25F0B9398()
{
  v1 = v0[40];
  v2 = v0[10];
  v3 = v0[5];

  swift_unknownObjectRelease();

  sub_25F0B7E94(v2 + v1, &qword_27FD46B70, &qword_25F17AF18);

  swift_deallocPartialClassInstance();

  v4 = v0[1];

  return v4();
}

void sub_25F0B9540(void *a1, void *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD46960, &qword_25F17B190);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_25F17AEE0;
  *(inited + 32) = a1;
  v5 = a1;
  sub_25F0BFBBC(inited);
  swift_setDeallocating();
  swift_arrayDestroy();
  sub_25F0C1014(0, &qword_27FD46CE8, 0x277CF0B58);
  sub_25F0C0358();
  v6 = sub_25F17948C();

  [a2 sendActions_];
}

void sub_25F0B962C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_25F17715C();
  v57 = *(v4 - 1);
  v58 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = &v52 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_25F17713C();
  v55 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = sub_25F17712C();
  v53 = *(v54 - 8);
  MEMORY[0x28223BE20](v54);
  v52 = &v52 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_25F17888C();
  v59 = *(v11 - 8);
  v60 = v11;
  MEMORY[0x28223BE20](v11);
  v62 = &v52 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = sub_25F177DCC();
  v56 = *(v61 - 8);
  v13 = MEMORY[0x28223BE20](v61);
  v15 = &v52 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v63 = &v52 - v16;
  v17 = sub_25F177D9C();
  MEMORY[0x28223BE20](v17);
  v19 = &v52 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25F17930C();
  sub_25F1792FC();
  sub_25F1792DC();

  v20 = OBJC_IVAR____TtC15PreviewShellKit22PreviewSceneAgentProxy_currentUpdateDelegate;
  swift_beginAccess();
  sub_25F0B7E2C(v2 + v20, &v64, &qword_27FD46B70, &qword_25F17AF18);
  if (v65)
  {
    sub_25F0C0C84(&v64, v66);
    sub_25F0C0C9C(a1, v19);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload <= 1)
    {
      if (EnumCaseMultiPayload)
      {
        v45 = *&v19[*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FD46D40, &qword_25F17B188) + 48)];
        v46 = v55;
        (*(v55 + 32))(v9, v19, v7);
        v47 = v67;
        v48 = v68;
        __swift_project_boxed_opaque_existential_1(v66, v67);
        (*(v48 + 24))(v9, v45, v47, v48);

        (*(v46 + 8))(v9, v7);
      }

      else
      {
        v25 = v56;
        v26 = v63;
        v27 = v61;
        (*(v56 + 32))(v63, v19, v61);
        v28 = v62;
        sub_25F17884C();
        (*(v25 + 16))(v15, v26, v27);
        v29 = sub_25F17887C();
        v30 = sub_25F17955C();
        if (os_log_type_enabled(v29, v30))
        {
          v31 = swift_slowAlloc();
          v58 = swift_slowAlloc();
          *&v64 = v58;
          *v31 = 136446210;
          v32 = v52;
          sub_25F177DAC();
          sub_25F0BF2A8(&qword_27FD46BA0, MEMORY[0x277D40FF8], MEMORY[0x277D41010]);
          v33 = v54;
          v34 = sub_25F17980C();
          v36 = v35;
          (*(v53 + 8))(v32, v33);
          v37 = *(v25 + 8);
          v37(v15, v27);
          v38 = sub_25F0BECF0(v34, v36, &v64);

          *(v31 + 4) = v38;
          _os_log_impl(&dword_25F0B3000, v29, v30, "PreviewSceneAgent received handshake for update %{public}s", v31, 0xCu);
          v39 = v58;
          __swift_destroy_boxed_opaque_existential_1Tm(v58);
          MEMORY[0x25F8D6230](v39, -1, -1);
          MEMORY[0x25F8D6230](v31, -1, -1);

          (*(v59 + 8))(v62, v60);
        }

        else
        {

          v37 = *(v25 + 8);
          v37(v15, v27);
          (*(v59 + 8))(v28, v60);
        }

        v49 = v67;
        v50 = v68;
        __swift_project_boxed_opaque_existential_1(v66, v67);
        v51 = v63;
        (*(v50 + 16))(v63, v49, v50);
        v37(v51, v27);
      }
    }

    else if (EnumCaseMultiPayload == 2)
    {
      v40 = v57;
      v41 = v19;
      v42 = v58;
      (*(v57 + 32))(v6, v41, v58);
      v43 = v67;
      v44 = v68;
      __swift_project_boxed_opaque_existential_1(v66, v67);
      (*(v44 + 48))(v6, v43, v44);
      (*(v40 + 8))(v6, v42);
    }

    else
    {
      v22 = v67;
      v23 = v68;
      if (EnumCaseMultiPayload == 3)
      {
        __swift_project_boxed_opaque_existential_1(v66, v67);
        (*(v23 + 32))(v22, v23);
      }

      else
      {
        __swift_project_boxed_opaque_existential_1(v66, v67);
        (*(v23 + 40))(v22, v23);
      }
    }

    __swift_destroy_boxed_opaque_existential_1Tm(v66);
  }

  else
  {
    sub_25F0B7E94(&v64, &qword_27FD46B70, &qword_25F17AF18);
    v24 = sub_25F177D8C();
    [v24 invalidate];
  }
}

uint64_t sub_25F0B9E40(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = sub_25F1787BC();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD46D08, &qword_25F17B148) + 48));
  sub_25F1787CC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD46D18, &qword_25F17B178);
  sub_25F0B7D00(&qword_27FD46D20, &qword_27FD46D18, &qword_25F17B178, MEMORY[0x277D40420]);
  sub_25F17804C();
  (*(v6 + 8))(v8, v5);
  v11 = a3;
  sub_25F0BF2A8(&unk_27FD46C00, type metadata accessor for PreviewSceneAgentProxy, &protocol conformance descriptor for PreviewSceneAgentProxy);
  return sub_25F1780BC();
}

uint64_t sub_25F0BA078(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v6[5] = a5;
  v6[6] = a6;
  v6[7] = *a6;
  v8 = sub_25F1787BC();
  v6[8] = v8;
  v6[9] = *(v8 - 8);
  v6[10] = swift_task_alloc();
  v9 = sub_25F17813C();
  v6[11] = v9;
  v6[12] = *(v9 - 8);
  v10 = swift_task_alloc();
  v6[13] = v10;
  v6[14] = sub_25F17930C();
  v6[15] = sub_25F1792FC();
  v6[2] = a4;
  v11 = swift_task_alloc();
  v6[16] = v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD46D28, &qword_25F17B180);
  v13 = sub_25F0B7D00(&qword_27FD46D38, &qword_27FD46D28, &qword_25F17B180, MEMORY[0x277D40D88]);
  *v11 = v6;
  v11[1] = sub_25F0BA27C;

  return MEMORY[0x2821A09E8](v10, v12, v13);
}

uint64_t sub_25F0BA27C()
{

  v1 = sub_25F1792CC();

  return MEMORY[0x2822009F8](sub_25F0BA3B8, v1, v0);
}

uint64_t sub_25F0BA3B8()
{
  v1 = v0[5];

  v0[3] = *(v1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD46D08, &qword_25F17B148) + 48));
  sub_25F1787CC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD46D18, &qword_25F17B178);
  sub_25F0B7D00(&qword_27FD46D20, &qword_27FD46D18, &qword_25F17B178, MEMORY[0x277D40420]);
  sub_25F17804C();
  v3 = v0[12];
  v2 = v0[13];
  v4 = v0[11];
  v5 = v0[6];
  (*(v0[9] + 8))(v0[10], v0[8]);
  v0[4] = v5;
  sub_25F0BF2A8(&unk_27FD46C00, type metadata accessor for PreviewSceneAgentProxy, &protocol conformance descriptor for PreviewSceneAgentProxy);
  sub_25F1780BC();
  (*(v3 + 8))(v2, v4);

  v6 = v0[1];

  return v6();
}

uint64_t sub_25F0BA5B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[17] = a7;
  v8[18] = a8;
  v8[15] = a5;
  v8[16] = a6;
  v8[14] = a4;
  v10 = sub_25F1787BC();
  v8[19] = v10;
  v8[20] = *(v10 - 8);
  v8[21] = swift_task_alloc();
  v11 = sub_25F17813C();
  v8[22] = v11;
  v8[23] = *(v11 - 8);
  v12 = swift_task_alloc();
  v8[24] = v12;
  v8[25] = sub_25F17930C();
  v8[26] = sub_25F1792FC();
  v8[10] = a4;
  v13 = swift_task_alloc();
  v8[27] = v13;
  v14 = type metadata accessor for PreviewSceneAgentProxy(0);
  v15 = sub_25F0BF2A8(&qword_27FD46CF8, type metadata accessor for PreviewSceneAgentProxy, &protocol conformance descriptor for PreviewSceneAgentProxy);
  *v13 = v8;
  v13[1] = sub_25F0BA784;

  return MEMORY[0x2821A09E8](v12, v14, v15);
}

uint64_t sub_25F0BA784()
{

  v1 = sub_25F1792CC();

  return MEMORY[0x2822009F8](sub_25F0BA8C0, v1, v0);
}

uint64_t sub_25F0BA8C0()
{
  v1 = *(v0 + 192);
  v2 = *(v0 + 168);
  v12 = *(v0 + 184);
  v13 = *(v0 + 176);
  v4 = *(v0 + 152);
  v3 = *(v0 + 160);
  v11 = *(v0 + 136);
  v5 = *(v0 + 120);
  v6 = *(v0 + 128);
  v10 = *(v0 + 112);

  *(v0 + 88) = *(v5 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD46D08, &qword_25F17B148) + 48));
  sub_25F1787CC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD46D18, &qword_25F17B178);
  sub_25F0B7D00(&qword_27FD46D20, &qword_27FD46D18, &qword_25F17B178, MEMORY[0x277D40420]);
  sub_25F17805C();
  (*(v3 + 8))(v2, v4);
  *(v0 + 96) = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD46D28, &qword_25F17B180);
  sub_25F0B7D00(&qword_27FD46D30, &qword_27FD46D28, &qword_25F17B180, MEMORY[0x277D40D80]);
  sub_25F1780BC();
  *(v0 + 104) = *(v10 + 40);
  type metadata accessor for PreviewSceneAgentProxy.SceneDelegate(0);
  sub_25F0BF2A8(&qword_27FD46CD8, type metadata accessor for PreviewSceneAgentProxy.SceneDelegate, &unk_25F17B0DC);
  sub_25F1780BC();
  sub_25F0E6754(v11);
  *(v0 + 48) = 0;
  *(v0 + 32) = 0u;
  *(v0 + 16) = 0u;
  v7 = OBJC_IVAR____TtC15PreviewShellKit22PreviewSceneAgentProxy_currentUpdateDelegate;
  swift_beginAccess();
  sub_25F0BEC80(v0 + 16, v10 + v7);
  swift_endAccess();
  sub_25F17711C();
  (*(v12 + 8))(v1, v13);

  v8 = *(v0 + 8);

  return v8();
}

uint64_t PreviewSceneAgentProxy.onDisconnect(_:)(uint64_t a1, uint64_t a2)
{
  sub_25F17930C();
  sub_25F1792FC();
  sub_25F1792DC();

  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_25F0BEB70;
  *(v5 + 24) = v4;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD46B60, &qword_25F17AF10);
  sub_25F177F4C();
}

uint64_t sub_25F0BAD3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v89 = a2;
  v73 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD46BB0, &qword_25F17AF30);
  MEMORY[0x28223BE20](v4 - 8);
  v84 = &v66[-v5];
  v6 = sub_25F177E1C();
  MEMORY[0x28223BE20](v6 - 8);
  v81 = &v66[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = sub_25F177D5C();
  v85 = *(v8 - 8);
  v86 = v8;
  v9 = MEMORY[0x28223BE20](v8);
  v82 = v10;
  v83 = &v66[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v9);
  v87 = &v66[-v11];
  v72 = sub_25F17712C();
  v71 = *(v72 - 8);
  MEMORY[0x28223BE20](v72);
  v70 = &v66[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = sub_25F177D3C();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v66[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v17 = sub_25F177D7C();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = &v66[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v21 = sub_25F17888C();
  v79 = *(v21 - 8);
  v80 = v21;
  MEMORY[0x28223BE20](v21);
  v23 = &v66[-((v22 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_25F17930C();
  sub_25F1792FC();
  sub_25F1792DC();

  sub_25F0BEC1C(a3, v92);
  v24 = OBJC_IVAR____TtC15PreviewShellKit22PreviewSceneAgentProxy_currentUpdateDelegate;
  v25 = v91;
  swift_beginAccess();
  sub_25F0BEC80(v92, v25 + v24);
  swift_endAccess();
  sub_25F17884C();
  v26 = *(v18 + 16);
  v88 = v17;
  v75 = v18 + 16;
  v74 = v26;
  v26(v20, v89, v17);
  v77 = v14;
  v27 = *(v14 + 16);
  v76 = v16;
  v28 = v16;
  v29 = v27;
  v30 = v73;
  v90 = v13;
  v27(v28);
  v78 = v23;
  v31 = sub_25F17887C();
  v32 = sub_25F17955C();
  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    v69 = swift_slowAlloc();
    v92[0] = v69;
    *v33 = 136446722;
    v34 = v70;
    v68 = v31;
    sub_25F177D6C();
    sub_25F0BF2A8(&qword_27FD46BA0, MEMORY[0x277D40FF8], MEMORY[0x277D41010]);
    v35 = v72;
    v36 = sub_25F17980C();
    v67 = v32;
    v37 = v30;
    v39 = v38;
    (*(v71 + 8))(v34, v35);
    (*(v18 + 8))(v20, v88);
    v40 = sub_25F0BECF0(v36, v39, v92);
    v42 = v85;
    v41 = v86;
    v30 = v37;

    *(v33 + 4) = v40;
    *(v33 + 12) = 2082;
    v43 = v87;
    v44 = v76;
    sub_25F177CFC();
    sub_25F0BF2A8(&qword_27FD46BA8, MEMORY[0x277D40E58], MEMORY[0x277D40E70]);
    v45 = sub_25F17980C();
    v47 = v46;
    (*(v42 + 8))(v43, v41);
    (*(v77 + 8))(v44, v90);
    v48 = sub_25F0BECF0(v45, v47, v92);

    *(v33 + 14) = v48;
    *(v33 + 22) = 2082;
    *(v33 + 24) = sub_25F0BECF0(0x79747265706F7250, 0xEC0000007473694CLL, v92);
    v49 = v68;
    _os_log_impl(&dword_25F0B3000, v68, v67, "PreviewSceneAgentProxy performing update %{public}s for entry point %{public}s, expecting %{public}s", v33, 0x20u);
    v50 = v69;
    swift_arrayDestroy();
    MEMORY[0x25F8D6230](v50, -1, -1);
    MEMORY[0x25F8D6230](v33, -1, -1);
  }

  else
  {

    (*(v77 + 8))(v76, v90);
    (*(v18 + 8))(v20, v88);
  }

  (*(v79 + 8))(v78, v80);
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD46B80, &qword_25F17AF20);
  v52 = *(v51 + 48);
  v53 = v81;
  v29(v81, v30, v90);
  v74(v53 + v52, v89, v88);
  (*(*(v51 - 8) + 56))(v53, 0, 1, v51);
  sub_25F177F8C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD46B88, &qword_25F17AF28);
  sub_25F0B7D00(&qword_27FD46B90, &qword_27FD46B88, &qword_25F17AF28, MEMORY[0x277D40E10]);
  sub_25F0BF2A8(&qword_27FD46B98, MEMORY[0x277D40EF8], MEMORY[0x277D40EF0]);
  v54 = v91;
  v55 = sub_25F177A6C();
  sub_25F0C0FB4(v53, MEMORY[0x277D40EF8]);
  LODWORD(v52) = *(v54 + 32);
  v56 = v87;
  sub_25F177CFC();
  v57 = sub_25F17932C();
  v58 = v84;
  (*(*(v57 - 8) + 56))(v84, 1, 1, v57);
  v59 = v85;
  v60 = v86;
  v61 = v83;
  (*(v85 + 16))(v83, v56, v86);
  v62 = (*(v59 + 80) + 44) & ~*(v59 + 80);
  v63 = swift_allocObject();
  *(v63 + 16) = 0;
  *(v63 + 24) = 0;
  *(v63 + 32) = v55;
  *(v63 + 40) = v52;
  (*(v59 + 32))(v63 + v62, v61, v60);
  v64 = sub_25F0BC7CC(0, 0, v58, &unk_25F17B1A8, v63);
  (*(v59 + 8))(v56, v60);
  return v64;
}

uint64_t PreviewSceneAgentProxy.perform<A>(update:with:delegate:expecting:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v77 = a6;
  v78 = a5;
  v83 = a3;
  v84 = a2;
  v82 = a1;
  v8 = sub_25F177E1C();
  MEMORY[0x28223BE20](v8 - 8);
  v76 = &v60[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_25F177D5C();
  v80 = *(v10 - 8);
  v81 = v10;
  MEMORY[0x28223BE20](v10);
  v79 = &v60[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v68 = sub_25F17712C();
  v67 = *(v68 - 8);
  MEMORY[0x28223BE20](v68);
  v66 = &v60[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = sub_25F177D3C();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v60[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v17 = sub_25F177D7C();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = &v60[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v21 = sub_25F17888C();
  v73 = *(v21 - 8);
  v74 = v21;
  MEMORY[0x28223BE20](v21);
  v23 = &v60[-((v22 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_25F17930C();
  sub_25F1792FC();
  sub_25F1792DC();

  sub_25F0BEC1C(v83, v85);
  v24 = OBJC_IVAR____TtC15PreviewShellKit22PreviewSceneAgentProxy_currentUpdateDelegate;
  swift_beginAccess();
  v75 = v7;
  sub_25F0BEC80(v85, v7 + v24);
  swift_endAccess();
  sub_25F17884C();
  v25 = *(v18 + 16);
  v83 = v17;
  v71 = v25;
  v25(v20, v84, v17);
  v69 = v14;
  v26 = *(v14 + 16);
  v70 = v16;
  v27 = v82;
  v26(v16);
  v72 = v23;
  v28 = sub_25F17887C();
  v29 = sub_25F17955C();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v63 = swift_slowAlloc();
    v85[0] = v63;
    *v30 = 136446722;
    v31 = v66;
    v62 = v28;
    sub_25F177D6C();
    sub_25F0BF2A8(&qword_27FD46BA0, MEMORY[0x277D40FF8], MEMORY[0x277D41010]);
    v61 = v29;
    v32 = v68;
    v33 = sub_25F17980C();
    v64 = v13;
    v65 = v26;
    v35 = v34;
    (*(v67 + 8))(v31, v32);
    (*(v18 + 8))(v20, v83);
    v36 = sub_25F0BECF0(v33, v35, v85);

    *(v30 + 4) = v36;
    *(v30 + 12) = 2082;
    v37 = v79;
    v38 = v70;
    sub_25F177CFC();
    sub_25F0BF2A8(&qword_27FD46BA8, MEMORY[0x277D40E58], MEMORY[0x277D40E70]);
    v39 = v81;
    v40 = sub_25F17980C();
    v42 = v41;
    v43 = v39;
    v13 = v64;
    (*(v80 + 8))(v37, v43);
    (*(v69 + 8))(v38, v13);
    v44 = sub_25F0BECF0(v40, v42, v85);

    *(v30 + 14) = v44;
    *(v30 + 22) = 2082;
    v26 = v65;
    v45 = sub_25F17992C();
    v47 = sub_25F0BECF0(v45, v46, v85);

    *(v30 + 24) = v47;
    v48 = v62;
    _os_log_impl(&dword_25F0B3000, v62, v61, "PreviewSceneAgentProxy performing update %{public}s for entry point %{public}s, expecting %{public}s", v30, 0x20u);
    v49 = v63;
    swift_arrayDestroy();
    MEMORY[0x25F8D6230](v49, -1, -1);
    v27 = v82;
    MEMORY[0x25F8D6230](v30, -1, -1);
  }

  else
  {

    (*(v69 + 8))(v70, v13);
    (*(v18 + 8))(v20, v83);
  }

  (*(v73 + 8))(v72, v74);
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD46B80, &qword_25F17AF20);
  v51 = *(v50 + 48);
  v52 = v76;
  (v26)(v76, v27, v13);
  v71(v52 + v51, v84, v83);
  (*(*(v50 - 8) + 56))(v52, 0, 1, v50);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD46B88, &qword_25F17AF28);
  sub_25F0B7D00(&qword_27FD46B90, &qword_27FD46B88, &qword_25F17AF28, MEMORY[0x277D40E10]);
  sub_25F0BF2A8(&qword_27FD46B98, MEMORY[0x277D40EF8], MEMORY[0x277D40EF0]);
  v53 = v75;
  v54 = v78;
  v55 = sub_25F177A6C();
  sub_25F0C0FB4(v52, MEMORY[0x277D40EF8]);
  v56 = *(v53 + 32);
  v57 = v79;
  sub_25F177CFC();
  v58 = Task<>.enhancingPreviewAgentConnectionError(for:_:)(v56, v57, v55, v54);

  (*(v80 + 8))(v57, v81);
  return v58;
}

uint64_t PreviewSceneAgentProxy.perform(update:with:delegate:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD46BB0, &qword_25F17AF30);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v16 - v7;
  v9 = sub_25F0BAD3C(a1, a2, a3);
  v10 = sub_25F17932C();
  (*(*(v10 - 8) + 56))(v8, 1, 1, v10);
  sub_25F17930C();

  v11 = sub_25F1792FC();
  v12 = swift_allocObject();
  v13 = MEMORY[0x277D85700];
  v12[2] = v11;
  v12[3] = v13;
  v12[4] = v9;
  v14 = sub_25F0BC520(0, 0, v8, &unk_25F17AF40, v12);

  return v14;
}

uint64_t sub_25F0BC18C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_25F177F8C();
  v4[2] = v6;
  v4[3] = *(v6 - 8);
  v7 = swift_task_alloc();
  v4[4] = v7;
  v4[5] = sub_25F17930C();
  v4[6] = sub_25F1792FC();
  v8 = swift_task_alloc();
  v4[7] = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FD46C38, qword_25F17C0E0);
  *v8 = v4;
  v8[1] = sub_25F0BC2D8;
  v10 = MEMORY[0x277D84950];

  return MEMORY[0x282200430](v7, a4, v6, v9, v10);
}

uint64_t sub_25F0BC2D8()
{
  v2 = *v1;
  *(*v1 + 64) = v0;

  if (v0)
  {
    v3 = sub_25F1792CC();
    v5 = v4;
    v6 = sub_25F0BC4B0;
  }

  else
  {
    (*(v2[3] + 8))(v2[4], v2[2]);
    v3 = sub_25F1792CC();
    v5 = v7;
    v6 = sub_25F0BC440;
  }

  return MEMORY[0x2822009F8](v6, v3, v5);
}

uint64_t sub_25F0BC440()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_25F0BC4B0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_25F0BC520(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD46BB0, &qword_25F17AF30);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v22 - v9;
  sub_25F0B7E2C(a3, v22 - v9, &qword_27FD46BB0, &qword_25F17AF30);
  v11 = sub_25F17932C();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_25F0B7E94(v10, &qword_27FD46BB0, &qword_25F17AF30);
  }

  else
  {
    sub_25F17931C();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_25F1792CC();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_25F1790DC() + 32;

      if (v17 | v15)
      {
        v23[0] = 0;
        v23[1] = 0;
        v19 = v23;
        v23[2] = v15;
        v23[3] = v17;
      }

      else
      {
        v19 = 0;
      }

      v22[1] = 7;
      v22[2] = v19;
      v22[3] = v18;
      v20 = swift_task_create();

      sub_25F0B7E94(a3, &qword_27FD46BB0, &qword_25F17AF30);

      return v20;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_25F0B7E94(a3, &qword_27FD46BB0, &qword_25F17AF30);
  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_25F0BC7CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD46BB0, &qword_25F17AF30);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v22 - v9;
  sub_25F0B7E2C(a3, v22 - v9, &qword_27FD46BB0, &qword_25F17AF30);
  v11 = sub_25F17932C();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_25F0B7E94(v10, &qword_27FD46BB0, &qword_25F17AF30);
  }

  else
  {
    sub_25F17931C();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_25F1792CC();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v22[0] = a2;
      v18 = sub_25F1790DC() + 32;
      sub_25F177F8C();

      if (v17 | v15)
      {
        v23[0] = 0;
        v23[1] = 0;
        v19 = v23;
        v23[2] = v15;
        v23[3] = v17;
      }

      else
      {
        v19 = 0;
      }

      v22[1] = 7;
      v22[2] = v19;
      v22[3] = v18;
      v20 = swift_task_create();

      sub_25F0B7E94(a3, &qword_27FD46BB0, &qword_25F17AF30);

      return v20;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_25F0B7E94(a3, &qword_27FD46BB0, &qword_25F17AF30);
  sub_25F177F8C();
  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

uint64_t PreviewSceneAgentProxy.generateStaticOutput<A>(for:expecting:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v8 = sub_25F177E1C();
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD46B80, &qword_25F17AF20);
  (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD46B88, &qword_25F17AF28);
  sub_25F0B7D00(&qword_27FD46B90, &qword_27FD46B88, &qword_25F17AF28, MEMORY[0x277D40E10]);
  sub_25F0BF2A8(&qword_27FD46B98, MEMORY[0x277D40EF8], MEMORY[0x277D40EF0]);
  v12 = sub_25F177A6C();
  sub_25F0C0FB4(v10, MEMORY[0x277D40EF8]);
  v13 = Task<>.enhancingPreviewAgentConnectionError(for:_:)(*(v5 + 32), a1, v12, a3);

  return v13;
}

{
  v6 = sub_25F177D5C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25F177D4C();
  v11 = PreviewSceneAgentProxy.generateStaticOutput<A>(for:expecting:)(v9, v10, a3, a4);
  (*(v7 + 8))(v9, v6);
  return v11;
}

uint64_t PreviewSceneAgentProxy.sendCommitPostSynchronize()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD46BB8, &qword_25F183B60);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v6[-v1];
  sub_25F17930C();
  sub_25F1792FC();
  sub_25F1792DC();

  v6[15] = 0;
  v3 = sub_25F178F7C();
  (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
  v4 = sub_25F1770CC();
  sub_25F0B7E94(v2, &qword_27FD46BB8, &qword_25F183B60);
  return v4;
}

uint64_t PreviewSceneAgentProxy.sendRequestPreferredSize()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD46BB8, &qword_25F183B60);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v9[-v1];
  sub_25F17930C();
  sub_25F1792FC();
  sub_25F1792DC();

  v9[15] = 1;
  v3 = sub_25F178F7C();
  (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
  sub_25F177D9C();
  type metadata accessor for CGSize(0);
  sub_25F0BF4D8(v4, v5, v6);
  sub_25F0BF2A8(&qword_27FD46BC8, MEMORY[0x277D40E80], MEMORY[0x277D40E78]);
  sub_25F1770EC();
  v7 = sub_25F1770DC();
  sub_25F0B7E94(v2, &qword_27FD46BB8, &qword_25F183B60);
  return v7;
}

uint64_t PreviewSceneAgentProxy.addMessageStream(for:)(uint64_t a1)
{
  v2 = v1;
  v26 = a1;
  v3 = sub_25F17776C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD46BB0, &qword_25F17AF30);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = v25 - v8;
  v10 = sub_25F1787BC();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD46BD0, &unk_25F17AF50);
  v15 = *(v14 - 8);
  v28 = v14;
  v29 = v15;
  MEMORY[0x28223BE20](v14);
  v17 = v25 - v16;
  sub_25F1787CC();
  sub_25F1774BC();
  v27 = sub_25F17940C();
  (*(v11 + 8))(v13, v10);
  v19 = *(v2 + OBJC_IVAR____TtC15PreviewShellKit22PreviewSceneAgentProxy_messageStreamHub);
  v18 = *(v2 + OBJC_IVAR____TtC15PreviewShellKit22PreviewSceneAgentProxy_messageStreamHub + 8);
  LODWORD(v11) = *(v2 + 32);
  v25[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD46BE0, &unk_25F180240);
  v20 = sub_25F17932C();
  (*(*(v20 - 8) + 56))(v9, 1, 1, v20);
  (*(v4 + 16))(v6, v26, v3);
  v21 = (*(v4 + 80) + 36) & ~*(v4 + 80);
  v22 = swift_allocObject();
  *(v22 + 16) = v19;
  *(v22 + 24) = v18;
  *(v22 + 32) = v11;
  (*(v4 + 32))(v22 + v21, v6, v3);

  sub_25F17870C();
  sub_25F0B7D00(&qword_27FD46BE8, &qword_27FD46BD0, &unk_25F17AF50, MEMORY[0x277D405D8]);
  v23 = v28;
  sub_25F17808C();

  (*(v29 + 8))(v17, v23);
  return v27;
}

uint64_t PreviewSceneAgentProxy.sendEndpoint(_:context:for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_25F17764C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_25F177E2C();
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD46BF0, &qword_25F180250) + 48);
  v13 = sub_25F17776C();
  (*(*(v13 - 8) + 16))(v11, a3, v13);
  v14 = sub_25F177F8C();
  (*(*(v14 - 8) + 16))(&v11[v12], a2, v14);
  sub_25F17763C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD46B88, &qword_25F17AF28);
  sub_25F0BF2A8(&qword_27FD46BF8, MEMORY[0x277D40F08], MEMORY[0x277D40F00]);
  sub_25F17701C();
  (*(v6 + 8))(v8, v5);
  return sub_25F0C0FB4(v11, MEMORY[0x277D40F08]);
}

id sub_25F0BD704(uint64_t a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = OBJC_IVAR____TtCC15PreviewShellKit22PreviewSceneAgentProxyP33_3E64D4B6ABF6A6AD0F98F116D965CFCA13SceneDelegate_invalidationHandle;
  sub_25F17930C();
  v6 = sub_25F1792FC();
  sub_25F17852C();
  swift_allocObject();
  v10 = MEMORY[0x277D85700];
  v9 = 2;
  *&v2[v5] = sub_25F17851C();
  sub_25F1793DC();
  sub_25F1793CC();
  sub_25F1793BC();
  *&v2[OBJC_IVAR____TtCC15PreviewShellKit22PreviewSceneAgentProxyP33_3E64D4B6ABF6A6AD0F98F116D965CFCA13SceneDelegate_sceneMessenger] = a1;
  v12.receiver = v2;
  v12.super_class = ObjectType;

  v11 = objc_msgSendSuper2(&v12, sel_init, v9, v6, v10, 0, 0);
  *(swift_allocObject() + 16) = v11;
  sub_25F0BF2A8(&qword_27FD46CE0, type metadata accessor for PreviewSceneAgentProxy.SceneDelegate, &unk_25F17B104);
  v7 = v11;
  sub_25F1783EC();

  return v7;
}

uint64_t sub_25F0BDB30(void *a1)
{
  sub_25F1796DC();
  MEMORY[0x25F8D50D0](0xD000000000000034, 0x800000025F1844F0);
  v2 = [a1 clientSettings];
  v3 = [v2 description];
  v4 = sub_25F17908C();
  v6 = v5;

  MEMORY[0x25F8D50D0](v4, v6);

  return 0;
}

uint64_t SceneClientSettingsUpdate.init(clientSettings:transitionContext:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

id sub_25F0BDCE4()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_25F0BDDC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_25F0BF2A8(&qword_27FD46CE0, type metadata accessor for PreviewSceneAgentProxy.SceneDelegate, &unk_25F17B104);

  return MEMORY[0x2821A0980](a1, a2, a3, v6);
}

uint64_t PreviewSceneAgentProxy.deinit()
{

  v1 = OBJC_IVAR____TtC15PreviewShellKit22PreviewSceneAgentProxy_connectionSender;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD46B88, &qword_25F17AF28);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_25F0B7E94(v0 + OBJC_IVAR____TtC15PreviewShellKit22PreviewSceneAgentProxy_currentUpdateDelegate, &qword_27FD46B70, &qword_25F17AF18);

  v3 = OBJC_IVAR____TtC15PreviewShellKit22PreviewSceneAgentProxy_disconnected;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD46B60, &qword_25F17AF10);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  return v0;
}

uint64_t PreviewSceneAgentProxy.__deallocating_deinit()
{
  PreviewSceneAgentProxy.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_25F0BDFC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_25F0BF2A8(&qword_27FD46CF8, type metadata accessor for PreviewSceneAgentProxy, &protocol conformance descriptor for PreviewSceneAgentProxy);

  return MEMORY[0x2821A09D0](a1, a2, a3, v6);
}

void *SceneClientSettingsUpdate.transitionContext.getter()
{
  v1 = *(v0 + 8);
  v2 = v1;
  return v1;
}

uint64_t sub_25F0BE110(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6)
{
  v8 = v6;
  *(v8 + 88) = a6;
  *(v8 + 68) = a5;
  *(v8 + 96) = type metadata accessor for AgentConnectionError(0);
  *(v8 + 104) = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD46D58, &unk_25F17B1B0);
  *(v8 + 112) = v10;
  *(v8 + 120) = *(v10 - 8);
  *(v8 + 128) = swift_task_alloc();
  v11 = swift_task_alloc();
  *(v8 + 136) = v11;
  v12 = sub_25F177F8C();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FD46C38, qword_25F17C0E0);
  *v11 = v8;
  v11[1] = sub_25F0BE290;
  v14 = MEMORY[0x277D84950];

  return MEMORY[0x282200430](a1, a4, v12, v13, v14);
}

uint64_t sub_25F0BE290()
{
  v2 = *v1;
  *(v2 + 144) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_25F0BE3DC, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_25F0BE3DC()
{
  v1 = sub_25F176D2C();
  v2 = [v1 isBSServiceConnectionError];

  if (v2)
  {
    v3 = [objc_opt_self() identifierWithPid_];
    if (v3 && (v4 = v3, sub_25F0C1014(0, &qword_27FD46D78, 0x277D46F48), v5 = v4, v6 = sub_25F0E6930(v5), v5, v5, v6))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD46D60, &qword_25F180310);
      *(swift_task_alloc() + 16) = v6;
      sub_25F1786BC();

      sub_25F17869C();
      v7 = sub_25F1786CC();
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD46D60, &qword_25F180310);
      v7 = sub_25F17872C();
    }

    *(v0 + 152) = v7;
    v8 = swift_task_alloc();
    *(v0 + 160) = v8;
    *v8 = v0;
    v8[1] = sub_25F0BE6E8;
    v9 = *(v0 + 128);

    return MEMORY[0x2821A0B98](v9);
  }

  else
  {
    swift_willThrow();

    v10 = *(v0 + 8);

    return v10();
  }
}

uint64_t sub_25F0BE6E8()
{

  return MEMORY[0x2822009F8](sub_25F0BE800, 0, 0);
}

uint64_t sub_25F0BE800()
{
  v1 = *(v0 + 144);
  v3 = *(v0 + 120);
  v2 = *(v0 + 128);
  v5 = *(v0 + 104);
  v4 = *(v0 + 112);
  v6 = *(v0 + 88);
  v7 = *(v0 + 96);
  sub_25F17810C();
  (*(v3 + 8))(v2, v4);
  v8 = *(v0 + 56);
  v9 = *(v0 + 64);
  v10 = sub_25F177D5C();
  (*(*(v10 - 8) + 16))(v5, v6, v10);
  *(v0 + 72) = v8;
  *(v0 + 80) = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD46D68, &qword_25F17B1C0);
  *(v5 + *(v7 + 20)) = sub_25F17991C() & 1;
  v11 = v1;
  sub_25F0BF2A8(&qword_27FD46D70, type metadata accessor for AgentConnectionError, &unk_25F17C1C8);
  sub_25F1781BC();

  v12 = *(v0 + 40);
  v13 = __swift_project_boxed_opaque_existential_1((v0 + 16), v12);
  v14 = *(v12 - 8);
  v15 = swift_task_alloc();
  (*(v14 + 16))(v15, v13, v12);
  if (sub_25F17981C())
  {
    (*(v14 + 8))(v15, v12);
  }

  else
  {
    swift_allocError();
    (*(v14 + 32))(v16, v15, v12);
  }

  v17 = *(v0 + 144);
  v18 = *(v0 + 104);
  swift_willThrow();
  sub_25F0C0FA8(v8, v9);

  sub_25F0C0FB4(v18, type metadata accessor for AgentConnectionError);

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));

  v19 = *(v0 + 8);

  return v19();
}

uint64_t sub_25F0BEAE0(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

uint64_t sub_25F0BEB38()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_25F0BEBC0(unint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(unint64_t **, uint64_t))
{
  v6 = a4(a1, a2);
  v8 = sub_25F0BECF0(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

uint64_t sub_25F0BEC1C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_25F0BEC80(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD46B70, &qword_25F17AF18);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_25F0BECF0(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_25F0BEDBC(v11, 0, 0, 1, a1, a2);
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
    sub_25F0C1064(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1Tm(v11);
  return v7;
}

unint64_t sub_25F0BEDBC(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_25F0BEEC8(a5, a6);
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
    result = sub_25F17971C();
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

void *sub_25F0BEEC8(uint64_t a1, unint64_t a2)
{
  v3 = sub_25F0BEF14(a1, a2);
  sub_25F0BF044(&unk_287150EB0);
  return v3;
}

void *sub_25F0BEF14(uint64_t a1, unint64_t a2)
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

  v6 = sub_25F0BF130(v5, 0);
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

  result = sub_25F17971C();
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
        v10 = sub_25F17916C();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_25F0BF130(v10, 0);
        result = sub_25F1796CC();
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

uint64_t sub_25F0BF044(uint64_t result)
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

  result = sub_25F0BF1A4(result, v11, 1, v3);
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

void *sub_25F0BF130(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FD46D80, &qword_25F17B1C8);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_25F0BF1A4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FD46D80, &qword_25F17B1C8);
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

_BYTE **sub_25F0BF298(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

uint64_t sub_25F0BF2A8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_25F0BF2F0()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_25F0BF330(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_25F0BF3E4;

  return sub_25F0BC18C(a1, v4, v5, v6);
}

uint64_t sub_25F0BF3E4()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

unint64_t sub_25F0BF4D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27FD46BC0;
  if (!qword_27FD46BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD46BC0);
  }

  return result;
}

uint64_t sub_25F0BF52C()
{
  v1 = sub_25F17776C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 36) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_25F0BF5F8(uint64_t a1)
{
  v4 = *(sub_25F17776C() - 8);
  v5 = (*(v4 + 80) + 36) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + 32);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_25F0C10CC;

  return sub_25F111C90(a1, v6, v7, v8, v1 + v5);
}

void sub_25F0BF760(uint64_t a1)
{
  sub_25F0BF884(319);
  if (v1 <= 0x3F)
  {
    sub_25F0BF918(319);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_25F0BF884(uint64_t a1)
{
  if (!qword_27FD46C20)
  {
    sub_25F177E3C();
    sub_25F0BF2A8(&qword_27FD46C28, MEMORY[0x277D40F10], MEMORY[0x277D40EE8]);
    v1 = sub_25F17703C();
    if (!v2)
    {
      atomic_store(v1, &qword_27FD46C20);
    }
  }
}

void sub_25F0BF918(uint64_t a1)
{
  if (!qword_27FD46C30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27FD46C38, qword_25F17C0E0);
    v1 = sub_25F177F5C();
    if (!v2)
    {
      atomic_store(v1, &qword_27FD46C30);
    }
  }
}

uint64_t sub_25F0BF9B8(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_25F0BF9F0(uint64_t a1)
{
  sub_25F0BFA90();
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_25F0BFA90()
{
  if (!qword_27FD46CD0)
  {
    v0 = sub_25F1793AC();
    if (!v1)
    {
      atomic_store(v0, &qword_27FD46CD0);
    }
  }
}

uint64_t sub_25F0BFAE0(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_25F0BFB28(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_25F0BFBBC(unint64_t a1)
{
  v1 = a1;
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
    if (sub_25F17978C())
    {
LABEL_3:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD46D50, &qword_25F17B198);
      v3 = sub_25F1796BC();
      v4 = v1 & 0xFFFFFFFFFFFFFF8;
      if (!v2)
      {
        goto LABEL_4;
      }

LABEL_8:
      v5 = sub_25F17978C();
      if (!v5)
      {
        return;
      }

      goto LABEL_9;
    }
  }

  else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v3 = MEMORY[0x277D84FA0];
  v4 = v1 & 0xFFFFFFFFFFFFFF8;
  if (v2)
  {
    goto LABEL_8;
  }

LABEL_4:
  v5 = *(v4 + 16);
  if (!v5)
  {
    return;
  }

LABEL_9:
  v6 = v3 + 56;
  v38 = v5;
  if ((v1 & 0xC000000000000001) != 0)
  {
    v7 = 0;
    v36 = v1;
    while (1)
    {
      v8 = MEMORY[0x25F8D5690](v7, v1);
      v9 = __OFADD__(v7++, 1);
      if (v9)
      {
        break;
      }

      v10 = v8;
      v11 = sub_25F1795DC();
      v12 = -1 << *(v3 + 32);
      v13 = v11 & ~v12;
      v14 = v13 >> 6;
      v15 = *(v6 + 8 * (v13 >> 6));
      v16 = 1 << v13;
      if (((1 << v13) & v15) != 0)
      {
        v17 = ~v12;
        sub_25F0C1014(0, &qword_27FD46CE8, 0x277CF0B58);
        while (1)
        {
          v18 = *(*(v3 + 48) + 8 * v13);
          v19 = sub_25F1795EC();

          if (v19)
          {
            break;
          }

          v13 = (v13 + 1) & v17;
          v14 = v13 >> 6;
          v15 = *(v6 + 8 * (v13 >> 6));
          v16 = 1 << v13;
          if (((1 << v13) & v15) == 0)
          {
            v1 = v36;
            v5 = v38;
            goto LABEL_18;
          }
        }

        swift_unknownObjectRelease();
        v1 = v36;
        v5 = v38;
        if (v7 == v38)
        {
          return;
        }
      }

      else
      {
LABEL_18:
        *(v6 + 8 * v14) = v16 | v15;
        *(*(v3 + 48) + 8 * v13) = v10;
        v20 = *(v3 + 16);
        v9 = __OFADD__(v20, 1);
        v21 = v20 + 1;
        if (v9)
        {
          goto LABEL_33;
        }

        *(v3 + 16) = v21;
        if (v7 == v5)
        {
          return;
        }
      }
    }

    __break(1u);
LABEL_33:
    __break(1u);
  }

  else
  {
    v22 = 0;
    v35 = v1 + 32;
    v37 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    while (v22 != v37)
    {
      v23 = *(v35 + 8 * v22);
      v24 = sub_25F1795DC();
      v25 = -1 << *(v3 + 32);
      v26 = v24 & ~v25;
      v27 = v26 >> 6;
      v28 = *(v6 + 8 * (v26 >> 6));
      v29 = 1 << v26;
      if (((1 << v26) & v28) != 0)
      {
        v30 = ~v25;
        sub_25F0C1014(0, &qword_27FD46CE8, 0x277CF0B58);
        do
        {
          v31 = *(*(v3 + 48) + 8 * v26);
          v32 = sub_25F1795EC();

          if (v32)
          {

            v5 = v38;
            goto LABEL_23;
          }

          v26 = (v26 + 1) & v30;
          v27 = v26 >> 6;
          v28 = *(v6 + 8 * (v26 >> 6));
          v29 = 1 << v26;
        }

        while (((1 << v26) & v28) != 0);
        v5 = v38;
      }

      *(v6 + 8 * v27) = v29 | v28;
      *(*(v3 + 48) + 8 * v26) = v23;
      v33 = *(v3 + 16);
      v9 = __OFADD__(v33, 1);
      v34 = v33 + 1;
      if (v9)
      {
        goto LABEL_35;
      }

      *(v3 + 16) = v34;
LABEL_23:
      if (++v22 == v5)
      {
        return;
      }
    }
  }

  __break(1u);
LABEL_35:
  __break(1u);
}

void sub_25F0BFEAC(uint64_t a1)
{
  sub_25F17930C();
  sub_25F1792FC();
  sub_25F1792DC();

  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_25F17969C();
    sub_25F0C1014(0, &qword_27FD46CE8, 0x277CF0B58);
    sub_25F0C0358();
    sub_25F1794AC();
    a1 = v15;
    v2 = v16;
    v3 = v17;
    v4 = v18;
    v5 = v19;
  }

  else
  {
    v6 = -1 << *(a1 + 32);
    v2 = a1 + 56;
    v3 = ~v6;
    v7 = -v6;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v5 = v8 & *(a1 + 56);

    v4 = 0;
  }

  while (a1 < 0)
  {
    if (!sub_25F1796AC() || (sub_25F0C1014(0, &qword_27FD46CE8, 0x277CF0B58), swift_dynamicCast(), v13 = v14, v11 = v4, v12 = v5, !v14))
    {
LABEL_19:
      sub_25F0C03C0(a1);
      return;
    }

LABEL_17:
    sub_25F17714C();
    if (swift_dynamicCastClass())
    {
      sub_25F17710C();
    }

    v4 = v11;
    v5 = v12;
  }

  v9 = v4;
  v10 = v5;
  v11 = v4;
  if (v5)
  {
LABEL_13:
    v12 = (v10 - 1) & v10;
    v13 = *(*(a1 + 48) + ((v11 << 9) | (8 * __clz(__rbit64(v10)))));
    if (!v13)
    {
      goto LABEL_19;
    }

    goto LABEL_17;
  }

  while (1)
  {
    v11 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v11 >= ((v3 + 64) >> 6))
    {
      goto LABEL_19;
    }

    v10 = *(v2 + 8 * v11);
    ++v9;
    if (v10)
    {
      goto LABEL_13;
    }
  }

  __break(1u);
}

void sub_25F0C0110(void *a1, void *a2)
{
  v4 = sub_25F1787BC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25F17930C();
  sub_25F1792FC();
  sub_25F1792DC();

  v8 = [a1 clientSettings];
  objc_opt_self();
  v9 = swift_dynamicCastObjCClass();
  if (v9)
  {
    v14[0] = v9;
    v14[1] = a2;
    v10 = v9;
    v11 = a2;
    v12 = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD46B48, &qword_25F17AF08);
    sub_25F17938C();
  }

  else
  {

    MEMORY[0x28223BE20](v13);
    v14[-2] = a1;
    sub_25F1787CC();
    sub_25F17814C();
    (*(v5 + 8))(v7, v4);
  }
}

unint64_t sub_25F0C0358()
{
  result = qword_27FD46CF0;
  if (!qword_27FD46CF0)
  {
    sub_25F0C1014(255, &qword_27FD46CE8, 0x277CF0B58);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD46CF0);
  }

  return result;
}

uint64_t sub_25F0C03C8()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_25F0C040C()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD46D08, &qword_25F17B148) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = (*(v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = v0 + v3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD46B60, &qword_25F17AF10);
  (*(*(v6 - 8) + 8))(v5, v6);

  return MEMORY[0x2821FE8E8](v0, v4 + 8, v2 | 7);
}

uint64_t sub_25F0C0520(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD46D08, &qword_25F17B148);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_25F0C0590(uint64_t a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD46D08, &qword_25F17B148) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_25F0B9E40(a1, v1 + v4, v5);
}

uint64_t sub_25F0C0638()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD46D08, &qword_25F17B148) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = (*(v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD46B60, &qword_25F17AF10);
  (*(*(v5 - 8) + 8))(v0 + v3, v5);

  return MEMORY[0x2821FE8E8](v0, v4 + 8, v2 | 7);
}

uint64_t sub_25F0C075C(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD46D08, &qword_25F17B148) - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = *(v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = swift_task_alloc();
  *(v3 + 16) = v11;
  *v11 = v3;
  v11[1] = sub_25F0BF3E4;

  return sub_25F0BA078(a1, v7, v8, v9, v1 + v6, v10);
}

uint64_t sub_25F0C089C()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD46D08, &qword_25F17B148) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = (((*(v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD46B60, &qword_25F17AF10);
  (*(*(v5 - 8) + 8))(v0 + v3, v5);

  return MEMORY[0x2821FE8E8](v0, ((v4 + 15) & 0xFFFFFFFFFFFFFFF8) + 8, v2 | 7);
}

uint64_t sub_25F0C09E8(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD46D08, &qword_25F17B148) - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = v1[2];
  v10 = v1[3];
  v11 = v1[4];
  v12 = *(v1 + v7);
  v13 = *(v1 + v8);
  v14 = *(v1 + ((v8 + 15) & 0xFFFFFFFFFFFFFFF8));
  v15 = swift_task_alloc();
  *(v3 + 16) = v15;
  *v15 = v3;
  v15[1] = sub_25F0C10CC;

  return sub_25F0BA5B0(a1, v9, v10, v11, v1 + v6, v12, v13, v14);
}

uint64_t sub_25F0C0B64()
{
  v1 = sub_25F1780FC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_25F0C0C84(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_25F0C0C9C(uint64_t a1, uint64_t a2)
{
  v4 = sub_25F177D9C();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
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

uint64_t sub_25F0C0DD4()
{
  v1 = sub_25F177D5C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 44) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_25F0C0EA0(uint64_t a1)
{
  v4 = *(sub_25F177D5C() - 8);
  v5 = (*(v4 + 80) + 44) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + 32);
  v9 = *(v1 + 40);
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_25F0C10CC;

  return sub_25F0BE110(a1, v6, v7, v8, v9, v1 + v5);
}

void sub_25F0C0FA8(id a1, char a2)
{
  if (a2)
  {
  }
}

uint64_t sub_25F0C0FB4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_25F0C1014(uint64_t a1, unint64_t *a2, void *a3)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_25F0C1064(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t CrashedViewController.__allocating_init(style:snapshotImage:)(uint64_t a1, void *a2)
{
  v5 = objc_allocWithZone(v2);
  sub_25F0C11F8(a1, v12);
  v13 = a2;
  v6 = a2;
  sub_25F178EFC();
  v14 = v10;
  v15 = v11;
  sub_25F0B5888(v12);
  v8 = v7;

  sub_25F0C1254(a1);
  return v8;
}

uint64_t CrashedViewController.init(style:snapshotImage:)(uint64_t a1, void *a2)
{
  sub_25F0C11F8(a1, v10);
  v11 = a2;
  v4 = a2;
  sub_25F178EFC();
  v12 = v8;
  v13 = v9;
  sub_25F0B5888(v10);
  v6 = v5;

  sub_25F0C1254(a1);
  return v6;
}

id CrashedViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

double CrashedView.body.getter@<D0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_25F178F4C();
  MEMORY[0x28223BE20](v4);
  v5 = *(v1 + 48);
  *(&v20[0] + 1) = *(v1 + 64);
  v6 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD46DF0, &qword_25F17B1E0);
  sub_25F178F0C();
  *&v20[0] = [objc_opt_self() rootSettings];
  sub_25F0C11F8(v1, v20 + 8);
  *(&v21 + 1) = v5;
  LOBYTE(v22) = v18[0];
  sub_25F178F3C();
  *(&v22 + 1) = sub_25F178B9C();
  *&v23 = 0x404E000000000000;
  v7 = sub_25F17905C();
  v8 = objc_opt_self();
  v9 = [v8 colorNamed_];

  if (!v9)
  {
    v10 = [v8 systemBlueColor];
  }

  *(&v23 + 1) = sub_25F178E5C();
  sub_25F0B7BA8(v2, v18);
  v11 = swift_allocObject();
  v12 = v18[3];
  *(v11 + 48) = v18[2];
  *(v11 + 64) = v12;
  *(v11 + 80) = v19;
  v13 = v18[1];
  *(v11 + 16) = v18[0];
  *(v11 + 32) = v13;
  v14 = v21;
  *(a1 + 32) = v20[2];
  *(a1 + 48) = v14;
  v15 = v23;
  *(a1 + 64) = v22;
  *(a1 + 80) = v15;
  result = *v20;
  v17 = v20[1];
  *a1 = v20[0];
  *(a1 + 16) = v17;
  *(a1 + 96) = sub_25F0C160C;
  *(a1 + 104) = v11;
  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  return result;
}

uint64_t sub_25F0C15BC()
{
  if (*(v0 + 48))
  {
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 24));
  }

  return MEMORY[0x2821FE8E8](v0, 88, 7);
}

uint64_t get_enum_tag_for_layout_string_15PreviewShellKit0A8Reloader_pSg(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy72_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_25F0C16C4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 72))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 32);
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

uint64_t sub_25F0C1720(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 72) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 72) = 0;
    }

    if (a2)
    {
      *(result + 32) = a2;
    }
  }

  return result;
}

unint64_t sub_25F0C1798()
{
  result = qword_27FD46E08;
  if (!qword_27FD46E08)
  {
    v1 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FD46E10, &qword_25F17B2D8);
    sub_25F0C1824(v1, v2, v3);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD46E08);
  }

  return result;
}

unint64_t sub_25F0C1824(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27FD46E18;
  if (!qword_27FD46E18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD46E18);
  }

  return result;
}

__n128 __swift_memcpy96_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = result;
  *(a1 + 48) = v4;
  return result;
}

uint64_t sub_25F0C1894(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 96))
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

uint64_t sub_25F0C18DC(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_25F0C1960@<X0>(uint64_t a1@<X8>)
{
  v38 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD46E20, &qword_25F17B3A8);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v37 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD46E28, &qword_25F17B3B0);
  v6 = v5 - 8;
  MEMORY[0x28223BE20](v5);
  v8 = &v37 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD46E30, &qword_25F17B3B8);
  v10 = v9 - 8;
  MEMORY[0x28223BE20](v9);
  v12 = &v37 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD46E38, &qword_25F17B3C0);
  v14 = v13 - 8;
  MEMORY[0x28223BE20](v13);
  v16 = (&v37 - v15);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD46E40, &qword_25F17B3C8);
  v18 = v17 - 8;
  MEMORY[0x28223BE20](v17);
  v20 = &v37 - v19;
  *v16 = sub_25F178F5C();
  v16[1] = v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD46E48, &qword_25F17B3D0);
  sub_25F0C1D00(v1, v16 + *(v22 + 44));
  *(v16 + *(v14 + 44)) = sub_25F178D6C();
  sub_25F0C2EA8(v4);
  sub_25F178F5C();
  sub_25F178BBC();
  sub_25F0B7D50(v4, v8, &qword_27FD46E20, &qword_25F17B3A8);
  v23 = &v8[*(v6 + 44)];
  v24 = v44;
  *(v23 + 4) = v43;
  *(v23 + 5) = v24;
  *(v23 + 6) = v45;
  v25 = v40;
  *v23 = v39;
  *(v23 + 1) = v25;
  v26 = v42;
  *(v23 + 2) = v41;
  *(v23 + 3) = v26;
  LOBYTE(v14) = sub_25F178D5C();
  sub_25F0B7D50(v8, v12, &qword_27FD46E28, &qword_25F17B3B0);
  v12[*(v10 + 44)] = v14;
  v27 = sub_25F178F5C();
  v29 = v28;
  v30 = &v20[*(v18 + 44)];
  sub_25F0B7D50(v12, v30, &qword_27FD46E30, &qword_25F17B3B8);
  v31 = (v30 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD46E50, &qword_25F17B3D8) + 36));
  *v31 = v27;
  v31[1] = v29;
  sub_25F0B7D50(v16, v20, &qword_27FD46E38, &qword_25F17B3C0);
  [*v1 crashAnimationDuration];
  v32 = sub_25F178F6C();
  v33 = *(v1 + 64);
  v34 = v38;
  sub_25F0B7D50(v20, v38, &qword_27FD46E40, &qword_25F17B3C8);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD46E58, &qword_25F17B3E0);
  v36 = v34 + *(result + 36);
  *v36 = v32;
  *(v36 + 8) = v33;
  return result;
}

uint64_t sub_25F0C1D00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v93 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD46F10, &qword_25F17B460);
  MEMORY[0x28223BE20](v3);
  v5 = (&v73 - v4);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD46F18, &qword_25F17B468);
  MEMORY[0x28223BE20](v6);
  v8 = &v73 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD46F20, &qword_25F17B470);
  MEMORY[0x28223BE20](v9 - 8);
  v86 = (&v73 - v10);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD46F28, &qword_25F17B478);
  v89 = *(v11 - 8);
  v90 = v11;
  v12 = MEMORY[0x28223BE20](v11);
  v85 = &v73 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v84 = &v73 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD46F30, &qword_25F17B480);
  v16 = MEMORY[0x28223BE20](v15 - 8);
  v91 = &v73 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v19 = &v73 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD46F38, &qword_25F17B488);
  MEMORY[0x28223BE20](v20);
  v22 = &v73 - v21;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD46F40, &qword_25F17B490);
  MEMORY[0x28223BE20](v87);
  v88 = &v73 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD46F48, &qword_25F17B498);
  v25 = MEMORY[0x28223BE20](v24);
  v26 = MEMORY[0x28223BE20](v25);
  v28 = &v73 - v27;
  v29 = MEMORY[0x28223BE20](v26);
  v92 = &v73 - v31;
  if (*(a1 + 9) == 1)
  {
    v80 = v8;
    v81 = v3;
    v77 = v29;
    v78 = v30;
    v79 = v19;
    v75 = sub_25F178CDC();
    LOBYTE(v94[0]) = 1;
    sub_25F0C26DC(&v100);
    v113 = v104;
    v114 = v105;
    v115 = v106;
    v116 = v107;
    v109 = v100;
    v110 = v101;
    v111 = v102;
    v112 = v103;
    v117[0] = v100;
    v117[1] = v101;
    v117[2] = v102;
    v117[3] = v103;
    v117[4] = v104;
    v117[5] = v105;
    v117[6] = v106;
    v118 = v107;
    sub_25F0B7E2C(&v109, v96, &qword_27FD46F58, &qword_25F17B4A0);
    sub_25F0B7E94(v117, &qword_27FD46F58, &qword_25F17B4A0);
    *(&v108[4] + 7) = v113;
    *(&v108[5] + 7) = v114;
    *(&v108[6] + 7) = v115;
    *(v108 + 7) = v109;
    *(&v108[1] + 7) = v110;
    *(&v108[2] + 7) = v111;
    *(&v108[7] + 7) = v116;
    *(&v108[3] + 7) = v112;
    v74 = LOBYTE(v94[0]);
    v73 = sub_25F178D5C();
    v96[0] = 1;
    v32 = *(a1 + 8);
    v82 = v6;
    v83 = v5;
    v76 = a1;
    if (v32 == 1)
    {
      *&v100 = sub_25F178E7C();
      v33 = sub_25F178B9C();
    }

    else
    {
      v33 = *(a1 + 72);
    }

    v35 = &v22[*(v20 + 36)];
    v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD46F60, &qword_25F17B4A8);
    v37 = v35 + *(v36 + 52);
    v38 = *(sub_25F178BAC() + 20);
    v39 = *MEMORY[0x277CE0118];
    v40 = sub_25F178CCC();
    (*(*(v40 - 8) + 104))(&v37[v38], v39, v40);
    __asm { FMOV            V0.2D, #15.0 }

    *v37 = _Q0;
    *v35 = v33;
    *(v35 + *(v36 + 56)) = 256;
    v46 = v108[5];
    *(v22 + 81) = v108[4];
    *(v22 + 97) = v46;
    *(v22 + 113) = v108[6];
    *(v22 + 8) = *(&v108[6] + 15);
    v47 = v108[1];
    *(v22 + 17) = v108[0];
    *(v22 + 33) = v47;
    v48 = v108[3];
    *(v22 + 49) = v108[2];
    *v22 = v75;
    *(v22 + 1) = 0;
    v49 = v73;
    v22[16] = v74;
    *(v22 + 65) = v48;
    v22[144] = v49;
    *(v22 + 145) = v119[0];
    *(v22 + 37) = *(v119 + 3);
    *(v22 + 152) = 0u;
    *(v22 + 168) = 0u;
    v22[184] = 1;
    sub_25F178F5C();
    v50 = 1;
    sub_25F178BBC();
    v51 = v22;
    v52 = v88;
    sub_25F0B7D50(v51, v88, &qword_27FD46F38, &qword_25F17B488);
    v53 = v76;
    _ZF = *(v76 + 64) == 0;
    v54 = (v52 + *(v87 + 36));
    v55 = v105;
    v54[4] = v104;
    v54[5] = v55;
    v54[6] = v106;
    v56 = v101;
    *v54 = v100;
    v54[1] = v56;
    if (_ZF)
    {
      v57 = 0.0;
    }

    else
    {
      v57 = 1.0;
    }

    v58 = v103;
    v54[2] = v102;
    v54[3] = v58;
    sub_25F0B7D50(v52, v28, &qword_27FD46F40, &qword_25F17B490);
    *&v28[*(v77 + 36)] = v57;
    sub_25F0B7D50(v28, v92, &qword_27FD46F48, &qword_25F17B498);
    sub_25F0C11F8(v53 + 8, v96);
    v94[0] = v97;
    v94[1] = v98;
    v95 = v99;
    v59 = *(&v98 + 1);
    sub_25F0B7E94(v94, &qword_27FD46F68, &qword_25F17B4B0);
    if (v59)
    {
      v60 = sub_25F178CDC();
      v61 = v86;
      *v86 = v60;
      *(v61 + 8) = 0;
      *(v61 + 16) = 1;
      v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD46F78, &qword_25F17B4C0);
      sub_25F0C2AC0(v53, v61 + *(v62 + 44));
      v63 = v85;
      sub_25F0B7D50(v61, v85, &qword_27FD46F20, &qword_25F17B470);
      v64 = v90;
      *(v63 + *(v90 + 36)) = v57;
      v65 = v63;
      v66 = v84;
      sub_25F0B7D50(v65, v84, &qword_27FD46F28, &qword_25F17B478);
      v67 = v79;
      sub_25F0B7D50(v66, v79, &qword_27FD46F28, &qword_25F17B478);
      v50 = 0;
      v68 = v80;
    }

    else
    {
      v67 = v79;
      v68 = v80;
      v64 = v90;
    }

    (*(v89 + 56))(v67, v50, 1, v64);
    v69 = v92;
    v70 = v78;
    sub_25F0B7E2C(v92, v78, &qword_27FD46F48, &qword_25F17B498);
    v71 = v91;
    sub_25F0B7E2C(v67, v91, &qword_27FD46F30, &qword_25F17B480);
    sub_25F0B7E2C(v70, v68, &qword_27FD46F48, &qword_25F17B498);
    v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD46F70, &qword_25F17B4B8);
    sub_25F0B7E2C(v71, v68 + *(v72 + 48), &qword_27FD46F30, &qword_25F17B480);
    sub_25F0B7E94(v71, &qword_27FD46F30, &qword_25F17B480);
    sub_25F0B7E94(v70, &qword_27FD46F48, &qword_25F17B498);
    sub_25F0B7E2C(v68, v83, &qword_27FD46F18, &qword_25F17B468);
    swift_storeEnumTagMultiPayload();
    sub_25F0B7D00(&qword_27FD46F50, &qword_27FD46F18, &qword_25F17B468, MEMORY[0x277CE14C0]);
    sub_25F178CFC();
    sub_25F0B7E94(v68, &qword_27FD46F18, &qword_25F17B468);
    sub_25F0B7E94(v67, &qword_27FD46F30, &qword_25F17B480);
    return sub_25F0B7E94(v69, &qword_27FD46F48, &qword_25F17B498);
  }

  else
  {
    *v5 = sub_25F178E7C();
    swift_storeEnumTagMultiPayload();
    sub_25F0B7D00(&qword_27FD46F50, &qword_27FD46F18, &qword_25F17B468, MEMORY[0x277CE14C0]);
    return sub_25F178CFC();
  }
}

uint64_t sub_25F0C26DC@<X0>(uint64_t a2@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD46FA8, &qword_25F17B510);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v43 - v4;
  v47 = sub_25F178ECC();
  v6 = [objc_opt_self() systemRedColor];
  v46 = sub_25F178E5C();
  KeyPath = swift_getKeyPath();
  sub_25F178DBC();
  v7 = sub_25F178D9C();
  (*(*(v7 - 8) + 56))(v5, 1, 1, v7);
  v44 = sub_25F178DCC();
  sub_25F0B7E94(v5, &qword_27FD46FA8, &qword_25F17B510);
  v49 = swift_getKeyPath();
  v48 = sub_25F178D7C();
  sub_25F178B4C();
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  LOBYTE(v58) = 0;
  sub_25F178CBC();
  v16 = sub_25F178DFC();
  v18 = v17;
  v20 = v19;
  sub_25F178DAC();
  v21 = sub_25F178DDC();
  v23 = v22;
  v25 = v24;
  sub_25F0B7E1C(v16, v18, v20 & 1);

  sub_25F178E9C();
  v26 = sub_25F178DEC();
  v28 = v27;
  HIDWORD(v43) = v29;
  v31 = v30;

  sub_25F0B7E1C(v21, v23, v25 & 1);

  v33 = v46;
  v32 = v47;
  v34 = v44;
  v35 = KeyPath;
  *&v52 = v47;
  *(&v52 + 1) = KeyPath;
  *&v53 = v46;
  *(&v53 + 1) = v49;
  *&v54 = v44;
  BYTE8(v54) = v48;
  HIDWORD(v54) = *&v51[3];
  *(&v54 + 9) = *v51;
  *&v55 = v9;
  *(&v55 + 1) = v11;
  *&v56 = v13;
  *(&v56 + 1) = v15;
  v57 = 0;
  v58 = v52;
  LOBYTE(v63) = 0;
  v61 = v55;
  v62 = v56;
  v59 = v53;
  v60 = v54;
  v36 = BYTE4(v43);
  v37 = BYTE4(v43) & 1;
  v50 = BYTE4(v43) & 1;
  v38 = v53;
  v39 = v54;
  *a2 = v52;
  *(a2 + 16) = v38;
  v40 = v62;
  v41 = v63;
  *(a2 + 48) = v61;
  *(a2 + 64) = v40;
  *(a2 + 32) = v39;
  *(a2 + 80) = v41;
  *(a2 + 88) = v26;
  *(a2 + 96) = v28;
  *(a2 + 104) = v36 & 1;
  *(a2 + 112) = v31;
  sub_25F0B7E2C(&v52, v64, &qword_27FD46FB0, &qword_25F17B578);
  sub_25F0B7E0C(v26, v28, v37);

  sub_25F0B7E1C(v26, v28, v37);

  v64[0] = v32;
  v64[1] = v35;
  v64[2] = v33;
  v64[3] = v49;
  v64[4] = v34;
  v65 = v48;
  *v66 = *v51;
  *&v66[3] = *&v51[3];
  v67 = v9;
  v68 = v11;
  v69 = v13;
  v70 = v15;
  v71 = 0;
  return sub_25F0B7E94(v64, &qword_27FD46FB0, &qword_25F17B578);
}

uint64_t sub_25F0C2AC0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD46F80, &qword_25F17B4C8);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v27 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD46F88, &qword_25F17B4D0);
  v9 = v8 - 8;
  v10 = MEMORY[0x28223BE20](v8);
  v12 = v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = v27 - v13;
  sub_25F0C4FE4(a1, v27);
  v15 = swift_allocObject();
  v16 = v27[3];
  v15[3] = v27[2];
  v15[4] = v16;
  v17 = v27[5];
  v15[5] = v27[4];
  v15[6] = v17;
  v18 = v27[1];
  v15[1] = v27[0];
  v15[2] = v18;
  sub_25F178F2C();
  v19 = sub_25F0B7D00(&qword_27FD46F90, &qword_27FD46F80, &qword_25F17B4C8, MEMORY[0x277CDF028]);
  sub_25F0C5084(v19, v20, v21);
  sub_25F178E3C();
  (*(v5 + 8))(v7, v4);
  v22 = *(a1 + 88);
  KeyPath = swift_getKeyPath();
  v24 = &v14[*(v9 + 44)];
  *v24 = KeyPath;
  v24[1] = v22;
  sub_25F0B7E2C(v14, v12, &qword_27FD46F88, &qword_25F17B4D0);
  *a2 = 0;
  *(a2 + 8) = 1;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD46FA0, &qword_25F17B508);
  sub_25F0B7E2C(v12, a2 + *(v25 + 48), &qword_27FD46F88, &qword_25F17B4D0);

  sub_25F0B7E94(v14, &qword_27FD46F88, &qword_25F17B4D0);
  return sub_25F0B7E94(v12, &qword_27FD46F88, &qword_25F17B4D0);
}

uint64_t sub_25F0C2D88(uint64_t a1)
{
  sub_25F0C11F8(a1 + 8, v4);
  v7[0] = *&v4[8];
  v7[1] = v5;
  v8 = v6;
  v1 = *(&v5 + 1);
  if (!*(&v5 + 1))
  {
    return sub_25F0B7E94(v7, &qword_27FD46F68, &qword_25F17B4B0);
  }

  v2 = v8;
  __swift_project_boxed_opaque_existential_1(v7, *(&v5 + 1));
  (*(v2 + 8))(v1, v2);
  return __swift_destroy_boxed_opaque_existential_1Tm(v7);
}

uint64_t sub_25F0C2E30@<X0>(uint64_t a1@<X8>)
{
  sub_25F178CBC();
  result = sub_25F178DFC();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_25F0C2EA8@<X0>(uint64_t a1@<X8>)
{
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD46E60, &qword_25F17B3E8);
  MEMORY[0x28223BE20](v82);
  v4 = (&v64 - v3);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD46E68, &qword_25F17B3F0);
  v71 = *(v5 - 8);
  v72 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v64 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD46E70, &qword_25F17B3F8);
  v9 = MEMORY[0x28223BE20](v8);
  v70 = &v64 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v69 = (&v64 - v11);
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD46E78, &qword_25F17B400);
  MEMORY[0x28223BE20](v75);
  v74 = (&v64 - v12);
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD46E80, &qword_25F17B408);
  MEMORY[0x28223BE20](v77);
  v79 = (&v64 - v13);
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD46E88, &qword_25F17B410);
  MEMORY[0x28223BE20](v73);
  v15 = &v64 - v14;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD46E90, &qword_25F17B418);
  MEMORY[0x28223BE20](v78);
  v76 = &v64 - v16;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD46E98, &qword_25F17B420);
  MEMORY[0x28223BE20](v81);
  v80 = &v64 - v17;
  v18 = sub_25F178EDC();
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v21 = &v64 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *(v1 + 56);
  if (!v22 || (v23 = *(v1 + 8), v23 == 3))
  {
    *v4 = sub_25F178E6C();
    swift_storeEnumTagMultiPayload();
    sub_25F0C38FC();
    return sub_25F178CFC();
  }

  v67 = a1;
  v66 = v22;
  sub_25F178EBC();
  (*(v19 + 104))(v21, *MEMORY[0x277CE0FE0], v18);
  v68 = sub_25F178EEC();

  (*(v19 + 8))(v21, v18);
  if (v23)
  {
    if (v23 != 1)
    {
      v49 = 1.0;
      v50 = v66;
      v51 = v68;
      if (*(v1 + 64) == 1)
      {
        [*v1 crashFadeOutOpacity];
        v49 = v52;
      }

      v53 = sub_25F178D5C();
      v54 = v79;
      *v79 = v51;
      v54[1] = 0;
      *(v54 + 8) = 1;
      *(v54 + 3) = v49;
      *(v54 + 32) = v53;
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD46ED0, &qword_25F17B430);
      sub_25F0C3988();
      sub_25F0C3AC4();
      v45 = v80;
      sub_25F178CFC();
      goto LABEL_15;
    }

    v25 = v68;

    v26 = sub_25F178F5C();
    v27 = v74;
    *v74 = v26;
    v27[1] = v28;
    v29 = sub_25F178E7C();
    v30 = sub_25F178F5C();
    v65 = v31;
    v32 = v69;
    v33 = v69 + *(v8 + 36);
    if (*(v1 + 64) == 1)
    {
      v34 = *(sub_25F178BAC() + 20);
      v64 = v30;
      v35 = *MEMORY[0x277CE0118];
      v36 = sub_25F178CCC();
      (*(*(v36 - 8) + 104))(&v7[v34], v35, v36);
      __asm { FMOV            V0.2D, #15.0 }

      *v7 = _Q0;
      v42 = *(v1 + 72);
      v43 = v72;
      *&v7[*(v72 + 52)] = v42;
      *&v7[*(v43 + 56)] = 256;
      sub_25F0B7D50(v7, v33, &qword_27FD46E68, &qword_25F17B3F0);
      (*(v71 + 56))(v33, 0, 1, v43);
      v30 = v64;
    }

    else
    {
      (*(v71 + 56))(v33, 1, 1, v72);
    }

    v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD46EF8, &qword_25F17B448);
    v56 = v74;
    v57 = v74 + *(v55 + 44);
    v58 = (v33 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD46F00, &qword_25F17B450) + 36));
    v59 = v65;
    *v58 = v30;
    v58[1] = v59;
    *v32 = v29;
    v60 = v70;
    sub_25F0B7E2C(v32, v70, &qword_27FD46E70, &qword_25F17B3F8);
    *v57 = v25;
    *(v57 + 1) = 0;
    *(v57 + 8) = 1;
    v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD46F08, &qword_25F17B458);
    sub_25F0B7E2C(v60, &v57[*(v61 + 48)], &qword_27FD46E70, &qword_25F17B3F8);
    swift_retain_n();
    sub_25F0B7E94(v32, &qword_27FD46E70, &qword_25F17B3F8);
    sub_25F0B7E94(v60, &qword_27FD46E70, &qword_25F17B3F8);

    v62 = v56;
    sub_25F0B7E2C(v56, v15, &qword_27FD46E78, &qword_25F17B400);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD46EB8, &qword_25F17B428);
    sub_25F0C3A40();
    sub_25F0B7D00(&qword_27FD46EC0, &qword_27FD46E78, &qword_25F17B400, MEMORY[0x277CE11A8]);
    v63 = v76;
    sub_25F178CFC();
    sub_25F0B7E2C(v63, v79, &qword_27FD46E90, &qword_25F17B418);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD46ED0, &qword_25F17B430);
    sub_25F0C3988();
    sub_25F0C3AC4();
    v45 = v80;
    sub_25F178CFC();
    sub_25F0B7E94(v63, &qword_27FD46E90, &qword_25F17B418);
    v46 = v62;
    v47 = &qword_27FD46E78;
    v48 = &qword_25F17B400;
  }

  else
  {
    *v15 = v68;
    *(v15 + 1) = 0;
    *(v15 + 8) = 1;
    swift_storeEnumTagMultiPayload();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD46EB8, &qword_25F17B428);
    sub_25F0C3A40();
    sub_25F0B7D00(&qword_27FD46EC0, &qword_27FD46E78, &qword_25F17B400, MEMORY[0x277CE11A8]);
    v44 = v76;
    sub_25F178CFC();
    sub_25F0B7E2C(v44, v79, &qword_27FD46E90, &qword_25F17B418);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD46ED0, &qword_25F17B430);
    sub_25F0C3988();
    sub_25F0C3AC4();
    v45 = v80;
    sub_25F178CFC();
    v46 = v44;
    v47 = &qword_27FD46E90;
    v48 = &qword_25F17B418;
  }

  sub_25F0B7E94(v46, v47, v48);
  v50 = v66;
LABEL_15:
  sub_25F0B7E2C(v45, v4, &qword_27FD46E98, &qword_25F17B420);
  swift_storeEnumTagMultiPayload();
  sub_25F0C38FC();
  sub_25F178CFC();

  return sub_25F0B7E94(v45, &qword_27FD46E98, &qword_25F17B420);
}

unint64_t sub_25F0C38FC()
{
  result = qword_27FD46EA0;
  if (!qword_27FD46EA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FD46E98, &qword_25F17B420);
    sub_25F0C3988();
    sub_25F0C3AC4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD46EA0);
  }

  return result;
}

unint64_t sub_25F0C3988()
{
  result = qword_27FD46EA8;
  if (!qword_27FD46EA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FD46E90, &qword_25F17B418);
    sub_25F0C3A40();
    sub_25F0B7D00(&qword_27FD46EC0, &qword_27FD46E78, &qword_25F17B400, MEMORY[0x277CE11A8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD46EA8);
  }

  return result;
}

unint64_t sub_25F0C3A40()
{
  result = qword_27FD46EB0;
  if (!qword_27FD46EB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FD46EB8, &qword_25F17B428);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD46EB0);
  }

  return result;
}

unint64_t sub_25F0C3AC4()
{
  result = qword_27FD46EC8;
  if (!qword_27FD46EC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FD46ED0, &qword_25F17B430);
    sub_25F0C3B7C();
    sub_25F0B7D00(&qword_27FD46EE8, &qword_27FD46EF0, &qword_25F17B440, MEMORY[0x277CE0728]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD46EC8);
  }

  return result;
}

unint64_t sub_25F0C3B7C()
{
  result = qword_27FD46ED8;
  if (!qword_27FD46ED8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FD46EE0, &qword_25F17B438);
    sub_25F0C3A40();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD46ED8);
  }

  return result;
}

double sub_25F0C3C08()
{
  v0 = sub_25F178D0C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v24 = &v23 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD470B0, &qword_25F17B760);
  v4 = v3 - 8;
  MEMORY[0x28223BE20](v3);
  v6 = &v23 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD47008, &qword_25F17B688);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v23 - v12;
  MEMORY[0x28223BE20](v11);
  v15 = (&v23 - v14);
  type metadata accessor for UV_BorderedButtonStyle_iOS.BorderedButton(0);
  sub_25F0C50D8(v15);
  (*(v1 + 104))(v13, *MEMORY[0x277CE0558], v0);
  (*(v1 + 56))(v13, 0, 1, v0);
  v16 = *(v4 + 56);
  sub_25F0B7E2C(v15, v6, &qword_27FD47008, &qword_25F17B688);
  sub_25F0B7E2C(v13, &v6[v16], &qword_27FD47008, &qword_25F17B688);
  v17 = *(v1 + 48);
  if (v17(v6, 1, v0) == 1)
  {
    sub_25F0B7E94(v13, &qword_27FD47008, &qword_25F17B688);
    sub_25F0B7E94(v15, &qword_27FD47008, &qword_25F17B688);
    if (v17(&v6[v16], 1, v0) == 1)
    {
      sub_25F0B7E94(v6, &qword_27FD47008, &qword_25F17B688);
      return 29.0;
    }

    goto LABEL_6;
  }

  sub_25F0B7E2C(v6, v10, &qword_27FD47008, &qword_25F17B688);
  if (v17(&v6[v16], 1, v0) == 1)
  {
    sub_25F0B7E94(v13, &qword_27FD47008, &qword_25F17B688);
    sub_25F0B7E94(v15, &qword_27FD47008, &qword_25F17B688);
    (*(v1 + 8))(v10, v0);
LABEL_6:
    sub_25F0B7E94(v6, &qword_27FD470B0, &qword_25F17B760);
    return 58.0;
  }

  v19 = &v6[v16];
  v20 = v24;
  (*(v1 + 32))(v24, v19, v0);
  sub_25F0C5EFC(&qword_27FD470B8, MEMORY[0x277CE0570], MEMORY[0x277CE0590]);
  v21 = sub_25F17904C();
  v22 = *(v1 + 8);
  v22(v20, v0);
  sub_25F0B7E94(v13, &qword_27FD47008, &qword_25F17B688);
  sub_25F0B7E94(v15, &qword_27FD47008, &qword_25F17B688);
  v22(v10, v0);
  sub_25F0B7E94(v6, &qword_27FD47008, &qword_25F17B688);
  result = 58.0;
  if (v21)
  {
    return 29.0;
  }

  return result;
}

uint64_t sub_25F0C4074@<X0>(uint64_t a1@<X8>)
{
  v94 = a1;
  v86 = sub_25F178BAC() - 8;
  MEMORY[0x28223BE20](v86);
  v85 = &v82 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD47050, &qword_25F17B700);
  MEMORY[0x28223BE20](v91);
  v89 = &v82 - v2;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD47058, &qword_25F17B708);
  MEMORY[0x28223BE20](v88);
  v92 = &v82 - v3;
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD47060, &qword_25F17B710);
  MEMORY[0x28223BE20](v90);
  v93 = &v82 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD47068, &qword_25F17B718);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v82 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD47070, &qword_25F17B720);
  v9 = v8 - 8;
  MEMORY[0x28223BE20](v8);
  v11 = &v82 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD47078, &qword_25F17B728);
  v13 = v12 - 8;
  MEMORY[0x28223BE20](v12);
  v83 = &v82 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD47080, &qword_25F17B730);
  v16 = v15 - 8;
  MEMORY[0x28223BE20](v15);
  v18 = &v82 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD47088, &qword_25F17B738);
  v20 = v19 - 8;
  MEMORY[0x28223BE20](v19);
  v22 = &v82 - v21;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD47090, &qword_25F17B740);
  MEMORY[0x28223BE20](v84);
  v87 = &v82 - v23;
  *v7 = sub_25F178CAC();
  *(v7 + 1) = 0;
  v7[16] = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD47098, &qword_25F17B748);
  sub_25F178D1C();
  sub_25F178F5C();
  v24 = v22;
  sub_25F178BBC();
  sub_25F0B7D50(v7, v11, &qword_27FD47068, &qword_25F17B718);
  v25 = &v11[*(v9 + 44)];
  v26 = v100;
  *(v25 + 4) = v99;
  *(v25 + 5) = v26;
  *(v25 + 6) = v101;
  v27 = v96;
  *v25 = v95;
  *(v25 + 1) = v27;
  v28 = v98;
  *(v25 + 2) = v97;
  *(v25 + 3) = v28;
  LOBYTE(v7) = sub_25F178D5C();
  sub_25F178B4C();
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v36 = v35;
  v37 = v83;
  sub_25F0B7D50(v11, v83, &qword_27FD47070, &qword_25F17B720);
  v38 = v37 + *(v13 + 44);
  *v38 = v7;
  *(v38 + 8) = v30;
  *(v38 + 16) = v32;
  *(v38 + 24) = v34;
  *(v38 + 32) = v36;
  *(v38 + 40) = 0;
  v39 = sub_25F178E8C();
  KeyPath = swift_getKeyPath();
  sub_25F0B7D50(v37, v18, &qword_27FD47078, &qword_25F17B728);
  v41 = &v18[*(v16 + 44)];
  *v41 = KeyPath;
  v41[1] = v39;
  v42 = v85;
  v43 = sub_25F0C48AC();
  sub_25F0B7D50(v18, v24, &qword_27FD47080, &qword_25F17B730);
  *(v24 + *(v20 + 44)) = v43;
  v44 = *(v86 + 28);
  v45 = *MEMORY[0x277CE0118];
  v46 = sub_25F178CCC();
  (*(*(v46 - 8) + 104))(&v42[v44], v45, v46);
  __asm { FMOV            V0.2D, #14.0 }

  *v42 = _Q0;
  v52 = sub_25F17905C();
  v53 = objc_opt_self();
  v54 = [v53 colorNamed_];

  if (!v54)
  {
    v55 = [v53 systemBlueColor];
  }

  v56 = sub_25F178E5C();
  v57 = v89;
  sub_25F0C5E98(v42, v89);
  v58 = v91;
  *(v57 + *(v91 + 52)) = v56;
  *(v57 + *(v58 + 56)) = 256;
  v59 = sub_25F0C4BE8();
  v60 = v92;
  sub_25F0B7D50(v57, v92, &qword_27FD47050, &qword_25F17B700);
  *(v60 + *(v88 + 36)) = v59;
  sub_25F178F5C();
  sub_25F178B8C();
  v61 = v93;
  sub_25F0B7D50(v60, v93, &qword_27FD47058, &qword_25F17B708);
  v62 = (v61 + *(v90 + 36));
  v63 = v103;
  *v62 = v102;
  v62[1] = v63;
  v62[2] = v104;
  v64 = sub_25F178F5C();
  v66 = v65;
  v67 = v87;
  v68 = &v87[*(v84 + 36)];
  sub_25F0B7D50(v61, v68, &qword_27FD47060, &qword_25F17B710);
  v69 = (v68 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD470A0, &qword_25F17B750) + 36));
  *v69 = v64;
  v69[1] = v66;
  sub_25F0B7D50(v24, v67, &qword_27FD47088, &qword_25F17B738);
  LOBYTE(v66) = sub_25F178D7C();
  v70 = sub_25F178D8C();
  sub_25F178D8C();
  if (sub_25F178D8C() != v66)
  {
    v70 = sub_25F178D8C();
  }

  sub_25F0C3C08();
  sub_25F178B4C();
  v72 = v71;
  v74 = v73;
  v76 = v75;
  v78 = v77;
  v79 = v94;
  sub_25F0B7D50(v67, v94, &qword_27FD47090, &qword_25F17B740);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD470A8, &qword_25F17B758);
  v81 = v79 + *(result + 36);
  *v81 = v70;
  *(v81 + 8) = v72;
  *(v81 + 16) = v74;
  *(v81 + 24) = v76;
  *(v81 + 32) = v78;
  *(v81 + 40) = 0;
  return result;
}

double sub_25F0C48AC()
{
  v21 = sub_25F178C9C();
  v1 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v3 = &v21 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_25F178B6C();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v21 - v9;
  v11 = type metadata accessor for UV_BorderedButtonStyle_iOS.BorderedButton(0);
  sub_25F0C52B8(v10);
  (*(v5 + 104))(v8, *MEMORY[0x277CDF3C0], v4);
  v12 = sub_25F178B5C();
  v13 = *(v5 + 8);
  v13(v8, v4);
  v13(v10, v4);
  v14 = v0 + *(v11 + 20);
  v15 = *v14;
  v16 = *(v14 + 8);
  if (v12)
  {
    if (v16)
    {
      if ((v15 & 1) == 0)
      {
        return 0.5;
      }
    }

    else
    {

      sub_25F17954C();
      v19 = sub_25F178D4C();
      sub_25F17882C();

      sub_25F178C8C();
      swift_getAtKeyPath();
      sub_25F0C5F44(v15, 0);
      (*(v1 + 8))(v3, v21);
      if (v22 != 1)
      {
        return 0.5;
      }
    }

    v20 = sub_25F178D2C();
    result = 1.0;
    if ((v20 & 1) == 0)
    {
      return result;
    }

    return 0.5;
  }

  if (!v16)
  {

    sub_25F17954C();
    v17 = sub_25F178D4C();
    sub_25F17882C();

    sub_25F178C8C();
    swift_getAtKeyPath();
    sub_25F0C5F44(v15, 0);
    (*(v1 + 8))(v3, v21);
    LOBYTE(v15) = v23;
  }

  result = 0.5;
  if (v15)
  {
    return 1.0;
  }

  return result;
}

double sub_25F0C4BE8()
{
  v1 = sub_25F178C9C();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v10[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = v0 + *(type metadata accessor for UV_BorderedButtonStyle_iOS.BorderedButton(0) + 20);
  v6 = *v5;
  if (*(v5 + 8) == 1)
  {
    if ((v6 & 1) == 0)
    {
      return 0.5;
    }

LABEL_5:
    v8 = sub_25F178D2C();
    result = 1.0;
    if ((v8 & 1) == 0)
    {
      return result;
    }

    return 0.5;
  }

  sub_25F17954C();
  v7 = sub_25F178D4C();
  sub_25F17882C();

  sub_25F178C8C();
  swift_getAtKeyPath();
  sub_25F0C5F44(v6, 0);
  (*(v2 + 8))(v4, v1);
  if (v10[15] == 1)
  {
    goto LABEL_5;
  }

  return 0.5;
}

uint64_t sub_25F0C4D64(uint64_t a1)
{
  v2 = sub_25F178B6C();
  MEMORY[0x28223BE20](v2);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_25F178BFC();
}

uint64_t sub_25F0C4E2C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD47008, &qword_25F17B688);
  MEMORY[0x28223BE20](v2 - 8);
  sub_25F0B7E2C(a1, &v5 - v3, &qword_27FD47008, &qword_25F17B688);
  return sub_25F178C3C();
}

uint64_t sub_25F0C4ED8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_25F178D3C();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  v5 = type metadata accessor for UV_BorderedButtonStyle_iOS.BorderedButton(0);
  v6 = a2 + v5[5];
  *v6 = swift_getKeyPath();
  *(v6 + 8) = 0;
  v7 = v5[6];
  *(a2 + v7) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD46FF8, &qword_25F17B648);
  swift_storeEnumTagMultiPayload();
  v8 = v5[7];
  *(a2 + v8) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD47000, &qword_25F17B680);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_25F0C501C()
{
  if (*(v0 + 56))
  {
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 32));
  }

  return MEMORY[0x2821FE8E8](v0, 112, 7);
}

unint64_t sub_25F0C5084(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27FD46F98;
  if (!qword_27FD46F98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD46F98);
  }

  return result;
}

uint64_t sub_25F0C50D8@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v4 = sub_25F178C9C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD47000, &qword_25F17B680);
  MEMORY[0x28223BE20](v8);
  v10 = &v13 - v9;
  sub_25F0B7E2C(v2, &v13 - v9, &qword_27FD47000, &qword_25F17B680);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_25F0B7D50(v10, a1, &qword_27FD47008, &qword_25F17B688);
  }

  sub_25F17954C();
  v12 = sub_25F178D4C();
  sub_25F17882C();

  sub_25F178C8C();
  swift_getAtKeyPath();

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_25F0C52B8@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v4 = sub_25F178C9C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD46FF8, &qword_25F17B648);
  MEMORY[0x28223BE20](v8);
  v10 = &v14 - v9;
  sub_25F0B7E2C(v2, &v14 - v9, &qword_27FD46FF8, &qword_25F17B648);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_25F178B6C();
    return (*(*(v11 - 8) + 32))(a1, v10, v11);
  }

  else
  {
    sub_25F17954C();
    v13 = sub_25F178D4C();
    sub_25F17882C();

    sub_25F178C8C();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t sub_25F0C54B8@<X0>(uint64_t *a1@<X8>)
{
  result = MEMORY[0x25F8D4B50]();
  *a1 = result;
  return result;
}

uint64_t sub_25F0C54E4@<X0>(uint64_t *a1@<X8>)
{
  result = MEMORY[0x25F8D4B50]();
  *a1 = result;
  return result;
}

uint64_t sub_25F0C5568@<X0>(uint64_t *a1@<X8>)
{
  result = sub_25F178C0C();
  *a1 = result;
  return result;
}

uint64_t sub_25F0C55C0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_25F178C4C();
  *a1 = result;
  return result;
}

unint64_t sub_25F0C562C()
{
  result = qword_27FD46FB8;
  if (!qword_27FD46FB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FD46E58, &qword_25F17B3E0);
    sub_25F0C56E4();
    sub_25F0B7D00(&qword_27FD46FE8, &qword_27FD46FF0, &qword_25F17B5A8, MEMORY[0x277CE01A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD46FB8);
  }

  return result;
}

unint64_t sub_25F0C56E4()
{
  result = qword_27FD46FC0;
  if (!qword_27FD46FC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FD46E40, &qword_25F17B3C8);
    sub_25F0C579C();
    sub_25F0B7D00(&qword_27FD46FE0, &qword_27FD46E50, &qword_25F17B3D8, MEMORY[0x277CE0328]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD46FC0);
  }

  return result;
}

unint64_t sub_25F0C579C()
{
  result = qword_27FD46FC8;
  if (!qword_27FD46FC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FD46E38, &qword_25F17B3C0);
    sub_25F0B7D00(&qword_27FD46FD0, &qword_27FD46FD8, &qword_25F17B5A0, MEMORY[0x277CE11A8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD46FC8);
  }

  return result;
}

uint64_t sub_25F0C5890@<X0>(_BYTE *a1@<X8>)
{
  result = sub_25F178C6C();
  *a1 = result & 1;
  return result;
}

uint64_t sub_25F0C594C(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_25F178D3C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_3:

    return v9(v10, a2, v8);
  }

  if (a2 == 254)
  {
    v12 = *(a1 + a3[5] + 8);
    if (v12 > 1)
    {
      return (v12 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD47010, &qword_25F17B690);
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a2)
  {
    v8 = v13;
    v9 = *(v14 + 48);
    v10 = a1 + a3[6];
    goto LABEL_3;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD47018, &qword_25F17B698);
  v16 = *(*(v15 - 8) + 48);
  v17 = a1 + a3[7];

  return v16(v17, a2, v15);
}

uint64_t sub_25F0C5AE8(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = sub_25F178D3C();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_3:

    return v11(v12, a2, a2, v10);
  }

  if (a3 == 254)
  {
    *(a1 + a4[5] + 8) = -a2;
    return result;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD47010, &qword_25F17B690);
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + a4[6];
    goto LABEL_3;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD47018, &qword_25F17B698);
  v16 = *(*(v15 - 8) + 56);
  v17 = a1 + a4[7];

  return v16(v17, a2, a2, v15);
}

void sub_25F0C5C74(uint64_t a1)
{
  sub_25F178D3C();
  if (v1 <= 0x3F)
  {
    sub_25F0C5D28();
    if (v2 <= 0x3F)
    {
      sub_25F0C5D78(319);
      if (v3 <= 0x3F)
      {
        sub_25F0C5DD0(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_25F0C5D28()
{
  if (!qword_27FD47030)
  {
    v0 = sub_25F178B7C();
    if (!v1)
    {
      atomic_store(v0, &qword_27FD47030);
    }
  }
}

void sub_25F0C5D78(uint64_t a1)
{
  if (!qword_27FD47038)
  {
    sub_25F178B6C();
    v1 = sub_25F178B7C();
    if (!v2)
    {
      atomic_store(v1, &qword_27FD47038);
    }
  }
}

void sub_25F0C5DD0(uint64_t a1)
{
  if (!qword_27FD47040)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FD47008, &qword_25F17B688);
    v1 = sub_25F178B7C();
    if (!v2)
    {
      atomic_store(v1, &qword_27FD47040);
    }
  }
}

uint64_t sub_25F0C5E98(uint64_t a1, uint64_t a2)
{
  v4 = sub_25F178BAC();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_25F0C5EFC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_25F0C5F44(uint64_t result, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return v2;
}

unint64_t sub_25F0C5F54()
{
  result = qword_27FD470C0;
  if (!qword_27FD470C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FD470A8, &qword_25F17B758);
    sub_25F0C5FE0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD470C0);
  }

  return result;
}

unint64_t sub_25F0C5FE0()
{
  result = qword_27FD470C8;
  if (!qword_27FD470C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FD47090, &qword_25F17B740);
    sub_25F0C6098();
    sub_25F0B7D00(&qword_27FD47108, &qword_27FD470A0, &qword_25F17B750, MEMORY[0x277CE0328]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD470C8);
  }

  return result;
}

unint64_t sub_25F0C6098()
{
  result = qword_27FD470D0;
  if (!qword_27FD470D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FD47088, &qword_25F17B738);
    sub_25F0C6124();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD470D0);
  }

  return result;
}

unint64_t sub_25F0C6124()
{
  result = qword_27FD470D8;
  if (!qword_27FD470D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FD47080, &qword_25F17B730);
    sub_25F0C61DC();
    sub_25F0B7D00(&qword_27FD470F8, &qword_27FD47100, &qword_25F17B768, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD470D8);
  }

  return result;
}

unint64_t sub_25F0C61DC()
{
  result = qword_27FD470E0;
  if (!qword_27FD470E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FD47078, &qword_25F17B728);
    sub_25F0C6268();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD470E0);
  }

  return result;
}

unint64_t sub_25F0C6268()
{
  result = qword_27FD470E8;
  if (!qword_27FD470E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FD47070, &qword_25F17B720);
    sub_25F0B7D00(&qword_27FD470F0, &qword_27FD47068, &qword_25F17B718, MEMORY[0x277CE1138]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD470E8);
  }

  return result;
}

uint64_t sub_25F0C632C(uint64_t a1, uint64_t a2)
{
  if (a2 < 0)
  {
    v4 = 0x3A7361766E61635BLL;
    v2 = (*((a2 & 0x7FFFFFFFFFFFFFFFLL) + 0x20))();
  }

  else
  {
    v4 = 0x203A49556E6F6E5BLL;
    v2 = (*(a2 + 40))();
  }

  MEMORY[0x25F8D50D0](v2);

  MEMORY[0x25F8D50D0](93, 0xE100000000000000);
  return v4;
}

uint64_t sub_25F0C63F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v66 = a2;
  v68 = a1;
  v8 = sub_25F17888C();
  v67 = *(v8 - 8);
  v9 = MEMORY[0x28223BE20](v8);
  v11 = &v64 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v64 - v12;
  v14 = type metadata accessor for ContentKey(0);
  v15 = v14 - 8;
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v64 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v16);
  v21 = &v64 - v20;
  MEMORY[0x28223BE20](v19);
  v23 = &v64 - v22;
  v24 = sub_25F1776AC();
  (*(*(v24 - 8) + 16))(v23, a3, v24);
  sub_25F0C6F18(a4, &v23[*(v15 + 28)]);
  v25 = *v5;
  if (*(*v5 + 16) && (v26 = sub_25F0C8848(v23), (v27 & 1) != 0))
  {
    v28 = (*(v25 + 56) + 16 * v26);
    v30 = *v28;
    v29 = v28[1];
    sub_25F17884C();
    sub_25F0C9BD4(v23, v21);
    v31 = sub_25F17887C();
    v32 = sub_25F17953C();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v64 = swift_slowAlloc();
      v69 = v64;
      *v33 = 136315650;
      v34 = sub_25F0C632C(v68, v66);
      v36 = sub_25F0BECF0(v34, v35, &v69);
      v68 = v29;
      v37 = v36;

      *(v33 + 4) = v37;
      v65 = v8;
      *(v33 + 12) = 2080;
      v38 = ContentKey.description.getter();
      v40 = v39;
      sub_25F0CA760(v21);
      v41 = sub_25F0BECF0(v38, v40, &v69);

      *(v33 + 14) = v41;
      *(v33 + 22) = 2080;
      v42 = sub_25F0C632C(v30, v68);
      v44 = sub_25F0BECF0(v42, v43, &v69);

      *(v33 + 24) = v44;
      _os_log_impl(&dword_25F0B3000, v31, v32, "can't register %s for %s -- existing record: %s", v33, 0x20u);
      v45 = v64;
      swift_arrayDestroy();
      MEMORY[0x25F8D6230](v45, -1, -1);
      MEMORY[0x25F8D6230](v33, -1, -1);

      (*(v67 + 8))(v13, v65);
    }

    else
    {

      sub_25F0CA760(v21);
      (*(v67 + 8))(v13, v8);
    }

    return sub_25F0CA760(v23);
  }

  else
  {
    sub_25F17884C();
    sub_25F0C9BD4(v23, v18);
    v46 = sub_25F17887C();
    v47 = sub_25F17951C();
    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      v64 = swift_slowAlloc();
      v69 = v64;
      *v48 = 136315394;
      v49 = v66;
      v50 = sub_25F0C632C(v68, v66);
      v52 = sub_25F0BECF0(v50, v51, &v69);
      v65 = v8;
      v53 = v52;

      *(v48 + 4) = v53;
      *(v48 + 12) = 2080;
      v54 = ContentKey.description.getter();
      v56 = v55;
      sub_25F0CA760(v18);
      v57 = sub_25F0BECF0(v54, v56, &v69);

      *(v48 + 14) = v57;
      v58 = v47;
      v59 = v68;
      _os_log_impl(&dword_25F0B3000, v46, v58, "registering %s for %s", v48, 0x16u);
      v60 = v64;
      swift_arrayDestroy();
      MEMORY[0x25F8D6230](v60, -1, -1);
      MEMORY[0x25F8D6230](v48, -1, -1);

      (*(v67 + 8))(v11, v65);
    }

    else
    {

      sub_25F0CA760(v18);
      (*(v67 + 8))(v11, v8);
      v49 = v66;
      v59 = v68;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v69 = *v5;
    *v5 = 0x8000000000000000;
    sub_25F16E794(v59, v49, v23, isUniquelyReferenced_nonNull_native);
    sub_25F0CA760(v23);
    v62 = v69;

    *v5 = v62;
  }

  return result;
}

uint64_t ContentKey.init(for:with:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_25F1776AC();
  (*(*(v6 - 8) + 32))(a3, a1, v6);
  v7 = type metadata accessor for ContentKey(0);
  return sub_25F0B7D50(a2, a3 + *(v7 + 20), &qword_27FD47110, &qword_25F17B780);
}

uint64_t type metadata accessor for ContentKey(uint64_t a1)
{
  result = qword_27FD47148;
  if (!qword_27FD47148)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void ContentProviderRegistry.register<A>(provider:for:override:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *(a2 + 16);
  if (v5)
  {
    v8 = type metadata accessor for NonUIBox(0, a4, a5, a4);
    WitnessTable = swift_getWitnessTable();
    v10 = *(sub_25F1776AC() - 8);
    v11 = a2 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
    v12 = *(v10 + 72);
    do
    {
      sub_25F0C63F0(v8, WitnessTable, v11, a3);
      v11 += v12;
      --v5;
    }

    while (v5);
  }
}

{
  v5 = *(a2 + 16);
  if (v5)
  {
    v8 = type metadata accessor for CanvasBox(0, a4, a5, a4);
    WitnessTable = swift_getWitnessTable();
    v10 = *(sub_25F1776AC() - 8);
    v11 = a2 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
    v12 = *(v10 + 72);
    do
    {
      sub_25F0C63F0(v8, WitnessTable | 0x8000000000000000, v11, a3);
      v11 += v12;
      --v5;
    }

    while (v5);
  }
}

uint64_t ContentKey.description.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD47110, &qword_25F17B780);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v14 - v2;
  v4 = sub_25F1776BC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ContentKey(0);
  sub_25F0C6F18(v0 + *(v8 + 20), v3);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    sub_25F0B7E94(v3, &qword_27FD47110, &qword_25F17B780);
    v14 = 60;
    v15 = 0xE100000000000000;
    sub_25F1776AC();
    sub_25F0CA7BC(&qword_27FD47118, MEMORY[0x277D408E0], MEMORY[0x277D40900]);
    v9 = sub_25F17980C();
    MEMORY[0x25F8D50D0](v9);

    MEMORY[0x25F8D50D0](62, 0xE100000000000000);
    return v14;
  }

  else
  {
    (*(v5 + 32))(v7, v3, v4);
    v14 = 60;
    v15 = 0xE100000000000000;
    sub_25F1776AC();
    sub_25F0CA7BC(&qword_27FD47118, MEMORY[0x277D408E0], MEMORY[0x277D40900]);
    v11 = sub_25F17980C();
    MEMORY[0x25F8D50D0](v11);

    MEMORY[0x25F8D50D0](8250, 0xE200000000000000);
    sub_25F0CA7BC(&qword_27FD47120, MEMORY[0x277D40908], MEMORY[0x277D40920]);
    v12 = sub_25F17980C();
    MEMORY[0x25F8D50D0](v12);

    MEMORY[0x25F8D50D0](62, 0xE100000000000000);
    v10 = v14;
    (*(v5 + 8))(v7, v4);
  }

  return v10;
}

uint64_t sub_25F0C6F18(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD47110, &qword_25F17B780);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t ContentKey.hash(into:)(uint64_t a1)
{
  v2 = sub_25F1776BC();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD47110, &qword_25F17B780);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v11 - v7;
  sub_25F1776AC();
  sub_25F0CA7BC(&qword_27FD47128, MEMORY[0x277D408E0], MEMORY[0x277D408E8]);
  sub_25F17902C();
  v9 = type metadata accessor for ContentKey(0);
  sub_25F0C6F18(v1 + *(v9 + 20), v8);
  if ((*(v3 + 48))(v8, 1, v2) == 1)
  {
    return sub_25F1798EC();
  }

  (*(v3 + 32))(v5, v8, v2);
  sub_25F1798EC();
  sub_25F0CA7BC(&qword_27FD47130, MEMORY[0x277D40908], MEMORY[0x277D40910]);
  sub_25F17902C();
  return (*(v3 + 8))(v5, v2);
}

uint64_t ContentKey.hashValue.getter()
{
  v1 = sub_25F1776BC();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD47110, &qword_25F17B780);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v10 - v6;
  sub_25F1798CC();
  sub_25F1776AC();
  sub_25F0CA7BC(&qword_27FD47128, MEMORY[0x277D408E0], MEMORY[0x277D408E8]);
  sub_25F17902C();
  v8 = type metadata accessor for ContentKey(0);
  sub_25F0C6F18(v0 + *(v8 + 20), v7);
  if ((*(v2 + 48))(v7, 1, v1) == 1)
  {
    sub_25F1798EC();
  }

  else
  {
    (*(v2 + 32))(v4, v7, v1);
    sub_25F1798EC();
    sub_25F0CA7BC(&qword_27FD47130, MEMORY[0x277D40908], MEMORY[0x277D40910]);
    sub_25F17902C();
    (*(v2 + 8))(v4, v1);
  }

  return sub_25F17990C();
}

uint64_t sub_25F0C73F4(uint64_t a1, uint64_t a2)
{
  v4 = sub_25F1776BC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD47110, &qword_25F17B780);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v12 - v9;
  sub_25F1776AC();
  sub_25F0CA7BC(&qword_27FD47128, MEMORY[0x277D408E0], MEMORY[0x277D408E8]);
  sub_25F17902C();
  sub_25F0C6F18(v2 + *(a2 + 20), v10);
  if ((*(v5 + 48))(v10, 1, v4) == 1)
  {
    return sub_25F1798EC();
  }

  (*(v5 + 32))(v7, v10, v4);
  sub_25F1798EC();
  sub_25F0CA7BC(&qword_27FD47130, MEMORY[0x277D40908], MEMORY[0x277D40910]);
  sub_25F17902C();
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_25F0C761C(uint64_t a1, uint64_t a2)
{
  v4 = sub_25F1776BC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD47110, &qword_25F17B780);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v12 - v9;
  sub_25F1798CC();
  sub_25F1776AC();
  sub_25F0CA7BC(&qword_27FD47128, MEMORY[0x277D408E0], MEMORY[0x277D408E8]);
  sub_25F17902C();
  sub_25F0C6F18(v2 + *(a2 + 20), v10);
  if ((*(v5 + 48))(v10, 1, v4) == 1)
  {
    sub_25F1798EC();
  }

  else
  {
    (*(v5 + 32))(v7, v10, v4);
    sub_25F1798EC();
    sub_25F0CA7BC(&qword_27FD47130, MEMORY[0x277D40908], MEMORY[0x277D40910]);
    sub_25F17902C();
    (*(v5 + 8))(v7, v4);
  }

  return sub_25F17990C();
}

uint64_t (*ContentProviderRegistry.boxRecipe(for:)(uint64_t a1))()
{
  v3 = type metadata accessor for ContentKey(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = *v1;
  if (!*(v6 + 16))
  {
    return 0;
  }

  v7 = sub_25F0C8848(a1);
  if ((v8 & 1) == 0)
  {
    return 0;
  }

  v9 = (*(v6 + 56) + 16 * v7);
  v10 = *v9;
  v11 = v9[1];
  if (v11 < 0)
  {
    v11 &= ~0x8000000000000000;
    v12 = sub_25F0C9CA0;
  }

  else
  {
    v12 = sub_25F0C9E84;
  }

  sub_25F0C9BD4(a1, &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = v10;
  *(v15 + 24) = v11;
  sub_25F0C9C3C(&v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v15 + v14);
  return v12;
}

uint64_t sub_25F0C79E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v8 = sub_25F1776AC();
  MEMORY[0x28223BE20](v8);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v10, a3);
  v12 = *(a2 + 24);
  a4[3] = a1;
  a4[4] = a2;
  __swift_allocate_boxed_opaque_existential_1(a4);
  return v12(v10, a1, a2);
}

uint64_t sub_25F0C7AE0@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v11 = sub_25F1776AC();
  MEMORY[0x28223BE20](v11);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v14 + 16))(v13, a5);
  v15 = *(a4 + 16);
  a6[3] = a3;
  a6[4] = a4;
  __swift_allocate_boxed_opaque_existential_1(a6);
  v16 = swift_unknownObjectRetain();
  return v15(v16, a2, v13, a3, a4);
}

uint64_t ContentProviderRegistry.variantGroups(for:)(uint64_t a1)
{
  v2 = *v1;
  if (!*(v2 + 16))
  {
    return 0;
  }

  v4 = sub_25F0C8848(a1);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = *(*(v2 + 56) + 16 * v4 + 8);
  if (v6 < 0)
  {
    return (*((v6 & 0x7FFFFFFFFFFFFFFFLL) + 0x18))(a1);
  }

  else
  {
    return (*(v6 + 32))(a1);
  }
}

BOOL sub_25F0C7CE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for ContentKey(0);
  v7 = v6 - 8;
  MEMORY[0x28223BE20](v6);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_25F1776AC();
  (*(*(v10 - 8) + 16))(v9, a2, v10);
  v11 = *(v7 + 28);
  v12 = sub_25F1776BC();
  v13 = *(v12 - 8);
  (*(v13 + 16))(&v9[v11], a1, v12);
  (*(v13 + 56))(&v9[v11], 0, 1, v12);
  if (*(a3 + 16) && (v14 = sub_25F0C8848(v9), (v15 & 1) != 0))
  {
    v16 = (*(a3 + 56) + 16 * v14);
    v17 = *v16;
    v18 = v16[1];
    sub_25F0CA760(v9);
    v19 = (~v17 & 0xF000000000000007) == 0;
    v20 = (~v18 & 0xF000000000000007) == 0;
  }

  else
  {
    sub_25F0CA760(v9);
    v19 = 1;
    v20 = 1;
  }

  return !v19 || !v20;
}

uint64_t sub_25F0C7E84@<X0>(uint64_t (*a1)(char *)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v23 = a1;
  v6 = sub_25F1776BC();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a2 + 16);
  if (v10)
  {
    v20 = v7;
    v21 = a3;
    v12 = *(v7 + 16);
    v11 = v7 + 16;
    v22 = v12;
    v13 = (v11 - 8);
    v14 = a2 + ((*(v11 + 64) + 32) & ~*(v11 + 64));
    v15 = *(v11 + 56);
    while (1)
    {
      v22(v9, v14, v6);
      v16 = v23(v9);
      if (v3)
      {
        return (*v13)(v9, v6);
      }

      if (v16)
      {
        break;
      }

      (*v13)(v9, v6);
      v14 += v15;
      if (!--v10)
      {
        v17 = 1;
        v7 = v20;
        a3 = v21;
        return (*(v7 + 56))(a3, v17, 1, v6);
      }
    }

    v7 = v20;
    a3 = v21;
    (*(v20 + 32))(v21, v9, v6);
    v17 = 0;
  }

  else
  {
    v17 = 1;
  }

  return (*(v7 + 56))(a3, v17, 1, v6);
}

uint64_t static CategoryMap.contentCategories.getter(uint64_t a1, uint64_t a2)
{
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD47138, &qword_25F17B788);
  v4 = MEMORY[0x28223BE20](v58);
  v57 = &v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v4);
  v56 = &v48 - v7;
  MEMORY[0x28223BE20](v6);
  v55 = &v48 - v8;
  v9 = sub_25F1776AC();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v54 = &v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = (*(a2 + 8))(a1, a2);
  v13 = *(v12 + 16);
  if (v13)
  {
    v65 = MEMORY[0x277D84F90];
    sub_25F0C97B8(0, v13, 0);
    v14 = v65;
    v15 = v12 + 64;
    result = sub_25F17967C();
    v17 = result;
    v18 = 0;
    v52 = v12;
    v53 = v10 + 16;
    v19 = v10 + 32;
    v48 = v12 + 72;
    v49 = v13;
    v50 = v12 + 64;
    v51 = v10;
    while ((v17 & 0x8000000000000000) == 0 && v17 < 1 << *(v12 + 32))
    {
      if ((*(v15 + 8 * (v17 >> 6)) & (1 << v17)) == 0)
      {
        goto LABEL_23;
      }

      v61 = 1 << v17;
      v62 = v17 >> 6;
      v21 = *(v12 + 36);
      v59 = v18;
      v60 = v21;
      v22 = v19;
      v23 = v58;
      v24 = *(v58 + 48);
      v25 = *(v12 + 48);
      v63 = *(v10 + 72);
      v26 = v9;
      v27 = v55;
      (*(v10 + 16))(v55, v25 + v63 * v17, v26);
      v28 = *(v12 + 56);
      v29 = sub_25F177D5C();
      v30 = *(v29 - 8);
      v64 = v14;
      v31 = v30;
      (*(v30 + 16))(&v27[v24], v28 + *(v30 + 72) * v17, v29);
      v32 = *(v10 + 32);
      v33 = v56;
      v32(v56, v27, v26);
      v34 = &v27[v24];
      v9 = v26;
      (*(v31 + 32))(&v33[*(v23 + 48)], v34, v29);
      v35 = v33;
      v36 = v57;
      sub_25F0B7D50(v35, v57, &qword_27FD47138, &qword_25F17B788);
      v37 = *(v23 + 48);
      v19 = v22;
      v38 = v54;
      v32(v54, v36, v9);
      (*(v31 + 8))(v36 + v37, v29);
      v14 = v64;
      v65 = v64;
      v40 = *(v64 + 16);
      v39 = *(v64 + 24);
      if (v40 >= v39 >> 1)
      {
        sub_25F0C97B8((v39 > 1), v40 + 1, 1);
        v14 = v65;
      }

      *(v14 + 16) = v40 + 1;
      v10 = v51;
      result = (v32)(v14 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + v40 * v63, v38, v9);
      v12 = v52;
      v20 = 1 << *(v52 + 32);
      if (v17 >= v20)
      {
        goto LABEL_24;
      }

      v15 = v50;
      v41 = *(v50 + 8 * v62);
      if ((v41 & v61) == 0)
      {
        goto LABEL_25;
      }

      if (v60 != *(v52 + 36))
      {
        goto LABEL_26;
      }

      v42 = v41 & (-2 << (v17 & 0x3F));
      if (v42)
      {
        v20 = __clz(__rbit64(v42)) | v17 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v43 = v62 << 6;
        v44 = v62 + 1;
        v45 = (v48 + 8 * v62);
        while (v44 < (v20 + 63) >> 6)
        {
          v47 = *v45++;
          v46 = v47;
          v43 += 64;
          ++v44;
          if (v47)
          {
            result = sub_25F0C9F18(v17, v60, 0);
            v20 = __clz(__rbit64(v46)) + v43;
            goto LABEL_4;
          }
        }

        result = sub_25F0C9F18(v17, v60, 0);
      }

LABEL_4:
      v18 = v59 + 1;
      v17 = v20;
      if (v59 + 1 == v49)
      {

        return v14;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return result;
}

uint64_t static CategoryMap.unhandled(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v8 = sub_25F1776AC();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v11, a1, v8);
  a4[3] = type metadata accessor for Unhandled(0, a2, a3, v12);
  a4[4] = swift_getWitnessTable();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a4);
  return (*(v9 + 32))(boxed_opaque_existential_1, v11, v8);
}

uint64_t sub_25F0C86F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821A0810](a1, WitnessTable);
}

uint64_t sub_25F0C8750(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821A07F0](a1, WitnessTable);
}

unint64_t sub_25F0C87B4(uint64_t a1)
{
  sub_25F17908C();
  sub_25F1798CC();
  sub_25F17911C();
  v2 = sub_25F17990C();

  return sub_25F0C8ED8(a1, v2);
}

unint64_t sub_25F0C8848(uint64_t a1)
{
  v2 = sub_25F1776BC();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD47110, &qword_25F17B780);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v12 - v7;
  sub_25F1798CC();
  sub_25F1776AC();
  sub_25F0CA7BC(&qword_27FD47128, MEMORY[0x277D408E0], MEMORY[0x277D408E8]);
  sub_25F17902C();
  v9 = type metadata accessor for ContentKey(0);
  sub_25F0C6F18(a1 + *(v9 + 20), v8);
  if ((*(v3 + 48))(v8, 1, v2) == 1)
  {
    sub_25F1798EC();
  }

  else
  {
    (*(v3 + 32))(v5, v8, v2);
    sub_25F1798EC();
    sub_25F0CA7BC(&qword_27FD47130, MEMORY[0x277D40908], MEMORY[0x277D40910]);
    sub_25F17902C();
    (*(v3 + 8))(v5, v2);
  }

  v10 = sub_25F17990C();
  return sub_25F0C8FDC(a1, v10);
}

unint64_t sub_25F0C8AA8(uint64_t a1)
{
  sub_25F1776AC();
  v2 = MEMORY[0x277D408E0];
  sub_25F0CA7BC(&qword_27FD47128, MEMORY[0x277D408E0], MEMORY[0x277D408E8]);
  v3 = sub_25F17901C();
  return sub_25F0C94F4(a1, v3, MEMORY[0x277D408E0], &qword_27FD47210, v2, MEMORY[0x277D408F0]);
}

unint64_t sub_25F0C8B7C(uint64_t a1)
{
  sub_25F177E8C();
  v2 = MEMORY[0x277D403A8];
  sub_25F0CA7BC(&qword_27FD47200, MEMORY[0x277D403A8], MEMORY[0x277D403B0]);
  v3 = sub_25F17901C();
  return sub_25F0C94F4(a1, v3, MEMORY[0x277D403A8], &qword_27FD47208, v2, MEMORY[0x277D403B8]);
}

unint64_t sub_25F0C8C50(uint64_t a1)
{
  sub_25F17722C();
  v2 = MEMORY[0x277D406E8];
  sub_25F0CA7BC(&qword_27FD471F0, MEMORY[0x277D406E8], MEMORY[0x277D406F0]);
  v3 = sub_25F17901C();
  return sub_25F0C94F4(a1, v3, MEMORY[0x277D406E8], &qword_27FD471F8, v2, MEMORY[0x277D406F8]);
}

uint64_t sub_25F0C8D3C(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  sub_25F1798CC();
  sub_25F17911C();
  v5 = sub_25F17990C();

  return a3(a1, a2, v5);
}

unint64_t sub_25F0C8DC0(uint64_t a1)
{
  v2 = sub_25F1798BC();

  return sub_25F0C974C(a1, v2);
}

unint64_t sub_25F0C8E04(uint64_t a1)
{
  sub_25F17776C();
  v2 = MEMORY[0x277D40A08];
  sub_25F0CA7BC(&qword_27FD471E0, MEMORY[0x277D40A08], MEMORY[0x277D40A10]);
  v3 = sub_25F17901C();
  return sub_25F0C94F4(a1, v3, MEMORY[0x277D40A08], &qword_27FD471E8, v2, MEMORY[0x277D40A18]);
}

unint64_t sub_25F0C8ED8(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = sub_25F17908C();
      v8 = v7;
      if (v6 == sub_25F17908C() && v8 == v9)
      {
        break;
      }

      v11 = sub_25F17983C();

      if ((v11 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_25F0C8FDC(uint64_t a1, uint64_t a2)
{
  v5 = sub_25F1776BC();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v32 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD47110, &qword_25F17B780);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v30 - v9;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD47218, &qword_25F17BAA8);
  MEMORY[0x28223BE20](v38);
  v12 = &v30 - v11;
  v37 = type metadata accessor for ContentKey(0);
  MEMORY[0x28223BE20](v37);
  v15 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = v2;
  v16 = -1 << *(v2 + 32);
  v17 = a2 & ~v16;
  v36 = v2 + 64;
  if ((*(v2 + 64 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17))
  {
    v18 = (v6 + 48);
    v19 = *(v13 + 72);
    v39 = ~v16;
    v40 = v19;
    v31 = (v6 + 32);
    v34 = (v6 + 8);
    v35 = v10;
    v20 = v36;
    do
    {
      sub_25F0C9BD4(*(v41 + 48) + v40 * v17, v15);
      sub_25F1776AC();
      sub_25F0CA7BC(&qword_27FD47220, MEMORY[0x277D408E0], MEMORY[0x277D408F8]);
      sub_25F1791FC();
      sub_25F1791FC();
      if (v44 == v42 && v45 == v43)
      {
      }

      else
      {
        v22 = sub_25F17983C();

        if ((v22 & 1) == 0)
        {
          sub_25F0CA760(v15);
          goto LABEL_4;
        }
      }

      v23 = *(v37 + 20);
      v24 = *(v38 + 48);
      sub_25F0C6F18(&v15[v23], v12);
      sub_25F0C6F18(a1 + v23, &v12[v24]);
      v25 = *v18;
      if ((*v18)(v12, 1, v5) == 1)
      {
        sub_25F0CA760(v15);
        if (v25(&v12[v24], 1, v5) == 1)
        {
          sub_25F0B7E94(v12, &qword_27FD47110, &qword_25F17B780);
          return v17;
        }

        goto LABEL_17;
      }

      v26 = v35;
      sub_25F0C6F18(v12, v35);
      if (v25(&v12[v24], 1, v5) == 1)
      {
        sub_25F0CA760(v15);
        (*v34)(v26, v5);
        v20 = v36;
LABEL_17:
        sub_25F0B7E94(v12, &qword_27FD47218, &qword_25F17BAA8);
        goto LABEL_4;
      }

      v27 = v32;
      (*v31)(v32, &v12[v24], v5);
      sub_25F0CA7BC(qword_27FD47228, MEMORY[0x277D40908], MEMORY[0x277D40918]);
      v33 = sub_25F17904C();
      v28 = *v34;
      (*v34)(v27, v5);
      sub_25F0CA760(v15);
      v28(v26, v5);
      sub_25F0B7E94(v12, &qword_27FD47110, &qword_25F17B780);
      v20 = v36;
      if (v33)
      {
        return v17;
      }

LABEL_4:
      v17 = (v17 + 1) & v39;
    }

    while (((*(v20 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17) & 1) != 0);
  }

  return v17;
}

unint64_t sub_25F0C94F4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, uint64_t (*a5)(uint64_t), uint64_t a6)
{
  v24 = a5;
  v25 = a6;
  v23 = a4;
  v21[1] = a1;
  v8 = a3(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v21 - v10;
  v22 = v6;
  v12 = -1 << *(v6 + 32);
  v13 = a2 & ~v12;
  v21[0] = v6 + 64;
  if ((*(v6 + 64 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
  {
    v14 = ~v12;
    v17 = *(v9 + 16);
    v16 = v9 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    do
    {
      v15(v11, *(v22 + 48) + v18 * v13, v8);
      sub_25F0CA7BC(v23, v24, v25);
      v19 = sub_25F17904C();
      (*(v16 - 8))(v11, v8);
      if (v19)
      {
        break;
      }

      v13 = (v13 + 1) & v14;
    }

    while (((*(v21[0] + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) != 0);
  }

  return v13;
}

unint64_t sub_25F0C9694(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_25F17983C())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_25F0C974C(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

void *sub_25F0C97B8(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_25F12E7D0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_25F0C97D8(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_25F12E9A8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

BOOL _s15PreviewShellKit10ContentKeyV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_25F1776BC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v22 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD47110, &qword_25F17B780);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v21 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD47218, &qword_25F17BAA8);
  MEMORY[0x28223BE20](v10);
  v12 = &v21 - v11;
  sub_25F1776AC();
  sub_25F0CA7BC(&qword_27FD47220, MEMORY[0x277D408E0], MEMORY[0x277D408F8]);
  sub_25F1791FC();
  sub_25F1791FC();
  if (v24 == v23)
  {
  }

  else
  {
    v13 = sub_25F17983C();

    result = 0;
    if ((v13 & 1) == 0)
    {
      return result;
    }
  }

  v15 = *(type metadata accessor for ContentKey(0) + 20);
  v16 = *(v10 + 48);
  sub_25F0C6F18(a1 + v15, v12);
  sub_25F0C6F18(a2 + v15, &v12[v16]);
  v17 = *(v5 + 48);
  if (v17(v12, 1, v4) != 1)
  {
    sub_25F0C6F18(v12, v9);
    if (v17(&v12[v16], 1, v4) != 1)
    {
      v18 = v22;
      (*(v5 + 32))(v22, &v12[v16], v4);
      sub_25F0CA7BC(qword_27FD47228, MEMORY[0x277D40908], MEMORY[0x277D40918]);
      v19 = sub_25F17904C();
      v20 = *(v5 + 8);
      v20(v18, v4);
      v20(v9, v4);
      sub_25F0B7E94(v12, &qword_27FD47110, &qword_25F17B780);
      return (v19 & 1) != 0;
    }

    (*(v5 + 8))(v9, v4);
LABEL_9:
    sub_25F0B7E94(v12, &qword_27FD47218, &qword_25F17BAA8);
    return 0;
  }

  if (v17(&v12[v16], 1, v4) != 1)
  {
    goto LABEL_9;
  }

  sub_25F0B7E94(v12, &qword_27FD47110, &qword_25F17B780);
  return 1;
}

uint64_t sub_25F0C9BD4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ContentKey(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_25F0C9C3C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ContentKey(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_25F0C9CA0@<X0>(uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = *(type metadata accessor for ContentKey(0) - 8);
  v7 = *(v3 + 16);
  v8 = *(v3 + 24);
  v9 = v3 + ((*(v6 + 80) + 32) & ~*(v6 + 80));

  return sub_25F0C7AE0(a2, v7, v8, v9, a3);
}

uint64_t objectdestroyTm()
{
  v1 = (type metadata accessor for ContentKey(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*v1 + 64);
  v5 = sub_25F1776AC();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);
  v6 = v1[7];
  v7 = sub_25F1776BC();
  v8 = *(v7 - 8);
  if (!(*(v8 + 48))(v0 + v3 + v6, 1, v7))
  {
    (*(v8 + 8))(v0 + v3 + v6, v7);
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_25F0C9E84@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(type metadata accessor for ContentKey(0) - 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));

  return sub_25F0C79E0(v4, v5, v6, a1);
}

uint64_t sub_25F0C9F18(uint64_t result, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return v3;
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

uint64_t sub_25F0C9FF4(uint64_t *a1, int a2)
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

uint64_t sub_25F0CA03C(uint64_t result, int a2, int a3)
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

uint64_t sub_25F0CA09C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_25F1776AC();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD47110, &qword_25F17B780);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_25F0CA1AC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_25F1776AC();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD47110, &qword_25F17B780);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

void sub_25F0CA2B4(uint64_t a1)
{
  sub_25F1776AC();
  if (v1 <= 0x3F)
  {
    sub_25F0CA338(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_25F0CA338(uint64_t a1)
{
  if (!qword_27FD47158[0])
  {
    sub_25F1776BC();
    v1 = sub_25F17960C();
    if (!v2)
    {
      atomic_store(v1, qword_27FD47158);
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

uint64_t sub_25F0CA3B0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 17))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_25F0CA3F8(uint64_t result, unsigned int a2, unsigned int a3)
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
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ContentProviderRegistry.Record(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x3FFF && *(a1 + 16))
  {
    return (*a1 + 0x3FFF);
  }

  v3 = (((*(a1 + 8) >> 50) >> 13) | (2 * ((*(a1 + 8) >> 50) & 0x1C00 | ((*(a1 + 8) & 7) << 7) | (*a1 >> 57) & 0x78 | *a1 & 7))) ^ 0x3FFF;
  if (v3 >= 0x3FFE)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t storeEnumTagSinglePayload for ContentProviderRegistry.Record(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x3FFE)
  {
    *result = a2 - 0x3FFF;
    *(result + 8) = 0;
    if (a3 >= 0x3FFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x3FFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 1) & 0x1FFF | ((-a2 & 0x3FFF) << 13);
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
      *(result + 8) = ((v3 >> 7) | (v3 << 50)) & 0xF000000000000007;
    }
  }

  return result;
}

void *sub_25F0CA56C(void *result, uint64_t a2)
{
  v2 = result[1] & 0xFFFFFFFFFFFFFF8 | (a2 << 63);
  *result &= 0xFFFFFFFFFFFFFF8uLL;
  result[1] = v2;
  return result;
}

uint64_t sub_25F0CA59C(uint64_t a1)
{
  result = sub_25F1776AC();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_25F0CA61C(uint64_t a1, uint64_t a2)
{
  v4 = sub_25F1776AC();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_25F0CA69C(uint64_t a1, uint64_t a2)
{
  v4 = sub_25F1776AC();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_25F0CA760(uint64_t a1)
{
  v2 = type metadata accessor for ContentKey(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_25F0CA7BC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t PassThroughProvider.invalidationHandle.getter()
{
  sub_25F0CB7D8();
}

uint64_t sub_25F0CA860@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v10 = sub_25F1787BC();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v22[-1] - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25F1782AC();
  swift_allocObject();
  *a5 = sub_25F17829C();
  v15 = type metadata accessor for PassThroughProvider(0, a3, a4, v14);
  sub_25F0CB7E0(a1, &a5[*(v15 + 36)]);
  v16 = *(v15 + 40);
  v17 = sub_25F177D5C();
  v18 = *(v17 - 8);
  (*(v18 + 16))(&a5[v16], a2, v17);
  v22[3] = type metadata accessor for PreviewNonUIAgentProxy(0);
  v22[4] = sub_25F0CBC44();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v22);
  sub_25F0CB7E0(a1, boxed_opaque_existential_1);
  sub_25F1787CC();
  swift_getWitnessTable();
  sub_25F17803C();
  (*(v18 + 8))(a2, v17);
  sub_25F0CB844(a1);
  (*(v11 + 8))(v13, v10);
  return __swift_destroy_boxed_opaque_existential_1Tm(v22);
}

uint64_t static PassThroughProvider.create(for:using:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[12] = a4;
  v5[13] = a5;
  v5[10] = a2;
  v5[11] = a3;
  v5[9] = a1;
  type metadata accessor for PreviewNonUIAgentProxy(0);
  v5[14] = swift_task_alloc();
  v5[15] = swift_task_alloc();
  v6 = sub_25F177D5C();
  v5[16] = v6;
  v5[17] = *(v6 - 8);
  v5[18] = swift_task_alloc();
  v5[19] = swift_task_alloc();
  v5[20] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25F0CABF0, 0, 0);
}

uint64_t sub_25F0CABF0()
{
  v1 = (*(v0[13] + 8))();
  if (*(v1 + 16) && (v2 = sub_25F0C8AA8(v0[10]), (v3 & 1) != 0))
  {
    v5 = v0[19];
    v4 = v0[20];
    v6 = v0[16];
    v7 = v0[17];
    v8 = v0[11];
    v9 = *(v1 + 56) + *(v7 + 72) * v2;
    v10 = *(v7 + 16);
    v0[21] = v10;
    v0[22] = (v7 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v10(v5, v9, v6);

    (*(v7 + 32))(v4, v5, v6);
    v11 = v8 + *(type metadata accessor for PreviewAgentConnector(0) + 24);
    v12 = *(v11 + 7);
    v0[7] = *(v11 + 6);
    v0[8] = v12;
    v13 = *v8;

    v14 = swift_task_alloc();
    v0[23] = v14;
    *v14 = v0;
    v14[1] = sub_25F0CAF14;
    v15 = v0[15];

    return SharedAgentServer<>.requestPreviewNonUIAgent(for:)(v15, v13);
  }

  else
  {
    v18 = v0[12];
    v17 = v0[13];
    v19 = v0[10];

    static CategoryMap.unhandled(_:)(v19, v18, v17, v0 + 2);
    v20 = v0[5];
    v21 = __swift_project_boxed_opaque_existential_1(v0 + 2, v20);
    v22 = *(v20 - 8);
    v23 = swift_task_alloc();
    (*(v22 + 16))(v23, v21, v20);
    if (sub_25F17981C())
    {
      (*(v22 + 8))(v23, v20);
    }

    else
    {
      swift_allocError();
      (*(v22 + 32))(v24, v23, v20);
    }

    swift_willThrow();

    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);

    v25 = v0[1];

    return v25();
  }
}

uint64_t sub_25F0CAF14()
{
  *(*v1 + 192) = v0;

  if (v0)
  {
    v2 = sub_25F0CB15C;
  }

  else
  {
    v2 = sub_25F0CB03C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_25F0CB03C()
{
  v12 = v0[21];
  v1 = v0[20];
  v2 = v0[17];
  v3 = v0[18];
  v5 = v0[15];
  v4 = v0[16];
  v7 = v0[13];
  v6 = v0[14];
  v8 = v0[12];
  v9 = v0[9];
  sub_25F0CB7E0(v5, v6);
  v12(v3, v1, v4);
  sub_25F0CA860(v6, v3, v8, v7, v9);
  sub_25F0CB844(v5);
  (*(v2 + 8))(v1, v4);

  v10 = v0[1];

  return v10();
}

uint64_t sub_25F0CB15C()
{
  (*(v0[17] + 8))(v0[20], v0[16]);

  v1 = v0[1];

  return v1();
}

uint64_t PassThroughProvider.performUpdate(updatePayload:previewType:context:delegate:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v28 = a3;
  v26 = a1;
  v27 = sub_25F177D2C();
  v25 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v23 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_25F177F8C();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_25F177D5C();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_25F177D3C();
  v15 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v17 = &v21 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(a5 + 40);
  v21 = *(a5 + 36);
  (*(v12 + 16))(v14, v24 + v18, v11);
  (*(v8 + 16))(v10, v26, v7);
  (*(v25 + 16))(v23, v28, v27);
  sub_25F177CEC();
  v19 = PreviewNonUIAgentProxy.perform<A>(update:expecting:)(v17, v7, v7, MEMORY[0x277D40440]);
  (*(v15 + 8))(v17, v22);
  return v19;
}

uint64_t sub_25F0CB610(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v10 = *(a4 + 16);
  v11 = *(a4 + 24);
  *v9 = v4;
  v9[1] = sub_25F0BF3E4;

  return static PassThroughProvider.create(for:using:)(a1, a2, a3, v10, v11);
}

uint64_t sub_25F0CB7B0()
{
  sub_25F0CB7D8();
}

uint64_t sub_25F0CB7E0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PreviewNonUIAgentProxy(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_25F0CB844(uint64_t a1)
{
  v2 = type metadata accessor for PreviewNonUIAgentProxy(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_25F0CB8A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25F0CB8DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25F0CB920(uint64_t a1)
{
  result = sub_25F1782AC();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for PreviewNonUIAgentProxy(319);
    if (v3 <= 0x3F)
    {
      result = sub_25F177D5C();
      if (v4 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_25F0CB9D0(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for PreviewNonUIAgentProxy(0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 36);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_25F177D5C();
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 40);

      return v14(v15, a2, v13);
    }
  }
}

void *sub_25F0CBB08(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = type metadata accessor for PreviewNonUIAgentProxy(0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 36);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_25F177D5C();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 40);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

unint64_t sub_25F0CBC44()
{
  result = qword_27FD472B0;
  if (!qword_27FD472B0)
  {
    type metadata accessor for PreviewNonUIAgentProxy(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD472B0);
  }

  return result;
}

uint64_t static PreviewVariantGroup.colorSchemeVariantGroup.getter@<X0>(uint64_t a1@<X8>)
{
  v31 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD472B8, &qword_25F17BBA0);
  MEMORY[0x28223BE20](v1 - 8);
  v30 = &v22 - v2;
  v29 = sub_25F177BDC();
  v27 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v25 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_25F177BFC();
  v26 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v23 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD472C0, &qword_25F17BBA8);
  MEMORY[0x28223BE20](v5 - 8);
  v24 = &v22 - v6;
  v7 = sub_25F17790C();
  MEMORY[0x28223BE20](v7 - 8);
  v22 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD472C8, &qword_25F17BBB0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v22 - v10;
  v12 = sub_25F17736C();
  MEMORY[0x28223BE20](v12 - 8);
  v13 = sub_25F1775AC();
  MEMORY[0x28223BE20](v13 - 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD472D0, &qword_25F17BBB8);
  sub_25F1775CC();
  *(swift_allocObject() + 16) = xmmword_25F17BB70;
  sub_25F17759C();
  sub_25F17726C();
  v14 = sub_25F17750C();
  v15 = *(*(v14 - 8) + 56);
  v15(v11, 1, 1, v14);
  sub_25F1775BC();
  sub_25F17759C();
  sub_25F17725C();
  v15(v11, 1, 1, v14);
  sub_25F1775BC();
  sub_25F17759C();
  (*(v27 + 104))(v25, *MEMORY[0x277D40C20], v29);
  sub_25F17759C();
  v16 = v23;
  sub_25F177BEC();
  (*(v26 + 104))(v16, *MEMORY[0x277D40C30], v28);

  sub_25F0CD728(MEMORY[0x277D84F90]);
  v17 = v24;
  sub_25F177C0C();
  v18 = sub_25F177C1C();
  (*(*(v18 - 8) + 56))(v17, 0, 1, v18);
  v19 = v30;
  sub_25F177B6C();
  v20 = sub_25F177B7C();
  (*(*(v20 - 8) + 56))(v19, 0, 1, v20);
  return sub_25F17791C();
}

uint64_t static PreviewVariantGroup.orientationVariantGroup.getter@<X0>(uint64_t a1@<X8>)
{
  v36 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD472B8, &qword_25F17BBA0);
  MEMORY[0x28223BE20](v1 - 8);
  v35 = v25 - v2;
  v34 = sub_25F177BDC();
  v32 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v30 = v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_25F177BFC();
  v31 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v28 = v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD472C0, &qword_25F17BBA8);
  MEMORY[0x28223BE20](v5 - 8);
  v29 = v25 - v6;
  v7 = sub_25F17790C();
  MEMORY[0x28223BE20](v7 - 8);
  v27 = v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD472C8, &qword_25F17BBB0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v25 - v10;
  v12 = sub_25F17736C();
  MEMORY[0x28223BE20](v12 - 8);
  v13 = sub_25F1775AC();
  MEMORY[0x28223BE20](v13 - 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD472D0, &qword_25F17BBB8);
  v25[2] = 2 * *(*(sub_25F1775CC() - 8) + 72);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_25F17BB80;
  sub_25F17759C();
  sub_25F17729C();
  v14 = *MEMORY[0x277D40798];
  v15 = sub_25F17750C();
  v16 = *(v15 - 8);
  v17 = *(v16 + 104);
  v17(v11, v14, v15);
  v18 = *(v16 + 56);
  v18(v11, 0, 1, v15);
  sub_25F1775BC();
  v25[1] = "ntation.portrait";
  sub_25F17759C();
  sub_25F17727C();
  v17(v11, *MEMORY[0x277D40780], v15);
  v18(v11, 0, 1, v15);
  sub_25F1775BC();
  sub_25F17759C();
  sub_25F17728C();
  v17(v11, *MEMORY[0x277D40788], v15);
  v18(v11, 0, 1, v15);
  sub_25F1775BC();
  sub_25F17759C();
  (*(v32 + 104))(v30, *MEMORY[0x277D40C20], v34);
  sub_25F17759C();
  v19 = v28;
  sub_25F177BEC();
  (*(v31 + 104))(v19, *MEMORY[0x277D40C30], v33);

  sub_25F0CD728(MEMORY[0x277D84F90]);
  v20 = v29;
  sub_25F177C0C();
  v21 = sub_25F177C1C();
  (*(*(v21 - 8) + 56))(v20, 0, 1, v21);
  v22 = v35;
  sub_25F177B6C();
  v23 = sub_25F177B7C();
  (*(*(v23 - 8) + 56))(v22, 0, 1, v23);
  return sub_25F17791C();
}

uint64_t static PreviewVariantGroup.dynamicTypeVariantGroup.getter@<X0>(uint64_t a1@<X8>)
{
  v38 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD472B8, &qword_25F17BBA0);
  MEMORY[0x28223BE20](v1 - 8);
  v37 = &v26 - v2;
  v36 = sub_25F177BDC();
  v34 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v32 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_25F177BFC();
  v33 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v30 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD472C0, &qword_25F17BBA8);
  MEMORY[0x28223BE20](v5 - 8);
  v31 = &v26 - v6;
  v7 = sub_25F17790C();
  MEMORY[0x28223BE20](v7 - 8);
  v29 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD472C8, &qword_25F17BBB0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v26 - v10;
  v12 = sub_25F17736C();
  MEMORY[0x28223BE20](v12 - 8);
  v13 = sub_25F1775AC();
  MEMORY[0x28223BE20](v13 - 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD472D0, &qword_25F17BBB8);
  v14 = *(sub_25F1775CC() - 8);
  v15 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v16 = swift_allocObject();
  v28 = v16;
  *(v16 + 16) = xmmword_25F17BB90;
  v17 = v16 + v15;
  v39 = 0xD000000000000022;
  sub_25F17759C();
  sub_25F17733C();
  v18 = sub_25F17750C();
  v19 = *(*(v18 - 8) + 56);
  v19(v11, 1, 1, v18);
  sub_25F1775BC();
  v27 = 0xD000000000000021;
  sub_25F17759C();
  sub_25F17730C();
  v19(v11, 1, 1, v18);
  sub_25F1775BC();
  sub_25F17759C();
  sub_25F17731C();
  v19(v11, 1, 1, v18);
  sub_25F1775BC();
  sub_25F17759C();
  sub_25F1772FC();
  v19(v11, 1, 1, v18);
  sub_25F1775BC();
  sub_25F17759C();
  sub_25F17732C();
  v19(v11, 1, 1, v18);
  sub_25F1775BC();
  sub_25F17759C();
  sub_25F17734C();
  v19(v11, 1, 1, v18);
  v26 = v17;
  sub_25F1775BC();
  v27 = "micTypeSize.xxLarge";
  v39 = 0xD000000000000024;
  sub_25F17759C();
  sub_25F17735C();
  v19(v11, 1, 1, v18);
  sub_25F1775BC();
  sub_25F17759C();
  sub_25F1772AC();
  v19(v11, 1, 1, v18);
  sub_25F1775BC();
  sub_25F17759C();
  sub_25F1772BC();
  v19(v11, 1, 1, v18);
  sub_25F1775BC();
  sub_25F17759C();
  sub_25F1772CC();
  v19(v11, 1, 1, v18);
  sub_25F1775BC();
  sub_25F17759C();
  sub_25F1772DC();
  v19(v11, 1, 1, v18);
  sub_25F1775BC();
  sub_25F17759C();
  sub_25F1772EC();
  v19(v11, 1, 1, v18);
  sub_25F1775BC();
  sub_25F17759C();
  (*(v34 + 104))(v32, *MEMORY[0x277D40C28], v36);
  sub_25F17759C();
  v20 = v30;
  sub_25F177BEC();
  (*(v33 + 104))(v20, *MEMORY[0x277D40C30], v35);

  sub_25F0CD728(MEMORY[0x277D84F90]);
  v21 = v31;
  sub_25F177C0C();
  v22 = sub_25F177C1C();
  (*(*(v22 - 8) + 56))(v21, 0, 1, v22);
  v23 = v37;
  sub_25F177B6C();
  v24 = sub_25F177B7C();
  (*(*(v24 - 8) + 56))(v23, 0, 1, v24);
  return sub_25F17791C();
}

unint64_t sub_25F0CD4F8(uint64_t a1)
{
  sub_25F1775AC();
  sub_25F0CD9A4(&qword_27FD472E8, MEMORY[0x277D40850]);
  v2 = sub_25F17901C();

  return sub_25F0CD57C(a1, v2);
}

unint64_t sub_25F0CD57C(uint64_t a1, uint64_t a2)
{
  v19 = a1;
  v4 = sub_25F1775AC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = v2;
  v8 = -1 << *(v2 + 32);
  v9 = a2 & ~v8;
  v18 = v2 + 64;
  if ((*(v2 + 64 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    v13 = *(v5 + 16);
    v12 = v5 + 16;
    v11 = v13;
    v14 = *(v12 + 56);
    do
    {
      v11(v7, *(v20 + 48) + v14 * v9, v4);
      sub_25F0CD9A4(&qword_27FD472F0, MEMORY[0x277D40858]);
      v15 = sub_25F17904C();
      (*(v12 - 8))(v7, v4);
      if (v15)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
    }

    while (((*(v18 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  return v9;
}

unint64_t sub_25F0CD728(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD472D8, &qword_25F17BBC8);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v21 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD472E0, &qword_25F17BBD0);
    v7 = sub_25F1797BC();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_25F0CD934(v9, v5);
      result = sub_25F0CD4F8(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = sub_25F1775AC();
      (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      v16 = v7[7];
      v17 = sub_25F177C1C();
      result = (*(*(v17 - 8) + 32))(v16 + *(*(v17 - 8) + 72) * v13, &v5[v8], v17);
      v18 = v7[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v7[2] = v20;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t sub_25F0CD934(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD472D8, &qword_25F17BBC8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_25F0CD9A4(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_25F1775AC();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_25F0CD9E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD46BB0, &qword_25F17AF30);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v25 - v10;
  sub_25F0B7E2C(a3, v25 - v10, &qword_27FD46BB0, &qword_25F17AF30);
  v12 = sub_25F17932C();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_25F0B7E94(v11, &qword_27FD46BB0, &qword_25F17AF30);
  }

  else
  {
    sub_25F17931C();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_25F1792CC();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_25F1790DC() + 32;
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

      sub_25F0B7E94(a3, &qword_27FD46BB0, &qword_25F17AF30);

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

  sub_25F0B7E94(a3, &qword_27FD46BB0, &qword_25F17AF30);
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

uint64_t ServerFarm.jitBootstrapAgentServer.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 24);
  *a1 = *(v1 + 16);
  a1[1] = v2;
}

uint64_t ServerFarm.controlAgentServer.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 40);
  *a1 = *(v1 + 32);
  a1[1] = v2;
}

uint64_t ServerFarm.previewNonUIAgentServer.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 56);
  *a1 = *(v1 + 48);
  a1[1] = v2;
}

uint64_t ServerFarm.init()@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_25F176E8C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD472F8, &qword_25F17BC00);
  swift_allocObject();
  *a1 = sub_25F0D0D98();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD47300, &qword_25F17BC08);
  swift_allocObject();
  a1[1] = sub_25F0D0B60();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD47308, &qword_25F17BC10);
  swift_allocObject();
  a1[2] = sub_25F0D57B4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD47310, &qword_25F17BC18);
  a1[3] = sub_25F17857C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD47318, &qword_25F17BC20);
  swift_allocObject();
  a1[4] = sub_25F0D5324();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD47320, &qword_25F17BC28);
  a1[5] = sub_25F17857C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD47328, &qword_25F17BC30);
  swift_allocObject();
  a1[6] = sub_25F0D4E94();
  a1[7] = sub_25F17857C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD47330, &qword_25F17BC38);
  swift_allocObject();
  a1[8] = sub_25F0D4A04();
  a1[9] = sub_25F0E7D30();
  a1[10] = v6;
  a1[11] = v7;
  (*(v3 + 104))(v5, *MEMORY[0x277D40D10], v2);
  type metadata accessor for HostServer(0);
  v8 = swift_allocObject();
  (*(v3 + 16))(v8 + OBJC_IVAR____TtC15PreviewShellKit10HostServer_service, v5, v2);
  v13[1] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD47338, &qword_25F17BC40);
  v9 = sub_25F17883C();
  (*(v3 + 8))(v5, v2);
  *(v8 + OBJC_IVAR____TtC15PreviewShellKit10HostServer_activeListener) = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD47340, &qword_25F17BC48);
  v10 = sub_25F1771DC();
  a1[12] = v8;
  a1[13] = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD47348, &qword_25F17BC50);
  swift_allocObject();
  v11 = sub_25F0D4574();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD47350, &qword_25F17BC58);

  result = sub_25F1771FC();
  a1[14] = v11;
  a1[15] = result;
  return result;
}

uint64_t ServerFarm.HostMessages.viaDaemon.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD47358, &unk_25F182BB0);
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t ServerFarm.HostMessages.viaDaemon.setter(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD47358, &unk_25F182BB0);
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t ServerFarm.HostMessages.viaServiceHub.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ServerFarm.HostMessages(0) + 20);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD47360, &qword_25F17BC68);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ServerFarm.HostMessages.viaServiceHub.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ServerFarm.HostMessages(0) + 20);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD47360, &qword_25F17BC68);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ServerFarm.activate()@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD46BB0, &qword_25F17AF30);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v32 - v4;
  v34 = &v32 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD47870, &unk_25F17C530);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v10 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v12 = &v32 - v11;
  v13 = v1[5];
  v45 = v1[4];
  v46 = v13;
  v14 = v1[7];
  v47 = v1[6];
  v48 = v14;
  v15 = v1[1];
  v44[0] = *v1;
  v44[1] = v15;
  v16 = v1[3];
  v44[2] = v1[2];
  v44[3] = v16;
  sub_25F0D0FD0(a1);
  v17 = type metadata accessor for ServerFarm.HostMessages(0);
  sub_25F0D14D8(a1 + *(v17 + 20));
  sub_25F0D0524(v44);
  sub_25F0CFF64(v44);
  sub_25F0CF9A4(v44);
  sub_25F0CF3E4(v44);
  v18 = v46;
  v33 = *(&v45 + 1);
  v36 = *(&v46 + 1);
  v35 = v12;
  sub_25F0E96D4(v12);
  sub_25F0CE81C(v44);
  v41 = sub_25F17932C();
  v19 = *(v41 - 8);
  v40 = *(v19 + 56);
  v42 = v19 + 56;
  v40(v5, 1, 1, v41);
  v39 = *(v7 + 16);
  v32 = v10;
  v39(v10, v12, v6);
  v20 = *(v7 + 80);
  v43 = v7;
  v38 = (v20 + 32) & ~v20;
  v21 = (v8 + v38 + 7) & 0xFFFFFFFFFFFFFFF8;
  v22 = swift_allocObject();
  *(v22 + 16) = 0;
  *(v22 + 24) = 0;
  v37 = *(v7 + 32);
  v37(v22 + ((v20 + 32) & ~v20), v10, v6);
  v23 = (v22 + v21);
  *v23 = v33;
  v23[1] = v18;
  v23[2] = v36;

  v24 = v34;
  sub_25F0CD9E8(0, 0, v34, &unk_25F17BC70, v22);

  v25 = *(v43 + 8);
  v43 += 8;
  v36 = v25;
  v26 = v35;
  v25(v35, v6);
  v27 = v47;
  sub_25F0E96D4(v26);
  v40(v24, 1, 1, v41);
  v28 = v32;
  v39(v32, v26, v6);
  v29 = v21;
  v30 = swift_allocObject();
  *(v30 + 16) = 0;
  *(v30 + 24) = 0;
  v37(v30 + v38, v28, v6);
  *(v30 + v29) = v27;

  sub_25F0CD9E8(0, 0, v24, &unk_25F17BC78, v30);

  v36(v26, v6);
  return sub_25F0CEE24(v44);
}

uint64_t sub_25F0CE81C(_OWORD *a1)
{
  v40 = a1;
  v1 = sub_25F1787BC();
  v43 = *(v1 - 8);
  v44 = v1;
  MEMORY[0x28223BE20](v1);
  v42 = &v38 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD473D8, &qword_25F17BDD8);
  MEMORY[0x28223BE20](v39);
  v41 = &v38 - v3;
  v4 = sub_25F176E8C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v8 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = &v38 - v9;
  v11 = *MEMORY[0x277D40D28];
  v12 = sub_25F176E7C();
  (*(*(v12 - 8) + 104))(v10, v11, v12);
  (*(v5 + 104))(v10, *MEMORY[0x277D40CE8], v4);
  v13 = type metadata accessor for AsyncListenerDelegate();
  v14 = objc_allocWithZone(v13);
  (*(v5 + 16))(v8, v10, v4);
  v15 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v16 = (v6 + v15 + 7) & 0xFFFFFFFFFFFFFFF8;
  v17 = swift_allocObject();
  (*(v5 + 32))(v17 + v15, v8, v4);
  v18 = (v17 + v16);
  v19 = v45;
  *v18 = &unk_25F17BDE8;
  v18[1] = v19;
  v20 = &v14[OBJC_IVAR____TtC15PreviewShellKit21AsyncListenerDelegate_serviceConnectionHandler];
  *v20 = &unk_25F17BDF0;
  *(v20 + 1) = v17;
  v48.receiver = v14;
  v48.super_class = v13;

  v21 = objc_msgSendSuper2(&v48, sel_init);
  (*(v5 + 8))(v10, v4);
  v46[2] = v21;
  v22 = swift_allocObject();
  *(v22 + 16) = sub_25F0E03A8;
  *(v22 + 24) = v46;
  *&v51 = sub_25F0E4290;
  *(&v51 + 1) = v22;
  *&v49 = MEMORY[0x277D85DD0];
  *(&v49 + 1) = 1107296256;
  *&v50 = sub_25F0D0B0C;
  *(&v50 + 1) = &block_descriptor_49;
  v23 = _Block_copy(&v49);
  v24 = objc_opt_self();

  v25 = [v24 listenerWithConfigurator_];
  _Block_release(v23);

  LOBYTE(v23) = swift_isEscapingClosureAtFileLocation();

  if (v23)
  {
    __break(1u);
  }

  else
  {
    [v25 activate];
    v27 = v41;
    sub_25F0B7E2C(v19 + *(*v19 + 96), v41, &qword_27FD473D8, &qword_25F17BDD8);

    v28 = *(v39 + 48);
    v29 = v42;
    sub_25F1787CC();
    v30 = v40;
    v31 = v40[5];
    *&v47[72] = v40[4];
    *&v47[88] = v31;
    v32 = v40[7];
    *&v47[104] = v40[6];
    *&v47[120] = v32;
    v33 = v40[1];
    *&v47[8] = *v40;
    *&v47[24] = v33;
    v34 = v40[3];
    *&v47[40] = v40[2];
    *&v47[56] = v34;
    *v47 = v25;
    v35 = v25;
    sub_25F0E0148(v30, &v49);
    v36 = v21;
    v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD473E0, &qword_25F17BDF8);
    sub_25F0B7D00(&qword_27FD473E8, &qword_27FD473E0, &qword_25F17BDF8, MEMORY[0x277D405D8]);
    sub_25F17806C();

    v55 = *&v47[96];
    v56 = *&v47[112];
    v57 = *&v47[128];
    v51 = *&v47[32];
    v52 = *&v47[48];
    v53 = *&v47[64];
    v54 = *&v47[80];
    v49 = *v47;
    v50 = *&v47[16];
    sub_25F0B7E94(&v49, &qword_27FD473F0, &qword_25F17BE00);
    (*(v43 + 8))(v29, v44);
    return (*(*(v37 - 8) + 8))(v27 + v28, v37);
  }

  return result;
}

uint64_t sub_25F0CEE24(_OWORD *a1)
{
  v38 = a1;
  v1 = sub_25F1787BC();
  v41 = *(v1 - 8);
  v42 = v1;
  MEMORY[0x28223BE20](v1);
  v40 = &v36 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD47398, &qword_25F17BD70);
  MEMORY[0x28223BE20](v37);
  v39 = &v36 - v3;
  v4 = sub_25F176E8C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v8 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = &v36 - v9;
  (*(v5 + 104))(&v36 - v9, *MEMORY[0x277D40CF0], v4);
  v11 = type metadata accessor for AsyncListenerDelegate();
  v12 = objc_allocWithZone(v11);
  (*(v5 + 16))(v8, v10, v4);
  v13 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v14 = (v6 + v13 + 7) & 0xFFFFFFFFFFFFFFF8;
  v15 = swift_allocObject();
  (*(v5 + 32))(v15 + v13, v8, v4);
  v16 = (v15 + v14);
  v17 = v43;
  *v16 = &unk_25F17BD80;
  v16[1] = v17;
  v18 = &v12[OBJC_IVAR____TtC15PreviewShellKit21AsyncListenerDelegate_serviceConnectionHandler];
  *v18 = &unk_25F17C970;
  *(v18 + 1) = v15;
  v46.receiver = v12;
  v46.super_class = v11;

  v19 = objc_msgSendSuper2(&v46, sel_init);
  (*(v5 + 8))(v10, v4);
  v44[2] = v19;
  v20 = swift_allocObject();
  *(v20 + 16) = sub_25F0E00E4;
  *(v20 + 24) = v44;
  *&v49 = sub_25F0E0108;
  *(&v49 + 1) = v20;
  *&v47 = MEMORY[0x277D85DD0];
  *(&v47 + 1) = 1107296256;
  *&v48 = sub_25F0D0B0C;
  *(&v48 + 1) = &block_descriptor_0;
  v21 = _Block_copy(&v47);
  v22 = objc_opt_self();

  v23 = [v22 listenerWithConfigurator_];
  _Block_release(v21);

  LOBYTE(v21) = swift_isEscapingClosureAtFileLocation();

  if (v21)
  {
    __break(1u);
  }

  else
  {
    [v23 activate];
    v25 = v39;
    sub_25F0B7E2C(v17 + *(*v17 + 96), v39, &qword_27FD47398, &qword_25F17BD70);

    v26 = *(v37 + 48);
    v27 = v40;
    sub_25F1787CC();
    v28 = v38;
    v29 = v38[5];
    *&v45[72] = v38[4];
    *&v45[88] = v29;
    v30 = v38[7];
    *&v45[104] = v38[6];
    *&v45[120] = v30;
    v31 = v38[1];
    *&v45[8] = *v38;
    *&v45[24] = v31;
    v32 = v38[3];
    *&v45[40] = v38[2];
    *&v45[56] = v32;
    *v45 = v23;
    v33 = v23;
    sub_25F0E0148(v28, &v47);
    v34 = v19;
    v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD473A0, &qword_25F17BD90);
    sub_25F0B7D00(&qword_27FD473A8, &qword_27FD473A0, &qword_25F17BD90, MEMORY[0x277D405D8]);
    sub_25F17806C();

    v53 = *&v45[96];
    v54 = *&v45[112];
    v55 = *&v45[128];
    v49 = *&v45[32];
    v50 = *&v45[48];
    v51 = *&v45[64];
    v52 = *&v45[80];
    v47 = *v45;
    v48 = *&v45[16];
    sub_25F0B7E94(&v47, &qword_27FD473B0, &qword_25F17BD98);
    (*(v41 + 8))(v27, v42);
    return (*(*(v35 - 8) + 8))(v25 + v26, v35);
  }

  return result;
}

uint64_t sub_25F0CF3E4(_OWORD *a1)
{
  v38 = a1;
  v1 = sub_25F1787BC();
  v41 = *(v1 - 8);
  v42 = v1;
  MEMORY[0x28223BE20](v1);
  v40 = &v36 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD473F8, &qword_25F17BE20);
  MEMORY[0x28223BE20](v37);
  v39 = &v36 - v3;
  v4 = sub_25F176E8C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v8 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = &v36 - v9;
  (*(v5 + 104))(&v36 - v9, *MEMORY[0x277D40D08], v4);
  v11 = type metadata accessor for AsyncListenerDelegate();
  v12 = objc_allocWithZone(v11);
  (*(v5 + 16))(v8, v10, v4);
  v13 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v14 = (v6 + v13 + 7) & 0xFFFFFFFFFFFFFFF8;
  v15 = swift_allocObject();
  (*(v5 + 32))(v15 + v13, v8, v4);
  v16 = (v15 + v14);
  v17 = v43;
  *v16 = &unk_25F17BE30;
  v16[1] = v17;
  v18 = &v12[OBJC_IVAR____TtC15PreviewShellKit21AsyncListenerDelegate_serviceConnectionHandler];
  *v18 = &unk_25F17BE38;
  *(v18 + 1) = v15;
  v46.receiver = v12;
  v46.super_class = v11;

  v19 = objc_msgSendSuper2(&v46, sel_init);
  (*(v5 + 8))(v10, v4);
  v44[2] = v19;
  v20 = swift_allocObject();
  *(v20 + 16) = sub_25F0E0520;
  *(v20 + 24) = v44;
  *&v49 = sub_25F0E4290;
  *(&v49 + 1) = v20;
  *&v47 = MEMORY[0x277D85DD0];
  *(&v47 + 1) = 1107296256;
  *&v48 = sub_25F0D0B0C;
  *(&v48 + 1) = &block_descriptor_68;
  v21 = _Block_copy(&v47);
  v22 = objc_opt_self();

  v23 = [v22 listenerWithConfigurator_];
  _Block_release(v21);

  LOBYTE(v21) = swift_isEscapingClosureAtFileLocation();

  if (v21)
  {
    __break(1u);
  }

  else
  {
    [v23 activate];
    v25 = v39;
    sub_25F0B7E2C(v17 + *(*v17 + 96), v39, &qword_27FD473F8, &qword_25F17BE20);

    v26 = *(v37 + 48);
    v27 = v40;
    sub_25F1787CC();
    v28 = v38;
    v29 = v38[5];
    *&v45[72] = v38[4];
    *&v45[88] = v29;
    v30 = v38[7];
    *&v45[104] = v38[6];
    *&v45[120] = v30;
    v31 = v38[1];
    *&v45[8] = *v38;
    *&v45[24] = v31;
    v32 = v38[3];
    *&v45[40] = v38[2];
    *&v45[56] = v32;
    *v45 = v23;
    v33 = v23;
    sub_25F0E0148(v28, &v47);
    v34 = v19;
    v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD47400, &qword_25F17BE40);
    sub_25F0B7D00(&qword_27FD47408, &qword_27FD47400, &qword_25F17BE40, MEMORY[0x277D405D8]);
    sub_25F17806C();

    v53 = *&v45[96];
    v54 = *&v45[112];
    v55 = *&v45[128];
    v49 = *&v45[32];
    v50 = *&v45[48];
    v51 = *&v45[64];
    v52 = *&v45[80];
    v47 = *v45;
    v48 = *&v45[16];
    sub_25F0B7E94(&v47, &qword_27FD47410, &qword_25F17BE48);
    (*(v41 + 8))(v27, v42);
    return (*(*(v35 - 8) + 8))(v25 + v26, v35);
  }

  return result;
}

uint64_t sub_25F0CF9A4(_OWORD *a1)
{
  v38 = a1;
  v1 = sub_25F1787BC();
  v41 = *(v1 - 8);
  v42 = v1;
  MEMORY[0x28223BE20](v1);
  v40 = &v36 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD47430, &qword_25F17BE70);
  MEMORY[0x28223BE20](v37);
  v39 = &v36 - v3;
  v4 = sub_25F176E8C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v8 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = &v36 - v9;
  (*(v5 + 104))(&v36 - v9, *MEMORY[0x277D40D00], v4);
  v11 = type metadata accessor for AsyncListenerDelegate();
  v12 = objc_allocWithZone(v11);
  (*(v5 + 16))(v8, v10, v4);
  v13 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v14 = (v6 + v13 + 7) & 0xFFFFFFFFFFFFFFF8;
  v15 = swift_allocObject();
  (*(v5 + 32))(v15 + v13, v8, v4);
  v16 = (v15 + v14);
  v17 = v43;
  *v16 = &unk_25F17BE80;
  v16[1] = v17;
  v18 = &v12[OBJC_IVAR____TtC15PreviewShellKit21AsyncListenerDelegate_serviceConnectionHandler];
  *v18 = &unk_25F17BE88;
  *(v18 + 1) = v15;
  v46.receiver = v12;
  v46.super_class = v11;

  v19 = objc_msgSendSuper2(&v46, sel_init);
  (*(v5 + 8))(v10, v4);
  v44[2] = v19;
  v20 = swift_allocObject();
  *(v20 + 16) = sub_25F0E0704;
  *(v20 + 24) = v44;
  *&v49 = sub_25F0E4290;
  *(&v49 + 1) = v20;
  *&v47 = MEMORY[0x277D85DD0];
  *(&v47 + 1) = 1107296256;
  *&v48 = sub_25F0D0B0C;
  *(&v48 + 1) = &block_descriptor_87;
  v21 = _Block_copy(&v47);
  v22 = objc_opt_self();

  v23 = [v22 listenerWithConfigurator_];
  _Block_release(v21);

  LOBYTE(v21) = swift_isEscapingClosureAtFileLocation();

  if (v21)
  {
    __break(1u);
  }

  else
  {
    [v23 activate];
    v25 = v39;
    sub_25F0B7E2C(v17 + *(*v17 + 96), v39, &qword_27FD47430, &qword_25F17BE70);

    v26 = *(v37 + 48);
    v27 = v40;
    sub_25F1787CC();
    v28 = v38;
    v29 = v38[5];
    *&v45[72] = v38[4];
    *&v45[88] = v29;
    v30 = v38[7];
    *&v45[104] = v38[6];
    *&v45[120] = v30;
    v31 = v38[1];
    *&v45[8] = *v38;
    *&v45[24] = v31;
    v32 = v38[3];
    *&v45[40] = v38[2];
    *&v45[56] = v32;
    *v45 = v23;
    v33 = v23;
    sub_25F0E0148(v28, &v47);
    v34 = v19;
    v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD47438, &qword_25F17BE90);
    sub_25F0B7D00(&qword_27FD47440, &qword_27FD47438, &qword_25F17BE90, MEMORY[0x277D405D8]);
    sub_25F17806C();

    v53 = *&v45[96];
    v54 = *&v45[112];
    v55 = *&v45[128];
    v49 = *&v45[32];
    v50 = *&v45[48];
    v51 = *&v45[64];
    v52 = *&v45[80];
    v47 = *v45;
    v48 = *&v45[16];
    sub_25F0B7E94(&v47, &qword_27FD47448, &unk_25F17F3E0);
    (*(v41 + 8))(v27, v42);
    return (*(*(v35 - 8) + 8))(v25 + v26, v35);
  }

  return result;
}

uint64_t sub_25F0CFF64(_OWORD *a1)
{
  v38 = a1;
  v1 = sub_25F1787BC();
  v41 = *(v1 - 8);
  v42 = v1;
  MEMORY[0x28223BE20](v1);
  v40 = &v36 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD47450, &qword_25F17BEB0);
  MEMORY[0x28223BE20](v37);
  v39 = &v36 - v3;
  v4 = sub_25F176E8C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v8 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = &v36 - v9;
  (*(v5 + 104))(&v36 - v9, *MEMORY[0x277D40CD0], v4);
  v11 = type metadata accessor for AsyncListenerDelegate();
  v12 = objc_allocWithZone(v11);
  (*(v5 + 16))(v8, v10, v4);
  v13 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v14 = (v6 + v13 + 7) & 0xFFFFFFFFFFFFFFF8;
  v15 = swift_allocObject();
  (*(v5 + 32))(v15 + v13, v8, v4);
  v16 = (v15 + v14);
  v17 = v43;
  *v16 = &unk_25F17BEC0;
  v16[1] = v17;
  v18 = &v12[OBJC_IVAR____TtC15PreviewShellKit21AsyncListenerDelegate_serviceConnectionHandler];
  *v18 = &unk_25F17BEC8;
  *(v18 + 1) = v15;
  v46.receiver = v12;
  v46.super_class = v11;

  v19 = objc_msgSendSuper2(&v46, sel_init);
  (*(v5 + 8))(v10, v4);
  v44[2] = v19;
  v20 = swift_allocObject();
  *(v20 + 16) = sub_25F0E0898;
  *(v20 + 24) = v44;
  *&v49 = sub_25F0E4290;
  *(&v49 + 1) = v20;
  *&v47 = MEMORY[0x277D85DD0];
  *(&v47 + 1) = 1107296256;
  *&v48 = sub_25F0D0B0C;
  *(&v48 + 1) = &block_descriptor_106;
  v21 = _Block_copy(&v47);
  v22 = objc_opt_self();

  v23 = [v22 listenerWithConfigurator_];
  _Block_release(v21);

  LOBYTE(v21) = swift_isEscapingClosureAtFileLocation();

  if (v21)
  {
    __break(1u);
  }

  else
  {
    [v23 activate];
    v25 = v39;
    sub_25F0B7E2C(v17 + *(*v17 + 96), v39, &qword_27FD47450, &qword_25F17BEB0);

    v26 = *(v37 + 48);
    v27 = v40;
    sub_25F1787CC();
    v28 = v38;
    v29 = v38[5];
    *&v45[72] = v38[4];
    *&v45[88] = v29;
    v30 = v38[7];
    *&v45[104] = v38[6];
    *&v45[120] = v30;
    v31 = v38[1];
    *&v45[8] = *v38;
    *&v45[24] = v31;
    v32 = v38[3];
    *&v45[40] = v38[2];
    *&v45[56] = v32;
    *v45 = v23;
    v33 = v23;
    sub_25F0E0148(v28, &v47);
    v34 = v19;
    v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD47458, &qword_25F17BED0);
    sub_25F0B7D00(&qword_27FD47460, &qword_27FD47458, &qword_25F17BED0, MEMORY[0x277D405D8]);
    sub_25F17806C();

    v53 = *&v45[96];
    v54 = *&v45[112];
    v55 = *&v45[128];
    v49 = *&v45[32];
    v50 = *&v45[48];
    v51 = *&v45[64];
    v52 = *&v45[80];
    v47 = *v45;
    v48 = *&v45[16];
    sub_25F0B7E94(&v47, &qword_27FD47468, &qword_25F17BED8);
    (*(v41 + 8))(v27, v42);
    return (*(*(v35 - 8) + 8))(v25 + v26, v35);
  }

  return result;
}

uint64_t sub_25F0D0524(_OWORD *a1)
{
  v38 = a1;
  v1 = sub_25F1787BC();
  v41 = *(v1 - 8);
  v42 = v1;
  MEMORY[0x28223BE20](v1);
  v40 = &v36 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD47470, &qword_25F17BEF8);
  MEMORY[0x28223BE20](v37);
  v39 = &v36 - v3;
  v4 = sub_25F176E8C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v8 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = &v36 - v9;
  (*(v5 + 104))(&v36 - v9, *MEMORY[0x277D40CF8], v4);
  v11 = type metadata accessor for AsyncListenerDelegate();
  v12 = objc_allocWithZone(v11);
  (*(v5 + 16))(v8, v10, v4);
  v13 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v14 = (v6 + v13 + 7) & 0xFFFFFFFFFFFFFFF8;
  v15 = swift_allocObject();
  (*(v5 + 32))(v15 + v13, v8, v4);
  v16 = (v15 + v14);
  v17 = v43;
  *v16 = &unk_25F17BF08;
  v16[1] = v17;
  v18 = &v12[OBJC_IVAR____TtC15PreviewShellKit21AsyncListenerDelegate_serviceConnectionHandler];
  *v18 = &unk_25F17BF10;
  *(v18 + 1) = v15;
  v46.receiver = v12;
  v46.super_class = v11;

  v19 = objc_msgSendSuper2(&v46, sel_init);
  (*(v5 + 8))(v10, v4);
  v44[2] = v19;
  v20 = swift_allocObject();
  *(v20 + 16) = sub_25F0E0B2C;
  *(v20 + 24) = v44;
  *&v49 = sub_25F0E4290;
  *(&v49 + 1) = v20;
  *&v47 = MEMORY[0x277D85DD0];
  *(&v47 + 1) = 1107296256;
  *&v48 = sub_25F0D0B0C;
  *(&v48 + 1) = &block_descriptor_125;
  v21 = _Block_copy(&v47);
  v22 = objc_opt_self();

  v23 = [v22 listenerWithConfigurator_];
  _Block_release(v21);

  LOBYTE(v21) = swift_isEscapingClosureAtFileLocation();

  if (v21)
  {
    __break(1u);
  }

  else
  {
    [v23 activate];
    v25 = v39;
    sub_25F0B7E2C(v17 + *(*v17 + 96), v39, &qword_27FD47470, &qword_25F17BEF8);

    v26 = *(v37 + 48);
    v27 = v40;
    sub_25F1787CC();
    v28 = v38;
    v29 = v38[5];
    *&v45[72] = v38[4];
    *&v45[88] = v29;
    v30 = v38[7];
    *&v45[104] = v38[6];
    *&v45[120] = v30;
    v31 = v38[1];
    *&v45[8] = *v38;
    *&v45[24] = v31;
    v32 = v38[3];
    *&v45[40] = v38[2];
    *&v45[56] = v32;
    *v45 = v23;
    v33 = v23;
    sub_25F0E0148(v28, &v47);
    v34 = v19;
    v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD47478, &qword_25F17BF18);
    sub_25F0B7D00(&qword_27FD47480, &qword_27FD47478, &qword_25F17BF18, MEMORY[0x277D405D8]);
    sub_25F17806C();

    v53 = *&v45[96];
    v54 = *&v45[112];
    v55 = *&v45[128];
    v49 = *&v45[32];
    v50 = *&v45[48];
    v51 = *&v45[64];
    v52 = *&v45[80];
    v47 = *v45;
    v48 = *&v45[16];
    sub_25F0B7E94(&v47, &qword_27FD47488, &qword_25F17BF20);
    (*(v41 + 8))(v27, v42);
    return (*(*(v35 - 8) + 8))(v25 + v26, v35);
  }

  return result;
}

uint64_t sub_25F0D0B0C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  swift_unknownObjectRetain();
  v3(a2);

  return swift_unknownObjectRelease();
}

uint64_t sub_25F0D0B60()
{
  v1 = sub_25F176E8C();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD47548, &qword_25F17C0A0);
  MEMORY[0x28223BE20](v5 - 8);
  swift_defaultActor_initialize();
  *(v0 + 120) = sub_25F0ECC2C(MEMORY[0x277D84F90]);
  v11 = 1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD47550, &qword_25F17C0A8);
  sub_25F17837C();
  MEMORY[0x25F8D4310](v6);
  sub_25F17836C();
  (*(v2 + 104))(v4, *MEMORY[0x277D40CD8], v1);
  type metadata accessor for HostServer(0);
  v7 = swift_allocObject();
  (*(v2 + 16))(v7 + OBJC_IVAR____TtC15PreviewShellKit10HostServer_service, v4, v1);
  v10 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD47338, &qword_25F17BC40);
  v8 = sub_25F17883C();
  (*(v2 + 8))(v4, v1);
  *(v7 + OBJC_IVAR____TtC15PreviewShellKit10HostServer_activeListener) = v8;
  *(v0 + 112) = v7;
  return v0;
}

uint64_t sub_25F0D0D98()
{
  v1 = sub_25F176E8C();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD47558, &qword_25F17C0B0);
  MEMORY[0x28223BE20](v5 - 8);
  swift_defaultActor_initialize();
  *(v0 + 120) = sub_25F0ECC2C(MEMORY[0x277D84F90]);
  v11 = 1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD47560, &unk_25F17C0B8);
  sub_25F17837C();
  MEMORY[0x25F8D4310](v6);
  sub_25F17836C();
  (*(v2 + 104))(v4, *MEMORY[0x277D40CE0], v1);
  type metadata accessor for HostServer(0);
  v7 = swift_allocObject();
  (*(v2 + 16))(v7 + OBJC_IVAR____TtC15PreviewShellKit10HostServer_service, v4, v1);
  v10 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD47338, &qword_25F17BC40);
  v8 = sub_25F17883C();
  (*(v2 + 8))(v4, v1);
  *(v7 + OBJC_IVAR____TtC15PreviewShellKit10HostServer_activeListener) = v8;
  *(v0 + 112) = v7;
  return v0;
}

uint64_t sub_25F0D0FD0@<X0>(uint64_t a1@<X8>)
{
  v39 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD46BB0, &qword_25F17AF30);
  MEMORY[0x28223BE20](v1 - 8);
  v41 = &v32 - v2;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD47870, &unk_25F17C530);
  v3 = *(v38 - 8);
  v37 = *(v3 + 64);
  v4 = MEMORY[0x28223BE20](v38);
  v36 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v7 = &v32 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD474F0, &qword_25F17BFA8);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v32 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD474F8, &qword_25F17BFB0);
  v34 = *(v12 - 8);
  v13 = *(v34 + 64);
  v35 = v12 - 8;
  v14 = MEMORY[0x28223BE20](v12 - 8);
  v15 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v17 = &v32 - v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD47380, &unk_25F1830C0);
  (*(v9 + 104))(v11, *MEMORY[0x277D85778], v8);
  sub_25F17933C();
  (*(v9 + 8))(v11, v8);
  v18 = v7;
  v33 = v7;
  sub_25F0E96D4(v7);
  v19 = sub_25F17932C();
  (*(*(v19 - 8) + 56))(v41, 1, 1, v19);
  v20 = v3;
  v21 = *(v3 + 16);
  v22 = v36;
  v23 = v38;
  v21(v36, v18, v38);
  sub_25F0B7E2C(v17, v15, &qword_27FD474F8, &qword_25F17BFB0);
  v24 = (*(v20 + 80) + 32) & ~*(v20 + 80);
  v25 = (v37 + v24 + 7) & 0xFFFFFFFFFFFFFFF8;
  v26 = (*(v34 + 80) + v25 + 8) & ~*(v34 + 80);
  v27 = swift_allocObject();
  *(v27 + 16) = 0;
  *(v27 + 24) = 0;
  (*(v20 + 32))(v27 + v24, v22, v23);
  *(v27 + v25) = v40;
  sub_25F0B7D50(v15, v27 + v26, &qword_27FD474F8, &qword_25F17BFB0);

  sub_25F0CD9E8(0, 0, v41, &unk_25F17BFC8, v27);

  (*(v20 + 8))(v33, v23);
  sub_25F0B7D50(v17, v15, &qword_27FD474F8, &qword_25F17BFB0);
  v28 = *(v35 + 56);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD47358, &unk_25F182BB0);
  (*(*(v29 - 8) + 32))(v39, v15, v29);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD47500, &qword_25F17BFC0);
  return (*(*(v30 - 8) + 8))(&v15[v28], v30);
}

uint64_t sub_25F0D14D8@<X0>(uint64_t a1@<X8>)
{
  v39 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD46BB0, &qword_25F17AF30);
  MEMORY[0x28223BE20](v1 - 8);
  v41 = &v32 - v2;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD47870, &unk_25F17C530);
  v3 = *(v38 - 8);
  v37 = *(v3 + 64);
  v4 = MEMORY[0x28223BE20](v38);
  v36 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v7 = &v32 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD474A0, &qword_25F17BF48);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v32 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD474A8, &qword_25F17BF50);
  v34 = *(v12 - 8);
  v13 = *(v34 + 64);
  v35 = v12 - 8;
  v14 = MEMORY[0x28223BE20](v12 - 8);
  v15 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v17 = &v32 - v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD47390, &qword_25F17BD68);
  (*(v9 + 104))(v11, *MEMORY[0x277D85778], v8);
  sub_25F17933C();
  (*(v9 + 8))(v11, v8);
  v18 = v7;
  v33 = v7;
  sub_25F0E96D4(v7);
  v19 = sub_25F17932C();
  (*(*(v19 - 8) + 56))(v41, 1, 1, v19);
  v20 = v3;
  v21 = *(v3 + 16);
  v22 = v36;
  v23 = v38;
  v21(v36, v18, v38);
  sub_25F0B7E2C(v17, v15, &qword_27FD474A8, &qword_25F17BF50);
  v24 = (*(v20 + 80) + 32) & ~*(v20 + 80);
  v25 = (v37 + v24 + 7) & 0xFFFFFFFFFFFFFFF8;
  v26 = (*(v34 + 80) + v25 + 8) & ~*(v34 + 80);
  v27 = swift_allocObject();
  *(v27 + 16) = 0;
  *(v27 + 24) = 0;
  (*(v20 + 32))(v27 + v24, v22, v23);
  *(v27 + v25) = v40;
  sub_25F0B7D50(v15, v27 + v26, &qword_27FD474A8, &qword_25F17BF50);

  sub_25F0CD9E8(0, 0, v41, &unk_25F17BF68, v27);

  (*(v20 + 8))(v33, v23);
  sub_25F0B7D50(v17, v15, &qword_27FD474A8, &qword_25F17BF50);
  v28 = *(v35 + 56);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD47360, &qword_25F17BC68);
  (*(*(v29 - 8) + 32))(v39, v15, v29);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD474B0, &qword_25F17BF60);
  return (*(*(v30 - 8) + 8))(&v15[v28], v30);
}

uint64_t sub_25F0D19E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[15] = a5;
  v6[16] = a6;
  v6[14] = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD474B0, &qword_25F17BF60);
  v6[17] = v7;
  v8 = *(v7 - 8);
  v6[18] = v8;
  v6[19] = *(v8 + 64);
  v6[20] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD46BB0, &qword_25F17AF30);
  v6[21] = swift_task_alloc();
  v6[22] = swift_task_alloc();
  v9 = sub_25F177E8C();
  v6[23] = v9;
  v10 = *(v9 - 8);
  v6[24] = v10;
  v6[25] = *(v10 + 64);
  v6[26] = swift_task_alloc();
  v6[27] = swift_task_alloc();
  v6[28] = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD474B8, &qword_25F17BF70);
  v6[29] = v11;
  v6[30] = *(v11 - 8);
  v6[31] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25F0D1BE0, 0, 0);
}

uint64_t sub_25F0D1BE0()
{
  v1 = v0[15];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD47870, &unk_25F17C530);
  sub_25F17935C();
  v0[32] = *(*v1 + 120);
  swift_beginAccess();
  v2 = swift_task_alloc();
  v0[33] = v2;
  *v2 = v0;
  v2[1] = sub_25F0D1CE0;
  v3 = v0[29];

  return MEMORY[0x2822003E8](v0 + 12, 0, 0, v3);
}

uint64_t sub_25F0D1CE0()
{

  return MEMORY[0x2822009F8](sub_25F0D1DDC, 0, 0);
}

uint64_t sub_25F0D1DDC()
{
  v1 = *(v0 + 96);
  *(v0 + 272) = v1;
  if (v1)
  {
    v2 = *(v0 + 120);
    *(v0 + 280) = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD474A8, &qword_25F17BF50) + 48);

    return MEMORY[0x2822009F8](sub_25F0D1F1C, v2, 0);
  }

  else
  {
    (*(*(v0 + 240) + 8))(*(v0 + 248), *(v0 + 232));

    v3 = *(v0 + 8);

    return v3();
  }
}

uint64_t sub_25F0D1F1C()
{
  v1 = *(v0 + 120);
  if (!*(*(v1 + 120) + 16))
  {
    *(v0 + 284) = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD474C8, &qword_25F17BF90);
    sub_25F1783AC();
    v1 = *(v0 + 120);
  }

  v3 = *(v0 + 216);
  v2 = *(v0 + 224);
  v4 = *(v0 + 184);
  v5 = *(v0 + 192);
  sub_25F177E7C();
  v6 = *(v5 + 16);
  v6(v3, v2, v4);
  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(v1 + 120);
  *(v0 + 104) = v8;
  *(v1 + 120) = 0x8000000000000000;
  v9 = sub_25F0C8B7C(v3);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
LABEL_26:
    v50 = v9;
    sub_25F16FEA0();
    v9 = v50;
LABEL_10:
    v18 = *(v0 + 104);
    v19 = *(v0 + 272);
    v64 = v6;
    if (v2)
    {
      *(v18[7] + 8 * v9) = v19;
    }

    else
    {
      v20 = *(v0 + 216);
      v21 = *(v0 + 184);
      v22 = *(v0 + 192);
      v18[(v9 >> 6) + 8] |= 1 << v9;
      v23 = v9;
      v24 = (v6)(v18[6] + *(v22 + 72) * v9, v20, v21);
      *(v18[7] + 8 * v23) = v19;
      v27 = v18[2];
      v13 = __OFADD__(v27, 1);
      v28 = v27 + 1;
      if (v13)
      {
        __break(1u);
        return MEMORY[0x2822009F8](v24, v25, v26);
      }

      v18[2] = v28;
    }

    v29 = *(v0 + 208);
    v56 = v29;
    v57 = *(v0 + 224);
    v30 = *(v0 + 192);
    v61 = *(v0 + 272);
    v32 = *(v0 + 176);
    v31 = *(v0 + 184);
    v33 = *(v0 + 160);
    v62 = *(v0 + 168);
    v53 = v33;
    v54 = *(v0 + 280);
    v34 = *(v0 + 144);
    v59 = *(v0 + 152);
    v35 = *(v0 + 136);
    v51 = *(v0 + 128);
    v52 = v35;
    v36 = *(v0 + 120);
    v55 = v31;
    v63 = *(v30 + 8);
    v63(*(v0 + 216), v31);
    *(v36 + 120) = v18;
    swift_endAccess();
    v58 = sub_25F17932C();
    v60 = *(v58 - 8);
    (*(v60 + 56))(v32, 1, 1, v58);
    (*(v34 + 16))(v33, v51 + v54, v35);
    v64(v29, v57, v31);
    v37 = sub_25F0B7D00(&qword_27FD474C0, &qword_27FD47300, &qword_25F17BC08, &protocol conformance descriptor for AggregatingHostServer<A>);
    v38 = (*(v34 + 80) + 40) & ~*(v34 + 80);
    v39 = (v59 + v38 + 7) & 0xFFFFFFFFFFFFFFF8;
    v40 = (*(v30 + 80) + v39 + 8) & ~*(v30 + 80);
    v41 = swift_allocObject();
    *(v41 + 2) = v36;
    *(v41 + 3) = v37;
    *(v41 + 4) = v61;
    (*(v34 + 32))(&v41[v38], v53, v52);
    *&v41[v39] = v36;
    (*(v30 + 32))(&v41[v40], v56, v55);
    sub_25F0B7E2C(v32, v62, &qword_27FD46BB0, &qword_25F17AF30);
    LODWORD(v37) = (*(v60 + 48))(v62, 1, v58);
    swift_retain_n();

    v42 = *(v0 + 168);
    if (v37 == 1)
    {
      sub_25F0B7E94(*(v0 + 168), &qword_27FD46BB0, &qword_25F17AF30);
    }

    else
    {
      sub_25F17931C();
      (*(v60 + 8))(v42, v58);
    }

    v43 = *(v41 + 2);
    swift_unknownObjectRetain();

    if (v43)
    {
      swift_getObjectType();
      v44 = sub_25F1792CC();
      v46 = v45;
      swift_unknownObjectRelease();
    }

    else
    {
      v44 = 0;
      v46 = 0;
    }

    sub_25F0B7E94(*(v0 + 176), &qword_27FD46BB0, &qword_25F17AF30);
    v47 = swift_allocObject();
    *(v47 + 16) = &unk_25F17BF80;
    *(v47 + 24) = v41;
    if (v46 | v44)
    {
      *(v0 + 16) = 0;
      *(v0 + 24) = 0;
      *(v0 + 32) = v44;
      *(v0 + 40) = v46;
    }

    v48 = *(v0 + 224);
    v49 = *(v0 + 184);
    swift_task_create();

    v63(v48, v49);
    v24 = sub_25F0D24FC;
    v25 = 0;
    v26 = 0;

    return MEMORY[0x2822009F8](v24, v25, v26);
  }

  LOBYTE(v2) = v10;
  if (*(v8 + 24) >= v14)
  {
    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_10;
    }

    goto LABEL_26;
  }

  v15 = *(v0 + 216);
  sub_25F16B7F4(v14, isUniquelyReferenced_nonNull_native);
  v9 = sub_25F0C8B7C(v15);
  if ((v2 & 1) == (v16 & 1))
  {
    goto LABEL_10;
  }

  return sub_25F17985C();
}

uint64_t sub_25F0D24FC()
{

  v1 = swift_task_alloc();
  *(v0 + 264) = v1;
  *v1 = v0;
  v1[1] = sub_25F0D1CE0;
  v2 = *(v0 + 232);

  return MEMORY[0x2822003E8](v0 + 96, 0, 0, v2);
}

uint64_t sub_25F0D25AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[15] = a5;
  v6[16] = a6;
  v6[14] = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD47500, &qword_25F17BFC0);
  v6[17] = v7;
  v8 = *(v7 - 8);
  v6[18] = v8;
  v6[19] = *(v8 + 64);
  v6[20] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD46BB0, &qword_25F17AF30);
  v6[21] = swift_task_alloc();
  v6[22] = swift_task_alloc();
  v9 = sub_25F177E8C();
  v6[23] = v9;
  v10 = *(v9 - 8);
  v6[24] = v10;
  v6[25] = *(v10 + 64);
  v6[26] = swift_task_alloc();
  v6[27] = swift_task_alloc();
  v6[28] = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD474B8, &qword_25F17BF70);
  v6[29] = v11;
  v6[30] = *(v11 - 8);
  v6[31] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25F0D27AC, 0, 0);
}

uint64_t sub_25F0D27AC()
{
  v1 = v0[15];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD47870, &unk_25F17C530);
  sub_25F17935C();
  v0[32] = *(*v1 + 120);
  swift_beginAccess();
  v2 = swift_task_alloc();
  v0[33] = v2;
  *v2 = v0;
  v2[1] = sub_25F0D28AC;
  v3 = v0[29];

  return MEMORY[0x2822003E8](v0 + 12, 0, 0, v3);
}

uint64_t sub_25F0D28AC()
{

  return MEMORY[0x2822009F8](sub_25F0D29A8, 0, 0);
}

uint64_t sub_25F0D29A8()
{
  v1 = *(v0 + 96);
  *(v0 + 272) = v1;
  if (v1)
  {
    v2 = *(v0 + 120);
    *(v0 + 280) = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD474F8, &qword_25F17BFB0) + 48);

    return MEMORY[0x2822009F8](sub_25F0D2AE8, v2, 0);
  }

  else
  {
    (*(*(v0 + 240) + 8))(*(v0 + 248), *(v0 + 232));

    v3 = *(v0 + 8);

    return v3();
  }
}

uint64_t sub_25F0D2AE8()
{
  v1 = *(v0 + 120);
  if (!*(*(v1 + 120) + 16))
  {
    *(v0 + 284) = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD47510, &qword_25F17BFE8);
    sub_25F1783AC();
    v1 = *(v0 + 120);
  }

  v3 = *(v0 + 216);
  v2 = *(v0 + 224);
  v4 = *(v0 + 184);
  v5 = *(v0 + 192);
  sub_25F177E7C();
  v6 = *(v5 + 16);
  v6(v3, v2, v4);
  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(v1 + 120);
  *(v0 + 104) = v8;
  *(v1 + 120) = 0x8000000000000000;
  v9 = sub_25F0C8B7C(v3);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
LABEL_26:
    v50 = v9;
    sub_25F16FEA0();
    v9 = v50;
LABEL_10:
    v18 = *(v0 + 104);
    v19 = *(v0 + 272);
    v64 = v6;
    if (v2)
    {
      *(v18[7] + 8 * v9) = v19;
    }

    else
    {
      v20 = *(v0 + 216);
      v21 = *(v0 + 184);
      v22 = *(v0 + 192);
      v18[(v9 >> 6) + 8] |= 1 << v9;
      v23 = v9;
      v24 = (v6)(v18[6] + *(v22 + 72) * v9, v20, v21);
      *(v18[7] + 8 * v23) = v19;
      v27 = v18[2];
      v13 = __OFADD__(v27, 1);
      v28 = v27 + 1;
      if (v13)
      {
        __break(1u);
        return MEMORY[0x2822009F8](v24, v25, v26);
      }

      v18[2] = v28;
    }

    v29 = *(v0 + 208);
    v56 = v29;
    v57 = *(v0 + 224);
    v30 = *(v0 + 192);
    v61 = *(v0 + 272);
    v32 = *(v0 + 176);
    v31 = *(v0 + 184);
    v33 = *(v0 + 160);
    v62 = *(v0 + 168);
    v53 = v33;
    v54 = *(v0 + 280);
    v34 = *(v0 + 144);
    v59 = *(v0 + 152);
    v35 = *(v0 + 136);
    v51 = *(v0 + 128);
    v52 = v35;
    v36 = *(v0 + 120);
    v55 = v31;
    v63 = *(v30 + 8);
    v63(*(v0 + 216), v31);
    *(v36 + 120) = v18;
    swift_endAccess();
    v58 = sub_25F17932C();
    v60 = *(v58 - 8);
    (*(v60 + 56))(v32, 1, 1, v58);
    (*(v34 + 16))(v33, v51 + v54, v35);
    v64(v29, v57, v31);
    v37 = sub_25F0B7D00(&qword_27FD47508, &qword_27FD472F8, &qword_25F17BC00, &protocol conformance descriptor for AggregatingHostServer<A>);
    v38 = (*(v34 + 80) + 40) & ~*(v34 + 80);
    v39 = (v59 + v38 + 7) & 0xFFFFFFFFFFFFFFF8;
    v40 = (*(v30 + 80) + v39 + 8) & ~*(v30 + 80);
    v41 = swift_allocObject();
    *(v41 + 2) = v36;
    *(v41 + 3) = v37;
    *(v41 + 4) = v61;
    (*(v34 + 32))(&v41[v38], v53, v52);
    *&v41[v39] = v36;
    (*(v30 + 32))(&v41[v40], v56, v55);
    sub_25F0B7E2C(v32, v62, &qword_27FD46BB0, &qword_25F17AF30);
    LODWORD(v37) = (*(v60 + 48))(v62, 1, v58);
    swift_retain_n();

    v42 = *(v0 + 168);
    if (v37 == 1)
    {
      sub_25F0B7E94(*(v0 + 168), &qword_27FD46BB0, &qword_25F17AF30);
    }

    else
    {
      sub_25F17931C();
      (*(v60 + 8))(v42, v58);
    }

    v43 = *(v41 + 2);
    swift_unknownObjectRetain();

    if (v43)
    {
      swift_getObjectType();
      v44 = sub_25F1792CC();
      v46 = v45;
      swift_unknownObjectRelease();
    }

    else
    {
      v44 = 0;
      v46 = 0;
    }

    sub_25F0B7E94(*(v0 + 176), &qword_27FD46BB0, &qword_25F17AF30);
    v47 = swift_allocObject();
    *(v47 + 16) = &unk_25F17BFD8;
    *(v47 + 24) = v41;
    if (v46 | v44)
    {
      *(v0 + 16) = 0;
      *(v0 + 24) = 0;
      *(v0 + 32) = v44;
      *(v0 + 40) = v46;
    }

    v48 = *(v0 + 224);
    v49 = *(v0 + 184);
    swift_task_create();

    v63(v48, v49);
    v24 = sub_25F0D30C8;
    v25 = 0;
    v26 = 0;

    return MEMORY[0x2822009F8](v24, v25, v26);
  }

  LOBYTE(v2) = v10;
  if (*(v8 + 24) >= v14)
  {
    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_10;
    }

    goto LABEL_26;
  }

  v15 = *(v0 + 216);
  sub_25F16B7F4(v14, isUniquelyReferenced_nonNull_native);
  v9 = sub_25F0C8B7C(v15);
  if ((v2 & 1) == (v16 & 1))
  {
    goto LABEL_10;
  }

  return sub_25F17985C();
}

uint64_t sub_25F0D30C8()
{

  v1 = swift_task_alloc();
  *(v0 + 264) = v1;
  *v1 = v0;
  v1[1] = sub_25F0D28AC;
  v2 = *(v0 + 232);

  return MEMORY[0x2822003E8](v0 + 96, 0, 0, v2);
}

uint64_t sub_25F0D3178(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[7] = a6;
  v7[8] = a7;
  v7[5] = a4;
  v7[6] = a5;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD47390, &qword_25F17BD68);
  v7[9] = v9;
  v7[10] = *(v9 - 8);
  v7[11] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD474D0, &qword_25F17BF98);
  v7[12] = v10;
  v7[13] = *(v10 - 8);
  v7[14] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD474D8, "Bk");
  v7[15] = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD47360, &qword_25F17BC68);
  v7[16] = v11;
  v7[17] = *(v11 - 8);
  v7[18] = swift_task_alloc();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD474E0, &qword_25F17BFA0);
  v7[19] = v12;
  v7[20] = *(v12 - 8);
  v7[21] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25F0D33BC, a6, 0);
}

uint64_t sub_25F0D33BC()
{
  v2 = v0[17];
  v1 = v0[18];
  v3 = v0[16];
  sub_25F176F8C();
  sub_25F0E266C(&qword_27FD474E8, MEMORY[0x277D40DC8], MEMORY[0x277D40DC0]);
  sub_25F176F0C();
  sub_25F17935C();
  (*(v2 + 8))(v1, v3);
  v4 = sub_25F0B7D00(&qword_27FD474C0, &qword_27FD47300, &qword_25F17BC08, &protocol conformance descriptor for AggregatingHostServer<A>);
  v0[22] = v4;
  v5 = v0[7];
  v6 = swift_task_alloc();
  v0[23] = v6;
  *v6 = v0;
  v6[1] = sub_25F0D353C;
  v7 = v0[19];
  v8 = v0[15];

  return MEMORY[0x2822003E8](v8, v5, v4, v7);
}

uint64_t sub_25F0D353C()
{
  v1 = *(*v0 + 56);

  return MEMORY[0x2822009F8](sub_25F0D364C, v1, 0);
}

uint64_t sub_25F0D364C()
{
  v1 = *(v0 + 120);
  if ((*(*(v0 + 80) + 48))(v1, 1, *(v0 + 72)) == 1)
  {
    v3 = *(v0 + 56);
    v2 = *(v0 + 64);
    (*(*(v0 + 160) + 8))(*(v0 + 168), *(v0 + 152));
    swift_beginAccess();
    sub_25F16ABB8(v2);
    swift_endAccess();

    if (!*(*(v3 + 120) + 16))
    {
      *(v0 + 192) = 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD474C8, &qword_25F17BF90);
      sub_25F1783AC();
    }

    v4 = *(v0 + 8);

    return v4();
  }

  else
  {
    v7 = *(v0 + 104);
    v6 = *(v0 + 112);
    v8 = *(v0 + 96);
    sub_25F0B7D50(v1, *(v0 + 88), &qword_27FD47390, &qword_25F17BD68);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD474B0, &qword_25F17BF60);
    sub_25F17934C();
    (*(v7 + 8))(v6, v8);
    v9 = *(v0 + 176);
    v10 = *(v0 + 56);
    v11 = swift_task_alloc();
    *(v0 + 184) = v11;
    *v11 = v0;
    v11[1] = sub_25F0D353C;
    v12 = *(v0 + 152);
    v13 = *(v0 + 120);

    return MEMORY[0x2822003E8](v13, v10, v9, v12);
  }
}