uint64_t type metadata accessor for ATMegadomeLifeEvent(uint64_t a1)
{
  result = qword_27E51E818;
  if (!qword_27E51E818)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t ATMegadomeDataRetriever.getLifeEvents(nRecords:start:end:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v56 = MEMORY[0x277D84F90];
  if (MEMORY[0x277D1F398])
  {
    v3 = MEMORY[0x277D1F3A0] == 0;
  }

  else
  {
    v3 = 1;
  }

  if (v3 || MEMORY[0x277D1F3A8] == 0 || MEMORY[0x277D1F390] == 0 || MEMORY[0x277D1F388] == 0)
  {
    return v56;
  }

  v49 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51E800, &qword_240FD5A48);
  v47 = sub_240FD42EC();
  v9 = sub_240FD422C();
  v48 = v39;
  v10 = *(v9 - 8);
  v11 = v10[8];
  v12 = MEMORY[0x28223BE20](v9);
  v13 = (v11 + 15) & 0xFFFFFFFFFFFFFFF0;
  v14 = v39 - v13;
  MEMORY[0x28223BE20](v12);
  result = sub_240FD421C();
  if ((a2 * 86400) >> 64 != (86400 * a2) >> 63)
  {
    __break(1u);
    goto LABEL_22;
  }

  sub_240FD41AC();
  v45 = v10;
  v17 = v10[1];
  v16 = v10 + 1;
  v52 = v17;
  v18 = (v17)(v39 - v13, v9);
  v46 = v39;
  v19 = MEMORY[0x28223BE20](v18);
  v51 = v39 - v13;
  MEMORY[0x28223BE20](v19);
  result = sub_240FD421C();
  if ((a3 * 86400) >> 64 != (86400 * a3) >> 63)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v43 = 0;
  sub_240FD41AC();
  v44 = v16;
  v52(v39 - v13, v9);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51E7E0, &qword_240FD5A10);
  v42 = v39;
  MEMORY[0x28223BE20](v41);
  v50 = v39 - v20;
  sub_240FC2E7C();
  result = sub_240FD446C();
  if (result)
  {
    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51E7D8, &qword_240FD5A08);
    v39[2] = v39;
    v22 = v21 - 8;
    v23 = *(*(v21 - 8) + 64);
    MEMORY[0x28223BE20](v21);
    v24 = (v23 + 15) & 0xFFFFFFFFFFFFFFF0;
    v25 = v45;
    v26 = v45[2];
    v40 = v14;
    v26(v39 - v24, v14, v9);
    v27 = (v26)(v39 + *(v22 + 56) - v24, v51, v9);
    v39[1] = v39;
    MEMORY[0x28223BE20](v27);
    sub_240FB99A0(v39 - v24, v39 - v24, &qword_27E51E7D8, &qword_240FD5A08);
    v28 = *(v22 + 56);
    v29 = v25[4];
    v29(v50, v39 - v24, v9);
    v30 = v52;
    v31 = (v52)(v39 + v28 - v24, v9);
    v45 = v39;
    MEMORY[0x28223BE20](v31);
    sub_240FBA140(v39 - v24, v39 - v24, &qword_27E51E7D8, &qword_240FD5A08);
    v29(v50 + *(v41 + 36), v39 + *(v22 + 56) - v24, v9);
    v32 = v30(v39 - v24, v9);
    MEMORY[0x28223BE20](v32);
    v33 = v47;
    v39[-4] = &v56;
    v39[-3] = v33;
    v39[-2] = v49;
    sub_240FC590C(&qword_27E51E810, MEMORY[0x28221E9F0], MEMORY[0x28221E9E8]);
    v34 = v43;
    sub_240FD42DC();

    sub_240FBA1A8(v50, &qword_27E51E7E0, &qword_240FD5A10);
    v35 = v52;
    v52(v51, v9);
    v35(v40, v9);
    if (v34)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51E808, &unk_240FD5A50);
      v36 = swift_allocObject();
      *(v36 + 16) = xmmword_240FD5170;
      v54 = 0;
      v55 = 0xE000000000000000;
      sub_240FD46BC();
      MEMORY[0x245CD64D0](0xD000000000000027, 0x8000000240FD65D0);
      v53 = v34;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51E600, &qword_240FD5500);
      sub_240FD475C();
      MEMORY[0x245CD64D0](0xD00000000000004ALL, 0x8000000240FD6600);
      v37 = v54;
      v38 = v55;
      *(v36 + 56) = MEMORY[0x277D837D0];
      *(v36 + 32) = v37;
      *(v36 + 40) = v38;
      sub_240FD487C();
    }

    return v56;
  }

LABEL_23:
  __break(1u);
  return result;
}

uint64_t sub_240FC4FD0(uint64_t a1, BOOL *a2, uint64_t *a3, uint64_t a4, unint64_t a5)
{
  v10 = type metadata accessor for ATMegadomeLifeEvent(0);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = (v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = sub_240FD432C();
  MEMORY[0x28223BE20](v14);
  v16 = v23 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v17 + 16))(v16, a1);

  sub_240FC34BC(v16, a4, v13);
  v18 = *a3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a3 = v18;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v18 = sub_240FB6D8C(0, v18[2] + 1, 1, v18);
    *a3 = v18;
  }

  v21 = v18[2];
  v20 = v18[3];
  if (v21 >= v20 >> 1)
  {
    v18 = sub_240FB6D8C((v20 > 1), v21 + 1, 1, v18);
    *a3 = v18;
  }

  v18[2] = v21 + 1;
  result = sub_240FC58A8(v13, v18 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v21);
  *a2 = *(*a3 + 16) >= a5;
  return result;
}

unint64_t sub_240FC5268()
{
  result = qword_27E51E7F8;
  if (!qword_27E51E7F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E51E640, &qword_240FD5730);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E51E7F8);
  }

  return result;
}

uint64_t sub_240FC5300(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51E7F0, &unk_240FD5A38);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = *(v6 - 8);
    v9 = a3[5];
LABEL_5:
    v11 = *(v8 + 48);

    return v11(a1 + v9, a2, v7);
  }

  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51E578, &qword_240FD51A0);
  if (*(*(v10 - 8) + 84) == a2)
  {
    v7 = v10;
    v8 = *(v10 - 8);
    v9 = a3[6];
    goto LABEL_5;
  }

  v13 = *(a1 + a3[8]);
  if (v13 >= 0xFFFFFFFF)
  {
    LODWORD(v13) = -1;
  }

  return (v13 + 1);
}

uint64_t sub_240FC5434(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51E7F0, &unk_240FD5A38);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
  }

  else
  {
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51E578, &qword_240FD51A0);
    if (*(*(result - 8) + 84) != a3)
    {
      *(a1 + a4[8]) = (a2 - 1);
      return result;
    }

    v9 = result;
    v10 = *(result - 8);
    v11 = a4[6];
  }

  v13 = *(v10 + 56);

  return v13(a1 + v11, a2, a2, v9);
}

void sub_240FC5550(uint64_t a1)
{
  sub_240FC56E4(319, &qword_27E51E688, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    sub_240FC5690(319, &qword_27E51E828, MEMORY[0x28221E980]);
    if (v2 <= 0x3F)
    {
      sub_240FC5690(319, &qword_27E51E680, MEMORY[0x277CC9578]);
      if (v3 <= 0x3F)
      {
        sub_240FC56E4(319, &qword_27E51E830, &type metadata for ATLocation, MEMORY[0x277D83940]);
        if (v4 <= 0x3F)
        {
          sub_240FC5734();
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_240FC5690(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_240FD463C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_240FC56E4(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_240FC5734()
{
  result = qword_27E51E838;
  if (!qword_27E51E838)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27E51E838);
  }

  return result;
}

__n128 __swift_memcpy128_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = result;
  *(a1 + 80) = v6;
  return result;
}

uint64_t sub_240FC57C8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 128))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 40);
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

uint64_t sub_240FC5824(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 120) = 0;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 128) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 128) = 0;
    }

    if (a2)
    {
      *(result + 40) = a2;
    }
  }

  return result;
}

uint64_t sub_240FC58A8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ATMegadomeLifeEvent(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_240FC590C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_240FC5954()
{
  result = qword_27E51E878;
  if (!qword_27E51E878)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E51E800, &qword_240FD5A48);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E51E878);
  }

  return result;
}

uint64_t sub_240FC59AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51E880, &qword_240FD5B88);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v58 - v6;
  sub_240FD429C();
  v8 = sub_240FD440C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 48);
  if (v10(v7, 1, v8) == 1)
  {
    v11 = sub_240FBA1A8(v7, &qword_27E51E880, &qword_240FD5B88);
    v69 = 0;
    v12 = 1;
  }

  else
  {
    v69 = sub_240FD43EC();
    v12 = v13;
    v11 = (*(v9 + 8))(v7, v8);
  }

  MEMORY[0x28223BE20](v11);
  v14 = &v58 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_240FD429C();
  if (v10(v14, 1, v8) == 1)
  {
    sub_240FBA1A8(v14, &qword_27E51E880, &qword_240FD5B88);
    v68 = 0;
    v15 = 1;
  }

  else
  {
    v68 = sub_240FD43FC();
    v15 = v16;
    (*(v9 + 8))(v14, v8);
  }

  v71 = v12 & 1;
  v70 = v15 & 1;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51E888, &qword_240FD5B90);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v20 = &v58 - v19;
  sub_240FD428C();
  v21 = sub_240FD43DC();
  v22 = *(v21 - 8);
  v23 = *(v22 + 48);
  if (v23(v20, 1, v21) == 1)
  {
    v24 = sub_240FBA1A8(v20, &qword_27E51E888, &qword_240FD5B90);
    v66 = 0;
    v67 = 0;
  }

  else
  {
    v25 = sub_240FD43BC();
    v66 = v26;
    v67 = v25;
    v24 = (*(v22 + 8))(v20, v21);
  }

  MEMORY[0x28223BE20](v24);
  sub_240FD428C();
  if (v23(&v58 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0), 1, v21) == 1)
  {
    v27 = sub_240FBA1A8(&v58 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0), &qword_27E51E888, &qword_240FD5B90);
    v64 = 0;
    v65 = 0;
  }

  else
  {
    v28 = sub_240FD439C();
    v64 = v29;
    v65 = v28;
    v27 = (*(v22 + 8))(&v58 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0), v21);
  }

  MEMORY[0x28223BE20](v27);
  sub_240FD428C();
  if (v23(&v58 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0), 1, v21) == 1)
  {
    v30 = sub_240FBA1A8(&v58 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0), &qword_27E51E888, &qword_240FD5B90);
    v62 = 0;
    v63 = 0;
  }

  else
  {
    v31 = sub_240FD43AC();
    v62 = v32;
    v63 = v31;
    v30 = (*(v22 + 8))(&v58 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0), v21);
  }

  MEMORY[0x28223BE20](v30);
  sub_240FD428C();
  if (v23(&v58 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0), 1, v21) == 1)
  {
    v33 = sub_240FBA1A8(&v58 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0), &qword_27E51E888, &qword_240FD5B90);
    v60 = 0;
    v61 = 0;
  }

  else
  {
    v34 = sub_240FD437C();
    v60 = v35;
    v61 = v34;
    v33 = (*(v22 + 8))(&v58 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0), v21);
  }

  MEMORY[0x28223BE20](v33);
  sub_240FD428C();
  if (v23(&v58 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0), 1, v21) == 1)
  {
    v36 = sub_240FBA1A8(&v58 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0), &qword_27E51E888, &qword_240FD5B90);
    v58 = 0;
    v59 = 0;
  }

  else
  {
    v37 = sub_240FD43CC();
    v58 = v38;
    v59 = v37;
    v36 = (*(v22 + 8))(&v58 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0), v21);
  }

  MEMORY[0x28223BE20](v36);
  v39 = &v58 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_240FD428C();
  if (v23(v39, 1, v21) == 1)
  {
    v40 = sub_240FD42AC();
    (*(*(v40 - 8) + 8))(a1, v40);
    result = sub_240FBA1A8(v39, &qword_27E51E888, &qword_240FD5B90);
    v42 = 0;
    v43 = 0;
  }

  else
  {
    v42 = sub_240FD438C();
    v43 = v44;
    v45 = sub_240FD42AC();
    (*(*(v45 - 8) + 8))(a1, v45);
    result = (*(v22 + 8))(v39, v21);
  }

  v46 = v71;
  v47 = v70;
  *a2 = v69;
  *(a2 + 8) = v46;
  v48 = v67;
  *(a2 + 16) = v68;
  *(a2 + 24) = v47;
  v50 = v65;
  v49 = v66;
  *(a2 + 32) = v48;
  *(a2 + 40) = v49;
  v52 = v63;
  v51 = v64;
  *(a2 + 48) = v50;
  *(a2 + 56) = v51;
  v54 = v61;
  v53 = v62;
  *(a2 + 64) = v52;
  *(a2 + 72) = v53;
  v56 = v59;
  v55 = v60;
  *(a2 + 80) = v54;
  *(a2 + 88) = v55;
  v57 = v58;
  *(a2 + 96) = v56;
  *(a2 + 104) = v57;
  *(a2 + 112) = v42;
  *(a2 + 120) = v43;
  return result;
}

uint64_t ATSpotlightDataRetriever.getRecentRecordsAsync(bundleId:nRecords:addendum:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[7] = a5;
  v6[8] = v5;
  v6[5] = a3;
  v6[6] = a4;
  v6[3] = a1;
  v6[4] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51E578, &qword_240FD51A0);
  v6[9] = swift_task_alloc();
  v6[10] = swift_task_alloc();
  v7 = sub_240FD422C();
  v6[11] = v7;
  v6[12] = *(v7 - 8);
  v6[13] = swift_task_alloc();
  v6[14] = swift_task_alloc();
  v8 = type metadata accessor for ATSpotlightDataRecord(0);
  v6[15] = v8;
  v6[16] = *(v8 - 8);
  v6[17] = swift_task_alloc();
  v6[18] = swift_task_alloc();
  v6[19] = swift_task_alloc();
  v6[20] = swift_task_alloc();
  v6[21] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_240FC6258, 0, 0);
}

uint64_t sub_240FC6258()
{
  v1 = v0[8];
  v2 = v0[3];
  v3 = v0[4];
  v4 = sub_240FC7658(v2, v3, v0[6], v0[7]);
  v0[22] = v4;
  v5 = swift_task_alloc();
  v0[23] = v5;
  v5[2] = v1;
  v5[3] = v2;
  v5[4] = v3;
  v5[5] = v4;
  v6 = swift_task_alloc();
  v0[24] = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51E890, &unk_240FD5BC0);
  *v6 = v0;
  v6[1] = sub_240FC6388;

  return MEMORY[0x2822007B8](v0 + 2, 0, 0, 0xD000000000000032, 0x8000000240FD6720, sub_240FC7A44, v5, v7);
}

uint64_t sub_240FC6388()
{

  return MEMORY[0x2822009F8](sub_240FC64A0, 0, 0);
}

uint64_t sub_240FC64A0()
{
  v50 = v0;
  v1 = *(v0 + 16);
  v46 = v1[2];
  if (!v46)
  {
    goto LABEL_32;
  }

  v2 = 0;
  v3 = *(v0 + 120);
  v44 = *(v0 + 128);
  v45 = *(v0 + 168);
  v4 = *(v0 + 96);
  v5 = (v4 + 48);
  v40 = (v4 + 8);
  v41 = (v4 + 32);
  v6 = MEMORY[0x277D84F90];
  v39 = v3;
  v42 = (v4 + 48);
  do
  {
    if (v2 >= v1[2])
    {
      __break(1u);
LABEL_36:
      v1 = sub_240FCB08C(v1);
      goto LABEL_29;
    }

    v48 = (*(v44 + 80) + 32) & ~*(v44 + 80);
    v7 = *(v44 + 72);
    sub_240FBE4A4(v1 + v48 + v7 * v2, *(v0 + 168));
    v8 = *(v45 + 16);
    v9 = *(v45 + 8) & 0xFFFFFFFFFFFFLL;
    if ((v8 & 0x2000000000000000) != 0)
    {
      v9 = HIBYTE(v8) & 0xF;
    }

    if (!v9)
    {
LABEL_3:
      sub_240FC2D4C(*(v0 + 168));
      goto LABEL_4;
    }

    v11 = *(v0 + 80);
    v10 = *(v0 + 88);
    sub_240FBA9F4(*(v0 + 168) + *(v3 + 36), v11);
    v12 = *v5;
    v13 = (*v5)(v11, 1, v10);
    v14 = *(v0 + 80);
    v15 = *(v0 + 88);
    if (v13 == 1)
    {
      v43 = v6;
      v16 = *(v0 + 168);
      v17 = *(v0 + 72);
      sub_240FC7A50(v14);
      sub_240FBA9F4(v16 + *(v3 + 32), v17);
      if (v12(v17, 1, v15) == 1)
      {
        sub_240FC7A50(*(v0 + 72));
        v6 = v43;
        v5 = v42;
        if ((sub_240FD41CC() & 1) == 0)
        {
          goto LABEL_3;
        }
      }

      else
      {
        v20 = *(v0 + 104);
        v21 = *(v0 + 88);
        (*v41)(v20, *(v0 + 72), v21);
        v22 = sub_240FD41CC();
        (*v40)(v20, v21);
        v6 = v43;
        v5 = v42;
        if ((v22 & 1) == 0)
        {
          goto LABEL_3;
        }
      }
    }

    else
    {
      v18 = *(v0 + 112);
      (*v41)(v18, v14, *(v0 + 88));
      v19 = sub_240FD41CC();
      (*v40)(v18, v15);
      if ((v19 & 1) == 0)
      {
        goto LABEL_3;
      }
    }

    sub_240FC7AB8(*(v0 + 168), *(v0 + 160));
    v49[0] = v6;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_240FB8810(0, *(v6 + 16) + 1, 1);
      v5 = v42;
      v6 = v49[0];
    }

    v24 = *(v6 + 16);
    v23 = *(v6 + 24);
    if (v24 >= v23 >> 1)
    {
      sub_240FB8810((v23 > 1), v24 + 1, 1);
      v5 = v42;
      v6 = v49[0];
    }

    v25 = *(v0 + 160);
    *(v6 + 16) = v24 + 1;
    sub_240FC7AB8(v25, v6 + v48 + v24 * v7);
    v3 = v39;
LABEL_4:
    ++v2;
  }

  while (v46 != v2);

  v26 = *(v6 + 16);
  if (v26)
  {
    v27 = *(v0 + 64);
    v49[0] = MEMORY[0x277D84F90];
    sub_240FB8810(0, v26, 0);
    v3 = v48;
    v1 = v49[0];
    v47 = *(*v27 + 152);
    v28 = v6 + v48;
    do
    {
      v29 = *(v0 + 136);
      sub_240FBE4A4(v28, v29);
      v47(v29);
      sub_240FC2D4C(v29);
      v49[0] = v1;
      v31 = v1[2];
      v30 = v1[3];
      if (v31 >= v30 >> 1)
      {
        sub_240FB8810((v30 > 1), v31 + 1, 1);
        v1 = v49[0];
      }

      v32 = *(v0 + 144);
      v1[2] = v31 + 1;
      sub_240FC7AB8(v32, v1 + v48 + v31 * v7);
      v28 += v7;
      --v26;
    }

    while (v26);
  }

  else
  {

    v1 = MEMORY[0x277D84F90];
    v3 = v48;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_36;
  }

LABEL_29:
  v33 = v1[2];
  v49[0] = v1 + v3;
  v49[1] = v33;
  result = sub_240FC85B8(v49);
  v35 = *(v0 + 40);
  if (v1[2] <= v35)
  {
    goto LABEL_32;
  }

  if (v35 < 0)
  {
    __break(1u);
  }

  else
  {
    sub_240FC8418(v1, v1 + v3, 0, (2 * v35) | 1);
    v37 = v36;

    v1 = v37;
LABEL_32:

    v38 = *(v0 + 8);

    return v38(v1);
  }

  return result;
}

