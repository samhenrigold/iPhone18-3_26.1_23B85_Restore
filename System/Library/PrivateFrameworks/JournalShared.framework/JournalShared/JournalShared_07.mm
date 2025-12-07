void *MergeableAppStorage.defaultMapSize.getter()
{
  type metadata accessor for MergeableAppStorage(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEAA0, &unk_25575D720);
  return sub_25574F360();
}

uint64_t MergeableAppStorage.defaultMapSize.setter(uint64_t *a1)
{
  type metadata accessor for MergeableAppStorage(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEAA0, &unk_25575D720);
  return sub_25574F370();
}

uint64_t SidebarPreferences.hiddenBricks.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEAA8, &qword_255758AF0);
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t SidebarPreferences.hiddenBricks.setter(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEAA8, &qword_255758AF0);
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t SidebarPreferences.brickOrder.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SidebarPreferences(0) + 20);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEAC0, &unk_25575D730);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SidebarPreferences.brickOrder.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SidebarPreferences(0) + 20);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEAC0, &unk_25575D730);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t SidebarPreferences.customJournalsOrder.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SidebarPreferences(0) + 24);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEA90, &unk_25575B390);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SidebarPreferences.customJournalsOrder.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SidebarPreferences(0) + 24);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEA90, &unk_25575B390);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

JournalShared::SidebarPreferences::Brick_optional __swiftcall SidebarPreferences.Brick.init(rawValue:)(Swift::Int rawValue)
{
  if (rawValue == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (!rawValue)
  {
    v2 = 0;
  }

  *v1 = v2;
  return rawValue;
}

void *sub_255714D50@<X0>(void *result@<X0>, char *a2@<X8>)
{
  if (*result == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (*result)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  *a2 = v3;
  return result;
}

BOOL SidebarPreferences.Partial.merge(delta:)(uint64_t a1)
{
  v2 = v1;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BF510, &qword_25575B3F0);
  v69 = *(v67 - 8);
  MEMORY[0x28223BE20](v67);
  v62 = &v57 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BF4F0, &qword_25575B3D0);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v64 = &v57 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v9 = &v57 - v8;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BFBD8, &qword_25575D780);
  v68 = *(v66 - 8);
  MEMORY[0x28223BE20](v66);
  v61 = &v57 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BFBD0, &qword_25575D778);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v63 = &v57 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = &v57 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BFBE0, &qword_25575D788);
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v60 = &v57 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BFBC8, &qword_25575D770);
  v20 = MEMORY[0x28223BE20](v19 - 8);
  v22 = &v57 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v24 = &v57 - v23;
  v65 = type metadata accessor for SidebarPreferences.Partial(0);
  MEMORY[0x28223BE20](v65);
  v26 = &v57 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = v2;
  sub_255717310(v2, v26, type metadata accessor for SidebarPreferences.Partial);
  v70 = a1;
  v28 = SidebarPreferences.Partial.canMerge(delta:)(a1);
  sub_255718754(v26, type metadata accessor for SidebarPreferences.Partial);
  if (!v28)
  {
    return v28;
  }

  v58 = v28;
  v59 = v9;
  sub_255663294(v2, v24, &qword_27F7BFBC8, &qword_25575D770);
  v57 = v17;
  v29 = *(v17 + 48);
  v30 = v29(v24, 1, v16);
  sub_255674B20(v24, &qword_27F7BFBC8, &qword_25575D770);
  if (v30 == 1)
  {
    sub_25568DF1C(v70, v27, &qword_27F7BFBC8, &qword_25575D770);
  }

  else
  {
    sub_255663294(v70, v22, &qword_27F7BFBC8, &qword_25575D770);
    if (v29(v22, 1, v16) != 1)
    {
      v33 = v57;
      v34 = v60;
      (*(v57 + 32))(v60, v22, v16);
      v31 = v27;
      v35 = v29(v27, 1, v16);
      v32 = v65;
      if (!v35)
      {
        sub_25574FCA0();
      }

      (*(v33 + 8))(v34, v16);
      goto LABEL_10;
    }

    sub_255674B20(v22, &qword_27F7BFBC8, &qword_25575D770);
  }

  v31 = v27;
  v32 = v65;
LABEL_10:
  v36 = *(v32 + 20);
  sub_255663294(v31 + v36, v15, &qword_27F7BFBD0, &qword_25575D778);
  v37 = *(v68 + 48);
  v38 = v66;
  v39 = v37(v15, 1, v66);
  sub_255674B20(v15, &qword_27F7BFBD0, &qword_25575D778);
  v40 = *(v32 + 20);
  v41 = v39 == 1;
  v42 = v69;
  if (v41)
  {
    sub_25568DF1C(v70 + v40, v31 + v36, &qword_27F7BFBD0, &qword_25575D778);
  }

  else
  {
    v43 = v63;
    sub_255663294(v70 + v40, v63, &qword_27F7BFBD0, &qword_25575D778);
    v44 = v37(v43, 1, v38);
    if (v44 == 1)
    {
      sub_255674B20(v43, &qword_27F7BFBD0, &qword_25575D778);
    }

    else
    {
      v45 = v68;
      v46 = v61;
      (*(v68 + 32))(v61, v43, v38);
      if (!v37((v31 + v36), 1, v38))
      {
        sub_25574F590();
      }

      (*(v45 + 8))(v46, v38);
    }
  }

  v47 = v67;
  v48 = *(v32 + 24);
  v49 = v59;
  sub_255663294(v31 + v48, v59, &qword_27F7BF4F0, &qword_25575B3D0);
  v50 = *(v42 + 48);
  v51 = v50(v49, 1, v47);
  sub_255674B20(v49, &qword_27F7BF4F0, &qword_25575B3D0);
  v52 = *(v32 + 24);
  if (v51 == 1)
  {
    sub_25568DF1C(v70 + v52, v31 + v48, &qword_27F7BF4F0, &qword_25575B3D0);
  }

  else
  {
    v53 = v64;
    sub_255663294(v70 + v52, v64, &qword_27F7BF4F0, &qword_25575B3D0);
    if (v50(v53, 1, v47) == 1)
    {
      sub_255674B20(v53, &qword_27F7BF4F0, &qword_25575B3D0);
    }

    else
    {
      v54 = v69;
      v55 = v62;
      (*(v69 + 32))(v62, v53, v47);
      if (!v50(v31 + v48, 1, v47))
      {
        sub_25574F590();
      }

      (*(v54 + 8))(v55, v47);
    }
  }

  LOBYTE(v28) = v58;
  return v28;
}

BOOL SidebarPreferences.Partial.canMerge(delta:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BF4F0, &qword_25575B3D0);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v46 = &v45 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v49 = &v45 - v5;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BF510, &qword_25575B3F0);
  v51 = *(v48 - 8);
  MEMORY[0x28223BE20](v48);
  v50 = &v45 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BFBD0, &qword_25575D778);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v53 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = &v45 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BFBD8, &qword_25575D780);
  v52 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v47 = &v45 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BFBC8, &qword_25575D770);
  v15 = MEMORY[0x28223BE20](v14 - 8);
  v17 = &v45 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v45 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BFBE0, &qword_25575D788);
  v21 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v23 = &v45 - v22;
  sub_255663294(a1, v19, &qword_27F7BFBC8, &qword_25575D770);
  v24 = *(v21 + 48);
  if (v24(v19, 1, v20) == 1)
  {
    v17 = v19;
    v25 = v54;
LABEL_5:
    sub_255674B20(v17, &qword_27F7BFBC8, &qword_25575D770);
    v26 = v52;
    v27 = v53;
    goto LABEL_6;
  }

  (*(v21 + 32))(v23, v19, v20);
  v25 = v54;
  sub_255663294(v54, v17, &qword_27F7BFBC8, &qword_25575D770);
  if (v24(v17, 1, v20) == 1)
  {
    (*(v21 + 8))(v23, v20);
    goto LABEL_5;
  }

  v39 = sub_25574FCB0();
  v40 = *(v21 + 8);
  v40(v23, v20);
  v40(v17, v20);
  v26 = v52;
  v27 = v53;
  if ((v39 & 1) == 0)
  {
    return 0;
  }

LABEL_6:
  v28 = type metadata accessor for SidebarPreferences.Partial(0);
  sub_255663294(a1 + *(v28 + 20), v11, &qword_27F7BFBD0, &qword_25575D778);
  v29 = *(v26 + 48);
  if (v29(v11, 1, v12) == 1)
  {
    v27 = v11;
    v31 = v50;
    v30 = v51;
    v32 = v49;
  }

  else
  {
    v33 = v25;
    v34 = v47;
    (*(v26 + 32))(v47, v11, v12);
    sub_255663294(v33 + *(v28 + 20), v27, &qword_27F7BFBD0, &qword_25575D778);
    v35 = v29(v27, 1, v12);
    v32 = v49;
    if (v35 != 1)
    {
      v41 = sub_25574F5A0();
      v42 = *(v26 + 8);
      v42(v34, v12);
      v42(v27, v12);
      v31 = v50;
      v30 = v51;
      v25 = v54;
      if ((v41 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_11;
    }

    (*(v26 + 8))(v34, v12);
    v31 = v50;
    v30 = v51;
    v25 = v54;
  }

  sub_255674B20(v27, &qword_27F7BFBD0, &qword_25575D778);
LABEL_11:
  sub_255663294(a1 + *(v28 + 24), v32, &qword_27F7BF4F0, &qword_25575B3D0);
  v36 = *(v30 + 48);
  v37 = v48;
  if (v36(v32, 1, v48) == 1)
  {
LABEL_14:
    sub_255674B20(v32, &qword_27F7BF4F0, &qword_25575B3D0);
    return 1;
  }

  (*(v30 + 32))(v31, v32, v37);
  v32 = v46;
  sub_255663294(v25 + *(v28 + 24), v46, &qword_27F7BF4F0, &qword_25575B3D0);
  if (v36(v32, 1, v37) == 1)
  {
    (*(v30 + 8))(v31, v37);
    goto LABEL_14;
  }

  v43 = sub_25574F5A0();
  v44 = *(v30 + 8);
  v44(v31, v37);
  v44(v32, v37);
  return (v43 & 1) != 0;
}

uint64_t SidebarPreferences.Partial.visitReferences(_:)(uint64_t a1)
{
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BF4F0, &qword_25575B3D0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v20 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BFBD0, &qword_25575D778);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v20 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BFBC8, &qword_25575D770);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v20 - v10;
  sub_255663294(v2, &v20 - v10, &qword_27F7BFBC8, &qword_25575D770);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BFBE0, &qword_25575D788);
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_255674B20(v11, &qword_27F7BFBC8, &qword_25575D770);
  }

  else
  {
    sub_25574FC80();
    (*(v13 + 8))(v11, v12);
  }

  v14 = type metadata accessor for SidebarPreferences.Partial(0);
  sub_255663294(v2 + *(v14 + 20), v8, &qword_27F7BFBD0, &qword_25575D778);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BFBD8, &qword_25575D780);
  v16 = *(v15 - 8);
  if ((*(v16 + 48))(v8, 1, v15) == 1)
  {
    sub_255674B20(v8, &qword_27F7BFBD0, &qword_25575D778);
  }

  else
  {
    sub_25574F570();
    (*(v16 + 8))(v8, v15);
  }

  sub_255663294(v2 + *(v14 + 24), v5, &qword_27F7BF4F0, &qword_25575B3D0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BF510, &qword_25575B3F0);
  v18 = *(v17 - 8);
  if ((*(v18 + 48))(v5, 1, v17) == 1)
  {
    return sub_255674B20(v5, &qword_27F7BF4F0, &qword_25575B3D0);
  }

  sub_25574F570();
  return (*(v18 + 8))(v5, v17);
}

uint64_t SidebarPreferences.Partial.init(from:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v48 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BF4F0, &qword_25575B3D0);
  MEMORY[0x28223BE20](v3 - 8);
  v43 = v34 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BFBD0, &qword_25575D778);
  MEMORY[0x28223BE20](v5 - 8);
  v44 = v34 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BFBC8, &qword_25575D770);
  MEMORY[0x28223BE20](v7 - 8);
  v45 = v34 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BFBE0, &qword_25575D788);
  v10 = *(v9 - 8);
  v41 = *(v10 + 56);
  v42 = v9;
  v40 = v10 + 56;
  v41(a2, 1, 1);
  v11 = type metadata accessor for SidebarPreferences.Partial(0);
  v12 = *(v11 + 20);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BFBD8, &qword_25575D780);
  v14 = *(v13 - 8);
  v15 = *(v14 + 56);
  v16 = v14 + 56;
  v39 = v12;
  v15(a2 + v12, 1, 1, v13);
  v17 = *(v11 + 24);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BF510, &qword_25575B3F0);
  v19 = *(v18 - 8);
  v20 = *(v19 + 56);
  v21 = v19 + 56;
  v47 = a2;
  v20(a2 + v17, 1, 1, v18);
  v22 = v46;
  sub_25574FE90();
  if (v22)
  {

    v23 = v47;
    return sub_255718754(v23, type metadata accessor for SidebarPreferences.Partial);
  }

  v46 = 0;
  v34[2] = v16;
  v35 = v15;
  v36 = v13;
  v37 = v17;
  v34[1] = v21;
  v38 = v20;
  if (sub_25574FED0())
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEA68, &qword_25575D790);
    sub_255669798(&qword_27F7BEA70, &qword_27F7BEA68, &qword_25575D790, MEMORY[0x277CFB528]);
    sub_255669798(&qword_27F7BEA78, &qword_27F7BEA68, &qword_25575D790, MEMORY[0x277CFB538]);
    v26 = v45;
    v25 = v46;
    sub_25574FC90();
    v23 = v47;
    v27 = v38;
    if (v25)
    {
LABEL_6:

      return sub_255718754(v23, type metadata accessor for SidebarPreferences.Partial);
    }

    v46 = 0;
    (v41)(v26, 0, 1, v42);
    sub_25568CFC8(v26, v23, &qword_27F7BFBC8, &qword_25575D770);
  }

  else
  {
    v23 = v47;
    v27 = v38;
  }

  if (sub_25574FED0())
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEA68, &qword_25575D790);
    sub_255669798(&qword_27F7BEA70, &qword_27F7BEA68, &qword_25575D790, MEMORY[0x277CFB528]);
    sub_255669798(&qword_27F7BEA78, &qword_27F7BEA68, &qword_25575D790, MEMORY[0x277CFB538]);
    v28 = v44;
    v29 = v46;
    sub_25574F580();
    v46 = v29;
    if (v29)
    {
      goto LABEL_6;
    }

    v35(v28, 0, 1, v36);
    sub_25568CFC8(v28, v23 + v39, &qword_27F7BFBD0, &qword_25575D778);
    v27 = v38;
  }

  v30 = sub_25574FED0();
  v31 = v43;
  v32 = v37;
  if (v30)
  {
    sub_25574F0D0();
    sub_25566483C(&qword_27F7BE0B0, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
    v33 = v46;
    sub_25574F580();

    if (v33)
    {
      return sub_255718754(v23, type metadata accessor for SidebarPreferences.Partial);
    }

    v27(v31, 0, 1, v18);
    return sub_25568CFC8(v31, v23 + v32, &qword_27F7BF4F0, &qword_25575B3D0);
  }

  else
  {
  }
}

uint64_t SidebarPreferences.Partial.encode(to:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BF4F0, &qword_25575B3D0);
  MEMORY[0x28223BE20](v0 - 8);
  v34 = &v30 - v1;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BF510, &qword_25575B3F0);
  v35 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v3 = &v30 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BFBD0, &qword_25575D778);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v30 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BFBD8, &qword_25575D780);
  v36 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v30 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BFBC8, &qword_25575D770);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v30 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BFBE0, &qword_25575D788);
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v30 - v15;
  v17 = v38;
  result = sub_25574FF10();
  if (!v17)
  {
    v31 = v3;
    v32 = v6;
    v38 = v9;
    v19 = v37;
    sub_255663294(v37, v12, &qword_27F7BFBC8, &qword_25575D770);
    if ((*(v14 + 48))(v12, 1, v13) == 1)
    {
      sub_255674B20(v12, &qword_27F7BFBC8, &qword_25575D770);
    }

    else
    {
      (*(v14 + 32))(v16, v12, v13);
      sub_255669798(&qword_27F7BFBF0, &qword_27F7BFBE0, &qword_25575D788, MEMORY[0x277CFB6E0]);
      sub_25574FF60();
      (*(v14 + 8))(v16, v13);
    }

    v20 = type metadata accessor for SidebarPreferences.Partial(0);
    v21 = v32;
    sub_255663294(v19 + *(v20 + 20), v32, &qword_27F7BFBD0, &qword_25575D778);
    v22 = v36;
    v23 = (*(v36 + 48))(v21, 1, v7);
    v24 = v38;
    if (v23 == 1)
    {
      sub_255674B20(v21, &qword_27F7BFBD0, &qword_25575D778);
    }

    else
    {
      (*(v22 + 32))(v38, v21, v7);
      sub_255669798(&qword_27F7BFBE8, &qword_27F7BFBD8, &qword_25575D780, MEMORY[0x277CFB550]);
      sub_25574FF60();
      (*(v22 + 8))(v24, v7);
    }

    v25 = v34;
    sub_255663294(v19 + *(v20 + 24), v34, &qword_27F7BF4F0, &qword_25575B3D0);
    v26 = v35;
    v27 = v33;
    v28 = (*(v35 + 48))(v25, 1, v33);
    v29 = v31;
    if (v28 == 1)
    {

      return sub_255674B20(v25, &qword_27F7BF4F0, &qword_25575B3D0);
    }

    else
    {
      (*(v26 + 32))(v31, v25, v27);
      sub_255669798(&qword_27F7BF528, &qword_27F7BF510, &qword_25575B3F0, MEMORY[0x277CFB550]);
      sub_25574FF60();
      (*(v26 + 8))(v29, v27);
    }
  }

  return result;
}

JournalShared::MapSize_optional __swiftcall MapSize.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 3;
  if (rawValue < 3)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t sub_255717310(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_255717380(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SidebarPreferences(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void *sub_255717404@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for MergeableAppStorage(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEAA0, &unk_25575D720);
  result = sub_25574F360();
  *a1 = v3;
  *(a1 + 8) = v4;
  return result;
}

uint64_t sub_255717474(uint64_t *a1)
{
  type metadata accessor for MergeableAppStorage(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEAA0, &unk_25575D720);
  return sub_25574F370();
}

void (*MergeableAppStorage.defaultMapSize.modify(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  type metadata accessor for MergeableAppStorage(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEAA0, &unk_25575D720);
  *(v3 + 32) = sub_25574F350();
  return sub_25568C2F0;
}

uint64_t MergeableAppStorage.$defaultMapSize.getter()
{
  type metadata accessor for MergeableAppStorage(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEAA0, &unk_25575D720);
  return sub_25574F390();
}

uint64_t sub_2557175CC()
{
  type metadata accessor for MergeableAppStorage(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEAA0, &unk_25575D720);
  return sub_25574F390();
}

uint64_t sub_255717624(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEAA0, &unk_25575D720);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v11 - v7;
  v9 = *(v3 + 16);
  v9(&v11 - v7, a1, v2);
  v9(v6, v8, v2);
  type metadata accessor for MergeableAppStorage(0);
  sub_25574F3A0();
  return (*(v3 + 8))(v8, v2);
}

uint64_t MergeableAppStorage.$defaultMapSize.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEAA0, &unk_25575D720);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v6 - v4, a1, v2);
  type metadata accessor for MergeableAppStorage(0);
  sub_25574F3A0();
  return (*(v3 + 8))(a1, v2);
}

void (*MergeableAppStorage.$defaultMapSize.modify(void *a1))(uint64_t a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEAA0, &unk_25575D720);
  v5[1] = v6;
  v7 = *(v6 - 8);
  v5[2] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[3] = swift_coroFrameAlloc();
    v5[4] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[3] = malloc(*(v7 + 64));
    v5[4] = malloc(v8);
    v9 = malloc(v8);
  }

  v5[5] = v9;
  *(v5 + 12) = *(type metadata accessor for MergeableAppStorage(0) + 20);
  sub_25574F390();
  return sub_25568C824;
}

BOOL MergeableAppStorage.Partial.merge(delta:)(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEAA0, &unk_25575D720);
  v5 = *(v4 - 8);
  v46 = v4;
  v47 = v5;
  MEMORY[0x28223BE20](v4);
  v7 = &v41 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BFC18, &unk_25575D7C0);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v45 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v12 = &v41 - v11;
  v13 = type metadata accessor for SidebarPreferences.Partial(0);
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v44 = &v41 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BFC10, &qword_25575D7B8);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v19 = &v41 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = &v41 - v20;
  v22 = type metadata accessor for MergeableAppStorage.Partial(0);
  MEMORY[0x28223BE20](v22);
  v24 = &v41 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_255717310(v2, v24, type metadata accessor for MergeableAppStorage.Partial);
  v48 = a1;
  v25 = MergeableAppStorage.Partial.canMerge(delta:)(a1);
  sub_255718754(v24, type metadata accessor for MergeableAppStorage.Partial);
  if (v25)
  {
    v41 = v7;
    v42 = v12;
    v43 = v25;
    sub_255663294(v2, v21, &qword_27F7BFC10, &qword_25575D7B8);
    v26 = *(v14 + 48);
    v27 = v2;
    v28 = v26(v21, 1, v13);
    sub_255674B20(v21, &qword_27F7BFC10, &qword_25575D7B8);
    if (v28 == 1)
    {
      sub_25568DF1C(v48, v27, &qword_27F7BFC10, &qword_25575D7B8);
    }

    else
    {
      sub_255663294(v48, v19, &qword_27F7BFC10, &qword_25575D7B8);
      if (v26(v19, 1, v13) == 1)
      {
        sub_255674B20(v19, &qword_27F7BFC10, &qword_25575D7B8);
      }

      else
      {
        v29 = v44;
        sub_25571A5E8(v19, v44, type metadata accessor for SidebarPreferences.Partial);
        if (!v26(v27, 1, v13))
        {
          SidebarPreferences.Partial.merge(delta:)(v29);
        }

        sub_255718754(v29, type metadata accessor for SidebarPreferences.Partial);
      }
    }

    v31 = v46;
    v30 = v47;
    v32 = *(v22 + 20);
    v33 = v42;
    sub_255663294(v27 + v32, v42, &qword_27F7BFC18, &unk_25575D7C0);
    v34 = *(v30 + 48);
    v35 = v34(v33, 1, v31);
    sub_255674B20(v33, &qword_27F7BFC18, &unk_25575D7C0);
    v36 = *(v22 + 20);
    if (v35 == 1)
    {
      sub_25568DF1C(v48 + v36, v27 + v32, &qword_27F7BFC18, &unk_25575D7C0);
    }

    else
    {
      v37 = v45;
      sub_255663294(v48 + v36, v45, &qword_27F7BFC18, &unk_25575D7C0);
      if (v34(v37, 1, v31) == 1)
      {
        sub_255674B20(v37, &qword_27F7BFC18, &unk_25575D7C0);
      }

      else
      {
        v38 = v47;
        v39 = v41;
        (*(v47 + 32))(v41, v37, v31);
        if (!v34(v27 + v32, 1, v31))
        {
          sub_25574F450();
        }

        (*(v38 + 8))(v39, v31);
      }
    }

    LOBYTE(v25) = v43;
  }

  return v25;
}

BOOL MergeableAppStorage.Partial.canMerge(delta:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BFC18, &unk_25575D7C0);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v30 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v6 = &v29 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEAA0, &unk_25575D720);
  v34 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v33 = &v29 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BFC10, &qword_25575D7B8);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v29 - v13;
  v15 = type metadata accessor for SidebarPreferences.Partial(0);
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v29 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = a1;
  sub_255663294(a1, v14, &qword_27F7BFC10, &qword_25575D7B8);
  v19 = *(v16 + 48);
  if (v19(v14, 1, v15) == 1)
  {
    v12 = v14;
    v20 = v7;
  }

  else
  {
    sub_25571A5E8(v14, v18, type metadata accessor for SidebarPreferences.Partial);
    sub_255663294(v32, v12, &qword_27F7BFC10, &qword_25575D7B8);
    v20 = v7;
    if (v19(v12, 1, v15) != 1)
    {
      v26 = SidebarPreferences.Partial.canMerge(delta:)(v18);
      sub_255718754(v18, type metadata accessor for SidebarPreferences.Partial);
      sub_255718754(v12, type metadata accessor for SidebarPreferences.Partial);
      v22 = v33;
      v21 = v34;
      if (!v26)
      {
        return 0;
      }

      goto LABEL_6;
    }

    sub_255718754(v18, type metadata accessor for SidebarPreferences.Partial);
  }

  sub_255674B20(v12, &qword_27F7BFC10, &qword_25575D7B8);
  v22 = v33;
  v21 = v34;
LABEL_6:
  v23 = type metadata accessor for MergeableAppStorage.Partial(0);
  sub_255663294(v31 + *(v23 + 20), v6, &qword_27F7BFC18, &unk_25575D7C0);
  v24 = *(v21 + 48);
  if (v24(v6, 1, v20) == 1)
  {
LABEL_9:
    sub_255674B20(v6, &qword_27F7BFC18, &unk_25575D7C0);
    return 1;
  }

  (*(v21 + 32))(v22, v6, v20);
  v6 = v30;
  sub_255663294(v32 + *(v23 + 20), v30, &qword_27F7BFC18, &unk_25575D7C0);
  if (v24(v6, 1, v20) == 1)
  {
    (*(v21 + 8))(v22, v20);
    goto LABEL_9;
  }

  v27 = sub_25574F480();
  v28 = *(v21 + 8);
  v28(v22, v20);
  v28(v6, v20);
  return (v27 & 1) != 0;
}

uint64_t sub_255718754(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t MergeableAppStorage.Partial.visitReferences(_:)(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BFC18, &unk_25575D7C0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v15 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BFC10, &qword_25575D7B8);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v15 - v8;
  sub_255663294(v2, &v15 - v8, &qword_27F7BFC10, &qword_25575D7B8);
  v10 = type metadata accessor for SidebarPreferences.Partial(0);
  if ((*(*(v10 - 8) + 48))(v9, 1, v10) == 1)
  {
    sub_255674B20(v9, &qword_27F7BFC10, &qword_25575D7B8);
  }

  else
  {
    SidebarPreferences.Partial.visitReferences(_:)(a1);
    sub_255718754(v9, type metadata accessor for SidebarPreferences.Partial);
  }

  v11 = type metadata accessor for MergeableAppStorage.Partial(0);
  sub_255663294(v2 + *(v11 + 20), v6, &qword_27F7BFC18, &unk_25575D7C0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEAA0, &unk_25575D720);
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v6, 1, v12) == 1)
  {
    return sub_255674B20(v6, &qword_27F7BFC18, &unk_25575D7C0);
  }

  sub_25574F3B0();
  return (*(v13 + 8))(v6, v12);
}

uint64_t MergeableAppStorage.Partial.init(from:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BFC18, &unk_25575D7C0);
  MEMORY[0x28223BE20](v4 - 8);
  v29 = &v23 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BFC10, &qword_25575D7B8);
  MEMORY[0x28223BE20](v6 - 8);
  v28 = &v23 - v7;
  v8 = type metadata accessor for SidebarPreferences.Partial(0);
  v9 = *(*(v8 - 8) + 56);
  v9(a2, 1, 1, v8);
  v10 = *(type metadata accessor for MergeableAppStorage.Partial(0) + 20);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEAA0, &unk_25575D720);
  v12 = *(v11 - 8);
  v13 = *(v12 + 56);
  v14 = v12 + 56;
  v30 = a2;
  v13(a2 + v10, 1, 1, v11);
  v15 = v31;
  sub_25574FE90();
  if (v15)
  {

    v16 = v30;
  }

  else
  {
    v31 = 0;
    v25 = v10;
    v26 = v8;
    v23 = v14;
    v24 = v13;
    v27 = a1;
    v18 = v28;
    v19 = v29;
    v20 = sub_25574FED0();
    if (v20)
    {
      v21 = v31;
      SidebarPreferences.Partial.init(from:)(v20, v18);
      v16 = v30;
      v31 = v21;
      if (v21)
      {

        return sub_255718754(v16, type metadata accessor for MergeableAppStorage.Partial);
      }

      v9(v18, 0, 1, v26);
      sub_25568CFC8(v18, v16, &qword_27F7BFC10, &qword_25575D7B8);
    }

    else
    {
      v16 = v30;
    }

    if (!sub_25574FED0())
    {
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEA80, &qword_255758AE8);
    sub_255669798(&qword_27F7BEA88, &qword_27F7BEA80, &qword_255758AE8, MEMORY[0x277CFB528]);
    v22 = v31;
    sub_25574F420();

    if (!v22)
    {
      v24(v19, 0, 1, v11);
      return sub_25568CFC8(v19, v16 + v25, &qword_27F7BFC18, &unk_25575D7C0);
    }
  }

  return sub_255718754(v16, type metadata accessor for MergeableAppStorage.Partial);
}

uint64_t MergeableAppStorage.Partial.encode(to:)()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BFC18, &unk_25575D7C0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v21 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEAA0, &unk_25575D720);
  v24 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v21 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BFC10, &qword_25575D7B8);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v21 - v8;
  v10 = type metadata accessor for SidebarPreferences.Partial(0);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_25574FF10();
  if (!v0)
  {
    v22 = v3;
    v23 = v6;
    v15 = v25;
    sub_255663294(v25, v9, &qword_27F7BFC10, &qword_25575D7B8);
    if ((*(v11 + 48))(v9, 1, v10) == 1)
    {
      sub_255674B20(v9, &qword_27F7BFC10, &qword_25575D7B8);
    }

    else
    {
      sub_25571A5E8(v9, v13, type metadata accessor for SidebarPreferences.Partial);
      sub_25566483C(&qword_27F7BFC28, type metadata accessor for SidebarPreferences.Partial, &protocol conformance descriptor for SidebarPreferences.Partial);
      sub_25574FF60();
      sub_255718754(v13, type metadata accessor for SidebarPreferences.Partial);
    }

    v16 = type metadata accessor for MergeableAppStorage.Partial(0);
    v17 = v22;
    sub_255663294(v15 + *(v16 + 20), v22, &qword_27F7BFC18, &unk_25575D7C0);
    v18 = v24;
    v19 = (*(v24 + 48))(v17, 1, v4);
    v20 = v23;
    if (v19 == 1)
    {

      return sub_255674B20(v17, &qword_27F7BFC18, &unk_25575D7C0);
    }

    else
    {
      (*(v18 + 32))(v23, v17, v4);
      sub_255669798(&qword_27F7BFC20, &qword_27F7BEAA0, &unk_25575D720, MEMORY[0x277CFB4F0]);
      sub_25574FF60();
      (*(v18 + 8))(v20, v4);
    }
  }

  return result;
}

uint64_t MapSize.description.getter()
{
  v1 = 1684632167;
  if (*v0 != 1)
  {
    v1 = 0x6C6C616D73;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6E6564646968;
  }
}

