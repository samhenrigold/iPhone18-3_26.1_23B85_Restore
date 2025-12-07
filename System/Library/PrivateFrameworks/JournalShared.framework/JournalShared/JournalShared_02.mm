char *sub_25569919C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE078, &qword_255755C28);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

uint64_t sub_2556992A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_25574F0D0();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  sub_255668318(&qword_27F7BE0B0, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  v31 = a1;
  v10 = sub_255750090();
  v11 = v9 + 56;
  v29 = v9 + 56;
  v30 = v9;
  v12 = -1 << *(v9 + 32);
  v13 = v10 & ~v12;
  if ((*(v11 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
  {
    v26 = v2;
    v27 = v6;
    v28 = a2;
    v14 = ~v12;
    v17 = *(v6 + 16);
    v16 = v6 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    while (1)
    {
      v15(v8, *(v30 + 48) + v18 * v13, v5);
      sub_255668318(&qword_27F7BE0B8, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
      v19 = sub_255750100();
      (*(v16 - 8))(v8, v5);
      if (v19)
      {
        break;
      }

      v13 = (v13 + 1) & v14;
      if (((*(v29 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
      {
        v20 = 1;
        v6 = v27;
        a2 = v28;
        return (*(v6 + 56))(a2, v20, 1, v5);
      }
    }

    v21 = v26;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = *v21;
    v32 = *v21;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_2557016C0();
      v23 = v32;
    }

    v6 = v27;
    a2 = v28;
    (*(v27 + 32))(v28, *(v23 + 48) + v18 * v13, v5);
    sub_255699B48(v13);
    v20 = 0;
    *v21 = v32;
  }

  else
  {
    v20 = 1;
  }

  return (*(v6 + 56))(a2, v20, 1, v5);
}

void sub_255699548(uint64_t a1, char a2, void *a3)
{
  v61 = sub_25574FDB0();
  v59 = *(v61 - 8);
  MEMORY[0x28223BE20](v61);
  v60 = &v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BDEE8, &unk_25575B4D0);
  v58 = *(v8 - 8);
  v9 = MEMORY[0x28223BE20](v8);
  v11 = (&v52 - v10);
  v56 = *(a1 + 16);
  if (!v56)
  {
    goto LABEL_24;
  }

  v52 = v3;
  if (!*(a1 + 16))
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v12 = *(v9 + 48);
  v13 = *(v58 + 80);
  v57 = a1;
  v14 = (v59 + 32);
  v54 = a1 + ((v13 + 32) & ~v13);
  sub_255663294(v54, v11, &qword_27F7BDEE8, &unk_25575B4D0);
  v16 = v11[1];
  v64 = *v11;
  v15 = v64;
  v65 = v16;
  v17 = *v14;
  v55 = v12;
  v53 = v17;
  v17(v60, v11 + v12, v61);
  v18 = *a3;
  v20 = sub_2556632FC(v15, v16);
  v21 = v18[2];
  v22 = (v19 & 1) == 0;
  v23 = v21 + v22;
  if (__OFADD__(v21, v22))
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v24 = v19;
  if (v18[3] >= v23)
  {
    if (a2)
    {
      if ((v19 & 1) == 0)
      {
        goto LABEL_14;
      }
    }

    else
    {
      sub_2557427DC();
      if ((v24 & 1) == 0)
      {
        goto LABEL_14;
      }
    }

    goto LABEL_11;
  }

  sub_255743928(v23, a2 & 1);
  v25 = sub_2556632FC(v15, v16);
  if ((v24 & 1) == (v26 & 1))
  {
    v20 = v25;
    if ((v24 & 1) == 0)
    {
LABEL_14:
      v31 = *a3;
      *(*a3 + 8 * (v20 >> 6) + 64) |= 1 << v20;
      v32 = (v31[6] + 16 * v20);
      *v32 = v15;
      v32[1] = v16;
      v53((v31[7] + *(v59 + 72) * v20), v60, v61);
      v33 = v31[2];
      v34 = __OFADD__(v33, 1);
      v35 = v33 + 1;
      if (v34)
      {
LABEL_27:
        __break(1u);
        goto LABEL_28;
      }

      v31[2] = v35;
      if (v56 != 1)
      {
        v36 = 1;
        while (v36 < *(v57 + 16))
        {
          sub_255663294(v54 + *(v58 + 72) * v36, v11, &qword_27F7BDEE8, &unk_25575B4D0);
          v38 = v11[1];
          v64 = *v11;
          v37 = v64;
          v65 = v38;
          v39 = *v14;
          (*v14)(v60, v11 + v55, v61);
          v40 = *a3;
          v41 = sub_2556632FC(v37, v38);
          v43 = v40[2];
          v44 = (v42 & 1) == 0;
          v34 = __OFADD__(v43, v44);
          v45 = v43 + v44;
          if (v34)
          {
            goto LABEL_26;
          }

          v46 = v42;
          if (v40[3] < v45)
          {
            sub_255743928(v45, 1);
            v41 = sub_2556632FC(v37, v38);
            if ((v46 & 1) != (v47 & 1))
            {
              goto LABEL_28;
            }
          }

          if (v46)
          {
            goto LABEL_11;
          }

          v48 = *a3;
          *(*a3 + 8 * (v41 >> 6) + 64) |= 1 << v41;
          v49 = (v48[6] + 16 * v41);
          *v49 = v37;
          v49[1] = v38;
          v39((v48[7] + *(v59 + 72) * v41), v60, v61);
          v50 = v48[2];
          v34 = __OFADD__(v50, 1);
          v51 = v50 + 1;
          if (v34)
          {
            goto LABEL_27;
          }

          ++v36;
          v48[2] = v51;
          if (v56 == v36)
          {
            goto LABEL_24;
          }
        }

        goto LABEL_25;
      }

LABEL_24:

      return;
    }

LABEL_11:
    v27 = sub_25574F750();
    sub_255668318(&qword_27F7BE110, MEMORY[0x277CFB5B0], MEMORY[0x277CFB5B8]);
    v28 = swift_allocError();
    *v29 = 0xD000000000000034;
    v29[1] = 0x80000002557526E0;
    (*(*(v27 - 8) + 104))(v29, *MEMORY[0x277CFB5A8], v27);
    swift_willThrow();
    v66 = v28;
    v30 = v28;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE118, &qword_255755C80);
    if ((swift_dynamicCast() & 1) == 0)
    {

      (*(v59 + 8))(v60, v61);

      return;
    }

    goto LABEL_29;
  }

LABEL_28:
  sub_255750F10();
  __break(1u);
LABEL_29:
  v62 = 0;
  v63 = 0xE000000000000000;
  sub_255750B00();
  MEMORY[0x259C3DED0](0xD00000000000001BLL, 0x8000000255752750);
  sub_255750C20();
  MEMORY[0x259C3DED0](39, 0xE100000000000000);
  sub_255750C40();
  __break(1u);
}

uint64_t sub_255699B48(int64_t a1)
{
  v3 = sub_25574F0D0();
  v4 = *(v3 - 8);
  result = MEMORY[0x28223BE20](v3);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v1;
  v9 = *v1 + 56;
  v10 = -1 << *(*v1 + 32);
  v11 = (a1 + 1) & ~v10;
  if (((1 << v11) & *(v9 + 8 * (v11 >> 6))) != 0)
  {
    v12 = ~v10;

    v13 = sub_2557509C0();
    if ((*(v9 + 8 * (v11 >> 6)) & (1 << v11)) != 0)
    {
      v14 = v12;
      v15 = (v13 + 1) & v12;
      v35 = *(v4 + 16);
      v36 = v4 + 16;
      v16 = *(v4 + 72);
      v33 = (v4 + 8);
      v34 = v9;
      v17 = v16;
      do
      {
        v18 = v17;
        v19 = v17 * v11;
        v35(v7, *(v8 + 48) + v17 * v11, v3);
        v20 = v8;
        v21 = v15;
        v22 = v14;
        v23 = v20;
        sub_255668318(&qword_27F7BE0B0, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
        v24 = sub_255750090();
        (*v33)(v7, v3);
        v25 = v24 & v22;
        v14 = v22;
        v15 = v21;
        if (a1 >= v21)
        {
          if (v25 >= v21 && a1 >= v25)
          {
LABEL_16:
            v8 = v23;
            v28 = *(v23 + 48);
            v17 = v18;
            v29 = v18 * a1;
            if (v18 * a1 < v19 || v28 + v18 * a1 >= (v28 + v19 + v18))
            {
              swift_arrayInitWithTakeFrontToBack();
              a1 = v11;
            }

            else
            {
              a1 = v11;
              if (v29 != v19)
              {
                swift_arrayInitWithTakeBackToFront();
                a1 = v11;
              }
            }

            goto LABEL_5;
          }
        }

        else if (v25 >= v21 || a1 >= v25)
        {
          goto LABEL_16;
        }

        v8 = v23;
        v17 = v18;
LABEL_5:
        v11 = (v11 + 1) & v14;
        v9 = v34;
      }

      while (((*(v34 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
    }

    *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  else
  {
    *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  v30 = *(v8 + 16);
  v31 = __OFSUB__(v30, 1);
  v32 = v30 - 1;
  if (v31)
  {
    __break(1u);
  }

  else
  {
    *(v8 + 16) = v32;
    ++*(v8 + 36);
  }

  return result;
}

uint64_t _s13JournalShared09MergeableA10AttributesV4IconO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_25574F320();
  v45 = *(v4 - 8);
  v46 = v4;
  v5 = MEMORY[0x28223BE20](v4);
  v7 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v44 = &v43 - v8;
  v9 = type metadata accessor for MergeableJournalAttributes.Icon(0);
  v10 = MEMORY[0x28223BE20](v9);
  v12 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = (&v43 - v14);
  MEMORY[0x28223BE20](v13);
  v17 = (&v43 - v16);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BDEF8, &qword_2557552D8);
  v19 = MEMORY[0x28223BE20](v18 - 8);
  v21 = &v43 - v20;
  v22 = (&v43 + *(v19 + 56) - v20);
  sub_25568C188(a1, &v43 - v20, type metadata accessor for MergeableJournalAttributes.Icon);
  sub_25568C188(a2, v22, type metadata accessor for MergeableJournalAttributes.Icon);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    sub_25568C188(v21, v17, type metadata accessor for MergeableJournalAttributes.Icon);
    v29 = *v17;
    v28 = v17[1];
    if (swift_getEnumCaseMultiPayload())
    {
LABEL_11:

LABEL_16:
      sub_255674B20(v21, &qword_27F7BDEF8, &qword_2557552D8);
LABEL_26:
      v37 = 0;
      return v37 & 1;
    }

    if (v29 == *v22 && v28 == v22[1])
    {
      goto LABEL_27;
    }

    v40 = sub_255750EB0();

    if (v40)
    {
      goto LABEL_28;
    }

LABEL_25:
    sub_25568C1F0(v21, type metadata accessor for MergeableJournalAttributes.Icon);
    goto LABEL_26;
  }

  if (EnumCaseMultiPayload == 1)
  {
    sub_25568C188(v21, v15, type metadata accessor for MergeableJournalAttributes.Icon);
    v25 = *v15;
    v24 = v15[1];
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      if (v25 != *v22 || v24 != v22[1])
      {
        v27 = sub_255750EB0();

        if (v27)
        {
          goto LABEL_28;
        }

        goto LABEL_25;
      }

LABEL_27:

LABEL_28:
      sub_25568C1F0(v21, type metadata accessor for MergeableJournalAttributes.Icon);
      v37 = 1;
      return v37 & 1;
    }

    goto LABEL_11;
  }

  sub_25568C188(v21, v12, type metadata accessor for MergeableJournalAttributes.Icon);
  v30 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BFFF0, &qword_255755250) + 48);
  if (swift_getEnumCaseMultiPayload() != 2)
  {
    (*(v45 + 8))(&v12[v30], v46);
    goto LABEL_16;
  }

  v43 = *v12;
  v31 = *v22;
  v32 = v44;
  v33 = v45;
  v34 = *(v45 + 32);
  v35 = &v12[v30];
  v36 = v46;
  v34(v44, v35, v46);
  v34(v7, v22 + v30, v36);
  if (v43 != v31)
  {
    v41 = *(v33 + 8);
    v41(v7, v36);
    v41(v32, v36);
    goto LABEL_25;
  }

  v37 = sub_25574F2F0();
  v38 = *(v33 + 8);
  v38(v7, v36);
  v38(v32, v36);
  sub_25568C1F0(v21, type metadata accessor for MergeableJournalAttributes.Icon);
  return v37 & 1;
}

unint64_t sub_25569A318()
{
  result = qword_27F7BDE60;
  if (!qword_27F7BDE60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7BDE60);
  }

  return result;
}

unint64_t sub_25569A36C()
{
  result = qword_27F7BDE68;
  if (!qword_27F7BDE68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7BDE68);
  }

  return result;
}

unint64_t sub_25569A3C0()
{
  result = qword_27F7BDE78;
  if (!qword_27F7BDE78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7BDE78);
  }

  return result;
}

unint64_t sub_25569A414()
{
  result = qword_27F7BDE80;
  if (!qword_27F7BDE80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7BDE80);
  }

  return result;
}

uint64_t sub_25569A468(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t _s13JournalShared09MergeableA10AttributesV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F7BFFB0, &unk_255755200);
  v34 = *(v4 - 8);
  v35 = v4;
  v5 = MEMORY[0x28223BE20](v4);
  v33 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v32 = &v31 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BDDC8, &qword_2557551F8);
  v36 = *(v8 - 8);
  v9 = MEMORY[0x28223BE20](v8);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v31 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F7BFF90, &qword_2557551F0);
  v15 = *(v14 - 8);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v31 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v31 - v19;
  v37 = a1;
  sub_25574F390();
  v38 = a2;
  sub_25574F390();
  sub_255669798(&qword_27F7BE0F8, &unk_27F7BFF90, &qword_2557551F0, MEMORY[0x277CFB4F8]);
  LOBYTE(a2) = sub_255750100();
  v21 = *(v15 + 8);
  v21(v18, v14);
  v21(v20, v14);
  if (a2 & 1) != 0 && (type metadata accessor for MergeableJournalAttributes(0), sub_25574F390(), sub_25574F390(), sub_255669798(&qword_27F7BE100, &qword_27F7BDDC8, &qword_2557551F8, MEMORY[0x277CFB4F8]), v22 = sub_255750100(), v23 = *(v36 + 8), v23(v11, v8), v23(v13, v8), (v22) && (v24 = v32, v25 = v35, sub_25574F390(), v26 = v33, sub_25574F390(), sub_255669798(&qword_27F7BE108, &unk_27F7BFFB0, &unk_255755200, MEMORY[0x277CFB4F8]), v27 = sub_255750100(), v28 = *(v34 + 8), v28(v26, v25), v28(v24, v25), (v27))
  {
    v29 = sub_25574F7E0();
  }

  else
  {
    v29 = 0;
  }

  return v29 & 1;
}

uint64_t sub_25569A954(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6C6F626D79536673 && a2 == 0xE800000000000000;
  if (v4 || (sub_255750EB0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x696A6F6D65 && a2 == 0xE500000000000000 || (sub_255750EB0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6E776F6E6B6E75 && a2 == 0xE700000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_255750EB0();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_25569AA68(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BDEE8, &unk_25575B4D0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_25569AC00(uint64_t a1)
{
  sub_25569ACF0(319, &qword_27F7BDF80, MEMORY[0x277CFB6A0]);
  if (v1 <= 0x3F)
  {
    sub_25569ACF0(319, &qword_27F7BDF88, type metadata accessor for MergeableColor.ObservableDifference);
    if (v2 <= 0x3F)
    {
      sub_25569ACF0(319, &qword_27F7BDF90, type metadata accessor for MergeableJournalAttributes.Icon.ObservableDifference);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_25569ACF0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
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

void sub_25569AD6C(uint64_t a1)
{
  sub_255672600(319, &qword_27F7BDFA8, &qword_27F7BDEB8, &qword_2557552A0);
  if (v1 <= 0x3F)
  {
    sub_255672600(319, &qword_27F7BDFB0, &qword_27F7BDEC0, &qword_2557552A8);
    if (v2 <= 0x3F)
    {
      sub_255672600(319, &qword_27F7BDFB8, &qword_27F7BDEC8, &qword_2557552B0);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_25569AE78(uint64_t a1)
{
  sub_255672600(319, &qword_27F7BDFD0, &unk_27F7BFF90, &qword_2557551F0);
  if (v1 <= 0x3F)
  {
    sub_255672600(319, &qword_27F7BDFD8, &qword_27F7BDDC8, &qword_2557551F8);
    if (v2 <= 0x3F)
    {
      sub_255672600(319, &qword_27F7BDFE0, &unk_27F7BFFB0, &unk_255755200);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_25569AFAC(uint64_t a1)
{
  result = sub_25574FB50();
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AppleAccountUIFeature(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for AppleAccountUIFeature(_WORD *result, int a2, int a3)
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

uint64_t getEnumTagSinglePayload for MergeableJournalAttributes.Icon.UnknownCodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for MergeableJournalAttributes.Icon.UnknownCodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_25569B26C()
{
  result = qword_27F7BE010;
  if (!qword_27F7BE010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7BE010);
  }

  return result;
}

unint64_t sub_25569B2C4()
{
  result = qword_27F7BE018;
  if (!qword_27F7BE018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7BE018);
  }

  return result;
}

unint64_t sub_25569B31C()
{
  result = qword_27F7BE020;
  if (!qword_27F7BE020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7BE020);
  }

  return result;
}

unint64_t sub_25569B374()
{
  result = qword_27F7BE028;
  if (!qword_27F7BE028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7BE028);
  }

  return result;
}

unint64_t sub_25569B3CC()
{
  result = qword_27F7BE030;
  if (!qword_27F7BE030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7BE030);
  }

  return result;
}

unint64_t sub_25569B424()
{
  result = qword_27F7BE038;
  if (!qword_27F7BE038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7BE038);
  }

  return result;
}

unint64_t sub_25569B47C()
{
  result = qword_27F7BE040;
  if (!qword_27F7BE040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7BE040);
  }

  return result;
}

unint64_t sub_25569B4D4()
{
  result = qword_27F7BE048;
  if (!qword_27F7BE048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7BE048);
  }

  return result;
}

unint64_t sub_25569B52C()
{
  result = qword_27F7BE050;
  if (!qword_27F7BE050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7BE050);
  }

  return result;
}

unint64_t sub_25569B584()
{
  result = qword_27F7BE058;
  if (!qword_27F7BE058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7BE058);
  }

  return result;
}

unint64_t sub_25569B5DC()
{
  result = qword_27F7BE060;
  if (!qword_27F7BE060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7BE060);
  }

  return result;
}

unint64_t sub_25569B634()
{
  result = qword_27F7BE068;
  if (!qword_27F7BE068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7BE068);
  }

  return result;
}

uint64_t sub_25569B6D0(uint64_t a1)
{
  v2 = sub_25574F0D0();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v17 - v7;
  v9 = *(a1 + 16);
  v10 = sub_255668318(&qword_27F7BE0B0, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  result = MEMORY[0x259C3E270](v9, v2, v10);
  v18 = result;
  if (v9)
  {
    v14 = *(v3 + 16);
    v12 = v3 + 16;
    v13 = v14;
    v15 = a1 + ((*(v12 + 64) + 32) & ~*(v12 + 64));
    v16 = *(v12 + 56);
    do
    {
      v13(v6, v15, v2);
      sub_2556FF184(v8, v6);
      (*(v12 - 8))(v8, v2);
      v15 += v16;
      --v9;
    }

    while (v9);
    return v18;
  }

  return result;
}

uint64_t (*sub_25569B8FC(unint64_t a1, uint64_t (*a2)(void), unint64_t *a3, uint64_t (*a4)(uint64_t), void (*a5)(id *, uint64_t (*)(void))))(uint64_t)
{
  v9 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_18;
  }

  v10 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  for (i = a2(0); ; i = v20(0))
  {
    v12 = i;
    v13 = sub_255668318(a3, a4, MEMORY[0x277D85378]);
    result = MEMORY[0x259C3E270](v10, v12, v13);
    v22 = result;
    if (v9)
    {
      break;
    }

    a3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!a3)
    {
      return result;
    }

LABEL_7:
    v15 = 0;
    v9 = a1 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v16 = MEMORY[0x259C3E830](v15, a1);
      }

      else
      {
        if (v15 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v16 = *(a1 + 8 * v15 + 32);
      }

      a2 = v16;
      v17 = (v15 + 1);
      if (__OFADD__(v15, 1))
      {
        break;
      }

      a4 = &v22;
      a5(&v21, v16);

      ++v15;
      if (v17 == a3)
      {
        return v22;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    v18 = a2;
    v19 = sub_255750A30();
    v20 = v18;
    v10 = v19;
  }

  a4 = result;
  a3 = sub_255750A30();
  result = a4;
  if (a3)
  {
    goto LABEL_7;
  }

  return result;
}

unint64_t sub_25569BA64()
{
  result = qword_27F7BE370;
  if (!qword_27F7BE370)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F7BE370);
  }

  return result;
}

void sub_25569BB24(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a6@<X8>)
{
  v10 = sub_25574FAC0();
  (*(*(v10 - 8) + 16))(a6, a1, v10);
  v11._countAndFlagsBits = a2;
  v11._object = a3;
  CRAttributedString.replace(with:)(v11);
}

Swift::Void __swiftcall CRAttributedString.replace(with:)(Swift::String with)
{
  v2 = v1;
  object = with._object;
  countAndFlagsBits = with._countAndFlagsBits;
  v5 = sub_25574F880();
  v6 = [v5 length];

  if (v6 < 1)
  {

    sub_25574FA20();
  }

  else
  {
    v7 = sub_25574F880();
    v8 = [v7 length];

    if ((v8 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else
    {
      v9 = 0;
      v10 = v8;
      v11 = countAndFlagsBits;
      v12 = object;
      v13 = v2;
    }

    MEMORY[0x28214DF70](v9, v10, v11, v12, v13);
  }
}

uint64_t sub_25569BCA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a3 + a4 - 16);
  v5 = *(a3 + a4 - 8);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  v7 = sub_255750950();
  MEMORY[0x28223BE20](v7);
  v9 = &v12 - v8;
  (*(v10 + 16))(&v12 - v8, a1);
  return MergeableProvider.unwrappedMergeableAttributes.setter(v9, v6, v5);
}

uint64_t MergeableProvider.unwrappedMergeableAttributes.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = sub_255750950();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v25 - v10;
  v12 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](v9);
  v14 = &v25 - v13;
  (*(v8 + 16))(v11, a1, v7);
  if ((*(v12 + 48))(v11, 1, AssociatedTypeWitness) == 1)
  {
    v15 = *(v8 + 8);
    v15(v11, v7);
    if (qword_27F7BD5E0 != -1)
    {
      swift_once();
    }

    v16 = sub_25574F2C0();
    __swift_project_value_buffer(v16, qword_27F7C0528);
    v17 = sub_25574F2A0();
    v18 = sub_255750780();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v26 = v20;
      *v19 = 136446210;
      v21 = sub_255751020();
      v23 = sub_2556E474C(v21, v22, &v26);

      *(v19 + 4) = v23;
      _os_log_impl(&dword_255661000, v17, v18, "Tried to set nil mergeable attributes on %{public}s.", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v20);
      MEMORY[0x259C3F520](v20, -1, -1);
      MEMORY[0x259C3F520](v19, -1, -1);
    }

    return (v15)(a1, v7);
  }

  else
  {
    (*(v12 + 32))(v14, v11, AssociatedTypeWitness);
    MergeableProvider.merge(_:)(v14, a2, a3);
    (*(v8 + 8))(a1, v7);
    return (*(v12 + 8))(v14, AssociatedTypeWitness);
  }
}

