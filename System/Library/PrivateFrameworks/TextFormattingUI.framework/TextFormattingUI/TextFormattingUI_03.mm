uint64_t sub_26D372C30@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v71 = a2;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FC240, &qword_26D3A5D30);
  v59 = *(v60 - 8);
  MEMORY[0x28223BE20](v60);
  v4 = &v57 - v3;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FC230, &qword_26D3A5D28);
  MEMORY[0x28223BE20](v58);
  v6 = &v57 - v5;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FC210, &qword_26D3A5D18);
  MEMORY[0x28223BE20](v61);
  v8 = &v57 - v7;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FC200, &qword_26D3A5D10);
  MEMORY[0x28223BE20](v62);
  v63 = &v57 - v9;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FC1E8, &qword_26D3A5D08);
  MEMORY[0x28223BE20](v67);
  v66 = &v57 - v10;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FC248, &qword_26D3A5D38);
  v69 = *(v70 - 8);
  MEMORY[0x28223BE20](v70);
  v65 = &v57 - v11;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FC1E0, &qword_26D3A5D00);
  MEMORY[0x28223BE20](v64);
  v68 = &v57 - v12;
  v13 = *a1;
  type metadata accessor for TextFormattingState(0);
  sub_26D37E044(&qword_2804FADC0, type metadata accessor for TextFormattingState, &unk_26D3A3700);
  sub_26D3A02A8();
  swift_getKeyPath();
  sub_26D3A02C8();

  sub_26D39FFF8();
  if (qword_2804FAD48 != -1)
  {
    swift_once();
  }

  if (byte_2804FFF99 == 1)
  {
    v14 = 1.0;
  }

  else
  {
    v15 = sub_26D33CD0C(a1[4], *(a1 + 40));
    if (!v13)
    {
      result = sub_26D3A02B8();
      __break(1u);
      return result;
    }

    v16 = v15;

    v17 = sub_26D3A0F68();
    sub_26D39CBFC(v17, v13, v16);
    v19 = v18;

    v14 = floor(v19 / *(a1 + 8) + v19 / *(a1 + 8)) * 0.5;
  }

  sub_26D3A0F08();
  v21 = v20;
  v23 = v22;
  (*(v59 + 32))(v6, v4, v60);
  v24 = &v6[*(v58 + 36)];
  *v24 = v14;
  *(v24 + 1) = v14;
  *(v24 + 2) = v21;
  *(v24 + 3) = v23;
  v74 = a1[2];
  v75 = *(a1 + 12);
  v25 = a1[4];
  v26 = *(a1 + 40);
  v27 = a1[6];
  v28 = *(a1 + 56);
  v29 = swift_allocObject();
  v30 = *(a1 + 3);
  *(v29 + 48) = *(a1 + 2);
  *(v29 + 64) = v30;
  *(v29 + 80) = a1[8];
  v31 = *(a1 + 1);
  *(v29 + 16) = *a1;
  *(v29 + 32) = v31;
  v32 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FC220, &qword_26D3A5D20) + 36);
  v33 = *MEMORY[0x277CDF968];
  v34 = sub_26D3A01D8();
  (*(*(v34 - 8) + 104))(&v8[v32], v33, v34);
  sub_26D347238(v6, v8, &qword_2804FC230, &qword_26D3A5D28);
  v35 = swift_allocObject();
  *(v35 + 16) = sub_26D38265C;
  *(v35 + 24) = v29;
  v36 = &v8[*(v61 + 36)];
  *v36 = sub_26D3834BC;
  v36[1] = v35;

  sub_26D34856C(&v74, v73, &qword_2804FB888, &qword_26D3A4FD8);
  sub_26D381CA8(v25, v26);
  sub_26D381CA8(v27, v28);
  v37 = sub_26D33CD0C(v25, v26);
  sub_26D39C90C(v37, v38);
  v39 = sub_26D33CD0C(v25, v26);
  sub_26D39D4C4(v39, v40);
  sub_26D3A0EA8();
  sub_26D3A00C8();
  v41 = v63;
  sub_26D347238(v8, v63, &qword_2804FC210, &qword_26D3A5D18);
  v42 = (v41 + *(v62 + 36));
  v43 = v72[1];
  *v42 = v72[0];
  v42[1] = v43;
  v42[2] = v72[2];
  sub_26D3A0EA8();
  sub_26D3A0268();
  v44 = v66;
  sub_26D347238(v41, v66, &qword_2804FC200, &qword_26D3A5D10);
  v45 = (v44 + *(v67 + 36));
  v46 = v73[5];
  v45[4] = v73[4];
  v45[5] = v46;
  v45[6] = v73[6];
  v47 = v73[1];
  *v45 = v73[0];
  v45[1] = v47;
  v48 = v73[3];
  v45[2] = v73[2];
  v45[3] = v48;
  sub_26D382238();
  v49 = v65;
  sub_26D3A0A68();
  sub_26D3481A4(v44, &qword_2804FC1E8, &qword_26D3A5D08);
  KeyPath = swift_getKeyPath();
  v51 = swift_allocObject();
  *(v51 + 16) = 1;
  v52 = v68;
  (*(v69 + 32))(v68, v49, v70);
  v53 = (v52 + *(v64 + 36));
  *v53 = KeyPath;
  v53[1] = sub_26D3834C0;
  v53[2] = v51;
  if (sub_26D33D0B8(v27, v28))
  {
    v54 = 1.0;
  }

  else
  {
    v54 = 0.7;
  }

  v55 = v71;
  sub_26D347238(v52, v71, &qword_2804FC1E0, &qword_26D3A5D00);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FC1C8, &qword_26D3A5CF8);
  *(v55 + *(result + 36)) = v54;
  return result;
}

uint64_t sub_26D373510@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v48 = a2;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FC240, &qword_26D3A5D30);
  v40 = *(v44 - 8);
  MEMORY[0x28223BE20](v44);
  v4 = &v36 - v3;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FC250, &qword_26D3A5D68);
  MEMORY[0x28223BE20](v43);
  v6 = &v36 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FC258, &qword_26D3A5D70);
  v45 = *(v7 - 8);
  v46 = v7;
  MEMORY[0x28223BE20](v7);
  v41 = &v36 - v8;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FC260, &qword_26D3A5D78);
  MEMORY[0x28223BE20](v39);
  v37 = &v36 - v9;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FC268, &qword_26D3A5D80);
  v10 = MEMORY[0x28223BE20](v42);
  v47 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v36 - v13;
  MEMORY[0x28223BE20](v12);
  v38 = &v36 - v15;
  v16 = *a1;
  type metadata accessor for TextFormattingState(0);
  sub_26D37E044(&qword_2804FADC0, type metadata accessor for TextFormattingState, &unk_26D3A3700);
  sub_26D3A02A8();
  swift_getKeyPath();
  sub_26D3A02C8();

  sub_26D39FFF8();
  v17 = sub_26D33CD0C(a1[4], *(a1 + 40));
  if (v16)
  {
    v18 = v17;

    v19 = sub_26D3A0F68();
    sub_26D39CBFC(v19, v16, v18);

    sub_26D3A0EA8();
    sub_26D3A00C8();
    (*(v40 + 32))(v6, v4, v44);
    v20 = &v6[*(v43 + 36)];
    v21 = v50;
    *v20 = v49;
    *(v20 + 1) = v21;
    *(v20 + 2) = v51;
    sub_26D3824E4(&qword_2804FC270, &qword_2804FC250, &qword_26D3A5D68);
    v22 = v41;
    sub_26D3A0A68();
    sub_26D3481A4(v6, &qword_2804FC250, &qword_26D3A5D68);
    KeyPath = swift_getKeyPath();
    v24 = swift_allocObject();
    *(v24 + 16) = 1;
    v25 = v37;
    (*(v45 + 32))(v37, v22, v46);
    v26 = (v25 + *(v39 + 36));
    *v26 = KeyPath;
    v26[1] = sub_26D3834C0;
    v26[2] = v24;
    if (sub_26D33D0B8(a1[6], *(a1 + 56)))
    {
      v27 = 1.0;
    }

    else
    {
      v27 = 0.7;
    }

    sub_26D347238(v25, v14, &qword_2804FC260, &qword_26D3A5D78);
    *&v14[*(v42 + 36)] = v27;
    v28 = v38;
    sub_26D347238(v14, v38, &qword_2804FC268, &qword_26D3A5D80);
    if (qword_2804FACB8 != -1)
    {
      swift_once();
    }

    v30 = qword_2804FFEA0;
    v29 = *algn_2804FFEA8;
    v31 = swift_getKeyPath();
    v32 = v47;
    sub_26D34856C(v28, v47, &qword_2804FC268, &qword_26D3A5D80);
    v33 = v48;
    sub_26D34856C(v32, v48, &qword_2804FC268, &qword_26D3A5D80);
    v34 = v33 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FC278, &qword_26D3A5D88) + 48);
    *v34 = v30;
    *(v34 + 8) = v29;
    *(v34 + 16) = 0;
    *(v34 + 24) = v31;
    *(v34 + 32) = 0;
    swift_bridgeObjectRetain_n();
    sub_26D381CA8(v31, 0);
    sub_26D3481A4(v28, &qword_2804FC268, &qword_26D3A5D80);

    sub_26D34684C(v31, 0);
    return sub_26D3481A4(v32, &qword_2804FC268, &qword_26D3A5D80);
  }

  else
  {
    result = sub_26D3A02B8();
    __break(1u);
  }

  return result;
}

uint64_t sub_26D373B7C(void *a1)
{
  if (*a1)
  {
    v1 = *(*a1 + OBJC_IVAR____TtC16TextFormattingUI19TextFormattingState_pickColor);

    v1(v2);
  }

  else
  {
    type metadata accessor for TextFormattingState(0);
    sub_26D37E044(&qword_2804FADC0, type metadata accessor for TextFormattingState, &unk_26D3A3700);
    result = sub_26D3A02B8();
    __break(1u);
  }

  return result;
}

void *sub_26D373C34(void *result, double a2, double a3, double a4, double a5)
{
  if (*result)
  {
    v5 = (*result + OBJC_IVAR____TtC16TextFormattingUI19TextFormattingState_colorPickerRect);
    *v5 = a2;
    v5[1] = a3;
    v5[2] = a4;
    v5[3] = a5;
  }

  else
  {
    type metadata accessor for TextFormattingState(0);
    sub_26D37E044(&qword_2804FADC0, type metadata accessor for TextFormattingState, &unk_26D3A3700);
    result = sub_26D3A02B8();
    __break(1u);
  }

  return result;
}

uint64_t sub_26D373CC4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FC128, &qword_26D3A5C98);
  MEMORY[0x28223BE20](v2 - 8);
  sub_26D34856C(a1, &v5 - v3, &qword_2804FC128, &qword_26D3A5C98);
  return sub_26D3A03E8();
}

void *sub_26D373DB0@<X0>(void (*a1)(void, void, uint64_t, uint64_t, uint64_t)@<X0>, uint64_t a2@<X1>, void (*a3)(void, void, uint64_t, uint64_t, uint64_t)@<X2>, __int16 a4@<W3>, uint64_t a5@<X4>, char *a6@<X5>, void (*a7)(void, void, uint64_t, uint64_t, uint64_t)@<X6>, void (*a8)(void, void, uint64_t, uint64_t, void)@<X7>, uint64_t a9@<X8>)
{
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FC028, &qword_26D3A5BA0);
  v17 = v16[12];
  v18 = sub_26D3A0078();
  (*(*(v18 - 8) + 56))(a9 + v17, 1, 1, v18);
  *a9 = 0;
  *(a9 + 8) = 1;
  *(a9 + 9) = 257;
  *(a9 + 11) = 0;
  sub_26D373F34(a1, a2, a3, a4 & 0x1FF, a5, a6, a7, a8, (a9 + v16[13]));
  v19 = a9 + v16[14];
  *v19 = swift_getKeyPath();
  *(v19 + 8) = 0;
  v20 = a9 + v16[15];
  *v20 = swift_getKeyPath();
  *(v20 + 8) = 0;
  v21 = a9 + v16[16];
  *v21 = swift_getKeyPath();
  *(v21 + 8) = 0;
  v22 = a9 + v16[17];
  result = sub_26D3A0D48();
  *v22 = v26;
  *(v22 + 8) = v27;
  return result;
}

uint64_t sub_26D373F34@<X0>(void (*a1)(void, void, uint64_t, uint64_t, uint64_t)@<X0>, uint64_t a2@<X1>, void (*a3)(void, void, uint64_t, uint64_t, uint64_t)@<X2>, __int16 a4@<W3>, uint64_t a5@<X4>, char *a6@<X5>, void (*a7)(void, void, uint64_t, uint64_t, uint64_t)@<X6>, void (*a8)(void, void, uint64_t, uint64_t, void)@<X7>, void *a9@<X8>)
{
  v51 = a7;
  v52 = a8;
  v53 = a5;
  v54 = a6;
  v57 = a1;
  v58 = a2;
  v63 = a9;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FC030, &qword_26D3A5BA8);
  MEMORY[0x28223BE20](v62);
  v12 = &v51 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FB820, &qword_26D3A4F60);
  v14 = MEMORY[0x28223BE20](v13 - 8);
  v16 = &v51 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v51 - v18;
  v20 = MEMORY[0x28223BE20](v17);
  v56 = &v51 - v21;
  MEMORY[0x28223BE20](v20);
  v55 = &v51 - v22;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FC038, &qword_26D3A5BB0);
  MEMORY[0x28223BE20](v59);
  v24 = &v51 - v23;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FC040, &qword_26D3A5BB8);
  v25 = *(v60 - 8);
  MEMORY[0x28223BE20](v60);
  v27 = &v51 - v26;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FC048, &qword_26D3A5BC0);
  v28 = *(v61 - 8);
  MEMORY[0x28223BE20](v61);
  v30 = &v51 - v29;
  v31 = sub_26D33CED8(a3, a4 & 0x1FF);
  if ((v32 & 1) != 0 || v31 != 1)
  {
    v41 = a4;
    v42 = a4 & 0x100;
    v43 = a4 & 0x1FF;
    v44 = v55;
    v54 = v24;
    v46 = v57;
    v45 = v58;
    v51(0, v57, v58, a3, v43);
    v47 = v56;
    v52(0, v46, v45, a3, v42 | v41);
    sub_26D34856C(v44, v19, &qword_2804FB820, &qword_26D3A4F60);
    sub_26D34856C(v47, v16, &qword_2804FB820, &qword_26D3A4F60);
    sub_26D34856C(v19, v12, &qword_2804FB820, &qword_26D3A4F60);
    v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FC050, &qword_26D3A5BC8);
    sub_26D34856C(v16, &v12[*(v48 + 48)], &qword_2804FB820, &qword_26D3A4F60);
    sub_26D3481A4(v16, &qword_2804FB820, &qword_26D3A4F60);
    sub_26D3481A4(v19, &qword_2804FB820, &qword_26D3A4F60);
    sub_26D34856C(v12, v54, &qword_2804FC030, &qword_26D3A5BA8);
    swift_storeEnumTagMultiPayload();
    v49 = sub_26D3484AC(&qword_2804FC058, &qword_2804FC040, &qword_26D3A5BB8, MEMORY[0x277CDE5B0]);
    v50 = sub_26D37E178();
    v65 = v60;
    v66 = &type metadata for TFMenuStyle;
    v67 = v49;
    v68 = v50;
    swift_getOpaqueTypeConformance2();
    sub_26D3484AC(&qword_2804FC060, &qword_2804FC030, &qword_26D3A5BA8, MEMORY[0x277CE14C0]);
    sub_26D3A0718();
    sub_26D3481A4(v12, &qword_2804FC030, &qword_26D3A5BA8);
    sub_26D3481A4(v47, &qword_2804FB820, &qword_26D3A4F60);
    return sub_26D3481A4(v44, &qword_2804FB820, &qword_26D3A4F60);
  }

  else
  {
    v56 = &v51;
    MEMORY[0x28223BE20](1);
    v33 = v58;
    *(&v51 - 4) = v57;
    *(&v51 - 3) = v33;
    *(&v51 - 2) = a3;
    *(&v51 - 8) = a4;
    *(&v51 - 7) = HIBYTE(a4) & 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FBB70, &qword_26D3A53F8);
    sub_26D3484AC(&qword_2804FBB80, &qword_2804FBB70, &qword_26D3A53F8, &unk_26D3A6418);
    v58 = sub_26D3484AC(&qword_2804FC060, &qword_2804FC030, &qword_26D3A5BA8, MEMORY[0x277CE14C0]);
    sub_26D3A0958();
    v64 = 0;
    sub_26D3A0D48();
    v34 = v65;
    v35 = v66;
    LOBYTE(v65) = 0;
    LOBYTE(v66) = v34;
    v67 = v35;
    v36 = sub_26D3484AC(&qword_2804FC058, &qword_2804FC040, &qword_26D3A5BB8, MEMORY[0x277CDE5B0]);
    v37 = sub_26D37E178();
    v38 = v60;
    sub_26D3A0C08();

    (*(v25 + 8))(v27, v38);
    v39 = v61;
    (*(v28 + 16))(v24, v30, v61);
    swift_storeEnumTagMultiPayload();
    v65 = v38;
    v66 = &type metadata for TFMenuStyle;
    v67 = v36;
    v68 = v37;
    swift_getOpaqueTypeConformance2();
    sub_26D3A0718();
    return (*(v28 + 8))(v30, v39);
  }
}

uint64_t sub_26D374658@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, __int16 a4@<W3>, void (*a5)(uint64_t, uint64_t, uint64_t, uint64_t, void)@<X4>, void (*a6)(uint64_t, uint64_t, uint64_t, uint64_t, void)@<X5>, uint64_t a7@<X8>)
{
  v26 = a5;
  v27 = a6;
  v28 = a7;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FB820, &qword_26D3A4F60);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v26 - v16;
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v26 - v19;
  MEMORY[0x28223BE20](v18);
  v22 = &v26 - v21;
  v26(1, a1, a2, a3, a4 & 0x1FF);
  v27(1, a1, a2, a3, a4 & 0x1FF);
  sub_26D34856C(v22, v17, &qword_2804FB820, &qword_26D3A4F60);
  sub_26D34856C(v20, v14, &qword_2804FB820, &qword_26D3A4F60);
  v23 = v28;
  sub_26D34856C(v17, v28, &qword_2804FB820, &qword_26D3A4F60);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FC050, &qword_26D3A5BC8);
  sub_26D34856C(v14, v23 + *(v24 + 48), &qword_2804FB820, &qword_26D3A4F60);
  sub_26D3481A4(v20, &qword_2804FB820, &qword_26D3A4F60);
  sub_26D3481A4(v22, &qword_2804FB820, &qword_26D3A4F60);
  sub_26D3481A4(v14, &qword_2804FB820, &qword_26D3A4F60);
  return sub_26D3481A4(v17, &qword_2804FB820, &qword_26D3A4F60);
}

uint64_t sub_26D374860@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v46 = a3;
  v47 = a4;
  v45 = a2;
  v56 = a6;
  v53 = sub_26D3A0608();
  v55 = *(v53 - 8);
  MEMORY[0x28223BE20](v53);
  v44 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FB820, &qword_26D3A4F60);
  v9 = MEMORY[0x28223BE20](v51);
  v49 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v50 = &v43 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v52 = &v43 - v14;
  MEMORY[0x28223BE20](v13);
  v54 = &v43 - v15;
  v16 = type metadata accessor for TFToggle(0);
  MEMORY[0x28223BE20](v16);
  v57 = (&v43 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = 0;
  v19 = 0;
  v48 = a1;
  if (a1)
  {
    if (qword_2804FACB0 != -1)
    {
      swift_once();
    }

    v18 = qword_2804FFE90;
    v19 = *algn_2804FFE98;
  }

  v43 = 0x800000026D3A8200;
  sub_26D3A10C8();
  v20 = sub_26D3A10B8();
  v21 = swift_allocObject();
  v22 = MEMORY[0x277D85700];
  *(v21 + 16) = v20;
  *(v21 + 24) = v22;
  v23 = v45;

  v24 = v47;
  sub_26D37DF24(v47, a5, BYTE1(a5) & 1);
  v25 = sub_26D3A10B8();
  v26 = swift_allocObject();
  *(v26 + 16) = v25;
  *(v26 + 24) = v22;
  v27 = v46;
  *(v26 + 32) = v23;
  *(v26 + 40) = v27;
  *(v26 + 48) = v24;
  *(v26 + 56) = a5;
  *(v26 + 57) = BYTE1(a5) & 1;
  sub_26D3A0E28();
  v28 = v58;
  v29 = v59;
  LOBYTE(v22) = v60;
  v30 = v57;
  sub_26D3A0638();
  *v30 = 0xD000000000000013;
  v30[1] = v43;
  v31 = (v30 + v16[6]);
  *v31 = v18;
  v31[1] = v19;
  *(v30 + v16[7]) = v48 & 1;
  v32 = v30 + v16[8];
  *v32 = v28;
  *(v32 + 1) = v29;
  v32[16] = v22;
  v33 = v30 + v16[9];
  *v33 = swift_getKeyPath();
  v33[8] = 0;
  if (qword_2804FACB0 != -1)
  {
    swift_once();
  }

  v58 = qword_2804FFE90;
  v59 = *algn_2804FFE98;
  sub_26D37E044(&qword_2804FB868, type metadata accessor for TFToggle, &unk_26D3A64A0);
  sub_26D37E6A4();
  v34 = v49;
  sub_26D3A0AF8();
  v35 = v44;
  sub_26D3A05F8();
  v36 = v50;
  sub_26D3A0238();
  v37 = *(v55 + 8);
  v38 = v53;
  v37(v35, v53);
  sub_26D3481A4(v34, &qword_2804FB820, &qword_26D3A4F60);
  sub_26D3A05E8();
  v39 = v52;
  sub_26D3A0228();
  v37(v35, v38);
  sub_26D3481A4(v36, &qword_2804FB820, &qword_26D3A4F60);
  v58 = MEMORY[0x277D84F90];
  v55 = sub_26D37E044(&unk_2804FC890, MEMORY[0x277CE01F0], MEMORY[0x277CE0200]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FB918, &qword_26D3A66F0);
  sub_26D3484AC(&qword_2804FC8A0, &qword_2804FB918, &qword_26D3A66F0, MEMORY[0x277D83970]);
  sub_26D3A1388();
  v40 = v54;
  sub_26D3A0228();
  v37(v35, v38);
  sub_26D3481A4(v39, &qword_2804FB820, &qword_26D3A4F60);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FB920, &qword_26D3A50A0);
  v41 = swift_allocObject();
  *(v41 + 16) = xmmword_26D3A35F0;
  sub_26D3A05D8();
  v58 = v41;
  sub_26D3A1388();
  sub_26D3A0238();
  v37(v35, v38);
  sub_26D3481A4(v40, &qword_2804FB820, &qword_26D3A4F60);
  return sub_26D37EEEC(v57, type metadata accessor for TFToggle);
}

uint64_t sub_26D374F04@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v46 = a3;
  v47 = a4;
  v45 = a2;
  v56 = a6;
  v53 = sub_26D3A0608();
  v55 = *(v53 - 8);
  MEMORY[0x28223BE20](v53);
  v44 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FB820, &qword_26D3A4F60);
  v9 = MEMORY[0x28223BE20](v51);
  v49 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v50 = &v43 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v52 = &v43 - v14;
  MEMORY[0x28223BE20](v13);
  v54 = &v43 - v15;
  v16 = type metadata accessor for TFToggle(0);
  MEMORY[0x28223BE20](v16);
  v57 = (&v43 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = 0;
  v19 = 0;
  v48 = a1;
  if (a1)
  {
    if (qword_2804FACA8 != -1)
    {
      swift_once();
    }

    v18 = qword_2804FFE80;
    v19 = *algn_2804FFE88;
  }

  v43 = 0x800000026D3A81E0;
  sub_26D3A10C8();
  v20 = sub_26D3A10B8();
  v21 = swift_allocObject();
  v22 = MEMORY[0x277D85700];
  *(v21 + 16) = v20;
  *(v21 + 24) = v22;
  v23 = v45;

  v24 = v47;
  sub_26D37DF24(v47, a5, BYTE1(a5) & 1);
  v25 = sub_26D3A10B8();
  v26 = swift_allocObject();
  *(v26 + 16) = v25;
  *(v26 + 24) = v22;
  v27 = v46;
  *(v26 + 32) = v23;
  *(v26 + 40) = v27;
  *(v26 + 48) = v24;
  *(v26 + 56) = a5;
  *(v26 + 57) = BYTE1(a5) & 1;
  sub_26D3A0E28();
  v28 = v58;
  v29 = v59;
  LOBYTE(v22) = v60;
  v30 = v57;
  sub_26D3A0638();
  *v30 = 0xD000000000000013;
  v30[1] = v43;
  v31 = (v30 + v16[6]);
  *v31 = v18;
  v31[1] = v19;
  *(v30 + v16[7]) = v48 & 1;
  v32 = v30 + v16[8];
  *v32 = v28;
  *(v32 + 1) = v29;
  v32[16] = v22;
  v33 = v30 + v16[9];
  *v33 = swift_getKeyPath();
  v33[8] = 0;
  if (qword_2804FACA8 != -1)
  {
    swift_once();
  }

  v58 = qword_2804FFE80;
  v59 = *algn_2804FFE88;
  sub_26D37E044(&qword_2804FB868, type metadata accessor for TFToggle, &unk_26D3A64A0);
  sub_26D37E6A4();
  v34 = v49;
  sub_26D3A0AF8();
  v35 = v44;
  sub_26D3A05F8();
  v36 = v50;
  sub_26D3A0238();
  v37 = *(v55 + 8);
  v38 = v53;
  v37(v35, v53);
  sub_26D3481A4(v34, &qword_2804FB820, &qword_26D3A4F60);
  sub_26D3A05E8();
  v39 = v52;
  sub_26D3A0228();
  v37(v35, v38);
  sub_26D3481A4(v36, &qword_2804FB820, &qword_26D3A4F60);
  v58 = MEMORY[0x277D84F90];
  v55 = sub_26D37E044(&unk_2804FC890, MEMORY[0x277CE01F0], MEMORY[0x277CE0200]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FB918, &qword_26D3A66F0);
  sub_26D3484AC(&qword_2804FC8A0, &qword_2804FB918, &qword_26D3A66F0, MEMORY[0x277D83970]);
  sub_26D3A1388();
  v40 = v54;
  sub_26D3A0228();
  v37(v35, v38);
  sub_26D3481A4(v39, &qword_2804FB820, &qword_26D3A4F60);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FB920, &qword_26D3A50A0);
  v41 = swift_allocObject();
  *(v41 + 16) = xmmword_26D3A35F0;
  sub_26D3A05D8();
  v58 = v41;
  sub_26D3A1388();
  sub_26D3A0238();
  v37(v35, v38);
  sub_26D3481A4(v40, &qword_2804FB820, &qword_26D3A4F60);
  return sub_26D37EEEC(v57, type metadata accessor for TFToggle);
}

uint64_t sub_26D3755B4@<X0>(__n128 *a2@<X8>, __n128 a3@<Q0>)
{
  v4 = sub_26D3A0928();
  v5 = type metadata accessor for TFSymbol(0);
  sub_26D3A0638();
  *a2 = a3;
  a2[1].n128_u8[0] = 0;
  a2[1].n128_u64[1] = v4;
  a2[2].n128_u64[0] = 0;
  a2->n128_u8[v5[9]] = 1;
  a2->n128_u8[v5[10]] = 1;
  v6 = a2 + v5[11];
  *v6 = swift_getKeyPath();
  v6[8] = 0;
  v7 = a2 + v5[12];
  *v7 = swift_getKeyPath();
  v7[8] = 0;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FBB70, &qword_26D3A53F8);
  v9 = a2 + v8[9];
  sub_26D3A0D48();
  *v9 = v15;
  *(v9 + 1) = v16;
  v10 = a2 + v8[10];
  *v10 = swift_getKeyPath();
  v10[8] = 0;
  v11 = a2 + v8[11];
  *v11 = swift_getKeyPath();
  v11[8] = 0;
  v12 = a2 + v8[12];
  result = swift_getKeyPath();
  *v12 = result;
  v12[8] = 0;
  return result;
}

uint64_t sub_26D375700(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unsigned int *a8)
{
  v10 = sub_26D3A12F8();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a4)
  {
    v14 = *(a4 + OBJC_IVAR____TtC16TextFormattingUI19TextFormattingState_didChangeValue);
    (*(v11 + 104))(v13, *a8, v10);

    v14(v13, 0);

    return (*(v11 + 8))(v13, v10);
  }

  else
  {
    type metadata accessor for TextFormattingState(0);
    sub_26D37E044(&qword_2804FADC0, type metadata accessor for TextFormattingState, &unk_26D3A3700);
    result = sub_26D3A02B8();
    __break(1u);
  }

  return result;
}

uint64_t sub_26D37592C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, __int16 a4@<W3>, uint64_t a5@<X8>)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FB398, &qword_26D3A33C0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v29[-v11];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FC280, &qword_26D3A5D90);
  v14 = (v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v29[-v15];
  v17 = v14[14];
  v18 = sub_26D3A0078();
  (*(*(v18 - 8) + 56))(&v16[v17], 1, 1, v18);
  *v16 = 0;
  v16[8] = 1;
  *(v16 + 9) = 257;
  v16[11] = 0;
  sub_26D375CC8(a1, a2, a3, a4 & 0x1FF, &v16[v14[15]]);
  v19 = &v16[v14[16]];
  *v19 = swift_getKeyPath();
  v19[8] = 0;
  v20 = &v16[v14[17]];
  *v20 = swift_getKeyPath();
  v20[8] = 0;
  v21 = &v16[v14[18]];
  *v21 = swift_getKeyPath();
  v21[8] = 0;
  v22 = &v16[v14[19]];
  v29[7] = 0;
  sub_26D3A0D48();
  v23 = v30;
  *v22 = v29[8];
  *(v22 + 1) = v23;
  if (a1)
  {
    swift_getKeyPath();
    swift_getKeyPath();

    sub_26D39FF68();

    v24 = sub_26D3A1298();
    if ((*(*(v24 - 8) + 48))(v12, 1, v24))
    {

      sub_26D3481A4(v12, &qword_2804FB398, &qword_26D3A33C0);
      v25 = 0;
    }

    else
    {
      v26 = sub_26D3A11E8();

      sub_26D3481A4(v12, &qword_2804FB398, &qword_26D3A33C0);
      v25 = v26 == 1;
    }

    if (qword_2804FAD00 != -1)
    {
      v28 = v25;
      swift_once();
      v25 = v28;
    }

    sub_26D35E264(v25, 0, qword_2804FFF30, *algn_2804FFF38, a5);
    return sub_26D3481A4(v16, &qword_2804FC280, &qword_26D3A5D90);
  }

  else
  {
    type metadata accessor for TextFormattingState(0);
    sub_26D37E044(&qword_2804FADC0, type metadata accessor for TextFormattingState, &unk_26D3A3700);
    result = sub_26D3A02B8();
    __break(1u);
  }

  return result;
}

uint64_t sub_26D375CC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v10 = (a4 >> 8) & 1;
  sub_26D3A10C8();

  sub_26D37DF24(a3, a4, v10);
  v11 = sub_26D3A10B8();
  v12 = swift_allocObject();
  v13 = MEMORY[0x277D85700];
  *(v12 + 16) = v11;
  *(v12 + 24) = v13;
  *(v12 + 32) = a1;
  *(v12 + 40) = a2;
  *(v12 + 48) = a3;
  *(v12 + 56) = a4;
  *(v12 + 57) = v10;

  sub_26D37DF24(a3, a4, v10);
  v14 = sub_26D3A10B8();
  v15 = swift_allocObject();
  *(v15 + 16) = v14;
  *(v15 + 24) = v13;
  *(v15 + 32) = a1;
  *(v15 + 40) = a2;
  *(v15 + 48) = a3;
  *(v15 + 56) = a4;
  *(v15 + 57) = v10;
  sub_26D3A0E28();
  v16 = type metadata accessor for TFToggle(0);
  sub_26D3A0638();
  *a5 = 0xD000000000000016;
  a5[1] = 0x800000026D3A8220;
  v17 = (a5 + v16[6]);
  *v17 = 0;
  v17[1] = 0;
  *(a5 + v16[7]) = 0;
  v18 = a5 + v16[8];
  *v18 = v21;
  *(v18 + 1) = v22;
  v18[16] = v23;
  v19 = a5 + v16[9];
  result = swift_getKeyPath();
  *v19 = result;
  v19[8] = 0;
  return result;
}

uint64_t sub_26D375E94@<X0>(uint64_t a1@<X2>, BOOL *a3@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FB398, &qword_26D3A33C0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v12 - v6;
  if (a1)
  {
    swift_getKeyPath();
    swift_getKeyPath();

    sub_26D39FF68();

    v8 = sub_26D3A1298();
    if ((*(*(v8 - 8) + 48))(v7, 1, v8))
    {

      result = sub_26D3481A4(v7, &qword_2804FB398, &qword_26D3A33C0);
      v10 = 0;
    }

    else
    {
      v11 = sub_26D3A11E8();

      result = sub_26D3481A4(v7, &qword_2804FB398, &qword_26D3A33C0);
      v10 = v11 == 1;
    }

    *a3 = v10;
  }

  else
  {
    type metadata accessor for TextFormattingState(0);
    sub_26D37E044(&qword_2804FADC0, type metadata accessor for TextFormattingState, &unk_26D3A3700);
    result = sub_26D3A02B8();
    __break(1u);
  }

  return result;
}