uint64_t sub_255719254()
{
  v1 = 1684632167;
  if (*v0 != 1)
  {
    v1 = 0x6C6C616D73;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6E6564646968;
  }
}

uint64_t MergeableAppStorage.merge(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEAA0, &unk_25575D720);
  v27 = *(v4 - 8);
  v5 = MEMORY[0x28223BE20](v4);
  v26 = v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = v22 - v8;
  MEMORY[0x28223BE20](v7);
  v11 = v22 - v10;
  v12 = sub_25574F500();
  v24 = v12;
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = a2;
  sub_25574F4F0();
  v22[2] = a1;
  SidebarPreferences.merge(_:)(a1);
  sub_25574F4E0();
  v16 = *(v13 + 8);
  v22[1] = v13 + 8;
  v23 = v16;
  v16(v15, v12);
  type metadata accessor for MergeableAppStorage(0);
  sub_25574F390();
  sub_25574F390();
  sub_25574F460();
  v17 = v27;
  v18 = *(v27 + 8);
  v18(v11, v4);
  (*(v17 + 16))(v26, v9, v4);
  sub_25574F3A0();
  v18(v9, v4);
  sub_25574F4E0();
  v20 = v23;
  v19 = v24;
  v23(v15, v24);
  sub_25574F810();
  sub_25574F4E0();
  return v20(v15, v19);
}

uint64_t SidebarPreferences.merge(_:)(uint64_t a1)
{
  v1 = sub_25574F500();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25574F4F0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEAA8, &qword_255758AF0);
  sub_25574FC50();
  sub_25574F4E0();
  v5 = *(v2 + 8);
  v5(v4, v1);
  type metadata accessor for SidebarPreferences(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEAC0, &unk_25575D730);
  sub_25574F6A0();
  sub_25574F4E0();
  v5(v4, v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEA90, &unk_25575B390);
  sub_25574F6A0();
  sub_25574F4E0();
  v5(v4, v1);
  sub_25574F810();
  sub_25574F4E0();
  return (v5)(v4, v1);
}

{
  return sub_25572149C(a1, SidebarPreferences.merge(_:));
}

uint64_t MergeableAppStorage.actionUndoingDifference(from:)@<X0>(uint64_t a2@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEAA0, &unk_25575D720);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v22 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BFC08, &qword_25575D7B0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v22 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BFC00, &qword_25575D7A8);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v22 - v14;
  SidebarPreferences.actionUndoingDifference(from:)(&v22 - v14);
  type metadata accessor for MergeableAppStorage(0);
  sub_25574F390();
  sub_25574F390();
  sub_25574F3F0();
  v16 = *(v4 + 8);
  v16(v7, v3);
  v16(v9, v3);
  v17 = type metadata accessor for SidebarPreferences.MutatingAction(0);
  if ((*(*(v17 - 8) + 48))(v15, 1, v17) == 1 && (v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BFC30, &qword_25575D7D0), (*(*(v18 - 8) + 48))(v12, 1, v18) == 1))
  {
    sub_255674B20(v15, &qword_27F7BFC00, &qword_25575D7A8);
    v19 = type metadata accessor for MergeableAppStorage.MutatingAction(0);
    (*(*(v19 - 8) + 56))(a2, 1, 1, v19);
  }

  else
  {
    sub_255663294(v15, a2, &qword_27F7BFC00, &qword_25575D7A8);
    v20 = type metadata accessor for MergeableAppStorage.MutatingAction(0);
    sub_255663294(v12, a2 + *(v20 + 20), &qword_27F7BFC08, &qword_25575D7B0);
    sub_255674B20(v15, &qword_27F7BFC00, &qword_25575D7A8);
    (*(*(v20 - 8) + 56))(a2, 0, 1, v20);
  }

  return sub_255674B20(v12, &qword_27F7BFC08, &qword_25575D7B0);
}

uint64_t SidebarPreferences.actionUndoingDifference(from:)@<X0>(uint64_t a2@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BF4D8, &qword_25575B3B8);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v18 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BFBC0, &unk_25575D760);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v18 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BFBB8, &qword_25575D758);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v18 - v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEAA8, &qword_255758AF0);
  sub_25574FBE0();
  type metadata accessor for SidebarPreferences(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEAC0, &unk_25575D730);
  sub_25574F600();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEA90, &unk_25575B390);
  sub_25574F600();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BFC38, &qword_25575D7D8);
  if ((*(*(v12 - 8) + 48))(v11, 1, v12) == 1 && (v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BFC40, &unk_25575D7E0), (*(*(v13 - 8) + 48))(v8, 1, v13) == 1) && (v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BF540, &qword_25575B498), (*(*(v14 - 8) + 48))(v5, 1, v14) == 1))
  {
    sub_255674B20(v11, &qword_27F7BFBB8, &qword_25575D758);
    v15 = type metadata accessor for SidebarPreferences.MutatingAction(0);
    (*(*(v15 - 8) + 56))(a2, 1, 1, v15);
  }

  else
  {
    sub_255663294(v11, a2, &qword_27F7BFBB8, &qword_25575D758);
    v16 = type metadata accessor for SidebarPreferences.MutatingAction(0);
    sub_255663294(v8, a2 + *(v16 + 20), &qword_27F7BFBC0, &unk_25575D760);
    sub_255663294(v5, a2 + *(v16 + 24), &qword_27F7BF4D8, &qword_25575B3B8);
    sub_255674B20(v11, &qword_27F7BFBB8, &qword_25575D758);
    (*(*(v16 - 8) + 56))(a2, 0, 1, v16);
  }

  sub_255674B20(v5, &qword_27F7BF4D8, &qword_25575B3B8);
  return sub_255674B20(v8, &qword_27F7BFBC0, &unk_25575D760);
}

uint64_t MergeableAppStorage.apply(_:)(uint64_t a1)
{
  v26 = a1;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEAA0, &unk_25575D720);
  v24 = *(v25 - 8);
  v1 = MEMORY[0x28223BE20](v25);
  v23 = &v22 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v1);
  v22 = &v22 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BFC00, &qword_25575D7A8);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v22 - v5;
  v7 = type metadata accessor for SidebarPreferences.MutatingAction(0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BFC48, &qword_25575D7F0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v22 - v12;
  v14 = type metadata accessor for MergeableAppStorage.MutatingAction(0);
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v22 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_255663294(v26, v13, &qword_27F7BFC48, &qword_25575D7F0);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    return sub_255674B20(v13, &qword_27F7BFC48, &qword_25575D7F0);
  }

  sub_25571A5E8(v13, v17, type metadata accessor for MergeableAppStorage.MutatingAction);
  sub_255663294(v17, v6, &qword_27F7BFC00, &qword_25575D7A8);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_255674B20(v6, &qword_27F7BFC00, &qword_25575D7A8);
  }

  else
  {
    sub_25571A5E8(v6, v10, type metadata accessor for SidebarPreferences.MutatingAction);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEAA8, &qword_255758AF0);
    sub_25574FC20();
    type metadata accessor for SidebarPreferences(0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEAC0, &unk_25575D730);
    sub_25574F660();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEA90, &unk_25575B390);
    sub_25574F660();
    sub_255718754(v10, type metadata accessor for SidebarPreferences.MutatingAction);
  }

  type metadata accessor for MergeableAppStorage(0);
  v19 = v22;
  v20 = v25;
  sub_25574F390();
  sub_25574F430();
  v21 = v24;
  (*(v24 + 16))(v23, v19, v20);
  sub_25574F3A0();
  (*(v21 + 8))(v19, v20);
  return sub_255718754(v17, type metadata accessor for MergeableAppStorage.MutatingAction);
}

uint64_t SidebarPreferences.apply(_:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BFC00, &qword_25575D7A8);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v10 - v3;
  v5 = type metadata accessor for SidebarPreferences.MutatingAction(0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_255663294(a1, v4, &qword_27F7BFC00, &qword_25575D7A8);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    return sub_255674B20(v4, &qword_27F7BFC00, &qword_25575D7A8);
  }

  sub_25571A5E8(v4, v8, type metadata accessor for SidebarPreferences.MutatingAction);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEAA8, &qword_255758AF0);
  sub_25574FC20();
  type metadata accessor for SidebarPreferences(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEAC0, &unk_25575D730);
  sub_25574F660();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEA90, &unk_25575B390);
  sub_25574F660();
  return sub_255718754(v8, type metadata accessor for SidebarPreferences.MutatingAction);
}

uint64_t sub_25571A5E8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t MergeableAppStorage.hasDelta(from:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEAA0, &unk_25575D720);
  v2 = *(v1 - 8);
  v3 = MEMORY[0x28223BE20](v1);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v12 - v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEAA8, &qword_255758AF0);
  if (sub_25574FD00() & 1) != 0 || (type metadata accessor for SidebarPreferences(0), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEAC0, &unk_25575D730), (sub_25574F710()) || (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEA90, &unk_25575B390), (sub_25574F710()) || (sub_25574F840() & 1) != 0 || (type metadata accessor for MergeableAppStorage(0), sub_25574F390(), sub_25574F390(), v8 = sub_25574F490(), v9 = *(v2 + 8), v9(v5, v1), v9(v7, v1), (v8))
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_25574F840();
  }

  return v10 & 1;
}

uint64_t SidebarPreferences.hasDelta(from:)(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEAA8, &qword_255758AF0);
  if (sub_25574FD00())
  {
    return 1;
  }

  type metadata accessor for SidebarPreferences(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEAC0, &unk_25575D730);
  if (sub_25574F710())
  {
    return 1;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEA90, &unk_25575B390);
  if (sub_25574F710())
  {
    return 1;
  }

  else
  {
    return sub_25574F840() & 1;
  }
}

uint64_t MergeableAppStorage.copy(renamingReferences:)@<X0>(uint64_t a2@<X8>)
{
  v41 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEAA0, &unk_25575D720);
  v5 = *(v4 - 8);
  v48 = v4;
  v49 = v5;
  v6 = MEMORY[0x28223BE20](v4);
  v47 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v46 = &v41 - v8;
  v9 = sub_25574F860();
  v10 = *(v9 - 8);
  v51 = v9;
  v52 = v10;
  MEMORY[0x28223BE20](v9);
  v50 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEA90, &unk_25575B390);
  v13 = *(v12 - 8);
  v44 = v12;
  v45 = v13;
  MEMORY[0x28223BE20](v12);
  v43 = &v41 - v14;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEAC0, &unk_25575D730);
  v15 = *(v42 - 8);
  MEMORY[0x28223BE20](v42);
  v17 = &v41 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEAA8, &qword_255758AF0);
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v21 = &v41 - v20;
  v22 = type metadata accessor for SidebarPreferences(0);
  v23 = (v22 - 8);
  MEMORY[0x28223BE20](v22);
  v25 = &v41 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_255717310(v2, a2, type metadata accessor for MergeableAppStorage);
  sub_255717310(v2, v25, type metadata accessor for SidebarPreferences);
  sub_25574FC00();
  (*(v19 + 40))(v25, v21, v18);
  v26 = v42;
  sub_25574F630();
  (*(v15 + 40))(&v25[v23[7]], v17, v26);
  v28 = v43;
  v27 = v44;
  sub_25574F630();
  (*(v45 + 5))(&v25[v23[8]], v28, v27);
  v29 = v50;
  sub_25574F800();
  v30 = v23[9];
  v31 = *(v52 + 40);
  v52 += 40;
  v45 = v31;
  v31(&v25[v30], v29, v51);
  v32 = v41;
  sub_255717380(v25, v41);
  v33 = type metadata accessor for MergeableAppStorage(0);
  v35 = v47;
  v34 = v48;
  sub_25574F390();
  v36 = v46;
  sub_25574F410();
  v37 = v49;
  v38 = *(v49 + 8);
  v38(v35, v34);
  (*(v37 + 16))(v35, v36, v34);
  sub_25574F3A0();
  v38(v36, v34);
  v39 = v50;
  sub_25574F800();
  return v45(v32 + *(v33 + 24), v39, v51);
}

uint64_t SidebarPreferences.copy(renamingReferences:)@<X0>(uint64_t a2@<X8>)
{
  v4 = sub_25574F860();
  v26 = *(v4 - 8);
  v27 = v4;
  MEMORY[0x28223BE20](v4);
  v25 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEA90, &unk_25575B390);
  v7 = *(v6 - 8);
  v23 = v6;
  v24 = v7;
  MEMORY[0x28223BE20](v6);
  v22 = &v22 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEAC0, &unk_25575D730);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v22 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEAA8, &qword_255758AF0);
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v22 - v15;
  sub_255717310(v2, a2, type metadata accessor for SidebarPreferences);
  sub_25574FC00();
  (*(v14 + 40))(a2, v16, v13);
  v17 = type metadata accessor for SidebarPreferences(0);
  sub_25574F630();
  (*(v10 + 40))(a2 + v17[5], v12, v9);
  v19 = v22;
  v18 = v23;
  sub_25574F630();
  (*(v24 + 40))(a2 + v17[6], v19, v18);
  v20 = v25;
  sub_25574F800();
  return (*(v26 + 40))(a2 + v17[7], v20, v27);
}

uint64_t MergeableAppStorage.init(defaultState:)@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_25574F860();
  v19 = *(v2 - 8);
  v20 = v2;
  MEMORY[0x28223BE20](v2);
  v21 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEAA0, &unk_25575D720);
  v22 = *(v4 - 8);
  v23 = v4;
  MEMORY[0x28223BE20](v4);
  v24 = &v19 - v5;
  v6 = type metadata accessor for SidebarPreferences(0);
  MEMORY[0x28223BE20](v6);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEA68, &qword_25575D790);
  v9 = MEMORY[0x277CFB528];
  sub_255669798(&qword_27F7BEA70, &qword_27F7BEA68, &qword_25575D790, MEMORY[0x277CFB528]);
  sub_255669798(&qword_27F7BEA78, &qword_27F7BEA68, &qword_25575D790, MEMORY[0x277CFB538]);
  sub_25574FD10();
  sub_25574F720();
  sub_25574F0D0();
  sub_25566483C(&qword_27F7BE0B0, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_25574F720();
  sub_25574F850();
  v10 = type metadata accessor for MergeableAppStorage(0);
  v11 = *(v10 + 20);
  v25 = 2;
  v26 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEA80, &qword_255758AE8);
  sub_255669798(&qword_27F7BEA88, &qword_27F7BEA80, &qword_255758AE8, v9);
  sub_25574F340();
  v12 = *(v10 + 24);
  sub_25574F850();
  v13 = v27;
  SidebarPreferences.init(defaultState:)(v8);
  if (v13)
  {
    return sub_255718754(a1, type metadata accessor for MergeableAppStorage);
  }

  v14 = v22;
  v15 = v23;
  sub_255717380(v8, a1);
  v16 = v24;
  sub_25574F330();
  (*(v14 + 40))(a1 + v11, v16, v15);
  v17 = v21;
  sub_25574F780();
  return (*(v19 + 40))(a1 + v12, v17, v20);
}

uint64_t SidebarPreferences.init(defaultState:)@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_25574F860();
  v23 = *(v2 - 8);
  v24 = v2;
  MEMORY[0x28223BE20](v2);
  v28 = v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEA90, &unk_25575B390);
  v26 = *(v4 - 8);
  v27 = v4;
  MEMORY[0x28223BE20](v4);
  v31 = v22 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEAC0, &unk_25575D730);
  v29 = *(v6 - 8);
  v30 = v6;
  MEMORY[0x28223BE20](v6);
  v36 = v22 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEAA8, &qword_255758AF0);
  v34 = *(v8 - 8);
  v35 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = v22 - v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEA68, &qword_25575D790);
  sub_255669798(&qword_27F7BEA70, &qword_27F7BEA68, &qword_25575D790, MEMORY[0x277CFB528]);
  sub_255669798(&qword_27F7BEA78, &qword_27F7BEA68, &qword_25575D790, MEMORY[0x277CFB538]);
  sub_25574FD10();
  v11 = type metadata accessor for SidebarPreferences(0);
  v32 = v11[5];
  sub_25574F720();
  v12 = v11[6];
  v13 = sub_25574F0D0();
  v14 = sub_25566483C(&qword_27F7BE0B0, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  v25 = v12;
  sub_25574F720();
  v15 = v11[7];
  sub_25574F850();
  v33 = v10;
  v16 = v37;
  sub_25574FB80();
  if (v16)
  {
    return sub_255718754(a1, type metadata accessor for SidebarPreferences);
  }

  v22[0] = v15;
  v22[1] = v14;
  v37 = v13;
  v17 = v32;
  (*(v34 + 40))(a1, v33, v35);
  v18 = v36;
  sub_25574F560();
  (*(v29 + 40))(a1 + v17, v18, v30);
  v19 = v31;
  sub_25574F560();
  (*(v26 + 40))(a1 + v25, v19, v27);
  v20 = v28;
  sub_25574F780();
  return (*(v23 + 40))(a1 + v22[0], v20, v24);
}

uint64_t MergeableAppStorage.isDefaultState.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEAA0, &unk_25575D720);
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v6 - v2;
  type metadata accessor for MergeableAppStorage(0);
  if (sub_25574F790() & 1) != 0 && (type metadata accessor for SidebarPreferences(0), (sub_25574F790()) && (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEAA8, &qword_255758AF0), (sub_25574FB90()) && (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEAC0, &unk_25575D730), (sub_25574F5B0()) && (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEA90, &unk_25575B390), (sub_25574F5B0()))
  {
    sub_25574F390();
    v4 = sub_25574F380();
    (*(v1 + 8))(v3, v0);
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

uint64_t SidebarPreferences.isDefaultState.getter()
{
  type metadata accessor for SidebarPreferences(0);
  if ((sub_25574F790() & 1) == 0)
  {
    return 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEAA8, &qword_255758AF0);
  if ((sub_25574FB90() & 1) == 0)
  {
    return 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEAC0, &unk_25575D730);
  if ((sub_25574F5B0() & 1) == 0)
  {
    return 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEA90, &unk_25575B390);
  return sub_25574F5B0() & 1;
}

uint64_t MergeableAppStorage.visitReferences(_:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEAA0, &unk_25575D720);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v6 - v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEAA8, &qword_255758AF0);
  sub_25574FBA0();
  type metadata accessor for SidebarPreferences(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEAC0, &unk_25575D730);
  sub_25574F5C0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEA90, &unk_25575B390);
  sub_25574F5C0();
  sub_25574F7A0();
  type metadata accessor for MergeableAppStorage(0);
  sub_25574F390();
  sub_25574F3B0();
  (*(v2 + 8))(v4, v1);
  return sub_25574F7A0();
}

uint64_t SidebarPreferences.visitReferences(_:)(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEAA8, &qword_255758AF0);
  sub_25574FBA0();
  type metadata accessor for SidebarPreferences(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEAC0, &unk_25575D730);
  sub_25574F5C0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEA90, &unk_25575B390);
  sub_25574F5C0();
  return sub_25574F7A0();
}

uint64_t MergeableAppStorage.newRefs(from:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEAA0, &unk_25575D720);
  v2 = *(v1 - 8);
  v3 = MEMORY[0x28223BE20](v1);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v16 - v6;
  v16 = MEMORY[0x277D84FA0];
  v17 = MEMORY[0x277D84FA0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEAA8, &qword_255758AF0);
  v8 = sub_25574FCD0();
  sub_255692FAC(v8);
  type metadata accessor for SidebarPreferences(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEAC0, &unk_25575D730);
  v9 = sub_25574F6E0();
  sub_255692FAC(v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEA90, &unk_25575B390);
  v10 = sub_25574F6E0();
  sub_255692FAC(v10);
  v11 = sub_25574F830();
  sub_255692FAC(v11);
  sub_255692FAC(v16);
  type metadata accessor for MergeableAppStorage(0);
  sub_25574F390();
  sub_25574F390();
  v12 = sub_25574F470();
  v13 = *(v2 + 8);
  v13(v5, v1);
  v13(v7, v1);
  sub_255692FAC(v12);
  v14 = sub_25574F830();
  sub_255692FAC(v14);
  return v17;
}

uint64_t SidebarPreferences.newRefs(from:)(uint64_t a1)
{
  v6 = MEMORY[0x277D84FA0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEAA8, &qword_255758AF0);
  v1 = sub_25574FCD0();
  sub_255692FAC(v1);
  type metadata accessor for SidebarPreferences(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEAC0, &unk_25575D730);
  v2 = sub_25574F6E0();
  sub_255692FAC(v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEA90, &unk_25575B390);
  v3 = sub_25574F6E0();
  sub_255692FAC(v3);
  v4 = sub_25574F830();
  sub_255692FAC(v4);
  return v6;
}

Swift::Bool __swiftcall MergeableAppStorage.needToFinalizeTimestamps()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEAA0, &unk_25575D720);
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v7 - v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEAA8, &qword_255758AF0);
  if (sub_25574FBF0() & 1) != 0 || (type metadata accessor for SidebarPreferences(0), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEAC0, &unk_25575D730), (sub_25574F610()) || (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEA90, &unk_25575B390), (sub_25574F610()) || (sub_25574F7D0() & 1) != 0 || (type metadata accessor for MergeableAppStorage(0), sub_25574F390(), v4 = sub_25574F400(), (*(v1 + 8))(v3, v0), (v4))
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_25574F7D0();
  }

  return v5 & 1;
}

Swift::Bool __swiftcall SidebarPreferences.needToFinalizeTimestamps()()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEAA8, &qword_255758AF0);
  if (sub_25574FBF0())
  {
    return 1;
  }

  type metadata accessor for SidebarPreferences(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEAC0, &unk_25575D730);
  if (sub_25574F610())
  {
    return 1;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEA90, &unk_25575B390);
  if (sub_25574F610())
  {
    return 1;
  }

  else
  {
    return sub_25574F7D0() & 1;
  }
}

uint64_t MergeableAppStorage.finalizeTimestamps(_:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEAA0, &unk_25575D720);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v10 - v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEAA8, &qword_255758AF0);
  sub_25574FBB0();
  type metadata accessor for SidebarPreferences(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEAC0, &unk_25575D730);
  sub_25574F5D0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEA90, &unk_25575B390);
  sub_25574F5D0();
  MEMORY[0x259C3D480](a1);
  type metadata accessor for MergeableAppStorage(0);
  sub_25574F390();
  sub_25574F3C0();
  (*(v3 + 16))(v6, v8, v2);
  sub_25574F3A0();
  (*(v3 + 8))(v8, v2);
  return MEMORY[0x259C3D480](a1);
}

uint64_t SidebarPreferences.finalizeTimestamps(_:)(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEAA8, &qword_255758AF0);
  sub_25574FBB0();
  type metadata accessor for SidebarPreferences(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEAC0, &unk_25575D730);
  sub_25574F5D0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEA90, &unk_25575B390);
  sub_25574F5D0();
  return MEMORY[0x259C3D480](a1);
}

uint64_t MergeableAppStorage.minEncodingVersion.getter@<X0>(uint64_t a1@<X8>)
{
  v50 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEAA0, &unk_25575D720);
  v45 = *(v2 - 8);
  v46 = v2;
  MEMORY[0x28223BE20](v2);
  v44 = v40 - v3;
  v4 = sub_25574F770();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v43 = v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = v40 - v9;
  v11 = MEMORY[0x28223BE20](v8);
  v48 = v40 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v15 = v40 - v14;
  MEMORY[0x28223BE20](v13);
  v17 = v40 - v16;
  v42 = type metadata accessor for MergeableAppStorage(0);
  v49 = v1;
  sub_25574F7C0();
  v18 = *MEMORY[0x277CFB5F0];
  v19 = *MEMORY[0x277CFB5F0];
  v47 = *(v5 + 104);
  v47(v15, v19, v4);
  v20 = sub_25574F760();
  v21 = *(v5 + 8);
  v21(v15, v4);
  if (v20)
  {
    return (*(v5 + 32))(v50, v17, v4);
  }

  SidebarPreferences.minEncodingVersion.getter(v10);
  v40[1] = sub_25566483C(&qword_27F7BDED8, MEMORY[0x277CFB600], MEMORY[0x277CFB608]);
  v23 = sub_2557500E0();
  v24 = (v23 & 1) == 0;
  if (v23)
  {
    v25 = v17;
  }

  else
  {
    v25 = v10;
  }

  if (v24)
  {
    v26 = v17;
  }

  else
  {
    v26 = v10;
  }

  v21(v25, v4);
  v41 = v18;
  v27 = *(v5 + 32);
  v28 = v48;
  v27(v48, v26, v4);
  v29 = v28;
  v30 = v27;
  v27(v17, v29, v4);
  v47(v15, v41, v4);
  v31 = sub_25574F760();
  v21(v15, v4);
  if (v31)
  {
    v32 = v50;
LABEL_14:
    v39 = v17;
    return v30(v32, v39, v4);
  }

  v33 = v21;
  v34 = v44;
  v35 = v46;
  sub_25574F390();
  v36 = v43;
  sub_25574F3D0();
  (*(v45 + 8))(v34, v35);
  v37 = sub_2557500E0();
  v38 = v50;
  if ((v37 & 1) == 0)
  {
    v33(v36, v4);
    v32 = v38;
    goto LABEL_14;
  }

  v33(v17, v4);
  v32 = v38;
  v39 = v36;
  return v30(v32, v39, v4);
}

uint64_t SidebarPreferences.minEncodingVersion.getter@<X0>(uint64_t a1@<X8>)
{
  v50 = a1;
  v2 = sub_25574F770();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v43 = v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v4);
  v44 = v42 - v7;
  v8 = MEMORY[0x28223BE20](v6);
  v45 = v42 - v9;
  v10 = MEMORY[0x28223BE20](v8);
  v12 = v42 - v11;
  v13 = MEMORY[0x28223BE20](v10);
  v15 = v42 - v14;
  v16 = MEMORY[0x28223BE20](v13);
  v18 = v42 - v17;
  MEMORY[0x28223BE20](v16);
  v20 = v42 - v19;
  v46 = type metadata accessor for SidebarPreferences(0);
  v49 = v1;
  sub_25574F7C0();
  v21 = *(v3 + 104);
  v48 = *MEMORY[0x277CFB5F0];
  v47 = v21;
  v21(v18);
  v22 = sub_25574F760();
  v23 = *(v3 + 8);
  v23(v18, v2);
  if (v22)
  {
    return (*(v3 + 32))(v50, v20, v2);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEAA8, &qword_255758AF0);
  sub_25574FBC0();
  v42[1] = sub_25566483C(&qword_27F7BDED8, MEMORY[0x277CFB600], MEMORY[0x277CFB608]);
  v25 = sub_2557500E0();
  v26 = (v25 & 1) == 0;
  if (v25)
  {
    v27 = v20;
  }

  else
  {
    v27 = v12;
  }

  if (v26)
  {
    v28 = v20;
  }

  else
  {
    v28 = v12;
  }

  v23(v27, v2);
  v29 = *(v3 + 32);
  v29(v15, v28, v2);
  v29(v20, v15, v2);
  v47(v18, v48, v2);
  v30 = sub_25574F760();
  v23(v18, v2);
  if (v30)
  {
    v31 = v50;
LABEL_22:
    v41 = v20;
    return (v29)(v31, v41, v2);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEAC0, &unk_25575D730);
  v32 = v44;
  sub_25574F5E0();
  v33 = sub_2557500E0();
  v34 = (v33 & 1) == 0;
  if (v33)
  {
    v35 = v20;
  }

  else
  {
    v35 = v32;
  }

  if (v34)
  {
    v36 = v20;
  }

  else
  {
    v36 = v32;
  }

  v23(v35, v2);
  v37 = v45;
  v29(v45, v36, v2);
  v29(v20, v37, v2);
  v47(v18, v48, v2);
  v38 = sub_25574F760();
  v23(v18, v2);
  v39 = v50;
  if (v38)
  {
LABEL_21:
    v31 = v39;
    goto LABEL_22;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEA90, &unk_25575B390);
  v40 = v43;
  sub_25574F5E0();
  if ((sub_2557500E0() & 1) == 0)
  {
    v23(v40, v2);
    goto LABEL_21;
  }

  v23(v20, v2);
  v31 = v39;
  v41 = v40;
  return (v29)(v31, v41, v2);
}

uint64_t MergeableAppStorage.observableDifference(from:with:)@<X0>(uint64_t a3@<X8>)
{
  v24 = a3;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEAA0, &unk_25575D720);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v23 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BDDD0, &qword_25575D7A0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v23 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BFBF8, &qword_25575D798);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v23 - v14;
  SidebarPreferences.observableDifference(from:with:)(&v23 - v14);
  type metadata accessor for MergeableAppStorage(0);
  sub_25574F390();
  sub_25574F390();
  sub_25574F3E0();
  v16 = *(v4 + 8);
  v16(v7, v3);
  v16(v9, v3);
  v17 = type metadata accessor for SidebarPreferences.ObservableDifference(0);
  if ((*(*(v17 - 8) + 48))(v15, 1, v17) == 1 && (v18 = sub_25574FB50(), (*(*(v18 - 8) + 48))(v12, 1, v18) == 1))
  {
    sub_255674B20(v15, &qword_27F7BFBF8, &qword_25575D798);
    v19 = type metadata accessor for MergeableAppStorage.ObservableDifference(0);
    (*(*(v19 - 8) + 56))(v24, 1, 1, v19);
  }

  else
  {
    v20 = v24;
    sub_255663294(v15, v24, &qword_27F7BFBF8, &qword_25575D798);
    v21 = type metadata accessor for MergeableAppStorage.ObservableDifference(0);
    sub_255663294(v12, v20 + *(v21 + 20), &qword_27F7BDDD0, &qword_25575D7A0);
    sub_255674B20(v15, &qword_27F7BFBF8, &qword_25575D798);
    (*(*(v21 - 8) + 56))(v20, 0, 1, v21);
  }

  return sub_255674B20(v12, &qword_27F7BDDD0, &qword_25575D7A0);
}

uint64_t SidebarPreferences.observableDifference(from:with:)@<X0>(uint64_t a3@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BF4C8, &unk_25575B3A0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v19 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BFBB0, &unk_25575D748);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v19 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BFBA8, &qword_25575D740);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v19 - v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEAA8, &qword_255758AF0);
  sub_25574FBD0();
  type metadata accessor for SidebarPreferences(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEAC0, &unk_25575D730);
  sub_25574F5F0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEA90, &unk_25575B390);
  sub_25574F5F0();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BFC50, &qword_25575D7F8);
  if ((*(*(v13 - 8) + 48))(v12, 1, v13) == 1 && (v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BFC58, &qword_25575D800), (*(*(v14 - 8) + 48))(v9, 1, v14) == 1) && (v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BF560, &qword_25575B4B8), (*(*(v15 - 8) + 48))(v6, 1, v15) == 1))
  {
    sub_255674B20(v12, &qword_27F7BFBA8, &qword_25575D740);
    v16 = type metadata accessor for SidebarPreferences.ObservableDifference(0);
    (*(*(v16 - 8) + 56))(a3, 1, 1, v16);
  }

  else
  {
    sub_255663294(v12, a3, &qword_27F7BFBA8, &qword_25575D740);
    v17 = type metadata accessor for SidebarPreferences.ObservableDifference(0);
    sub_255663294(v9, a3 + *(v17 + 20), &qword_27F7BFBB0, &unk_25575D748);
    sub_255663294(v6, a3 + *(v17 + 24), &qword_27F7BF4C8, &unk_25575B3A0);
    sub_255674B20(v12, &qword_27F7BFBA8, &qword_25575D740);
    (*(*(v17 - 8) + 56))(a3, 0, 1, v17);
  }

  sub_255674B20(v6, &qword_27F7BF4C8, &unk_25575B3A0);
  return sub_255674B20(v9, &qword_27F7BFBB0, &unk_25575D748);
}

