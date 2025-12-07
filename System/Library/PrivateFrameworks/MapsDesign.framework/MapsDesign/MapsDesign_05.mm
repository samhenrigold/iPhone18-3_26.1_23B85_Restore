uint64_t GuideCell.init(_:model:leadingCellActions:trailingCellActions:tapHandler:)@<X0>(_BYTE *a1@<X0>, __int128 *a2@<X1>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{

  *a7 = *a1;
  result = sub_213DD7500(a2, a7 + 8);
  *(a7 + 48) = a5;
  *(a7 + 56) = a6;
  return result;
}

uint64_t GuideCell.GuideCellType.hashValue.getter()
{
  v1 = *v0;
  sub_213F4F880();
  MEMORY[0x216052C90](v1);
  return sub_213F4F8C0();
}

uint64_t GuideCell.body.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = *(v1 + 48);
  v5 = *(v2 + 56);
  sub_213E51970(v2, v16);
  v6 = swift_allocObject();
  v7 = v16[1];
  v6[1] = v16[0];
  v6[2] = v7;
  v8 = v16[3];
  v6[3] = v16[2];
  v6[4] = v8;
  sub_213DEBAA8(v2 + 8, a1 + 32);
  sub_213DD74C4(v4, v5);
  *(a1 + 80) = sub_213F4CDF0() & 1;
  *(a1 + 88) = v9;
  *(a1 + 96) = v10 & 1;
  sub_213F4EA90();
  v11 = *(&v16[0] + 1);
  *(a1 + 104) = v16[0];
  *(a1 + 112) = v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9A10, &qword_213F595A0);
  v13 = *(v12 + 56);
  *(a1 + v13) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8C80, &qword_213F57940);
  swift_storeEnumTagMultiPayload();
  v14 = *(v12 + 60);
  *(a1 + v14) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7B68, &qword_213F53770);
  result = swift_storeEnumTagMultiPayload();
  *a1 = v4;
  *(a1 + 8) = v5;
  *(a1 + 16) = sub_213E519A8;
  *(a1 + 24) = v6;
  *(a1 + 72) = 0;
  return result;
}

uint64_t sub_213E51628@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X8>)
{
  v21[1] = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9A20, &qword_213F59738);
  MEMORY[0x28223BE20](v3);
  v5 = v21 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9A28, &qword_213F5D250);
  MEMORY[0x28223BE20](v6);
  v8 = v21 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9A30, &qword_213F59740);
  MEMORY[0x28223BE20](v9);
  v11 = v21 - v10;
  v12 = type metadata accessor for ListCell(0);
  v13 = MEMORY[0x28223BE20](v12);
  v15 = (v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = *a1;
  sub_213DEBAA8((a1 + 8), v15 + *(v13 + 32));
  *v15 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7A20, &qword_213F526E0);
  swift_storeEnumTagMultiPayload();
  v17 = v12[5];
  *(v15 + v17) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9190, &qword_213F58FE0);
  swift_storeEnumTagMultiPayload();
  v18 = v15 + v12[6];
  *v18 = swift_getKeyPath();
  v18[8] = 0;
  v19 = v12[7];
  if (v16)
  {
    if (v16 != 1)
    {
      *(v15 + v19) = 7;
      sub_213E51B58(v15, v5);
      swift_storeEnumTagMultiPayload();
      sub_213E51BBC();
      sub_213E51C40();
      sub_213F4DBA0();
      return sub_213E51C98(v15);
    }

    *(v15 + v19) = 8;
    sub_213E51B58(v15, v8);
  }

  else
  {
    *(v15 + v19) = 4;
    sub_213E51B58(v15, v8);
  }

  swift_storeEnumTagMultiPayload();
  sub_213E51C40();
  sub_213F4DBA0();
  sub_213E51CF4(v11, v5);
  swift_storeEnumTagMultiPayload();
  sub_213E51BBC();
  sub_213F4DBA0();
  sub_213E51D64(v11);
  return sub_213E51C98(v15);
}

unint64_t sub_213E519B8()
{
  result = qword_27C8F9A18;
  if (!qword_27C8F9A18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8F9A18);
  }

  return result;
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

uint64_t sub_213E51A3C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_213E51A84(uint64_t result, int a2, int a3)
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
      *(result + 32) = (a2 - 1);
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

unint64_t sub_213E51AF4()
{
  result = qword_281188578;
  if (!qword_281188578)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F9A10, &qword_213F595A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281188578);
  }

  return result;
}

uint64_t sub_213E51B58(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ListCell(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_213E51BBC()
{
  result = qword_281182B48;
  if (!qword_281182B48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F9A30, &qword_213F59740);
    sub_213E51C40();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281182B48);
  }

  return result;
}

unint64_t sub_213E51C40()
{
  result = qword_281183750[0];
  if (!qword_281183750[0])
  {
    type metadata accessor for ListCell(255);
    result = swift_getWitnessTable();
    atomic_store(result, qword_281183750);
  }

  return result;
}

uint64_t sub_213E51C98(uint64_t a1)
{
  v2 = type metadata accessor for ListCell(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_213E51CF4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9A30, &qword_213F59740);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_213E51D64(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9A30, &qword_213F59740);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t GuideTileViewModel.GuideType.axIDString.getter()
{
  v1 = 0xD000000000000010;
  if (*v0 != 1)
  {
    v1 = 0x656873696C627550;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1919251285;
  }
}

uint64_t GuideTileViewModel.GuideType.hashValue.getter()
{
  v1 = *v0;
  sub_213F4F880();
  MEMORY[0x216052C90](v1);
  return sub_213F4F8C0();
}

uint64_t GuideTileViewModel.id.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t GuideTileViewModel.id.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t GuideTileViewModel.init(id:_:title:subtitle:imageProvider:logoProvider:photoFanView:placeholderColor:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v13 = *a3;
  *(a9 + 72) = 0u;
  *(a9 + 88) = 0u;
  *(a9 + 104) = 0u;
  *(a9 + 120) = 0u;
  *(a9 + 152) = 0u;
  *(a9 + 168) = 0u;
  *(a9 + 184) = 0u;
  *(a9 + 200) = 0u;
  *(a9 + 216) = 0u;
  *(a9 + 232) = 0;
  *(a9 + 136) = 0u;
  v14 = a9 + 136;
  *(a9 + 56) = 0u;
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = v13;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;
  sub_213E5201C(a8, a9 + 56, &qword_27C8F7AB8, &qword_213F522C0);
  sub_213E5201C(a10, a9 + 96, &qword_27C8F7AB8, &qword_213F522C0);
  result = sub_213E5201C(a11, v14, &qword_27C8F9A38, &qword_213F597E8);
  *(a9 + 240) = a12;
  return result;
}

uint64_t sub_213E5201C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t sub_213E52084@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_213F4DEB0();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9AC8, &qword_213F59E28);
  v7 = v6 - 8;
  MEMORY[0x28223BE20](v6);
  v9 = &v20 - v8;
  sub_213F4DEC0();
  if (sub_213F4DED0())
  {
    v10 = 0.98;
  }

  else
  {
    v10 = 1.0;
  }

  sub_213F4F040();
  v12 = v11;
  v14 = v13;
  (*(v3 + 32))(v9, v5, v2);
  v15 = &v9[*(v7 + 44)];
  *v15 = v10;
  *(v15 + 1) = v10;
  *(v15 + 2) = v12;
  *(v15 + 3) = v14;
  v16 = MEMORY[0x216052350](0.5, 1.0, 0.0);
  v17 = sub_213F4DED0();
  sub_213DE2B44(v9, a1, &qword_27C8F9AC8, &qword_213F59E28);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9AD0, &qword_213F59E30);
  v19 = a1 + *(result + 36);
  *v19 = v16;
  *(v19 + 8) = v17 & 1;
  return result;
}

uint64_t sub_213E5225C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for MapsDesignImage(0);
  MEMORY[0x28223BE20](v4);
  v6 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9C10, &unk_213F5A140);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v34 - v9;
  sub_213DE3164(v2, &v46, &qword_27C8F7AB8, &qword_213F522C0);
  if (*(&v47 + 1))
  {
    sub_213DD7500(&v46, v45);
    sub_213DEBAA8(v45, &v6[v4[8]]);
    sub_213E5BFBC(v2, &v46);
    v11 = swift_allocObject();
    v12 = v47;
    *(v11 + 1) = v46;
    *(v11 + 2) = v12;
    *(v11 + 3) = v48;
    v34 = sub_213F4EEE0();
    v14 = v13;
    *v6 = swift_getKeyPath();
    v6[8] = 0;
    v35 = a1;
    v15 = v4[5];
    *&v6[v15] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7B68, &qword_213F53770);
    swift_storeEnumTagMultiPayload();
    v16 = v4[6];
    *&v6[v16] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7A20, &qword_213F526E0);
    swift_storeEnumTagMultiPayload();
    v17 = v4[7];
    *&v6[v17] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7AC0, &qword_213F52760);
    swift_storeEnumTagMultiPayload();
    v18 = &v6[v4[12]];
    v19 = &v6[v4[13]];
    v20 = &v6[v4[14]];
    v37 = 0;
    v36 = 0;
    *(v38 + 7) = 0;
    v38[0] = 0;
    sub_213F4EA90();
    v21 = v40;
    v22 = v41;
    v23 = v42;
    v24 = v43;
    v25 = v44;
    *v20 = v39;
    *(v20 + 2) = v21;
    v20[24] = v22;
    v20[25] = v23;
    v20[26] = v24;
    *(v20 + 4) = v25;
    v26 = v4[15];
    v36 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7C28, &unk_213F522B0);
    sub_213F4EA90();
    *&v6[v26] = v39;
    v6[v4[9]] = 1;
    v27 = &v6[v4[10]];
    *v27 = v34;
    v27[1] = v14;
    v6[v4[11]] = 1;
    *v18 = sub_213E5CD9C;
    v18[1] = v11;
    *v19 = 0;
    *(v19 + 1) = 0;
    sub_213F4EEE0();
    sub_213F4D4E0();
    __swift_destroy_boxed_opaque_existential_1(v45);
    sub_213E5BCCC(v6, v10, type metadata accessor for MapsDesignImage);
    v28 = &v10[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F94A0, &qword_213F5A0E0) + 36)];
    v29 = v51;
    *(v28 + 4) = v50;
    *(v28 + 5) = v29;
    *(v28 + 6) = v52;
    v30 = v47;
    *v28 = v46;
    *(v28 + 1) = v30;
    v31 = v49;
    *(v28 + 2) = v48;
    *(v28 + 3) = v31;
    sub_213E5BD88(v6, type metadata accessor for MapsDesignImage);
    v10[*(v7 + 36)] = 0;
    v32 = v35;
    sub_213DE2B44(v10, v35, &qword_27C8F9C10, &unk_213F5A140);
    return (*(v8 + 56))(v32, 0, 1, v7);
  }

  else
  {
    sub_213DE36FC(&v46, &qword_27C8F7AB8, &qword_213F522C0);
    return (*(v8 + 56))(a1, 1, 1, v7);
  }
}

uint64_t sub_213E52718@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v109 = a2;
  v3 = sub_213F4D390();
  v104 = *(v3 - 8);
  v105 = v3;
  v4 = MEMORY[0x28223BE20](v3);
  v103 = &v95 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v102 = &v95 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9BE8, &qword_213F5A0D8);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v108 = &v95 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v107 = &v95 - v10;
  v11 = sub_213F4D290();
  v99 = *(v11 - 8);
  v100 = v11;
  v12 = MEMORY[0x28223BE20](v11);
  v14 = &v95 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v95 - v15;
  v17 = type metadata accessor for MapsDesignImage(0);
  MEMORY[0x28223BE20](v17);
  v19 = &v95 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F94A0, &qword_213F5A0E0);
  MEMORY[0x28223BE20](v20);
  v22 = &v95 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9BF0, &qword_213F5A0E8);
  v24 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v101 = &v95 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9BF8, &qword_213F5A0F0);
  v27 = MEMORY[0x28223BE20](v26 - 8);
  v106 = &v95 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v112 = &v95 - v29;
  v110 = type metadata accessor for PublisherGuideContent(0);
  sub_213DE3164(a1 + *(v110 + 24), &v113, &qword_27C8F7AB8, &qword_213F522C0);
  v111 = a1;
  if (*(&v114 + 1))
  {
    sub_213DD7500(&v113, &v127);
    sub_213DEBAA8(&v127, &v19[v17[8]]);
    v30 = sub_213F4EEB0();
    v96 = v31;
    v97 = v30;
    *v19 = swift_getKeyPath();
    v19[8] = 0;
    v32 = v17[5];
    *&v19[v32] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7B68, &qword_213F53770);
    swift_storeEnumTagMultiPayload();
    v33 = v17[6];
    *&v19[v33] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7A20, &qword_213F526E0);
    swift_storeEnumTagMultiPayload();
    v34 = v17[7];
    *&v19[v34] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7AC0, &qword_213F52760);
    swift_storeEnumTagMultiPayload();
    v35 = v17[13];
    v36 = &v19[v17[12]];
    v95 = v20;
    v37 = &v19[v35];
    v38 = v17[14];
    v98 = v23;
    v39 = &v19[v38];
    v146 = 0uLL;
    *(&v147 + 7) = 0;
    *&v147 = 0;
    sub_213F4EA90();
    v40 = v114;
    v41 = BYTE8(v114);
    v42 = BYTE9(v114);
    v43 = BYTE10(v114);
    v44 = v115;
    *v39 = v113;
    *(v39 + 2) = v40;
    v39[24] = v41;
    v39[25] = v42;
    v39[26] = v43;
    *(v39 + 4) = v44;
    v45 = v17[15];
    *&v146 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7C28, &unk_213F522B0);
    sub_213F4EA90();
    *&v19[v45] = v113;
    v19[v17[9]] = 0;
    v46 = &v19[v17[10]];
    v47 = v96;
    *v46 = v97;
    *(v46 + 1) = v47;
    v19[v17[11]] = 1;
    *v36 = 0;
    *(v36 + 1) = 0;
    a1 = v111;
    *v37 = 0;
    *(v37 + 1) = 0;
    sub_213DBBD08(v16);
    sub_213F4D280();
    sub_213F4D270();
    v48 = *(v99 + 8);
    v49 = v14;
    v50 = v100;
    v48(v49, v100);
    v48(v16, v50);
    sub_213F4EEB0();
    sub_213F4D4E0();
    sub_213E5BCCC(v19, v22, type metadata accessor for MapsDesignImage);
    v51 = &v22[*(v95 + 36)];
    v52 = v144;
    *(v51 + 4) = v143;
    *(v51 + 5) = v52;
    *(v51 + 6) = v145;
    v53 = v140;
    *v51 = v139;
    *(v51 + 1) = v53;
    v54 = v142;
    *(v51 + 2) = v141;
    *(v51 + 3) = v54;
    sub_213E5BD88(v19, type metadata accessor for MapsDesignImage);
    strcpy(&v113, "PublisherLogo");
    HIWORD(v113) = -4864;
    MEMORY[0x216052710](0x6567616D49, 0xE500000000000000);
    sub_213E5BF00();
    v55 = v101;
    sub_213F4E6D0();

    sub_213DE36FC(v22, &qword_27C8F94A0, &qword_213F5A0E0);
    __swift_destroy_boxed_opaque_existential_1(&v127);
    v56 = v112;
    sub_213DE2B44(v55, v112, &qword_27C8F9BF0, &qword_213F5A0E8);
    (*(v24 + 56))(v56, 0, 1, v98);
  }

  else
  {
    sub_213DE36FC(&v113, &qword_27C8F7AB8, &qword_213F522C0);
    (*(v24 + 56))(v112, 1, 1, v23);
  }

  v57 = (a1 + *(v110 + 28));
  v58 = v57[1];
  *&v127 = *v57;
  *(&v127 + 1) = v58;
  sub_213DBC9EC();

  v59 = sub_213F4E310();
  v61 = v60;
  v63 = v62;
  *&v127 = sub_213F4E8F0();
  v64 = sub_213F4E2B0();
  v66 = v65;
  v68 = v67;
  sub_213DBCA40(v59, v61, v63 & 1);

  sub_213F4E0D0();
  sub_213F4E110();
  sub_213F4E1D0();

  v110 = sub_213F4E2E0();
  v70 = v69;
  v72 = v71;
  v74 = v73;

  sub_213DBCA40(v64, v66, v68 & 1);

  v75 = v102;
  sub_213EA886C(v102);
  v77 = v103;
  v76 = v104;
  v78 = v105;
  (*(v104 + 104))(v103, *MEMORY[0x277CDF988], v105);
  sub_213E5B680(&qword_281183490, MEMORY[0x277CDFA28], MEMORY[0x277CDFA38]);
  LOBYTE(v58) = sub_213F4F1D0();
  v79 = *(v76 + 8);
  v79(v77, v78);
  v79(v75, v78);
  if (v58)
  {
    v80 = 2;
  }

  else
  {
    v80 = 3;
  }

  KeyPath = swift_getKeyPath();
  sub_213F4EEB0();
  sub_213F4D4E0();
  *&v134[55] = v149;
  *&v134[71] = v150;
  *&v134[87] = v151;
  *&v134[103] = v152;
  *&v134[7] = v146;
  *&v134[23] = v147;
  v82 = v72 & 1;
  v136 = v72 & 1;
  v135 = 0;
  *&v134[39] = v148;
  v83 = sub_213F4E070();
  sub_213F4CDA0();
  *(&v130[4] + 1) = *&v134[64];
  *(&v130[5] + 1) = *&v134[80];
  *(&v130[6] + 1) = *&v134[96];
  *(v130 + 1) = *v134;
  *(&v130[1] + 1) = *&v134[16];
  *(&v130[2] + 1) = *&v134[32];
  v137 = 0;
  *&v127 = v110;
  *(&v127 + 1) = v70;
  LOBYTE(v128) = v82;
  *(&v128 + 1) = v74;
  *&v129 = KeyPath;
  *(&v129 + 1) = v80;
  LOBYTE(v130[0]) = 0;
  *&v130[7] = *&v134[111];
  *(&v130[3] + 1) = *&v134[48];
  BYTE8(v130[7]) = v83;
  *(&v130[7] + 9) = *v138;
  HIDWORD(v130[7]) = *&v138[3];
  *&v131 = v84;
  *(&v131 + 1) = v85;
  *&v132 = v86;
  *(&v132 + 1) = v87;
  v133 = 0;
  v123 = v130[7];
  v124 = v131;
  v125 = v132;
  v126 = 0;
  v119 = v130[3];
  v120 = v130[4];
  v121 = v130[5];
  v122 = v130[6];
  v115 = v129;
  v116 = v130[0];
  v117 = v130[1];
  v118 = v130[2];
  v113 = v127;
  v114 = v128;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9C00, &unk_213F5A128);
  sub_213E5BDE8();
  v88 = v107;
  sub_213F4E6D0();
  sub_213DE36FC(&v127, &qword_27C8F9C00, &unk_213F5A128);
  v89 = v112;
  v90 = v106;
  sub_213DE3164(v112, v106, &qword_27C8F9BF8, &qword_213F5A0F0);
  v91 = v108;
  sub_213DE3164(v88, v108, &qword_27C8F9BE8, &qword_213F5A0D8);
  v92 = v109;
  *v109 = 0;
  *(v92 + 8) = 1;
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9C08, &qword_213F5A138);
  sub_213DE3164(v90, v92 + *(v93 + 48), &qword_27C8F9BF8, &qword_213F5A0F0);
  sub_213DE3164(v91, v92 + *(v93 + 64), &qword_27C8F9BE8, &qword_213F5A0D8);
  sub_213DE36FC(v88, &qword_27C8F9BE8, &qword_213F5A0D8);
  sub_213DE36FC(v89, &qword_27C8F9BF8, &qword_213F5A0F0);
  sub_213DE36FC(v91, &qword_27C8F9BE8, &qword_213F5A0D8);
  return sub_213DE36FC(v90, &qword_27C8F9BF8, &qword_213F5A0F0);
}

uint64_t sub_213E53338@<X0>(uint64_t a2@<X8>)
{
  *a2 = sub_213F4DA50();
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9BD8, &qword_213F5A0C8);
  sub_213E52718(v2, (a2 + *(v4 + 44)));
  v5 = sub_213F4E040();
  sub_213F4CDA0();
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9BE0, &qword_213F5A0D0);
  v15 = a2 + *(result + 36);
  *v15 = v5;
  *(v15 + 8) = v7;
  *(v15 + 16) = v9;
  *(v15 + 24) = v11;
  *(v15 + 32) = v13;
  *(v15 + 40) = 0;
  return result;
}

uint64_t sub_213E533E4@<X0>(uint64_t *a2@<X8>)
{
  *a2 = sub_213F4EEE0();
  a2[1] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9C38, &qword_213F5A178);
  sub_213E5357C(v2, a2 + *(v5 + 44));
  v6 = sub_213F4EEE0();
  v8 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F86B0, &qword_213F5A010);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_213F51DE0;
  sub_213F4E8F0();
  *(v9 + 32) = sub_213F4EDB0();
  *(v9 + 40) = v10;
  sub_213F4E8D0();
  *(v9 + 48) = sub_213F4EDB0();
  *(v9 + 56) = v11;
  sub_213F4F020();
  sub_213F4F030();
  sub_213F4EDC0();
  sub_213F4D2C0();
  v12 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9C40, &qword_213F5A180) + 36);
  *v12 = v6;
  *(v12 + 1) = v8;
  *(v12 + 2) = v23;
  *(v12 + 40) = v25;
  *(v12 + 24) = v24;
  LOBYTE(v6) = sub_213F4E070();
  sub_213F4CDA0();
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9C48, &qword_213F5A188);
  v22 = a2 + *(result + 36);
  *v22 = v6;
  *(v22 + 1) = v14;
  *(v22 + 2) = v16;
  *(v22 + 3) = v18;
  *(v22 + 4) = v20;
  v22[40] = 0;
  return result;
}

uint64_t sub_213E5357C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_213F4D8B0();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for MapsDesignImage(0);
  MEMORY[0x28223BE20](v8);
  v10 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9C50, &qword_213F5A190);
  MEMORY[0x28223BE20](v57);
  v12 = &v50 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9C58, &qword_213F5A198);
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v56 = &v50 - v15;
  sub_213DE3164(a1, v67, &qword_27C8F7AB8, &qword_213F522C0);
  if (*&v67[24])
  {
    sub_213DD7500(v67, v68);
    sub_213DEBAA8(v68, &v10[v8[8]]);
    sub_213E5BFF4(a1, v67);
    v16 = swift_allocObject();
    v17 = *&v67[16];
    *(v16 + 1) = *v67;
    *(v16 + 2) = v17;
    *(v16 + 3) = *&v67[32];
    v52 = sub_213F4EEE0();
    v51 = v18;
    *v10 = swift_getKeyPath();
    v10[8] = 0;
    v55 = a2;
    v19 = v8[5];
    *&v10[v19] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7B68, &qword_213F53770);
    swift_storeEnumTagMultiPayload();
    v20 = v8[6];
    *&v10[v20] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7A20, &qword_213F526E0);
    swift_storeEnumTagMultiPayload();
    v21 = v8[7];
    *&v10[v21] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7AC0, &qword_213F52760);
    swift_storeEnumTagMultiPayload();
    v22 = v8[12];
    v23 = v8[13];
    v53 = v4;
    v24 = &v10[v22];
    v25 = &v10[v23];
    v26 = v8[14];
    v54 = v13;
    v27 = &v10[v26];
    v59 = 0;
    v58 = 0;
    *(v60 + 7) = 0;
    v60[0] = 0;
    sub_213F4EA90();
    v28 = v62;
    v29 = v63;
    v30 = v64;
    v31 = v65;
    v32 = v66;
    *v27 = v61;
    *(v27 + 2) = v28;
    v27[24] = v29;
    v27[25] = v30;
    v27[26] = v31;
    *(v27 + 4) = v32;
    v33 = v8[15];
    v58 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7C28, &unk_213F522B0);
    sub_213F4EA90();
    *&v10[v33] = v61;
    v10[v8[9]] = 1;
    v34 = &v10[v8[10]];
    v35 = v51;
    *v34 = v52;
    v34[1] = v35;
    v10[v8[11]] = 1;
    *v24 = sub_213E5C074;
    v24[1] = v16;
    *v25 = 0;
    *(v25 + 1) = 0;
    sub_213E5BCCC(v10, v12, type metadata accessor for MapsDesignImage);
    *&v12[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9BC8, &qword_213F5A0B8) + 36)] = 256;
    sub_213E5BD88(v10, type metadata accessor for MapsDesignImage);
    v12[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9C60, &unk_213F5A1A0) + 36)] = 0;
    v36 = sub_213F4EEE0();
    v38 = v37;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F86B0, &qword_213F5A010);
    v39 = swift_allocObject();
    *(v39 + 16) = xmmword_213F51DE0;
    sub_213F4E8F0();
    *(v39 + 32) = sub_213F4EDB0();
    *(v39 + 40) = v40;
    sub_213F4E8D0();
    *(v39 + 48) = sub_213F4EDB0();
    *(v39 + 56) = v41;
    sub_213F4F020();
    sub_213F4F030();
    sub_213F4EDC0();
    sub_213F4D2C0();
    v42 = *v67;
    v43 = &v12[*(v57 + 36)];
    *v43 = v36;
    *(v43 + 1) = v38;
    *(v43 + 2) = v42;
    *(v43 + 24) = *&v67[8];
    *(v43 + 40) = *&v67[24];
    v44 = v53;
    (*(v5 + 104))(v7, *MEMORY[0x277CE00F0], v53);
    sub_213E5C090();
    v45 = v56;
    sub_213F4E480();
    (*(v5 + 8))(v7, v44);
    sub_213DE36FC(v12, &qword_27C8F9C50, &qword_213F5A190);
    __swift_destroy_boxed_opaque_existential_1(v68);
    v46 = v55;
    v47 = v45;
    v48 = v54;
    (*(v14 + 32))(v55, v47, v54);
    return (*(v14 + 56))(v46, 0, 1, v48);
  }

  else
  {
    sub_213DE36FC(v67, &qword_27C8F7AB8, &qword_213F522C0);
    return (*(v14 + 56))(a2, 1, 1, v13);
  }
}

uint64_t sub_213E53C20@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  if (*(a1 + 40))
  {
    v3 = *(a1 + 40);
  }

  else
  {
    v3 = sub_213F4E8D0();
  }

  a2[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8AE8, &unk_213F55C40);
  a2[4] = sub_213E0C9E0();
  *a2 = v3;
}

uint64_t sub_213E53C9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v72 = a1;
  v83 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9BE8, &qword_213F5A0D8);
  v79 = *(v3 - 8);
  v80 = v3;
  MEMORY[0x28223BE20](v3);
  v71 = v70 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9C28, &unk_213F5A160);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v82 = v70 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v81 = v70 - v8;
  v9 = sub_213F4D390();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v73 = v70 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v14 = v70 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9470, &qword_213F57D68);
  v16 = MEMORY[0x28223BE20](v15 - 8);
  v78 = v70 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v84 = v70 - v18;
  v77 = type metadata accessor for UserGuideContent(0);
  v19 = (a1 + *(v77 + 20));
  v20 = v19[1];
  *&v99 = *v19;
  *(&v99 + 1) = v20;
  v21 = sub_213DBC9EC();

  v70[1] = v21;
  v22 = sub_213F4E310();
  v24 = v23;
  LOBYTE(v21) = v25;
  sub_213F4E0D0();
  sub_213F4E180();
  sub_213F4E1D0();

  v26 = sub_213F4E2E0();
  v74 = v27;
  v75 = v26;
  v29 = v28;
  v76 = v30;

  sub_213DBCA40(v22, v24, v21 & 1);

  v31 = v72;
  sub_213EA886C(v14);
  v32 = v73;
  (*(v10 + 104))(v73, *MEMORY[0x277CDF988], v9);
  sub_213E5B680(&qword_281183490, MEMORY[0x277CDFA28], MEMORY[0x277CDFA38]);
  LOBYTE(v22) = sub_213F4F1D0();
  v33 = *(v10 + 8);
  v33(v32, v9);
  v33(v14, v9);
  if (v22)
  {
    v34 = 1;
  }

  else
  {
    v34 = 2;
  }

  KeyPath = swift_getKeyPath();
  sub_213F4EEB0();
  sub_213F4D4E0();
  *&v115[55] = v122;
  *&v115[71] = v123;
  *&v115[103] = v125;
  *&v114[7] = *(&v125 + 1);
  *&v115[87] = v124;
  *&v115[7] = v119;
  *&v115[23] = v120;
  *&v115[39] = v121;
  *(v114 + 1) = *v115;
  *(&v114[1] + 1) = *&v115[16];
  *(&v114[2] + 1) = *&v115[32];
  *(&v114[6] + 1) = *&v115[96];
  *(&v114[5] + 1) = *&v115[80];
  v118 = v29 & 1;
  v116 = 0;
  *&v111 = v75;
  *(&v111 + 1) = v74;
  LOBYTE(v112) = v29 & 1;
  DWORD1(v112) = *&v117[3];
  *(&v112 + 1) = *v117;
  *(&v112 + 1) = v76;
  *&v113 = KeyPath;
  *(&v113 + 1) = v34;
  LOBYTE(v114[0]) = 0;
  *(&v114[4] + 1) = *&v115[64];
  *(&v114[3] + 1) = *&v115[48];
  v102[5] = v114[5];
  v102[6] = v114[6];
  *&v102[7] = *&v114[7];
  v102[1] = v114[1];
  v102[2] = v114[2];
  v102[3] = v114[3];
  v102[4] = v114[4];
  v99 = v111;
  v100 = v112;
  v101 = v113;
  v102[0] = v114[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9478, &qword_213F57DA0);
  sub_213E5BE74();
  sub_213F4E6D0();
  sub_213DE36FC(&v111, &qword_27C8F9478, &qword_213F57DA0);
  v36 = (v31 + *(v77 + 24));
  v37 = v36[1];
  if (v37)
  {
    *&v99 = *v36;
    *(&v99 + 1) = v37;

    v38 = sub_213F4E310();
    v40 = v39;
    v42 = v41;
    v43 = [objc_opt_self() secondaryLabelColor];
    *&v99 = sub_213F4E870();
    v44 = sub_213F4E2B0();
    v46 = v45;
    v48 = v47;
    sub_213DBCA40(v38, v40, v42 & 1);

    sub_213F4E0C0();
    sub_213F4E170();
    sub_213F4E1D0();

    v49 = sub_213F4E2E0();
    v51 = v50;
    v53 = v52;
    v55 = v54;

    sub_213DBCA40(v44, v46, v48 & 1);

    v56 = swift_getKeyPath();
    sub_213F4EEB0();
    sub_213F4D4E0();
    *&v106[55] = v129;
    *&v106[71] = v130;
    *&v106[87] = v131;
    *&v106[103] = v132;
    *&v106[7] = v126;
    *&v106[23] = v127;
    LOBYTE(v44) = v53 & 1;
    v108 = v53 & 1;
    v107 = 0;
    *&v106[39] = v128;
    v57 = sub_213F4E070();
    sub_213F4CDA0();
    *(&v102[4] + 1) = *&v106[64];
    *(&v102[5] + 1) = *&v106[80];
    *(&v102[6] + 1) = *&v106[96];
    *(v102 + 1) = *v106;
    *(&v102[1] + 1) = *&v106[16];
    *(&v102[2] + 1) = *&v106[32];
    v109 = 0;
    *&v99 = v49;
    *(&v99 + 1) = v51;
    LOBYTE(v100) = v44;
    *(&v100 + 1) = v55;
    *&v101 = v56;
    *(&v101 + 1) = 1;
    LOBYTE(v102[0]) = 0;
    *&v102[7] = *&v106[111];
    *(&v102[3] + 1) = *&v106[48];
    BYTE8(v102[7]) = v57;
    *(&v102[7] + 9) = *v110;
    HIDWORD(v102[7]) = *&v110[3];
    *&v103 = v58;
    *(&v103 + 1) = v59;
    *&v104 = v60;
    *(&v104 + 1) = v61;
    v105 = 0;
    v95 = v102[7];
    v96 = v103;
    v97 = v104;
    v98 = 0;
    v91 = v102[3];
    v92 = v102[4];
    v93 = v102[5];
    v94 = v102[6];
    v87 = v101;
    v88 = v102[0];
    v89 = v102[1];
    v90 = v102[2];
    v85 = v99;
    v86 = v100;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9C00, &unk_213F5A128);
    sub_213E5BDE8();
    v62 = v71;
    sub_213F4E6D0();
    sub_213DE36FC(&v99, &qword_27C8F9C00, &unk_213F5A128);
    v63 = v81;
    sub_213DE2B44(v62, v81, &qword_27C8F9BE8, &qword_213F5A0D8);
    (*(v79 + 56))(v63, 0, 1, v80);
  }

  else
  {
    v63 = v81;
    (*(v79 + 56))(v81, 1, 1, v80);
  }

  v64 = v84;
  v65 = v78;
  sub_213DE3164(v84, v78, &qword_27C8F9470, &qword_213F57D68);
  v66 = v82;
  sub_213DE3164(v63, v82, &qword_27C8F9C28, &unk_213F5A160);
  v67 = v83;
  sub_213DE3164(v65, v83, &qword_27C8F9470, &qword_213F57D68);
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9C30, &qword_213F5A170);
  sub_213DE3164(v66, v67 + *(v68 + 48), &qword_27C8F9C28, &unk_213F5A160);
  sub_213DE36FC(v63, &qword_27C8F9C28, &unk_213F5A160);
  sub_213DE36FC(v64, &qword_27C8F9470, &qword_213F57D68);
  sub_213DE36FC(v66, &qword_27C8F9C28, &unk_213F5A160);
  return sub_213DE36FC(v65, &qword_27C8F9470, &qword_213F57D68);
}