uint64_t sub_26D37605C(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_26D3A12F8();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a4)
  {
    v11 = *a1;
    v12 = *(a4 + OBJC_IVAR____TtC16TextFormattingUI19TextFormattingState_didChangeValue);
    *v10 = v11;
    (*(v8 + 104))(v10, *MEMORY[0x277D74F00], v7);

    v12(v10, 0);

    return (*(v8 + 8))(v10, v7);
  }

  else
  {
    type metadata accessor for TextFormattingState(0);
    sub_26D37E044(&qword_2804FADC0, type metadata accessor for TextFormattingState, &unk_26D3A3700);
    result = sub_26D3A02B8();
    __break(1u);
  }

  return result;
}

void *sub_26D376238@<X0>(uint64_t a1@<X8>)
{
  v3 = v2;
  if (qword_2804FAD48 != -1)
  {
    swift_once();
  }

  v5 = byte_2804FFF99;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FB950, &qword_26D3A5158);
  v7 = v6[12];
  v8 = sub_26D3A0078();
  (*(*(v8 - 8) + 56))(a1 + v7, 1, 1, v8);
  *a1 = 0;
  *(a1 + 8) = 1;
  *(a1 + 9) = 257;
  *(a1 + 11) = v5;
  sub_26D3763B4(v3, (a1 + v6[13]));
  v9 = a1 + v6[14];
  *v9 = swift_getKeyPath();
  *(v9 + 8) = 0;
  v10 = a1 + v6[15];
  *v10 = swift_getKeyPath();
  *(v10 + 8) = 0;
  v11 = a1 + v6[16];
  *v11 = swift_getKeyPath();
  *(v11 + 8) = 0;
  v12 = a1 + v6[17];
  result = sub_26D3A0D48();
  *v12 = v14;
  *(v12 + 8) = v15;
  return result;
}

uint64_t sub_26D3763B4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v91 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FB958, &qword_26D3A5160);
  MEMORY[0x28223BE20](v3);
  v5 = &v72 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FB960, &qword_26D3A5168);
  MEMORY[0x28223BE20](v6);
  v8 = &v72 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FB968, &qword_26D3A5170);
  v78 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v72 - v10;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FB970, &qword_26D3A5178);
  v12 = MEMORY[0x28223BE20](v82);
  v89 = &v72 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v80 = &v72 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FB978, &qword_26D3A5180);
  v84 = *(v15 - 8);
  v85 = v15;
  MEMORY[0x28223BE20](v15);
  v83 = &v72 - v16;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FB980, &qword_26D3A5188);
  v17 = MEMORY[0x28223BE20](v81);
  v86 = &v72 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v17);
  v79 = &v72 - v20;
  MEMORY[0x28223BE20](v19);
  v87 = &v72 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FB988, &qword_26D3A5190);
  v23 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v25 = &v72 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FB990, &qword_26D3A5198);
  v27 = MEMORY[0x28223BE20](v26 - 8);
  MEMORY[0x28223BE20](v27);
  v90 = &v72 - v29;
  if ((*a1 & 1) == 0)
  {
    sub_26D376F4C(v25);
    sub_26D34856C(v25, v5, &qword_2804FB988, &qword_26D3A5190);
    swift_storeEnumTagMultiPayload();
    sub_26D3484AC(&qword_2804FB998, &qword_2804FB960, &qword_26D3A5168, MEMORY[0x277CE14C0]);
    sub_26D37E98C();
    sub_26D3A0718();
    v33 = v25;
    v34 = &qword_2804FB988;
    v35 = &qword_26D3A5190;
    return sub_26D3481A4(v33, v34, v35);
  }

  v72 = v9;
  v73 = v28;
  v88 = v22;
  v30 = sub_26D33CED8(*(a1 + 24), *(a1 + 32) | (*(a1 + 33) << 8));
  v76 = v6;
  v77 = v5;
  v75 = v3;
  v74 = v8;
  if ((v31 & 1) != 0 || v30 >= 2)
  {
    sub_26D376F4C(v25);
    v36 = v90;
    sub_26D347238(v25, v90, &qword_2804FB988, &qword_26D3A5190);
    v32 = (*(v23 + 56))(v36, 0, 1, v88);
  }

  else
  {
    v32 = (*(v23 + 56))(v90, 1, 1, v88);
  }

  v37 = MEMORY[0x28223BE20](v32);
  *(&v72 - 2) = a1;
  MEMORY[0x28223BE20](v37);
  *(&v72 - 2) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FB9C8, &qword_26D3A51B8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FB9D0, &qword_26D3A51C0);
  sub_26D3484AC(&qword_2804FB9D8, &qword_2804FB9C8, &qword_26D3A51B8, &unk_26D3A6418);
  sub_26D37EBCC();
  sub_26D3A0958();
  v38 = v72;
  if (qword_2804FAD10 != -1)
  {
    swift_once();
  }

  v92 = qword_2804FFF50;
  v93 = *algn_2804FFF58;
  sub_26D37E6A4();

  v39 = sub_26D3A09C8();
  v41 = v40;
  v43 = v42;
  sub_26D3484AC(&qword_2804FBA10, &qword_2804FB968, &qword_26D3A5170, MEMORY[0x277CDE5B0]);
  sub_26D3A0AE8();
  sub_26D37EDCC(v39, v41, v43 & 1);

  (*(v78 + 8))(v11, v38);
  if (*(a1 + 8))
  {

    sub_26D353158();
    if (v44)
    {
      v45 = v44;
      v46 = [v44 title];

      v47 = sub_26D3A0F98();
      v49 = v48;
    }

    else
    {
      sub_26D353158();
      if (!v50 || (v51 = v50, v52 = [v50 color], v51, !v52))
      {
        v52 = [objc_opt_self() secondaryLabelColor];
      }

      v53 = [v52 CGColor];

      v46 = AXNameFromColor(v53);
      v47 = sub_26D3A0F98();
      v49 = v54;
    }

    v92 = v47;
    v93 = v49;
    v55 = v80;
    v56 = v89;
    sub_26D3A0218();

    sub_26D3481A4(v56, &qword_2804FB970, &qword_26D3A5178);
    v95[0] = 0;
    sub_26D3A0D48();
    v57 = v92;
    v58 = v93;
    LOBYTE(v92) = 0;
    LOBYTE(v93) = v57;
    v94 = v58;
    sub_26D37EDDC();
    sub_26D37E178();
    v59 = v83;
    sub_26D3A0C08();

    sub_26D3481A4(v55, &qword_2804FB970, &qword_26D3A5178);
    v60 = sub_26D378F14();
    KeyPath = swift_getKeyPath();
    v62 = swift_allocObject();
    *(v62 + 16) = v60 & 1;
    v63 = v79;
    (*(v84 + 32))(v79, v59, v85);
    v64 = (v63 + *(v81 + 36));
    *v64 = KeyPath;
    v64[1] = sub_26D37EEDC;
    v64[2] = v62;
    v65 = v87;
    sub_26D347238(v63, v87, &qword_2804FB980, &qword_26D3A5188);
    v66 = v90;
    v67 = v73;
    sub_26D34856C(v90, v73, &qword_2804FB990, &qword_26D3A5198);
    v68 = v86;
    sub_26D34856C(v65, v86, &qword_2804FB980, &qword_26D3A5188);
    v69 = v74;
    sub_26D34856C(v67, v74, &qword_2804FB990, &qword_26D3A5198);
    v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FBA20, &qword_26D3A5208);
    sub_26D34856C(v68, v69 + *(v70 + 48), &qword_2804FB980, &qword_26D3A5188);
    sub_26D3481A4(v68, &qword_2804FB980, &qword_26D3A5188);
    sub_26D3481A4(v67, &qword_2804FB990, &qword_26D3A5198);
    sub_26D34856C(v69, v77, &qword_2804FB960, &qword_26D3A5168);
    swift_storeEnumTagMultiPayload();
    sub_26D3484AC(&qword_2804FB998, &qword_2804FB960, &qword_26D3A5168, MEMORY[0x277CE14C0]);
    sub_26D37E98C();
    sub_26D3A0718();
    sub_26D3481A4(v69, &qword_2804FB960, &qword_26D3A5168);
    sub_26D3481A4(v65, &qword_2804FB980, &qword_26D3A5188);
    v33 = v66;
    v34 = &qword_2804FB990;
    v35 = &qword_26D3A5198;
    return sub_26D3481A4(v33, v34, v35);
  }

  type metadata accessor for TextFormattingState(0);
  sub_26D37E044(&qword_2804FADC0, type metadata accessor for TextFormattingState, &unk_26D3A3700);
  result = sub_26D3A02B8();
  __break(1u);
  return result;
}

uint64_t sub_26D376F4C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FB9C0, &unk_26D3A51A8);
  v5 = v4 - 8;
  MEMORY[0x28223BE20](v4);
  v7 = (&v46 - v6);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FB9B0, &qword_26D3A51A0);
  MEMORY[0x28223BE20](v47);
  v9 = &v46 - v8;
  sub_26D3A10C8();
  sub_26D348034(v1, &v49);
  v10 = sub_26D3A10B8();
  v11 = swift_allocObject();
  v12 = MEMORY[0x277D85700];
  *(v11 + 16) = v10;
  *(v11 + 24) = v12;
  v13 = v1[3];
  *(v11 + 64) = v1[2];
  *(v11 + 80) = v13;
  v14 = v1[5];
  *(v11 + 96) = v1[4];
  *(v11 + 112) = v14;
  v15 = v1[1];
  *(v11 + 32) = *v1;
  *(v11 + 48) = v15;
  sub_26D348034(v1, &v49);
  v16 = sub_26D3A10B8();
  v17 = swift_allocObject();
  *(v17 + 16) = v16;
  *(v17 + 24) = v12;
  v18 = v1[3];
  *(v17 + 64) = v1[2];
  *(v17 + 80) = v18;
  v19 = v1[5];
  *(v17 + 96) = v1[4];
  *(v17 + 112) = v19;
  v20 = v1[1];
  *(v17 + 32) = *v1;
  *(v17 + 48) = v20;
  sub_26D3A0E28();
  v21 = v49;
  v22 = v50;
  v23 = type metadata accessor for TFToggle(0);

  sub_26D3A0638();
  *v7 = xmmword_26D3A3F00;
  v24 = (v7 + v23[6]);
  *v24 = 0;
  v24[1] = 0;
  *(v7 + v23[7]) = 0;
  v25 = v7 + v23[8];
  *v25 = v21;
  v46 = *(&v21 + 1);
  v25[16] = v22;
  v26 = v7 + v23[9];
  *v26 = swift_getKeyPath();
  v26[8] = 0;
  LOBYTE(v26) = sub_26D378F14();
  KeyPath = swift_getKeyPath();
  v28 = swift_allocObject();
  *(v28 + 16) = v26 & 1;
  v29 = (v7 + *(v5 + 44));
  *v29 = KeyPath;
  v29[1] = sub_26D3834C0;
  v29[2] = v28;
  if (*v2)
  {
    v30 = sub_26D33CED8(*(v2 + 3), *(v2 + 32) | (*(v2 + 33) << 8));
    v48 = 0;
    if ((v31 & 1) == 0 && v30 >= 4)
    {
      v32 = sub_26D33CD0C(*(v2 + 7), *(v2 + 64));
      sub_26D39C90C(v32, v33);
      v48 = v34;
    }
  }

  else
  {
    v48 = 0;
  }

  sub_26D3A0EA8();
  sub_26D3A0268();
  sub_26D347238(v7, v9, &qword_2804FB9C0, &unk_26D3A51A8);
  v35 = &v9[*(v47 + 36)];
  v36 = v54;
  *(v35 + 4) = v53;
  *(v35 + 5) = v36;
  *(v35 + 6) = v55;
  v37 = v50;
  *v35 = v49;
  *(v35 + 1) = v37;
  v38 = v52;
  *(v35 + 2) = v51;
  *(v35 + 3) = v38;
  if (*(v2 + 1))
  {

    sub_26D352360();
    v40 = v39;

    v41 = v40;
    if (v40 >> 62)
    {
      goto LABEL_12;
    }

    v42 = *((v40 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v42)
    {
      while ((v41 & 0xC000000000000001) == 0)
      {
        v43 = *((v41 & 0xFFFFFFFFFFFFFF8) + 0x10);

        if (v43)
        {
          goto LABEL_16;
        }

        __break(1u);
LABEL_12:
        v44 = v41;
        v42 = sub_26D3A1488();
        v41 = v44;
        if (!v42)
        {
          goto LABEL_15;
        }
      }

      sub_26D33E800(0, v41);
      swift_unknownObjectRelease();
    }

LABEL_15:

LABEL_16:
    if (qword_2804FAD08 != -1)
    {
      swift_once();
    }

    sub_26D35E830(v42 != 0, 0, qword_2804FFF40, *algn_2804FFF48, a1);

    return sub_26D3481A4(v9, &qword_2804FB9B0, &qword_26D3A51A0);
  }

  else
  {
    type metadata accessor for TextFormattingState(0);
    sub_26D37E044(&qword_2804FADC0, type metadata accessor for TextFormattingState, &unk_26D3A3700);
    result = sub_26D3A02B8();
    __break(1u);
  }

  return result;
}

uint64_t sub_26D3774BC(uint64_t a1, double a2)
{
  if ((*(a1 + 1) & 1) == 0)
  {
    if (qword_2804FABD0 != -1)
    {
      swift_once();
    }

    goto LABEL_7;
  }

  if (*(a1 + 8))
  {
    swift_getKeyPath();
    swift_getKeyPath();

    sub_26D39FF68();

    v3 = v9[0];
LABEL_7:
    v9[12] = v3;
    swift_getKeyPath();
    v4 = swift_allocObject();
    v5 = *(a1 + 48);
    v4[3] = *(a1 + 32);
    v4[4] = v5;
    v6 = *(a1 + 80);
    v4[5] = *(a1 + 64);
    v4[6] = v6;
    v7 = *(a1 + 16);
    v4[1] = *a1;
    v4[2] = v7;
    sub_26D348034(a1, v9);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FB640, &qword_26D3A3668);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FB9F0, &qword_26D3A51C8);
    sub_26D3484AC(&qword_2804FBA68, &qword_2804FB640, &qword_26D3A3668, MEMORY[0x277D83980]);
    sub_26D37EC50();
    return sub_26D3A0E58();
  }

  type metadata accessor for TextFormattingState(0);
  sub_26D37E044(&qword_2804FADC0, type metadata accessor for TextFormattingState, &unk_26D3A3700);
  result = sub_26D3A02B8();
  __break(1u);
  return result;
}

void sub_26D3776F8(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 styleKey];
  v4 = sub_26D3A0F98();
  v6 = v5;

  *a2 = v4;
  a2[1] = v6;
}

uint64_t sub_26D377750@<X0>(void **a1@<X0>, _OWORD *a2@<X1>, uint64_t a3@<X8>)
{
  v50 = a3;
  v46 = sub_26D3A0288();
  v47 = *(v46 - 8);
  MEMORY[0x28223BE20](v46);
  v6 = v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FB9F8, &qword_26D3A51D0);
  v45 = *(v44 - 8);
  MEMORY[0x28223BE20](v44);
  v8 = v43 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FBA70, &qword_26D3A5300);
  v10 = *(v9 - 8);
  v48 = v9;
  v49 = v10;
  MEMORY[0x28223BE20](v9);
  v12 = v43 - v11;
  v13 = *a1;
  sub_26D3A10C8();
  sub_26D348034(a2, &v53);
  v14 = v13;
  v15 = sub_26D3A10B8();
  v16 = swift_allocObject();
  v17 = MEMORY[0x277D85700];
  *(v16 + 16) = v15;
  *(v16 + 24) = v17;
  v18 = a2[3];
  *(v16 + 64) = a2[2];
  *(v16 + 80) = v18;
  v19 = a2[5];
  *(v16 + 96) = a2[4];
  *(v16 + 112) = v19;
  v20 = a2[1];
  *(v16 + 32) = *a2;
  *(v16 + 48) = v20;
  *(v16 + 128) = v14;
  sub_26D348034(a2, &v53);
  v21 = v14;
  v22 = sub_26D3A10B8();
  v23 = swift_allocObject();
  *(v23 + 16) = v22;
  *(v23 + 24) = v17;
  v24 = a2[3];
  *(v23 + 64) = a2[2];
  *(v23 + 80) = v24;
  v25 = a2[5];
  *(v23 + 96) = a2[4];
  *(v23 + 112) = v25;
  v26 = a2[1];
  *(v23 + 32) = *a2;
  *(v23 + 48) = v26;
  *(v23 + 128) = v21;
  sub_26D3A0E28();
  v27 = v54;
  v51 = v21;
  v52 = a2;
  v43[2] = v53;

  v43[1] = v27;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FBA78, &qword_26D3A5308);
  sub_26D3484AC(&qword_2804FBA80, &qword_2804FBA78, &qword_26D3A5308, MEMORY[0x277CDEFF0]);
  sub_26D3A0DC8();
  sub_26D3A0278();
  v28 = sub_26D3484AC(&qword_2804FBA00, &qword_2804FB9F8, &qword_26D3A51D0, MEMORY[0x277CDF068]);
  v29 = sub_26D37E044(&qword_2804FBA08, MEMORY[0x277CDDBD0], MEMORY[0x277CDDBC8]);
  v30 = v12;
  v31 = v44;
  v32 = v46;
  sub_26D3A0A48();
  (*(v47 + 8))(v6, v32);
  (*(v45 + 8))(v8, v31);
  v33 = [v21 title];
  v34 = sub_26D3A0F98();
  v36 = v35;

  v53 = v34;
  v54 = v36;
  sub_26D37E6A4();
  v37 = sub_26D3A09C8();
  v39 = v38;
  LOBYTE(v6) = v40;
  v53 = v31;
  v54 = v32;
  v55 = v28;
  v56 = v29;
  swift_getOpaqueTypeConformance2();
  v41 = v48;
  sub_26D3A0AE8();
  sub_26D37EDCC(v37, v39, v6 & 1);

  return (*(v49 + 8))(v30, v41);
}

uint64_t sub_26D377C9C@<X0>(uint64_t a1@<X2>, void *a2@<X3>, BOOL *a3@<X8>)
{
  if (*(a1 + 8))
  {

    sub_26D352360();
    v5 = v4;

    v20 = a3;
    if (v5 >> 62)
    {
LABEL_18:
      v22 = v5 & 0xFFFFFFFFFFFFFF8;
      v23 = sub_26D3A1488();
    }

    else
    {
      v22 = v5 & 0xFFFFFFFFFFFFFF8;
      v23 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v6 = 0;
    do
    {
      v8 = v6;
      if (v23 == v6)
      {
        break;
      }

      if ((v5 & 0xC000000000000001) != 0)
      {
        v9 = sub_26D33E800(v6, v5);
      }

      else
      {
        if (v6 >= *(v22 + 16))
        {
          goto LABEL_17;
        }

        v9 = *(v5 + 8 * v6 + 32);
      }

      v10 = v9;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
LABEL_17:
        __break(1u);
        goto LABEL_18;
      }

      v11 = [v9 styleKey];
      v12 = sub_26D3A0F98();
      v14 = v13;

      v15 = [a2 styleKey];
      v16 = sub_26D3A0F98();
      v18 = v17;

      if (v12 == v16 && v14 == v18)
      {

        break;
      }

      v7 = sub_26D3A1518();

      v6 = v8 + 1;
    }

    while ((v7 & 1) == 0);

    *v20 = v23 != v8;
  }

  else
  {
    type metadata accessor for TextFormattingState(0);
    sub_26D37E044(&qword_2804FADC0, type metadata accessor for TextFormattingState, &unk_26D3A3700);
    result = sub_26D3A02B8();
    __break(1u);
  }

  return result;
}

uint64_t sub_26D377ED8(_BYTE *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  if (*(a4 + 8))
  {
    if (*a1)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FAE80, &qword_26D3A2980);
      v6 = swift_allocObject();
      *(v6 + 16) = xmmword_26D3A2290;
      *(v6 + 32) = a5;

      v7 = a5;
    }

    else if (*(a4 + 1))
    {

      v6 = MEMORY[0x277D84F90];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FAE80, &qword_26D3A2980);
      v6 = swift_allocObject();
      *(v6 + 16) = xmmword_26D3A2290;
      v8 = qword_2804FAB98;

      if (v8 != -1)
      {
        swift_once();
      }

      v9 = qword_2804FFC38;
      *(v6 + 32) = qword_2804FFC38;
      v10 = v9;
    }

    sub_26D3527C8(v6);
  }

  else
  {
    type metadata accessor for TextFormattingState(0);
    sub_26D37E044(&qword_2804FADC0, type metadata accessor for TextFormattingState, &unk_26D3A3700);
    result = sub_26D3A02B8();
    __break(1u);
  }

  return result;
}

uint64_t sub_26D378060(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FBA88, &qword_26D3A5310);
  sub_26D37F0D4();
  return sub_26D3A0CD8();
}

uint64_t sub_26D3780FC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = [a1 title];
  sub_26D3A0F98();

  sub_26D37E6A4();
  result = sub_26D3A09C8();
  *a2 = result;
  *(a2 + 8) = v5;
  *(a2 + 16) = v6 & 1;
  *(a2 + 24) = v7;
  return result;
}

uint64_t sub_26D378180@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  if (*(a1 + 8))
  {

    v5 = [a2 styleKey];
    v6 = sub_26D3A0F98();
    v8 = v7;

    swift_getKeyPath();
    swift_getKeyPath();
    sub_26D39FF68();

    if (*(v14 + 16))
    {
      v9 = sub_26D33F2EC(v6, v8);
      v11 = v10;

      if (v11)
      {
        v12 = *(*(v14 + 56) + 8 * v9);

        result = sub_26D3A0C98();
LABEL_7:
        *a3 = result;
        return result;
      }
    }

    else
    {
    }

    result = 0;
    goto LABEL_7;
  }

  type metadata accessor for TextFormattingState(0);
  sub_26D37E044(&qword_2804FADC0, type metadata accessor for TextFormattingState, &unk_26D3A3700);
  result = sub_26D3A02B8();
  __break(1u);
  return result;
}

uint64_t sub_26D378308@<X0>(uint64_t a1@<X8>, uint64_t a2@<X0>)
{
  sub_26D3783D8(a2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FB9C8, &qword_26D3A51B8);
  v4 = a1 + v3[9];
  sub_26D3A0D48();
  *v4 = v9;
  *(v4 + 8) = v10;
  v5 = a1 + v3[10];
  *v5 = swift_getKeyPath();
  *(v5 + 8) = 0;
  v6 = a1 + v3[11];
  *v6 = swift_getKeyPath();
  *(v6 + 8) = 0;
  v7 = a1 + v3[12];
  result = swift_getKeyPath();
  *v7 = result;
  *(v7 + 8) = 0;
  return result;
}

uint64_t sub_26D3783D8(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FBA28, &qword_26D3A5258);
  MEMORY[0x28223BE20](v3);
  v5 = &v19[-v4];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FBA30, &qword_26D3A5260);
  MEMORY[0x28223BE20](v6);
  v8 = &v19[-v7];
  v9 = type metadata accessor for TFSymbol(0);
  MEMORY[0x28223BE20](v9);
  v11 = &v19[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = sub_26D33CED8(*(a1 + 24), *(a1 + 32) | (*(a1 + 33) << 8));
  if ((v13 & 1) != 0 || v12 > 1)
  {
    *v5 = sub_26D3A0548();
    *(v5 + 1) = 0;
    v5[16] = 0;
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FBA38, &qword_26D3A5268);
    sub_26D378768(a1, &v5[*(v18 + 44)]);
    sub_26D34856C(v5, v8, &qword_2804FBA28, &qword_26D3A5258);
    swift_storeEnumTagMultiPayload();
    sub_26D37E044(&qword_2804FC7D0, type metadata accessor for TFSymbol, &unk_26D3A62F0);
    sub_26D3484AC(&qword_2804FBA40, &qword_2804FBA28, &qword_26D3A5258, MEMORY[0x277CE1138]);
    sub_26D3A0718();
    return sub_26D3481A4(v5, &qword_2804FBA28, &qword_26D3A5258);
  }

  else
  {
    v14 = sub_26D3A0928();
    sub_26D3A0638();
    *v11 = xmmword_26D3A3F00;
    v11[16] = 0;
    *(v11 + 3) = v14;
    *(v11 + 4) = 0;
    v11[v9[9]] = 1;
    v11[v9[10]] = 1;
    v15 = &v11[v9[11]];
    *v15 = swift_getKeyPath();
    v15[8] = 0;
    v16 = &v11[v9[12]];
    *v16 = swift_getKeyPath();
    v16[8] = 0;
    sub_26D381440(v11, v8, type metadata accessor for TFSymbol);
    swift_storeEnumTagMultiPayload();
    sub_26D37E044(&qword_2804FC7D0, type metadata accessor for TFSymbol, &unk_26D3A62F0);
    sub_26D3484AC(&qword_2804FBA40, &qword_2804FBA28, &qword_26D3A5258, MEMORY[0x277CE1138]);
    sub_26D3A0718();
    return sub_26D37EEEC(v11, type metadata accessor for TFSymbol);
  }
}

uint64_t sub_26D378768@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FBA48, &qword_26D3A5270);
  v5 = v4 - 8;
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v55[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  MEMORY[0x28223BE20](v6);
  v10 = &v55[-v9 - 8];
  v11 = sub_26D378DFC();
  v12 = sub_26D3A0928();
  v13 = type metadata accessor for TFSymbol(0);
  sub_26D3A0638();
  *v10 = xmmword_26D3A3F10;
  v10[16] = 0;
  *(v10 + 3) = v12;
  *(v10 + 4) = v11;
  v10[v13[9]] = 1;
  v10[v13[10]] = 1;
  v14 = &v10[v13[11]];
  *v14 = swift_getKeyPath();
  v14[8] = 0;
  v15 = &v10[v13[12]];
  *v15 = swift_getKeyPath();
  v15[8] = 0;
  v16 = &v10[*(v5 + 44)];
  v17 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FBA50, &qword_26D3A5278) + 28);
  v18 = *MEMORY[0x277CE1050];
  v19 = sub_26D3A0CC8();
  (*(*(v19 - 8) + 104))(v16 + v17, v18, v19);
  *v16 = swift_getKeyPath();
  if (*(a1 + 8))
  {

    sub_26D353158();
    v21 = v20;

    if (v21)
    {
      v22 = [v21 title];

      v23 = sub_26D3A0F98();
      v25 = v24;

      if (*a1)
      {
        v26 = sub_26D33CED8(*(a1 + 24), *(a1 + 32) | (*(a1 + 33) << 8));
        if ((v27 & 1) == 0 && v26 >= 4 && *(a1 + 88) < sub_26D33D278(*(a1 + 40), *(a1 + 48)))
        {
          KeyPath = swift_getKeyPath();
          v28 = sub_26D3A0878();
          v29 = sub_26D33CD0C(*(a1 + 56), *(a1 + 64));
          if (qword_2804FAD40 != -1)
          {
            swift_once();
          }

          if (byte_2804FFF98)
          {
            goto LABEL_10;
          }

          if (qword_2804FAD48 != -1)
          {
            swift_once();
          }

          if ((byte_2804FFF99 & 1) == 0)
          {
            v45 = _UISolariumEnabled();
            v30 = 11.0;
            if (v45)
            {
LABEL_10:
              sub_26D39CDDC(0, v29, v30);
            }
          }

          sub_26D39FFD8();
          v47 = v46;
          v49 = v48;
          v51 = v50;
          v53 = v52;
          LOBYTE(v69[0]) = 0;
          LOBYTE(v56) = 0;
          sub_26D3A0EB8();
          sub_26D3A0268();
          *&v55[55] = v89[3];
          *&v55[71] = v89[4];
          *&v55[87] = v89[5];
          *&v55[103] = v90;
          *&v55[7] = v89[0];
          *&v55[23] = v89[1];
          *&v55[39] = v89[2];
          *&v70 = v23;
          *(&v70 + 1) = v25;
          LOBYTE(v71) = 0;
          *(&v71 + 1) = KeyPath;
          LOBYTE(v72) = 0;
          BYTE8(v72) = v28;
          *&v73 = v47;
          *(&v73 + 1) = v49;
          *&v74 = v51;
          *(&v74 + 1) = v53;
          LOBYTE(v75[0]) = 0;
          *(&v75[4] + 1) = *&v55[64];
          *(&v75[5] + 1) = *&v55[80];
          *(&v75[6] + 1) = *&v55[96];
          *(v75 + 1) = *v55;
          *(&v75[1] + 1) = *&v55[16];
          *(&v75[2] + 1) = *&v55[32];
          *(&v75[3] + 1) = *&v55[48];
          *&v75[7] = *(&v90 + 1);
          *(&v75[7] + 1) = 0x3FF0000000000000;
          nullsub_1();
          v86 = v75[5];
          v87 = v75[6];
          v88 = v75[7];
          v82 = v75[1];
          v83 = v75[2];
          v84 = v75[3];
          v85 = v75[4];
          v78 = v72;
          v79 = v73;
          v80 = v74;
          v81 = v75[0];
          v76 = v70;
          v77 = v71;
          goto LABEL_13;
        }
      }
    }

    sub_26D37EFB0(&v76);
LABEL_13:
    sub_26D34856C(v10, v8, &qword_2804FBA48, &qword_26D3A5270);
    v65 = v85;
    v66 = v86;
    v67 = v87;
    v68 = v88;
    v61 = v81;
    v62 = v82;
    v63 = v83;
    v64 = v84;
    v57 = v77;
    v58 = v78;
    v59 = v79;
    v60 = v80;
    v56 = v76;
    sub_26D34856C(v8, a2, &qword_2804FBA48, &qword_26D3A5270);
    v31 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FBA58, &qword_26D3A52B0) + 48);
    v32 = v65;
    v69[10] = v66;
    v69[11] = v67;
    v33 = v67;
    v69[12] = v68;
    v34 = v61;
    v35 = v62;
    v69[6] = v62;
    v69[7] = v63;
    v36 = v63;
    v37 = v64;
    v69[8] = v64;
    v69[9] = v65;
    v38 = v59;
    v39 = v60;
    v69[4] = v60;
    v69[5] = v61;
    v40 = v57;
    v41 = v58;
    v69[2] = v58;
    v69[3] = v59;
    v42 = v56;
    v69[0] = v56;
    v69[1] = v57;
    v43 = (a2 + v31);
    v43[10] = v66;
    v43[11] = v33;
    v43[12] = v68;
    v43[6] = v35;
    v43[7] = v36;
    v43[8] = v37;
    v43[9] = v32;
    v43[2] = v41;
    v43[3] = v38;
    v43[4] = v39;
    v43[5] = v34;
    *v43 = v42;
    v43[1] = v40;
    sub_26D34856C(v69, &v70, &qword_2804FBA60, qword_26D3A52B8);
    sub_26D3481A4(v10, &qword_2804FBA48, &qword_26D3A5270);
    v75[5] = v66;
    v75[6] = v67;
    v75[7] = v68;
    v75[1] = v62;
    v75[2] = v63;
    v75[3] = v64;
    v75[4] = v65;
    v72 = v58;
    v73 = v59;
    v74 = v60;
    v75[0] = v61;
    v70 = v56;
    v71 = v57;
    sub_26D3481A4(&v70, &qword_2804FBA60, qword_26D3A52B8);
    return sub_26D3481A4(v8, &qword_2804FBA48, &qword_26D3A5270);
  }

  type metadata accessor for TextFormattingState(0);
  sub_26D37E044(&qword_2804FADC0, type metadata accessor for TextFormattingState, &unk_26D3A3700);
  result = sub_26D3A02B8();
  __break(1u);
  return result;
}

uint64_t sub_26D378DFC()
{
  if (*(v0 + 8))
  {

    sub_26D353158();
    if (!v1 || (v2 = v1, v3 = [v1 color], v2, !v3))
    {
      v4 = [objc_opt_self() secondaryLabelColor];
    }

    sub_26D3A0C18();
    return sub_26D3A00D8();
  }

  else
  {
    type metadata accessor for TextFormattingState(0);
    sub_26D37E044(&qword_2804FADC0, type metadata accessor for TextFormattingState, &unk_26D3A3700);
    result = sub_26D3A02B8();
    __break(1u);
  }

  return result;
}

uint64_t sub_26D378F14()
{
  if ((*(v0 + 1) & 1) == 0)
  {
    goto LABEL_5;
  }

  if (*(v0 + 8))
  {
    swift_getKeyPath();
    swift_getKeyPath();

    sub_26D39FF68();

    if (v5 >> 62)
    {
      v4 = sub_26D3A1488();

      if (v4)
      {
        goto LABEL_5;
      }
    }

    else
    {
      v1 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);

      if (v1)
      {
LABEL_5:
        v2 = sub_26D33D0B8(*(v0 + 72), *(v0 + 80)) ^ 1;
        return v2 & 1;
      }
    }

    v2 = 1;
    return v2 & 1;
  }

  type metadata accessor for TextFormattingState(0);
  sub_26D37E044(&qword_2804FADC0, type metadata accessor for TextFormattingState, &unk_26D3A3700);
  result = sub_26D3A02B8();
  __break(1u);
  return result;
}