uint64_t MergeableProvider.merge(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v46 = a1;
  v6 = sub_25574F500();
  v43 = *(v6 - 8);
  v44 = v6;
  MEMORY[0x28223BE20](v6);
  v42 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  v10 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v41 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v45 = &v35 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v35 - v15;
  MEMORY[0x28223BE20](v14);
  v47 = &v35 - v17;
  v18 = a3;
  if ((*(a3 + 32))(a2, a3))
  {
    v38 = a2;
    v19 = AssociatedConformanceWitness;
    v40 = v3;
    v20 = *(AssociatedConformanceWitness + 24);
    v39 = swift_checkMetadataState();
    v20(v39, v19);
    swift_unknownObjectRelease();
    (*(v9 + 32))(v47, v16, AssociatedTypeWitness);
    v37 = *(v9 + 16);
    v21 = v45;
    v37();
    v36 = v18;
    swift_getAssociatedConformanceWitness();
    v22 = v42;
    v23 = AssociatedTypeWitness;
    v24 = v21;
    sub_25574F4D0();
    v25 = v44;
    v26 = *(v43 + 8);
    v26(v22, v44);
    v27 = v47;
    sub_25574F4D0();
    v26(v22, v25);
    v28 = v41;
    (v37)(v41, v27, v23);
    v29 = (*(AssociatedConformanceWitness + 16))(v28);
    (*(v36 + 40))(v29, v38);
    v30 = *(v9 + 8);
    v30(v24, v23);
    return (v30)(v27, v23);
  }

  else
  {
    v32 = swift_checkMetadataState();
    v33 = v45;
    (*(v9 + 16))(v45, v46, AssociatedTypeWitness);
    v34 = (*(AssociatedConformanceWitness + 16))(v33, v32);
    return (*(a3 + 40))(v34, a2, a3);
  }
}

void (*MergeableProvider.unwrappedMergeableAttributes.modify(void *a1, uint64_t a2, uint64_t a3))(uint64_t **a1, char a2)
{
  v7 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(0x38uLL);
  }

  v9 = v8;
  *a1 = v8;
  v8[1] = a3;
  v8[2] = v3;
  *v8 = a2;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  v10 = sub_255750950();
  v9[3] = v10;
  v11 = *(v10 - 8);
  v9[4] = v11;
  v12 = *(v11 + 64);
  if (v7)
  {
    v9[5] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v9[5] = malloc(*(v11 + 64));
    v13 = malloc(v12);
  }

  v9[6] = v13;
  MergeableProvider.unwrappedMergeableAttributes.getter(a3, v13);
  return sub_25569C730;
}

void sub_25569C730(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[5];
  v4 = (*a1)[6];
  if (a2)
  {
    v5 = v2[3];
    v6 = v2[4];
    v7 = v2[1];
    v8 = *v2;
    (*(v6 + 16))((*a1)[5], v4, v5);
    MergeableProvider.unwrappedMergeableAttributes.setter(v3, v8, v7);
    (*(v6 + 8))(v4, v5);
  }

  else
  {
    MergeableProvider.unwrappedMergeableAttributes.setter((*a1)[6], *v2, v2[1]);
  }

  free(v4);
  free(v3);

  free(v2);
}

uint64_t sub_25569C838()
{
  v0 = sub_25574F2C0();
  __swift_allocate_value_buffer(v0, qword_27F7BE128);
  __swift_project_value_buffer(v0, qword_27F7BE128);
  return sub_25574F2B0();
}

uint64_t sub_25569C8B8()
{
  result = sub_255750180();
  qword_27F7BE140 = result;
  return result;
}

id static AppleAccountManager.statusChangedNotification.getter()
{
  if (qword_27F7BD6C8 != -1)
  {
    swift_once();
  }

  v1 = qword_27F7BE140;

  return v1;
}

uint64_t sub_25569C94C()
{
  type metadata accessor for AppleAccountManager();
  v0 = swift_allocObject();
  *(v0 + 16) = 4;
  v1 = [objc_opt_self() defaultCenter];
  v2 = *MEMORY[0x277CBBF00];

  [v1 addObserver:v0 selector:sel_updateAccountStatusCache name:v2 object:0];

  qword_27F7BE148 = v0;
  return result;
}

uint64_t static AppleAccountManager.shared.getter()
{
  if (qword_27F7BD6D0 != -1)
  {
    swift_once();
  }
}

uint64_t AppleAccountManager.AccountStatus.hashValue.getter()
{
  v1 = *v0;
  sub_255750F80();
  MEMORY[0x259C3EC60](v1);
  return sub_255750FD0();
}

uint64_t sub_25569CAE4@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = *(v1 + 16);
  return result;
}

uint64_t sub_25569CB28(char *a1)
{
  v2 = *a1;
  swift_beginAccess();
  *(v1 + 16) = v2;
  v3 = [objc_opt_self() defaultCenter];
  if (qword_27F7BD6C8 != -1)
  {
    swift_once();
  }

  v4 = qword_27F7BE140;
  if (*(v1 + 16) == 4)
  {
    v5 = 0;
  }

  else
  {
    v5 = sub_255750EF0();
  }

  [v3 postNotificationName:v4 object:v5];

  return swift_unknownObjectRelease();
}

uint64_t sub_25569CC1C(uint64_t a1)
{
  v2[5] = a1;
  v2[6] = v1;
  v2[7] = *v1;
  sub_2557504B0();
  v2[8] = sub_2557504A0();
  v4 = sub_255750490();
  v2[9] = v4;
  v2[10] = v3;

  return MEMORY[0x2822009F8](sub_25569CCDC, v4, v3);
}

uint64_t sub_25569CCDC()
{
  v1 = *(v0 + 48);
  swift_beginAccess();
  v2 = *(v1 + 16);
  if (v2 == 4)
  {
    v3 = swift_task_alloc();
    *(v0 + 88) = v3;
    *v3 = v0;
    v3[1] = sub_25569CDD8;

    return sub_25569D024(v0 + 96);
  }

  else
  {

    **(v0 + 40) = v2;
    v5 = *(v0 + 8);

    return v5();
  }
}

uint64_t sub_25569CDD8()
{
  v1 = *v0;

  v2 = *(v1 + 80);
  v3 = *(v1 + 72);

  return MEMORY[0x2822009F8](sub_25569CEF8, v3, v2);
}

uint64_t sub_25569CEF8()
{
  v1 = *(v0 + 48);

  v2 = *(v0 + 96);
  *(v1 + 16) = v2;
  v3 = [objc_opt_self() defaultCenter];
  if (qword_27F7BD6C8 != -1)
  {
    swift_once();
  }

  v4 = qword_27F7BE140;
  v5 = *(*(v0 + 48) + 16);
  if (v5 == 4)
  {
    v6 = 0;
  }

  else
  {
    *(v0 + 97) = v5;
    v6 = sub_255750EF0();
  }

  [v3 postNotificationName:v4 object:v6];
  swift_unknownObjectRelease();

  **(v0 + 40) = v2;
  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_25569D024(uint64_t a1)
{
  v1[27] = a1;
  sub_2557504B0();
  v1[28] = sub_2557504A0();
  v3 = sub_255750490();
  v1[29] = v3;
  v1[30] = v2;

  return MEMORY[0x2822009F8](sub_25569D0BC, v3, v2);
}

uint64_t sub_25569D0BC()
{
  if (qword_27F7BD6C0 != -1)
  {
    swift_once();
  }

  v1 = sub_25574F2C0();
  *(v0 + 248) = __swift_project_value_buffer(v1, qword_27F7BE128);
  v2 = sub_25574F2A0();
  v3 = sub_255750760();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_255661000, v2, v3, "Checking for provisioned Apple account.", v4, 2u);
    MEMORY[0x259C3F520](v4, -1, -1);
  }

  v5 = [objc_opt_self() defaultStore];
  *(v0 + 256) = v5;
  if (v5)
  {
    v6 = v5;
    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 208;
    *(v0 + 24) = sub_25569D36C;
    v7 = swift_continuation_init();
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE158, &unk_255755D20);
    *(v0 + 264) = v8;
    *(v0 + 200) = v8;
    *(v0 + 144) = MEMORY[0x277D85DD0];
    *(v0 + 152) = 1107296256;
    *(v0 + 160) = sub_25569E7F4;
    *(v0 + 168) = &block_descriptor_32;
    *(v0 + 176) = v7;
    [v6 aa:v0 + 144 primaryAppleAccountWithCompletion:?];

    return MEMORY[0x282200938](v0 + 16);
  }

  else
  {

    v9 = sub_25574F2A0();
    v10 = sub_255750760();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_255661000, v9, v10, "There is no account signed in.", v11, 2u);
      MEMORY[0x259C3F520](v11, -1, -1);
    }

    **(v0 + 216) = 0;
    v12 = *(v0 + 8);

    return v12();
  }
}

uint64_t sub_25569D36C()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 272) = v2;
  v3 = *(v1 + 240);
  v4 = *(v1 + 232);
  if (v2)
  {
    v5 = sub_25569DC5C;
  }

  else
  {
    v5 = sub_25569D49C;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_25569D49C()
{
  v1 = *(v0 + 208);
  *(v0 + 280) = v1;
  if (!v1)
  {

    v3 = sub_25574F2A0();
    v7 = sub_255750760();
    if (os_log_type_enabled(v3, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_255661000, v3, v7, "There is no account signed in.", v8, 2u);
      MEMORY[0x259C3F520](v8, -1, -1);
    }

    v6 = 0;
    goto LABEL_13;
  }

  v2 = *MEMORY[0x277CB89E0];
  *(v0 + 288) = *MEMORY[0x277CB89E0];
  if ([v1 isEnabledForDataclass_])
  {

    v3 = sub_25574F2A0();
    v4 = sub_255750760();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_255661000, v3, v4, "Signed in and dataclass is enabled.", v5, 2u);
      MEMORY[0x259C3F520](v5, -1, -1);
    }

    v6 = 2;
LABEL_13:

    **(v0 + 216) = v6;
    v11 = *(v0 + 8);

    return v11();
  }

  if ([v1 isProvisionedForDataclass_])
  {

    v3 = sub_25574F2A0();
    v9 = sub_255750760();
    if (os_log_type_enabled(v3, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_255661000, v3, v9, "Signed in and dataclass is provisioned.", v10, 2u);
      MEMORY[0x259C3F520](v10, -1, -1);
    }

    v6 = 1;
    goto LABEL_13;
  }

  v13 = sub_25574F2A0();
  v14 = sub_255750760();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_255661000, v13, v14, "(checkForProvisionedAppleAccount) There is primary account signed in", v15, 2u);
    MEMORY[0x259C3F520](v15, -1, -1);
  }

  v16 = *(v0 + 256);
  v17 = *(v0 + 264);

  v18 = v1;
  sub_2556EF7D8(MEMORY[0x277D84F90]);
  v19 = sub_255750070();
  *(v0 + 296) = v19;

  *(v0 + 80) = v0;
  *(v0 + 120) = v0 + 208;
  *(v0 + 88) = sub_25569D890;
  v20 = swift_continuation_init();
  *(v0 + 200) = v17;
  *(v0 + 144) = MEMORY[0x277D85DD0];
  *(v0 + 152) = 1107296256;
  *(v0 + 160) = sub_25569E7F4;
  *(v0 + 168) = &block_descriptor_35;
  *(v0 + 176) = v20;
  [v16 discoverPropertiesForAccount:v18 options:v19 completion:v0 + 144];

  return MEMORY[0x282200938](v0 + 80);
}

uint64_t sub_25569D890()
{
  v1 = *v0;
  v2 = *(*v0 + 112);
  *(*v0 + 304) = v2;
  v3 = *(v1 + 240);
  v4 = *(v1 + 232);
  if (v2)
  {
    v5 = sub_25569DD58;
  }

  else
  {
    v5 = sub_25569D9C0;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_25569D9C0()
{
  v1 = *(v0 + 296);
  v2 = *(v0 + 280);

  v3 = *(v0 + 208);

  if (!v3)
  {
    v4 = sub_25574F2A0();
    v9 = sub_255750760();
    if (os_log_type_enabled(v4, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_255661000, v4, v9, "Log and handle error. Device or account state does not permit refresh. Proceed as if offline", v10, 2u);
      MEMORY[0x259C3F520](v10, -1, -1);
    }

    v7 = *(v0 + 280);
    v3 = *(v0 + 256);
    goto LABEL_16;
  }

  if ([v3 isEnabledForDataclass_])
  {
    v4 = sub_25574F2A0();
    v5 = sub_255750760();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_255661000, v4, v5, "Dataclass is provisioned and enabled", v6, 2u);
      MEMORY[0x259C3F520](v6, -1, -1);
    }

    v7 = *(v0 + 280);

    v8 = 2;
    goto LABEL_17;
  }

  v11 = [v3 isProvisionedForDataclass_];
  v4 = sub_25574F2A0();
  v12 = sub_255750760();
  v13 = os_log_type_enabled(v4, v12);
  if ((v11 & 1) == 0)
  {
    if (v13)
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_255661000, v4, v12, "Dataclass is not provisioned and not enabled. This account is not capable of using Journal due to some restriction.", v15, 2u);
      MEMORY[0x259C3F520](v15, -1, -1);
    }

    v7 = *(v0 + 280);

LABEL_16:
    v8 = 3;
    goto LABEL_17;
  }

  if (v13)
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_255661000, v4, v12, "Dataclass is provisioned but not enabled", v14, 2u);
    MEMORY[0x259C3F520](v14, -1, -1);
  }

  v7 = *(v0 + 280);

  v8 = 1;
LABEL_17:

  **(v0 + 216) = v8;
  v16 = *(v0 + 8);

  return v16();
}

uint64_t sub_25569DC5C()
{
  v1 = *(v0 + 272);
  v2 = *(v0 + 256);

  swift_willThrow();

  v3 = sub_25574F2A0();
  v4 = sub_255750760();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_255661000, v3, v4, "There is no account signed in.", v5, 2u);
    MEMORY[0x259C3F520](v5, -1, -1);
  }

  **(v0 + 216) = 0;
  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_25569DD58()
{
  v1 = *(v0 + 296);
  v2 = *(v0 + 304);
  v3 = *(v0 + 280);

  swift_willThrow();

  v4 = sub_25574F2A0();
  v5 = sub_255750760();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_255661000, v4, v5, "Log and handle error. Device or account state does not permit refresh. Proceed as if offline", v6, 2u);
    MEMORY[0x259C3F520](v6, -1, -1);
  }

  v7 = *(v0 + 280);

  **(v0 + 216) = 3;
  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_25569DE74()
{
  v1 = v0;
  v2 = *v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE150, &qword_255755D00);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v11 - v4;
  v6 = sub_2557504D0();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  sub_2557504B0();

  v7 = sub_2557504A0();
  v8 = swift_allocObject();
  v9 = MEMORY[0x277D85700];
  v8[2] = v7;
  v8[3] = v9;
  v8[4] = v1;
  v8[5] = v2;
  sub_25569E3AC(0, 0, v5, &unk_255755D10, v8);
}

uint64_t sub_25569DFC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a4;
  v4[6] = sub_2557504B0();
  v4[7] = sub_2557504A0();
  v5 = swift_task_alloc();
  v4[8] = v5;
  *v5 = v4;
  v5[1] = sub_25569E078;

  return sub_25569D024((v4 + 9));
}

uint64_t sub_25569E078()
{

  v1 = sub_255750490();

  return MEMORY[0x2822009F8](sub_25569E1B4, v1, v0);
}

uint64_t sub_25569E1B4()
{
  v1 = *(v0 + 40);

  v2 = *(v0 + 72);
  swift_beginAccess();
  *(v1 + 16) = v2;
  v3 = [objc_opt_self() defaultCenter];
  if (qword_27F7BD6C8 != -1)
  {
    swift_once();
  }

  v4 = qword_27F7BE140;
  v5 = *(v1 + 16);
  if (v5 == 4)
  {
    v6 = 0;
  }

  else
  {
    *(v0 + 73) = v5;
    v6 = sub_255750EF0();
  }

  [v3 postNotificationName:v4 object:v6];
  swift_unknownObjectRelease();

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_25569E2EC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_25569FE90;

  return sub_25569DFC0(a1, v4, v5, v6);
}

uint64_t sub_25569E3AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE150, &qword_255755D00);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v25 - v10;
  sub_25569FC98(a3, v25 - v10);
  v12 = sub_2557504D0();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_255674B20(v11, &qword_27F7BE150, &qword_255755D00);
  }

  else
  {
    sub_2557504C0();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_255750490();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_2557501E0() + 32;
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

      sub_255674B20(a3, &qword_27F7BE150, &qword_255755D00);

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

  sub_255674B20(a3, &qword_27F7BE150, &qword_255755D00);
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

uint64_t sub_25569E7F4(uint64_t a1, void *a2, void *a3)
{
  v5 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE118, &qword_255755C80);
    v6 = swift_allocError();
    *v7 = a3;
    v8 = a3;

    return MEMORY[0x282200958](v5, v6);
  }

  else
  {
    **(*(v5 + 64) + 40) = a2;
    v9 = a2;

    return MEMORY[0x282200950](v5);
  }
}

uint64_t static AppleAccountManager.setDataclassEnabled(_:)(char a1)
{
  *(v1 + 281) = a1;
  sub_2557504B0();
  *(v1 + 216) = sub_2557504A0();
  v3 = sub_255750490();
  *(v1 + 224) = v3;
  *(v1 + 232) = v2;

  return MEMORY[0x2822009F8](sub_25569E974, v3, v2);
}

uint64_t sub_25569E974()
{
  v1 = [objc_opt_self() defaultStore];
  v0[30] = v1;
  if (v1)
  {
    v2 = v1;
    v0[2] = v0;
    v0[7] = v0 + 26;
    v0[3] = sub_25569EAF0;
    v3 = swift_continuation_init();
    v0[25] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE158, &unk_255755D20);
    v0[18] = MEMORY[0x277D85DD0];
    v0[19] = 1107296256;
    v0[20] = sub_25569E7F4;
    v0[21] = &block_descriptor;
    v0[22] = v3;
    [v2 aa:v0 + 18 primaryAppleAccountWithCompletion:?];

    return MEMORY[0x282200938](v0 + 2);
  }

  else
  {

    v4 = v0[1];

    return v4();
  }
}

uint64_t sub_25569EAF0()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 248) = v2;
  v3 = *(v1 + 232);
  v4 = *(v1 + 224);
  if (v2)
  {
    v5 = sub_25569F02C;
  }

  else
  {
    v5 = sub_25569EC20;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_25569EC20()
{
  v1 = *(v0 + 208);
  *(v0 + 256) = v1;
  if (v1)
  {
    v2 = *MEMORY[0x277CB89E0];
    [v1 setEnabled:*(v0 + 281) forDataclass:*MEMORY[0x277CB89E0]];
    *(v0 + 208) = MEMORY[0x277D84F98];
    v3 = [objc_opt_self() actionWithType_];
    if (v3)
    {
      sub_25569F3B0(v3, v2);
    }

    v4 = *(v0 + 240);
    type metadata accessor for Dataclass(0);
    sub_25569F9A4();
    sub_25569F9F0();
    v5 = v1;
    v6 = sub_255750070();
    *(v0 + 264) = v6;

    *(v0 + 80) = v0;
    *(v0 + 120) = v0 + 280;
    *(v0 + 88) = sub_25569EE78;
    v7 = swift_continuation_init();
    *(v0 + 200) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE168, &qword_255755D30);
    *(v0 + 144) = MEMORY[0x277D85DD0];
    *(v0 + 152) = 1107296256;
    *(v0 + 160) = sub_25569F6E8;
    *(v0 + 168) = &block_descriptor_5;
    *(v0 + 176) = v7;
    [v4 saveAccount:v5 withDataclassActions:v6 completion:v0 + 144];

    return MEMORY[0x282200938](v0 + 80);
  }

  else
  {

    v8 = *(v0 + 8);

    return v8();
  }
}

uint64_t sub_25569EE78()
{
  v1 = *v0;
  v2 = *(*v0 + 112);
  *(*v0 + 272) = v2;
  v3 = *(v1 + 232);
  v4 = *(v1 + 224);
  if (v2)
  {
    v5 = sub_25569F1E0;
  }

  else
  {
    v5 = sub_25569EFA8;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_25569EFA8()
{
  v2 = *(v0 + 256);
  v1 = *(v0 + 264);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_25569F02C()
{
  v1 = v0[30];

  swift_willThrow();

  v2 = v0[31];
  if (qword_27F7BD6C0 != -1)
  {
    swift_once();
  }

  v3 = sub_25574F2C0();
  __swift_project_value_buffer(v3, qword_27F7BE128);
  v4 = v2;
  v5 = sub_25574F2A0();
  v6 = sub_255750780();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v2;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_255661000, v5, v6, "Error in setDataclass: %@", v7, 0xCu);
    sub_255674B20(v8, &qword_27F7BEC80, &qword_255757E90);
    MEMORY[0x259C3F520](v8, -1, -1);
    MEMORY[0x259C3F520](v7, -1, -1);
  }

  else
  {
  }

  v11 = v0[1];

  return v11();
}

uint64_t sub_25569F1E0()
{
  v1 = v0[33];
  v2 = v0[32];
  v3 = v0[30];

  swift_willThrow();

  v4 = v0[34];
  if (qword_27F7BD6C0 != -1)
  {
    swift_once();
  }

  v5 = sub_25574F2C0();
  __swift_project_value_buffer(v5, qword_27F7BE128);
  v6 = v4;
  v7 = sub_25574F2A0();
  v8 = sub_255750780();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    v11 = v4;
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 4) = v12;
    *v10 = v12;
    _os_log_impl(&dword_255661000, v7, v8, "Error in setDataclass: %@", v9, 0xCu);
    sub_255674B20(v10, &qword_27F7BEC80, &qword_255757E90);
    MEMORY[0x259C3F520](v10, -1, -1);
    MEMORY[0x259C3F520](v9, -1, -1);
  }

  else
  {
  }

  v13 = v0[1];

  return v13();
}

void sub_25569F3B0(uint64_t a1, void *a2)
{
  v3 = v2;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v2;
    sub_255706FB0(a1, a2, isUniquelyReferenced_nonNull_native);

    *v2 = v12;
  }

  else
  {
    v6 = sub_255674870(a2);
    if (v7)
    {
      v8 = v6;
      v9 = swift_isUniquelyReferenced_nonNull_native();
      v10 = *v2;
      v13 = *v3;
      if (!v9)
      {
        sub_255742A5C();
        v10 = v13;
      }

      sub_2556C5E88(v8, v10);
      *v3 = v10;
    }

    else
    {
    }
  }
}

