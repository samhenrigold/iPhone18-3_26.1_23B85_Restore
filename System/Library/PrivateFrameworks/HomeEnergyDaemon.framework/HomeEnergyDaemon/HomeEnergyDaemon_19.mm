uint64_t sub_22B325AD4(uint64_t *a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  sub_22B36149C();
  v4 = *a1;
  v5 = a1[1];
  v6 = *(a1 + 8);
  v7 = a1[3];
  v8 = a1[4];
  v9 = a1[5];
  v10 = a1[6];
  v11 = a1[8];
  v29 = a1[7];
  sub_22B3608FC();
  v34 = v6;
  sub_22B3614CC();
  v32 = v8;
  v33 = v7;
  sub_22B3608FC();
  v30 = v10;
  v31 = v9;
  sub_22B3608FC();
  v28 = v11;
  sub_22B3608FC();
  v12 = sub_22B3614DC();
  v13 = -1 << *(a2 + 32);
  v14 = v12 & ~v13;
  v37 = a2 + 56;
  if (((*(a2 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
  {
    return 0;
  }

  v35 = ~v13;
  v36 = *(a2 + 48);
  while (1)
  {
    v15 = v36 + 72 * v14;
    v16 = *(v15 + 16);
    v18 = *(v15 + 24);
    v17 = *(v15 + 32);
    v19 = *(v15 + 40);
    v20 = *(v15 + 48);
    v21 = *(v15 + 56);
    v22 = *(v15 + 64);
    v23 = *v15 == v4 && *(v15 + 8) == v5;
    if (v23 || (sub_22B36134C()) && v16 == v34)
    {
      v24 = v18 == v33 && v17 == v32;
      if (v24 || (sub_22B36134C() & 1) != 0)
      {
        v25 = v19 == v31 && v20 == v30;
        if (v25 || (sub_22B36134C() & 1) != 0)
        {
          v26 = v21 == v29 && v22 == v28;
          if (v26 || (sub_22B36134C() & 1) != 0)
          {
            break;
          }
        }
      }
    }

    v14 = (v14 + 1) & v35;
    if (((*(v37 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_22B325CF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  sub_22B36149C();
  sub_22B3608FC();
  v6 = sub_22B3614DC();
  v7 = -1 << *(a3 + 32);
  v8 = v6 & ~v7;
  if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 0;
  }

  v9 = ~v7;
  while (1)
  {
    v10 = (*(a3 + 48) + 16 * v8);
    v11 = *v10 == a1 && v10[1] == a2;
    if (v11 || (sub_22B36134C() & 1) != 0)
    {
      break;
    }

    v8 = (v8 + 1) & v9;
    if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_22B325DE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA8D0, &qword_22B363610);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v22 - v9;
  sub_22B170BE0(a3, v22 - v9, &qword_27D8BA8D0, &qword_22B363610);
  v11 = sub_22B360B6C();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_22B123284(v10, &qword_27D8BA8D0, &qword_22B363610);
  }

  else
  {
    sub_22B360B5C();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_22B360ACC();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_22B3608CC() + 32;

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

      sub_22B123284(a3, &qword_27D8BA8D0, &qword_22B363610);

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

  sub_22B123284(a3, &qword_27D8BA8D0, &qword_22B363610);
  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

void sub_22B326094(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = [a1 recordID];
  v5 = sub_22B36084C();
  v7 = v6;

  *a2 = v5;
  a2[1] = v7;
  v8 = [a1 usagePointID];
  v9 = sub_22B36084C();
  v11 = v10;

  a2[2] = v9;
  a2[3] = v11;
  v12 = [a1 tariffProfiles];
  v13 = sub_22B35DCDC();
  v15 = v14;

  v16 = MEMORY[0x23188EEB0]();
  sub_22B326940(&v40);
  objc_autoreleasePoolPop(v16);
  sub_22B12F174(v13, v15);
  a2[4] = v40;
  v17 = [a1 tariffRiders];
  v18 = sub_22B35DCDC();
  v20 = v19;

  v21 = MEMORY[0x23188EEB0]();
  sub_22B326304(&v40);
  objc_autoreleasePoolPop(v21);
  sub_22B12F174(v18, v20);
  a2[5] = v40;
  v22 = [a1 sourceTime];
  v23 = type metadata accessor for CDUsagePointRecords(0);
  sub_22B35DE5C();

  v24 = [a1 creationDate];
  sub_22B35DE5C();

  v25 = [a1 zoneName];
  v26 = sub_22B36084C();
  v28 = v27;

  v29 = (a2 + v23[10]);
  *v29 = v26;
  v29[1] = v28;
  v30 = [a1 subscriptionID];
  v31 = sub_22B36084C();
  v33 = v32;

  v34 = (a2 + v23[11]);
  *v34 = v31;
  v34[1] = v33;
  v35 = [a1 utilityID];
  v36 = sub_22B36084C();
  v38 = v37;

  v39 = (a2 + v23[12]);
  *v39 = v36;
  v39[1] = v38;
}

void sub_22B326304(uint64_t *a3@<X8>)
{
  v52 = a3;
  v48 = sub_22B36052C();
  v3 = *(v48 - 8);
  MEMORY[0x28223BE20](v48);
  v51 = &v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_22B3603FC();
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_22B35F74C();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v43 - v13;
  MEMORY[0x28223BE20](v15);
  v17 = &v43 - v16;
  sub_22B128014(0, &qword_27D8BA690, 0x277CBEA60);
  v18 = v58;
  v19 = sub_22B360F7C();
  if (v18)
  {
    v20 = v18;
    v21 = v52;
    v22 = v48;
LABEL_3:
    v23 = v51;
    if (qword_28140A0C8 == -1)
    {
      goto LABEL_4;
    }

    goto LABEL_27;
  }

  v49 = v17;
  v50 = v14;
  v54 = v11;
  if (!v19)
  {
    v23 = MEMORY[0x277D84F90];
    v21 = v52;
    goto LABEL_24;
  }

  v58 = 0;
  *&v55 = 0;
  v35 = v19;
  sub_22B360A4C();

  v22 = v55;
  v21 = v52;
  if (!v55)
  {
    v23 = MEMORY[0x277D84F90];
    goto LABEL_24;
  }

  v47 = *(v55 + 16);
  if (v47)
  {
    v44 = v3;
    v45 = v9;
    v3 = 0;
    v53 = (v9 + 32);
    v20 = (v55 + 40);
    v23 = MEMORY[0x277D84F90];
    v46 = v7;
    while (v3 < *(v22 + 16))
    {
      v37 = *(v20 - 1);
      v36 = *v20;
      v57 = 0;
      v55 = 0u;
      v56 = 0u;
      sub_22B144B30(v37, v36);
      sub_22B3603EC();
      sub_22B332F4C(&qword_27D8BAF18, MEMORY[0x277D07428], MEMORY[0x277D07420]);
      v38 = v50;
      v39 = v58;
      sub_22B36041C();
      v58 = v39;
      if (v39)
      {

        v20 = v58;
        v21 = v52;
        v22 = v48;
        v3 = v44;
        goto LABEL_3;
      }

      v21 = *v53;
      v40 = v49;
      (*v53)(v49, v38, v8);
      (v21)(v54, v40, v8);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v23 = sub_22B32DAC8(0, v23[2] + 1, 1, v23, &qword_27D8BAF20, &qword_22B367580, MEMORY[0x277D07428]);
      }

      v42 = v23[2];
      v41 = v23[3];
      if (v42 >= v41 >> 1)
      {
        v23 = sub_22B32DAC8((v41 > 1), v42 + 1, 1, v23, &qword_27D8BAF20, &qword_22B367580, MEMORY[0x277D07428]);
      }

      ++v3;
      v23[2] = v42 + 1;
      (v21)(v23 + ((*(v45 + 80) + 32) & ~*(v45 + 80)) + *(v45 + 72) * v42, v54, v8);
      v20 += 2;
      if (v47 == v3)
      {
        goto LABEL_23;
      }
    }

    __break(1u);
LABEL_27:
    swift_once();
LABEL_4:
    v24 = __swift_project_value_buffer(v22, qword_28140BD10);
    swift_beginAccess();
    (*(v3 + 16))(v23, v24, v22);
    v25 = v20;
    v26 = sub_22B36050C();
    v27 = sub_22B360D1C();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = v3;
      v30 = swift_slowAlloc();
      *v28 = 138412290;
      v31 = v20;
      v32 = _swift_stdlib_bridgeErrorToNSError();
      *(v28 + 4) = v32;
      *v30 = v32;
      _os_log_impl(&dword_22B116000, v26, v27, "Failed to unarchive TariffRider %@", v28, 0xCu);
      sub_22B123284(v30, &unk_27D8BAA90, &unk_22B362BC0);
      v33 = v30;
      v3 = v29;
      MEMORY[0x23188F650](v33, -1, -1);
      v34 = v28;
      v23 = v51;
      MEMORY[0x23188F650](v34, -1, -1);
    }

    else
    {
    }

    (*(v3 + 8))(v23, v22);
    v23 = MEMORY[0x277D84F90];
    goto LABEL_24;
  }

  v23 = MEMORY[0x277D84F90];
LABEL_23:

  v21 = v52;
LABEL_24:
  *v21 = v23;
}

void sub_22B326940(uint64_t *a3@<X8>)
{
  v52 = a3;
  v48 = sub_22B36052C();
  v3 = *(v48 - 8);
  MEMORY[0x28223BE20](v48);
  v51 = &v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_22B3603FC();
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_22B35F7CC();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v43 - v13;
  MEMORY[0x28223BE20](v15);
  v17 = &v43 - v16;
  sub_22B128014(0, &qword_27D8BA690, 0x277CBEA60);
  v18 = v58;
  v19 = sub_22B360F7C();
  if (v18)
  {
    v20 = v18;
    v21 = v52;
    v22 = v48;
LABEL_3:
    v23 = v51;
    if (qword_28140A0C8 == -1)
    {
      goto LABEL_4;
    }

    goto LABEL_27;
  }

  v49 = v17;
  v50 = v14;
  v54 = v11;
  if (!v19)
  {
    v23 = MEMORY[0x277D84F90];
    v21 = v52;
    goto LABEL_24;
  }

  v58 = 0;
  *&v55 = 0;
  v35 = v19;
  sub_22B360A4C();

  v22 = v55;
  v21 = v52;
  if (!v55)
  {
    v23 = MEMORY[0x277D84F90];
    goto LABEL_24;
  }

  v47 = *(v55 + 16);
  if (v47)
  {
    v44 = v3;
    v45 = v9;
    v3 = 0;
    v53 = (v9 + 32);
    v20 = (v55 + 40);
    v23 = MEMORY[0x277D84F90];
    v46 = v7;
    while (v3 < *(v22 + 16))
    {
      v37 = *(v20 - 1);
      v36 = *v20;
      v57 = 0;
      v55 = 0u;
      v56 = 0u;
      sub_22B144B30(v37, v36);
      sub_22B3603EC();
      sub_22B332F4C(&qword_27D8BAF28, MEMORY[0x277D07438], MEMORY[0x277D07430]);
      v38 = v50;
      v39 = v58;
      sub_22B36041C();
      v58 = v39;
      if (v39)
      {

        v20 = v58;
        v21 = v52;
        v22 = v48;
        v3 = v44;
        goto LABEL_3;
      }

      v21 = *v53;
      v40 = v49;
      (*v53)(v49, v38, v8);
      (v21)(v54, v40, v8);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v23 = sub_22B32DAC8(0, v23[2] + 1, 1, v23, &qword_27D8BABB0, &qword_22B3669B8, MEMORY[0x277D07438]);
      }

      v42 = v23[2];
      v41 = v23[3];
      if (v42 >= v41 >> 1)
      {
        v23 = sub_22B32DAC8((v41 > 1), v42 + 1, 1, v23, &qword_27D8BABB0, &qword_22B3669B8, MEMORY[0x277D07438]);
      }

      ++v3;
      v23[2] = v42 + 1;
      (v21)(v23 + ((*(v45 + 80) + 32) & ~*(v45 + 80)) + *(v45 + 72) * v42, v54, v8);
      v20 += 2;
      if (v47 == v3)
      {
        goto LABEL_23;
      }
    }

    __break(1u);
LABEL_27:
    swift_once();
LABEL_4:
    v24 = __swift_project_value_buffer(v22, qword_28140BD10);
    swift_beginAccess();
    (*(v3 + 16))(v23, v24, v22);
    v25 = v20;
    v26 = sub_22B36050C();
    v27 = sub_22B360D1C();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = v3;
      v30 = swift_slowAlloc();
      *v28 = 138412290;
      v31 = v20;
      v32 = _swift_stdlib_bridgeErrorToNSError();
      *(v28 + 4) = v32;
      *v30 = v32;
      _os_log_impl(&dword_22B116000, v26, v27, "Failed to unarchive TariffProfile %@", v28, 0xCu);
      sub_22B123284(v30, &unk_27D8BAA90, &unk_22B362BC0);
      v33 = v30;
      v3 = v29;
      MEMORY[0x23188F650](v33, -1, -1);
      v34 = v28;
      v23 = v51;
      MEMORY[0x23188F650](v34, -1, -1);
    }

    else
    {
    }

    (*(v3 + 8))(v23, v22);
    v23 = MEMORY[0x277D84F90];
    goto LABEL_24;
  }

  v23 = MEMORY[0x277D84F90];
LABEL_23:

  v21 = v52;
LABEL_24:
  *v21 = v23;
}

void sub_22B326F7C(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X4>, uint64_t *a6@<X8>)
{
  sub_22B35F86C();
  v9 = sub_22B35F85C();
  [v9 setResultType_];
  sub_22B128014(0, &qword_281409330, 0x277CCAC30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA220, &unk_22B363550);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_22B3634C0;
  v11 = MEMORY[0x277D837D0];
  *(v10 + 56) = MEMORY[0x277D837D0];
  v12 = sub_22B1280E4();
  *(v10 + 32) = a1;
  *(v10 + 40) = a2;
  *(v10 + 96) = v11;
  *(v10 + 104) = v12;
  *(v10 + 64) = v12;
  *(v10 + 72) = a3;
  *(v10 + 80) = a4;

  v13 = sub_22B360CCC();
  [v9 setPredicate_];
  v14 = sub_22B360E8C();
  if (v19)
  {
  }

  else
  {
    v15 = v14;
    [a5 reset];

    *a6 = v15;
  }
}

double sub_22B327108@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X6>, uint64_t *a8@<X8>)
{
  sub_22B35F86C();
  v11 = sub_22B35F85C();
  [v11 setResultType_];
  v12 = objc_allocWithZone(MEMORY[0x277CCAC98]);
  v13 = sub_22B36081C();
  v14 = [v12 initWithKey:v13 ascending:0];

  v15 = objc_allocWithZone(MEMORY[0x277CCAC98]);
  v16 = sub_22B36081C();
  v17 = [v15 initWithKey:v16 ascending:0];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA238, &unk_22B365D70);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_22B363950;
  *(v18 + 32) = v14;
  *(v18 + 40) = v17;
  sub_22B128014(0, &qword_281409308, 0x277CCAC98);
  v19 = v14;
  v37 = v17;
  v20 = sub_22B360A3C();

  [v11 setSortDescriptors_];

  sub_22B128014(0, &qword_281409330, 0x277CCAC30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA220, &unk_22B363550);
  v21 = swift_allocObject();
  if (a2)
  {
    *(v21 + 16) = xmmword_22B364620;
    v22 = MEMORY[0x277D837D0];
    *(v21 + 56) = MEMORY[0x277D837D0];
    v23 = sub_22B1280E4();
    *(v21 + 32) = a3;
    *(v21 + 40) = a4;
    *(v21 + 96) = v22;
    *(v21 + 104) = v23;
    *(v21 + 64) = v23;
    *(v21 + 72) = a5;
    *(v21 + 80) = a6;
    *(v21 + 136) = v22;
    *(v21 + 144) = v23;
    *(v21 + 112) = a1;
    *(v21 + 120) = a2;
  }

  else
  {
    *(v21 + 16) = xmmword_22B3634C0;
    v24 = MEMORY[0x277D837D0];
    *(v21 + 56) = MEMORY[0x277D837D0];
    v25 = sub_22B1280E4();
    *(v21 + 32) = a3;
    *(v21 + 40) = a4;
    *(v21 + 96) = v24;
    *(v21 + 104) = v25;
    *(v21 + 64) = v25;
    *(v21 + 72) = a5;
    *(v21 + 80) = a6;
  }

  v26 = sub_22B360CCC();
  [v11 setPredicate_];

  v27 = sub_22B360E9C();
  if (v36)
  {
  }

  else
  {
    if (v27 >> 62)
    {
      v29 = sub_22B36109C();
    }

    else
    {
      v29 = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v29 < 1)
    {
      [a7 reset];

      *a8 = 0;
    }

    else
    {
      v39 = MEMORY[0x23188E590](v29, MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
      v30 = sub_22B360E9C();
      v31 = sub_22B325594(v30, &v39);

      [a7 reset];

      *a8 = v31;
    }
  }

  return result;
}

void sub_22B32755C(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X4>, uint64_t *a6@<X8>)
{
  sub_22B35F86C();
  v8 = sub_22B35F85C();
  [v8 setResultType_];
  v9 = objc_allocWithZone(MEMORY[0x277CCAC98]);
  v10 = sub_22B36081C();
  v11 = [v9 initWithKey:v10 ascending:0];

  v12 = objc_allocWithZone(MEMORY[0x277CCAC98]);
  v13 = sub_22B36081C();
  v14 = [v12 initWithKey:v13 ascending:0];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA238, &unk_22B365D70);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_22B363950;
  *(v15 + 32) = v11;
  *(v15 + 40) = v14;
  sub_22B128014(0, &qword_281409308, 0x277CCAC98);
  v16 = v11;
  v17 = v14;
  v18 = sub_22B360A3C();

  [v8 setSortDescriptors_];

  sub_22B128014(0, &qword_281409330, 0x277CCAC30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA220, &unk_22B363550);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_22B3634C0;
  v20 = MEMORY[0x277D837D0];
  *(v19 + 56) = MEMORY[0x277D837D0];
  v21 = sub_22B1280E4();
  *(v19 + 32) = a1;
  *(v19 + 40) = a2;
  *(v19 + 96) = v20;
  *(v19 + 104) = v21;
  *(v19 + 64) = v21;
  *(v19 + 72) = a3;
  *(v19 + 80) = a4;

  v22 = sub_22B360CCC();
  [v8 setPredicate_];
  [v8 setFetchLimit_];
  v23 = sub_22B360E9C();
  if (v36)
  {

    return;
  }

  if (v23 >> 62)
  {
    v29 = v23;
    v30 = sub_22B36109C();
    v23 = v29;
    v24 = v17;
    if (v30)
    {
      goto LABEL_5;
    }

LABEL_10:

    [a5 reset];

    v31 = type metadata accessor for CDUsagePointRecords(0);
    (*(*(v31 - 8) + 56))(a6, 1, 1, v31);
    return;
  }

  v24 = v17;
  if (!*((v23 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_10;
  }

LABEL_5:
  if ((v23 & 0xC000000000000001) != 0)
  {
    v25 = MEMORY[0x23188EAC0](0);
    goto LABEL_8;
  }

  if (*((v23 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v25 = *(v23 + 32);
LABEL_8:
    v26 = v25;

    v27 = v26;
    sub_22B326094(v27, a6);
    [a5 reset];

    v28 = type metadata accessor for CDUsagePointRecords(0);
    (*(*(v28 - 8) + 56))(a6, 0, 1, v28);
    return;
  }

  __break(1u);
}

void sub_22B327958(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, void *a7, uint64_t a8, void **a9)
{
  v45 = a8;
  v46 = a1;
  v50 = a6;
  v51 = a7;
  v47 = a3;
  v48 = a5;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA6E8, &qword_22B365990);
  MEMORY[0x28223BE20](v11 - 8);
  v44 = (&v44 - v12);
  v49 = sub_22B35F86C();
  v13 = sub_22B35F85C();
  [v13 setResultType_];
  v14 = objc_allocWithZone(MEMORY[0x277CCAC98]);
  v15 = sub_22B36081C();
  v16 = [v14 initWithKey:v15 ascending:0];

  v17 = objc_allocWithZone(MEMORY[0x277CCAC98]);
  v18 = sub_22B36081C();
  v19 = [v17 initWithKey:v18 ascending:0];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA238, &unk_22B365D70);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_22B363950;
  *(v20 + 32) = v16;
  *(v20 + 40) = v19;
  sub_22B128014(0, &qword_281409308, 0x277CCAC98);
  v21 = v16;
  v22 = v19;
  v23 = sub_22B360A3C();

  [v13 setSortDescriptors_];

  sub_22B128014(0, &qword_281409330, 0x277CCAC30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA220, &unk_22B363550);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_22B364620;
  v25 = MEMORY[0x277D837D0];
  *(v24 + 56) = MEMORY[0x277D837D0];
  v26 = sub_22B1280E4();
  v27 = v47;
  *(v24 + 32) = v46;
  *(v24 + 40) = a2;
  *(v24 + 96) = v25;
  *(v24 + 104) = v26;
  *(v24 + 64) = v26;
  *(v24 + 72) = v27;
  *(v24 + 80) = a4;
  *(v24 + 136) = v25;
  *(v24 + 144) = v26;
  v28 = v50;
  *(v24 + 112) = v48;
  *(v24 + 120) = v28;

  v29 = v51;
  v30 = sub_22B360CCC();
  [v13 setPredicate_];
  v31 = v52;
  v32 = sub_22B360E9C();
  if (v31)
  {

LABEL_12:
    return;
  }

  v52 = v21;
  v50 = v22;
  v34 = v44;
  v33 = v45;
  if (!(v32 >> 62))
  {
    v35 = v52;
    if (*((v32 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_5;
    }

LABEL_10:

    goto LABEL_11;
  }

  v42 = v32;
  v43 = sub_22B36109C();
  v32 = v42;
  v35 = v52;
  if (!v43)
  {
    goto LABEL_10;
  }

LABEL_5:
  if ((v32 & 0xC000000000000001) != 0)
  {
    v36 = MEMORY[0x23188EAC0](0);
    goto LABEL_8;
  }

  if (*((v32 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v36 = *(v32 + 32);
LABEL_8:
    v37 = v36;

    v38 = v37;
    sub_22B326094(v38, v34);
    v39 = type metadata accessor for CDUsagePointRecords(0);
    (*(*(v39 - 8) + 56))(v34, 0, 1, v39);
    sub_22B332EDC(v34, v33);
    v40 = [v38 objectID];

    v41 = *a9;
    *a9 = v40;

    v35 = v52;
LABEL_11:
    [v29 refreshAllObjects];

    goto LABEL_12;
  }

  __break(1u);
}

void sub_22B327DA8(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, _BYTE *a8)
{
  v67 = a5;
  v68 = a6;
  v66 = a4;
  v63 = a3;
  v72[3] = *MEMORY[0x277D85DE8];
  v12 = sub_22B35DE9C();
  v64 = *(v12 - 8);
  v65 = v12;
  MEMORY[0x28223BE20](v12);
  v14 = v60 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_22B36052C();
  v71 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v69 = v60 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = v60 - v18;
  *&v21 = MEMORY[0x28223BE20](v20).n128_u64[0];
  v23 = v60 - v22;
  v72[0] = 0;
  v70 = a1;
  v24 = [a1 existingObjectWithID:a2 error:{v72, v21}];
  v25 = v72[0];
  if (!v24)
  {
    v62 = a2;
    v42 = v72[0];
    v43 = sub_22B35DB9C();

    swift_willThrow();
    v44 = v71;
    v19 = v69;
    if (qword_28140A0C8 != -1)
    {
      swift_once();
    }

    v45 = __swift_project_value_buffer(v15, qword_28140BD10);
    swift_beginAccess();
    (*(v44 + 16))(v19, v45, v15);
    v46 = v62;
    v47 = sub_22B36050C();
    v48 = sub_22B360D0C();

    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      *v49 = 138412290;
      *(v49 + 4) = v46;
      *v50 = v46;
      v51 = v46;
      _os_log_impl(&dword_22B116000, v47, v48, "[UsagePointRecords] No object to update for %@", v49, 0xCu);
      sub_22B123284(v50, &unk_27D8BAA90, &unk_22B362BC0);
      MEMORY[0x23188F650](v50, -1, -1);
      v52 = v49;
      v19 = v69;
      MEMORY[0x23188F650](v52, -1, -1);
    }

    goto LABEL_19;
  }

  v26 = v24;
  v60[1] = a7;
  v61 = a8;
  sub_22B35F86C();
  v27 = swift_dynamicCastClass();
  v28 = qword_28140A0C8;
  v29 = v25;
  if (!v27)
  {
    if (v28 != -1)
    {
      swift_once();
    }

    v53 = __swift_project_value_buffer(v15, qword_28140BD10);
    swift_beginAccess();
    (*(v71 + 16))(v19, v53, v15);
    v54 = a2;
    v47 = sub_22B36050C();
    v55 = sub_22B360D0C();

    v56 = os_log_type_enabled(v47, v55);
    a8 = v61;
    if (v56)
    {
      v57 = swift_slowAlloc();
      v58 = swift_slowAlloc();
      *v57 = 138412290;
      *(v57 + 4) = v54;
      *v58 = v54;
      v59 = v54;
      _os_log_impl(&dword_22B116000, v47, v55, "[UsagePointRecords] No object to update for %@", v57, 0xCu);
      sub_22B123284(v58, &unk_27D8BAA90, &unk_22B362BC0);
      MEMORY[0x23188F650](v58, -1, -1);
      MEMORY[0x23188F650](v57, -1, -1);
    }

    else
    {

      v47 = v26;
    }

    v44 = v71;
LABEL_19:

    (*(v44 + 8))(v19, v15);
    *a8 = 1;
    [v70 refreshAllObjects];
    return;
  }

  v62 = a2;
  v30 = v26;
  if (v28 != -1)
  {
    swift_once();
  }

  v31 = __swift_project_value_buffer(v15, qword_28140BD10);
  swift_beginAccess();
  (*(v71 + 16))(v23, v31, v15);
  v32 = v30;
  v33 = sub_22B36050C();
  v34 = sub_22B360D0C();

  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    *v35 = 138412290;
    *(v35 + 4) = v32;
    *v36 = v26;
    v37 = v32;
    _os_log_impl(&dword_22B116000, v33, v34, "[UsagePointRecords] Got back object to update %@", v35, 0xCu);
    sub_22B123284(v36, &unk_27D8BAA90, &unk_22B362BC0);
    MEMORY[0x23188F650](v36, -1, -1);
    MEMORY[0x23188F650](v35, -1, -1);
  }

  (*(v71 + 8))(v23, v15);
  v38 = sub_22B35DDDC();
  [v27 setSourceTime_];

  sub_22B35DE8C();
  v39 = sub_22B35DDDC();
  (*(v64 + 8))(v14, v65);
  [v27 setCreationDate_];

  v40 = sub_22B35DCCC();
  [v27 setTariffRiders_];

  v41 = sub_22B35DCCC();
  [v27 setTariffProfiles_];

  sub_22B207390(8);
}

uint64_t sub_22B3284FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 232) = v20;
  *(v8 + 240) = v21;
  *(v8 + 216) = v19;
  *(v8 + 200) = v18;
  *(v8 + 184) = v17;
  *(v8 + 168) = v16;
  *(v8 + 152) = v15;
  *(v8 + 136) = v14;
  *(v8 + 120) = a7;
  *(v8 + 128) = a8;
  *(v8 + 104) = a5;
  *(v8 + 112) = a6;
  *(v8 + 96) = a4;
  v9 = sub_22B36052C();
  *(v8 + 248) = v9;
  *(v8 + 256) = *(v9 - 8);
  *(v8 + 264) = swift_task_alloc();
  v10 = sub_22B35DE9C();
  *(v8 + 272) = v10;
  v11 = *(v10 - 8);
  *(v8 + 280) = v11;
  *(v8 + 288) = *(v11 + 64);
  *(v8 + 296) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B328658, 0, 0);
}

uint64_t sub_22B328658()
{
  v1 = v0;
  v2 = v0[37];
  v3 = v0[34];
  v4 = v0[35];
  v31 = v3;
  v32 = v2;
  v33 = v0[29];
  v45 = v0[28];
  v38 = v0[27];
  v44 = v0[26];
  v37 = v0[25];
  v43 = v0[24];
  v36 = v0[23];
  v41 = v0[21];
  v42 = v0[22];
  v5 = v0[18];
  v39 = v0[19];
  v40 = v0[20];
  v6 = v0[16];
  v7 = v0[14];
  v34 = v0[15];
  v35 = v0[17];
  v9 = v0[12];
  v8 = v0[13];
  sub_22B35F86C();
  v0[11] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v10 = v0 + 11;
  (*(v4 + 16))(v2, v33, v3);
  v11 = (*(v4 + 80) + 160) & ~*(v4 + 80);
  v12 = swift_allocObject();
  v10[27] = v12;
  *(v12 + 2) = v10;
  *(v12 + 3) = v9;
  *(v12 + 4) = v8;
  *(v12 + 5) = v7;
  *(v12 + 6) = v34;
  *(v12 + 7) = v6;
  *(v12 + 8) = v35;
  *(v12 + 9) = v5;
  *(v12 + 10) = v39;
  *(v12 + 11) = v40;
  *(v12 + 12) = v41;
  *(v12 + 13) = v42;
  *(v12 + 14) = v36;
  *(v12 + 15) = v43;
  *(v12 + 16) = v37;
  *(v12 + 17) = v44;
  *(v12 + 18) = v38;
  *(v12 + 19) = v45;
  (*(v4 + 32))(&v12[v11], v32, v31);
  v13 = swift_allocObject();
  *(v13 + 16) = sub_22B332E2C;
  *(v13 + 24) = v12;
  *(v10 - 5) = sub_22B333230;
  *(v10 - 4) = v13;
  *(v10 - 9) = MEMORY[0x277D85DD0];
  *(v10 - 8) = 1107296256;
  *(v10 - 7) = sub_22B32556C;
  *(v10 - 6) = &block_descriptor_28_0;
  v14 = _Block_copy(v10 - 9);
  v15 = v9;

  v16 = v7;

  sub_22B144B30(v39, v40);
  sub_22B144B30(v41, v42);

  [v15 performBlockAndWait_];
  _Block_release(v14);
  LOBYTE(v11) = swift_isEscapingClosureAtFileLocation();

  if (v11)
  {
    __break(1u);
  }

  else
  {
    v25 = v1[30];
    v26 = v1[12];
    v27 = sub_22B207EFC();
    v1[39] = v27;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA238, &unk_22B365D70);
    v28 = swift_allocObject();
    v1[40] = v28;
    *(v28 + 16) = xmmword_22B363650;
    *(v28 + 32) = [v1[11] objectID];
    v29 = swift_task_alloc();
    v1[41] = v29;
    v29[2] = v26;
    v29[3] = v28;
    v29[4] = v27;
    v29[5] = v25;
    v17 = swift_task_alloc();
    v1[42] = v17;
    *v17 = v1;
    v17[1] = sub_22B328A4C;
    v22 = sub_22B1D820C;
    v21 = 0x800000022B36C2C0;
    v24 = MEMORY[0x277D84F78] + 8;
    v18 = 0;
    v19 = 0;
    v20 = 0xD000000000000044;
    v23 = v29;
  }

  return MEMORY[0x2822008A0](v17, v18, v19, v20, v21, v22, v23, v24);
}

uint64_t sub_22B328A4C()
{
  *(*v1 + 344) = v0;

  if (v0)
  {
    v2 = sub_22B328B70;
  }

  else
  {

    v2 = sub_22B328C10;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_22B328B70()
{
  v1 = *(v0 + 312);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_22B328C10()
{
  v19 = v0;

  if (qword_28140A0C8 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 256);
  v1 = *(v0 + 264);
  v3 = *(v0 + 248);
  v4 = __swift_project_value_buffer(v3, qword_28140BD10);
  swift_beginAccess();
  (*(v2 + 16))(v1, v4, v3);

  v5 = sub_22B36050C();
  v6 = sub_22B360D2C();

  v7 = os_log_type_enabled(v5, v6);
  v9 = *(v0 + 256);
  v8 = *(v0 + 264);
  v10 = *(v0 + 248);
  if (v7)
  {
    v12 = *(v0 + 184);
    v11 = *(v0 + 192);
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v18 = v14;
    *v13 = 136315138;
    *(v13 + 4) = sub_22B1A7B20(v12, v11, &v18);
    _os_log_impl(&dword_22B116000, v5, v6, "[UsagePointRecords] Added to share for %s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v14);
    MEMORY[0x23188F650](v14, -1, -1);
    MEMORY[0x23188F650](v13, -1, -1);
  }

  (*(v9 + 8))(v8, v10);
  v15 = *(v0 + 96);
  *(swift_task_alloc() + 16) = v15;
  sub_22B360E7C();

  v16 = *(v0 + 8);

  return v16();
}

void sub_22B328E74(id *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  v47 = a7;
  v48 = a8;
  v49 = sub_22B35DE9C();
  v22 = *(v49 - 8);
  MEMORY[0x28223BE20](v49);
  v24 = &v46 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22B35F86C();
  v25 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithContext_];
  v26 = *a1;
  *a1 = v25;
  v27 = v25;

  if (*(a3 + 112))
  {
    [a2 assignObject:v27 toPersistentStore:{a12, a13, a14, a15, a16, a17, a18, a19, v47, v48}];

    v28 = *a1;
    v29 = sub_22B36081C();
    [v28 setRecordID_];

    v30 = *a1;
    v31 = sub_22B36081C();
    [v30 setUsagePointID_];

    v32 = *a1;
    v33 = sub_22B35DCCC();
    [v32 setTariffProfiles_];

    v34 = *a1;
    v35 = sub_22B35DCCC();
    [v34 setTariffRiders_];

    v36 = *a1;
    v37 = sub_22B36081C();
    [v36 setZoneName_];

    v38 = *a1;
    sub_22B35DE8C();
    v39 = sub_22B35DDDC();
    (*(v22 + 8))(v24, v49);
    [v38 setCreationDate_];

    v40 = *a1;
    v41 = sub_22B36081C();
    [v40 setSubscriptionID_];

    v42 = *a1;
    v43 = sub_22B36081C();
    [v42 setUtilityID_];

    v44 = *a1;
    v45 = sub_22B35DDDC();
    [v44 setSourceTime_];
  }

  else
  {
    __break(1u);
  }
}

void sub_22B3291C4(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v50 = a1;
  v51 = a3;
  v10 = sub_22B36052C();
  v48 = *(v10 - 8);
  v49 = v10;
  MEMORY[0x28223BE20](v10);
  v47 = &v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v44 - v13;
  sub_22B35F86C();
  v15 = sub_22B35F85C();
  [v15 setResultType_];
  v52 = a2;
  if (a2 && a4)
  {
    v46 = sub_22B128014(0, &qword_281409330, 0x277CCAC30);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA220, &unk_22B363550);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_22B3634C0;
    v16 = MEMORY[0x277D837D0];
    *(v6 + 56) = MEMORY[0x277D837D0];
    v17 = sub_22B1280E4();
    v18 = v51;
    v19 = v52;
    *(v6 + 32) = v50;
    *(v6 + 40) = v19;
    *(v6 + 96) = v16;
    *(v6 + 104) = v17;
    *(v6 + 64) = v17;
    *(v6 + 72) = v18;
    *(v6 + 80) = a4;

    v20 = sub_22B360CCC();
    [v15 setPredicate_];
  }

  v21 = sub_22B360E9C();
  if (v5)
  {

    return;
  }

  v22 = v21;
  v44 = v14;
  v45 = v15;
  if (v21 >> 62)
  {
    v23 = sub_22B36109C();
    if (!v23)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v23 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v23)
    {
      goto LABEL_14;
    }
  }

  if (v23 < 1)
  {
    __break(1u);
    goto LABEL_29;
  }

  for (i = 0; i != v23; ++i)
  {
    if ((v22 & 0xC000000000000001) != 0)
    {
      v25 = MEMORY[0x23188EAC0](i, v22);
    }

    else
    {
      v25 = *(v22 + 8 * i + 32);
    }

    v26 = v25;
    [a5 deleteObject_];
  }

LABEL_14:

  sub_22B207390(4);
  v6 = v45;
  v27 = v52;
  if (!v52 || !a4)
  {
    v15 = v48;
    v14 = v49;
    if (qword_28140A0C8 == -1)
    {
LABEL_23:
      v37 = __swift_project_value_buffer(v14, qword_28140BD10);
      swift_beginAccess();
      v38 = v47;
      (*(v15 + 16))(v47, v37, v14);
      v39 = sub_22B36050C();
      v40 = sub_22B360D0C();
      if (os_log_type_enabled(v39, v40))
      {
        v41 = v6;
        v42 = swift_slowAlloc();
        *v42 = 0;
        _os_log_impl(&dword_22B116000, v39, v40, "[UsagePointRecords] Deleted All", v42, 2u);
        v43 = v42;
        v6 = v41;
        MEMORY[0x23188F650](v43, -1, -1);
      }

      (*(v15 + 8))(v38, v14);
      goto LABEL_27;
    }

LABEL_29:
    swift_once();
    goto LABEL_23;
  }

  v29 = v48;
  v28 = v49;
  if (qword_28140A0C8 != -1)
  {
    swift_once();
  }

  v30 = __swift_project_value_buffer(v28, qword_28140BD10);
  swift_beginAccess();
  v31 = v44;
  (*(v29 + 16))(v44, v30, v28);

  v32 = sub_22B36050C();
  v33 = sub_22B360D0C();

  if (os_log_type_enabled(v32, v33))
  {
    v34 = v29;
    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v53 = v36;
    *v35 = 136315394;
    *(v35 + 4) = sub_22B1A7B20(v50, v27, &v53);
    *(v35 + 12) = 2080;
    *(v35 + 14) = sub_22B1A7B20(v51, a4, &v53);
    _os_log_impl(&dword_22B116000, v32, v33, "[UsagePointRecords] Deleted %s for utility %s", v35, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x23188F650](v36, -1, -1);
    v6 = v45;
    MEMORY[0x23188F650](v35, -1, -1);

    (*(v34 + 8))(v44, v49);
  }

  else
  {

    (*(v29 + 8))(v31, v28);
    v6 = v45;
  }

LABEL_27:
  [a5 refreshAllObjects];
}

void *sub_22B329784()
{
  type metadata accessor for UsagePointRecordsManager();
  v0 = swift_allocObject();
  result = sub_22B1D5830();
  qword_28140BCE8 = v0;
  return result;
}

uint64_t sub_22B3297C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[37] = a6;
  v7[38] = v6;
  v7[35] = a4;
  v7[36] = a5;
  v7[33] = a2;
  v7[34] = a3;
  v7[32] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA8D0, &qword_22B363610);
  v7[39] = swift_task_alloc();
  v8 = sub_22B36052C();
  v7[40] = v8;
  v7[41] = *(v8 - 8);
  v7[42] = swift_task_alloc();
  v7[43] = swift_task_alloc();
  v7[44] = swift_task_alloc();
  v7[45] = swift_task_alloc();
  v7[46] = swift_task_alloc();
  v7[47] = swift_task_alloc();
  v9 = type metadata accessor for CDUsagePointRecords(0);
  v7[48] = v9;
  v7[49] = *(v9 - 8);
  v7[50] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BAF38, &qword_22B367598);
  v7[51] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA6E8, &qword_22B365990);
  v7[52] = swift_task_alloc();
  v7[53] = swift_task_alloc();
  v7[54] = swift_task_alloc();
  v10 = sub_22B35DE9C();
  v7[55] = v10;
  v11 = *(v10 - 8);
  v7[56] = v11;
  v7[57] = *(v11 + 64);
  v7[58] = swift_task_alloc();
  v7[59] = swift_task_alloc();
  v12 = sub_22B3603AC();
  v7[60] = v12;
  v7[61] = *(v12 - 8);
  v7[62] = swift_task_alloc();
  sub_22B3603FC();
  v7[63] = swift_task_alloc();
  v13 = sub_22B35F84C();
  v7[64] = v13;
  v7[65] = *(v13 - 8);
  v7[66] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B329B38, v6, 0);
}

