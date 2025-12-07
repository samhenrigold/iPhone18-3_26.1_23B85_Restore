uint64_t sub_2629097B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_26294DAC8();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v21 - v11;
  v13 = sub_26294CD78();
  (*(*(v13 - 8) + 16))(a3, a1, v13);
  v14 = *(a2 + *(type metadata accessor for RecommendedForDeleteView(0) + 20) + 8);
  v15 = type metadata accessor for PassbookCategoryView(0);
  v16 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2E7D8, &unk_26294EB50);
  sub_26294DA08();
  v17 = (a3 + v15[5]);
  type metadata accessor for SEStorageManagementController(0);
  sub_26290D8E8(&qword_27FF2E800, type metadata accessor for SEStorageManagementController, &protocol conformance descriptor for SEStorageManagementController);
  *v17 = sub_26294D178();
  v17[1] = v18;
  *(a3 + v15[7]) = 1;
  (*(v7 + 104))(v12, *MEMORY[0x277CDF0D8], v6);
  (*(v7 + 16))(v10, v12, v6);
  sub_26294D928();
  (*(v7 + 8))(v12, v6);
  v19 = v15[9];
  *(a3 + v19) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2E840, &qword_26294FEE0);
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_262909A38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_26294C7A8();
  (*(*(v6 - 8) + 16))(a3, a1, v6);
  v7 = *(a2 + *(type metadata accessor for RecommendedForDeleteView(0) + 20) + 8);
  v8 = type metadata accessor for ViennaAppCategoryView(0);
  v9 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2E7D8, &unk_26294EB50);
  sub_26294DA08();
  v10 = (a3 + v8[5]);
  type metadata accessor for SEStorageManagementController(0);
  sub_26290D8E8(&qword_27FF2E800, type metadata accessor for SEStorageManagementController, &protocol conformance descriptor for SEStorageManagementController);
  *v10 = sub_26294D178();
  v10[1] = v11;
  *(a3 + v8[7]) = 1;
  v12 = v8[8];
  *(a3 + v12) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2E840, &qword_26294FEE0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_262909BA4(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F050, &unk_262950DC0);
  sub_26290CEE8();
  return sub_26294DA98();
}

uint64_t sub_262909C14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v40 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F080, &unk_26294F7D0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v33 - v4;
  v6 = sub_26294CD78();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for RecommendedForDeleteView(0);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10 - 8);
  v36 = v12;
  v37 = v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F060, &unk_26294F7B0);
  v38 = *(v13 - 8);
  v39 = v13;
  MEMORY[0x28223BE20](v13);
  v35 = v33 - v14;
  v41 = a1;
  v15 = sub_262908398();
  v16 = *(v15 + 16);
  if (v16)
  {
    v34 = v11;
    v33[1] = v15;
    v17 = v15 + 32;
    v44 = (v7 + 32);
    v18 = MEMORY[0x277D84F90];
    v42 = v9;
    v43 = v7;
    do
    {
      sub_262906C54(v17, v46);
      sub_262907114(v46, v45);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2EC98, &qword_26294F228);
      v19 = swift_dynamicCast();
      (*(v7 + 56))(v5, v19 ^ 1u, 1, v6);
      if ((*(v7 + 48))(v5, 1, v6) == 1)
      {
        sub_2628DF6F0(v5, &qword_27FF2F080, &unk_26294F7D0);
      }

      else
      {
        v20 = *v44;
        (*v44)(v9, v5, v6);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v18 = sub_26291D958(0, v18[2] + 1, 1, v18);
        }

        v22 = v18[2];
        v21 = v18[3];
        if (v22 >= v21 >> 1)
        {
          v18 = sub_26291D958((v21 > 1), v22 + 1, 1, v18);
        }

        v18[2] = v22 + 1;
        v23 = v18 + ((*(v43 + 80) + 32) & ~*(v43 + 80)) + *(v43 + 72) * v22;
        v9 = v42;
        v20(v23, v42, v6);
      }

      v17 += 40;
      --v16;
    }

    while (v16);

    v11 = v34;
  }

  else
  {

    v18 = MEMORY[0x277D84F90];
  }

  *&v46[0] = v18;
  v44 = type metadata accessor for RecommendedForDeleteView;
  v24 = v37;
  sub_26290CD68(v41, v37, type metadata accessor for RecommendedForDeleteView);
  v25 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v26 = swift_allocObject();
  sub_26290CDD4(v24, v26 + v25);
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2EB58, &qword_26294ECF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2E8B0, &unk_262950DD0);
  sub_2628DFD0C(&qword_27FF2F088, &qword_27FF2EB58, &qword_26294ECF0, MEMORY[0x277D83980]);
  sub_2628DFD0C(&qword_27FF2E8A8, &qword_27FF2E8B0, &unk_262950DD0, MEMORY[0x277CDD938]);
  sub_26290D8E8(&qword_27FF2F090, MEMORY[0x277D49038], MEMORY[0x277D49058]);
  v27 = v35;
  sub_26294DA68();
  sub_26290CD68(v41, v24, v44);
  v28 = swift_allocObject();
  sub_26290CDD4(v24, v28 + v25);
  v29 = swift_allocObject();
  *(v29 + 16) = sub_26290D088;
  *(v29 + 24) = v28;
  v30 = v40;
  (*(v38 + 32))(v40, v27, v39);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F050, &unk_262950DC0);
  v32 = (v30 + *(result + 36));
  *v32 = sub_26290D2F4;
  v32[1] = v29;
  return result;
}

uint64_t sub_26290A210(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F080, &unk_26294F7D0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v15[-v5];
  v7 = sub_26294CD78();
  v8 = *(v7 - 8);
  (*(v8 + 16))(v6, a1, v7);
  (*(v8 + 56))(v6, 0, 1, v7);
  v16 = a1;
  v17 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2E928, &unk_26294F880);
  v9 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF2E930, &unk_26294FFB0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF2E938, &unk_26294F890);
  v11 = sub_2628DF824();
  v12 = sub_2628DFD0C(&qword_27FF2E960, &qword_27FF2E938, &unk_26294F890, MEMORY[0x277CDF028]);
  v18 = v9;
  v19 = v10;
  v20 = v11;
  v21 = v12;
  swift_getOpaqueTypeConformance2();
  v13 = MEMORY[0x277D49038];
  sub_26290D8E8(&qword_27FF2F0A8, MEMORY[0x277D49038], MEMORY[0x277D49050]);
  sub_26290D8E8(&qword_27FF2F0B0, v13, MEMORY[0x277D49040]);
  sub_26290D8E8(&qword_27FF2EFC0, v13, MEMORY[0x277D49048]);
  return sub_26294D118();
}

uint64_t sub_26290A498@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v54 = a2;
  v55 = a3;
  v51 = sub_26294C5F8();
  v56 = *(v51 - 8);
  MEMORY[0x28223BE20](v51);
  v50 = &v48 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2E978, &qword_26294EC40);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v48 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2E950, &unk_26294FFC0);
  MEMORY[0x28223BE20](v8);
  v10 = (&v48 - v9);
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2E930, &unk_26294FFB0);
  MEMORY[0x28223BE20](v53);
  v52 = &v48 - v11;
  v12 = sub_26294CD38();
  v14 = v13;
  sub_26294CD28();
  v15 = a1;
  sub_26294CD48();
  v17 = sub_2629205EC(v16);
  v19 = v18;
  *v10 = v12;
  v10[1] = v14;
  sub_2628DF954(v7, v10 + v8[9], &qword_27FF2E978, &qword_26294EC40);
  *(v10 + v8[15]) = 1;
  *(v10 + v8[10]) = 0;
  v20 = (v10 + v8[11]);
  *v20 = v17;
  v20[1] = v19;
  *(v10 + v8[12]) = 2;
  *(v10 + v8[13]) = 0;
  v21 = v10 + v8[14];
  SEStorageManagementViewModel.WalletUsageCategory.iconView.getter(&v59);
  v22 = v59;
  v23 = v60;
  v48 = v61;
  v49 = v62;
  sub_26294DAE8();
  sub_26294D0D8();
  v63 = v23;
  v24 = &v21[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2E980, &unk_26294EC50) + 36)];
  v25 = *(sub_26294D1D8() + 20);
  v26 = *MEMORY[0x277CE0118];
  v27 = sub_26294D378();
  (*(*(v27 - 8) + 104))(&v24[v25], v26, v27);
  __asm { FMOV            V0.2D, #6.0 }

  *v24 = _Q0;
  *&v24[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2E988, &unk_26294F8A0) + 36)] = 256;
  *(v21 + 1) = v48;
  v33 = v65;
  *(v21 + 40) = v64;
  *v21 = v22;
  v21[8] = v23;
  *(v21 + 9) = v59;
  *(v21 + 3) = *(&v59 + 3);
  *(v21 + 4) = v49;
  *(v21 + 56) = v33;
  *(v21 + 72) = v66;
  sub_2628DF6F0(v7, &qword_27FF2E978, &qword_26294EC40);
  v34 = v50;
  v35 = v51;
  (*(v56 + 104))(v50, *MEMORY[0x277D48DF8], v51);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2E8B8, &qword_26294EC60);
  v36 = swift_allocObject();
  *(v36 + 16) = xmmword_26294E7D0;
  v37 = v15;
  v38 = sub_26294CD38();
  v40 = v39;
  v41 = MEMORY[0x277D837D0];
  *(v36 + 56) = MEMORY[0x277D837D0];
  v42 = sub_2628DF5B8();
  *(v36 + 64) = v42;
  *(v36 + 32) = v38;
  *(v36 + 40) = v40;
  sub_26294CD48();
  v44 = sub_2629205EC(v43);
  *(v36 + 96) = v41;
  *(v36 + 104) = v42;
  *(v36 + 72) = v44;
  *(v36 + 80) = v45;
  sub_26294C6B8();

  (*(v56 + 8))(v34, v35);
  sub_2628DFD0C(&qword_27FF2E948, &qword_27FF2E950, &unk_26294FFC0, &unk_262950BA8);
  v46 = v52;
  sub_26294D798();

  sub_2628DF6F0(v10, &qword_27FF2E950, &unk_26294FFC0);
  v57 = v37;
  v58 = v54;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2E938, &unk_26294F890);
  sub_2628DF824();
  sub_2628DFD0C(&qword_27FF2E960, &qword_27FF2E938, &unk_26294F890, MEMORY[0x277CDF028]);
  sub_26294D6C8();
  return sub_2628DF6F0(v46, &qword_27FF2E930, &unk_26294FFB0);
}

uint64_t sub_26290AA48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v23 = a2;
  v24 = a3;
  v21 = a1;
  v3 = type metadata accessor for RecommendedForDeleteView(0);
  v22 = *(v3 - 8);
  v4 = *(v22 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_26294CD78();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = sub_26294C5F8();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 104))(v12, *MEMORY[0x277D48DF0], v9);
  v20 = sub_26294C5E8();
  v14 = v13;
  (*(v10 + 8))(v12, v9);
  (*(v7 + 16))(&v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v21, v6);
  sub_26290CD68(v23, v5, type metadata accessor for RecommendedForDeleteView);
  v15 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v16 = (v8 + *(v22 + 80) + v15) & ~*(v22 + 80);
  v17 = swift_allocObject();
  (*(v7 + 32))(v17 + v15, &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v6);
  sub_26290CDD4(v5, v17 + v16);
  v28[0] = v20;
  v28[1] = v14;
  v25 = v28;
  v26 = 0x6873617274;
  v27 = 0xE500000000000000;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2E990, &unk_26294F8B0);
  sub_2628DFD0C(&qword_27FF2E998, &qword_27FF2E990, &unk_26294F8B0, MEMORY[0x277CDEFF0]);
  sub_26294D988();
}

void sub_26290ADB8(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2ED68, &qword_26294F2F0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v18 - v4;
  v6 = sub_26294CBA8();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_26294CD58();
  v11 = *(v10 + 16);
  if (v11)
  {
    type metadata accessor for RecommendedForDeleteView(0);
    v18[1] = v10;
    v19 = a2;
    v13 = *(v7 + 16);
    v12 = v7 + 16;
    v14 = v10 + ((*(v12 + 64) + 32) & ~*(v12 + 64));
    v20 = *(v12 + 56);
    v21 = v13;
    do
    {
      v21(v9, v14, v6);
      v15 = sub_26294CB98();
      (*(*(v15 - 8) + 56))(v5, 1, 1, v15);
      swift_getKeyPath();
      swift_getKeyPath();
      sub_26294CFF8();

      if ((v23 & 1) == 0)
      {
        sub_2628F122C(v9, v5, 0, 1);
        sub_2628EC330();
      }

      sub_2628DF6F0(v5, &qword_27FF2ED68, &qword_26294F2F0);
      (*(v12 - 8))(v9, v6);
      v14 += v20;
      --v11;
    }

    while (v11);

    a2 = v19;
  }

  else
  {
  }

  v16 = *(a2 + *(type metadata accessor for RecommendedForDeleteView(0) + 20) + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_26294CFF8();

  if ((v22 & 1) == 0)
  {
    v17 = v16;
    sub_262905918(v17, v17, 0, 0);
  }
}

void sub_26290B0B4(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2ED68, &qword_26294F2F0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v43 - v4;
  v63 = sub_26294CBA8();
  v47 = *(v63 - 8);
  MEMORY[0x28223BE20](v63);
  v7 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_26294CD78();
  v8 = *(v46 - 8);
  MEMORY[0x28223BE20](v46);
  v10 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F098, &qword_26294F7E0);
  v11 = *(v60 - 8);
  MEMORY[0x28223BE20](v60);
  v49 = (&v43 - v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F0A0, &qword_26294F7E8);
  v14 = MEMORY[0x28223BE20](v13 - 8);
  v59 = &v43 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v17 = &v43 - v16;
  v18 = *(v1 + *(type metadata accessor for RecommendedForDeleteView(0) + 20) + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_26294CFF8();

  v19 = v10;

  v20 = 0;
  v21 = v66;
  v48 = v8 + 16;
  v56 = (v11 + 48);
  v57 = (v11 + 56);
  v22 = v46;
  v23 = *(v66 + 16);
  v54 = (v8 + 32);
  v55 = v23;
  v62 = v47 + 16;
  v24 = (v47 + 8);
  v50 = v8;
  v52 = v17;
  v53 = (v8 + 8);
  v58 = v66;
  v45 = a1;
  v44 = v19;
  while (1)
  {
    v25 = v60;
    if (v20 == v23)
    {
      v26 = 1;
      v61 = v23;
      v27 = v59;
    }

    else
    {
      if ((v20 & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_22:
        __break(1u);
        return;
      }

      if (v20 >= *(v21 + 16))
      {
        goto LABEL_22;
      }

      v28 = v20 + 1;
      v30 = v49;
      v29 = v50;
      v31 = v21 + ((*(v29 + 80) + 32) & ~*(v29 + 80)) + *(v29 + 72) * v20;
      v32 = *(v60 + 48);
      *v49 = v20;
      (*(v29 + 16))(&v30[v32], v31, v22);
      v33 = v30;
      v27 = v59;
      sub_262906F00(v33, v59, &qword_27FF2F098, &qword_26294F7E0);
      v26 = 0;
      v61 = v28;
      v17 = v52;
    }

    (*v57)(v27, v26, 1, v25);
    sub_262906F00(v27, v17, &qword_27FF2F0A0, &qword_26294F7E8);
    if ((*v56)(v17, 1, v25) == 1)
    {
      break;
    }

    (*v54)(v19, &v17[*(v25 + 48)], v22);
    if (sub_26294C5A8())
    {
      v34 = sub_26294CD58();
      v35 = *(v34 + 16);
      if (v35)
      {
        v36 = *(v47 + 80);
        v51 = v34;
        v37 = v34 + ((v36 + 32) & ~v36);
        v38 = *(v47 + 72);
        v39 = *(v47 + 16);
        v39(v7, v37, v63);
        while (1)
        {
          v41 = sub_26294CB98();
          (*(*(v41 - 8) + 56))(v5, 1, 1, v41);
          swift_getKeyPath();
          swift_getKeyPath();
          sub_26294CFF8();

          if ((v64 & 1) == 0)
          {
            sub_2628F122C(v7, v5, 0, 1);
            sub_2628EC330();
          }

          sub_2628DF6F0(v5, &qword_27FF2ED68, &qword_26294F2F0);
          v40 = v63;
          (*v24)(v7, v63);
          v37 += v38;
          if (!--v35)
          {
            break;
          }

          v39(v7, v37, v40);
        }

        v22 = v46;
        v19 = v44;
        v17 = v52;
      }

      else
      {
      }
    }

    (*v53)(v19, v22);
    v21 = v58;
    v23 = v55;
    v20 = v61;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_26294CFF8();

  if ((v65 & 1) == 0)
  {
    v42 = v18;
    sub_262905918(v42, v42, 0, 0);
  }
}

uint64_t sub_26290B71C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2E880, &unk_26294F770);
  MEMORY[0x28223BE20](v2);
  v6 = a1;
  sub_26290C3B8(&v5[-v3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F010, &qword_26294F780);
  sub_2628DF40C();
  sub_26290CCB8();
  return sub_26294DA78();
}

uint64_t sub_26290B814@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v31 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2E920, &unk_26294F920);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v27 - v4;
  v6 = sub_26294C7A8();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v34 = v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for RecommendedForDeleteView(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_262908398();
  v14 = *(v13 + 16);
  if (v14)
  {
    v27[0] = v10;
    v27[1] = v11;
    v28 = v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
    v29 = a1;
    v30 = v13;
    v15 = v13 + 32;
    v16 = (v7 + 56);
    v17 = (v7 + 48);
    v33 = v7;
    v18 = (v7 + 32);
    v19 = MEMORY[0x277D84F90];
    v32 = (v7 + 32);
    do
    {
      sub_262906C54(v15, v36);
      sub_262907114(v36, v35);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2EC98, &qword_26294F228);
      v20 = swift_dynamicCast();
      (*v16)(v5, v20 ^ 1u, 1, v6);
      if ((*v17)(v5, 1, v6) == 1)
      {
        sub_2628DF6F0(v5, &qword_27FF2E920, &unk_26294F920);
      }

      else
      {
        v21 = *v18;
        (*v18)(v34, v5, v6);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v19 = sub_26291D6B0(0, *(v19 + 2) + 1, 1, v19);
        }

        v23 = *(v19 + 2);
        v22 = *(v19 + 3);
        if (v23 >= v22 >> 1)
        {
          v19 = sub_26291D6B0((v22 > 1), v23 + 1, 1, v19);
        }

        *(v19 + 2) = v23 + 1;
        v18 = v32;
        v21(&v19[((*(v33 + 80) + 32) & ~*(v33 + 80)) + *(v33 + 72) * v23], v34, v6);
      }

      v15 += 40;
      --v14;
    }

    while (v14);

    v12 = v28;
    a1 = v29;
    v10 = v27[0];
  }

  else
  {

    v19 = MEMORY[0x277D84F90];
  }

  *&v36[0] = v19;
  sub_26290CD68(a1, v12, type metadata accessor for RecommendedForDeleteView);
  v24 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v25 = swift_allocObject();
  sub_26290CDD4(v12, v25 + v24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2E908, &qword_26294E928);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F020, &qword_26294F788);
  sub_2628DFD0C(&qword_27FF2E910, &qword_27FF2E908, &qword_26294E928, MEMORY[0x277D83980]);
  sub_2628DFD0C(&qword_27FF2F018, &qword_27FF2F020, &qword_26294F788, MEMORY[0x277CDD938]);
  sub_26290D8E8(&qword_27FF2E918, MEMORY[0x277D48E58], MEMORY[0x277D48E78]);
  return sub_26294DA68();
}

uint64_t sub_26290BCCC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2E920, &unk_26294F920);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v11[-v5];
  v7 = sub_26294C7A8();
  v8 = *(v7 - 8);
  (*(v8 + 16))(v6, a1, v7);
  (*(v8 + 56))(v6, 0, 1, v7);
  v12 = a1;
  v13 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2E930, &unk_26294FFB0);
  sub_2628DF824();
  v9 = MEMORY[0x277D48E58];
  sub_26290D8E8(&qword_27FF2E968, MEMORY[0x277D48E58], MEMORY[0x277D48E70]);
  sub_26290D8E8(&qword_27FF2E970, v9, MEMORY[0x277D48E60]);
  sub_26290D8E8(&qword_27FF2E848, v9, MEMORY[0x277D48E68]);
  return sub_26294D118();
}

uint64_t sub_26290BEC0@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v51 = a1;
  v52 = a2;
  v50 = sub_26294C5F8();
  v53 = *(v50 - 8);
  MEMORY[0x28223BE20](v50);
  v49 = &v47 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = sub_26294C7F8();
  v3 = *(v48 - 8);
  MEMORY[0x28223BE20](v48);
  v5 = &v47 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2E978, &qword_26294EC40);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v47 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2E950, &unk_26294FFC0);
  MEMORY[0x28223BE20](v9);
  v11 = (&v47 - v10);
  v12 = sub_26294C778();
  v14 = v13;
  sub_26294C768();
  sub_26294C798();
  v16 = sub_2629205EC(v15);
  v18 = v17;
  *v11 = v12;
  v11[1] = v14;
  sub_2628DF954(v8, v11 + v9[9], &qword_27FF2E978, &qword_26294EC40);
  *(v11 + v9[15]) = 1;
  *(v11 + v9[10]) = 0;
  v19 = (v11 + v9[11]);
  *v19 = v16;
  v19[1] = v18;
  *(v11 + v9[12]) = 2;
  *(v11 + v9[13]) = 0;
  v20 = v11 + v9[14];
  sub_26294C758();
  v21 = sub_26294C7D8();
  v23 = v22;
  (*(v3 + 8))(v5, v48);
  KeyPath = swift_getKeyPath();
  sub_26294DAE8();
  sub_26294D0D8();
  v54 = 0;
  v25 = &v20[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2E980, &unk_26294EC50) + 36)];
  v26 = *(sub_26294D1D8() + 20);
  v27 = *MEMORY[0x277CE0118];
  v28 = sub_26294D378();
  (*(*(v28 - 8) + 104))(&v25[v26], v27, v28);
  __asm { FMOV            V0.2D, #6.0 }

  *v25 = _Q0;
  *&v25[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2E988, &unk_26294F8A0) + 36)] = 256;
  v34 = v56;
  *(v20 + 40) = v55;
  *v20 = KeyPath;
  v20[8] = 0;
  *(v20 + 2) = v21;
  *(v20 + 3) = v23;
  *(v20 + 4) = 0x4000000000000000;
  *(v20 + 56) = v34;
  *(v20 + 72) = v57;
  sub_2628DF6F0(v8, &qword_27FF2E978, &qword_26294EC40);
  v36 = v49;
  v35 = v50;
  (*(v53 + 104))(v49, *MEMORY[0x277D48DF8], v50);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2E8B8, &qword_26294EC60);
  v37 = swift_allocObject();
  *(v37 + 16) = xmmword_26294E7D0;
  v38 = sub_26294C868();
  v40 = v39;
  v41 = MEMORY[0x277D837D0];
  *(v37 + 56) = MEMORY[0x277D837D0];
  v42 = sub_2628DF5B8();
  *(v37 + 64) = v42;
  *(v37 + 32) = v38;
  *(v37 + 40) = v40;
  sub_26294C888();
  v44 = sub_2629205EC(v43);
  *(v37 + 96) = v41;
  *(v37 + 104) = v42;
  *(v37 + 72) = v44;
  *(v37 + 80) = v45;
  sub_26294C6B8();

  (*(v53 + 8))(v36, v35);
  sub_2628DFD0C(&qword_27FF2E948, &qword_27FF2E950, &unk_26294FFC0, &unk_262950BA8);
  sub_26294D798();

  return sub_2628DF6F0(v11, &qword_27FF2E950, &unk_26294FFC0);
}

__n128 sub_26290C3B8@<Q0>(uint64_t a2@<X8>)
{
  v17 = a2;
  v2 = sub_26294D4E8();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2E8F0, &qword_26294FF90);
  v6 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v8 = &v15 - v7;
  v9 = sub_26294D338();
  v20 = 1;
  sub_2628DEDFC(v23);
  memcpy(v21, v23, sizeof(v21));
  memcpy(v22, v23, sizeof(v22));
  sub_2628DF954(v21, v18, &qword_27FF2E8F8, &unk_26294F910);
  sub_2628DF6F0(v22, &qword_27FF2E8F8, &unk_26294F910);
  memcpy(&v19[7], v21, 0x120uLL);
  *v18 = v9;
  *&v18[8] = 0;
  v18[16] = v20;
  memcpy(&v18[17], v19, 0x127uLL);
  sub_26294D4D8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2E888, &unk_2629513D0);
  sub_2628DFD0C(&qword_27FF2E890, &qword_27FF2E888, &unk_2629513D0, MEMORY[0x277CE1138]);
  sub_26294D768();
  (*(v3 + 8))(v5, v2);
  memcpy(v23, v18, 0x138uLL);
  sub_2628DF6F0(v23, &qword_27FF2E888, &unk_2629513D0);
  sub_26294DAE8();
  sub_26294D1F8();
  v10 = v17;
  (*(v6 + 32))(v17, v8, v16);
  v11 = v10 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2E880, &unk_26294F770) + 36);
  v12 = *&v18[80];
  *(v11 + 64) = *&v18[64];
  *(v11 + 80) = v12;
  *(v11 + 96) = *&v18[96];
  v13 = *&v18[16];
  *v11 = *v18;
  *(v11 + 16) = v13;
  result = *&v18[48];
  *(v11 + 32) = *&v18[32];
  *(v11 + 48) = result;
  return result;
}

unint64_t sub_26290C704()
{
  result = qword_27FF2EFA8;
  if (!qword_27FF2EFA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF2EF80, &qword_26294F6B8);
    sub_26290C790();
    sub_26290C9D0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF2EFA8);
  }

  return result;
}

unint64_t sub_26290C790()
{
  result = qword_27FF2EFB0;
  if (!qword_27FF2EFB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF2EF98, &qword_26294F6D0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF2EF90, &qword_26294F6C8);
    sub_26294CD78();
    type metadata accessor for PassbookCategoryView(255);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF2EF88, &qword_26294F6C0);
    sub_2628DFD0C(&qword_27FF2EFB8, &qword_27FF2EF88, &qword_26294F6C0, MEMORY[0x277CE1198]);
    sub_2628DF230();
    swift_getOpaqueTypeConformance2();
    sub_26290D8E8(&qword_27FF2EFC0, MEMORY[0x277D49038], MEMORY[0x277D49048]);
    sub_26290D8E8(&qword_27FF2EFC8, type metadata accessor for PassbookCategoryView, &unk_262951808);
    swift_getOpaqueTypeConformance2();
    sub_26290C97C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF2EFB0);
  }

  return result;
}

unint64_t sub_26290C97C()
{
  result = qword_27FF2EFD0;
  if (!qword_27FF2EFD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF2EFD0);
  }

  return result;
}

unint64_t sub_26290C9D0()
{
  result = qword_27FF2EFD8;
  if (!qword_27FF2EFD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF2EF68, &qword_26294F6A0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF2EF60, &qword_26294F698);
    sub_26294C7A8();
    type metadata accessor for ViennaAppCategoryView(255);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF2EF58, &qword_26294F690);
    sub_2628DFD0C(&qword_27FF2EFE0, &qword_27FF2EF58, &qword_26294F690, MEMORY[0x277CE1198]);
    sub_2628DF230();
    swift_getOpaqueTypeConformance2();
    sub_26290D8E8(&qword_27FF2E848, MEMORY[0x277D48E58], MEMORY[0x277D48E68]);
    sub_26290D8E8(&qword_27FF2E850, type metadata accessor for ViennaAppCategoryView, &unk_26294FE18);
    swift_getOpaqueTypeConformance2();
    sub_2628E01B0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF2EFD8);
  }

  return result;
}

uint64_t sub_26290CBBC(uint64_t a1)
{
  v2 = type metadata accessor for MuirfieldView(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_26290CC20()
{
  result = qword_27FF2F000;
  if (!qword_27FF2F000)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF2EFF8, &qword_26294F768);
    sub_2628DF40C();
    sub_26290CCB8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF2F000);
  }

  return result;
}

unint64_t sub_26290CCB8()
{
  result = qword_27FF2F008;
  if (!qword_27FF2F008)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF2F010, &qword_26294F780);
    sub_2628DFD0C(&qword_27FF2F018, &qword_27FF2F020, &qword_26294F788, MEMORY[0x277CDD938]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF2F008);
  }

  return result;
}

uint64_t sub_26290CD68(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_26290CDD4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RecommendedForDeleteView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_26290CE58()
{
  result = qword_27FF2F040;
  if (!qword_27FF2F040)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF2F038, &unk_26294F7A0);
    sub_26290CEE8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF2F040);
  }

  return result;
}

unint64_t sub_26290CEE8()
{
  result = qword_27FF2F048;
  if (!qword_27FF2F048)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF2F050, &unk_262950DC0);
    sub_26290CFA0();
    sub_2628DFD0C(&qword_27FF2F068, &qword_27FF2F070, &unk_26294F7C0, MEMORY[0x277CE04A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF2F048);
  }

  return result;
}

unint64_t sub_26290CFA0()
{
  result = qword_27FF2F058;
  if (!qword_27FF2F058)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF2F060, &unk_26294F7B0);
    sub_2628DFD0C(&qword_27FF2E8A8, &qword_27FF2E8B0, &unk_262950DD0, MEMORY[0x277CDD938]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF2F058);
  }

  return result;
}

uint64_t sub_26290D0EC()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_26294CFF8();
}

uint64_t sub_26290D168(uint64_t a1, void **a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2E9A0, &qword_26294E9A8);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v13 - v8;
  sub_2628DF954(a1, &v13 - v8, &qword_27FF2E9A0, &qword_26294E9A8);
  v10 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2628DF954(v9, v7, &qword_27FF2E9A0, &qword_26294E9A8);
  v11 = v10;
  sub_26294D008();
  return sub_2628DF6F0(v9, &qword_27FF2E9A0, &qword_26294E9A8);
}

uint64_t sub_26290D2BC()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_26290D33C()
{
  v1 = sub_26294CD78();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  v6 = (type metadata accessor for RecommendedForDeleteView(0) - 8);
  v7 = *(*v6 + 80);
  v8 = (v4 + v5 + v7) & ~v7;
  v9 = *(*v6 + 64);
  (*(v2 + 8))(v0 + v4, v1);
  v10 = sub_26294C8A8();
  (*(*(v10 - 8) + 8))(v0 + v8, v10);

  v11 = v0 + v8 + v6[8];

  v12 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2E7D8, &unk_26294EB50) + 32);
  v13 = sub_26294D168();
  (*(*(v13 - 8) + 8))(v11 + v12, v13);
  v14 = v6[9];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2E840, &qword_26294FEE0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = sub_26294D0F8();
    (*(*(v15 - 8) + 8))(v0 + v8 + v14, v15);
  }

  else
  {
  }

  return MEMORY[0x2821FE8E8](v0, v8 + v9, v3 | v7 | 7);
}

void sub_26290D58C()
{
  v1 = *(sub_26294CD78() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(type metadata accessor for RecommendedForDeleteView(0) - 8);
  v5 = v0 + ((v2 + v3 + *(v4 + 80)) & ~*(v4 + 80));

  sub_26290ADB8(v0 + v2, v5);
}

uint64_t objectdestroyTm_1()
{
  v1 = (type metadata accessor for RecommendedForDeleteView(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = sub_26294C8A8();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);

  v6 = v0 + v3 + v1[8];

  v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2E7D8, &unk_26294EB50) + 32);
  v8 = sub_26294D168();
  (*(*(v8 - 8) + 8))(v6 + v7, v8);
  v9 = v1[9];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2E840, &qword_26294FEE0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = sub_26294D0F8();
    (*(*(v10 - 8) + 8))(v0 + v3 + v9, v10);
  }

  else
  {
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_26290D84C(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v4 = *(type metadata accessor for RecommendedForDeleteView(0) - 8);
  v5 = v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return a2(a1, v5);
}

uint64_t sub_26290D8E8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_26290D93C()
{
  result = qword_27FF2F0B8;
  if (!qword_27FF2F0B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF2F0C0, &qword_26294F960);
    sub_26290D9C0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF2F0B8);
  }

  return result;
}

unint64_t sub_26290D9C0()
{
  result = qword_27FF2F0C8;
  if (!qword_27FF2F0C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF2EFA0, &qword_26294F6D8);
    sub_26290C704();
    sub_26290D8E8(&qword_27FF2EFE8, type metadata accessor for MuirfieldView, &unk_2629512B4);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF2F0C8);
  }

  return result;
}

uint64_t sub_26290DAA0(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_26294CCB8();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_6:

    return v9(v10, a2, v8);
  }

  v11 = sub_26294C7A8();
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_5:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_6;
  }

  if (a2 == 0x7FFFFFFF)
  {
    v15 = *(a1 + a3[6] + 8);
    if (v15 >= 0xFFFFFFFF)
    {
      LODWORD(v15) = -1;
    }

    return (v15 + 1);
  }

  else
  {
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2E7D8, &unk_26294EB50);
    if (*(*(v16 - 8) + 84) == a2)
    {
      v8 = v16;
      v12 = *(v16 - 8);
      v13 = a3[7];
      goto LABEL_5;
    }

    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F0D0, &qword_26294F978);
    if (*(*(v17 - 8) + 84) == a2)
    {
      v8 = v17;
      v12 = *(v17 - 8);
      v13 = a3[8];
      goto LABEL_5;
    }

    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2E7E0, &unk_26294F980);
    v19 = *(*(v18 - 8) + 48);
    v20 = a1 + a3[9];

    return v19(v20, a2, v18);
  }
}