uint64_t sub_25569F4B4(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE178, &unk_255758110);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v16 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE180, &unk_255755E10);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v16 - v10;
  if ((*(v9 + 48))(a1, 1, v8) == 1)
  {
    sub_255674B20(a1, &qword_27F7BE178, &unk_255758110);
    sub_2556C5CD0(a2, v7);
    v12 = sub_25574F0D0();
    (*(*(v12 - 8) + 8))(a2, v12);
    return sub_255674B20(v7, &qword_27F7BE178, &unk_255758110);
  }

  else
  {
    (*(v9 + 32))(v11, a1, v8);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v2;
    sub_255707118(v11, a2, isUniquelyReferenced_nonNull_native);
    v15 = sub_25574F0D0();
    result = (*(*(v15 - 8) + 8))(a2, v15);
    *v2 = v17;
  }

  return result;
}

uint64_t sub_25569F6E8(uint64_t a1, char a2, void *a3)
{
  v5 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE118, &qword_255755C80);
    v6 = swift_allocError();
    *v7 = a3;
    v8 = a3;

    return MEMORY[0x282200958](v5, v6);
  }

  else
  {
    **(*(v5 + 64) + 40) = a2;

    return MEMORY[0x282200950](v5);
  }
}

uint64_t sub_25569F7B4(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_25569F8AC;

  return v6(a1);
}

uint64_t sub_25569F8AC()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

unint64_t sub_25569F9A4()
{
  result = qword_27F7BE160;
  if (!qword_27F7BE160)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F7BE160);
  }

  return result;
}

unint64_t sub_25569F9F0()
{
  result = qword_27F7BDB28;
  if (!qword_27F7BDB28)
  {
    type metadata accessor for Dataclass(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7BDB28);
  }

  return result;
}

unint64_t sub_25569FA4C()
{
  result = qword_27F7BE170;
  if (!qword_27F7BE170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7BE170);
  }

  return result;
}

uint64_t dispatch thunk of AppleAccountManager.getAccountStatus()(uint64_t a1)
{
  v6 = (*(*v1 + 112) + **(*v1 + 112));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_25568AFA0;

  return v6(a1);
}

uint64_t objectdestroyTm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_25569FC98(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE150, &qword_255755D00);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_25569FD08(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_25569FE90;

  return sub_25569F7B4(a1, v4);
}

uint64_t sub_25569FDC0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_25568AFA0;

  return sub_25569F7B4(a1, v4);
}

uint64_t NSManagedObjectModel.modelVersion.getter()
{
  v1 = [v0 versionIdentifiers];
  v2 = sub_255750580();

  sub_25569FF50(v2, v5);

  if (v6)
  {
    if (swift_dynamicCast())
    {
      return v4;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_25569FFD8(v5);
    return 0;
  }
}

uint64_t sub_25569FF50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_2557509B0();
  if (result == 1 << *(a1 + 32))
  {
    *(a2 + 32) = 0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  else
  {
    v5 = *(a1 + 36);

    return sub_2556A643C(result, v5, a1, a2);
  }

  return result;
}

uint64_t sub_25569FFD8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE190, &qword_255755E50);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t AppleAccountUIFeature.isEnabled.getter()
{
  v2[3] = &type metadata for AppleAccountUIFeature;
  v2[4] = sub_2556A00A4();
  v0 = sub_25574F1E0();
  __swift_destroy_boxed_opaque_existential_1(v2);
  return v0 & 1;
}

unint64_t sub_2556A00A4()
{
  result = qword_27F7BE1A0;
  if (!qword_27F7BE1A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7BE1A0);
  }

  return result;
}

uint64_t AppleAccountUIFeature.hashValue.getter()
{
  sub_255750F80();
  MEMORY[0x259C3EC60](0);
  return sub_255750FD0();
}

unint64_t sub_2556A0184()
{
  result = qword_27F7BE1A8;
  if (!qword_27F7BE1A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7BE1A8);
  }

  return result;
}

uint64_t sub_2556A0210@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v21[1] = a4;
  v23 = *MEMORY[0x277D85DE8];
  v7 = sub_255750010();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_255750050();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_255750040();
  v22[0] = sub_25574F0A0();
  v22[1] = v15;
  MEMORY[0x259C3DCF0](v22, &v23);
  v16 = sub_2556A04B8(a1, a2);
  v18 = v17;
  sub_2556A1108(v16, v17, v14);
  sub_2556755A8(v16, v18);
  sub_255750030();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE1B0, &qword_255755F30);
  sub_255750000();
  (*(v8 + 8))(v10, v7);
  sub_25574F090();
  v19 = sub_25574F0D0();
  (*(*(v19 - 8) + 8))(a3, v19);
  return (*(v12 + 8))(v14, v11);
}

uint64_t sub_2556A04B8(uint64_t a1, unint64_t a2)
{
  v45 = *MEMORY[0x277D85DE8];
  v39[0] = a1;
  v39[1] = a2;
  *&v42 = a1;
  *(&v42 + 1) = a2;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE1C0, &qword_255755F38);
  if (swift_dynamicCast())
  {
    sub_2556A15CC(__src, &v43);
    __swift_project_boxed_opaque_existential_1(&v43, v44);
    sub_25574ED20();
    __src[0] = v42;
    __swift_destroy_boxed_opaque_existential_1(&v43);
    goto LABEL_63;
  }

  v41 = 0;
  memset(__src, 0, sizeof(__src));
  sub_2556A1390(__src);
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_67;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
    *&__src[0] = a1;
    *(&__src[0] + 1) = a2 & 0xFFFFFFFFFFFFFFLL;
    v4 = __src;
  }

  else if ((a1 & 0x1000000000000000) != 0)
  {
    v4 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  else
  {
    v4 = sub_255750BA0();
  }

  sub_2556A0A1C(&v43, v4, v5);
  v6 = *(&v43 + 1);
  v7 = v43;
  if (*(&v43 + 1) >> 60 != 15)
  {
    __src[0] = v43;
    goto LABEL_63;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v8 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v8 = a1 & 0xFFFFFFFFFFFFLL;
  }

LABEL_12:
  *&__src[0] = sub_2556A14B0(v8);
  *(&__src[0] + 1) = v9;
  MEMORY[0x28223BE20](*&__src[0]);
  v34[2] = v39;
  v10 = sub_2556A0AE4(sub_2556A1550, v34);
  v14 = v10;
  v15 = v11;
  v16 = v12;
  v17 = *(&__src[0] + 1) >> 62;
  if ((*(&__src[0] + 1) >> 62) > 1)
  {
    if (v17 == 2)
    {
      v19 = *(*&__src[0] + 16);
      v18 = *(*&__src[0] + 24);
      v20 = __OFSUB__(v18, v19);
      v21 = v18 - v19;
      if (v20)
      {
        goto LABEL_70;
      }

      if (v13 != v21)
      {
        goto LABEL_23;
      }
    }

    else if (v13)
    {
      v22 = 0;
      goto LABEL_60;
    }
  }

  else if (v17)
  {
    if (__OFSUB__(DWORD1(__src[0]), __src[0]))
    {
      goto LABEL_71;
    }

    if (v13 != DWORD1(__src[0]) - LODWORD(__src[0]))
    {
LABEL_23:
      if (v17 == 2)
      {
        v22 = *(*&__src[0] + 24);
      }

      else if (v17 == 1)
      {
        v22 = *&__src[0] >> 32;
      }

      else
      {
        v22 = BYTE14(__src[0]);
      }

LABEL_60:
      if (v22 >= v13)
      {
        sub_25574EF60();
LABEL_62:

        goto LABEL_63;
      }

      __break(1u);
LABEL_70:
      __break(1u);
LABEL_71:
      __break(1u);
    }
  }

  else if (v13 != BYTE14(__src[0]))
  {
    goto LABEL_23;
  }

  v36 = v7;
  if ((v11 & 0x2000000000000000) != 0)
  {
    v23 = HIBYTE(v11) & 0xF;
  }

  else
  {
    v23 = v10 & 0xFFFFFFFFFFFFLL;
  }

  *(&v42 + 7) = 0;
  *&v42 = 0;
  if (4 * v23 == v12 >> 14)
  {
    goto LABEL_57;
  }

  v35 = v6;
  LOBYTE(v24) = 0;
  v25 = (v10 >> 59) & 1;
  if ((v11 & 0x1000000000000000) == 0)
  {
    LOBYTE(v25) = 1;
  }

  v26 = 4 << v25;
  v37 = (v11 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v38 = v11 & 0xFFFFFFFFFFFFFFLL;
  do
  {
    v27 = v16 & 0xC;
    v28 = v16;
    if (v27 == v26)
    {
      v28 = sub_2556A103C(v16, v14, v15);
    }

    v29 = v28 >> 16;
    if (v28 >> 16 >= v23)
    {
      __break(1u);
LABEL_65:
      __break(1u);
LABEL_66:
      __break(1u);
LABEL_67:
      v8 = sub_255750210();
      v7 = 0;
      v6 = 0xF000000000000000;
      goto LABEL_12;
    }

    if ((v15 & 0x1000000000000000) != 0)
    {
      v31 = sub_255750240();
      if (v27 != v26)
      {
        goto LABEL_46;
      }
    }

    else if ((v15 & 0x2000000000000000) != 0)
    {
      *&v43 = v14;
      *(&v43 + 1) = v38;
      v31 = *(&v43 + v29);
      if (v27 != v26)
      {
        goto LABEL_46;
      }
    }

    else
    {
      v30 = v37;
      if ((v14 & 0x1000000000000000) == 0)
      {
        v30 = sub_255750BA0();
      }

      v31 = *(v30 + v29);
      if (v27 != v26)
      {
LABEL_46:
        if ((v15 & 0x1000000000000000) == 0)
        {
          goto LABEL_47;
        }

        goto LABEL_50;
      }
    }

    v16 = sub_2556A103C(v16, v14, v15);
    if ((v15 & 0x1000000000000000) == 0)
    {
LABEL_47:
      v16 = (v16 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_52;
    }

LABEL_50:
    if (v23 <= v16 >> 16)
    {
      goto LABEL_66;
    }

    v16 = sub_255750220();
LABEL_52:
    *(&v42 + v24) = v31;
    v24 = v24 + 1;
    if ((v24 >> 8))
    {
      goto LABEL_65;
    }

    if (v24 == 14)
    {
      *&v43 = v42;
      *(&v43 + 6) = *(&v42 + 6);
      sub_25574EF70();
      LOBYTE(v24) = 0;
    }
  }

  while (4 * v23 != v16 >> 14);
  v6 = v35;
  if (v24)
  {
    *&v43 = v42;
    *(&v43 + 6) = *(&v42 + 6);
    sub_25574EF70();
    sub_2556A15B8(v36, v6);
    goto LABEL_62;
  }

LABEL_57:

  sub_2556A15B8(v36, v6);
LABEL_63:
  v32 = __src[0];
  sub_255674F54(*&__src[0], *(&__src[0] + 1));

  sub_2556755A8(v32, *(&v32 + 1));
  return v32;
}

uint64_t sub_2556A09C8@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 4) = *(result + 4);
  *(a2 + 6) = *(result + 6) & 0xF | 0x50;
  *(a2 + 7) = *(result + 7);
  *(a2 + 8) = *(result + 8) & 0x3F | 0x80;
  *(a2 + 9) = *(result + 9);
  *(a2 + 13) = *(result + 13);
  *(a2 + 15) = *(result + 15);
  return result;
}

uint64_t *sub_2556A0A1C@<X0>(uint64_t *__return_ptr a1@<X8>, _BYTE *__src@<X0>, unint64_t a3@<X1>)
{
  result = 0;
  v6 = 0xC000000000000000;
  if (__src && a3)
  {
    if (a3 <= 14)
    {
      result = sub_2556A13F8(__src, &__src[a3]);
      v6 = v9 & 0xFFFFFFFFFFFFFFLL;
    }

    else
    {
      sub_25574ECA0();
      swift_allocObject();
      v8 = sub_25574EC40();
      if (a3 >= 0x7FFFFFFF)
      {
        sub_25574EF50();
        result = swift_allocObject();
        result[2] = 0;
        result[3] = a3;
        v6 = v8 | 0x8000000000000000;
      }

      else
      {
        result = (a3 << 32);
        v6 = v8 | 0x4000000000000000;
      }
    }
  }

  *a1 = result;
  a1[1] = v6;
  return result;
}

char *sub_2556A0AE4(void *(*a1)(uint64_t *__return_ptr, char *, char *), uint64_t a2)
{
  v4 = v2;
  v19[2] = *MEMORY[0x277D85DE8];
  v7 = *v2;
  v6 = v2[1];
  v8 = v6 >> 62;
  if ((v6 >> 62) <= 1)
  {
    if (!v8)
    {
      sub_2556755A8(v7, v6);
      v19[0] = v7;
      LOWORD(v19[1]) = v6;
      BYTE2(v19[1]) = BYTE2(v6);
      BYTE3(v19[1]) = BYTE3(v6);
      BYTE4(v19[1]) = BYTE4(v6);
      BYTE5(v19[1]) = BYTE5(v6);
      BYTE6(v19[1]) = BYTE6(v6);
      result = a1(&v17, v19, v19 + BYTE6(v6));
      if (!v3)
      {
        result = v17;
      }

      v10 = LODWORD(v19[1]) | ((WORD2(v19[1]) | (BYTE6(v19[1]) << 16)) << 32);
      *v4 = v19[0];
      v4[1] = v10;
      return result;
    }

    v12 = v6 & 0x3FFFFFFFFFFFFFFFLL;

    sub_2556755A8(v7, v6);
    *v4 = xmmword_255755F20;
    sub_2556755A8(0, 0xC000000000000000);
    v13 = v7 >> 32;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      if (v13 < v7)
      {
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      if (sub_25574EC50() && __OFSUB__(v7, sub_25574EC80()))
      {
LABEL_26:
        __break(1u);
      }

      sub_25574ECA0();
      swift_allocObject();
      v14 = sub_25574EC30();

      v12 = v14;
    }

    if (v13 >= v7)
    {

      v15 = sub_2556A0F88(v7, v7 >> 32, a1);

      v11 = v12 | 0x4000000000000000;
      if (!v3)
      {
        *v4 = v7;
        v4[1] = v11;
        return v15;
      }

      *v4 = v7;
      goto LABEL_21;
    }

    __break(1u);
    goto LABEL_25;
  }

  if (v8 == 2)
  {

    sub_2556755A8(v7, v6);
    v17 = v7;
    v18 = v6 & 0x3FFFFFFFFFFFFFFFLL;
    *v4 = xmmword_255755F20;
    sub_2556755A8(0, 0xC000000000000000);
    sub_25574EF20();
    result = sub_2556A0F88(*(v17 + 2), *(v17 + 3), a1);
    v11 = v18 | 0x8000000000000000;
    if (!v3)
    {
      *v4 = v17;
      v4[1] = v11;
      return result;
    }

    *v4 = v17;
LABEL_21:
    v4[1] = v11;
    return result;
  }

  memset(v19, 0, 15);
  result = a1(&v17, v19, v19);
  if (!v3)
  {
    return v17;
  }

  return result;
}

_BYTE *sub_2556A0E88@<X0>(_BYTE *result@<X0>, _BYTE *a2@<X1>, void *a3@<X8>)
{
  if (!result)
  {
    goto LABEL_4;
  }

  v3 = a2 - result;
  if (a2 == result)
  {
    result = 0;
LABEL_4:
    *a3 = result;
    a3[1] = 0xC000000000000000;
    return result;
  }

  if (v3 <= 14)
  {
    result = sub_2556A13F8(result, a2);
    v8 = a3;
    v6 = v9 & 0xFFFFFFFFFFFFFFLL;
  }

  else
  {
    if (v3 >= 0x7FFFFFFF)
    {
      result = sub_2556A15E4(result, a2);
      v6 = v10 | 0x8000000000000000;
    }

    else
    {
      result = sub_2556A1660(result, a2);
      v6 = v5 | 0x4000000000000000;
    }

    v8 = a3;
  }

  *v8 = result;
  v8[1] = v6;
  return result;
}

void *sub_2556A0F1C(void *(*a1)(uint64_t *__return_ptr, uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    result = a1(&v6, a3, a4 - a3);
    if (!v4)
    {
      return v6;
    }
  }

  else
  {
    result = (a1)(&v6, 0, 0, 0, a4);
    if (!v4)
    {
      return v6;
    }
  }

  __break(1u);
  return result;
}