unint64_t sub_26D37905C@<X0>(uint64_t a1@<X2>, BOOL *a2@<X8>)
{
  if (*(a1 + 8))
  {

    sub_26D352360();
    v4 = v3;

    result = v4;
    if (v4 >> 62)
    {
      goto LABEL_7;
    }

    v6 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v6)
    {
      while ((result & 0xC000000000000001) == 0)
      {
        v7 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);

        if (v7)
        {
          goto LABEL_11;
        }

        __break(1u);
LABEL_7:
        v8 = result;
        v6 = sub_26D3A1488();
        result = v8;
        if (!v6)
        {
          goto LABEL_10;
        }
      }

      sub_26D33E800(0, result);
      swift_unknownObjectRelease();
    }

LABEL_10:

LABEL_11:
    *a2 = v6 != 0;
  }

  else
  {
    type metadata accessor for TextFormattingState(0);
    sub_26D37E044(&qword_2804FADC0, type metadata accessor for TextFormattingState, &unk_26D3A3700);
    result = sub_26D3A02B8();
    __break(1u);
  }

  return result;
}

void sub_26D379184(unsigned __int8 *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!*(a4 + 8))
  {
    goto LABEL_31;
  }

  v5 = *a1;
  swift_retain_n();
  v6 = sub_26D353218();
  v7 = v6;
  if ((*(a4 + 1) & 1) == 0)
  {

    if (!v5)
    {
      if (qword_2804FAB98 != -1)
      {
        swift_once();
      }

      v12 = qword_2804FFC38;
      v13 = qword_2804FFC38;
      goto LABEL_25;
    }

    if ((*a4 & 1) == 0)
    {
      if (qword_2804FABA0 != -1)
      {
        swift_once();
      }

      v12 = qword_2804FFC40;
      v13 = qword_2804FFC40;
      goto LABEL_25;
    }

    if (v7)
    {
      v13 = v7;
      v12 = v7;
      goto LABEL_25;
    }

LABEL_12:
    v12 = 0;
    v14 = MEMORY[0x277D84F90];
LABEL_26:
    sub_26D3527C8(v14);

    return;
  }

  if (!v5 || !v6)
  {

    goto LABEL_12;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  v8 = v7;
  sub_26D39FF68();

  v10 = v19;
  v19 = v8;
  MEMORY[0x28223BE20](v9);
  v18[2] = &v19;
  v11 = sub_26D35999C(sub_26D37F19C, v18, v10);

  if (v11)
  {

    v12 = v7;
    v13 = v8;
LABEL_25:
    v17 = v13;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FAE80, &qword_26D3A2980);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_26D3A2290;
    *(v14 + 32) = v12;
    goto LABEL_26;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_26D39FF68();

  v15 = v19;
  if (v19 >> 62)
  {
    if (sub_26D3A1488())
    {
      goto LABEL_21;
    }

    goto LABEL_28;
  }

  if (!*((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_28:

    goto LABEL_12;
  }

LABEL_21:
  if ((v15 & 0xC000000000000001) != 0)
  {
    v16 = sub_26D33E800(0, v15);
    goto LABEL_24;
  }

  if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v16 = *(v15 + 32);
LABEL_24:
    v12 = v16;

    v13 = v12;
    goto LABEL_25;
  }

  __break(1u);
LABEL_31:
  type metadata accessor for TextFormattingState(0);
  sub_26D37E044(&qword_2804FADC0, type metadata accessor for TextFormattingState, &unk_26D3A3700);
  sub_26D3A02B8();
  __break(1u);
}

uint64_t sub_26D379540@<X0>(uint64_t a1@<X8>)
{
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FB7E8, &unk_26D3A4E90);
  MEMORY[0x28223BE20](v52);
  v4 = &v49 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FC6F0, &unk_26D3A6590);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v49 - v6;
  v8 = *v1;
  v9 = [*v1 _textAnimationName];
  if (!v9)
  {
    goto LABEL_5;
  }

  if (qword_2804FAD40 != -1)
  {
    swift_once();
  }

  if ((byte_2804FFF98 & 1) == 0)
  {
    sub_26D3A0048();
    v11 = sub_26D3A0078();
    (*(*(v11 - 8) + 56))(v7, 0, 1, v11);
  }

  else
  {
LABEL_5:
    v10 = sub_26D3A0078();
    (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  }

  v12 = sub_26D33CD0C(*(v1 + 40), *(v1 + 48));
  v13 = *(v1 + 8);
  if (v13)
  {
    v14 = v12;
    swift_getKeyPath();
    swift_getKeyPath();
    swift_retain_n();
    sub_26D39FF68();

    v15 = v58;
    v51 = v59;
    v16 = *(v13 + OBJC_IVAR____TtC16TextFormattingUI19TextFormattingState_isInPopoverPresentation);
    v55 = v7;
    v56 = a1;
    v54 = v8;
    if (v16)
    {

      v50 = 0;
    }

    else
    {
      v17 = *(v13 + OBJC_IVAR____TtC16TextFormattingUI19TextFormattingState_hasParentViewController);

      v50 = v17 ^ 1;
    }

    v53 = OBJC_IVAR____TtC16TextFormattingUI19TextFormattingState_useReducedMetrics;
    v18 = *(v13 + OBJC_IVAR____TtC16TextFormattingUI19TextFormattingState_useReducedMetrics);

    v19 = sub_26D3A0F68();
    v20 = sub_26D3A0F98();
    v22 = v21;
    v23 = sub_26D3A0F98();
    v25 = v24;

    if (v20 == v23 && v22 == v25)
    {
    }

    else
    {
      v27 = sub_26D3A1518();

      if ((v27 & 1) == 0)
      {
        v30 = v1;
        if ((v14 - 2) >= 3u)
        {
          goto LABEL_21;
        }

        if ((v51 & 1) == 0)
        {
          if (v14 == 4)
          {
            v43 = 2.0;
          }

          else
          {
            v43 = 4.0;
          }

          v44 = sub_26D39C058(v50 & 1, v18, v14, 4.0);
          v46 = v44 + v45;
          v47 = v15 - v46;
          sub_26D39E14C(v46, v18, v14);
          v29 = (v47 - v48 - v43 * sub_26D39C698(v18, v14, v48)) / v43;
          goto LABEL_16;
        }

        if (v18)
        {
          v29 = 34.0;
        }

        else
        {
LABEL_21:
          sub_26D39D4C4(v14, v26);
          v29 = v42;
        }

LABEL_16:
        v31 = v52;
        v32 = v55;
        sub_26D34856C(v55, &v4[*(v52 + 48)], &qword_2804FC6F0, &unk_26D3A6590);
        *v4 = v29;
        v4[8] = 0;
        *(v4 + 9) = 257;
        v4[11] = 0;
        sub_26D379B28(v30, &v4[v31[13]]);
        v33 = &v4[v31[14]];
        *v33 = swift_getKeyPath();
        v33[8] = 0;
        v34 = &v4[v31[15]];
        *v34 = swift_getKeyPath();
        v34[8] = 0;
        v35 = &v4[v31[16]];
        *v35 = swift_getKeyPath();
        v35[8] = 0;
        v36 = &v4[v31[17]];
        v57 = 0;
        sub_26D3A0D48();
        v37 = v59;
        *v36 = LOBYTE(v58);
        *(v36 + 1) = v37;
        sub_26D37DDD0(v54);
        sub_26D3484AC(&qword_2804FB7F0, &qword_2804FB7E8, &unk_26D3A4E90, &unk_26D3A6540);
        v38 = v56;
        sub_26D3A0B68();

        sub_26D3481A4(v4, &qword_2804FB7E8, &unk_26D3A4E90);
        KeyPath = swift_getKeyPath();
        sub_26D3481A4(v32, &qword_2804FC6F0, &unk_26D3A6590);
        LOBYTE(v31) = *(v13 + v53);

        result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FB7F8, &qword_26D3A4F38);
        v41 = v38 + *(result + 36);
        *v41 = KeyPath;
        *(v41 + 8) = v31;
        return result;
      }
    }

    sub_26D39E14C(v26, v18, v14);
    v29 = v28;
    v30 = v1;
    goto LABEL_16;
  }

  type metadata accessor for TextFormattingState(0);
  sub_26D37E044(&qword_2804FADC0, type metadata accessor for TextFormattingState, &unk_26D3A3700);
  result = sub_26D3A02B8();
  __break(1u);
  return result;
}

uint64_t sub_26D379B28@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  v154 = a2;
  v143 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FB808, &qword_26D3A4F40);
  MEMORY[0x28223BE20](v143);
  v144 = &v131 - v3;
  v137 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FB810, &qword_26D3A4F48);
  MEMORY[0x28223BE20](v137);
  v138 = (&v131 - v4);
  v142 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FB818, &unk_26D3A4F50);
  MEMORY[0x28223BE20](v142);
  v139 = &v131 - v5;
  v141 = sub_26D3A1298();
  v145 = *(v141 - 8);
  MEMORY[0x28223BE20](v141);
  v136 = &v131 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FB398, &qword_26D3A33C0);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v135 = &v131 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v133 = &v131 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v134 = &v131 - v13;
  MEMORY[0x28223BE20](v12);
  v140 = &v131 - v14;
  v15 = type metadata accessor for TFToggle(0);
  MEMORY[0x28223BE20](v15);
  v17 = &v131 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FB820, &qword_26D3A4F60);
  MEMORY[0x28223BE20](v18);
  v20 = &v131 - v19;
  v149 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FB828, &qword_26D3A4F68);
  MEMORY[0x28223BE20](v149);
  v153 = &v131 - v21;
  v151 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FB830, &qword_26D3A4F70);
  v146 = *(v151 - 8);
  MEMORY[0x28223BE20](v151);
  v23 = &v131 - v22;
  v152 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FB838, &qword_26D3A4F78);
  v148 = *(v152 - 8);
  MEMORY[0x28223BE20](v152);
  v147 = &v131 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FB840, &qword_26D3A4F80);
  MEMORY[0x28223BE20](v25);
  v27 = &v131 - v26;
  v28 = a1;
  v29 = *a1;
  v30 = [v29 _subcomponents];
  v150 = v25;
  if (v30)
  {
    v31 = v30;

    sub_26D345E5C(0, &qword_2804FB890, 0x277D76360);
    v32 = sub_26D3A1058();

    v145 = &v131;
    v34 = MEMORY[0x28223BE20](v33);
    *(&v131 - 2) = v32;
    *(&v131 - 1) = v28;
    MEMORY[0x28223BE20](v34);
    *(&v131 - 2) = v28;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FB898, &qword_26D3A4FF0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FB8A0, &qword_26D3A4FF8);
    sub_26D3484AC(&qword_2804FB8A8, &qword_2804FB898, &qword_26D3A4FF0, &unk_26D3A6418);
    sub_26D381AFC(&qword_2804FB8B0, &qword_2804FB8A0, &qword_26D3A4FF8, sub_26D37E274);
    sub_26D3A0958();

    LOBYTE(v162) = 0;
    sub_26D3A0D48();
    v35 = v157;
    v36 = *(&v157 + 1);
    LOBYTE(v157) = 0;
    BYTE8(v157) = v35;
    v158 = v36;
    v37 = sub_26D3484AC(&qword_2804FB870, &qword_2804FB830, &qword_26D3A4F70, MEMORY[0x277CDE5B0]);
    v38 = sub_26D37E178();
    v39 = v147;
    v40 = v151;
    sub_26D3A0C08();

    (v146[1])(v23, v40);
    v41 = v148;
    v42 = v152;
    (*(v148 + 16))(v153, v39, v152);
    swift_storeEnumTagMultiPayload();
    *&v157 = v40;
    *(&v157 + 1) = &type metadata for TFMenuStyle;
    v158 = v37;
    v159 = v38;
    swift_getOpaqueTypeConformance2();
    sub_26D37E1CC();
    sub_26D3A0718();
    return (*(v41 + 8))(v39, v42);
  }

  v44 = v140;
  v131 = v15;
  v146 = v17;
  v132 = v20;
  v147 = v27;
  v148 = v18;
  v45 = [v29 _textAnimationName];
  if (!v45)
  {
    v59 = [v29 systemImageName];
    v60 = v28;
    if (v59)
    {
      v61 = v59;
      v140 = sub_26D3A0F98();
      v139 = v62;
    }

    else
    {
      v140 = 0;
      v139 = 0;
    }

    v87 = v146;
    v88 = v28[3];
    v89 = *(v28 + 32);
    v90 = *(v28 + 33);
    v91 = sub_26D33CED8(v88, v89 | (v90 << 8));
    if ((v92 & 1) != 0 || v91 > 2 || (v93 = [v29 systemImageName]) == 0)
    {
      v94 = [v29 title];
      v138 = sub_26D3A0F98();
      v137 = v95;
    }

    else
    {

      v138 = 0;
      v137 = 0;
    }

    v96 = v28[1];
    v136 = v60[2];
    v162 = v60[5];
    LOBYTE(v163) = *(v60 + 48);
    sub_26D3A10C8();

    v97 = v29;
    sub_26D37DF24(v88, v89, v90);
    sub_26D34856C(&v162, &v157, &qword_2804FB848, &qword_26D3A4F88);
    v98 = sub_26D3A10B8();
    v99 = swift_allocObject();
    v100 = MEMORY[0x277D85700];
    *(v99 + 16) = v98;
    *(v99 + 24) = v100;
    v101 = *(v60 + 1);
    *(v99 + 32) = *v60;
    *(v99 + 48) = v101;
    *(v99 + 64) = *(v60 + 2);
    *(v99 + 80) = *(v60 + 48);
    *(v99 + 88) = v97;
    v102 = v97;

    sub_26D37DF24(v88, v89, v90);
    sub_26D34856C(&v162, &v157, &qword_2804FB848, &qword_26D3A4F88);
    v103 = sub_26D3A10B8();
    v104 = swift_allocObject();
    *(v104 + 16) = v103;
    *(v104 + 24) = MEMORY[0x277D85700];
    v105 = *(v60 + 1);
    *(v104 + 32) = *v60;
    *(v104 + 48) = v105;
    *(v104 + 64) = *(v60 + 2);
    *(v104 + 80) = *(v60 + 48);
    v106 = v102;
    *(v104 + 88) = v102;
    sub_26D3A0E28();
    v107 = v157;
    LOBYTE(v97) = v158;
    v108 = v131;
    sub_26D3A0638();
    v109 = v139;
    *v87 = v140;
    v87[1] = v109;
    v110 = (v87 + v108[6]);
    v111 = v137;
    *v110 = v138;
    v110[1] = v111;
    *(v87 + v108[7]) = 0;
    v112 = v87 + v108[8];
    *v112 = v107;
    v112[16] = v97;
    v113 = v87 + v108[9];
    *v113 = swift_getKeyPath();
    v113[8] = 0;
    if (v96)
    {
      swift_getKeyPath();
      swift_getKeyPath();

      v114 = v135;
      sub_26D39FF68();

      v115 = (v145[6])(v114, 1, v141);
      v116 = v144;
      v117 = v132;
      if (v115)
      {
        sub_26D3481A4(v114, &qword_2804FB398, &qword_26D3A33C0);
        v118 = 0;
      }

      else
      {
        sub_26D3A1248();
        sub_26D3481A4(v114, &qword_2804FB398, &qword_26D3A33C0);
        v119 = [v106 componentKey];
        v118 = sub_26D34862C();
      }

      v86 = v151;
      v120 = [v106 accessibilityLabel];
      if (!v120)
      {
        v120 = [v106 title];
      }

      v121 = v120;
      v122 = sub_26D3A0F98();
      v124 = v123;

      v125 = v146;
      sub_26D35DCA8(v118 & 1, 0, v122, v124, v117);

      sub_26D37EEEC(v125, type metadata accessor for TFToggle);
      sub_26D34856C(v117, v116, &qword_2804FB820, &qword_26D3A4F60);
      swift_storeEnumTagMultiPayload();
      sub_26D37DF5C();
      sub_26D37E08C();
      v84 = v147;
      sub_26D3A0718();
      sub_26D3481A4(v117, &qword_2804FB820, &qword_26D3A4F60);
      v85 = v153;
      goto LABEL_32;
    }

LABEL_36:
    type metadata accessor for TextFormattingState(0);
    sub_26D37E044(&qword_2804FADC0, type metadata accessor for TextFormattingState, &unk_26D3A3700);
    result = sub_26D3A02B8();
    __break(1u);
    return result;
  }

  v46 = v45;
  v146 = v29;

  v47 = sub_26D3A0F98();
  v49 = v48;

  v50 = v28;
  v51 = v28[1];
  v52 = v141;
  if (!v51)
  {
    type metadata accessor for TextFormattingState(0);
    sub_26D37E044(&qword_2804FADC0, type metadata accessor for TextFormattingState, &unk_26D3A3700);
    sub_26D3A02B8();
    __break(1u);
    goto LABEL_36;
  }

  v132 = v47;
  v135 = v49;
  swift_getKeyPath();
  swift_getKeyPath();
  swift_retain_n();
  sub_26D39FF68();

  v53 = v145[6];
  v54 = (v53)(v44, 1, v52);
  v55 = v139;
  v56 = v136;
  if (v54)
  {
    sub_26D3481A4(v44, &qword_2804FB398, &qword_26D3A33C0);
    v57 = v51[OBJC_IVAR____TtC16TextFormattingUI19TextFormattingState_isTextAnimationsUI];

    if ((v57 & 1) == 0)
    {
      v58 = 0;
LABEL_14:

      v66 = v58;
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  sub_26D3A1248();
  sub_26D3481A4(v44, &qword_2804FB398, &qword_26D3A33C0);
  v63 = [v146 componentKey];
  v58 = sub_26D34862C();

  LOBYTE(v63) = v51[OBJC_IVAR____TtC16TextFormattingUI19TextFormattingState_isTextAnimationsUI];

  if ((v63 & 1) == 0)
  {
    goto LABEL_14;
  }

  if ((v58 & 1) == 0)
  {
LABEL_15:

    v58 = 0;
    v66 = 0;
    goto LABEL_16;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  v64 = v134;
  sub_26D39FF68();

  v65 = v133;
  sub_26D34856C(v64, v133, &qword_2804FB398, &qword_26D3A33C0);
  if ((v53)(v65, 1, v52) == 1)
  {
    sub_26D3481A4(v64, &qword_2804FB398, &qword_26D3A33C0);
    v58 = 1;
    v66 = 1;
  }

  else
  {
    v128 = v145;
    (v145[4])(v56, v65, v52);
    v129 = sub_26D3A1248();
    (v128[1])(v56, v52);
    sub_26D3481A4(v64, &qword_2804FB398, &qword_26D3A33C0);
    v130 = *(v129 + 16);

    v66 = v130 == 1;
    v58 = 1;
  }

LABEL_16:
  v67 = v137;
  v162 = v50[3];
  v163 = *(v50 + 16);
  v160 = v50[5];
  v161 = *(v50 + 48);
  v68 = swift_allocObject();
  v69 = *(v50 + 1);
  *(v68 + 16) = *v50;
  *(v68 + 32) = v69;
  *(v68 + 48) = *(v50 + 2);
  *(v68 + 64) = *(v50 + 48);
  v70 = v138;
  *v138 = 256;
  v71 = v67[12];
  v72 = v146;

  sub_26D34856C(&v162, &v157, &qword_2804FB888, &qword_26D3A4FD8);
  sub_26D34856C(&v160, &v157, &qword_2804FB848, &qword_26D3A4F88);
  sub_26D37BE1C(v50, v132, v135, v66, v70 + v71);

  v73 = (v70 + v67[13]);
  *v73 = sub_26D37E25C;
  v73[1] = v68;
  v74 = v70 + v67[14];
  v155 = 0;
  v156 = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FC4F0, &qword_26D3A4FE0);
  sub_26D3A0D48();
  v75 = BYTE8(v157);
  v76 = v158;
  *v74 = v157;
  *(v74 + 8) = v75;
  *(v74 + 16) = v76;
  v77 = v67[15];
  v155 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_2804FC500, &qword_26D3A4FE8);
  sub_26D3A0D48();
  *(v70 + v77) = v157;
  v78 = v70 + v67[16];
  *v78 = swift_getKeyPath();
  *(v78 + 8) = 0;
  v79 = [v72 accessibilityLabel];
  if (!v79)
  {
    v79 = [v72 title];
  }

  v80 = v79;
  v81 = sub_26D3A0F98();
  v83 = v82;

  sub_26D35EDC8(v58 & 1, 0, v81, v83, v55);

  sub_26D3481A4(v70, &qword_2804FB810, &qword_26D3A4F48);
  sub_26D34856C(v55, v144, &qword_2804FB818, &unk_26D3A4F50);
  swift_storeEnumTagMultiPayload();
  sub_26D37DF5C();
  sub_26D37E08C();
  v84 = v147;
  sub_26D3A0718();
  sub_26D3481A4(v55, &qword_2804FB818, &unk_26D3A4F50);
  v85 = v153;
  v86 = v151;
LABEL_32:
  sub_26D34856C(v84, v85, &qword_2804FB840, &qword_26D3A4F80);
  swift_storeEnumTagMultiPayload();
  v126 = sub_26D3484AC(&qword_2804FB870, &qword_2804FB830, &qword_26D3A4F70, MEMORY[0x277CDE5B0]);
  v127 = sub_26D37E178();
  *&v157 = v86;
  *(&v157 + 1) = &type metadata for TFMenuStyle;
  v158 = v126;
  v159 = v127;
  swift_getOpaqueTypeConformance2();
  sub_26D37E1CC();
  sub_26D3A0718();
  return sub_26D3481A4(v84, &qword_2804FB840, &qword_26D3A4F80);
}

uint64_t sub_26D37AF68(uint64_t a1, uint64_t a2)
{
  v9 = a1;
  swift_getKeyPath();
  v3 = *a2;
  v14 = *(a2 + 8);
  v12 = *(a2 + 24);
  v13 = *(a2 + 32);
  v10 = *(a2 + 40);
  v11 = *(a2 + 48);
  v4 = swift_allocObject();
  v5 = *(a2 + 16);
  *(v4 + 16) = *a2;
  *(v4 + 32) = v5;
  *(v4 + 48) = *(a2 + 32);
  *(v4 + 64) = *(a2 + 48);

  v6 = v3;
  sub_26D34856C(&v14, v8, &qword_2804FB8D8, &qword_26D3A5070);
  sub_26D34856C(&v12, v8, &qword_2804FB888, &qword_26D3A4FD8);
  sub_26D34856C(&v10, v8, &qword_2804FB848, &qword_26D3A4F88);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FB8E0, &qword_26D3A5078);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FB8C0, &qword_26D3A5000);
  sub_26D3484AC(&qword_2804FB8E8, &qword_2804FB8E0, &qword_26D3A5078, MEMORY[0x277D83980]);
  sub_26D37E274();
  return sub_26D3A0E58();
}

uint64_t sub_26D37B128@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = v2;
  v69 = a2;
  v64 = type metadata accessor for TFToggle(0);
  v5 = MEMORY[0x28223BE20](v64);
  v58 = (&v57 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v5);
  v59 = &v57 - v7;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FB8F0, &qword_26D3A5080);
  MEMORY[0x28223BE20](v65);
  v68 = &v57 - v8;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FB8C8, &qword_26D3A5008);
  v61 = *(v66 - 8);
  MEMORY[0x28223BE20](v66);
  v60 = &v57 - v9;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FB8F8, &qword_26D3A5088);
  v63 = *(v67 - 8);
  MEMORY[0x28223BE20](v67);
  v62 = &v57 - v10;
  v11 = *v2;
  v79[0] = *(v2 + 8);
  v77 = *(v2 + 24);
  v78 = *(v2 + 32);
  v75 = *(v2 + 40);
  v76 = *(v2 + 48);
  sub_26D3A10C8();
  v12 = v11;
  v13 = a1;
  sub_26D34856C(v79, &v71, &qword_2804FB8D8, &qword_26D3A5070);
  sub_26D34856C(&v77, &v71, &qword_2804FB888, &qword_26D3A4FD8);
  sub_26D34856C(&v75, &v71, &qword_2804FB848, &qword_26D3A4F88);
  v14 = sub_26D3A10B8();
  v15 = swift_allocObject();
  v16 = MEMORY[0x277D85700];
  *(v15 + 16) = v14;
  *(v15 + 24) = v16;
  v17 = *(v2 + 16);
  *(v15 + 32) = *v2;
  *(v15 + 48) = v17;
  *(v15 + 64) = *(v2 + 32);
  *(v15 + 80) = *(v2 + 48);
  *(v15 + 88) = v13;
  v18 = v12;
  v19 = v13;
  sub_26D34856C(v79, &v71, &qword_2804FB8D8, &qword_26D3A5070);
  sub_26D34856C(&v77, &v71, &qword_2804FB888, &qword_26D3A4FD8);
  sub_26D34856C(&v75, &v71, &qword_2804FB848, &qword_26D3A4F88);
  v20 = sub_26D3A10B8();
  v21 = swift_allocObject();
  *(v21 + 16) = v20;
  *(v21 + 24) = v16;
  v22 = *(v2 + 16);
  *(v21 + 32) = *v2;
  *(v21 + 48) = v22;
  *(v21 + 64) = *(v2 + 32);
  *(v21 + 80) = *(v2 + 48);
  *(v21 + 88) = v19;
  sub_26D3A0E28();
  v24 = v71;
  v23 = v72;
  v25 = v73;
  v26 = [v19 _subcomponents];
  if (v26)
  {
    v27 = v26;
    sub_26D345E5C(0, &qword_2804FB890, 0x277D76360);
    v28 = sub_26D3A1058();

    v58 = &v57;
    v30 = MEMORY[0x28223BE20](v29);
    *(&v57 - 2) = v28;
    *(&v57 - 1) = v3;
    MEMORY[0x28223BE20](v30);
    *(&v57 - 4) = v19;
    *(&v57 - 3) = v24;
    v57 = v24;
    *(&v57 - 2) = v23;
    *(&v57 - 8) = v25;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FB900, &unk_26D3A5090);
    v59 = sub_26D37E044(&qword_2804FB868, type metadata accessor for TFToggle, &unk_26D3A64A0);
    sub_26D37E5C4();
    v31 = v60;
    sub_26D3A0958();

    v70 = 0;
    sub_26D3A0D48();
    v32 = v71;
    v33 = v72;
    LOBYTE(v71) = 0;
    LOBYTE(v72) = v32;
    v73 = v33;
    v34 = sub_26D3484AC(&qword_2804FB8D0, &qword_2804FB8C8, &qword_26D3A5008, MEMORY[0x277CDE5B0]);
    v35 = sub_26D37E178();
    v36 = v62;
    v37 = v66;
    sub_26D3A0C08();

    (*(v61 + 8))(v31, v37);
    v38 = v63;
    v39 = v67;
    (*(v63 + 16))(v68, v36, v67);
    swift_storeEnumTagMultiPayload();
    v71 = v37;
    v72 = &type metadata for TFMenuStyle;
    v73 = v34;
    v74 = v35;
    swift_getOpaqueTypeConformance2();
    sub_26D3A0718();

    return (*(v38 + 8))(v36, v39);
  }

  else
  {
    v41 = v64;
    v42 = [v19 systemImageName];
    if (v42)
    {
      v43 = v42;
      v63 = sub_26D3A0F98();
      v45 = v44;
    }

    else
    {
      v63 = 0;
      v45 = 0;
    }

    v46 = [v19 title];
    v47 = sub_26D3A0F98();
    v49 = v48;

    v50 = v58;
    sub_26D3A0638();
    *v50 = v63;
    v50[1] = v45;
    v51 = (v50 + v41[6]);
    *v51 = v47;
    v51[1] = v49;
    *(v50 + v41[7]) = 1;
    v52 = v50 + v41[8];
    *v52 = v24;
    *(v52 + 1) = v23;
    v52[16] = v25;
    v53 = v50 + v41[9];
    *v53 = swift_getKeyPath();
    v53[8] = 0;
    v54 = v59;
    sub_26D3814AC(v50, v59, type metadata accessor for TFToggle);
    sub_26D381440(v54, v68, type metadata accessor for TFToggle);
    swift_storeEnumTagMultiPayload();
    v55 = sub_26D3484AC(&qword_2804FB8D0, &qword_2804FB8C8, &qword_26D3A5008, MEMORY[0x277CDE5B0]);
    v56 = sub_26D37E178();
    v71 = v66;
    v72 = &type metadata for TFMenuStyle;
    v73 = v55;
    v74 = v56;
    swift_getOpaqueTypeConformance2();
    sub_26D37E044(&qword_2804FB868, type metadata accessor for TFToggle, &unk_26D3A64A0);
    sub_26D3A0718();

    return sub_26D37EEEC(v54, type metadata accessor for TFToggle);
  }
}

uint64_t sub_26D37BA2C@<X0>(uint64_t *a1@<X8>, uint64_t a2@<X0>)
{
  sub_26D37BAFC(a2, a1);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FB898, &qword_26D3A4FF0);
  v4 = a1 + v3[9];
  sub_26D3A0D48();
  *v4 = v9;
  *(v4 + 1) = v10;
  v5 = a1 + v3[10];
  *v5 = swift_getKeyPath();
  v5[8] = 0;
  v6 = a1 + v3[11];
  *v6 = swift_getKeyPath();
  v6[8] = 0;
  v7 = a1 + v3[12];
  result = swift_getKeyPath();
  *v7 = result;
  v7[8] = 0;
  return result;
}

uint64_t sub_26D37BAFC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FB398, &qword_26D3A33C0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v28 - v5;
  v7 = *a1;
  v8 = [*a1 systemImageName];
  if (v8)
  {
    v9 = v8;
    v10 = sub_26D3A0F98();
    v12 = v11;
  }

  else
  {
    v10 = 0;
    v12 = 0;
  }

  v13 = sub_26D33CED8(*(a1 + 24), *(a1 + 32) | (*(a1 + 33) << 8));
  if ((v14 & 1) != 0 || v13 > 2 || (v15 = [v7 systemImageName]) == 0)
  {
    v18 = [v7 title];
    v16 = sub_26D3A0F98();
    v17 = v19;
  }

  else
  {

    v16 = 0;
    v17 = 0;
  }

  if (*(a1 + 8))
  {
    swift_getKeyPath();
    swift_getKeyPath();

    sub_26D39FF68();

    v20 = sub_26D3A1298();
    if ((*(*(v20 - 8) + 48))(v6, 1, v20))
    {
      sub_26D3481A4(v6, &qword_2804FB398, &qword_26D3A33C0);
      v21 = 0;
    }

    else
    {
      sub_26D3A1248();
      sub_26D3481A4(v6, &qword_2804FB398, &qword_26D3A33C0);
      v22 = [v7 componentKey];
      v21 = sub_26D34862C();
    }

    v23 = type metadata accessor for TFLabel(0);
    sub_26D3A0638();
    *a2 = v10;
    a2[1] = v12;
    v24 = (a2 + v23[6]);
    *v24 = v16;
    v24[1] = v17;
    *(a2 + v23[7]) = v21 & 1;
    v25 = a2 + v23[8];
    *v25 = swift_getKeyPath();
    v25[8] = 0;
    v26 = a2 + v23[9];
    result = swift_getKeyPath();
    *v26 = result;
    v26[8] = 0;
  }

  else
  {
    type metadata accessor for TextFormattingState(0);
    sub_26D37E044(&qword_2804FADC0, type metadata accessor for TextFormattingState, &unk_26D3A3700);
    result = sub_26D3A02B8();
    __break(1u);
  }

  return result;
}

uint64_t sub_26D37BE1C@<X0>(id *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X8>)
{
  v39 = a4;
  v37 = a2;
  v38 = a3;
  v41 = a5;
  v42 = sub_26D3A0848();
  v40 = *(v42 - 8);
  MEMORY[0x28223BE20](v42);
  v7 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for TFAnimatedText(0);
  v9 = (v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FB928, &qword_26D3A50A8);
  v13 = v12 - 8;
  MEMORY[0x28223BE20](v12);
  v15 = &v36 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FB930, &qword_26D3A50B0);
  MEMORY[0x28223BE20](v16);
  v18 = &v36 - v17;
  v19 = [*a1 title];
  v20 = sub_26D3A0F98();
  v22 = v21;

  *v11 = v20;
  *(v11 + 1) = v22;
  v23 = v38;
  *(v11 + 2) = v37;
  *(v11 + 3) = v23;
  LOBYTE(v19) = v39;
  v11[32] = v39;
  v24 = v9[9];
  *&v11[v24] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FB310, &qword_26D3A3118);
  swift_storeEnumTagMultiPayload();
  v25 = v9[10];
  *&v11[v25] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FB318, &unk_26D3A3120);
  swift_storeEnumTagMultiPayload();
  v26 = &v11[v9[11]];
  *v26 = swift_getKeyPath();
  v26[8] = 0;
  v27 = &v11[v9[12]];
  *v27 = swift_getKeyPath();
  v27[8] = 0;
  v28 = &v11[v9[13]];
  *v28 = swift_getKeyPath();
  v28[8] = 0;

  sub_26D3A0EA8();
  sub_26D3A0268();
  sub_26D3814AC(v11, v15, type metadata accessor for TFAnimatedText);
  v29 = &v15[*(v13 + 44)];
  v30 = v48;
  *(v29 + 4) = v47;
  *(v29 + 5) = v30;
  *(v29 + 6) = v49;
  v31 = v44;
  *v29 = v43;
  *(v29 + 1) = v31;
  v32 = v46;
  *(v29 + 2) = v45;
  *(v29 + 3) = v32;
  v33 = sub_26D3A0138();
  sub_26D347238(v15, v18, &qword_2804FB928, &qword_26D3A50A8);
  v34 = &v18[*(v16 + 36)];
  *v34 = 0;
  v34[1] = v19;
  *(v34 + 1) = 0;
  *(v34 + 1) = v33;
  sub_26D3A0838();
  sub_26D37E7F0();
  sub_26D3A0B48();
  (*(v40 + 8))(v7, v42);
  return sub_26D3481A4(v18, &qword_2804FB930, &qword_26D3A50B0);
}