uint64_t MergeableAppStorage.encode(to:)()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEAA0, &unk_25575D720);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v6 - v3;
  result = sub_25574FF10();
  if (!v0)
  {
    type metadata accessor for SidebarPreferences(0);
    sub_25566483C(&qword_27F7BFC60, type metadata accessor for SidebarPreferences, &protocol conformance descriptor for SidebarPreferences);
    sub_25574FF60();
    type metadata accessor for MergeableAppStorage(0);
    sub_25574F390();
    sub_255669798(&qword_27F7BFC20, &qword_27F7BEAA0, &unk_25575D720, MEMORY[0x277CFB4F0]);
    sub_25574FF60();
    (*(v2 + 8))(v4, v1);
    sub_25574F820();
  }

  return result;
}

uint64_t MergeableAppStorage.init(from:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_25574F860();
  v66 = *(v4 - 8);
  v67 = v4;
  MEMORY[0x28223BE20](v4);
  v65 = &v59 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BDEE0, &unk_2557552C0);
  MEMORY[0x28223BE20](v6 - 8);
  v73 = (&v59 - v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BDEE8, &unk_25575B4D0);
  v9 = *(v8 - 8);
  v70 = v8;
  v71 = v9;
  v10 = MEMORY[0x28223BE20](v8);
  v64 = &v59 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v63 = &v59 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEAA0, &unk_25575D720);
  v68 = *(v13 - 8);
  v69 = v13;
  MEMORY[0x28223BE20](v13);
  v72 = &v59 - v14;
  v15 = type metadata accessor for SidebarPreferences(0);
  MEMORY[0x28223BE20](v15);
  v17 = &v59 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEA68, &qword_25575D790);
  v18 = MEMORY[0x277CFB528];
  sub_255669798(&qword_27F7BEA70, &qword_27F7BEA68, &qword_25575D790, MEMORY[0x277CFB528]);
  sub_255669798(&qword_27F7BEA78, &qword_27F7BEA68, &qword_25575D790, MEMORY[0x277CFB538]);
  sub_25574FD10();
  sub_25574F720();
  sub_25574F0D0();
  sub_25566483C(&qword_27F7BE0B0, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_25574F720();
  sub_25574F850();
  v19 = type metadata accessor for MergeableAppStorage(0);
  v20 = *(v19 + 20);
  v75 = 2;
  v76 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEA80, &qword_255758AE8);
  sub_255669798(&qword_27F7BEA88, &qword_27F7BEA80, &qword_255758AE8, v18);
  sub_25574F340();
  v21 = *(v19 + 24);
  sub_25574F850();
  v22 = v74;
  v23 = sub_25574FE90();
  if (v22)
  {

    return sub_255718754(a2, type metadata accessor for MergeableAppStorage);
  }

  else
  {
    v24 = v23;
    v62 = v21;
    v74 = a1;
    v25 = sub_25574FED0();
    if (v25)
    {
      SidebarPreferences.init(from:)(v25, v17);
      sub_255717380(v17, a2);
    }

    if (sub_25574FED0())
    {
      v26 = v72;
      sub_25574F420();
      (*(v68 + 40))(a2 + v20, v26, v69);
    }

    v27 = sub_25574FEC0();
    v72 = v24;
    v60 = a2;
    v29 = sub_2556771A4(v27);

    v75 = v29;
    sub_2556775F8(0xD000000000000012, 0x8000000255753720);

    sub_2556775F8(0x4D746C7561666564, 0xEE00657A69537061);

    v30 = v75 + 56;
    v31 = 1 << *(v75 + 32);
    v32 = -1;
    if (v31 < 64)
    {
      v32 = ~(-1 << v31);
    }

    v33 = v32 & *(v75 + 56);
    v34 = (v31 + 63) >> 6;
    v68 = v71 + 56;
    v69 = v75;

    v35 = 0;
    v61 = MEMORY[0x277D84F90];
    v36 = v70;
    while (1)
    {
      v37 = v35;
      if (!v33)
      {
        break;
      }

LABEL_16:
      v38 = __clz(__rbit64(v33));
      v33 &= v33 - 1;
      v39 = (*(v69 + 48) + ((v35 << 10) | (16 * v38)));
      v41 = *v39;
      v40 = v39[1];

      if (sub_25574FED0())
      {
        v43 = v73;
        *v73 = v41;
        v43[1] = v40;

        sub_25574FDA0();

        v44 = v70;
        (*v68)(v43, 0, 1, v70);
        v45 = v43;
        v46 = v63;
        sub_25569AA68(v45, v63);
        sub_25569AA68(v46, v64);
        v36 = v44;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v61 = sub_255698728(0, v61[2] + 1, 1, v61);
        }

        v47 = v71;
        v49 = v61[2];
        v48 = v61[3];
        v50 = v64;
        if (v49 >= v48 >> 1)
        {
          v52 = sub_255698728((v48 > 1), v49 + 1, 1, v61);
          v47 = v71;
          v61 = v52;
          v50 = v64;
        }

        v51 = v61;
        v61[2] = v49 + 1;
        sub_25569AA68(v50, v51 + ((*(v47 + 80) + 32) & ~*(v47 + 80)) + *(v47 + 72) * v49);
      }

      else
      {

        v42 = v73;
        (*v68)(v73, 1, 1, v36);
        sub_255674B20(v42, &qword_27F7BDEE0, &unk_2557552C0);
      }
    }

    while (1)
    {
      v35 = v37 + 1;
      if (__OFADD__(v37, 1))
      {
        __break(1u);

        swift_bridgeObjectRelease_n();
        a2 = v60;
        return sub_255718754(a2, type metadata accessor for MergeableAppStorage);
      }

      if (v35 >= v34)
      {
        break;
      }

      v33 = *(v30 + 8 * v35);
      ++v37;
      if (v33)
      {
        goto LABEL_16;
      }
    }

    v53 = v61;
    if (v61[2])
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BDEF0, &qword_2557552D0);
      v54 = sub_255750C90();
    }

    else
    {
      v54 = MEMORY[0x277D84F98];
    }

    v56 = v66;
    v55 = v67;
    v57 = v65;
    v58 = v60;
    v77 = v54;
    sub_255722D8C(v53, 1, &v77);
    sub_25574F870();

    return (*(v56 + 40))(v58 + v62, v57, v55);
  }
}

uint64_t SidebarPreferences.init(from:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v98 = a1;
  v4 = sub_25574F860();
  v79 = *(v4 - 8);
  v80 = v4;
  MEMORY[0x28223BE20](v4);
  v78 = &v71 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BDEE0, &unk_2557552C0);
  MEMORY[0x28223BE20](v6 - 8);
  v86 = (&v71 - v7);
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BDEE8, &unk_25575B4D0);
  v81 = *(v85 - 8);
  v8 = MEMORY[0x28223BE20](v85);
  v77 = &v71 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v76 = &v71 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEA90, &unk_25575B390);
  v88 = *(v11 - 8);
  v89 = v11;
  MEMORY[0x28223BE20](v11);
  v87 = &v71 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEAC0, &unk_25575D730);
  v95 = *(v13 - 1);
  v96 = v13;
  MEMORY[0x28223BE20](v13);
  v90 = &v71 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEAA8, &qword_255758AF0);
  v83 = *(v15 - 8);
  v84 = v15;
  MEMORY[0x28223BE20](v15);
  v92 = &v71 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEA68, &qword_25575D790);
  v18 = sub_255669798(&qword_27F7BEA70, &qword_27F7BEA68, &qword_25575D790, MEMORY[0x277CFB528]);
  sub_255669798(&qword_27F7BEA78, &qword_27F7BEA68, &qword_25575D790, MEMORY[0x277CFB538]);
  sub_25574FD10();
  v19 = type metadata accessor for SidebarPreferences(0);
  v82 = v19[5];
  v94 = v17;
  sub_25574F720();
  v20 = v19[6];
  v21 = sub_25574F0D0();
  v22 = sub_25566483C(&qword_27F7BE0B0, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_25574F720();
  v23 = v19[7];
  v97 = a2;
  sub_25574F850();
  v24 = sub_25574FE90();
  if (v2)
  {
LABEL_11:

    return sub_255718754(v97, type metadata accessor for SidebarPreferences);
  }

  v75 = v18;
  v73 = v22;
  v74 = v21;
  v72 = v20;
  v26 = v95;
  v25 = v96;
  v71 = v23;
  v91 = 0;
  v93 = v24;
  if (sub_25574FED0())
  {
    v28 = v91;
    v27 = v92;
    sub_25574FC10();
    if (v28)
    {
      goto LABEL_10;
    }

    v91 = 0;
    (*(v83 + 40))(v97, v27, v84);
  }

  if (!sub_25574FED0())
  {
    goto LABEL_8;
  }

  v29 = v90;
  v30 = v91;
  sub_25574F640();
  if (v30)
  {
LABEL_10:

    goto LABEL_11;
  }

  v91 = 0;
  (*(v26 + 40))(v97 + v82, v29, v25);
LABEL_8:
  v31 = sub_25574FED0();
  v33 = v88;
  v32 = v89;
  v34 = v87;
  if (v31)
  {
    v35 = v91;
    sub_25574F640();
    if (v35)
    {
      goto LABEL_10;
    }

    v91 = 0;
    (*(v33 + 40))(v97 + v72, v34, v32);
  }

  v37 = v91;
  v38 = sub_25574FEC0();
  if (v37)
  {
    goto LABEL_10;
  }

  v91 = 0;
  v39 = sub_2556771A4(v38);

  v100 = v39;
  sub_2556775F8(0x72426E6564646968, 0xEC000000736B6369);

  sub_2556775F8(0x64724F6B63697262, 0xEA00000000007265);

  sub_2556775F8(0xD000000000000013, 0x8000000255753700);

  v40 = v100;
  v41 = v100 + 56;
  v42 = 1 << *(v100 + 32);
  v43 = -1;
  if (v42 < 64)
  {
    v43 = ~(-1 << v42);
  }

  v44 = v43 & *(v100 + 56);
  v45 = (v42 + 63) >> 6;
  v46 = (v81 + 56);

  v47 = 0;
  v96 = MEMORY[0x277D84F90];
  while (1)
  {
    v48 = v47;
    if (!v44)
    {
      break;
    }

LABEL_22:
    v49 = __clz(__rbit64(v44));
    v44 &= v44 - 1;
    v50 = (*(v40 + 48) + ((v47 << 10) | (16 * v49)));
    v52 = *v50;
    v51 = v50[1];

    if (sub_25574FED0())
    {
      v54 = v85;
      v95 = *(v85 + 48);
      v55 = v86;
      *v86 = v52;
      v55[1] = v51;
      v56 = v55;

      v57 = v91;
      sub_25574FDA0();
      v91 = v57;
      if (v57)
      {
LABEL_37:

        swift_bridgeObjectRelease_n();
        return sub_255718754(v97, type metadata accessor for SidebarPreferences);
      }

      (*v46)(v56, 0, 1, v54);
      v58 = v76;
      sub_25569AA68(v56, v76);
      sub_25569AA68(v58, v77);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v96 = sub_255698728(0, v96[2] + 1, 1, v96);
      }

      v59 = v81;
      v61 = v96[2];
      v60 = v96[3];
      v62 = v77;
      if (v61 >= v60 >> 1)
      {
        v96 = sub_255698728((v60 > 1), v61 + 1, 1, v96);
        v62 = v77;
      }

      v63 = v96;
      v96[2] = v61 + 1;
      sub_25569AA68(v62, v63 + ((*(v59 + 80) + 32) & ~*(v59 + 80)) + *(v59 + 72) * v61);
    }

    else
    {

      v53 = v86;
      (*v46)(v86, 1, 1, v85);
      sub_255674B20(v53, &qword_27F7BDEE0, &unk_2557552C0);
    }
  }

  while (1)
  {
    v47 = v48 + 1;
    if (__OFADD__(v48, 1))
    {
      __break(1u);
      goto LABEL_37;
    }

    if (v47 >= v45)
    {
      break;
    }

    v44 = *(v41 + 8 * v47);
    ++v48;
    if (v44)
    {
      goto LABEL_22;
    }
  }

  v64 = v96;
  if (v96[2])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BDEF0, &qword_2557552D0);
    v65 = sub_255750C90();
  }

  else
  {
    v65 = MEMORY[0x277D84F98];
  }

  v67 = v79;
  v66 = v80;
  v68 = v78;
  v69 = v71;
  v99 = v65;
  v70 = v91;
  sub_25572278C(v64, 1, &v99);
  if (v70)
  {

    goto LABEL_11;
  }

  sub_25574F870();

  return (*(v67 + 40))(v97 + v69, v68, v66);
}

uint64_t MergeableAppStorage.delta(_:from:)@<X0>(uint64_t a3@<X8>)
{
  v33 = a3;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEAA0, &unk_25575D720);
  v32 = *(v3 - 8);
  v4 = MEMORY[0x28223BE20](v3);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v30 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BFC18, &unk_25575D7C0);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v31 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = &v30 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BFC10, &qword_25575D7B8);
  v15 = MEMORY[0x28223BE20](v14 - 8);
  v17 = &v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v30 - v18;
  SidebarPreferences.delta(_:from:)(&v30 - v18);
  type metadata accessor for MergeableAppStorage(0);
  sub_25574F390();
  sub_25574F390();
  v20 = v32;
  sub_25574F440();
  v21 = *(v20 + 8);
  v21(v6, v3);
  v21(v8, v3);
  v22 = type metadata accessor for SidebarPreferences.Partial(0);
  v23 = *(v22 - 8);
  if ((*(v23 + 48))(v19, 1, v22) == 1 && (*(v20 + 48))(v13, 1, v3) == 1)
  {
    sub_255674B20(v19, &qword_27F7BFC10, &qword_25575D7B8);
    v24 = type metadata accessor for MergeableAppStorage.Partial(0);
    (*(*(v24 - 8) + 56))(v33, 1, 1, v24);
  }

  else
  {
    sub_255663294(v19, v17, &qword_27F7BFC10, &qword_25575D7B8);
    v25 = v31;
    sub_255663294(v13, v31, &qword_27F7BFC18, &unk_25575D7C0);
    v26 = v33;
    (*(v23 + 56))(v33, 1, 1, v22);
    v27 = type metadata accessor for MergeableAppStorage.Partial(0);
    v28 = *(v27 + 20);
    (*(v20 + 56))(v26 + v28, 1, 1, v3);
    sub_25568CFC8(v17, v26, &qword_27F7BFC10, &qword_25575D7B8);
    sub_25568CFC8(v25, v26 + v28, &qword_27F7BFC18, &unk_25575D7C0);
    sub_255674B20(v19, &qword_27F7BFC10, &qword_25575D7B8);
    (*(*(v27 - 8) + 56))(v26, 0, 1, v27);
  }

  return sub_255674B20(v13, &qword_27F7BFC18, &unk_25575D7C0);
}

uint64_t SidebarPreferences.delta(_:from:)@<X0>(uint64_t a3@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BF4F0, &qword_25575B3D0);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v32 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v8 = &v32 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BFBD0, &qword_25575D778);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v33 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = &v32 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BFBC8, &qword_25575D770);
  v15 = MEMORY[0x28223BE20](v14 - 8);
  v17 = &v32 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v32 - v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEAA8, &qword_255758AF0);
  sub_25574FC30();
  type metadata accessor for SidebarPreferences(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEAC0, &unk_25575D730);
  sub_25574F680();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEA90, &unk_25575B390);
  sub_25574F680();
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BFBE0, &qword_25575D788);
  v21 = *(v20 - 8);
  if ((*(v21 + 48))(v19, 1, v20) == 1 && (v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BFBD8, &qword_25575D780), (*(*(v22 - 8) + 48))(v13, 1, v22) == 1) && (v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BF510, &qword_25575B3F0), (*(*(v23 - 8) + 48))(v8, 1, v23) == 1))
  {
    sub_255674B20(v19, &qword_27F7BFBC8, &qword_25575D770);
    v24 = type metadata accessor for SidebarPreferences.Partial(0);
    (*(*(v24 - 8) + 56))(a3, 1, 1, v24);
  }

  else
  {
    sub_255663294(v19, v17, &qword_27F7BFBC8, &qword_25575D770);
    sub_255663294(v13, v33, &qword_27F7BFBD0, &qword_25575D778);
    v25 = v32;
    sub_255663294(v8, v32, &qword_27F7BF4F0, &qword_25575B3D0);
    (*(v21 + 56))(a3, 1, 1, v20);
    v26 = type metadata accessor for SidebarPreferences.Partial(0);
    v27 = *(v26 + 20);
    v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BFBD8, &qword_25575D780);
    (*(*(v28 - 8) + 56))(a3 + v27, 1, 1, v28);
    v29 = *(v26 + 24);
    v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BF510, &qword_25575B3F0);
    (*(*(v30 - 8) + 56))(a3 + v29, 1, 1, v30);
    sub_25568CFC8(v17, a3, &qword_27F7BFBC8, &qword_25575D770);
    sub_25568CFC8(v33, a3 + v27, &qword_27F7BFBD0, &qword_25575D778);
    sub_25568CFC8(v25, a3 + v29, &qword_27F7BF4F0, &qword_25575B3D0);
    sub_255674B20(v19, &qword_27F7BFBC8, &qword_25575D770);
    (*(*(v26 - 8) + 56))(a3, 0, 1, v26);
  }

  sub_255674B20(v8, &qword_27F7BF4F0, &qword_25575B3D0);
  return sub_255674B20(v13, &qword_27F7BFBD0, &qword_25575D778);
}

BOOL MergeableAppStorage.canMerge(delta:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BFC18, &unk_25575D7C0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v24 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEAA0, &unk_25575D720);
  v26 = *(v5 - 8);
  v6 = MEMORY[0x28223BE20](v5);
  v25 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v24 = &v24 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BFC10, &qword_25575D7B8);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v24 - v10;
  v12 = type metadata accessor for SidebarPreferences.Partial(0);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = a1;
  sub_255663294(a1, v11, &qword_27F7BFC10, &qword_25575D7B8);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_255674B20(v11, &qword_27F7BFC10, &qword_25575D7B8);
  }

  else
  {
    sub_25571A5E8(v11, v15, type metadata accessor for SidebarPreferences.Partial);
    v16 = SidebarPreferences.canMerge(delta:)(v15);
    sub_255718754(v15, type metadata accessor for SidebarPreferences.Partial);
    if (!v16)
    {
      return 0;
    }
  }

  v17 = type metadata accessor for MergeableAppStorage.Partial(0);
  sub_255663294(v27 + *(v17 + 20), v4, &qword_27F7BFC18, &unk_25575D7C0);
  v18 = v26;
  if ((*(v26 + 48))(v4, 1, v5) == 1)
  {
    sub_255674B20(v4, &qword_27F7BFC18, &unk_25575D7C0);
    return 1;
  }

  v19 = v24;
  (*(v18 + 32))(v24, v4, v5);
  type metadata accessor for MergeableAppStorage(0);
  v20 = v25;
  sub_25574F390();
  v21 = sub_25574F480();
  v22 = *(v18 + 8);
  v22(v20, v5);
  v22(v19, v5);
  return (v21 & 1) != 0;
}

BOOL SidebarPreferences.canMerge(delta:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BF4F0, &qword_25575B3D0);
  MEMORY[0x28223BE20](v2 - 8);
  v33 = &v30 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BF510, &qword_25575B3F0);
  v34 = *(v4 - 8);
  v35 = v4;
  MEMORY[0x28223BE20](v4);
  v31 = &v30 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BFBD0, &qword_25575D778);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v30 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BFBD8, &qword_25575D780);
  v36 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v32 = &v30 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BFBC8, &qword_25575D770);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v30 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BFBE0, &qword_25575D788);
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v30 - v16;
  v18 = a1;
  sub_255663294(a1, v13, &qword_27F7BFBC8, &qword_25575D770);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    sub_255674B20(v13, &qword_27F7BFBC8, &qword_25575D770);
  }

  else
  {
    (*(v15 + 32))(v17, v13, v14);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEAA8, &qword_255758AF0);
    v19 = sub_25574FCE0();
    (*(v15 + 8))(v17, v14);
    if ((v19 & 1) == 0)
    {
      return 0;
    }
  }

  v20 = type metadata accessor for SidebarPreferences.Partial(0);
  sub_255663294(a1 + *(v20 + 20), v8, &qword_27F7BFBD0, &qword_25575D778);
  v21 = v36;
  if ((*(v36 + 48))(v8, 1, v9) == 1)
  {
    sub_255674B20(v8, &qword_27F7BFBD0, &qword_25575D778);
  }

  else
  {
    v22 = v32;
    (*(v21 + 32))(v32, v8, v9);
    type metadata accessor for SidebarPreferences(0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEAC0, &unk_25575D730);
    v23 = sub_25574F6F0();
    (*(v21 + 8))(v22, v9);
    if ((v23 & 1) == 0)
    {
      return 0;
    }
  }

  v24 = v33;
  sub_255663294(v18 + *(v20 + 24), v33, &qword_27F7BF4F0, &qword_25575B3D0);
  v26 = v34;
  v25 = v35;
  if ((*(v34 + 48))(v24, 1, v35) == 1)
  {
    sub_255674B20(v24, &qword_27F7BF4F0, &qword_25575B3D0);
    return 1;
  }

  v27 = v31;
  (*(v26 + 32))(v31, v24, v25);
  type metadata accessor for SidebarPreferences(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEA90, &unk_25575B390);
  v28 = sub_25574F6F0();
  (*(v26 + 8))(v27, v25);
  return (v28 & 1) != 0;
}

uint64_t MergeableAppStorage.merge(delta:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BFC18, &unk_25575D7C0);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v52 = &v45 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v6 = &v45 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEAA0, &unk_25575D720);
  v55 = *(v7 - 8);
  v8 = MEMORY[0x28223BE20](v7);
  v47 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v48 = &v45 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v53 = &v45 - v13;
  MEMORY[0x28223BE20](v12);
  v51 = &v45 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BFC10, &qword_25575D7B8);
  v16 = MEMORY[0x28223BE20](v15 - 8);
  v18 = &v45 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v45 - v19;
  v21 = type metadata accessor for SidebarPreferences.Partial(0);
  v22 = *(v21 - 8);
  v23 = MEMORY[0x28223BE20](v21);
  v46 = &v45 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v26 = &v45 - v25;
  v54 = a1;
  sub_255663294(a1, v20, &qword_27F7BFC10, &qword_25575D7B8);
  v27 = *(v22 + 48);
  if (v27(v20, 1, v21) == 1)
  {
    sub_255674B20(v20, &qword_27F7BFC10, &qword_25575D7B8);
  }

  else
  {
    sub_25571A5E8(v20, v26, type metadata accessor for SidebarPreferences.Partial);
    v28 = SidebarPreferences.canMerge(delta:)(v26);
    sub_255718754(v26, type metadata accessor for SidebarPreferences.Partial);
    if (!v28)
    {
      return 0;
    }
  }

  v29 = type metadata accessor for MergeableAppStorage.Partial(0);
  v30 = v54;
  v50 = *(v29 + 20);
  sub_255663294(v54 + v50, v6, &qword_27F7BFC18, &unk_25575D7C0);
  v31 = v55;
  v49 = *(v55 + 48);
  if (v49(v6, 1, v7) != 1)
  {
    v32 = *(v31 + 32);
    v45 = v27;
    v33 = v51;
    v32(v51, v6, v7);
    type metadata accessor for MergeableAppStorage(0);
    v34 = v53;
    sub_25574F390();
    v35 = sub_25574F480();
    v36 = *(v31 + 8);
    v37 = v34;
    v30 = v54;
    v36(v37, v7);
    v38 = v33;
    v27 = v45;
    v36(v38, v7);
    v31 = v55;
    if (v35)
    {
      goto LABEL_7;
    }

    return 0;
  }

  sub_255674B20(v6, &qword_27F7BFC18, &unk_25575D7C0);
LABEL_7:
  sub_255663294(v30, v18, &qword_27F7BFC10, &qword_25575D7B8);
  if (v27(v18, 1, v21) == 1)
  {
    sub_255674B20(v18, &qword_27F7BFC10, &qword_25575D7B8);
  }

  else
  {
    v40 = v46;
    sub_25571A5E8(v18, v46, type metadata accessor for SidebarPreferences.Partial);
    SidebarPreferences.merge(delta:)(v40);
    sub_255718754(v40, type metadata accessor for SidebarPreferences.Partial);
  }

  v41 = v52;
  sub_255663294(v30 + v50, v52, &qword_27F7BFC18, &unk_25575D7C0);
  if (v49(v41, 1, v7) == 1)
  {
    sub_255674B20(v41, &qword_27F7BFC18, &unk_25575D7C0);
  }

  else
  {
    v42 = v48;
    (*(v31 + 32))(v48, v41, v7);
    type metadata accessor for MergeableAppStorage(0);
    v43 = v53;
    sub_25574F390();
    sub_25574F450();
    (*(v31 + 16))(v47, v43, v7);
    sub_25574F3A0();
    v44 = *(v31 + 8);
    v44(v43, v7);
    v44(v42, v7);
  }

  return 1;
}

BOOL SidebarPreferences.merge(delta:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BF4F0, &qword_25575B3D0);
  MEMORY[0x28223BE20](v2 - 8);
  v33 = &v29[-v3];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BF510, &qword_25575B3F0);
  v34 = *(v4 - 8);
  v35 = v4;
  MEMORY[0x28223BE20](v4);
  v31 = &v29[-v5];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BFBD0, &qword_25575D778);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v29[-v7];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BFBD8, &qword_25575D780);
  v32 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v29[-v10];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BFBC8, &qword_25575D770);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v29[-v13];
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BFBE0, &qword_25575D788);
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v29[-v17];
  v19 = SidebarPreferences.canMerge(delta:)(a1);
  if (v19)
  {
    v30 = v19;
    sub_255663294(a1, v14, &qword_27F7BFBC8, &qword_25575D770);
    if ((*(v16 + 48))(v14, 1, v15) == 1)
    {
      sub_255674B20(v14, &qword_27F7BFBC8, &qword_25575D770);
    }

    else
    {
      (*(v16 + 32))(v18, v14, v15);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEAA8, &qword_255758AF0);
      sub_25574FC40();
      (*(v16 + 8))(v18, v15);
    }

    v20 = v35;
    v21 = type metadata accessor for SidebarPreferences.Partial(0);
    sub_255663294(a1 + *(v21 + 20), v8, &qword_27F7BFBD0, &qword_25575D778);
    v22 = v32;
    v23 = (*(v32 + 48))(v8, 1, v9);
    v24 = v34;
    if (v23 == 1)
    {
      sub_255674B20(v8, &qword_27F7BFBD0, &qword_25575D778);
    }

    else
    {
      (*(v22 + 32))(v11, v8, v9);
      type metadata accessor for SidebarPreferences(0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEAC0, &unk_25575D730);
      sub_25574F690();
      (*(v22 + 8))(v11, v9);
    }

    v25 = a1 + *(v21 + 24);
    v26 = v33;
    sub_255663294(v25, v33, &qword_27F7BF4F0, &qword_25575B3D0);
    if ((*(v24 + 48))(v26, 1, v20) == 1)
    {
      sub_255674B20(v26, &qword_27F7BF4F0, &qword_25575B3D0);
    }

    else
    {
      v27 = v31;
      (*(v24 + 32))(v31, v26, v20);
      type metadata accessor for SidebarPreferences(0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEA90, &unk_25575B390);
      sub_25574F690();
      (*(v24 + 8))(v27, v20);
    }

    LOBYTE(v19) = v30;
  }

  return v19;
}

uint64_t sub_255720BB0(uint64_t a1)
{
  v2 = sub_25566483C(&qword_27F7BE608, type metadata accessor for MergeableAppStorage, &protocol conformance descriptor for MergeableAppStorage);

  return MEMORY[0x28214E298](a1, v2);
}

uint64_t sub_255720C40(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEAA0, &unk_25575D720);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v6 - v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEAA8, &qword_255758AF0);
  sub_25574FBA0();
  type metadata accessor for SidebarPreferences(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEAC0, &unk_25575D730);
  sub_25574F5C0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEA90, &unk_25575B390);
  sub_25574F5C0();
  sub_25574F7A0();
  sub_25574F390();
  sub_25574F3B0();
  (*(v2 + 8))(v4, v1);
  return sub_25574F7A0();
}

uint64_t sub_255720DDC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEAA0, &unk_25575D720);
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v7 - v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEAA8, &qword_255758AF0);
  if (sub_25574FBF0() & 1) != 0 || (type metadata accessor for SidebarPreferences(0), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEAC0, &unk_25575D730), (sub_25574F610()) || (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEA90, &unk_25575B390), (sub_25574F610()) || (sub_25574F7D0() & 1) != 0 || (sub_25574F390(), v4 = sub_25574F400(), (*(v1 + 8))(v3, v0), (v4))
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_25574F7D0();
  }

  return v5 & 1;
}

uint64_t sub_255720F74(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEAA0, &unk_25575D720);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v10 - v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEAA8, &qword_255758AF0);
  sub_25574FBB0();
  type metadata accessor for SidebarPreferences(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEAC0, &unk_25575D730);
  sub_25574F5D0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEA90, &unk_25575B390);
  sub_25574F5D0();
  MEMORY[0x259C3D480](a1);
  sub_25574F390();
  sub_25574F3C0();
  (*(v3 + 16))(v6, v8, v2);
  sub_25574F3A0();
  (*(v3 + 8))(v8, v2);
  return MEMORY[0x259C3D480](a1);
}

uint64_t sub_2557212E8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEAA0, &unk_25575D720);
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v6 - v2;
  if (sub_25574F790() & 1) != 0 && (type metadata accessor for SidebarPreferences(0), (sub_25574F790()) && (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEAA8, &qword_255758AF0), (sub_25574FB90()) && (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEAC0, &unk_25575D730), (sub_25574F5B0()) && (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEA90, &unk_25575B390), (sub_25574F5B0()))
  {
    sub_25574F390();
    v4 = sub_25574F380();
    (*(v1 + 8))(v3, v0);
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

uint64_t sub_25572149C(uint64_t a1, void (*a2)(uint64_t))
{
  v4 = sub_25574F500();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  a2(a1);
  return (*(v5 + 8))(v7, v4);
}

uint64_t SidebarPreferences.encode(to:)(uint64_t a1)
{
  result = sub_25574FF10();
  if (!v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEAA8, &qword_255758AF0);
    sub_255669798(&qword_27F7BFC68, &qword_27F7BEAA8, &qword_255758AF0, MEMORY[0x277CFB708]);
    sub_25574FF60();
    type metadata accessor for SidebarPreferences(0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEAC0, &unk_25575D730);
    sub_255669798(&qword_27F7BFC70, &qword_27F7BEAC0, &unk_25575D730, MEMORY[0x277CFB578]);
    sub_25574FF60();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEA90, &unk_25575B390);
    sub_255669798(&qword_27F7BF570, &qword_27F7BEA90, &unk_25575B390, MEMORY[0x277CFB578]);
    sub_25574FF60();
    sub_25574F820();
  }

  return result;
}