char *sub_2556A0F88(uint64_t a1, uint64_t a2, void *(*a3)(uint64_t *__return_ptr, char *, char *))
{
  result = sub_25574EC50();
  if (!result)
  {
    goto LABEL_12;
  }

  v8 = result;
  result = sub_25574EC80();
  v9 = a1 - result;
  if (__OFSUB__(a1, result))
  {
    __break(1u);
    goto LABEL_11;
  }

  v10 = __OFSUB__(a2, a1);
  v11 = a2 - a1;
  if (v10)
  {
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  v12 = sub_25574EC70();
  if (v12 >= v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = v12;
  }

  result = a3(&v14, &v8[v9], &v8[v9 + v13]);
  if (!v3)
  {
    return v14;
  }

  return result;
}

unint64_t sub_2556A103C(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_255750270();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = MEMORY[0x259C3DF00](15, a1 >> 16);
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

uint64_t sub_2556A10B8@<X0>(uint64_t result@<X0>, void *a4@<X8>)
{
  if (result)
  {
    result = sub_255750B10();
    if ((v5 & 1) == 0)
    {
      *a4 = 0;
      a4[1] = 0xE000000000000000;
      a4[2] = 15;
      a4[3] = result;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_2556A1108(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v3 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v3)
    {
      sub_255750050();
      sub_2556A1338();
      return sub_25574FFF0();
    }

    v5 = a1;
    v6 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

    return sub_2556A1288(v5, v6);
  }

  if (v3 == 2)
  {
    v5 = *(a1 + 16);
    v6 = *(a1 + 24);
    return sub_2556A1288(v5, v6);
  }

  sub_255750050();
  sub_2556A1338();
  return sub_25574FFF0();
}

uint64_t sub_2556A1288(uint64_t a1, uint64_t a2)
{
  result = sub_25574EC50();
  if (!result || (result = sub_25574EC80(), !__OFSUB__(a1, result)))
  {
    if (!__OFSUB__(a2, a1))
    {
      sub_25574EC70();
      sub_255750050();
      sub_2556A1338();
      return sub_25574FFF0();
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_2556A1338()
{
  result = qword_27F7BE1B8;
  if (!qword_27F7BE1B8)
  {
    sub_255750050();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7BE1B8);
  }

  return result;
}

uint64_t sub_2556A1390(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE1C8, &unk_255755F40);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2556A13F8(_BYTE *__src, _BYTE *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = a2 - __src;
  if (__src)
  {
    v3 = a2 - __src;
  }

  else
  {
    v3 = 0;
  }

  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_11:
    __break(1u);
  }

  if (v3 > 0xFF)
  {
    goto LABEL_11;
  }

  result = 0;
  __dst = 0;
  v9 = v3;
  v8 = 0;
  v7 = 0;
  if (__src)
  {
    if (a2 != __src)
    {
      memcpy(&__dst, __src, v2);
      return __dst;
    }
  }

  return result;
}

uint64_t sub_2556A14B0(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (result <= 14)
    {
      if (result < 0)
      {
        __break(1u);
      }

      else
      {
        return 0;
      }
    }

    else
    {
      sub_25574ECA0();
      swift_allocObject();
      sub_25574EC60();
      if (v1 >= 0x7FFFFFFF)
      {
        sub_25574EF50();
        result = swift_allocObject();
        *(result + 16) = 0;
        *(result + 24) = v1;
      }

      else
      {
        return v1 << 32;
      }
    }
  }

  return result;
}

void *sub_2556A1550@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *(v3 + 16);
  v7 = *v5;
  v6 = v5[1];
  v13[0] = v7;
  v13[1] = v6;
  v12[2] = v13;
  result = sub_2556A0F1C(sub_2556A16E4, v12, a1, a2);
  *a3 = result;
  a3[1] = v9;
  a3[2] = v10;
  a3[3] = v11;
  return result;
}

uint64_t sub_2556A15B8(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_2556755A8(result, a2);
  }

  return result;
}

uint64_t sub_2556A15CC(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_2556A15E4(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  sub_25574ECA0();
  swift_allocObject();
  result = sub_25574EC40();
  if (v2 < 0)
  {
    __break(1u);
  }

  else
  {
    sub_25574EF50();
    result = swift_allocObject();
    *(result + 16) = 0;
    *(result + 24) = v2;
  }

  return result;
}

uint64_t sub_2556A1660(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  sub_25574ECA0();
  swift_allocObject();
  result = sub_25574EC40();
  if (v2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v2 > 0x7FFFFFFF)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if ((v2 & 0x8000000000000000) == 0)
  {
    return v2 << 32;
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t JournalEntryAssetMO.assetMetaData.getter()
{
  v1 = sub_25574EF40();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = (&v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = sub_255750180();
  [v0 willAccessValueForKey_];

  v6 = sub_255750180();
  v7 = [v0 primitiveValueForKey_];

  if (!v7)
  {
    v19 = 0u;
    v20 = 0u;
    sub_2556A1A70(&v19);
    goto LABEL_9;
  }

  sub_255750980();
  swift_unknownObjectRelease();
  v18[0] = v19;
  v18[1] = v20;
  sub_255669A88(0, &qword_27F7BE1D0, 0x277CBEB28);
  if ((swift_dynamicCast() & 1) == 0)
  {
    sub_255669A88(0, &qword_27F7BE1D8, 0x277CBEA90);
    if (swift_dynamicCast())
    {
      v10 = v17;
      v11 = [v17 bytes];
      v12 = [v10 length];
      v13 = swift_allocObject();
      *(v13 + 16) = v10;
      *v4 = nullsub_1;
      v4[1] = v13;
      (*(v2 + 104))(v4, *MEMORY[0x277CC92B8], v1);
      v9 = sub_2556A1D78(v11, v12, v4);
      goto LABEL_7;
    }

    __swift_destroy_boxed_opaque_existential_1(v18);
LABEL_9:
    v9 = 0;
    goto LABEL_10;
  }

  v8 = v17;
  v9 = sub_25574EF90();

LABEL_7:
  __swift_destroy_boxed_opaque_existential_1(v18);
LABEL_10:
  v14 = sub_255750180();
  [v0 didAccessValueForKey_];

  return v9;
}

uint64_t sub_2556A1A70(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE250, &qword_255756600);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t JournalEntryAssetMO.assetMetaData.setter(uint64_t a1, unint64_t a2)
{
  sub_2556A1FB0(a1, a2);

  return sub_2556A15B8(a1, a2);
}

void sub_2556A1BB4(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 assetMetaData];
  if (v3)
  {
    v4 = v3;
    v5 = sub_25574EF90();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0xF000000000000000;
  }

  *a2 = v5;
  a2[1] = v7;
}

void sub_2556A1C1C(void *a1, void **a2)
{
  v2 = *a2;
  if (a1[1] >> 60 == 15)
  {
    v3 = 0;
  }

  else
  {
    v3 = sub_25574EF80();
  }

  v4 = v3;
  [v2 setAssetMetaData_];
}

uint64_t sub_2556A1C94(uint64_t result, uint64_t a2)
{
  if (!a2)
  {

    return 0;
  }

  if (a2 > 14)
  {
    if (a2 < 0x7FFFFFFF)
    {
      return a2 << 32;
    }

    sub_25574EF50();
    result = swift_allocObject();
    *(result + 16) = 0;
    *(result + 24) = a2;
    return result;
  }

  if (a2 < 0)
  {
    __break(1u);
    goto LABEL_19;
  }

  v3 = sub_25574EC50();
  if (v3)
  {
    result = sub_25574EC80();
    if (!__OFSUB__(0, result))
    {
      v3 -= result;
      goto LABEL_10;
    }

LABEL_19:
    __break(1u);
    return result;
  }

LABEL_10:
  v4 = sub_25574EC70();
  if (v4 >= a2)
  {
    v5 = a2;
  }

  else
  {
    v5 = v4;
  }

  v6 = &v3[v5];
  if (v3)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = sub_2556A13F8(v3, v7);

  return v8;
}

uint64_t sub_2556A1D78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_25574EF40();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v16[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_25574EF30();
  if (a2)
  {
    sub_25574ECA0();
    swift_allocObject();

    v10 = sub_25574EC30();
    (*(v7 + 16))(v9, a3, v6);
    if ((*(v7 + 88))(v9, v6) == *MEMORY[0x277CC92A8])
    {
      v11 = sub_25574EC90();
      *v12 |= 0x8000000000000000;
      v11(v16, 0);
    }

    else
    {
      (*(v7 + 8))(v9, v6);
    }

    v14 = sub_2556A1C94(v10, a2);
  }

  else
  {
    v13 = sub_25574EF30();
    v13(a1, 0);

    v14 = 0;
  }

  (*(v7 + 8))(a3, v6);
  return v14;
}

void sub_2556A1FB0(uint64_t a1, unint64_t a2)
{
  v5 = sub_255750180();
  [v2 willChangeValueForKey_];

  if (a2 >> 60 == 15)
  {
    v6 = 0;
  }

  else
  {
    sub_255674F54(a1, a2);
    v6 = sub_25574EF80();
    sub_2556A15B8(a1, a2);
  }

  v7 = sub_255750180();
  [v2 setPrimitiveValue:v6 forKey:v7];
  swift_unknownObjectRelease();

  v8 = sub_255750180();
  [v2 didChangeValueForKey_];
}

uint64_t ReflectionAssetMetadata.prompt.getter()
{
  v1 = *(v0 + 16);
  sub_25567625C(v1, *(v0 + 24));
  return v1;
}

uint64_t ReflectionAssetMetadata.colorLight.getter()
{
  v1 = *(v0 + 32);
  sub_25567625C(v1, *(v0 + 40));
  return v1;
}

uint64_t ReflectionAssetMetadata.colorDark.getter()
{
  v1 = *(v0 + 48);
  sub_25567625C(v1, *(v0 + 56));
  return v1;
}

uint64_t ReflectionAssetMetadata.init(type:prompt:colorLight:colorDark:)@<X0>(uint64_t result@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  *a9 = result;
  *(a9 + 8) = a2 & 1;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;
  *(a9 + 56) = a8;
  return result;
}

uint64_t sub_2556A21AC()
{
  v1 = 1701869940;
  v2 = 0x67694C726F6C6F63;
  if (*v0 != 2)
  {
    v2 = 0x726144726F6C6F63;
  }

  if (*v0)
  {
    v1 = 0x74706D6F7270;
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

uint64_t sub_2556A2224@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_2556A2C84(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_2556A224C(uint64_t a1)
{
  v2 = sub_2556A253C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2556A2288(uint64_t a1)
{
  v2 = sub_2556A253C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ReflectionAssetMetadata.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE1E0, &qword_255755F50);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v15 - v5;
  v7 = v1[2];
  v20 = v1[3];
  v21 = v7;
  v8 = v1[4];
  v18 = v1[5];
  v19 = v8;
  v9 = v1[6];
  v16 = v1[7];
  v17 = v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2556A253C();
  sub_255750FF0();
  LOBYTE(v23) = 0;
  v10 = v22;
  sub_255750DE0();
  if (!v10)
  {
    v11 = v18;
    v12 = v19;
    v13 = v17;
    v23 = v21;
    v24 = v20;
    v25 = 1;
    sub_25567625C(v21, v20);
    sub_255687198();
    sub_255750DF0();
    sub_2556A15B8(v23, v24);
    v23 = v12;
    v24 = v11;
    v25 = 2;
    sub_25567625C(v12, v11);
    sub_255750DF0();
    sub_2556A15B8(v23, v24);
    v23 = v13;
    v24 = v16;
    v25 = 3;
    sub_25567625C(v13, v16);
    sub_255750DF0();
    sub_2556A15B8(v23, v24);
  }

  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_2556A253C()
{
  result = qword_27F7BE1E8;
  if (!qword_27F7BE1E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7BE1E8);
  }

  return result;
}

uint64_t ReflectionAssetMetadata.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE1F0, &qword_255755F58);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v22 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2556A253C();
  sub_255750FE0();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v31) = 0;
  v27 = sub_255750D30();
  v40 = v9 & 1;
  LOBYTE(v28[0]) = 1;
  sub_255675208();
  sub_255750D40();
  v11 = v31;
  v10 = v32;
  LOBYTE(v28[0]) = 2;
  sub_255750D40();
  *&v26 = v11;
  *(&v26 + 1) = v10;
  v12 = v32;
  v25 = v31;
  v41 = 3;
  sub_255750D40();
  (*(v6 + 8))(v8, v5);
  v23 = *(&v39 + 1);
  v24 = v39;
  v13 = v12;
  v14 = *(&v26 + 1);
  v15 = v27;
  *&v28[0] = v27;
  v16 = v40;
  BYTE8(v28[0]) = v40;
  v17 = v26;
  v28[1] = v26;
  v18 = v25;
  *&v29 = v25;
  *(&v29 + 1) = v13;
  v30 = v39;
  v19 = v26;
  *a2 = v28[0];
  a2[1] = v19;
  v20 = v30;
  a2[2] = v29;
  a2[3] = v20;
  sub_2556A28D8(v28, &v31);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v31 = v15;
  LOBYTE(v32) = v16;
  v33 = v17;
  v34 = v14;
  v35 = v18;
  v36 = v13;
  v37 = v24;
  v38 = v23;
  return sub_2556A2910(&v31);
}

unint64_t sub_2556A2940(uint64_t a1)
{
  *(a1 + 8) = sub_2556A2970();
  result = sub_2556A29C4();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_2556A2970()
{
  result = qword_27F7BE1F8;
  if (!qword_27F7BE1F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7BE1F8);
  }

  return result;
}

unint64_t sub_2556A29C4()
{
  result = qword_27F7BE200;
  if (!qword_27F7BE200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7BE200);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataV15_RepresentationO(uint64_t a1)
{
  v1 = *(a1 + 8) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataVSg(uint64_t a1)
{
  v1 = *(a1 + 8) >> 60;
  if (((4 * v1) & 0xC) != 0)
  {
    return 16 - ((4 * v1) & 0xC | (v1 >> 2));
  }

  else
  {
    return 0;
  }
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

uint64_t sub_2556A2AA0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xC && *(a1 + 64))
  {
    return (*a1 + 12);
  }

  v3 = *(a1 + 24) >> 60;
  if (((4 * v3) & 0xC) != 0)
  {
    v4 = 14 - ((4 * v3) & 0xC | (v3 >> 2));
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_2556A2AFC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xB)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 12;
    if (a3 >= 0xC)
    {
      *(result + 64) = 1;
    }
  }

  else
  {
    if (a3 >= 0xC)
    {
      *(result + 64) = 0;
    }

    if (a2)
    {
      *(result + 16) = 0;
      *(result + 24) = ((4 * (a2 ^ 0xF)) | ((a2 ^ 0xF) >> 2)) << 60;
    }
  }

  return result;
}

unint64_t sub_2556A2B80()
{
  result = qword_27F7BE208;
  if (!qword_27F7BE208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7BE208);
  }

  return result;
}

unint64_t sub_2556A2BD8()
{
  result = qword_27F7BE210;
  if (!qword_27F7BE210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7BE210);
  }

  return result;
}

unint64_t sub_2556A2C30()
{
  result = qword_27F7BE218;
  if (!qword_27F7BE218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7BE218);
  }

  return result;
}

uint64_t sub_2556A2C84(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701869940 && a2 == 0xE400000000000000;
  if (v3 || (sub_255750EB0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x74706D6F7270 && a2 == 0xE600000000000000 || (sub_255750EB0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x67694C726F6C6F63 && a2 == 0xEA00000000007468 || (sub_255750EB0() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x726144726F6C6F63 && a2 == 0xE90000000000006BLL)
  {

    return 3;
  }

  else
  {
    v6 = sub_255750EB0();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

JournalShared::TokenTypeIdentifier_optional __swiftcall TokenTypeIdentifier.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_255750CD0();

  v5 = 14;
  if (v3 < 0xE)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t TokenTypeIdentifier.rawValue.getter()
{
  result = 0xD000000000000022;
  switch(*v0)
  {
    case 1:
    case 9:
    case 0xD:
      result = 0xD000000000000020;
      break;
    case 2:
      result = 0xD000000000000027;
      break;
    case 3:
    case 4:
    case 5:
    case 6:
    case 7:
      result = 0xD00000000000001DLL;
      break;
    case 8:
      result = 0xD000000000000024;
      break;
    case 0xA:
      result = 0xD000000000000022;
      break;
    case 0xB:
      result = 0xD000000000000023;
      break;
    case 0xC:
      result = 0xD00000000000001FLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_2556A2F94()
{
  v0 = TokenTypeIdentifier.rawValue.getter();
  v2 = v1;
  if (v0 == TokenTypeIdentifier.rawValue.getter() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_255750EB0();
  }

  return v5 & 1;
}

unint64_t sub_2556A3034()
{
  result = qword_27F7BE220;
  if (!qword_27F7BE220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7BE220);
  }

  return result;
}

uint64_t sub_2556A3088()
{
  sub_255750F80();
  TokenTypeIdentifier.rawValue.getter();
  sub_2557501F0();

  return sub_255750FD0();
}

uint64_t sub_2556A30F0(uint64_t a1)
{
  TokenTypeIdentifier.rawValue.getter();
  sub_2557501F0();
}

uint64_t sub_2556A3154(uint64_t a1)
{
  sub_255750F80();
  TokenTypeIdentifier.rawValue.getter();
  sub_2557501F0();

  return sub_255750FD0();
}

unint64_t sub_2556A31C4@<X0>(unint64_t *a1@<X8>)
{
  result = TokenTypeIdentifier.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for TokenTypeIdentifier(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF3)
  {
    goto LABEL_17;
  }

  if (a2 + 13 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 13) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 13;
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

      return (*a1 | (v4 << 8)) - 13;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 13;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xE;
  v8 = v6 - 14;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

JournalShared::EntriesSortOrder_optional __swiftcall EntriesSortOrder.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_255750CD0();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t EntriesSortOrder.rawValue.getter()
{
  if (*v0)
  {
    return 0x6144746E656D6F6DLL;
  }

  else
  {
    return 0x7461447972746E65;
  }
}

uint64_t sub_2556A3334(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x6144746E656D6F6DLL;
  }

  else
  {
    v3 = 0x7461447972746E65;
  }

  if (v2)
  {
    v4 = 0xE900000000000065;
  }

  else
  {
    v4 = 0xEA00000000006574;
  }

  if (*a2)
  {
    v5 = 0x6144746E656D6F6DLL;
  }

  else
  {
    v5 = 0x7461447972746E65;
  }

  if (*a2)
  {
    v6 = 0xEA00000000006574;
  }

  else
  {
    v6 = 0xE900000000000065;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_255750EB0();
  }

  return v8 & 1;
}

uint64_t sub_2556A33E4()
{
  sub_255750F80();
  sub_2557501F0();

  return sub_255750FD0();
}

uint64_t sub_2556A3470(uint64_t a1)
{
  sub_2557501F0();
}

uint64_t sub_2556A34E8(uint64_t a1)
{
  sub_255750F80();
  sub_2557501F0();

  return sub_255750FD0();
}

uint64_t sub_2556A3570@<X0>(char *a2@<X8>)
{
  v3 = sub_255750CD0();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

void sub_2556A35D0(uint64_t *a1@<X8>)
{
  v2 = 0x7461447972746E65;
  if (*v1)
  {
    v2 = 0x6144746E656D6F6DLL;
  }

  v3 = 0xE900000000000065;
  if (*v1)
  {
    v3 = 0xEA00000000006574;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_2556A36F8@<X0>(id *a1@<X0>, SEL *a2@<X3>, uint64_t a3@<X8>)
{
  v4 = [*a1 *a2];
  if (v4)
  {
    v5 = v4;
    sub_25574EFF0();

    v6 = 0;
  }

  else
  {
    v6 = 1;
  }

  v7 = sub_25574F020();
  v8 = *(*(v7 - 8) + 56);

  return v8(a3, v6, 1, v7);
}

void sub_2556A37A4(uint64_t a1, void **a2, uint64_t a3, uint64_t a4, SEL *a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEB40, &unk_255754E40);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v15 - v9;
  sub_2556700F4(a1, &v15 - v9);
  v11 = *a2;
  v12 = sub_25574F020();
  v13 = *(v12 - 8);
  v14 = 0;
  if ((*(v13 + 48))(v10, 1, v12) != 1)
  {
    v14 = sub_25574EFC0();
    (*(v13 + 8))(v10, v12);
  }

  [v11 *a5];
}

void sub_2556A3918(unsigned __int8 *a1)
{
  v3 = [objc_opt_self() standardUserDefaults];
  v1 = sub_255750180();

  v2 = sub_255750180();
  [v3 setObject:v1 forKey:v2];
}

void _s13JournalShared16EntriesSortOrderO8timelineACvsZ_0(unsigned __int8 *a1)
{
  v1 = [objc_opt_self() standardUserDefaults];
  v2 = sub_255750180();

  v3 = sub_255750180();
  [v1 setObject:v2 forKey:v3];
}

unint64_t sub_2556A3B04()
{
  result = qword_27F7BE230;
  if (!qword_27F7BE230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7BE230);
  }

  return result;
}

unint64_t sub_2556A3B58()
{
  result = qword_27F7BE238;
  if (!qword_27F7BE238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7BE238);
  }

  return result;
}

uint64_t NSManagedObjectContext.ObjectIDNotification.insertedObjectIDs.setter(uint64_t a1)
{

  *(v1 + 8) = a1;
  return result;
}

uint64_t NSManagedObjectContext.ObjectIDNotification.updatedObjectIDs.setter(uint64_t a1)
{

  *(v1 + 16) = a1;
  return result;
}

uint64_t NSManagedObjectContext.ObjectIDNotification.deletedObjectIDs.setter(uint64_t a1)
{

  *(v1 + 24) = a1;
  return result;
}

unint64_t sub_2556A3CB0()
{
  result = qword_27F7BE248;
  if (!qword_27F7BE248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7BE248);
  }

  return result;
}

double static NSManagedObjectContext.ObjectIDNotification.makeMessage(_:)@<D0>(void *a2@<X8>)
{
  v3 = sub_255750890();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v19 - v8;
  sub_25574EB80();
  if (v24)
  {
    sub_255669A88(0, &qword_27F7BE258, 0x277CBE440);
    if (swift_dynamicCast())
    {
      v21 = v22;
      v10 = *(v4 + 104);
      v10(v9, *MEMORY[0x277CBE0E8], v3);
      v10(v7, *MEMORY[0x277CBE100], v3);
      sub_2556A516C();
      v20 = v11;
      v12 = *(v4 + 8);
      v12(v7, v3);
      v12(v9, v3);
      v10(v9, *MEMORY[0x277CBE0E0], v3);
      v10(v7, *MEMORY[0x277CBE0F8], v3);
      sub_2556A516C();
      v14 = v13;
      v12(v7, v3);
      v12(v9, v3);
      v10(v9, *MEMORY[0x277CBE0D8], v3);
      v10(v7, *MEMORY[0x277CBE0F0], v3);
      sub_2556A516C();
      v16 = v15;
      v12(v7, v3);
      v12(v9, v3);
      v18 = v20;
      *a2 = v21;
      a2[1] = v18;
      a2[2] = v14;
      a2[3] = v16;
      return result;
    }
  }

  else
  {
    sub_255674B20(v23, &qword_27F7BE250, &qword_255756600);
  }

  result = 0.0;
  *a2 = 0u;
  *(a2 + 1) = 0u;
  return result;
}

void sub_2556A400C(uint64_t a2@<X8>)
{
  static NSManagedObjectContext.ObjectIDNotification.makeMessage(_:)(&v5);
  if (v5)
  {
    v3 = v7;
    v4 = v6;
  }

  else
  {
    v3 = 0;
    v4 = 0uLL;
  }

  *a2 = v5;
  *(a2 + 8) = v4;
  *(a2 + 24) = v3;
}

Swift::Void __swiftcall NSManagedObjectContext.setInitialQueryGeneration()()
{
  v1 = sub_25574EF10();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE270, &unk_25575A3F0);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v30 - v9;
  v11 = [v0 persistentStoreCoordinator];
  if (!v11)
  {
    goto LABEL_28;
  }

  v12 = v11;
  v13 = [v11 persistentStores];

  sub_255669A88(0, &qword_27F7BE278, 0x277CBE4D0);
  v14 = sub_255750380();

  if (!(v14 >> 62))
  {
    if (*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_4;
    }

LABEL_27:

    goto LABEL_28;
  }

  if (!sub_255750A30())
  {
    goto LABEL_27;
  }

LABEL_4:
  if ((v14 & 0xC000000000000001) != 0)
  {
    v15 = MEMORY[0x259C3E830](0, v14);
  }

  else
  {
    if (!*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return;
    }

    v15 = *(v14 + 32);
  }

  v31 = v15;

  v16 = [v31 type];
  v17 = sub_2557501B0();
  v19 = v18;

  if (v17 == sub_2557501B0() && v19 == v20)
  {

    return;
  }

  v21 = sub_255750EB0();

  if (v21)
  {
    v22 = v31;

    return;
  }

  v23 = [v31 URL];
  if (v23)
  {
    v24 = v23;
    sub_25574EEC0();

    (*(v2 + 56))(v8, 0, 1, v1);
  }

  else
  {
    (*(v2 + 56))(v8, 1, 1, v1);
  }

  sub_2556653A0(v8, v10);
  if ((*(v2 + 48))(v10, 1, v1))
  {
    sub_255674B20(v10, &qword_27F7BE270, &unk_25575A3F0);

LABEL_28:
    MEMORY[0x28223BE20](v11);
    *(&v30 - 2) = v0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE280, &qword_255756620);
    sub_255750870();
    return;
  }

  v25 = v0;
  (*(v2 + 16))(v4, v10, v1);
  sub_255674B20(v10, &qword_27F7BE270, &unk_25575A3F0);
  v26 = sub_25574EED0();
  v28 = v27;
  (*(v2 + 8))(v4, v1);
  if (v26 == 0x6C756E2F7665642FLL && v28 == 0xE90000000000006CLL)
  {

    return;
  }

  v29 = sub_255750EB0();

  v0 = v25;
  if ((v29 & 1) == 0)
  {
    goto LABEL_28;
  }
}

void sub_2556A4558(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v9[1] = *MEMORY[0x277D85DE8];
  v4 = [objc_opt_self() currentQueryGenerationToken];
  v9[0] = 0;
  v5 = [a1 setQueryGenerationFromToken:v4 error:v9];

  if (v5)
  {
    v6 = v9[0];
  }

  else
  {
    v7 = v9[0];
    v8 = sub_25574ED90();

    swift_willThrow();
  }

  *a2 = v5 ^ 1;
}

id NSManagedObjectContext.fetch<A>(_:batchSize:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = v3;
  v10[1] = *MEMORY[0x277D85DE8];
  [a1 setFetchBatchSize_];
  objc_opt_self();
  v10[0] = 0;
  v6 = [v4 executeFetchRequest:swift_dynamicCastObjCClassUnconditional() error:v10];
  v7 = v10[0];
  if (v6)
  {
    *a3 = v6;
    return v7;
  }

  else
  {
    v9 = v10[0];
    sub_25574ED90();

    return swift_willThrow();
  }
}

uint64_t sub_2556A4750(uint64_t a1, id a2, uint64_t a3)
{
  v3 = [a2 objectAtIndex_];
  sub_255750980();
  swift_unknownObjectRelease();
  swift_dynamicCast();
  return v5;
}

uint64_t sub_2556A47EC(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = MEMORY[0x277D83BC8];

  return MEMORY[0x2821FC700](a1, a2, WitnessTable, v5);
}

id sub_2556A487C@<X0>(void *a1@<X8>)
{
  result = sub_2556A4744(*v1);
  *a1 = result;
  return result;
}

uint64_t (*sub_2556A48B0(uint64_t **a1, uint64_t *a2, uint64_t a3))()
{
  if (MEMORY[0x277D84FD8])
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0x30uLL);
  }

  v8 = v7;
  *a1 = v7;
  v9 = sub_2556A4988(v7, *a2, *v3, *(a3 + 16));
  v8[4] = v10;
  v8[5] = v9;
  return sub_2556A4940;
}

void sub_2556A4940(void *a1)
{
  v1 = *a1;
  (*(*a1 + 40))(*a1);

  free(v1);
}

uint64_t sub_2556A49E4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();
  v3 = MEMORY[0x277D83BC8];

  return MEMORY[0x2821FC710](a1, WitnessTable, v3);
}

uint64_t sub_2556A4ADC(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = MEMORY[0x277D83BC8];

  return MEMORY[0x2821FC6F8](a1, a2, WitnessTable, v5);
}

uint64_t sub_2556A4B64(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t *, uint64_t, uint64_t, void))
{
  v8 = *a1;
  WitnessTable = swift_getWitnessTable();
  return a4(&v8, a2, WitnessTable, MEMORY[0x277D83BC8]);
}

uint64_t sub_2556A4BE8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FC7A8](a1, WitnessTable);
}

uint64_t sub_2556A4C44(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();
  v4 = sub_2556A7020(v1, a1, WitnessTable);

  return v4;
}

void NSManagedObjectContext.forEach<A>(_:batchSize:using:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = MEMORY[0x259C3EDB0]();
  sub_2556A4D74(v5, a1, a2, a4, a5, &v11, &v12);
  objc_autoreleasePoolPop(v10);
}

