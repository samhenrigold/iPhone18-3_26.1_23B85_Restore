uint64_t sub_2556C5530(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

uint64_t ProtectedData.suspendUntilProtectedDataIsAvailable()(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE860, &qword_255758010);
  v3[5] = v5;
  v3[6] = *(v5 - 8);
  v3[7] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE868, &qword_255758020);
  v3[8] = v6;
  v3[9] = *(v6 - 8);
  v3[10] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE870, &qword_255758028);
  v3[11] = v7;
  v3[12] = *(v7 - 8);
  v3[13] = swift_task_alloc();
  if (a1)
  {
    swift_getObjectType();
    v8 = sub_255750490();
    v10 = v9;
  }

  else
  {
    v8 = 0;
    v10 = 0;
  }

  v3[14] = v8;
  v3[15] = v10;

  return MEMORY[0x2822009F8](sub_2556C5788, v8, v10);
}

uint64_t sub_2556C5788()
{
  if (MKBGetDeviceLockState() - 1 > 1)
  {

    v8 = v0[1];

    return v8();
  }

  else
  {
    v2 = v0[9];
    v1 = v0[10];
    v3 = v0[8];
    (*(v0[6] + 104))(v0[7], *MEMORY[0x277D85778], v0[5]);
    sub_255750520();
    sub_255750500();
    (*(v2 + 8))(v1, v3);
    v4 = swift_task_alloc();
    v0[16] = v4;
    *v4 = v0;
    v4[1] = sub_2556C5934;
    v5 = v0[11];
    v6 = v0[2];
    v7 = v0[3];

    return MEMORY[0x2822003E8](v0 + 17, v6, v7, v5);
  }
}

uint64_t sub_2556C5934()
{
  v1 = *v0;

  v2 = *(v1 + 120);
  v3 = *(v1 + 112);

  return MEMORY[0x2822009F8](sub_2556C5A54, v3, v2);
}

uint64_t sub_2556C5A54()
{
  if (*(v0 + 136))
  {
    v1 = *(v0 + 136) == 3;
  }

  else
  {
    v1 = 1;
  }

  if (v1)
  {
    (*(*(v0 + 96) + 8))(*(v0 + 104), *(v0 + 88));

    v2 = *(v0 + 8);

    return v2();
  }

  else
  {
    v4 = swift_task_alloc();
    *(v0 + 128) = v4;
    *v4 = v0;
    v4[1] = sub_2556C5934;
    v5 = *(v0 + 88);
    v6 = *(v0 + 16);
    v7 = *(v0 + 24);

    return MEMORY[0x2822003E8](v0 + 136, v6, v7, v5);
  }
}

uint64_t ProtectedData.__deallocating_deinit()
{
  sub_255674B20(v0 + 24, &qword_27F7BE878, &qword_255758030);

  return swift_deallocClassInstance();
}

unint64_t sub_2556C5BF0()
{
  result = qword_27F7BE880;
  if (!qword_27F7BE880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7BE880);
  }

  return result;
}

void sub_2556C5C5C(uint64_t a1)
{
  v3 = *(sub_25574F0D0() - 8);
  v4 = *(v1 + 16);
  v5 = v1 + ((*(v3 + 80) + 24) & ~*(v3 + 80));

  sub_2556C4E78(a1, v4, v5);
}

uint64_t sub_2556C5CD0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = sub_25567AF04(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v21 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_255742E24();
      v9 = v21;
    }

    v10 = *(v9 + 48);
    v11 = sub_25574F0D0();
    (*(*(v11 - 8) + 8))(v10 + *(*(v11 - 8) + 72) * v7, v11);
    v12 = *(v9 + 56);
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE180, &unk_255755E10);
    v20 = *(v13 - 8);
    (*(v20 + 32))(a2, v12 + *(v20 + 72) * v7, v13);
    sub_2556C6050(v7, v9);
    *v3 = v9;
    v14 = *(v20 + 56);
    v15 = a2;
    v16 = 0;
    v17 = v13;
  }

  else
  {
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE180, &unk_255755E10);
    v14 = *(*(v18 - 8) + 56);
    v17 = v18;
    v15 = a2;
    v16 = 1;
  }

  return v14(v15, v16, 1, v17);
}

void sub_2556C5E88(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_2557509C0() + 1) & ~v5;
    do
    {
      v9 = *(*(a2 + 48) + 8 * v6);
      sub_2557501B0();
      sub_255750F80();
      v10 = v9;
      sub_2557501F0();
      v11 = sub_255750FD0();

      v12 = v11 & v7;
      if (v3 >= v8)
      {
        if (v12 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v12 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v12)
      {
LABEL_10:
        v13 = *(a2 + 48);
        v14 = (v13 + 8 * v3);
        v15 = (v13 + 8 * v6);
        if (v3 != v6 || v14 >= v15 + 1)
        {
          *v14 = *v15;
        }

        v16 = *(a2 + 56);
        v17 = (v16 + 8 * v3);
        v18 = (v16 + 8 * v6);
        if (v3 != v6 || v17 >= v18 + 1)
        {
          *v17 = *v18;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v19 = *(a2 + 16);
  v20 = __OFSUB__(v19, 1);
  v21 = v19 - 1;
  if (v20)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v21;
    ++*(a2 + 36);
  }
}

unint64_t sub_2556C6050(int64_t a1, uint64_t a2)
{
  v4 = sub_25574F0D0();
  v5 = *(v4 - 8);
  result = MEMORY[0x28223BE20](v4);
  v8 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a2 + 64;
  v10 = -1 << *(a2 + 32);
  v11 = (a1 + 1) & ~v10;
  if ((*(a2 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    v13 = sub_2557509C0();
    v14 = v12;
    v41 = (v13 + 1) & v12;
    v16 = *(v5 + 16);
    v15 = v5 + 16;
    v42 = *(v15 + 56);
    v39 = (v15 - 8);
    v40 = v16;
    do
    {
      v17 = v9;
      v18 = v42 * v11;
      v19 = v14;
      v20 = v15;
      v40(v8, *(a2 + 48) + v42 * v11, v4);
      sub_2556C635C();
      v21 = sub_255750090();
      result = (*v39)(v8, v4);
      v14 = v19;
      v22 = v21 & v19;
      if (a1 >= v41)
      {
        if (v22 >= v41 && a1 >= v22)
        {
LABEL_15:
          v25 = *(a2 + 48);
          v26 = v25 + v42 * a1;
          v27 = v25 + v18 + v42;
          v28 = v42 * a1 < v18 || v26 >= v27;
          v15 = v20;
          if (v28)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v42 * a1 != v18)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v29 = *(a2 + 56);
          v30 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE180, &unk_255755E10) - 8) + 72);
          v31 = v30 * a1;
          result = v29 + v30 * a1;
          v32 = v30 * v11;
          v33 = v29 + v30 * v11 + v30;
          if (v31 < v32 || result >= v33)
          {
            result = swift_arrayInitWithTakeFrontToBack();
            a1 = v11;
            v9 = v17;
            v14 = v19;
          }

          else
          {
            a1 = v11;
            v35 = v31 == v32;
            v9 = v17;
            v14 = v19;
            if (!v35)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v14 = v19;
              a1 = v11;
            }
          }

          goto LABEL_4;
        }
      }

      else if (v22 >= v41 || a1 >= v22)
      {
        goto LABEL_15;
      }

      v15 = v20;
      v9 = v17;
LABEL_4:
      v11 = (v11 + 1) & v14;
    }

    while (((*(v9 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v36 = *(a2 + 16);
  v37 = __OFSUB__(v36, 1);
  v38 = v36 - 1;
  if (v37)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v38;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_2556C635C()
{
  result = qword_27F7BE0B0;
  if (!qword_27F7BE0B0)
  {
    sub_25574F0D0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7BE0B0);
  }

  return result;
}

uint64_t CRAttributedString<>.minimumAppVersion.getter@<X0>(_BYTE *a1@<X8>)
{
  v39 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE8A8, &unk_255758170);
  v2 = MEMORY[0x28223BE20](v1 - 8);
  v4 = &v37 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v38 = &v37 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE8B0, &unk_25575B400);
  v41 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v43 = &v37 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE8B8, &unk_255758180);
  v40 = *(v8 - 8);
  v9 = MEMORY[0x28223BE20](v8);
  v11 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v37 - v13;
  MEMORY[0x28223BE20](v12);
  v16 = &v37 - v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE798, &qword_255757E30);
  sub_25574F9C0();
  KeyPath = swift_getKeyPath();
  sub_2556C6C48(&qword_27F7BE8C8, MEMORY[0x277CFB620]);
  v17 = sub_2557502A0();
  v50 = MEMORY[0x277D84F90];
  sub_2556A9C98(0, v17 & ~(v17 >> 63), 0);
  v18 = v50;
  v19 = *(v40 + 16);
  v37 = v16;
  v19(v11, v16, v8);
  v46 = v14;
  v47 = v8;
  result = sub_255750290();
  if (v17 < 0)
  {
    __break(1u);
LABEL_18:
    __break(1u);
    return result;
  }

  if (v17)
  {
    v21 = (v41 + 48);
    v22 = (v41 + 8);
    v44 = sub_2556C6C48(&qword_27F7BE8D0, MEMORY[0x277CFB628]);
    do
    {
      sub_255750960();
      result = (*v21)(v4, 1, v6);
      if (result == 1)
      {
        goto LABEL_18;
      }

      swift_getAtKeyPath();
      (*v22)(v4, v6);
      v23 = v49;
      v50 = v18;
      v25 = *(v18 + 16);
      v24 = *(v18 + 24);
      if (v25 >= v24 >> 1)
      {
        sub_2556A9C98((v24 > 1), v25 + 1, 1);
        v18 = v50;
      }

      *(v18 + 16) = v25 + 1;
      *(v18 + v25 + 32) = v23;
    }

    while (--v17);
  }

  v26 = sub_2556C6C48(&qword_27F7BE8D0, MEMORY[0x277CFB628]);
  v27 = v38;
  v44 = v26;
  sub_255750960();
  v28 = v41;
  v42 = *(v41 + 48);
  if (v42(v27, 1, v6) != 1)
  {
    v41 = *(v28 + 32);
    v32 = (v28 + 8);
    do
    {
      v33 = v43;
      (v41)(v43, v27, v6);
      swift_getAtKeyPath();
      (*v32)(v33, v6);
      v34 = v48;
      v50 = v18;
      v36 = *(v18 + 16);
      v35 = *(v18 + 24);
      if (v36 >= v35 >> 1)
      {
        sub_2556A9C98((v35 > 1), v36 + 1, 1);
        v18 = v50;
      }

      *(v18 + 16) = v36 + 1;
      *(v18 + v36 + 32) = v34;
      sub_255750960();
    }

    while (v42(v27, 1, v6) != 1);
  }

  v29 = *(v40 + 8);
  v30 = v47;
  v29(v46, v47);
  v29(v37, v30);
  sub_2556C6C98(v27);
  sub_2556C6920(v18, &v51);

  v31 = v51;
  if (v51 == 3)
  {
    v31 = 0;
  }

  *v39 = v31;
  return result;
}

uint64_t sub_2556C6920@<X0>(uint64_t result@<X0>, _BYTE *a2@<X8>)
{
  v2 = *(result + 16);
  if (v2)
  {
    v3 = *(result + 32);
    v4 = v2 - 1;
    if (v4)
    {
      v5 = (result + 33);
      do
      {
        v7 = *v5++;
        v6 = v7;
        if ((0x3F203E90000uLL >> (16 * v3)) < (0x3F203E90000uLL >> (16 * v7)))
        {
          v3 = v6;
        }

        --v4;
      }

      while (v4);
    }

    *a2 = v3;
  }

  else
  {
    *a2 = 3;
  }

  return result;
}

uint64_t sub_2556C6980@<X0>(uint64_t result@<X0>, _WORD *a2@<X8>)
{
  v2 = *(result + 16);
  if (v2)
  {
    v3 = *(result + 32);
    v4 = *(result + 33);
    v5 = v2 - 1;
    if (!v5)
    {
LABEL_3:
      *a2 = v3 | (v4 << 8);
      return result;
    }

    v6 = (result + 35);
    while (1)
    {
      result = *(v6 - 1);
      v8 = *v6;
      v9 = (0x3F203E90000uLL >> (16 * v3));
      v10 = (0x3F203E90000uLL >> (16 * result));
      if (v9 == v10)
      {
        break;
      }

      v7 = v9 < v10;
LABEL_7:
      v6 += 2;
      if (v7)
      {
        v3 = result;
        v4 = v8;
      }

      if (!--v5)
      {
        goto LABEL_3;
      }
    }

    if (*v6 <= 1u)
    {
      if (*v6)
      {
        v11 = -1;
        if (!v4)
        {
LABEL_32:
          v12 = 0x7FFF;
LABEL_33:
          v7 = v11 < v12;
          goto LABEL_7;
        }
      }

      else
      {
        v12 = 0x7FFF;
        v11 = 0x7FFF;
        if (!v4)
        {
          goto LABEL_33;
        }
      }
    }

    else
    {
      if (v8 == 3)
      {
        v11 = 2;
      }

      else
      {
        v11 = 10;
      }

      if (v8 == 2)
      {
        v11 = 1;
      }

      if (!v4)
      {
        goto LABEL_32;
      }
    }

    if (v4 == 3)
    {
      v13 = 2;
    }

    else
    {
      v13 = 10;
    }

    if (v4 == 1)
    {
      v14 = -1;
    }

    else
    {
      v14 = 1;
    }

    if (v4 <= 2u)
    {
      v12 = v14;
    }

    else
    {
      v12 = v13;
    }

    goto LABEL_33;
  }

  *a2 = 3;
  return result;
}

uint64_t static MergeableTitleAttributeScope.attributeTypes.getter()
{
  if (qword_27F7BD738 != -1)
  {
    swift_once();
  }
}

uint64_t sub_2556C6B04()
{
  if (qword_27F7BD738 != -1)
  {
    swift_once();
  }
}

uint64_t sub_2556C6B60(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE8D8, &unk_255758230);
  MEMORY[0x28223BE20](v2);
  (*(v4 + 16))(&v6 - v3, a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE8B0, &unk_25575B400);
  return sub_25574F960();
}

uint64_t sub_2556C6C48(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7BE8B8, &unk_255758180);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2556C6C98(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE8A8, &unk_255758170);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2556C6D10@<X0>(char *a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEA38, &qword_255758A90);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v14 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEA40, &qword_255758A98);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v14 - v6;
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE8D8, &unk_255758230);
  sub_2556C73DC();
  sub_25574F890();

  v8 = type metadata accessor for MergeableFollowUpPromptAttachment(0);
  v9 = (*(*(v8 - 8) + 48))(v7, 1, v8);
  result = sub_255674B20(v7, &qword_27F7BEA40, &qword_255758A98);
  if (v9 == 1)
  {
    swift_getKeyPath();
    sub_2556C74E8();
    sub_25574F890();

    v11 = type metadata accessor for MergeableAssetTextAttachment(0);
    v12 = (*(*(v11 - 8) + 48))(v4, 1, v11) != 1;
    result = sub_255674B20(v4, &qword_27F7BEA38, &qword_255758A90);
    v13 = 2 * v12;
  }

  else
  {
    v13 = 2;
  }

  *a1 = v13;
  return result;
}

uint64_t static MergeableTextAttributeScope.attributeTypes.getter()
{
  if (qword_27F7BD740 != -1)
  {
    swift_once();
  }
}

unint64_t sub_2556C73B4(uint64_t a1)
{
  result = sub_2556C73DC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_2556C73DC()
{
  result = qword_27F7BE8E8;
  if (!qword_27F7BE8E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7BE8E8);
  }

  return result;
}

unint64_t sub_2556C74C0(uint64_t a1)
{
  result = sub_2556C74E8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_2556C74E8()
{
  result = qword_27F7BE908;
  if (!qword_27F7BE908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7BE908);
  }

  return result;
}

unint64_t sub_2556C75CC(uint64_t a1)
{
  result = sub_2556C75F4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_2556C75F4()
{
  result = qword_27F7BE928;
  if (!qword_27F7BE928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7BE928);
  }

  return result;
}

unint64_t sub_2556C76D8(uint64_t a1)
{
  result = sub_2556C7700();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_2556C7700()
{
  result = qword_27F7BE948;
  if (!qword_27F7BE948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7BE948);
  }

  return result;
}

unint64_t sub_2556C776C(uint64_t a1)
{
  result = sub_2556C7794();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_2556C7794()
{
  result = qword_27F7BE958;
  if (!qword_27F7BE958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7BE958);
  }

  return result;
}

unint64_t sub_2556C77E8(uint64_t a1)
{
  result = sub_25566F59C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_2556C7810(uint64_t a1)
{
  result = sub_2556C7838();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_2556C7838()
{
  result = qword_27F7BE980;
  if (!qword_27F7BE980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7BE980);
  }

  return result;
}

unint64_t sub_2556C78A4(uint64_t a1)
{
  result = sub_2556C78CC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_2556C78CC()
{
  result = qword_27F7BE990;
  if (!qword_27F7BE990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7BE990);
  }

  return result;
}

unint64_t sub_2556C79B0(uint64_t a1)
{
  result = sub_25566E8D0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_2556C79D8(uint64_t a1)
{
  result = sub_25566BC28();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_2556C7A00(uint64_t a1)
{
  result = sub_2556C7A28();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_2556C7A28()
{
  result = qword_27F7BEA00;
  if (!qword_27F7BEA00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7BEA00);
  }

  return result;
}

unint64_t sub_2556C7A80()
{
  result = qword_27F7BEA08;
  if (!qword_27F7BEA08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7BEA08);
  }

  return result;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> AppStorageMO.cacheCustomJournalsSidebarOrder()()
{
  v1 = [v0 managedObjectContext];
  if (v1)
  {
    v2 = v1;
    v3 = MEMORY[0x28223BE20](v1);
    MEMORY[0x28223BE20](v3);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE280, &qword_255756620);
    sub_255750870();
  }
}

id static AppStorageMO.sharedStorage(context:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE5E8, &qword_255757420);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v38 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F7BED20, &unk_2557551D0);
  MEMORY[0x28223BE20](v6);
  v8 = v38 - v7;
  v9 = sub_25574F0D0();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = (v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_27F7BD750 != -1)
  {
    swift_once();
  }

  v13 = __swift_project_value_buffer(v6, qword_27F7C0558);
  sub_255663294(v13, v8, &unk_27F7BED20, &unk_2557551D0);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_255674B20(v8, &unk_27F7BED20, &unk_2557551D0);
    if (qword_27F7BD748 != -1)
    {
      swift_once();
    }

    v14 = sub_25574F2C0();
    __swift_project_value_buffer(v14, qword_27F7BEA48);
    v15 = sub_25574F2A0();
    v16 = sub_255750780();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_255661000, v15, v16, "Failed to retrieve explicit UUID for shared app storage.", v17, 2u);
      MEMORY[0x259C3F520](v17, -1, -1);
    }

    return 0;
  }

  (*(v10 + 32))(v12, v8, v9);
  sub_2556CC0AC(&qword_27F7BEA60, type metadata accessor for AppStorageMO, &protocol conformance descriptor for AppStorageMO);
  static Identifiable<>.fetch(id:context:)(v12, a1, v1);
  if (v18)
  {
    v19 = v18;
    (*(v10 + 8))(v12, v9);
    return v19;
  }

  v21 = [a1 persistentStoreCoordinator];
  if (!v21)
  {
    goto LABEL_22;
  }

  v22 = v21;
  v23 = [v21 persistentStores];

  sub_255669A88(0, &qword_27F7BE278, 0x277CBE4D0);
  v24 = sub_255750380();

  if (v24 >> 62)
  {
    v33 = sub_255750A30();

    if (v33)
    {
      goto LABEL_16;
    }

LABEL_22:
    if (qword_27F7BD748 != -1)
    {
      swift_once();
    }

    v34 = sub_25574F2C0();
    __swift_project_value_buffer(v34, qword_27F7BEA48);
    v35 = sub_25574F2A0();
    v36 = sub_255750780();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      *v37 = 0;
      _os_log_impl(&dword_255661000, v35, v36, "Database not open. Won't create a temporary app storage object", v37, 2u);
      MEMORY[0x259C3F520](v37, -1, -1);
    }

    (*(v10 + 8))(v12, v9);
    return 0;
  }

  v25 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);

  if (!v25)
  {
    goto LABEL_22;
  }

LABEL_16:
  if (qword_27F7BD748 != -1)
  {
    swift_once();
  }

  v26 = sub_25574F2C0();
  __swift_project_value_buffer(v26, qword_27F7BEA48);
  v27 = sub_25574F2A0();
  v28 = sub_2557507A0();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    *v29 = 0;
    _os_log_impl(&dword_255661000, v27, v28, "Creating new app storage object", v29, 2u);
    MEMORY[0x259C3F520](v29, -1, -1);
  }

  type metadata accessor for AppStorageMO();
  v30 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithContext_];
  v31 = sub_25574F050();
  [v30 setId_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEA68, &qword_25575D790);
  v38[0] = MEMORY[0x277CFB528];
  sub_255669798(&qword_27F7BEA70, &qword_27F7BEA68, &qword_25575D790, MEMORY[0x277CFB528]);
  sub_255669798(&qword_27F7BEA78, &qword_27F7BEA68, &qword_25575D790, MEMORY[0x277CFB538]);
  sub_25574FD10();
  type metadata accessor for SidebarPreferences(0);
  sub_25574F720();
  sub_2556CC0AC(&qword_27F7BE0B0, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_25574F720();
  sub_25574F850();
  v32 = type metadata accessor for MergeableAppStorage(0);
  v38[1] = 2;
  v39 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEA80, &qword_255758AE8);
  sub_255669798(&qword_27F7BEA88, &qword_27F7BEA80, &qword_255758AE8, v38[0]);
  sub_25574F340();
  sub_25574F850();
  (*(*(v32 - 8) + 56))(v5, 0, 1, v32);
  sub_2556B736C(v5);
  [v30 setIsUploadedToCloud_];
  (*(v10 + 8))(v12, v9);
  return v30;
}

uint64_t AppStorageMO.sidebarSortOrderForCustomJournal(_:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEA90, &unk_25575B390);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = v15 - v7;
  AppStorageMO.customJournalsSidebarOrder.getter(v15 - v7);
  v9 = sub_25566CA68(a1);
  v11 = v10;
  v12 = *(v3 + 8);
  v12(v8, v2);
  if (v11)
  {
    return 0;
  }

  AppStorageMO.customJournalsSidebarOrder.getter(v8);
  AppStorageMO.customJournalsSidebarOrder.getter(v6);
  sub_255669798(&qword_27F7BEA98, &qword_27F7BEA90, &unk_25575B390, MEMORY[0x277CFB590]);
  sub_255750650();
  v12(v6, v2);
  v15[1] = v9;
  v15[2] = v15[3];
  v13 = sub_2557506A0();
  result = (v12)(v8, v2);
  if (v13 < 0xFFFFFFFF80000000)
  {
    __break(1u);
  }

  else if (v13 <= 0x7FFFFFFF)
  {
    return v13;
  }

  __break(1u);
  return result;
}

uint64_t sub_2556C87D4()
{
  v0 = sub_25574F2C0();
  __swift_allocate_value_buffer(v0, qword_27F7BEA48);
  __swift_project_value_buffer(v0, qword_27F7BEA48);
  return sub_25574F2B0();
}

uint64_t sub_2556C8850()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F7BED20, &unk_2557551D0);
  __swift_allocate_value_buffer(v0, qword_27F7C0558);
  __swift_project_value_buffer(v0, qword_27F7C0558);
  return sub_25574F030();
}

uint64_t AppStorageMO.defaultMapSize.getter@<X0>(char *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE5E8, &qword_255757420);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v12 - v4;
  v6 = [v1 mergeableAttributes];
  if (v6)
  {
    v7 = v6;
    sub_2556CB860(v6 + OBJC_IVAR___WrappedMergeableAppStorage_value, v5);

    v8 = type metadata accessor for MergeableAppStorage(0);
    (*(*(v8 - 8) + 56))(v5, 0, 1, v8);
  }

  else
  {
    v8 = type metadata accessor for MergeableAppStorage(0);
    (*(*(v8 - 8) + 56))(v5, 1, 1, v8);
  }

  type metadata accessor for MergeableAppStorage(0);
  if ((*(*(v8 - 8) + 48))(v5, 1, v8))
  {
    result = sub_255674B20(v5, &qword_27F7BE5E8, &qword_255757420);
LABEL_7:
    v10 = 3;
    goto LABEL_8;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEAA0, &unk_25575D720);
  sub_25574F360();
  v10 = v12;
  v11 = v13;
  result = sub_255674B20(v5, &qword_27F7BE5E8, &qword_255757420);
  if (v11)
  {
    goto LABEL_7;
  }

LABEL_8:
  *a1 = v10;
  return result;
}

void AppStorageMO.defaultMapSize.setter(unsigned __int8 *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE5E8, &qword_255757420);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v24 - v8;
  v10 = *a1;
  if (v10 != 3)
  {
    AppStorageMO.defaultMapSize.getter(&v26);
    if (v26 == 3 || v10 != v26)
    {
      v20 = [v2 mergeableAttributes];
      if (v20)
      {
        v21 = v20;
        sub_2556CB860(v20 + OBJC_IVAR___WrappedMergeableAppStorage_value, v9);

        v22 = type metadata accessor for MergeableAppStorage(0);
        (*(*(v22 - 8) + 56))(v9, 0, 1, v22);
      }

      else
      {
        v22 = type metadata accessor for MergeableAppStorage(0);
        (*(*(v22 - 8) + 56))(v9, 1, 1, v22);
      }

      type metadata accessor for MergeableAppStorage(0);
      if ((*(*(v22 - 8) + 48))(v9, 1, v22))
      {
        sub_255663294(v9, v7, &qword_27F7BE5E8, &qword_255757420);
        sub_2556B736C(v7);
        sub_255674B20(v9, &qword_27F7BE5E8, &qword_255757420);
      }

      else
      {
        v26 = v10;
        v27 = 0;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEAA0, &unk_25575D720);
        sub_25574F370();
        sub_2556B736C(v9);
      }

      [v2 setIsUploadedToCloud_];
    }

    else
    {
      if (qword_27F7BD748 != -1)
      {
        swift_once();
      }

      v11 = sub_25574F2C0();
      __swift_project_value_buffer(v11, qword_27F7BEA48);
      v25 = sub_25574F2A0();
      v12 = sub_255750770();
      if (os_log_type_enabled(v25, v12))
      {
        v13 = swift_slowAlloc();
        v14 = swift_slowAlloc();
        v26 = v14;
        *v13 = 136315138;
        v15 = 0xE400000000000000;
        v16 = 1684632167;
        if (v10 != 1)
        {
          v16 = 0x6C6C616D73;
          v15 = 0xE500000000000000;
        }

        if (v10)
        {
          v17 = v16;
        }

        else
        {
          v17 = 0x6E6564646968;
        }

        if (v10)
        {
          v18 = v15;
        }

        else
        {
          v18 = 0xE600000000000000;
        }

        v19 = sub_2556E474C(v17, v18, &v26);

        *(v13 + 4) = v19;
        _os_log_impl(&dword_255661000, v25, v12, "Setting default map size to the same value as before (%s).", v13, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v14);
        MEMORY[0x259C3F520](v14, -1, -1);
        MEMORY[0x259C3F520](v13, -1, -1);
      }

      else
      {
        v23 = v25;
      }
    }
  }
}

void (*AppStorageMO.defaultMapSize.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *a1 = v1;
  AppStorageMO.defaultMapSize.getter((a1 + 8));
  return sub_2556C8EBC;
}

void sub_2556C8EBC(uint64_t a1, char a2)
{
  if (a2)
  {
    v3 = *(a1 + 8);
    v2 = &v3;
  }

  else
  {
    v4 = *(a1 + 8);
    v2 = &v4;
  }

  AppStorageMO.defaultMapSize.setter(v2);
}

Swift::Bool __swiftcall AppStorageMO.isHiddenFromSidebar(_:)(JournalShared::SidebarPreferences::Brick a1)
{
  v2 = v1;
  v3 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEAA8, &qword_255758AF0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v17 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE5E8, &qword_255757420);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v17 - v9;
  v11 = *v3;
  v12 = [v2 mergeableAttributes];
  if (v12)
  {
    v13 = v12;
    sub_2556CB860(v12 + OBJC_IVAR___WrappedMergeableAppStorage_value, v10);

    v14 = type metadata accessor for MergeableAppStorage(0);
    (*(*(v14 - 8) + 56))(v10, 0, 1, v14);
  }

  else
  {
    v14 = type metadata accessor for MergeableAppStorage(0);
    (*(*(v14 - 8) + 56))(v10, 1, 1, v14);
  }

  type metadata accessor for MergeableAppStorage(0);
  if ((*(*(v14 - 8) + 48))(v10, 1, v14))
  {
    sub_255674B20(v10, &qword_27F7BE5E8, &qword_255757420);
    v15 = 0;
  }

  else
  {
    (*(v5 + 16))(v7, v10, v4);
    sub_255674B20(v10, &qword_27F7BE5E8, &qword_255757420);
    v17 = v11;
    v18 = 0;
    v15 = sub_25574FCF0();
    (*(v5 + 8))(v7, v4);
  }

  return v15 & 1;
}