uint64_t sub_213E5467C@<X0>(uint64_t a2@<X8>)
{
  *a2 = sub_213F4DA40();
  *(a2 + 8) = 0x4000000000000000;
  *(a2 + 16) = 0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9C18, &qword_213F5A150);
  sub_213E53C9C(v2, a2 + *(v4 + 44));
  v5 = sub_213F4E040();
  sub_213F4CDA0();
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9C20, &qword_213F5A158);
  v15 = a2 + *(result + 36);
  *v15 = v5;
  *(v15 + 8) = v7;
  *(v15 + 16) = v9;
  *(v15 + 24) = v11;
  *(v15 + 32) = v13;
  *(v15 + 40) = 0;
  return result;
}

uint64_t sub_213E5472C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9B78, &qword_213F59FF8);
  v35 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v33 - v5;
  v7 = type metadata accessor for PhotoFanView(0);
  v8 = MEMORY[0x28223BE20](v7);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = (&v33 - v11);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9B80, &qword_213F5A000);
  v14 = MEMORY[0x28223BE20](v13);
  v16 = &v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = (&v33 - v17);
  sub_213DE3164(a1, v36, &qword_27C8F9A38, &qword_213F597E8);
  if (*(&v36[0] + 1))
  {
    v38[4] = v36[4];
    v38[5] = v36[5];
    v39 = v37;
    v38[0] = v36[0];
    v38[1] = v36[1];
    v38[2] = v36[2];
    v38[3] = v36[3];
    *v18 = sub_213F4EEE0();
    v18[1] = v19;
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9B88, &qword_213F5A008);
    sub_213E54C20(v38, v18 + *(v20 + 44));
    v21 = sub_213F4EEE0();
    v34 = a2;
    v23 = v22;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F86B0, &qword_213F5A010);
    v24 = swift_allocObject();
    v33 = v4;
    v25 = v24;
    *(v24 + 16) = xmmword_213F51DE0;
    sub_213F4E8F0();
    v25[4] = sub_213F4EDB0();
    v25[5] = v26;
    sub_213F4E8D0();
    v25[6] = sub_213F4EDB0();
    v25[7] = v27;
    sub_213F4F020();
    sub_213F4F030();
    sub_213F4EDC0();
    sub_213F4D2C0();
    v28 = *&v36[0];
    v29 = v18 + *(v13 + 36);
    *v29 = v21;
    *(v29 + 1) = v23;
    *(v29 + 2) = v28;
    *(v29 + 24) = *(v36 + 8);
    *(v29 + 40) = *(&v36[1] + 8);
    sub_213E5BC70(v38, v12 + *(v7 + 20));
    *v12 = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7B68, &qword_213F53770);
    swift_storeEnumTagMultiPayload();
    sub_213DE3164(v18, v16, &qword_27C8F9B80, &qword_213F5A000);
    sub_213E5BCCC(v12, v10, type metadata accessor for PhotoFanView);
    sub_213DE3164(v16, v6, &qword_27C8F9B80, &qword_213F5A000);
    v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9B90, &qword_213F5A018);
    sub_213E5BCCC(v10, &v6[*(v30 + 48)], type metadata accessor for PhotoFanView);
    sub_213E5BD88(v12, type metadata accessor for PhotoFanView);
    sub_213DE36FC(v18, &qword_27C8F9B80, &qword_213F5A000);
    sub_213E5BD88(v10, type metadata accessor for PhotoFanView);
    sub_213DE36FC(v16, &qword_27C8F9B80, &qword_213F5A000);
    v31 = v34;
    sub_213DE2B44(v6, v34, &qword_27C8F9B78, &qword_213F59FF8);
    (*(v35 + 56))(v31, 0, 1, v33);
    return sub_213E5BD34(v38);
  }

  else
  {
    sub_213DE36FC(v36, &qword_27C8F9A38, &qword_213F597E8);
    return (*(v35 + 56))(a2, 1, 1, v4);
  }
}

uint64_t sub_213E54C20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9B98, &qword_213F5A020);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v20 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9BA0, &qword_213F5A028);
  v11 = v10 - 8;
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v20 - v15;
  *v16 = sub_213F4D8A0();
  *(v16 + 1) = 0;
  v16[16] = 0;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9BA8, &qword_213F5A030);
  sub_213E54E68(a1, &v16[*(v17 + 44)]);
  *&v16[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9BB0, &qword_213F5A038) + 36)] = 256;
  v16[*(v11 + 44)] = 0;
  sub_213F4EE70();
  sub_213DE3164(v16, v14, &qword_27C8F9BA0, &qword_213F5A028);
  sub_213DE3164(v9, v7, &qword_27C8F9B98, &qword_213F5A020);
  sub_213DE3164(v14, a2, &qword_27C8F9BA0, &qword_213F5A028);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9BB8, &qword_213F5A040);
  sub_213DE3164(v7, a2 + *(v18 + 48), &qword_27C8F9B98, &qword_213F5A020);
  sub_213DE36FC(v9, &qword_27C8F9B98, &qword_213F5A020);
  sub_213DE36FC(v16, &qword_27C8F9BA0, &qword_213F5A028);
  sub_213DE36FC(v7, &qword_27C8F9B98, &qword_213F5A020);
  return sub_213DE36FC(v14, &qword_27C8F9BA0, &qword_213F5A028);
}

uint64_t sub_213E54E68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v68 = a1;
  v72 = a2;
  v3 = type metadata accessor for MapsDesignImage(0);
  v4 = (v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v60 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9BC0, &qword_213F5A048) - 8;
  v7 = MEMORY[0x28223BE20](v69);
  v71 = &v60 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v70 = &v60 - v10;
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v60 - v12;
  MEMORY[0x28223BE20](v11);
  v15 = &v60 - v14;
  sub_213DEBAA8(a1 + 24, &v6[v4[10]]);
  v16 = sub_213F4EEE0();
  v18 = v17;
  *v6 = swift_getKeyPath();
  v6[8] = 0;
  v19 = v4[7];
  *&v6[v19] = swift_getKeyPath();
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7B68, &qword_213F53770);
  swift_storeEnumTagMultiPayload();
  v20 = v4[8];
  *&v6[v20] = swift_getKeyPath();
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7A20, &qword_213F526E0);
  swift_storeEnumTagMultiPayload();
  v21 = v4[9];
  *&v6[v21] = swift_getKeyPath();
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7AC0, &qword_213F52760);
  swift_storeEnumTagMultiPayload();
  v22 = &v6[v4[14]];
  v23 = &v6[v4[15]];
  v24 = &v6[v4[16]];
  v73 = 0;
  v74 = 0;
  memset(v75, 0, sizeof(v75));
  sub_213F4EA90();
  v25 = v77;
  v26 = v78;
  v27 = v79;
  v28 = v80;
  v29 = v81;
  *v24 = v76;
  *(v24 + 2) = v25;
  v24[24] = v26;
  v24[25] = v27;
  v24[26] = v28;
  *(v24 + 4) = v29;
  v30 = v4[17];
  v73 = 0;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7C28, &unk_213F522B0);
  sub_213F4EA90();
  *&v6[v30] = v76;
  v6[v4[11]] = 1;
  v31 = &v6[v4[12]];
  *v31 = v16;
  v31[1] = v18;
  v6[v4[13]] = 1;
  *v22 = 0;
  *(v22 + 1) = 0;
  *v23 = 0;
  *(v23 + 1) = 0;
  v63 = type metadata accessor for MapsDesignImage;
  sub_213E5BCCC(v6, v15, type metadata accessor for MapsDesignImage);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9BC8, &qword_213F5A0B8);
  *&v15[*(v32 + 36)] = 0;
  sub_213E5BD88(v6, type metadata accessor for MapsDesignImage);
  sub_213F4F040();
  v33 = v69;
  v34 = &v15[*(v69 + 44)];
  v62 = xmmword_213F53CD0;
  *v34 = xmmword_213F53CD0;
  *(v34 + 2) = v35;
  *(v34 + 3) = v36;
  sub_213DEBAA8(v68 + 64, &v6[v4[10]]);
  v68 = sub_213F4EEE0();
  v61 = v37;
  *v6 = swift_getKeyPath();
  v6[8] = 0;
  v38 = v4[7];
  *&v6[v38] = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  v39 = v4[8];
  *&v6[v39] = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  v40 = v4[9];
  *&v6[v40] = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  v41 = &v6[v4[14]];
  v42 = &v6[v4[15]];
  v43 = &v6[v4[16]];
  v73 = 0;
  v74 = 0;
  memset(v75, 0, sizeof(v75));
  sub_213F4EA90();
  v44 = v77;
  v45 = v78;
  v46 = v79;
  v47 = v80;
  v48 = v81;
  *v43 = v76;
  *(v43 + 2) = v44;
  v43[24] = v45;
  v43[25] = v46;
  v43[26] = v47;
  *(v43 + 4) = v48;
  v49 = v4[17];
  v73 = 0;
  sub_213F4EA90();
  *&v6[v49] = v76;
  v6[v4[11]] = 1;
  v50 = &v6[v4[12]];
  v51 = v61;
  *v50 = v68;
  v50[1] = v51;
  v6[v4[13]] = 1;
  *v41 = 0;
  *(v41 + 1) = 0;
  *v42 = 0;
  *(v42 + 1) = 0;
  sub_213E5BCCC(v6, v13, v63);
  *&v13[*(v32 + 36)] = 0;
  sub_213E5BD88(v6, type metadata accessor for MapsDesignImage);
  sub_213F4F040();
  v52 = &v13[*(v33 + 44)];
  *v52 = v62;
  *(v52 + 2) = v53;
  *(v52 + 3) = v54;
  v55 = v70;
  sub_213DE3164(v15, v70, &qword_27C8F9BC0, &qword_213F5A048);
  v56 = v71;
  sub_213DE3164(v13, v71, &qword_27C8F9BC0, &qword_213F5A048);
  v57 = v72;
  sub_213DE3164(v55, v72, &qword_27C8F9BC0, &qword_213F5A048);
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9BD0, &qword_213F5A0C0);
  sub_213DE3164(v56, v57 + *(v58 + 48), &qword_27C8F9BC0, &qword_213F5A048);
  sub_213DE36FC(v13, &qword_27C8F9BC0, &qword_213F5A048);
  sub_213DE36FC(v15, &qword_27C8F9BC0, &qword_213F5A048);
  sub_213DE36FC(v56, &qword_27C8F9BC0, &qword_213F5A048);
  return sub_213DE36FC(v55, &qword_27C8F9BC0, &qword_213F5A048);
}

uint64_t sub_213E55448@<X0>(uint64_t *a2@<X8>)
{
  *a2 = sub_213F4EEE0();
  a2[1] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9B68, &qword_213F59FE8);
  sub_213E5472C(v2, a2 + *(v5 + 44));
  v6 = sub_213F4E070();
  sub_213F4CDA0();
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9B70, &qword_213F59FF0);
  v16 = a2 + *(result + 36);
  *v16 = v6;
  *(v16 + 1) = v8;
  *(v16 + 2) = v10;
  *(v16 + 3) = v12;
  *(v16 + 4) = v14;
  v16[40] = 0;
  return result;
}

uint64_t sub_213E554F4@<X0>(__int128 *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F93A8, &unk_213F59F90);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v41 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = &v40 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8F08, &unk_213F56DF0);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v40 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9360, &unk_213F59F70);
  MEMORY[0x28223BE20](v15);
  v17 = &v40 - v16;
  v18 = a1[3];
  v52 = a1[2];
  v53 = v18;
  v54 = a1[4];
  v55 = *(a1 + 80);
  v19 = a1[1];
  v50 = *a1;
  v51 = v19;
  v20 = swift_allocObject();
  v21 = a1[3];
  *(v20 + 48) = a1[2];
  *(v20 + 64) = v21;
  *(v20 + 80) = a1[4];
  *(v20 + 96) = *(a1 + 80);
  v22 = *a1;
  v23 = a1[1];
  *(v20 + 16) = *a1;
  *(v20 + 32) = v23;
  *(v20 + 104) = a2;
  v56 = v22;
  v24 = v53;
  v47 = a3;
  v46 = v11;
  v45 = v17;
  v44 = v15;
  v43 = v12;
  v42 = v14;
  if (v53 == 1)
  {
    sub_213E32048(&v50, &v48);
    v25 = a2;
    sub_213E32160(&v56, &v48);
    sub_213F4CD80();
    v26 = sub_213F4CD90();
    (*(*(v26 - 8) + 56))(v10, 0, 1, v26);
  }

  else
  {
    v27 = sub_213F4CD90();
    (*(*(v27 - 8) + 56))(v10, 1, 1, v27);
    sub_213E32048(&v50, &v48);
    v28 = a2;
    sub_213E32160(&v56, &v48);
  }

  v29 = v51;
  v48 = v56;
  v30 = sub_213DE3164(v10, v41, &qword_27C8F93A8, &unk_213F59F90);
  MEMORY[0x28223BE20](v30);
  *(&v40 - 4) = &v48;
  *(&v40 - 3) = v29;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8F10, &qword_213F57850);
  sub_213DE3AE4(&qword_27C8F8F18, &qword_27C8F8F10, &qword_213F57850, MEMORY[0x277CDEFF0]);
  v31 = v42;
  sub_213F4EAF0();
  sub_213DE36FC(v10, &qword_27C8F93A8, &unk_213F59F90);
  sub_213E321BC(&v56);
  if (v24 >= 2)
  {

    KeyPath = swift_getKeyPath();
    *&v48 = v24;

    v33 = sub_213F4D0D0();
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v33 = 0;
  }

  v34 = v46;
  v35 = v45;
  v36 = v44;
  v37 = v43;
  (*(v43 + 16))(v45, v31, v46);

  v38 = (v35 + *(v36 + 36));
  *v38 = KeyPath;
  v38[1] = v33;
  (*(v37 + 8))(v31, v34);
  v48 = v54;
  v49 = v55;
  sub_213DD76C0();
  sub_213E31F4C();
  sub_213F4E6D0();

  return sub_213DE36FC(v35, &qword_27C8F9360, &unk_213F59F70);
}

uint64_t sub_213E55A60@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v73 = a1;
  v77 = a3;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9370, &qword_213F57810);
  v78 = *(v79 - 8);
  v4 = MEMORY[0x28223BE20](v79);
  v76 = &v72 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v75 = &v72 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9378, &qword_213F57818);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v74 = &v72 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = &v72 - v10;
  v12 = *(a2 + 16);
  v80 = a2;
  if (v12)
  {
    v13 = 0;
    v14 = MEMORY[0x277D84F90];
    do
    {
      v15 = a2 + 32 + 88 * v13;
      v16 = v13;
      while (1)
      {
        if (v16 >= v12)
        {
          __break(1u);
LABEL_44:
          __break(1u);
          goto LABEL_45;
        }

        v17 = *(v15 + 32);
        v18 = *(v15 + 64);
        v85 = *(v15 + 48);
        v86 = v18;
        v87 = *(v15 + 80);
        v19 = *(v15 + 16);
        v82 = *v15;
        v83 = v19;
        v84 = v17;
        v13 = v16 + 1;
        if (__OFADD__(v16, 1))
        {
          goto LABEL_44;
        }

        if (BYTE8(v85))
        {
          break;
        }

        ++v16;
        v15 += 88;
        if (v13 == v12)
        {
          goto LABEL_16;
        }
      }

      sub_213E32048(&v82, v81);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v88 = v14;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_213EA90C8(0, *(v14 + 16) + 1, 1);
        v14 = v88;
      }

      v22 = *(v14 + 16);
      v21 = *(v14 + 24);
      if (v22 >= v21 >> 1)
      {
        sub_213EA90C8((v21 > 1), v22 + 1, 1);
        v14 = v88;
      }

      *(v14 + 16) = v22 + 1;
      v23 = v14 + 88 * v22;
      v24 = v83;
      *(v23 + 32) = v82;
      *(v23 + 48) = v24;
      v25 = v84;
      v26 = v85;
      v27 = v86;
      *(v23 + 112) = v87;
      *(v23 + 80) = v26;
      *(v23 + 96) = v27;
      *(v23 + 64) = v25;
    }

    while (v13 != v12);
  }

  else
  {
    v14 = MEMORY[0x277D84F90];
  }

LABEL_16:
  v28 = *(v14 + 16);
  if (v28 >= 3)
  {
    if (v28 == 3)
    {

      v30 = 3;
      v29 = v14;
      goto LABEL_20;
    }

    goto LABEL_47;
  }

  v29 = v14;
  v14 = MEMORY[0x277D84F90];
  while (v12)
  {
    v34 = 0;
    v35 = v80 + 32;
    v36 = MEMORY[0x277D84F90];
LABEL_26:
    v37 = v35 + 88 * v34;
    v38 = v34;
    while (v38 < v12)
    {
      v39 = *(v37 + 32);
      v40 = *(v37 + 64);
      v85 = *(v37 + 48);
      v86 = v40;
      v87 = *(v37 + 80);
      v41 = *(v37 + 16);
      v82 = *v37;
      v83 = v41;
      v84 = v39;
      v34 = v38 + 1;
      if (__OFADD__(v38, 1))
      {
        goto LABEL_46;
      }

      if ((BYTE8(v85) & 1) == 0)
      {
        sub_213E32048(&v82, v81);
        v42 = swift_isUniquelyReferenced_nonNull_native();
        v88 = v36;
        v43 = v11;
        if ((v42 & 1) == 0)
        {
          sub_213EA90C8(0, *(v36 + 16) + 1, 1);
          v36 = v88;
        }

        v45 = *(v36 + 16);
        v44 = *(v36 + 24);
        if (v45 >= v44 >> 1)
        {
          sub_213EA90C8((v44 > 1), v45 + 1, 1);
          v36 = v88;
        }

        *(v36 + 16) = v45 + 1;
        v46 = v36 + 88 * v45;
        v47 = v83;
        *(v46 + 32) = v82;
        *(v46 + 48) = v47;
        v48 = v84;
        v49 = v85;
        v50 = v86;
        *(v46 + 112) = v87;
        *(v46 + 80) = v49;
        *(v46 + 96) = v50;
        *(v46 + 64) = v48;
        v11 = v43;
        if (v34 != v12)
        {
          goto LABEL_26;
        }

        goto LABEL_39;
      }

      ++v38;
      v37 += 88;
      if (v34 == v12)
      {
        goto LABEL_39;
      }
    }

LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    sub_213E5B720(v14, v14 + 32, 0, 7uLL);
    v29 = v70;
    v30 = *(v14 + 16);
    if (v30)
    {
LABEL_20:
      if (v30 >= 3)
      {
        v31 = 3;
      }

      else
      {
        v31 = v30;
      }

      sub_213E5B720(v14, v14 + 32, v31, (2 * v30) | 1);
      v33 = v32;

      v14 = v33;
    }
  }

  v36 = MEMORY[0x277D84F90];
LABEL_39:
  *&v82 = v14;
  v51 = sub_213E273F0(v36);
  v52 = v82;
  if (*(v29 + 16))
  {
    MEMORY[0x28223BE20](v51);
    v53 = v80;
    *(&v72 - 4) = v29;
    *(&v72 - 3) = v53;
    v54 = v73;
    v71 = v73;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9350, &unk_213F59F60);
    sub_213E31E00();
    sub_213F4CFD0();

    v55 = 0;
  }

  else
  {

    v55 = 1;
    v54 = v73;
    v53 = v80;
  }

  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9380, &qword_213F57820);
  (*(*(v56 - 8) + 56))(v11, v55, 1, v56);
  *&v82 = v52;
  v57 = swift_allocObject();
  *(v57 + 16) = v53;
  *(v57 + 24) = v54;

  v58 = v54;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9388, &qword_213F57828);
  v59 = v11;
  v72 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9390, &qword_213F57830);
  sub_213DE3AE4(&qword_2811824E8, &qword_27C8F9388, &qword_213F57828, MEMORY[0x277D83980]);
  sub_213DE3AE4(&qword_281182578, &qword_27C8F9390, &qword_213F57830, MEMORY[0x277CE14C0]);
  v71 = sub_213E320C4();
  v60 = v75;
  sub_213F4ECD0();
  v61 = v74;
  sub_213DE3164(v59, v74, &qword_27C8F9378, &qword_213F57818);
  v62 = v78;
  v63 = *(v78 + 16);
  v64 = v76;
  v65 = v79;
  v63(v76, v60, v79);
  v66 = v77;
  sub_213DE3164(v61, v77, &qword_27C8F9378, &qword_213F57818);
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9398, &qword_213F57838);
  v63((v66 + *(v67 + 48)), v64, v65);
  v68 = *(v62 + 8);
  v68(v60, v65);
  sub_213DE36FC(v72, &qword_27C8F9378, &qword_213F57818);
  v68(v64, v65);
  return sub_213DE36FC(v61, &qword_27C8F9378, &qword_213F57818);
}

uint64_t sub_213E5620C(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = swift_allocObject();
  *(v5 + 16) = a2;
  *(v5 + 24) = a3;

  v6 = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9388, &qword_213F57828);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F93A0, &unk_213F57840);
  sub_213DE3AE4(&qword_2811824E8, &qword_27C8F9388, &qword_213F57828, MEMORY[0x277D83980]);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F9358, &unk_213F57800);
  sub_213E31EC0();
  swift_getOpaqueTypeConformance2();
  sub_213E320C4();
  return sub_213F4ECD0();
}

uint64_t sub_213E56370(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = sub_213F4D330();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9358, &unk_213F57800);
  MEMORY[0x28223BE20](v9);
  v11 = v15 - v10;
  v12 = *(a1 + 48);
  v15[2] = *(a1 + 32);
  v15[3] = v12;
  v15[4] = *(a1 + 64);
  v16 = *(a1 + 80);
  v13 = *(a1 + 16);
  v15[0] = *a1;
  v15[1] = v13;
  sub_213E554F4(v15, a3, v15 - v10);
  sub_213F4D320();
  sub_213E31EC0();
  sub_213F4E4E0();
  (*(v6 + 8))(v8, v5);
  return sub_213DE36FC(v11, &qword_27C8F9358, &unk_213F57800);
}

uint64_t sub_213E56518@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v28 = a2;
  v29 = a4;
  v6 = sub_213F4ECB0();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F93B0, &unk_213F59FD0);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v28 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9358, &unk_213F57800);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v19 = &v28 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = &v28 - v20;
  v22 = *(a1 + 16);
  v30[0] = *a1;
  v30[1] = v22;
  *v31 = *(a1 + 32);
  *&v31[9] = *(a1 + 41);
  v23 = *(a1 + 57);
  v33[0] = *(a1 + 58);
  *(v33 + 15) = *(a1 + 73);
  v32 = v23;
  sub_213E554F4(v30, a3, &v28 - v20);
  if (v23)
  {
    sub_213F4ECA0();
    (*(v7 + 32))(v15, v9, v6);
    v24 = 0;
  }

  else
  {
    v24 = 1;
  }

  (*(v7 + 56))(v15, v24, 1, v6);
  sub_213DE3164(v21, v19, &qword_27C8F9358, &unk_213F57800);
  sub_213DE3164(v15, v13, &qword_27C8F93B0, &unk_213F59FD0);
  v25 = v29;
  sub_213DE3164(v19, v29, &qword_27C8F9358, &unk_213F57800);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F93B8, &qword_213F57890);
  sub_213DE3164(v13, v25 + *(v26 + 48), &qword_27C8F93B0, &unk_213F59FD0);
  sub_213DE36FC(v15, &qword_27C8F93B0, &unk_213F59FD0);
  sub_213DE36FC(v21, &qword_27C8F9358, &unk_213F57800);
  sub_213DE36FC(v13, &qword_27C8F93B0, &unk_213F59FD0);
  return sub_213DE36FC(v19, &qword_27C8F9358, &unk_213F57800);
}

uint64_t sub_213E56824@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v50 = a3;
  v48 = sub_213F4D450();
  v49 = *(v48 - 8);
  MEMORY[0x28223BE20](v48);
  v44 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = sub_213F4D360();
  v41 = *(v40 - 8);
  MEMORY[0x28223BE20](v40);
  v7 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9AD8, &qword_213F59E38);
  v39 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v39 - v9;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9AE0, &qword_213F59E40);
  v43 = *(v42 - 8);
  MEMORY[0x28223BE20](v42);
  v12 = &v39 - v11;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9AE8, &qword_213F59E48) - 8;
  MEMORY[0x28223BE20](v45);
  v14 = &v39 - v13;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9AF0, &qword_213F59E50);
  MEMORY[0x28223BE20](v47);
  v46 = &v39 - v15;
  v51 = a2;
  v52 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9AF8, &unk_213F59E58);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9348, &unk_213F577F0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F9B00, &qword_213F59E68);
  v17 = sub_213F4DBC0();
  v18 = sub_213E5B25C();
  v19 = sub_213E5B680(&qword_2811829B0, MEMORY[0x277CDDFF8], MEMORY[0x277CDDFF0]);
  *&v55 = v16;
  *(&v55 + 1) = v17;
  *&v56 = v18;
  *(&v56 + 1) = v19;
  swift_getOpaqueTypeConformance2();
  sub_213DE3AE4(&qword_281182588, &qword_27C8F9348, &unk_213F577F0, MEMORY[0x277CE14C0]);
  sub_213F4E270();
  sub_213F4D350();
  v20 = sub_213DE3AE4(&qword_281182820, &qword_27C8F9AD8, &qword_213F59E38, MEMORY[0x277CDE5B0]);
  v21 = sub_213E5B680(&qword_281183498, MEMORY[0x277CDD9E0], MEMORY[0x277CDD9D8]);
  v22 = v40;
  sub_213F4E860();
  (*(v41 + 8))(v7, v22);
  (*(v39 + 8))(v10, v8);
  v23 = v44;
  sub_213F4D440();
  *&v55 = v8;
  *(&v55 + 1) = v22;
  *&v56 = v20;
  *(&v56 + 1) = v21;
  swift_getOpaqueTypeConformance2();
  sub_213E5B680(&qword_281182C78, MEMORY[0x277CDDB18], MEMORY[0x277CDDB08]);
  v24 = v42;
  v25 = v48;
  sub_213F4E3B0();
  (*(v49 + 8))(v23, v25);
  (*(v43 + 8))(v12, v24);
  v14[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9B48, &qword_213F59EB0) + 36)] = 0;
  KeyPath = swift_getKeyPath();
  v27 = &v14[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9B50, &qword_213F59EE8) + 36)];
  *v27 = KeyPath;
  v27[8] = 2;
  LOBYTE(KeyPath) = sub_213F4E050();
  sub_213F4CDA0();
  v28 = &v14[*(v45 + 44)];
  *v28 = KeyPath;
  *(v28 + 1) = v29;
  *(v28 + 2) = v30;
  *(v28 + 3) = v31;
  *(v28 + 4) = v32;
  v28[40] = 0;
  sub_213F4EEA0();
  sub_213F4D4E0();
  v33 = v46;
  sub_213DC798C(v14, v46);
  v34 = (v33 + *(v47 + 36));
  v35 = v60;
  v34[4] = v59;
  v34[5] = v35;
  v34[6] = v61;
  v36 = v56;
  *v34 = v55;
  v34[1] = v36;
  v37 = v58;
  v34[2] = v57;
  v34[3] = v37;
  v53 = 1701998413;
  v54 = 0xE400000000000000;
  MEMORY[0x216052710](0x6E6F74747542, 0xE600000000000000);
  sub_213E5B810();
  sub_213F4E6D0();

  return sub_213DE36FC(v33, &qword_27C8F9AF0, &qword_213F59E50);
}

uint64_t sub_213E56FC4@<X0>(uint64_t a1@<X8>)
{
  v25[1] = a1;
  v1 = sub_213F4DBC0();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7668, &qword_213F52190);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v25 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9B00, &qword_213F59E68);
  MEMORY[0x28223BE20](v8);
  v10 = v25 - v9;
  v11 = sub_213F4E9F0();
  sub_213F4E110();
  v12 = sub_213F4E0F0();
  (*(*(v12 - 8) + 56))(v7, 1, 1, v12);
  v13 = sub_213F4E190();
  sub_213DE36FC(v7, &qword_27C8F7668, &qword_213F52190);
  KeyPath = swift_getKeyPath();
  sub_213F4E8F0();
  v15 = sub_213F4E900();

  sub_213F4EEE0();
  sub_213F4D0C0();
  v16 = &v10[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9B18, &unk_213F59E80) + 36)];
  sub_213F4EE60();
  *&v16[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9B30, &qword_213F59EA0) + 56)] = 256;
  *v10 = v11;
  *(v10 + 1) = KeyPath;
  *(v10 + 2) = v13;
  *(v10 + 3) = v15;
  v17 = v27;
  *(v10 + 2) = v26;
  *(v10 + 3) = v17;
  *(v10 + 4) = v28;
  v18 = swift_getKeyPath();
  v19 = &v10[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9B10, &qword_213F59E78) + 36)];
  v20 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9B38, &qword_213F60B00) + 28);
  v21 = *MEMORY[0x277CDF3C0];
  v22 = sub_213F4CEA0();
  (*(*(v22 - 8) + 104))(v19 + v20, v21, v22);
  *v19 = v18;
  v10[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9B08, &qword_213F59E70) + 36)] = 0;
  v23 = &v10[*(v8 + 36)];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9B40, &qword_213F59EA8);
  sub_213F4D510();
  *v23 = 0xC020000000000000;
  v23[8] = 0;
  sub_213F4D570();
  sub_213E5B25C();
  sub_213E5B680(&qword_2811829B0, MEMORY[0x277CDDFF8], MEMORY[0x277CDDFF0]);
  sub_213F4E410();
  (*(v2 + 8))(v4, v1);
  return sub_213DE36FC(v10, &qword_27C8F9B00, &qword_213F59E68);
}

uint64_t sub_213E573E4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_213F4D7F0();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7B68, &qword_213F53770);
  MEMORY[0x28223BE20](v8);
  v10 = &v14 - v9;
  sub_213DE3164(v2, &v14 - v9, &qword_27C8F7B68, &qword_213F53770);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_213F4D290();
    return (*(*(v11 - 8) + 32))(a1, v10, v11);
  }

  else
  {
    sub_213F4F520();
    v13 = sub_213F4E000();
    sub_213F4CC10();

    sub_213F4D7E0();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

void *sub_213E575E4@<X0>(uint64_t (**a1)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)@<X8>)
{
  v3 = *v1;
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  v5 = objc_allocWithZone(MEMORY[0x277D75D18]);

  [v5 init];
  sub_213E29028();
  result = sub_213F4EA90();
  *a1 = sub_213E5B24C;
  a1[1] = v4;
  a1[2] = v7;
  a1[3] = v8;
  return result;
}

__n128 GuideTile.init(model:menuActions:tapHandler:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  *a5 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7B68, &qword_213F53770);
  swift_storeEnumTagMultiPayload();
  v10 = type metadata accessor for GuideTile(0);
  v11 = v10[5];
  *(a5 + v11) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9190, &qword_213F58FE0);
  swift_storeEnumTagMultiPayload();
  v12 = a5 + v10[6];
  v13 = *(a1 + 208);
  *(v12 + 12) = *(a1 + 192);
  *(v12 + 13) = v13;
  *(v12 + 14) = *(a1 + 224);
  *(v12 + 30) = *(a1 + 240);
  v14 = *(a1 + 144);
  *(v12 + 8) = *(a1 + 128);
  *(v12 + 9) = v14;
  v15 = *(a1 + 176);
  *(v12 + 10) = *(a1 + 160);
  *(v12 + 11) = v15;
  v16 = *(a1 + 80);
  *(v12 + 4) = *(a1 + 64);
  *(v12 + 5) = v16;
  v17 = *(a1 + 112);
  *(v12 + 6) = *(a1 + 96);
  *(v12 + 7) = v17;
  v18 = *(a1 + 16);
  *v12 = *a1;
  *(v12 + 1) = v18;
  result = *(a1 + 32);
  v20 = *(a1 + 48);
  *(v12 + 2) = result;
  *(v12 + 3) = v20;
  *(a5 + v10[7]) = a2;
  v21 = (a5 + v10[8]);
  *v21 = a3;
  v21[1] = a4;
  return result;
}

uint64_t GuideTile.body.getter@<X0>(uint64_t a1@<X8>)
{
  v40 = a1;
  v2 = type metadata accessor for GuideTile(0);
  v3 = *(v2 - 8);
  v39 = v2 - 8;
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9A40, &qword_213F59860);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v33 - v7;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9A48, &qword_213F59868);
  MEMORY[0x28223BE20](v34);
  v10 = &v33 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9A50, &qword_213F59870);
  v12 = *(v11 - 8);
  v35 = v11;
  v36 = v12;
  MEMORY[0x28223BE20](v11);
  v14 = &v33 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9A58, &qword_213F59878);
  v37 = *(v15 - 8);
  v38 = v15;
  MEMORY[0x28223BE20](v15);
  v17 = &v33 - v16;
  sub_213E5BCCC(v1, &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for GuideTile);
  v18 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v19 = swift_allocObject();
  sub_213E5C3AC(&v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v19 + v18, type metadata accessor for GuideTile);
  v42 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9A60, &qword_213F59880);
  sub_213E5A564();
  sub_213F4EB00();
  sub_213DE3AE4(&qword_27C8F9A90, &qword_27C8F9A40, &qword_213F59860, MEMORY[0x277CDF028]);
  sub_213F4E620();
  (*(v6 + 8))(v8, v5);
  v20 = sub_213E5A7CC();
  v21 = sub_213E2EE14();
  v22 = v34;
  sub_213F4E3C0();
  sub_213DE36FC(v10, &qword_27C8F9A48, &qword_213F59868);
  v41 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9AA0, &qword_213F59898);
  v43 = v22;
  v44 = &type metadata for ScalingTile;
  v45 = v20;
  v46 = v21;
  swift_getOpaqueTypeConformance2();
  sub_213DE3AE4(&qword_281182698, &qword_27C8F9AA0, &qword_213F59898, MEMORY[0x277CE1198]);
  v23 = v35;
  sub_213F4E6F0();
  (*(v36 + 8))(v14, v23);
  v43 = 0x6C69546564697547;
  v44 = 0xEA00000000002E65;
  if (*(v1 + *(v39 + 32) + 16))
  {
    if (*(v1 + *(v39 + 32) + 16) == 1)
    {
      v24 = 0x8000000213FA5710;
      v25 = 0xD000000000000010;
    }

    else
    {
      v24 = 0xE900000000000072;
      v25 = 0x656873696C627550;
    }
  }

  else
  {
    v24 = 0xE400000000000000;
    v25 = 1919251285;
  }

  v26 = v40;
  v28 = v37;
  v27 = v38;
  MEMORY[0x216052710](v25, v24);

  v29 = v43;
  v30 = v44;
  (*(v28 + 32))(v26, v17, v27);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9AA8, &qword_213F598A0);
  v32 = v26 + *(result + 36);
  *v32 = v29;
  *(v32 + 8) = v30;
  *(v32 + 16) = 11;
  return result;
}