uint64_t ATSpotlightDataRetriever.getRecentRecords(bundleId:nRecords:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51E7C0, &qword_240FD5988);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v16 - v9;
  v11 = dispatch_semaphore_create(0);
  v12 = sub_240FD459C();
  (*(*(v12 - 8) + 56))(v10, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = v4;
  v13[5] = a1;
  v13[6] = a2;
  v13[7] = a3;
  v13[8] = v11;

  v14 = v11;
  sub_240FC285C(0, 0, v10, &unk_240FD5990, v13);

  sub_240FD45FC();
}

uint64_t sub_240FC6B58(uint64_t (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v7 = type metadata accessor for ATSpotlightDataRecord(0);
  v25 = *(v7 - 8);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v24 = v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v8);
  v12 = v21 - v11;
  v23 = *(a3 + 16);
  if (v23)
  {
    v13 = 0;
    v14 = MEMORY[0x277D84F90];
    v21[1] = a2;
    v22 = a3;
    v21[0] = a1;
    while (v13 < *(a3 + 16))
    {
      v15 = (*(v25 + 80) + 32) & ~*(v25 + 80);
      v16 = *(v25 + 72);
      sub_240FBE4A4(a3 + v15 + v16 * v13, v12);
      v17 = a1(v12);
      if (v3)
      {
        sub_240FC2D4C(v12);

        goto LABEL_15;
      }

      if (v17)
      {
        sub_240FC7AB8(v12, v24);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v26 = v14;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_240FB8810(0, *(v14 + 16) + 1, 1);
          v14 = v26;
        }

        v20 = *(v14 + 16);
        v19 = *(v14 + 24);
        if (v20 >= v19 >> 1)
        {
          sub_240FB8810((v19 > 1), v20 + 1, 1);
          v14 = v26;
        }

        *(v14 + 16) = v20 + 1;
        result = sub_240FC7AB8(v24, v14 + v15 + v20 * v16);
        a3 = v22;
        a1 = v21[0];
      }

      else
      {
        result = sub_240FC2D4C(v12);
      }

      if (v23 == ++v13)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    v14 = MEMORY[0x277D84F90];
LABEL_15:

    return v14;
  }

  return result;
}

uint64_t ATSpotlightDataRetriever.init()()
{
  v1 = v0;
  v2 = sub_240FD422C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_240FD421C();
  sub_240FD41AC();
  (*(v3 + 8))(v5, v2);
  *(v1 + OBJC_IVAR____TtC15ArchetypeEngine24ATSpotlightDataRetriever_records) = MEMORY[0x277D84F90];
  return v1;
}

uint64_t ATSpotlightDataRetriever.deinit()
{
  v1 = OBJC_IVAR____TtC15ArchetypeEngine24ATSpotlightDataRetriever_oneYearBack;
  v2 = sub_240FD422C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t sub_240FC6EF8(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_allocObject();
  *(v10 + 16) = MEMORY[0x277D84F90];
  v11 = swift_allocObject();
  v11[2] = v10;
  v11[3] = a1;
  v11[4] = a2;
  v20 = sub_240FCB40C;
  v21 = v11;
  v16 = MEMORY[0x277D85DD0];
  v17 = 1107296256;
  v18 = sub_240FCB484;
  v19 = &block_descriptor_1;
  v12 = _Block_copy(&v16);

  [a3 setFoundItemsHandler_];
  _Block_release(v12);
  v13 = swift_allocObject();
  v13[2] = a4;
  v13[3] = a5;
  v13[4] = v10;
  v20 = sub_240FCB470;
  v21 = v13;
  v16 = MEMORY[0x277D85DD0];
  v17 = 1107296256;
  v18 = sub_240FCB508;
  v19 = &block_descriptor_26;
  v14 = _Block_copy(&v16);

  [a3 setCompletionHandler_];
  _Block_release(v14);
  [a3 start];
}

void *sub_240FC70F4(unint64_t a1, unint64_t a2, uint64_t a3, void *a4)
{
  v8 = type metadata accessor for ATSpotlightDataRecord(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 >> 62)
  {
    goto LABEL_17;
  }

  v12 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v13 = MEMORY[0x277D84F90];
  if (v12)
  {
    v23 = a3;
    v26 = MEMORY[0x277D84F90];
    result = sub_240FB8810(0, v12 & ~(v12 >> 63), 0);
    if ((v12 & 0x8000000000000000) == 0)
    {
      v22[1] = a2;
      v15 = 0;
      v13 = v26;
      v16 = a1;
      v24 = a1 & 0xFFFFFFFFFFFFFF8;
      v25 = a1 & 0xC000000000000001;
      a3 = v23;
      v17 = a1;
      a1 = v12;
      while (1)
      {
        if (v25)
        {
          v18 = MEMORY[0x245CD66B0](v15, v16);
        }

        else
        {
          if ((v15 & 0x8000000000000000) != 0)
          {
            __break(1u);
LABEL_16:
            __break(1u);
LABEL_17:
            v12 = sub_240FD476C();
            goto LABEL_3;
          }

          if (v15 >= *(v24 + 16))
          {
            goto LABEL_16;
          }

          v18 = *(v16 + 8 * v15 + 32);
        }

        v19 = v18;

        ATSpotlightDataRecord.init(item:bundleID:)(v19, a3, a4, v11);
        v26 = v13;
        v21 = *(v13 + 16);
        v20 = *(v13 + 24);
        a2 = v21 + 1;
        if (v21 >= v20 >> 1)
        {
          sub_240FB8810((v20 > 1), v21 + 1, 1);
          a3 = v23;
          v13 = v26;
        }

        ++v15;
        *(v13 + 16) = a2;
        sub_240FC7AB8(v11, v13 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v21);
        v16 = v17;
        if (a1 == v15)
        {
          goto LABEL_14;
        }
      }
    }

    __break(1u);
  }

  else
  {
LABEL_14:
    swift_beginAccess();
    sub_240FBDB98(v13);
    return swift_endAccess();
  }

  return result;
}

uint64_t sub_240FC7330(void *a1, uint64_t (*a2)(void), uint64_t a3, uint64_t a4)
{
  v8 = sub_240FD443C();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = v31 - v13;
  if (a1)
  {
    sub_240FD442C();
    v15 = a1;
    v16 = sub_240FD441C();
    v17 = sub_240FD45DC();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v31[1] = a3;
      v19 = a2;
      v20 = v18;
      v21 = swift_slowAlloc();
      v32[0] = v21;
      *v20 = 136315138;
      swift_getErrorValue();
      v22 = sub_240FD482C();
      v24 = sub_240FC7E70(v22, v23, v32);

      *(v20 + 4) = v24;
      _os_log_impl(&dword_240FB1000, v16, v17, "Failed to fetch items with error %s", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v21);
      MEMORY[0x245CD6DB0](v21, -1, -1);
      v25 = v20;
      a2 = v19;
      MEMORY[0x245CD6DB0](v25, -1, -1);
    }

    (*(v9 + 8))(v14, v8);
    return a2(0);
  }

  else
  {
    sub_240FD442C();

    v27 = sub_240FD441C();
    v28 = sub_240FD45CC();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 134217984;
      swift_beginAccess();
      *(v29 + 4) = *(*(a4 + 16) + 16);

      _os_log_impl(&dword_240FB1000, v27, v28, "Fetched %ld items from Spotlight", v29, 0xCu);
      MEMORY[0x245CD6DB0](v29, -1, -1);
    }

    else
    {
    }

    (*(v9 + 8))(v12, v8);
    swift_beginAccess();

    a2(v30);
  }
}

id sub_240FC7658(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  MEMORY[0x245CD64D0]();
  if (a4)
  {
    v8 = HIBYTE(a4) & 0xF;
    if ((a4 & 0x2000000000000000) == 0)
    {
      v8 = a3 & 0xFFFFFFFFFFFFLL;
    }

    if (v8)
    {
      MEMORY[0x245CD64D0](a3, a4);
      v9 = 539371040;
      v10 = 0xE400000000000000;
    }

    else
    {
      v9 = 0;
      v10 = 0xE000000000000000;
    }

    MEMORY[0x245CD64D0](v9, v10);
  }

  type metadata accessor for ATSpolightAttributes();
  swift_initStackObject();
  sub_240FBD9D8();
  sub_240FBD410(a1, a2);

  v11 = objc_allocWithZone(MEMORY[0x277CC3498]);
  v12 = sub_240FD448C();

  v13 = sub_240FD452C();

  v14 = [v11 initWithQueryString:v12 attributes:v13];

  return v14;
}

uint64_t ATSpotlightDataRetriever.__allocating_init()()
{
  v0 = sub_240FD422C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = swift_allocObject();
  sub_240FD421C();
  sub_240FD41AC();
  (*(v1 + 8))(v3, v0);
  *(v4 + OBJC_IVAR____TtC15ArchetypeEngine24ATSpotlightDataRetriever_records) = MEMORY[0x277D84F90];
  return v4;
}

uint64_t sub_240FC78E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51E8B8, &qword_240FD5C90);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v16 - v11;
  (*(v10 + 16))(&v16 - v11, a1, v9);
  v13 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v14 = swift_allocObject();
  (*(v10 + 32))(v14 + v13, v12, v9);
  sub_240FC6EF8(a3, a4, a5, sub_240FCB318, v14);
}

uint64_t sub_240FC7A50(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51E578, &qword_240FD51A0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_240FC7AB8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ATSpotlightDataRecord(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_240FC7B1C(uint64_t a1)
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51E8B8, &qword_240FD5C90);
  return sub_240FD457C();
}

uint64_t sub_240FC7B7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[2] = a4;
  v8[3] = a8;
  v12 = swift_task_alloc();
  v8[4] = v12;
  *v12 = v8;
  v12[1] = sub_240FC7C3C;

  return ATSpotlightDataRetriever.getRecentRecordsAsync(bundleId:nRecords:addendum:)(a5, a6, a7, 0, 0);
}

uint64_t sub_240FC7C3C(uint64_t a1)
{
  *(*v1 + 40) = a1;

  return MEMORY[0x2822009F8](sub_240FC7D3C, 0, 0);
}

uint64_t sub_240FC7D3C()
{
  *(v0[2] + OBJC_IVAR____TtC15ArchetypeEngine24ATSpotlightDataRetriever_records) = v0[5];

  sub_240FD460C();
  v1 = v0[1];

  return v1();
}

uint64_t ATSpotlightDataRetriever.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC15ArchetypeEngine24ATSpotlightDataRetriever_oneYearBack;
  v2 = sub_240FD422C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v3, v4);
}