Swift::Void __swiftcall AppStorageMO.setHiddenFromSidebar(_:for:)(Swift::Bool _, JournalShared::SidebarPreferences::Brick a2)
{
  v3 = v2;
  v4 = a2;
  v6 = _;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE5E8, &qword_255757420);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v25 - v12;
  MEMORY[0x28223BE20](v11);
  v15 = &v25 - v14;
  v16 = *v4;
  v27 = *v4;
  if (AppStorageMO.isHiddenFromSidebar(_:)(&v27) != v6)
  {
    if (_)
    {
      v17 = [v3 mergeableAttributes];
      if (v17)
      {
        v18 = v17;
        sub_2556CB860(v17 + OBJC_IVAR___WrappedMergeableAppStorage_value, v15);

        v19 = type metadata accessor for MergeableAppStorage(0);
        (*(*(v19 - 8) + 56))(v15, 0, 1, v19);
      }

      else
      {
        v19 = type metadata accessor for MergeableAppStorage(0);
        (*(*(v19 - 8) + 56))(v15, 1, 1, v19);
      }

      type metadata accessor for MergeableAppStorage(0);
      if ((*(*(v19 - 8) + 48))(v15, 1, v19))
      {
        sub_255663294(v15, v13, &qword_27F7BE5E8, &qword_255757420);
        sub_2556B736C(v13);
        v23 = v15;
LABEL_13:
        sub_255674B20(v23, &qword_27F7BE5E8, &qword_255757420);
LABEL_17:
        [v3 setIsUploadedToCloud_];
        return;
      }

      v25 = v16;
      v26 = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEAA8, &qword_255758AF0);
      sub_25574FC60();
      v24 = v15;
    }

    else
    {
      v20 = [v3 mergeableAttributes];
      if (v20)
      {
        v21 = v20;
        sub_2556CB860(v20 + OBJC_IVAR___WrappedMergeableAppStorage_value, v10);

        v22 = type metadata accessor for MergeableAppStorage(0);
        (*(*(v22 - 8) + 56))(v10, 0, 1, v22);
      }

      else
      {
        v22 = type metadata accessor for MergeableAppStorage(0);
        (*(*(v22 - 8) + 56))(v10, 1, 1, v22);
      }

      type metadata accessor for MergeableAppStorage(0);
      if ((*(*(v22 - 8) + 48))(v10, 1, v22))
      {
        sub_255663294(v10, v13, &qword_27F7BE5E8, &qword_255757420);
        sub_2556B736C(v13);
        v23 = v10;
        goto LABEL_13;
      }

      v25 = v16;
      v26 = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEAA8, &qword_255758AF0);
      sub_25574FC70();
      v24 = v10;
    }

    sub_2556B736C(v24);
    goto LABEL_17;
  }
}

uint64_t AppStorageMO.sidebarBrickOrder.getter@<X0>(char *a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEAB0, &qword_255758AF8);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v26 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE5E8, &qword_255757420);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v26 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEAB8, &qword_255758B00);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v26 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEAC0, &unk_25575D730);
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v26 - v15;
  v17 = [v2 mergeableAttributes];
  if (v17)
  {
    v18 = v17;
    sub_2556CB860(v17 + OBJC_IVAR___WrappedMergeableAppStorage_value, v9);

    v19 = type metadata accessor for MergeableAppStorage(0);
    (*(*(v19 - 8) + 56))(v9, 0, 1, v19);
  }

  else
  {
    v19 = type metadata accessor for MergeableAppStorage(0);
    (*(*(v19 - 8) + 56))(v9, 1, 1, v19);
  }

  type metadata accessor for MergeableAppStorage(0);
  if ((*(*(v19 - 8) + 48))(v9, 1, v19))
  {
    sub_255674B20(v9, &qword_27F7BE5E8, &qword_255757420);
    (*(v14 + 56))(v12, 1, 1, v13);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEA68, &qword_25575D790);
    sub_255669798(&qword_27F7BEA70, &qword_27F7BEA68, &qword_25575D790, MEMORY[0x277CFB528]);
    sub_255669798(&qword_27F7BEA78, &qword_27F7BEA68, &qword_25575D790, MEMORY[0x277CFB538]);
    sub_25574F720();
    if ((*(v14 + 48))(v12, 1, v13) != 1)
    {
      sub_255674B20(v12, &qword_27F7BEAB8, &qword_255758B00);
    }
  }

  else
  {
    v20 = type metadata accessor for SidebarPreferences(0);
    (*(v14 + 16))(v12, &v9[*(v20 + 20)], v13);
    sub_255674B20(v9, &qword_27F7BE5E8, &qword_255757420);
    (*(v14 + 56))(v12, 0, 1, v13);
    (*(v14 + 32))(v16, v12, v13);
  }

  v21 = *(v14 + 32);
  v21(v6, v16, v13);
  v21(a1, v6, v13);
  v22 = &a1[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEAC8, &qword_255758B08) + 44)];
  *v22 = sub_2556C9A58;
  *(v22 + 1) = 0;
  v23 = &a1[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEAD0, &qword_255758B10) + 36)];
  *v23 = sub_2556CBE10;
  *(v23 + 1) = 0;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEAD8, &qword_255758B18);
  v25 = &a1[*(result + 44)];
  *v25 = sub_2556CBE20;
  *(v25 + 1) = 0;
  return result;
}

_BYTE *sub_2556C9A58@<X0>(_BYTE *result@<X0>, _BYTE *a2@<X8>)
{
  if (result[8])
  {
    *a2 = 2;
  }

  else
  {
    *a2 = *result & 1;
  }

  return result;
}

Swift::Bool __swiftcall AppStorageMO.moveSidebarBrick(_:after:)(JournalShared::SidebarPreferences::Brick _, JournalShared::SidebarPreferences::Brick after)
{
  v3 = after;
  v4 = _;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE5E8, &qword_255757420);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v20 - v9;
  v11 = *v4;
  v12 = *v3;
  v13 = [v2 mergeableAttributes];
  if (v13)
  {
    v14 = v13;
    sub_2556CB860(v13 + OBJC_IVAR___WrappedMergeableAppStorage_value, v10);

    v15 = type metadata accessor for MergeableAppStorage(0);
    (*(*(v15 - 8) + 56))(v10, 0, 1, v15);
  }

  else
  {
    v15 = type metadata accessor for MergeableAppStorage(0);
    (*(*(v15 - 8) + 56))(v10, 1, 1, v15);
  }

  type metadata accessor for MergeableAppStorage(0);
  if ((*(*(v15 - 8) + 48))(v10, 1, v15))
  {
    sub_255663294(v10, v8, &qword_27F7BE5E8, &qword_255757420);
    sub_2556B736C(v8);
    sub_255674B20(v10, &qword_27F7BE5E8, &qword_255757420);
LABEL_9:
    LOBYTE(v17) = 0;
    return v17;
  }

  type metadata accessor for SidebarPreferences(0);
  sub_2556CB698(v11, 0);
  if (v16 & 1) != 0 || (v17 = sub_2556CB698(v12, 0), (v18))
  {
    sub_2556B736C(v10);
    goto LABEL_9;
  }

  if (__OFADD__(v17, 1))
  {
    __break(1u);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEAC0, &unk_25575D730);
    sub_25574F650();
    sub_2556B736C(v10);
    [v2 setIsUploadedToCloud_];
    LOBYTE(v17) = 1;
  }

  return v17;
}

uint64_t sub_2556C9D20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v18[1] = a1;
  v5 = sub_255750B40();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v18 - v7;
  v18[0] = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7BEA68, &qword_25575D790);
  v9 = sub_255750C00();
  MEMORY[0x28223BE20](v9);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEAC0, &unk_25575D730);
  v20 = *(v10 - 8);
  v21 = v10;
  MEMORY[0x28223BE20](v10);
  v12 = v18 - v11;
  v19 = sub_25574F500();
  v13 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v15 = v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x259C3DFD0](a2, a3);
  swift_getWitnessTable();
  sub_255750CA0();
  (*(v6 + 8))(v8, v5);
  sub_255669798(&qword_27F7BEA70, &qword_27F7BEA68, &qword_25575D790, MEMORY[0x277CFB528]);
  sub_255669798(&qword_27F7BEA78, &qword_27F7BEA68, &qword_25575D790, MEMORY[0x277CFB538]);
  swift_getWitnessTable();
  sub_25574F740();
  type metadata accessor for SidebarPreferences(0);
  v16 = v21;
  sub_25574F6A0();
  (*(v20 + 8))(v12, v16);
  return (*(v13 + 8))(v15, v19);
}

uint64_t AppStorageMO.customJournalsSidebarOrder.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE5E8, &qword_255757420);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v19 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEAE0, &qword_255758B20);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v19 - v8;
  v10 = [v2 mergeableAttributes];
  if (v10)
  {
    v11 = v10;
    sub_2556CB860(v10 + OBJC_IVAR___WrappedMergeableAppStorage_value, v6);

    v12 = type metadata accessor for MergeableAppStorage(0);
    (*(*(v12 - 8) + 56))(v6, 0, 1, v12);
  }

  else
  {
    v12 = type metadata accessor for MergeableAppStorage(0);
    (*(*(v12 - 8) + 56))(v6, 1, 1, v12);
  }

  type metadata accessor for MergeableAppStorage(0);
  if ((*(*(v12 - 8) + 48))(v6, 1, v12))
  {
    sub_255674B20(v6, &qword_27F7BE5E8, &qword_255757420);
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEA90, &unk_25575B390);
    v14 = *(v13 - 8);
    (*(v14 + 56))(v9, 1, 1, v13);
    sub_25574F0D0();
    sub_2556CC0AC(&qword_27F7BE0B0, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
    sub_25574F720();
    result = (*(v14 + 48))(v9, 1, v13);
    if (result != 1)
    {
      return sub_255674B20(v9, &qword_27F7BEAE0, &qword_255758B20);
    }
  }

  else
  {
    v16 = *(type metadata accessor for SidebarPreferences(0) + 24);
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEA90, &unk_25575B390);
    v18 = *(v17 - 8);
    (*(v18 + 16))(v9, &v6[v16], v17);
    sub_255674B20(v6, &qword_27F7BE5E8, &qword_255757420);
    (*(v18 + 56))(v9, 0, 1, v17);
    return (*(v18 + 32))(a1, v9, v17);
  }

  return result;
}

uint64_t AppStorageMO.moveCustomJournalInSidebar(_:after:)(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE5E8, &qword_255757420);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v17 - v9;
  v11 = [v2 mergeableAttributes];
  if (v11)
  {
    v12 = v11;
    sub_2556CB860(v11 + OBJC_IVAR___WrappedMergeableAppStorage_value, v10);

    v13 = type metadata accessor for MergeableAppStorage(0);
    (*(*(v13 - 8) + 56))(v10, 0, 1, v13);
  }

  else
  {
    v13 = type metadata accessor for MergeableAppStorage(0);
    (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  }

  type metadata accessor for MergeableAppStorage(0);
  if ((*(*(v13 - 8) + 48))(v10, 1, v13))
  {
    sub_255663294(v10, v8, &qword_27F7BE5E8, &qword_255757420);
    sub_2556B736C(v8);
    sub_255674B20(v10, &qword_27F7BE5E8, &qword_255757420);
    return 0;
  }

  type metadata accessor for SidebarPreferences(0);
  sub_25566CA68(a1);
  if (v14 & 1) != 0 || (result = sub_25566CA68(a2), (v16))
  {
    sub_2556B736C(v10);
    return 0;
  }

  if (__OFADD__(result, 1))
  {
    __break(1u);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEA90, &unk_25575B390);
    sub_25574F650();
    sub_2556B736C(v10);
    [v2 setIsUploadedToCloud_];
    return 1;
  }

  return result;
}

id sub_2556CA6E8(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t))
{
  v6 = v4;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE5E8, &qword_255757420);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v20 - v14;
  v16 = [v6 mergeableAttributes];
  if (v16)
  {
    v17 = v16;
    sub_2556CB860(v16 + OBJC_IVAR___WrappedMergeableAppStorage_value, v15);

    v18 = type metadata accessor for MergeableAppStorage(0);
    (*(*(v18 - 8) + 56))(v15, 0, 1, v18);
  }

  else
  {
    v18 = type metadata accessor for MergeableAppStorage(0);
    (*(*(v18 - 8) + 56))(v15, 1, 1, v18);
  }

  type metadata accessor for MergeableAppStorage(0);
  if ((*(*(v18 - 8) + 48))(v15, 1, v18))
  {
    sub_255663294(v15, v13, &qword_27F7BE5E8, &qword_255757420);
    sub_2556B736C(v13);
    sub_255674B20(v15, &qword_27F7BE5E8, &qword_255757420);
  }

  else
  {
    a4(a1, a2, a3);
    sub_2556B736C(v15);
  }

  return [v6 setIsUploadedToCloud_];
}

uint64_t sub_2556CA914(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v17 = a3;
  v5 = *(a2 - 8);
  MEMORY[0x28223BE20](a1);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEA90, &unk_25575B390);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v17 - v10;
  v12 = sub_25574F500();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v17 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v7, a1, a2);
  sub_25574F0D0();
  sub_2556CC0AC(&qword_27F7BE0B0, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_25574F740();
  type metadata accessor for SidebarPreferences(0);
  sub_25574F6A0();
  (*(v9 + 8))(v11, v8);
  return (*(v13 + 8))(v15, v12);
}

void sub_2556CAB9C(unint64_t a1)
{
  v2 = v1;
  v88[4] = *MEMORY[0x277D85DE8];
  v83 = sub_25574F0D0();
  v4 = *(v83 - 8);
  MEMORY[0x28223BE20](v83);
  v71 = &v67 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEA90, &unk_25575B390);
  MEMORY[0x28223BE20](v6);
  v8 = &v67 - v7;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEB18, &qword_255758B48);
  v9 = MEMORY[0x28223BE20](v84);
  v82 = (&v67 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v9);
  v81 = &v67 - v11;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE4C8, &qword_255757018);
  v78 = *(v80 - 8);
  MEMORY[0x28223BE20](v80);
  v79 = &v67 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEB20, &qword_255758B50);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v67 - v14;
  AppStorageMO.customJournalsSidebarOrder.getter(&v67 - v14);
  v16 = sub_255669798(&qword_27F7BEA98, &qword_27F7BEA90, &unk_25575B390, MEMORY[0x277CFB590]);
  v17 = sub_255750680();
  v70 = v4;
  if (v17)
  {
    v18 = v17;
    v87 = MEMORY[0x277D84F90];
    sub_2556A9CB8(0, v17 & ~(v17 >> 63), 0);
    *&v85 = v87;
    sub_255750650();
    if (v18 < 0)
    {
LABEL_43:
      __break(1u);
LABEL_44:
      v49 = sub_255750A30();
      goto LABEL_18;
    }

    v67 = v1;
    v68 = v8;
    v69 = a1;
    a1 = 0;
    v19 = v88[0];
    v76 = (v4 + 32);
    v77 = (v4 + 16);
    v74 = v16;
    v75 = v15;
    v73 = v18;
    v72 = v6;
    do
    {
      v20 = *(v84 + 48);
      v86 = v19;
      sub_255750650();
      if (v19 < v88[0])
      {
        __break(1u);
LABEL_41:
        __break(1u);
LABEL_42:
        __break(1u);
        goto LABEL_43;
      }

      sub_2557506B0();
      if (v19 >= v88[0])
      {
        goto LABEL_41;
      }

      v21 = sub_255750710();
      v15 = *v77;
      v22 = v81;
      v23 = v83;
      (*v77)(&v81[v20]);
      v21(v88, 0);
      v24 = v82;
      *v82 = a1;
      v25 = *(v84 + 48);
      v26 = &v22[v20];
      v27 = v24;
      (*v76)(v24 + v25, v26, v23);
      v28 = v79;
      v29 = *(v80 + 48);
      (v15)(v79, v27 + v25, v23);
      if (a1 == 0x80000000)
      {
        goto LABEL_42;
      }

      *(v28 + v29) = a1;
      sub_255674B20(v27, &qword_27F7BEB18, &qword_255758B48);
      v30 = v85;
      v87 = v85;
      v32 = *(v85 + 16);
      v31 = *(v85 + 24);
      if (v32 >= v31 >> 1)
      {
        sub_2556A9CB8((v31 > 1), v32 + 1, 1);
        v30 = v87;
      }

      ++a1;
      *(v30 + 16) = v32 + 1;
      v33 = (*(v78 + 80) + 32) & ~*(v78 + 80);
      *&v85 = v30;
      sub_2556CC0F4(v28, v30 + v33 + *(v78 + 72) * v32);
      v86 = v19;
      v15 = v75;
      sub_255750690();
      v19 = v88[0];
    }

    while (v73 != a1);
    sub_255674B20(v15, &qword_27F7BEB20, &qword_255758B50);
    v8 = v68;
    v2 = v67;
    if (!*(v85 + 16))
    {
      goto LABEL_13;
    }

    goto LABEL_11;
  }

  sub_255674B20(v15, &qword_27F7BEB20, &qword_255758B50);
  if (*(MEMORY[0x277D84F90] + 16))
  {
LABEL_11:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEB28, &qword_255758B58);
    v34 = sub_255750C90();
    goto LABEL_14;
  }

LABEL_13:
  v34 = MEMORY[0x277D84F98];
LABEL_14:
  v88[0] = v34;

  sub_2556CB8C4(v35, 1, v88);
  if (v2)
  {
    swift_unexpectedError();
    __break(1u);
    return;
  }

  v15 = v88[0];
  v36 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v37 = sub_255750180();
  v38 = [v36 initWithEntityName_];

  sub_255669A88(0, &qword_27F7BDD58, 0x277CCAC30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F7BED30, qword_255757F10);
  v39 = swift_allocObject();
  v85 = xmmword_255755060;
  *(v39 + 16) = xmmword_255755060;
  AppStorageMO.customJournalsSidebarOrder.getter(v8);
  sub_255669798(&qword_27F7BEB30, &qword_27F7BEA90, &unk_25575B390, MEMORY[0x277CFB588]);
  v40 = sub_2557502B0();
  *(v39 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEB38, &qword_25575EA60);
  *(v39 + 64) = sub_255669798(&qword_27F7BF1E0, &qword_27F7BEB38, &qword_25575EA60, MEMORY[0x277CC9C50]);
  *(v39 + 32) = v40;
  v41 = sub_255750750();
  [v38 setPredicate_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE4B0, &qword_255757000);
  v42 = swift_allocObject();
  v43 = MEMORY[0x277D837D0];
  *(v42 + 16) = v85;
  *(v42 + 56) = v43;
  *(v42 + 32) = 25705;
  *(v42 + 40) = 0xE200000000000000;
  v44 = sub_255750370();

  [v38 setPropertiesToFetch_];

  v88[0] = 0;
  v45 = [v38 execute_];
  v46 = v88[0];
  if (!v45)
  {
    v66 = v88[0];

    sub_25574ED90();

    swift_willThrow();
    return;
  }

  v47 = v45;
  type metadata accessor for JournalMO();
  a1 = sub_255750380();
  v48 = v46;

  v84 = 0;
  *&v85 = a1 >> 62;
  v82 = v38;
  if (a1 >> 62)
  {
    goto LABEL_44;
  }

  v49 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_18:
  v50 = v71;
  if (v49)
  {
    if (v49 < 1)
    {
      __break(1u);
    }

    v51 = 0;
    v52 = (v70 + 8);
    do
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v53 = MEMORY[0x259C3E830](v51, a1);
      }

      else
      {
        v53 = *(a1 + 8 * v51 + 32);
      }

      v54 = v53;
      v55 = [v53 id];
      if (v55)
      {
        v56 = v55;
        sub_25574F080();

        if (*(v15 + 2))
        {
          v57 = sub_25567AF04(v50);
          if (v58)
          {
            [v54 setSortOrder_];
          }
        }

        (*v52)(v50, v83);
      }

      else
      {
      }

      ++v51;
    }

    while (v49 != v51);
  }

  if (qword_27F7BD748 != -1)
  {
    swift_once();
  }

  v59 = sub_25574F2C0();
  __swift_project_value_buffer(v59, qword_27F7BEA48);

  v60 = sub_25574F2A0();
  v61 = sub_255750760();
  v62 = os_log_type_enabled(v60, v61);
  v63 = v82;
  if (v62)
  {
    v64 = swift_slowAlloc();
    *v64 = 134217984;
    if (v85)
    {
      v65 = sub_255750A30();
    }

    else
    {
      v65 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v64 + 4) = v65;

    _os_log_impl(&dword_255661000, v60, v61, "Updated the sort hint for %ld custom journals", v64, 0xCu);
    MEMORY[0x259C3F520](v64, -1, -1);
  }

  else
  {

    swift_bridgeObjectRelease_n();
  }
}

uint64_t sub_2556CB698(uint64_t a1, char a2)
{
  v12 = a1;
  v13 = a2 & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEAC0, &unk_25575D730);
  sub_255669798(&qword_27F7BEB08, &qword_27F7BEAC0, &unk_25575D730, MEMORY[0x277CFB590]);
  sub_255750670();
  if ((v10 & 1) == 0)
  {
    return v8;
  }

  sub_255750650();
  sub_2557506B0();
  v2 = v11;
  if (v11 == v8)
  {
    return 0;
  }

  while (1)
  {
    v3 = sub_255750710();
    v5 = *v4;
    v6 = *(v4 + 8);
    v3(&v8, 0);
    v8 = v5;
    v9 = v6;
    sub_2556CC058();
    if (sub_25574F520())
    {
      break;
    }

    sub_2557506C0();
    sub_2557506B0();
    v2 = v11;
    if (v11 == v8)
    {
      return 0;
    }
  }

  return v2;
}

uint64_t sub_2556CB860(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MergeableAppStorage(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_2556CB8C4(void *a1, char a2, void *a3)
{
  v7 = sub_25574F0D0();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v54 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE4C8, &qword_255757018);
  v12 = MEMORY[0x28223BE20](v11);
  v15 = v54 - v14;
  v59 = a1[2];
  if (!v59)
  {
    goto LABEL_22;
  }

  v54[1] = v3;
  v16 = *(v12 + 48);
  v17 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v58 = *(v13 + 72);
  v60 = a1;
  sub_255663294(a1 + v17, v54 - v14, &qword_27F7BE4C8, &qword_255757018);
  v55 = v8;
  v61 = *(v8 + 32);
  v62 = v7;
  v61(v10, v15, v7);
  v57 = v16;
  v18 = *&v15[v16];
  v19 = *a3;
  v20 = sub_25567AF04(v10);
  v22 = v19[2];
  v23 = (v21 & 1) == 0;
  v24 = __OFADD__(v22, v23);
  v25 = v22 + v23;
  if (v24)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v26 = v21;
  if (v19[3] < v25)
  {
    sub_255744768(v25, a2 & 1);
    v20 = sub_25567AF04(v10);
    if ((v26 & 1) != (v27 & 1))
    {
LABEL_5:
      sub_255750F10();
      __break(1u);
      goto LABEL_22;
    }

LABEL_8:
    if (v26)
    {
      goto LABEL_9;
    }

    goto LABEL_12;
  }

  if (a2)
  {
    goto LABEL_8;
  }

  v30 = v18;
  v31 = v20;
  sub_255743180();
  v20 = v31;
  v18 = v30;
  if (v26)
  {
LABEL_9:
    v28 = swift_allocError();
    swift_willThrow();
    v65 = v28;
    v29 = v28;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE118, &qword_255755C80);
    if ((swift_dynamicCast() & 1) == 0)
    {
      (*(v55 + 8))(v10, v62);

      return;
    }

    goto LABEL_26;
  }

LABEL_12:
  v32 = v18;
  v33 = *a3;
  *(*a3 + 8 * (v20 >> 6) + 64) |= 1 << v20;
  v34 = v33[6];
  v56 = *(v55 + 72);
  v35 = v20;
  v61((v34 + v56 * v20), v10, v62);
  *(v33[7] + 4 * v35) = v32;
  v36 = v33[2];
  v24 = __OFADD__(v36, 1);
  v37 = v36 + 1;
  if (!v24)
  {
    v33[2] = v37;
    v38 = v60;
    if (v59 == 1)
    {
LABEL_22:

      return;
    }

    v39 = v60 + v58 + v17;
    v40 = 1;
    while (v40 < v38[2])
    {
      sub_255663294(v39, v15, &qword_27F7BE4C8, &qword_255757018);
      v61(v10, v15, v62);
      v41 = *&v15[v57];
      v42 = *a3;
      v43 = sub_25567AF04(v10);
      v45 = v42[2];
      v46 = (v44 & 1) == 0;
      v24 = __OFADD__(v45, v46);
      v47 = v45 + v46;
      if (v24)
      {
        goto LABEL_23;
      }

      v48 = v44;
      if (v42[3] < v47)
      {
        sub_255744768(v47, 1);
        v43 = sub_25567AF04(v10);
        if ((v48 & 1) != (v49 & 1))
        {
          goto LABEL_5;
        }
      }

      if (v48)
      {
        goto LABEL_9;
      }

      v50 = *a3;
      *(*a3 + 8 * (v43 >> 6) + 64) |= 1 << v43;
      v51 = v43;
      v61((v50[6] + v56 * v43), v10, v62);
      *(v50[7] + 4 * v51) = v41;
      v52 = v50[2];
      v24 = __OFADD__(v52, 1);
      v53 = v52 + 1;
      if (v24)
      {
        goto LABEL_24;
      }

      ++v40;
      v50[2] = v53;
      v39 += v58;
      v38 = v60;
      if (v59 == v40)
      {
        goto LABEL_22;
      }
    }

    goto LABEL_25;
  }

LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  v63 = 0;
  v64 = 0xE000000000000000;
  sub_255750B00();
  MEMORY[0x259C3DED0](0xD00000000000001BLL, 0x8000000255752750);
  sub_255750C20();
  MEMORY[0x259C3DED0](39, 0xE100000000000000);
  sub_255750C40();
  __break(1u);
}

unsigned __int8 *sub_2556CBE20@<X0>(unsigned __int8 *result@<X0>, _BYTE *a2@<X8>)
{
  v2 = *result;
  if (v2 == 2)
  {
    __break(1u);
  }

  else
  {
    *a2 = v2 & 1;
  }

  return result;
}

unint64_t sub_2556CBE90()
{
  result = qword_27F7BEAF0;
  if (!qword_27F7BEAF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7BEAD8, &qword_255758B18);
    sub_2556CBF14();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7BEAF0);
  }

  return result;
}

unint64_t sub_2556CBF14()
{
  result = qword_27F7BEAF8;
  if (!qword_27F7BEAF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7BEAD0, &qword_255758B10);
    sub_2556CBF98();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7BEAF8);
  }

  return result;
}

unint64_t sub_2556CBF98()
{
  result = qword_27F7BEB00;
  if (!qword_27F7BEB00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7BEAC8, &qword_255758B08);
    sub_255669798(&qword_27F7BEB08, &qword_27F7BEAC0, &unk_25575D730, MEMORY[0x277CFB590]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7BEB00);
  }

  return result;
}

unsigned __int8 *sub_2556CC048@<X0>(unsigned __int8 *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

unint64_t sub_2556CC058()
{
  result = qword_27F7BEB10;
  if (!qword_27F7BEB10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7BEB10);
  }

  return result;
}

uint64_t sub_2556CC0AC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2556CC0F4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE4C8, &qword_255757018);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t WorkoutIconAssetMetadata.groupWorkoutStartDates.getter()
{
  type metadata accessor for WorkoutIconAssetMetadata(0);
}

uint64_t WorkoutIconAssetMetadata.groupWorkoutEndDates.getter()
{
  type metadata accessor for WorkoutIconAssetMetadata(0);
}

uint64_t WorkoutIconAssetMetadata.totalGroupWorkoutCaloriesBurntWithUnit.getter()
{
  v1 = *(v0 + *(type metadata accessor for WorkoutIconAssetMetadata(0) + 72));

  return v1;
}

uint64_t WorkoutIconAssetMetadata.init(type:duration:startTime:endTime:mindfulnessHeartRate:caloriesBurnt:calories:distance:numberOfWorkouts:totalGroupWorkoutDuration:groupWorkoutStartDates:groupWorkoutEndDates:averageGroupHeartRateBPM:totalGroupWorkoutCaloriesBurnt:totalGroupWorkoutCaloriesBurntWithUnit:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char a8@<W7>, uint64_t a9@<X8>, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27)
{
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4 & 1;
  v30 = type metadata accessor for WorkoutIconAssetMetadata(0);
  sub_2556719B8(a5, a9 + v30[6]);
  result = sub_2556719B8(a6, a9 + v30[7]);
  v32 = a9 + v30[8];
  *v32 = a7;
  *(v32 + 8) = a8 & 1;
  v33 = a9 + v30[9];
  *v33 = a10;
  *(v33 + 8) = a11 & 1;
  v34 = (a9 + v30[10]);
  *v34 = a12;
  v34[1] = a13;
  v35 = (a9 + v30[11]);
  *v35 = a14;
  v35[1] = a15;
  v36 = a9 + v30[12];
  *v36 = a16;
  *(v36 + 8) = a17 & 1;
  v37 = a9 + v30[13];
  *v37 = a18;
  *(v37 + 8) = a19 & 1;
  *(a9 + v30[14]) = a20;
  *(a9 + v30[15]) = a21;
  v38 = a9 + v30[16];
  *v38 = a22;
  *(v38 + 8) = a23 & 1;
  v39 = a9 + v30[17];
  *v39 = a24;
  *(v39 + 8) = a25 & 1;
  v40 = (a9 + v30[18]);
  *v40 = a26;
  v40[1] = a27;
  return result;
}