uint64_t sub_26290DCE0(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_26294CCB8();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_6:

    return v11(v12, a2, a2, v10);
  }

  result = sub_26294C7A8();
  if (*(*(result - 8) + 84) == a3)
  {
    v10 = result;
    v14 = *(result - 8);
    v15 = a4[5];
LABEL_5:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_6;
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[6] + 8) = (a2 - 1);
    return result;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2E7D8, &unk_26294EB50);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[7];
    goto LABEL_5;
  }

  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F0D0, &qword_26294F978);
  if (*(*(v17 - 8) + 84) == a3)
  {
    v10 = v17;
    v14 = *(v17 - 8);
    v15 = a4[8];
    goto LABEL_5;
  }

  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2E7E0, &unk_26294F980);
  v19 = *(*(v18 - 8) + 56);
  v20 = a1 + a4[9];

  return v19(v20, a2, a2, v18);
}

uint64_t type metadata accessor for ViennaCategoryView(uint64_t a1)
{
  result = qword_27FF2F0D8;
  if (!qword_27FF2F0D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_26290DF58(uint64_t a1)
{
  sub_26294CCB8();
  if (v1 <= 0x3F)
  {
    sub_26294C7A8();
    if (v2 <= 0x3F)
    {
      sub_2628DCCD8(319);
      if (v3 <= 0x3F)
      {
        sub_26290E0CC(319, &qword_27FF2E808, MEMORY[0x277CDD968], MEMORY[0x277CE11F8]);
        if (v4 <= 0x3F)
        {
          sub_26290E0CC(319, &qword_27FF2F0E8, MEMORY[0x277CDF0E0], MEMORY[0x277CE10B8]);
          if (v5 <= 0x3F)
          {
            sub_26290E0CC(319, &qword_27FF2E810, MEMORY[0x277CDD848], MEMORY[0x277CDF468]);
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

void sub_26290E0CC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_26290E14C(uint64_t a1, uint64_t a2)
{
  v40 = sub_26294C7F8();
  v5 = *(v40 - 8);
  MEMORY[0x28223BE20](v40);
  v39 = v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_26294C538();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v53 = v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v52 = v36 - v11;
  v43 = sub_26294CA28();
  v12 = *(v43 - 8);
  MEMORY[0x28223BE20](v43);
  v41 = a2;
  v42 = v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_26294CCA8();
  v51 = *(result + 16);
  if (v51)
  {
    v49 = result;
    v50 = v7;
    v36[1] = v2;
    v37 = a1;
    v15 = 0;
    v47 = result + ((*(v12 + 80) + 32) & ~*(v12 + 80));
    v45 = (v8 + 8);
    v46 = v12 + 16;
    v48 = (v12 + 8);
    v38 = (v5 + 8);
    v17 = v42;
    v16 = v43;
    v18 = a1;
    v44 = v12;
    while (v15 < *(result + 16))
    {
      v19 = (*(v12 + 16))(v17, v47 + *(v12 + 72) * v15, v16);
      v20 = v52;
      v21 = MEMORY[0x26672C010](v19);
      v22 = v53;
      MEMORY[0x26672C010](v21);
      v23 = sub_26294C518();
      v24 = v18;
      v25 = *v45;
      v26 = v22;
      v27 = v50;
      (*v45)(v26, v50);
      v25(v20, v27);
      if (v23)
      {
        type metadata accessor for ViennaCategoryView(0);
        v28 = sub_26294C788();
        v30 = v29;
        v31 = v39;
        sub_26294CA18();
        v32 = sub_26294C7D8();
        v34 = v33;
        (*v38)(v31, v40);
        if (v28 == v32 && v30 == v34)
        {

          (*v48)(v42, v43);
LABEL_14:

          return 1;
        }

        v35 = sub_26294E058();

        v17 = v42;
        v16 = v43;
        (*v48)(v42, v43);
        v18 = v37;
        result = v49;
        if (v35)
        {
          goto LABEL_14;
        }
      }

      else
      {
        (*v48)(v17, v16);
        result = v49;
        v18 = v24;
      }

      ++v15;
      v12 = v44;
      if (v51 == v15)
      {
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_11:

    return 0;
  }

  return result;
}

uint64_t sub_26290E584(uint64_t (*a1)(void), uint64_t a2, uint64_t a3)
{
  v39 = sub_26294CA28();
  v7 = MEMORY[0x28223BE20](v39);
  v36 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v7);
  v38 = &v28 - v11;
  v35 = *(a3 + 16);
  if (v35)
  {
    v12 = 0;
    v32 = (v10 + 8);
    v33 = (v10 + 32);
    v34 = v10 + 16;
    v37 = MEMORY[0x277D84F90];
    v30 = a2;
    v31 = a3;
    v29 = a1;
    while (v12 < *(a3 + 16))
    {
      v13 = (*(v10 + 80) + 32) & ~*(v10 + 80);
      v14 = *(v10 + 72);
      v15 = a3;
      v16 = a3 + v13 + v14 * v12;
      v17 = v10;
      v18 = a1;
      v19 = v38;
      (*(v10 + 16))(v38, v16, v39);
      v20 = v19;
      a1 = v18;
      v21 = v18(v20);
      if (v3)
      {
        (*v32)(v38, v39);
        v27 = v37;

        return v27;
      }

      if (v21)
      {
        v22 = *v33;
        (*v33)(v36, v38, v39);
        v23 = v37;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v40 = v23;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_2628FBFB8(0, *(v23 + 16) + 1, 1);
          v23 = v40;
        }

        v26 = *(v23 + 16);
        v25 = *(v23 + 24);
        if (v26 >= v25 >> 1)
        {
          sub_2628FBFB8((v25 > 1), v26 + 1, 1);
          v23 = v40;
        }

        *(v23 + 16) = v26 + 1;
        v37 = v23;
        result = (v22)(v23 + v13 + v26 * v14, v36, v39);
        a3 = v31;
        a1 = v29;
      }

      else
      {
        result = (*v32)(v38, v39);
        a3 = v15;
      }

      ++v12;
      v10 = v17;
      if (v35 == v12)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
    v37 = MEMORY[0x277D84F90];
LABEL_14:

    return v37;
  }

  return result;
}

uint64_t sub_26290E854@<X0>(uint64_t a1@<X8>)
{
  v63 = a1;
  v2 = sub_26294DAC8();
  v61 = *(v2 - 8);
  v62 = v2;
  v3 = MEMORY[0x28223BE20](v2);
  v60 = &v48 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v59 = &v48 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F0F0, &qword_26294F9F8);
  MEMORY[0x28223BE20](v6);
  v8 = &v48 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F0F8, &qword_26294FA00);
  v10 = *(v9 - 8);
  v55 = v9;
  v56 = v10;
  MEMORY[0x28223BE20](v9);
  v51 = &v48 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F100, &qword_26294FA08);
  v13 = *(v12 - 8);
  v57 = v12;
  v58 = v13;
  MEMORY[0x28223BE20](v12);
  v15 = &v48 - v14;
  *v8 = sub_26294D3C8();
  *(v8 + 1) = 0;
  v8[16] = 0;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F108, &qword_26294FA10);
  sub_26290EE54(v1, &v8[*(v16 + 44)]);
  KeyPath = swift_getKeyPath();
  v18 = &v8[*(v6 + 36)];
  v19 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F110, &unk_2629518B0) + 28);
  v54 = type metadata accessor for ViennaCategoryView(0);
  v52 = *(v54 + 32);
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F0D0, &qword_26294F978);
  sub_26294D958();
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F118, &qword_26294FA50);
  (*(*(v20 - 8) + 56))(v18 + v19, 0, 1, v20);
  *v18 = KeyPath;
  v65 = sub_26294CC78();
  v66 = v21;
  v22 = sub_2629135E0();
  v23 = sub_2628DF230();
  v24 = MEMORY[0x277D837D0];
  sub_26294D708();

  sub_2628DF6F0(v8, &qword_27FF2F0F0, &qword_26294F9F8);
  v64 = v1;
  v50 = v1;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F140, &unk_26294FA60);
  v65 = v6;
  v66 = v24;
  v67 = v22;
  v68 = v23;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v26 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF2F148, &unk_2629518D0);
  v27 = sub_2629136CC();
  v65 = v26;
  v66 = v27;
  v28 = swift_getOpaqueTypeConformance2();
  v29 = v15;
  v30 = v55;
  v31 = v25;
  v32 = v51;
  sub_26294D818();
  v33 = v30;
  (*(v56 + 8))(v32, v30);
  v34 = v59;
  sub_26294D938();
  v36 = v60;
  v35 = v61;
  v37 = v62;
  (*(v61 + 104))(v60, *MEMORY[0x277CDF0D0], v62);
  sub_26294DAB8();
  v38 = *(v35 + 8);
  v38(v36, v37);
  v38(v34, v37);
  v65 = v33;
  v66 = v31;
  v67 = OpaqueTypeConformance2;
  v68 = v28;
  swift_getOpaqueTypeConformance2();
  v39 = v63;
  v40 = v57;
  sub_26294D7C8();
  (*(v58 + 8))(v29, v40);
  v41 = *(v50 + *(v54 + 24) + 8);
  type metadata accessor for SEStorageManagementController(0);
  sub_262913FE4(&qword_27FF2E800, type metadata accessor for SEStorageManagementController, &protocol conformance descriptor for SEStorageManagementController);
  v42 = v41;
  v43 = sub_26294D178();
  v45 = v44;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F178, &qword_26294FA80);
  v47 = (v39 + *(result + 36));
  *v47 = v43;
  v47[1] = v45;
  return result;
}

uint64_t sub_26290EE54@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v45 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F1E0, &qword_262951990);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v44 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v43 = &v36 - v6;
  v7 = sub_26294D468();
  v8 = *(v7 - 8);
  v41 = v7;
  v42 = v8;
  MEMORY[0x28223BE20](v7);
  v10 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F1E8, &qword_26294FB20);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v36 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F1F0, &qword_26294FB28);
  v40 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v17 = &v36 - v16;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F1F8, &qword_26294FB30);
  v37 = *(v39 - 8);
  v18 = v37;
  v19 = MEMORY[0x28223BE20](v39);
  v38 = &v36 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v22 = &v36 - v21;
  v46 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F200, &qword_26294FB38);
  sub_262913AFC();
  sub_26294D5E8();
  v23 = sub_2628DFD0C(&qword_27FF2F218, &qword_27FF2F1E8, &qword_26294FB20, MEMORY[0x277CDE5A0]);
  sub_26294D7A8();
  (*(v12 + 8))(v14, v11);
  sub_26294D458();
  v47 = v11;
  v48 = v23;
  swift_getOpaqueTypeConformance2();
  v24 = v22;
  v25 = v41;
  sub_26294D828();
  (*(v42 + 8))(v10, v25);
  (*(v40 + 8))(v17, v15);
  v26 = v43;
  sub_26290F624(v43);
  v27 = *(v18 + 16);
  v28 = v38;
  v29 = v39;
  v30 = v24;
  v27(v38, v24, v39);
  v31 = v44;
  sub_2628DF954(v26, v44, &qword_27FF2F1E0, &qword_262951990);
  v32 = v45;
  v27(v45, v28, v29);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F220, &unk_26294FB40);
  sub_2628DF954(v31, &v32[*(v33 + 48)], &qword_27FF2F1E0, &qword_262951990);
  sub_2628DF6F0(v26, &qword_27FF2F1E0, &qword_262951990);
  v34 = *(v37 + 8);
  v34(v30, v29);
  sub_2628DF6F0(v31, &qword_27FF2F1E0, &qword_262951990);
  return (v34)(v28, v29);
}

uint64_t sub_26290F370(uint64_t a1)
{
  v2 = type metadata accessor for ViennaCategoryView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = *(a1 + *(MEMORY[0x28223BE20](v2 - 8) + 32) + 8);
  v6 = OBJC_IVAR____TtC12SESUIService29SEStorageManagementController_viennaGroups;
  swift_beginAccess();
  v7 = *(v5 + v6);
  v16 = a1;

  v8 = *(sub_26290E584(sub_262914554, v15, v7) + 16);

  v9 = *(v5 + v6);
  v14 = a1;

  v17 = sub_26290E584(sub_262914554, v13, v9);
  sub_26291387C(a1, &v13[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)]);
  v10 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v11 = swift_allocObject();
  sub_2629138E4(&v13[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)], v11 + v10);
  *(v11 + v10 + v4) = v8 > 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F290, &qword_26294FBE8);
  sub_26294C538();
  type metadata accessor for ViennaGroupView(0);
  sub_2628DFD0C(&qword_27FF2F298, &qword_27FF2F290, &qword_26294FBE8, MEMORY[0x277D83980]);
  sub_262913FE4(&qword_27FF2F210, type metadata accessor for ViennaGroupView, &unk_2629510E8);
  sub_262913FE4(&qword_27FF2F2A0, MEMORY[0x277D48F20], MEMORY[0x277D48F30]);
  return sub_26294DA68();
}

uint64_t sub_26290F624@<X0>(uint64_t a1@<X8>)
{
  v40 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F228, &unk_2629519D0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v37 - v3;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F230, &unk_26294FB50);
  MEMORY[0x28223BE20](v37);
  v39 = &v37 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F238, &unk_2629519E0);
  v41 = *(v6 - 8);
  v7 = MEMORY[0x28223BE20](v6);
  v9 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v38 = &v37 - v10;
  v11 = sub_26294DAC8();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v37 - v16;
  type metadata accessor for ViennaCategoryView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F0D0, &qword_26294F978);
  v18 = v1;
  sub_26294D938();
  (*(v12 + 104))(v15, *MEMORY[0x277CDF0D0], v11);
  v19 = sub_26294DAB8();
  v20 = *(v12 + 8);
  v20(v15, v11);
  v21 = v17;
  v22 = v6;
  v20(v21, v11);
  v23 = v40;
  v24 = 1;
  if (v19)
  {
    *v4 = sub_26294D3C8();
    *(v4 + 1) = 0;
    v4[16] = 0;
    v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F240, &unk_26294FB60);
    sub_262911F34(v18, &v4[*(v25 + 44)]);
    sub_26294DAE8();
    sub_26294D1F8();
    v26 = v39;
    sub_262906F00(v4, v39, &qword_27FF2F228, &unk_2629519D0);
    v27 = (v26 + *(v37 + 36));
    v28 = v47;
    v27[4] = v46;
    v27[5] = v28;
    v27[6] = v48;
    v29 = v43;
    *v27 = v42;
    v27[1] = v29;
    v30 = v45;
    v27[2] = v44;
    v27[3] = v30;
    v31 = [objc_opt_self() secondarySystemBackgroundColor];
    v32 = sub_26294D838();
    v33 = sub_26294D528();
    sub_262906F00(v26, v9, &qword_27FF2F230, &unk_26294FB50);
    v34 = &v9[*(v22 + 36)];
    *v34 = v32;
    v34[8] = v33;
    v35 = v38;
    sub_262906F00(v9, v38, &qword_27FF2F238, &unk_2629519E0);
    sub_262906F00(v35, v23, &qword_27FF2F238, &unk_2629519E0);
    v24 = 0;
  }

  return (*(v41 + 56))(v23, v24, 1, v22);
}

uint64_t sub_26290FA84@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v82 = a2;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F180, &qword_26294FA88);
  MEMORY[0x28223BE20](v75);
  v73 = &v60 - v3;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F170, &unk_2629518E0);
  v77 = *(v80 - 8);
  MEMORY[0x28223BE20](v80);
  v76 = &v60 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F188, &qword_26294FA90);
  v69 = *(v5 - 8);
  v70 = v5;
  MEMORY[0x28223BE20](v5);
  v61 = &v60 - v6;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F190, &qword_26294FA98);
  v72 = *(v74 - 8);
  MEMORY[0x28223BE20](v74);
  v71 = &v60 - v7;
  v8 = sub_26294DAC8();
  v66 = *(v8 - 8);
  v67 = v8;
  v9 = MEMORY[0x28223BE20](v8);
  v64 = &v60 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v63 = &v60 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F198, &qword_26294FAA0);
  v13 = MEMORY[0x28223BE20](v12 - 8);
  v68 = &v60 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v78 = &v60 - v15;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F1A0, &qword_26294FAA8);
  v65 = *(v81 - 8);
  MEMORY[0x28223BE20](v81);
  v17 = &v60 - v16;
  v18 = sub_26294D448();
  MEMORY[0x28223BE20](v18 - 8);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F158, &unk_26294FA70);
  v62 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v21 = &v60 - v20;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F148, &unk_2629518D0);
  MEMORY[0x28223BE20](v79);
  v23 = (&v60 - v22);
  type metadata accessor for ViennaCategoryView(0);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_26294CFF8();

  if (v83 == 1)
  {
    sub_26294D428();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F1C0, &unk_26294FB00);
    sub_2628DFD0C(&qword_27FF2F1C8, &qword_27FF2F1C0, &unk_26294FB00, MEMORY[0x277CDD7F8]);
    sub_26294D088();
    v24 = sub_2628DFD0C(&qword_27FF2F160, &qword_27FF2F158, &unk_26294FA70, MEMORY[0x277CDD7A8]);
    MEMORY[0x26672CAA0](v21, v19, v24);
    v83 = v19;
    v84 = v24;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v26 = sub_2628DFD0C(&qword_27FF2F168, &qword_27FF2F170, &unk_2629518E0, MEMORY[0x277CDDF68]);
    v27 = v81;
    MEMORY[0x26672CAB0](v17, v81, v80, OpaqueTypeConformance2, v26);
    v65[1](v17, v27);
    (*(v62 + 8))(v21, v19);
  }

  else
  {
    v62 = v19;
    v65 = v23;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F0D0, &qword_26294F978);
    v28 = a1;
    v29 = v63;
    sub_26294D938();
    v31 = v66;
    v30 = v67;
    v32 = v64;
    (*(v66 + 104))(v64, *MEMORY[0x277CDF0D0], v67);
    v33 = sub_26294DAB8();
    v34 = *(v31 + 8);
    v34(v32, v30);
    v34(v29, v30);
    if (v33)
    {
      v35 = sub_26294D408();
      MEMORY[0x28223BE20](v35);
      *(&v60 - 2) = v28;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F1B0, &qword_26294FAF8);
      sub_2628DFD0C(&qword_27FF2F1B8, &qword_27FF2F1B0, &qword_26294FAF8, MEMORY[0x277CDF028]);
      v36 = v71;
      sub_26294D088();
      v37 = sub_2628DFD0C(&qword_27FF2F1A8, &qword_27FF2F190, &qword_26294FA98, MEMORY[0x277CDD7A8]);
      v38 = v61;
      v39 = v74;
      MEMORY[0x26672CAA0](v36, v74, v37);
      v41 = v68;
      v40 = v69;
      v42 = v70;
      (*(v69 + 16))(v68, v38, v70);
      (*(v40 + 56))(v41, 0, 1, v42);
      v83 = v39;
      v84 = v37;
      v43 = swift_getOpaqueTypeConformance2();
      MEMORY[0x26672CAD0](v41, v42, v43);
      sub_2628DF6F0(v41, &qword_27FF2F198, &qword_26294FAA0);
      (*(v40 + 8))(v38, v42);
      v44 = v72;
      (*(v72 + 8))(v36, v39);
      v45 = v80;
    }

    else
    {
      v46 = v68;
      v47 = v70;
      (*(v69 + 56))(v68, 1, 1, v70);
      v48 = sub_2628DFD0C(&qword_27FF2F1A8, &qword_27FF2F190, &qword_26294FA98, MEMORY[0x277CDD7A8]);
      v39 = v74;
      v83 = v74;
      v84 = v48;
      v49 = swift_getOpaqueTypeConformance2();
      MEMORY[0x26672CAD0](v46, v47, v49);
      sub_2628DF6F0(v46, &qword_27FF2F198, &qword_26294FAA0);
      v45 = v80;
      v36 = v71;
      v44 = v72;
    }

    v50 = sub_26294D428();
    MEMORY[0x28223BE20](v50);
    *(&v60 - 2) = v28;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F1B0, &qword_26294FAF8);
    sub_2628DFD0C(&qword_27FF2F1B8, &qword_27FF2F1B0, &qword_26294FAF8, MEMORY[0x277CDF028]);
    sub_26294D088();
    v51 = *(v75 + 48);
    v52 = v78;
    v53 = v73;
    sub_262913804(v78, v73);
    (*(v44 + 16))(v53 + v51, v36, v39);
    v54 = v76;
    sub_26294D3E8();
    v55 = sub_2628DFD0C(&qword_27FF2F160, &qword_27FF2F158, &unk_26294FA70, MEMORY[0x277CDD7A8]);
    v83 = v62;
    v84 = v55;
    v56 = swift_getOpaqueTypeConformance2();
    v57 = sub_2628DFD0C(&qword_27FF2F168, &qword_27FF2F170, &unk_2629518E0, MEMORY[0x277CDDF68]);
    v23 = v65;
    MEMORY[0x26672CAC0](v54, v81, v45, v56, v57);
    (*(v77 + 8))(v54, v45);
    (*(v44 + 8))(v36, v39);
    sub_2628DF6F0(v52, &qword_27FF2F198, &qword_26294FAA0);
  }

  v58 = sub_2629136CC();
  MEMORY[0x26672CAA0](v23, v79, v58);
  return sub_2628DF6F0(v23, &qword_27FF2F148, &unk_2629518D0);
}

uint64_t sub_2629106C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v42 = a2;
  v3 = sub_26294C9D8();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for ViennaCategoryView(0);
  v8 = v7 - 8;
  v38 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v39 = v9;
  v40 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_26294CA28();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v8 + 32);
  v41 = a1;
  v15 = *(a1 + v14 + 8);
  v16 = OBJC_IVAR____TtC12SESUIService29SEStorageManagementController_viennaGroups;
  swift_beginAccess();
  v17 = *(v15 + v16);
  v18 = MEMORY[0x277D84F90];
  v55 = MEMORY[0x277D84F90];
  v51 = *(v17 + 16);
  if (v51)
  {
    v49 = v17 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
    v54 = v4 + 16;
    v19 = (v4 + 8);
    v47 = (v11 + 8);
    v48 = v11 + 16;

    v21 = 0;
    v45 = v10;
    v46 = v4;
    v43 = v13;
    v44 = v11;
    v50 = v20;
    while (v21 < *(v20 + 16))
    {
      v22 = *(v11 + 72);
      v53 = v21;
      (*(v11 + 16))(v13, v49 + v22 * v21, v10);
      v23 = sub_26294C928();
      v24 = *(v23 + 16);
      if (v24)
      {
        v25 = *(v4 + 80);
        v52 = v23;
        v26 = v23 + ((v25 + 32) & ~v25);
        v27 = *(v4 + 72);
        v28 = *(v4 + 16);
        v28(v6, v26, v3);
        while (1)
        {
          if (sub_26294C9B8())
          {
            sub_26294C948();
            MEMORY[0x26672D3D0]();
            if (*((v55 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v55 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              sub_26294DDD8();
            }

            sub_26294DDF8();
            (*v19)(v6, v3);
            v18 = v55;
          }

          else
          {
            (*v19)(v6, v3);
          }

          v26 += v27;
          if (!--v24)
          {
            break;
          }

          v28(v6, v26, v3);
        }

        v10 = v45;
        v4 = v46;
        v13 = v43;
        v11 = v44;
      }

      else
      {
      }

      v21 = v53 + 1;
      (*v47)(v13, v10);
      v20 = v50;
      if (v21 == v51)
      {

        goto LABEL_17;
      }
    }

    __break(1u);
    goto LABEL_21;
  }

LABEL_17:
  if (v18 >> 62)
  {
LABEL_21:
    v29 = sub_26294E008();
    goto LABEL_19;
  }

  v29 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_19:

  v30 = v41;
  v31 = v29 == sub_26294CC88();
  v32 = v40;
  sub_26291387C(v30, v40);
  v33 = (*(v38 + 80) + 16) & ~*(v38 + 80);
  v34 = v33 + v39;
  v35 = swift_allocObject();
  v36 = sub_2629138E4(v32, v35 + v33);
  *(v35 + v34) = v31;
  MEMORY[0x28223BE20](v36);
  *(&v38 - 16) = v31;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F1D0, &unk_26294FB10);
  sub_2629139D0();
  return sub_26294D988();
}

uint64_t sub_262910B90(uint64_t a1, char a2)
{
  v4 = *(a1 + *(type metadata accessor for ViennaCategoryView(0) + 24) + 8);
  v5 = OBJC_IVAR____TtC12SESUIService29SEStorageManagementController_viennaGroups;
  swift_beginAccess();
  v6 = *(v4 + v5);
  v9[2] = a1;

  v7 = sub_26290E584(sub_262913A4C, v9, v6);
  sub_2628F4AC4(v7, (a2 & 1) == 0);
}

double sub_262910C44@<D0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v4 = sub_26294C5F8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 104))(v7, *MEMORY[0x277D48E08], v4);
  v8 = (v5 + 8);
  if (a1)
  {
    v9 = sub_26294C5E8();
    v11 = v10;
    (*v8)(v7, v4);
    *&v30 = v9;
    *(&v30 + 1) = v11;
    sub_2628DF230();
    v25 = sub_26294D648();
    v26 = v12;
    v27 = v13 & 1;
    v28 = v14;
    v29 = 0;
  }

  else
  {
    v15 = sub_26294C5E8();
    v17 = v16;
    (*v8)(v7, v4);
    *&v30 = v15;
    *(&v30 + 1) = v17;
    sub_2628DF230();
    v25 = sub_26294D648();
    v26 = v19;
    v27 = v18 & 1;
    v28 = v20;
    v29 = 1;
  }

  sub_26294D3F8();
  result = *&v30;
  v22 = v31;
  v23 = v32;
  *a2 = v30;
  *(a2 + 16) = v22;
  *(a2 + 32) = v23;
  return result;
}

uint64_t sub_262910E3C(uint64_t a1)
{
  v2 = type metadata accessor for ViennaCategoryView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  sub_26291387C(a1, &v8[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)]);
  v5 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v6 = swift_allocObject();
  sub_2629138E4(&v8[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)], v6 + v5);
  v9 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F1D0, &unk_26294FB10);
  sub_2629139D0();
  return sub_26294D988();
}

uint64_t sub_262910F84(uint64_t a1)
{
  v2 = sub_26294DAC8();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = v19 - v7;
  v9 = type metadata accessor for ViennaCategoryView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F0D0, &qword_26294F978);
  sub_26294D938();
  (*(v3 + 104))(v6, *MEMORY[0x277CDF0D0], v2);
  v10 = sub_26294DAB8();
  v11 = *(v3 + 8);
  v11(v6, v2);
  v11(v8, v2);
  if (v10)
  {
    v12 = *(a1 + *(v9 + 24) + 8);
    v13 = OBJC_IVAR____TtC12SESUIService29SEStorageManagementController_viennaGroups;
    v14 = swift_beginAccess();
    v15 = *(v12 + v13);
    MEMORY[0x28223BE20](v14);
    v19[-2] = a1;

    v16 = sub_26290E584(sub_262914554, &v19[-4], v15);
    sub_2628F4AC4(v16, 0);
  }

  v17 = sub_26294DB28();
  MEMORY[0x28223BE20](v17);
  v19[-2] = a1;
  sub_26294D108();
}

uint64_t sub_262911200(uint64_t a1)
{
  v16 = a1;
  v1 = sub_26294DAC8();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x28223BE20](v1);
  v5 = &v13[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v3);
  v7 = &v13[-v6];
  v17 = *(type metadata accessor for ViennaCategoryView(0) + 32);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F0D0, &qword_26294F978);
  sub_26294D938();
  v8 = *MEMORY[0x277CDF0D0];
  v9 = *(v2 + 104);
  v9(v5, *MEMORY[0x277CDF0D0], v1);
  v14 = sub_26294DAB8();
  v10 = *(v2 + 8);
  v10(v5, v1);
  v10(v7, v1);
  if (v14)
  {
    v11 = *MEMORY[0x277CDF0D8];
  }

  else
  {
    v11 = v8;
  }

  v9(v7, v11, v1);
  (*(v2 + 16))(v5, v7, v1);
  sub_26294D948();
  return (v10)(v7, v1);
}

double sub_2629113FC@<D0>(uint64_t a1@<X8>)
{
  v2 = sub_26294C5F8();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_26294DAC8();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v31 - v11;
  type metadata accessor for ViennaCategoryView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F0D0, &qword_26294F978);
  sub_26294D938();
  (*(v7 + 104))(v10, *MEMORY[0x277CDF0D0], v6);
  v13 = sub_26294DAB8();
  v14 = *(v7 + 8);
  v14(v10, v6);
  v14(v12, v6);
  (*(v3 + 104))(v5, *MEMORY[0x277D48DF0], v2);
  v15 = (v3 + 8);
  if (v13)
  {
    v16 = sub_26294C5E8();
    v18 = v17;
    (*v15)(v5, v2);
    *&v37 = v16;
    *(&v37 + 1) = v18;
    sub_2628DF230();
    v32 = sub_26294D648();
    v33 = v19;
    v34 = v20 & 1;
    v35 = v21;
    v36 = 0;
  }

  else
  {
    v22 = sub_26294C5E8();
    v24 = v23;
    (*v15)(v5, v2);
    *&v37 = v22;
    *(&v37 + 1) = v24;
    sub_2628DF230();
    v32 = sub_26294D648();
    v33 = v26;
    v34 = v25 & 1;
    v35 = v27;
    v36 = 1;
  }

  sub_26294D3F8();
  result = *&v37;
  v29 = v38;
  v30 = v39;
  *a1 = v37;
  *(a1 + 16) = v29;
  *(a1 + 32) = v30;
  return result;
}

id sub_26291172C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for ViennaCategoryView(0);
  v9 = v8 - 8;
  v10 = *(v8 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = sub_26294CA28();
  (*(*(v12 - 8) + 16))(a4, a1, v12);
  v21 = *(a2 + *(v9 + 32) + 8);
  sub_26291387C(a2, &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v14 = swift_allocObject();
  sub_2629138E4(&v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v14 + v13);
  KeyPath = swift_getKeyPath();
  v16 = type metadata accessor for ViennaGroupView(0);
  *(a4 + v16[8]) = KeyPath;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F2A8, &qword_26294FBF0);
  swift_storeEnumTagMultiPayload();
  v17 = v21;
  *(a4 + v16[5]) = v21;
  *(a4 + v16[6]) = a3;
  v18 = (a4 + v16[7]);
  *v18 = sub_262914294;
  v18[1] = v14;

  return v17;
}

uint64_t sub_2629118FC()
{
  v1 = type metadata accessor for ViennaCategoryView(0);
  v2 = v1 - 8;
  v48 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v49 = v3;
  v50 = &v46 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_26294C9D8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = sub_26294CA28();
  v8 = *(v64 - 8);
  v9 = MEMORY[0x28223BE20](v64);
  v60 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v56 = &v46 - v11;
  v12 = *&v0[*(v2 + 32) + 8];
  v13 = OBJC_IVAR____TtC12SESUIService29SEStorageManagementController_viennaGroups;
  swift_beginAccess();
  v14 = *&v12[v13];
  v15 = MEMORY[0x277D84F90];
  v66 = MEMORY[0x277D84F90];
  v61 = *(v14 + 16);
  v51 = v12;
  v52 = v0;
  if (v61)
  {
    v47 = v13;
    v59 = v14 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
    v54 = v5;
    v65 = (v5 + 8);
    v57 = (v8 + 8);
    v58 = v8 + 16;

    v17 = 0;
    v0 = v56;
    v13 = v16;
    v55 = v8;
    v53 = v16;
    do
    {
      if (v17 >= *(v13 + 16))
      {
        __break(1u);
        goto LABEL_29;
      }

      v18 = *(v8 + 72);
      v63 = v17;
      (*(v8 + 16))(v0, v59 + v18 * v17, v64);
      v19 = sub_26294C928();
      v12 = *(v19 + 16);
      if (v12)
      {
        v20 = (*(v54 + 80) + 32) & ~*(v54 + 80);
        v62 = v19;
        v21 = v19 + v20;
        v22 = *(v54 + 72);
        v23 = *(v54 + 16);
        v23(v7, v19 + v20, v4);
        while (1)
        {
          if (sub_26294C9B8())
          {
            sub_26294C948();
            MEMORY[0x26672D3D0]();
            if (*((v66 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v66 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              sub_26294DDD8();
            }

            sub_26294DDF8();
            (*v65)(v7, v4);
            v15 = v66;
          }

          else
          {
            (*v65)(v7, v4);
          }

          v21 += v22;
          if (!--v12)
          {
            break;
          }

          v23(v7, v21, v4);
        }

        v8 = v55;
        v0 = v56;
        v13 = v53;
      }

      else
      {
      }

      v17 = v63 + 1;
      (*v57)(v0, v64);
    }

    while (v17 != v61);

    v12 = v51;
    v0 = v52;
    v13 = v47;
  }

  if (v15 >> 62)
  {
    goto LABEL_30;
  }

  for (i = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_26294E008())
  {

    v26 = *&v12[v13];
    MEMORY[0x28223BE20](v25);
    *(&v46 - 2) = v0;

    v27 = sub_26290E584(sub_262914554, (&v46 - 4), v26);
    v28 = *(v27 + 16);
    if (!v28)
    {
      break;
    }

    v63 = i;
    v29 = 0;
    v31 = *(v8 + 16);
    v30 = v8 + 16;
    v12 = v31;
    v32 = (*(v30 + 64) + 32) & ~*(v30 + 64);
    v65 = v27;
    v33 = v27 + v32;
    v34 = *(v30 + 56);
    v13 = v30;
    v8 = v30 - 8;
    while (1)
    {
      v0 = v60;
      v35 = v64;
      (v12)(v60, v33, v64);
      v36 = sub_26294C928();
      (*v8)(v0, v35);
      v37 = *(v36 + 16);

      v38 = __OFADD__(v29, v37);
      v29 += v37;
      if (v38)
      {
        break;
      }

      v33 += v34;
      if (!--v28)
      {

        v12 = v51;
        v0 = v52;
        i = v63;
        goto LABEL_25;
      }
    }

LABEL_29:
    __break(1u);
LABEL_30:
    ;
  }

  v29 = 0;
LABEL_25:
  v39 = v0;
  v40 = v50;
  sub_26291387C(v39, v50);
  v41 = (*(v48 + 80) + 16) & ~*(v48 + 80);
  v42 = v41 + v49;
  v43 = swift_allocObject();
  sub_2629138E4(v40, v43 + v41);
  *(v43 + v42) = i == v29;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_26294CFF8();

  if ((v66 & 1) == 0)
  {
    v44 = v12;

    sub_262904ED0(v44, v44, sub_262913BD0, v43);
  }
}

uint64_t sub_262911F34@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F248, &unk_2629519F0);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v22 - v8;
  v10 = sub_26294DA38();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v22 - v15;
  sub_26294DA28();
  *v9 = sub_26294D338();
  *(v9 + 1) = 0;
  v9[16] = 0;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F250, &unk_26294FB70);
  sub_262912198(a1, &v9[*(v17 + 44)]);
  v18 = *(v11 + 16);
  v18(v14, v16, v10);
  sub_2628DF954(v9, v7, &qword_27FF2F248, &unk_2629519F0);
  v18(a2, v14, v10);
  v19 = &a2[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F258, &qword_262951A00) + 48)];
  sub_2628DF954(v7, v19, &qword_27FF2F248, &unk_2629519F0);
  sub_2628DF6F0(v9, &qword_27FF2F248, &unk_2629519F0);
  v20 = *(v11 + 8);
  v20(v16, v10);
  sub_2628DF6F0(v7, &qword_27FF2F248, &unk_2629519F0);
  return (v20)(v14, v10);
}