_BYTE **sub_240FC7E60(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

unint64_t sub_240FC7E70(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_240FC7F3C(v11, 0, 0, 1, a1, a2);
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
    sub_240FB9F6C(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_240FC7F3C(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_240FC8048(a5, a6);
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
    result = sub_240FD46EC();
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

void *sub_240FC8048(uint64_t a1, unint64_t a2)
{
  v3 = sub_240FC8094(a1, a2);
  sub_240FC81C4(&unk_2852D7E10);
  return v3;
}

void *sub_240FC8094(uint64_t a1, unint64_t a2)
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

  v6 = sub_240FC82B0(v5, 0);
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

  result = sub_240FD46EC();
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
        v10 = sub_240FD450C();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_240FC82B0(v10, 0);
        result = sub_240FD46AC();
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

uint64_t sub_240FC81C4(uint64_t result)
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

  result = sub_240FC8324(result, v11, 1, v3);
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

void *sub_240FC82B0(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51E8C0, &qword_240FD5C98);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_240FC8324(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51E8C0, &qword_240FD5C98);
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

void sub_240FC8418(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    goto LABEL_14;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
        goto LABEL_10;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51E5C8, &unk_240FD5C80);
      v7 = *(type metadata accessor for ATSpotlightDataRecord(0) - 8);
      v8 = *(v7 + 72);
      v9 = (*(v7 + 80) + 32) & ~*(v7 + 80);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      if (!v8)
      {
LABEL_15:
        __break(1u);
LABEL_16:
        __break(1u);
        return;
      }

      if (v11 - v9 == 0x8000000000000000 && v8 == -1)
      {
        goto LABEL_16;
      }

      v10[2] = v5;
      v10[3] = 2 * ((v11 - v9) / v8);
      if (v4 != a3)
      {
LABEL_10:
        type metadata accessor for ATSpotlightDataRecord(0);
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

uint64_t sub_240FC85B8(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_240FD47CC();
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
        type metadata accessor for ATSpotlightDataRecord(0);
        v6 = sub_240FD455C();
        *(v6 + 16) = v5;
      }

      v7 = *(type metadata accessor for ATSpotlightDataRecord(0) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_240FC9104(v8, v9, a1, v4);
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
    return sub_240FC86E4(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_240FC86E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51E578, &qword_240FD51A0);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v100 = &v89[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = MEMORY[0x28223BE20](v9);
  v102 = &v89[-v12];
  v13 = MEMORY[0x28223BE20](v11);
  v111 = &v89[-v14];
  v15 = MEMORY[0x28223BE20](v13);
  v110 = &v89[-v16];
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v89[-v18];
  MEMORY[0x28223BE20](v17);
  v105 = &v89[-v20];
  v21 = sub_240FD422C();
  v22 = *(v21 - 8);
  v23 = MEMORY[0x28223BE20](v21);
  v99 = &v89[-((v24 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v25 = MEMORY[0x28223BE20](v23);
  v106 = &v89[-v26];
  v27 = MEMORY[0x28223BE20](v25);
  v29 = &v89[-v28];
  v30 = MEMORY[0x28223BE20](v27);
  v32 = &v89[-v31];
  v33 = MEMORY[0x28223BE20](v30);
  v96 = &v89[-v34];
  MEMORY[0x28223BE20](v33);
  v101 = &v89[-v35];
  v36 = type metadata accessor for ATSpotlightDataRecord(0);
  v37 = MEMORY[0x28223BE20](v36);
  v109 = &v89[-((v38 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v39 = MEMORY[0x28223BE20](v37);
  v118 = &v89[-v40];
  result = MEMORY[0x28223BE20](v39);
  v91 = a2;
  if (a3 != a2)
  {
    v45 = &v89[-v43];
    v46 = *a4;
    v47 = *(v42 + 72);
    v119 = (v22 + 48);
    v112 = (v22 + 8);
    v113 = (v22 + 16);
    v114 = (v22 + 32);
    v48 = v46 + v47 * (a3 - 1);
    v107 = -v47;
    v108 = v46;
    v49 = a1 - a3;
    v90 = v47;
    v50 = v46 + v47 * a3;
    v103 = v44;
    v104 = v29;
    v117 = &v89[-v43];
    v97 = v19;
    v116 = v32;
LABEL_5:
    v95 = a3;
    v92 = v50;
    v93 = v49;
    v94 = v48;
    v51 = v44;
    v52 = v29;
    v53 = v49;
    while (1)
    {
      sub_240FBE4A4(v50, v45);
      v54 = v118;
      sub_240FBE4A4(v48, v118);
      v55 = *v54;
      v115 = v53;
      if (v55 == 5)
      {
        v56 = &v54[v51[16]];
        v57 = v105;
        sub_240FBA9F4(v56, v105);
        v58 = *v119;
        if ((*v119)(v57, 1, v21) != 1)
        {
          v59 = v97;
          v98 = *v114;
          v98(v101, v105, v21);
          sub_240FBA9F4(&v45[v51[16]], v59);
          if (v58(v59, 1, v21) != 1)
          {
            v82 = v101;
            v83 = v96;
            v98(v96, v59, v21);
            v74 = sub_240FD41DC();
            v84 = *v112;
            v85 = v83;
            v72 = v115;
            (*v112)(v85, v21);
            v86 = v103;
            v84(v82, v21);
            v51 = v86;
            v52 = v104;
            goto LABEL_31;
          }

          (*v112)(v101, v21);
          v57 = v59;
          v51 = v103;
          v52 = v104;
        }

        sub_240FC7A50(v57);
        v54 = v118;
      }

      v60 = &v54[v51[9]];
      v61 = v54;
      v62 = v110;
      sub_240FBA9F4(v60, v110);
      v63 = *v119;
      if ((*v119)(v62, 1, v21) == 1)
      {
        (*v113)(v116, &v61[v51[7]], v21);
        if (v63(v62, 1, v21) != 1)
        {
          sub_240FC7A50(v110);
        }
      }

      else
      {
        (*v114)(v116, v62, v21);
      }

      v64 = v117;
      v65 = v111;
      sub_240FBA9F4(&v117[v51[9]], v111);
      if (v63(v65, 1, v21) == 1)
      {
        (*v113)(v52, &v64[v51[7]], v21);
        v66 = v63(v65, 1, v21);
        v67 = v116;
        if (v66 != 1)
        {
          sub_240FC7A50(v111);
        }
      }

      else
      {
        (*v114)(v52, v65, v21);
        v67 = v116;
      }

      sub_240FCB23C(&unk_27E51E6A0, MEMORY[0x277CC9578], MEMORY[0x277CC9598]);
      if (sub_240FD447C())
      {
        v68 = v118;
        v69 = v102;
        sub_240FBA9F4(&v118[v51[8]], v102);
        if (v63(v69, 1, v21) == 1)
        {
          (*v113)(v106, &v68[v51[7]], v21);
          v70 = v63(v69, 1, v21);
          v71 = v114;
          v72 = v115;
          v73 = v100;
          if (v70 != 1)
          {
            sub_240FC7A50(v102);
          }
        }

        else
        {
          v76 = v69;
          v71 = v114;
          (*v114)(v106, v76, v21);
          v72 = v115;
          v73 = v100;
        }

        v77 = v117;
        sub_240FBA9F4(&v117[v51[8]], v73);
        if (v63(v73, 1, v21) == 1)
        {
          v78 = v99;
          (*v113)(v99, &v77[v51[7]], v21);
          if (v63(v73, 1, v21) != 1)
          {
            sub_240FC7A50(v73);
          }
        }

        else
        {
          v79 = *v71;
          v78 = v99;
          v79(v99, v73, v21);
        }

        v80 = v106;
        v74 = sub_240FD41DC();
        v81 = *v112;
        (*v112)(v78, v21);
        v81(v80, v21);
        v52 = v104;
        v81(v104, v21);
        v81(v116, v21);
        v51 = v103;
      }

      else
      {
        v74 = sub_240FD41DC();
        v75 = *v112;
        (*v112)(v52, v21);
        v75(v67, v21);
        v72 = v115;
      }

LABEL_31:
      sub_240FC2D4C(v118);
      v45 = v117;
      result = sub_240FC2D4C(v117);
      if ((v74 & 1) == 0)
      {
        goto LABEL_4;
      }

      if (!v108)
      {
        __break(1u);
        return result;
      }

      v87 = v109;
      sub_240FC7AB8(v50, v109);
      swift_arrayInitWithTakeFrontToBack();
      result = sub_240FC7AB8(v87, v48);
      v48 += v107;
      v50 += v107;
      v88 = __CFADD__(v72, 1);
      v53 = v72 + 1;
      if (v88)
      {
LABEL_4:
        v29 = v52;
        v44 = v51;
        a3 = v95 + 1;
        v48 = v94 + v90;
        v49 = v93 - 1;
        v50 = v92 + v90;
        if (v95 + 1 == v91)
        {
          return result;
        }

        goto LABEL_5;
      }
    }
  }

  return result;
}

uint64_t sub_240FC9104(unint64_t *a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v252 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51E578, &qword_240FD51A0);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v281 = &v246 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v282 = &v246 - v10;
  v11 = MEMORY[0x28223BE20](v9);
  v292 = &v246 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v246 - v14;
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v246 - v17;
  v19 = MEMORY[0x28223BE20](v16);
  v283 = &v246 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v255 = &v246 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v261 = &v246 - v24;
  v25 = MEMORY[0x28223BE20](v23);
  v264 = &v246 - v26;
  v27 = MEMORY[0x28223BE20](v25);
  v269 = &v246 - v28;
  v29 = MEMORY[0x28223BE20](v27);
  v31 = &v246 - v30;
  MEMORY[0x28223BE20](v29);
  v262 = &v246 - v32;
  v300 = sub_240FD422C();
  v33 = *(v300 - 8);
  v34 = MEMORY[0x28223BE20](v300);
  v280 = &v246 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = MEMORY[0x28223BE20](v34);
  v284 = &v246 - v37;
  v38 = MEMORY[0x28223BE20](v36);
  v40 = &v246 - v39;
  v41 = MEMORY[0x28223BE20](v38);
  v298 = &v246 - v42;
  v43 = MEMORY[0x28223BE20](v41);
  v268 = &v246 - v44;
  v45 = MEMORY[0x28223BE20](v43);
  v47 = &v246 - v46;
  v48 = MEMORY[0x28223BE20](v45);
  v254 = &v246 - v49;
  v50 = MEMORY[0x28223BE20](v48);
  v263 = &v246 - v51;
  v52 = MEMORY[0x28223BE20](v50);
  v271 = &v246 - v53;
  v54 = MEMORY[0x28223BE20](v52);
  v56 = &v246 - v55;
  v57 = MEMORY[0x28223BE20](v54);
  v250 = &v246 - v58;
  MEMORY[0x28223BE20](v57);
  v258 = &v246 - v59;
  v289 = type metadata accessor for ATSpotlightDataRecord(0);
  v270 = *(v289 - 8);
  v60 = MEMORY[0x28223BE20](v289);
  v259 = &v246 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = MEMORY[0x28223BE20](v60);
  v287 = &v246 - v63;
  v64 = MEMORY[0x28223BE20](v62);
  v296 = &v246 - v65;
  v66 = MEMORY[0x28223BE20](v64);
  v294 = &v246 - v67;
  v68 = MEMORY[0x28223BE20](v66);
  v278 = &v246 - v69;
  v70 = MEMORY[0x28223BE20](v68);
  v279 = &v246 - v71;
  v72 = MEMORY[0x28223BE20](v70);
  v248 = &v246 - v73;
  result = MEMORY[0x28223BE20](v72);
  v247 = &v246 - v75;
  v272 = a3;
  if (*(a3 + 8) < 1)
  {
    v77 = MEMORY[0x277D84F90];
LABEL_150:
    a3 = *v252;
    if (!*v252)
    {
      goto LABEL_189;
    }

    v134 = v77;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v79 = v273;
    if (isUniquelyReferenced_nonNull_native)
    {
      result = v134;
LABEL_153:
      v301 = result;
      v134 = *(result + 16);
      if (v134 >= 2)
      {
        while (*v272)
        {
          v242 = *(result + 16 * v134);
          v243 = result;
          v244 = *(result + 16 * (v134 - 1) + 40);
          sub_240FCAA6C(*v272 + *(v270 + 72) * v242, *v272 + *(v270 + 72) * *(result + 16 * (v134 - 1) + 32), *v272 + *(v270 + 72) * v244, a3);
          if (v79)
          {
          }

          if (v244 < v242)
          {
            goto LABEL_176;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v243 = sub_240FCAF80(v243);
          }

          if (v134 - 2 >= *(v243 + 2))
          {
            goto LABEL_177;
          }

          v245 = &v243[16 * v134];
          *v245 = v242;
          *(v245 + 1) = v244;
          v301 = v243;
          sub_240FCAEF4(v134 - 1);
          result = v301;
          v134 = *(v301 + 16);
          if (v134 <= 1)
          {
          }
        }

        goto LABEL_187;
      }
    }

LABEL_183:
    result = sub_240FCAF80(v134);
    goto LABEL_153;
  }

  v76 = *(a3 + 8);
  v299 = (v33 + 48);
  v295 = (v33 + 32);
  v290 = (v33 + 8);
  v293 = (v33 + 16);
  v77 = MEMORY[0x277D84F90];
  v251 = a4;
  v288 = v15;
  v275 = v18;
  v253 = v31;
  v78 = 0;
  v291 = v40;
  v274 = v47;
  v79 = v271;
  v277 = v56;
  v80 = v289;
  v81 = v294;
LABEL_4:
  v82 = v78;
  v83 = v78 + 1;
  v260 = v77;
  if (v83 >= v76)
  {
    v133 = v83;
    v134 = v292;
    goto LABEL_51;
  }

  v276 = v76;
  v84 = *v272;
  v85 = *(v270 + 72);
  v86 = *v272 + v85 * v83;
  v87 = v247;
  sub_240FBE4A4(v86, v247);
  a3 = v248;
  sub_240FBE4A4(v84 + v85 * v82, v248);
  LODWORD(v285) = _s15ArchetypeEngine21ATSpotlightDataRecordV1loiySbAC_ACtFZ_0(a3, v87);
  sub_240FC2D4C(a3);
  result = sub_240FC2D4C(v87);
  v249 = v82;
  v88 = v82 + 2;
  v286 = v85;
  v89 = v84 + v85 * (v82 + 2);
  do
  {
    if (v276 == v88)
    {
      v134 = v292;
      v133 = v276;
      goto LABEL_37;
    }

    sub_240FBE4A4(v89, v279);
    v297 = v86;
    v93 = v278;
    sub_240FBE4A4(v86, v278);
    if (*v93 == 5)
    {
      v94 = v262;
      sub_240FBA9F4(&v93[v80[16]], v262);
      v95 = *v299;
      if ((*v299)(v94, 1, v300) != 1)
      {
        v96 = *v295;
        v97 = v80;
        v98 = v258;
        v99 = v300;
        (*v295)(v258, v262, v300);
        v100 = v97;
        v101 = v279 + v97[16];
        v102 = v253;
        sub_240FBA9F4(v101, v253);
        if (v95(v102, 1, v99) != 1)
        {
          v131 = v250;
          v129 = v300;
          v96(v250, v102, v300);
          v90 = sub_240FD41DC();
          a3 = v290;
          v128 = *v290;
          v132 = v131;
          v80 = v289;
          (*v290)(v132, v129);
          v130 = &v290;
          goto LABEL_33;
        }

        (*v290)(v98, v300);
        v94 = v102;
        v80 = v100;
      }

      sub_240FC7A50(v94);
      v93 = v278;
    }

    v103 = &v93[v80[9]];
    v104 = v93;
    v105 = v269;
    sub_240FBA9F4(v103, v269);
    v106 = *v299;
    if ((*v299)(v105, 1, v300) == 1)
    {
      v107 = v300;
      (*v293)(v277, &v104[v80[7]], v300);
      v108 = v106(v105, 1, v107);
      v109 = v264;
      if (v108 != 1)
      {
        sub_240FC7A50(v269);
      }
    }

    else
    {
      (*v295)(v277, v105, v300);
      v109 = v264;
    }

    v110 = v279;
    sub_240FBA9F4(v279 + v80[9], v109);
    if (v106(v109, 1, v300) == 1)
    {
      v111 = v80;
      v112 = v110 + v80[7];
      v113 = v271;
      v114 = v300;
      (*v293)(v271, v112, v300);
      if (v106(v109, 1, v114) != 1)
      {
        sub_240FC7A50(v109);
      }
    }

    else
    {
      v111 = v80;
      v113 = v271;
      (*v295)(v271, v109, v300);
    }

    sub_240FCB23C(&unk_27E51E6A0, MEMORY[0x277CC9578], MEMORY[0x277CC9598]);
    v115 = v277;
    if ((sub_240FD447C() & 1) == 0)
    {
      v90 = sub_240FD41DC();
      a3 = v290;
      v91 = *v290;
      v92 = v300;
      (*v290)(v113, v300);
      v91(v115, v92);
      v80 = v111;
      goto LABEL_7;
    }

    v80 = v111;
    v116 = v278;
    v117 = v261;
    sub_240FBA9F4(&v278[v111[8]], v261);
    if (v106(v117, 1, v300) == 1)
    {
      v118 = v116 + v111[7];
      v119 = v300;
      (*v293)(v263, v118, v300);
      v120 = v106(v117, 1, v119);
      v121 = v255;
      if (v120 != 1)
      {
        sub_240FC7A50(v261);
      }
    }

    else
    {
      (*v295)(v263, v117, v300);
      v121 = v255;
    }

    v122 = v279;
    sub_240FBA9F4(v279 + v111[8], v121);
    if (v106(v121, 1, v300) == 1)
    {
      v123 = v122 + v111[7];
      v124 = v254;
      v125 = v300;
      (*v293)(v254, v123, v300);
      if (v106(v121, 1, v125) != 1)
      {
        sub_240FC7A50(v121);
      }
    }

    else
    {
      v124 = v254;
      (*v295)(v254, v121, v300);
    }

    v126 = v263;
    v90 = sub_240FD41DC();
    v127 = v124;
    a3 = v290;
    v128 = *v290;
    v129 = v300;
    (*v290)(v127, v300);
    v128(v126, v129);
    v128(v271, v129);
    v130 = &v302;
LABEL_33:
    v128(*(v130 - 32), v129);
LABEL_7:
    v81 = v294;
    sub_240FC2D4C(v278);
    result = sub_240FC2D4C(v279);
    ++v88;
    v89 += v286;
    v86 = v297 + v286;
  }

  while (((v285 ^ v90) & 1) == 0);
  v133 = v88 - 1;
  v134 = v292;
LABEL_37:
  a4 = v251;
  v79 = v271;
  v82 = v249;
  if (v285)
  {
    if (v133 < v249)
    {
      goto LABEL_180;
    }

    if (v249 < v133)
    {
      v135 = v286 * (v133 - 1);
      v136 = v133 * v286;
      v137 = v133;
      v138 = v133;
      v139 = v249;
      v140 = v249 * v286;
      do
      {
        if (v139 != --v138)
        {
          v141 = *v272;
          if (!*v272)
          {
            goto LABEL_186;
          }

          a3 = v141 + v140;
          sub_240FC7AB8(v141 + v140, v259);
          if (v140 < v135 || a3 >= v141 + v136)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v140 != v135)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          result = sub_240FC7AB8(v259, v141 + v135);
          v134 = v292;
        }

        ++v139;
        v135 -= v286;
        v136 -= v286;
        v140 += v286;
      }

      while (v139 < v138);
      a4 = v251;
      v79 = v271;
      v133 = v137;
      v82 = v249;
      v81 = v294;
    }
  }

LABEL_51:
  v142 = v272[1];
  if (v133 >= v142)
  {
    goto LABEL_60;
  }

  if (__OFSUB__(v133, v82))
  {
    goto LABEL_179;
  }

  if (v133 - v82 >= a4)
  {
LABEL_60:
    v145 = v133;
    if (v133 < v82)
    {
      goto LABEL_178;
    }

    goto LABEL_61;
  }

  if (__OFADD__(v82, a4))
  {
    goto LABEL_181;
  }

  if (v82 + a4 >= v142)
  {
    v143 = v272[1];
  }

  else
  {
    v143 = v82 + a4;
  }

  v144 = v296;
  if (v143 < v82)
  {
LABEL_182:
    __break(1u);
    goto LABEL_183;
  }

  if (v133 == v143)
  {
    goto LABEL_60;
  }

  v195 = *v272;
  v196 = *(v270 + 72);
  v197 = *v272 + v196 * (v133 - 1);
  v285 = -v196;
  v249 = v82;
  v198 = v82 - v133;
  v286 = v195;
  v256 = v196;
  v199 = v195 + v133 * v196;
  v257 = v143;
  while (2)
  {
    v276 = v133;
    v265 = v199;
    v266 = v198;
    a3 = v198;
    v267 = v197;
    v200 = v197;
LABEL_115:
    v297 = a3;
    sub_240FBE4A4(v199, v81);
    sub_240FBE4A4(v200, v144);
    if (*v144 != 5)
    {
      goto LABEL_120;
    }

    v201 = &v144[v80[16]];
    v202 = v283;
    sub_240FBA9F4(v201, v283);
    v203 = *v299;
    if ((*v299)(v202, 1, v300) == 1)
    {
      goto LABEL_119;
    }

    v204 = v300;
    v205 = v81;
    v206 = *v295;
    a3 = v274;
    (*v295)(v274, v283, v300);
    v207 = v205 + v80[16];
    v202 = v275;
    sub_240FBA9F4(v207, v275);
    if (v203(v202, 1, v204) == 1)
    {
      (*v290)(a3, v204);
LABEL_119:
      sub_240FC7A50(v202);
      v134 = v292;
      v144 = v296;
LABEL_120:
      v208 = &v144[v80[9]];
      v209 = v144;
      v210 = v288;
      sub_240FBA9F4(v208, v288);
      v211 = *v299;
      if ((*v299)(v210, 1, v300) == 1)
      {
        v212 = v80;
        v213 = &v209[v80[7]];
        v214 = v300;
        (*v293)(v298, v213, v300);
        if (v211(v210, 1, v214) != 1)
        {
          sub_240FC7A50(v288);
        }
      }

      else
      {
        v212 = v80;
        (*v295)(v298, v210, v300);
      }

      v215 = v212;
      v216 = v212[9];
      v81 = v294;
      sub_240FBA9F4(&v294[v216], v134);
      v217 = v211(v134, 1, v300);
      v218 = v291;
      if (v217 == 1)
      {
        v219 = v300;
        (*v293)(v291, v81 + v215[7], v300);
        v220 = v211(v134, 1, v219);
        v221 = v298;
        if (v220 != 1)
        {
          sub_240FC7A50(v134);
        }
      }

      else
      {
        (*v295)(v291, v134, v300);
        v221 = v298;
      }

      sub_240FCB23C(&unk_27E51E6A0, MEMORY[0x277CC9578], MEMORY[0x277CC9598]);
      if (sub_240FD447C())
      {
        v222 = v296;
        v223 = v282;
        sub_240FBA9F4(&v296[v215[8]], v282);
        if (v211(v223, 1, v300) == 1)
        {
          v224 = v222 + v215[7];
          v225 = v300;
          (*v293)(v284, v224, v300);
          v226 = v211(v223, 1, v225);
          v227 = v281;
          if (v226 != 1)
          {
            sub_240FC7A50(v282);
          }
        }

        else
        {
          (*v295)(v284, v223, v300);
          v227 = v281;
        }

        v81 = v294;
        sub_240FBA9F4(&v294[v215[8]], v227);
        if (v211(v227, 1, v300) == 1)
        {
          v231 = v280;
          v232 = v300;
          (*v293)(v280, v81 + v215[7], v300);
          if (v211(v227, 1, v232) != 1)
          {
            sub_240FC7A50(v227);
          }
        }

        else
        {
          v231 = v280;
          (*v295)(v280, v227, v300);
        }

        v233 = v284;
        v228 = sub_240FD41DC();
        a3 = v290;
        v234 = *v290;
        v235 = v300;
        (*v290)(v231, v300);
        v234(v233, v235);
        v234(v291, v235);
        v234(v298, v235);
      }

      else
      {
        v228 = sub_240FD41DC();
        v229 = *v290;
        v230 = v218;
        a3 = v300;
        (*v290)(v230, v300);
        v229(v221, a3);
      }
    }

    else
    {
      v236 = v268;
      v206(v268, v202, v204);
      v228 = sub_240FD41DC();
      v237 = *v290;
      (*v290)(v236, v204);
      v237(a3, v204);
      v81 = v294;
    }

    v144 = v296;
    sub_240FC2D4C(v296);
    result = sub_240FC2D4C(v81);
    if ((v228 & 1) == 0)
    {
      v134 = v292;
      v80 = v289;
LABEL_113:
      v133 = v276 + 1;
      v197 = v267 + v256;
      v198 = v266 - 1;
      v199 = v265 + v256;
      v145 = v257;
      if (v276 + 1 != v257)
      {
        continue;
      }

      v79 = v271;
      v82 = v249;
      if (v257 < v249)
      {
        goto LABEL_178;
      }

LABEL_61:
      result = swift_isUniquelyReferenced_nonNull_native();
      if (result)
      {
        v77 = v260;
      }

      else
      {
        result = sub_240FB65E0(0, *(v260 + 2) + 1, 1, v260);
        v77 = result;
      }

      v147 = *(v77 + 2);
      v146 = *(v77 + 3);
      v134 = v147 + 1;
      if (v147 >= v146 >> 1)
      {
        result = sub_240FB65E0((v146 > 1), v147 + 1, 1, v77);
        v77 = result;
      }

      *(v77 + 2) = v134;
      v148 = &v77[16 * v147];
      *(v148 + 4) = v82;
      *(v148 + 5) = v145;
      v149 = *v252;
      if (!*v252)
      {
        goto LABEL_188;
      }

      a3 = v145;
      if (v147)
      {
        while (2)
        {
          v150 = v134 - 1;
          if (v134 >= 4)
          {
            v155 = &v77[16 * v134 + 32];
            v156 = *(v155 - 64);
            v157 = *(v155 - 56);
            v161 = __OFSUB__(v157, v156);
            v158 = v157 - v156;
            if (v161)
            {
              goto LABEL_165;
            }

            v160 = *(v155 - 48);
            v159 = *(v155 - 40);
            v161 = __OFSUB__(v159, v160);
            v153 = v159 - v160;
            v154 = v161;
            if (v161)
            {
              goto LABEL_166;
            }

            v162 = &v77[16 * v134];
            v164 = *v162;
            v163 = *(v162 + 1);
            v161 = __OFSUB__(v163, v164);
            v165 = v163 - v164;
            if (v161)
            {
              goto LABEL_168;
            }

            v161 = __OFADD__(v153, v165);
            v166 = v153 + v165;
            if (v161)
            {
              goto LABEL_171;
            }

            if (v166 >= v158)
            {
              v184 = &v77[16 * v150 + 32];
              v186 = *v184;
              v185 = *(v184 + 1);
              v161 = __OFSUB__(v185, v186);
              v187 = v185 - v186;
              if (v161)
              {
                goto LABEL_175;
              }

              if (v153 < v187)
              {
                v150 = v134 - 2;
              }
            }

            else
            {
LABEL_80:
              if (v154)
              {
                goto LABEL_167;
              }

              v167 = &v77[16 * v134];
              v169 = *v167;
              v168 = *(v167 + 1);
              v170 = __OFSUB__(v168, v169);
              v171 = v168 - v169;
              v172 = v170;
              if (v170)
              {
                goto LABEL_170;
              }

              v173 = &v77[16 * v150 + 32];
              v175 = *v173;
              v174 = *(v173 + 1);
              v161 = __OFSUB__(v174, v175);
              v176 = v174 - v175;
              if (v161)
              {
                goto LABEL_173;
              }

              if (__OFADD__(v171, v176))
              {
                goto LABEL_174;
              }

              if (v171 + v176 < v153)
              {
                goto LABEL_94;
              }

              if (v153 < v176)
              {
                v150 = v134 - 2;
              }
            }
          }

          else
          {
            if (v134 == 3)
            {
              v151 = *(v77 + 4);
              v152 = *(v77 + 5);
              v161 = __OFSUB__(v152, v151);
              v153 = v152 - v151;
              v154 = v161;
              goto LABEL_80;
            }

            v177 = &v77[16 * v134];
            v179 = *v177;
            v178 = *(v177 + 1);
            v161 = __OFSUB__(v178, v179);
            v171 = v178 - v179;
            v172 = v161;
LABEL_94:
            if (v172)
            {
              goto LABEL_169;
            }

            v180 = &v77[16 * v150];
            v182 = *(v180 + 4);
            v181 = *(v180 + 5);
            v161 = __OFSUB__(v181, v182);
            v183 = v181 - v182;
            if (v161)
            {
              goto LABEL_172;
            }

            if (v183 < v171)
            {
              break;
            }
          }

          v188 = v150 - 1;
          if (v150 - 1 >= v134)
          {
            __break(1u);
LABEL_163:
            __break(1u);
LABEL_164:
            __break(1u);
LABEL_165:
            __break(1u);
LABEL_166:
            __break(1u);
LABEL_167:
            __break(1u);
LABEL_168:
            __break(1u);
LABEL_169:
            __break(1u);
LABEL_170:
            __break(1u);
LABEL_171:
            __break(1u);
LABEL_172:
            __break(1u);
LABEL_173:
            __break(1u);
LABEL_174:
            __break(1u);
LABEL_175:
            __break(1u);
LABEL_176:
            __break(1u);
LABEL_177:
            __break(1u);
LABEL_178:
            __break(1u);
LABEL_179:
            __break(1u);
LABEL_180:
            __break(1u);
LABEL_181:
            __break(1u);
            goto LABEL_182;
          }

          if (!*v272)
          {
            goto LABEL_185;
          }

          v189 = v81;
          v190 = v77;
          v134 = *&v77[16 * v188 + 32];
          v191 = *&v77[16 * v150 + 40];
          v192 = v273;
          sub_240FCAA6C(*v272 + *(v270 + 72) * v134, *v272 + *(v270 + 72) * *&v77[16 * v150 + 32], *v272 + *(v270 + 72) * v191, v149);
          v273 = v192;
          if (v192)
          {
          }

          if (v191 < v134)
          {
            goto LABEL_163;
          }

          if (swift_isUniquelyReferenced_nonNull_native())
          {
            v193 = v190;
          }

          else
          {
            v193 = sub_240FCAF80(v190);
          }

          v80 = v289;
          if (v188 >= *(v193 + 2))
          {
            goto LABEL_164;
          }

          v194 = &v193[16 * v188];
          *(v194 + 4) = v134;
          *(v194 + 5) = v191;
          v301 = v193;
          result = sub_240FCAEF4(v150);
          v77 = v301;
          v134 = *(v301 + 16);
          v81 = v189;
          if (v134 <= 1)
          {
            break;
          }

          continue;
        }
      }

      v76 = v272[1];
      v78 = a3;
      a4 = v251;
      if (a3 >= v76)
      {
        goto LABEL_150;
      }

      goto LABEL_4;
    }

    break;
  }

  v80 = v289;
  v238 = v297;
  if (v286)
  {
    v239 = v287;
    sub_240FC7AB8(v199, v287);
    swift_arrayInitWithTakeFrontToBack();
    sub_240FC7AB8(v239, v200);
    v200 += v285;
    v199 += v285;
    v240 = __CFADD__(v238, 1);
    a3 = v238 + 1;
    v134 = v292;
    if (v240)
    {
      goto LABEL_113;
    }

    goto LABEL_115;
  }

  __break(1u);
LABEL_185:
  __break(1u);
LABEL_186:
  __break(1u);
LABEL_187:
  __break(1u);
LABEL_188:
  __break(1u);
LABEL_189:
  __break(1u);
  return result;
}

uint64_t sub_240FCAA6C(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v44 = a3;
  v42 = type metadata accessor for ATSpotlightDataRecord(0);
  v8 = MEMORY[0x28223BE20](v42);
  v43 = v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v8);
  v12 = v38 - v11;
  v14 = *(v13 + 72);
  if (!v14)
  {
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v14 == -1)
  {
    goto LABEL_61;
  }

  v15 = v44 - a2;
  if (v44 - a2 == 0x8000000000000000 && v14 == -1)
  {
    goto LABEL_62;
  }

  v16 = (a2 - a1) / v14;
  v47 = a1;
  v46 = a4;
  if (v16 >= v15 / v14)
  {
    v18 = v15 / v14 * v14;
    if (a4 < a2 || a2 + v18 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v38[1] = v4;
    v23 = a4 + v18;
    if (v18 < 1)
    {
      v26 = a4 + v18;
    }

    else
    {
      v24 = -v14;
      v25 = a4 + v18;
      v26 = v23;
      v40 = v24;
      v41 = a4;
      do
      {
        v38[0] = v26;
        v27 = a2;
        v28 = a2 + v24;
        while (1)
        {
          v30 = v44;
          if (v27 <= a1)
          {
            v47 = v27;
            v45 = v38[0];
            goto LABEL_59;
          }

          v39 = v26;
          v44 += v24;
          v31 = v25 + v24;
          sub_240FBE4A4(v31, v12);
          v32 = v28;
          v33 = v28;
          v34 = v12;
          v35 = v43;
          sub_240FBE4A4(v33, v43);
          v36 = _s15ArchetypeEngine21ATSpotlightDataRecordV1loiySbAC_ACtFZ_0(v35, v34);
          v37 = v35;
          v12 = v34;
          sub_240FC2D4C(v37);
          sub_240FC2D4C(v34);
          if (v36)
          {
            break;
          }

          v26 = v31;
          if (v30 < v25 || v44 >= v25)
          {
            swift_arrayInitWithTakeFrontToBack();
            v28 = v32;
          }

          else
          {
            v28 = v32;
            if (v30 != v25)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v25 = v31;
          v29 = v31 > v41;
          v24 = v40;
          if (!v29)
          {
            a2 = v27;
            goto LABEL_58;
          }
        }

        if (v30 < v27 || v44 >= v27)
        {
          a2 = v32;
          swift_arrayInitWithTakeFrontToBack();
          v26 = v39;
          v24 = v40;
        }

        else
        {
          v26 = v39;
          v24 = v40;
          a2 = v32;
          if (v30 != v27)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }
      }

      while (v25 > v41);
    }

LABEL_58:
    v47 = a2;
    v45 = v26;
  }

  else
  {
    v17 = v16 * v14;
    if (a4 < a1 || a1 + v17 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v19 = a4 + v17;
    v45 = a4 + v17;
    if (v17 >= 1 && a2 < v44)
    {
      do
      {
        sub_240FBE4A4(a2, v12);
        v21 = v43;
        sub_240FBE4A4(a4, v43);
        v22 = _s15ArchetypeEngine21ATSpotlightDataRecordV1loiySbAC_ACtFZ_0(v21, v12);
        sub_240FC2D4C(v21);
        sub_240FC2D4C(v12);
        if (v22)
        {
          if (a1 < a2 || a1 >= a2 + v14)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a2)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 += v14;
        }

        else
        {
          if (a1 < a4 || a1 >= a4 + v14)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a4)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v46 = a4 + v14;
          a4 += v14;
        }

        a1 += v14;
        v47 = a1;
      }

      while (a4 < v19 && a2 < v44);
    }
  }

LABEL_59:
  sub_240FCAF94(&v47, &v46, &v45);
  return 1;
}

uint64_t sub_240FCAEF4(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_240FCAF80(v3);
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

uint64_t sub_240FCAF94(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  result = type metadata accessor for ATSpotlightDataRecord(0);
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

uint64_t sub_240FCB0A0()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t type metadata accessor for ATSpotlightDataRetriever(uint64_t a1)
{
  result = qword_27E51E8A8;
  if (!qword_27E51E8A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_240FCB18C(uint64_t a1)
{
  result = sub_240FD422C();
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

uint64_t sub_240FCB23C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_240FCB284()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51E8B8, &qword_240FD5C90);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_240FCB318(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51E8B8, &qword_240FD5C90);

  return sub_240FC7B1C(a1);
}

uint64_t sub_240FCB394()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_240FCB3CC()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_240FCB430()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_240FCB484(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  sub_240FC06B8(0, &qword_27E51E8C8, 0x277CC34B0);
  v3 = sub_240FD453C();

  v2(v3);
}

void sub_240FCB508(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

uint64_t sub_240FCB588(unint64_t a1, unint64_t a2, uint64_t a3)
{
  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v3 = a3;
    v4 = a1;
    v5 = a1 >> 62;
    if (!(a1 >> 62))
    {
      result = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result >= a2)
      {
        v7 = a2;
      }

      else
      {
        v7 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (a2)
      {
        v8 = v7;
      }

      else
      {
        v8 = 0;
      }

      if (result >= v8)
      {
        goto LABEL_10;
      }

      goto LABEL_43;
    }
  }

  v29 = sub_240FD476C();
  result = sub_240FD476C();
  if ((result & 0x8000000000000000) == 0)
  {
    if (v29 >= a2)
    {
      v30 = a2;
    }

    else
    {
      v30 = v29;
    }

    if (v29 < 0)
    {
      v30 = a2;
    }

    if (a2)
    {
      v8 = v30;
    }

    else
    {
      v8 = 0;
    }

    result = sub_240FD476C();
    if (result >= v8)
    {
LABEL_10:
      if ((v4 & 0xC000000000000001) != 0 && v8)
      {
        sub_240FC06B8(0, &qword_27E51E8C8, 0x277CC34B0);

        v9 = 0;
        do
        {
          v10 = v9 + 1;
          sub_240FD46CC();
          v9 = v10;
        }

        while (v8 != v10);
        if (!v5)
        {
LABEL_15:
          v11 = 0;
          result = v4 & 0xFFFFFFFFFFFFFF8;
          v12 = (v4 & 0xFFFFFFFFFFFFFF8) + 32;
          v14 = v8;
          v13 = v8 <= 0;
          if (v8)
          {
            goto LABEL_16;
          }

          goto LABEL_29;
        }
      }

      else
      {

        if (!v5)
        {
          goto LABEL_15;
        }
      }

      result = sub_240FD477C();
      v14 = (v27 >> 1) - v11;
      v13 = (v27 >> 1) <= v11;
      if (v27 >> 1 != v11)
      {
LABEL_16:
        if (!v13)
        {
          v15 = (v12 + 8 * v11);
          do
          {
            v16 = *v15;
            v17 = [v16 attributeSet];
            v18 = [v17 title];

            if (v18)
            {
              v19 = sub_240FD449C();
              v21 = v20;
            }

            else
            {
              v19 = 0;
              v21 = 0xE000000000000000;
            }

            swift_beginAccess();
            v22 = *(v3 + 16);
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            *(v3 + 16) = v22;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              v22 = sub_240FB6B4C(0, *(v22 + 2) + 1, 1, v22);
              *(v3 + 16) = v22;
            }

            v25 = *(v22 + 2);
            v24 = *(v22 + 3);
            if (v25 >= v24 >> 1)
            {
              v22 = sub_240FB6B4C((v24 > 1), v25 + 1, 1, v22);
            }

            *(v22 + 2) = v25 + 1;
            v26 = &v22[16 * v25];
            *(v26 + 4) = v19;
            *(v26 + 5) = v21;
            *(v3 + 16) = v22;
            swift_endAccess();

            ++v15;
            --v14;
          }

          while (v14);
          return swift_unknownObjectRelease();
        }

        goto LABEL_44;
      }

LABEL_29:

      return swift_unknownObjectRelease();
    }

LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_240FCB888(unint64_t a1, unint64_t a2, uint64_t a3)
{
  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v5 = a3;
    v4 = a1;
    v3 = a1 >> 62;
    if (!(a1 >> 62))
    {
      result = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result >= a2)
      {
        v7 = a2;
      }

      else
      {
        v7 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (a2)
      {
        v8 = v7;
      }

      else
      {
        v8 = 0;
      }

      if (result >= v8)
      {
        goto LABEL_10;
      }

LABEL_52:
      __break(1u);
LABEL_53:
      __break(1u);
      goto LABEL_54;
    }
  }

  v43 = sub_240FD476C();
  result = sub_240FD476C();
  if (result < 0)
  {
LABEL_54:
    __break(1u);
    return result;
  }

  if (v43 >= a2)
  {
    v44 = a2;
  }

  else
  {
    v44 = v43;
  }

  if (v43 < 0)
  {
    v44 = a2;
  }

  if (a2)
  {
    v8 = v44;
  }

  else
  {
    v8 = 0;
  }

  result = sub_240FD476C();
  if (result < v8)
  {
    goto LABEL_52;
  }

LABEL_10:
  if ((v4 & 0xC000000000000001) != 0 && v8)
  {
    sub_240FC06B8(0, &qword_27E51E8C8, 0x277CC34B0);

    v9 = 0;
    do
    {
      v10 = v9 + 1;
      sub_240FD46CC();
      v9 = v10;
    }

    while (v8 != v10);
    if (!v3)
    {
LABEL_15:
      v11 = 0;
      result = v4 & 0xFFFFFFFFFFFFFF8;
      v12 = (v4 & 0xFFFFFFFFFFFFFF8) + 32;
      v14 = v8;
      v13 = v8 <= 0;
      if (v8)
      {
        goto LABEL_16;
      }

      goto LABEL_38;
    }
  }

  else
  {

    if (!v3)
    {
      goto LABEL_15;
    }
  }

  result = sub_240FD477C();
  v14 = (v41 >> 1) - v11;
  v13 = (v41 >> 1) <= v11;
  if (v41 >> 1 != v11)
  {
LABEL_16:
    if (!v13)
    {
      v46 = *MEMORY[0x277CC3118];
      v15 = (v12 + 8 * v11);
      v45 = v5;
      do
      {
        v16 = *v15;
        v17 = [v16 attributeSet];
        v18 = [v17 authorEmailAddresses];

        if (v18)
        {
          v19 = sub_240FD453C();
        }

        else
        {
          v19 = MEMORY[0x277D84F90];
        }

        *&v48 = v19;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51E640, &qword_240FD5730);
        sub_240FC5268();
        v20 = sub_240FD444C();
        v22 = v21;

        v23 = [v16 attributeSet];
        v24 = [v23 recipientEmailAddresses];

        if (v24)
        {
          v25 = sub_240FD453C();
        }

        else
        {
          v25 = MEMORY[0x277D84F90];
        }

        *&v48 = v25;
        v26 = sub_240FD444C();
        v28 = v27;

        v29 = 0xE000000000000000;
        *&v48 = 0;
        *(&v48 + 1) = 0xE000000000000000;
        sub_240FD46BC();
        v50 = v48;
        MEMORY[0x245CD64D0](0x3A7463656A627553, 0xEA00000000005B20);
        v30 = [v16 attributeSet];
        v31 = [v30 subject];

        if (v31)
        {
          v32 = sub_240FD449C();
          v29 = v33;
        }

        else
        {
          v32 = 0;
        }

        MEMORY[0x245CD64D0](v32, v29);

        MEMORY[0x245CD64D0](0x65646E6573202C5DLL, 0xED00005B203A7372);
        MEMORY[0x245CD64D0](v20, v22);

        MEMORY[0x245CD64D0](0xD000000000000010, 0x8000000240FD6A60);
        MEMORY[0x245CD64D0](v26, v28);

        MEMORY[0x245CD64D0](0x70696E73202C5D5DLL, 0xEE005B203A746570);
        v34 = [v16 attributeSet];
        v35 = [v34 attributeForKey_];

        if (v35)
        {
          sub_240FD464C();
          swift_unknownObjectRelease();
          sub_240FBE508(&v47, &v48);
        }

        else
        {
          v49 = MEMORY[0x277D837D0];
          *&v48 = 0;
          *(&v48 + 1) = 0xE000000000000000;
        }

        sub_240FD475C();
        __swift_destroy_boxed_opaque_existential_0(&v48);
        MEMORY[0x245CD64D0](93, 0xE100000000000000);
        v36 = v50;
        swift_beginAccess();
        v37 = *(v45 + 16);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(v45 + 16) = v37;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v37 = sub_240FB6B4C(0, *(v37 + 2) + 1, 1, v37);
          *(v45 + 16) = v37;
        }

        v40 = *(v37 + 2);
        v39 = *(v37 + 3);
        if (v40 >= v39 >> 1)
        {
          v37 = sub_240FB6B4C((v39 > 1), v40 + 1, 1, v37);
        }

        *(v37 + 2) = v40 + 1;
        *&v37[16 * v40 + 32] = v36;
        *(v45 + 16) = v37;
        swift_endAccess();

        ++v15;
        --v14;
      }

      while (v14);
      return swift_unknownObjectRelease();
    }

    goto LABEL_53;
  }

LABEL_38:

  return swift_unknownObjectRelease();
}

uint64_t sub_240FCBE84(void *a1, int a2, uint64_t a3, void *aBlock, uint64_t a5, uint64_t a6, void (*a7)(uint64_t, uint64_t, uint64_t))
{
  v11 = _Block_copy(aBlock);
  v12 = swift_allocObject();
  *(v12 + 16) = v11;
  v13 = a1;
  a7(a3, a6, v12);
}

uint64_t sub_240FCBF6C(unint64_t a1, uint64_t a2)
{
  v4 = sub_240FD422C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v317 = &v275 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51E578, &qword_240FD51A0);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v312 = &v275 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v311 = &v275 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v310 = &v275 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v309 = &v275 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v308 = &v275 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v307 = &v275 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v306 = &v275 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v305 = &v275 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v304 = &v275 - v25;
  v26 = MEMORY[0x28223BE20](v24);
  v303 = &v275 - v27;
  v28 = MEMORY[0x28223BE20](v26);
  v30 = &v275 - v29;
  MEMORY[0x28223BE20](v28);
  v302 = &v275 - v32;
  if (a1 >> 62)
  {
    v274 = v31;
    result = sub_240FD476C();
    v31 = v274;
    if (!result)
    {
      return result;
    }
  }

  else
  {
    result = *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      return result;
    }
  }

  if (result < 1)
  {
    __break(1u);
  }

  else
  {
    v34 = 0;
    v297 = 0x8000000240FD6850;
    v296 = 0x8000000240FD6870;
    v295 = 0x8000000240FD6890;
    v294 = 0x8000000240FD68B0;
    v293 = 0x8000000240FD68D0;
    v292 = 0x8000000240FD68F0;
    v291 = "account identifier: [";
    v290 = "incoming SMS counts: [";
    v289 = "outgoing SMS counts: [";
    v288 = "incoming mail counts: [";
    v287 = "outgoing mail counts: [";
    v286 = 0x8000000240FD69B0;
    v285 = 0x8000000240FD69D0;
    v284 = 0x8000000240FD69F0;
    v283 = 0x8000000240FD6A10;
    v282 = *MEMORY[0x277CC3118];
    v318 = (v5 + 48);
    v319 = (v5 + 56);
    v315 = (v5 + 8);
    v316 = (v5 + 16);
    v281 = *MEMORY[0x277CC2C30];
    v280 = *MEMORY[0x277CC2E38];
    v279 = *MEMORY[0x277CC2C28];
    v278 = *MEMORY[0x277CC2E30];
    v277 = *MEMORY[0x277CC26B0];
    v276 = *MEMORY[0x277CC3218];
    v275 = v31 & 0xC000000000000001;
    v301 = a2;
    v300 = v31;
    v299 = v30;
    v298 = result;
    do
    {
      if (v275)
      {
        v35 = MEMORY[0x245CD66B0](v34);
      }

      else
      {
        v35 = *(v31 + 8 * v34 + 32);
      }

      v36 = v35;
      strcpy(&v321, "title: [");
      BYTE9(v321) = 0;
      WORD5(v321) = 0;
      HIDWORD(v321) = -402653184;
      v37 = [v35 attributeSet];
      v38 = [v37 title];

      if (v38)
      {
        v39 = sub_240FD449C();
        v41 = v40;
      }

      else
      {
        v39 = 0;
        v41 = 0xE000000000000000;
      }

      MEMORY[0x245CD64D0](v39, v41);

      MEMORY[0x245CD64D0](93, 0xE100000000000000);
      v42 = v321;
      v43 = sub_240FB6B4C(0, 1, 1, MEMORY[0x277D84F90]);
      v45 = *(v43 + 2);
      v44 = *(v43 + 3);
      if (v45 >= v44 >> 1)
      {
        v43 = sub_240FB6B4C((v44 > 1), v45 + 1, 1, v43);
      }

      *(v43 + 2) = v45 + 1;
      *&v43[16 * v45 + 32] = v42;
      v46 = 0xE000000000000000;
      *&v321 = 0;
      *(&v321 + 1) = 0xE000000000000000;
      sub_240FD46BC();

      *&v321 = 0x2079616C70736964;
      *(&v321 + 1) = 0xEF5B203A656D616ELL;
      v47 = [v36 attributeSet];
      v48 = [v47 displayName];

      if (v48)
      {
        v49 = sub_240FD449C();
        v46 = v50;
      }

      else
      {
        v49 = 0;
      }

      MEMORY[0x245CD64D0](v49, v46);

      MEMORY[0x245CD64D0](93, 0xE100000000000000);
      v51 = v321;
      v53 = *(v43 + 2);
      v52 = *(v43 + 3);
      if (v53 >= v52 >> 1)
      {
        v43 = sub_240FB6B4C((v52 > 1), v53 + 1, 1, v43);
      }

      *(v43 + 2) = v53 + 1;
      *&v43[16 * v53 + 32] = v51;
      *&v323 = 0;
      *(&v323 + 1) = 0xE000000000000000;
      MEMORY[0x245CD64D0](0x3A74657070696E73, 0xEA00000000005B20);
      v54 = [v36 attributeSet];
      v55 = [v54 attributeForKey_];

      if (v55)
      {
        sub_240FD464C();
        swift_unknownObjectRelease();
        sub_240FBE508(&v320, &v321);
      }

      else
      {
        v322 = MEMORY[0x277D837D0];
        *&v321 = 0;
        *(&v321 + 1) = 0xE000000000000000;
      }

      sub_240FD475C();
      __swift_destroy_boxed_opaque_existential_0(&v321);
      MEMORY[0x245CD64D0](93, 0xE100000000000000);
      v56 = v323;
      v58 = *(v43 + 2);
      v57 = *(v43 + 3);
      if (v58 >= v57 >> 1)
      {
        v43 = sub_240FB6B4C((v57 > 1), v58 + 1, 1, v43);
      }

      *(v43 + 2) = v58 + 1;
      *&v43[16 * v58 + 32] = v56;
      strcpy(&v321, "due time: [");
      HIDWORD(v321) = -352321536;
      v59 = [v36 attributeSet];
      v60 = [v59 dueDate];

      v314 = v34;
      if (v60)
      {
        sub_240FD41FC();

        v61 = 0;
      }

      else
      {
        v61 = 1;
      }

      v62 = *v319;
      (*v319)(v30, v61, 1, v4);
      v63 = v302;
      sub_240FBCB00(v30, v302);
      v64 = *v318;
      if ((*v318)(v63, 1, v4))
      {
        sub_240FC7A50(v63);
        v65 = 0;
        v66 = 0xE000000000000000;
      }

      else
      {
        v67 = v317;
        (*v316)(v317, v63, v4);
        sub_240FC7A50(v63);
        v65 = sub_240FD420C();
        v66 = v68;
        (*v315)(v67, v4);
      }

      MEMORY[0x245CD64D0](v65, v66);

      MEMORY[0x245CD64D0](93, 0xE100000000000000);
      v69 = v321;
      v71 = *(v43 + 2);
      v70 = *(v43 + 3);
      if (v71 >= v70 >> 1)
      {
        v43 = sub_240FB6B4C((v70 > 1), v71 + 1, 1, v43);
      }

      *(v43 + 2) = v71 + 1;
      *&v43[16 * v71 + 32] = v69;
      *&v321 = 0;
      *(&v321 + 1) = 0xE000000000000000;
      sub_240FD46BC();

      *&v321 = 0xD000000000000012;
      *(&v321 + 1) = v297;
      v72 = [v36 attributeSet];
      v73 = [v72 completionDate];

      if (v73)
      {
        v74 = v304;
        sub_240FD41FC();

        v75 = 0;
      }

      else
      {
        v75 = 1;
        v74 = v304;
      }

      v62(v74, v75, 1, v4);
      v76 = v303;
      sub_240FBCB00(v74, v303);
      if (v64(v76, 1, v4))
      {
        sub_240FC7A50(v76);
        v77 = 0;
        v78 = 0xE000000000000000;
      }

      else
      {
        v79 = v317;
        (*v316)(v317, v76, v4);
        sub_240FC7A50(v76);
        v80 = sub_240FD420C();
        v78 = v81;
        (*v315)(v79, v4);
        v77 = v80;
      }

      MEMORY[0x245CD64D0](v77, v78);

      MEMORY[0x245CD64D0](93, 0xE100000000000000);
      v82 = v321;
      v84 = *(v43 + 2);
      v83 = *(v43 + 3);
      if (v84 >= v83 >> 1)
      {
        v43 = sub_240FB6B4C((v83 > 1), v84 + 1, 1, v43);
      }

      *(v43 + 2) = v84 + 1;
      *&v43[16 * v84 + 32] = v82;
      *&v321 = 0;
      *(&v321 + 1) = 0xE000000000000000;
      sub_240FD46BC();

      v313 = 0xD000000000000010;
      *&v321 = 0xD000000000000010;
      *(&v321 + 1) = v296;
      v85 = [v36 attributeSet];
      v86 = [v85 contentCreationDate];

      if (v86)
      {
        v87 = v306;
        sub_240FD41FC();

        v88 = 0;
      }

      else
      {
        v88 = 1;
        v87 = v306;
      }

      v62(v87, v88, 1, v4);
      v89 = v305;
      sub_240FBCB00(v87, v305);
      if (v64(v89, 1, v4))
      {
        sub_240FC7A50(v89);
        v90 = 0;
        v91 = 0xE000000000000000;
      }

      else
      {
        v92 = v317;
        (*v316)(v317, v89, v4);
        sub_240FC7A50(v89);
        v93 = sub_240FD420C();
        v91 = v94;
        (*v315)(v92, v4);
        v90 = v93;
      }

      MEMORY[0x245CD64D0](v90, v91);

      MEMORY[0x245CD64D0](93, 0xE100000000000000);
      v95 = v321;
      v97 = *(v43 + 2);
      v96 = *(v43 + 3);
      if (v97 >= v96 >> 1)
      {
        v43 = sub_240FB6B4C((v96 > 1), v97 + 1, 1, v43);
      }

      *(v43 + 2) = v97 + 1;
      *&v43[16 * v97 + 32] = v95;
      *&v321 = 0;
      *(&v321 + 1) = 0xE000000000000000;
      sub_240FD46BC();

      *&v321 = 0xD000000000000014;
      *(&v321 + 1) = v295;
      v98 = [v36 attributeSet];
      v99 = [v98 contentModificationDate];

      if (v99)
      {
        v100 = v308;
        sub_240FD41FC();

        v101 = 0;
      }

      else
      {
        v101 = 1;
        v100 = v308;
      }

      v62(v100, v101, 1, v4);
      v102 = v307;
      sub_240FBCB00(v100, v307);
      if (v64(v102, 1, v4))
      {
        sub_240FC7A50(v102);
        v103 = 0;
        v104 = 0xE000000000000000;
      }

      else
      {
        v105 = v317;
        (*v316)(v317, v102, v4);
        sub_240FC7A50(v102);
        v106 = sub_240FD420C();
        v104 = v107;
        (*v315)(v105, v4);
        v103 = v106;
      }

      MEMORY[0x245CD64D0](v103, v104);

      MEMORY[0x245CD64D0](93, 0xE100000000000000);
      v108 = v321;
      v110 = *(v43 + 2);
      v109 = *(v43 + 3);
      if (v110 >= v109 >> 1)
      {
        v43 = sub_240FB6B4C((v109 > 1), v110 + 1, 1, v43);
      }

      *(v43 + 2) = v110 + 1;
      *&v43[16 * v110 + 32] = v108;
      *&v321 = 0;
      *(&v321 + 1) = 0xE000000000000000;
      sub_240FD46BC();

      strcpy(&v321, "start time: [");
      HIWORD(v321) = -4864;
      v111 = [v36 attributeSet];
      v112 = [v111 startDate];

      if (v112)
      {
        v113 = v310;
        sub_240FD41FC();

        v114 = 0;
      }

      else
      {
        v114 = 1;
        v113 = v310;
      }

      v62(v113, v114, 1, v4);
      v115 = v309;
      sub_240FBCB00(v113, v309);
      if (v64(v115, 1, v4))
      {
        sub_240FC7A50(v115);
        v116 = 0;
        v117 = 0xE000000000000000;
      }

      else
      {
        v118 = v317;
        (*v316)(v317, v115, v4);
        sub_240FC7A50(v115);
        v119 = sub_240FD420C();
        v117 = v120;
        (*v315)(v118, v4);
        v116 = v119;
      }

      MEMORY[0x245CD64D0](v116, v117);

      MEMORY[0x245CD64D0](93, 0xE100000000000000);
      v121 = v321;
      v123 = *(v43 + 2);
      v122 = *(v43 + 3);
      if (v123 >= v122 >> 1)
      {
        v43 = sub_240FB6B4C((v122 > 1), v123 + 1, 1, v43);
      }

      *(v43 + 2) = v123 + 1;
      *&v43[16 * v123 + 32] = v121;
      strcpy(&v321, "end time: [");
      HIDWORD(v321) = -352321536;
      v124 = [v36 attributeSet];
      v125 = [v124 endDate];

      if (v125)
      {
        v126 = v312;
        sub_240FD41FC();

        v127 = 0;
      }

      else
      {
        v127 = 1;
        v126 = v312;
      }

      v62(v126, v127, 1, v4);
      v128 = v311;
      sub_240FBCB00(v126, v311);
      if (v64(v128, 1, v4))
      {
        sub_240FC7A50(v128);
        v129 = 0;
        v130 = 0xE000000000000000;
      }

      else
      {
        v131 = v317;
        (*v316)(v317, v128, v4);
        sub_240FC7A50(v128);
        v132 = sub_240FD420C();
        v130 = v133;
        (*v315)(v131, v4);
        v129 = v132;
      }

      v134 = v314;
      MEMORY[0x245CD64D0](v129, v130);

      MEMORY[0x245CD64D0](93, 0xE100000000000000);
      v135 = v321;
      v137 = *(v43 + 2);
      v136 = *(v43 + 3);
      if (v137 >= v136 >> 1)
      {
        v43 = sub_240FB6B4C((v136 > 1), v137 + 1, 1, v43);
      }

      *(v43 + 2) = v137 + 1;
      *&v43[16 * v137 + 32] = v135;
      strcpy(&v321, "location: [");
      HIDWORD(v321) = -352321536;
      v138 = [v36 attributeSet];
      v139 = [v138 namedLocation];

      if (v139)
      {
        v140 = sub_240FD449C();
        v142 = v141;
      }

      else
      {
        v140 = 0;
        v142 = 0xE000000000000000;
      }

      MEMORY[0x245CD64D0](v140, v142);

      MEMORY[0x245CD64D0](93, 0xE100000000000000);
      v143 = v321;
      v145 = *(v43 + 2);
      v144 = *(v43 + 3);
      if (v145 >= v144 >> 1)
      {
        v43 = sub_240FB6B4C((v144 > 1), v145 + 1, 1, v43);
      }

      *(v43 + 2) = v145 + 1;
      *&v43[16 * v145 + 32] = v143;
      strcpy(&v321, "comment: [");
      BYTE11(v321) = 0;
      HIDWORD(v321) = -369098752;
      v146 = [v36 attributeSet];
      v147 = [v146 comment];

      if (v147)
      {
        v148 = sub_240FD449C();
        v150 = v149;
      }

      else
      {
        v148 = 0;
        v150 = 0xE000000000000000;
      }

      MEMORY[0x245CD64D0](v148, v150);

      MEMORY[0x245CD64D0](93, 0xE100000000000000);
      v151 = v321;
      v153 = *(v43 + 2);
      v152 = *(v43 + 3);
      if (v153 >= v152 >> 1)
      {
        v43 = sub_240FB6B4C((v152 > 1), v153 + 1, 1, v43);
      }

      *(v43 + 2) = v153 + 1;
      *&v43[16 * v153 + 32] = v151;
      *&v321 = 0xD000000000000013;
      *(&v321 + 1) = v294;
      v154 = [v36 attributeSet];
      v155 = [v154 allDay];

      if (!v155)
      {
        sub_240FC06B8(0, &qword_27E51E8D0, 0x277CCABB0);
        v155 = sub_240FD461C();
      }

      v156 = [v155 description];
      v157 = sub_240FD449C();
      v159 = v158;

      MEMORY[0x245CD64D0](v157, v159);

      MEMORY[0x245CD64D0](93, 0xE100000000000000);
      v160 = v321;
      v162 = *(v43 + 2);
      v161 = *(v43 + 3);
      if (v162 >= v161 >> 1)
      {
        v43 = sub_240FB6B4C((v161 > 1), v162 + 1, 1, v43);
      }

      *(v43 + 2) = v162 + 1;
      *&v43[16 * v162 + 32] = v160;
      *&v321 = 0xD00000000000001ELL;
      *(&v321 + 1) = v293;
      v163 = [v36 attributeSet];
      v164 = [v163 calendarHolidayIdentifier];

      if (v164)
      {
        v165 = sub_240FD449C();
        v167 = v166;
      }

      else
      {
        v165 = 0;
        v167 = 0xE000000000000000;
      }

      MEMORY[0x245CD64D0](v165, v167);

      MEMORY[0x245CD64D0](93, 0xE100000000000000);
      v168 = v321;
      v170 = *(v43 + 2);
      v169 = *(v43 + 3);
      if (v170 >= v169 >> 1)
      {
        v43 = sub_240FB6B4C((v169 > 1), v170 + 1, 1, v43);
      }

      *(v43 + 2) = v170 + 1;
      *&v43[16 * v170 + 32] = v168;
      *&v321 = 0xD000000000000015;
      *(&v321 + 1) = v292;
      v171 = [v36 attributeSet];
      v172 = [v171 accountIdentifier];

      if (v172)
      {
        v173 = sub_240FD449C();
        v175 = v174;
      }

      else
      {
        v173 = 0;
        v175 = 0xE000000000000000;
      }

      MEMORY[0x245CD64D0](v173, v175);

      MEMORY[0x245CD64D0](93, 0xE100000000000000);
      v176 = v321;
      v178 = *(v43 + 2);
      v177 = *(v43 + 3);
      if (v178 >= v177 >> 1)
      {
        v43 = sub_240FB6B4C((v177 > 1), v178 + 1, 1, v43);
      }

      *(v43 + 2) = v178 + 1;
      *&v43[16 * v178 + 32] = v176;
      *&v321 = 0;
      *(&v321 + 1) = 0xE000000000000000;
      sub_240FD46BC();
      v323 = v321;
      MEMORY[0x245CD64D0](0xD000000000000016, v291 | 0x8000000000000000);
      v179 = [v36 attributeSet];
      v180 = [v179 attributeForKey_];

      if (v180)
      {
        sub_240FD464C();
        swift_unknownObjectRelease();
        sub_240FBE508(&v320, &v321);
      }

      else
      {
        v322 = MEMORY[0x277D837D0];
        *&v321 = 0;
        *(&v321 + 1) = 0xE000000000000000;
      }

      sub_240FD475C();
      __swift_destroy_boxed_opaque_existential_0(&v321);
      MEMORY[0x245CD64D0](93, 0xE100000000000000);
      v181 = v323;
      v183 = *(v43 + 2);
      v182 = *(v43 + 3);
      if (v183 >= v182 >> 1)
      {
        v43 = sub_240FB6B4C((v182 > 1), v183 + 1, 1, v43);
      }

      *(v43 + 2) = v183 + 1;
      *&v43[16 * v183 + 32] = v181;
      *&v321 = 0;
      *(&v321 + 1) = 0xE000000000000000;
      sub_240FD46BC();
      v323 = v321;
      MEMORY[0x245CD64D0](0xD000000000000016, v290 | 0x8000000000000000);
      v184 = [v36 attributeSet];
      v185 = [v184 attributeForKey_];

      if (v185)
      {
        sub_240FD464C();
        swift_unknownObjectRelease();
        sub_240FBE508(&v320, &v321);
      }

      else
      {
        v322 = MEMORY[0x277D837D0];
        *&v321 = 0;
        *(&v321 + 1) = 0xE000000000000000;
      }

      sub_240FD475C();
      __swift_destroy_boxed_opaque_existential_0(&v321);
      MEMORY[0x245CD64D0](93, 0xE100000000000000);
      v186 = v323;
      v188 = *(v43 + 2);
      v187 = *(v43 + 3);
      if (v188 >= v187 >> 1)
      {
        v43 = sub_240FB6B4C((v187 > 1), v188 + 1, 1, v43);
      }

      *(v43 + 2) = v188 + 1;
      *&v43[16 * v188 + 32] = v186;
      *&v321 = 0;
      *(&v321 + 1) = 0xE000000000000000;
      sub_240FD46BC();
      v323 = v321;
      MEMORY[0x245CD64D0](0xD000000000000017, v289 | 0x8000000000000000);
      v189 = [v36 attributeSet];
      v190 = [v189 attributeForKey_];

      if (v190)
      {
        sub_240FD464C();
        swift_unknownObjectRelease();
        sub_240FBE508(&v320, &v321);
      }

      else
      {
        v322 = MEMORY[0x277D837D0];
        *&v321 = 0;
        *(&v321 + 1) = 0xE000000000000000;
      }

      sub_240FD475C();
      __swift_destroy_boxed_opaque_existential_0(&v321);
      MEMORY[0x245CD64D0](93, 0xE100000000000000);
      v191 = v323;
      v193 = *(v43 + 2);
      v192 = *(v43 + 3);
      if (v193 >= v192 >> 1)
      {
        v43 = sub_240FB6B4C((v192 > 1), v193 + 1, 1, v43);
      }

      *(v43 + 2) = v193 + 1;
      *&v43[16 * v193 + 32] = v191;
      *&v321 = 0;
      *(&v321 + 1) = 0xE000000000000000;
      sub_240FD46BC();
      v323 = v321;
      MEMORY[0x245CD64D0](0xD000000000000017, v288 | 0x8000000000000000);
      v194 = [v36 attributeSet];
      v195 = [v194 attributeForKey_];

      if (v195)
      {
        sub_240FD464C();
        swift_unknownObjectRelease();
        sub_240FBE508(&v320, &v321);
      }

      else
      {
        v322 = MEMORY[0x277D837D0];
        *&v321 = 0;
        *(&v321 + 1) = 0xE000000000000000;
      }

      sub_240FD475C();
      __swift_destroy_boxed_opaque_existential_0(&v321);
      MEMORY[0x245CD64D0](93, 0xE100000000000000);
      v196 = v323;
      v198 = *(v43 + 2);
      v197 = *(v43 + 3);
      if (v198 >= v197 >> 1)
      {
        v43 = sub_240FB6B4C((v197 > 1), v198 + 1, 1, v43);
      }

      *(v43 + 2) = v198 + 1;
      *&v43[16 * v198 + 32] = v196;
      *&v321 = 0;
      *(&v321 + 1) = 0xE000000000000000;
      sub_240FD46BC();
      v323 = v321;
      MEMORY[0x245CD64D0](0xD000000000000016, v287 | 0x8000000000000000);
      v199 = [v36 attributeSet];
      v200 = [v199 attributeForKey_];

      if (v200)
      {
        sub_240FD464C();
        swift_unknownObjectRelease();
        sub_240FBE508(&v320, &v321);
      }

      else
      {
        v322 = MEMORY[0x277D837D0];
        *&v321 = 0;
        *(&v321 + 1) = 0xE000000000000000;
      }

      sub_240FD475C();
      __swift_destroy_boxed_opaque_existential_0(&v321);
      MEMORY[0x245CD64D0](93, 0xE100000000000000);
      v201 = v323;
      v203 = *(v43 + 2);
      v202 = *(v43 + 3);
      if (v203 >= v202 >> 1)
      {
        v43 = sub_240FB6B4C((v202 > 1), v203 + 1, 1, v43);
      }

      *(v43 + 2) = v203 + 1;
      *&v43[16 * v203 + 32] = v201;
      *&v321 = 0xD000000000000012;
      *(&v321 + 1) = v286;
      v204 = [v36 attributeSet];
      v205 = [v204 accountHandles];

      if (v205)
      {
        v206 = MEMORY[0x277D837D0];
        v207 = sub_240FD453C();
      }

      else
      {
        v207 = MEMORY[0x277D84F90];
        v206 = MEMORY[0x277D837D0];
      }

      v208 = MEMORY[0x245CD6520](v207, v206);
      v210 = v209;

      MEMORY[0x245CD64D0](v208, v210);

      MEMORY[0x245CD64D0](93, 0xE100000000000000);
      v211 = v321;
      v213 = *(v43 + 2);
      v212 = *(v43 + 3);
      if (v213 >= v212 >> 1)
      {
        v43 = sub_240FB6B4C((v212 > 1), v213 + 1, 1, v43);
      }

      *(v43 + 2) = v213 + 1;
      *&v43[16 * v213 + 32] = v211;
      *&v321 = v313;
      *(&v321 + 1) = v285;
      v214 = [v36 attributeSet];
      v215 = [v214 phoneNumbers];

      if (v215)
      {
        v216 = MEMORY[0x277D837D0];
        v217 = sub_240FD453C();
      }

      else
      {
        v217 = MEMORY[0x277D84F90];
        v216 = MEMORY[0x277D837D0];
      }

      v218 = MEMORY[0x245CD6520](v217, v216);
      v220 = v219;

      MEMORY[0x245CD64D0](v218, v220);

      MEMORY[0x245CD64D0](93, 0xE100000000000000);
      v221 = v321;
      v223 = *(v43 + 2);
      v222 = *(v43 + 3);
      if (v223 >= v222 >> 1)
      {
        v43 = sub_240FB6B4C((v222 > 1), v223 + 1, 1, v43);
      }

      *(v43 + 2) = v223 + 1;
      *&v43[16 * v223 + 32] = v221;
      *&v321 = 0xD000000000000012;
      *(&v321 + 1) = v284;
      v224 = [v36 attributeSet];
      v225 = [v224 emailAddresses];

      if (v225)
      {
        v226 = MEMORY[0x277D837D0];
        v227 = sub_240FD453C();
      }

      else
      {
        v227 = MEMORY[0x277D84F90];
        v226 = MEMORY[0x277D837D0];
      }

      v228 = MEMORY[0x245CD6520](v227, v226);
      v230 = v229;

      MEMORY[0x245CD64D0](v228, v230);

      MEMORY[0x245CD64D0](93, 0xE100000000000000);
      v231 = v321;
      v233 = *(v43 + 2);
      v232 = *(v43 + 3);
      if (v233 >= v232 >> 1)
      {
        v43 = sub_240FB6B4C((v232 > 1), v233 + 1, 1, v43);
      }

      *(v43 + 2) = v233 + 1;
      *&v43[16 * v233 + 32] = v231;
      *&v321 = 0xD000000000000012;
      *(&v321 + 1) = v283;
      v234 = [v36 attributeSet];
      v235 = [v234 alternateNames];

      if (v235)
      {
        v236 = MEMORY[0x277D837D0];
        v237 = sub_240FD453C();
      }

      else
      {
        v237 = MEMORY[0x277D84F90];
        v236 = MEMORY[0x277D837D0];
      }

      v238 = MEMORY[0x245CD6520](v237, v236);
      v240 = v239;

      MEMORY[0x245CD64D0](v238, v240);

      MEMORY[0x245CD64D0](93, 0xE100000000000000);
      v241 = v321;
      v243 = *(v43 + 2);
      v242 = *(v43 + 3);
      if (v243 >= v242 >> 1)
      {
        v43 = sub_240FB6B4C((v242 > 1), v243 + 1, 1, v43);
      }

      *(v43 + 2) = v243 + 1;
      *&v43[16 * v243 + 32] = v241;
      *&v321 = 0;
      *(&v321 + 1) = 0xE000000000000000;
      sub_240FD46BC();
      v323 = v321;
      MEMORY[0x245CD64D0](0x7461642064657375, 0xED00005B203A7365);
      v244 = [v36 attributeSet];
      v245 = [v244 attributeForKey_];

      if (v245)
      {
        sub_240FD464C();
        swift_unknownObjectRelease();
        sub_240FBE508(&v320, &v321);
      }

      else
      {
        v322 = MEMORY[0x277D837D0];
        *&v321 = 0;
        *(&v321 + 1) = 0xE000000000000000;
      }

      sub_240FD475C();
      __swift_destroy_boxed_opaque_existential_0(&v321);
      MEMORY[0x245CD64D0](93, 0xE100000000000000);
      v246 = v323;
      v248 = *(v43 + 2);
      v247 = *(v43 + 3);
      if (v248 >= v247 >> 1)
      {
        v43 = sub_240FB6B4C((v247 > 1), v248 + 1, 1, v43);
      }

      *(v43 + 2) = v248 + 1;
      *&v43[16 * v248 + 32] = v246;
      strcpy(&v321, "bundleID: [");
      HIDWORD(v321) = -352321536;
      v249 = [v36 attributeSet];
      v250 = [v249 bundleID];

      if (v250)
      {
        v251 = sub_240FD449C();
        v253 = v252;
      }

      else
      {
        v251 = 0;
        v253 = 0xE000000000000000;
      }

      MEMORY[0x245CD64D0](v251, v253);

      MEMORY[0x245CD64D0](93, 0xE100000000000000);
      v254 = v321;
      v256 = *(v43 + 2);
      v255 = *(v43 + 3);
      if (v256 >= v255 >> 1)
      {
        v43 = sub_240FB6B4C((v255 > 1), v256 + 1, 1, v43);
      }

      *(v43 + 2) = v256 + 1;
      *&v43[16 * v256 + 32] = v254;
      strcpy(&v321, "contentType: [");
      HIBYTE(v321) = -18;
      v257 = [v36 attributeSet];
      v258 = [v257 contentType];

      if (v258)
      {
        v259 = sub_240FD449C();
        v261 = v260;
      }

      else
      {
        v259 = 0;
        v261 = 0xE000000000000000;
      }

      MEMORY[0x245CD64D0](v259, v261);

      MEMORY[0x245CD64D0](93, 0xE100000000000000);
      v262 = v321;
      v264 = *(v43 + 2);
      v263 = *(v43 + 3);
      if (v264 >= v263 >> 1)
      {
        v43 = sub_240FB6B4C((v263 > 1), v264 + 1, 1, v43);
      }

      *(v43 + 2) = v264 + 1;
      *&v43[16 * v264 + 32] = v262;
      *&v321 = v43;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51E640, &qword_240FD5730);
      sub_240FC5268();
      v265 = sub_240FD444C();
      v267 = v266;

      v268 = v301;
      swift_beginAccess();
      v269 = *(v268 + 16);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v268 + 16) = v269;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v269 = sub_240FB6B4C(0, *(v269 + 2) + 1, 1, v269);
        *(v268 + 16) = v269;
      }

      v272 = *(v269 + 2);
      v271 = *(v269 + 3);
      if (v272 >= v271 >> 1)
      {
        v269 = sub_240FB6B4C((v271 > 1), v272 + 1, 1, v269);
      }

      v34 = v134 + 1;
      *(v269 + 2) = v272 + 1;
      v273 = &v269[16 * v272];
      *(v273 + 4) = v265;
      *(v273 + 5) = v267;
      *(v268 + 16) = v269;
      swift_endAccess();

      result = v298;
      v31 = v300;
      v30 = v299;
    }

    while (v298 != v34);
  }

  return result;
}

uint64_t sub_240FCE42C(uint64_t a1, void (*a2)(uint64_t), uint64_t a3, uint64_t a4)
{
  swift_beginAccess();

  a2(v5);
}

id ArchetypeRawAssortment.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ArchetypeRawAssortment.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ArchetypeRawAssortment();
  return objc_msgSendSuper2(&v2, sel_init);
}

id ArchetypeRawAssortment.__deallocating_deinit(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for ArchetypeRawAssortment();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

void _s15ArchetypeEngine0A13RawAssortmentC19spotlightItemTitles01nG017completionHandlerySi_ySaySSGctF_0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = MEMORY[0x277D84F90];
  v7 = objc_allocWithZone(MEMORY[0x277CC3498]);
  v8 = sub_240FD448C();
  v9 = sub_240FD452C();
  v10 = [v7 initWithQueryString:v8 attributes:v9];

  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = v6;
  v19 = sub_240FCF3FC;
  v20 = v11;
  v15 = MEMORY[0x277D85DD0];
  v16 = 1107296256;
  v17 = sub_240FCB484;
  v18 = &block_descriptor_38;
  v12 = _Block_copy(&v15);

  [v10 setFoundItemsHandler_];
  _Block_release(v12);
  v13 = swift_allocObject();
  v13[2] = a2;
  v13[3] = a3;
  v13[4] = v6;
  v19 = sub_240FCF46C;
  v20 = v13;
  v15 = MEMORY[0x277D85DD0];
  v16 = 1107296256;
  v17 = sub_240FCB508;
  v18 = &block_descriptor_44;
  v14 = _Block_copy(&v15);

  [v10 setCompletionHandler_];
  _Block_release(v14);
  [v10 start];
}

void _s15ArchetypeEngine0A13RawAssortmentC24spotlightEmailAttributes7nEmails17completionHandlerySi_ySaySSGctF_0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51E5B8, &qword_240FD54B8);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_240FD5CA0;
  *(v7 + 32) = sub_240FD449C();
  *(v7 + 40) = v8;
  *(v7 + 48) = sub_240FD449C();
  *(v7 + 56) = v9;
  *(v7 + 64) = sub_240FD449C();
  *(v7 + 72) = v10;
  *(v7 + 80) = sub_240FD449C();
  *(v7 + 88) = v11;
  v12 = objc_allocWithZone(MEMORY[0x277CC3498]);
  v13 = sub_240FD448C();
  v14 = sub_240FD452C();

  v15 = [v12 initWithQueryString:v13 attributes:v14];

  v16 = swift_allocObject();
  *(v16 + 16) = a1;
  *(v16 + 24) = v6;
  v24 = sub_240FCF3F4;
  v25 = v16;
  v20 = MEMORY[0x277D85DD0];
  v21 = 1107296256;
  v22 = sub_240FCB484;
  v23 = &block_descriptor_25;
  v17 = _Block_copy(&v20);

  [v15 setFoundItemsHandler_];
  _Block_release(v17);
  v18 = swift_allocObject();
  v18[2] = a2;
  v18[3] = a3;
  v18[4] = v6;
  v24 = sub_240FCF46C;
  v25 = v18;
  v20 = MEMORY[0x277D85DD0];
  v21 = 1107296256;
  v22 = sub_240FCB508;
  v23 = &block_descriptor_31;
  v19 = _Block_copy(&v20);

  [v15 setCompletionHandler_];
  _Block_release(v19);
  [v15 start];
}

void _s15ArchetypeEngine0A13RawAssortmentC12textOnScreenSSyF_0()
{
  v0 = [objc_opt_self() primaryApp];
  if (!v0)
  {
    return;
  }

  v1 = v0;
  v2 = [v0 visibleElements];
  if (v2)
  {
    v3 = v2;
    sub_240FC06B8(0, &qword_27E51E8D8, 0x277CE6BA0);
    v4 = sub_240FD453C();

    if (!(v4 >> 62))
    {
      goto LABEL_4;
    }

LABEL_21:
    v5 = sub_240FD476C();
    v18 = v1;
    if (v5)
    {
      goto LABEL_5;
    }

LABEL_22:

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51E640, &qword_240FD5730);
    sub_240FC5268();
    sub_240FD444C();

    return;
  }

  v4 = MEMORY[0x277D84F90];
  if (MEMORY[0x277D84F90] >> 62)
  {
    goto LABEL_21;
  }

LABEL_4:
  v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v18 = v1;
  if (!v5)
  {
    goto LABEL_22;
  }

LABEL_5:
  if (v5 >= 1)
  {
    v6 = 0;
    v7 = MEMORY[0x277D84F90];
    do
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x245CD66B0](v6, v4);
      }

      else
      {
        v8 = *(v4 + 8 * v6 + 32);
      }

      v9 = v8;
      v10 = [v8 label];
      if (v10)
      {
        v11 = v10;
        v12 = sub_240FD449C();
        v14 = v13;
      }

      else
      {
        v12 = 0;
        v14 = 0xE000000000000000;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v7 = sub_240FB6B4C(0, *(v7 + 2) + 1, 1, v7);
      }

      v16 = *(v7 + 2);
      v15 = *(v7 + 3);
      if (v16 >= v15 >> 1)
      {
        v7 = sub_240FB6B4C((v15 > 1), v16 + 1, 1, v7);
      }

      ++v6;

      *(v7 + 2) = v16 + 1;
      v17 = &v7[16 * v16];
      *(v17 + 4) = v12;
      *(v17 + 5) = v14;
    }

    while (v5 != v6);
    goto LABEL_22;
  }

  __break(1u);
}