uint64_t sub_26D37C218(uint64_t a1)
{
  v2 = sub_26D3A12F8();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = (&v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *(a1 + 8);
  if (v6)
  {
    v7 = *(v6 + OBJC_IVAR____TtC16TextFormattingUI19TextFormattingState_didChangeValue);
    v8 = *a1;

    *v5 = [v8 componentKey];
    (*(v3 + 104))(v5, *MEMORY[0x277D74F30], v2);
    v7(v5, 0);

    return (*(v3 + 8))(v5, v2);
  }

  else
  {
    type metadata accessor for TextFormattingState(0);
    sub_26D37E044(&qword_2804FADC0, type metadata accessor for TextFormattingState, &unk_26D3A3700);
    result = sub_26D3A02B8();
    __break(1u);
  }

  return result;
}

uint64_t sub_26D37C3C0(uint64_t a1, uint64_t a2)
{
  v9 = a1;
  swift_getKeyPath();
  v3 = *a2;
  v14 = *(a2 + 8);
  v12 = *(a2 + 24);
  v13 = *(a2 + 32);
  v10 = *(a2 + 40);
  v11 = *(a2 + 48);
  v4 = swift_allocObject();
  v5 = *(a2 + 16);
  *(v4 + 16) = *a2;
  *(v4 + 32) = v5;
  *(v4 + 48) = *(a2 + 32);
  *(v4 + 64) = *(a2 + 48);

  v6 = v3;
  sub_26D34856C(&v14, v8, &qword_2804FB8D8, &qword_26D3A5070);
  sub_26D34856C(&v12, v8, &qword_2804FB888, &qword_26D3A4FD8);
  sub_26D34856C(&v10, v8, &qword_2804FB848, &qword_26D3A4F88);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FB8E0, &qword_26D3A5078);
  sub_26D3484AC(&qword_2804FB8E8, &qword_2804FB8E0, &qword_26D3A5078, MEMORY[0x277D83980]);
  return sub_26D3A0E58();
}

uint64_t sub_26D37C564@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FB8C0, &qword_26D3A5000);
  MEMORY[0x28223BE20](v4);
  sub_26D37B128(*a1, (&v7 - v5));
  sub_26D37E274();
  result = sub_26D3A0DE8();
  *a2 = result;
  return result;
}

uint64_t sub_26D37C618@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  v26 = a5;
  v9 = type metadata accessor for TFToggle(0);
  MEMORY[0x28223BE20](v9);
  v11 = (&v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = [a1 systemImageName];
  if (v12)
  {
    v13 = v12;
    v14 = sub_26D3A0F98();
    v16 = v15;
  }

  else
  {
    v14 = 0;
    v16 = 0;
  }

  v17 = [a1 title];
  v18 = sub_26D3A0F98();
  v20 = v19;

  sub_26D3A0638();
  *v11 = v14;
  v11[1] = v16;
  v21 = (v11 + v9[6]);
  *v21 = v18;
  v21[1] = v20;
  *(v11 + v9[7]) = 0;
  v22 = v11 + v9[8];
  *v22 = a2;
  *(v22 + 1) = a3;
  v22[16] = a4 & 1;
  v23 = v11 + v9[9];
  *v23 = swift_getKeyPath();
  v23[8] = 0;
  sub_26D3814AC(v11, v26, type metadata accessor for TFToggle);
}

uint64_t sub_26D37C7A8@<X0>(uint64_t a1@<X2>, void *a2@<X3>, _BYTE *a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FB398, &qword_26D3A33C0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v14 - v7;
  if (*(a1 + 8))
  {
    swift_getKeyPath();
    swift_getKeyPath();

    sub_26D39FF68();

    v9 = sub_26D3A1298();
    if ((*(*(v9 - 8) + 48))(v8, 1, v9))
    {
      result = sub_26D3481A4(v8, &qword_2804FB398, &qword_26D3A33C0);
      v11 = 0;
    }

    else
    {
      sub_26D3A1248();
      sub_26D3481A4(v8, &qword_2804FB398, &qword_26D3A33C0);
      v12 = [a2 componentKey];
      v13 = sub_26D34862C();

      v11 = v13 & 1;
    }

    *a3 = v11;
  }

  else
  {
    type metadata accessor for TextFormattingState(0);
    sub_26D37E044(&qword_2804FADC0, type metadata accessor for TextFormattingState, &unk_26D3A3700);
    result = sub_26D3A02B8();
    __break(1u);
  }

  return result;
}

uint64_t sub_26D37C9A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v7 = sub_26D3A12F8();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = (&v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = *(a4 + 8);
  if (v11)
  {
    v12 = *(v11 + OBJC_IVAR____TtC16TextFormattingUI19TextFormattingState_didChangeValue);

    *v10 = [a5 componentKey];
    (*(v8 + 104))(v10, *MEMORY[0x277D74F30], v7);
    v12(v10, 0);

    return (*(v8 + 8))(v10, v7);
  }

  else
  {
    type metadata accessor for TextFormattingState(0);
    sub_26D37E044(&qword_2804FADC0, type metadata accessor for TextFormattingState, &unk_26D3A3700);
    result = sub_26D3A02B8();
    __break(1u);
  }

  return result;
}

void *sub_26D37CB8C@<X0>(_BYTE *a1@<X8>)
{
  sub_26D37E450();
  result = sub_26D3A0518();
  *a1 = v3;
  return result;
}

uint64_t sub_26D37CC78@<X0>(_BYTE *a1@<X8>)
{
  result = sub_26D3A0438();
  *a1 = result & 1;
  return result;
}

uint64_t sub_26D37CCA8@<X0>(uint64_t a1@<X8>)
{
  result = sub_26D3A04D8();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_26D37CD0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(char *))
{
  v8 = a5(0);
  MEMORY[0x28223BE20](v8);
  v10 = &v13 - v9;
  (*(v11 + 16))(&v13 - v9, a1);
  return a6(v10);
}

__n128 sub_26D37CDDC@<Q0>(__n128 *a1@<X8>)
{
  type metadata accessor for TextFormattingState(0);
  sub_26D37E044(&qword_2804FADC0, type metadata accessor for TextFormattingState, &unk_26D3A3700);
  v2 = sub_26D3A02D8();
  v4 = v3;
  KeyPath = swift_getKeyPath();
  v6 = swift_getKeyPath();
  v7 = swift_getKeyPath();
  v8 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FB7A8, &qword_26D3A4010);
  sub_26D3A0D48();
  result = v10;
  a1->n128_u64[0] = v2;
  a1->n128_u64[1] = v4;
  a1[1].n128_u64[0] = KeyPath;
  a1[1].n128_u8[8] = 0;
  a1[1].n128_u8[9] = 0;
  a1[2].n128_u64[0] = v6;
  a1[2].n128_u8[8] = 0;
  a1[3].n128_u64[0] = v7;
  a1[3].n128_u8[8] = 0;
  a1[4].n128_u64[0] = v8;
  a1[4].n128_u8[8] = 0;
  a1[5] = v10;
  a1[6].n128_u64[0] = v11;
  return result;
}

__n128 __swift_memcpy49_8(uint64_t a1, uint64_t a2)
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

uint64_t sub_26D37CF6C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 49))
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

uint64_t sub_26D37CFB4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 49) = 1;
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

    *(result + 49) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
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

uint64_t sub_26D37D030(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 96))
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

uint64_t sub_26D37D08C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 96) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 96) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

__n128 __swift_memcpy26_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 10) = *(a2 + 10);
  *a1 = result;
  return result;
}

uint64_t sub_26D37D144(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 72))
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

uint64_t sub_26D37D1A0(uint64_t result, unsigned int a2, unsigned int a3)
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
      *result = a2;
    }
  }

  return result;
}

__n128 __swift_memcpy34_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_26D37D228(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 34))
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

uint64_t sub_26D37D284(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 34) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 34) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_26D37D2FC(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 26))
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

uint64_t sub_26D37D358(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 26) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 26) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_26D37D3D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FB7B0, &unk_26D3A4530);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 28);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_26D37D4B0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FB7B0, &unk_26D3A4530);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for TFTextAlignmentControl(uint64_t a1)
{
  result = qword_2804FB7B8;
  if (!qword_2804FB7B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_26D37D5AC(uint64_t a1)
{
  sub_26D37D670(319);
  if (v1 <= 0x3F)
  {
    sub_26D37D704(319);
    if (v2 <= 0x3F)
    {
      sub_26D37D768(319);
      if (v3 <= 0x3F)
      {
        sub_26D37D7C0();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_26D37D670(uint64_t a1)
{
  if (!qword_2804FB7C8)
  {
    type metadata accessor for TextFormattingState(255);
    sub_26D37E044(&qword_2804FADC0, type metadata accessor for TextFormattingState, &unk_26D3A3700);
    v1 = sub_26D3A02E8();
    if (!v2)
    {
      atomic_store(v1, &qword_2804FB7C8);
    }
  }
}

void sub_26D37D704(uint64_t a1)
{
  if (!qword_2804FB7D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804FB7D8, &qword_26D3A7300);
    v1 = sub_26D3A0038();
    if (!v2)
    {
      atomic_store(v1, &qword_2804FB7D0);
    }
  }
}

void sub_26D37D768(uint64_t a1)
{
  if (!qword_2804FB7E0)
  {
    sub_26D3A0208();
    v1 = sub_26D3A0038();
    if (!v2)
    {
      atomic_store(v1, &qword_2804FB7E0);
    }
  }
}

void sub_26D37D7C0()
{
  if (!qword_2804FC410)
  {
    v0 = sub_26D3A0038();
    if (!v1)
    {
      atomic_store(v0, &qword_2804FC410);
    }
  }
}

uint64_t sub_26D37D810(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 81))
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

uint64_t sub_26D37D86C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 80) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 81) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 81) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

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

uint64_t sub_26D37D8FC(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 41))
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

uint64_t sub_26D37D958(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

__n128 __swift_memcpy57_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 41) = *(a2 + 41);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_26D37D9E4(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 57))
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

uint64_t sub_26D37DA40(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 57) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 57) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

__n128 __swift_memcpy104_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 96) = *(a2 + 12);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_26D37DAE0(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 104))
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

uint64_t sub_26D37DB3C(uint64_t result, unsigned int a2, unsigned int a3)
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
      *result = a2;
    }
  }

  return result;
}

void *sub_26D37DD34@<X0>(_BYTE *a1@<X8>)
{
  sub_26D37DED0();
  result = sub_26D3A0518();
  *a1 = v3;
  return result;
}

unint64_t sub_26D37DDD0(void *a1)
{
  v2 = [a1 _textAnimationName];
  if (v2)
  {
    v3 = v2;
    v4 = sub_26D3A0F98();
    v6 = v5;

    v10 = 0x6566666574786574;
  }

  else
  {
    sub_26D3A13C8();

    v10 = 0xD000000000000010;
    v7 = [a1 componentKey];
    v4 = sub_26D3A0F98();
    v6 = v8;
  }

  MEMORY[0x26D6BD800](v4, v6);

  return v10;
}

unint64_t sub_26D37DED0()
{
  result = qword_2804FB800;
  if (!qword_2804FB800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804FB800);
  }

  return result;
}

uint64_t sub_26D37DF24(uint64_t result, uint64_t a2, char a3)
{
  if ((a3 & 1) == 0)
  {
  }

  return v3;
}

unint64_t sub_26D37DF5C()
{
  result = qword_2804FB850;
  if (!qword_2804FB850)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804FB818, &unk_26D3A4F50);
    sub_26D3484AC(&qword_2804FB858, &qword_2804FB810, &qword_26D3A4F48, &unk_26D3A64F0);
    sub_26D37E044(&qword_2804FC8E0, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804FB850);
  }

  return result;
}

uint64_t sub_26D37E044(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_26D37E08C()
{
  result = qword_2804FB860;
  if (!qword_2804FB860)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804FB820, &qword_26D3A4F60);
    sub_26D37E044(&qword_2804FB868, type metadata accessor for TFToggle, &unk_26D3A64A0);
    sub_26D37E044(&qword_2804FC8E0, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804FB860);
  }

  return result;
}

unint64_t sub_26D37E178()
{
  result = qword_2804FB878;
  if (!qword_2804FB878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804FB878);
  }

  return result;
}

unint64_t sub_26D37E1CC()
{
  result = qword_2804FB880;
  if (!qword_2804FB880)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804FB840, &qword_26D3A4F80);
    sub_26D37DF5C();
    sub_26D37E08C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804FB880);
  }

  return result;
}

unint64_t sub_26D37E274()
{
  result = qword_2804FB8B8;
  if (!qword_2804FB8B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804FB8C0, &qword_26D3A5000);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804FB8C8, &qword_26D3A5008);
    sub_26D3484AC(&qword_2804FB8D0, &qword_2804FB8C8, &qword_26D3A5008, MEMORY[0x277CDE5B0]);
    sub_26D37E178();
    swift_getOpaqueTypeConformance2();
    sub_26D37E044(&qword_2804FB868, type metadata accessor for TFToggle, &unk_26D3A64A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804FB8B8);
  }

  return result;
}

void *sub_26D37E3B4@<X0>(_BYTE *a1@<X8>)
{
  sub_26D37E450();
  result = sub_26D3A0518();
  *a1 = v3;
  return result;
}

unint64_t sub_26D37E450()
{
  result = qword_2804FC3D0;
  if (!qword_2804FC3D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804FC3D0);
  }

  return result;
}

id sub_26D37E4B0@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 componentKey];
  *a2 = result;
  return result;
}

uint64_t sub_26D37E4EC@<X0>(uint64_t *a2@<X8>)
{
  result = sub_26D3A0F98();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t objectdestroyTm_0()
{
  swift_unknownObjectRelease();

  sub_26D3484F4(*(v0 + 56), *(v0 + 64), *(v0 + 65));
  sub_26D34684C(*(v0 + 72), *(v0 + 80));

  return MEMORY[0x2821FE8E8](v0, 96, 7);
}

unint64_t sub_26D37E5C4()
{
  result = qword_2804FB908;
  if (!qword_2804FB908)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804FB900, &unk_26D3A5090);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804FB908);
  }

  return result;
}

uint64_t objectdestroy_105Tm()
{

  sub_26D3484F4(*(v0 + 40), *(v0 + 48), *(v0 + 49));
  sub_26D34684C(*(v0 + 56), *(v0 + 64));

  return MEMORY[0x2821FE8E8](v0, 65, 7);
}

unint64_t sub_26D37E6A4()
{
  result = qword_2804FB910;
  if (!qword_2804FB910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804FB910);
  }

  return result;
}

uint64_t sub_26D37E7C0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_26D3A0438();
  *a1 = result & 1;
  return result;
}

unint64_t sub_26D37E7F0()
{
  result = qword_2804FB938;
  if (!qword_2804FB938)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804FB930, &qword_26D3A50B0);
    sub_26D37E87C();
    sub_26D37E938();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804FB938);
  }

  return result;
}

unint64_t sub_26D37E87C()
{
  result = qword_2804FB940;
  if (!qword_2804FB940)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804FB928, &qword_26D3A50A8);
    sub_26D37E044(&qword_2804FB948, type metadata accessor for TFAnimatedText, &unk_26D3A6390);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804FB940);
  }

  return result;
}

unint64_t sub_26D37E938()
{
  result = qword_2804FC790;
  if (!qword_2804FC790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804FC790);
  }

  return result;
}

unint64_t sub_26D37E98C()
{
  result = qword_2804FB9A0;
  if (!qword_2804FB9A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804FB988, &qword_26D3A5190);
    sub_26D37EA48();
    sub_26D37E044(&qword_2804FC8E0, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804FB9A0);
  }

  return result;
}

unint64_t sub_26D37EA48()
{
  result = qword_2804FB9A8;
  if (!qword_2804FB9A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804FB9B0, &qword_26D3A51A0);
    sub_26D37EAD4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804FB9A8);
  }

  return result;
}

unint64_t sub_26D37EAD4()
{
  result = qword_2804FB9B8;
  if (!qword_2804FB9B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804FB9C0, &unk_26D3A51A8);
    sub_26D37E044(&qword_2804FB868, type metadata accessor for TFToggle, &unk_26D3A64A0);
    sub_26D3484AC(&qword_2804FB2F0, &qword_2804FB2F8, &qword_26D3A3100, MEMORY[0x277CE08A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804FB9B8);
  }

  return result;
}

unint64_t sub_26D37EBCC()
{
  result = qword_2804FB9E0;
  if (!qword_2804FB9E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804FB9D0, &qword_26D3A51C0);
    sub_26D37EC50();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804FB9E0);
  }

  return result;
}

unint64_t sub_26D37EC50()
{
  result = qword_2804FB9E8;
  if (!qword_2804FB9E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804FB9F0, &qword_26D3A51C8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804FB9F8, &qword_26D3A51D0);
    sub_26D3A0288();
    sub_26D3484AC(&qword_2804FBA00, &qword_2804FB9F8, &qword_26D3A51D0, MEMORY[0x277CDF068]);
    sub_26D37E044(&qword_2804FBA08, MEMORY[0x277CDDBD0], MEMORY[0x277CDDBC8]);
    swift_getOpaqueTypeConformance2();
    sub_26D37E044(&qword_2804FC8E0, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804FB9E8);
  }

  return result;
}

uint64_t sub_26D37EDCC(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

unint64_t sub_26D37EDDC()
{
  result = qword_2804FBA18;
  if (!qword_2804FBA18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804FB970, &qword_26D3A5178);
    sub_26D3484AC(&qword_2804FBA10, &qword_2804FB968, &qword_26D3A5170, MEMORY[0x277CDE5B0]);
    sub_26D37E044(&qword_2804FC8E0, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804FBA18);
  }

  return result;
}

uint64_t sub_26D37EEEC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

double sub_26D37EFB0(_OWORD *a1)
{
  result = 0.0;
  a1[11] = 0u;
  a1[12] = 0u;
  a1[9] = 0u;
  a1[10] = 0u;
  a1[7] = 0u;
  a1[8] = 0u;
  a1[5] = 0u;
  a1[6] = 0u;
  a1[3] = 0u;
  a1[4] = 0u;
  a1[1] = 0u;
  a1[2] = 0u;
  *a1 = 0u;
  return result;
}

uint64_t objectdestroy_165Tm()
{
  swift_unknownObjectRelease();

  sub_26D3484F4(*(v0 + 56), *(v0 + 64), *(v0 + 65));
  sub_26D34684C(*(v0 + 72), *(v0 + 80));
  sub_26D34684C(*(v0 + 88), *(v0 + 96));
  sub_26D34684C(*(v0 + 104), *(v0 + 112));

  return MEMORY[0x2821FE8E8](v0, 136, 7);
}

unint64_t sub_26D37F0D4()
{
  result = qword_2804FBA90;
  if (!qword_2804FBA90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804FBA88, &qword_26D3A5310);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804FBA90);
  }

  return result;
}

unint64_t sub_26D37F20C()
{
  result = qword_2804FBB18;
  if (!qword_2804FBB18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804FBAA8, &qword_26D3A5378);
    sub_26D3484AC(&qword_2804FBB20, &qword_2804FBB28, &qword_26D3A53E0, MEMORY[0x277CDD6E0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804FBB18);
  }

  return result;
}

unint64_t sub_26D37F2D4()
{
  result = qword_2804FBB30;
  if (!qword_2804FBB30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804FBAB0, &qword_26D3A5380);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804FBAA8, &qword_26D3A5378);
    sub_26D37F20C();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804FBB30);
  }

  return result;
}

unint64_t sub_26D37F3B0()
{
  result = qword_2804FBB40;
  if (!qword_2804FBB40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804FBAF0, &qword_26D3A53C0);
    sub_26D37F43C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804FBB40);
  }

  return result;
}

unint64_t sub_26D37F43C()
{
  result = qword_2804FBB48;
  if (!qword_2804FBB48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804FBAE8, &qword_26D3A53B8);
    sub_26D3484AC(&qword_2804FBB50, &qword_2804FBAE0, &qword_26D3A53B0, &unk_26D3A6540);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804FBB48);
  }

  return result;
}

unint64_t sub_26D37F4F4()
{
  result = qword_2804FBB58;
  if (!qword_2804FBB58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804FBAD0, &qword_26D3A53A0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804FBAC0, &qword_26D3A5390);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804FBAB8, &qword_26D3A5388);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804FBAB0, &qword_26D3A5380);
    sub_26D37F2D4();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_26D3484AC(&qword_2804FBB38, &qword_2804FBA98, &qword_26D3A5368, &unk_26D3A6540);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804FBB58);
  }

  return result;
}

uint64_t sub_26D37F664(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    sub_26D3484AC(&qword_2804FBB90, &qword_2804FBB98, &qword_26D3A5408, MEMORY[0x277CDF068]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_26D37F704@<X0>(uint64_t *a2@<X8>)
{
  result = sub_26D3A12C8();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_26D37F73C@<X0>(_BYTE *a1@<X8>)
{
  sub_26D3A12D8();

  return sub_26D35B78C((v1 + 32), a1);
}

uint64_t objectdestroy_215Tm()
{
  v1 = sub_26D3A12D8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 136) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();

  sub_26D3484F4(*(v0 + 48), *(v0 + 56), *(v0 + 57));
  sub_26D34684C(*(v0 + 64), *(v0 + 72));
  sub_26D34684C(*(v0 + 80), *(v0 + 88));
  sub_26D34684C(*(v0 + 96), *(v0 + 104));

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_26D37F8C4(_BYTE *a1)
{
  sub_26D3A12D8();
  v3 = v1[2];
  v4 = v1[3];

  return sub_26D35B9AC(a1, v3, v4, v1 + 4);
}

uint64_t objectdestroy_188Tm(uint64_t a1)
{

  sub_26D3484F4(*(v1 + 32), *(v1 + 40), *(v1 + 41));
  sub_26D34684C(*(v1 + 48), *(v1 + 56));
  sub_26D34684C(*(v1 + 64), *(v1 + 72));
  sub_26D34684C(*(v1 + 80), *(v1 + 88));

  return MEMORY[0x2821FE8E8](v1, a1, 7);
}

uint64_t sub_26D37F9E0()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_26D37FA18(char *a1)
{
  v3 = *(v1 + 16);
  v4 = *a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FBC08, &qword_26D3A54F8);
  return v3(v4, &a1[*(v5 + 48)]);
}

unint64_t sub_26D37FA80()
{
  result = qword_2804FBBD0;
  if (!qword_2804FBBD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804FBBC0, &qword_26D3A54D8);
    sub_26D3484AC(&qword_2804FBBB0, &qword_2804FB630, &qword_26D3A3660, MEMORY[0x277D83980]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804FBBD0);
  }

  return result;
}

unint64_t sub_26D37FB30()
{
  result = qword_2804FBBD8;
  if (!qword_2804FBBD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804FBBC8, &qword_26D3A54E0);
    sub_26D37FBEC();
    sub_26D37E044(&qword_2804FC8E0, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804FBBD8);
  }

  return result;
}

unint64_t sub_26D37FBEC()
{
  result = qword_2804FBBE0;
  if (!qword_2804FBBE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804FBBE8, &qword_26D3A54E8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804FBBF0, &qword_26D3A54F0);
    sub_26D3484AC(&qword_2804FBBF8, &qword_2804FBBF0, &qword_26D3A54F0, MEMORY[0x277CDF028]);
    sub_26D37FCFC();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804FBBE0);
  }

  return result;
}

unint64_t sub_26D37FCFC()
{
  result = qword_2804FBC00;
  if (!qword_2804FBC00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804FBC00);
  }

  return result;
}

uint64_t sub_26D37FD50()
{
  v1 = sub_26D3A12D8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 120) & ~v3;
  v5 = *(v2 + 64);

  sub_26D3484F4(*(v0 + 32), *(v0 + 40), *(v0 + 41));
  sub_26D34684C(*(v0 + 48), *(v0 + 56));
  sub_26D34684C(*(v0 + 64), *(v0 + 72));
  sub_26D34684C(*(v0 + 80), *(v0 + 88));

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_26D37FE58()
{
  v1 = *(sub_26D3A12D8() - 8);
  v2 = v0 + ((*(v1 + 80) + 120) & ~*(v1 + 80));

  return sub_26D35CAD4((v0 + 16), v2);
}

unint64_t sub_26D37FEC4()
{
  result = qword_2804FBC20;
  if (!qword_2804FBC20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804FBC18, &qword_26D3A5508);
    sub_26D37FF80();
    sub_26D37E044(&qword_2804FBC28, type metadata accessor for TFFontModifier, &unk_26D3A744C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804FBC20);
  }

  return result;
}

unint64_t sub_26D37FF80()
{
  result = qword_2804FCAC0;
  if (!qword_2804FCAC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804FCAC0);
  }

  return result;
}

uint64_t objectdestroy_246Tm()
{
  swift_unknownObjectRelease();

  sub_26D3484F4(*(v0 + 48), *(v0 + 56), *(v0 + 57));
  sub_26D34684C(*(v0 + 64), *(v0 + 72));
  sub_26D34684C(*(v0 + 80), *(v0 + 88));

  return MEMORY[0x2821FE8E8](v0, 104, 7);
}

unint64_t sub_26D3801C8()
{
  result = qword_2804FBCF0;
  if (!qword_2804FBCF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804FBCC0, &qword_26D3A5710);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804FBCC8, &qword_26D3A5718);
    sub_26D3484AC(&qword_2804FBCF8, &qword_2804FBCC8, &qword_26D3A5718, MEMORY[0x277CDE5B0]);
    sub_26D37E178();
    swift_getOpaqueTypeConformance2();
    sub_26D3484AC(&qword_2804FBD00, &qword_2804FBCA8, &qword_26D3A56F8, MEMORY[0x277CE14C0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804FBCF0);
  }

  return result;
}

unint64_t sub_26D380304()
{
  result = qword_2804FBD08;
  if (!qword_2804FBD08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804FBC98, &qword_26D3A56E8);
    v1 = MEMORY[0x277CE14C0];
    sub_26D3484AC(&qword_2804FBCE0, &qword_2804FBCA0, &qword_26D3A56F0, MEMORY[0x277CE14C0]);
    sub_26D3484AC(&qword_2804FBCE8, &qword_2804FBC88, &qword_26D3A56D8, v1);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804FBD08);
  }

  return result;
}

unint64_t sub_26D3803EC()
{
  result = qword_2804FBD28;
  if (!qword_2804FBD28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804FBD20, &qword_26D3A5740);
    sub_26D380470();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804FBD28);
  }

  return result;
}

unint64_t sub_26D380470()
{
  result = qword_2804FBD30;
  if (!qword_2804FBD30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804FBD38, &qword_26D3A5748);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804FBD40, &qword_26D3A5750);
    sub_26D3484AC(&qword_2804FBD48, &qword_2804FBD40, &qword_26D3A5750, MEMORY[0x277CDE5B0]);
    sub_26D37E178();
    swift_getOpaqueTypeConformance2();
    sub_26D3484AC(&qword_2804FBD50, &qword_2804FBD58, &qword_26D3A5758, &unk_26D3A6540);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804FBD30);
  }

  return result;
}

uint64_t sub_26D3805BC@<X0>(uint64_t a1@<X8>)
{
  result = sub_26D3A04D8();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_26D380674(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  if (a7)
  {
    sub_26D3806E8(a1, a2, a3 & 1);
  }

  else
  {
    sub_26D3806E8(a1, a2, a3 & 1);
  }
}

uint64_t sub_26D3806E8(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

unint64_t sub_26D3806F8()
{
  result = qword_2804FBDC0;
  if (!qword_2804FBDC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804FBDB8, &qword_26D3A5808);
    sub_26D380784();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804FBDC0);
  }

  return result;
}

unint64_t sub_26D380784()
{
  result = qword_2804FBDC8;
  if (!qword_2804FBDC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804FBDD0, &qword_26D3A5810);
    sub_26D380808();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804FBDC8);
  }

  return result;
}

unint64_t sub_26D380808()
{
  result = qword_2804FBDD8;
  if (!qword_2804FBDD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804FBDE0, &qword_26D3A5818);
    sub_26D380894();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804FBDD8);
  }

  return result;
}

unint64_t sub_26D380894()
{
  result = qword_2804FBDE8;
  if (!qword_2804FBDE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804FBDF0, &qword_26D3A5820);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804FBDE8);
  }

  return result;
}

uint64_t sub_26D380918(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  if (a7)
  {
    sub_26D37EDCC(a1, a2, a3 & 1);
  }

  else
  {
    sub_26D37EDCC(a1, a2, a3 & 1);
  }
}

id sub_26D380984@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 fontDescriptor];
  *a2 = result;
  return result;
}

unint64_t sub_26D3809CC()
{
  result = qword_2804FBE10;
  if (!qword_2804FBE10)
  {
    sub_26D345E5C(255, &qword_2804FBE18, 0x277D74310);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804FBE10);
  }

  return result;
}

uint64_t objectdestroy_339Tm()
{
  swift_unknownObjectRelease();

  sub_26D3484F4(*(v0 + 48), *(v0 + 56), *(v0 + 57));
  sub_26D34684C(*(v0 + 64), *(v0 + 72));

  return MEMORY[0x2821FE8E8](v0, 88, 7);
}

uint64_t objectdestroy_324Tm()
{

  sub_26D3484F4(*(v0 + 32), *(v0 + 40), *(v0 + 41));
  sub_26D34684C(*(v0 + 48), *(v0 + 56));

  return MEMORY[0x2821FE8E8](v0, 57, 7);
}

unint64_t sub_26D380B70()
{
  result = qword_2804FBE90;
  if (!qword_2804FBE90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804FBE80, &qword_26D3A5950);
    sub_26D380C2C();
    sub_26D37E044(&qword_2804FC7D0, type metadata accessor for TFSymbol, &unk_26D3A62F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804FBE90);
  }

  return result;
}

unint64_t sub_26D380C2C()
{
  result = qword_2804FBE98;
  if (!qword_2804FBE98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804FBEA0, &qword_26D3A5960);
    sub_26D380CB8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804FBE98);
  }

  return result;
}

unint64_t sub_26D380CB8()
{
  result = qword_2804FBEA8;
  if (!qword_2804FBEA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804FBEB0, &qword_26D3A5968);
    sub_26D380D70();
    sub_26D3484AC(&unk_2804FC950, &qword_2804FB0D0, &qword_26D3A2D70, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804FBEA8);
  }

  return result;
}

unint64_t sub_26D380D70()
{
  result = qword_2804FBEB8;
  if (!qword_2804FBEB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804FBEC0, &qword_26D3A5970);
    sub_26D380E28();
    sub_26D3484AC(&qword_2804FB0B8, &unk_2804FB0C0, &qword_26D3A2D68, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804FBEB8);
  }

  return result;
}

unint64_t sub_26D380E28()
{
  result = qword_2804FBEC8;
  if (!qword_2804FBEC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804FBED0, &qword_26D3A5978);
    sub_26D37FF80();
    sub_26D3484AC(&qword_2804FBED8, &qword_2804FCBD0, &qword_26D3A5980, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804FBEC8);
  }

  return result;
}

uint64_t sub_26D380EE8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_26D3A0398();
  *a1 = result & 1;
  return result;
}

uint64_t sub_26D380F94@<X0>(uint64_t *a1@<X8>)
{
  result = sub_26D3A0CA8();
  *a1 = result;
  return result;
}

uint64_t sub_26D380FF0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_26D3A0CA8();
  *a1 = result;
  return result;
}

unint64_t sub_26D38103C()
{
  result = qword_2804FBF38;
  if (!qword_2804FBF38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804FBF28, &qword_26D3A5A28);
    sub_26D380C2C();
    sub_26D3484AC(&qword_2804FC990, &qword_2804FBF40, &qword_26D3A6890, MEMORY[0x277CE0470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804FBF38);
  }

  return result;
}

uint64_t objectdestroy_177Tm(void (*a1)(void, void), void (*a2)(void, void))
{
  swift_unknownObjectRelease();

  sub_26D3484F4(*(v2 + 56), *(v2 + 64), *(v2 + 65));
  sub_26D34684C(*(v2 + 72), *(v2 + 80));
  a1(*(v2 + 88), *(v2 + 96));
  a2(*(v2 + 104), *(v2 + 112));

  return MEMORY[0x2821FE8E8](v2, 128, 7);
}