uint64_t sub_213E57D64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_213F4D290();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v35 - v9;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F75C0, &qword_213F54760);
  MEMORY[0x28223BE20](v37);
  v12 = &v35 - v11;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9A80, &qword_213F59890);
  MEMORY[0x28223BE20](v36);
  v14 = (&v35 - v13);
  *v14 = sub_213F4EEE0();
  v14[1] = v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9CE8, &qword_213F5A228);
  sub_213E581F8(a1, v14 + *(v16 + 44));
  v17 = *MEMORY[0x277CDF998];
  v18 = sub_213F4D390();
  (*(*(v18 - 8) + 104))(v12, v17, v18);
  sub_213E5B680(&qword_281183488, MEMORY[0x277CDFA28], MEMORY[0x277CDFA48]);
  result = sub_213F4F1F0();
  if (result)
  {
    sub_213DE3AE4(&qword_281182640, &qword_27C8F9A80, &qword_213F59890, MEMORY[0x277CE11A8]);
    v35 = a2;
    sub_213DE3AE4(&unk_2811822E8, &qword_27C8F75C0, &qword_213F54760, MEMORY[0x277D84470]);
    sub_213F4E570();
    sub_213DE36FC(v12, &qword_27C8F75C0, &qword_213F54760);
    sub_213DE36FC(v14, &qword_27C8F9A80, &qword_213F59890);
    sub_213E573E4(v10);
    sub_213F4D280();
    sub_213F4D270();
    v20 = *(v5 + 8);
    v20(v8, v4);
    v20(v10, v4);
    v38 = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
    sub_213E29028();
    sub_213F4EA90();
    v22 = v39;
    v21 = v40;
    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9A78, &qword_213F59888);
    v24 = v35;
    v25 = (v35 + *(v23 + 36));
    *v25 = v22;
    v25[1] = v21;
    v25[2] = 0x403A000000000000;
    sub_213E573E4(v10);
    sub_213F4D280();
    sub_213F4D270();
    v20(v8, v4);
    v20(v10, v4);
    v26 = (v24 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9A60, &qword_213F59880) + 36));
    v27 = *(sub_213F4D470() + 20);
    v28 = *MEMORY[0x277CE0118];
    v29 = sub_213F4D950();
    (*(*(v29 - 8) + 104))(&v26[v27], v28, v29);
    __asm { FMOV            V0.2D, #26.0 }

    *v26 = _Q0;
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8368, &unk_213F55BC0);
    *&v26[*(result + 36)] = 256;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_213E581F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v112 = a2;
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9CF0, &qword_213F5A230);
  MEMORY[0x28223BE20](v110);
  v4 = &v87 - v3;
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9CF8, &qword_213F5A238);
  MEMORY[0x28223BE20](v103);
  v94 = &v87 - v5;
  v90 = type metadata accessor for PublisherGuideContent(0);
  v6 = MEMORY[0x28223BE20](v90);
  v92 = &v87 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v93 = (&v87 - v8);
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9D00, &qword_213F5A240);
  v104 = *(v98 - 8);
  v9 = MEMORY[0x28223BE20](v98);
  v91 = &v87 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v95 = &v87 - v11;
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9D08, &qword_213F5A248);
  MEMORY[0x28223BE20](v106);
  v109 = &v87 - v12;
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9D10, &qword_213F5A250);
  MEMORY[0x28223BE20](v99);
  v101 = &v87 - v13;
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9D18, &qword_213F5A258);
  MEMORY[0x28223BE20](v108);
  v102 = &v87 - v14;
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9D20, &qword_213F5A260);
  MEMORY[0x28223BE20](v100);
  v89 = &v87 - v15;
  v16 = type metadata accessor for UserGuideContent(0);
  v17 = MEMORY[0x28223BE20](v16);
  v97 = &v87 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v20 = (&v87 - v19);
  v21 = sub_213F4D8B0();
  v22 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v24 = &v87 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9D28, &qword_213F5A268);
  v88 = *(v96 - 8);
  v25 = MEMORY[0x28223BE20](v96);
  v27 = &v87 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v29 = &v87 - v28;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9D30, &qword_213F5A270);
  v31 = MEMORY[0x28223BE20](v30 - 8);
  v107 = &v87 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31);
  v113 = &v87 - v33;
  v105 = type metadata accessor for GuideTile(0);
  v34 = *(v105 + 24);
  v111 = a1;
  v35 = (a1 + v34);
  v36 = *(a1 + v34 + 16);
  if (v36)
  {
    if (v36 == 1)
    {
      sub_213DE3164((v35 + 17), v114, &qword_27C8F9A38, &qword_213F597E8);
      v115 = 0u;
      v116 = 0u;
      v117 = 0u;
      v118 = 0u;
      v119 = 0u;
      v120 = 0u;
      v121 = 0;
      sub_213E5201C(v114, &v115, &qword_27C8F9A38, &qword_213F597E8);
      v38 = v35[3];
      v37 = v35[4];
      v40 = v35[5];
      v39 = v35[6];
      *v20 = swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9190, &qword_213F58FE0);
      swift_storeEnumTagMultiPayload();
      v41 = (v20 + *(v16 + 24));
      v42 = (v20 + *(v16 + 20));
      *v42 = v38;
      v42[1] = v37;
      *v41 = v40;
      v41[1] = v39;
      sub_213E5C500(&v115, v114);
      v43 = v97;
      sub_213E5BCCC(v20, v97, type metadata accessor for UserGuideContent);
      sub_213E5C500(v114, v4);
      v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9D38, &qword_213F5A278);
      sub_213E5BCCC(v43, &v4[*(v44 + 48)], type metadata accessor for UserGuideContent);

      sub_213E5BD88(v43, type metadata accessor for UserGuideContent);
      sub_213E5C538(v114);
      sub_213DE3164(v4, v109, &qword_27C8F9CF0, &qword_213F5A230);
      swift_storeEnumTagMultiPayload();
      sub_213E5C568();
      sub_213DE3AE4(&qword_2811825A0, &qword_27C8F9CF0, &qword_213F5A230, MEMORY[0x277CE14C0]);
      sub_213F4DBA0();
      sub_213DE36FC(v4, &qword_27C8F9CF0, &qword_213F5A230);
      sub_213E5BD88(v20, type metadata accessor for UserGuideContent);
      sub_213E5C538(&v115);
    }

    else
    {
      sub_213DE3164((v35 + 7), v114, &qword_27C8F7AB8, &qword_213F522C0);
      v61 = v35[30];
      v115 = 0u;
      v116 = 0u;
      *&v117 = 0;

      sub_213E5201C(v114, &v115, &qword_27C8F7AB8, &qword_213F522C0);
      *(&v117 + 1) = v61;
      (*(v22 + 104))(v24, *MEMORY[0x277CE00F0], v21);
      sub_213E5C648();
      v62 = v95;
      sub_213F4E480();
      (*(v22 + 8))(v24, v21);
      sub_213E5C69C(&v115);
      sub_213DE3164((v35 + 12), &v115, &qword_27C8F7AB8, &qword_213F522C0);
      v64 = v35[3];
      v63 = v35[4];
      KeyPath = swift_getKeyPath();
      v66 = v93;
      *v93 = KeyPath;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9190, &qword_213F58FE0);
      swift_storeEnumTagMultiPayload();
      v67 = v90;
      v68 = *(v90 + 20);
      *(v66 + v68) = swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7B68, &qword_213F53770);
      swift_storeEnumTagMultiPayload();
      v69 = v66 + *(v67 + 24);
      *(v69 + 32) = 0;
      *v69 = 0u;
      *(v69 + 16) = 0u;

      sub_213E5201C(&v115, v69, &qword_27C8F7AB8, &qword_213F522C0);
      v70 = (v66 + *(v67 + 28));
      *v70 = v64;
      v70[1] = v63;
      v71 = v104;
      v72 = *(v104 + 16);
      v73 = v91;
      v74 = v62;
      v75 = v98;
      v72(v91, v74, v98);
      v76 = v92;
      sub_213E5BCCC(v66, v92, type metadata accessor for PublisherGuideContent);
      v77 = v94;
      v72(v94, v73, v75);
      v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9D48, &qword_213F5A288);
      sub_213E5BCCC(v76, v77 + *(v78 + 48), type metadata accessor for PublisherGuideContent);
      sub_213E5BD88(v76, type metadata accessor for PublisherGuideContent);
      v79 = *(v71 + 8);
      v104 = v71 + 8;
      v79(v73, v75);
      sub_213DE3164(v77, v101, &qword_27C8F9CF8, &qword_213F5A238);
      swift_storeEnumTagMultiPayload();
      v80 = MEMORY[0x277CE14C0];
      sub_213DE3AE4(&qword_281182598, &qword_27C8F9D20, &qword_213F5A260, MEMORY[0x277CE14C0]);
      sub_213DE3AE4(&qword_281182590, &qword_27C8F9CF8, &qword_213F5A238, v80);
      v81 = v102;
      sub_213F4DBA0();
      sub_213DE3164(v81, v109, &qword_27C8F9D18, &qword_213F5A258);
      swift_storeEnumTagMultiPayload();
      sub_213E5C568();
      sub_213DE3AE4(&qword_2811825A0, &qword_27C8F9CF0, &qword_213F5A230, v80);
      sub_213F4DBA0();
      sub_213DE36FC(v81, &qword_27C8F9D18, &qword_213F5A258);
      sub_213DE36FC(v77, &qword_27C8F9CF8, &qword_213F5A238);
      sub_213E5BD88(v66, type metadata accessor for PublisherGuideContent);
      v79(v95, v98);
    }
  }

  else
  {
    sub_213DE3164((v35 + 7), v114, &qword_27C8F7AB8, &qword_213F522C0);
    v45 = v35[30];
    v115 = 0u;
    v116 = 0u;
    *&v117 = 0;

    sub_213E5201C(v114, &v115, &qword_27C8F7AB8, &qword_213F522C0);
    *(&v117 + 1) = v45;
    (*(v22 + 104))(v24, *MEMORY[0x277CE00F0], v21);
    sub_213E5C6CC();
    v87 = v29;
    sub_213F4E480();
    (*(v22 + 8))(v24, v21);
    sub_213E5C720(&v115);
    v47 = v35[3];
    v104 = v35[4];
    v46 = v104;
    v49 = v35[5];
    v48 = v35[6];
    *v20 = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9190, &qword_213F58FE0);
    swift_storeEnumTagMultiPayload();
    v50 = (v20 + *(v16 + 24));
    v51 = (v20 + *(v16 + 20));
    *v51 = v47;
    v51[1] = v46;
    *v50 = v49;
    v50[1] = v48;
    v52 = v88;
    v53 = *(v88 + 16);
    v54 = v29;
    v55 = v96;
    v53(v27, v54, v96);
    v56 = v97;
    sub_213E5BCCC(v20, v97, type metadata accessor for UserGuideContent);
    v57 = v89;
    v53(v89, v27, v55);
    v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9D50, &unk_213F5A290);
    sub_213E5BCCC(v56, v57 + *(v58 + 48), type metadata accessor for UserGuideContent);

    sub_213E5BD88(v56, type metadata accessor for UserGuideContent);
    v104 = *(v52 + 8);
    (v104)(v27, v55);
    sub_213DE3164(v57, v101, &qword_27C8F9D20, &qword_213F5A260);
    swift_storeEnumTagMultiPayload();
    v59 = MEMORY[0x277CE14C0];
    sub_213DE3AE4(&qword_281182598, &qword_27C8F9D20, &qword_213F5A260, MEMORY[0x277CE14C0]);
    sub_213DE3AE4(&qword_281182590, &qword_27C8F9CF8, &qword_213F5A238, v59);
    v60 = v102;
    sub_213F4DBA0();
    sub_213DE3164(v60, v109, &qword_27C8F9D18, &qword_213F5A258);
    swift_storeEnumTagMultiPayload();
    sub_213E5C568();
    sub_213DE3AE4(&qword_2811825A0, &qword_27C8F9CF0, &qword_213F5A230, v59);
    sub_213F4DBA0();
    sub_213DE36FC(v60, &qword_27C8F9D18, &qword_213F5A258);
    sub_213DE36FC(v57, &qword_27C8F9D20, &qword_213F5A260);
    sub_213E5BD88(v20, type metadata accessor for UserGuideContent);
    (v104)(v87, v96);
  }

  v82 = *(v111 + *(v105 + 28));
  if (*(v82 + 16))
  {
  }

  else
  {
    v82 = 0;
  }

  v83 = v113;
  v84 = v107;
  sub_213DE3164(v113, v107, &qword_27C8F9D30, &qword_213F5A270);
  v85 = v112;
  sub_213DE3164(v84, v112, &qword_27C8F9D30, &qword_213F5A270);
  *(v85 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9D40, &qword_213F5A280) + 48)) = v82;

  sub_213DE36FC(v83, &qword_27C8F9D30, &qword_213F5A270);

  return sub_213DE36FC(v84, &qword_27C8F9D30, &qword_213F5A270);
}

uint64_t sub_213E592C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = sub_213F4DA40();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9C80, &qword_213F5A1C0);
  return sub_213E59318(a1, a2 + *(v4 + 44));
}

uint64_t sub_213E59318@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v55 = a2;
  v3 = sub_213F4DDD0();
  v53 = *(v3 - 8);
  v54 = v3;
  MEMORY[0x28223BE20](v3);
  v52 = &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for GuideTile(0);
  v6 = v5 - 8;
  v51 = *(v5 - 8);
  v50 = *(v51 + 64);
  MEMORY[0x28223BE20](v5);
  v49 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = sub_213F4DF50();
  v45 = *(v47 - 8);
  MEMORY[0x28223BE20](v47);
  v9 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9C88, &qword_213F5A1C8);
  MEMORY[0x28223BE20](v10);
  v12 = (&v40 - v11);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9C90, &qword_213F5A1D0);
  v14 = *(v13 - 8);
  v42 = v13;
  v43 = v14;
  MEMORY[0x28223BE20](v13);
  v16 = &v40 - v15;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9C98, &qword_213F5A1D8);
  v17 = MEMORY[0x28223BE20](v48);
  v19 = &v40 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v44 = &v40 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9CA0, &qword_213F5A1E0);
  v22 = MEMORY[0x28223BE20](v21 - 8);
  v46 = &v40 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v25 = &v40 - v24;
  v26 = *(v6 + 36);
  v41 = a1;
  v56 = *(a1 + v26);
  sub_213E5C2E8();
  sub_213F4E4B0();
  *v12 = sub_213F4EEE0();
  v12[1] = v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9CA8, &qword_213F5A1E8);
  sub_213E59974(a1, v12 + *(v28 + 44));
  sub_213F4DF30();
  v29 = sub_213DE3AE4(&qword_281182670, &qword_27C8F9C88, &qword_213F5A1C8, MEMORY[0x277CE11A8]);
  sub_213F4E640();
  (*(v45 + 8))(v9, v47);
  sub_213DE36FC(v12, &qword_27C8F9C88, &qword_213F5A1C8);
  v56 = v10;
  v57 = v29;
  swift_getOpaqueTypeConformance2();
  v30 = v42;
  sub_213F4E4B0();
  (*(v43 + 8))(v16, v30);
  v31 = v49;
  sub_213E5BCCC(v41, v49, type metadata accessor for GuideTile);
  v32 = (*(v51 + 80) + 16) & ~*(v51 + 80);
  v33 = swift_allocObject();
  sub_213E5C3AC(v31, v33 + v32, type metadata accessor for GuideTile);
  v34 = v52;
  sub_213F4DDC0();
  v35 = v44;
  sub_213F4D3E0();

  (*(v53 + 8))(v34, v54);
  sub_213DE36FC(v19, &qword_27C8F9C98, &qword_213F5A1D8);
  v36 = v46;
  sub_213DE3164(v25, v46, &qword_27C8F9CA0, &qword_213F5A1E0);
  sub_213DE3164(v35, v19, &qword_27C8F9C98, &qword_213F5A1D8);
  v37 = v55;
  sub_213DE3164(v36, v55, &qword_27C8F9CA0, &qword_213F5A1E0);
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9CB0, &qword_213F5A1F0);
  sub_213DE3164(v19, v37 + *(v38 + 48), &qword_27C8F9C98, &qword_213F5A1D8);
  sub_213DE36FC(v35, &qword_27C8F9C98, &qword_213F5A1D8);
  sub_213DE36FC(v25, &qword_27C8F9CA0, &qword_213F5A1E0);
  sub_213DE36FC(v19, &qword_27C8F9C98, &qword_213F5A1D8);
  return sub_213DE36FC(v36, &qword_27C8F9CA0, &qword_213F5A1E0);
}

uint64_t sub_213E59974@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v93 = a2;
  v94 = a1;
  v85 = type metadata accessor for PublisherGuideContent(0);
  MEMORY[0x28223BE20](v85);
  v80 = (&v79 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9CB8, &qword_213F5A1F8);
  MEMORY[0x28223BE20](v88);
  v90 = &v79 - v3;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9CC0, &qword_213F5A200);
  MEMORY[0x28223BE20](v81);
  v83 = &v79 - v4;
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9CC8, &qword_213F5A208);
  MEMORY[0x28223BE20](v89);
  v84 = &v79 - v5;
  v86 = type metadata accessor for UserGuideContent(0);
  MEMORY[0x28223BE20](v86);
  v82 = (&v79 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9CD0, &qword_213F5A210);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v92 = &v79 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v91 = &v79 - v10;
  v11 = sub_213F4D290();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v79 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v79 - v16;
  v18 = sub_213F4D470();
  v19 = v18 - 8;
  MEMORY[0x28223BE20](v18);
  v21 = &v79 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9CD8, &qword_213F5A218);
  v23 = v22 - 8;
  v24 = MEMORY[0x28223BE20](v22);
  v87 = &v79 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x28223BE20](v24);
  v28 = &v79 - v27;
  MEMORY[0x28223BE20](v26);
  v30 = &v79 - v29;
  sub_213E573E4(v17);
  sub_213F4D280();
  sub_213F4D270();
  v31 = *(v12 + 8);
  v31(v15, v11);
  v31(v17, v11);
  v32 = *(v19 + 28);
  v33 = *MEMORY[0x277CE0118];
  v34 = sub_213F4D950();
  (*(*(v34 - 8) + 104))(&v21[v32], v33, v34);
  __asm { FMOV            V0.2D, #26.0 }

  *v21 = _Q0;
  sub_213F4EEE0();
  sub_213F4D4E0();
  sub_213E5C3AC(v21, v28, MEMORY[0x277CDFC08]);
  v40 = &v28[*(v23 + 44)];
  v41 = v101;
  *(v40 + 4) = v100;
  *(v40 + 5) = v41;
  *(v40 + 6) = v102;
  v42 = v97;
  *v40 = v96;
  *(v40 + 1) = v42;
  v43 = v99;
  *(v40 + 2) = v98;
  *(v40 + 3) = v43;
  sub_213DE2B44(v28, v30, &qword_27C8F9CD8, &qword_213F5A218);
  v44 = v94 + *(type metadata accessor for GuideTile(0) + 24);
  if (!*(v44 + 16))
  {
    v57 = *(v44 + 24);
    v56 = *(v44 + 32);
    v59 = *(v44 + 40);
    v58 = *(v44 + 48);
    KeyPath = swift_getKeyPath();
    v61 = v82;
    *v82 = KeyPath;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9190, &qword_213F58FE0);
    swift_storeEnumTagMultiPayload();
    v62 = (v61 + *(v86 + 24));
    v63 = (v61 + *(v86 + 20));
    *v63 = v57;
    v63[1] = v56;
    *v62 = v59;
    v62[1] = v58;
    sub_213E5BCCC(v61, v83, type metadata accessor for UserGuideContent);
    swift_storeEnumTagMultiPayload();
    sub_213E5B680(qword_281186508, type metadata accessor for UserGuideContent, &unk_213F59C60);
    sub_213E5B680(qword_2811851F8, type metadata accessor for PublisherGuideContent, &unk_213F59D00);

    v64 = v84;
    sub_213F4DBA0();
    sub_213DE3164(v64, v90, &qword_27C8F9CC8, &qword_213F5A208);
    swift_storeEnumTagMultiPayload();
    sub_213E5C414();
    v53 = v91;
    sub_213F4DBA0();
    sub_213DE36FC(v64, &qword_27C8F9CC8, &qword_213F5A208);
    v65 = type metadata accessor for UserGuideContent;
LABEL_6:
    v54 = v65;
    v55 = v61;
    goto LABEL_7;
  }

  if (*(v44 + 16) != 1)
  {
    sub_213DE3164(v44 + 96, v95, &qword_27C8F7AB8, &qword_213F522C0);
    v67 = *(v44 + 24);
    v66 = *(v44 + 32);
    v68 = swift_getKeyPath();
    v61 = v80;
    *v80 = v68;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9190, &qword_213F58FE0);
    swift_storeEnumTagMultiPayload();
    v69 = v85;
    v70 = *(v85 + 20);
    *(v61 + v70) = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7B68, &qword_213F53770);
    swift_storeEnumTagMultiPayload();
    v71 = v61 + *(v69 + 24);
    *(v71 + 32) = 0;
    *v71 = 0u;
    *(v71 + 16) = 0u;

    sub_213E5201C(v95, v71, &qword_27C8F7AB8, &qword_213F522C0);
    v72 = (v61 + *(v69 + 28));
    *v72 = v67;
    v72[1] = v66;
    sub_213E5BCCC(v61, v83, type metadata accessor for PublisherGuideContent);
    swift_storeEnumTagMultiPayload();
    sub_213E5B680(qword_281186508, type metadata accessor for UserGuideContent, &unk_213F59C60);
    sub_213E5B680(qword_2811851F8, type metadata accessor for PublisherGuideContent, &unk_213F59D00);
    v73 = v84;
    sub_213F4DBA0();
    sub_213DE3164(v73, v90, &qword_27C8F9CC8, &qword_213F5A208);
    swift_storeEnumTagMultiPayload();
    sub_213E5C414();
    v53 = v91;
    sub_213F4DBA0();
    sub_213DE36FC(v73, &qword_27C8F9CC8, &qword_213F5A208);
    v65 = type metadata accessor for PublisherGuideContent;
    goto LABEL_6;
  }

  v46 = *(v44 + 24);
  v45 = *(v44 + 32);
  v48 = *(v44 + 40);
  v47 = *(v44 + 48);
  v49 = swift_getKeyPath();
  v50 = v82;
  *v82 = v49;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9190, &qword_213F58FE0);
  swift_storeEnumTagMultiPayload();
  v51 = (v50 + *(v86 + 24));
  v52 = (v50 + *(v86 + 20));
  *v52 = v46;
  v52[1] = v45;
  *v51 = v48;
  v51[1] = v47;
  sub_213E5BCCC(v50, v90, type metadata accessor for UserGuideContent);
  swift_storeEnumTagMultiPayload();
  sub_213E5C414();
  sub_213E5B680(qword_281186508, type metadata accessor for UserGuideContent, &unk_213F59C60);

  v53 = v91;
  sub_213F4DBA0();
  v54 = type metadata accessor for UserGuideContent;
  v55 = v50;
LABEL_7:
  sub_213E5BD88(v55, v54);
  v74 = v93;
  v75 = v92;
  v76 = v87;
  sub_213DE3164(v30, v87, &qword_27C8F9CD8, &qword_213F5A218);
  sub_213DE3164(v53, v75, &qword_27C8F9CD0, &qword_213F5A210);
  sub_213DE3164(v76, v74, &qword_27C8F9CD8, &qword_213F5A218);
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9CE0, &qword_213F5A220);
  sub_213DE3164(v75, v74 + *(v77 + 48), &qword_27C8F9CD0, &qword_213F5A210);
  sub_213DE36FC(v53, &qword_27C8F9CD0, &qword_213F5A210);
  sub_213DE36FC(v30, &qword_27C8F9CD8, &qword_213F5A218);
  sub_213DE36FC(v75, &qword_27C8F9CD0, &qword_213F5A210);
  return sub_213DE36FC(v76, &qword_27C8F9CD8, &qword_213F5A218);
}

unint64_t sub_213E5A564()
{
  result = qword_27C8F9A68;
  if (!qword_27C8F9A68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F9A60, &qword_213F59880);
    sub_213E5A61C();
    sub_213DE3AE4(&qword_2811834E0, &qword_27C8F8368, &unk_213F55BC0, MEMORY[0x277CDF4F0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8F9A68);
  }

  return result;
}

unint64_t sub_213E5A61C()
{
  result = qword_27C8F9A70;
  if (!qword_27C8F9A70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F9A78, &qword_213F59888);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F9A80, &qword_213F59890);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F75C0, &qword_213F54760);
    sub_213DE3AE4(&qword_281182640, &qword_27C8F9A80, &qword_213F59890, MEMORY[0x277CE11A8]);
    sub_213DE3AE4(&unk_2811822E8, &qword_27C8F75C0, &qword_213F54760, MEMORY[0x277D84470]);
    swift_getOpaqueTypeConformance2();
    sub_213E5A778();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8F9A70);
  }

  return result;
}

unint64_t sub_213E5A778()
{
  result = qword_27C8F9A88;
  if (!qword_27C8F9A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8F9A88);
  }

  return result;
}

unint64_t sub_213E5A7CC()
{
  result = qword_27C8F9A98;
  if (!qword_27C8F9A98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F9A48, &qword_213F59868);
    sub_213DE3AE4(&qword_27C8F9A90, &qword_27C8F9A40, &qword_213F59860, MEMORY[0x277CDF028]);
    sub_213E5B680(&qword_281182838, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8F9A98);
  }

  return result;
}

unint64_t sub_213E5A8C0()
{
  result = qword_27C8F9AB0;
  if (!qword_27C8F9AB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8F9AB0);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_10MapsDesign17PhotoFanViewModelVSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy248_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  v5 = a2[4];
  v6 = a2[5];
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  v8 = a2[8];
  v9 = a2[9];
  v10 = a2[11];
  *(a1 + 160) = a2[10];
  *(a1 + 176) = v10;
  *(a1 + 128) = v8;
  *(a1 + 144) = v9;
  result = a2[12];
  v12 = a2[13];
  v13 = a2[14];
  *(a1 + 240) = *(a2 + 30);
  *(a1 + 208) = v12;
  *(a1 + 224) = v13;
  *(a1 + 192) = result;
  return result;
}

uint64_t sub_213E5A994(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 248))
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

uint64_t sub_213E5A9DC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
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
      *(result + 248) = 1;
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

    *(result + 248) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_213E5AAA0(uint64_t a1)
{
  sub_213E5ABB8(319, &qword_281183520, MEMORY[0x277CDF7E8]);
  if (v1 <= 0x3F)
  {
    sub_213E5ABB8(319, &qword_281183518, MEMORY[0x277CDFA28]);
    if (v2 <= 0x3F)
    {
      sub_213E5B118(319, &qword_2811824F0, &type metadata for CellAction, MEMORY[0x277D83940]);
      if (v3 <= 0x3F)
      {
        sub_213DE22E8();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_213E5ABB8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_213F4CEF0();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_213E5AC0C()
{
  result = qword_27C8F9AB8;
  if (!qword_27C8F9AB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F9AA8, &qword_213F598A0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F9A50, &qword_213F59870);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F9AA0, &qword_213F59898);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F9A48, &qword_213F59868);
    sub_213E5A7CC();
    sub_213E2EE14();
    swift_getOpaqueTypeConformance2();
    sub_213DE3AE4(&qword_281182698, &qword_27C8F9AA0, &qword_213F59898, MEMORY[0x277CE1198]);
    swift_getOpaqueTypeConformance2();
    sub_213DD9674();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8F9AB8);
  }

  return result;
}

uint64_t sub_213E5AD9C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 104))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
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

uint64_t sub_213E5ADF8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 104) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 104) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

void sub_213E5AEBC(uint64_t a1)
{
  sub_213E5ABB8(319, &qword_281183518, MEMORY[0x277CDFA28]);
  if (v1 <= 0x3F)
  {
    sub_213E5ABB8(319, &qword_281183520, MEMORY[0x277CDF7E8]);
    if (v2 <= 0x3F)
    {
      sub_213E5AF98(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_213E5AF98(uint64_t a1)
{
  if (!qword_281187B50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F9AC0, &qword_213F59B58);
    v1 = sub_213F4F6B0();
    if (!v2)
    {
      atomic_store(v1, &qword_281187B50);
    }
  }
}

void sub_213E5B054(uint64_t a1)
{
  sub_213E5ABB8(319, &qword_281183518, MEMORY[0x277CDFA28]);
  if (v1 <= 0x3F)
  {
    sub_213E5B118(319, &qword_281182500, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_213E5B118(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_213E5B25C()
{
  result = qword_281182C90;
  if (!qword_281182C90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F9B00, &qword_213F59E68);
    sub_213E5B314();
    sub_213DE3AE4(&qword_2811828D0, &qword_27C8F9B40, &qword_213F59EA8, MEMORY[0x277CE07A8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281182C90);
  }

  return result;
}

unint64_t sub_213E5B314()
{
  result = qword_281182CA8;
  if (!qword_281182CA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F9B08, &qword_213F59E70);
    sub_213E5B3CC();
    sub_213DE3AE4(&qword_281182988, &qword_27C8F7828, &qword_213F52A20, MEMORY[0x277CE0470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281182CA8);
  }

  return result;
}

unint64_t sub_213E5B3CC()
{
  result = qword_281182CF8;
  if (!qword_281182CF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F9B10, &qword_213F59E78);
    sub_213E5B484();
    sub_213DE3AE4(&qword_281182898, &qword_27C8F9B38, &qword_213F60B00, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281182CF8);
  }

  return result;
}

unint64_t sub_213E5B484()
{
  result = qword_281182D60;
  if (!qword_281182D60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F9B18, &unk_213F59E80);
    sub_213E5B53C();
    sub_213DE3AE4(&qword_281182828, &qword_27C8F9B30, &qword_213F59EA0, MEMORY[0x277CE08B0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281182D60);
  }

  return result;
}

unint64_t sub_213E5B53C()
{
  result = qword_281182E28;
  if (!qword_281182E28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F9B20, &qword_213F5E240);
    sub_213E5B5C8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281182E28);
  }

  return result;
}

unint64_t sub_213E5B5C8()
{
  result = qword_281182FC8;
  if (!qword_281182FC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F9B28, &unk_213F59E90);
    sub_213DE2CCC();
    sub_213DE3AE4(&qword_2811828F0, &qword_27C8F7820, &unk_213F519E0, MEMORY[0x277CE0740]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281182FC8);
  }

  return result;
}

uint64_t sub_213E5B680(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_213E5B6C8@<X0>(uint64_t *a1@<X8>)
{
  result = MEMORY[0x216050B30]();
  *a1 = result;
  return result;
}

void sub_213E5B720(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_9:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
        goto LABEL_5;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9B60, &qword_213F59FE0);
      v7 = swift_allocObject();
      v8 = _swift_stdlib_malloc_size(v7);
      v7[2] = v5;
      v7[3] = 2 * ((v8 - 32) / 88);
      if (v4 != a3)
      {
LABEL_5:
        swift_arrayInitWithCopy();
        return;
      }
    }

    __break(1u);
    goto LABEL_9;
  }
}

unint64_t sub_213E5B810()
{
  result = qword_281182DA0;
  if (!qword_281182DA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F9AF0, &qword_213F59E50);
    sub_213E5B89C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281182DA0);
  }

  return result;
}

unint64_t sub_213E5B89C()
{
  result = qword_281182E68;
  if (!qword_281182E68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F9AE8, &qword_213F59E48);
    sub_213E5B928();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281182E68);
  }

  return result;
}

unint64_t sub_213E5B928()
{
  result = qword_281183000;
  if (!qword_281183000)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F9B50, &qword_213F59EE8);
    sub_213E5B9E0();
    sub_213DE3AE4(&qword_2811828A0, &qword_27C8F9B58, &unk_213F59EF0, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281183000);
  }

  return result;
}

unint64_t sub_213E5B9E0()
{
  result = qword_2811832C0;
  if (!qword_2811832C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F9B48, &qword_213F59EB0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F9AE0, &qword_213F59E40);
    sub_213F4D450();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F9AD8, &qword_213F59E38);
    sub_213F4D360();
    sub_213DE3AE4(&qword_281182820, &qword_27C8F9AD8, &qword_213F59E38, MEMORY[0x277CDE5B0]);
    sub_213E5B680(&qword_281183498, MEMORY[0x277CDD9E0], MEMORY[0x277CDD9D8]);
    swift_getOpaqueTypeConformance2();
    sub_213E5B680(&qword_281182C78, MEMORY[0x277CDDB18], MEMORY[0x277CDDB08]);
    swift_getOpaqueTypeConformance2();
    sub_213DE3AE4(&qword_281182988, &qword_27C8F7828, &qword_213F52A20, MEMORY[0x277CE0470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811832C0);
  }

  return result;
}