uint64_t static SidebarPreferences.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEAA8, &qword_255758AF0);
  sub_255669798(&qword_27F7BFC78, &qword_27F7BEAA8, &qword_255758AF0, MEMORY[0x277CFB710]);
  if ((sub_255750100() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for SidebarPreferences(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEAC0, &unk_25575D730);
  sub_255669798(&qword_27F7BFC80, &qword_27F7BEAC0, &unk_25575D730, MEMORY[0x277CFB580]);
  if ((sub_255750100() & 1) == 0)
  {
    return 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEA90, &unk_25575B390);
  sub_255669798(&qword_27F7BF650, &qword_27F7BEA90, &unk_25575B390, MEMORY[0x277CFB580]);
  if ((sub_255750100() & 1) == 0)
  {
    return 0;
  }

  return sub_25574F7E0();
}

uint64_t sub_255721930(uint64_t a1)
{
  v2 = sub_25566483C(&qword_27F7BFCC0, type metadata accessor for SidebarPreferences, &protocol conformance descriptor for SidebarPreferences);

  return MEMORY[0x28214E298](a1, v2);
}

uint64_t sub_25572199C(uint64_t a1, int *a2)
{
  v7 = MEMORY[0x277D84FA0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEAA8, &qword_255758AF0);
  v2 = sub_25574FCD0();
  sub_255692FAC(v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEAC0, &unk_25575D730);
  v3 = sub_25574F6E0();
  sub_255692FAC(v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEA90, &unk_25575B390);
  v4 = sub_25574F6E0();
  sub_255692FAC(v4);
  v5 = sub_25574F830();
  sub_255692FAC(v5);
  return v7;
}

uint64_t sub_255721A88(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BFC00, &qword_25575D7A8);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v10 - v3;
  v5 = type metadata accessor for SidebarPreferences.MutatingAction(0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_255663294(a1, v4, &qword_27F7BFC00, &qword_25575D7A8);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    return sub_255674B20(v4, &qword_27F7BFC00, &qword_25575D7A8);
  }

  sub_25571A5E8(v4, v8, type metadata accessor for SidebarPreferences.MutatingAction);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEAA8, &qword_255758AF0);
  sub_25574FC20();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEAC0, &unk_25575D730);
  sub_25574F660();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEA90, &unk_25575B390);
  sub_25574F660();
  return sub_255718754(v8, type metadata accessor for SidebarPreferences.MutatingAction);
}

uint64_t sub_255721CA8(uint64_t a1, int *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEAA8, &qword_255758AF0);
  if (sub_25574FD00())
  {
    return 1;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEAC0, &unk_25575D730);
  if (sub_25574F710())
  {
    return 1;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEA90, &unk_25575B390);
  if (sub_25574F710())
  {
    return 1;
  }

  else
  {
    return sub_25574F840() & 1;
  }
}

uint64_t sub_255721D7C@<X0>(uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v29 = a2;
  v5 = sub_25574F860();
  v31 = *(v5 - 8);
  v32 = v5;
  MEMORY[0x28223BE20](v5);
  v30 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEA90, &unk_25575B390);
  v8 = *(v7 - 8);
  v27 = v7;
  v28 = v8;
  MEMORY[0x28223BE20](v7);
  v26 = &v25 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEAC0, &unk_25575D730);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v25 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEAA8, &qword_255758AF0);
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v25 - v16;
  sub_255717310(v3, a3, type metadata accessor for SidebarPreferences);
  sub_25574FC00();
  (*(v15 + 40))(a3, v17, v14);
  v18 = v29;
  sub_25574F630();
  (*(v11 + 40))(a3 + *(v18 + 20), v13, v10);
  v19 = v18;
  v20 = v26;
  v21 = v27;
  sub_25574F630();
  (*(v28 + 40))(a3 + *(v19 + 24), v20, v21);
  v22 = v19;
  v23 = v30;
  sub_25574F800();
  return (*(v31 + 40))(a3 + *(v22 + 28), v23, v32);
}

uint64_t sub_2557220DC(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEAA8, &qword_255758AF0);
  sub_25574FBA0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEAC0, &unk_25575D730);
  sub_25574F5C0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEA90, &unk_25575B390);
  sub_25574F5C0();
  return sub_25574F7A0();
}

uint64_t sub_25572218C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEAA8, &qword_255758AF0);
  if (sub_25574FBF0())
  {
    return 1;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEAC0, &unk_25575D730);
  if (sub_25574F610())
  {
    return 1;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEA90, &unk_25575B390);
  if (sub_25574F610())
  {
    return 1;
  }

  else
  {
    return sub_25574F7D0() & 1;
  }
}

uint64_t sub_255722234(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEAA8, &qword_255758AF0);
  sub_25574FBB0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEAC0, &unk_25575D730);
  sub_25574F5D0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEA90, &unk_25575B390);
  sub_25574F5D0();
  return MEMORY[0x259C3D480](a1);
}

uint64_t sub_255722300(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  v6 = sub_25574F500();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  a4(a1);
  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_2557224E8(uint64_t a1, uint64_t a2, int *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEAA8, &qword_255758AF0);
  sub_255669798(&qword_27F7BFC78, &qword_27F7BEAA8, &qword_255758AF0, MEMORY[0x277CFB710]);
  if ((sub_255750100() & 1) == 0)
  {
    return 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEAC0, &unk_25575D730);
  sub_255669798(&qword_27F7BFC80, &qword_27F7BEAC0, &unk_25575D730, MEMORY[0x277CFB580]);
  if ((sub_255750100() & 1) == 0)
  {
    return 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEA90, &unk_25575B390);
  sub_255669798(&qword_27F7BF650, &qword_27F7BEA90, &unk_25575B390, MEMORY[0x277CFB580]);
  if ((sub_255750100() & 1) == 0)
  {
    return 0;
  }

  return sub_25574F7E0();
}

uint64_t sub_2557226E0(uint64_t a1)
{
  if ((sub_25574F790() & 1) == 0)
  {
    return 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEAA8, &qword_255758AF0);
  if ((sub_25574FB90() & 1) == 0)
  {
    return 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEAC0, &unk_25575D730);
  if ((sub_25574F5B0() & 1) == 0)
  {
    return 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEA90, &unk_25575B390);
  return sub_25574F5B0() & 1;
}

void sub_25572278C(uint64_t a1, char a2, void *a3)
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
    sub_25566483C(&qword_27F7BE110, MEMORY[0x277CFB5B0], MEMORY[0x277CFB5B8]);
    v28 = swift_allocError();
    *v29 = 0xD00000000000002CLL;
    v29[1] = 0x8000000255753740;
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

void sub_255722D8C(uint64_t a1, char a2, void *a3)
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
    sub_25566483C(&qword_27F7BE110, MEMORY[0x277CFB5B0], MEMORY[0x277CFB5B8]);
    v28 = swift_allocError();
    *v29 = 0xD00000000000002DLL;
    v29[1] = 0x8000000255753770;
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

uint64_t _s13JournalShared19MergeableAppStorageV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEAA0, &unk_25575D720);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v13 - v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEAA8, &qword_255758AF0);
  sub_255669798(&qword_27F7BFC78, &qword_27F7BEAA8, &qword_255758AF0, MEMORY[0x277CFB710]);
  if (sub_255750100() & 1) != 0 && (v14 = v3, type metadata accessor for SidebarPreferences(0), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEAC0, &unk_25575D730), sub_255669798(&qword_27F7BFC80, &qword_27F7BEAC0, &unk_25575D730, MEMORY[0x277CFB580]), (sub_255750100()) && (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEA90, &unk_25575B390), sub_255669798(&qword_27F7BF650, &qword_27F7BEA90, &unk_25575B390, MEMORY[0x277CFB580]), (sub_255750100()) && (sub_25574F7E0() & 1) != 0 && (type metadata accessor for MergeableAppStorage(0), sub_25574F390(), sub_25574F390(), sub_255669798(&qword_27F7BFDD0, &qword_27F7BEAA0, &unk_25575D720, MEMORY[0x277CFB4F8]), v9 = sub_255750100(), v10 = *(v14 + 8), v10(v6, v2), v10(v8, v2), (v9))
  {
    v11 = sub_25574F7E0();
  }

  else
  {
    v11 = 0;
  }

  return v11 & 1;
}

unint64_t sub_2557236A8()
{
  result = qword_27F7BFC88;
  if (!qword_27F7BFC88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7BFC88);
  }

  return result;
}

unint64_t sub_255723748()
{
  result = qword_27F7BFC90;
  if (!qword_27F7BFC90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7BFC90);
  }

  return result;
}