uint64_t objectdestroy_162Tm(void (*a1)(void, void), void (*a2)(void, void), uint64_t a3)
{

  sub_26D3484F4(*(v3 + 40), *(v3 + 48), *(v3 + 49));
  sub_26D34684C(*(v3 + 56), *(v3 + 64));
  a1(*(v3 + 72), *(v3 + 80));
  a2(*(v3 + 88), *(v3 + 96));

  return MEMORY[0x2821FE8E8](v3, a3, 7);
}

unint64_t sub_26D38126C()
{
  result = qword_2804FBFE8;
  if (!qword_2804FBFE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804FBC80, &qword_26D3A5658);
    sub_26D37EAD4();
    sub_26D37E044(&qword_2804FC8E0, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804FBFE8);
  }

  return result;
}

unint64_t sub_26D381328()
{
  result = qword_2804FBFF8;
  if (!qword_2804FBFF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804FBFD8, &qword_26D3A5AD0);
    sub_26D3484AC(&qword_2804FC000, &qword_2804FBFD0, &qword_26D3A5AC8, MEMORY[0x277CDE5B0]);
    sub_26D37E044(&qword_2804FC8E0, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804FBFF8);
  }

  return result;
}

uint64_t sub_26D381440(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_26D3814AC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_26D381514@<X0>(_BYTE *a1@<X8>)
{
  v3 = *(type metadata accessor for TFTextAlignmentControl(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));

  return sub_26D36DDCC(v4, a1);
}

uint64_t objectdestroy_390Tm()
{
  v1 = type metadata accessor for TFTextAlignmentControl(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  swift_unknownObjectRelease();
  v5 = v0 + v3;

  sub_26D3484F4(*(v5 + 24), *(v5 + 32), *(v5 + 33));
  v6 = *(v1 + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FB2D8, &qword_26D3A5B20);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_26D3A0208();
    (*(*(v7 - 8) + 8))(v5 + v6, v7);
  }

  else
  {
  }

  sub_26D34684C(*(v5 + *(v1 + 32)), *(v5 + *(v1 + 32) + 8));

  return MEMORY[0x2821FE8E8](v0, ((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 8, v2 | 7);
}

uint64_t sub_26D38171C(char *a1)
{
  v3 = *(type metadata accessor for TFTextAlignmentControl(0) - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);

  return sub_26D36DEAC(a1, v6, v7, v1 + v4, v5);
}

uint64_t sub_26D381848()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_26D3818F4()
{

  sub_26D3484F4(*(v0 + 32), *(v0 + 40), *(v0 + 41));

  return MEMORY[0x2821FE8E8](v0, 42, 7);
}

unint64_t sub_26D3819C0()
{
  result = qword_2804FC0B0;
  if (!qword_2804FC0B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804FC0B0);
  }

  return result;
}

unint64_t sub_26D381A14()
{
  result = qword_2804FC0C0;
  if (!qword_2804FC0C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804FC0B8, &qword_26D3A5C08);
    sub_26D3484AC(&qword_2804FC0C8, &qword_2804FC0D0, &qword_26D3A5C10, MEMORY[0x277CDE5B0]);
    sub_26D37E044(&qword_2804FC8E0, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804FC0C0);
  }

  return result;
}

uint64_t sub_26D381AFC(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
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

uint64_t objectdestroy_438Tm()
{

  sub_26D3484F4(*(v0 + 40), *(v0 + 48), *(v0 + 49));

  return MEMORY[0x2821FE8E8](v0, 50, 7);
}

uint64_t objectdestroy_447Tm(uint64_t a1)
{
  swift_unknownObjectRelease();

  sub_26D3484F4(*(v1 + 56), *(v1 + 64), *(v1 + 65));

  return MEMORY[0x2821FE8E8](v1, a1, 7);
}

uint64_t sub_26D381CA8(uint64_t result, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return v2;
}

unint64_t sub_26D381CBC()
{
  result = qword_2804FC180;
  if (!qword_2804FC180)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804FC160, &qword_26D3A5CD0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804FC150, &qword_26D3A5CC0);
    sub_26D3A0758();
    sub_26D3484AC(&qword_2804FC188, &qword_2804FC150, &qword_26D3A5CC0, MEMORY[0x277CDF028]);
    sub_26D37E044(&qword_2804FC190, MEMORY[0x277CDE0B8], MEMORY[0x277CDE0A0]);
    swift_getOpaqueTypeConformance2();
    sub_26D37E044(&qword_2804FC8E0, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804FC180);
  }

  return result;
}

unint64_t sub_26D381E38()
{
  result = qword_2804FC198;
  if (!qword_2804FC198)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804FC140, &qword_26D3A5CB0);
    sub_26D381EF0();
    sub_26D3484AC(&qword_2804FC7A0, &qword_2804FC1C0, &qword_26D3A5CF0, MEMORY[0x277CE07C8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804FC198);
  }

  return result;
}

unint64_t sub_26D381EF0()
{
  result = qword_2804FC1A0;
  if (!qword_2804FC1A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804FC178, &qword_26D3A5CE0);
    sub_26D381FAC();
    sub_26D37E044(&qword_2804FC1B8, type metadata accessor for TFFrameTracker, &unk_26D3A73FC);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804FC1A0);
  }

  return result;
}

unint64_t sub_26D381FAC()
{
  result = qword_2804FC1A8;
  if (!qword_2804FC1A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804FC1B0, &qword_26D3A5CE8);
    sub_26D3484AC(&qword_2804FC170, &qword_2804FC138, &qword_26D3A5CA8, &unk_26D3A64F0);
    sub_26D37E044(&qword_2804FC8E0, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804FC1A8);
  }

  return result;
}

unint64_t sub_26D3820B8()
{
  result = qword_2804FC1D0;
  if (!qword_2804FC1D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804FC1C8, &qword_26D3A5CF8);
    sub_26D382144();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804FC1D0);
  }

  return result;
}

unint64_t sub_26D382144()
{
  result = qword_2804FC1D8;
  if (!qword_2804FC1D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804FC1E0, &qword_26D3A5D00);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804FC1E8, &qword_26D3A5D08);
    sub_26D382238();
    swift_getOpaqueTypeConformance2();
    sub_26D3484AC(&qword_2804FB2F0, &qword_2804FB2F8, &qword_26D3A3100, MEMORY[0x277CE08A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804FC1D8);
  }

  return result;
}

unint64_t sub_26D382238()
{
  result = qword_2804FC1F0;
  if (!qword_2804FC1F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804FC1E8, &qword_26D3A5D08);
    sub_26D3822C4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804FC1F0);
  }

  return result;
}

unint64_t sub_26D3822C4()
{
  result = qword_2804FC1F8;
  if (!qword_2804FC1F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804FC200, &qword_26D3A5D10);
    sub_26D382350();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804FC1F8);
  }

  return result;
}

unint64_t sub_26D382350()
{
  result = qword_2804FC208;
  if (!qword_2804FC208)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804FC210, &qword_26D3A5D18);
    sub_26D382408();
    sub_26D3484AC(&qword_2804FC7A0, &qword_2804FC1C0, &qword_26D3A5CF0, MEMORY[0x277CE07C8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804FC208);
  }

  return result;
}

unint64_t sub_26D382408()
{
  result = qword_2804FC218;
  if (!qword_2804FC218)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804FC220, &qword_26D3A5D20);
    sub_26D3824E4(&qword_2804FC228, &qword_2804FC230, &qword_26D3A5D28);
    sub_26D37E044(&qword_2804FC1B8, type metadata accessor for TFFrameTracker, &unk_26D3A73FC);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804FC218);
  }

  return result;
}

uint64_t sub_26D3824E4(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    sub_26D3484AC(&qword_2804FC238, &qword_2804FC240, &qword_26D3A5D30, MEMORY[0x277CDD6F8]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_26D382588@<X0>(uint64_t *a1@<X8>)
{
  sub_26D34CB9C();
  result = sub_26D3A0C18();
  *a1 = result;
  return result;
}

uint64_t sub_26D3825B8(void *a1)
{

  sub_26D358CD4(v1);
}

uint64_t objectdestroy_468Tm()
{

  sub_26D3484F4(*(v0 + 32), *(v0 + 40), *(v0 + 41));
  sub_26D34684C(*(v0 + 48), *(v0 + 56));
  sub_26D34684C(*(v0 + 64), *(v0 + 72));

  return MEMORY[0x2821FE8E8](v0, 88, 7);
}

uint64_t objectdestroy_420Tm(uint64_t a1)
{
  swift_unknownObjectRelease();

  sub_26D3484F4(*(v1 + 48), *(v1 + 56), *(v1 + 57));

  return MEMORY[0x2821FE8E8](v1, a1, 7);
}

__n128 __swift_memcpy65_8(uint64_t a1, uint64_t a2)
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

uint64_t sub_26D382804(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 65))
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

uint64_t sub_26D382860(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 65) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 65) = 0;
    }

    if (a2)
    {
      *(result + 32) = a2;
    }
  }

  return result;
}

unint64_t sub_26D3828DC()
{
  result = qword_2804FC298;
  if (!qword_2804FC298)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804FB7F8, &qword_26D3A4F38);
    sub_26D382994();
    sub_26D3484AC(&unk_2804FC950, &qword_2804FB0D0, &qword_26D3A2D70, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804FC298);
  }

  return result;
}

unint64_t sub_26D382994()
{
  result = qword_2804FC2A0;
  if (!qword_2804FC2A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804FC2A8, &qword_26D3A5E78);
    sub_26D3484AC(&qword_2804FB7F0, &qword_2804FB7E8, &unk_26D3A4E90, &unk_26D3A6540);
    sub_26D37E044(&qword_2804FC8E0, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804FC2A0);
  }

  return result;
}

unint64_t sub_26D382AC4()
{
  result = qword_2804FC2B8;
  if (!qword_2804FC2B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804FC2C0, &qword_26D3A5E80);
    sub_26D37F3B0();
    sub_26D37F4F4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804FC2B8);
  }

  return result;
}

unint64_t sub_26D382B54()
{
  result = qword_2804FC2C8;
  if (!qword_2804FC2C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804FC2D0, &qword_26D3A5E88);
    sub_26D3484AC(&qword_2804FBC50, &qword_2804FBC48, &qword_26D3A55C0, MEMORY[0x277CE1138]);
    sub_26D3484AC(&qword_2804FBC58, &qword_2804FBC38, &qword_26D3A55B0, &unk_26D3A6540);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804FC2C8);
  }

  return result;
}

unint64_t sub_26D382C3C()
{
  result = qword_2804FC2D8;
  if (!qword_2804FC2D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804FC2E0, &qword_26D3A5E90);
    sub_26D3803EC();
    sub_26D37E044(&qword_2804FC8E0, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804FC2D8);
  }

  return result;
}

unint64_t sub_26D382CFC()
{
  result = qword_2804FC2E8;
  if (!qword_2804FC2E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804FC2F0, &qword_26D3A5E98);
    sub_26D3484AC(&qword_2804FBE70, &qword_2804FBE68, &qword_26D3A5948, &unk_26D3A6540);
    sub_26D3484AC(&qword_2804FBE78, &qword_2804FBE50, &qword_26D3A5930, &unk_26D3A6540);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804FC2E8);
  }

  return result;
}

unint64_t sub_26D382E68()
{
  result = qword_2804FC308;
  if (!qword_2804FC308)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804FC310, &qword_26D3A5EA0);
    sub_26D3484AC(&qword_2804FC080, &qword_2804FC070, &qword_26D3A5BD8, &unk_26D3A6540);
    sub_26D37E044(&qword_2804FC8E0, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804FC308);
  }

  return result;
}

unint64_t sub_26D382F98()
{
  result = qword_2804FC320;
  if (!qword_2804FC320)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804FC118, &qword_26D3A5C88);
    sub_26D3484AC(&qword_2804FC328, &qword_2804FC110, &qword_26D3A5C50, &unk_26D3A6540);
    sub_26D3484AC(&qword_2804FC330, &qword_2804FC120, &qword_26D3A5C90, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804FC320);
  }

  return result;
}

unint64_t sub_26D383080()
{
  result = qword_2804FC338;
  if (!qword_2804FC338)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804FC288, &qword_26D3A5D98);
    sub_26D3484AC(&qword_2804FC290, &qword_2804FC280, &qword_26D3A5D90, &unk_26D3A6540);
    sub_26D37E044(&qword_2804FC8E0, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804FC338);
  }

  return result;
}

uint64_t objectdestroy_536Tm()
{

  sub_26D34684C(*(v0 + 56), *(v0 + 64));
  sub_26D34684C(*(v0 + 72), *(v0 + 80));

  return MEMORY[0x2821FE8E8](v0, 81, 7);
}

unint64_t sub_26D38327C()
{
  result = qword_2804FC3B0;
  if (!qword_2804FC3B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804FC350, &qword_26D3A5EF0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804FC340, &qword_26D3A5EE0);
    sub_26D3484AC(&qword_2804FC358, &qword_2804FC340, &qword_26D3A5EE0, &unk_26D3A6540);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804FC3B0);
  }

  return result;
}

void *sub_26D3834D4(uint64_t a1, uint64_t a2)
{
  v8 = sub_26D3A0708();
  MEMORY[0x28223BE20](v8);
  (*(*(a2 - 8) + 16))(&v11 - v9, a1, a2);
  swift_storeEnumTagMultiPayload();
  return sub_26D3A0718();
}

void *sub_26D3835CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = sub_26D3A0708();
  MEMORY[0x28223BE20](v8);
  (*(*(a3 - 8) + 16))(&v11 - v9, a1, a3);
  swift_storeEnumTagMultiPayload();
  return sub_26D3A0718();
}

uint64_t sub_26D3836C4(uint64_t *TupleTypeMetadata, unint64_t a2, uint64_t a3)
{
  v5 = TupleTypeMetadata;
  if (a2 == 1)
  {
    v6 = *(a3 & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    MEMORY[0x28223BE20](TupleTypeMetadata);
    v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (a2)
    {
      v9 = 0;
      v10 = a3 & 0xFFFFFFFFFFFFFFFELL;
      if (a2 < 4)
      {
        goto LABEL_9;
      }

      if (&v8[-v10] < 0x20)
      {
        goto LABEL_9;
      }

      v9 = a2 & 0xFFFFFFFFFFFFFFFCLL;
      v11 = (v10 + 16);
      v12 = v8 + 16;
      v13 = a2 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v14 = *v11;
        *(v12 - 1) = *(v11 - 1);
        *v12 = v14;
        v11 += 2;
        v12 += 2;
        v13 -= 4;
      }

      while (v13);
      if (v9 != a2)
      {
LABEL_9:
        v15 = a2 - v9;
        v16 = 8 * v9;
        v17 = &v8[8 * v9];
        v18 = (v10 + v16);
        do
        {
          v19 = *v18++;
          *v17 = v19;
          v17 += 8;
          --v15;
        }

        while (v15);
      }
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
    v6 = TupleTypeMetadata;
  }

  MEMORY[0x28223BE20](TupleTypeMetadata);
  v21 = &v30 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v22 = (a3 & 0xFFFFFFFFFFFFFFFELL);
    v23 = (v6 + 32);
    v24 = a2;
    do
    {
      if (a2 == 1)
      {
        v25 = 0;
      }

      else
      {
        v25 = *v23;
      }

      v27 = *v22++;
      v26 = v27;
      v28 = *v5++;
      (*(*(v26 - 8) + 16))(&v21[v25], v28);
      v23 += 4;
      --v24;
    }

    while (v24);
  }

  return sub_26D3A0EF8();
}

uint64_t sub_26D3838C8@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v155 = a2;
  v154 = sub_26D3A0028();
  v153 = *(v154 - 8);
  MEMORY[0x28223BE20](v154);
  v152 = &v103 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FC6F0, &unk_26D3A6590);
  MEMORY[0x28223BE20](v4 - 8);
  v149 = &v103 - v5;
  v158 = sub_26D3A0078();
  v151 = *(v158 - 8);
  v6 = MEMORY[0x28223BE20](v158);
  v150 = &v103 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v159 = a1;
  v8 = *(a1 - 8);
  a1 -= 8;
  v148 = v8;
  MEMORY[0x28223BE20](v6);
  v146 = v9;
  v147 = &v103 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FC6F8, &qword_26D3A74E0);
  v157 = v10;
  MEMORY[0x28223BE20](v10);
  v143 = &v103 - v11;
  v12 = *(a1 + 24);
  v156 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804FC700, &qword_26D3A65A0);
  sub_26D3A0248();
  v145 = v12;
  sub_26D3A0728();
  sub_26D3A0248();
  v13 = sub_26D3A0248();
  v14 = *(a1 + 32);
  v140 = sub_26D3484AC(&qword_2804FC708, &qword_2804FC700, &qword_26D3A65A0, MEMORY[0x277CDF4F0]);
  v184 = v14;
  v185 = v140;
  WitnessTable = swift_getWitnessTable();
  v183 = v14;
  v144 = v14;
  v132 = MEMORY[0x277CE0340];
  v15 = swift_getWitnessTable();
  v16 = sub_26D393574();
  v180 = v15;
  v181 = v16;
  v178 = swift_getWitnessTable();
  v179 = MEMORY[0x277CDF678];
  v17 = swift_getWitnessTable();
  v141 = v13;
  v134 = v17;
  v18 = sub_26D3A0DB8();
  v136 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v124 = &v103 - v19;
  v20 = sub_26D3A0248();
  v138 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v128 = &v103 - v21;
  v137 = v18;
  v110 = swift_getWitnessTable();
  v176 = v110;
  v177 = MEMORY[0x277CDFC60];
  v22 = swift_getWitnessTable();
  v23 = sub_26D3484AC(&qword_2804FC718, &qword_2804FC6F8, &qword_26D3A74E0, MEMORY[0x277D83660]);
  v172 = v20;
  v173 = v10;
  v174 = v22;
  v175 = v23;
  v127 = MEMORY[0x277CE0D08];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v133 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v129 = &v103 - v25;
  v26 = sub_26D3A0248();
  v135 = OpaqueTypeMetadata2;
  v27 = sub_26D3A0728();
  v126 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v117 = &v103 - v28;
  v29 = sub_26D3A0248();
  v120 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v114 = &v103 - v30;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804FC720, &qword_26D3A65A8);
  v31 = sub_26D3A0248();
  v131 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v122 = &v103 - v32;
  v33 = sub_26D3A0248();
  v139 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v156 = &v103 - v34;
  v118 = v20;
  v172 = v20;
  v173 = v157;
  v130 = v22;
  v174 = v22;
  v175 = v23;
  v121 = v23;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v170 = OpaqueTypeConformance2;
  v171 = v140;
  v119 = v26;
  v103 = swift_getWitnessTable();
  v168 = v103;
  v169 = OpaqueTypeConformance2;
  v106 = OpaqueTypeConformance2;
  v127 = v27;
  v104 = swift_getWitnessTable();
  v166 = v104;
  v167 = MEMORY[0x277CDFC48];
  v123 = v29;
  v36 = swift_getWitnessTable();
  v37 = sub_26D3484AC(&qword_2804FC728, &qword_2804FC720, &qword_26D3A65A8, MEMORY[0x277CE04A0]);
  v105 = v36;
  v164 = v36;
  v165 = v37;
  v132 = v31;
  v38 = swift_getWitnessTable();
  v39 = sub_26D3935C8();
  v107 = v38;
  v162 = v38;
  v163 = v39;
  v40 = swift_getWitnessTable();
  v41 = sub_26D39361C(&qword_2804FC738, MEMORY[0x277CDD750], MEMORY[0x277CDD748]);
  v140 = v33;
  v172 = v33;
  v173 = v158;
  v113 = v40;
  v174 = v40;
  v175 = v41;
  v109 = v41;
  v42 = swift_getOpaqueTypeMetadata2();
  v112 = *(v42 - 8);
  MEMORY[0x28223BE20](v42);
  v44 = &v103 - v43;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804FC740, &qword_26D3A65B0);
  v116 = v42;
  v45 = sub_26D3A0248();
  v46 = v142;
  v108 = v45;
  v125 = *(v45 - 8);
  v47 = MEMORY[0x28223BE20](v45);
  v111 = &v103 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = MEMORY[0x28223BE20](v47);
  v115 = &v103 - v50;
  MEMORY[0x28223BE20](v49);
  v51 = v145;
  v52 = v144;
  v99 = v145;
  v100 = v144;
  v101 = v46;
  sub_26D3A0548();
  v53 = v124;
  sub_26D3A0DA8();
  v54 = v159;
  sub_26D33D278(*(v46 + *(v159 + 56)), *(v46 + *(v159 + 56) + 8));
  v55 = sub_26D3A0EA8();
  v102 = v110;
  v56 = v137;
  v100 = v57;
  v101 = v137;
  v99 = v55;
  LOBYTE(v98) = 1;
  v97 = 0;
  v58 = v128;
  sub_26D3A0B88();
  (*(v136 + 8))(v53, v56);
  v59 = sub_26D33CD0C(*(v46 + *(v54 + 60)), *(v46 + *(v54 + 60) + 8));
  v60 = v143;
  sub_26D39D694(v59, v143);
  v61 = v129;
  v62 = v118;
  sub_26D3A0AC8();
  sub_26D3481A4(v60, &qword_2804FC6F8, &qword_26D3A74E0);
  (*(v138 + 8))(v58, v62);
  v63 = MEMORY[0x28223BE20](*(v46 + 10));
  v99 = v51;
  v100 = v52;
  v101 = v46;
  v64 = v117;
  v65 = v135;
  sub_26D385150(v63, sub_26D393670, &v97, v135, v119, v106, v103, v117);
  (*(v133 + 8))(v61, v65);
  v66 = v114;
  v67 = v127;
  sub_26D3A0BF8();
  (*(v126 + 8))(v64, v67);
  sub_26D385848(v54);
  v68 = v122;
  v69 = v123;
  sub_26D3A0B98();
  (*(v120 + 8))(v66, v69);
  v70 = v148;
  v71 = v147;
  (*(v148 + 16))(v147, v46, v54);
  v72 = (*(v70 + 80) + 32) & ~*(v70 + 80);
  v73 = swift_allocObject();
  *(v73 + 16) = v51;
  *(v73 + 24) = v52;
  (*(v70 + 32))(v73 + v72, v71, v54);
  v74 = v132;
  sub_26D3A0BA8();

  (*(v131 + 8))(v68, v74);
  v75 = v149;
  sub_26D34856C(v46 + *(v54 + 48), v149, &qword_2804FC6F0, &unk_26D3A6590);
  v76 = v151;
  v77 = *(v151 + 48);
  v78 = v158;
  if (v77(v75, 1, v158) == 1)
  {
    v79 = v150;
    sub_26D3A0058();
    if (v77(v75, 1, v78) != 1)
    {
      sub_26D3481A4(v75, &qword_2804FC6F0, &unk_26D3A6590);
    }
  }

  else
  {
    v79 = v150;
    (*(v76 + 32))(v150, v75, v78);
  }

  sub_26D385948(v159);
  v80 = v140;
  v81 = v113;
  v82 = v109;
  v83 = v156;
  sub_26D3A0A38();
  (*(v76 + 8))(v79, v78);
  (*(v139 + 8))(v83, v80);
  v84 = v153;
  v85 = v152;
  v86 = v154;
  (*(v153 + 104))(v152, *MEMORY[0x277CDF440], v154);
  v172 = v80;
  v173 = v78;
  v174 = v81;
  v175 = v82;
  v87 = swift_getOpaqueTypeConformance2();
  v88 = v111;
  v89 = v116;
  sub_26D3A0A18();
  (*(v84 + 8))(v85, v86);
  (*(v112 + 8))(v44, v89);
  v90 = sub_26D3484AC(&qword_2804FC748, &qword_2804FC740, &qword_26D3A65B0, MEMORY[0x277CE0868]);
  v160 = v87;
  v161 = v90;
  v91 = v108;
  swift_getWitnessTable();
  v92 = v125;
  v93 = *(v125 + 16);
  v94 = v115;
  v93(v115, v88, v91);
  v95 = *(v92 + 8);
  v95(v88, v91);
  v93(v155, v94, v91);
  return (v95)(v94, v91);
}

uint64_t sub_26D384B94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v45 = a4;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804FC700, &qword_26D3A65A0);
  v7 = sub_26D3A0248();
  v8 = sub_26D3A0728();
  v39 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v36 - v9;
  v11 = sub_26D3A0248();
  v43 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v38 = &v36 - v12;
  v41 = v13;
  v14 = sub_26D3A0248();
  v44 = *(v14 - 8);
  v15 = MEMORY[0x28223BE20](v14);
  v40 = &v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v42 = &v36 - v17;
  v37 = type metadata accessor for TFComponent(0, a2, a3, v18);
  v19 = *(a1 + 10);
  v47 = a2;
  v48 = a3;
  v49 = a1;
  v20 = sub_26D3484AC(&qword_2804FC708, &qword_2804FC700, &qword_26D3A65A0, MEMORY[0x277CDF4F0]);
  v56 = a3;
  v57 = v20;
  WitnessTable = swift_getWitnessTable();
  v22 = v19;
  v23 = v38;
  sub_26D385150(v22, sub_26D393964, v46, a2, v7, a3, WitnessTable, v10);
  v54 = WitnessTable;
  v55 = a3;
  v24 = swift_getWitnessTable();
  sub_26D3854E0(v8, v24);
  (*(v39 + 8))(v10, v8);
  if (*(a1 + 8))
  {
    v25 = sub_26D33CD0C(*(a1 + *(v37 + 60)), *(a1 + *(v37 + 60) + 8));
    sub_26D39D4C4(v25, v26);
  }

  sub_26D3A0EA8();
  v27 = sub_26D393574();
  v52 = v24;
  v53 = v27;
  v28 = v41;
  v29 = swift_getWitnessTable();
  v30 = v40;
  sub_26D3A0B78();
  (*(v43 + 8))(v23, v28);
  v50 = v29;
  v51 = MEMORY[0x277CDF678];
  swift_getWitnessTable();
  v31 = v44;
  v32 = *(v44 + 16);
  v33 = v42;
  v32(v42, v30, v14);
  v34 = *(v31 + 8);
  v34(v30, v14);
  v32(v45, v33, v14);
  return (v34)(v33, v14);
}

uint64_t sub_26D385018(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a2 + 11);
  v5 = type metadata accessor for TFComponent(0, a3, a4, a4);
  sub_26D3850BC(v4, v5);
  sub_26D3938BC();
  sub_26D3A0BE8();
}

uint64_t sub_26D3850BC(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v4 = sub_26D33CD0C(*(v2 + *(a2 + 60)), *(v2 + *(a2 + 60) + 8));
    v5 = sub_26D33D0B8(*(v2 + *(a2 + 64)), *(v2 + *(a2 + 64) + 8));
    sub_26D39CDDC(v5 & 1, v4, v6);
  }

  sub_26D393910();
  return sub_26D3A0E78();
}

uint64_t sub_26D385150@<X0>(uint64_t a1@<X0>, void (*a2)(uint64_t)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v40 = a7;
  v41 = a6;
  v34 = a3;
  v35 = a2;
  v37 = a1;
  v36 = *(a4 - 8);
  v11 = MEMORY[0x28223BE20](a1);
  v13 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v34 - v15;
  v18 = *(v17 - 8);
  v19 = MEMORY[0x28223BE20](v14);
  v21 = &v34 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v23 = &v34 - v22;
  v39 = sub_26D3A0728();
  v24 = *(v39 - 8);
  MEMORY[0x28223BE20](v39);
  v26 = &v34 - v25;
  if (v37)
  {
    v35(v38);
    v27 = *(v18 + 16);
    v27(v23, v21, a5);
    v38 = a8;
    v28 = *(v18 + 8);
    v28(v21, a5);
    v27(v21, v23, a5);
    sub_26D3834D4(v21, a5);
    v28(v21, a5);
    v28(v23, a5);
    a8 = v38;
  }

  else
  {
    v29 = v36;
    v30 = *(v36 + 16);
    v30(v16, v38, a4);
    v30(v13, v16, a4);
    sub_26D3835CC(v13, a5, a4);
    v31 = *(v29 + 8);
    v31(v13, a4);
    v31(v16, a4);
  }

  v42 = v40;
  v43 = v41;
  v32 = v39;
  swift_getWitnessTable();
  (*(v24 + 16))(a8, v26, v32);
  return (*(v24 + 8))(v26, v32);
}

uint64_t sub_26D3854E0(uint64_t a1, uint64_t a2)
{
  sub_26D3A0D48();
  MEMORY[0x26D6BD3E0](v5, a1, &type metadata for TFComponentItem, a2);
}

uint64_t sub_26D38556C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a2 + 11);
  v5 = type metadata accessor for TFComponent(0, a3, a4, a4);
  sub_26D3850BC((v4 & 1) == 0, v5);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804FC700, &qword_26D3A65A0);
  sub_26D3A0248();
  sub_26D3A0728();
  sub_26D3A0248();
  sub_26D3A0248();
  sub_26D3484AC(&qword_2804FC708, &qword_2804FC700, &qword_26D3A65A0, MEMORY[0x277CDF4F0]);
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_26D393574();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_26D3A0DB8();
  sub_26D3A0248();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804FC6F8, &qword_26D3A74E0);
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_26D3484AC(&qword_2804FC718, &qword_2804FC6F8, &qword_26D3A74E0, MEMORY[0x277D83660]);
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  sub_26D3938BC();
  sub_26D3A0BE8();
}

double sub_26D385848(uint64_t a1)
{
  if (sub_26D385948(a1) && (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FC750, &qword_26D3A65B8), sub_26D3A0D58(), (v2 & 1) != 0))
  {
    return 1000.0;
  }

  else
  {
    return 0.0;
  }
}

uint64_t sub_26D3858CC(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for TFComponent(0, a3, a4, a4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FC750, &qword_26D3A65B8);
  return sub_26D3A0D68();
}

BOOL sub_26D385948(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FC6F0, &unk_26D3A6590);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v9 - v4;
  sub_26D34856C(v1 + *(a1 + 48), &v9 - v4, &qword_2804FC6F0, &unk_26D3A6590);
  v6 = sub_26D3A0078();
  v7 = (*(*(v6 - 8) + 48))(v5, 1, v6) != 1;
  sub_26D3481A4(v5, &qword_2804FC6F0, &unk_26D3A6590);
  return v7;
}

uint64_t sub_26D385ABC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  v6 = *(v2 + 1);
  v7 = swift_allocObject();
  *(v7 + 16) = v5;
  *(v7 + 24) = v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FCC68, &qword_26D3A7020);
  (*(*(v8 - 8) + 16))(a2, a1, v8);
  v9 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FCC70, &qword_26D3A7028) + 36));
  *v9 = sub_26D397894;
  v9[1] = v7;
  KeyPath = swift_getKeyPath();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FC750, &qword_26D3A65B8);
  sub_26D3A0D58();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FCC78, &qword_26D3A7030);
  v12 = a2 + *(result + 36);
  *v12 = KeyPath;
  *(v12 + 8) = v13;
  return result;
}

double sub_26D385C00@<D0>(uint64_t a1@<X8>)
{
  v6 = sub_26D3A05C8();
  MEMORY[0x28223BE20](v6);
  (*(v8 + 104))(&v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x277CE0118]);
  sub_26D3A0978();
  result = *&v12;
  v10 = v13;
  *a1 = v12;
  *(a1 + 16) = v10;
  *(a1 + 32) = v14;
  return result;
}

uint64_t (*sub_26D385D4C(uint64_t *a1))()
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
  *(v2 + 32) = sub_26D39FFA8();
  return sub_26D385DD4;
}

void sub_26D385DD4(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

uint64_t sub_26D385E20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_26D393910();

  return MEMORY[0x282133768](a1, a2, a3, v6);
}

uint64_t sub_26D385E84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_26D393910();

  return MEMORY[0x282133720](a1, a2, a3, v6);
}

uint64_t sub_26D385EE8(uint64_t a1, uint64_t a2)
{
  v3 = sub_26D393910();

  return MEMORY[0x282133738](a1, v3);
}