uint64_t objectdestroy_72Tm()
{

  return swift_deallocObject();
}

uint64_t sub_213E5BCCC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_213E5BD88(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_213E5BDE8()
{
  result = qword_281182EA0;
  if (!qword_281182EA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F9C00, &unk_213F5A128);
    sub_213E5BE74();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281182EA0);
  }

  return result;
}

unint64_t sub_213E5BE74()
{
  result = qword_281183048;
  if (!qword_281183048)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F9478, &qword_213F57DA0);
    sub_213E0C270();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281183048);
  }

  return result;
}

unint64_t sub_213E5BF00()
{
  result = qword_281183480;
  if (!qword_281183480)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F94A0, &qword_213F5A0E0);
    sub_213E5B680(&qword_2811887E8, type metadata accessor for MapsDesignImage, &protocol conformance descriptor for MapsDesignImage);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281183480);
  }

  return result;
}

uint64_t objectdestroy_98Tm()
{
  if (*(v0 + 40))
  {
    __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  }

  return swift_deallocObject();
}

unint64_t sub_213E5C090()
{
  result = qword_27C8F9C68;
  if (!qword_27C8F9C68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F9C50, &qword_213F5A190);
    sub_213E5C148();
    sub_213DE3AE4(&qword_2811829A0, &qword_27C8F8648, &qword_213F54650, MEMORY[0x277CE03E8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8F9C68);
  }

  return result;
}

unint64_t sub_213E5C148()
{
  result = qword_27C8F9C70;
  if (!qword_27C8F9C70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F9C60, &unk_213F5A1A0);
    sub_213E5C200();
    sub_213DE3AE4(&qword_281182978, &qword_27C8F93D0, &unk_213F5A1B0, MEMORY[0x277CE0470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8F9C70);
  }

  return result;
}

unint64_t sub_213E5C200()
{
  result = qword_27C8F9C78;
  if (!qword_27C8F9C78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F9BC8, &qword_213F5A0B8);
    sub_213E5B680(&qword_2811887E8, type metadata accessor for MapsDesignImage, &protocol conformance descriptor for MapsDesignImage);
    sub_213DE3AE4(&qword_27C8F8628, &qword_27C8F8630, &qword_213F54640, MEMORY[0x277CDF4F0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8F9C78);
  }

  return result;
}

unint64_t sub_213E5C2E8()
{
  result = qword_281186938;
  if (!qword_281186938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281186938);
  }

  return result;
}

uint64_t sub_213E5C3AC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_213E5C414()
{
  result = qword_281182BC0;
  if (!qword_281182BC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F9CC8, &qword_213F5A208);
    sub_213E5B680(qword_281186508, type metadata accessor for UserGuideContent, &unk_213F59C60);
    sub_213E5B680(qword_2811851F8, type metadata accessor for PublisherGuideContent, &unk_213F59D00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281182BC0);
  }

  return result;
}

unint64_t sub_213E5C568()
{
  result = qword_281182A88;
  if (!qword_281182A88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F9D18, &qword_213F5A258);
    v1 = MEMORY[0x277CE14C0];
    sub_213DE3AE4(&qword_281182598, &qword_27C8F9D20, &qword_213F5A260, MEMORY[0x277CE14C0]);
    sub_213DE3AE4(&qword_281182590, &qword_27C8F9CF8, &qword_213F5A238, v1);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281182A88);
  }

  return result;
}

unint64_t sub_213E5C648()
{
  result = qword_281184560[0];
  if (!qword_281184560[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_281184560);
  }

  return result;
}

unint64_t sub_213E5C6CC()
{
  result = qword_2811855B8[0];
  if (!qword_2811855B8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2811855B8);
  }

  return result;
}

unint64_t sub_213E5C750()
{
  result = qword_281183090;
  if (!qword_281183090)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F9AD0, &qword_213F59E30);
    sub_213E5C808();
    sub_213DE3AE4(&qword_281182C30, &qword_27C8F7A78, &unk_213F5D5E0, MEMORY[0x277CE01A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281183090);
  }

  return result;
}

unint64_t sub_213E5C808()
{
  result = qword_281183348;
  if (!qword_281183348)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F9AC8, &qword_213F59E28);
    sub_213E5B680(&qword_281182908, MEMORY[0x277CDE278], MEMORY[0x277CDE270]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281183348);
  }

  return result;
}

unint64_t sub_213E5C8C4()
{
  result = qword_27C8F9D60;
  if (!qword_27C8F9D60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F9B70, &qword_213F59FF0);
    sub_213DE3AE4(&qword_27C8F9D68, &qword_27C8F9D70, &qword_213F5A2A8, MEMORY[0x277CE11A8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8F9D60);
  }

  return result;
}

unint64_t sub_213E5C97C()
{
  result = qword_281183190;
  if (!qword_281183190)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F9BE0, &qword_213F5A0D0);
    sub_213DE3AE4(&qword_281182678, &qword_27C8F9D78, &qword_213F5A2B0, MEMORY[0x277CE1198]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281183190);
  }

  return result;
}

unint64_t sub_213E5CA34()
{
  result = qword_27C8F9D80;
  if (!qword_27C8F9D80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F9D88, &qword_213F5A2B8);
    sub_213E5CAB8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8F9D80);
  }

  return result;
}

unint64_t sub_213E5CAB8()
{
  result = qword_27C8F9D90;
  if (!qword_27C8F9D90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F9C10, &unk_213F5A140);
    sub_213E5BF00();
    sub_213DE3AE4(&qword_281182978, &qword_27C8F93D0, &unk_213F5A1B0, MEMORY[0x277CE0470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8F9D90);
  }

  return result;
}

unint64_t sub_213E5CB70()
{
  result = qword_281183178;
  if (!qword_281183178)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F9C20, &qword_213F5A158);
    sub_213DE3AE4(&qword_281182688, &qword_27C8F9D98, &qword_213F5A2C0, MEMORY[0x277CE1198]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281183178);
  }

  return result;
}

unint64_t sub_213E5CC28()
{
  result = qword_27C8F9DA0;
  if (!qword_27C8F9DA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F9C48, &qword_213F5A188);
    sub_213E5CCB4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8F9DA0);
  }

  return result;
}

unint64_t sub_213E5CCB4()
{
  result = qword_27C8F9DA8;
  if (!qword_27C8F9DA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F9C40, &qword_213F5A180);
    sub_213DE3AE4(&qword_27C8F9DB0, &qword_27C8F9DB8, &qword_213F5A2C8, MEMORY[0x277CE11A8]);
    sub_213DE3AE4(&qword_2811829A0, &qword_27C8F8648, &qword_213F54650, MEMORY[0x277CE03E8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8F9DA8);
  }

  return result;
}

void *sub_213E5CDA8@<X0>(_BYTE *a1@<X8>)
{
  sub_213E38388();
  result = sub_213F4D820();
  *a1 = v3;
  return result;
}

double LibraryCell.body.getter@<D0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for ListCell(0);
  sub_213DEBAA8(v2, a1 + v4[8]);
  *a1 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7A20, &qword_213F526E0);
  swift_storeEnumTagMultiPayload();
  v5 = v4[5];
  *(a1 + v5) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9190, &qword_213F58FE0);
  swift_storeEnumTagMultiPayload();
  v6 = a1 + v4[6];
  *v6 = swift_getKeyPath();
  v6[8] = 0;
  *(a1 + v4[7]) = 0;
  v7 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9DC0, &qword_213F5A368) + 36);
  result = 2.26484033e-306;
  *v7 = xmmword_213F5A2D0;
  v7[16] = 2;
  return result;
}

double sub_213E5CF54@<D0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for ListCell(0);
  sub_213DEBAA8(v2, a1 + v4[8]);
  *a1 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7A20, &qword_213F526E0);
  swift_storeEnumTagMultiPayload();
  v5 = v4[5];
  *(a1 + v5) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9190, &qword_213F58FE0);
  swift_storeEnumTagMultiPayload();
  v6 = a1 + v4[6];
  *v6 = swift_getKeyPath();
  v6[8] = 0;
  *(a1 + v4[7]) = 0;
  v7 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9DC0, &qword_213F5A368) + 36);
  result = 2.26484033e-306;
  *v7 = xmmword_213F5A2D0;
  v7[16] = 2;
  return result;
}

unint64_t sub_213E5D088()
{
  result = qword_27C8F9DC8;
  if (!qword_27C8F9DC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F9DC0, &qword_213F5A368);
    sub_213E51C40();
    sub_213DD9674();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8F9DC8);
  }

  return result;
}

uint64_t sub_213E5D174@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_213E5D6F0(&qword_27C8F9DD8, type metadata accessor for LocationTileViewModel, &protocol conformance descriptor for LocationTileViewModel);
  sub_213F4CB80();

  v4 = OBJC_IVAR____TtC10MapsDesign21LocationTileViewModel__id;
  swift_beginAccess();
  v5 = sub_213F4CB40();
  return (*(*(v5 - 8) + 16))(a2, v3 + v4, v5);
}

uint64_t sub_213E5D26C(uint64_t a1)
{
  v2 = sub_213F4CB40();
  MEMORY[0x28223BE20](v2);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v4, a1);
  return sub_213E5D450(v4);
}

uint64_t sub_213E5D338@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v6 = v1;
  sub_213E5D6F0(&qword_27C8F9DD8, type metadata accessor for LocationTileViewModel, &protocol conformance descriptor for LocationTileViewModel);
  sub_213F4CB80();

  v3 = OBJC_IVAR____TtC10MapsDesign21LocationTileViewModel__id;
  swift_beginAccess();
  v4 = sub_213F4CB40();
  return (*(*(v4 - 8) + 16))(a1, v6 + v3, v4);
}

uint64_t sub_213E5D450(uint64_t a1)
{
  v2 = v1;
  v4 = sub_213F4CB40();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____TtC10MapsDesign21LocationTileViewModel__id;
  swift_beginAccess();
  v9 = *(v5 + 16);
  v9(v7, v2 + v8, v4);
  sub_213E5D6F0(&qword_27C8F8BF8, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
  v14[0] = a1;
  LOBYTE(a1) = sub_213F4F1F0();
  v10 = *(v5 + 8);
  v10(v7, v4);
  if (a1)
  {
    v9(v7, v14[0], v4);
    swift_beginAccess();
    (*(v5 + 40))(v2 + v8, v7, v4);
    swift_endAccess();
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    v12 = v14[0];
    v14[-2] = v2;
    v14[-1] = v12;
    v14[1] = v2;
    sub_213E5D6F0(&qword_27C8F9DD8, type metadata accessor for LocationTileViewModel, &protocol conformance descriptor for LocationTileViewModel);
    sub_213F4CB70();
  }

  return (v10)(v14[0], v4);
}

uint64_t sub_213E5D6F0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_213E5D738(uint64_t a1, uint64_t a2)
{
  v4 = sub_213F4CB40();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v7, a2, v4);
  v8 = OBJC_IVAR____TtC10MapsDesign21LocationTileViewModel__id;
  swift_beginAccess();
  (*(v5 + 40))(a1 + v8, v7, v4);
  return swift_endAccess();
}

uint64_t (*sub_213E5D870(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC10MapsDesign21LocationTileViewModel___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_213E5D6F0(&qword_27C8F9DD8, type metadata accessor for LocationTileViewModel, &protocol conformance descriptor for LocationTileViewModel);
  sub_213F4CB80();

  *v4 = v1;
  swift_getKeyPath();
  sub_213F4CBA0();

  v4[7] = sub_213E5D114(v4);
  return sub_213E5D9A8;
}

void sub_213E5D9A8(void *a1)
{
  v1 = *a1;
  (*(*a1 + 56))(*a1, 0);
  *v1 = v1[4];
  swift_getKeyPath();
  sub_213F4CB90();

  free(v1);
}

uint64_t LocationTileViewModel.title.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC10MapsDesign21LocationTileViewModel_title);

  return v1;
}

uint64_t LocationTileViewModel.subtitle.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC10MapsDesign21LocationTileViewModel_subtitle);

  return v1;
}

uint64_t LocationTileViewModel.colorGradient.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC10MapsDesign21LocationTileViewModel_colorGradient);
  sub_213E5DB08(v1, *(v0 + OBJC_IVAR____TtC10MapsDesign21LocationTileViewModel_colorGradient + 8));
  return v1;
}

uint64_t sub_213E5DB08(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t LocationTileViewModel.__allocating_init(id:title:subtitle:imageProvider:colorGradient:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8)
{
  v17 = a6[3];
  v16 = a6[4];
  v18 = __swift_mutable_project_boxed_opaque_existential_1(a6, v17);
  v19 = sub_213E617A0(a1, a2, a3, a4, a5, v18, a7, a8, v8, v17, v16);
  __swift_destroy_boxed_opaque_existential_1(a6);
  return v19;
}

uint64_t LocationTileViewModel.init(id:title:subtitle:imageProvider:colorGradient:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8)
{
  v23 = a7;
  v24 = a8;
  v16 = a6[3];
  v15 = a6[4];
  v17 = __swift_mutable_project_boxed_opaque_existential_1(a6, v16);
  MEMORY[0x28223BE20](v17);
  v19 = &v23 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v20 + 16))(v19);
  v21 = sub_213E6165C(a1, a2, a3, a4, a5, v19, v23, v24, v8, v16, v15);
  __swift_destroy_boxed_opaque_existential_1(a6);
  return v21;
}

uint64_t LocationTileViewModel.deinit()
{
  v1 = OBJC_IVAR____TtC10MapsDesign21LocationTileViewModel__id;
  v2 = sub_213F4CB40();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC10MapsDesign21LocationTileViewModel_imageProvider));
  sub_213E618D4(*(v0 + OBJC_IVAR____TtC10MapsDesign21LocationTileViewModel_colorGradient), *(v0 + OBJC_IVAR____TtC10MapsDesign21LocationTileViewModel_colorGradient + 8));
  v3 = OBJC_IVAR____TtC10MapsDesign21LocationTileViewModel___observationRegistrar;
  v4 = sub_213F4CBC0();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  return v0;
}

uint64_t LocationTileViewModel.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC10MapsDesign21LocationTileViewModel__id;
  v2 = sub_213F4CB40();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC10MapsDesign21LocationTileViewModel_imageProvider));
  sub_213E618D4(*(v0 + OBJC_IVAR____TtC10MapsDesign21LocationTileViewModel_colorGradient), *(v0 + OBJC_IVAR____TtC10MapsDesign21LocationTileViewModel_colorGradient + 8));
  v3 = OBJC_IVAR____TtC10MapsDesign21LocationTileViewModel___observationRegistrar;
  v4 = sub_213F4CBC0();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return swift_deallocClassInstance();
}

uint64_t sub_213E5DF44@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_213F4D7F0();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7B68, &qword_213F53770);
  MEMORY[0x28223BE20](v8);
  v10 = &v14 - v9;
  sub_213DE3164(v2, &v14 - v9, &qword_27C8F7B68, &qword_213F53770);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_213F4D290();
    return (*(*(v11 - 8) + 32))(a1, v10, v11);
  }

  else
  {
    sub_213F4F520();
    v13 = sub_213F4E000();
    sub_213F4CC10();

    sub_213F4D7E0();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t sub_213E5E144@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_213F4D7F0();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7A20, &qword_213F526E0);
  MEMORY[0x28223BE20](v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for LocationTile(0);
  sub_213DE3164(v1 + *(v10 + 20), v9, &qword_27C8F7A20, &qword_213F526E0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_213F4CEA0();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_213F4F520();
    v13 = sub_213F4E000();
    sub_213F4CC10();

    sub_213F4D7E0();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_213E5E34C@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  swift_getKeyPath();
  sub_213E5D6F0(&qword_27C8F9DD8, type metadata accessor for LocationTileViewModel, &protocol conformance descriptor for LocationTileViewModel);
  sub_213F4CB80();

  v4 = OBJC_IVAR____TtC10MapsDesign21LocationTileViewModel__id;
  swift_beginAccess();
  v5 = sub_213F4CB40();
  return (*(*(v5 - 8) + 16))(a1, v3 + v4, v5);
}

void *LocationTile.init(model:tapHandler:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  *a4 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7B68, &qword_213F53770);
  swift_storeEnumTagMultiPayload();
  v8 = type metadata accessor for LocationTile(0);
  v9 = v8[5];
  *(a4 + v9) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7A20, &qword_213F526E0);
  swift_storeEnumTagMultiPayload();
  v10 = (a4 + v8[8]);
  sub_213F4EA90();
  *v10 = v14;
  v10[1] = v15;
  v11 = a4 + v8[9];
  result = sub_213F4EA90();
  *v11 = v14;
  *(v11 + 1) = v15;
  *(a4 + v8[6]) = a1;
  v13 = (a4 + v8[7]);
  *v13 = a2;
  v13[1] = a3;
  return result;
}

uint64_t sub_213E5E578@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9F18, &qword_213F5A7D0);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v24 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v8 = &v22 - v7;
  v9 = (*(a1 + *(type metadata accessor for LocationTile(0) + 24)) + OBJC_IVAR____TtC10MapsDesign21LocationTileViewModel_colorGradient);
  v10 = *v9;
  if (*v9)
  {
    v11 = v9[1];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F92C8, &qword_213F57320);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_213F51DE0;
    *(v12 + 32) = v10;
    *(v12 + 40) = v11;
    sub_213E5DB08(v10, v11);

    sub_213F4F020();
    sub_213F4F030();
    MEMORY[0x2160521D0](v12);
    sub_213F4D2C0();

    v10 = v25;
    v23 = v26;
    v13 = v27;
    v14 = v28;
    v15 = 256;
    v16 = v29;
  }

  else
  {
    v23 = 0;
    v13 = 0;
    v14 = 0;
    v16 = 0;
    v15 = 0;
  }

  *v8 = sub_213F4DA40();
  *(v8 + 1) = 0;
  v8[16] = 1;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9F20, &qword_213F5A7D8);
  sub_213E5E800(a1, &v8[*(v17 + 44)]);
  v18 = v24;
  sub_213DE3164(v8, v24, &qword_27C8F9F18, &qword_213F5A7D0);
  v19 = v23;
  *a2 = v10;
  *(a2 + 8) = v19;
  *(a2 + 16) = v13;
  *(a2 + 24) = v14;
  *(a2 + 32) = v16;
  *(a2 + 40) = v15;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9F28, &qword_213F5A7E0);
  sub_213DE3164(v18, a2 + *(v20 + 48), &qword_27C8F9F18, &qword_213F5A7D0);

  sub_213DE36FC(v8, &qword_27C8F9F18, &qword_213F5A7D0);
  sub_213DE36FC(v18, &qword_27C8F9F18, &qword_213F5A7D0);
}

uint64_t sub_213E5E800@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v71 = a1;
  v72 = a2;
  v69 = sub_213F4CEA0();
  v2 = *(v69 - 8);
  v3 = MEMORY[0x28223BE20](v69);
  v5 = &v64 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v64 - v6;
  v64 = sub_213F4EA00();
  v8 = *(v64 - 8);
  MEMORY[0x28223BE20](v64);
  v10 = &v64 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9F30, &qword_213F5A7E8);
  MEMORY[0x28223BE20](v65);
  v12 = &v64 - v11;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9F38, &qword_213F5A7F0);
  MEMORY[0x28223BE20](v66);
  v68 = &v64 - v13;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9F40, &qword_213F5A7F8);
  MEMORY[0x28223BE20](v67);
  v70 = &v64 - v14;
  sub_213E621D4();
  v15 = sub_213F4F600();
  if (!v15)
  {
    v15 = [objc_opt_self() mainBundle];
  }

  v16 = v15;
  v17 = sub_213F4F220();
  v18 = [objc_opt_self() imageNamed:v17 inBundle:v16];

  if (!v18)
  {
    [objc_allocWithZone(MEMORY[0x277D755B8]) init];
  }

  sub_213F4E9D0();
  v19 = v64;
  (*(v8 + 104))(v10, *MEMORY[0x277CE0FE0], v64);
  v20 = sub_213F4EA40();

  (*(v8 + 8))(v10, v19);
  v21 = v71;
  sub_213E5E144(v7);
  v22 = v69;
  (*(v2 + 104))(v5, *MEMORY[0x277CDF3D0], v69);
  v23 = sub_213F4CE90();
  v24 = *(v2 + 8);
  v24(v5, v22);
  v24(v7, v22);
  if (v23)
  {
    v25 = 1.5;
  }

  else
  {
    v25 = 1.1;
  }

  v26 = *(v65 + 36);
  v27 = *MEMORY[0x277CE13F0];
  v28 = sub_213F4EF90();
  (*(*(v28 - 8) + 104))(&v12[v26], v27, v28);
  *v12 = v20;
  *(v12 + 1) = 0;
  *(v12 + 8) = 1;
  *(v12 + 3) = v25;
  LOBYTE(v27) = sub_213F4E060();
  sub_213F4CDA0();
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v36 = v35;
  v37 = v68;
  sub_213DE2B44(v12, v68, &qword_27C8F9F30, &qword_213F5A7E8);
  v38 = v37 + *(v66 + 36);
  *v38 = v27;
  *(v38 + 8) = v30;
  *(v38 + 16) = v32;
  *(v38 + 24) = v34;
  *(v38 + 32) = v36;
  *(v38 + 40) = 0;
  LOBYTE(v27) = sub_213F4E070();
  sub_213F4CDA0();
  v40 = v39;
  v42 = v41;
  v44 = v43;
  v46 = v45;
  v47 = v37;
  v48 = v70;
  sub_213DE2B44(v47, v70, &qword_27C8F9F38, &qword_213F5A7F0);
  v49 = v48 + *(v67 + 36);
  *v49 = v27;
  *(v49 + 8) = v40;
  *(v49 + 16) = v42;
  *(v49 + 24) = v44;
  *(v49 + 32) = v46;
  *(v49 + 40) = 0;
  LOBYTE(v27) = sub_213F4E070();
  v50 = (v21 + *(type metadata accessor for LocationTile(0) + 32));
  v51 = *v50;
  v52 = v50[1];
  v73 = v51;
  v74 = v52;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F76F8, &unk_213F555A0);
  sub_213F4EAA0();
  sub_213F4CDA0();
  v54 = v53;
  v56 = v55;
  v58 = v57;
  v60 = v59;
  v61 = v72;
  sub_213DE2B44(v48, v72, &qword_27C8F9F40, &qword_213F5A7F8);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9F48, &unk_213F5A800);
  v63 = v61 + *(result + 36);
  *v63 = v27;
  *(v63 + 8) = v54;
  *(v63 + 16) = v56;
  *(v63 + 24) = v58;
  *(v63 + 32) = v60;
  *(v63 + 40) = 0;
  return result;
}

uint64_t sub_213E5EDE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v96 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9ED8, &qword_213F5A718);
  v92 = *(v3 - 8);
  v93 = v3;
  MEMORY[0x28223BE20](v3);
  v86 = &v85 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9EE0, &unk_213F5A720);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v95 = &v85 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v94 = &v85 - v8;
  v9 = type metadata accessor for LocationTile(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = v9 - 8;
  v89 = v9 - 8;
  v13 = MEMORY[0x28223BE20](v9 - 8);
  v14 = &v85 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v16 = &v85 - v15;
  v17 = type metadata accessor for MapsDesignImage(0);
  v18 = (v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = &v85 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9498, &qword_213F57DB8) - 8;
  v21 = MEMORY[0x28223BE20](v90);
  v91 = &v85 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v21);
  v97 = &v85 - v24;
  MEMORY[0x28223BE20](v23);
  v98 = &v85 - v25;
  v26 = *(v12 + 32);
  v27 = a1;
  sub_213DEBAA8(*(a1 + v26) + OBJC_IVAR____TtC10MapsDesign21LocationTileViewModel_imageProvider, &v20[v18[10]]);
  sub_213E6216C(a1, v16, type metadata accessor for LocationTile);
  v28 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v88 = swift_allocObject();
  sub_213E61934(v16, v88 + v28);
  sub_213E6216C(a1, v14, type metadata accessor for LocationTile);
  v29 = swift_allocObject();
  sub_213E61934(v14, v29 + v28);
  v30 = sub_213F4EEE0();
  v87 = v31;
  *v20 = swift_getKeyPath();
  v20[8] = 0;
  v32 = v18[7];
  *&v20[v32] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7B68, &qword_213F53770);
  swift_storeEnumTagMultiPayload();
  v33 = v18[8];
  *&v20[v33] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7A20, &qword_213F526E0);
  swift_storeEnumTagMultiPayload();
  v34 = v18[9];
  *&v20[v34] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7AC0, &qword_213F52760);
  swift_storeEnumTagMultiPayload();
  v35 = &v20[v18[14]];
  v36 = &v20[v18[15]];
  v37 = &v20[v18[16]];
  v108 = 0uLL;
  *(&v109 + 7) = 0;
  *&v109 = 0;
  sub_213F4EA90();
  v38 = v112;
  v39 = BYTE8(v112);
  v40 = BYTE9(v112);
  v41 = BYTE10(v112);
  v42 = *v113;
  *v37 = v111;
  *(v37 + 2) = v38;
  v37[24] = v39;
  v37[25] = v40;
  v37[26] = v41;
  *(v37 + 4) = v42;
  v43 = v18[17];
  *&v108 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7C28, &unk_213F522B0);
  sub_213F4EA90();
  *&v20[v43] = v111;
  v20[v18[11]] = 1;
  v44 = &v20[v18[12]];
  v45 = v87;
  *v44 = v30;
  v44[1] = v45;
  v20[v18[13]] = 1;
  v46 = v88;
  *v35 = sub_213E6209C;
  v35[1] = v46;
  v47 = v98;
  *v36 = sub_213E6210C;
  v36[1] = v29;
  sub_213F4EEE0();
  sub_213F4D4E0();
  sub_213E6216C(v20, v47, type metadata accessor for MapsDesignImage);
  v48 = (v47 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F94A0, &qword_213F5A0E0) + 36));
  v49 = *(&v114[6] + 15);
  v48[4] = *(&v114[5] + 15);
  v48[5] = v49;
  v48[6] = *(&v114[7] + 15);
  v50 = *(&v114[2] + 15);
  *v48 = *(&v114[1] + 15);
  v48[1] = v50;
  v51 = *(&v114[4] + 15);
  v48[2] = *(&v114[3] + 15);
  v48[3] = v51;
  sub_213DEBB74(v20);
  *(v47 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F94A8, &qword_213F57E60) + 36)) = 256;
  *(v47 + *(v90 + 44)) = 0;
  sub_213DE3164(v47, v97, &qword_27C8F9498, &qword_213F57DB8);
  v52 = v27 + *(v89 + 44);
  v53 = *v52;
  v54 = *(v52 + 8);
  LOBYTE(v111) = v53;
  *(&v111 + 1) = v54;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8440, &qword_213F56EC0);
  sub_213F4EAA0();
  if (v108 == 1)
  {
    v55 = v86;
    sub_213DE3164(v47, v86, &qword_27C8F9498, &qword_213F57DB8);
    v56 = v55 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9EF0, &qword_213F5A7A0) + 36);
    *v56 = 0x4000000000000000;
    *(v56 + 8) = 1;
    v57 = sub_213F4EEE0();
    v59 = v58;
    sub_213F4E8C0();
    v60 = sub_213F4E900();

    v61 = (v55 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9EF8, &qword_213F5A7A8) + 36));
    *v61 = v60;
    v61[1] = v57;
    v61[2] = v59;
    v62 = sub_213F4EEE0();
    v64 = v63;
    v65 = sub_213F4DA40();
    v99[0] = 0;
    sub_213E5F8F8(&v111);
    v103 = *v113;
    v104 = *&v113[16];
    v105 = *&v113[32];
    v106 = *&v113[48];
    v101 = v111;
    v102 = v112;
    v107[2] = *v113;
    v107[3] = *&v113[16];
    v107[4] = *&v113[32];
    v107[5] = *&v113[48];
    v107[0] = v111;
    v107[1] = v112;
    sub_213DE3164(&v101, &v108, &qword_27C8F94C0, &unk_213F5A7B0);
    sub_213DE36FC(v107, &qword_27C8F94C0, &unk_213F5A7B0);
    *&v100[39] = v103;
    *&v100[55] = v104;
    *&v100[71] = v105;
    *&v100[87] = v106;
    *&v100[7] = v101;
    *&v100[23] = v102;
    v66 = v99[0];
    *&v108 = v62;
    *(&v108 + 1) = v64;
    v109 = v65;
    v110[0] = v99[0];
    v67 = *&v100[16];
    *&v110[33] = *&v100[32];
    v68 = *v100;
    *&v110[17] = *&v100[16];
    *&v110[1] = *v100;
    *&v110[96] = *(&v106 + 1);
    v69 = *&v100[64];
    *&v110[81] = *&v100[80];
    v70 = *&v100[48];
    *&v110[65] = *&v100[64];
    v71 = *&v100[32];
    *&v110[49] = *&v100[48];
    v72 = v93;
    v73 = v55 + *(v93 + 36);
    v74 = *&v110[80];
    *(v73 + 96) = *&v110[64];
    *(v73 + 112) = v74;
    v75 = *&v110[16];
    *(v73 + 32) = *v110;
    *(v73 + 48) = v75;
    v76 = *&v110[48];
    *(v73 + 64) = *&v110[32];
    *(v73 + 80) = v76;
    v77 = v109;
    *v73 = v108;
    *(v73 + 16) = v77;
    *&v113[49] = v70;
    *&v113[65] = v69;
    v114[0] = *&v100[80];
    *(v73 + 128) = *&v110[96];
    *&v111 = v62;
    *(&v111 + 1) = v64;
    v112 = v65;
    v113[0] = v66;
    *(v114 + 15) = *&v100[95];
    *&v113[1] = v68;
    *&v113[17] = v67;
    *&v113[33] = v71;
    sub_213DE3164(&v108, v99, &qword_27C8F94D0, &qword_213F57E88);
    sub_213DE36FC(&v111, &qword_27C8F94D0, &qword_213F57E88);
    v78 = v94;
    sub_213DE2B44(v55, v94, &qword_27C8F9ED8, &qword_213F5A718);
    (*(v92 + 56))(v78, 0, 1, v72);
  }

  else
  {
    v78 = v94;
    (*(v92 + 56))(v94, 1, 1, v93);
  }

  v79 = v97;
  v80 = v91;
  sub_213DE3164(v97, v91, &qword_27C8F9498, &qword_213F57DB8);
  v81 = v95;
  sub_213DE3164(v78, v95, &qword_27C8F9EE0, &unk_213F5A720);
  v82 = v96;
  sub_213DE3164(v80, v96, &qword_27C8F9498, &qword_213F57DB8);
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9EE8, &qword_213F5A798);
  sub_213DE3164(v81, v82 + *(v83 + 48), &qword_27C8F9EE0, &unk_213F5A720);
  sub_213DE36FC(v78, &qword_27C8F9EE0, &unk_213F5A720);
  sub_213DE36FC(v79, &qword_27C8F9498, &qword_213F57DB8);
  sub_213DE36FC(v98, &qword_27C8F9498, &qword_213F57DB8);
  sub_213DE36FC(v81, &qword_27C8F9EE0, &unk_213F5A720);
  return sub_213DE36FC(v80, &qword_27C8F9498, &qword_213F57DB8);
}

uint64_t sub_213E5F7D4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  a2[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9F00, &qword_213F5A7C0);
  a2[4] = sub_213DE3AE4(&qword_27C8F9F08, &qword_27C8F9F00, &qword_213F5A7C0, MEMORY[0x277CE11A8]);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a2);
  *boxed_opaque_existential_1 = sub_213F4EEE0();
  boxed_opaque_existential_1[1] = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9F10, &qword_213F5A7C8);
  return sub_213E5E578(a1, boxed_opaque_existential_1 + *(v6 + 44));
}

uint64_t sub_213E5F884(uint64_t a1)
{
  type metadata accessor for LocationTile(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8440, &qword_213F56EC0);
  return sub_213F4EAB0();
}

void sub_213E5F8F8(uint64_t a2@<X8>)
{
  v3 = sub_213F4E8D0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F92C8, &qword_213F57320);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_213F53CC0;
  *(v4 + 32) = sub_213F4E8D0();
  *(v4 + 40) = sub_213F4E8F0();
  *(v4 + 48) = sub_213F4E8F0();
  sub_213F4F020();
  sub_213F4F030();
  MEMORY[0x2160521D0](v4);
  sub_213F4D2C0();
  type metadata accessor for LocationTile(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F76F8, &unk_213F555A0);
  sub_213F4EAA0();
  sub_213F4EEE0();
  sub_213F4D0C0();
  *&v15 = v21;
  v5 = v18;
  v23 = v18;
  *(a2 + 88) = v18;
  v6 = v20;
  v13 = v19;
  v14 = v20;
  v7 = v16;
  v8 = v17;
  v22[3] = v16;
  v22[4] = v17;
  v22[0] = v19;
  v22[1] = v20;
  *(a2 + 8) = v19;
  *(a2 + 24) = v6;
  v9 = v14;
  v10 = v15;
  v11 = v15;
  v22[2] = v15;
  *a2 = v3;
  *(a2 + 56) = v7;
  *(a2 + 72) = v8;
  *(a2 + 40) = v10;
  v24[0] = v13;
  v24[1] = v9;
  v25 = v5;
  v24[3] = v16;
  v24[4] = v17;
  v24[2] = v11;

  sub_213DE3164(v22, v12, &qword_27C8F94E8, &unk_213F65730);
  sub_213DE36FC(v24, &qword_27C8F94E8, &unk_213F65730);
}