void sub_2557239BC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7BEA68, &qword_25575D790);
    v7 = sub_255669798(&qword_27F7BEA70, &qword_27F7BEA68, &qword_25575D790, MEMORY[0x277CFB528]);
    v8 = sub_255669798(&qword_27F7BEA78, &qword_27F7BEA68, &qword_25575D790, MEMORY[0x277CFB538]);
    v9 = a3(a1, v6, v7, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_255723AA0(uint64_t a1)
{
  if (!qword_27F7BF5C0)
  {
    sub_25574F0D0();
    sub_25566483C(&qword_27F7BE0B0, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
    v1 = sub_25574F730();
    if (!v2)
    {
      atomic_store(v1, &qword_27F7BF5C0);
    }
  }
}

void sub_255723B74(uint64_t a1)
{
  sub_255672600(319, &qword_27F7BFD08, &qword_27F7BFC50, &qword_25575D7F8);
  if (v1 <= 0x3F)
  {
    sub_255672600(319, &qword_27F7BFD10, &qword_27F7BFC58, &qword_25575D800);
    if (v2 <= 0x3F)
    {
      sub_255672600(319, &qword_27F7BF5E8, &qword_27F7BF560, &qword_25575B4B8);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_255723C80(uint64_t a1)
{
  sub_255672600(319, &qword_27F7BFD28, &qword_27F7BFC38, &qword_25575D7D8);
  if (v1 <= 0x3F)
  {
    sub_255672600(319, &qword_27F7BFD30, &qword_27F7BFC40, &unk_25575D7E0);
    if (v2 <= 0x3F)
    {
      sub_255672600(319, &qword_27F7BF608, &qword_27F7BF540, &qword_25575B498);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_255723D8C(uint64_t a1)
{
  sub_255672600(319, &qword_27F7BFD48, &qword_27F7BFBE0, &qword_25575D788);
  if (v1 <= 0x3F)
  {
    sub_255672600(319, &qword_27F7BFD50, &qword_27F7BFBD8, &qword_25575D780);
    if (v2 <= 0x3F)
    {
      sub_255672600(319, &qword_27F7BF630, &qword_27F7BF510, &qword_25575B3F0);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_255723EC0(uint64_t a1)
{
  sub_255723F7C(319, &qword_27F7BFD80, type metadata accessor for SidebarPreferences.ObservableDifference);
  if (v1 <= 0x3F)
  {
    sub_255723F7C(319, &qword_27F7BDF80, MEMORY[0x277CFB6A0]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_255723F7C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
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

void sub_255723FF8(uint64_t a1)
{
  sub_255723F7C(319, &qword_27F7BFD98, type metadata accessor for SidebarPreferences.MutatingAction);
  if (v1 <= 0x3F)
  {
    sub_255672600(319, &qword_27F7BFDA0, &qword_27F7BFC30, &qword_25575D7D0);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_56Tm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7)
{
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  v13 = *(v12 - 8);
  if (*(v13 + 84) == a2)
  {
    v14 = *(v13 + 48);

    return v14(a1, a2, v12);
  }

  else
  {
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(a6, a7);
    v17 = *(*(v16 - 8) + 48);
    v18 = a1 + *(a3 + 20);

    return v17(v18, a2, v16);
  }
}

uint64_t __swift_store_extra_inhabitant_index_57Tm(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v15 = *(v14 - 8);
  if (*(v15 + 84) == a3)
  {
    v16 = *(v15 + 56);

    return v16(a1, a2, a2, v14);
  }

  else
  {
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
    v19 = *(*(v18 - 8) + 56);
    v20 = a1 + *(a4 + 20);

    return v19(v20, a2, a2, v18);
  }
}

void sub_2557242FC(uint64_t a1)
{
  sub_255723F7C(319, &qword_27F7BFDB8, type metadata accessor for SidebarPreferences.Partial);
  if (v1 <= 0x3F)
  {
    sub_255672600(319, &qword_27F7BFDC0, &qword_27F7BEAA0, &unk_25575D720);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

Swift::Void __swiftcall FileStoreConfiguration.deleteLocalFiles()()
{
  v107[2] = *MEMORY[0x277D85DE8];
  v1 = type metadata accessor for FileStoreConfiguration(0);
  MEMORY[0x28223BE20](v1);
  v92 = v86 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_25574EE20();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v86 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_25574EF10();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v96 = v86 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v104 = v86 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v103 = v86 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v102 = v86 - v16;
  MEMORY[0x28223BE20](v15);
  v18 = v86 - v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BFE08, &unk_25575DF50);
  v19 = *(v8 + 72);
  v20 = v8;
  v21 = (*(v20 + 80) + 32) & ~*(v20 + 80);
  v100 = v19;
  v22 = swift_allocObject();
  v90 = v22 + v21;
  FileStoreConfiguration.applicationSupportDirectoryURL.getter(v22 + v21);
  v23 = *(v1 + 24);
  v89 = v0;
  v87 = v23;
  LODWORD(v23) = *(v0 + v23);
  v86[1] = v1;
  v88 = v7;
  v98 = v20;
  v86[0] = v22;
  if (v23)
  {
    v24 = *(v4 + 104);
    v24(v6, *MEMORY[0x277CC91D8], v3);
    sub_255663E98();
    v25 = v89;
    sub_25574EEF0();
    (*(v4 + 8))(v6, v3);
  }

  else
  {
    sub_25574EE50();
    v24 = *(v4 + 104);
    v25 = v89;
  }

  v26 = v18;
  v27 = v3;
  v28 = v4;
  v107[0] = 0x656D686361747441;
  v107[1] = 0xEB0000000073746ELL;
  v29 = *MEMORY[0x277CC91C0];
  v101 = v24;
  v24(v6, v29, v27);
  sub_255663E98();
  v30 = v100;
  v31 = v90;
  sub_25574EF00();
  v32 = *(v28 + 8);
  v32(v6, v27);
  v105 = *(v98 + 8);
  v106 = v98 + 8;
  v105(v26, v88);
  FileStoreConfiguration.cachesDirectoryURL.getter(v31 + 2 * v30);
  if (*(v25 + v87))
  {
    v101(v6, *MEMORY[0x277CC91D8], v27);
    v33 = v102;
    sub_25574EEF0();
    v32(v6, v27);
  }

  else
  {
    v33 = v102;
    sub_25574EE70();
  }

  v34 = v92;
  v35 = v103;
  v36 = v104;
  v37 = v98;
  v38 = v90;
  v39 = v88;
  (*(v98 + 32))(v90 + 3 * v100, v33, v88);
  v99 = objc_opt_self();
  v40 = *(v37 + 16);
  v41 = 4;
  *&v42 = 136315138;
  v97 = v42;
  *&v42 = 136315394;
  v91 = v42;
  v98 = v37 + 16;
  v102 = v40;
  (v40)(v35, v38, v39);
  while (1)
  {
    if (qword_27F7BD7F0 != -1)
    {
      swift_once();
    }

    v44 = sub_25574F2C0();
    v45 = __swift_project_value_buffer(v44, qword_27F7BFDD8);
    (v40)(v36, v35, v39);
    v101 = v45;
    v46 = sub_25574F2A0();
    v47 = sub_2557507A0();
    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      v107[0] = v49;
      *v48 = v97;
      sub_255725B90();
      v50 = sub_255750E60();
      v52 = v51;
      v105(v104, v39);
      v53 = sub_2556E474C(v50, v52, v107);
      v36 = v104;

      *(v48 + 4) = v53;
      _os_log_impl(&dword_255661000, v46, v47, "Deleting directory at: %s", v48, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v49);
      MEMORY[0x259C3F520](v49, -1, -1);
      MEMORY[0x259C3F520](v48, -1, -1);
    }

    else
    {

      v105(v36, v39);
    }

    v54 = [v99 defaultManager];
    v35 = v103;
    v55 = sub_25574EE80();
    v107[0] = 0;
    v56 = [v54 removeItemAtURL:v55 error:v107];

    if (v56)
    {
      v43 = v107[0];
      v105(v35, v39);
    }

    else
    {
      v57 = v107[0];
      v58 = v39;
      v59 = sub_25574ED90();

      swift_willThrow();
      v60 = v96;
      (v102)(v96, v35, v58);
      v61 = v59;
      v62 = sub_25574F2A0();
      v63 = sub_255750780();

      if (os_log_type_enabled(v62, v63))
      {
        v64 = swift_slowAlloc();
        v93 = swift_slowAlloc();
        v94 = v62;
        v65 = v60;
        v95 = swift_slowAlloc();
        v107[0] = v95;
        *v64 = v91;
        sub_255725B90();
        v66 = sub_255750E60();
        v68 = v67;
        v69 = v105;
        v105(v65, v58);
        v70 = sub_2556E474C(v66, v68, v107);
        v34 = v92;

        *(v64 + 4) = v70;
        *(v64 + 12) = 2112;
        v71 = v59;
        v72 = _swift_stdlib_bridgeErrorToNSError();
        *(v64 + 14) = v72;
        v74 = v93;
        v73 = v94;
        *v93 = v72;
        _os_log_impl(&dword_255661000, v73, v63, "Error deleting directory at: %s. Error: %@", v64, 0x16u);
        sub_255674B20(v74, &qword_27F7BEC80, &qword_255757E90);
        MEMORY[0x259C3F520](v74, -1, -1);
        v75 = v95;
        __swift_destroy_boxed_opaque_existential_1(v95);
        MEMORY[0x259C3F520](v75, -1, -1);
        MEMORY[0x259C3F520](v64, -1, -1);

        v35 = v103;
        v69(v103, v58);
      }

      else
      {

        v76 = v105;
        v105(v60, v58);
        v35 = v103;
        v76(v103, v58);
      }

      v39 = v58;
      v36 = v104;
    }

    v38 += v100;
    --v41;
    v40 = v102;
    if (!v41)
    {
      break;
    }

    (v102)(v35, v38, v39);
  }

  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v77 = v89;
  sub_2556645E8(v89, v34);
  v78 = sub_25574F2A0();
  v79 = sub_2557507A0();
  if (os_log_type_enabled(v78, v79))
  {
    v80 = swift_slowAlloc();
    v81 = swift_slowAlloc();
    v107[0] = v81;
    *v80 = v97;
    sub_255725B90();
    v82 = sub_255750E60();
    v84 = v83;
    sub_255725BE8(v34, type metadata accessor for FileStoreConfiguration);
    v85 = sub_2556E474C(v82, v84, v107);
    v77 = v89;

    *(v80 + 4) = v85;
    _os_log_impl(&dword_255661000, v78, v79, "Recreating directories at: %s", v80, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v81);
    MEMORY[0x259C3F520](v81, -1, -1);
    MEMORY[0x259C3F520](v80, -1, -1);
  }

  else
  {

    sub_255725BE8(v34, type metadata accessor for FileStoreConfiguration);
  }

  LOBYTE(v107[0]) = *(v77 + v87);
  sub_255665410(v107);
}

uint64_t FileStoreConfiguration.getAttachmentURL(from:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v19[2] = a1;
  v19[3] = a2;
  v19[1] = a3;
  v4 = sub_25574EE20();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_25574EF10();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = v19 - v13;
  v15 = type metadata accessor for FileStoreConfiguration(0);
  if (*(v3 + *(v15 + 24)))
  {
    v19[0] = *(v15 + 20);
    v16 = *(v5 + 104);
    v16(v7, *MEMORY[0x277CC91D8], v4);
    sub_255663E98();
    sub_25574EEF0();
    (*(v5 + 8))(v7, v4);
  }

  else
  {
    sub_25574EE50();
    v16 = *(v5 + 104);
  }

  v19[4] = 0x656D686361747441;
  v19[5] = 0xEB0000000073746ELL;
  v16(v7, *MEMORY[0x277CC91C0], v4);
  sub_255663E98();
  sub_25574EF00();
  (*(v5 + 8))(v7, v4);
  v17 = *(v9 + 8);
  v17(v12, v8);
  sub_25574EEA0();
  return (v17)(v14, v8);
}

uint64_t URL.fileSize.getter()
{
  v0 = sub_25574ED80();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BFB78, &unk_25575DF60);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_255755060;
  v5 = *MEMORY[0x277CBE838];
  *(inited + 32) = *MEMORY[0x277CBE838];
  v6 = v5;
  sub_255668820(inited, &qword_27F7BFE30, &qword_25575E028);
  swift_setDeallocating();
  sub_255725BE8(inited + 32, type metadata accessor for URLResourceKey);
  sub_25574EE40();

  v7 = sub_25574ED60();
  (*(v1 + 8))(v3, v0);
  return v7;
}

uint64_t FileStoreConfiguration.homeDirectoryURL.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for FileStoreConfiguration(0) + 20);
  v4 = sub_25574EF10();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

void static FileStoreConfiguration.Location.default.getter(char *a1@<X8>)
{
  if (qword_27F7BD810 != -1)
  {
    swift_once();
  }

  if (byte_27F7BFE4A == 1)
  {
    if (qword_27F7BD7C8 != -1)
    {
      swift_once();
    }

    v2 = qword_27F7BF9F8;
    v3 = sub_255750180();
    v4 = [v2 BOOLForKey_];

    if (v4)
    {
      v5 = 0;
    }

    else
    {
      v6 = sub_255750180();
      v7 = [v2 BOOLForKey_];

      if (v7)
      {
        v5 = 1;
      }

      else
      {
        v5 = 2;
      }
    }
  }

  else
  {
    v5 = 2;
  }

  *a1 = v5;
}

BOOL static FileStoreConfiguration.groupContainerExists(for:)(char *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE270, &unk_25575A3F0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v8[-v3];
  v9 = *a1;
  sub_2556651A8(&v9, &v8[-v3]);
  v5 = sub_25574EF10();
  v6 = (*(*(v5 - 8) + 48))(v4, 1, v5) != 1;
  sub_255674B20(v4, &qword_27F7BE270, &unk_25575A3F0);
  return v6;
}

uint64_t FileStoreConfiguration.temporaryDirectoryURL.getter()
{
  v1 = sub_25574EE20();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v0 + *(type metadata accessor for FileStoreConfiguration(0) + 24)))
  {
    (*(v2 + 104))(v4, *MEMORY[0x277CC91D8], v1);
    sub_255663E98();
    sub_25574EEF0();
    return (*(v2 + 8))(v4, v1);
  }

  else
  {

    return sub_25574EE70();
  }
}

uint64_t FileStoreConfiguration.Location.hashValue.getter()
{
  v1 = *v0;
  sub_255750F80();
  MEMORY[0x259C3EC60](v1);
  return sub_255750FD0();
}

uint64_t FileStoreConfiguration.getAttachmentURL(from:isDirectory:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v21 = a3;
  v22 = a1;
  v23 = a2;
  v20[2] = a4;
  v5 = sub_25574EE20();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_25574EF10();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = v20 - v14;
  v16 = type metadata accessor for FileStoreConfiguration(0);
  if (*(v4 + *(v16 + 24)))
  {
    v20[1] = *(v16 + 20);
    v17 = *(v6 + 104);
    v17(v8, *MEMORY[0x277CC91D8], v5);
    sub_255663E98();
    sub_25574EEF0();
    (*(v6 + 8))(v8, v5);
  }

  else
  {
    sub_25574EE50();
    v17 = *(v6 + 104);
  }

  v24 = 0x656D686361747441;
  v25 = 0xEB0000000073746ELL;
  v17(v8, *MEMORY[0x277CC91C0], v5);
  sub_255663E98();
  sub_25574EF00();
  (*(v6 + 8))(v8, v5);
  v18 = *(v10 + 8);
  v18(v13, v9);
  sub_25574EE90();
  return (v18)(v15, v9);
}

unint64_t sub_255725B90()
{
  result = qword_27F7BFE10;
  if (!qword_27F7BFE10)
  {
    sub_25574EF10();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7BFE10);
  }

  return result;
}

uint64_t sub_255725BE8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_255725C4C()
{
  result = qword_27F7BFE18;
  if (!qword_27F7BFE18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7BFE18);
  }

  return result;
}

void sub_255725CFC(unint64_t a1)
{
  v1 = a1;
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
    if (sub_255750A30())
    {
LABEL_3:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BFE40, &qword_25575E038);
      v3 = sub_255750AE0();
      v4 = v1 & 0xFFFFFFFFFFFFFF8;
      if (!v2)
      {
        goto LABEL_4;
      }

LABEL_8:
      v5 = sub_255750A30();
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
  v37 = v5;
  if ((v1 & 0xC000000000000001) != 0)
  {
    v7 = 0;
    v35 = v1;
    while (1)
    {
      v8 = MEMORY[0x259C3E830](v7, v1);
      v9 = __OFADD__(v7++, 1);
      if (v9)
      {
        break;
      }

      v10 = v8;
      v11 = sub_255750930();
      v12 = -1 << *(v3 + 32);
      v13 = v11 & ~v12;
      v14 = v13 >> 6;
      v15 = *(v6 + 8 * (v13 >> 6));
      v16 = 1 << v13;
      if (((1 << v13) & v15) != 0)
      {
        v17 = ~v12;
        type metadata accessor for JournalEntryAssetFileAttachmentMO();
        while (1)
        {
          v18 = *(*(v3 + 48) + 8 * v13);
          v19 = sub_255750940();

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
            v1 = v35;
            v5 = v37;
            goto LABEL_18;
          }
        }

        swift_unknownObjectRelease();
        v1 = v35;
        v5 = v37;
        if (v7 == v37)
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
          goto LABEL_32;
        }

        *(v3 + 16) = v21;
        if (v7 == v5)
        {
          return;
        }
      }
    }

    __break(1u);
LABEL_32:
    __break(1u);
  }

  else
  {
    v22 = 0;
    v36 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    while (v22 != v36)
    {
      v23 = *(v1 + 32 + 8 * v22);
      v24 = sub_255750930();
      v25 = -1 << *(v3 + 32);
      v26 = v24 & ~v25;
      v27 = v26 >> 6;
      v28 = *(v6 + 8 * (v26 >> 6));
      v29 = 1 << v26;
      if (((1 << v26) & v28) != 0)
      {
        v30 = ~v25;
        type metadata accessor for JournalEntryAssetFileAttachmentMO();
        while (1)
        {
          v31 = *(*(v3 + 48) + 8 * v26);
          v32 = sub_255750940();

          if (v32)
          {
            break;
          }

          v26 = (v26 + 1) & v30;
          v27 = v26 >> 6;
          v28 = *(v6 + 8 * (v26 >> 6));
          v29 = 1 << v26;
          if (((1 << v26) & v28) == 0)
          {
            goto LABEL_29;
          }
        }
      }

      else
      {
LABEL_29:
        *(v6 + 8 * v27) = v29 | v28;
        *(*(v3 + 48) + 8 * v26) = v23;
        v33 = *(v3 + 16);
        v9 = __OFADD__(v33, 1);
        v34 = v33 + 1;
        if (v9)
        {
          goto LABEL_34;
        }

        *(v3 + 16) = v34;
      }

      if (++v22 == v37)
      {
        return;
      }
    }
  }

  __break(1u);
LABEL_34:
  __break(1u);
}

void sub_255726000(unint64_t a1, uint64_t *a2, uint64_t *a3, unint64_t *a4, void *a5)
{
  v5 = a1;
  v6 = a1 >> 62;
  if (a1 >> 62)
  {
    v10 = a3;
    v11 = a2;
    v12 = sub_255750A30();
    a2 = v11;
    a3 = v10;
    if (v12)
    {
LABEL_3:
      __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
      v7 = sub_255750AE0();
      v8 = v5 & 0xFFFFFFFFFFFFFF8;
      if (!v6)
      {
        goto LABEL_4;
      }

LABEL_8:
      v9 = sub_255750A30();
      if (!v9)
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

  v7 = MEMORY[0x277D84FA0];
  v8 = v5 & 0xFFFFFFFFFFFFFF8;
  if (v6)
  {
    goto LABEL_8;
  }

LABEL_4:
  v9 = *(v8 + 16);
  if (!v9)
  {
    return;
  }

LABEL_9:
  v13 = v7 + 56;
  v46 = v9;
  if ((v5 & 0xC000000000000001) != 0)
  {
    v14 = 0;
    v42 = v5;
    while (1)
    {
      v15 = MEMORY[0x259C3E830](v14, v5);
      v16 = __OFADD__(v14++, 1);
      if (v16)
      {
        break;
      }

      v17 = v15;
      v18 = sub_255750930();
      v19 = -1 << *(v7 + 32);
      v20 = v18 & ~v19;
      v21 = v20 >> 6;
      v22 = *(v13 + 8 * (v20 >> 6));
      v23 = 1 << v20;
      if (((1 << v20) & v22) != 0)
      {
        v24 = ~v19;
        sub_255669A88(0, a4, a5);
        while (1)
        {
          v25 = *(*(v7 + 48) + 8 * v20);
          v26 = sub_255750940();

          if (v26)
          {
            break;
          }

          v20 = (v20 + 1) & v24;
          v21 = v20 >> 6;
          v22 = *(v13 + 8 * (v20 >> 6));
          v23 = 1 << v20;
          if (((1 << v20) & v22) == 0)
          {
            v9 = v46;
            v5 = v42;
            goto LABEL_18;
          }
        }

        swift_unknownObjectRelease();
        v9 = v46;
        v5 = v42;
        if (v14 == v46)
        {
          return;
        }
      }

      else
      {
LABEL_18:
        *(v13 + 8 * v21) = v23 | v22;
        *(*(v7 + 48) + 8 * v20) = v17;
        v27 = *(v7 + 16);
        v16 = __OFADD__(v27, 1);
        v28 = v27 + 1;
        if (v16)
        {
          goto LABEL_32;
        }

        *(v7 + 16) = v28;
        if (v14 == v9)
        {
          return;
        }
      }
    }

    __break(1u);
LABEL_32:
    __break(1u);
  }

  else
  {
    v29 = 0;
    v43 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    while (v29 != v43)
    {
      v30 = *(v5 + 32 + 8 * v29);
      v31 = sub_255750930();
      v32 = -1 << *(v7 + 32);
      v33 = v31 & ~v32;
      v34 = v33 >> 6;
      v35 = *(v13 + 8 * (v33 >> 6));
      v36 = 1 << v33;
      if (((1 << v33) & v35) != 0)
      {
        v37 = ~v32;
        sub_255669A88(0, a4, a5);
        while (1)
        {
          v38 = *(*(v7 + 48) + 8 * v33);
          v39 = sub_255750940();

          if (v39)
          {
            break;
          }

          v33 = (v33 + 1) & v37;
          v34 = v33 >> 6;
          v35 = *(v13 + 8 * (v33 >> 6));
          v36 = 1 << v33;
          if (((1 << v33) & v35) == 0)
          {
            goto LABEL_29;
          }
        }
      }

      else
      {
LABEL_29:
        *(v13 + 8 * v34) = v36 | v35;
        *(*(v7 + 48) + 8 * v33) = v30;
        v40 = *(v7 + 16);
        v16 = __OFADD__(v40, 1);
        v41 = v40 + 1;
        if (v16)
        {
          goto LABEL_34;
        }

        *(v7 + 16) = v41;
      }

      if (++v29 == v46)
      {
        return;
      }
    }
  }

  __break(1u);
LABEL_34:
  __break(1u);
}

BOOL static Runtime.Environment.useCloudKitStagingEnvironment.getter()
{
  if (qword_27F7BD810 != -1)
  {
    swift_once();
  }

  if (byte_27F7BFE4A != 1)
  {
    return 0;
  }

  if (qword_27F7BD7C8 != -1)
  {
    swift_once();
  }

  v0 = qword_27F7BF9F8;
  v1 = sub_255750180();
  LOBYTE(v0) = [v0 BOOLForKey_];

  if (v0)
  {
    return 1;
  }

  static Runtime.Environment.current.getter(&v3);
  return v3 != 0;
}

uint64_t sub_2557263EC()
{
  v0 = [objc_opt_self() processInfo];
  v1 = [v0 environment];

  v2 = sub_255750080();
  if (*(v2 + 16))
  {
    sub_2556632FC(0xD00000000000001BLL, 0x8000000255753860);
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  byte_27F7BFE49 = v4 & 1;
  return result;
}

id static Runtime.hasAppProtectionLock.getter()
{
  v0 = objc_opt_self();
  v1 = sub_255750180();
  v2 = [v0 applicationWithBundleIdentifier_];

  v3 = [v2 isLocked];
  return v3;
}

uint64_t Runtime.Environment.hashValue.getter()
{
  v1 = *v0;
  sub_255750F80();
  MEMORY[0x259C3EC60](v1);
  return sub_255750FD0();
}

unint64_t sub_2557265F4()
{
  result = qword_27F7BFE50;
  if (!qword_27F7BFE50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7BFE50);
  }

  return result;
}

uint64_t AudioAssetMetadata.recordingDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for AudioAssetMetadata(0) + 24);

  return sub_2556700F4(v3, a1);
}

uint64_t AudioAssetMetadata.init(duration:intensities:recordingDate:transcriptSegments:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  *a6 = a1;
  *(a6 + 8) = a2 & 1;
  *(a6 + 16) = a3;
  v9 = type metadata accessor for AudioAssetMetadata(0);
  result = sub_2556719B8(a4, a6 + *(v9 + 24));
  *(a6 + *(v9 + 28)) = a5;
  return result;
}

uint64_t sub_255726700@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_255727784(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_255726728(uint64_t a1)
{
  v2 = sub_25567D4A8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_255726764(uint64_t a1)
{
  v2 = sub_25567D4A8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AudioAssetMetadata.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BFE58, &qword_25575E0D8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v11 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25567D4A8();
  sub_255750FF0();
  LOBYTE(v12) = 0;
  sub_255750DD0();
  if (!v2)
  {
    v12 = *(v3 + 16);
    HIBYTE(v11) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BFE68, &qword_25575E0E0);
    sub_25567D698(&qword_27F7BFE70, sub_255726A74, MEMORY[0x277D83948]);
    sub_255750DF0();
    v9 = type metadata accessor for AudioAssetMetadata(0);
    LOBYTE(v12) = 2;
    sub_25574F020();
    sub_2556718E0(&qword_27F7BDC18, MEMORY[0x277CC9578], MEMORY[0x277CC9580]);
    sub_255750DF0();
    v12 = *(v3 + *(v9 + 28));
    HIBYTE(v11) = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BFE80, &qword_25575E0E8);
    sub_25567D8D8(&qword_27F7BFE88, &qword_27F7BFE90, &protocol conformance descriptor for TranscriptViewModelSegment, MEMORY[0x277D83948]);
    sub_255750DF0();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_255726A74()
{
  result = qword_27F7BFE78;
  if (!qword_27F7BFE78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7BFE78);
  }

  return result;
}

uint64_t TranscriptViewModelSegment.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_25574F0D0();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t TranscriptViewModelSegment.text.getter()
{
  v1 = *(v0 + *(type metadata accessor for TranscriptViewModelSegment(0) + 20));

  return v1;
}

int *TranscriptViewModelSegment.init(text:timestamp:duration:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D1>)
{
  sub_25574F0C0();
  result = type metadata accessor for TranscriptViewModelSegment(0);
  v11 = (a3 + result[5]);
  *v11 = a1;
  v11[1] = a2;
  *(a3 + result[6]) = a4;
  *(a3 + result[7]) = a5;
  return result;
}

uint64_t TranscriptViewModelSegment.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v33 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F7BED20, &unk_2557551D0);
  MEMORY[0x28223BE20](v3 - 8);
  v36 = &v30 - v4;
  v5 = sub_25574F0D0();
  v34 = *(v5 - 8);
  v35 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BFEC0, &qword_25575E100);
  v37 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v30 - v9;
  v11 = type metadata accessor for TranscriptViewModelSegment(0);
  MEMORY[0x28223BE20](v11);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25572712C();
  v14 = v38;
  sub_255750FE0();
  if (v14)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v30 = v7;
  v31 = v11;
  v38 = a1;
  v32 = v13;
  v42 = 0;
  sub_2556718E0(&qword_27F7BE658, MEMORY[0x277CC95F0], MEMORY[0x277CC9618]);
  v16 = v35;
  v15 = v36;
  sub_255750D40();
  v18 = v34;
  v19 = *(v34 + 48);
  if (v19(v15, 1, v16) == 1)
  {
    v20 = v30;
    sub_25574F0C0();
    v21 = v20;
    if (v19(v15, 1, v16) != 1)
    {
      sub_255674B20(v15, &unk_27F7BED20, &unk_2557551D0);
    }
  }

  else
  {
    v21 = v30;
    (*(v18 + 32))(v30, v15, v16);
  }

  v22 = v32;
  (*(v34 + 32))(v32, v21, v16);
  v41 = 1;
  v23 = sub_255750D50();
  v24 = v31;
  v25 = (v22 + *(v31 + 20));
  *v25 = v23;
  v25[1] = v26;
  v40 = 2;
  sub_255750D60();
  *(v22 + *(v24 + 24)) = v27;
  v39 = 3;
  sub_255750D60();
  v29 = v28;
  (*(v37 + 8))(v10, v8);
  *(v22 + *(v24 + 28)) = v29;
  sub_25567D974(v22, v33, type metadata accessor for TranscriptViewModelSegment);
  __swift_destroy_boxed_opaque_existential_1(v38);
  return sub_25567DA24(v22, type metadata accessor for TranscriptViewModelSegment);
}

unint64_t sub_25572712C()
{
  result = qword_27F7BFEC8;
  if (!qword_27F7BFEC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7BFEC8);
  }

  return result;
}

uint64_t sub_255727184()
{
  v1 = 25705;
  v2 = 0x6D617473656D6974;
  if (*v0 != 2)
  {
    v2 = 0x6E6F697461727564;
  }

  if (*v0)
  {
    v1 = 1954047348;
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

uint64_t sub_2557271F0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_2557278FC(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_255727218(uint64_t a1)
{
  v2 = sub_25572712C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_255727254(uint64_t a1)
{
  v2 = sub_25572712C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t TranscriptViewModelSegment.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BFED0, &qword_25575E108);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25572712C();
  sub_255750FF0();
  v8[15] = 0;
  sub_25574F0D0();
  sub_2556718E0(&qword_27F7BE648, MEMORY[0x277CC95F0], MEMORY[0x277CC95F8]);
  sub_255750E30();
  if (!v1)
  {
    type metadata accessor for TranscriptViewModelSegment(0);
    v8[14] = 1;
    sub_255750E00();
    v8[13] = 2;
    sub_255750E10();
    v8[12] = 3;
    sub_255750E10();
  }

  return (*(v4 + 8))(v6, v3);
}

BOOL _s13JournalShared26TranscriptViewModelSegmentV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if (sub_25574F070() & 1) != 0 && ((v4 = type metadata accessor for TranscriptViewModelSegment(0), v5 = v4[5], v6 = *(a1 + v5), v7 = *(a1 + v5 + 8), v8 = (a2 + v5), v6 == *v8) ? (v9 = v7 == v8[1]) : (v9 = 0), (v9 || (sub_255750EB0()) && *(a1 + v4[6]) == *(a2 + v4[6])))
  {
    return *(a1 + v4[7]) == *(a2 + v4[7]);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_255727578(uint64_t a1)
{
  *(a1 + 8) = sub_2556718E0(&qword_27F7BFED8, type metadata accessor for AudioAssetMetadata, &protocol conformance descriptor for AudioAssetMetadata);
  result = sub_2556718E0(&qword_27F7BFEE0, type metadata accessor for AudioAssetMetadata, &protocol conformance descriptor for AudioAssetMetadata);
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_255727628()
{
  result = qword_27F7BFF18;
  if (!qword_27F7BFF18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7BFF18);
  }

  return result;
}

unint64_t sub_255727680()
{
  result = qword_27F7BFF20;
  if (!qword_27F7BFF20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7BFF20);
  }

  return result;
}

unint64_t sub_2557276D8()
{
  result = qword_27F7BFF28;
  if (!qword_27F7BFF28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7BFF28);
  }

  return result;
}

unint64_t sub_255727730()
{
  result = qword_27F7BFF30;
  if (!qword_27F7BFF30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7BFF30);
  }

  return result;
}

uint64_t sub_255727784(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E6F697461727564 && a2 == 0xE800000000000000;
  if (v4 || (sub_255750EB0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7469736E65746E69 && a2 == 0xEB00000000736569 || (sub_255750EB0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6E6964726F636572 && a2 == 0xED00006574614467 || (sub_255750EB0() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000012 && 0x8000000255753880 == a2)
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

uint64_t sub_2557278FC(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_255750EB0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1954047348 && a2 == 0xE400000000000000 || (sub_255750EB0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6D617473656D6974 && a2 == 0xE900000000000070 || (sub_255750EB0() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6E6F697461727564 && a2 == 0xE800000000000000)
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

uint64_t JournalMO.SortCategory.rawValue.getter()
{
  if (*v0)
  {
    return 0;
  }

  else
  {
    return 4294967286;
  }
}

Swift::Void __swiftcall JournalMO.setTombstoneAttributes()()
{
  [v0 setUserDeleted_];
  [v0 setMergeableAttributes_];

  [v0 setCreatedDate_];
}

uint64_t sub_255727AD4@<X0>(id *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = [*a1 createdDate];
  if (v3)
  {
    v4 = v3;
    sub_25574EFF0();

    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = sub_25574F020();
  v7 = *(*(v6 - 8) + 56);

  return v7(a2, v5, 1, v6);
}

void sub_255727B78(uint64_t a1, void **a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEB40, &unk_255754E40);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v11 - v5;
  sub_255663294(a1, &v11 - v5, &qword_27F7BEB40, &unk_255754E40);
  v7 = *a2;
  v8 = sub_25574F020();
  v9 = *(v8 - 8);
  v10 = 0;
  if ((*(v9 + 48))(v6, 1, v8) != 1)
  {
    v10 = sub_25574EFC0();
    (*(v9 + 8))(v6, v8);
  }

  [v7 setCreatedDate_];
}

id static JournalMO.createTombstone(id:context:)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for JournalMO();
  v3 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithContext_];
  v4 = sub_25574F050();
  [v3 setId_];

  [v3 setUserDeleted_];
  [v3 setMergeableAttributes_];
  [v3 setCreatedDate_];
  return v3;
}

id static JournalMO.reserve(id:context:)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for JournalMO();
  v3 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithContext_];
  v4 = sub_25574F050();
  [v3 setId_];

  return v3;
}

void sub_255727DC8(NSObject *a1)
{
  v3 = sub_25574F0D0();
  v31 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [swift_getObjCClassFromMetadata() fetchRequest];
  sub_255669A88(0, &qword_27F7BDD58, 0x277CCAC30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F7BED30, qword_255757F10);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_255755060;
  v8 = sub_25574F050();
  *(v7 + 56) = sub_255669A88(0, &unk_27F7BF1F0, 0x277CCAD78);
  *(v7 + 64) = sub_2556E8720();
  *(v7 + 32) = v8;
  v9 = v6;
  v10 = sub_255750750();
  [v6 setPredicate_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BDD90, &unk_2557591E0);
  v11 = sub_2557508C0();
  if (v1)
  {
  }

  else
  {
    v12 = v11;
    v13 = (v11 >> 62);
    if (v11 >> 62)
    {
      v14 = sub_255750A30();
    }

    else
    {
      v14 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v15 = v31;
    v16 = v3;
    v17 = v5;
    if (v14 <= 1)
    {
      goto LABEL_15;
    }

    v5 = v13;
    if (qword_27F7BD5B8 != -1)
    {
      goto LABEL_27;
    }

    while (1)
    {
      v18 = sub_25574F2C0();
      __swift_project_value_buffer(v18, qword_27F7C04B0);
      (*(v15 + 16))(v17, a1, v16);

      a1 = sub_25574F2A0();
      v19 = sub_255750780();
      if (os_log_type_enabled(a1, v19))
      {
        v30 = v9;
        v20 = swift_slowAlloc();
        v29 = swift_slowAlloc();
        v32 = v29;
        *v20 = 134218498;
        v15 = v19;
        v21 = v5 ? sub_255750A30() : *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
        *(v20 + 4) = v21;

        *(v20 + 12) = 2080;
        *(v20 + 14) = sub_2556E474C(0x4D6C616E72756F4ALL, 0xE90000000000004FLL, &v32);
        *(v20 + 22) = 2080;
        sub_25572D870(&qword_27F7BF200, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
        v23 = sub_255750E60();
        v24 = v16;
        v16 = v25;
        (*(v31 + 8))(v17, v24);
        v26 = sub_2556E474C(v23, v16, &v32);

        *(v20 + 24) = v26;
        _os_log_impl(&dword_255661000, a1, v15, "Found %ld %s objects with id %s", v20, 0x20u);
        v27 = v29;
        swift_arrayDestroy();
        MEMORY[0x259C3F520](v27, -1, -1);
        MEMORY[0x259C3F520](v20, -1, -1);

        v9 = v30;
      }

      else
      {

        v22 = *(v15 + 8);
        v15 += 8;
        v22(v17, v16);
      }

      v13 = v5;
LABEL_15:
      if (v13)
      {
        if (!sub_255750A30())
        {
LABEL_23:

          return;
        }
      }

      else if (!*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_23;
      }

      if ((v12 & 0xC000000000000001) != 0)
      {
        break;
      }

      if (*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        swift_unknownObjectRetain();
        goto LABEL_20;
      }

      __break(1u);
LABEL_27:
      swift_once();
    }

    MEMORY[0x259C3E830](0, v12);
LABEL_20:

    type metadata accessor for JournalMO();
    if (!swift_dynamicCastClass())
    {
      swift_unknownObjectRelease();
    }
  }
}

void sub_2557282C4(uint64_t a1)
{
  v2 = sub_25574F0D0();
  v34 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v4 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for JournalMO();
  v6 = [swift_getObjCClassFromMetadata() fetchRequest];
  sub_255669A88(0, &qword_27F7BDD58, 0x277CCAC30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F7BED30, qword_255757F10);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_255755060;
  v8 = sub_25574F050();
  *(v7 + 56) = sub_255669A88(0, &unk_27F7BF1F0, 0x277CCAD78);
  *(v7 + 64) = sub_2556E8720();
  *(v7 + 32) = v8;
  v9 = sub_255750750();
  [v6 setPredicate_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BDD90, &unk_2557591E0);
  v10 = v35;
  v11 = sub_2557508C0();
  if (v10)
  {

    return;
  }

  v12 = v11;
  v32 = 0;
  v33 = v6;
  v31 = v4;
  v35 = v5;
  v13 = v11 >> 62;
  if (v11 >> 62)
  {
    v14 = sub_255750A30();
  }

  else
  {
    v14 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v15 = v2;
  v16 = v34;
  if (v14 <= 1)
  {
    goto LABEL_11;
  }

  if (qword_27F7BD5B8 != -1)
  {
    goto LABEL_26;
  }

  while (1)
  {
    v17 = sub_25574F2C0();
    __swift_project_value_buffer(v17, qword_27F7C04B0);
    v18 = v31;
    (*(v16 + 16))(v31, a1, v15);

    v19 = sub_25574F2A0();
    a1 = sub_255750780();
    if (os_log_type_enabled(v19, a1))
    {
      v16 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v36 = v30;
      *v16 = 134218498;
      if (v13)
      {
        v20 = sub_255750A30();
      }

      else
      {
        v20 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v23 = v31;
      *(v16 + 4) = v20;

      *(v16 + 12) = 2080;
      *(v16 + 14) = sub_2556E474C(0x4D6C616E72756F4ALL, 0xE90000000000004FLL, &v36);
      *(v16 + 22) = 2080;
      sub_25572D870(&qword_27F7BF200, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v24 = sub_255750E60();
      v26 = v25;
      (*(v34 + 8))(v23, v2);
      v27 = sub_2556E474C(v24, v26, &v36);

      *(v16 + 24) = v27;
      _os_log_impl(&dword_255661000, v19, a1, "Found %ld %s objects with id %s", v16, 0x20u);
      v28 = v30;
      swift_arrayDestroy();
      MEMORY[0x259C3F520](v28, -1, -1);
      MEMORY[0x259C3F520](v16, -1, -1);

      v22 = v12 & 0xFFFFFFFFFFFFFF8;
      if (!v13)
      {
        goto LABEL_12;
      }
    }

    else
    {

      v21 = *(v16 + 8);
      v16 += 8;
      v21(v18, v15);
LABEL_11:
      v22 = v12 & 0xFFFFFFFFFFFFFF8;
      if (!v13)
      {
LABEL_12:
        v15 = v35;
        if (!*(v22 + 16))
        {
          goto LABEL_21;
        }

        goto LABEL_13;
      }
    }

    v29 = sub_255750A30();
    v15 = v35;
    if (!v29)
    {
LABEL_21:

      return;
    }

LABEL_13:
    if ((v12 & 0xC000000000000001) != 0)
    {
      break;
    }

    if (*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      swift_unknownObjectRetain();
      goto LABEL_16;
    }

    __break(1u);
LABEL_26:
    swift_once();
  }

  MEMORY[0x259C3E830](0, v12);
LABEL_16:

  if (!swift_dynamicCastClass())
  {
    swift_unknownObjectRelease();
  }
}

uint64_t JournalMO.title.getter()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE7D8, &qword_255757E98);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v11 - v3;
  v5 = [v1 mergeableAttributes];
  if (v5)
  {
    v6 = v5;
    sub_25572D808(v5 + OBJC_IVAR___WrappedMergeableJournalAttributes_value, v4, type metadata accessor for MergeableJournalAttributes);

    v7 = type metadata accessor for MergeableJournalAttributes(0);
    (*(*(v7 - 8) + 56))(v4, 0, 1, v7);
  }

  else
  {
    v7 = type metadata accessor for MergeableJournalAttributes(0);
    (*(*(v7 - 8) + 56))(v4, 1, 1, v7);
  }

  type metadata accessor for MergeableJournalAttributes(0);
  v8 = (*(*(v7 - 8) + 48))(v4, 1, v7);
  v9 = 0;
  if (!v8)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F7BFF90, &qword_2557551F0);
    sub_25574F360();
    v9 = v11;
  }

  sub_255674B20(v4, &qword_27F7BE7D8, &qword_255757E98);
  return v9;
}

uint64_t JournalMO.color.getter@<X0>(void *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE7D8, &qword_255757E98);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v12 - v4;
  v6 = [v1 mergeableAttributes];
  if (v6)
  {
    v7 = v6;
    sub_25572D808(v6 + OBJC_IVAR___WrappedMergeableJournalAttributes_value, v5, type metadata accessor for MergeableJournalAttributes);

    v8 = type metadata accessor for MergeableJournalAttributes(0);
    (*(*(v8 - 8) + 56))(v5, 0, 1, v8);
  }

  else
  {
    v8 = type metadata accessor for MergeableJournalAttributes(0);
    (*(*(v8 - 8) + 56))(v5, 1, 1, v8);
  }

  type metadata accessor for MergeableJournalAttributes(0);
  v9 = 1;
  if (!(*(*(v8 - 8) + 48))(v5, 1, v8))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BDDC8, &qword_2557551F8);
    sub_25574F360();
    v9 = 0;
  }

  sub_255674B20(v5, &qword_27F7BE7D8, &qword_255757E98);
  v10 = type metadata accessor for MergeableColor(0);
  return (*(*(v10 - 8) + 56))(a1, v9, 1, v10);
}

uint64_t sub_255728B88()
{
  v0 = sub_25574F2C0();
  __swift_allocate_value_buffer(v0, qword_27F7BFF50);
  v1 = __swift_project_value_buffer(v0, qword_27F7BFF50);
  if (qword_27F7BD5E8 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_27F7C0540);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_255728C50()
{
  v0 = sub_25574F0D0();
  __swift_allocate_value_buffer(v0, qword_27F7BFF68);
  __swift_project_value_buffer(v0, qword_27F7BFF68);
  return sub_25574F090();
}

uint64_t static JournalMO.defaultJournalID.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27F7BD820 != -1)
  {
    swift_once();
  }

  v2 = sub_25574F0D0();
  v3 = __swift_project_value_buffer(v2, qword_27F7BFF68);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t JournalMO.SortCategory.init(rawValue:)@<X0>(uint64_t result@<X0>, char *a2@<X8>)
{
  if (result)
  {
    v2 = 2;
  }

  else
  {
    v2 = 1;
  }

  if (result == 65526)
  {
    v3 = 0;
  }

  else
  {
    v3 = v2;
  }

  *a2 = v3;
  return result;
}

uint64_t sub_255728D90()
{
  sub_255750F80();
  sub_255750FB0();
  return sub_255750FD0();
}

uint64_t sub_255728E18(uint64_t a1)
{
  sub_255750F80();
  sub_255750FB0();
  return sub_255750FD0();
}

_WORD *sub_255728E64@<X0>(_WORD *result@<X0>, char *a2@<X8>)
{
  if (*result)
  {
    v2 = 2;
  }

  else
  {
    v2 = 1;
  }

  if (*result == 65526)
  {
    v3 = 0;
  }

  else
  {
    v3 = v2;
  }

  *a2 = v3;
  return result;
}

void sub_255728E88(__int16 *a1@<X8>)
{
  if (*v1)
  {
    v2 = 0;
  }

  else
  {
    v2 = -10;
  }

  *a1 = v2;
}

id static JournalMO.create(context:id:)(uint64_t a1)
{
  type metadata accessor for JournalMO();
  v2 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithContext_];
  v3 = sub_25574F050();
  [v2 setId_];

  return v2;
}

id static JournalMO.create(context:title:color:icon:id:)(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v46 = a1;
  v47 = a6;
  v36 = a5;
  v42 = a2;
  v43 = a3;
  v7 = sub_25574F860();
  v44 = *(v7 - 8);
  v45 = v7;
  MEMORY[0x28223BE20](v7);
  v41 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = type metadata accessor for MergeableJournalAttributes.Icon(0);
  v9 = MEMORY[0x28223BE20](v39);
  v38 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = (&v34 - v12);
  MEMORY[0x28223BE20](v11);
  v15 = &v34 - v14;
  v40 = &v34 - v14;
  v35 = type metadata accessor for MergeableColor(0);
  v16 = MEMORY[0x28223BE20](v35);
  v18 = &v34 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v16);
  v21 = &v34 - v20;
  MEMORY[0x28223BE20](v19);
  v23 = &v34 - v22;
  v37 = &v34 - v22;
  v24 = type metadata accessor for MergeableJournalAttributes(0);
  v25 = (v24 - 8);
  MEMORY[0x28223BE20](v24);
  v27 = &v34 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25572D808(a4, v23, type metadata accessor for MergeableColor);
  sub_25572D808(v36, v15, type metadata accessor for MergeableJournalAttributes.Icon);
  sub_25574F850();
  v48 = 0;
  v49 = 0xE000000000000000;
  sub_25574F340();
  v36 = v25[7];
  static MergeableColor.random.getter(v21);
  sub_25572D808(v21, v18, type metadata accessor for MergeableColor);
  sub_25572D870(&unk_27F7BFFA0, type metadata accessor for MergeableColor, &protocol conformance descriptor for MergeableColor);
  sub_25574F340();
  v35 = type metadata accessor for MergeableColor;
  sub_25572D8B8(v21, type metadata accessor for MergeableColor);
  v34 = v25[8];
  *v13 = 0x672E657261757173;
  v13[1] = 0xEF3378332E646972;
  swift_storeEnumTagMultiPayload();
  v28 = v38;
  sub_25572D808(v13, v38, type metadata accessor for MergeableJournalAttributes.Icon);
  sub_25572D870(&qword_27F7BDE18, type metadata accessor for MergeableJournalAttributes.Icon, &protocol conformance descriptor for MergeableJournalAttributes.Icon);
  sub_25574F340();
  sub_25572D8B8(v13, type metadata accessor for MergeableJournalAttributes.Icon);
  v39 = v25[9];
  sub_25574F850();
  v48 = v42;
  v49 = v43;

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F7BFF90, &qword_2557551F0);
  sub_25574F370();
  v29 = v37;
  sub_25572D808(v37, v21, type metadata accessor for MergeableColor);
  sub_25572D808(v21, v18, type metadata accessor for MergeableColor);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BDDC8, &qword_2557551F8);
  sub_25574F370();
  v30 = v35;
  sub_25572D8B8(v21, v35);
  v31 = v40;
  sub_25572D808(v40, v13, type metadata accessor for MergeableJournalAttributes.Icon);
  sub_25572D808(v13, v28, type metadata accessor for MergeableJournalAttributes.Icon);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F7BFFB0, &unk_255755200);
  sub_25574F370();
  sub_25572D8B8(v13, type metadata accessor for MergeableJournalAttributes.Icon);
  sub_25572D8B8(v31, type metadata accessor for MergeableJournalAttributes.Icon);
  sub_25572D8B8(v29, v30);
  (*(v44 + 40))(&v27[v39], v41, v45);
  v32 = _s13JournalShared0A2MOC6create7context2id19mergeableAttributesACSo22NSManagedObjectContextC_10Foundation4UUIDVAA09MergeableaH0VtFZ_0(v46, v47, v27);
  sub_25572D8B8(v27, type metadata accessor for MergeableJournalAttributes);
  return v32;
}

void static JournalMO.delete(_:moveEntriesToJournalID:context:)(void *a1, uint64_t a2)
{
  v90 = a1;
  v3 = sub_25574F020();
  v88 = *(v3 - 1);
  v89 = v3;
  MEMORY[0x28223BE20](v3);
  v87 = &v74 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F7BED20, &unk_2557551D0);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v8 = &v74 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  MEMORY[0x28223BE20](v9);
  v11 = &v74 - v10;
  v12 = sub_25574F0D0();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v86 = &v74 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v17 = &v74 - v16;
  v19 = v18;
  sub_255663294(a2, v11, &unk_27F7BED20, &unk_2557551D0);
  if ((*(v13 + 48))(v11, 1, v19) == 1)
  {
    sub_255674B20(v11, &unk_27F7BED20, &unk_2557551D0);
LABEL_3:
    v20 = v90;
LABEL_4:
    v21 = [v20 entries];
    if (v21)
    {
      v22 = v21;
      v92 = 0;
      type metadata accessor for JournalEntryMO();
      sub_25572D870(&unk_27F7BFFC0, type metadata accessor for JournalEntryMO, MEMORY[0x277D85378]);
      sub_255750570();

      if (v92)
      {
        JournalMO.removeEntries(_:)(v92);
      }
    }

    [v20 setUserDeleted_];
    [v20 setMergeableAttributes_];
    [v20 setCreatedDate_];
    v23 = v87;
    sub_25574F010();
    v24 = sub_25574EFC0();
    (*(v88 + 8))(v23, v89);
    [v20 setUpdatedDate_];

    [v20 setIsUploadedToCloud_];
    return;
  }

  (*(v13 + 32))(v17, v11, v19);
  sub_2557282C4(v17);
  if (!v25)
  {
    (*(v13 + 8))(v17, v19);
    goto LABEL_3;
  }

  v84 = v25;
  v34 = v17;
  v20 = v90;
  v35 = [v90 entries];
  if (!v35)
  {
    (*(v13 + 8))(v34, v19);

    goto LABEL_4;
  }

  v36 = v35;
  v93[0] = 0;
  v37 = type metadata accessor for JournalEntryMO();
  sub_25572D870(&unk_27F7BFFC0, type metadata accessor for JournalEntryMO, MEMORY[0x277D85378]);
  sub_255750570();

  v38 = v93[0];
  if (!v93[0])
  {

    (*(v13 + 8))(v34, v19);
    goto LABEL_4;
  }

  v77 = v34;
  v82 = v19;
  if ((v93[0] & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_2557509F0();
    sub_2557505C0();
    v40 = v93[0];
    v80 = v93[1];
    v41 = v93[2];
    v42 = v93[3];
    v43 = v93[4];
  }

  else
  {
    v50 = -1 << *(v93[0] + 32);
    v51 = *(v93[0] + 56);
    v80 = v93[0] + 56;
    v41 = ~v50;
    v52 = -v50;
    if (v52 < 64)
    {
      v53 = ~(-1 << v52);
    }

    else
    {
      v53 = -1;
    }

    v43 = v53 & v51;

    v42 = 0;
    v40 = v38;
  }

  v76 = v41;
  v54 = (v41 + 64) >> 6;
  v81 = (v13 + 8);
  *&v39 = 138412290;
  v78 = v39;
  v55 = v80;
  v83 = v40;
  v79 = v37;
  while (v40 < 0)
  {
    v60 = sub_255750A60();
    if (!v60 || (v91 = v60, swift_dynamicCast(), v8 = v92, v58 = v42, v59 = v43, !v92))
    {
LABEL_45:

      sub_25568B1C8(v83);
      (*v81)(v77, v82);

      goto LABEL_4;
    }

LABEL_39:
    v61 = v84;
    v62 = [v84 id];
    v85 = v59;
    if (v62)
    {
      v63 = v86;
      v64 = v62;
      sub_25574F080();

      v41 = v8;
      sub_2556BDE00(v63);
      [v8 addJournalsObject_];
      (*v81)(v63, v82);
    }

    else
    {
      if (qword_27F7BD718 != -1)
      {
        swift_once();
      }

      v65 = sub_25574F2C0();
      __swift_project_value_buffer(v65, qword_27F7BE800);
      v66 = v61;
      v41 = sub_25574F2A0();
      v67 = sub_255750780();

      if (os_log_type_enabled(v41, v67))
      {
        v68 = v61;
        v69 = swift_slowAlloc();
        v70 = swift_slowAlloc();
        v75 = v38;
        v71 = v70;
        *v69 = v78;
        *(v69 + 4) = v66;
        *v70 = v68;
        v72 = v66;
        _os_log_impl(&dword_255661000, v41, v67, "Could not add entry to journal %@ as it's missing an id", v69, 0xCu);
        sub_255674B20(v71, &qword_27F7BEC80, &qword_255757E90);
        v73 = v71;
        v38 = v75;
        MEMORY[0x259C3F520](v73, -1, -1);
        MEMORY[0x259C3F520](v69, -1, -1);
      }

      v8 = v41;
      v55 = v80;
    }

    v42 = v58;
    v43 = v85;
    v40 = v83;
  }

  v56 = v42;
  v57 = v43;
  v58 = v42;
  if (v43)
  {
LABEL_35:
    v59 = (v57 - 1) & v57;
    v8 = *(*(v40 + 48) + ((v58 << 9) | (8 * __clz(__rbit64(v57)))));
    if (!v8)
    {
      goto LABEL_45;
    }

    goto LABEL_39;
  }

  while (1)
  {
    v58 = v56 + 1;
    if (__OFADD__(v56, 1))
    {
      break;
    }

    if (v58 >= v54)
    {
      goto LABEL_45;
    }

    v57 = *(v55 + 8 * v58);
    ++v56;
    if (v57)
    {
      goto LABEL_35;
    }
  }

  __break(1u);
  swift_once();
  v26 = sub_25574F2C0();
  __swift_project_value_buffer(v26, qword_27F7BFF50);
  sub_255663294(v41, v43, &unk_27F7BED20, &unk_2557551D0);
  v27 = v58;
  v28 = sub_25574F2A0();
  v29 = sub_255750780();

  if (os_log_type_enabled(v28, v29))
  {
    v87 = v42;
    LODWORD(v90) = v29;
    v30 = v54;
    v31 = swift_slowAlloc();
    v88 = swift_slowAlloc();
    v89 = swift_slowAlloc();
    v93[0] = v89;
    *v31 = 136315394;
    sub_255663294(v43, v8, &unk_27F7BED20, &unk_2557551D0);
    if (v38(v8, 1, v30) == 1)
    {
      sub_255674B20(v8, &unk_27F7BED20, &unk_2557551D0);
      v32 = 0xE300000000000000;
      v33 = 4271950;
    }

    else
    {
      v33 = sub_25574F040();
      v32 = v44;
      (v87)(v8, v30);
    }

    sub_255674B20(v43, &unk_27F7BED20, &unk_2557551D0);
    v45 = sub_2556E474C(v33, v32, v93);

    *(v31 + 4) = v45;
    *(v31 + 12) = 2112;
    v46 = v58;
    v47 = _swift_stdlib_bridgeErrorToNSError();
    *(v31 + 14) = v47;
    v48 = v88;
    *v88 = v47;
    _os_log_impl(&dword_255661000, v28, v90, "Couldn't fetch journal for ID %s, %@", v31, 0x16u);
    sub_255674B20(v48, &qword_27F7BEC80, &qword_255757E90);
    MEMORY[0x259C3F520](v48, -1, -1);
    v49 = v89;
    __swift_destroy_boxed_opaque_existential_1(v89);
    MEMORY[0x259C3F520](v49, -1, -1);
    MEMORY[0x259C3F520](v31, -1, -1);
  }

  else
  {

    sub_255674B20(v43, &unk_27F7BED20, &unk_2557551D0);
  }
}

