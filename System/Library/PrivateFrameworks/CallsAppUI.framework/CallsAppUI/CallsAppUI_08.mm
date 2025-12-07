uint64_t sub_1CFC806AC(unint64_t a1)
{
  if (a1 > 1)
  {
    result = sub_1CFCA01D8();
    __break(1u);
  }

  else
  {
    type metadata accessor for BundleClass();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v2 = [objc_opt_self() bundleForClass_];
    v3 = sub_1CFC9BE28();

    return v3;
  }

  return result;
}

uint64_t sub_1CFC807CC(uint64_t a1, char a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EFF58, &qword_1CFCA8A30);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v14 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EF160, &unk_1CFCA6408);
  MEMORY[0x1EEE9AC00](v5);
  v7 = (&v14 - v6);
  v8 = sub_1CFC9F1A8();
  v9 = (v7 + *(v5 + 36));
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EF138, &qword_1CFCA63B0) + 28);
  v11 = *MEMORY[0x1E69816C0];
  v12 = sub_1CFC9F1D8();
  (*(*(v12 - 8) + 104))(v9 + v10, v11, v12);
  *v9 = swift_getKeyPath();
  *v7 = v8;
  sub_1CFBA29FC(v7, v4, &qword_1EC4EF160, &unk_1CFCA6408);
  swift_storeEnumTagMultiPayload();
  sub_1CFC460F4();
  sub_1CFC9E798();
  return sub_1CFBC2FB0(v7, &qword_1EC4EF160, &unk_1CFCA6408);
}

uint64_t sub_1CFC809E4@<X0>(uint64_t a2@<X8>)
{
  v4 = *v2;
  v5 = *(v2 + 8);
  *a2 = sub_1CFC9E678();
  *(a2 + 8) = 0x401C000000000000;
  *(a2 + 16) = 0;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EFF20, &qword_1CFCA89D0);
  return sub_1CFC7FFA0(v4, v5, (a2 + *(v6 + 44)));
}

uint64_t getEnumTagSinglePayload for LayoutOption(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 9))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for LayoutOption(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

unint64_t sub_1CFC80B1C()
{
  result = qword_1EC4EFF48;
  if (!qword_1EC4EFF48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4EFF40, &qword_1CFCA89F0);
    sub_1CFC3E038();
    sub_1CFBA57C0(&qword_1EE04FFE0, &unk_1EC4ED090, &qword_1CFCA3F50, MEMORY[0x1E6980490]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4EFF48);
  }

  return result;
}

uint64_t sub_1CFC80BDC()
{
  swift_getKeyPath();
  sub_1CFC8121C();
  sub_1CFC9C158();

  return *(v0 + 16);
}

uint64_t sub_1CFC80C4C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1CFC8121C();
  sub_1CFC9C158();

  *a2 = *(v3 + 16);
  return result;
}

uint64_t sub_1CFC80CEC(uint64_t result)
{
  if (*(v1 + 16) == (result & 1))
  {
    *(v1 + 16) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1CFC8121C();
    sub_1CFC9C148();
  }

  return result;
}

double sub_1CFC80DCC()
{
  swift_getKeyPath();
  sub_1CFC8121C();
  sub_1CFC9C158();

  return result;
}

double sub_1CFC80E40@<D0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1CFC8121C();
  sub_1CFC9C158();

  *a2 = *(v3 + 24);

  return result;
}

uint64_t sub_1CFC80EBC(uint64_t a1)
{
  if (*(v1 + 24) == a1)
  {
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1CFC8121C();
    sub_1CFC9C148();
  }
}

uint64_t RecentsItemCellBottomButtonViewModel.deinit()
{

  v1 = OBJC_IVAR____TtC10CallsAppUI36RecentsItemCellBottomButtonViewModel___observationRegistrar;
  v2 = sub_1CFC9C198();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t RecentsItemCellBottomButtonViewModel.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtC10CallsAppUI36RecentsItemCellBottomButtonViewModel___observationRegistrar;
  v2 = sub_1CFC9C198();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for RecentsItemCellBottomButtonViewModel(uint64_t a1)
{
  result = qword_1EC4EFF78;
  if (!qword_1EC4EFF78)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1CFC81120(uint64_t a1)
{
  result = sub_1CFC9C198();
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

uint64_t sub_1CFC811E0()
{
  *(*(v0 + 16) + 24) = *(v0 + 24);
}

unint64_t sub_1CFC8121C()
{
  result = qword_1EC4EE1E8;
  if (!qword_1EC4EE1E8)
  {
    type metadata accessor for RecentsItemCellBottomButtonViewModel(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4EE1E8);
  }

  return result;
}

uint64_t sub_1CFC812A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v39 = a3;
  v5 = sub_1CFC9CD58();
  v36 = *(v5 - 8);
  v37 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v33 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EFF90, &qword_1CFCA8BE8);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v38 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v34 = &v33 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EFF98, &qword_1CFCA8BF0);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v35 = &v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v14);
  v17 = &v33 - v16;
  v18 = *(v12 + 16);
  v18(&v33 - v16, a1, v11, v15);
  swift_getKeyPath();
  v40 = a2;
  sub_1CFC8121C();
  sub_1CFC9C158();

  if (*(a2 + 16) == 1)
  {
    swift_getKeyPath();
    v40 = a2;
    sub_1CFC9C158();

    v19 = v33;
    sub_1CFC9CD48();
    v20 = v36;
    v21 = v34;
    v22 = v19;
    v23 = v37;
    (*(v36 + 32))(v34, v22, v37);
    v24 = 0;
    v25 = v23;
    v26 = v20;
  }

  else
  {
    v24 = 1;
    v26 = v36;
    v25 = v37;
    v21 = v34;
  }

  (*(v26 + 56))(v21, v24, 1, v25);
  v27 = v35;
  (v18)(v35, v17, v11);
  v28 = v38;
  sub_1CFC816A8(v21, v38);
  v29 = v39;
  (v18)(v39, v27, v11);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EFFA0, &qword_1CFCA8BF8);
  sub_1CFC816A8(v28, v29 + *(v30 + 48));
  sub_1CFC81718(v21);
  v31 = *(v12 + 8);
  v31(v17, v11);
  sub_1CFC81718(v28);
  return (v31)(v27, v11);
}

uint64_t sub_1CFC81640@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v6 = *v3;
  *a2 = sub_1CFC9E688();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EFF88, &qword_1CFCA8BE0);
  return sub_1CFC812A0(a1, v6, a2 + *(v7 + 44));
}

uint64_t sub_1CFC816A8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EFF90, &qword_1CFCA8BE8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1CFC81718(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EFF90, &qword_1CFCA8BE8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1CFC81780()
{
  result = qword_1EC4EFFA8;
  if (!qword_1EC4EFFA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4EFFB0, qword_1CFCA8C00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4EFFA8);
  }

  return result;
}

id sub_1CFC817E4()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EE5C0, &qword_1CFCA4A78);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v55 = v43 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED518, &unk_1CFCA2430);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v45 = v43 - v5;
  v6 = sub_1CFC9D9B8();
  v47 = *(v6 - 8);
  v48 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = sub_1CFC9D988();
  v46 = *(v51 - 8);
  MEMORY[0x1EEE9AC00](v51);
  v10 = v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1CFC9D9F8();
  v49 = *(v11 - 8);
  v50 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v13 = v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = sub_1CFC9D958();
  v52 = *(v54 - 8);
  MEMORY[0x1EEE9AC00](v54);
  v53 = v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1CFC9DA78();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = v43 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1CFC9DA18();
  v20 = type metadata accessor for RecentsStyleListCell();
  v57.receiver = v1;
  v57.super_class = v20;
  objc_msgSendSuper2(&v57, sel__bridgedUpdateConfigurationUsingState_, v19);

  v21 = [objc_opt_self() currentDevice];
  v22 = [v21 userInterfaceIdiom];

  if (qword_1F4C6ACE8 == v22 || qword_1F4C6ACF0 == v22)
  {
    sub_1CFC9DA68();
    v41 = [v1 traitCollection];
    sub_1CFC9CD38();

    if (v56 == 1)
    {
      v44 = v13;
      sub_1CFC9CD28();
      sub_1CFC9DA48();
      v23 = sub_1CFC9DA08();
      v24 = objc_opt_self();
      v25 = v52;
      v26 = v46;
      v43[1] = v46 + 104;
      if (v23)
      {
        v43[0] = v8;
        v27 = v24;
        v28 = [v24 quaternarySystemFillColor];
        sub_1CFC9DA58();
        (*(v25 + 104))(v53, *MEMORY[0x1E69DBEE8], v54);
        (*(v26 + 104))(v10, *MEMORY[0x1E69DBF18], v51);
        v29 = sub_1CFC9D998();
        (*(*(v29 - 8) + 56))(v45, 1, 1, v29);
        v30 = [v27 whiteColor];
        v31 = [v27 systemBlueColor];
        v32 = v43[0];
        sub_1CFC9D9A8();
        v33 = v44;
        sub_1CFC9D968();
        (*(v47 + 8))(v32, v48);
        (*(v26 + 8))(v10, v51);
        v56 = sub_1CFC9FCE8();
        sub_1CFC822E8(v56, v33);
        (*(v49 + 8))(v33, v50);
        (*(v52 + 8))(v53, v54);
      }

      else
      {
        v34 = [v24 clearColor];
        sub_1CFC9DA58();
        (*(v25 + 104))(v53, *MEMORY[0x1E69DBEE8], v54);
        v35 = v51;
        (*(v26 + 104))(v10, *MEMORY[0x1E69DBF18], v51);
        v36 = sub_1CFC9D998();
        (*(*(v36 - 8) + 56))(v45, 1, 1, v36);
        sub_1CFC9D9A8();
        v37 = v44;
        sub_1CFC9D968();
        (*(v47 + 8))(v8, v48);
        (*(v26 + 8))(v10, v35);
        v56 = sub_1CFC9FCE8();
        sub_1CFC822E8(v56, v37);
        (*(v49 + 8))(v37, v50);
        (*(v25 + 8))(v53, v54);
      }

      sub_1CFC9FCF8();
    }

    v38 = v55;
    (*(v16 + 16))(v55, v18, v15);
    (*(v16 + 56))(v38, 0, 1, v15);
    MEMORY[0x1D3872200](v38);
    (*(v16 + 8))(v18, v15);
  }

  v39 = [v1 traitCollection];
  sub_1CFC9CD38();

  [v1 directionalLayoutMargins];
  [v1 setDirectionalLayoutMargins_];
  v42 = [v1 traitCollection];
  sub_1CFC9CD38();

  [v1 directionalLayoutMargins];
  return [v1 setDirectionalLayoutMargins_];
}

void sub_1CFC822E8(uint64_t a1, uint64_t a2)
{
  v28 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED4F8, &qword_1CFCA2418);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v27 = &v27 - v4;
  v39 = sub_1CFC9D958();
  v5 = *(v39 - 8);
  MEMORY[0x1EEE9AC00](v39);
  v38 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v37 = &v27 - v8;
  v9 = sub_1CFC9D9F8();
  v41 = *(v9 - 8);
  v10 = MEMORY[0x1EEE9AC00](v9);
  v40 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = v2;
  v12 = *v2;
  v34 = *(*v2 + 16);
  if (v34)
  {
    v13 = 0;
    v35 = v41 + 16;
    v33 = *MEMORY[0x1E69DBEE8];
    v31 = (v5 + 8);
    v32 = (v5 + 104);
    v36 = v41 + 8;
    v30 = v9;
    v14 = v38;
    while (1)
    {
      if (v13 >= *(v12 + 16))
      {
        __break(1u);
        goto LABEL_11;
      }

      v16 = v40;
      v15 = v41;
      v17 = v12;
      v18 = *(v41 + 16);
      v18(v40, v12 + ((*(v15 + 80) + 32) & ~*(v15 + 80)) + *(v41 + 72) * v13, v9, v10);
      v19 = v37;
      sub_1CFC9D978();
      v20 = v39;
      (*v32)(v14, v33, v39);
      v42 = MEMORY[0x1D386FE80](v19, v14);
      v21 = *v31;
      (*v31)(v14, v20);
      v22 = v20;
      v9 = v30;
      v21(v19, v22);
      v23 = *(v15 + 8);
      v23(v16, v9);
      if (v42)
      {
        break;
      }

      ++v13;
      v12 = v17;
      if (v34 == v13)
      {
        return;
      }
    }

    v24 = v40;
    v25 = v29;
    sub_1CFC828B8(v13, v40);
    v23(v24, v9);
    if (*(*v25 + 16) >= v13)
    {
      v26 = v27;
      (v18)(v27, v28, v9);
      sub_1CFBCAC68(v13, v13, v26);
      return;
    }

LABEL_11:
    __break(1u);
  }
}

id sub_1CFC82860(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for RecentsStyleListCell();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_1CFC828B8@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1CFC829FC(v5);
    v5 = result;
  }

  v7 = v5[2];
  if (v7 <= a1)
  {
    __break(1u);
  }

  else
  {
    v8 = v7 - 1;
    v9 = sub_1CFC9D9F8();
    v10 = *(v9 - 8);
    v11 = *(v10 + 72);
    v12 = v5 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + v11 * a1;
    result = (*(v10 + 32))(a2, v12, v9);
    if (v11 > 0 || v12 >= v12 + v11 + v11 * (v8 - a1))
    {
      result = swift_arrayInitWithTakeFrontToBack();
    }

    else if (v11)
    {
      result = swift_arrayInitWithTakeBackToFront();
    }

    v5[2] = v8;
    *v2 = v5;
  }

  return result;
}

uint64_t sub_1CFC82A10(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_1CFC9FFD8();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  result = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v9 = MEMORY[0x1E69E7CC0];
    result = sub_1CFCA0168();
    if (v2 < 0)
    {
      __break(1u);
    }

    else
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v4 = 0;
        do
        {
          v5 = v4 + 1;
          MEMORY[0x1D3872640]();
          sub_1CFBA2D80(0, &unk_1EE04CF18, 0x1E6993578);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED798, qword_1CFCA26D8);
          swift_dynamicCast();
          sub_1CFCA0138();
          sub_1CFCA0178();
          sub_1CFCA0188();
          sub_1CFCA0148();
          v4 = v5;
        }

        while (v2 != v5);
      }

      else
      {
        v6 = (a1 + 32);
        sub_1CFBA2D80(0, &unk_1EE04CF18, 0x1E6993578);
        do
        {
          v7 = *v6++;
          v8 = v7;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED798, qword_1CFCA26D8);
          swift_dynamicCast();
          sub_1CFCA0138();
          sub_1CFCA0178();
          sub_1CFCA0188();
          sub_1CFCA0148();
          --v2;
        }

        while (v2);
      }

      return v9;
    }
  }

  return result;
}

uint64_t sub_1CFC82C04(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v10 = MEMORY[0x1E69E7CC0];
    sub_1CFBCAAF0(0, v1, 0);
    v2 = v10;
    v4 = a1 + 32;
    do
    {
      sub_1CFBB94B0(v4, &v8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4ED5A0, &qword_1CFCA87C0);
      swift_dynamicCast();
      v10 = v2;
      v6 = *(v2 + 16);
      v5 = *(v2 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_1CFBCAAF0((v5 > 1), v6 + 1, 1);
        v2 = v10;
      }

      *(v2 + 16) = v6 + 1;
      sub_1CFBCC9AC(&v9, (v2 + 32 * v6 + 32));
      v4 += 40;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_1CFC82D30(uint64_t result, uint64_t a2, uint64_t (*a3)(void))
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    a3(0);
    return a2;
  }

  return result;
}

double sub_1CFC82DC8@<D0>(uint64_t *a1@<X0>, double *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1CFBAAE00(&qword_1EE04F8D0, type metadata accessor for FavoriteCellConfig, &unk_1CFCA69F8);
  sub_1CFC9C158();

  result = *(v3 + 16);
  *a2 = result;
  return result;
}

uint64_t sub_1CFC82E98@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1CFBAAE00(&qword_1EE04F8D0, type metadata accessor for FavoriteCellConfig, &unk_1CFCA69F8);
  sub_1CFC9C158();

  v4 = OBJC_IVAR____TtC10CallsAppUI18FavoriteCellConfig__tileStyle;
  swift_beginAccess();
  v5 = sub_1CFC9CE08();
  return (*(*(v5 - 8) + 16))(a2, v3 + v4, v5);
}

uint64_t sub_1CFC82F90(uint64_t a1, uint64_t *a2)
{
  v4 = sub_1CFC9CE08();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v11[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v5 + 16))(v8, a1, v4, v6);
  v9 = *a2;
  swift_getKeyPath();
  v12 = v9;
  v13 = v8;
  v14 = v9;
  sub_1CFBAAE00(&qword_1EE04F8D0, type metadata accessor for FavoriteCellConfig, &unk_1CFCA69F8);
  sub_1CFC9C148();

  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_1CFC83118@<X0>(uint64_t *a2@<X8>)
{
  v3 = v2;
  v5 = sub_1CFC9C608();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFBAAD9C(v3, v11);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    result = sub_1CFBCE130(v11);
    v13 = 0xE700000000000000;
    v14 = 0x6C6C41776F6873;
  }

  else
  {
    (*(v6 + 32))(v8, v11, v5);
    v17[0] = sub_1CFC9C5B8();
    v17[1] = v15;
    v14 = sub_1CFC9F838();
    v13 = v16;
    result = (*(v6 + 8))(v8, v5);
  }

  *a2 = v14;
  a2[1] = v13;
  return result;
}

void sub_1CFC832C4(uint64_t a1)
{
  v2 = v1;
  v3 = *(sub_1CFC9C718() + 16);

  v4 = objc_opt_self();
  v5 = [v4 currentDevice];
  v6 = [v5 userInterfaceIdiom];

  v7 = 1;
  if (!v6)
  {
    v7 = 2;
  }

  v8 = OBJC_IVAR____TtC10CallsAppUI25FavoriteSectionController_itemsPerRow;
  v9 = *(v2 + OBJC_IVAR____TtC10CallsAppUI25FavoriteSectionController_itemsPerRow);
  if ((v7 * v9) >> 64 != (v7 * v9) >> 63)
  {
    __break(1u);
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (v7 * v9 >= v3)
  {
    return;
  }

  v10 = [v4 currentDevice];
  v11 = [v10 userInterfaceIdiom];

  if (v11)
  {
    v12 = 1;
  }

  else
  {
    v12 = 2;
  }

  v13 = *(v2 + v8);
  if ((v12 * v13) >> 64 != (v12 * v13) >> 63)
  {
    goto LABEL_12;
  }

  if (__OFSUB__(v12 * v13, 1))
  {
LABEL_13:
    __break(1u);
  }
}

uint64_t sub_1CFC833E4(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    *(result + 97) = 1;
  }

  return result;
}

uint64_t sub_1CFC83438(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    *(result + 96) = 0;
    sub_1CFBA2D80(0, &qword_1EE04CF30, 0x1E69DD250);
    swift_allocObject();
    swift_weakInit();

    sub_1CFC9FDA8();
  }

  return result;
}

uint64_t sub_1CFC83538()
{
  v4 = v1;
  v41 = sub_1CFC9C608();
  v5 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v41);
  v7 = v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for FavoriteSectionController.Item(0);
  v9 = *(v8 - 8);
  v42 = v8;
  v43 = v9;
  MEMORY[0x1EEE9AC00](v8);
  v11 = v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1CFBAA4F8();
  v13 = *(v12 + 16);
  if (v13)
  {
    v39[0] = v1;
    v44[0] = MEMORY[0x1E69E7CC0];
    v14 = v12;
    sub_1CFBAA768(0, v13, 0);
    v2 = 0;
    v15 = v44[0];
    v40 = v14 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v4 = v5 + 16;
    v39[1] = v5 + 8;
    while (v2 < *(v14 + 16))
    {
      v16 = v41;
      v17 = *(v5 + 16);
      v17(v7, v40 + *(v5 + 72) * v2, v41);
      v17(v11, v7, v16);
      swift_storeEnumTagMultiPayload();
      (*(v5 + 8))(v7, v16);
      v44[0] = v15;
      v3 = *(v15 + 16);
      v18 = *(v15 + 24);
      v0 = v3 + 1;
      if (v3 >= v18 >> 1)
      {
        sub_1CFBAA768((v18 > 1), v3 + 1, 1);
        v15 = v44[0];
      }

      ++v2;
      *(v15 + 16) = v0;
      sub_1CFBAA7AC(v11, v15 + ((*(v43 + 80) + 32) & ~*(v43 + 80)) + *(v43 + 72) * v3);
      if (v13 == v2)
      {

        v4 = v39[0];
        goto LABEL_9;
      }
    }

    __break(1u);
LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  v15 = MEMORY[0x1E69E7CC0];
LABEL_9:
  v45 = v15;
  v0 = sub_1CFC9C718();
  v15 = *(sub_1CFBAA4F8() + 16);

  v19 = sub_1CFBAA810(v15, v0);
  v23 = v22 >> 1;
  if (__OFSUB__(v22 >> 1, v21))
  {
    goto LABEL_47;
  }

  v15 = v19;
  v0 = v22 >> 1;
  if ((v22 >> 1) - v21 >= 4)
  {
    v0 = v21 + 4;
    if (__OFADD__(v21, 4))
    {
      goto LABEL_57;
    }
  }

  if (v0 < v21)
  {
    goto LABEL_48;
  }

  if (v23 < v21)
  {
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  if (v23 < v0)
  {
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  if (v0 < 0)
  {
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  if (v22)
  {
    LOBYTE(v2) = v22;
    v7 = v21;
    v3 = v20;
    sub_1CFCA02D8();
    swift_unknownObjectRetain_n();
    v26 = swift_dynamicCastClass();
    if (!v26)
    {
      swift_unknownObjectRelease();
      v26 = MEMORY[0x1E69E7CC0];
    }

    v11 = *(v26 + 16);

    if (__OFSUB__(v0, v7))
    {
      goto LABEL_58;
    }

    if (v11 != (v0 - v7))
    {
      goto LABEL_59;
    }

    v25 = swift_dynamicCastClass();
    swift_unknownObjectRelease();
    if (v25)
    {
      goto LABEL_25;
    }

    v25 = MEMORY[0x1E69E7CC0];
    goto LABEL_24;
  }

  while (1)
  {
    sub_1CFC84858(v15, v20, v21, v22 & 1 | (2 * v0), &qword_1EC4EFFE8, &qword_1CFCA8E38, MEMORY[0x1E6993700]);
    v25 = v24;
LABEL_24:
    swift_unknownObjectRelease();
LABEL_25:
    v27 = *(v25 + 16);

    if (!v27)
    {
      break;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED4F0, &qword_1CFCA2410);
    v28 = (*(v43 + 80) + 32) & ~*(v43 + 80);
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_1CFCA1DD0;
    v0 = sub_1CFC9C718();
    v15 = *(sub_1CFBAA4F8() + 16);

    v29 = sub_1CFBAA810(v15, v0);
    v33 = v32 >> 1;
    if (__OFSUB__(v32 >> 1, v31))
    {
LABEL_52:
      __break(1u);
LABEL_53:
      __break(1u);
LABEL_54:
      __break(1u);
LABEL_55:
      __break(1u);
      goto LABEL_56;
    }

    v15 = v29;
    v0 = v32 >> 1;
    if ((v32 >> 1) - v31 >= 4)
    {
      v0 = v31 + 4;
      if (__OFADD__(v31, 4))
      {
        __break(1u);
        goto LABEL_61;
      }
    }

    if (v0 < v31)
    {
      goto LABEL_53;
    }

    if (v33 < v31)
    {
      goto LABEL_54;
    }

    if (v33 < v0)
    {
      goto LABEL_55;
    }

    if ((v0 & 0x8000000000000000) == 0)
    {
      if ((v32 & 1) == 0)
      {
        goto LABEL_34;
      }

      LOBYTE(v2) = v32;
      v11 = v31;
      v7 = v30;
      sub_1CFCA02D8();
      swift_unknownObjectRetain_n();
      v36 = swift_dynamicCastClass();
      if (!v36)
      {
        swift_unknownObjectRelease();
        v36 = MEMORY[0x1E69E7CC0];
      }

      v37 = *(v36 + 16);

      if (__OFSUB__(v0, v11))
      {
LABEL_61:
        __break(1u);
      }

      else if (v37 == v0 - v11)
      {
        v35 = swift_dynamicCastClass();
        swift_unknownObjectRelease();
        if (!v35)
        {
          v35 = MEMORY[0x1E69E7CC0];
          goto LABEL_41;
        }

        goto LABEL_42;
      }

      swift_unknownObjectRelease();
      v31 = v11;
      v30 = v7;
      LOBYTE(v32) = v2;
LABEL_34:
      sub_1CFC84858(v15, v30, v31, v32 & 1 | (2 * v0), &qword_1EC4EFFE8, &qword_1CFCA8E38, MEMORY[0x1E6993700]);
      v35 = v34;
LABEL_41:
      swift_unknownObjectRelease();
LABEL_42:
      *(v3 + v28) = v35;
      swift_storeEnumTagMultiPayload();
      sub_1CFBAA8A0(v3);
      break;
    }

LABEL_56:
    __break(1u);
LABEL_57:
    __break(1u);
LABEL_58:
    __break(1u);
LABEL_59:
    swift_unknownObjectRelease();
    v21 = v7;
    v20 = v3;
    LOBYTE(v22) = v2;
  }

  *(v4 + 32) = v45;

  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    swift_getObjectType();
    SectionControllerParent.sectionItemsDidChange()();
    return swift_unknownObjectRelease();
  }

  return result;
}

double sub_1CFC83B40()
{
  v1 = sub_1CFC9CE08();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFC9CD28();
  v5 = *&v11[1];
  v6 = [objc_opt_self() currentDevice];
  v7 = [v6 userInterfaceIdiom];

  if (v7 || *(v0 + OBJC_IVAR____TtC10CallsAppUI25FavoriteSectionController_itemsPerRow) > 3)
  {
    sub_1CFC9CDF8();
  }

  else
  {
    sub_1CFC9CDB8();
  }

  sub_1CFC9CDD8();
  v9 = v8;
  (*(v2 + 8))(v4, v1);
  return v5 - (v9 + v9);
}

void sub_1CFC83D84(uint64_t a1, void *a2)
{
  v4 = sub_1CFC9C138();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (((v2[96] & 1) != 0 || v2[40] == 1) && (v2[97] & 1) == 0)
  {
    v9 = v6;
    v10 = sub_1CFC9C118();
    v11 = [objc_opt_self() currentDevice];
    v12 = [v11 userInterfaceIdiom];

    if (v12)
    {
      v14 = 1;
    }

    else
    {
      v14 = 2;
    }

    v15 = *&v2[OBJC_IVAR____TtC10CallsAppUI25FavoriteSectionController_itemsPerRow];
    v16 = v14 * v15;
    if ((v14 * v15) >> 64 == (v14 * v15) >> 63)
    {
      v17 = __OFSUB__(v16, 1);
      v18 = v16 - 1;
      if (!v17)
      {
        if (v10 < v18)
        {
          return;
        }

        sub_1CFC832C4(v13);
        if (v20)
        {
          return;
        }

        v21 = v19;
        v22 = sub_1CFC9C128();
        MEMORY[0x1D386E620](v21, v22);
        v23 = sub_1CFC9C0C8();
        (*(v5 + 8))(v8, v9);
        v24 = [a2 cellForItemAtIndexPath_];

        if (!v24)
        {
          return;
        }

        [v24 frame];
        v26 = v25;
        v28 = v27;
        v30 = v29;
        v32 = v31;

        v33 = sub_1CFC9C0C8();
        v34 = [a2 layoutAttributesForItemAtIndexPath_];

        if (v34)
        {
          v35 = v30 * 0.5;
          v41.origin.x = v26;
          v41.origin.y = v28;
          v41.size.width = v30;
          v41.size.height = v32;
          v36 = CGRectGetHeight(v41) * 0.5;
          if (sub_1CFC9C118() == 8)
          {
            v26 = v26 + v35;
          }

          else if (sub_1CFC9C118() == 9)
          {
            v28 = v28 + v36;
          }

          else if (sub_1CFC9C118() >= 10)
          {
            v28 = v28 + v36;
            v26 = v26 + v35;
          }

          [v34 frame];
          CGAffineTransformMakeTranslation(&v40, v26 - v37 - v35 * 0.5, v28 - v38 - v36 * 0.5);
          CGAffineTransformScale(&v39, &v40, 0.5, 0.5);
          v40 = v39;
          [v34 setTransform_];
          [v34 setZIndex_];
          return;
        }

LABEL_23:
        __break(1u);
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_23;
  }
}

uint64_t sub_1CFC840E4(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for FavoriteSectionController.Item(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1CFC9C608();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = 0;
  if ((*(v2 + 40) & 1) == 0)
  {
    sub_1CFBAAD9C(a1, v6);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1CFBCE130(v6);
      return 0;
    }

    else
    {
      (*(v8 + 32))(v10, v6, v7);

      v12 = sub_1CFC9C5D8();
      v13 = [v12 entryIdentifier];

      v14 = sub_1CFC9F768();
      v16 = v15;

      sub_1CFC48AB8(v14, v16);

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED760, &qword_1CFCA2690);
      v17 = swift_allocObject();
      v27 = xmmword_1CFCA2540;
      *(v17 + 16) = xmmword_1CFCA2540;
      *(v17 + 32) = sub_1CFC9C5E8();
      swift_beginAccess();
      if (swift_unknownObjectWeakLoadStrong())
      {
        objc_opt_self();
        v18 = swift_dynamicCastObjCClass();
        if (!v18)
        {
          swift_unknownObjectRelease();
        }
      }

      else
      {
        v18 = 0;
      }

      v19 = objc_allocWithZone(type metadata accessor for ContactActionsController(0));
      v20 = sub_1CFC9619C(v17, v18);
      v21 = *(v2 + 80);
      *(v2 + 80) = v20;
      v22 = v20;

      v23 = sub_1CFC96E60();
      if (v23)
      {
        v24 = v23;
        v25 = swift_allocObject();
        *(v25 + 16) = v27;
        v26 = v25;
        *(v25 + 32) = v24;
      }

      else
      {

        v26 = 0;
      }

      (*(v8 + 8))(v10, v7);
      return v26;
    }
  }

  return result;
}

uint64_t sub_1CFC843CC()
{
  sub_1CFC1910C(v0 + 16);

  sub_1CFBC2FB0(v0 + OBJC_IVAR____TtC10CallsAppUI25FavoriteSectionController_cellRegistration, &qword_1EC4EFFD8, &unk_1CFCA8DC8);
  sub_1CFBC2FB0(v0 + OBJC_IVAR____TtC10CallsAppUI25FavoriteSectionController_showAllCellRegistration, &qword_1EC4EFFD0, &unk_1CFCA8DB8);
  MEMORY[0x1D3873340](v0 + OBJC_IVAR____TtC10CallsAppUI25FavoriteSectionController_collectionView);
  return v0;
}

uint64_t sub_1CFC8447C()
{
  sub_1CFC843CC();

  return swift_deallocClassInstance();
}

uint64_t sub_1CFC844DC(uint64_t a1)
{
  result = sub_1CFBAAE00(&qword_1EE04F0C8, type metadata accessor for FavoriteSectionController.Item, &unk_1CFCA8D48);
  *(a1 + 8) = result;
  return result;
}

void (*sub_1CFC845B8(uint64_t *a1))(uint64_t a1, char a2)
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
  *(v3 + 40) = v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = *(v1 + 24);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v6;
  return sub_1CFC8464C;
}

void sub_1CFC8464C(uint64_t a1, char a2)
{
  v3 = *a1;
  *(*(*a1 + 40) + 24) = *(*a1 + 32);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

void sub_1CFC84734(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t *a5, void *a6)
{
  v6 = a4 >> 1;
  v7 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (v7)
  {
    if (v7 < 1)
    {
      if (v6 != a3)
      {
LABEL_7:
        sub_1CFBA2D80(0, a5, a6);
        swift_arrayInitWithCopy();
        return;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED760, &qword_1CFCA2690);
      v11 = swift_allocObject();
      v12 = _swift_stdlib_malloc_size(v11);
      v13 = v12 - 32;
      if (v12 < 32)
      {
        v13 = v12 - 25;
      }

      v11[2] = v7;
      v11[3] = (2 * (v13 >> 3)) | 1;
      if (v6 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

void sub_1CFC84858(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v7 = a4 >> 1;
  v8 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    goto LABEL_14;
  }

  if (v8)
  {
    if (v8 < 1)
    {
      if (v7 != a3)
      {
        goto LABEL_10;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
      v11 = *(a7(0) - 8);
      v12 = *(v11 + 72);
      v13 = (*(v11 + 80) + 32) & ~*(v11 + 80);
      v14 = swift_allocObject();
      v15 = _swift_stdlib_malloc_size(v14);
      if (!v12)
      {
LABEL_15:
        __break(1u);
LABEL_16:
        __break(1u);
        return;
      }

      if (v15 - v13 == 0x8000000000000000 && v12 == -1)
      {
        goto LABEL_16;
      }

      v14[2] = v8;
      v14[3] = 2 * ((v15 - v13) / v12);
      if (v7 != a3)
      {
LABEL_10:
        a7(0);
        swift_arrayInitWithCopy();
        return;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }
}

void sub_1CFC849FC(uint64_t a1)
{
  v3 = sub_1CFC9C608();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for FavoriteSectionController.Item(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v1 + 40) & 1) == 0)
  {
    sub_1CFBAAD9C(a1, v9);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1CFBCE130(v9);
      sub_1CFC8C8F8(*(v1 + 64), 0);
    }

    else
    {
      (*(v4 + 32))(v6, v9, v3);
      v10 = sub_1CFC9C5D8();
      [v10 performActionWithCompletion_];

      (*(v4 + 8))(v6, v3);
    }
  }
}

double sub_1CFC84BAC@<D0>(void *a1@<X8>)
{
  v2 = *(v1 + 24);
  *a1 = *(v1 + 16);
  a1[1] = v2;

  return result;
}

unint64_t sub_1CFC84BE8()
{
  result = qword_1EE04F700;
  if (!qword_1EE04F700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE04F700);
  }

  return result;
}

double sub_1CFC84CEC@<D0>(uint64_t a1@<X8>)
{
  v3 = sub_1CFC9F1A8();
  v4 = sub_1CFC9F158();
  sub_1CFC9F538();
  sub_1CFC9DF68();
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  *(a1 + 32) = v8;
  *(a1 + 40) = v9;
  result = *&v10;
  *(a1 + 48) = v10;
  return result;
}

uint64_t sub_1CFC84D9C@<X0>(uint64_t a1@<X8>)
{
  v4 = *v1;
  v3 = v1[1];
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F0008, &qword_1CFCA8EF8);
  sub_1CFC84E80();
  sub_1CFC9F298();
  v6 = sub_1CFC9F148();
  KeyPath = swift_getKeyPath();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F0010, &qword_1CFCA8F40);
  v9 = (a1 + *(result + 36));
  *v9 = KeyPath;
  v9[1] = v6;
  return result;
}

unint64_t sub_1CFC84E80()
{
  result = qword_1EE04D430;
  if (!qword_1EE04D430)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4F0008, &qword_1CFCA8EF8);
    sub_1CFC4A794();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE04D430);
  }

  return result;
}