uint64_t sub_22B329B38(__n128 a1)
{
  v110 = v1;
  v2 = v1;
  if (sub_22B360F5C() == 0x696F506567617355 && v3 == 0xEA0000000000746ELL)
  {
  }

  else
  {
    v5 = sub_22B36134C();

    if ((v5 & 1) == 0)
    {
      if (qword_28140A0C8 != -1)
      {
        swift_once();
      }

      v6 = v1[43];
      v7 = v1[40];
      v8 = v1[41];
      v9 = __swift_project_value_buffer(v2[40], qword_28140BD10);
      swift_beginAccess();
      (*(v8 + 16))(v6, v9, v7);
      v10 = sub_22B36050C();
      v11 = sub_22B360D1C();
      if (os_log_type_enabled(v10, v11))
      {
        v12 = swift_slowAlloc();
        *v12 = 0;
        _os_log_impl(&dword_22B116000, v10, v11, "[Dropbox Bridge] Record is not of type UsagePoint!", v12, 2u);
        MEMORY[0x23188F650](v12, -1, -1);
      }

      v13 = v2[43];
      v14 = v2[40];
      v15 = v2[41];

      (*(v15 + 8))(v13, v14);
      sub_22B134CDC();
      swift_allocError();
      v17 = 20;
LABEL_22:
      *v16 = v17;
      swift_willThrow();
LABEL_45:

      v99 = v2[1];

      return v99();
    }
  }

  v18 = v1[38];
  v19 = v18[14];
  v2[67] = v19;
  if (!v19)
  {
    if (qword_28140A0C8 != -1)
    {
      swift_once();
    }

    v27 = v2[44];
    v28 = v2[40];
    v29 = v2[41];
    v30 = __swift_project_value_buffer(v28, qword_28140BD10);
    swift_beginAccess();
    (*(v29 + 16))(v27, v30, v28);
    v31 = sub_22B36050C();
    v32 = sub_22B360D1C();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&dword_22B116000, v31, v32, "[Dropbox Bridge] failed to get coredata model instance", v33, 2u);
      MEMORY[0x23188F650](v33, -1, -1);
    }

    v34 = v2[44];
    v35 = v2[40];
    v36 = v2[41];

    (*(v36 + 8))(v34, v35);
    sub_22B134CDC();
    swift_allocError();
    v17 = 13;
    goto LABEL_22;
  }

  v20 = v2[32];
  v21 = v18[15];
  v2[68] = v21;

  v22 = v21;
  sub_22B1CA368(v20, &v107);
  v23 = *(&v107 + 1);
  v2[69] = v107;
  v2[70] = v23;
  v24 = v108;
  *(v2 + 71) = v108;

  v25 = v18[16];
  v2[73] = v25;
  if (!v25)
  {

    sub_22B134CDC();
    swift_allocError();
    *v37 = 7;
    swift_willThrow();
    sub_22B11EDC0(v24, *(&v24 + 1));

    goto LABEL_45;
  }

  if (!v23)
  {
    v38 = v25;
    goto LABEL_25;
  }

  if (*(&v24 + 1) >> 60 == 15)
  {
    v26 = v25;

LABEL_25:
    if (qword_28140A0C8 != -1)
    {
      swift_once();
    }

    v39 = v2[45];
    v40 = v2[40];
    v41 = v2[41];
    v42 = __swift_project_value_buffer(v40, qword_28140BD10);
    swift_beginAccess();
    (*(v41 + 16))(v39, v42, v40);
    v43 = sub_22B36050C();
    v44 = sub_22B360D1C();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      *v45 = 0;
      _os_log_impl(&dword_22B116000, v43, v44, "[Dropbox Bridge] UsagePoint Record is corrupted", v45, 2u);
      MEMORY[0x23188F650](v45, -1, -1);
    }

    v46 = v2[45];
    v47 = v2[40];
    v48 = v2[41];

    (*(v48 + 8))(v46, v47);
    sub_22B134CDC();
    v49 = swift_allocError();
    *v50 = 21;
    swift_willThrow();
LABEL_40:
    if (qword_28140A0C8 != -1)
    {
      swift_once();
    }

    v81 = v2[41];
    v80 = v2[42];
    v82 = v2[40];
    v83 = __swift_project_value_buffer(v82, qword_28140BD10);
    swift_beginAccess();
    (*(v81 + 16))(v80, v83, v82);
    v84 = v49;
    v85 = sub_22B36050C();
    v86 = sub_22B360D1C();

    if (os_log_type_enabled(v85, v86))
    {
      v87 = swift_slowAlloc();
      v88 = swift_slowAlloc();
      *v87 = 138412290;
      v89 = v49;
      v90 = _swift_stdlib_bridgeErrorToNSError();
      *(v87 + 4) = v90;
      *v88 = v90;
      _os_log_impl(&dword_22B116000, v85, v86, "[Dropbox Bridge] Failed handle UsagePoint payload %@", v87, 0xCu);
      sub_22B123284(v88, &unk_27D8BAA90, &unk_22B362BC0);
      MEMORY[0x23188F650](v88, -1, -1);
      MEMORY[0x23188F650](v87, -1, -1);
    }

    v91 = v2[73];
    v92 = v2[72];
    v93 = v2[71];
    v94 = v2[68];
    v95 = v85;
    v97 = v2[41];
    v96 = v2[42];
    v98 = v2[40];

    (*(v97 + 8))(v96, v98);
    swift_willThrow();

    sub_22B11EDC0(v93, v92);

    goto LABEL_45;
  }

  v109 = 0;
  v107 = 0u;
  v108 = 0u;
  sub_22B1D825C(v24, *(&v24 + 1));
  v51 = v25;
  sub_22B1D825C(v24, *(&v24 + 1));
  sub_22B3603EC();
  sub_22B332F4C(&qword_27D8BABB8, MEMORY[0x277D07448], MEMORY[0x277D07440]);
  sub_22B36041C();
  v52 = sub_22B35F70C();
  v54 = v53;

  v55 = HIBYTE(v54) & 0xF;
  if ((v54 & 0x2000000000000000) == 0)
  {
    v55 = v52 & 0xFFFFFFFFFFFFLL;
  }

  if (!v55 || (v56 = *(sub_22B35F7EC() + 16), , !v56))
  {

    if (qword_28140A0C8 != -1)
    {
      swift_once();
    }

    v66 = v2[46];
    v67 = v2[40];
    v68 = v2[41];
    v69 = __swift_project_value_buffer(v67, qword_28140BD10);
    swift_beginAccess();
    (*(v68 + 16))(v66, v69, v67);
    v70 = sub_22B36050C();
    v71 = sub_22B360D1C();
    if (os_log_type_enabled(v70, v71))
    {
      v72 = swift_slowAlloc();
      *v72 = 0;
      _os_log_impl(&dword_22B116000, v70, v71, "[Dropbox Bridge] UsagePoint Record Payload is corrupted", v72, 2u);
      MEMORY[0x23188F650](v72, -1, -1);
    }

    v106 = v2[66];
    v73 = v2[65];
    v74 = v2[64];
    v75 = v2[46];
    v76 = v2;
    v77 = v2[41];
    v78 = v76[40];

    (*(v77 + 8))(v75, v78);
    v2 = v76;
    sub_22B134CDC();
    v49 = swift_allocError();
    *v79 = 21;
    swift_willThrow();
    sub_22B11EDC0(v24, *(&v24 + 1));
    (*(v73 + 8))(v106, v74);
    goto LABEL_40;
  }

  v57 = v2[66];
  v58 = [v2[37] recordID];
  v59 = [v58 zoneID];

  v60 = [v59 zoneName];
  v61 = sub_22B36084C();
  v63 = v62;

  v2[74] = v61;
  v2[75] = v63;
  *(v2 + 13) = xmmword_22B366E20;
  *(v2 + 14) = xmmword_22B366E20;
  v64 = MEMORY[0x23188EEB0]();
  sub_22B32B924(v57, v2 + 28, v2 + 26, v2 + 30, v65);
  v2[76] = 0;
  v102 = v2[61];
  v101 = v2[62];
  v103 = v2[60];
  objc_autoreleasePoolPop(v64);
  v2[77] = sub_22B35F70C();
  v2[78] = v104;
  v105 = *(v2 + 13);
  *(v2 + 79) = *(v2 + 14);
  *(v2 + 81) = v105;
  sub_22B35F72C();
  sub_22B36038C();
  (*(v102 + 8))(v101, v103);

  return MEMORY[0x2822009F8](sub_22B32A710, 0, 0);
}