uint64_t sub_2556CC3F8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_2556CE5F0(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_2556CC42C(uint64_t a1)
{
  v2 = sub_25567BC2C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2556CC468(uint64_t a1)
{
  v2 = sub_25567BC2C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t WorkoutIconAssetMetadata.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEB48, &qword_255758B68);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v11 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25567BC2C();
  sub_255750FF0();
  LOBYTE(v13) = 0;
  sub_255750DB0();
  if (!v2)
  {
    LOBYTE(v13) = 1;
    sub_255750DD0();
    v9 = type metadata accessor for WorkoutIconAssetMetadata(0);
    LOBYTE(v13) = 2;
    sub_25574F020();
    sub_255671808(&qword_27F7BDC18, MEMORY[0x277CC9578], MEMORY[0x277CC9580]);
    sub_255750DF0();
    LOBYTE(v13) = 3;
    sub_255750DF0();
    LOBYTE(v13) = 4;
    sub_255750DD0();
    LOBYTE(v13) = 5;
    sub_255750DD0();
    LOBYTE(v13) = 6;
    sub_255750DB0();
    LOBYTE(v13) = 7;
    sub_255750DB0();
    LOBYTE(v13) = 8;
    sub_255750DE0();
    LOBYTE(v13) = 9;
    sub_255750DD0();
    v13 = *(v3 + *(v9 + 56));
    v12 = 10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEB60, &qword_255758B70);
    sub_25567BFBC(&qword_27F7BEB68, &qword_27F7BDC18, MEMORY[0x277CC9580], MEMORY[0x277D83948]);
    sub_255750DF0();
    v13 = *(v3 + *(v9 + 60));
    v12 = 11;
    sub_255750DF0();
    LOBYTE(v13) = 12;
    sub_255750DD0();
    LOBYTE(v13) = 13;
    sub_255750DD0();
    LOBYTE(v13) = 14;
    sub_255750DB0();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t WorkoutRouteAssetMetadata.routeData.getter()
{
  v1 = *v0;
  sub_25567625C(*v0, *(v0 + 8));
  return v1;
}

uint64_t WorkoutRouteAssetMetadata.type.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t WorkoutRouteAssetMetadata.endTime.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for WorkoutRouteAssetMetadata(0) + 32);

  return sub_2556700F4(v3, a1);
}

uint64_t WorkoutRouteAssetMetadata.distance.getter()
{
  v1 = *(v0 + *(type metadata accessor for WorkoutRouteAssetMetadata(0) + 48));

  return v1;
}

uint64_t WorkoutRouteAssetMetadata.init(route:type:duration:startTime:endTime:mindfulnessHeartRate:caloriesBurnt:calories:distance:)@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, char a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  if (a1)
  {
    sub_2556CCC9C(a1);

    v22 = objc_allocWithZone(MEMORY[0x277CBEA60]);
    v23 = sub_255750370();

    v24 = [v22 initWithArray:v23 copyItems:1];

    v25 = sub_2556CCE98();
    v27 = v26;
  }

  else
  {
    v25 = 0;
    v27 = 0xF000000000000000;
  }

  *a9 = v25;
  *(a9 + 8) = v27;
  *(a9 + 16) = a2;
  *(a9 + 24) = a3;
  *(a9 + 32) = a4;
  *(a9 + 40) = a5 & 1;
  v28 = type metadata accessor for WorkoutRouteAssetMetadata(0);
  sub_2556719B8(a6, a9 + v28[7]);
  result = sub_2556719B8(a7, a9 + v28[8]);
  v30 = a9 + v28[9];
  *v30 = a8;
  *(v30 + 8) = a10 & 1;
  v31 = a9 + v28[10];
  *v31 = a11;
  *(v31 + 8) = a12 & 1;
  v32 = (a9 + v28[11]);
  *v32 = a13;
  v32[1] = a14;
  v33 = (a9 + v28[12]);
  *v33 = a15;
  v33[1] = a16;
  return result;
}

char *sub_2556CCC9C(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_255750A30();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = MEMORY[0x277D84F90];
  if (!v2)
  {
    return v3;
  }

  v13 = MEMORY[0x277D84F90];
  result = sub_2556A9CF8(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = v13;
    if ((a1 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v2; ++i)
      {
        MEMORY[0x259C3E830](i, a1);
        sub_255669A88(0, &qword_27F7BEC68, 0x277CE41F8);
        swift_dynamicCast();
        v13 = v3;
        v7 = *(v3 + 16);
        v6 = *(v3 + 24);
        if (v7 >= v6 >> 1)
        {
          sub_2556A9CF8((v6 > 1), v7 + 1, 1);
          v3 = v13;
        }

        *(v3 + 16) = v7 + 1;
        sub_255663374(v12, (v3 + 32 * v7 + 32));
      }
    }

    else
    {
      v8 = (a1 + 32);
      sub_255669A88(0, &qword_27F7BEC68, 0x277CE41F8);
      do
      {
        v9 = *v8;
        swift_dynamicCast();
        v13 = v3;
        v11 = *(v3 + 16);
        v10 = *(v3 + 24);
        if (v11 >= v10 >> 1)
        {
          sub_2556A9CF8((v10 > 1), v11 + 1, 1);
          v3 = v13;
        }

        *(v3 + 16) = v11 + 1;
        sub_255663374(v12, (v3 + 32 * v11 + 32));
        ++v8;
        --v2;
      }

      while (v2);
    }

    return v3;
  }

  __break(1u);
  return result;
}

uint64_t sub_2556CCE98()
{
  v17[1] = *MEMORY[0x277D85DE8];
  v17[0] = 0;
  v1 = [objc_opt_self() archivedDataWithRootObject:v0 requiringSecureCoding:1 error:v17];
  v2 = v17[0];
  if (v1)
  {
    v3 = sub_25574EF90();
  }

  else
  {
    v4 = v2;
    v5 = sub_25574ED90();

    swift_willThrow();
    if (qword_27F7BD830 != -1)
    {
      swift_once();
    }

    v6 = sub_25574F2C0();
    __swift_project_value_buffer(v6, qword_27F7C0390);
    v7 = v0;
    v8 = v5;
    v9 = sub_25574F2A0();
    v10 = sub_255750780();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      *v11 = 138412546;
      *(v11 + 4) = v7;
      *v12 = v7;
      *(v11 + 12) = 2112;
      v13 = v7;
      v14 = v5;
      v15 = _swift_stdlib_bridgeErrorToNSError();
      *(v11 + 14) = v15;
      v12[1] = v15;
      _os_log_impl(&dword_255661000, v9, v10, "Error converting %@ to Data: %@", v11, 0x16u);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEC80, &qword_255757E90);
      swift_arrayDestroy();
      MEMORY[0x259C3F520](v12, -1, -1);
      MEMORY[0x259C3F520](v11, -1, -1);
    }

    else
    {
    }

    return 0;
  }

  return v3;
}

uint64_t WorkoutRouteAssetMetadata.route.getter()
{
  v1 = v0[1];
  if (v1 >> 60 != 15)
  {
    v2 = *v0;
    sub_255674F54(v2, v1);
    v3 = sub_2556CD2BC(v2, v1);
    if (v3)
    {
      v4 = v3;
      v12 = MEMORY[0x277D84F90];
      v5 = v3 & 0xFFFFFFFFFFFFFF8;
      if (v3 >> 62)
      {
LABEL_24:
        v6 = sub_255750A30();
        v11 = v2;
        if (v6)
        {
LABEL_5:
          v7 = 0;
          v2 = MEMORY[0x277D84F90];
          do
          {
            v8 = v7;
            while (1)
            {
              if ((v4 & 0xC000000000000001) != 0)
              {
                MEMORY[0x259C3E830](v8, v4);
                v7 = v8 + 1;
                if (__OFADD__(v8, 1))
                {
                  goto LABEL_22;
                }
              }

              else
              {
                if (v8 >= *(v5 + 16))
                {
                  goto LABEL_23;
                }

                swift_unknownObjectRetain();
                v7 = v8 + 1;
                if (__OFADD__(v8, 1))
                {
LABEL_22:
                  __break(1u);
LABEL_23:
                  __break(1u);
                  goto LABEL_24;
                }
              }

              objc_opt_self();
              v9 = swift_dynamicCastObjCClass();
              if (v9)
              {
                break;
              }

              swift_unknownObjectRelease();
              ++v8;
              if (v7 == v6)
              {
                goto LABEL_26;
              }
            }

            MEMORY[0x259C3E030](v9);
            if (*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              sub_2557503B0();
            }

            sub_255750400();
            v2 = v12;
          }

          while (v7 != v6);
          goto LABEL_26;
        }
      }

      else
      {
        v6 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v11 = v2;
        if (v6)
        {
          goto LABEL_5;
        }
      }

      v2 = MEMORY[0x277D84F90];
LABEL_26:
      sub_2556A15B8(v11, v1);

      return v2;
    }

    sub_2556A15B8(v2, v1);
  }

  return 0;
}

unint64_t sub_2556CD2BC(uint64_t a1, uint64_t a2)
{
  sub_255669A88(0, &qword_27F7BEC68, 0x277CE41F8);
  sub_255669A88(0, &unk_27F7BEC70, 0x277CBEA60);
  sub_255669A88(0, &qword_27F7C03B0, 0x277CCAAC8);
  result = sub_255750820();
  if (result)
  {
    if (result >> 62)
    {

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEC88, &qword_255758F88);
      v3 = sub_255750C50();
      swift_bridgeObjectRelease_n();
    }

    else
    {
      v3 = result;

      sub_255750EC0();
    }

    return v3;
  }

  return result;
}

