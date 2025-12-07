uint64_t MergeableEntryAttributes.hasDelta(from:)(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE818, &qword_255757FD0);
  if (sub_25574FAA0())
  {
    return 1;
  }

  v2 = type metadata accessor for MergeableEntryAttributes(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE798, &qword_255757E30);
  if (sub_25574FAA0())
  {
    return 1;
  }

  if (MergeableEntryAssetsPlacement.hasDelta(from:)(a1 + *(v2 + 24)))
  {
    return 1;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE0C8, &qword_255755C60);
  if (sub_25574FD00())
  {
    return 1;
  }

  else
  {
    return sub_25574F840() & 1;
  }
}

uint64_t MergeableEntryAttributes.copy(renamingReferences:)@<X0>(uint64_t a2@<X8>)
{
  v4 = sub_25574F860();
  v31 = *(v4 - 8);
  v32 = v4;
  MEMORY[0x28223BE20](v4);
  v30 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE0C8, &qword_255755C60);
  v7 = *(v6 - 8);
  v28 = v6;
  v29 = v7;
  MEMORY[0x28223BE20](v6);
  v27 = &v25 - v8;
  v9 = type metadata accessor for MergeableEntryAssetsPlacement(0);
  MEMORY[0x28223BE20](v9 - 8);
  v26 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE798, &qword_255757E30);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v25 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE818, &qword_255757FD0);
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v25 - v17;
  sub_255670F14(v2, a2, type metadata accessor for MergeableEntryAttributes);
  sub_25574F9A0();
  (*(v16 + 40))(a2, v18, v15);
  v19 = type metadata accessor for MergeableEntryAttributes(0);
  sub_25574F9A0();
  (*(v12 + 40))(a2 + v19[5], v14, v11);
  v20 = v26;
  MergeableEntryAssetsPlacement.copy(renamingReferences:)(v26);
  sub_255677F7C(v20, a2 + v19[6]);
  v22 = v27;
  v21 = v28;
  sub_25574FC00();
  (*(v29 + 40))(a2 + v19[7], v22, v21);
  v23 = v30;
  sub_25574F800();
  return (*(v31 + 40))(a2 + v19[8], v23, v32);
}

uint64_t MergeableEntryAttributes.init(defaultState:)@<X0>(uint64_t a1@<X8>)
{
  v72 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE0C8, &qword_255755C60);
  v3 = *(v2 - 8);
  v65 = v2;
  v66 = v3;
  MEMORY[0x28223BE20](v2);
  v48 = &v47 - v4;
  v5 = type metadata accessor for MergeableEntryAssetsPlacement(0);
  v6 = v5 - 8;
  MEMORY[0x28223BE20](v5);
  v49 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE798, &qword_255757E30);
  v50 = *(v51 - 8);
  MEMORY[0x28223BE20](v51);
  v52 = &v47 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE818, &qword_255757FD0);
  v53 = *(v9 - 8);
  v54 = v9;
  MEMORY[0x28223BE20](v9);
  v63 = &v47 - v10;
  v68 = sub_25574F860();
  v70 = *(v68 - 8);
  v11 = MEMORY[0x28223BE20](v68);
  v47 = &v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v60 = &v47 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEA90, &unk_25575B390);
  v61 = *(v14 - 8);
  v62 = v14;
  MEMORY[0x28223BE20](v14);
  v56 = &v47 - v15;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F7BED20, &unk_2557551D0);
  v16 = MEMORY[0x28223BE20](v71);
  v59 = &v47 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v47 - v19;
  MEMORY[0x28223BE20](v18);
  v22 = &v47 - v21;
  v58 = &v47 - v21;
  v69 = type metadata accessor for MergeableEntryAttributes(0);
  v23 = a1 + *(v69 + 24);
  v24 = sub_25574F0D0();
  v25 = *(*(v24 - 8) + 56);
  v25(v22, 1, 1, v24);
  v67 = sub_255664884(&qword_27F7BE0B0, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_25574F720();
  sub_25574FD10();
  sub_25574FD10();
  sub_25574F850();
  v26 = *(v6 + 28);
  v25(v20, 1, 1, v24);
  v27 = v59;
  sub_255663294(v20, v59, &unk_27F7BED20, &unk_2557551D0);
  v55 = sub_255663D60();
  sub_25574F340();
  sub_255674B20(v20, &unk_27F7BED20, &unk_2557551D0);
  v57 = *(v6 + 40);
  sub_25574F850();
  v29 = v61;
  v28 = v62;
  v30 = v56;
  (*(v61 + 16))(v23, v56, v62);
  v31 = v58;
  sub_255663294(v58, v20, &unk_27F7BED20, &unk_2557551D0);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEDB0, &unk_255759240);
  (*(*(v32 - 8) + 8))(v23 + v26, v32);
  sub_255663294(v20, v27, &unk_27F7BED20, &unk_2557551D0);
  sub_25574F340();
  sub_255674B20(v20, &unk_27F7BED20, &unk_2557551D0);
  v33 = v69;
  (*(v29 + 8))(v30, v28);
  sub_255674B20(v31, &unk_27F7BED20, &unk_2557551D0);
  v34 = *(v70 + 40);
  v35 = v23;
  v36 = v68;
  v34(v23 + v57, v60, v68);
  v37 = *(v33 + 28);
  sub_25574FD10();
  v71 = *(v33 + 32);
  sub_25574F850();
  sub_2556D4CDC();
  v38 = v64;
  v39 = v63;
  sub_25574F8B0();
  if (v38)
  {
    v40 = v65;
    v41 = v37;
    sub_25573439C(v35, type metadata accessor for MergeableEntryAssetsPlacement);
    v44 = v72;
    (*(v66 + 8))(v72 + v41, v40);
    return (*(v70 + 8))(v44 + v71, v36);
  }

  else
  {
    v64 = v34;
    (*(v53 + 32))(v72, v39, v54);
    sub_25566464C();
    sub_25574F8B0();
    (*(v50 + 32))(v72 + *(v69 + 20), v52, v51);
    v42 = v49;
    MergeableEntryAssetsPlacement.init(defaultState:)(v49);
    sub_255677F7C(v42, v23);
    v43 = v48;
    sub_25574FB80();
    (*(v66 + 40))(v72 + v37, v43, v65);
    v46 = v47;
    sub_25574F780();
    return (v64)(v72 + v71, v46, v68);
  }
}

uint64_t MergeableEntryAttributes.isDefaultState.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEDB0, &unk_255759240);
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v7 - v2;
  type metadata accessor for MergeableEntryAttributes(0);
  if (sub_25574F790() & 1) != 0 && (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE818, &qword_255757FD0), (sub_25574F8D0()) && (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE798, &qword_255757E30), (sub_25574F8D0()) && (type metadata accessor for MergeableEntryAssetsPlacement(0), (sub_25574F790()) && (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEA90, &unk_25575B390), (sub_25574F5B0()) && (sub_25574F390(), v4 = sub_25574F380(), (*(v1 + 8))(v3, v0), (v4) && (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE0C8, &qword_255755C60), (sub_25574FB90()) && (sub_25574FB90())
  {
    v5 = sub_25574FB90();
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

uint64_t MergeableEntryAttributes.visitReferences(_:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEDB0, &unk_255759240);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v6 - v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE818, &qword_255757FD0);
  sub_25574F8F0();
  type metadata accessor for MergeableEntryAttributes(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE798, &qword_255757E30);
  sub_25574F8F0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEA90, &unk_25575B390);
  sub_25574F5C0();
  type metadata accessor for MergeableEntryAssetsPlacement(0);
  sub_25574F390();
  sub_25574F3B0();
  (*(v2 + 8))(v4, v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE0C8, &qword_255755C60);
  sub_25574FBA0();
  sub_25574FBA0();
  sub_25574F7A0();
  sub_25574FBA0();
  return sub_25574F7A0();
}

uint64_t MergeableEntryAttributes.newRefs(from:)(uint64_t a1)
{
  v9 = MEMORY[0x277D84FA0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE818, &qword_255757FD0);
  v2 = sub_25574FA70();
  sub_255692FAC(v2);
  v3 = type metadata accessor for MergeableEntryAttributes(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE798, &qword_255757E30);
  v4 = sub_25574FA70();
  sub_255692FAC(v4);
  v5 = MergeableEntryAssetsPlacement.newRefs(from:)(a1 + *(v3 + 24));
  sub_255692FAC(v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE0C8, &qword_255755C60);
  v6 = sub_25574FCD0();
  sub_255692FAC(v6);
  v7 = sub_25574F830();
  sub_255692FAC(v7);
  return v9;
}

Swift::Bool __swiftcall MergeableEntryAttributes.needToFinalizeTimestamps()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEDB0, &unk_255759240);
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v7 - v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE818, &qword_255757FD0);
  if (sub_25574F940() & 1) != 0 || (type metadata accessor for MergeableEntryAttributes(0), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE798, &qword_255757E30), (sub_25574F940()) || (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEA90, &unk_25575B390), (sub_25574F610()) || (type metadata accessor for MergeableEntryAssetsPlacement(0), sub_25574F390(), v4 = sub_25574F400(), (*(v1 + 8))(v3, v0), (v4) || (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE0C8, &qword_255755C60), (sub_25574FBF0()) || (sub_25574FBF0() & 1) != 0 || (sub_25574F7D0() & 1) != 0 || (sub_25574FBF0())
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_25574F7D0();
  }

  return v5 & 1;
}

uint64_t MergeableEntryAttributes.finalizeTimestamps(_:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEDB0, &unk_255759240);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v10 - v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE818, &qword_255757FD0);
  sub_25574F900();
  type metadata accessor for MergeableEntryAttributes(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE798, &qword_255757E30);
  sub_25574F900();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEA90, &unk_25575B390);
  sub_25574F5D0();
  type metadata accessor for MergeableEntryAssetsPlacement(0);
  sub_25574F390();
  sub_25574F3C0();
  (*(v3 + 16))(v6, v8, v2);
  sub_25574F3A0();
  (*(v3 + 8))(v8, v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE0C8, &qword_255755C60);
  sub_25574FBB0();
  sub_25574FBB0();
  MEMORY[0x259C3D480](a1);
  sub_25574FBB0();
  return MEMORY[0x259C3D480](a1);
}

uint64_t MergeableEntryAttributes.minEncodingVersion.getter@<X0>(uint64_t a1@<X8>)
{
  v64 = a1;
  v2 = sub_25574F770();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v55 = v54 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v4);
  v56 = v54 - v7;
  v8 = MEMORY[0x28223BE20](v6);
  v57 = v54 - v9;
  v10 = MEMORY[0x28223BE20](v8);
  v58 = v54 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v59 = v54 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v16 = v54 - v15;
  v17 = MEMORY[0x28223BE20](v14);
  v19 = v54 - v18;
  v20 = MEMORY[0x28223BE20](v17);
  v22 = v54 - v21;
  MEMORY[0x28223BE20](v20);
  v24 = v54 - v23;
  v60 = type metadata accessor for MergeableEntryAttributes(0);
  v63 = v1;
  sub_25574F7C0();
  v25 = *(v3 + 104);
  v62 = *MEMORY[0x277CFB5F0];
  v61 = v25;
  v25(v22);
  v26 = sub_25574F760();
  v27 = *(v3 + 8);
  v27(v22, v2);
  if (v26)
  {
    return (*(v3 + 32))(v64, v24, v2);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE818, &qword_255757FD0);
  sub_25574F910();
  v54[1] = sub_255664884(&qword_27F7BDED8, MEMORY[0x277CFB600], MEMORY[0x277CFB608]);
  v29 = sub_2557500E0();
  v30 = (v29 & 1) == 0;
  if (v29)
  {
    v31 = v24;
  }

  else
  {
    v31 = v16;
  }

  if (v30)
  {
    v32 = v24;
  }

  else
  {
    v32 = v16;
  }

  v27(v31, v2);
  v33 = *(v3 + 32);
  v33(v19, v32, v2);
  v33(v24, v19, v2);
  v61(v22, v62, v2);
  v34 = sub_25574F760();
  v27(v22, v2);
  if (v34 & 1) != 0 || ((__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE798, &qword_255757E30), v35 = v58, sub_25574F910(), v36 = sub_2557500E0(), v37 = (v36 & 1) == 0) ? (v38 = v35) : (v38 = v24), v37 ? (v39 = v24) : (v39 = v35), (v27(v38, v2), v40 = v59, v33(v59, v39, v2), v33(v24, v40, v2), v61(v22, v62, v2), v41 = sub_25574F760(), v27(v22, v2), (v41) || ((v42 = v56, MergeableEntryAssetsPlacement.minEncodingVersion.getter(v56), v43 = sub_2557500E0(), v44 = (v43 & 1) == 0) ? (v45 = v42) : (v45 = v24), v44 ? (v46 = v24) : (v46 = v42), v27(v45, v2), v47 = v57, v33(v57, v46, v2), v33(v24, v47, v2), v61(v22, v62, v2), v48 = sub_25574F760(), v27(v22, v2), (v48)))
  {
    v49 = v64;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE0C8, &qword_255755C60);
    v51 = v55;
    sub_25574FBC0();
    v52 = sub_2557500E0();
    v53 = v64;
    if (v52)
    {
      v27(v24, v2);
      v49 = v53;
      v50 = v51;
      return (v33)(v49, v50, v2);
    }

    v27(v51, v2);
    v49 = v53;
  }

  v50 = v24;
  return (v33)(v49, v50, v2);
}

uint64_t MergeableEntryAttributes.observableDifference(from:with:)@<X0>(uint64_t a3@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BF4D0, &qword_25575B3B0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v23 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7C0048, &unk_25575E630);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v23 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7C0040, &qword_25575E628);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v23 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7C0038, &qword_25575E620);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v23 - v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE818, &qword_255757FD0);
  sub_25574F920();
  type metadata accessor for MergeableEntryAttributes(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE798, &qword_255757E30);
  sub_25574F920();
  MergeableEntryAssetsPlacement.observableDifference(from:with:)(v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE0C8, &qword_255755C60);
  sub_25574FBD0();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7C00B0, &qword_25575E6D0);
  if ((*(*(v16 - 8) + 48))(v15, 1, v16) == 1 && (v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7C00B8, &qword_25575E6D8), (*(*(v17 - 8) + 48))(v12, 1, v17) == 1) && (v18 = type metadata accessor for MergeableEntryAssetsPlacement.ObservableDifference(0), (*(*(v18 - 8) + 48))(v9, 1, v18) == 1) && (v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BF568, &unk_25575B4C0), (*(*(v19 - 8) + 48))(v6, 1, v19) == 1))
  {
    sub_255674B20(v15, &qword_27F7C0038, &qword_25575E620);
    v20 = type metadata accessor for MergeableEntryAttributes.ObservableDifference(0);
    (*(*(v20 - 8) + 56))(a3, 1, 1, v20);
  }

  else
  {
    sub_255663294(v15, a3, &qword_27F7C0038, &qword_25575E620);
    v21 = type metadata accessor for MergeableEntryAttributes.ObservableDifference(0);
    sub_255663294(v12, a3 + v21[5], &qword_27F7C0040, &qword_25575E628);
    sub_255663294(v9, a3 + v21[6], &qword_27F7C0048, &unk_25575E630);
    sub_255663294(v6, a3 + v21[7], &qword_27F7BF4D0, &qword_25575B3B0);
    sub_255674B20(v15, &qword_27F7C0038, &qword_25575E620);
    (*(*(v21 - 1) + 56))(a3, 0, 1, v21);
  }

  sub_255674B20(v6, &qword_27F7BF4D0, &qword_25575B3B0);
  sub_255674B20(v9, &qword_27F7C0048, &unk_25575E630);
  return sub_255674B20(v12, &qword_27F7C0040, &qword_25575E628);
}

uint64_t MergeableEntryAttributes.encode(to:)(uint64_t a1)
{
  result = sub_25574FF10();
  if (!v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE818, &qword_255757FD0);
    sub_255669798(&qword_27F7C00C0, &qword_27F7BE818, &qword_255757FD0, MEMORY[0x277CFB640]);
    sub_25574FF60();
    type metadata accessor for MergeableEntryAttributes(0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE798, &qword_255757E30);
    sub_255669798(&qword_27F7C00C8, &qword_27F7BE798, &qword_255757E30, MEMORY[0x277CFB640]);
    sub_25574FF60();
    type metadata accessor for MergeableEntryAssetsPlacement(0);
    sub_255664884(&qword_27F7BF5A8, type metadata accessor for MergeableEntryAssetsPlacement, &protocol conformance descriptor for MergeableEntryAssetsPlacement);
    sub_25574FF60();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE0C8, &qword_255755C60);
    sub_255669798(&qword_27F7BF578, &qword_27F7BE0C8, &qword_255755C60, MEMORY[0x277CFB708]);
    sub_25574FF60();
    sub_25574F820();
  }

  return result;
}

uint64_t MergeableEntryAttributes.delta(_:from:)@<X0>(uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v50 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BF500, &unk_25575B3E0);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v49 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v8 = &v47 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7C0070, &unk_25575E660);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v52 = &v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = &v47 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7C0068, &qword_25575E658);
  v15 = MEMORY[0x28223BE20](v14 - 8);
  v51 = &v47 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v18 = &v47 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7C0060, &qword_25575E650);
  v20 = MEMORY[0x28223BE20](v19 - 8);
  v22 = &v47 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v24 = &v47 - v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE818, &qword_255757FD0);
  sub_25574F9F0();
  v25 = type metadata accessor for MergeableEntryAttributes(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE798, &qword_255757E30);
  sub_25574F9F0();
  MergeableEntryAssetsPlacement.delta(_:from:)(a2 + *(v25 + 24), v13);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE0C8, &qword_255755C60);
  v26 = v8;
  v27 = v24;
  sub_25574FC30();
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7C0080, &unk_25575E680);
  v29 = *(v28 - 8);
  if ((*(v29 + 48))(v24, 1, v28) == 1 && (v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7C0078, &qword_25575E678), (*(*(v30 - 8) + 48))(v18, 1, v30) == 1) && (v31 = type metadata accessor for MergeableEntryAssetsPlacement.Partial(0), (*(*(v31 - 8) + 48))(v13, 1, v31) == 1) && (v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BF508, &qword_25575E670), (*(*(v32 - 8) + 48))(v26, 1, v32) == 1))
  {
    sub_255674B20(v24, &qword_27F7C0060, &qword_25575E650);
    v33 = type metadata accessor for MergeableEntryAttributes.Partial(0);
    (*(*(v33 - 8) + 56))(v50, 1, 1, v33);
  }

  else
  {
    sub_255663294(v24, v22, &qword_27F7C0060, &qword_25575E650);
    sub_255663294(v18, v51, &qword_27F7C0068, &qword_25575E658);
    sub_255663294(v13, v52, &qword_27F7C0070, &unk_25575E660);
    v48 = v18;
    v34 = v49;
    sub_255663294(v26, v49, &qword_27F7BF500, &unk_25575B3E0);
    v35 = v50;
    (*(v29 + 56))(v50, 1, 1, v28);
    v36 = type metadata accessor for MergeableEntryAttributes.Partial(0);
    v37 = v36[5];
    v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7C0078, &qword_25575E678);
    (*(*(v38 - 8) + 56))(v35 + v37, 1, 1, v38);
    v47 = v27;
    v39 = v26;
    v40 = v36[6];
    v41 = type metadata accessor for MergeableEntryAssetsPlacement.Partial(0);
    (*(*(v41 - 8) + 56))(v35 + v40, 1, 1, v41);
    v42 = v36[7];
    v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BF508, &qword_25575E670);
    (*(*(v43 - 8) + 56))(v35 + v42, 1, 1, v43);
    sub_25568CFC8(v22, v35, &qword_27F7C0060, &qword_25575E650);
    sub_25568CFC8(v51, v35 + v37, &qword_27F7C0068, &qword_25575E658);
    v44 = v35 + v40;
    v26 = v39;
    sub_25568CFC8(v52, v44, &qword_27F7C0070, &unk_25575E660);
    v45 = v34;
    v18 = v48;
    sub_25568CFC8(v45, v35 + v42, &qword_27F7BF500, &unk_25575B3E0);
    sub_255674B20(v47, &qword_27F7C0060, &qword_25575E650);
    (*(*(v36 - 1) + 56))(v35, 0, 1, v36);
  }

  sub_255674B20(v26, &qword_27F7BF500, &unk_25575B3E0);
  sub_255674B20(v13, &qword_27F7C0070, &unk_25575E660);
  return sub_255674B20(v18, &qword_27F7C0068, &qword_25575E658);
}

BOOL MergeableEntryAttributes.canMerge(delta:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BF500, &unk_25575B3E0);
  MEMORY[0x28223BE20](v2 - 8);
  v37 = &v35 - v3;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BF508, &qword_25575E670);
  v42 = *(v38 - 8);
  MEMORY[0x28223BE20](v38);
  v35 = &v35 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7C0070, &unk_25575E660);
  MEMORY[0x28223BE20](v5 - 8);
  v41 = &v35 - v6;
  v7 = type metadata accessor for MergeableEntryAssetsPlacement.Partial(0);
  v39 = *(v7 - 8);
  v40 = v7;
  MEMORY[0x28223BE20](v7);
  v36 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7C0068, &qword_25575E658);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v35 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7C0078, &qword_25575E678);
  v43 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v14 = &v35 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7C0060, &qword_25575E650);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v35 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7C0080, &unk_25575E680);
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v21 = &v35 - v20;
  sub_255663294(a1, v17, &qword_27F7C0060, &qword_25575E650);
  if ((*(v19 + 48))(v17, 1, v18) == 1)
  {
    sub_255674B20(v17, &qword_27F7C0060, &qword_25575E650);
  }

  else
  {
    (*(v19 + 32))(v21, v17, v18);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE818, &qword_255757FD0);
    v22 = sub_25574FA90();
    (*(v19 + 8))(v21, v18);
    if ((v22 & 1) == 0)
    {
      return 0;
    }
  }

  v23 = type metadata accessor for MergeableEntryAttributes.Partial(0);
  sub_255663294(a1 + v23[5], v11, &qword_27F7C0068, &qword_25575E658);
  v24 = v43;
  if ((*(v43 + 48))(v11, 1, v12) == 1)
  {
    sub_255674B20(v11, &qword_27F7C0068, &qword_25575E658);
  }

  else
  {
    (*(v24 + 32))(v14, v11, v12);
    type metadata accessor for MergeableEntryAttributes(0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE798, &qword_255757E30);
    v25 = sub_25574FA90();
    (*(v24 + 8))(v14, v12);
    if ((v25 & 1) == 0)
    {
      return 0;
    }
  }

  v26 = v41;
  sub_255663294(a1 + v23[6], v41, &qword_27F7C0070, &unk_25575E660);
  if ((*(v39 + 48))(v26, 1, v40) == 1)
  {
    sub_255674B20(v26, &qword_27F7C0070, &unk_25575E660);
    v27 = v42;
  }

  else
  {
    v28 = v36;
    sub_255734A04(v26, v36, type metadata accessor for MergeableEntryAssetsPlacement.Partial);
    type metadata accessor for MergeableEntryAttributes(0);
    v29 = MergeableEntryAssetsPlacement.canMerge(delta:)(v28);
    sub_25573439C(v28, type metadata accessor for MergeableEntryAssetsPlacement.Partial);
    v27 = v42;
    if (!v29)
    {
      return 0;
    }
  }

  v30 = v37;
  sub_255663294(a1 + v23[7], v37, &qword_27F7BF500, &unk_25575B3E0);
  v31 = v38;
  if ((*(v27 + 48))(v30, 1, v38) == 1)
  {
    sub_255674B20(v30, &qword_27F7BF500, &unk_25575B3E0);
    return 1;
  }

  v32 = v35;
  (*(v27 + 32))(v35, v30, v31);
  type metadata accessor for MergeableEntryAttributes(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE0C8, &qword_255755C60);
  v33 = sub_25574FCE0();
  (*(v27 + 8))(v32, v31);
  return (v33 & 1) != 0;
}

BOOL MergeableEntryAttributes.merge(delta:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BF500, &unk_25575B3E0);
  MEMORY[0x28223BE20](v2 - 8);
  v44 = &v35[-v3];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BF508, &qword_25575E670);
  v45 = *(v4 - 8);
  v46 = v4;
  MEMORY[0x28223BE20](v4);
  v39 = &v35[-v5];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7C0070, &unk_25575E660);
  MEMORY[0x28223BE20](v6 - 8);
  v43 = &v35[-v7];
  v8 = type metadata accessor for MergeableEntryAssetsPlacement.Partial(0);
  v41 = *(v8 - 8);
  v42 = v8;
  MEMORY[0x28223BE20](v8);
  v38 = &v35[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7C0068, &qword_25575E658);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v35[-v11];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7C0078, &qword_25575E678);
  v40 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v15 = &v35[-v14];
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7C0060, &qword_25575E650);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v35[-v17];
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7C0080, &unk_25575E680);
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v22 = &v35[-v21];
  v23 = MergeableEntryAttributes.canMerge(delta:)(a1);
  if (v23)
  {
    v36 = v23;
    v37 = a1;
    sub_255663294(a1, v18, &qword_27F7C0060, &qword_25575E650);
    if ((*(v20 + 48))(v18, 1, v19) == 1)
    {
      sub_255674B20(v18, &qword_27F7C0060, &qword_25575E650);
    }

    else
    {
      (*(v20 + 32))(v22, v18, v19);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE818, &qword_255757FD0);
      sub_25574FA00();
      (*(v20 + 8))(v22, v19);
    }

    v24 = type metadata accessor for MergeableEntryAttributes.Partial(0);
    v25 = v37;
    sub_255663294(v37 + v24[5], v12, &qword_27F7C0068, &qword_25575E658);
    v26 = v40;
    if ((*(v40 + 48))(v12, 1, v13) == 1)
    {
      sub_255674B20(v12, &qword_27F7C0068, &qword_25575E658);
    }

    else
    {
      (*(v26 + 32))(v15, v12, v13);
      type metadata accessor for MergeableEntryAttributes(0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE798, &qword_255757E30);
      sub_25574FA00();
      (*(v26 + 8))(v15, v13);
    }

    v27 = v46;
    v28 = v43;
    sub_255663294(v25 + v24[6], v43, &qword_27F7C0070, &unk_25575E660);
    v29 = (*(v41 + 48))(v28, 1, v42);
    v30 = v44;
    if (v29 == 1)
    {
      sub_255674B20(v28, &qword_27F7C0070, &unk_25575E660);
    }

    else
    {
      v31 = v38;
      sub_255734A04(v28, v38, type metadata accessor for MergeableEntryAssetsPlacement.Partial);
      type metadata accessor for MergeableEntryAttributes(0);
      MergeableEntryAssetsPlacement.merge(delta:)(v31);
      sub_25573439C(v31, type metadata accessor for MergeableEntryAssetsPlacement.Partial);
    }

    sub_255663294(v25 + v24[7], v30, &qword_27F7BF500, &unk_25575B3E0);
    v32 = v45;
    if ((*(v45 + 48))(v30, 1, v27) == 1)
    {
      sub_255674B20(v30, &qword_27F7BF500, &unk_25575B3E0);
    }

    else
    {
      v33 = v39;
      (*(v32 + 32))(v39, v30, v27);
      type metadata accessor for MergeableEntryAttributes(0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE0C8, &qword_255755C60);
      sub_25574FC40();
      (*(v32 + 8))(v33, v27);
    }

    LOBYTE(v23) = v36;
  }

  return v23;
}

uint64_t sub_255738DA4(uint64_t a1)
{
  v2 = sub_255664884(&qword_27F7BF060, type metadata accessor for MergeableEntryAttributes, &protocol conformance descriptor for MergeableEntryAttributes);

  return MEMORY[0x28214E298](a1, v2);
}

uint64_t sub_255738E10(uint64_t a1, int *a2)
{
  v10 = MEMORY[0x277D84FA0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE818, &qword_255757FD0);
  v4 = sub_25574FA70();
  sub_255692FAC(v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE798, &qword_255757E30);
  v5 = sub_25574FA70();
  sub_255692FAC(v5);
  v6 = MergeableEntryAssetsPlacement.newRefs(from:)(a1 + a2[6]);
  sub_255692FAC(v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE0C8, &qword_255755C60);
  v7 = sub_25574FCD0();
  sub_255692FAC(v7);
  v8 = sub_25574F830();
  sub_255692FAC(v8);
  return v10;
}

uint64_t sub_255738F14(uint64_t a1)
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
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE798, &qword_255757E30);
  sub_25574F9D0();
  MergeableEntryAssetsPlacement.apply(_:)(&v8[*(v5 + 24)]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE0C8, &qword_255755C60);
  sub_25574FC20();
  return sub_25573439C(v8, type metadata accessor for MergeableEntryAttributes.MutatingAction);
}

uint64_t sub_255739148(uint64_t a1, int *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE818, &qword_255757FD0);
  if (sub_25574FAA0())
  {
    return 1;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE798, &qword_255757E30);
  if (sub_25574FAA0())
  {
    return 1;
  }

  if (MergeableEntryAssetsPlacement.hasDelta(from:)(a1 + a2[6]))
  {
    return 1;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE0C8, &qword_255755C60);
  if (sub_25574FD00())
  {
    return 1;
  }

  else
  {
    return sub_25574F840() & 1;
  }
}

uint64_t sub_255739238(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEDB0, &unk_255759240);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v6 - v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE818, &qword_255757FD0);
  sub_25574F8F0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE798, &qword_255757E30);
  sub_25574F8F0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEA90, &unk_25575B390);
  sub_25574F5C0();
  type metadata accessor for MergeableEntryAssetsPlacement(0);
  sub_25574F390();
  sub_25574F3B0();
  (*(v2 + 8))(v4, v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE0C8, &qword_255755C60);
  sub_25574FBA0();
  sub_25574FBA0();
  sub_25574F7A0();
  sub_25574FBA0();
  return sub_25574F7A0();
}