uint64_t sub_213E5FAE8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v105 = a2;
  v3 = type metadata accessor for LocationTile(0);
  v115 = *(v3 - 8);
  MEMORY[0x28223BE20](v3 - 8);
  v116 = v4;
  v103 = &v90 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v114 = sub_213F4D290();
  v113 = *(v114 - 8);
  v5 = MEMORY[0x28223BE20](v114);
  v112 = &v90 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v111 = &v90 - v7;
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9228, &unk_213F5A640);
  v8 = MEMORY[0x28223BE20](v100);
  v99 = &v90 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v93 = &v90 - v10;
  v11 = sub_213F4D390();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v90 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v90 - v16;
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9230, &qword_213F57250);
  MEMORY[0x28223BE20](v102);
  v98 = &v90 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9E78, &qword_213F5A650);
  MEMORY[0x28223BE20](v19 - 8);
  v21 = &v90 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9E80, &qword_213F5A658);
  MEMORY[0x28223BE20](v22);
  v24 = &v90 - v23;
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9E88, &qword_213F5A660);
  v97 = *(v101 - 8);
  MEMORY[0x28223BE20](v101);
  v96 = &v90 - v25;
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9E90, &qword_213F5A668);
  MEMORY[0x28223BE20](v95);
  v27 = &v90 - v26;
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9E98, &qword_213F5A670);
  MEMORY[0x28223BE20](v104);
  v108 = &v90 - v28;
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9EA0, &qword_213F5A678);
  v29 = MEMORY[0x28223BE20](v107);
  v110 = &v90 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = MEMORY[0x28223BE20](v29);
  v106 = &v90 - v32;
  MEMORY[0x28223BE20](v31);
  v109 = &v90 - v33;
  *v21 = sub_213F4DA50();
  *(v21 + 1) = 0;
  v21[16] = 0;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9EA8, &qword_213F5A680);
  v35 = a1;
  sub_213E606A8(a1, &v21[*(v34 + 44)]);
  sub_213F4EEB0();
  sub_213F4D4E0();
  sub_213DE2B44(v21, v24, &qword_27C8F9E78, &qword_213F5A650);
  v92 = v22;
  v36 = *(v22 + 36);
  v94 = v24;
  v37 = &v24[v36];
  v38 = v122;
  *(v37 + 4) = v121;
  *(v37 + 5) = v38;
  *(v37 + 6) = v123;
  v39 = v118;
  *v37 = v117;
  *(v37 + 1) = v39;
  v40 = v120;
  *(v37 + 2) = v119;
  *(v37 + 3) = v40;
  v41 = v12;
  v42 = *(v12 + 104);
  v42(v17, *MEMORY[0x277CDF9E8], v11);
  v42(v15, *MEMORY[0x277CDF998], v11);
  sub_213E5D6F0(&qword_281183490, MEMORY[0x277CDFA28], MEMORY[0x277CDFA38]);
  v43 = v11;
  result = sub_213F4F1E0();
  if (result)
  {
    v45 = *(v41 + 32);
    v46 = v93;
    v45(v93, v17, v43);
    v47 = v100;
    v45((v46 + *(v100 + 48)), v15, v43);
    v48 = v99;
    sub_213DE3164(v46, v99, &qword_27C8F9228, &unk_213F5A640);
    v90 = v35;
    v49 = *(v47 + 48);
    v50 = v98;
    v45(v98, v48, v43);
    v91 = v27;
    v51 = *(v41 + 8);
    v51(v48 + v49, v43);
    sub_213DE2B44(v46, v48, &qword_27C8F9228, &unk_213F5A640);
    v45((v50 + *(v102 + 36)), (v48 + *(v47 + 48)), v43);
    v51(v48, v43);
    sub_213E61F74();
    sub_213DE3AE4(&qword_281182520, &qword_27C8F9230, &qword_213F57250, MEMORY[0x277D83660]);
    v52 = v96;
    v53 = v94;
    sub_213F4E570();
    sub_213DE36FC(v50, &qword_27C8F9230, &qword_213F57250);
    sub_213DE36FC(v53, &qword_27C8F9E80, &qword_213F5A658);
    LOBYTE(v51) = sub_213F4E070();
    v54 = v111;
    v55 = v90;
    sub_213E5DF44(v111);
    v56 = v112;
    sub_213F4D280();
    sub_213F4D270();
    v57 = *(v113 + 8);
    v58 = v114;
    v57(v56, v114);
    v57(v54, v58);
    sub_213F4CDA0();
    v60 = v59;
    v62 = v61;
    v64 = v63;
    v66 = v65;
    v67 = v91;
    (*(v97 + 32))(v91, v52, v101);
    v68 = v67 + *(v95 + 36);
    *v68 = v51;
    *(v68 + 8) = v60;
    *(v68 + 16) = v62;
    *(v68 + 24) = v64;
    *(v68 + 32) = v66;
    *(v68 + 40) = 0;
    LOBYTE(v51) = sub_213F4E040();
    sub_213E5DF44(v54);
    sub_213F4D280();
    sub_213F4D270();
    v57(v56, v58);
    v57(v54, v58);
    sub_213F4CDA0();
    v70 = v69;
    v72 = v71;
    v74 = v73;
    v76 = v75;
    v77 = v108;
    sub_213DE2B44(v67, v108, &qword_27C8F9E90, &qword_213F5A668);
    v78 = v77 + *(v104 + 36);
    *v78 = v51;
    *(v78 + 8) = v70;
    *(v78 + 16) = v72;
    *(v78 + 24) = v74;
    *(v78 + 32) = v76;
    *(v78 + 40) = 0;
    v79 = v103;
    sub_213E6216C(v55, v103, type metadata accessor for LocationTile);
    v80 = (*(v115 + 80) + 16) & ~*(v115 + 80);
    v81 = swift_allocObject();
    sub_213E61934(v79, v81 + v80);
    v82 = v77;
    v83 = v106;
    sub_213DE2B44(v82, v106, &qword_27C8F9E98, &qword_213F5A670);
    v84 = (v83 + *(v107 + 36));
    *v84 = sub_213DD7524;
    v84[1] = 0;
    v84[2] = sub_213E6202C;
    v84[3] = v81;
    v85 = v109;
    sub_213DE2B44(v83, v109, &qword_27C8F9EA0, &qword_213F5A678);
    v86 = v110;
    sub_213DE3164(v85, v110, &qword_27C8F9EA0, &qword_213F5A678);
    v87 = v105;
    *v105 = 0;
    *(v87 + 8) = 1;
    v88 = v87;
    v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9EC0, &qword_213F5A688);
    sub_213DE3164(v86, v88 + *(v89 + 48), &qword_27C8F9EA0, &qword_213F5A678);
    sub_213DE36FC(v85, &qword_27C8F9EA0, &qword_213F5A678);
    return sub_213DE36FC(v86, &qword_27C8F9EA0, &qword_213F5A678);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_213E606A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v64 = a2;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9260, &qword_213F57278);
  MEMORY[0x28223BE20](v62);
  v4 = &v58 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9258, &qword_213F57270);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v63 = &v58 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v61 = &v58 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9EC8, &qword_213F61150);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v60 = &v58 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v65 = &v58 - v12;
  v59 = *(a1 + *(type metadata accessor for LocationTile(0) + 24));
  v13 = *(v59 + OBJC_IVAR____TtC10MapsDesign21LocationTileViewModel_title + 8);
  v66 = *(v59 + OBJC_IVAR____TtC10MapsDesign21LocationTileViewModel_title);
  v67 = v13;
  v58 = sub_213DBC9EC();

  v14 = sub_213F4E310();
  v16 = v15;
  v18 = v17;
  v66 = sub_213F4E8F0();
  v19 = sub_213F4E2B0();
  v21 = v20;
  v23 = v22;
  sub_213DBCA40(v14, v16, v18 & 1);

  sub_213F4E0C0();
  sub_213F4E180();
  sub_213F4E1D0();

  v24 = sub_213F4E2E0();
  v26 = v25;
  v28 = v27;
  v30 = v29;

  sub_213DBCA40(v19, v21, v23 & 1);

  KeyPath = swift_getKeyPath();
  v66 = v24;
  v67 = v26;
  v28 &= 1u;
  v68 = v28;
  v69 = v30;
  v70 = KeyPath;
  v71 = 1;
  v72 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8980, &unk_213F55A40);
  sub_213E0C270();
  sub_213F4E6D0();
  sub_213DBCA40(v24, v26, v28);

  v32 = *(v59 + OBJC_IVAR____TtC10MapsDesign21LocationTileViewModel_subtitle + 8);
  v66 = *(v59 + OBJC_IVAR____TtC10MapsDesign21LocationTileViewModel_subtitle);
  v67 = v32;

  v33 = sub_213F4E310();
  v35 = v34;
  LOBYTE(v30) = v36;
  v66 = sub_213F4E8F0();
  v67 = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9480, &unk_213F5A6C0);
  sub_213DE3AE4(&qword_2811828B0, &qword_27C8F9480, &unk_213F5A6C0, MEMORY[0x277CE0848]);
  v37 = sub_213F4E2B0();
  v39 = v38;
  LOBYTE(v26) = v40;
  v42 = v41;
  sub_213DBCA40(v33, v35, v30 & 1);

  v43 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9278, &qword_213F57290) + 36);
  v44 = *MEMORY[0x277CE13B8];
  v45 = sub_213F4EF90();
  (*(*(v45 - 8) + 104))(&v4[v43], v44, v45);
  *v4 = v37;
  *(v4 + 1) = v39;
  v4[16] = v26 & 1;
  *(v4 + 3) = v42;
  sub_213F4E210();
  sub_213F4E180();
  v46 = sub_213F4E1D0();

  v47 = swift_getKeyPath();
  v48 = &v4[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9280, &unk_213F5A700) + 36)];
  *v48 = v47;
  v48[1] = v46;
  v49 = swift_getKeyPath();
  v50 = &v4[*(v62 + 36)];
  *v50 = v49;
  *(v50 + 1) = 1;
  v50[16] = 0;
  sub_213E2F2FC();
  v51 = v61;
  sub_213F4E6D0();
  sub_213DE36FC(v4, &qword_27C8F9260, &qword_213F57278);
  v52 = v65;
  v53 = v60;
  sub_213DE3164(v65, v60, &qword_27C8F9EC8, &qword_213F61150);
  v54 = v63;
  sub_213DE3164(v51, v63, &qword_27C8F9258, &qword_213F57270);
  v55 = v64;
  sub_213DE3164(v53, v64, &qword_27C8F9EC8, &qword_213F61150);
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9ED0, &qword_213F5A710);
  sub_213DE3164(v54, v55 + *(v56 + 48), &qword_27C8F9258, &qword_213F57270);
  sub_213DE36FC(v51, &qword_27C8F9258, &qword_213F57270);
  sub_213DE36FC(v52, &qword_27C8F9EC8, &qword_213F61150);
  sub_213DE36FC(v54, &qword_27C8F9258, &qword_213F57270);
  return sub_213DE36FC(v53, &qword_27C8F9EC8, &qword_213F61150);
}

uint64_t sub_213E60CF0(uint64_t a1, uint64_t a2)
{
  type metadata accessor for LocationTile(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F76F8, &unk_213F555A0);
  return sub_213F4EAB0();
}

uint64_t LocationTile.body.getter()
{
  v1 = v0;
  v2 = type metadata accessor for LocationTile(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9DE8, &qword_213F5A4B8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v12[-v7];
  sub_213E6216C(v1, &v12[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)], type metadata accessor for LocationTile);
  v9 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v10 = swift_allocObject();
  sub_213E61934(&v12[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)], v10 + v9);
  v13 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9DF0, &qword_213F5A4C0);
  sub_213E619A4();
  sub_213F4EB00();
  sub_213DE3AE4(&qword_27C8F9E20, &qword_27C8F9DE8, &qword_213F5A4B8, MEMORY[0x277CDF028]);
  sub_213E2EE14();
  sub_213F4E3C0();
  return (*(v6 + 8))(v8, v5);
}

double sub_213E60FC0@<D0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_213F4D290();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v25 - v9;
  *a2 = sub_213F4EEE0();
  a2[1] = v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9E48, &qword_213F5A610);
  sub_213E611CC(a1, a2 + *(v12 + 44));
  sub_213E5DF44(v10);
  sub_213F4D280();
  sub_213F4D270();
  v13 = *(v5 + 8);
  v13(v8, v4);
  v13(v10, v4);
  v14 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9E08, &qword_213F5A4C8) + 36);
  v15 = *(sub_213F4D470() + 20);
  v16 = *MEMORY[0x277CE0118];
  v17 = sub_213F4D950();
  (*(*(v17 - 8) + 104))(&v14[v15], v16, v17);
  __asm { FMOV            V0.2D, #20.0 }

  *v14 = _Q0;
  *&v14[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8368, &unk_213F55BC0) + 36)] = 256;
  v23 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9DF0, &qword_213F5A4C0) + 36);
  result = 9.08367203e223;
  *v23 = xmmword_213F5A400;
  v23[16] = 12;
  return result;
}

uint64_t sub_213E611CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9E50, &qword_213F5A618);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v21 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9E58, &qword_213F5A620);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = (&v21 - v14);
  *v15 = sub_213F4EEE0();
  v15[1] = v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9E60, &qword_213F5A628);
  sub_213E5EDE4(a1, v15 + *(v17 + 44));
  *v9 = sub_213F4DA40();
  *(v9 + 1) = 0;
  v9[16] = 1;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9E68, &qword_213F5A630);
  sub_213E5FAE8(a1, &v9[*(v18 + 44)]);
  sub_213DE3164(v15, v13, &qword_27C8F9E58, &qword_213F5A620);
  sub_213DE3164(v9, v7, &qword_27C8F9E50, &qword_213F5A618);
  sub_213DE3164(v13, a2, &qword_27C8F9E58, &qword_213F5A620);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9E70, &qword_213F5A638);
  sub_213DE3164(v7, a2 + *(v19 + 48), &qword_27C8F9E50, &qword_213F5A618);
  sub_213DE36FC(v9, &qword_27C8F9E50, &qword_213F5A618);
  sub_213DE36FC(v15, &qword_27C8F9E58, &qword_213F5A620);
  sub_213DE36FC(v7, &qword_27C8F9E50, &qword_213F5A618);
  return sub_213DE36FC(v13, &qword_27C8F9E58, &qword_213F5A620);
}

uint64_t sub_213E6140C(uint64_t a1)
{
  v2 = v1;
  v3 = *(a1 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](a1 - 8);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9DE8, &qword_213F5A4B8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v12[-v7];
  sub_213E6216C(v2, &v12[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)], type metadata accessor for LocationTile);
  v9 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v10 = swift_allocObject();
  sub_213E61934(&v12[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)], v10 + v9);
  v13 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9DF0, &qword_213F5A4C0);
  sub_213E619A4();
  sub_213F4EB00();
  sub_213DE3AE4(&qword_27C8F9E20, &qword_27C8F9DE8, &qword_213F5A4B8, MEMORY[0x277CDF028]);
  sub_213E2EE14();
  sub_213F4E3C0();
  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_213E6165C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v27 = a10;
  v28 = a11;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v26);
  (*(*(a10 - 8) + 32))(boxed_opaque_existential_1, a6, a10);
  sub_213F4CBB0();
  v20 = OBJC_IVAR____TtC10MapsDesign21LocationTileViewModel__id;
  v21 = sub_213F4CB40();
  (*(*(v21 - 8) + 32))(a9 + v20, a1, v21);
  v22 = (a9 + OBJC_IVAR____TtC10MapsDesign21LocationTileViewModel_title);
  *v22 = a2;
  v22[1] = a3;
  v23 = (a9 + OBJC_IVAR____TtC10MapsDesign21LocationTileViewModel_subtitle);
  *v23 = a4;
  v23[1] = a5;
  sub_213DD7500(&v26, a9 + OBJC_IVAR____TtC10MapsDesign21LocationTileViewModel_imageProvider);
  v24 = (a9 + OBJC_IVAR____TtC10MapsDesign21LocationTileViewModel_colorGradient);
  *v24 = a7;
  v24[1] = a8;
  return a9;
}

uint64_t sub_213E617A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v23 = a7;
  v24 = a8;
  v22 = a5;
  v16 = *(a10 - 8);
  MEMORY[0x28223BE20](a1);
  v18 = &v21 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for LocationTileViewModel(0);
  v19 = swift_allocObject();
  (*(v16 + 16))(v18, a6, a10);
  return sub_213E6165C(a1, a2, a3, a4, v22, v18, v23, v24, v19, a10, a11);
}

double sub_213E618D4(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
  }

  return result;
}

uint64_t sub_213E61934(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LocationTile(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_213E619A4()
{
  result = qword_27C8F9DF8;
  if (!qword_27C8F9DF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F9DF0, &qword_213F5A4C0);
    sub_213E61A30();
    sub_213DD9674();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8F9DF8);
  }

  return result;
}

unint64_t sub_213E61A30()
{
  result = qword_27C8F9E00;
  if (!qword_27C8F9E00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F9E08, &qword_213F5A4C8);
    sub_213DE3AE4(&qword_27C8F9E10, &qword_27C8F9E18, &unk_213F5A4D0, MEMORY[0x277CE11A8]);
    sub_213DE3AE4(&qword_2811834E0, &qword_27C8F8368, &unk_213F55BC0, MEMORY[0x277CDF4F0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8F9E00);
  }

  return result;
}

uint64_t sub_213E61B80(uint64_t a1)
{
  result = sub_213F4CB40();
  if (v2 <= 0x3F)
  {
    result = sub_213F4CBC0();
    if (v3 <= 0x3F)
    {
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

void sub_213E61D2C(uint64_t a1)
{
  sub_213E61E68(319, &qword_281183520, MEMORY[0x277CDF7E8]);
  if (v1 <= 0x3F)
  {
    sub_213E61E68(319, &qword_281183528, MEMORY[0x277CDF3E0]);
    if (v2 <= 0x3F)
    {
      type metadata accessor for LocationTileViewModel(319);
      if (v3 <= 0x3F)
      {
        sub_213DE22E8();
        if (v4 <= 0x3F)
        {
          sub_213E61EBC(319, &qword_27C8F7660, MEMORY[0x277D85048]);
          if (v5 <= 0x3F)
          {
            sub_213E61EBC(319, &qword_2811827B0, MEMORY[0x277D839B0]);
            if (v6 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_213E61E68(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_213F4CEF0();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_213E61EBC(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_213F4EAD0();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_213E61F74()
{
  result = qword_27C8F9EB0;
  if (!qword_27C8F9EB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F9E80, &qword_213F5A658);
    sub_213DE3AE4(&qword_27C8F9EB8, &qword_27C8F9E78, &qword_213F5A650, MEMORY[0x277CE1198]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8F9EB0);
  }

  return result;
}

uint64_t sub_213E6202C(uint64_t a1)
{
  v3 = *(type metadata accessor for LocationTile(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_213E60CF0(a1, v4);
}

uint64_t sub_213E6209C@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(type metadata accessor for LocationTile(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_213E5F7D4(v4, a1);
}

uint64_t sub_213E6210C()
{
  v1 = *(type metadata accessor for LocationTile(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_213E5F884(v2);
}

uint64_t sub_213E6216C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_213E621D4()
{
  result = qword_281182310;
  if (!qword_281182310)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_281182310);
  }

  return result;
}

uint64_t MapsDesignImage.init(imageProvider:aspectRatio:imageAlignment:resizable:placeholderContentViewBuilder:onImageLoaded:)@<X0>(__int128 *a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  *a9 = swift_getKeyPath();
  *(a9 + 8) = 0;
  v15 = type metadata accessor for MapsDesignImage(0);
  v16 = v15[5];
  *(a9 + v16) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7B68, &qword_213F53770);
  swift_storeEnumTagMultiPayload();
  v17 = v15[6];
  *(a9 + v17) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7A20, &qword_213F526E0);
  swift_storeEnumTagMultiPayload();
  v18 = v15[7];
  *(a9 + v18) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7AC0, &qword_213F52760);
  swift_storeEnumTagMultiPayload();
  v19 = (a9 + v15[12]);
  v20 = (a9 + v15[13]);
  v21 = a9 + v15[14];
  sub_213F4EA90();
  *v21 = v29;
  *(v21 + 16) = v30;
  *(v21 + 24) = v31;
  *(v21 + 25) = v32;
  *(v21 + 26) = v33;
  *(v21 + 32) = v34;
  v22 = v15[15];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7C28, &unk_213F522B0);
  sub_213F4EA90();
  *(a9 + v22) = v29;
  result = sub_213DD7500(a1, a9 + v15[8]);
  *(a9 + v15[9]) = a2 & 1;
  v24 = (a9 + v15[10]);
  *v24 = a3;
  v24[1] = a4;
  *(a9 + v15[11]) = a5;
  *v19 = a6;
  v19[1] = a7;
  *v20 = a8;
  v20[1] = a10;
  return result;
}

double sub_213E62484()
{
  v1 = sub_213F4D7F0();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  if (v0[8] == 1)
  {
    return *v0;
  }

  sub_213F4F520();
  v7 = sub_213F4E000();
  sub_213F4CC10();

  sub_213F4D7E0();
  swift_getAtKeyPath();
  v8 = sub_213E053BC(v5, 0);
  (*(v2 + 8))(v4, v1, v8);
  return *&v9[1];
}

uint64_t sub_213E625D0@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_213F4D7F0();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7B68, &qword_213F53770);
  MEMORY[0x28223BE20](v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for MapsDesignImage(0);
  sub_213DE3164(v1 + *(v10 + 20), v9, &qword_27C8F7B68, &qword_213F53770);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_213F4D290();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_213F4F520();
    v13 = sub_213F4E000();
    sub_213F4CC10();

    sub_213F4D7E0();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_213E627D8@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_213F4D7F0();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7A20, &qword_213F526E0);
  MEMORY[0x28223BE20](v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for MapsDesignImage(0);
  sub_213DE3164(v1 + *(v10 + 24), v9, &qword_27C8F7A20, &qword_213F526E0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_213F4CEA0();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_213F4F520();
    v13 = sub_213F4E000();
    sub_213F4CC10();

    sub_213F4D7E0();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_213E629E0@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_213F4D7F0();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7AC0, &qword_213F52760);
  MEMORY[0x28223BE20](v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for MapsDesignImage(0);
  sub_213DE3164(v1 + *(v10 + 28), v9, &qword_27C8F7AC0, &qword_213F52760);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_213F4D3B0();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_213F4F520();
    v13 = sub_213F4E000();
    sub_213F4CC10();

    sub_213F4D7E0();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t MapsDesignImage.imageProvider.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for MapsDesignImage(0) + 32);

  return sub_213DEBAA8(v3, a1);
}

uint64_t MapsDesignImage.aspectRatio.setter(char a1)
{
  result = type metadata accessor for MapsDesignImage(0);
  *(v1 + *(result + 36)) = a1 & 1;
  return result;
}

uint64_t MapsDesignImage.imageAlignment.setter(uint64_t a1, uint64_t a2)
{
  result = type metadata accessor for MapsDesignImage(0);
  v6 = (v2 + *(result + 40));
  *v6 = a1;
  v6[1] = a2;
  return result;
}

uint64_t MapsDesignImage.resizable.setter(char a1)
{
  result = type metadata accessor for MapsDesignImage(0);
  *(v1 + *(result + 44)) = a1;
  return result;
}

uint64_t sub_213E62E18(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  if (*a1)
  {
    v4 = a1[1];
  }

  else
  {
    v4 = 0;
  }

  v5 = (a2 + *(type metadata accessor for MapsDesignImage(0) + 48));
  v6 = *v5;
  v7 = v5[1];
  sub_213DD74C4(v2, v3);
  result = sub_213DD7558(v6, v7);
  *v5 = v2;
  v5[1] = v4;
  return result;
}

uint64_t MapsDesignImage.placeholderContentViewBuilder.getter()
{
  v1 = (v0 + *(type metadata accessor for MapsDesignImage(0) + 48));
  v2 = *v1;
  sub_213DD74C4(*v1, v1[1]);
  return v2;
}

uint64_t MapsDesignImage.placeholderContentViewBuilder.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for MapsDesignImage(0) + 48));
  result = sub_213DD7558(*v5, v5[1]);
  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t sub_213E62F58@<X0>(uint64_t a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = (a1 + *(type metadata accessor for MapsDesignImage(0) + 52));
  v4 = *v3;
  v5 = v3[1];
  if (*v3)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_213DFA65C;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;

  return sub_213DD74C4(v4, v5);
}

uint64_t sub_213E62FEC(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_213E655BC;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (a2 + *(type metadata accessor for MapsDesignImage(0) + 52));
  v8 = *v7;
  v9 = v7[1];
  sub_213DD74C4(v3, v4);
  result = sub_213DD7558(v8, v9);
  *v7 = v6;
  v7[1] = v5;
  return result;
}

uint64_t MapsDesignImage.onImageLoaded.getter()
{
  v1 = (v0 + *(type metadata accessor for MapsDesignImage(0) + 52));
  v2 = *v1;
  sub_213DD74C4(*v1, v1[1]);
  return v2;
}

uint64_t MapsDesignImage.onImageLoaded.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for MapsDesignImage(0) + 52));
  result = sub_213DD7558(*v5, v5[1]);
  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t sub_213E6316C(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for MapsDesignImage(0);
  v5 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9F80, &qword_213F5AA58);
  result = sub_213F4EAB0();
  if (a1)
  {
    v7 = a2 + *(v4 + 52);
    v8 = *v7;
    if (*v7)
    {
      v9 = *(v7 + 8);

      v8(v10);
      return sub_213DD7558(v8, v9);
    }
  }

  return result;
}

uint64_t MapsDesignImage.body.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v38 = a1;
  v37 = sub_213F4CEA0();
  v39 = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v36 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for MapsDesignImage(0);
  v5 = v4 - 8;
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9F50, &qword_213F5A8E0);
  v30 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = &v28 - v9;
  v11 = sub_213F4E8D0();
  v12 = (v2 + *(v5 + 48));
  v14 = *v12;
  v13 = v12[1];
  v35 = v14;
  v33 = v11;
  v34 = v13;
  sub_213E635C0(v2, &v40);
  v32 = v40;
  v31 = v41;
  sub_213DEEFF0(v2, &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v29 = swift_allocObject();
  sub_213E64B24(&v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v29 + v15);
  __swift_project_boxed_opaque_existential_0((v2 + *(v5 + 40)), *(v2 + *(v5 + 40) + 24));
  v16 = sub_213F4F1C0();
  sub_213DEEFF0(v2, &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = swift_allocObject();
  sub_213E64B24(&v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v17 + v15);
  v18 = &v10[*(v8 + 36)];
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9F58, &qword_213F5A8F8);
  sub_213F4F470();
  *&v18[*(v19 + 40)] = v16;
  *v18 = &unk_213F5A8F0;
  *(v18 + 1) = v17;
  v20 = v32;
  *v10 = v33;
  *(v10 + 1) = v20;
  *(v10 + 4) = v31;
  v10[20] = 1;
  v21 = v34;
  *(v10 + 3) = v35;
  *(v10 + 4) = v21;
  *(v10 + 5) = sub_213DD7524;
  *(v10 + 6) = 0;
  v22 = v29;
  *(v10 + 7) = sub_213E64B88;
  *(v10 + 8) = v22;
  v23 = v36;
  sub_213E627D8(v36);
  sub_213DEEFF0(v2, &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v24 = swift_allocObject();
  sub_213E64B24(&v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v24 + v15);
  sub_213E64E38();
  sub_213E65060();
  v25 = v23;
  v26 = v37;
  sub_213F4E810();

  (*(v39 + 8))(v25, v26);
  return sub_213E650B8(v10);
}

void sub_213E635C0(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for MapsDesignImage(0);
  v27 = *(a1 + v4[15]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9F80, &qword_213F5AA58);
  sub_213F4EAA0();
  if (v31)
  {
    if (*(a1 + v4[11]))
    {
      v5 = 256;
    }

    else
    {
      v5 = 0;
    }

    WORD4(v31) = v5 | *(a1 + v4[9]);
    BYTE10(v31) = 0;
    sub_213E656DC();
    v6 = v31;
LABEL_11:
    v14 = v6;
    sub_213F4DBA0();
    *&v31 = v27;
    WORD5(v31) = BYTE10(v27) != 0;
    WORD4(v31) = WORD4(v27);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9F88, &unk_213F5AA60);
    sub_213E65658();
    sub_213F4DBA0();

    v15 = v27;
    v16 = WORD4(v27) | (BYTE10(v27) << 16);
    if (BYTE11(v27))
    {
      v17 = 0x1000000;
    }

    else
    {
      v17 = 0;
    }

    goto LABEL_14;
  }

  v7 = (a1 + v4[8]);
  v8 = v7[3];
  v9 = v7[4];
  __swift_project_boxed_opaque_existential_0(v7, v8);
  v30 = *(a1 + v4[14] + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9F78, &qword_213F5AA50);
  sub_213F4EAA0();
  v27 = v31;
  v28 = v32;
  LOWORD(v29) = v33;
  BYTE2(v29) = v34;
  v10 = (*(v9 + 24))(&v27, v8, v9);
  if (v10)
  {
    v11 = *(a1 + v4[9]);
    if (*(a1 + v4[11]))
    {
      v12 = 256;
    }

    else
    {
      v12 = 0;
    }

    *&v31 = v10;
    WORD4(v31) = v12 | v11;
    BYTE10(v31) = 1;
    v13 = v10;
    sub_213E656DC();
    v6 = v13;
    goto LABEL_11;
  }

  v19 = a1 + v4[12];
  v20 = *v19;
  if (!*v19)
  {
    v15 = 0;
    v18 = -16777216;
    goto LABEL_15;
  }

  v21 = *(v19 + 8);

  v20(&v27, v22);
  v23 = __swift_project_boxed_opaque_existential_0(&v27, v29);
  MEMORY[0x28223BE20](v23);
  (*(v25 + 16))(&v27 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  v26 = sub_213F4EC10();
  __swift_destroy_boxed_opaque_existential_1(&v27);
  *&v31 = v26;
  DWORD2(v31) = 0x1000000;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9F88, &unk_213F5AA60);
  sub_213E65658();
  sub_213F4DBA0();
  sub_213DD7558(v20, v21);

  v15 = v27;
  v16 = WORD4(v27) | (BYTE10(v27) << 16);
  if (BYTE11(v27))
  {
    v17 = 0x1000000;
  }

  else
  {
    v17 = 0;
  }

LABEL_14:
  v18 = v17 | v16;
LABEL_15:
  *a2 = v15;
  *(a2 + 8) = v18;
}

void sub_213E639B4(uint64_t *a1, uint64_t a2)
{
  type metadata accessor for MapsDesignImage(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9F78, &qword_213F5AA50);
  sub_213F4EAA0();
  sub_213E62484();

  sub_213F4EAB0();
}

uint64_t sub_213E63AD8(uint64_t a1)
{
  v1[65] = a1;
  v2 = type metadata accessor for MapsDesignImage(0);
  v1[66] = v2;
  v3 = *(v2 - 8);
  v1[67] = v3;
  v1[68] = *(v3 + 64);
  v1[69] = swift_task_alloc();
  v4 = sub_213F4D290();
  v1[70] = v4;
  v1[71] = *(v4 - 8);
  v1[72] = swift_task_alloc();
  v1[73] = swift_task_alloc();
  v5 = sub_213F4D3B0();
  v1[74] = v5;
  v1[75] = *(v5 - 8);
  v1[76] = swift_task_alloc();
  v1[77] = swift_task_alloc();
  v6 = sub_213F4CEA0();
  v1[78] = v6;
  v1[79] = *(v6 - 8);
  v1[80] = swift_task_alloc();
  v1[81] = swift_task_alloc();
  sub_213F4F460();
  v1[82] = sub_213F4F450();
  v8 = sub_213F4F440();

  return MEMORY[0x2822009F8](sub_213E63D0C, v8, v7);
}

uint64_t sub_213E63D0C()
{
  v83 = v0;
  v1 = *(v0 + 640);
  v77 = *(v0 + 632);
  v75 = *(v0 + 648);
  v76 = *(v0 + 624);
  v2 = *(v0 + 616);
  v3 = *(v0 + 600);
  v69 = *(v0 + 608);
  v70 = *(v0 + 592);
  v4 = *(v0 + 584);
  v71 = *(v0 + 576);
  v73 = *(v0 + 568);
  v74 = *(v0 + 560);
  v5 = *(v0 + 528);
  v6 = *(v0 + 520);

  v7 = v6 + *(v5 + 56);
  v8 = *(v7 + 16);
  v9 = *(v7 + 24);
  v10 = *(v7 + 25);
  v11 = *(v7 + 26);
  v12 = *(v7 + 32);
  *(v0 + 16) = *v7;
  *(v0 + 32) = v8;
  *(v0 + 40) = v9;
  *(v0 + 41) = v10;
  *(v0 + 42) = v11;
  *(v0 + 48) = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9F78, &qword_213F5AA50);
  sub_213F4EAA0();
  v72 = *(v0 + 296);
  v13 = *(v0 + 312);
  sub_213E627D8(v75);
  sub_213E629E0(v2);
  sub_213E625D0(v4);
  (*(v77 + 104))(v1, *MEMORY[0x277CDF3C0], v76);
  v68 = sub_213F4CE90();
  v77 += 8;
  v67 = *v77;
  (*v77)(v1, v76);
  (*(v3 + 104))(v69, *MEMORY[0x277CDFA90], v70);
  v66 = sub_213F4D3A0();
  v14 = *(v3 + 8);
  v14(v69, v70);
  sub_213F4D280();
  LOBYTE(v69) = sub_213F4D270();
  v15 = *(v73 + 8);
  v15(v71, v74);
  v15(v4, v74);
  v14(v2, v70);
  v67(v75, v76);
  v16 = *(v7 + 16);
  v17 = *(v7 + 24);
  v18 = *(v7 + 25);
  v19 = *(v7 + 26);
  v20 = *(v7 + 32);
  *(v0 + 56) = *v7;
  *(v0 + 72) = v16;
  *(v0 + 80) = v17;
  *(v0 + 81) = v18;
  *(v0 + 82) = v19;
  *(v0 + 88) = v20;
  *(v0 + 328) = v72;
  *(v0 + 344) = v13;
  *(v0 + 352) = v68 & 1;
  *(v0 + 353) = v66 & 1;
  *(v0 + 354) = v69 & 1;

  sub_213F4EAB0();

  v21 = *(v7 + 16);
  v22 = *(v7 + 24);
  v23 = *(v7 + 25);
  v24 = *(v7 + 26);
  v25 = *(v7 + 32);
  *(v0 + 96) = *v7;
  *(v0 + 112) = v21;
  *(v0 + 120) = v22;
  *(v0 + 121) = v23;
  *(v0 + 122) = v24;
  *(v0 + 128) = v25;
  sub_213F4EAA0();
  if (*(v0 + 376) == 0.0)
  {
    v26 = *(v7 + 16);
    v27 = *(v7 + 24);
    v28 = *(v7 + 25);
    v29 = *(v7 + 26);
    v30 = *(v7 + 32);
    *(v0 + 176) = *v7;
    *(v0 + 192) = v26;
    *(v0 + 200) = v27;
    *(v0 + 201) = v28;
    *(v0 + 202) = v29;
    *(v0 + 208) = v30;
    sub_213F4EAA0();
    v31 = *(v7 + 16);
    v32 = *(v7 + 24);
    v33 = *(v7 + 25);
    v34 = *(v7 + 26);
    v35 = *(v7 + 32);
    *(v0 + 216) = *v7;
    v36 = *(v0 + 448);
    v37 = *(v0 + 449);
    v38 = *(v0 + 450);
    *(v0 + 232) = v31;
    *(v0 + 240) = v32;
    *(v0 + 241) = v33;
    *(v0 + 242) = v34;
    *(v0 + 248) = v35;
    sub_213F4EAA0();
    v39 = *(v0 + 456);
    v40 = *(v0 + 464);
    v41 = sub_213E62484();
    v42 = *(v7 + 16);
    v43 = *(v7 + 24);
    v44 = *(v7 + 25);
    v45 = *(v7 + 26);
    v46 = *(v7 + 32);
    *(v0 + 256) = *v7;
    *(v0 + 272) = v42;
    *(v0 + 280) = v43;
    *(v0 + 281) = v44;
    *(v0 + 282) = v45;
    *(v0 + 488) = v39;
    *(v0 + 288) = v46;
    *(v0 + 496) = v40;
    *(v0 + 504) = v41;
    *(v0 + 512) = v36;
    *(v0 + 513) = v37;
    *(v0 + 514) = v38;

    sub_213F4EAB0();
  }

  v47 = *(v0 + 552);
  v48 = *(v0 + 536);
  v49 = *(v0 + 520);
  v50 = (v49 + *(*(v0 + 528) + 32));
  v51 = v50[3];
  v52 = v50[4];
  __swift_project_boxed_opaque_existential_0(v50, v51);
  v53 = *(v7 + 16);
  v54 = *(v7 + 24);
  v55 = *(v7 + 25);
  v56 = *(v7 + 26);
  v57 = *(v7 + 32);
  *(v0 + 136) = *v7;
  *(v0 + 152) = v53;
  *(v0 + 160) = v54;
  *(v0 + 161) = v55;
  *(v0 + 162) = v56;
  *(v0 + 168) = v57;
  sub_213F4EAA0();
  v58 = *(v0 + 408);
  v59 = *(v0 + 416);
  v60 = *(v0 + 417);
  v61 = *(v0 + 418);
  v78 = *(v0 + 392);
  v79 = v58;
  v80 = v59;
  v81 = v60;
  v82 = v61;
  sub_213DEEFF0(v49, v47);
  v62 = (*(v48 + 80) + 16) & ~*(v48 + 80);
  v63 = swift_allocObject();
  sub_213E64B24(v47, v63 + v62);
  (*(v52 + 16))(&v78, sub_213E65730, v63, v51, v52);

  v64 = *(v0 + 8);

  return v64();
}

void sub_213E642F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = type metadata accessor for MapsDesignImage(0);
  v75 = *(v4 - 8);
  v5 = *(v75 + 64);
  v6 = v4 - 8;
  v70 = v4 - 8;
  v74 = v5;
  MEMORY[0x28223BE20](v4 - 8);
  v73 = &v58 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_213F4D290();
  v71 = *(v8 - 8);
  v72 = v8;
  v9 = MEMORY[0x28223BE20](v8);
  v69 = &v58 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v12 = &v58 - v11;
  v68 = sub_213F4D3B0();
  v66 = *(v68 - 8);
  v13 = MEMORY[0x28223BE20](v68);
  v15 = &v58 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v58 - v16;
  v18 = sub_213F4CEA0();
  v19 = *(v18 - 8);
  v20 = MEMORY[0x28223BE20](v18);
  v22 = &v58 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v24 = &v58 - v23;
  v25 = *(v6 + 64);
  v65 = a3;
  v26 = (a3 + v25);
  v27 = *(a3 + v25 + 16);
  LOBYTE(v25) = *(a3 + v25 + 24);
  v28 = *(v26 + 25);
  v29 = *(v26 + 26);
  v30 = *(v26 + 4);
  v76 = *v26;
  v77 = v27;
  v78 = v25;
  v79 = v28;
  v80 = v29;
  v81 = v30;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9F78, &qword_213F5AA50);
  sub_213F4EAA0();
  v64 = v82;
  v31 = v83;
  v62 = v24;
  sub_213E627D8(v24);
  v58 = v17;
  sub_213E629E0(v17);
  sub_213E625D0(v12);
  v32 = *MEMORY[0x277CDF3C0];
  v33 = *(v19 + 104);
  v61 = v18;
  v33(v22, v32, v18);
  v63 = sub_213F4CE90();
  v60 = *(v19 + 8);
  v60(v22, v18);
  v34 = v66;
  v35 = v68;
  (*(v66 + 104))(v15, *MEMORY[0x277CDFA90], v68);
  v59 = sub_213F4D3A0();
  v36 = *(v34 + 8);
  v36(v15, v35);
  v37 = v69;
  sub_213F4D280();
  LOBYTE(v15) = sub_213F4D270();
  v38 = *(v71 + 8);
  v39 = v37;
  v40 = v72;
  v38(v39, v72);
  v38(v12, v40);
  v36(v58, v35);
  v60(v62, v61);
  v41 = *(v26 + 2);
  v42 = *(v26 + 24);
  v43 = *(v26 + 25);
  v44 = *(v26 + 26);
  v45 = *(v26 + 4);
  v76 = *v26;
  v77 = v41;
  v78 = v42;
  v79 = v43;
  v80 = v44;
  v81 = v45;
  v82 = v64;
  v83 = v31;
  v84 = v63 & 1;
  v85 = v59 & 1;
  v86 = v15 & 1;

  sub_213F4EAB0();

  v46 = v65;
  v47 = (v65 + *(v70 + 40));
  v48 = v47[3];
  v49 = v47[4];
  __swift_project_boxed_opaque_existential_0(v47, v48);
  v50 = *(v26 + 2);
  v51 = *(v26 + 24);
  v52 = *(v26 + 25);
  v53 = *(v26 + 26);
  v54 = *(v26 + 4);
  v76 = *v26;
  v77 = v50;
  v78 = v51;
  v79 = v52;
  v80 = v53;
  v81 = v54;
  sub_213F4EAA0();
  v76 = v82;
  v77 = v83;
  v78 = v84;
  v79 = v85;
  v80 = v86;
  v55 = v73;
  sub_213DEEFF0(v46, v73);
  v56 = (*(v75 + 80) + 16) & ~*(v75 + 80);
  v57 = swift_allocObject();
  sub_213E64B24(v55, v57 + v56);
  (*(v49 + 16))(&v76, sub_213E655E4, v57, v48, v49);
}