unint64_t sub_1CFC84F0C()
{
  result = qword_1EE04D490;
  if (!qword_1EE04D490)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4F0010, &qword_1CFCA8F40);
    sub_1CFBA57C0(&qword_1EE04D1E8, &qword_1EC4F0018, &qword_1CFCA8F48, MEMORY[0x1E697D680]);
    sub_1CFBA57C0(&qword_1EE04FFD0, &qword_1EC4EE3D0, &unk_1CFCA5DD0, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE04D490);
  }

  return result;
}

id static NSBundle.callsAppUI.getter()
{
  type metadata accessor for BundleClass();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];

  return v1;
}

uint64_t sub_1CFC8505C(uint64_t a1)
{
  v1[2] = a1;
  v2 = sub_1CFC9C258();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  sub_1CFC9F968();
  v1[6] = sub_1CFC9F958();
  v4 = sub_1CFC9F938();
  v1[7] = v4;
  v1[8] = v3;

  return MEMORY[0x1EEE6DFA0](sub_1CFC85150, v4, v3);
}

uint64_t sub_1CFC85150()
{
  v2 = v0[4];
  v1 = v0[5];
  v4 = v0[2];
  v3 = v0[3];
  sub_1CFC9C2E8();
  swift_allocObject();
  v0[9] = sub_1CFC9C2D8();
  v5 = sub_1CFC9C008();
  (*(*(v5 - 8) + 16))(v1, v4, v5);
  (*(v2 + 104))(v1, *MEMORY[0x1E6993610], v3);
  v6 = swift_task_alloc();
  v0[10] = v6;
  *v6 = v0;
  v6[1] = sub_1CFC85284;
  v7 = v0[5];

  return MEMORY[0x1EEDF2808](v7);
}

uint64_t sub_1CFC85284(uint64_t a1)
{
  v4 = *v2;
  v4[11] = v1;

  v5 = v4[5];
  v6 = v4[4];
  v7 = v4[3];
  if (v1)
  {
    (*(v6 + 8))(v5, v7);

    v8 = v4[7];
    v9 = v4[8];
    v10 = sub_1CFC854A0;
  }

  else
  {
    v4[12] = a1;
    (*(v6 + 8))(v5, v7);

    v8 = v4[7];
    v9 = v4[8];
    v10 = sub_1CFC85430;
  }

  return MEMORY[0x1EEE6DFA0](v10, v8, v9);
}

uint64_t sub_1CFC85430()
{

  v1 = *(v0 + 96);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1CFC854A0()
{
  v1 = *(v0 + 88);

  v2 = *(v0 + 8);
  v3 = MEMORY[0x1E69E7CC0];

  return v2(v3);
}

unint64_t sub_1CFC8551C(uint64_t a1, uint64_t a2)
{
  v3 = 0xD000000000000011;
  v4 = a1 == 0xD000000000000013 && 0x80000001CFCAD860 == a2;
  if (!v4 && (sub_1CFCA02B8() & 1) == 0)
  {
    if (a1 == 0xD000000000000012 && 0x80000001CFCAD880 == a2 || (sub_1CFCA02B8() & 1) != 0)
    {
      return 0xD000000000000017;
    }

    else if (a1 == 0x6C7070612E6D6F63 && a2 == 0xEE007370616D2E65)
    {
      return 0x6572696420746547;
    }

    else if (sub_1CFCA02B8())
    {
      return 0x6572696420746547;
    }

    else if (a1 == 0xD000000000000011 && 0x80000001CFCAD8A0 == a2 || (sub_1CFCA02B8() & 1) != 0)
    {
      return 0xD000000000000010;
    }

    else if ((a1 != 0x6C7070612E6D6F63 || a2 != 0xEF656E6F68702E65) && (sub_1CFCA02B8() & 1) == 0)
    {
      return 0;
    }
  }

  return v3;
}

uint64_t sub_1CFC8579C(uint64_t a1)
{
  v1[2] = a1;
  v2 = sub_1CFC9C258();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  sub_1CFC9F968();
  v1[6] = sub_1CFC9F958();
  v4 = sub_1CFC9F938();
  v1[7] = v4;
  v1[8] = v3;

  return MEMORY[0x1EEE6DFA0](sub_1CFC85890, v4, v3);
}

uint64_t sub_1CFC85890()
{
  v2 = v0[4];
  v1 = v0[5];
  v4 = v0[2];
  v3 = v0[3];
  sub_1CFC9C2E8();
  swift_allocObject();
  v0[9] = sub_1CFC9C2D8();
  v5 = sub_1CFC9C008();
  (*(*(v5 - 8) + 16))(v1, v4, v5);
  (*(v2 + 104))(v1, *MEMORY[0x1E6993610], v3);
  v6 = swift_task_alloc();
  v0[10] = v6;
  *v6 = v0;
  v6[1] = sub_1CFC859C4;
  v7 = v0[5];

  return MEMORY[0x1EEDF2800](v7);
}

uint64_t sub_1CFC859C4(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 40);
  v6 = *(*v2 + 32);
  v7 = *(*v2 + 24);
  *(v4 + 88) = a1;
  *(v4 + 96) = v1;

  (*(v6 + 8))(v5, v7);

  v8 = *(v3 + 64);
  v9 = *(v3 + 56);
  if (v1)
  {
    v10 = sub_1CFC85D24;
  }

  else
  {
    v10 = sub_1CFC85B88;
  }

  return MEMORY[0x1EEE6DFA0](v10, v9, v8);
}

uint64_t sub_1CFC85B88()
{

  if (qword_1EE050010 != -1)
  {
    swift_once();
  }

  v1 = sub_1CFC9D938();
  __swift_project_value_buffer(v1, qword_1EE052308);

  v2 = sub_1CFC9D918();
  v3 = sub_1CFC9FAF8();
  v4 = os_log_type_enabled(v2, v3);
  v5 = *(v0 + 88);
  if (v4)
  {
    v6 = swift_slowAlloc();
    *v6 = 134217984;
    if (v5 >> 62)
    {
      v12 = v6;
      v7 = sub_1CFC9FFD8();
      v6 = v12;
    }

    else
    {
      v7 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v6 + 4) = v7;
    v8 = v6;

    _os_log_impl(&dword_1CFB9F000, v2, v3, "Data items returned: %ld count", v8, 0xCu);
    MEMORY[0x1D3873280](v8, -1, -1);
  }

  else
  {
  }

  v9 = *(v0 + 88);

  v10 = *(v0 + 8);

  return v10(v9);
}

uint64_t sub_1CFC85D24()
{
  v1 = *(v0 + 96);

  v2 = *(v0 + 8);
  v3 = MEMORY[0x1E69E7CC0];

  return v2(v3);
}

uint64_t sub_1CFC85DA0()
{
  swift_getKeyPath();
  sub_1CFBB3074(&qword_1EE04EB90, type metadata accessor for SectionHeaderConfiguration, &unk_1CFCA9064);
  sub_1CFC9C158();

  v1 = *(v0 + 16);

  return v1;
}

uint64_t sub_1CFC85E50@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1CFBB3074(&qword_1EE04EB90, type metadata accessor for SectionHeaderConfiguration, &unk_1CFCA9064);
  sub_1CFC9C158();

  v4 = *(v3 + 24);
  *a2 = *(v3 + 16);
  a2[1] = v4;
}

double sub_1CFC85EFC(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16) == a1 && *(v2 + 24) == a2;
  if (v5 || (sub_1CFCA02B8() & 1) != 0)
  {
    *(v2 + 16) = a1;
    *(v2 + 24) = a2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1CFBB3074(&qword_1EE04EB90, type metadata accessor for SectionHeaderConfiguration, &unk_1CFCA9064);
    sub_1CFC9C148();
  }

  return result;
}

uint64_t sub_1CFC8605C()
{
  swift_getKeyPath();
  sub_1CFBB3074(&qword_1EE04EB90, type metadata accessor for SectionHeaderConfiguration, &unk_1CFCA9064);
  sub_1CFC9C158();

  v1 = *(v0 + 32);

  return v1;
}

uint64_t sub_1CFC8610C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1CFBB3074(&qword_1EE04EB90, type metadata accessor for SectionHeaderConfiguration, &unk_1CFCA9064);
  sub_1CFC9C158();

  v4 = *(v3 + 40);
  *a2 = *(v3 + 32);
  a2[1] = v4;
}

double sub_1CFC861B8(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  if (v5)
  {
    if (a2)
    {
      v6 = *(v2 + 32) == a1 && v5 == a2;
      if (v6 || (sub_1CFCA02B8() & 1) != 0)
      {
        goto LABEL_8;
      }
    }

LABEL_12:
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1CFBB3074(&qword_1EE04EB90, type metadata accessor for SectionHeaderConfiguration, &unk_1CFCA9064);
    sub_1CFC9C148();

    return result;
  }

  if (a2)
  {
    goto LABEL_12;
  }

LABEL_8:
  *(v2 + 32) = a1;
  *(v2 + 40) = a2;

  return result;
}

uint64_t sub_1CFC86328()
{
  swift_getKeyPath();
  sub_1CFBB3074(&qword_1EE04EB90, type metadata accessor for SectionHeaderConfiguration, &unk_1CFCA9064);
  sub_1CFC9C158();

  return *(v0 + 48);
}

uint64_t sub_1CFC863C8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1CFBB3074(&qword_1EE04EB90, type metadata accessor for SectionHeaderConfiguration, &unk_1CFCA9064);
  sub_1CFC9C158();

  *a2 = *(v3 + 48);
  return result;
}

uint64_t sub_1CFC86470(uint64_t result)
{
  if (*(v1 + 48) == (result & 1))
  {
    *(v1 + 48) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1CFBB3074(&qword_1EE04EB90, type metadata accessor for SectionHeaderConfiguration, &unk_1CFCA9064);
    sub_1CFC9C148();
  }

  return result;
}

uint64_t sub_1CFC86580()
{
  swift_getKeyPath();
  sub_1CFBB3074(&qword_1EE04EB90, type metadata accessor for SectionHeaderConfiguration, &unk_1CFCA9064);
  sub_1CFC9C158();

  return *(v0 + 49);
}

uint64_t sub_1CFC86620(uint64_t result)
{
  if (*(v1 + 49) == (result & 1))
  {
    *(v1 + 49) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1CFBB3074(&qword_1EE04EB90, type metadata accessor for SectionHeaderConfiguration, &unk_1CFCA9064);
    sub_1CFC9C148();
  }

  return result;
}

uint64_t sub_1CFC86738()
{
  swift_getKeyPath();
  v3 = v0;
  sub_1CFBB3074(&qword_1EE04EB90, type metadata accessor for SectionHeaderConfiguration, &unk_1CFCA9064);
  sub_1CFC9C158();

  v1 = *(v0 + 56);
  sub_1CFBB2568(v1, *(v3 + 64));
  return v1;
}

uint64_t sub_1CFC867EC()
{
  swift_getKeyPath();
  sub_1CFBB3074(&qword_1EE04EB90, type metadata accessor for SectionHeaderConfiguration, &unk_1CFCA9064);
  sub_1CFC9C158();

  return *(v0 + 72);
}

uint64_t sub_1CFC8688C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1CFBB3074(&qword_1EE04EB90, type metadata accessor for SectionHeaderConfiguration, &unk_1CFCA9064);
  sub_1CFC9C158();

  *a2 = *(v3 + 72);
  return result;
}

uint64_t sub_1CFC8695C(uint64_t result)
{
  if (*(v1 + 72) == (result & 1))
  {
    *(v1 + 72) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1CFBB3074(&qword_1EE04EB90, type metadata accessor for SectionHeaderConfiguration, &unk_1CFCA9064);
    sub_1CFC9C148();
  }

  return result;
}

uint64_t sub_1CFC86A74()
{
  swift_getKeyPath();
  sub_1CFBB3074(&qword_1EE04EB90, type metadata accessor for SectionHeaderConfiguration, &unk_1CFCA9064);
  sub_1CFC9C158();

  return *(v0 + 73);
}

uint64_t sub_1CFC86B14@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1CFBB3074(&qword_1EE04EB90, type metadata accessor for SectionHeaderConfiguration, &unk_1CFCA9064);
  sub_1CFC9C158();

  *a2 = *(v3 + 73);
  return result;
}

uint64_t sub_1CFC86BBC(uint64_t result)
{
  v2 = *(v1 + 73);
  if (v2 != 2)
  {
    if (result != 2 && ((v2 ^ result) & 1) == 0)
    {
      goto LABEL_7;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1CFBB3074(&qword_1EE04EB90, type metadata accessor for SectionHeaderConfiguration, &unk_1CFCA9064);
    sub_1CFC9C148();
  }

  if (result != 2)
  {
    goto LABEL_6;
  }

LABEL_7:
  *(v1 + 73) = result;
  return result;
}

uint64_t sub_1CFC86CF0()
{

  sub_1CFBB2564(*(v0 + 56), *(v0 + 64));
  v1 = OBJC_IVAR____TtC10CallsAppUI26SectionHeaderConfiguration___observationRegistrar;
  v2 = sub_1CFC9C198();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_1CFC86DAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v71 = a2;
  v3 = sub_1CFC9E858();
  v59 = *(v3 - 8);
  v60 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v58 = &v53 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F0078, &qword_1CFCA9248);
  v56 = *(v57 - 8);
  MEMORY[0x1EEE9AC00](v57);
  v55 = &v53 - v5;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F0080, &qword_1CFCA9250);
  v67 = *(v69 - 8);
  MEMORY[0x1EEE9AC00](v69);
  v54 = &v53 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F0088, &qword_1CFCA9258);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v70 = &v53 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v68 = &v53 - v10;
  v11 = sub_1CFC9E648();
  v64 = *(v11 - 8);
  v65 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v63 = &v53 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F0090, &unk_1CFCA9260);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v66 = &v53 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v62 = &v53 - v16;
  swift_getKeyPath();
  v17 = OBJC_IVAR____TtC10CallsAppUI26SectionHeaderConfiguration___observationRegistrar;
  v72 = a1;
  sub_1CFBB3074(&qword_1EE04EB90, type metadata accessor for SectionHeaderConfiguration, &unk_1CFCA9064);
  sub_1CFC9C158();

  swift_getKeyPath();
  v72 = a1;

  v61 = v17;
  sub_1CFC9C158();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EE3E8, &qword_1CFCA4310);
  sub_1CFC9CD28();
  v18 = sub_1CFC9EDC8();
  v20 = v19;
  v22 = v21;

  swift_getKeyPath();
  v72 = a1;
  sub_1CFC9C158();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EE4C0, &qword_1CFCA9270);
  sub_1CFC9CD28();
  v23 = sub_1CFC9ED38();
  v25 = v24;
  v27 = v26;
  v29 = v28;
  sub_1CFBB44C0(v18, v20, v22 & 1);

  v72 = v23;
  v73 = v25;
  v74 = v27 & 1;
  v75 = v29;
  v30 = v63;
  sub_1CFC9E628();
  v31 = v62;
  sub_1CFC9EFF8();
  (*(v64 + 8))(v30, v65);
  sub_1CFBB44C0(v23, v25, v27 & 1);

  swift_getKeyPath();
  v72 = a1;
  sub_1CFC9C158();

  if (*(a1 + 40))
  {
    swift_getKeyPath();
    v72 = a1;

    sub_1CFC9C158();

    v32 = *(a1 + 56);
    if (v32)
    {
      v33 = *(a1 + 64);
      swift_getKeyPath();
      v72 = a1;

      sub_1CFC9C158();

      if ((*(a1 + 72) & 1) == 0)
      {
        MEMORY[0x1EEE9AC00](v34);

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F00A0, &qword_1CFCA9280);
        sub_1CFBA57C0(&qword_1EC4F00A8, &qword_1EC4F00A0, &qword_1CFCA9280, MEMORY[0x1E69817F8]);
        v38 = v55;
        sub_1CFC9F298();

        v39 = v58;
        sub_1CFC9E848();
        sub_1CFBA57C0(&qword_1EC4F00B0, &qword_1EC4F0078, &qword_1CFCA9248, MEMORY[0x1E697D680]);
        sub_1CFBB3074(&qword_1EE04FFF0, MEMORY[0x1E697C720], MEMORY[0x1E697C718]);
        v40 = v54;
        v41 = v57;
        v42 = v60;
        sub_1CFC9EEC8();
        (*(v59 + 8))(v39, v42);
        (*(v56 + 8))(v38, v41);
        v43 = sub_1CFC9F108();
        sub_1CFBB2564(v32, v33);
        KeyPath = swift_getKeyPath();
        v37 = v68;
        v45 = v69;
        v46 = (v40 + *(v69 + 36));
        *v46 = KeyPath;
        v46[1] = v43;
        sub_1CFBC0FEC(v40, v37);
        v36 = v45;
        v35 = 0;
        goto LABEL_8;
      }

      sub_1CFBB2564(v32, v33);
    }

    v35 = 1;
    v37 = v68;
    v36 = v69;
  }

  else
  {
    v35 = 1;
    v37 = v68;
    v36 = v69;
  }

LABEL_8:
  (*(v67 + 56))(v37, v35, 1, v36);
  v47 = v66;
  sub_1CFBA29FC(v31, v66, &qword_1EC4F0090, &unk_1CFCA9260);
  v48 = v70;
  sub_1CFBC0F74(v37, v70);
  v49 = v71;
  sub_1CFBA29FC(v47, v71, &qword_1EC4F0090, &unk_1CFCA9260);
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F0098, &qword_1CFCA9278);
  v51 = v49 + *(v50 + 48);
  *v51 = 0;
  *(v51 + 8) = 1;
  sub_1CFBC0F74(v48, v49 + *(v50 + 64));
  sub_1CFBC2FB0(v37, &qword_1EC4F0088, &qword_1CFCA9258);
  sub_1CFBC2FB0(v31, &qword_1EC4F0090, &unk_1CFCA9260);
  sub_1CFBC2FB0(v48, &qword_1EC4F0088, &qword_1CFCA9258);
  return sub_1CFBC2FB0(v47, &qword_1EC4F0090, &unk_1CFCA9260);
}

uint64_t sub_1CFC8782C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1CFC9ECA8();
  *a1 = result;
  return result;
}

uint64_t sub_1CFC87854@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1CFC9EC68();
  *a1 = result;
  return result;
}

uint64_t sub_1CFC8787C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1CFC9ECB8();
  *a1 = result;
  return result;
}

void sub_1CFC878A4(uint64_t a1@<X8>)
{
  sub_1CFC9EC78();
  *a1 = v3;
  *(a1 + 8) = 0;
}

void sub_1CFC878D0(uint64_t a1@<X8>)
{
  sub_1CFC9EC98();
  *a1 = v3;
  *(a1 + 8) = 0;
}

void sub_1CFC878FC(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_1CFC9E568();
  swift_getKeyPath();
  sub_1CFBB3074(&qword_1EE04EB90, type metadata accessor for SectionHeaderConfiguration, &unk_1CFCA9064);
  sub_1CFC9C158();

  v9 = 0x4010000000000000;
  if (*(a1 + 49))
  {
    v9 = 0x4018000000000000;
  }

  *a4 = v8;
  *(a4 + 8) = v9;
  *(a4 + 16) = 0;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F00B8, &qword_1CFCA92B8);
  sub_1CFC87A04(a2, a3, a1, a4 + *(v10 + 44));
}

void sub_1CFC87A04(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v55 = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EE498, &unk_1CFCA92C0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = (&v48 - v8);
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EE4A0, &qword_1CFCA45C8);
  MEMORY[0x1EEE9AC00](v49);
  v52 = &v48 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EE4A8, &qword_1CFCA92D0);
  v12 = *(v11 - 8);
  v53 = v11;
  v54 = v12;
  MEMORY[0x1EEE9AC00](v11);
  v51 = &v48 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v50 = &v48 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F00C0, &qword_1CFCA92D8);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v48 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v48 - v20;
  swift_getKeyPath();
  v57 = a3;
  sub_1CFBB3074(&qword_1EE04EB90, type metadata accessor for SectionHeaderConfiguration, &unk_1CFCA9064);
  v56 = a2;

  sub_1CFC9C158();

  if (*(a3 + 48) == 1)
  {
    v22 = sub_1CFC9F1A8();
    v23 = *(v7 + 36);
    v24 = *MEMORY[0x1E697E7D8];
    v25 = sub_1CFC9E168();
    (*(*(v25 - 8) + 104))(v9 + v23, v24, v25);
    v26 = *MEMORY[0x1E6980218];
    v27 = sub_1CFC9E9A8();
    (*(*(v27 - 8) + 104))(v9 + v23, v26, v27);
    *v9 = v22;
    swift_getKeyPath();
    v57 = a3;
    sub_1CFC9C158();

    if (*(a3 + 49))
    {
      v28 = 1.57079633;
    }

    else
    {
      v28 = 0.0;
    }

    sub_1CFC9F5D8();
    v30 = v29;
    v32 = v31;
    v33 = v52;
    v34 = sub_1CFBCCE88(v9, v52, &qword_1EC4EE498, &unk_1CFCA92C0);
    v35 = v33 + *(v49 + 36);
    *v35 = v28;
    *(v35 + 8) = v30;
    *(v35 + 16) = v32;
    MEMORY[0x1D3871A90](v34, 0.5, 1.0, 0.0);
    v36 = sub_1CFC9F548();

    swift_getKeyPath();
    v57 = a3;
    sub_1CFC9C158();

    v37 = *(a3 + 49);
    v38 = v51;
    sub_1CFBCCE88(v33, v51, &qword_1EC4EE4A0, &qword_1CFCA45C8);
    v39 = v53;
    v40 = v38 + *(v53 + 36);
    *v40 = v36;
    *(v40 + 8) = v37;
    v41 = v38;
    v42 = v50;
    sub_1CFBCCE88(v41, v50, &qword_1EC4EE4A8, &qword_1CFCA92D0);
    sub_1CFBCCE88(v42, v21, &qword_1EC4EE4A8, &qword_1CFCA92D0);
    v43 = 0;
    v44 = v39;
  }

  else
  {
    v43 = 1;
    v44 = v53;
  }

  (*(v54 + 56))(v21, v43, 1, v44);
  sub_1CFBA29FC(v21, v18, &qword_1EC4F00C0, &qword_1CFCA92D8);
  v46 = v55;
  v45 = v56;
  *a4 = v55;
  *(a4 + 8) = v45;
  *(a4 + 16) = 0;
  *(a4 + 24) = MEMORY[0x1E69E7CC0];
  *(a4 + 32) = 0;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F00C8, &qword_1CFCA92E0);
  sub_1CFBA29FC(v18, a4 + *(v47 + 48), &qword_1EC4F00C0, &qword_1CFCA92D8);
  sub_1CFBB45F4(v46, v45, 0);

  sub_1CFBC2FB0(v21, &qword_1EC4F00C0, &qword_1CFCA92D8);
  sub_1CFBC2FB0(v18, &qword_1EC4F00C0, &qword_1CFCA92D8);
  sub_1CFBB44C0(v46, v45, 0);
}

id sub_1CFC87FBC(double a1, double a2, double a3, double a4)
{
  swift_getObjectType();
  *&v4[OBJC_IVAR____TtC10CallsAppUI17SectionHeaderView_configuration] = 0;
  *&v4[OBJC_IVAR____TtC10CallsAppUI17SectionHeaderView_headerView] = 0;
  v14.receiver = v4;
  v14.super_class = type metadata accessor for SectionHeaderView();
  v9 = objc_msgSendSuper2(&v14, sel_initWithFrame_, a1, a2, a3, a4);
  sub_1CFBB1F70();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4EF870, &qword_1CFCA7920);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1CFCA1DD0;
  v11 = sub_1CFC9DC58();
  v12 = MEMORY[0x1E69DC2F0];
  *(v10 + 32) = v11;
  *(v10 + 40) = v12;
  sub_1CFC9FD98();

  swift_unknownObjectRelease();

  return v9;
}

id sub_1CFC881D8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SectionHeaderView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

char *sub_1CFC88258(char *result)
{
  if (*&result[OBJC_IVAR____TtC10CallsAppUI17SectionHeaderView_configuration])
  {
    v1 = result;

    v2 = [v1 traitCollection];
    v3 = [v2 splitViewControllerLayoutEnvironment];

    sub_1CFC86BBC(v3 == 2);
  }

  return result;
}

void sub_1CFC882F8(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC10CallsAppUI17SectionHeaderView_configuration;
  *&v1[OBJC_IVAR____TtC10CallsAppUI17SectionHeaderView_configuration] = a1;

  if (*&v1[v2])
  {

    v3 = [v1 traitCollection];
    v4 = [v3 splitViewControllerLayoutEnvironment];

    sub_1CFC86BBC(v4 == 2);
  }

  sub_1CFBB1F70();
}

void sub_1CFC883D8()
{
  v1 = v0[2];
  v2 = v0[4];
  *(v1 + 32) = v0[3];
  *(v1 + 40) = v2;
}

unint64_t sub_1CFC88418()
{
  result = qword_1EC4F0058;
  if (!qword_1EC4F0058)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4F0038, &qword_1CFCA9220);
    sub_1CFC884A4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4F0058);
  }

  return result;
}