unint64_t sub_2556CD578(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 0x7461446574756F72;
    v6 = 0x6E6F697461727564;
    if (a1 != 2)
    {
      v6 = 0x6D69547472617473;
    }

    if (a1)
    {
      v5 = 1701869940;
    }

    if (a1 <= 1u)
    {
      return v5;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0x736569726F6C6163;
    v2 = 0x736569726F6C6163;
    if (a1 != 7)
    {
      v2 = 0x65636E6174736964;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 0x656D6954646E65;
    if (a1 != 4)
    {
      v3 = 0xD000000000000014;
    }

    if (a1 <= 5u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_2556CD6A8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_2556CEA98(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_2556CD6D0(uint64_t a1)
{
  v2 = sub_2556CDA90();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2556CD70C(uint64_t a1)
{
  v2 = sub_2556CDA90();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t WorkoutRouteAssetMetadata.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEB88, &qword_255758B80);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v11 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2556CDA90();
  sub_255750FF0();
  v9 = v3[1];
  v11 = *v3;
  v12 = v9;
  v13 = 0;
  sub_25567625C(v11, v9);
  sub_255687198();
  sub_255750DF0();
  if (v2)
  {
    sub_2556A15B8(v11, v12);
  }

  else
  {
    sub_2556A15B8(v11, v12);
    LOBYTE(v11) = 1;
    sub_255750DB0();
    LOBYTE(v11) = 2;
    sub_255750DD0();
    type metadata accessor for WorkoutRouteAssetMetadata(0);
    LOBYTE(v11) = 3;
    sub_25574F020();
    sub_255671808(&qword_27F7BDC18, MEMORY[0x277CC9578], MEMORY[0x277CC9580]);
    sub_255750DF0();
    LOBYTE(v11) = 4;
    sub_255750DF0();
    LOBYTE(v11) = 5;
    sub_255750DD0();
    LOBYTE(v11) = 6;
    sub_255750DD0();
    LOBYTE(v11) = 7;
    sub_255750DB0();
    LOBYTE(v11) = 8;
    sub_255750DB0();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_2556CDA90()
{
  result = qword_27F7BEB90;
  if (!qword_27F7BEB90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7BEB90);
  }

  return result;
}

uint64_t WorkoutRouteAssetMetadata.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v37 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEB40, &unk_255754E40);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v6 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v36 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F7BEBA0, &qword_255758B88);
  v38 = *(v9 - 8);
  v39 = v9;
  MEMORY[0x28223BE20](v9);
  v11 = &v36 - v10;
  v12 = type metadata accessor for WorkoutRouteAssetMetadata(0);
  MEMORY[0x28223BE20](v12);
  v14 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[3];
  v41 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v15);
  sub_2556CDA90();
  v16 = v40;
  sub_255750FE0();
  if (v16)
  {
    return __swift_destroy_boxed_opaque_existential_1(v41);
  }

  v17 = v8;
  v18 = v38;
  v43 = 0;
  sub_255675208();
  sub_255750D40();
  *v14 = v42;
  LOBYTE(v42) = 1;
  *(v14 + 2) = sub_255750D00();
  *(v14 + 3) = v19;
  LOBYTE(v42) = 2;
  v20 = sub_255750D20();
  v40 = 0;
  *(v14 + 4) = v20;
  v14[40] = v21 & 1;
  sub_25574F020();
  LOBYTE(v42) = 3;
  sub_255671808(&qword_27F7BDC38, MEMORY[0x277CC9578], MEMORY[0x277CC95A0]);
  sub_255750D40();
  sub_2556719B8(v17, &v14[v12[7]]);
  LOBYTE(v42) = 4;
  sub_255750D40();
  sub_2556719B8(v6, &v14[v12[8]]);
  LOBYTE(v42) = 5;
  v22 = sub_255750D20();
  v23 = &v14[v12[9]];
  *v23 = v22;
  v23[8] = v24 & 1;
  LOBYTE(v42) = 6;
  v25 = sub_255750D20();
  v26 = &v14[v12[10]];
  *v26 = v25;
  v26[8] = v27 & 1;
  LOBYTE(v42) = 7;
  v28 = sub_255750D00();
  v29 = &v14[v12[11]];
  *v29 = v28;
  v29[1] = v30;
  LOBYTE(v42) = 8;
  v31 = sub_255750D00();
  v33 = v32;
  (*(v18 + 8))(v11, v39);
  v34 = &v14[v12[12]];
  *v34 = v31;
  v34[1] = v33;
  sub_25567C058(v14, v37, type metadata accessor for WorkoutRouteAssetMetadata);
  __swift_destroy_boxed_opaque_existential_1(v41);
  return sub_25567C0C0(v14, type metadata accessor for WorkoutRouteAssetMetadata);
}

uint64_t sub_2556CE0E0(uint64_t a1)
{
  *(a1 + 8) = sub_255671808(&qword_27F7BEBB0, type metadata accessor for WorkoutIconAssetMetadata, &protocol conformance descriptor for WorkoutIconAssetMetadata);
  result = sub_255671808(&qword_27F7BEBB8, type metadata accessor for WorkoutIconAssetMetadata, &protocol conformance descriptor for WorkoutIconAssetMetadata);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_2556CE164(uint64_t a1)
{
  *(a1 + 8) = sub_255671808(&qword_27F7BEBC0, type metadata accessor for WorkoutRouteAssetMetadata, &protocol conformance descriptor for WorkoutRouteAssetMetadata);
  result = sub_255671808(&unk_27F7BEBC8, type metadata accessor for WorkoutRouteAssetMetadata, &protocol conformance descriptor for WorkoutRouteAssetMetadata);
  *(a1 + 16) = result;
  return result;
}

void sub_2556CE240(uint64_t a1)
{
  sub_25566BFA8(319, &unk_27F7BEC28, MEMORY[0x277CC9318]);
  if (v1 <= 0x3F)
  {
    sub_25566BFA8(319, &qword_27F7BE538, MEMORY[0x277D837D0]);
    if (v2 <= 0x3F)
    {
      sub_25566BFA8(319, &qword_27F7BEBF0, MEMORY[0x277D839F8]);
      if (v3 <= 0x3F)
      {
        sub_25566E80C(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t getEnumTagSinglePayload for WorkoutIconAssetMetadata.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF2)
  {
    goto LABEL_17;
  }

  if (a2 + 14 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 14) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 14;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 14;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 14;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xF;
  v8 = v6 - 15;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for WorkoutIconAssetMetadata.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 14 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 14) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF2)
  {
    v4 = 0;
  }

  if (a2 > 0xF1)
  {
    v5 = ((a2 - 242) >> 8) + 1;
    *result = a2 + 14;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 14;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_2556CE494()
{
  result = qword_27F7BEC38;
  if (!qword_27F7BEC38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7BEC38);
  }

  return result;
}

unint64_t sub_2556CE4EC()
{
  result = qword_27F7BEC40;
  if (!qword_27F7BEC40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7BEC40);
  }

  return result;
}

unint64_t sub_2556CE544()
{
  result = qword_27F7BEC48;
  if (!qword_27F7BEC48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7BEC48);
  }

  return result;
}

unint64_t sub_2556CE59C()
{
  result = qword_27F7BEC50;
  if (!qword_27F7BEC50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7BEC50);
  }

  return result;
}

uint64_t sub_2556CE5F0(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701869940 && a2 == 0xE400000000000000;
  if (v3 || (sub_255750EB0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E6F697461727564 && a2 == 0xE800000000000000 || (sub_255750EB0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6D69547472617473 && a2 == 0xE900000000000065 || (sub_255750EB0() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x656D6954646E65 && a2 == 0xE700000000000000 || (sub_255750EB0() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000014 && 0x8000000255752B20 == a2 || (sub_255750EB0() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x736569726F6C6163 && a2 == 0xED0000746E727542 || (sub_255750EB0() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x736569726F6C6163 && a2 == 0xE800000000000000 || (sub_255750EB0() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x65636E6174736964 && a2 == 0xE800000000000000 || (sub_255750EB0() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000255752B40 == a2 || (sub_255750EB0() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000019 && 0x8000000255752B60 == a2 || (sub_255750EB0() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD000000000000016 && 0x8000000255752B80 == a2 || (sub_255750EB0() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0xD000000000000014 && 0x8000000255752BA0 == a2 || (sub_255750EB0() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0xD000000000000018 && 0x8000000255752BC0 == a2 || (sub_255750EB0() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0xD00000000000001ELL && 0x8000000255752BE0 == a2 || (sub_255750EB0() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0xD000000000000026 && 0x8000000255752C00 == a2)
  {

    return 14;
  }

  else
  {
    v6 = sub_255750EB0();

    if (v6)
    {
      return 14;
    }

    else
    {
      return 15;
    }
  }
}

uint64_t sub_2556CEA98(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7461446574756F72 && a2 == 0xE900000000000061;
  if (v4 || (sub_255750EB0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1701869940 && a2 == 0xE400000000000000 || (sub_255750EB0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6E6F697461727564 && a2 == 0xE800000000000000 || (sub_255750EB0() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6D69547472617473 && a2 == 0xE900000000000065 || (sub_255750EB0() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x656D6954646E65 && a2 == 0xE700000000000000 || (sub_255750EB0() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000014 && 0x8000000255752B20 == a2 || (sub_255750EB0() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x736569726F6C6163 && a2 == 0xED0000746E727542 || (sub_255750EB0() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x736569726F6C6163 && a2 == 0xE800000000000000 || (sub_255750EB0() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x65636E6174736964 && a2 == 0xE800000000000000)
  {

    return 8;
  }

  else
  {
    v6 = sub_255750EB0();

    if (v6)
    {
      return 8;
    }

    else
    {
      return 9;
    }
  }
}

uint64_t CRDT.serializedData.getter(uint64_t a1, uint64_t a2)
{
  if (qword_27F7BD768 != -1)
  {
    swift_once();
  }

  if (qword_27F7BD760 != -1)
  {
    swift_once();
  }

  v2 = sub_25574F770();
  __swift_project_value_buffer(v2, qword_27F7C0570);
  return sub_25574F4B0();
}

BOOL CRDT.requiresMerging(with:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = sub_255750950();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - v6;
  sub_25574FD60();
  v8 = (*(*(AssociatedTypeWitness - 8) + 48))(v7, 1, AssociatedTypeWitness) != 1;
  (*(v5 + 8))(v7, v4);
  return v8;
}

uint64_t sub_2556CEFC8()
{
  v0 = sub_25574F2C0();
  __swift_allocate_value_buffer(v0, qword_27F7BEC90);
  v1 = __swift_project_value_buffer(v0, qword_27F7BEC90);
  if (qword_27F7BD5E0 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_27F7C0528);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_2556CF090()
{
  v0 = sub_25574F770();
  __swift_allocate_value_buffer(v0, qword_27F7C0570);
  v1 = __swift_project_value_buffer(v0, qword_27F7C0570);
  v2 = *MEMORY[0x277CFB5F8];
  v3 = *(*(v0 - 8) + 104);

  return v3(v1, v2, v0);
}

uint64_t sub_2556CF118()
{
  result = sub_2556CF138();
  qword_27F7C0588 = result;
  return result;
}

uint64_t sub_2556CF138()
{
  v0 = sub_25574F2C0();
  v19[4] = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v19[3] = v19 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE270, &unk_25575A3F0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = v19 - v3;
  v5 = sub_25574EF10();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = v19 - v11;
  MEMORY[0x28223BE20](v10);
  v14 = v19 - v13;
  if (qword_27F7BD7F8 != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for FileStoreConfiguration(0);
  __swift_project_value_buffer(v15, qword_27F7BFDF0);
  FileStoreConfiguration.applicationSupportDirectoryURL.getter(v12);
  sub_25574EEA0();
  v16 = *(v6 + 8);
  v16(v12, v5);
  sub_25574FE80();
  (*(v6 + 16))(v9, v14, v5);
  v22 = 0;
  v20 = 0u;
  v21 = 0u;
  (*(v6 + 56))(v4, 1, 1, v5);
  v17 = sub_25574FE70();
  v16(v14, v5);
  return v17;
}

uint64_t CRValue.serializedData.getter(uint64_t a1, uint64_t a2)
{
  if (qword_27F7BD768 != -1)
  {
    swift_once();
  }

  if (qword_27F7BD760 != -1)
  {
    swift_once();
  }

  v2 = sub_25574F770();
  __swift_project_value_buffer(v2, qword_27F7C0570);
  return sub_25574FDC0();
}

id WrappedMergeableJournalAttributes.__allocating_init(_:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  sub_2556BBB3C(a1, v3 + OBJC_IVAR___WrappedMergeableJournalAttributes_value);
  v6.receiver = v3;
  v6.super_class = v1;
  v4 = objc_msgSendSuper2(&v6, sel_init);
  sub_2556CF788(a1);
  return v4;
}

id WrappedMergeableJournalAttributes.init(_:)(uint64_t a1)
{
  sub_2556BBB3C(a1, v1 + OBJC_IVAR___WrappedMergeableJournalAttributes_value);
  v5.receiver = v1;
  v5.super_class = type metadata accessor for WrappedMergeableJournalAttributes(0);
  v3 = objc_msgSendSuper2(&v5, sel_init);
  sub_2556CF788(a1);
  return v3;
}

uint64_t sub_2556CF788(uint64_t a1)
{
  v2 = type metadata accessor for MergeableJournalAttributes(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id WrappedMergeableJournalAttributes.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id sub_2556CF8A0(uint64_t a1)
{
  v2 = type metadata accessor for WrappedMergeableJournalAttributes(0);
  v3 = objc_allocWithZone(v2);
  sub_2556BBB3C(a1, v3 + OBJC_IVAR___WrappedMergeableJournalAttributes_value);
  v6.receiver = v3;
  v6.super_class = v2;
  v4 = objc_msgSendSuper2(&v6, sel_init);
  sub_2556CF788(a1);
  return v4;
}

id sub_2556CF97C(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1(0);
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_2556CF9C8(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEA00000000006E6FLL;
  v3 = 0x69746375646F7250;
  v4 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v5 = 16721;
    }

    else
    {
      v5 = 0x69746375646F7250;
    }

    if (v4)
    {
      v6 = 0xE200000000000000;
    }

    else
    {
      v6 = 0xEA00000000006E6FLL;
    }
  }

  else if (a1 == 2)
  {
    v6 = 0xE400000000000000;
    v5 = 1953719636;
  }

  else
  {
    if (a1 == 3)
    {
      v5 = 0x6D706F6C65766544;
    }

    else
    {
      v5 = 0x676E6967617453;
    }

    if (v4 == 3)
    {
      v6 = 0xEB00000000746E65;
    }

    else
    {
      v6 = 0xE700000000000000;
    }
  }

  v7 = 0xE400000000000000;
  v8 = 1953719636;
  v9 = 0x6D706F6C65766544;
  v10 = 0xEB00000000746E65;
  if (a2 != 3)
  {
    v9 = 0x676E6967617453;
    v10 = 0xE700000000000000;
  }

  if (a2 != 2)
  {
    v8 = v9;
    v7 = v10;
  }

  if (a2)
  {
    v3 = 16721;
    v2 = 0xE200000000000000;
  }

  if (a2 <= 1u)
  {
    v11 = v3;
  }

  else
  {
    v11 = v8;
  }

  if (a2 <= 1u)
  {
    v12 = v2;
  }

  else
  {
    v12 = v7;
  }

  if (v5 == v11 && v6 == v12)
  {
    v13 = 1;
  }

  else
  {
    v13 = sub_255750EB0();
  }

  return v13 & 1;
}

uint64_t sub_2556CFB34(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v4 = 0x6F746F6870;
    }

    else
    {
      v4 = 0x746E656D6F6DLL;
    }

    if (v2)
    {
      v3 = 0xE500000000000000;
    }

    else
    {
      v3 = 0xE600000000000000;
    }
  }

  else if (a1 == 2)
  {
    v3 = 0xE800000000000000;
    v4 = 0x6E6F697461657263;
  }

  else if (a1 == 3)
  {
    v3 = 0xE600000000000000;
    v4 = 0x6D6F74737563;
  }

  else
  {
    v3 = 0xE700000000000000;
    v4 = 0x6E776F6E6B6E75;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v9 = 0x6F746F6870;
    }

    else
    {
      v9 = 0x746E656D6F6DLL;
    }

    if (a2)
    {
      v8 = 0xE500000000000000;
    }

    else
    {
      v8 = 0xE600000000000000;
    }

    if (v4 != v9)
    {
      goto LABEL_33;
    }
  }

  else
  {
    v5 = 0xE600000000000000;
    v6 = 0x6D6F74737563;
    if (a2 != 3)
    {
      v6 = 0x6E776F6E6B6E75;
      v5 = 0xE700000000000000;
    }

    if (a2 == 2)
    {
      v7 = 0x6E6F697461657263;
    }

    else
    {
      v7 = v6;
    }

    if (a2 == 2)
    {
      v8 = 0xE800000000000000;
    }

    else
    {
      v8 = v5;
    }

    if (v4 != v7)
    {
      goto LABEL_33;
    }
  }

  if (v3 != v8)
  {
LABEL_33:
    v10 = sub_255750EB0();
    goto LABEL_34;
  }

  v10 = 1;
LABEL_34:

  return v10 & 1;
}

uint64_t EntrySource.init(rawValue:)@<X0>(uint64_t a2@<X8>)
{

  v3 = type metadata accessor for EntrySource(0);
  v4 = *(*(v3 - 8) + 56);

  return v4(a2, 1, 1, v3);
}

uint64_t EntrySource.rawValue.getter()
{
  v1 = type metadata accessor for EntrySource(0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2556CFEB0(v0, v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BECD0, &qword_255759028);
  v5 = (*(*(v4 - 8) + 48))(v3, 2, v4);
  if (v5)
  {
    if (v5 == 1)
    {
      return 0x746E456B6E616C62;
    }

    else
    {
      return 0x6E776F6E6B6E75;
    }
  }

  else
  {
    v7 = *(v4 + 48);
    v8 = sub_25574F020();
    (*(*(v8 - 8) + 8))(&v3[v7], v8);
    v9 = sub_25574F0D0();
    (*(*(v9 - 8) + 8))(v3, v9);
    return 0x6574736567677573;
  }
}

uint64_t sub_2556CFEB0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EntrySource(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2556CFF14@<X0>(uint64_t a2@<X1>, uint64_t a3@<X8>)
{

  v5 = *(*(a2 - 8) + 56);

  return v5(a3, 1, 1, a2);
}

uint64_t sub_2556CFF84@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  MEMORY[0x28223BE20](a1 - 8);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2556CFEB0(v5, v4);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BECD0, &qword_255759028);
  result = (*(*(v6 - 8) + 48))(v4, 2, v6);
  if (result)
  {
    if (result == 1)
    {
      v8 = 0xEA00000000007972;
      v9 = 0x746E456B6E616C62;
    }

    else
    {
      v8 = 0xE700000000000000;
      v9 = 0x6E776F6E6B6E75;
    }
  }

  else
  {
    v10 = *(v6 + 48);
    v11 = sub_25574F020();
    (*(*(v11 - 8) + 8))(&v4[v10], v11);
    v12 = sub_25574F0D0();
    result = (*(*(v12 - 8) + 8))(v4, v12);
    v8 = 0xEE007972746E4564;
    v9 = 0x6574736567677573;
  }

  *a2 = v9;
  a2[1] = v8;
  return result;
}

uint64_t EntryDateSource.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x746E656D6F6DLL;
  v3 = 0x6E6F697461657263;
  v4 = 0x6D6F74737563;
  if (v1 != 3)
  {
    v4 = 0x6E776F6E6B6E75;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x6F746F6870;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_2556D01BC()
{
  sub_255750F80();
  sub_2557501F0();

  return sub_255750FD0();
}

uint64_t sub_2556D0294(uint64_t a1)
{
  sub_2557501F0();
}

uint64_t sub_2556D0358(uint64_t a1)
{
  sub_255750F80();
  sub_2557501F0();

  return sub_255750FD0();
}

void sub_2556D0438(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE600000000000000;
  v4 = 0x746E656D6F6DLL;
  v5 = 0xE800000000000000;
  v6 = 0x6E6F697461657263;
  v7 = 0xE600000000000000;
  v8 = 0x6D6F74737563;
  if (v2 != 3)
  {
    v8 = 0x6E776F6E6B6E75;
    v7 = 0xE700000000000000;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x6F746F6870;
    v3 = 0xE500000000000000;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

uint64_t sub_2556D04F4(uint64_t a1, const char **a2, SEL *a3)
{
  v39 = a3;
  v5 = v3;
  v37 = a1;
  v38 = sub_25574F150();
  v36 = *(v38 - 8);
  MEMORY[0x28223BE20](v38);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_25574F160();
  v34 = *(v8 - 8);
  v35 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEB40, &unk_255754E40);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v14 = &v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v33 - v15;
  v17 = sub_25574F020();
  v18 = *(v17 - 8);
  v19 = MEMORY[0x28223BE20](v17);
  v21 = &v33 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v23 = &v33 - v22;
  v24 = *a2;
  v40 = v5;
  v25 = [v5 v24];
  if (v25)
  {
    v26 = v25;
    sub_25574EFF0();

    v27 = *(v18 + 32);
    v27(v16, v21, v17);
    (*(v18 + 56))(v16, 0, 1, v17);
    v27(v23, v16, v17);
  }

  else
  {
    (*(v18 + 56))(v16, 1, 1, v17);
    sub_25574F010();
    if ((*(v18 + 48))(v16, 1, v17) != 1)
    {
      sub_255687634(v16);
    }
  }

  sub_25574F140();
  v28 = v36;
  v29 = v38;
  (*(v36 + 104))(v7, *MEMORY[0x277CC9968], v38);
  sub_25574F130();
  (*(v28 + 8))(v7, v29);
  (*(v34 + 8))(v10, v35);
  if ((*(v18 + 48))(v14, 1, v17) == 1)
  {
    v30 = 0;
  }

  else
  {
    v30 = sub_25574EFC0();
    (*(v18 + 8))(v14, v17);
  }

  v31 = v40;
  [v40 *v39];

  [v31 setIsUploadedToCloud_];
  return (*(v18 + 8))(v23, v17);
}

unint64_t sub_2556D0948()
{
  result = qword_27F7BECD8;
  if (!qword_27F7BECD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7BECD8);
  }

  return result;
}

void sub_2556D0A04(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), void (*a4)(void))
{
  a3(0);
  v7 = [swift_getObjCClassFromMetadata() fetchRequest];
  sub_255669A88(0, &qword_27F7BDD58, 0x277CCAC30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F7BED30, qword_255757F10);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_255755060;
  *(v8 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEB38, &qword_25575EA60);
  *(v8 + 64) = sub_2556D3AD0();
  *(v8 + 32) = a1;

  v9 = sub_255750750();
  [v7 setPredicate_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BDD90, &unk_2557591E0);
  sub_2557508C0();
  if (!v4)
  {
    a4();
  }
}

uint64_t sub_2556D0B8C()
{
  v0 = sub_25574F2C0();
  __swift_allocate_value_buffer(v0, qword_27F7BED00);
  v1 = __swift_project_value_buffer(v0, qword_27F7BED00);
  if (qword_27F7BD5C0 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_27F7C04C8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

id static JournalDataUtilities.fetchObjectID(objectURI:context:)(uint64_t a1, void *a2)
{
  v3 = sub_25574EEE0();
  if (!v4)
  {
    return 0;
  }

  if (v3 == 0x616465726F632D78 && v4 == 0xEA00000000006174)
  {

    goto LABEL_6;
  }

  v5 = sub_255750EB0();

  if ((v5 & 1) == 0)
  {
    return 0;
  }

LABEL_6:
  result = [a2 persistentStoreCoordinator];
  if (result)
  {
    v7 = result;
    v8 = sub_25574EE80();
    v9 = [v7 managedObjectIDForURIRepresentation_];

    return v9;
  }

  return result;
}

uint64_t static JournalDataUtilities.fetchJournalEntryMOs(objectURIs:context:)(uint64_t a1, void *a2)
{
  v2 = _s13JournalShared0A13DataUtilitiesO14fetchObjectIds10objectURIs7contextSaySo09NSManagedF2IDCGSay10Foundation3URLVG_So0kF7ContextCtFZ_0(a1, a2);
  v3 = v2;
  v16 = MEMORY[0x277D84F90];
  v4 = v2 & 0xFFFFFFFFFFFFFF8;
  if (!(v2 >> 62))
  {
    v5 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5)
    {
      goto LABEL_3;
    }

LABEL_24:
    v7 = MEMORY[0x277D84F90];
    goto LABEL_25;
  }

LABEL_23:
  v5 = sub_255750A30();
  if (!v5)
  {
    goto LABEL_24;
  }

LABEL_3:
  v6 = 0;
  v7 = MEMORY[0x277D84F90];
  do
  {
    v8 = v6;
    while (1)
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x259C3E830](v8, v3);
      }

      else
      {
        if (v8 >= *(v4 + 16))
        {
          goto LABEL_22;
        }

        v9 = *(v3 + 8 * v8 + 32);
      }

      v10 = v9;
      v6 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
LABEL_22:
        __break(1u);
        goto LABEL_23;
      }

      v11 = [a2 objectWithID_];
      type metadata accessor for JournalEntryMO();
      if (swift_dynamicCastClass())
      {
        break;
      }

      type metadata accessor for JournalEntryAssetMO();
      v12 = swift_dynamicCastClass();
      if (v12)
      {
        v13 = [v12 entry];

        if (v13)
        {
          goto LABEL_17;
        }
      }

      else
      {
      }

      ++v8;
      if (v6 == v5)
      {
        goto LABEL_25;
      }
    }

LABEL_17:
    MEMORY[0x259C3E030]();
    if (*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_2557503B0();
    }

    sub_255750400();
    v7 = v16;
  }

  while (v6 != v5);
LABEL_25:

  return v7;
}

uint64_t static JournalDataUtilities.getValidEntriesCount(from:to:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[4] = a4;
  v5[5] = a5;
  v5[3] = a3;
  v7 = sub_2557508A0();
  v5[6] = v7;
  v5[7] = *(v7 - 8);
  v5[8] = swift_task_alloc();
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEB40, &unk_255754E40) - 8);
  v5[9] = v8;
  v5[10] = *(v8 + 64);
  v5[11] = swift_task_alloc();
  v5[12] = swift_task_alloc();
  if (a1)
  {
    swift_getObjectType();
    v9 = sub_255750490();
    v11 = v10;
  }

  else
  {
    v9 = 0;
    v11 = 0;
  }

  v5[13] = v9;
  v5[14] = v11;

  return MEMORY[0x2822009F8](sub_2556D10DC, v9, v11);
}

uint64_t sub_2556D10DC()
{
  v2 = v0[11];
  v1 = v0[12];
  v4 = v0[9];
  v3 = v0[10];
  v5 = v0[7];
  v17 = v0[6];
  v18 = v0[8];
  v16 = v0[5];
  v6 = v0[4];
  sub_2556700F4(v0[3], v1);
  sub_2556700F4(v6, v2);
  v7 = *(v4 + 80);
  v8 = (v7 + 16) & ~v7;
  v9 = (v3 + v7 + v8) & ~v7;
  v10 = swift_allocObject();
  v0[15] = v10;
  sub_255675060(v1, v10 + v8, &qword_27F7BEB40, &unk_255754E40);
  sub_255675060(v2, v10 + v9, &qword_27F7BEB40, &unk_255754E40);
  *(v10 + ((v3 + v9 + 7) & 0xFFFFFFFFFFFFFFF8)) = v16;
  (*(v5 + 104))(v18, *MEMORY[0x277CBE110], v17);
  v11 = v16;
  v12 = swift_task_alloc();
  v0[16] = v12;
  *v12 = v0;
  v12[1] = sub_2556D1294;
  v13 = v0[8];
  v14 = MEMORY[0x277D83B88];

  return MEMORY[0x28210EE50](v0 + 2, v13, sub_2556D3704, v10, v14);
}

uint64_t sub_2556D1294()
{
  v2 = *v1;
  v3 = *(*v1 + 64);
  v4 = *(*v1 + 56);
  v5 = *(*v1 + 48);
  *(*v1 + 136) = v0;

  (*(v4 + 8))(v3, v5);

  v6 = *(v2 + 112);
  v7 = *(v2 + 104);
  if (v0)
  {
    v8 = sub_2556D14D8;
  }

  else
  {
    v8 = sub_2556D1450;
  }

  return MEMORY[0x2822009F8](v8, v7, v6);
}

uint64_t sub_2556D1450()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_2556D14D8()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_2556D1550(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = sub_2556D2D64(a1, a2, 0, 1);
  type metadata accessor for JournalEntryMO();
  v6 = sub_2557508B0();

  if (!v3)
  {
    *a3 = v6;
  }
}

uint64_t static JournalDataUtilities.getValidEntriesCount(from:to:fetchLimit:context:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v4 = sub_2556D2D64(a1, a2, a3, a4 & 1);
  type metadata accessor for JournalEntryMO();
  v5 = sub_2557508B0();

  return v5;
}

uint64_t static JournalDataUtilities.getTimelineEntriesIDs(fetchLimit:context:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  *(v5 + 96) = a4;
  *(v5 + 24) = a3;
  *(v5 + 32) = a5;
  v7 = sub_2557508A0();
  *(v5 + 40) = v7;
  *(v5 + 48) = *(v7 - 8);
  *(v5 + 56) = swift_task_alloc();
  if (a1)
  {
    swift_getObjectType();
    v8 = sub_255750490();
    v10 = v9;
  }

  else
  {
    v8 = 0;
    v10 = 0;
  }

  *(v5 + 64) = v8;
  *(v5 + 72) = v10;

  return MEMORY[0x2822009F8](sub_2556D1718, v8, v10);
}

uint64_t sub_2556D1718()
{
  v2 = *(v0 + 48);
  v1 = *(v0 + 56);
  v4 = *(v0 + 32);
  v3 = *(v0 + 40);
  v5 = *(v0 + 96);
  v6 = *(v0 + 24);
  v7 = swift_allocObject();
  *(v0 + 80) = v7;
  *(v7 + 16) = v6;
  *(v7 + 24) = v5 & 1;
  *(v7 + 32) = v4;
  (*(v2 + 104))(v1, *MEMORY[0x277CBE110], v3);
  v8 = v4;
  v9 = swift_task_alloc();
  *(v0 + 88) = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEB38, &qword_25575EA60);
  *v9 = v0;
  v9[1] = sub_2556D1868;
  v11 = *(v0 + 56);

  return MEMORY[0x28210EE50](v0 + 16, v11, sub_2556D37B8, v7, v10);
}

void sub_2556D1868()
{
  v2 = *v1;

  if (v0)
  {
  }

  else
  {
    (*(v2[6] + 8))(v2[7], v2[5]);

    v3 = v2[8];
    v4 = v2[9];

    MEMORY[0x2822009F8](sub_2556D19BC, v3, v4);
  }
}

uint64_t sub_2556D19BC()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_2556D1A24@<X0>(char *a1@<X0>, char a2@<W1>, char **a3@<X8>)
{
  v42 = a3;
  v55 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F7BED20, &unk_2557551D0);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5);
  v54 = &v40 - v9;
  MEMORY[0x28223BE20](v8);
  v52 = &v40 - v10;
  v11 = sub_25574F0D0();
  v44 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v53 = &v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEB40, &unk_255754E40);
  v14 = MEMORY[0x28223BE20](v13 - 8);
  v16 = &v40 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v40 - v17;
  v19 = sub_25574F020();
  v20 = *(*(v19 - 8) + 56);
  v20(v18, 1, 1, v19);
  v20(v16, 1, 1, v19);
  v40 = v18;
  v41 = v16;
  v21 = sub_2556D34B0(v18, v16, v55, a2 & 1);
  v22 = v21;
  if (v21 >> 62)
  {
    goto LABEL_22;
  }

  for (i = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_255750A30())
  {
    v24 = 0;
    v50 = v22 & 0xFFFFFFFFFFFFFF8;
    v51 = v22 & 0xC000000000000001;
    v48 = (v44 + 48);
    v49 = (v44 + 56);
    v55 = MEMORY[0x277D84F90];
    v46 = i;
    v47 = (v44 + 32);
    v43 = v7;
    v45 = v22;
    while (v51)
    {
      v25 = MEMORY[0x259C3E830](v24, v22);
      v26 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        goto LABEL_20;
      }

LABEL_9:
      v27 = v25;
      v28 = [v27 id];
      if (v28)
      {
        v29 = v28;
        sub_25574F080();

        v30 = 0;
      }

      else
      {
        v30 = 1;
      }

      (*v49)(v7, v30, 1, v11);
      v31 = v54;
      sub_255675060(v7, v54, &unk_27F7BED20, &unk_2557551D0);
      v32 = v31;
      v33 = v52;
      sub_255675060(v32, v52, &unk_27F7BED20, &unk_2557551D0);

      v34 = v33;
      if ((*v48)(v33, 1, v11) == 1)
      {
        sub_255674B20(v33, &unk_27F7BED20, &unk_2557551D0);
        v22 = v45;
      }

      else
      {
        v35 = *v47;
        (*v47)(v53, v34, v11);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v55 = sub_255698A7C(0, *(v55 + 2) + 1, 1, v55);
        }

        v37 = *(v55 + 2);
        v36 = *(v55 + 3);
        if (v37 >= v36 >> 1)
        {
          v55 = sub_255698A7C((v36 > 1), v37 + 1, 1, v55);
        }

        v38 = v55;
        *(v55 + 2) = v37 + 1;
        v35(&v38[((*(v44 + 80) + 32) & ~*(v44 + 80)) + *(v44 + 72) * v37], v53, v11);
        v7 = v43;
        v22 = v45;
      }

      ++v24;
      if (v26 == v46)
      {
        goto LABEL_24;
      }
    }

    if (v24 >= *(v50 + 16))
    {
      goto LABEL_21;
    }

    v25 = *(v22 + 8 * v24 + 32);
    v26 = v24 + 1;
    if (!__OFADD__(v24, 1))
    {
      goto LABEL_9;
    }

LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    ;
  }

  v55 = MEMORY[0x277D84F90];
LABEL_24:

  sub_255674B20(v41, &qword_27F7BEB40, &unk_255754E40);
  result = sub_255674B20(v40, &qword_27F7BEB40, &unk_255754E40);
  *v42 = v55;
  return result;
}

char *static JournalDataUtilities.getTimelineEntriesIDs(from:to:fetchLimit:context:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F7BED20, &unk_2557551D0);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v11 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v45 = &v35 - v13;
  MEMORY[0x28223BE20](v12);
  v15 = &v35 - v14;
  v16 = sub_25574F0D0();
  v37 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v44 = &v35 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_2556D34B0(a1, a2, a3, a4 & 1);
  v19 = v18;
  if (v18 >> 62)
  {
    goto LABEL_22;
  }

  for (i = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_255750A30())
  {
    v21 = 0;
    v42 = v19 & 0xFFFFFFFFFFFFFF8;
    v43 = v19 & 0xC000000000000001;
    v40 = (v37 + 48);
    v41 = (v37 + 56);
    v46 = MEMORY[0x277D84F90];
    v38 = v15;
    v39 = (v37 + 32);
    v36 = v11;
    while (v43)
    {
      v22 = MEMORY[0x259C3E830](v21, v19);
      v15 = (v21 + 1);
      if (__OFADD__(v21, 1))
      {
        goto LABEL_20;
      }

LABEL_9:
      v23 = v19;
      v24 = v22;
      v25 = [v24 id];
      if (v25)
      {
        v26 = v25;
        sub_25574F080();

        v27 = 0;
      }

      else
      {
        v27 = 1;
      }

      (*v41)(v11, v27, 1, v16);
      v28 = v45;
      sub_255675060(v11, v45, &unk_27F7BED20, &unk_2557551D0);
      v29 = v38;
      sub_255675060(v28, v38, &unk_27F7BED20, &unk_2557551D0);

      if ((*v40)(v29, 1, v16) == 1)
      {
        sub_255674B20(v29, &unk_27F7BED20, &unk_2557551D0);
      }

      else
      {
        v30 = *v39;
        (*v39)(v44, v29, v16);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v46 = sub_255698A7C(0, *(v46 + 2) + 1, 1, v46);
        }

        v32 = *(v46 + 2);
        v31 = *(v46 + 3);
        if (v32 >= v31 >> 1)
        {
          v46 = sub_255698A7C((v31 > 1), v32 + 1, 1, v46);
        }

        v33 = v46;
        *(v46 + 2) = v32 + 1;
        v30(&v33[((*(v37 + 80) + 32) & ~*(v37 + 80)) + *(v37 + 72) * v32], v44, v16);
        v11 = v36;
      }

      v19 = v23;
      ++v21;
      if (v15 == i)
      {
        goto LABEL_24;
      }
    }

    if (v21 >= *(v42 + 16))
    {
      goto LABEL_21;
    }

    v22 = *(v19 + 8 * v21 + 32);
    v15 = (v21 + 1);
    if (!__OFADD__(v21, 1))
    {
      goto LABEL_9;
    }

LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    ;
  }

  v46 = MEMORY[0x277D84F90];
LABEL_24:

  return v46;
}

void *sub_2556D2364()
{
  result = sub_2556D2384();
  off_27F7BED18 = result;
  return result;
}

uint64_t sub_2556D2384()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F7BED60, &qword_255755C50);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_255759150;
  v1 = type metadata accessor for JournalEntryMO();
  v2 = sub_2556D3A88(&unk_27F7BF040, type metadata accessor for JournalEntryMO, &protocol conformance descriptor for JournalEntryMO);
  *(v0 + 32) = v1;
  *(v0 + 40) = v2;
  v3 = type metadata accessor for JournalEntryAssetFileAttachmentMO();
  v4 = sub_2556D3A88(&qword_27F7BED70, type metadata accessor for JournalEntryAssetFileAttachmentMO, &protocol conformance descriptor for JournalEntryAssetFileAttachmentMO);
  *(v0 + 48) = v3;
  *(v0 + 56) = v4;
  v5 = type metadata accessor for JournalEntryAssetMO();
  v6 = sub_2556D3A88(&qword_27F7BED78, type metadata accessor for JournalEntryAssetMO, &protocol conformance descriptor for JournalEntryAssetMO);
  *(v0 + 64) = v5;
  *(v0 + 72) = v6;
  v7 = type metadata accessor for JournalMO();
  v8 = sub_2556D3A88(&unk_27F7BED80, type metadata accessor for JournalMO, &protocol conformance descriptor for JournalMO);
  *(v0 + 80) = v7;
  *(v0 + 88) = v8;
  v9 = type metadata accessor for AppStorageMO();
  v10 = sub_2556D3A88(&qword_27F7BE610, type metadata accessor for AppStorageMO, &protocol conformance descriptor for AppStorageMO);
  *(v0 + 96) = v9;
  *(v0 + 104) = v10;
  if (static Runtime.Environment.useCloudKitStagingEnvironment.getter())
  {
    sub_25574A830(MEMORY[0x277D84F90]);
  }

  return v0;
}

uint64_t static JournalDataUtilities.markAllLocalDataForReuploading(context:)(uint64_t a1)
{
  if (qword_27F7BD778 != -1)
  {
LABEL_8:
    swift_once();
  }

  v3 = off_27F7BED18;
  v4 = *(off_27F7BED18 + 2);

  v5 = (v3 + 5);
  v6 = -1;
  while (v6 - v4 != -1)
  {
    if (++v6 >= v3[2])
    {
      __break(1u);
      goto LABEL_8;
    }

    v7 = v5 + 16;
    (*(*v5 + 80))(a1);
    v5 = v7;
    if (v1)
    {
    }
  }
}

void static JournalDataUtilities.deleteAllUserContent(context:)(void *a1)
{
  sub_2556D37DC(a1);
  if (!v1)
  {
    if (qword_27F7BD7F8 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for FileStoreConfiguration(0);
    __swift_project_value_buffer(v2, qword_27F7BFDF0);
    FileStoreConfiguration.deleteLocalFiles()();
  }
}

void static JournalDataUtilities.deleteAllLocalData(context:)(void *a1)
{
  sub_2556D37DC(a1);
  if (!v1)
  {
    if (qword_27F7BD7F8 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for FileStoreConfiguration(0);
    __swift_project_value_buffer(v3, qword_27F7BFDF0);
    FileStoreConfiguration.deleteLocalFiles()();
    sub_2556AC8A4(a1);
    type metadata accessor for AppStorageMO();
    static NSManagedObject.batchDeleteAll(context:)(a1);
  }
}

uint64_t static NSPredicate.entryDateInterval(interval:)()
{
  v26 = sub_25574F160();
  v0 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v2 = v25 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_25574F020();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v27 = v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = v25 - v8;
  v10 = MEMORY[0x28223BE20](v7);
  v12 = v25 - v11;
  MEMORY[0x28223BE20](v10);
  v14 = v25 - v13;
  v15 = sub_255669A88(0, &qword_27F7BDD58, 0x277CCAC30);
  v25[0] = "bundleId bundleDate ";
  v25[1] = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F7BED30, qword_255757F10);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_255755020;
  sub_25574EB60();
  sub_25574F140();
  sub_25574F110();
  (*(v0 + 8))(v2, v26);
  v17 = *(v4 + 8);
  v17(v14, v3);
  v18 = sub_25574EFC0();
  v17(v12, v3);
  v19 = sub_255669A88(0, &qword_27F7BDD60, 0x277CBEAA8);
  *(v16 + 56) = v19;
  v20 = sub_2556D3A10();
  *(v16 + 64) = v20;
  *(v16 + 32) = v18;
  sub_25574EB50();
  v21 = v27;
  Date.endOfDay.getter(v27);
  v17(v9, v3);
  v22 = v21;
  v23 = sub_25574EFC0();
  v17(v22, v3);
  *(v16 + 96) = v19;
  *(v16 + 104) = v20;
  *(v16 + 72) = v23;
  return sub_255750750();
}

uint64_t sub_2556D2A64()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BED48, &qword_255759198);
  if (swift_isClassType())
  {
    v1 = v0 == 0;
  }

  else
  {
    v1 = 1;
  }

  if (v1)
  {
    v2 = &unk_27F7BED50;
    v3 = &unk_2557591A0;
  }

  else
  {
    v2 = &unk_27F7C0010;
    v3 = "*}";
  }

  return __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
}

uint64_t _s13JournalShared0A13DataUtilitiesO14fetchObjectIds10objectURIs7contextSaySo09NSManagedF2IDCGSay10Foundation3URLVG_So0kF7ContextCtFZ_0(uint64_t a1, void *a2)
{
  v23 = a2;
  v3 = sub_25574EF10();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x277D84F90];
  v7 = *(a1 + 16);
  if (v7)
  {
    v9 = *(v4 + 16);
    v8 = v4 + 16;
    v24 = v9;
    v10 = a1 + ((*(v8 + 64) + 32) & ~*(v8 + 64));
    v11 = *(v8 + 56);
    v12 = (v8 - 8);
    v22 = MEMORY[0x277D84F90];
    v9(v6, v10, v3);
    while (1)
    {
      v13 = sub_25574EEE0();
      if (!v14)
      {
        break;
      }

      if (v13 == 0x616465726F632D78 && v14 == 0xEA00000000006174)
      {
      }

      else
      {
        v15 = sub_255750EB0();

        if ((v15 & 1) == 0)
        {
          break;
        }
      }

      v16 = [v23 persistentStoreCoordinator];
      if (!v16)
      {
        break;
      }

      v17 = v16;
      v18 = sub_25574EE80();
      v19 = [v17 managedObjectIDForURIRepresentation_];

      v20 = (*v12)(v6, v3);
      if (v19)
      {
        MEMORY[0x259C3E030](v20);
        if (*((v25 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v25 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_2557503B0();
        }

        sub_255750400();
        v22 = v25;
      }

LABEL_4:
      v10 += v11;
      if (!--v7)
      {
        return v22;
      }

      v24(v6, v10, v3);
    }

    (*v12)(v6, v3);
    goto LABEL_4;
  }

  return MEMORY[0x277D84F90];
}

id sub_2556D2D64(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v52 = a4;
  v47 = a3;
  v50 = a2;
  v5 = sub_25574F160();
  v44 = *(v5 - 8);
  v45 = v5;
  MEMORY[0x28223BE20](v5);
  v43 = v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEB40, &unk_255754E40);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v10 = v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = v42 - v11;
  v13 = sub_25574F020();
  v53 = *(v13 - 8);
  v14 = MEMORY[0x28223BE20](v13);
  v46 = v42 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v48 = v42 - v17;
  MEMORY[0x28223BE20](v16);
  v49 = v42 - v18;
  v19 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v20 = sub_255750180();
  v21 = [v19 initWithEntityName_];

  v54 = MEMORY[0x277D84F90];
  if (qword_27F7BD650 != -1)
  {
    swift_once();
  }

  v22 = qword_27F7BDCF0;
  MEMORY[0x259C3E030]();
  if (*((v54 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v54 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_2557503B0();
  }

  sub_255750400();
  sub_2556700F4(a1, v12);
  v23 = v53;
  v24 = *(v53 + 48);
  v25 = v24(v12, 1, v13);
  v26 = MEMORY[0x277D837D0];
  v51 = v21;
  if (v25 == 1)
  {
    sub_255674B20(v12, &qword_27F7BEB40, &unk_255754E40);
  }

  else
  {
    (*(v23 + 32))(v49, v12, v13);
    v42[1] = sub_255669A88(0, &qword_27F7BDD58, 0x277CCAC30);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F7BED30, qword_255757F10);
    v27 = v23;
    v28 = swift_allocObject();
    *(v28 + 16) = xmmword_255755020;
    *(v28 + 56) = v26;
    *(v28 + 64) = sub_255666F5C();
    *(v28 + 32) = 0x7461447972746E65;
    *(v28 + 40) = 0xE900000000000065;
    v29 = v43;
    sub_25574F140();
    v30 = v48;
    sub_25574F110();
    (*(v44 + 8))(v29, v45);
    v31 = sub_25574EFC0();
    v32 = *(v27 + 8);
    v32(v30, v13);
    *(v28 + 96) = sub_255669A88(0, &qword_27F7BDD60, 0x277CBEAA8);
    *(v28 + 104) = sub_2556D3A10();
    *(v28 + 72) = v31;
    sub_255750750();
    MEMORY[0x259C3E030]();
    if (*((v54 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v54 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_2557503B0();
    }

    sub_255750400();
    v32(v49, v13);
    v23 = v53;
  }

  sub_2556700F4(v50, v10);
  if (v24(v10, 1, v13) == 1)
  {
    sub_255674B20(v10, &qword_27F7BEB40, &unk_255754E40);
  }

  else
  {
    v33 = v46;
    (*(v23 + 32))(v46, v10, v13);
    sub_255669A88(0, &qword_27F7BDD58, 0x277CCAC30);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F7BED30, qword_255757F10);
    v34 = swift_allocObject();
    *(v34 + 16) = xmmword_255755020;
    *(v34 + 56) = MEMORY[0x277D837D0];
    *(v34 + 64) = sub_255666F5C();
    *(v34 + 32) = 0x7461447972746E65;
    *(v34 + 40) = 0xE900000000000065;
    v35 = v48;
    Date.endOfDay.getter(v48);
    v36 = sub_25574EFC0();
    v37 = *(v23 + 8);
    v37(v35, v13);
    *(v34 + 96) = sub_255669A88(0, &qword_27F7BDD60, 0x277CBEAA8);
    *(v34 + 104) = sub_2556D3A10();
    *(v34 + 72) = v36;
    sub_255750750();
    MEMORY[0x259C3E030]();
    if (*((v54 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v54 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_2557503B0();
    }

    sub_255750400();
    v37(v33, v13);
  }

  sub_255669A88(0, &qword_27F7BDD58, 0x277CCAC30);
  v38 = sub_255750370();

  v39 = [objc_opt_self() andPredicateWithSubpredicates_];

  v40 = v51;
  [v51 setPredicate_];

  if ((v52 & 1) == 0)
  {
    [v40 setFetchLimit_];
  }

  return v40;
}

uint64_t sub_2556D34B0(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v4 = sub_2556D2D64(a1, a2, a3, a4 & 1);
  [v4 setReturnsObjectsAsFaults_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F7C0010, "*}");
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_255755E40;
  sub_255669A88(0, &qword_27F7BE228, 0x277CCAC98);
  swift_getKeyPath();
  *(v5 + 32) = sub_2557507B0();
  v6 = sub_255750370();

  [v4 setSortDescriptors_];

  type metadata accessor for JournalEntryMO();
  v7 = sub_2557508C0();

  return v7;
}

void sub_2556D3704(uint64_t *a1@<X8>)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEB40, &unk_255754E40) - 8);
  v4 = *(v3 + 80);
  sub_2556D1550(v1 + ((v4 + 16) & ~v4), v1 + ((*(v3 + 64) + v4 + ((v4 + 16) & ~v4)) & ~v4), a1);
}

void sub_2556D37DC(void *a1)
{
  v2 = v1;
  sub_2556D2A64();
  inited = swift_initStackObject();
  inited[4] = type metadata accessor for JournalEntryMO();
  inited[5] = type metadata accessor for JournalEntryAssetMO();
  inited[6] = type metadata accessor for JournalEntryAssetFileAttachmentMO();
  if (qword_27F7BD770 != -1)
  {
    swift_once();
  }

  v5 = sub_25574F2C0();
  v6 = 32;
  v15 = v5;
  v16 = a1;
  while (1)
  {
    __swift_project_value_buffer(v5, qword_27F7BED00);
    v7 = sub_25574F2A0();
    v8 = sub_2557507A0();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v18 = v17;
      *v9 = 136315138;
      v10 = sub_255751020();
      v12 = v2;
      v13 = inited;
      v14 = sub_2556E474C(v10, v11, &v18);
      a1 = v16;

      *(v9 + 4) = v14;
      inited = v13;
      v2 = v12;
      _os_log_impl(&dword_255661000, v7, v8, "Deleting all %s records", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v17);
      v5 = v15;
      MEMORY[0x259C3F520](v17, -1, -1);
      MEMORY[0x259C3F520](v9, -1, -1);
    }

    static NSManagedObject.iterativeDeleteAll(context:)(a1);
    if (v2)
    {
      break;
    }

    v6 += 8;
    if (v6 == 56)
    {
      swift_setDeallocating();
      type metadata accessor for JournalMO();
      static NSManagedObject.batchDeleteAll(context:)(a1);
      return;
    }
  }

  swift_setDeallocating();
}

unint64_t sub_2556D3A10()
{
  result = qword_27F7BED40;
  if (!qword_27F7BED40)
  {
    sub_255669A88(255, &qword_27F7BDD60, 0x277CBEAA8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7BED40);
  }

  return result;
}

uint64_t sub_2556D3A88(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_2556D3AD0()
{
  result = qword_27F7BF1E0;
  if (!qword_27F7BF1E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7BEB38, &qword_25575EA60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7BF1E0);
  }

  return result;
}

void sub_2556D3B3C()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBC5E8]);
  v1 = sub_255750180();
  v2 = [v0 initWithZoneName_];

  qword_27F7BED98 = v2;
}

id static CloudKitStackConfiguration.zone.getter()
{
  if (qword_27F7BD780 != -1)
  {
    swift_once();
  }

  v1 = qword_27F7BED98;

  return v1;
}

id CloudKitStackConfiguration.createContainer(options:)(uint64_t a1)
{
  v3 = *(v1 + 8);
  v4 = objc_allocWithZone(MEMORY[0x277CBC220]);
  v5 = sub_255750180();
  v6 = [v4 initWithContainerIdentifier:v5 environment:v3];

  v7 = [objc_allocWithZone(MEMORY[0x277CBC218]) initWithContainerID:v6 options:a1];
  return v7;
}

uint64_t CloudKitStackConfiguration.init(storeFileProtectionType:environment:)@<X0>(uint64_t a1@<X0>, char *a2@<X1>, void *a3@<X8>)
{
  v6 = *a2;
  result = sub_2556D3CF4(&v6);
  *a3 = a1;
  a3[1] = result;
  return result;
}

uint64_t sub_2556D3CF4(_BYTE *a1)
{
  if (!*a1)
  {
    return 1;
  }

  if (qword_27F7BD810 != -1)
  {
    swift_once();
  }

  if (byte_27F7BFE4A)
  {
    return 2;
  }

  if (qword_27F7BD5B0 != -1)
  {
    swift_once();
  }

  v2 = sub_25574F2C0();
  __swift_project_value_buffer(v2, qword_27F7C0498);
  v3 = sub_25574F2A0();
  v4 = sub_255750790();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_255661000, v3, v4, "Trying to use non-production environment on an external build.", v5, 2u);
    MEMORY[0x259C3F520](v5, -1, -1);
  }

  return 1;
}

uint64_t sub_2556D3E28(uint64_t *a1, int a2)
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

uint64_t sub_2556D3E70(uint64_t result, int a2, int a3)
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

void *static JournalEntryMO.create(type:context:uuid:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v127 = a1;
  v5 = sub_25574F0D0();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v95 = &v93 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE0C8, &qword_255755C60);
  v115 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v126 = &v93 - v9;
  v10 = sub_25574F860();
  v132 = *(v10 - 8);
  v133 = v10;
  v11 = MEMORY[0x28223BE20](v10);
  v125 = &v93 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v131 = &v93 - v13;
  v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEA90, &unk_25575B390);
  v135 = *(v124 - 8);
  MEMORY[0x28223BE20](v124);
  v130 = &v93 - v14;
  v113 = type metadata accessor for MergeableEntryAssetsPlacement(0);
  MEMORY[0x28223BE20](v113);
  v123 = &v93 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE7E8, &unk_255757F00);
  MEMORY[0x28223BE20](v16 - 8);
  v129 = &v93 - v17;
  v18 = type metadata accessor for EntrySource(0);
  v19 = MEMORY[0x28223BE20](v18 - 8);
  v114 = &v93 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v22 = &v93 - v21;
  v119 = sub_25574F020();
  v117 = *(v119 - 8);
  MEMORY[0x28223BE20](v119);
  v118 = &v93 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F7BED20, &unk_2557551D0);
  v24 = MEMORY[0x28223BE20](v128);
  v112 = &v93 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x28223BE20](v24);
  v111 = &v93 - v27;
  v28 = MEMORY[0x28223BE20](v26);
  v134 = &v93 - v29;
  MEMORY[0x28223BE20](v28);
  v31 = &v93 - v30;
  type metadata accessor for JournalEntryMO();
  v32 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithContext_];
  sub_25567B1A4(a3, v31);
  v33 = 0;
  if ((*(v6 + 48))(v31, 1, v5) != 1)
  {
    v33 = sub_25574F050();
    (*(v6 + 8))(v31, v5);
  }

  [v32 setId_];

  v34 = v118;
  sub_25574F010();
  v35 = v32;
  v36 = sub_25574EFC0();
  v38 = v117 + 8;
  v37 = *(v117 + 8);
  v39 = v119;
  v37(v34, v119);
  [v35 setCreatedDate_];

  sub_25574F010();
  v40 = sub_25574EFC0();
  v37(v34, v39);
  [v35 setUpdatedDate_];

  sub_25574F010();
  v41 = sub_25574EFC0();
  v97 = v38;
  v96 = v37;
  v37(v34, v39);
  v122 = v35;
  [v35 setEntryDate_];

  sub_2556CFEB0(v127, v22);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BECD0, &qword_255759028);
  v43 = *(v42 - 8);
  v44 = *(v43 + 48);
  v45 = v43 + 48;
  v46 = v44(v22, 2, v42);
  v116 = v8;
  v110 = v42;
  v109 = v44;
  v108 = v45;
  if (!v46)
  {
    v96(&v22[*(v42 + 48)], v119);
    (*(v6 + 8))(v22, v5);
  }

  v47 = v122;
  v48 = sub_255750180();

  [v47 setEntryType_];

  sub_2556D4CDC();
  sub_25574FAB0();
  v121 = type metadata accessor for MergeableEntryAttributes(0);
  sub_25566464C();
  sub_25574FAB0();
  v94 = v6;
  v49 = *(v6 + 56);
  v49(v134, 1, 1, v5);
  v100 = v49;
  v99 = v6 + 56;
  v120 = sub_2556C635C();
  sub_25574F720();
  v50 = v113;
  v51 = v123;
  sub_25574FD10();
  sub_25574FD10();
  sub_25574F850();
  v52 = *(v50 + 20);
  v53 = v111;
  v49(v111, 1, 1, v5);
  v54 = v112;
  sub_25567B1A4(v53, v112);
  v98 = sub_255663D60();
  sub_25574F340();
  sub_2556B224C(v53);
  v55 = *(v50 + 32);
  sub_25574F850();
  v106 = *(v135 + 16);
  v107 = v135 + 16;
  v56 = v51;
  v57 = v51;
  v58 = v130;
  v59 = v124;
  v106(v56, v130, v124);
  sub_25567B1A4(v134, v53);
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEDB0, &unk_255759240);
  v60 = *(v104 - 8);
  v103 = *(v60 + 8);
  v105 = v60 + 8;
  v103(v57 + v52, v104);
  sub_25567B1A4(v53, v54);
  sub_25574F340();
  sub_2556B224C(v53);
  v61 = *(v135 + 8);
  v135 += 8;
  v102 = v61;
  v61(v58, v59);
  v62 = v134;
  sub_2556B224C(v134);
  v63 = *(v132 + 40);
  v132 += 40;
  v101 = v63;
  v63(v57 + v55, v131, v133);
  sub_25574FD10();
  sub_25574F850();
  v64 = &v129[*(v121 + 24)];
  v65 = v62;
  v66 = v100;
  v100(v65, 1, 1, v5);
  sub_25574F720();
  sub_25574FD10();
  sub_25574FD10();
  sub_25574F850();
  v67 = *(v50 + 20);
  v66(v53, 1, 1, v5);
  sub_25567B1A4(v53, v54);
  sub_25574F340();
  sub_2556B224C(v53);
  v113 = *(v50 + 32);
  sub_25574F850();
  v68 = v124;
  v106(v64, v58, v124);
  v69 = v134;
  sub_25567B1A4(v134, v53);
  v70 = v5;
  v103(&v64[v67], v104);
  sub_25567B1A4(v53, v54);
  sub_25574F340();
  sub_2556B224C(v53);
  v102(v130, v68);
  sub_2556B224C(v69);
  v71 = v101;
  v101(&v64[v113], v125, v133);
  v72 = v121;
  v73 = *(v121 + 28);
  v74 = v129;
  v135 = v70;
  sub_25574FD10();
  v75 = *(v72 + 32);
  sub_25574F850();
  v76 = v64;
  v77 = v122;
  sub_255677F7C(v123, v76);
  v79 = v115;
  v78 = v116;
  v80 = v126;
  (*(v115 + 24))(v74 + v73, v126, v116);
  v71(v74 + v75, v131, v133);
  (*(v79 + 40))(v74 + v73, v80, v78);
  (*(*(v72 - 8) + 56))(v74, 0, 1, v72);
  sub_2556B7918(v74);
  v81 = v114;
  sub_2556CFEB0(v127, v114);
  v82 = v110;
  if (!v109(v81, 2, v110))
  {
    v83 = *(v82 + 48);
    v84 = v94;
    v85 = v95;
    v86 = v135;
    (*(v94 + 32))(v95, v81, v135);
    v87 = v118;
    v88 = v81 + v83;
    v89 = v119;
    (*(v117 + 32))(v118, v88, v119);
    v90 = sub_25574F050();
    [v77 setBundleId_];

    v91 = sub_25574EFC0();
    [v77 setBundleDate_];

    v96(v87, v89);
    (*(v84 + 8))(v85, v86);
  }

  return v77;
}