void _s15ArchetypeEngine0A13RawAssortmentC14spotlightItems11contentType17completionHandlerySS_ySaySSGctF_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  *(v8 + 16) = MEMORY[0x277D84F90];
  sub_240FD46BC();

  MEMORY[0x245CD64D0](a1, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51E5B8, &qword_240FD54B8);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_240FD5CB0;
  *(v9 + 32) = sub_240FD449C();
  *(v9 + 40) = v10;
  *(v9 + 48) = sub_240FD449C();
  *(v9 + 56) = v11;
  *(v9 + 64) = sub_240FD449C();
  *(v9 + 72) = v12;
  *(v9 + 80) = sub_240FD449C();
  *(v9 + 88) = v13;
  *(v9 + 96) = sub_240FD449C();
  *(v9 + 104) = v14;
  *(v9 + 112) = sub_240FD449C();
  *(v9 + 120) = v15;
  *(v9 + 128) = sub_240FD449C();
  *(v9 + 136) = v16;
  *(v9 + 144) = sub_240FD449C();
  *(v9 + 152) = v17;
  *(v9 + 160) = sub_240FD449C();
  *(v9 + 168) = v18;
  *(v9 + 176) = sub_240FD449C();
  *(v9 + 184) = v19;
  *(v9 + 192) = sub_240FD449C();
  *(v9 + 200) = v20;
  *(v9 + 208) = sub_240FD449C();
  *(v9 + 216) = v21;
  *(v9 + 224) = sub_240FD449C();
  *(v9 + 232) = v22;
  *(v9 + 240) = sub_240FD449C();
  *(v9 + 248) = v23;
  *(v9 + 256) = sub_240FD449C();
  *(v9 + 264) = v24;
  *(v9 + 272) = sub_240FD449C();
  *(v9 + 280) = v25;
  *(v9 + 288) = sub_240FD449C();
  *(v9 + 296) = v26;
  *(v9 + 304) = sub_240FD449C();
  *(v9 + 312) = v27;
  *(v9 + 320) = sub_240FD449C();
  *(v9 + 328) = v28;
  *(v9 + 336) = sub_240FD449C();
  *(v9 + 344) = v29;
  *(v9 + 352) = sub_240FD449C();
  *(v9 + 360) = v30;
  *(v9 + 368) = sub_240FD449C();
  *(v9 + 376) = v31;
  *(v9 + 384) = sub_240FD449C();
  *(v9 + 392) = v32;
  *(v9 + 400) = sub_240FD449C();
  *(v9 + 408) = v33;
  *(v9 + 416) = sub_240FD449C();
  *(v9 + 424) = v34;
  *(v9 + 432) = sub_240FD449C();
  *(v9 + 440) = v35;
  v36 = objc_allocWithZone(MEMORY[0x277CC3498]);
  v37 = sub_240FD448C();

  v38 = sub_240FD452C();

  v39 = [v36 initWithQueryString:v37 attributes:v38];

  v47 = sub_240FCF378;
  v48 = v8;
  v43 = MEMORY[0x277D85DD0];
  v44 = 1107296256;
  v45 = sub_240FCB484;
  v46 = &block_descriptor_2;
  v40 = _Block_copy(&v43);

  [v39 setFoundItemsHandler_];
  _Block_release(v40);
  v41 = swift_allocObject();
  v41[2] = a3;
  v41[3] = a4;
  v41[4] = v8;
  v47 = sub_240FCF39C;
  v48 = v41;
  v43 = MEMORY[0x277D85DD0];
  v44 = 1107296256;
  v45 = sub_240FCB508;
  v46 = &block_descriptor_18;
  v42 = _Block_copy(&v43);

  [v39 setCompletionHandler_];
  _Block_release(v42);
  [v39 start];
}