unint64_t sub_1CFC884A4()
{
  result = qword_1EC4F0060;
  if (!qword_1EC4F0060)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4F0050, &qword_1CFCA9238);
    sub_1CFBA57C0(&qword_1EC4F0068, &qword_1EC4F0070, &qword_1CFCA9240, MEMORY[0x1E69817F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4F0060);
  }

  return result;
}

unint64_t sub_1CFC88568()
{
  result = qword_1EC4F00D0;
  if (!qword_1EC4F00D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4F00D8, &unk_1CFCA92E8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4F0038, &qword_1CFCA9220);
    sub_1CFC88418();
    swift_getOpaqueTypeConformance2();
    sub_1CFBB3074(&qword_1EE04FFC8, MEMORY[0x1E697CBE8], MEMORY[0x1E697CBD8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4F00D0);
  }

  return result;
}

uint64_t DetailsPresenter.__allocating_init(dataSource:presentingViewController:recentsDetailProvider:)(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = swift_allocObject();
  swift_unknownObjectWeakInit();
  *(v6 + 72) = 0;
  v7 = OBJC_IVAR____TtC10CallsAppUI16DetailsPresenter_recentGroupCallItemInDetailsView;
  v8 = sub_1CFC9C448();
  (*(*(v8 - 8) + 56))(v6 + v7, 1, 1, v8);
  *(v6 + OBJC_IVAR____TtC10CallsAppUI16DetailsPresenter_contactDetailsCoordinator) = 0;
  *(v6 + 16) = a1;
  swift_beginAccess();
  swift_unknownObjectWeakAssign();

  v9 = *(a3 + 16);
  *(v6 + 32) = *a3;
  *(v6 + 48) = v9;
  *(v6 + 64) = *(a3 + 32);
  return v6;
}

uint64_t sub_1CFC88758@<X0>(uint64_t (*a1)(char *)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v24 = a1;
  v6 = sub_1CFC9C448();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a2 + 16);
  if (v11)
  {
    v21 = v7;
    v22 = a3;
    v13 = *(v7 + 16);
    v12 = v7 + 16;
    v23 = v13;
    v14 = (v12 - 8);
    v15 = a2 + ((*(v12 + 64) + 32) & ~*(v12 + 64));
    v16 = *(v12 + 56);
    while (1)
    {
      v23(v10, v15, v6, v8);
      v17 = v24(v10);
      if (v3)
      {
        return (*v14)(v10, v6);
      }

      if (v17)
      {
        break;
      }

      (*v14)(v10, v6);
      v15 += v16;
      if (!--v11)
      {
        v18 = 1;
        v7 = v21;
        a3 = v22;
        return (*(v7 + 56))(a3, v18, 1, v6);
      }
    }

    v7 = v21;
    a3 = v22;
    (*(v21 + 32))(v22, v10, v6);
    v18 = 0;
  }

  else
  {
    v18 = 1;
  }

  return (*(v7 + 56))(a3, v18, 1, v6);
}

void sub_1CFC88964(void *a1)
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
}

void (*sub_1CFC889B0(uint64_t *a1))(id **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_1CFC88A40;
}

void sub_1CFC88A40(id **a1, char a2)
{
  v3 = *a1;
  v4 = (*a1)[3];
  swift_unknownObjectWeakAssign();
  if (a2)
  {

    swift_endAccess();
  }

  else
  {
    swift_endAccess();
  }

  free(v3);
}

id sub_1CFC88ABC()
{
  v1 = *(v0 + 72);
  if (v1)
  {
    v2 = *(v0 + 72);
  }

  else
  {
    v3 = v0;
    if (sub_1CFC9C818())
    {
      sub_1CFC72300(&qword_1EC4EFE80, &qword_1EC4EFE88, 0x1E69BDD08, MEMORY[0x1E69937A0]);
    }

    v4 = objc_allocWithZone(sub_1CFC9CA48());
    v5 = sub_1CFC9C998();
    v6 = *(v0 + 72);
    *(v3 + 72) = v5;
    v2 = v5;

    v1 = 0;
  }

  v7 = v1;
  return v2;
}

uint64_t DetailsPresenter.init(dataSource:presentingViewController:recentsDetailProvider:)(uint64_t a1, void *a2, uint64_t a3)
{
  swift_unknownObjectWeakInit();
  *(v3 + 72) = 0;
  v7 = OBJC_IVAR____TtC10CallsAppUI16DetailsPresenter_recentGroupCallItemInDetailsView;
  v8 = sub_1CFC9C448();
  (*(*(v8 - 8) + 56))(v3 + v7, 1, 1, v8);
  *(v3 + OBJC_IVAR____TtC10CallsAppUI16DetailsPresenter_contactDetailsCoordinator) = 0;
  *(v3 + 16) = a1;
  swift_beginAccess();
  swift_unknownObjectWeakAssign();

  v9 = *(a3 + 16);
  *(v3 + 32) = *a3;
  *(v3 + 48) = v9;
  *(v3 + 64) = *(a3 + 32);
  return v3;
}

void sub_1CFC88C60(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v4 = objc_opt_self();
  v5 = [v4 shared];
  v6 = [v5 current];

  if (v6 || (v10 = sub_1CFC9C408()) == 0)
  {
    v7 = [v4 shared];
    v8 = [v7 tapRecentsToCall];

    if (v8)
    {
      v9 = sub_1CFC9C898();
      a2(v9);
      return;
    }
  }

  else
  {
  }

  sub_1CFC88EA4(a1);
}

double sub_1CFC88D6C(uint64_t a1)
{
  v2 = objc_opt_self();
  v3 = [v2 shared];
  v4 = [v3 current];

  if (v4 || (v8 = sub_1CFC9C408()) == 0)
  {
    v5 = [v2 shared];
    v6 = [v5 tapRecentsToCall];

    if (v6)
    {

      sub_1CFC88EA4(a1);
    }

    else
    {
      sub_1CFC9C898();
    }
  }

  else
  {

    v9 = sub_1CFC9C428();
    sub_1CFC8C10C(v9, 0);
  }

  return result;
}

void sub_1CFC88EA4(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EE368, &unk_1CFCA4040);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v35[-v5];
  v7 = sub_1CFC9C408();
  if (v7)
  {
    v8 = v7;
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v10 = Strong;
      v11 = [Strong navigationItem];

      [v11 setBackButtonDisplayMode_];
    }

    if (qword_1EE050010 != -1)
    {
      swift_once();
    }

    v12 = sub_1CFC9D938();
    __swift_project_value_buffer(v12, qword_1EE052308);
    v13 = sub_1CFC9D918();
    v14 = sub_1CFC9FAF8();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_1CFB9F000, v13, v14, "Create details view for the voicemail.", v15, 2u);
      MEMORY[0x1D3873280](v15, -1, -1);
    }

    v16 = sub_1CFC89330(a1);
    if (v16)
    {
LABEL_9:
      if (qword_1EE050010 != -1)
      {
        swift_once();
      }

      v17 = sub_1CFC9D938();
      __swift_project_value_buffer(v17, qword_1EE052308);
      v18 = sub_1CFC9D918();
      v19 = sub_1CFC9FAF8();
      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        *v20 = 0;
        _os_log_impl(&dword_1CFB9F000, v18, v19, "Show details view controller.", v20, 2u);
        MEMORY[0x1D3873280](v20, -1, -1);
      }

      sub_1CFC8CF7C(v16);
    }
  }

  else
  {
    v21 = sub_1CFC9C308();
    if (!v21)
    {
      v33 = [objc_opt_self() currentDevice];
      v34 = [v33 userInterfaceIdiom];

      if (v34 != 6)
      {
        return;
      }

      if ((sub_1CFC9C358() & 1) == 0)
      {
        return;
      }

      v16 = sub_1CFC8D7C4();
      if (!v16)
      {
        return;
      }

      goto LABEL_9;
    }

    v22 = v21;
    swift_beginAccess();
    v23 = swift_unknownObjectWeakLoadStrong();
    if (v23)
    {
      v24 = v23;
      v25 = [v23 navigationItem];

      [v25 setBackButtonDisplayMode_];
    }

    v26 = sub_1CFC9C828();
    v27 = v22;
    sub_1CFC8C10C(v26, v22);

    v28 = sub_1CFC9C428();
    if (v28 >> 62)
    {
      v29 = sub_1CFC9FFD8();
    }

    else
    {
      v29 = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v29 >= 2)
    {
      v30 = sub_1CFC9C448();
      v31 = *(v30 - 8);
      (*(v31 + 16))(v6, a1, v30);
      (*(v31 + 56))(v6, 0, 1, v30);
      v32 = OBJC_IVAR____TtC10CallsAppUI16DetailsPresenter_recentGroupCallItemInDetailsView;
      swift_beginAccess();
      sub_1CFC8DB9C(v6, v2 + v32);
      swift_endAccess();
    }
  }
}

unint64_t sub_1CFC89330(uint64_t a1)
{
  v2 = sub_1CFC9C448();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v56 = &v49 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v53 = &v49 - v6;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v49 - v8;
  v11 = MEMORY[0x1EEE9AC00](v10);
  v57 = &v49 - v12;
  v13 = *(v3 + 16);
  v13(v11);
  v60 = v13;
  v61 = v3 + 16;
  v14 = swift_allocObject();
  v58 = v14;
  swift_weakInit();
  v52 = a1;
  (v13)(v9, a1, v2);
  v15 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v16 = swift_allocObject();
  v55 = v16;
  *(v16 + 16) = v14;
  v50 = v3;
  v51 = *(v3 + 32);
  v17 = v2;
  v51(v16 + v15, v9, v2);
  v18 = swift_allocObject();
  v59 = v18;
  swift_weakInit();
  v19 = v53;
  v20 = a1;
  v21 = v60;
  (v60)(v53, v20, v17);
  v22 = swift_allocObject();
  v54 = v22;
  *(v22 + 16) = v18;
  v23 = v19;
  v24 = v51;
  v51(v22 + v15, v23, v17);
  v25 = swift_allocObject();
  swift_weakInit();
  v26 = v56;
  (v21)(v56, v52, v17);
  v27 = swift_allocObject();
  *(v27 + 16) = v25;
  v28 = v26;
  v29 = v17;
  v24(v27 + v15, v28, v17);
  v30 = type metadata accessor for VoicemailDetailViewController(0);
  v31 = objc_allocWithZone(v30);
  v31[OBJC_IVAR____TtC10CallsAppUI29VoicemailDetailViewController_playMessageOnAppear] = 0;
  v32 = OBJC_IVAR____TtC10CallsAppUI29VoicemailDetailViewController_smartActionsViewModel;
  type metadata accessor for VoicemailSmartActionsBannerViewModel(0);
  v33 = swift_allocObject();
  *(v33 + 16) = 0;
  *(v33 + 24) = 0xE000000000000000;

  v34 = v55;

  v56 = v25;

  v35 = MEMORY[0x1E69E7CC0];
  *(v33 + 32) = sub_1CFBE54FC(MEMORY[0x1E69E7CC0]);
  *(v33 + 40) = sub_1CFBE56E8(v35);
  *(v33 + 48) = 0;
  sub_1CFC9C188();
  *&v31[v32] = v33;
  v36 = v54;
  v37 = v29;
  *&v31[OBJC_IVAR____TtC10CallsAppUI29VoicemailDetailViewController_viewModel] = 0;
  *&v31[OBJC_IVAR____TtC10CallsAppUI29VoicemailDetailViewController_detailViewContainer] = 0;
  *&v31[OBJC_IVAR____TtC10CallsAppUI29VoicemailDetailViewController_smartActionDataItems] = v35;
  *&v31[OBJC_IVAR____TtC10CallsAppUI29VoicemailDetailViewController____lazy_storage___carrierVoiceSpamReportHelper] = 0;
  *&v31[OBJC_IVAR____TtC10CallsAppUI29VoicemailDetailViewController____lazy_storage___spamReportManager] = 0;
  *&v31[OBJC_IVAR____TtC10CallsAppUI29VoicemailDetailViewController____lazy_storage___shareButton] = 0;
  v38 = v57;
  (v60)(&v31[OBJC_IVAR____TtC10CallsAppUI29VoicemailDetailViewController_item], v57, v37);
  v31[OBJC_IVAR____TtC10CallsAppUI29VoicemailDetailViewController_appType] = 1;
  v39 = &v31[OBJC_IVAR____TtC10CallsAppUI29VoicemailDetailViewController_deleteAction];
  *v39 = &unk_1CFCA94A0;
  v39[1] = v34;
  v40 = &v31[OBJC_IVAR____TtC10CallsAppUI29VoicemailDetailViewController_callbackAction];
  *v40 = sub_1CFC8E980;
  v40[1] = v36;
  v41 = &v31[OBJC_IVAR____TtC10CallsAppUI29VoicemailDetailViewController_contactDetailViewController];
  *v41 = sub_1CFC8E9E4;
  v41[1] = v27;

  result = sub_1CFC9C428();
  if (!(result >> 62))
  {
    if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

LABEL_8:

    v44 = [objc_allocWithZone(MEMORY[0x1E695CD58]) init];
    goto LABEL_9;
  }

  v45 = result;
  v46 = sub_1CFC9FFD8();
  result = v45;
  if (!v46)
  {
    goto LABEL_8;
  }

LABEL_3:
  if ((result & 0xC000000000000001) != 0)
  {
    v43 = MEMORY[0x1D3872640](0, result);
    goto LABEL_6;
  }

  if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v43 = *(result + 32);
LABEL_6:
    v44 = v43;

LABEL_9:
    *&v31[OBJC_IVAR____TtC10CallsAppUI29VoicemailDetailViewController_contactForView] = v44;
    v62.receiver = v31;
    v62.super_class = v30;
    v47 = objc_msgSendSuper2(&v62, sel_initWithNibName_bundle_, 0, 0);
    v47[OBJC_IVAR____TtC10CallsAppUI29VoicemailDetailViewController_playMessageOnAppear] = 0;
    v48 = v47;
    sub_1CFBDDA1C();

    (*(v50 + 8))(v38, v37);

    return v48;
  }

  __break(1u);
  return result;
}

uint64_t sub_1CFC898F4(uint64_t a1, uint64_t a2)
{
  v2[5] = a1;
  v2[6] = a2;
  v3 = sub_1CFC9C448();
  v2[7] = v3;
  v4 = *(v3 - 8);
  v2[8] = v4;
  v2[9] = *(v4 + 64);
  v2[10] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED950, &qword_1CFCA2710);
  v2[11] = swift_task_alloc();
  v2[12] = sub_1CFC9F968();
  v2[13] = sub_1CFC9F958();
  v6 = sub_1CFC9F938();

  return MEMORY[0x1EEE6DFA0](sub_1CFC89A2C, v6, v5);
}

uint64_t sub_1CFC89A2C()
{

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = v0[11];
    v5 = v0[9];
    v4 = v0[10];
    v6 = v0[7];
    v7 = v0[8];
    v8 = v0[6];
    v9 = sub_1CFC9F998();
    (*(*(v9 - 8) + 56))(v3, 1, 1, v9);
    (*(v7 + 16))(v4, v8, v6);

    v10 = sub_1CFC9F958();
    v11 = (*(v7 + 80) + 32) & ~*(v7 + 80);
    v12 = swift_allocObject();
    v13 = MEMORY[0x1E69E85E0];
    *(v12 + 16) = v10;
    *(v12 + 24) = v13;
    (*(v7 + 32))(v12 + v11, v4, v6);
    *(v12 + ((v5 + v11 + 7) & 0xFFFFFFFFFFFFFFF8)) = v2;
    sub_1CFBDC030(0, 0, v3, &unk_1CFCA94C8, v12);
  }

  v14 = v0[1];

  return v14();
}

uint64_t sub_1CFC89BFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  sub_1CFC9F968();
  v5[4] = sub_1CFC9F958();
  v7 = sub_1CFC9F938();

  return MEMORY[0x1EEE6DFA0](sub_1CFC89C94, v7, v6);
}

uint64_t sub_1CFC89C94()
{

  v1 = sub_1CFC9C408();
  if (v1 && (v2 = v1, sub_1CFC9D5B8(), v2, LODWORD(v2) = sub_1CFC9D758(), v2 == sub_1CFC9D758()))
  {
    v3 = *(v0 + 16);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED500, &qword_1CFCA2420);
    v4 = sub_1CFC9C448();
    v5 = *(v4 - 8);
    v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_1CFCA1DD0;
    (*(v5 + 16))(v7 + v6, v3, v4);
    sub_1CFC9C858();

    v8 = sub_1CFC9C408();
    if (!v8)
    {
      goto LABEL_8;
    }

    v9 = v8;
  }

  else
  {
    v10 = *(v0 + 16);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED500, &qword_1CFCA2420);
    v11 = sub_1CFC9C448();
    v12 = *(v11 - 8);
    v13 = (*(v12 + 80) + 32) & ~*(v12 + 80);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_1CFCA1DD0;
    (*(v12 + 16))(v14 + v13, v10, v11);
    sub_1CFC9C888();

    v15 = sub_1CFC9C408();
    if (!v15)
    {
      goto LABEL_8;
    }

    v9 = v15;
  }

  sub_1CFC9D5C8();

LABEL_8:
  v16 = *(v0 + 8);

  return v16();
}

uint64_t sub_1CFC89F00(uint64_t a1, uint64_t a2)
{
  v3 = sub_1CFC9C448();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED950, &qword_1CFCA2710);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v16 - v8;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v11 = sub_1CFC9F998();
    (*(*(v11 - 8) + 56))(v9, 1, 1, v11);
    (*(v4 + 16))(&v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v3);
    sub_1CFC9F968();
    v12 = sub_1CFC9F958();
    v13 = (*(v4 + 80) + 32) & ~*(v4 + 80);
    v14 = swift_allocObject();
    v15 = MEMORY[0x1E69E85E0];
    *(v14 + 16) = v12;
    *(v14 + 24) = v15;
    (*(v4 + 32))(v14 + v13, v6, v3);
    sub_1CFBDC030(0, 0, v9, &unk_1CFCA94B8, v14);
  }

  return result;
}

uint64_t sub_1CFC8A128(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  sub_1CFC9F968();
  *(v4 + 24) = sub_1CFC9F958();
  v6 = sub_1CFC9F938();

  return MEMORY[0x1EEE6DFA0](sub_1CFC8A1C0, v6, v5);
}

uint64_t sub_1CFC8A1C0()
{

  v1 = sub_1CFC9C408();
  if (v1)
  {
    v2 = v1;
    v3 = [objc_allocWithZone(MEMORY[0x1E69D8A90]) init];
    v4 = sub_1CFC9D608();

    v5 = [objc_opt_self() sharedInstance];
  }

  else
  {
    if (qword_1EE050010 != -1)
    {
      swift_once();
    }

    v6 = sub_1CFC9D938();
    __swift_project_value_buffer(v6, qword_1EE052308);
    v5 = sub_1CFC9D918();
    v7 = sub_1CFC9FAD8();
    if (os_log_type_enabled(v5, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_1CFB9F000, v5, v7, "Unable to access message for callback action.", v8, 2u);
      MEMORY[0x1D3873280](v8, -1, -1);
    }
  }

  v9 = *(v0 + 8);

  return v9();
}

unint64_t sub_1CFC8A360(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  if (!swift_weakLoadStrong())
  {
    return 0;
  }

  result = sub_1CFC9C428();
  if (!(result >> 62))
  {
    if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_4;
    }

LABEL_10:

    v4 = 0;
    goto LABEL_11;
  }

  v6 = result;
  v7 = sub_1CFC9FFD8();
  result = v6;
  if (!v7)
  {
    goto LABEL_10;
  }

LABEL_4:
  if ((result & 0xC000000000000001) != 0)
  {
    v3 = MEMORY[0x1D3872640](0);
    goto LABEL_7;
  }

  if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v3 = *(result + 32);
LABEL_7:
    v4 = v3;

LABEL_11:
    v8 = sub_1CFC9C308();
    v5 = sub_1CFC8C4B4(v4, v8);

    return v5;
  }

  __break(1u);
  return result;
}

uint64_t sub_1CFC8A490(uint64_t a1, uint64_t a2)
{
  v3[6] = a2;
  v3[7] = v2;
  v3[5] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EE368, &unk_1CFCA4040);
  v3[8] = swift_task_alloc();
  v4 = sub_1CFC9C448();
  v3[9] = v4;
  v3[10] = *(v4 - 8);
  v3[11] = swift_task_alloc();
  v3[12] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F0118, &qword_1CFCA9488);
  v3[13] = v5;
  v3[14] = *(v5 - 8);
  v3[15] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F0120, &qword_1CFCA9490);
  v3[16] = v6;
  v3[17] = *(v6 - 8);
  v3[18] = swift_task_alloc();
  v3[19] = sub_1CFC9F968();
  v3[20] = sub_1CFC9F958();
  v8 = sub_1CFC9F938();
  v3[21] = v8;
  v3[22] = v7;

  return MEMORY[0x1EEE6DFA0](sub_1CFC8A6A0, v8, v7);
}

uint64_t sub_1CFC8A6A0()
{
  if (sub_1CFC8AF88(*(v0 + 56), *(v0 + 40)))
  {

    v1 = *(v0 + 8);

    return v1();
  }

  else
  {
    v4 = *(v0 + 112);
    v3 = *(v0 + 120);
    v5 = *(v0 + 104);
    *(v0 + 184) = *(*(v0 + 56) + 16);
    *(v0 + 16) = sub_1CFC9C848();
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EE618, &unk_1CFCA4AE0);
    v7 = sub_1CFBA57C0(&qword_1EE04D5C8, &qword_1EC4EE618, &unk_1CFCA4AE0, MEMORY[0x1E695BED8]);
    MEMORY[0x1D38702F0](v6, v7);

    sub_1CFC9DCA8();
    (*(v4 + 8))(v3, v5);
    *(v0 + 192) = sub_1CFC9F958();
    v8 = sub_1CFBA57C0(&qword_1EC4F0128, &qword_1EC4F0120, &qword_1CFCA9490, MEMORY[0x1E695BF38]);
    v9 = swift_task_alloc();
    *(v0 + 200) = v9;
    *v9 = v0;
    v9[1] = sub_1CFC8A8E0;
    v10 = *(v0 + 128);

    return MEMORY[0x1EEE6D8C8](v0 + 24, v10, v8);
  }
}

uint64_t sub_1CFC8A8E0()
{
  v2 = *v1;
  *(*v1 + 208) = v0;

  v3 = *(v2 + 192);
  if (v0)
  {
    if (v3)
    {
      swift_getObjectType();
      v4 = sub_1CFC9F938();
      v6 = v5;
    }

    else
    {
      v4 = 0;
      v6 = 0;
    }

    v7 = sub_1CFC8AEFC;
  }

  else
  {
    if (v3)
    {
      swift_getObjectType();
      v4 = sub_1CFC9F938();
      v6 = v8;
    }

    else
    {
      v4 = 0;
      v6 = 0;
    }

    v7 = sub_1CFC8AA78;
  }

  return MEMORY[0x1EEE6DFA0](v7, v4, v6);
}

uint64_t sub_1CFC8AA78()
{

  v0[27] = v0[3];
  v1 = v0[21];
  v2 = v0[22];

  return MEMORY[0x1EEE6DFA0](sub_1CFC8AAE4, v1, v2);
}

uint64_t sub_1CFC8AAE4()
{
  v35 = v0;
  if (v0[27])
  {

    if ((sub_1CFC9F9B8() & 1) == 0)
    {
      v1 = v0[9];
      v2 = v0[10];
      v3 = v0[8];
      v4 = v0[5];
      v5 = sub_1CFC9C7B8();
      sub_1CFC88758(v4, v5, v3);

      if ((*(v2 + 48))(v3, 1, v1) == 1)
      {
        sub_1CFBC2FB0(v0[8], &qword_1EC4EE368, &unk_1CFCA4040);
        v0[24] = sub_1CFC9F958();
        v6 = sub_1CFBA57C0(&qword_1EC4F0128, &qword_1EC4F0120, &qword_1CFCA9490, MEMORY[0x1E695BF38]);
        v7 = swift_task_alloc();
        v0[25] = v7;
        *v7 = v0;
        v7[1] = sub_1CFC8A8E0;
        v8 = v0[16];

        return MEMORY[0x1EEE6D8C8](v0 + 3, v8, v6);
      }

      (*(v0[10] + 32))(v0[12], v0[8], v0[9]);
      if (qword_1EE050010 != -1)
      {
        swift_once();
      }

      v9 = v0[11];
      v10 = v0[12];
      v11 = v0[9];
      v12 = v0[10];
      v13 = sub_1CFC9D938();
      __swift_project_value_buffer(v13, qword_1EE052308);
      (*(v12 + 16))(v9, v10, v11);
      v14 = sub_1CFC9D918();
      v15 = sub_1CFC9FAF8();
      v16 = os_log_type_enabled(v14, v15);
      v18 = v0[10];
      v17 = v0[11];
      v19 = v0[9];
      if (v16)
      {
        v20 = swift_slowAlloc();
        v33 = swift_slowAlloc();
        v34 = v33;
        *v20 = 136315138;
        v32 = sub_1CFC9C348();
        v22 = v21;
        v23 = *(v18 + 8);
        v23(v17, v19);
        v24 = sub_1CFBB531C(v32, v22, &v34);

        *(v20 + 4) = v24;
        _os_log_impl(&dword_1CFB9F000, v14, v15, "Presenting details for item with id %s", v20, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v33);
        MEMORY[0x1D3873280](v33, -1, -1);
        MEMORY[0x1D3873280](v20, -1, -1);
      }

      else
      {

        v23 = *(v18 + 8);
        v23(v17, v19);
      }

      v25 = v0[12];
      v26 = v0[9];
      sub_1CFC88EA4(v25);
      v23(v25, v26);
    }

    v28 = v0[17];
    v27 = v0[18];
    v29 = v0[16];

    (*(v28 + 8))(v27, v29);
  }

  else
  {
    (*(v0[17] + 8))(v0[18], v0[16]);
  }

  v30 = v0[1];

  return v30();
}

uint64_t sub_1CFC8AEFC()
{
  *(v0 + 32) = *(v0 + 208);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED788, &qword_1CFCA26C0);
  v1 = MEMORY[0x1E69E73E0];
  v2 = swift_dynamicCast();
  v3 = MEMORY[0x1E69E7410];

  return MEMORY[0x1EEE6C240](v2, v1, v3);
}

BOOL sub_1CFC8AF88(uint64_t a1, uint64_t (*a2)(char *))
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EE368, &unk_1CFCA4040);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v30 - v5;
  v7 = sub_1CFC9C448();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v30 - v12;
  v14 = sub_1CFC9C7B8();
  sub_1CFC88758(a2, v14, v6);

  v15 = (*(v8 + 48))(v6, 1, v7);
  v16 = v15;
  if (v15 == 1)
  {
    sub_1CFBC2FB0(v6, &qword_1EC4EE368, &unk_1CFCA4040);
  }

  else
  {
    v33 = v15;
    (*(v8 + 32))(v13, v6, v7);
    if (qword_1EE050010 != -1)
    {
      swift_once();
    }

    v17 = sub_1CFC9D938();
    __swift_project_value_buffer(v17, qword_1EE052308);
    (*(v8 + 16))(v10, v13, v7);
    v18 = sub_1CFC9D918();
    v19 = sub_1CFC9FAF8();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v30 = v20;
      v31 = swift_slowAlloc();
      v34 = v31;
      *v20 = 136315138;
      v21 = sub_1CFC9C348();
      v32 = a1;
      v23 = v22;
      v24 = *(v8 + 8);
      v24(v10, v7);
      v25 = sub_1CFBB531C(v21, v23, &v34);

      v26 = v30;
      *(v30 + 1) = v25;
      v27 = v26;
      _os_log_impl(&dword_1CFB9F000, v18, v19, "Presenting details for item with id %s", v26, 0xCu);
      v28 = v31;
      __swift_destroy_boxed_opaque_existential_1Tm(v31);
      MEMORY[0x1D3873280](v28, -1, -1);
      MEMORY[0x1D3873280](v27, -1, -1);
    }

    else
    {

      v24 = *(v8 + 8);
      v24(v10, v7);
    }

    sub_1CFC88EA4(v13);
    v24(v13, v7);
    v16 = v33;
  }

  return v16 != 1;
}

uint64_t sub_1CFC8B30C(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_1CFC9C008();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  sub_1CFC9F968();
  v2[7] = sub_1CFC9F958();
  v5 = sub_1CFC9F938();
  v2[8] = v5;
  v2[9] = v4;

  return MEMORY[0x1EEE6DFA0](sub_1CFC8B400, v5, v4);
}