uint64_t sub_26D385F34@<X0>(void *a1@<X8>)
{
  v182 = a1;
  v173 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FC7E0, &qword_26D3A6670);
  v145 = *(v173 - 8);
  MEMORY[0x28223BE20](v173);
  v144 = &v134 - v2;
  v155 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FC7E8, &qword_26D3A6678);
  v154 = *(v155 - 8);
  MEMORY[0x28223BE20](v155);
  v172 = &v134 - v3;
  v181 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FC7F0, &qword_26D3A6680);
  v4 = MEMORY[0x28223BE20](v181);
  v176 = &v134 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v158 = &v134 - v6;
  v177 = sub_26D3A0608();
  v183 = *(v177 - 1);
  v7 = MEMORY[0x28223BE20](v177);
  v156 = &v134 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v151 = &v134 - v10;
  v11 = MEMORY[0x28223BE20](v9);
  v160 = &v134 - v12;
  MEMORY[0x28223BE20](v11);
  v157 = &v134 - v13;
  v175 = sub_26D3A0738();
  v150 = *(v175 - 8);
  MEMORY[0x28223BE20](v175);
  v149 = &v134 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v148 = sub_26D3A07F8();
  v147 = *(v148 - 8);
  MEMORY[0x28223BE20](v148);
  v146 = &v134 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for TFToggle(0);
  v167 = *(v16 - 1);
  MEMORY[0x28223BE20](v16);
  v169 = v17;
  v18 = &v134 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for TFLabel(0);
  MEMORY[0x28223BE20](v19);
  v21 = &v134 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v137 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FC7F8, &qword_26D3A6688);
  MEMORY[0x28223BE20](v137);
  v138 = &v134 - v22;
  v140 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FC800, &qword_26D3A6690);
  MEMORY[0x28223BE20](v140);
  v139 = &v134 - v23;
  v142 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FC808, &qword_26D3A6698);
  v141 = *(v142 - 8);
  MEMORY[0x28223BE20](v142);
  v168 = &v134 - v24;
  v170 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FC810, &qword_26D3A66A0);
  MEMORY[0x28223BE20](v170);
  v143 = &v134 - v25;
  v153 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FC818, &qword_26D3A66A8);
  v152 = *(v153 - 8);
  MEMORY[0x28223BE20](v153);
  v171 = &v134 - v26;
  v166 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FC820, &qword_26D3A66B0);
  v27 = MEMORY[0x28223BE20](v166);
  v174 = &v134 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v159 = &v134 - v29;
  v179 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FC828, &qword_26D3A66B8);
  MEMORY[0x28223BE20](v179);
  v180 = &v134 - v30;
  v163 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FC830, &qword_26D3A66C0);
  MEMORY[0x28223BE20](v163);
  v164 = &v134 - v31;
  v178 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FC838, &qword_26D3A66C8);
  MEMORY[0x28223BE20](v178);
  v165 = &v134 - v32;
  v162 = sub_26D3A0288();
  v135 = *(v162 - 8);
  MEMORY[0x28223BE20](v162);
  v34 = &v134 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v161 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FC840, &qword_26D3A66D0);
  v35 = *(v161 - 8);
  MEMORY[0x28223BE20](v161);
  v37 = &v134 - v36;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FC848, &qword_26D3A66D8);
  v39 = MEMORY[0x28223BE20](v38);
  v42 = &v134 - v41;
  v43 = v1;
  if (v1[v16[7]] != 1)
  {
    goto LABEL_5;
  }

  if (qword_2804FAD48 != -1)
  {
    v136 = v39;
    v133 = v40;
    swift_once();
    v40 = v133;
    v39 = v136;
  }

  if ((byte_2804FFF99 & 1) == 0)
  {
    v96 = &v43[v16[8]];
    v97 = *v96;
    v98 = *(v96 + 1);
    LOBYTE(v96) = v96[16];
    *&v189 = v97;
    *(&v189 + 1) = v98;
    LOBYTE(v190) = v96;
    v136 = v39;
    v183 = v40;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804FC880, &qword_26D3A5C30);
    v99 = sub_26D3A0E18();
    v177 = &v134;
    MEMORY[0x28223BE20](v99);
    sub_26D39361C(&qword_2804FC860, type metadata accessor for TFLabel, &unk_26D3A6250);
    sub_26D3A0DC8();
    sub_26D3A0278();
    v100 = sub_26D3484AC(&unk_2804FC8B0, &qword_2804FC840, &qword_26D3A66D0, MEMORY[0x277CDF068]);
    v101 = sub_26D39361C(&qword_2804FBA08, MEMORY[0x277CDDBD0], MEMORY[0x277CDDBC8]);
    v102 = v161;
    v103 = v162;
    sub_26D3A0A48();
    (*(v135 + 8))(v34, v103);
    (*(v35 + 8))(v37, v102);
    v104 = v183;
    v105 = v136;
    (*(v183 + 16))(v164, v42, v136);
    swift_storeEnumTagMultiPayload();
    *&v189 = v102;
    *(&v189 + 1) = v103;
    *&v190 = v100;
    *(&v190 + 1) = v101;
    swift_getOpaqueTypeConformance2();
    sub_26D393F2C();
    v106 = v165;
    sub_26D3A0718();
    sub_26D34856C(v106, v180, &qword_2804FC838, &qword_26D3A66C8);
    swift_storeEnumTagMultiPayload();
    sub_26D393DE0();
    sub_26D3942E0();
    sub_26D3A0718();
    sub_26D3481A4(v106, &qword_2804FC838, &qword_26D3A66C8);
    return (*(v104 + 8))(v42, v105);
  }

  else
  {
LABEL_5:
    if (qword_2804FAD40 != -1)
    {
      v132 = v39;
      swift_once();
      v39 = v132;
    }

    if (byte_2804FFF98 == 1)
    {
      v136 = v39;
      v156 = v18;
      v45 = *v43;
      v44 = *(v43 + 1);
      v46 = v16[5];
      v47 = v19[5];
      v48 = sub_26D3A0648();
      (*(*(v48 - 8) + 16))(&v21[v47], &v43[v46], v48);
      v49 = &v43[v16[6]];
      v51 = *v49;
      v50 = *(v49 + 1);
      v52 = &v43[v16[8]];
      v176 = *v52;
      v173 = v52[1];
      LODWORD(v172) = *(v52 + 16);
      *&v189 = v176;
      *(&v189 + 1) = v173;
      LOBYTE(v190) = v172;

      v158 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804FC880, &qword_26D3A5C30);
      MEMORY[0x26D6BD610](&v184);
      v53 = v184;
      *v21 = v45;
      *(v21 + 1) = v44;
      v54 = &v21[v19[6]];
      *v54 = v51;
      *(v54 + 1) = v50;
      v21[v19[7]] = v53;
      v55 = &v21[v19[8]];
      *v55 = swift_getKeyPath();
      v55[8] = 0;
      v56 = &v21[v19[9]];
      *v56 = swift_getKeyPath();
      v56[8] = 0;
      sub_26D3A0EA8();
      sub_26D3A0268();
      v57 = v138;
      sub_26D393C84(v21, v138, type metadata accessor for TFLabel);
      v58 = (v57 + *(v137 + 36));
      v59 = v194;
      v58[4] = v193;
      v58[5] = v59;
      v58[6] = v195;
      v60 = v190;
      *v58 = v189;
      v58[1] = v60;
      v61 = v192;
      v58[2] = v191;
      v58[3] = v61;
      v62 = v140;
      v63 = v139;
      v64 = &v139[*(v140 + 36)];
      v134 = v43;
      sub_26D387E8C(v64);
      v65 = sub_26D3A0EA8();
      v67 = v66;
      v68 = (v64 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FC870, &qword_26D3A66E8) + 36));
      *v68 = v65;
      v68[1] = v67;
      sub_26D347238(v57, v63, &qword_2804FC7F8, &qword_26D3A6688);
      v69 = v43;
      v70 = v156;
      sub_26D3954E0(v69, v156, type metadata accessor for TFToggle);
      v71 = (*(v167 + 80) + 16) & ~*(v167 + 80);
      v72 = swift_allocObject();
      v167 = type metadata accessor for TFToggle;
      sub_26D393C84(v70, v72 + v71, type metadata accessor for TFToggle);
      v73 = sub_26D39416C();
      sub_26D3A0A78();

      sub_26D3481A4(v63, &qword_2804FC800, &qword_26D3A6690);
      sub_26D3954E0(v134, v70, type metadata accessor for TFToggle);
      v74 = swift_allocObject();
      sub_26D393C84(v70, v74 + v71, v167);
      v75 = v146;
      sub_26D3A07E8();
      v184 = v62;
      v185 = v73;
      swift_getOpaqueTypeConformance2();
      v76 = v143;
      v77 = v142;
      v78 = v168;
      sub_26D3A0B38();

      (*(v147 + 8))(v75, v148);
      (*(v141 + 8))(v78, v77);
      v79 = v149;
      sub_26D3A0298();
      v80 = sub_26D394074();
      v81 = sub_26D39361C(&qword_2804FC7B8, MEMORY[0x277CDDFF8], MEMORY[0x277CDDFF0]);
      v82 = v175;
      sub_26D3A0A38();
      (*(v150 + 8))(v79, v82);
      sub_26D3481A4(v76, &qword_2804FC810, &qword_26D3A66A0);
      v184 = v176;
      v185 = v173;
      LOBYTE(v186) = v172;
      MEMORY[0x26D6BD610](&v188, v158);
      LODWORD(v78) = v188;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FB920, &qword_26D3A50A0);
      if (v78 == 1)
      {
        v83 = swift_allocObject();
        *(v83 + 16) = xmmword_26D3A22A0;
        sub_26D3A05F8();
        sub_26D3A05D8();
      }

      else
      {
        v83 = swift_allocObject();
        *(v83 + 16) = xmmword_26D3A35F0;
        sub_26D3A05F8();
      }

      v184 = v83;
      sub_26D39361C(&unk_2804FC890, MEMORY[0x277CE01F0], MEMORY[0x277CE0200]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FB918, &qword_26D3A66F0);
      sub_26D3484AC(&qword_2804FC8A0, &qword_2804FB918, &qword_26D3A66F0, MEMORY[0x277D83970]);
      v108 = v157;
      v109 = v177;
      sub_26D3A1388();
      v184 = v170;
      v185 = v175;
      v186 = v80;
      v187 = v81;
      swift_getOpaqueTypeConformance2();
      v110 = v153;
      v111 = v171;
      sub_26D3A0B58();
      v112 = *(v183 + 8);
      v112(v108, v109);
      (*(v152 + 8))(v111, v110);
      v184 = v176;
      v185 = v173;
      LOBYTE(v186) = v172;
      MEMORY[0x26D6BD610](&v188, v158);
      if (v188 == 1)
      {
        v184 = MEMORY[0x277D84F90];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FB920, &qword_26D3A50A0);
        v118 = swift_allocObject();
        *(v118 + 16) = xmmword_26D3A35F0;
        sub_26D3A05D8();
        v184 = v118;
      }

      sub_26D39361C(&unk_2804FC890, MEMORY[0x277CE01F0], MEMORY[0x277CE0200]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FB918, &qword_26D3A66F0);
      sub_26D3484AC(&qword_2804FC8A0, &qword_2804FB918, &qword_26D3A66F0, MEMORY[0x277D83970]);
      v119 = v160;
      sub_26D3A1388();
      v120 = v159;
      v121 = v174;
      sub_26D3A0238();
      v112(v119, v109);
      v122 = &qword_2804FC820;
      v123 = &qword_26D3A66B0;
      sub_26D3481A4(v121, &qword_2804FC820, &qword_26D3A66B0);
      sub_26D34856C(v120, v164, &qword_2804FC820, &qword_26D3A66B0);
      swift_storeEnumTagMultiPayload();
      v124 = sub_26D3484AC(&unk_2804FC8B0, &qword_2804FC840, &qword_26D3A66D0, MEMORY[0x277CDF068]);
      v125 = sub_26D39361C(&qword_2804FBA08, MEMORY[0x277CDDBD0], MEMORY[0x277CDDBC8]);
      v184 = v161;
      v185 = v162;
      v186 = v124;
      v187 = v125;
      swift_getOpaqueTypeConformance2();
      sub_26D393F2C();
      v126 = v165;
      sub_26D3A0718();
      sub_26D34856C(v126, v180, &qword_2804FC838, &qword_26D3A66C8);
      swift_storeEnumTagMultiPayload();
      sub_26D393DE0();
      sub_26D3942E0();
      sub_26D3A0718();
      sub_26D3481A4(v126, &qword_2804FC838, &qword_26D3A66C8);
      v127 = v120;
    }

    else
    {
      sub_26D3954E0(v43, v18, type metadata accessor for TFToggle);
      v84 = (*(v167 + 80) + 16) & ~*(v167 + 80);
      v85 = swift_allocObject();
      v86 = sub_26D393C84(v18, v85 + v84, type metadata accessor for TFToggle);
      MEMORY[0x28223BE20](v86);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FC850, &qword_26D3A66E0);
      sub_26D393CF8();
      v87 = v144;
      sub_26D3A0D88();
      KeyPath = swift_getKeyPath();
      v189 = 0uLL;
      LOBYTE(v190) = 0;
      *(&v190 + 1) = KeyPath;
      LOBYTE(v191) = 0;
      v89 = sub_26D3484AC(&qword_2804FC878, &qword_2804FC7E0, &qword_26D3A6670, MEMORY[0x277CDF028]);
      v90 = sub_26D393970();
      v91 = v173;
      sub_26D3A0A08();

      (*(v145 + 8))(v87, v91);
      v92 = &v43[v16[8]];
      v93 = *v92;
      v94 = *(v92 + 1);
      LODWORD(v92) = v92[16];
      v175 = v93;
      *&v189 = v93;
      *(&v189 + 1) = v94;
      v174 = v94;
      LODWORD(v171) = v92;
      LOBYTE(v190) = v92;
      v170 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804FC880, &qword_26D3A5C30);
      MEMORY[0x26D6BD610](&v184);
      LODWORD(v87) = v184;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FB920, &qword_26D3A50A0);
      if (v87 == 1)
      {
        v95 = swift_allocObject();
        *(v95 + 16) = xmmword_26D3A22A0;
        sub_26D3A05F8();
        sub_26D3A05D8();
      }

      else
      {
        v95 = swift_allocObject();
        *(v95 + 16) = xmmword_26D3A35F0;
        sub_26D3A05F8();
      }

      *&v189 = v95;
      sub_26D39361C(&unk_2804FC890, MEMORY[0x277CE01F0], MEMORY[0x277CE0200]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FB918, &qword_26D3A66F0);
      sub_26D3484AC(&qword_2804FC8A0, &qword_2804FB918, &qword_26D3A66F0, MEMORY[0x277D83970]);
      v113 = v151;
      v114 = v177;
      sub_26D3A1388();
      *&v189 = v173;
      *(&v189 + 1) = &type metadata for TFPressedButtonStyle;
      *&v190 = v89;
      *(&v190 + 1) = v90;
      swift_getOpaqueTypeConformance2();
      v115 = v155;
      v116 = v172;
      sub_26D3A0B58();
      v117 = *(v183 + 8);
      v117(v113, v114);
      (*(v154 + 8))(v116, v115);
      *&v189 = v175;
      *(&v189 + 1) = v174;
      LOBYTE(v190) = v171;
      MEMORY[0x26D6BD610](&v184, v170);
      if (v184 == 1)
      {
        *&v189 = MEMORY[0x277D84F90];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FB920, &qword_26D3A50A0);
        v128 = swift_allocObject();
        *(v128 + 16) = xmmword_26D3A35F0;
        sub_26D3A05D8();
        *&v189 = v128;
      }

      sub_26D39361C(&unk_2804FC890, MEMORY[0x277CE01F0], MEMORY[0x277CE0200]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FB918, &qword_26D3A66F0);
      sub_26D3484AC(&qword_2804FC8A0, &qword_2804FB918, &qword_26D3A66F0, MEMORY[0x277D83970]);
      v129 = v156;
      sub_26D3A1388();
      v130 = v158;
      v131 = v176;
      sub_26D3A0238();
      v117(v129, v114);
      v122 = &qword_2804FC7F0;
      v123 = &qword_26D3A6680;
      sub_26D3481A4(v131, &qword_2804FC7F0, &qword_26D3A6680);
      sub_26D34856C(v130, v180, &qword_2804FC7F0, &qword_26D3A6680);
      swift_storeEnumTagMultiPayload();
      sub_26D393DE0();
      sub_26D3942E0();
      sub_26D3A0718();
      v127 = v130;
    }

    return sub_26D3481A4(v127, v122, v123);
  }
}

uint64_t sub_26D387D40@<X0>(char *a1@<X0>, char *a2@<X8>)
{
  v5 = *a1;
  v4 = *(a1 + 1);
  v6 = type metadata accessor for TFToggle(0);
  v7 = v6[5];
  v8 = type metadata accessor for TFLabel(0);
  v9 = v8[5];
  v10 = sub_26D3A0648();
  (*(*(v10 - 8) + 16))(&a2[v9], &a1[v7], v10);
  v11 = &a1[v6[6]];
  v13 = *v11;
  v12 = *(v11 + 1);
  v14 = &a1[v6[8]];
  v15 = *v14;
  v16 = *(v14 + 1);
  LOBYTE(v14) = v14[16];
  v24 = v15;
  v25 = v16;
  v26 = v14;

  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804FC880, &qword_26D3A5C30);
  MEMORY[0x26D6BD610](&v23, v17);
  v18 = v23;
  *a2 = v5;
  *(a2 + 1) = v4;
  v19 = &a2[v8[6]];
  *v19 = v13;
  *(v19 + 1) = v12;
  a2[v8[7]] = v18;
  v20 = &a2[v8[8]];
  *v20 = swift_getKeyPath();
  v20[8] = 0;
  v21 = &a2[v8[9]];
  result = swift_getKeyPath();
  *v21 = result;
  v21[8] = 0;
  return result;
}

uint64_t sub_26D387E8C@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for TFToggle(0);
  v4 = v1 + *(v3 + 36);
  v5 = *v4;
  v6 = *(v4 + 8);
  if ((sub_26D33CD0C(*v4, v6) - 2) > 2u)
  {
    v11 = 0;
  }

  else
  {
    v7 = (v1 + *(v3 + 32));
    v8 = *v7;
    v9 = v7[1];
    LOBYTE(v7) = *(v7 + 16);
    v31 = v8;
    v32 = v9;
    v33 = v7;
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804FC880, &qword_26D3A5C30);
    MEMORY[0x26D6BD610](&v30, v10);
    v11 = v30 ^ 1;
  }

  v12 = (v1 + *(v3 + 32));
  v13 = *v12;
  v14 = v12[1];
  LOBYTE(v12) = *(v12 + 16);
  v31 = v13;
  v32 = v14;
  v33 = v12;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804FC880, &qword_26D3A5C30);
  MEMORY[0x26D6BD610](&v30, v15);
  v16 = v30;
  v17 = (sub_26D33CD0C(v5, v6) - 2) < 3u;
  v18 = sub_26D3A0138();
  KeyPath = swift_getKeyPath();
  v20 = swift_getKeyPath();
  v21 = type metadata accessor for TFComponentBackground(0);
  *(a1 + v21[10]) = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FB310, &qword_26D3A3118);
  swift_storeEnumTagMultiPayload();
  v22 = swift_getKeyPath();
  v23 = swift_getKeyPath();
  *a1 = v11 & 1;
  *(a1 + 1) = v16;
  *(a1 + 2) = v17;
  *(a1 + 3) = 0;
  *(a1 + 8) = v18;
  *(a1 + 16) = KeyPath;
  *(a1 + 24) = 0;
  v24 = a1 + v21[11];
  *v24 = v22;
  *(v24 + 8) = 0;
  v25 = a1 + v21[12];
  *v25 = v23;
  *(v25 + 8) = 0;
  v26 = a1 + v21[13];
  *v26 = swift_getKeyPath();
  *(v26 + 8) = 0;
  v27 = a1 + v21[14];
  *v27 = swift_getKeyPath();
  *(v27 + 8) = 0;
  v28 = a1 + v21[15];
  result = swift_getKeyPath();
  *v28 = result;
  *(v28 + 8) = 0;
  return result;
}

uint64_t sub_26D3880BC(uint64_t a1)
{
  type metadata accessor for TFToggle(0);

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804FC880, &qword_26D3A5C30);
  MEMORY[0x26D6BD610](&v2);
  sub_26D3A0E08();
}

uint64_t sub_26D388180@<X0>(char *a1@<X0>, char *a2@<X8>)
{
  v5 = *a1;
  v4 = *(a1 + 1);
  v6 = type metadata accessor for TFToggle(0);
  v7 = v6[5];
  v8 = type metadata accessor for TFLabel(0);
  v9 = v8[5];
  v10 = sub_26D3A0648();
  (*(*(v10 - 8) + 16))(&a2[v9], &a1[v7], v10);
  v11 = &a1[v6[6]];
  v13 = *v11;
  v12 = *(v11 + 1);
  v14 = &a1[v6[8]];
  v15 = *v14;
  v16 = *(v14 + 1);
  LOBYTE(v14) = v14[16];
  v29 = v15;
  v30 = v16;
  v31 = v14;

  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804FC880, &qword_26D3A5C30);
  MEMORY[0x26D6BD610](&v28, v17);
  v18 = v28;
  *a2 = v5;
  *(a2 + 1) = v4;
  v19 = &a2[v8[6]];
  *v19 = v13;
  *(v19 + 1) = v12;
  a2[v8[7]] = v18;
  v20 = &a2[v8[8]];
  *v20 = swift_getKeyPath();
  v20[8] = 0;
  v21 = &a2[v8[9]];
  *v21 = swift_getKeyPath();
  v21[8] = 0;
  v22 = &a2[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FC850, &qword_26D3A66E0) + 36)];
  sub_26D387E8C(v22);
  v23 = sub_26D3A0EA8();
  v25 = v24;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FC870, &qword_26D3A66E8);
  v27 = &v22[*(result + 36)];
  *v27 = v23;
  v27[1] = v25;
  return result;
}

__n128 sub_26D388348@<Q0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FCA78, &qword_26D3A6A10);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v13 - v5;
  sub_26D3884B0(v2);
  v7 = type metadata accessor for TFLabel(0);
  v8 = sub_26D33D6D0(*(v2 + *(v7 + 36)), *(v2 + *(v7 + 36) + 8));
  if (v8 == 2 || (v8 & 1) == 0)
  {
    sub_26D3A0EA8();
  }

  else
  {
    sub_26D3A0EB8();
  }

  sub_26D3A0268();
  sub_26D347238(v6, a1, &qword_2804FCA78, &qword_26D3A6A10);
  v9 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FCA80, &qword_26D3A6A18) + 36);
  v10 = v13[5];
  *(v9 + 64) = v13[4];
  *(v9 + 80) = v10;
  *(v9 + 96) = v13[6];
  v11 = v13[1];
  *v9 = v13[0];
  *(v9 + 16) = v11;
  result = v13[3];
  *(v9 + 32) = v13[2];
  *(v9 + 48) = result;
  return result;
}

uint64_t sub_26D3884B0(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FCA88, &qword_26D3A6A20);
  MEMORY[0x28223BE20](v3);
  v5 = (v45 - v4);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FCA90, &qword_26D3A6A28);
  MEMORY[0x28223BE20](v6);
  v8 = v45 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FCA98, &qword_26D3A6A30);
  v50 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v51 = v45 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FCAA0, &qword_26D3A6A38);
  v12 = MEMORY[0x28223BE20](v11);
  v49 = v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = v45 - v14;
  v16 = type metadata accessor for TFLabel(0);
  v17 = (a1 + *(v16 + 24));
  v18 = v17[1];
  if (!v18)
  {
    goto LABEL_10;
  }

  v19 = *v17;
  v20 = HIBYTE(v18) & 0xF;
  if ((v18 & 0x2000000000000000) == 0)
  {
    v20 = v19 & 0xFFFFFFFFFFFFLL;
  }

  if (v20)
  {
    v21 = v16;
    v47 = v6;
    v45[1] = v45;
    v22 = MEMORY[0x28223BE20](v16);
    v45[-4] = v24;
    v45[-3] = v23;
    v45[-2] = a1;
    MEMORY[0x28223BE20](v22);
    v45[-2] = a1;
    sub_26D37FF80();
    v46 = v8;
    sub_26D395410();
    v48 = v3;
    v25 = v9;
    v26 = v46;
    sub_26D3A0CD8();
    v27 = sub_26D3A0878();
    if (sub_26D33D6D0(*(a1 + *(v21 + 36)), *(a1 + *(v21 + 36) + 8)) == 2)
    {
      v28 = sub_26D33CD0C(*(a1 + *(v21 + 32)), *(a1 + *(v21 + 32) + 8));
      if (qword_2804FAD40 != -1)
      {
        swift_once();
      }

      if (byte_2804FFF98)
      {
        goto LABEL_9;
      }

      if (qword_2804FAD48 != -1)
      {
        swift_once();
      }

      if ((byte_2804FFF99 & 1) == 0)
      {
        v33 = _UISolariumEnabled();
        v29 = 12.0;
        if (v33)
        {
LABEL_9:
          sub_26D39CDDC(0, v28, v29);
        }
      }
    }

    sub_26D39FFD8();
    v35 = v34;
    v37 = v36;
    v39 = v38;
    v41 = v40;
    v42 = v49;
    (*(v50 + 32))(v49, v51, v25);
    v43 = v42 + *(v11 + 36);
    *v43 = v27;
    *(v43 + 8) = v35;
    *(v43 + 16) = v37;
    *(v43 + 24) = v39;
    *(v43 + 32) = v41;
    *(v43 + 40) = 0;
    v30 = &qword_26D3A6A38;
    sub_26D347238(v42, v15, &qword_2804FCAA0, &qword_26D3A6A38);
    sub_26D34856C(v15, v26, &qword_2804FCAA0, &qword_26D3A6A38);
    swift_storeEnumTagMultiPayload();
    sub_26D395358();
    sub_26D3A0718();
    v31 = v15;
    v32 = &qword_2804FCAA0;
  }

  else
  {
LABEL_10:
    sub_26D388D30(v5);
    v30 = &qword_26D3A6A20;
    sub_26D34856C(v5, v8, &qword_2804FCA88, &qword_26D3A6A20);
    swift_storeEnumTagMultiPayload();
    sub_26D395358();
    sub_26D395410();
    sub_26D3A0718();
    v31 = v5;
    v32 = &qword_2804FCA88;
  }

  return sub_26D3481A4(v31, v32, v30);
}

uint64_t sub_26D3889EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v7 = *(a3 + *(type metadata accessor for TFLabel(0) + 28));
  KeyPath = swift_getKeyPath();
  *a4 = a1;
  *(a4 + 8) = a2;
  *(a4 + 16) = v7;
  *(a4 + 24) = KeyPath;
  *(a4 + 32) = 0;
}

void *sub_26D388A60@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804FCAC8, &qword_26D3A6A40);
  MEMORY[0x28223BE20](v4);
  v6 = v23 - v5;
  v7 = type metadata accessor for TFSymbol(0);
  MEMORY[0x28223BE20](v7);
  v9 = v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a1[1];
  if (v10)
  {
    v11 = *a1;
    v12 = type metadata accessor for TFLabel(0);
    v13 = *(a1 + v12[7]);
    v14 = v12[5];
    v15 = *(a1 + v12[6] + 8);
    v23[1] = a2;
    v16 = v15 == 0;

    v17 = sub_26D3A0928();
    *v9 = v11;
    *(v9 + 1) = v10;
    v9[16] = v13;
    *(v9 + 3) = v17;
    *(v9 + 4) = 0;
    v18 = v7[8];
    v19 = sub_26D3A0648();
    (*(*(v19 - 8) + 16))(&v9[v18], a1 + v14, v19);
    v9[v7[9]] = 0;
    v9[v7[10]] = v16;
    v20 = &v9[v7[11]];
    *v20 = swift_getKeyPath();
    v20[8] = 0;
    v21 = &v9[v7[12]];
    *v21 = swift_getKeyPath();
    v21[8] = 0;
    sub_26D3954E0(v9, v6, type metadata accessor for TFSymbol);
    swift_storeEnumTagMultiPayload();
    sub_26D39361C(&qword_2804FC7D0, type metadata accessor for TFSymbol, &unk_26D3A62F0);
    sub_26D3A0718();
    return sub_26D395548(v9, type metadata accessor for TFSymbol);
  }

  else
  {
    swift_storeEnumTagMultiPayload();
    sub_26D39361C(&qword_2804FC7D0, type metadata accessor for TFSymbol, &unk_26D3A62F0);
    return sub_26D3A0718();
  }
}

void *sub_26D388D30@<X0>(void *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804FCAC8, &qword_26D3A6A40);
  MEMORY[0x28223BE20](v3);
  v5 = v22 - v4;
  v6 = type metadata accessor for TFSymbol(0);
  MEMORY[0x28223BE20](v6);
  v8 = v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = v1[1];
  if (v9)
  {
    v10 = *v1;
    v11 = type metadata accessor for TFLabel(0);
    v12 = *(v1 + v11[7]);
    v13 = v11[5];
    v14 = *(v1 + v11[6] + 8);
    v22[1] = a1;
    v15 = v14 == 0;

    v16 = sub_26D3A0928();
    *v8 = v10;
    *(v8 + 1) = v9;
    v8[16] = v12;
    *(v8 + 3) = v16;
    *(v8 + 4) = 0;
    v17 = v6[8];
    v18 = sub_26D3A0648();
    (*(*(v18 - 8) + 16))(&v8[v17], v1 + v13, v18);
    v8[v6[9]] = 0;
    v8[v6[10]] = v15;
    v19 = &v8[v6[11]];
    *v19 = swift_getKeyPath();
    v19[8] = 0;
    v20 = &v8[v6[12]];
    *v20 = swift_getKeyPath();
    v20[8] = 0;
    sub_26D3954E0(v8, v5, type metadata accessor for TFSymbol);
    swift_storeEnumTagMultiPayload();
    sub_26D39361C(&qword_2804FC7D0, type metadata accessor for TFSymbol, &unk_26D3A62F0);
    sub_26D3A0718();
    return sub_26D395548(v8, type metadata accessor for TFSymbol);
  }

  else
  {
    swift_storeEnumTagMultiPayload();
    sub_26D39361C(&qword_2804FC7D0, type metadata accessor for TFSymbol, &unk_26D3A62F0);
    return sub_26D3A0718();
  }
}

uint64_t sub_26D388FFC()
{
  sub_26D37E450();
  sub_26D3A0518();
  return v1;
}

uint64_t sub_26D389060@<X0>(uint64_t a1@<X8>)
{
  v46 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FCA00, &qword_26D3A68F0);
  v3 = v2 - 8;
  MEMORY[0x28223BE20](v2);
  v5 = &v35 - v4;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FCA08, &qword_26D3A68F8);
  MEMORY[0x28223BE20](v42);
  v44 = &v35 - v6;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FCA10, &qword_26D3A6900);
  MEMORY[0x28223BE20](v43);
  v45 = &v35 - v7;
  v41 = sub_26D3A0618();
  v40 = sub_26D3A0538();
  sub_26D3894C0(&v47);
  v37 = *(&v47 + 1);
  v38 = v47;
  v8 = v48[0];
  v39 = *&v48[8];
  v9 = *(v1 + 24);
  KeyPath = swift_getKeyPath();
  LOBYTE(v47) = v8;

  v35 = sub_26D3895BC();
  v10 = &v5[*(v3 + 44)];
  v11 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FCA18, &qword_26D3A6938) + 28);
  v12 = type metadata accessor for TFSymbol(0);
  v13 = v12[8];
  v14 = sub_26D3A0648();
  v15 = *(v14 - 8);
  (*(v15 + 16))(v10 + v11, v1 + v13, v14);
  (*(v15 + 56))(v10 + v11, 0, 1, v14);
  *v10 = swift_getKeyPath();
  v16 = v40;
  *v5 = v41;
  *(v5 + 1) = v16;
  v17 = v37;
  *(v5 + 2) = v38;
  *(v5 + 3) = v17;
  v5[32] = v8;
  *(v5 + 9) = *&v53[3];
  *(v5 + 33) = *v53;
  *(v5 + 40) = v39;
  *(v5 + 7) = KeyPath;
  *(v5 + 8) = v9;
  *(v5 + 9) = v35;
  v18 = v12[11];
  v19 = *(v1 + v18);
  v20 = *(v1 + v18 + 8);
  v21 = sub_26D33D6D0(v19, v20);
  if (v21 == 2 || (v21 & 1) == 0)
  {
    sub_26D3A0EA8();
  }

  else
  {
    sub_26D3A0EB8();
  }

  v22 = 1;
  sub_26D3A0268();
  v23 = v44;
  sub_26D347238(v5, v44, &qword_2804FCA00, &qword_26D3A68F0);
  v24 = (v23 + *(v42 + 36));
  v25 = v51;
  v24[4] = v50;
  v24[5] = v25;
  v24[6] = v52;
  v26 = *v48;
  *v24 = v47;
  v24[1] = v26;
  v27 = v49;
  v24[2] = *&v48[16];
  v24[3] = v27;
  v28 = v45;
  sub_26D347238(v23, v45, &qword_2804FCA08, &qword_26D3A68F8);
  *(v28 + *(v43 + 36)) = 0;
  if (*(v1 + v12[9]) == 1 && *(v1 + 16) == 1)
  {
    v22 = sub_26D33D6D0(v19, v20);
  }

  v29 = *(v1 + 16);
  v30 = sub_26D3A0138();
  v31 = v28;
  v32 = v46;
  sub_26D347238(v31, v46, &qword_2804FCA10, &qword_26D3A6900);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FCA20, &qword_26D3A6970);
  v34 = v32 + *(result + 36);
  *v34 = v22 & 1;
  *(v34 + 1) = v29;
  *(v34 + 2) = 0;
  *(v34 + 8) = v30;
  return result;
}

uint64_t sub_26D3894C0@<X0>(uint64_t a2@<X8>)
{
  sub_26D3A05A8();
  v3 = sub_26D3A09A8();
  v5 = v4;
  v7 = v6;
  v9 = v8;

  v10 = sub_26D3A0CB8();
  *a2 = v3;
  *(a2 + 8) = v5;
  *(a2 + 16) = v7 & 1;
  *(a2 + 24) = v9;
  *(a2 + 32) = v10;
  sub_26D3806E8(v3, v5, v7 & 1);

  sub_26D37EDCC(v3, v5, v7 & 1);
}