uint64_t sub_22B32A710()
{
  v108 = v0;
  v1 = *(v0 + 624);
  v2 = *(v0 + 616);
  v3 = *(v0 + 608);
  v4 = *(v0 + 584);
  v5 = *(v0 + 424);
  v7 = *(v0 + 384);
  v6 = *(v0 + 392);
  v101 = *(v0 + 264);
  v104 = *(v0 + 280);
  *(v0 + 696) = 0;
  v8 = MEMORY[0x23188EEB0]();
  v9 = MEMORY[0x23188EEB0]();
  (*(v6 + 56))(v5, 1, 1, v7);
  *(v0 + 248) = 0;
  v10 = swift_task_alloc();
  *(v10 + 16) = v101;
  *(v10 + 32) = v104;
  *(v10 + 48) = v2;
  *(v10 + 56) = v1;
  *(v10 + 64) = v4;
  *(v10 + 72) = v5;
  *(v10 + 80) = v0 + 248;
  sub_22B360E7C();
  if (v3)
  {
    v11 = *(v0 + 448);
    v12 = *(v0 + 424);

    sub_22B123284(v12, &qword_27D8BA6E8, &qword_22B365990);
    objc_autoreleasePoolPop(v9);
    objc_autoreleasePoolPop(v8);
    *(v0 + 688) = v3;
    v13 = *(v0 + 304);
    (*(v11 + 8))(*(v0 + 472), *(v0 + 440));
    v14 = sub_22B32B5FC;
LABEL_16:

    return MEMORY[0x2822009F8](v14, v13, 0);
  }

  v105 = v8;
  v102 = (v0 + 696);
  v16 = *(v0 + 424);
  v15 = *(v0 + 432);
  v18 = *(v0 + 408);
  v17 = *(v0 + 416);
  v19 = *(v0 + 392);
  v90 = *(v0 + 384);

  sub_22B170BE0(v16, v18, &qword_27D8BA6E8, &qword_22B365990);
  v97 = *(v0 + 248);
  sub_22B123284(v16, &qword_27D8BA6E8, &qword_22B365990);
  objc_autoreleasePoolPop(v9);
  sub_22B332B38(v18, v15);
  sub_22B170BE0(v15, v17, &qword_27D8BA6E8, &qword_22B365990);
  if ((*(v19 + 48))(v17, 1, v90) == 1)
  {
    v20 = (v0 + 416);
    sub_22B123284(*(v0 + 432), &qword_27D8BA6E8, &qword_22B365990);

LABEL_10:
    sub_22B123284(*v20, &qword_27D8BA6E8, &qword_22B365990);
    v32 = (v0 + 696);
    *v102 = 1;
    v36 = v105;
    goto LABEL_11;
  }

  v20 = (v0 + 432);
  sub_22B333058(*(v0 + 416), *(v0 + 400), type metadata accessor for CDUsagePointRecords);
  if (!v97)
  {
LABEL_9:
    sub_22B332FF8(*(v0 + 400), type metadata accessor for CDUsagePointRecords);
    goto LABEL_10;
  }

  sub_22B332F4C(&qword_28140B490, MEMORY[0x277CC9578], MEMORY[0x277CC9590]);
  v21 = v97;
  if (sub_22B36074C())
  {
    v94 = *(v0 + 656);
    v98 = *(v0 + 648);
    v82 = *(v0 + 632);
    v84 = *(v0 + 640);
    v22 = *(v0 + 584);
    v80 = *(v0 + 464);
    v24 = *(v0 + 448);
    v23 = *(v0 + 456);
    v25 = *(v0 + 440);
    v88 = *(v0 + 400);
    v91 = *(v0 + 432);
    (*(v24 + 16))();
    v26 = (*(v24 + 80) + 32) & ~*(v24 + 80);
    v27 = (v23 + v26 + 7) & 0xFFFFFFFFFFFFFFF8;
    v28 = (v27 + 23) & 0xFFFFFFFFFFFFFFF8;
    v29 = swift_allocObject();
    *(v29 + 16) = v22;
    *(v29 + 24) = v21;
    (*(v24 + 32))(v29 + v26, v80, v25);
    v30 = (v29 + v27);
    *v30 = v98;
    v30[1] = v94;
    v31 = (v29 + v28);
    *v31 = v82;
    v31[1] = v84;
    *(v29 + ((v28 + 23) & 0xFFFFFFFFFFFFFFF8)) = v102;
    v32 = (v0 + 696);
    v20 = swift_allocObject();
    v20[2] = sub_22B332D54;
    v20[3] = v29;
    *(v0 + 48) = sub_22B332E04;
    *(v0 + 56) = v20;
    *(v0 + 16) = MEMORY[0x277D85DD0];
    *(v0 + 24) = 1107296256;
    *(v0 + 32) = sub_22B32556C;
    *(v0 + 40) = &block_descriptor_29;
    v33 = _Block_copy((v0 + 16));
    v34 = v22;
    v35 = v21;
    sub_22B144B30(v98, v94);
    sub_22B144B30(v82, v84);

    [v34 performBlockAndWait_];
    _Block_release(v33);

    sub_22B332FF8(v88, type metadata accessor for CDUsagePointRecords);
    sub_22B123284(v91, &qword_27D8BA6E8, &qword_22B365990);
    LOBYTE(v33) = swift_isEscapingClosureAtFileLocation();

    v36 = v105;
    if ((v33 & 1) == 0)
    {
      goto LABEL_11;
    }

    __break(1u);
    goto LABEL_9;
  }

  if (qword_28140A0C8 != -1)
  {
    swift_once();
  }

  v58 = *(v0 + 376);
  v60 = *(v0 + 320);
  v59 = *(v0 + 328);
  v61 = __swift_project_value_buffer(v60, qword_28140BD10);
  swift_beginAccess();
  (*(v59 + 16))(v58, v61, v60);

  v62 = sub_22B36050C();
  v63 = sub_22B360D2C();

  if (os_log_type_enabled(v62, v63))
  {
    v64 = *(v0 + 560);
    v65 = *(v0 + 552);
    v96 = *(v0 + 400);
    v100 = *(v0 + 432);
    v93 = *(v0 + 376);
    v67 = *(v0 + 320);
    v66 = *(v0 + 328);
    v68 = swift_slowAlloc();
    v69 = swift_slowAlloc();
    v107[0] = v69;
    *v68 = 136315138;
    *(v68 + 4) = sub_22B1A7B20(v65, v64, v107);
    _os_log_impl(&dword_22B116000, v62, v63, "[UsagePointRecords] Newer record exists for %s. Skip insert", v68, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v69);
    MEMORY[0x23188F650](v69, -1, -1);
    MEMORY[0x23188F650](v68, -1, -1);

    (*(v66 + 8))(v93, v67);
    sub_22B332FF8(v96, type metadata accessor for CDUsagePointRecords);
    v70 = v100;
  }

  else
  {
    v71 = *(v0 + 432);
    v72 = *(v0 + 400);
    v73 = *(v0 + 376);
    v75 = *(v0 + 320);
    v74 = *(v0 + 328);

    (*(v74 + 8))(v73, v75);
    sub_22B332FF8(v72, type metadata accessor for CDUsagePointRecords);
    v70 = v71;
  }

  sub_22B123284(v70, &qword_27D8BA6E8, &qword_22B365990);
  v36 = v105;
  v32 = (v0 + 696);
LABEL_11:
  objc_autoreleasePoolPop(v36);
  if (*v32 != 1)
  {
    v57 = *(v0 + 448);
    sub_22B11EDC0(*(v0 + 568), *(v0 + 576));

    v13 = *(v0 + 304);
    (*(v57 + 8))(*(v0 + 472), *(v0 + 440));
    v14 = sub_22B32B450;
    goto LABEL_16;
  }

  v95 = *(v0 + 648);
  v99 = *(v0 + 656);
  v89 = *(v0 + 640);
  v85 = *(v0 + 624);
  v86 = *(v0 + 632);
  v83 = *(v0 + 616);
  *aBlock = *(v0 + 592);
  v37 = *(v0 + 584);
  v81 = *(v0 + 552);
  v38 = *(v0 + 544);
  v39 = *(v0 + 536);
  v41 = *(v0 + 464);
  v40 = *(v0 + 472);
  v42 = *(v0 + 448);
  v77 = *(v0 + 456);
  v43 = *(v0 + 440);
  v44 = *(v0 + 312);
  v103 = v44;
  v92 = *(v0 + 296);
  v106 = *(v0 + 288);
  v45 = *(v0 + 272);
  v78 = *(v0 + 264);
  v79 = *(v0 + 280);
  v46 = sub_22B360B6C();
  (*(*(v46 - 8) + 56))(v44, 1, 1, v46);
  (*(v42 + 16))(v41, v40, v43);
  v47 = (*(v42 + 80) + 168) & ~*(v42 + 80);
  v48 = swift_allocObject();
  *(v48 + 16) = 0;
  *(v48 + 24) = 0;
  *(v48 + 32) = v37;
  *(v48 + 40) = v39;
  *(v48 + 48) = v38;
  *(v48 + 56) = v81;
  *(v48 + 72) = v83;
  *(v48 + 80) = v85;
  *(v48 + 88) = v86;
  *(v48 + 96) = v89;
  *(v48 + 104) = v95;
  *(v48 + 112) = v99;
  *(v48 + 120) = *aBlock;
  *(v48 + 136) = v78;
  *(v48 + 144) = v45;
  *(v48 + 152) = v79;
  *(v48 + 160) = v106;
  (*(v42 + 32))(v48 + v47, v41, v43);
  *(v48 + ((v77 + v47 + 7) & 0xFFFFFFFFFFFFFFF8)) = v92;
  v49 = v37;
  sub_22B144B30(v95, v99);
  sub_22B144B30(v86, v89);

  v50 = v38;

  v51 = v92;
  v52 = sub_22B325DE8(0, 0, v103, &unk_22B3675A8, v48);
  *(v0 + 664) = v52;
  v53 = swift_task_alloc();
  *(v0 + 672) = v53;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8BACE0, &unk_22B365D60);
  *v53 = v0;
  v53[1] = sub_22B32B204;
  v55 = MEMORY[0x277D84950];
  v56 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x282200430](v54, v52, v56, v54, v55);
}

uint64_t sub_22B32B204()
{
  v2 = *v1;
  *(*v1 + 680) = v0;

  if (v0)
  {

    v3 = sub_22B32B3CC;
  }

  else
  {
    sub_22B11EDC0(*(v2 + 568), *(v2 + 576));

    v3 = sub_22B32B350;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_22B32B350()
{
  v1 = v0[38];
  (*(v0[56] + 8))(v0[59], v0[55]);

  return MEMORY[0x2822009F8](sub_22B32B450, v1, 0);
}

uint64_t sub_22B32B3CC()
{
  v0[86] = v0[85];
  v1 = v0[38];
  (*(v0[56] + 8))(v0[59], v0[55]);

  return MEMORY[0x2822009F8](sub_22B32B5FC, v1, 0);
}

uint64_t sub_22B32B450()
{
  v1 = *(v0 + 576);
  v2 = *(v0 + 568);
  v3 = *(v0 + 544);
  v4 = *(v0 + 528);
  v5 = *(v0 + 520);
  v6 = *(v0 + 512);

  sub_22B11EDC0(v2, v1);
  (*(v5 + 8))(v4, v6);
  sub_22B12F174(*(v0 + 224), *(v0 + 232));
  sub_22B12F174(*(v0 + 208), *(v0 + 216));

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_22B32B5FC()
{
  v1 = v0[66];
  v2 = v0[65];
  v3 = v0[64];
  sub_22B11EDC0(v0[71], v0[72]);
  (*(v2 + 8))(v1, v3);
  sub_22B12F174(v0[28], v0[29]);
  sub_22B12F174(v0[26], v0[27]);
  v4 = v0[86];
  if (qword_28140A0C8 != -1)
  {
    swift_once();
  }

  v5 = v0[41];
  v6 = v0[42];
  v7 = v0[40];
  v8 = __swift_project_value_buffer(v7, qword_28140BD10);
  swift_beginAccess();
  (*(v5 + 16))(v6, v8, v7);
  v9 = v4;
  v10 = sub_22B36050C();
  v11 = sub_22B360D1C();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *v12 = 138412290;
    v14 = v4;
    v15 = _swift_stdlib_bridgeErrorToNSError();
    *(v12 + 4) = v15;
    *v13 = v15;
    _os_log_impl(&dword_22B116000, v10, v11, "[Dropbox Bridge] Failed handle UsagePoint payload %@", v12, 0xCu);
    sub_22B123284(v13, &unk_27D8BAA90, &unk_22B362BC0);
    MEMORY[0x23188F650](v13, -1, -1);
    MEMORY[0x23188F650](v12, -1, -1);
  }

  v16 = v0[73];
  v17 = v0[72];
  v18 = v0[71];
  v19 = v0[68];
  v20 = v10;
  v22 = v0[41];
  v21 = v0[42];
  v23 = v0[40];

  (*(v22 + 8))(v21, v23);
  swift_willThrow();

  sub_22B11EDC0(v18, v17);

  v24 = v0[1];

  return v24();
}

void sub_22B32B924(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, __n128 a5)
{
  v62 = a4;
  v6 = v5;
  v59 = a3;
  v60 = a2;
  v71[1] = *MEMORY[0x277D85DE8];
  v8 = sub_22B35F74C();
  v9 = *(v8 - 8);
  v64 = v8;
  v65 = v9;
  MEMORY[0x28223BE20](v8);
  v63 = &v59 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_22B35F7CC();
  v12 = *(v11 - 1);
  MEMORY[0x28223BE20](v11);
  v14 = &v59 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = a1;
  v15 = sub_22B35F7EC();
  v16 = v15;
  v70 = *(v15 + 16);
  if (v70)
  {
    v17 = 0;
    v68 = v12 + 16;
    v69 = (v12 + 8);
    v18 = MEMORY[0x277D84F90];
    v66 = v15;
    v67 = v11;
    while (1)
    {
      if (v17 >= *(v16 + 16))
      {
        __break(1u);
LABEL_28:
        __break(1u);
      }

      (*(v12 + 16))(v14, v16 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * v17, v11);
      sub_22B332F4C(&qword_27D8BAF28, MEMORY[0x277D07438], MEMORY[0x277D07430]);
      v19 = sub_22B36042C();
      if (v6)
      {
        break;
      }

      v21 = v19;
      v22 = v20;
      (*v69)(v14, v11);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v18 = sub_22B32D0BC(0, *(v18 + 2) + 1, 1, v18);
      }

      v24 = *(v18 + 2);
      v23 = *(v18 + 3);
      if (v24 >= v23 >> 1)
      {
        v18 = sub_22B32D0BC((v23 > 1), v24 + 1, 1, v18);
      }

      ++v17;
      *(v18 + 2) = v24 + 1;
      v25 = &v18[16 * v24];
      *(v25 + 4) = v21;
      *(v25 + 5) = v22;
      v6 = 0;
      v16 = v66;
      v11 = v67;
      if (v70 == v17)
      {
        goto LABEL_10;
      }
    }

    (*v69)(v14, v11);

    v44 = v6;
    goto LABEL_26;
  }

LABEL_10:

  v26 = objc_opt_self();
  v27 = sub_22B360A3C();

  v71[0] = 0;
  v28 = [v26 archivedDataWithRootObject:v27 requiringSecureCoding:0 error:v71];

  v29 = v71[0];
  if (v28)
  {
    v67 = v26;
    v30 = sub_22B35DCDC();
    v32 = v31;

    v33 = v60;
    v34 = *v60;
    v35 = v60[1];
    *v60 = v30;
    v33[1] = v32;
    sub_22B12F174(v34, v35);
    v36 = sub_22B35F80C();
    v70 = *(v36 + 16);
    if (v70)
    {
      v37 = 0;
      v68 = v65 + 16;
      v69 = (v65 + 8);
      v38 = MEMORY[0x277D84F90];
      while (1)
      {
        if (v37 >= *(v36 + 16))
        {
          goto LABEL_28;
        }

        v39 = v64;
        v40 = v36;
        v41 = v63;
        (*(v65 + 16))(v63, v36 + ((*(v65 + 80) + 32) & ~*(v65 + 80)) + *(v65 + 72) * v37, v64);
        sub_22B332F4C(&qword_27D8BAF18, MEMORY[0x277D07428], MEMORY[0x277D07420]);
        v42 = sub_22B36042C();
        v44 = v6;
        if (v6)
        {
          break;
        }

        v45 = v42;
        v46 = v43;
        (*v69)(v41, v39);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v38 = sub_22B32D0BC(0, *(v38 + 2) + 1, 1, v38);
        }

        v36 = v40;
        v48 = *(v38 + 2);
        v47 = *(v38 + 3);
        if (v48 >= v47 >> 1)
        {
          v38 = sub_22B32D0BC((v47 > 1), v48 + 1, 1, v38);
          v36 = v40;
        }

        ++v37;
        *(v38 + 2) = v48 + 1;
        v49 = &v38[16 * v48];
        *(v49 + 4) = v45;
        *(v49 + 5) = v46;
        v6 = 0;
        if (v70 == v37)
        {
          goto LABEL_22;
        }
      }

      (*v69)(v41, v39);

      goto LABEL_26;
    }

LABEL_22:

    v50 = sub_22B360A3C();

    v71[0] = 0;
    v51 = [v67 archivedDataWithRootObject:v50 requiringSecureCoding:0 error:v71];

    v29 = v71[0];
    if (v51)
    {
      v52 = sub_22B35DCDC();
      v54 = v53;

      v55 = v59;
      v56 = *v59;
      v57 = v59[1];
      *v59 = v52;
      v55[1] = v54;
      sub_22B12F174(v56, v57);
      return;
    }
  }

  v58 = v29;
  v44 = sub_22B35DB9C();

  swift_willThrow();
LABEL_26:
  *v62 = v44;
}

void sub_22B32BF44(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v7 = v5;
  v31 = a3;
  v32 = a4;
  v33 = a5;
  v34 = a1;
  v9 = sub_22B36052C();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_28140A0C8 != -1)
  {
    swift_once();
  }

  v13 = __swift_project_value_buffer(v9, qword_28140BD10);
  swift_beginAccess();
  (*(v10 + 16))(v12, v13, v9);

  v14 = sub_22B36050C();
  v15 = sub_22B360D2C();

  v16 = os_log_type_enabled(v14, v15);
  v30 = a2;
  if (v16)
  {
    v17 = a2;
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v29[1] = v6;
    v20 = v19;
    v35 = v19;
    *v18 = 136380675;
    *(v18 + 4) = sub_22B1A7B20(v34, v17, &v35);
    _os_log_impl(&dword_22B116000, v14, v15, "Get usagepoint for %{private}s", v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v20);
    MEMORY[0x23188F650](v20, -1, -1);
    MEMORY[0x23188F650](v18, -1, -1);
  }

  (*(v10 + 8))(v12, v9);
  if (*(v7 + 112))
  {
    v21 = *(v7 + 128);
    if (v21)
    {
      v22 = *(v7 + 120);
      sub_22B1231A0(*(v7 + 112), v22);
      v23 = v21;
      v24 = MEMORY[0x23188EEB0]();
      MEMORY[0x28223BE20](v24);
      v26 = v30;
      v25 = v31;
      v29[-6] = v34;
      v29[-5] = v26;
      v29[-4] = v25;
      v29[-3] = v32;
      v29[-2] = v23;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA6E8, &qword_22B365990);
      sub_22B360E7C();
      objc_autoreleasePoolPop(v24);
    }

    else
    {
      sub_22B134CDC();
      swift_allocError();
      *v28 = 7;
      swift_willThrow();
    }
  }

  else
  {
    v27 = type metadata accessor for CDUsagePointRecords(0);
    (*(*(v27 - 8) + 56))(v33, 1, 1, v27);
  }
}

void sub_22B32C2B8(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = v6;
  v34 = a5;
  v35 = a6;
  v36 = a3;
  v37 = a1;
  v11 = sub_22B36052C();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_28140A0C8 != -1)
  {
    swift_once();
  }

  v15 = __swift_project_value_buffer(v11, qword_28140BD10);
  swift_beginAccess();
  (*(v12 + 16))(v14, v15, v11);

  v16 = sub_22B36050C();
  v17 = sub_22B360D2C();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v33 = v7;
    v19 = v18;
    v20 = swift_slowAlloc();
    v32 = v8;
    v21 = a4;
    v22 = v20;
    v38 = v20;
    *v19 = 136380675;
    *(v19 + 4) = sub_22B1A7B20(v37, a2, &v38);
    _os_log_impl(&dword_22B116000, v16, v17, "Get usagepoint for %{private}s", v19, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v22);
    v23 = v22;
    a4 = v21;
    v8 = v32;
    MEMORY[0x23188F650](v23, -1, -1);
    MEMORY[0x23188F650](v19, -1, -1);
  }

  (*(v12 + 8))(v14, v11);
  if (*(v8 + 112))
  {
    v24 = *(v8 + 128);
    if (v24)
    {
      v25 = *(v8 + 120);
      sub_22B1231A0(*(v8 + 112), v25);
      v26 = v24;
      v27 = MEMORY[0x23188EEB0]();
      MEMORY[0x28223BE20](v27);
      v28 = v35;
      *(&v31 - 8) = v34;
      *(&v31 - 7) = v28;
      v29 = v36;
      *(&v31 - 6) = v37;
      *(&v31 - 5) = a2;
      *(&v31 - 4) = v29;
      *(&v31 - 3) = a4;
      *(&v31 - 2) = v26;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BAF10, &unk_22B367570);
      sub_22B360E7C();
      objc_autoreleasePoolPop(v27);
    }

    else
    {
      sub_22B134CDC();
      swift_allocError();
      *v30 = 7;
      swift_willThrow();
    }
  }
}

uint64_t sub_22B32C61C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[8] = a4;
  v5[9] = v4;
  v5[6] = a2;
  v5[7] = a3;
  v5[5] = a1;
  v6 = sub_22B36052C();
  v5[10] = v6;
  v5[11] = *(v6 - 8);
  v5[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B32C6E4, v4, 0);
}