void sub_262912198(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v87 = a2;
  v3 = type metadata accessor for ViennaCategoryView(0);
  v4 = v3 - 8;
  v81 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v82 = v5;
  v83 = &v76 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F260, &unk_26294FB80);
  v6 = MEMORY[0x28223BE20](v80);
  v86 = &v76 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v85 = &v76 - v8;
  v9 = sub_26294C5F8();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v76 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_26294C9D8();
  v92 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v15 = &v76 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_26294CA28();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v91 = &v76 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(v4 + 32);
  v84 = a1;
  v20 = *(a1 + v19 + 8);
  v21 = OBJC_IVAR____TtC12SESUIService29SEStorageManagementController_viennaGroups;
  swift_beginAccess();
  v79 = v20;
  v22 = *(v20 + v21);
  v23 = MEMORY[0x277D84F90];
  v105 = MEMORY[0x277D84F90];
  v96 = *(v22 + 16);
  if (v96)
  {
    v76 = v12;
    v77 = v10;
    v78 = v9;
    v95 = v22 + ((*(v17 + 80) + 32) & ~*(v17 + 80));
    v94 = v17 + 16;
    v24 = v92;
    v99 = v92 + 16;
    v25 = (v92 + 8);
    v93 = (v17 + 8);

    v27 = v17;
    v28 = 0;
    v29 = v91;
    v30 = v26;
    v90 = v16;
    v89 = v27;
    v88 = v26;
    do
    {
      if (v28 >= *(v30 + 16))
      {
        __break(1u);
        return;
      }

      v31 = *(v27 + 72);
      v98 = v28;
      (*(v27 + 16))(v29, v95 + v31 * v28, v16);
      v32 = sub_26294C928();
      v33 = *(v32 + 16);
      if (v33)
      {
        v34 = (*(v24 + 80) + 32) & ~*(v24 + 80);
        v97 = v32;
        v35 = v32 + v34;
        v36 = *(v24 + 72);
        v37 = *(v24 + 16);
        v37(v15, v32 + v34, v13);
        while (1)
        {
          if (sub_26294C9B8())
          {
            sub_26294C948();
            MEMORY[0x26672D3D0]();
            if (*((v105 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v105 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              sub_26294DDD8();
            }

            sub_26294DDF8();
            (*v25)(v15, v13);
            v23 = v105;
          }

          else
          {
            (*v25)(v15, v13);
          }

          v35 += v36;
          if (!--v33)
          {
            break;
          }

          v37(v15, v35, v13);
        }

        v24 = v92;
        v16 = v90;
        v27 = v89;
        v29 = v91;
        v30 = v88;
      }

      else
      {
      }

      v28 = v98 + 1;
      (*v93)(v29, v16);
    }

    while (v28 != v96);

    v38 = v78;
    v10 = v77;
    v12 = v76;
    if (v23 >> 62)
    {
      goto LABEL_20;
    }
  }

  else
  {
    v38 = v9;
    if (MEMORY[0x277D84F90] >> 62)
    {
LABEL_20:
      v99 = sub_26294E008();
      goto LABEL_18;
    }
  }

  v99 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_18:

  (*(v10 + 104))(v12, *MEMORY[0x277D48E08], v38);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2E8B8, &qword_26294EC60);
  v39 = swift_allocObject();
  *(v39 + 16) = xmmword_26294ECB0;
  v40 = sub_2628FAC30();
  v41 = MEMORY[0x277D83C10];
  *(v39 + 56) = MEMORY[0x277D83B88];
  *(v39 + 64) = v41;
  *(v39 + 32) = v40;
  v42 = sub_26294C6B8();
  v44 = v43;

  (*(v10 + 8))(v12, v38);
  v105 = v42;
  v106 = v44;
  sub_2628DF230();
  v45 = sub_26294D648();
  v47 = v46;
  v49 = v48;
  sub_26294D5D8();
  v50 = sub_26294D638();
  v97 = v51;
  v53 = v52;
  v98 = v54;

  sub_2628DF758(v45, v47, v49 & 1);

  LODWORD(v96) = sub_26294D528();
  LOBYTE(v105) = v53 & 1;
  LOBYTE(v47) = v53 & 1;
  LODWORD(v95) = v53 & 1;
  LOBYTE(v102) = 1;
  v55 = sub_26294DB08();
  v57 = v56;
  v58 = v85;
  v59 = &v85[*(v80 + 36)];
  v60 = v83;
  sub_26291387C(v84, v83);
  v61 = (*(v81 + 80) + 16) & ~*(v81 + 80);
  v62 = swift_allocObject();
  sub_2629138E4(v60, v62 + v61);
  sub_26294D988();
  LOBYTE(v60) = v99 == 0;
  KeyPath = swift_getKeyPath();
  v64 = swift_allocObject();
  *(v64 + 16) = v60;
  v65 = &v59[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F268, &unk_26294FBC0) + 36)];
  *v65 = KeyPath;
  v65[1] = sub_262913BC8;
  v65[2] = v64;
  LOBYTE(KeyPath) = sub_26294D528();
  v66 = &v59[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F270, &unk_262951A40) + 36)];
  *v66 = KeyPath;
  *(v66 + 8) = 0u;
  *(v66 + 24) = 0u;
  v66[40] = 1;
  v67 = &v59[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F278, &unk_26294FBD0) + 36)];
  *v67 = v55;
  v67[1] = v57;
  *v58 = 0;
  *(v58 + 8) = 1;
  v68 = v86;
  sub_2628DF954(v58, v86, &qword_27FF2F260, &unk_26294FB80);
  v69 = v50;
  *&v102 = v50;
  v70 = v97;
  *(&v102 + 1) = v97;
  LOBYTE(v103) = v47;
  *(&v103 + 1) = *v101;
  DWORD1(v103) = *&v101[3];
  v71 = v98;
  *(&v103 + 1) = v98;
  LOBYTE(v57) = v96;
  v104[0] = v96;
  *&v104[1] = *v100;
  *&v104[4] = *&v100[3];
  memset(&v104[8], 0, 32);
  v104[40] = 1;
  v72 = *&v104[16];
  v73 = v87;
  *(v87 + 48) = *v104;
  *(v73 + 64) = v72;
  *(v73 + 73) = *&v104[25];
  v74 = v103;
  *(v73 + 16) = v102;
  *(v73 + 32) = v74;
  *v73 = 0;
  *(v73 + 8) = 1;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F280, &unk_262951A50);
  sub_2628DF954(v68, v73 + *(v75 + 64), &qword_27FF2F260, &unk_26294FB80);
  sub_2628DF954(&v102, &v105, &qword_27FF2F288, &qword_26294FBE0);
  sub_2628DF6F0(v58, &qword_27FF2F260, &unk_26294FB80);
  sub_2628DF6F0(v68, &qword_27FF2F260, &unk_26294FB80);
  v105 = v69;
  v106 = v70;
  v107 = v95;
  *v108 = *v101;
  *&v108[3] = *&v101[3];
  v109 = v71;
  v110 = v57;
  *v111 = *v100;
  *&v111[3] = *&v100[3];
  v112 = 0u;
  v113 = 0u;
  v114 = 1;
  sub_2628DF6F0(&v105, &qword_27FF2F288, &qword_26294FBE0);
}

uint64_t sub_262912C38@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_26294C5F8();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 104))(v5, *MEMORY[0x277D48DF0], v2);
  v6 = sub_26294C5E8();
  v8 = v7;
  (*(v3 + 8))(v5, v2);
  v22 = v6;
  v23 = v8;
  sub_2628DF230();
  v9 = sub_26294D648();
  v11 = v10;
  LOBYTE(v6) = v12;
  v22 = sub_26294D858();
  v13 = sub_26294D618();
  v15 = v14;
  v17 = v16;
  v19 = v18;
  sub_2628DF758(v9, v11, v6 & 1);

  *a1 = v13;
  *(a1 + 8) = v15;
  *(a1 + 16) = v17 & 1;
  *(a1 + 24) = v19;
  return result;
}

uint64_t sub_262912E00(int a1, char *a2, int a3)
{
  v48 = a1;
  LODWORD(v49) = a3;
  v4 = sub_26294D168();
  v43 = *(v4 - 8);
  v44 = v4;
  v5 = MEMORY[0x28223BE20](v4);
  v45 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v42 = &v42 - v7;
  v8 = type metadata accessor for ViennaCategoryView(0);
  MEMORY[0x28223BE20](v8);
  v47 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_26294D0F8();
  v10 = *(v46 - 8);
  MEMORY[0x28223BE20](v46);
  v12 = &v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_26294DAC8();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v42 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v42 - v18;
  v50 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F0D0, &qword_26294F978);
  sub_26294D938();
  (*(v14 + 104))(v17, *MEMORY[0x277CDF0D0], v13);
  LOBYTE(v8) = sub_26294DAB8();
  v20 = *(v14 + 8);
  v20(v17, v13);
  result = (v20)(v19, v13);
  if (v8)
  {
    MEMORY[0x28223BE20](result);
    *(&v42 - 2) = a2;
    sub_26294DB18();
    sub_26294D108();
  }

  v22 = a2;
  v23 = v50;
  if (v49 & 1) != 0 && (v48)
  {
    sub_26291D460(v12);
    sub_26294D0E8();
    (*(v10 + 8))(v12, v46);
    if (qword_27FF2E7C0 != -1)
    {
      swift_once();
    }

    v24 = sub_26294CE48();
    __swift_project_value_buffer(v24, qword_27FF314B0);
    v25 = v47;
    sub_26291387C(a2, v47);
    v26 = sub_26294CE28();
    v27 = sub_26294DE98();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      v51[0] = v49;
      *v28 = 136315394;
      *(v28 + 4) = sub_2628FB76C(0xD000000000000010, 0x800000026295E850, v51);
      *(v28 + 12) = 2048;
      v29 = *(v25 + *(v23 + 24) + 8);
      v30 = OBJC_IVAR____TtC12SESUIService29SEStorageManagementController_viennaGroups;
      v31 = swift_beginAccess();
      v32 = *(v29 + v30);
      MEMORY[0x28223BE20](v31);
      *(&v42 - 2) = v25;

      v33 = *(sub_26290E584(sub_262914554, (&v42 - 4), v32) + 16);

      sub_262913C60(v25);
      *(v28 + 14) = v33;
      v23 = v50;
      _os_log_impl(&dword_2628DB000, v26, v27, "%s Vienna groups here %ld", v28, 0x16u);
      v34 = v49;
      __swift_destroy_boxed_opaque_existential_1Tm(v49);
      MEMORY[0x26672DCE0](v34, -1, -1);
      MEMORY[0x26672DCE0](v28, -1, -1);
    }

    else
    {
      sub_262913C60(v25);
    }

    v35 = *&v22[*(v23 + 24) + 8];
    v36 = OBJC_IVAR____TtC12SESUIService29SEStorageManagementController_viennaGroups;
    v37 = swift_beginAccess();
    v38 = *(v35 + v36);
    MEMORY[0x28223BE20](v37);
    *(&v42 - 2) = v22;

    v39 = *(sub_26290E584(sub_262914554, (&v42 - 4), v38) + 16);

    if (!v39)
    {
      v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2E7D8, &unk_26294EB50);
      v41 = v42;
      MEMORY[0x26672D010]();
      sub_26294D138();
      (*(v43 + 8))(v41, v44);
      MEMORY[0x26672D010](v40);
      sub_26294D128();
      return sub_26294D9F8();
    }
  }

  return result;
}

uint64_t sub_262913468()
{
  v0 = sub_26294DAC8();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x28223BE20](v0);
  v4 = v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v6 = v8 - v5;
  (*(v1 + 104))(v8 - v5, *MEMORY[0x277CDF0D8], v0);
  type metadata accessor for ViennaCategoryView(0);
  (*(v1 + 16))(v4, v6, v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F0D0, &qword_26294F978);
  sub_26294D948();
  return (*(v1 + 8))(v6, v0);
}

unint64_t sub_2629135E0()
{
  result = qword_27FF2F120;
  if (!qword_27FF2F120)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF2F0F0, &qword_26294F9F8);
    sub_2628DFD0C(&qword_27FF2F128, &qword_27FF2F130, &qword_26294FA58, MEMORY[0x277CE1198]);
    sub_2628DFD0C(&qword_27FF2F138, &qword_27FF2F110, &unk_2629518B0, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF2F120);
  }

  return result;
}

unint64_t sub_2629136CC()
{
  result = qword_27FF2F150;
  if (!qword_27FF2F150)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF2F148, &unk_2629518D0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF2F158, &unk_26294FA70);
    sub_2628DFD0C(&qword_27FF2F160, &qword_27FF2F158, &unk_26294FA70, MEMORY[0x277CDD7A8]);
    swift_getOpaqueTypeConformance2();
    sub_2628DFD0C(&qword_27FF2F168, &qword_27FF2F170, &unk_2629518E0, MEMORY[0x277CDDF68]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF2F150);
  }

  return result;
}

uint64_t sub_262913804(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F198, &qword_26294FAA0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26291387C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ViennaCategoryView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2629138E4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ViennaCategoryView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_262913948()
{
  v1 = *(type metadata accessor for ViennaCategoryView(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));
  v3 = *(v2 + *(v1 + 64));

  return sub_262910B90(v2, v3);
}

unint64_t sub_2629139D0()
{
  result = qword_27FF2F1D8;
  if (!qword_27FF2F1D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF2F1D0, &unk_26294FB10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF2F1D8);
  }

  return result;
}

uint64_t sub_262913A70()
{
  v1 = *(type metadata accessor for ViennaCategoryView(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_262910F84(v2);
}

unint64_t sub_262913AFC()
{
  result = qword_27FF2F208;
  if (!qword_27FF2F208)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF2F200, &qword_26294FB38);
    sub_262913FE4(&qword_27FF2F210, type metadata accessor for ViennaGroupView, &unk_2629510E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF2F208);
  }

  return result;
}

uint64_t sub_262913BD0(int a1)
{
  v3 = *(type metadata accessor for ViennaCategoryView(0) - 8);
  v4 = (v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80)));
  v5 = v4[*(v3 + 64)];

  return sub_262912E00(a1, v4, v5);
}

uint64_t sub_262913C60(uint64_t a1)
{
  v2 = type metadata accessor for ViennaCategoryView(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t objectdestroyTm_2()
{
  v1 = (type metadata accessor for ViennaCategoryView(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = sub_26294CCB8();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);
  v6 = v1[7];
  v7 = sub_26294C7A8();
  (*(*(v7 - 8) + 8))(v0 + v3 + v6, v7);

  v8 = v0 + v3 + v1[9];

  v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2E7D8, &unk_26294EB50) + 32);
  v10 = sub_26294D168();
  (*(*(v10 - 8) + 8))(v8 + v9, v10);
  v11 = v0 + v3 + v1[10];
  v12 = sub_26294DAC8();
  (*(*(v12 - 8) + 8))(v11, v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F0D0, &qword_26294F978);

  v13 = v1[11];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2E840, &qword_26294FEE0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v14 = sub_26294D0F8();
    (*(*(v14 - 8) + 8))(v0 + v3 + v13, v14);
  }

  else
  {
  }

  return MEMORY[0x2821FE8E8](v0, v4 + v3 + 1, v2 | 7);
}

id sub_262913F44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for ViennaCategoryView(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));
  v7 = *(v6 + *(v5 + 64));

  return sub_26291172C(a1, v6, v7, a2);
}

uint64_t sub_262913FE4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t objectdestroy_12Tm()
{
  v1 = (type metadata accessor for ViennaCategoryView(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = sub_26294CCB8();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);
  v6 = v1[7];
  v7 = sub_26294C7A8();
  (*(*(v7 - 8) + 8))(v0 + v3 + v6, v7);

  v8 = v0 + v3 + v1[9];

  v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2E7D8, &unk_26294EB50) + 32);
  v10 = sub_26294D168();
  (*(*(v10 - 8) + 8))(v8 + v9, v10);
  v11 = v0 + v3 + v1[10];
  v12 = sub_26294DAC8();
  (*(*(v12 - 8) + 8))(v11, v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F0D0, &qword_26294F978);

  v13 = v1[11];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2E840, &qword_26294FEE0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v14 = sub_26294D0F8();
    (*(*(v14 - 8) + 8))(v0 + v3 + v13, v14);
  }

  else
  {
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

unint64_t sub_2629142F8()
{
  result = qword_27FF2F2B0;
  if (!qword_27FF2F2B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF2F2B8, &qword_26294FBF8);
    sub_26291437C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF2F2B0);
  }

  return result;
}

unint64_t sub_26291437C()
{
  result = qword_27FF2F2C0;
  if (!qword_27FF2F2C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF2F178, &qword_26294FA80);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF2F100, &qword_26294FA08);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF2F0F8, &qword_26294FA00);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF2F140, &unk_26294FA60);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF2F0F0, &qword_26294F9F8);
    sub_2629135E0();
    sub_2628DF230();
    swift_getOpaqueTypeConformance2();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF2F148, &unk_2629518D0);
    sub_2629136CC();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_2628E01B0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF2F2C0);
  }

  return result;
}

uint64_t sub_262914570(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_2629145B8(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_262914620@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_26294C538();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_262914688@<X0>(uint64_t a2@<X1>, char *a3@<X8>)
{
  v28 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F2D0, &unk_26294FC90);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v27 - v9;
  v11 = sub_26294D338();
  v27 = v11;
  v30 = 1;
  sub_262914984(a2, v34);
  memcpy(v31, v34, sizeof(v31));
  memcpy(v32, v34, sizeof(v32));
  sub_2628DF954(v31, v33, &qword_27FF2E8F8, &unk_26294F910);
  sub_2628DF6F0(v32, &qword_27FF2E8F8, &unk_26294F910);
  memcpy(&v29[7], v31, 0x120uLL);
  v12 = v30;
  v13 = sub_26294D518();
  sub_26294D058();
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;
  sub_262914FC8(v10);
  v22 = *(v5 + 16);
  v22(v8, v10, v4);
  v33[0] = v11;
  v33[1] = 0;
  LOBYTE(v33[2]) = v12;
  memcpy(&v33[2] + 1, v29, 0x127uLL);
  LOBYTE(v33[39]) = v13;
  v33[40] = v15;
  v33[41] = v17;
  v33[42] = v19;
  v33[43] = v21;
  LOBYTE(v33[44]) = 0;
  v23 = v28;
  memcpy(v28, v33, 0x161uLL);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F2D8, &qword_26294FCA0);
  v22(&v23[*(v24 + 48)], v8, v4);
  sub_2628DF954(v33, v34, &qword_27FF2F2E0, &qword_26294FCA8);
  v25 = *(v5 + 8);
  v25(v10, v4);
  v25(v8, v4);
  v34[0] = v27;
  v34[1] = 0;
  LOBYTE(v34[2]) = v12;
  memcpy(&v34[2] + 1, v29, 0x127uLL);
  v35 = v13;
  v36 = v15;
  v37 = v17;
  v38 = v19;
  v39 = v21;
  v40 = 0;
  return sub_2628DF6F0(v34, &qword_27FF2F2E0, &qword_26294FCA8);
}

uint64_t sub_262914984@<X0>(uint64_t a1@<X1>, void *a2@<X8>)
{
  v51 = a1;
  v54 = a2;
  v2 = sub_26294CDF8();
  v52 = *(v2 - 8);
  v53 = v2;
  MEMORY[0x28223BE20](v2);
  v47 = &v46 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_26294C5F8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 104))(v7, *MEMORY[0x277D48E08], v4);
  v8 = sub_26294C5E8();
  v10 = v9;
  (*(v5 + 8))(v7, v4);
  v93 = v8;
  v94 = v10;
  v46 = sub_2628DF230();
  v11 = sub_26294D648();
  v13 = v12;
  LOBYTE(v8) = v14;
  sub_26294D598();
  v15 = sub_26294D638();
  v17 = v16;
  LOBYTE(v10) = v18;

  sub_2628DF758(v11, v13, v8 & 1);

  sub_26294D898();
  v19 = sub_26294D608();
  v48 = v20;
  v49 = v19;
  v22 = v21;
  v50 = v23;

  sub_2628DF758(v15, v17, v10 & 1);

  sub_26294DAF8();
  sub_26294D1F8();
  v55 = v22 & 1;
  v115 = v22 & 1;
  swift_getKeyPath();
  swift_getKeyPath();
  v24 = v47;
  sub_26294CFF8();

  sub_26294CDA8();
  v26 = v25;
  (*(v52 + 8))(v24, v53);
  v93 = sub_2629205EC(v26);
  v94 = v27;
  v28 = sub_26294D648();
  v30 = v29;
  LOBYTE(v17) = v31;
  sub_26294D598();
  v32 = sub_26294D638();
  v34 = v33;
  LOBYTE(v13) = v35;

  sub_2628DF758(v28, v30, v17 & 1);

  sub_26294D8A8();
  v36 = sub_26294D608();
  v38 = v37;
  LOBYTE(v10) = v39;
  v41 = v40;

  sub_2628DF758(v32, v34, v13 & 1);

  sub_26294DB08();
  sub_26294D1F8();
  LOBYTE(v30) = v10 & 1;
  v106 = v10 & 1;
  v43 = v48;
  v42 = v49;
  *&v64 = v49;
  *(&v64 + 1) = v48;
  LOBYTE(v65) = v55;
  *(&v65 + 1) = *v114;
  DWORD1(v65) = *&v114[3];
  v44 = v50;
  *(&v65 + 1) = v50;
  v70 = v111;
  v71 = v112;
  v72 = v113;
  v66 = v107;
  v67 = v108;
  v68 = v109;
  v69 = v110;
  v56[6] = v111;
  v56[7] = v112;
  v56[2] = v107;
  v56[3] = v108;
  v56[4] = v109;
  v56[5] = v110;
  v56[0] = v64;
  v56[1] = v65;
  *&v73 = v36;
  *(&v73 + 1) = v38;
  LOBYTE(v74) = v30;
  *(&v74 + 1) = *v105;
  DWORD1(v74) = *&v105[3];
  *(&v74 + 1) = v41;
  v79 = v61;
  v80 = v62;
  v81 = v63;
  v75 = v57;
  v76 = v58;
  v77 = v59;
  v78 = v60;
  v56[12] = v58;
  v56[13] = v59;
  v56[10] = v74;
  v56[11] = v57;
  v56[14] = v60;
  v56[15] = v61;
  v56[16] = v62;
  v56[17] = v63;
  v56[8] = v113;
  v56[9] = v73;
  memcpy(v54, v56, 0x120uLL);
  v82[0] = v36;
  v82[1] = v38;
  v83 = v30;
  *v84 = *v105;
  *&v84[3] = *&v105[3];
  v85 = v41;
  v90 = v61;
  v91 = v62;
  v92 = v63;
  v86 = v57;
  v87 = v58;
  v88 = v59;
  v89 = v60;
  sub_2628DF954(&v64, &v93, &qword_27FF2E900, &qword_26294FDB0);
  sub_2628DF954(&v73, &v93, &qword_27FF2E900, &qword_26294FDB0);
  sub_2628DF6F0(v82, &qword_27FF2E900, &qword_26294FDB0);
  v93 = v42;
  v94 = v43;
  v95 = v55;
  *v96 = *v114;
  *&v96[3] = *&v114[3];
  v97 = v44;
  v102 = v111;
  v103 = v112;
  v104 = v113;
  v98 = v107;
  v99 = v108;
  v100 = v109;
  v101 = v110;
  return sub_2628DF6F0(&v93, &qword_27FF2E900, &qword_26294FDB0);
}

uint64_t sub_262914FC8@<X0>(uint64_t a2@<X8>)
{
  v75 = a2;
  v86 = sub_26294C538();
  v2 = *(v86 - 1);
  MEMORY[0x28223BE20](v86);
  v85 = &v62 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F2E8, &qword_26294FCB0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v62 - v5;
  v84 = type metadata accessor for SEStorageSummaryView.Bar(0);
  v7 = *(v84 - 8);
  MEMORY[0x28223BE20](v84);
  v83 = &v62 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F2F0, &qword_26294FCB8);
  MEMORY[0x28223BE20](v9 - 8);
  v73 = &v62 - v10;
  v74 = sub_26294CF58();
  v72 = *(v74 - 8);
  MEMORY[0x28223BE20](v74);
  v69 = &v62 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F2F8, &qword_26294FCC0);
  v77 = *(v12 - 8);
  v78 = v12;
  MEMORY[0x28223BE20](v12);
  v76 = &v62 - v13;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F300, &qword_26294FCC8);
  v63 = *(v66 - 8);
  MEMORY[0x28223BE20](v66);
  v79 = &v62 - v14;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F308, &qword_26294FCD0);
  v70 = *(v71 - 8);
  MEMORY[0x28223BE20](v71);
  v67 = &v62 - v15;
  v68 = sub_26294CDF8();
  v65 = *(v68 - 8);
  MEMORY[0x28223BE20](v68);
  v17 = &v62 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_26294CFF8();

  v64 = v17;
  sub_26294CDC8();
  v19 = v18;
  v20 = sub_2628E3024();
  v21 = v20[2];
  if (v21)
  {
    v62 = v20;
    v22 = (v20 + 4);
    v81 = (v7 + 56);
    v82 = (v2 + 32);
    v80 = v7;
    v23 = (v7 + 48);
    v24 = MEMORY[0x277D84F90];
    do
    {
      sub_262906C54(v22, &v87);
      __swift_project_boxed_opaque_existential_1(&v87, v90);
      v25 = sub_26294C698();
      v27 = v26;
      __swift_project_boxed_opaque_existential_1(&v87, v90);
      sub_26294C6A8();
      v29 = v28;
      v30 = v85;
      sub_26294C528();
      (*v82)(v6, v30, v86);
      v31 = v84;
      v32 = &v6[*(v84 + 20)];
      *v32 = v25;
      v32[1] = v27;
      *&v6[*(v31 + 24)] = v29;
      (*v81)(v6, 0, 1, v31);
      __swift_destroy_boxed_opaque_existential_1Tm(&v87);
      if ((*v23)(v6, 1, v31) == 1)
      {
        sub_2628DF6F0(v6, &qword_27FF2F2E8, &qword_26294FCB0);
      }

      else
      {
        sub_2629175E8(v6, v83);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v24 = sub_26291D980(0, v24[2] + 1, 1, v24);
        }

        v34 = v24[2];
        v33 = v24[3];
        if (v34 >= v33 >> 1)
        {
          v24 = sub_26291D980((v33 > 1), v34 + 1, 1, v24);
        }

        v24[2] = v34 + 1;
        sub_2629175E8(v83, v24 + ((*(v80 + 80) + 32) & ~*(v80 + 80)) + *(v80 + 72) * v34);
      }

      v22 += 40;
      --v21;
    }

    while (v21);
  }

  MEMORY[0x28223BE20](v35);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F310, &qword_26294FD20);
  v36 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF2F318, &qword_26294FD28);
  v37 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF2F320, &qword_26294FD30);
  v38 = sub_2628DFD0C(&qword_27FF2F328, &qword_27FF2F318, &qword_26294FD28, MEMORY[0x277CBB3F0]);
  v39 = sub_26294CED8();
  v40 = sub_26294D1D8();
  v41 = sub_262917BB8(&qword_27FF2F330, MEMORY[0x277CDFC08], MEMORY[0x277CDFBF8]);
  v87 = v39;
  v88 = v40;
  v89 = MEMORY[0x277CBB2F8];
  v90 = v41;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v87 = v36;
  v88 = v37;
  v89 = v38;
  v90 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v43 = v76;
  sub_26294CF78();

  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F338, &qword_26294FD38);
  v45 = sub_2628DFD0C(&qword_27FF2F340, &qword_27FF2F2F8, &qword_26294FCC0, MEMORY[0x277CBB3F8]);
  v46 = sub_2629174A8();
  v48 = v78;
  v47 = v79;
  sub_26294D678();
  result = (*(v77 + 8))(v43, v48);
  if (v19 < 0.0)
  {
    __break(1u);
  }

  else
  {
    v93 = 0;
    v94 = v19;
    v50 = v69;
    sub_26294CF48();
    v51 = sub_26294CFB8();
    v52 = v73;
    (*(*(v51 - 8) + 56))(v73, 1, 1, v51);
    v53 = v47;
    v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F358, &qword_26294FD40);
    v87 = v48;
    v88 = v44;
    v89 = v45;
    v90 = v46;
    v55 = swift_getOpaqueTypeConformance2();
    v56 = sub_262917564();
    v57 = v67;
    v58 = v66;
    v86 = &v62;
    v59 = v74;
    sub_26294D668();
    sub_2628DF6F0(v52, &qword_27FF2F2F0, &qword_26294FCB8);
    (*(v72 + 8))(v50, v59);
    v60 = (*(v63 + 8))(v53, v58);
    v85 = &v62;
    MEMORY[0x28223BE20](v60);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F368, &qword_26294FD48);
    v87 = v58;
    v88 = v54;
    v89 = v59;
    v90 = v55;
    v91 = v56;
    v92 = MEMORY[0x277CBB3C0];
    swift_getOpaqueTypeConformance2();
    sub_2628DFD0C(&qword_27FF2F370, &qword_27FF2F368, &qword_26294FD48, MEMORY[0x277CBB460]);
    v61 = v71;
    sub_26294D658();
    (*(v70 + 8))(v57, v61);
    return (*(v65 + 8))(v64, v68);
  }

  return result;
}

uint64_t sub_262915B9C(uint64_t a1, double a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F318, &qword_26294FD28);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v12[-v6];
  v14 = a2;
  v15 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F380, &qword_26294FD58);
  sub_262917658();
  sub_26294CF68();
  v13 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F320, &qword_26294FD30);
  sub_2628DFD0C(&qword_27FF2F328, &qword_27FF2F318, &qword_26294FD28, MEMORY[0x277CBB3F0]);
  v8 = sub_26294CED8();
  v9 = sub_26294D1D8();
  v10 = sub_262917BB8(&qword_27FF2F330, MEMORY[0x277CDFC08], MEMORY[0x277CDFBF8]);
  v16 = v8;
  v17 = v9;
  v18 = MEMORY[0x277CBB2F8];
  v19 = v10;
  swift_getOpaqueTypeConformance2();
  sub_26294CEA8();
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_262915DD0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, uint64_t a3@<D0>)
{
  v61 = a1;
  v66 = a2;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F3B8, &qword_26294FD80) - 8;
  MEMORY[0x28223BE20](v65);
  v64 = &v53 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F3A0, &qword_26294FD68);
  v62 = *(v5 - 8);
  v63 = v5;
  v6 = MEMORY[0x28223BE20](v5);
  v71 = &v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v70 = &v53 - v8;
  v59 = sub_26294C5F8();
  v58 = *(v59 - 8);
  MEMORY[0x28223BE20](v59);
  v57 = &v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F3B0, &qword_26294FD78);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  MEMORY[0x28223BE20](v11);
  v12 = sub_26294CED8();
  v54 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v14 = &v53 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F390, &qword_26294FD60);
  v56 = *(v55 - 8);
  MEMORY[0x28223BE20](v55);
  v16 = &v53 - v15;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F3C0, &qword_26294FD88);
  v69 = *(v60 - 8);
  v17 = MEMORY[0x28223BE20](v60);
  v68 = &v53 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v67 = &v53 - v19;
  sub_26294D368();
  v72 = 0;
  sub_26294CF08();

  sub_26294D368();
  v72 = a3;
  sub_26294CF08();

  sub_26294CEC8();
  v72 = sub_26294D888();
  v20 = MEMORY[0x277CE0F78];
  v21 = MEMORY[0x277CBB2F8];
  v22 = MEMORY[0x277CE0F60];
  sub_26294CE88();

  (*(v54 + 8))(v14, v12);
  v23 = v58;
  v24 = v57;
  v25 = v59;
  (*(v58 + 104))(v57, *MEMORY[0x277D48E08], v59);
  v26 = sub_26294C5E8();
  v28 = v27;
  (*(v23 + 8))(v24, v25);
  v76 = v26;
  v77 = v28;
  v72 = v12;
  v73 = v20;
  v74 = v21;
  v75 = v22;
  swift_getOpaqueTypeConformance2();
  v29 = sub_2628DF230();
  v30 = MEMORY[0x277D837D0];
  v31 = v67;
  v32 = v55;
  sub_26294CE98();

  (*(v56 + 8))(v16, v32);
  v76 = v61;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F3C8, &qword_26294FD90);
  sub_26294C538();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F3D0, &qword_26294FD98);
  sub_2628DFD0C(&qword_27FF2F3D8, &qword_27FF2F3C8, &qword_26294FD90, MEMORY[0x277D83980]);
  v33 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF2F3A8, &qword_26294FD70);
  v72 = sub_26294CF98();
  v73 = v30;
  v74 = MEMORY[0x277CBB400];
  v75 = MEMORY[0x277CBB570];
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v72 = v33;
  v73 = v30;
  v74 = OpaqueTypeConformance2;
  v75 = v29;
  swift_getOpaqueTypeConformance2();
  sub_262917BB8(&qword_27FF2F3E0, type metadata accessor for SEStorageSummaryView.Bar, &unk_26294FDC8);
  v35 = v70;
  sub_26294DA48();
  v36 = v68;
  v37 = *(v69 + 16);
  v38 = v60;
  v37(v68, v31, v60);
  v40 = v62;
  v39 = v63;
  v41 = *(v62 + 16);
  v42 = v71;
  v41(v71, v35, v63);
  v43 = v64;
  v44 = v36;
  v45 = v38;
  v37(v64, v44, v38);
  sub_262917788();
  v46 = v65;
  v47 = *(v65 + 56);
  v41(&v43[v47], v42, v39);
  v48 = v69;
  v49 = v66;
  (*(v69 + 32))(v66, v43, v45);
  (*(v40 + 32))(v49 + *(v46 + 56), &v43[v47], v39);
  v50 = *(v40 + 8);
  v50(v70, v39);
  v51 = *(v48 + 8);
  v51(v67, v45);
  v50(v71, v39);
  return (v51)(v68, v45);
}