uint64_t sub_1CFC8B400()
{
  v23 = v0;
  if (qword_1EE050010 != -1)
  {
    swift_once();
  }

  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[4];
  v4 = v0[2];
  v5 = sub_1CFC9D938();
  __swift_project_value_buffer(v5, qword_1EE052308);
  (*(v2 + 16))(v1, v4, v3);
  v6 = sub_1CFC9D918();
  v7 = sub_1CFC9FAF8();
  v8 = os_log_type_enabled(v6, v7);
  v10 = v0[5];
  v9 = v0[6];
  v11 = v0[4];
  if (v8)
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v22 = v13;
    *v12 = 136315138;
    sub_1CFC8E860(&unk_1EC4EDA68, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
    v14 = sub_1CFCA0288();
    v16 = v15;
    (*(v10 + 8))(v9, v11);
    v17 = sub_1CFBB531C(v14, v16, &v22);

    *(v12 + 4) = v17;
    _os_log_impl(&dword_1CFB9F000, v6, v7, "Attempt to show voicemail details for uuid %s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v13);
    MEMORY[0x1D3873280](v13, -1, -1);
    MEMORY[0x1D3873280](v12, -1, -1);
  }

  else
  {

    (*(v10 + 8))(v9, v11);
  }

  v18 = v0[2];
  v19 = swift_task_alloc();
  v0[10] = v19;
  *(v19 + 16) = v18;
  v20 = swift_task_alloc();
  v0[11] = v20;
  *v20 = v0;
  v20[1] = sub_1CFC8B69C;

  return sub_1CFC8A490(sub_1CFC8DC0C, v19);
}

uint64_t sub_1CFC8B69C()
{
  v1 = *v0;

  v2 = *(v1 + 72);
  v3 = *(v1 + 64);

  return MEMORY[0x1EEE6DFA0](sub_1CFC8B7E0, v3, v2);
}

uint64_t sub_1CFC8B7E0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1CFC8B848(uint64_t a1, uint64_t a2)
{
  v3 = sub_1CFC9C008();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v25 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EE730, &qword_1CFCA51D0);
  v7 = v6 - 8;
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v25 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED570, &unk_1CFCA2470);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v26 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v25 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v25 - v16;
  sub_1CFC9C338();
  (*(v4 + 16))(v14, a2, v3);
  (*(v4 + 56))(v14, 0, 1, v3);
  v18 = *(v7 + 56);
  sub_1CFBA29FC(v17, v9, &qword_1EC4ED570, &unk_1CFCA2470);
  sub_1CFBA29FC(v14, &v9[v18], &qword_1EC4ED570, &unk_1CFCA2470);
  v19 = *(v4 + 48);
  if (v19(v9, 1, v3) != 1)
  {
    sub_1CFBA29FC(v9, v26, &qword_1EC4ED570, &unk_1CFCA2470);
    if (v19(&v9[v18], 1, v3) != 1)
    {
      v21 = v25;
      (*(v4 + 32))(v25, &v9[v18], v3);
      sub_1CFC8E860(&qword_1EC4EE738, MEMORY[0x1E69695A8], MEMORY[0x1E69695C8]);
      v22 = v26;
      v20 = sub_1CFC9F6F8();
      v23 = *(v4 + 8);
      v23(v21, v3);
      sub_1CFBC2FB0(v14, &qword_1EC4ED570, &unk_1CFCA2470);
      sub_1CFBC2FB0(v17, &qword_1EC4ED570, &unk_1CFCA2470);
      v23(v22, v3);
      sub_1CFBC2FB0(v9, &qword_1EC4ED570, &unk_1CFCA2470);
      return v20 & 1;
    }

    sub_1CFBC2FB0(v14, &qword_1EC4ED570, &unk_1CFCA2470);
    sub_1CFBC2FB0(v17, &qword_1EC4ED570, &unk_1CFCA2470);
    (*(v4 + 8))(v26, v3);
    goto LABEL_6;
  }

  sub_1CFBC2FB0(v14, &qword_1EC4ED570, &unk_1CFCA2470);
  sub_1CFBC2FB0(v17, &qword_1EC4ED570, &unk_1CFCA2470);
  if (v19(&v9[v18], 1, v3) != 1)
  {
LABEL_6:
    sub_1CFBC2FB0(v9, &qword_1EC4EE730, &qword_1CFCA51D0);
    v20 = 0;
    return v20 & 1;
  }

  sub_1CFBC2FB0(v9, &qword_1EC4ED570, &unk_1CFCA2470);
  v20 = 1;
  return v20 & 1;
}

uint64_t sub_1CFC8BC88(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  sub_1CFC9F968();
  v3[5] = sub_1CFC9F958();
  v5 = sub_1CFC9F938();
  v3[6] = v5;
  v3[7] = v4;

  return MEMORY[0x1EEE6DFA0](sub_1CFC8BD24, v5, v4);
}

uint64_t sub_1CFC8BD24()
{
  v14 = v0;
  if (qword_1EE050010 != -1)
  {
    swift_once();
  }

  v1 = sub_1CFC9D938();
  __swift_project_value_buffer(v1, qword_1EE052308);

  v2 = sub_1CFC9D918();
  v3 = sub_1CFC9FAF8();

  if (os_log_type_enabled(v2, v3))
  {
    v5 = v0[2];
    v4 = v0[3];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v13 = v7;
    *v6 = 136315138;
    *(v6 + 4) = sub_1CFBB531C(v5, v4, &v13);
    _os_log_impl(&dword_1CFB9F000, v2, v3, "Attempt to show recents details for uniqueID %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v7);
    MEMORY[0x1D3873280](v7, -1, -1);
    MEMORY[0x1D3873280](v6, -1, -1);
  }

  v9 = v0[2];
  v8 = v0[3];
  v10 = swift_task_alloc();
  v0[8] = v10;
  *(v10 + 16) = v9;
  *(v10 + 24) = v8;
  v11 = swift_task_alloc();
  v0[9] = v11;
  *v11 = v0;
  v11[1] = sub_1CFC8BF10;

  return sub_1CFC8A490(sub_1CFC8DC14, v10);
}

uint64_t sub_1CFC8BF10()
{
  v1 = *v0;

  v2 = *(v1 + 56);
  v3 = *(v1 + 48);

  return MEMORY[0x1EEE6DFA0](sub_1CFC67FB0, v3, v2);
}

uint64_t sub_1CFC8C054(__n128 a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_1CFC9C308();
  if (v6)
  {
    v7 = v6;
    v8 = [v6 uniqueId];

    v9 = sub_1CFC9F768();
    v11 = v10;

    if (v9 == a3 && v11 == a4)
    {
      v13 = 1;
    }

    else
    {
      v13 = sub_1CFCA02B8();
    }
  }

  else
  {
    v13 = 0;
  }

  return v13 & 1;
}

void sub_1CFC8C10C(unint64_t a1, uint64_t a2)
{
  v5 = sub_1CFC9CFF8();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 >> 62)
  {
    if (sub_1CFC9FFD8() > 1)
    {
      goto LABEL_3;
    }

    v9 = sub_1CFC9FFD8();
  }

  else
  {
    v9 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v9 > 1)
    {
LABEL_3:
      sub_1CFC9D0C8();
      (*(v6 + 104))(v8, *MEMORY[0x1E6995BE8], v5);
      v23 = sub_1CFC88ABC();
      sub_1CFC8E860(&qword_1EC4F00F8, MEMORY[0x1E6993778], MEMORY[0x1E6993770]);
      v10 = sub_1CFC9D0B8();

      (*(v6 + 8))(v8, v5);

      sub_1CFC9D448();
      if (swift_dynamicCastClass())
      {
        sub_1CFC8E860(&qword_1EC4F0138, type metadata accessor for DetailsPresenter, &protocol conformance descriptor for DetailsPresenter);
        v11 = v10;

        sub_1CFC9D438();
      }

      sub_1CFC8CF7C(v10);

      return;
    }
  }

  if (v9)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v12 = MEMORY[0x1D3872640](0, a1);
    }

    else
    {
      if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        return;
      }

      v12 = *(a1 + 32);
    }

    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  v24[0] = sub_1CFC8C4B4(v13, a2);
  v15 = v14;

  sub_1CFC9D448();
  if (swift_dynamicCastClass())
  {
    v24[4] = sub_1CFC9D428();
    v24[5] = MEMORY[0x1E6995CD0];
    v24[1] = v15;
    v16 = objc_opt_self();
    v17 = v24[0];

    v18 = [v16 tu_contactStore];
    v19 = objc_allocWithZone(sub_1CFC9CFE8());
    v20 = sub_1CFC9CFD8();
    v21 = *(v2 + OBJC_IVAR____TtC10CallsAppUI16DetailsPresenter_contactDetailsCoordinator);
    *(v2 + OBJC_IVAR____TtC10CallsAppUI16DetailsPresenter_contactDetailsCoordinator) = v20;
  }

  sub_1CFC8CF7C(v24[0]);

  v22 = v24[0];
}

uint64_t sub_1CFC8C4B4(void *a1, uint64_t a2)
{
  v3 = sub_1CFC9CFF8();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_allocObject();
  swift_weakInit();
  v13 = a1;
  v12 = MEMORY[0x1E69E7CC0];
  v7 = a1;
  if (a1)
  {
    v8 = v7;
    MEMORY[0x1D3871DC0]();
    if (*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1CFC9F8C8();
    }

    sub_1CFC9F8F8();
  }

  sub_1CFC9D0C8();
  sub_1CFBC2FB0(&v13, &qword_1EC4F00F0, &qword_1CFCA9478);
  (*(v4 + 104))(v6, *MEMORY[0x1E6995BE8], v3);

  v11 = sub_1CFC88ABC();
  sub_1CFC8E860(&qword_1EC4F00F8, MEMORY[0x1E6993778], MEMORY[0x1E6993770]);
  v9 = sub_1CFC9D0B8();

  (*(v4 + 8))(v6, v3);
  return v9;
}

uint64_t sub_1CFC8C72C(void *a1, uint64_t a2)
{
  v3 = sub_1CFC9C448();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EE050010 != -1)
  {
    swift_once();
  }

  v7 = sub_1CFC9D938();
  __swift_project_value_buffer(v7, qword_1EE052308);
  v8 = sub_1CFC9D918();
  v9 = sub_1CFC9FAF8();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_1CFB9F000, v8, v9, "CommunicationDetails: presentVoicemailDetailAction, going to voicemail details page from voicemail tab", v10, 2u);
    MEMORY[0x1D3873280](v10, -1, -1);
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v12 = a1;
    sub_1CFC9C3F8();
    sub_1CFC88EA4(v6);

    return (*(v4 + 8))(v6, v3);
  }

  return result;
}

id sub_1CFC8C8F8(uint64_t a1, char a2)
{
  v3 = v2;
  v6 = type metadata accessor for FavoritesList(0);
  v7 = v6 - 8;
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = (&v33 - v11);
  sub_1CFC9CD28();
  v13 = LOBYTE(v33);
  v14 = swift_allocObject();
  swift_weakInit();
  v15 = swift_allocObject();
  *(v15 + 16) = v13;
  *(v15 + 24) = v14;
  v35 = MEMORY[0x1E69E7CC0];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EE888, &qword_1CFCA5560);
  sub_1CFC9F228();
  v16 = v34;
  v12[5] = v33;
  v12[6] = v16;
  LOBYTE(v35) = 0;
  sub_1CFC9F228();
  v17 = v34;
  *(v12 + 56) = LOBYTE(v33);
  v12[8] = v17;
  v18 = *(v7 + 52);
  *(v12 + v18) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EE890, &qword_1CFCA5598);
  swift_storeEnumTagMultiPayload();
  *v12 = a1;

  *(v12 + 1) = v3;
  *(v12 + 16) = 0;
  *(v12 + 17) = a2;
  *(v12 + 3) = sub_1CFC8E78C;
  *(v12 + 4) = v15;
  sub_1CFC8E798(v12, v9);
  v19 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F00E8, &qword_1CFCA9470));
  v20 = sub_1CFC9E6C8();
  v21 = v20;
  if (v13 == 1)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (!Strong)
    {
LABEL_9:

      return sub_1CFC8E7FC(v12);
    }

    v23 = Strong;
    [Strong showDetailViewController:v21 sender:v3];
LABEL_8:

    v21 = v23;
    goto LABEL_9;
  }

  v23 = v20;
  result = [v23 view];
  if (result)
  {
    v25 = result;
    v26 = objc_opt_self();
    v27 = [v26 clearColor];
    [v25 setBackgroundColor_];

    v28 = [objc_allocWithZone(MEMORY[0x1E69DCCD8]) initWithRootViewController_];
    v21 = v28;
    result = [v21 view];
    if (result)
    {
      v29 = result;
      v30 = [v26 clearColor];
      [v29 setBackgroundColor_];

      type metadata accessor for CGSize(0);
      sub_1CFC9CD28();
      [v21 setPreferredContentSize_];

      swift_beginAccess();
      v31 = swift_unknownObjectWeakLoadStrong();
      if (v31)
      {
        v32 = v31;
        [v31 presentViewController:v21 animated:1 completion:0];

        v23 = v32;
      }

      goto LABEL_8;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_1CFC8CE20(char a1, uint64_t a2)
{
  if (a1)
  {
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      swift_beginAccess();
      Strong = swift_unknownObjectWeakLoadStrong();

      if (Strong)
      {
        v3 = [Strong navigationController];

        if (v3)
        {
          v4 = [v3 popViewControllerAnimated_];

LABEL_9:
        }
      }
    }
  }

  else
  {
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      swift_beginAccess();
      v4 = swift_unknownObjectWeakLoadStrong();

      if (v4)
      {
        [v4 dismissViewControllerAnimated:1 completion:0];
        goto LABEL_9;
      }
    }
  }
}

int64x2_t sub_1CFC8CF54@<Q0>(int64x2_t *a1@<X8>)
{
  result = vdupq_n_s64(0x407F400000000000uLL);
  *a1 = result;
  return result;
}

int64x2_t sub_1CFC8CF68@<Q0>(int64x2_t *a1@<X8>)
{
  result = vdupq_n_s64(0x4079000000000000uLL);
  *a1 = result;
  a1[1].i8[0] = 0;
  return result;
}

void sub_1CFC8CF7C(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    objc_opt_self();
    v5 = swift_dynamicCastObjCClass();
    if (v5)
    {
LABEL_7:
      v9 = v5;
      [v5 pushViewController:a1 animated:1];
      goto LABEL_11;
    }
  }

  v6 = swift_unknownObjectWeakLoadStrong();
  if (v6)
  {
    v7 = v6;
    v8 = [v6 presentedViewController];

    if (v8)
    {
      objc_opt_self();
      v5 = swift_dynamicCastObjCClass();
      if (v5)
      {
        goto LABEL_7;
      }
    }
  }

  v10 = swift_unknownObjectWeakLoadStrong();
  if (!v10)
  {
    return;
  }

  v9 = v10;
  [v10 showDetailViewController:a1 sender:v1];
LABEL_11:
}

uint64_t DetailsPresenter.deinit()
{
  MEMORY[0x1D3873340](v0 + 24);
  sub_1CFBC2FB0(v0 + 32, &unk_1EC4EF810, &qword_1CFCA7900);

  sub_1CFBC2FB0(v0 + OBJC_IVAR____TtC10CallsAppUI16DetailsPresenter_recentGroupCallItemInDetailsView, &qword_1EC4EE368, &unk_1CFCA4040);
  return v0;
}

uint64_t DetailsPresenter.__deallocating_deinit()
{
  MEMORY[0x1D3873340](v0 + 24);
  sub_1CFBC2FB0(v0 + 32, &unk_1EC4EF810, &qword_1CFCA7900);

  sub_1CFBC2FB0(v0 + OBJC_IVAR____TtC10CallsAppUI16DetailsPresenter_recentGroupCallItemInDetailsView, &qword_1EC4EE368, &unk_1CFCA4040);

  return swift_deallocClassInstance();
}

uint64_t DetailsPresenter.detailsViewController(_:shouldEnableCustomQuickAction:)()
{
  sub_1CFC9F968();
  *(v0 + 16) = sub_1CFC9F958();
  v2 = sub_1CFC9F938();

  return MEMORY[0x1EEE6DFA0](sub_1CFC8EC6C, v2, v1);
}

uint64_t sub_1CFC8D268()
{
  sub_1CFC9F968();
  *(v0 + 16) = sub_1CFC9F958();
  v2 = sub_1CFC9F938();

  return MEMORY[0x1EEE6DFA0](sub_1CFC8D2FC, v2, v1);
}

uint64_t sub_1CFC8D2FC()
{

  v1 = *(v0 + 8);

  return v1(0);
}

void sub_1CFC8D388(unint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(unint64_t **, uint64_t))
{
  v6 = a4(a1, a2);
  v8 = sub_1CFBB531C(v6, v7, a3);

  v9 = *a1;
  *v9 = v8;
  *a1 = v9 + 1;
}

void *sub_1CFC8D3E4(uint64_t a1, unint64_t a2)
{
  v3 = sub_1CFC8D430(a1, a2);
  sub_1CFC8D560(&unk_1F4C6AB98);
  return v3;
}

void *sub_1CFC8D430(uint64_t a1, unint64_t a2)
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
    return MEMORY[0x1E69E7CC0];
  }

  v6 = sub_1CFC8D64C(v5, 0);
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

  result = sub_1CFCA0128();
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
        v10 = sub_1CFC9F808();
        if (!v10)
        {
          return MEMORY[0x1E69E7CC0];
        }

        v11 = v10;
        v7 = sub_1CFC8D64C(v10, 0);
        result = sub_1CFCA00C8();
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

void sub_1CFC8D560(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *v1;
  v4 = *(*v1 + 2);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= *(v3 + 3) >> 1)
  {
    if (*(a1 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  v3 = sub_1CFC8D6C0(isUniquelyReferenced_nonNull_native, v12, 1, v3);
  if (!*(a1 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = *(v3 + 2);
  if ((*(v3 + 3) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy(&v3[v8 + 32], (a1 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return;
  }

  v9 = *(v3 + 2);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 2) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
}

void *sub_1CFC8D64C(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F0110, &qword_1CFCA9480);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_1CFC8D6C0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F0110, &qword_1CFCA9480);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
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

_BYTE **sub_1CFC8D7B4(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

uint64_t sub_1CFC8D7C4()
{
  v0 = sub_1CFC9C318();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = (&v17 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F0130, &qword_1CFCA94D8);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v17 - v5;
  sub_1CFC9C3B8();
  v7 = (*(v1 + 88))(v3, v0);
  if (v7 == *MEMORY[0x1E6993648])
  {
    goto LABEL_2;
  }

  if (v7 == *MEMORY[0x1E6993650])
  {
    (*(v1 + 96))(v3, v0);

    v8 = &unk_1EC4EF488;
    v9 = &unk_1CFCA6F70;
LABEL_5:
    v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(v8, v9) + 48);
    v11 = sub_1CFC9C688();
    (*(*(v11 - 8) + 8))(v3 + v10, v11);
    goto LABEL_6;
  }

  if (v7 == *MEMORY[0x1E6993678] || v7 == *MEMORY[0x1E6993660] || v7 == *MEMORY[0x1E6993670])
  {
    goto LABEL_2;
  }

  if (v7 == *MEMORY[0x1E6993680])
  {
    (*(v1 + 96))(v3, v0);

    v8 = &unk_1EC4EF490;
    v9 = &unk_1CFCA6F78;
    goto LABEL_5;
  }

  if (v7 == *MEMORY[0x1E6993658])
  {
LABEL_2:
    (*(v1 + 8))(v3, v0);
    goto LABEL_6;
  }

  if (v7 == *MEMORY[0x1E6993668])
  {
    (*(v1 + 96))(v3, v0);
    v14 = sub_1CFC9C688();
    v15 = *(v14 - 8);
    (*(v15 + 32))(v6, v3, v14);
    (*(v15 + 56))(v6, 0, 1, v14);
    goto LABEL_7;
  }

  if (v7 != *MEMORY[0x1E6993640])
  {
    v16 = sub_1CFC9C688();
    (*(*(v16 - 8) + 56))(v6, 1, 1, v16);
    (*(v1 + 8))(v3, v0);
    goto LABEL_7;
  }

LABEL_6:
  v12 = sub_1CFC9C688();
  (*(*(v12 - 8) + 56))(v6, 1, 1, v12);
LABEL_7:
  sub_1CFBC2FB0(v6, &qword_1EC4F0130, &qword_1CFCA94D8);
  return 0;
}

uint64_t sub_1CFC8DB9C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EE368, &unk_1CFCA4040);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_1CFC8DC1C(uint64_t a1)
{
  v2 = v1;
  v44 = a1;
  v3 = sub_1CFC9D468();
  v45 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v43 = &v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v42 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EE368, &unk_1CFCA4040);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v42 - v9;
  v11 = sub_1CFC9C448();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = OBJC_IVAR____TtC10CallsAppUI16DetailsPresenter_recentGroupCallItemInDetailsView;
  swift_beginAccess();
  sub_1CFBA29FC(v2 + v15, v10, &qword_1EC4EE368, &unk_1CFCA4040);
  if ((*(v12 + 48))(v10, 1, v11) != 1)
  {
    (*(v12 + 32))(v14, v10, v11);
    v16 = sub_1CFC9C428();
    v17 = v14;
    if (v16 >> 62)
    {
      v18 = sub_1CFC9FFD8();
    }

    else
    {
      v18 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v18 < 1)
    {
      (*(v12 + 8))(v17, v11);
      goto LABEL_10;
    }

    v19 = v45;
    (*(v45 + 16))(v7, v44, v3);
    v20 = (*(v19 + 88))(v7, v3);
    if (v20 != *MEMORY[0x1E6995840] && v20 != *MEMORY[0x1E6995848])
    {
      (*(v12 + 8))(v17, v11);
      (*(v19 + 8))(v7, v3);
      return;
    }

    v25 = v43;
    (*(v19 + 104))(v43);
    LODWORD(v44) = sub_1CFC9D458();
    (*(v19 + 8))(v25, v3);
    v26 = sub_1CFC9C428();
    v27 = v26;
    if (v26 >> 62)
    {
      v28 = sub_1CFC9FFD8();
      v42 = v17;
      if (v28)
      {
        goto LABEL_17;
      }
    }

    else
    {
      v28 = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v42 = v17;
      if (v28)
      {
LABEL_17:
        v45 = v12;
        v46 = MEMORY[0x1E69E7CC0];
        sub_1CFCA0168();
        if (v28 < 0)
        {
          __break(1u);
          return;
        }

        v29 = 0;
        do
        {
          if ((v27 & 0xC000000000000001) != 0)
          {
            v30 = MEMORY[0x1D3872640](v29, v27);
          }

          else
          {
            v30 = *(v27 + 8 * v29 + 32);
          }

          v31 = v30;
          ++v29;
          [objc_allocWithZone(MEMORY[0x1E69D8B80]) initWithContact_];

          sub_1CFCA0138();
          sub_1CFCA0178();
          sub_1CFCA0188();
          sub_1CFCA0148();
        }

        while (v28 != v29);

        v12 = v45;
        v32 = v46;
        goto LABEL_27;
      }
    }

    v32 = MEMORY[0x1E69E7CC0];
LABEL_27:
    sub_1CFC34EBC(v32);

    v33 = objc_allocWithZone(MEMORY[0x1E69D8C10]);
    sub_1CFBA2D80(0, &qword_1EC4ED538, 0x1E69D8B80);
    v34 = MEMORY[0x1E69E81B8];
    sub_1CFC72300(&qword_1EC4EEAC8, &qword_1EC4ED538, 0x1E69D8B80, MEMORY[0x1E69E81B8]);
    v35 = sub_1CFC9F9C8();

    v36 = [v33 initWithRemoteMembers_];

    v37 = v44;
    if (v44)
    {
      v38 = 1;
    }

    else
    {
      v38 = 2;
    }

    [v36 setAvMode_];
    [v36 setVideoEnabled_];
    [v36 setOriginatingUIType_];
    v39 = [objc_opt_self() invitationPreferencesForRecentCall];
    sub_1CFBA2D80(0, &qword_1EC4F0100, 0x1E69D8B68);
    sub_1CFC72300(&qword_1EC4F0108, &qword_1EC4F0100, 0x1E69D8B68, v34);
    sub_1CFC9F9D8();

    v40 = sub_1CFC9F9C8();

    [v36 setInvitationPreferences_];

    v41 = [objc_opt_self() sharedInstance];
    [v41 launchAppForJoinRequest_];

    (*(v12 + 8))(v42, v11);
    return;
  }

  sub_1CFBC2FB0(v10, &qword_1EC4EE368, &unk_1CFCA4040);
LABEL_10:
  if (qword_1EE050010 != -1)
  {
    swift_once();
  }

  v21 = sub_1CFC9D938();
  __swift_project_value_buffer(v21, qword_1EE052308);
  v22 = sub_1CFC9D918();
  v23 = sub_1CFC9FAF8();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    *v24 = 0;
    _os_log_impl(&dword_1CFB9F000, v22, v23, "Current group callItem doesn't exist, can't execute group action", v24, 2u);
    MEMORY[0x1D3873280](v24, -1, -1);
  }
}

void sub_1CFC8E374(uint64_t a1)
{
  sub_1CFC17EA4(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t dispatch thunk of DetailsPresenter.presentVoicemailDetails(uuid:)(uint64_t a1)
{
  v6 = (*(*v1 + 272) + **(*v1 + 272));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1CFBD431C;

  return v6(a1);
}

uint64_t dispatch thunk of DetailsPresenter.presentCallHistoryDetails(uniqueID:)(uint64_t a1, uint64_t a2)
{
  v8 = (*(*v2 + 280) + **(*v2 + 280));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_1CFBD4A14;

  return v8(a1, a2);
}

uint64_t sub_1CFC8E798(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FavoritesList(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1CFC8E7FC(uint64_t a1)
{
  v2 = type metadata accessor for FavoritesList(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1CFC8E860(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1CFC8E8A8()
{
  v2 = *(sub_1CFC9C448() - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1CFBD4A14;

  return sub_1CFC898F4(v4, v0 + v3);
}

uint64_t sub_1CFC8E980()
{
  v1 = *(sub_1CFC9C448() - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  return sub_1CFC89F00(v2, v3);
}

unint64_t sub_1CFC8E9E4(uint64_t a1)
{
  sub_1CFC9C448();
  v3 = *(v1 + 16);

  return sub_1CFC8A360(a1, v3);
}

uint64_t sub_1CFC8EA58(uint64_t a1)
{
  v4 = *(sub_1CFC9C448() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1CFBD4A14;

  return sub_1CFC8A128(a1, v6, v7, v1 + v5);
}

uint64_t sub_1CFC8EB48(uint64_t a1)
{
  v4 = *(sub_1CFC9C448() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1CFBD4A14;

  return sub_1CFC89BFC(a1, v6, v7, v1 + v5, v8);
}

uint64_t sub_1CFC8EC9C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED950, &qword_1CFCA2710);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v10 - v3;
  v5 = sub_1CFC9F998();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  sub_1CFC9F968();

  v6 = sub_1CFC9F958();
  v7 = swift_allocObject();
  v8 = MEMORY[0x1E69E85E0];
  v7[2] = v6;
  v7[3] = v8;
  v7[4] = a1;
  sub_1CFBDC030(0, 0, v4, &unk_1CFCA9688, v7);
}

uint64_t sub_1CFC8EDC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a4;
  sub_1CFC9F968();
  v4[6] = sub_1CFC9F958();
  v6 = sub_1CFC9F938();
  v4[7] = v6;
  v4[8] = v5;

  return MEMORY[0x1EEE6DFA0](sub_1CFC8EE58, v6, v5);
}

uint64_t sub_1CFC8EE58()
{
  v3 = (*(*(v0 + 40) + OBJC_IVAR____TtC10CallsAppUI33VoicemailDetailContainerViewModel_deleteAction) + **(*(v0 + 40) + OBJC_IVAR____TtC10CallsAppUI33VoicemailDetailContainerViewModel_deleteAction));
  v1 = swift_task_alloc();
  *(v0 + 72) = v1;
  *v1 = v0;
  v1[1] = sub_1CFC8EF54;

  return v3();
}

uint64_t sub_1CFC8EF54()
{
  v1 = *v0;

  v2 = *(v1 + 64);
  v3 = *(v1 + 56);

  return MEMORY[0x1EEE6DFA0](sub_1CFC8F074, v3, v2);
}

uint64_t sub_1CFC8F074()
{
  v1 = v0[5];

  swift_getKeyPath();
  v0[2] = v1;
  sub_1CFC90228(&qword_1EE04DF70, type metadata accessor for VoicemailDetailContainerViewModel, &protocol conformance descriptor for VoicemailDetailContainerViewModel);
  sub_1CFC9C158();

  v0[3] = v1;
  swift_getKeyPath();
  sub_1CFC9C178();

  *(v1 + OBJC_IVAR____TtC10CallsAppUI33VoicemailDetailContainerViewModel__isDeletedMessage) = (*(v1 + OBJC_IVAR____TtC10CallsAppUI33VoicemailDetailContainerViewModel__isDeletedMessage) & 1) == 0;
  v0[4] = v1;
  swift_getKeyPath();
  sub_1CFC9C168();

  v2 = v0[1];

  return v2();
}

uint64_t sub_1CFC8F1DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v55 = a2;
  v3 = sub_1CFC9F628();
  v50 = *(v3 - 8);
  v51 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v49 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1CFC9F5F8();
  v47 = *(v5 - 8);
  v48 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = sub_1CFC9E0E8();
  v8 = *(v40 - 8);
  MEMORY[0x1EEE9AC00](v40);
  v10 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F0170, &qword_1CFCA95B8);
  v42 = *(v43 - 8);
  MEMORY[0x1EEE9AC00](v43);
  v41 = &v37 - v11;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F0168, &unk_1CFCA95A8);
  MEMORY[0x1EEE9AC00](v38);
  v13 = &v37 - v12;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F0160, &qword_1CFCA95A0);
  MEMORY[0x1EEE9AC00](v39);
  v15 = &v37 - v14;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F0158, &qword_1CFCA9598);
  MEMORY[0x1EEE9AC00](v46);
  v17 = &v37 - v16;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F0150, &qword_1CFCA9590);
  MEMORY[0x1EEE9AC00](v53);
  v52 = &v37 - v18;
  *&v58 = sub_1CFC9F1A8();
  swift_getKeyPath();
  v19 = a1 + OBJC_IVAR____TtC10CallsAppUI33VoicemailDetailContainerViewModel___observationRegistrar;
  v56 = a1;
  v44 = sub_1CFC90228(&qword_1EE04DF70, type metadata accessor for VoicemailDetailContainerViewModel, &protocol conformance descriptor for VoicemailDetailContainerViewModel);
  v45 = v19;
  sub_1CFC9C158();

  v54 = a1;
  if (*(a1 + OBJC_IVAR____TtC10CallsAppUI33VoicemailDetailContainerViewModel__isDeletedMessage) == 1)
  {
    sub_1CFC9E0D8();
  }

  else
  {
    sub_1CFC9E0C8();
  }

  v20 = v41;
  sub_1CFC9EF18();
  (*(v8 + 8))(v10, v40);

  sub_1CFC9F5E8();
  v21 = v49;
  sub_1CFC9F618();
  v22 = &v13[*(v38 + 36)];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EF190, &unk_1CFCA6440);
  sub_1CFC90228(&unk_1EE04D138, MEMORY[0x1E6982178], MEMORY[0x1E6982170]);
  v23 = v48;
  sub_1CFC9E298();
  (*(v50 + 8))(v21, v51);
  (*(v47 + 8))(v7, v23);
  *v22 = swift_getKeyPath();
  (*(v42 + 32))(v13, v20, v43);
  v24 = &v15[*(v39 + 36)];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EF138, &qword_1CFCA63B0);
  sub_1CFC9F1D8();
  sub_1CFC9CD28();
  *v24 = swift_getKeyPath();
  sub_1CFBCCE88(v13, v15, &qword_1EC4F0168, &unk_1CFCA95A8);
  v25 = sub_1CFC9F178();
  KeyPath = swift_getKeyPath();
  sub_1CFBCCE88(v15, v17, &qword_1EC4F0160, &qword_1CFCA95A0);
  v27 = &v17[*(v46 + 36)];
  *v27 = KeyPath;
  v27[1] = v25;
  sub_1CFC9F538();
  sub_1CFC9DF68();
  v28 = v52;
  sub_1CFBCCE88(v17, v52, &qword_1EC4F0158, &qword_1CFCA9598);
  v29 = (v28 + *(v53 + 36));
  v30 = v59;
  *v29 = v58;
  v29[1] = v30;
  v29[2] = v60;
  swift_getKeyPath();
  v56 = v54;
  sub_1CFC9C158();

  type metadata accessor for BundleClass();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v32 = [objc_opt_self() bundleForClass_];
  v33 = sub_1CFC9BE28();
  v35 = v34;

  v56 = v33;
  v57 = v35;
  sub_1CFC8FF44();
  sub_1CFBB4460();
  sub_1CFC9EF68();

  return sub_1CFBC1348(v28);
}

uint64_t sub_1CFC8FA58@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x1E69816C0];
  v3 = sub_1CFC9F1D8();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_1CFC8FACC@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x1E69816E0];
  v3 = sub_1CFC9F1D8();
  v6 = *(v3 - 8);
  (*(v6 + 104))(a1, v2, v3);
  v4 = *(v6 + 56);

  return v4(a1, 0, 1, v3);
}