uint64_t sub_26D3895BC()
{
  if (*(v0 + 32))
  {
    v1 = v0 + *(type metadata accessor for TFSymbol(0) + 48);
    v2 = *v1;
    v3 = *(v1 + 8);

    sub_26D33D0B8(v2, v3);
    v4 = &qword_2804FCA40;
    v5 = &qword_26D3A6988;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FCA40, &qword_26D3A6988);
    v6 = &unk_2804FCA48;
LABEL_7:
    sub_26D3484AC(v6, v4, v5, MEMORY[0x277CE01D8]);
    return sub_26D3A00D8();
  }

  if (*(v0 + 16) != 1 || (v7 = type metadata accessor for TFSymbol(0), v8 = sub_26D33D6D0(*(v0 + *(v7 + 44)), *(v0 + *(v7 + 44) + 8)), v8 != 2) && (v8 & 1) != 0)
  {
    sub_26D3A0798();
    v9 = type metadata accessor for TFSymbol(0);
    sub_26D33D0B8(*(v0 + *(v9 + 48)), *(v0 + *(v9 + 48) + 8));
    v4 = &qword_2804FCA30;
    v5 = &qword_26D3A6980;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FCA30, &qword_26D3A6980);
    v6 = &qword_2804FCA38;
    goto LABEL_7;
  }

  if (qword_2804FAD40 != -1)
  {
    swift_once();
  }

  if (byte_2804FFF98 == 1)
  {
    sub_26D3A0C38();
    sub_26D33D0B8(*(v0 + *(v7 + 48)), *(v0 + *(v7 + 48) + 8));
    sub_26D3A0C68();
  }

  else
  {
    sub_26D3A0C58();
  }

  return sub_26D3A00D8();
}

double sub_26D3897D8@<D0>(uint64_t a1@<X8>)
{
  sub_26D3A0938();
  v2 = sub_26D3A08F8();

  LODWORD(v9) = sub_26D3A07A8();
  v3 = sub_26D3A00D8();
  v4 = type metadata accessor for TFSymbol(0);
  sub_26D3A0638();
  *a1 = 0xD000000000000017;
  *(a1 + 8) = 0x800000026D3A8390;
  *(a1 + 16) = 0;
  *(a1 + 24) = v2;
  *(a1 + 32) = v3;
  *(a1 + v4[9]) = 1;
  *(a1 + v4[10]) = 1;
  v5 = a1 + v4[11];
  *v5 = swift_getKeyPath();
  *(v5 + 8) = 0;
  v6 = a1 + v4[12];
  *v6 = swift_getKeyPath();
  *(v6 + 8) = 0;
  sub_26D3A0EA8();
  sub_26D3A00C8();
  v7 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FC998, &qword_26D3A6898) + 36));
  *v7 = v9;
  v7[1] = v10;
  result = *&v11;
  v7[2] = v11;
  return result;
}

uint64_t sub_26D38995C(unsigned __int8 a1)
{
  sub_26D3A1568();
  MEMORY[0x26D6BDD90](a1);
  return sub_26D3A1588();
}

uint64_t sub_26D3899CC@<X0>(void (*a1)(void)@<X2>, uint64_t *a2@<X3>, uint64_t *a3@<X4>, uint64_t a4@<X8>)
{
  a1();
  sub_26D3A0D48();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v8 = a4 + *(result + 36);
  *v8 = v9;
  *(v8 + 8) = v10;
  return result;
}

uint64_t sub_26D389A6C(uint64_t a1)
{
  sub_26D3A1568();
  sub_26D389934(v3, *v1);
  return sub_26D3A1588();
}

uint64_t sub_26D389AAC@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v24 = a1;
  v25 = a2;
  sub_26D3A0248();
  sub_26D3A0728();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804FC768, &qword_26D3A65C0);
  swift_getTupleTypeMetadata2();
  sub_26D3A0EE8();
  swift_getWitnessTable();
  sub_26D3A0DB8();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_2804FC770, &unk_26D3A65C8);
  sub_26D3A0248();
  sub_26D3A0248();
  sub_26D3A0248();
  sub_26D3A0248();
  type metadata accessor for TFFrameTracker(255);
  sub_26D3A0248();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804FC1C0, &qword_26D3A5CF0);
  sub_26D3A0248();
  sub_26D3A0248();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804FC780, &qword_26D3A65D8);
  sub_26D3A0248();
  WitnessTable = swift_getWitnessTable();
  v47 = sub_26D3484AC(&qword_2804FC788, &unk_2804FC770, &unk_26D3A65C8, MEMORY[0x277CE0740]);
  v2 = MEMORY[0x277CDFAD8];
  v44 = swift_getWitnessTable();
  v45 = MEMORY[0x277CDFC60];
  v42 = swift_getWitnessTable();
  v43 = MEMORY[0x277CDF918];
  v40 = swift_getWitnessTable();
  v41 = sub_26D37E938();
  v38 = swift_getWitnessTable();
  v39 = sub_26D39361C(&qword_2804FC1B8, type metadata accessor for TFFrameTracker, &unk_26D3A73FC);
  v36 = swift_getWitnessTable();
  v37 = sub_26D3484AC(&qword_2804FC7A0, &qword_2804FC1C0, &qword_26D3A5CF0, MEMORY[0x277CE07C8]);
  v34 = swift_getWitnessTable();
  v35 = MEMORY[0x277CDF678];
  v23 = v2;
  v32 = swift_getWitnessTable();
  v33 = sub_26D3484AC(&qword_2804FC7A8, &qword_2804FC780, &qword_26D3A65D8, MEMORY[0x277CE04A0]);
  swift_getWitnessTable();
  sub_26D3A0D98();
  swift_getWitnessTable();
  sub_26D393970();
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v21 = sub_26D3A0738();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v3 = sub_26D39361C(&qword_2804FC7B8, MEMORY[0x277CDDFF8], MEMORY[0x277CDDFF0]);
  v28 = OpaqueTypeMetadata2;
  v29 = v21;
  v30 = OpaqueTypeConformance2;
  v31 = v3;
  v4 = swift_getOpaqueTypeMetadata2();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &OpaqueTypeConformance2 - v6;
  v8 = sub_26D3A0248();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &OpaqueTypeConformance2 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &OpaqueTypeConformance2 - v13;
  sub_26D38A194(v24, v7);
  v28 = OpaqueTypeMetadata2;
  v29 = v21;
  v30 = OpaqueTypeConformance2;
  v31 = v3;
  v15 = swift_getOpaqueTypeConformance2();
  sub_26D3854E0(v4, v15);
  (*(v5 + 8))(v7, v4);
  v16 = sub_26D393574();
  v26 = v15;
  v27 = v16;
  swift_getWitnessTable();
  v17 = *(v9 + 16);
  v17(v14, v12, v8);
  v18 = *(v9 + 8);
  v18(v12, v8);
  v17(v25, v14, v8);
  return (v18)(v14, v8);
}

uint64_t sub_26D38A194@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v68 = a1;
  v75 = a2;
  v77 = sub_26D3A0738();
  v74 = *(v77 - 8);
  v3 = MEMORY[0x28223BE20](v77);
  v72 = &v54 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = *(a1 - 8);
  v71 = *(v70 + 64);
  MEMORY[0x28223BE20](v3);
  v67 = &v54 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = *(a1 + 16);
  sub_26D3A0248();
  sub_26D3A0728();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804FC768, &qword_26D3A65C0);
  swift_getTupleTypeMetadata2();
  sub_26D3A0EE8();
  swift_getWitnessTable();
  sub_26D3A0DB8();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_2804FC770, &unk_26D3A65C8);
  sub_26D3A0248();
  sub_26D3A0248();
  sub_26D3A0248();
  sub_26D3A0248();
  type metadata accessor for TFFrameTracker(255);
  sub_26D3A0248();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804FC1C0, &qword_26D3A5CF0);
  sub_26D3A0248();
  sub_26D3A0248();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804FC780, &qword_26D3A65D8);
  v76 = sub_26D3A0248();
  WitnessTable = swift_getWitnessTable();
  v7 = sub_26D3484AC(&qword_2804FC788, &unk_2804FC770, &unk_26D3A65C8, MEMORY[0x277CE0740]);
  v100 = WitnessTable;
  v101 = v7;
  v98 = swift_getWitnessTable();
  v99 = MEMORY[0x277CDFC60];
  v96 = swift_getWitnessTable();
  v97 = MEMORY[0x277CDF918];
  v8 = swift_getWitnessTable();
  v9 = sub_26D37E938();
  v94 = v8;
  v95 = v9;
  v10 = swift_getWitnessTable();
  v11 = sub_26D39361C(&qword_2804FC1B8, type metadata accessor for TFFrameTracker, &unk_26D3A73FC);
  v92 = v10;
  v93 = v11;
  v12 = swift_getWitnessTable();
  v13 = sub_26D3484AC(&qword_2804FC7A0, &qword_2804FC1C0, &qword_26D3A5CF0, MEMORY[0x277CE07C8]);
  v90 = v12;
  v91 = v13;
  v88 = swift_getWitnessTable();
  v89 = MEMORY[0x277CDF678];
  v14 = swift_getWitnessTable();
  v15 = sub_26D3484AC(&qword_2804FC7A8, &qword_2804FC780, &qword_26D3A65D8, MEMORY[0x277CE04A0]);
  v86 = v14;
  v87 = v15;
  v63 = swift_getWitnessTable();
  v16 = sub_26D3A0D98();
  v64 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v61 = &v54 - v17;
  v18 = swift_getWitnessTable();
  v19 = sub_26D393970();
  v81 = v16;
  v82 = &type metadata for TFPressedButtonStyle;
  v20 = v16;
  v56 = v16;
  v83 = v18;
  v84 = v19;
  v58 = v18;
  v21 = v19;
  v57 = v19;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v65 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v55 = &v54 - v23;
  v81 = v20;
  v82 = &type metadata for TFPressedButtonStyle;
  v83 = v18;
  v84 = v21;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v25 = sub_26D39361C(&qword_2804FC7B8, MEMORY[0x277CDDFF8], MEMORY[0x277CDDFF0]);
  v66 = OpaqueTypeMetadata2;
  v81 = OpaqueTypeMetadata2;
  v82 = v77;
  v62 = OpaqueTypeConformance2;
  v83 = OpaqueTypeConformance2;
  v84 = v25;
  v60 = v25;
  v26 = swift_getOpaqueTypeMetadata2();
  v27 = *(v26 - 8);
  v28 = MEMORY[0x28223BE20](v26);
  v30 = &v54 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v59 = &v54 - v31;
  v32 = v70;
  v33 = v67;
  v34 = v73;
  v35 = v68;
  (*(v70 + 16))(v67, v73, v68);
  v36 = (*(v32 + 80) + 32) & ~*(v32 + 80);
  v37 = swift_allocObject();
  v38 = v35;
  v39 = *(v35 + 24);
  v40 = v69;
  *(v37 + 16) = v69;
  *(v37 + 24) = v39;
  v41 = v37 + v36;
  v42 = v72;
  v43 = v33;
  v44 = v55;
  (*(v32 + 32))(v41, v43, v38);
  v78 = v40;
  v79 = v39;
  v80 = v34;
  v45 = v61;
  sub_26D3A0D88();
  KeyPath = swift_getKeyPath();
  v81 = 0;
  v82 = 0;
  LOBYTE(v83) = 0;
  v84 = KeyPath;
  v85 = 0;
  v47 = v56;
  sub_26D3A0A08();

  (*(v64 + 8))(v45, v47);
  sub_26D3A0298();
  if (qword_2804FAD40 != -1)
  {
    swift_once();
  }

  v48 = v66;
  v49 = v77;
  sub_26D3A0A38();
  (*(v74 + 8))(v42, v49);
  (*(v65 + 8))(v44, v48);
  v50 = *(v27 + 16);
  v51 = v59;
  v50(v59, v30, v26);
  v52 = *(v27 + 8);
  v52(v30, v26);
  v50(v75, v51, v26);
  return (v52)(v51, v26);
}

uint64_t sub_26D38ABD0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v28[3] = a1;
  v29 = a4;
  sub_26D3A0248();
  sub_26D3A0728();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804FC768, &qword_26D3A65C0);
  swift_getTupleTypeMetadata2();
  sub_26D3A0EE8();
  swift_getWitnessTable();
  sub_26D3A0DB8();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_2804FC770, &unk_26D3A65C8);
  sub_26D3A0248();
  sub_26D3A0248();
  sub_26D3A0248();
  v28[1] = sub_26D3A0248();
  type metadata accessor for TFFrameTracker(255);
  v28[2] = sub_26D3A0248();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804FC1C0, &qword_26D3A5CF0);
  v28[5] = sub_26D3A0248();
  v28[4] = sub_26D3A0248();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804FC780, &qword_26D3A65D8);
  v6 = sub_26D3A0248();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = v28 - v11;
  v14 = type metadata accessor for TFButton(0, a2, a3, v13);
  sub_26D38B08C(v14, v10);
  WitnessTable = swift_getWitnessTable();
  v16 = sub_26D3484AC(&qword_2804FC788, &unk_2804FC770, &unk_26D3A65C8, MEMORY[0x277CE0740]);
  v44 = WitnessTable;
  v45 = v16;
  v42 = swift_getWitnessTable();
  v43 = MEMORY[0x277CDFC60];
  v40 = swift_getWitnessTable();
  v41 = MEMORY[0x277CDF918];
  v17 = swift_getWitnessTable();
  v18 = sub_26D37E938();
  v38 = v17;
  v39 = v18;
  v19 = swift_getWitnessTable();
  v20 = sub_26D39361C(&qword_2804FC1B8, type metadata accessor for TFFrameTracker, &unk_26D3A73FC);
  v36 = v19;
  v37 = v20;
  v21 = swift_getWitnessTable();
  v22 = sub_26D3484AC(&qword_2804FC7A0, &qword_2804FC1C0, &qword_26D3A5CF0, MEMORY[0x277CE07C8]);
  v34 = v21;
  v35 = v22;
  v32 = swift_getWitnessTable();
  v33 = MEMORY[0x277CDF678];
  v23 = swift_getWitnessTable();
  v24 = sub_26D3484AC(&qword_2804FC7A8, &qword_2804FC780, &qword_26D3A65D8, MEMORY[0x277CE04A0]);
  v30 = v23;
  v31 = v24;
  swift_getWitnessTable();
  v25 = *(v7 + 16);
  v25(v12, v10, v6);
  v26 = *(v7 + 8);
  v26(v10, v6);
  v25(v29, v12, v6);
  return (v26)(v12, v6);
}

uint64_t sub_26D38B08C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v102 = a2;
  v5 = type metadata accessor for TFFrameTracker(0);
  v6 = MEMORY[0x28223BE20](v5);
  v100 = &v74[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v101 = a1;
  v8 = *(a1 - 8);
  a1 -= 8;
  v99 = v8;
  MEMORY[0x28223BE20](v6);
  v97 = v9;
  v98 = &v74[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = *(a1 + 24);
  sub_26D3A0248();
  sub_26D3A0728();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804FC768, &qword_26D3A65C0);
  swift_getTupleTypeMetadata2();
  sub_26D3A0EE8();
  swift_getWitnessTable();
  v11 = sub_26D3A0DB8();
  v79 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = &v74[-v12];
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_2804FC770, &unk_26D3A65C8);
  v14 = sub_26D3A0248();
  v77 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v16 = &v74[-v15];
  v17 = sub_26D3A0248();
  v81 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v80 = &v74[-v18];
  v82 = v19;
  v20 = sub_26D3A0248();
  v84 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v83 = &v74[-v21];
  v85 = v22;
  v23 = sub_26D3A0248();
  v87 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v86 = &v74[-v24];
  v88 = v25;
  v26 = sub_26D3A0248();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804FC1C0, &qword_26D3A5CF0);
  v89 = v26;
  v27 = sub_26D3A0248();
  v92 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v90 = &v74[-v28];
  v93 = v29;
  v95 = sub_26D3A0248();
  v94 = *(v95 - 8);
  MEMORY[0x28223BE20](v95);
  v91 = &v74[-v30];
  v31 = &v3[*(a1 + 72)];
  v32 = v31[8];
  v76 = *v31;
  v75 = v32;
  sub_26D33CD0C(v76, v32);
  v33 = *(a1 + 32);
  v96 = v10;
  v103 = v10;
  v78 = v33;
  v104 = v33;
  v105 = v3;
  sub_26D3A0548();
  sub_26D3A0DA8();
  if (qword_2804FAD40 != -1)
  {
    swift_once();
  }

  if (byte_2804FFF98 == 1)
  {
    LODWORD(v112) = sub_26D3A0798();
  }

  else
  {
    v112 = sub_26D3A0C78();
  }

  v112 = sub_26D3A00D8();
  WitnessTable = swift_getWitnessTable();
  sub_26D3A0AD8();

  (*(v79 + 8))(v13, v11);
  v35 = v3;
  LODWORD(v79) = *v3;
  if (v79 == 1)
  {
    sub_26D3A0EB8();
  }

  else
  {
    sub_26D3A0EA8();
  }

  v36 = sub_26D3484AC(&qword_2804FC788, &unk_2804FC770, &unk_26D3A65C8, MEMORY[0x277CE0740]);
  v121 = WitnessTable;
  v122 = v36;
  v37 = swift_getWitnessTable();
  v38 = v80;
  sub_26D3A0B88();
  (*(v77 + 8))(v16, v14);
  sub_26D3A0878();
  if (v3[2] == 1)
  {
    v39 = sub_26D33CD0C(v76, v75);
    if (byte_2804FFF98)
    {
      goto LABEL_11;
    }

    if (qword_2804FAD48 != -1)
    {
      swift_once();
    }

    if (byte_2804FFF99 & 1) == 0 && (_UISolariumEnabled())
    {
LABEL_11:
      sub_26D39CDDC(0, v39, v40);
    }
  }

  v119 = v37;
  v120 = MEMORY[0x277CDFC60];
  v41 = v82;
  v42 = swift_getWitnessTable();
  v43 = v83;
  sub_26D3A0BB8();
  (*(v81 + 8))(v38, v41);
  v44 = v3[1];
  v45 = sub_26D3A0138();
  v117 = v42;
  v118 = MEMORY[0x277CDF918];
  v46 = v85;
  v47 = swift_getWitnessTable();
  LOBYTE(v112) = v44;
  *(&v112 + 1) = 0;
  BYTE3(v112) = 0;
  v113 = v45;
  v48 = v86;
  MEMORY[0x26D6BD3E0](&v112, v46, &type metadata for TFComponentBackgroundModifier, v47);

  (*(v84 + 8))(v43, v46);
  v49 = v99;
  v50 = v98;
  v51 = v101;
  (*(v99 + 16))(v98, v35, v101);
  v52 = (*(v49 + 80) + 32) & ~*(v49 + 80);
  v53 = swift_allocObject();
  v54 = v78;
  *(v53 + 16) = v96;
  *(v53 + 24) = v54;
  (*(v49 + 32))(v53 + v52, v50, v51);
  v55 = sub_26D37E938();
  v115 = v47;
  v116 = v55;
  v56 = v88;
  v57 = swift_getWitnessTable();
  v58 = *MEMORY[0x277CDF968];
  v59 = sub_26D3A01D8();
  v60 = v100;
  (*(*(v59 - 8) + 104))(v100, v58, v59);
  v61 = v90;
  sub_26D39D2AC(v60, sub_26D393B8C, v53, v56, v57, v90);

  sub_26D395548(v60, type metadata accessor for TFFrameTracker);
  (*(v87 + 8))(v48, v56);
  v62 = &v35[*(v51 + 56)];
  v63 = *v62;
  v64 = v62[8];
  v65 = *(v62 + 2);
  v112 = v63;
  LOBYTE(v113) = v64;
  v114 = v65;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FC7C0, &qword_26D3A6608);
  sub_26D3A0D58();
  sub_26D3A0EA8();
  v66 = sub_26D39361C(&qword_2804FC1B8, type metadata accessor for TFFrameTracker, &unk_26D3A73FC);
  v110 = v57;
  v111 = v66;
  v67 = swift_getWitnessTable();
  v68 = sub_26D3484AC(&qword_2804FC7A0, &qword_2804FC1C0, &qword_26D3A5CF0, MEMORY[0x277CE07C8]);
  v108 = v67;
  v109 = v68;
  v69 = v93;
  v70 = swift_getWitnessTable();
  v71 = v91;
  sub_26D3A0B78();
  (*(v92 + 8))(v61, v69);
  v106 = v70;
  v107 = MEMORY[0x277CDF678];
  v72 = v95;
  swift_getWitnessTable();
  sub_26D3A0AA8();
  return (*(v94 + 8))(v71, v72);
}

uint64_t sub_26D38BDC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v47 = a4;
  v43 = type metadata accessor for TFSymbol(0);
  v45 = *(v43 - 8);
  MEMORY[0x28223BE20](v43);
  v38 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FC768, &qword_26D3A65C0);
  v8 = MEMORY[0x28223BE20](v44);
  v46 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v41 = &v38 - v10;
  v11 = sub_26D3A0248();
  v12 = sub_26D3A0728();
  v39 = *(v12 - 8);
  v13 = MEMORY[0x28223BE20](v12);
  v15 = &v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v38 - v16;
  type metadata accessor for TFButton(0, a2, a3, v18);
  v19 = *(a1 + 3);
  v49 = a2;
  v50 = a3;
  v54[4] = a3;
  v54[5] = MEMORY[0x277CDFC60];
  WitnessTable = swift_getWitnessTable();
  sub_26D385150(v19, sub_26D393BB8, v48, a2, v11, a3, WitnessTable, v15);
  v54[2] = WitnessTable;
  v54[3] = a3;
  v40 = swift_getWitnessTable();
  v21 = *(v39 + 16);
  v42 = v17;
  v22 = v17;
  v23 = v39;
  v21(v22, v15, v12);
  v24 = *(v23 + 8);
  v24(v15, v12);
  if (v19 == 1)
  {
    LODWORD(v54[0]) = sub_26D3A07A8();
    v25 = sub_26D3A00D8();
    v26 = sub_26D3A0928();
    v27 = v43;
    v28 = v38;
    sub_26D3A0638();
    *v28 = xmmword_26D3A5FC0;
    *(v28 + 16) = 0;
    *(v28 + 24) = v26;
    *(v28 + 32) = v25;
    *(v28 + v27[9]) = 0;
    *(v28 + v27[10]) = 0;
    v29 = v28 + v27[11];
    *v29 = swift_getKeyPath();
    *(v29 + 8) = 0;
    v30 = v28 + v27[12];
    *v30 = swift_getKeyPath();
    *(v30 + 8) = 0;
    v31 = v41;
    sub_26D393C84(v28, v41, type metadata accessor for TFSymbol);
    v32 = 0;
    v33 = v27;
    v34 = v31;
  }

  else
  {
    v32 = 1;
    v33 = v43;
    v34 = v41;
  }

  (*(v45 + 56))(v34, v32, 1, v33);
  v35 = v42;
  v21(v15, v42, v12);
  v54[0] = v15;
  v36 = v46;
  sub_26D34856C(v34, v46, &qword_2804FC768, &qword_26D3A65C0);
  v54[1] = v36;
  v53[0] = v12;
  v53[1] = v44;
  v51 = v40;
  v52 = sub_26D393BC0();
  sub_26D3836C4(v54, 2uLL, v53);
  sub_26D3481A4(v34, &qword_2804FC768, &qword_26D3A65C0);
  v24(v35, v12);
  sub_26D3481A4(v36, &qword_2804FC768, &qword_26D3A65C0);
  return (v24)(v15, v12);
}

uint64_t sub_26D38C330(unsigned __int8 *a1, uint64_t a2, uint64_t a3, double a4, double a5, double a6, double a7, uint64_t a8)
{
  type metadata accessor for TFButton(0, a2, a3, a8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FC7C0, &qword_26D3A6608);
  return sub_26D3A0D68();
}

uint64_t sub_26D38C3CC@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FCC80, &qword_26D3A7038);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v14 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FCC88, &qword_26D3A7040);
  MEMORY[0x28223BE20](v6);
  v8 = &v14 - v7;
  v9 = *(v1 + 24);
  v10 = *(v1 + 32);
  sub_26D3A0818();
  v11 = 1.0;
  if (sub_26D3A0828())
  {
    if ((sub_26D33CD0C(v9, v10) - 2) >= 3u)
    {
      v11 = 0.7;
    }

    else
    {
      v11 = 0.5;
    }
  }

  sub_26D347238(v5, v8, &qword_2804FCC80, &qword_26D3A7038);
  *&v8[*(v6 + 36)] = v11;
  sub_26D347238(v8, a1, &qword_2804FCC88, &qword_26D3A7040);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FCC90, &qword_26D3A7048);
  v13 = (a1 + *(result + 36));
  *v13 = sub_26D3675D4;
  v13[1] = 0;
  return result;
}

uint64_t sub_26D38C570@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v120 = a2;
  v4 = type metadata accessor for TFFrameTracker(0);
  v5 = MEMORY[0x28223BE20](v4);
  v119 = &v86[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v118 = a1;
  v7 = *(a1 - 8);
  a1 -= 8;
  v116 = v7;
  MEMORY[0x28223BE20](v5);
  v114 = v8;
  v115 = &v86[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = *(a1 + 24);
  sub_26D3A0248();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804FC968, &qword_26D3A6880);
  swift_getTupleTypeMetadata2();
  sub_26D3A0EE8();
  WitnessTable = swift_getWitnessTable();
  v10 = sub_26D3A0DB8();
  v89 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = &v86[-v11];
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_2804FC970, &qword_26D3A6888);
  v13 = sub_26D3A0248();
  v91 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v15 = &v86[-v14];
  v16 = sub_26D3A0248();
  v95 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v93 = &v86[-v17];
  v96 = v18;
  v19 = sub_26D3A0248();
  v97 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v94 = &v86[-v20];
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804FBF40, &qword_26D3A6890);
  v98 = v19;
  v21 = sub_26D3A0248();
  v100 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v99 = &v86[-v22];
  v101 = v23;
  v24 = sub_26D3A0248();
  v103 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v102 = &v86[-v25];
  v105 = v26;
  v27 = sub_26D3A0248();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804FC1C0, &qword_26D3A5CF0);
  v104 = v27;
  v28 = sub_26D3A0248();
  v109 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v106 = &v86[-v29];
  v110 = v30;
  v112 = sub_26D3A0248();
  v111 = *(v112 - 8);
  v31 = MEMORY[0x28223BE20](v112);
  v107 = &v86[-((v32 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v31);
  v108 = &v86[-v33];
  v34 = v2 + *(a1 + 52);
  v35 = *(v34 + 8);
  v88 = *v34;
  v87 = v35;
  sub_26D33CD0C(v88, v35);
  v36 = *(a1 + 32);
  v113 = v9;
  v121 = v9;
  v92 = v36;
  v122 = v36;
  v123 = v2;
  sub_26D3A0548();
  sub_26D3A0DA8();
  swift_getKeyPath();
  v37 = *(a1 + 44);
  WitnessTable = v2;
  v38 = (v2 + v37);
  v40 = *(v38 + 1);
  v141 = *v38;
  v39 = v141;
  v142 = v40;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FC750, &qword_26D3A65B8);
  sub_26D3A0D58();
  v141 = v140;
  v41 = swift_getWitnessTable();
  v90 = v15;
  sub_26D3A0A28();

  (*(v89 + 8))(v12, v10);
  sub_26D3A08B8();
  v141 = v39;
  v142 = v40;
  sub_26D3A0D58();
  if (v140 == 1)
  {
    if (qword_2804FAD40 != -1)
    {
      swift_once();
    }

    v42 = v93;
    if ((byte_2804FFF98 & 1) == 0)
    {
      v43 = sub_26D33CD0C(v88, v87);
      if (byte_2804FFF98)
      {
        goto LABEL_8;
      }

      if (qword_2804FAD48 != -1)
      {
        swift_once();
      }

      if (byte_2804FFF99 & 1) == 0 && (_UISolariumEnabled())
      {
LABEL_8:
        sub_26D39CDDC(0, v43, v44);
      }
    }
  }

  else
  {
    v42 = v93;
  }

  v45 = sub_26D3484AC(&qword_2804FC980, &unk_2804FC970, &qword_26D3A6888, MEMORY[0x277CE0868]);
  v138 = v41;
  v139 = v45;
  v46 = swift_getWitnessTable();
  v47 = v90;
  sub_26D3A0BB8();
  (*(v91 + 8))(v47, v13);
  sub_26D3A08C8();
  v141 = v39;
  v142 = v40;
  sub_26D3A0D58();
  if (v140 == 1)
  {
    if (qword_2804FAD40 == -1)
    {
      if (byte_2804FFF98)
      {
        goto LABEL_16;
      }
    }

    else
    {
      swift_once();
      if (byte_2804FFF98)
      {
        goto LABEL_16;
      }
    }

    v82 = sub_26D33CD0C(v88, v87);
    if (byte_2804FFF98)
    {
      goto LABEL_19;
    }

    if (qword_2804FAD48 != -1)
    {
      swift_once();
    }

    if (byte_2804FFF99 & 1) == 0 && (_UISolariumEnabled())
    {
LABEL_19:
      sub_26D39CDDC(0, v82, v83);
    }
  }

LABEL_16:
  v48 = MEMORY[0x277CDF918];
  v136 = v46;
  v137 = MEMORY[0x277CDF918];
  v49 = v96;
  v50 = swift_getWitnessTable();
  v51 = v94;
  sub_26D3A0BB8();
  (*(v95 + 8))(v42, v49);
  v134 = v50;
  v135 = v48;
  v52 = v98;
  v53 = swift_getWitnessTable();
  sub_26D394CB8();
  v54 = v99;
  sub_26D3A0A58();
  (*(v97 + 8))(v51, v52);
  sub_26D3A0EA8();
  v55 = sub_26D3484AC(&qword_2804FC990, &qword_2804FBF40, &qword_26D3A6890, MEMORY[0x277CE0470]);
  v132 = v53;
  v133 = v55;
  v84 = v101;
  v85 = swift_getWitnessTable();
  v56 = v102;
  sub_26D3A0B88();
  (*(v100 + 8))(v54, v84);
  v57 = v116;
  v58 = v115;
  v59 = v118;
  (*(v116 + 16))(v115, WitnessTable, v118);
  v60 = (*(v57 + 80) + 32) & ~*(v57 + 80);
  v61 = swift_allocObject();
  v62 = v92;
  *(v61 + 16) = v113;
  *(v61 + 24) = v62;
  (*(v57 + 32))(v61 + v60, v58, v59);
  v130 = v85;
  v131 = MEMORY[0x277CDFC60];
  v63 = v105;
  v64 = swift_getWitnessTable();
  v65 = *MEMORY[0x277CDF968];
  v66 = sub_26D3A01D8();
  v67 = v119;
  (*(*(v66 - 8) + 104))(v119, v65, v66);
  v68 = v106;
  sub_26D39D2AC(v67, sub_26D394E3C, v61, v63, v64, v106);

  sub_26D395548(v67, type metadata accessor for TFFrameTracker);
  (*(v103 + 8))(v56, v63);
  v69 = sub_26D39361C(&qword_2804FC1B8, type metadata accessor for TFFrameTracker, &unk_26D3A73FC);
  v128 = v64;
  v129 = v69;
  v70 = swift_getWitnessTable();
  v71 = sub_26D3484AC(&qword_2804FC7A0, &qword_2804FC1C0, &qword_26D3A5CF0, MEMORY[0x277CE07C8]);
  v126 = v70;
  v127 = v71;
  v72 = v110;
  v73 = swift_getWitnessTable();
  v74 = v107;
  sub_26D3854E0(v72, v73);
  (*(v109 + 8))(v68, v72);
  v75 = sub_26D393574();
  v124 = v73;
  v125 = v75;
  v76 = v112;
  swift_getWitnessTable();
  v77 = v111;
  v78 = *(v111 + 16);
  v79 = v108;
  v78(v108, v74, v76);
  v80 = *(v77 + 8);
  v80(v74, v76);
  v78(v120, v79, v76);
  return (v80)(v79, v76);
}