void sub_2556A4D74(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X6>, uint64_t *a8@<X8>)
{
  v38 = *MEMORY[0x277D85DE8];
  NSManagedObjectContext.fetch<A>(_:batchSize:)(a2, a3, &v36);
  if (v8)
  {
    *a7 = v8;
    return;
  }

  v27 = a8;
  v29 = v36;
  _s14FetchedResultsVMa(0, a6, v14, v15);
  swift_getWitnessTable();
  sub_255750660();
  v31 = v33;
  v32 = v34;
  v28 = v33;
  v36 = v33;
  v37 = v34;
  sub_25574F260();
  sub_25574F220();
  sub_25574F250();
  if (sub_25574F230())
  {
LABEL_11:

    [a1 reset];
    *&v36 = v29;
    v23 = sub_2557506E0();

    *v27 = v23;
    return;
  }

  v30 = a5;
  v26 = a7;
  while (1)
  {
    sub_25574F270();
    v16 = a6;
    v18 = *(&v33 + 1);
    v17 = v33;
    v19 = v34;
    v33 = v35;
    sub_25574F240();
    v33 = __PAIR128__(v18, v17);
    a6 = v16;
    v34 = v19;
    v20 = v19;
    v21 = MEMORY[0x259C3EDB0]();
    sub_2556A5090(v30, v16, &v31);
    objc_autoreleasePoolPop(v21);

    if ((v31 & 1) == 0)
    {

      goto LABEL_11;
    }

    if ([a1 hasChanges])
    {
      break;
    }

LABEL_5:
    [a1 reset];

    sub_25574F250();
    if (sub_25574F230())
    {
      goto LABEL_11;
    }
  }

  *&v31 = 0;
  if ([a1 save_])
  {
    v22 = v31;
    goto LABEL_5;
  }

  v24 = v31;
  v25 = sub_25574ED90();

  swift_willThrow();
  *v26 = v25;
}

uint64_t sub_2556A5090@<X0>(uint64_t a3@<X2>, uint64_t a4@<X3>, _BYTE *a5@<X8>)
{
  _s14FetchedResultsVMa(255, a4, a3, a4);
  swift_getWitnessTable();
  sub_255750F60();
  swift_getWitnessTable();
  result = sub_2557502C0();
  *a5 = result & 1;
  return result;
}

void sub_2556A516C()
{
  v0 = sub_25574EB90();
  if (!v0)
  {
    goto LABEL_8;
  }

  v1 = v0;
  sub_255750880();
  sub_255750AA0();
  if (!*(v1 + 16) || (v2 = sub_255674984(v9), (v3 & 1) == 0))
  {

    sub_2556A7148(v9);
LABEL_8:
    v10 = 0u;
    v11 = 0u;
    goto LABEL_9;
  }

  sub_255678EBC(*(v1 + 56) + 32 * v2, &v10);
  sub_2556A7148(v9);

  if (!*(&v11 + 1))
  {
LABEL_9:
    sub_255674B20(&v10, &qword_27F7BE250, &qword_255756600);
    goto LABEL_10;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE358, &qword_255756A08);
  if (swift_dynamicCast())
  {
    return;
  }

LABEL_10:
  v4 = sub_25574EB90();
  if (!v4)
  {
LABEL_17:
    v10 = 0u;
    v11 = 0u;
    goto LABEL_18;
  }

  v5 = v4;
  sub_255750880();
  sub_255750AA0();
  if (!*(v5 + 16) || (v6 = sub_255674984(v9), (v7 & 1) == 0))
  {

    sub_2556A7148(v9);
    goto LABEL_17;
  }

  sub_255678EBC(*(v5 + 56) + 32 * v6, &v10);
  sub_2556A7148(v9);

  if (*(&v11 + 1))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE388, &qword_255756A10);
    if (swift_dynamicCast())
    {
      v8 = sub_2556A5454(v9[0]);

      sub_25569B688(v8);

      return;
    }

    goto LABEL_19;
  }

LABEL_18:
  sub_255674B20(&v10, &qword_27F7BE250, &qword_255756600);
LABEL_19:
  if (MEMORY[0x277D84F90] >> 62)
  {
    if (sub_255750A30())
    {
      sub_255725CD8(MEMORY[0x277D84F90]);
    }
  }
}

unint64_t sub_2556A53E4()
{
  result = qword_27F7BE268;
  if (!qword_27F7BE268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7BE268);
  }

  return result;
}

uint64_t sub_2556A5454(uint64_t a1)
{
  v24 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v2 = sub_255750A30();
    result = MEMORY[0x277D84F90];
    if (!v2)
    {
      return result;
    }

    v29 = MEMORY[0x277D84F90];
    sub_255750BD0();
    result = sub_2557509E0();
    v26 = result;
    v27 = v4;
    v28 = 1;
    if ((v2 & 0x8000000000000000) == 0)
    {
      goto LABEL_7;
    }

    __break(1u);
  }

  v2 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (!v2)
  {
    return result;
  }

  v29 = MEMORY[0x277D84F90];
  sub_255750BD0();
  result = sub_2557509B0();
  v5 = *(a1 + 36);
  v26 = result;
  v27 = v5;
  v28 = 0;
LABEL_7:
  v6 = 0;
  while (v6 < v2)
  {
    if (__OFADD__(v6++, 1))
    {
      goto LABEL_31;
    }

    v10 = v26;
    v9 = v27;
    v11 = v28;
    sub_2556A6494(v26, v27, v28, a1);
    v13 = v12;
    v14 = [v12 objectID];

    sub_255750BB0();
    sub_255750BE0();
    sub_255750BF0();
    result = sub_255750BC0();
    if (v24)
    {
      if (!v11)
      {
        goto LABEL_35;
      }

      if (sub_255750A00())
      {
        swift_isUniquelyReferenced_nonNull_native();
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F7BE390, &qword_255756A18);
      v7 = sub_2557505B0();
      sub_255750A70();
      result = v7(v25, 0);
      if (v6 == v2)
      {
LABEL_28:
        sub_2556A719C(v26, v27, v28);
        return v29;
      }
    }

    else
    {
      if (v11)
      {
        goto LABEL_36;
      }

      if ((v10 & 0x8000000000000000) != 0)
      {
        goto LABEL_32;
      }

      v15 = 1 << *(a1 + 32);
      if (v10 >= v15)
      {
        goto LABEL_32;
      }

      v16 = v10 >> 6;
      v17 = *(a1 + 56 + 8 * (v10 >> 6));
      if (((v17 >> v10) & 1) == 0)
      {
        goto LABEL_33;
      }

      if (*(a1 + 36) != v9)
      {
        goto LABEL_34;
      }

      v18 = v17 & (-2 << (v10 & 0x3F));
      if (v18)
      {
        v15 = __clz(__rbit64(v18)) | v10 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v19 = v16 << 6;
        v20 = v16 + 1;
        v21 = (a1 + 64 + 8 * v16);
        while (v20 < (v15 + 63) >> 6)
        {
          v23 = *v21++;
          v22 = v23;
          v19 += 64;
          ++v20;
          if (v23)
          {
            result = sub_2556A719C(v10, v9, 0);
            v15 = __clz(__rbit64(v22)) + v19;
            goto LABEL_27;
          }
        }

        result = sub_2556A719C(v10, v9, 0);
      }

LABEL_27:
      v26 = v15;
      v27 = v9;
      v28 = 0;
      if (v6 == v2)
      {
        goto LABEL_28;
      }
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
  return result;
}

BOOL NSManagedObjectContext.ObjectIDNotification.affects(_:)(uint64_t a1)
{
  v2 = v1[1];
  v3 = v1[2];
  v4 = v1[3];
  v5 = *(a1 + 16);
  if (v5)
  {
    v21 = MEMORY[0x277D84F90];

    sub_255750BD0();
    v7 = a1 + 32;
    do
    {
      v7 += 8;
      v8 = [swift_getObjCClassFromMetadata() entity];
      sub_255750BB0();
      sub_255750BE0();
      sub_255750BF0();
      sub_255750BC0();
      --v5;
    }

    while (v5);
    v9 = v21;
  }

  else
  {

    v9 = MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE288, &unk_255756628);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_2557565E0;
  *(v10 + 32) = v2;
  *(v10 + 40) = v3;
  *(v10 + 48) = v4;
  v21 = v10;
  v22 = 0;
  v23 = sub_2556A5A08;
  v24 = 0;
  v25 = 0xF000000000000007;
  v26 = 0u;
  v27 = 0u;
  v28 = sub_2556A5A78;
  KeyPath = swift_getKeyPath();
  swift_retain_n();

  do
  {
    sub_2556A67F8(v11);
    v13 = v12;
    if (!v12)
    {
      break;
    }

    v14 = [v12 entity];

    v20 = v14;
    MEMORY[0x28223BE20](v15);
    v19[2] = &v20;
    v16 = sub_2556A5A80(sub_2556A6A50, v19, v9);
  }

  while ((v16 & 1) == 0);

  v17 = v25;

  sub_2556A6A3C(v17);

  return v13 != 0;
}

void sub_2556A5A20(id *a1, uint64_t a2)
{
  v2 = *a1;
  swift_getAtKeyPath();
}

uint64_t sub_2556A5A80(uint64_t (*a1)(id *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_15;
  }

  v4 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v4)
  {
    do
    {
      v5 = 0;
      v15 = a3 & 0xC000000000000001;
      v6 = a3 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if (v15)
        {
          v7 = a3;
          v8 = MEMORY[0x259C3E830](v5, a3);
        }

        else
        {
          if (v5 >= *(v6 + 16))
          {
            goto LABEL_14;
          }

          v7 = a3;
          v8 = *(a3 + 8 * v5 + 32);
        }

        v9 = v8;
        v10 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          break;
        }

        v17 = v8;
        v11 = a1(&v17);

        if (!v3 && (v11 & 1) == 0)
        {
          ++v5;
          a3 = v7;
          if (v10 != v4)
          {
            continue;
          }
        }

        return v11 & 1;
      }

      __break(1u);
LABEL_14:
      __break(1u);
LABEL_15:
      v12 = a3;
      v13 = sub_255750A30();
      a3 = v12;
      v4 = v13;
    }

    while (v13);
  }

  v11 = 0;
  return v11 & 1;
}

uint64_t sub_2556A5BA8(uint64_t (*a1)(void **), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;

  v11 = sub_255714228(a3, a4, a5, &v19);
  sub_2556A66B8(v11);
  if (v12)
  {
    v13 = v12;
    while (1)
    {
      v18 = v13;
      v14 = a1(&v18);

      if (v6 || (v14 & 1) != 0)
      {
        break;
      }

      sub_2556A66B8(v15);
      v13 = v16;
      if (!v16)
      {
        goto LABEL_6;
      }
    }

    sub_25568B1C8(v19);

    return 1;
  }

  else
  {
LABEL_6:
    sub_25568B1C8(v19);

    return 0;
  }
}

uint64_t sub_2556A5CA8(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = a1(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

uint64_t sub_2556A5DCC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, _BYTE *a9@<X8>)
{
  v24 = a6;
  v25 = a7;
  v26 = a1;
  v27 = a2;
  v28 = a3;
  v29 = a4;
  result = sub_2556A6190(sub_2556A625C, 0, a5);
  if (result)
  {
    v18 = 1;
  }

  else
  {
    v23 = a9;
    v27 = a2;
    v28 = a3;
    v29 = a4;
    v22[0] = a5;
    v30 = v9;
    v22[2] = v22;
    v26 = sub_2556A602C(sub_2556A7220, 0, a5, a8);
    MEMORY[0x28223BE20](v26);
    v19 = sub_255750470();
    swift_getWitnessTable();
    v22[1] = v19;
    v20 = v30;
    v21 = sub_255750310();
    v30 = v20;

    if (v21)
    {
      v18 = 1;
    }

    else
    {
      v26 = a1;
      v27 = a2;
      v28 = a3;
      v29 = a4;
      v26 = sub_2556A602C(sub_2556A7224, 0, v22[0], a8);
      MEMORY[0x28223BE20](v26);
      v18 = sub_255750310();
    }

    a9 = v23;
  }

  *a9 = v18 & 1;
  return result;
}

uint64_t sub_2556A602C(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4[1];
  v6 = v4[2];
  v7 = v4[3];
  v10[0] = *v4;
  v10[1] = v5;
  v10[2] = v6;
  v10[3] = v7;
  v10[0] = a1(v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE358, &qword_255756A08);
  sub_255669798(&unk_27F7BE360, &qword_27F7BE358, &qword_255756A08, MEMORY[0x277D83B68]);
  v8 = sub_2557502D0();

  return v8;
}

uint64_t sub_2556A6190(uint64_t (*a1)(_OWORD *), uint64_t a2, uint64_t a3)
{
  v4 = v3[1];
  v10[0] = *v3;
  v10[1] = v4;
  v5 = a1(v10);
  v6 = [swift_getObjCClassFromMetadata() entity];
  *&v10[0] = v6;
  v9[2] = v10;
  v7 = sub_2556A5BA8(sub_2556A7248, v9, v5, sub_2556A6340, 0);

  return v7 & 1;
}

uint64_t NSManagedObjectContext.ObjectIDNotification.refreshedObjects<A>(of:)(uint64_t a1, uint64_t a2)
{
  sub_2556A602C(sub_2556A7220, 0, a1, a2);
  sub_2556A602C(sub_2556A7224, 0, a1, a2);
  v4 = sub_2557503C0();

  return v4;
}

id sub_2556A6340@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 entity];
  *a2 = result;
  return result;
}

uint64_t sub_2556A637C@<X0>(id a1@<X1>, void *a2@<X0>, uint64_t a3@<X5>, uint64_t a4@<X8>)
{
  [a1 objectWithID_];
  sub_255669A88(0, &qword_27F7BDDA8, 0x277CBE438);
  v6 = swift_dynamicCast();
  return (*(*(a3 - 8) + 56))(a4, v6 ^ 1u, 1, a3);
}

uint64_t sub_2556A643C@<X0>(uint64_t result@<X0>, int a2@<W1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  if (result < 0 || 1 << *(a3 + 32) <= result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a3 + 8 * (result >> 6) + 56) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a3 + 36) == a2)
  {
    return sub_2556A71A8(*(a3 + 48) + 40 * result, a4);
  }

LABEL_8:
  __break(1u);
  return result;
}