uint64_t sub_240FCF2A4()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

void sub_240FCF2E0(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = sub_240FD452C();
  (*(v2 + 16))(v2, v3);
}

uint64_t sub_240FCF340()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_240FCF3BC()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t objectdestroy_14Tm()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t ATSpotlightMailRetriever.__allocating_init()()
{
  v0 = swift_allocObject();
  ATSpotlightMailRetriever.init()();
  return v0;
}

uint64_t ATSpotlightMailRetriever.init()()
{
  v1 = v0;
  v2 = sub_240FD422C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = (v1 + OBJC_IVAR____TtC15ArchetypeEngine24ATSpotlightMailRetriever_bundleId);
  *v6 = 0xD000000000000014;
  v6[1] = 0x8000000240FD5E60;
  v7 = (v1 + OBJC_IVAR____TtC15ArchetypeEngine24ATSpotlightMailRetriever_mailUniqueRecordIdentifier);
  *v7 = sub_240FD449C();
  v7[1] = v8;
  v9 = (v1 + OBJC_IVAR____TtC15ArchetypeEngine24ATSpotlightMailRetriever_mailConversationId);
  *v9 = sub_240FD449C();
  v9[1] = v10;
  v11 = (v1 + OBJC_IVAR____TtC15ArchetypeEngine24ATSpotlightMailRetriever_mailReceivedDate);
  *v11 = sub_240FD449C();
  v11[1] = v12;
  *(v1 + OBJC_IVAR____TtC15ArchetypeEngine24ATSpotlightMailRetriever_longestChain) = 100;
  sub_240FD421C();
  sub_240FD41AC();
  (*(v3 + 8))(v5, v2);
  *(v1 + OBJC_IVAR____TtC15ArchetypeEngine24ATSpotlightDataRetriever_records) = MEMORY[0x277D84F90];
  return v1;
}