unint64_t sub_2556D4CDC()
{
  result = qword_27F7BEDA0;
  if (!qword_27F7BEDA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7BEDA0);
  }

  return result;
}

uint64_t WorkoutHeartRateFormatStyle.locale.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_25574F100();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t WorkoutHeartRateFormatStyle.locale.setter(uint64_t a1)
{
  v3 = sub_25574F100();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t WorkoutHeartRateFormatStyle.locale(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_2556D4EA0(v2, a2);
  v5 = sub_25574F100();
  v6 = *(*(v5 - 8) + 24);

  return v6(a2, a1, v5);
}

uint64_t sub_2556D4EA0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WorkoutHeartRateFormatStyle(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2556D4F04@<X0>(uint64_t a1@<X8>)
{
  v23 = a1;
  v22 = sub_255750E80();
  v1 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v3 = &v21 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_25574EE10();
  v4 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_25574F100();
  MEMORY[0x28223BE20](v7 - 8);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEDB8, &qword_255759250);
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v21 - v14;
  MEMORY[0x28223BE20](v13);
  v17 = &v21 - v16;
  _s10Foundation11FormatStyleP13JournalSharedAD016WorkoutHeartRatebC0VRszrlE14beatsPerMinuteAFvgZ_0();
  sub_2556D5E6C();
  sub_25574EDA0();
  sub_25574EE00();
  MEMORY[0x259C3CAA0](v6, v8);
  (*(v4 + 8))(v6, v21);
  v18 = *(v9 + 8);
  v18(v12, v8);
  v19 = v22;
  (*(v1 + 104))(v3, *MEMORY[0x277D84678], v22);
  MEMORY[0x259C3CA90](v3, 0, 1, v8);
  (*(v1 + 8))(v3, v19);
  v18(v15, v8);
  MEMORY[0x259C3CA80](v24, v8);
  return (v18)(v17, v8);
}

unint64_t sub_2556D524C()
{
  result = qword_27F7BEDC0;
  if (!qword_27F7BEDC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7BEDB8, &qword_255759250);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7BEDC0);
  }

  return result;
}

uint64_t sub_2556D52C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x656C61636F6CLL && a2 == 0xE600000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_255750EB0();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_2556D534C(uint64_t a1)
{
  v2 = sub_2556D553C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2556D5388(uint64_t a1)
{
  v2 = sub_2556D553C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t WorkoutHeartRateFormatStyle.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEDD0, &qword_255759258);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2556D553C();
  sub_255750FF0();
  sub_25574F100();
  sub_25567D770(&qword_27F7BEDE0, MEMORY[0x277CC9788], MEMORY[0x277CC9790]);
  sub_255750E30();
  return (*(v3 + 8))(v5, v2);
}

unint64_t sub_2556D553C()
{
  result = qword_27F7BEDD8;
  if (!qword_27F7BEDD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7BEDD8);
  }

  return result;
}

uint64_t WorkoutHeartRateFormatStyle.hash(into:)(uint64_t a1)
{
  sub_25574F100();
  sub_25567D770(&qword_27F7BEDE8, MEMORY[0x277CC9788], MEMORY[0x277CC9798]);

  return sub_2557500A0();
}

uint64_t WorkoutHeartRateFormatStyle.hashValue.getter()
{
  sub_255750F80();
  sub_25574F100();
  sub_25567D770(&qword_27F7BEDE8, MEMORY[0x277CC9788], MEMORY[0x277CC9798]);
  sub_2557500A0();
  return sub_255750FD0();
}

uint64_t WorkoutHeartRateFormatStyle.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v16 = a2;
  v3 = sub_25574F100();
  v17 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v18 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEDF0, &qword_255759260);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v15 - v7;
  v9 = type metadata accessor for WorkoutHeartRateFormatStyle(0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s10Foundation11FormatStyleP13JournalSharedAD016WorkoutHeartRatebC0VRszrlE14beatsPerMinuteAFvgZ_0();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2556D553C();
  v12 = v19;
  sub_255750FE0();
  if (!v12)
  {
    v13 = v17;
    sub_25567D770(&qword_27F7BEDF8, MEMORY[0x277CC9788], MEMORY[0x277CC97A8]);
    sub_255750D80();
    (*(v6 + 8))(v8, v5);
    (*(v13 + 40))(v11, v18, v3);
    sub_2556D4EA0(v11, v16);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_2556D5CCC(v11);
}

uint64_t sub_2556D592C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_2556D4EA0(v2, a2);
  v5 = sub_25574F100();
  v6 = *(*(v5 - 8) + 24);

  return v6(a2, a1, v5);
}

uint64_t sub_2556D59C4(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEDD0, &qword_255759258);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2556D553C();
  sub_255750FF0();
  sub_25574F100();
  sub_25567D770(&qword_27F7BEDE0, MEMORY[0x277CC9788], MEMORY[0x277CC9790]);
  sub_255750E30();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_2556D5B3C()
{
  sub_255750F80();
  sub_25574F100();
  sub_25567D770(&qword_27F7BEDE8, MEMORY[0x277CC9788], MEMORY[0x277CC9798]);
  sub_2557500A0();
  return sub_255750FD0();
}

uint64_t sub_2556D5BC4(uint64_t a1)
{
  sub_25574F100();
  sub_25567D770(&qword_27F7BEDE8, MEMORY[0x277CC9788], MEMORY[0x277CC9798]);

  return sub_2557500A0();
}

uint64_t sub_2556D5C48(uint64_t a1)
{
  sub_255750F80();
  sub_25574F100();
  sub_25567D770(&qword_27F7BEDE8, MEMORY[0x277CC9788], MEMORY[0x277CC9798]);
  sub_2557500A0();
  return sub_255750FD0();
}

uint64_t sub_2556D5CCC(uint64_t a1)
{
  v2 = type metadata accessor for WorkoutHeartRateFormatStyle(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_2556D5D68()
{
  result = qword_27F7BEE30;
  if (!qword_27F7BEE30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7BEE30);
  }

  return result;
}

unint64_t sub_2556D5DC0()
{
  result = qword_27F7BEE38;
  if (!qword_27F7BEE38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7BEE38);
  }

  return result;
}

unint64_t sub_2556D5E18()
{
  result = qword_27F7BEE40;
  if (!qword_27F7BEE40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7BEE40);
  }

  return result;
}

unint64_t sub_2556D5E6C()
{
  result = qword_27F7BEE48;
  if (!qword_27F7BEE48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7BEE48);
  }

  return result;
}

uint64_t type metadata accessor for ConfettiAssetMetadata(uint64_t a1)
{
  result = qword_27F7BEE90;
  if (!qword_27F7BEE90)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t ConfettiAssetMetadata.placeName.getter()
{
  v1 = *(v0 + *(type metadata accessor for ConfettiAssetMetadata(0) + 24));

  return v1;
}

uint64_t ConfettiAssetMetadata.init(isHost:title:placeName:startDate:endDate:)@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, _BYTE *a7@<X8>)
{
  *a7 = a1;
  v13 = type metadata accessor for ConfettiAssetMetadata(0);
  sub_255675060(a2, &a7[v13[5]], &qword_27F7BEE50, &unk_2557594C0);
  v14 = &a7[v13[6]];
  *v14 = a3;
  v14[1] = a4;
  sub_255675060(a5, &a7[v13[7]], &qword_27F7BEB40, &unk_255754E40);
  return sub_255675060(a6, &a7[v13[8]], &qword_27F7BEB40, &unk_255754E40);
}