uint64_t sub_2629166B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v45 = a2;
  v43 = sub_26294C5F8();
  v41 = *(v43 - 8);
  MEMORY[0x28223BE20](v43);
  v40 = &v34 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F3E8, &unk_26294FDA0);
  v38 = *(v4 - 8);
  v39 = v4;
  MEMORY[0x28223BE20](v4);
  v36 = &v34 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F3B0, &qword_26294FD78);
  MEMORY[0x28223BE20](v6 - 8);
  v35 = sub_26294CF98();
  v37 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F3A8, &qword_26294FD70);
  v44 = *(v42 - 8);
  MEMORY[0x28223BE20](v42);
  v46 = &v34 - v9;
  sub_26294D368();
  v10 = type metadata accessor for SEStorageSummaryView.Bar(0);
  v47 = *(a1 + *(v10 + 24));
  v11 = v47;
  sub_26294CF08();

  sub_26294CF88();
  sub_26294D368();
  v12 = (a1 + *(v10 + 20));
  v14 = *(v12 + 1);
  v47 = *v12;
  v13 = v47;
  v48 = v14;
  swift_bridgeObjectRetain_n();
  v15 = MEMORY[0x277D837D0];
  v16 = v36;
  sub_26294CF08();

  v17 = v16;
  v18 = v35;
  sub_26294CE78();
  (*(v38 + 8))(v17, v39);
  v19 = v8;
  v20 = *&v18;
  (*(v37 + 8))(v19, v18);
  v22 = v40;
  v21 = v41;
  v23 = v43;
  (*(v41 + 104))(v40, *MEMORY[0x277D48E08], v43);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2E8B8, &qword_26294EC60);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_26294E7D0;
  *(v24 + 56) = v15;
  v25 = sub_2628DF5B8();
  *(v24 + 64) = v25;
  *(v24 + 32) = v13;
  *(v24 + 40) = v14;
  v26 = sub_2629205EC(v11);
  *(v24 + 96) = v15;
  *(v24 + 104) = v25;
  *(v24 + 72) = v26;
  *(v24 + 80) = v27;
  v28 = sub_26294C6B8();
  v30 = v29;

  (*(v21 + 8))(v22, v23);
  v51 = v28;
  v52 = v30;
  v47 = v20;
  v48 = v15;
  v49 = MEMORY[0x277CBB400];
  v50 = MEMORY[0x277CBB570];
  swift_getOpaqueTypeConformance2();
  sub_2628DF230();
  v31 = v42;
  v32 = v46;
  sub_26294CE98();

  return (*(v44 + 8))(v32, v31);
}

uint64_t sub_262916C54@<X0>(uint64_t a1@<X8>, double a2@<D0>)
{
  v22 = a1;
  v21 = sub_26294D1D8();
  MEMORY[0x28223BE20](v21);
  v4 = &v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F3B0, &qword_26294FD78);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  MEMORY[0x28223BE20](v6);
  v20 = sub_26294CED8();
  v7 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26294D368();
  v23 = 0.0;
  sub_26294CF08();

  sub_26294D368();
  v23 = a2;
  sub_26294CF08();

  sub_26294CEC8();
  v10 = *(v21 + 20);
  v11 = *MEMORY[0x277CE0118];
  v12 = sub_26294D378();
  (*(*(v12 - 8) + 104))(&v4[v10], v11, v12);
  __asm { FMOV            V0.2D, #5.0 }

  *v4 = _Q0;
  sub_262917BB8(&qword_27FF2F330, MEMORY[0x277CDFC08], MEMORY[0x277CDFBF8]);
  v18 = v20;
  sub_26294CEB8();
  sub_2629178A8(v4);
  return (*(v7 + 8))(v9, v18);
}

double sub_262916F78@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_26294DAE8();
  sub_26294D0D8();
  v4 = sub_26294CF38();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  v5 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F338, &qword_26294FD38) + 36));
  *v5 = v7;
  v5[1] = v8;
  result = *&v9;
  v5[2] = v9;
  return result;
}

uint64_t sub_262917030(double a1)
{
  v2 = sub_26294CF28();
  MEMORY[0x28223BE20](v2 - 8);
  v3 = sub_26294CEF8();
  MEMORY[0x28223BE20](v3 - 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F378, &qword_26294FD50);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_26294E7D0;
  *(v4 + 32) = 0;
  *(v4 + 40) = a1;
  sub_26294CEE8();
  sub_26294CF18();
  sub_26294CE68();
  return sub_26294CFA8();
}

uint64_t sub_2629171FC@<X0>(uint64_t a2@<X8>)
{
  v4 = *(v2 + 8);
  *a2 = sub_26294D3C8();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F2C8, &qword_26294FC88);
  return sub_262914688(v4, (a2 + *(v5 + 44)));
}

uint64_t type metadata accessor for SEStorageSummaryView.Bar(uint64_t a1)
{
  result = qword_27FF2F3F0;
  if (!qword_27FF2F3F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2629172AC()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_26294CFF8();
}

uint64_t sub_26291732C(uint64_t a1, void **a2)
{
  v4 = sub_26294CDF8();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v15 - v9;
  v11 = *(v5 + 16);
  v11(&v15 - v9, a1, v4);
  v12 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v11(v8, v10, v4);
  v13 = v12;
  sub_26294D008();
  return (*(v5 + 8))(v10, v4);
}

unint64_t sub_2629174A8()
{
  result = qword_27FF2F348;
  if (!qword_27FF2F348)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF2F338, &qword_26294FD38);
    sub_262917BB8(&qword_27FF2F350, MEMORY[0x277CBB360], MEMORY[0x277CBB358]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF2F348);
  }

  return result;
}

unint64_t sub_262917564()
{
  result = qword_27FF2F360;
  if (!qword_27FF2F360)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF2F358, &qword_26294FD40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF2F360);
  }

  return result;
}

uint64_t sub_2629175E8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SEStorageSummaryView.Bar(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_262917658()
{
  result = qword_27FF2F388;
  if (!qword_27FF2F388)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF2F380, &qword_26294FD58);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF2F390, &qword_26294FD60);
    sub_26294CED8();
    swift_getOpaqueTypeConformance2();
    sub_2628DF230();
    swift_getOpaqueTypeConformance2();
    sub_262917788();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF2F388);
  }

  return result;
}

unint64_t sub_262917788()
{
  result = qword_27FF2F398;
  if (!qword_27FF2F398)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF2F3A0, &qword_26294FD68);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF2F3A8, &qword_26294FD70);
    sub_26294CF98();
    swift_getOpaqueTypeConformance2();
    sub_2628DF230();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF2F398);
  }

  return result;
}

uint64_t sub_2629178A8(uint64_t a1)
{
  v2 = sub_26294D1D8();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_262917918(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_26294C538();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_2629179EC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_26294C538();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_262917AA8(uint64_t a1)
{
  result = sub_26294C538();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_262917BB8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_262917C14(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_26294C7A8();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_3:

    return v9(v10, a2, v8);
  }

  if (a2 == 0x7FFFFFFF)
  {
    v12 = *(a1 + a3[5] + 8);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2E7D8, &unk_26294EB50);
    v14 = *(v13 - 8);
    if (*(v14 + 84) == a2)
    {
      v8 = v13;
      v9 = *(v14 + 48);
      v10 = a1 + a3[6];
      goto LABEL_3;
    }

    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2E7E0, &unk_26294F980);
    v16 = *(*(v15 - 8) + 48);
    v17 = a1 + a3[8];

    return v16(v17, a2, v15);
  }
}

uint64_t sub_262917DB8(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = sub_26294C7A8();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_3:

    return v11(v12, a2, a2, v10);
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[5] + 8) = (a2 - 1);
    return result;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2E7D8, &unk_26294EB50);
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + a4[6];
    goto LABEL_3;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2E7E0, &unk_26294F980);
  v16 = *(*(v15 - 8) + 56);
  v17 = a1 + a4[8];

  return v16(v17, a2, a2, v15);
}

uint64_t type metadata accessor for ViennaAppCategoryView(uint64_t a1)
{
  result = qword_27FF2F410;
  if (!qword_27FF2F410)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_262917F94(uint64_t a1)
{
  sub_26294C7A8();
  if (v1 <= 0x3F)
  {
    sub_2628DCCD8(319);
    if (v2 <= 0x3F)
    {
      sub_2628DCD6C(319, &qword_27FF2E808, MEMORY[0x277CDD968], MEMORY[0x277CE11F8]);
      if (v3 <= 0x3F)
      {
        sub_2628DCD6C(319, &qword_27FF2E810, MEMORY[0x277CDD848], MEMORY[0x277CDF468]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_26291817C@<X0>(uint64_t (*a1)(char *)@<X0>, uint64_t a2@<X2>, uint64_t (*a3)(void)@<X3>, uint64_t a4@<X8>)
{
  v24 = a1;
  v7 = a3(0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v20 - v9;
  v11 = *(a2 + 16);
  if (v11)
  {
    v21 = v8;
    v22 = a4;
    v13 = *(v8 + 16);
    v12 = v8 + 16;
    v23 = v13;
    v14 = (v12 - 8);
    v15 = a2 + ((*(v12 + 64) + 32) & ~*(v12 + 64));
    v16 = *(v12 + 56);
    while (1)
    {
      v23(v10, v15, v7);
      v17 = v24(v10);
      if (v4)
      {
        return (*v14)(v10, v7);
      }

      if (v17)
      {
        break;
      }

      (*v14)(v10, v7);
      v15 += v16;
      if (!--v11)
      {
        v18 = 1;
        v8 = v21;
        a4 = v22;
        return (*(v8 + 56))(a4, v18, 1, v7);
      }
    }

    v8 = v21;
    a4 = v22;
    (*(v21 + 32))(v22, v10, v7);
    v18 = 0;
  }

  else
  {
    v18 = 1;
  }

  return (*(v8 + 56))(a4, v18, 1, v7);
}

uint64_t sub_262918378@<X0>(_BYTE *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_26294CFF8();

  *a2 = v4;
  return result;
}

void sub_2629183F8(char *a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v2;
  sub_26294D008();
  sub_2628E2DAC();
}

uint64_t sub_26291852C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, uint64_t (*a5)(uint64_t), uint64_t a6)
{
  v6 = *(a2 + 16);
  if (!v6)
  {
    return 0;
  }

  v11 = *(a3(0) - 8);
  v12 = a2 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
  v13 = *(v11 + 72);
  sub_26291E258(a4, a5, a6);
  v14 = 0;
  while ((sub_26294DD48() & 1) == 0)
  {
    ++v14;
    v12 += v13;
    if (v6 == v14)
    {
      return 0;
    }
  }

  return v14;
}

uint64_t sub_2629186D0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2E920, &unk_26294F920);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v8[-v2];
  type metadata accessor for ViennaAppCategoryView(0);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_26294CFF8();

  v9 = v0;
  sub_26291817C(sub_26291E90C, v10, MEMORY[0x277D48E58], v3);

  v4 = sub_26294C7A8();
  v5 = *(v4 - 8);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    sub_2628DF6F0(v3, &qword_27FF2E920, &unk_26294F920);
    return MEMORY[0x277D84F90];
  }

  else
  {
    v7 = sub_26294C738();
    (*(v5 + 8))(v3, v4);
    return v7;
  }
}

uint64_t sub_26291889C()
{
  v0 = sub_26294C788();
  v2 = v1;
  if (v0 == sub_26294C788() && v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = sub_26294E058();
  }

  return v4 & 1;
}

uint64_t sub_262918938@<X0>(void *a1@<X8>)
{
  v79 = a1;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F420, &qword_26294FE68);
  v66 = *(v80 - 8);
  MEMORY[0x28223BE20](v80);
  v65 = &v62 - v2;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F428, &qword_26294FE70);
  MEMORY[0x28223BE20](v77);
  v78 = &v62 - v3;
  v4 = type metadata accessor for ViennaAppCategoryView(0);
  v68 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v69 = v5;
  v70 = &v62 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F430, &qword_26294FE78);
  MEMORY[0x28223BE20](v71);
  v67 = (&v62 - v6);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F438, &qword_26294FE80);
  v74 = *(v7 - 8);
  v75 = v7;
  MEMORY[0x28223BE20](v7);
  v73 = &v62 - v8;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F440, &qword_26294FE88);
  MEMORY[0x28223BE20](v76);
  v63 = &v62 - v9;
  v10 = sub_26294C8A8();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v62 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = v4;
  v14 = *(v4 + 20);
  OpaqueTypeConformance2 = v1;
  v15 = *(v1 + v14 + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  v62 = v15;
  sub_26294CFF8();

  v17 = 0;
  v18 = v81;
  v19 = *(v81 + 16);
  while (v19 != v17)
  {
    if (v17 >= *(v18 + 16))
    {
      __break(1u);
      return result;
    }

    (*(v11 + 16))(v13, v18 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v17++, v10);
    v20 = sub_26294C808();
    result = (*(v11 + 8))(v13, v10);
    if ((v20 & 1) == 0)
    {

      v21 = OpaqueTypeConformance2;
LABEL_7:
      v22 = sub_26294D3C8();
      v23 = v67;
      *v67 = v22;
      *(v23 + 8) = 0;
      *(v23 + 16) = 1;
      v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F448, &qword_26294FED8);
      sub_2629193E4(v23 + *(v24 + 44));
      v81 = sub_26294C778();
      v82 = v25;
      v26 = sub_2628DFD0C(&qword_27FF2F450, &qword_27FF2F430, &qword_26294FE78, MEMORY[0x277CE1198]);
      v27 = sub_2628DF230();
      v28 = v73;
      v29 = v71;
      sub_26294D708();

      sub_2628DF6F0(v23, &qword_27FF2F430, &qword_26294FE78);
      v30 = sub_26294CCB8();
      v31 = v70;
      sub_26291C188(v21, v70);
      v32 = (*(v68 + 80) + 16) & ~*(v68 + 80);
      v33 = swift_allocObject();
      sub_26291C1F0(v31, v33 + v32);
      v34 = type metadata accessor for ViennaCategoryView(0);
      v81 = v29;
      v82 = MEMORY[0x277D837D0];
      v83 = v26;
      v84 = v27;
      OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
      v35 = sub_26291E258(&qword_27FF2F458, MEMORY[0x277D48FC8], MEMORY[0x277D48FD8]);
      v60 = sub_26291E258(&qword_27FF2F460, type metadata accessor for ViennaCategoryView, &unk_26294F9A4);
      v36 = v65;
      v37 = v75;
      sub_26294D778();

      (*(v74 + 8))(v28, v37);
      v38 = v66;
      v39 = v80;
      (*(v66 + 16))(v78, v36, v80);
      swift_storeEnumTagMultiPayload();
      sub_26291C254();
      v81 = v37;
      v82 = v30;
      v83 = v34;
      v84 = OpaqueTypeConformance2;
      v85 = v35;
      v86 = v60;
      swift_getOpaqueTypeConformance2();
      sub_26294D3F8();
      return (*(v38 + 8))(v36, v39);
    }
  }

  v21 = OpaqueTypeConformance2;
  if (*(OpaqueTypeConformance2 + *(v64 + 28)))
  {
    goto LABEL_7;
  }

  v40 = sub_26294D3C8();
  v41 = v67;
  *v67 = v40;
  *(v41 + 8) = 0;
  *(v41 + 16) = 1;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F448, &qword_26294FED8);
  sub_2629193E4(v41 + *(v42 + 44));
  v81 = sub_26294C778();
  v82 = v43;
  v44 = sub_2628DFD0C(&qword_27FF2F450, &qword_27FF2F430, &qword_26294FE78, MEMORY[0x277CE1198]);
  v45 = sub_2628DF230();
  v46 = v73;
  v47 = v71;
  sub_26294D708();

  sub_2628DF6F0(v41, &qword_27FF2F430, &qword_26294FE78);
  v48 = sub_26294CCB8();
  v49 = v70;
  sub_26291C188(v21, v70);
  v50 = (*(v68 + 80) + 16) & ~*(v68 + 80);
  v51 = swift_allocObject();
  sub_26291C1F0(v49, v51 + v50);
  OpaqueTypeConformance2 = type metadata accessor for ViennaCategoryView(0);
  v81 = v47;
  v82 = MEMORY[0x277D837D0];
  v83 = v44;
  v84 = v45;
  v52 = swift_getOpaqueTypeConformance2();
  v53 = sub_26291E258(&qword_27FF2F458, MEMORY[0x277D48FC8], MEMORY[0x277D48FD8]);
  v61 = sub_26291E258(&qword_27FF2F460, type metadata accessor for ViennaCategoryView, &unk_26294F9A4);
  v54 = v63;
  v55 = v75;
  sub_26294D778();

  (*(v74 + 8))(v46, v55);
  type metadata accessor for SEStorageManagementController(0);
  sub_26291E258(&qword_27FF2E800, type metadata accessor for SEStorageManagementController, &protocol conformance descriptor for SEStorageManagementController);
  v56 = v62;
  v57 = sub_26294D178();
  v58 = (v54 + *(v76 + 36));
  *v58 = v57;
  v58[1] = v59;
  sub_26291C4B8(v54, v78);
  swift_storeEnumTagMultiPayload();
  sub_26291C254();
  v81 = v55;
  v82 = v48;
  v83 = OpaqueTypeConformance2;
  v84 = v52;
  v85 = v53;
  v86 = v61;
  swift_getOpaqueTypeConformance2();
  sub_26294D3F8();
  return sub_2628DF6F0(v54, &qword_27FF2F440, &qword_26294FE88);
}

uint64_t sub_2629193E4@<X0>(uint64_t a1@<X8>)
{
  v31 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2E920, &unk_26294F920);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = v29 - v3;
  v5 = sub_26294C5F8();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F470, &qword_26294FF20);
  MEMORY[0x28223BE20](v9);
  v11 = v29 - v10;
  v33 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F478, &qword_26294FF28);
  sub_26291C554();
  sub_26294D5E8();
  v12 = [objc_opt_self() secondarySystemBackgroundColor];
  v34 = sub_26294D838();
  v13 = sub_26294D9D8();
  v29[1] = v9;
  *&v11[*(v9 + 36)] = v13;
  v14 = *MEMORY[0x277D48DF8];
  v15 = *(v6 + 104);
  v30 = v5;
  v15(v8, v14, v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2E8B8, &qword_26294EC60);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_26294E7D0;
  v17 = sub_26294C788();
  v19 = v18;
  *(v16 + 56) = MEMORY[0x277D837D0];
  v20 = sub_2628DF5B8();
  *(v16 + 64) = v20;
  *(v16 + 32) = v17;
  *(v16 + 40) = v19;
  type metadata accessor for ViennaAppCategoryView(0);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_26294CFF8();

  v32 = v1;
  sub_26291817C(sub_26291C6EC, v34, MEMORY[0x277D48E58], v4);

  v21 = sub_26294C7A8();
  v22 = *(v21 - 8);
  if ((*(v22 + 48))(v4, 1, v21) == 1)
  {
    sub_2628DF6F0(v4, &qword_27FF2E920, &unk_26294F920);
    v23 = 0.0;
  }

  else
  {
    sub_26294C798();
    v25 = v24;
    (*(v22 + 8))(v4, v21);
    v23 = v25;
  }

  v26 = sub_2629205EC(v23);
  *(v16 + 96) = MEMORY[0x277D837D0];
  *(v16 + 104) = v20;
  *(v16 + 72) = v26;
  *(v16 + 80) = v27;
  sub_26294C6B8();

  (*(v6 + 8))(v8, v30);
  sub_26291DE30();
  sub_26294D798();

  return sub_2628DF6F0(v11, &qword_27FF2F470, &qword_26294FF20);
}

uint64_t sub_26291984C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_26294DAC8();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v22 - v11;
  v13 = sub_26294CCB8();
  (*(*(v13 - 8) + 16))(a3, a1, v13);
  v14 = type metadata accessor for ViennaCategoryView(0);
  v15 = v14[5];
  v16 = sub_26294C7A8();
  (*(*(v16 - 8) + 16))(a3 + v15, a2, v16);
  v17 = *(a2 + *(type metadata accessor for ViennaAppCategoryView(0) + 20) + 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2E7D8, &unk_26294EB50);
  sub_26294DA08();
  v18 = (a3 + v14[6]);
  type metadata accessor for SEStorageManagementController(0);
  sub_26291E258(&qword_27FF2E800, type metadata accessor for SEStorageManagementController, &protocol conformance descriptor for SEStorageManagementController);
  *v18 = sub_26294D178();
  v18[1] = v19;
  (*(v7 + 104))(v12, *MEMORY[0x277CDF0D8], v6);
  (*(v7 + 16))(v10, v12, v6);
  sub_26294D928();
  (*(v7 + 8))(v12, v6);
  v20 = v14[9];
  *(a3 + v20) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2E840, &qword_26294FEE0);
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_262919B00(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2E880, &unk_26294F770);
  MEMORY[0x28223BE20](v2);
  v6 = a1;
  sub_26291B7B8(a1, &v5[-v3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F490, &qword_26294FF30);
  sub_2628DF40C();
  sub_26291C5EC();
  return sub_26294DA78();
}

uint64_t sub_262919BF8(uint64_t a1)
{
  v2 = type metadata accessor for ViennaAppCategoryView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v8[1] = sub_2629186D0();
  sub_26291C188(a1, v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v6 = swift_allocObject();
  sub_26291C1F0(v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v6 + v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F4B0, &qword_26294FF98);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2E8B0, &unk_262950DD0);
  sub_2628DFD0C(&qword_27FF2F4B8, &qword_27FF2F4B0, &qword_26294FF98, MEMORY[0x277D83980]);
  sub_2628DFD0C(&qword_27FF2E8A8, &qword_27FF2E8B0, &unk_262950DD0, MEMORY[0x277CDD938]);
  sub_26291E258(&qword_27FF2F4C0, MEMORY[0x277D48FC8], MEMORY[0x277D48FE8]);
  return sub_26294DA68();
}

uint64_t sub_262919E00(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F4C8, &unk_26294FFA0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v15[-v5];
  v7 = sub_26294CCB8();
  v8 = *(v7 - 8);
  (*(v8 + 16))(v6, a1, v7);
  (*(v8 + 56))(v6, 0, 1, v7);
  v16 = a1;
  v17 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2E928, &unk_26294F880);
  v9 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF2E930, &unk_26294FFB0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF2E938, &unk_26294F890);
  v11 = sub_2628DF824();
  v12 = sub_2628DFD0C(&qword_27FF2E960, &qword_27FF2E938, &unk_26294F890, MEMORY[0x277CDF028]);
  v18 = v9;
  v19 = v10;
  v20 = v11;
  v21 = v12;
  swift_getOpaqueTypeConformance2();
  v13 = MEMORY[0x277D48FC8];
  sub_26291E258(&qword_27FF2F4D0, MEMORY[0x277D48FC8], MEMORY[0x277D48FE0]);
  sub_26291E258(&qword_27FF2F4D8, v13, MEMORY[0x277D48FD0]);
  sub_26291E258(&qword_27FF2F458, v13, MEMORY[0x277D48FD8]);
  return sub_26294D118();
}

uint64_t sub_26291A088@<X0>(uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v39 = a2;
  v40 = a3;
  v3 = sub_26294C5F8();
  v35 = *(v3 - 8);
  v4 = v35;
  v36 = v3;
  MEMORY[0x28223BE20](v3);
  v6 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2E978, &qword_26294EC40);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v35 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2E950, &unk_26294FFC0);
  MEMORY[0x28223BE20](v10);
  v12 = (&v35 - v11);
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2E930, &unk_26294FFB0);
  MEMORY[0x28223BE20](v38);
  v37 = &v35 - v13;
  v14 = sub_26294CC78();
  v16 = v15;
  sub_26294CC68();
  sub_26294CC98();
  v18 = sub_2629205EC(v17);
  v20 = v19;
  *v12 = v14;
  v12[1] = v16;
  sub_2628DF954(v9, v12 + v10[9], &qword_27FF2E978, &qword_26294EC40);
  *(v12 + v10[15]) = 1;
  *(v12 + v10[10]) = 0;
  v21 = (v12 + v10[11]);
  *v21 = v18;
  v21[1] = v20;
  *(v12 + v10[12]) = 2;
  *(v12 + v10[13]) = 0;
  sub_26291A4E0(v12 + v10[14]);
  sub_2628DF6F0(v9, &qword_27FF2E978, &qword_26294EC40);
  v22 = *(v4 + 104);
  v23 = v36;
  v22(v6, *MEMORY[0x277D48DF8], v36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2E8B8, &qword_26294EC60);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_26294E7D0;
  v25 = sub_26294CC78();
  v27 = v26;
  v28 = MEMORY[0x277D837D0];
  *(v24 + 56) = MEMORY[0x277D837D0];
  v29 = sub_2628DF5B8();
  *(v24 + 64) = v29;
  *(v24 + 32) = v25;
  *(v24 + 40) = v27;
  sub_26294CC98();
  v31 = sub_2629205EC(v30);
  *(v24 + 96) = v28;
  *(v24 + 104) = v29;
  *(v24 + 72) = v31;
  *(v24 + 80) = v32;
  sub_26294C6B8();

  (*(v35 + 8))(v6, v23);
  sub_2628DFD0C(&qword_27FF2E948, &qword_27FF2E950, &unk_26294FFC0, &unk_262950BA8);
  v33 = v37;
  sub_26294D798();

  sub_2628DF6F0(v12, &qword_27FF2E950, &unk_26294FFC0);
  v41 = v39;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2E938, &unk_26294F890);
  sub_2628DF824();
  sub_2628DFD0C(&qword_27FF2E960, &qword_27FF2E938, &unk_26294F890, MEMORY[0x277CDF028]);
  sub_26294D6C8();
  return sub_2628DF6F0(v33, &qword_27FF2E930, &unk_26294FFB0);
}

double sub_26291A4E0@<D0>(uint64_t a1@<X8>)
{
  v2 = sub_26294CC38();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v21[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_26294CC58();
  v6 = (*(v3 + 88))(v5, v2);
  if (v6 == *MEMORY[0x277D48F98])
  {
    v7 = 0xEB00000000647261;
    v8 = 0x63647261796E616CLL;
  }

  else
  {
    if (v6 != *MEMORY[0x277D48FA0] && v6 != *MEMORY[0x277D48F90])
    {
      (*(v3 + 8))(v5, v2);
    }

    v7 = 0xEE00656C676E6174;
    v8 = 0x6365722E6B636F6CLL;
  }

  KeyPath = swift_getKeyPath();
  sub_26294DAE8();
  sub_26294D0D8();
  v24 = 0;
  v11 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2E980, &unk_26294EC50) + 36));
  v12 = *(sub_26294D1D8() + 20);
  v13 = *MEMORY[0x277CE0118];
  v14 = sub_26294D378();
  (*(*(v14 - 8) + 104))(&v11[v12], v13, v14);
  __asm { FMOV            V0.2D, #6.0 }

  *v11 = _Q0;
  *&v11[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2E988, &unk_26294F8A0) + 36)] = 256;
  v19 = v22;
  *(a1 + 40) = *&v21[8];
  *a1 = KeyPath;
  *(a1 + 8) = 0;
  *(a1 + 16) = v8;
  *(a1 + 24) = v7;
  *(a1 + 32) = 0;
  *(a1 + 56) = v19;
  result = *&v23;
  *(a1 + 72) = v23;
  return result;
}

uint64_t sub_26291A748(uint64_t a1)
{
  v2 = type metadata accessor for ViennaAppCategoryView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = sub_26294C5F8();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v15[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v6 + 104))(v8, *MEMORY[0x277D48DF0], v5);
  v9 = sub_26294C5E8();
  v11 = v10;
  (*(v6 + 8))(v8, v5);
  sub_26291C188(a1, &v15[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)]);
  v12 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v13 = swift_allocObject();
  sub_26291C1F0(&v15[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)], v13 + v12);
  v19[0] = v9;
  v19[1] = v11;
  v16 = v19;
  v17 = 0x6873617274;
  v18 = 0xE500000000000000;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2E990, &unk_26294F8B0);
  sub_2628DFD0C(&qword_27FF2E998, &qword_27FF2E990, &unk_26294F8B0, MEMORY[0x277CDEFF0]);
  sub_26294D988();
}