void sub_2556A6494(unint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v6 = a1;
  if ((a4 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      if (a4 < 0)
      {
        v7 = a4;
      }

      else
      {
        v7 = a4 & 0xFFFFFFFFFFFFFF8;
      }

      MEMORY[0x259C3E720](a1, a2, v7);
      sub_255669A88(0, &qword_27F7BDDA8, 0x277CBE438);
      swift_dynamicCast();
      return;
    }

LABEL_26:
    __break(1u);
    return;
  }

  if (a3)
  {
    sub_255669A88(0, &qword_27F7BDDA8, 0x277CBE438);
    if (sub_255750A10() != *(a4 + 36))
    {
      __break(1u);
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    sub_255750A20();
    swift_dynamicCast();
    v4 = v15;
    v8 = sub_255750930();
    v9 = -1 << *(a4 + 32);
    v6 = v8 & ~v9;
    if ((*(a4 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
    {
      v10 = ~v9;
      do
      {
        v11 = *(*(a4 + 48) + 8 * v6);
        v12 = sub_255750940();

        if (v12)
        {
          goto LABEL_19;
        }

        v6 = (v6 + 1) & v10;
      }

      while (((*(a4 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    __break(1u);
  }

  if ((v6 & 0x8000000000000000) != 0 || 1 << *(a4 + 32) <= v6)
  {
    goto LABEL_24;
  }

  if (((*(a4 + 8 * (v6 >> 6) + 56) >> v6) & 1) == 0)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (*(a4 + 36) != a2)
  {
    __break(1u);
LABEL_19:
  }

  v13 = *(*(a4 + 48) + 8 * v6);

  v14 = v13;
}

void sub_2556A66B8(uint64_t result)
{
  if ((*v1 & 0x8000000000000000) != 0)
  {
    v5 = sub_255750A60();
    if (v5)
    {
      v13 = v5;
      sub_255669A88(0, &qword_27F7BE370, 0x277CBE448);
      swift_dynamicCast();
      v6 = v14;
      if (v14)
      {
LABEL_16:
        v12 = v1[5];
        v14 = v6;
        v12(&v13, &v14);
      }
    }
  }

  else
  {
    v2 = v1[3];
    v3 = v1[4];
    if (v3)
    {
      v4 = v1[3];
LABEL_14:
      v10 = (v3 - 1) & v3;
      v6 = *(*(*v1 + 48) + ((v4 << 9) | (8 * __clz(__rbit64(v3)))));
      v11 = v6;
      v9 = v4;
LABEL_15:
      v1[3] = v9;
      v1[4] = v10;
      if (v6)
      {
        goto LABEL_16;
      }
    }

    else
    {
      v7 = (v1[2] + 64) >> 6;
      if (v7 <= v2 + 1)
      {
        v8 = v2 + 1;
      }

      else
      {
        v8 = (v1[2] + 64) >> 6;
      }

      v9 = v8 - 1;
      while (1)
      {
        v4 = v2 + 1;
        if (__OFADD__(v2, 1))
        {
          break;
        }

        if (v4 >= v7)
        {
          v6 = 0;
          v10 = 0;
          goto LABEL_15;
        }

        v3 = *(v1[1] + 8 * v4);
        ++v2;
        if (v3)
        {
          goto LABEL_14;
        }
      }

      __break(1u);
    }
  }
}

void sub_2556A67F8(id result)
{
  v2 = v1;
  v3 = v1[4];
  while (1)
  {
    if ((~v3 & 0xF000000000000007) == 0)
    {
      goto LABEL_20;
    }

    if (v3 < 0)
    {
      v11 = sub_255750A60();
      if (v11)
      {
        v25 = v11;
        sub_255669A88(0, &qword_27F7BE370, 0x277CBE448);
        swift_dynamicCast();
        if (v26[0])
        {
          return;
        }
      }

      goto LABEL_20;
    }

    v8 = v2[7];
    v9 = v2[8];
    if (!v9)
    {
      break;
    }

    v10 = v2[7];
LABEL_18:
    v15 = (v9 - 1) & v9;
    v16 = *(*(v3 + 48) + ((v10 << 9) | (8 * __clz(__rbit64(v9)))));
    v17 = v16;
    v14 = v10;
LABEL_19:
    v2[7] = v14;
    v2[8] = v15;
    if (v16)
    {
      return;
    }

LABEL_20:
    v18 = v2[1];
    v19 = *(*v2 + 16);
    if (v18 == v19)
    {
      return;
    }

    if (v18 >= v19)
    {
      goto LABEL_30;
    }

    v20 = *(*v2 + 8 * v18 + 32);
    v2[1] = v18 + 1;
    v21 = v2[2];
    v26[0] = v20;

    v21(&v25, v26);

    v3 = v25;
    if ((v25 & 0xC000000000000001) != 0)
    {
      sub_2557509F0();
      sub_255669A88(0, &qword_27F7BE370, 0x277CBE448);
      sub_2556A70E0();
      sub_2557505C0();
      v3 = v26[1];
      v4 = v26[2];
      v6 = v26[3];
      v5 = v26[4];
      v7 = v26[5];
    }

    else
    {
      v5 = 0;
      v22 = -1 << *(v25 + 32);
      v4 = v25 + 56;
      v6 = ~v22;
      v23 = -v22;
      if (v23 < 64)
      {
        v24 = ~(-1 << v23);
      }

      else
      {
        v24 = -1;
      }

      v7 = v24 & *(v25 + 56);
    }

    sub_2556A6A3C(v2[4]);
    v2[4] = v3;
    v2[5] = v4;
    v2[6] = v6;
    v2[7] = v5;
    v2[8] = v7;
  }

  v12 = (v2[6] + 64) >> 6;
  if (v12 <= v8 + 1)
  {
    v13 = v8 + 1;
  }

  else
  {
    v13 = (v2[6] + 64) >> 6;
  }

  v14 = v13 - 1;
  while (1)
  {
    v10 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v10 >= v12)
    {
      v16 = 0;
      v15 = 0;
      goto LABEL_19;
    }

    v9 = *(v2[5] + 8 * v10);
    ++v8;
    if (v9)
    {
      goto LABEL_18;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
}

uint64_t sub_2556A6A3C(uint64_t a1)
{
  if ((~a1 & 0xF000000000000007) != 0)
  {
    return sub_25568B1C8(a1);
  }

  return a1;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_2556A6AB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_2556A6B10(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_2556A6B58(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

unint64_t sub_2556A6C20()
{
  result = qword_27F7BE340;
  if (!qword_27F7BE340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7BE340);
  }

  return result;
}

uint64_t sub_2556A6D94(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7BE338, &qword_2557567F0);
    sub_2556A6C20();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2556A6E70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  result = sub_2557500F0();
  if ((result & 1) == 0)
  {
    __break(1u);
    goto LABEL_5;
  }

  sub_255750720();
  result = sub_2557500F0();
  if ((result & 1) == 0)
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

uint64_t sub_2556A6F3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t), uint64_t (*a6)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  result = sub_2557500F0();
  if ((result & 1) == 0)
  {
    __break(1u);
    goto LABEL_5;
  }

  v13 = a5(0, AssociatedTypeWitness, AssociatedConformanceWitness);
  result = a6(a1, a2 + *(v13 + 36), AssociatedTypeWitness, AssociatedConformanceWitness);
  if ((result & 1) == 0)
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

unint64_t sub_2556A70E0()
{
  result = qword_27F7BE380;
  if (!qword_27F7BE380)
  {
    sub_255669A88(255, &qword_27F7BE370, 0x277CBE448);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7BE380);
  }

  return result;
}

uint64_t sub_2556A719C(uint64_t result, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return v3;
}

uint64_t static MergeableColor.random.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = vcvtd_n_f64_u64(sub_2556AA550(0x20000000000001uLL), 0x35uLL) + 0.0;
  v3 = vcvtd_n_f64_u64(sub_2556AA550(0x20000000000001uLL), 0x35uLL) + 0.0;
  v4 = vcvtd_n_f64_u64(sub_2556AA550(0x20000000000001uLL), 0x35uLL) + 0.0;
  type metadata accessor for SRGBColor(0);
  sub_25574FB20();
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = 0x3FF0000000000000;
  type metadata accessor for MergeableColor(0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t SRGBColor.init(cgColor:)@<X0>(CGColor *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for SRGBColor(0);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v6 + 32);
  sub_25574FB20();
  CopyByMatchingToColorSpace = CGColorGetColorSpace(a1);
  if (qword_27F7BD6E0 != -1)
  {
    goto LABEL_23;
  }

  while (1)
  {
    v11 = qword_27F7BE3A0;
    if (CopyByMatchingToColorSpace && (type metadata accessor for CGColorSpace(0), sub_255668360(&qword_27F7BE3A8, type metadata accessor for CGColorSpace, &unk_255754DA0), v12 = v11, v28 = v11, v13 = v12, v14 = sub_25574F1F0(), CopyByMatchingToColorSpace, v13, v11 = v28, (v14 & 1) != 0))
    {
      CopyByMatchingToColorSpace = a1;
    }

    else
    {
      CopyByMatchingToColorSpace = CGColorCreateCopyByMatchingToColorSpace(v11, kCGRenderingIntentDefault, a1, 0);
      if (!CopyByMatchingToColorSpace)
      {
        goto LABEL_15;
      }
    }

    if (CGColorGetNumberOfComponents(CopyByMatchingToColorSpace) != 4 || (v15 = sub_255750730()) == 0)
    {

LABEL_15:
      v22 = sub_25574FB30();
      (*(*(v22 - 8) + 8))(&v8[v9], v22);
      return (*(v5 + 56))(a2, 1, 1, v4);
    }

    v9 = *(v15 + 16);
    if (v9)
    {
      break;
    }

    v17 = MEMORY[0x277D84F90];
    v24 = *(MEMORY[0x277D84F90] + 16);
    if (v24)
    {
      goto LABEL_17;
    }

LABEL_22:
    __break(1u);
LABEL_23:
    swift_once();
  }

  v27 = a2;
  v28 = v15;
  v29 = MEMORY[0x277D84F90];
  sub_2556A9C78(0, v9, 0);
  v16 = v28;
  v17 = v29;
  v18 = v29[2];
  v19 = 32;
  do
  {
    v20 = *(v16 + v19);
    v29 = v17;
    v21 = v17[3];
    if (v18 >= v21 >> 1)
    {
      sub_2556A9C78((v21 > 1), v18 + 1, 1);
      v16 = v28;
      v17 = v29;
    }

    v17[2] = v18 + 1;
    v17[v18 + 4] = v20;
    v19 += 8;
    ++v18;
    --v9;
  }

  while (v9);

  a2 = v27;
  v24 = v17[2];
  if (!v24)
  {
    goto LABEL_22;
  }

LABEL_17:
  *v8 = v17[4];
  if (v24 == 1)
  {
    __break(1u);
    goto LABEL_25;
  }

  *(v8 + 1) = v17[5];
  if (v24 < 3)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  *(v8 + 2) = v17[6];
  if (v24 != 3)
  {
    v25 = v17[7];

    *(v8 + 3) = v25;
    sub_25567352C(v8, a2, type metadata accessor for SRGBColor);
    (*(v5 + 56))(a2, 0, 1, v4);
    return sub_255673758(v8, type metadata accessor for SRGBColor);
  }

LABEL_26:
  __break(1u);
  return result;
}

JournalShared::AssetCatalogColor_optional __swiftcall AssetCatalogColor.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_255750CD0();

  v5 = 13;
  if (v3 < 0xD)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t AssetCatalogColor.rawValue.getter()
{
  result = 0x6E69677265627541;
  switch(*v0)
  {
    case 1:
      result = 0x6873756C42;
      break;
    case 2:
      result = 0x6B63697242;
      break;
    case 3:
      result = 0x746C61626F43;
      break;
    case 4:
      result = 0x776F6C666E726F43;
      break;
    case 5:
      result = 0x6E69507974737544;
      break;
    case 6:
      result = 0x646C6172656D45;
      break;
    case 7:
      result = 0x6863616550;
      break;
    case 8:
      result = 1701273939;
      break;
    case 9:
      result = 1684955475;
      break;
    case 0xA:
      result = 0x73696F7571727554;
      break;
    case 0xB:
      result = 0x74656C6F6956;
      break;
    case 0xC:
      result = 0x6F7268636F6E6F4DLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_2556A78E8()
{
  v0 = AssetCatalogColor.rawValue.getter();
  v2 = v1;
  if (v0 == AssetCatalogColor.rawValue.getter() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_255750EB0();
  }

  return v5 & 1;
}

uint64_t sub_2556A7984()
{
  sub_255750F80();
  AssetCatalogColor.rawValue.getter();
  sub_2557501F0();

  return sub_255750FD0();
}

uint64_t sub_2556A79EC(uint64_t a1)
{
  AssetCatalogColor.rawValue.getter();
  sub_2557501F0();
}

uint64_t sub_2556A7A50(uint64_t a1)
{
  sub_255750F80();
  AssetCatalogColor.rawValue.getter();
  sub_2557501F0();

  return sub_255750FD0();
}

uint64_t sub_2556A7AC0@<X0>(uint64_t *a1@<X8>)
{
  result = AssetCatalogColor.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_2556A7B04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_2556AAA10();
  sub_2556AA758();

  return sub_25574FDD0();
}

void *sub_2556A7B74()
{
  sub_2556AAA10();
  sub_2556AA9BC();
  return sub_25574FDF0();
}

uint64_t sub_2556A7BE0(uint64_t a1, uint64_t a2)
{
  sub_2556AAA10();
  sub_2556AA9BC();
  return sub_25574FE00();
}

uint64_t sub_2556A7C3C(uint64_t a1)
{
  v2 = sub_2556AAA10();
  v3 = sub_2556AA9BC();
  v4 = MEMORY[0x277CFB7D8];

  return MEMORY[0x28214E330](a1, v2, v3, v4);
}

uint64_t sub_2556A7CF4(uint64_t a1, uint64_t a2)
{
  v4 = sub_2556AA9BC();
  v5 = MEMORY[0x277CFB7D8];

  return MEMORY[0x28214E590](a1, a2, v4, v5);
}

uint64_t MergeableColor.init(cgColor:)@<X0>(CGColor *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for MergeableColor(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE3B8, &unk_255756A20);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v17 - v9;
  v11 = type metadata accessor for SRGBColor(0);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  SRGBColor.init(cgColor:)(a1, v10);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_255674B20(v10, &qword_27F7BE3B8, &unk_255756A20);
    v15 = 1;
  }

  else
  {
    sub_255673644(v10, v14, type metadata accessor for SRGBColor);
    sub_255673644(v14, v7, type metadata accessor for SRGBColor);
    swift_storeEnumTagMultiPayload();
    sub_255673644(v7, a2, type metadata accessor for MergeableColor);
    v15 = 0;
  }

  return (*(v5 + 56))(a2, v15, 1, v4);
}

uint64_t sub_2556A7FBC(uint64_t (*a1)(void *))
{
  sub_255750F80();
  a1(v3);
  return sub_255750FD0();
}

uint64_t sub_2556A801C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void *))
{
  sub_255750F80();
  a3(v5);
  return sub_255750FD0();
}

uint64_t sub_2556A807C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *))
{
  sub_255750F80();
  a4(v6);
  return sub_255750FD0();
}

uint64_t SRGBColor.description.getter()
{
  sub_255750B00();
  MEMORY[0x259C3DED0](0x6F6C6F4342475253, 0xED0000203A722872);
  sub_255750530();
  MEMORY[0x259C3DED0](0x203A67202CLL, 0xE500000000000000);
  sub_255750530();
  MEMORY[0x259C3DED0](0x203A62202CLL, 0xE500000000000000);
  sub_255750530();
  MEMORY[0x259C3DED0](0x203A61202CLL, 0xE500000000000000);
  sub_255750530();
  MEMORY[0x259C3DED0](41, 0xE100000000000000);
  return 0;
}

uint64_t MergeableColor.sRGB.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for MergeableColor(0);
  MEMORY[0x28223BE20](v4);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25567352C(v2, v6, type metadata accessor for MergeableColor);
  if (swift_getEnumCaseMultiPayload())
  {
    sub_255673758(v6, type metadata accessor for MergeableColor);
    v7 = 1;
  }

  else
  {
    sub_255673644(v6, a1, type metadata accessor for SRGBColor);
    v7 = 0;
  }

  v8 = type metadata accessor for SRGBColor(0);
  return (*(*(v8 - 8) + 56))(a1, v7, 1, v8);
}

uint64_t MergeableColor.catalogColor.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for MergeableColor(0);
  MEMORY[0x28223BE20](v4);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25567352C(v2, v6, type metadata accessor for MergeableColor);
  result = swift_getEnumCaseMultiPayload();
  if (result == 1)
  {
    v8 = *v6;
    v9 = v6[16];
  }

  else
  {
    result = sub_255673758(v6, type metadata accessor for MergeableColor);
    v8 = 0uLL;
    v9 = -1;
  }

  *a1 = v8;
  *(a1 + 16) = v9;
  return result;
}

uint64_t MergeableColor.unknown.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for MergeableColor(0);
  MEMORY[0x28223BE20](v4);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25567352C(v2, v6, type metadata accessor for MergeableColor);
  if (swift_getEnumCaseMultiPayload() == 2)
  {
    v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BFFF0, &qword_255755250) + 48);
    v8 = sub_25574F320();
    v9 = *(v8 - 8);
    (*(v9 + 32))(a1, &v6[v7], v8);
    return (*(v9 + 56))(a1, 0, 1, v8);
  }

  else
  {
    sub_255673758(v6, type metadata accessor for MergeableColor);
    v11 = sub_25574F320();
    return (*(*(v11 - 8) + 56))(a1, 1, 1, v11);
  }
}

uint64_t MergeableColor.observableDifference(from:with:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v59 = a1;
  v54 = a2;
  v60 = a3;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BDDD0, &qword_25575D7A0);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v53 = &v51 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v57 = &v51 - v6;
  v7 = sub_25574FB50();
  v55 = *(v7 - 8);
  v56 = v7;
  v8 = MEMORY[0x28223BE20](v7);
  v52 = &v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = &v51 - v10;
  v12 = type metadata accessor for SRGBColor(0);
  v13 = MEMORY[0x28223BE20](v12);
  v15 = &v51 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v51 - v16;
  v18 = type metadata accessor for MergeableColor(0);
  v19 = MEMORY[0x28223BE20](v18);
  v21 = &v51 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v23 = &v51 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE3C8, &unk_255756A40);
  v25 = MEMORY[0x28223BE20](v24 - 8);
  v27 = &v51 - v26;
  v28 = &v51 + *(v25 + 56) - v26;
  sub_25567352C(v58, &v51 - v26, type metadata accessor for MergeableColor);
  sub_25567352C(v59, v28, type metadata accessor for MergeableColor);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v59 = v11;
    v36 = v57;
    sub_25567352C(v27, v23, type metadata accessor for MergeableColor);
    if (!swift_getEnumCaseMultiPayload())
    {
      sub_255673644(v23, v17, type metadata accessor for SRGBColor);
      sub_255673644(v28, v15, type metadata accessor for SRGBColor);
      sub_255668360(&qword_27F7BE3E0, type metadata accessor for SRGBColor, &protocol conformance descriptor for SRGBColor);
      sub_255668360(&qword_27F7BE3E8, type metadata accessor for SRGBColor, &protocol conformance descriptor for SRGBColor);
      sub_25574FDD0();
      sub_255673758(v15, type metadata accessor for SRGBColor);
      sub_255673758(v17, type metadata accessor for SRGBColor);
      v47 = v55;
      v46 = v56;
      if ((*(v55 + 48))(v36, 1, v56) != 1)
      {
        v49 = *(v47 + 32);
        v50 = v59;
        v49(v59, v36, v46);
        v41 = v60;
        v49(v60, v50, v46);
        v42 = type metadata accessor for MergeableColor.ObservableDifference(0);
        goto LABEL_13;
      }

LABEL_11:
      sub_255674B20(v36, &qword_27F7BDDD0, &qword_25575D7A0);
      sub_255673758(v27, type metadata accessor for MergeableColor);
      v48 = type metadata accessor for MergeableColor.ObservableDifference(0);
      return (*(*(v48 - 8) + 56))(v60, 1, 1, v48);
    }

    sub_255673758(v23, type metadata accessor for SRGBColor);
LABEL_9:
    v43 = type metadata accessor for MergeableColor.ObservableDifference(0);
    v44 = v60;
    swift_storeEnumTagMultiPayload();
    (*(*(v43 - 8) + 56))(v44, 0, 1, v43);
    return sub_255674B20(v27, &qword_27F7BE3C8, &unk_255756A40);
  }

  if (EnumCaseMultiPayload != 1)
  {
    goto LABEL_9;
  }

  sub_25567352C(v27, v21, type metadata accessor for MergeableColor);
  v31 = *v21;
  v30 = *(v21 + 1);
  v32 = v21[16];
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_2556AA66C(v31, v30, v32);
    goto LABEL_9;
  }

  v33 = *v28;
  v34 = *(v28 + 1);
  v35 = v28[16];
  v64 = v31;
  v65 = v30;
  v66 = v32;
  v61 = v33;
  v62 = v34;
  v63 = v35;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE3C0, &unk_255756A30);
  sub_255669798(&qword_27F7BE3D0, &qword_27F7BE3C0, &unk_255756A30, MEMORY[0x277CFB528]);
  sub_255669798(&qword_27F7BE3D8, &qword_27F7BE3C0, &unk_255756A30, MEMORY[0x277CFB540]);
  v36 = v53;
  sub_25574FDD0();
  sub_2556AA66C(v33, v34, v35);
  sub_2556AA66C(v31, v30, v32);
  v38 = v55;
  v37 = v56;
  if ((*(v55 + 48))(v36, 1, v56) == 1)
  {
    goto LABEL_11;
  }

  v39 = *(v38 + 32);
  v40 = v52;
  v39(v52, v36, v37);
  v41 = v60;
  v39(v60, v40, v37);
  v42 = type metadata accessor for MergeableColor.ObservableDifference(0);
LABEL_13:
  swift_storeEnumTagMultiPayload();
  (*(*(v42 - 8) + 56))(v41, 0, 1, v42);
  return sub_255673758(v27, type metadata accessor for MergeableColor);
}

uint64_t MergeableColor.visitReferences(_:)(uint64_t a1)
{
  v2 = v1;
  v3 = sub_25574F320();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for SRGBColor(0);
  MEMORY[0x28223BE20](v7);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for MergeableColor(0);
  MEMORY[0x28223BE20](v10);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25567352C(v2, v12, type metadata accessor for MergeableColor);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      return sub_255673758(v12, type metadata accessor for MergeableColor);
    }

    else
    {
      v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BFFF0, &qword_255755250);
      (*(v4 + 32))(v6, &v12[*(v15 + 48)], v3);
      sub_25574F2E0();
      return (*(v4 + 8))(v6, v3);
    }
  }

  else
  {
    sub_255673644(v12, v9, type metadata accessor for SRGBColor);
    sub_25574FAE0();
    return sub_255673758(v9, type metadata accessor for SRGBColor);
  }
}

uint64_t MergeableColor.copy(renamingReferences:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v27 = a1;
  v5 = sub_25574F320();
  v26 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_25574FB30();
  v25 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for SRGBColor(0);
  MEMORY[0x28223BE20](v11);
  v13 = (&v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = type metadata accessor for MergeableColor(0);
  MEMORY[0x28223BE20](v14);
  v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25567352C(v3, v16, type metadata accessor for MergeableColor);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v18 = v16[16];
      *a2 = *v16;
      *(a2 + 16) = v18;
    }

    else
    {
      v20 = *v16;
      v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BFFF0, &qword_255755250);
      v22 = v26;
      (*(v26 + 32))(v7, &v16[*(v21 + 48)], v5);
      *a2 = v20;
      sub_25574F300();
      (*(v22 + 8))(v7, v5);
    }
  }

  else
  {
    sub_255673644(v16, v13, type metadata accessor for SRGBColor);
    sub_25567352C(v13, a2, type metadata accessor for SRGBColor);
    v19 = v13[1];
    *a2 = *v13;
    *(a2 + 16) = v19;
    sub_25574FB00();
    sub_255673758(v13, type metadata accessor for SRGBColor);
    (*(v25 + 40))(a2 + *(v11 + 32), v10, v8);
  }

  return swift_storeEnumTagMultiPayload();
}

uint64_t SRGBColor.copy(renamingReferences:)@<X0>(char *a2@<X8>)
{
  v4 = sub_25574FB30();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25567352C(v2, a2, type metadata accessor for SRGBColor);
  v8 = v2[1];
  *a2 = *v2;
  *(a2 + 1) = v8;
  v9 = type metadata accessor for SRGBColor(0);
  sub_25574FB00();
  return (*(v5 + 40))(&a2[*(v9 + 32)], v7, v4);
}

uint64_t MergeableColor.encode(to:)()
{
  v1 = sub_25574F320();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for SRGBColor(0);
  MEMORY[0x28223BE20](v5);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for MergeableColor(0);
  MEMORY[0x28223BE20](v8);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_25574FF20();
  if (!v0)
  {
    sub_25567352C(v21, v10, type metadata accessor for MergeableColor);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        v14 = *(v10 + 1);
        v15 = v10[16];
        v18 = *v10;
        v13 = v18;
        v19 = v14;
        v20 = v15;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE3C0, &unk_255756A30);
        sub_255669798(&qword_27F7BE3D0, &qword_27F7BE3C0, &unk_255756A30, MEMORY[0x277CFB528]);
        sub_25574FF50();
        sub_2556AA66C(v13, v14, v15);
        sub_25574FF30();
      }

      else
      {
        v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BFFF0, &qword_255755250);
        (*(v2 + 32))(v4, &v10[*(v16 + 48)], v1);
        sub_25574FF50();
        sub_25574FF30();

        return (*(v2 + 8))(v4, v1);
      }
    }

    else
    {
      sub_255673644(v10, v7, type metadata accessor for SRGBColor);
      sub_255668360(&qword_27F7BE3E0, type metadata accessor for SRGBColor, &protocol conformance descriptor for SRGBColor);
      sub_25574FF50();
      sub_25574FF30();

      return sub_255673758(v7, type metadata accessor for SRGBColor);
    }
  }

  return result;
}

uint64_t sub_2556A9804@<X0>(unsigned int *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = sub_25574F770();
  v5 = *(*(v4 - 8) + 104);

  return v5(a2, v3, v4);
}

uint64_t SRGBColor.encode(to:)()
{
  result = sub_25574FF70();
  if (!v0)
  {
    sub_25574FF80();
    sub_25574FF80();
    sub_25574FF80();
    sub_25574FF80();
    type metadata accessor for SRGBColor(0);
    sub_25574FB10();
  }

  return result;
}

uint64_t sub_2556A99C4@<X0>(uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = sub_25574FB30();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25567352C(v3, a3, type metadata accessor for SRGBColor);
  v10 = v3[1];
  *a3 = *v3;
  *(a3 + 1) = v10;
  sub_25574FB00();
  return (*(v7 + 40))(&a3[*(a2 + 32)], v9, v6);
}

uint64_t sub_2556A9ADC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_255668360(&qword_27F7BE3E0, type metadata accessor for SRGBColor, &protocol conformance descriptor for SRGBColor);
  sub_255668360(&qword_27F7BE3E8, type metadata accessor for SRGBColor, &protocol conformance descriptor for SRGBColor);

  return sub_25574FDD0();
}

uint64_t sub_2556A9C0C@<X0>(unsigned int *a1@<X2>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = sub_25574F770();
  v5 = *(*(v4 - 8) + 104);

  return v5(a2, v3, v4);
}

char *sub_2556A9C78(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2556A9D58(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_2556A9C98(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2556A9E5C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_2556A9CB8(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2556AA368(a1, a2, a3, *v3, &qword_27F7BE4C0, &qword_255757010, &qword_27F7BE4C8, &qword_255757018);
  *v3 = result;
  return result;
}

char *sub_2556A9CF8(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2556A9F50(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_2556A9D18(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2556AA060(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_2556A9D38(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2556AA16C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_2556A9D58(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE4D0, &qword_255757020);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

char *sub_2556A9E5C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE4B8, &qword_255757008);
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

char *sub_2556A9F50(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE4B0, &qword_255757000);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_2556AA060(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE090, &qword_255755C40);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_2556AA16C(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE0A0, &qword_255756FE0);
  v10 = *(sub_25574F0D0() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_25574F0D0() - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

void *sub_2556AA368(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (!v15)
  {
    v19 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v16 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a7, a8) - 8);
  v17 = *(v16 + 72);
  v18 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v19 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v19);
  if (!v17)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v18) == 0x8000000000000000 && v17 == -1)
  {
    goto LABEL_29;
  }

  v19[2] = v14;
  v19[3] = 2 * ((result - v18) / v17);
LABEL_19:
  v21 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a7, a8) - 8);
  if (v11)
  {
    if (v19 < a4 || (v22 = (*(v21 + 80) + 32) & ~*(v21 + 80), v19 + v22 >= a4 + v22 + *(v21 + 72) * v14))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v19 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v19;
}

unint64_t sub_2556AA550(unint64_t result)
{
  if (result)
  {
    v1 = result;
    v3 = 0;
    MEMORY[0x259C3F540](&v3, 8);
    result = (v3 * v1) >> 64;
    if (v3 * v1 < v1)
    {
      v2 = -v1 % v1;
      if (v2 > v3 * v1)
      {
        do
        {
          v3 = 0;
          MEMORY[0x259C3F540](&v3, 8);
        }

        while (v2 > v3 * v1);
        return (v3 * v1) >> 64;
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t _s13JournalShared9SRGBColorV2eeoiySbAC_ACtFZ_0(double *a1, double *a2)
{
  if (*a1 != *a2 || a1[1] != a2[1] || a1[2] != a2[2] || a1[3] != a2[3])
  {
    return 0;
  }

  type metadata accessor for SRGBColor(0);

  return sub_25574FAF0();
}

uint64_t sub_2556AA66C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_2556AA69C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BFFF0, &qword_255755250);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_2556AA758()
{
  result = qword_27F7BE408;
  if (!qword_27F7BE408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7BE408);
  }

  return result;
}

unint64_t sub_2556AA7F4()
{
  result = qword_27F7BE420;
  if (!qword_27F7BE420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7BE420);
  }

  return result;
}

unint64_t sub_2556AA84C()
{
  result = qword_27F7BE428;
  if (!qword_27F7BE428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7BE428);
  }

  return result;
}

void sub_2556AA940(uint64_t a1)
{
  if (!qword_27F7BE478)
  {
    sub_2556AA9BC();
    v1 = sub_25574F540();
    if (!v2)
    {
      atomic_store(v1, &qword_27F7BE478);
    }
  }
}

unint64_t sub_2556AA9BC()
{
  result = qword_27F7BE480;
  if (!qword_27F7BE480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7BE480);
  }

  return result;
}

unint64_t sub_2556AAA10()
{
  result = qword_27F7BE498;
  if (!qword_27F7BE498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7BE498);
  }

  return result;
}

uint64_t sub_2556AAA64(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BFFF0, &qword_255755250);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2556AAAD4()
{
  v0 = sub_25574F2C0();
  __swift_allocate_value_buffer(v0, qword_27F7BE4D8);
  __swift_project_value_buffer(v0, qword_27F7BE4D8);
  return sub_25574F2B0();
}

BOOL JournalEntryMO.isRecentlyDeleted.getter()
{
  v1 = v0;
  v2 = sub_25574F020();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEB40, &unk_255754E40);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v11 - v7;
  v9 = [v1 deletedOnDate];
  if (v9)
  {
    sub_25574EFF0();

    (*(v3 + 32))(v8, v5, v2);
    (*(v3 + 56))(v8, 0, 1, v2);
  }

  else
  {
    (*(v3 + 56))(v8, 1, 1, v2);
  }

  sub_255687634(v8);
  return v9 != 0;
}

id JournalEntryMO.isPermanentlyDeleted.getter()
{
  result = [v0 isRemovedFromCloud];
  if (result)
  {
    return ([v0 isUploadedToCloud] ^ 1);
  }

  return result;
}

Swift::Void __swiftcall JournalEntryMO.markAsRecentlyDeleted()()
{
  v1 = v0;
  v2 = sub_25574F020();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25574F000();
  v6 = sub_25574EFC0();
  (*(v3 + 8))(v5, v2);
  [v1 setDeletedOnDate_];

  [v1 setIsUploadedToCloud_];
}

Swift::Void __swiftcall JournalEntryMO.recoverRecentlyDeleted()()
{
  [v0 setDeletedOnDate_];

  [v0 setIsUploadedToCloud_];
}

Swift::Void __swiftcall JournalEntryMO.markAsPermanentlyDeleted()()
{
  [v0 setIsRemovedFromCloud_];

  [v0 setIsUploadedToCloud_];
}