uint64_t sub_2556D60F4()
{
  v1 = *v0;
  v2 = 0x74736F487369;
  v3 = 0x6D614E6563616C70;
  v4 = 0x7461447472617473;
  if (v1 != 3)
  {
    v4 = 0x65746144646E65;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x656C746974;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_2556D6190@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_2556D6ECC(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_2556D61C4(uint64_t a1)
{
  v2 = sub_2556D64D8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2556D6200(uint64_t a1)
{
  v2 = sub_2556D64D8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ConfettiAssetMetadata.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEE58, &qword_2557594D0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2556D64D8();
  sub_255750FF0();
  v13 = 0;
  sub_255750DC0();
  if (!v1)
  {
    type metadata accessor for ConfettiAssetMetadata(0);
    v12 = 1;
    sub_25574ED30();
    sub_2556D6BB4(&qword_27F7BEE68, MEMORY[0x277CC8C40], MEMORY[0x277CC8C48]);
    sub_255750DF0();
    v11 = 2;
    sub_255750DB0();
    v10 = 3;
    sub_25574F020();
    sub_2556D6BB4(&qword_27F7BDC18, MEMORY[0x277CC9578], MEMORY[0x277CC9580]);
    sub_255750DF0();
    v9 = 4;
    sub_255750DF0();
  }

  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_2556D64D8()
{
  result = qword_27F7BEE60;
  if (!qword_27F7BEE60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7BEE60);
  }

  return result;
}

uint64_t ConfettiAssetMetadata.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEB40, &unk_255754E40);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v25 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v26 = &v24 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEE50, &unk_2557594C0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v24 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEE70, &qword_2557594D8);
  v27 = *(v10 - 8);
  v28 = v10;
  MEMORY[0x28223BE20](v10);
  v12 = &v24 - v11;
  v13 = type metadata accessor for ConfettiAssetMetadata(0);
  MEMORY[0x28223BE20](v13);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2556D64D8();
  v16 = v29;
  sub_255750FE0();
  if (v16)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v34 = 0;
  *v15 = sub_255750D10();
  sub_25574ED30();
  v33 = 1;
  sub_2556D6BB4(&qword_27F7BEE78, MEMORY[0x277CC8C40], MEMORY[0x277CC8C60]);
  sub_255750D40();
  sub_255675060(v9, &v15[v13[5]], &qword_27F7BEE50, &unk_2557594C0);
  v32 = 2;
  v17 = sub_255750D00();
  v18 = &v15[v13[6]];
  *v18 = v17;
  v18[1] = v19;
  sub_25574F020();
  v31 = 3;
  sub_2556D6BB4(&qword_27F7BDC38, MEMORY[0x277CC9578], MEMORY[0x277CC95A0]);
  v20 = v26;
  sub_255750D40();
  sub_255675060(v20, &v15[v13[7]], &qword_27F7BEB40, &unk_255754E40);
  v30 = 4;
  v21 = v25;
  v22 = v28;
  sub_255750D40();
  (*(v27 + 8))(v12, v22);
  sub_255675060(v21, &v15[v13[8]], &qword_27F7BEB40, &unk_255754E40);
  sub_2556D6A70(v15, v24);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_2556D6AD4(v15);
}

uint64_t sub_2556D6A70(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ConfettiAssetMetadata(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2556D6AD4(uint64_t a1)
{
  v2 = type metadata accessor for ConfettiAssetMetadata(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2556D6B30(uint64_t a1)
{
  *(a1 + 8) = sub_2556D6BB4(&qword_27F7BEE80, type metadata accessor for ConfettiAssetMetadata, &protocol conformance descriptor for ConfettiAssetMetadata);
  result = sub_2556D6BB4(&qword_27F7BEE88, type metadata accessor for ConfettiAssetMetadata, &protocol conformance descriptor for ConfettiAssetMetadata);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_2556D6BB4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_2556D6C54(uint64_t a1)
{
  sub_25566BFA8(319, &qword_27F7BEEA0, MEMORY[0x277D839B0]);
  if (v1 <= 0x3F)
  {
    sub_2556D6D60(319, &qword_27F7BEEA8, MEMORY[0x277CC8C40]);
    if (v2 <= 0x3F)
    {
      sub_25566BFA8(319, &qword_27F7BE538, MEMORY[0x277D837D0]);
      if (v3 <= 0x3F)
      {
        sub_2556D6D60(319, &qword_27F7BDC68, MEMORY[0x277CC9578]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_2556D6D60(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_255750950();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_2556D6DC8()
{
  result = qword_27F7BEEB0;
  if (!qword_27F7BEEB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7BEEB0);
  }

  return result;
}

unint64_t sub_2556D6E20()
{
  result = qword_27F7BEEB8;
  if (!qword_27F7BEEB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7BEEB8);
  }

  return result;
}

unint64_t sub_2556D6E78()
{
  result = qword_27F7BEEC0;
  if (!qword_27F7BEEC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7BEEC0);
  }

  return result;
}

uint64_t sub_2556D6ECC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x74736F487369 && a2 == 0xE600000000000000;
  if (v4 || (sub_255750EB0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656C746974 && a2 == 0xE500000000000000 || (sub_255750EB0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6D614E6563616C70 && a2 == 0xE900000000000065 || (sub_255750EB0() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7461447472617473 && a2 == 0xE900000000000065 || (sub_255750EB0() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x65746144646E65 && a2 == 0xE700000000000000)
  {

    return 4;
  }

  else
  {
    v6 = sub_255750EB0();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_2556D70AC()
{
  v0 = sub_25574F2C0();
  __swift_allocate_value_buffer(v0, qword_27F7BEEC8);
  v1 = __swift_project_value_buffer(v0, qword_27F7BEEC8);
  if (qword_27F7BD5E0 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_27F7C0528);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_2556D717C()
{
  sub_2556D7174();

  return swift_getObjCClassFromMetadata();
}

uint64_t sub_2556D71A4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *v2;
  v6 = *MEMORY[0x277D85000];
  v38 = *MEMORY[0x277D85000] & *v2;
  v7 = sub_25574F2C0();
  v39 = *(v7 - 8);
  v40 = v7;
  v8 = MEMORY[0x28223BE20](v7);
  MEMORY[0x28223BE20](v8);
  v10 = &v37 - v9;
  v11 = *((v6 & v5) + 0x58);
  v12 = *((v6 & v5) + 0x50);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v14 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v16 = &v37 - v15;
  sub_25566CDF8(a1, &v43);
  if (v44)
  {
    v37 = a2;
    sub_255663374(&v43, v45);
    sub_255678EBC(v45, &v43);
    if (swift_dynamicCast())
    {
      (*(v11 + 24))(v12, v11);
      v32 = CRDT.serializedData.getter(AssociatedTypeWitness, *(v38 + 96));
      v34 = v33;
      v35 = v37;
      v37[3] = MEMORY[0x277CC9318];
      swift_unknownObjectRelease();
      *v35 = v32;
      v35[1] = v34;
      (*(v14 + 8))(v16, AssociatedTypeWitness);
      return __swift_destroy_boxed_opaque_existential_1(v45);
    }

    else
    {
      if (qword_27F7BD788 != -1)
      {
        swift_once();
      }

      v17 = v40;
      v18 = __swift_project_value_buffer(v40, qword_27F7BEEC8);
      v19 = v39;
      (*(v39 + 16))(v10, v18, v17);
      sub_255678EBC(v45, &v43);
      v20 = sub_25574F2A0();
      v21 = sub_255750780();
      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        v23 = swift_slowAlloc();
        v42 = v23;
        *v22 = 136315394;
        v24 = sub_255751020();
        v26 = sub_2556E474C(v24, v25, &v42);

        *(v22 + 4) = v26;
        *(v22 + 12) = 2080;
        sub_255678EBC(&v43, v41);
        v27 = sub_2557501D0();
        v29 = v28;
        __swift_destroy_boxed_opaque_existential_1(&v43);
        v30 = sub_2556E474C(v27, v29, &v42);

        *(v22 + 14) = v30;
        _os_log_impl(&dword_255661000, v20, v21, "Can't serialize CRDT value because it isn't of type %s. Value: %s", v22, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x259C3F520](v23, -1, -1);
        MEMORY[0x259C3F520](v22, -1, -1);
      }

      else
      {

        __swift_destroy_boxed_opaque_existential_1(&v43);
      }

      (*(v19 + 8))(v10, v17);
      result = __swift_destroy_boxed_opaque_existential_1(v45);
      v31 = v37;
      *v37 = 0u;
      *(v31 + 1) = 0u;
    }
  }

  else
  {
    result = sub_255674B20(&v43, &qword_27F7BE250, &qword_255756600);
    *a2 = 0u;
    *(a2 + 1) = 0u;
  }

  return result;
}

id sub_2556D77F8()
{
  v1 = type metadata accessor for MergeableDataValueTransformer(0, *((*MEMORY[0x277D85000] & *v0) + 0x50), *((*MEMORY[0x277D85000] & *v0) + 0x58), *((*MEMORY[0x277D85000] & *v0) + 0x60));
  v3.receiver = v0;
  v3.super_class = v1;
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

unint64_t sub_2556D787C()
{
  result = qword_27F7BE1D8;
  if (!qword_27F7BE1D8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F7BE1D8);
  }

  return result;
}

uint64_t MergeableAssetTextAttachment.assetID.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_25574F0D0();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t MergeableAssetTextAttachment.assetID.setter(uint64_t a1)
{
  v3 = sub_25574F0D0();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t MergeableAssetTextAttachment.preferredSize.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for MergeableAssetTextAttachment(0) + 20);

  return sub_2556D7A4C(a1, v3);
}

uint64_t sub_2556D7A4C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MergeableSize(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t MergeableAssetTextAttachment.anchorAlignment.getter@<X0>(uint64_t a1@<X8>)
{
  result = type metadata accessor for MergeableAssetTextAttachment(0);
  v4 = (v1 + *(result + 24));
  v5 = *v4;
  LOBYTE(v4) = *(v4 + 8);
  *a1 = v5;
  *(a1 + 8) = v4;
  return result;
}

uint64_t MergeableAssetTextAttachment.anchorAlignment.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  result = type metadata accessor for MergeableAssetTextAttachment(0);
  v5 = v1 + *(result + 24);
  *v5 = v2;
  *(v5 + 8) = v3;
  return result;
}

uint64_t static MergeableSize.== infix(_:_:)(double *a1, double *a2)
{
  if (*a1 != *a2 || a1[1] != a2[1])
  {
    return 0;
  }

  type metadata accessor for MergeableSize(0);

  return sub_25574FAF0();
}

uint64_t MergeableAssetTextAttachment.hash(into:)(uint64_t a1)
{
  sub_25574F0D0();
  sub_2556647AC(&qword_27F7BE0B0, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_2557500A0();
  v2 = (v1 + *(type metadata accessor for MergeableAssetTextAttachment(0) + 20));
  v3 = *v2;
  if (*v2 == 0.0)
  {
    v3 = 0.0;
  }

  MEMORY[0x259C3EC90](*&v3);
  v4 = v2[1];
  if (v4 == 0.0)
  {
    v4 = 0.0;
  }

  MEMORY[0x259C3EC90](*&v4);
  type metadata accessor for MergeableSize(0);
  sub_25574FB30();
  sub_2556647AC(&qword_27F7BE3B0, MEMORY[0x277CFB650], MEMORY[0x277CFB658]);
  sub_2557500A0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEA18, &unk_255759730);
  sub_25574F530();
  return sub_2557500A0();
}

uint64_t MergeableAssetTextAttachment.init(assetID:preferredSize:anchorAlignment:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  v7 = sub_25574F0D0();
  v8 = *(v7 - 8);
  (*(v8 + 16))(a4, a1, v7);
  v9 = type metadata accessor for MergeableAssetTextAttachment(0);
  sub_2556DB0C0(a2, a4 + *(v9 + 20), type metadata accessor for MergeableSize);
  sub_25567890C();
  sub_25574F550();
  sub_25574FB20();
  sub_2556DB064(a2);
  result = (*(v8 + 8))(a1, v7);
  v11 = a4 + *(v9 + 24);
  *v11 = v12;
  *(v11 + 8) = v13;
  return result;
}

uint64_t MergeableSize.hash(into:)(uint64_t a1)
{
  v2 = *v1;
  if (*v1 == 0.0)
  {
    v2 = 0.0;
  }

  MEMORY[0x259C3EC90](*&v2);
  v3 = v1[1];
  if (v3 == 0.0)
  {
    v3 = 0.0;
  }

  MEMORY[0x259C3EC90](*&v3);
  type metadata accessor for MergeableSize(0);
  sub_25574FB30();
  sub_2556647AC(&qword_27F7BE3B0, MEMORY[0x277CFB650], MEMORY[0x277CFB658]);
  return sub_2557500A0();
}

uint64_t sub_2556D80C0(uint64_t (*a1)(void *))
{
  sub_255750F80();
  a1(v3);
  return sub_255750FD0();
}

uint64_t sub_2556D8120(uint64_t a1, uint64_t a2, uint64_t (*a3)(void *))
{
  sub_255750F80();
  a3(v5);
  return sub_255750FD0();
}

uint64_t sub_2556D8184(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *))
{
  sub_255750F80();
  a4(v6);
  return sub_255750FD0();
}

uint64_t sub_2556D81C8(double *a1, double *a2, uint64_t a3)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return sub_25574FAF0();
  }

  else
  {
    return 0;
  }
}

JournalShared::MergeableAnchorAlignment_optional __swiftcall MergeableAnchorAlignment.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 4;
  if (rawValue < 4)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t sub_2556D8224(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_2556DB498();
  sub_2556DB274();

  return sub_25574FDD0();
}

void *sub_2556D8294()
{
  sub_2556DB498();
  sub_25567890C();
  return sub_25574FDF0();
}

uint64_t sub_2556D8300(uint64_t a1, uint64_t a2)
{
  sub_2556DB498();
  sub_25567890C();
  return sub_25574FE00();
}

uint64_t sub_2556D835C(uint64_t a1)
{
  v2 = sub_2556DB498();
  v3 = sub_25567890C();
  v4 = MEMORY[0x277CFB810];

  return MEMORY[0x28214E330](a1, v2, v3, v4);
}

uint64_t sub_2556D8414(uint64_t a1, uint64_t a2)
{
  v4 = sub_25567890C();
  v5 = MEMORY[0x277CFB810];

  return MEMORY[0x28214E590](a1, a2, v4, v5);
}

uint64_t _s13JournalShared13MergeableSizeV5width6heightACSd_SdtcfC_0@<X0>(double *a1@<X8>, double a2@<D0>, double a3@<D1>)
{
  type metadata accessor for MergeableSize(0);
  result = sub_25574FB20();
  *a1 = a2;
  a1[1] = a3;
  return result;
}

uint64_t MergeableSize.debugDescription.getter()
{
  sub_255750B00();
  MEMORY[0x259C3DED0](0x203A6874646977, 0xE700000000000000);
  sub_255750530();
  MEMORY[0x259C3DED0](0x746867696568202CLL, 0xEA0000000000203ALL);
  sub_255750530();
  return 0;
}

uint64_t sub_2556D857C()
{
  sub_255750B00();
  MEMORY[0x259C3DED0](0x203A6874646977, 0xE700000000000000);
  sub_255750530();
  MEMORY[0x259C3DED0](0x746867696568202CLL, 0xEA0000000000203ALL);
  sub_255750530();
  return 0;
}

uint64_t MergeableAnchorAlignment.debugDescription.getter()
{
  v1 = 0x676E696461656CLL;
  v2 = 0x7265746E6563;
  if (*v0 != 2)
  {
    v2 = 1701736302;
  }

  if (*v0)
  {
    v1 = 0x676E696C69617274;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_2556D86B0()
{
  v1 = 0x676E696461656CLL;
  v2 = 0x7265746E6563;
  if (*v0 != 2)
  {
    v2 = 1701736302;
  }

  if (*v0)
  {
    v1 = 0x676E696C69617274;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t MergeableAssetTextAttachment.debugDescription.getter()
{
  sub_255750B00();
  MEMORY[0x259C3DED0](0x3A44497465737341, 0xE900000000000020);
  sub_25574F0D0();
  sub_2556647AC(&qword_27F7BF200, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
  v0 = sub_255750E60();
  MEMORY[0x259C3DED0](v0);

  MEMORY[0x259C3DED0](0xD000000000000010, 0x8000000255752D90);
  type metadata accessor for MergeableAssetTextAttachment(0);
  type metadata accessor for MergeableSize(0);
  sub_255750C20();
  MEMORY[0x259C3DED0](0xD000000000000012, 0x8000000255752DB0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEA18, &unk_255759730);
  sub_255750C20();
  return 0;
}

uint64_t MergeableAssetTextAttachment.copy(renamingReferences:)@<X0>(uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = sub_25574FB30();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for MergeableSize(0);
  v10 = v9 - 8;
  MEMORY[0x28223BE20](v9);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2556DB0C0(v2, a2, type metadata accessor for MergeableAssetTextAttachment);
  v13 = sub_25574F0D0();
  (*(*(v13 - 8) + 24))(a2, v2, v13);
  v14 = type metadata accessor for MergeableAssetTextAttachment(0);
  v15 = (v2 + v14[5]);
  sub_2556DB0C0(v15, v12, type metadata accessor for MergeableSize);
  *v12 = *v15;
  sub_25574FB00();
  v16 = *(v6 + 40);
  v16(&v12[*(v10 + 32)], v8, v5);
  sub_2556D7A4C(v12, a2 + v14[5]);
  v17 = v14[6];
  v18 = *(v3 + v17);
  v19 = *(v3 + v17 + 8);
  v20 = a2 + v17;
  *v20 = v18;
  *(v20 + 8) = v19;
  sub_25574FB00();
  return (v16)(a2 + v14[7], v8, v5);
}

uint64_t MergeableSize.copy(renamingReferences:)@<X0>(char *a2@<X8>)
{
  v4 = sub_25574FB30();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2556DB0C0(v2, a2, type metadata accessor for MergeableSize);
  *a2 = *v2;
  v8 = type metadata accessor for MergeableSize(0);
  sub_25574FB00();
  return (*(v5 + 40))(&a2[*(v8 + 24)], v7, v4);
}

uint64_t MergeableAssetTextAttachment.visitReferences(_:)(uint64_t a1)
{
  type metadata accessor for MergeableAssetTextAttachment(0);
  type metadata accessor for MergeableSize(0);
  sub_25574FAE0();
  return sub_25574FAE0();
}

uint64_t MergeableAssetTextAttachment.encode(to:)()
{
  result = sub_25574FF70();
  if (!v0)
  {
    sub_25574F0D0();
    sub_25574FF80();
    type metadata accessor for MergeableAssetTextAttachment(0);
    type metadata accessor for MergeableSize(0);
    sub_2556647AC(&qword_27F7BEF68, type metadata accessor for MergeableSize, &protocol conformance descriptor for MergeableSize);
    sub_25574FF80();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEA18, &unk_255759730);
    sub_2556DB190(&qword_27F7BEF70, MEMORY[0x277CFB530]);
    sub_25574FF80();
    sub_25574FB10();
  }

  return result;
}

uint64_t MergeableAssetTextAttachment.init(from:)@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v80 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE3F8, &qword_25575C9F0);
  MEMORY[0x28223BE20](v3 - 8);
  v72 = (&v63 - v4);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BFFF0, &qword_255755250);
  v70 = *(v5 - 8);
  v71 = v5;
  v6 = MEMORY[0x28223BE20](v5);
  v68 = &v63 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v67 = &v63 - v8;
  v9 = sub_25574FB30();
  v75 = *(v9 - 8);
  v76 = v9;
  MEMORY[0x28223BE20](v9);
  v69 = &v63 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for MergeableSize(0);
  MEMORY[0x28223BE20](v11);
  v13 = &v63 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_25574F0D0();
  v73 = *(v14 - 8);
  v15 = MEMORY[0x28223BE20](v14);
  v17 = &v63 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v63 - v19;
  MEMORY[0x28223BE20](v18);
  v22 = &v63 - v21;
  v23 = type metadata accessor for MergeableAssetTextAttachment(0);
  v24 = &a2[*(v23 + 20)];
  sub_25574FB20();
  *v24 = 0;
  *(v24 + 1) = 0;
  v78 = a2;
  v79 = v24;
  v74 = *(v23 + 28);
  sub_25574FB20();
  v25 = v77;
  v26 = sub_25574FEE0();
  if (v25)
  {

    v27 = v78;
LABEL_3:
    sub_2556DB064(v79);
    return (*(v75 + 8))(&v27[v74], v76);
  }

  else
  {
    v29 = v26;
    v65 = v13;
    v66 = v14;
    if (sub_25574FF00())
    {
      sub_25574F0B0();
      v30 = v78;
      v77 = v29;
      (*(v73 + 32))(v78, v17, v66);
    }

    else
    {
      v31 = v66;
      sub_25574FE10();
      v30 = v78;
      v77 = v29;
      v32 = *(v73 + 32);
      v32(v22, v20, v31);
      v32(v30, v22, v31);
    }

    v33 = sub_25574FF00();
    v34 = v23;
    if (v33)
    {
      v35 = v65;
      MergeableSize.init(from:)(v33, v65);
      sub_2556D7A4C(v35, v79);
    }

    if (sub_25574FF00())
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEA18, &unk_255759730);
      sub_2556DB190(&qword_27F7BEA10, MEMORY[0x277CFB528]);
      sub_2556DB190(&qword_27F7BEF78, MEMORY[0x277CFB548]);
      sub_25574FDF0();
    }

    else
    {
      sub_25567890C();
      sub_25574F510();
    }

    v36 = v82;
    v37 = &v30[*(v34 + 24)];
    *v37 = v81;
    v37[8] = v36;
    v38 = sub_25574FEF0();
    v39 = sub_255676334(v38);

    v81 = v39;
    sub_255676690(1);
    sub_255676690(2);
    sub_255676690(3);
    v40 = v81 + 56;
    v41 = 1 << *(v81 + 32);
    v42 = -1;
    if (v41 < 64)
    {
      v42 = ~(-1 << v41);
    }

    v43 = v42 & *(v81 + 56);
    v44 = (v41 + 63) >> 6;
    v65 = (v70 + 56);
    v45 = v81;

    v46 = 0;
    v64 = MEMORY[0x277D84F90];
    while (1)
    {
      v47 = v46;
      if (!v43)
      {
        break;
      }

LABEL_19:
      v48 = __clz(__rbit64(v43));
      v43 &= v43 - 1;
      v49 = *(*(v45 + 48) + ((v46 << 9) | (8 * v48)));
      if (sub_25574FF00())
      {
        v51 = v71;
        v52 = v72;
        *v72 = v49;
        sub_25574F310();
        (*v65)(v52, 0, 1, v51);
        v53 = v67;
        sub_2556AA69C(v52, v67);
        sub_2556AA69C(v53, v68);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v64 = sub_25569874C(0, v64[2] + 1, 1, v64);
        }

        v30 = v78;
        v54 = v70;
        v56 = v64[2];
        v55 = v64[3];
        v57 = v68;
        if (v56 >= v55 >> 1)
        {
          v59 = sub_25569874C((v55 > 1), v56 + 1, 1, v64);
          v54 = v70;
          v64 = v59;
          v57 = v68;
        }

        v58 = v64;
        v64[2] = v56 + 1;
        sub_2556AA69C(v57, v58 + ((*(v54 + 80) + 32) & ~*(v54 + 80)) + *(v54 + 72) * v56);
      }

      else
      {
        v50 = v72;
        (*v65)(v72, 1, 1, v71);
        sub_2556DB128(v50);
      }
    }

    while (1)
    {
      v46 = v47 + 1;
      if (__OFADD__(v47, 1))
      {
        __break(1u);

        v27 = v78;
        (*(v73 + 8))(v78, v66);
        goto LABEL_3;
      }

      if (v46 >= v44)
      {
        break;
      }

      v43 = *(v40 + 8 * v46);
      ++v47;
      if (v43)
      {
        goto LABEL_19;
      }
    }

    v60 = v64;
    if (v64[2])
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE400, &qword_255756A50);
      v61 = sub_255750C90();
    }

    else
    {
      v61 = MEMORY[0x277D84F98];
    }

    v62 = v69;
    v83 = v61;
    sub_2556DA988(v60, 1, &v83);
    sub_25574FB40();

    return (*(v75 + 40))(&v30[v74], v62, v76);
  }
}

uint64_t MergeableSize.init(from:)@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE3F8, &qword_25575C9F0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v57 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BFFF0, &qword_255755250);
  v66 = *(v8 - 8);
  v9 = MEMORY[0x28223BE20](v8);
  v11 = &v57 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v57 - v12;
  v14 = sub_25574FB30();
  v67 = *(v14 - 8);
  v68 = v14;
  MEMORY[0x28223BE20](v14);
  v16 = &v57 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = a2;
  v69 = *(type metadata accessor for MergeableSize(0) + 24);
  sub_25574FB20();
  v18 = sub_25574FEE0();
  if (v2)
  {

    v20 = v67;
    v19 = v68;
    v21 = v69;
    return (*(v20 + 8))(&v17[v21], v19);
  }

  else
  {
    v23 = v18;
    v61 = v11;
    v62 = v16;
    v60 = v13;
    v64 = v8;
    v65 = v7;
    if (sub_25574FF00())
    {
      sub_255750550();
    }

    else
    {
      sub_255750540();
    }

    *v17 = v24;
    if (sub_25574FF00())
    {
      sub_255750550();
      v57 = a1;
    }

    else
    {
      v57 = a1;
      sub_255750540();
    }

    v58 = v17;
    *(v17 + 1) = v25;
    v63 = v23;
    v26 = sub_25574FEF0();
    v27 = sub_255676334(v26);

    v71 = v27;
    sub_255676690(1);
    sub_255676690(2);
    v28 = v71;
    v29 = v71 + 56;
    v30 = 1 << *(v71 + 32);
    v31 = -1;
    if (v30 < 64)
    {
      v31 = ~(-1 << v30);
    }

    v32 = v31 & *(v71 + 56);
    v33 = (v30 + 63) >> 6;
    v34 = (v66 + 56);

    v35 = 0;
    v59 = MEMORY[0x277D84F90];
    while (1)
    {
      v36 = v35;
      if (!v32)
      {
        break;
      }

LABEL_17:
      v37 = __clz(__rbit64(v32));
      v32 &= v32 - 1;
      v38 = *(*(v28 + 48) + ((v35 << 9) | (8 * v37)));
      if (sub_25574FF00())
      {
        v41 = v64;
        v40 = v65;
        *v65 = v38;
        v42 = v40;
        sub_25574F310();
        (*v34)(v42, 0, 1, v41);
        v43 = v60;
        sub_2556AA69C(v42, v60);
        sub_2556AA69C(v43, v61);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v59 = sub_25569874C(0, v59[2] + 1, 1, v59);
        }

        v44 = v66;
        v46 = v59[2];
        v45 = v59[3];
        v47 = v61;
        if (v46 >= v45 >> 1)
        {
          v49 = sub_25569874C((v45 > 1), v46 + 1, 1, v59);
          v44 = v66;
          v59 = v49;
          v47 = v61;
        }

        v48 = v59;
        v59[2] = v46 + 1;
        sub_2556AA69C(v47, v48 + ((*(v44 + 80) + 32) & ~*(v44 + 80)) + *(v44 + 72) * v46);
      }

      else
      {
        v39 = v65;
        (*v34)(v65, 1, 1, v64);
        sub_2556DB128(v39);
      }
    }

    while (1)
    {
      v35 = v36 + 1;
      if (__OFADD__(v36, 1))
      {
        __break(1u);

        v17 = v58;
        v19 = v68;
        v21 = v69;
        v20 = v67;
        return (*(v20 + 8))(&v17[v21], v19);
      }

      if (v35 >= v33)
      {
        break;
      }

      v32 = *(v29 + 8 * v35);
      ++v36;
      if (v32)
      {
        goto LABEL_17;
      }
    }

    v50 = v59;
    if (v59[2])
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE400, &qword_255756A50);
      v51 = sub_255750C90();
    }

    else
    {
      v51 = MEMORY[0x277D84F98];
    }

    v52 = v58;
    v54 = v68;
    v53 = v69;
    v55 = v62;
    v56 = v67;
    v70 = v51;
    sub_2556DA3BC(v50, 1, &v70);
    sub_25574FB40();

    return (*(v56 + 40))(&v52[v53], v55, v54);
  }
}

uint64_t sub_2556D9EB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_2556647AC(&qword_27F7BE918, type metadata accessor for MergeableAssetTextAttachment, "AЫ,<n");
  sub_2556647AC(&qword_27F7BEF80, type metadata accessor for MergeableAssetTextAttachment, &protocol conformance descriptor for MergeableAssetTextAttachment);

  return sub_25574FDD0();
}

uint64_t sub_2556D9F84(uint64_t a1)
{
  type metadata accessor for MergeableSize(0);
  sub_25574FAE0();
  return sub_25574FAE0();
}

uint64_t _s13JournalShared17MergeableTextListV18minEncodingVersion9Coherence09CRCodableH0Ovg_0@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CFB5F0];
  v3 = sub_25574F770();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t MergeableSize.encode(to:)()
{
  result = sub_25574FF70();
  if (!v0)
  {
    sub_25574FF80();
    sub_25574FF80();
    type metadata accessor for MergeableSize(0);
    sub_25574FB10();
  }

  return result;
}

uint64_t sub_2556DA180@<X0>(uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = sub_25574FB30();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2556DB0C0(v3, a3, type metadata accessor for MergeableSize);
  *a3 = *v3;
  sub_25574FB00();
  return (*(v7 + 40))(&a3[*(a2 + 24)], v9, v6);
}

uint64_t sub_2556DA298(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_2556647AC(&qword_27F7BEFE8, type metadata accessor for MergeableSize, "Aϫ,dm");
  sub_2556647AC(&qword_27F7BEF88, type metadata accessor for MergeableSize, &protocol conformance descriptor for MergeableSize);

  return sub_25574FDD0();
}

void sub_2556DA3BC(uint64_t a1, int a2, void *a3)
{
  v7 = sub_25574F320();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v55 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BFFF0, &qword_255755250);
  v12 = MEMORY[0x28223BE20](v11);
  v15 = (&v55 - v14);
  v62 = *(a1 + 16);
  if (!v62)
  {
    goto LABEL_23;
  }

  LODWORD(v59) = a2;
  v57 = v3;
  v16 = *(v12 + 48);
  v17 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v61 = *(v13 + 72);
  v63 = a1;
  v56 = v17;
  sub_2556AAA64(a1 + v17, &v55 - v14);
  v58 = v8;
  v18 = *(v8 + 32);
  v69 = *v15;
  v19 = v69;
  v60 = v16;
  v64 = v7;
  v65 = v10;
  v18(v10, v15 + v16, v7);
  v20 = *a3;
  v22 = sub_255742798(v19);
  v23 = v20[2];
  v24 = (v21 & 1) == 0;
  v25 = v23 + v24;
  if (__OFADD__(v23, v24))
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v26 = v21;
  if (v20[3] >= v25)
  {
    if (v59)
    {
      if ((v21 & 1) == 0)
      {
        goto LABEL_13;
      }
    }

    else
    {
      sub_255742BBC();
      if ((v26 & 1) == 0)
      {
        goto LABEL_13;
      }
    }

    goto LABEL_10;
  }

  sub_255743F6C(v25, v59 & 1);
  v27 = sub_255742798(v19);
  if ((v26 & 1) == (v28 & 1))
  {
    v22 = v27;
    if ((v26 & 1) == 0)
    {
LABEL_13:
      v33 = *a3;
      *(*a3 + 8 * (v22 >> 6) + 64) |= 1 << v22;
      *(v33[6] + 8 * v22) = v19;
      v34 = v33[7];
      v59 = *(v58 + 72);
      v35 = (v34 + v59 * v22);
      v36 = v64;
      v18(v35, v65, v64);
      v37 = v33[2];
      v38 = __OFADD__(v37, 1);
      v39 = v37 + 1;
      if (!v38)
      {
        v33[2] = v39;
        v40 = v63;
        if (v62 != 1)
        {
          v41 = v63 + v61 + v56;
          v42 = 1;
          while (v42 < *(v40 + 16))
          {
            sub_2556AAA64(v41, v15);
            v69 = *v15;
            v43 = v69;
            v18(v65, v15 + v60, v36);
            v44 = *a3;
            v45 = sub_255742798(v43);
            v47 = v44[2];
            v48 = (v46 & 1) == 0;
            v38 = __OFADD__(v47, v48);
            v49 = v47 + v48;
            if (v38)
            {
              goto LABEL_24;
            }

            v50 = v46;
            if (v44[3] < v49)
            {
              sub_255743F6C(v49, 1);
              v45 = sub_255742798(v43);
              if ((v50 & 1) != (v51 & 1))
              {
                goto LABEL_27;
              }
            }

            if (v50)
            {
              goto LABEL_10;
            }

            v52 = *a3;
            *(*a3 + 8 * (v45 >> 6) + 64) |= 1 << v45;
            *(v52[6] + 8 * v45) = v43;
            v36 = v64;
            v18((v52[7] + v59 * v45), v65, v64);
            v53 = v52[2];
            v38 = __OFADD__(v53, 1);
            v54 = v53 + 1;
            if (v38)
            {
              goto LABEL_25;
            }

            ++v42;
            v52[2] = v54;
            v41 += v61;
            v40 = v63;
            if (v62 == v42)
            {
              goto LABEL_23;
            }
          }

          goto LABEL_26;
        }

LABEL_23:

        return;
      }

LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
      goto LABEL_27;
    }

LABEL_10:
    v29 = sub_25574F750();
    sub_2556647AC(&qword_27F7BE110, MEMORY[0x277CFB5B0], MEMORY[0x277CFB5B8]);
    v30 = swift_allocError();
    *v31 = 0xD000000000000027;
    v31[1] = 0x8000000255752E60;
    (*(*(v29 - 8) + 104))(v31, *MEMORY[0x277CFB5A8], v29);
    swift_willThrow();
    v68 = v30;
    v32 = v30;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE118, &qword_255755C80);
    if ((swift_dynamicCast() & 1) == 0)
    {
      (*(v58 + 8))(v65, v64);

      return;
    }

    goto LABEL_28;
  }

LABEL_27:
  sub_255750F10();
  __break(1u);
LABEL_28:
  v66 = 0;
  v67 = 0xE000000000000000;
  sub_255750B00();
  MEMORY[0x259C3DED0](0xD00000000000001BLL, 0x8000000255752750);
  sub_255750C20();
  MEMORY[0x259C3DED0](39, 0xE100000000000000);
  sub_255750C40();
  __break(1u);
}

void sub_2556DA988(uint64_t a1, int a2, void *a3)
{
  v7 = sub_25574F320();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v55 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BFFF0, &qword_255755250);
  v12 = MEMORY[0x28223BE20](v11);
  v15 = (&v55 - v14);
  v62 = *(a1 + 16);
  if (!v62)
  {
    goto LABEL_23;
  }

  LODWORD(v59) = a2;
  v57 = v3;
  v16 = *(v12 + 48);
  v17 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v61 = *(v13 + 72);
  v63 = a1;
  v56 = v17;
  sub_2556AAA64(a1 + v17, &v55 - v14);
  v58 = v8;
  v18 = *(v8 + 32);
  v69 = *v15;
  v19 = v69;
  v60 = v16;
  v64 = v7;
  v65 = v10;
  v18(v10, v15 + v16, v7);
  v20 = *a3;
  v22 = sub_255742798(v19);
  v23 = v20[2];
  v24 = (v21 & 1) == 0;
  v25 = v23 + v24;
  if (__OFADD__(v23, v24))
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v26 = v21;
  if (v20[3] >= v25)
  {
    if (v59)
    {
      if ((v21 & 1) == 0)
      {
        goto LABEL_13;
      }
    }

    else
    {
      sub_255742BBC();
      if ((v26 & 1) == 0)
      {
        goto LABEL_13;
      }
    }

    goto LABEL_10;
  }

  sub_255743F6C(v25, v59 & 1);
  v27 = sub_255742798(v19);
  if ((v26 & 1) == (v28 & 1))
  {
    v22 = v27;
    if ((v26 & 1) == 0)
    {
LABEL_13:
      v33 = *a3;
      *(*a3 + 8 * (v22 >> 6) + 64) |= 1 << v22;
      *(v33[6] + 8 * v22) = v19;
      v34 = v33[7];
      v59 = *(v58 + 72);
      v35 = (v34 + v59 * v22);
      v36 = v64;
      v18(v35, v65, v64);
      v37 = v33[2];
      v38 = __OFADD__(v37, 1);
      v39 = v37 + 1;
      if (!v38)
      {
        v33[2] = v39;
        v40 = v63;
        if (v62 != 1)
        {
          v41 = v63 + v61 + v56;
          v42 = 1;
          while (v42 < *(v40 + 16))
          {
            sub_2556AAA64(v41, v15);
            v69 = *v15;
            v43 = v69;
            v18(v65, v15 + v60, v36);
            v44 = *a3;
            v45 = sub_255742798(v43);
            v47 = v44[2];
            v48 = (v46 & 1) == 0;
            v38 = __OFADD__(v47, v48);
            v49 = v47 + v48;
            if (v38)
            {
              goto LABEL_24;
            }

            v50 = v46;
            if (v44[3] < v49)
            {
              sub_255743F6C(v49, 1);
              v45 = sub_255742798(v43);
              if ((v50 & 1) != (v51 & 1))
              {
                goto LABEL_27;
              }
            }

            if (v50)
            {
              goto LABEL_10;
            }

            v52 = *a3;
            *(*a3 + 8 * (v45 >> 6) + 64) |= 1 << v45;
            *(v52[6] + 8 * v45) = v43;
            v36 = v64;
            v18((v52[7] + v59 * v45), v65, v64);
            v53 = v52[2];
            v38 = __OFADD__(v53, 1);
            v54 = v53 + 1;
            if (v38)
            {
              goto LABEL_25;
            }

            ++v42;
            v52[2] = v54;
            v41 += v61;
            v40 = v63;
            if (v62 == v42)
            {
              goto LABEL_23;
            }
          }

          goto LABEL_26;
        }

LABEL_23:

        return;
      }

LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
      goto LABEL_27;
    }

LABEL_10:
    v29 = sub_25574F750();
    sub_2556647AC(&qword_27F7BE110, MEMORY[0x277CFB5B0], MEMORY[0x277CFB5B8]);
    v30 = swift_allocError();
    *v31 = 0xD000000000000036;
    v31[1] = 0x8000000255752E90;
    (*(*(v29 - 8) + 104))(v31, *MEMORY[0x277CFB5A8], v29);
    swift_willThrow();
    v68 = v30;
    v32 = v30;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE118, &qword_255755C80);
    if ((swift_dynamicCast() & 1) == 0)
    {
      (*(v58 + 8))(v65, v64);

      return;
    }

    goto LABEL_28;
  }

LABEL_27:
  sub_255750F10();
  __break(1u);