uint64_t sub_22B32C6E4()
{
  if (qword_28140A0C8 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 88);
  v1 = *(v0 + 96);
  v3 = *(v0 + 80);
  v4 = __swift_project_value_buffer(v3, qword_28140BD10);
  swift_beginAccess();
  (*(v2 + 16))(v1, v4, v3);
  v5 = sub_22B36050C();
  v6 = sub_22B360D2C();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_22B116000, v5, v6, "Delete usage point", v7, 2u);
    MEMORY[0x23188F650](v7, -1, -1);
  }

  v9 = *(v0 + 88);
  v8 = *(v0 + 96);
  v11 = *(v0 + 72);
  v10 = *(v0 + 80);

  (*(v9 + 8))(v8, v10);
  v12 = *(v11 + 112);
  if (!v12)
  {
    goto LABEL_8;
  }

  v13 = *(*(v0 + 72) + 128);
  if (v13)
  {
    v14 = *(v11 + 120);
    v16 = *(v0 + 56);
    v15 = *(v0 + 64);
    v23 = *(v0 + 40);
    sub_22B1231A0(v12, v14);
    v17 = v13;
    v18 = MEMORY[0x23188EEB0]();
    v19 = swift_task_alloc();
    *(v19 + 16) = v23;
    *(v19 + 32) = v16;
    *(v19 + 40) = v15;
    *(v19 + 48) = v17;
    sub_22B360E7C();

    objc_autoreleasePoolPop(v18);

LABEL_8:

    v20 = *(v0 + 8);
    goto LABEL_10;
  }

  sub_22B134CDC();
  swift_allocError();
  *v21 = 7;
  swift_willThrow();

  v20 = *(v0 + 8);
LABEL_10:

  return v20();
}

void *sub_22B32C964(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v29 = a1;
  v9 = sub_22B36052C();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_28140A0C8 != -1)
  {
    swift_once();
  }

  v13 = __swift_project_value_buffer(v9, qword_28140BD10);
  swift_beginAccess();
  (*(v10 + 16))(v12, v13, v9);

  v14 = sub_22B36050C();
  v15 = sub_22B360D2C();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v28 = a3;
    v17 = a4;
    v18 = v16;
    v19 = swift_slowAlloc();
    v30 = v19;
    *v18 = 136380675;
    *(v18 + 4) = sub_22B1A7B20(v29, a2, &v30);
    _os_log_impl(&dword_22B116000, v14, v15, "Get usagepoint count for %{private}s", v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v19);
    MEMORY[0x23188F650](v19, -1, -1);
    v20 = v18;
    a4 = v17;
    a3 = v28;
    MEMORY[0x23188F650](v20, -1, -1);
  }

  (*(v10 + 8))(v12, v9);
  v21 = v5[14];
  if (!v21)
  {
    return 0;
  }

  v22 = v5[16];
  if (!v22)
  {
    return 0;
  }

  v23 = v5[15];
  sub_22B1231A0(v21, v23);
  v24 = v22;
  v25 = MEMORY[0x23188EEB0]();
  MEMORY[0x28223BE20](v25);
  *(&v27 - 6) = v29;
  *(&v27 - 5) = a2;
  *(&v27 - 4) = a3;
  *(&v27 - 3) = a4;
  *(&v27 - 2) = v24;
  sub_22B360E7C();
  objc_autoreleasePoolPop(v25);

  return v30;
}

char *sub_22B32CD20(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA228, &qword_22B367FF0);
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

char *sub_22B32CE54(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BAFD8, &qword_22B367698);
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

void *sub_22B32CF60(void *result, int64_t a2, char a3, void *a4)
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

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BB028, &qword_22B3676F8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BB030, &unk_22B367700);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_22B32D0BC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BAF40, &unk_22B3675B8);
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

void *sub_22B32D254(void *result, int64_t a2, char a3, void *a4)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BAF58, &qword_22B3675D8);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA828, qword_22B365C20) - 8);
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
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA828, qword_22B365C20) - 8);
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

char *sub_22B32D584(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BAFE8, &unk_22B3676A8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 29;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 2);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[4 * v8])
    {
      memmove(v13, v14, 4 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 4 * v8);
  }

  return v10;
}

char *sub_22B32D69C(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    v14 = v13 - 32;
    if (v13 < 32)
    {
      v14 = v13 - 25;
    }

    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * (v14 >> 3);
  }

  else
  {
    v12 = MEMORY[0x277D84F90];
  }

  v15 = v12 + 32;
  v16 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v15 >= &v16[8 * v10])
    {
      memmove(v15, v16, 8 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v15, v16, 8 * v10);
  }

  return v12;
}

char *sub_22B32D838(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BAF90, &unk_22B367630);
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

char *sub_22B32D944(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BAF68, &qword_22B3675F0);
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

void *sub_22B32DAC8(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
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

void *sub_22B32DCA4(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA228, &qword_22B367FF0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 17;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 4);
  return result;
}

void *sub_22B32DD28(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BAF80, &unk_22B367618);
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA870, &unk_22B366480) - 8);
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

void *sub_22B32DE30(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA238, &unk_22B365D70);
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