uint64_t sub_1CFC8FBA4@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1CFC9F1D8();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t sub_1CFC8FC10@<X0>(uint64_t a1@<X8>)
{
  v10[1] = a1;
  v1 = sub_1CFC9E858();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F0140, &qword_1CFCA9580);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v10 - v7;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F0148, &qword_1CFCA9588);
  sub_1CFC8FE88();
  sub_1CFC9F298();
  sub_1CFC9E848();
  sub_1CFBA57C0(&qword_1EE04D1C8, &qword_1EC4F0140, &qword_1CFCA9580, MEMORY[0x1E697D680]);
  sub_1CFC90228(&qword_1EE04FFF0, MEMORY[0x1E697C720], MEMORY[0x1E697C718]);
  sub_1CFC9EEC8();
  (*(v2 + 8))(v4, v1);
  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_1CFC8FE88()
{
  result = qword_1EE04D3A0;
  if (!qword_1EE04D3A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4F0148, &qword_1CFCA9588);
    sub_1CFC8FF44();
    sub_1CFC90228(&qword_1EE04FFC8, MEMORY[0x1E697CBE8], MEMORY[0x1E697CBD8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE04D3A0);
  }

  return result;
}

unint64_t sub_1CFC8FF44()
{
  result = qword_1EE04D3C0;
  if (!qword_1EE04D3C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4F0150, &qword_1CFCA9590);
    sub_1CFC8FFD0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE04D3C0);
  }

  return result;
}

unint64_t sub_1CFC8FFD0()
{
  result = qword_1EE04D3F0;
  if (!qword_1EE04D3F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4F0158, &qword_1CFCA9598);
    sub_1CFC90088();
    sub_1CFBA57C0(&qword_1EE04FFD0, &qword_1EC4EE3D0, &unk_1CFCA5DD0, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE04D3F0);
  }

  return result;
}

unint64_t sub_1CFC90088()
{
  result = qword_1EE04D438;
  if (!qword_1EE04D438)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4F0160, &qword_1CFCA95A0);
    sub_1CFC90140();
    sub_1CFBA57C0(&qword_1EE04D220, &qword_1EC4EF138, &qword_1CFCA63B0, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE04D438);
  }

  return result;
}

unint64_t sub_1CFC90140()
{
  result = qword_1EE04D4C8;
  if (!qword_1EE04D4C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4F0168, &unk_1CFCA95A8);
    swift_getOpaqueTypeConformance2();
    sub_1CFBA57C0(&unk_1EE04D228, &qword_1EC4EF190, &unk_1CFCA6440, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE04D4C8);
  }

  return result;
}

uint64_t sub_1CFC90228(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1CFC90270(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1CFBD431C;

  return sub_1CFC8EDC0(a1, v4, v5, v6);
}

void sub_1CFC90328()
{
  v1 = OBJC_IVAR____TtC10CallsAppUI34SectionnedCollectionViewController_editButtonItems;
  swift_beginAccess();
  *(v0 + v1) = MEMORY[0x1E69E7CC0];

  v2 = OBJC_IVAR____TtC10CallsAppUI34SectionnedCollectionViewController_sections;
  swift_beginAccess();
  v3 = *(v0 + v2);
  v33 = *(v3 + 16);
  if (v33)
  {
    v32 = v3 + 32;

    v4 = 0;
    v31 = v3;
    while (v4 < *(v3 + 16))
    {
      v36 = *(v32 + 16 * v4);
      ObjectType = swift_getObjectType();
      swift_unknownObjectRetain();
      v6 = sub_1CFBA392C(ObjectType, *(&v36 + 1));
      v7 = *(v6 + 16);
      if (v7)
      {
        v34 = v4;
        v44 = MEMORY[0x1E69E7CC0];
        sub_1CFBA4538(0, v7, 0);
        sub_1CFBA2D80(0, &unk_1EE04D0D0, 0x1E69DC708);
        sub_1CFBA2D80(0, &qword_1EE04CEF8, 0x1E69DC628);
        v8 = v44;
        v9 = v7 - 1;
        v10 = 32;
        for (i = v6; ; v6 = i)
        {
          v11 = *(v6 + v10 + 64);
          v12 = *(v6 + v10 + 80);
          v13 = *(v6 + v10 + 48);
          v47 = *(v6 + v10 + 32);
          v14 = *(v6 + v10 + 16);
          v45 = *(v6 + v10);
          v46 = v14;
          v49 = v11;
          v50 = v12;
          v48 = v13;
          v15 = *(&v47 + 1);
          v16 = swift_allocObject();
          swift_unknownObjectWeakInit();
          v17 = swift_allocObject();
          v18 = v48;
          *(v17 + 72) = v47;
          *(v17 + 88) = v18;
          v19 = v50;
          *(v17 + 104) = v49;
          *(v17 + 120) = v19;
          v20 = v46;
          *(v17 + 40) = v45;
          *(v17 + 16) = v16;
          *(v17 + 24) = v36;
          *(v17 + 56) = v20;
          sub_1CFBA29FC(&v45, v37, &qword_1EC4EF7B8, &qword_1CFCA78C8);
          swift_unknownObjectRetain();
          sub_1CFBA29FC(&v45, v37, &qword_1EC4EF7B8, &qword_1CFCA78C8);

          sub_1CFC9FDF8();
          v21 = sub_1CFC9FB58();
          [v21 setTintColor_];
          v22 = v21;
          v23 = sub_1CFC9F728();
          [v22 setAccessibilityIdentifier_];

          v40 = v47;
          v41 = v48;
          v42 = v49;
          v43 = v50;
          v38 = v45;
          v39 = v46;
          v44 = v8;
          v25 = v8[2];
          v24 = v8[3];
          swift_unknownObjectRetain();
          if (v25 >= v24 >> 1)
          {
            sub_1CFBA4538((v24 > 1), v25 + 1, 1);
            v8 = v44;
          }

          v8[2] = v25 + 1;
          v26 = &v8[15 * v25];
          *(v26 + 2) = v36;
          v27 = v39;
          *(v26 + 3) = v38;
          *(v26 + 4) = v27;
          v28 = v40;
          v29 = v41;
          v30 = v43;
          *(v26 + 7) = v42;
          *(v26 + 8) = v30;
          *(v26 + 5) = v28;
          *(v26 + 6) = v29;
          v26[18] = v22;
          if (!v9)
          {
            break;
          }

          --v9;
          v10 += 96;
        }

        v3 = v31;
        v4 = v34;
      }

      else
      {

        v8 = MEMORY[0x1E69E7CC0];
      }

      ++v4;
      swift_beginAccess();
      sub_1CFBA46A8(v8);
      swift_endAccess();
      swift_unknownObjectRelease();
      if (v4 == v33)
      {

        return;
      }
    }

    __break(1u);
  }
}

void sub_1CFC90748()
{
  v1 = v0;
  v70 = sub_1CFC9C088();
  v2 = *(v70 - 8);
  MEMORY[0x1EEE9AC00](v70);
  v4 = &v51 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4ED528, &qword_1CFCA2440);
  MEMORY[0x1EEE9AC00](v54);
  v6 = &v51 - v5;
  v7 = sub_1CFC9C0A8();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v53 = &v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v58 = &v51 - v11;
  v12 = OBJC_IVAR____TtC10CallsAppUI34SectionnedCollectionViewController_editButtonItems;
  swift_beginAccess();
  v13 = *(v1 + v12);
  v57 = *(v13 + 16);
  if (v57)
  {
    v56 = v13 + 32;
    v69 = OBJC_IVAR____TtC10CallsAppUI34SectionnedCollectionViewController_items;

    v15 = 0;
    v68 = (v2 + 8);
    v51 = (v8 + 8);
    v52 = (v8 + 16);
    v71 = v1;
    v55 = v14;
    while (1)
    {
      v16 = (v56 + 120 * v15);
      v17 = v16[3];
      v18 = *v16;
      v19 = v16[1];
      v75[2] = v16[2];
      v76 = v17;
      v75[0] = v18;
      v75[1] = v19;
      v20 = v16[4];
      v21 = v16[5];
      v22 = v16[6];
      v64 = *(v16 + 14);
      v65 = v15;
      v80 = v64;
      v78 = v21;
      v79 = v22;
      v77 = v20;
      v60 = v76;
      v61 = *(&v19 + 1);
      v67 = v20;
      v59 = *(&v21 + 1);
      v62 = *(&v22 + 1);
      v63 = *(&v76 + 1);
      v23 = v75[0];
      sub_1CFBA29FC(v75, v74, &qword_1EC4ED5C8, &qword_1CFCA24B0);
      v66 = v23;
      v24 = sub_1CFBA48FC(v23, *(&v23 + 1));
      v25 = MEMORY[0x1E69E7CC0];
      if ((v26 & 1) == 0)
      {
        break;
      }

LABEL_16:
      sub_1CFC92278();
      v43 = *(v25 + 2);
      if (v43)
      {
        v44 = (v25 + 32);
        v45 = -v43;
        v46 = -1;
        do
        {
          v47 = v45 + v46 != -1;
          if (v45 + v46 == -1)
          {
            break;
          }

          if (++v46 >= *(v25 + 2))
          {
            goto LABEL_30;
          }

          v48 = v44 + 32;
          sub_1CFBB4598(v44, v74);
          v49 = (v67)(v74);
          __swift_destroy_boxed_opaque_existential_1Tm(v74);
          v44 = v48;
        }

        while ((v49 & 1) == 0);
      }

      else
      {

        v47 = 0;
      }

      v50 = v64;
      v15 = v65 + 1;
      [v64 setEnabled_];
      swift_unknownObjectRelease();

      if (v15 == v57)
      {
        goto LABEL_26;
      }

      if (v15 >= *(v55 + 16))
      {
        __break(1u);
LABEL_26:

        return;
      }
    }

    v27 = v24;
    v28 = v58;
    SectionnedCollectionViewController.selectedRows(in:)(v66, *(&v23 + 1), v58);
    (*v52)(v53, v28, v7);
    v29 = MEMORY[0x1E6969B50];
    sub_1CFC92B70(&unk_1EE04D6E0, MEMORY[0x1E6969B50], MEMORY[0x1E6969B78]);
    sub_1CFC9F858();
    swift_beginAccess();
    sub_1CFC92B70(&qword_1EE04D6D8, v29, MEMORY[0x1E6969B88]);
    v25 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      sub_1CFC9FA48();
      sub_1CFC92B70(&qword_1EE04D6F0, MEMORY[0x1E6969B18], MEMORY[0x1E6969B28]);
      v30 = v70;
      v31 = sub_1CFC9F6F8();
      (*v68)(v4, v30);
      if (v31)
      {
        sub_1CFBC2FB0(v6, &unk_1EC4ED528, &qword_1CFCA2440);
        (*v51)(v58, v7);
        goto LABEL_16;
      }

      v32 = sub_1CFC9FA88();
      v34 = *v33;
      v32(v74, 0);
      sub_1CFC9FA58();
      if ((v27 & 0x8000000000000000) != 0)
      {
        break;
      }

      v35 = *(v71 + v69);
      if (v27 >= *(v35 + 16))
      {
        goto LABEL_29;
      }

      if ((v34 & 0x8000000000000000) == 0)
      {
        v36 = *(v35 + 8 * v27 + 32);
        if (v34 < *(v36 + 16))
        {
          v37 = v36 + 40 * v34;
          v38 = *(v37 + 56);
          v39 = __swift_project_boxed_opaque_existential_1((v37 + 32), v38);
          v73 = v38;
          boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(&v72);
          (*(*(v38 - 8) + 16))(boxed_opaque_existential_0Tm, v39, v38);
          sub_1CFBCC9AC(&v72, v74);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v25 = sub_1CFC7B110(0, *(v25 + 2) + 1, 1, v25);
          }

          v42 = *(v25 + 2);
          v41 = *(v25 + 3);
          if (v42 >= v41 >> 1)
          {
            v25 = sub_1CFC7B110((v41 > 1), v42 + 1, 1, v25);
          }

          *(v25 + 2) = v42 + 1;
          sub_1CFBCC9AC(v74, &v25[32 * v42 + 32]);
        }
      }
    }

    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
  }
}

uint64_t sub_1CFC90E04(uint64_t a1)
{
  v3 = sub_1CFC9C138();
  MEMORY[0x1EEE9AC00](v3);
  MEMORY[0x1EEE9AC00](v4);
  v6 = v78 - v5;
  MEMORY[0x1EEE9AC00](v7);
  v13 = MEMORY[0x1EEE9AC00](v78 - v8);
  v79 = v78 - v14;
  v15 = *(a1 + 16);
  if (!v15)
  {
    return 0;
  }

  v78[0] = v11;
  v84 = v9;
  v85 = v1;
  v81 = v12;
  v17 = *(v12 + 16);
  v16 = v12 + 16;
  v18 = (*(v16 + 64) + 32) & ~*(v16 + 64);
  v19 = a1 + v18;
  v87 = v16;
  v88 = v10;
  v86 = v17;
  v17(v13);
  if (v15 != 1)
  {
    v68 = *(v81 + 72);
    v69 = (v81 + 8);
    v82 = (v81 + 32);
    v83 = v68;
    v70 = v68 + a1 + v18;
    v71 = 1;
    while (1)
    {
      (v86)(v6, v70, v88);
      v72 = v71 + 1;
      if (__OFADD__(v71, 1))
      {
        break;
      }

      v73 = sub_1CFC9C118();
      v74 = v84;
      v75 = sub_1CFC9C118();
      v76 = *v69;
      if (v73 >= v75)
      {
        v76(v6, v88);
      }

      else
      {
        v77 = v88;
        v76(v74, v88);
        (*v82)(v74, v6, v77);
      }

      ++v71;
      v70 += v83;
      if (v72 == v15)
      {
        goto LABEL_3;
      }
    }

LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

LABEL_3:
  v20 = v81;
  (*(v81 + 32))(v79, v84, v88);
  v21 = sub_1CFC9C128();
  v22 = OBJC_IVAR____TtC10CallsAppUI34SectionnedCollectionViewController_sections;
  v23 = v85;
  swift_beginAccess();
  if ((v21 & 0x8000000000000000) != 0)
  {
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  v24 = *(v23 + v22);
  if (v21 < *(v24 + 16))
  {
    v25 = v24 + 16 * v21;
    v26 = *(v25 + 32);
    v82 = *(v25 + 40);
    v27 = OBJC_IVAR____TtC10CallsAppUI34SectionnedCollectionViewController_items;
    v78[1] = v26;
    swift_unknownObjectRetain();
    swift_beginAccess();
    v28 = *(v20 + 72);
    v84 = (v20 + 8);
    v29 = MEMORY[0x1E69E7CC0];
    v80 = MEMORY[0x1E69E7CC0];
    v30 = v88;
    v31 = v78[0];
    do
    {
      (v86)(v31, v19, v30);
      v32 = *(v85 + v27);

      v33 = sub_1CFC9C128();
      if ((v33 & 0x8000000000000000) != 0)
      {
LABEL_40:
        __break(1u);
LABEL_41:
        __break(1u);
        goto LABEL_42;
      }

      if (v33 >= *(v32 + 16))
      {
        goto LABEL_41;
      }

      v34 = *(v32 + 8 * v33 + 32);

      v35 = sub_1CFC9C118();
      if ((v35 & 0x8000000000000000) != 0 || v35 >= *(v34 + 16))
      {
        v30 = v88;
        v83 = *v84;
        v83(v31, v88);
      }

      else
      {
        sub_1CFBB94B0(v34 + 40 * v35 + 32, &v89);

        v36 = *v84;
        (*v84)(v31, v88);
        sub_1CFBAD070(&v89, &v94);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v83 = v36;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v29 = sub_1CFC7AFC8(0, v29[2] + 1, 1, v29);
        }

        v39 = v29[2];
        v38 = v29[3];
        if (v39 >= v38 >> 1)
        {
          v29 = sub_1CFC7AFC8((v38 > 1), v39 + 1, 1, v29);
        }

        v29[2] = v39 + 1;
        sub_1CFBAD070(&v94, &v29[5 * v39 + 4]);
        v30 = v88;
      }

      v19 += v28;
      --v15;
    }

    while (v15);
    ObjectType = swift_getObjectType();
    v41 = sub_1CFBA392C(ObjectType, v82);
    v42 = v41;
    v93 = MEMORY[0x1E69E7CC0];
    v87 = *(v41 + 16);
    if (!v87)
    {
LABEL_29:

      if (v80 >> 62)
      {
        goto LABEL_46;
      }

      if (*((v80 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {

        sub_1CFCA02C8();
        sub_1CFBA2D80(0, &qword_1EE04D0E0, 0x1E69DCC78);
        goto LABEL_32;
      }

      goto LABEL_48;
    }

    v43 = 0;
    v86 = (v41 + 32);
    v82 = (v29 + 4);
    v80 = MEMORY[0x1E69E7CC0];
    v81 = v41;
    while (v43 < *(v42 + 16))
    {
      v44 = (v86 + 96 * v43);
      v45 = v44[1];
      v94 = *v44;
      v95 = v45;
      v46 = v44[2];
      v47 = v44[3];
      v48 = v44[5];
      v98 = v44[4];
      v99 = v48;
      v96 = v46;
      v97 = v47;
      ++v43;
      v49 = v29[2];
      sub_1CFBA29FC(&v94, &v89, &qword_1EC4EF7B8, &qword_1CFCA78C8);
      v50 = -v49;
      v51 = -1;
      v52 = v82;
      do
      {
        if (v50 + v51 == -1)
        {
          sub_1CFBC2FB0(&v94, &qword_1EC4EF7B8, &qword_1CFCA78C8);
          goto LABEL_20;
        }

        if (++v51 >= v29[2])
        {
          __break(1u);
          goto LABEL_40;
        }

        v53 = v52 + 5;
        sub_1CFBB94B0(v52, v91);
        v54 = v97;
        v55 = v92;
        v56 = __swift_project_boxed_opaque_existential_1(v91, v92);
        v90 = v55;
        boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(&v89);
        (*(*(v55 - 8) + 16))(boxed_opaque_existential_0Tm, v56, v55);
        v58 = v54(&v89);
        __swift_destroy_boxed_opaque_existential_1Tm(&v89);
        __swift_destroy_boxed_opaque_existential_1Tm(v91);
        v52 = v53;
      }

      while ((v58 & 1) == 0);
      v59 = *(&v95 + 1);

      v59(v60);
      sub_1CFBA2D80(0, &qword_1EE04CEF8, 0x1E69DC628);
      v61 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v62 = swift_allocObject();
      *(v62 + 16) = v61;
      *(v62 + 24) = v29;
      v63 = v97;
      *(v62 + 64) = v96;
      *(v62 + 80) = v63;
      v64 = v99;
      *(v62 + 96) = v98;
      *(v62 + 112) = v64;
      v65 = v95;
      *(v62 + 32) = v94;
      *(v62 + 48) = v65;

      sub_1CFC9FDF8();
      MEMORY[0x1D3871DC0]();
      if (*((v93 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v93 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1CFC9F8C8();
      }

      sub_1CFC9F8F8();
      v80 = v93;
LABEL_20:
      v42 = v81;
      if (v43 == v87)
      {
        goto LABEL_29;
      }
    }

    goto LABEL_43;
  }

LABEL_45:
  __break(1u);
LABEL_46:
  if (!sub_1CFC9FFD8())
  {
LABEL_48:
    v83(v79, v88);
    swift_unknownObjectRelease();

    return 0;
  }

  sub_1CFBA2D80(0, &qword_1EE04D0E0, 0x1E69DCC78);

  sub_1CFCA01E8();

LABEL_32:

  sub_1CFBA2D80(0, &unk_1EE04CF40, 0x1E69DCC60);
  v66 = sub_1CFC9FD68();
  swift_unknownObjectRelease();
  v83(v79, v88);
  return v66;
}

uint64_t SectionnedCollectionViewController.keyCommands.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED760, &qword_1CFCA2690);
  v0 = swift_allocObject();
  v1 = MEMORY[0x1E69DDE88];
  *(v0 + 16) = xmmword_1CFCA2540;
  *(v0 + 32) = [objc_opt_self() keyCommandWithInput:*v1 modifierFlags:0 action:sel_deleteKeyPressed_];
  return v0;
}

void sub_1CFC91858(uint64_t a1, uint64_t a2)
{
  v46 = a2;
  v3 = sub_1CFC9C138();
  v43 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR____TtC10CallsAppUI34SectionnedCollectionViewController_sections;
  swift_beginAccess();
  v59 = a1;
  v7 = *(*(a1 + v6) + 16);
  if (!v7)
  {
    return;
  }

  v8 = 0;
  v58 = OBJC_IVAR____TtC10CallsAppUI34SectionnedCollectionViewController_items;
  v60 = v43 + 16;
  v9 = (v43 + 8);
  v45 = v6;
  v44 = v7;
  while (2)
  {
    v10 = *(v59 + v6);
    if (v8 >= *(v10 + 16))
    {
      goto LABEL_33;
    }

    v11 = v8 + 1;
    v12 = v10 + 16 * v8;
    v14 = *(v12 + 32);
    v13 = *(v12 + 40);
    ObjectType = swift_getObjectType();
    swift_unknownObjectRetain();
    v16 = sub_1CFBA392C(ObjectType, v13);
    v17 = *(v16 + 16) + 1;
    v18 = v16;
    do
    {
      if (!--v17)
      {

        swift_unknownObjectRelease();
        goto LABEL_4;
      }

      v19 = v18 + 96;
      v20 = *(v18 + 48);
      v18 += 96;
    }

    while ((v20 & 1) == 0);
    v53 = v14;
    v54 = v8 + 1;
    v21 = *(v19 - 56);
    v23 = *(v19 - 32);
    v22 = *(v19 - 24);
    v24 = *(v19 - 8);
    v55 = *(v19 - 16);
    v25 = *(v19 + 8);
    v47 = *v19;
    v49 = *(v19 + 24);

    v52 = v21;

    v51 = v23;

    v48 = v22;
    v57 = v24;

    v50 = v25;

    v26 = *(v46 + 16);
    if (!v26)
    {
      v56 = MEMORY[0x1E69E7CC0];
LABEL_30:
      v47(v56);
      swift_unknownObjectRelease();

      v6 = v45;
      v7 = v44;
      v11 = v54;
LABEL_4:
      v8 = v11;
      if (v11 == v7)
      {
        return;
      }

      continue;
    }

    break;
  }

  v27 = v43;
  v28 = v46 + ((*(v27 + 80) + 32) & ~*(v27 + 80));
  swift_beginAccess();
  v29 = *(v27 + 72);
  v30 = *(v27 + 16);
  v56 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v30(v5, v28, v3);
    if (sub_1CFC9C128() != v8)
    {
      goto LABEL_23;
    }

    v31 = *(v59 + v58);
    if (v8 >= *(v31 + 16))
    {
      break;
    }

    v32 = *(v31 + 8 * v8 + 32);

    v33 = sub_1CFC9C118();
    if ((v33 & 0x8000000000000000) != 0 || v33 >= *(v32 + 16))
    {

LABEL_23:
      (*v9)(v5, v3);
LABEL_24:
      v65 = 0u;
      v66 = 0u;
      goto LABEL_25;
    }

    sub_1CFBB94B0(v32 + 40 * v33 + 32, &v61);

    sub_1CFBAD070(&v61, &v63);
    v34 = v64;
    v35 = __swift_project_boxed_opaque_existential_1(&v63, v64);
    v62 = v34;
    boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(&v61);
    (*(*(v34 - 8) + 16))(boxed_opaque_existential_0Tm, v35, v34);
    LOBYTE(v34) = v55(&v61);
    __swift_destroy_boxed_opaque_existential_1Tm(&v61);
    if ((v34 & 1) == 0)
    {
      (*v9)(v5, v3);
      __swift_destroy_boxed_opaque_existential_1Tm(&v63);
      goto LABEL_24;
    }

    v37 = v64;
    v38 = __swift_project_boxed_opaque_existential_1(&v63, v64);
    *(&v66 + 1) = v37;
    v39 = __swift_allocate_boxed_opaque_existential_0Tm(&v65);
    (*(*(v37 - 8) + 16))(v39, v38, v37);
    (*v9)(v5, v3);
    __swift_destroy_boxed_opaque_existential_1Tm(&v63);
    if (*(&v66 + 1))
    {
      sub_1CFBCC9AC(&v65, &v63);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v56 = sub_1CFC7B110(0, *(v56 + 2) + 1, 1, v56);
      }

      v41 = *(v56 + 2);
      v40 = *(v56 + 3);
      if (v41 >= v40 >> 1)
      {
        v56 = sub_1CFC7B110((v40 > 1), v41 + 1, 1, v56);
      }

      v42 = v56;
      *(v56 + 2) = v41 + 1;
      sub_1CFBCC9AC(&v63, &v42[32 * v41 + 32]);
      goto LABEL_26;
    }

LABEL_25:
    sub_1CFBC2FB0(&v65, &qword_1EC4EE650, &qword_1CFCA4B10);
LABEL_26:
    v28 += v29;
    if (!--v26)
    {
      goto LABEL_30;
    }
  }

  __break(1u);
LABEL_33:
  __break(1u);
}

void sub_1CFC91ED8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    v8 = *(a3 + 16);
    if (v8)
    {
      v9 = a3 + 32;
      v10 = MEMORY[0x1E69E7CC0];
      do
      {
        sub_1CFBB94B0(v9, &v23);
        v11 = *(a4 + 48);
        v12 = v24;
        v13 = __swift_project_boxed_opaque_existential_1(&v23, v24);
        v22 = v12;
        boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(&v21);
        (*(*(v12 - 8) + 16))(boxed_opaque_existential_0Tm, v13, v12);
        v15 = v11(&v21);
        __swift_destroy_boxed_opaque_existential_1Tm(&v21);
        if (v15)
        {
          sub_1CFBAD070(&v23, &v21);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v25 = v10;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_1CFBCA900(0, *(v10 + 16) + 1, 1);
            v10 = v25;
          }

          v18 = *(v10 + 16);
          v17 = *(v10 + 24);
          if (v18 >= v17 >> 1)
          {
            sub_1CFBCA900((v17 > 1), v18 + 1, 1);
            v10 = v25;
          }

          *(v10 + 16) = v18 + 1;
          sub_1CFBAD070(&v21, v10 + 40 * v18 + 32);
        }

        else
        {
          __swift_destroy_boxed_opaque_existential_1Tm(&v23);
        }

        v9 += 40;
        --v8;
      }

      while (v8);
    }

    else
    {
      v10 = MEMORY[0x1E69E7CC0];
    }

    v19 = *(a4 + 64);
    v20 = sub_1CFC82C04(v10);

    v19(v20);

    [v7 setEditing:0 animated:1];
  }
}

void sub_1CFC920C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    v10 = sub_1CFBC53A0(a3, a4);
    v11 = v10;
    v12 = *(v10 + 2);
    if (v12)
    {
      v13 = 0;
      v14 = (v10 + 32);
      v15 = MEMORY[0x1E69E7CC0];
      while (v13 < *(v11 + 2))
      {
        sub_1CFBB4598(v14, v20);
        if ((*(a5 + 48))(v20))
        {
          sub_1CFBCC9AC(v20, v19);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v21 = v15;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_1CFBCAAF0(0, *(v15 + 16) + 1, 1);
            v15 = v21;
          }

          v18 = *(v15 + 16);
          v17 = *(v15 + 24);
          if (v18 >= v17 >> 1)
          {
            sub_1CFBCAAF0((v17 > 1), v18 + 1, 1);
            v15 = v21;
          }

          *(v15 + 16) = v18 + 1;
          sub_1CFBCC9AC(v19, (v15 + 32 * v18 + 32));
        }

        else
        {
          __swift_destroy_boxed_opaque_existential_1Tm(v20);
        }

        ++v13;
        v14 += 32;
        if (v12 == v13)
        {
          goto LABEL_14;
        }
      }

      __break(1u);
    }

    else
    {
      v15 = MEMORY[0x1E69E7CC0];
LABEL_14:

      (*(a5 + 64))(v15);

      [v9 setEditing:0 animated:1];
    }
  }
}