uint64_t ATSpotlightMailRetriever.getRecentRecordsAsync(nRecords:addendum:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[6] = a3;
  v4[7] = v3;
  v4[4] = a1;
  v4[5] = a2;
  return MEMORY[0x2822009F8](sub_240FCF680, 0, 0);
}

uint64_t sub_240FCF680()
{
  v1 = v0[6];
  sub_240FD46BC();
  v2 = sub_240FD449C();
  v4 = v3;

  MEMORY[0x245CD64D0](0x6E2E656D6974243ELL, 0xEF294D362D28776FLL);
  v6 = v2;
  v5 = v4;
  v0[2] = v6;
  v0[3] = v4;
  if (v1)
  {
    v7 = v0[6];
    v8 = HIBYTE(v7) & 0xF;
    if ((v7 & 0x2000000000000000) == 0)
    {
      v8 = v0[5] & 0xFFFFFFFFFFFFLL;
    }

    if (v8)
    {
      MEMORY[0x245CD64D0]();
      v9 = 539371040;
      v10 = 0xE400000000000000;
    }

    else
    {
      v9 = 0;
      v10 = 0xE000000000000000;
    }

    MEMORY[0x245CD64D0](v9, v10);

    v6 = v0[2];
    v5 = v0[3];
  }

  v0[8] = v5;
  v11 = (v0[7] + OBJC_IVAR____TtC15ArchetypeEngine24ATSpotlightMailRetriever_bundleId);
  v12 = *v11;
  v13 = v11[1];
  v14 = swift_task_alloc();
  v0[9] = v14;
  *v14 = v0;
  v14[1] = sub_240FCF820;
  v15 = v0[4];

  return ATSpotlightDataRetriever.getRecentRecordsAsync(bundleId:nRecords:addendum:)(v12, v13, v15, v6, v5);
}

uint64_t sub_240FCF820(uint64_t a1)
{
  *(*v1 + 80) = a1;

  return MEMORY[0x2822009F8](sub_240FCF940, 0, 0);
}

uint64_t ATSpotlightMailRetriever.getRecentRecords(nRecords:)(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51E7C0, &qword_240FD5988);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v14 - v5;
  v8 = *(v2 + OBJC_IVAR____TtC15ArchetypeEngine24ATSpotlightMailRetriever_bundleId);
  v7 = *(v2 + OBJC_IVAR____TtC15ArchetypeEngine24ATSpotlightMailRetriever_bundleId + 8);
  v9 = dispatch_semaphore_create(0);
  v10 = sub_240FD459C();
  (*(*(v10 - 8) + 56))(v6, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = v2;
  v11[5] = v8;
  v11[6] = v7;
  v11[7] = a1;
  v11[8] = v9;

  v12 = v9;
  sub_240FC285C(0, 0, v6, &unk_240FD5990, v11);

  sub_240FD45FC();
}

uint64_t sub_240FCFAC8()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t ATSpotlightMailRetriever.getEmailChain(uniqueIdentifier:)(uint64_t a1, uint64_t a2)
{
  v3[2] = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51E8E0, &qword_240FD5D00);
  v6 = swift_task_alloc();
  v3[3] = v6;
  v7 = swift_task_alloc();
  v3[4] = v7;
  *v7 = v3;
  v7[1] = sub_240FCFC04;

  return sub_240FD19A0(v6, a1, a2);
}