uint64_t type metadata accessor for CDUsagePointRecords(uint64_t a1)
{
  result = qword_27D8BB038;
  if (!qword_27D8BB038)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22B32DF50(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  sub_22B36149C();
  sub_22B3608FC();
  v8 = sub_22B3614DC();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (sub_22B36134C() & 1) != 0)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v16 = (*(v7 + 48) + 16 * v10);
    v17 = v16[1];
    *a1 = *v16;
    a1[1] = v17;

    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;

    sub_22B3302AC(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_22B32E0A0(uint64_t a1, uint64_t *a2)
{
  v4 = *(a2 + 8);
  v41 = *v2;
  sub_22B36149C();
  v5 = *a2;
  v6 = a2[1];
  v7 = a2[3];
  v8 = a2[4];
  v9 = a2[5];
  v10 = a2[6];
  v39 = a2;
  v12 = a2[7];
  v11 = a2[8];
  sub_22B3608FC();
  v48 = v4;
  sub_22B3614CC();
  v46 = v8;
  v47 = v7;
  sub_22B3608FC();
  v44 = v10;
  v45 = v9;
  sub_22B3608FC();
  v42 = v11;
  v43 = v12;
  sub_22B3608FC();
  v13 = sub_22B3614DC();
  v14 = -1 << *(v41 + 32);
  v15 = v13 & ~v14;
  if ((*(v41 + 56 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15))
  {
    v49 = ~v14;
    v50 = *(v41 + 48);
    while (1)
    {
      v16 = v50 + 72 * v15;
      v17 = *(v16 + 16);
      v19 = *(v16 + 24);
      v18 = *(v16 + 32);
      v20 = *(v16 + 40);
      v21 = *(v16 + 48);
      v23 = *(v16 + 56);
      v22 = *(v16 + 64);
      v24 = *v16 == v5 && *(v16 + 8) == v6;
      if (v24 || (sub_22B36134C()) && v17 == v48)
      {
        v25 = v19 == v47 && v18 == v46;
        if (v25 || (sub_22B36134C() & 1) != 0)
        {
          v26 = v20 == v45 && v21 == v44;
          if (v26 || (sub_22B36134C() & 1) != 0)
          {
            v27 = v23 == v43 && v22 == v42;
            if (v27 || (sub_22B36134C() & 1) != 0)
            {
              break;
            }
          }
        }
      }

      v15 = (v15 + 1) & v49;
      if (((*(v41 + 56 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
      {
        goto LABEL_26;
      }
    }

    sub_22B172074(v39);
    v28 = *(v41 + 48) + 72 * v15;
    v52[0] = *v28;
    v30 = *(v28 + 32);
    v29 = *(v28 + 48);
    v31 = *(v28 + 64);
    v52[1] = *(v28 + 16);
    v52[2] = v30;
    v53 = v31;
    v52[3] = v29;
    v32 = *(v28 + 48);
    *(a1 + 32) = *(v28 + 32);
    *(a1 + 48) = v32;
    *(a1 + 64) = *(v28 + 64);
    v33 = *(v28 + 16);
    *a1 = *v28;
    *(a1 + 16) = v33;
    sub_22B2020A4(v52, v51);
    return 0;
  }

  else
  {
LABEL_26:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v51[0] = *v38;
    sub_22B2020A4(v39, v52);
    sub_22B33042C(v39, v15, isUniquelyReferenced_nonNull_native);
    *v38 = v51[0];
    v36 = *(v39 + 48);
    *(a1 + 32) = *(v39 + 32);
    *(a1 + 48) = v36;
    *(a1 + 64) = *(v39 + 64);
    v37 = *(v39 + 16);
    result = 1;
    *a1 = *v39;
    *(a1 + 16) = v37;
  }

  return result;
}

uint64_t sub_22B32E3B4(uint64_t *a1, void *a2, unint64_t *a3, void *a4, uint64_t *a5, uint64_t *a6)
{
  v11 = v6;
  v14 = *v6;
  if ((*v6 & 0xC000000000000001) != 0)
  {
    if (v14 < 0)
    {
      v15 = *v6;
    }

    else
    {
      v15 = v14 & 0xFFFFFFFFFFFFFF8;
    }

    v16 = a2;

    v17 = sub_22B3610AC();

    if (v17)
    {

      sub_22B128014(0, a3, a4);
      swift_dynamicCast();
      result = 0;
      *a1 = v36;
    }

    else
    {
      result = sub_22B36109C();
      if (__OFADD__(result, 1))
      {
        __break(1u);
      }

      else
      {
        v27 = sub_22B32EEC8(v15, result + 1, a5, a6, a3, a4);
        v28 = *(v27 + 16);
        if (*(v27 + 24) <= v28)
        {
          sub_22B32F640(v28 + 1, a5, a6);
        }

        v29 = v16;
        sub_22B330228(v29, v27);

        *v11 = v27;
        *a1 = v29;
        return 1;
      }
    }
  }

  else
  {
    sub_22B128014(0, a3, a4);
    v19 = sub_22B360FAC();
    v20 = -1 << *(v14 + 32);
    v21 = v19 & ~v20;
    if ((*(v14 + 56 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21))
    {
      v22 = ~v20;
      while (1)
      {
        v23 = *(*(v14 + 48) + 8 * v21);
        v24 = sub_22B360FBC();

        if (v24)
        {
          break;
        }

        v21 = (v21 + 1) & v22;
        if (((*(v14 + 56 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21) & 1) == 0)
        {
          goto LABEL_11;
        }
      }

      v30 = *(*(v14 + 48) + 8 * v21);
      *a1 = v30;
      v31 = v30;
      return 0;
    }

    else
    {
LABEL_11:
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v37 = *v11;
      v26 = a2;
      sub_22B3306DC(v26, v21, isUniquelyReferenced_nonNull_native, a5, a6, a3, a4);
      *v11 = v37;
      *a1 = v26;
      return 1;
    }
  }

  return result;
}

uint64_t sub_22B32E628(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_22B35DF1C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_22B332F4C(&unk_27D8BA320, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  v33 = a2;
  v11 = sub_22B36071C();
  v12 = v10 + 56;
  v31 = v10 + 56;
  v32 = v10;
  v13 = -1 << *(v10 + 32);
  v14 = v11 & ~v13;
  if ((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v28 = v2;
    v29 = a1;
    v30 = ~v13;
    v27 = v7;
    v17 = *(v7 + 16);
    v16 = v7 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    v19 = (v16 - 8);
    v26[1] = v16 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v20 = v15;
      v15(v9, *(v32 + 48) + v18 * v14, v6);
      sub_22B332F4C(&qword_27D8BA718, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
      v21 = sub_22B36078C();
      v22 = *v19;
      (*v19)(v9, v6);
      if (v21)
      {
        break;
      }

      v14 = (v14 + 1) & v30;
      v15 = v20;
      if (((*(v31 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        v3 = v28;
        a1 = v29;
        v7 = v27;
        goto LABEL_7;
      }
    }

    v22(v33, v6);
    v20(v29, *(v32 + 48) + v18 * v14, v6);
    return 0;
  }

  else
  {
    v15 = *(v7 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = v33;
    v15(v9, v33, v6);
    v34 = *v3;
    sub_22B33086C(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t sub_22B32E908(uint64_t a1, uint64_t a2)
{
  v34 = a1;
  v4 = type metadata accessor for SessionKey(0);
  v5 = *(v4 - 1);
  MEMORY[0x28223BE20](v4);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v32 = &v32 - v9;
  v33 = v2;
  v10 = *v2;
  sub_22B36149C();
  sub_22B35DF1C();
  sub_22B332F4C(&unk_27D8BA320, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_22B36072C();
  sub_22B36072C();
  v11 = (a2 + v4[6]);
  v12 = *v11;
  v40 = v11[1];
  v41 = v12;
  sub_22B3608FC();
  v13 = (a2 + v4[7]);
  v14 = *v13;
  v38 = v13[1];
  v39 = v14;
  sub_22B3608FC();
  v15 = (a2 + v4[8]);
  v16 = *v15;
  v36 = v15[1];
  v37 = v16;
  sub_22B3608FC();
  v35 = v4[9];
  sub_22B36072C();
  v17 = sub_22B3614DC();
  v18 = -1 << *(v10 + 32);
  v19 = v17 & ~v18;
  if ((*(v10 + 56 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19))
  {
    v20 = ~v18;
    v21 = *(v5 + 72);
    while (1)
    {
      sub_22B332F94(*(v10 + 48) + v21 * v19, v7);
      if (sub_22B35DEEC() & 1) != 0 && (sub_22B35DEEC())
      {
        v22 = &v7[v4[6]];
        v23 = *v22 == v41 && *(v22 + 1) == v40;
        if (v23 || (sub_22B36134C() & 1) != 0)
        {
          v24 = &v7[v4[7]];
          v25 = *v24 == v39 && *(v24 + 1) == v38;
          if (v25 || (sub_22B36134C() & 1) != 0)
          {
            v26 = &v7[v4[8]];
            v27 = *v26 == v37 && *(v26 + 1) == v36;
            if (v27 || (sub_22B36134C()) && (sub_22B35DEEC())
            {
              break;
            }
          }
        }
      }

      sub_22B332FF8(v7, type metadata accessor for SessionKey);
      v19 = (v19 + 1) & v20;
      if (((*(v10 + 56 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) == 0)
      {
        goto LABEL_23;
      }
    }

    sub_22B332FF8(v7, type metadata accessor for SessionKey);
    sub_22B332FF8(a2, type metadata accessor for SessionKey);
    sub_22B332F94(*(v10 + 48) + v21 * v19, v34);
    return 0;
  }

  else
  {
LABEL_23:
    v28 = v33;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v30 = v32;
    sub_22B332F94(a2, v32);
    v42 = *v28;
    sub_22B330B10(v30, v19, isUniquelyReferenced_nonNull_native);
    *v28 = v42;
    sub_22B333058(a2, v34, type metadata accessor for SessionKey);
    return 1;
  }
}

uint64_t sub_22B32ECCC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *v5;
  sub_22B36149C();
  sub_22B3608FC();
  sub_22B3608FC();
  v11 = sub_22B3614DC();
  v12 = v10 + 56;
  v13 = -1 << *(v10 + 32);
  v14 = v11 & ~v13;
  if ((*(v10 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v15 = ~v13;
    v28 = v10;
    v16 = *(v10 + 48);
    while (1)
    {
      v17 = (v16 + 32 * v14);
      v18 = v17[2];
      v19 = v17[3];
      v20 = *v17 == a2 && v17[1] == a3;
      if (v20 || (sub_22B36134C() & 1) != 0)
      {
        v21 = v18 == a4 && v19 == a5;
        if (v21 || (sub_22B36134C() & 1) != 0)
        {
          break;
        }
      }

      v14 = (v14 + 1) & v15;
      if (((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        goto LABEL_15;
      }
    }

    v22 = (*(v28 + 48) + 32 * v14);
    v23 = v22[1];
    v24 = v22[2];
    v25 = v22[3];
    *a1 = *v22;
    a1[1] = v23;
    a1[2] = v24;
    a1[3] = v25;

    return 0;
  }

  else
  {
LABEL_15:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v31 = *v29;

    sub_22B330ED8(a2, a3, a4, a5, v14, isUniquelyReferenced_nonNull_native);
    *v29 = v31;
    *a1 = a2;
    a1[1] = a3;
    a1[2] = a4;
    a1[3] = a5;
    return 1;
  }
}

uint64_t sub_22B32EEC8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, unint64_t *a5, void *a6)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
    v10 = sub_22B36113C();
    v23 = v10;
    sub_22B36108C();
    if (sub_22B3610BC())
    {
      sub_22B128014(0, a5, a6);
      do
      {
        swift_dynamicCast();
        v17 = *(v10 + 16);
        if (*(v10 + 24) <= v17)
        {
          sub_22B32F640(v17 + 1, a3, a4);
        }

        v10 = v23;
        result = sub_22B360FAC();
        v12 = v23 + 56;
        v13 = -1 << *(v23 + 32);
        v14 = result & ~v13;
        v15 = v14 >> 6;
        if (((-1 << v14) & ~*(v23 + 56 + 8 * (v14 >> 6))) != 0)
        {
          v16 = __clz(__rbit64((-1 << v14) & ~*(v23 + 56 + 8 * (v14 >> 6)))) | v14 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v18 = 0;
          v19 = (63 - v13) >> 6;
          do
          {
            if (++v15 == v19 && (v18 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v20 = v15 == v19;
            if (v15 == v19)
            {
              v15 = 0;
            }

            v18 |= v20;
            v21 = *(v12 + 8 * v15);
          }

          while (v21 == -1);
          v16 = __clz(__rbit64(~v21)) + (v15 << 6);
        }

        *(v12 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
        *(*(v23 + 48) + 8 * v16) = v22;
        ++*(v23 + 16);
      }

      while (sub_22B3610BC());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84FA0];
  }

  return v10;
}

uint64_t sub_22B32F0C8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BAE28, &unk_22B367090);
  result = sub_22B36112C();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v18 = (*(v3 + 48) + 16 * (v15 | (v6 << 6)));
      v19 = *v18;
      v20 = v18[1];
      sub_22B36149C();
      sub_22B3608FC();
      result = sub_22B3614DC();
      v21 = -1 << *(v5 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v12 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v12 + 8 * v23);
          if (v27 != -1)
          {
            v13 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v22) & ~*(v12 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v5 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v5 + 16);
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v17 = v7[v6];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v28 = 1 << *(v3 + 32);
    if (v28 >= 64)
    {
      bzero((v3 + 56), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v28;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_22B32F328(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BAFD0, &qword_22B367690);
  v4 = sub_22B36112C();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = 0;
    v38 = (v3 + 56);
    v39 = v3;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v36 = v1;
    v37 = (v7 + 63) >> 6;
    v10 = v4 + 56;
    v40 = v4;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v41 = (v9 - 1) & v9;
LABEL_15:
      v17 = *(v3 + 48) + 72 * (v13 | (v6 << 6));
      v18 = *v17;
      v19 = *(v17 + 8);
      v42 = *(v17 + 16);
      v43 = *(v17 + 18);
      v44 = *(v17 + 22);
      v20 = *(v17 + 24);
      v21 = *(v17 + 32);
      v22 = *(v17 + 40);
      v23 = *(v17 + 48);
      v24 = *(v17 + 56);
      v25 = *(v17 + 64);
      sub_22B36149C();
      sub_22B3608FC();
      sub_22B3614CC();
      sub_22B3608FC();
      sub_22B3608FC();
      sub_22B3608FC();
      result = sub_22B3614DC();
      v5 = v40;
      v26 = -1 << *(v40 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v10 + 8 * (v27 >> 6))) == 0)
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
          v32 = *(v10 + 8 * v28);
          if (v32 != -1)
          {
            v11 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v11 = __clz(__rbit64((-1 << v27) & ~*(v10 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v10 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      v12 = *(v40 + 48) + 72 * v11;
      *v12 = v18;
      *(v12 + 8) = v19;
      *(v12 + 16) = v42;
      *(v12 + 18) = v43;
      *(v12 + 22) = v44;
      *(v12 + 24) = v20;
      *(v12 + 32) = v21;
      *(v12 + 40) = v22;
      *(v12 + 48) = v23;
      *(v12 + 56) = v24;
      *(v12 + 64) = v25;
      ++*(v40 + 16);
      v3 = v39;
      v9 = v41;
    }

    v14 = v6;
    result = v38;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v37)
      {
        break;
      }

      v16 = v38[v6];
      ++v14;
      if (v16)
      {
        v13 = __clz(__rbit64(v16));
        v41 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    v33 = 1 << *(v3 + 32);
    if (v33 >= 64)
    {
      v34 = v5;
      bzero(v38, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      v5 = v34;
    }

    else
    {
      *v38 = -1 << v33;
    }

    v2 = v36;
    *(v3 + 16) = 0;
  }

  v35 = v5;

  *v2 = v35;
  return result;
}

uint64_t sub_22B32F640(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = v3;
  v5 = *v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  result = sub_22B36112C();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 56);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v14 = result + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(*(v5 + 48) + 8 * (v16 | (v8 << 6)));
      result = sub_22B360FAC();
      v20 = -1 << *(v7 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v14 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v14 + 8 * v22);
          if (v26 != -1)
          {
            v15 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v21) & ~*(v14 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v19;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_30;
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
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    v27 = 1 << *(v5 + 32);
    if (v27 >= 64)
    {
      bzero((v5 + 56), ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v27;
    }

    *(v5 + 16) = 0;
  }

  *v4 = v7;
  return result;
}

uint64_t sub_22B32F860(uint64_t a1)
{
  v2 = v1;
  v36 = sub_22B35DF1C();
  v3 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v35 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA728, &unk_22B3659C0);
  result = sub_22B36112C();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v1;
    v31 = v5;
    v8 = 0;
    v9 = (v5 + 56);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v34 = v3 + 32;
    v14 = result + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v5 + 48) + *(v3 + 72) * (v16 | (v8 << 6));
      v20 = *(v3 + 32);
      v32 = *(v3 + 72);
      v33 = v20;
      v20(v35, v19, v36);
      sub_22B332F4C(&unk_27D8BA320, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
      result = sub_22B36071C();
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v14 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v14 + 8 * v23);
          if (v27 != -1)
          {
            v15 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      result = v33(*(v7 + 48) + v15 * v32, v35, v36);
      ++*(v7 + 16);
      v5 = v31;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_30;
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
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    v28 = 1 << *(v5 + 32);
    if (v28 >= 64)
    {
      bzero(v9, ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v28;
    }

    v2 = v30;
    *(v5 + 16) = 0;
  }

  *v2 = v7;
  return result;
}

uint64_t sub_22B32FBBC(uint64_t a1)
{
  v2 = v1;
  v3 = type metadata accessor for SessionKey(0);
  v32 = *(v3 - 8);
  v33 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BAFF0, &qword_22B3676B8);
  result = sub_22B36112C();
  v8 = result;
  if (*(v6 + 16))
  {
    v30 = v1;
    v31 = v6;
    v9 = 0;
    v10 = (v6 + 56);
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 56);
    v14 = (v11 + 63) >> 6;
    v15 = result + 56;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v35 = (v13 - 1) & v13;
LABEL_15:
      v20 = *(v6 + 48);
      v34 = *(v32 + 72);
      sub_22B333058(v20 + v34 * (v17 | (v9 << 6)), v5, type metadata accessor for SessionKey);
      sub_22B36149C();
      sub_22B35DF1C();
      sub_22B332F4C(&unk_27D8BA320, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
      sub_22B36072C();
      sub_22B36072C();
      sub_22B3608FC();
      sub_22B3608FC();
      sub_22B3608FC();
      sub_22B36072C();
      result = sub_22B3614DC();
      v21 = -1 << *(v8 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v15 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        v6 = v31;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v15 + 8 * v23);
          if (v27 != -1)
          {
            v16 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v22) & ~*(v15 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
      v6 = v31;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      result = sub_22B333058(v5, *(v8 + 48) + v16 * v34, type metadata accessor for SessionKey);
      ++*(v8 + 16);
      v13 = v35;
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v35 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    v28 = 1 << *(v6 + 32);
    if (v28 >= 64)
    {
      bzero(v10, ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v28;
    }

    v2 = v30;
    *(v6 + 16) = 0;
  }

  *v2 = v8;
  return result;
}

uint64_t sub_22B32FFA0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BAF88, &qword_22B367628);
  result = sub_22B36112C();
  v5 = result;
  if (*(v3 + 16))
  {
    v31 = v1;
    v32 = v3;
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v18 = (*(v3 + 48) + 32 * (v15 | (v6 << 6)));
      v19 = *v18;
      v20 = v18[1];
      v21 = v18[2];
      v22 = v18[3];
      sub_22B36149C();
      sub_22B3608FC();
      sub_22B3608FC();
      result = sub_22B3614DC();
      v23 = -1 << *(v5 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v12 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v12 + 8 * v25);
          if (v29 != -1)
          {
            v13 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v24) & ~*(v12 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v5 + 48) + 32 * v13);
      *v14 = v19;
      v14[1] = v20;
      v14[2] = v21;
      v14[3] = v22;
      ++*(v5 + 16);
      v3 = v32;
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v17 = v7[v6];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v30 = 1 << *(v3 + 32);
    if (v30 >= 64)
    {
      bzero(v7, ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v30;
    }

    v2 = v31;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

unint64_t sub_22B330228(uint64_t a1, uint64_t a2)
{
  sub_22B360FAC();
  result = sub_22B36107C();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

void sub_22B3302AC(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_22B32F0C8(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      sub_22B3310A4();
      goto LABEL_16;
    }

    sub_22B331A80(v8 + 1);
  }

  v10 = *v4;
  sub_22B36149C();
  sub_22B3608FC();
  v11 = sub_22B3614DC();
  v12 = -1 << *(v10 + 32);
  a3 = v11 & ~v12;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v13 = ~v12;
    do
    {
      v14 = (*(v10 + 48) + 16 * a3);
      v15 = *v14 == result && v14[1] == a2;
      if (v15 || (sub_22B36134C() & 1) != 0)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v13;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v16 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v17 = (*(v16 + 48) + 16 * a3);
  *v17 = result;
  v17[1] = a2;
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (!v19)
  {
    *(v16 + 16) = v20;
    return;
  }

  __break(1u);
LABEL_19:
  sub_22B3613AC();
  __break(1u);
}

uint64_t sub_22B33042C(uint64_t result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  v38 = result;
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_33;
  }

  if (a3)
  {
    sub_22B32F328(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      result = sub_22B331200();
      goto LABEL_33;
    }

    sub_22B331CDC(v6 + 1);
  }

  v8 = *(v5 + 16);
  v46 = *v3;
  sub_22B36149C();
  v9 = *v5;
  v10 = *(v5 + 8);
  v11 = *(v5 + 24);
  v12 = *(v5 + 32);
  v13 = *(v5 + 40);
  v14 = *(v5 + 48);
  v15 = *(v5 + 56);
  v16 = *(v5 + 64);
  sub_22B3608FC();
  v45 = v8;
  sub_22B3614CC();
  v43 = v12;
  v44 = v11;
  sub_22B3608FC();
  v41 = v14;
  v42 = v13;
  sub_22B3608FC();
  v39 = v16;
  v40 = v15;
  sub_22B3608FC();
  result = sub_22B3614DC();
  v17 = -1 << *(v46 + 32);
  a2 = result & ~v17;
  v49 = v46 + 56;
  if ((*(v46 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v48 = ~v17;
    v47 = *(v46 + 48);
    while (1)
    {
      v18 = v47 + 72 * a2;
      result = *v18;
      v19 = *(v18 + 16);
      v21 = *(v18 + 24);
      v20 = *(v18 + 32);
      v22 = *(v18 + 40);
      v23 = *(v18 + 48);
      v24 = *(v18 + 56);
      v25 = *(v18 + 64);
      v26 = *v18 == v9 && *(v18 + 8) == v10;
      if (v26 || (result = sub_22B36134C(), (result & 1) != 0))
      {
        if (v19 == v45)
        {
          v27 = v21 == v44 && v20 == v43;
          if (v27 || (result = sub_22B36134C(), (result & 1) != 0))
          {
            v28 = v22 == v42 && v23 == v41;
            if (v28 || (result = sub_22B36134C(), (result & 1) != 0))
            {
              if (v24 == v40 && v25 == v39)
              {
                break;
              }

              result = sub_22B36134C();
              if (result)
              {
                break;
              }
            }
          }
        }
      }

      a2 = (a2 + 1) & v48;
      if (((*(v49 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_33;
      }
    }

    result = sub_22B3613AC();
    __break(1u);
  }

LABEL_33:
  v30 = *v37;
  *(*v37 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  v31 = *(v30 + 48) + 72 * a2;
  *(v31 + 64) = *(v38 + 64);
  v32 = *(v38 + 48);
  *(v31 + 32) = *(v38 + 32);
  *(v31 + 48) = v32;
  v33 = *(v38 + 16);
  *v31 = *v38;
  *(v31 + 16) = v33;
  v34 = *(v30 + 16);
  v35 = __OFADD__(v34, 1);
  v36 = v34 + 1;
  if (v35)
  {
    __break(1u);
  }

  else
  {
    *(v30 + 16) = v36;
  }

  return result;
}

void sub_22B3306DC(uint64_t a1, unint64_t a2, char a3, uint64_t *a4, uint64_t *a5, unint64_t *a6, void *a7)
{
  v10 = *(*v7 + 16);
  v11 = *(*v7 + 24);
  if (v11 > v10 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    v12 = a6;
    v13 = a7;
    sub_22B32F640(v10 + 1, a4, a5);
  }

  else
  {
    if (v11 > v10)
    {
      sub_22B3313A4(a4, a5);
      goto LABEL_12;
    }

    v12 = a6;
    v13 = a7;
    sub_22B331FD4(v10 + 1, a4, a5);
  }

  v14 = *v7;
  v15 = sub_22B360FAC();
  v16 = -1 << *(v14 + 32);
  a2 = v15 & ~v16;
  if ((*(v14 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v17 = ~v16;
    sub_22B128014(0, v12, v13);
    do
    {
      v18 = *(*(v14 + 48) + 8 * a2);
      v19 = sub_22B360FBC();

      if (v19)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v17;
    }

    while (((*(v14 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v20 = *v7;
  *(*v7 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v20 + 48) + 8 * a2) = a1;
  v21 = *(v20 + 16);
  v22 = __OFADD__(v21, 1);
  v23 = v21 + 1;
  if (!v22)
  {
    *(v20 + 16) = v23;
    return;
  }

  __break(1u);
LABEL_15:
  sub_22B3613AC();
  __break(1u);
}

uint64_t sub_22B33086C(uint64_t a1, unint64_t a2, char a3)
{
  v32 = a1;
  v6 = sub_22B35DF1C();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v29 = v3;
  v30 = v7;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_22B32F860(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      sub_22B3314E4();
      goto LABEL_12;
    }

    sub_22B3321E0(v11 + 1);
  }

  v13 = *v3;
  sub_22B332F4C(&unk_27D8BA320, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  v14 = sub_22B36071C();
  v15 = v13 + 56;
  v31 = v13;
  v16 = -1 << *(v13 + 32);
  a2 = v14 & ~v16;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v17 = ~v16;
    v20 = *(v7 + 16);
    v19 = v7 + 16;
    v18 = v20;
    v21 = *(v19 + 56);
    do
    {
      v18(v10, *(v31 + 48) + v21 * a2, v6);
      sub_22B332F4C(&qword_27D8BA718, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
      v22 = sub_22B36078C();
      (*(v19 - 8))(v10, v6);
      if (v22)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v17;
    }

    while (((*(v15 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v23 = v30;
  v24 = *v29;
  *(v24 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v23 + 32))(*(v24 + 48) + *(v23 + 72) * a2, v32, v6, v8);
  v26 = *(v24 + 16);
  v27 = __OFADD__(v26, 1);
  v28 = v26 + 1;
  if (!v27)
  {
    *(v24 + 16) = v28;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_22B3613AC();
  __break(1u);
  return result;
}

uint64_t sub_22B330B10(uint64_t a1, unint64_t a2, char a3)
{
  v7 = type metadata accessor for SessionKey(0);
  v8 = *(v7 - 1);
  MEMORY[0x28223BE20](v7);
  v10 = v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v38 = v8;
  v39 = v3;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_30;
  }

  if (a3)
  {
    sub_22B32FBBC(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      sub_22B33171C();
      goto LABEL_30;
    }

    sub_22B3324FC(v11 + 1);
  }

  v13 = *v3;
  sub_22B36149C();
  sub_22B35DF1C();
  sub_22B332F4C(&unk_27D8BA320, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_22B36072C();
  sub_22B36072C();
  v14 = (a1 + v7[6]);
  v15 = v14[1];
  v42 = *v14;
  sub_22B3608FC();
  v16 = (a1 + v7[7]);
  v17 = *v16;
  v40 = v16[1];
  v41 = v17;
  sub_22B3608FC();
  v18 = (a1 + v7[8]);
  v19 = *v18;
  v36 = v18[1];
  v37 = v19;
  sub_22B3608FC();
  v35[1] = v7[9];
  sub_22B36072C();
  v20 = sub_22B3614DC();
  v21 = -1 << *(v13 + 32);
  a2 = v20 & ~v21;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v22 = ~v21;
    v23 = *(v8 + 72);
    do
    {
      sub_22B332F94(*(v13 + 48) + v23 * a2, v10);
      if (sub_22B35DEEC() & 1) != 0 && (sub_22B35DEEC())
      {
        v24 = &v10[v7[6]];
        v25 = *v24 == v42 && *(v24 + 1) == v15;
        if (v25 || (sub_22B36134C() & 1) != 0)
        {
          v26 = &v10[v7[7]];
          v27 = *v26 == v41 && *(v26 + 1) == v40;
          if (v27 || (sub_22B36134C() & 1) != 0)
          {
            v28 = &v10[v7[8]];
            v29 = *v28 == v37 && *(v28 + 1) == v36;
            if (v29 || (sub_22B36134C()) && (sub_22B35DEEC())
            {
              goto LABEL_33;
            }
          }
        }
      }

      sub_22B332FF8(v10, type metadata accessor for SessionKey);
      a2 = (a2 + 1) & v22;
    }

    while (((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_30:
  v30 = *v39;
  *(*v39 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = sub_22B333058(a1, *(v30 + 48) + *(v38 + 72) * a2, type metadata accessor for SessionKey);
  v32 = *(v30 + 16);
  v33 = __OFADD__(v32, 1);
  v34 = v32 + 1;
  if (!v33)
  {
    *(v30 + 16) = v34;
    return result;
  }

  __break(1u);
LABEL_33:
  sub_22B332FF8(v10, type metadata accessor for SessionKey);
  result = sub_22B3613AC();
  __break(1u);
  return result;
}

void sub_22B330ED8(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, char a6)
{
  v12 = *(*v6 + 16);
  v13 = *(*v6 + 24);
  if (v13 > v12 && (a6 & 1) != 0)
  {
    goto LABEL_22;
  }

  if (a6)
  {
    sub_22B32FFA0(v12 + 1);
  }

  else
  {
    if (v13 > v12)
    {
      sub_22B331914();
      goto LABEL_22;
    }

    sub_22B33289C(v12 + 1);
  }

  v14 = *v6;
  sub_22B36149C();
  sub_22B3608FC();
  sub_22B3608FC();
  v15 = sub_22B3614DC();
  v16 = v14 + 56;
  v17 = -1 << *(v14 + 32);
  a5 = v15 & ~v17;
  if ((*(v14 + 56 + ((a5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a5))
  {
    v18 = ~v17;
    v19 = *(v14 + 48);
    while (1)
    {
      v20 = (v19 + 32 * a5);
      v21 = v20[2];
      v22 = v20[3];
      v23 = *v20 == result && v20[1] == a2;
      if (v23 || (sub_22B36134C() & 1) != 0)
      {
        v24 = v21 == a3 && v22 == a4;
        if (v24 || (sub_22B36134C() & 1) != 0)
        {
          break;
        }
      }

      a5 = (a5 + 1) & v18;
      if (((*(v16 + ((a5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a5) & 1) == 0)
      {
        goto LABEL_22;
      }
    }

    sub_22B3613AC();
    __break(1u);
  }

LABEL_22:
  v25 = *v30;
  *(*v30 + 8 * (a5 >> 6) + 56) |= 1 << a5;
  v26 = (*(v25 + 48) + 32 * a5);
  *v26 = result;
  v26[1] = a2;
  v26[2] = a3;
  v26[3] = a4;
  v27 = *(v25 + 16);
  v28 = __OFADD__(v27, 1);
  v29 = v27 + 1;
  if (v28)
  {
    __break(1u);
  }

  else
  {
    *(v25 + 16) = v29;
  }
}

void sub_22B3310A4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BAE28, &unk_22B367090);
  v2 = *v0;
  v3 = sub_22B36111C();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 56 + 8 * v6)
    {
      memmove(v5, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
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

      v16 = *(v2 + 56 + 8 * v8);
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
}

void *sub_22B331200()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BAFD0, &qword_22B367690);
  v2 = *v0;
  v3 = sub_22B36111C();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
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
        v17 = 72 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v20 = v18[1];
        v19 = v18[2];
        v21 = v18[3];
        v24 = *(v18 + 8);
        v23[3] = v21;
        v23[0] = *v18;
        v23[1] = v20;
        v23[2] = v19;
        memmove((*(v4 + 48) + v17), v18, 0x48uLL);
        result = sub_22B2020A4(v23, v22);
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

      v16 = *(v2 + 56 + 8 * v8);
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

id sub_22B3313A4(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_22B36111C();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 56);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 56 + 8 * v8)
    {
      result = memmove(result, (v4 + 56), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 56);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_17:
        v19 = v16 | (v10 << 6);
        v20 = *(*(v4 + 48) + 8 * v19);
        *(*(v6 + 48) + 8 * v19) = v20;
        result = v20;
      }

      while (v14);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 56 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }

  return result;
}

void *sub_22B3314E4()
{
  v1 = v0;
  v2 = sub_22B35DF1C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA728, &unk_22B3659C0);
  v6 = *v0;
  v7 = sub_22B36111C();
  v8 = v7;
  if (*(v6 + 16))
  {
    v22 = v1;
    result = (v7 + 56);
    v10 = v6 + 56;
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || result >= v10 + 8 * v11)
    {
      result = memmove(result, (v6 + 56), 8 * v11);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v6 + 56);
    v16 = (v13 + 63) >> 6;
    v23 = v3 + 32;
    for (i = v3 + 16; v15; result = (*(v3 + 32))(*(v8 + 48) + v20, v5, v2))
    {
      v17 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_14:
      v20 = *(v3 + 72) * (v17 | (v12 << 6));
      (*(v3 + 16))(v5, *(v6 + 48) + v20, v2);
    }

    v18 = v12;
    while (1)
    {
      v12 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v12 >= v16)
      {

        v1 = v22;
        goto LABEL_18;
      }

      v19 = *(v10 + 8 * v12);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v8;
  }

  return result;
}

void *sub_22B33171C()
{
  v1 = v0;
  v2 = type metadata accessor for SessionKey(0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BAFF0, &qword_22B3676B8);
  v6 = *v0;
  v7 = sub_22B36111C();
  v8 = v7;
  if (*(v6 + 16))
  {
    result = (v7 + 56);
    v10 = v6 + 56;
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || result >= v10 + 8 * v11)
    {
      result = memmove(result, (v6 + 56), 8 * v11);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = *(v6 + 56);
    v15 = -1;
    if (v13 < 64)
    {
      v15 = ~(-1 << v13);
    }

    v16 = v15 & v14;
    v17 = (v13 + 63) >> 6;
    if ((v15 & v14) != 0)
    {
      do
      {
        v18 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
LABEL_14:
        v21 = *(v3 + 72) * (v18 | (v12 << 6));
        sub_22B332F94(*(v6 + 48) + v21, v5);
        result = sub_22B333058(v5, *(v8 + 48) + v21, type metadata accessor for SessionKey);
      }

      while (v16);
    }

    v19 = v12;
    while (1)
    {
      v12 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v12 >= v17)
      {
        goto LABEL_16;
      }

      v20 = *(v10 + 8 * v12);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_16:

    *v1 = v8;
  }

  return result;
}

void sub_22B331914()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BAF88, &qword_22B367628);
  v2 = *v0;
  v3 = sub_22B36111C();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 56 + 8 * v6)
    {
      memmove(v5, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
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
        v17 = 32 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = v18[2];
        v21 = v18[3];
        v22 = (*(v4 + 48) + v17);
        *v22 = *v18;
        v22[1] = v19;
        v22[2] = v20;
        v22[3] = v21;
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

      v16 = *(v2 + 56 + 8 * v8);
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
}

uint64_t sub_22B331A80(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BAE28, &unk_22B367090);
  result = sub_22B36112C();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = (*(v3 + 48) + 16 * (v14 | (v6 << 6)));
      v18 = *v17;
      v19 = v17[1];
      sub_22B36149C();

      sub_22B3608FC();
      result = sub_22B3614DC();
      v20 = -1 << *(v5 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v11 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v11 + 8 * v22);
          if (v26 != -1)
          {
            v12 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v21) & ~*(v11 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = (*(v5 + 48) + 16 * v12);
      *v13 = v18;
      v13[1] = v19;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v16 = *(v3 + 56 + 8 * v6);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v5;
  }

  return result;
}

uint64_t sub_22B331CDC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BAFD0, &qword_22B367690);
  result = sub_22B36112C();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v31 = v2;
    v32 = v3 + 56;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    v33 = v10;
    v34 = result;
    v35 = v3;
    while (v9)
    {
      v17 = __clz(__rbit64(v9));
      v36 = (v9 - 1) & v9;
LABEL_15:
      v20 = *(v3 + 48) + 72 * (v17 | (v6 << 6));
      v22 = *(v20 + 32);
      v21 = *(v20 + 48);
      v23 = *(v20 + 16);
      v42 = *(v20 + 64);
      v40 = v22;
      v41 = v21;
      v38 = *v20;
      v39 = v23;
      sub_22B36149C();
      sub_22B2020A4(&v38, v37);
      sub_22B3608FC();
      sub_22B3614CC();
      sub_22B3608FC();
      sub_22B3608FC();
      sub_22B3608FC();
      result = sub_22B3614DC();
      v5 = v34;
      v24 = -1 << *(v34 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v11 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        v3 = v35;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v11 + 8 * v26);
          if (v30 != -1)
          {
            v12 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v25) & ~*(v11 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
      v3 = v35;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = *(v34 + 48) + 72 * v12;
      v14 = v39;
      v15 = v40;
      v16 = v41;
      *(v13 + 64) = v42;
      *(v13 + 32) = v15;
      *(v13 + 48) = v16;
      *(v13 + 16) = v14;
      *v13 = v38;
      ++*(v34 + 16);
      v10 = v33;
      v9 = v36;
    }

    v18 = v6;
    while (1)
    {
      v6 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v31;
        goto LABEL_26;
      }

      v19 = *(v32 + 8 * v6);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v36 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v5;
  }

  return result;
}

uint64_t sub_22B331FD4(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = v3;
  v5 = *v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  result = sub_22B36112C();
  v7 = result;
  if (*(v5 + 16))
  {
    v26 = v3;
    v8 = 0;
    v9 = 1 << *(v5 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v5 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_15:
      v18 = *(*(v5 + 48) + 8 * (v15 | (v8 << 6)));
      result = sub_22B360FAC();
      v19 = -1 << *(v7 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v13 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v13 + 8 * v21);
          if (v25 != -1)
          {
            v14 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v14 = __clz(__rbit64((-1 << v20) & ~*(v13 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v7 + 48) + 8 * v14) = v18;
      ++*(v7 + 16);
    }

    v16 = v8;
    while (1)
    {
      v8 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v8 >= v12)
      {

        v4 = v26;
        goto LABEL_26;
      }

      v17 = *(v5 + 56 + 8 * v8);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v4 = v7;
  }

  return result;
}

uint64_t sub_22B3321E0(uint64_t a1)
{
  v2 = v1;
  v33 = sub_22B35DF1C();
  v3 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA728, &unk_22B3659C0);
  v7 = sub_22B36112C();
  result = v6;
  if (*(v6 + 16))
  {
    v28 = v1;
    v9 = 0;
    v10 = v6 + 56;
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 56);
    v14 = (v11 + 63) >> 6;
    v31 = v3 + 16;
    v32 = v3;
    v15 = v7 + 56;
    v29 = (v3 + 32);
    v30 = result;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = *(v32 + 72);
      (*(v32 + 16))(v5, *(result + 48) + v20 * (v17 | (v9 << 6)), v33);
      sub_22B332F4C(&unk_27D8BA320, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
      result = sub_22B36071C();
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v15 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v15 + 8 * v23);
          if (v27 != -1)
          {
            v16 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v16 = __clz(__rbit64((-1 << v22) & ~*(v15 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      (*v29)(*(v7 + 48) + v16 * v20, v5, v33);
      ++*(v7 + 16);
      result = v30;
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v2 = v28;
        goto LABEL_26;
      }

      v19 = *(v10 + 8 * v9);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v7;
  }

  return result;
}

uint64_t sub_22B3324FC(uint64_t a1)
{
  v2 = v1;
  v3 = type metadata accessor for SessionKey(0);
  v31 = *(v3 - 8);
  v32 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BAFF0, &qword_22B3676B8);
  result = sub_22B36112C();
  v8 = result;
  if (*(v6 + 16))
  {
    v29 = v1;
    v30 = v6;
    v9 = 0;
    v10 = v6 + 56;
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 56);
    v14 = (v11 + 63) >> 6;
    v15 = result + 56;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v34 = (v13 - 1) & v13;
LABEL_15:
      v20 = *(v6 + 48);
      v33 = *(v31 + 72);
      sub_22B332F94(v20 + v33 * (v17 | (v9 << 6)), v5);
      sub_22B36149C();
      sub_22B35DF1C();
      sub_22B332F4C(&unk_27D8BA320, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
      sub_22B36072C();
      sub_22B36072C();
      sub_22B3608FC();
      sub_22B3608FC();
      sub_22B3608FC();
      sub_22B36072C();
      result = sub_22B3614DC();
      v21 = -1 << *(v8 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v15 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        v6 = v30;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v15 + 8 * v23);
          if (v27 != -1)
          {
            v16 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v16 = __clz(__rbit64((-1 << v22) & ~*(v15 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
      v6 = v30;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      result = sub_22B333058(v5, *(v8 + 48) + v16 * v33, type metadata accessor for SessionKey);
      ++*(v8 + 16);
      v13 = v34;
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v2 = v29;
        goto LABEL_26;
      }

      v19 = *(v10 + 8 * v9);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v34 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v8;
  }

  return result;
}

uint64_t sub_22B33289C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BAF88, &qword_22B367628);
  result = sub_22B36112C();
  v5 = result;
  if (*(v3 + 16))
  {
    v30 = v1;
    v31 = v3;
    v6 = 0;
    v7 = v3 + 56;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v18 = (*(v3 + 48) + 32 * (v15 | (v6 << 6)));
      v19 = *v18;
      v20 = v18[1];
      v21 = v18[2];
      v22 = v18[3];
      sub_22B36149C();

      sub_22B3608FC();
      sub_22B3608FC();
      result = sub_22B3614DC();
      v23 = -1 << *(v5 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v12 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v12 + 8 * v25);
          if (v29 != -1)
          {
            v13 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v13 = __clz(__rbit64((-1 << v24) & ~*(v12 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v5 + 48) + 32 * v13);
      *v14 = v19;
      v14[1] = v20;
      v14[2] = v21;
      v14[3] = v22;
      ++*(v5 + 16);
      v3 = v31;
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v6 >= v11)
      {

        v2 = v30;
        goto LABEL_26;
      }

      v17 = *(v7 + 8 * v6);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v5;
  }

  return result;
}

uint64_t sub_22B332B38(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA6E8, &qword_22B365990);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_22B332BA8(uint64_t a1)
{
  sub_22B35DE9C();
  v11 = v1[2];
  v10 = v1[3];
  v3 = v1[4];
  v4 = v1[5];
  v5 = v1[6];
  v6 = v1[7];
  v7 = v1[8];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_22B119A60;

  return sub_22B3284FC(a1, v11, v10, v3, v4, v5, v6, v7);
}

void sub_22B332D54()
{
  v1 = *(sub_22B35DE9C() - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 23) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v0 + 16);
  v6 = *(v0 + 24);
  v7 = (v0 + v3);
  v8 = *v7;
  v9 = v7[1];
  v10 = *(v0 + v4);
  v11 = *(v0 + v4 + 8);
  v12 = *(v0 + ((v4 + 23) & 0xFFFFFFFFFFFFFFF8));

  sub_22B327DA8(v5, v6, v0 + v2, v8, v9, v10, v11, v12);
}

uint64_t sub_22B332EDC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA6E8, &qword_22B365990);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_22B332F4C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_22B332F94(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SessionKey(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22B332FF8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_22B333058(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_22B3330E8(uint64_t a1)
{
  sub_22B3331D8(319, &qword_27D8BB048, MEMORY[0x277D07438]);
  if (v1 <= 0x3F)
  {
    sub_22B3331D8(319, &qword_27D8BB050, MEMORY[0x277D07428]);
    if (v2 <= 0x3F)
    {
      sub_22B35DE9C();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_22B3331D8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_22B360AAC();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

double sub_22B333238(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  v8 = a2;
  v9 = *(a1 + 32);
  if (a2)
  {
    sub_22B128014(0, &qword_281408590, 0x277CBE448);
    sub_22B338B80();
    v8 = sub_22B360C4C();
  }

  v10 = a3;
  v11 = a4;
  v12 = a5;
  v9(v8, a3, a4, a5);

  return result;
}

void sub_22B333320()
{
  [v0 setQualityOfService_];
  v1 = [v0 configuration];
  if (!v1)
  {
    __break(1u);
    goto LABEL_10;
  }

  v2 = v1;
  [v1 setQualityOfService_];

  v3 = [v0 configuration];
  if (!v3)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v4 = v3;
  [v3 setAutomaticallyRetryNetworkFailures_];

  v5 = [v0 configuration];
  if (!v5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v6 = v5;
  [v5 setTimeoutIntervalForResource_];

  v7 = [v0 configuration];
  if (!v7)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v8 = v7;
  [v7 setTimeoutIntervalForRequest_];

  v9 = [v0 configuration];
  if (!v9)
  {
LABEL_13:
    __break(1u);
    return;
  }

  v10 = v9;
  [v9 setDiscretionaryNetworkBehavior_];
}

uint64_t sub_22B33347C()
{
  type metadata accessor for CloudKitContainerHelper();
  swift_allocObject();
  result = sub_22B3334BC(0);
  qword_28140BCF0 = result;
  return result;
}

uint64_t sub_22B3334BC(void *a1)
{
  v31 = a1;
  v1 = sub_22B36052C();
  v28 = *(v1 - 8);
  v29 = v1;
  MEMORY[0x28223BE20](v1);
  v27 = &v27 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_22B360EFC();
  MEMORY[0x28223BE20](v3);
  v4 = sub_22B36062C();
  MEMORY[0x28223BE20](v4 - 8);
  v5 = sub_22B360D8C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22B128014(0, &qword_281409290, 0x277D85C90);
  (*(v6 + 104))(v8, *MEMORY[0x277D85268], v5);
  sub_22B36060C();
  v32 = MEMORY[0x277D84F90];
  sub_22B338E08(&qword_281409298, MEMORY[0x277D852D8], MEMORY[0x277D852E0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BACB0, &unk_22B366C20);
  sub_22B118A18(&qword_281409338, &qword_27D8BACB0, &unk_22B366C20);
  v9 = v30;
  sub_22B36104C();
  *(v9 + 24) = sub_22B360F0C();
  if (sub_22B35EEBC())
  {
    v10 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
    v11 = sub_22B36081C();
    v12 = [v10 initWithSuiteName_];

    if (v12)
    {
      if (qword_28140A0C8 != -1)
      {
        swift_once();
      }

      v13 = v29;
      v14 = __swift_project_value_buffer(v29, qword_28140BD10);
      swift_beginAccess();
      v16 = v27;
      v15 = v28;
      (*(v28 + 16))(v27, v14, v13);
      v17 = sub_22B36050C();
      v18 = sub_22B360D2C();
      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        *v19 = 67109376;
        *(v19 + 4) = 1;
        *(v19 + 8) = 1024;
        *(v19 + 10) = 0;
        _os_log_impl(&dword_22B116000, v17, v18, "[CloudKitHelper] Production: %{BOOL}d. Offline: %{BOOL}d", v19, 0xEu);
        MEMORY[0x23188F650](v19, -1, -1);
      }

      (*(v15 + 8))(v16, v13);
    }
  }

  v20 = v31;
  if (!v31)
  {
    v21 = objc_allocWithZone(MEMORY[0x277CBC220]);
    v22 = sub_22B36081C();
    v23 = [v21 initWithContainerIdentifier:v22 environment:1];

    v24 = [objc_allocWithZone(MEMORY[0x277CBC230]) init];
    [v24 setUseZoneWidePCS_];
    v25 = sub_22B36081C();
    [v24 setEncryptionServiceName_];

    [v24 setBypassPCSEncryption_];
    v20 = [objc_allocWithZone(MEMORY[0x277CBC218]) initWithContainerID:v23 options:v24];
  }

  *(v9 + 16) = v20;
  return v9;
}

void sub_22B333A14(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BB068, &unk_22B3677A0);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = aBlock - v7;
  v9 = *(a2 + 16);
  (*(v5 + 16))(aBlock - v7, a1, v4, v6);
  v10 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v11 = swift_allocObject();
  (*(v5 + 32))(v11 + v10, v8, v4);
  aBlock[4] = sub_22B3388D4;
  aBlock[5] = v11;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22B333E4C;
  aBlock[3] = &block_descriptor_30;
  v12 = _Block_copy(aBlock);
  v13 = v9;

  [v13 accountInfoWithCompletionHandler_];
  _Block_release(v12);
}

uint64_t sub_22B333BD8(void *a1, void *a2)
{
  v4 = sub_22B36052C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v23 = a2;
    v9 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BB068, &unk_22B3677A0);
    return sub_22B360ADC();
  }

  if (!a1)
  {
    if (qword_28140A0C8 != -1)
    {
      v21 = v6;
      swift_once();
      v6 = v21;
    }

    v12 = v6;
    v13 = __swift_project_value_buffer(v6, qword_28140BD10);
    swift_beginAccess();
    v14 = v13;
    v15 = v12;
    (*(v5 + 16))(v8, v14, v12);
    v16 = sub_22B36050C();
    v17 = sub_22B360D1C();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_22B116000, v16, v17, "accountInfo didn't have a result or an error!", v18, 2u);
      MEMORY[0x23188F650](v18, -1, -1);
    }

    (*(v5 + 8))(v8, v15);
    sub_22B134CDC();
    v19 = swift_allocError();
    *v20 = 13;
    v22 = v19;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BB068, &unk_22B3677A0);
    return sub_22B360ADC();
  }

  v23 = a1;
  v11 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BB068, &unk_22B3677A0);
  return sub_22B360AEC();
}

void sub_22B333E4C(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(a2, a3);
}

uint64_t sub_22B333ED8()
{
  v1[9] = v0;
  v2 = sub_22B36052C();
  v1[10] = v2;
  v1[11] = *(v2 - 8);
  v1[12] = swift_task_alloc();
  v1[13] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B333FA4, 0, 0);
}

uint64_t sub_22B333FA4()
{
  v1 = v0[9];
  v2 = objc_allocWithZone(MEMORY[0x277CBC5E8]);
  v3 = sub_22B36081C();
  v4 = [v2 initWithZoneName_];
  v0[14] = v4;

  v0[15] = [*(v1 + 16) privateCloudDatabase];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA238, &unk_22B365D70);
  v5 = swift_allocObject();
  v0[16] = v5;
  *(v5 + 16) = xmmword_22B363650;
  *(v5 + 32) = [v4 zoneID];
  v6 = swift_task_alloc();
  v0[17] = v6;
  *v6 = v0;
  v6[1] = sub_22B33410C;

  return MEMORY[0x28210DE68](v5);
}

uint64_t sub_22B33410C(uint64_t a1)
{
  v3 = *v2;
  v3[18] = a1;
  v3[19] = v1;

  if (v1)
  {
    v4 = sub_22B334848;
  }

  else
  {
    v5 = v3[15];

    v4 = sub_22B33422C;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_22B33422C()
{
  v1 = *(v0 + 144);
  if (!*(v1 + 16))
  {

LABEL_11:
    v20 = *(v0 + 112);
    v21 = *(v0 + 72);
    v22 = swift_task_alloc();
    *(v0 + 160) = v22;
    *(v22 + 16) = v20;
    *(v22 + 24) = v21;
    v23 = swift_task_alloc();
    *(v0 + 168) = v23;
    *v23 = v0;
    v23[1] = sub_22B3346C0;
    v24 = MEMORY[0x277D84F78] + 8;

    return MEMORY[0x2822007B8](v23, 0, 0, 0xD000000000000015, 0x800000022B36EBA0, sub_22B338960, v22, v24);
  }

  v2 = [*(v0 + 112) zoneID];
  v3 = v2;
  if (!*(v1 + 16) || (v4 = sub_22B33B304(v2), (v5 & 1) == 0))
  {

    goto LABEL_11;
  }

  v6 = *(*(v0 + 144) + 56) + 16 * v4;
  v7 = *v6;
  v8 = *(v6 + 8);
  sub_22B338968(*v6);

  if (v8)
  {
    *(v0 + 64) = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8BACE0, &unk_22B365D60);
    swift_willThrowTypedImpl();
    if (qword_28140A0C8 != -1)
    {
      swift_once();
    }

    v10 = *(v0 + 88);
    v9 = *(v0 + 96);
    v11 = *(v0 + 80);
    v12 = __swift_project_value_buffer(v11, qword_28140BD10);
    swift_beginAccess();
    (*(v10 + 16))(v9, v12, v11);
    v13 = v7;
    v14 = sub_22B36050C();
    v15 = sub_22B360D1C();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      *v16 = 138412290;
      v18 = v7;
      v19 = _swift_stdlib_bridgeErrorToNSError();
      *(v16 + 4) = v19;
      *v17 = v19;
      _os_log_impl(&dword_22B116000, v14, v15, "Error fetching existing zones. %@", v16, 0xCu);
      sub_22B12F10C(v17);
      MEMORY[0x23188F650](v17, -1, -1);
      MEMORY[0x23188F650](v16, -1, -1);
    }

    else
    {
    }

    (*(*(v0 + 88) + 8))(*(v0 + 96), *(v0 + 80));
    goto LABEL_11;
  }

  if (qword_28140A0C8 != -1)
  {
    swift_once();
  }

  v25 = *(v0 + 104);
  v26 = *(v0 + 80);
  v27 = *(v0 + 88);
  v28 = __swift_project_value_buffer(v26, qword_28140BD10);
  swift_beginAccess();
  (*(v27 + 16))(v25, v28, v26);
  v29 = sub_22B36050C();
  v30 = sub_22B360D1C();
  v31 = os_log_type_enabled(v29, v30);
  v32 = *(v0 + 104);
  v33 = *(v0 + 112);
  v34 = *(v0 + 80);
  v35 = *(v0 + 88);
  if (v31)
  {
    v36 = swift_slowAlloc();
    *v36 = 0;
    _os_log_impl(&dword_22B116000, v29, v30, "Bootstrap zone already exists", v36, 2u);
    MEMORY[0x23188F650](v36, -1, -1);
  }

  sub_22B1CCC58(v7);

  (*(v35 + 8))(v32, v34);

  v37 = *(v0 + 8);

  return v37();
}

uint64_t sub_22B3346C0()
{

  return MEMORY[0x2822009F8](sub_22B3347D8, 0, 0);
}

uint64_t sub_22B3347D8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22B334848()
{
  v1 = v0[15];

  v2 = v0[19];
  if (qword_28140A0C8 != -1)
  {
    swift_once();
  }

  v4 = v0[11];
  v3 = v0[12];
  v5 = v0[10];
  v6 = __swift_project_value_buffer(v5, qword_28140BD10);
  swift_beginAccess();
  (*(v4 + 16))(v3, v6, v5);
  v7 = v2;
  v8 = sub_22B36050C();
  v9 = sub_22B360D1C();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138412290;
    v12 = v2;
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 4) = v13;
    *v11 = v13;
    _os_log_impl(&dword_22B116000, v8, v9, "Error fetching existing zones. %@", v10, 0xCu);
    sub_22B12F10C(v11);
    MEMORY[0x23188F650](v11, -1, -1);
    MEMORY[0x23188F650](v10, -1, -1);
  }

  else
  {
  }

  (*(v0[11] + 8))(v0[12], v0[10]);
  v14 = v0[14];
  v15 = v0[9];
  v16 = swift_task_alloc();
  v0[20] = v16;
  *(v16 + 16) = v14;
  *(v16 + 24) = v15;
  v17 = swift_task_alloc();
  v0[21] = v17;
  *v17 = v0;
  v17[1] = sub_22B3346C0;
  v18 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822007B8](v17, 0, 0, 0xD000000000000015, 0x800000022B36EBA0, sub_22B338960, v16, v18);
}

void sub_22B334AC4(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA288, &unk_22B363A10);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = aBlock - v8;
  sub_22B128014(0, &qword_281408570, 0x277CBC490);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA238, &unk_22B365D70);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_22B363650;
  *(v10 + 32) = a2;
  v11 = a2;
  v12 = sub_22B360F1C();
  sub_22B333320();
  (*(v7 + 16))(v9, a1, v6);
  v13 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v14 = swift_allocObject();
  (*(v7 + 32))(v14 + v13, v9, v6);
  aBlock[4] = sub_22B338974;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22B335120;
  aBlock[3] = &block_descriptor_15_0;
  v15 = _Block_copy(aBlock);

  [v12 setModifyRecordZonesCompletionBlock_];
  _Block_release(v15);
  v16 = [*(a3 + 16) privateCloudDatabase];
  [v16 addOperation_];
}

uint64_t sub_22B334D20(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_22B36052C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v32[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v32[-1] - v9;
  if (a3)
  {
    if (qword_28140A0C8 != -1)
    {
      swift_once();
    }

    v11 = __swift_project_value_buffer(v4, qword_28140BD10);
    swift_beginAccess();
    (*(v5 + 16))(v7, v11, v4);
    v12 = a3;
    v13 = sub_22B36050C();
    v14 = sub_22B360D1C();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v31 = a3;
      v32[0] = v16;
      *v15 = 136315138;
      v17 = a3;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BB070, &qword_22B3677B0);
      v18 = sub_22B3608BC();
      v20 = sub_22B1A7B20(v18, v19, v32);

      *(v15 + 4) = v20;
      _os_log_impl(&dword_22B116000, v13, v14, "[CloudKitHelper] Error creating bootstrap zone - %s", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v16);
      MEMORY[0x23188F650](v16, -1, -1);
      MEMORY[0x23188F650](v15, -1, -1);
    }

    (*(v5 + 8))(v7, v4);
    v21 = [objc_opt_self() processInfo];
    v22 = [v21 processName];

    v23 = sub_22B36084C();
    v25 = v24;

    LOWORD(v32[0]) = 259;
    BYTE2(v32[0]) = 11;
    v32[1] = v23;
    v32[2] = v25;
    v32[3] = 0;
    static AutoBugCaptureManager.sendIssue(_:)(v32);
  }

  else
  {
    if (qword_28140A0C8 != -1)
    {
      swift_once();
    }

    v26 = __swift_project_value_buffer(v4, qword_28140BD10);
    swift_beginAccess();
    (*(v5 + 16))(v10, v26, v4);
    v27 = sub_22B36050C();
    v28 = sub_22B360D2C();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&dword_22B116000, v27, v28, "[CloudKitHelper] Bootstrap record zone is created.", v29, 2u);
      MEMORY[0x23188F650](v29, -1, -1);
    }

    (*(v5 + 8))(v10, v4);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA288, &unk_22B363A10);
  return sub_22B360AEC();
}

double sub_22B335120(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = a2;
  v7 = *(a1 + 32);
  if (a2)
  {
    sub_22B128014(0, &qword_281409328, 0x277CBC5E8);
    v6 = sub_22B360A5C();
  }

  if (a3)
  {
    sub_22B128014(0, &qword_281409318, 0x277CBC5F8);
    a3 = sub_22B360A5C();
  }

  v8 = a4;
  v7(v6, a3, a4);

  return result;
}

uint64_t sub_22B335200()
{
  v1[7] = v0;
  v2 = sub_22B36052C();
  v1[8] = v2;
  v1[9] = *(v2 - 8);
  v1[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B3352C0, 0, 0);
}

uint64_t sub_22B3352C0()
{
  v1 = swift_task_alloc();
  *(v0 + 88) = v1;
  v2 = sub_22B128014(0, &qword_281409320, 0x277CBC160);
  *v1 = v0;
  v1[1] = sub_22B3353B4;
  v3 = *(v0 + 56);

  return MEMORY[0x2822008A0](v0 + 40, 0, 0, 0x49746E756F636361, 0xED000029286F666ELL, sub_22B3388CC, v3, v2);
}

uint64_t sub_22B3353B4()
{
  *(*v1 + 96) = v0;

  if (v0)
  {
    v2 = sub_22B335548;
  }

  else
  {
    v2 = sub_22B3354C8;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_22B3354C8()
{
  v1 = *(v0 + 40);
  v2 = [v1 supportsDeviceToDeviceEncryption];

  v3 = *(v0 + 8);

  return v3(v2);
}

uint64_t sub_22B335548()
{
  v24 = v0;
  if (qword_28140A0C8 != -1)
  {
    swift_once();
  }

  v1 = v0[12];
  v3 = v0[9];
  v2 = v0[10];
  v4 = v0[8];
  v5 = __swift_project_value_buffer(v4, qword_28140BD10);
  swift_beginAccess();
  (*(v3 + 16))(v2, v5, v4);
  v6 = v1;
  v7 = sub_22B36050C();
  v8 = sub_22B360D1C();

  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[12];
  v11 = v0[9];
  v12 = v0[10];
  v13 = v0[8];
  if (v9)
  {
    v22 = v0[10];
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v23 = v15;
    *v14 = 136446466;
    *(v14 + 4) = sub_22B1A7B20(0xD000000000000014, 0x800000022B36EB50, &v23);
    *(v14 + 12) = 2082;
    v0[6] = v10;
    v16 = v10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8BACE0, &unk_22B365D60);
    v17 = sub_22B3608BC();
    v19 = sub_22B1A7B20(v17, v18, &v23);

    *(v14 + 14) = v19;
    _os_log_impl(&dword_22B116000, v7, v8, "%{public}s error: %{public}s", v14, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x23188F650](v15, -1, -1);
    MEMORY[0x23188F650](v14, -1, -1);

    (*(v11 + 8))(v22, v13);
  }

  else
  {

    (*(v11 + 8))(v12, v13);
  }

  v20 = v0[1];

  return v20(0);
}

uint64_t sub_22B3357C4(uint64_t a1, uint64_t a2)
{
  v3[12] = a2;
  v3[13] = v2;
  v3[11] = a1;
  v4 = sub_22B36052C();
  v3[14] = v4;
  v3[15] = *(v4 - 8);
  v3[16] = swift_task_alloc();
  v3[17] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B335894, 0, 0);
}

uint64_t sub_22B335894()
{
  v1 = v0[12];
  v2 = HIBYTE(v1) & 0xF;
  if ((v1 & 0x2000000000000000) == 0)
  {
    v2 = v0[11] & 0xFFFFFFFFFFFFLL;
  }

  if (v2)
  {
    v3 = v0[13];
    v4 = objc_allocWithZone(MEMORY[0x277CBC5E8]);
    v5 = sub_22B36081C();
    v6 = [v4 initWithZoneName_];
    v0[18] = v6;

    v0[19] = [*(v3 + 16) privateCloudDatabase];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA238, &unk_22B365D70);
    v7 = swift_allocObject();
    v0[20] = v7;
    *(v7 + 16) = xmmword_22B363650;
    *(v7 + 32) = [v6 zoneID];
    v8 = swift_task_alloc();
    v0[21] = v8;
    *v8 = v0;
    v8[1] = sub_22B335B80;

    return MEMORY[0x28210DE68](v7);
  }

  else
  {
    if (qword_28140A0C8 != -1)
    {
      swift_once();
    }

    v9 = v0[17];
    v10 = v0[14];
    v11 = v0[15];
    v12 = __swift_project_value_buffer(v10, qword_28140BD10);
    swift_beginAccess();
    (*(v11 + 16))(v9, v12, v10);
    v13 = sub_22B36050C();
    v14 = sub_22B360D1C();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_22B116000, v13, v14, "Received empty zone name", v15, 2u);
      MEMORY[0x23188F650](v15, -1, -1);
    }

    v16 = v0[17];
    v17 = v0[14];
    v18 = v0[15];

    (*(v18 + 8))(v16, v17);
    sub_22B134CDC();
    swift_allocError();
    *v19 = 13;
    swift_willThrow();

    v20 = v0[1];

    return v20();
  }
}

uint64_t sub_22B335B80(uint64_t a1)
{
  v3 = *v2;
  v3[22] = a1;
  v3[23] = v1;

  if (v1)
  {
    v4 = sub_22B33625C;
  }

  else
  {
    v5 = v3[19];

    v4 = sub_22B335CA0;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_22B335CA0()
{
  v1 = *(v0 + 176);
  if (!*(v1 + 16))
  {

LABEL_11:
    v15 = *(v0 + 144);
    v16 = *(v0 + 104);
    v17 = swift_task_alloc();
    *(v0 + 192) = v17;
    *(v17 + 16) = v15;
    *(v17 + 24) = v16;
    v18 = swift_task_alloc();
    *(v0 + 200) = v18;
    v19 = sub_22B128014(0, &qword_281409328, 0x277CBC5E8);
    *v18 = v0;
    v18[1] = sub_22B3360C4;

    return MEMORY[0x2822008A0](v0 + 72, 0, 0, 0xD00000000000001BLL, 0x800000022B36EC10, sub_22B338D40, v17, v19);
  }

  v2 = [*(v0 + 144) zoneID];
  v3 = v2;
  if (!*(v1 + 16) || (v4 = sub_22B33B304(v2), (v5 & 1) == 0))
  {

    goto LABEL_11;
  }

  v6 = *(*(v0 + 176) + 56) + 16 * v4;
  v7 = *v6;
  v8 = *(v6 + 8);
  sub_22B338968(*v6);

  if (v8)
  {
    *(v0 + 80) = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8BACE0, &unk_22B365D60);
    swift_willThrowTypedImpl();
    *(v0 + 64) = v7;
    v9 = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8BACE0, &unk_22B365D60);
    if (swift_dynamicCast())
    {
      v10 = *(v0 + 144);
      v11 = *(v0 + 216);
      sub_22B134CDC();
      swift_allocError();
      *v12 = v11;
      swift_willThrow();

      v13 = *(v0 + 8);

      return v13();
    }

    goto LABEL_11;
  }

  if (qword_28140A0C8 != -1)
  {
    swift_once();
  }

  v21 = *(v0 + 120);
  v20 = *(v0 + 128);
  v22 = *(v0 + 112);
  v23 = __swift_project_value_buffer(v22, qword_28140BD10);
  swift_beginAccess();
  (*(v21 + 16))(v20, v23, v22);
  v24 = sub_22B36050C();
  v25 = sub_22B360D1C();
  v26 = os_log_type_enabled(v24, v25);
  v27 = *(v0 + 144);
  v29 = *(v0 + 120);
  v28 = *(v0 + 128);
  v30 = *(v0 + 112);
  if (v26)
  {
    v31 = swift_slowAlloc();
    *v31 = 0;
    _os_log_impl(&dword_22B116000, v24, v25, "Zone already exists. Possible the site exists too. Halt.", v31, 2u);
    MEMORY[0x23188F650](v31, -1, -1);
  }

  (*(v29 + 8))(v28, v30);

  v32 = *(v0 + 8);

  return v32(v7);
}

uint64_t sub_22B3360C4()
{
  *(*v1 + 208) = v0;

  if (v0)
  {
    v2 = sub_22B33645C;
  }

  else
  {

    v2 = sub_22B3361E0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_22B3361E0()
{
  v1 = *(v0 + 72);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_22B33625C()
{
  v1 = *(v0 + 152);

  v2 = *(v0 + 184);
  *(v0 + 64) = v2;
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8BACE0, &unk_22B365D60);
  if (swift_dynamicCast())
  {
    v4 = *(v0 + 144);
    v5 = *(v0 + 216);
    sub_22B134CDC();
    swift_allocError();
    *v6 = v5;
    swift_willThrow();

    v7 = *(v0 + 8);

    return v7();
  }

  else
  {

    v9 = *(v0 + 144);
    v10 = *(v0 + 104);
    v11 = swift_task_alloc();
    *(v0 + 192) = v11;
    *(v11 + 16) = v9;
    *(v11 + 24) = v10;
    v12 = swift_task_alloc();
    *(v0 + 200) = v12;
    v13 = sub_22B128014(0, &qword_281409328, 0x277CBC5E8);
    *v12 = v0;
    v12[1] = sub_22B3360C4;

    return MEMORY[0x2822008A0](v0 + 72, 0, 0, 0xD00000000000001BLL, 0x800000022B36EC10, sub_22B338D40, v11, v13);
  }
}

uint64_t sub_22B33645C()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_22B3364DC(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BB078, &qword_22B3677B8);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = aBlock - v9;
  sub_22B128014(0, &qword_281408570, 0x277CBC490);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA238, &unk_22B365D70);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_22B363650;
  *(v11 + 32) = a2;
  v12 = a2;
  v13 = sub_22B360F1C();
  sub_22B333320();
  (*(v7 + 16))(v10, a1, v6);
  v14 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v15 = swift_allocObject();
  (*(v7 + 32))(v15 + v14, v10, v6);
  *(v15 + ((v8 + v14 + 7) & 0xFFFFFFFFFFFFFFF8)) = v12;
  aBlock[4] = sub_22B338D48;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22B335120;
  aBlock[3] = &block_descriptor_53;
  v16 = _Block_copy(aBlock);
  v17 = v12;

  [v13 setModifyRecordZonesCompletionBlock_];
  _Block_release(v16);
  v18 = [*(a3 + 16) privateCloudDatabase];
  [v18 addOperation_];
}

uint64_t sub_22B336754(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5)
{
  v8 = sub_22B36052C();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = v38 - v13;
  if (a3)
  {
    if (qword_28140A0C8 != -1)
    {
      swift_once();
    }

    v15 = __swift_project_value_buffer(v8, qword_28140BD10);
    swift_beginAccess();
    (*(v9 + 16))(v11, v15, v8);
    v16 = a3;
    v17 = sub_22B36050C();
    v18 = sub_22B360D1C();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v38[1] = a4;
      v38[2] = a3;
      v21 = v20;
      v39[0] = v20;
      *v19 = 136315138;
      v22 = a3;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BB070, &qword_22B3677B0);
      v23 = sub_22B3608BC();
      v25 = sub_22B1A7B20(v23, v24, v39);

      *(v19 + 4) = v25;
      _os_log_impl(&dword_22B116000, v17, v18, "[CloudKitHelper] Error creating zone - %s", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v21);
      MEMORY[0x23188F650](v21, -1, -1);
      MEMORY[0x23188F650](v19, -1, -1);
    }

    (*(v9 + 8))(v11, v8);
    v26 = [objc_opt_self() processInfo];
    v27 = [v26 processName];

    v28 = sub_22B36084C();
    v30 = v29;

    LOWORD(v39[0]) = 259;
    BYTE2(v39[0]) = 14;
    v39[1] = v28;
    v39[2] = v30;
    v39[3] = 0;
    static AutoBugCaptureManager.sendIssue(_:)(v39);

    v39[0] = a3;
    v31 = a3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BB078, &qword_22B3677B8);
    return sub_22B360ADC();
  }

  else
  {
    if (qword_28140A0C8 != -1)
    {
      swift_once();
    }

    v33 = __swift_project_value_buffer(v8, qword_28140BD10);
    swift_beginAccess();
    (*(v9 + 16))(v14, v33, v8);
    v34 = sub_22B36050C();
    v35 = sub_22B360D2C();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      *v36 = 0;
      _os_log_impl(&dword_22B116000, v34, v35, "[CloudKitHelper] Record zone is created.", v36, 2u);
      MEMORY[0x23188F650](v36, -1, -1);
    }

    (*(v9 + 8))(v14, v8);
    v39[4] = a5;
    v37 = a5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BB078, &qword_22B3677B8);
    return sub_22B360AEC();
  }
}

uint64_t sub_22B336B9C(uint64_t a1, uint64_t a2)
{
  v3[6] = a2;
  v3[7] = v2;
  v3[5] = a1;
  v4 = sub_22B36052C();
  v3[8] = v4;
  v3[9] = *(v4 - 8);
  v3[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B336C60, 0, 0);
}

uint64_t sub_22B336C60()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = HIBYTE(v1) & 0xF;
  if ((v1 & 0x2000000000000000) == 0)
  {
    v3 = v2 & 0xFFFFFFFFFFFFLL;
  }

  if (v3)
  {
    v4 = v0[7];
    v5 = swift_task_alloc();
    v0[11] = v5;
    v5[2] = v2;
    v5[3] = v1;
    v5[4] = v4;
    v6 = swift_task_alloc();
    v0[12] = v6;
    *v6 = v0;
    v6[1] = sub_22B336EEC;
    v7 = MEMORY[0x277D84F78] + 8;

    return MEMORY[0x2822008A0](v6, 0, 0, 0xD00000000000001BLL, 0x800000022B36EBF0, sub_22B338BE8, v5, v7);
  }

  else
  {
    if (qword_28140A0C8 != -1)
    {
      swift_once();
    }

    v9 = v0[9];
    v8 = v0[10];
    v10 = v0[8];
    v11 = __swift_project_value_buffer(v10, qword_28140BD10);
    swift_beginAccess();
    (*(v9 + 16))(v8, v11, v10);
    v12 = sub_22B36050C();
    v13 = sub_22B360D1C();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_22B116000, v12, v13, "Received empty zone name", v14, 2u);
      MEMORY[0x23188F650](v14, -1, -1);
    }

    v16 = v0[9];
    v15 = v0[10];
    v17 = v0[8];

    (*(v16 + 8))(v15, v17);
    sub_22B134CDC();
    swift_allocError();
    *v18 = 13;
    swift_willThrow();

    v19 = v0[1];

    return v19();
  }
}

uint64_t sub_22B336EEC()
{
  *(*v1 + 104) = v0;

  if (v0)
  {
    v2 = sub_22B33706C;
  }

  else
  {

    v2 = sub_22B337008;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_22B337008()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22B33706C()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_22B3370D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8BAAD0, &qword_22B363A50);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = aBlock - v8;
  v10 = objc_allocWithZone(MEMORY[0x277CBC5E8]);
  v11 = sub_22B36081C();
  v12 = [v10 initWithZoneName_];

  sub_22B128014(0, &qword_281408570, 0x277CBC490);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA238, &unk_22B365D70);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_22B363650;
  *(v13 + 32) = [v12 zoneID];
  v14 = sub_22B360F1C();
  sub_22B333320();
  [v14 setMarkZonesAsUserPurged_];
  (*(v7 + 16))(v9, a1, v6);
  v15 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v16 = swift_allocObject();
  (*(v7 + 32))(v16 + v15, v9, v6);
  aBlock[4] = sub_22B338C78;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22B335120;
  aBlock[3] = &block_descriptor_44_1;
  v17 = _Block_copy(aBlock);

  [v14 setModifyRecordZonesCompletionBlock_];
  _Block_release(v17);
  v18 = [*(a4 + 16) privateCloudDatabase];
  [v18 addOperation_];
}

uint64_t sub_22B33739C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = sub_22B36052C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = v35 - v11;
  if (a3)
  {
    if (qword_28140A0C8 != -1)
    {
      swift_once();
    }

    v13 = __swift_project_value_buffer(v6, qword_28140BD10);
    swift_beginAccess();
    (*(v7 + 16))(v9, v13, v6);
    v14 = a3;
    v15 = sub_22B36050C();
    v16 = sub_22B360D1C();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v35[1] = a4;
      v18 = v17;
      v19 = swift_slowAlloc();
      v35[2] = a3;
      v36[0] = v19;
      *v18 = 136315138;
      v20 = a3;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BB070, &qword_22B3677B0);
      v21 = sub_22B3608BC();
      v23 = sub_22B1A7B20(v21, v22, v36);

      *(v18 + 4) = v23;
      _os_log_impl(&dword_22B116000, v15, v16, "[CloudKitHelper] Error deleting zone - %s", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v19);
      MEMORY[0x23188F650](v19, -1, -1);
      MEMORY[0x23188F650](v18, -1, -1);
    }

    (*(v7 + 8))(v9, v6);
    v24 = [objc_opt_self() processInfo];
    v25 = [v24 processName];

    v26 = sub_22B36084C();
    v28 = v27;

    LOWORD(v36[0]) = 259;
    BYTE2(v36[0]) = 13;
    v36[1] = v26;
    v36[2] = v28;
    v36[3] = 0;
    static AutoBugCaptureManager.sendIssue(_:)(v36);

    v36[0] = a3;
    v29 = a3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8BAAD0, &qword_22B363A50);
    return sub_22B360ADC();
  }

  else
  {
    if (qword_28140A0C8 != -1)
    {
      swift_once();
    }

    v31 = __swift_project_value_buffer(v6, qword_28140BD10);
    swift_beginAccess();
    (*(v7 + 16))(v12, v31, v6);
    v32 = sub_22B36050C();
    v33 = sub_22B360D2C();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      _os_log_impl(&dword_22B116000, v32, v33, "[CloudKitHelper] Record zone is deleted.", v34, 2u);
      MEMORY[0x23188F650](v34, -1, -1);
    }

    (*(v7 + 8))(v12, v6);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8BAAD0, &qword_22B363A50);
    return sub_22B360AEC();
  }
}

uint64_t sub_22B3377D4(uint64_t a1, void *a2, uint64_t a3, void *a4, void *a5)
{
  v33 = a5;
  v31 = sub_22B3605EC();
  v35 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v30 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_22B36062C();
  v32 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v29 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8BAAD0, &qword_22B363A50);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v29 - v13;
  if (qword_2814097C0 != -1)
  {
    swift_once();
  }

  v15 = *(qword_28140BCF0 + 24);
  (*(v12 + 16))(v14, a1, v11);
  v16 = (*(v12 + 80) + 48) & ~*(v12 + 80);
  v17 = swift_allocObject();
  *(v17 + 2) = a2;
  *(v17 + 3) = a3;
  *(v17 + 4) = a4;
  v18 = a4;
  v19 = v33;
  *(v17 + 5) = v33;
  (*(v12 + 32))(&v17[v16], v14, v11);
  aBlock[4] = sub_22B33899C;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22B118A6C;
  aBlock[3] = &block_descriptor_21_0;
  v20 = _Block_copy(aBlock);
  v21 = v15;
  v22 = a2;

  v23 = v18;
  v24 = v19;
  v25 = v29;
  sub_22B36060C();
  v36 = MEMORY[0x277D84F90];
  sub_22B338E08(&qword_281409370, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8BA330, &unk_22B363330);
  sub_22B118A18(&qword_281409350, &unk_27D8BA330, &unk_22B363330);
  v27 = v30;
  v26 = v31;
  sub_22B36104C();
  MEMORY[0x23188E6D0](0, v25, v27, v20);
  _Block_release(v20);

  (*(v35 + 8))(v27, v26);
  (*(v32 + 8))(v25, v34);
}

uint64_t sub_22B337BE4(void *a1, uint64_t a2, void *a3, void *a4, uint64_t a5)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8BAAD0, &qword_22B363A50);
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = aBlock - v13;
  (*(v11 + 16))(aBlock - v13, a5, v10, v12);
  v15 = (*(v11 + 80) + 48) & ~*(v11 + 80);
  v16 = swift_allocObject();
  *(v16 + 2) = a2;
  *(v16 + 3) = a1;
  *(v16 + 4) = a3;
  *(v16 + 5) = a4;
  (*(v11 + 32))(&v16[v15], v14, v10);
  v17 = swift_allocObject();
  *(v17 + 16) = sub_22B3389B4;
  *(v17 + 24) = v16;
  aBlock[4] = sub_22B12819C;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22B32556C;
  aBlock[3] = &block_descriptor_30;
  v18 = _Block_copy(aBlock);

  v19 = a1;
  v20 = a3;
  v21 = a4;

  [v19 performBlockAndWait_];
  _Block_release(v18);
  LOBYTE(a4) = swift_isEscapingClosureAtFileLocation();

  if (a4)
  {
    __break(1u);
  }

  return result;
}

void sub_22B337E3C(unint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v36 = a5;
  v41 = a4;
  v40 = a3;
  v48 = a2;
  v53 = *MEMORY[0x277D85DE8];
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8BAAD0, &qword_22B363A50);
  v37 = *(v38 - 8);
  v34[2] = *(v37 + 64);
  MEMORY[0x28223BE20](v38);
  v35 = v34 - v6;
  v7 = sub_22B36052C();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = MEMORY[0x23188EEB0](v9);
  v50 = a1;
  aBlock[0] = MEMORY[0x277D84F90];
  if (a1 >> 62)
  {
LABEL_23:
    v49 = v50 & 0xFFFFFFFFFFFFFF8;
    v13 = sub_22B36109C();
    if (!v13)
    {
      goto LABEL_24;
    }
  }

  else
  {
    v49 = v50 & 0xFFFFFFFFFFFFFF8;
    v13 = *((v50 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v13)
    {
      goto LABEL_24;
    }
  }

  v14 = 0;
  v47 = v50 & 0xC000000000000001;
  v44 = &v8[1];
  v45 = &v8[2];
  v8 = MEMORY[0x277D84F90];
  *&v12 = 138412290;
  v42 = v12;
  v43 = v11;
  v46 = v13;
  do
  {
    v34[1] = v8;
    while (1)
    {
      if (v47)
      {
        v15 = MEMORY[0x23188EAC0](v14, v50);
      }

      else
      {
        if (v14 >= *(v49 + 16))
        {
          goto LABEL_22;
        }

        v15 = *(v50 + 8 * v14 + 32);
      }

      v8 = v15;
      v16 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
LABEL_22:
        __break(1u);
        goto LABEL_23;
      }

      v52 = 0;
      if ([v48 existingObjectWithID:v15 error:&v52])
      {
        break;
      }

      v17 = v52;
      v18 = sub_22B35DB9C();

      swift_willThrow();
      if (qword_28140A0C8 != -1)
      {
        swift_once();
      }

      v19 = __swift_project_value_buffer(v7, qword_28140BD10);
      swift_beginAccess();
      (*v45)(v11, v19, v7);
      v20 = v8;
      v8 = sub_22B36050C();
      v21 = sub_22B360D1C();

      if (os_log_type_enabled(v8, v21))
      {
        v22 = swift_slowAlloc();
        v23 = swift_slowAlloc();
        *v22 = v42;
        *(v22 + 4) = v20;
        *v23 = v20;
        v24 = v20;
        _os_log_impl(&dword_22B116000, v8, v21, "[CloudKitHelper] Failed to get object for objectID %@ to add to share", v22, 0xCu);
        sub_22B12F10C(v23);
        MEMORY[0x23188F650](v23, -1, -1);
        v25 = v22;
        v11 = v43;
        MEMORY[0x23188F650](v25, -1, -1);
      }

      (*v44)(v11, v7);
      ++v14;
      v13 = v46;
      if (v16 == v46)
      {
        goto LABEL_24;
      }
    }

    v26 = v52;

    MEMORY[0x23188E350]();
    if (*((aBlock[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((aBlock[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_22B360A7C();
    }

    sub_22B360A9C();
    v8 = aBlock[0];
    ++v14;
  }

  while (v16 != v13);
LABEL_24:
  sub_22B128014(0, &unk_281408598, 0x277CBE438);
  v27 = sub_22B360A3C();

  v28 = v37;
  v29 = v35;
  v30 = v38;
  (*(v37 + 16))(v35, v36, v38);
  v31 = (*(v28 + 80) + 16) & ~*(v28 + 80);
  v32 = swift_allocObject();
  (*(v28 + 32))(v32 + v31, v29, v30);
  aBlock[4] = sub_22B338ADC;
  aBlock[5] = v32;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22B333238;
  aBlock[3] = &block_descriptor_36_1;
  v33 = _Block_copy(aBlock);

  [v40 shareManagedObjects:v27 toShare:v41 completion:v33];
  _Block_release(v33);

  objc_autoreleasePoolPop(v39);
}

uint64_t sub_22B33845C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = sub_22B36052C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v32[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v32[-1] - v10;
  if (a4)
  {
    v12 = a4;
    if (qword_28140A0C8 != -1)
    {
      swift_once();
    }

    v13 = __swift_project_value_buffer(v5, qword_28140BD10);
    swift_beginAccess();
    (*(v6 + 16))(v8, v13, v5);
    v14 = a4;
    v15 = sub_22B36050C();
    v16 = sub_22B360D1C();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      *v17 = 138412290;
      v19 = a4;
      v20 = _swift_stdlib_bridgeErrorToNSError();
      *(v17 + 4) = v20;
      *v18 = v20;
      _os_log_impl(&dword_22B116000, v15, v16, "[CloudKitHelper] Failed to add records to share. error %@", v17, 0xCu);
      sub_22B12F10C(v18);
      MEMORY[0x23188F650](v18, -1, -1);
      MEMORY[0x23188F650](v17, -1, -1);
    }

    (*(v6 + 8))(v8, v5);
    v21 = [objc_opt_self() processInfo];
    v22 = [v21 processName];

    v23 = sub_22B36084C();
    v25 = v24;

    LOWORD(v32[0]) = 259;
    BYTE2(v32[0]) = 12;
    v32[1] = v23;
    v32[2] = v25;
    v32[3] = 0;
    static AutoBugCaptureManager.sendIssue(_:)(v32);

    v32[0] = a4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8BAAD0, &qword_22B363A50);
    return sub_22B360ADC();
  }

  else
  {
    if (qword_28140A0C8 != -1)
    {
      swift_once();
    }

    v27 = __swift_project_value_buffer(v5, qword_28140BD10);
    swift_beginAccess();
    (*(v6 + 16))(v11, v27, v5);
    v28 = sub_22B36050C();
    v29 = sub_22B360D1C();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&dword_22B116000, v28, v29, "[CloudKitHelper] Successfully added records to share", v30, 2u);
      MEMORY[0x23188F650](v30, -1, -1);
    }

    (*(v6 + 8))(v11, v5);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8BAAD0, &qword_22B363A50);
    return sub_22B360AEC();
  }
}

uint64_t sub_22B338868()
{

  return swift_deallocClassInstance();
}

uint64_t sub_22B3388D4(void *a1, void *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BB068, &unk_22B3677A0);

  return sub_22B333BD8(a1, a2);
}

uint64_t sub_22B3389CC(uint64_t (*a1)(uint64_t, uint64_t, uint64_t, uint64_t, char *))
{
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8BAAD0, &qword_22B363A50) - 8);
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  v6 = v1[5];
  v7 = v1 + ((*(v2 + 80) + 48) & ~*(v2 + 80));

  return a1(v3, v4, v5, v6, v7);
}

void (*sub_22B338A54(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x23188EAC0](a2, a3);
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
    return sub_22B338AD4;
  }

  __break(1u);
  return result;
}

uint64_t sub_22B338ADC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8BAAD0, &qword_22B363A50);

  return sub_22B33845C(a1, a2, a3, a4);
}

unint64_t sub_22B338B80()
{
  result = qword_281408588;
  if (!qword_281408588)
  {
    sub_22B128014(255, &qword_281408590, 0x277CBE448);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281408588);
  }

  return result;
}

uint64_t objectdestroyTm_2(uint64_t *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 16) & ~v5;
  v7 = *(v4 + 64);
  (*(v4 + 8))(v2 + v6, v3);

  return MEMORY[0x2821FE8E8](v2, v6 + v7, v5 | 7);
}

uint64_t sub_22B338CA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, uint64_t (*a6)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a4, a5) - 8);
  v11 = v6 + ((*(v10 + 80) + 16) & ~*(v10 + 80));

  return a6(a1, a2, a3, v11);
}

uint64_t sub_22B338D48(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BB078, &qword_22B3677B8) - 8);
  v8 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v9 = *(v3 + ((*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_22B336754(a1, a2, a3, v3 + v8, v9);
}

uint64_t sub_22B338E08(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_22B338E80(uint64_t a1@<X3>, uint64_t a2@<X8>)
{
  v117 = a1;
  v107 = a2;
  v2 = sub_22B36052C();
  v119 = *(v2 - 1);
  v120 = v2;
  MEMORY[0x28223BE20](v2);
  v122 = &v96 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v118 = &v96 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA340, &qword_22B363FB0);
  MEMORY[0x28223BE20](v6 - 8);
  v99 = &v96 - v7;
  v106 = sub_22B35E1DC();
  v105 = *(v106 - 8);
  MEMORY[0x28223BE20](v106);
  v100 = &v96 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v103 = sub_22B36089C();
  v102 = *(v103 - 8);
  MEMORY[0x28223BE20](v103);
  v101 = &v96 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v115 = sub_22B35DDBC();
  v108 = *(v115 - 8);
  MEMORY[0x28223BE20](v115);
  v11 = &v96 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v116 = sub_22B35DE9C();
  v104 = *(v116 - 8);
  MEMORY[0x28223BE20](v116);
  v114 = &v96 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v96 - v14;
  MEMORY[0x28223BE20](v16);
  v18 = &v96 - v17;
  MEMORY[0x28223BE20](v19);
  v21 = &v96 - v20;
  MEMORY[0x28223BE20](v22);
  v24 = &v96 - v23;
  MEMORY[0x28223BE20](v25);
  v27 = &v96 - v26;
  MEMORY[0x28223BE20](v28);
  v30 = &v96 - v29;
  MEMORY[0x28223BE20](v31);
  v33 = &v96 - v32;
  MEMORY[0x28223BE20](v34);
  v36 = &v96 - v35;
  sub_22B35D8AC();
  if (v37 == 0.0)
  {
    if (qword_27D8B9FD0 != -1)
    {
      swift_once();
    }

    v38 = v120;
    v39 = __swift_project_value_buffer(v120, qword_27D8BB1F0);
    swift_beginAccess();
    v40 = v119;
    v41 = v122;
    (*(v119 + 16))(v122, v39, v38);
    v42 = sub_22B36050C();
    v43 = sub_22B360D1C();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v125[0] = v45;
      *v44 = 136315138;
      *(v44 + 4) = sub_22B1A7B20(0xD000000000000027, 0x800000022B36EC80, v125);
      _os_log_impl(&dword_22B116000, v42, v43, "%s failed with empty dateInterval", v44, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v45);
      MEMORY[0x23188F650](v45, -1, -1);
      MEMORY[0x23188F650](v44, -1, -1);
    }

    (*(v40 + 8))(v41, v38);
LABEL_15:
    (*(v105 + 56))(v107, 1, 1, v106);
    return;
  }

  v97 = v24;
  v110 = v15;
  v111 = v27;
  v98 = v30;
  v121 = v18;
  v122 = v21;
  sub_22B35DE6C();
  sub_22B35D89C();
  v46 = sub_22B35DDFC();
  v47 = v104;
  v48 = v104 + 8;
  v49 = *(v104 + 8);
  v50 = v116;
  v49(v33, v116);
  v112 = v49;
  v113 = v48;
  if ((v46 & 1) == 0)
  {
    v56 = v36;
    if (qword_27D8B9FD0 != -1)
    {
      swift_once();
    }

    v57 = v120;
    v58 = __swift_project_value_buffer(v120, qword_27D8BB1F0);
    swift_beginAccess();
    v60 = v118;
    v59 = v119;
    (*(v119 + 16))(v118, v58, v57);
    v61 = sub_22B36050C();
    v62 = sub_22B360D1C();
    if (os_log_type_enabled(v61, v62))
    {
      v63 = swift_slowAlloc();
      v64 = swift_slowAlloc();
      v125[0] = v64;
      *v63 = 136315138;
      *(v63 + 4) = sub_22B1A7B20(0xD000000000000027, 0x800000022B36EC80, v125);
      _os_log_impl(&dword_22B116000, v61, v62, "%s failed because date is not in the past.", v63, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v64);
      MEMORY[0x23188F650](v64, -1, -1);
      MEMORY[0x23188F650](v63, -1, -1);
    }

    (*(v59 + 8))(v60, v57);
    v112(v56, v50);
    goto LABEL_15;
  }

  strcpy(v126, "{ windows :[");
  v126[15] = -18;
  sub_22B35D89C();
  sub_22B35F50C();
  v49(v33, v50);
  v51 = v97;
  sub_22B35D86C();
  v109 = sub_22B339EA8(&qword_28140B490, MEMORY[0x277CC9578], MEMORY[0x277CC9590]);
  v52 = sub_22B36074C();
  v96 = v36;
  if (v52)
  {
    v53 = v111;
    (*(v47 + 32))(v111, v51, v50);
    v54 = *(v47 + 16);
    v55 = (v47 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  }

  else
  {
    v49(v51, v50);
    v54 = *(v47 + 16);
    v55 = (v47 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v53 = v111;
    v54();
  }

  v65 = v108;
  v119 = v55;
  v120 = v54;
  (v54)(v121, v98, v50);
  LODWORD(v97) = sub_22B35DDFC();
  if (v97)
  {
    v67 = 0;
    v68 = 0;
    v118 = (v104 + 32);
    v108 = v65 + 1;
    while (1)
    {
      sub_22B35F62C();
      v71 = v114;
      sub_22B35DDCC();
      if (sub_22B36074C())
      {
        break;
      }

      v49(v71, v50);
      v72 = v110;
      (v120)(v110, v53, v50);
      v73 = v115;
      if (v67)
      {
        goto LABEL_25;
      }

LABEL_26:
      (*v118)(v122, v72, v50);
      v125[0] = 0;
      v125[1] = 0xE000000000000000;
      sub_22B36116C();

      strcpy(v125, "{ rating : ");
      HIBYTE(v125[1]) = -18;
      if (v68)
      {
        v74 = 1414743362;
      }

      else
      {
        v74 = 0x5453524F57;
      }

      if (v68)
      {
        v75 = 0xE400000000000000;
      }

      else
      {
        v75 = 0xE500000000000000;
      }

      MEMORY[0x23188E270](v74, v75);

      v76 = MEMORY[0x23188E270](0x7261747322202C22, 0xED000022203A2274);
      MEMORY[0x23188B0F0](v76);
      sub_22B339EA8(&qword_27D8BB080, MEMORY[0x277CC94A0], MEMORY[0x277CC9490]);
      sub_22B35DE7C();
      v77 = *v108;
      (*v108)(v11, v73);
      v78 = v73;
      MEMORY[0x23188E270](v123, v124);

      v79 = MEMORY[0x23188E270](0x22646E6522202C22, 0xEB0000000022203ALL);
      MEMORY[0x23188B0F0](v79);
      sub_22B35DE7C();
      v80 = v11;
      v77(v11, v78);
      MEMORY[0x23188E270](v123, v124);

      MEMORY[0x23188E270](8200226, 0xE300000000000000);
      v82 = v125[0];
      v81 = v125[1];
      if (v67)
      {
      }

      MEMORY[0x23188E270](v82, v81);

      sub_22B339EA8(&qword_27D8BA430, MEMORY[0x277CC9578], MEMORY[0x277CC9598]);
      v83 = v122;
      v53 = v111;
      v50 = v116;
      v84 = sub_22B36078C();
      v49 = v112;
      if ((v84 & 1) == 0)
      {
        MEMORY[0x23188E270](44, 0xE100000000000000);
      }

      v69 = v121;
      v49(v121, v50);
      v68 ^= 1u;
      (v120)(v69, v83, v50);
      v70 = sub_22B35DDFC();
      v67 = 1;
      v117 = v81;
      v66 = v81;
      v11 = v80;
      if ((v70 & 1) == 0)
      {
        goto LABEL_36;
      }
    }

    v72 = v110;
    (*v118)(v110, v71, v50);
    v73 = v115;
    if ((v67 & 1) == 0)
    {
      goto LABEL_26;
    }

LABEL_25:
    v49(v122, v50);
    goto LABEL_26;
  }

LABEL_36:
  v120 = v66;
  MEMORY[0x23188E270](8200285, 0xE300000000000000);
  v85 = v101;
  sub_22B36088C();
  v86 = sub_22B36085C();
  v88 = v87;
  (*(v102 + 8))(v85, v103);
  if (v88 >> 60 == 15)
  {
    __break(1u);
  }

  else
  {

    sub_22B35D7FC();
    swift_allocObject();
    sub_22B35D7EC();
    sub_22B339EA8(&unk_2814091B0, MEMORY[0x277D17ED0], MEMORY[0x277D17EE0]);
    v89 = v100;
    v90 = v106;
    sub_22B35D7DC();
    v91 = v105;

    sub_22B35F62C();
    v92 = v99;
    sub_22B35DDCC();
    v93 = *(v104 + 56);
    v93(v92, 0, 1, v50);
    sub_22B35E19C();
    sub_22B35DE6C();
    v93(v92, 0, 1, v50);
    sub_22B35E1CC();
    sub_22B11EDC0(v86, v88);
    v94 = v112;
    v112(v121, v50);
    v94(v111, v50);
    v94(v98, v50);
    v94(v96, v50);
    v95 = v107;
    (*(v91 + 32))(v107, v89, v90);
    (*(v91 + 56))(v95, 0, 1, v90);
    if (v97)
    {
      v94(v122, v50);
    }
  }
}

uint64_t sub_22B339EA8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_22B339EF0()
{
  type metadata accessor for BackgroundTaskSchedulerDriver();
  result = swift_initStaticObject();
  qword_28140BCD8 = result;
  return result;
}

void sub_22B339F64(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  v86 = *MEMORY[0x277D85DE8];
  v76 = sub_22B36052C();
  v75 = *(v76 - 8);
  MEMORY[0x28223BE20](v76);
  v9 = &v70 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v70 - v11;
  v13 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v14 = sub_22B36081C();
  v15 = [v13 initWithEntityName_];

  v16 = objc_allocWithZone(MEMORY[0x277CBE360]);
  v77 = v15;
  v17 = [v16 initWithFetchRequest_];
  [v17 setResultType_];
  v18 = *(a3 + 48);
  *&aBlock = 0;
  v19 = [v18 executeRequest:v17 error:&aBlock];
  v20 = aBlock;
  if (v19)
  {
    v21 = v19;
    objc_opt_self();
    v22 = swift_dynamicCastObjCClass();
    v23 = v20;
    if (v22)
    {
      if ([v22 result])
      {
        sub_22B36102C();
        swift_unknownObjectRelease();
      }

      else
      {
        v84 = 0u;
        v85 = 0u;
      }

      v81 = v85;
      aBlock = v84;
      if (*(&v85 + 1))
      {
        v73 = v17;
        v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA858, &qword_22B365EF8);
        if (swift_dynamicCast())
        {
          v72 = v22;
          v71 = a4;
          v47 = v84;
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8BA960, &qword_22B365F00);
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_22B3634B0;
          *&aBlock = sub_22B36084C();
          *(&aBlock + 1) = v49;
          sub_22B36110C();
          *(inited + 96) = v46;
          *(inited + 72) = v47;
          sub_22B321BDC(inited);
          swift_setDeallocating();
          sub_22B123284(inited + 32, &unk_27D8BACC0, &unk_22B3662C0);
          v50 = objc_opt_self();
          v51 = sub_22B3606CC();

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA238, &unk_22B365D70);
          v52 = swift_allocObject();
          *(v52 + 16) = xmmword_22B363650;
          v53 = *(a3 + 48);
          *(v52 + 32) = v53;
          sub_22B128014(0, &qword_281408580, 0x277CBE440);
          v54 = v53;
          v55 = sub_22B360A3C();

          [v50 mergeChangesFromRemoteContextSave:v51 intoContexts:v55];

          if (qword_28140A0C8 != -1)
          {
            swift_once();
          }

          v56 = v76;
          v57 = __swift_project_value_buffer(v76, qword_28140BD10);
          swift_beginAccess();
          v58 = v75;
          (*(v75 + 16))(v12, v57, v56);

          v59 = sub_22B36050C();
          v60 = sub_22B360D2C();

          if (os_log_type_enabled(v59, v60))
          {
            v61 = swift_slowAlloc();
            v62 = swift_slowAlloc();
            v70 = v59;
            v63 = v62;
            *&aBlock = v62;
            *v61 = 136446210;
            *(v61 + 4) = sub_22B1A7B20(a1, a2, &aBlock);
            v64 = v70;
            _os_log_impl(&dword_22B116000, v70, v60, "Sucessfully deleted all data for %{public}s", v61, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v63);
            MEMORY[0x23188F650](v63, -1, -1);
            MEMORY[0x23188F650](v61, -1, -1);
          }

          else
          {
          }

          (*(v58 + 8))(v12, v56);
          v65 = v72;
          v66 = *(a3 + 48);
          v67 = swift_allocObject();
          *(v67 + 16) = sub_22B1281A4;
          *(v67 + 24) = a3;
          v82 = sub_22B12819C;
          v83 = v67;
          *&aBlock = MEMORY[0x277D85DD0];
          *(&aBlock + 1) = 1107296256;
          *&v81 = sub_22B32556C;
          *(&v81 + 1) = &block_descriptor_31;
          v68 = _Block_copy(&aBlock);
          v69 = v66;

          [v69 performBlockAndWait_];

          _Block_release(v68);
          LOBYTE(v68) = swift_isEscapingClosureAtFileLocation();

          if (v68)
          {
            __break(1u);
          }

          *v71 = 1;
        }

        else
        {

          *a4 = 0;
        }

        return;
      }
    }

    else
    {

      v81 = 0u;
      aBlock = 0u;
    }

    sub_22B123284(&aBlock, &unk_27D8BA950, &qword_22B364940);
    *a4 = 0;
    return;
  }

  v24 = aBlock;
  v25 = sub_22B35DB9C();

  swift_willThrow();
  v79 = v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8BACE0, &unk_22B365D60);
  sub_22B128014(0, &qword_281408530, 0x277CCA9B8);
  swift_dynamicCast();
  v26 = v78;
  if (qword_28140A0C8 != -1)
  {
    swift_once();
  }

  v73 = v17;
  v27 = v76;
  v28 = __swift_project_value_buffer(v76, qword_28140BD10);
  swift_beginAccess();
  v29 = v75;
  (*(v75 + 16))(v9, v28, v27);
  v30 = v26;
  v31 = sub_22B36050C();
  v32 = sub_22B360D1C();

  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    v74 = swift_slowAlloc();
    *&aBlock = v74;
    *v33 = 136446210;
    v34 = [v30 localizedDescription];
    v35 = sub_22B36084C();
    v36 = a4;
    v38 = v37;

    v39 = sub_22B1A7B20(v35, v38, &aBlock);
    a4 = v36;

    *(v33 + 4) = v39;
    _os_log_impl(&dword_22B116000, v31, v32, "Failed to batch delete data %{public}s", v33, 0xCu);
    v40 = v74;
    __swift_destroy_boxed_opaque_existential_0(v74);
    MEMORY[0x23188F650](v40, -1, -1);
    MEMORY[0x23188F650](v33, -1, -1);

    (*(v75 + 8))(v9, v76);
  }

  else
  {

    (*(v29 + 8))(v9, v27);
  }

  v41 = [objc_opt_self() processInfo];
  v42 = [v41 processName];

  v43 = sub_22B36084C();
  v45 = v44;

  LOWORD(aBlock) = 513;
  BYTE2(aBlock) = 8;
  *(&aBlock + 1) = v43;
  v81 = v45;
  static AutoBugCaptureManager.sendIssue(_:)(&aBlock);

  *a4 = 0;
}

uint64_t sub_22B33AA04()
{
  type metadata accessor for HomeEnergyDataManager();
  result = swift_allocObject();
  *(result + 16) = MEMORY[0x277D84F98];
  qword_28140BDB0 = result;
  return result;
}

void sub_22B33AA3C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = v4;
  v10 = sub_22B36052C();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  if (!*(*(v4 + 16) + 16) || (, sub_22B33B28C(a3, a4), v15 = v14, , (v15 & 1) == 0))
  {
    if (qword_28140A0C8 != -1)
    {
      swift_once();
    }

    v16 = __swift_project_value_buffer(v10, qword_28140BD10);
    swift_beginAccess();
    (*(v11 + 16))(v13, v16, v10);

    v17 = sub_22B36050C();
    v18 = sub_22B360D2C();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v28 = a1;
      v20 = v19;
      v21 = swift_slowAlloc();
      v29 = a2;
      v22 = v21;
      v31[0] = v21;
      *v20 = 136446210;
      *(v20 + 4) = sub_22B1A7B20(a3, a4, v31);
      _os_log_impl(&dword_22B116000, v17, v18, "Creating model %{public}s", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v22);
      v23 = v22;
      a2 = v29;
      MEMORY[0x23188F650](v23, -1, -1);
      v24 = v20;
      a1 = v28;
      MEMORY[0x23188F650](v24, -1, -1);
    }

    (*(v11 + 8))(v13, v10);
    type metadata accessor for CoreDataStack();
    swift_allocObject();
    swift_bridgeObjectRetain_n();

    v25 = sub_22B2A7F0C(a1, a2, a3, a4);

    v26 = v25[6];

    [v26 setShouldRefreshAfterSave_];

    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v30 = *(v5 + 16);
    *(v5 + 16) = 0x8000000000000000;
    sub_22B33F11C(v25, a3, a4, isUniquelyReferenced_nonNull_native);

    *(v5 + 16) = v30;
    swift_endAccess();
  }
}