uint64_t sub_26291A9D0(uint64_t a1)
{
  v2 = sub_26294C9D8();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v81 = &v63 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2ED60, &qword_26294F2E8);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v87 = &v63 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v9 = &v63 - v8;
  v10 = sub_26294CA28();
  v68 = *(v10 - 8);
  v11 = MEMORY[0x28223BE20](v10);
  v13 = &v63 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v90 = &v63 - v14;
  v15 = sub_26294CCB8();
  v71 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v70 = &v63 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for ViennaAppCategoryView(0);
  v66 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v67 = v18;
  v19 = &v63 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_26294C738();
  v77 = *(result + 16);
  if (!v77)
  {

    v28 = v17;
    goto LABEL_39;
  }

  v64 = v19;
  v21 = 0;
  v22 = v17;
  v23 = *(v17 + 20);
  v65 = a1;
  v24 = a1 + v23;
  v25 = v71;
  v76 = result + ((*(v25 + 80) + 32) & ~*(v25 + 80));
  v75 = v71 + 16;
  v97 = v68 + 16;
  v26 = *(v24 + 8);
  v92 = (v3 + 56);
  v86 = (v3 + 48);
  v100 = OBJC_IVAR____TtC12SESUIService29SEStorageManagementController_viennaGroups;
  v80 = (v3 + 32);
  v79 = (v3 + 8);
  v84 = (v68 + 24);
  v96 = (v68 + 8);
  v72 = (v71 + 8);
  v85 = v2;
  v27 = v70;
  v91 = v9;
  v95 = v10;
  v69 = v15;
  v74 = v22;
  v73 = result;
  while (1)
  {
    if (v21 >= *(result + 16))
    {
      goto LABEL_46;
    }

    v29 = *(v25 + 72);
    v83 = v21;
    (*(v25 + 16))(v27, v76 + v29 * v21, v15);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_26294CFF8();

    if (v101 != 1)
    {
      break;
    }

    (*v72)(v27, v15);
LABEL_4:
    v21 = v83 + 1;
    v28 = v74;
    result = v73;
    if (v83 + 1 == v77)
    {

      a1 = v65;
      v19 = v64;
LABEL_39:
      v59 = *(a1 + *(v28 + 20) + 8);
      sub_26291C188(a1, v19);
      v60 = (*(v66 + 80) + 16) & ~*(v66 + 80);
      v61 = swift_allocObject();
      sub_26291C1F0(v19, v61 + v60);
      swift_getKeyPath();
      swift_getKeyPath();
      sub_26294CFF8();

      if ((v101 & 1) == 0)
      {
        v62 = v59;

        sub_262904ED0(v62, v62, sub_26291E1E0, v61);
      }
    }
  }

  v82 = sub_26294CCA8();
  v30 = v95;
  v94 = *(v82 + 16);
  if (!v94)
  {
LABEL_36:
    v27 = v70;
    v15 = v69;
    (*v72)(v70, v69);

    v25 = v71;
    goto LABEL_4;
  }

  v31 = v68;
  v89 = (*(v31 + 80) + 32) & ~*(v31 + 80);
  v93 = v82 + v89;
  swift_beginAccess();
  v32 = 0;
  v33 = *(v31 + 72);
  v98 = *(v31 + 16);
  v99 = v33;
  v34 = v90;
  v98(v90, v93, v30);
  while (1)
  {
    (*v92)(v9, 1, 1, v2);
    swift_getKeyPath();
    swift_getKeyPath();
    v35 = v30;
    sub_26294CFF8();

    if ((v101 & 1) == 0)
    {
      break;
    }

LABEL_10:
    ++v32;
    sub_2628DF6F0(v9, &qword_27FF2ED60, &qword_26294F2E8);
    (*v96)(v34, v35);
    v30 = v35;
    if (v32 == v94)
    {
      goto LABEL_36;
    }

    v98(v34, v93 + v99 * v32, v35);
  }

  v36 = *(v26 + v100);

  v37 = sub_26291852C(v34, v36, MEMORY[0x277D48F20], &qword_27FF2EE98, MEMORY[0x277D48F20], MEMORY[0x277D48F28]);
  v39 = v38;

  if (v39)
  {
LABEL_9:
    sub_2628EC330();
    v34 = v90;
    v9 = v91;
    v35 = v95;
    goto LABEL_10;
  }

  if (v37 < 0)
  {
    goto LABEL_43;
  }

  v40 = *(v26 + v100);
  if (v37 >= *(v40 + 16))
  {
    goto LABEL_44;
  }

  v88 = v37 * v99;
  v98(v13, v40 + v89 + v37 * v99, v95);
  v41 = v87;
  sub_2628DF954(v91, v87, &qword_27FF2ED60, &qword_26294F2E8);
  if ((*v86)(v41, 1, v2) != 1)
  {
    v48 = v81;
    (*v80)(v81, v41, v2);
    v49 = sub_26294C928();
    v50 = sub_26291852C(v48, v49, MEMORY[0x277D48F10], &qword_27FF2F4E0, MEMORY[0x277D48F10], MEMORY[0x277D48F18]);
    v52 = v51;

    if ((v52 & 1) == 0)
    {
      v78 = sub_26294C918();
      v54 = v53;
      v55 = *v53;
      result = swift_isUniquelyReferenced_nonNull_native();
      *v54 = v55;
      if (result)
      {
        if ((v50 & 0x8000000000000000) != 0)
        {
          goto LABEL_47;
        }
      }

      else
      {
        result = sub_26291DBD0(v55);
        v55 = result;
        *v54 = result;
        if ((v50 & 0x8000000000000000) != 0)
        {
          goto LABEL_47;
        }
      }

      if (v50 >= v55[2])
      {
        goto LABEL_48;
      }

      sub_26294C9C8();
      v78(&v101, 0);
    }

    (*v79)(v48, v2);
    goto LABEL_30;
  }

  sub_2628DF6F0(v41, &qword_27FF2ED60, &qword_26294F2E8);
  v42 = *(sub_26294C928() + 16);

  if (!v42)
  {
LABEL_30:
    v56 = v100;
    swift_beginAccess();
    v57 = *(v26 + v56);
    result = swift_isUniquelyReferenced_nonNull_native();
    *(v26 + v56) = v57;
    if ((result & 1) == 0)
    {
      result = sub_26291DB84(v57);
      v57 = result;
      *(v26 + v100) = result;
    }

    v58 = v95;
    if (v37 >= *(v57 + 2))
    {
      goto LABEL_45;
    }

    (*v84)(&v57[v89 + v88], v13, v95);
    *(v26 + v100) = v57;
    swift_endAccess();
    (*v96)(v13, v58);
    v2 = v85;
    goto LABEL_9;
  }

  v43 = 0;
  while (1)
  {
    v44 = sub_26294C918();
    v46 = v45;
    v47 = *v45;
    result = swift_isUniquelyReferenced_nonNull_native();
    *v46 = v47;
    if ((result & 1) == 0)
    {
      result = sub_26291DBD0(v47);
      v47 = result;
      *v46 = result;
    }

    if (v43 >= v47[2])
    {
      break;
    }

    sub_26294C9C8();
    v44(&v101, 0);
    if (v42 == ++v43)
    {
      goto LABEL_30;
    }
  }

  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  __break(1u);
  return result;
}

uint64_t sub_26291B548(char a1, uint64_t a2)
{
  v4 = sub_26294D0F8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2E920, &unk_26294F920);
  result = MEMORY[0x28223BE20](v8 - 8);
  v11 = v16 - v10;
  if (a1)
  {
    type metadata accessor for ViennaAppCategoryView(0);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_26294CFF8();

    v13 = v16[1];
    MEMORY[0x28223BE20](v12);
    v16[-2] = a2;
    sub_26291817C(sub_26291E90C, v13, MEMORY[0x277D48E58], v11);

    v14 = sub_26294C7A8();
    v15 = (*(*(v14 - 8) + 48))(v11, 1, v14);
    result = sub_2628DF6F0(v11, &qword_27FF2E920, &unk_26294F920);
    if (v15 == 1)
    {
      sub_26291D460(v7);
      sub_26294D0E8();
      return (*(v5 + 8))(v7, v4);
    }
  }

  return result;
}

__n128 sub_26291B7B8@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v18 = a2;
  v3 = sub_26294D4E8();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2E8F0, &qword_26294FF90);
  v7 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v9 = &v16 - v8;
  v10 = sub_26294D338();
  v21 = 1;
  sub_26291BAF4(a1, v24);
  memcpy(v22, v24, sizeof(v22));
  memcpy(v23, v24, sizeof(v23));
  sub_2628DF954(v22, v19, &qword_27FF2E8F8, &unk_26294F910);
  sub_2628DF6F0(v23, &qword_27FF2E8F8, &unk_26294F910);
  memcpy(&v20[7], v22, 0x120uLL);
  *v19 = v10;
  *&v19[8] = 0;
  v19[16] = v21;
  memcpy(&v19[17], v20, 0x127uLL);
  sub_26294D4D8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2E888, &unk_2629513D0);
  sub_2628DFD0C(&qword_27FF2E890, &qword_27FF2E888, &unk_2629513D0, MEMORY[0x277CE1138]);
  sub_26294D768();
  (*(v4 + 8))(v6, v3);
  memcpy(v24, v19, 0x138uLL);
  sub_2628DF6F0(v24, &qword_27FF2E888, &unk_2629513D0);
  sub_26294DAE8();
  sub_26294D1F8();
  v11 = v18;
  (*(v7 + 32))(v18, v9, v17);
  v12 = v11 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2E880, &unk_26294F770) + 36);
  v13 = *&v19[80];
  *(v12 + 64) = *&v19[64];
  *(v12 + 80) = v13;
  *(v12 + 96) = *&v19[96];
  v14 = *&v19[16];
  *v12 = *v19;
  *(v12 + 16) = v14;
  result = *&v19[48];
  *(v12 + 32) = *&v19[32];
  *(v12 + 48) = result;
  return result;
}

uint64_t sub_26291BAF4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v47 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2E920, &unk_26294F920);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v44 - v4;
  v6 = sub_26294C7F8();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26294C758();
  v10 = sub_26294C7C8();
  v12 = v11;
  (*(v7 + 8))(v9, v6);
  v86 = v10;
  v87 = v12;
  sub_2628DF230();
  v13 = sub_26294D648();
  v15 = v14;
  LOBYTE(v7) = v16;
  LODWORD(v86) = sub_26294D4B8();
  v17 = sub_26294D618();
  v44 = v18;
  v45 = v17;
  LOBYTE(v9) = v19;
  v46 = v20;
  sub_2628DF758(v13, v15, v7 & 1);

  sub_26294DAF8();
  sub_26294D1F8();
  v21 = v9 & 1;
  v108 = v9 & 1;
  type metadata accessor for ViennaAppCategoryView(0);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_26294CFF8();

  v48 = a1;
  sub_26291817C(sub_26291E90C, v86, MEMORY[0x277D48E58], v5);

  v22 = sub_26294C7A8();
  v23 = *(v22 - 8);
  if ((*(v23 + 48))(v5, 1, v22) == 1)
  {
    sub_2628DF6F0(v5, &qword_27FF2E920, &unk_26294F920);
    v24 = 0.0;
  }

  else
  {
    sub_26294C798();
    v26 = v25;
    (*(v23 + 8))(v5, v22);
    v24 = v26;
  }

  v86 = sub_2629205EC(v24);
  v87 = v27;
  v28 = sub_26294D648();
  v30 = v29;
  v32 = v31;
  LODWORD(v86) = sub_26294D4C8();
  v33 = sub_26294D618();
  v35 = v34;
  v37 = v36;
  v39 = v38;
  sub_2628DF758(v28, v30, v32 & 1);

  sub_26294DB08();
  sub_26294D1F8();
  LOBYTE(v28) = v37 & 1;
  v99 = v37 & 1;
  v41 = v44;
  v40 = v45;
  *&v57 = v45;
  *(&v57 + 1) = v44;
  LOBYTE(v58) = v21;
  *(&v58 + 1) = *v107;
  DWORD1(v58) = *&v107[3];
  v42 = v46;
  *(&v58 + 1) = v46;
  v63 = v104;
  v64 = v105;
  v65 = v106;
  v59 = v100;
  v60 = v101;
  v61 = v102;
  v62 = v103;
  v49[6] = v104;
  v49[7] = v105;
  v49[2] = v100;
  v49[3] = v101;
  v49[4] = v102;
  v49[5] = v103;
  v49[0] = v57;
  v49[1] = v58;
  *&v66 = v33;
  *(&v66 + 1) = v35;
  LOBYTE(v67) = v28;
  *(&v67 + 1) = *v98;
  DWORD1(v67) = *&v98[3];
  *(&v67 + 1) = v39;
  v72 = v54;
  v73 = v55;
  v74 = v56;
  v68 = v50;
  v69 = v51;
  v70 = v52;
  v71 = v53;
  v49[12] = v51;
  v49[13] = v52;
  v49[10] = v67;
  v49[11] = v50;
  v49[14] = v53;
  v49[15] = v54;
  v49[16] = v55;
  v49[17] = v56;
  v49[8] = v106;
  v49[9] = v66;
  memcpy(v47, v49, 0x120uLL);
  v75[0] = v33;
  v75[1] = v35;
  v76 = v28;
  *v77 = *v98;
  *&v77[3] = *&v98[3];
  v78 = v39;
  v83 = v54;
  v84 = v55;
  v85 = v56;
  v79 = v50;
  v80 = v51;
  v81 = v52;
  v82 = v53;
  sub_2628DF954(&v57, &v86, &qword_27FF2E900, &qword_26294FDB0);
  sub_2628DF954(&v66, &v86, &qword_27FF2E900, &qword_26294FDB0);
  sub_2628DF6F0(v75, &qword_27FF2E900, &qword_26294FDB0);
  v86 = v40;
  v87 = v41;
  v88 = v21;
  *v89 = *v107;
  *&v89[3] = *&v107[3];
  v90 = v42;
  v95 = v104;
  v96 = v105;
  v97 = v106;
  v91 = v100;
  v92 = v101;
  v93 = v102;
  v94 = v103;
  return sub_2628DF6F0(&v86, &qword_27FF2E900, &qword_26294FDB0);
}

uint64_t sub_26291C188(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ViennaAppCategoryView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26291C1F0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ViennaAppCategoryView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_26291C254()
{
  result = qword_27FF2F468;
  if (!qword_27FF2F468)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF2F440, &qword_26294FE88);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF2F438, &qword_26294FE80);
    sub_26294CCB8();
    type metadata accessor for ViennaCategoryView(255);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF2F430, &qword_26294FE78);
    sub_2628DFD0C(&qword_27FF2F450, &qword_27FF2F430, &qword_26294FE78, MEMORY[0x277CE1198]);
    sub_2628DF230();
    swift_getOpaqueTypeConformance2();
    sub_26291E258(&qword_27FF2F458, MEMORY[0x277D48FC8], MEMORY[0x277D48FD8]);
    sub_26291E258(&qword_27FF2F460, type metadata accessor for ViennaCategoryView, &unk_26294F9A4);
    swift_getOpaqueTypeConformance2();
    sub_2628E01B0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF2F468);
  }

  return result;
}

uint64_t sub_26291C4B8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F440, &qword_26294FE88);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_26291C554()
{
  result = qword_27FF2F480;
  if (!qword_27FF2F480)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF2F478, &qword_26294FF28);
    sub_2628DF40C();
    sub_26291C5EC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF2F480);
  }

  return result;
}

unint64_t sub_26291C5EC()
{
  result = qword_27FF2F488;
  if (!qword_27FF2F488)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF2F490, &qword_26294FF30);
    sub_2628DFD0C(&qword_27FF2E8A8, &qword_27FF2E8B0, &unk_262950DD0, MEMORY[0x277CDD938]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF2F488);
  }

  return result;
}

uint64_t sub_26291C70C@<X0>(uint64_t a1@<X0>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v55 = a1;
  v57 = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F540, &qword_262950160);
  MEMORY[0x28223BE20](v5);
  v7 = &v43 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F548, &qword_262950168);
  MEMORY[0x28223BE20](v8);
  v10 = &v43 - v9;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F550, &qword_262950170);
  v11 = *(v56 - 8);
  MEMORY[0x28223BE20](v56);
  v13 = &v43 - v12;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_26294CFF8();

  if (v58)
  {
    KeyPath = swift_getKeyPath();
    v15 = swift_allocObject();
    *(v15 + 16) = 1;
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F558, &qword_2629501E8);
    (*(*(v16 - 8) + 16))(v7, v55, v16);
    v17 = &v7[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F598, &unk_262950200) + 36)];
    *v17 = KeyPath;
    v17[1] = sub_262913BC8;
    v17[2] = v15;
    *&v7[*(v5 + 36)] = 0x3FE0000000000000;
    sub_2628DF954(v7, v10, &qword_27FF2F540, &qword_262950160);
    swift_storeEnumTagMultiPayload();
    v18 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF2F560, &unk_2629501F0);
    v19 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF2F568, &qword_262951650);
    v20 = sub_2628DFD0C(&qword_27FF2F570, &qword_27FF2F558, &qword_2629501E8, MEMORY[0x277CE04B0]);
    v21 = sub_2628DF230();
    v22 = sub_2628DFD0C(&qword_27FF2F578, &qword_27FF2F560, &unk_2629501F0, MEMORY[0x277CE14C0]);
    v23 = sub_26291E4DC();
    v58 = v16;
    v59 = MEMORY[0x277D837D0];
    v60 = v18;
    v61 = v19;
    v62 = v20;
    v63 = v21;
    v64 = v22;
    v65 = v23;
    swift_getOpaqueTypeConformance2();
    sub_26291E558();
    sub_26294D3F8();
    return sub_2628DF6F0(v7, &qword_27FF2F540, &qword_262950160);
  }

  else
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_26294CFF8();

    v25 = v58;
    v26 = v59;
    v54 = v59;

    v66 = v25;
    v67 = v26;
    type metadata accessor for SEStorageManagementController(0);
    sub_26291E258(&qword_27FF2E800, type metadata accessor for SEStorageManagementController, &protocol conformance descriptor for SEStorageManagementController);
    v27 = sub_26294D188();
    swift_getKeyPath();
    v53 = v11;
    sub_26294D198();

    v50 = &v43;
    v47 = v59;
    v48 = v58;
    v49 = v60;
    v29 = MEMORY[0x28223BE20](v28);
    v46 = v42;
    MEMORY[0x28223BE20](v29);
    v51 = v8;
    v42[3] = a3;
    v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F558, &qword_2629501E8);
    v45 = v10;
    v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F560, &unk_2629501F0);
    v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F568, &qword_262951650);
    v52 = v5;
    v44 = v32;
    v33 = sub_2628DFD0C(&qword_27FF2F570, &qword_27FF2F558, &qword_2629501E8, MEMORY[0x277CE04B0]);
    v34 = v13;
    v35 = sub_2628DF230();
    v36 = sub_2628DFD0C(&qword_27FF2F578, &qword_27FF2F560, &unk_2629501F0, MEMORY[0x277CE14C0]);
    v37 = sub_26291E4DC();
    v42[1] = v36;
    v42[2] = v37;
    v42[0] = v35;
    v38 = v31;
    v39 = v30;
    sub_26294D728();

    v40 = v53;
    v41 = v56;
    (*(v53 + 16))(v45, v34, v56);
    swift_storeEnumTagMultiPayload();
    v58 = v39;
    v59 = MEMORY[0x277D837D0];
    v60 = v38;
    v61 = v44;
    v62 = v33;
    v63 = v35;
    v64 = v36;
    v65 = v37;
    swift_getOpaqueTypeConformance2();
    sub_26291E558();
    sub_26294D3F8();
    return (*(v40 + 8))(v34, v41);
  }
}

uint64_t sub_26291CE68@<X0>(uint64_t a1@<X0>, void *a2@<X1>, char *a3@<X8>)
{
  v53 = a1;
  v54 = a2;
  v58 = a3;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F5B0, &qword_262950240);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v43 - v4;
  v6 = sub_26294C5F8();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F5B8, &qword_262950248);
  v57 = *(v10 - 8);
  v11 = MEMORY[0x28223BE20](v10);
  v56 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v55 = &v43 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v52 = &v43 - v16;
  MEMORY[0x28223BE20](v15);
  v47 = &v43 - v17;
  v51 = *MEMORY[0x277D48DF0];
  v50 = *(v7 + 104);
  v44 = v6;
  v50(v9);
  v18 = sub_26294C5E8();
  v20 = v19;
  v48 = *(v7 + 8);
  v49 = v7 + 8;
  v48(v9, v6);
  v59 = v18;
  v60 = v20;
  sub_26294D028();
  v21 = sub_26294D048();
  v22 = *(v21 - 8);
  v45 = *(v22 + 56);
  v46 = v22 + 56;
  v45(v5, 0, 1, v21);
  v23 = swift_allocObject();
  v24 = v53;
  v25 = v54;
  *(v23 + 16) = v53;
  *(v23 + 24) = v25;
  v43 = sub_2628DF230();
  v26 = v25;
  sub_26294D998();
  v27 = v44;
  (v50)(v9, v51, v44);
  v28 = sub_26294C5E8();
  v30 = v29;
  v48(v9, v27);
  v59 = v28;
  v60 = v30;
  sub_26294D038();
  v45(v5, 0, 1, v21);
  v31 = swift_allocObject();
  *(v31 + 16) = v24;
  *(v31 + 24) = v26;
  v32 = v26;
  v33 = v52;
  sub_26294D998();
  v34 = v57;
  v35 = *(v57 + 16);
  v36 = v55;
  v37 = v47;
  v35(v55, v47, v10);
  v38 = v56;
  v35(v56, v33, v10);
  v39 = v58;
  v35(v58, v36, v10);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F5C0, &qword_262950250);
  v35(&v39[*(v40 + 48)], v38, v10);
  v41 = *(v34 + 8);
  v41(v33, v10);
  v41(v37, v10);
  v41(v38, v10);
  return (v41)(v36, v10);
}

uint64_t sub_26291D370@<X0>(uint64_t *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_26294CFF8();

  v3 = v8;
  if (v8)
  {
    sub_2628DF230();
    result = sub_26294D648();
    v3 = v7 & 1;
  }

  else
  {
    result = 0;
    v5 = 0;
    v6 = 0;
  }

  *a2 = result;
  a2[1] = v5;
  a2[2] = v3;
  a2[3] = v6;
  return result;
}

uint64_t sub_26291D460@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_26294D328();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2E840, &qword_26294FEE0);
  MEMORY[0x28223BE20](v8);
  v10 = &v14 - v9;
  sub_2628DF954(v2, &v14 - v9, &qword_27FF2E840, &qword_26294FEE0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_26294D0F8();
    return (*(*(v11 - 8) + 32))(a1, v10, v11);
  }

  else
  {
    sub_26294DEB8();
    v13 = sub_26294D508();
    sub_26294CE18();

    sub_26294D318();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

void *sub_26291D7C0(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
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

  if (v15)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v16 = swift_allocObject();
    v17 = _swift_stdlib_malloc_size(v16);
    v16[2] = v14;
    v16[3] = 2 * ((v17 - 32) / 40);
  }

  else
  {
    v16 = MEMORY[0x277D84F90];
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[5 * v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 40 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

void *sub_26291D9A8(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v16) == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

uint64_t sub_26291DD4C(unint64_t a1)
{
  if (a1 >> 62)
  {
    sub_26294E008();
  }

  return sub_26294DF98();
}

uint64_t sub_26291DDB0(void *a1, uint64_t a2, uint64_t a3)
{
  sub_2628DF230();

  return sub_26294D918();
}

unint64_t sub_26291DE30()
{
  result = qword_27FF2F498;
  if (!qword_27FF2F498)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF2F470, &qword_26294FF20);
    sub_2628DFD0C(&qword_27FF2F4A0, &qword_27FF2F4A8, &unk_26294FF80, MEMORY[0x277CDE5A0]);
    sub_2628DFD0C(&qword_27FF2E8E0, &qword_27FF2E8E8, &qword_262950C20, MEMORY[0x277CE04A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF2F498);
  }

  return result;
}

uint64_t sub_26291DF1C(uint64_t a1)
{
  v3 = *(type metadata accessor for ViennaAppCategoryView(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_262919E00(a1, v4);
}

uint64_t sub_26291DFAC()
{
  v1 = *(type metadata accessor for ViennaAppCategoryView(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_26291A9D0(v2);
}

uint64_t objectdestroyTm_3()
{
  v1 = (type metadata accessor for ViennaAppCategoryView(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = sub_26294C7A8();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);

  v6 = v0 + v3 + v1[8];

  v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2E7D8, &unk_26294EB50) + 32);
  v8 = sub_26294D168();
  (*(*(v8 - 8) + 8))(v6 + v7, v8);
  v9 = v1[10];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2E840, &qword_26294FEE0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = sub_26294D0F8();
    (*(*(v10 - 8) + 8))(v0 + v3 + v9, v10);
  }

  else
  {
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_26291E1E0(char a1)
{
  v3 = *(type metadata accessor for ViennaAppCategoryView(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_26291B548(a1, v4);
}

uint64_t sub_26291E258(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_26291E2B4()
{
  result = qword_27FF2F530;
  if (!qword_27FF2F530)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF2F538, &qword_262950108);
    sub_26291C254();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF2F438, &qword_26294FE80);
    sub_26294CCB8();
    type metadata accessor for ViennaCategoryView(255);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF2F430, &qword_26294FE78);
    sub_2628DFD0C(&qword_27FF2F450, &qword_27FF2F430, &qword_26294FE78, MEMORY[0x277CE1198]);
    sub_2628DF230();
    swift_getOpaqueTypeConformance2();
    sub_26291E258(&qword_27FF2F458, MEMORY[0x277D48FC8], MEMORY[0x277D48FD8]);
    sub_26291E258(&qword_27FF2F460, type metadata accessor for ViennaCategoryView, &unk_26294F9A4);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF2F530);
  }

  return result;
}

unint64_t sub_26291E4DC()
{
  result = qword_27FF2F580;
  if (!qword_27FF2F580)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF2F568, &qword_262951650);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF2F580);
  }

  return result;
}

unint64_t sub_26291E558()
{
  result = qword_27FF2F588;
  if (!qword_27FF2F588)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF2F540, &qword_262950160);
    sub_26291E5E4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF2F588);
  }

  return result;
}

unint64_t sub_26291E5E4()
{
  result = qword_27FF2F590;
  if (!qword_27FF2F590)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF2F598, &unk_262950200);
    sub_2628DFD0C(&qword_27FF2F570, &qword_27FF2F558, &qword_2629501E8, MEMORY[0x277CE04B0]);
    sub_2628DFD0C(&qword_27FF2F5A0, &qword_27FF2F5A8, &qword_2629519C0, MEMORY[0x277CE08A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF2F590);
  }

  return result;
}

uint64_t sub_26291E6E0()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

unint64_t sub_26291E764()
{
  result = qword_27FF2F5C8;
  if (!qword_27FF2F5C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF2F5D0, &qword_262950258);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF2F558, &qword_2629501E8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF2F560, &unk_2629501F0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF2F568, &qword_262951650);
    sub_2628DFD0C(&qword_27FF2F570, &qword_27FF2F558, &qword_2629501E8, MEMORY[0x277CE04B0]);
    sub_2628DF230();
    sub_2628DFD0C(&qword_27FF2F578, &qword_27FF2F560, &unk_2629501F0, MEMORY[0x277CE14C0]);
    sub_26291E4DC();
    swift_getOpaqueTypeConformance2();
    sub_26291E558();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF2F5C8);
  }

  return result;
}

uint64_t sub_26291E92C()
{
  v0 = sub_26294CE48();
  __swift_allocate_value_buffer(v0, qword_27FF314B0);
  __swift_project_value_buffer(v0, qword_27FF314B0);
  return sub_26294CE38();
}

uint64_t Icon.IconType.hash(into:)(uint64_t a1)
{
  if ((v1[2] >> 61) > 4)
  {
    return MEMORY[0x26672D6D0](0, *v1, v1[1]);
  }

  return sub_26294DD88();
}

uint64_t Icon.IconType.hashValue.getter()
{
  v1 = *(v0 + 16);
  sub_26294E098();
  v2 = v1 >> 61;
  if ((v1 >> 61) <= 2 || v2 == 3 || v2 == 4)
  {
    sub_26294DD88();
  }

  else
  {
    MEMORY[0x26672D6D0](0);
  }

  return sub_26294E0B8();
}

uint64_t sub_26291EAC4(uint64_t a1)
{
  if ((v1[2] >> 61) > 4)
  {
    return MEMORY[0x26672D6D0](0, *v1, v1[1]);
  }

  return sub_26294DD88();
}

uint64_t sub_26291EB40(uint64_t a1)
{
  v2 = *(v1 + 16);
  sub_26294E098();
  v3 = v2 >> 61;
  if ((v2 >> 61) <= 2 || v3 == 3 || v3 == 4)
  {
    sub_26294DD88();
  }

  else
  {
    MEMORY[0x26672D6D0](0);
  }

  return sub_26294E0B8();
}

__n128 Icon.init(type:)@<Q0>(__n128 *a1@<X0>, __n128 *a2@<X8>)
{
  v5 = *a1;
  v3 = a1[1].n128_u64[0];
  a2->n128_u64[0] = swift_getKeyPath();
  a2->n128_u8[8] = 0;
  result = v5;
  a2[1] = v5;
  a2[2].n128_u64[0] = v3;
  return result;
}

void *sub_26291EC6C@<X0>(void *a1@<X8>)
{
  v87 = a1;
  v2 = sub_26294D8E8();
  v76 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v4 = &v73 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F5F0, &qword_262950570);
  MEMORY[0x28223BE20](v84);
  v86 = (&v73 - v5);
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F5F8, &qword_262950578);
  MEMORY[0x28223BE20](v80);
  v82 = (&v73 - v6);
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F600, &qword_262950580);
  MEMORY[0x28223BE20](v77);
  v78 = &v73 - v7;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F608, &qword_262950588);
  MEMORY[0x28223BE20](v81);
  v79 = &v73 - v8;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F610, &qword_262950590);
  MEMORY[0x28223BE20](v85);
  v83 = &v73 - v9;
  v75 = sub_26294D328();
  v74 = *(v75 - 8);
  MEMORY[0x28223BE20](v75);
  v11 = &v73 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F618, &qword_262950598);
  v13 = MEMORY[0x28223BE20](v12);
  v15 = &v73 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v13);
  v19 = &v73 - v18;
  v20 = *(v1 + 8);
  v21 = *(v1 + 16);
  v22 = *(v1 + 24);
  v23 = *(v1 + 32);
  v24 = v23 >> 61;
  if ((v23 >> 61) > 2)
  {
    if (v24 == 3)
    {
      v46 = *v1;
      v73 = v17;
      v76 = v16;
      v47 = objc_allocWithZone(MEMORY[0x277D1B1A8]);

      v48 = sub_26294DD58();
      sub_2629204CC(v21, v22, v23);
      [v47 initWithType_];

      if (qword_27FF2E7C8 != -1)
      {
        swift_once();
      }

      v49 = qword_27FF314C8;
      if (v20)
      {
        v50 = *&v46;
        v51 = qword_27FF314C8;
      }

      else
      {
        sub_262920550(v46, 0);
        v62 = v49;
        sub_26294DEB8();
        v63 = sub_26294D508();
        sub_26294CE18();

        sub_26294D318();
        swift_getAtKeyPath();
        sub_26292055C(v46, 0);
        (*(v74 + 8))(v11, v75);
        v50 = *&v90;
      }

      [v49 setScale_];
      [v49 setDrawBorder_];
      sub_26294CE08();
      v64 = v73;
      v65 = v76;
      (*(v73 + 16))(v78, v15, v76);
      swift_storeEnumTagMultiPayload();
      sub_2628DFD0C(&qword_27FF2F658, &qword_27FF2F618, &qword_262950598, MEMORY[0x277D7EA70]);
      v66 = v79;
      sub_26294D3F8();
      sub_2628DF954(v66, v82, &qword_27FF2F608, &qword_262950588);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F668, &qword_2629505B8);
      sub_2629202EC();
      sub_26292039C();
      v67 = v83;
      sub_26294D3F8();
      sub_2628DF6F0(v66, &qword_27FF2F608, &qword_262950588);
      sub_2628DF954(v67, v86, &qword_27FF2F610, &qword_262950590);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F640, &qword_2629505B0);
      sub_262920260();
      sub_262920428();
      sub_26294D3F8();
      sub_2628DF6F0(v67, &qword_27FF2F610, &qword_262950590);
      return (*(v64 + 8))(v15, v65);
    }

    else if (v24 == 4)
    {
      v32 = *MEMORY[0x277CE0FE0];
      v33 = v76;
      v34 = *(v76 + 104);

      v34(v4, v32, v2);
      v35 = sub_26294D908();
      (*(v33 + 8))(v4, v2);
      v88 = v35;
      *v89 = 0;
      *&v89[8] = 65537;
      swift_retain_n();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F620, &qword_2629505A0);
      sub_262920150();
      sub_26294D3F8();
      v36 = v90;
      v37 = v92;
      v38 = v91;
      v39 = v91 | (v92 << 16);
      LOBYTE(v34) = v93;
      v40 = v86;
      *v86 = v90;
      *(v40 + 18) = v37;
      *(v40 + 8) = v38;
      *(v40 + 19) = v34;
      swift_storeEnumTagMultiPayload();
      sub_2629204B4(v36, *(&v36 + 1), v39, v34);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F640, &qword_2629505B0);
      sub_262920260();
      sub_262920428();
      sub_26294D3F8();

      sub_2629204C0(v36, *(&v36 + 1), v39, v34);
    }

    else
    {
      v88 = 0;
      *v89 = 0;
      *&v89[7] = 0;
      v89[11] = 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F620, &qword_2629505A0);
      sub_262920150();
      sub_26294D3F8();
      v58 = v91;
      v59 = v92;
      v60 = v93;
      v61 = v86;
      *v86 = v90;
      *(v61 + 18) = v59;
      *(v61 + 8) = v58;
      *(v61 + 19) = v60;
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F640, &qword_2629505B0);
      sub_262920260();
      sub_262920428();
      return sub_26294D3F8();
    }
  }

  else
  {
    if (!v24)
    {

      v88 = sub_26294D8D8();
      *v89 = 0;
      *&v89[8] = 0;
      v89[10] = 1;
LABEL_11:

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F638, &qword_2629505A8);
      sub_2629201DC();
      sub_26294D3F8();
      v42 = v91;
      v43 = v92;
      v44 = v82;
      *v82 = v90;
      *(v44 + 8) = v42;
      *(v44 + 18) = v43;
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F668, &qword_2629505B8);
      sub_2629202EC();
      sub_26292039C();
      v45 = v83;
      sub_26294D3F8();
      sub_2628DF954(v45, v86, &qword_27FF2F610, &qword_262950590);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F640, &qword_2629505B0);
      sub_262920260();
      sub_262920428();
      sub_26294D3F8();

      return sub_2628DF6F0(v45, &qword_27FF2F610, &qword_262950590);
    }

    if (v24 == 1)
    {
      type metadata accessor for FindClass();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v26 = objc_opt_self();

      v27 = [v26 bundleForClass_];
      v28 = sub_26294DD58();
      sub_2629204CC(v21, v22, v23);
      v29 = [objc_opt_self() imageNamed:v28 inBundle:v27];

      if (!v29)
      {
        [objc_allocWithZone(MEMORY[0x277D755B8]) init];
      }

      sub_26294D8C8();
      v30 = v76;
      (*(v76 + 104))(v4, *MEMORY[0x277CE0FE0], v2);
      v31 = sub_26294D908();

      (*(v30 + 8))(v4, v2);
      v88 = v31;
      *v89 = 0;
      *&v89[8] = 1;
      v89[10] = 0;
      goto LABEL_11;
    }

    v52 = *v1;
    v53 = v17;
    v76 = v16;
    v54 = objc_allocWithZone(MEMORY[0x277D1B1A8]);

    v55 = sub_26294DD58();
    sub_2629204CC(v21, v22, v23);
    [v54 initWithBundleIdentifier_];

    if (qword_27FF2E7C8 != -1)
    {
      swift_once();
    }

    v56 = qword_27FF314C8;
    if (v20)
    {
      v57 = *&v52;
    }

    else
    {
      sub_262920550(v52, 0);
      sub_26294DEB8();
      v68 = sub_26294D508();
      sub_26294CE18();

      sub_26294D318();
      swift_getAtKeyPath();
      sub_26292055C(v52, 0);
      (*(v74 + 8))(v11, v75);
      v57 = *&v90;
    }

    [v56 setScale_];
    [v56 setDrawBorder_];
    sub_26294CE08();
    v69 = v53;
    v70 = v76;
    (*(v53 + 16))(v78, v19, v76);
    swift_storeEnumTagMultiPayload();
    sub_2628DFD0C(&qword_27FF2F658, &qword_27FF2F618, &qword_262950598, MEMORY[0x277D7EA70]);
    v71 = v79;
    sub_26294D3F8();
    sub_2628DF954(v71, v82, &qword_27FF2F608, &qword_262950588);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F668, &qword_2629505B8);
    sub_2629202EC();
    sub_26292039C();
    v72 = v83;
    sub_26294D3F8();
    sub_2628DF6F0(v71, &qword_27FF2F608, &qword_262950588);
    sub_2628DF954(v72, v86, &qword_27FF2F610, &qword_262950590);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F640, &qword_2629505B0);
    sub_262920260();
    sub_262920428();
    sub_26294D3F8();
    sub_2628DF6F0(v72, &qword_27FF2F610, &qword_262950590);
    return (*(v69 + 8))(v19, v70);
  }
}