uint64_t sub_240FCFC04()
{
  v1 = *v0;
  v2 = *v0;

  v3 = swift_task_alloc();
  *(v1 + 40) = v3;
  *v3 = v2;
  v3[1] = sub_240FCFD5C;
  v4 = *(v1 + 24);

  return sub_240FD1270(v4);
}

uint64_t sub_240FCFD5C(uint64_t a1)
{
  *(*v1 + 48) = a1;

  return MEMORY[0x2822009F8](sub_240FCFE5C, 0, 0);
}

uint64_t sub_240FCFE5C()
{
  sub_240FBA1A8(v0[3], &qword_27E51E8E0, &qword_240FD5D00);

  v1 = v0[1];
  v2 = v0[6];

  return v1(v2);
}

uint64_t ATSpotlightMailRetriever.getPreviousEmailsInChain(uniqueIdentifier:)(uint64_t a1, uint64_t a2)
{
  v3[2] = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51E578, &qword_240FD51A0);
  v3[3] = swift_task_alloc();
  v3[4] = swift_task_alloc();
  v6 = sub_240FD422C();
  v3[5] = v6;
  v3[6] = *(v6 - 8);
  v3[7] = swift_task_alloc();
  v3[8] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51E8E0, &qword_240FD5D00);
  v3[9] = swift_task_alloc();
  v7 = swift_task_alloc();
  v3[10] = v7;
  v8 = swift_task_alloc();
  v3[11] = v8;
  *v8 = v3;
  v8[1] = sub_240FD0080;

  return sub_240FD19A0(v7, a1, a2);
}

uint64_t sub_240FD0080()
{
  v1 = *v0;
  v2 = *v0;

  v3 = swift_task_alloc();
  *(v1 + 96) = v3;
  *v3 = v2;
  v3[1] = sub_240FD01D8;
  v4 = *(v1 + 80);

  return sub_240FD1270(v4);
}

uint64_t sub_240FD01D8(uint64_t a1)
{
  *(*v1 + 104) = a1;

  return MEMORY[0x2822009F8](sub_240FD02D8, 0, 0);
}

uint64_t sub_240FD02D8()
{
  v1 = v0[13];
  if (*(v1 + 16))
  {
    v2 = v0[9];
    sub_240FB99A0(v0[10], v2, &qword_27E51E8E0, &qword_240FD5D00);
    v3 = type metadata accessor for ATSpotlightDataRecord(0);
    v27 = *(v3 - 8);
    result = (*(v27 + 48))(v2, 1, v3);
    if (result == 1)
    {
      goto LABEL_24;
    }

    v5 = v0[9];
    v7 = v0[5];
    v6 = v0[6];
    v8 = v0[4];
    sub_240FB99A0(v5 + *(v3 + 64), v8, &qword_27E51E578, &qword_240FD51A0);
    sub_240FC2D4C(v5);
    v26 = *(v6 + 48);
    result = v26(v8, 1, v7);
    if (result == 1)
    {
LABEL_25:
      __break(1u);
      return result;
    }

    v24 = *(v0[6] + 32);
    result = v24(v0[8], v0[4], v0[5]);
    v9 = *(v1 + 16);
    if (v9)
    {
      v10 = 0;
      v25 = v0[13] + ((*(v27 + 80) + 32) & ~*(v27 + 80));
      v11 = (v0[6] + 8);
      v12 = v3;
      do
      {
        if (v10 >= *(v1 + 16))
        {
          __break(1u);
          goto LABEL_23;
        }

        v13 = v0[5];
        v14 = v0[3];
        sub_240FB99A0(v25 + *(v27 + 72) * v10 + *(v12 + 64), v14, &qword_27E51E578, &qword_240FD51A0);
        if (v26(v14, 1, v13) == 1)
        {
          result = sub_240FBA1A8(v0[3], &qword_27E51E578, &qword_240FD51A0);
        }

        else
        {
          v15 = v0[7];
          v16 = v1;
          v17 = v0[5];
          v24(v15, v0[3], v17);
          v18 = sub_240FD41DC();
          v19 = v17;
          v1 = v16;
          v12 = v3;
          result = (*v11)(v15, v19);
          if (v18)
          {
            v20 = v9 - v10;
            if (v9 <= v10)
            {
              goto LABEL_16;
            }

LABEL_12:
            v21 = *(v1 + 16);
            if (v21 >= v9)
            {
              v1 = v0[13];
              if (v21 != v20)
              {
                sub_240FC8418(v0[13], v1 + ((*(v27 + 80) + 32) & ~*(v27 + 80)), v10, (2 * v9) | 1);
                v1 = v22;
                goto LABEL_17;
              }

              goto LABEL_18;
            }

LABEL_23:
            __break(1u);
LABEL_24:
            __break(1u);
            goto LABEL_25;
          }
        }

        ++v10;
      }

      while (v9 != v10);
    }

    v10 = 0;
    v20 = v9;
    if (v9)
    {
      goto LABEL_12;
    }

LABEL_16:
    v1 = MEMORY[0x277D84F90];
LABEL_17:

LABEL_18:
    (*(v0[6] + 8))(v0[8], v0[5]);
  }

  sub_240FBA1A8(v0[10], &qword_27E51E8E0, &qword_240FD5D00);

  v23 = v0[1];

  return v23(v1);
}

uint64_t ATSpotlightMailRetriever.getRecentEmailsSubsetMatch(fromAuthor:toRecipients:withAdditionalRecipients:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[7] = a4;
  v5[8] = v4;
  v5[5] = a2;
  v5[6] = a3;
  v5[4] = a1;
  v5[9] = *(type metadata accessor for ATSpotlightDataRecord(0) - 8);
  v5[10] = swift_task_alloc();
  v5[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_240FD0740, 0, 0);
}

uint64_t sub_240FD0740()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = HIBYTE(v1) & 0xF;
  if ((v1 & 0x2000000000000000) == 0)
  {
    v3 = v2 & 0xFFFFFFFFFFFFLL;
  }

  if (v3)
  {
    v4 = v0[6];
    v30 = sub_240FD449C();
    v31 = v5;

    MEMORY[0x245CD64D0](15677, 0xE200000000000000);

    MEMORY[0x245CD64D0](v2, v1);

    v0[2] = v30;
    v0[3] = v31;
    v6 = *(v4 + 16);
    if (v6)
    {
      v7 = (v0[6] + 40);
      do
      {
        v9 = *(v7 - 1);
        v8 = *v7;
        v10 = sub_240FD449C();
        v12 = v11;

        MEMORY[0x245CD64D0](v10, v12);

        MEMORY[0x245CD64D0](15677, 0xE200000000000000);

        MEMORY[0x245CD64D0](v9, v8);

        MEMORY[0x245CD64D0](539371040, 0xE400000000000000);

        v7 += 2;
        --v6;
      }

      while (v6);
    }

    v13 = v0[7];
    v14 = *(v13 + 16);
    if (v14)
    {
      v15 = (v13 + 40);
      do
      {
        v17 = *(v15 - 1);
        v16 = *v15;
        v18 = sub_240FD449C();
        v20 = v19;

        MEMORY[0x245CD64D0](v18, v20);

        MEMORY[0x245CD64D0](15677, 0xE200000000000000);

        MEMORY[0x245CD64D0](v17, v16);

        MEMORY[0x245CD64D0](539371040, 0xE400000000000000);

        v15 += 2;
        --v14;
      }

      while (v14);
    }

    v21 = (v0[8] + OBJC_IVAR____TtC15ArchetypeEngine24ATSpotlightMailRetriever_bundleId);
    v23 = *v21;
    v22 = v21[1];
    v24 = v0[2];
    v25 = v0[3];
    v0[12] = v25;
    v26 = swift_task_alloc();
    v0[13] = v26;
    *v26 = v0;
    v26[1] = sub_240FD0AB8;

    return ATSpotlightDataRetriever.getRecentRecordsAsync(bundleId:nRecords:addendum:)(v23, v22, 100, v24, v25);
  }

  else
  {

    v28 = v0[1];
    v29 = MEMORY[0x277D84F90];

    return v28(v29);
  }
}

uint64_t sub_240FD0AB8(uint64_t a1)
{
  *(*v1 + 112) = a1;

  return MEMORY[0x2822009F8](sub_240FD0BB8, 0, 0);
}

void sub_240FD0BB8()
{
  v1 = v0[14];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = 0;
    v4 = v0[11];
    v5 = v0[9];
    v6 = MEMORY[0x277D84F90];
    v16 = v0[14];
    while (v3 < *(v1 + 16))
    {
      v7 = (*(v5 + 80) + 32) & ~*(v5 + 80);
      v8 = *(v5 + 72);
      sub_240FBE4A4(v0[14] + v7 + v8 * v3, v0[11]);
      v9 = *(v4 + 32);
      v10 = *(v4 + 24) & 0xFFFFFFFFFFFFLL;
      if ((v9 & 0x2000000000000000) != 0)
      {
        v10 = HIBYTE(v9) & 0xF;
      }

      v11 = v0[11];
      if (v10)
      {
        sub_240FC7AB8(v11, v0[10]);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_240FB8810(0, *(v6 + 16) + 1, 1);
        }

        v13 = *(v6 + 16);
        v12 = *(v6 + 24);
        if (v13 >= v12 >> 1)
        {
          sub_240FB8810((v12 > 1), v13 + 1, 1);
        }

        v14 = v0[10];
        *(v6 + 16) = v13 + 1;
        sub_240FC7AB8(v14, v6 + v7 + v13 * v8);
        v1 = v16;
      }

      else
      {
        sub_240FC2D4C(v11);
      }

      if (v2 == ++v3)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
  }

  else
  {
    v6 = MEMORY[0x277D84F90];
LABEL_16:

    v15 = v0[1];

    v15(v6);
  }
}

uint64_t ATSpotlightMailRetriever.getRecentEmails(fromAuthor:toRecipients:withAdditionalRecipients:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  v9 = type metadata accessor for ATSpotlightDataRecord(0);
  v4[6] = v9;
  v4[7] = *(v9 - 8);
  v4[8] = swift_task_alloc();
  v4[9] = swift_task_alloc();
  v10 = swift_task_alloc();
  v4[10] = v10;
  *v10 = v4;
  v10[1] = sub_240FD0E9C;

  return ATSpotlightMailRetriever.getRecentEmailsSubsetMatch(fromAuthor:toRecipients:withAdditionalRecipients:)(a1, a2, a3, a4);
}

uint64_t sub_240FD0E9C(uint64_t a1)
{
  *(*v1 + 88) = a1;

  return MEMORY[0x2822009F8](sub_240FD0F9C, 0, 0);
}

void sub_240FD0F9C()
{
  v1 = v0[11];
  v28 = *(v1 + 16);
  if (v28)
  {
    v2 = 0;
    v4 = v0[6];
    v3 = v0[7];
    v25 = v0[5];
    v27 = v0[4];
    v5 = MEMORY[0x277D84F90];
    v26 = v0[11];
    while (v2 < *(v1 + 16))
    {
      v6 = v0[9];
      v7 = (*(v3 + 80) + 32) & ~*(v3 + 80);
      v8 = *(v3 + 72);
      sub_240FBE4A4(v0[11] + v7 + v8 * v2, v6);
      v9 = *(v6 + v4[11]);
      if (v9 && v9[2] == 1 && (v9[4] == v0[2] ? (v10 = v9[5] == v0[3]) : (v10 = 0), (v10 || (sub_240FD47FC() & 1) != 0) && (!*(v27 + 16) || (v11 = *(v0[9] + v4[12])) != 0 && (, v12 = , v13 = sub_240FD2EA8(v12), , v14 = sub_240FD2EA8(v11), , v15 = sub_240FD242C(v13, v14), , v1 = v26, , (v15 & 1) != 0)) && (!*(v25 + 16) || *(v0[9] + v4[13]) && (v16 = , v17 = sub_240FD2EA8(v16), , v18 = , v19 = sub_240FD2EA8(v18), , v20 = sub_240FD242C(v17, v19), , v1 = v26, , (v20 & 1) != 0))))
      {
        sub_240FC7AB8(v0[9], v0[8]);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_240FB8810(0, *(v5 + 16) + 1, 1);
        }

        v22 = *(v5 + 16);
        v21 = *(v5 + 24);
        if (v22 >= v21 >> 1)
        {
          sub_240FB8810((v21 > 1), v22 + 1, 1);
        }

        v23 = v0[8];
        *(v5 + 16) = v22 + 1;
        sub_240FC7AB8(v23, v5 + v7 + v22 * v8);
      }

      else
      {
        sub_240FC2D4C(v0[9]);
      }

      if (v28 == ++v2)
      {
        goto LABEL_26;
      }
    }

    __break(1u);
  }

  else
  {
    v5 = MEMORY[0x277D84F90];
LABEL_26:

    v24 = v0[1];

    v24(v5);
  }
}

uint64_t sub_240FD1270(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_240FD443C();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51E8E0, &qword_240FD5D00);
  v2[7] = swift_task_alloc();
  v4 = type metadata accessor for ATSpotlightDataRecord(0);
  v2[8] = v4;
  v2[9] = *(v4 - 8);
  v2[10] = swift_task_alloc();
  v2[11] = swift_task_alloc();
  v2[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_240FD13DC, 0, 0);
}

uint64_t sub_240FD13DC()
{
  v1 = v0[8];
  v2 = v0[9];
  v3 = v0[7];
  sub_240FB99A0(v0[2], v3, &qword_27E51E8E0, &qword_240FD5D00);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_240FBA1A8(v0[7], &qword_27E51E8E0, &qword_240FD5D00);
LABEL_8:
    sub_240FD442C();
    v14 = sub_240FD441C();
    v15 = sub_240FD45DC();
    v16 = os_log_type_enabled(v14, v15);
    v18 = v0[5];
    v17 = v0[6];
    v19 = v0[4];
    if (v16)
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_240FB1000, v14, v15, "No mail record found with given unique id or record does not have conversation id set - cannot build email chain", v20, 2u);
      MEMORY[0x245CD6DB0](v20, -1, -1);
    }

    (*(v18 + 8))(v17, v19);

    v21 = v0[1];
    v22 = MEMORY[0x277D84F90];

    return v21(v22);
  }

  v4 = v0[12];
  v5 = v0[8];
  sub_240FC7AB8(v0[7], v4);
  v6 = (v4 + *(v5 + 68));
  v7 = v6[1];
  if (!v7)
  {
    sub_240FC2D4C(v0[12]);
    goto LABEL_8;
  }

  v8 = v0[3];
  v9 = *v6;
  v23 = *(v8 + OBJC_IVAR____TtC15ArchetypeEngine24ATSpotlightMailRetriever_mailConversationId);
  v24 = *(v8 + OBJC_IVAR____TtC15ArchetypeEngine24ATSpotlightMailRetriever_mailConversationId + 8);

  MEMORY[0x245CD64D0](540884256, 0xE400000000000000);

  MEMORY[0x245CD64D0](v9, v7);

  v0[13] = v24;
  v10 = *(v8 + OBJC_IVAR____TtC15ArchetypeEngine24ATSpotlightMailRetriever_bundleId);
  v11 = *(v8 + OBJC_IVAR____TtC15ArchetypeEngine24ATSpotlightMailRetriever_bundleId + 8);
  v12 = swift_task_alloc();
  v0[14] = v12;
  *v12 = v0;
  v12[1] = sub_240FD16A8;

  return ATSpotlightDataRetriever.getRecentRecordsAsync(bundleId:nRecords:addendum:)(v10, v11, 100, v23, v24);
}

uint64_t sub_240FD16A8(uint64_t a1)
{
  *(*v1 + 120) = a1;

  return MEMORY[0x2822009F8](sub_240FD17C8, 0, 0);
}

void sub_240FD17C8()
{
  v1 = v0[15];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = 0;
    v4 = v0[11];
    v5 = v0[9];
    v6 = MEMORY[0x277D84F90];
    v17 = v0[15];
    while (v3 < *(v1 + 16))
    {
      v7 = (*(v5 + 80) + 32) & ~*(v5 + 80);
      v8 = *(v5 + 72);
      sub_240FBE4A4(v0[15] + v7 + v8 * v3, v0[11]);
      v9 = *(v4 + 32);
      v10 = *(v4 + 24) & 0xFFFFFFFFFFFFLL;
      if ((v9 & 0x2000000000000000) != 0)
      {
        v10 = HIBYTE(v9) & 0xF;
      }

      v11 = v0[11];
      if (v10)
      {
        sub_240FC7AB8(v11, v0[10]);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_240FB8810(0, *(v6 + 16) + 1, 1);
        }

        v13 = *(v6 + 16);
        v12 = *(v6 + 24);
        if (v13 >= v12 >> 1)
        {
          sub_240FB8810((v12 > 1), v13 + 1, 1);
        }

        v14 = v0[10];
        *(v6 + 16) = v13 + 1;
        sub_240FC7AB8(v14, v6 + v7 + v13 * v8);
        v1 = v17;
      }

      else
      {
        sub_240FC2D4C(v11);
      }

      if (v2 == ++v3)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
  }

  else
  {
    v6 = MEMORY[0x277D84F90];
LABEL_16:
    v15 = v0[12];

    sub_240FC2D4C(v15);

    v16 = v0[1];

    v16(v6);
  }
}

uint64_t sub_240FD19A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x2822009F8](sub_240FD19C4, 0, 0);
}

uint64_t sub_240FD19C4()
{
  v1 = v0[4];
  v2 = v0[5];
  v3 = v0[3];
  v8 = *(v2 + OBJC_IVAR____TtC15ArchetypeEngine24ATSpotlightMailRetriever_mailUniqueRecordIdentifier);
  v9 = *(v2 + OBJC_IVAR____TtC15ArchetypeEngine24ATSpotlightMailRetriever_mailUniqueRecordIdentifier + 8);

  MEMORY[0x245CD64D0](540884256, 0xE400000000000000);

  MEMORY[0x245CD64D0](v3, v1);

  v0[6] = v9;
  v4 = *(v2 + OBJC_IVAR____TtC15ArchetypeEngine24ATSpotlightMailRetriever_bundleId);
  v5 = *(v2 + OBJC_IVAR____TtC15ArchetypeEngine24ATSpotlightMailRetriever_bundleId + 8);
  v6 = swift_task_alloc();
  v0[7] = v6;
  *v6 = v0;
  v6[1] = sub_240FD1AF8;

  return ATSpotlightDataRetriever.getRecentRecordsAsync(bundleId:nRecords:addendum:)(v4, v5, 1, v8, v9);
}

uint64_t sub_240FD1AF8(uint64_t a1)
{
  *(*v1 + 64) = a1;

  return MEMORY[0x2822009F8](sub_240FD1C18, 0, 0);
}

uint64_t sub_240FD1C18()
{
  v1 = v0[8];
  if (*(v1 + 16))
  {
    v2 = v0[2];
    v3 = type metadata accessor for ATSpotlightDataRecord(0);
    v4 = *(v3 - 8);
    sub_240FBE4A4(v1 + ((*(v4 + 80) + 32) & ~*(v4 + 80)), v2);

    v5 = 0;
  }

  else
  {

    v3 = type metadata accessor for ATSpotlightDataRecord(0);
    v4 = *(v3 - 8);
    v5 = 1;
  }

  (*(v4 + 56))(v0[2], v5, 1, v3);
  v6 = v0[1];

  return v6();
}

void sub_240FD1D40(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_240FBE4A4(a1, a2);
  v4 = objc_allocWithZone(MEMORY[0x277CCAC68]);
  v5 = sub_240FD2304(0xD0000000000000BELL, 0x8000000240FD6B20, 0);
  if (v5)
  {
    v6 = *(a1 + 24);
    v7 = *(a1 + 32);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51E8F8, &qword_240FD5D88);
    sub_240FD2FEC();
    sub_240FD3050();
    v8 = sub_240FD462C();
    v10 = v9;
    v11 = sub_240FD448C();
    v12 = [v5 firstMatchInString:v11 options:0 range:{v8, v10}];

    if (v12)
    {
      [v12 range];
      sub_240FD44EC();
      v13 = sub_240FD451C();
      v14 = MEMORY[0x245CD64A0](v13);
      v16 = v15;

      *(a2 + 24) = v14;
      *(a2 + 32) = v16;
    }

    else
    {

      *(a2 + 24) = v6;
      *(a2 + 32) = v7;
    }

    v17 = (a2 + *(type metadata accessor for ATSpotlightDataRecord(0) + 76));
    v18 = v17[1];
    if (v18)
    {
      v19 = *v17;

      v20 = sub_240FD462C();
      v22 = v21;
      v23 = sub_240FD448C();
      v24 = [v5 firstMatchInString:v23 options:0 range:{v20, v22}];

      if (v24)
      {
        [v24 range];
        sub_240FD44EC();
        v25 = sub_240FD451C();
        v26 = MEMORY[0x245CD64A0](v25);
        v28 = v27;

        v29 = (a2 + *(type metadata accessor for ATSpotlightDataRecord(0) + 76));
        *v29 = v26;
        v29[1] = v28;
      }

      else
      {

        v30 = (a2 + *(type metadata accessor for ATSpotlightDataRecord(0) + 76));
        *v30 = v19;
        v30[1] = v18;
      }
    }

    else
    {
    }
  }
}