uint64_t sub_22B33AD90(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = v4;
  v40 = a1;
  v9 = sub_22B36052C();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v38 - v14;
  swift_beginAccess();
  if (*(*(v4 + 16) + 16) && (, sub_22B33B28C(a3, a4), v17 = v16, , (v17 & 1) != 0))
  {
    v18 = a3;
    if (qword_28140A0C8 != -1)
    {
      swift_once();
    }

    v19 = __swift_project_value_buffer(v9, qword_28140BD10);
    swift_beginAccess();
    (*(v10 + 16))(v15, v19, v9);

    v20 = sub_22B36050C();
    v21 = sub_22B360D2C();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v41 = v23;
      *v22 = 136446210;
      *(v22 + 4) = sub_22B1A7B20(v18, a4, &v41);
      v24 = v21;
      a3 = v18;
      _os_log_impl(&dword_22B116000, v20, v24, "Model %{public}s already exists", v22, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v23);
      MEMORY[0x23188F650](v23, -1, -1);
      MEMORY[0x23188F650](v22, -1, -1);

      (*(v10 + 8))(v15, v9);
    }

    else
    {

      (*(v10 + 8))(v15, v9);
      a3 = v18;
    }
  }

  else
  {
    if (qword_28140A0C8 != -1)
    {
      swift_once();
    }

    v25 = __swift_project_value_buffer(v9, qword_28140BD10);
    swift_beginAccess();
    (*(v10 + 16))(v12, v25, v9);

    v26 = sub_22B36050C();
    v27 = sub_22B360D2C();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v39 = a2;
      v30 = a3;
      v31 = v29;
      v41 = v29;
      *v28 = 136446210;
      *(v28 + 4) = sub_22B1A7B20(v30, a4, &v41);
      _os_log_impl(&dword_22B116000, v26, v27, "Creating model %{public}s", v28, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v31);
      v32 = v31;
      a3 = v30;
      a2 = v39;
      MEMORY[0x23188F650](v32, -1, -1);
      MEMORY[0x23188F650](v28, -1, -1);
    }

    (*(v10 + 8))(v12, v9);
    sub_22B33AA3C(v40, a2, a3, a4);
  }

  v33 = *(v5 + 16);
  if (!*(v33 + 16))
  {
    return 0;
  }

  v34 = sub_22B33B28C(a3, a4);
  if (v35)
  {
    v36 = *(*(v33 + 56) + 8 * v34);
  }

  else
  {
    v36 = 0;
  }

  return v36;
}