void sub_1CFC92278()
{
  v1 = v0;
  v73 = sub_1CFC9C138();
  v54 = *(v73 - 8);
  MEMORY[0x1EEE9AC00](v73);
  v3 = &v53 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = OBJC_IVAR____TtC10CallsAppUI34SectionnedCollectionViewController_editButtonItems;
  swift_beginAccess();
  v5 = *&v1[v4];
  v6 = *(v5 + 16);
  v72 = OBJC_IVAR____TtC10CallsAppUI34SectionnedCollectionViewController_items;
  v59 = v5;

  v58 = v6;
  if (!v6)
  {
LABEL_38:

    return;
  }

  v7 = 0;
  v57 = v59 + 32;
  v70 = v1;
  v71 = v54 + 16;
  v55 = (v54 + 8);
  while (v7 < *(v59 + 16))
  {
    v67 = v7;
    v10 = (v57 + 120 * v7);
    v11 = v10[3];
    v12 = *v10;
    v13 = v10[1];
    v76[2] = v10[2];
    v77 = v11;
    v76[0] = v12;
    v76[1] = v13;
    v14 = v10[4];
    v15 = v10[5];
    v16 = v10[6];
    v81 = *(v10 + 14);
    v17 = v81;
    v79 = v15;
    v80 = v16;
    v78 = v14;
    v18 = *(&v15 + 1);
    v19 = *(&v13 + 1);
    v60 = v16;
    v61 = v13;
    v20 = *(&v14 + 1);
    v68 = *(&v77 + 1);
    v21 = v77;
    v69 = *(&v16 + 1);
    sub_1CFBA29FC(v76, v75, &qword_1EC4ED5C8, &qword_1CFCA24B0);
    sub_1CFBA29FC(v76, v75, &qword_1EC4ED5C8, &qword_1CFCA24B0);
    swift_unknownObjectRelease();
    v62 = v17;

    sub_1CFBA29FC(v76, v75, &qword_1EC4ED5C8, &qword_1CFCA24B0);
    swift_unknownObjectRelease();
    v63 = v18;
    v22 = v70;

    v64 = v20;

    v65 = v21;
    v23 = v68;

    v66 = v19;

    v24 = [v22 collectionView];
    if (!v24)
    {
      goto LABEL_40;
    }

    v25 = v24;
    v26 = [v24 indexPathsForSelectedItems];

    if (v26)
    {
      v27 = sub_1CFC9F8A8();

      v28 = *(v27 + 16);
      v29 = v55;
      if (v28)
      {
        v30 = v54;
        v31 = *(v54 + 80);
        v56 = v27;
        v32 = v27 + ((v31 + 32) & ~v31);
        swift_beginAccess();
        v33 = *(v30 + 72);
        v34 = *(v30 + 16);
        v35 = MEMORY[0x1E69E7CC0];
        v34(v3, v32, v73);
        while (1)
        {
          v36 = *&v22[v72];

          v37 = sub_1CFC9C128();
          if ((v37 & 0x8000000000000000) != 0 || v37 >= *(v36 + 16))
          {
            break;
          }

          v38 = *(v36 + 8 * v37 + 32);

          v39 = sub_1CFC9C118();
          if ((v39 & 0x8000000000000000) != 0 || v39 >= *(v38 + 16))
          {

            v22 = v70;
            goto LABEL_11;
          }

          sub_1CFBB94B0(v38 + 40 * v39 + 32, v74);

          (*v29)(v3, v73);
          sub_1CFBAD070(v74, v75);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v35 = sub_1CFC7AFC8(0, v35[2] + 1, 1, v35);
          }

          v41 = v35[2];
          v40 = v35[3];
          if (v41 >= v40 >> 1)
          {
            v35 = sub_1CFC7AFC8((v40 > 1), v41 + 1, 1, v35);
          }

          v35[2] = v41 + 1;
          sub_1CFBAD070(v75, &v35[5 * v41 + 4]);
          v22 = v70;
LABEL_12:
          v32 += v33;
          if (!--v28)
          {

            v42 = v67;
            v23 = v68;
            goto LABEL_27;
          }

          v34(v3, v32, v73);
        }

LABEL_11:
        (*v29)(v3, v73);
        goto LABEL_12;
      }
    }

    v35 = MEMORY[0x1E69E7CC0];
    v42 = v67;
LABEL_27:
    v43 = v35[2];

    if (v43 <= 1)
    {
      v8 = v62;
      v9 = sub_1CFC9F728();
      [v8 setTitle_];
    }

    else
    {
      v44 = v69;
      if (v69)
      {
        v45 = v62;

        v46 = [v45 title];
        if (!v46)
        {
          goto LABEL_36;
        }

        v47 = v46;
        v48 = sub_1CFC9F768();
        v50 = v49;

        if (v48 != v60 || v44 != v50)
        {
          v51 = sub_1CFCA02B8();

          if (v51)
          {

            swift_bridgeObjectRelease_n();
          }

          else
          {
LABEL_36:
            v52 = sub_1CFC9F728();

            [v45 setTitle_];
          }

          goto LABEL_4;
        }

        swift_bridgeObjectRelease_n();
      }

      else
      {
      }
    }

LABEL_4:
    sub_1CFBC2FB0(v76, &qword_1EC4ED5C8, &qword_1CFCA24B0);
    v7 = v42 + 1;
    if (v7 == v58)
    {
      goto LABEL_38;
    }
  }

  __break(1u);
LABEL_40:
  __break(1u);
}

void sub_1CFC92970()
{
  v1 = [v0 collectionView];
  if (!v1)
  {
    goto LABEL_7;
  }

  v2 = v1;
  v3 = [v1 indexPathsForSelectedItems];

  if (!v3)
  {
    return;
  }

  sub_1CFC9C138();
  v4 = sub_1CFC9F8A8();

  v5 = objc_opt_self();
  v6 = swift_allocObject();
  *(v6 + 16) = v0;
  *(v6 + 24) = v4;
  v7 = swift_allocObject();
  *(v7 + 16) = sub_1CFC92B4C;
  *(v7 + 24) = v6;
  v10[4] = sub_1CFBF63A4;
  v10[5] = v7;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 1107296256;
  v10[2] = sub_1CFC63D88;
  v10[3] = &block_descriptor_15;
  v8 = _Block_copy(v10);
  v9 = v0;

  [v5 performWithoutAnimation_];
  _Block_release(v8);
  LOBYTE(v5) = swift_isEscapingClosureAtFileLocation();

  if (v5)
  {
    __break(1u);
LABEL_7:
    __break(1u);
    return;
  }

  [v9 setEditing:0 animated:1];
}

uint64_t sub_1CFC92B70(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1CFC92BB8()
{
  swift_getKeyPath();
  sub_1CFBB9E3C(&qword_1EC4F01C0, type metadata accessor for VoicemailResultCellState, &unk_1CFCA9718);
  sub_1CFC9C158();

  swift_beginAccess();
}

uint64_t sub_1CFC92C78@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1CFBB9E3C(&qword_1EC4F01C0, type metadata accessor for VoicemailResultCellState, &unk_1CFCA9718);
  sub_1CFC9C158();

  v4 = OBJC_IVAR____TtC10CallsAppUI24VoicemailResultCellState__cancellables;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

double sub_1CFC92D40(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC10CallsAppUI24VoicemailResultCellState__cancellables;
  swift_beginAccess();

  v5 = sub_1CFC950B8(v4, a1);

  if (v5)
  {
    *(v1 + v3) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1CFBB9E3C(&qword_1EC4F01C0, type metadata accessor for VoicemailResultCellState, &unk_1CFCA9718);
    sub_1CFC9C148();
  }

  return result;
}

void sub_1CFC92E90(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC10CallsAppUI24VoicemailResultCellState__cancellables;
  swift_beginAccess();
  *(a1 + v4) = a2;
}

double sub_1CFC92F00(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v9 = v4 + OBJC_IVAR____TtC10CallsAppUI24VoicemailResultCellState__title;
  v10 = *(v4 + OBJC_IVAR____TtC10CallsAppUI24VoicemailResultCellState__title);
  v11 = *(v4 + OBJC_IVAR____TtC10CallsAppUI24VoicemailResultCellState__title + 8);
  v12 = *(v4 + OBJC_IVAR____TtC10CallsAppUI24VoicemailResultCellState__title + 16);
  sub_1CFBB45F4(v10, v11, v12);

  v13 = a1;
  v23 = a2;
  v14 = a3 & 1;
  v15 = sub_1CFC9EDA8();
  sub_1CFBB44C0(v10, v11, v12);

  if (v15)
  {
    v16 = *v9;
    v17 = *(v9 + 8);
    v18 = *(v9 + 16);
    v19 = v23;
    *v9 = v13;
    *(v9 + 8) = v19;
    *(v9 + 16) = v14;
    *(v9 + 24) = a4;
    sub_1CFBB44C0(v16, v17, v18);
  }

  else
  {
    v22[0] = swift_getKeyPath();
    v22[1] = v22;
    MEMORY[0x1EEE9AC00](v22[0]);
    v21 = v23;
    v24[0] = v22[2];
    sub_1CFBB9E3C(&qword_1EC4F01C0, type metadata accessor for VoicemailResultCellState, &unk_1CFCA9718);
    sub_1CFC9C148();
    sub_1CFBB44C0(v13, v21, v14);
  }

  return result;
}

uint64_t sub_1CFC93124(uint64_t result)
{
  if (*(v1 + OBJC_IVAR____TtC10CallsAppUI24VoicemailResultCellState__showingSummary) == (result & 1))
  {
    *(v1 + OBJC_IVAR____TtC10CallsAppUI24VoicemailResultCellState__showingSummary) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1CFBB9E3C(&qword_1EC4F01C0, type metadata accessor for VoicemailResultCellState, &unk_1CFCA9718);
    sub_1CFC9C148();
  }

  return result;
}

uint64_t sub_1CFC9323C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1CFC93B1C();
  }

  return result;
}

uint64_t sub_1CFC93294()
{
  swift_getKeyPath();
  sub_1CFBB9E3C(&qword_1EC4F01C0, type metadata accessor for VoicemailResultCellState, &unk_1CFCA9718);
  sub_1CFC9C158();

  v1 = *(v0 + OBJC_IVAR____TtC10CallsAppUI24VoicemailResultCellState__title);
  sub_1CFBB45F4(v1, *(v0 + OBJC_IVAR____TtC10CallsAppUI24VoicemailResultCellState__title + 8), *(v0 + OBJC_IVAR____TtC10CallsAppUI24VoicemailResultCellState__title + 16));

  return v1;
}

uint64_t sub_1CFC93370@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1CFBB9E3C(&qword_1EC4F01C0, type metadata accessor for VoicemailResultCellState, &unk_1CFCA9718);
  sub_1CFC9C158();

  v4 = *(v3 + OBJC_IVAR____TtC10CallsAppUI24VoicemailResultCellState__title);
  v5 = *(v3 + OBJC_IVAR____TtC10CallsAppUI24VoicemailResultCellState__title + 8);
  v6 = *(v3 + OBJC_IVAR____TtC10CallsAppUI24VoicemailResultCellState__title + 16);
  v7 = *(v3 + OBJC_IVAR____TtC10CallsAppUI24VoicemailResultCellState__title + 24);
  *a2 = v4;
  *(a2 + 8) = v5;
  *(a2 + 16) = v6;
  *(a2 + 24) = v7;
  sub_1CFBB45F4(v4, v5, v6);
}

double sub_1CFC93440(uint64_t a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  sub_1CFBB45F4(*a1, v2, v3);

  return sub_1CFC92F00(v1, v2, v3, v4);
}

double sub_1CFC934B0(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  v5 = a1 + OBJC_IVAR____TtC10CallsAppUI24VoicemailResultCellState__title;
  v6 = *(a1 + OBJC_IVAR____TtC10CallsAppUI24VoicemailResultCellState__title);
  v7 = *(a1 + OBJC_IVAR____TtC10CallsAppUI24VoicemailResultCellState__title + 8);
  v8 = *(a1 + OBJC_IVAR____TtC10CallsAppUI24VoicemailResultCellState__title + 16);
  *v5 = a2;
  *(v5 + 8) = a3;
  *(v5 + 16) = a4 & 1;
  *(v5 + 24) = a5;
  sub_1CFBB45F4(a2, a3, a4 & 1);

  sub_1CFBB44C0(v6, v7, v8);

  return result;
}

uint64_t sub_1CFC93540()
{
  swift_getKeyPath();
  sub_1CFBB9E3C(&qword_1EC4F01C0, type metadata accessor for VoicemailResultCellState, &unk_1CFCA9718);
  sub_1CFC9C158();

  v1 = *(v0 + OBJC_IVAR____TtC10CallsAppUI24VoicemailResultCellState__subtitle);
  sub_1CFBB9654(v1, *(v0 + OBJC_IVAR____TtC10CallsAppUI24VoicemailResultCellState__subtitle + 8), *(v0 + OBJC_IVAR____TtC10CallsAppUI24VoicemailResultCellState__subtitle + 16), *(v0 + OBJC_IVAR____TtC10CallsAppUI24VoicemailResultCellState__subtitle + 24));
  return v1;
}

uint64_t sub_1CFC93614@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1CFBB9E3C(&qword_1EC4F01C0, type metadata accessor for VoicemailResultCellState, &unk_1CFCA9718);
  sub_1CFC9C158();

  v4 = *(v3 + OBJC_IVAR____TtC10CallsAppUI24VoicemailResultCellState__subtitle);
  v5 = *(v3 + OBJC_IVAR____TtC10CallsAppUI24VoicemailResultCellState__subtitle + 8);
  v6 = *(v3 + OBJC_IVAR____TtC10CallsAppUI24VoicemailResultCellState__subtitle + 16);
  v7 = *(v3 + OBJC_IVAR____TtC10CallsAppUI24VoicemailResultCellState__subtitle + 24);
  *a2 = v4;
  a2[1] = v5;
  a2[2] = v6;
  a2[3] = v7;
  return sub_1CFBB9654(v4, v5, v6, v7);
}

double sub_1CFC936D4(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = a1[2];
  v4 = a1[3];
  sub_1CFBB9654(*a1, v2, v3, v4);
  return sub_1CFC93734(v1, v2, v3, v4);
}

double sub_1CFC93734(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = a3;
  v8 = a1;
  v9 = (v4 + OBJC_IVAR____TtC10CallsAppUI24VoicemailResultCellState__subtitle);
  v11 = *(v4 + OBJC_IVAR____TtC10CallsAppUI24VoicemailResultCellState__subtitle);
  v10 = *(v4 + OBJC_IVAR____TtC10CallsAppUI24VoicemailResultCellState__subtitle + 8);
  v13 = *(v4 + OBJC_IVAR____TtC10CallsAppUI24VoicemailResultCellState__subtitle + 16);
  v12 = *(v4 + OBJC_IVAR____TtC10CallsAppUI24VoicemailResultCellState__subtitle + 24);
  if (!v12)
  {
    if (!a4)
    {
      v19 = 0;
      goto LABEL_8;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1CFBB9E3C(&qword_1EC4F01C0, type metadata accessor for VoicemailResultCellState, &unk_1CFCA9718);
    sub_1CFC9C148();
    sub_1CFBB74FC(v8, a2, v6, a4);

    return result;
  }

  if (!a4)
  {
    goto LABEL_6;
  }

  v14 = a2;
  v16 = *(v4 + OBJC_IVAR____TtC10CallsAppUI24VoicemailResultCellState__subtitle + 8);
  sub_1CFBB45F4(*(v4 + OBJC_IVAR____TtC10CallsAppUI24VoicemailResultCellState__subtitle), v10, v13 & 1);

  v17 = sub_1CFC9EDA8();
  v18 = v16;
  v6 = a3;
  a2 = v14;
  v8 = a1;
  sub_1CFBB74FC(v11, v18, v13, v12);
  if ((v17 & 1) == 0)
  {
    goto LABEL_6;
  }

  v11 = *v9;
  v10 = v9[1];
  v13 = v9[2];
  v19 = v9[3];
LABEL_8:
  *v9 = v8;
  v9[1] = a2;
  v9[2] = v6;
  v9[3] = a4;

  return sub_1CFBB74FC(v11, v10, v13, v19);
}

double sub_1CFC9394C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = (a1 + OBJC_IVAR____TtC10CallsAppUI24VoicemailResultCellState__subtitle);
  v6 = *(a1 + OBJC_IVAR____TtC10CallsAppUI24VoicemailResultCellState__subtitle);
  v7 = *(a1 + OBJC_IVAR____TtC10CallsAppUI24VoicemailResultCellState__subtitle + 8);
  v8 = *(a1 + OBJC_IVAR____TtC10CallsAppUI24VoicemailResultCellState__subtitle + 16);
  v9 = *(a1 + OBJC_IVAR____TtC10CallsAppUI24VoicemailResultCellState__subtitle + 24);
  *v5 = a2;
  v5[1] = a3;
  v5[2] = a4;
  v5[3] = a5;
  sub_1CFBB9654(a2, a3, a4, a5);
  return sub_1CFBB74FC(v6, v7, v8, v9);
}

uint64_t sub_1CFC939C4()
{
  swift_getKeyPath();
  sub_1CFBB9E3C(&qword_1EC4F01C0, type metadata accessor for VoicemailResultCellState, &unk_1CFCA9718);
  sub_1CFC9C158();

  return *(v0 + OBJC_IVAR____TtC10CallsAppUI24VoicemailResultCellState__showingSummary);
}

uint64_t sub_1CFC93A6C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1CFBB9E3C(&qword_1EC4F01C0, type metadata accessor for VoicemailResultCellState, &unk_1CFCA9718);
  sub_1CFC9C158();

  *a2 = *(v3 + OBJC_IVAR____TtC10CallsAppUI24VoicemailResultCellState__showingSummary);
  return result;
}

uint64_t sub_1CFC93B1C()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F01C8, &qword_1CFCA9848);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v64 = v62 - v3;
  v4 = sub_1CFC9BDF8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v63 = v62 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v62 - v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = v62 - v11;
  sub_1CFC9DCE8();
  if (v69)
  {
    v13 = v68;
  }

  else
  {
    v13 = 0;
  }

  if (v69)
  {
    v14 = v69;
  }

  else
  {
    v14 = 0xE000000000000000;
  }

  sub_1CFC9C3D8();
  v15 = sub_1CFC9F728();

  v65 = v13;
  v16 = sub_1CFC9F728();
  v17 = [v15 attributedStringToHighlightText_];

  v18 = v4;
  sub_1CFC9BE18();
  v66 = v12;
  v67 = v5;
  v19 = *(v5 + 16);
  v20 = v12;
  v21 = v9;
  v19(v9, v20, v4);
  v22 = sub_1CFC9EDE8();
  sub_1CFC92F00(v22, v24, v23 & 1, v25);
  v26 = sub_1CFC9C408();
  if (v26)
  {
    v27 = v26;
    v28 = v65;
    v62[1] = v21;
    v62[2] = v1;
    v29 = v14;
    v63 = v18;
    if (*(v1 + OBJC_IVAR____TtC10CallsAppUI24VoicemailResultCellState__showingSummary) == 1)
    {
      *(v1 + OBJC_IVAR____TtC10CallsAppUI24VoicemailResultCellState__showingSummary) = 1;
    }

    else
    {
      KeyPath = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](KeyPath);
      v68 = v1;
      sub_1CFBB9E3C(&qword_1EC4F01C0, type metadata accessor for VoicemailResultCellState, &unk_1CFCA9718);
      sub_1CFC9C148();
    }

    v44 = v64;
    sub_1CFC9D5A8();
    v45 = sub_1CFC9D738();
    v46 = *(v45 - 8);
    if ((*(v46 + 48))(v44, 1, v45) == 1)
    {

      sub_1CFBC2FB0(v44, &qword_1EC4F01C8, &qword_1CFCA9848);
    }

    else
    {
      v47 = sub_1CFC9D728();
      v49 = v48;
      (*(v46 + 8))(v44, v45);
      v50 = HIBYTE(v49) & 0xF;
      if ((v49 & 0x2000000000000000) == 0)
      {
        v50 = v47 & 0xFFFFFFFFFFFFLL;
      }

      if (v50)
      {
        sub_1CFC9423C(v47, v49, v28, v29);

        v51 = sub_1CFC9EDE8();
        sub_1CFC93734(v51, v53, v52 & 1, v54);

        return (*(v67 + 8))(v66, v63);
      }
    }

    v56 = v63;
    type metadata accessor for BundleClass();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v58 = [objc_opt_self() bundleForClass_];
    v59 = sub_1CFC9BE28();
    v61 = v60;

    sub_1CFC93734(v59, v61, 0, MEMORY[0x1E69E7CC0]);
    return (*(v67 + 8))(v66, v56);
  }

  else
  {
    sub_1CFC9C438();
    v30 = sub_1CFC9F728();

    v31 = sub_1CFC9F728();

    v32 = [v30 attributedStringToHighlightText_];

    v33 = v63;
    sub_1CFC9BE18();
    v19(v9, v33, v4);
    v34 = sub_1CFC9EDE8();
    v38 = sub_1CFC93734(v34, v36, v35 & 1, v37);
    v39 = OBJC_IVAR____TtC10CallsAppUI24VoicemailResultCellState__showingSummary;
    if (*(v1 + OBJC_IVAR____TtC10CallsAppUI24VoicemailResultCellState__showingSummary))
    {
      v40 = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](v40);
      v68 = v1;
      sub_1CFBB9E3C(&qword_1EC4F01C0, type metadata accessor for VoicemailResultCellState, &unk_1CFCA9718);
      sub_1CFC9C148();

      v41 = *(v67 + 8);
      v41(v33, v4);
      return (v41)(v66, v4);
    }

    else
    {
      v55 = *(v67 + 8);
      v55(v33, v4, v38);
      result = (v55)(v66, v4);
      *(v1 + v39) = 0;
    }
  }

  return result;
}

uint64_t sub_1CFC9423C(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v8 = sub_1CFC9BE48();
  MEMORY[0x1EEE9AC00](v8 - 8);
  sub_1CFC957C4(a1, a2);
  sub_1CFC95ACC(a1, a2, a3, a4, v9);
  if (sub_1CFC9F7D8() < 1)
  {

    sub_1CFC9BE38();
    return sub_1CFC9BE08();
  }

  else
  {
    v10 = sub_1CFC9F728();

    v11 = sub_1CFC9F728();
    [v10 attributedStringToHighlightText_];

    return sub_1CFC9BE18();
  }
}