uint64_t sub_213E64934@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_213F4EA00();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v1;
  v8 = *(v1 + 8);
  v9 = *(v1 + 9);
  v10 = v7;
  result = sub_213F4E9D0();
  if (v9 == 1)
  {
    (*(v4 + 104))(v6, *MEMORY[0x277CE0FE0], v3);
    v12 = sub_213F4EA40();

    (*(v4 + 8))(v6, v3);
    result = v12;
  }

  *a1 = result;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  *(a1 + 17) = v8;
  return result;
}

uint64_t type metadata accessor for MapsDesignImage(uint64_t a1)
{
  result = qword_2811887D8;
  if (!qword_2811887D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_213E64B24(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MapsDesignImage(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_213E64B88(uint64_t *a1)
{
  v3 = *(type metadata accessor for MapsDesignImage(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  sub_213E639B4(a1, v4);
}

uint64_t sub_213E64BF8()
{
  v2 = *(type metadata accessor for MapsDesignImage(0) - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_213E64CC4;

  return sub_213E63AD8(v0 + v3);
}

uint64_t sub_213E64CC4(__n128 a1)
{
  v4 = *v1;

  v2 = *(v4 + 8);

  return v2();
}

void sub_213E64DB8(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for MapsDesignImage(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  sub_213E642F8(a1, a2, v6);
}

unint64_t sub_213E64E38()
{
  result = qword_281182E58;
  if (!qword_281182E58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F9F50, &qword_213F5A8E0);
    sub_213E64EF0();
    sub_213DE3AE4(&qword_281182C28, &qword_27C8F9F58, &qword_213F5A8F8, MEMORY[0x277CDDEB8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281182E58);
  }

  return result;
}

unint64_t sub_213E64EF0()
{
  result = qword_281182FF0;
  if (!qword_281182FF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F9F60, &qword_213F5A900);
    sub_213E64FA8();
    sub_213DE3AE4(&qword_281182910, &qword_27C8F96F8, &qword_213F587F8, MEMORY[0x277CE06A8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281182FF0);
  }

  return result;
}

unint64_t sub_213E64FA8()
{
  result = qword_281183268;
  if (!qword_281183268)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F9F68, &qword_213F5A908);
    sub_213DE3AE4(&qword_281182C50, &qword_27C8F9F70, &unk_213F5A910, MEMORY[0x277CDFC88]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281183268);
  }

  return result;
}

unint64_t sub_213E65060()
{
  result = qword_281183538;
  if (!qword_281183538)
  {
    sub_213F4CEA0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281183538);
  }

  return result;
}

uint64_t sub_213E650B8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9F50, &qword_213F5A8E0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_213E65164(uint64_t a1)
{
  sub_213E65440(319, &qword_281183530, MEMORY[0x277D85048], MEMORY[0x277CDF468]);
  if (v1 <= 0x3F)
  {
    sub_213E65388(319, &qword_281183520, MEMORY[0x277CDF7E8]);
    if (v2 <= 0x3F)
    {
      sub_213E65388(319, &qword_281183528, MEMORY[0x277CDF3E0]);
      if (v3 <= 0x3F)
      {
        sub_213E65388(319, &qword_281183510, MEMORY[0x277CDFAA0]);
        if (v4 <= 0x3F)
        {
          sub_213E653DC();
          if (v5 <= 0x3F)
          {
            sub_213E65490(319, &qword_2811822D8, &qword_27C8F8958, &qword_213F58650, MEMORY[0x277D83D88]);
            if (v6 <= 0x3F)
            {
              sub_213E65440(319, &qword_2811827D0, &type metadata for ImageProvidingSpecs, MEMORY[0x277CE10B8]);
              if (v7 <= 0x3F)
              {
                sub_213E65490(319, &qword_281182790, &qword_27C8F7C28, &unk_213F522B0, MEMORY[0x277CE10B8]);
                if (v8 <= 0x3F)
                {
                  swift_cvw_initStructMetadataWithLayoutString();
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_213E65388(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_213F4CEF0();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_213E653DC()
{
  result = qword_281187B58;
  if (!qword_281187B58)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_281187B58);
  }

  return result;
}

void sub_213E65440(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_213E65490(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
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

uint64_t __swift_memcpy10_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t sub_213E65508(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 10))
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

uint64_t sub_213E65550(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 10) = 1;
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

    *(result + 10) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_213E655E8(void *a1)
{
  v3 = *(type metadata accessor for MapsDesignImage(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_213E6316C(a1, v4);
}

unint64_t sub_213E65658()
{
  result = qword_281182BB8;
  if (!qword_281182BB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F9F88, &unk_213F5AA60);
    sub_213E656DC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281182BB8);
  }

  return result;
}

unint64_t sub_213E656DC()
{
  result = qword_281188800;
  if (!qword_281188800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281188800);
  }

  return result;
}

uint64_t MultiPartLabelViewModel.init(_:_:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t static MultiPartLabelViewModel.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  if ((sub_213DEA6DC(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  return sub_213DEA6DC(v2, v3);
}

uint64_t MultiPartLabelViewModel.hash(into:)(uint64_t a1)
{
  v3 = sub_213F4CA10();
  v25 = *(v3 - 8);
  v4 = MEMORY[0x28223BE20](v3);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v23 - v7;
  v9 = *v1;
  v24 = v1[1];
  v10 = *(v9 + 16);
  v26 = a1;
  MEMORY[0x216052C90](v10);
  v11 = *(v9 + 16);
  if (v11)
  {
    v12 = *(v25 + 16);
    v13 = v9 + ((*(v25 + 80) + 32) & ~*(v25 + 80));
    v14 = *(v25 + 72);
    v15 = (v25 + 8);
    do
    {
      v12(v8, v13, v3);
      sub_213E66F54(&qword_27C8F9F90, MEMORY[0x277CC8C40], MEMORY[0x277CC8C50]);
      sub_213F4F1B0();
      (*v15)(v8, v3);
      v13 += v14;
      --v11;
    }

    while (v11);
  }

  v16 = v24;
  result = MEMORY[0x216052C90](*(v24 + 16));
  v18 = *(v16 + 16);
  if (v18)
  {
    v19 = *(v25 + 16);
    v20 = v16 + ((*(v25 + 80) + 32) & ~*(v25 + 80));
    v21 = *(v25 + 72);
    v22 = (v25 + 8);
    do
    {
      v19(v6, v20, v3);
      sub_213E66F54(&qword_27C8F9F90, MEMORY[0x277CC8C40], MEMORY[0x277CC8C50]);
      sub_213F4F1B0();
      result = (*v22)(v6, v3);
      v20 += v21;
      --v18;
    }

    while (v18);
  }

  return result;
}

uint64_t MultiPartLabelViewModel.hashValue.getter()
{
  v3 = *v0;
  sub_213F4F880();
  MultiPartLabelViewModel.hash(into:)(v2);
  return sub_213F4F8C0();
}

uint64_t sub_213E65A48()
{
  v3 = *v0;
  sub_213F4F880();
  MultiPartLabelViewModel.hash(into:)(v2);
  return sub_213F4F8C0();
}

uint64_t sub_213E65A98(uint64_t a1)
{
  v4 = *v1;
  sub_213F4F880();
  MultiPartLabelViewModel.hash(into:)(v3);
  return sub_213F4F8C0();
}

uint64_t sub_213E65AE0(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  if ((sub_213DEA6DC(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  return sub_213DEA6DC(v2, v3);
}

__n128 MultiPartLabel.init(viewModel:font:foregroundColor:isSelected:)@<Q0>(__n128 *a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, unsigned __int8 a4@<W3>, __n128 *a5@<X8>)
{
  result = *a1;
  *a5 = *a1;
  a5[1].n128_u64[0] = a2;
  a5[1].n128_u64[1] = a3;
  a5[2].n128_u8[0] = a4;
  return result;
}

void sub_213E65B50(void *a1)
{
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);
  v30 = MEMORY[0x277D84F90];
  v5 = v3;
  v6 = [a1 length];
  v7 = swift_allocObject();
  *(v7 + 16) = &v30;
  v8 = swift_allocObject();
  *(v8 + 16) = sub_213E66F0C;
  *(v8 + 24) = v7;
  v28 = sub_213E66F14;
  v29 = v8;
  *&aBlock = MEMORY[0x277D85DD0];
  *(&aBlock + 1) = 1107296256;
  *&v27 = sub_213E660AC;
  *(&v27 + 1) = &block_descriptor_0;
  v9 = _Block_copy(&aBlock);

  [a1 enumerateAttributesInRange:0 options:v6 usingBlock:{0, v9}];
  _Block_release(v9);
  LOBYTE(v6) = swift_isEscapingClosureAtFileLocation();

  if (v6)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v10 = [a1 length];
  if (v3)
  {
    [a1 addAttribute:*MEMORY[0x277D740C0] value:v5 range:{0, v10}];
  }

  [a1 addAttribute:*MEMORY[0x277D740A8] value:v4 range:{0, v10}];
  v11 = MEMORY[0x277D74118];
  if (*(v30 + 16))
  {
    v12 = *MEMORY[0x277D74118];
    if ([a1 attribute:*MEMORY[0x277D74118] atIndex:0 effectiveRange:0])
    {
      sub_213F4F6E0();
      swift_unknownObjectRelease();
    }

    else
    {
      v24 = 0u;
      v25 = 0u;
    }

    aBlock = v24;
    v27 = v25;
    if (*(&v25 + 1))
    {
      sub_213E15130(0, &qword_27C8F9FA0, 0x277D74248);
      if (swift_dynamicCast())
      {
        [v23 mutableCopy];
        sub_213F4F6E0();

        swift_unknownObjectRelease();
        sub_213E15130(0, &qword_27C8F9FA8, 0x277D74240);
        if (swift_dynamicCast())
        {
          v13 = v24;
LABEL_15:
          [v13 setLineSpacing_];

          [a1 addAttribute:v12 value:v13 range:{0, v10}];
          v22 = v13;

          v15 = v30;
          v16 = *(v30 + 16);

          if (!v16)
          {
LABEL_19:

            return;
          }

          v17 = 0;
          v18 = (v15 + 48);
          while (v17 < *(v15 + 16))
          {
            ++v17;
            v20 = *(v18 - 1);
            v19 = *v18;
            type metadata accessor for Key(0);
            sub_213E66F54(&qword_2811823C8, type metadata accessor for Key, &unk_213F50BFC);

            v21 = sub_213F4F190();
            [a1 addAttributes:v21 range:{v20, v19}];

            v18 += 3;
            if (v16 == v17)
            {
              goto LABEL_19;
            }
          }

          __break(1u);
          goto LABEL_21;
        }

        goto LABEL_22;
      }
    }

    else
    {
      sub_213E66F9C(&aBlock);
    }
  }

  v14 = [objc_allocWithZone(MEMORY[0x277D74240]) init];
  if (v14)
  {
    v13 = v14;
    v12 = *v11;
    goto LABEL_15;
  }

LABEL_22:
  __break(1u);
}

uint64_t sub_213E65FE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v9 = *a5;

  result = swift_isUniquelyReferenced_nonNull_native();
  *a5 = v9;
  if ((result & 1) == 0)
  {
    result = sub_213F1E2B0(0, v9[2] + 1, 1, v9);
    v9 = result;
    *a5 = result;
  }

  v12 = v9[2];
  v11 = v9[3];
  if (v12 >= v11 >> 1)
  {
    result = sub_213F1E2B0((v11 > 1), v12 + 1, 1, v9);
    v9 = result;
    *a5 = result;
  }

  v9[2] = v12 + 1;
  v13 = &v9[3 * v12];
  v13[4] = a1;
  v13[5] = a2;
  v13[6] = a3;
  return result;
}

uint64_t sub_213E660AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = *(a1 + 32);
  type metadata accessor for Key(0);
  sub_213E66F54(&qword_2811823C8, type metadata accessor for Key, &unk_213F50BFC);
  v9 = sub_213F4F1A0();
  v8(v9, a3, a4, a5);
}

uint64_t sub_213E6617C()
{
  v1 = sub_213F4CA10();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x28223BE20](v1);
  v5 = v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = v19 - v6;
  v8 = *v0;
  v9 = *v0;
  v10 = *(*v0 + 16);
  result = MEMORY[0x277D84F90];
  if (v10)
  {
    v12 = *(v0 + 2);
    v22 = *(v0 + 3);
    v23 = v12;
    v21 = *(v0 + 32);
    v29 = MEMORY[0x277D84F90];
    v20 = v8;
    sub_213F4F780();
    v13 = sub_213E15130(0, &qword_281182398, 0x277CCAB48);
    v14 = v2 + 16;
    v15 = *(v2 + 16);
    v16 = v9 + ((*(v14 + 64) + 32) & ~*(v14 + 64));
    v19[0] = *(v14 + 56);
    v19[1] = v13;
    v24 = v14;
    v17 = (v14 - 8);
    do
    {
      v15(v7, v16, v1);
      v15(v5, v7, v1);
      v18 = sub_213F4F5A0();
      v25 = v20;
      v26 = v23;
      v27 = v22;
      v28 = v21;
      sub_213E65B50(v18);
      [objc_allocWithZone(MEMORY[0x277CCA898]) initWithAttributedString_];

      (*v17)(v7, v1);
      sub_213F4F760();
      sub_213F4F790();
      sub_213F4F7A0();
      sub_213F4F770();
      v16 += v19[0];
      --v10;
    }

    while (v10);
    return v29;
  }

  return result;
}

uint64_t sub_213E663B0()
{
  v1 = sub_213F4CA10();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x28223BE20](v1);
  v5 = v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = v19 - v6;
  v8 = *(v0 + 1);
  v9 = v0[1];
  v10 = *(v9 + 16);
  result = MEMORY[0x277D84F90];
  if (v10)
  {
    v12 = *v0;
    v22 = v0[3];
    v23 = v12;
    v21 = *(v0 + 32);
    v29 = MEMORY[0x277D84F90];
    v20 = v8;
    sub_213F4F780();
    v13 = sub_213E15130(0, &qword_281182398, 0x277CCAB48);
    v14 = v2 + 16;
    v15 = *(v2 + 16);
    v16 = v9 + ((*(v14 + 64) + 32) & ~*(v14 + 64));
    v19[0] = *(v14 + 56);
    v19[1] = v13;
    v24 = v14;
    v17 = (v14 - 8);
    do
    {
      v15(v7, v16, v1);
      v15(v5, v7, v1);
      v18 = sub_213F4F5A0();
      v25 = v23;
      v26 = v20;
      v27 = v22;
      v28 = v21;
      sub_213E65B50(v18);
      [objc_allocWithZone(MEMORY[0x277CCA898]) initWithAttributedString_];

      (*v17)(v7, v1);
      sub_213F4F760();
      sub_213F4F790();
      sub_213F4F7A0();
      sub_213F4F770();
      v16 += v19[0];
      --v10;
    }

    while (v10);
    return v29;
  }

  return result;
}

id sub_213E665EC()
{
  v1 = sub_213F4CA10();
  MEMORY[0x28223BE20](v1 - 8);
  v3 = v27 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = v0[1];
  v6 = v0[2];
  v7 = v0[3];
  v8 = *(v0 + 32);
  v34 = *v0;
  v4 = v34;
  v35 = v5;
  v36 = v6;
  v37 = v7;
  v38 = v8;
  v9 = sub_213E6617C();
  v34 = v4;
  v35 = v5;
  v36 = v6;
  v37 = v7;
  v38 = v8;
  v10 = sub_213E663B0();
  sub_213E15130(0, &qword_281182398, 0x277CCAB48);
  sub_213F4C9A0();
  v27[1] = v3;
  v11 = sub_213F4F5A0();
  if (v9 >> 62)
  {
    goto LABEL_42;
  }

  v12 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:

  if (v12)
  {
    if (v9 < 0)
    {
      v13 = v9;
    }

    else
    {
      v13 = v9 & 0xFFFFFFFFFFFFFF8;
    }

    v14 = v10 & 0xFFFFFFFFFFFFFF8;
    v32 = v10 & 0xFFFFFFFFFFFFFF8;
    v33 = v9 & 0xC000000000000001;
    if (v10 < 0)
    {
      v14 = v10;
    }

    v27[0] = v14;
    v28 = v10 + 32;
    v29 = v10 & 0xC000000000000001;
    v15 = 4;
    v30 = v10 >> 62;
    v31 = v13;
    while (1)
    {
      v19 = v15 - 4;
      if (v33)
      {
        v20 = MEMORY[0x216052B30](v15 - 4, v9);
      }

      else
      {
        if (v19 >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_38;
        }

        v20 = *(v9 + 8 * v15);
      }

      v18 = v20;
      v21 = v15 - 3;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
LABEL_38:
        __break(1u);
LABEL_39:
        __break(1u);
LABEL_40:
        __break(1u);
LABEL_41:
        __break(1u);
LABEL_42:
        v12 = sub_213F4F7E0();
        goto LABEL_3;
      }

      [v11 appendAttributedString_];
      if (v9 >> 62)
      {
        v22 = sub_213F4F7E0();
      }

      else
      {
        v22 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (__OFSUB__(v22, 1))
      {
        goto LABEL_39;
      }

      if (v19 < v22 - 1)
      {
        break;
      }

LABEL_12:

      ++v15;
      if (v21 == v12)
      {
        goto LABEL_36;
      }
    }

    if (v30)
    {
      v23 = sub_213F4F7E0();
      if (v19 < v23)
      {
        goto LABEL_24;
      }
    }

    else
    {
      v23 = *(v32 + 16);
      if (v19 < v23)
      {
LABEL_24:
        if (!v29)
        {
          if (v19 >= *(v32 + 16))
          {
            goto LABEL_40;
          }

          v16 = *(v10 + 8 * v15);
          goto LABEL_11;
        }

        v24 = v15 - 4;
        goto LABEL_35;
      }
    }

    if (v23 <= 0)
    {
      v27[2] = sub_213E15130(0, &qword_2811823E0, 0x277CCA898);
      sub_213F4C9A0();
      v16 = sub_213F4F5A0();
LABEL_11:
      v17 = v16;
      [v11 appendAttributedString_];

      v18 = v17;
      goto LABEL_12;
    }

    if (!v29)
    {
      if (v23 > *(v32 + 16))
      {
        goto LABEL_41;
      }

      v16 = *(v28 + 8 * (v23 - 1));
      goto LABEL_11;
    }

    v24 = v23 - 1;
LABEL_35:
    v16 = MEMORY[0x216052B30](v24, v10);
    goto LABEL_11;
  }

LABEL_36:

  swift_bridgeObjectRelease_n();
  v25 = [objc_allocWithZone(MEMORY[0x277CCA898]) initWithAttributedString_];

  return v25;
}

id MultiPartLabel.makeUIView(context:)()
{
  v0 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  [v0 setAdjustsFontForContentSizeCategory_];
  v1 = v0;
  [v1 setTranslatesAutoresizingMaskIntoConstraints_];
  LODWORD(v2) = 1144750080;
  [v1 setContentHuggingPriority:1 forAxis:v2];
  v3 = [objc_opt_self() clearColor];
  [v1 setBackgroundColor_];

  v4 = v1;
  v5 = sub_213F4F220();
  [v4 setAccessibilityIdentifier_];

  [v4 setNumberOfLines_];
  [v4 setPreferredVibrancy_];
  return v4;
}

id MultiPartLabel.updateUIView(_:context:)(void *a1)
{
  v5 = *v1;
  v6 = *(v1 + 2);
  v7 = *(v1 + 3);
  LOBYTE(v8) = *(v1 + 32);
  v3 = sub_213E665EC();
  [a1 setAttributedText_];

  return [a1 invalidateIntrinsicContentSize];
}

uint64_t MultiPartLabel.sizeThatFits(_:uiView:context:)(uint64_t a1, char a2, uint64_t a3, uint64_t a4, id a5)
{
  result = 0;
  if ((a2 & 1) == 0 && (a1 & 0x7FF0000000000000) != 0x7FF0000000000000)
  {
    v7 = a1;
    [a5 sizeThatFits_];
    if ((~v9 & 0x7FF0000000000000) == 0 || (v8 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      return 0;
    }

    else
    {
      return v7;
    }
  }

  return result;
}

unint64_t sub_213E66BB0()
{
  result = qword_27C8F9F98;
  if (!qword_27C8F9F98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8F9F98);
  }

  return result;
}

unint64_t sub_213E66C08()
{
  result = qword_281187A10;
  if (!qword_281187A10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281187A10);
  }

  return result;
}

id sub_213E66C74(void *a1)
{
  v5 = *v1;
  v6 = *(v1 + 2);
  v7 = *(v1 + 3);
  LOBYTE(v8) = *(v1 + 32);
  v3 = sub_213E665EC();
  [a1 setAttributedText_];

  return [a1 invalidateIntrinsicContentSize];
}

uint64_t sub_213E66D1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_213E66EB8();

  return MEMORY[0x28212E3C8](a1, a2, a3, v6);
}

uint64_t sub_213E66D80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_213E66EB8();

  return MEMORY[0x28212E358](a1, a2, a3, v6);
}

void sub_213E66DE4(uint64_t a1)
{
  sub_213E66EB8();
  sub_213F4DB60();
  __break(1u);
}

uint64_t sub_213E66E1C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 33))
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

uint64_t sub_213E66E64(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 33) = 1;
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

    *(result + 33) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_213E66EB8()
{
  result = qword_281187A18[0];
  if (!qword_281187A18[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_281187A18);
  }

  return result;
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_213E66F54(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_213E66F9C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C8F8BC0, &qword_213F563F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t NearbyTileViewModel.id.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t NearbyTileViewModel.id.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t NearbyTileViewModel.init(id:title:imageProvider:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, __int128 *a5@<X4>, void *a6@<X8>)
{
  *a6 = a1;
  a6[1] = a2;
  a6[2] = a3;
  a6[3] = a4;
  return sub_213DD7500(a5, (a6 + 4));
}

uint64_t sub_213E670A0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_213F4D7F0();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7B68, &qword_213F53770);
  MEMORY[0x28223BE20](v8);
  v10 = &v14 - v9;
  sub_213DE3164(v2, &v14 - v9, &qword_27C8F7B68, &qword_213F53770);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_213F4D290();
    return (*(*(v11 - 8) + 32))(a1, v10, v11);
  }

  else
  {
    sub_213F4F520();
    v13 = sub_213F4E000();
    sub_213F4CC10();

    sub_213F4D7E0();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

__n128 NearbyTile.init(model:tapHandler:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  *a4 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7B68, &qword_213F53770);
  swift_storeEnumTagMultiPayload();
  v8 = type metadata accessor for NearbyTile(0);
  v9 = a4 + *(v8 + 20);
  v10 = *(a1 + 48);
  *(v9 + 2) = *(a1 + 32);
  *(v9 + 3) = v10;
  *(v9 + 8) = *(a1 + 64);
  result = *(a1 + 16);
  *v9 = *a1;
  *(v9 + 1) = result;
  v12 = (a4 + *(v8 + 24));
  *v12 = a2;
  v12[1] = a3;
  return result;
}

uint64_t sub_213E6733C@<X0>(uint64_t a1@<X8>)
{
  v103 = a1;
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9228, &unk_213F5A640);
  v2 = MEMORY[0x28223BE20](v108);
  v101 = &v92 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v99 = &v92 - v4;
  v107 = sub_213F4D390();
  v106 = *(v107 - 8);
  v5 = MEMORY[0x28223BE20](v107);
  v112 = &v92 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v105 = &v92 - v7;
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9230, &qword_213F57250);
  MEMORY[0x28223BE20](v102);
  v100 = &v92 - v8;
  v9 = sub_213F4D290();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v92 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v92 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FA008, &qword_213F5ACE0);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v92 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FA000, &qword_213F5ACD8);
  v20 = v19 - 8;
  MEMORY[0x28223BE20](v19);
  v22 = &v92 - v21;
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9FF8, &qword_213F5ACD0);
  MEMORY[0x28223BE20](v104);
  v24 = &v92 - v23;
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9FF0, &unk_213F5ACC0);
  MEMORY[0x28223BE20](v110);
  v111 = &v92 - v25;
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FA020, &qword_213F5ADF8);
  v97 = *(v98 - 8);
  MEMORY[0x28223BE20](v98);
  v96 = &v92 - v26;
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9FE8, &qword_213F5ACB8);
  MEMORY[0x28223BE20](v95);
  v94 = &v92 - v27;
  sub_213E670A0(v15);
  sub_213F4D280();
  sub_213F4D270();
  v28 = v13;
  v29 = v13;
  v30 = v15;
  v31 = *(v10 + 8);
  v31(v29, v9);
  v109 = v30;
  v114 = v9;
  v113 = v10 + 8;
  v31(v30, v9);
  *v18 = sub_213F4D8A0();
  *(v18 + 1) = 0x4020000000000000;
  v18[16] = 0;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FA028, &unk_213F5AE00);
  v33 = v1;
  sub_213E67F20(v1, &v18[*(v32 + 44)]);
  sub_213F4EEF0();
  sub_213F4D4E0();
  sub_213DE2B44(v18, v22, &qword_27C8FA008, &qword_213F5ACE0);
  v34 = &v22[*(v20 + 44)];
  v35 = v123;
  *(v34 + 4) = v122;
  *(v34 + 5) = v35;
  *(v34 + 6) = v124;
  v36 = v119;
  *v34 = v118;
  *(v34 + 1) = v36;
  v37 = v121;
  *(v34 + 2) = v120;
  *(v34 + 3) = v37;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7BA0, &qword_213F5EAC0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_213F51DE0;
  LOBYTE(v10) = sub_213F4E0B0();
  *(inited + 32) = v10;
  v39 = sub_213F4E080();
  *(inited + 33) = v39;
  v40 = sub_213F4E090();
  sub_213F4E090();
  if (sub_213F4E090() != v10)
  {
    v40 = sub_213F4E090();
  }

  sub_213F4E090();
  if (sub_213F4E090() != v39)
  {
    v40 = sub_213F4E090();
  }

  v41 = v109;
  sub_213E670A0(v109);
  sub_213F4D280();
  sub_213F4D270();
  v42 = v114;
  v31(v28, v114);
  v31(v41, v42);
  sub_213F4CDA0();
  v44 = v43;
  v46 = v45;
  v48 = v47;
  v50 = v49;
  sub_213DE2B44(v22, v24, &qword_27C8FA000, &qword_213F5ACD8);
  v51 = &v24[*(v104 + 36)];
  *v51 = v40;
  v52 = v28;
  *(v51 + 1) = v44;
  *(v51 + 2) = v46;
  *(v51 + 3) = v48;
  *(v51 + 4) = v50;
  v51[40] = 0;
  v53 = sub_213F4E0A0();
  v104 = v33;
  sub_213E670A0(v41);
  sub_213F4D280();
  sub_213F4D270();
  v31(v28, v42);
  v31(v41, v42);
  sub_213F4CDA0();
  v55 = v54;
  v57 = v56;
  v59 = v58;
  v61 = v60;
  v62 = v111;
  sub_213DE2B44(v24, v111, &qword_27C8F9FF8, &qword_213F5ACD0);
  v63 = v62 + *(v110 + 36);
  *v63 = v53;
  *(v63 + 8) = v55;
  *(v63 + 16) = v57;
  *(v63 + 24) = v59;
  *(v63 + 32) = v61;
  *(v63 + 40) = 0;
  v64 = v106;
  v65 = *(v106 + 104);
  v66 = v105;
  v67 = v107;
  v65(v105, *MEMORY[0x277CDF9E8], v107);
  v65(v112, *MEMORY[0x277CDF998], v67);
  v68 = v66;
  sub_213E691F4();
  result = sub_213F4F1E0();
  if (result)
  {
    v93 = v52;
    v70 = v64;
    v71 = *(v64 + 32);
    v72 = v99;
    v71(v99, v68, v67);
    v73 = v108;
    v71((v72 + *(v108 + 48)), v112, v67);
    v112 = v31;
    v74 = v101;
    sub_213DE3164(v72, v101, &qword_27C8F9228, &unk_213F5A640);
    v75 = *(v73 + 48);
    v76 = v100;
    v71(v100, v74, v67);
    v77 = v102;
    v78 = *(v70 + 8);
    v78(v74 + v75, v67);
    sub_213DE2B44(v72, v74, &qword_27C8F9228, &unk_213F5A640);
    v71((v76 + *(v77 + 36)), (v74 + *(v108 + 48)), v67);
    v78(v74, v67);
    sub_213E68E0C(&qword_281182DE8, &qword_27C8F9FF0, &unk_213F5ACC0, sub_213E68DDC);
    sub_213DE3AE4(&qword_281182520, &qword_27C8F9230, &qword_213F57250, MEMORY[0x277D83660]);
    v79 = v96;
    v80 = v111;
    sub_213F4E570();
    sub_213DE36FC(v76, &qword_27C8F9230, &qword_213F57250);
    sub_213DE36FC(v80, &qword_27C8F9FF0, &unk_213F5ACC0);
    v81 = v109;
    sub_213E670A0(v109);
    v82 = v93;
    sub_213F4D280();
    sub_213F4D270();
    v83 = v82;
    v84 = v114;
    v85 = v112;
    (v112)(v83, v114);
    v85(v81, v84);
    v115 = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
    sub_213E29028();
    sub_213F4EA90();
    v86 = v116;
    v87 = v117;
    v88 = v94;
    (*(v97 + 32))(v94, v79, v98);
    v89 = (v88 + *(v95 + 36));
    *v89 = v86;
    v89[1] = v87;
    v89[2] = 0x403A000000000000;
    v90 = v103;
    sub_213DC8698(v88, v103);
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9FB0, &qword_213F5AC98);
    v91 = v90 + *(result + 36);
    *v91 = xmmword_213F5AC50;
    *(v91 + 16) = 12;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_213E67F20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v72 = a1;
  v79 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7668, &qword_213F52190);
  MEMORY[0x28223BE20](v3 - 8);
  v77 = &v69 - v4;
  v5 = sub_213F4E230();
  v75 = *(v5 - 8);
  v76 = v5;
  MEMORY[0x28223BE20](v5);
  v74 = &v69 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_213F4D290();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v69 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v69 - v12;
  v14 = type metadata accessor for MapsDesignImage(0);
  v15 = (v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v69 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7BE8, &unk_213F52220);
  v19 = v18 - 8;
  v20 = MEMORY[0x28223BE20](v18);
  v78 = &v69 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v80 = &v69 - v22;
  v73 = a1 + *(type metadata accessor for NearbyTile(0) + 20);
  sub_213DEBAA8(v73 + 32, &v17[v15[10]]);
  v71 = sub_213F4EEE0();
  v70 = v23;
  *v17 = swift_getKeyPath();
  v17[8] = 0;
  v24 = v15[7];
  *&v17[v24] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7B68, &qword_213F53770);
  swift_storeEnumTagMultiPayload();
  v25 = v15[8];
  *&v17[v25] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7A20, &qword_213F526E0);
  swift_storeEnumTagMultiPayload();
  v26 = v15[9];
  *&v17[v26] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7AC0, &qword_213F52760);
  swift_storeEnumTagMultiPayload();
  v27 = &v17[v15[14]];
  v28 = &v17[v15[15]];
  v29 = &v17[v15[16]];
  v81 = 0;
  v82 = 0;
  memset(v83, 0, sizeof(v83));
  sub_213F4EA90();
  v30 = v85;
  v31 = BYTE8(v85);
  v32 = BYTE9(v85);
  v33 = BYTE10(v85);
  v34 = v86;
  *v29 = v84;
  *(v29 + 2) = v30;
  v29[24] = v31;
  v29[25] = v32;
  v29[26] = v33;
  *(v29 + 4) = v34;
  v35 = v15[17];
  v81 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7C28, &unk_213F522B0);
  sub_213F4EA90();
  *&v17[v35] = v84;
  v17[v15[11]] = 1;
  v36 = &v17[v15[12]];
  v37 = v70;
  *v36 = v71;
  v36[1] = v37;
  v17[v15[13]] = 1;
  *v27 = 0;
  *(v27 + 1) = 0;
  *v28 = 0;
  *(v28 + 1) = 0;
  sub_213E670A0(v13);
  sub_213F4D280();
  sub_213F4D270();
  v38 = *(v8 + 8);
  v38(v11, v7);
  v38(v13, v7);
  sub_213E670A0(v13);
  sub_213F4D280();
  sub_213F4D270();
  v38(v11, v7);
  v38(v13, v7);
  sub_213F4EEE0();
  sub_213F4D0C0();
  v39 = v80;
  sub_213DEEFF0(v17, v80);
  v40 = (v39 + *(v19 + 44));
  v41 = v85;
  *v40 = v84;
  v40[1] = v41;
  v40[2] = v86;
  sub_213DEBB74(v17);
  v42 = *(v73 + 24);
  v81 = *(v73 + 16);
  v82 = v42;
  sub_213DBC9EC();

  v43 = sub_213F4E310();
  v45 = v44;
  LOBYTE(v13) = v46;
  v48 = v74;
  v47 = v75;
  v49 = v76;
  (*(v75 + 104))(v74, *MEMORY[0x277CE0A68], v76);
  v50 = sub_213F4E0F0();
  v51 = v77;
  (*(*(v50 - 8) + 56))(v77, 1, 1, v50);
  sub_213F4E170();
  sub_213F4E1A0();
  sub_213DE36FC(v51, &qword_27C8F7668, &qword_213F52190);
  (*(v47 + 8))(v48, v49);
  v52 = sub_213F4E2E0();
  v54 = v53;
  LOBYTE(v19) = v55;

  sub_213DBCA40(v43, v45, v13 & 1);

  v56 = [objc_opt_self() labelColor];
  v81 = sub_213F4E870();
  v57 = sub_213F4E2B0();
  v59 = v58;
  LOBYTE(v27) = v60;
  v62 = v61;
  sub_213DBCA40(v52, v54, v19 & 1);

  KeyPath = swift_getKeyPath();
  v64 = v80;
  v65 = v78;
  sub_213DE3164(v80, v78, &qword_27C8F7BE8, &unk_213F52220);
  v66 = v79;
  sub_213DE3164(v65, v79, &qword_27C8F7BE8, &unk_213F52220);
  v67 = v66 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FA030, &qword_213F5AED8) + 48);
  *v67 = v57;
  *(v67 + 8) = v59;
  *(v67 + 16) = v27 & 1;
  *(v67 + 24) = v62;
  *(v67 + 32) = KeyPath;
  *(v67 + 40) = 1;
  *(v67 + 48) = 0;
  sub_213DBCA50(v57, v59, v27 & 1);

  sub_213DE36FC(v64, &qword_27C8F7BE8, &unk_213F52220);
  sub_213DBCA40(v57, v59, v27 & 1);

  return sub_213DE36FC(v65, &qword_27C8F7BE8, &unk_213F52220);
}