void sub_26291FBE8()
{
  v0 = *MEMORY[0x277D1B240];
  v1 = objc_opt_self();
  v2 = v0;
  v3 = [v1 imageDescriptorNamed_];

  qword_27FF314C8 = v3;
}

uint64_t _s12SESUIService4IconV0B4TypeO2eeoiySbAE_AEtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  v6 = *a2;
  v5 = a2[1];
  v7 = a2[2];
  v8 = v4 >> 61;
  if ((v4 >> 61) > 2)
  {
    if (v8 != 3)
    {
      if (v8 != 4)
      {
        if (v7 >> 61 != 5 || (v5 | v6) != 0 || v7 != 0xA000000000000000)
        {
          goto LABEL_35;
        }

        sub_2629204CC(*a1, v2, v4);
        v11 = 0;
        v12 = 0;
        v13 = 0xA000000000000000;
LABEL_25:
        sub_2629204CC(v11, v12, v13);
        return 1;
      }

      if (v7 >> 61 != 4 || (v3 != v6 || v2 != v5) && (sub_26294E058() & 1) == 0)
      {
        goto LABEL_35;
      }

      sub_262920568(v6, v5, v7);
      sub_262920568(v3, v2, v4);
      v9 = sub_26294D8F8();
LABEL_27:
      sub_2629204CC(v3, v2, v4);
      sub_2629204CC(v6, v5, v7);
      return v9 & 1;
    }

    if (v7 >> 61 != 3)
    {
      goto LABEL_35;
    }

LABEL_16:
    if (v3 == v6 && v2 == v5)
    {
      goto LABEL_24;
    }

LABEL_26:
    v9 = sub_26294E058();
    sub_262920568(v6, v5, v7);
    sub_262920568(v3, v2, v4);
    goto LABEL_27;
  }

  if (!v8)
  {
    if (v7 >> 61)
    {
      goto LABEL_35;
    }

    goto LABEL_16;
  }

  if (v8 == 1)
  {
    if (v7 >> 61 != 1)
    {
      goto LABEL_35;
    }

LABEL_22:
    if (v3 == v6 && v2 == v5)
    {
LABEL_24:
      sub_262920568(*a1, v2, v7);
      sub_262920568(v3, v2, v4);
      sub_2629204CC(v3, v2, v4);
      v11 = v3;
      v12 = v2;
      v13 = v7;
      goto LABEL_25;
    }

    goto LABEL_26;
  }

  if (v7 >> 61 == 2)
  {
    goto LABEL_22;
  }

LABEL_35:
  sub_262920568(v6, v5, v7);
  sub_262920568(v3, v2, v4);
  sub_2629204CC(v3, v2, v4);
  sub_2629204CC(v6, v5, v7);
  return 0;
}

unint64_t sub_26291FEB8()
{
  result = qword_27FF2F5D8;
  if (!qword_27FF2F5D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF2F5D8);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_12SESUIService4IconV0B4TypeO(uint64_t a1)
{
  v1 = *(a1 + 16) >> 61;
  if (v1 <= 4)
  {
    return v1;
  }

  else
  {
    return (*a1 + 5);
  }
}

uint64_t sub_26291FF50(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 40))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
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

uint64_t sub_26291FF98(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_262920008(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7B && *(a1 + 24))
  {
    return (*a1 + 123);
  }

  v3 = (((*(a1 + 16) >> 57) >> 4) | (8 * ((*(a1 + 16) >> 57) & 8 | *(a1 + 16) & 7))) ^ 0x7F;
  if (v3 >= 0x7A)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_262920064(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7A)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 123;
    if (a3 >= 0x7B)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7B)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 3) & 0xF | (16 * (-a2 & 0x7F));
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

uint64_t sub_2629200CC(uint64_t result, uint64_t a2)
{
  if (a2 < 5)
  {
    *(result + 16) = *(result + 16) & 0xFFFFFFFFFFFFFF8 | (a2 << 61);
  }

  else
  {
    *result = (a2 - 5);
    *(result + 8) = xmmword_262950260;
  }

  return result;
}

unint64_t sub_262920150()
{
  result = qword_27FF2F628;
  if (!qword_27FF2F628)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF2F620, &qword_2629505A0);
    sub_2629201DC();
    sub_2628E060C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF2F628);
  }

  return result;
}

unint64_t sub_2629201DC()
{
  result = qword_27FF2F630;
  if (!qword_27FF2F630)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF2F638, &qword_2629505A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF2F630);
  }

  return result;
}

unint64_t sub_262920260()
{
  result = qword_27FF2F648;
  if (!qword_27FF2F648)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF2F610, &qword_262950590);
    sub_2629202EC();
    sub_26292039C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF2F648);
  }

  return result;
}

unint64_t sub_2629202EC()
{
  result = qword_27FF2F650;
  if (!qword_27FF2F650)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF2F608, &qword_262950588);
    sub_2628DFD0C(&qword_27FF2F658, &qword_27FF2F618, &qword_262950598, MEMORY[0x277D7EA70]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF2F650);
  }

  return result;
}

unint64_t sub_26292039C()
{
  result = qword_27FF2F660;
  if (!qword_27FF2F660)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF2F668, &qword_2629505B8);
    sub_2629201DC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF2F660);
  }

  return result;
}

unint64_t sub_262920428()
{
  result = qword_27FF2F670;
  if (!qword_27FF2F670)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF2F640, &qword_2629505B0);
    sub_262920150();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF2F670);
  }

  return result;
}

uint64_t sub_2629204B4(uint64_t result, uint64_t a2, uint64_t a3, char a4)
{
  if ((a4 & 1) == 0)
  {
  }

  return v4;
}

uint64_t sub_2629204C0(uint64_t result, uint64_t a2, uint64_t a3, char a4)
{
  if ((a4 & 1) == 0)
  {
  }

  return v4;
}

void sub_2629204CC(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v4 = a3 >> 61;
  if ((a3 >> 61) <= 1)
  {
    if (v4 > 1)
    {
      return;
    }
  }

  else if (v4 != 2 && v4 != 3)
  {
    if (v4 == 4)
    {
    }

    return;
  }
}

uint64_t sub_262920550(uint64_t result, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return v2;
}

uint64_t sub_26292055C(uint64_t result, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return v2;
}

double sub_262920568(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v4 = a3 >> 61;
  if ((a3 >> 61) <= 1)
  {
    if (v4 > 1)
    {
      return result;
    }
  }

  else if (v4 != 2 && v4 != 3)
  {
    if (v4 == 4)
    {
    }

    return result;
  }

  return result;
}

uint64_t sub_2629205EC(double a1)
{
  v1 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
  v2 = [objc_allocWithZone(MEMORY[0x277CCABB8]) init];
  [v2 setNumberStyle_];
  [v2 setMinimumFractionDigits_];
  [v2 setMaximumFractionDigits_];
  v3 = [v2 stringFromNumber_];

  if (v3)
  {
    v4 = sub_26294DD68();
  }

  else
  {

    return 0;
  }

  return v4;
}

double SEStorageManagementViewModel.PrimaryCategory.iconView.getter@<D0>(uint64_t *a1@<X8>)
{
  v31 = a1;
  v1 = sub_26294C7F8();
  v29 = *(v1 - 8);
  v30 = v1;
  MEMORY[0x28223BE20](v1);
  v3 = &v27 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_26294C7A8();
  v28 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_26294CD78();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_26294C828();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26294C848();
  v15 = (*(v12 + 88))(v14, v11);
  if (v15 != *MEMORY[0x277D48EA0])
  {
    if (v15 == *MEMORY[0x277D48E98])
    {
      (*(v12 + 96))(v14, v11);
      v16 = v28;
      (*(v28 + 32))(v6, v14, v4);
      sub_26294C758();
      v17 = sub_26294C7D8();
      v19 = v18;
      (*(v29 + 8))(v3, v30);
      (*(v16 + 8))(v6, v4);
      KeyPath = swift_getKeyPath();
      v33 = 0;
      *&v34 = v17;
      *(&v34 + 1) = v19;
    }

    else
    {
      if (v15 != *MEMORY[0x277D48EC0])
      {
        if (v15 == *MEMORY[0x277D48EA8])
        {
          KeyPath = swift_getKeyPath();
          v33 = 0;
          v34 = xmmword_2629505C0;
          v35 = 0;
          goto LABEL_9;
        }

        if (v15 == *MEMORY[0x277D48EB8])
        {
          v25 = 0x800000026295E9A0;
          KeyPath = swift_getKeyPath();
          v33 = 0;
          v26 = 0xD000000000000022;
        }

        else
        {
          if (v15 == *MEMORY[0x277D48EC8])
          {
            KeyPath = swift_getKeyPath();
            v33 = 0;
            *&v34 = 0xD00000000000001ALL;
            *(&v34 + 1) = 0x800000026295E980;
            v20 = 0x2000000000000000;
            goto LABEL_8;
          }

          if (v15 != *MEMORY[0x277D48EB0])
          {
            KeyPath = swift_getKeyPath();
            v33 = 0;
            v34 = xmmword_2629505C0;
            v35 = 0;
            (*(v12 + 8))(v14, v11);
            goto LABEL_9;
          }

          v25 = 0x800000026295E9D0;
          KeyPath = swift_getKeyPath();
          v33 = 0;
          v26 = 0xD00000000000001FLL;
        }

        *&v34 = v26;
        *(&v34 + 1) = v25;
        v20 = 0x6000000000000000;
LABEL_8:
        v35 = v20;
        goto LABEL_9;
      }

      KeyPath = swift_getKeyPath();
      v33 = 0;
      *&v34 = 0xD000000000000012;
      *(&v34 + 1) = 0x800000026295E9F0;
    }

    v20 = 0x4000000000000000;
    goto LABEL_8;
  }

  (*(v12 + 96))(v14, v11);
  (*(v8 + 32))(v10, v14, v7);
  SEStorageManagementViewModel.WalletUsageCategory.iconView.getter(&KeyPath);
  (*(v8 + 8))(v10, v7);
LABEL_9:
  v21 = v31;
  v22 = v33;
  v23 = v35;
  *v31 = KeyPath;
  *(v21 + 8) = v22;
  result = *&v34;
  *(v21 + 1) = v34;
  v21[4] = v23;
  return result;
}

uint64_t SEStorageManagementViewModel.WalletUsageCategory.iconView.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_26294DB58();
  v34 = *(v2 - 8);
  v35 = v2;
  v3 = MEMORY[0x28223BE20](v2);
  v33 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v6 = &v32 - v5;
  v7 = sub_26294DC58();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v32 - v12;
  v14 = sub_26294CCE8();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v32 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26294CD08();
  v18 = (*(v15 + 88))(v17, v14);
  if (v18 != *MEMORY[0x277D48FF0])
  {
    if (v18 == *MEMORY[0x277D49000])
    {
      v27 = 0;
      v25 = 0xEB00000000647261;
      v26 = 0x63647261796E616CLL;
      goto LABEL_47;
    }

    v25 = 0xEE00656C676E6174;
    v26 = 0x6365722E6B636F6CLL;
    if (v18 != *MEMORY[0x277D48FF8])
    {
      (*(v15 + 8))(v17, v14);
    }

    goto LABEL_46;
  }

  (*(v15 + 96))(v17, v14);
  (*(v8 + 32))(v13, v17, v7);
  (*(v8 + 16))(v11, v13, v7);
  if ((*(v8 + 88))(v11, v7) != *MEMORY[0x277D49240])
  {
    v25 = 0xEE00656C676E6174;
    v26 = 0x6365722E6B636F6CLL;
    v28 = *(v8 + 8);
    v28(v11, v7);
    v28(v13, v7);
    goto LABEL_46;
  }

  (*(v8 + 96))(v11, v7);
  v19 = v34;
  v20 = v6;
  v21 = v11;
  v22 = v35;
  (*(v34 + 32))(v6, v21, v35);
  v23 = v33;
  (*(v19 + 16))(v33, v6, v22);
  v24 = (*(v19 + 88))(v23, v22);
  if (v24 != *MEMORY[0x277D490C0])
  {
    if (v24 != *MEMORY[0x277D490A8] && v24 != *MEMORY[0x277D49128] && v24 != *MEMORY[0x277D490D0])
    {
      if (v24 == *MEMORY[0x277D490B0])
      {
        v25 = 0x800000026295EAD0;
        (*(v19 + 8))(v6, v22);
        (*(v8 + 8))(v13, v7);
        v26 = 0xD000000000000014;
        v27 = 0x2000000000000000;
        goto LABEL_47;
      }

      if (v24 == *MEMORY[0x277D490D8])
      {
        v29 = "Applet_Type_Discover.tiff";
LABEL_17:
        v25 = (v29 - 32) | 0x8000000000000000;
        (*(v19 + 8))(v6, v22);
        (*(v8 + 8))(v13, v7);
        v26 = 0xD000000000000019;
        v27 = 0x2000000000000000;
        goto LABEL_47;
      }

      if (v24 == *MEMORY[0x277D490B8])
      {
        v26 = 0xD000000000000015;
        v30 = "Applet_Type_Amex.tiff";
LABEL_22:
        v25 = (v30 - 32) | 0x8000000000000000;
        (*(v19 + 8))(v20, v22);
        (*(v8 + 8))(v13, v7);
        v27 = 0x2000000000000000;
        goto LABEL_47;
      }

      if (v24 == *MEMORY[0x277D490E0])
      {
        v26 = 0xD000000000000015;
        v30 = "Applet_Type_Visa.tiff";
        goto LABEL_22;
      }

      if (v24 == *MEMORY[0x277D49118])
      {
        v29 = "Applet_Type_UnionPay.tiff";
        goto LABEL_17;
      }

      if (v24 != *MEMORY[0x277D49088] && v24 != *MEMORY[0x277D49080] && v24 != *MEMORY[0x277D49098] && v24 != *MEMORY[0x277D49090] && v24 != *MEMORY[0x277D490F0])
      {
        if (v24 == *MEMORY[0x277D49100])
        {
          v25 = 0x800000026295EA30;
          (*(v19 + 8))(v6, v22);
          (*(v8 + 8))(v13, v7);
          v26 = 0xD000000000000017;
          v27 = 0x2000000000000000;
          goto LABEL_47;
        }

        if (v24 == *MEMORY[0x277D49120])
        {
          v25 = 0x800000026295EA10;
          (*(v19 + 8))(v6, v22);
          (*(v8 + 8))(v13, v7);
          v26 = 0xD000000000000016;
          v27 = 0x2000000000000000;
          goto LABEL_47;
        }

        if (v24 != *MEMORY[0x277D49138] && v24 != *MEMORY[0x277D490C8] && v24 != *MEMORY[0x277D490E8] && v24 != *MEMORY[0x277D490F8] && v24 != *MEMORY[0x277D49108] && v24 != *MEMORY[0x277D49130] && v24 != *MEMORY[0x277D49140] && v24 != *MEMORY[0x277D490A0] && v24 != *MEMORY[0x277D49110] && v24 != *MEMORY[0x277D49148])
        {
          (*(v19 + 8))(v23, v22);
        }
      }
    }

    v25 = 0xEE00656C676E6174;
    v26 = 0x6365722E6B636F6CLL;
    (*(v19 + 8))(v20, v22);
    (*(v8 + 8))(v13, v7);
LABEL_46:
    v27 = 0;
    goto LABEL_47;
  }

  v25 = 0x800000026295EAF0;
  (*(v19 + 8))(v6, v22);
  (*(v8 + 8))(v13, v7);
  v26 = 0xD00000000000001BLL;
  v27 = 0x2000000000000000;
LABEL_47:
  result = swift_getKeyPath();
  *a1 = result;
  *(a1 + 8) = 0;
  *(a1 + 16) = v26;
  *(a1 + 24) = v25;
  *(a1 + 32) = v27;
  return result;
}

uint64_t SEStorageManagementViewModel.ViennaUsageCategory.iconView.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_26294CC38();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26294CC58();
  v6 = (*(v3 + 88))(v5, v2);
  if (v6 == *MEMORY[0x277D48F98])
  {
    v7 = 0xEB00000000647261;
    v8 = 0x63647261796E616CLL;
  }

  else
  {
    if (v6 != *MEMORY[0x277D48FA0] && v6 != *MEMORY[0x277D48F90])
    {
      (*(v3 + 8))(v5, v2);
    }

    v7 = 0xEE00656C676E6174;
    v8 = 0x6365722E6B636F6CLL;
  }

  result = swift_getKeyPath();
  *a1 = result;
  *(a1 + 8) = 0;
  *(a1 + 16) = v8;
  *(a1 + 24) = v7;
  *(a1 + 32) = 0;
  return result;
}

uint64_t sub_262921698@<X0>(uint64_t (*a1)(uint64_t)@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_26294C7F8();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  a1(v6);
  v9 = sub_26294C7D8();
  v11 = v10;
  (*(v5 + 8))(v8, v4);
  result = swift_getKeyPath();
  *a2 = result;
  *(a2 + 8) = 0;
  *(a2 + 16) = v9;
  *(a2 + 24) = v11;
  *(a2 + 32) = 0x4000000000000000;
  return result;
}

uint64_t SEStorageManagementViewModel.ApplicationInfo.iconView.getter@<X0>(uint64_t a2@<X8>)
{
  v3 = sub_26294C7D8();
  v5 = v4;
  result = swift_getKeyPath();
  *a2 = result;
  *(a2 + 8) = 0;
  *(a2 + 16) = v3;
  *(a2 + 24) = v5;
  *(a2 + 32) = 0x4000000000000000;
  return result;
}

double SEStorageManagementViewModel.ESimProfile.iconView.getter@<D0>(uint64_t a1@<X8>)
{
  *a1 = swift_getKeyPath();
  *(a1 + 8) = 0;
  result = 6.47491813e170;
  *(a1 + 16) = xmmword_2629505C0;
  *(a1 + 32) = 0;
  return result;
}

void sub_2629218E0(uint64_t a1)
{
  v1 = a1;
  v18 = MEMORY[0x277D84F90];
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_26294DF28();
    sub_26292BDE4(0, &qword_27FF2F710, 0x277D75940);
    sub_26292BD7C();
    sub_26294DE58();
    v1 = v13;
    v2 = v14;
    v3 = v15;
    v4 = v16;
    v5 = v17;
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

  while (v1 < 0)
  {
    if (!sub_26294DF38() || (sub_26292BDE4(0, &qword_27FF2F710, 0x277D75940), swift_dynamicCast(), (v11 = v12) == 0))
    {
LABEL_21:
      sub_262906CD8(v1);
      return;
    }

LABEL_16:
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      MEMORY[0x26672D3D0]();
      if (*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_26294DDD8();
      }

      sub_26294DDF8();
    }

    else
    {
    }
  }

  v9 = v4;
  v10 = v5;
  if (v5)
  {
LABEL_12:
    v5 = (v10 - 1) & v10;
    v11 = *(*(v1 + 48) + ((v4 << 9) | (8 * __clz(__rbit64(v10)))));
    if (!v11)
    {
      goto LABEL_21;
    }

    goto LABEL_16;
  }

  while (1)
  {
    v4 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v4 >= ((v3 + 64) >> 6))
    {
      goto LABEL_21;
    }

    v10 = *(v2 + 8 * v4);
    ++v9;
    if (v10)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
}

uint64_t SEStorageView.init(controller:)@<X0>(uint64_t a2@<X8>)
{
  v3 = sub_26294D168();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v16[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v5);
  v9 = &v16[-v8];
  v16[15] = 1;
  sub_26294D928();
  v10 = v17;
  *a2 = v16[16];
  *(a2 + 8) = v10;
  v11 = type metadata accessor for SEStorageView(0);
  sub_26294D158();
  (*(v4 + 16))(v7, v9, v3);
  sub_26294D928();
  (*(v4 + 8))(v9, v3);
  v12 = a2 + *(v11 + 28);
  strcpy(v12, "Dynamic SE UI");
  *(v12 + 14) = -4864;
  v13 = (a2 + *(v11 + 24));
  type metadata accessor for SEStorageManagementController(0);
  sub_26292C214(&qword_27FF2E800, type metadata accessor for SEStorageManagementController, &protocol conformance descriptor for SEStorageManagementController);
  result = sub_26294D178();
  *v13 = result;
  v13[1] = v15;
  return result;
}

uint64_t type metadata accessor for SEStorageView(uint64_t a1)
{
  result = qword_27FF2F688;
  if (!qword_27FF2F688)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t SEStorageView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for SEStorageView(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  sub_262921EB8(a1);
  sub_26292C8C4(v1, &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for SEStorageView);
  v6 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v7 = swift_allocObject();
  sub_2629226C4(&v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F680, &qword_262950610);
  v9 = (a1 + *(result + 36));
  *v9 = sub_262922728;
  v9[1] = v7;
  v9[2] = 0;
  v9[3] = 0;
  return result;
}

uint64_t sub_262921EB8@<X0>(uint64_t a1@<X8>)
{
  v22 = a1;
  v2 = type metadata accessor for SEStorageView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v29 = sub_26294D3C8();
  v30 = 0;
  v31 = 1;
  v5 = *(v1 + 8);
  v27 = *v1;
  v28 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F728, &qword_262950708);
  sub_26294D958();
  v20[1] = v24;
  v20[2] = v23;
  v21 = v25;
  sub_26292C8C4(v1, v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for SEStorageView);
  v6 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v7 = swift_allocObject();
  sub_2629226C4(v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6);
  sub_26292C8C4(v1, v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for SEStorageView);
  v8 = swift_allocObject();
  sub_2629226C4(v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v8 + v6);
  v20[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F6B0, &qword_262950680);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F6B8, &qword_262950688);
  sub_2628DFD0C(&qword_27FF2F6C0, &qword_27FF2F6B0, &qword_262950680, MEMORY[0x277CE1198]);
  v9 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF2F6C8, &qword_262950690);
  v10 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF2F6D0, &qword_262950698);
  v11 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF2F6D8, &qword_2629506A0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF2F6E0, &qword_2629506A8);
  v13 = sub_2628DFD0C(&qword_27FF2F6E8, &qword_27FF2F6D8, &qword_2629506A0, MEMORY[0x277CDDA18]);
  v14 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF2F6F0, &qword_2629506B0);
  v15 = sub_26292BC88();
  v23 = v14;
  v24 = v15;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v23 = v11;
  v24 = v12;
  v25 = v13;
  v26 = OpaqueTypeConformance2;
  v17 = swift_getOpaqueTypeConformance2();
  v23 = v10;
  v24 = v17;
  v18 = swift_getOpaqueTypeConformance2();
  v23 = v9;
  v24 = v18;
  swift_getOpaqueTypeConformance2();
  sub_26294D7E8();
}

uint64_t sub_262922274(uint64_t a1)
{
  v42 = sub_26294DD18();
  v2 = *(v42 - 8);
  v3 = MEMORY[0x28223BE20](v42);
  v5 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v32 - v6;
  v8 = [objc_opt_self() sharedApplication];
  v9 = [v8 connectedScenes];

  sub_26292BDE4(0, &qword_27FF2F710, 0x277D75940);
  sub_26292BD7C();
  v10 = sub_26294DE38();

  sub_2629218E0(v10);
  v12 = v11;

  v13 = v12;
  if (v12 >> 62)
  {
    goto LABEL_28;
  }

  for (i = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10); i; v13 = v30)
  {
    v15 = 0;
    v37 = v13 & 0xC000000000000001;
    v33 = v13 & 0xFFFFFFFFFFFFFF8;
    v34 = a1 + 8;
    v35 = v13;
    v32 = v13 + 32;
    v41 = *MEMORY[0x277D49310];
    v40 = (v2 + 104);
    v16 = (v2 + 8);
    v36 = i;
    while (v37)
    {
      v13 = MEMORY[0x26672D5B0](v15, v35);
      v17 = __OFADD__(v15, 1);
      v18 = v15 + 1;
      if (v17)
      {
        goto LABEL_25;
      }

LABEL_11:
      v38 = v13;
      v19 = [v13 windows];
      sub_26292BDE4(0, &qword_27FF2F720, 0x277D75DA0);
      v20 = sub_26294DDB8();

      v39 = v18;
      if (v20 >> 62)
      {
        v21 = sub_26294E008();
        if (!v21)
        {
          goto LABEL_4;
        }
      }

      else
      {
        v21 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v21)
        {
          goto LABEL_4;
        }
      }

      v13 = type metadata accessor for SEStorageView(0);
      if (v21 < 1)
      {
        goto LABEL_26;
      }

      v22 = 0;
      v23 = *(v34 + *(v13 + 24));
      v43 = v20 & 0xC000000000000001;
      v44 = v23;
      v24 = v20;
      do
      {
        if (v43)
        {
          v25 = MEMORY[0x26672D5B0](v22, v20);
        }

        else
        {
          v25 = *(v20 + 8 * v22 + 32);
        }

        v26 = v25;
        ++v22;
        swift_getKeyPath();
        swift_getKeyPath();
        v27 = v26;
        sub_26294CFF8();

        v28 = v42;
        (*v40)(v5, v41, v42);
        a1 = sub_26294DD08();
        v2 = *v16;
        (*v16)(v5, v28);
        v2(v7, v28);
        if (a1)
        {
          v29 = 2;
        }

        else
        {
          v29 = 0;
        }

        [v27 setOverrideUserInterfaceStyle_];

        v20 = v24;
      }

      while (v21 != v22);
LABEL_4:

      v15 = v39;
      if (v39 == v36)
      {
      }
    }

    if (v15 >= *(v33 + 16))
    {
      goto LABEL_27;
    }

    v13 = *(v32 + 8 * v15);
    v17 = __OFADD__(v15, 1);
    v18 = v15 + 1;
    if (!v17)
    {
      goto LABEL_11;
    }

LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    v30 = v13;
    i = sub_26294E008();
  }
}

uint64_t sub_2629226C4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SEStorageView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_26292275C(uint64_t a1)
{
  v2 = type metadata accessor for SEStorageView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  sub_26292C8C4(a1, &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for SEStorageView);
  v5 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v6 = swift_allocObject();
  sub_2629226C4(&v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v6 + v5);
  sub_2628EAC30(sub_26292E2B0, v6);
}

uint64_t sub_262922880@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v32 = a1;
  v39 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2E7D8, &unk_26294EB50);
  MEMORY[0x28223BE20](v3 - 8);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F6D8, &qword_2629506A0);
  v5 = *(v4 - 8);
  v33 = v4;
  v34 = v5;
  MEMORY[0x28223BE20](v4);
  v7 = &v32 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F6D0, &qword_262950698);
  v9 = *(v8 - 8);
  v35 = v8;
  v36 = v9;
  MEMORY[0x28223BE20](v8);
  v11 = &v32 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F6C8, &qword_262950690);
  v13 = *(v12 - 8);
  v37 = v12;
  v38 = v13;
  MEMORY[0x28223BE20](v12);
  v15 = &v32 - v14;
  type metadata accessor for SEStorageView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F678, &qword_262950608);
  sub_26294D958();
  v41 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F730, &qword_262950710);
  v16 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF2F738, &qword_262950718);
  v17 = sub_26294C8A8();
  v18 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF2F740, &qword_262950720);
  v19 = sub_26292C0AC();
  v20 = sub_26292C214(&qword_27FF2EA90, MEMORY[0x277D48ED0], MEMORY[0x277D48EE0]);
  v21 = sub_26292C25C();
  v42 = v16;
  v43 = v17;
  v44 = v18;
  v45 = v19;
  v46 = v20;
  v47 = v21;
  swift_getOpaqueTypeConformance2();
  sub_26294D1C8();
  v40 = v32;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F6E0, &qword_2629506A8);
  v23 = sub_2628DFD0C(&qword_27FF2F6E8, &qword_27FF2F6D8, &qword_2629506A0, MEMORY[0x277CDDA18]);
  v24 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF2F6F0, &qword_2629506B0);
  v25 = sub_26292BC88();
  v42 = v24;
  v43 = v25;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v27 = v33;
  sub_26294D818();
  (*(v34 + 8))(v7, v27);
  v42 = v27;
  v43 = v22;
  v44 = v23;
  v45 = OpaqueTypeConformance2;
  v28 = swift_getOpaqueTypeConformance2();
  v29 = v35;
  sub_26294D7B8();
  (*(v36 + 8))(v11, v29);
  v42 = v29;
  v43 = v28;
  swift_getOpaqueTypeConformance2();
  v30 = v37;
  sub_26294D758();
  return (*(v38 + 8))(v15, v30);
}

uint64_t sub_262922D58(uint64_t a1)
{
  v2 = type metadata accessor for SEStorageView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F738, &qword_262950718);
  MEMORY[0x28223BE20](v5);
  v7 = &v17[-v6];
  if (sub_26294DAD8())
  {
    v8 = sub_26294D3D8();
  }

  else
  {
    v8 = sub_26294D3C8();
  }

  *v7 = v8;
  *(v7 + 1) = 0;
  v7[16] = 1;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F830, &qword_262950790);
  sub_262925914(a1, &v7[*(v9 + 44)]);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_26294CFF8();

  v10 = v17[15];
  KeyPath = swift_getKeyPath();
  v12 = swift_allocObject();
  *(v12 + 16) = v10;
  v13 = &v7[*(v5 + 36)];
  *v13 = KeyPath;
  v13[1] = sub_262913BC8;
  v13[2] = v12;
  sub_26294C8A8();
  sub_26292C8C4(a1, &v17[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)], type metadata accessor for SEStorageView);
  v14 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v15 = swift_allocObject();
  sub_2629226C4(&v17[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)], v15 + v14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F740, &qword_262950720);
  sub_26292C0AC();
  sub_26292C214(&qword_27FF2EA90, MEMORY[0x277D48ED0], MEMORY[0x277D48EE0]);
  sub_26292C25C();
  sub_26294D778();

  return sub_2628DF6F0(v7, &qword_27FF2F738, &qword_262950718);
}