uint64_t sub_255739438(uint64_t a1, uint64_t a2)
{
  v11[1] = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEDB0, &unk_255759240);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = v11 - v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE818, &qword_255757FD0);
  sub_25574F900();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE798, &qword_255757E30);
  sub_25574F900();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEA90, &unk_25575B390);
  sub_25574F5D0();
  type metadata accessor for MergeableEntryAssetsPlacement(0);
  sub_25574F390();
  sub_25574F3C0();
  (*(v4 + 16))(v7, v9, v3);
  sub_25574F3A0();
  (*(v4 + 8))(v9, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE0C8, &qword_255755C60);
  sub_25574FBB0();
  sub_25574FBB0();
  MEMORY[0x259C3D480](a1);
  sub_25574FBB0();
  return MEMORY[0x259C3D480](a1);
}

uint64_t sub_255739698(uint64_t a1)
{
  v2 = sub_25574F500();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MergeableEntryAttributes.merge(_:)(a1);
  return (*(v3 + 8))(v5, v2);
}

uint64_t _s13JournalShared24MergeableEntryAttributesV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE818, &qword_255757FD0);
  sub_255669798(&qword_27F7C0188, &qword_27F7BE818, &qword_255757FD0, MEMORY[0x277CFB648]);
  if ((sub_255750100() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for MergeableEntryAttributes(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE798, &qword_255757E30);
  sub_255669798(&qword_27F7C0190, &qword_27F7BE798, &qword_255757E30, MEMORY[0x277CFB648]);
  if ((sub_255750100() & 1) == 0)
  {
    return 0;
  }

  if ((_s13JournalShared29MergeableEntryAssetsPlacementV2eeoiySbAC_ACtFZ_0(a1 + *(v4 + 24), a2 + *(v4 + 24)) & 1) == 0)
  {
    return 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE0C8, &qword_255755C60);
  sub_255669798(&qword_27F7BF660, &qword_27F7BE0C8, &qword_255755C60, MEMORY[0x277CFB710]);
  if ((sub_255750100() & 1) == 0)
  {
    return 0;
  }

  return sub_25574F7E0();
}

void sub_255739A7C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4)
{
  if (!*a2)
  {
    a3();
    v5 = sub_25574FAC0();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_255739B04(uint64_t a1)
{
  sub_255672600(319, &qword_27F7C0120, &qword_27F7C00B0, &qword_25575E6D0);
  if (v1 <= 0x3F)
  {
    sub_255672600(319, &qword_27F7C0128, &qword_27F7C00B8, &qword_25575E6D8);
    if (v2 <= 0x3F)
    {
      sub_255739E9C(319, &qword_27F7C0130, type metadata accessor for MergeableEntryAssetsPlacement.ObservableDifference);
      if (v3 <= 0x3F)
      {
        sub_255672600(319, &qword_27F7BF5F0, &qword_27F7BF568, &unk_25575B4C0);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_255739C44(uint64_t a1)
{
  sub_255672600(319, &qword_27F7C0148, &qword_27F7C0098, &qword_25575E6B0);
  if (v1 <= 0x3F)
  {
    sub_255672600(319, &qword_27F7C0150, &qword_27F7C00A0, &qword_25575E6B8);
    if (v2 <= 0x3F)
    {
      sub_255739E9C(319, &qword_27F7C0158, type metadata accessor for MergeableEntryAssetsPlacement.MutatingAction);
      if (v3 <= 0x3F)
      {
        sub_255672600(319, &qword_27F7BF618, &qword_27F7BF550, &qword_25575E6C0);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_255739D84(uint64_t a1)
{
  sub_255672600(319, &qword_27F7C0170, &qword_27F7C0080, &unk_25575E680);
  if (v1 <= 0x3F)
  {
    sub_255672600(319, &qword_27F7C0178, &qword_27F7C0078, &qword_25575E678);
    if (v2 <= 0x3F)
    {
      sub_255739E9C(319, &qword_27F7C0180, type metadata accessor for MergeableEntryAssetsPlacement.Partial);
      if (v3 <= 0x3F)
      {
        sub_255672600(319, &qword_27F7BF640, &qword_27F7BF508, &qword_25575E670);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_255739E9C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
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

uint64_t StateOfMindAssetMetadata.stateOfMindIdentifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t StateOfMindAssetMetadata.date.getter@<X0>(uint64_t a2@<X8>)
{
  v4 = v2 + *(type metadata accessor for StateOfMindAssetMetadata(0) + 20);

  return sub_2556700F4(v4, a2);
}

uint64_t type metadata accessor for StateOfMindAssetMetadata(uint64_t a1)
{
  result = qword_27F7C0220;
  if (!qword_27F7C0220)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t StateOfMindAssetMetadata.labels.getter()
{
  type metadata accessor for StateOfMindAssetMetadata(0);
}

uint64_t StateOfMindAssetMetadata.domains.getter()
{
  type metadata accessor for StateOfMindAssetMetadata(0);
}

uint64_t StateOfMindAssetMetadata.backgroundColorsLight.getter()
{
  type metadata accessor for StateOfMindAssetMetadata(0);
}

uint64_t StateOfMindAssetMetadata.backgroundColorsDark.getter()
{
  type metadata accessor for StateOfMindAssetMetadata(0);
}

uint64_t StateOfMindAssetMetadata.init(stateOfMindIdentifier:date:reflectiveInterval:labels:domains:valenceClassification:backgroundColorsLight:backgroundColorsDark:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, char a10, uint64_t a11, uint64_t a12)
{
  *a9 = a1;
  a9[1] = a2;
  v18 = type metadata accessor for StateOfMindAssetMetadata(0);
  result = sub_2556719B8(a3, a9 + v18[5]);
  v20 = a9 + v18[6];
  *v20 = a4;
  v20[8] = a5 & 1;
  *(a9 + v18[7]) = a6;
  *(a9 + v18[8]) = a7;
  v21 = a9 + v18[9];
  *v21 = a8;
  v21[8] = a10 & 1;
  *(a9 + v18[10]) = a11;
  *(a9 + v18[11]) = a12;
  return result;
}

unint64_t sub_25573A1C8()
{
  v1 = *v0;
  if (v1 > 3)
  {
    v5 = 0xD000000000000015;
    if (v1 != 6)
    {
      v5 = 0xD000000000000014;
    }

    v6 = 0x736E69616D6F64;
    if (v1 != 4)
    {
      v6 = 0xD000000000000015;
    }

    if (*v0 <= 5u)
    {
      return v6;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v2 = 1702125924;
    v3 = 0xD000000000000012;
    if (v1 != 2)
    {
      v3 = 0x736C6562616CLL;
    }

    if (!*v0)
    {
      v2 = 0xD000000000000015;
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
}

uint64_t sub_25573A2CC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_25573B354(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_25573A2F4(uint64_t a1)
{
  v2 = sub_25573A71C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25573A330(uint64_t a1)
{
  v2 = sub_25573A71C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t StateOfMindAssetMetadata.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7C01B0, &qword_25575EA78);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v11 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25573A71C();
  sub_255750FF0();
  LOBYTE(v13) = 0;
  sub_255750DB0();
  if (!v2)
  {
    v9 = type metadata accessor for StateOfMindAssetMetadata(0);
    LOBYTE(v13) = 1;
    sub_25574F020();
    sub_255671928(&qword_27F7BDC18, MEMORY[0x277CC9578], MEMORY[0x277CC9580]);
    sub_255750DF0();
    LOBYTE(v13) = 2;
    sub_255750DE0();
    v13 = *(v3 + v9[7]);
    v12 = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7C01C0, &qword_25575EA80);
    sub_25573AD5C(&qword_27F7C01C8, MEMORY[0x277D83B90], MEMORY[0x277D83948]);
    sub_255750DF0();
    v13 = *(v3 + v9[8]);
    v12 = 4;
    sub_255750DF0();
    LOBYTE(v13) = 5;
    sub_255750DE0();
    v13 = *(v3 + v9[10]);
    v12 = 6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7C01D0, &qword_25575EA88);
    sub_25573ADC8(&qword_27F7C01D8, sub_25573A770, MEMORY[0x277D83948]);
    sub_255750E30();
    v13 = *(v3 + v9[11]);
    v12 = 7;
    sub_255750E30();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_25573A71C()
{
  result = qword_27F7C01B8;
  if (!qword_27F7C01B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7C01B8);
  }

  return result;
}

uint64_t StateOfMindAssetMetadata.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEB40, &unk_255754E40);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v26 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7C01F0, &qword_25575EA98);
  v28 = *(v7 - 8);
  v29 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v26 - v8;
  v10 = type metadata accessor for StateOfMindAssetMetadata(0);
  MEMORY[0x28223BE20](v10);
  v12 = (&v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = a1[3];
  v30 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v13);
  sub_25573A71C();
  v14 = v9;
  sub_255750FE0();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(v30);
  }

  v15 = v6;
  v17 = v28;
  v16 = v29;
  LOBYTE(v32) = 0;
  *v12 = sub_255750D00();
  v12[1] = v18;
  sub_25574F020();
  LOBYTE(v32) = 1;
  sub_255671928(&qword_27F7BDC38, MEMORY[0x277CC9578], MEMORY[0x277CC95A0]);
  sub_255750D40();
  sub_2556719B8(v15, v12 + v10[5]);
  LOBYTE(v32) = 2;
  v19 = sub_255750D30();
  v20 = v12 + v10[6];
  *v20 = v19;
  v20[8] = v21 & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7C01C0, &qword_25575EA80);
  v31 = 3;
  sub_25573AD5C(&qword_27F7C01F8, MEMORY[0x277D83BB8], MEMORY[0x277D83978]);
  sub_255750D40();
  *(v12 + v10[7]) = v32;
  v31 = 4;
  sub_255750D40();
  *(v12 + v10[8]) = v32;
  LOBYTE(v32) = 5;
  v22 = sub_255750D30();
  v23 = v12 + v10[9];
  *v23 = v22;
  v23[8] = v24 & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7C01D0, &qword_25575EA88);
  v31 = 6;
  sub_25573ADC8(&qword_27F7C0200, sub_25573AE40, MEMORY[0x277D83978]);
  sub_255750D80();
  *(v12 + v10[10]) = v32;
  v31 = 7;
  sub_255750D80();
  (*(v17 + 8))(v14, v16);
  *(v12 + v10[11]) = v32;
  sub_25573AEEC(v12, v27);
  __swift_destroy_boxed_opaque_existential_1(v30);
  return sub_25573AF50(v12);
}

uint64_t sub_25573AD5C(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7C01C0, &qword_25575EA80);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_25573ADC8(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7C01D0, &qword_25575EA88);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_25573AE74(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7C01E8, &qword_25575EA90);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_25573AEEC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StateOfMindAssetMetadata(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_25573AF50(uint64_t a1)
{
  v2 = type metadata accessor for StateOfMindAssetMetadata(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_25573AFAC(uint64_t a1)
{
  *(a1 + 8) = sub_255671928(&qword_27F7C0210, type metadata accessor for StateOfMindAssetMetadata, &protocol conformance descriptor for StateOfMindAssetMetadata);
  result = sub_255671928(&qword_27F7C0218, type metadata accessor for StateOfMindAssetMetadata, &protocol conformance descriptor for StateOfMindAssetMetadata);
  *(a1 + 16) = result;
  return result;
}

void sub_25573B088(uint64_t a1)
{
  sub_25566BFA8(319, &qword_27F7BE538, MEMORY[0x277D837D0]);
  if (v1 <= 0x3F)
  {
    sub_25566E80C(319);
    if (v2 <= 0x3F)
    {
      sub_25566BFA8(319, &qword_27F7BEC00, MEMORY[0x277D83B88]);
      if (v3 <= 0x3F)
      {
        sub_25573B1D8(319, &qword_27F7C0230, &qword_27F7C01C0, &qword_25575EA80, MEMORY[0x277D83D88]);
        if (v4 <= 0x3F)
        {
          sub_25573B1D8(319, &qword_27F7C0238, &qword_27F7C01E8, &qword_25575EA90, MEMORY[0x277D83940]);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_25573B1D8(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
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

unint64_t sub_25573B250()
{
  result = qword_27F7C0240;
  if (!qword_27F7C0240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7C0240);
  }

  return result;
}

unint64_t sub_25573B2A8()
{
  result = qword_27F7C0248;
  if (!qword_27F7C0248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7C0248);
  }

  return result;
}

unint64_t sub_25573B300()
{
  result = qword_27F7C0250;
  if (!qword_27F7C0250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7C0250);
  }

  return result;
}

uint64_t sub_25573B354(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000015 && 0x8000000255753940 == a2 || (sub_255750EB0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1702125924 && a2 == 0xE400000000000000 || (sub_255750EB0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000012 && 0x8000000255753960 == a2 || (sub_255750EB0() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x736C6562616CLL && a2 == 0xE600000000000000 || (sub_255750EB0() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x736E69616D6F64 && a2 == 0xE700000000000000 || (sub_255750EB0() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000015 && 0x8000000255753980 == a2 || (sub_255750EB0() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000015 && 0x80000002557539A0 == a2 || (sub_255750EB0() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000014 && 0x80000002557539C0 == a2)
  {

    return 7;
  }

  else
  {
    v5 = sub_255750EB0();

    if (v5)
    {
      return 7;
    }

    else
    {
      return 8;
    }
  }
}

uint64_t VisitAssetMetadata.city.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t VisitAssetMetadata.styleData.getter()
{
  v1 = v0 + *(type metadata accessor for VisitAssetMetadata(0) + 48);
  v2 = *v1;
  sub_25567625C(*v1, *(v1 + 8));
  return v2;
}

uint64_t VisitAssetMetadata.assetSource.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for VisitAssetMetadata(0);
  *a1 = *(v1 + *(result + 68));
  return result;
}

uint64_t VisitAssetMetadata.init(placeName:city:typeOfPlace:visitStartTime:visitEndTime:createdDate:latitude:longitude:styleData:mapItemData:isWork:confidenceLevel:horizontalAccuracy:assetSource:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, uint64_t a10, uint64_t a11, char a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, char a21, uint64_t a22, char a23, char *a24)
{
  v35 = *a24;
  *a9 = a1;
  a9[1] = a2;
  a9[2] = a3;
  a9[3] = a4;
  a9[4] = a5;
  a9[5] = a6;
  v27 = type metadata accessor for VisitAssetMetadata(0);
  sub_255675060(a7, a9 + v27[7], &qword_27F7BEB40, &unk_255754E40);
  sub_255675060(a8, a9 + v27[8], &qword_27F7BEB40, &unk_255754E40);
  result = sub_255675060(a10, a9 + v27[9], &qword_27F7BEB40, &unk_255754E40);
  v29 = a9 + v27[10];
  *v29 = a11;
  v29[8] = a12 & 1;
  v30 = a9 + v27[11];
  *v30 = a13;
  v30[8] = a14 & 1;
  v31 = (a9 + v27[12]);
  *v31 = a15;
  v31[1] = a16;
  v32 = (a9 + v27[13]);
  *v32 = a17;
  v32[1] = a18;
  *(a9 + v27[14]) = a19;
  v33 = a9 + v27[15];
  *v33 = a20;
  v33[8] = a21 & 1;
  v34 = a9 + v27[16];
  *v34 = a22;
  v34[8] = a23 & 1;
  *(a9 + v27[17]) = v35;
  return result;
}

uint64_t VisitAssetMetadata.id.getter()
{
  v1 = sub_25574F0D0();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for VisitAssetMetadata(0);
  if (*(v0 + *(v5 + 40) + 8) & 1) != 0 || (*(v0 + *(v5 + 44) + 8))
  {
    sub_25574F0C0();
    v6 = sub_25574F040();
    (*(v2 + 8))(v4, v1);
  }

  else
  {
    v7 = v0[1];
    if (v7)
    {
      v8 = *v0;
      v10 = 0;
      v11 = 0xE000000000000000;
      sub_255750530();
      MEMORY[0x259C3DED0](95, 0xE100000000000000);
      sub_255750530();
      MEMORY[0x259C3DED0](95, 0xE100000000000000);
      MEMORY[0x259C3DED0](v8, v7);
    }

    else
    {
      v10 = 0;
      v11 = 0xE000000000000000;
      sub_255750530();
      MEMORY[0x259C3DED0](95, 0xE100000000000000);
      sub_255750530();
    }

    return v10;
  }

  return v6;
}

uint64_t sub_25573BB98@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_25573EB58(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_25573BBCC(uint64_t a1)
{
  v2 = sub_255674878();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25573BC08(uint64_t a1)
{
  v2 = sub_255674878();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t VisitAssetMetadata.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7C0258, &qword_25575EC88);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v15 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_255674878();
  sub_255750FF0();
  LOBYTE(v15) = 0;
  sub_255750DB0();
  if (!v2)
  {
    LOBYTE(v15) = 1;
    sub_255750DB0();
    LOBYTE(v15) = 2;
    sub_255750DB0();
    v9 = type metadata accessor for VisitAssetMetadata(0);
    LOBYTE(v15) = 3;
    sub_25574F020();
    sub_255671970(&qword_27F7BDC18, MEMORY[0x277CC9578], MEMORY[0x277CC9580]);
    sub_255750DF0();
    LOBYTE(v15) = 4;
    sub_255750DF0();
    LOBYTE(v15) = 5;
    sub_255750DF0();
    LOBYTE(v15) = 6;
    sub_255750DD0();
    LOBYTE(v15) = 7;
    sub_255750DD0();
    v10 = (v3 + v9[12]);
    v11 = v10[1];
    v15 = *v10;
    v16 = v11;
    v17 = 8;
    sub_25567625C(v15, v11);
    sub_255687198();
    sub_255750DF0();
    sub_2556A15B8(v15, v16);
    v12 = (v3 + v9[13]);
    v13 = v12[1];
    v15 = *v12;
    v16 = v13;
    v17 = 9;
    sub_25567625C(v15, v13);
    sub_255750DF0();
    sub_2556A15B8(v15, v16);
    LOBYTE(v15) = 10;
    sub_255750DC0();
    LOBYTE(v15) = 11;
    sub_255750DD0();
    LOBYTE(v15) = 12;
    sub_255750DD0();
    LOBYTE(v15) = *(v3 + v9[17]);
    v17 = 13;
    sub_25573E578();
    sub_255750DF0();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t VisitAssetMetadata.hash(into:)(uint64_t a1)
{
  v2 = v1;
  v3 = sub_25574F020();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v43 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEB40, &unk_255754E40);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v9 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v41 = &v39 - v11;
  MEMORY[0x28223BE20](v10);
  v13 = &v39 - v12;
  if (v1[1])
  {
    sub_255750FA0();
    sub_2557501F0();
    if (v1[3])
    {
      goto LABEL_3;
    }

LABEL_6:
    sub_255750FA0();
    if (v1[5])
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  sub_255750FA0();
  if (!v1[3])
  {
    goto LABEL_6;
  }

LABEL_3:
  sub_255750FA0();
  sub_2557501F0();
  if (v1[5])
  {
LABEL_4:
    sub_255750FA0();
    sub_2557501F0();
    goto LABEL_8;
  }

LABEL_7:
  sub_255750FA0();
LABEL_8:
  v14 = type metadata accessor for VisitAssetMetadata(0);
  sub_255663294(v1 + v14[7], v13, &qword_27F7BEB40, &unk_255754E40);
  v15 = *(v4 + 48);
  v16 = v15(v13, 1, v3);
  v42 = v4;
  if (v16 == 1)
  {
    sub_255750FA0();
  }

  else
  {
    v17 = *(v4 + 32);
    v40 = v9;
    v18 = v43;
    v17(v43, v13, v3);
    sub_255750FA0();
    sub_255671970(&qword_27F7C0270, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);
    sub_2557500A0();
    v19 = v18;
    v9 = v40;
    (*(v4 + 8))(v19, v3);
  }

  v20 = v41;
  sub_255663294(v2 + v14[8], v41, &qword_27F7BEB40, &unk_255754E40);
  if (v15(v20, 1, v3) == 1)
  {
    sub_255750FA0();
  }

  else
  {
    v22 = v42;
    v21 = v43;
    (*(v42 + 32))(v43, v20, v3);
    sub_255750FA0();
    sub_255671970(&qword_27F7C0270, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);
    sub_2557500A0();
    (*(v22 + 8))(v21, v3);
  }

  sub_255663294(v2 + v14[9], v9, &qword_27F7BEB40, &unk_255754E40);
  if (v15(v9, 1, v3) == 1)
  {
    sub_255750FA0();
  }

  else
  {
    v24 = v42;
    v23 = v43;
    (*(v42 + 32))(v43, v9, v3);
    sub_255750FA0();
    sub_255671970(&qword_27F7C0270, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);
    sub_2557500A0();
    (*(v24 + 8))(v23, v3);
  }

  v25 = v2 + v14[10];
  if (v25[8] == 1)
  {
    sub_255750FA0();
  }

  else
  {
    v26 = *v25;
    sub_255750FA0();
    if ((v26 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v27 = v26;
    }

    else
    {
      v27 = 0;
    }

    MEMORY[0x259C3EC90](v27);
  }

  v28 = v2 + v14[11];
  if (v28[8] == 1)
  {
    sub_255750FA0();
  }

  else
  {
    v29 = *v28;
    sub_255750FA0();
    if ((v29 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v30 = v29;
    }

    else
    {
      v30 = 0;
    }

    MEMORY[0x259C3EC90](v30);
  }

  if (*(v2 + v14[12] + 8) >> 60 == 15)
  {
    sub_255750FA0();
  }

  else
  {
    sub_255750FA0();
    sub_25574EFA0();
  }

  if (*(v2 + v14[13] + 8) >> 60 == 15)
  {
    sub_255750FA0();
  }

  else
  {
    sub_255750FA0();
    sub_25574EFA0();
  }

  if (*(v2 + v14[14]) != 2)
  {
    sub_255750FA0();
  }

  sub_255750FA0();
  v31 = v2 + v14[15];
  if (v31[8] == 1)
  {
    sub_255750FA0();
  }

  else
  {
    v32 = *v31;
    sub_255750FA0();
    if ((v32 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v33 = v32;
    }

    else
    {
      v33 = 0;
    }

    MEMORY[0x259C3EC90](v33);
  }

  v34 = v2 + v14[16];
  if (v34[8] == 1)
  {
    sub_255750FA0();
  }

  else
  {
    v35 = *v34;
    sub_255750FA0();
    if ((v35 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v36 = v35;
    }

    else
    {
      v36 = 0;
    }

    MEMORY[0x259C3EC90](v36);
  }

  v37 = *(v2 + v14[17]);
  if (v37 == 13)
  {
    return sub_255750FA0();
  }

  sub_255750FA0();
  v44 = v37;
  AssetSource.rawValue.getter();
  sub_2557501F0();
}

uint64_t VisitAssetMetadata.hashValue.getter()
{
  sub_255750F80();
  VisitAssetMetadata.hash(into:)(v1);
  return sub_255750FD0();
}

uint64_t sub_25573C7DC()
{
  sub_255750F80();
  VisitAssetMetadata.hash(into:)(v1);
  return sub_255750FD0();
}

uint64_t sub_25573C820(uint64_t a1)
{
  sub_255750F80();
  VisitAssetMetadata.hash(into:)(v2);
  return sub_255750FD0();
}

uint64_t MultiPinMapAssetMetadata.mapCameraData.getter()
{
  v1 = *(v0 + 8);
  sub_25567625C(v1, *(v0 + 16));
  return v1;
}

uint64_t MultiPinMapAssetMetadata.mapCameraData.setter(uint64_t a1, uint64_t a2)
{
  result = sub_2556A15B8(*(v2 + 8), *(v2 + 16));
  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

uint64_t MultiPinMapAssetMetadata.revision.setter(uint64_t result, char a2)
{
  *(v2 + 32) = result;
  *(v2 + 40) = a2 & 1;
  return result;
}

uint64_t MultiPinMapAssetMetadata.init(visitsData:mapCameraData:isSlim:revision:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X8>)
{
  *a7 = a1;
  result = sub_2556A15B8(0, 0xF000000000000000);
  *(a7 + 8) = a2;
  *(a7 + 16) = a3;
  *(a7 + 24) = a4;
  *(a7 + 32) = a5;
  *(a7 + 40) = a6 & 1;
  return result;
}

uint64_t sub_25573C9C8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_25573EFE4(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_25573C9F0(uint64_t a1)
{
  v2 = sub_255672BD8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25573CA2C(uint64_t a1)
{
  v2 = sub_255672BD8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MultiPinMapAssetMetadata.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7C0288, &qword_25575EC98);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v11 - v6;
  v9 = *v1;
  v8 = *(v1 + 8);
  v13 = *(v1 + 16);
  v14 = v8;
  v17 = *(v1 + 24);
  v12 = *(v1 + 32);
  v11[1] = *(v1 + 40);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_255672BD8();

  sub_255750FF0();
  v15 = v9;
  v18 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7C0298, &qword_25575ECA0);
  sub_255672E04(&qword_27F7C02A0, &qword_27F7C02A8, &protocol conformance descriptor for VisitAssetMetadata, MEMORY[0x277D83948]);
  sub_255750DF0();

  if (!v2)
  {
    v15 = v14;
    v16 = v13;
    v18 = 1;
    sub_25567625C(v14, v13);
    sub_255687198();
    sub_255750DF0();
    sub_2556A15B8(v15, v16);
    LOBYTE(v15) = 2;
    sub_255750DC0();
    LOBYTE(v15) = 3;
    sub_255750DE0();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_25573CD7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6144737469736976 && a2 == 0xEA00000000006174)
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

uint64_t sub_25573CE0C(uint64_t a1)
{
  v2 = sub_25573E5CC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25573CE48(uint64_t a1)
{
  v2 = sub_25573E5CC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t GenericMapAssetMetadata.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7C02D0, &qword_25575ECB8);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25573E5CC();
  sub_255750FF0();
  type metadata accessor for VisitAssetMetadata(0);
  sub_255671970(&qword_27F7C02A8, type metadata accessor for VisitAssetMetadata, &protocol conformance descriptor for VisitAssetMetadata);
  sub_255750DF0();
  return (*(v3 + 8))(v5, v2);
}

uint64_t GenericMapAssetMetadata.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v16 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7C02C8, &qword_25575ECB0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v15 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7C02E0, &qword_25575ECC0);
  v17 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v15 - v8;
  v10 = type metadata accessor for GenericMapAssetMetadata(0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25573E5CC();
  sub_255750FE0();
  if (!v2)
  {
    v13 = v16;
    type metadata accessor for VisitAssetMetadata(0);
    sub_255671970(&qword_27F7C02C0, type metadata accessor for VisitAssetMetadata, &protocol conformance descriptor for VisitAssetMetadata);
    sub_255750D40();
    (*(v17 + 8))(v9, v7);
    sub_255675060(v6, v12, &qword_27F7C02C8, &qword_25575ECB0);
    sub_25573E640(v12, v13);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_25573D274(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7C02D0, &qword_25575ECB8);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25573E5CC();
  sub_255750FF0();
  type metadata accessor for VisitAssetMetadata(0);
  sub_255671970(&qword_27F7C02A8, type metadata accessor for VisitAssetMetadata, &protocol conformance descriptor for VisitAssetMetadata);
  sub_255750DF0();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_25573D3EC@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, BOOL *a4@<X8>)
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v5 != 2)
    {
      if (result)
      {
        v6 = 1;
        goto LABEL_30;
      }

LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    v7 = result;
    v8 = *(a2 + 16);
    v9 = *(a2 + 24);
    v10 = sub_25574EC50();
    if (v10)
    {
      v11 = sub_25574EC80();
      if (__OFSUB__(v8, v11))
      {
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

      v10 += v8 - v11;
    }

    v12 = __OFSUB__(v9, v8);
    v13 = v9 - v8;
    if (!v12)
    {
      result = sub_25574EC70();
      if (result >= v13)
      {
        v14 = v13;
      }

      else
      {
        v14 = result;
      }

      if (!v7)
      {
        goto LABEL_37;
      }

      if (!v10)
      {
LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      result = v7;
      if (v10 == v7)
      {
LABEL_27:
        v6 = 1;
        goto LABEL_30;
      }

LABEL_16:
      result = memcmp(result, v10, v14);
      v6 = result == 0;
      goto LABEL_30;
    }

LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (!v5)
  {
    __s2 = a2;
    v20 = a3;
    v21 = BYTE2(a3);
    v22 = BYTE3(a3);
    v23 = BYTE4(a3);
    v24 = BYTE5(a3);
    if (result)
    {
      result = memcmp(result, &__s2, BYTE6(a3));
      v6 = result == 0;
LABEL_30:
      *a4 = v6;
      return result;
    }

    __break(1u);
    goto LABEL_36;
  }

  v15 = a2;
  v16 = (a2 >> 32) - a2;
  if (a2 >> 32 < a2)
  {
    __break(1u);
    goto LABEL_32;
  }

  v17 = result;
  v10 = sub_25574EC50();
  if (!v10)
  {
    goto LABEL_21;
  }

  v18 = sub_25574EC80();
  if (__OFSUB__(v15, v18))
  {
LABEL_34:
    __break(1u);
  }

  v10 += v15 - v18;
LABEL_21:
  result = sub_25574EC70();
  if (result >= v16)
  {
    v14 = v16;
  }

  else
  {
    v14 = result;
  }

  if (!v17)
  {
    goto LABEL_38;
  }

  if (v10)
  {
    result = v17;
    if (v10 == v17)
    {
      goto LABEL_27;
    }

    goto LABEL_16;
  }

LABEL_40:
  __break(1u);
  return result;
}

uint64_t sub_25573D61C(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v13[2] = *MEMORY[0x277D85DE8];
  v7 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v7)
    {
      v13[0] = a1;
      LOWORD(v13[1]) = a2;
      BYTE2(v13[1]) = BYTE2(a2);
      BYTE3(v13[1]) = BYTE3(a2);
      BYTE4(v13[1]) = BYTE4(a2);
      BYTE5(v13[1]) = BYTE5(a2);
      goto LABEL_9;
    }

    v8 = a1;
    v9 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

LABEL_7:
    v10 = sub_25573D7AC(v8, v9, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, a4);
    sub_2556755A8(a3, a4);
    return v10 & 1;
  }

  if (v7 == 2)
  {
    v8 = *(a1 + 16);
    v9 = *(a1 + 24);
    goto LABEL_7;
  }

  memset(v13, 0, 14);
LABEL_9:
  sub_25573D3EC(v13, a3, a4, &v12);
  v10 = v4;
  sub_2556755A8(a3, a4);
  if (!v4)
  {
    v10 = v12;
  }

  return v10 & 1;
}

uint64_t sub_25573D7AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  result = sub_25574EC50();
  v11 = result;
  if (result)
  {
    result = sub_25574EC80();
    if (__OFSUB__(a1, result))
    {
LABEL_9:
      __break(1u);
      return result;
    }

    v11 += a1 - result;
  }

  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_9;
  }

  sub_25574EC70();
  sub_25573D3EC(v11, a4, a5, &v13);
  if (!v5)
  {
    return v13;
  }

  return v12;
}

BOOL sub_25573D864(_BOOL8 result, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a2 >> 62;
  v5 = a4 >> 62;
  if (a2 >> 62 == 3)
  {
    v6 = 0;
    if (!result && a2 == 0xC000000000000000 && a4 >> 62 == 3)
    {
      v6 = 0;
      if (!a3 && a4 == 0xC000000000000000)
      {
        return 1;
      }
    }

    goto LABEL_14;
  }

  if (!v4)
  {
    v6 = BYTE6(a2);
    goto LABEL_14;
  }

  if (v4 == 1)
  {
    LODWORD(v6) = HIDWORD(result) - result;
    if (__OFSUB__(HIDWORD(result), result))
    {
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v6 = v6;
LABEL_14:
    if (v5 > 1)
    {
      if (v5 != 2)
      {
        return v6 == 0;
      }

      v11 = *(a3 + 16);
      v10 = *(a3 + 24);
      v9 = __OFSUB__(v10, v11);
      v12 = v10 - v11;
      if (!v9)
      {
        if (v6 != v12)
        {
          return 0;
        }

        goto LABEL_21;
      }

      __break(1u);
    }

    else
    {
      if (!v5)
      {
        if (v6 != BYTE6(a4))
        {
          return 0;
        }

LABEL_21:
        if (v6 >= 1)
        {
          v13 = result;
          sub_255674F54(a3, a4);
          return sub_25573D61C(v13, a2, a3, a4) & 1;
        }

        return 1;
      }

      if (!__OFSUB__(HIDWORD(a3), a3))
      {
        if (v6 != HIDWORD(a3) - a3)
        {
          return 0;
        }

        goto LABEL_21;
      }
    }

    __break(1u);
    goto LABEL_30;
  }

  v8 = *(result + 16);
  v7 = *(result + 24);
  v9 = __OFSUB__(v7, v8);
  v6 = v7 - v8;
  if (!v9)
  {
    goto LABEL_14;
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t _s13JournalShared18VisitAssetMetadataV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v4 = sub_25574F020();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v107 = &v99 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEB40, &unk_255754E40);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v106 = &v99 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v99 - v11;
  MEMORY[0x28223BE20](v10);
  v14 = &v99 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BF798, &unk_25575BDA0);
  v16 = MEMORY[0x28223BE20](v15);
  v18 = &v99 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v16);
  v21 = &v99 - v20;
  MEMORY[0x28223BE20](v19);
  v23 = &v99 - v22;
  v24 = a1[1];
  v25 = a2[1];
  if (v24)
  {
    if (!v25 || (*a1 != *a2 || v24 != v25) && (sub_255750EB0() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v25)
  {
    return 0;
  }

  v26 = a1[3];
  v27 = a2[3];
  if (v26)
  {
    if (!v27 || (a1[2] != a2[2] || v26 != v27) && (sub_255750EB0() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v27)
  {
    return 0;
  }

  v28 = a1[5];
  v29 = a2[5];
  if (v28)
  {
    if (!v29 || (a1[4] != a2[4] || v28 != v29) && (sub_255750EB0() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v29)
  {
    return 0;
  }

  v100 = v18;
  v103 = type metadata accessor for VisitAssetMetadata(0);
  v105 = v5;
  v30 = v103[7];
  v31 = *(v15 + 48);
  sub_255663294(a1 + v30, v23, &qword_27F7BEB40, &unk_255754E40);
  v104 = v31;
  sub_255663294(a2 + v30, &v23[v31], &qword_27F7BEB40, &unk_255754E40);
  v32 = v105 + 48;
  v33 = *(v105 + 48);
  v34 = v33(v23, 1, v4);
  v101 = v33;
  v102 = v32;
  if (v34 == 1)
  {
    if (v33(&v23[v104], 1, v4) == 1)
    {
      sub_255674B20(v23, &qword_27F7BEB40, &unk_255754E40);
      goto LABEL_29;
    }

LABEL_27:
    v35 = v23;
LABEL_42:
    sub_255674B20(v35, &qword_27F7BF798, &unk_25575BDA0);
    return 0;
  }

  sub_255663294(v23, v14, &qword_27F7BEB40, &unk_255754E40);
  if (v33(&v23[v104], 1, v4) == 1)
  {
    (*(v105 + 8))(v14, v4);
    goto LABEL_27;
  }

  v36 = v105;
  (*(v105 + 32))(v107, &v23[v104], v4);
  sub_255671970(&qword_27F7BF7A0, MEMORY[0x277CC9578], MEMORY[0x277CC9598]);
  LODWORD(v104) = sub_255750100();
  v37 = *(v36 + 8);
  v37(v107, v4);
  v37(v14, v4);
  sub_255674B20(v23, &qword_27F7BEB40, &unk_255754E40);
  if ((v104 & 1) == 0)
  {
    return 0;
  }

LABEL_29:
  v38 = v103[8];
  v39 = *(v15 + 48);
  sub_255663294(a1 + v38, v21, &qword_27F7BEB40, &unk_255754E40);
  sub_255663294(a2 + v38, &v21[v39], &qword_27F7BEB40, &unk_255754E40);
  v40 = v101;
  if (v101(v21, 1, v4) == 1)
  {
    v41 = v40(&v21[v39], 1, v4);
    v42 = v100;
    if (v41 == 1)
    {
      sub_255674B20(v21, &qword_27F7BEB40, &unk_255754E40);
      goto LABEL_36;
    }

    goto LABEL_34;
  }

  sub_255663294(v21, v12, &qword_27F7BEB40, &unk_255754E40);
  v43 = v39;
  v44 = v40(&v21[v39], 1, v4);
  v45 = v105;
  v42 = v100;
  if (v44 == 1)
  {
    (*(v105 + 8))(v12, v4);
LABEL_34:
    v35 = v21;
    goto LABEL_42;
  }

  v46 = v107;
  (*(v105 + 32))(v107, &v21[v43], v4);
  sub_255671970(&qword_27F7BF7A0, MEMORY[0x277CC9578], MEMORY[0x277CC9598]);
  LODWORD(v104) = sub_255750100();
  v47 = *(v45 + 8);
  v47(v46, v4);
  v47(v12, v4);
  sub_255674B20(v21, &qword_27F7BEB40, &unk_255754E40);
  if ((v104 & 1) == 0)
  {
    return 0;
  }

LABEL_36:
  v48 = v103[9];
  v49 = *(v15 + 48);
  sub_255663294(a1 + v48, v42, &qword_27F7BEB40, &unk_255754E40);
  sub_255663294(a2 + v48, v42 + v49, &qword_27F7BEB40, &unk_255754E40);
  v50 = v101;
  if (v101(v42, 1, v4) == 1)
  {
    if (v50(v42 + v49, 1, v4) == 1)
    {
      sub_255674B20(v42, &qword_27F7BEB40, &unk_255754E40);
      goto LABEL_46;
    }

    goto LABEL_41;
  }

  v51 = v106;
  sub_255663294(v42, v106, &qword_27F7BEB40, &unk_255754E40);
  if (v50(v42 + v49, 1, v4) == 1)
  {
    (*(v105 + 8))(v51, v4);
LABEL_41:
    v35 = v42;
    goto LABEL_42;
  }

  v53 = v105;
  v54 = v42 + v49;
  v55 = v107;
  (*(v105 + 32))(v107, v54, v4);
  sub_255671970(&qword_27F7BF7A0, MEMORY[0x277CC9578], MEMORY[0x277CC9598]);
  v56 = sub_255750100();
  v57 = *(v53 + 8);
  v57(v55, v4);
  v57(v51, v4);
  sub_255674B20(v42, &qword_27F7BEB40, &unk_255754E40);
  if ((v56 & 1) == 0)
  {
    return 0;
  }

LABEL_46:
  v58 = v103[10];
  v59 = (a1 + v58);
  v60 = *(a1 + v58 + 8);
  v61 = (a2 + v58);
  v62 = *(a2 + v58 + 8);
  if (v60)
  {
    if (!v62)
    {
      return 0;
    }
  }

  else
  {
    if (*v59 != *v61)
    {
      LOBYTE(v62) = 1;
    }

    if (v62)
    {
      return 0;
    }
  }

  v63 = v103[11];
  v64 = (a1 + v63);
  v65 = *(a1 + v63 + 8);
  v66 = (a2 + v63);
  v67 = *(a2 + v63 + 8);
  if (v65)
  {
    if (!v67)
    {
      return 0;
    }
  }

  else
  {
    if (*v64 != *v66)
    {
      LOBYTE(v67) = 1;
    }

    if (v67)
    {
      return 0;
    }
  }

  v68 = v103[12];
  v70 = *(a1 + v68);
  v69 = *(a1 + v68 + 8);
  v71 = (a2 + v68);
  v73 = *v71;
  v72 = v71[1];
  if (v69 >> 60 == 15)
  {
    if (v72 >> 60 != 15)
    {
      goto LABEL_67;
    }

    sub_25567625C(v70, v69);
    sub_25567625C(v73, v72);
    sub_2556A15B8(v70, v69);
  }

  else
  {
    if (v72 >> 60 == 15)
    {
      goto LABEL_67;
    }

    sub_25567625C(v70, v69);
    sub_25567625C(v73, v72);
    v74 = sub_25573D864(v70, v69, v73, v72);
    sub_2556A15B8(v73, v72);
    sub_2556A15B8(v70, v69);
    if (!v74)
    {
      return 0;
    }
  }

  v75 = v103[13];
  v70 = *(a1 + v75);
  v69 = *(a1 + v75 + 8);
  v76 = (a2 + v75);
  v73 = *v76;
  v72 = v76[1];
  if (v69 >> 60 == 15)
  {
    if (v72 >> 60 == 15)
    {
      sub_25567625C(v70, v69);
      sub_25567625C(v73, v72);
      sub_2556A15B8(v70, v69);
      goto LABEL_69;
    }

LABEL_67:
    sub_25567625C(v70, v69);
    sub_25567625C(v73, v72);
    sub_2556A15B8(v70, v69);
    sub_2556A15B8(v73, v72);
    return 0;
  }

  if (v72 >> 60 == 15)
  {
    goto LABEL_67;
  }

  sub_25567625C(v70, v69);
  sub_25567625C(v73, v72);
  v77 = sub_25573D864(v70, v69, v73, v72);
  sub_2556A15B8(v73, v72);
  sub_2556A15B8(v70, v69);
  if (!v77)
  {
    return 0;
  }

LABEL_69:
  v78 = v103[14];
  v79 = *(a1 + v78);
  v80 = *(a2 + v78);
  if (v79 == 2)
  {
    if (v80 != 2)
    {
      return 0;
    }

    goto LABEL_74;
  }

  result = 0;
  if (v80 != 2 && ((v80 ^ v79) & 1) == 0)
  {
LABEL_74:
    v81 = v103[15];
    v82 = (a1 + v81);
    v83 = *(a1 + v81 + 8);
    v84 = (a2 + v81);
    v85 = *(a2 + v81 + 8);
    if (v83)
    {
      if (!v85)
      {
        return 0;
      }
    }

    else
    {
      if (*v82 != *v84)
      {
        LOBYTE(v85) = 1;
      }

      if (v85)
      {
        return 0;
      }
    }

    v86 = v103[16];
    v87 = (a1 + v86);
    v88 = *(a1 + v86 + 8);
    v89 = (a2 + v86);
    v90 = *(a2 + v86 + 8);
    if (v88)
    {
      if (!v90)
      {
        return 0;
      }
    }

    else
    {
      if (*v87 != *v89)
      {
        LOBYTE(v90) = 1;
      }

      if (v90)
      {
        return 0;
      }
    }

    v91 = v103[17];
    v92 = *(a1 + v91);
    v93 = *(a2 + v91);
    if (v92 == 13)
    {
      if (v93 == 13)
      {
        return 1;
      }
    }

    else if (v93 != 13)
    {
      v109 = v92;
      v108 = v93;
      v94 = AssetSource.rawValue.getter();
      v96 = v95;
      if (v94 == AssetSource.rawValue.getter() && v96 == v97)
      {
      }

      else
      {
        v98 = sub_255750EB0();

        if ((v98 & 1) == 0)
        {
          return 0;
        }
      }

      return 1;
    }

    return 0;
  }

  return result;
}

unint64_t sub_25573E578()
{
  result = qword_27F7C0268;
  if (!qword_27F7C0268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7C0268);
  }

  return result;
}

unint64_t sub_25573E5CC()
{
  result = qword_27F7C02D8;
  if (!qword_27F7C02D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7C02D8);
  }

  return result;
}

uint64_t sub_25573E640(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GenericMapAssetMetadata(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_25573E6A4(uint64_t a1)
{
  *(a1 + 8) = sub_255671970(&qword_27F7C02C0, type metadata accessor for VisitAssetMetadata, &protocol conformance descriptor for VisitAssetMetadata);
  result = sub_255671970(&qword_27F7C02A8, type metadata accessor for VisitAssetMetadata, &protocol conformance descriptor for VisitAssetMetadata);
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_25573E770(uint64_t a1)
{
  *(a1 + 8) = sub_25573E7A0();
  result = sub_25573E7F4();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_25573E7A0()
{
  result = qword_27F7C02F0;
  if (!qword_27F7C02F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7C02F0);
  }

  return result;
}

unint64_t sub_25573E7F4()
{
  result = qword_27F7C02F8;
  if (!qword_27F7C02F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7C02F8);
  }

  return result;
}

uint64_t sub_25573E848(uint64_t a1)
{
  *(a1 + 8) = sub_255671970(&qword_27F7C0300, type metadata accessor for GenericMapAssetMetadata, "峭,P(");
  result = sub_255671970(&qword_27F7C0308, type metadata accessor for GenericMapAssetMetadata, &protocol conformance descriptor for GenericMapAssetMetadata);
  *(a1 + 16) = result;
  return result;
}

__n128 __swift_memcpy41_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

void sub_25573E908(uint64_t a1)
{
  sub_25566C09C(319, &qword_27F7C0338, type metadata accessor for VisitAssetMetadata);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

unint64_t sub_25573E9A4()
{
  result = qword_27F7C0340;
  if (!qword_27F7C0340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7C0340);
  }

  return result;
}

unint64_t sub_25573E9FC()
{
  result = qword_27F7C0348;
  if (!qword_27F7C0348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7C0348);
  }

  return result;
}

unint64_t sub_25573EA54()
{
  result = qword_27F7C0350;
  if (!qword_27F7C0350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7C0350);
  }

  return result;
}

unint64_t sub_25573EAAC()
{
  result = qword_27F7C0358;
  if (!qword_27F7C0358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7C0358);
  }

  return result;
}

unint64_t sub_25573EB04()
{
  result = qword_27F7C0360;
  if (!qword_27F7C0360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7C0360);
  }

  return result;
}

uint64_t sub_25573EB58(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6D614E6563616C70 && a2 == 0xE900000000000065;
  if (v4 || (sub_255750EB0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 2037672291 && a2 == 0xE400000000000000 || (sub_255750EB0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6C50664F65707974 && a2 == 0xEB00000000656361 || (sub_255750EB0() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6174537469736976 && a2 == 0xEE00656D69547472 || (sub_255750EB0() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x646E457469736976 && a2 == 0xEC000000656D6954 || (sub_255750EB0() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x4464657461657263 && a2 == 0xEB00000000657461 || (sub_255750EB0() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x656475746974616CLL && a2 == 0xE800000000000000 || (sub_255750EB0() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x64757469676E6F6CLL && a2 == 0xE900000000000065 || (sub_255750EB0() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x746144656C797473 && a2 == 0xE900000000000061 || (sub_255750EB0() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x446D65744970616DLL && a2 == 0xEB00000000617461 || (sub_255750EB0() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x6B726F577369 && a2 == 0xE600000000000000 || (sub_255750EB0() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x6E656469666E6F63 && a2 == 0xEF6C6576654C6563 || (sub_255750EB0() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0xD000000000000012 && 0x80000002557539E0 == a2 || (sub_255750EB0() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0x756F537465737361 && a2 == 0xEB00000000656372)
  {

    return 13;
  }

  else
  {
    v6 = sub_255750EB0();

    if (v6)
    {
      return 13;
    }

    else
    {
      return 14;
    }
  }
}

uint64_t sub_25573EFE4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6144737469736976 && a2 == 0xEA00000000006174;
  if (v4 || (sub_255750EB0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x72656D614370616DLL && a2 == 0xED00006174614461 || (sub_255750EB0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6D696C537369 && a2 == 0xE600000000000000 || (sub_255750EB0() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6E6F697369766572 && a2 == 0xE800000000000000)
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

uint64_t NSCoding<>.toData.getter()
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

uint64_t static NSCoding<>.create<A>(from:type:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_25573F8A0();
  result = sub_255750820();
  if (result)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEC88, &qword_255758F88);
    v6 = sub_255750C10();

    return v6;
  }

  return result;
}

uint64_t sub_25573F5DC()
{
  v0 = sub_25574F2C0();
  __swift_allocate_value_buffer(v0, qword_27F7C0390);
  v1 = __swift_project_value_buffer(v0, qword_27F7C0390);
  if (qword_27F7BD5B8 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_27F7C04B0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

unint64_t sub_25573F8A0()
{
  result = qword_27F7C03B0;
  if (!qword_27F7C03B0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F7C03B0);
  }

  return result;
}

uint64_t sub_25573F91C(unint64_t a1, uint64_t (*a2)(void))
{
  v8 = MEMORY[0x277D84F90];
  if (a1 >> 62)
  {
LABEL_15:
    sub_255750A30();
    sub_255750BD0();
    v4 = sub_255750A30();
    if (v4)
    {
      goto LABEL_3;
    }
  }

  else
  {
    sub_255750BD0();
    v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v4)
    {
LABEL_3:
      v5 = 0;
      do
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          MEMORY[0x259C3E830](v5, a1);
          v6 = v5 + 1;
          if (__OFADD__(v5, 1))
          {
LABEL_12:
            __break(1u);
LABEL_13:
            swift_unknownObjectRelease();

            return 0;
          }
        }

        else
        {
          if (v5 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_15;
          }

          swift_unknownObjectRetain();
          v6 = v5 + 1;
          if (__OFADD__(v5, 1))
          {
            goto LABEL_12;
          }
        }

        a2(0);
        if (!swift_dynamicCastClass())
        {
          goto LABEL_13;
        }

        sub_255750BB0();
        sub_255750BE0();
        sub_255750BF0();
        sub_255750BC0();
        ++v5;
      }

      while (v6 != v4);
    }
  }

  return v8;
}

uint64_t sub_25573FA94@<X0>(uint64_t a3@<X8>)
{
  sub_25574EB00();
  swift_allocObject();
  sub_25574EAF0();
  v4 = type metadata accessor for PhotoLibraryAssetMetadataDateOnly(0);
  sub_255748FF8(&qword_27F7C03F8, type metadata accessor for PhotoLibraryAssetMetadataDateOnly, &unk_25575BDE4);
  sub_25574EAE0();

  v5 = *(*(v4 - 8) + 56);

  return v5(a3, 0, 1, v4);
}

uint64_t sub_25573FCE8(uint64_t a1)
{
  sub_25574EB30();
  swift_allocObject();
  sub_25574EB20();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7C03E0, &qword_25575F3C0);
  sub_255748F3C();
  v1 = sub_25574EB10();

  return v1;
}

uint64_t sub_25573FF40()
{
  v0 = sub_25574F2C0();
  __swift_allocate_value_buffer(v0, qword_27F7C03B8);
  v1 = __swift_project_value_buffer(v0, qword_27F7C03B8);
  if (qword_27F7BD5B8 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_27F7C04B0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t JournalEntryMO.assetOrderingDictionary.getter()
{
  v1 = [v0 assetOrdering];
  v2 = MEMORY[0x277D84F98];
  if (v1)
  {
    v3 = v1;
    v4 = sub_25574EF90();
    v6 = v5;

    v7 = sub_25567A554(v4, v6);
    sub_2556755A8(v4, v6);
    if (v7)
    {
      return v7;
    }
  }

  return v2;
}

id sub_25574008C@<X0>(id *a1@<X0>, uint64_t *a2@<X8>)
{
  result = [*a1 assetOrdering];
  v4 = MEMORY[0x277D84F98];
  if (result)
  {
    v5 = result;
    v6 = sub_25574EF90();
    v8 = v7;

    v9 = sub_25567A554(v6, v8);
    result = sub_2556755A8(v6, v8);
    if (v9)
    {
      v4 = v9;
    }
  }

  *a2 = v4;
  return result;
}

void sub_25574011C(uint64_t *a1, void **a2)
{
  v2 = *a2;
  v3 = sub_25573FCE8(*a1);
  if (v4 >> 60 == 15)
  {
    v7 = 0;
    [v2 setAssetOrdering_];
  }

  else
  {
    v5 = v3;
    v6 = v4;
    v7 = sub_25574EF80();
    sub_2556A15B8(v5, v6);
    [v2 setAssetOrdering_];
  }
}

void JournalEntryMO.assetOrderingDictionary.setter(uint64_t a1)
{
  v2 = sub_25573FCE8(a1);
  v4 = v3;

  if (v4 >> 60 == 15)
  {
    v5 = 0;
    [v1 setAssetOrdering_];
  }

  else
  {
    v5 = sub_25574EF80();
    sub_2556A15B8(v2, v4);
    [v1 setAssetOrdering_];
  }
}

void (*JournalEntryMO.assetOrderingDictionary.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  a1[1] = v1;
  v3 = [v1 assetOrdering];
  v4 = MEMORY[0x277D84F98];
  if (v3)
  {
    v5 = v3;
    v6 = sub_25574EF90();
    v8 = v7;

    v9 = sub_25567A554(v6, v8);
    sub_2556755A8(v6, v8);
    if (v9)
    {
      v4 = v9;
    }
  }

  *a1 = v4;
  return sub_2557402F8;
}

void sub_2557402F8(uint64_t a1, char a2)
{
  v3 = *a1;
  if (a2)
  {

    v5 = sub_25573FCE8(v4);
    v7 = v6;

    if (v7 >> 60 == 15)
    {
      v11 = 0;
      [*(a1 + 8) setAssetOrdering_];
    }

    else
    {
      v11 = sub_25574EF80();
      sub_2556A15B8(v5, v7);
      [*(a1 + 8) setAssetOrdering_];
    }
  }

  else
  {
    v8 = sub_25573FCE8(v3);
    v10 = v9;

    if (v10 >> 60 == 15)
    {
      v11 = 0;
      [*(a1 + 8) setAssetOrdering_];
    }

    else
    {
      v11 = sub_25574EF80();
      sub_2556A15B8(v8, v10);
      [*(a1 + 8) setAssetOrdering_];
    }
  }
}

void MergeableEntryAssetsPlacement.assetPlacement(forAssetID:)(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v57 = a2;
  v4 = sub_25574F0D0();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v55 = &v47 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F7BFFD0, &unk_255757E80);
  MEMORY[0x28223BE20](v10);
  v12 = &v47 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F7BED20, &unk_2557551D0);
  v14 = MEMORY[0x28223BE20](v13 - 8);
  v56 = &v47 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v47 - v17;
  MEMORY[0x28223BE20](v16);
  v20 = &v47 - v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEA90, &unk_25575B390);
  if (sub_25574F700())
  {
    v21 = sub_25566CA68(a1);
    v22 = 0;
    v23 = 0;
    if (v24)
    {
      v25 = 0;
    }

    else
    {
      v25 = v21;
    }

    v26 = v57;
    goto LABEL_24;
  }

  v50 = v8;
  v51 = type metadata accessor for MergeableEntryAssetsPlacement(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEDB0, &unk_255759240);
  v52 = v2;
  sub_25574F360();
  v27 = *(v5 + 16);
  v53 = a1;
  v48 = v27;
  v49 = v5 + 16;
  v27(v18, a1, v4);
  (*(v5 + 56))(v18, 0, 1, v4);
  v28 = *(v10 + 48);
  sub_255663294(v20, v12, &unk_27F7BED20, &unk_2557551D0);
  sub_255663294(v18, &v12[v28], &unk_27F7BED20, &unk_2557551D0);
  v54 = v5;
  v29 = *(v5 + 48);
  if (v29(v12, 1, v4) == 1)
  {
    sub_255674B20(v18, &unk_27F7BED20, &unk_2557551D0);
    sub_255674B20(v20, &unk_27F7BED20, &unk_2557551D0);
    v30 = v29(&v12[v28], 1, v4);
    v26 = v57;
    if (v30 == 1)
    {
      sub_255674B20(v12, &unk_27F7BED20, &unk_2557551D0);
LABEL_17:
      v23 = 0;
      v22 = 1;
      v25 = 2;
      goto LABEL_24;
    }

    goto LABEL_11;
  }

  v31 = v56;
  sub_255663294(v12, v56, &unk_27F7BED20, &unk_2557551D0);
  if (v29(&v12[v28], 1, v4) == 1)
  {
    sub_255674B20(v18, &unk_27F7BED20, &unk_2557551D0);
    sub_255674B20(v20, &unk_27F7BED20, &unk_2557551D0);
    (*(v54 + 8))(v31, v4);
    v26 = v57;
LABEL_11:
    sub_255674B20(v12, &unk_27F7BFFD0, &unk_255757E80);
    goto LABEL_12;
  }

  v33 = v54;
  v34 = v55;
  (*(v54 + 32))(v55, &v12[v28], v4);
  sub_255748FF8(&qword_27F7BE0B8, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
  v35 = sub_255750100();
  v36 = *(v33 + 8);
  v36(v34, v4);
  sub_255674B20(v18, &unk_27F7BED20, &unk_2557551D0);
  sub_255674B20(v20, &unk_27F7BED20, &unk_2557551D0);
  v36(v31, v4);
  sub_255674B20(v12, &unk_27F7BED20, &unk_2557551D0);
  v26 = v57;
  if (v35)
  {
    goto LABEL_17;
  }

LABEL_12:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE0C8, &qword_255755C60);
  v32 = v53;
  if (sub_25574FCF0())
  {
    v23 = 0;
    v25 = 1;
    v22 = 1;
  }

  else if (sub_25574FCF0())
  {
    v25 = 0;
    v23 = 0;
    v22 = 1;
  }

  else
  {
    if (qword_27F7BD838 != -1)
    {
      swift_once();
    }

    v37 = sub_25574F2C0();
    __swift_project_value_buffer(v37, qword_27F7C03B8);
    v38 = v50;
    v48(v50, v32, v4);
    v39 = sub_25574F2A0();
    v40 = sub_255750780();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v58 = v42;
      *v41 = 136315138;
      sub_255748FF8(&qword_27F7BF200, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v43 = sub_255750E60();
      v45 = v44;
      (*(v54 + 8))(v38, v4);
      v46 = sub_2556E474C(v43, v45, &v58);

      *(v41 + 4) = v46;
      _os_log_impl(&dword_255661000, v39, v40, "Unknown placement for asset %s", v41, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v42);
      MEMORY[0x259C3F520](v42, -1, -1);
      MEMORY[0x259C3F520](v41, -1, -1);
    }

    else
    {

      (*(v54 + 8))(v38, v4);
    }

    v25 = 0;
    v22 = 0;
    v23 = 1;
  }

LABEL_24:
  *v26 = v25;
  *(v26 + 8) = v22;
  *(v26 + 9) = v23;
}

uint64_t JournalEntryMO.modifyLegacyAssetOrderingFields(from:)(void (**a1)(char *, char *, uint64_t))
{
  v2 = v1;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F7BFFD0, &unk_255757E80);
  MEMORY[0x28223BE20](v88);
  v5 = &v74 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F7BED20, &unk_2557551D0);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v9 = &v74 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v74 - v11;
  MEMORY[0x28223BE20](v10);
  v14 = &v74 - v13;
  v87 = sub_25574F0D0();
  v90 = *(v87 - 8);
  v15 = MEMORY[0x28223BE20](v87);
  v81 = &v74 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v86 = (&v74 - v18);
  MEMORY[0x28223BE20](v17);
  v85 = &v74 - v19;
  JournalEntryMO.assetsArrayUnsorted.getter();
  v93 = a1;

  v94 = sub_255678FD8(v20);
  sub_255678F28(sub_255749040, v92);

  v21 = v94;
  v22 = (v94 >> 62) & 1;
  if (v94 < 0)
  {
    LODWORD(v22) = 1;
  }

  v77 = v22;
  v79 = a1;
  if (v22 == 1)
  {
    goto LABEL_54;
  }

  for (i = *(v94 + 16); ; i = sub_255750A30())
  {
    v78 = v2;
    v91 = v21 & 0xC000000000000001;
    v83 = v9;
    v84 = (v90 + 1);
    v24 = &property descriptor for JournalMO.isUploadedToCloud;
    v89 = v21;
    if (!i)
    {
      break;
    }

    v76 = (v90 + 2);
    v25 = MEMORY[0x277D84F98];
    v26 = 0;
    while (1)
    {
      if (v91)
      {
        v27 = MEMORY[0x259C3E830](v26, v21);
      }

      else
      {
        if (v26 >= *(v21 + 16))
        {
          goto LABEL_53;
        }

        v27 = *(v21 + 8 * v26 + 32);
      }

      v9 = v27;
      v2 = (v26 + 1);
      if (__OFADD__(v26, 1))
      {
        break;
      }

      v28 = [v27 v24[125]];
      if (v28)
      {
        v29 = v12;
        v30 = v85;
        v31 = v28;
        sub_25574F080();

        v32 = v86;
        v75 = *v76;
        v75(v86, v30, v87);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v94 = v25;
        v34 = sub_25567AF04(v32);
        v36 = v25[2];
        v37 = (v35 & 1) == 0;
        v38 = __OFADD__(v36, v37);
        v39 = v36 + v37;
        if (v38)
        {
          goto LABEL_56;
        }

        v40 = v35;
        if (v25[3] >= v39)
        {
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v51 = v34;
            sub_2557436B8();
            v34 = v51;
          }
        }

        else
        {
          sub_255744F74(v39, isUniquelyReferenced_nonNull_native);
          v34 = sub_25567AF04(v86);
          if ((v40 & 1) != (v41 & 1))
          {
            goto LABEL_58;
          }
        }

        v12 = v29;
        v25 = v94;
        if (v40)
        {
          *(*(v94 + 56) + 8 * v34) = v26;

          v9 = v84;
          v42 = *v84;
          v43 = v87;
          (*v84)(v86, v87);
          v42(v85, v43);
        }

        else
        {
          *(v94 + 8 * (v34 >> 6) + 64) |= 1 << v34;
          v44 = v25[6] + v90[9] * v34;
          v74 = v34;
          v45 = v86;
          v46 = v87;
          v75(v44, v86, v87);
          *(v25[7] + 8 * v74) = v26;

          v47 = v90[1];
          v48 = v45;
          v29 = v84;
          v47(v48, v46);
          v47(v85, v46);
          v49 = v25[2];
          v38 = __OFADD__(v49, 1);
          v50 = v49 + 1;
          if (v38)
          {
            goto LABEL_57;
          }

          v25[2] = v50;
        }

        v21 = v89;
        v24 = &property descriptor for JournalMO.isUploadedToCloud;
        if (v2 == i)
        {
          goto LABEL_28;
        }

        v26 = v2;
      }

      else
      {

        ++v26;
        if (v2 == i)
        {
          goto LABEL_28;
        }
      }
    }

    __break(1u);
LABEL_53:
    __break(1u);
LABEL_54:
    ;
  }

  v25 = MEMORY[0x277D84F98];
LABEL_28:
  v52 = sub_25573FCE8(v25);
  v54 = v53;

  if (v54 >> 60 == 15)
  {
    v55 = 0;
  }

  else
  {
    v55 = sub_25574EF80();
    sub_2556A15B8(v52, v54);
  }

  v29 = v77;
  [v78 setAssetOrdering_];

  type metadata accessor for MergeableEntryAssetsPlacement(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEDB0, &unk_255759240);
  sub_25574F360();
  if (v29)
  {
    v56 = sub_255750A30();
    v57 = v87;
    if (!v56)
    {
      goto LABEL_51;
    }
  }

  else
  {
    v56 = *(v89 + 16);
    v57 = v87;
    if (!v56)
    {
LABEL_51:

      return sub_255674B20(v14, &unk_27F7BED20, &unk_2557551D0);
    }
  }

  if (v56 >= 1)
  {
    v58 = 0;
    v86 = (v90 + 7);
    v87 = v56;
    v79 = (v90 + 4);
    v80 = v5;
    v82 = v14;
    v85 = (v90 + 6);
    while (1)
    {
      if (v91)
      {
        v66 = MEMORY[0x259C3E830](v58, v89);
      }

      else
      {
        v66 = *(v89 + 8 * v58 + 32);
      }

      v90 = v66;
      v67 = [v66 id];
      if (v67)
      {
        v68 = v67;
        sub_25574F080();

        v69 = 0;
      }

      else
      {
        v69 = 1;
      }

      (*v86)(v12, v69, 1, v57);
      v70 = *(v88 + 48);
      sub_255663294(v12, v5, &unk_27F7BED20, &unk_2557551D0);
      sub_255663294(v14, &v5[v70], &unk_27F7BED20, &unk_2557551D0);
      v71 = *v85;
      if ((*v85)(v5, 1, v57) == 1)
      {
        sub_255674B20(v12, &unk_27F7BED20, &unk_2557551D0);
        if (v71(&v5[v70], 1, v57) != 1)
        {
          goto LABEL_50;
        }

        sub_255674B20(v5, &unk_27F7BED20, &unk_2557551D0);
        v61 = 1;
      }

      else
      {
        v72 = v83;
        sub_255663294(v5, v83, &unk_27F7BED20, &unk_2557551D0);
        if (v71(&v5[v70], 1, v57) == 1)
        {
          sub_255674B20(v12, &unk_27F7BED20, &unk_2557551D0);
          (*v84)(v72, v57);
          v14 = v82;
LABEL_50:
          sub_255674B20(v5, &unk_27F7BFFD0, &unk_255757E80);
          v61 = 0;
          goto LABEL_38;
        }

        v59 = &v5[v70];
        v60 = v81;
        (*v79)(v81, v59, v57);
        sub_255748FF8(&qword_27F7BE0B8, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
        v61 = sub_255750100();
        v62 = *v84;
        v63 = v60;
        v5 = v80;
        (*v84)(v63, v57);
        sub_255674B20(v12, &unk_27F7BED20, &unk_2557551D0);
        v62(v72, v57);
        sub_255674B20(v5, &unk_27F7BED20, &unk_2557551D0);
        v14 = v82;
      }

LABEL_38:
      ++v58;
      v64 = v61 & 1;
      v65 = v90;
      [v90 setIsSlim_];

      if (v87 == v58)
      {
        goto LABEL_51;
      }
    }
  }

  __break(1u);
LABEL_56:
  __break(1u);
LABEL_57:
  __break(1u);
LABEL_58:
  sub_255750F10();
  __break(1u);

  __break(1u);
  return result;
}

void MergeableEntryAssetsPlacement.addOrMoveAsset(withID:to:from:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_25574F0D0();
  v34 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F7BED20, &unk_2557551D0);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v30 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = &v28 - v12;
  v14 = *a2;
  v15 = *a2;
  v16 = *(a2 + 8);
  v31 = *a3;
  LODWORD(a2) = *(a3 + 8);
  v32 = *(a3 + 9);
  v33 = a2;
  if (v16 == 1)
  {
    v29 = v6;
    if (v15)
    {
      if (v14 == 1)
      {
        type metadata accessor for MergeableEntryAssetsPlacement(0);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE0C8, &qword_255755C60);
        sub_25574FC60();
        (v34[1].isa)(v8, v6);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEA90, &unk_25575B390);
        sub_25574F6D0();
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEA90, &unk_25575B390);
        sub_25574F6D0();
        sub_255674B20(v13, &unk_27F7BED20, &unk_2557551D0);
        v22 = v34;
        (v34[2].isa)(v13, a1, v6);
        (v22[7].isa)(v13, 0, 1, v6);
        sub_255663294(v13, v30, &unk_27F7BED20, &unk_2557551D0);
        type metadata accessor for MergeableEntryAssetsPlacement(0);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEDB0, &unk_255759240);
        sub_25574F370();
        sub_255674B20(v13, &unk_27F7BED20, &unk_2557551D0);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE0C8, &qword_255755C60);
        sub_25574FC70();
      }

      sub_255674B20(v13, &unk_27F7BED20, &unk_2557551D0);
      sub_25574FC70();
      v17 = v13;
      goto LABEL_17;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEA90, &unk_25575B390);
    sub_25574F6D0();
    sub_255674B20(v13, &unk_27F7BED20, &unk_2557551D0);
    type metadata accessor for MergeableEntryAssetsPlacement(0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE0C8, &qword_255755C60);
    sub_25574FC70();
    sub_255674B20(v13, &unk_27F7BED20, &unk_2557551D0);
    sub_25574FC60();
    (v34[1].isa)(v8, v6);
LABEL_18:
    if (v14 > 1)
    {
      v23 = v16;
    }

    else
    {
      v23 = 0;
    }

    if (!(v32 & 1 | ((v33 & 1) == 0)) && v31 >= 2 && (v23 & 1) == 0)
    {
      (v34[7].isa)(v13, 1, 1, v29);
      sub_255663294(v13, v30, &unk_27F7BED20, &unk_2557551D0);
      type metadata accessor for MergeableEntryAssetsPlacement(0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEDB0, &unk_255759240);
      sub_25574F370();
      sub_255674B20(v13, &unk_27F7BED20, &unk_2557551D0);
    }

    return;
  }

  v18 = sub_25566CA68(a1);
  if (v19)
  {
    v29 = v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEA90, &unk_25575B390);
    sub_25574F670();
    sub_25574F6C0();
    type metadata accessor for MergeableEntryAssetsPlacement(0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE0C8, &qword_255755C60);
    sub_25574FC70();
    sub_255674B20(v13, &unk_27F7BED20, &unk_2557551D0);
    sub_25574FC70();
    v17 = v13;
LABEL_17:
    sub_255674B20(v17, &unk_27F7BED20, &unk_2557551D0);
    goto LABEL_18;
  }

  v20 = v18;
  if (v18 < v14)
  {
    v15 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      __break(1u);
LABEL_33:
      swift_once();
      goto LABEL_27;
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEA90, &unk_25575B390);
  v21 = sub_25574F670();
  a1 = v21;
  if ((v20 & 0x8000000000000000) == 0 && v20 < v21 && (v15 & 0x8000000000000000) == 0 && v21 >= v15)
  {
    v29 = v6;
    sub_25574F650();
    goto LABEL_18;
  }

  if (qword_27F7BD838 != -1)
  {
    goto LABEL_33;
  }

LABEL_27:
  v24 = sub_25574F2C0();
  __swift_project_value_buffer(v24, qword_27F7C03B8);
  v34 = sub_25574F2A0();
  v25 = sub_255750780();
  if (os_log_type_enabled(v34, v25))
  {
    v26 = swift_slowAlloc();
    *v26 = 134218496;
    *(v26 + 4) = v20;
    *(v26 + 12) = 2048;
    *(v26 + 14) = v15;
    *(v26 + 22) = 2048;
    *(v26 + 24) = a1;
    _os_log_impl(&dword_255661000, v34, v25, "Skipping addOrMoveAsset - from: %ld or to: %ld is out of range (gridAssetIDs.count: %ld).", v26, 0x20u);
    MEMORY[0x259C3F520](v26, -1, -1);
  }

  v27 = v34;
}

BOOL static AssetPlacement.== infix(_:_:)(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*(a1 + 8) == 1)
  {
    if (v2)
    {
      if (v2 == 1)
      {
        if (v3 == 1)
        {
          v4 = *(a2 + 8);
        }

        else
        {
          v4 = 0;
        }

        if (v4)
        {
          return 1;
        }
      }

      else
      {
        if (v3 > 1)
        {
          v7 = *(a2 + 8);
        }

        else
        {
          v7 = 0;
        }

        if (v7)
        {
          return 1;
        }
      }
    }

    else
    {
      if (v3)
      {
        LOBYTE(v6) = 0;
      }

      else
      {
        v6 = *(a2 + 8);
      }

      if (v6)
      {
        return 1;
      }
    }
  }

  else if ((*(a2 + 8) & 1) == 0)
  {
    return v2 == v3;
  }

  return 0;
}

uint64_t MergeableEntryAssetsPlacement.removeAsset(withID:)(uint64_t a1)
{
  v3 = sub_25574F0D0();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v37 = &v35[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F7BFFD0, &unk_255757E80);
  v7 = v6 - 8;
  MEMORY[0x28223BE20](v6);
  v9 = &v35[-v8];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F7BED20, &unk_2557551D0);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v42 = &v35[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = MEMORY[0x28223BE20](v11);
  v43 = &v35[-v14];
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v35[-v16];
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v35[-v19];
  MEMORY[0x28223BE20](v18);
  v22 = &v35[-v21];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEA90, &unk_25575B390);
  sub_25574F6D0();
  sub_255674B20(v22, &unk_27F7BED20, &unk_2557551D0);
  v23 = v4[2];
  v46 = a1;
  v23(v20, a1, v3);
  v40 = v4[7];
  v41 = v4 + 7;
  v40(v20, 0, 1, v3);
  v44 = type metadata accessor for MergeableEntryAssetsPlacement(0);
  v24 = *(v44 + 20);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEDB0, &unk_255759240);
  v45 = v1;
  v38 = v25;
  v39 = v24;
  sub_25574F360();
  v26 = *(v7 + 56);
  sub_255663294(v20, v9, &unk_27F7BED20, &unk_2557551D0);
  sub_255663294(v17, &v9[v26], &unk_27F7BED20, &unk_2557551D0);
  v27 = v4;
  v28 = v4[6];
  if (v28(v9, 1, v3) == 1)
  {
    sub_255674B20(v17, &unk_27F7BED20, &unk_2557551D0);
    sub_255674B20(v20, &unk_27F7BED20, &unk_2557551D0);
    if (v28(&v9[v26], 1, v3) == 1)
    {
      sub_255674B20(v9, &unk_27F7BED20, &unk_2557551D0);
LABEL_8:
      v40(v22, 1, 1, v3);
      sub_255663294(v22, v42, &unk_27F7BED20, &unk_2557551D0);
      sub_25574F370();
      sub_255674B20(v22, &unk_27F7BED20, &unk_2557551D0);
      goto LABEL_9;
    }

    goto LABEL_6;
  }

  sub_255663294(v9, v43, &unk_27F7BED20, &unk_2557551D0);
  if (v28(&v9[v26], 1, v3) == 1)
  {
    sub_255674B20(v17, &unk_27F7BED20, &unk_2557551D0);
    sub_255674B20(v20, &unk_27F7BED20, &unk_2557551D0);
    (v27[1])(v43, v3);
LABEL_6:
    sub_255674B20(v9, &unk_27F7BFFD0, &unk_255757E80);
    goto LABEL_9;
  }

  v29 = v27;
  v30 = &v9[v26];
  v31 = v37;
  (v27[4])(v37, v30, v3);
  sub_255748FF8(&qword_27F7BE0B8, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
  v32 = v43;
  v36 = sub_255750100();
  v33 = v29[1];
  v33(v31, v3);
  sub_255674B20(v17, &unk_27F7BED20, &unk_2557551D0);
  sub_255674B20(v20, &unk_27F7BED20, &unk_2557551D0);
  v33(v32, v3);
  sub_255674B20(v9, &unk_27F7BED20, &unk_2557551D0);
  if (v36)
  {
    goto LABEL_8;
  }

LABEL_9:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE0C8, &qword_255755C60);
  sub_25574FC70();
  sub_255674B20(v22, &unk_27F7BED20, &unk_2557551D0);
  sub_25574FC70();
  return sub_255674B20(v22, &unk_27F7BED20, &unk_2557551D0);
}

uint64_t static AssetPlacement.maxGridCount.setter(uint64_t a1)
{
  result = swift_beginAccess();
  qword_27F7C03D0 = a1;
  return result;
}

uint64_t AssetPlacement.init(_:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (result == -1)
  {
    result = 0;
    v2 = 1;
  }

  else if (result == -2)
  {
    result = 1;
    v2 = 1;
  }

  else if (result < 0)
  {
    v3 = a2;
    swift_beginAccess();
    a2 = v3;
    v2 = 0;
    result = qword_27F7C03D0;
  }

  else
  {
    v2 = 0;
  }

  *a2 = result;
  *(a2 + 8) = v2;
  return result;
}

uint64_t sub_255742368(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = (*a1 == *a2) & ~v4;
  if (*a2)
  {
    v6 = 0;
  }

  else
  {
    v6 = *(a2 + 8);
  }

  v7 = v3 > 1;
  if (v3 == 1)
  {
    v8 = *(a2 + 8);
  }

  else
  {
    v8 = 0;
  }

  if (!v7)
  {
    v4 = 0;
  }

  if (v2 != 1)
  {
    v8 = v4;
  }

  if (v2)
  {
    v9 = v8;
  }

  else
  {
    v9 = v6;
  }

  if (*(a1 + 8) == 1)
  {
    return v9;
  }

  else
  {
    return v5;
  }
}

uint64_t sub_2557423B4(uint64_t a1)
{
  sub_255750B00();

  strcpy(v5, "CROrderedSet<[");
  sub_25574F620();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE728, &qword_255757898);
  sub_255669798(&qword_27F7BE730, &qword_27F7BE728, &qword_255757898, MEMORY[0x277D83958]);
  v1 = sub_2557500C0();
  v3 = v2;

  MEMORY[0x259C3DED0](v1, v3);

  MEMORY[0x259C3DED0](15965, 0xE200000000000000);
  return v5[0];
}

void *sub_25574250C(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE0A0, &qword_255756FE0);
  v4 = *(sub_25574F0D0() - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v7);
  if (v5)
  {
    if ((result - v6) != 0x8000000000000000 || v5 != -1)
    {
      v7[2] = a1;
      v7[3] = 2 * ((result - v6) / v5);
      return v7;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_255742608(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F7C0010, "*}");
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = (2 * (v9 >> 3)) | 1;
  return result;
}

void *sub_255742690(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE4A0, &qword_255756FE8);
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE4A8, &unk_255756FF0) - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v7);
  if (v5)
  {
    if ((result - v6) != 0x8000000000000000 || v5 != -1)
    {
      v7[2] = a1;
      v7[3] = 2 * ((result - v6) / v5);
      return v7;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_255742798(uint64_t a1)
{
  v2 = sub_255750F70();

  return sub_2557453FC(a1, v2);
}

char *sub_2557427DC()
{
  v1 = v0;
  v35 = sub_25574FDB0();
  v37 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v34 = &v29 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BDEF0, &qword_2557552D0);
  v3 = *v0;
  v4 = sub_255750C70();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 64);
    v7 = (v3 + 64);
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    v30 = v1;
    v31 = v3 + 64;
    if (v5 != v3 || result >= &v7[8 * v8])
    {
      result = memmove(result, v7, 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v36 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v32 = v37 + 32;
    v33 = v37 + 16;
    if (v13)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v38 = (v13 - 1) & v13;
LABEL_14:
        v18 = v15 | (v9 << 6);
        v19 = 16 * v18;
        v20 = (*(v3 + 48) + 16 * v18);
        v21 = *v20;
        v22 = v20[1];
        v23 = v37;
        v24 = *(v37 + 72) * v18;
        v25 = v34;
        v26 = v35;
        (*(v37 + 16))(v34, *(v3 + 56) + v24, v35);
        v27 = v36;
        v28 = (*(v36 + 48) + v19);
        *v28 = v21;
        v28[1] = v22;
        (*(v23 + 32))(*(v27 + 56) + v24, v25, v26);

        v13 = v38;
      }

      while (v38);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v1 = v30;
        v5 = v36;
        goto LABEL_18;
      }

      v17 = *(v31 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v38 = (v17 - 1) & v17;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v5;
  }

  return result;
}

id sub_255742A5C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7C0430, &qword_25575F3E8);
  v2 = *v0;
  v3 = sub_255750C70();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        v19 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        *(*(v4 + 56) + 8 * v17) = v19;
        v20 = v18;
        result = v19;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_255742BBC()
{
  v1 = v0;
  v29 = sub_25574F320();
  v31 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v28 = &v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE400, &qword_255756A50);
  v3 = *v0;
  v4 = sub_255750C70();
  v5 = v4;
  if (*(v3 + 16))
  {
    v24 = v1;
    result = (v4 + 64);
    v7 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || result >= v3 + 64 + 8 * v7)
    {
      result = memmove(result, (v3 + 64), 8 * v7);
    }

    v8 = 0;
    v9 = *(v3 + 16);
    v30 = v5;
    *(v5 + 16) = v9;
    v10 = 1 << *(v3 + 32);
    v11 = -1;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    v12 = v11 & *(v3 + 64);
    v13 = (v10 + 63) >> 6;
    v27 = v31 + 16;
    v25 = v3 + 64;
    for (i = v31 + 32; v12; result = (*(v19 + 32))(*(v23 + 56) + v20, v22, v21))
    {
      v14 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_14:
      v17 = v14 | (v8 << 6);
      v18 = *(*(v3 + 48) + 8 * v17);
      v19 = v31;
      v20 = *(v31 + 72) * v17;
      v22 = v28;
      v21 = v29;
      (*(v31 + 16))(v28, *(v3 + 56) + v20, v29);
      v23 = v30;
      *(*(v30 + 48) + 8 * v17) = v18;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {

        v1 = v24;
        v5 = v30;
        goto LABEL_18;
      }

      v16 = *(v25 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v5;
  }

  return result;
}

char *sub_255742E24()
{
  v1 = v0;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE180, &unk_255755E10);
  v44 = *(v41 - 8);
  MEMORY[0x28223BE20](v41);
  v40 = &v30 - v2;
  v39 = sub_25574F0D0();
  v43 = *(v39 - 8);
  MEMORY[0x28223BE20](v39);
  v38 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7C0418, &qword_25575F3D8);
  v4 = *v0;
  v5 = sub_255750C70();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = (v4 + 64);
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    v30 = v1;
    v31 = v4 + 64;
    if (v6 != v4 || result >= &v8[8 * v9])
    {
      result = memmove(result, v8, 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v42 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v4 + 64);
    v15 = (v12 + 63) >> 6;
    v35 = v43 + 16;
    v36 = v15;
    v33 = v43 + 32;
    v34 = v44 + 16;
    v32 = v44 + 32;
    v37 = v4;
    v17 = v38;
    v16 = v39;
    if (v14)
    {
      do
      {
        v18 = __clz(__rbit64(v14));
        v45 = (v14 - 1) & v14;
LABEL_14:
        v21 = v18 | (v10 << 6);
        v22 = v43;
        v23 = *(v43 + 72) * v21;
        (*(v43 + 16))(v17, *(v4 + 48) + v23, v16);
        v24 = v44;
        v25 = *(v44 + 72) * v21;
        v26 = v40;
        v27 = v41;
        (*(v44 + 16))(v40, *(v4 + 56) + v25, v41);
        v28 = v42;
        (*(v22 + 32))(*(v42 + 48) + v23, v17, v16);
        v29 = *(v28 + 56);
        v4 = v37;
        result = (*(v24 + 32))(v29 + v25, v26, v27);
        v15 = v36;
        v14 = v45;
      }

      while (v45);
    }

    v19 = v10;
    while (1)
    {
      v10 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v10 >= v15)
      {

        v1 = v30;
        v6 = v42;
        goto LABEL_18;
      }

      v20 = *(v31 + 8 * v10);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v45 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }

  return result;
}

char *sub_255743180()
{
  v1 = v0;
  v31 = sub_25574F0D0();
  v33 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v30 = &v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEB28, &qword_255758B58);
  v3 = *v0;
  v4 = sub_255750C70();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 64);
    v7 = (v3 + 64);
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    v26 = v1;
    v27 = v3 + 64;
    if (v5 != v3 || result >= &v7[8 * v8])
    {
      result = memmove(result, v7, 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v32 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v28 = v33 + 32;
    v29 = v33 + 16;
    if (v13)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v34 = (v13 - 1) & v13;
LABEL_14:
        v18 = v15 | (v9 << 6);
        v19 = v33;
        v20 = *(v33 + 72) * v18;
        v22 = v30;
        v21 = v31;
        (*(v33 + 16))(v30, *(v3 + 48) + v20, v31);
        v23 = *(*(v3 + 56) + 4 * v18);
        v24 = v32;
        result = (*(v19 + 32))(*(v32 + 48) + v20, v22, v21);
        *(*(v24 + 56) + 4 * v18) = v23;
        v13 = v34;
      }

      while (v34);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v1 = v26;
        v5 = v32;
        goto LABEL_18;
      }

      v17 = *(v27 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v34 = (v17 - 1) & v17;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v5;
  }

  return result;
}

char *sub_2557433F0()
{
  v1 = v0;
  v34 = sub_25574F0D0();
  v38 = *(v34 - 8);
  v2 = MEMORY[0x28223BE20](v34);
  v36 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v35 = &v30 - v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7C03F0, &qword_25575F3C8);
  v5 = *v0;
  v6 = sub_255750C70();
  v7 = v6;
  if (*(v5 + 16))
  {
    result = (v6 + 64);
    v9 = (v5 + 64);
    v10 = ((1 << *(v7 + 32)) + 63) >> 6;
    v30 = v1;
    v31 = v5 + 64;
    if (v7 != v5 || result >= &v9[8 * v10])
    {
      result = memmove(result, v9, 8 * v10);
    }

    v11 = 0;
    v12 = *(v5 + 16);
    v37 = v7;
    *(v7 + 16) = v12;
    v13 = 1 << *(v5 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v5 + 64);
    v16 = (v13 + 63) >> 6;
    v32 = v38 + 32;
    v33 = v38 + 16;
    if (v15)
    {
      do
      {
        v17 = __clz(__rbit64(v15));
        v39 = (v15 - 1) & v15;
LABEL_14:
        v20 = v38;
        v21 = *(v38 + 72) * (v17 | (v11 << 6));
        v22 = *(v38 + 16);
        v24 = v34;
        v23 = v35;
        v22(v35, *(v5 + 48) + v21, v34);
        v25 = v36;
        v22(v36, *(v5 + 56) + v21, v24);
        v26 = v5;
        v27 = v37;
        v28 = *(v20 + 32);
        v28(*(v37 + 48) + v21, v23, v24);
        v29 = *(v27 + 56);
        v5 = v26;
        result = (v28)(v29 + v21, v25, v24);
        v15 = v39;
      }

      while (v39);
    }

    v18 = v11;
    while (1)
    {
      v11 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v11 >= v16)
      {

        v1 = v30;
        v7 = v37;
        goto LABEL_18;
      }

      v19 = *(v31 + 8 * v11);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v39 = (v19 - 1) & v19;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v7;
  }

  return result;
}

char *sub_2557436B8()
{
  v1 = v0;
  v31 = sub_25574F0D0();
  v33 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v30 = &v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7C03D8, &qword_25575F3B8);
  v3 = *v0;
  v4 = sub_255750C70();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 64);
    v7 = (v3 + 64);
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    v26 = v1;
    v27 = v3 + 64;
    if (v5 != v3 || result >= &v7[8 * v8])
    {
      result = memmove(result, v7, 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v32 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v28 = v33 + 32;
    v29 = v33 + 16;
    if (v13)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v34 = (v13 - 1) & v13;
LABEL_14:
        v18 = v15 | (v9 << 6);
        v19 = v33;
        v20 = *(v33 + 72) * v18;
        v22 = v30;
        v21 = v31;
        (*(v33 + 16))(v30, *(v3 + 48) + v20, v31);
        v23 = *(*(v3 + 56) + 8 * v18);
        v24 = v32;
        result = (*(v19 + 32))(*(v32 + 48) + v20, v22, v21);
        *(*(v24 + 56) + 8 * v18) = v23;
        v13 = v34;
      }

      while (v34);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v1 = v26;
        v5 = v32;
        goto LABEL_18;
      }

      v17 = *(v27 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v34 = (v17 - 1) & v17;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v5;
  }

  return result;
}

uint64_t sub_255743928(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v45 = sub_25574FDB0();
  v5 = *(v45 - 8);
  MEMORY[0x28223BE20](v45);
  v44 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BDEF0, &qword_2557552D0);
  v42 = v4;
  result = sub_255750C80();
  v9 = result;
  if (*(v7 + 16))
  {
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v38 = v2;
    v39 = (v5 + 16);
    v40 = v7;
    v41 = v5;
    v43 = (v5 + 32);
    v16 = result + 64;
    while (v14)
    {
      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v22 = v19 | (v10 << 6);
      v23 = *(v7 + 56);
      v24 = (*(v7 + 48) + 16 * v22);
      v26 = *v24;
      v25 = v24[1];
      v27 = *(v41 + 72);
      v28 = v23 + v27 * v22;
      if (v42)
      {
        (*v43)(v44, v28, v45);
      }

      else
      {
        (*v39)(v44, v28, v45);
      }

      sub_255750F80();
      sub_2557501F0();
      result = sub_255750FD0();
      v29 = -1 << *(v9 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v16 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v16 + 8 * v31);
          if (v35 != -1)
          {
            v17 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v30) & ~*(v16 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v18 = (*(v9 + 48) + 16 * v17);
      *v18 = v26;
      v18[1] = v25;
      result = (*v43)(*(v9 + 56) + v27 * v17, v44, v45);
      ++*(v9 + 16);
      v7 = v40;
    }

    v20 = v10;
    while (1)
    {
      v10 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v10 >= v15)
      {
        break;
      }

      v21 = v11[v10];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v14 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v42 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_34;
    }

    v36 = 1 << *(v7 + 32);
    v3 = v38;
    if (v36 >= 64)
    {
      bzero(v11, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v36;
    }

    *(v7 + 16) = 0;
  }

LABEL_34:
  *v3 = v9;
  return result;
}

uint64_t sub_255743CA8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7C0430, &qword_25575F3E8);
  v36 = v4;
  result = sub_255750C80();
  v7 = result;
  if (*(v5 + 16))
  {
    v34 = v2;
    v35 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v37 = (v12 - 1) & v12;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(v5 + 56);
      v21 = *(*(v5 + 48) + 8 * v19);
      v22 = *(v20 + 8 * v19);
      if ((v36 & 1) == 0)
      {
        v23 = v21;
        v24 = v22;
      }

      sub_2557501B0();
      sub_255750F80();
      sub_2557501F0();
      v25 = sub_255750FD0();

      v26 = -1 << *(v7 + 32);
      v27 = v25 & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v21;
      *(*(v7 + 56) + 8 * v15) = v22;
      ++*(v7 + 16);
      v5 = v35;
      v12 = v37;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v37 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v36 & 1) == 0)
    {

      v3 = v34;
      goto LABEL_33;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v34;
    if (v33 >= 64)
    {
      bzero(v9, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_255743F6C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v39 = sub_25574F320();
  v5 = *(v39 - 8);
  MEMORY[0x28223BE20](v39);
  v38 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE400, &qword_255756A50);
  v37 = v4;
  result = sub_255750C80();
  v9 = result;
  if (*(v7 + 16))
  {
    v34 = v3;
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v35 = (v5 + 16);
    v36 = v5;
    v16 = (v5 + 32);
    v17 = result + 64;
    while (v14)
    {
      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v22 = v19 | (v10 << 6);
      v23 = *(*(v7 + 48) + 8 * v22);
      v24 = *(v5 + 72);
      v25 = *(v7 + 56) + v24 * v22;
      if (v37)
      {
        (*v16)(v38, v25, v39);
      }

      else
      {
        (*v35)(v38, v25, v39);
      }

      result = sub_255750F70();
      v26 = -1 << *(v9 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v17 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v17 + 8 * v28);
          if (v32 != -1)
          {
            v18 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v27) & ~*(v17 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      *(*(v9 + 48) + 8 * v18) = v23;
      result = (*v16)(*(v9 + 56) + v24 * v18, v38, v39);
      ++*(v9 + 16);
      v5 = v36;
    }

    v20 = v10;
    while (1)
    {
      v10 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v10 >= v15)
      {
        break;
      }

      v21 = v11[v10];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v14 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v37 & 1) == 0)
    {

      v3 = v34;
      goto LABEL_34;
    }

    v33 = 1 << *(v7 + 32);
    v3 = v34;
    if (v33 >= 64)
    {
      bzero((v7 + 64), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v33;
    }

    *(v7 + 16) = 0;
  }

LABEL_34:
  *v3 = v9;
  return result;
}

uint64_t sub_2557442B8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE180, &unk_255755E10);
  v5 = *(v52 - 8);
  MEMORY[0x28223BE20](v52);
  v51 = &v40 - v6;
  v7 = sub_25574F0D0();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v53 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7C0418, &qword_25575F3D8);
  v47 = v4;
  result = sub_255750C80();
  v12 = result;
  if (*(v10 + 16))
  {
    v13 = 0;
    v14 = v8;
    v15 = (v10 + 64);
    v16 = 1 << *(v10 + 32);
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    else
    {
      v17 = -1;
    }

    v18 = v17 & *(v10 + 64);
    v19 = (v16 + 63) >> 6;
    v43 = (v14 + 16);
    v44 = v14;
    v41 = v2;
    v42 = v5 + 16;
    v45 = v10;
    v46 = v5;
    v48 = (v5 + 32);
    v49 = (v14 + 32);
    v20 = result + 64;
    v21 = v14;
    while (v18)
    {
      v23 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
LABEL_15:
      v26 = v23 | (v13 << 6);
      v27 = *(v10 + 48);
      v50 = *(v21 + 72);
      v28 = v27 + v50 * v26;
      if (v47)
      {
        (*v49)(v53, v28, v7);
        v29 = *(v10 + 56);
        v30 = *(v46 + 72);
        (*(v46 + 32))(v51, v29 + v30 * v26, v52);
      }

      else
      {
        (*v43)(v53, v28, v7);
        v31 = *(v10 + 56);
        v30 = *(v46 + 72);
        (*(v46 + 16))(v51, v31 + v30 * v26, v52);
      }

      sub_255748FF8(&qword_27F7BE0B0, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
      result = sub_255750090();
      v32 = -1 << *(v12 + 32);
      v33 = result & ~v32;
      v34 = v33 >> 6;
      if (((-1 << v33) & ~*(v20 + 8 * (v33 >> 6))) == 0)
      {
        v35 = 0;
        v36 = (63 - v32) >> 6;
        while (++v34 != v36 || (v35 & 1) == 0)
        {
          v37 = v34 == v36;
          if (v34 == v36)
          {
            v34 = 0;
          }

          v35 |= v37;
          v38 = *(v20 + 8 * v34);
          if (v38 != -1)
          {
            v22 = __clz(__rbit64(~v38)) + (v34 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v22 = __clz(__rbit64((-1 << v33) & ~*(v20 + 8 * (v33 >> 6)))) | v33 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v20 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      (*v49)((*(v12 + 48) + v50 * v22), v53, v7);
      result = (*v48)(*(v12 + 56) + v30 * v22, v51, v52);
      ++*(v12 + 16);
      v21 = v44;
      v10 = v45;
    }

    v24 = v13;
    while (1)
    {
      v13 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v13 >= v19)
      {
        break;
      }

      v25 = v15[v13];
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v18 = (v25 - 1) & v25;
        goto LABEL_15;
      }
    }

    if ((v47 & 1) == 0)
    {

      v3 = v41;
      goto LABEL_34;
    }

    v39 = 1 << *(v10 + 32);
    v3 = v41;
    if (v39 >= 64)
    {
      bzero(v15, ((v39 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v15 = -1 << v39;
    }

    *(v10 + 16) = 0;
  }

LABEL_34:
  *v3 = v12;
  return result;
}

uint64_t sub_255744768(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = sub_25574F0D0();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEB28, &qword_255758B58);
  v40 = v4;
  result = sub_255750C80();
  v11 = result;
  if (*(v9 + 16))
  {
    v43 = v8;
    v36 = v2;
    v12 = 0;
    v13 = (v9 + 64);
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v9 + 64);
    v17 = (v14 + 63) >> 6;
    v37 = (v6 + 16);
    v38 = v6;
    v41 = (v6 + 32);
    v18 = result + 64;
    v39 = v9;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v21 = (v16 - 1) & v16;
LABEL_15:
      v24 = v20 | (v12 << 6);
      v42 = v21;
      v25 = *(v6 + 72);
      v26 = *(v9 + 48) + v25 * v24;
      if (v40)
      {
        (*v41)(v43, v26, v5);
      }

      else
      {
        (*v37)(v43, v26, v5);
      }

      v27 = *(*(v9 + 56) + 4 * v24);
      sub_255748FF8(&qword_27F7BE0B0, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
      result = sub_255750090();
      v28 = -1 << *(v11 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v18 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v18 + 8 * v30);
          if (v34 != -1)
          {
            v19 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v29) & ~*(v18 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = (*v41)(*(v11 + 48) + v25 * v19, v43, v5);
      *(*(v11 + 56) + 4 * v19) = v27;
      ++*(v11 + 16);
      v6 = v38;
      v9 = v39;
      v16 = v42;
    }

    v22 = v12;
    while (1)
    {
      v12 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v23 = v13[v12];
      ++v22;
      if (v23)
      {
        v20 = __clz(__rbit64(v23));
        v21 = (v23 - 1) & v23;
        goto LABEL_15;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_34;
    }

    v35 = 1 << *(v9 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero(v13, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v35;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
  return result;
}

uint64_t sub_255744B28(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = sub_25574F0D0();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v49 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v44 = &v39 - v9;
  v10 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7C03F0, &qword_25575F3C8);
  v45 = v4;
  result = sub_255750C80();
  v50 = result;
  if (*(v10 + 16))
  {
    v40 = v2;
    v12 = 0;
    v13 = (v10 + 64);
    v14 = 1 << *(v10 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v10 + 64);
    v17 = (v14 + 63) >> 6;
    v41 = (v6 + 16);
    v42 = v10;
    v43 = v6;
    v46 = (v6 + 32);
    v18 = v50 + 64;
    while (v16)
    {
      v23 = __clz(__rbit64(v16));
      v48 = (v16 - 1) & v16;
LABEL_15:
      v26 = *(v10 + 48);
      v47 = *(v43 + 72);
      v27 = v47 * (v23 | (v12 << 6));
      if (v45)
      {
        v28 = *v46;
        v29 = v44;
        (*v46)(v44, v26 + v27, v5);
      }

      else
      {
        v28 = *v41;
        v29 = v44;
        (*v41)(v44, v26 + v27, v5);
      }

      v28(v49, *(v10 + 56) + v27, v5);
      v30 = v50;
      sub_255748FF8(&qword_27F7BE0B0, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
      result = sub_255750090();
      v31 = -1 << *(v30 + 32);
      v32 = result & ~v31;
      v33 = v32 >> 6;
      if (((-1 << v32) & ~*(v18 + 8 * (v32 >> 6))) == 0)
      {
        v34 = 0;
        v35 = (63 - v31) >> 6;
        while (++v33 != v35 || (v34 & 1) == 0)
        {
          v36 = v33 == v35;
          if (v33 == v35)
          {
            v33 = 0;
          }

          v34 |= v36;
          v37 = *(v18 + 8 * v33);
          if (v37 != -1)
          {
            v19 = __clz(__rbit64(~v37)) + (v33 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v32) & ~*(v18 + 8 * (v32 >> 6)))) | v32 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      v20 = v50;
      v21 = v47 * v19;
      v22 = *v46;
      (*v46)((*(v50 + 48) + v47 * v19), v29, v5);
      result = (v22)(*(v20 + 56) + v21, v49, v5);
      ++*(v20 + 16);
      v10 = v42;
      v16 = v48;
    }

    v24 = v12;
    while (1)
    {
      v12 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v25 = v13[v12];
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v48 = (v25 - 1) & v25;
        goto LABEL_15;
      }
    }

    if ((v45 & 1) == 0)
    {

      v3 = v40;
      goto LABEL_34;
    }

    v38 = 1 << *(v10 + 32);
    v3 = v40;
    if (v38 >= 64)
    {
      bzero(v13, ((v38 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v38;
    }

    *(v10 + 16) = 0;
  }

LABEL_34:
  *v3 = v50;
  return result;
}

uint64_t sub_255744F74(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = sub_25574F0D0();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7C03D8, &qword_25575F3B8);
  v40 = v4;
  result = sub_255750C80();
  v11 = result;
  if (*(v9 + 16))
  {
    v43 = v8;
    v36 = v2;
    v12 = 0;
    v13 = (v9 + 64);
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v9 + 64);
    v17 = (v14 + 63) >> 6;
    v37 = (v6 + 16);
    v38 = v6;
    v41 = (v6 + 32);
    v18 = result + 64;
    v39 = v9;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v21 = (v16 - 1) & v16;
LABEL_15:
      v24 = v20 | (v12 << 6);
      v42 = v21;
      v25 = *(v6 + 72);
      v26 = *(v9 + 48) + v25 * v24;
      if (v40)
      {
        (*v41)(v43, v26, v5);
      }

      else
      {
        (*v37)(v43, v26, v5);
      }

      v27 = *(*(v9 + 56) + 8 * v24);
      sub_255748FF8(&qword_27F7BE0B0, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
      result = sub_255750090();
      v28 = -1 << *(v11 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v18 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v18 + 8 * v30);
          if (v34 != -1)
          {
            v19 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v29) & ~*(v18 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = (*v41)(*(v11 + 48) + v25 * v19, v43, v5);
      *(*(v11 + 56) + 8 * v19) = v27;
      ++*(v11 + 16);
      v6 = v38;
      v9 = v39;
      v16 = v42;
    }

    v22 = v12;
    while (1)
    {
      v12 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v23 = v13[v12];
      ++v22;
      if (v23)
      {
        v20 = __clz(__rbit64(v23));
        v21 = (v23 - 1) & v23;
        goto LABEL_15;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_34;
    }

    v35 = 1 << *(v9 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero(v13, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v35;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
  return result;
}

unint64_t sub_255745334(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_2556A71A8(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x259C3E760](v9, a1);
      sub_2556A7148(v9);
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

unint64_t sub_2557453FC(uint64_t a1, uint64_t a2)
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

uint64_t sub_255745468(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v40 = sub_25574F0D0();
  v42 = *(v40 - 8);
  v8 = MEMORY[0x28223BE20](v40);
  v41 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v8);
  v39 = &v33 - v11;
  v12 = a4 + 56;
  v13 = -1 << *(a4 + 32);
  if (-v13 < 64)
  {
    v14 = ~(-1 << -v13);
  }

  else
  {
    v14 = -1;
  }

  v15 = v14 & *(a4 + 56);
  if (!a2)
  {
LABEL_19:
    v31 = 0;
    a3 = 0;
LABEL_25:
    *a1 = a4;
    *(a1 + 8) = v12;
    *(a1 + 16) = ~v13;
    *(a1 + 24) = v31;
    *(a1 + 32) = v15;
    return a3;
  }

  if (!a3)
  {
    v31 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v33 = -1 << *(a4 + 32);
    v34 = a1;
    result = 0;
    v16 = 0;
    v17 = (63 - v13) >> 6;
    v35 = v42 + 32;
    v36 = v42 + 16;
    a1 = 1;
    v37 = a4 + 56;
    v38 = a3;
    v18 = v39;
    while (v15)
    {
      v44 = a2;
LABEL_15:
      v21 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
      v43 = v16;
      v22 = a4;
      v23 = *(a4 + 48);
      v24 = v41;
      v25 = v42;
      v26 = *(v42 + 72);
      v27 = v40;
      (*(v42 + 16))(v41, v23 + v26 * (v21 | (v16 << 6)), v40);
      v28 = *(v25 + 32);
      v28(v18, v24, v27);
      v29 = v44;
      v28(v44, v18, v27);
      a3 = v38;
      if (a1 == v38)
      {
        v13 = v33;
        a1 = v34;
        a4 = v22;
        v31 = v43;
        v12 = v37;
        goto LABEL_25;
      }

      a2 = &v29[v26];
      result = a1;
      v30 = __OFADD__(a1++, 1);
      a4 = v22;
      v16 = v43;
      v12 = v37;
      if (v30)
      {
        __break(1u);
        goto LABEL_19;
      }
    }

    v19 = v16;
    while (1)
    {
      v20 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v20 >= v17)
      {
        break;
      }

      v15 = *(v12 + 8 * v20);
      ++v19;
      if (v15)
      {
        v44 = a2;
        v16 = v20;
        goto LABEL_15;
      }
    }

    v15 = 0;
    if (v17 <= v16 + 1)
    {
      v32 = v16 + 1;
    }

    else
    {
      v32 = v17;
    }

    v31 = v32 - 1;
    a3 = result;
    v13 = v33;
    a1 = v34;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

void *sub_25574570C(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v7 = result;
  if ((a4 & 0xC000000000000001) == 0)
  {
LABEL_21:
    v10 = 0;
    v18 = -1 << *(v4 + 32);
    v8 = v4 + 56;
    v9 = ~v18;
    v19 = -v18;
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    else
    {
      v20 = -1;
    }

    v11 = v20 & *(v4 + 56);
    if (a2)
    {
      goto LABEL_3;
    }

LABEL_25:
    v12 = 0;
    goto LABEL_32;
  }

  sub_2557509F0();
  type metadata accessor for JournalMO();
  sub_255748FF8(&qword_27F7BE0A8, type metadata accessor for JournalMO, MEMORY[0x277D85378]);
  result = sub_2557505C0();
  v4 = v25;
  v8 = v26;
  v9 = v27;
  v10 = v28;
  v11 = v29;
  if (!a2)
  {
    goto LABEL_25;
  }

LABEL_3:
  if (!a3)
  {
    v12 = 0;
    goto LABEL_32;
  }

  if (a3 < 0)
  {
LABEL_35:
    __break(1u);
    return result;
  }

  v22 = v9;
  v23 = v7;
  v12 = 0;
  v13 = (v9 + 64) >> 6;
  v7 = 1;
  while (1)
  {
    if (v4 < 0)
    {
      if (!sub_255750A60())
      {
        goto LABEL_30;
      }

      type metadata accessor for JournalMO();
      swift_dynamicCast();
      result = v24;
      if (!v24)
      {
        goto LABEL_30;
      }

      goto LABEL_17;
    }

    v14 = v10;
    if (!v11)
    {
      break;
    }

    v15 = v10;
LABEL_13:
    v16 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    result = *(*(v4 + 48) + ((v15 << 9) | (8 * v16)));
    if (!result)
    {
      goto LABEL_30;
    }

LABEL_17:
    *a2 = result;
    if (v7 == a3)
    {
      v12 = a3;
      goto LABEL_30;
    }

    ++a2;
    v12 = v7;
    if (__OFADD__(v7++, 1))
    {
      __break(1u);
      goto LABEL_21;
    }
  }

  while (1)
  {
    v15 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      __break(1u);
      goto LABEL_35;
    }

    if (v15 >= v13)
    {
      break;
    }

    v11 = *(v8 + 8 * v15);
    ++v14;
    if (v11)
    {
      v10 = v15;
      goto LABEL_13;
    }
  }

  v11 = 0;
  if (v13 <= v10 + 1)
  {
    v21 = v10 + 1;
  }

  else
  {
    v21 = v13;
  }

  v10 = v21 - 1;
LABEL_30:
  v9 = v22;
  v7 = v23;
LABEL_32:
  *v7 = v4;
  *(v7 + 8) = v8;
  *(v7 + 16) = v9;
  *(v7 + 24) = v10;
  *(v7 + 32) = v11;
  return v12;
}

uint64_t sub_255745938(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE4A8, &unk_255756FF0);
  v38 = *(v41 - 8);
  v8 = MEMORY[0x28223BE20](v41);
  v40 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v8);
  v39 = (&v35 - v11);
  v42 = a4;
  v14 = *(a4 + 64);
  v13 = a4 + 64;
  v12 = v14;
  v15 = -1 << *(v13 - 32);
  if (-v15 < 64)
  {
    v16 = ~(-1 << -v15);
  }

  else
  {
    v16 = -1;
  }

  v17 = v16 & v12;
  if (!a2)
  {
LABEL_18:
    v25 = 0;
    a3 = 0;
LABEL_25:
    *a1 = v42;
    a1[1] = v13;
    a1[2] = ~v15;
    a1[3] = v25;
    a1[4] = v17;
    return a3;
  }

  if (!a3)
  {
    v25 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v36 = -1 << *(v13 - 32);
    v37 = a1;
    result = 0;
    v18 = 0;
    v19 = (63 - v15) >> 6;
    v20 = 1;
    v21 = v42;
    while (v17)
    {
LABEL_14:
      v24 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
      v25 = v18;
      v26 = v24 | (v18 << 6);
      v27 = *(v21 + 48);
      v28 = sub_25574F0D0();
      v29 = *(v28 - 8);
      v30 = v27 + *(v29 + 72) * v26;
      v31 = v40;
      (*(v29 + 16))(v40, v30, v28);
      *&v31[*(v41 + 48)] = *(*(v21 + 56) + 8 * v26);
      v32 = v31;
      a1 = v39;
      sub_255748E38(v32, v39);
      sub_255748E38(a1, a2);
      if (v20 == a3)
      {
        goto LABEL_23;
      }

      a2 += *(v38 + 72);
      result = v20;
      v33 = __OFADD__(v20++, 1);
      v18 = v25;
      if (v33)
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v22 = v18;
    while (1)
    {
      v23 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v23 >= v19)
      {
        break;
      }

      v17 = *(v13 + 8 * v23);
      ++v22;
      if (v17)
      {
        v18 = v23;
        goto LABEL_14;
      }
    }

    v17 = 0;
    if (v19 <= v18 + 1)
    {
      v34 = v18 + 1;
    }

    else
    {
      v34 = v19;
    }

    v25 = v34 - 1;
    a3 = result;
LABEL_23:
    v15 = v36;
    a1 = v37;
    goto LABEL_25;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_255745BBC(uint64_t *a1)
{
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE4A8, &unk_255756FF0) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_255748270(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_255745C70(v6);
  *a1 = v3;
  return result;
}

uint64_t sub_255745C70(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_255750E50();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE4A8, &unk_255756FF0);
        v6 = sub_2557503E0();
        *(v6 + 16) = v5;
      }

      v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE4A8, &unk_255756FF0) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_2557466DC(v8, v9, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_255745DB4(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_255745DB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE4A8, &unk_255756FF0);
  v9 = MEMORY[0x28223BE20](v8);
  v38 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v41 = &v29 - v12;
  result = MEMORY[0x28223BE20](v11);
  v40 = &v29 - v15;
  v31 = a2;
  if (a3 != a2)
  {
    v16 = *a4;
    v17 = *(v14 + 72);
    v18 = *a4 + v17 * (a3 - 1);
    v36 = -v17;
    v37 = v16;
    v19 = a1 - a3;
    v30 = v17;
    v20 = v16 + v17 * a3;
    v39 = v8;
LABEL_5:
    v34 = v18;
    v35 = a3;
    v32 = v20;
    v33 = v19;
    while (1)
    {
      v21 = v40;
      sub_255663294(v20, v40, &qword_27F7BE4A8, &unk_255756FF0);
      v22 = v41;
      sub_255663294(v18, v41, &qword_27F7BE4A8, &unk_255756FF0);
      v23 = *(v8 + 48);
      v24 = *(v21 + v23);
      v25 = *(v22 + v23);
      sub_255674B20(v22, &qword_27F7BE4A8, &unk_255756FF0);
      result = sub_255674B20(v21, &qword_27F7BE4A8, &unk_255756FF0);
      v26 = v24 < v25;
      v8 = v39;
      if (!v26)
      {
LABEL_4:
        a3 = v35 + 1;
        v18 = v34 + v30;
        v19 = v33 - 1;
        v20 = v32 + v30;
        if (v35 + 1 == v31)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v37)
      {
        break;
      }

      v27 = v38;
      sub_255748E38(v20, v38);
      swift_arrayInitWithTakeFrontToBack();
      result = sub_255748E38(v27, v18);
      v18 += v36;
      v20 += v36;
      if (__CFADD__(v19++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

void sub_255746010(void ***a1, uint64_t a2, void **a3, uint64_t (*a4)(void **, void **), uint64_t a5, uint64_t a6)
{
  v9 = a3;
  v10 = a3[1];
  if (v10 < 1)
  {
    v12 = MEMORY[0x277D84F90];
LABEL_90:
    v7 = v9;
    v9 = *a1;
    if (*a1)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        goto LABEL_121;
      }

      goto LABEL_92;
    }

    goto LABEL_130;
  }

  v11 = 0;
  v12 = MEMORY[0x277D84F90];
  while (1)
  {
    v13 = v11 + 1;
    if (v11 + 1 < v10)
    {
      v97 = v10;
      v7 = *v9;
      v14 = *(*v9 + v13);
      v105 = *(*v9 + v11);
      v15 = v105;
      v106 = v14;
      v16 = v14;
      v17 = v15;
      v100 = a4(&v106, &v105);
      if (v6)
      {

        return;
      }

      v18 = 8 * v11;
      v19 = &v7[v11 + 2];
      v95 = v11;
      while (v97 - 2 != v11)
      {
        v20 = *v19;
        v105 = *(v19 - 1);
        v21 = v105;
        v106 = v20;
        v22 = v20;
        v7 = v21;
        LODWORD(v21) = a4(&v106, &v105);

        ++v11;
        ++v19;
        if ((v100 ^ v21))
        {
          v13 = v11 + 1;
          goto LABEL_11;
        }
      }

      v11 = v97 - 1;
      v13 = v97;
LABEL_11:
      v9 = a3;
      if (v100)
      {
        if (v13 < v95)
        {
          goto LABEL_124;
        }

        v23 = v95 <= v11;
        v11 = v95;
        if (v23)
        {
          v24 = 8 * v13 - 8;
          v25 = v13;
          v26 = v95;
          do
          {
            if (v26 != --v25)
            {
              v27 = *a3;
              if (!*a3)
              {
                goto LABEL_128;
              }

              v28 = *&v27[v18];
              *&v27[v18] = *&v27[v24];
              *&v27[v24] = v28;
            }

            ++v26;
            v24 -= 8;
            v18 += 8;
          }

          while (v26 < v25);
        }
      }

      else
      {
        v11 = v95;
      }
    }

    v29 = v9[1];
    if (v13 >= v29)
    {
      goto LABEL_133;
    }

    if (__OFSUB__(v13, v11))
    {
      goto LABEL_120;
    }

    if (v13 - v11 >= a6)
    {
      goto LABEL_133;
    }

    v30 = (v11 + a6);
    if (__OFADD__(v11, a6))
    {
      __break(1u);
LABEL_123:
      __break(1u);
LABEL_124:
      __break(1u);
LABEL_125:
      __break(1u);
LABEL_126:
      __break(1u);
      goto LABEL_127;
    }

    if (v30 >= v29)
    {
      v30 = v9[1];
    }

    if (v30 < v11)
    {
      goto LABEL_123;
    }

    if (v13 == v30)
    {
LABEL_133:
      if (v13 < v11)
      {
        goto LABEL_119;
      }
    }

    else
    {
      v77 = a5;
      v78 = *v9;
      v7 = (*v9 + 8 * v13 - 8);
      v96 = v11;
      v79 = v11 - v13;
      v92 = v30;
      do
      {
        v101 = v7;
        v103 = v13;
        v80 = v78[v13];
        v98 = v79;
        do
        {
          v105 = *v7;
          v81 = v105;
          v106 = v80;
          v82 = v80;
          v83 = v81;
          v84 = a4(&v106, &v105);
          if (v6)
          {

            return;
          }

          v85 = v84;

          if ((v85 & 1) == 0)
          {
            break;
          }

          if (!v78)
          {
            goto LABEL_126;
          }

          v86 = *v7;
          v80 = v7[1];
          *v7 = v80;
          v7[1] = v86;
          --v7;
        }

        while (!__CFADD__(v79++, 1));
        v13 = v103 + 1;
        v7 = v101 + 1;
        v79 = v98 - 1;
      }

      while ((v103 + 1) != v92);
      v13 = v92;
      a5 = v77;
      v9 = a3;
      v11 = v96;
      if (v92 < v96)
      {
        goto LABEL_119;
      }
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v12 = sub_255698F94(0, *(v12 + 2) + 1, 1, v12);
    }

    v32 = *(v12 + 2);
    v31 = *(v12 + 3);
    v33 = v32 + 1;
    if (v32 >= v31 >> 1)
    {
      v12 = sub_255698F94((v31 > 1), v32 + 1, 1, v12);
    }

    *(v12 + 2) = v33;
    v34 = &v12[16 * v32];
    *(v34 + 4) = v11;
    *(v34 + 5) = v13;
    v102 = v13;
    v7 = *a1;
    if (!*a1)
    {
      goto LABEL_129;
    }

    if (v32)
    {
      break;
    }

LABEL_3:
    v10 = v9[1];
    v11 = v102;
    if (v102 >= v10)
    {
      goto LABEL_90;
    }
  }

  while (1)
  {
    v35 = v33 - 1;
    if (v33 >= 4)
    {
      v40 = &v12[16 * v33 + 32];
      v41 = *(v40 - 64);
      v42 = *(v40 - 56);
      v46 = __OFSUB__(v42, v41);
      v43 = v42 - v41;
      if (v46)
      {
        goto LABEL_106;
      }

      v45 = *(v40 - 48);
      v44 = *(v40 - 40);
      v46 = __OFSUB__(v44, v45);
      v38 = v44 - v45;
      v39 = v46;
      if (v46)
      {
        goto LABEL_107;
      }

      v47 = &v12[16 * v33];
      v49 = *v47;
      v48 = *(v47 + 1);
      v46 = __OFSUB__(v48, v49);
      v50 = v48 - v49;
      if (v46)
      {
        goto LABEL_109;
      }

      v46 = __OFADD__(v38, v50);
      v51 = v38 + v50;
      if (v46)
      {
        goto LABEL_112;
      }

      if (v51 >= v43)
      {
        v69 = &v12[16 * v35 + 32];
        v71 = *v69;
        v70 = *(v69 + 1);
        v46 = __OFSUB__(v70, v71);
        v72 = v70 - v71;
        if (v46)
        {
          goto LABEL_118;
        }

        if (v38 < v72)
        {
          v35 = v33 - 2;
        }

        goto LABEL_70;
      }

      goto LABEL_49;
    }

    if (v33 == 3)
    {
      v36 = *(v12 + 4);
      v37 = *(v12 + 5);
      v46 = __OFSUB__(v37, v36);
      v38 = v37 - v36;
      v39 = v46;
LABEL_49:
      if (v39)
      {
        goto LABEL_108;
      }

      v52 = &v12[16 * v33];
      v54 = *v52;
      v53 = *(v52 + 1);
      v55 = __OFSUB__(v53, v54);
      v56 = v53 - v54;
      v57 = v55;
      if (v55)
      {
        goto LABEL_111;
      }

      v58 = &v12[16 * v35 + 32];
      v60 = *v58;
      v59 = *(v58 + 1);
      v46 = __OFSUB__(v59, v60);
      v61 = v59 - v60;
      if (v46)
      {
        goto LABEL_114;
      }

      if (__OFADD__(v56, v61))
      {
        goto LABEL_115;
      }

      if (v56 + v61 >= v38)
      {
        if (v38 < v61)
        {
          v35 = v33 - 2;
        }

        goto LABEL_70;
      }

      goto LABEL_63;
    }

    v62 = &v12[16 * v33];
    v64 = *v62;
    v63 = *(v62 + 1);
    v46 = __OFSUB__(v63, v64);
    v56 = v63 - v64;
    v57 = v46;
LABEL_63:
    if (v57)
    {
      goto LABEL_110;
    }

    v65 = &v12[16 * v35];
    v67 = *(v65 + 4);
    v66 = *(v65 + 5);
    v46 = __OFSUB__(v66, v67);
    v68 = v66 - v67;
    if (v46)
    {
      goto LABEL_113;
    }

    if (v68 < v56)
    {
      goto LABEL_3;
    }

LABEL_70:
    v73 = v35 - 1;
    if (v35 - 1 >= v33)
    {
      break;
    }

    if (!*v9)
    {
      goto LABEL_125;
    }

    v74 = *&v12[16 * v73 + 32];
    v75 = *&v12[16 * v35 + 40];
    sub_2557473A4(*v9 + v74, *v9 + *&v12[16 * v35 + 32], *v9 + v75, v7, a4);
    if (v6)
    {
      goto LABEL_100;
    }

    if (v75 < v74)
    {
      goto LABEL_104;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v12 = sub_255747D1C(v12);
    }

    if (v73 >= *(v12 + 2))
    {
      goto LABEL_105;
    }

    v76 = &v12[16 * v73];
    *(v76 + 4) = v74;
    *(v76 + 5) = v75;
    v107 = v12;
    sub_255747C90(v35);
    v12 = v107;
    v33 = *(v107 + 2);
    if (v33 <= 1)
    {
      goto LABEL_3;
    }
  }

  __break(1u);
LABEL_104:
  __break(1u);
LABEL_105:
  __break(1u);
LABEL_106:
  __break(1u);
LABEL_107:
  __break(1u);
LABEL_108:
  __break(1u);
LABEL_109:
  __break(1u);
LABEL_110:
  __break(1u);
LABEL_111:
  __break(1u);
LABEL_112:
  __break(1u);
LABEL_113:
  __break(1u);
LABEL_114:
  __break(1u);
LABEL_115:
  __break(1u);
LABEL_116:
  __break(1u);
LABEL_117:
  __break(1u);
LABEL_118:
  __break(1u);
LABEL_119:
  __break(1u);
LABEL_120:
  __break(1u);
LABEL_121:
  v12 = sub_255747D1C(v12);
LABEL_92:
  v107 = v12;
  v88 = *(v12 + 2);
  if (v88 < 2)
  {
LABEL_100:
  }

  else
  {
    while (*v7)
    {
      v89 = *&v12[16 * v88];
      v90 = *&v12[16 * v88 + 24];
      sub_2557473A4(*v7 + v89, *v7 + *&v12[16 * v88 + 16], *v7 + v90, v9, a4);
      if (v6)
      {
        goto LABEL_100;
      }

      if (v90 < v89)
      {
        goto LABEL_116;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v12 = sub_255747D1C(v12);
      }

      if (v88 - 2 >= *(v12 + 2))
      {
        goto LABEL_117;
      }

      v91 = &v12[16 * v88];
      *v91 = v89;
      *(v91 + 1) = v90;
      v107 = v12;
      sub_255747C90(v88 - 1);
      v12 = v107;
      v88 = *(v107 + 2);
      if (v88 <= 1)
      {
        goto LABEL_100;
      }
    }

LABEL_127:
    __break(1u);
LABEL_128:
    __break(1u);
LABEL_129:
    __break(1u);
LABEL_130:
    __break(1u);
  }
}

uint64_t sub_2557466DC(unint64_t *a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v5 = v4;
  v110 = a1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE4A8, &unk_255756FF0);
  v118 = *(v8 - 8);
  v9 = MEMORY[0x28223BE20](v8);
  v113 = &v106 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v123 = &v106 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v125 = &v106 - v14;
  result = MEMORY[0x28223BE20](v13);
  v124 = &v106 - v16;
  v119 = a3;
  v17 = *(a3 + 8);
  if (v17 < 1)
  {
    v19 = MEMORY[0x277D84F90];
LABEL_95:
    a3 = *v110;
    if (!*v110)
    {
      goto LABEL_133;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
LABEL_97:
      v127 = v19;
      v102 = *(v19 + 2);
      if (v102 >= 2)
      {
        while (*v119)
        {
          v103 = *&v19[16 * v102];
          v104 = *&v19[16 * v102 + 24];
          sub_25574776C(*v119 + *(v118 + 72) * v103, *v119 + *(v118 + 72) * *&v19[16 * v102 + 16], *v119 + *(v118 + 72) * v104, a3);
          if (v5)
          {
          }

          if (v104 < v103)
          {
            goto LABEL_120;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v19 = sub_255747D1C(v19);
          }

          if (v102 - 2 >= *(v19 + 2))
          {
            goto LABEL_121;
          }

          v105 = &v19[16 * v102];
          *v105 = v103;
          *(v105 + 1) = v104;
          v127 = v19;
          result = sub_255747C90(v102 - 1);
          v19 = v127;
          v102 = *(v127 + 2);
          if (v102 <= 1)
          {
          }
        }

        goto LABEL_131;
      }
    }

LABEL_127:
    result = sub_255747D1C(v19);
    v19 = result;
    goto LABEL_97;
  }

  v107 = a4;
  v18 = 0;
  v19 = MEMORY[0x277D84F90];
  v126 = v8;
  while (1)
  {
    v20 = v18;
    if (v18 + 1 >= v17)
    {
      v31 = v18 + 1;
    }

    else
    {
      v120 = v17;
      v109 = v5;
      v21 = v18;
      v22 = *v119;
      v122 = v22;
      v23 = *(v118 + 72);
      a3 = v22 + v23 * (v18 + 1);
      v24 = v124;
      sub_255663294(a3, v124, &qword_27F7BE4A8, &unk_255756FF0);
      v25 = v22 + v23 * v21;
      v26 = v125;
      sub_255663294(v25, v125, &qword_27F7BE4A8, &unk_255756FF0);
      v27 = *(v8 + 48);
      v28 = *(v24 + v27);
      v116 = *(v26 + v27);
      v117 = v28;
      sub_255674B20(v26, &qword_27F7BE4A8, &unk_255756FF0);
      result = sub_255674B20(v24, &qword_27F7BE4A8, &unk_255756FF0);
      v108 = v21;
      v29 = v21 + 2;
      v121 = v23;
      v30 = v122 + v23 * v29;
      v115 = v19;
      while (1)
      {
        v31 = v120;
        if (v120 == v29)
        {
          break;
        }

        LODWORD(v122) = v117 < v116;
        v32 = v124;
        sub_255663294(v30, v124, &qword_27F7BE4A8, &unk_255756FF0);
        v33 = v125;
        sub_255663294(a3, v125, &qword_27F7BE4A8, &unk_255756FF0);
        v34 = *(v126 + 48);
        v35 = *(v32 + v34);
        v36 = *(v33 + v34);
        sub_255674B20(v33, &qword_27F7BE4A8, &unk_255756FF0);
        result = sub_255674B20(v32, &qword_27F7BE4A8, &unk_255756FF0);
        v19 = v115;
        ++v29;
        v30 += v121;
        a3 += v121;
        if (((v122 ^ (v35 >= v36)) & 1) == 0)
        {
          v31 = v29 - 1;
          break;
        }
      }

      v8 = v126;
      v20 = v108;
      v5 = v109;
      if (v117 < v116)
      {
        if (v31 < v108)
        {
          goto LABEL_124;
        }

        if (v108 < v31)
        {
          v37 = v121 * (v31 - 1);
          v38 = v31 * v121;
          v39 = v31;
          v40 = v108;
          v41 = v108 * v121;
          do
          {
            if (v40 != --v39)
            {
              v42 = *v119;
              if (!*v119)
              {
                goto LABEL_130;
              }

              a3 = v42 + v41;
              sub_255748E38(v42 + v41, v113);
              if (v41 < v37 || a3 >= v42 + v38)
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v41 != v37)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              result = sub_255748E38(v113, v42 + v37);
              v8 = v126;
            }

            ++v40;
            v37 -= v121;
            v38 -= v121;
            v41 += v121;
          }

          while (v40 < v39);
          v20 = v108;
          v5 = v109;
          v19 = v115;
        }
      }
    }

    v43 = v119[1];
    if (v31 >= v43)
    {
      goto LABEL_32;
    }

    if (__OFSUB__(v31, v20))
    {
      goto LABEL_123;
    }

    if (v31 - v20 >= v107)
    {
LABEL_32:
      v18 = v31;
      if (v31 < v20)
      {
        goto LABEL_122;
      }

      goto LABEL_33;
    }

    if (__OFADD__(v20, v107))
    {
      goto LABEL_125;
    }

    if (v20 + v107 >= v43)
    {
      v44 = v119[1];
    }

    else
    {
      v44 = v20 + v107;
    }

    if (v44 < v20)
    {
LABEL_126:
      __break(1u);
      goto LABEL_127;
    }

    if (v31 == v44)
    {
      goto LABEL_32;
    }

    v115 = v19;
    v108 = v20;
    v109 = v5;
    v90 = *v119;
    v91 = *(v118 + 72);
    v92 = *v119 + v91 * (v31 - 1);
    v121 = -v91;
    v122 = v90;
    v93 = v20 - v31;
    v111 = v91;
    v112 = v44;
    a3 = v90 + v31 * v91;
LABEL_86:
    v120 = v31;
    v114 = a3;
    v116 = v93;
    v117 = v92;
    v94 = v92;
LABEL_87:
    v95 = v124;
    sub_255663294(a3, v124, &qword_27F7BE4A8, &unk_255756FF0);
    v96 = v125;
    sub_255663294(v94, v125, &qword_27F7BE4A8, &unk_255756FF0);
    v97 = *(v8 + 48);
    v98 = *(v95 + v97);
    v99 = *(v96 + v97);
    sub_255674B20(v96, &qword_27F7BE4A8, &unk_255756FF0);
    result = sub_255674B20(v95, &qword_27F7BE4A8, &unk_255756FF0);
    if (v98 < v99)
    {
      break;
    }

    v8 = v126;
LABEL_85:
    v31 = v120 + 1;
    v18 = v112;
    v92 = v117 + v111;
    v93 = v116 - 1;
    a3 = v114 + v111;
    if (v120 + 1 != v112)
    {
      goto LABEL_86;
    }

    v20 = v108;
    v5 = v109;
    v19 = v115;
    if (v112 < v108)
    {
      goto LABEL_122;
    }

LABEL_33:
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_255698F94(0, *(v19 + 2) + 1, 1, v19);
      v19 = result;
    }

    v46 = *(v19 + 2);
    v45 = *(v19 + 3);
    a3 = v46 + 1;
    if (v46 >= v45 >> 1)
    {
      result = sub_255698F94((v45 > 1), v46 + 1, 1, v19);
      v19 = result;
    }

    *(v19 + 2) = a3;
    v47 = &v19[16 * v46];
    *(v47 + 4) = v20;
    *(v47 + 5) = v18;
    v48 = *v110;
    if (!*v110)
    {
      goto LABEL_132;
    }

    if (v46)
    {
      while (2)
      {
        v49 = a3 - 1;
        if (a3 >= 4)
        {
          v54 = &v19[16 * a3 + 32];
          v55 = *(v54 - 64);
          v56 = *(v54 - 56);
          v60 = __OFSUB__(v56, v55);
          v57 = v56 - v55;
          if (v60)
          {
            goto LABEL_109;
          }

          v59 = *(v54 - 48);
          v58 = *(v54 - 40);
          v60 = __OFSUB__(v58, v59);
          v52 = v58 - v59;
          v53 = v60;
          if (v60)
          {
            goto LABEL_110;
          }

          v61 = &v19[16 * a3];
          v63 = *v61;
          v62 = *(v61 + 1);
          v60 = __OFSUB__(v62, v63);
          v64 = v62 - v63;
          if (v60)
          {
            goto LABEL_112;
          }

          v60 = __OFADD__(v52, v64);
          v65 = v52 + v64;
          if (v60)
          {
            goto LABEL_115;
          }

          if (v65 >= v57)
          {
            v83 = &v19[16 * v49 + 32];
            v85 = *v83;
            v84 = *(v83 + 1);
            v60 = __OFSUB__(v84, v85);
            v86 = v84 - v85;
            if (v60)
            {
              goto LABEL_119;
            }

            if (v52 < v86)
            {
              v49 = a3 - 2;
            }
          }

          else
          {
LABEL_52:
            if (v53)
            {
              goto LABEL_111;
            }

            v66 = &v19[16 * a3];
            v68 = *v66;
            v67 = *(v66 + 1);
            v69 = __OFSUB__(v67, v68);
            v70 = v67 - v68;
            v71 = v69;
            if (v69)
            {
              goto LABEL_114;
            }

            v72 = &v19[16 * v49 + 32];
            v74 = *v72;
            v73 = *(v72 + 1);
            v60 = __OFSUB__(v73, v74);
            v75 = v73 - v74;
            if (v60)
            {
              goto LABEL_117;
            }

            if (__OFADD__(v70, v75))
            {
              goto LABEL_118;
            }

            if (v70 + v75 < v52)
            {
              goto LABEL_66;
            }

            if (v52 < v75)
            {
              v49 = a3 - 2;
            }
          }
        }

        else
        {
          if (a3 == 3)
          {
            v50 = *(v19 + 4);
            v51 = *(v19 + 5);
            v60 = __OFSUB__(v51, v50);
            v52 = v51 - v50;
            v53 = v60;
            goto LABEL_52;
          }

          v76 = &v19[16 * a3];
          v78 = *v76;
          v77 = *(v76 + 1);
          v60 = __OFSUB__(v77, v78);
          v70 = v77 - v78;
          v71 = v60;
LABEL_66:
          if (v71)
          {
            goto LABEL_113;
          }

          v79 = &v19[16 * v49];
          v81 = *(v79 + 4);
          v80 = *(v79 + 5);
          v60 = __OFSUB__(v80, v81);
          v82 = v80 - v81;
          if (v60)
          {
            goto LABEL_116;
          }

          if (v82 < v70)
          {
            break;
          }
        }

        v87 = v49 - 1;
        if (v49 - 1 >= a3)
        {
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
          goto LABEL_126;
        }

        if (!*v119)
        {
          goto LABEL_129;
        }

        a3 = *&v19[16 * v87 + 32];
        v88 = *&v19[16 * v49 + 40];
        sub_25574776C(*v119 + *(v118 + 72) * a3, *v119 + *(v118 + 72) * *&v19[16 * v49 + 32], *v119 + *(v118 + 72) * v88, v48);
        if (v5)
        {
        }

        if (v88 < a3)
        {
          goto LABEL_107;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v19 = sub_255747D1C(v19);
        }

        if (v87 >= *(v19 + 2))
        {
          goto LABEL_108;
        }

        v89 = &v19[16 * v87];
        *(v89 + 4) = a3;
        *(v89 + 5) = v88;
        v127 = v19;
        result = sub_255747C90(v49);
        v19 = v127;
        a3 = *(v127 + 2);
        if (a3 <= 1)
        {
          break;
        }

        continue;
      }
    }

    v17 = v119[1];
    if (v18 >= v17)
    {
      goto LABEL_95;
    }
  }

  if (v122)
  {
    v100 = v123;
    sub_255748E38(a3, v123);
    v8 = v126;
    swift_arrayInitWithTakeFrontToBack();
    sub_255748E38(v100, v94);
    v94 += v121;
    a3 += v121;
    if (__CFADD__(v93++, 1))
    {
      goto LABEL_85;
    }

    goto LABEL_87;
  }

  __break(1u);
LABEL_129:
  __break(1u);
LABEL_130:
  __break(1u);
LABEL_131:
  __break(1u);
LABEL_132:
  __break(1u);
LABEL_133:
  __break(1u);
  return result;
}

uint64_t sub_255746FE4(void **__src, void **a2, void **a3, unint64_t __dst, uint64_t a5)
{
  v6 = a3;
  v7 = a2;
  v8 = __src;
  v9 = a2 - __src;
  v10 = a2 - __src + 7;
  if (a2 - __src >= 0)
  {
    v10 = a2 - __src;
  }

  v11 = v10 >> 3;
  v12 = a3 - a2;
  v13 = a3 - a2 + 7;
  if (a3 - a2 >= 0)
  {
    v13 = a3 - a2;
  }

  v14 = v13 >> 3;
  if (v11 >= v13 >> 3)
  {
    if (__dst != a2 || &a2[v14] <= __dst)
    {
      v28 = __dst;
      memmove(__dst, a2, 8 * v14);
      __dst = v28;
    }

    v52 = __dst;
    v16 = (__dst + 8 * v14);
    if (v12 < 8 || v7 <= v8)
    {
      v15 = __dst;
      goto LABEL_53;
    }

    v29 = -__dst;
    v49 = -__dst;
    v50 = v8;
    while (1)
    {
      v51 = v7;
      v30 = v7 - 1;
      v31 = v16 + v29;
      --v6;
      v32 = v16;
      while (1)
      {
        v33 = *--v32;
        v55 = v33;
        v34 = v30;
        v54 = *v30;
        v35 = v54;
        v36 = v33;
        v37 = v35;
        v38 = sub_25567AAF8(&v55, &v54, a5);
        if (v5)
        {

          if (v31 >= 0)
          {
            v46 = v31;
          }

          else
          {
            v46 = v31 + 7;
          }

          v44 = v51;
          v45 = v52;
          if (v51 >= v52 && v51 < v52 + (v46 & 0xFFFFFFFFFFFFFFF8) && v51 == v52)
          {
            goto LABEL_60;
          }

          v43 = 8 * (v46 >> 3);
          goto LABEL_59;
        }

        v39 = v38;

        v40 = v6 + 1;
        if (v39)
        {
          break;
        }

        if (v40 != v16)
        {
          *v6 = *v32;
        }

        v31 -= 8;
        --v6;
        v16 = v32;
        v30 = v34;
        if (v32 <= v52)
        {
          v16 = v32;
          v7 = v51;
          v15 = v52;
LABEL_53:
          v47 = v16 - v15 + 7;
          if (v16 - v15 >= 0)
          {
            v47 = v16 - v15;
          }

          if (v7 >= v15 && v7 < (v15 + (v47 & 0xFFFFFFFFFFFFFFF8)) && v7 == v15)
          {
            goto LABEL_60;
          }

          v43 = 8 * (v47 >> 3);
          v44 = v7;
          v45 = v15;
LABEL_59:
          memmove(v44, v45, v43);
          goto LABEL_60;
        }
      }

      if (v40 != v51)
      {
        *v6 = *v34;
      }

      v15 = v52;
      if (v16 > v52)
      {
        v7 = v34;
        v29 = v49;
        if (v34 > v50)
        {
          continue;
        }
      }

      v7 = v34;
      goto LABEL_53;
    }
  }

  v15 = __dst;
  if (__dst != __src || &__src[v11] <= __dst)
  {
    memmove(__dst, __src, 8 * v11);
  }

  v16 = &v15[v11];
  if (v9 < 8 || v7 >= v6)
  {
    v7 = v8;
    goto LABEL_53;
  }

  while (1)
  {
    v17 = v8;
    v18 = v16;
    v19 = v7;
    v55 = *v7;
    v20 = v15;
    v54 = *v15;
    v21 = v54;
    v22 = v55;
    v23 = v21;
    v24 = sub_25567AAF8(&v55, &v54, a5);
    if (v5)
    {
      break;
    }

    v25 = v24;

    if (!v25)
    {
      v26 = v20;
      v15 = v20 + 1;
      v27 = v17;
      v7 = v19;
      if (v17 == v20)
      {
        goto LABEL_17;
      }

LABEL_16:
      *v27 = *v26;
      goto LABEL_17;
    }

    v26 = v19;
    v7 = v19 + 1;
    v27 = v17;
    v15 = v20;
    if (v17 != v19)
    {
      goto LABEL_16;
    }

LABEL_17:
    v8 = v27 + 1;
    v16 = v18;
    if (v15 >= v18 || v7 >= v6)
    {
      v7 = v8;
      goto LABEL_53;
    }
  }

  v41 = v18 - v20 + 7;
  if ((v18 - v20) >= 0)
  {
    v41 = v18 - v20;
  }

  v42 = v41 >> 3;
  if (v8 < v20 || v8 >= (v20 + (v41 & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(v8, v20, 8 * v42);
  }

  else if (v8 != v20)
  {
    v43 = 8 * v42;
    v44 = v8;
    v45 = v20;
    goto LABEL_59;
  }

LABEL_60:

  return 1;
}

uint64_t sub_2557473A4(id *__src, id *a2, id *a3, unint64_t __dst, uint64_t (*a5)(id *, id *))
{
  v5 = a3;
  v6 = a2;
  v7 = __src;
  v8 = a2 - __src;
  v9 = a2 - __src + 7;
  if (a2 - __src >= 0)
  {
    v9 = a2 - __src;
  }

  v10 = v9 >> 3;
  v11 = a3 - a2;
  v12 = a3 - a2 + 7;
  if (a3 - a2 >= 0)
  {
    v12 = a3 - a2;
  }

  v13 = v12 >> 3;
  if (v10 < v12 >> 3)
  {
    v14 = __dst;
    if (__dst != __src || &__src[v10] <= __dst)
    {
      memmove(__dst, __src, 8 * v10);
    }

    v52 = &v14[v10];
    if (v8 < 8)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_51;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v16 = v6;
      v54 = *v6;
      v17 = v14;
      v53 = *v14;
      v18 = v53;
      v19 = v54;
      v20 = v18;
      v21 = a5(&v54, &v53);
      if (__dsta)
      {

        v43 = v52 - v17 + 7;
        if (v52 - v17 >= 0)
        {
          v43 = v52 - v17;
        }

        if (v7 < v17 || v7 >= (v17 + (v43 & 0xFFFFFFFFFFFFFFF8)) || v7 != v17)
        {
          v42 = 8 * (v43 >> 3);
          v41 = v7;
          v40 = v17;
          goto LABEL_57;
        }

        return 1;
      }

      v22 = v21;

      __dsta = 0;
      if (v22)
      {
        break;
      }

      v15 = v17;
      v14 = v17 + 1;
      v6 = v16;
      if (v7 != v17)
      {
        goto LABEL_12;
      }

LABEL_13:
      ++v7;
      if (v14 >= v52)
      {
        goto LABEL_10;
      }
    }

    v15 = v16;
    v6 = v16 + 1;
    v14 = v17;
    if (v7 == v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v15;
    goto LABEL_13;
  }

  if (__dst != a2 || &a2[v13] <= __dst)
  {
    v23 = __dst;
    memmove(__dst, a2, 8 * v13);
    __dst = v23;
  }

  __srca = __dst;
  v52 = (__dst + 8 * v13);
  if (v11 < 8)
  {
    v14 = __dst;
  }

  else
  {
    v24 = __dsta;
    if (v6 <= v7)
    {
      v14 = __dst;
    }

    else
    {
      v25 = -__dst;
      v46 = -__dst;
      v47 = v7;
      while (2)
      {
        v26 = v24;
        __dstb = v6;
        v27 = v6 - 1;
        v28 = v52;
        v29 = v52 + v25;
        --v5;
        while (1)
        {
          v30 = *--v28;
          v54 = v30;
          v31 = v27;
          v53 = *v27;
          v32 = v53;
          v33 = v30;
          v34 = v32;
          v35 = a5(&v54, &v53);
          if (v26)
          {

            if (v29 >= 0)
            {
              v38 = v29;
            }

            else
            {
              v38 = v29 + 7;
            }

            v39 = v38 >> 3;
            v40 = __srca;
            v41 = __dstb;
            if (__dstb < __srca || __dstb >= (__srca + (v38 & 0xFFFFFFFFFFFFFFF8)))
            {
              memmove(__dstb, __srca, 8 * v39);
              return 1;
            }

            if (__dstb == __srca)
            {
              return 1;
            }

            v42 = 8 * v39;
            goto LABEL_57;
          }

          v36 = v35;

          v37 = v5 + 1;
          if (v36)
          {
            break;
          }

          v27 = v31;
          if (v37 != v52)
          {
            *v5 = *v28;
          }

          v29 -= 8;
          --v5;
          v52 = v28;
          if (v28 <= __srca)
          {
            v52 = v28;
            v6 = __dstb;
            v14 = __srca;
            goto LABEL_51;
          }
        }

        v6 = v31;
        if (v37 != __dstb)
        {
          *v5 = *v31;
        }

        v14 = __srca;
        v24 = 0;
        if (v52 > __srca)
        {
          v25 = v46;
          if (v31 > v47)
          {
            continue;
          }
        }

        break;
      }
    }
  }

LABEL_51:
  v44 = v52 - v14 + 7;
  if (v52 - v14 >= 0)
  {
    v44 = v52 - v14;
  }

  if (v6 < v14 || v6 >= (v14 + (v44 & 0xFFFFFFFFFFFFFFF8)) || v6 != v14)
  {
    v42 = 8 * (v44 >> 3);
    v41 = v6;
    v40 = v14;
LABEL_57:
    memmove(v41, v40, v42);
  }

  return 1;
}

uint64_t sub_25574776C(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE4A8, &unk_255756FF0);
  v8 = MEMORY[0x28223BE20](v47);
  v46 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v8);
  v45 = &v37 - v11;
  v13 = *(v12 + 72);
  if (!v13)
  {
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v13 == -1)
  {
    goto LABEL_60;
  }

  v14 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v13 == -1)
  {
    goto LABEL_61;
  }

  v15 = (a2 - a1) / v13;
  v50 = a1;
  v49 = a4;
  if (v15 >= v14 / v13)
  {
    v17 = v14 / v13 * v13;
    if (a4 < a2 || a2 + v17 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    if (v17 < 1)
    {
      v29 = a4 + v17;
    }

    else
    {
      v27 = -v13;
      v28 = a4 + v17;
      v29 = a4 + v17;
      v40 = a1;
      v41 = a4;
      v39 = v27;
      do
      {
        v37 = v29;
        v30 = a2 + v27;
        v42 = a2;
        v43 = a2 + v27;
        while (1)
        {
          if (a2 <= a1)
          {
            v50 = a2;
            v48 = v37;
            goto LABEL_58;
          }

          v31 = a3;
          v38 = v29;
          a3 += v27;
          v32 = v28 + v27;
          v33 = v45;
          sub_255663294(v28 + v27, v45, &qword_27F7BE4A8, &unk_255756FF0);
          v34 = v46;
          sub_255663294(v30, v46, &qword_27F7BE4A8, &unk_255756FF0);
          v35 = *(v47 + 48);
          v44 = *(v33 + v35);
          v36 = *(v34 + v35);
          sub_255674B20(v34, &qword_27F7BE4A8, &unk_255756FF0);
          sub_255674B20(v33, &qword_27F7BE4A8, &unk_255756FF0);
          if (v44 < v36)
          {
            break;
          }

          v29 = v32;
          if (v31 < v28 || a3 >= v28)
          {
            swift_arrayInitWithTakeFrontToBack();
            v30 = v43;
            v27 = v39;
            a1 = v40;
          }

          else
          {
            v30 = v43;
            v27 = v39;
            a1 = v40;
            if (v31 != v28)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v28 = v32;
          a2 = v42;
          if (v32 <= v41)
          {
            goto LABEL_56;
          }
        }

        if (v31 < v42 || a3 >= v42)
        {
          a2 = v43;
          swift_arrayInitWithTakeFrontToBack();
          v27 = v39;
          a1 = v40;
          v29 = v38;
        }

        else
        {
          a2 = v43;
          v27 = v39;
          a1 = v40;
          v29 = v38;
          if (v31 != v42)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }
      }

      while (v28 > v41);
    }

LABEL_56:
    v50 = a2;
    v48 = v29;
  }

  else
  {
    v16 = v15 * v13;
    if (a4 < a1 || a1 + v16 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v43 = a3;
    v44 = a4 + v16;
    v48 = a4 + v16;
    if (v16 >= 1 && a2 < a3)
    {
      v42 = v13;
      do
      {
        v19 = v45;
        v20 = a2;
        sub_255663294(a2, v45, &qword_27F7BE4A8, &unk_255756FF0);
        v21 = v46;
        sub_255663294(a4, v46, &qword_27F7BE4A8, &unk_255756FF0);
        v22 = *(v47 + 48);
        v23 = *(v19 + v22);
        v24 = *(v21 + v22);
        sub_255674B20(v21, &qword_27F7BE4A8, &unk_255756FF0);
        sub_255674B20(v19, &qword_27F7BE4A8, &unk_255756FF0);
        if (v23 >= v24)
        {
          v25 = v42;
          v26 = a4 + v42;
          if (a1 < a4 || a1 >= v26)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a4)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v49 = v26;
          a4 += v25;
        }

        else
        {
          v25 = v42;
          a2 += v42;
          if (a1 < v20 || a1 >= a2)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != v20)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        a1 += v25;
        v50 = a1;
      }

      while (a4 < v44 && a2 < v43);
    }
  }

LABEL_58:
  sub_255747D30(&v50, &v49, &v48);
  return 1;
}

uint64_t sub_255747C90(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_255747D1C(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

uint64_t sub_255747D30(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE4A8, &unk_255756FF0);
  v7 = *(*(result - 8) + 72);
  if (!v7)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v5 - v4 == 0x8000000000000000 && v7 == -1)
  {
    goto LABEL_17;
  }

  if (v3 < v4 || v3 >= v4 + (v5 - v4) / v7 * v7)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v3 != v4)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

void (*sub_255747E20(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x259C3E830](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_255747EA0;
  }

  __break(1u);
  return result;
}

void (*sub_255747EA8(void (*result)(id *), unint64_t a2, uint64_t a3))(id *)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x259C3E830](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_25574905C;
  }

  __break(1u);
  return result;
}

uint64_t sub_255747F28(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_255750A30();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_255750A30();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_255669798(&qword_27F7C0428, &qword_27F7C0420, &qword_25575F3E0, MEMORY[0x277D83988]);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7C0420, &qword_25575F3E0);
            v9 = sub_255747EA8(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        type metadata accessor for JournalMO();
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_2557480CC(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_255750A30();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_255750A30();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_255669798(&qword_27F7C0410, &qword_27F7C0408, &qword_25575F3D0, MEMORY[0x277D83988]);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7C0408, &qword_25575F3D0);
            v9 = sub_255747E20(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        type metadata accessor for JournalEntryAssetMO();
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_255748284(id *a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v151 = a1;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F7BED20, &unk_2557551D0);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v161 = &v146 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v160 = &v146 - v13;
  v14 = sub_25574F0D0();
  v15 = MEMORY[0x28223BE20](v14);
  v169 = &v146 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v163 = &v146 - v18;
  MEMORY[0x28223BE20](v17);
  v156 = a3;
  v21 = a3[1];
  v168 = a5;
  if (v21 < 1)
  {
    swift_bridgeObjectRetain_n();
    v23 = MEMORY[0x277D84F90];
LABEL_106:
    v170 = *v151;
    if (v170)
    {
      swift_bridgeObjectRetain_n();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        goto LABEL_137;
      }

      goto LABEL_108;
    }

    goto LABEL_146;
  }

  v157 = &v146 - v20;
  v148 = a4;
  v162 = (v19 + 32);
  v158 = (v19 + 48);
  v166 = (v19 + 8);
  v167 = (v19 + 56);
  swift_bridgeObjectRetain_n();
  v22 = 0;
  v23 = MEMORY[0x277D84F90];
  v164 = v14;
  while (1)
  {
    v24 = v22;
    if (v22 + 1 >= v21)
    {
      v21 = v22 + 1;
    }

    else
    {
      v150 = v23;
      v25 = v22;
      v26 = *v156;
      v27 = *(*v156 + 8 * (v22 + 1));
      v171 = *(*v156 + 8 * v25);
      v28 = v171;
      v172[0] = v27;
      v29 = v27;
      v30 = v28;
      v31 = sub_25567AAF8(v172, &v171, v168);
      if (v6)
      {
        swift_bridgeObjectRelease_n();

        return;
      }

      v32 = v31;

      v33 = v25 + 2;
      v149 = v25;
      v34 = 8 * v25;
      v35 = (v26 + 8 * v25 + 16);
      while (v21 != v33)
      {
        v36 = *v35;
        v171 = *(v35 - 1);
        v37 = v171;
        v172[0] = v36;
        v38 = v36;
        v39 = v37;
        LODWORD(v37) = sub_25567AAF8(v172, &v171, v168);

        ++v33;
        ++v35;
        if ((v32 ^ v37))
        {
          v21 = v33 - 1;
          break;
        }
      }

      v23 = v150;
      v14 = v164;
      v24 = v149;
      if (v32)
      {
        if (v21 < v149)
        {
          goto LABEL_140;
        }

        if (v149 < v21)
        {
          v40 = 8 * v21 - 8;
          v41 = v21;
          v42 = v149;
          do
          {
            if (v42 != --v41)
            {
              v44 = *v156;
              if (!*v156)
              {
                goto LABEL_144;
              }

              v43 = *(v44 + v34);
              *(v44 + v34) = *(v44 + v40);
              *(v44 + v40) = v43;
            }

            ++v42;
            v40 -= 8;
            v34 += 8;
          }

          while (v42 < v41);
        }
      }
    }

    v45 = v156[1];
    if (v21 >= v45)
    {
      goto LABEL_55;
    }

    if (__OFSUB__(v21, v24))
    {
      goto LABEL_136;
    }

    if (v21 - v24 >= v148)
    {
      goto LABEL_55;
    }

    v46 = v24 + v148;
    if (__OFADD__(v24, v148))
    {
      __break(1u);
LABEL_139:
      __break(1u);
LABEL_140:
      __break(1u);
LABEL_141:
      swift_bridgeObjectRelease_n();
      __break(1u);
LABEL_142:
      swift_bridgeObjectRelease_n();
      __break(1u);
LABEL_143:

      __break(1u);
LABEL_144:
      swift_bridgeObjectRelease_n();
      __break(1u);
LABEL_145:
      swift_bridgeObjectRelease_n();
      __break(1u);
LABEL_146:
      swift_bridgeObjectRelease_n();
      __break(1u);
      return;
    }

    if (v46 >= v45)
    {
      v46 = v156[1];
    }

    if (v46 < v24)
    {
      goto LABEL_139;
    }

    if (v21 != v46)
    {
      v150 = v23;
      v147 = v6;
      v159 = *v156;
      v47 = v159 + 8 * v21 - 8;
      v149 = v24;
      v48 = v24 - v21;
      v49 = v157;
      v152 = v46;
      do
      {
        v50 = v47;
        v51 = *(v159 + 8 * v21);
        v153 = v48;
        v154 = v50;
        v155 = v21;
        v52 = v50;
        do
        {
          v53 = *v52;
          v54 = v51;
          v170 = v53;
          v165 = v54;
          v55 = [v54 id];
          if (v55)
          {
            v56 = v163;
            v57 = v55;
            sub_25574F080();

            v58 = *v162;
            v59 = v160;
            (*v162)(v160, v56, v14);
            v60 = *v167;
            (*v167)(v59, 0, 1, v14);
            v58(v49, v59, v14);
          }

          else
          {
            v60 = *v167;
            v61 = v160;
            (*v167)(v160, 1, 1, v14);
            sub_25574F0C0();
            if ((*v158)(v61, 1, v14) != 1)
            {
              sub_255674B20(v160, &unk_27F7BED20, &unk_2557551D0);
            }
          }

          v62 = v168;
          if (*(v168 + 16))
          {
            v63 = sub_25567AF04(v49);
            v64 = *v166;
            if (v65)
            {
              v66 = *(*(v62 + 56) + 8 * v63);
            }

            else
            {
              v66 = 0;
            }

            v64(v49, v14);
          }

          else
          {
            v66 = 0;
            v64 = *v166;
            (*v166)(v49, v14);
          }

          v67 = [v170 id];
          if (v67)
          {
            v68 = v163;
            v69 = v67;
            sub_25574F080();

            v70 = *v162;
            v71 = v66;
            v72 = v161;
            v73 = v68;
            v49 = v157;
            (*v162)(v161, v73, v164);
            v60(v72, 0, 1, v164);
            v74 = v72;
            v66 = v71;
            v14 = v164;
            v70(v169, v74, v164);
          }

          else
          {
            v75 = v161;
            v60(v161, 1, 1, v14);
            sub_25574F0C0();
            if ((*v158)(v75, 1, v14) != 1)
            {
              sub_255674B20(v161, &unk_27F7BED20, &unk_2557551D0);
            }
          }

          v76 = v168;
          if (*(v168 + 16) && (v77 = sub_25567AF04(v169), (v78 & 1) != 0))
          {
            v79 = *(*(v76 + 56) + 8 * v77);
          }

          else
          {
            v79 = 0;
          }

          v64(v169, v14);

          if (v66 >= v79)
          {
            break;
          }

          if (!v159)
          {
            goto LABEL_141;
          }

          v80 = *v52;
          v51 = *(v52 + 8);
          *v52 = v51;
          *(v52 + 8) = v80;
          v52 -= 8;
        }

        while (!__CFADD__(v48++, 1));
        v21 = v155 + 1;
        v47 = v154 + 8;
        v48 = v153 - 1;
      }

      while (v155 + 1 != v152);
      v21 = v152;
      v6 = v147;
      v23 = v150;
      v24 = v149;
    }

LABEL_55:
    if (v21 < v24)
    {
      goto LABEL_135;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v155 = v21;
    v83 = v24;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v23 = sub_255698F94(0, *(v23 + 2) + 1, 1, v23);
    }

    v85 = *(v23 + 2);
    v84 = *(v23 + 3);
    v86 = v85 + 1;
    if (v85 >= v84 >> 1)
    {
      v23 = sub_255698F94((v84 > 1), v85 + 1, 1, v23);
    }

    *(v23 + 2) = v86;
    v87 = &v23[16 * v85];
    v88 = v155;
    *(v87 + 4) = v83;
    *(v87 + 5) = v88;
    v170 = *v151;
    if (!v170)
    {
      goto LABEL_145;
    }

    if (v85)
    {
      break;
    }

LABEL_3:
    v22 = v155;
    v21 = v156[1];
    v14 = v164;
    if (v155 >= v21)
    {
      goto LABEL_106;
    }
  }

  while (1)
  {
    v89 = v86 - 1;
    if (v86 >= 4)
    {
      v94 = &v23[16 * v86 + 32];
      v95 = *(v94 - 64);
      v96 = *(v94 - 56);
      v100 = __OFSUB__(v96, v95);
      v97 = v96 - v95;
      if (v100)
      {
        goto LABEL_122;
      }

      v99 = *(v94 - 48);
      v98 = *(v94 - 40);
      v100 = __OFSUB__(v98, v99);
      v92 = v98 - v99;
      v93 = v100;
      if (v100)
      {
        goto LABEL_123;
      }

      v101 = &v23[16 * v86];
      v103 = *v101;
      v102 = *(v101 + 1);
      v100 = __OFSUB__(v102, v103);
      v104 = v102 - v103;
      if (v100)
      {
        goto LABEL_125;
      }

      v100 = __OFADD__(v92, v104);
      v105 = v92 + v104;
      if (v100)
      {
        goto LABEL_128;
      }

      if (v105 >= v97)
      {
        v123 = &v23[16 * v89 + 32];
        v125 = *v123;
        v124 = *(v123 + 1);
        v100 = __OFSUB__(v124, v125);
        v126 = v124 - v125;
        if (v100)
        {
          goto LABEL_134;
        }

        if (v92 < v126)
        {
          v89 = v86 - 2;
        }

        goto LABEL_96;
      }

      goto LABEL_75;
    }

    if (v86 == 3)
    {
      v90 = *(v23 + 4);
      v91 = *(v23 + 5);
      v100 = __OFSUB__(v91, v90);
      v92 = v91 - v90;
      v93 = v100;
LABEL_75:
      if (v93)
      {
        goto LABEL_124;
      }

      v106 = &v23[16 * v86];
      v108 = *v106;
      v107 = *(v106 + 1);
      v109 = __OFSUB__(v107, v108);
      v110 = v107 - v108;
      v111 = v109;
      if (v109)
      {
        goto LABEL_127;
      }

      v112 = &v23[16 * v89 + 32];
      v114 = *v112;
      v113 = *(v112 + 1);
      v100 = __OFSUB__(v113, v114);
      v115 = v113 - v114;
      if (v100)
      {
        goto LABEL_130;
      }

      if (__OFADD__(v110, v115))
      {
        goto LABEL_131;
      }

      if (v110 + v115 >= v92)
      {
        if (v92 < v115)
        {
          v89 = v86 - 2;
        }

        goto LABEL_96;
      }

      goto LABEL_89;
    }

    v116 = &v23[16 * v86];
    v118 = *v116;
    v117 = *(v116 + 1);
    v100 = __OFSUB__(v117, v118);
    v110 = v117 - v118;
    v111 = v100;
LABEL_89:
    if (v111)
    {
      goto LABEL_126;
    }

    v119 = &v23[16 * v89];
    v121 = *(v119 + 4);
    v120 = *(v119 + 5);
    v100 = __OFSUB__(v120, v121);
    v122 = v120 - v121;
    if (v100)
    {
      goto LABEL_129;
    }

    if (v122 < v110)
    {
      goto LABEL_3;
    }

LABEL_96:
    v127 = v89 - 1;
    if (v89 - 1 >= v86)
    {
      break;
    }

    v128 = *v156;
    if (!*v156)
    {
      goto LABEL_142;
    }

    v129 = v6;
    v6 = v23;
    v130 = *&v23[16 * v127 + 32];
    v131 = v89;
    v132 = *&v23[16 * v89 + 40];
    v133 = (v128 + 8 * v130);
    v134 = (v128 + 8 * *&v23[16 * v89 + 32]);
    v23 = (v128 + 8 * v132);
    v135 = v168;

    sub_255746FE4(v133, v134, v23, v170, v135);
    if (v129)
    {
      swift_bridgeObjectRelease_n();

      return;
    }

    if (v132 < v130)
    {
      goto LABEL_120;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v6 = sub_255747D1C(v6);
    }

    if (v127 >= *(v6 + 2))
    {
      goto LABEL_121;
    }

    v136 = &v6[16 * v127];
    *(v136 + 4) = v130;
    *(v136 + 5) = v132;
    v173 = v6;
    sub_255747C90(v131);
    v23 = v173;
    v86 = *(v173 + 2);
    v6 = 0;
    if (v86 <= 1)
    {
      goto LABEL_3;
    }
  }

  __break(1u);
LABEL_120:
  __break(1u);
LABEL_121:
  __break(1u);
LABEL_122:
  __break(1u);
LABEL_123:
  __break(1u);
LABEL_124:
  __break(1u);
LABEL_125:
  __break(1u);
LABEL_126:
  __break(1u);
LABEL_127:
  __break(1u);
LABEL_128:
  __break(1u);
LABEL_129:
  __break(1u);
LABEL_130:
  __break(1u);
LABEL_131:
  __break(1u);
LABEL_132:
  __break(1u);
LABEL_133:
  __break(1u);
LABEL_134:
  __break(1u);
LABEL_135:
  __break(1u);
LABEL_136:
  __break(1u);
LABEL_137:
  v23 = sub_255747D1C(v23);
LABEL_108:
  v173 = v23;
  v137 = *(v23 + 2);
  if (v137 >= 2)
  {
    do
    {
      v138 = *v156;
      if (!*v156)
      {
        goto LABEL_143;
      }

      v139 = *&v23[16 * v137];
      v140 = *&v23[16 * v137 + 24];
      v141 = (v138 + 8 * v139);
      v142 = (v138 + 8 * *&v23[16 * v137 + 16]);
      v143 = (v138 + 8 * v140);
      v144 = v168;

      sub_255746FE4(v141, v142, v143, v170, v144);
      if (v6)
      {
        break;
      }

      if (v140 < v139)
      {
        goto LABEL_132;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v23 = sub_255747D1C(v23);
      }

      if (v137 - 2 >= *(v23 + 2))
      {
        goto LABEL_133;
      }

      v145 = &v23[16 * v137];
      *v145 = v139;
      *(v145 + 1) = v140;
      v173 = v23;
      sub_255747C90(v137 - 1);
      v23 = v173;
      v137 = *(v173 + 2);
    }

    while (v137 > 1);
  }

  swift_bridgeObjectRelease_n();
}

uint64_t sub_255748E38(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE4A8, &unk_255756FF0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t getEnumTagSinglePayload for AssetPlacement(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_255748EC8(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 1;
  }

  else
  {
    *(result + 8) = 0;
  }

  return result;
}

uint64_t sub_255748EE8@<X0>(void *a2@<X8>)
{
  result = sub_255750E90();
  *a2 = 0;
  a2[1] = 0xE000000000000000;
  return result;
}

unint64_t sub_255748F3C()
{
  result = qword_27F7C03E8;
  if (!qword_27F7C03E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7C03E0, &qword_25575F3C0);
    sub_255748FF8(&qword_27F7BE648, MEMORY[0x277CC95F0], MEMORY[0x277CC95F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7C03E8);
  }

  return result;
}

uint64_t sub_255748FF8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

Swift::tuple_OpaquePointer_OpaquePointer __swiftcall AudioIntensityProcessor.process(buffer:)(AVAudioPCMBuffer buffer)
{
  isa = buffer.super.super.isa;
  __C[1] = *MEMORY[0x277D85DE8];
  v3 = *v1;
  if (*v1)
  {
    goto LABEL_6;
  }

  v4 = [(objc_class *)buffer.super.super.isa format];
  [v4 sampleRate];
  v6 = v5;

  v7 = v6 / 25.0;
  if (COERCE__INT64(fabs(v6 / 25.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_72;
  }

  if (v7 <= -1.0)
  {
LABEL_73:
    __break(1u);
LABEL_74:
    __break(1u);
  }

  if (v7 >= 4294967300.0)
  {
    goto LABEL_74;
  }

  v8 = v7;
  *(v71 + 8) = v8;
  v9 = [(objc_class *)isa format];
  v3 = [objc_allocWithZone(MEMORY[0x277CB83C8]) initWithPCMFormat:v9 frameCapacity:v8];

  *v71 = v3;
LABEL_6:
  v10 = 0;
  v69 = MEMORY[0x277D84F90];
  v70 = v3;
  for (i = [(objc_class *)isa frameLength]; v10 < i && v3 != 0; i = [(objc_class *)isa frameLength])
  {
    v14 = *(v71 + 8);
    if (__CFADD__(v10, v14))
    {
      __break(1u);
LABEL_66:
      __break(1u);
LABEL_67:
      __break(1u);
LABEL_68:
      __break(1u);
LABEL_69:
      __break(1u);
LABEL_70:
      __break(1u);
LABEL_71:
      __break(1u);
LABEL_72:
      __break(1u);
      goto LABEL_73;
    }

    v15 = v3;
    v16 = [(objc_class *)isa frameLength];
    v17 = v16 - v10;
    if (v16 < v10)
    {
      goto LABEL_66;
    }

    v18 = [v15 frameLength];
    v19 = v14 - v18;
    if (v14 < v18)
    {
      goto LABEL_67;
    }

    if (v17 >= v10 + v14)
    {
      v20 = v10 + v14;
    }

    else
    {
      v20 = v17;
    }

    if (v19 >= v20)
    {
      v21 = v20;
    }

    else
    {
      v21 = v19;
    }

    v22 = [v15 floatChannelData];
    if (v22)
    {
      v23 = *v22;
      v24 = [(objc_class *)isa floatChannelData];
      if (v24)
      {
        v25 = *v24;
        v26 = [v15 frameLength];
        v27 = [(objc_class *)isa format];
        v28 = [v27 streamDescription];

        v29 = v28[6] * v21;
        if ((v21 * v28[6]) >> 64 != v29 >> 63)
        {
          goto LABEL_70;
        }

        memcpy((v23 + 4 * v26), (v25 + 4 * v10), v29);
        v3 = v70;
      }
    }

    v30 = [v15 frameLength];
    if (__CFADD__(v30, v21))
    {
      goto LABEL_68;
    }

    [v15 setFrameLength_];
    v31 = [v15 frameLength];
    if (v31 != [v15 frameCapacity])
    {
      goto LABEL_8;
    }

    v32 = [v15 averagePowerPerChannel];
    sub_255669A88(0, &qword_27F7C0438, 0x277CCABB0);
    v33 = sub_255750380();

    if (v33 >> 62)
    {
      if (!sub_255750A30())
      {
LABEL_46:

        goto LABEL_9;
      }
    }

    else if (!*((v33 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_46;
    }

    if ((v33 & 0xC000000000000001) != 0)
    {
      v34 = MEMORY[0x259C3E830](0, v33);
    }

    else
    {
      if (!*((v33 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_71;
      }

      v34 = *(v33 + 32);
    }

    v35 = v34;

    [v35 floatValue];
    v37 = v36;

    v38 = [v15 floatChannelData];
    if (v38)
    {
      v39 = *v38;
      v40 = [v15 frameLength];
      LODWORD(__C[0]) = 2143289344;
      vDSP_maxmgv(v39, 1, __C, v40);
      v41 = __C[0];
      v3 = v70;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        v42 = v67;
      }

      else
      {
        v42 = sub_255699098(0, *(v67 + 16) + 1, 1, v67);
      }

      v44 = *(v42 + 2);
      v43 = *(v42 + 3);
      if (v44 >= v43 >> 1)
      {
        v42 = sub_255699098((v43 > 1), v44 + 1, 1, v42);
      }

      *(v42 + 2) = v44 + 1;
      v68 = v42;
      *&v42[4 * v44 + 32] = v37;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        v45 = v69;
      }

      else
      {
        v45 = sub_255699098(0, *(v69 + 2) + 1, 1, v69);
      }

      v47 = *(v45 + 2);
      v46 = *(v45 + 3);
      if (v47 >= v46 >> 1)
      {
        v45 = sub_255699098((v46 > 1), v47 + 1, 1, v45);
      }

      *(v45 + 2) = v47 + 1;
      v69 = v45;
      *&v45[4 * v47 + 32] = v41;
      [v15 setFrameLength_];
LABEL_8:

      goto LABEL_9;
    }

    v3 = v70;
LABEL_9:
    v12 = __CFADD__(v10, v21);
    v10 += v21;
    if (v12)
    {
      goto LABEL_69;
    }
  }

  v48 = *(v69 + 2);
  v49 = MEMORY[0x277D84F90];
  if (v48)
  {
    __C[0] = MEMORY[0x277D84F90];
    sub_255672DE4(0, v48, 0);
    v50 = v67;
    v51 = __C[0];
    v52 = (v69 + 32);
    v53 = *(__C[0] + 16);
    do
    {
      v54 = *v52;
      __C[0] = v51;
      v55 = v51[3];
      if (v53 >= v55 >> 1)
      {
        sub_255672DE4((v55 > 1), v53 + 1, 1);
        v50 = v67;
        v51 = __C[0];
      }

      v51[2] = v53 + 1;
      *&v51[v53 + 4] = v54;
      ++v52;
      ++v53;
      --v48;
    }

    while (v48);
  }

  else
  {
    v51 = MEMORY[0x277D84F90];
    v50 = v67;
  }

  v56 = *(v50 + 16);
  v57 = v50;
  if (v56)
  {
    __C[0] = v49;
    sub_255672DE4(0, v56, 0);
    v58 = __C[0];
    v59 = *(__C[0] + 16);
    v60 = 32;
    v61 = v57;
    do
    {
      v62 = *(v61 + v60);
      __C[0] = v58;
      v63 = v58[3];
      if (v59 >= v63 >> 1)
      {
        sub_255672DE4((v63 > 1), v59 + 1, 1);
        v61 = v67;
        v58 = __C[0];
      }

      v58[2] = v59 + 1;
      *&v58[v59 + 4] = v62;
      v60 += 4;
      ++v59;
      --v56;
    }

    while (v56);
  }

  else
  {

    v58 = MEMORY[0x277D84F90];
  }

  v64 = v51;
  v65 = v58;
  result._1._rawValue = v65;
  result._0._rawValue = v64;
  return result;
}

unint64_t sub_2557496D4(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = [a1 floatChannelData];
  v3 = v2;
  if (v2)
  {
    v4 = *v2;
    __C = 2143289344;
    vDSP_maxmgv(v4, 1, &__C, [a1 frameLength]);
    v5 = __C;
  }

  else
  {
    v5 = 0;
  }

  return v5 | ((v3 == 0) << 32);
}

uint64_t AudioIntensityProcessor.readAudioIntensityLevels(from:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[19] = a3;
  v4[20] = v3;
  if (a1)
  {
    swift_getObjectType();
    v5 = sub_255750490();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v4[21] = v5;
  v4[22] = v7;

  return MEMORY[0x2822009F8](sub_255749858, v5, v7);
}

uint64_t sub_255749858()
{
  v1 = [objc_allocWithZone(MEMORY[0x277CB83A8]) initStandardFormatWithSampleRate:1 channels:48000.0];
  *(v0 + 184) = v1;
  if (!v1)
  {
    __break(1u);
  }

  v2 = v1;
  v3 = *(v0 + 152);
  v4 = v2;
  v5 = objc_allocWithZone(MEMORY[0x277CE6410]);
  *(v0 + 80) = 0;
  v6 = v3;
  v7 = v4;
  v8 = [v5 initWithAsset:v6 error:v0 + 80];
  *(v0 + 192) = v8;
  v9 = *(v0 + 80);
  if (v8)
  {
    v10 = *(v0 + 152);
    v11 = v9;

    v12 = *MEMORY[0x277CE5E48];
    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 144;
    *(v0 + 24) = sub_255749ADC;
    v13 = swift_continuation_init();
    *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7C0440, &unk_25575F3F8);
    *(v0 + 80) = MEMORY[0x277D85DD0];
    *(v0 + 88) = 1107296256;
    *(v0 + 96) = sub_25574A2E0;
    *(v0 + 104) = &block_descriptor_2;
    *(v0 + 112) = v13;
    [v10 loadTracksWithMediaType:v12 completionHandler:v0 + 80];

    return MEMORY[0x282200938](v0 + 16);
  }

  else
  {
    v14 = *(v0 + 152);
    v15 = v9;
    sub_25574ED90();

    swift_willThrow();
    v16 = *(v0 + 8);

    return v16();
  }
}

uint64_t sub_255749ADC()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 200) = v2;
  if (v2)
  {

    v3 = *(v1 + 168);
    v4 = *(v1 + 176);
    v5 = sub_25574A224;
  }

  else
  {
    v3 = *(v1 + 168);
    v4 = *(v1 + 176);
    v5 = sub_255749C28;
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

uint64_t sub_255749C28()
{
  v2 = v0[23];
  v1 = v0[24];
  v3 = [v2 settings];

  sub_255750080();
  v4 = objc_allocWithZone(MEMORY[0x277CE6418]);
  sub_255669A88(0, &qword_27F7C0448, 0x277CE6450);
  v5 = sub_255750370();

  v6 = sub_255750070();

  v7 = [v4 initWithAudioTracks:v5 audioSettings:v6];

  v8 = v7;
  [v8 setAlwaysCopiesSampleData_];
  LODWORD(v1) = [v1 canAddOutput_];

  if (v1)
  {
    v9 = v0[24];
    [v9 addOutput_];
    [v9 startReading];
  }

  v11 = v0[23];
  v10 = v0[24];
  v57 = MEMORY[0x277D84F90];
  v58 = MEMORY[0x277D84F90];
  v59 = v0[19];
  v61 = v11;
  v62 = v10;
  v63 = v8;
  v12 = v59;
  v13 = v11;
  v14 = v10;
  v15 = v8;
  *&v16 = AVAssetReaderSequence.next()();
  if (v18)
  {
LABEL_7:
    v25 = v0[23];
    v24 = v0[24];
    v26 = v0[19];
    v0[10] = v18;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE118, &qword_255755C80);
    swift_willThrowTypedImpl();

    v27 = v0[1];

    return v27();
  }

  v19 = v16;
  while (1)
  {
    v20 = v0[20];
    if (!v19)
    {
      break;
    }

    v21 = v19;
    v22 = AudioIntensityProcessor.process(buffer:)(*(&v17 - 1));
    sub_25574A91C(v22._0._rawValue);
    sub_25574A91C(v22._1._rawValue);

    *(&v17 - 1) = AVAssetReaderSequence.next()();
    v19 = v23;
    if (v18)
    {
      goto LABEL_7;
    }
  }

  if (*v20)
  {
    v29 = *v20;
    if (![v29 frameLength] || (v60 = *v0[20], v30 = v60, v31 = sub_2557496D4(v29), v60, (v31 & 0x100000000) != 0))
    {
      v49 = v0[23];
      v48 = v0[24];
      v50 = v0[19];
    }

    else
    {
      v32 = [v29 averagePowerPerChannel];
      sub_255669A88(0, &qword_27F7C0438, 0x277CCABB0);
      v33 = sub_255750380();

      if (v33 >> 62)
      {
        if (sub_255750A30())
        {
          goto LABEL_15;
        }
      }

      else if (*((v33 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
LABEL_15:
        if ((v33 & 0xC000000000000001) != 0)
        {
          v34 = MEMORY[0x259C3E830](0, v33);
        }

        else
        {
          if (!*((v33 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
          }

          v34 = *(v33 + 32);
        }

        v35 = v34;

        [v35 floatValue];
        v37 = v36;

        v38 = v57;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v38 = sub_25569919C(0, *(v57 + 2) + 1, 1, v57);
        }

        v39 = *&v31;
        v41 = *(v38 + 2);
        v40 = *(v38 + 3);
        if (v41 >= v40 >> 1)
        {
          v56 = sub_25569919C((v40 > 1), v41 + 1, 1, v38);
          v39 = *&v31;
          v38 = v56;
        }

        *(v38 + 2) = v41 + 1;
        *&v38[8 * v41 + 32] = v39;
        v57 = v38;
        v42 = v58;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v42 = sub_25569919C(0, *(v58 + 2) + 1, 1, v58);
        }

        v44 = *(v42 + 2);
        v43 = *(v42 + 3);
        if (v44 >= v43 >> 1)
        {
          v42 = sub_25569919C((v43 > 1), v44 + 1, 1, v42);
        }

        v46 = v0[23];
        v45 = v0[24];
        v47 = v0[19];

        *(v42 + 2) = v44 + 1;
        *&v42[8 * v44 + 32] = v37;
        v58 = v42;
        goto LABEL_30;
      }

      v50 = v0[23];
      v48 = v0[24];
      v55 = v0[19];
    }
  }

  else
  {
    v52 = v0[23];
    v51 = v0[24];
    v53 = v0[19];
  }

LABEL_30:
  v54 = v0[1];

  return v54(v57, v58);
}

uint64_t sub_25574A224(uint64_t a1)
{
  v2 = *(v1 + 192);
  v3 = *(v1 + 184);
  v4 = *(v1 + 152);
  swift_willThrow();

  v5 = *(v1 + 8);

  return v5();
}

uint64_t sub_25574A2E0(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE118, &qword_255755C80);
    v5 = swift_allocError();
    *v6 = a3;
    v7 = a3;

    return MEMORY[0x282200958](v4, v5);
  }

  else
  {
    sub_255669A88(0, &qword_27F7C0448, 0x277CE6450);
    **(*(v4 + 64) + 40) = sub_255750380();

    return MEMORY[0x282200950](v4);
  }
}

uint64_t sub_25574A3D8(unint64_t a1)
{
  if (a1 >> 62)
  {
    v3 = sub_255750A30();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!(*v1 >> 62))
  {
    v4 = *((*v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v5 = __OFADD__(v4, v3);
    result = v4 + v3;
    if (!v5)
    {
      goto LABEL_5;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v13 = sub_255750A30();
  v5 = __OFADD__(v13, v3);
  result = v13 + v3;
  if (v5)
  {
    goto LABEL_13;
  }

LABEL_5:
  sub_25574AACC(result, 1);
  v7 = *v1;
  v8 = *v1 & 0xFFFFFFFFFFFFFF8;
  sub_255747F28(v8 + 8 * *(v8 + 0x10) + 32, (*(v8 + 0x18) >> 1) - *(v8 + 0x10), a1);
  v10 = v9;

  if (v10 < v3)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v10 < 1)
  {
LABEL_9:
    *v1 = v7;
    return result;
  }

  v11 = *(v8 + 16);
  v5 = __OFADD__(v11, v10);
  v12 = v11 + v10;
  if (!v5)
  {
    *(v8 + 16) = v12;
    goto LABEL_9;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_25574A4C8(uint64_t a1)
{
  v6 = v1;
  v7 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v8 = sub_255750A30();
  }

  else
  {
    v8 = *(a1 + 16);
  }

  if (!(*v1 >> 62))
  {
    v9 = *((*v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v10 = __OFADD__(v9, v8);
    result = v9 + v8;
    if (!v10)
    {
      goto LABEL_6;
    }

LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v16 = sub_255750A30();
  v10 = __OFADD__(v16, v8);
  result = v16 + v8;
  if (v10)
  {
    goto LABEL_14;
  }

LABEL_6:
  sub_25574AACC(result, 1);
  v2 = *v1;
  v3 = *v1 & 0xFFFFFFFFFFFFFF8;
  v12 = *(v3 + 0x10);
  v13 = (*(v3 + 0x18) >> 1) - v12;
  result = sub_25574570C(&v33, (v3 + 8 * v12 + 32), v13, v7);
  if (result < v8)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (result >= 1)
  {
    v14 = *(v3 + 16);
    v10 = __OFADD__(v14, result);
    v15 = v14 + result;
    if (v10)
    {
      __break(1u);
      goto LABEL_20;
    }

    *(v3 + 16) = v15;
  }

  if (result != v13)
  {
LABEL_11:
    result = sub_25568B1C8(v33);
    *v6 = v2;
    return result;
  }

LABEL_16:
  v8 = *(v3 + 16);
  v7 = v33;
  v3 = v34;
  v5 = v36;
  v30 = v35;
  v4 = v37;
  if (v33 < 0)
  {
LABEL_20:
    if (!sub_255750A60())
    {
      goto LABEL_11;
    }

    type metadata accessor for JournalMO();
    result = swift_dynamicCast();
    v18 = v32;
    goto LABEL_31;
  }

  if (!v37)
  {
    v19 = (v35 + 64) >> 6;
    if (v19 <= (v36 + 1))
    {
      v20 = v36 + 1;
    }

    else
    {
      v20 = (v35 + 64) >> 6;
    }

    v21 = v20 - 1;
    while (1)
    {
      v17 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        goto LABEL_59;
      }

      if (v17 >= v19)
      {
        v18 = 0;
        v4 = 0;
        goto LABEL_30;
      }

      v4 = *(v34 + 8 * v17);
      ++v5;
      if (v4)
      {
        goto LABEL_29;
      }
    }
  }

  v17 = v36;
LABEL_29:
  v22 = __clz(__rbit64(v4));
  v4 &= v4 - 1;
  v18 = *(*(v33 + 48) + ((v17 << 9) | (8 * v22)));
  result = v18;
  v21 = v17;
LABEL_30:
  v36 = v21;
  v37 = v4;
  v5 = v21;
LABEL_31:
  if (!v18)
  {
    goto LABEL_11;
  }

  v23 = (v30 + 64) >> 6;
LABEL_33:
  if (v8 + 1 > *((v2 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    result = sub_2557503B0();
  }

  v2 = *v6;
  v24 = *((*v6 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1;
  v29 = *v6 & 0xFFFFFFFFFFFFFF8;
  if (v8 > v24)
  {
    v24 = v8;
  }

  v31 = v24;
  while (1)
  {
    while (1)
    {
      if (v8 == v31)
      {
        v8 = v31;
        *(v29 + 16) = v31;
        goto LABEL_33;
      }

      *(v29 + 32 + 8 * v8++) = v18;
      if ((v7 & 0x8000000000000000) == 0)
      {
        break;
      }

      if (sub_255750A60())
      {
        type metadata accessor for JournalMO();
        result = swift_dynamicCast();
        v18 = v32;
        if (v32)
        {
          continue;
        }
      }

      goto LABEL_56;
    }

    if (!v4)
    {
      break;
    }

    v25 = v5;
LABEL_54:
    v28 = __clz(__rbit64(v4));
    v4 &= v4 - 1;
    v18 = *(*(v7 + 48) + ((v25 << 9) | (8 * v28)));
    result = v18;
    v27 = v25;
LABEL_39:
    v33 = v7;
    v34 = v3;
    v35 = v30;
    v36 = v27;
    v5 = v27;
    v37 = v4;
    if (!v18)
    {
LABEL_56:
      *(v29 + 16) = v8;
      goto LABEL_11;
    }
  }

  if (v23 <= (v5 + 1))
  {
    v26 = v5 + 1;
  }

  else
  {
    v26 = (v30 + 64) >> 6;
  }

  v27 = v26 - 1;
  while (1)
  {
    v25 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      break;
    }

    if (v25 >= v23)
    {
      v18 = 0;
      v4 = 0;
      goto LABEL_39;
    }

    v4 = *(v3 + 8 * v25);
    ++v5;
    if (v4)
    {
      goto LABEL_54;
    }
  }

  __break(1u);
LABEL_59:
  __break(1u);
  return result;
}

char *sub_25574A830(char *result)
{
  v2 = *(result + 2);
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

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 3) >> 1)
  {
    if (*(v6 + 2))
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

  result = sub_255698C80(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 2))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 2);
  if ((*(v3 + 3) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy(&v3[16 * v7 + 32], v6 + 32, 16 * v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 2);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 2) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

char *sub_25574A91C(char *result)
{
  v2 = *(result + 2);
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

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 3) >> 1)
  {
    if (*(v6 + 2))
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

  result = sub_25569919C(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 2))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 2);
  if ((*(v3 + 3) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy(&v3[8 * v7 + 32], v6 + 32, 8 * v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 2);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 2) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t __swift_memcpy12_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 2);
  *result = v2;
  return result;
}

uint64_t sub_25574AA1C(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 12))
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

uint64_t sub_25574AA78(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 12) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 12) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_25574AACC(uint64_t a1, char a2)
{
  v4 = *v2;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v2 = v4;
  if (result)
  {
    if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
    {
      if (a1 <= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }
  }

  else if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
  {
    goto LABEL_9;
  }

  sub_255750A30();
LABEL_9:
  result = sub_255750B70();
  *v2 = result;
  return result;
}

uint64_t AVAssetReaderSequence.init(asset:audioFormat:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[20] = a4;
  v5[21] = a5;
  v5[19] = a1;
  if (a2)
  {
    swift_getObjectType();
    v6 = sub_255750490();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  v5[22] = v6;
  v5[23] = v8;

  return MEMORY[0x2822009F8](sub_25574AC38, v6, v8);
}

uint64_t sub_25574AC38()
{
  v1 = v0[20];
  v2 = v0[21];
  v3 = objc_allocWithZone(MEMORY[0x277CE6410]);
  v0[10] = 0;
  v4 = v1;
  v5 = v2;
  v6 = [v3 initWithAsset:v4 error:v0 + 10];
  v0[24] = v6;
  v7 = v0[10];
  if (v6)
  {
    v8 = v0[20];
    v9 = *MEMORY[0x277CE5E48];
    v0[2] = v0;
    v0[7] = v0 + 18;
    v0[3] = sub_25574AE74;
    v10 = swift_continuation_init();
    v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7C0440, &unk_25575F3F8);
    v0[10] = MEMORY[0x277D85DD0];
    v0[11] = 1107296256;
    v0[12] = sub_25574A2E0;
    v0[13] = &block_descriptor_3;
    v0[14] = v10;
    v11 = v7;
    [v8 loadTracksWithMediaType:v9 completionHandler:v0 + 10];

    return MEMORY[0x282200938](v0 + 2);
  }

  else
  {
    v13 = v0[20];
    v12 = v0[21];
    v14 = v7;
    sub_25574ED90();

    swift_willThrow();
    v15 = v0[1];

    return v15();
  }
}

uint64_t sub_25574AE74()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 200) = v2;
  if (v2)
  {

    v3 = *(v1 + 176);
    v4 = *(v1 + 184);
    v5 = sub_25574B1B0;
  }

  else
  {
    v3 = *(v1 + 176);
    v4 = *(v1 + 184);
    v5 = sub_25574AFC0;
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

uint64_t sub_25574AFC0()
{
  v1 = *(v0 + 192);
  v2 = *(v0 + 168);
  v3 = [v2 settings];

  sub_255750080();
  v4 = objc_allocWithZone(MEMORY[0x277CE6418]);
  sub_25574B2C8();
  v5 = sub_255750370();

  v6 = sub_255750070();

  v7 = [v4 initWithAudioTracks:v5 audioSettings:v6];

  v8 = v7;
  [v8 setAlwaysCopiesSampleData_];
  LODWORD(v1) = [v1 canAddOutput_];

  if (v1)
  {
    v9 = *(v0 + 192);
    [v9 addOutput_];
    [v9 startReading];
  }

  v10 = *(v0 + 192);
  v11 = *(v0 + 152);
  *v11 = *(v0 + 160);
  *(v11 + 16) = v10;
  *(v11 + 24) = v8;
  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_25574B1B0(uint64_t a1)
{
  v2 = v1[24];
  v4 = v1[20];
  v3 = v1[21];
  swift_willThrow();

  v5 = v1[1];

  return v5();
}

id AVAssetReaderSequence.makeAsyncIterator()@<X0>(void *a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  v9 = *(v1 + 24);
  *a1 = *v1;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v9;
  v5 = v2;
  v6 = v3;
  v7 = v4;

  return v9;
}

unint64_t sub_25574B2C8()
{
  result = qword_27F7C0448;
  if (!qword_27F7C0448)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F7C0448);
  }

  return result;
}

AVAudioPCMBuffer_optional __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> AVAssetReaderSequence.next()()
{
  v2 = sub_2557507F0();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *v0;
  v7 = *(v0 + 2);
  v6 = *(v0 + 3);
  v8 = [v6 copyNextSampleBuffer];
  if (v8)
  {
    v11 = v8;
    while (1)
    {
      v12 = sub_2557507E0();
      if (v12 >= 1)
      {
        break;
      }

      v8 = [v6 copyNextSampleBuffer];
      v11 = v8;
      if (!v8)
      {
        goto LABEL_8;
      }
    }

    v13[1] = v13;
    MEMORY[0x28223BE20](v12);
    *&v13[-4] = v14;
    v13[-2] = v7;
    v13[-1] = v6;
    v15 = MEMORY[0x277D84F90];
    sub_25574B6A0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7C0458, &qword_25575F460);
    sub_25574B6F8();
    sub_2557509A0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7C0468, &qword_25575F468);
    sub_2557507D0();
    (*(v3 + 8))(v5, v2);

    if (!v1)
    {
      v8 = v16;
    }
  }

LABEL_8:
  result.value.super._impl = v9;
  result.value.super.super.isa = v8;
  result.is_nil = v10;
  return result;
}

void sub_25574B558(void *a1@<X1>, uint64_t a2@<X3>, void *a3@<X8>)
{
  v6 = sub_25574FFE0();
  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  v8 = objc_allocWithZone(MEMORY[0x277CB83C8]);
  v12[4] = nullsub_1;
  v12[5] = v7;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 1107296256;
  v12[2] = sub_25574B9BC;
  v12[3] = &block_descriptor_5_0;
  v9 = _Block_copy(v12);
  v10 = a1;

  v11 = [v8 initWithPCMFormat:a2 bufferListNoCopy:v6 deallocator:v9];
  _Block_release(v9);
  *a3 = v11;
}

unint64_t sub_25574B6A0()
{
  result = qword_27F7C0450;
  if (!qword_27F7C0450)
  {
    sub_2557507F0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7C0450);
  }

  return result;
}

unint64_t sub_25574B6F8()
{
  result = qword_27F7C0460;
  if (!qword_27F7C0460)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7C0458, &qword_25575F460);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7C0460);
  }

  return result;
}

unint64_t sub_25574B760()
{
  result = qword_27F7C0470;
  if (!qword_27F7C0470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7C0470);
  }

  return result;
}

__n128 sub_25574B7B4@<Q0>(_OWORD *a1@<X8>)
{
  result = *v1;
  v3 = *(v1 + 16);
  *a1 = *v1;
  a1[1] = v3;
  return result;
}

uint64_t sub_25574B7CC(unint64_t *a1)
{
  v3 = AVAssetReaderSequence.next()();
  if (!v4)
  {
    *a1 = v3;
  }

  v5 = *(v1 + 8);

  return v5();
}

uint64_t sub_25574B854(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[4] = v4;
  v5[5] = a4;
  v5[3] = a1;
  if (a2)
  {
    swift_getObjectType();
    v6 = sub_255750490();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  return MEMORY[0x2822009F8](sub_25574B8E8, v6, v8);
}

uint64_t sub_25574B8E8()
{
  v1 = AVAssetReaderSequence.next()();
  if (v2)
  {
    v3 = *(v0 + 40);
    *(v0 + 16) = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE118, &qword_255755C80);
    swift_willThrowTypedImpl();
    *v3 = v2;
  }

  else
  {
    **(v0 + 24) = v1;
  }

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_25574B9BC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

uint64_t block_copy_helper_3_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id AppStorageMO.__allocating_init(entity:insertInto:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithEntity:a1 insertIntoManagedObjectContext:a2];

  return v5;
}

id AppStorageMO.init(entity:insertInto:)(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = type metadata accessor for AppStorageMO();
  v5 = objc_msgSendSuper2(&v7, sel_initWithEntity_insertIntoManagedObjectContext_, a1, a2);

  return v5;
}

id AppStorageMO.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AppStorageMO();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id JournalEntryAssetAttachmentMO.__allocating_init(entity:insertInto:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithEntity:a1 insertIntoManagedObjectContext:a2];

  return v5;
}

id JournalEntryAssetAttachmentMO.init(entity:insertInto:)(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = type metadata accessor for JournalEntryAssetAttachmentMO();
  v5 = objc_msgSendSuper2(&v7, sel_initWithEntity_insertIntoManagedObjectContext_, a1, a2);

  return v5;
}

id JournalEntryAssetAttachmentMO.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for JournalEntryAssetAttachmentMO();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id JournalEntryAssetFileAttachmentMO.__allocating_init(entity:insertInto:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithEntity:a1 insertIntoManagedObjectContext:a2];

  return v5;
}

id JournalEntryAssetFileAttachmentMO.init(entity:insertInto:)(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = type metadata accessor for JournalEntryAssetFileAttachmentMO();
  v5 = objc_msgSendSuper2(&v7, sel_initWithEntity_insertIntoManagedObjectContext_, a1, a2);

  return v5;
}

id JournalEntryAssetFileAttachmentMO.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for JournalEntryAssetFileAttachmentMO();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id JournalEntryAssetMO.__allocating_init(entity:insertInto:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithEntity:a1 insertIntoManagedObjectContext:a2];

  return v5;
}

id JournalEntryAssetMO.init(entity:insertInto:)(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = type metadata accessor for JournalEntryAssetMO();
  v5 = objc_msgSendSuper2(&v7, sel_initWithEntity_insertIntoManagedObjectContext_, a1, a2);

  return v5;
}

id JournalEntryAssetMO.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for JournalEntryAssetMO();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id JournalEntryMO.__allocating_init(entity:insertInto:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithEntity:a1 insertIntoManagedObjectContext:a2];

  return v5;
}

id JournalEntryMO.init(entity:insertInto:)(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = type metadata accessor for JournalEntryMO();
  v5 = objc_msgSendSuper2(&v7, sel_initWithEntity_insertIntoManagedObjectContext_, a1, a2);

  return v5;
}

id JournalEntryMO.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for JournalEntryMO();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id JournalMO.__allocating_init(entity:insertInto:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithEntity:a1 insertIntoManagedObjectContext:a2];

  return v5;
}

id JournalMO.init(entity:insertInto:)(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = type metadata accessor for JournalMO();
  v5 = objc_msgSendSuper2(&v7, sel_initWithEntity_insertIntoManagedObjectContext_, a1, a2);

  return v5;
}

id JournalMO.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for JournalMO();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id SyncDataMO.__allocating_init(entity:insertInto:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithEntity:a1 insertIntoManagedObjectContext:a2];

  return v5;
}

id SyncDataMO.init(entity:insertInto:)(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = type metadata accessor for SyncDataMO();
  v5 = objc_msgSendSuper2(&v7, sel_initWithEntity_insertIntoManagedObjectContext_, a1, a2);

  return v5;
}

id SyncDataMO.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SyncDataMO();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_25574C18C(void *a1)
{
  [v1 setMergeableAttributes_];
}

void (*sub_25574C1D4(void *a1))(id *a1)
{
  a1[1] = v1;
  *a1 = [v1 mergeableAttributes];
  return sub_25574C230;
}

void sub_25574C230(id *a1)
{
  v1 = *a1;
  [a1[1] setMergeableAttributes_];
}

uint64_t sub_25574C278()
{
  v1 = [v0 recordSystemFields];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_25574EF90();

  return v3;
}

void sub_25574C2E0(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 == 15)
  {
    v5 = 0;
    [v2 setRecordSystemFields_];
  }

  else
  {
    v5 = sub_25574EF80();
    sub_2556A15B8(a1, a2);
    [v2 setRecordSystemFields_];
  }
}

uint64_t (*sub_25574C364(uint64_t **a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = sub_25574C41C(v2);
  return sub_25574C3D4;
}

void sub_25574C3D4(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

void (*sub_25574C41C(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  v3 = [v1 recordSystemFields];
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

  *a1 = v5;
  a1[1] = v7;
  return sub_25574C4A4;
}

void sub_25574C4A4(uint64_t *a1, char a2)
{
  v3 = a1[1];
  if (a2)
  {
    v4 = *a1;
    if (v3 >> 60 == 15)
    {
      v5 = 0;
    }

    else
    {
      sub_255674F54(*a1, v3);
      v5 = sub_25574EF80();
      sub_2556A15B8(v4, v3);
    }

    [a1[2] setRecordSystemFields_];

    sub_2556A15B8(v4, v3);
  }

  else
  {
    if (v3 >> 60 == 15)
    {
      v7 = 0;
      [a1[2] setRecordSystemFields_];
    }

    else
    {
      v6 = *a1;
      v7 = sub_25574EF80();
      sub_2556A15B8(v6, v3);
      [a1[2] setRecordSystemFields_];
    }
  }
}

id (*sub_25574C5F4(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  *(a1 + 8) = [v1 isUploadedToCloud];
  return sub_25574C648;
}

id static AppStorageMO.fetchRequest()()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v1 = sub_255750180();
  v2 = [v0 initWithEntityName_];

  return v2;
}

unint64_t sub_25574C6D4()
{
  result = qword_27F7C0478;
  if (!qword_27F7C0478)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27F7BED20, &unk_2557551D0);
    sub_2556C635C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7C0478);
  }

  return result;
}

void sub_25574C758(uint64_t a1, void **a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F7BED20, &unk_2557551D0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v11 - v5;
  sub_25567B1A4(a1, &v11 - v5);
  v7 = *a2;
  v8 = sub_25574F0D0();
  v9 = *(v8 - 8);
  v10 = 0;
  if ((*(v9 + 48))(v6, 1, v8) != 1)
  {
    v10 = sub_25574F050();
    (*(v9 + 8))(v6, v8);
  }

  [v7 setId_];
}

void sub_25574C884(id *a1@<X0>, SEL *a2@<X3>, uint64_t *a3@<X8>)
{
  v4 = [*a1 *a2];
  if (v4)
  {
    v5 = v4;
    v6 = sub_25574EF90();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0xF000000000000000;
  }

  *a3 = v6;
  a3[1] = v8;
}

void sub_25574C8E8(void *a1, void **a2, uint64_t a3, uint64_t a4, SEL *a5)
{
  v6 = *a2;
  if (a1[1] >> 60 == 15)
  {
    v7 = 0;
  }

  else
  {
    v7 = sub_25574EF80();
  }

  v8 = v7;
  [v6 *a5];
}

uint64_t sub_25574C960@<X0>(uint64_t a1@<X8>)
{
  v3 = [*v1 id];
  if (v3)
  {
    v4 = v3;
    sub_25574F080();

    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = sub_25574F0D0();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, 1, v6);
}

id static JournalEntryAssetAttachmentMO.fetchRequest()()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v1 = sub_255750180();
  v2 = [v0 initWithEntityName_];

  return v2;
}

void sub_25574CAAC(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 data];
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

void sub_25574CB14(void *a1, void **a2)
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
  [v2 setData_];
}

uint64_t sub_25574CB8C@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for JournalEntryAssetAttachmentMO();
  result = sub_255750B30();
  *a2 = result;
  return result;
}

void (*sub_25574CBF4(uint64_t **a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = sub_25574C41C(v2);
  return sub_25574C3D4;
}

void sub_25574CC88(id *a1@<X0>, SEL *a2@<X3>, uint64_t *a3@<X8>)
{
  v4 = [*a1 *a2];
  if (v4)
  {
    v5 = v4;
    v6 = sub_2557501B0();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  *a3 = v6;
  a3[1] = v8;
}

void sub_25574CCEC(void *a1, void **a2, uint64_t a3, uint64_t a4, SEL *a5)
{
  v6 = *a2;
  if (a1[1])
  {
    v7 = sub_255750180();
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;
  [v6 *a5];
}

uint64_t sub_25574CD5C@<X0>(id *a1@<X0>, SEL *a2@<X3>, uint64_t a3@<X8>)
{
  v4 = [*a1 *a2];
  if (v4)
  {
    v5 = v4;
    sub_25574F080();

    v6 = 0;
  }

  else
  {
    v6 = 1;
  }

  v7 = sub_25574F0D0();
  v8 = *(*(v7 - 8) + 56);

  return v8(a3, v6, 1, v7);
}

void sub_25574CDFC(uint64_t a1, void **a2, uint64_t a3, uint64_t a4, SEL *a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F7BED20, &unk_2557551D0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v15 - v9;
  sub_25567B1A4(a1, &v15 - v9);
  v11 = *a2;
  v12 = sub_25574F0D0();
  v13 = *(v12 - 8);
  v14 = 0;
  if ((*(v13 + 48))(v10, 1, v12) != 1)
  {
    v14 = sub_25574F050();
    (*(v13 + 8))(v10, v12);
  }

  [v11 *a5];
}

void sub_25574CF28(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 recordSystemFields];
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

void sub_25574CF90(void *a1, void **a2)
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
  [v2 setRecordSystemFields_];
}

void (*sub_25574D044(uint64_t **a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = sub_25574C41C(v2);
  return sub_25574C3D4;
}

void sub_25574D0B4(uint64_t a1, void **a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F7BED20, &unk_2557551D0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v11 - v5;
  sub_255663294(a1, &v11 - v5, &unk_27F7BED20, &unk_2557551D0);
  v7 = *a2;
  v8 = sub_25574F0D0();
  v9 = *(v8 - 8);
  v10 = 0;
  if ((*(v9 + 48))(v6, 1, v8) != 1)
  {
    v10 = sub_25574F050();
    (*(v9 + 8))(v6, v8);
  }

  [v7 setId_];
}

void sub_25574D1F0(uint64_t a1, void **a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F7BED20, &unk_2557551D0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v11 - v5;
  sub_255663294(a1, &v11 - v5, &unk_27F7BED20, &unk_2557551D0);
  v7 = *a2;
  v8 = sub_25574F0D0();
  v9 = *(v8 - 8);
  v10 = 0;
  if ((*(v9 + 48))(v6, 1, v8) != 1)
  {
    v10 = sub_25574F050();
    (*(v9 + 8))(v6, v8);
  }

  [v7 setParentID_];
}

void sub_25574D32C(uint64_t a1, void **a2, uint64_t a3, uint64_t a4, SEL *a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEB40, &unk_255754E40);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v15 - v9;
  sub_255663294(a1, &v15 - v9, &qword_27F7BEB40, &unk_255754E40);
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

uint64_t sub_25574D468@<X0>(id *a1@<X0>, SEL *a2@<X3>, void (*a3)(void)@<X4>, uint64_t (*a4)(void)@<X5>, uint64_t a5@<X8>)
{
  v8 = [*a1 *a2];
  if (v8)
  {
    v9 = v8;
    a3();

    v10 = 0;
  }

  else
  {
    v10 = 1;
  }

  v11 = a4(0);
  v12 = *(*(v11 - 8) + 56);

  return v12(a5, v10, 1, v11);
}

void sub_25574D520(uint64_t a1, void **a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F7BED20, &unk_2557551D0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v11 - v5;
  sub_255663294(a1, &v11 - v5, &unk_27F7BED20, &unk_2557551D0);
  v7 = *a2;
  v8 = sub_25574F0D0();
  v9 = *(v8 - 8);
  v10 = 0;
  if ((*(v9 + 48))(v6, 1, v8) != 1)
  {
    v10 = sub_25574F050();
    (*(v9 + 8))(v6, v8);
  }

  [v7 setSuggestionId_];
}

void sub_25574D728(uint64_t a1, void **a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F7BED20, &unk_2557551D0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v11 - v5;
  sub_255663294(a1, &v11 - v5, &unk_27F7BED20, &unk_2557551D0);
  v7 = *a2;
  v8 = sub_25574F0D0();
  v9 = *(v8 - 8);
  v10 = 0;
  if ((*(v9 + 48))(v6, 1, v8) != 1)
  {
    v10 = sub_25574F050();
    (*(v9 + 8))(v6, v8);
  }

  [v7 setId_];
}

void sub_25574D8F8(uint64_t a1, void **a2)
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

void sub_25574DA68(uint64_t a1, void **a2)
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

  [v7 setUpdatedDate_];
}

void sub_25574DBD8(uint64_t a1, void **a2)
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

  [v7 setBundleEndDate_];
}

void sub_25574DD78(uint64_t a1, void **a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F7BED20, &unk_2557551D0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v11 - v5;
  sub_255663294(a1, &v11 - v5, &unk_27F7BED20, &unk_2557551D0);
  v7 = *a2;
  v8 = sub_25574F0D0();
  v9 = *(v8 - 8);
  v10 = 0;
  if ((*(v9 + 48))(v6, 1, v8) != 1)
  {
    v10 = sub_25574F050();
    (*(v9 + 8))(v6, v8);
  }

  [v7 setBundleId_];
}

void sub_25574DEE8(uint64_t a1, void **a2)
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

  [v7 setBundleDate_];
}

void sub_25574E0A0(uint64_t a1, void **a2)
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

  [v7 setDeletedOnDate_];
}

void (*sub_25574E1DC(uint64_t **a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = sub_25574C41C(v2);
  return sub_25574C3D4;
}

void sub_25574E24C(uint64_t a1, void **a2)
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

  [v7 setEntryDataUpdateDate_];
}

uint64_t sub_25574E388@<X0>(id *a1@<X0>, SEL *a2@<X3>, void (*a3)(void)@<X4>, uint64_t (*a4)(void)@<X5>, uint64_t a5@<X8>)
{
  v8 = [*a1 *a2];
  if (v8)
  {
    v9 = v8;
    a3();

    v10 = 0;
  }

  else
  {
    v10 = 1;
  }

  v11 = a4(0);
  v12 = *(*(v11 - 8) + 56);

  return v12(a5, v10, 1, v11);
}

void sub_25574E440(uint64_t a1, void **a2)
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

  [v7 setRecentlyDeletedEntryDate_];
}

id sub_25574E60C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 mergeableAttributes];
  *a2 = result;
  return result;
}

uint64_t sub_25574E65C@<X0>(id *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = [*a1 updatedDate];
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

void sub_25574E700(uint64_t a1, void **a2)
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

  [v7 setUpdatedDate_];
}

void sub_25574E83C(uint64_t a1, void **a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F7BED20, &unk_2557551D0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v11 - v5;
  sub_255663294(a1, &v11 - v5, &unk_27F7BED20, &unk_2557551D0);
  v7 = *a2;
  v8 = sub_25574F0D0();
  v9 = *(v8 - 8);
  v10 = 0;
  if ((*(v9 + 48))(v6, 1, v8) != 1)
  {
    v10 = sub_25574F050();
    (*(v9 + 8))(v6, v8);
  }

  [v7 setId_];
}

id static JournalMO.fetchRequest()()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v1 = sub_255750180();
  v2 = [v0 initWithEntityName_];

  return v2;
}

void (*sub_25574E9E4(uint64_t **a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = sub_25574C41C(v2);
  return sub_25574C3D4;
}

uint64_t sub_25574EA6C@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for SyncDataMO();
  result = sub_255750B30();
  *a2 = result;
  return result;
}