void static JournalDataUtilities.recoverAllRecentlyDeletedEntries(context:)()
{
  v1 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v2 = sub_255750180();
  v3 = [v1 initWithEntityName_];

  if (qword_27F7BD6B0 != -1)
  {
    swift_once();
  }

  [v3 setPredicate_];
  type metadata accessor for JournalEntryMO();
  v4 = sub_2557508C0();
  if (v0)
  {

    return;
  }

  v5 = v4;
  if (!(v4 >> 62))
  {
    v6 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v6)
    {
      goto LABEL_7;
    }

LABEL_14:

    return;
  }

  v6 = sub_255750A30();
  if (!v6)
  {
    goto LABEL_14;
  }

LABEL_7:
  if (v6 >= 1)
  {
    v7 = 0;
    do
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x259C3E830](v7, v5);
      }

      else
      {
        v8 = *(v5 + 8 * v7 + 32);
      }

      v9 = v8;
      ++v7;
      [v8 setDeletedOnDate_];
      [v9 setIsUploadedToCloud_];
    }

    while (v6 != v7);
    goto LABEL_14;
  }

  __break(1u);
}

void static JournalDataUtilities.permanentlyDeleteAllRecentlyDeletedEntries(context:)()
{
  v1 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v2 = sub_255750180();
  v3 = [v1 initWithEntityName_];

  if (qword_27F7BD6B0 != -1)
  {
    swift_once();
  }

  [v3 setPredicate_];
  type metadata accessor for JournalEntryMO();
  v4 = sub_2557508C0();
  if (v0)
  {

    return;
  }

  v5 = v4;
  if (!(v4 >> 62))
  {
    v6 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v6)
    {
      goto LABEL_7;
    }

LABEL_14:

    return;
  }

  v6 = sub_255750A30();
  if (!v6)
  {
    goto LABEL_14;
  }

LABEL_7:
  if (v6 >= 1)
  {
    v7 = 0;
    do
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x259C3E830](v7, v5);
      }

      else
      {
        v8 = *(v5 + 8 * v7 + 32);
      }

      v9 = v8;
      ++v7;
      [v8 setIsRemovedFromCloud_];
      [v9 setIsUploadedToCloud_];
    }

    while (v6 != v7);
    goto LABEL_14;
  }

  __break(1u);
}

void static JournalDataUtilities.permanentlyDeleteRecentlyDeletedExpiredEntries(context:)()
{
  v1 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v2 = sub_255750180();
  v3 = [v1 initWithEntityName_];

  v4 = _sSo11NSPredicateC13JournalSharedE043recentlyDeletedEntriesToBeLocallyPermanenlyE0ABvgZ_0();
  [v3 setPredicate_];

  type metadata accessor for JournalEntryMO();
  v5 = sub_2557508C0();
  if (v0)
  {
  }

  else
  {
    v6 = v5;
    v7 = v5 >> 62;
    if (v5 >> 62)
    {
      goto LABEL_23;
    }

    for (i = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_255750A30())
    {
      if (qword_27F7BD6E8 != -1)
      {
        swift_once();
      }

      v9 = sub_25574F2C0();
      __swift_project_value_buffer(v9, qword_27F7BE4D8);

      v10 = sub_25574F2A0();
      v11 = sub_2557507A0();
      v17 = v3;
      if (os_log_type_enabled(v10, v11))
      {
        v12 = swift_slowAlloc();
        *v12 = 134217984;
        if (v7)
        {
          v13 = sub_255750A30();
        }

        else
        {
          v13 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        *(v12 + 4) = v13;

        _os_log_impl(&dword_255661000, v10, v11, "permanentlyDeleteRecentlyDeletedExpiredEntries found %ld to delete.", v12, 0xCu);
        MEMORY[0x259C3F520](v12, -1, -1);
      }

      else
      {
      }

      v14 = 0;
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if ((v6 & 0xC000000000000001) != 0)
        {
          v15 = MEMORY[0x259C3E830](v14, v6);
        }

        else
        {
          if (v14 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_22;
          }

          v15 = *(v6 + 8 * v14 + 32);
        }

        v16 = v15;
        v3 = (v14 + 1);
        if (__OFADD__(v14, 1))
        {
          break;
        }

        [v15 setIsRemovedFromCloud_];
        [v16 setIsUploadedToCloud_];

        ++v14;
        if (v3 == i)
        {

          return;
        }
      }

      __break(1u);
LABEL_22:
      __break(1u);
LABEL_23:
      ;
    }
  }
}

uint64_t PhotoLibraryAssetMetadata.assetIdentifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t PhotoLibraryAssetMetadata.placeName.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for PhotoLibraryAssetMetadata(0) + 24));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t PhotoLibraryAssetMetadata.latitude.setter(uint64_t a1, char a2)
{
  result = type metadata accessor for PhotoLibraryAssetMetadata(0);
  v6 = v2 + *(result + 28);
  *v6 = a1;
  *(v6 + 8) = a2 & 1;
  return result;
}

uint64_t PhotoLibraryAssetMetadata.longitude.setter(uint64_t a1, char a2)
{
  result = type metadata accessor for PhotoLibraryAssetMetadata(0);
  v6 = v2 + *(result + 32);
  *v6 = a1;
  *(v6 + 8) = a2 & 1;
  return result;
}

uint64_t PhotoLibraryAssetMetadata.squareCropRect.getter()
{
  v1 = *(v0 + *(type metadata accessor for PhotoLibraryAssetMetadata(0) + 40));

  return v1;
}

uint64_t PhotoLibraryAssetMetadata.landscapeCropRect.getter()
{
  v1 = *(v0 + *(type metadata accessor for PhotoLibraryAssetMetadata(0) + 44));

  return v1;
}

uint64_t PhotoLibraryAssetMetadata.portraitCropRect.getter()
{
  v1 = *(v0 + *(type metadata accessor for PhotoLibraryAssetMetadata(0) + 48));

  return v1;
}

uint64_t PhotoLibraryAssetMetadata.init(assetIdentifier:date:placeName:latitude:longitude:size:squareCropRect:landscapeCropRect:portraitCropRect:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char a7@<W6>, uint64_t a8@<X7>, void *a9@<X8>, char a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  v23 = type metadata accessor for PhotoLibraryAssetMetadata(0);
  v24 = (a9 + v23[6]);
  v25 = a9 + v23[7];
  v26 = a9 + v23[8];
  *a9 = a1;
  a9[1] = a2;
  result = sub_2556719B8(a3, a9 + v23[5]);
  *v24 = a4;
  v24[1] = a5;
  *v25 = a6;
  v25[8] = a7 & 1;
  *v26 = a8;
  v26[8] = a10 & 1;
  v28 = a9 + v23[9];
  *v28 = a11;
  *(v28 + 1) = a12;
  v28[16] = a13 & 1;
  v29 = (a9 + v23[10]);
  *v29 = a14;
  v29[1] = a15;
  v30 = (a9 + v23[11]);
  *v30 = a16;
  v30[1] = a17;
  v31 = (a9 + v23[12]);
  *v31 = a18;
  v31[1] = a19;
  return result;
}