LABEL_28:
  v66 = 0;
  v67 = 0xE000000000000000;
  sub_255750B00();
  MEMORY[0x259C3DED0](0xD00000000000001BLL, 0x8000000255752750);
  sub_255750C20();
  MEMORY[0x259C3DED0](39, 0xE100000000000000);
  sub_255750C40();
  __break(1u);
}

uint64_t _s13JournalShared28MergeableAssetTextAttachmentV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if (sub_25574F070() & 1) != 0 && (v4 = *(type metadata accessor for MergeableAssetTextAttachment(0) + 20), *(a1 + v4) == *(a2 + v4)) && *(a1 + v4 + 8) == *(a2 + v4 + 8) && (type metadata accessor for MergeableSize(0), (sub_25574FAF0()) && (sub_25567890C(), (sub_25574F520()))
  {
    v5 = sub_25574FAF0();
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

uint64_t sub_2556DB064(uint64_t a1)
{
  v2 = type metadata accessor for MergeableSize(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2556DB0C0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2556DB128(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE3F8, &qword_25575C9F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2556DB190(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7BEA18, &unk_255759730);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2556DB274()
{
  result = qword_27F7BEF90;
  if (!qword_27F7BEF90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7BEF90);
  }

  return result;
}

unint64_t sub_2556DB2CC()
{
  result = qword_27F7BEF98;
  if (!qword_27F7BEF98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7BEF98);
  }

  return result;
}

unint64_t sub_2556DB324()
{
  result = qword_27F7BEFA0;
  if (!qword_27F7BEFA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7BEFA0);
  }

  return result;
}

unint64_t sub_2556DB498()
{
  result = qword_27F7BEFF0;
  if (!qword_27F7BEFF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7BEFF0);
  }

  return result;
}

uint64_t sub_2556DB520(uint64_t a1, void *a2, uint64_t a3, unint64_t a4, uint64_t *a5, uint64_t *a6)
{
  v61 = a5;
  v62 = a6;
  v8 = v6;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEB40, &unk_255754E40);
  v14 = MEMORY[0x28223BE20](v13 - 8);
  v16 = &v54 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v54 - v18;
  MEMORY[0x28223BE20](v17);
  v21 = &v54 - v20;
  result = sub_2556E2EE0(a3, a4, &v54 - v20);
  if (!v7)
  {
    v56 = a3;
    v57 = v16;
    v23 = v62;
    v59 = v8;
    v60 = a1;
    v58 = 0;
    v24 = sub_25574F020();
    v25 = *(*(v24 - 8) + 48);
    if (v25(v21, 1, v24) == 1)
    {
      v64 = v59;
      v26 = v59;
      v55 = v21;
      v27 = v26;
      swift_getAtKeyPath();

      LODWORD(v27) = v25(v19, 1, v24);
      sub_255674B20(v19, &qword_27F7BEB40, &unk_255754E40);
      v21 = v55;
      if (v27 != 1)
      {
        if (qword_27F7BD6B8 != -1)
        {
          swift_once();
        }

        v28 = sub_25574F2C0();
        __swift_project_value_buffer(v28, qword_27F7BDD70);
        v29 = a2;
        v30 = v60;

        v31 = a4;

        v32 = sub_25574F2A0();
        v33 = sub_255750760();

        v34 = os_log_type_enabled(v32, v33);
        v35 = v56;
        v36 = v61;
        if (v34)
        {
          v37 = v23;
          v38 = v29;
          v39 = swift_slowAlloc();
          v54 = swift_slowAlloc();
          v64 = v54;
          *v39 = 136446978;
          v63 = v30;

          __swift_instantiateConcreteTypeFromMangledNameV2(v36, v37);
          v40 = sub_2557501D0();
          v42 = sub_2556E474C(v40, v41, &v64);

          *(v39 + 4) = v42;
          *(v39 + 12) = 2082;
          v43 = sub_255750920();
          v45 = sub_2556E474C(v43, v44, &v64);

          *(v39 + 14) = v45;
          *(v39 + 22) = 2082;
          *(v39 + 24) = sub_2556E474C(v35, v31, &v64);
          *(v39 + 32) = 2080;
          v46 = [v38 recordID];
          v47 = [v46 recordName];

          v48 = sub_2557501B0();
          v50 = v49;

          v51 = sub_2556E474C(v48, v50, &v64);

          *(v39 + 34) = v51;
          _os_log_impl(&dword_255661000, v32, v33, "Intentionally setting an existing value to nil for keyPath %{public}s from %{public}s.%{public}s. ID: %s", v39, 0x2Au);
          v52 = v54;
          swift_arrayDestroy();
          MEMORY[0x259C3F520](v52, -1, -1);
          MEMORY[0x259C3F520](v39, -1, -1);
        }

        v21 = v55;
      }
    }

    sub_2556700F4(v21, v57);
    v64 = v59;
    v53 = v59;
    swift_setAtReferenceWritableKeyPath();

    return sub_255674B20(v21, &qword_27F7BEB40, &unk_255754E40);
  }

  return result;
}

uint64_t sub_2556DB978(void *a1, void *a2, uint64_t a3, unint64_t a4)
{
  v6 = v4;
  result = sub_2556E27C4(a3, a4);
  if (!v5)
  {
    v13 = v12;
    if (!v12)
    {
      v39 = v6;
      v36 = result;
      v15 = v6;
      swift_getAtKeyPath();

      result = v36;
      if (v38)
      {
        if (qword_27F7BD6B8 != -1)
        {
          swift_once();
        }

        v16 = sub_25574F2C0();
        __swift_project_value_buffer(v16, qword_27F7BDD70);
        v17 = a2;

        v18 = sub_25574F2A0();
        v19 = sub_255750760();

        if (os_log_type_enabled(v18, v19))
        {
          v20 = swift_slowAlloc();
          v35 = swift_slowAlloc();
          v37 = v35;
          *v20 = 136446978;
          v39 = a1;

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BF090, &qword_25575A0B0);
          v21 = sub_2557501D0();
          log = v18;
          v33 = v19;
          v23 = sub_2556E474C(v21, v22, &v37);

          *(v20 + 4) = v23;
          *(v20 + 12) = 2082;
          v24 = sub_255750920();
          v26 = sub_2556E474C(v24, v25, &v37);

          *(v20 + 14) = v26;
          *(v20 + 22) = 2082;
          *(v20 + 24) = sub_2556E474C(a3, a4, &v37);
          *(v20 + 32) = 2080;
          v27 = [v17 recordID];
          v28 = [v27 recordName];

          v29 = sub_2557501B0();
          v31 = v30;

          v32 = sub_2556E474C(v29, v31, &v37);

          *(v20 + 34) = v32;
          _os_log_impl(&dword_255661000, log, v33, "Intentionally setting an existing value to nil for keyPath %{public}s from %{public}s.%{public}s. ID: %s", v20, 0x2Au);
          swift_arrayDestroy();
          MEMORY[0x259C3F520](v35, -1, -1);
          MEMORY[0x259C3F520](v20, -1, -1);
        }

        else
        {
        }

        result = v36;
      }
    }

    v37 = result;
    v38 = v13;
    v39 = v6;

    v14 = v6;
    swift_setAtReferenceWritableKeyPath();
  }

  return result;
}

void *sub_2556DBCB0(void *a1, void *a2, uint64_t a3, unint64_t a4)
{
  v6 = v4;
  result = sub_2556E2B44(a3, a4, &v36);
  if (!v5)
  {
    if (*(&v36 + 1) >> 60 == 15)
    {
      v37 = v6;
      v12 = v6;
      swift_getAtKeyPath();

      sub_2556A15B8(v35, *(&v35 + 1));
      if (*(&v35 + 1) >> 60 != 15)
      {
        if (qword_27F7BD6B8 != -1)
        {
          swift_once();
        }

        v13 = sub_25574F2C0();
        __swift_project_value_buffer(v13, qword_27F7BDD70);
        v14 = a2;

        v15 = sub_25574F2A0();
        v16 = sub_255750760();

        if (os_log_type_enabled(v15, v16))
        {
          v17 = swift_slowAlloc();
          v34 = swift_slowAlloc();
          *&v35 = v34;
          *v17 = 136446978;
          v37 = a1;

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BF088, &qword_25575A0A8);
          v18 = sub_2557501D0();
          log = v15;
          v20 = v14;
          v21 = sub_2556E474C(v18, v19, &v35);

          *(v17 + 4) = v21;
          *(v17 + 12) = 2082;
          v22 = sub_255750920();
          v24 = sub_2556E474C(v22, v23, &v35);

          *(v17 + 14) = v24;
          *(v17 + 22) = 2082;
          *(v17 + 24) = sub_2556E474C(a3, a4, &v35);
          *(v17 + 32) = 2080;
          v25 = [v20 recordID];
          v26 = [v25 recordName];

          v27 = sub_2557501B0();
          v29 = v28;

          v30 = sub_2556E474C(v27, v29, &v35);

          *(v17 + 34) = v30;
          _os_log_impl(&dword_255661000, log, v16, "Intentionally setting an existing value to nil for keyPath %{public}s from %{public}s.%{public}s. ID: %s", v17, 0x2Au);
          swift_arrayDestroy();
          MEMORY[0x259C3F520](v34, -1, -1);
          MEMORY[0x259C3F520](v17, -1, -1);
        }

        else
        {
        }
      }
    }

    v31 = v36;
    v35 = v36;
    v37 = v6;
    v32 = v6;
    sub_25567625C(v31, *(&v31 + 1));
    swift_setAtReferenceWritableKeyPath();

    return sub_2556A15B8(v31, *(&v31 + 1));
  }

  return result;
}

void sub_2556DBFF4(uint64_t a1, void *a2, uint64_t a3, unint64_t a4)
{
  v41 = a1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F7BED20, &unk_2557551D0);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v11 = v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = v37 - v12;
  v14 = sub_25574F0D0();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = a3;
  v18 = sub_2556E27C4(a3, a4);
  if (!v4 && v19)
  {
    v37[0] = v18;
    v37[1] = 0;
    v38 = v19;
    sub_25574F030();
    if ((*(v15 + 48))(v13, 1, v14) == 1)
    {
      sub_255674B20(v13, &unk_27F7BED20, &unk_2557551D0);
      if (qword_27F7BD6B8 != -1)
      {
        swift_once();
      }

      v20 = sub_25574F2C0();
      __swift_project_value_buffer(v20, qword_27F7BDD70);
      v21 = a2;

      v22 = sub_25574F2A0();
      v23 = sub_255750780();

      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        v25 = swift_slowAlloc();
        v42 = v25;
        *v24 = 136315906;
        v26 = sub_2556E474C(v37[0], v38, &v42);

        *(v24 + 4) = v26;
        *(v24 + 12) = 2082;
        v27 = sub_255750920();
        v29 = sub_2556E474C(v27, v28, &v42);

        *(v24 + 14) = v29;
        *(v24 + 22) = 2082;
        *(v24 + 24) = sub_2556E474C(v39, a4, &v42);
        *(v24 + 32) = 2080;
        v30 = [v21 recordID];
        v31 = [v30 recordName];

        v32 = sub_2557501B0();
        v34 = v33;

        v35 = sub_2556E474C(v32, v34, &v42);

        *(v24 + 34) = v35;
        _os_log_impl(&dword_255661000, v22, v23, "Unable to get UUID from %s in %{public}s.%{public}s record. ID: %s)", v24, 0x2Au);
        swift_arrayDestroy();
        MEMORY[0x259C3F520](v25, -1, -1);
        MEMORY[0x259C3F520](v24, -1, -1);
      }

      else
      {
      }
    }

    else
    {

      (*(v15 + 32))(v17, v13, v14);
      (*(v15 + 16))(v11, v17, v14);
      (*(v15 + 56))(v11, 0, 1, v14);
      v42 = v40;
      v36 = v40;
      swift_setAtReferenceWritableKeyPath();
      (*(v15 + 8))(v17, v14);
    }
  }
}

uint64_t sub_2556DC464()
{
  v0 = sub_25574F2C0();
  __swift_allocate_value_buffer(v0, qword_27F7BF000);
  v1 = __swift_project_value_buffer(v0, qword_27F7BF000);
  if (qword_27F7BD5C8 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_27F7C04E0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

id static JournalEntryMO.newObjectFromRecord(_:context:)(void *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F7BED20, &unk_2557551D0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v14 - v5;
  v7 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithContext_];
  v8 = [a1 recordID];
  v9 = [v8 recordName];

  sub_2557501B0();
  sub_25574F030();

  v10 = sub_25574F0D0();
  v11 = *(v10 - 8);
  v12 = 0;
  if ((*(v11 + 48))(v6, 1, v10) != 1)
  {
    v12 = sub_25574F050();
    (*(v11 + 8))(v6, v10);
  }

  [v7 setId_];

  [v7 setIsUploadedToCloud_];
  [v7 setIsRemovedFromCloud_];
  sub_2556DC848(a1);
  return v7;
}

uint64_t sub_2556DC848(void *a1)
{
  v3 = v1;
  KeyPath = swift_getKeyPath();
  sub_2556DB520(KeyPath, a1, 0x7461447972746E65, 0xE900000000000065, &qword_27F7BF098, &qword_25575A0B8);

  if (!v2)
  {
    v7 = swift_getKeyPath();
    sub_2556DB978(v7, a1, 0x7079547972746E65, 0xE900000000000065);

    v8 = [objc_allocWithZone(MEMORY[0x277CCAAB0]) initRequiringSecureCoding_];
    [a1 encodeSystemFieldsWithCoder_];
    v9 = [v8 encodedData];
    v10 = sub_25574EF90();
    v12 = v11;

    v13 = sub_25574EF80();
    sub_2556755A8(v10, v12);
    [v3 setRecordSystemFields_];

    v14 = swift_getKeyPath();
    sub_2556DBCB0(v14, a1, 0x656C746974, 0xE500000000000000);

    v15 = swift_getKeyPath();
    sub_2556DBCB0(v15, a1, 1954047348, 0xE400000000000000);

    v16 = swift_getKeyPath();
    sub_2556DBCB0(v16, a1, 0x64724F7465737361, 0xED0000676E697265);

    v17 = swift_getKeyPath();
    sub_2556DB520(v17, a1, 0x4464657461657263, 0xEB00000000657461, &qword_27F7BF098, &qword_25575A0B8);

    v18 = swift_getKeyPath();
    sub_2556DB520(v18, a1, 0x4464657461647075, 0xEB00000000657461, &qword_27F7BF098, &qword_25575A0B8);

    v19 = swift_getKeyPath();
    sub_2556DB520(v19, a1, 0x6E45656C646E7562, 0xED00006574614464, &qword_27F7BF098, &qword_25575A0B8);

    v20 = swift_getKeyPath();
    sub_2556DB978(v20, a1, 0x72756F5365746164, 0xEA00000000006563);

    v21 = swift_getKeyPath();
    sub_2556DBCB0(v21, a1, 0x74706D6F7270, 0xE600000000000000);

    v22 = sub_2556E3764(0x64656767616C66, 0xE700000000000000);
    if (v22 != 2)
    {
      [v3 setFlagged_];
    }

    v23 = swift_getKeyPath();
    sub_2556DBFF4(v23, a1, 0x6449656C646E7562, 0xE800000000000000);

    v24 = swift_getKeyPath();
    sub_2556DB520(v24, a1, 0x6144656C646E7562, 0xEA00000000006574, &qword_27F7BF098, &qword_25575A0B8);

    v25 = sub_2556E33D8(0x676E654C74786574, 0xEA00000000006874);
    if ((v25 & 0x10000) == 0)
    {
      [v3 setTextLength_];
    }

    v26 = swift_getKeyPath();
    sub_2556DBCB0(v26, a1, 0x697463656C666572, 0xEE006E6F63496E6FLL);

    v27 = swift_getKeyPath();
    sub_2556DB978(v27, a1, 0x697463656C666572, 0xEE00657079546E6FLL);

    v28 = swift_getKeyPath();
    sub_2556DBCB0(v28, a1, 0xD000000000000010, 0x8000000255759CA0);

    v29 = sub_2556E3764(0xD000000000000015, 0x8000000255752EF0);
    if (v29 != 2)
    {
      [v3 setShowPhotoMemoryBanner_];
    }

    v30 = sub_2556E3764(0x6C746954776F6873, 0xE900000000000065);
    if (v30 != 2)
    {
      [v3 setShowTitle_];
    }

    v31 = sub_2556E33D8(0xD00000000000001ALL, 0x8000000255752ED0);
    if ((v31 & 0x10000) == 0)
    {
      [v3 setMinimumSupportedAppVersion_];
    }

    v32 = sub_2556E33D8(0xD00000000000001ELL, 0x8000000255752F10);
    if ((v32 & 0x10000) == 0)
    {
      [v3 setMinimumSupportedAppVersionMode_];
    }

    v38 = &type metadata for JournalFeatureFlags;
    v33 = sub_255663AC0();
    v39 = v33;
    LOBYTE(v37[0]) = 8;
    v34 = sub_25574F1E0();
    __swift_destroy_boxed_opaque_existential_1(v37);
    if (v34)
    {
      sub_2556DF18C(a1);
    }

    v38 = &type metadata for JournalFeatureFlags;
    v39 = v33;
    LOBYTE(v37[0]) = 4;
    v35 = sub_25574F1E0();
    result = __swift_destroy_boxed_opaque_existential_1(v37);
    if (v35)
    {
      v36 = swift_getKeyPath();
      sub_2556DB520(v36, a1, 0x4F646574656C6564, 0xED0000657461446ELL, &qword_27F7BF098, &qword_25575A0B8);
    }
  }

  return result;
}

void *JournalEntryMO.cloudKitRecord.getter()
{
  v1 = v0;
  swift_getObjectType();
  v263 = type metadata accessor for MergeableEntryAttributes(0);
  v2 = MEMORY[0x28223BE20](v263);
  v262 = v254 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v264 = v254 - v4;
  v5 = sub_25574F020();
  v6 = *(v5 - 8);
  v277 = v5;
  v278 = v6;
  MEMORY[0x28223BE20](v5);
  v261 = v254 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_25574F0D0();
  v272 = *(v8 - 8);
  v273 = v8;
  MEMORY[0x28223BE20](v8);
  v257 = v254 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F7BED20, &unk_2557551D0);
  v11 = MEMORY[0x28223BE20](v10);
  v13 = v254 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11);
  v268 = v254 - v15;
  MEMORY[0x28223BE20](v14);
  v269 = v254 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEB40, &unk_255754E40);
  v18 = MEMORY[0x28223BE20](v17 - 8);
  v255 = v254 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v18);
  v258 = v254 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v256 = v254 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v259 = v254 - v25;
  v26 = MEMORY[0x28223BE20](v24);
  v260 = v254 - v27;
  v28 = MEMORY[0x28223BE20](v26);
  v270 = v254 - v29;
  v30 = MEMORY[0x28223BE20](v28);
  v271 = v254 - v31;
  v32 = MEMORY[0x28223BE20](v30);
  v274 = v254 - v33;
  v34 = MEMORY[0x28223BE20](v32);
  v267 = v254 - v35;
  v36 = MEMORY[0x28223BE20](v34);
  v265 = v254 - v37;
  v38 = MEMORY[0x28223BE20](v36);
  v266 = v254 - v39;
  v40 = MEMORY[0x28223BE20](v38);
  v42 = v254 - v41;
  v43 = MEMORY[0x28223BE20](v40);
  v45 = v254 - v44;
  v46 = MEMORY[0x28223BE20](v43);
  v48 = v254 - v47;
  MEMORY[0x28223BE20](v46);
  v50 = v254 - v49;
  v51 = sub_2556AF848();
  v52 = v51;
  if (v51)
  {
    [v51 encryptedValues];
    sub_2556E26E0(&unk_27F7BF020, type metadata accessor for JournalEntryMO, &protocol conformance descriptor for JournalEntryMO);
    v53 = sub_25568AB28();
    if (v54)
    {
      v55 = MEMORY[0x277CBBE08];
      v56 = MEMORY[0x277D837D0];
    }

    else
    {
      v53 = 0;
      v56 = 0;
      v55 = 0;
      *&v281 = 0;
    }

    *&v280 = v53;
    *(&v280 + 1) = v54;
    *(&v281 + 1) = v56;
    v282 = v55;
    swift_getObjectType();
    sub_2557508E0();
    swift_unknownObjectRelease();
    v67 = [v52 encryptedValues];
    v68 = [v0 title];
    if (v68)
    {
      v69 = v68;
      v70 = sub_25574EF90();
      v72 = v71;

      v73 = MEMORY[0x277CBBBE0];
      v74 = MEMORY[0x277CC9318];
    }

    else
    {
      v70 = 0;
      v72 = 0;
      v74 = 0;
      v73 = 0;
      *&v281 = 0;
    }

    *&v280 = v70;
    *(&v280 + 1) = v72;
    *(&v281 + 1) = v74;
    v282 = v73;
    swift_getObjectType();
    sub_2557508E0();
    swift_unknownObjectRelease();
    v75 = [v52 encryptedValues];
    v76 = [v0 text];
    if (v76)
    {
      v77 = v76;
      v78 = sub_25574EF90();
      v80 = v79;

      v81 = MEMORY[0x277CBBBE0];
      v82 = MEMORY[0x277CC9318];
    }

    else
    {
      v78 = 0;
      v80 = 0;
      v82 = 0;
      v81 = 0;
      *&v281 = 0;
    }

    *&v280 = v78;
    *(&v280 + 1) = v80;
    *(&v281 + 1) = v82;
    v282 = v81;
    swift_getObjectType();
    sub_2557508E0();
    swift_unknownObjectRelease();
    v83 = [v52 encryptedValues];
    v84 = [v0 assetOrdering];
    if (v84)
    {
      v85 = v84;
      v86 = sub_25574EF90();
      v88 = v87;

      v89 = MEMORY[0x277CBBBE0];
      v90 = MEMORY[0x277CC9318];
    }

    else
    {
      v86 = 0;
      v88 = 0;
      v90 = 0;
      v89 = 0;
      *&v281 = 0;
    }

    v91 = v277;
    *&v280 = v86;
    *(&v280 + 1) = v88;
    *(&v281 + 1) = v90;
    v282 = v89;
    swift_getObjectType();
    sub_2557508E0();
    swift_unknownObjectRelease();
    v92 = [v52 encryptedValues];
    v93 = [v0 updatedDate];
    if (v93)
    {
      v94 = v93;
      sub_25574EFF0();

      v95 = v278;
      v96 = *(v278 + 56);
      v97 = v48;
      v98 = 0;
    }

    else
    {
      v95 = v278;
      v96 = *(v278 + 56);
      v97 = v48;
      v98 = 1;
    }

    v276 = v96;
    v96(v97, v98, 1, v91);
    sub_255675060(v48, v50, &qword_27F7BEB40, &unk_255754E40);
    v99 = v95 + 48;
    v279 = *(v95 + 48);
    if (v279(v50, 1, v91) == 1)
    {
      sub_255674B20(v50, &qword_27F7BEB40, &unk_255754E40);
      v280 = 0u;
      v281 = 0u;
      v282 = 0;
    }

    else
    {
      *(&v281 + 1) = v91;
      v282 = MEMORY[0x277CBBBE8];
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v280);
      (*(v95 + 32))(boxed_opaque_existential_1, v50, v91);
    }

    swift_getObjectType();
    sub_2557508E0();
    swift_unknownObjectRelease();
    v101 = [v52 encryptedValues];
    v102 = [v0 createdDate];
    v103 = v276;
    if (v102)
    {
      v104 = v102;
      sub_25574EFF0();

      v95 = v278;
      v105 = 0;
    }

    else
    {
      v105 = 1;
    }

    v275 = v95 + 56;
    v103(v42, v105, 1, v91);
    sub_255675060(v42, v45, &qword_27F7BEB40, &unk_255754E40);
    if (v279(v45, 1, v91) == 1)
    {
      sub_255674B20(v45, &qword_27F7BEB40, &unk_255754E40);
      v280 = 0u;
      v281 = 0u;
      v282 = 0;
    }

    else
    {
      *(&v281 + 1) = v91;
      v282 = MEMORY[0x277CBBBE8];
      v106 = __swift_allocate_boxed_opaque_existential_1(&v280);
      (*(v95 + 32))(v106, v45, v91);
    }

    swift_getObjectType();
    sub_2557508E0();
    swift_unknownObjectRelease();
    v107 = [v52 encryptedValues];
    v108 = [v0 entryDate];
    v109 = v265;
    if (v108)
    {
      v110 = v108;
      sub_25574EFF0();

      v111 = 0;
    }

    else
    {
      v111 = 1;
    }

    v112 = v274;
    v103(v109, v111, 1, v91);
    v113 = v109;
    v114 = v266;
    sub_255675060(v113, v266, &qword_27F7BEB40, &unk_255754E40);
    if (v279(v114, 1, v91) == 1)
    {
      sub_255674B20(v114, &qword_27F7BEB40, &unk_255754E40);
      v280 = 0u;
      v281 = 0u;
      v282 = 0;
    }

    else
    {
      *(&v281 + 1) = v91;
      v282 = MEMORY[0x277CBBBE8];
      v115 = __swift_allocate_boxed_opaque_existential_1(&v280);
      (*(v95 + 32))(v115, v114, v91);
    }

    swift_getObjectType();
    sub_2557508E0();
    swift_unknownObjectRelease();
    v116 = [v52 encryptedValues];
    v117 = [v0 bundleEndDate];
    if (v117)
    {
      v118 = v117;
      sub_25574EFF0();

      v112 = v274;
      v119 = 0;
    }

    else
    {
      v119 = 1;
    }

    v103(v112, v119, 1, v91);
    v120 = v112;
    v121 = v267;
    sub_255675060(v120, v267, &qword_27F7BEB40, &unk_255754E40);
    if (v279(v121, 1, v91) == 1)
    {
      sub_255674B20(v121, &qword_27F7BEB40, &unk_255754E40);
      v280 = 0u;
      v281 = 0u;
      v282 = 0;
    }

    else
    {
      *(&v281 + 1) = v91;
      v282 = MEMORY[0x277CBBBE8];
      v122 = __swift_allocate_boxed_opaque_existential_1(&v280);
      (*(v95 + 32))(v122, v121, v91);
    }

    v123 = v268;
    swift_getObjectType();
    sub_2557508E0();
    swift_unknownObjectRelease();
    v124 = [v52 encryptedValues];
    v125 = [v0 dateSource];
    if (v125)
    {
      v126 = v125;
      v127 = sub_2557501B0();
      v129 = v128;

      v130 = MEMORY[0x277CBBE08];
      v131 = MEMORY[0x277D837D0];
    }

    else
    {
      v127 = 0;
      v129 = 0;
      v131 = 0;
      v130 = 0;
      *&v281 = 0;
    }

    *&v280 = v127;
    *(&v280 + 1) = v129;
    *(&v281 + 1) = v131;
    v282 = v130;
    swift_getObjectType();
    sub_2557508E0();
    swift_unknownObjectRelease();
    v132 = [v52 encryptedValues];
    swift_getObjectType();
    v133 = [v0 minimumSupportedAppVersion];
    *(&v281 + 1) = MEMORY[0x277D84958];
    v282 = MEMORY[0x277CBBEE8];
    LOWORD(v280) = v133;
    sub_2557508E0();
    swift_unknownObjectRelease();
    v134 = [v52 encryptedValues];
    v135 = [v0 prompt];
    if (v135)
    {
      v136 = v135;
      v137 = sub_25574EF90();
      v139 = v138;

      v140 = MEMORY[0x277CBBBE0];
      v141 = MEMORY[0x277CC9318];
    }

    else
    {
      v137 = 0;
      v139 = 0;
      v141 = 0;
      v140 = 0;
      *&v281 = 0;
    }

    v142 = v276;
    *&v280 = v137;
    *(&v280 + 1) = v139;
    *(&v281 + 1) = v141;
    v282 = v140;
    swift_getObjectType();
    sub_2557508E0();
    swift_unknownObjectRelease();
    v143 = [v52 encryptedValues];
    swift_getObjectType();
    v144 = [v0 flagged];
    *(&v281 + 1) = MEMORY[0x277D839B0];
    v282 = MEMORY[0x277CBBE18];
    LOBYTE(v280) = v144;
    sub_2557508E0();
    swift_unknownObjectRelease();
    [v52 encryptedValues];
    v145 = [v0 bundleId];
    v146 = MEMORY[0x277D84958];
    if (v145)
    {
      v147 = v145;
      sub_25574F080();

      v148 = 0;
    }

    else
    {
      v148 = 1;
    }

    v149 = v269;
    v150 = v272;
    v151 = v273;
    (*(v272 + 56))(v123, v148, 1, v273);
    sub_255675060(v123, v149, &unk_27F7BED20, &unk_2557551D0);
    if ((*(v150 + 48))(v149, 1, v151))
    {
      sub_255674B20(v149, &unk_27F7BED20, &unk_2557551D0);
      v152 = 0;
      v153 = 0;
      v154 = 0;
      v155 = 0;
      *&v281 = 0;
    }

    else
    {
      v156 = v257;
      (*(v150 + 16))(v257, v149, v151);
      sub_255674B20(v149, &unk_27F7BED20, &unk_2557551D0);
      v157 = v151;
      v158 = v150;
      v154 = sub_25574F040();
      v155 = v159;
      v160 = v156;
      v146 = MEMORY[0x277D84958];
      (*(v158 + 8))(v160, v157);
      v153 = MEMORY[0x277CBBE08];
      v152 = MEMORY[0x277D837D0];
    }

    v161 = v270;
    *(&v281 + 1) = v152;
    v282 = v153;
    *&v280 = v154;
    *(&v280 + 1) = v155;
    swift_getObjectType();
    sub_2557508E0();
    swift_unknownObjectRelease();
    v162 = [v52 encryptedValues];
    v163 = [v1 bundleDate];
    if (v163)
    {
      v164 = v163;
      sub_25574EFF0();

      v165 = 0;
    }

    else
    {
      v165 = 1;
    }

    v166 = v277;
    v167 = v278;
    v142(v161, v165, 1, v277);
    v168 = v271;
    sub_255675060(v161, v271, &qword_27F7BEB40, &unk_255754E40);
    if (v279(v168, 1, v166) == 1)
    {
      sub_255674B20(v168, &qword_27F7BEB40, &unk_255754E40);
      v280 = 0u;
      v281 = 0u;
      v282 = 0;
    }

    else
    {
      *(&v281 + 1) = v166;
      v282 = MEMORY[0x277CBBBE8];
      v169 = __swift_allocate_boxed_opaque_existential_1(&v280);
      (*(v167 + 32))(v169, v168, v166);
    }

    swift_getObjectType();
    sub_2557508E0();
    swift_unknownObjectRelease();
    v170 = [v52 encryptedValues];
    v171 = [v1 entryType];
    if (v171)
    {
      v172 = v171;
      v173 = sub_2557501B0();
      v175 = v174;

      v176 = MEMORY[0x277CBBE08];
      v177 = MEMORY[0x277D837D0];
    }

    else
    {
      v173 = 0;
      v175 = 0;
      v177 = 0;
      v176 = 0;
      *&v281 = 0;
    }

    *&v280 = v173;
    *(&v280 + 1) = v175;
    *(&v281 + 1) = v177;
    v282 = v176;
    swift_getObjectType();
    sub_2557508E0();
    swift_unknownObjectRelease();
    v178 = [v52 encryptedValues];
    swift_getObjectType();
    v179 = [v1 textLength];
    *(&v281 + 1) = v146;
    v282 = MEMORY[0x277CBBEE8];
    LOWORD(v280) = v179;
    sub_2557508E0();
    swift_unknownObjectRelease();
    v180 = [v52 encryptedValues];
    v181 = [v1 reflectionIcon];
    if (v181)
    {
      v182 = v181;
      v183 = sub_25574EF90();
      v185 = v184;

      v186 = MEMORY[0x277CBBBE0];
      v187 = MEMORY[0x277CC9318];
    }

    else
    {
      v183 = 0;
      v185 = 0;
      v187 = 0;
      v186 = 0;
      *&v281 = 0;
    }

    *&v280 = v183;
    *(&v280 + 1) = v185;
    *(&v281 + 1) = v187;
    v282 = v186;
    swift_getObjectType();
    sub_2557508E0();
    swift_unknownObjectRelease();
    v188 = [v52 encryptedValues];
    v189 = [v1 reflectionPrompt];
    if (v189)
    {
      v190 = v189;
      v191 = sub_25574EF90();
      v193 = v192;

      v194 = MEMORY[0x277CBBBE0];
      v195 = MEMORY[0x277CC9318];
    }

    else
    {
      v191 = 0;
      v193 = 0;
      v195 = 0;
      v194 = 0;
      *&v281 = 0;
    }

    *&v280 = v191;
    *(&v280 + 1) = v193;
    *(&v281 + 1) = v195;
    v282 = v194;
    swift_getObjectType();
    sub_2557508E0();
    swift_unknownObjectRelease();
    v196 = [v52 encryptedValues];
    v197 = [v1 reflectionType];
    v254[1] = v99;
    if (v197)
    {
      v198 = v197;
      v199 = sub_2557501B0();
      v201 = v200;

      v202 = MEMORY[0x277CBBE08];
      v203 = MEMORY[0x277D837D0];
    }

    else
    {
      v199 = 0;
      v201 = 0;
      v203 = 0;
      v202 = 0;
      *&v281 = 0;
    }

    v204 = v277;
    *&v280 = v199;
    *(&v280 + 1) = v201;
    *(&v281 + 1) = v203;
    v282 = v202;
    swift_getObjectType();
    sub_2557508E0();
    swift_unknownObjectRelease();
    v205 = [v52 encryptedValues];
    swift_getObjectType();
    v206 = [v1 showPhotoMemoryBanner];
    v207 = MEMORY[0x277D839B0];
    *(&v281 + 1) = MEMORY[0x277D839B0];
    v208 = MEMORY[0x277CBBE18];
    v282 = MEMORY[0x277CBBE18];
    LOBYTE(v280) = v206;
    sub_2557508E0();
    swift_unknownObjectRelease();
    v209 = [v52 encryptedValues];
    swift_getObjectType();
    v210 = [v1 showTitle];
    *(&v281 + 1) = v207;
    v282 = v208;
    LOBYTE(v280) = v210;
    sub_2557508E0();
    swift_unknownObjectRelease();
    v211 = [v52 encryptedValues];
    swift_getObjectType();
    v212 = [v1 minimumSupportedAppVersionMode];
    *(&v281 + 1) = MEMORY[0x277D84958];
    v282 = MEMORY[0x277CBBEE8];
    LOWORD(v280) = v212;
    sub_2557508E0();
    swift_unknownObjectRelease();
    *(&v281 + 1) = &type metadata for JournalFeatureFlags;
    v282 = sub_255663AC0();
    LOBYTE(v280) = 4;
    v213 = sub_25574F1E0();
    __swift_destroy_boxed_opaque_existential_1(&v280);
    if (v213)
    {
      v214 = [v52 encryptedValues];
      v215 = [v1 deletedOnDate];
      if (v215)
      {
        v216 = v259;
        v217 = v215;
        sub_25574EFF0();

        v218 = 0;
        v219 = v261;
      }

      else
      {
        v218 = 1;
        v219 = v261;
        v216 = v259;
      }

      v276(v216, v218, 1, v204);
      v220 = v260;
      sub_255675060(v216, v260, &qword_27F7BEB40, &unk_255754E40);
      if (v279(v220, 1, v204) == 1)
      {
        sub_255674B20(v220, &qword_27F7BEB40, &unk_255754E40);
        v280 = 0u;
        v281 = 0u;
        v282 = 0;
      }

      else
      {
        *(&v281 + 1) = v204;
        v282 = MEMORY[0x277CBBBE8];
        v221 = __swift_allocate_boxed_opaque_existential_1(&v280);
        (*(v278 + 32))(v221, v220, v204);
      }

      swift_getObjectType();
      sub_2557508E0();
      swift_unknownObjectRelease();
      v222 = [v1 deletedOnDate];
      if (!v222)
      {
        goto LABEL_83;
      }

      v223 = v222;
      sub_25574EFF0();

      v224 = [v52 expirationDate];
      if (v224)
      {
        v225 = v256;
        v226 = v224;
        sub_25574EFF0();

        (*(v278 + 8))(v219, v204);
        v276(v225, 0, 1, v204);
        sub_255674B20(v225, &qword_27F7BEB40, &unk_255754E40);
LABEL_83:
        v227 = [v52 expirationDate];
        if (v227)
        {
          v228 = v258;
          v229 = v227;
          sub_25574EFF0();

          v230 = v276;
          v276(v228, 0, 1, v204);
          sub_255674B20(v228, &qword_27F7BEB40, &unk_255754E40);
          v231 = [v1 deletedOnDate];
          if (v231)
          {
            v232 = v255;
            v233 = v231;
            sub_25574EFF0();

            v230(v232, 0, 1, v204);
            sub_255674B20(v232, &qword_27F7BEB40, &unk_255754E40);
          }

          else
          {
            v243 = v255;
            v230(v255, 1, 1, v204);
            sub_255674B20(v243, &qword_27F7BEB40, &unk_255754E40);
            [v52 setExpirationAfterTimeInterval_];
          }
        }

        else
        {
          v234 = v258;
          v276(v258, 1, 1, v204);
          sub_255674B20(v234, &qword_27F7BEB40, &unk_255754E40);
        }

        goto LABEL_95;
      }

      v235 = v256;
      v276(v256, 1, 1, v204);
      sub_255674B20(v235, &qword_27F7BEB40, &unk_255754E40);
      sub_25574EFE0();
      v237 = v236 + 2678400.0;
      if (v237 < 0.0)
      {
        v238 = 0.0;
      }

      else
      {
        v238 = v237;
      }

      v239 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
      [v52 setExpirationAfterTimeInterval_];

      (*(v278 + 8))(v219, v204);
    }