uint64_t NearbyTile.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9FB0, &qword_213F5AC98);
  MEMORY[0x28223BE20](v3);
  v5 = v24 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9FB8, &qword_213F5ACA0);
  MEMORY[0x28223BE20](v6);
  v26 = v24 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9FC0, &qword_213F5ACA8);
  v25 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = v24 - v9;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9FC8, &qword_213F5ACB0);
  v11 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v13 = v24 - v12;
  v14 = (v1 + *(type metadata accessor for NearbyTile(0) + 24));
  v15 = *v14;
  if (*v14)
  {
    v16 = v14[1];
    v17 = swift_allocObject();
    v24[3] = v6;
    v24[4] = a1;
    v24[0] = v24;
    *(v17 + 16) = v15;
    *(v17 + 24) = v16;
    MEMORY[0x28223BE20](v17);
    v24[1] = v3;
    v24[-2] = v1;
    sub_213DD74C4(v15, v16);
    v24[2] = sub_213E68BF4();

    sub_213F4EB00();
    v18 = sub_213DE3AE4(&qword_27C8F9FD0, &qword_27C8F9FC0, &qword_213F5ACA8, MEMORY[0x277CDF028]);
    v19 = sub_213E2EE14();
    sub_213F4E3C0();
    (*(v25 + 8))(v10, v8);
    v20 = v27;
    (*(v11 + 16))(v26, v13, v27);
    swift_storeEnumTagMultiPayload();
    v28 = v8;
    v29 = &type metadata for ScalingTile;
    v30 = v18;
    v31 = v19;
    swift_getOpaqueTypeConformance2();
    sub_213F4DBA0();
    sub_213DD7558(v15, v16);
    return (*(v11 + 8))(v13, v20);
  }

  else
  {
    sub_213E6733C(v5);
    sub_213DC83F0(v5, v26);
    swift_storeEnumTagMultiPayload();
    v22 = sub_213DE3AE4(&qword_27C8F9FD0, &qword_27C8F9FC0, &qword_213F5ACA8, MEMORY[0x277CDF028]);
    v23 = sub_213E2EE14();
    v28 = v8;
    v29 = &type metadata for ScalingTile;
    v30 = v22;
    v31 = v23;
    swift_getOpaqueTypeConformance2();
    sub_213E68BF4();
    sub_213F4DBA0();
    return sub_213DC8460(v5);
  }
}

uint64_t type metadata accessor for NearbyTile(uint64_t a1)
{
  result = qword_2811883B8;
  if (!qword_2811883B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_213E68BF4()
{
  result = qword_27C8F9FD8;
  if (!qword_27C8F9FD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F9FB0, &qword_213F5AC98);
    sub_213E68C80();
    sub_213DD9674();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8F9FD8);
  }

  return result;
}

unint64_t sub_213E68C80()
{
  result = qword_27C8F9FE0;
  if (!qword_27C8F9FE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F9FE8, &qword_213F5ACB8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F9FF0, &unk_213F5ACC0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F9230, &qword_213F57250);
    sub_213E68E0C(&qword_281182DE8, &qword_27C8F9FF0, &unk_213F5ACC0, sub_213E68DDC);
    sub_213DE3AE4(&qword_281182520, &qword_27C8F9230, &qword_213F57250, MEMORY[0x277D83660]);
    swift_getOpaqueTypeConformance2();
    sub_213E5A778();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8F9FE0);
  }

  return result;
}

uint64_t sub_213E68E0C(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
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

unint64_t sub_213E68E90()
{
  result = qword_2811831D8;
  if (!qword_2811831D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FA000, &qword_213F5ACD8);
    sub_213DE3AE4(&qword_2811826E0, &qword_27C8FA008, &qword_213F5ACE0, MEMORY[0x277CE1138]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811831D8);
  }

  return result;
}

uint64_t sub_213E68F88(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
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

uint64_t sub_213E68FD0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_213E69058(uint64_t a1)
{
  sub_213DF29DC(319);
  if (v1 <= 0x3F)
  {
    sub_213E0C0F8(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_213E690E4()
{
  result = qword_27C8FA010;
  if (!qword_27C8FA010)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FA018, &unk_213F5ADE8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F9FC0, &qword_213F5ACA8);
    sub_213DE3AE4(&qword_27C8F9FD0, &qword_27C8F9FC0, &qword_213F5ACA8, MEMORY[0x277CDF028]);
    sub_213E2EE14();
    swift_getOpaqueTypeConformance2();
    sub_213E68BF4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8FA010);
  }

  return result;
}

unint64_t sub_213E691F4()
{
  result = qword_281183490;
  if (!qword_281183490)
  {
    sub_213F4D390();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281183490);
  }

  return result;
}

MapsDesign::NoteFieldViewModel::FieldType_optional __swiftcall NoteFieldViewModel.FieldType.init(rawValue:)(Swift::Int rawValue)
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

void *sub_213E69270@<X0>(void *result@<X0>, char *a2@<X8>)
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

uint64_t sub_213E692FC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_213E69878(&qword_27C8FA040, type metadata accessor for NoteFieldViewModel, &protocol conformance descriptor for NoteFieldViewModel);
  sub_213F4CB80();

  v4 = OBJC_IVAR____TtC10MapsDesign18NoteFieldViewModel__id;
  swift_beginAccess();
  v5 = sub_213F4CB40();
  return (*(*(v5 - 8) + 16))(a2, v3 + v4, v5);
}

uint64_t sub_213E693F4(uint64_t a1)
{
  v2 = sub_213F4CB40();
  MEMORY[0x28223BE20](v2);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v4, a1);
  return sub_213E695D8(v4);
}

uint64_t sub_213E694C0@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v6 = v1;
  sub_213E69878(&qword_27C8FA040, type metadata accessor for NoteFieldViewModel, &protocol conformance descriptor for NoteFieldViewModel);
  sub_213F4CB80();

  v3 = OBJC_IVAR____TtC10MapsDesign18NoteFieldViewModel__id;
  swift_beginAccess();
  v4 = sub_213F4CB40();
  return (*(*(v4 - 8) + 16))(a1, v6 + v3, v4);
}

uint64_t sub_213E695D8(uint64_t a1)
{
  v2 = v1;
  v4 = sub_213F4CB40();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____TtC10MapsDesign18NoteFieldViewModel__id;
  swift_beginAccess();
  v9 = *(v5 + 16);
  v9(v7, v2 + v8, v4);
  sub_213E69878(&qword_27C8F8BF8, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
  v14[0] = a1;
  LOBYTE(a1) = sub_213F4F1F0();
  v10 = *(v5 + 8);
  v10(v7, v4);
  if (a1)
  {
    v9(v7, v14[0], v4);
    swift_beginAccess();
    (*(v5 + 40))(v2 + v8, v7, v4);
    swift_endAccess();
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    v12 = v14[0];
    v14[-2] = v2;
    v14[-1] = v12;
    v14[1] = v2;
    sub_213E69878(&qword_27C8FA040, type metadata accessor for NoteFieldViewModel, &protocol conformance descriptor for NoteFieldViewModel);
    sub_213F4CB70();
  }

  return (v10)(v14[0], v4);
}

uint64_t sub_213E69878(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_213E698C0(uint64_t a1, uint64_t a2)
{
  v4 = sub_213F4CB40();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v7, a2, v4);
  v8 = OBJC_IVAR____TtC10MapsDesign18NoteFieldViewModel__id;
  swift_beginAccess();
  (*(v5 + 40))(a1 + v8, v7, v4);
  return swift_endAccess();
}

uint64_t (*sub_213E699F8(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC10MapsDesign18NoteFieldViewModel___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_213E69878(&qword_27C8FA040, type metadata accessor for NoteFieldViewModel, &protocol conformance descriptor for NoteFieldViewModel);
  sub_213F4CB80();

  *v4 = v1;
  swift_getKeyPath();
  sub_213F4CBA0();

  v4[7] = sub_213E6929C(v4);
  return sub_213E69B30;
}

uint64_t (*sub_213E69C2C(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC10MapsDesign18NoteFieldViewModel___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_213E69878(&qword_27C8FA040, type metadata accessor for NoteFieldViewModel, &protocol conformance descriptor for NoteFieldViewModel);
  sub_213F4CB80();

  *v4 = v1;
  swift_getKeyPath();
  sub_213F4CBA0();

  v4[7] = sub_213E69B3C(v4);
  return sub_213E69D64;
}

uint64_t sub_213E69DE4@<X0>(uint64_t *a1@<X0>, void *a3@<X4>, void *a4@<X8>)
{
  v6 = *a1;
  swift_getKeyPath();
  sub_213E69878(&qword_27C8FA040, type metadata accessor for NoteFieldViewModel, &protocol conformance descriptor for NoteFieldViewModel);
  sub_213F4CB80();

  v7 = (v6 + *a3);
  swift_beginAccess();
  v8 = v7[1];
  *a4 = *v7;
  a4[1] = v8;
}

uint64_t keypath_set_3Tm_1(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  v7 = *a1;
  v6 = a1[1];

  return a5(v7, v6);
}

uint64_t sub_213E69F28(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  sub_213E69878(&qword_27C8FA040, type metadata accessor for NoteFieldViewModel, &protocol conformance descriptor for NoteFieldViewModel);
  sub_213F4CB80();

  v4 = (v2 + *a2);
  swift_beginAccess();
  v5 = *v4;

  return v5;
}

uint64_t sub_213E6A018(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v8 = (v5 + *a3);
  swift_beginAccess();
  v9 = *v8 == a1 && v8[1] == a2;
  if (v9 || (sub_213F4F830() & 1) != 0)
  {
    *v8 = a1;
    v8[1] = a2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_213E69878(&qword_27C8FA040, type metadata accessor for NoteFieldViewModel, &protocol conformance descriptor for NoteFieldViewModel);
    sub_213F4CB70();
  }
}

uint64_t (*sub_213E6A198(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC10MapsDesign18NoteFieldViewModel___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_213E69878(&qword_27C8FA040, type metadata accessor for NoteFieldViewModel, &protocol conformance descriptor for NoteFieldViewModel);
  sub_213F4CB80();

  *v4 = v1;
  swift_getKeyPath();
  sub_213F4CBA0();

  v4[7] = sub_213E69D70(v4);
  return sub_213E6A2D0;
}

uint64_t sub_213E6A33C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_213E69878(&qword_27C8FA040, type metadata accessor for NoteFieldViewModel, &protocol conformance descriptor for NoteFieldViewModel);
  sub_213F4CB80();

  v4 = OBJC_IVAR____TtC10MapsDesign18NoteFieldViewModel__focusedField;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_213E6A438@<X0>(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  v5 = v1;
  sub_213E69878(&qword_27C8FA040, type metadata accessor for NoteFieldViewModel, &protocol conformance descriptor for NoteFieldViewModel);
  sub_213F4CB80();

  v3 = OBJC_IVAR____TtC10MapsDesign18NoteFieldViewModel__focusedField;
  result = swift_beginAccess();
  *a1 = *(v5 + v3);
  return result;
}

double sub_213E6A4FC(unsigned __int8 *a1)
{
  v2 = *a1;
  v3 = OBJC_IVAR____TtC10MapsDesign18NoteFieldViewModel__focusedField;
  swift_beginAccess();
  v5 = *(v1 + v3);
  if (v5 != 2)
  {
    if (v2 == 2 || ((v5 ^ v2) & 1) != 0)
    {
      goto LABEL_7;
    }

LABEL_6:
    *(v1 + v3) = v2;
    return result;
  }

  if (v2 == 2)
  {
    goto LABEL_6;
  }

LABEL_7:
  KeyPath = swift_getKeyPath();
  MEMORY[0x28223BE20](KeyPath);
  sub_213E69878(&qword_27C8FA040, type metadata accessor for NoteFieldViewModel, &protocol conformance descriptor for NoteFieldViewModel);
  sub_213F4CB70();

  return result;
}

uint64_t (*sub_213E6A65C(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC10MapsDesign18NoteFieldViewModel___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_213E69878(&qword_27C8FA040, type metadata accessor for NoteFieldViewModel, &protocol conformance descriptor for NoteFieldViewModel);
  sub_213F4CB80();

  *v4 = v1;
  swift_getKeyPath();
  sub_213F4CBA0();

  v4[7] = sub_213E6A2DC(v4);
  return sub_213E6A794;
}

uint64_t NoteFieldViewModel.__allocating_init(name:namePrompt:note:notePrompt:focusedField:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned __int8 *a9)
{
  v32 = a8;
  v33 = a4;
  v31 = a3;
  v14 = sub_213F4CB40();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v31 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = swift_allocObject();
  v19 = *a9;
  sub_213F4CB30();
  (*(v15 + 32))(v18 + OBJC_IVAR____TtC10MapsDesign18NoteFieldViewModel__id, v17, v14);
  *(v18 + OBJC_IVAR____TtC10MapsDesign18NoteFieldViewModel__focusedField) = 2;
  sub_213F4CBB0();
  v20 = (v18 + OBJC_IVAR____TtC10MapsDesign18NoteFieldViewModel__note);
  *v20 = a5;
  v20[1] = a6;
  v21 = (v18 + OBJC_IVAR____TtC10MapsDesign18NoteFieldViewModel__name);
  *v21 = a1;
  v21[1] = a2;
  v22 = (v18 + OBJC_IVAR____TtC10MapsDesign18NoteFieldViewModel_notePrompt);
  v24 = v31;
  v23 = v32;
  *v22 = a7;
  v22[1] = v23;
  v25 = (v18 + OBJC_IVAR____TtC10MapsDesign18NoteFieldViewModel_namePrompt);
  v26 = v33;
  *v25 = v24;
  v25[1] = v26;
  v27 = OBJC_IVAR____TtC10MapsDesign18NoteFieldViewModel__focusedField;
  swift_beginAccess();
  v28 = *(v18 + v27);
  if (v28 == 2 || v19 == 2)
  {
    if (v28 != 2 || v19 != 2)
    {
      goto LABEL_8;
    }
  }

  else if ((v28 ^ v19))
  {
LABEL_8:
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    *(&v31 - 2) = v18;
    *(&v31 - 8) = v19;
    v34 = v18;
    sub_213E69878(&qword_27C8FA040, type metadata accessor for NoteFieldViewModel, &protocol conformance descriptor for NoteFieldViewModel);
    sub_213F4CB70();

    return v18;
  }

  *(v18 + v27) = v19;
  return v18;
}

uint64_t NoteFieldViewModel.init(name:namePrompt:note:notePrompt:focusedField:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned __int8 *a9)
{
  v10 = v9;
  v34 = a8;
  v35 = a4;
  v33 = a3;
  v16 = sub_213F4CB40();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v33 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *a9;
  sub_213F4CB30();
  (*(v17 + 32))(v10 + OBJC_IVAR____TtC10MapsDesign18NoteFieldViewModel__id, v19, v16);
  *(v10 + OBJC_IVAR____TtC10MapsDesign18NoteFieldViewModel__focusedField) = 2;
  sub_213F4CBB0();
  v21 = (v10 + OBJC_IVAR____TtC10MapsDesign18NoteFieldViewModel__note);
  *v21 = a5;
  v21[1] = a6;
  v22 = (v10 + OBJC_IVAR____TtC10MapsDesign18NoteFieldViewModel__name);
  *v22 = a1;
  v22[1] = a2;
  v23 = (v10 + OBJC_IVAR____TtC10MapsDesign18NoteFieldViewModel_notePrompt);
  v25 = v33;
  v24 = v34;
  *v23 = a7;
  v23[1] = v24;
  v26 = (v10 + OBJC_IVAR____TtC10MapsDesign18NoteFieldViewModel_namePrompt);
  v27 = v35;
  *v26 = v25;
  v26[1] = v27;
  v28 = OBJC_IVAR____TtC10MapsDesign18NoteFieldViewModel__focusedField;
  swift_beginAccess();
  v29 = *(v10 + v28);
  if (v29 == 2 || v20 == 2)
  {
    if (v29 != 2 || v20 != 2)
    {
      goto LABEL_10;
    }
  }

  else if ((v29 ^ v20))
  {
LABEL_10:
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    *(&v33 - 2) = v10;
    *(&v33 - 8) = v20;
    v36 = v10;
    sub_213E69878(&qword_27C8FA040, type metadata accessor for NoteFieldViewModel, &protocol conformance descriptor for NoteFieldViewModel);
    sub_213F4CB70();

    return v10;
  }

  *(v10 + v28) = v20;
  return v10;
}

uint64_t NoteFieldViewModel.deinit()
{
  v1 = OBJC_IVAR____TtC10MapsDesign18NoteFieldViewModel__id;
  v2 = sub_213F4CB40();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = OBJC_IVAR____TtC10MapsDesign18NoteFieldViewModel___observationRegistrar;
  v4 = sub_213F4CBC0();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  return v0;
}

uint64_t NoteFieldViewModel.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC10MapsDesign18NoteFieldViewModel__id;
  v2 = sub_213F4CB40();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = OBJC_IVAR____TtC10MapsDesign18NoteFieldViewModel___observationRegistrar;
  v4 = sub_213F4CBC0();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return swift_deallocClassInstance();
}

uint64_t sub_213E6AEE0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_213F4D7F0();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7B68, &qword_213F53770);
  MEMORY[0x28223BE20](v8);
  v10 = &v14 - v9;
  sub_213DE3164(v2, &v14 - v9, &qword_27C8F7B68, &qword_213F53770);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_213F4D290();
    return (*(*(v11 - 8) + 32))(a1, v10, v11);
  }

  else
  {
    sub_213F4F520();
    v13 = sub_213F4E000();
    sub_213F4CC10();

    sub_213F4D7E0();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t sub_213E6B0E0@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  swift_getKeyPath();
  sub_213E69878(&qword_27C8FA040, type metadata accessor for NoteFieldViewModel, &protocol conformance descriptor for NoteFieldViewModel);
  sub_213F4CB80();

  v4 = OBJC_IVAR____TtC10MapsDesign18NoteFieldViewModel__id;
  swift_beginAccess();
  v5 = sub_213F4CB40();
  return (*(*(v5 - 8) + 16))(a1, v3 + v4, v5);
}

void *NoteFieldView.focusedField.getter()
{
  type metadata accessor for NoteFieldView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FA068, &qword_213F5AF80);
  return sub_213F4CDC0();
}

void *sub_213E6B248@<X0>(_BYTE *a1@<X8>)
{
  type metadata accessor for NoteFieldView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FA068, &qword_213F5AF80);
  result = sub_213F4CDC0();
  *a1 = v3;
  return result;
}

double sub_213E6B2CC(char *a1, uint64_t a2)
{
  type metadata accessor for NoteFieldView(0);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FA068, &qword_213F5AF80);
  sub_213F4CDD0();

  return result;
}

double NoteFieldView.focusedField.setter(char *a1)
{
  type metadata accessor for NoteFieldView(0);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FA068, &qword_213F5AF80);
  sub_213F4CDD0();

  return result;
}

void (*NoteFieldView.focusedField.modify(uint64_t *a1))(uint64_t *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = (v1 + *(type metadata accessor for NoteFieldView(0) + 24));
  v6 = *v5;
  *(v4 + 19) = *v5;
  v7 = *(v5 + 1);
  *(v4 + 48) = v7;
  LOBYTE(v5) = v5[16];
  *(v4 + 20) = v5;
  *v4 = v6;
  *(v4 + 8) = v7;
  *(v4 + 16) = v5;

  *(v4 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FA068, &qword_213F5AF80);
  sub_213F4CDC0();
  return sub_213E6B4A0;
}

void sub_213E6B4A0(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 17);
  v3 = *(*a1 + 20);
  *(*a1 + 24) = *(*a1 + 19);
  *(v1 + 32) = *(v1 + 48);
  *(v1 + 40) = v3;
  *(v1 + 18) = v2;
  sub_213F4CDD0();

  free(v1);
}

void *NoteFieldView.$focusedField.getter()
{
  type metadata accessor for NoteFieldView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FA068, &qword_213F5AF80);
  return sub_213F4CDE0();
}

uint64_t NoteFieldView.init(model:)@<X0>(uint64_t *a2@<X8>)
{
  *a2 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7B68, &qword_213F53770);
  swift_storeEnumTagMultiPayload();
  type metadata accessor for NoteFieldView(0);
  sub_213E6CE50();
  sub_213F4CE00();
  type metadata accessor for NoteFieldViewModel(0);
  sub_213E69878(&qword_27C8FA040, type metadata accessor for NoteFieldViewModel, &protocol conformance descriptor for NoteFieldViewModel);
  return sub_213F4ED60();
}

uint64_t NoteFieldView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v31 = a1;
  v3 = type metadata accessor for NoteFieldView(0);
  v4 = v3 - 8;
  v30 = *(v3 - 8);
  v29[1] = *(v30 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_213F4D290();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = v29 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FA078, &qword_213F5AFC0);
  v29[0] = v14;
  MEMORY[0x28223BE20](v14);
  v16 = v29 - v15;
  *v16 = sub_213F4DA40();
  *(v16 + 1) = 0;
  v16[16] = 0;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FA080, &qword_213F5AFC8);
  sub_213E6BA80(v1, &v16[*(v17 + 44)]);
  sub_213E6AEE0(v13);
  sub_213F4D280();
  sub_213F4D270();
  v18 = *(v8 + 8);
  v18(v11, v7);
  v18(v13, v7);
  v35 = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  sub_213E15130(0, &qword_281182328, 0x277D75D18);
  sub_213F4EA90();
  v19 = v33;
  v20 = &v16[*(v14 + 36)];
  *v20 = v32;
  *(v20 + 1) = v19;
  *(v20 + 2) = 0x4030000000000000;
  v21 = v2 + *(v4 + 32);
  LOBYTE(v19) = *v21;
  v22 = *(v21 + 8);
  LOBYTE(v21) = *(v21 + 16);
  LOBYTE(v32) = v19;
  v33 = v22;
  v34 = v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FA068, &qword_213F5AF80);
  sub_213F4CDC0();
  LOBYTE(v32) = v35;
  sub_213E6CEA4(v2, v6);
  v23 = (*(v30 + 80) + 16) & ~*(v30 + 80);
  v24 = swift_allocObject();
  sub_213E6CF08(v6, v24 + v23);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FA090, &qword_213F5AFD8);
  sub_213E6CFEC();
  sub_213E6D6B8(&qword_27C8FA0B0, sub_213E6D0A4, MEMORY[0x277D84F50]);
  v25 = v31;
  sub_213F4E810();

  sub_213DE36FC(v16, &qword_27C8FA078, &qword_213F5AFC0);
  sub_213E6CEA4(v2, v6);
  v26 = swift_allocObject();
  sub_213E6CF08(v6, v26 + v23);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FA0C0, &qword_213F5AFE8);
  v28 = (v25 + *(result + 36));
  *v28 = sub_213E6D0F8;
  v28[1] = v26;
  v28[2] = 0;
  v28[3] = 0;
  return result;
}