uint64_t sub_262923068@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v152 = a2;
  v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F838, &qword_262950810);
  MEMORY[0x28223BE20](v128);
  v130 = &v109 - v3;
  v135 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F800, &qword_262950768);
  MEMORY[0x28223BE20](v135);
  v131 = &v109 - v4;
  v129 = type metadata accessor for ViennaAppCategoryView(0);
  MEMORY[0x28223BE20](v129);
  v126 = &v109 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v127 = sub_26294C7A8();
  v125 = *(v127 - 8);
  MEMORY[0x28223BE20](v127);
  v124 = &v109 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v115 = type metadata accessor for ESimView(0);
  MEMORY[0x28223BE20](v115);
  v110 = &v109 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F840, &qword_262950818);
  MEMORY[0x28223BE20](v132);
  v134 = &v109 - v8;
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F848, &qword_262950820);
  MEMORY[0x28223BE20](v112);
  v114 = &v109 - v9;
  v133 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F7E8, &qword_262950760);
  MEMORY[0x28223BE20](v133);
  v116 = &v109 - v10;
  v155 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F7D8, &qword_262950758);
  MEMORY[0x28223BE20](v155);
  v136 = &v109 - v11;
  v113 = type metadata accessor for MuirfieldView(0);
  MEMORY[0x28223BE20](v113);
  v111 = &v109 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v122 = type metadata accessor for ViennaView(0);
  MEMORY[0x28223BE20](v122);
  v117 = &v109 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F850, &qword_262950828);
  MEMORY[0x28223BE20](v119);
  v121 = &v109 - v14;
  v146 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F7B8, &qword_262950750);
  MEMORY[0x28223BE20](v146);
  v123 = &v109 - v15;
  v120 = type metadata accessor for RecommendedForDeleteView(0);
  MEMORY[0x28223BE20](v120);
  v118 = &v109 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_26294DAC8();
  v139 = *(v17 - 8);
  v18 = MEMORY[0x28223BE20](v17);
  v138 = &v109 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v137 = &v109 - v20;
  v21 = type metadata accessor for PassbookCategoryView(0);
  MEMORY[0x28223BE20](v21);
  v23 = &v109 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v149 = sub_26294CD78();
  v140 = *(v149 - 8);
  MEMORY[0x28223BE20](v149);
  v148 = &v109 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v153 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F858, &qword_262950830);
  MEMORY[0x28223BE20](v153);
  v154 = &v109 - v25;
  v142 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F860, &qword_262950838);
  MEMORY[0x28223BE20](v142);
  v144 = &v109 - v26;
  v141 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F868, &qword_262950840);
  MEMORY[0x28223BE20](v141);
  v28 = &v109 - v27;
  v143 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F7A0, &qword_262950748);
  MEMORY[0x28223BE20](v143);
  v30 = &v109 - v29;
  v151 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F790, &qword_262950740);
  MEMORY[0x28223BE20](v151);
  v145 = &v109 - v31;
  v147 = type metadata accessor for PassbookView(0);
  MEMORY[0x28223BE20](v147);
  v33 = &v109 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_26294C828();
  v35 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v37 = &v109 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26294C848();
  v38 = (*(v35 + 88))(v37, v34);
  if (v38 == *MEMORY[0x277D48EA0])
  {
    (*(v35 + 96))(v37, v34);
    v39 = v140;
    v41 = v148;
    v40 = v149;
    (*(v140 + 32))(v148, v37, v149);
    (*(v39 + 16))(v23, v41, v40);
    v42 = *(v150 + *(type metadata accessor for SEStorageView(0) + 24) + 8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F678, &qword_262950608);
    sub_26294D958();
    v43 = &v23[v21[5]];
    type metadata accessor for SEStorageManagementController(0);
    sub_26292C214(&qword_27FF2E800, type metadata accessor for SEStorageManagementController, &protocol conformance descriptor for SEStorageManagementController);
    *v43 = sub_26294D178();
    v43[1] = v44;
    v23[v21[7]] = 0;
    v45 = v139;
    v46 = v137;
    (*(v139 + 104))(v137, *MEMORY[0x277CDF0D8], v17);
    (*(v45 + 16))(v138, v46, v17);
    sub_26294D928();
    (*(v45 + 8))(v46, v17);
    v47 = v21[9];
    *&v23[v47] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2E840, &qword_26294FEE0);
    swift_storeEnumTagMultiPayload();
    sub_26292C8C4(v23, v28, type metadata accessor for PassbookCategoryView);
    swift_storeEnumTagMultiPayload();
    sub_26292C214(&qword_27FF2F7A8, type metadata accessor for PassbookView, &unk_262950D5C);
    sub_26292C214(&qword_27FF2EFC8, type metadata accessor for PassbookCategoryView, &unk_262951808);
    sub_26294D3F8();
    sub_2628DF954(v30, v144, &qword_27FF2F7A0, &qword_262950748);
    swift_storeEnumTagMultiPayload();
    sub_26292C3F8();
    sub_26292C4E4();
    v48 = v145;
    sub_26294D3F8();
    sub_2628DF6F0(v30, &qword_27FF2F7A0, &qword_262950748);
    sub_2628DF954(v48, v154, &qword_27FF2F790, &qword_262950740);
    swift_storeEnumTagMultiPayload();
    sub_26292C36C();
    sub_26292C5D0();
    sub_26294D3F8();
    sub_2628DF6F0(v48, &qword_27FF2F790, &qword_262950740);
    sub_26292C92C(v23, type metadata accessor for PassbookCategoryView);
    return (*(v39 + 8))(v148, v149);
  }

  v50 = v147;
  v51 = v150;
  if (v38 == *MEMORY[0x277D48E98])
  {
    (*(v35 + 96))(v37, v34);
    v52 = v125;
    v53 = v124;
    v54 = v127;
    (*(v125 + 32))(v124, v37, v127);
    v55 = v126;
    (*(v52 + 16))(v126, v53, v54);
    v56 = type metadata accessor for SEStorageView(0);
    v57 = v129;
    v58 = *(v51 + *(v56 + 24) + 8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F678, &qword_262950608);
    sub_26294D958();
    v59 = (v55 + v57[5]);
    type metadata accessor for SEStorageManagementController(0);
    sub_26292C214(&qword_27FF2E800, type metadata accessor for SEStorageManagementController, &protocol conformance descriptor for SEStorageManagementController);
    *v59 = sub_26294D178();
    v59[1] = v60;
    *(v55 + v57[7]) = 0;
    v61 = v57[8];
    *(v55 + v61) = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2E840, &qword_26294FEE0);
    swift_storeEnumTagMultiPayload();
    sub_26292C8C4(v55, v130, type metadata accessor for ViennaAppCategoryView);
    swift_storeEnumTagMultiPayload();
    sub_26292C214(&qword_27FF2E850, type metadata accessor for ViennaAppCategoryView, &unk_26294FE18);
    v62 = v131;
    sub_26294D3F8();
    sub_2628DF954(v62, v134, &qword_27FF2F800, &qword_262950768);
    swift_storeEnumTagMultiPayload();
    sub_26292C65C();
    sub_26292C748();
    v63 = v136;
    sub_26294D3F8();
    sub_2628DF6F0(v62, &qword_27FF2F800, &qword_262950768);
    sub_2628DF954(v63, v154, &qword_27FF2F7D8, &qword_262950758);
    swift_storeEnumTagMultiPayload();
    sub_26292C36C();
    sub_26292C5D0();
    sub_26294D3F8();
    sub_2628DF6F0(v63, &qword_27FF2F7D8, &qword_262950758);
    sub_26292C92C(v55, type metadata accessor for ViennaAppCategoryView);
    return (*(v52 + 8))(v53, v54);
  }

  if (v38 == *MEMORY[0x277D48EC0])
  {
    v64 = sub_26294C8A8();
    (*(*(v64 - 8) + 16))(v33, a1, v64);
    v65 = *(v51 + *(type metadata accessor for SEStorageView(0) + 24) + 8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F678, &qword_262950608);
    sub_26294D958();
    v66 = &v33[*(v50 + 20)];
    type metadata accessor for SEStorageManagementController(0);
    sub_26292C214(&qword_27FF2E800, type metadata accessor for SEStorageManagementController, &protocol conformance descriptor for SEStorageManagementController);
    *v66 = sub_26294D178();
    v66[1] = v67;
    v68 = *(v50 + 28);
    *&v33[v68] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2E840, &qword_26294FEE0);
    swift_storeEnumTagMultiPayload();
    sub_26292C8C4(v33, v28, type metadata accessor for PassbookView);
    swift_storeEnumTagMultiPayload();
    sub_26292C214(&qword_27FF2F7A8, type metadata accessor for PassbookView, &unk_262950D5C);
    sub_26292C214(&qword_27FF2EFC8, type metadata accessor for PassbookCategoryView, &unk_262951808);
    sub_26294D3F8();
    sub_2628DF954(v30, v144, &qword_27FF2F7A0, &qword_262950748);
    swift_storeEnumTagMultiPayload();
    sub_26292C3F8();
    sub_26292C4E4();
    v69 = v145;
    sub_26294D3F8();
    sub_2628DF6F0(v30, &qword_27FF2F7A0, &qword_262950748);
    sub_2628DF954(v69, v154, &qword_27FF2F790, &qword_262950740);
    swift_storeEnumTagMultiPayload();
    sub_26292C36C();
    sub_26292C5D0();
    sub_26294D3F8();
    sub_2628DF6F0(v69, &qword_27FF2F790, &qword_262950740);
    v70 = type metadata accessor for PassbookView;
  }

  else
  {
    if (v38 == *MEMORY[0x277D48EA8])
    {
      v73 = sub_26294C8A8();
      v74 = v118;
      (*(*(v73 - 8) + 16))(v118, a1, v73);
      v75 = type metadata accessor for SEStorageView(0);
      v76 = v120;
      v77 = *(v51 + *(v75 + 24) + 8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F678, &qword_262950608);
      sub_26294D958();
      v78 = (v74 + *(v76 + 20));
      type metadata accessor for SEStorageManagementController(0);
      sub_26292C214(&qword_27FF2E800, type metadata accessor for SEStorageManagementController, &protocol conformance descriptor for SEStorageManagementController);
      *v78 = sub_26294D178();
      v78[1] = v79;
      v80 = *(v76 + 28);
      *(v74 + v80) = swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2E840, &qword_26294FEE0);
      swift_storeEnumTagMultiPayload();
      sub_26292C8C4(v74, v121, type metadata accessor for RecommendedForDeleteView);
      swift_storeEnumTagMultiPayload();
      sub_26292C214(&qword_27FF2F7C0, type metadata accessor for RecommendedForDeleteView, &unk_26294F63C);
      sub_26292C214(&qword_27FF2F7C8, type metadata accessor for ViennaView, &unk_26294E820);
      v81 = v123;
      sub_26294D3F8();
      sub_2628DF954(v81, v144, &qword_27FF2F7B8, &qword_262950750);
      swift_storeEnumTagMultiPayload();
      sub_26292C3F8();
      sub_26292C4E4();
      v82 = v145;
      sub_26294D3F8();
      sub_2628DF6F0(v81, &qword_27FF2F7B8, &qword_262950750);
      sub_2628DF954(v82, v154, &qword_27FF2F790, &qword_262950740);
      swift_storeEnumTagMultiPayload();
      sub_26292C36C();
      sub_26292C5D0();
      sub_26294D3F8();
      sub_2628DF6F0(v82, &qword_27FF2F790, &qword_262950740);
      v71 = type metadata accessor for RecommendedForDeleteView;
      v72 = v74;
      return sub_26292C92C(v72, v71);
    }

    v83 = v154;
    if (v38 == *MEMORY[0x277D48EB8])
    {
      v84 = sub_26294C8A8();
      v85 = v117;
      (*(*(v84 - 8) + 16))(v117, a1, v84);
      v86 = type metadata accessor for SEStorageView(0);
      v87 = v122;
      v88 = *(v51 + *(v86 + 24) + 8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F678, &qword_262950608);
      sub_26294D958();
      v89 = (v85 + *(v87 + 20));
      type metadata accessor for SEStorageManagementController(0);
      sub_26292C214(&qword_27FF2E800, type metadata accessor for SEStorageManagementController, &protocol conformance descriptor for SEStorageManagementController);
      *v89 = sub_26294D178();
      v89[1] = v90;
      v91 = *(v87 + 28);
      *(v85 + v91) = swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2E840, &qword_26294FEE0);
      swift_storeEnumTagMultiPayload();
      sub_26292C8C4(v85, v121, type metadata accessor for ViennaView);
      swift_storeEnumTagMultiPayload();
      sub_26292C214(&qword_27FF2F7C0, type metadata accessor for RecommendedForDeleteView, &unk_26294F63C);
      sub_26292C214(&qword_27FF2F7C8, type metadata accessor for ViennaView, &unk_26294E820);
      v92 = v123;
      sub_26294D3F8();
      sub_2628DF954(v92, v144, &qword_27FF2F7B8, &qword_262950750);
      swift_storeEnumTagMultiPayload();
      sub_26292C3F8();
      sub_26292C4E4();
      v93 = v145;
      sub_26294D3F8();
      sub_2628DF6F0(v92, &qword_27FF2F7B8, &qword_262950750);
      sub_2628DF954(v93, v83, &qword_27FF2F790, &qword_262950740);
      swift_storeEnumTagMultiPayload();
      sub_26292C36C();
      sub_26292C5D0();
      sub_26294D3F8();
      sub_2628DF6F0(v93, &qword_27FF2F790, &qword_262950740);
      v71 = type metadata accessor for ViennaView;
      v72 = v85;
      return sub_26292C92C(v72, v71);
    }

    if (v38 == *MEMORY[0x277D48EC8])
    {
      v94 = v154;
      v95 = sub_26294C8A8();
      v33 = v111;
      (*(*(v95 - 8) + 16))(v111, a1, v95);
      v96 = *(v51 + *(type metadata accessor for SEStorageView(0) + 24) + 8);
      v97 = v113;
      *&v33[*(v113 + 20)] = v96;
      v98 = *(v97 + 24);
      *&v33[v98] = swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2E840, &qword_26294FEE0);
      swift_storeEnumTagMultiPayload();
      sub_26292C8C4(v33, v114, type metadata accessor for MuirfieldView);
      swift_storeEnumTagMultiPayload();
      sub_26292C214(&qword_27FF2EFE8, type metadata accessor for MuirfieldView, &unk_2629512B4);
      sub_26292C214(&qword_27FF2F7F0, type metadata accessor for ESimView, &unk_26294F550);
      v99 = v96;
      v100 = v116;
      sub_26294D3F8();
      sub_2628DF954(v100, v134, &qword_27FF2F7E8, &qword_262950760);
      swift_storeEnumTagMultiPayload();
      sub_26292C65C();
      sub_26292C748();
      v101 = v136;
      sub_26294D3F8();
      sub_2628DF6F0(v100, &qword_27FF2F7E8, &qword_262950760);
      sub_2628DF954(v101, v94, &qword_27FF2F7D8, &qword_262950758);
      swift_storeEnumTagMultiPayload();
      sub_26292C36C();
      sub_26292C5D0();
      sub_26294D3F8();
      sub_2628DF6F0(v101, &qword_27FF2F7D8, &qword_262950758);
      v70 = type metadata accessor for MuirfieldView;
    }

    else
    {
      if (v38 != *MEMORY[0x277D48EB0])
      {
        swift_storeEnumTagMultiPayload();
        sub_26292C214(&qword_27FF2E850, type metadata accessor for ViennaAppCategoryView, &unk_26294FE18);
        v107 = v131;
        sub_26294D3F8();
        sub_2628DF954(v107, v134, &qword_27FF2F800, &qword_262950768);
        swift_storeEnumTagMultiPayload();
        sub_26292C65C();
        sub_26292C748();
        v108 = v136;
        sub_26294D3F8();
        sub_2628DF6F0(v107, &qword_27FF2F800, &qword_262950768);
        sub_2628DF954(v108, v154, &qword_27FF2F7D8, &qword_262950758);
        swift_storeEnumTagMultiPayload();
        sub_26292C36C();
        sub_26292C5D0();
        sub_26294D3F8();
        sub_2628DF6F0(v108, &qword_27FF2F7D8, &qword_262950758);
        return (*(v35 + 8))(v37, v34);
      }

      v102 = sub_26294C8A8();
      v33 = v110;
      (*(*(v102 - 8) + 16))(v110, a1, v102);
      v103 = *(v51 + *(type metadata accessor for SEStorageView(0) + 24) + 8);
      *&v33[*(v115 + 20)] = v103;
      sub_26292C8C4(v33, v114, type metadata accessor for ESimView);
      swift_storeEnumTagMultiPayload();
      sub_26292C214(&qword_27FF2EFE8, type metadata accessor for MuirfieldView, &unk_2629512B4);
      sub_26292C214(&qword_27FF2F7F0, type metadata accessor for ESimView, &unk_26294F550);
      v104 = v103;
      v105 = v116;
      sub_26294D3F8();
      sub_2628DF954(v105, v134, &qword_27FF2F7E8, &qword_262950760);
      swift_storeEnumTagMultiPayload();
      sub_26292C65C();
      sub_26292C748();
      v106 = v136;
      sub_26294D3F8();
      sub_2628DF6F0(v105, &qword_27FF2F7E8, &qword_262950760);
      sub_2628DF954(v106, v154, &qword_27FF2F7D8, &qword_262950758);
      swift_storeEnumTagMultiPayload();
      sub_26292C36C();
      sub_26292C5D0();
      sub_26294D3F8();
      sub_2628DF6F0(v106, &qword_27FF2F7D8, &qword_262950758);
      v70 = type metadata accessor for ESimView;
    }
  }

  v71 = v70;
  v72 = v33;
  return sub_26292C92C(v72, v71);
}

uint64_t sub_26292500C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v29 = a1;
  v30 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F808, &qword_262950770);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v28 = v26 - v4;
  v5 = sub_26294D448();
  MEMORY[0x28223BE20](v5 - 8);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F700, &qword_2629506B8);
  v27 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = v26 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F6F0, &qword_2629506B0);
  v10 = MEMORY[0x28223BE20](v9);
  v12 = v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = v26 - v13;
  if (os_variant_has_internal_diagnostics() && (v15 = objc_opt_self(), type metadata accessor for SEStorageView(0), v16 = v9, v17 = sub_26294DD58(), LODWORD(v15) = [v15 isAllowedForClient_], v17, v9 = v16, v15))
  {
    v18 = sub_26294D438();
    v26[1] = v26;
    MEMORY[0x28223BE20](v18);
    v26[-2] = v29;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F810, &qword_262950778);
    sub_2628DFD0C(&qword_27FF2F818, &qword_27FF2F810, &qword_262950778, MEMORY[0x277CE14C0]);
    v9 = v16;
    sub_26294D1E8();
    v19 = sub_2628DFD0C(&qword_27FF2F708, &qword_27FF2F700, &qword_2629506B8, MEMORY[0x277CDDB60]);
    v20 = v28;
    MEMORY[0x26672CAA0](v8, v6, v19);
    (*(v3 + 16))(v12, v20, v2);
    (*(v3 + 56))(v12, 0, 1, v2);
    v31 = v6;
    v32 = v19;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    MEMORY[0x26672CAD0](v12, v2, OpaqueTypeConformance2);
    sub_2628DF6F0(v12, &qword_27FF2F6F0, &qword_2629506B0);
    (*(v3 + 8))(v20, v2);
    (*(v27 + 8))(v8, v6);
  }

  else
  {
    (*(v3 + 56))(v12, 1, 1, v2);
    v22 = sub_2628DFD0C(&qword_27FF2F708, &qword_27FF2F700, &qword_2629506B8, MEMORY[0x277CDDB60]);
    v31 = v6;
    v32 = v22;
    v23 = swift_getOpaqueTypeConformance2();
    MEMORY[0x26672CAD0](v12, v2, v23);
    sub_2628DF6F0(v12, &qword_27FF2F6F0, &qword_2629506B0);
  }

  v24 = sub_26292BC88();
  MEMORY[0x26672CAA0](v14, v9, v24);
  return sub_2628DF6F0(v14, &qword_27FF2F6F0, &qword_2629506B0);
}

uint64_t sub_26292551C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for SEStorageView(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F5B0, &qword_262950240);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v24 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F820, &qword_262950780);
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v24 - v15;
  v17 = sub_26294D048();
  (*(*(v17 - 8) + 56))(v9, 1, 1, v17);
  sub_26292C8C4(a1, &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for SEStorageView);
  v18 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v19 = swift_allocObject();
  sub_2629226C4(&v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v19 + v18);
  sub_26294D978();
  v20 = *(v11 + 16);
  v20(v14, v16, v10);
  *a2 = 0;
  *(a2 + 8) = 1;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F828, &qword_262950788);
  v20((a2 + *(v21 + 48)), v14, v10);
  v22 = *(v11 + 8);
  v22(v16, v10);
  return (v22)(v14, v10);
}

void sub_262925828(uint64_t a1)
{
  v1 = objc_opt_self();
  v2 = sub_26294DD58();
  type metadata accessor for SEStorageView(0);
  v3 = sub_26294DD58();
  [v1 requestTapToRadar:v2 client:v3 fullArchive:0];
}

uint64_t sub_2629258E0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_26294D8D8();
  *a1 = result;
  return result;
}

uint64_t sub_262925914@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v64 = a2;
  v58 = sub_26294D468();
  v60 = *(v58 - 8);
  MEMORY[0x28223BE20](v58);
  v56 = &v48 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F870, &qword_262950878);
  v5 = *(v4 - 8);
  v52 = v4;
  v53 = v5;
  MEMORY[0x28223BE20](v4);
  v50 = &v48 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F878, &qword_262950880);
  v8 = *(v7 - 8);
  v54 = v7;
  v55 = v8;
  MEMORY[0x28223BE20](v7);
  v49 = &v48 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F880, &qword_262950888);
  v11 = *(v10 - 8);
  v61 = v10;
  v62 = v11;
  MEMORY[0x28223BE20](v10);
  v51 = &v48 - v12;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F888, &qword_262950890);
  v59 = *(v63 - 8);
  v13 = MEMORY[0x28223BE20](v63);
  v57 = &v48 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v67 = &v48 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F890, &qword_262950898);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v68 = &v48 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v65 = &v48 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F898, &qword_2629508A0);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v66 = &v48 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v69 = &v48 - v23;
  sub_2629261AC((&v48 - v23));
  sub_2629267AC(&v81);
  v78 = v87;
  v79 = v88;
  v80[0] = v89[0];
  *(v80 + 9) = *(v89 + 9);
  v74 = v83;
  v75 = v84;
  v76 = v85;
  v77 = v86;
  v72 = v81;
  v73 = v82;
  sub_262926A9C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F8A0, &qword_2629508A8);
  sub_26292C98C();
  sub_26294D798();

  v90[6] = v78;
  v90[7] = v79;
  v91[0] = v80[0];
  *(v91 + 9) = *(v80 + 9);
  v90[2] = v74;
  v90[3] = v75;
  v90[4] = v76;
  v90[5] = v77;
  v90[0] = v72;
  v90[1] = v73;
  sub_2628DF6F0(v90, &qword_27FF2F8A0, &qword_2629508A8);
  v71 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F970, &qword_262950910);
  sub_2628DFD0C(&qword_27FF2F978, &qword_27FF2F970, &qword_262950910, MEMORY[0x277CE14C0]);
  v24 = v50;
  sub_26294D5E8();
  v25 = sub_2628DFD0C(&qword_27FF2F980, &qword_27FF2F870, &qword_262950878, MEMORY[0x277CDE5A0]);
  v26 = v49;
  v27 = v52;
  sub_26294D7A8();
  (*(v53 + 8))(v24, v27);
  v28 = v56;
  sub_26294D458();
  *&v81 = v27;
  *(&v81 + 1) = v25;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v30 = MEMORY[0x277CDE0D0];
  v31 = v51;
  v32 = v54;
  v33 = v58;
  sub_26294D828();
  (*(v60 + 8))(v28, v33);
  (*(v55 + 8))(v26, v32);
  v70 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F988, &qword_262950918);
  *&v81 = v32;
  *(&v81 + 1) = v33;
  *&v82 = OpaqueTypeConformance2;
  *(&v82 + 1) = v30;
  swift_getOpaqueTypeConformance2();
  v34 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF2F990, &qword_262950920);
  v35 = sub_26292D01C();
  *&v81 = v34;
  *(&v81 + 1) = v35;
  swift_getOpaqueTypeConformance2();
  v36 = v67;
  v37 = v61;
  sub_26294D818();
  (*(v62 + 8))(v31, v37);
  v38 = v66;
  sub_2628DF954(v69, v66, &qword_27FF2F898, &qword_2629508A0);
  v39 = v68;
  sub_2628DF954(v65, v68, &qword_27FF2F890, &qword_262950898);
  v40 = v59;
  v41 = *(v59 + 16);
  v42 = v57;
  v43 = v63;
  v41(v57, v36, v63);
  v44 = v64;
  sub_2628DF954(v38, v64, &qword_27FF2F898, &qword_2629508A0);
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F9C0, &qword_262950938);
  sub_2628DF954(v39, v44 + *(v45 + 48), &qword_27FF2F890, &qword_262950898);
  v41((v44 + *(v45 + 64)), v42, v43);
  v46 = *(v40 + 8);
  v46(v67, v43);
  sub_2628DF6F0(v65, &qword_27FF2F890, &qword_262950898);
  sub_2628DF6F0(v69, &qword_27FF2F898, &qword_2629508A0);
  v46(v42, v43);
  sub_2628DF6F0(v68, &qword_27FF2F890, &qword_262950898);
  return sub_2628DF6F0(v66, &qword_27FF2F898, &qword_2629508A0);
}

uint64_t sub_2629261AC@<X0>(void *a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2FAC8, &qword_262950AE0);
  MEMORY[0x28223BE20](v2);
  v4 = &v65 - v3;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2FAD0, &qword_262950AE8);
  MEMORY[0x28223BE20](v69);
  v6 = &v65 - v5;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2FAD8, &qword_262950AF0);
  MEMORY[0x28223BE20](v70);
  v8 = &v65 - v7;
  if (sub_26294DAD8())
  {
    sub_26292A218(&v77);
    v9 = v79;
    v10 = BYTE2(v79);
    v68 = v77;
    v67 = v78;
    v11 = sub_26294D5A8();
    KeyPath = swift_getKeyPath();
    v76 = v10;
    v13 = swift_getKeyPath();
    v72 = v67;
    v71 = v68;
    LOWORD(v73) = v9;
    BYTE2(v73) = v76;
    *(&v73 + 1) = KeyPath;
    *&v74 = v11;
    *(&v74 + 1) = v13;
    v75 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2FB68, &unk_262950B70);
    sub_26292DEE4();
    sub_26294D7D8();
    v79 = v73;
    v80 = v74;
    v81 = v75;
    v77 = v71;
    v78 = v72;
    sub_2628DF6F0(&v77, &qword_27FF2FB68, &unk_262950B70);
    sub_26294DAE8();
    sub_26294D0D8();
    v14 = &v8[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2FB60, &qword_262950B68) + 36)];
    v15 = v72;
    *v14 = v71;
    *(v14 + 1) = v15;
    *(v14 + 2) = v73;
    LOBYTE(v11) = sub_26294D538();
    sub_26294D058();
    v17 = v16;
    v19 = v18;
    v21 = v20;
    v23 = v22;
    v24 = &v8[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2FB50, &qword_262950B60) + 36)];
    *v24 = v11;
    *(v24 + 1) = v17;
    *(v24 + 2) = v19;
    *(v24 + 3) = v21;
    *(v24 + 4) = v23;
    v24[40] = 0;
    LOBYTE(v11) = sub_26294D518();
    sub_26294D058();
    v26 = v25;
    v28 = v27;
    v30 = v29;
    v32 = v31;
    v33 = &v8[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2FB40, &qword_262950B58) + 36)];
    *v33 = v11;
    *(v33 + 1) = v26;
    *(v33 + 2) = v28;
    *(v33 + 3) = v30;
    *(v33 + 4) = v32;
    v33[40] = 0;
    LOBYTE(v11) = sub_26294D548();
    sub_26294D058();
    v34 = &v8[*(v70 + 36)];
    *v34 = v11;
    *(v34 + 1) = v35;
    *(v34 + 2) = v36;
    *(v34 + 3) = v37;
    *(v34 + 4) = v38;
    v34[40] = 0;
    sub_2628DF954(v8, v6, &qword_27FF2FAD8, &qword_262950AF0);
    swift_storeEnumTagMultiPayload();
    sub_26292DC78();
    sub_26292DF9C();
    sub_26294D3F8();
    v39 = v8;
    v40 = &qword_27FF2FAD8;
    v41 = &qword_262950AF0;
  }

  else
  {
    sub_26292A218(&v77);
    v42 = v77;
    v43 = v78;
    v65 = *(&v78 + 1);
    *&v67 = v6;
    v44 = BYTE2(v79);
    v45 = v79;
    v46 = sub_26294D588();
    v66 = v2;
    v47 = v46;
    v48 = swift_getKeyPath();
    *&v68 = a1;
    LOBYTE(v71) = v44;
    v77 = v42;
    v78 = v43;
    LOWORD(v79) = v45;
    BYTE2(v79) = v44;
    *(&v79 + 1) = v48;
    *&v80 = v47;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2FAE0, &qword_262950B28);
    sub_26292D9C4();
    sub_26294D7D8();
    sub_26292DB94(v42, *(&v42 + 1), v43, v65, v45, v44);

    sub_26294DAE8();
    sub_26294D0D8();
    v49 = v4;
    v50 = &v4[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2FB20, &qword_262950B48) + 36)];
    v51 = v78;
    *v50 = v77;
    *(v50 + 1) = v51;
    *(v50 + 2) = v79;
    v52 = sub_26294D548();
    sub_26294D058();
    v54 = v53;
    v56 = v55;
    v58 = v57;
    v60 = v59;
    v61 = v49 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2FB28, &qword_262950B50) + 36);
    *v61 = v52;
    *(v61 + 8) = v54;
    *(v61 + 16) = v56;
    *(v61 + 24) = v58;
    *(v61 + 32) = v60;
    *(v61 + 40) = 0;
    v62 = sub_26294D518();
    v63 = v49 + *(v66 + 36);
    *v63 = v62;
    *(v63 + 8) = 0u;
    *(v63 + 24) = 0u;
    *(v63 + 40) = 1;
    sub_2628DF954(v49, v67, &qword_27FF2FAC8, &qword_262950AE0);
    swift_storeEnumTagMultiPayload();
    sub_26292DC78();
    sub_26292DF9C();
    sub_26294D3F8();
    v39 = v49;
    v40 = &qword_27FF2FAC8;
    v41 = &qword_262950AE0;
  }

  return sub_2628DF6F0(v39, v40, v41);
}

double sub_2629267AC@<D0>(_OWORD *a2@<X8>)
{
  if (sub_26294DAD8())
  {
    sub_26292A7B4(&v53);
    v3 = v55;
    v4 = BYTE2(v55);
    v5 = BYTE3(v55);
    v27 = v54;
    v29 = v53;
    v6 = sub_26294D4C8();
    KeyPath = swift_getKeyPath();
    v33 = v5;
    v8 = sub_26294D518();
    sub_26294D058();
    v10 = v9;
    v12 = v11;
    v14 = v13;
    v16 = v15;
    LOBYTE(v53) = 0;
    sub_26294DAE8();
    sub_26294D0D8();
    *&v31[7] = v50;
    *&v31[23] = v51;
    *&v31[39] = v52;
    v35 = v29;
    v36 = v27;
    v38 = v4;
    v37 = v3;
    v39 = v33;
    v40 = v6;
    v41 = KeyPath;
    v42 = 0;
    v43 = v8;
    *&v44 = v10;
    *(&v44 + 1) = v12;
    *&v45 = v14;
    *(&v45 + 1) = v16;
    v46 = 0;
    *&v49[15] = *(&v52 + 1);
    *v49 = *&v31[32];
    v48 = *&v31[16];
    v47 = *v31;
    sub_26292D95C(&v35);
  }

  else
  {
    sub_26292A7B4(&v53);
    v17 = v55;
    v18 = BYTE2(v55);
    v19 = BYTE3(v55);
    v28 = v54;
    v30 = v53;
    v20 = swift_getKeyPath();
    v34 = v19;
    v21 = sub_26294D518();
    LOBYTE(v53) = 1;
    sub_26294DAE8();
    sub_26294D0D8();
    *&v32[39] = v52;
    *&v32[23] = v51;
    *&v32[7] = v50;
    v35 = v30;
    v36 = v28;
    v38 = v18;
    v37 = v17;
    v39 = v34;
    v41 = v20;
    v42 = 1;
    v43 = v21;
    v44 = 0u;
    v45 = 0u;
    v46 = 1;
    *&v49[15] = *(&v52 + 1);
    *v49 = *&v32[32];
    v48 = *&v32[16];
    v47 = *v32;
    sub_26292D950(&v35);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F8B8, &qword_2629508B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F948, &qword_2629508F8);
  sub_26292CA18();
  sub_26292CE3C();
  sub_26294D3F8();
  v22 = v60;
  a2[6] = v59;
  a2[7] = v22;
  a2[8] = v61[0];
  *(a2 + 137) = *(v61 + 9);
  v23 = v56;
  a2[2] = v55;
  a2[3] = v23;
  v24 = v58;
  a2[4] = v57;
  a2[5] = v24;
  result = *&v53;
  v26 = v54;
  *a2 = v53;
  a2[1] = v26;
  return result;
}

uint64_t sub_262926A9C()
{
  v0 = sub_26294C5F8();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v18 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_26294CDF8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for SEStorageView(0);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_26294CFF8();

  v8 = sub_26294CDE8();
  v9 = *(v5 + 8);
  v9(v7, v4);
  (*(v1 + 104))(v3, *MEMORY[0x277D48DF8], v0);
  if (v8)
  {
    v10 = sub_26294C5E8();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2E8B8, &qword_26294EC60);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_26294ECB0;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_26294CFF8();

    sub_26294CDD8();
    v13 = v12;
    v9(v7, v4);
    v14 = sub_2629205EC(v13);
    v16 = v15;
    *(v11 + 56) = MEMORY[0x277D837D0];
    *(v11 + 64) = sub_2628DF5B8();
    *(v11 + 32) = v14;
    *(v11 + 40) = v16;
    v10 = sub_26294C6B8();
  }

  (*(v1 + 8))(v3, v0);
  return v10;
}