uint64_t sub_240FD20B8()
{
}

uint64_t ATSpotlightMailRetriever.deinit()
{
  v1 = OBJC_IVAR____TtC15ArchetypeEngine24ATSpotlightDataRetriever_oneYearBack;
  v2 = sub_240FD422C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t ATSpotlightMailRetriever.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC15ArchetypeEngine24ATSpotlightDataRetriever_oneYearBack;
  v2 = sub_240FD422C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v3, v4);
}

id sub_240FD2304(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10[1] = *MEMORY[0x277D85DE8];
  v5 = sub_240FD448C();

  v10[0] = 0;
  v6 = [v3 initWithPattern:v5 options:a3 error:v10];

  if (v6)
  {
    v7 = v10[0];
  }

  else
  {
    v8 = v10[0];
    sub_240FD418C();

    swift_willThrow();
  }

  return v6;
}

uint64_t sub_240FD23E0(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

uint64_t sub_240FD242C(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 56);
  v8 = (v5 + 63) >> 6;
  v9 = a2 + 56;
  v22 = result;
  while (v7)
  {
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_15:
    v13 = (*(result + 48) + 16 * (v10 | (v3 << 6)));
    v15 = *v13;
    v14 = v13[1];
    sub_240FD488C();

    sub_240FD44DC();
    v16 = sub_240FD48BC();
    v17 = -1 << *(a2 + 32);
    v18 = v16 & ~v17;
    if (((*(v9 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
    {
LABEL_23:

      return 0;
    }

    v19 = ~v17;
    while (1)
    {
      v20 = (*(a2 + 48) + 16 * v18);
      v21 = *v20 == v15 && v20[1] == v14;
      if (v21 || (sub_240FD47FC() & 1) != 0)
      {
        break;
      }

      v18 = (v18 + 1) & v19;
      if (((*(v9 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
      {
        goto LABEL_23;
      }
    }

    result = v22;
  }

  v11 = v3;
  while (1)
  {
    v3 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return 1;
    }

    v12 = *(v4 + 8 * v3);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v7 = (v12 - 1) & v12;
      goto LABEL_15;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_240FD25E4(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  sub_240FD488C();
  sub_240FD44DC();
  v8 = sub_240FD48BC();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (sub_240FD47FC() & 1) != 0)
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

    sub_240FD2994(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_240FD2734(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51E910, &unk_240FD5D90);
  result = sub_240FD469C();
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
      sub_240FD488C();
      sub_240FD44DC();
      result = sub_240FD48BC();
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

uint64_t sub_240FD2994(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_240FD2734(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_240FD2B14();
      goto LABEL_16;
    }

    sub_240FD2C70(v8 + 1);
  }

  v10 = *v4;
  sub_240FD488C();
  sub_240FD44DC();
  result = sub_240FD48BC();
  v11 = -1 << *(v10 + 32);
  a3 = result & ~v11;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v12 = ~v11;
    do
    {
      v13 = (*(v10 + 48) + 16 * a3);
      if (*v13 == v7 && v13[1] == a2)
      {
        goto LABEL_19;
      }

      result = sub_240FD47FC();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v12;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v15 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v16 = (*(v15 + 48) + 16 * a3);
  *v16 = v7;
  v16[1] = a2;
  v17 = *(v15 + 16);
  v18 = __OFADD__(v17, 1);
  v19 = v17 + 1;
  if (!v18)
  {
    *(v15 + 16) = v19;
    return result;
  }

  __break(1u);
LABEL_19:
  result = sub_240FD480C();
  __break(1u);
  return result;
}

void *sub_240FD2B14()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51E910, &unk_240FD5D90);
  v2 = *v0;
  v3 = sub_240FD468C();
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

  return result;
}

uint64_t sub_240FD2C70(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51E910, &unk_240FD5D90);
  result = sub_240FD469C();
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
      sub_240FD488C();

      sub_240FD44DC();
      result = sub_240FD48BC();
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

uint64_t sub_240FD2EA8(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x245CD6590](v2, MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_240FD25E4(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t type metadata accessor for ATSpotlightMailRetriever(uint64_t a1)
{
  result = qword_27E51E8E8;
  if (!qword_27E51E8E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_240FD2FEC()
{
  result = qword_27E51E900;
  if (!qword_27E51E900)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E51E8F8, &qword_240FD5D88);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E51E900);
  }

  return result;
}

unint64_t sub_240FD3050()
{
  result = qword_27E51E908;
  if (!qword_27E51E908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E51E908);
  }

  return result;
}

id ATAccessibility.systemAXApp.getter()
{
  v1 = OBJC_IVAR____TtC15ArchetypeEngine15ATAccessibility__cachedSystemWideElement;
  v2 = *(v0 + OBJC_IVAR____TtC15ArchetypeEngine15ATAccessibility__cachedSystemWideElement);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC15ArchetypeEngine15ATAccessibility__cachedSystemWideElement);
  }

  else
  {
    v4 = [objc_opt_self() systemWideElement];
    if (!v4)
    {
      sub_240FBA648();
      swift_allocError();
      *v10 = 0;
      *(v10 + 8) = 0;
      goto LABEL_8;
    }

    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v6 = v4;

    v3 = v6;
    v2 = 0;
  }

  v7 = v2;
  v8 = [v3 systemApplication];

  result = v8;
  if (v8)
  {
    return result;
  }

  sub_240FBA648();
  swift_allocError();
  *v10 = xmmword_240FD5DA0;
LABEL_8:
  *(v10 + 16) = 7;
  return swift_willThrow();
}

uint64_t ATAccessibility.currentAXApps.getter()
{
  v2 = ATAccessibility.systemAXApp.getter();
  if (!v1)
  {
    v3 = v2;
    v4 = [v2 currentApplications];

    if (!v4 || (v5 = sub_240FD453C(), v4, v0 = sub_240FD328C(v5), , !v0))
    {
      sub_240FBA648();
      v0 = swift_allocError();
      *v6 = xmmword_240FD5DB0;
      *(v6 + 16) = 7;
      swift_willThrow();
    }
  }

  return v0;
}

uint64_t sub_240FD328C(uint64_t a1)
{
  v6 = MEMORY[0x277D84F90];
  v2 = *(a1 + 16);
  sub_240FD471C();
  if (!v2)
  {
    return v6;
  }

  for (i = a1 + 32; ; i += 32)
  {
    sub_240FB9F6C(i, v5);
    sub_240FD40EC();
    if ((swift_dynamicCast() & 1) == 0)
    {
      break;
    }

    sub_240FD46FC();
    sub_240FD472C();
    sub_240FD473C();
    sub_240FD470C();
    if (!--v2)
    {
      return v6;
    }
  }

  return 0;
}

Swift::String __swiftcall ATAccessibility.onScreenText()()
{
  v2 = ATAccessibility.systemAXApp.getter();
  v3 = [v2 currentApplications];

  if (v3 && (v4 = sub_240FD453C(), v3, v5 = sub_240FD328C(v4), , v5))
  {
    v6 = v5;
    v105 = 0;
    v106 = 0xE000000000000000;
    v7 = v5 & 0xFFFFFFFFFFFFFF8;
    if (v5 >> 62)
    {
LABEL_102:
      v95 = v6;
      v8 = sub_240FD476C();
      v6 = v95;
      if (v8)
      {
        goto LABEL_7;
      }
    }

    else
    {
      v8 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v8)
      {
LABEL_7:
        v9 = 0;
        v97 = v6;
        v100 = v6 + 32;
        v101 = v6 & 0xC000000000000001;
        v98 = v8;
        v99 = v7;
        while (1)
        {
          if (v101)
          {
            v6 = MEMORY[0x245CD66B0](v9, v97);
          }

          else
          {
            if (v9 >= *(v7 + 16))
            {
              goto LABEL_97;
            }

            v6 = *(v100 + 8 * v9);
          }

          v13 = v6;
          v14 = __OFADD__(v9, 1);
          v15 = v9 + 1;
          if (v14)
          {
            __break(1u);
LABEL_97:
            __break(1u);
LABEL_98:
            __break(1u);
LABEL_99:
            __break(1u);
LABEL_100:
            __break(1u);
LABEL_101:
            __break(1u);
            goto LABEL_102;
          }

          v0 = [v6 label];
          if (!v0)
          {
            goto LABEL_106;
          }

          v16 = v0;
          v17 = sub_240FD449C();
          v19 = v18;

          strcpy(v104, "App label: ");
          HIDWORD(v104[1]) = -352321536;
          MEMORY[0x245CD64D0](v17, v19);

          MEMORY[0x245CD64D0](10, 0xE100000000000000);

          MEMORY[0x245CD64D0](v104[0], v104[1]);

          v0 = [v13 bundleId];
          if (!v0)
          {
LABEL_107:
            __break(1u);
            goto LABEL_108;
          }

          v20 = v0;
          v21 = sub_240FD449C();
          v23 = v22;

          strcpy(v104, "App bundleid: ");
          HIBYTE(v104[1]) = -18;
          MEMORY[0x245CD64D0](v21, v23);

          MEMORY[0x245CD64D0](10, 0xE100000000000000);

          MEMORY[0x245CD64D0](v104[0], v104[1]);

          v0 = [v13 processName];
          if (!v0)
          {
            __break(1u);
LABEL_106:
            __break(1u);
            goto LABEL_107;
          }

          v24 = v0;
          v25 = sub_240FD449C();
          v27 = v26;

          v104[0] = 0xD000000000000011;
          v104[1] = 0x8000000240FD6BE0;
          MEMORY[0x245CD64D0](v25, v27);

          MEMORY[0x245CD64D0](10, 0xE100000000000000);

          MEMORY[0x245CD64D0](0xD000000000000011, 0x8000000240FD6BE0);

          v6 = [v13 visibleElements];
          if (v6)
          {
            v28 = v6;
            sub_240FD40EC();
            v7 = sub_240FD453C();

            if (!(v7 >> 62))
            {
              goto LABEL_18;
            }
          }

          else
          {
            v7 = MEMORY[0x277D84F90];
            if (!(MEMORY[0x277D84F90] >> 62))
            {
LABEL_18:
              v29 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
              goto LABEL_19;
            }
          }

          v6 = sub_240FD476C();
          v29 = v6;
LABEL_19:
          v103 = v13;
          v102 = v15;
          if (v29)
          {
            if (v29 < 1)
            {
              goto LABEL_98;
            }

            v30 = 0;
            v31 = MEMORY[0x277D84F90];
            do
            {
              if ((v7 & 0xC000000000000001) != 0)
              {
                v32 = MEMORY[0x245CD66B0](v30, v7);
              }

              else
              {
                v32 = *(v7 + 8 * v30 + 32);
              }

              v33 = v32;
              v34 = [v32 label];
              if (v34)
              {
                v35 = v34;
                v36 = sub_240FD449C();
                v38 = v37;
              }

              else
              {
                v36 = 0;
                v38 = 0xE000000000000000;
              }

              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v31 = sub_240FB6B4C(0, *(v31 + 2) + 1, 1, v31);
              }

              v40 = *(v31 + 2);
              v39 = *(v31 + 3);
              if (v40 >= v39 >> 1)
              {
                v31 = sub_240FB6B4C((v39 > 1), v40 + 1, 1, v31);
              }

              ++v30;

              *(v31 + 2) = v40 + 1;
              v41 = &v31[16 * v40];
              *(v41 + 4) = v36;
              *(v41 + 5) = v38;
            }

            while (v29 != v30);
          }

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51E640, &qword_240FD5730);
          sub_240FC5268();
          v42 = sub_240FD444C();
          v44 = v43;

          v104[0] = 0xD000000000000013;
          v104[1] = 0x8000000240FD6C00;
          MEMORY[0x245CD64D0](v42, v44);

          MEMORY[0x245CD64D0](2570, 0xE200000000000000);

          MEMORY[0x245CD64D0](0xD000000000000013, 0x8000000240FD6C00);

          v6 = [v103 explorerElements];
          if (v6)
          {
            v45 = v6;
            sub_240FD40EC();
            v7 = sub_240FD453C();

            if (v7 >> 62)
            {
              goto LABEL_54;
            }
          }

          else
          {
            v7 = MEMORY[0x277D84F90];
            if (MEMORY[0x277D84F90] >> 62)
            {
LABEL_54:
              v6 = sub_240FD476C();
              v46 = v6;
              if (!v6)
              {
                goto LABEL_55;
              }

              goto LABEL_39;
            }
          }

          v46 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (!v46)
          {
            goto LABEL_55;
          }

LABEL_39:
          if (v46 < 1)
          {
            goto LABEL_99;
          }

          v47 = 0;
          v48 = MEMORY[0x277D84F90];
          do
          {
            if ((v7 & 0xC000000000000001) != 0)
            {
              v49 = MEMORY[0x245CD66B0](v47, v7);
            }

            else
            {
              v49 = *(v7 + 8 * v47 + 32);
            }

            v50 = v49;
            v51 = [v49 label];
            if (v51)
            {
              v52 = v51;
              v53 = sub_240FD449C();
              v55 = v54;
            }

            else
            {
              v53 = 0;
              v55 = 0xE000000000000000;
            }

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v48 = sub_240FB6B4C(0, *(v48 + 2) + 1, 1, v48);
            }

            v57 = *(v48 + 2);
            v56 = *(v48 + 3);
            if (v57 >= v56 >> 1)
            {
              v48 = sub_240FB6B4C((v56 > 1), v57 + 1, 1, v48);
            }

            ++v47;

            *(v48 + 2) = v57 + 1;
            v58 = &v48[16 * v57];
            *(v58 + 4) = v53;
            *(v58 + 5) = v55;
          }

          while (v46 != v47);
LABEL_55:

          v59 = sub_240FD444C();
          v61 = v60;

          v104[0] = 0xD00000000000001CLL;
          v104[1] = 0x8000000240FD6C20;
          MEMORY[0x245CD64D0](v59, v61);

          MEMORY[0x245CD64D0](2570, 0xE200000000000000);

          MEMORY[0x245CD64D0](0xD00000000000001CLL, 0x8000000240FD6C20);

          v6 = [v103 nativeFocusableElements];
          if (v6)
          {
            v62 = v6;
            sub_240FD40EC();
            v7 = sub_240FD453C();

            if (v7 >> 62)
            {
              goto LABEL_73;
            }
          }

          else
          {
            v7 = MEMORY[0x277D84F90];
            if (MEMORY[0x277D84F90] >> 62)
            {
LABEL_73:
              v6 = sub_240FD476C();
              v63 = v6;
              if (!v6)
              {
                goto LABEL_74;
              }

              goto LABEL_58;
            }
          }

          v63 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (!v63)
          {
            goto LABEL_74;
          }

LABEL_58:
          if (v63 < 1)
          {
            goto LABEL_100;
          }

          v64 = 0;
          v65 = MEMORY[0x277D84F90];
          do
          {
            if ((v7 & 0xC000000000000001) != 0)
            {
              v66 = MEMORY[0x245CD66B0](v64, v7);
            }

            else
            {
              v66 = *(v7 + 8 * v64 + 32);
            }

            v67 = v66;
            v68 = [v66 label];
            if (v68)
            {
              v69 = v68;
              v70 = sub_240FD449C();
              v72 = v71;
            }

            else
            {
              v70 = 0;
              v72 = 0xE000000000000000;
            }

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v65 = sub_240FB6B4C(0, *(v65 + 2) + 1, 1, v65);
            }

            v74 = *(v65 + 2);
            v73 = *(v65 + 3);
            if (v74 >= v73 >> 1)
            {
              v65 = sub_240FB6B4C((v73 > 1), v74 + 1, 1, v65);
            }

            ++v64;

            *(v65 + 2) = v74 + 1;
            v75 = &v65[16 * v74];
            *(v75 + 4) = v70;
            *(v75 + 5) = v72;
          }

          while (v63 != v64);
LABEL_74:

          v76 = sub_240FD444C();
          v78 = v77;

          v104[0] = 0xD00000000000001BLL;
          v104[1] = 0x8000000240FD6C40;
          MEMORY[0x245CD64D0](v76, v78);

          MEMORY[0x245CD64D0](2570, 0xE200000000000000);

          MEMORY[0x245CD64D0](0xD00000000000001BLL, 0x8000000240FD6C40);

          v6 = [v103 elementsWithSemanticContext];
          if (v6)
          {
            v79 = v6;
            sub_240FD40EC();
            v7 = sub_240FD453C();

            if (!(v7 >> 62))
            {
              goto LABEL_76;
            }
          }

          else
          {
            v7 = MEMORY[0x277D84F90];
            if (!(MEMORY[0x277D84F90] >> 62))
            {
LABEL_76:
              v80 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
              if (!v80)
              {
                goto LABEL_8;
              }

              goto LABEL_77;
            }
          }

          v6 = sub_240FD476C();
          v80 = v6;
          if (!v6)
          {
            goto LABEL_8;
          }

LABEL_77:
          if (v80 < 1)
          {
            goto LABEL_101;
          }

          v81 = 0;
          v82 = MEMORY[0x277D84F90];
          do
          {
            if ((v7 & 0xC000000000000001) != 0)
            {
              v83 = MEMORY[0x245CD66B0](v81, v7);
            }

            else
            {
              v83 = *(v7 + 8 * v81 + 32);
            }

            v84 = v83;
            v85 = [v83 label];
            if (v85)
            {
              v86 = v85;
              v87 = sub_240FD449C();
              v89 = v88;
            }

            else
            {
              v87 = 0;
              v89 = 0xE000000000000000;
            }

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v82 = sub_240FB6B4C(0, *(v82 + 2) + 1, 1, v82);
            }

            v91 = *(v82 + 2);
            v90 = *(v82 + 3);
            if (v91 >= v90 >> 1)
            {
              v82 = sub_240FB6B4C((v90 > 1), v91 + 1, 1, v82);
            }

            ++v81;

            *(v82 + 2) = v91 + 1;
            v92 = &v82[16 * v91];
            *(v92 + 4) = v87;
            *(v92 + 5) = v89;
          }

          while (v80 != v81);
LABEL_8:

          v10 = sub_240FD444C();
          v12 = v11;

          v104[0] = 0xD000000000000027;
          v104[1] = 0x8000000240FD6C60;
          MEMORY[0x245CD64D0](v10, v12);

          MEMORY[0x245CD64D0](2570, 0xE200000000000000);

          MEMORY[0x245CD64D0](0xD000000000000027, 0x8000000240FD6C60);

          v7 = v99;
          v9 = v102;
          if (v102 == v98)
          {
            v93 = v105;
            v94 = v106;
            goto LABEL_104;
          }
        }
      }
    }

    v93 = 0;
    v94 = 0xE000000000000000;
LABEL_104:

    v0 = v93;
    v1 = v94;
  }

  else
  {
    v0 = 0;
    v1 = 0xE000000000000000;
  }

LABEL_108:
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}

id ATAccessibility.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ATAccessibility.init()()
{
  *&v0[OBJC_IVAR____TtC15ArchetypeEngine15ATAccessibility__cachedSystemWideElement] = 0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ATAccessibility();
  return objc_msgSendSuper2(&v2, sel_init);
}

id ATAccessibility.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ATAccessibility();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_240FD40EC()
{
  result = qword_27E51E8D8;
  if (!qword_27E51E8D8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27E51E8D8);
  }

  return result;
}