unint64_t sub_22B33B248(uint64_t a1)
{
  v2 = sub_22B3610EC();

  return sub_22B3401C0(a1, v2);
}

unint64_t sub_22B33B28C(uint64_t a1, uint64_t a2)
{
  sub_22B36149C();
  sub_22B3608FC();
  v4 = sub_22B3614DC();

  return sub_22B340288(a1, a2, v4);
}

unint64_t sub_22B33B304(uint64_t a1)
{
  v2 = sub_22B360FAC();

  return sub_22B340340(a1, v2);
}

unint64_t sub_22B33B348(uint64_t a1)
{
  sub_22B35DE9C();
  v2 = MEMORY[0x277CC9578];
  sub_22B342F58(&qword_27D8BA348, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);
  v3 = sub_22B36071C();
  return sub_22B3409B8(a1, v3, MEMORY[0x277CC9578], &qword_27D8BA430, v2, MEMORY[0x277CC9598]);
}

unint64_t sub_22B33B41C(uint64_t a1)
{
  v2 = sub_22B36148C();

  return sub_22B340414(a1, v2);
}

unint64_t sub_22B33B460(uint64_t *a1)
{
  v3 = sub_22B35DE9C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA340, &qword_22B363FB0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v13 - v8;
  v13 = v1;
  sub_22B36149C();
  sub_22B3608FC();
  sub_22B3608FC();
  Events = type metadata accessor for LoadEventsProcessor.RatePlanPeriod(0);
  sub_22B342F58(&qword_27D8BA348, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);
  sub_22B36072C();
  sub_22B170BE0(a1 + *(Events + 28), v9, &qword_27D8BA340, &qword_22B363FB0);
  if ((*(v4 + 48))(v9, 1, v3) == 1)
  {
    sub_22B3614BC();
  }

  else
  {
    (*(v4 + 32))(v6, v9, v3);
    sub_22B3614BC();
    sub_22B36072C();
    (*(v4 + 8))(v6, v3);
  }

  v11 = sub_22B3614DC();
  return sub_22B340480(a1, v11);
}