id JournalMO.journalEntries.getter()
{
  result = [v0 entries];
  if (result)
  {
    v2 = result;
    type metadata accessor for JournalEntryMO();
    sub_25572D870(&unk_27F7BFFC0, type metadata accessor for JournalEntryMO, MEMORY[0x277D85378]);
    sub_255750570();

    return 0;
  }

  return result;
}

void sub_255729FC0(void (*a1)(id *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = a3;
  if ((a3 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_2557509F0();
    type metadata accessor for JournalEntryMO();
    sub_25572D870(&unk_27F7BFFC0, type metadata accessor for JournalEntryMO, MEMORY[0x277D85378]);
    sub_2557505C0();
    v5 = v21;
    v6 = v22;
    v7 = v23;
    v8 = v24;
    v9 = v25;
  }

  else
  {
    v10 = -1 << *(a3 + 32);
    v6 = a3 + 56;
    v7 = ~v10;
    v11 = -v10;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v9 = v12 & *(a3 + 56);

    v8 = 0;
  }

  v20 = v5;
  if (v5 < 0)
  {
    goto LABEL_14;
  }

LABEL_8:
  v13 = v8;
  v14 = v9;
  v15 = v8;
  if (v9)
  {
LABEL_12:
    v16 = (v14 - 1) & v14;
    v17 = *(*(v5 + 48) + ((v15 << 9) | (8 * __clz(__rbit64(v14)))));
    if (v17)
    {
      while (1)
      {
        v26 = v17;
        a1(&v26);

        if (v4)
        {
          break;
        }

        v8 = v15;
        v9 = v16;
        v5 = v20;
        if ((v20 & 0x8000000000000000) == 0)
        {
          goto LABEL_8;
        }

LABEL_14:
        if (!sub_255750A60())
        {
          goto LABEL_19;
        }

        type metadata accessor for JournalEntryMO();
        swift_dynamicCast();
        v17 = v26;
        v15 = v8;
        v16 = v9;
        if (!v26)
        {
          goto LABEL_21;
        }
      }

      v18 = v20;
    }

    else
    {
LABEL_21:
      v5 = v20;
LABEL_19:
      v18 = v5;
    }

    sub_25568B1C8(v18);
  }

  else
  {
    while (1)
    {
      v15 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v15 >= ((v7 + 64) >> 6))
      {
        goto LABEL_19;
      }

      v14 = *(v6 + 8 * v15);
      ++v13;
      if (v14)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }
}

void sub_25572A1F0(void (*a1)(id *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_14;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_255750A30())
  {
    v6 = 0;
    while (1)
    {
      if ((a3 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x259C3E830](v6, a3);
      }

      else
      {
        if (v6 >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_13;
        }

        v7 = *(a3 + 8 * v6 + 32);
      }

      v8 = v7;
      v9 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      v11 = v7;
      a1(&v11);

      if (!v3)
      {
        ++v6;
        if (v9 != i)
        {
          continue;
        }
      }

      return;
    }

    __break(1u);
LABEL_13:
    __break(1u);
LABEL_14:
    ;
  }
}

id static JournalMO.delete(_:shouldDeleteEntries:)(void *a1, Swift::Bool a2)
{
  v4 = sub_25574F020();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  JournalMO.removeAllEntries(shouldDeleteAllEntries:)(a2);
  [a1 setUserDeleted_];
  [a1 setMergeableAttributes_];
  [a1 setCreatedDate_];
  sub_25574F010();
  v8 = sub_25574EFC0();
  (*(v5 + 8))(v7, v4);
  [a1 setUpdatedDate_];

  return [a1 setIsUploadedToCloud_];
}

Swift::Void __swiftcall JournalMO.removeAllEntries(shouldDeleteAllEntries:)(Swift::Bool shouldDeleteAllEntries)
{
  v31 = sub_25574F020();
  v3 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [v1 entries];
  if (v6)
  {
    v7 = v6;
    v34 = 0;
    v8 = type metadata accessor for JournalEntryMO();
    sub_25572D870(&unk_27F7BFFC0, type metadata accessor for JournalEntryMO, MEMORY[0x277D85378]);
    sub_255750570();

    v9 = v34;
    if (v34)
    {
      JournalMO.removeEntries(_:)(v34);
      if (shouldDeleteAllEntries)
      {
        v28 = v9;
        v29 = v8;
        if ((v9 & 0xC000000000000001) != 0)
        {
          swift_unknownObjectRetain();
          sub_2557509F0();
          sub_2557505C0();
          v10 = v34;
          v11 = v35;
          v12 = v36;
          v13 = v37;
          v14 = v38;
        }

        else
        {
          v15 = -1 << *(v9 + 32);
          v11 = v9 + 56;
          v12 = ~v15;
          v16 = -v15;
          if (v16 < 64)
          {
            v17 = ~(-1 << v16);
          }

          else
          {
            v17 = -1;
          }

          v14 = v17 & *(v9 + 56);

          v13 = 0;
          v10 = v9;
        }

        v27 = v12;
        v18 = (v12 + 64) >> 6;
        v19 = (v3 + 8);
        v30 = v10;
        if (v10 < 0)
        {
          goto LABEL_20;
        }

        while (1)
        {
          v20 = v13;
          v21 = v14;
          v22 = v13;
          if (!v14)
          {
            break;
          }

LABEL_18:
          v23 = (v21 - 1) & v21;
          v24 = *(*(v10 + 48) + ((v22 << 9) | (8 * __clz(__rbit64(v21)))));
          if (!v24)
          {
LABEL_24:
            sub_25568B1C8(v30);

            return;
          }

          while (1)
          {
            sub_25574F000();
            v26 = sub_25574EFC0();
            (*v19)(v5, v31);
            [v24 setDeletedOnDate_];

            [v24 setIsUploadedToCloud_];
            v13 = v22;
            v14 = v23;
            v10 = v30;
            if ((v30 & 0x8000000000000000) == 0)
            {
              break;
            }

LABEL_20:
            v25 = sub_255750A60();
            if (v25)
            {
              v32 = v25;
              swift_dynamicCast();
              v24 = v33;
              v22 = v13;
              v23 = v14;
              if (v33)
              {
                continue;
              }
            }

            goto LABEL_24;
          }
        }

        while (1)
        {
          v22 = v20 + 1;
          if (__OFADD__(v20, 1))
          {
            break;
          }

          if (v22 >= v18)
          {
            goto LABEL_24;
          }

          v21 = *(v11 + 8 * v22);
          ++v20;
          if (v21)
          {
            goto LABEL_18;
          }
        }

        __break(1u);
      }

      else
      {
      }
    }
  }
}

id static JournalMO.makeDefaultJournal(context:)(uint64_t a1)
{
  if (qword_27F7BD820 != -1)
  {
    swift_once();
  }

  v2 = sub_25574F0D0();
  v3 = __swift_project_value_buffer(v2, qword_27F7BFF68);
  sub_255727DC8(v3);
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    type metadata accessor for JournalMO();
    v5 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithContext_];
    v6 = sub_25574F050();
    [v5 setId_];

    [v5 setIsUploadedToCloud_];
    v4 = 0;
  }

  v7 = v4;
  [v5 setSortCategory_];
  [v5 setSortOrder_];

  return v5;
}

uint64_t JournalMO.isDefaultJournal.getter()
{
  v1 = v0;
  v2 = sub_25574F0D0();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F7BFFD0, &unk_255757E80);
  MEMORY[0x28223BE20](v6);
  v8 = &v27 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F7BED20, &unk_2557551D0);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v27 - v14;
  MEMORY[0x28223BE20](v13);
  v17 = &v27 - v16;
  v18 = [v1 id];
  if (v18)
  {
    v19 = v18;
    sub_25574F080();

    v20 = *(v3 + 56);
    v20(v17, 0, 1, v2);
  }

  else
  {
    v20 = *(v3 + 56);
    v20(v17, 1, 1, v2);
  }

  if (qword_27F7BD820 != -1)
  {
    swift_once();
  }

  v21 = __swift_project_value_buffer(v2, qword_27F7BFF68);
  (*(v3 + 16))(v15, v21, v2);
  v20(v15, 0, 1, v2);
  v22 = *(v6 + 48);
  sub_255663294(v17, v8, &unk_27F7BED20, &unk_2557551D0);
  sub_255663294(v15, &v8[v22], &unk_27F7BED20, &unk_2557551D0);
  v23 = *(v3 + 48);
  if (v23(v8, 1, v2) != 1)
  {
    sub_255663294(v8, v12, &unk_27F7BED20, &unk_2557551D0);
    if (v23(&v8[v22], 1, v2) != 1)
    {
      (*(v3 + 32))(v5, &v8[v22], v2);
      sub_25572D870(&qword_27F7BE0B8, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
      v24 = sub_255750100();
      v25 = *(v3 + 8);
      v25(v5, v2);
      sub_255674B20(v15, &unk_27F7BED20, &unk_2557551D0);
      sub_255674B20(v17, &unk_27F7BED20, &unk_2557551D0);
      v25(v12, v2);
      sub_255674B20(v8, &unk_27F7BED20, &unk_2557551D0);
      return v24 & 1;
    }

    sub_255674B20(v15, &unk_27F7BED20, &unk_2557551D0);
    sub_255674B20(v17, &unk_27F7BED20, &unk_2557551D0);
    (*(v3 + 8))(v12, v2);
    goto LABEL_11;
  }

  sub_255674B20(v15, &unk_27F7BED20, &unk_2557551D0);
  sub_255674B20(v17, &unk_27F7BED20, &unk_2557551D0);
  if (v23(&v8[v22], 1, v2) != 1)
  {
LABEL_11:
    sub_255674B20(v8, &unk_27F7BFFD0, &unk_255757E80);
    v24 = 0;
    return v24 & 1;
  }

  sub_255674B20(v8, &unk_27F7BED20, &unk_2557551D0);
  v24 = 1;
  return v24 & 1;
}

uint64_t JournalMO.title.setter(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE7D8, &qword_255757E98);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v6);
  v11 = v15 - v10;
  if (a2)
  {
    v12 = [v2 mergeableAttributes];
    if (v12)
    {
      v13 = v12;
      sub_25572D808(v12 + OBJC_IVAR___WrappedMergeableJournalAttributes_value, v11, type metadata accessor for MergeableJournalAttributes);

      v14 = type metadata accessor for MergeableJournalAttributes(0);
      (*(*(v14 - 8) + 56))(v11, 0, 1, v14);
    }

    else
    {
      v14 = type metadata accessor for MergeableJournalAttributes(0);
      (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
    }

    type metadata accessor for MergeableJournalAttributes(0);
    if ((*(*(v14 - 8) + 48))(v11, 1, v14))
    {

      sub_255663294(v11, v8, &qword_27F7BE7D8, &qword_255757E98);
      sub_2556B7644(v8);
      return sub_255674B20(v11, &qword_27F7BE7D8, &qword_255757E98);
    }

    else
    {
      v15[0] = a1;
      v15[1] = a2;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F7BFF90, &qword_2557551F0);
      sub_25574F370();
      return sub_2556B7644(v11);
    }
  }

  return result;
}

uint64_t (*JournalMO.title.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  *a1 = JournalMO.title.getter();
  a1[1] = v3;
  return sub_25572B024;
}

uint64_t sub_25572B024(uint64_t *a1, char a2)
{
  v3 = *a1;
  v2 = a1[1];
  if ((a2 & 1) == 0)
  {
    return JournalMO.title.setter(*a1, v2);
  }

  JournalMO.title.setter(v3, v2);
}

uint64_t JournalMO.color.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE7D8, &qword_255757E98);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v5 = v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = v29 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BFFE0, &qword_25575BCB0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v29 - v9;
  v11 = type metadata accessor for MergeableColor(0);
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v29[0] = v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = v29 - v16;
  MEMORY[0x28223BE20](v15);
  v19 = v29 - v18;
  sub_255663294(a1, v10, &qword_27F7BFFE0, &qword_25575BCB0);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_255674B20(a1, &qword_27F7BFFE0, &qword_25575BCB0);
    v20 = v10;
    v21 = &qword_27F7BFFE0;
    v22 = &qword_25575BCB0;
  }

  else
  {
    sub_25572D918(v10, v19, type metadata accessor for MergeableColor);
    v23 = [v29[1] mergeableAttributes];
    if (v23)
    {
      v24 = v23;
      sub_25572D808(v23 + OBJC_IVAR___WrappedMergeableJournalAttributes_value, v7, type metadata accessor for MergeableJournalAttributes);

      v25 = 0;
    }

    else
    {
      v25 = 1;
    }

    v26 = type metadata accessor for MergeableJournalAttributes(0);
    v27 = *(v26 - 8);
    (*(v27 + 56))(v7, v25, 1, v26);
    if (!(*(v27 + 48))(v7, 1, v26))
    {
      sub_25572D808(v19, v17, type metadata accessor for MergeableColor);
      sub_25572D808(v17, v29[0], type metadata accessor for MergeableColor);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BDDC8, &qword_2557551F8);
      sub_25574F370();
      sub_25572D8B8(v17, type metadata accessor for MergeableColor);
      sub_2556B7644(v7);
      sub_255674B20(a1, &qword_27F7BFFE0, &qword_25575BCB0);
      return sub_25572D8B8(v19, type metadata accessor for MergeableColor);
    }

    sub_255663294(v7, v5, &qword_27F7BE7D8, &qword_255757E98);
    sub_2556B7644(v5);
    sub_255674B20(a1, &qword_27F7BFFE0, &qword_25575BCB0);
    sub_25572D8B8(v19, type metadata accessor for MergeableColor);
    v20 = v7;
    v21 = &qword_27F7BE7D8;
    v22 = &qword_255757E98;
  }

  return sub_255674B20(v20, v21, v22);
}

void (*JournalMO.color.modify(void *a1))(uint64_t a1, uint64_t a2)
{
  *a1 = v1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BFFE0, &qword_25575BCB0) - 8) + 64);
  if (MEMORY[0x277D84FD8])
  {
    a1[1] = swift_coroFrameAlloc();
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    a1[1] = malloc(v3);
    v4 = malloc(v3);
  }

  a1[2] = v4;
  JournalMO.color.getter(v4);
  return sub_25572B5BC;
}

uint64_t JournalMO.icon.getter@<X0>(void *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE7D8, &qword_255757E98);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v12 - v4;
  v6 = [v1 mergeableAttributes];
  if (v6)
  {
    v7 = v6;
    sub_25572D808(v6 + OBJC_IVAR___WrappedMergeableJournalAttributes_value, v5, type metadata accessor for MergeableJournalAttributes);

    v8 = type metadata accessor for MergeableJournalAttributes(0);
    (*(*(v8 - 8) + 56))(v5, 0, 1, v8);
  }

  else
  {
    v8 = type metadata accessor for MergeableJournalAttributes(0);
    (*(*(v8 - 8) + 56))(v5, 1, 1, v8);
  }

  type metadata accessor for MergeableJournalAttributes(0);
  v9 = 1;
  if (!(*(*(v8 - 8) + 48))(v5, 1, v8))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F7BFFB0, &unk_255755200);
    sub_25574F360();
    v9 = 0;
  }

  sub_255674B20(v5, &qword_27F7BE7D8, &qword_255757E98);
  v10 = type metadata accessor for MergeableJournalAttributes.Icon(0);
  return (*(*(v10 - 8) + 56))(a1, v9, 1, v10);
}

uint64_t sub_25572B7E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(char *))
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v15 - v12;
  sub_255663294(a1, &v15 - v12, a5, a6);
  return a7(v13);
}

uint64_t JournalMO.icon.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE7D8, &qword_255757E98);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v5 = v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = v29 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BFFE8, &qword_25575E488);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v29 - v9;
  v11 = type metadata accessor for MergeableJournalAttributes.Icon(0);
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v29[0] = v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = v29 - v16;
  MEMORY[0x28223BE20](v15);
  v19 = v29 - v18;
  sub_255663294(a1, v10, &qword_27F7BFFE8, &qword_25575E488);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_255674B20(a1, &qword_27F7BFFE8, &qword_25575E488);
    v20 = v10;
    v21 = &qword_27F7BFFE8;
    v22 = &qword_25575E488;
  }

  else
  {
    sub_25572D918(v10, v19, type metadata accessor for MergeableJournalAttributes.Icon);
    v23 = [v29[1] mergeableAttributes];
    if (v23)
    {
      v24 = v23;
      sub_25572D808(v23 + OBJC_IVAR___WrappedMergeableJournalAttributes_value, v7, type metadata accessor for MergeableJournalAttributes);

      v25 = 0;
    }

    else
    {
      v25 = 1;
    }

    v26 = type metadata accessor for MergeableJournalAttributes(0);
    v27 = *(v26 - 8);
    (*(v27 + 56))(v7, v25, 1, v26);
    if (!(*(v27 + 48))(v7, 1, v26))
    {
      sub_25572D808(v19, v17, type metadata accessor for MergeableJournalAttributes.Icon);
      sub_25572D808(v17, v29[0], type metadata accessor for MergeableJournalAttributes.Icon);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F7BFFB0, &unk_255755200);
      sub_25574F370();
      sub_25572D8B8(v17, type metadata accessor for MergeableJournalAttributes.Icon);
      sub_2556B7644(v7);
      sub_255674B20(a1, &qword_27F7BFFE8, &qword_25575E488);
      return sub_25572D8B8(v19, type metadata accessor for MergeableJournalAttributes.Icon);
    }

    sub_255663294(v7, v5, &qword_27F7BE7D8, &qword_255757E98);
    sub_2556B7644(v5);
    sub_255674B20(a1, &qword_27F7BFFE8, &qword_25575E488);
    sub_25572D8B8(v19, type metadata accessor for MergeableJournalAttributes.Icon);
    v20 = v7;
    v21 = &qword_27F7BE7D8;
    v22 = &qword_255757E98;
  }

  return sub_255674B20(v20, v21, v22);
}

void (*JournalMO.icon.modify(void *a1))(uint64_t a1, uint64_t a2)
{
  *a1 = v1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BFFE8, &qword_25575E488) - 8) + 64);
  if (MEMORY[0x277D84FD8])
  {
    a1[1] = swift_coroFrameAlloc();
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    a1[1] = malloc(v3);
    v4 = malloc(v3);
  }

  a1[2] = v4;
  JournalMO.icon.getter(v4);
  return sub_25572BDB0;
}

void sub_25572BDD8(uint64_t a1, char a2, void (*a3)(void *), uint64_t *a4, uint64_t *a5)
{
  v6 = *(a1 + 8);
  v7 = *(a1 + 16);
  if (a2)
  {
    sub_255663294(v7, v6, a4, a5);
    a3(v6);
    sub_255674B20(v7, a4, a5);
  }

  else
  {
    a3(v7);
  }

  free(v7);

  free(v6);
}

uint64_t JournalMO.symbolName.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BFFE8, &qword_25575E488);
  v1 = MEMORY[0x28223BE20](v0 - 8);
  v3 = &v21 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = MEMORY[0x28223BE20](v1);
  v6 = &v21 - v5;
  v7 = MEMORY[0x28223BE20](v4);
  v9 = (&v21 - v8);
  MEMORY[0x28223BE20](v7);
  v11 = &v21 - v10;
  JournalMO.icon.getter(v6);
  v12 = type metadata accessor for MergeableJournalAttributes.Icon(0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 48);
  if (v14(v6, 1, v12) == 1)
  {
    sub_255674B20(v6, &qword_27F7BFFE8, &qword_25575E488);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BFFF0, &qword_255755250) + 48);
      v16 = sub_25574F320();
      (*(*(v16 - 8) + 8))(&v6[v15], v16);
      *v9 = 0x672E657261757173;
      v9[1] = 0xEF3378332E646972;
      swift_storeEnumTagMultiPayload();
      (*(v13 + 56))(v9, 0, 1, v12);
      goto LABEL_7;
    }

    sub_25572D8B8(v6, type metadata accessor for MergeableJournalAttributes.Icon);
  }

  JournalMO.icon.getter(v9);
LABEL_7:
  sub_25572D980(v9, v11);
  sub_25572D980(v11, v3);
  if (v14(v3, 1, v12) != 1)
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (!EnumCaseMultiPayload)
    {
      return *v3;
    }

    if (EnumCaseMultiPayload == 1)
    {
      sub_25572D8B8(v3, type metadata accessor for MergeableJournalAttributes.Icon);
    }

    else
    {
      v19 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BFFF0, &qword_255755250) + 48);
      v20 = sub_25574F320();
      (*(*(v20 - 8) + 8))(&v3[v19], v20);
    }
  }

  return 0;
}

uint64_t JournalMO.emoji.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BFFE8, &qword_25575E488);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v9 - v1;
  JournalMO.icon.getter((&v9 - v1));
  v3 = type metadata accessor for MergeableJournalAttributes.Icon(0);
  v4 = (*(*(v3 - 8) + 48))(v2, 1, v3);
  result = 0;
  if (v4 != 1)
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        return *v2;
      }

      v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BFFF0, &qword_255755250) + 48);
      v8 = sub_25574F320();
      (*(*(v8 - 8) + 8))(&v2[v7], v8);
    }

    else
    {
      sub_25572D8B8(v2, type metadata accessor for MergeableJournalAttributes.Icon);
    }

    return 0;
  }

  return result;
}

Swift::Void __swiftcall JournalMO.addEntries(_:)(Swift::OpaquePointer a1)
{
  v3 = sub_25574F0D0();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = (v22 - v8);
  v10 = [v1 id];
  if (v10)
  {
    v11 = v10;
    sub_25574F080();

    v12 = (*(v4 + 32))(v9, v7, v3);
    MEMORY[0x28223BE20](v12);
    v22[-2] = v9;
    sub_25572A1F0(sub_25572D9F0, &v22[-4], a1._rawValue);

    sub_25569B8B4(v13);

    type metadata accessor for JournalEntryMO();
    sub_25572D870(&unk_27F7BFFC0, type metadata accessor for JournalEntryMO, MEMORY[0x277D85378]);
    v14 = sub_255750560();

    [v1 addEntries_];

    (*(v4 + 8))(v9, v3);
  }

  else
  {
    if (qword_27F7BD818 != -1)
    {
      swift_once();
    }

    v15 = sub_25574F2C0();
    __swift_project_value_buffer(v15, qword_27F7BFF50);
    v16 = v1;
    v22[0] = sub_25574F2A0();
    v17 = sub_255750780();

    if (os_log_type_enabled(v22[0], v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      *v18 = 138412290;
      *(v18 + 4) = v16;
      *v19 = v16;
      v20 = v16;
      _os_log_impl(&dword_255661000, v22[0], v17, "No ID for journal: %@", v18, 0xCu);
      sub_255674B20(v19, &qword_27F7BEC80, &qword_255757E90);
      MEMORY[0x259C3F520](v19, -1, -1);
      MEMORY[0x259C3F520](v18, -1, -1);
    }

    v21 = v22[0];
  }
}

Swift::Void __swiftcall JournalMO.removeEntries(_:)(Swift::OpaquePointer a1)
{

  v2 = sub_25569B8B4(v1);

  JournalMO.removeEntries(_:)(v2);
}

void JournalMO.removeEntries(_:)(uint64_t a1)
{
  v3 = sub_25574F0D0();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = (v21 - v8);
  v10 = [v1 id];
  if (v10)
  {
    v11 = v10;
    sub_25574F080();

    v12 = (*(v4 + 32))(v9, v7, v3);
    MEMORY[0x28223BE20](v12);
    v21[-2] = v9;
    sub_255729FC0(sub_25572DA24, &v21[-4], a1);
    type metadata accessor for JournalEntryMO();
    sub_25572D870(&unk_27F7BFFC0, type metadata accessor for JournalEntryMO, MEMORY[0x277D85378]);
    v13 = sub_255750560();
    [v1 removeEntries_];

    (*(v4 + 8))(v9, v3);
  }

  else
  {
    if (qword_27F7BD818 != -1)
    {
      swift_once();
    }

    v14 = sub_25574F2C0();
    __swift_project_value_buffer(v14, qword_27F7BFF50);
    v15 = v1;
    v21[0] = sub_25574F2A0();
    v16 = sub_255750780();

    if (os_log_type_enabled(v21[0], v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      *v17 = 138412290;
      *(v17 + 4) = v15;
      *v18 = v15;
      v19 = v15;
      _os_log_impl(&dword_255661000, v21[0], v16, "Missing ID for journal: %@", v17, 0xCu);
      sub_255674B20(v18, &qword_27F7BEC80, &qword_255757E90);
      MEMORY[0x259C3F520](v18, -1, -1);
      MEMORY[0x259C3F520](v17, -1, -1);
    }

    v20 = v21[0];
  }
}

uint64_t sub_25572C9CC()
{
  v0 = sub_25574F0D0();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_255669A88(0, &qword_27F7BDD58, 0x277CCAC30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F7BED30, qword_255757F10);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_25575CBA0;
  v5 = MEMORY[0x277D837D0];
  *(v4 + 56) = MEMORY[0x277D837D0];
  v6 = sub_255666F5C();
  *(v4 + 32) = 0x656C654472657375;
  *(v4 + 40) = 0xEB00000000646574;
  *(v4 + 96) = v5;
  *(v4 + 104) = v6;
  *(v4 + 64) = v6;
  *(v4 + 72) = 0x656C654472657375;
  *(v4 + 80) = 0xEB00000000646574;
  *(v4 + 136) = v5;
  *(v4 + 144) = v6;
  *(v4 + 112) = 0xD000000000000013;
  *(v4 + 120) = 0x8000000255752490;
  if (qword_27F7BD820 != -1)
  {
    swift_once();
  }

  v7 = __swift_project_value_buffer(v0, qword_27F7BFF68);
  (*(v1 + 16))(v3, v7, v0);
  v8 = sub_25574F050();
  (*(v1 + 8))(v3, v0);
  *(v4 + 176) = sub_255669A88(0, &unk_27F7BF1F0, 0x277CCAD78);
  *(v4 + 184) = sub_2556E8720();
  *(v4 + 152) = v8;
  result = sub_255750750();
  qword_27F7BFF80 = result;
  return result;
}

id static JournalMO.visibleNamedJournalsPredicate.getter()
{
  if (qword_27F7BD828 != -1)
  {
    swift_once();
  }

  v1 = qword_27F7BFF80;

  return v1;
}

id static JournalMO.visibleNamedJournalsRequest()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BFFF8, &qword_25575E490);
  v1 = *(v0 - 8);
  v2 = MEMORY[0x28223BE20](v0);
  v4 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v6 = &v22 - v5;
  v7 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v8 = sub_255750180();
  v9 = [v7 initWithEntityName_];

  if (qword_27F7BD828 != -1)
  {
    swift_once();
  }

  [v9 setPredicate_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F7C0000, qword_25575E498);
  v10 = *(v1 + 72);
  v11 = *(v1 + 80);
  v28 = v9;
  v12 = (v11 + 32) & ~v11;
  v25 = v10;
  v26 = 2 * v10;
  v27 = swift_allocObject();
  v13 = v27 + v12;
  KeyPath = swift_getKeyPath();
  MEMORY[0x259C3C9D0](KeyPath, 0);
  v15 = swift_getKeyPath();
  MEMORY[0x259C3C9E0](v15, 0);
  v16 = swift_getKeyPath();
  v30 = v13;
  MEMORY[0x259C3C9C0](v16, 1);
  v31 = MEMORY[0x277D84F90];
  sub_255750BD0();
  v24 = sub_255669A88(0, &qword_27F7BE228, 0x277CCAC98);
  v17 = *(v1 + 16);
  v17(v6, v13, v0);
  v17(v4, v6, v0);
  v29 = type metadata accessor for JournalMO();
  sub_2557507C0();
  v18 = *(v1 + 8);
  v18(v6, v0);
  v23 = v18;
  sub_255750BB0();
  sub_255750BE0();
  sub_255750BF0();
  sub_255750BC0();
  v17(v6, v30 + v25, v0);
  v17(v4, v6, v0);
  sub_2557507C0();
  v18(v6, v0);
  sub_255750BB0();
  sub_255750BE0();
  sub_255750BF0();
  sub_255750BC0();
  v17(v6, v30 + v26, v0);
  v17(v4, v6, v0);
  sub_2557507C0();
  v23(v6, v0);
  sub_255750BB0();
  sub_255750BE0();
  sub_255750BF0();
  sub_255750BC0();
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v19 = sub_255750370();

  v20 = v28;
  [v28 setSortDescriptors_];

  return v20;
}