uint64_t sub_26D38D4AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v47 = a4;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FC998, &qword_26D3A6898);
  v42 = *(v45 - 8);
  MEMORY[0x28223BE20](v45);
  v36 = &v36 - v7;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FC968, &qword_26D3A6880);
  v8 = MEMORY[0x28223BE20](v43);
  v46 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v44 = &v36 - v11;
  v12 = *(a2 - 8);
  MEMORY[0x28223BE20](v10);
  v14 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_26D3A0248();
  v16 = *(v15 - 8);
  v17 = MEMORY[0x28223BE20](v15);
  v41 = &v36 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v17);
  v21 = &v36 - v20;
  MEMORY[0x28223BE20](v19);
  v48 = &v36 - v22;
  (*(v12 + 16))(v14, a1, a2);
  v24 = (a1 + *(type metadata accessor for TFMenuLabel(0, a2, a3, v23) + 36));
  v25 = *v24;
  v26 = *(v24 + 1);
  v38 = v25;
  LOBYTE(v52) = v25;
  v39 = v26;
  v53 = v26;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FC750, &qword_26D3A65B8);
  sub_26D3A0D58();
  if (LOBYTE(v51[0]) == 1)
  {
    sub_26D3A0EB8();
  }

  else
  {
    sub_26D3A0EA8();
  }

  v27 = 1;
  sub_26D3A0B88();
  (*(v12 + 8))(v14, a2);
  v51[2] = a3;
  v51[3] = MEMORY[0x277CDFC60];
  WitnessTable = swift_getWitnessTable();
  v28 = *(v16 + 16);
  v28(v48, v21, v15);
  v29 = *(v16 + 8);
  v40 = v16 + 8;
  v29(v21, v15);
  LOBYTE(v52) = v38;
  v53 = v39;
  sub_26D3A0D58();
  v30 = v44;
  if (LOBYTE(v51[0]) == 1)
  {
    v31 = v36;
    sub_26D3897D8(v36);
    sub_26D347238(v31, v30, &qword_2804FC998, &qword_26D3A6898);
    v27 = 0;
  }

  (*(v42 + 56))(v30, v27, 1, v45);
  v32 = v41;
  v33 = v48;
  v28(v41, v48, v15);
  v52 = v32;
  v34 = v46;
  sub_26D34856C(v30, v46, &qword_2804FC968, &qword_26D3A6880);
  v53 = v34;
  v51[0] = v15;
  v51[1] = v43;
  v49 = WitnessTable;
  v50 = sub_26D394F38();
  sub_26D3836C4(&v52, 2uLL, v51);
  sub_26D3481A4(v30, &qword_2804FC968, &qword_26D3A6880);
  v29(v33, v15);
  sub_26D3481A4(v34, &qword_2804FC968, &qword_26D3A6880);
  return (v29)(v32, v15);
}

uint64_t sub_26D38D9E8(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5, double a6, double a7)
{
  CGRectGetWidth(*&a4);
  v11 = a1 + *(type metadata accessor for TFMenuLabel(0, a2, a3, v10) + 44);
  v12 = *v11;
  v13 = *(v11 + 8);
  v14 = sub_26D33CD0C(*v11, v13);
  sub_26D39C90C(v14, v15);
  sub_26D33CD0C(v12, v13);
  v16 = sub_26D33CD0C(v12, v13);
  if (qword_2804FAD40 != -1)
  {
    swift_once();
  }

  if (byte_2804FFF98)
  {
    goto LABEL_4;
  }

  if (qword_2804FAD48 != -1)
  {
    swift_once();
  }

  if (byte_2804FFF99 & 1) == 0 && (_UISolariumEnabled())
  {
LABEL_4:
    sub_26D39CDDC(0, v16, v17);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FC750, &qword_26D3A65B8);
  return sub_26D3A0D68();
}

uint64_t sub_26D38DB98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_26D395078();

  return MEMORY[0x282130D40](a1, a2, a3, a4, v8);
}

uint64_t sub_26D38DBFC@<X0>(uint64_t a1@<X8>)
{
  v31 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804FCA50, &qword_26D3A6990);
  v3 = v2 - 8;
  MEMORY[0x28223BE20](v2);
  v5 = &v27 - v4;
  v6 = *(v1 + 8);
  v32 = *v1;
  v33 = v6;
  sub_26D37E6A4();

  v7 = sub_26D3A09C8();
  v9 = v8;
  v11 = v10;
  v12 = *(v1 + 24);
  v13 = *(v1 + 32);
  v32 = sub_26D3951D0(*(v1 + 16) & 1, v12, v13, v14);
  v29 = sub_26D3A0998();
  v30 = v15;
  v17 = v16;
  v28 = v18;
  sub_26D37EDCC(v7, v9, v11 & 1);

  KeyPath = swift_getKeyPath();
  v20 = &v5[*(v3 + 44)];
  v21 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FCA60, &qword_26D3A69C8) + 28);
  v22 = *MEMORY[0x277CE0B28];
  v23 = sub_26D3A0988();
  (*(*(v23 - 8) + 104))(v20 + v21, v22, v23);
  *v20 = swift_getKeyPath();
  *v5 = v29;
  *(v5 + 1) = v17;
  v5[16] = v28 & 1;
  *(v5 + 3) = v30;
  *(v5 + 4) = KeyPath;
  *(v5 + 5) = 1;
  v5[48] = 0;
  if (sub_26D33D0B8(v12, v13))
  {
    v24 = 1.0;
  }

  else
  {
    v24 = 0.5;
  }

  v25 = v31;
  sub_26D347238(v5, v31, &unk_2804FCA50, &qword_26D3A6990);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FCA68, &qword_26D3A6A00);
  *(v25 + *(result + 36)) = v24;
  return result;
}

uint64_t sub_26D38DE5C@<X0>(uint64_t a1@<X0>, int a2@<W1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v72 = a3;
  LODWORD(v63) = a2;
  v71 = a5;
  v7 = sub_26D3A0738();
  v69 = *(v7 - 8);
  v70 = v7;
  MEMORY[0x28223BE20](v7);
  v68 = &v56 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FC900, &qword_26D3A67E0);
  v10 = v9 - 8;
  MEMORY[0x28223BE20](v9);
  v12 = &v56 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FC908, &qword_26D3A67E8);
  v14 = v13 - 8;
  MEMORY[0x28223BE20](v13);
  v57 = &v56 - v15;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FC910, &qword_26D3A67F0);
  MEMORY[0x28223BE20](v59);
  v60 = &v56 - v16;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FC918, &qword_26D3A67F8);
  v66 = *(v67 - 8);
  MEMORY[0x28223BE20](v67);
  v64 = &v56 - v17;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FC920, &qword_26D3A6800);
  MEMORY[0x28223BE20](v62);
  v65 = &v56 - v18;
  v19 = sub_26D3A07C8();
  v20 = *(v19 - 8);
  v21 = MEMORY[0x28223BE20](v19);
  v23 = &v56 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v25 = &v56 - v24;
  v61 = v20;
  v26 = *(v20 + 16);
  v26(&v56 - v24, a1, v19);
  v27 = swift_allocObject();
  v28 = v63;
  *(v27 + 16) = v63;
  v58 = v28 & 1;
  *(v27 + 24) = v72;
  *(v27 + 32) = a4;
  v56 = a4;

  sub_26D3A07B8();
  v63 = v19;
  v26(v23, v25, v19);
  sub_26D3A0968();
  KeyPath = swift_getKeyPath();
  v30 = &v12[*(v10 + 44)];
  *v30 = KeyPath;
  v30[8] = 0;
  sub_26D3A0EA8();
  sub_26D3A0268();
  v31 = v12;
  v32 = v57;
  sub_26D347238(v31, v57, &qword_2804FC900, &qword_26D3A67E0);
  v33 = (v32 + *(v14 + 44));
  v34 = v81;
  v33[4] = v80;
  v33[5] = v34;
  v33[6] = v82;
  v35 = v77;
  *v33 = v76;
  v33[1] = v35;
  v36 = v79;
  v33[2] = v78;
  v33[3] = v36;
  if (qword_2804FAD48 != -1)
  {
    swift_once();
  }

  if (byte_2804FFF99)
  {
    v37 = 1;
    v38 = v68;
    v39 = v60;
    v40 = v59;
  }

  else
  {
    if (qword_2804FAD40 != -1)
    {
      swift_once();
    }

    v38 = v68;
    v39 = v60;
    v40 = v59;
    if (byte_2804FFF98 == 1)
    {
      LOBYTE(v74) = v72 & 1;
      v75 = v56;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FC750, &qword_26D3A65B8);
      sub_26D3A0D58();
      v37 = v73;
    }

    else
    {
      v37 = 0;
    }
  }

  v41 = sub_26D3A0138();
  sub_26D347238(v32, v39, &qword_2804FC908, &qword_26D3A67E8);
  v42 = v39 + *(v40 + 36);
  *v42 = v37;
  *(v42 + 1) = 0;
  *(v42 + 2) = v58;
  *(v42 + 8) = v41;
  sub_26D3A0298();
  if (qword_2804FAD40 != -1)
  {
    swift_once();
  }

  sub_26D394878();
  sub_26D39361C(&qword_2804FC7B8, MEMORY[0x277CDDFF8], MEMORY[0x277CDDFF0]);
  v43 = v64;
  v44 = v70;
  sub_26D3A0A38();
  (*(v69 + 8))(v38, v44);
  sub_26D3481A4(v39, &qword_2804FC910, &qword_26D3A67F0);
  if (byte_2804FFF98 == 1)
  {
    v45 = sub_26D3A0C48();
  }

  else
  {
    v45 = sub_26D3A0C78();
  }

  v46 = v45;
  v47 = swift_getKeyPath();
  v74 = v46;
  v48 = sub_26D3A00D8();
  v49 = v65;
  (*(v66 + 32))(v65, v43, v67);
  v50 = &v49[*(v62 + 36)];
  *v50 = v47;
  v50[1] = v48;
  v73 = 0;
  sub_26D3A0D48();
  (*(v61 + 8))(v25, v63);
  LOBYTE(v48) = v74;
  v51 = v75;
  v52 = v49;
  v53 = v71;
  sub_26D394C3C(v52, v71);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FC960, &qword_26D3A6878);
  v55 = v53 + *(result + 36);
  *v55 = v48;
  *(v55 + 8) = v51;
  return result;
}

__n128 sub_26D38E668@<Q0>(uint64_t a2@<X8>)
{
  v4 = sub_26D3A0C48();
  sub_26D3A0EA8();
  sub_26D3A0268();
  v5 = sub_26D3A0EA8();
  v7 = v6;
  v8 = type metadata accessor for TFAnimatedText(0);
  v9 = sub_26D33D0B8(*(v2 + *(v8 + 36)), *(v2 + *(v8 + 36) + 8));
  sub_26D38E7DC();
  if ((v9 & 1) == 0)
  {
    swift_getKeyPath();
  }

  sub_26D3950F8();
  sub_26D39514C();
  sub_26D3A0718();
  result = v11;
  *(a2 + 56) = v17;
  *(a2 + 72) = v18;
  *(a2 + 88) = v19;
  *(a2 + 104) = v20;
  *(a2 + 8) = v14;
  *(a2 + 24) = v15;
  *a2 = v4;
  *(a2 + 40) = v16;
  *(a2 + 120) = 0;
  *(a2 + 128) = v11;
  *(a2 + 144) = v12;
  *(a2 + 145) = v13;
  *(a2 + 152) = v5;
  *(a2 + 160) = v7;
  return result;
}

void *sub_26D38E7DC()
{
  v1 = v0;
  v2 = sub_26D3A01E8();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = (&v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = objc_opt_self();
  v7 = *(v1 + 16);
  v8 = *(v1 + 24);
  v9 = sub_26D3A0F68();
  v10 = [v6 animationWithName_];

  v11 = type metadata accessor for TFAnimatedText(0);
  sub_26D33DB2C(v5);
  if (v7 == 6777186 && v8 == 0xE300000000000000 || (v12 = 0, (sub_26D3A1518() & 1) != 0))
  {
    v12 = sub_26D33D0B8(*(v1 + *(v11 + 36)), *(v1 + *(v11 + 36) + 8));
  }

  v13 = sub_26D33D278(*(v1 + *(v11 + 40)), *(v1 + *(v11 + 40) + 8));
  v14 = sub_26D38E9A4(v5, v10, v12 & 1, v13);
  swift_unknownObjectRelease();
  (*(v3 + 8))(v5, v2);
  return v14;
}

void *sub_26D38E9A4(unint64_t a1, void *a2, int a3, double a4)
{
  v77 = a3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FC9C8, &qword_26D3A68D0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v72 - v9;
  v11 = sub_26D3A0018();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v72 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = (&v72 - v16);
  v18 = *(type metadata accessor for TFAnimatedText(0) + 44);
  v75 = v4;
  LOBYTE(v19) = sub_26D33CD0C(*(v4 + v18), *(v4 + v18 + 8));
  if (qword_2804FAD40 != -1)
  {
LABEL_37:
    swift_once();
  }

  if (byte_2804FFF98)
  {
    goto LABEL_3;
  }

  if (qword_2804FAD48 != -1)
  {
    swift_once();
  }

  if (byte_2804FFF99 & 1) == 0 && (_UISolariumEnabled())
  {
LABEL_3:
    sub_26D39CDDC(0, v19, v20);
    v22 = v21 * 0.75;
    if (*(v75 + 32))
    {
      goto LABEL_11;
    }
  }

  else
  {
    v22 = 12.0;
    if (*(v75 + 32))
    {
      goto LABEL_11;
    }
  }

  sub_26D33D8A4(v17);
  (v12[13])(v15, *MEMORY[0x277CDF3C0], v11);
  v23 = sub_26D3A0008();
  v24 = v12[1];
  v24(v15, v11);
  v24(v17, v11);
  if ((v23 & 1) == 0)
  {
    sub_26D345E5C(0, &unk_2804FC9D0, 0x277D75348);
    sub_26D3A0C78();
    v25 = sub_26D3A1338();
    goto LABEL_13;
  }

LABEL_11:
  v25 = [objc_opt_self() whiteColor];
LABEL_13:
  v26 = v25;
  v27 = objc_opt_self();
  v28 = *MEMORY[0x277D76A28];
  v29 = sub_26D3A01E8();
  v30 = *(v29 - 8);
  (*(v30 + 16))(v10, a1, v29);
  (*(v30 + 56))(v10, 0, 1, v29);
  v31 = sub_26D3A11A8();
  v32 = [objc_opt_self() traitCollectionWithPreferredContentSizeCategory_];

  v33 = [v27 preferredFontForTextStyle:v28 compatibleWithTraitCollection:v32];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FB758, &qword_26D3A3DD8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26D3A22A0;
  v35 = *MEMORY[0x277D740A8];
  *(inited + 32) = *MEMORY[0x277D740A8];
  v36 = sub_26D345E5C(0, &qword_2804FAED0, 0x277D74300);
  *(inited + 40) = v33;
  v37 = *MEMORY[0x277D740C0];
  v74 = v36;
  *(inited + 64) = v36;
  *(inited + 72) = v37;
  *(inited + 104) = sub_26D345E5C(0, &unk_2804FC9D0, 0x277D75348);
  *(inited + 80) = v26;
  v19 = v33;
  v38 = v35;
  v39 = v37;
  v40 = v26;
  v41 = sub_26D358BAC(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FC9E0, &unk_26D3A3DE0);
  swift_arrayDestroy();
  v72 = v40;
  if (a2)
  {
    v42 = *MEMORY[0x277D74170];
    ObjectType = swift_getObjectType();
    *&v80 = a2;
    sub_26D34855C(&v80, v79);
    swift_unknownObjectRetain();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v78 = v41;
    sub_26D357A08(v79, v42, isUniquelyReferenced_nonNull_native);
    v41 = v78;
  }

  v17 = 0;
  a4 = a4 - v22;
  a1 = 0x277CCA000uLL;
  v12 = &off_279D9B000;
  v73 = v38;
  while (1)
  {
    a2 = [objc_allocWithZone(MEMORY[0x277CCAB48]) init];

    ObjectType = v74;
    *&v80 = v19;
    sub_26D34855C(&v80, v79);
    v10 = v19;
    v15 = swift_isUniquelyReferenced_nonNull_native();
    v78 = v41;
    v11 = sub_26D33F3DC(v38);
    v45 = v41[2];
    v46 = (v44 & 1) == 0;
    v47 = v45 + v46;
    if (__OFADD__(v45, v46))
    {
      __break(1u);
LABEL_36:
      __break(1u);
      goto LABEL_37;
    }

    LOBYTE(v19) = v44;
    if (v41[3] >= v47)
    {
      if ((v15 & 1) == 0)
      {
        sub_26D33FB94();
      }
    }

    else
    {
      sub_26D3404F4(v47, v15);
      v48 = sub_26D33F3DC(v38);
      if ((v19 & 1) != (v49 & 1))
      {
        goto LABEL_40;
      }

      v11 = v48;
    }

    v41 = v78;
    if (v19)
    {
      v50 = (v78[7] + 32 * v11);
      __swift_destroy_boxed_opaque_existential_0(v50);
      sub_26D34855C(v79, v50);
    }

    else
    {
      v78[(v11 >> 6) + 8] |= 1 << v11;
      *(v41[6] + 8 * v11) = v38;
      sub_26D34855C(v79, (v41[7] + 32 * v11));
      v51 = v41[2];
      v52 = __OFADD__(v51, 1);
      v53 = v51 + 1;
      if (v52)
      {
        goto LABEL_36;
      }

      v41[2] = v53;
      v54 = v38;
    }

    v17 = a2;
    v76 = v10;
    if ((v77 & 1) == 0)
    {
      break;
    }

    if (!a2)
    {
      goto LABEL_39;
    }

    v55 = objc_allocWithZone(*(a1 + 2200));
    v56 = sub_26D3A0F68();
    type metadata accessor for Key(0);
    sub_26D39361C(&qword_2804FB510, type metadata accessor for Key, &unk_26D3A27CC);
    v57 = a1;
    v58 = sub_26D3A0F18();
    v12 = &off_279D9B000;
    v59 = [v55 initWithString:v56 attributes:{v58, v72}];

    [a2 appendAttributedString_];
LABEL_30:
    v60 = objc_allocWithZone(*(v57 + 2200));
    v61 = sub_26D3A0F68();
    type metadata accessor for Key(0);
    sub_26D39361C(&qword_2804FB510, type metadata accessor for Key, &unk_26D3A27CC);
    v62 = sub_26D3A0F18();
    v63 = [v60 v12[352]];

    [a2 appendAttributedString_];
    a1 = v57;
    if (v77)
    {
      v64 = objc_allocWithZone(*(v57 + 2200));
      v65 = sub_26D3A0F68();
      v66 = [v64 initWithString_];

      [a2 appendAttributedString_];
    }

    v67 = v76;
    [v76 pointSize];
    v19 = [v67 fontWithSize_];

    [a2 size];
    v12 = &off_279D9B000;
    v38 = v73;
    if (a4 < v69)
    {
      [v19 pointSize];
      if (v70 > 8.0)
      {
        continue;
      }
    }

    return a2;
  }

  v57 = a1;
  if (a2)
  {
    goto LABEL_30;
  }

  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  type metadata accessor for Key(0);
  result = sub_26D3A1548();
  __break(1u);
  return result;
}

unsigned __int8 *sub_26D38F314(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  type metadata accessor for _UIAnimatedTextView();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v8 = [objc_allocWithZone(ObjCClassFromMetadata) initReadonlyAndUnselectableWithFrame:0 textContainer:{0.0, 0.0, 0.0, 0.0}];
  if (!v8)
  {
    v8 = [objc_allocWithZone(ObjCClassFromMetadata) init];
  }

  v9 = objc_opt_self();
  v10 = v8;
  v11 = [v9 clearColor];
  [v10 setBackgroundColor_];

  v12 = v10;
  [v12 setSelectable_];
  [v12 setEditable_];
  v13 = [v12 textLayoutManager];
  if (v13)
  {
    v14 = v13;
    v15 = [v13 textContainer];

    if (v15)
    {
      [v15 setMaximumNumberOfLines_];
    }
  }

  v16 = *MEMORY[0x277D768C8];
  v17 = *(MEMORY[0x277D768C8] + 8);
  v18 = *(MEMORY[0x277D768C8] + 16);
  v19 = *(MEMORY[0x277D768C8] + 24);
  v20 = v12;
  [v20 setContentInset_];
  [v20 setAttributedText_];
  [v20 setTextAlignment_];
  [v20 setContentInset_];

  sub_26D38FD64(0, 1);
  if (sub_26D33D0B8(a3, a4 & 1))
  {
    v21 = v20[OBJC_IVAR____TtC16TextFormattingUIP33_765D2D84B42F2E34C8687CE391E4C01F19_UIAnimatedTextView_shouldAnimate];
    v20[OBJC_IVAR____TtC16TextFormattingUIP33_765D2D84B42F2E34C8687CE391E4C01F19_UIAnimatedTextView_shouldAnimate] = 0;
    if (v21 == 1)
    {
      [v20 setAllowsTextAnimations_];
      v22 = [v20 textLayoutManager];
      if (v22)
      {
        v23 = v22;
        v24 = sub_26D3A1098();
        v25 = sub_26D3A0F68();
        [v23 setValue:v24 forKey:v25];
      }
    }
  }

  else
  {
    sub_26D38F9DC();
  }

  return v20;
}

void sub_26D38F5D8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  [a1 setAttributedText_];
  [a1 setTextAlignment_];
  type metadata accessor for _UIAnimatedTextView();
  v8 = swift_dynamicCastClass();
  if (v8)
  {
    v9 = v8;
    v15 = a1;
    sub_26D38FD64(0, 1);
    if (sub_26D33D0B8(a4, a5 & 1))
    {
      v10 = v9[OBJC_IVAR____TtC16TextFormattingUIP33_765D2D84B42F2E34C8687CE391E4C01F19_UIAnimatedTextView_shouldAnimate];
      v9[OBJC_IVAR____TtC16TextFormattingUIP33_765D2D84B42F2E34C8687CE391E4C01F19_UIAnimatedTextView_shouldAnimate] = 0;
      if (v10 == 1)
      {
        [v9 setAllowsTextAnimations_];
        v11 = [v9 textLayoutManager];
        if (v11)
        {
          v12 = v11;
          v13 = sub_26D3A1098();
          v14 = sub_26D3A0F68();
          [v12 setValue:v13 forKey:v14];
        }
      }
    }

    else
    {
      sub_26D38F9DC();
    }
  }
}

uint64_t sub_26D38F760(uint64_t a1, unsigned __int8 a2, uint64_t a3, unsigned __int8 a4, uint64_t a5)
{
  if ((a2 | a4))
  {
    return 0;
  }

  type metadata accessor for _UIAnimatedTextView();
  if (swift_dynamicCastClass())
  {
    sub_26D38FD64(a3, 0);
  }

  return a1;
}

uint64_t sub_26D38F7E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_26D3978A0();

  return MEMORY[0x28212E3C8](a1, a2, a3, v6);
}

uint64_t sub_26D38F844(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_26D3978A0();

  return MEMORY[0x28212E358](a1, a2, a3, v6);
}

void sub_26D38F8A8(uint64_t a1)
{
  sub_26D3978A0();
  sub_26D3A06D8();
  __break(1u);
}

uint64_t sub_26D38F9DC()
{
  result = [v0 attributedText];
  if (result)
  {
    v2 = result;
    v3 = [result attribute:*MEMORY[0x277D74170] atIndex:0 effectiveRange:0];

    if (v3)
    {
      sub_26D3A1378();
      swift_unknownObjectRelease();
    }

    else
    {
      v18 = 0u;
      v19 = 0u;
    }

    v13 = v18;
    v14 = v19;
    if (*(&v19 + 1))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FC3C0, &qword_26D3A6028);
      result = swift_dynamicCast();
      if (result)
      {
        v4 = v17;
        v5 = *(v0 + OBJC_IVAR____TtC16TextFormattingUIP33_765D2D84B42F2E34C8687CE391E4C01F19_UIAnimatedTextView_shouldAnimate);
        *(v0 + OBJC_IVAR____TtC16TextFormattingUIP33_765D2D84B42F2E34C8687CE391E4C01F19_UIAnimatedTextView_shouldAnimate) = 1;
        if ((v5 & 1) == 0)
        {
          [v0 setAllowsTextAnimations_];
          v6 = [v0 textLayoutManager];
          if (v6)
          {
            v7 = v6;
            v8 = sub_26D3A1098();
            v9 = sub_26D3A0F68();
            [v7 setValue:v8 forKey:v9];
          }
        }

        v10 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v15 = sub_26D39024C;
        v16 = v10;
        *&v13 = MEMORY[0x277D85DD0];
        *(&v13 + 1) = 1107296256;
        *&v14 = sub_26D38FD04;
        *(&v14 + 1) = &block_descriptor;
        v11 = _Block_copy(&v13);

        v12 = [v0 _animatorForTextAnimation_notify_];
        _Block_release(v11);
        if (v12)
        {
          [v12 start];
          swift_unknownObjectRelease();
        }

        return swift_unknownObjectRelease();
      }
    }

    else
    {
      return sub_26D3481A4(&v13, &qword_2804FB7A0, &unk_26D3A3E00);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_26D38FC74(void *a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    if (*(Strong + OBJC_IVAR____TtC16TextFormattingUIP33_765D2D84B42F2E34C8687CE391E4C01F19_UIAnimatedTextView_shouldAnimate) == 1 && [a1 state] == 1)
    {
      [a1 start];
    }
  }
}

uint64_t sub_26D38FD04(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);

  v3 = swift_unknownObjectRetain();
  v2(v3);

  return swift_unknownObjectRelease();
}

id sub_26D38FD64(uint64_t a1, char a2)
{
  result = [v2 attributedText];
  if (!result)
  {
    __break(1u);
    goto LABEL_22;
  }

  v6 = result;
  v7 = [result string];

  v8 = sub_26D3A0F98();
  v10 = v9;

  v11 = HIBYTE(v10) & 0xF;
  if ((v10 & 0x2000000000000000) == 0)
  {
    v11 = v8 & 0xFFFFFFFFFFFFLL;
  }

  if (v11)
  {
    result = [v2 attributedText];
    if (result)
    {
      v12 = result;
      v13 = [result attribute:*MEMORY[0x277D740A8] atIndex:0 effectiveRange:0];

      if (v13)
      {
        sub_26D3A1378();
        swift_unknownObjectRelease();
      }

      else
      {
        v27 = 0u;
        v28 = 0u;
      }

      v29[0] = v27;
      v29[1] = v28;
      if (*(&v28 + 1))
      {
        sub_26D345E5C(0, &qword_2804FAED0, 0x277D74300);
        if (swift_dynamicCast())
        {
          [v26 ascender];
          v15 = v14;
          [v26 descender];
          v17 = v16;

          v18 = v15 + fabs(v17);
          if ((a2 & 1) == 0)
          {
LABEL_12:
            Height = *&a1;
            return [v2 setTextContainerInset_];
          }

LABEL_18:
          [v2 bounds];
          Height = CGRectGetHeight(v30);
          return [v2 setTextContainerInset_];
        }
      }

      else
      {
        sub_26D3481A4(v29, &qword_2804FB7A0, &unk_26D3A3E00);
      }

      result = [v2 attributedText];
      if (result)
      {
        v20 = result;
        result = [result string];
        if (result)
        {
          v21 = result;

          result = [v2 attributedText];
          if (result)
          {
            v22 = result;
            v23 = [result attributesAtIndex:0 effectiveRange:0];

            type metadata accessor for Key(0);
            sub_26D39361C(&qword_2804FB510, type metadata accessor for Key, &unk_26D3A27CC);
            sub_26D3A0F28();

            v24 = sub_26D3A0F18();

            [v21 sizeWithAttributes_];
            v18 = v25;

            if ((a2 & 1) == 0)
            {
              goto LABEL_12;
            }

            goto LABEL_18;
          }

LABEL_25:
          __break(1u);
          return result;
        }

LABEL_24:
        __break(1u);
        goto LABEL_25;
      }

LABEL_23:
      __break(1u);
      goto LABEL_24;
    }

LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  return result;
}

id sub_26D3901B8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for _UIAnimatedTextView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_26D390214()
{
  MEMORY[0x26D6BE5A0](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id sub_26D39026C()
{
  v1 = *v0;
  v2 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  v3 = objc_opt_self();
  v4 = v2;
  v5 = [v3 clearColor];
  [v4 setBackgroundColor_];

  [v4 setAttributedText_];
  [v4 setTextAlignment_];
  return v4;
}

double sub_26D390340(uint64_t a1, char a2)
{
  [*v2 size];
  v6 = *&a1;
  if (a2)
  {
    v6 = result;
  }

  if (v6 < result)
  {
    return v6;
  }

  return result;
}

uint64_t sub_26D3903D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_26D3978F4();

  return MEMORY[0x28212E3C8](a1, a2, a3, v6);
}

uint64_t sub_26D390438(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_26D3978F4();

  return MEMORY[0x28212E358](a1, a2, a3, v6);
}

void sub_26D39049C(uint64_t a1)
{
  sub_26D3978F4();
  sub_26D3A06D8();
  __break(1u);
}

uint64_t sub_26D3904C4@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  KeyPath = swift_getKeyPath();
  v9 = swift_getKeyPath();
  v10 = a4 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FC9E8, &qword_26D3A68D8) + 36);
  v11 = type metadata accessor for TFComponentBackground(0);
  *(v10 + v11[10]) = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FB310, &qword_26D3A3118);
  swift_storeEnumTagMultiPayload();
  v12 = swift_getKeyPath();
  v13 = swift_getKeyPath();
  *v10 = a2 & 1;
  *(v10 + 1) = BYTE1(a2) & 1;
  *(v10 + 2) = BYTE2(a2) & 1;
  *(v10 + 3) = HIBYTE(a2) & 1;
  *(v10 + 8) = a3;
  *(v10 + 16) = KeyPath;
  *(v10 + 24) = 0;
  v14 = v10 + v11[11];
  *v14 = v12;
  *(v14 + 8) = 0;
  v15 = v10 + v11[12];
  *v15 = v13;
  *(v15 + 8) = 0;
  v16 = v10 + v11[13];
  *v16 = swift_getKeyPath();
  *(v16 + 8) = 0;
  v17 = v10 + v11[14];
  *v17 = swift_getKeyPath();
  *(v17 + 8) = 0;
  v18 = v10 + v11[15];
  *v18 = swift_getKeyPath();
  *(v18 + 8) = 0;

  v19 = sub_26D3A0EA8();
  v21 = v20;
  v22 = (v10 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FC870, &qword_26D3A66E8) + 36));
  *v22 = v19;
  v22[1] = v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FC9F0, &qword_26D3A68E0);
  v24 = *(*(v23 - 8) + 16);

  return v24(a4, a1, v23);
}

uint64_t sub_26D3906C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (v2[1])
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3 | *v2;
  if (v2[2])
  {
    v5 = 0x10000;
  }

  else
  {
    v5 = 0;
  }

  if (v2[3])
  {
    v6 = 0x1000000;
  }

  else
  {
    v6 = 0;
  }

  return sub_26D3904C4(a1, v4 | v5 | v6, *(v2 + 1), a2);
}

double sub_26D39070C@<D0>(uint64_t a2@<X8>)
{
  if ((*v2 & 1) != 0 || (v4 = type metadata accessor for TFComponentBackground(0), (sub_26D33D0B8(*&v2[*(v4 + 48)], v2[*(v4 + 48) + 8]) & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    if (qword_2804FAD40 != -1)
    {
      swift_once();
    }

    v5 = byte_2804FFF98 ^ 1;
  }

  v6 = sub_26D3A0C48();
  v7 = sub_26D3A0EA8();
  v9 = v8;
  sub_26D390864(v2, v5 & 1, &v14);
  v18[0] = v14;
  v18[1] = v15;
  v18[2] = v16;
  v18[3] = v17;
  *&v19 = v7;
  *(&v19 + 1) = v9;
  v25 = v16;
  v26 = v17;
  v23 = v14;
  v24 = v15;
  v27 = v19;
  v20[0] = v14;
  v20[1] = v15;
  v20[2] = v16;
  v20[3] = v17;
  v21 = v7;
  v22 = v9;
  sub_26D34856C(v18, &v13, &qword_2804FCCA8, &qword_26D3A7050);
  sub_26D3481A4(v20, &qword_2804FCCA8, &qword_26D3A7050);
  *a2 = v6;
  v10 = v23;
  *(a2 + 24) = v24;
  v11 = v26;
  *(a2 + 40) = v25;
  *(a2 + 56) = v11;
  result = *&v27;
  *(a2 + 72) = v27;
  *(a2 + 8) = v10;
  return result;
}

uint64_t sub_26D390864@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  if (*a1)
  {
    v4 = 0;
    v5 = 0;
    v6 = 0;
    v7 = 0;
    v8 = 0;
    result = 0;
    v10 = 0;
    v11 = 0uLL;
  }

  else
  {
    if (*(a1 + 1))
    {
      v14 = sub_26D390988();
    }

    else
    {
      v14 = sub_26D390CB4();
    }

    v4 = v14;
    v7 = sub_26D3A0EA8();
    v8 = v15;
    v5 = sub_26D3A0788();
    v16 = 0uLL;
    if (*(a1 + 3))
    {
      v17 = sub_26D33CD0C(*(a1 + 16), *(a1 + 24));
      v18 = type metadata accessor for TFComponentBackground(0);
      v19 = sub_26D33D0B8(*(a1 + *(v18 + 60)), *(a1 + *(v18 + 60) + 8));
      sub_26D39CDDC(v19 & 1, v17, v20);
      *(&v16 + 1) = v21;
    }

    v22 = v16;
    if (a2)
    {
      v6 = 1056964608;
    }

    else
    {
      v6 = 0;
    }

    v11 = v22;
    v10 = 256;
  }

  *a3 = v4;
  *(a3 + 8) = v5;
  *(a3 + 12) = v6;
  *(a3 + 16) = v7;
  *(a3 + 24) = v8;
  *(a3 + 32) = v11;
  *(a3 + 48) = v10;
  *(a3 + 56) = result;
  return result;
}