unint64_t sub_22B33B6BC(uint64_t a1)
{
  sub_22B35DF1C();
  v2 = MEMORY[0x277CC95F0];
  sub_22B342F58(&unk_27D8BA320, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  v3 = sub_22B36071C();
  return sub_22B3409B8(a1, v3, MEMORY[0x277CC95F0], &qword_27D8BA718, v2, MEMORY[0x277CC9610]);
}

unint64_t sub_22B33B790(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_22B36149C();
  sub_22B3608FC();
  sub_22B3608FC();
  v8 = sub_22B3614DC();

  return sub_22B340B58(a1, a2, a3, a4, v8);
}

unint64_t sub_22B33B830(uint64_t a1)
{
  sub_22B36149C();
  sub_22B35DF1C();
  sub_22B342F58(&unk_27D8BA320, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_22B36072C();
  type metadata accessor for SessionKey(0);
  sub_22B36072C();
  sub_22B3608FC();
  sub_22B3608FC();
  sub_22B3608FC();
  sub_22B36072C();
  v2 = sub_22B3614DC();

  return sub_22B340C58(a1, v2);
}

unint64_t sub_22B33B968(uint64_t a1, __n128 a2)
{
  sub_22B35DC4C();
  v3 = MEMORY[0x277CC9260];
  sub_22B342F58(&qword_27D8BA668, MEMORY[0x277CC9260], MEMORY[0x277CC9270]);
  v4 = sub_22B36071C();
  return sub_22B3409B8(a1, v4, MEMORY[0x277CC9260], &qword_27D8BB0B8, v3, MEMORY[0x277CC9278]);
}

unint64_t sub_22B33BA3C(uint64_t a1)
{
  sub_22B36084C();
  sub_22B36149C();
  sub_22B3608FC();
  v2 = sub_22B3614DC();

  return sub_22B340E8C(a1, v2);
}

uint64_t sub_22B33BAD0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BB098, &qword_22B3678E8);
  v34 = v4;
  result = sub_22B3612AC();
  v7 = result;
  if (*(v5 + 16))
  {
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
      v18 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v21 = 16 * (v18 | (v8 << 6));
      v22 = (*(v5 + 48) + v21);
      v23 = *v22;
      v24 = v22[1];
      v35 = *(*(v5 + 56) + v21);
      if ((v34 & 1) == 0)
      {

        v25 = *(&v35 + 1);
      }

      sub_22B36149C();
      sub_22B3608FC();
      result = sub_22B3614DC();
      v26 = -1 << *(v7 + 32);
      v27 = result & ~v26;
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
      v16 = 16 * v15;
      v17 = (*(v7 + 48) + v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v7 + 56) + v16) = v35;
      ++*(v7 + 16);
    }

    v19 = v8;
    while (1)
    {
      v8 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v20 = v9[v8];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v12 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v2;
    if (v33 >= 64)
    {
      bzero((v5 + 64), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
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