uint64_t static JournalMO.namedJournalsSortDescriptors()()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F7C0000, qword_25575E498);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BFFF8, &qword_25575E490);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_2557565E0;
  KeyPath = swift_getKeyPath();
  MEMORY[0x259C3C9D0](KeyPath, 0);
  v2 = swift_getKeyPath();
  MEMORY[0x259C3C9E0](v2, 0);
  v3 = swift_getKeyPath();
  MEMORY[0x259C3C9C0](v3, 1);
  return v0;
}

id sub_25572D1D8@<X0>(id *a1@<X0>, _WORD *a2@<X8>)
{
  result = [*a1 sortCategory];
  *a2 = result;
  return result;
}

id sub_25572D220@<X0>(id *a1@<X0>, _DWORD *a2@<X8>)
{
  result = [*a1 sortOrder];
  *a2 = result;
  return result;
}

uint64_t static JournalMO.entryCountIncludingDraftsForAllEntries(context:)()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v1 = sub_255750180();
  v2 = [v0 initWithEntityName_];

  if (qword_27F7BD658 != -1)
  {
    swift_once();
  }

  [v2 setPredicate_];
  type metadata accessor for JournalEntryMO();
  v3 = sub_2557508B0();

  return v3;
}

void static JournalMO.entryCountIncludingDrafts(for:context:)(uint64_t a1, uint64_t a2)
{
  v3 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v4 = sub_255750180();
  v5 = [v3 initWithEntityName_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F7C0010, "*}");
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_255755070;
  if (qword_27F7BD658 != -1)
  {
    swift_once();
  }

  v7 = qword_27F7BDCF8;
  *(v6 + 32) = qword_27F7BDCF8;
  v8 = v7;
  *(v6 + 40) = _sSo11NSPredicateC13JournalSharedE09belongsToB02idAB10Foundation4UUIDV_tFZ_0(a1);
  sub_255669A88(0, &qword_27F7BDD58, 0x277CCAC30);
  v9 = sub_255750370();

  v10 = [objc_opt_self() andPredicateWithSubpredicates_];

  [v5 setPredicate_];
  MEMORY[0x28223BE20](v11);
  sub_255750870();
}

uint64_t sub_25572D548@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for JournalEntryMO();
  result = sub_2557508B0();
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

id _s13JournalShared0A2MOC6create7context2id19mergeableAttributesACSo22NSManagedObjectContextC_10Foundation4UUIDVAA09MergeableaH0VtFZ_0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE7D8, &qword_255757E98);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v19 - v6;
  v8 = sub_25574F020();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for JournalMO();
  v12 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithContext_];
  v13 = sub_25574F050();
  [v12 setId_];

  sub_25574F010();
  v14 = sub_25574EFC0();
  v15 = *(v9 + 8);
  v15(v11, v8);
  [v12 setCreatedDate_];

  sub_25574F010();
  v16 = sub_25574EFC0();
  v15(v11, v8);
  [v12 setUpdatedDate_];

  sub_25572D808(a3, v7, type metadata accessor for MergeableJournalAttributes);
  v17 = type metadata accessor for MergeableJournalAttributes(0);
  (*(*(v17 - 8) + 56))(v7, 0, 1, v17);
  sub_2556B7644(v7);
  [v12 setIsUploadedToCloud_];
  [v12 setUserDeleted_];
  return v12;
}

uint64_t sub_25572D808(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_25572D870(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_25572D8B8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_25572D918(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_25572D980(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BFFE8, &qword_25575E488);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_25572DA90()
{
  result = qword_27F7C0020;
  if (!qword_27F7C0020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7C0020);
  }

  return result;
}

uint64_t sub_25572DB70(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_25574FFD0();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v19 - v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  sub_25574FA80();
  sub_25574FA80();
  LOBYTE(a4) = sub_25574FFC0();
  v13 = *(v7 + 8);
  v13(v10, v6);
  v13(v12, v6);
  if (a4 & 1) == 0 && (sub_25574FA80(), sub_25574FA80(), v14 = sub_25574FFA0(), v13(v10, v6), v13(v12, v6), (v14) && (sub_25574FA80(), sub_25574FA80(), v15 = sub_25574FFA0(), v13(v10, v6), v13(v12, v6), (v15) && (sub_25574FA80(), sub_25574FA80(), v16 = sub_25574FFB0(), v13(v10, v6), v13(v12, v6), (v16 & 1) == 0))
  {
    sub_25574FA80();
    sub_25574FA80();
    v17 = sub_25574FFB0();
    v13(v10, v6);
    v13(v12, v6);
  }

  else
  {
    v17 = 1;
  }

  return v17 & 1;
}

uint64_t MergeableEntryAttributes.merge(text:)(uint64_t a1)
{
  v1 = sub_25574F500();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for MergeableEntryAttributes(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE798, &qword_255757E30);
  sub_25574FA10();
  return (*(v2 + 8))(v4, v1);
}

uint64_t MergeableEntryAttributes.merge(title:)(uint64_t a1)
{
  v2 = sub_25574F500();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE818, &qword_255757FD0);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v12 - v8;
  (*(v7 + 16))(&v12 - v8, a1, v6);
  sub_25574FA10();
  v10 = *(v3 + 8);
  v10(v5, v2);
  sub_25574FA10();
  v10(v5, v2);
  return (*(v7 + 8))(v9, v6);
}

uint64_t MergeableEntryAttributes.merge(assetPlacement:)(uint64_t a1)
{
  v2 = v1;
  v4 = sub_25574F500();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for MergeableEntryAssetsPlacement(0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_255670F14(a1, v10, type metadata accessor for MergeableEntryAssetsPlacement);
  v11 = type metadata accessor for MergeableEntryAttributes(0);
  MergeableEntryAssetsPlacement.merge(_:)(v2 + *(v11 + 24), v7);
  v12 = *(v5 + 8);
  v12(v7, v4);
  MergeableEntryAssetsPlacement.merge(_:)(v10, v7);
  v12(v7, v4);
  return sub_25573439C(v10, type metadata accessor for MergeableEntryAssetsPlacement);
}

uint64_t MergeableEntryAttributes.addAssociatedJournal(id:)(uint64_t a1)
{
  v1 = sub_25574F0D0();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for MergeableEntryAttributes(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE0C8, &qword_255755C60);
  sub_25574FC60();
  return (*(v2 + 8))(v4, v1);
}

uint64_t MergeableEntryAttributes.removeAssociatedJournal(id:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F7BED20, &unk_2557551D0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v5 - v2;
  type metadata accessor for MergeableEntryAttributes(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE0C8, &qword_255755C60);
  sub_25574FC70();
  return sub_255674B20(v3, &unk_27F7BED20, &unk_2557551D0);
}

uint64_t MergeableEntryAttributes.init(title:text:assetPlacement:associatedJournalIDs:unknownProperties:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X4>, uint64_t a6@<X8>)
{
  v53 = a4;
  v54 = a5;
  v51 = a2;
  v52 = a3;
  v50 = a1;
  v47 = a6;
  v7 = sub_25574F860();
  v48 = *(v7 - 8);
  v49 = v7;
  MEMORY[0x28223BE20](v7);
  v56 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEA90, &unk_25575B390);
  v57 = *(v45 - 8);
  MEMORY[0x28223BE20](v45);
  v41 = &v40 - v9;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F7BED20, &unk_2557551D0);
  v10 = MEMORY[0x28223BE20](v55);
  v12 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v40 - v14;
  MEMORY[0x28223BE20](v13);
  v17 = &v40 - v16;
  v43 = &v40 - v16;
  v46 = type metadata accessor for MergeableEntryAttributes(0);
  v18 = a6 + *(v46 + 24);
  v19 = sub_25574F0D0();
  v20 = *(*(v19 - 8) + 56);
  v20(v17, 1, 1, v19);
  v44 = sub_255664884(&qword_27F7BE0B0, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_25574F720();
  v21 = type metadata accessor for MergeableEntryAssetsPlacement(0);
  sub_25574FD10();
  sub_25574FD10();
  sub_25574F850();
  v22 = *(v21 + 20);
  v20(v15, 1, 1, v19);
  sub_255663294(v15, v12, &unk_27F7BED20, &unk_2557551D0);
  v40 = sub_255663D60();
  sub_25574F340();
  sub_255674B20(v15, &unk_27F7BED20, &unk_2557551D0);
  v42 = *(v21 + 32);
  sub_25574F850();
  v23 = v41;
  v24 = v45;
  (*(v57 + 16))(v18, v41, v45);
  v25 = v43;
  sub_255663294(v43, v15, &unk_27F7BED20, &unk_2557551D0);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEDB0, &unk_255759240);
  (*(*(v26 - 8) + 8))(v18 + v22, v26);
  sub_255663294(v15, v12, &unk_27F7BED20, &unk_2557551D0);
  sub_25574F340();
  sub_255674B20(v15, &unk_27F7BED20, &unk_2557551D0);
  (*(v57 + 8))(v23, v24);
  sub_255674B20(v25, &unk_27F7BED20, &unk_2557551D0);
  v27 = v49;
  v28 = *(v48 + 40);
  v28(v18 + v42, v56, v49);
  v29 = v46;
  v30 = v47;
  v31 = *(v46 + 28);
  sub_25574FD10();
  v32 = *(v29 + 32);
  sub_25574F850();
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE818, &qword_255757FD0);
  (*(*(v33 - 8) + 32))(v30, v50, v33);
  v34 = *(v29 + 20);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE798, &qword_255757E30);
  (*(*(v35 - 8) + 32))(v30 + v34, v51, v35);
  sub_255677F7C(v52, v18);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE0C8, &qword_255755C60);
  v37 = *(v36 - 8);
  v38 = v53;
  (*(v37 + 24))(v30 + v31, v53, v36);
  v28(v30 + v32, v54, v27);
  return (*(v37 + 40))(v30 + v31, v38, v36);
}

Swift::Void __swiftcall MergeableEntryAttributes.append(title:)(Swift::String title)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE818, &qword_255757FD0);

  sub_25574FA20();
}

Swift::Void __swiftcall MergeableEntryAttributes.append(text:)(Swift::String text)
{
  type metadata accessor for MergeableEntryAttributes(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE798, &qword_255757E30);
  sub_25574FA20();
}

uint64_t static MergeableEntryAttributes.hasSharedHistory(_:_:)(uint64_t a1, uint64_t a2)
{
  if (sub_25572DB70(a1, a2, &qword_27F7BE818, &qword_255757FD0))
  {
    v4 = type metadata accessor for MergeableEntryAttributes(0);
    v5 = sub_25572DB70(a1 + *(v4 + 20), a2 + *(v4 + 20), &qword_27F7BE798, &qword_255757E30);
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

uint64_t MergeableEntryAttributes.merge(_:)(uint64_t a1)
{
  v2 = sub_25574F500();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25574F4F0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE818, &qword_255757FD0);
  sub_25574FA10();
  sub_25574F4E0();
  v6 = *(v3 + 8);
  v6(v5, v2);
  v7 = type metadata accessor for MergeableEntryAttributes(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE798, &qword_255757E30);
  sub_25574FA10();
  sub_25574F4E0();
  v6(v5, v2);
  MergeableEntryAssetsPlacement.merge(_:)(a1 + *(v7 + 24), v5);
  sub_25574F4E0();
  v6(v5, v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE0C8, &qword_255755C60);
  sub_25574FC50();
  sub_25574F4E0();
  v6(v5, v2);
  sub_25574F810();
  sub_25574F4E0();
  return (v6)(v5, v2);
}

{
  v2 = sub_25574F500();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MergeableEntryAttributes.merge(_:)(a1);
  return (*(v3 + 8))(v5, v2);
}

uint64_t MergeableEntryAttributes.merge(journalIDs:)(uint64_t a1)
{
  v2 = sub_25574F500();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE0C8, &qword_255755C60);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v12 - v8;
  (*(v7 + 16))(&v12 - v8, a1, v6);
  type metadata accessor for MergeableEntryAttributes(0);
  sub_25574FC50();
  v10 = *(v3 + 8);
  v10(v5, v2);
  sub_25574FC50();
  v10(v5, v2);
  return (*(v7 + 8))(v9, v6);
}

uint64_t MergeableEntryAttributes.deepCopy(idMap:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v47 = a1;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEA90, &unk_25575B390);
  v54 = *(v57 - 8);
  MEMORY[0x28223BE20](v57);
  v59 = &v42 - v3;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F7BED20, &unk_2557551D0);
  v4 = MEMORY[0x28223BE20](v62);
  v53 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v4);
  v52 = &v42 - v7;
  MEMORY[0x28223BE20](v6);
  v60 = &v42 - v8;
  v58 = sub_25574F860();
  v56 = *(v58 - 8);
  v9 = MEMORY[0x28223BE20](v58);
  v61 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v48 = &v42 - v11;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE0C8, &qword_255755C60);
  v55 = *(v50 - 8);
  MEMORY[0x28223BE20](v50);
  v49 = &v42 - v12;
  v13 = type metadata accessor for MergeableEntryAssetsPlacement(0);
  v14 = v13 - 8;
  MEMORY[0x28223BE20](v13);
  v16 = &v42 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE818, &qword_255757FD0);
  sub_255669798(&qword_27F7C0028, &qword_27F7BE818, &qword_255757FD0, MEMORY[0x277CFB638]);
  sub_25574FD80();
  v17 = type metadata accessor for MergeableEntryAttributes(0);
  v18 = *(v17 + 20);
  v46 = a2;
  v19 = v47;
  sub_25573263C(v47, a2 + v18);
  sub_2557333E0(v19, v16);
  v45 = v17;
  sub_255669798(&qword_27F7C0030, &qword_27F7BE0C8, &qword_255755C60, MEMORY[0x277CFB700]);
  sub_25574FD80();
  sub_25574F7F0();
  v20 = a2 + *(v17 + 24);
  v21 = sub_25574F0D0();
  v22 = *(*(v21 - 8) + 56);
  v22(v60, 1, 1, v21);
  v47 = sub_255664884(&qword_27F7BE0B0, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  v23 = v59;
  sub_25574F720();
  sub_25574FD10();
  sub_25574FD10();
  sub_25574F850();
  v24 = *(v14 + 28);
  v25 = v52;
  v22(v52, 1, 1, v21);
  v26 = v25;
  v27 = v53;
  sub_255663294(v25, v53, &unk_27F7BED20, &unk_2557551D0);
  v44 = sub_255663D60();
  sub_25574F340();
  sub_255674B20(v25, &unk_27F7BED20, &unk_2557551D0);
  v43 = *(v14 + 40);
  sub_25574F850();
  v28 = v54;
  v29 = v57;
  (*(v54 + 16))(v20, v23, v57);
  v30 = v60;
  sub_255663294(v60, v26, &unk_27F7BED20, &unk_2557551D0);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEDB0, &unk_255759240);
  (*(*(v31 - 8) + 8))(v20 + v24, v31);
  sub_255663294(v26, v27, &unk_27F7BED20, &unk_2557551D0);
  sub_25574F340();
  sub_255674B20(v26, &unk_27F7BED20, &unk_2557551D0);
  (*(v28 + 8))(v59, v29);
  sub_255674B20(v30, &unk_27F7BED20, &unk_2557551D0);
  v32 = *(v56 + 40);
  v33 = v58;
  v32(v20 + v43, v61, v58);
  v35 = v45;
  v34 = v46;
  v36 = *(v45 + 28);
  sub_25574FD10();
  v37 = *(v35 + 32);
  sub_25574F850();
  sub_255677F7C(v51, v20);
  v38 = v55;
  v40 = v49;
  v39 = v50;
  (*(v55 + 24))(v34 + v36, v49, v50);
  v32(v34 + v37, v48, v33);
  return (*(v38 + 40))(v34 + v36, v40, v39);
}

uint64_t MergeableEntryAttributes.title.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE818, &qword_255757FD0);
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t MergeableEntryAttributes.associatedJournalIDs.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for MergeableEntryAttributes(0) + 28);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE0C8, &qword_255755C60);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

BOOL MergeableEntryAttributes.Partial.merge(delta:)(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BF508, &qword_25575E670);
  v91 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v75 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BF500, &unk_25575B3E0);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v84 = &v75 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v89 = &v75 - v10;
  v11 = type metadata accessor for MergeableEntryAssetsPlacement.Partial(0);
  v87 = *(v11 - 8);
  v88 = v11;
  MEMORY[0x28223BE20](v11);
  v81 = &v75 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7C0070, &unk_25575E660);
  v14 = MEMORY[0x28223BE20](v13 - 8);
  v83 = &v75 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v86 = &v75 - v16;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7C0078, &qword_25575E678);
  v90 = *(v85 - 8);
  MEMORY[0x28223BE20](v85);
  v80 = &v75 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7C0068, &qword_25575E658);
  v19 = MEMORY[0x28223BE20](v18 - 8);
  v82 = &v75 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v22 = &v75 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7C0080, &unk_25575E680);
  v24 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v79 = &v75 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7C0060, &qword_25575E650);
  v27 = MEMORY[0x28223BE20](v26 - 8);
  v29 = &v75 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v31 = &v75 - v30;
  v92 = type metadata accessor for MergeableEntryAttributes.Partial(0);
  MEMORY[0x28223BE20](v92);
  v33 = &v75 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_255670F14(v2, v33, type metadata accessor for MergeableEntryAttributes.Partial);
  v93 = a1;
  v34 = MergeableEntryAttributes.Partial.canMerge(delta:)(a1);
  sub_25573439C(v33, type metadata accessor for MergeableEntryAttributes.Partial);
  if (v34)
  {
    v77 = v34;
    v76 = v6;
    v78 = v4;
    sub_255663294(v2, v31, &qword_27F7C0060, &qword_25575E650);
    v75 = v24;
    v35 = v2;
    v36 = *(v24 + 48);
    v37 = v36(v31, 1, v23);
    sub_255674B20(v31, &qword_27F7C0060, &qword_25575E650);
    if (v37 == 1)
    {
      sub_25568DF1C(v93, v35, &qword_27F7C0060, &qword_25575E650);
      v38 = v90;
    }

    else
    {
      sub_255663294(v93, v29, &qword_27F7C0060, &qword_25575E650);
      v39 = v36(v29, 1, v23);
      v38 = v90;
      if (v39 == 1)
      {
        sub_255674B20(v29, &qword_27F7C0060, &qword_25575E650);
      }

      else
      {
        v40 = v75;
        v41 = v79;
        (*(v75 + 32))(v79, v29, v23);
        if (!v36(v35, 1, v23))
        {
          sub_25574FA50();
        }

        (*(v40 + 8))(v41, v23);
      }
    }

    v42 = v92;
    v43 = v92[5];
    sub_255663294(v35 + v43, v22, &qword_27F7C0068, &qword_25575E658);
    v44 = *(v38 + 48);
    v45 = v85;
    v46 = v44(v22, 1, v85);
    sub_255674B20(v22, &qword_27F7C0068, &qword_25575E658);
    v47 = v42[5];
    if (v46 == 1)
    {
      sub_25568DF1C(v93 + v47, v35 + v43, &qword_27F7C0068, &qword_25575E658);
    }

    else
    {
      v48 = v82;
      sub_255663294(v93 + v47, v82, &qword_27F7C0068, &qword_25575E658);
      if (v44(v48, 1, v45) == 1)
      {
        sub_255674B20(v48, &qword_27F7C0068, &qword_25575E658);
      }

      else
      {
        v49 = v90;
        v50 = v80;
        (*(v90 + 32))(v80, v48, v45);
        if (!v44((v35 + v43), 1, v45))
        {
          sub_25574FA50();
        }

        (*(v49 + 8))(v50, v45);
      }
    }

    v51 = v88;
    v52 = v92;
    v53 = v92[6];
    v54 = v86;
    sub_255663294(v35 + v53, v86, &qword_27F7C0070, &unk_25575E660);
    v55 = *(v87 + 48);
    v56 = v55(v54, 1, v51);
    sub_255674B20(v54, &qword_27F7C0070, &unk_25575E660);
    v57 = v52[6];
    if (v56 == 1)
    {
      sub_25568DF1C(v93 + v57, v35 + v53, &qword_27F7C0070, &unk_25575E660);
      v58 = v78;
      v59 = v91;
    }

    else
    {
      v60 = v83;
      sub_255663294(v93 + v57, v83, &qword_27F7C0070, &unk_25575E660);
      v61 = v55(v60, 1, v51);
      v59 = v91;
      if (v61 == 1)
      {
        sub_255674B20(v60, &qword_27F7C0070, &unk_25575E660);
      }

      else
      {
        v62 = v60;
        v63 = v81;
        sub_255734A04(v62, v81, type metadata accessor for MergeableEntryAssetsPlacement.Partial);
        if (!v55(v35 + v53, 1, v51))
        {
          MergeableEntryAssetsPlacement.Partial.merge(delta:)(v63);
        }

        sub_25573439C(v63, type metadata accessor for MergeableEntryAssetsPlacement.Partial);
      }

      v58 = v78;
    }

    v64 = v92;
    v65 = v92[7];
    v66 = v89;
    sub_255663294(v35 + v65, v89, &qword_27F7BF500, &unk_25575B3E0);
    v67 = *(v59 + 48);
    v68 = v67(v66, 1, v58);
    sub_255674B20(v66, &qword_27F7BF500, &unk_25575B3E0);
    v69 = v64[7];
    if (v68 == 1)
    {
      sub_25568DF1C(v93 + v69, v35 + v65, &qword_27F7BF500, &unk_25575B3E0);
      LOBYTE(v34) = v77;
    }

    else
    {
      v70 = v84;
      sub_255663294(v93 + v69, v84, &qword_27F7BF500, &unk_25575B3E0);
      v71 = v67(v70, 1, v58);
      LOBYTE(v34) = v77;
      if (v71 == 1)
      {
        sub_255674B20(v70, &qword_27F7BF500, &unk_25575B3E0);
      }

      else
      {
        v72 = v91;
        v73 = v76;
        (*(v91 + 32))(v76, v70, v58);
        if (!v67(v35 + v65, 1, v58))
        {
          sub_25574FCA0();
        }

        (*(v72 + 8))(v73, v58);
      }
    }
  }

  return v34;
}

BOOL MergeableEntryAttributes.Partial.canMerge(delta:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BF500, &unk_25575B3E0);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v58 = &v58 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v70 = &v58 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BF508, &qword_25575E670);
  v64 = *(v6 - 8);
  v65 = v6;
  MEMORY[0x28223BE20](v6);
  v63 = &v58 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7C0070, &unk_25575E660);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v59 = &v58 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v62 = &v58 - v11;
  v12 = type metadata accessor for MergeableEntryAssetsPlacement.Partial(0);
  v67 = *(v12 - 8);
  v68 = v12;
  MEMORY[0x28223BE20](v12);
  v69 = &v58 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7C0068, &qword_25575E658);
  v15 = MEMORY[0x28223BE20](v14 - 8);
  v61 = &v58 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v18 = &v58 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7C0078, &qword_25575E678);
  v66 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v60 = &v58 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7C0060, &qword_25575E650);
  v22 = MEMORY[0x28223BE20](v21 - 8);
  v24 = &v58 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v26 = &v58 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7C0080, &unk_25575E680);
  v28 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v30 = &v58 - v29;
  sub_255663294(a1, v26, &qword_27F7C0060, &qword_25575E650);
  v31 = *(v28 + 48);
  if (v31(v26, 1, v27) == 1)
  {
    v24 = v26;
LABEL_5:
    sub_255674B20(v24, &qword_27F7C0060, &qword_25575E650);
    v32 = v69;
    v33 = v70;
    v34 = a1;
    goto LABEL_6;
  }

  (*(v28 + 32))(v30, v26, v27);
  sub_255663294(v71, v24, &qword_27F7C0060, &qword_25575E650);
  if (v31(v24, 1, v27) == 1)
  {
    (*(v28 + 8))(v30, v27);
    goto LABEL_5;
  }

  v51 = sub_25574FA60();
  v52 = *(v28 + 8);
  v52(v30, v27);
  v52(v24, v27);
  v32 = v69;
  v33 = v70;
  v34 = a1;
  if ((v51 & 1) == 0)
  {
    return 0;
  }

LABEL_6:
  v35 = type metadata accessor for MergeableEntryAttributes.Partial(0);
  sub_255663294(v34 + v35[5], v18, &qword_27F7C0068, &qword_25575E658);
  v36 = v66;
  v37 = *(v66 + 48);
  if (v37(v18, 1, v19) == 1)
  {
    v38 = v18;
LABEL_10:
    v41 = v67;
    sub_255674B20(v38, &qword_27F7C0068, &qword_25575E658);
    v42 = v68;
    goto LABEL_11;
  }

  v39 = v60;
  (*(v36 + 32))(v60, v18, v19);
  v40 = v36;
  v38 = v61;
  sub_255663294(v71 + v35[5], v61, &qword_27F7C0068, &qword_25575E658);
  if (v37(v38, 1, v19) == 1)
  {
    (*(v40 + 8))(v39, v19);
    goto LABEL_10;
  }

  v53 = sub_25574FA60();
  v54 = *(v40 + 8);
  v54(v39, v19);
  v54(v38, v19);
  v41 = v67;
  v42 = v68;
  if ((v53 & 1) == 0)
  {
    return 0;
  }

LABEL_11:
  v43 = v62;
  sub_255663294(v34 + v35[6], v62, &qword_27F7C0070, &unk_25575E660);
  v44 = *(v41 + 48);
  if (v44(v43, 1, v42) == 1)
  {
    v46 = v64;
    v45 = v65;
    v47 = v63;
  }

  else
  {
    sub_255734A04(v43, v32, type metadata accessor for MergeableEntryAssetsPlacement.Partial);
    v43 = v59;
    sub_255663294(v71 + v35[6], v59, &qword_27F7C0070, &unk_25575E660);
    v48 = v44(v43, 1, v42);
    v46 = v64;
    v45 = v65;
    v47 = v63;
    if (v48 != 1)
    {
      v55 = MergeableEntryAssetsPlacement.Partial.canMerge(delta:)(v32);
      sub_25573439C(v32, type metadata accessor for MergeableEntryAssetsPlacement.Partial);
      sub_25573439C(v43, type metadata accessor for MergeableEntryAssetsPlacement.Partial);
      if (!v55)
      {
        return 0;
      }

      goto LABEL_16;
    }

    sub_25573439C(v32, type metadata accessor for MergeableEntryAssetsPlacement.Partial);
  }

  sub_255674B20(v43, &qword_27F7C0070, &unk_25575E660);
LABEL_16:
  sub_255663294(v34 + v35[7], v33, &qword_27F7BF500, &unk_25575B3E0);
  v49 = *(v46 + 48);
  if (v49(v33, 1, v45) == 1)
  {
LABEL_19:
    sub_255674B20(v33, &qword_27F7BF500, &unk_25575B3E0);
    return 1;
  }

  (*(v46 + 32))(v47, v33, v45);
  v33 = v58;
  sub_255663294(v71 + v35[7], v58, &qword_27F7BF500, &unk_25575B3E0);
  if (v49(v33, 1, v45) == 1)
  {
    (*(v46 + 8))(v47, v45);
    goto LABEL_19;
  }

  v56 = sub_25574FCB0();
  v57 = *(v46 + 8);
  v57(v47, v45);
  v57(v33, v45);
  return (v56 & 1) != 0;
}

uint64_t MergeableEntryAttributes.Partial.visitReferences(_:)(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BF500, &unk_25575B3E0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v25 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7C0070, &unk_25575E660);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v25 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7C0068, &qword_25575E658);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v25 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7C0060, &qword_25575E650);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v25 - v14;
  sub_255663294(v2, &v25 - v14, &qword_27F7C0060, &qword_25575E650);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7C0080, &unk_25575E680);
  v17 = *(v16 - 8);
  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {
    sub_255674B20(v15, &qword_27F7C0060, &qword_25575E650);
  }

  else
  {
    sub_25574FA30();
    (*(v17 + 8))(v15, v16);
  }

  v18 = type metadata accessor for MergeableEntryAttributes.Partial(0);
  sub_255663294(v2 + v18[5], v12, &qword_27F7C0068, &qword_25575E658);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7C0078, &qword_25575E678);
  v20 = *(v19 - 8);
  if ((*(v20 + 48))(v12, 1, v19) == 1)
  {
    sub_255674B20(v12, &qword_27F7C0068, &qword_25575E658);
  }

  else
  {
    sub_25574FA30();
    (*(v20 + 8))(v12, v19);
  }

  sub_255663294(v2 + v18[6], v9, &qword_27F7C0070, &unk_25575E660);
  v21 = type metadata accessor for MergeableEntryAssetsPlacement.Partial(0);
  if ((*(*(v21 - 8) + 48))(v9, 1, v21) == 1)
  {
    sub_255674B20(v9, &qword_27F7C0070, &unk_25575E660);
  }

  else
  {
    MergeableEntryAssetsPlacement.Partial.visitReferences(_:)(a1);
    sub_25573439C(v9, type metadata accessor for MergeableEntryAssetsPlacement.Partial);
  }

  sub_255663294(v2 + v18[7], v6, &qword_27F7BF500, &unk_25575B3E0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BF508, &qword_25575E670);
  v23 = *(v22 - 8);
  if ((*(v23 + 48))(v6, 1, v22) == 1)
  {
    return sub_255674B20(v6, &qword_27F7BF500, &unk_25575B3E0);
  }

  sub_25574FC80();
  return (*(v23 + 8))(v6, v22);
}