uint64_t sub_2556AB95C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_2556ABEB4(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_2556AB990(uint64_t a1)
{
  v2 = sub_25567159C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2556AB9CC(uint64_t a1)
{
  v2 = sub_25567159C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t PhotoLibraryAssetMetadata.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE4F0, &qword_255757038);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v13[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25567159C();
  sub_255750FF0();
  LOBYTE(v14) = 0;
  sub_255750DB0();
  if (!v2)
  {
    v9 = type metadata accessor for PhotoLibraryAssetMetadata(0);
    LOBYTE(v14) = 1;
    sub_25574F020();
    sub_255671778(&qword_27F7BDC18, MEMORY[0x277CC9578], MEMORY[0x277CC9580]);
    sub_255750DF0();
    LOBYTE(v14) = 2;
    sub_255750DB0();
    LOBYTE(v14) = 3;
    sub_255750DD0();
    LOBYTE(v14) = 4;
    sub_255750DD0();
    v10 = (v3 + *(v9 + 36));
    v11 = *(v10 + 16);
    v14 = *v10;
    v15 = v11;
    v13[15] = 5;
    type metadata accessor for CGSize(0);
    sub_255671778(&qword_27F7BE500, type metadata accessor for CGSize, MEMORY[0x277CBF288]);
    sub_255750DF0();
    LOBYTE(v14) = 6;
    sub_255750DB0();
    LOBYTE(v14) = 7;
    sub_255750DB0();
    LOBYTE(v14) = 8;
    sub_255750DB0();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_2556ABD74(uint64_t a1)
{
  *(a1 + 8) = sub_255671778(&qword_27F7BE518, type metadata accessor for PhotoLibraryAssetMetadata, &protocol conformance descriptor for PhotoLibraryAssetMetadata);
  result = sub_255671778(&qword_27F7BE520, type metadata accessor for PhotoLibraryAssetMetadata, &protocol conformance descriptor for PhotoLibraryAssetMetadata);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_2556ABDF8(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 48));

  return v2;
}

unint64_t sub_2556ABE60()
{
  result = qword_27F7BE548;
  if (!qword_27F7BE548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7BE548);
  }

  return result;
}

uint64_t sub_2556ABEB4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6564497465737361 && a2 == 0xEF7265696669746ELL;
  if (v4 || (sub_255750EB0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1702125924 && a2 == 0xE400000000000000 || (sub_255750EB0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6D614E6563616C70 && a2 == 0xE900000000000065 || (sub_255750EB0() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x656475746974616CLL && a2 == 0xE800000000000000 || (sub_255750EB0() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x64757469676E6F6CLL && a2 == 0xE900000000000065 || (sub_255750EB0() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 1702521203 && a2 == 0xE400000000000000 || (sub_255750EB0() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x7243657261757173 && a2 == 0xEE0074636552706FLL || (sub_255750EB0() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000255752930 == a2 || (sub_255750EB0() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000255752950 == a2)
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

uint64_t sub_2556AC1BC()
{
  v0 = sub_25574F2C0();
  __swift_allocate_value_buffer(v0, qword_27F7BE560);
  v1 = __swift_project_value_buffer(v0, qword_27F7BE560);
  if (qword_27F7BD5B8 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_27F7C04B0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void static SyncDataMO.removeStateToken(context:)(void *a1)
{
  v2 = sub_2556AC648(a1);
  if (!v1)
  {
    v3 = v2;
    if (v2)
    {
      [v2 setStatedata:0];
      [v3 setMetadata:0];
    }

    else
    {
      if (qword_27F7BD6F0 != -1)
      {
        swift_once();
      }

      v4 = sub_25574F2C0();
      __swift_project_value_buffer(v4, qword_27F7BE560);
      v3 = sub_25574F2A0();
      v5 = sub_255750770();
      if (os_log_type_enabled(v3, v5))
      {
        v6 = swift_slowAlloc();
        *v6 = 0;
        _os_log_impl(&dword_255661000, v3, v5, "No sync data", v6, 2u);
        MEMORY[0x259C3F520](v6, -1, -1);
      }
    }
  }
}

void static SyncDataMO.decodedSyncEngineStateData(context:)(uint64_t a1@<X8>, void *a2@<X0>)
{
  v4 = sub_2556AC648(a2);
  if (!v2)
  {
    if (v4)
    {
      v5 = v4;
      v6 = [v4 statedata];
      if (v6)
      {
        v7 = v6;
        v8 = sub_25574EF90();
        v10 = v9;

        sub_25574EB00();
        swift_allocObject();
        sub_25574EAF0();
        v11 = sub_25574F2D0();
        sub_2556AC9D4();
        sub_25574EAE0();

        sub_2556755A8(v8, v10);

        (*(*(v11 - 8) + 56))(a1, 0, 1, v11);
        return;
      }
    }

    v12 = sub_25574F2D0();
    (*(*(v12 - 8) + 56))(a1, 1, 1, v12);
  }
}

id sub_2556AC648(id a1)
{
  v3 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v4 = sub_255750180();
  v5 = [v3 initWithEntityName_];

  type metadata accessor for SyncDataMO();
  v6 = sub_2557508C0();
  if (!v1)
  {
    v7 = v6;
    v8 = v6 >> 62;
    if (v6 >> 62)
    {
      if (sub_255750A30() < 2)
      {
        goto LABEL_12;
      }
    }

    else if (*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) < 2)
    {
      goto LABEL_12;
    }

    if (qword_27F7BD6F0 != -1)
    {
      goto LABEL_25;
    }

    while (1)
    {
      v9 = sub_25574F2C0();
      __swift_project_value_buffer(v9, qword_27F7BE560);

      v10 = sub_25574F2A0();
      v11 = sub_255750780();
      if (os_log_type_enabled(v10, v11))
      {
        v12 = swift_slowAlloc();
        *v12 = 134217984;
        v13 = v8 ? sub_255750A30() : *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
        *(v12 + 4) = v13;

        _os_log_impl(&dword_255661000, v10, v11, "%ld sync data objects found!", v12, 0xCu);
        MEMORY[0x259C3F520](v12, -1, -1);
      }

      else
      {
      }

LABEL_12:
      if (v8)
      {
        if (!sub_255750A30())
        {
LABEL_19:

          return 0;
        }
      }

      else if (!*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_19;
      }

      if ((v7 & 0xC000000000000001) != 0)
      {
        break;
      }

      if (*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v14 = *(v7 + 32);
LABEL_17:
        a1 = v14;

        return a1;
      }

      __break(1u);
LABEL_25:
      swift_once();
    }

    v14 = MEMORY[0x259C3E830](0, v7);
    goto LABEL_17;
  }

  return a1;
}

void sub_2556AC8A4(void *a1)
{
  v2 = sub_2556AC648(a1);
  if (!v1)
  {
    v3 = v2;
    if (v2)
    {
      [v2 setMetadata:0];
      [v3 setStatedata:0];
      [v3 setUserId:0];
    }

    else
    {
      if (qword_27F7BD6F0 != -1)
      {
        swift_once();
      }

      v4 = sub_25574F2C0();
      __swift_project_value_buffer(v4, qword_27F7BE560);
      v3 = sub_25574F2A0();
      v5 = sub_255750770();
      if (os_log_type_enabled(v3, v5))
      {
        v6 = swift_slowAlloc();
        *v6 = 0;
        _os_log_impl(&dword_255661000, v3, v5, "No sync data", v6, 2u);
        MEMORY[0x259C3F520](v6, -1, -1);
      }
    }
  }
}

unint64_t sub_2556AC9D4()
{
  result = qword_27F7BE578;
  if (!qword_27F7BE578)
  {
    sub_25574F2D0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7BE578);
  }

  return result;
}

uint64_t sub_2556ACA2C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEC80, &qword_255757E90);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t BookAssetMetadata.mediaId.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t BookAssetMetadata.title.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t BookAssetMetadata.author.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t BookAssetMetadata.timeOfPurchase.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for BookAssetMetadata(0) + 28);

  return sub_2556700F4(v3, a1);
}

uint64_t type metadata accessor for BookAssetMetadata(uint64_t a1)
{
  result = qword_27F7BE5A8;
  if (!qword_27F7BE5A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t BookAssetMetadata.init(mediaId:title:author:timeOfPurchase:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, void *a8@<X8>)
{
  *a8 = a1;
  a8[1] = a2;
  a8[2] = a3;
  a8[3] = a4;
  a8[4] = a5;
  a8[5] = a6;
  v9 = a8 + *(type metadata accessor for BookAssetMetadata(0) + 28);

  return sub_2556719B8(a7, v9);
}

uint64_t sub_2556ACC08()
{
  v1 = 0x6449616964656DLL;
  v2 = 0x726F68747561;
  if (*v0 != 2)
  {
    v2 = 0x7550664F656D6974;
  }

  if (*v0)
  {
    v1 = 0x656C746974;
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

uint64_t sub_2556ACC88@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_2556AD6FC(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_2556ACCB0(uint64_t a1)
{
  v2 = sub_2556ACF64();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2556ACCEC(uint64_t a1)
{
  v2 = sub_2556ACF64();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t BookAssetMetadata.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE580, &qword_255757248);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2556ACF64();
  sub_255750FF0();
  v8[15] = 0;
  sub_255750E00();
  if (!v1)
  {
    v8[14] = 1;
    sub_255750DB0();
    v8[13] = 2;
    sub_255750DB0();
    type metadata accessor for BookAssetMetadata(0);
    v8[12] = 3;
    sub_25574F020();
    sub_2556717C0(&qword_27F7BDC18, MEMORY[0x277CC9578], MEMORY[0x277CC9580]);
    sub_255750DF0();
  }

  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_2556ACF64()
{
  result = qword_27F7BE588;
  if (!qword_27F7BE588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7BE588);
  }

  return result;
}

uint64_t BookAssetMetadata.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEB40, &unk_255754E40);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v20 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE590, &qword_255757250);
  v23 = *(v7 - 8);
  v24 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = v20 - v8;
  v10 = type metadata accessor for BookAssetMetadata(0);
  MEMORY[0x28223BE20](v10);
  v12 = (v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2556ACF64();
  sub_255750FE0();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v21 = v10;
  v13 = v6;
  v15 = v23;
  v14 = v24;
  v28 = 0;
  *v12 = sub_255750D50();
  v12[1] = v16;
  v27 = 1;
  v12[2] = sub_255750D00();
  v12[3] = v17;
  v26 = 2;
  v20[1] = 0;
  v12[4] = sub_255750D00();
  v12[5] = v18;
  sub_25574F020();
  v25 = 3;
  sub_2556717C0(&qword_27F7BDC38, MEMORY[0x277CC9578], MEMORY[0x277CC95A0]);
  sub_255750D40();
  (*(v15 + 8))(v9, v14);
  sub_2556719B8(v13, v12 + *(v21 + 28));
  sub_2556AD364(v12, v22);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_2556AD3C8(v12);
}

uint64_t sub_2556AD364(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BookAssetMetadata(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2556AD3C8(uint64_t a1)
{
  v2 = type metadata accessor for BookAssetMetadata(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2556AD424(uint64_t a1)
{
  *(a1 + 8) = sub_2556717C0(&qword_27F7BE598, type metadata accessor for BookAssetMetadata, &protocol conformance descriptor for BookAssetMetadata);
  result = sub_2556717C0(&qword_27F7BE5A0, type metadata accessor for BookAssetMetadata, &protocol conformance descriptor for BookAssetMetadata);
  *(a1 + 16) = result;
  return result;
}

void sub_2556AD500(uint64_t a1)
{
  sub_2556AD594();
  if (v1 <= 0x3F)
  {
    sub_25566E80C(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_2556AD594()
{
  if (!qword_27F7BE538)
  {
    v0 = sub_255750950();
    if (!v1)
    {
      atomic_store(v0, &qword_27F7BE538);
    }
  }
}

unint64_t sub_2556AD5F8()
{
  result = qword_27F7BE5B8;
  if (!qword_27F7BE5B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7BE5B8);
  }

  return result;
}

unint64_t sub_2556AD650()
{
  result = qword_27F7BE5C0;
  if (!qword_27F7BE5C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7BE5C0);
  }

  return result;
}

unint64_t sub_2556AD6A8()
{
  result = qword_27F7BE5C8;
  if (!qword_27F7BE5C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7BE5C8);
  }

  return result;
}

uint64_t sub_2556AD6FC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6449616964656DLL && a2 == 0xE700000000000000;
  if (v4 || (sub_255750EB0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656C746974 && a2 == 0xE500000000000000 || (sub_255750EB0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x726F68747561 && a2 == 0xE600000000000000 || (sub_255750EB0() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7550664F656D6974 && a2 == 0xEE00657361686372)
  {

    return 3;
  }

  else
  {
    v6 = sub_255750EB0();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

void *sub_2556AD8BC@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t (*a3)(void)@<X2>, unint64_t *a4@<X3>, uint64_t (*a5)(uint64_t)@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v13 = v7;
  result = sub_2556E2B44(a1, a2, &v37);
  if (!v8)
  {
    v36 = a1;
    v38 = 0;
    v18 = v37;
    v19 = a3(0);
    v20 = v19;
    if (*(&v18 + 1) >> 60 == 15)
    {
      return (*(*(v19 - 8) + 56))(a7, 1, 1, v19);
    }

    else
    {
      sub_255674F54(v18, *(&v18 + 1));
      sub_2556B0F04(a4, a5, a6);
      v21 = v38;
      sub_25574F4C0();
      if (v21)
      {
        v38 = v18;
        if (qword_27F7BD798 != -1)
        {
          swift_once();
        }

        v22 = sub_25574F2C0();
        __swift_project_value_buffer(v22, qword_27F7BF0B0);
        v23 = v13;

        v24 = v21;
        v25 = sub_25574F2A0();
        v26 = sub_255750780();

        if (os_log_type_enabled(v25, v26))
        {
          v27 = swift_slowAlloc();
          v34 = swift_slowAlloc();
          v35 = swift_slowAlloc();
          *&v37 = v35;
          *v27 = 136315650;
          v28 = sub_255750920();
          v30 = sub_2556E474C(v28, v29, &v37);

          *(v27 + 4) = v30;
          *(v27 + 12) = 2080;
          *(v27 + 14) = sub_2556E474C(v36, a2, &v37);
          *(v27 + 22) = 2112;
          v31 = v21;
          v32 = _swift_stdlib_bridgeErrorToNSError();
          *(v27 + 24) = v32;
          *v34 = v32;
          _os_log_impl(&dword_255661000, v25, v26, "Failed deserializing data from %s.%s. Error: %@", v27, 0x20u);
          sub_255674B20(v34, &qword_27F7BEC80, &qword_255757E90);
          MEMORY[0x259C3F520](v34, -1, -1);
          swift_arrayDestroy();
          MEMORY[0x259C3F520](v35, -1, -1);
          MEMORY[0x259C3F520](v27, -1, -1);
        }

        v33 = v38;
        swift_willThrow();
        return sub_2556A15B8(v33, *(&v18 + 1));
      }

      else
      {
        (*(*(v20 - 8) + 56))(a7, 0, 1, v20);
        return sub_2556A15B8(v18, *(&v18 + 1));
      }
    }
  }

  return result;
}

void sub_2556ADC68(uint64_t a1)
{
  v2 = v1;
  v4 = sub_25574F500();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for MergeableAppStorage(0);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v29 - v13;
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v29 - v16;
  MEMORY[0x28223BE20](v15);
  v19 = &v29 - v18;
  v20 = [v2 mergeableAttributes];
  if (v20)
  {
    v30 = v2;
    v21 = v20;
    sub_2556B0DD4(v20 + OBJC_IVAR___WrappedMergeableAppStorage_value, v17, type metadata accessor for MergeableAppStorage);

    sub_2556B0E3C(v17, v19, type metadata accessor for MergeableAppStorage);
    sub_2556B0DD4(a1, v14, type metadata accessor for MergeableAppStorage);
    MergeableAppStorage.merge(_:)(v19, v7);
    v22 = *(v5 + 8);
    v22(v7, v4);
    MergeableAppStorage.merge(_:)(v14, v7);
    v22(v7, v4);
    sub_2556B0DD4(v19, v11, type metadata accessor for MergeableAppStorage);
    v23 = type metadata accessor for WrappedMergeableAppStorage(0);
    v24 = objc_allocWithZone(v23);
    sub_2556B0DD4(v11, v24 + OBJC_IVAR___WrappedMergeableAppStorage_value, type metadata accessor for MergeableAppStorage);
    v32.receiver = v24;
    v32.super_class = v23;
    v25 = objc_msgSendSuper2(&v32, sel_init);
    sub_2556B0EA4(v11, type metadata accessor for MergeableAppStorage);
    [v30 setMergeableAttributes_];

    sub_2556B0EA4(v14, type metadata accessor for MergeableAppStorage);
    sub_2556B0EA4(v19, type metadata accessor for MergeableAppStorage);
  }

  else
  {
    sub_2556B0DD4(a1, v14, type metadata accessor for MergeableAppStorage);
    v26 = type metadata accessor for WrappedMergeableAppStorage(0);
    v27 = objc_allocWithZone(v26);
    sub_2556B0DD4(v14, v27 + OBJC_IVAR___WrappedMergeableAppStorage_value, type metadata accessor for MergeableAppStorage);
    v31.receiver = v27;
    v31.super_class = v26;
    v28 = objc_msgSendSuper2(&v31, sel_init);
    sub_2556B0EA4(v14, type metadata accessor for MergeableAppStorage);
    [v2 setMergeableAttributes_];
  }
}

void sub_2556ADFBC(uint64_t a1)
{
  v2 = v1;
  v4 = sub_25574F500();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for MergeableJournalAttributes(0);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v29 - v13;
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v29 - v16;
  MEMORY[0x28223BE20](v15);
  v19 = &v29 - v18;
  v20 = [v2 mergeableAttributes];
  if (v20)
  {
    v30 = v2;
    v21 = v20;
    sub_2556B0DD4(v20 + OBJC_IVAR___WrappedMergeableJournalAttributes_value, v17, type metadata accessor for MergeableJournalAttributes);

    sub_2556B0E3C(v17, v19, type metadata accessor for MergeableJournalAttributes);
    sub_2556B0DD4(a1, v14, type metadata accessor for MergeableJournalAttributes);
    MergeableJournalAttributes.merge(_:)(v19, v7);
    v22 = *(v5 + 8);
    v22(v7, v4);
    MergeableJournalAttributes.merge(_:)(v14, v7);
    v22(v7, v4);
    sub_2556B0DD4(v19, v11, type metadata accessor for MergeableJournalAttributes);
    v23 = type metadata accessor for WrappedMergeableJournalAttributes(0);
    v24 = objc_allocWithZone(v23);
    sub_2556B0DD4(v11, v24 + OBJC_IVAR___WrappedMergeableJournalAttributes_value, type metadata accessor for MergeableJournalAttributes);
    v32.receiver = v24;
    v32.super_class = v23;
    v25 = objc_msgSendSuper2(&v32, sel_init);
    sub_2556B0EA4(v11, type metadata accessor for MergeableJournalAttributes);
    [v30 setMergeableAttributes_];

    sub_2556B0EA4(v14, type metadata accessor for MergeableJournalAttributes);
    sub_2556B0EA4(v19, type metadata accessor for MergeableJournalAttributes);
  }

  else
  {
    sub_2556B0DD4(a1, v14, type metadata accessor for MergeableJournalAttributes);
    v26 = type metadata accessor for WrappedMergeableJournalAttributes(0);
    v27 = objc_allocWithZone(v26);
    sub_2556B0DD4(v14, v27 + OBJC_IVAR___WrappedMergeableJournalAttributes_value, type metadata accessor for MergeableJournalAttributes);
    v31.receiver = v27;
    v31.super_class = v26;
    v28 = objc_msgSendSuper2(&v31, sel_init);
    sub_2556B0EA4(v14, type metadata accessor for MergeableJournalAttributes);
    [v2 setMergeableAttributes_];
  }
}

void sub_2556AE310(uint64_t a1)
{
  v2 = v1;
  v4 = sub_25574F500();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for MergeableEntryAttributes(0);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v29 - v13;
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v29 - v16;
  MEMORY[0x28223BE20](v15);
  v19 = &v29 - v18;
  v20 = [v2 mergeableAttributes];
  if (v20)
  {
    v30 = v2;
    v21 = v20;
    sub_2556B0DD4(v20 + OBJC_IVAR___WrappedMergeableEntryAttributes_value, v17, type metadata accessor for MergeableEntryAttributes);

    sub_2556B0E3C(v17, v19, type metadata accessor for MergeableEntryAttributes);
    sub_2556B0DD4(a1, v14, type metadata accessor for MergeableEntryAttributes);
    MergeableEntryAttributes.merge(_:)(v19);
    v22 = *(v5 + 8);
    v22(v7, v4);
    MergeableEntryAttributes.merge(_:)(v14);
    v22(v7, v4);
    sub_2556B0DD4(v19, v11, type metadata accessor for MergeableEntryAttributes);
    v23 = type metadata accessor for WrappedMergeableEntryAttributes(0);
    v24 = objc_allocWithZone(v23);
    sub_2556B0DD4(v11, v24 + OBJC_IVAR___WrappedMergeableEntryAttributes_value, type metadata accessor for MergeableEntryAttributes);
    v32.receiver = v24;
    v32.super_class = v23;
    v25 = objc_msgSendSuper2(&v32, sel_init);
    sub_2556B0EA4(v11, type metadata accessor for MergeableEntryAttributes);
    [v30 setMergeableAttributes_];

    sub_2556B0EA4(v14, type metadata accessor for MergeableEntryAttributes);
    sub_2556B0EA4(v19, type metadata accessor for MergeableEntryAttributes);
  }

  else
  {
    sub_2556B0DD4(a1, v14, type metadata accessor for MergeableEntryAttributes);
    v26 = type metadata accessor for WrappedMergeableEntryAttributes(0);
    v27 = objc_allocWithZone(v26);
    sub_2556B0DD4(v14, v27 + OBJC_IVAR___WrappedMergeableEntryAttributes_value, type metadata accessor for MergeableEntryAttributes);
    v31.receiver = v27;
    v31.super_class = v26;
    v28 = objc_msgSendSuper2(&v31, sel_init);
    sub_2556B0EA4(v14, type metadata accessor for MergeableEntryAttributes);
    [v2 setMergeableAttributes_];
  }
}

uint64_t sub_2556AE664()
{
  v0 = sub_25574F2C0();
  __swift_allocate_value_buffer(v0, qword_27F7BE5D0);
  __swift_project_value_buffer(v0, qword_27F7BE5D0);
  return sub_25574F2B0();
}

id static AppStorageMO.newObjectFromRecord(_:context:)(void *a1, uint64_t a2)
{
  v77 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE5E8, &qword_255757420);
  MEMORY[0x28223BE20](v3 - 8);
  v80 = &v66 - v4;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F7BFFD0, &unk_255757E80);
  MEMORY[0x28223BE20](v83);
  v76 = &v66 - v5;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F7BED20, &unk_2557551D0);
  v6 = MEMORY[0x28223BE20](v75);
  v8 = &v66 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v66 - v10;
  MEMORY[0x28223BE20](v9);
  v13 = &v66 - v12;
  v14 = sub_25574F0D0();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x28223BE20](v14);
  v74 = &v66 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v73 = &v66 - v19;
  MEMORY[0x28223BE20](v18);
  v21 = &v66 - v20;
  v78 = a1;
  v22 = [a1 recordID];
  v23 = [v22 recordName];

  sub_2557501B0();
  sub_25574F030();
  v24 = v14;

  v25 = *(v15 + 48);
  if (v25(v13, 1, v24) == 1)
  {
    sub_255674B20(v13, &unk_27F7BED20, &unk_2557551D0);
    sub_25568B1D0();
    swift_allocError();
    *v26 = 5;
    swift_willThrow();
    return v23;
  }

  v27 = *(v15 + 32);
  v68 = v15 + 32;
  v69 = v8;
  v67 = v27;
  v27(v21, v13, v24);
  v28 = *(v15 + 16);
  v71 = v15 + 16;
  v72 = v21;
  v70 = v28;
  v28(v11, v21, v24);
  v82 = v15;
  (*(v15 + 56))(v11, 0, 1, v24);
  if (qword_27F7BD750 != -1)
  {
    swift_once();
  }

  v29 = __swift_project_value_buffer(v75, qword_27F7C0558);
  v30 = *(v83 + 48);
  v31 = v76;
  sub_255663294(v11, v76, &unk_27F7BED20, &unk_2557551D0);
  sub_255663294(v29, v31 + v30, &unk_27F7BED20, &unk_2557551D0);
  v32 = v25(v31, 1, v24);
  v83 = v24;
  if (v32 == 1)
  {
    sub_255674B20(v11, &unk_27F7BED20, &unk_2557551D0);
    v33 = v25((v31 + v30), 1, v24);
    v34 = v81;
    if (v33 == 1)
    {
      sub_255674B20(v31, &unk_27F7BED20, &unk_2557551D0);
      v35 = v72;
      goto LABEL_17;
    }

    goto LABEL_10;
  }

  v75 = v11;
  v36 = v69;
  sub_255663294(v31, v69, &unk_27F7BED20, &unk_2557551D0);
  v37 = v25((v31 + v30), 1, v24);
  v38 = v82;
  if (v37 == 1)
  {
    sub_255674B20(v75, &unk_27F7BED20, &unk_2557551D0);
    (*(v38 + 8))(v36, v24);
    v34 = v81;
LABEL_10:
    sub_255674B20(v31, &unk_27F7BFFD0, &unk_255757E80);
    v35 = v72;
LABEL_11:
    if (qword_27F7BD6F8 != -1)
    {
      swift_once();
    }

    v39 = sub_25574F2C0();
    __swift_project_value_buffer(v39, qword_27F7BE5D0);
    v40 = v74;
    v70(v74, v35, v24);
    v41 = sub_25574F2A0();
    v42 = sub_255750780();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v84 = v44;
      *v43 = 136315138;
      sub_2556B0F04(&qword_27F7BF200, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v45 = sub_255750E60();
      v47 = v46;
      (*(v82 + 8))(v40, v83);
      v48 = sub_2556E474C(v45, v47, &v84);

      *(v43 + 4) = v48;
      _os_log_impl(&dword_255661000, v41, v42, "Received a record with unexpected identifier: %s.", v43, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v44);
      MEMORY[0x259C3F520](v44, -1, -1);
      MEMORY[0x259C3F520](v43, -1, -1);
    }

    else
    {

      (*(v82 + 8))(v40, v24);
    }

    goto LABEL_17;
  }

  v49 = v31 + v30;
  v50 = v73;
  v67(v73, v49, v24);
  sub_2556B0F04(&qword_27F7BE0B8, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
  v51 = v31;
  v52 = sub_255750100();
  v53 = *(v38 + 8);
  v53(v50, v24);
  sub_255674B20(v75, &unk_27F7BED20, &unk_2557551D0);
  v53(v36, v83);
  v24 = v83;
  sub_255674B20(v51, &unk_27F7BED20, &unk_2557551D0);
  v34 = v81;
  v35 = v72;
  if ((v52 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_17:
  v54 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v23 = [v54 initWithContext_];
  v55 = sub_25574F050();
  [v23 setId_];

  [v23 setIsUploadedToCloud_];
  v56 = [objc_allocWithZone(MEMORY[0x277CCAAB0]) initRequiringSecureCoding_];
  [v78 encodeSystemFieldsWithCoder_];
  v57 = [v56 encodedData];
  v58 = sub_25574EF90();
  v60 = v59;

  v61 = sub_25574EF80();
  sub_2556755A8(v58, v60);
  [v23 setRecordSystemFields_];

  v62 = v79;
  v63 = v80;
  sub_2556AD8BC(0xD000000000000013, 0x8000000255752490, type metadata accessor for MergeableAppStorage, &qword_27F7BE5F8, type metadata accessor for MergeableAppStorage, &protocol conformance descriptor for MergeableAppStorage, v80);
  if (v62)
  {
    (*(v82 + 8))(v35, v83);
  }

  else
  {
    v64 = sub_2556B0F04(&qword_27F7BE5F0, type metadata accessor for AppStorageMO, &protocol conformance descriptor for AppStorageMO);
    MergeableProvider.unwrappedMergeableAttributes.setter(v63, v34, v64);
    (*(v82 + 8))(v35, v83);
  }

  return v23;
}

id AppStorageMO.cloudKitRecord.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F7BED20, &unk_2557551D0);
  MEMORY[0x28223BE20](v1);
  v3 = &v38[-1] - v2;
  v4 = type metadata accessor for MergeableAppStorage(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v38[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE5E8, &qword_255757420);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v38[-1] - v9;
  v11 = sub_2556AF87C(0x61726F7453707041, 0xEA00000000006567, type metadata accessor for AppStorageMO);
  if (v11)
  {
    v12 = [v0 mergeableAttributes];
    if (v12)
    {
      v13 = v12;
      sub_2556B0DD4(v12 + OBJC_IVAR___WrappedMergeableAppStorage_value, v10, type metadata accessor for MergeableAppStorage);

      (*(v5 + 56))(v10, 0, 1, v4);
    }

    else
    {
      (*(v5 + 56))(v10, 1, 1, v4);
    }

    if ((*(v5 + 48))(v10, 1, v4))
    {
      sub_255674B20(v10, &qword_27F7BE5E8, &qword_255757420);
      v23 = 0;
      v24 = 0xF000000000000000;
    }

    else
    {
      sub_2556B0DD4(v10, v7, type metadata accessor for MergeableAppStorage);
      sub_255674B20(v10, &qword_27F7BE5E8, &qword_255757420);
      if (qword_27F7BD768 != -1)
      {
        swift_once();
      }

      if (qword_27F7BD760 != -1)
      {
        swift_once();
      }

      v30 = sub_25574F770();
      __swift_project_value_buffer(v30, qword_27F7C0570);
      sub_2556B0F04(&qword_27F7BE5F8, type metadata accessor for MergeableAppStorage, &protocol conformance descriptor for MergeableAppStorage);
      v23 = sub_25574F4B0();
      v24 = v31;
      sub_2556B0EA4(v7, type metadata accessor for MergeableAppStorage);
    }

    v25 = [v11 encryptedValues];
    if (v24 >> 60 == 15)
    {
      v26 = 0;
      v27 = 0;
      v28 = 0;
      v29 = 0;
      v38[2] = 0;
    }

    else
    {
      v29 = MEMORY[0x277CBBBE0];
      v28 = MEMORY[0x277CC9318];
      v26 = v23;
      v27 = v24;
    }

    v38[0] = v26;
    v38[1] = v27;
    v38[3] = v28;
    v38[4] = v29;
    swift_getObjectType();
    sub_25567625C(v23, v24);
    sub_2557508E0();
    sub_2556A15B8(v23, v24);
    swift_unknownObjectRelease();
  }

  else
  {
    if (qword_27F7BD6F8 != -1)
    {
      swift_once();
    }

    v14 = sub_25574F2C0();
    __swift_project_value_buffer(v14, qword_27F7BE5D0);
    v15 = v0;
    v16 = sub_25574F2A0();
    v17 = sub_255750780();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v38[0] = v19;
      *v18 = 136315138;
      v20 = [v15 id];
      if (v20)
      {
        v21 = v20;
        sub_25574F080();

        v22 = sub_25574F0D0();
        (*(*(v22 - 8) + 56))(v3, 0, 1, v22);
      }

      else
      {
        v32 = sub_25574F0D0();
        (*(*(v32 - 8) + 56))(v3, 1, 1, v32);
      }

      v33 = sub_2557501D0();
      v35 = sub_2556E474C(v33, v34, v38);

      *(v18 + 4) = v35;
      _os_log_impl(&dword_255661000, v16, v17, "Failed to create partial CKRecord for AppStorageMO with id: %s.", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v19);
      MEMORY[0x259C3F520](v19, -1, -1);
      MEMORY[0x259C3F520](v18, -1, -1);
    }
  }

  return v11;
}

id sub_2556AF87C(uint64_t a1, unint64_t a2, uint64_t (*a3)(void))
{
  v7 = [v3 recordSystemFields];
  if (!v7 || (v8 = v7, v9 = sub_25574EF90(), v11 = v10, v8, sub_255669A88(0, &unk_27F7BF070, 0x277CBC5A0), (result = CKRecord.init(systemFields:)(v9, v11)) == 0))
  {
    sub_2556B060C(a1, a2, a3);
    if (v13)
    {
      sub_255669A88(0, &unk_27F7BF070, 0x277CBC5A0);
      if (qword_27F7BD780 != -1)
      {
        swift_once();
      }

      v14 = qword_27F7BED98;
      sub_255669A88(0, &qword_27F7BF0D0, 0x277CBC5D0);
      v15 = [v14 zoneID];
      sub_255750740();
      return sub_255750910();
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void static AppStorageMO.resolveDifferences(object:record:)(void *a1, void *a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE600, &qword_255757428);
  MEMORY[0x28223BE20](v5 - 8);
  v89 = &v87 - v6;
  v7 = type metadata accessor for MergeableAppStorage(0);
  v92 = *(v7 - 8);
  v93 = v7;
  v8 = MEMORY[0x28223BE20](v7);
  v88 = &v87 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v87 - v11;
  MEMORY[0x28223BE20](v10);
  v91 = &v87 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE5E8, &qword_255757420);
  v15 = MEMORY[0x28223BE20](v14 - 8);
  v17 = &v87 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v87 - v18;
  v94 = a1;
  v20 = [a1 recordSystemFields];
  v90 = v12;
  if (v20 && (v21 = v20, v22 = sub_25574EF90(), v24 = v23, v21, sub_255669A88(0, &unk_27F7BF070, 0x277CBC5A0), (v25 = CKRecord.init(systemFields:)(v22, v24)) != 0) && (v26 = v25, v27 = [v25 recordChangeTag], v26, v27))
  {
    v28 = sub_2557501B0();
    v30 = v29;
  }

  else
  {
    v28 = 0;
    v30 = 0;
  }

  v95 = v2;
  v31 = [a2 recordChangeTag];
  if (!v31)
  {
    if (!v30)
    {
      goto LABEL_17;
    }

LABEL_15:

    goto LABEL_25;
  }

  v32 = v31;
  v33 = sub_2557501B0();
  v35 = v34;

  if (!v30)
  {
    if (!v35)
    {
      goto LABEL_17;
    }

    goto LABEL_15;
  }

  if (!v35)
  {
    goto LABEL_15;
  }

  if (v28 == v33 && v30 == v35)
  {
  }

  else
  {
    v36 = sub_255750EB0();

    if ((v36 & 1) == 0)
    {
      goto LABEL_25;
    }
  }

LABEL_17:
  v37 = [v94 recordSystemFields];
  if (v37)
  {
    v38 = v37;
    v39 = sub_25574EF90();
    v41 = v40;

    sub_255669A88(0, &unk_27F7BF070, 0x277CBC5A0);
    v42 = CKRecord.init(systemFields:)(v39, v41);
    if (v42)
    {
      v43 = v42;
      v44 = [v42 recordChangeTag];

      if (v44)
      {

        if (qword_27F7BD6F8 != -1)
        {
          swift_once();
        }

        v45 = sub_25574F2C0();
        __swift_project_value_buffer(v45, qword_27F7BE5D0);
        v46 = a2;
        v47 = sub_25574F2A0();
        v48 = sub_255750770();

        if (os_log_type_enabled(v47, v48))
        {
          v49 = swift_slowAlloc();
          v50 = swift_slowAlloc();
          v96 = v50;
          *v49 = 136315650;
          v51 = sub_255750920();
          v53 = sub_2556E474C(v51, v52, &v96);

          *(v49 + 4) = v53;
          *(v49 + 12) = 2080;
          v54 = [v46 recordID];
          v55 = [v54 recordName];

          v56 = sub_2557501B0();
          v58 = v57;

          v59 = sub_2556E474C(v56, v58, &v96);

          *(v49 + 14) = v59;
          *(v49 + 22) = 2080;
          v60 = sub_255751020();
          v62 = sub_2556E474C(v60, v61, &v96);

          *(v49 + 24) = v62;
          _os_log_impl(&dword_255661000, v47, v48, "Ignoring remote %s record update with ID %s because %s has the most recent server changes", v49, 0x20u);
          swift_arrayDestroy();
          MEMORY[0x259C3F520](v50, -1, -1);
          MEMORY[0x259C3F520](v49, -1, -1);
        }

        return;
      }
    }
  }

LABEL_25:
  v63 = v95;
  sub_2556AD8BC(0xD000000000000013, 0x8000000255752490, type metadata accessor for MergeableAppStorage, &qword_27F7BE5F8, type metadata accessor for MergeableAppStorage, &protocol conformance descriptor for MergeableAppStorage, v19);
  if (!v63)
  {
    sub_255663294(v19, v17, &qword_27F7BE5E8, &qword_255757420);
    if ((*(v92 + 48))(v17, 1, v93) == 1)
    {
      sub_255674B20(v17, &qword_27F7BE5E8, &qword_255757420);
      sub_25568B1D0();
      swift_allocError();
      *v64 = 3;
      swift_willThrow();
    }

    else
    {
      v65 = v91;
      sub_2556B0E3C(v17, v91, type metadata accessor for MergeableAppStorage);
      v66 = [v94 mergeableAttributes];
      if (v66)
      {
        v67 = v66;
        v68 = v88;
        sub_2556B0DD4(v66 + OBJC_IVAR___WrappedMergeableAppStorage_value, v88, type metadata accessor for MergeableAppStorage);

        v69 = v90;
        sub_2556B0E3C(v68, v90, type metadata accessor for MergeableAppStorage);
        sub_2556B0F04(&qword_27F7BE608, type metadata accessor for MergeableAppStorage, &protocol conformance descriptor for MergeableAppStorage);
        v70 = v89;
        sub_25574FD60();
        v71 = type metadata accessor for MergeableAppStorage.ObservableDifference(0);
        v72 = (*(*(v71 - 8) + 48))(v70, 1, v71) == 1;
        sub_255674B20(v70, &qword_27F7BE600, &qword_255757428);
        sub_2556ADC68(v65);
        v73 = [objc_allocWithZone(MEMORY[0x277CCAAB0]) initRequiringSecureCoding_];
        [a2 encodeSystemFieldsWithCoder_];
        v74 = [v73 encodedData];
        v75 = sub_25574EF90();
        v77 = v76;

        v78 = sub_25574EF80();
        v79 = v77;
        v80 = v94;
        sub_2556755A8(v75, v79);
        [v80 setRecordSystemFields_];

        [v80 setIsUploadedToCloud_];
        v81 = [v80 managedObjectContext];
        if (v81)
        {
          v82 = v81;
          v83 = MEMORY[0x28223BE20](v81);
          *(&v87 - 2) = v80;
          MEMORY[0x28223BE20](v83);
          *(&v87 - 2) = sub_2556B0CBC;
          *(&v87 - 1) = v84;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE280, &qword_255756620);
          sub_255750870();
        }

        sub_2556B0EA4(v69, type metadata accessor for MergeableAppStorage);
        v86 = v65;
      }

      else
      {
        sub_25568B1D0();
        swift_allocError();
        *v85 = 3;
        swift_willThrow();
        v86 = v65;
      }

      sub_2556B0EA4(v86, type metadata accessor for MergeableAppStorage);
    }

    sub_255674B20(v19, &qword_27F7BE5E8, &qword_255757420);
  }
}