uint64_t sub_1CFC943BC()
{
  v1 = OBJC_IVAR____TtC10CallsAppUI24VoicemailResultCellState_item;
  v2 = sub_1CFC9C448();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  sub_1CFBB44C0(*(v0 + OBJC_IVAR____TtC10CallsAppUI24VoicemailResultCellState__title), *(v0 + OBJC_IVAR____TtC10CallsAppUI24VoicemailResultCellState__title + 8), *(v0 + OBJC_IVAR____TtC10CallsAppUI24VoicemailResultCellState__title + 16));

  sub_1CFBB74FC(*(v0 + OBJC_IVAR____TtC10CallsAppUI24VoicemailResultCellState__subtitle), *(v0 + OBJC_IVAR____TtC10CallsAppUI24VoicemailResultCellState__subtitle + 8), *(v0 + OBJC_IVAR____TtC10CallsAppUI24VoicemailResultCellState__subtitle + 16), *(v0 + OBJC_IVAR____TtC10CallsAppUI24VoicemailResultCellState__subtitle + 24));
  v3 = OBJC_IVAR____TtC10CallsAppUI24VoicemailResultCellState___observationRegistrar;
  v4 = sub_1CFC9C198();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for VoicemailResultCellState(uint64_t a1)
{
  result = qword_1EC4F01A8;
  if (!qword_1EC4F01A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1CFC94548(uint64_t a1)
{
  result = sub_1CFC9C448();
  if (v2 <= 0x3F)
  {
    result = sub_1CFC9C198();
    if (v3 <= 0x3F)
    {
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

uint64_t sub_1CFC94648()
{
  v1 = *v0;
  swift_getKeyPath();
  sub_1CFBB9E3C(&qword_1EC4F01C0, type metadata accessor for VoicemailResultCellState, &unk_1CFCA9718);
  sub_1CFC9C158();

  v2 = *(v1 + OBJC_IVAR____TtC10CallsAppUI24VoicemailResultCellState__subtitle);
  sub_1CFBB9654(v2, *(v1 + OBJC_IVAR____TtC10CallsAppUI24VoicemailResultCellState__subtitle + 8), *(v1 + OBJC_IVAR____TtC10CallsAppUI24VoicemailResultCellState__subtitle + 16), *(v1 + OBJC_IVAR____TtC10CallsAppUI24VoicemailResultCellState__subtitle + 24));
  return v2;
}

uint64_t sub_1CFC9471C@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED0D0, &unk_1CFCA1FE0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v9 - v3;
  sub_1CFC9C3A8();
  v5 = sub_1CFC9BFB8();
  v6 = *(v5 - 8);
  v7 = *(v6 + 48);
  if (v7(v4, 1, v5) != 1)
  {
    return (*(v6 + 32))(a1, v4, v5);
  }

  sub_1CFC9BF98();
  result = (v7)(v4, 1, v5);
  if (result != 1)
  {
    return sub_1CFBC2FB0(v4, &qword_1EC4ED0D0, &unk_1CFCA1FE0);
  }

  return result;
}

uint64_t sub_1CFC94870()
{
  v1 = *v0;
  swift_getKeyPath();
  sub_1CFBB9E3C(&qword_1EC4F01C0, type metadata accessor for VoicemailResultCellState, &unk_1CFCA9718);
  sub_1CFC9C158();

  return *(v1 + OBJC_IVAR____TtC10CallsAppUI24VoicemailResultCellState__showingSummary);
}

uint64_t sub_1CFC9491C()
{
  v1 = *v0;
  swift_getKeyPath();
  sub_1CFBB9E3C(&qword_1EC4F01C0, type metadata accessor for VoicemailResultCellState, &unk_1CFCA9718);
  sub_1CFC9C158();

  v2 = *(v1 + OBJC_IVAR____TtC10CallsAppUI24VoicemailResultCellState__title);
  sub_1CFBB45F4(v2, *(v1 + OBJC_IVAR____TtC10CallsAppUI24VoicemailResultCellState__title + 8), *(v1 + OBJC_IVAR____TtC10CallsAppUI24VoicemailResultCellState__title + 16));

  return v2;
}

uint64_t sub_1CFC949F8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEDF6B58](a1, WitnessTable);
}

unint64_t sub_1CFC94ADC(uint64_t a1)
{
  sub_1CFCA0338();
  sub_1CFCA0068();
  MEMORY[0x1D3872880](*(a1 + 40));
  v2 = sub_1CFCA0378();

  return sub_1CFC94CE8(a1, v2);
}

unint64_t sub_1CFC94B54(uint64_t a1, uint64_t a2)
{
  sub_1CFCA0338();
  sub_1CFC9F7C8();
  v4 = sub_1CFCA0378();

  return sub_1CFC94DC8(a1, a2, v4);
}

unint64_t sub_1CFC94BCC(uint64_t a1)
{
  v2 = sub_1CFCA0328();

  return sub_1CFC94E80(a1, v2);
}

unint64_t sub_1CFC94C10(uint64_t a1)
{
  v2 = sub_1CFCA0048();

  return sub_1CFC94EEC(a1, v2);
}

unint64_t sub_1CFC94C54(uint64_t a1)
{
  sub_1CFC9F768();
  sub_1CFCA0338();
  sub_1CFC9F7C8();
  v2 = sub_1CFCA0378();

  return sub_1CFC94FB4(a1, v2);
}

unint64_t sub_1CFC94CE8(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_1CFBCCD6C(*(v2 + 48) + 48 * v4, v9);
      if (MEMORY[0x1D3872590](v9, a1))
      {
        v7 = v9[5];
        sub_1CFBCCDA4(v9);
        if (v7 == *(a1 + 40))
        {
          return v4;
        }
      }

      else
      {
        sub_1CFBCCDA4(v9);
      }

      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_1CFC94DC8(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_1CFCA02B8())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_1CFC94E80(uint64_t a1, uint64_t a2)
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

unint64_t sub_1CFC94EEC(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_1CFBAAE48(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x1D3872590](v9, a1);
      sub_1CFBAAEA4(v9);
      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_1CFC94FB4(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = sub_1CFC9F768();
      v8 = v7;
      if (v6 == sub_1CFC9F768() && v8 == v9)
      {
        break;
      }

      v11 = sub_1CFCA02B8();

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

uint64_t sub_1CFC950B8(uint64_t a1, uint64_t a2)
{
  v3 = a2 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    if (a1 < 0)
    {
      v4 = a1;
    }

    else
    {
      v4 = a1 & 0xFFFFFFFFFFFFFF8;
    }

    if (v3)
    {
      if (a2 < 0)
      {
        v5 = a2;
      }

      else
      {
        v5 = (a2 & 0xFFFFFFFFFFFFFF8);
      }

      return MEMORY[0x1EEE6A200](v5, v4);
    }

    v8 = v4;
    v7 = a2;
  }

  else
  {
    if (!v3)
    {
      if (a1 == a2)
      {
        return 1;
      }

      if (*(a1 + 16) == *(a2 + 16))
      {
        v10 = a1 + 56;
        v11 = 1 << *(a1 + 32);
        if (v11 < 64)
        {
          v12 = ~(-1 << v11);
        }

        else
        {
          v12 = -1;
        }

        v13 = v12 & *(a1 + 56);
        sub_1CFC9DC98();
        v14 = 0;
        v15 = (v11 + 63) >> 6;
        v16 = a2 + 56;
        v5 = &qword_1EC4EFD28;
        if (!v13)
        {
LABEL_27:
          v17 = v14;
          while (1)
          {
            v14 = v17 + 1;
            if (__OFADD__(v17, 1))
            {
              break;
            }

            if (v14 >= v15)
            {
              return 1;
            }

            v18 = *(v10 + 8 * v14);
            ++v17;
            if (v18)
            {
              v23 = (v18 - 1) & v18;
              goto LABEL_32;
            }
          }

          __break(1u);
          return MEMORY[0x1EEE6A200](v5, v4);
        }

        while (1)
        {
          v23 = (v13 - 1) & v13;
LABEL_32:
          sub_1CFBB9E3C(&qword_1EC4EFD28, MEMORY[0x1E695BF10], MEMORY[0x1E695BF18]);

          v19 = sub_1CFC9F6B8();
          v20 = -1 << *(a2 + 32);
          v21 = v19 & ~v20;
          if (((*(v16 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21) & 1) == 0)
          {
            break;
          }

          v22 = ~v20;
          sub_1CFBB9E3C(&qword_1EC4EFD30, MEMORY[0x1E695BF10], MEMORY[0x1E695BF20]);
          while ((sub_1CFC9F6F8() & 1) == 0)
          {
            v21 = (v21 + 1) & v22;
            if (((*(v16 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21) & 1) == 0)
            {
              goto LABEL_40;
            }
          }

          v15 = (v11 + 63) >> 6;
          v13 = v23;
          v5 = &qword_1EC4EFD28;
          if (!v23)
          {
            goto LABEL_27;
          }
        }

LABEL_40:
      }

      return 0;
    }

    v6 = a2 & 0xFFFFFFFFFFFFFF8;
    if (a2 < 0)
    {
      v6 = a2;
    }

    v7 = a1;
    v8 = v6;
  }

  return sub_1CFC953AC(v8, v7);
}

uint64_t sub_1CFC953AC(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = sub_1CFC9FFD8();
  if (v3 != result)
  {
    return 0;
  }

  v5 = 0;
  v6 = 1 << *(a2 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a2 + 56);
  v9 = (v6 + 63) >> 6;
  while (v8)
  {
    v8 &= v8 - 1;
LABEL_12:

    v12 = sub_1CFCA0028();

    if ((v12 & 1) == 0)
    {
      return 0;
    }
  }

  v10 = v5;
  while (1)
  {
    v5 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v5 >= v9)
    {
      return 1;
    }

    v11 = *(a2 + 56 + 8 * v5);
    ++v10;
    if (v11)
    {
      v8 = (v11 - 1) & v11;
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1CFC954B0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = MEMORY[0x1E69E7CC0];
  if (MEMORY[0x1E69E7CC0] >> 62 && sub_1CFC9FFD8())
  {
    sub_1CFC72480(MEMORY[0x1E69E7CC0]);
  }

  else
  {
    v7 = MEMORY[0x1E69E7CD0];
  }

  *(v3 + OBJC_IVAR____TtC10CallsAppUI24VoicemailResultCellState__cancellables) = v7;
  v8 = v3 + OBJC_IVAR____TtC10CallsAppUI24VoicemailResultCellState__title;
  *v8 = xmmword_1CFCA9690;
  *(v8 + 16) = 0;
  *(v8 + 24) = v6;
  v9 = (v3 + OBJC_IVAR____TtC10CallsAppUI24VoicemailResultCellState__subtitle);
  *v9 = 0u;
  v9[1] = 0u;
  *(v3 + OBJC_IVAR____TtC10CallsAppUI24VoicemailResultCellState__showingSummary) = 0;
  sub_1CFC9C188();
  v10 = OBJC_IVAR____TtC10CallsAppUI24VoicemailResultCellState_item;
  v11 = sub_1CFC9C448();
  v12 = *(v11 - 8);
  (*(v12 + 16))(v3 + v10, a1, v11);
  *(v3 + OBJC_IVAR____TtC10CallsAppUI24VoicemailResultCellState_highlightText) = a2;
  swift_allocObject();
  swift_weakInit();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F0200, qword_1CFCA9898);
  sub_1CFBA57C0(&qword_1EC4F0208, &qword_1EC4F0200, qword_1CFCA9898, MEMORY[0x1E695BFB0]);
  sub_1CFC9DDA8();

  swift_getKeyPath();
  sub_1CFBB9E3C(&qword_1EC4F01C0, type metadata accessor for VoicemailResultCellState, &unk_1CFCA9718);
  sub_1CFC9C158();

  swift_getKeyPath();
  sub_1CFC9C178();

  swift_beginAccess();
  sub_1CFC9DC88();
  swift_endAccess();

  swift_getKeyPath();
  sub_1CFC9C168();

  (*(v12 + 8))(a1, v11);
  return v3;
}

void sub_1CFC957C4(uint64_t a1, uint64_t a2)
{
  v2 = sub_1CFC9F7D8();
  v3 = v2 + 1;
  if (__OFADD__(v2, 1))
  {
LABEL_16:
    __break(1u);
    return;
  }

  if (v3 >= 1)
  {
    v31 = objc_opt_self();
    v4 = *MEMORY[0x1E69DB648];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F01E8, &qword_1CFCA9860);
    v5 = 0;
    while (!__OFADD__(v5, v3))
    {
      v6 = (v5 + v3) / 2;
      sub_1CFC9F7E8();
      v7 = sub_1CFC9F848();
      MEMORY[0x1D3871CF0](v7);

      v8 = [v31 telephonyUISubheadlineShortFont];
      v9 = sub_1CFC9F728();

      v34[0] = v4;
      v34[4] = sub_1CFC95F38();
      v34[1] = v8;
      v10 = sub_1CFCA0238();
      v11 = v4;
      v12 = v8;
      sub_1CFC95F84(v34, &v32);
      v13 = v32;
      v14 = sub_1CFC94C54(v32);
      if (v15)
      {
        goto LABEL_14;
      }

      v10[(v14 >> 6) + 8] |= 1 << v14;
      *(v10[6] + 8 * v14) = v13;
      sub_1CFBCC9AC(&v33, (v10[7] + 32 * v14));
      v16 = v10[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_15;
      }

      v10[2] = v18;
      sub_1CFBC2FB0(v34, &qword_1EC4F01F8, &qword_1CFCA9868);
      type metadata accessor for Key(0);
      sub_1CFBB9E3C(&qword_1EC4ED1F8, type metadata accessor for Key, &unk_1CFCA21E4);
      v19 = sub_1CFC9F698();

      [v9 boundingRectWithSize:3 options:v19 attributes:0 context:{344.0, 1.79769313e308}];
      v21 = v20;
      v23 = v22;
      v25 = v24;
      v27 = v26;

      v35.origin.x = v21;
      v35.origin.y = v23;
      v35.size.width = v25;
      v35.size.height = v27;
      v28 = ceil(CGRectGetHeight(v35));
      [v12 lineHeight];
      v30 = v29;

      if (v28 / v30 > 2.0)
      {
        v3 = v6 - 1;
      }

      else
      {
        v5 = v6 + 1;
      }

      if (v5 >= v3)
      {
        return;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }
}

unint64_t sub_1CFC95ACC(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F01D0, &qword_1CFCA9850);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v46 - v11;
  if (sub_1CFC9F7D8() <= a5)
  {

    return a1;
  }

  v46 = a1;
  v47 = a2;
  sub_1CFBB4460();
  v13 = sub_1CFC9FEE8();
  if (v14)
  {
    a1 = v13;
    a2 = v14;
  }

  else
  {
  }

  v46 = a3;
  v47 = a4;
  v15 = sub_1CFC9FEE8();
  if (v16)
  {
    a3 = v15;
    a4 = v16;
  }

  else
  {
  }

  v46 = 25180;
  v47 = 0xE200000000000000;
  MEMORY[0x1D3871D30](a3, a4);

  MEMORY[0x1D3871D30](0x625C2A775CLL, 0xE500000000000000);
  v17 = v46;
  v18 = v47;
  v46 = a1;
  v47 = a2;
  v52 = v17;
  v53 = v18;
  v19 = sub_1CFC9C028();
  (*(*(v19 - 8) + 56))(v12, 1, 1, v19);
  sub_1CFC9FF08();
  v21 = v20;
  sub_1CFBC2FB0(v12, &qword_1EC4F01D0, &qword_1CFCA9850);

  if (v21)
  {
    return a1;
  }

  v22 = sub_1CFC9F818();
  result = sub_1CFC9F818();
  v24 = result - v22;
  if (__OFSUB__(result, v22))
  {
    __break(1u);
    goto LABEL_27;
  }

  v25 = __OFSUB__(a5, v24);
  v26 = a5 - v24;
  if (v25)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v27 = result;
  result = sub_1CFC9F7D8();
  v28 = result - v27;
  if (__OFSUB__(result, v27))
  {
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v29 = v26 / 2;
  if (v28 < v26 / 2)
  {
    v25 = __OFSUB__(v26, v28);
    v30 = v26 - v28;
    if (v25)
    {
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v31 = v22 - v30;
    if (!__OFSUB__(v22, v30))
    {
      goto LABEL_19;
    }

    __break(1u);
  }

  v31 = v22 - v29;
  if (!__OFSUB__(v22, v29))
  {
LABEL_19:
    v52 = 0;
    v53 = 0xE000000000000000;
    result = sub_1CFC9F7E8();
    v32 = HIBYTE(a2) & 0xF;
    if ((a2 & 0x2000000000000000) == 0)
    {
      v32 = a1 & 0xFFFFFFFFFFFFLL;
    }

    if (4 * v32 >= result >> 14)
    {
      v33 = sub_1CFC9F848();
      v35 = v34;
      v37 = v36;
      v39 = v38;

      v40 = MEMORY[0x1D3871CF0](v33, v35, v37, v39);
      v42 = v41;

      if (v31 >= 1)
      {
        MEMORY[0x1D3871D30](0xA680E29C80E2, 0xA600000000000000);
        v46 = v40;
        v47 = v42;
        v50 = 32;
        v51 = 0xE100000000000000;
        v43 = sub_1CFC9FEC8();

        v44 = *(v43 + 16);
        v46 = v43;
        v47 = v43 + 32;
        v48 = v44 != 0;
        v49 = (2 * v44) | 1;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F01D8, &qword_1CFCA9858);
        sub_1CFBA57C0(&qword_1EC4F01E0, &qword_1EC4F01D8, &qword_1CFCA9858, MEMORY[0x1E69E6958]);
        v40 = sub_1CFC9F6E8();
        v42 = v45;
      }

      MEMORY[0x1D3871D30](v40, v42);

      return v52;
    }

    goto LABEL_29;
  }

LABEL_31:
  __break(1u);
  return result;
}

unint64_t sub_1CFC95F38()
{
  result = qword_1EC4F01F0;
  if (!qword_1EC4F01F0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EC4F01F0);
  }

  return result;
}

uint64_t sub_1CFC95F84(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F01F8, &qword_1CFCA9868);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

double View.contextMenu(contacts:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  v8[0] = sub_1CFC35A20;
  v8[1] = v6;
  v9 = 0;

  MEMORY[0x1D38715B0](v8, a2, &type metadata for ContactActionsMenuModifier, a3);

  return result;
}

uint64_t sub_1CFC96128()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1CFC9DD28();

  return v1;
}

char *sub_1CFC9619C(unint64_t a1, void *a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4F02F0, &unk_1CFCA9A90);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v60 - v6;
  v8 = sub_1CFC9FE98();
  v72 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v71 = &v60 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EF860, &qword_1CFCA4AD0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v63 = &v60 - v11;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F0300, &qword_1CFCA9AA0);
  v62 = *(v64 - 8);
  MEMORY[0x1EEE9AC00](v64);
  v61 = &v60 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F0308, &qword_1CFCA9AA8);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v65 = &v60 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F0310, &unk_1CFCA9AB0);
  v69 = *(v16 - 8);
  v70 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v68 = &v60 - v17;
  swift_unknownObjectWeakInit();
  v18 = &v2[OBJC_IVAR____TtC10CallsAppUI24ContactActionsController_deferredElementCompletion];
  *v18 = 0;
  *(v18 + 1) = 0;
  *&v2[OBJC_IVAR____TtC10CallsAppUI24ContactActionsController_cancellable] = 0;
  *&v2[OBJC_IVAR____TtC10CallsAppUI24ContactActionsController_contacts] = a1;
  v60 = v2;
  swift_unknownObjectWeakAssign();
  v19 = objc_opt_self();

  v20 = sub_1CFC9F728();
  v21 = [v19 tu:v20 contactStoreConfigurationForBundleIdentifier:?];

  v78 = [objc_allocWithZone(MEMORY[0x1E695CE18]) initWithConfiguration_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED760, &qword_1CFCA2690);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_1CFCA2540;
  *(v22 + 32) = [objc_opt_self() descriptorForRequiredKeys];
  v81 = MEMORY[0x1E69E7CC0];
  v74 = v8;
  v75 = a2;
  v73 = v7;
  v66 = v14;
  v67 = v13;
  if (a1 >> 62)
  {
    goto LABEL_22;
  }

  v77 = a1 & 0xFFFFFFFFFFFFFF8;
  v23 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v24 = 0;
  v76 = MEMORY[0x1E69E7CC0];
  v25 = a1 & 0xC000000000000001;
  if (v23)
  {
    do
    {
      while (1)
      {
        if (v25)
        {
          v53 = MEMORY[0x1D3872640](v24, a1);
        }

        else
        {
          if (v24 >= *(v77 + 16))
          {
            goto LABEL_21;
          }

          v53 = *(a1 + 8 * v24 + 32);
        }

        v54 = v53;
        v55 = v24 + 1;
        if (__OFADD__(v24, 1))
        {
          __break(1u);
LABEL_21:
          __break(1u);
LABEL_22:
          v77 = a1 & 0xFFFFFFFFFFFFFF8;
          v23 = sub_1CFC9FFD8();
          goto LABEL_3;
        }

        v56 = a1;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EE870, &unk_1CFCA53E0);
        v57 = sub_1CFC9F898();
        v58 = [v54 areKeysAvailable_];

        if ((v58 & 1) == 0)
        {
          break;
        }

        a1 = v56;
LABEL_15:
        MEMORY[0x1D3871DC0]();
        if (*((v81 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v81 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1CFC9F8C8();
        }

        sub_1CFC9F8F8();
        v76 = v81;
        v24 = v55;
        if (v23 == v55)
        {
          goto LABEL_4;
        }
      }

      v59 = [v54 identifier];
      if (!v59)
      {
        sub_1CFC9F768();
        v59 = sub_1CFC9F728();
      }

      v51 = sub_1CFC9F898();
      v52 = [v78 contactForIdentifier:v59 keysToFetch:v51];

      ++v24;
      a1 = v56;
      if (v52)
      {
        goto LABEL_15;
      }
    }

    while (v23 != v24);
  }

LABEL_4:

  v26 = objc_allocWithZone(MEMORY[0x1E695D118]);
  sub_1CFBA2D80(0, &unk_1EE04CED8, 0x1E695CD58);
  v27 = sub_1CFC9F898();

  v28 = [v26 initWithContacts_];

  v29 = v60;
  *&v60[OBJC_IVAR____TtC10CallsAppUI24ContactActionsController_controller] = v28;
  v30 = [v28 currentAvailableMenuItems];
  sub_1CFBA2D80(0, &qword_1EE04D0E0, 0x1E69DCC78);
  v31 = sub_1CFC9F8A8();

  swift_beginAccess();
  v80 = v31;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4F02B0, &qword_1CFCA98E8);
  sub_1CFC9DD08();
  swift_endAccess();
  v32 = type metadata accessor for ContactActionsController(0);
  v79.receiver = v29;
  v79.super_class = v32;
  v33 = objc_msgSendSuper2(&v79, sel_init);
  v34 = *&v33[OBJC_IVAR____TtC10CallsAppUI24ContactActionsController_controller];
  v35 = v33;
  [v34 setDelegate_];
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F02E8, &qword_1CFCA9A88);
  v36 = v61;
  sub_1CFC9DD18();
  swift_endAccess();
  sub_1CFBA2D80(0, &qword_1EE04FF80, 0x1E69E9610);
  v37 = sub_1CFC9FC28();
  v81 = v37;
  v38 = sub_1CFC9FBF8();
  v39 = v63;
  (*(*(v38 - 8) + 56))(v63, 1, 1, v38);
  sub_1CFBA57C0(&unk_1EC4F0318, &qword_1EC4F0300, &qword_1CFCA9AA0, MEMORY[0x1E695C068]);
  sub_1CFC72300(&qword_1EE04FF90, &qword_1EE04FF80, 0x1E69E9610, MEMORY[0x1E69E8028]);
  v40 = v64;
  v41 = v65;
  sub_1CFC9DD88();
  sub_1CFBC2FB0(v39, &qword_1EC4EF860, &qword_1CFCA4AD0);

  (*(v62 + 8))(v36, v40);
  v42 = v71;
  sub_1CFC9FE88();
  v43 = [objc_opt_self() mainRunLoop];
  v81 = v43;
  v44 = sub_1CFC9FE78();
  v45 = v73;
  (*(*(v44 - 8) + 56))(v73, 1, 1, v44);
  sub_1CFBA2D80(0, &qword_1EC4F0328, 0x1E695DFD0);
  sub_1CFBA57C0(&qword_1EC4F0330, &qword_1EC4F0308, &qword_1CFCA9AA8, MEMORY[0x1E695BE98]);
  sub_1CFC72300(&qword_1EC4F0338, &qword_1EC4F0328, 0x1E695DFD0, MEMORY[0x1E696A010]);
  v46 = v67;
  v47 = v68;
  sub_1CFC9DD98();
  sub_1CFBC2FB0(v45, &unk_1EC4F02F0, &unk_1CFCA9A90);

  (*(v72 + 8))(v42, v74);
  (*(v66 + 8))(v41, v46);
  swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_1CFBA57C0(&qword_1EC4F0340, &qword_1EC4F0310, &unk_1CFCA9AB0, MEMORY[0x1E695BE50]);
  v48 = v70;
  v49 = sub_1CFC9DDA8();

  (*(v69 + 8))(v47, v48);
  *&v35[OBJC_IVAR____TtC10CallsAppUI24ContactActionsController_cancellable] = v49;

  return v35;
}

void sub_1CFC96CD8(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = *(Strong + OBJC_IVAR____TtC10CallsAppUI24ContactActionsController_deferredElementCompletion);
    v4 = *(Strong + OBJC_IVAR____TtC10CallsAppUI24ContactActionsController_deferredElementCompletion + 8);
    v6 = Strong;
    sub_1CFBB256C(v5, v4);

    if (v5)
    {
      v5(v2);
      sub_1CFBABFA0(v5, v4);
    }
  }
}

id sub_1CFC96E60()
{
  v1 = *&v0[OBJC_IVAR____TtC10CallsAppUI24ContactActionsController_contacts];
  if (v1 >> 62)
  {
    if (sub_1CFC9FFD8())
    {
      goto LABEL_3;
    }

    return 0;
  }

  if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    return 0;
  }

LABEL_3:
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  v8[4] = sub_1CFC98824;
  v8[5] = v2;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 1107296256;
  v8[2] = sub_1CFC970DC;
  v8[3] = &block_descriptor_16;
  v3 = _Block_copy(v8);
  v4 = objc_opt_self();
  v5 = v0;
  v6 = [v4 elementWithProvider_];
  _Block_release(v3);

  return v6;
}

uint64_t sub_1CFC96F8C(void (*a1)(), void (*a2)(), uint64_t a3)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1CFC9DD28();

  if (v12 >> 62)
  {
    v11 = sub_1CFC9FFD8();

    if (!v11)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v6 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);

  if (v6)
  {
LABEL_3:
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1CFC9DD28();

    a1();
  }

LABEL_4:
  v7 = (a3 + OBJC_IVAR____TtC10CallsAppUI24ContactActionsController_deferredElementCompletion);
  v8 = *(a3 + OBJC_IVAR____TtC10CallsAppUI24ContactActionsController_deferredElementCompletion);
  v9 = v7[1];
  *v7 = a1;
  v7[1] = a2;

  return sub_1CFBABFA0(v8, v9);
}

double sub_1CFC970DC(uint64_t a1, void *aBlock)
{
  v2 = *(a1 + 32);
  v3 = _Block_copy(aBlock);
  v4 = swift_allocObject();
  *(v4 + 16) = v3;

  v2(sub_1CFC9882C, v4);

  return result;
}

void sub_1CFC97170(uint64_t a1, uint64_t a2)
{
  sub_1CFBA2D80(0, &qword_1EE04D0E0, 0x1E69DCC78);
  v3 = sub_1CFC9F898();
  (*(a2 + 16))(a2, v3);
}

id sub_1CFC9721C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ContactActionsController(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1CFC97320@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for ContactActionsController(0);
  result = sub_1CFC9DCB8();
  *a2 = result;
  return result;
}

char *sub_1CFC97360(uint64_t a1)
{
  v1 = objc_allocWithZone(type metadata accessor for ContactActionsController(0));

  return sub_1CFC9619C(v2, 0);
}

uint64_t type metadata accessor for ContactActionsController(uint64_t a1)
{
  result = qword_1EE04F618;
  if (!qword_1EE04F618)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1CFC973F4(uint64_t a1)
{
  sub_1CFC974C0(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1CFC974C0(uint64_t a1)
{
  if (!qword_1EC4F02A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC4F02B0, &qword_1CFCA98E8);
    v1 = sub_1CFC9DD48();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC4F02A8);
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

uint64_t sub_1CFC97544(uint64_t a1, unsigned int a2)
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

uint64_t sub_1CFC9758C(uint64_t result, unsigned int a2, unsigned int a3)
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

double sub_1CFC97608()
{
  type metadata accessor for ContactActionsController(0);
  sub_1CFC97758();
  v0 = sub_1CFC9DE98();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1CFC9DD28();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F02C8, &qword_1CFCA9A80);
  sub_1CFBA57C0(&qword_1EC4F02D0, &qword_1EC4F02C8, &qword_1CFCA9A80, MEMORY[0x1E697FDF8]);
  sub_1CFC987D0();
  sub_1CFC9EED8();

  return result;
}

unint64_t sub_1CFC97758()
{
  result = qword_1EC4F02C0;
  if (!qword_1EC4F02C0)
  {
    type metadata accessor for ContactActionsController(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4F02C0);
  }

  return result;
}

void sub_1CFC977B0(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [a1 children];
  sub_1CFBA2D80(0, &qword_1EE04D0E0, 0x1E69DCC78);
  v4 = sub_1CFC9F8A8();

  *a2 = v4;
}

uint64_t sub_1CFC97820(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F03E0, &qword_1CFCA9BB0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F03F0, &qword_1CFCA9BB8);
  sub_1CFBA57C0(&qword_1EC4F03E8, &qword_1EC4F03E0, &qword_1CFCA9BB0, MEMORY[0x1E6981F48]);
  sub_1CFC98D34();
  return sub_1CFC9F208();
}

id sub_1CFC97910@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = [a1 image];
  if (result)
  {
    result = sub_1CFC9F198();
  }

  *a2 = result;
  return result;
}

uint64_t sub_1CFC97950@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v80 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F03B0, &qword_1CFCA9B90);
  v74 = *(v3 - 8);
  v75 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v76 = &v68 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F03B8, &qword_1CFCA9B98);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v68 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F0390, &qword_1CFCA9B80);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v68 - v9;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F03C0, &qword_1CFCA9BA0);
  MEMORY[0x1EEE9AC00](v79);
  v12 = &v68 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F0380, &qword_1CFCA9B78);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v68 - v15;
  v17 = *(a1 + 8);
  objc_opt_self();
  v18 = swift_dynamicCastObjCClass();
  if (v18)
  {
    v19 = v18;
    v20 = swift_allocObject();
    v77 = v13;
    v78 = v8;
    *(v20 + 16) = v19;
    MEMORY[0x1EEE9AC00](v20);
    *(&v68 - 2) = v19;
    v21 = v17;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F03E0, &qword_1CFCA9BB0);
    sub_1CFBA57C0(&qword_1EC4F03E8, &qword_1EC4F03E0, &qword_1CFCA9BB0, MEMORY[0x1E6981F48]);
    sub_1CFC9F298();
    v22 = v77;
    (*(v14 + 16))(v12, v16, v77);
    swift_storeEnumTagMultiPayload();
    sub_1CFBA57C0(&qword_1EC4F0378, &qword_1EC4F0380, &qword_1CFCA9B78, MEMORY[0x1E697D680]);
    sub_1CFC98B94();
    v23 = v80;
    sub_1CFC9E798();

    (*(v14 + 8))(v16, v22);
    v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F0370, &qword_1CFCA9B70);
    return (*(*(v24 - 8) + 56))(v23, 0, 1, v24);
  }

  else
  {
    v26 = v80;
    v27 = v76;
    v71 = v5;
    v72 = v7;
    v73 = v10;
    v70 = v12;
    objc_opt_self();
    v28 = swift_dynamicCastObjCClass();
    if (v28)
    {
      v29 = v28;
      v77 = v13;
      v30 = v17;
      v31 = [v29 options];
      v78 = v8;
      if (v31)
      {
        v76 = v30;
        v41 = v30;
        v42 = [v29 title];
        v43 = sub_1CFC9F768();
        v45 = v44;

        v46 = HIBYTE(v45) & 0xF;
        if ((v45 & 0x2000000000000000) == 0)
        {
          v46 = v43 & 0xFFFFFFFFFFFFLL;
        }

        if (v46)
        {
          v47 = [v29 title];

          v48 = sub_1CFC9F768();
          v50 = v49;

          v81 = v48;
          v82 = v50;
          sub_1CFBB4460();
          v51 = sub_1CFC9EDF8();
          v53 = v52;
          LOBYTE(v48) = v54;
          sub_1CFC9ECD8();
          v55 = v48;
          v56 = sub_1CFC9EDC8();
          v58 = v57;
          LODWORD(v74) = v59;
          v61 = v60;

          sub_1CFBB44C0(v51, v53, v55 & 1);

          v62 = v74 & 1;
          sub_1CFBB45F4(v56, v58, v74 & 1);
        }

        else
        {

          v56 = 0;
          v58 = 0;
          v62 = 0;
          v61 = 0;
        }

        v38 = v70;
        v63 = v72;
        v64 = [v29 children];
        sub_1CFBA2D80(0, &qword_1EE04D0E0, 0x1E69DCC78);
        v65 = sub_1CFC9F8A8();

        sub_1CFBB9654(v56, v58, v62, v61);
        sub_1CFBB74FC(v56, v58, v62, v61);
        *v63 = v56;
        v63[1] = v58;
        v63[2] = v62;
        v63[3] = v61;
        v63[4] = v65;
        swift_storeEnumTagMultiPayload();
        sub_1CFBB9654(v56, v58, v62, v61);

        sub_1CFBB9654(v56, v58, v62, v61);

        v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F03A0, &qword_1CFCA9B88);
        sub_1CFBA57C0(&qword_1EC4F0398, &qword_1EC4F03A0, &qword_1CFCA9B88, MEMORY[0x1E6981F48]);
        sub_1CFBA57C0(&qword_1EC4F03A8, &qword_1EC4F03B0, &qword_1CFCA9B90, MEMORY[0x1E697CD28]);
        v37 = v73;
        sub_1CFC9E798();
        sub_1CFBB74FC(v56, v58, v62, v61);
        sub_1CFBB74FC(v56, v58, v62, v61);

        sub_1CFBB74FC(v56, v58, v62, v61);

        v30 = v76;
      }

      else
      {
        MEMORY[0x1EEE9AC00](v31);
        *(&v68 - 2) = v29;
        MEMORY[0x1EEE9AC00](v32);
        *(&v68 - 2) = v29;
        v69 = v30;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F03C8, &qword_1CFCA9BA8);
        sub_1CFBA57C0(&unk_1EC4F03D0, &qword_1EC4F03C8, &qword_1CFCA9BA8, MEMORY[0x1E697D658]);
        sub_1CFC987D0();
        v33 = v27;
        sub_1CFC9ED08();

        v34 = v74;
        v35 = v27;
        v36 = v75;
        (*(v74 + 16))(v72, v35, v75);
        swift_storeEnumTagMultiPayload();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F03A0, &qword_1CFCA9B88);
        sub_1CFBA57C0(&qword_1EC4F0398, &qword_1EC4F03A0, &qword_1CFCA9B88, MEMORY[0x1E6981F48]);
        sub_1CFBA57C0(&qword_1EC4F03A8, &qword_1EC4F03B0, &qword_1CFCA9B90, MEMORY[0x1E697CD28]);
        v37 = v73;
        sub_1CFC9E798();
        (*(v34 + 8))(v33, v36);
        v38 = v70;
      }

      sub_1CFC98C88(v37, v38);
      swift_storeEnumTagMultiPayload();
      sub_1CFBA57C0(&qword_1EC4F0378, &qword_1EC4F0380, &qword_1CFCA9B78, MEMORY[0x1E697D680]);
      sub_1CFC98B94();
      v66 = v80;
      sub_1CFC9E798();

      sub_1CFBC2FB0(v37, &qword_1EC4F0390, &qword_1CFCA9B80);
      v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F0370, &qword_1CFCA9B70);
      return (*(*(v67 - 8) + 56))(v66, 0, 1, v67);
    }

    else
    {
      v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F0370, &qword_1CFCA9B70);
      v40 = *(*(v39 - 8) + 56);

      return v40(v26, 1, 1, v39);
    }
  }
}

double sub_1CFC98428@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = [a1 title];
  v5 = sub_1CFC9F768();
  v7 = v6;

  v26 = v5;
  v27 = v7;
  sub_1CFBB4460();
  v8 = sub_1CFC9EDF8();
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v15 = [a1 subtitle];
  if (v15)
  {
    v16 = v15;
    sub_1CFC9F768();

    v17 = sub_1CFC9EDF8();
    v19 = v18;
    v21 = v20;
    v23 = v22 & 1;
    sub_1CFBB45F4(v17, v18, v22 & 1);
  }

  else
  {
    v17 = 0;
    v19 = 0;
    v23 = 0;
    v21 = 0;
  }

  v24 = v12 & 1;
  sub_1CFBB45F4(v8, v10, v24);

  sub_1CFBB9654(v17, v19, v23, v21);
  sub_1CFBB74FC(v17, v19, v23, v21);
  *a2 = v8;
  *(a2 + 8) = v10;
  *(a2 + 16) = v24;
  *(a2 + 24) = v14;
  *(a2 + 32) = v17;
  *(a2 + 40) = v19;
  *(a2 + 48) = v23;
  *(a2 + 56) = v21;
  sub_1CFBB74FC(v17, v19, v23, v21);
  sub_1CFBB44C0(v8, v10, v24);

  return result;
}

uint64_t sub_1CFC985D0()
{
  sub_1CFC98868(*v0);
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F0348, &qword_1CFCA9B60);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F0350, &qword_1CFCA9B68);
  sub_1CFBA57C0(&qword_1EC4F0358, &qword_1EC4F0348, &qword_1CFCA9B60, MEMORY[0x1E69E6338]);
  sub_1CFC98A58();
  return sub_1CFC9F3B8();
}