uint64_t MergeableEntryAttributes.Partial.init(from:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v65 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BF500, &unk_25575B3E0);
  MEMORY[0x28223BE20](v3 - 8);
  v55 = v49 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7C0070, &unk_25575E660);
  MEMORY[0x28223BE20](v5 - 8);
  v63 = v49 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7C0068, &qword_25575E658);
  MEMORY[0x28223BE20](v7 - 8);
  v61 = v49 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7C0060, &qword_25575E650);
  MEMORY[0x28223BE20](v9 - 8);
  v62 = v49 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7C0080, &unk_25575E680);
  v12 = *(v11 - 8);
  v57 = *(v12 + 56);
  v58 = v11;
  v56 = v12 + 56;
  v57(a2, 1, 1);
  v13 = type metadata accessor for MergeableEntryAttributes.Partial(0);
  v14 = v13[5];
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7C0078, &qword_25575E678);
  v16 = *(v15 - 8);
  v17 = *(v16 + 56);
  v64 = v14;
  v53 = v16 + 56;
  v54 = v17;
  v17(a2 + v14, 1, 1, v15);
  v18 = v13[6];
  v19 = type metadata accessor for MergeableEntryAssetsPlacement.Partial(0);
  v20 = *(v19 - 8);
  v21 = *(v20 + 56);
  v22 = v20 + 56;
  v59 = v18;
  v60 = v21;
  v21(a2 + v18, 1, 1, v19);
  v23 = v13[7];
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BF508, &qword_25575E670);
  v25 = *(v24 - 8);
  v26 = *(v25 + 56);
  v27 = v25 + 56;
  v67 = a2;
  v26(a2 + v23, 1, 1, v24);
  v28 = v66;
  sub_25574FE90();
  if (v28)
  {
    goto LABEL_9;
  }

  v49[2] = v22;
  v50 = v15;
  v66 = 0;
  v49[1] = v27;
  v51 = v23;
  v52 = v26;
  v29 = v63;
  if (sub_25574FED0())
  {
    sub_2556D4CDC();
    v30 = v62;
    v31 = v66;
    sub_25574FA40();
    v32 = v64;
    if (v31)
    {
LABEL_8:

LABEL_9:

      v39 = v67;
      return sub_25573439C(v39, type metadata accessor for MergeableEntryAttributes.Partial);
    }

    v33 = v19;
    v66 = 0;
    (v57)(v30, 0, 1, v58);
    sub_25568CFC8(v30, v67, &qword_27F7C0060, &qword_25575E650);
  }

  else
  {
    v33 = v19;
    v32 = v64;
  }

  v34 = sub_25574FED0();
  v64 = v24;
  v36 = v60;
  v35 = v61;
  if (v34)
  {
    sub_25566464C();
    v37 = v66;
    sub_25574FA40();
    v38 = v52;
    if (v37)
    {
      goto LABEL_8;
    }

    v66 = 0;
    v54(v35, 0, 1, v50);
    sub_25568CFC8(v35, v67 + v32, &qword_27F7C0068, &qword_25575E658);
  }

  else
  {
    v38 = v52;
  }

  v41 = sub_25574FED0();
  v42 = v59;
  if (v41)
  {
    v43 = v66;
    MergeableEntryAssetsPlacement.Partial.init(from:)(v41, v29);
    v66 = v43;
    if (v43)
    {

      v39 = v67;
      return sub_25573439C(v39, type metadata accessor for MergeableEntryAttributes.Partial);
    }

    v36(v29, 0, 1, v33);
    sub_25568CFC8(v29, v67 + v42, &qword_27F7C0070, &unk_25575E660);
  }

  v44 = sub_25574FED0();
  v45 = v55;
  v46 = v51;
  if (v44)
  {
    sub_25574F0D0();
    sub_255664884(&qword_27F7BE0B0, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
    v47 = v66;
    sub_25574FC90();

    v39 = v67;
    if (v47)
    {
      return sub_25573439C(v39, type metadata accessor for MergeableEntryAttributes.Partial);
    }

    v48 = v67;
    v38(v45, 0, 1, v64);
    return sub_25568CFC8(v45, v48 + v46, &qword_27F7BF500, &unk_25575B3E0);
  }

  else
  {
  }
}

uint64_t MergeableEntryAttributes.Partial.encode(to:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BF500, &unk_25575B3E0);
  MEMORY[0x28223BE20](v0 - 8);
  v43 = &v40 - v1;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BF508, &qword_25575E670);
  v47 = *(v44 - 8);
  MEMORY[0x28223BE20](v44);
  v46 = &v40 - v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7C0070, &unk_25575E660);
  MEMORY[0x28223BE20](v3 - 8);
  v50 = &v40 - v4;
  v45 = type metadata accessor for MergeableEntryAssetsPlacement.Partial(0);
  v49 = *(v45 - 8);
  MEMORY[0x28223BE20](v45);
  v6 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7C0068, &qword_25575E658);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v40 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7C0078, &qword_25575E678);
  v48 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = &v40 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7C0060, &qword_25575E650);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v40 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7C0080, &unk_25575E680);
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v40 - v18;
  v20 = v52;
  result = sub_25574FF10();
  if (!v20)
  {
    v41 = v9;
    v42 = v12;
    v40 = v6;
    v52 = 0;
    v22 = v51;
    sub_255663294(v51, v15, &qword_27F7C0060, &qword_25575E650);
    if ((*(v17 + 48))(v15, 1, v16) == 1)
    {
      sub_255674B20(v15, &qword_27F7C0060, &qword_25575E650);
      v23 = v42;
    }

    else
    {
      (*(v17 + 32))(v19, v15, v16);
      sub_255669798(&qword_27F7C0090, &qword_27F7C0080, &unk_25575E680, MEMORY[0x277CFB630]);
      v24 = v52;
      sub_25574FF60();
      (*(v17 + 8))(v19, v16);
      v23 = v42;
      if (v24)
      {
      }

      v52 = 0;
    }

    v25 = type metadata accessor for MergeableEntryAttributes.Partial(0);
    v26 = v41;
    sub_255663294(v22 + v25[5], v41, &qword_27F7C0068, &qword_25575E658);
    v27 = v48;
    v28 = (*(v48 + 48))(v26, 1, v10);
    v29 = v49;
    v30 = v50;
    if (v28 == 1)
    {
      sub_255674B20(v26, &qword_27F7C0068, &qword_25575E658);
    }

    else
    {
      (*(v27 + 32))(v23, v26, v10);
      sub_255669798(&qword_27F7C0088, &qword_27F7C0078, &qword_25575E678, MEMORY[0x277CFB630]);
      v31 = v52;
      sub_25574FF60();
      (*(v27 + 8))(v23, v10);
      if (v31)
      {
      }

      v52 = 0;
    }

    sub_255663294(v22 + v25[6], v30, &qword_27F7C0070, &unk_25575E660);
    v32 = (*(v29 + 48))(v30, 1, v45);
    v34 = v46;
    v33 = v47;
    if (v32 == 1)
    {
      sub_255674B20(v30, &qword_27F7C0070, &unk_25575E660);
      goto LABEL_16;
    }

    v35 = v40;
    sub_255734A04(v30, v40, type metadata accessor for MergeableEntryAssetsPlacement.Partial);
    sub_255664884(&qword_27F7BF580, type metadata accessor for MergeableEntryAssetsPlacement.Partial, &protocol conformance descriptor for MergeableEntryAssetsPlacement.Partial);
    v36 = v52;
    sub_25574FF60();
    sub_25573439C(v35, type metadata accessor for MergeableEntryAssetsPlacement.Partial);
    if (!v36)
    {
      v52 = 0;
LABEL_16:
      v37 = v22 + v25[7];
      v38 = v43;
      v39 = v44;
      sub_255663294(v37, v43, &qword_27F7BF500, &unk_25575B3E0);
      if ((*(v33 + 48))(v38, 1, v39) == 1)
      {

        return sub_255674B20(v38, &qword_27F7BF500, &unk_25575B3E0);
      }

      else
      {
        (*(v33 + 32))(v34, v38, v39);
        sub_255669798(&qword_27F7BF518, &qword_27F7BF508, &qword_25575E670, MEMORY[0x277CFB6E0]);
        sub_25574FF60();
        (*(v33 + 8))(v34, v39);
      }
    }
  }

  return result;
}

uint64_t sub_25573263C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v102 = a1;
  v85 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7C01A0, &unk_25575EA68);
  MEMORY[0x28223BE20](v2 - 8);
  v89 = &v73 - v3;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE8D8, &unk_255758230);
  v105 = *(v88 - 8);
  MEMORY[0x28223BE20](v88);
  v87 = &v73 - v4;
  v5 = sub_25574F0D0();
  v91 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v99 = &v73 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v113 = type metadata accessor for MergeableAssetTextAttachment(0);
  v90 = *(v113 - 8);
  v7 = MEMORY[0x28223BE20](v113);
  v96 = &v73 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v73 - v10;
  MEMORY[0x28223BE20](v9);
  v100 = &v73 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEA38, &qword_255758A90);
  v14 = MEMORY[0x28223BE20](v13 - 8);
  v86 = &v73 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v103 = &v73 - v17;
  MEMORY[0x28223BE20](v16);
  v19 = &v73 - v18;
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE8B0, &unk_25575B400);
  v111 = *(v104 - 8);
  MEMORY[0x28223BE20](v104);
  v21 = &v73 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE8A8, &unk_255758170);
  MEMORY[0x28223BE20](v22 - 8);
  v24 = &v73 - v23;
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE8B8, &unk_255758180);
  v84 = *(v112 - 8);
  MEMORY[0x28223BE20](v112);
  v110 = &v73 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE798, &qword_255757E30);
  v92 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v28 = &v73 - v27;
  v29 = sub_25574F2C0();
  v30 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v32 = &v73 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27F7BD5E0 != -1)
  {
LABEL_20:
    swift_once();
  }

  v33 = __swift_project_value_buffer(v29, qword_27F7C0528);
  v82 = v30;
  v34 = *(v30 + 16);
  v98 = v32;
  v83 = v29;
  v34(v32, v33, v29);
  (*(v92 + 16))(v28, v109, v26);
  v35 = v110;
  v94 = v28;
  v95 = v26;
  sub_25574F9C0();
  sub_25574F990();
  v36 = v111;
  v37 = v104;
  v108 = *(v111 + 48);
  v109 = v111 + 48;
  v38 = v108(v24, 1, v104);
  v40 = v36;
  v41 = v35;
  if (v38 != 1)
  {
    v46 = *(v40 + 32);
    v45 = v40 + 32;
    v107 = v46;
    v32 = (v90 + 48);
    v80 = v91 + 16;
    v79 = v91 + 24;
    v78 = (v90 + 56);
    v77 = (v105 + 2);
    v76 = (v105 + 7);
    v75 = v105 + 1;
    v74 = (v91 + 8);
    v105 = (v45 - 24);
    *&v39 = 136315138;
    v81 = v39;
    v101 = v19;
    v111 = v45;
    v106 = v24;
    v93 = v11;
    v97 = v5;
    v46(v21, v24, v37);
    while (1)
    {
      swift_getKeyPath();
      v48 = sub_2556C74E8();
      v49 = v21;
      sub_25574F970();

      v50 = *v32;
      v51 = v32;
      v52 = v113;
      if (v50(v19, 1, v113) == 1)
      {
        (*v105)(v49, v37);
        sub_255674B20(v19, &qword_27F7BEA38, &qword_255758A90);
        v32 = v51;
        v21 = v49;
        v26 = v37;
      }

      else
      {
        sub_255674B20(v19, &qword_27F7BEA38, &qword_255758A90);
        swift_getKeyPath();
        v53 = v103;
        v104 = v48;
        sub_25574F970();

        v54 = v50(v53, 1, v52);
        v32 = v51;
        v26 = v37;
        if (v54 == 1)
        {
          (*v105)(v49, v37);
          sub_255674B20(v53, &qword_27F7BEA38, &qword_255758A90);
          v19 = v101;
          v21 = v49;
        }

        else
        {
          v21 = v49;
          v55 = v100;
          sub_255734A04(v53, v100, type metadata accessor for MergeableAssetTextAttachment);
          v56 = v97;
          v57 = v99;
          if (*(v102 + 16) && (v58 = sub_25567AF04(v55), (v59 & 1) != 0))
          {
            v60 = v91;
            (*(v91 + 16))(v57, *(v102 + 56) + *(v91 + 72) * v58, v56);
            v24 = v93;
            sub_255670F14(v55, v93, type metadata accessor for MergeableAssetTextAttachment);
            (*(v60 + 24))(v24, v57, v56);
            v29 = v56;
            v19 = v87;
            sub_25574F950();
            swift_getKeyPath();
            v30 = v86;
            sub_255670F14(v24, v86, type metadata accessor for MergeableAssetTextAttachment);
            (*v78)(v30, 0, 1, v113);
            v5 = v88;
            sub_25574F8A0();
            v11 = v89;
            (*v77)(v89, v19, v5);
            (*v76)(v11, 0, 1, v5);
            v28 = v21;
            v61 = sub_25574F980();
            if (__OFSUB__(v62, v61))
            {
              __break(1u);
              goto LABEL_20;
            }

            sub_25574F8C0();
            sub_255674B20(v11, &qword_27F7C01A0, &unk_25575EA68);
            (*v75)(v19, v5);
            (*v74)(v99, v29);
            sub_25573439C(v100, type metadata accessor for MergeableAssetTextAttachment);
            (*v105)(v21, v26);
            sub_25573439C(v24, type metadata accessor for MergeableAssetTextAttachment);
            v19 = v101;
          }

          else
          {
            v63 = v96;
            sub_255670F14(v55, v96, type metadata accessor for MergeableAssetTextAttachment);
            v64 = sub_25574F2A0();
            v65 = sub_255750780();
            if (os_log_type_enabled(v64, v65))
            {
              v66 = swift_slowAlloc();
              LODWORD(v104) = v65;
              v67 = v66;
              v114 = swift_slowAlloc();
              v68 = v114;
              *v67 = v81;
              sub_255670F14(v63, v93, type metadata accessor for MergeableAssetTextAttachment);
              v90 = sub_2557501D0();
              v70 = v69;
              sub_25573439C(v63, type metadata accessor for MergeableAssetTextAttachment);
              v71 = sub_2556E474C(v90, v70, &v114);

              *(v67 + 4) = v71;
              _os_log_impl(&dword_255661000, v64, v104, "MergeableAttributedString.deepCopy: we should have an id for attachment: %s", v67, 0xCu);
              __swift_destroy_boxed_opaque_existential_1(v68);
              MEMORY[0x259C3F520](v68, -1, -1);
              MEMORY[0x259C3F520](v67, -1, -1);

              v72 = v100;
            }

            else
            {

              sub_25573439C(v63, type metadata accessor for MergeableAssetTextAttachment);
              v72 = v55;
            }

            sub_25573439C(v72, type metadata accessor for MergeableAssetTextAttachment);
            (*v105)(v21, v26);
            v19 = v101;
          }
        }
      }

      v47 = v106;
      v41 = v110;
      sub_25574F990();
      v37 = v26;
      if (v108(v47, 1, v26) == 1)
      {
        break;
      }

      v107(v21, v47, v26);
    }
  }

  (*(v84 + 8))(v41, v112);
  sub_255669798(&qword_27F7C01A8, &qword_27F7BE798, &qword_255757E30, MEMORY[0x277CFB638]);
  v43 = v94;
  v42 = v95;
  sub_25574FD80();
  (*(v92 + 8))(v43, v42);
  return (*(v82 + 8))(v98, v83);
}

void *sub_2557333E0@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BF530, &qword_25575B3F8);
  v106 = *(v107 - 8);
  v4 = MEMORY[0x28223BE20](v107);
  v118 = &v103 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v117 = &v103 - v6;
  v130 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE0C8, &qword_255755C60);
  v111 = *(v130 - 8);
  v7 = MEMORY[0x28223BE20](v130);
  v103 = &v103 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v104 = &v103 - v9;
  v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEA90, &unk_25575B390);
  v10 = *(v132 - 8);
  MEMORY[0x28223BE20](v132);
  v127 = &v103 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F7BED20, &unk_2557551D0);
  v13 = MEMORY[0x28223BE20](v12 - 8);
  v115 = &v103 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v120 = &v103 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v116 = &v103 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v121 = &v103 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v123 = (&v103 - v22);
  v23 = MEMORY[0x28223BE20](v21);
  v122 = (&v103 - v24);
  MEMORY[0x28223BE20](v23);
  v26 = &v103 - v25;
  v27 = sub_25574F0D0();
  v28 = *(v27 - 8);
  v29 = MEMORY[0x28223BE20](v27);
  v114 = &v103 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = MEMORY[0x28223BE20](v29);
  v124 = &v103 - v32;
  v33 = MEMORY[0x28223BE20](v31);
  v129 = (&v103 - v34);
  v35 = MEMORY[0x28223BE20](v33);
  v128 = &v103 - v36;
  v37 = MEMORY[0x28223BE20](v35);
  v39 = &v103 - v38;
  MEMORY[0x28223BE20](v37);
  v41 = &v103 - v40;
  v42 = type metadata accessor for MergeableEntryAssetsPlacement(0);
  sub_255664884(&qword_27F7BF590, type metadata accessor for MergeableEntryAssetsPlacement, &protocol conformance descriptor for MergeableEntryAssetsPlacement);
  sub_25574FD80();
  v110 = v42;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEDB0, &unk_255759240);
  sub_25574F360();
  v125 = *(v28 + 48);
  v126 = v28 + 48;
  v43 = v125(v26, 1, v27);
  v131 = a1;
  v133 = v28;
  if (v43 == 1)
  {
    v44 = sub_255674B20(v26, &unk_27F7BED20, &unk_2557551D0);
  }

  else
  {
    (*(v28 + 32))(v41, v26, v27);
    if (*(a1 + 16) && (v45 = sub_25567AF04(v41), v28 = v133, (v46 & 1) != 0))
    {
      v47 = v133;
      v48 = *(v133 + 16);
      v49 = v39;
      v48(v39, *(a1 + 56) + *(v133 + 72) * v45, v27);
      v50 = v122;
      v48(v122, v49, v27);
      (*(v47 + 56))(v50, 0, 1, v27);
      sub_255663294(v50, v123, &unk_27F7BED20, &unk_2557551D0);
      sub_25574F370();
      sub_255674B20(v50, &unk_27F7BED20, &unk_2557551D0);
      v51 = *(v47 + 8);
      v51(v49, v27);
      v44 = (v51)(v41, v27);
    }

    else
    {
      v44 = (*(v28 + 8))(v41, v27);
    }
  }

  MEMORY[0x28223BE20](v44);
  v52 = v132;
  *(&v103 - 2) = v131;
  v134 = sub_25574F620();
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEB38, &qword_25575EA60);
  v54 = sub_255664884(&qword_27F7BE0B0, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  v55 = sub_255669798(&qword_27F7C0198, &qword_27F7BEB38, &qword_25575EA60, MEMORY[0x277D83970]);
  v56 = v127;
  v109 = v54;
  sub_25574F740();
  (*(v10 + 40))(a2, v56, v52);
  v57 = *(v110 + 28);
  v58 = sub_255669798(&qword_27F7BF538, &qword_27F7BE0C8, &qword_255755C60, MEMORY[0x277CFB720]);
  v59 = v130;
  v60 = sub_255750680();
  v61 = MEMORY[0x277D84F90];
  v127 = a2;
  v132 = v58;
  v119 = v57;
  v108 = v53;
  v105 = v55;
  if (v60)
  {
    v62 = v60;
    v135 = MEMORY[0x277D84F90];
    sub_2556A9D38(0, v60 & ~(v60 >> 63), 0);
    v61 = v135;
    result = sub_255750650();
    if (v62 < 0)
    {
      __break(1u);
      goto LABEL_40;
    }

    v123 = (v133 + 16);
    v113 = (v133 + 56);
    v122 = (v133 + 32);
    v112 = (v133 + 8);
    do
    {
      v64 = sub_255750710();
      v65 = *v123;
      v66 = v129;
      (*v123)(v129);
      v64(&v134, 0);
      v67 = v131;
      if (*(v131 + 16))
      {
        v68 = sub_25567AF04(v66);
        v69 = v116;
        if (v70)
        {
          v71 = *(v67 + 56);
          v72 = v133;
          (v65)(v121, v71 + *(v133 + 72) * v68, v27);
          v73 = 0;
        }

        else
        {
          v73 = 1;
          v72 = v133;
        }
      }

      else
      {
        v73 = 1;
        v72 = v133;
        v69 = v116;
      }

      v74 = v121;
      (*v113)(v121, v73, 1, v27);
      sub_255675060(v74, v69, &unk_27F7BED20, &unk_2557551D0);
      if (v125(v69, 1, v27) == 1)
      {
        v75 = v129;
        (v65)(v128, v129, v27);
        sub_255674B20(v69, &unk_27F7BED20, &unk_2557551D0);
      }

      else
      {
        (*v122)(v128, v69, v27);
        v75 = v129;
      }

      (*v112)(v75, v27);
      v135 = v61;
      v77 = *(v61 + 16);
      v76 = *(v61 + 24);
      if (v77 >= v76 >> 1)
      {
        sub_2556A9D38((v76 > 1), v77 + 1, 1);
        v72 = v133;
        v61 = v135;
      }

      *(v61 + 16) = v77 + 1;
      (*(v72 + 32))(v61 + ((*(v72 + 80) + 32) & ~*(v72 + 80)) + *(v72 + 72) * v77, v128, v27);
      a2 = v127;
      v78 = v117;
      v59 = v130;
      sub_2557506C0();
      --v62;
    }

    while (v62);
    (*(v106 + 8))(v78, v107);
    v79 = v111;
  }

  else
  {
    v79 = v111;
  }

  v134 = v61;
  v80 = v104;
  sub_25574FD30();
  v82 = *(v79 + 40);
  v81 = v79 + 40;
  v121 = v82;
  (v82)(&a2[v119], v80, v59);
  v83 = *(v110 + 24);
  v84 = sub_255750680();
  v85 = MEMORY[0x277D84F90];
  v128 = v83;
  if (!v84)
  {
LABEL_38:
    v134 = v85;
    v102 = v103;
    sub_25574FD30();
    return (v121)(&v128[a2], v102, v59);
  }

  v86 = v84;
  v135 = MEMORY[0x277D84F90];
  sub_2556A9D38(0, v84 & ~(v84 >> 63), 0);
  v85 = v135;
  result = sub_255750650();
  if ((v86 & 0x8000000000000000) == 0)
  {
    v111 = v81;
    v87 = (v133 + 16);
    v129 = (v133 + 32);
    v122 = (v133 + 8);
    v123 = (v133 + 56);
    do
    {
      v88 = sub_255750710();
      v89 = *v87;
      v90 = v114;
      (*v87)(v114);
      v88(&v134, 0);
      v91 = v131;
      if (*(v131 + 16))
      {
        v92 = sub_25567AF04(v90);
        if (v93)
        {
          (v89)(v120, *(v91 + 56) + *(v133 + 72) * v92, v27);
          v94 = 0;
        }

        else
        {
          v94 = 1;
        }
      }

      else
      {
        v94 = 1;
      }

      v95 = v120;
      (*v123)(v120, v94, 1, v27);
      v96 = v95;
      v97 = v115;
      sub_255675060(v96, v115, &unk_27F7BED20, &unk_2557551D0);
      if (v125(v97, 1, v27) == 1)
      {
        (v89)(v124, v90, v27);
        sub_255674B20(v97, &unk_27F7BED20, &unk_2557551D0);
      }

      else
      {
        (*v129)(v124, v97, v27);
      }

      (*v122)(v90, v27);
      v135 = v85;
      v99 = *(v85 + 16);
      v98 = *(v85 + 24);
      v100 = v133;
      if (v99 >= v98 >> 1)
      {
        sub_2556A9D38((v98 > 1), v99 + 1, 1);
        v100 = v133;
        v85 = v135;
      }

      *(v85 + 16) = v99 + 1;
      (*(v100 + 32))(v85 + ((*(v100 + 80) + 32) & ~*(v100 + 80)) + *(v100 + 72) * v99, v124, v27);
      a2 = v127;
      v101 = v118;
      v59 = v130;
      sub_2557506C0();
      --v86;
    }

    while (v86);
    (*(v106 + 8))(v101, v107);
    goto LABEL_38;
  }

LABEL_40:
  __break(1u);
  return result;
}

uint64_t sub_25573439C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t CRAttributedString<>.inlineAssetsDebugString.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEA38, &qword_255758A90);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v30 - v1;
  v3 = type metadata accessor for MergeableAssetTextAttachment(0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v39 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE8B0, &unk_25575B400);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v30 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE8A8, &unk_255758170);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v30 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE8B8, &unk_255758180);
  v31 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v15 = &v30 - v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE798, &qword_255757E30);
  sub_25574F9C0();
  v40 = v15;
  v41 = v13;
  sub_25574F990();
  v37 = *(v7 + 48);
  v38 = v7 + 48;
  if (v37(v12, 1, v6) == 1)
  {
    v16 = MEMORY[0x277D84F90];
  }

  else
  {
    v20 = *(v7 + 32);
    v19 = v7 + 32;
    v35 = (v4 + 48);
    v36 = v20;
    v16 = MEMORY[0x277D84F90];
    v21 = (v19 - 24);
    v33 = v19;
    v34 = v3;
    v32 = v2;
    v20(v9, v12, v6);
    while (1)
    {
      swift_getKeyPath();
      sub_2556C74E8();
      sub_25574F970();

      if ((*v35)(v2, 1, v3) == 1)
      {
        (*v21)(v9, v6);
        sub_255674B20(v2, &qword_27F7BEA38, &qword_255758A90);
      }

      else
      {
        sub_255734A04(v2, v39, type metadata accessor for MergeableAssetTextAttachment);
        v22 = sub_25574F980();
        v42 = v23;
        v43 = v22;
        v44 = 0;
        v45 = 0xE000000000000000;
        sub_255750C20();
        MEMORY[0x259C3DED0](3943982, 0xE300000000000000);
        sub_255750C20();
        MEMORY[0x259C3DED0](8250, 0xE200000000000000);
        sub_25574F0D0();
        sub_255664884(&qword_27F7BF200, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
        v24 = sub_255750E60();
        MEMORY[0x259C3DED0](v24);

        v25 = v44;
        v26 = v45;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v16 = sub_255698E88(0, *(v16 + 2) + 1, 1, v16);
        }

        v28 = *(v16 + 2);
        v27 = *(v16 + 3);
        v2 = v32;
        if (v28 >= v27 >> 1)
        {
          v16 = sub_255698E88((v27 > 1), v28 + 1, 1, v16);
        }

        sub_25573439C(v39, type metadata accessor for MergeableAssetTextAttachment);
        (*v21)(v9, v6);
        *(v16 + 2) = v28 + 1;
        v29 = &v16[16 * v28];
        *(v29 + 4) = v25;
        *(v29 + 5) = v26;
        v3 = v34;
      }

      sub_25574F990();
      if (v37(v12, 1, v6) == 1)
      {
        break;
      }

      v36(v9, v12, v6);
    }
  }

  (*(v31 + 8))(v40, v41);
  v44 = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE728, &qword_255757898);
  sub_255669798(&qword_27F7BE730, &qword_27F7BE728, &qword_255757898, MEMORY[0x277D83958]);
  v17 = sub_2557500C0();

  return v17;
}

uint64_t sub_255734A04(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_255734A6C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F7BED20, &unk_2557551D0);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v19 - v10;
  if (*(a2 + 16) && (v12 = sub_25567AF04(a1), (v13 & 1) != 0))
  {
    v14 = v12;
    v20 = *(a2 + 56);
    v15 = sub_25574F0D0();
    v16 = *(v15 - 8);
    (*(v16 + 16))(v11, v20 + *(v16 + 72) * v14, v15);
    (*(v16 + 56))(v11, 0, 1, v15);
  }

  else
  {
    v15 = sub_25574F0D0();
    (*(*(v15 - 8) + 56))(v11, 1, 1, v15);
  }

  sub_255675060(v11, v9, &unk_27F7BED20, &unk_2557551D0);
  sub_25574F0D0();
  v17 = *(v15 - 8);
  if ((*(v17 + 48))(v9, 1, v15) != 1)
  {
    return (*(v17 + 32))(a3, v9, v15);
  }

  (*(v17 + 16))(a3, a1, v15);
  return sub_255674B20(v9, &unk_27F7BED20, &unk_2557551D0);
}

uint64_t MergeableEntryAttributes.actionUndoingDifference(from:)@<X0>(uint64_t a2@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BF4E8, &qword_25575B3C8);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v22 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BF558, &qword_25575B4B0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v22 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7C0058, &qword_25575E648);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v22 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7C0050, &qword_25575E640);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v22 - v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE818, &qword_255757FD0);
  sub_25574F930();
  type metadata accessor for MergeableEntryAttributes(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE798, &qword_255757E30);
  sub_25574F930();
  MergeableEntryAssetsPlacement.actionUndoingDifference(from:)(v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE0C8, &qword_255755C60);
  sub_25574FBE0();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7C0098, &qword_25575E6B0);
  if ((*(*(v15 - 8) + 48))(v14, 1, v15) == 1 && (v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7C00A0, &qword_25575E6B8), (*(*(v16 - 8) + 48))(v11, 1, v16) == 1) && (v17 = type metadata accessor for MergeableEntryAssetsPlacement.MutatingAction(0), (*(*(v17 - 8) + 48))(v8, 1, v17) == 1) && (v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BF550, &qword_25575E6C0), (*(*(v18 - 8) + 48))(v5, 1, v18) == 1))
  {
    sub_255674B20(v14, &qword_27F7C0050, &qword_25575E640);
    v19 = type metadata accessor for MergeableEntryAttributes.MutatingAction(0);
    (*(*(v19 - 8) + 56))(a2, 1, 1, v19);
  }

  else
  {
    sub_255663294(v14, a2, &qword_27F7C0050, &qword_25575E640);
    v20 = type metadata accessor for MergeableEntryAttributes.MutatingAction(0);
    sub_255663294(v11, a2 + v20[5], &qword_27F7C0058, &qword_25575E648);
    sub_255663294(v8, a2 + v20[6], &qword_27F7BF558, &qword_25575B4B0);
    sub_255663294(v5, a2 + v20[7], &qword_27F7BF4E8, &qword_25575B3C8);
    sub_255674B20(v14, &qword_27F7C0050, &qword_25575E640);
    (*(*(v20 - 1) + 56))(a2, 0, 1, v20);
  }

  sub_255674B20(v5, &qword_27F7BF4E8, &qword_25575B3C8);
  sub_255674B20(v8, &qword_27F7BF558, &qword_25575B4B0);
  return sub_255674B20(v11, &qword_27F7C0058, &qword_25575E648);
}

uint64_t MergeableEntryAttributes.apply(_:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7C00A8, &qword_25575E6C8);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v10 - v3;
  v5 = type metadata accessor for MergeableEntryAttributes.MutatingAction(0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_255663294(a1, v4, &qword_27F7C00A8, &qword_25575E6C8);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    return sub_255674B20(v4, &qword_27F7C00A8, &qword_25575E6C8);
  }

  sub_255734A04(v4, v8, type metadata accessor for MergeableEntryAttributes.MutatingAction);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE818, &qword_255757FD0);
  sub_25574F9D0();
  type metadata accessor for MergeableEntryAttributes(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE798, &qword_255757E30);
  sub_25574F9D0();
  MergeableEntryAssetsPlacement.apply(_:)(&v8[*(v5 + 24)]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE0C8, &qword_255755C60);
  sub_25574FC20();
  return sub_25573439C(v8, type metadata accessor for MergeableEntryAttributes.MutatingAction);
}