uint64_t sub_262926DF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v86 = a2;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2FA18, &qword_2629509B8);
  v3 = MEMORY[0x28223BE20](v84);
  v87 = &v65 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v85 = &v65 - v5;
  v6 = sub_26294C8A8();
  v7 = *(v6 - 8);
  v79 = v6;
  v80 = v7;
  MEMORY[0x28223BE20](v6);
  v66 = &v65 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2E9A0, &qword_26294E9A8);
  MEMORY[0x28223BE20](v9 - 8);
  v75 = &v65 - v10;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2FA20, &qword_2629509C0);
  MEMORY[0x28223BE20](v81);
  v74 = &v65 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2FA28, &qword_2629509C8);
  v13 = MEMORY[0x28223BE20](v12 - 8);
  v83 = &v65 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v89 = &v65 - v15;
  v16 = sub_26294CDF8();
  v77 = *(v16 - 8);
  v78 = v16;
  MEMORY[0x28223BE20](v16);
  v18 = &v65 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_26294C5F8();
  v20 = *(v19 - 8);
  v21 = MEMORY[0x28223BE20](v19);
  v73 = &v65 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v65 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2FA30, &qword_2629509D0);
  v68 = v25;
  MEMORY[0x28223BE20](v25);
  v27 = &v65 - v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2FA38, &qword_2629509D8);
  v29 = MEMORY[0x28223BE20](v28 - 8);
  v82 = &v65 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v88 = &v65 - v31;
  v67 = a1;
  v90 = a1;
  sub_26292D3D4();
  sub_26294DA98();
  v76 = objc_opt_self();
  v32 = [v76 secondarySystemBackgroundColor];
  v91 = sub_26294D838();
  *&v27[*(v25 + 36)] = sub_26294D9D8();
  v72 = *MEMORY[0x277D48DF8];
  v71 = *(v20 + 104);
  (v71)(v24);
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2E8B8, &qword_26294EC60);
  v33 = swift_allocObject();
  v69 = xmmword_26294ECB0;
  *(v33 + 16) = xmmword_26294ECB0;
  type metadata accessor for SEStorageView(0);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_26294CFF8();

  sub_26294CDA8();
  v35 = v34;
  (*(v77 + 8))(v18, v78);
  v36 = sub_2629205EC(v35);
  v38 = v37;
  *(v33 + 56) = MEMORY[0x277D837D0];
  v39 = sub_2628DF5B8();
  *(v33 + 64) = v39;
  *(v33 + 32) = v36;
  *(v33 + 40) = v38;
  sub_26294C6B8();

  v40 = *(v20 + 8);
  v78 = v20 + 8;
  v40(v24, v19);
  sub_26292D428();
  v41 = v74;
  sub_26294D798();
  v42 = v67;

  sub_2628DF6F0(v27, &qword_27FF2FA30, &qword_2629509D0);
  sub_2629278C8(v41);
  v43 = v73;
  v77 = v19;
  v71();
  v44 = v75;
  v45 = swift_allocObject();
  *(v45 + 16) = v69;
  swift_getKeyPath();
  swift_getKeyPath();
  v46 = v79;
  sub_26294CFF8();

  v47 = v80;

  if ((*(v47 + 48))(v44, 1, v46))
  {
    sub_2628DF6F0(v44, &qword_27FF2E9A0, &qword_26294E9A8);
    v48 = 0.0;
  }

  else
  {
    v49 = v66;
    (*(v47 + 16))(v66, v44, v46);
    sub_2628DF6F0(v44, &qword_27FF2E9A0, &qword_26294E9A8);
    sub_26294C888();
    v51 = v50;
    (*(v47 + 8))(v49, v46);
    v48 = v51;
  }

  v52 = sub_2629205EC(v48);
  *(v45 + 56) = MEMORY[0x277D837D0];
  *(v45 + 64) = v39;
  *(v45 + 32) = v52;
  *(v45 + 40) = v53;
  sub_26294C6B8();

  v40(v43, v77);
  sub_26292D578();
  v54 = v89;
  sub_26294D798();

  v55 = sub_2628DF6F0(v41, &qword_27FF2FA20, &qword_2629509C0);
  MEMORY[0x28223BE20](v55);
  *(&v65 - 2) = v42;
  type metadata accessor for SEStorageListView(0);
  sub_26292C214(&qword_27FF2FA98, type metadata accessor for SEStorageListView, &unk_26294EB74);
  v56 = v85;
  sub_26294DA98();
  v57 = [v76 secondarySystemBackgroundColor];
  v91 = sub_26294D838();
  *(v56 + *(v84 + 36)) = sub_26294D9D8();
  v58 = v88;
  v59 = v82;
  sub_2628DF954(v88, v82, &qword_27FF2FA38, &qword_2629509D8);
  v60 = v83;
  sub_2628DF954(v54, v83, &qword_27FF2FA28, &qword_2629509C8);
  v61 = v87;
  sub_2628DF954(v56, v87, &qword_27FF2FA18, &qword_2629509B8);
  v62 = v86;
  sub_2628DF954(v59, v86, &qword_27FF2FA38, &qword_2629509D8);
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2FAA0, &qword_262950A48);
  sub_2628DF954(v60, v62 + *(v63 + 48), &qword_27FF2FA28, &qword_2629509C8);
  sub_2628DF954(v61, v62 + *(v63 + 64), &qword_27FF2FA18, &qword_2629509B8);
  sub_2628DF6F0(v56, &qword_27FF2FA18, &qword_2629509B8);
  sub_2628DF6F0(v89, &qword_27FF2FA28, &qword_2629509C8);
  sub_2628DF6F0(v58, &qword_27FF2FA38, &qword_2629509D8);
  sub_2628DF6F0(v61, &qword_27FF2FA18, &qword_2629509B8);
  sub_2628DF6F0(v60, &qword_27FF2FA28, &qword_2629509C8);
  return sub_2628DF6F0(v59, &qword_27FF2FA38, &qword_2629509D8);
}

uint64_t sub_2629278C8@<X0>(uint64_t a1@<X8>)
{
  v31 = a1;
  v1 = sub_26294C5F8();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2FA70, &qword_262950A30);
  v29 = *(v5 - 8);
  v30 = v5;
  MEMORY[0x28223BE20](v5);
  v28 = &v28 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2E9A0, &qword_26294E9A8);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v28 - v8;
  v10 = sub_26294C8A8();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for SEStorageView(0);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_26294CFF8();

  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_2628DF6F0(v9, &qword_27FF2E9A0, &qword_26294E9A8);
    return (*(v29 + 56))(v31, 1, 1, v30);
  }

  else
  {
    v15 = (*(v11 + 32))(v13, v9, v10);
    MEMORY[0x28223BE20](v15);
    *(&v28 - 2) = v13;
    (*(v2 + 104))(v4, *MEMORY[0x277D48E08], v1);
    v16 = sub_26294C5E8();
    v18 = v17;
    (*(v2 + 8))(v4, v1);
    v32 = v16;
    v33 = v18;
    sub_2628DF230();
    v32 = sub_26294D648();
    v33 = v19;
    v34 = v20 & 1;
    v35 = v21;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2FA90, &qword_262950A40);
    sub_2628DFD0C(&qword_27FF2FA88, &qword_27FF2FA90, &qword_262950A40, MEMORY[0x277CE14C0]);
    v22 = v28;
    sub_26294DA78();
    v23 = [objc_opt_self() secondarySystemBackgroundColor];
    v32 = sub_26294D838();
    v24 = sub_26294D9D8();
    v25 = v30;
    *&v22[*(v30 + 36)] = v24;
    v26 = v22;
    v27 = v31;
    sub_26292D788(v26, v31);
    (*(v29 + 56))(v27, 0, 1, v25);
    return (*(v11 + 8))(v13, v10);
  }
}

uint64_t sub_262927D88@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v66 = a2;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F9C8, &qword_262950940);
  MEMORY[0x28223BE20](v58);
  v56 = &v51 - v3;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F9B8, &qword_262950930);
  v60 = *(v65 - 8);
  MEMORY[0x28223BE20](v65);
  v59 = &v51 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F9D0, &qword_262950948);
  v57 = *(v5 - 8);
  v6 = MEMORY[0x28223BE20](v5);
  v55 = &v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v9 = &v51 - v8;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F9D8, &qword_262950950);
  MEMORY[0x28223BE20](v52);
  v51 = &v51 - v10;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F9A8, &qword_262950928);
  v54 = *(v64 - 8);
  MEMORY[0x28223BE20](v64);
  v53 = &v51 - v11;
  v12 = sub_26294D448();
  MEMORY[0x28223BE20](v12 - 8);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F9E0, &qword_262950958);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v51 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v51 - v18;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F990, &qword_262950920);
  MEMORY[0x28223BE20](v62);
  v61 = &v51 - v20;
  v21 = sub_26294DAD8();
  sub_26294D418();
  v63 = a1;
  v67 = a1;
  if (v21)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F9F8, &qword_262950960);
    v22 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF2FA00, &qword_262950968);
    v23 = sub_26294D358();
    v24 = sub_26292D1F8();
    v25 = sub_26292C214(&qword_27FF2FA10, MEMORY[0x277CDDE78], MEMORY[0x277CDDE70]);
    v68 = v22;
    v69 = v23;
    v70 = v24;
    v71 = v25;
    swift_getOpaqueTypeConformance2();
    sub_26294D088();
    v26 = sub_26294D428();
    MEMORY[0x28223BE20](v26);
    *(&v51 - 2) = v63;
    sub_26294D088();
    v27 = *(v52 + 48);
    v28 = *(v14 + 16);
    v29 = v51;
    v28(v51, v19, v13);
    v28(&v29[v27], v17, v13);
    v30 = v53;
    sub_26294D3E8();
    v31 = MEMORY[0x277CDDF68];
    v32 = sub_2628DFD0C(&qword_27FF2F9A0, &qword_27FF2F9A8, &qword_262950928, MEMORY[0x277CDDF68]);
    v33 = sub_2628DFD0C(&qword_27FF2F9B0, &qword_27FF2F9B8, &qword_262950930, v31);
    v34 = v61;
    v35 = v64;
    MEMORY[0x26672CAB0](v30, v64, v65, v32, v33);
    (*(v54 + 8))(v30, v35);
    v36 = *(v14 + 8);
    v36(v17, v13);
    v36(v19, v13);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F268, &unk_26294FBC0);
    sub_26292D104();
    sub_26294D088();
    v37 = sub_26294D428();
    MEMORY[0x28223BE20](v37);
    *(&v51 - 2) = v63;
    v38 = v55;
    sub_26294D088();
    v39 = v57;
    v40 = *(v58 + 48);
    v41 = *(v57 + 16);
    v42 = v56;
    v41(v56, v9, v5);
    v41(&v42[v40], v38, v5);
    v43 = v59;
    sub_26294D3E8();
    v44 = MEMORY[0x277CDDF68];
    v45 = sub_2628DFD0C(&qword_27FF2F9A0, &qword_27FF2F9A8, &qword_262950928, MEMORY[0x277CDDF68]);
    v46 = sub_2628DFD0C(&qword_27FF2F9B0, &qword_27FF2F9B8, &qword_262950930, v44);
    v34 = v61;
    v47 = v65;
    MEMORY[0x26672CAC0](v43, v64, v65, v45, v46);
    (*(v60 + 8))(v43, v47);
    v48 = *(v39 + 8);
    v48(v38, v5);
    v48(v9, v5);
  }

  v49 = sub_26292D01C();
  MEMORY[0x26672CAA0](v34, v62, v49);
  return sub_2628DF6F0(v34, &qword_27FF2F990, &qword_262950920);
}

uint64_t sub_2629285F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v30 = a2;
  v3 = sub_26294D358();
  v4 = *(v3 - 8);
  v28 = v3;
  v29 = v4;
  MEMORY[0x28223BE20](v3);
  v27 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for SEStorageView(0);
  v25 = *(v6 - 8);
  v7 = *(v25 + 64);
  MEMORY[0x28223BE20](v6);
  v8 = sub_26294C5F8();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2FA00, &qword_262950968);
  MEMORY[0x28223BE20](v26);
  v13 = &v25 - v12;
  (*(v9 + 104))(v11, *MEMORY[0x277D48DF0], v8);
  v14 = sub_26294C5E8();
  v16 = v15;
  (*(v9 + 8))(v11, v8);
  sub_26292C8C4(a1, &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for SEStorageView);
  v17 = (*(v25 + 80) + 16) & ~*(v25 + 80);
  v18 = swift_allocObject();
  sub_2629226C4(&v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v18 + v17);
  v34[0] = v14;
  v34[1] = v16;
  v31 = v34;
  v32 = 0x6B72616D78;
  v33 = 0xE500000000000000;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2E990, &unk_26294F8B0);
  sub_2628DFD0C(&qword_27FF2E998, &qword_27FF2E990, &unk_26294F8B0, MEMORY[0x277CDEFF0]);
  sub_26294D988();

  swift_getKeyPath();
  swift_getKeyPath();
  sub_26294CFF8();

  LOBYTE(v16) = v34[0];
  KeyPath = swift_getKeyPath();
  v20 = swift_allocObject();
  *(v20 + 16) = v16;
  v21 = v27;
  v22 = &v13[*(v26 + 36)];
  *v22 = KeyPath;
  v22[1] = sub_26292E384;
  v22[2] = v20;
  sub_26294D348();
  sub_26292D1F8();
  sub_26292C214(&qword_27FF2FA10, MEMORY[0x277CDDE78], MEMORY[0x277CDDE70]);
  v23 = v28;
  sub_26294D6A8();
  (*(v29 + 8))(v21, v23);
  return sub_2628DF6F0(v13, &qword_27FF2FA00, &qword_262950968);
}

uint64_t sub_262928A9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v35 = a1;
  v40 = a2;
  v2 = sub_26294D358();
  v41 = *(v2 - 8);
  v42 = v2;
  MEMORY[0x28223BE20](v2);
  v39 = &v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_26294CDF8();
  v32 = *(v4 - 8);
  v33 = v4;
  MEMORY[0x28223BE20](v4);
  v31 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for SEStorageView(0);
  v34 = *(v6 - 8);
  v7 = *(v34 + 64);
  MEMORY[0x28223BE20](v6);
  v8 = sub_26294C5F8();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2E938, &unk_26294F890);
  v36 = *(v12 - 8);
  v37 = v12;
  MEMORY[0x28223BE20](v12);
  v14 = &v31 - v13;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2FA00, &qword_262950968);
  MEMORY[0x28223BE20](v38);
  v16 = &v31 - v15;
  (*(v9 + 104))(v11, *MEMORY[0x277D48DF0], v8);
  v17 = sub_26294C5E8();
  v19 = v18;
  (*(v9 + 8))(v11, v8);
  sub_26292C8C4(v35, &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for SEStorageView);
  v20 = (*(v34 + 80) + 16) & ~*(v34 + 80);
  v21 = swift_allocObject();
  sub_2629226C4(&v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v21 + v20);
  v46[0] = v17;
  v46[1] = v19;
  v43 = v46;
  v44 = 0x72616D6B63656863;
  v45 = 0xE90000000000006BLL;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2E990, &unk_26294F8B0);
  sub_2628DFD0C(&qword_27FF2E998, &qword_27FF2E990, &unk_26294F8B0, MEMORY[0x277CDEFF0]);
  sub_26294D988();

  swift_getKeyPath();
  swift_getKeyPath();
  sub_26294CFF8();

  if (v46[0])
  {
    v22 = 1;
  }

  else
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v23 = v31;
    sub_26294CFF8();

    v24 = sub_26294CDE8();
    (*(v32 + 8))(v23, v33);
    v22 = v24 ^ 1;
  }

  KeyPath = swift_getKeyPath();
  v26 = swift_allocObject();
  *(v26 + 16) = v22 & 1;
  (*(v36 + 32))(v16, v14, v37);
  v27 = v39;
  v28 = &v16[*(v38 + 36)];
  *v28 = KeyPath;
  v28[1] = sub_26292E384;
  v28[2] = v26;
  sub_26294D348();
  sub_26292D1F8();
  sub_26292C214(&qword_27FF2FA10, MEMORY[0x277CDDE78], MEMORY[0x277CDDE70]);
  v29 = v42;
  sub_26294D6A8();
  (*(v41 + 8))(v27, v29);
  return sub_2628DF6F0(v16, &qword_27FF2FA00, &qword_262950968);
}

uint64_t sub_2629290E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v21 = a2;
  v3 = type metadata accessor for SEStorageView(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = sub_26294C5F8();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 104))(v9, *MEMORY[0x277D48DF0], v6);
  v10 = sub_26294C5E8();
  v12 = v11;
  (*(v7 + 8))(v9, v6);
  v22 = v10;
  v23 = v12;
  sub_26292C8C4(a1, &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for SEStorageView);
  v13 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v14 = swift_allocObject();
  sub_2629226C4(&v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v14 + v13);
  sub_2628DF230();
  v15 = v21;
  sub_26294D9A8();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_26294CFF8();

  LOBYTE(v13) = v22;
  KeyPath = swift_getKeyPath();
  v17 = swift_allocObject();
  *(v17 + 16) = v13;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F268, &unk_26294FBC0);
  v19 = (v15 + *(result + 36));
  *v19 = KeyPath;
  v19[1] = sub_26292E384;
  v19[2] = v17;
  return result;
}

uint64_t sub_2629293C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v31 = a1;
  v33 = a2;
  v2 = sub_26294CDF8();
  v28 = *(v2 - 8);
  v29 = v2;
  MEMORY[0x28223BE20](v2);
  v27 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for SEStorageView(0);
  v30 = *(v4 - 8);
  v5 = *(v30 + 64);
  MEMORY[0x28223BE20](v4);
  v6 = sub_26294C5F8();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F5B8, &qword_262950248);
  v10 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v12 = &v26 - v11;
  (*(v7 + 104))(v9, *MEMORY[0x277D48DF0], v6);
  v13 = sub_26294C5E8();
  v15 = v14;
  (*(v7 + 8))(v9, v6);
  v34 = v13;
  v35 = v15;
  sub_26292C8C4(v31, &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for SEStorageView);
  v16 = (*(v30 + 80) + 16) & ~*(v30 + 80);
  v17 = swift_allocObject();
  sub_2629226C4(&v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v17 + v16);
  sub_2628DF230();
  sub_26294D9A8();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_26294CFF8();

  if (v34)
  {
    v18 = 1;
  }

  else
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v19 = v27;
    sub_26294CFF8();

    v20 = sub_26294CDE8();
    (*(v28 + 8))(v19, v29);
    v18 = v20 ^ 1;
  }

  KeyPath = swift_getKeyPath();
  v22 = swift_allocObject();
  *(v22 + 16) = v18 & 1;
  v23 = v33;
  (*(v10 + 32))(v33, v12, v32);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F268, &unk_26294FBC0);
  v25 = (v23 + *(result + 36));
  *v25 = KeyPath;
  v25[1] = sub_26292E384;
  v25[2] = v22;
  return result;
}

uint64_t sub_262929840@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(a1 + *(type metadata accessor for SEStorageView(0) + 24) + 8);
  type metadata accessor for SEStorageManagementController(0);
  sub_26292C214(&qword_27FF2E800, type metadata accessor for SEStorageManagementController, &protocol conformance descriptor for SEStorageManagementController);
  v4 = v3;
  result = sub_26294D178();
  *a2 = result;
  a2[1] = v6;
  return result;
}

uint64_t sub_2629298D8@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v56 = a2;
  v3 = sub_26294C5F8();
  v51 = *(v3 - 8);
  v52 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v49 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2E9A0, &qword_26294E9A8);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v49 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2FAA8, &qword_262950A50);
  v54 = *(v9 - 8);
  v55 = v9;
  v10 = MEMORY[0x28223BE20](v9);
  v53 = &v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v50 = &v49 - v12;
  sub_26294C888();
  v14 = sub_2629205EC(v13);
  v16 = v15;
  v49 = v15;
  v17 = sub_26294C8A8();
  v18 = *(v17 - 8);
  (*(v18 + 16))(v8, a1, v17);
  (*(v18 + 56))(v8, 0, 1, v17);
  v57 = a1;
  v58 = v14;
  v59 = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2FAB0, &qword_262950A58);
  sub_26292D804();
  v19 = MEMORY[0x277D48ED0];
  sub_26292C214(&qword_27FF2EA80, MEMORY[0x277D48ED0], MEMORY[0x277D48EE8]);
  sub_26292C214(&qword_27FF2EA88, v19, MEMORY[0x277D48ED8]);
  sub_26292C214(&qword_27FF2EA90, v19, MEMORY[0x277D48EE0]);
  sub_26294D118();
  v21 = v51;
  v20 = v52;
  (*(v51 + 104))(v5, *MEMORY[0x277D48E08], v52);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2E8B8, &qword_26294EC60);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_26294ECB0;
  *(v22 + 56) = MEMORY[0x277D837D0];
  *(v22 + 64) = sub_2628DF5B8();
  v23 = v49;
  *(v22 + 32) = v14;
  *(v22 + 40) = v23;
  v24 = sub_26294C6B8();
  v26 = v25;

  (*(v21 + 8))(v5, v20);
  v60 = v24;
  v61 = v26;
  sub_2628DF230();
  v27 = sub_26294D648();
  v29 = v28;
  LOBYTE(v18) = v30;
  sub_26294D5B8();
  v31 = sub_26294D638();
  v33 = v32;
  LOBYTE(v8) = v34;

  sub_2628DF758(v27, v29, v18 & 1);

  sub_26294D8A8();
  v35 = sub_26294D608();
  v37 = v36;
  LOBYTE(v26) = v38;
  v52 = v39;

  sub_2628DF758(v31, v33, v8 & 1);

  v40 = v53;
  v41 = v54;
  v42 = *(v54 + 16);
  v43 = v50;
  v44 = v55;
  v42(v53, v50, v55);
  v45 = v56;
  v42(v56, v40, v44);
  v46 = &v45[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2FAC0, &qword_262950A60) + 48)];
  *v46 = v35;
  *(v46 + 1) = v37;
  LOBYTE(v18) = v26 & 1;
  v46[16] = v26 & 1;
  *(v46 + 3) = v52;
  sub_26292D8EC(v35, v37, v26 & 1);
  v47 = *(v41 + 8);

  v47(v43, v44);
  sub_2628DF758(v35, v37, v18);

  return (v47)(v40, v44);
}

uint64_t sub_262929E68@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v22[1] = a3;
  v5 = sub_26294C5F8();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2EF20, &qword_26294F5D0);
  MEMORY[0x28223BE20](v9);
  v11 = (v22 - v10);
  *v11 = sub_26294C868();
  v11[1] = v12;
  *(v11 + v9[15]) = 1;
  v13 = v9[9];
  v14 = sub_26294C4F8();
  (*(*(v14 - 8) + 56))(v11 + v13, 1, 1, v14);
  *(v11 + v9[10]) = 1;
  v15 = (v11 + v9[11]);
  *v15 = a1;
  v15[1] = a2;
  *(v11 + v9[12]) = 2;
  *(v11 + v9[13]) = 0;
  (*(v6 + 104))(v8, *MEMORY[0x277D48DF8], v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2E8B8, &qword_26294EC60);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_26294ECB0;

  sub_26294C888();
  v18 = sub_2629205EC(v17);
  v20 = v19;
  *(v16 + 56) = MEMORY[0x277D837D0];
  *(v16 + 64) = sub_2628DF5B8();
  *(v16 + 32) = v18;
  *(v16 + 40) = v20;
  sub_26294C6B8();

  (*(v6 + 8))(v8, v5);
  sub_2628DFD0C(&qword_27FF2EF18, &qword_27FF2EF20, &qword_26294F5D0, &unk_262950BA8);
  sub_26294D798();

  return sub_2628DF6F0(v11, &qword_27FF2EF20, &qword_26294F5D0);
}

uint64_t sub_26292A148@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(a1 + *(type metadata accessor for SEStorageView(0) + 24) + 8);
  type metadata accessor for SEStorageListView(0);
  v4 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F678, &qword_262950608);
  sub_26294D958();
  type metadata accessor for SEStorageManagementController(0);
  sub_26292C214(&qword_27FF2E800, type metadata accessor for SEStorageManagementController, &protocol conformance descriptor for SEStorageManagementController);
  result = sub_26294D178();
  *a2 = result;
  a2[1] = v6;
  return result;
}

double sub_26292A218@<D0>(uint64_t a1@<X8>)
{
  v2 = sub_26294C5F8();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v45 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_26294CDF8();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for SEStorageView(0);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_26294CFF8();

  v10 = sub_26294CDE8();
  (*(v7 + 8))(v9, v6);
  if (v10)
  {
    (*(v3 + 104))(v5, *MEMORY[0x277D48E08], v2);
    v11 = sub_26294C5E8();
    v13 = v12;
    (*(v3 + 8))(v5, v2);
    *&v49 = v11;
    *(&v49 + 1) = v13;
    sub_2628DF230();
    *&v45 = sub_26294D648();
    *(&v45 + 1) = v14;
    *&v46 = v15 & 1;
    *(&v46 + 1) = v16;
    v47 = 0;
    v48 = 1;
    goto LABEL_13;
  }

  if (sub_2628E4914())
  {
    (*(v3 + 104))(v5, *MEMORY[0x277D48E08], v2);
    v17 = sub_26294C5E8();
    v19 = v18;
    (*(v3 + 8))(v5, v2);
    *&v49 = v17;
    *(&v49 + 1) = v19;
    sub_2628DF230();
    v20 = sub_26294D648();
    v22 = v20;
    v23 = v21;
    *&v45 = v20;
    *(&v45 + 1) = v21;
    v25 = v24 & 1;
    *&v46 = v24 & 1;
    *(&v46 + 1) = v26;
    LOBYTE(v47) = 0;
  }

  else
  {
    v27 = sub_2628E48F4();
    (*(v3 + 104))(v5, *MEMORY[0x277D48E08], v2);
    v28 = (v3 + 8);
    if ((v27 & 1) == 0)
    {
      v34 = sub_26294C5E8();
      v36 = v35;
      (*v28)(v5, v2);
      *&v49 = v34;
      *(&v49 + 1) = v36;
      sub_2628DF230();
      *&v45 = sub_26294D648();
      *(&v45 + 1) = v38;
      *&v46 = v37 & 1;
      *(&v46 + 1) = v39;
      v47 = 256;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F1D0, &unk_26294FB10);
      sub_2629139D0();
      sub_26294D3F8();
      goto LABEL_9;
    }

    v29 = sub_26294C5E8();
    v31 = v30;
    (*v28)(v5, v2);
    *&v49 = v29;
    *(&v49 + 1) = v31;
    sub_2628DF230();
    v20 = sub_26294D648();
    v22 = v20;
    v23 = v21;
    v25 = v32 & 1;
    *&v45 = v20;
    *(&v45 + 1) = v21;
    *&v46 = v32 & 1;
    *(&v46 + 1) = v33;
    LOBYTE(v47) = 1;
  }

  sub_26292D8EC(v20, v21, v25);

  sub_26294D3F8();
  v45 = v49;
  v46 = v50;
  v47 = v51;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F1D0, &unk_26294FB10);
  sub_2629139D0();
  sub_26294D3F8();
  sub_2628DF758(v22, v23, v25);

LABEL_9:
  if (HIBYTE(v51))
  {
    v40 = 256;
  }

  else
  {
    v40 = 0;
  }

  v45 = v49;
  v46 = v50;
  v47 = v40 | v51;
  v48 = 0;
LABEL_13:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2FB08, &qword_262950B38);
  sub_26292DB08();
  sub_26294D3F8();
  result = *&v49;
  v42 = v50;
  v43 = v51;
  v44 = v52;
  *a1 = v49;
  *(a1 + 16) = v42;
  *(a1 + 32) = v43;
  *(a1 + 34) = v44;
  return result;
}

double sub_26292A7B4@<D0>(_OWORD *a1@<X8>)
{
  v42 = a1;
  v2 = sub_26294C5F8();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_26294CDF8();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(type metadata accessor for SEStorageView(0) + 24);
  v41 = v1;
  v11 = *(v1 + v10 + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_26294CFF8();

  v12 = sub_26294CDE8();
  v13 = *(v7 + 8);
  v40 = v6;
  v13(v9, v6);
  if (v12)
  {
    (*(v3 + 104))(v5, *MEMORY[0x277D48E08], v2);
    v14 = sub_26294C5E8();
    v16 = v15;
    (*(v3 + 8))(v5, v2);
    *&v46 = v14;
    *(&v46 + 1) = v16;
    sub_2628DF230();
    *&v43 = sub_26294D648();
    *(&v43 + 1) = v18;
    *&v44 = v17 & 1;
    *(&v44 + 1) = v19;
    v45 = 0x1000000;
  }

  else
  {
    if (*(v11 + OBJC_IVAR____TtC12SESUIService29SEStorageManagementController_provisioningOnCurrentDevice) == 1)
    {
      sub_26292ACB0(&v46);
      if (HIBYTE(v48))
      {
        v20 = 256;
      }

      else
      {
        v20 = 0;
      }

      v43 = v46;
      v44 = v47;
      LOWORD(v45) = v20 | v48;
      BYTE2(v45) = 0;
    }

    else
    {
      v21 = *MEMORY[0x277D48E08];
      v39 = v3;
      (*(v3 + 104))(v5, v21, v2);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2E8B8, &qword_26294EC60);
      v22 = swift_allocObject();
      *(v22 + 16) = xmmword_26294ECB0;
      swift_getKeyPath();
      swift_getKeyPath();
      sub_26294CFF8();

      sub_26294CDD8();
      v24 = v23;
      v13(v9, v40);
      v25 = sub_2629205EC(v24);
      v27 = v26;
      *(v22 + 56) = MEMORY[0x277D837D0];
      *(v22 + 64) = sub_2628DF5B8();
      *(v22 + 32) = v25;
      *(v22 + 40) = v27;
      v28 = sub_26294C6B8();
      v30 = v29;

      (*(v39 + 8))(v5, v2);
      *&v46 = v28;
      *(&v46 + 1) = v30;
      sub_2628DF230();
      *&v43 = sub_26294D648();
      *(&v43 + 1) = v31;
      *&v44 = v32 & 1;
      *(&v44 + 1) = v33;
      LOWORD(v45) = 0;
      BYTE2(v45) = 1;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F918, &qword_2629508E0);
    sub_26292CDB8();
    sub_26294D3F8();
    v43 = v46;
    v44 = v47;
    LOWORD(v45) = v48;
    HIWORD(v45) = v49 != 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F908, &qword_2629508D8);
  sub_26292CD2C();
  sub_26294D3F8();
  result = *&v46;
  v35 = v47;
  v36 = v48 | (v49 << 16);
  v37 = v50;
  v38 = v42;
  *v42 = v46;
  v38[1] = v35;
  *(v38 + 16) = v36;
  *(v38 + 34) = BYTE2(v36);
  *(v38 + 35) = v37;
  return result;
}

double sub_26292ACB0@<D0>(_OWORD *a1@<X8>)
{
  v64 = a1;
  v1 = sub_26294CDF8();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v63 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_26294C5F8();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v63 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for SEStorageView(0);
  v9 = sub_2628E45F4();
  swift_getKeyPath();
  swift_getKeyPath();
  if (v9)
  {
    sub_26294CFF8();

    if ((v68 & 2) != 0 || (swift_getKeyPath(), swift_getKeyPath(), sub_26294CFF8(), , , (v68 & 8) != 0))
    {
      v63 = "SUBTITLE_WITH_ESIM";
      (*(v6 + 104))(v8, *MEMORY[0x277D48E08], v5);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2E8B8, &qword_26294EC60);
      v34 = swift_allocObject();
      *(v34 + 16) = xmmword_26294ECB0;
      swift_getKeyPath();
      swift_getKeyPath();
      sub_26294CFF8();

      sub_26294CDD8();
      v36 = v35;
      (*(v2 + 8))(v4, v1);
      v37 = sub_2629205EC(v36);
      v39 = v38;
      *(v34 + 56) = MEMORY[0x277D837D0];
      *(v34 + 64) = sub_2628DF5B8();
      *(v34 + 32) = v37;
      *(v34 + 40) = v39;
      v40 = sub_26294C6B8();
      v42 = v41;

      (*(v6 + 8))(v8, v5);
      *&v68 = v40;
      *(&v68 + 1) = v42;
      sub_2628DF230();
      *&v65 = sub_26294D648();
      *(&v65 + 1) = v43;
      *&v66 = v44 & 1;
      *(&v66 + 1) = v45;
      LOBYTE(v67) = 0;
    }

    else
    {
      v63 = "SUBTITLE_WITH_CREDENTIALS";
      (*(v6 + 104))(v8, *MEMORY[0x277D48E08], v5);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2E8B8, &qword_26294EC60);
      v10 = swift_allocObject();
      *(v10 + 16) = xmmword_26294ECB0;
      swift_getKeyPath();
      swift_getKeyPath();
      sub_26294CFF8();

      sub_26294CDD8();
      v12 = v11;
      (*(v2 + 8))(v4, v1);
      v13 = sub_2629205EC(v12);
      v15 = v14;
      *(v10 + 56) = MEMORY[0x277D837D0];
      *(v10 + 64) = sub_2628DF5B8();
      *(v10 + 32) = v13;
      *(v10 + 40) = v15;
      v16 = sub_26294C6B8();
      v18 = v17;

      (*(v6 + 8))(v8, v5);
      *&v68 = v16;
      *(&v68 + 1) = v18;
      sub_2628DF230();
      *&v65 = sub_26294D648();
      *(&v65 + 1) = v20;
      *&v66 = v19 & 1;
      *(&v66 + 1) = v21;
      LOBYTE(v67) = 1;
    }

    sub_26294D3F8();
    v65 = v68;
    v66 = v69;
    v67 = v70;
  }

  else
  {
    sub_26294CFF8();

    if ((v68 & 2) != 0 || (swift_getKeyPath(), swift_getKeyPath(), sub_26294CFF8(), , , (v68 & 8) != 0))
    {
      v63 = "SUFFICIENT_SPACE_SUBTITLE";
      (*(v6 + 104))(v8, *MEMORY[0x277D48E08], v5);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2E8B8, &qword_26294EC60);
      v46 = swift_allocObject();
      *(v46 + 16) = xmmword_26294ECB0;
      swift_getKeyPath();
      swift_getKeyPath();
      sub_26294CFF8();

      sub_26294CDD8();
      v48 = v47;
      (*(v2 + 8))(v4, v1);
      v49 = sub_2629205EC(v48);
      v51 = v50;
      *(v46 + 56) = MEMORY[0x277D837D0];
      *(v46 + 64) = sub_2628DF5B8();
      *(v46 + 32) = v49;
      *(v46 + 40) = v51;
      v52 = sub_26294C6B8();
      v54 = v53;

      (*(v6 + 8))(v8, v5);
      *&v68 = v52;
      *(&v68 + 1) = v54;
      sub_2628DF230();
      *&v65 = sub_26294D648();
      *(&v65 + 1) = v55;
      *&v66 = v56 & 1;
      *(&v66 + 1) = v57;
      LOBYTE(v67) = 0;
    }

    else
    {
      (*(v6 + 104))(v8, *MEMORY[0x277D48E08], v5);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2E8B8, &qword_26294EC60);
      v22 = swift_allocObject();
      *(v22 + 16) = xmmword_26294ECB0;
      swift_getKeyPath();
      swift_getKeyPath();
      sub_26294CFF8();

      sub_26294CDD8();
      v24 = v23;
      (*(v2 + 8))(v4, v1);
      v25 = sub_2629205EC(v24);
      v27 = v26;
      *(v22 + 56) = MEMORY[0x277D837D0];
      *(v22 + 64) = sub_2628DF5B8();
      *(v22 + 32) = v25;
      *(v22 + 40) = v27;
      v28 = sub_26294C6B8();
      v30 = v29;

      (*(v6 + 8))(v8, v5);
      *&v68 = v28;
      *(&v68 + 1) = v30;
      sub_2628DF230();
      *&v65 = sub_26294D648();
      *(&v65 + 1) = v32;
      *&v66 = v31 & 1;
      *(&v66 + 1) = v33;
      LOBYTE(v67) = 1;
    }

    sub_26294D3F8();
    v65 = v68;
    v66 = v69;
    LOBYTE(v67) = v70;
    HIBYTE(v67) = 1;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F1D0, &unk_26294FB10);
  sub_2629139D0();
  sub_26294D3F8();
  result = *&v68;
  v59 = v69;
  v60 = v70;
  v61 = v71;
  v62 = v64;
  *v64 = v68;
  v62[1] = v59;
  *(v62 + 32) = v60;
  *(v62 + 33) = v61;
  return result;
}