uint64_t sub_213E6BA80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v152 = a2;
  v146 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FA110, &qword_213F5B1E0);
  MEMORY[0x28223BE20](v146);
  v147 = &v124 - v3;
  v151 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FA118, &qword_213F5B1E8);
  v150 = *(v151 - 8);
  v4 = MEMORY[0x28223BE20](v151);
  v149 = &v124 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v148 = &v124 - v6;
  v144 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FA120, &unk_213F5B1F0);
  v143 = *(v144 - 8);
  MEMORY[0x28223BE20](v144);
  v142 = &v124 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FA128, &qword_213F5E020);
  v9 = MEMORY[0x28223BE20](v8);
  v141 = &v124 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v140 = &v124 - v11;
  v139 = sub_213F4D310();
  v138 = *(v139 - 8);
  MEMORY[0x28223BE20](v139);
  v137 = &v124 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for NoteFieldView(0);
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v134 = v15;
  v135 = &v124 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FA088, &qword_213F5AFD0);
  v158 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v157 = &v124 - v17;
  v159 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FA130, &qword_213F5B200);
  MEMORY[0x28223BE20](v159);
  v155 = &v124 - v18;
  v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FA138, &qword_213F5B208);
  MEMORY[0x28223BE20](v129);
  v20 = &v124 - v19;
  v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FA140, &qword_213F5B210);
  v131 = *(v132 - 8);
  MEMORY[0x28223BE20](v132);
  v130 = &v124 - v21;
  v136 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FA148, &qword_213F5B218);
  v22 = *(v136 - 8);
  v23 = MEMORY[0x28223BE20](v136);
  v133 = &v124 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v153 = &v124 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FA150, &qword_213F5B220);
  v27 = MEMORY[0x28223BE20](v26 - 8);
  v145 = &v124 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v30 = &v124 - v29;
  v160 = v13;
  v31 = a1 + *(v13 + 20);
  v154 = v16;
  v156 = v31;
  sub_213F4ED40();
  v33 = *(v165 + OBJC_IVAR____TtC10MapsDesign18NoteFieldViewModel_namePrompt);
  v32 = *(v165 + OBJC_IVAR____TtC10MapsDesign18NoteFieldViewModel_namePrompt + 8);

  if (v32)
  {
    v127 = v22;
    v34 = v157;
    v128 = v30;
    v125 = v14;
    v35 = v154;
    sub_213F4ED50();
    swift_getKeyPath();
    sub_213F4ED70();

    (*(v158 + 8))(v34, v35);
    v126 = v8;
    v162 = v33;
    v163 = v32;
    sub_213DBC9EC();
    v36 = v155;
    sub_213F4EFC0();
    v37 = sub_213F4E0D0();
    KeyPath = swift_getKeyPath();
    v39 = (v36 + *(v159 + 36));
    *v39 = KeyPath;
    v39[1] = v37;
    sub_213F4E160();
    sub_213E6D8B0();
    sub_213F4E370();
    sub_213DE36FC(v36, &qword_27C8FA130, &qword_213F5B200);
    LOBYTE(v37) = sub_213F4E040();
    sub_213F4CDA0();
    v41 = v40;
    v43 = v42;
    v45 = v44;
    v47 = v46;
    v48 = &v20[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FA180, &qword_213F5B268) + 36)];
    *v48 = v37;
    *(v48 + 1) = v41;
    *(v48 + 2) = v43;
    *(v48 + 3) = v45;
    *(v48 + 4) = v47;
    v48[40] = 0;
    LOBYTE(v37) = sub_213F4E0B0();
    sub_213F4CDA0();
    v49 = v129;
    v50 = &v20[*(v129 + 36)];
    *v50 = v37;
    *(v50 + 1) = v51;
    *(v50 + 2) = v52;
    *(v50 + 3) = v53;
    *(v50 + 4) = v54;
    v50[40] = 0;
    v55 = *(v160 + 24);
    v124 = a1;
    v56 = (a1 + v55);
    v57 = *v56;
    v58 = *(v56 + 1);
    LOBYTE(v56) = v56[16];
    LOBYTE(v162) = v57;
    v163 = v58;
    v164 = v56;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FA068, &qword_213F5AF80);
    sub_213F4CDE0();
    v162 = v165;
    v163 = v166;
    v164 = v167;
    v161 = 0;
    v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FA090, &qword_213F5AFD8);
    v60 = sub_213E6DA4C();
    v61 = sub_213E6D6B8(&qword_27C8FA0F8, sub_213E6CE50, MEMORY[0x277D84F48]);
    v62 = v130;
    sub_213F4E770();

    sub_213DE36FC(v20, &qword_27C8FA138, &qword_213F5B208);
    v63 = v135;
    sub_213E6CEA4(a1, v135);
    v64 = (*(v125 + 80) + 16) & ~*(v125 + 80);
    v65 = swift_allocObject();
    sub_213E6CF08(v63, v65 + v64);
    v66 = v137;
    sub_213F4D300();
    v165 = v49;
    v166 = v59;
    v167 = v60;
    v168 = v61;
    swift_getOpaqueTypeConformance2();
    v67 = v153;
    v68 = v132;
    sub_213F4E820();

    (*(v138 + 8))(v66, v139);
    (*(v131 + 8))(v62, v68);
    v69 = v140;
    sub_213F4ECA0();
    LOBYTE(v68) = sub_213F4E040();
    sub_213F4CDA0();
    v70 = v69 + *(v126 + 36);
    *v70 = v68;
    *(v70 + 8) = v71;
    *(v70 + 16) = v72;
    *(v70 + 24) = v73;
    *(v70 + 32) = v74;
    *(v70 + 40) = 0;
    v75 = v127;
    v76 = *(v127 + 16);
    v77 = v133;
    v78 = v67;
    v79 = v136;
    v76(v133, v78, v136);
    v80 = v141;
    sub_213DE3164(v69, v141, &qword_27C8FA128, &qword_213F5E020);
    v81 = v142;
    v76(v142, v77, v79);
    v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FA198, &unk_213F5B270);
    sub_213DE3164(v80, &v81[*(v82 + 48)], &qword_27C8FA128, &qword_213F5E020);
    sub_213DE36FC(v69, &qword_27C8FA128, &qword_213F5E020);
    v83 = *(v75 + 8);
    v83(v153, v79);
    sub_213DE36FC(v80, &qword_27C8FA128, &qword_213F5E020);
    v83(v77, v79);
    v84 = v81;
    v85 = v128;
    sub_213DC8A88(v84, v128);
    v86 = 0;
    v87 = v124;
  }

  else
  {
    v86 = 1;
    v87 = a1;
    v85 = v30;
  }

  (*(v143 + 56))(v85, v86, 1, v144);
  v88 = v154;
  sub_213F4ED40();
  v90 = *(v165 + OBJC_IVAR____TtC10MapsDesign18NoteFieldViewModel_notePrompt);
  v89 = *(v165 + OBJC_IVAR____TtC10MapsDesign18NoteFieldViewModel_notePrompt + 8);

  v162 = v90;
  v163 = v89;
  v91 = v157;
  sub_213F4ED50();
  swift_getKeyPath();
  sub_213F4ED70();

  (*(v158 + 8))(v91, v88);
  sub_213DBC9EC();
  v92 = v155;
  sub_213F4EFD0();
  v93 = sub_213F4E0D0();
  v94 = swift_getKeyPath();
  v95 = (v92 + *(v159 + 36));
  *v95 = v94;
  v95[1] = v93;
  sub_213E6D8B0();
  v96 = v147;
  sub_213F4E850();
  sub_213DE36FC(v92, &qword_27C8FA130, &qword_213F5B200);
  LOBYTE(v93) = sub_213F4E040();
  sub_213F4CDA0();
  v98 = v97;
  v100 = v99;
  v102 = v101;
  v104 = v103;
  v105 = v96 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FA160, &qword_213F5B258) + 36);
  *v105 = v93;
  *(v105 + 8) = v98;
  *(v105 + 16) = v100;
  *(v105 + 24) = v102;
  *(v105 + 32) = v104;
  *(v105 + 40) = 0;
  LOBYTE(v93) = sub_213F4E0B0();
  sub_213F4CDA0();
  v106 = v96 + *(v146 + 36);
  *v106 = v93;
  *(v106 + 8) = v107;
  *(v106 + 16) = v108;
  *(v106 + 24) = v109;
  *(v106 + 32) = v110;
  *(v106 + 40) = 0;
  v111 = v87 + *(v160 + 24);
  v112 = *v111;
  v113 = *(v111 + 8);
  LOBYTE(v111) = *(v111 + 16);
  LOBYTE(v162) = v112;
  v163 = v113;
  v164 = v111;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FA068, &qword_213F5AF80);
  sub_213F4CDE0();
  v162 = v165;
  v163 = v166;
  v164 = v167;
  v161 = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FA090, &qword_213F5AFD8);
  sub_213E6D994();
  sub_213E6D6B8(&qword_27C8FA0F8, sub_213E6CE50, MEMORY[0x277D84F48]);
  v114 = v148;
  sub_213F4E770();

  sub_213DE36FC(v96, &qword_27C8FA110, &qword_213F5B1E0);
  v115 = v145;
  sub_213DC8A18(v85, v145);
  v116 = v150;
  v117 = *(v150 + 16);
  v118 = v149;
  v119 = v151;
  v117(v149, v114, v151);
  v120 = v152;
  sub_213DC8A18(v115, v152);
  v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FA178, &qword_213F5B260);
  v117((v120 + *(v121 + 48)), v118, v119);
  v122 = *(v116 + 8);
  v122(v114, v119);
  sub_213DE36FC(v85, &qword_27C8FA150, &qword_213F5B220);
  v122(v118, v119);
  return sub_213DE36FC(v115, &qword_27C8FA150, &qword_213F5B220);
}

double sub_213E6CA80(uint64_t a1)
{
  type metadata accessor for NoteFieldView(0);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FA068, &qword_213F5AF80);
  sub_213F4CDD0();

  return result;
}

double sub_213E6CB08(uint64_t a1, unsigned __int8 *a2)
{
  v2 = *a2;
  type metadata accessor for NoteFieldView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FA088, &qword_213F5AFD0);
  sub_213F4ED40();
  v3 = OBJC_IVAR____TtC10MapsDesign18NoteFieldViewModel__focusedField;
  swift_beginAccess();
  v4 = *(v9 + v3);
  if (v4 == 2 || v2 == 2)
  {
    if (v4 != 2 || v2 != 2)
    {
      goto LABEL_13;
    }

LABEL_11:
    *(v9 + v3) = v2;

    return result;
  }

  if (((v4 ^ v2) & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_13:
  KeyPath = swift_getKeyPath();
  MEMORY[0x28223BE20](KeyPath);
  sub_213E69878(&qword_27C8FA040, type metadata accessor for NoteFieldViewModel, &protocol conformance descriptor for NoteFieldViewModel);
  sub_213F4CB70();

  return result;
}

double sub_213E6CC90(uint64_t a1)
{
  sub_213E15130(0, &qword_27C8FA108, 0x277D75BB8);
  v1 = [swift_getObjCClassFromMetadata() appearance];
  [v1 setClearButtonMode_];

  type metadata accessor for NoteFieldView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FA088, &qword_213F5AFD0);
  sub_213F4ED40();
  swift_getKeyPath();
  sub_213E69878(&qword_27C8FA040, type metadata accessor for NoteFieldViewModel, &protocol conformance descriptor for NoteFieldViewModel);
  sub_213F4CB80();

  swift_beginAccess();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FA068, &qword_213F5AF80);
  sub_213F4CDD0();

  return result;
}

unint64_t sub_213E6CE50()
{
  result = qword_27C8FA070;
  if (!qword_27C8FA070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8FA070);
  }

  return result;
}

uint64_t sub_213E6CEA4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NoteFieldView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_213E6CF08(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NoteFieldView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

double sub_213E6CF6C(uint64_t a1, unsigned __int8 *a2)
{
  type metadata accessor for NoteFieldView(0);

  return sub_213E6CB08(a1, a2);
}

unint64_t sub_213E6CFEC()
{
  result = qword_27C8FA098;
  if (!qword_27C8FA098)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FA078, &qword_213F5AFC0);
    sub_213DE3AE4(&qword_27C8FA0A0, &qword_27C8FA0A8, &qword_213F5AFE0, MEMORY[0x277CE1198]);
    sub_213E5A778();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8FA098);
  }

  return result;
}

unint64_t sub_213E6D0A4()
{
  result = qword_27C8FA0B8;
  if (!qword_27C8FA0B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8FA0B8);
  }

  return result;
}

uint64_t sub_213E6D180(uint64_t a1)
{
  result = sub_213F4CB40();
  if (v2 <= 0x3F)
  {
    result = sub_213F4CBC0();
    if (v3 <= 0x3F)
    {
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

void sub_213E6D4B8(uint64_t a1)
{
  sub_213E6D5B4(319, &qword_281183520, MEMORY[0x277CDF7E8], MEMORY[0x277CDF468]);
  if (v1 <= 0x3F)
  {
    sub_213E6D5B4(319, &qword_27C8FA0E8, type metadata accessor for NoteFieldViewModel, MEMORY[0x277CE12F8]);
    if (v2 <= 0x3F)
    {
      sub_213E6D618(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_213E6D5B4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_213E6D618(uint64_t a1)
{
  if (!qword_27C8FA0F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FA090, &qword_213F5AFD8);
    sub_213E6D6B8(&qword_27C8FA0F8, sub_213E6CE50, MEMORY[0x277D84F48]);
    v1 = sub_213F4CE10();
    if (!v2)
    {
      atomic_store(v1, &qword_27C8FA0F0);
    }
  }
}

uint64_t sub_213E6D6B8(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FA090, &qword_213F5AFD8);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_213E6D730()
{
  result = qword_27C8FA100;
  if (!qword_27C8FA100)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FA0C0, &qword_213F5AFE8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FA078, &qword_213F5AFC0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FA090, &qword_213F5AFD8);
    sub_213E6CFEC();
    sub_213E6D6B8(&qword_27C8FA0B0, sub_213E6D0A4, MEMORY[0x277D84F50]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8FA100);
  }

  return result;
}

uint64_t sub_213E6D854()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = OBJC_IVAR____TtC10MapsDesign18NoteFieldViewModel__focusedField;
  result = swift_beginAccess();
  *(v1 + v3) = v2;
  return result;
}

unint64_t sub_213E6D8B0()
{
  result = qword_27C8FA158;
  if (!qword_27C8FA158)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FA130, &qword_213F5B200);
    sub_213DE3AE4(&qword_27C8F8750, &qword_27C8F86F8, &qword_213F54768, MEMORY[0x277CDF1A8]);
    sub_213DE3AE4(&qword_281182860, &qword_27C8F76E0, &unk_213F518D0, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8FA158);
  }

  return result;
}

unint64_t sub_213E6D994()
{
  result = qword_27C8FA168;
  if (!qword_27C8FA168)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FA110, &qword_213F5B1E0);
    sub_213E6DB04(&qword_27C8FA170, &qword_27C8FA160, &qword_213F5B258, MEMORY[0x277CE0EA0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8FA168);
  }

  return result;
}

unint64_t sub_213E6DA4C()
{
  result = qword_27C8FA188;
  if (!qword_27C8FA188)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FA138, &qword_213F5B208);
    sub_213E6DB04(&qword_27C8FA190, &qword_27C8FA180, &qword_213F5B268, MEMORY[0x277CE0C08]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8FA188);
  }

  return result;
}

uint64_t sub_213E6DB04(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FA130, &qword_213F5B200);
    sub_213E6D8B0();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_213E6DBC8(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for NoteFieldView(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t PhotoFanViewModel.init(identifier:size:firstImageProvider:secondImageProvider:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, __int128 *a4@<X3>, __int128 *a5@<X4>, uint64_t a6@<X8>)
{
  v8 = *a3;
  *a6 = a1;
  *(a6 + 8) = a2;
  *(a6 + 16) = v8;
  sub_213DD7500(a4, a6 + 24);

  return sub_213DD7500(a5, a6 + 64);
}

__n128 PhotoFanView.init(model:)@<Q0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  *a2 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7B68, &qword_213F53770);
  swift_storeEnumTagMultiPayload();
  v4 = a2 + *(type metadata accessor for PhotoFanView(0) + 20);
  v5 = *(a1 + 80);
  *(v4 + 4) = *(a1 + 64);
  *(v4 + 5) = v5;
  *(v4 + 12) = *(a1 + 96);
  v6 = *(a1 + 16);
  *v4 = *a1;
  *(v4 + 1) = v6;
  result = *(a1 + 48);
  *(v4 + 2) = *(a1 + 32);
  *(v4 + 3) = result;
  return result;
}

uint64_t PhotoFanSize.hashValue.getter()
{
  v1 = *v0;
  sub_213F4F880();
  MEMORY[0x216052C90](v1);
  return sub_213F4F8C0();
}

uint64_t sub_213E6DDB8(uint64_t a1, unint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FA268, &qword_213F5B588);
  v5 = v4 - 8;
  MEMORY[0x28223BE20](v4);
  v30 = &v26 - v6;
  v7 = sub_213F4F180();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_213F4F170();
  v27 = *(v29 - 8);
  v11 = MEMORY[0x28223BE20](v29);
  v28 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v14 = &v26 - v13;

  v15 = sub_213E6E1C4(a1, a2);
  v17 = v16;
  sub_213E71360(&qword_27C8FA270, MEMORY[0x277CC5540], MEMORY[0x277CC5538]);
  sub_213F4F160();
  sub_213E712B8(v15, v17);
  sub_213E710D8(v15, v17, v10);
  v18 = v30;
  sub_213E7130C(v15, v17);
  sub_213F4F150();
  v19 = v17;
  v20 = v27;
  v21 = sub_213E7130C(v15, v19);
  (*(v8 + 8))(v10, v7, v21);
  v22 = v29;
  v23 = *(v20 + 16);
  v23(v18, v14, v29);
  *(v18 + *(v5 + 44)) = 8;
  v23(v28, v18, v22);
  sub_213E71360(&qword_27C8FA278, MEMORY[0x277CC5290], MEMORY[0x277CC52A8]);
  sub_213F4F3B0();
  result = v31;
  v25 = *(v31 + 16);
  if (v32 == v25 || v32 < v25)
  {

    sub_213DE36FC(v18, &qword_27C8FA268, &qword_213F5B588);
    return (*(v20 + 8))(v14, v22);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_213E6E1C4(uint64_t a1, unint64_t a2)
{
  v45 = *MEMORY[0x277D85DE8];
  v39[0] = a1;
  v39[1] = a2;
  *&v42 = a1;
  *(&v42 + 1) = a2;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FA280, &qword_213F5B590);
  if (swift_dynamicCast())
  {
    sub_213DD7500(__src, &v43);
    __swift_project_boxed_opaque_existential_0(&v43, v44);
    sub_213F4C990();
    __src[0] = v42;
    __swift_destroy_boxed_opaque_existential_1(&v43);
    goto LABEL_63;
  }

  v41 = 0;
  memset(__src, 0, sizeof(__src));
  sub_213DE36FC(__src, &qword_27C8FA288, &unk_213F5B598);
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
    v4 = sub_213F4F750();
  }

  sub_213E70AB8(&v43, v4, v5);
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
  *&__src[0] = sub_213E71590(v8);
  *(&__src[0] + 1) = v9;
  MEMORY[0x28223BE20](*&__src[0]);
  v34[2] = v39;
  sub_213E70B80(sub_213E71630, v34);
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
        sub_213F4CAC0();
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
      v28 = sub_213F38BD0(v16, v14, v15);
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
      v8 = sub_213F4F320();
      v7 = 0;
      v6 = 0xF000000000000000;
      goto LABEL_12;
    }

    if ((v15 & 0x1000000000000000) != 0)
    {
      v31 = sub_213F4F350();
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
        v30 = sub_213F4F750();
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

    v16 = sub_213F38BD0(v16, v14, v15);
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

    v16 = sub_213F4F330();
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
      sub_213F4CAD0();
      LOBYTE(v24) = 0;
    }
  }

  while (4 * v23 != v16 >> 14);
  v6 = v35;
  if (v24)
  {
    *&v43 = v42;
    *(&v43 + 6) = *(&v42 + 6);
    sub_213F4CAD0();
    sub_213E71698(v36, v6);
    goto LABEL_62;
  }

LABEL_57:

  sub_213E71698(v36, v6);
LABEL_63:
  v32 = __src[0];
  sub_213E712B8(*&__src[0], *(&__src[0] + 1));

  sub_213E7130C(v32, *(&v32 + 1));
  return v32;
}

uint64_t PhotoFanView.body.getter@<X0>(uint64_t *a2@<X8>)
{
  *a2 = sub_213F4EEE0();
  a2[1] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FA1A0, &qword_213F5B2D8);
  return sub_213E6E730(v2, a2 + *(v5 + 44));
}

uint64_t sub_213E6E730@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v243 = a1;
  v242 = a2;
  v231 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FA1B8, &qword_213F5B438) - 8;
  MEMORY[0x28223BE20](v231);
  v230 = &v202 - v3;
  v234 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FA1C0, &qword_213F5B440) - 8;
  MEMORY[0x28223BE20](v234);
  v232 = &v202 - v4;
  v235 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FA1C8, &qword_213F5B448) - 8;
  MEMORY[0x28223BE20](v235);
  v233 = &v202 - v5;
  v239 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FA1D0, &qword_213F5B450) - 8;
  MEMORY[0x28223BE20](v239);
  v236 = &v202 - v6;
  v240 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FA1D8, &qword_213F5B458) - 8;
  v7 = MEMORY[0x28223BE20](v240);
  v241 = &v202 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v237 = &v202 - v10;
  MEMORY[0x28223BE20](v9);
  v238 = &v202 - v11;
  v247 = sub_213F4D470() - 8;
  v12 = MEMORY[0x28223BE20](v247);
  v228 = &v202 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v211 = &v202 - v14;
  v15 = type metadata accessor for MapsDesignImage(0);
  v16 = (v15 - 8);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v202 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = &v202 - v20;
  v244 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7BE8, &unk_213F52220) - 8;
  v22 = MEMORY[0x28223BE20](v244);
  v226 = &v202 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v25 = &v202 - v24;
  v245 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8AB8, &unk_213F55BD0) - 8;
  v26 = MEMORY[0x28223BE20](v245);
  v227 = &v202 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v204 = &v202 - v28;
  v206 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FA1E0, &qword_213F5B460) - 8;
  MEMORY[0x28223BE20](v206);
  v205 = &v202 - v29;
  v216 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FA1E8, &qword_213F5B468) - 8;
  MEMORY[0x28223BE20](v216);
  v213 = &v202 - v30;
  v218 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FA1F0, &qword_213F5B470) - 8;
  MEMORY[0x28223BE20](v218);
  v214 = &v202 - v31;
  v222 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FA1F8, &qword_213F5B478) - 8;
  MEMORY[0x28223BE20](v222);
  v220 = &v202 - v32;
  *&v224 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FA200, &qword_213F5B480) - 8;
  MEMORY[0x28223BE20](v224);
  v223 = &v202 - v33;
  v225 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FA208, &qword_213F5B488) - 8;
  v34 = MEMORY[0x28223BE20](v225);
  v229 = &v202 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = MEMORY[0x28223BE20](v34);
  v221 = &v202 - v37;
  MEMORY[0x28223BE20](v36);
  v246 = &v202 - v38;
  v39 = a1 + *(type metadata accessor for PhotoFanView(0) + 20);
  sub_213DEBAA8(v39 + 24, &v21[v16[10]]);
  v40 = sub_213F4EEE0();
  v42 = v41;
  *v21 = swift_getKeyPath();
  v21[8] = 0;
  v43 = v16[7];
  *&v21[v43] = swift_getKeyPath();
  v219 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7B68, &qword_213F53770);
  swift_storeEnumTagMultiPayload();
  v44 = v16[8];
  *&v21[v44] = swift_getKeyPath();
  v217 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7A20, &qword_213F526E0);
  swift_storeEnumTagMultiPayload();
  v45 = v16[9];
  *&v21[v45] = swift_getKeyPath();
  v215 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7AC0, &qword_213F52760);
  swift_storeEnumTagMultiPayload();
  v46 = &v21[v16[14]];
  v47 = &v21[v16[15]];
  v48 = &v21[v16[16]];
  v251 = 0uLL;
  *(&v252 + 7) = 0;
  *&v252 = 0;
  sub_213F4EA90();
  v49 = v255;
  v50 = BYTE8(v255);
  v51 = BYTE9(v255);
  v52 = BYTE10(v255);
  v53 = v256;
  *v48 = v254;
  *(v48 + 2) = v49;
  v48[24] = v50;
  v48[25] = v51;
  v48[26] = v52;
  *(v48 + 4) = v53;
  v54 = v16[17];
  *&v251 = 0;
  v212 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7C28, &unk_213F522B0);
  sub_213F4EA90();
  *&v21[v54] = v254;
  v21[v16[11]] = 1;
  v55 = &v21[v16[12]];
  *v55 = v40;
  v55[1] = v42;
  v21[v16[13]] = 1;
  *v46 = 0;
  *(v46 + 1) = 0;
  *v47 = 0;
  *(v47 + 1) = 0;
  v57 = *v39;
  v56 = *(v39 + 8);
  sub_213E6DDB8(*v39, v56);
  sub_213E6DDB8(v57, v56);
  v203 = v39;
  sub_213F4EEE0();
  sub_213F4D0C0();
  sub_213DEEFF0(v21, v25);
  v58 = &v25[*(v244 + 44)];
  v59 = v25;
  v60 = v252;
  *v58 = v251;
  *(v58 + 1) = v60;
  *(v58 + 2) = v253;
  sub_213DEBB74(v21);
  sub_213E6DDB8(v57, v56);
  v61 = &unk_213F5B5C8;
  if (v62 > 0.5)
  {
    v61 = &unk_213F5B5A8;
  }

  v63 = v61[*(v39 + 16)];
  v64 = *(v247 + 28);
  v209 = *MEMORY[0x277CE0118];
  v65 = v209;
  v208 = sub_213F4D950();
  v66 = *(v208 - 8);
  v207 = *(v66 + 104);
  v210 = v66 + 104;
  v67 = v211;
  v207(&v211[v64], v65, v208);
  *v67 = v63;
  v67[1] = v63;
  v68 = v204;
  v69 = &v204[*(v245 + 44)];
  sub_213DEEF8C(v67, v69);
  v211 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8368, &unk_213F55BC0);
  *(v69 + *(v211 + 9)) = 256;
  sub_213DE2B44(v59, v68, &qword_27C8F7BE8, &unk_213F52220);
  v70 = sub_213F4EEE0();
  v72 = v71;
  v73 = v205;
  v74 = &v205[*(v206 + 44)];
  *v74 = sub_213F4EEE0();
  v74[1] = v75;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FA210, &qword_213F5B530);
  sub_213E6FB7C(v243, v74 + *(v76 + 44));
  v77 = (v74 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FA218, &qword_213F5B538) + 36));
  *v77 = v70;
  v77[1] = v72;
  sub_213DE2B44(v68, v73, &qword_27C8F8AB8, &unk_213F55BD0);
  sub_213E6DDB8(v57, v56);
  v79 = v78;
  sub_213E6DDB8(v57, v56);
  v81 = 10.0;
  if (v79 > 0.5)
  {
    v81 = 4.0;
  }

  v82 = -18.0;
  if (v79 > 0.5)
  {
    v82 = -6.0;
  }

  v83 = (v82 - v80 * v81) * 0.0174532925;
  sub_213F4F040();
  v85 = v84;
  v87 = v86;
  v88 = v213;
  sub_213DE2B44(v73, v213, &qword_27C8FA1E0, &qword_213F5B460);
  v89 = v88 + *(v216 + 44);
  *v89 = v83;
  *(v89 + 8) = v85;
  *(v89 + 16) = v87;
  v90 = sub_213F4E080();
  v91 = v203;
  sub_213F4CDA0();
  v93 = v92;
  v95 = v94;
  v97 = v96;
  v99 = v98;
  v100 = v88;
  v101 = v214;
  sub_213DE2B44(v100, v214, &qword_27C8FA1E8, &qword_213F5B468);
  v102 = v101 + *(v218 + 44);
  *v102 = v90;
  *(v102 + 8) = v93;
  *(v102 + 16) = v95;
  *(v102 + 24) = v97;
  *(v102 + 32) = v99;
  *(v102 + 40) = 0;
  v103 = sub_213F4E060();
  sub_213E6DDB8(v57, v56);
  sub_213F4CDA0();
  v105 = v104;
  v107 = v106;
  v109 = v108;
  v111 = v110;
  v112 = v220;
  sub_213DE2B44(v101, v220, &qword_27C8FA1F0, &qword_213F5B470);
  v113 = v112 + *(v222 + 44);
  *v113 = v103;
  *(v113 + 8) = v105;
  *(v113 + 16) = v107;
  *(v113 + 24) = v109;
  *(v113 + 32) = v111;
  *(v113 + 40) = 0;
  sub_213F4E8C0();
  v114 = sub_213F4E900();

  v115 = v223;
  sub_213DE2B44(v112, v223, &qword_27C8FA1F8, &qword_213F5B478);
  v116 = v115 + *(v224 + 44);
  *v116 = v114;
  v224 = xmmword_213F5B280;
  *(v116 + 8) = xmmword_213F5B280;
  *(v116 + 24) = 0x4008000000000000;
  sub_213E6DDB8(v57, v56);
  if (v117 <= 0.5)
  {
    v118 = -1.0;
  }

  else
  {
    v118 = 1.0;
  }

  v119 = v115;
  v120 = v221;
  sub_213DE2B44(v119, v221, &qword_27C8FA200, &qword_213F5B480);
  *(v120 + *(v225 + 44)) = v118;
  sub_213DE2B44(v120, v246, &qword_27C8FA208, &qword_213F5B488);
  sub_213DEBAA8(v91 + 64, &v19[v16[10]]);
  v121 = sub_213F4EEE0();
  v123 = v122;
  *v19 = swift_getKeyPath();
  v19[8] = 0;
  v124 = v16[7];
  *&v19[v124] = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  v125 = v16[8];
  *&v19[v125] = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  v126 = v16[9];
  *&v19[v126] = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  v127 = &v19[v16[14]];
  v128 = &v19[v16[15]];
  v129 = &v19[v16[16]];
  memset(v250, 0, sizeof(v250));
  v249 = 0;
  v248 = 0;
  sub_213F4EA90();
  v130 = v255;
  v132 = BYTE9(v255);
  v131 = BYTE8(v255);
  v133 = BYTE10(v255);
  v134 = v256;
  *v129 = v254;
  *(v129 + 2) = v130;
  *(v129 + 12) = __PAIR16__(v132, v131);
  v129[26] = v133;
  *(v129 + 4) = v134;
  v135 = v16[17];
  v248 = 0;
  sub_213F4EA90();
  *&v19[v135] = v254;
  v19[v16[11]] = 1;
  v136 = &v19[v16[12]];
  *v136 = v121;
  v136[1] = v123;
  v19[v16[13]] = 1;
  *v127 = 0;
  *(v127 + 1) = 0;
  *v128 = 0;
  *(v128 + 1) = 0;
  sub_213E6DDB8(v57, v56);
  sub_213E6DDB8(v57, v56);
  sub_213F4EEE0();
  sub_213F4D0C0();
  v137 = v226;
  sub_213DEEFF0(v19, v226);
  v138 = (v137 + *(v244 + 44));
  v139 = v255;
  *v138 = v254;
  v138[1] = v139;
  v138[2] = v256;
  sub_213DEBB74(v19);
  sub_213E6DDB8(v57, v56);
  v140 = &unk_213F5B6C8;
  if (v141 > 0.5)
  {
    v140 = &unk_213F5B6A8;
  }

  v142 = v140[*(v91 + 16)];
  v143 = v228;
  v207(&v228[*(v247 + 28)], v209, v208);
  *v143 = v142;
  v143[1] = v142;
  v144 = v143;
  v145 = v227;
  v146 = &v227[*(v245 + 44)];
  sub_213DEEF8C(v144, v146);
  v147 = (v146 + *(v211 + 9));
  *v147 = 0;
  v147[1] = 1;
  v148 = v145;
  sub_213DE2B44(v137, v145, &qword_27C8F7BE8, &unk_213F52220);
  v149 = sub_213F4EEE0();
  v151 = v150;
  v152 = v230;
  v153 = &v230[*(v231 + 44)];
  *v153 = sub_213F4EEE0();
  v153[1] = v154;
  v155 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FA220, &qword_213F5B540);
  sub_213E701C8(v243, v153 + *(v155 + 44));
  v156 = (v153 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FA228, &qword_213F5B548) + 36));
  *v156 = v149;
  v156[1] = v151;
  sub_213DE2B44(v148, v152, &qword_27C8F8AB8, &unk_213F55BD0);
  sub_213E6DDB8(v57, v56);
  v158 = v157;
  sub_213E6DDB8(v57, v56);
  v160 = v159 * 4.0 + 6.0;
  v161 = v159 * -5.0 + 18.0;
  if (v158 <= 0.5)
  {
    v161 = v160;
  }

  v162 = v161 * 0.0174532925;
  sub_213F4F040();
  v164 = v163;
  v166 = v165;
  v167 = v232;
  sub_213DE2B44(v152, v232, &qword_27C8FA1B8, &qword_213F5B438);
  v168 = v167 + *(v234 + 44);
  *v168 = v162;
  *(v168 + 8) = v164;
  *(v168 + 16) = v166;
  v169 = sub_213F4E080();
  sub_213F4CDA0();
  v171 = v170;
  v173 = v172;
  v175 = v174;
  v177 = v176;
  v178 = v167;
  v179 = v233;
  sub_213DE2B44(v178, v233, &qword_27C8FA1C0, &qword_213F5B440);
  v180 = v179 + *(v235 + 44);
  *v180 = v169;
  *(v180 + 8) = v171;
  *(v180 + 16) = v173;
  *(v180 + 24) = v175;
  *(v180 + 32) = v177;
  *(v180 + 40) = 0;
  v181 = sub_213F4E060();
  sub_213E6DDB8(v57, v56);
  sub_213F4CDA0();
  v183 = v182;
  v185 = v184;
  v187 = v186;
  v189 = v188;
  v190 = v236;
  sub_213DE2B44(v179, v236, &qword_27C8FA1C8, &qword_213F5B448);
  v191 = v190 + *(v239 + 44);
  *v191 = v181;
  *(v191 + 8) = v183;
  *(v191 + 16) = v185;
  *(v191 + 24) = v187;
  *(v191 + 32) = v189;
  *(v191 + 40) = 0;
  sub_213F4E8C0();
  v192 = sub_213F4E900();

  v193 = v237;
  sub_213DE2B44(v190, v237, &qword_27C8FA1D0, &qword_213F5B450);
  v194 = v193 + *(v240 + 44);
  *v194 = v192;
  *(v194 + 8) = v224;
  *(v194 + 24) = 0x4008000000000000;
  v195 = v238;
  sub_213DE2B44(v193, v238, &qword_27C8FA1D8, &qword_213F5B458);
  v196 = v246;
  v197 = v229;
  sub_213DE3164(v246, v229, &qword_27C8FA208, &qword_213F5B488);
  v198 = v241;
  sub_213DE3164(v195, v241, &qword_27C8FA1D8, &qword_213F5B458);
  v199 = v242;
  sub_213DE3164(v197, v242, &qword_27C8FA208, &qword_213F5B488);
  v200 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FA230, &qword_213F5B550);
  sub_213DE3164(v198, v199 + *(v200 + 48), &qword_27C8FA1D8, &qword_213F5B458);
  sub_213DE36FC(v195, &qword_27C8FA1D8, &qword_213F5B458);
  sub_213DE36FC(v196, &qword_27C8FA208, &qword_213F5B488);
  sub_213DE36FC(v198, &qword_27C8FA1D8, &qword_213F5B458);
  return sub_213DE36FC(v197, &qword_27C8FA208, &qword_213F5B488);
}