LABEL_95:
    v244 = [v1 mergeableAttributes];
    if (v244)
    {
      v245 = v244;
      v246 = v262;
      sub_255678960(v244 + OBJC_IVAR___WrappedMergeableEntryAttributes_value, v262, type metadata accessor for MergeableEntryAttributes);

      v247 = v264;
      sub_2556DFBE0(v246, v264);
      if (qword_27F7BD768 != -1)
      {
        swift_once();
      }

      if (qword_27F7BD760 != -1)
      {
        swift_once();
      }

      v248 = sub_25574F770();
      __swift_project_value_buffer(v248, qword_27F7C0570);
      sub_2556E26E0(&unk_27F7BF030, type metadata accessor for MergeableEntryAttributes, &protocol conformance descriptor for MergeableEntryAttributes);
      v249 = sub_25574F4B0();
      v251 = v250;
      v252 = [v52 encryptedValues];
      swift_getObjectType();
      *(&v281 + 1) = MEMORY[0x277CC9318];
      v282 = MEMORY[0x277CBBBE0];
      *&v280 = v249;
      *(&v280 + 1) = v251;
      sub_255674F54(v249, v251);
      sub_2557508E0();
      swift_unknownObjectRelease();
      sub_2556755A8(v249, v251);
      sub_2556C0F6C(v247, type metadata accessor for MergeableEntryAttributes);
    }

    return v52;
  }

  if (qword_27F7BD790 != -1)
  {
    swift_once();
  }

  v57 = sub_25574F2C0();
  __swift_project_value_buffer(v57, qword_27F7BF000);
  v58 = v0;
  v59 = sub_25574F2A0();
  v60 = sub_255750780();

  v61 = os_log_type_enabled(v59, v60);
  v62 = v273;
  if (v61)
  {
    v63 = swift_slowAlloc();
    v64 = swift_slowAlloc();
    *&v280 = v64;
    *v63 = 136315138;
    v65 = [v58 id];
    if (v65)
    {
      v66 = v65;
      sub_25574F080();

      (*(v272 + 56))(v13, 0, 1, v62);
    }

    else
    {
      (*(v272 + 56))(v13, 1, 1, v62);
    }

    v240 = sub_2557501D0();
    v242 = sub_2556E474C(v240, v241, &v280);

    *(v63 + 4) = v242;
    _os_log_impl(&dword_255661000, v59, v60, "Failed to create partial CKRecord for JournalEntryMO with id: %s.", v63, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v64);
    MEMORY[0x259C3F520](v64, -1, -1);
    MEMORY[0x259C3F520](v63, -1, -1);
  }

  return v52;
}

void sub_2556DF18C(void *a1)
{
  sub_2556DFC44(a1, 0xD000000000000013, 0x8000000255752490);
  if (v1)
  {
    if (qword_27F7BD790 != -1)
    {
      swift_once();
    }

    v2 = sub_25574F2C0();
    __swift_project_value_buffer(v2, qword_27F7BF000);
    v3 = v1;
    v4 = sub_25574F2A0();
    v5 = sub_255750780();

    if (!os_log_type_enabled(v4, v5))
    {
      goto LABEL_7;
    }

    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    v8 = v1;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    v10 = "Error updating mergeable attributes: %@";
LABEL_6:
    _os_log_impl(&dword_255661000, v4, v5, v10, v6, 0xCu);
    sub_255674B20(v7, &qword_27F7BEC80, &qword_255757E90);
    MEMORY[0x259C3F520](v7, -1, -1);
    MEMORY[0x259C3F520](v6, -1, -1);
LABEL_7:

    swift_willThrow();
    return;
  }

  v17[3] = &type metadata for JournalFeatureFlags;
  v17[4] = sub_255663AC0();
  LOBYTE(v17[0]) = 7;
  v11 = sub_25574F1E0();
  __swift_destroy_boxed_opaque_existential_1(v17);
  if (v11)
  {
    JournalEntryMO.cacheJournalRelationships()();
    if (v12)
    {
      if (qword_27F7BD790 != -1)
      {
        swift_once();
      }

      v13 = sub_25574F2C0();
      __swift_project_value_buffer(v13, qword_27F7BF000);
      v14 = v12;
      v4 = sub_25574F2A0();
      v5 = sub_255750780();

      if (!os_log_type_enabled(v4, v5))
      {
        goto LABEL_7;
      }

      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      *v6 = 138412290;
      v15 = v12;
      v16 = _swift_stdlib_bridgeErrorToNSError();
      *(v6 + 4) = v16;
      *v7 = v16;
      v10 = "Failed to cache mergeable properties: %@";
      goto LABEL_6;
    }
  }
}

uint64_t static JournalEntryMO.objectsToDeletePredicate.getter()
{
  sub_255669A88(0, &qword_27F7BDD58, 0x277CCAC30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F7BED30, qword_255757F10);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_255755060;
  *(v0 + 56) = MEMORY[0x277D837D0];
  *(v0 + 64) = sub_255666F5C();
  *(v0 + 32) = 0xD000000000000012;
  *(v0 + 40) = 0x80000002557523F0;
  return sub_255750750();
}

uint64_t sub_2556DF548()
{
  sub_255669A88(0, &qword_27F7BDD58, 0x277CCAC30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F7BED30, qword_255757F10);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_255755060;
  *(v0 + 56) = MEMORY[0x277D837D0];
  *(v0 + 64) = sub_255666F5C();
  *(v0 + 32) = 0xD000000000000012;
  *(v0 + 40) = 0x80000002557523F0;
  return sub_255750750();
}

id _s13JournalShared0A7EntryMOC22objectsToSavePredicateSo11NSPredicateCvgZ_0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F7C0010, "*}");
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_255755050;
  if (qword_27F7BD600 != -1)
  {
    swift_once();
  }

  v1 = qword_27F7BDCA0;
  *(v0 + 32) = qword_27F7BDCA0;
  v2 = qword_27F7BD620;
  v3 = v1;
  if (v2 != -1)
  {
    swift_once();
  }

  v4 = qword_27F7BDCC0;
  *(v0 + 40) = qword_27F7BDCC0;
  v5 = qword_27F7BD618;
  v6 = v4;
  if (v5 != -1)
  {
    swift_once();
  }

  v7 = qword_27F7BDCB8;
  *(v0 + 48) = qword_27F7BDCB8;
  v8 = qword_27F7BD5F0;
  v9 = v7;
  if (v8 != -1)
  {
    swift_once();
  }

  v10 = qword_27F7BDC90;
  *(v0 + 56) = qword_27F7BDC90;
  sub_255669A88(0, &qword_27F7BDD58, 0x277CCAC30);
  v11 = v10;
  v12 = sub_255750370();

  v13 = [objc_opt_self() andPredicateWithSubpredicates_];

  return v13;
}

void sub_2556DFA90()
{
  if (qword_27F7BD790 != -1)
  {
    swift_once();
  }

  v0 = sub_25574F2C0();
  __swift_project_value_buffer(v0, qword_27F7BF000);
  v1 = sub_25574F2A0();
  v2 = sub_255750780();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v8 = v4;
    *v3 = 136315138;
    v5 = sub_255751020();
    v7 = sub_2556E474C(v5, v6, &v8);

    *(v3 + 4) = v7;
    _os_log_impl(&dword_255661000, v1, v2, "%s is not yet updated to handle CloudKit deletions.", v3, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v4);
    MEMORY[0x259C3F520](v4, -1, -1);
    MEMORY[0x259C3F520](v3, -1, -1);
  }
}

uint64_t sub_2556DFBE0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MergeableEntryAttributes(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_2556DFC44(void *a1, uint64_t (*a2)(uint64_t a1), uint64_t (*a3)(uint64_t a1))
{
  v4 = v3;
  v180 = a2;
  v181 = a3;
  v183 = v4;
  ObjectType = swift_getObjectType();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BF050, qword_255759D18);
  MEMORY[0x28223BE20](v6 - 8);
  v173 = &v154 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE0C8, &qword_255755C60);
  v168 = *(v8 - 8);
  v169 = v8;
  MEMORY[0x28223BE20](v8);
  v167 = &v154 - v9;
  v10 = type metadata accessor for MergeableEntryAssetsPlacement(0);
  MEMORY[0x28223BE20](v10 - 8);
  v166 = &v154 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v165 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BF080, qword_255759D48);
  MEMORY[0x28223BE20](v165);
  v164 = &v154 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEB40, &unk_255754E40);
  v14 = MEMORY[0x28223BE20](v13 - 8);
  v163 = &v154 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v175 = (&v154 - v16);
  v17 = sub_25574F020();
  v178 = *(v17 - 8);
  v179 = v17;
  v18 = MEMORY[0x28223BE20](v17);
  v162 = &v154 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v18);
  v172 = &v154 - v21;
  MEMORY[0x28223BE20](v20);
  v177 = &v154 - v22;
  v176 = sub_25574F500();
  v171 = *(v176 - 8);
  MEMORY[0x28223BE20](v176);
  v170 = &v154 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE7E8, &unk_255757F00);
  MEMORY[0x28223BE20](v24 - 8);
  v26 = &v154 - v25;
  v27 = type metadata accessor for MergeableEntryAttributes(0);
  v182 = *(v27 - 8);
  v28 = MEMORY[0x28223BE20](v27);
  v30 = &v154 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = MEMORY[0x28223BE20](v28);
  v33 = &v154 - v32;
  v34 = MEMORY[0x28223BE20](v31);
  v36 = &v154 - v35;
  v37 = MEMORY[0x28223BE20](v34);
  v39 = &v154 - v38;
  v40 = MEMORY[0x28223BE20](v37);
  v42 = &v154 - v41;
  MEMORY[0x28223BE20](v40);
  v44 = &v154 - v43;
  v45 = v184;
  sub_2556ADC0C(0xD000000000000013, 0x8000000255752490, v26);
  if (v45)
  {
    return;
  }

  v157 = v36;
  v156 = v33;
  v160 = v39;
  v159 = v30;
  v46 = v183;
  v158 = v42;
  v161 = v44;
  v184 = 0;
  if ((*(v182 + 48))(v26, 1, v27) != 1)
  {
    v65 = v27;
    v66 = v161;
    sub_2556DFBE0(v26, v161);
    v67 = [v46 mergeableAttributes];
    v68 = a1;
    if (v67)
    {
      v69 = v67;
      v70 = v157;
      sub_255678960(v67 + OBJC_IVAR___WrappedMergeableEntryAttributes_value, v157, type metadata accessor for MergeableEntryAttributes);

      v71 = v160;
      sub_2556DFBE0(v70, v160);
      v72 = sub_25572DB48(v66, v71);
      v73 = v159;
      if (v72 & 1) != 0 && (sub_25572DB5C(v66 + *(v65 + 20), v71 + *(v65 + 20)))
      {
        v182 = v65;
        v74 = v158;
        sub_255678960(v66, v158, type metadata accessor for MergeableEntryAttributes);
        v75 = v170;
        MergeableEntryAttributes.merge(_:)(v71);
        (*(v171 + 8))(v75, v176);
        sub_2556C0F6C(v71, type metadata accessor for MergeableEntryAttributes);
      }

      else
      {
        if (qword_27F7BD790 != -1)
        {
          swift_once();
        }

        v76 = sub_25574F2C0();
        __swift_project_value_buffer(v76, qword_27F7BF000);
        v77 = v68;
        v78 = sub_25574F2A0();
        v79 = sub_2557507A0();

        if (os_log_type_enabled(v78, v79))
        {
          v80 = swift_slowAlloc();
          v186 = swift_slowAlloc();
          v155 = v68;
          v81 = v186;
          *v80 = 136446722;
          v82 = sub_255751020();
          v84 = sub_2556E474C(v82, v83, &v186);

          *(v80 + 4) = v84;
          *(v80 + 12) = 2082;
          v85 = sub_255750920();
          v87 = sub_2556E474C(v85, v86, &v186);

          *(v80 + 14) = v87;
          *(v80 + 22) = 2080;
          v88 = [v77 recordID];
          v89 = [v88 recordName];

          v90 = sub_2557501B0();
          v92 = v91;

          v93 = sub_2556E474C(v90, v92, &v186);

          *(v80 + 24) = v93;
          _os_log_impl(&dword_255661000, v78, v79, "%{public}s and %{public}s have mergeable attributes without shared history. Falling back to LWW semantics. ID: %s", v80, 0x20u);
          swift_arrayDestroy();
          v94 = v81;
          v68 = v155;
          MEMORY[0x259C3F520](v94, -1, -1);
          v95 = v80;
          v66 = v161;
          MEMORY[0x259C3F520](v95, -1, -1);
        }

        v97 = v178;
        v96 = v179;
        v98 = v175;
        v99 = v184;
        sub_2556E2EE0(0x4464657461647075, 0xEB00000000657461, v175);
        v184 = v99;
        if (v99)
        {
          v100 = v160;
          goto LABEL_43;
        }

        v101 = *(v97 + 48);
        if (v101(v98, 1, v96) == 1)
        {
          sub_25574EFB0();
          if (v101(v98, 1, v96) != 1)
          {
            sub_255674B20(v98, &qword_27F7BEB40, &unk_255754E40);
          }
        }

        else
        {
          (*(v97 + 32))(v177, v98, v96);
        }

        v182 = v65;
        v102 = [v183 updatedDate];
        v155 = v68;
        if (v102)
        {
          v103 = v162;
          v104 = v102;
          sub_25574EFF0();

          v105 = *(v97 + 32);
          v106 = v163;
          v105(v163, v103, v96);
          (*(v97 + 56))(v106, 0, 1, v96);
          v105(v172, v106, v96);
          v107 = v158;
          v108 = v165;
          v109 = v164;
        }

        else
        {
          v110 = v163;
          (*(v97 + 56))(v163, 1, 1, v96);
          sub_25574EFB0();
          v111 = v101(v110, 1, v96);
          v107 = v158;
          v108 = v165;
          v109 = v164;
          if (v111 != 1)
          {
            sub_255674B20(v110, &qword_27F7BEB40, &unk_255754E40);
          }
        }

        v112 = sub_25574EFD0();
        v113 = *(v108 + 48);
        v114 = (v112 & 1) == 0;
        if (v112)
        {
          v115 = v160;
        }

        else
        {
          v115 = v66;
        }

        if (v114)
        {
          v116 = v160;
        }

        else
        {
          v116 = v66;
        }

        v181 = type metadata accessor for MergeableEntryAttributes;
        sub_255678960(v115, v109, type metadata accessor for MergeableEntryAttributes);
        sub_255678960(v116, v109 + v113, type metadata accessor for MergeableEntryAttributes);
        v117 = *(v108 + 48);
        sub_2556DFBE0(v109, v107);
        v118 = v156;
        sub_2556DFBE0(v109 + v117, v156);
        v119 = v182;
        v120 = *(v182 + 24);
        v180 = type metadata accessor for MergeableEntryAssetsPlacement;
        v121 = v166;
        sub_255678960(v118 + v120, v166, type metadata accessor for MergeableEntryAssetsPlacement);
        v122 = v170;
        MergeableEntryAssetsPlacement.merge(_:)(v107 + *(v119 + 24), v170);
        v123 = *(v171 + 8);
        v124 = v176;
        v123(v122, v176);
        v175 = v123;
        MergeableEntryAssetsPlacement.merge(_:)(v121, v122);
        v123(v122, v124);
        sub_2556C0F6C(v121, v180);
        v126 = v167;
        v125 = v168;
        v127 = v169;
        (*(v168 + 16))(v167, &v156[*(v119 + 28)], v169);
        sub_25574FC50();
        v128 = v124;
        v129 = v175;
        v175(v122, v128);
        sub_25574FC50();
        v129(v122, v176);
        v130 = v127;
        v66 = v161;
        (*(v125 + 8))(v126, v130);
        v131 = v181;
        sub_2556C0F6C(v156, v181);
        v132 = v179;
        v133 = *(v178 + 8);
        v133(v172, v179);
        v133(v177, v132);
        sub_2556C0F6C(v160, v131);
        v68 = v155;
        v73 = v159;
        v46 = v183;
        v74 = v158;
      }
    }

    else
    {
      v182 = v65;
      v74 = v158;
      sub_255678960(v66, v158, type metadata accessor for MergeableEntryAttributes);
      v73 = v159;
    }

    sub_255678960(v74, v73, type metadata accessor for MergeableEntryAttributes);
    v134 = type metadata accessor for WrappedMergeableEntryAttributes(0);
    v135 = objc_allocWithZone(v134);
    sub_255678960(v73, v135 + OBJC_IVAR___WrappedMergeableEntryAttributes_value, type metadata accessor for MergeableEntryAttributes);
    v185.receiver = v135;
    v185.super_class = v134;
    v136 = objc_msgSendSuper2(&v185, sel_init);
    sub_2556C0F6C(v73, type metadata accessor for MergeableEntryAttributes);
    [v46 setMergeableAttributes_];

    if ([v46 isUploadedToCloud])
    {
      sub_2556E26E0(&qword_27F7BF060, type metadata accessor for MergeableEntryAttributes, &protocol conformance descriptor for MergeableEntryAttributes);
      v137 = v173;
      sub_25574FD60();
      v138 = type metadata accessor for MergeableEntryAttributes.ObservableDifference(0);
      if ((*(*(v138 - 8) + 48))(v137, 1, v138) == 1)
      {
        sub_2556C0F6C(v74, type metadata accessor for MergeableEntryAttributes);
        sub_2556C0F6C(v66, type metadata accessor for MergeableEntryAttributes);
        sub_255674B20(v137, &qword_27F7BF050, qword_255759D18);
        return;
      }

      sub_255674B20(v137, &qword_27F7BF050, qword_255759D18);
      if (qword_27F7BD790 != -1)
      {
        swift_once();
      }

      v139 = sub_25574F2C0();
      __swift_project_value_buffer(v139, qword_27F7BF000);
      v140 = v68;
      v141 = sub_25574F2A0();
      v142 = sub_255750780();

      if (os_log_type_enabled(v141, v142))
      {
        v143 = swift_slowAlloc();
        v144 = v74;
        v145 = v66;
        v146 = swift_slowAlloc();
        v186 = v146;
        *v143 = 136315138;
        v147 = [v140 recordID];
        v148 = [v147 recordName];

        v149 = sub_2557501B0();
        v151 = v150;

        v152 = sub_2556E474C(v149, v151, &v186);

        *(v143 + 4) = v152;
        _os_log_impl(&dword_255661000, v141, v142, "Remote MergeableEntryAttributes need to be updated, but no sync is scheduled! Record id: %s", v143, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v146);
        MEMORY[0x259C3F520](v146, -1, -1);
        MEMORY[0x259C3F520](v143, -1, -1);

        sub_2556C0F6C(v144, type metadata accessor for MergeableEntryAttributes);
        v153 = v145;
LABEL_44:
        sub_2556C0F6C(v153, type metadata accessor for MergeableEntryAttributes);
        return;
      }
    }

    v100 = v74;
LABEL_43:
    sub_2556C0F6C(v100, type metadata accessor for MergeableEntryAttributes);
    v153 = v66;
    goto LABEL_44;
  }

  sub_255674B20(v26, &qword_27F7BE7E8, &unk_255757F00);
  if (qword_27F7BD790 != -1)
  {
    swift_once();
  }

  v47 = sub_25574F2C0();
  __swift_project_value_buffer(v47, qword_27F7BF000);
  v48 = a1;
  v49 = v181;

  v50 = sub_25574F2A0();
  v51 = sub_255750760();

  v52 = os_log_type_enabled(v50, v51);
  v53 = v180;
  if (v52)
  {
    v54 = swift_slowAlloc();
    v55 = swift_slowAlloc();
    v186 = v55;
    *v54 = 136446722;
    v56 = sub_255750920();
    v58 = sub_2556E474C(v56, v57, &v186);

    *(v54 + 4) = v58;
    *(v54 + 12) = 2082;
    *(v54 + 14) = sub_2556E474C(v53, v49, &v186);
    *(v54 + 22) = 2080;
    v59 = [v48 recordID];
    v60 = [v59 recordName];

    v61 = sub_2557501B0();
    v63 = v62;

    v64 = sub_2556E474C(v61, v63, &v186);

    *(v54 + 24) = v64;
    _os_log_impl(&dword_255661000, v50, v51, "%{public}s record does not have a mergeable value for %{public}s. Retaining local values. Record ID: %s", v54, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x259C3F520](v55, -1, -1);
    MEMORY[0x259C3F520](v54, -1, -1);
  }
}