void sub_1CFC986CC(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1CFC9DD28();

  *a2 = v3;
}

uint64_t sub_1CFC9874C(uint64_t *a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  v3 = v2;
  return sub_1CFC9DD38();
}

unint64_t sub_1CFC987D0()
{
  result = qword_1EC4F02D8;
  if (!qword_1EC4F02D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4F02D8);
  }

  return result;
}

unint64_t sub_1CFC98868(unint64_t result)
{
  v1 = result;
  if (result >> 62)
  {
    goto LABEL_35;
  }

  v2 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v3 = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v4 = 0;
    v5 = 0;
    v6 = v1 & 0xC000000000000001;
    v7 = (MEMORY[0x1E69E7CC0] + 32);
    v8 = v1 & 0xFFFFFFFFFFFFFF8;
    v27 = v1 & 0xC000000000000001;
    v28 = v1;
    v26 = v1 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v6)
      {
        result = MEMORY[0x1D3872640](v4, v1);
        v9 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
LABEL_26:
          __break(1u);
          break;
        }
      }

      else
      {
        if (v4 >= *(v8 + 16))
        {
          __break(1u);
LABEL_33:
          __break(1u);
LABEL_34:
          __break(1u);
LABEL_35:
          result = sub_1CFC9FFD8();
          v2 = result;
          goto LABEL_3;
        }

        result = *(v1 + 8 * v4 + 32);
        v9 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
          goto LABEL_26;
        }
      }

      if (!v5)
      {
        v10 = v3[3];
        if (((v10 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_34;
        }

        v11 = v2;
        v12 = result;
        v13 = v10 & 0xFFFFFFFFFFFFFFFELL;
        if (v13 <= 1)
        {
          v14 = 1;
        }

        else
        {
          v14 = v13;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F0400, &qword_1CFCA9BC0);
        v15 = swift_allocObject();
        v16 = _swift_stdlib_malloc_size(v15);
        v17 = v16 - 32;
        if (v16 < 32)
        {
          v17 = v16 - 17;
        }

        v18 = v17 >> 4;
        v15[2] = v14;
        v15[3] = 2 * (v17 >> 4);
        v19 = (v15 + 4);
        v20 = v3[3] >> 1;
        if (v3[2])
        {
          v21 = v3 + 4;
          if (v15 != v3 || v19 >= v21 + 16 * v20)
          {
            memmove(v15 + 4, v21, 16 * v20);
          }

          v3[2] = 0;
        }

        v7 = (v19 + 16 * v20);
        v5 = (v18 & 0x7FFFFFFFFFFFFFFFLL) - v20;

        v3 = v15;
        result = v12;
        v2 = v11;
        v6 = v27;
        v1 = v28;
        v8 = v26;
      }

      v22 = __OFSUB__(v5--, 1);
      if (v22)
      {
        goto LABEL_33;
      }

      *v7 = v4;
      v7[1] = result;
      v7 += 2;
      ++v4;
      if (v9 == v2)
      {
        goto LABEL_28;
      }
    }
  }

  v5 = 0;
LABEL_28:
  v23 = v3[3];
  if (v23 < 2)
  {
    return v3;
  }

  v24 = v23 >> 1;
  v22 = __OFSUB__(v24, v5);
  v25 = v24 - v5;
  if (!v22)
  {
    v3[2] = v25;
    return v3;
  }

  __break(1u);
  return result;
}

unint64_t sub_1CFC98A58()
{
  result = qword_1EC4F0360;
  if (!qword_1EC4F0360)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4F0350, &qword_1CFCA9B68);
    sub_1CFC98ADC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4F0360);
  }

  return result;
}

unint64_t sub_1CFC98ADC()
{
  result = qword_1EC4F0368;
  if (!qword_1EC4F0368)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4F0370, &qword_1CFCA9B70);
    sub_1CFBA57C0(&qword_1EC4F0378, &qword_1EC4F0380, &qword_1CFCA9B78, MEMORY[0x1E697D680]);
    sub_1CFC98B94();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4F0368);
  }

  return result;
}

unint64_t sub_1CFC98B94()
{
  result = qword_1EC4F0388;
  if (!qword_1EC4F0388)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4F0390, &qword_1CFCA9B80);
    sub_1CFBA57C0(&qword_1EC4F0398, &qword_1EC4F03A0, &qword_1CFCA9B88, MEMORY[0x1E6981F48]);
    sub_1CFBA57C0(&qword_1EC4F03A8, &qword_1EC4F03B0, &qword_1CFCA9B90, MEMORY[0x1E697CD28]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4F0388);
  }

  return result;
}

uint64_t sub_1CFC98C88(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F0390, &qword_1CFCA9B80);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1CFC98D34()
{
  result = qword_1EC4F03F8;
  if (!qword_1EC4F03F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4F03F0, &qword_1CFCA9BB8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4F03F8);
  }

  return result;
}

unint64_t sub_1CFC98DB0()
{
  result = qword_1EC4F0408;
  if (!qword_1EC4F0408)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC4F0410, &qword_1CFCA9BC8);
    sub_1CFC98A58();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4F0408);
  }

  return result;
}

id sub_1CFC98E84()
{
  v1 = OBJC_IVAR____TtC10CallsAppUI27VoicemailListViewController____lazy_storage___greetingButtonItem;
  v2 = *(v0 + OBJC_IVAR____TtC10CallsAppUI27VoicemailListViewController____lazy_storage___greetingButtonItem);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC10CallsAppUI27VoicemailListViewController____lazy_storage___greetingButtonItem);
  }

  else
  {
    sub_1CFBA2D80(0, &unk_1EE04D0D0, 0x1E69DC708);
    type metadata accessor for BundleClass();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v5 = [objc_opt_self() bundleForClass_];
    sub_1CFC9BE28();

    sub_1CFBA2D80(0, &qword_1EE04CEF8, 0x1E69DC628);
    swift_allocObject();
    swift_unknownObjectWeakInit();
    v6 = v0;
    sub_1CFC9FDF8();
    v7 = sub_1CFC9FB58();
    v8 = *(v0 + v1);
    *(v6 + v1) = v7;
    v3 = v7;

    v2 = 0;
  }

  v9 = v2;
  return v3;
}

void sub_1CFC99044(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_1CFC99AC8(Strong + OBJC_IVAR____TtC10CallsAppUI27VoicemailListViewController_legacyMailboxService, &v7);
    if (v8)
    {
      sub_1CFBAD070(&v7, v9);
      v4 = v10;
      v5 = v11;
      __swift_project_boxed_opaque_existential_1(v9, v10);
      v6 = (*(v5 + 24))(v4, v5);
      [v3 presentViewController:v6 animated:1 completion:0];

      __swift_destroy_boxed_opaque_existential_1Tm(v9);
    }

    else
    {
      sub_1CFC9A5E8(&v7);
    }
  }
}

char *VoicemailListViewController.init(dataSource:legacyMailboxService:mailbox:)(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = a3;
  *(v4 + OBJC_IVAR____TtC10CallsAppUI27VoicemailListViewController____lazy_storage___greetingButtonItem) = 0;
  *(v4 + OBJC_IVAR____TtC10CallsAppUI27VoicemailListViewController_dataSource) = a1;
  sub_1CFC99AC8(a2, v4 + OBJC_IVAR____TtC10CallsAppUI27VoicemailListViewController_legacyMailboxService);
  type metadata accessor for DetailsPresenter(0);
  v8 = swift_allocObject();
  swift_unknownObjectWeakInit();
  *(v8 + 72) = 0;
  v9 = OBJC_IVAR____TtC10CallsAppUI16DetailsPresenter_recentGroupCallItemInDetailsView;
  v10 = sub_1CFC9C448();
  (*(*(v10 - 8) + 56))(v8 + v9, 1, 1, v10);
  *(v8 + OBJC_IVAR____TtC10CallsAppUI16DetailsPresenter_contactDetailsCoordinator) = 0;
  *(v8 + 16) = a1;
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  *(v8 + 64) = 0;
  *(v8 + 32) = 0u;
  *(v8 + 48) = 0u;
  *(v4 + OBJC_IVAR____TtC10CallsAppUI27VoicemailListViewController_detailsPresenter) = v8;
  sub_1CFC99AC8(a2, v50);
  *&v48 = v5;
  BYTE8(v48) = 0;
  type metadata accessor for VoicemailsSectionController(0);
  swift_allocObject();
  v11 = a1;

  v47 = v11;
  v12 = sub_1CFC16EEC(v11, v8, v50, &v48);
  *(v4 + OBJC_IVAR____TtC10CallsAppUI27VoicemailListViewController_section) = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EFD60, &unk_1CFCA8700);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1CFCA1DD0;
  v14 = sub_1CFC9A590();
  *(v13 + 32) = v12;
  *(v13 + 40) = v14;

  SectionnedCollectionViewController.init(sections:)(v13);
  v16 = v15;
  *(*&v15[OBJC_IVAR____TtC10CallsAppUI27VoicemailListViewController_section] + OBJC_IVAR____TtC10CallsAppUI27VoicemailsSectionController_delegate + 8) = &protocol witness table for VoicemailListViewController;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectWeakAssign();
  v17 = v16;
  v18 = [v17 navigationItem];
  sub_1CFC140F0(v5);
  v19 = sub_1CFC9F728();

  [v18 setTitle_];

  LODWORD(v18) = sub_1CFC9D758();
  if (v18 == sub_1CFC9D758() || (v20 = sub_1CFC9D758(), v20 == sub_1CFC9D758()))
  {
    v21 = [v17 navigationItem];
    type metadata accessor for BundleClass();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v23 = [objc_opt_self() bundleForClass_];
    sub_1CFC9BE28();

    v51 = type metadata accessor for VoicemailListViewController();
    v50[0] = v17;
    v24 = sub_1CFC9F728();

    v25 = v51;
    if (v51)
    {
      v26 = __swift_project_boxed_opaque_existential_1(v50, v51);
      v27 = *(v25 - 8);
      v28 = MEMORY[0x1EEE9AC00](v26);
      v30 = &v47 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v27 + 16))(v30, v28);
      v31 = sub_1CFCA02A8();
      (*(v27 + 8))(v30, v25);
      __swift_destroy_boxed_opaque_existential_1Tm(v50);
    }

    else
    {
      v31 = 0;
    }

    v32 = [objc_allocWithZone(MEMORY[0x1E69DC708]) initWithTitle:v24 style:0 target:v31 action:sel_clearAllButtonTappedWithSender_];

    swift_unknownObjectRelease();
    [v21 setRightBarButtonItem_];
  }

  else
  {

    v34 = [v17 editButtonItem];
    type metadata accessor for BundleClass();
    v35 = swift_getObjCClassFromMetadata();
    v36 = [objc_opt_self() bundleForClass_];
    sub_1CFC9BE28();

    v37 = sub_1CFC9F728();

    [v34 setTitle_];

    v38 = [objc_opt_self() shared];
    v39 = [v38 current];

    v40 = [v17 navigationItem];
    v41 = [v17 editButtonItem];
    if (v39)
    {
      [v40 setRightBarButtonItem_];
    }

    else
    {
      [v40 setLeftBarButtonItem_];

      sub_1CFC99AC8(v17 + OBJC_IVAR____TtC10CallsAppUI27VoicemailListViewController_legacyMailboxService, &v48);
      if (v49)
      {
        sub_1CFBAD070(&v48, v50);
        v42 = v51;
        v43 = v52;
        __swift_project_boxed_opaque_existential_1(v50, v51);
        v44 = (*(v43 + 16))(v42, v43);
        __swift_destroy_boxed_opaque_existential_1Tm(v50);
        if ((v44 & 1) == 0)
        {
          sub_1CFC9A5E8(a2);

          return v17;
        }
      }

      else
      {
        sub_1CFC9A5E8(&v48);
      }

      v45 = [v17 navigationItem];
      v46 = sub_1CFC98E84();
      [v45 setRightBarButtonItem_];
    }
  }

  sub_1CFC9A5E8(a2);
  return v17;
}

uint64_t sub_1CFC998E8(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  sub_1CFC9F968();
  v2[4] = sub_1CFC9F958();
  v4 = sub_1CFC9F938();
  v2[5] = v4;
  v2[6] = v3;

  return MEMORY[0x1EEE6DFA0](sub_1CFC99980, v4, v3);
}

uint64_t sub_1CFC99980()
{
  v1 = swift_task_alloc();
  *(v0 + 56) = v1;
  *v1 = v0;
  v1[1] = sub_1CFC67BD0;
  v2 = *(v0 + 16);

  return sub_1CFC8B30C(v2);
}

uint64_t sub_1CFC99A24()
{
  sub_1CFC99AC8(v0 + OBJC_IVAR____TtC10CallsAppUI27VoicemailListViewController_legacyMailboxService, &v5);
  if (v6)
  {
    sub_1CFBAD070(&v5, v7);
    v1 = v8;
    v2 = v9;
    __swift_project_boxed_opaque_existential_1(v7, v8);
    v3 = (*(v2 + 16))(v1, v2);
    __swift_destroy_boxed_opaque_existential_1Tm(v7);
  }

  else
  {
    sub_1CFC9A5E8(&v5);
    v3 = 1;
  }

  return v3 & 1;
}

uint64_t sub_1CFC99AC8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EE538, qword_1CFCA9BD0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1CFC99B38(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = [Strong navigationController];

    if (v3)
    {
      v4 = [v3 popViewControllerAnimated_];
    }
  }
}

void sub_1CFC99CB4(__int16 a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for BundleClass();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v6 = objc_opt_self();
  v7 = [v6 bundleForClass_];
  sub_1CFC9BE28();

  v8 = sub_1CFC9F728();

  v9 = [objc_opt_self() alertControllerWithTitle:0 message:v8 preferredStyle:{0, 0xE000000000000000}];

  v10 = [v6 &:ObjCClassFromMetadata OBJC:? LABEL:? PROTOCOL:? :? :?UISearchControllerDelegate + 3];
  sub_1CFC9BE28();

  v11 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v12 = swift_allocObject();
  *(v12 + 16) = v11;
  *(v12 + 24) = a1;
  *(v12 + 32) = a2;
  *(v12 + 40) = a3;

  sub_1CFBB2568(a2, a3);
  v13 = sub_1CFC9F728();

  aBlock[4] = sub_1CFC9A814;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1CFBDBE60;
  aBlock[3] = &block_descriptor_17;
  v14 = _Block_copy(aBlock);

  v15 = objc_opt_self();
  v16 = [v15 actionWithTitle:v13 style:2 handler:{v14, 0xE000000000000000}];
  _Block_release(v14);

  v17 = [v6 bundleForClass_];
  sub_1CFC9BE28();

  v18 = sub_1CFC9F728();

  v19 = [v15 actionWithTitle:v18 style:1 handler:{0, 0xE000000000000000}];

  [v9 addAction_];
  [v9 addAction_];
  v20 = [v9 popoverPresentationController];
  if (v20)
  {
    v21 = v20;
    v22 = [v24 navigationItem];
    v23 = [v22 rightBarButtonItem];

    [v21 setSourceItem_];
  }

  [v24 presentViewController:v9 animated:1 completion:0];
}

void sub_1CFC9A0FC(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;

    sub_1CFC13254(a3);
  }

  if (a4)
  {
    a4(Strong);
  }
}

void sub_1CFC9A1D0()
{
  sub_1CFC9A5E8(v0 + OBJC_IVAR____TtC10CallsAppUI27VoicemailListViewController_legacyMailboxService);

  v1 = *(v0 + OBJC_IVAR____TtC10CallsAppUI27VoicemailListViewController____lazy_storage___greetingButtonItem);
}

id VoicemailListViewController.__deallocating_deinit(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for VoicemailListViewController();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

void VoicemailListViewController.presentVoicemails(mailbox:)(uint64_t a1)
{
  v2 = v1;
  v4 = *&v2[OBJC_IVAR____TtC10CallsAppUI27VoicemailListViewController_dataSource];
  sub_1CFC99AC8(&v2[OBJC_IVAR____TtC10CallsAppUI27VoicemailListViewController_legacyMailboxService], v6);
  objc_allocWithZone(type metadata accessor for VoicemailListViewController());
  v5 = VoicemailListViewController.init(dataSource:legacyMailboxService:mailbox:)(v4, v6, a1);
  [v2 showDetailViewController:v5 sender:v2];
}

Swift::Void __swiftcall VoicemailListViewController.presentAccountProvisioning()()
{
  v1 = v0;
  sub_1CFC99AC8(v0 + OBJC_IVAR____TtC10CallsAppUI27VoicemailListViewController_legacyMailboxService, &v5);
  if (v6)
  {
    sub_1CFBAD070(&v5, v7);
    v2 = v8;
    v3 = v9;
    __swift_project_boxed_opaque_existential_1(v7, v8);
    v4 = (*(v3 + 40))(v2, v3);
    [v1 presentViewController:v4 animated:1 completion:0];

    __swift_destroy_boxed_opaque_existential_1Tm(v7);
  }

  else
  {
    sub_1CFC9A5E8(&v5);
  }
}

void sub_1CFC9A4F8(uint64_t a1)
{
  v2 = v1;
  v4 = *&v2[OBJC_IVAR____TtC10CallsAppUI27VoicemailListViewController_dataSource];
  sub_1CFC99AC8(&v2[OBJC_IVAR____TtC10CallsAppUI27VoicemailListViewController_legacyMailboxService], v6);
  objc_allocWithZone(type metadata accessor for VoicemailListViewController());
  v5 = VoicemailListViewController.init(dataSource:legacyMailboxService:mailbox:)(v4, v6, a1);
  [v2 showDetailViewController:v5 sender:v2];
}

unint64_t sub_1CFC9A590()
{
  result = qword_1EC4EFAC0;
  if (!qword_1EC4EFAC0)
  {
    type metadata accessor for VoicemailsSectionController(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4EFAC0);
  }

  return result;
}

uint64_t sub_1CFC9A5E8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EE538, qword_1CFCA9BD0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t dispatch thunk of VoicemailListViewController.presentVoicemailDetails(uuid:)(uint64_t a1)
{
  v4 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x240);
  v7 = (v4 + *v4);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1CFBD431C;

  return v7(a1);
}

CallsAppUI::SimpleCallViewModel __swiftcall SimpleCallViewModel.init(headerLabel:callButtonLabel:)(Swift::String headerLabel, Swift::String callButtonLabel)
{
  *v2 = headerLabel;
  v2[1] = callButtonLabel;
  result.callButtonLabel = callButtonLabel;
  result.headerLabel = headerLabel;
  return result;
}

uint64_t sub_1CFC9A850()
{
  if (*v0)
  {
    return 0x747475426C6C6163;
  }

  else
  {
    return 0x614C726564616568;
  }
}

void sub_1CFC9A8A0(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x614C726564616568 && a2 == 0xEB000000006C6562;
  if (v6 || (sub_1CFCA02B8() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x747475426C6C6163 && a2 == 0xEF6C6562614C6E6FLL)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_1CFCA02B8();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
}

uint64_t sub_1CFC9A994(uint64_t a1)
{
  v2 = sub_1CFC9ABA0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CFC9A9D0(uint64_t a1)
{
  v2 = sub_1CFC9ABA0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SimpleCallViewModel.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F0448, &qword_1CFCA9C60);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v10 - v5;
  v7 = *(v1 + 16);
  v10[1] = *(v1 + 24);
  v10[2] = v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1CFC9ABA0();
  sub_1CFCA0398();
  v12 = 0;
  v8 = v10[3];
  sub_1CFCA0268();
  if (!v8)
  {
    v11 = 1;
    sub_1CFCA0268();
  }

  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_1CFC9ABA0()
{
  result = qword_1EC4F0450;
  if (!qword_1EC4F0450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4F0450);
  }

  return result;
}

void SimpleCallViewModel.init(from:)(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F0458, &qword_1CFCA9C68);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v15 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1CFC9ABA0();
  sub_1CFCA0388();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  else
  {
    v18 = 0;
    v9 = sub_1CFCA0258();
    v11 = v10;
    v16 = v9;
    v17 = 1;
    v12 = sub_1CFCA0258();
    v14 = v13;
    (*(v6 + 8))(v8, v5);
    *a2 = v16;
    a2[1] = v11;
    a2[2] = v12;
    a2[3] = v14;

    __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }
}

void *SimpleCallView.init(initialModel:text:onCallButtonPressed:)@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, void *a8@<X8>)
{
  result = sub_1CFC9F228();
  *a8 = a6;
  a8[1] = a7;
  a8[7] = a2;
  a8[8] = a3;
  a8[9] = a4;
  a8[10] = a5;
  return result;
}

uint64_t SimpleCallView.body.getter@<X0>(uint64_t a2@<X8>)
{
  v4 = *(v2 + 48);
  v8[2] = *(v2 + 32);
  v8[3] = v4;
  v8[4] = *(v2 + 64);
  v9 = *(v2 + 80);
  v5 = *(v2 + 16);
  v8[0] = *v2;
  v8[1] = v5;
  *a2 = sub_1CFC9E678();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F0460, &qword_1CFCA9C70);
  return sub_1CFC9AF28(v8, (a2 + *(v6 + 44)));
}

uint64_t sub_1CFC9AF28@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v43 = a2;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EF670, &qword_1CFCA3640);
  v41 = *(v42 - 8);
  MEMORY[0x1EEE9AC00](v42);
  v40 = &v36 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v45 = &v36 - v5;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F0490, &qword_1CFCA9F00);
  v38 = *(v39 - 8);
  v6 = v38;
  MEMORY[0x1EEE9AC00](v39);
  v44 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v36 - v9;
  v11 = *(a1 + 32);
  v55 = *(a1 + 16);
  v56 = v11;
  v57 = *(a1 + 48);
  v12 = *(a1 + 32);
  v46 = *(a1 + 16);
  v47 = v12;
  v48 = *(a1 + 48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F0498, &qword_1CFCA9F08);
  sub_1CFC9F238();
  v14 = v51;
  v13 = v52;

  v15 = *(a1 + 72);
  v46 = *(a1 + 56);
  v47 = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F04A0, &qword_1CFCA9F10);
  sub_1CFC9F378();
  *&v46 = v14;
  *(&v46 + 1) = v13;
  sub_1CFBB4460();
  v16 = v10;
  v37 = v10;
  sub_1CFC9F598();
  v46 = v55;
  v47 = v56;
  v48 = v57;
  sub_1CFC9F238();
  v17 = v53;
  v18 = v54;

  v49 = v17;
  v50 = v18;
  v19 = swift_allocObject();
  v20 = *(a1 + 48);
  *(v19 + 48) = *(a1 + 32);
  *(v19 + 64) = v20;
  *(v19 + 80) = *(a1 + 64);
  *(v19 + 96) = *(a1 + 80);
  v21 = *(a1 + 16);
  *(v19 + 16) = *a1;
  *(v19 + 32) = v21;
  sub_1CFC9B774(a1, &v46);
  v22 = v45;
  sub_1CFC9F2C8();
  v23 = *(v6 + 16);
  v24 = v44;
  v25 = v39;
  v23(v44, v16, v39);
  v26 = v41;
  v27 = *(v41 + 16);
  v28 = v40;
  v29 = v22;
  v30 = v42;
  v27(v40, v29, v42);
  v31 = v43;
  v23(v43, v24, v25);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F04A8, qword_1CFCA9F18);
  v27(&v31[*(v32 + 48)], v28, v30);
  v33 = *(v26 + 8);
  v33(v45, v30);
  v34 = *(v38 + 8);
  v34(v37, v25);
  v33(v28, v30);
  return (v34)(v44, v25);
}

uint64_t sub_1CFC9B408@<X0>(uint64_t a2@<X8>)
{
  v4 = *(v2 + 48);
  v8[2] = *(v2 + 32);
  v8[3] = v4;
  v8[4] = *(v2 + 64);
  v9 = *(v2 + 80);
  v5 = *(v2 + 16);
  v8[0] = *v2;
  v8[1] = v5;
  *a2 = sub_1CFC9E678();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F0460, &qword_1CFCA9C70);
  return sub_1CFC9AF28(v8, (a2 + *(v6 + 44)));
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_1CFC9B490(uint64_t a1, int a2)
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

uint64_t sub_1CFC9B4D8(uint64_t result, int a2, int a3)
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

__n128 __swift_memcpy88_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_1CFC9B54C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
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

uint64_t sub_1CFC9B594(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
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

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1CFC9B5F8()
{
  result = qword_1EC4F0468;
  if (!qword_1EC4F0468)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4F0470, &qword_1CFCA9DD8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4F0468);
  }

  return result;
}

unint64_t sub_1CFC9B670()
{
  result = qword_1EC4F0478;
  if (!qword_1EC4F0478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4F0478);
  }

  return result;
}

unint64_t sub_1CFC9B6C8()
{
  result = qword_1EC4F0480;
  if (!qword_1EC4F0480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4F0480);
  }

  return result;
}

unint64_t sub_1CFC9B720()
{
  result = qword_1EC4F0488;
  if (!qword_1EC4F0488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4F0488);
  }

  return result;
}

BOOL __isOSVersionAtLeast(int a1, int a2, int a3)
{
  if (qword_1EC4F2A00 == -1)
  {
    v3 = _MergedGlobals < a1;
    if (_MergedGlobals > a1)
    {
      return 1;
    }
  }

  else
  {
    v5 = a3;
    v6 = a2;
    __isOSVersionAtLeast_cold_1();
    a2 = v6;
    a3 = v5;
    v3 = _MergedGlobals < a1;
    if (_MergedGlobals > a1)
    {
      return 1;
    }
  }

  if (v3)
  {
    return 0;
  }

  if (dword_1EC4F29F4 > a2)
  {
    return 1;
  }

  if (dword_1EC4F29F4 < a2)
  {
    return 0;
  }

  return dword_1EC4F29F8 >= a3;
}

uint64_t __isPlatformVersionAtLeast(int a1, int a2, int a3, int a4)
{
  if (qword_1EC4F2A08 == -1)
  {
    if (qword_1EC4F2A10)
    {
      return _availability_version_check();
    }
  }

  else
  {
    v5 = a4;
    v6 = a3;
    v7 = a2;
    __isPlatformVersionAtLeast_cold_1();
    a2 = v7;
    a3 = v6;
    a4 = v5;
    if (qword_1EC4F2A10)
    {
      return _availability_version_check();
    }
  }

  if (qword_1EC4F2A00 != -1)
  {
    v9 = a4;
    v10 = a3;
    v11 = a2;
    __isOSVersionAtLeast_cold_1();
    a3 = v10;
    a4 = v9;
    v8 = _MergedGlobals < v11;
    if (_MergedGlobals > v11)
    {
      return 1;
    }

LABEL_7:
    if (!v8)
    {
      if (dword_1EC4F29F4 > a3)
      {
        return 1;
      }

      if (dword_1EC4F29F4 >= a3)
      {
        return dword_1EC4F29F8 >= a4;
      }
    }

    return 0;
  }

  v8 = _MergedGlobals < a2;
  if (_MergedGlobals <= a2)
  {
    goto LABEL_7;
  }

  return 1;
}

uint64_t _initializeAvailabilityCheck(uint64_t result)
{
  v29 = *MEMORY[0x1E69E9840];
  v1 = qword_1EC4F2A10;
  if (qword_1EC4F2A10)
  {
    v2 = result == 0;
  }

  else
  {
    v2 = 0;
  }

  if (!v2)
  {
    if (MEMORY[0x1EEE9AC60])
    {
      v1 = MEMORY[0x1EEE9AC60];
      qword_1EC4F2A10 = MEMORY[0x1EEE9AC60];
    }

    if (v1)
    {
      v3 = result == 0;
    }

    else
    {
      v3 = 0;
    }

    if (!v3)
    {
      result = dlsym(0xFFFFFFFFFFFFFFFELL, "kCFAllocatorNull");
      if (result)
      {
        v4 = *result;
        result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFDataCreateWithBytesNoCopy");
        if (result)
        {
          v5 = result;
          v6 = dlsym(0xFFFFFFFFFFFFFFFELL, "CFPropertyListCreateWithData");
          result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFPropertyListCreateFromXMLData");
          if (v6 | result)
          {
            v7 = result;
            result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringCreateWithCStringNoCopy");
            if (result)
            {
              v8 = result;
              result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFDictionaryGetValue");
              if (result)
              {
                v9 = result;
                result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFGetTypeID");
                if (result)
                {
                  v10 = result;
                  result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringGetTypeID");
                  if (result)
                  {
                    v11 = result;
                    result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringGetCString");
                    v27 = result;
                    if (result)
                    {
                      result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFRelease");
                      if (result)
                      {
                        v12 = result;
                        result = fopen("/System/Library/CoreServices/SystemVersion.plist", "r");
                        if (result)
                        {
                          v13 = result;
                          v26 = v12;
                          fseek(result, 0, 2);
                          v14 = MEMORY[0x1D3872B70](v13);
                          if (v14 < 0)
                          {
                            v16 = 0;
                          }

                          else
                          {
                            v15 = v14;
                            rewind(v13);
                            v16 = malloc(v15);
                            if (v16)
                            {
                              v25 = v16;
                              if (fread(v16, 1uLL, v15, v13) == v15 && (v17 = v5(0, v25, v15, v4)) != 0)
                              {
                                v18 = v17;
                                if (v6)
                                {
                                  v19 = (v6)(0, v17, 0, 0, 0);
                                }

                                else
                                {
                                  v19 = v7(0, v17, 0, 0);
                                }

                                v20 = v19;
                                if (v19)
                                {
                                  v21 = v8(0, "ProductVersion", 1536, v4);
                                  if (v21)
                                  {
                                    v22 = v21;
                                    v23 = v9(v20, v21);
                                    (v26)(v22);
                                    if (v23)
                                    {
                                      v24 = v10(v23);
                                      if (v24 == v11())
                                      {
                                        if (v27(v23, v28, 32, 134217984))
                                        {
                                          sscanf(v28, "%d.%d.%d", &_MergedGlobals, &dword_1EC4F29F4, &dword_1EC4F29F8);
                                        }
                                      }
                                    }
                                  }

                                  (v26)(v20);
                                }

                                (v26)(v18);
                                v16 = v25;
                              }

                              else
                              {
                                v16 = v25;
                              }
                            }
                          }

                          free(v16);
                          return fclose(v13);
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
  }

  return result;
}