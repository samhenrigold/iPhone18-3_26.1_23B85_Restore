uint64_t sub_243A65730(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98C50, &unk_243AC4CB0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_243A657A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98C50, &unk_243AC4CB0);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, a2, a3, v6);
}

uint64_t sub_243A65838(uint64_t a1)
{
  sub_243A2E7D8(319);
  v3 = v2;
  if (v4 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSingleCaseWithLayoutString();
    v3 = sub_243AC1528();
    if (v5 <= 0x3F)
    {
      swift_getTupleTypeLayout2();
      v3 = 0;
      *(*(a1 - 8) + 84) = v7;
    }
  }

  return v3;
}

char *sub_243A6590C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED99618, &qword_243AC6BC8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 88);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[88 * v8])
    {
      memmove(v12, v13, 88 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_243A65A34(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED99608, &qword_243AC6BB8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED99610, &qword_243AC6BC0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_243A65B7C@<X0>(uint64_t a1@<X8>)
{
  sub_243A65CBC(a1);
  if (sub_243AC22F8())
  {
  }

  else
  {
    sub_243A2E2B4(MEMORY[0x277D84F90]);
    sub_243AC2308();
  }

  v1 = sub_243AC22E8();
  v3 = MEMORY[0x277D837D0];
  if (*v2)
  {
    v9 = MEMORY[0x277D837D0];
    v7 = 0xD000000000000011;
    v8 = 0x8000000243ACD400;
    sub_243A887CC(&v7, 0x644965676170, 0xE600000000000000);
  }

  v1(v10, 0);
  v4 = sub_243AC22E8();
  if (*v5)
  {
    v9 = v3;
    v7 = 0x6C61646F4DLL;
    v8 = 0xE500000000000000;
    sub_243A887CC(&v7, 0x6570795465676170, 0xE800000000000000);
  }

  return v4(v10, 0);
}

uint64_t sub_243A65CBC@<X0>(uint64_t a1@<X8>)
{
  v57 = a1;
  v1 = sub_243AC24B8();
  MEMORY[0x28223BE20](v1 - 8);
  v56 = &v37 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_243AC2378();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_243AC22D8();
  MEMORY[0x28223BE20](v7 - 8);
  v59 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED99620, &qword_243AC6BD0);
  v9 = *(sub_243AC2328() - 8);
  v10 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v55 = *(v9 + 72);
  v61 = swift_allocObject();
  *(v61 + 16) = xmmword_243AC5F30;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ED9AC00, &qword_243AC6BD8);
  inited = swift_initStackObject();
  v63 = xmmword_243AC51B0;
  *(inited + 16) = xmmword_243AC51B0;
  *(inited + 32) = 0x707954746E657665;
  *(inited + 40) = 0xE900000000000065;
  sub_243AC2368();
  v12 = sub_243AC2358();
  v14 = v13;
  v52 = v4;
  v15 = *(v4 + 8);
  v62 = v3;
  v60 = v4 + 8;
  v54 = v15;
  v15(v6, v3);
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 48) = v12;
  *(inited + 56) = v14;
  sub_243A2E2B4(inited);
  swift_setDeallocating();
  sub_243A6653C(inited + 32);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED99628, &qword_243AC6BE0);
  v17 = sub_243AC26B8();
  v18 = *(v17 - 8);
  v19 = (*(v18 + 80) + 32) & ~*(v18 + 80);
  v20 = *(v18 + 72);
  v51 = *(v18 + 80);
  v53 = v16;
  v48 = v19 + 3 * v20;
  v21 = swift_allocObject();
  v47 = xmmword_243AC4AC0;
  *(v21 + 16) = xmmword_243AC4AC0;
  if (qword_27ED988F8 != -1)
  {
    swift_once();
  }

  v46 = "eHelper";
  v43 = v19;
  v58 = v61 + v10;
  v42 = __swift_project_value_buffer(v17, qword_27EDA1438);
  v49 = v18;
  v41 = *(v18 + 16);
  v38 = v17;
  v41(v21 + v19, v42, v17);
  v39 = v20;
  sub_243AC2698();
  v40 = 2 * v20;
  sub_243AC26A8();
  sub_243A665A4(v21);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  sub_243AC22C8();
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED99630, &qword_243AC6BE8);
  v44 = *(v52 + 72);
  v52 = *(v52 + 80);
  v22 = (v52 + 32) & ~v52;
  v23 = swift_allocObject();
  *(v23 + 16) = v63;
  sub_243AC2368();
  sub_243A668C4(v23);
  swift_setDeallocating();
  v24 = v62;
  v25 = v54;
  v54((v23 + v22), v62);
  swift_deallocClassInstance();
  sub_243AC2318();
  v26 = swift_initStackObject();
  *(v26 + 16) = v63;
  *(v26 + 32) = 0x707954746E657665;
  *(v26 + 40) = 0xE900000000000065;
  sub_243AC2348();
  v27 = sub_243AC2358();
  v29 = v28;
  v25(v6, v24);
  *(v26 + 72) = MEMORY[0x277D837D0];
  *(v26 + 48) = v27;
  *(v26 + 56) = v29;
  v50 = sub_243A2E2B4(v26);
  swift_setDeallocating();
  sub_243A6653C(v26 + 32);
  v30 = swift_allocObject();
  *(v30 + 16) = v47;
  v31 = v43;
  v32 = v38;
  v41(v30 + v43, v42, v38);
  sub_243AC2698();
  sub_243AC26A8();
  v33 = sub_243A665A4(v30);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v34 = swift_allocObject();
  *(v34 + 16) = v63;
  sub_243AC26A8();
  sub_243A66BE4(v34, v33);
  swift_setDeallocating();
  (*(v49 + 8))(v34 + v31, v32);
  swift_deallocClassInstance();
  sub_243AC22C8();
  v35 = swift_allocObject();
  *(v35 + 16) = v63;
  sub_243AC2348();
  sub_243A668C4(v35);
  swift_setDeallocating();
  v25((v35 + v22), v62);
  swift_deallocClassInstance();
  sub_243AC2318();
  sub_243AC24A8();
  sub_243A2E2B4(MEMORY[0x277D84F90]);
  return sub_243AC2338();
}

uint64_t sub_243A6653C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ED9AC10, &qword_243AC4E00);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_243A665A4(uint64_t a1)
{
  v2 = sub_243AC26B8();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v37 = &v30 - v7;
  v8 = *(a1 + 16);
  if (v8)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED99288, &unk_243AC6380);
    v9 = sub_243AC2CE8();
    v10 = 0;
    v12 = *(v3 + 16);
    v11 = v3 + 16;
    v35 = v12;
    v36 = v9 + 56;
    v13 = *(v11 + 64);
    v32 = v8;
    v33 = a1 + ((v13 + 32) & ~v13);
    v14 = *(v11 + 56);
    v15 = (v11 - 8);
    v31 = (v11 + 16);
    while (1)
    {
      v34 = v10;
      v35(v37, v33 + v14 * v10, v2);
      sub_243A66D44(&qword_27ED99278, MEMORY[0x277D22320], MEMORY[0x277D22328]);
      v16 = sub_243AC27F8();
      v17 = ~(-1 << *(v9 + 32));
      v18 = v16 & v17;
      v19 = (v16 & v17) >> 6;
      v20 = *(v36 + 8 * v19);
      v21 = 1 << (v16 & v17);
      if ((v21 & v20) != 0)
      {
        while (1)
        {
          v22 = v11;
          v35(v6, *(v9 + 48) + v18 * v14, v2);
          sub_243A66D44(&qword_27ED99280, MEMORY[0x277D22320], MEMORY[0x277D22330]);
          v23 = sub_243AC2808();
          v24 = *v15;
          (*v15)(v6, v2);
          if (v23)
          {
            break;
          }

          v18 = (v18 + 1) & v17;
          v19 = v18 >> 6;
          v20 = *(v36 + 8 * (v18 >> 6));
          v21 = 1 << v18;
          v11 = v22;
          if (((1 << v18) & v20) == 0)
          {
            goto LABEL_8;
          }
        }

        v24(v37, v2);
        v11 = v22;
      }

      else
      {
LABEL_8:
        v25 = v37;
        *(v36 + 8 * v19) = v21 | v20;
        result = (*v31)(*(v9 + 48) + v18 * v14, v25, v2);
        v27 = *(v9 + 16);
        v28 = __OFADD__(v27, 1);
        v29 = v27 + 1;
        if (v28)
        {
          __break(1u);
          return result;
        }

        *(v9 + 16) = v29;
      }

      v10 = v34 + 1;
      if (v34 + 1 == v32)
      {
        return v9;
      }
    }
  }

  return MEMORY[0x277D84FA0];
}

uint64_t sub_243A668C4(uint64_t a1)
{
  v2 = sub_243AC2378();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v37 = &v30 - v7;
  v8 = *(a1 + 16);
  if (v8)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED99638, &unk_243AC6BF0);
    v9 = sub_243AC2CE8();
    v10 = 0;
    v12 = *(v3 + 16);
    v11 = v3 + 16;
    v35 = v12;
    v36 = v9 + 56;
    v13 = *(v11 + 64);
    v32 = v8;
    v33 = a1 + ((v13 + 32) & ~v13);
    v14 = *(v11 + 56);
    v15 = (v11 - 8);
    v31 = (v11 + 16);
    while (1)
    {
      v34 = v10;
      v35(v37, v33 + v14 * v10, v2);
      sub_243A66D44(&qword_27ED99640, MEMORY[0x277D21BE0], MEMORY[0x277D21BE8]);
      v16 = sub_243AC27F8();
      v17 = ~(-1 << *(v9 + 32));
      v18 = v16 & v17;
      v19 = (v16 & v17) >> 6;
      v20 = *(v36 + 8 * v19);
      v21 = 1 << (v16 & v17);
      if ((v21 & v20) != 0)
      {
        while (1)
        {
          v22 = v11;
          v35(v6, *(v9 + 48) + v18 * v14, v2);
          sub_243A66D44(&qword_27ED99648, MEMORY[0x277D21BE0], MEMORY[0x277D21BF0]);
          v23 = sub_243AC2808();
          v24 = *v15;
          (*v15)(v6, v2);
          if (v23)
          {
            break;
          }

          v18 = (v18 + 1) & v17;
          v19 = v18 >> 6;
          v20 = *(v36 + 8 * (v18 >> 6));
          v21 = 1 << v18;
          v11 = v22;
          if (((1 << v18) & v20) == 0)
          {
            goto LABEL_8;
          }
        }

        v24(v37, v2);
        v11 = v22;
      }

      else
      {
LABEL_8:
        v25 = v37;
        *(v36 + 8 * v19) = v21 | v20;
        result = (*v31)(*(v9 + 48) + v18 * v14, v25, v2);
        v27 = *(v9 + 16);
        v28 = __OFADD__(v27, 1);
        v29 = v27 + 1;
        if (v28)
        {
          __break(1u);
          return result;
        }

        *(v9 + 16) = v29;
      }

      v10 = v34 + 1;
      if (v34 + 1 == v32)
      {
        return v9;
      }
    }
  }

  return MEMORY[0x277D84FA0];
}

uint64_t sub_243A66BE4(uint64_t a1, uint64_t a2)
{
  v4 = sub_243AC26B8();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v18 - v9;
  v19 = a2;
  v11 = *(a1 + 16);
  if (v11)
  {
    v14 = *(v5 + 16);
    v12 = v5 + 16;
    v13 = v14;
    v15 = a1 + ((*(v12 + 64) + 32) & ~*(v12 + 64));
    v16 = *(v12 + 56);
    do
    {
      v13(v8, v15, v4);
      sub_243A58784(v10, v8);
      (*(v12 - 8))(v10, v4);
      v15 += v16;
      --v11;
    }

    while (v11);
    return v19;
  }

  return a2;
}

uint64_t sub_243A66D44(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t get_enum_tag_for_layout_string_9JetEngine11ActionModel_pSg(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
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

uint64_t sub_243A66DC8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 128))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_243A66E10(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 120) = 0;
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
      *(result + 128) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 128) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_243A66E9C@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_243AC24B8();
  MEMORY[0x28223BE20](v2 - 8);
  v3 = sub_243AC24D8();
  MEMORY[0x28223BE20](v3 - 8);

  sub_243AC24C8();

  sub_243AC24A8();
  v4 = MEMORY[0x277D84F90];
  sub_243A2E2B4(MEMORY[0x277D84F90]);
  sub_243A2E2B4(v4);
  sub_243AC24E8();
  v5 = sub_243AC24F8();
  return (*(*(v5 - 8) + 56))(a1, 0, 1, v5);
}

unint64_t sub_243A67030()
{
  result = qword_27ED99650;
  if (!qword_27ED99650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED99650);
  }

  return result;
}

uint64_t sub_243A67084(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED99658, &qword_243AC6D08);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_243A670F4@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_243AC24B8();
  MEMORY[0x28223BE20](v2 - 8);
  v3 = sub_243AC24D8();
  MEMORY[0x28223BE20](v3 - 8);

  sub_243AC24C8();
  v4 = MEMORY[0x277D84F90];
  sub_243A2E2B4(MEMORY[0x277D84F90]);
  sub_243AC24A8();
  sub_243A2E2B4(v4);
  sub_243A2E2B4(v4);
  sub_243AC24E8();
  v5 = sub_243AC24F8();
  return (*(*(v5 - 8) + 56))(a1, 0, 1, v5);
}

uint64_t sub_243A67264@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_243AC24B8();
  MEMORY[0x28223BE20](v2 - 8);
  v3 = sub_243AC24D8();
  MEMORY[0x28223BE20](v3 - 8);
  sub_243AC24C8();
  v4 = MEMORY[0x277D84F90];
  sub_243A2E2B4(MEMORY[0x277D84F90]);
  sub_243AC24A8();
  sub_243A2E2B4(v4);
  sub_243A2E2B4(v4);
  sub_243AC24E8();
  v5 = sub_243AC24F8();
  return (*(*(v5 - 8) + 56))(a1, 0, 1, v5);
}

uint64_t sub_243A673D4@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_243AC24B8();
  MEMORY[0x28223BE20](v2 - 8);
  v3 = sub_243AC24D8();
  MEMORY[0x28223BE20](v3 - 8);

  sub_243AC24C8();
  v4 = MEMORY[0x277D84F90];
  sub_243A2E2B4(MEMORY[0x277D84F90]);
  sub_243AC24A8();
  sub_243A2E2B4(v4);
  sub_243A2E2B4(v4);
  sub_243AC24E8();
  v5 = sub_243AC24F8();
  return (*(*(v5 - 8) + 56))(a1, 0, 1, v5);
}

uint64_t sub_243A67558(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ED995A0, qword_243AC6D10);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_243A67634(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ED995A0, qword_243AC6D10);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t type metadata accessor for MetricsModifier(uint64_t a1)
{
  result = qword_27ED99660;
  if (!qword_27ED99660)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_243A67744(uint64_t a1)
{
  sub_243A677C8(319);
  if (v1 <= 0x3F)
  {
    sub_243A67820(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_243A677C8(uint64_t a1)
{
  if (!qword_27ED99670)
  {
    sub_243AC2438();
    v1 = sub_243AC2C38();
    if (!v2)
    {
      atomic_store(v1, &qword_27ED99670);
    }
  }
}

void sub_243A67820(uint64_t a1)
{
  if (!qword_27ED99678)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED99680, &qword_243AC6D48);
    v1 = sub_243AC2098();
    if (!v2)
    {
      atomic_store(v1, &qword_27ED99678);
    }
  }
}

uint64_t sub_243A678A0@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v102 = a1;
  v105 = a2;
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED99688, &qword_243AC6DA0);
  MEMORY[0x28223BE20](v103);
  v5 = &v75 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED99690, &qword_243AC6DA8);
  MEMORY[0x28223BE20](v6 - 8);
  v101 = &v75 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED99698, &unk_243AC6DB0);
  MEMORY[0x28223BE20](v8 - 8);
  v100 = &v75 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED996A0, &unk_243AC95E0);
  MEMORY[0x28223BE20](v10 - 8);
  v99 = &v75 - v11;
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED996A8, &qword_243AC6DC0);
  v88 = *(v89 - 8);
  MEMORY[0x28223BE20](v89);
  v13 = &v75 - v12;
  v90 = sub_243AC2588();
  v87 = *(v90 - 8);
  v14 = MEMORY[0x28223BE20](v90);
  v85 = &v75 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v17 = &v75 - v16;
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED996B0, &qword_243AC6DC8);
  v86 = *(v104 - 8);
  MEMORY[0x28223BE20](v104);
  v19 = &v75 - v18;
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED996B8, &qword_243AC6DD0);
  v92 = *(v106 - 8);
  MEMORY[0x28223BE20](v106);
  v91 = &v75 - v20;
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED996C0, &qword_243AC6DD8);
  v95 = *(v107 - 8);
  MEMORY[0x28223BE20](v107);
  v93 = &v75 - v21;
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED996C8, &qword_243AC6DE0);
  v96 = *(v108 - 8);
  MEMORY[0x28223BE20](v108);
  v94 = &v75 - v22;
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED996D0, &qword_243AC6DE8);
  v98 = *(v109 - 8);
  MEMORY[0x28223BE20](v109);
  v97 = &v75 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ED995A0, qword_243AC6D10);
  MEMORY[0x28223BE20](v24 - 8);
  v26 = &v75 - v25;
  v27 = sub_243AC2438();
  v28 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v30 = &v75 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = v3;
  sub_243A63E08(v3, v26);
  if ((*(v28 + 48))(v26, 1, v27) == 1)
  {
    sub_243A2251C(v26, &unk_27ED995A0, qword_243AC6D10);
    v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED996D8, &qword_243AC6DF0);
    (*(*(v32 - 8) + 16))(v5, v102, v32);
    swift_storeEnumTagMultiPayload();
    v33 = sub_243A68654();
    *&v111 = v32;
    *(&v111 + 1) = v33;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    *&v111 = v104;
    *(&v111 + 1) = OpaqueTypeConformance2;
    v35 = swift_getOpaqueTypeConformance2();
    *&v111 = v106;
    *(&v111 + 1) = v35;
    v36 = swift_getOpaqueTypeConformance2();
    *&v111 = v107;
    *(&v111 + 1) = v36;
    v37 = swift_getOpaqueTypeConformance2();
    *&v111 = v108;
    *(&v111 + 1) = v37;
    swift_getOpaqueTypeConformance2();
    return sub_243AC1AE8();
  }

  else
  {
    v84 = v28;
    v39 = *(v28 + 32);
    v80 = v30;
    v83 = v27;
    v39(v30, v26, v27);
    v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED996D8, &qword_243AC6DF0);
    v41 = sub_243A68654();
    v42 = v19;
    v43 = v86;
    v81 = v40;
    v44 = v41;
    v82 = v41;
    sub_243AC1DF8();
    v45 = v85;
    sub_243AC2578();
    v46 = (v31 + *(type metadata accessor for MetricsModifier(0) + 20));
    v79 = *v46;
    v102 = v5;
    v48 = v46[1];
    v47 = v46[2];
    v78 = v48;
    v77 = v47;
    *&v111 = v79;
    *(&v111 + 1) = v48;
    v112 = v47;
    v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED996E8, &qword_243AC6DF8);
    sub_243AC2068();
    v75 = v110;
    v111 = v110;
    sub_243AC2568();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED99680, &qword_243AC6D48);
    sub_243AC2558();
    (*(v88 + 8))(v13, v89);
    swift_unknownObjectRelease();
    v49 = *(v87 + 8);
    v50 = v45;
    v51 = v90;
    v49(v50, v90);
    *&v111 = v40;
    *(&v111 + 1) = v44;
    v52 = swift_getOpaqueTypeConformance2();
    v53 = v91;
    v54 = v104;
    sub_243AC1DE8();
    v49(v17, v51);
    (*(v43 + 8))(v42, v54);
    v55 = v99;
    sub_243A65B7C(v99);
    v56 = sub_243AC2388();
    (*(*(v56 - 8) + 56))(v55, 0, 1, v56);
    *&v111 = v79;
    *(&v111 + 1) = v78;
    v112 = v77;
    sub_243AC2068();
    v57 = sub_243AC1398();
    v58 = v100;
    (*(*(v57 - 8) + 56))(v100, 1, 1, v57);
    *&v111 = v54;
    *(&v111 + 1) = v52;
    v59 = swift_getOpaqueTypeConformance2();
    v60 = v93;
    v61 = v80;
    v62 = v106;
    sub_243AC1DA8();
    swift_unknownObjectRelease();
    sub_243A2251C(v58, &qword_27ED99698, &unk_243AC6DB0);
    sub_243A2251C(v55, &qword_27ED996A0, &unk_243AC95E0);
    (*(v92 + 8))(v53, v62);
    v63 = *MEMORY[0x277D7EB50];
    v64 = sub_243AC1388();
    v65 = *(v64 - 8);
    v66 = v101;
    (*(v65 + 104))(v101, v63, v64);
    (*(v65 + 56))(v66, 0, 1, v64);
    *&v111 = v62;
    *(&v111 + 1) = v59;
    v67 = swift_getOpaqueTypeConformance2();
    v68 = v94;
    v69 = v107;
    sub_243AC1DB8();
    sub_243A2251C(v66, &qword_27ED99690, &qword_243AC6DA8);
    (*(v95 + 8))(v60, v69);
    *&v111 = v69;
    *(&v111 + 1) = v67;
    v70 = swift_getOpaqueTypeConformance2();
    v71 = v97;
    v72 = v108;
    sub_243AC1D98();
    (*(v96 + 8))(v68, v72);
    v73 = v98;
    v74 = v109;
    (*(v98 + 16))(v102, v71, v109);
    swift_storeEnumTagMultiPayload();
    *&v111 = v72;
    *(&v111 + 1) = v70;
    swift_getOpaqueTypeConformance2();
    sub_243AC1AE8();
    (*(v73 + 8))(v71, v74);
    return (*(v84 + 8))(v61, v83);
  }
}

unint64_t sub_243A68654()
{
  result = qword_27ED996E0;
  if (!qword_27ED996E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED996D8, &qword_243AC6DF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED996E0);
  }

  return result;
}

unint64_t sub_243A686BC()
{
  result = qword_27ED996F0;
  if (!qword_27ED996F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED996F8, qword_243AC6E00);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED996C8, &qword_243AC6DE0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED996C0, &qword_243AC6DD8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED996B8, &qword_243AC6DD0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED996B0, &qword_243AC6DC8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED996D8, &qword_243AC6DF0);
    sub_243A68654();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED996F0);
  }

  return result;
}

uint64_t sub_243A688AC(uint64_t (*a1)(void))
{
  a1();

  return _swift_stdlib_bridgeErrorToNSError();
}

void sub_243A6890C(void **a1, void **a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = (a4)(a1, a2, a3);
  v7 = *a1;
  *v7 = v6;
  *a1 = v7 + 1;
  v8 = *a2;
  if (*a2)
  {
    *v8 = v6;
    *a2 = v8 + 1;
  }

  else
  {
  }
}

uint64_t sub_243A689A0()
{
  v1 = v0;
  v2 = v0 + 16;
  v3 = v0 + 80;
  v4 = *(v1 + 168);
  v5 = [objc_allocWithZone(MEMORY[0x277D08280]) init];
  v6 = v5;
  *(v1 + 152) = v5;
  if (v4)
  {
    v7 = 2;
  }

  else
  {
    v7 = 1;
  }

  [v5 setCachePolicy_];
  *(v1 + 16) = v1;
  *(v1 + 56) = v1 + 144;
  *(v1 + 24) = sub_243A68AFC;
  v8 = swift_continuation_init();
  *(v1 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED99700, &unk_243AC6E50);
  *(v1 + 80) = MEMORY[0x277D85DD0];
  *(v1 + 88) = 1107296256;
  *(v1 + 96) = sub_243A2A88C;
  *(v1 + 104) = &block_descriptor_4;
  *(v1 + 112) = v8;
  [v6 startRequestWithCompletionHandler_];

  return MEMORY[0x282200938](v2);
}

uint64_t sub_243A68AFC()
{
  v1 = *(*v0 + 48);
  *(*v0 + 160) = v1;
  if (v1)
  {
    v2 = sub_243A68DD8;
  }

  else
  {
    v2 = sub_243A68C0C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_243A68C0C()
{
  v1 = *(v0 + 144);
  if (qword_27ED98920 != -1)
  {
    swift_once();
  }

  v2 = sub_243AC1468();
  __swift_project_value_buffer(v2, qword_27EDA14D8);
  v3 = v1;
  v4 = sub_243AC1448();
  v5 = sub_243AC2B78();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 134217984;
    v7 = [v3 members];
    sub_243A69008();
    v8 = sub_243AC2998();

    if (v8 >> 62)
    {
      v9 = sub_243AC2DF8();
    }

    else
    {
      v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v6 + 4) = v9;
    _os_log_impl(&dword_243A1B000, v4, v5, "User has a family circle with %ld members.", v6, 0xCu);
    MEMORY[0x245D47D20](v6, -1, -1);
    v10 = *(v0 + 152);
  }

  else
  {

    v4 = v3;
    v10 = v3;
  }

  v11 = *(v0 + 8);

  return v11(v3);
}

uint64_t sub_243A68DD8(uint64_t a1)
{
  swift_willThrow();
  if (qword_27ED98920 != -1)
  {
    swift_once();
  }

  v2 = v1[20];
  v3 = sub_243AC1468();
  __swift_project_value_buffer(v3, qword_27EDA14D8);
  v4 = v2;
  v5 = sub_243AC1448();
  v6 = sub_243AC2B58();

  v7 = os_log_type_enabled(v5, v6);
  v9 = v1[19];
  v8 = v1[20];
  if (v7)
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138412290;
    v12 = v8;
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 4) = v13;
    *v11 = v13;
    _os_log_impl(&dword_243A1B000, v5, v6, "Unable to fetch family circle %@", v10, 0xCu);
    sub_243A68FA0(v11);
    MEMORY[0x245D47D20](v11, -1, -1);
    MEMORY[0x245D47D20](v10, -1, -1);
  }

  else
  {
  }

  v14 = v1[1];

  return v14(0);
}

uint64_t sub_243A68FA0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98BF8, &unk_243AC6150);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_243A69008()
{
  result = qword_27ED98C18;
  if (!qword_27ED98C18)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27ED98C18);
  }

  return result;
}

uint64_t sub_243A69054()
{
  v0 = sub_243AC1298();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_243AC1288();
  v4 = sub_243AC1278();
  v6 = v5;
  result = (*(v1 + 8))(v3, v0);
  qword_27EDA1428 = v4;
  unk_27EDA1430 = v6;
  return result;
}

uint64_t sub_243A6914C(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_243A1FEA8;

  return (sub_243A6996C)(a1, a2);
}

uint64_t sub_243A69200@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277D22348];
  v3 = sub_243AC26C8();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_243A692F4(uint64_t a1, uint64_t (*a2)(void), uint64_t *a3, uint64_t (*a4)(uint64_t, unint64_t))
{
  v6 = a2(0);
  __swift_allocate_value_buffer(v6, a3);
  __swift_project_value_buffer(v6, a3);
  return a4(0x655364756F6C4369, 0xEE0073676E697474);
}

uint64_t sub_243A69374()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = [v0 bundleIdentifier];

  if (v1)
  {
    sub_243AC2858();

    sub_243AC2888();
  }

  has_internal_ui = os_variant_has_internal_ui();
  swift_unknownObjectRelease();
  if (has_internal_ui)
  {
    return 0x6C616E7265746E69;
  }

  else
  {
    return 0x72656D6F74737563;
  }
}

uint64_t sub_243A6946C()
{
  *(v0 + 16) = sub_243A69374();
  v1 = MEMORY[0x277D837D0];
  *(v0 + 40) = MEMORY[0x277D837D0];
  *(v0 + 24) = v2;
  sub_243A21C48((v0 + 16), (v0 + 48));
  v3 = MEMORY[0x277D84F98];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_243A8B544((v0 + 48), 0x7542746E65696C63, 0xEF65707954646C69, isUniquelyReferenced_nonNull_native);
  if (qword_27ED988F0 != -1)
  {
    swift_once();
  }

  v5 = qword_27EDA1428;
  v6 = unk_27EDA1430;
  *(v0 + 104) = v1;
  *(v0 + 80) = v5;
  *(v0 + 88) = v6;
  sub_243A21C48((v0 + 80), (v0 + 112));

  v7 = swift_isUniquelyReferenced_nonNull_native();
  sub_243A8B544((v0 + 112), 0x496E6F6973736573, 0xE900000000000064, v7);
  *(v0 + 168) = MEMORY[0x277D839B0];
  *(v0 + 144) = 1;
  sub_243A21C48((v0 + 144), (v0 + 176));
  v8 = swift_isUniquelyReferenced_nonNull_native();
  sub_243A8B544((v0 + 176), 0xD000000000000017, 0x8000000243ACD490, v8);
  *(v0 + 272) = v3;
  v9 = swift_task_alloc();
  *(v0 + 280) = v9;
  *v9 = v0;
  v9[1] = sub_243A6967C;

  return sub_243A68980(0);
}

uint64_t sub_243A6967C(uint64_t a1)
{
  *(*v1 + 288) = a1;

  return MEMORY[0x2822009F8](sub_243A6977C, 0, 0);
}

uint64_t sub_243A6977C()
{
  v1 = *(v0 + 288);
  if (v1)
  {
    if (sub_243AC2B88())
    {
      v2 = 0xE900000000000072;
      v3 = 0x6573616863727550;
    }

    else
    {
      v4 = sub_243AC2B98();
      if (v4 >> 62)
      {
        v5 = sub_243AC2DF8();
      }

      else
      {
        v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (v5 <= 0)
      {
        v3 = 0x7564697669646E49;
      }

      else
      {
        v3 = 0x7265626D654DLL;
      }

      if (v5 <= 0)
      {
        v2 = 0xEA00000000006C61;
      }

      else
      {
        v2 = 0xE600000000000000;
      }
    }
  }

  else
  {
    v2 = 0xE700000000000000;
    v3 = 0x6E776F6E6B6E55;
  }

  v6 = *(v0 + 272);
  *(v0 + 232) = MEMORY[0x277D837D0];
  *(v0 + 208) = v3;
  *(v0 + 216) = v2;
  sub_243A21C48((v0 + 208), (v0 + 240));
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_243A8B544((v0 + 240), 0xD00000000000001BLL, 0x8000000243ACD4B0, isUniquelyReferenced_nonNull_native);
  v8 = *(v0 + 8);

  return v8(v6);
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t sub_243A6996C(uint64_t a1)
{
  *(v1 + 176) = a1;
  v2 = swift_task_alloc();
  *(v1 + 184) = v2;
  *v2 = v1;
  v2[1] = sub_243A69A10;

  return sub_243A69450();
}

uint64_t sub_243A69A10(uint64_t a1)
{
  v3 = *v2;
  v3[24] = a1;
  v3[25] = v1;

  if (v1)
  {
    v4 = v3[1];

    return v4();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_243A69B44, 0, 0);
  }
}

void sub_243A69B44()
{
  v1 = 0;
  v2 = *(v0 + 200);
  v3 = *(v0 + 192);
  v6 = *(v3 + 64);
  v5 = v3 + 64;
  v4 = v6;
  v22 = *(v0 + 192);
  v7 = -1;
  v8 = -1 << *(v22 + 32);
  if (-v8 < 64)
  {
    v7 = ~(-1 << -v8);
  }

  v23 = *(v0 + 176);
  v9 = v7 & v4;
  v10 = (63 - v8) >> 6;
  if ((v7 & v4) != 0)
  {
    while (1)
    {
      v11 = v1;
LABEL_12:
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v15 = v14 | (v11 << 6);
      v16 = (*(v22 + 48) + 16 * v15);
      v18 = *v16;
      v17 = v16[1];
      sub_243A20058(*(v22 + 56) + 32 * v15, v0 + 112);
      *(v0 + 64) = v18;
      *(v0 + 72) = v17;
      sub_243A21C48((v0 + 112), (v0 + 80));

      v13 = v11;
LABEL_13:
      v19 = *(v0 + 80);
      *(v0 + 16) = *(v0 + 64);
      *(v0 + 32) = v19;
      *(v0 + 48) = *(v0 + 96);
      if (!*(v0 + 24))
      {

        v21 = *(v0 + 8);
        goto LABEL_20;
      }

      v1 = v13;
      v20 = *(v0 + 176);
      sub_243A21C48((v0 + 32), (v0 + 144));
      __swift_mutable_project_boxed_opaque_existential_1(v20, *(v23 + 24));
      sub_243AC2548();
      if (v2)
      {
        break;
      }

      __swift_destroy_boxed_opaque_existential_1((v0 + 144));

      if (!v9)
      {
        goto LABEL_5;
      }
    }

    __swift_destroy_boxed_opaque_existential_1((v0 + 144));

    v21 = *(v0 + 8);
LABEL_20:

    v21();
  }

  else
  {
LABEL_5:
    if (v10 <= v1 + 1)
    {
      v12 = v1 + 1;
    }

    else
    {
      v12 = v10;
    }

    v13 = v12 - 1;
    while (1)
    {
      v11 = v1 + 1;
      if (__OFADD__(v1, 1))
      {
        break;
      }

      if (v11 >= v10)
      {
        v9 = 0;
        *(v0 + 80) = 0u;
        *(v0 + 96) = 0u;
        *(v0 + 64) = 0u;
        goto LABEL_13;
      }

      v9 = *(v5 + 8 * v11);
      ++v1;
      if (v9)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }
}

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return v3;
}

void sub_243A69DAC()
{
  if (qword_27ED98918 != -1)
  {
    swift_once();
  }

  v0 = sub_243AC1468();
  __swift_project_value_buffer(v0, qword_27EDA14C0);
  v1 = sub_243AC1448();
  v2 = sub_243AC2B78();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_243A1B000, v1, v2, "Adding time sensitive metrics.", v3, 2u);
    MEMORY[0x245D47D20](v3, -1, -1);
  }
}

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_243A69EA0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_243A69EE8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_243A69F44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = a2;
  v3[5] = a3;
  v3[3] = a1;
  return MEMORY[0x2822009F8](sub_243A69F68, 0, 0);
}

uint64_t sub_243A69F68()
{
  v1 = v0[4];
  v2 = v0[5];
  v3 = v1[3];
  v4 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v3);
  v0[2] = v2;
  v5 = v1[5];

  v6 = swift_task_alloc();
  v0[6] = v6;
  v7 = sub_243A6AF44();
  *v6 = v0;
  v6[1] = sub_243A6A06C;
  v8 = v0[3];

  return MEMORY[0x28217F4B0](v8, v0 + 2, v5, &type metadata for LintIntent, v7, v3, v4);
}

uint64_t sub_243A6A06C()
{
  v2 = *v1;
  *(v2 + 56) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_243A6A1BC, 0, 0);
  }

  else
  {
    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_243A6A1D4(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98998, &qword_243AC4FD0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v12 - v4;
  sub_243A6A374(v1, v12);
  v6 = swift_allocObject();
  v7 = v12[1];
  *(v6 + 16) = v12[0];
  *(v6 + 32) = v7;
  *(v6 + 48) = v12[2];
  *(v6 + 64) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED99708, &qword_243AC6FC0);

  v8 = sub_243AC27B8();
  v9 = sub_243AC2A98();
  (*(*(v9 - 8) + 56))(v5, 1, 1, v9);
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = &unk_243AC6FB8;
  v10[5] = v6;
  v10[6] = v8;

  sub_243A6A940(0, 0, v5, &unk_243AC6FD0, v10);

  return v8;
}

uint64_t sub_243A6A3AC()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_243A6A3F4(uint64_t a1)
{
  v4 = *(v1 + 64);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_243A1FEA8;

  return sub_243A69F44(a1, v1 + 16, v4);
}

uint64_t sub_243A6A4A0(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6)
{
  v6[2] = a6;
  v8 = sub_243AC2538();
  v6[3] = v8;
  v6[4] = *(v8 - 8);
  v9 = swift_task_alloc();
  v6[5] = v9;
  v12 = (a4 + *a4);
  v10 = swift_task_alloc();
  v6[6] = v10;
  *v10 = v6;
  v10[1] = sub_243A6A600;

  return v12(v9);
}

uint64_t sub_243A6A600()
{
  *(*v1 + 56) = v0;

  if (v0)
  {
    v2 = sub_243A6A7A4;
  }

  else
  {
    v2 = sub_243A6A714;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_243A6A714()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[3];
  sub_243AC27A8();
  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_243A6A7A4()
{
  v1 = *(v0 + 56);
  sub_243AC2798();

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_243A6A81C()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_243A6A864(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_243A1FEA8;

  return sub_243A6A4A0(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_243A6A940(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98998, &qword_243AC4FD0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v23 - v10;
  sub_243A47650(a3, v23 - v10);
  v12 = sub_243AC2A98();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_243A6ABFC(v11);
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    v14 = 0;
    v16 = 0;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  sub_243AC2A88();
  (*(v13 + 8))(v11, v12);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  swift_getObjectType();
  swift_unknownObjectRetain();
  v14 = sub_243AC2A28();
  v16 = v15;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v17 = sub_243AC2888() + 32;
    v18 = swift_allocObject();
    *(v18 + 16) = a4;
    *(v18 + 24) = a5;

    if (v16 | v14)
    {
      v24[0] = 0;
      v24[1] = 0;
      v19 = v24;
      v24[2] = v14;
      v24[3] = v16;
    }

    else
    {
      v19 = 0;
    }

    v23[1] = 7;
    v23[2] = v19;
    v23[3] = v17;
    v21 = swift_task_create();

    sub_243A6ABFC(a3);

    return v21;
  }

LABEL_8:
  sub_243A6ABFC(a3);
  v20 = swift_allocObject();
  *(v20 + 16) = a4;
  *(v20 + 24) = a5;
  if (v16 | v14)
  {
    v24[4] = 0;
    v24[5] = 0;
    v24[6] = v14;
    v24[7] = v16;
  }

  return swift_task_create();
}

uint64_t sub_243A6ABFC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98998, &qword_243AC4FD0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_243A6AC64(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_243A6AD5C;

  return v6(a1);
}

uint64_t sub_243A6AD5C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_243A6AE54(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_243A33068;

  return sub_243A6AC64(a1, v4);
}

uint64_t sub_243A6AF0C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

unint64_t sub_243A6AF44()
{
  result = qword_27ED99710;
  if (!qword_27ED99710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED99710);
  }

  return result;
}

void sub_243A6AF9C()
{
  v0 = sub_243AC2818();
  v1 = sub_243AC2818();
  v2 = [objc_opt_self() bagForProfile:v0 profileVersion:v1];

  qword_27EDA1468 = v2;
}

uint64_t sub_243A6B074@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v72 = a2;
  v80 = a3;
  v79 = sub_243AC2418();
  v78 = *(v79 - 8);
  v4 = MEMORY[0x28223BE20](v79);
  v77 = &v72 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v76 = &v72 - v6;
  v7 = sub_243AC25E8();
  v86 = *(v7 - 8);
  v87 = v7;
  MEMORY[0x28223BE20](v7);
  v90 = &v72 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED99718, &qword_243AC7038);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v72 - v10;
  v12 = sub_243AC2708();
  v84 = *(v12 - 8);
  v85 = v12;
  MEMORY[0x28223BE20](v12);
  v83 = &v72 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = sub_243AC2648();
  v74 = *(v75 - 8);
  MEMORY[0x28223BE20](v75);
  v15 = &v72 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_243AC2748();
  v17 = *(v16 - 8);
  v18 = MEMORY[0x28223BE20](v16);
  v73 = &v72 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v18);
  v88 = &v72 - v21;
  MEMORY[0x28223BE20](v20);
  v82 = &v72 - v22;
  v81 = *a1;
  if (qword_27ED98920 != -1)
  {
    swift_once();
  }

  v23 = sub_243AC1468();
  __swift_project_value_buffer(v23, qword_27EDA14D8);
  v24 = sub_243AC1448();
  v25 = sub_243AC2B78();
  v26 = os_log_type_enabled(v24, v25);
  v89 = v15;
  if (v26)
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v92[0] = v28;
    *v27 = 136446210;
    *(v27 + 4) = sub_243AB73D8(0xD000000000000016, 0x8000000243ACD500, v92);
    _os_log_impl(&dword_243A1B000, v24, v25, "%{public}s Injecting bag", v27, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v28);
    MEMORY[0x245D47D20](v28, -1, -1);
    MEMORY[0x245D47D20](v27, -1, -1);
  }

  sub_243AC23E8();
  sub_243AC2758();
  v29 = sub_243AC1448();
  v30 = sub_243AC2B78();
  v31 = v17;
  if (os_log_type_enabled(v29, v30))
  {
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v92[0] = v33;
    *v32 = 136446210;
    *(v32 + 4) = sub_243AB73D8(0xD000000000000016, 0x8000000243ACD500, v92);
    _os_log_impl(&dword_243A1B000, v29, v30, "%{public}s Initializing aggregator", v32, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v33);
    MEMORY[0x245D47D20](v33, -1, -1);
    MEMORY[0x245D47D20](v32, -1, -1);
  }

  sub_243AC2638();
  v93 = &type metadata for FieldsProvider;
  v94 = sub_243A6C654();
  v92[0] = v72;
  v34 = qword_27ED988F8;
  v35 = v72;
  if (v34 != -1)
  {
    swift_once();
  }

  v36 = sub_243AC26B8();
  __swift_project_value_buffer(v36, qword_27EDA1438);
  sub_243AC2618();
  __swift_destroy_boxed_opaque_existential_1(v92);
  v37 = sub_243AC1448();
  v38 = sub_243AC2B78();
  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    v92[0] = v40;
    *v39 = 136446210;
    *(v39 + 4) = sub_243AB73D8(0xD000000000000016, 0x8000000243ACD500, v92);
    _os_log_impl(&dword_243A1B000, v37, v38, "%{public}s Initializing bag", v39, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v40);
    MEMORY[0x245D47D20](v40, -1, -1);
    MEMORY[0x245D47D20](v39, -1, -1);
  }

  if (qword_27ED98908 != -1)
  {
    swift_once();
  }

  v41 = qword_27EDA1468;
  sub_243AC2718();
  v42 = sub_243AC1448();
  v43 = sub_243AC2B78();
  if (os_log_type_enabled(v42, v43))
  {
    v44 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    v92[0] = v45;
    *v44 = 136446210;
    *(v44 + 4) = sub_243AB73D8(0xD000000000000016, 0x8000000243ACD500, v92);
    _os_log_impl(&dword_243A1B000, v42, v43, "%{public}s Initializing identifier provider", v44, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v45);
    MEMORY[0x245D47D20](v45, -1, -1);
    MEMORY[0x245D47D20](v44, -1, -1);
  }

  v46 = [objc_opt_self() ams_sharedAccountStore];
  v93 = sub_243A6C6A8();
  v94 = MEMORY[0x277D225B8];
  v92[0] = v46;
  v47 = *(v31 + 16);
  v47(v11, v88, v16);
  (*(v31 + 56))(v11, 0, 1, v16);
  v48 = [objc_opt_self() currentProcess];
  sub_243AC26F8();
  sub_243AC26E8();
  v49 = v83;
  sub_243AC26D8();
  v50 = v85;
  v93 = v85;
  v94 = MEMORY[0x277D22368];
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v92);
  (*(v84 + 16))(boxed_opaque_existential_1, v49, v50);
  if (qword_27ED98900 != -1)
  {
    swift_once();
  }

  v52 = sub_243AC2688();
  __swift_project_value_buffer(v52, qword_27EDA1450);
  sub_243AC2628();
  __swift_destroy_boxed_opaque_existential_1(v92);
  v53 = sub_243AC1448();
  v54 = sub_243AC2B78();
  if (os_log_type_enabled(v53, v54))
  {
    v55 = swift_slowAlloc();
    v56 = swift_slowAlloc();
    v92[0] = v56;
    *v55 = 136446210;
    *(v55 + 4) = sub_243AB73D8(0xD000000000000016, 0x8000000243ACD500, v92);
    _os_log_impl(&dword_243A1B000, v53, v54, "%{public}s Initializing dispatcher", v55, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v56);
    MEMORY[0x245D47D20](v56, -1, -1);
    MEMORY[0x245D47D20](v55, -1, -1);
  }

  sub_243AC25D8();
  sub_243A6C6F4();
  sub_243AC25C8();
  v57 = sub_243AC1448();
  v58 = sub_243AC2B78();
  if (os_log_type_enabled(v57, v58))
  {
    v59 = swift_slowAlloc();
    v60 = swift_slowAlloc();
    v92[0] = v60;
    *v59 = 136446210;
    *(v59 + 4) = sub_243AB73D8(0xD000000000000016, 0x8000000243ACD500, v92);
    _os_log_impl(&dword_243A1B000, v57, v58, "%{public}s Initializing linter", v59, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v60);
    MEMORY[0x245D47D20](v60, -1, -1);
    MEMORY[0x245D47D20](v59, -1, -1);
  }

  v61 = v87;
  v93 = v87;
  v94 = MEMORY[0x277D22188];
  v62 = __swift_allocate_boxed_opaque_existential_1(v92);
  (*(v86 + 16))(v62, v90, v61);
  v95 = v81;

  v63 = sub_243AC1448();
  v64 = sub_243AC2B78();
  if (os_log_type_enabled(v63, v64))
  {
    v65 = swift_slowAlloc();
    v66 = swift_slowAlloc();
    v91[0] = v66;
    *v65 = 136446210;
    *(v65 + 4) = sub_243AB73D8(0xD000000000000016, 0x8000000243ACD500, v91);
    _os_log_impl(&dword_243A1B000, v63, v64, "%{public}s Finish - returning pipeline.", v65, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v66);
    MEMORY[0x245D47D20](v66, -1, -1);
    MEMORY[0x245D47D20](v65, -1, -1);
  }

  v67 = v89;
  v68 = v82;
  v47(v73, v82, v16);
  v91[3] = &type metadata for IntentMetricsEventLinter;
  v91[4] = sub_243A6C748();
  v91[0] = swift_allocObject();
  sub_243A6A374(v92, v91[0] + 16);
  v69 = v77;
  sub_243AC2408();
  sub_243AC23F8();
  (*(v78 + 8))(v69, v79);
  sub_243AC2428();
  (*(v86 + 8))(v90, v87);
  (*(v84 + 8))(v83, v85);
  v70 = *(v31 + 8);
  v70(v88, v16);
  (*(v74 + 8))(v67, v75);
  v70(v68, v16);
  return sub_243A6C7DC(v92);
}

id JetAnalytics.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id JetAnalytics.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for JetAnalytics();
  return objc_msgSendSuper2(&v2, sel_init);
}

id JetAnalytics.__deallocating_deinit(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for JetAnalytics();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t sub_243A6BECC(void *a1)
{
  v2 = sub_243AC21F8();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_243AC2738();
  MEMORY[0x28223BE20](v6 - 8);
  v7 = sub_243AC2218();
  v29 = *(v7 - 8);
  v30 = v7;
  MEMORY[0x28223BE20](v7);
  v28 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27ED98920 != -1)
  {
    swift_once();
  }

  v9 = sub_243AC1468();
  __swift_project_value_buffer(v9, qword_27EDA14D8);
  v10 = sub_243AC1448();
  v11 = sub_243AC2B78();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v27 = v2;
    v13 = a1;
    v14 = v12;
    v15 = swift_slowAlloc();
    v31[0] = v15;
    *v14 = 136446210;
    *(v14 + 4) = sub_243AB73D8(0xD000000000000016, 0x8000000243ACD500, v31);
    _os_log_impl(&dword_243A1B000, v10, v11, "%{public}s Fetching bootstrap", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v15);
    MEMORY[0x245D47D20](v15, -1, -1);
    v16 = v14;
    a1 = v13;
    v2 = v27;
    MEMORY[0x245D47D20](v16, -1, -1);
  }

  sub_243AC2728();
  v17 = [objc_opt_self() currentProcess];
  (*(v3 + 104))(v5, *MEMORY[0x277D21A90], v2);
  v18 = v28;
  sub_243AC21E8();
  v19 = sub_243AC1448();
  v20 = sub_243AC2B78();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v31[0] = v22;
    *v21 = 136446210;
    *(v21 + 4) = sub_243AB73D8(0xD000000000000016, 0x8000000243ACD500, v31);
    _os_log_impl(&dword_243A1B000, v19, v20, "%{public}s Starting bootstrap.", v21, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v22);
    MEMORY[0x245D47D20](v22, -1, -1);
    MEMORY[0x245D47D20](v21, -1, -1);
  }

  sub_243AC2208();
  *(swift_allocObject() + 16) = a1;
  v31[3] = sub_243AC2518();
  v31[4] = MEMORY[0x277D21FB0];
  __swift_allocate_boxed_opaque_existential_1(v31);
  v23 = a1;
  sub_243AC2508();
  sub_243AC2438();
  v24 = sub_243AC2768();

  (*(v29 + 8))(v18, v30);
  __swift_destroy_boxed_opaque_existential_1(v31);
  return v24;
}

uint64_t _s21CloudRecommendationUI12JetAnalyticsC5start7account0D6Engine7PromiseCyAF15MetricsPipelineVGSo9ACAccountC_tFZ_0(void *a1)
{
  v1 = qword_27EDA1470;
  if (qword_27EDA1470)
  {
  }

  else
  {
    if (qword_27ED98920 != -1)
    {
      swift_once();
    }

    v3 = sub_243AC1468();
    __swift_project_value_buffer(v3, qword_27EDA14D8);
    v4 = sub_243AC1448();
    v5 = sub_243AC2B78();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_243A1B000, v4, v5, "Initializing JetAnalytics pipeline.", v6, 2u);
      MEMORY[0x245D47D20](v6, -1, -1);
    }

    v1 = sub_243A6BECC(a1);
    qword_27EDA1470 = v1;
  }

  return v1;
}

uint64_t _s21CloudRecommendationUI12JetAnalyticsC7preload7accountySo9ACAccountC_tFZ_0(void *a1)
{
  if (qword_27ED98920 != -1)
  {
    swift_once();
  }

  v2 = sub_243AC1468();
  __swift_project_value_buffer(v2, qword_27EDA14D8);
  v3 = a1;
  v4 = sub_243AC1448();
  v5 = sub_243AC2B78();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    *(v6 + 4) = v3;
    *v7 = v3;
    v8 = v3;
    _os_log_impl(&dword_243A1B000, v4, v5, "Preloading JetAnalytics for account %@.", v6, 0xCu);
    sub_243A68FA0(v7);
    MEMORY[0x245D47D20](v7, -1, -1);
    MEMORY[0x245D47D20](v6, -1, -1);
  }

  _s21CloudRecommendationUI12JetAnalyticsC5start7account0D6Engine7PromiseCyAF15MetricsPipelineVGSo9ACAccountC_tFZ_0(v3);
}

uint64_t sub_243A6C600()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

unint64_t sub_243A6C654()
{
  result = qword_27ED99720;
  if (!qword_27ED99720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED99720);
  }

  return result;
}

unint64_t sub_243A6C6A8()
{
  result = qword_27ED99728;
  if (!qword_27ED99728)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27ED99728);
  }

  return result;
}

unint64_t sub_243A6C6F4()
{
  result = qword_27ED99730;
  if (!qword_27ED99730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED99730);
  }

  return result;
}

unint64_t sub_243A6C748()
{
  result = qword_27ED99738;
  if (!qword_27ED99738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED99738);
  }

  return result;
}

uint64_t sub_243A6C79C()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

id sub_243A6C830(uint64_t a1, uint64_t a2)
{
  v3 = objc_opt_self();
  result = [v3 valueWithNewObjectInContext_];
  if (result)
  {
    v5 = result;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98A28, &qword_243AC4838);
    v6 = [v3 valueWithObject:sub_243AC2F18() inContext:a1];
    result = swift_unknownObjectRelease();
    if (v6)
    {
      sub_243AC2BF8();
      return v5;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_243A6C990()
{
  result = qword_27ED99740;
  if (!qword_27ED99740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED99740);
  }

  return result;
}

uint64_t sub_243A6CA04(uint64_t a1, uint64_t a2)
{
  *(v2 + 80) = a1;
  *(v2 + 88) = a2;
  return MEMORY[0x2822009F8](sub_243A6CA24, 0, 0);
}

uint64_t sub_243A6CA24()
{
  v1 = *(*(v0 + 88) + 16);

  if (v1)
  {
    v2 = sub_243A2DDC0(0x6D6954746E657665, 0xE900000000000065);
    if (v3)
    {
      sub_243A20058(*(*(v0 + 88) + 56) + 32 * v2, v0 + 16);
      v4 = MEMORY[0x277D839F8];
      if (swift_dynamicCast())
      {
        v5 = trunc(*(v0 + 48) / 3600000.0) * 3600000.0;
        *(v0 + 40) = v4;
        *(v0 + 16) = v5;
        sub_243A21C48((v0 + 16), (v0 + 48));
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        sub_243A8B544((v0 + 48), 0x6D6954746E657665, 0xE900000000000065, isUniquelyReferenced_nonNull_native);
      }
    }
  }

  v7 = *(v0 + 80);

  sub_243AC2528();
  v8 = sub_243AC2538();
  (*(*(v8 - 8) + 56))(v7, 0, 1, v8);

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_243A6CBE8(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_243A1FEA8;

  return sub_243A6CA04(a1, v4);
}

uint64_t EmailDownloadLink.performAction(with:localStore:)(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_243A33068;

  return sub_243A6EDA0(a1);
}

uint64_t sub_243A6CD34(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 72) = a8;
  *(v8 + 80) = v15;
  *(v8 + 56) = a6;
  *(v8 + 64) = a7;
  *(v8 + 48) = a5;
  *(v8 + 288) = a4;
  v9 = sub_243AC1528();
  *(v8 + 88) = v9;
  *(v8 + 96) = *(v9 - 8);
  *(v8 + 104) = swift_task_alloc();
  *(v8 + 112) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98D58, qword_243AC74A0);
  *(v8 + 120) = swift_task_alloc();
  *(v8 + 128) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98D60, &unk_243AC4FF0);
  *(v8 + 136) = swift_task_alloc();
  v10 = sub_243AC1328();
  *(v8 + 144) = v10;
  *(v8 + 152) = *(v10 - 8);
  *(v8 + 160) = swift_task_alloc();
  v11 = sub_243AC1058();
  *(v8 + 168) = v11;
  *(v8 + 176) = *(v11 - 8);
  *(v8 + 184) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98D68, &qword_243AC67E0);
  *(v8 + 192) = swift_task_alloc();
  v12 = sub_243AC1208();
  *(v8 + 200) = v12;
  *(v8 + 208) = *(v12 - 8);
  *(v8 + 216) = swift_task_alloc();
  *(v8 + 224) = swift_task_alloc();
  *(v8 + 232) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_243A6CFF4, 0, 0);
}

uint64_t sub_243A6CFF4()
{
  v69 = v0;
  if (*(v0 + 288) != 1)
  {
    goto LABEL_4;
  }

  v1 = *(v0 + 200);
  v2 = *(v0 + 208);
  v3 = *(v0 + 192);
  sub_243AC11E8();
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_243A2251C(*(v0 + 192), &qword_27ED98D68, &qword_243AC67E0);
LABEL_4:

    v4 = *(v0 + 8);

    return v4();
  }

  v5 = *(v0 + 232);
  v6 = *(v0 + 184);
  v7 = *(v0 + 160);
  (*(*(v0 + 208) + 32))(v5, *(v0 + 192), *(v0 + 200));
  sub_243AC1318();
  CELiftUIDataSource.request(for:timeZone:)(v5, v7, v6);
  v9 = *(v0 + 136);
  v10 = *(v0 + 72);
  (*(*(v0 + 152) + 8))(*(v0 + 160), *(v0 + 144));
  sub_243AC1008();
  sub_243A224B4(v10 + OBJC_IVAR____TtC21CloudRecommendationUI17EmailDownloadLink_headers, v9, &qword_27ED98D60, &unk_243AC4FF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98A38, qword_243AC7210);
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v9, 1, v11);
  if (v13 == 1)
  {
    sub_243A2251C(*(v0 + 136), &qword_27ED98D60, &unk_243AC4FF0);
LABEL_11:
    if (qword_27ED98910 == -1)
    {
      goto LABEL_12;
    }
  }

  else
  {
    sub_243A32BC0(&qword_27ED98AA0, &qword_27ED98A68, &unk_243ACA3A0, MEMORY[0x277D233E8]);
    sub_243AC14D8();
    v63 = *(v0 + 120);
    v34 = *(v0 + 96);
    (*(v12 + 8))(*(v0 + 136), v11);
    v35 = 0;
    v36 = *(v0 + 32);
    v37 = *(v36 + 64);
    v61 = v36 + 64;
    v38 = -1;
    v64 = *(v0 + 32);
    v39 = -1 << *(v64 + 32);
    if (-v39 < 64)
    {
      v38 = ~(-1 << -v39);
    }

    v40 = v38 & v37;
    v60 = (63 - v39) >> 6;
    v62 = v34;
    v65 = (v34 + 8);
    v67 = (v34 + 32);
    while (v40)
    {
      v41 = v35;
LABEL_31:
      v45 = *(v0 + 112);
      v44 = *(v0 + 120);
      v46 = *(v0 + 88);
      v47 = __clz(__rbit64(v40));
      v40 &= v40 - 1;
      v48 = v47 | (v41 << 6);
      v49 = (*(v64 + 48) + 16 * v48);
      v50 = *v49;
      v51 = v49[1];
      (*(v62 + 16))(v45, *(v64 + 56) + *(v62 + 72) * v48, v46);
      v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98D78, &qword_243AC5000);
      v53 = *(v52 + 48);
      *v44 = v50;
      *(v63 + 8) = v51;
      (*(v62 + 32))(&v44[v53], v45, v46);
      (*(*(v52 - 8) + 56))(v44, 0, 1, v52);

      v43 = v41;
LABEL_32:
      v54 = *(v0 + 128);
      sub_243A22814(*(v0 + 120), v54, &qword_27ED98D58, qword_243AC74A0);
      v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98D78, &qword_243AC5000);
      if ((*(*(v55 - 8) + 48))(v54, 1, v55) == 1)
      {

        goto LABEL_11;
      }

      (*v67)(*(v0 + 104), *(v0 + 128) + *(v55 + 48), *(v0 + 88));
      sub_243A643A0();
      v56 = *(v0 + 104);
      v57 = *(v0 + 88);
      sub_243AC1048();

      (*v65)(v56, v57);
      v35 = v43;
    }

    if (v60 <= v35 + 1)
    {
      v42 = v35 + 1;
    }

    else
    {
      v42 = v60;
    }

    v43 = v42 - 1;
    while (1)
    {
      v41 = v35 + 1;
      if (__OFADD__(v35, 1))
      {
        break;
      }

      if (v41 >= v60)
      {
        v58 = *(v0 + 120);
        v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98D78, &qword_243AC5000);
        (*(*(v59 - 8) + 56))(v58, 1, 1, v59);
        v40 = 0;
        goto LABEL_32;
      }

      v40 = *(v61 + 8 * v41);
      ++v35;
      if (v40)
      {
        goto LABEL_31;
      }
    }

    __break(1u);
  }

  swift_once();
LABEL_12:
  v14 = *(v0 + 224);
  v15 = *(v0 + 232);
  v16 = *(v0 + 200);
  v17 = *(v0 + 208);
  v18 = sub_243AC1468();
  *(v0 + 240) = __swift_project_value_buffer(v18, qword_27EDA14A8);
  v19 = *(v17 + 16);
  *(v0 + 248) = v19;
  *(v0 + 256) = (v17 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v19(v14, v15, v16);
  v20 = sub_243AC1448();
  v21 = sub_243AC2B78();
  v22 = os_log_type_enabled(v20, v21);
  v23 = *(v0 + 224);
  v24 = *(v0 + 200);
  v25 = *(v0 + 208);
  if (v22)
  {
    v26 = swift_slowAlloc();
    v66 = swift_slowAlloc();
    v68 = v66;
    *v26 = 136315138;
    sub_243A6FD6C(&qword_27ED98D70, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
    v27 = sub_243AC2EB8();
    v29 = v28;
    v30 = *(v25 + 8);
    v30(v23, v24);
    v31 = sub_243AB73D8(v27, v29, &v68);

    *(v26 + 4) = v31;
    _os_log_impl(&dword_243A1B000, v20, v21, "Sending email link with: %s", v26, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v66);
    MEMORY[0x245D47D20](v66, -1, -1);
    MEMORY[0x245D47D20](v26, -1, -1);
  }

  else
  {

    v30 = *(v25 + 8);
    v30(v23, v24);
  }

  *(v0 + 264) = v30;
  v32 = swift_task_alloc();
  *(v0 + 272) = v32;
  *v32 = v0;
  v32[1] = sub_243A6D9B0;
  v33 = *(v0 + 184);

  return CELiftUIDataSource.data(for:)(v33);
}

uint64_t sub_243A6D9B0(uint64_t a1, unint64_t a2)
{
  *(*v3 + 280) = v2;

  if (v2)
  {
    v6 = sub_243A6DAE0;
  }

  else
  {
    sub_243A200C8(a1, a2);
    v6 = sub_243A30694;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_243A6DAE0()
{
  v33 = v0;
  *(v0 + 40) = *(v0 + 280);
  v1 = *(v0 + 248);
  v2 = *(v0 + 232);
  v3 = *(v0 + 216);
  v4 = *(v0 + 200);
  *(v0 + 16) = 0;
  *(v0 + 24) = 0xE000000000000000;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98C10, &qword_243AC4C60);
  sub_243AC2DE8();
  v30 = *(v0 + 16);
  v5 = *(v0 + 24);
  v1(v3, v2, v4);

  v6 = sub_243AC1448();
  v7 = sub_243AC2B78();

  v29 = v7;
  v8 = os_log_type_enabled(v6, v7);
  v9 = *(v0 + 264);
  v10 = *(v0 + 232);
  v11 = *(v0 + 216);
  v12 = *(v0 + 200);
  v13 = *(v0 + 176);
  v31 = *(v0 + 184);
  v14 = *(v0 + 168);
  if (v8)
  {
    v27 = *(v0 + 280);
    log = v6;
    v15 = *(v0 + 200);
    v16 = swift_slowAlloc();
    v28 = v14;
    v25 = swift_slowAlloc();
    v32 = v25;
    *v16 = 136315394;
    sub_243A6FD6C(&qword_27ED98D70, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
    v17 = sub_243AC2EB8();
    v26 = v10;
    v19 = v18;
    v9(v11, v15);
    v20 = sub_243AB73D8(v17, v19, &v32);

    *(v16 + 4) = v20;
    *(v16 + 12) = 2080;
    v21 = sub_243AB73D8(v30, v5, &v32);

    *(v16 + 14) = v21;
    _os_log_impl(&dword_243A1B000, log, v29, "Email link network request failed with url: %s | Error: %s", v16, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x245D47D20](v25, -1, -1);
    MEMORY[0x245D47D20](v16, -1, -1);

    (*(v13 + 8))(v31, v28);
    v9(v26, v15);
  }

  else
  {

    v9(v11, v12);
    (*(v13 + 8))(v31, v14);
    v9(v10, v12);
  }

  v22 = *(v0 + 8);

  return v22();
}

uint64_t sub_243A6DE94()
{
  sub_243AC2FB8();
  sub_243AC28A8();

  return sub_243AC2FD8();
}

uint64_t sub_243A6DF64(uint64_t a1)
{
  sub_243AC28A8();
}

uint64_t sub_243A6E020(uint64_t a1)
{
  sub_243AC2FB8();
  sub_243AC28A8();

  return sub_243AC2FD8();
}

unint64_t sub_243A6E0EC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_243A6FBD8(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_243A6E11C(unint64_t *a1@<X8>)
{
  v2 = 0xE800000000000000;
  v3 = 0x73746E756F636361;
  v4 = 0xE700000000000000;
  v5 = 0x73726564616568;
  if (*v1 != 2)
  {
    v5 = 0x6E694C6C69616D65;
    v4 = 0xEC0000004C52556BLL;
  }

  if (*v1)
  {
    v3 = 0xD000000000000011;
    v2 = 0x8000000243ACBA40;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

unint64_t sub_243A6E1A8()
{
  v1 = 0x73746E756F636361;
  v2 = 0x73726564616568;
  if (*v0 != 2)
  {
    v2 = 0x6E694C6C69616D65;
  }

  if (*v0)
  {
    v1 = 0xD000000000000011;
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

unint64_t sub_243A6E230@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_243A6FBD8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_243A6E258(uint64_t a1)
{
  v2 = sub_243A6F7EC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_243A6E294(uint64_t a1)
{
  v2 = sub_243A6F7EC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t EmailDownloadLink.__allocating_init(from:)(void *a1)
{
  v2 = swift_allocObject();
  EmailDownloadLink.init(from:)(a1);
  return v2;
}

uint64_t *EmailDownloadLink.init(from:)(void *a1)
{
  v3 = v1;
  v5 = *v1;
  v40 = v2;
  v41 = v5;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED99748, &unk_243AC71F0);
  v32 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v33 = v29 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98D60, &unk_243AC4FF0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = v29 - v8;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98D40, &qword_243AC7200);
  v35 = *(v37 - 8);
  v10 = MEMORY[0x28223BE20](v37);
  v12 = v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v38 = v29 - v13;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED99750, &qword_243AC7208);
  v14 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v16 = v29 - v15;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_243A6F7EC();
  v39 = v16;
  v17 = v40;
  sub_243AC2FE8();
  if (v17)
  {
    swift_deallocPartialClassInstance();
    v28 = a1;
  }

  else
  {
    v30 = v9;
    v31 = v14;
    v40 = a1;
    v45 = 0;
    sub_243A227C0(&qword_27ED98DB0, &qword_27ED98D40, &qword_243AC7200);
    v18 = v37;
    v19 = v36;
    sub_243AC2E88();
    v20 = *(v35 + 32);
    v29[1] = OBJC_IVAR____TtC21CloudRecommendationUI17EmailDownloadLink_accounts;
    v21 = v20;
    v20(v1 + OBJC_IVAR____TtC21CloudRecommendationUI17EmailDownloadLink_accounts, v38, v18);
    v44 = 1;
    sub_243AC2E88();
    v21(v1 + OBJC_IVAR____TtC21CloudRecommendationUI17EmailDownloadLink_isAccountSelected, v12, v18);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98A38, qword_243AC7210);
    v43 = 2;
    sub_243A227C0(&qword_27ED98AC0, &qword_27ED98A38, qword_243AC7210);
    v22 = v30;
    v23 = v39;
    sub_243AC2E78();
    sub_243A22814(v22, v3 + OBJC_IVAR____TtC21CloudRecommendationUI17EmailDownloadLink_headers, &qword_27ED98D60, &unk_243AC4FF0);
    v42 = 3;
    sub_243A227C0(&qword_27ED99760, &qword_27ED99748, &unk_243AC71F0);
    v24 = v33;
    v25 = v34;
    sub_243AC2E88();
    v26 = v40;
    (*(v31 + 8))(v23, v19);
    (*(v32 + 32))(v3 + OBJC_IVAR____TtC21CloudRecommendationUI17EmailDownloadLink_emailLinkURL, v24, v25);
    v28 = v26;
  }

  __swift_destroy_boxed_opaque_existential_1(v28);
  return v3;
}

uint64_t EmailDownloadLink.deinit()
{
  v1 = OBJC_IVAR____TtC21CloudRecommendationUI17EmailDownloadLink_accounts;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98D40, &qword_243AC7200);
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v3(v0 + OBJC_IVAR____TtC21CloudRecommendationUI17EmailDownloadLink_isAccountSelected, v2);
  sub_243A2251C(v0 + OBJC_IVAR____TtC21CloudRecommendationUI17EmailDownloadLink_headers, &qword_27ED98D60, &unk_243AC4FF0);
  v4 = OBJC_IVAR____TtC21CloudRecommendationUI17EmailDownloadLink_emailLinkURL;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED99748, &unk_243AC71F0);
  (*(*(v5 - 8) + 8))(v0 + v4, v5);
  return v0;
}

uint64_t EmailDownloadLink.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC21CloudRecommendationUI17EmailDownloadLink_accounts;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98D40, &qword_243AC7200);
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v3(v0 + OBJC_IVAR____TtC21CloudRecommendationUI17EmailDownloadLink_isAccountSelected, v2);
  sub_243A2251C(v0 + OBJC_IVAR____TtC21CloudRecommendationUI17EmailDownloadLink_headers, &qword_27ED98D60, &unk_243AC4FF0);
  v4 = OBJC_IVAR____TtC21CloudRecommendationUI17EmailDownloadLink_emailLinkURL;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED99748, &unk_243AC71F0);
  (*(*(v5 - 8) + 8))(v0 + v4, v5);

  return swift_deallocClassInstance();
}

uint64_t sub_243A6EB70(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_243A1FEA8;

  return sub_243A6EDA0(a1);
}

uint64_t *sub_243A6ED48@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = swift_allocObject();
  result = EmailDownloadLink.init(from:)(a1);
  if (!v2)
  {
    *a2 = v5;
  }

  return result;
}

uint64_t sub_243A6EDA0(uint64_t a1)
{
  v2[12] = a1;
  v2[13] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98998, &qword_243AC4FD0);
  v2[14] = swift_task_alloc();
  v2[15] = swift_task_alloc();
  v3 = sub_243AC1528();
  v2[16] = v3;
  v2[17] = *(v3 - 8);
  v2[18] = swift_task_alloc();
  v2[19] = swift_task_alloc();
  v2[20] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_243A6EEBC, 0, 0);
}

void sub_243A6EEBC()
{
  v82 = v0;
  v1 = [objc_opt_self() defaultStore];
  if (!v1)
  {
    __break(1u);
    goto LABEL_43;
  }

  v2 = v1;
  v3 = [v1 aa_primaryAppleAccount];

  if (!v3)
  {
LABEL_43:
    __break(1u);
    return;
  }

  v4 = type metadata accessor for CELiftUIDataSource();
  v5 = objc_allocWithZone(v4);
  *&v5[OBJC_IVAR____TtC21CloudRecommendationUI18CELiftUIDataSource____lazy_storage___backupDeviceUUID] = xmmword_243AC4E80;
  *&v5[OBJC_IVAR____TtC21CloudRecommendationUI18CELiftUIDataSource_account] = v3;
  *(v0 + 48) = v5;
  *(v0 + 56) = v4;
  v6 = objc_msgSendSuper2((v0 + 48), sel_init);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98D40, &qword_243AC7200);
  sub_243A32BC0(&qword_27ED98D48, &qword_27ED98D18, &unk_243AC4ED0, MEMORY[0x277D233F8]);
  sub_243AC14D8();
  v68 = v6;
  v7 = *(v0 + 80);
  v8 = *(v7 + 16);
  if (v8)
  {
    v9 = *(v0 + 136);
    v11 = *(v9 + 16);
    v9 += 16;
    v10 = v11;
    v12 = v7 + ((*(v9 + 64) + 32) & ~*(v9 + 64));
    v13 = (v9 - 8);
    v14 = MEMORY[0x277D84F90];
    v75 = v11;
    v72 = *(v9 + 56);
    do
    {
      v15 = *(v0 + 160);
      v10(v15, v12, *(v0 + 128));
      static AccountEmailAddress.create(with:)(v15, v80);
      (*v13)(*(v0 + 160), *(v0 + 128));
      v16 = v80[0];
      v78 = v80[1];
      v17 = v80[2];
      v18 = v81;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v14 = sub_243AA0428(0, *(v14 + 2) + 1, 1, v14);
      }

      v20 = *(v14 + 2);
      v19 = *(v14 + 3);
      if (v20 >= v19 >> 1)
      {
        v14 = sub_243AA0428((v19 > 1), v20 + 1, 1, v14);
      }

      *(v14 + 2) = v20 + 1;
      v21 = &v14[32 * v20];
      *(v21 + 4) = v16;
      *(v21 + 5) = v78;
      *(v21 + 6) = v17;
      v21[56] = v18;
      v10 = v75;
      v12 += v72;
      --v8;
    }

    while (v8);
  }

  else
  {
  }

  sub_243AC14D8();
  v22 = *(v0 + 88);
  v23 = *(v22 + 16);
  if (v23)
  {
    v24 = *(v0 + 136);
    v27 = *(v24 + 16);
    v26 = v24 + 16;
    v25 = v27;
    v28 = v22 + ((*(v26 + 64) + 32) & ~*(v26 + 64));
    v29 = *(v26 + 56);
    v73 = *MEMORY[0x277D23258];
    v76 = (v26 - 8);
    v79 = MEMORY[0x277D84F90];
    v71 = v0;
    do
    {
      v36 = *(v0 + 144);
      v37 = *(v0 + 152);
      v38 = *(v0 + 128);
      v25(v37, v28, v38);
      v25(v36, v37, v38);
      v39 = (*(v26 + 72))(v36, v38);
      v40 = *v76;
      v41 = v0;
      v42 = *(v0 + 152);
      v43 = *(v41 + 144);
      v44 = *(v41 + 128);
      if (v39 == v73)
      {
        v40(v42, v44);
        (*(v26 + 80))(v43, v44);
        v45 = *(*v43 + 16);

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v79 = sub_243AA020C(0, *(v79 + 2) + 1, 1, v79);
        }

        v0 = v71;
        v47 = *(v79 + 2);
        v46 = *(v79 + 3);
        if (v47 >= v46 >> 1)
        {
          v79 = sub_243AA020C((v46 > 1), v47 + 1, 1, v79);
        }

        *(v79 + 2) = v47 + 1;
        v79[v47 + 32] = v45;
      }

      else
      {
        v69 = *v76;
        v40(v43, v44);
        type metadata accessor for DecodableStateError(0);
        sub_243A6FD6C(&qword_27ED98D50, type metadata accessor for DecodableStateError, &unk_243AC6B78);
        v30 = swift_allocError();
        v32 = v31;
        v33 = v29;
        v34 = v23;
        v35 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98C50, &unk_243AC4CB0) + 48);
        v25(v32, v42, v44);
        *(v32 + v35) = MEMORY[0x277D839B0];
        v23 = v34;
        v29 = v33;
        swift_willThrow();
        v69(v42, v44);

        v0 = v71;
      }

      v28 += v29;
      --v23;
    }

    while (v23);
  }

  else
  {

    v79 = MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED99748, &unk_243AC71F0);
  sub_243AC14D8();
  v74 = *(v0 + 72);
  v48 = *(v79 + 2);
  if (v48)
  {
    v70 = *(v0 + 64);
    v49 = v79 + 32;
    v65 = sub_243AC2A98();
    v50 = *(v65 - 8);
    v67 = *(v50 + 56);
    v66 = (v50 + 48);
    v64 = (v50 + 8);
    do
    {
      v77 = v48;
      v51 = *(v0 + 112);
      v52 = *(v0 + 120);
      v54 = *(v0 + 96);
      v53 = *(v0 + 104);
      v55 = *v49;
      v67(v52, 1, 1, v65);
      v56 = swift_allocObject();
      *(v56 + 16) = 0;
      *(v56 + 24) = 0;
      *(v56 + 32) = v55;
      *(v56 + 40) = v70;
      *(v56 + 48) = v74;
      *(v56 + 56) = v68;
      *(v56 + 64) = v53;
      *(v56 + 72) = v54;
      sub_243A224B4(v52, v51, &qword_27ED98998, &qword_243AC4FD0);
      LODWORD(v51) = (*v66)(v51, 1, v65);

      v57 = v68;

      v58 = *(v0 + 112);
      if (v51 == 1)
      {
        sub_243A2251C(*(v0 + 112), &qword_27ED98998, &qword_243AC4FD0);
      }

      else
      {
        sub_243AC2A88();
        (*v64)(v58, v65);
      }

      v59 = *(v56 + 16);
      swift_unknownObjectRetain();

      if (v59)
      {
        swift_getObjectType();
        v60 = sub_243AC2A28();
        v62 = v61;
        swift_unknownObjectRelease();
      }

      else
      {
        v60 = 0;
        v62 = 0;
      }

      sub_243A2251C(*(v0 + 120), &qword_27ED98998, &qword_243AC4FD0);
      if (v62 | v60)
      {
        *(v0 + 16) = 0;
        *(v0 + 24) = 0;
        *(v0 + 32) = v60;
        *(v0 + 40) = v62;
      }

      swift_task_create();

      ++v49;
      v48 = v77 - 1;
    }

    while (v77 != 1);
  }

  v63 = *(v0 + 8);

  v63();
}

unint64_t sub_243A6F7EC()
{
  result = qword_27ED99758;
  if (!qword_27ED99758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED99758);
  }

  return result;
}

uint64_t type metadata accessor for EmailDownloadLink(uint64_t a1)
{
  result = qword_27ED99778;
  if (!qword_27ED99778)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_243A6F924(uint64_t a1)
{
  sub_243A31978(319);
  if (v1 <= 0x3F)
  {
    sub_243A31A9C(319);
    if (v2 <= 0x3F)
    {
      sub_243A6FA68();
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_243A6FA68()
{
  if (!qword_27ED99788)
  {
    v0 = sub_243AC14E8();
    if (!v1)
    {
      atomic_store(v0, &qword_27ED99788);
    }
  }
}

unint64_t sub_243A6FAD4()
{
  result = qword_27ED99790;
  if (!qword_27ED99790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED99790);
  }

  return result;
}

unint64_t sub_243A6FB2C()
{
  result = qword_27ED99798;
  if (!qword_27ED99798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED99798);
  }

  return result;
}

unint64_t sub_243A6FB84()
{
  result = qword_27ED997A0;
  if (!qword_27ED997A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED997A0);
  }

  return result;
}

unint64_t sub_243A6FBD8(uint64_t a1, uint64_t a2)
{
  v2 = sub_243AC2E58();

  if (v2 >= 4)
  {
    return 4;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_243A6FC24()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t sub_243A6FC7C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = *(v1 + 56);
  v10 = *(v1 + 64);
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_243A1FEA8;

  return sub_243A6CD34(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_243A6FD6C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_243A6FDB4(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = [objc_opt_self() mainScreen];
  [v4 scale];
  v6 = v5;
  v7 = v5;

  if ((*&v7 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_13;
  }

  if (v6 <= -9.22337204e18)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (v6 >= 9.22337204e18)
  {
LABEL_14:
    __break(1u);
    return;
  }

  v8 = &selRef_URL2x;
  if (v6 != 2)
  {
    v8 = &selRef_URL1x;
  }

  if (v6 >= 3)
  {
    v9 = &selRef_URL3x;
  }

  else
  {
    v9 = v8;
  }

  v10 = [a1 *v9];
  sub_243AC11D8();

  v11 = sub_243AC1208();
  v12 = *(*(v11 - 8) + 56);

  v12(a2, 0, 1, v11);
}

uint64_t sub_243A6FF00(char a1)
{
  switch(a1)
  {
    case 1:
      v1 = [objc_opt_self() systemBrownColor];
      goto LABEL_29;
    case 2:
      v1 = [objc_opt_self() systemGreenColor];
      goto LABEL_29;
    case 3:
      v1 = [objc_opt_self() systemIndigoColor];
      goto LABEL_29;
    case 4:
      v1 = [objc_opt_self() systemOrangeColor];
      goto LABEL_29;
    case 5:
      v1 = [objc_opt_self() systemPinkColor];
      goto LABEL_29;
    case 6:
      v1 = [objc_opt_self() systemPurpleColor];
      goto LABEL_29;
    case 7:
      v1 = [objc_opt_self() systemRedColor];
      goto LABEL_29;
    case 8:
      v1 = [objc_opt_self() systemTealColor];
      goto LABEL_29;
    case 9:
      v1 = [objc_opt_self() systemMintColor];
      goto LABEL_29;
    case 10:
      v1 = [objc_opt_self() systemYellowColor];
      goto LABEL_29;
    case 11:
      v1 = [objc_opt_self() systemGrayColor];
      goto LABEL_29;
    case 12:
      v1 = [objc_opt_self() systemGray2Color];
      goto LABEL_29;
    case 13:
      v1 = [objc_opt_self() systemGray3Color];
      goto LABEL_29;
    case 14:
      v1 = [objc_opt_self() systemGray4Color];
      goto LABEL_29;
    case 15:
      v1 = [objc_opt_self() systemGray5Color];
      goto LABEL_29;
    case 16:
      v1 = [objc_opt_self() systemGray6Color];
      goto LABEL_29;
    case 17:

      return sub_243AC1F88();
    case 18:
      v1 = [objc_opt_self() systemCyanColor];
      goto LABEL_29;
    case 19:
      v1 = [objc_opt_self() darkGrayColor];
      goto LABEL_29;
    case 20:
      v1 = [objc_opt_self() lightGrayColor];
      goto LABEL_29;
    case 21:
      v1 = [objc_opt_self() magentaColor];
      goto LABEL_29;
    case 22:

      return MEMORY[0x282133480]();
    case 23:

      return sub_243AC1FD8();
    default:
      v1 = [objc_opt_self() systemBlueColor];
LABEL_29:
      v3 = v1;

      return sub_243AC1F78();
  }
}

uint64_t sub_243A70290(unsigned __int8 a1)
{
  if (a1 > 0x16u)
  {
    return 11;
  }

  else
  {
    return *&asc_243AC74D0[8 * a1];
  }
}

uint64_t sub_243A70330@<X0>(uint64_t (*a1)(void)@<X0>, _DWORD *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

id sub_243A70360(uint64_t a1, unint64_t a2)
{
  result = [objc_opt_self() defaultWorkspace];
  if (result)
  {
    v5 = result;
    v6 = sub_243AC2818();
    v7 = [v5 applicationIsInstalled_];

    if (qword_27ED98910 != -1)
    {
      swift_once();
    }

    v8 = sub_243AC1468();
    __swift_project_value_buffer(v8, qword_27EDA14A8);

    v9 = sub_243AC1448();
    v10 = sub_243AC2B58();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v13 = v12;
      *v11 = 136315394;
      *(v11 + 4) = sub_243AB73D8(a1, a2, &v13);
      *(v11 + 12) = 1024;
      *(v11 + 14) = v7;
      _os_log_impl(&dword_243A1B000, v9, v10, "Bundle ID %s is installed: %{BOOL}d", v11, 0x12u);
      __swift_destroy_boxed_opaque_existential_1(v12);
      MEMORY[0x245D47D20](v12, -1, -1);
      MEMORY[0x245D47D20](v11, -1, -1);
    }

    return v7;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_243A7051C(uint64_t a1, uint64_t a2)
{
  v2 = sub_243AC2EF8();

  if (v2 >= 0x18)
  {
    return 24;
  }

  else
  {
    return v2;
  }
}

uint64_t CERefreshCacheAction.performAction(with:localStore:)()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_243A33068;

  return sub_243A70B64();
}

uint64_t sub_243A70610(uint64_t a1, void *a2, void *a3)
{
  v5 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98C10, &qword_243AC4C60);
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

void *CERefreshCacheAction.__allocating_init(from:)(void *a1)
{
  v2 = swift_allocObject();
  result = [objc_opt_self() defaultStore];
  if (result)
  {
    v2[2] = result;
    v4 = sub_243AC1408();
    v5 = sub_243AC13F8();
    v6 = MEMORY[0x277CFB0F8];
    v2[6] = v4;
    v2[7] = v6;
    v2[3] = v5;
    __swift_destroy_boxed_opaque_existential_1(a1);
    return v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id CERefreshCacheAction.init(from:)(void *a1)
{
  v2 = v1;
  result = [objc_opt_self() defaultStore];
  if (result)
  {
    *(v1 + 16) = result;
    v5 = sub_243AC1408();
    v6 = sub_243AC13F8();
    v8 = v5;
    v9 = MEMORY[0x277CFB0F8];
    *&v7 = v6;
    __swift_destroy_boxed_opaque_existential_1(a1);
    sub_243A71060(&v7, v2 + 24);
    return v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t CERefreshCacheAction.__allocating_init(accountStore:recommendationsFetcher:)(uint64_t a1, __int128 *a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  sub_243A71060(a2, v4 + 24);
  return v4;
}

uint64_t CERefreshCacheAction.init(accountStore:recommendationsFetcher:)(uint64_t a1, __int128 *a2)
{
  *(v2 + 16) = a1;
  sub_243A71060(a2, v2 + 24);
  return v2;
}

uint64_t CERefreshCacheAction.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 24));

  return swift_deallocClassInstance();
}

uint64_t sub_243A70904()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_243A1FEA8;

  return sub_243A70B64();
}

id sub_243A70AA8@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = swift_allocObject();
  result = [objc_opt_self() defaultStore];
  if (result)
  {
    *(v4 + 16) = result;
    v6 = sub_243AC1408();
    v7 = sub_243AC13F8();
    v9 = v6;
    v10 = MEMORY[0x277CFB0F8];
    *&v8 = v7;
    __swift_destroy_boxed_opaque_existential_1(a1);
    result = sub_243A71060(&v8, v4 + 24);
    *a2 = v4;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_243A70B84()
{
  if (qword_27ED98910 != -1)
  {
    swift_once();
  }

  v1 = sub_243AC1468();
  v0[20] = __swift_project_value_buffer(v1, qword_27EDA14A8);
  v2 = sub_243AC1448();
  v3 = sub_243AC2B78();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_243A1B000, v2, v3, "ClearCacheAction: performing action", v4, 2u);
    MEMORY[0x245D47D20](v4, -1, -1);
  }

  v5 = v0[19];

  v6 = *(v5 + 16);
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_243A70D60;
  v7 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED997B8, qword_243AC76C8);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_243A70610;
  v0[13] = &block_descriptor_5;
  v0[14] = v7;
  [v6 aa:v0 + 10 primaryAppleAccountWithCompletion:?];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_243A70D60()
{
  v1 = *(*v0 + 48);
  *(*v0 + 168) = v1;
  if (v1)
  {
    v2 = sub_243A70F78;
  }

  else
  {
    v2 = sub_243A70E70;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_243A70E70(uint64_t a1)
{
  v2 = v1[18];
  if (v2)
  {
    __swift_project_boxed_opaque_existential_1((v1[19] + 24), *(v1[19] + 48));
    sub_243AC1418();
  }

  else
  {
    v2 = sub_243AC1448();
    v3 = sub_243AC2B58();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&dword_243A1B000, v2, v3, "ClearCacheAction: no account available", v4, 2u);
      MEMORY[0x245D47D20](v4, -1, -1);
    }
  }

  v5 = v1[1];

  return v5();
}

uint64_t sub_243A70F78(uint64_t a1)
{
  v2 = *(v1 + 168);
  swift_willThrow();

  v3 = sub_243AC1448();
  v4 = sub_243AC2B58();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_243A1B000, v3, v4, "ClearCacheAction: no account available", v5, 2u);
    MEMORY[0x245D47D20](v5, -1, -1);
  }

  v6 = *(v1 + 8);

  return v6();
}

uint64_t sub_243A71060(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_243A71158(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CERefreshCacheAction();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_243A711C4(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(v3 + OBJC_IVAR____TtC21CloudRecommendationUI24NativeModalActionHandler_activeRecommendation);
  *(v3 + OBJC_IVAR____TtC21CloudRecommendationUI24NativeModalActionHandler_activeRecommendation) = a1;

  v7 = objc_opt_self();
  v8 = a1;
  v9 = [v7 buildRecommendationFlowControllerWithAction_];
  if (v9)
  {
    v21 = v9;
    if (qword_27ED98910 != -1)
    {
      swift_once();
    }

    v10 = sub_243AC1468();
    __swift_project_value_buffer(v10, qword_27EDA14A8);
    v11 = v8;
    v12 = sub_243AC1448();
    v13 = sub_243AC2B48();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v22 = v15;
      *v14 = 136315138;
      v16 = [v11 identifier];
      v17 = sub_243AC2858();
      v19 = v18;

      v20 = sub_243AB73D8(v17, v19, &v22);

      *(v14 + 4) = v20;
      _os_log_impl(&dword_243A1B000, v12, v13, "Presenting native modal flow for %s", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v15);
      MEMORY[0x245D47D20](v15, -1, -1);
      MEMORY[0x245D47D20](v14, -1, -1);
    }

    [v21 setCloudRecommendationsDelegate_];
    [*(v3 + OBJC_IVAR____TtC21CloudRecommendationUI24NativeModalActionHandler_presenter) presentViewController:v21 animated:1 completion:0];
  }
}

void sub_243A71408(void *a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC21CloudRecommendationUI24NativeModalActionHandler_activeRecommendation);
  if (v2)
  {
    v6 = v2;
    [a1 integerValue];
    v4 = *(v1 + OBJC_IVAR____TtC21CloudRecommendationUI24NativeModalActionHandler_delegate);
    if (v4)
    {
      swift_unknownObjectRetain();
      v5 = [a1 integerValue];
      v7 = *(v4 + 136);
      sub_243A3CF58(v6, v5, &v7);
      swift_unknownObjectRelease();
    }

    else
    {
    }
  }
}

void sub_243A71540()
{
  v1 = *(v0 + OBJC_IVAR____TtC21CloudRecommendationUI24NativeModalActionHandler_activeRecommendation);
  if (v1)
  {
    v2 = *(v0 + OBJC_IVAR____TtC21CloudRecommendationUI24NativeModalActionHandler_delegate);
    if (v2)
    {
      v4 = *(v2 + 136);
      v3 = v1;
      swift_unknownObjectRetain();
      sub_243A3C96C(v3, &v4);
      swift_unknownObjectRelease();
    }
  }
}

id sub_243A71638()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_243A71700(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

id sub_243A71860()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RecommendationFlowControllerRepresentable.FlowControllerDelegate();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_243A7190C(void *a1, uint64_t a2, void *a3)
{
  v6 = sub_243AC2178();
  v19 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_243AC21A8();
  v9 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_243A4C4D4();
  v12 = sub_243AC2BC8();
  v13 = swift_allocObject();
  v13[2] = a2;
  v13[3] = a3;
  v13[4] = a1;
  aBlock[4] = sub_243A71C34;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_243A71700;
  aBlock[3] = &block_descriptor_6;
  v14 = _Block_copy(aBlock);

  v15 = a3;
  v16 = a1;

  sub_243AC2198();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_243A71CA8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98F90, &qword_243AC5C20);
  sub_243A71D00();
  sub_243AC2C78();
  MEMORY[0x245D46FA0](0, v11, v8, v14);
  _Block_release(v14);

  (*(v19 + 8))(v8, v6);
  return (*(v9 + 8))(v11, v18);
}

uint64_t sub_243A71BEC()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

void sub_243A71C34()
{
  v1 = *(v0 + 24);
  v2 = [*(v0 + 32) integerValue];
  v3 = 3;
  sub_243A3CF58(v1, v2, &v3);
}

uint64_t block_copy_helper_6(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_243A71CA8()
{
  result = qword_27ED99860;
  if (!qword_27ED99860)
  {
    sub_243AC2178();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED99860);
  }

  return result;
}

unint64_t sub_243A71D00()
{
  result = qword_27ED99870;
  if (!qword_27ED99870)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED98F90, &qword_243AC5C20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED99870);
  }

  return result;
}

uint64_t sub_243A71D64(uint64_t *a1, int a2)
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

uint64_t sub_243A71DAC(uint64_t result, int a2, int a3)
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

unint64_t sub_243A71E00()
{
  result = qword_27ED99878;
  if (!qword_27ED99878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED99878);
  }

  return result;
}

id sub_243A71E54()
{
  v1 = *(v0 + 24);
  v2 = [objc_opt_self() buildRecommendationFlowControllerWithAction_];
  if (v2)
  {
    v3 = v2;
    objc_opt_self();
    v4 = swift_dynamicCastObjCClass();
    if (v4)
    {
      v5 = v4;
      v6 = swift_dynamicCastObjCProtocolConditional();
      if (v6)
      {
        [v6 setCloudRecommendationsDelegate_];
      }

      return v5;
    }
  }

  v8 = objc_allocWithZone(MEMORY[0x277D75D28]);

  return [v8 init];
}

uint64_t sub_243A71F8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_243A7207C();

  return MEMORY[0x28212EF70](a1, a2, a3, v6);
}

uint64_t sub_243A71FF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_243A7207C();

  return MEMORY[0x28212EF38](a1, a2, a3, v6);
}

void sub_243A72054(uint64_t a1)
{
  sub_243A7207C();
  sub_243AC1BF8();
  __break(1u);
}

unint64_t sub_243A7207C()
{
  result = qword_27ED99880;
  if (!qword_27ED99880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED99880);
  }

  return result;
}

unint64_t sub_243A720D0(uint64_t a1)
{
  v2 = sub_243AC1528();
  v3 = *(v2 - 8);
  v48 = v2;
  v49 = v3;
  MEMORY[0x28223BE20](v2);
  v47 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98D78, &qword_243AC5000);
  v5 = MEMORY[0x28223BE20](v46);
  v45 = (&v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v5);
  v44 = &v38 - v7;
  v50 = a1;
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98A20, &qword_243AC4830);
    v8 = sub_243AC2E28();
  }

  else
  {
    v8 = MEMORY[0x277D84F98];
  }

  v9 = v50 + 64;
  v10 = 1 << *(v50 + 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & *(v50 + 64);
  v13 = (v10 + 63) >> 6;
  v43 = v49 + 16;
  v42 = v49 + 32;
  v39 = v8 + 8;

  v15 = 0;
  v41 = v9;
  v40 = v13;
  while (v12)
  {
    v18 = v15;
LABEL_14:
    v19 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
    v20 = v19 | (v18 << 6);
    v21 = v49;
    v22 = (*(v50 + 48) + 16 * v20);
    v24 = *v22;
    v23 = v22[1];
    v25 = v46;
    v26 = v44;
    v27 = v48;
    (*(v49 + 16))(&v44[*(v46 + 48)], *(v50 + 56) + *(v49 + 72) * v20, v48);
    *v26 = v24;
    v26[1] = v23;
    v28 = v45;
    sub_243A22814(v26, v45, &qword_27ED98D78, &qword_243AC5000);
    v29 = *(v25 + 48);
    v31 = *v28;
    v30 = v28[1];
    (*(v21 + 32))(v47, v28 + v29, v27);

    swift_dynamicCast();
    sub_243A21C48(&v51, v53);
    sub_243A21C48(v53, v54);
    sub_243A21C48(v54, &v52);
    result = sub_243A2DDC0(v31, v30);
    v32 = result;
    if (v33)
    {
      v16 = (v8[6] + 16 * result);
      *v16 = v31;
      v16[1] = v30;

      v17 = (v8[7] + 32 * v32);
      __swift_destroy_boxed_opaque_existential_1(v17);
      result = sub_243A21C48(&v52, v17);
    }

    else
    {
      if (v8[2] >= v8[3])
      {
        goto LABEL_20;
      }

      *(v39 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
      v34 = (v8[6] + 16 * result);
      *v34 = v31;
      v34[1] = v30;
      result = sub_243A21C48(&v52, (v8[7] + 32 * result));
      v35 = v8[2];
      v36 = __OFADD__(v35, 1);
      v37 = v35 + 1;
      if (v36)
      {
        goto LABEL_21;
      }

      v8[2] = v37;
    }

    v15 = v18;
    v9 = v41;
    v13 = v40;
  }

  while (1)
  {
    v18 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v18 >= v13)
    {

      return v8;
    }

    v12 = *(v9 + 8 * v18);
    ++v15;
    if (v12)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_243A724E8(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED998A8, &qword_243AC79B8);
    v2 = sub_243AC2E28();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 64;

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = __clz(__rbit64(v5)) | (v9 << 6);
    v14 = (*(a1 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    sub_243A20058(*(a1 + 56) + 32 * v13, v35);
    *&v34 = v16;
    *(&v34 + 1) = v15;
    v32[2] = v34;
    v33[0] = v35[0];
    v33[1] = v35[1];
    v32[0] = v34;

    swift_dynamicCast();
    sub_243A21C48(v33, v27);
    v28 = v24;
    v29 = v25;
    v30 = v26;
    sub_243A21C48(v27, v31);
    v24 = v28;
    v25 = v29;
    v26 = v30;
    sub_243A21C48(v31, v32);
    result = sub_243AC2C98();
    v17 = -1 << *(v2 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v7 + 8 * (v18 >> 6))) == 0)
    {
      v20 = 0;
      v21 = (63 - v17) >> 6;
      while (++v19 != v21 || (v20 & 1) == 0)
      {
        v22 = v19 == v21;
        if (v19 == v21)
        {
          v19 = 0;
        }

        v20 |= v22;
        v23 = *(v7 + 8 * v19);
        if (v23 != -1)
        {
          v10 = __clz(__rbit64(~v23)) + (v19 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v18) & ~*(v7 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
    v11 = *(v2 + 48) + 40 * v10;
    *v11 = v24;
    *(v11 + 16) = v25;
    *(v11 + 32) = v26;
    result = sub_243A21C48(v32, (*(v2 + 56) + 32 * v10));
    ++*(v2 + 16);
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_243A727B8()
{
  sub_243AC2FB8();
  sub_243AC28A8();
  return sub_243AC2FD8();
}

uint64_t sub_243A72824(uint64_t a1)
{
  sub_243AC2FB8();
  sub_243AC28A8();
  return sub_243AC2FD8();
}

uint64_t sub_243A72874@<X0>(BOOL *a2@<X8>)
{
  v3 = sub_243AC2E58();

  *a2 = v3 != 0;
  return result;
}

uint64_t sub_243A728FC@<X0>(BOOL *a3@<X8>)
{
  v4 = sub_243AC2E58();

  *a3 = v4 != 0;
  return result;
}

uint64_t sub_243A72960(uint64_t a1)
{
  v2 = sub_243A73738();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_243A7299C(uint64_t a1)
{
  v2 = sub_243A73738();

  return MEMORY[0x2821FE720](a1, v2);
}

id *sub_243A729D8(void *a1)
{
  v14 = *v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98D60, &unk_243AC4FF0);
  MEMORY[0x28223BE20](v4 - 8);
  v13 = &v12 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED998B0, &qword_243AC79F0);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v12 - v8;
  v1[2] = 0;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_243A73738();
  sub_243AC2FE8();
  if (v2)
  {

    swift_deallocPartialClassInstance();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98A38, qword_243AC7210);
    sub_243A7378C();
    v10 = v13;
    sub_243AC2E78();
    (*(v7 + 8))(v9, v6);
    sub_243A22814(v10, v1 + OBJC_IVAR____TtC21CloudRecommendationUI12CancelAction_userInfo, &qword_27ED98D60, &unk_243AC4FF0);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v1;
}

uint64_t sub_243A72C40()
{
  sub_243A7363C(v0 + OBJC_IVAR____TtC21CloudRecommendationUI12CancelAction_userInfo);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for CancelAction(uint64_t a1)
{
  result = qword_27ED99888;
  if (!qword_27ED99888)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_243A72D00(uint64_t a1)
{
  sub_243A31A9C(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_243A72D9C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_243A1FEA8;

  return sub_243A730F8(a1);
}

uint64_t sub_243A72E4C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED98D88, &qword_243AC5030);
  sub_243A32C74();
  a2[3] = swift_getOpaqueTypeMetadata2();
  a2[4] = swift_getOpaqueTypeConformance2();
  __swift_allocate_boxed_opaque_existential_1(a2);

  sub_243AC1ED8();
}

id *sub_243A73010@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = swift_allocObject();
  result = sub_243A729D8(a1);
  if (!v2)
  {
    *a2 = v5;
  }

  return result;
}

uint64_t sub_243A730F8(uint64_t a1)
{
  v2[7] = a1;
  v2[8] = v1;
  v3 = sub_243AC1528();
  v2[9] = v3;
  v2[10] = *(v3 - 8);
  v2[11] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98D60, &unk_243AC4FF0);
  v2[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_243A731F0, 0, 0);
}

_OWORD *sub_243A731F0()
{
  v1 = v0[12];
  sub_243A735CC(v0[8] + OBJC_IVAR____TtC21CloudRecommendationUI12CancelAction_userInfo, v1);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98A38, qword_243AC7210);
  v3 = *(v2 - 8);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    v4 = v0[8];
    sub_243A7363C(v0[12]);
    v5 = *(v4 + 16);
    if (!v5)
    {
LABEL_22:

      v29 = v0[1];

      return v29();
    }

LABEL_3:
    v6 = v5;
LABEL_4:
    sub_243A1FBF8();

    goto LABEL_22;
  }

  sub_243A22438();
  sub_243AC14D8();
  v7 = v0[10];
  (*(v3 + 8))(v0[12], v2);
  v8 = v0[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98A20, &qword_243AC4830);
  result = sub_243AC2E08();
  v10 = result;
  v11 = 0;
  v12 = *(v8 + 64);
  v33 = result;
  v13 = 1 << *(v8 + 32);
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v15 = v14 & v12;
  v16 = (v13 + 63) >> 6;
  v32 = v7;
  v31 = (v7 + 8);
  v30 = result + 4;
  if ((v14 & v12) == 0)
  {
LABEL_11:
    v18 = v11;
    while (1)
    {
      v11 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_26;
      }

      if (v11 >= v16)
      {
        break;
      }

      v19 = *(v8 + 64 + 8 * v11);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
        goto LABEL_16;
      }
    }

    v28 = v0[8];

    v5 = *(v28 + 16);
    if (!v5)
    {
      goto LABEL_22;
    }

    if (v10)
    {
      v6 = v5;
      sub_243A724E8(v10);

      goto LABEL_4;
    }

    goto LABEL_3;
  }

  while (1)
  {
    v17 = __clz(__rbit64(v15));
    v15 &= v15 - 1;
LABEL_16:
    v20 = v17 | (v11 << 6);
    v21 = (*(v8 + 48) + 16 * v20);
    v22 = *v21;
    v23 = v21[1];
    (*(v32 + 16))(v0[11], *(v8 + 56) + *(v32 + 72) * v20, v0[9]);

    sub_243A64778(v0 + 2);
    (*v31)(v0[11], v0[9]);
    *(v30 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
    v24 = (v33[6] + 16 * v20);
    *v24 = v22;
    v24[1] = v23;
    v10 = v33;
    result = sub_243A21C48(v0 + 1, (v33[7] + 32 * v20));
    v25 = v33[2];
    v26 = __OFADD__(v25, 1);
    v27 = v25 + 1;
    if (v26)
    {
      break;
    }

    v33[2] = v27;
    if (!v15)
    {
      goto LABEL_11;
    }
  }

LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_243A735CC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98D60, &unk_243AC4FF0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_243A7363C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98D60, &unk_243AC4FF0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_243A736AC(void **a1)
{
  v2 = *a1;
  v4 = *(v1 + 16);
  *(v1 + 16) = *a1;
  v3 = v2;
}

uint64_t sub_243A736F0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_243A73738()
{
  result = qword_27ED998B8;
  if (!qword_27ED998B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED998B8);
  }

  return result;
}

unint64_t sub_243A7378C()
{
  result = qword_27ED98AC0;
  if (!qword_27ED98AC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED98A38, qword_243AC7210);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED98AC0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CancelAction.CodingKeys(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for CancelAction.CodingKeys(_WORD *result, int a2, int a3)
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

unint64_t sub_243A738D4()
{
  result = qword_27ED998C0;
  if (!qword_27ED998C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED998C0);
  }

  return result;
}

unint64_t sub_243A7392C()
{
  result = qword_27ED998C8;
  if (!qword_27ED998C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED998C8);
  }

  return result;
}

unint64_t sub_243A73984()
{
  result = qword_27ED998D0;
  if (!qword_27ED998D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED998D0);
  }

  return result;
}

uint64_t sub_243A739D8@<X0>(BOOL *a2@<X8>)
{
  v3 = sub_243AC2E58();

  *a2 = v3 != 0;
  return result;
}

uint64_t sub_243A73A2C@<X0>(BOOL *a3@<X8>)
{
  v4 = sub_243AC2E58();

  *a3 = v4 != 0;
  return result;
}

uint64_t sub_243A73A84(uint64_t a1)
{
  v2 = sub_243A74734();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_243A73AC0(uint64_t a1)
{
  v2 = sub_243A74734();

  return MEMORY[0x2821FE720](a1, v2);
}

id *sub_243A73AFC(void *a1)
{
  v14 = *v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98D60, &unk_243AC4FF0);
  MEMORY[0x28223BE20](v4 - 8);
  v13 = &v12 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED998F8, &qword_243AC7CB8);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v12 - v8;
  v1[2] = 0;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_243A74734();
  sub_243AC2FE8();
  if (v2)
  {

    swift_deallocPartialClassInstance();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98A38, qword_243AC7210);
    sub_243A7378C();
    v10 = v13;
    sub_243AC2E78();
    (*(v7 + 8))(v9, v6);
    sub_243A74788(v10, v1 + OBJC_IVAR____TtC21CloudRecommendationUI12FinishAction_userInfo);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v1;
}

uint64_t sub_243A73D54()
{
  sub_243A7363C(v0 + OBJC_IVAR____TtC21CloudRecommendationUI12FinishAction_userInfo);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for FinishAction(uint64_t a1)
{
  result = qword_27ED998D8;
  if (!qword_27ED998D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_243A73E14(uint64_t a1)
{
  sub_243A31A9C(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_243A73EB0(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_243A1FEA8;

  return sub_243A7420C(a1);
}

uint64_t sub_243A73F60@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED98D88, &qword_243AC5030);
  sub_243A32C74();
  a2[3] = swift_getOpaqueTypeMetadata2();
  a2[4] = swift_getOpaqueTypeConformance2();
  __swift_allocate_boxed_opaque_existential_1(a2);

  sub_243AC1ED8();
}

id *sub_243A74124@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = swift_allocObject();
  result = sub_243A73AFC(a1);
  if (!v2)
  {
    *a2 = v5;
  }

  return result;
}

uint64_t sub_243A7420C(uint64_t a1)
{
  v2[7] = a1;
  v2[8] = v1;
  v3 = sub_243AC1528();
  v2[9] = v3;
  v2[10] = *(v3 - 8);
  v2[11] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98D60, &unk_243AC4FF0);
  v2[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_243A74304, 0, 0);
}

_OWORD *sub_243A74304()
{
  v1 = v0[12];
  sub_243A735CC(v0[8] + OBJC_IVAR____TtC21CloudRecommendationUI12FinishAction_userInfo, v1);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98A38, qword_243AC7210);
  v3 = *(v2 - 8);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    v4 = v0[8];
    sub_243A7363C(v0[12]);
    v5 = *(v4 + 16);
    if (!v5)
    {
LABEL_22:

      v31 = v0[1];

      return v31();
    }

LABEL_3:
    v6 = v5;
    v7 = 0;
LABEL_4:
    sub_243A1EED8(v7);

    goto LABEL_22;
  }

  sub_243A22438();
  sub_243AC14D8();
  v8 = v0[10];
  (*(v3 + 8))(v0[12], v2);
  v9 = v0[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98A20, &qword_243AC4830);
  result = sub_243AC2E08();
  v11 = result;
  v12 = 0;
  v13 = *(v9 + 64);
  v35 = result;
  v14 = 1 << *(v9 + 32);
  v15 = -1;
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  v16 = v15 & v13;
  v17 = (v14 + 63) >> 6;
  v34 = v8;
  v33 = (v8 + 8);
  v32 = result + 4;
  if ((v15 & v13) == 0)
  {
LABEL_11:
    v19 = v12;
    while (1)
    {
      v12 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_26;
      }

      if (v12 >= v17)
      {
        break;
      }

      v20 = *(v9 + 64 + 8 * v12);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_16;
      }
    }

    v29 = v0[8];

    v5 = *(v29 + 16);
    if (!v5)
    {
      goto LABEL_22;
    }

    if (v11)
    {
      v6 = v5;
      v30 = sub_243A724E8(v11);

      v7 = v30;
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  while (1)
  {
    v18 = __clz(__rbit64(v16));
    v16 &= v16 - 1;
LABEL_16:
    v21 = v18 | (v12 << 6);
    v22 = (*(v9 + 48) + 16 * v21);
    v23 = *v22;
    v24 = v22[1];
    (*(v34 + 16))(v0[11], *(v9 + 56) + *(v34 + 72) * v21, v0[9]);

    sub_243A64778(v0 + 2);
    (*v33)(v0[11], v0[9]);
    *(v32 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
    v25 = (v35[6] + 16 * v21);
    *v25 = v23;
    v25[1] = v24;
    v11 = v35;
    result = sub_243A21C48(v0 + 1, (v35[7] + 32 * v21));
    v26 = v35[2];
    v27 = __OFADD__(v26, 1);
    v28 = v26 + 1;
    if (v27)
    {
      break;
    }

    v35[2] = v28;
    if (!v16)
    {
      goto LABEL_11;
    }
  }

LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_243A746EC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_243A74734()
{
  result = qword_27ED99900;
  if (!qword_27ED99900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED99900);
  }

  return result;
}

uint64_t sub_243A74788(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98D60, &unk_243AC4FF0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_243A7480C()
{
  result = qword_27ED99908;
  if (!qword_27ED99908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED99908);
  }

  return result;
}

unint64_t sub_243A74864()
{
  result = qword_27ED99910;
  if (!qword_27ED99910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED99910);
  }

  return result;
}

unint64_t sub_243A748BC()
{
  result = qword_27ED99918;
  if (!qword_27ED99918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED99918);
  }

  return result;
}

uint64_t sub_243A74910(void *a1, void *a2)
{
  v3 = v2;
  v63 = a2;
  v5 = sub_243AC1208();
  v66 = *(v5 - 8);
  v6 = MEMORY[0x28223BE20](v5);
  v8 = &v60 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v65 = &v60 - v9;
  v10 = sub_243AC1108();
  v61 = *(v10 - 8);
  v11 = MEMORY[0x28223BE20](v10);
  v68 = &v60 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v14 = &v60 - v13;
  v15 = OBJC_IVAR____TtC21CloudRecommendationUI23TurnOnAppsActionHandler_remoteUIPresenter;
  if (!*(v3 + OBJC_IVAR____TtC21CloudRecommendationUI23TurnOnAppsActionHandler_remoteUIPresenter))
  {
    v16 = [objc_allocWithZone(CERemoteUIPresenter) initWithAccount:*(v3 + OBJC_IVAR____TtC21CloudRecommendationUI23TurnOnAppsActionHandler_account) presenter:*(v3 + OBJC_IVAR____TtC21CloudRecommendationUI23TurnOnAppsActionHandler_presenter)];
    v17 = *(v3 + v15);
    *(v3 + v15) = v16;
  }

  v18 = *(v3 + OBJC_IVAR____TtC21CloudRecommendationUI23TurnOnAppsActionHandler_activeRecommendation);
  *(v3 + OBJC_IVAR____TtC21CloudRecommendationUI23TurnOnAppsActionHandler_activeRecommendation) = a1;
  v19 = a1;

  v20 = *(v3 + v15);
  if (v20)
  {
    [v20 setDelegate_];
  }

  v64 = v10;
  v21 = *(v3 + OBJC_IVAR____TtC21CloudRecommendationUI23TurnOnAppsActionHandler_account);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ED999C0, &unk_243AC4C40);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_243AC4AC0;
  *(inited + 32) = sub_243AC2858();
  *(inited + 40) = v23;
  *(inited + 48) = sub_243AC2858();
  *(inited + 56) = v24;
  *(inited + 64) = sub_243AC2858();
  *(inited + 72) = v25;
  sub_243A9CBC8(v21, inited);
  v27 = v26;
  swift_setDeallocating();
  swift_arrayDestroy();
  v28 = *(v3 + v15);
  if (v28)
  {
    type metadata accessor for Dataclass(0);
    sub_243A750D8();
    v29 = v28;
    v30 = sub_243AC2AD8();
    [v29 setDataclasses_];
  }

  v62 = v15;
  v67 = v5;
  v31 = *(v27 + 16);

  v69 = v31;
  sub_243AC2EB8();
  sub_243AC10D8();

  v32 = *(v3 + OBJC_IVAR____TtC21CloudRecommendationUI23TurnOnAppsActionHandler_context);
  v69 = 0;
  v70 = 0xE000000000000000;
  v33 = 0x74756F6B61657262;
  v34 = 0xEA00000000006C61;
  v35 = 0x75747865746E6F63;
  if (v32 != 3)
  {
    v35 = 0xD000000000000012;
    v34 = 0x8000000243ACBCD0;
  }

  if (v32 == 2)
  {
    v34 = 0xE800000000000000;
  }

  else
  {
    v33 = v35;
  }

  v36 = 0xE400000000000000;
  v37 = 1852399981;
  if (v32)
  {
    v37 = 0x6574656C706D6F63;
    v36 = 0xE900000000000064;
  }

  if (v32 <= 1)
  {
    v38 = v37;
  }

  else
  {
    v38 = v33;
  }

  if (v32 <= 1)
  {
    v39 = v36;
  }

  else
  {
    v39 = v34;
  }

  v40 = v14;
  MEMORY[0x245D46C90](v38, v39);

  v41 = v68;
  sub_243AC10D8();

  v42 = [v63 actionURL];
  sub_243AC11D8();

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ED999D0, &qword_243AC7E50);
  v43 = v61;
  v44 = *(v61 + 72);
  v45 = (*(v61 + 80) + 32) & ~*(v61 + 80);
  v46 = swift_allocObject();
  *(v46 + 16) = xmmword_243AC5F30;
  v47 = v46 + v45;
  v48 = v43;
  v49 = *(v43 + 16);
  v63 = v40;
  v50 = v40;
  v51 = v64;
  v49(v47, v50, v64);
  v49(v47 + v44, v41, v51);
  v52 = v65;
  sub_243AC11F8();

  v53 = v67;
  v54 = *(v66 + 8);
  v54(v8, v67);
  v55 = *(v3 + v62);
  if (v55)
  {
    v56 = v55;
    v57 = sub_243AC11C8();
    [v56 beginRUIFlowWithURL_];
  }

  v54(v52, v53);
  v58 = *(v48 + 8);
  v58(v68, v51);
  return (v58)(v63, v51);
}

id sub_243A74FF4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TurnOnAppsActionHandler();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_243A750D8()
{
  result = qword_27ED98A08;
  if (!qword_27ED98A08)
  {
    type metadata accessor for Dataclass(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED98A08);
  }

  return result;
}

void sub_243A75130(void *a1, const char *a2, ...)
{
  v3 = *(v2 + OBJC_IVAR____TtC21CloudRecommendationUI23TurnOnAppsActionHandler_activeRecommendation);
  if (v3)
  {
    if (!a1)
    {
      v19 = *(v2 + OBJC_IVAR____TtC21CloudRecommendationUI23TurnOnAppsActionHandler_delegate);
      if (v19)
      {
        LOBYTE(v23) = *(v19 + 136);
        v20 = v3;
        swift_unknownObjectRetain();
        sub_243A3CF58(v20, 0, &v23);
        swift_unknownObjectRelease();
      }

      v21 = *(v2 + OBJC_IVAR____TtC21CloudRecommendationUI23TurnOnAppsActionHandler_remoteUIPresenter);
      *(v2 + OBJC_IVAR____TtC21CloudRecommendationUI23TurnOnAppsActionHandler_remoteUIPresenter) = 0;
      goto LABEL_16;
    }

    v6 = qword_27ED98910;
    v22 = v3;
    if (v6 != -1)
    {
      swift_once();
    }

    v7 = sub_243AC1468();
    __swift_project_value_buffer(v7, qword_27EDA14A8);
    v8 = a1;
    v9 = sub_243AC1448();
    v10 = sub_243AC2B58();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v23 = v12;
      *v11 = 136315138;
      swift_getErrorValue();
      v13 = sub_243AC2F58();
      v15 = sub_243AB73D8(v13, v14, &v23);

      *(v11 + 4) = v15;
      _os_log_impl(&dword_243A1B000, v9, v10, a2, v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v12);
      MEMORY[0x245D47D20](v12, -1, -1);
      MEMORY[0x245D47D20](v11, -1, -1);

      return;
    }
  }

  else
  {
    if (qword_27ED98910 != -1)
    {
      swift_once();
    }

    v16 = sub_243AC1468();
    __swift_project_value_buffer(v16, qword_27EDA14A8);
    v22 = sub_243AC1448();
    v17 = sub_243AC2B58();
    if (os_log_type_enabled(v22, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_243A1B000, v22, v17, "Active recommendation unavailable, bailing.", v18, 2u);
      MEMORY[0x245D47D20](v18, -1, -1);
    }
  }

  v21 = v22;
LABEL_16:
}

void RecommendationBreakout.init(controller:account:presenter:)(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  sub_243AC2058();
  *(a4 + 24) = v10;
  *(a4 + 32) = v11;
  swift_unknownObjectWeakInit();
  type metadata accessor for RecommendationsController(0);
  sub_243A76918(&qword_27ED98FB0, type metadata accessor for RecommendationsController, &protocol conformance descriptor for RecommendationsController);

  *a4 = sub_243AC1828();
  *(a4 + 8) = v8;
  type metadata accessor for AppProtectionManager();
  inited = swift_initStaticObject();
  *(a4 + 16) = sub_243A762E4(a1, a2, 2, inited);
  swift_unknownObjectWeakAssign();
}

uint64_t RecommendationBreakout.body.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_243AC16A8();

  v3[6] = v3[0];
  sub_243A76448(v0, v3);
  v1 = swift_allocObject();
  sub_243A76484(v3, v1 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98F08, &qword_243AC5DF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED999E0, &qword_243AC7EB0);
  sub_243A491E8(&qword_27ED990E8, &qword_27ED98F08, &qword_243AC5DF0, MEMORY[0x277D83980]);
  sub_243A764C4();
  sub_243A76918(&qword_27ED99180, type metadata accessor for RecommendationSectionViewModel, &unk_243AC5CC0);
  return sub_243AC20F8();
}

uint64_t sub_243A756BC(void *a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED999F8, &qword_243AC7EB8);
  sub_243A76884(&qword_27ED999F0, &qword_27ED999F8, &qword_243AC7EB8, sub_243A76580);
  return sub_243AC2118();
}

uint64_t sub_243A75764(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_243AC16A8();

  v5[6] = v5[0];
  sub_243A76448(a2, v5);
  v3 = swift_allocObject();
  sub_243A76484(v5, v3 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98F40, &qword_243AC52E0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED99A08, &unk_243AC7EC0);
  sub_243A491E8(&qword_27ED991A0, &qword_27ED98F40, &qword_243AC52E0, MEMORY[0x277D83980]);
  sub_243A76580();
  sub_243A76918(&qword_27ED991A8, sub_243A4FEC4, MEMORY[0x277CFB100]);
  return sub_243AC20F8();
}

uint64_t sub_243A75900@<X0>(void **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED99A18, &qword_243AC7ED8);
  MEMORY[0x28223BE20](v6);
  v8 = v37 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED99A40, &qword_243AC8010);
  MEMORY[0x28223BE20](v9);
  v11 = v37 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED99138, &unk_243AC5E20);
  MEMORY[0x28223BE20](v12);
  v14 = v37 - v13;
  v15 = *a1;
  if ([v15 completed])
  {
    sub_243A76448(a2, v43);
    v16 = swift_allocObject();
    sub_243A76484(v43, v16 + 16);
    v39 = v15;
    sub_243A4FEC4();
    v17 = v15;
    sub_243AC2058();
    v18 = v42;
    *v14 = v41;
    *(v14 + 1) = v18;
    *(v14 + 4) = 16777217;
    LOBYTE(v39) = 0;
    sub_243AC2058();
    v19 = v42;
    v14[24] = v41;
    *(v14 + 4) = v19;
    *(v14 + 5) = sub_243A76BB0;
    *(v14 + 6) = v16;
    *(v14 + 7) = nullsub_1;
    *(v14 + 8) = 0;
    v20 = *(type metadata accessor for Card(0) + 48);
    *&v14[v20] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED991C0, &unk_243AC5EE0);
    swift_storeEnumTagMultiPayload();
    v21 = &v14[*(v12 + 36)];
    *v21 = xmmword_243AC5D40;
    *(v21 + 2) = 0;
    *(v21 + 3) = 0;
    v21[32] = 0;
    sub_243A224B4(v14, v11, &qword_27ED99138, &unk_243AC5E20);
    swift_storeEnumTagMultiPayload();
    sub_243A4FA94();
    sub_243A7660C();
    sub_243AC1AE8();
    v22 = v14;
    v23 = &qword_27ED99138;
    v24 = &unk_243AC5E20;
  }

  else
  {
    sub_243A76448(a2, v43);
    v25 = swift_allocObject();
    v37[2] = a3;
    v26 = v25;
    sub_243A76484(v43, v25 + 16);
    sub_243A76448(a2, &v41);
    v27 = swift_allocObject();
    sub_243A76484(&v41, v27 + 16);
    *(v27 + 64) = v15;
    v38 = v15;
    sub_243A4FEC4();
    v37[1] = v9;
    v28 = v15;
    sub_243AC2058();
    v29 = v40;
    *v8 = v39;
    *(v8 + 1) = v29;
    *(v8 + 4) = 0x1000000;
    LOBYTE(v38) = 0;
    sub_243AC2058();
    v30 = v40;
    v8[24] = v39;
    *(v8 + 4) = v30;
    *(v8 + 5) = sub_243A76960;
    *(v8 + 6) = v26;
    *(v8 + 7) = sub_243A76980;
    *(v8 + 8) = v27;
    v31 = *(type metadata accessor for Card(0) + 48);
    *&v8[v31] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED991C0, &unk_243AC5EE0);
    swift_storeEnumTagMultiPayload();
    sub_243A76448(a2, v43);
    v32 = swift_allocObject();
    sub_243A76484(v43, v32 + 16);
    *(v32 + 64) = v28;
    v33 = &v8[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED99A28, &qword_243AC7EE0) + 36)];
    *v33 = sub_243A76A1C;
    v33[1] = v32;
    v33[2] = 0;
    v33[3] = 0;
    v34 = &v8[*(v6 + 36)];
    *v34 = xmmword_243AC5D40;
    *(v34 + 2) = 0;
    *(v34 + 3) = 0;
    v34[32] = 0;
    sub_243A224B4(v8, v11, &qword_27ED99A18, &qword_243AC7ED8);
    swift_storeEnumTagMultiPayload();
    sub_243A4FA94();
    sub_243A7660C();
    v35 = v28;
    sub_243AC1AE8();
    v22 = v8;
    v23 = &qword_27ED99A18;
    v24 = &qword_243AC7ED8;
  }

  return sub_243A2251C(v22, v23, v24);
}

void sub_243A75E10(void *a1, void *a2, uint64_t a3)
{
  if (*(a3 + 16))
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    sub_243A83E5C(a1, a2, Strong);
  }
}

uint64_t sub_243A75E90(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98998, &qword_243AC4FD0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v17 - v5;
  v7 = *(a1 + 8);
  v8 = [a2 identifier];
  v9 = sub_243AC2858();
  v11 = v10;

  v12 = sub_243AC2A98();
  (*(*(v12 - 8) + 56))(v6, 1, 1, v12);
  v13 = swift_allocObject();
  *(v13 + 16) = 0;
  *(v13 + 24) = 0;
  *(v13 + 32) = v7;
  *(v13 + 40) = v9;
  *(v13 + 48) = v11;
  *(v13 + 56) = 2;

  sub_243A3306C(0, 0, v6, &unk_243AC87F0, v13);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98EE8, &unk_243AC8050);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_243AC51A0;
  *(inited + 32) = a2;
  HIBYTE(v17) = 2;
  v15 = a2;
  sub_243A3C784(inited, &v17 + 7);
  swift_setDeallocating();
  return swift_arrayDestroy();
}

uint64_t sub_243A76050()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_243AC16A8();

  v3[6] = v3[0];
  sub_243A76448(v0, v3);
  v1 = swift_allocObject();
  sub_243A76484(v3, v1 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98F08, &qword_243AC5DF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED999E0, &qword_243AC7EB0);
  sub_243A491E8(&qword_27ED990E8, &qword_27ED98F08, &qword_243AC5DF0, MEMORY[0x277D83980]);
  sub_243A764C4();
  sub_243A76918(&qword_27ED99180, type metadata accessor for RecommendationSectionViewModel, &unk_243AC5CC0);
  return sub_243AC20F8();
}

uint64_t sub_243A761E8@<X0>(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_243AC16A8();

  *a2 = v4;
  return result;
}

uint64_t sub_243A76268(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_243AC16B8();
}

uint64_t sub_243A762E4(uint64_t a1, uint64_t a2, char a3, uint64_t *a4)
{
  v7 = *a4;
  v16[3] = v7;
  v16[4] = &off_2856BC228;
  v16[0] = a4;
  type metadata accessor for ActionsController();
  v8 = swift_allocObject();
  v9 = __swift_mutable_project_boxed_opaque_existential_1(v16, v7);
  MEMORY[0x28223BE20](v9);
  v11 = (&v16[-1] - v10);
  (*(v12 + 16))(&v16[-1] - v10);
  v13 = *v11;
  *(v8 + 56) = v7;
  *(v8 + 64) = &off_2856BC228;
  *(v8 + 24) = a2;
  *(v8 + 32) = v13;
  *(v8 + 72) = 0u;
  *(v8 + 88) = 0u;
  *(v8 + 104) = 0u;
  *(v8 + 120) = 0u;
  *(v8 + 16) = a1;
  *(v8 + 136) = a3;
  __swift_destroy_boxed_opaque_existential_1(v16);
  return v8;
}

unint64_t sub_243A764C4()
{
  result = qword_27ED999E8;
  if (!qword_27ED999E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED999E0, &qword_243AC7EB0);
    sub_243A76884(&qword_27ED999F0, &qword_27ED999F8, &qword_243AC7EB8, sub_243A76580);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED999E8);
  }

  return result;
}

unint64_t sub_243A76580()
{
  result = qword_27ED99A00;
  if (!qword_27ED99A00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED99A08, &unk_243AC7EC0);
    sub_243A4FA94();
    sub_243A7660C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED99A00);
  }

  return result;
}

unint64_t sub_243A7660C()
{
  result = qword_27ED99A10;
  if (!qword_27ED99A10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED99A18, &qword_243AC7ED8);
    sub_243A766C4();
    sub_243A491E8(&qword_27ED99150, &qword_27ED99158, &qword_243AC7ED0, MEMORY[0x277CE04A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED99A10);
  }

  return result;
}

unint64_t sub_243A766C4()
{
  result = qword_27ED99A20;
  if (!qword_27ED99A20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED99A28, &qword_243AC7EE0);
    sub_243A76918(&qword_27ED99148, type metadata accessor for Card, &protocol conformance descriptor for Card);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED99A20);
  }

  return result;
}

uint64_t sub_243A7679C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_243A767E4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_243A76884(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
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

uint64_t sub_243A76918(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_243A76980()
{
  v1 = *(v0 + 64);
  v3 = 2;
  return sub_243A3C118(v1, &v3);
}

uint64_t objectdestroy_21Tm()
{

  MEMORY[0x245D47DE0](v0 + 56);

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t objectdestroyTm_5()
{

  MEMORY[0x245D47DE0](v0 + 56);

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_243A76A78()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 57, 7);
}

uint64_t sub_243A76AC0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = *(v1 + 56);
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_243A1FEA8;

  return sub_243A40910(a1, v4, v5, v6, v7, v8, v9);
}

id RecommendationAnalytics.__allocating_init(account:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = sub_243A7A32C(a1);

  return v4;
}

uint64_t RecommendationsViewContext.rawValue.getter()
{
  v1 = *v0;
  v2 = 1852399981;
  v3 = 0x74756F6B61657262;
  v4 = 0x75747865746E6F63;
  if (v1 != 3)
  {
    v4 = 0xD000000000000012;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x6574656C706D6F63;
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

unint64_t sub_243A76C94(unsigned __int8 a1)
{
  v1 = 0xD000000000000028;
  if (a1 > 5u)
  {
    v5 = 0xD000000000000022;
    v6 = 0xD00000000000002DLL;
    if (a1 != 10)
    {
      v6 = 0xD00000000000002CLL;
    }

    if (a1 == 9)
    {
      v6 = 0xD000000000000022;
    }

    if (a1 == 7)
    {
      v5 = 0xD000000000000021;
    }

    if (a1 != 6)
    {
      v1 = v5;
    }

    if (a1 <= 8u)
    {
      return v1;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v2 = 0xD000000000000026;
    if (a1 != 3)
    {
      v2 = 0xD000000000000028;
    }

    v3 = 0xD000000000000032;
    if (a1 == 1)
    {
      v3 = 0xD000000000000024;
    }

    if (!a1)
    {
      v3 = 0xD000000000000020;
    }

    if (a1 <= 2u)
    {
      return v3;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_243A76DDC()
{
  v1 = *v0;
  sub_243AC2FB8();
  MEMORY[0x245D47390](v1 - 1);
  return sub_243AC2FD8();
}

uint64_t sub_243A76E54(uint64_t a1)
{
  v2 = *v1;
  sub_243AC2FB8();
  MEMORY[0x245D47390](v2 - 1);
  return sub_243AC2FD8();
}

uint64_t sub_243A76E98@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_243A7AB90(*a1);
  *a2 = result;
  return result;
}

CloudRecommendationUI::RecommendationsViewContext_optional __swiftcall RecommendationsViewContext.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_243AC2E58();

  v5 = 5;
  if (v3 < 5)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_243A76F3C()
{
  sub_243AC2FB8();
  sub_243AC28A8();

  return sub_243AC2FD8();
}

uint64_t sub_243A77024(uint64_t a1)
{
  sub_243AC28A8();
}

uint64_t sub_243A770F8(uint64_t a1)
{
  sub_243AC2FB8();
  sub_243AC28A8();

  return sub_243AC2FD8();
}

void sub_243A771E8(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 1852399981;
  v5 = 0xE800000000000000;
  v6 = 0x74756F6B61657262;
  v7 = 0xEA00000000006C61;
  v8 = 0x75747865746E6F63;
  if (v2 != 3)
  {
    v8 = 0xD000000000000012;
    v7 = 0x8000000243ACBCD0;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x6574656C706D6F63;
    v3 = 0xE900000000000064;
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

uint64_t sub_243A7728C(void *a1, void *a2)
{
  sub_243AC2D08();

  strcpy(v13, "totalStorage: ");
  v4 = [a1 description];
  v5 = sub_243AC2858();
  v7 = v6;

  MEMORY[0x245D46C90](v5, v7);

  MEMORY[0x245D46C90](0x6F74536465737520, 0xEE00203A65676172);
  v8 = [a2 description];
  v9 = sub_243AC2858();
  v11 = v10;

  MEMORY[0x245D46C90](v9, v11);

  return v13[0];
}

id RecommendationAnalytics.init(account:)(void *a1)
{
  v2 = sub_243A7A32C(a1);

  return v2;
}

uint64_t sub_243A7741C(void *a1, void *a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED992A0, qword_243AC63F8);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v24 - v10;
  [a2 doubleValue];
  v12 = objc_opt_self();
  v13 = [v12 bytes];
  sub_243A2CFF0(0, &qword_27ED992A8, 0x277CCAE18);
  sub_243AC1068();
  v14 = [v12 gibibytes];
  sub_243AC1088();

  sub_243AC1078();
  *(v2 + OBJC_IVAR____TtC21CloudRecommendationUI23RecommendationAnalytics_totalStorageInGB) = v15;
  v16 = sub_243A7ABA4(a1, a2);
  sub_243AC1078();
  v18 = v17;
  v19 = *(v6 + 8);
  v19(v9, v5);
  result = (v19)(v11, v5);
  if (v16 <= 50)
  {
    v21 = 1;
  }

  else
  {
    v21 = 2;
  }

  if (v16 <= 50)
  {
    v22 = 3;
  }

  else
  {
    v22 = 4;
  }

  if (v18 >= 6.0 || v18 < 0.0)
  {
    v21 = v22;
  }

  *(v2 + OBJC_IVAR____TtC21CloudRecommendationUI23RecommendationAnalytics_userType) = v21;
  return result;
}

unint64_t sub_243A77640()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98FD0, &unk_243AC58D0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_243AC8060;
  *(inited + 32) = 0x70756B636162;
  *(inited + 40) = 0xE600000000000000;
  v2 = OBJC_IVAR____TtC21CloudRecommendationUI23RecommendationAnalytics_account;
  [*(v0 + OBJC_IVAR____TtC21CloudRecommendationUI23RecommendationAnalytics_account) isEnabledForDataclass_];
  *(inited + 48) = sub_243AC2A08();
  *(inited + 56) = 0x6576697264;
  *(inited + 64) = 0xE500000000000000;
  [*(v0 + v2) isEnabledForDataclass_];
  *(inited + 72) = sub_243AC2A08();
  *(inited + 80) = 0x6D726F6665657266;
  *(inited + 88) = 0xE800000000000000;
  [*(v0 + v2) isEnabledForDataclass_];
  *(inited + 96) = sub_243AC2A08();
  *(inited + 104) = 1819304809;
  *(inited + 112) = 0xE400000000000000;
  [*(v0 + v2) isEnabledForDataclass_];
  *(inited + 120) = sub_243AC2A08();
  *(inited + 128) = 0x736567617373656DLL;
  *(inited + 136) = 0xE800000000000000;
  [*(v0 + v2) isEnabledForDataclass_];
  *(inited + 144) = sub_243AC2A08();
  *(inited + 152) = 0x7365746F6ELL;
  *(inited + 160) = 0xE500000000000000;
  [*(v0 + v2) isEnabledForDataclass_];
  *(inited + 168) = sub_243AC2A08();
  *(inited + 176) = 0x6570795472657375;
  *(inited + 184) = 0xE800000000000000;
  *(inited + 192) = sub_243AC2B08();
  *(inited + 200) = 0xD000000000000010;
  *(inited + 208) = 0x8000000243ACD910;
  *(inited + 216) = sub_243AC2AB8();
  v3 = sub_243A2E9D8(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98FD8, &unk_243AC82C0);
  swift_arrayDestroy();
  return v3;
}

void sub_243A77888(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED99AB0, &qword_243AC8310);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = aBlock - v6;
  v8 = *(a2 + OBJC_IVAR____TtC21CloudRecommendationUI23RecommendationAnalytics_storageDataController);
  (*(v5 + 16))(aBlock - v6, a1, v4);
  v9 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v10 = swift_allocObject();
  (*(v5 + 32))(v10 + v9, v7, v4);
  aBlock[4] = sub_243A7B21C;
  aBlock[5] = v10;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_243A77C44;
  aBlock[3] = &block_descriptor_103;
  v11 = _Block_copy(aBlock);
  v12 = v8;

  [v12 fetchCloudStorageInfo:1 completion:v11];
  _Block_release(v11);
}

uint64_t sub_243A77A58(void *a1, void *a2)
{
  if (a1 && a2)
  {
    v4 = qword_27ED98918;
    v5 = a1;
    v6 = a2;
    if (v4 != -1)
    {
      swift_once();
    }

    v7 = sub_243AC1468();
    __swift_project_value_buffer(v7, qword_27EDA14C0);
    v8 = v5;
    v9 = v6;
    v10 = sub_243AC1448();
    v11 = sub_243AC2B48();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v13 = v21;
      *v12 = 136315138;
      v14 = v8;
      v15 = v9;
      v16 = sub_243A7728C(v14, v15);
      v18 = v17;

      v19 = sub_243AB73D8(v16, v18, &v21);

      *(v12 + 4) = v19;
      _os_log_impl(&dword_243A1B000, v10, v11, "Fetched storage info %s", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v13);
      MEMORY[0x245D47D20](v13, -1, -1);
      MEMORY[0x245D47D20](v12, -1, -1);
    }

    v21 = a1;
    v22 = a2;
  }

  else
  {
    v21 = 0;
    v22 = 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED99AB0, &qword_243AC8310);
  return sub_243AC2A38();
}

void sub_243A77C44(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(a2, a3);
}

uint64_t sub_243A77CD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  *(v6 + 384) = a6;
  *(v6 + 272) = a4;
  *(v6 + 280) = a5;
  return MEMORY[0x2822009F8](sub_243A77CF4, 0, 0);
}

uint64_t sub_243A77CF4()
{
  v14 = v0;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[36] = Strong;
  if (Strong)
  {
    v2 = Strong;
    v0[37] = sub_243A77640();
    v3 = swift_task_alloc();
    v0[38] = v3;
    *(v3 + 16) = v2;
    v4 = swift_task_alloc();
    v0[39] = v4;
    v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED99A98, &qword_243AC82F8);
    *v4 = v0;
    v4[1] = sub_243A77F7C;

    return MEMORY[0x2822007B8](v0 + 30, 0, 0, 0xD000000000000012, 0x8000000243ACD9B0, sub_243A7AE88, v3, v5);
  }

  else
  {
    if (qword_27ED98918 != -1)
    {
      swift_once();
    }

    v6 = sub_243AC1468();
    __swift_project_value_buffer(v6, qword_27EDA14C0);
    v7 = sub_243AC1448();
    v8 = sub_243AC2B48();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v13 = v10;
      *v9 = 136315138;
      *(v9 + 4) = sub_243AB73D8(0xD00000000000001ELL, 0x8000000243ACD990, &v13);
      _os_log_impl(&dword_243A1B000, v7, v8, "%s Self unavailable bailing.", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v10);
      MEMORY[0x245D47D20](v10, -1, -1);
      MEMORY[0x245D47D20](v9, -1, -1);
    }

    v11 = v0[1];

    return v11();
  }
}

uint64_t sub_243A77F7C()
{

  return MEMORY[0x2822009F8](sub_243A78094, 0, 0);
}

uint64_t sub_243A78094()
{
  v36 = v0;
  v1 = *(v0 + 240);
  v2 = *(v0 + 248);
  *(v0 + 320) = v1;
  *(v0 + 328) = v2;
  v3 = *(v0 + 280);
  if (v1)
  {
    sub_243A7ABA4(v2, v1);
    sub_243A7741C(v2, v1);
    if (*(v3 + 16))
    {
      v4 = sub_243A2DDC0(0x696669746E656469, 0xEA00000000007265);
      if (v5)
      {
        v6 = *(*(*(v0 + 280) + 56) + 8 * v4);
        objc_opt_self();
        if (swift_dynamicCastObjCClass())
        {
          v35[0] = 0;
          v35[1] = 0;
          v7 = v6;
          sub_243AC2848();
        }
      }
    }

    v29 = *(v0 + 296);
    v30 = sub_243AC2B08();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_243A8B530(v30, 0xD000000000000015, 0x8000000243ACD9F0, isUniquelyReferenced_nonNull_native);
    *(v0 + 336) = v29;
    v32 = objc_opt_self();
    v33 = sub_243AC2818();
    *(v0 + 344) = v33;
    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 256;
    *(v0 + 24) = sub_243A78744;
    v34 = swift_continuation_init();
    *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED99AA8, &unk_243AC8300);
    *(v0 + 80) = MEMORY[0x277D85DD0];
    *(v0 + 88) = 1107296256;
    *(v0 + 96) = sub_243A2A88C;
    *(v0 + 104) = &block_descriptor_96;
    *(v0 + 112) = v34;
    [v32 requestFeatureWithId:v33 completion:v0 + 80];

    return MEMORY[0x282200938](v0 + 16);
  }

  else
  {
    v8 = *(v0 + 296);

    v9 = swift_isUniquelyReferenced_nonNull_native();
    v35[0] = v8;
    sub_243A7AE90(v3, sub_243A7A2E0, 0, v9, v35);

    v10 = v35[0];
    if (qword_27ED98918 != -1)
    {
      swift_once();
    }

    v11 = sub_243AC1468();
    __swift_project_value_buffer(v11, qword_27EDA14C0);

    v12 = sub_243AC1448();
    v13 = sub_243AC2B78();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = *(v0 + 384);
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v35[0] = v16;
      *v15 = 136315650;
      *(v15 + 4) = sub_243AB73D8(0xD00000000000001ELL, 0x8000000243ACD990, v35);
      *(v15 + 12) = 2080;
      v17 = sub_243A76C94(v14);
      v19 = sub_243AB73D8(v17, v18, v35);

      *(v15 + 14) = v19;
      *(v15 + 22) = 2080;
      sub_243A2CFF0(0, &qword_27ED99AA0, 0x277D82BB8);
      v20 = sub_243AC27E8();
      v22 = sub_243AB73D8(v20, v21, v35);

      *(v15 + 24) = v22;
      _os_log_impl(&dword_243A1B000, v12, v13, "%s Sending Event %s with payload: %s", v15, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x245D47D20](v16, -1, -1);
      MEMORY[0x245D47D20](v15, -1, -1);
    }

    v23 = *(v0 + 288);
    sub_243A76C94(*(v0 + 384));
    v24 = sub_243AC2818();

    v25 = swift_allocObject();
    *(v25 + 16) = v10;
    *(v0 + 176) = sub_243A7B150;
    *(v0 + 184) = v25;
    *(v0 + 144) = MEMORY[0x277D85DD0];
    *(v0 + 152) = 1107296256;
    *(v0 + 160) = sub_243A79670;
    *(v0 + 168) = &block_descriptor_7;
    v26 = _Block_copy((v0 + 144));

    AnalyticsSendEventLazy();

    _Block_release(v26);
    v27 = *(v0 + 8);

    return v27();
  }
}

uint64_t sub_243A78744()
{
  v1 = *(*v0 + 48);
  *(*v0 + 352) = v1;
  if (v1)
  {
    v2 = sub_243A79188;
  }

  else
  {
    v2 = sub_243A78854;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_243A78854()
{
  v29 = v0;
  v1 = *(v0 + 344);
  v2 = *(v0 + 256);
  *(v0 + 360) = v2;

  if ([v2 canUse])
  {
    *(v0 + 368) = *(*(v0 + 288) + OBJC_IVAR____TtC21CloudRecommendationUI23RecommendationAnalytics_recommendationFilter);

    v3 = swift_task_alloc();
    *(v0 + 376) = v3;
    *v3 = v0;
    v3[1] = sub_243A78C90;

    return sub_243A28A14();
  }

  else
  {
    v6 = *(v0 + 320);
    v5 = *(v0 + 328);

    v7 = *(v0 + 336);
    v8 = *(v0 + 280);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v28[0] = v7;
    sub_243A7AE90(v8, sub_243A7A2E0, 0, isUniquelyReferenced_nonNull_native, v28);

    v10 = v28[0];
    if (qword_27ED98918 != -1)
    {
      swift_once();
    }

    v11 = sub_243AC1468();
    __swift_project_value_buffer(v11, qword_27EDA14C0);

    v12 = sub_243AC1448();
    v13 = sub_243AC2B78();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = *(v0 + 384);
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v28[0] = v16;
      *v15 = 136315650;
      *(v15 + 4) = sub_243AB73D8(0xD00000000000001ELL, 0x8000000243ACD990, v28);
      *(v15 + 12) = 2080;
      v17 = sub_243A76C94(v14);
      v19 = sub_243AB73D8(v17, v18, v28);

      *(v15 + 14) = v19;
      *(v15 + 22) = 2080;
      sub_243A2CFF0(0, &qword_27ED99AA0, 0x277D82BB8);
      v20 = sub_243AC27E8();
      v22 = sub_243AB73D8(v20, v21, v28);

      *(v15 + 24) = v22;
      _os_log_impl(&dword_243A1B000, v12, v13, "%s Sending Event %s with payload: %s", v15, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x245D47D20](v16, -1, -1);
      MEMORY[0x245D47D20](v15, -1, -1);
    }

    v23 = *(v0 + 288);
    sub_243A76C94(*(v0 + 384));
    v24 = sub_243AC2818();

    v25 = swift_allocObject();
    *(v25 + 16) = v10;
    *(v0 + 176) = sub_243A7B150;
    *(v0 + 184) = v25;
    *(v0 + 144) = MEMORY[0x277D85DD0];
    *(v0 + 152) = 1107296256;
    *(v0 + 160) = sub_243A79670;
    *(v0 + 168) = &block_descriptor_7;
    v26 = _Block_copy((v0 + 144));

    AnalyticsSendEventLazy();

    _Block_release(v26);
    v27 = *(v0 + 8);

    return v27();
  }
}

uint64_t sub_243A78C90(char a1)
{
  *(*v1 + 385) = a1;

  return MEMORY[0x2822009F8](sub_243A78DB0, 0, 0);
}

uint64_t sub_243A78DB0()
{
  v29 = v0;
  v1 = *(v0 + 360);
  v3 = *(v0 + 328);
  v2 = *(v0 + 336);
  v4 = *(v0 + 320);
  v5 = sub_243AC2A08();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v28[0] = v2;
  sub_243A8B530(v5, 0x5265746176697270, 0xEC00000079616C65, isUniquelyReferenced_nonNull_native);

  v7 = *(v0 + 280);

  v8 = swift_isUniquelyReferenced_nonNull_native();
  v28[0] = v2;
  sub_243A7AE90(v7, sub_243A7A2E0, 0, v8, v28);

  v9 = v28[0];
  if (qword_27ED98918 != -1)
  {
    swift_once();
  }

  v10 = sub_243AC1468();
  __swift_project_value_buffer(v10, qword_27EDA14C0);

  v11 = sub_243AC1448();
  v12 = sub_243AC2B78();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = *(v0 + 384);
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v28[0] = v15;
    *v14 = 136315650;
    *(v14 + 4) = sub_243AB73D8(0xD00000000000001ELL, 0x8000000243ACD990, v28);
    *(v14 + 12) = 2080;
    v16 = sub_243A76C94(v13);
    v18 = sub_243AB73D8(v16, v17, v28);

    *(v14 + 14) = v18;
    *(v14 + 22) = 2080;
    sub_243A2CFF0(0, &qword_27ED99AA0, 0x277D82BB8);
    v19 = sub_243AC27E8();
    v21 = sub_243AB73D8(v19, v20, v28);

    *(v14 + 24) = v21;
    _os_log_impl(&dword_243A1B000, v11, v12, "%s Sending Event %s with payload: %s", v14, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x245D47D20](v15, -1, -1);
    MEMORY[0x245D47D20](v14, -1, -1);
  }

  v22 = *(v0 + 288);
  sub_243A76C94(*(v0 + 384));
  v23 = sub_243AC2818();

  v24 = swift_allocObject();
  *(v24 + 16) = v9;
  *(v0 + 176) = sub_243A7B150;
  *(v0 + 184) = v24;
  *(v0 + 144) = MEMORY[0x277D85DD0];
  *(v0 + 152) = 1107296256;
  *(v0 + 160) = sub_243A79670;
  *(v0 + 168) = &block_descriptor_7;
  v25 = _Block_copy((v0 + 144));

  AnalyticsSendEventLazy();

  _Block_release(v25);
  v26 = *(v0 + 8);

  return v26();
}

uint64_t sub_243A79188(uint64_t a1)
{
  v43 = v1;
  v2 = *(v1 + 344);
  swift_willThrow();

  v3 = 0x27ED98000uLL;
  if (qword_27ED98918 != -1)
  {
    swift_once();
  }

  v4 = *(v1 + 352);
  v5 = sub_243AC1468();
  __swift_project_value_buffer(v5, qword_27EDA14C0);
  v6 = v4;
  v7 = sub_243AC1448();
  v8 = sub_243AC2B58();

  v9 = os_log_type_enabled(v7, v8);
  v10 = *(v1 + 352);
  v11 = *(v1 + 320);
  v12 = *(v1 + 328);
  if (v9)
  {
    v13 = swift_slowAlloc();
    v41 = v5;
    v42[0] = swift_slowAlloc();
    v14 = v42[0];
    *v13 = 136315138;
    swift_getErrorValue();
    v15 = sub_243AC2F58();
    v17 = sub_243AB73D8(v15, v16, v42);

    *(v13 + 4) = v17;
    _os_log_impl(&dword_243A1B000, v7, v8, "Unable to fetch Private Relay status. %s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v14);
    v18 = v14;
    v5 = v41;
    MEMORY[0x245D47D20](v18, -1, -1);
    v19 = v13;
    v3 = 0x27ED98000;
    MEMORY[0x245D47D20](v19, -1, -1);
  }

  else
  {
  }

  v20 = *(v1 + 336);
  v21 = *(v1 + 280);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v42[0] = v20;
  sub_243A7AE90(v21, sub_243A7A2E0, 0, isUniquelyReferenced_nonNull_native, v42);

  v23 = v42[0];
  if (*(v3 + 2328) != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v5, qword_27EDA14C0);

  v24 = sub_243AC1448();
  v25 = sub_243AC2B78();

  if (os_log_type_enabled(v24, v25))
  {
    v26 = *(v1 + 384);
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v42[0] = v28;
    *v27 = 136315650;
    *(v27 + 4) = sub_243AB73D8(0xD00000000000001ELL, 0x8000000243ACD990, v42);
    *(v27 + 12) = 2080;
    v29 = sub_243A76C94(v26);
    v31 = sub_243AB73D8(v29, v30, v42);

    *(v27 + 14) = v31;
    *(v27 + 22) = 2080;
    sub_243A2CFF0(0, &qword_27ED99AA0, 0x277D82BB8);
    v32 = sub_243AC27E8();
    v34 = sub_243AB73D8(v32, v33, v42);

    *(v27 + 24) = v34;
    _os_log_impl(&dword_243A1B000, v24, v25, "%s Sending Event %s with payload: %s", v27, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x245D47D20](v28, -1, -1);
    MEMORY[0x245D47D20](v27, -1, -1);
  }

  v35 = *(v1 + 288);
  sub_243A76C94(*(v1 + 384));
  v36 = sub_243AC2818();

  v37 = swift_allocObject();
  *(v37 + 16) = v23;
  *(v1 + 176) = sub_243A7B150;
  *(v1 + 184) = v37;
  *(v1 + 144) = MEMORY[0x277D85DD0];
  *(v1 + 152) = 1107296256;
  *(v1 + 160) = sub_243A79670;
  *(v1 + 168) = &block_descriptor_7;
  v38 = _Block_copy((v1 + 144));

  AnalyticsSendEventLazy();

  _Block_release(v38);
  v39 = *(v1 + 8);

  return v39();
}

id sub_243A79670(uint64_t a1)
{
  v1 = *(a1 + 32);

  v3 = v1(v2);

  if (v3)
  {
    sub_243A2CFF0(0, &qword_27ED99AA0, 0x277D82BB8);
    v4 = sub_243AC27C8();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

uint64_t sub_243A7970C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98998, &qword_243AC4FD0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v25 - v10;
  sub_243A47650(a3, v25 - v10);
  v12 = sub_243AC2A98();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_243A6ABFC(v11);
  }

  else
  {
    sub_243AC2A88();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_243AC2A28();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_243AC2888() + 32;
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

uint64_t sub_243A79A60(uint64_t a1, char a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98998, &qword_243AC4FD0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v13 - v6;
  v8 = sub_243A2E9D8(MEMORY[0x277D84F90]);
  sub_243AC2A68();
  v9 = sub_243AC2A98();
  (*(*(v9 - 8) + 56))(v7, 0, 1, v9);
  v10 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v11 = swift_allocObject();
  *(v11 + 16) = 0;
  *(v11 + 24) = 0;
  *(v11 + 32) = v10;
  *(v11 + 40) = v8;
  *(v11 + 48) = a2;
  sub_243A7970C(0, 0, v7, a3, v11);

  return sub_243A6ABFC(v7);
}

void sub_243A79BD4(void *a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98998, &qword_243AC4FD0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v16 - v9;
  v11 = a1;
  v12 = sub_243A2E9D8(MEMORY[0x277D84F90]);
  sub_243AC2A68();
  v13 = sub_243AC2A98();
  (*(*(v13 - 8) + 56))(v10, 0, 1, v13);
  v14 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v15 = swift_allocObject();
  *(v15 + 16) = 0;
  *(v15 + 24) = 0;
  *(v15 + 32) = v14;
  *(v15 + 40) = v12;
  *(v15 + 48) = a4;
  sub_243A7970C(0, 0, v10, a5, v15);

  sub_243A6ABFC(v10);
}

uint64_t sub_243A79D30(_BYTE *a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 48) = a3;
  *(v4 + 56) = v3;
  *(v4 + 40) = a2;
  *(v4 + 72) = *a1;
  return MEMORY[0x2822009F8](sub_243A79D5C, 0, 0);
}

uint64_t sub_243A79D5C()
{
  v1 = *(*(v0 + 56) + OBJC_IVAR____TtC21CloudRecommendationUI23RecommendationAnalytics_displayedTracker);
  *(v0 + 64) = v1;

  return MEMORY[0x2822009F8](sub_243A79DDC, v1, 0);
}

uint64_t sub_243A79DDC()
{
  v7 = v0;
  v1 = *(v0 + 72);
  if (v1 < 4)
  {
    v3 = *(v0 + 40);
    v2 = *(v0 + 48);
    swift_beginAccess();

    sub_243A585B0(&v6, v3, v2);
    swift_endAccess();
  }

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_243A79F3C(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  *(v4 + 120) = a2;
  *(v4 + 128) = v3;
  *(v4 + 112) = a1;
  *(v4 + 144) = *a3;
  return MEMORY[0x2822009F8](sub_243A79F68, 0, 0);
}

uint64_t sub_243A79F68()
{
  v1 = *(*(v0 + 128) + OBJC_IVAR____TtC21CloudRecommendationUI23RecommendationAnalytics_displayedTracker);
  *(v0 + 136) = v1;

  return MEMORY[0x2822009F8](sub_243A79FE8, v1, 0);
}

uint64_t sub_243A79FE8()
{
  v1 = *(v0 + 144);
  if (v1 <= 1)
  {
    v6 = *(v0 + 136);
    v4 = *(v0 + 112);
    v3 = *(v0 + 120);
    if (*(v0 + 144))
    {
      swift_beginAccess();
      v5 = *(v6 + 112);
    }

    else
    {
      swift_beginAccess();
      v5 = *(v6 + 120);
    }
  }

  else if (v1 == 2)
  {
    v7 = *(v0 + 136);
    v4 = *(v0 + 112);
    v3 = *(v0 + 120);
    swift_beginAccess();
    v5 = *(v7 + 128);
  }

  else
  {
    if (v1 != 3)
    {

      v8 = 0;
      goto LABEL_11;
    }

    v2 = *(v0 + 136);
    v4 = *(v0 + 112);
    v3 = *(v0 + 120);
    swift_beginAccess();
    v5 = *(v2 + 136);
  }

  v8 = sub_243A57A40(v4, v3, v5);

LABEL_11:
  v9 = *(v0 + 8);

  return v9(v8 & 1);
}

uint64_t sub_243A7A134()
{
  v1 = MEMORY[0x277D84FA0];
  *(v0 + OBJC_IVAR____TtC21CloudRecommendationUI23RecommendationAnalytics_seenRecommendations) = MEMORY[0x277D84FA0];

  *(v0 + OBJC_IVAR____TtC21CloudRecommendationUI23RecommendationAnalytics_seenCompletedRecommendations) = v1;
}

id RecommendationAnalytics.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id RecommendationAnalytics.__deallocating_deinit(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for RecommendationAnalytics();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

id sub_243A7A2E0@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v2 = a1[1];
  v4 = a1[2];
  *a2 = *a1;
  a2[1] = v2;
  a2[2] = v4;

  return v4;
}

id sub_243A7A32C(void *a1)
{
  v2 = v1;
  *&v2[OBJC_IVAR____TtC21CloudRecommendationUI23RecommendationAnalytics_totalStorageInGB] = 0xBFF0000000000000;
  v2[OBJC_IVAR____TtC21CloudRecommendationUI23RecommendationAnalytics_userType] = 0;
  v4 = MEMORY[0x277D84FA0];
  *&v2[OBJC_IVAR____TtC21CloudRecommendationUI23RecommendationAnalytics_seenCompletedRecommendations] = MEMORY[0x277D84FA0];
  *&v2[OBJC_IVAR____TtC21CloudRecommendationUI23RecommendationAnalytics_seenRecommendations] = v4;
  v5 = OBJC_IVAR____TtC21CloudRecommendationUI23RecommendationAnalytics_displayedTracker;
  type metadata accessor for RecommendationsDisplayTracker();
  v6 = swift_allocObject();
  swift_defaultActor_initialize();
  v6[14] = v4;
  v6[15] = v4;
  v6[16] = v4;
  v6[17] = v4;
  *&v2[v5] = v6;
  *&v2[OBJC_IVAR____TtC21CloudRecommendationUI23RecommendationAnalytics_account] = a1;
  v7 = objc_allocWithZone(MEMORY[0x277CFB208]);
  v8 = a1;
  v9 = [v7 initWithAccount_];
  *&v2[OBJC_IVAR____TtC21CloudRecommendationUI23RecommendationAnalytics_storageDataController] = v9;
  type metadata accessor for RecommendationFilter();
  swift_allocObject();
  *&v2[OBJC_IVAR____TtC21CloudRecommendationUI23RecommendationAnalytics_recommendationFilter] = sub_243A23C4C(v8);
  v11.receiver = v2;
  v11.super_class = type metadata accessor for RecommendationAnalytics();
  return objc_msgSendSuper2(&v11, sel_init);
}

uint64_t sub_243A7A460()
{
  MEMORY[0x245D47DE0](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

unint64_t sub_243A7A4C4()
{
  result = qword_27ED99A60;
  if (!qword_27ED99A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED99A60);
  }

  return result;
}

uint64_t dispatch thunk of RecommendationAnalytics.trackDisplayedRecommendation(viewContext:recommendationIndentifier:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *((*MEMORY[0x277D85000] & *v3) + 0x1D0);
  v11 = (v8 + *v8);
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_243A1FEA8;

  return v11(a1, a2, a3);
}

uint64_t dispatch thunk of RecommendationAnalytics.displayedRecommendation(recommendationIdentifier:viewContext:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *((*MEMORY[0x277D85000] & *v3) + 0x1D8);
  v11 = (v8 + *v8);
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_243A7A8A8;

  return v11(a1, a2, a3);
}

uint64_t sub_243A7A8A8(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t sub_243A7A9E4(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_243A7AA78(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_243A7AB3C()
{
  result = qword_27ED99A90;
  if (!qword_27ED99A90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED99A90);
  }

  return result;
}

uint64_t sub_243A7AB90(uint64_t a1)
{
  if ((a1 + 1) < 5)
  {
    return a1 + 1;
  }

  else
  {
    return 5;
  }
}

id sub_243A7ABA4(void *a1, void *a2)
{
  [a1 floatValue];
  if ((~v4 & 0x7F800000) != 0 || (v4 & 0x7FFFFF) == 0)
  {
    [a2 floatValue];
    if ((~v6 & 0x7F800000) != 0 || (v6 & 0x7FFFFF) == 0)
    {
      [a1 floatValue];
      v9 = v8;
      result = [a2 floatValue];
      v12 = (v9 / v11) * 100.0;
      if ((LODWORD(v12) & 0x7FFFFFFFu) > 0x7F7FFFFF)
      {
        __break(1u);
      }

      else if (v12 > -9.2234e18)
      {
        if (v12 < 9.2234e18)
        {
          return v12;
        }

        goto LABEL_22;
      }

      __break(1u);
LABEL_22:
      __break(1u);
      return result;
    }
  }

  if (qword_27ED98918 != -1)
  {
    swift_once();
  }

  v13 = sub_243AC1468();
  __swift_project_value_buffer(v13, qword_27EDA14C0);
  v14 = sub_243AC1448();
  v15 = sub_243AC2B58();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&dword_243A1B000, v14, v15, "Storage values are invalid.", v16, 2u);
    MEMORY[0x245D47D20](v16, -1, -1);
  }

  return 0;
}

uint64_t objectdestroy_2Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 49, 7);
}

uint64_t sub_243A7AD98()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_243A7ADD0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_243A1FEA8;

  return sub_243A6AC64(a1, v4);
}

uint64_t sub_243A7AE90(uint64_t a1, void (*a2)(uint64_t *__return_ptr, void *), uint64_t a3, char a4, void *a5)
{
  v47 = a5;
  v6 = a1 + 64;
  v7 = -1 << *(a1 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a1 + 64);
  v10 = (63 - v7) >> 6;

  v11 = 0;
  v39 = v6;
  while (v9)
  {
    v42 = a4;
    v14 = v11;
LABEL_14:
    v16 = __clz(__rbit64(v9)) | (v14 << 6);
    v17 = (*(a1 + 48) + 16 * v16);
    v18 = v17[1];
    v19 = *(*(a1 + 56) + 8 * v16);
    v46[0] = *v17;
    v46[1] = v18;
    v46[2] = v19;

    v20 = v19;
    a2(&v43, v46);

    v21 = v43;
    v22 = v44;
    v23 = v45;
    v24 = *v47;
    v26 = sub_243A2DDC0(v43, v44);
    v27 = v24[2];
    v28 = (v25 & 1) == 0;
    v29 = v27 + v28;
    if (__OFADD__(v27, v28))
    {
      goto LABEL_25;
    }

    v30 = v25;
    if (v24[3] >= v29)
    {
      if ((v42 & 1) == 0)
      {
        sub_243A8BB08();
      }
    }

    else
    {
      sub_243A8A51C(v29, v42 & 1);
      v31 = sub_243A2DDC0(v21, v22);
      if ((v30 & 1) != (v32 & 1))
      {
        goto LABEL_27;
      }

      v26 = v31;
    }

    v9 &= v9 - 1;
    v33 = *v47;
    if (v30)
    {

      v12 = v33[7];
      v13 = *(v12 + 8 * v26);
      *(v12 + 8 * v26) = v23;
    }

    else
    {
      v33[(v26 >> 6) + 8] |= 1 << v26;
      v34 = (v33[6] + 16 * v26);
      *v34 = v21;
      v34[1] = v22;
      *(v33[7] + 8 * v26) = v23;
      v35 = v33[2];
      v36 = __OFADD__(v35, 1);
      v37 = v35 + 1;
      if (v36)
      {
        goto LABEL_26;
      }

      v33[2] = v37;
    }

    a4 = 1;
    v11 = v14;
    v6 = v39;
  }

  v15 = v11;
  while (1)
  {
    v14 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v14 >= v10)
    {
      sub_243A48354(a1);
    }

    v9 = *(v6 + 8 * v14);
    ++v15;
    if (v9)
    {
      v42 = a4;
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  result = sub_243AC2F38();
  __break(1u);
  return result;
}

uint64_t sub_243A7B118()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t block_copy_helper_7(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

{
  return sub_243A20058(a2 + 32, a1 + 32);
}

uint64_t sub_243A7B188()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED99AB0, &qword_243AC8310);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_243A7B21C(void *a1, void *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED99AB0, &qword_243AC8310);

  return sub_243A77A58(a1, a2);
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_243A7B2B4(uint64_t *a1, int a2)
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

uint64_t sub_243A7B2FC(uint64_t result, int a2, int a3)
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

uint64_t sub_243A7B38C(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 16) + **(a2 + 16));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_243A7A8A8;

  return v7(a1, a2);
}

uint64_t sub_243A7B4E4()
{
  v1 = objc_opt_self();
  v2 = sub_243AC2818();
  v3 = [v1 applicationWithBundleIdentifier_];
  v0[22] = v3;

  v4 = [objc_opt_self() sharedGuard];
  v0[23] = v4;
  v0[2] = v0;
  v0[7] = v0 + 25;
  v0[3] = sub_243A7B688;
  v5 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED99AB8, qword_243AC83F0);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_243ABE710;
  v0[13] = &block_descriptor_8;
  v0[14] = v5;
  [v4 authenticateForSubject:v3 completion:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_243A7B688()
{
  v1 = *(*v0 + 48);
  *(*v0 + 192) = v1;
  if (v1)
  {
    v2 = sub_243A7B804;
  }

  else
  {
    v2 = sub_243A7B798;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_243A7B798()
{
  v1 = *(v0 + 184);

  v2 = *(v0 + 200);
  v3 = *(v0 + 8);

  return v3(v2);
}

uint64_t sub_243A7B804(uint64_t a1)
{
  v19 = v1;
  v2 = v1[23];
  swift_willThrow();

  if (qword_27ED98910 != -1)
  {
    swift_once();
  }

  v3 = v1[24];
  v4 = sub_243AC1468();
  __swift_project_value_buffer(v4, qword_27EDA14A8);
  v5 = v3;
  v6 = sub_243AC1448();
  v7 = sub_243AC2B58();

  v8 = os_log_type_enabled(v6, v7);
  v9 = v1[24];
  v10 = v1[22];
  if (v8)
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v18 = v12;
    *v11 = 136315138;
    swift_getErrorValue();
    v13 = sub_243AC2F58();
    v15 = sub_243AB73D8(v13, v14, &v18);

    *(v11 + 4) = v15;
    _os_log_impl(&dword_243A1B000, v6, v7, "Authentication failure. Error: %s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v12);
    MEMORY[0x245D47D20](v12, -1, -1);
    MEMORY[0x245D47D20](v11, -1, -1);
  }

  else
  {
  }

  v16 = v1[1];

  return v16(0);
}

uint64_t block_destroy_helper_8(uint64_t a1)
{
  return __swift_destroy_boxed_opaque_existential_1((a1 + 32));
}

{
  return __swift_destroy_boxed_opaque_existential_1((a1 + 32));
}

uint64_t sub_243A7BA00(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = sub_243AC1208();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_243A7BAC4, 0, 0);
}

uint64_t sub_243A7BAC4()
{
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[4];
  v4 = v0[5];
  v6 = v0[2];
  v5 = v0[3];
  v7 = *(v3 + OBJC_IVAR____TtC21CloudRecommendationUI26FamilySharingActionHandler_activeRecommendation);
  *(v3 + OBJC_IVAR____TtC21CloudRecommendationUI26FamilySharingActionHandler_activeRecommendation) = v6;

  v8 = *MEMORY[0x277D083A0];
  v9 = objc_allocWithZone(MEMORY[0x277D083B0]);
  v10 = v6;
  v11 = [v9 initWithEventType_];
  v0[8] = v11;
  v12 = sub_243AC2818();
  [v11 setClientName_];

  v13 = sub_243AC2818();
  [v11 setClientBundleID_];

  v14 = [v5 actionURL];
  sub_243AC11D8();

  sub_243A7DFA4(v1);
  (*(v2 + 8))(v1, v4);
  v15 = sub_243AC27C8();

  [v11 setAdditionalParameters_];

  v16 = swift_task_alloc();
  v0[9] = v16;
  *v16 = v0;
  v16[1] = sub_243A7BCD8;

  return sub_243A7C14C(v11);
}

uint64_t sub_243A7BCD8(uint64_t a1)
{
  *(*v1 + 80) = a1;

  return MEMORY[0x2822009F8](sub_243A7BDD8, 0, 0);
}

uint64_t sub_243A7BDD8()
{
  v14 = v0;
  v1 = v0[10];
  if (v1)
  {
    v2 = swift_task_alloc();
    v0[11] = v2;
    *v2 = v0;
    v2[1] = sub_243A7BFE0;
    v3 = v0[2];

    return sub_243A7C5F0(v3, v1);
  }

  else
  {
    if (qword_27ED98910 != -1)
    {
      swift_once();
    }

    v5 = sub_243AC1468();
    __swift_project_value_buffer(v5, qword_27EDA14A8);
    v6 = sub_243AC1448();
    v7 = sub_243AC2B58();
    v8 = os_log_type_enabled(v6, v7);
    v9 = v0[8];
    if (v8)
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v13 = v11;
      *v10 = 136315138;
      *(v10 + 4) = sub_243AB73D8(0xD00000000000002FLL, 0x8000000243ACDDC0, &v13);
      _os_log_impl(&dword_243A1B000, v6, v7, "%s Could not fetch family circle to begin family sharing flow.", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v11);
      MEMORY[0x245D47D20](v11, -1, -1);
      MEMORY[0x245D47D20](v10, -1, -1);
    }

    v12 = v0[1];

    return v12();
  }
}

uint64_t sub_243A7BFE0()
{

  return MEMORY[0x2822009F8](sub_243A7C0DC, 0, 0);
}

uint64_t sub_243A7C0DC()
{
  v1 = *(v0 + 80);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_243A7C14C(uint64_t a1)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = v1;
  return MEMORY[0x2822009F8](sub_243A7C16C, 0, 0);
}

uint64_t sub_243A7C16C()
{
  v1 = *(v0 + 32);
  v2 = OBJC_IVAR____TtC21CloudRecommendationUI26FamilySharingActionHandler_familySharingController;
  if (!*(v1 + OBJC_IVAR____TtC21CloudRecommendationUI26FamilySharingActionHandler_familySharingController))
  {
    v3 = [objc_allocWithZone(MEMORY[0x277D083B8]) initWithPresenter_];
    v4 = *(v1 + v2);
    *(v1 + v2) = v3;
  }

  v5 = swift_task_alloc();
  *(v0 + 40) = v5;
  *v5 = v0;
  v5[1] = sub_243A7C260;

  return sub_243A91C90(0);
}

uint64_t sub_243A7C260(uint64_t a1)
{
  *(*v1 + 48) = a1;

  return MEMORY[0x2822009F8](sub_243A7C360, 0, 0);
}

uint64_t sub_243A7C360()
{
  v1 = *(v0 + 48);
  v2 = swift_task_alloc();
  *(v0 + 56) = v2;
  v2[1] = vextq_s8(*(v0 + 24), *(v0 + 24), 8uLL);
  v2[2].i64[0] = v1;
  v3 = swift_task_alloc();
  *(v0 + 64) = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED99AF0, &qword_243AC8458);
  *v3 = v0;
  v3[1] = sub_243A7C474;

  return MEMORY[0x2822007B8](v0 + 16, 0, 0, 0xD000000000000020, 0x8000000243ACDE30, sub_243A7E7E4, v2, v4);
}

uint64_t sub_243A7C474()
{

  return MEMORY[0x2822009F8](sub_243A7C58C, 0, 0);
}

uint64_t sub_243A7C58C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_243A7C5F0(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_243A7C614, 0, 0);
}

uint64_t sub_243A7C614()
{
  v0[5] = *(v0[4] + OBJC_IVAR____TtC21CloudRecommendationUI26FamilySharingActionHandler_account);
  v1 = swift_task_alloc();
  v0[6] = v1;
  *v1 = v0;
  v1[1] = sub_243A7C6CC;

  return sub_243A91C90(1);
}

uint64_t sub_243A7C6CC(uint64_t a1)
{
  *(*v1 + 56) = a1;

  return MEMORY[0x2822009F8](sub_243A7C7CC, 0, 0);
}

uint64_t sub_243A7C7CC()
{
  v36 = v0;
  v1 = *(v0 + 56);
  if (v1)
  {
    v2 = [*(v0 + 16) identifier];
    v3 = sub_243AC2858();
    v5 = v4;

    if (v3 == 0xD000000000000024 && 0x8000000243ACB920 == v5)
    {
    }

    else
    {
      v7 = sub_243AC2EE8();

      if ((v7 & 1) == 0)
      {
LABEL_23:
        v31 = swift_task_alloc();
        *(v0 + 64) = v31;
        *v31 = v0;
        v31[1] = sub_243A7CC84;
        v32 = *(v0 + 40);

        return sub_243A92724(v32);
      }
    }

    v13 = [v1 members];
    sub_243A2CFF0(0, &qword_27ED98C18, 0x277D08268);
    v14 = sub_243AC2998();

    if (v14 >> 62)
    {
      v15 = sub_243AC2DF8();
    }

    else
    {
      v15 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (!v15)
    {
      goto LABEL_23;
    }

    if (qword_27ED98910 != -1)
    {
      swift_once();
    }

    v16 = *(v0 + 16);
    v17 = sub_243AC1468();
    __swift_project_value_buffer(v17, qword_27EDA14A8);
    v18 = v16;
    v19 = sub_243AC1448();
    v20 = sub_243AC2B38();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = *(v0 + 16);
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v35 = v23;
      *v22 = 136315138;
      v24 = [v21 identifier];
      v25 = sub_243AC2858();
      v27 = v26;

      v28 = sub_243AB73D8(v25, v27, &v35);

      *(v22 + 4) = v28;
      _os_log_impl(&dword_243A1B000, v19, v20, "New family circle created. Calling completion for %s", v22, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v23);
      MEMORY[0x245D47D20](v23, -1, -1);
      MEMORY[0x245D47D20](v22, -1, -1);
    }

    v29 = *(*(v0 + 32) + OBJC_IVAR____TtC21CloudRecommendationUI26FamilySharingActionHandler_delegate);
    if (v29)
    {
      v30 = *(v0 + 16);
      LOBYTE(v35) = *(v29 + 136);
      swift_unknownObjectRetain();
      sub_243A3CF58(v30, 0, &v35);

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  else
  {
    if (qword_27ED98910 != -1)
    {
      swift_once();
    }

    v8 = sub_243AC1468();
    __swift_project_value_buffer(v8, qword_27EDA14A8);
    v9 = sub_243AC1448();
    v10 = sub_243AC2B58();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v35 = v12;
      *v11 = 136315138;
      *(v11 + 4) = sub_243AB73D8(0xD000000000000032, 0x8000000243ACDDF0, &v35);
      _os_log_impl(&dword_243A1B000, v9, v10, "%s Could not fetch family circle post completion. Bailing.", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v12);
      MEMORY[0x245D47D20](v12, -1, -1);
      MEMORY[0x245D47D20](v11, -1, -1);
    }
  }

  v34 = *(v0 + 8);

  return v34();
}

uint64_t sub_243A7CC84(uint64_t a1)
{
  *(*v2 + 72) = a1;

  if (v1)
  {

    v3 = sub_243A7D8B4;
  }

  else
  {
    v3 = sub_243A7CDA0;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_243A7CDA0()
{
  v80 = v0;
  v1 = *(v0 + 72);
  if (!v1)
  {
    if (qword_27ED98910 == -1)
    {
      goto LABEL_18;
    }

    goto LABEL_50;
  }

  v2 = [*(v0 + 24) me];
  v77 = v1;
  if (!v2)
  {
LABEL_22:
    v19 = [*(v0 + 40) aa_personID];
    if (!v19 || (v20 = v19, v21 = sub_243AC2858(), v23 = v22, v20, sub_243AB8C0C(v21, v23), (v24 & 1) != 0))
    {
      if (qword_27ED98910 != -1)
      {
        swift_once();
      }

      v25 = sub_243AC1468();
      __swift_project_value_buffer(v25, qword_27EDA14A8);
      v26 = sub_243AC1448();
      v27 = sub_243AC2B58();
      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        v29 = swift_slowAlloc();
        v79 = v29;
        *v28 = 136315138;
        *(v28 + 4) = sub_243AB73D8(0xD000000000000032, 0x8000000243ACDDF0, &v79);
        _os_log_impl(&dword_243A1B000, v26, v27, "%s Unable to retrieve current user's DSID", v28, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v29);
        MEMORY[0x245D47D20](v29, -1, -1);
        MEMORY[0x245D47D20](v28, -1, -1);
      }

      goto LABEL_44;
    }

    v30 = [v1 subscriberDSIDs];
    if (!v30)
    {
LABEL_44:
      v40 = 0;
      goto LABEL_64;
    }

    v31 = v30;
    sub_243A2CFF0(0, &qword_27ED99410, 0x277CCABB0);
    v32 = sub_243AC2998();

    v79 = MEMORY[0x277D84F90];
    if (v32 >> 62)
    {
      v33 = sub_243AC2DF8();
      if (v33)
      {
LABEL_32:
        v76 = v0;
        v34 = 0;
        while (1)
        {
          if ((v32 & 0xC000000000000001) != 0)
          {
            v35 = MEMORY[0x245D470F0](v34, v32);
          }

          else
          {
            if (v34 >= *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_49;
            }

            v35 = *(v32 + 8 * v34 + 32);
          }

          v36 = v35;
          v0 = v34 + 1;
          if (__OFADD__(v34, 1))
          {
            goto LABEL_48;
          }

          v37 = sub_243AC2B08();
          v38 = sub_243AC2C18();

          if (v38)
          {
          }

          else
          {
            sub_243AC2D68();
            sub_243AC2D88();
            sub_243AC2D98();
            sub_243AC2D78();
          }

          ++v34;
          if (v0 == v33)
          {
            v41 = v79;
            v0 = v76;
            goto LABEL_60;
          }
        }
      }
    }

    else
    {
      v33 = *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v33)
      {
        goto LABEL_32;
      }
    }

    v41 = MEMORY[0x277D84F90];
LABEL_60:

    if (v41 < 0 || (v41 & 0x4000000000000000) != 0)
    {
      v40 = sub_243AC2DF8();
    }

    else
    {
      v40 = *(v41 + 16);
    }

LABEL_64:
    v42 = [*(v0 + 24) pendingMembers];
    if (v42)
    {
      v43 = v42;
      sub_243A2CFF0(0, &qword_27ED98C18, 0x277D08268);
      v44 = sub_243AC2998();

      if (v44 >> 62)
      {
        v45 = sub_243AC2DF8();
      }

      else
      {
        v45 = *((v44 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }
    }

    else
    {
      v45 = 0;
    }

    v46 = [*(v0 + 56) pendingMembers];
    if (v46)
    {
      v47 = v46;
      sub_243A2CFF0(0, &qword_27ED98C18, 0x277D08268);
      v48 = sub_243AC2998();

      if (v48 >> 62)
      {
        v49 = sub_243AC2DF8();
      }

      else
      {
        v49 = *((v48 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }
    }

    else
    {
      v49 = 0;
    }

    v50 = sub_243AC2B98();
    if (v50 >> 62)
    {
      v51 = sub_243AC2DF8();
    }

    else
    {
      v51 = *((v50 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v52 = sub_243AC2B98();
    if (v52 >> 62)
    {
      v53 = sub_243AC2DF8();
    }

    else
    {
      v53 = *((v52 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v45 < v49 || v53 < v51 || v40 >= 1)
    {
      if (qword_27ED98910 != -1)
      {
        swift_once();
      }

      v63 = sub_243AC1468();
      __swift_project_value_buffer(v63, qword_27EDA14A8);
      v64 = sub_243AC1448();
      v65 = sub_243AC2B48();
      if (os_log_type_enabled(v64, v65))
      {
        v66 = v45 < v49;
        v67 = v40 > 0;
        v68 = swift_slowAlloc();
        v69 = swift_slowAlloc();
        v79 = v69;
        *v68 = 136315906;
        *(v68 + 4) = sub_243AB73D8(0xD000000000000032, 0x8000000243ACDDF0, &v79);
        *(v68 + 12) = 1024;
        *(v68 + 14) = v66;
        *(v68 + 18) = 1024;
        *(v68 + 20) = v53 < v51;
        *(v68 + 24) = 1024;
        *(v68 + 26) = v67;
        _os_log_impl(&dword_243A1B000, v64, v65, "%s Significant changes detected - New Members Invited: %{BOOL}d New Members Added: %{BOOL}d iCloud Storage Shared: %{BOOL}d", v68, 0x1Eu);
        __swift_destroy_boxed_opaque_existential_1(v69);
        MEMORY[0x245D47D20](v69, -1, -1);
        MEMORY[0x245D47D20](v68, -1, -1);
      }

      v57 = v77;
      v70 = *(*(v0 + 32) + OBJC_IVAR____TtC21CloudRecommendationUI26FamilySharingActionHandler_delegate);
      v61 = *(v0 + 56);
      if (v70)
      {
        v71 = *(v0 + 16);
        LOBYTE(v79) = *(v70 + 136);
        swift_unknownObjectRetain();
        sub_243A3CF58(v71, 0, &v79);
        goto LABEL_93;
      }
    }

    else
    {
      if (qword_27ED98910 != -1)
      {
        swift_once();
      }

      v54 = sub_243AC1468();
      __swift_project_value_buffer(v54, qword_27EDA14A8);
      v55 = sub_243AC1448();
      v56 = sub_243AC2B48();
      v57 = v77;
      if (os_log_type_enabled(v55, v56))
      {
        v58 = swift_slowAlloc();
        v59 = swift_slowAlloc();
        v79 = v59;
        *v58 = 136315906;
        *(v58 + 4) = sub_243AB73D8(0xD000000000000032, 0x8000000243ACDDF0, &v79);
        *(v58 + 12) = 1024;
        *(v58 + 14) = 0;
        *(v58 + 18) = 1024;
        *(v58 + 20) = 0;
        *(v58 + 24) = 1024;
        *(v58 + 26) = 0;
        _os_log_impl(&dword_243A1B000, v55, v56, "%s Family circle did not have any significant changes. New Members Invited: %{BOOL}d New Members Added: %{BOOL}d iCloud Storage Shared: %{BOOL}d", v58, 0x1Eu);
        __swift_destroy_boxed_opaque_existential_1(v59);
        MEMORY[0x245D47D20](v59, -1, -1);
        MEMORY[0x245D47D20](v58, -1, -1);
      }

      v60 = *(*(v0 + 32) + OBJC_IVAR____TtC21CloudRecommendationUI26FamilySharingActionHandler_delegate);
      v61 = *(v0 + 56);
      if (v60)
      {
        v62 = *(v0 + 16);
        LOBYTE(v79) = *(v60 + 136);
        swift_unknownObjectRetain();
        sub_243A3C96C(v62, &v79);
LABEL_93:

        swift_unknownObjectRelease();
        goto LABEL_95;
      }
    }

    goto LABEL_95;
  }

  v3 = v2;
  v78 = [v2 dsid];
  if (!v78)
  {

    goto LABEL_22;
  }

  v4 = [v1 subscriberDSIDs];
  if (!v4)
  {

    goto LABEL_44;
  }

  v5 = v4;
  v75 = v0;
  sub_243A2CFF0(0, &qword_27ED99410, 0x277CCABB0);
  v6 = sub_243AC2998();

  v79 = MEMORY[0x277D84F90];
  if (!(v6 >> 62))
  {
    v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v7)
    {
      goto LABEL_7;
    }

    goto LABEL_52;
  }

  v7 = sub_243AC2DF8();
  if (!v7)
  {
LABEL_52:
    v39 = MEMORY[0x277D84F90];
LABEL_53:

    v0 = v75;
    if (v39 < 0 || (v39 & 0x4000000000000000) != 0)
    {
      v40 = sub_243AC2DF8();
    }

    else
    {
      v40 = *(v39 + 16);
    }

    goto LABEL_64;
  }

LABEL_7:
  v74 = v3;
  v8 = 0;
  v0 = v6 & 0xC000000000000001;
  while (1)
  {
    if (v0)
    {
      v9 = MEMORY[0x245D470F0](v8, v6);
    }

    else
    {
      if (v8 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_47;
      }

      v9 = *(v6 + 8 * v8 + 32);
    }

    v10 = v9;
    v11 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (sub_243AC2C18())
    {
    }

    else
    {
      sub_243AC2D68();
      sub_243AC2D88();
      sub_243AC2D98();
      sub_243AC2D78();
    }

    ++v8;
    if (v11 == v7)
    {
      v39 = v79;
      goto LABEL_53;
    }
  }

  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  __break(1u);
LABEL_49:
  __break(1u);
LABEL_50:
  swift_once();
LABEL_18:
  v12 = sub_243AC1468();
  __swift_project_value_buffer(v12, qword_27EDA14A8);
  v13 = sub_243AC1448();
  v14 = sub_243AC2B58();
  v15 = os_log_type_enabled(v13, v14);
  v16 = *(v0 + 56);
  if (v15)
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v79 = v18;
    *v17 = 136315138;
    *(v17 + 4) = sub_243AB73D8(0xD000000000000032, 0x8000000243ACDDF0, &v79);
    _os_log_impl(&dword_243A1B000, v13, v14, "%s Could not fetch iCloud Storage Service post completion. Bailing.", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v18);
    MEMORY[0x245D47D20](v18, -1, -1);
    MEMORY[0x245D47D20](v17, -1, -1);
  }

  else
  {
  }

LABEL_95:
  v72 = *(v0 + 8);

  return v72();
}

uint64_t sub_243A7D8B4()
{
  v11 = v0;
  if (qword_27ED98910 != -1)
  {
    swift_once();
  }

  v1 = sub_243AC1468();
  __swift_project_value_buffer(v1, qword_27EDA14A8);
  v2 = sub_243AC1448();
  v3 = sub_243AC2B58();
  v4 = os_log_type_enabled(v2, v3);
  v5 = *(v0 + 56);
  if (v4)
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v10 = v7;
    *v6 = 136315138;
    *(v6 + 4) = sub_243AB73D8(0xD000000000000032, 0x8000000243ACDDF0, &v10);
    _os_log_impl(&dword_243A1B000, v2, v3, "%s Could not fetch iCloud Storage Service post completion. Bailing.", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v7);
    MEMORY[0x245D47D20](v7, -1, -1);
    MEMORY[0x245D47D20](v6, -1, -1);
  }

  else
  {
  }

  v8 = *(v0 + 8);

  return v8();
}

void sub_243A7DA3C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED99AF8, &qword_243AC8460);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = aBlock - v11;
  v13 = *(a2 + OBJC_IVAR____TtC21CloudRecommendationUI26FamilySharingActionHandler_familySharingController);
  if (v13)
  {
    (*(v9 + 16))(v12, a1, v8);
    v14 = (*(v9 + 80) + 16) & ~*(v9 + 80);
    v15 = swift_allocObject();
    (*(v9 + 32))(v15 + v14, v12, v8);
    *(v15 + ((v10 + v14 + 7) & 0xFFFFFFFFFFFFFFF8)) = a4;
    aBlock[4] = sub_243A7E898;
    aBlock[5] = v15;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_243A7DE5C;
    aBlock[3] = &block_descriptor_9;
    v16 = _Block_copy(aBlock);
    v17 = a4;
    v18 = v13;

    [v18 performWithContext:a3 completion:v16];
    _Block_release(v16);
  }
}

void sub_243A7DC34(void *a1, uint64_t a2, void *a3)
{
  v4 = [a1 error];
  if (v4)
  {
    v5 = v4;
    if (qword_27ED98910 != -1)
    {
      swift_once();
    }

    v6 = sub_243AC1468();
    __swift_project_value_buffer(v6, qword_27EDA14A8);
    v7 = v5;
    v8 = sub_243AC1448();
    v9 = sub_243AC2B58();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v16 = v11;
      *v10 = 136315394;
      *(v10 + 4) = sub_243AB73D8(0xD000000000000020, 0x8000000243ACDE30, &v16);
      *(v10 + 12) = 2080;
      swift_getErrorValue();
      v12 = sub_243AC2F58();
      v14 = sub_243AB73D8(v12, v13, &v16);

      *(v10 + 14) = v14;
      _os_log_impl(&dword_243A1B000, v8, v9, "%s Failed to present family sharing controller %s", v10, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x245D47D20](v11, -1, -1);
      MEMORY[0x245D47D20](v10, -1, -1);
    }

    v16 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED99AF8, &qword_243AC8460);
    sub_243AC2A38();
  }

  else
  {
    v15 = a3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED99AF8, &qword_243AC8460);
    sub_243AC2A38();
  }
}

void sub_243A7DE5C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

void *sub_243A7DFA4(uint64_t a1)
{
  v1 = sub_243AC1108();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v59 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED99B00, qword_243AC8468);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v59 - v6;
  v8 = sub_243AC1138();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v59 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_243A2E2B4(MEMORY[0x277D84F90]);
  sub_243AC1128();
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_243A2251C(v7, &qword_27ED99B00, qword_243AC8468);
    goto LABEL_31;
  }

  (*(v9 + 32))(v11, v7, v8);
  v13 = sub_243AC1118();
  if (!v13)
  {
    (*(v9 + 8))(v11, v8);
LABEL_31:
    if (*(v12 + 16) && (v43 = sub_243A2DDC0(0x6F74736575716572, 0xE900000000000072), (v44 & 1) != 0))
    {
      sub_243A20058(*(v12 + 56) + 32 * v43, v71);
      sub_243A21C48(v71, &v72);
    }

    else
    {
      *(&v73 + 1) = MEMORY[0x277D837D0];
      *&v72 = 0x6974634172657355;
      *(&v72 + 1) = 0xEA00000000006E6FLL;
    }

    sub_243A21C48(&v72, v71);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v70 = v12;
    sub_243A8B544(v71, 0x6F74736575716572, 0xE900000000000072, isUniquelyReferenced_nonNull_native);
    v46 = v70;
    if (v70[2] && (v47 = sub_243A2DDC0(0x707369447473756DLL, 0xEB0000000079616CLL), (v48 & 1) != 0))
    {
      sub_243A20058(v46[7] + 32 * v47, v71);
      sub_243A21C48(v71, &v72);
    }

    else
    {
      *(&v73 + 1) = MEMORY[0x277D839B0];
      LOBYTE(v72) = 1;
    }

    sub_243A21C48(&v72, v71);
    v49 = swift_isUniquelyReferenced_nonNull_native();
    v70 = v46;
    sub_243A8B544(v71, 0x707369447473756DLL, 0xEB0000000079616CLL, v49);
    v50 = v70;
    if (v70[2] && (v51 = sub_243A2DDC0(0x457972756372656DLL, 0xEC0000007972746ELL), (v52 & 1) != 0))
    {
      sub_243A20058(v50[7] + 32 * v51, v71);
      sub_243A21C48(v71, &v72);
    }

    else
    {
      *(&v73 + 1) = MEMORY[0x277D837D0];
      *&v72 = 0x5442656E696C6E69;
      *(&v72 + 1) = 0xE800000000000000;
    }

    sub_243A21C48(&v72, v71);
    v53 = swift_isUniquelyReferenced_nonNull_native();
    v70 = v50;
    sub_243A8B544(v71, 0x457972756372656DLL, 0xEC0000007972746ELL, v53);
    v54 = v70;
    if (v70[2] && (v55 = sub_243A2DDC0(1701869940, 0xE400000000000000), (v56 & 1) != 0))
    {
      sub_243A20058(v54[7] + 32 * v55, v71);
      sub_243A21C48(v71, &v72);
    }

    else
    {
      *(&v73 + 1) = MEMORY[0x277D837D0];
      strcpy(&v72, "sendInvitation");
      HIBYTE(v72) = -18;
    }

    sub_243A21C48(&v72, v71);
    v57 = swift_isUniquelyReferenced_nonNull_native();
    v70 = v54;
    sub_243A8B544(v71, 1701869940, 0xE400000000000000, v57);
    return v70;
  }

  v60 = v8;
  v61 = v12;
  v69 = *(v13 + 16);
  if (!v69)
  {
    v15 = MEMORY[0x277D84F98];
LABEL_30:

    (*(v9 + 8))(v11, v60);

    v12 = v15;
    goto LABEL_31;
  }

  v14 = 0;
  v68 = v13 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v66 = (v2 + 8);
  v67 = v2 + 16;
  v15 = MEMORY[0x277D84F98];
  v62 = v2;
  v63 = v11;
  v64 = v9;
  v65 = v13;
  while (v14 < *(v13 + 16))
  {
    (*(v2 + 16))(v4, v68 + *(v2 + 72) * v14, v1);
    v16 = sub_243AC10E8();
    v18 = v17;
    v19 = sub_243AC10F8();
    if (!v20 || (*&v72 = v19, *(&v72 + 1) = v20, sub_243A4FC18(), v21 = sub_243AC2C58(), v23 = v22, , !v23))
    {
      v34 = sub_243A2DDC0(v16, v18);
      v36 = v35;

      if (v36)
      {
        v37 = swift_isUniquelyReferenced_nonNull_native();
        *&v71[0] = v15;
        v9 = v64;
        if (!v37)
        {
          sub_243A8BC78();
          v15 = *&v71[0];
        }

        sub_243A21C48((v15[7] + 32 * v34), &v72);
        sub_243A8B058(v34, v15);
        (*v66)(v4, v1);
      }

      else
      {
        (*v66)(v4, v1);
        v72 = 0u;
        v73 = 0u;
        v9 = v64;
      }

      v11 = v63;
      sub_243A2251C(&v72, &qword_27ED989A0, &qword_243AC4470);
      goto LABEL_8;
    }

    v24 = v1;
    *(&v73 + 1) = MEMORY[0x277D837D0];
    *&v72 = v21;
    *(&v72 + 1) = v23;
    sub_243A21C48(&v72, v71);
    v25 = swift_isUniquelyReferenced_nonNull_native();
    v70 = v15;
    v27 = sub_243A2DDC0(v16, v18);
    v28 = v15[2];
    v29 = (v26 & 1) == 0;
    v30 = v28 + v29;
    if (__OFADD__(v28, v29))
    {
      goto LABEL_49;
    }

    v31 = v26;
    if (v15[3] >= v30)
    {
      if (v25)
      {
        if ((v26 & 1) == 0)
        {
          goto LABEL_25;
        }
      }

      else
      {
        sub_243A8BC78();
        if ((v31 & 1) == 0)
        {
          goto LABEL_25;
        }
      }
    }

    else
    {
      sub_243A8A7CC(v30, v25);
      v32 = sub_243A2DDC0(v16, v18);
      if ((v31 & 1) != (v33 & 1))
      {
        goto LABEL_51;
      }

      v27 = v32;
      if ((v31 & 1) == 0)
      {
LABEL_25:
        v15 = v70;
        v70[(v27 >> 6) + 8] |= 1 << v27;
        v39 = (v15[6] + 16 * v27);
        *v39 = v16;
        v39[1] = v18;
        sub_243A21C48(v71, (v15[7] + 32 * v27));
        v1 = v24;
        (*v66)(v4, v24);
        v40 = v15[2];
        v41 = __OFADD__(v40, 1);
        v42 = v40 + 1;
        if (v41)
        {
          goto LABEL_50;
        }

        v15[2] = v42;
        goto LABEL_27;
      }
    }

    v15 = v70;
    v38 = (v70[7] + 32 * v27);
    __swift_destroy_boxed_opaque_existential_1(v38);
    sub_243A21C48(v71, v38);
    v1 = v24;
    (*v66)(v4, v24);
LABEL_27:
    v2 = v62;
    v11 = v63;
    v9 = v64;
LABEL_8:
    ++v14;
    v13 = v65;
    if (v69 == v14)
    {
      goto LABEL_30;
    }
  }

  __break(1u);
LABEL_49:
  __break(1u);
LABEL_50:
  __break(1u);
LABEL_51:
  result = sub_243AC2F38();
  __break(1u);
  return result;
}

uint64_t sub_243A7E7F0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED99AF8, &qword_243AC8460);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

void sub_243A7E898(void *a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED99AF8, &qword_243AC8460) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_243A7DC34(a1, v1 + v4, v5);
}

uint64_t block_copy_helper_9(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_243A7E958(unint64_t isUniquelyReferenced_nonNull_bridgeObject)
{
  if (isUniquelyReferenced_nonNull_bridgeObject >> 62)
  {
    goto LABEL_46;
  }

  v1 = *((isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (v1)
  {
    v2 = 0;
    v29 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
    v30 = isUniquelyReferenced_nonNull_bridgeObject & 0xC000000000000001;
    v3 = MEMORY[0x277D84F90];
    v26 = isUniquelyReferenced_nonNull_bridgeObject;
    v4 = &qword_27ED98F40;
    v27 = v1;
    while (1)
    {
      if (v30)
      {
        isUniquelyReferenced_nonNull_bridgeObject = MEMORY[0x245D470F0](v2, v26);
        v5 = __OFADD__(v2++, 1);
        if (v5)
        {
          goto LABEL_40;
        }
      }

      else
      {
        if (v2 >= *(v29 + 16))
        {
          goto LABEL_41;
        }

        v5 = __OFADD__(v2++, 1);
        if (v5)
        {
          goto LABEL_40;
        }
      }

      swift_getKeyPath();
      swift_getKeyPath();
      sub_243AC16A8();

      v6 = v32[0];
      v7 = v32[0] >> 62;
      v8 = v32[0] >> 62 ? sub_243AC2DF8() : *((v32[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
      v9 = v3 >> 62;
      if (v3 >> 62)
      {
        break;
      }

      isUniquelyReferenced_nonNull_bridgeObject = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v10 = isUniquelyReferenced_nonNull_bridgeObject + v8;
      if (__OFADD__(isUniquelyReferenced_nonNull_bridgeObject, v8))
      {
        goto LABEL_39;
      }

LABEL_13:
      isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
      if (isUniquelyReferenced_nonNull_bridgeObject)
      {
        if (!v9)
        {
          v11 = v3 & 0xFFFFFFFFFFFFFF8;
          if (v10 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            goto LABEL_20;
          }

          goto LABEL_19;
        }

LABEL_18:
        sub_243AC2DF8();
        goto LABEL_19;
      }

      if (v9)
      {
        goto LABEL_18;
      }

LABEL_19:
      isUniquelyReferenced_nonNull_bridgeObject = sub_243AC2D38();
      v3 = isUniquelyReferenced_nonNull_bridgeObject;
      v11 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
LABEL_20:
      v33 = v8;
      v12 = *(v11 + 16);
      v13 = *(v11 + 24);
      if (v7)
      {
        v15 = v11;
        isUniquelyReferenced_nonNull_bridgeObject = sub_243AC2DF8();
        v11 = v15;
        v14 = isUniquelyReferenced_nonNull_bridgeObject;
        if (isUniquelyReferenced_nonNull_bridgeObject)
        {
LABEL_24:
          if (((v13 >> 1) - v12) < v33)
          {
            goto LABEL_43;
          }

          v31 = v3;
          v16 = v11 + 8 * v12 + 32;
          v28 = v11;
          if (v7)
          {
            if (v14 < 1)
            {
              goto LABEL_45;
            }

            sub_243A491E8(&qword_27ED98FA8, v4, &qword_243AC52E0, MEMORY[0x277D83988]);
            v17 = v4;
            for (i = 0; i != v14; ++i)
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(v17, &qword_243AC52E0);
              v19 = sub_243AA806C(v32, i, v6);
              v21 = *v20;
              (v19)(v32, 0);
              v17 = v4;
              *(v16 + 8 * i) = v21;
            }
          }

          else
          {
            sub_243A4FEC4();
            swift_arrayInitWithCopy();
            v17 = v4;
          }

          v4 = v17;

          v1 = v27;
          v3 = v31;
          if (v33 >= 1)
          {
            v22 = *(v28 + 16);
            v5 = __OFADD__(v22, v33);
            v23 = v22 + v33;
            if (v5)
            {
              goto LABEL_44;
            }

            *(v28 + 16) = v23;
          }

          goto LABEL_5;
        }
      }

      else
      {
        v14 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v14)
        {
          goto LABEL_24;
        }
      }

      if (v33 > 0)
      {
        goto LABEL_42;
      }

LABEL_5:
      if (v2 == v1)
      {
        return v3;
      }
    }

    isUniquelyReferenced_nonNull_bridgeObject = sub_243AC2DF8();
    v10 = isUniquelyReferenced_nonNull_bridgeObject + v8;
    if (!__OFADD__(isUniquelyReferenced_nonNull_bridgeObject, v8))
    {
      goto LABEL_13;
    }

LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    v24 = isUniquelyReferenced_nonNull_bridgeObject;
    v1 = sub_243AC2DF8();
    isUniquelyReferenced_nonNull_bridgeObject = v24;
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_243A7ED24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ED995A0, qword_243AC6D10);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_243A7EDF4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ED995A0, qword_243AC6D10);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for RecommendationsList(uint64_t a1)
{
  result = qword_27ED99B08;
  if (!qword_27ED99B08)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_243A7EEF0(uint64_t a1)
{
  sub_243A7EF94(319);
  if (v1 <= 0x3F)
  {
    sub_243A677C8(319);
    if (v2 <= 0x3F)
    {
      sub_243A4D158();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_243A7EF94(uint64_t a1)
{
  if (!qword_27ED99B18)
  {
    type metadata accessor for RecommendationsController(255);
    sub_243A829D0(&qword_27ED98FB0, type metadata accessor for RecommendationsController, &protocol conformance descriptor for RecommendationsController);
    v1 = sub_243AC1838();
    if (!v2)
    {
      atomic_store(v1, &qword_27ED99B18);
    }
  }
}

uint64_t sub_243A7F044()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_243AC16A8();

  v0 = sub_243A7E958(v8);

  if (v0 >> 62)
  {
    goto LABEL_15;
  }

  for (i = *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_243AC2DF8())
  {
    v2 = 0;
    LOBYTE(v3) = 1;
    while (1)
    {
      if ((v0 & 0xC000000000000001) != 0)
      {
        v4 = MEMORY[0x245D470F0](v2, v0);
      }

      else
      {
        if (v2 >= *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_14;
        }

        v4 = *(v0 + 8 * v2 + 32);
      }

      v5 = v4;
      v6 = v2 + 1;
      if (__OFADD__(v2, 1))
      {
        break;
      }

      if (v3)
      {
        v3 = [v4 completed];
      }

      else
      {
        v3 = 0;
      }

      ++v2;
      if (v6 == i)
      {
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    ;
  }

  v3 = 1;
LABEL_17:

  return v3;
}

uint64_t sub_243A7F1AC@<X0>(uint64_t a1@<X0>, uint64_t (**a2)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)@<X8>)
{
  v4 = type metadata accessor for RecommendationsList(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  sub_243A81C24(a1, &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v8 = swift_allocObject();
  result = sub_243A821DC(&v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v8 + v7, type metadata accessor for RecommendationsList);
  *a2 = sub_243A81C8C;
  a2[1] = v8;
  return result;
}

uint64_t sub_243A7F2B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v30 = a2;
  v34 = a3;
  v31 = sub_243AC18C8();
  v5 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED99B38, &qword_243AC8510);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v29 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED99B40, &qword_243AC8518);
  MEMORY[0x28223BE20](v12);
  v14 = &v29 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED99B48, &qword_243AC8520);
  v16 = *(v15 - 8);
  v32 = v15;
  v33 = v16;
  MEMORY[0x28223BE20](v15);
  v29 = &v29 - v17;
  v36 = a2;
  v37 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED99B50, &qword_243AC8528);
  sub_243A491E8(&qword_27ED99B58, &qword_27ED99B50, &qword_243AC8528, MEMORY[0x277CE14C0]);
  sub_243AC1D08();
  sub_243AC18B8();
  sub_243A491E8(&qword_27ED99B60, &qword_27ED99B38, &qword_243AC8510, MEMORY[0x277CDE5A0]);
  v18 = v31;
  sub_243AC1F68();
  (*(v5 + 8))(v7, v18);
  (*(v9 + 8))(v11, v8);
  v19 = [objc_opt_self() systemGroupedBackgroundColor];
  v20 = sub_243AC1F78();
  v21 = sub_243AC1C48();
  v22 = &v14[*(v12 + 36)];
  *v22 = v20;
  v22[8] = v21;
  v23 = sub_243A81D14();
  v24 = v29;
  sub_243AC1EF8();
  sub_243A2251C(v14, &qword_27ED99B40, &qword_243AC8518);
  v35 = v30;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED99B80, &qword_243AC8538);
  v38 = v12;
  v39 = v23;
  swift_getOpaqueTypeConformance2();
  v25 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED99B88, &qword_243AC8540);
  v26 = sub_243A491E8(&qword_27ED99B90, &qword_27ED99B88, &qword_243AC8540, MEMORY[0x277CDD7A8]);
  v38 = v25;
  v39 = v26;
  swift_getOpaqueTypeConformance2();
  v27 = v32;
  sub_243AC1F48();
  return (*(v33 + 8))(v24, v27);
}

uint64_t sub_243A7F758@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v162 = a2;
  v154 = a3;
  v136 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED99BA8, &qword_243AC8550);
  MEMORY[0x28223BE20](v136);
  v138 = v135 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED99BB0, &qword_243AC8558);
  v139 = *(v5 - 8);
  v140 = v5;
  MEMORY[0x28223BE20](v5);
  v137 = v135 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED99BB8, &qword_243AC8560);
  v151 = *(v7 - 8);
  v152 = v7;
  MEMORY[0x28223BE20](v7);
  v141 = v135 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED99BC0, &qword_243AC8568);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v153 = v135 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v167 = v135 - v12;
  v160 = type metadata accessor for RecommendationsList(0);
  v144 = *(v160 - 8);
  MEMORY[0x28223BE20](v160);
  v145 = v13;
  v146 = v135 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v147 = type metadata accessor for RecommendationsCardList(0);
  MEMORY[0x28223BE20](v147);
  v149 = (v135 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v159 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED99BC8, &qword_243AC8570);
  v15 = MEMORY[0x28223BE20](v159);
  v148 = v135 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v150 = v135 - v17;
  v156 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED99BD0, &qword_243AC8578);
  MEMORY[0x28223BE20](v156);
  v157 = v135 - v18;
  v158 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED99BD8, &qword_243AC8580);
  v143 = *(v158 - 8);
  MEMORY[0x28223BE20](v158);
  v142 = v135 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED99BE0, &qword_243AC8588);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v166 = v135 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v163 = v135 - v23;
  v164 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED99BE8, &qword_243AC8590);
  v155 = *(v164 - 1);
  MEMORY[0x28223BE20](v164);
  v25 = v135 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED99BF0, &qword_243AC8598);
  v27 = v26 - 8;
  v28 = MEMORY[0x28223BE20](v26);
  v165 = v135 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x28223BE20](v28);
  v32 = v135 - v31;
  MEMORY[0x28223BE20](v30);
  v34 = v135 - v33;
  v161 = a1;
  v35 = type metadata accessor for RecommendationsController(0);
  v36 = sub_243A829D0(&qword_27ED98FB0, type metadata accessor for RecommendationsController, &protocol conformance descriptor for RecommendationsController);

  v135[1] = v36;
  v135[2] = v35;
  *&v171[0] = sub_243AC1828();
  *(&v171[0] + 1) = v37;
  memset(&v171[1], 0, 33);
  sub_243AC1788();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED99BF8, &unk_243AC85A0);
  sub_243A81ED8();
  sub_243AC1EC8();

  LOBYTE(v35) = sub_243AC1C38();
  sub_243AC17D8();
  sub_243AC1718();
  v39 = v38;
  v41 = v40;
  v43 = v42;
  v45 = v44;
  (*(v155 + 32))(v32, v25, v164);
  v46 = &v32[*(v27 + 44)];
  *v46 = v35;
  *(v46 + 1) = v39;
  *(v46 + 2) = v41;
  *(v46 + 3) = v43;
  *(v46 + 4) = v45;
  v46[40] = 0;
  v164 = v34;
  sub_243A22814(v32, v34, &qword_27ED99BF0, &qword_243AC8598);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_243AC16A8();

  if (LOBYTE(v171[0]) == 1)
  {
    v48 = v142;
    sub_243A80B54(v47);
    v49 = v143;
    v50 = v158;
    (*(v143 + 16))(v157, v48, v158);
    swift_storeEnumTagMultiPayload();
    v51 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED99C10, &qword_243AC8678);
    v52 = sub_243A822B4();
    *&v171[0] = v51;
    *(&v171[0] + 1) = v52;
    swift_getOpaqueTypeConformance2();
    sub_243A82478();
    v53 = v163;
    sub_243AC1AE8();
    (*(v49 + 8))(v48, v50);
  }

  else
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_243AC16A8();

    v54 = *&v171[0];
    v55 = v161;
    v56 = v146;
    sub_243A81C24(v161, v146);
    v57 = (*(v144 + 80) + 16) & ~*(v144 + 80);
    v58 = swift_allocObject();
    sub_243A821DC(v56, v58 + v57, type metadata accessor for RecommendationsList);
    v59 = *(v160 + 32);
    v60 = (v55 + *(v160 + 28));
    v62 = *v60;
    v61 = v60[1];
    v64 = *(v55 + v59);
    v63 = *(v55 + v59 + 8);
    KeyPath = swift_getKeyPath();
    v66 = v149;
    *v149 = KeyPath;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED990D8, &qword_243AC8670);
    swift_storeEnumTagMultiPayload();
    v67 = v147;
    *(v66 + *(v147 + 20)) = v54;
    v68 = (v66 + v67[6]);
    *v68 = sub_243A82158;
    v68[1] = v58;
    v69 = (v66 + v67[7]);
    *v69 = v62;
    v69[1] = v61;
    v70 = (v66 + v67[8]);
    *v70 = v64;
    v70[1] = v63;

    LOBYTE(v61) = sub_243AC1C38();
    sub_243AC17D8();
    sub_243AC1718();
    v72 = v71;
    v74 = v73;
    v76 = v75;
    v78 = v77;
    v79 = v148;
    sub_243A821DC(v66, v148, type metadata accessor for RecommendationsCardList);
    v80 = v79 + *(v159 + 36);
    *v80 = v61;
    *(v80 + 8) = v72;
    *(v80 + 16) = v74;
    *(v80 + 24) = v76;
    *(v80 + 32) = v78;
    *(v80 + 40) = 0;
    v81 = v150;
    sub_243A82244(v79, v150);
    sub_243A224B4(v81, v157, &qword_27ED99BC8, &qword_243AC8570);
    swift_storeEnumTagMultiPayload();
    v82 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED99C10, &qword_243AC8678);
    v83 = sub_243A822B4();
    *&v171[0] = v82;
    *(&v171[0] + 1) = v83;
    swift_getOpaqueTypeConformance2();
    sub_243A82478();
    v53 = v163;
    sub_243AC1AE8();
    sub_243A2251C(v81, &qword_27ED99BC8, &qword_243AC8570);
  }

  v84 = sub_243AA35C8();

  if (v84)
  {
    goto LABEL_13;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_243AC16A8();

  v85 = *&v171[0];
  if (!(*&v171[0] >> 62))
  {
    result = *((*&v171[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
    v88 = v160;
    v87 = v161;
    if (result)
    {
      goto LABEL_7;
    }

    goto LABEL_12;
  }

  result = sub_243AC2DF8();
  v88 = v160;
  v87 = v161;
  if (!result)
  {
LABEL_12:

LABEL_13:
    sub_243A8284C(&v172);
LABEL_14:
    swift_getKeyPath();
    swift_getKeyPath();
    sub_243AC16A8();

    if (v171[0])
    {
      v106 = 1;
      v107 = v167;
      v108 = v152;
LABEL_23:
      (*(v151 + 56))(v107, v106, 1, v108);
      v120 = v165;
      sub_243A224B4(v164, v165, &qword_27ED99BF0, &qword_243AC8598);
      v121 = v166;
      sub_243A224B4(v53, v166, &qword_27ED99BE0, &qword_243AC8588);
      v170[6] = v178;
      v170[7] = v179;
      v170[8] = v180;
      LOBYTE(v170[9]) = v181;
      v170[2] = v174;
      v170[3] = v175;
      v170[4] = v176;
      v170[5] = v177;
      v170[0] = v172;
      v170[1] = v173;
      v122 = v153;
      sub_243A224B4(v107, v153, &qword_27ED99BC0, &qword_243AC8568);
      v123 = v53;
      v124 = v154;
      sub_243A224B4(v120, v154, &qword_27ED99BF0, &qword_243AC8598);
      v125 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED99C70, &qword_243AC8730);
      sub_243A224B4(v121, v124 + v125[12], &qword_27ED99BE0, &qword_243AC8588);
      v126 = v125[16];
      v127 = v170[5];
      v169[6] = v170[6];
      v169[7] = v170[7];
      v128 = v170[7];
      v169[8] = v170[8];
      v129 = v170[3];
      v130 = v170[4];
      v169[4] = v170[4];
      v169[5] = v170[5];
      v131 = v170[2];
      v132 = v170[1];
      v169[2] = v170[2];
      v169[3] = v170[3];
      v133 = v170[0];
      v169[0] = v170[0];
      v169[1] = v170[1];
      v134 = v124 + v126;
      *(v134 + 96) = v170[6];
      *(v134 + 112) = v128;
      *(v134 + 128) = v170[8];
      *(v134 + 32) = v131;
      *(v134 + 48) = v129;
      *(v134 + 64) = v130;
      *(v134 + 80) = v127;
      LOBYTE(v169[9]) = v170[9];
      *(v134 + 144) = v170[9];
      *v134 = v133;
      *(v134 + 16) = v132;
      sub_243A224B4(v122, v124 + v125[20], &qword_27ED99BC0, &qword_243AC8568);
      sub_243A224B4(v169, v171, &qword_27ED99C78, &qword_243AC8738);
      sub_243A2251C(v167, &qword_27ED99BC0, &qword_243AC8568);
      sub_243A2251C(v123, &qword_27ED99BE0, &qword_243AC8588);
      sub_243A2251C(v164, &qword_27ED99BF0, &qword_243AC8598);
      sub_243A2251C(v122, &qword_27ED99BC0, &qword_243AC8568);
      v171[6] = v170[6];
      v171[7] = v170[7];
      v171[8] = v170[8];
      LOBYTE(v171[9]) = v170[9];
      v171[2] = v170[2];
      v171[3] = v170[3];
      v171[4] = v170[4];
      v171[5] = v170[5];
      v171[0] = v170[0];
      v171[1] = v170[1];
      sub_243A2251C(v171, &qword_27ED99C78, &qword_243AC8738);
      sub_243A2251C(v166, &qword_27ED99BE0, &qword_243AC8588);
      return sub_243A2251C(v165, &qword_27ED99BF0, &qword_243AC8598);
    }

    swift_getKeyPath();
    swift_getKeyPath();
    sub_243AC16A8();

    v109 = v171[0];
    if (LOBYTE(v171[0]) == 3)
    {
      if ((sub_243A7F044() & 1) == 0)
      {
        v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED99C68, &qword_243AC8728);
        v117 = v141;
        (*(*(v119 - 8) + 56))(v141, 1, 1, v119);
        goto LABEL_22;
      }

      sub_243A80FFC(v170);
      *&v171[0] = sub_243AC1F98();
      v110 = sub_243AC20C8();
      memcpy(v169, v170, 0x138uLL);
      *(&v169[19] + 1) = v110;
      sub_243AC1788();
      v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED99C80, &qword_243AC8740);
      v112 = sub_243A82544();
      v113 = v137;
      sub_243AC1EC8();
      memcpy(v171, v169, sizeof(v171));
      sub_243A2251C(v171, &qword_27ED99C80, &qword_243AC8740);
      v114 = v139;
      v115 = v140;
      (*(v139 + 16))(v138, v113, v140);
    }

    else
    {
      sub_243A5B1A4(v171[0]);
      sub_243A5B438(v109);
      sub_243A80E50(v168);

      *&v171[0] = sub_243AC1F98();
      v116 = sub_243AC20C8();
      memcpy(v169, v168, 0x131uLL);
      *(&v169[19] + 1) = v116;
      sub_243AC1788();
      v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED99C80, &qword_243AC8740);
      v112 = sub_243A82544();
      v113 = v137;
      sub_243AC1EC8();
      memcpy(v171, v169, sizeof(v171));
      sub_243A2251C(v171, &qword_27ED99C80, &qword_243AC8740);
      v114 = v139;
      v115 = v140;
      (*(v139 + 16))(v138, v113, v140);
    }

    swift_storeEnumTagMultiPayload();
    *&v169[0] = v111;
    *(&v169[0] + 1) = v112;
    swift_getOpaqueTypeConformance2();
    v117 = v141;
    sub_243AC1AE8();
    (*(v114 + 8))(v113, v115);
    v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED99C68, &qword_243AC8728);
    (*(*(v118 - 8) + 56))(v117, 0, 1, v118);
LABEL_22:
    v107 = v167;
    v108 = v152;
    sub_243A22814(v117, v167, &qword_27ED99BB8, &qword_243AC8560);
    v106 = 0;
    goto LABEL_23;
  }

LABEL_7:
  if ((v85 & 0xC000000000000001) != 0)
  {
    v89 = MEMORY[0x245D470F0](0, v85);
    goto LABEL_10;
  }

  if (*((v85 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v89 = *(v85 + 32);

LABEL_10:

    v90 = (v87 + *(v88 + 28));
    v91 = v90[1];
    v160 = *v90;
    LOBYTE(v169[0]) = 0;

    sub_243AC2058();
    v92 = v171[0];
    v159 = *(&v171[0] + 1);
    v93 = sub_243AC1828();
    v95 = v94;
    v96 = sub_243AC1C38();
    sub_243AC17D8();
    sub_243AC1718();
    v98 = v97;
    v100 = v99;
    v102 = v101;
    v104 = v103;
    LOBYTE(v170[0]) = 0;
    v105 = sub_243AC1C68();

    LOBYTE(v169[0]) = 1;
    *&v171[0] = v93;
    *(&v171[0] + 1) = v95;
    LOBYTE(v171[1]) = v92;
    *(&v171[1] + 1) = v159;
    *&v171[2] = v89;
    *(&v171[2] + 1) = v160;
    *&v171[3] = v91;
    BYTE8(v171[3]) = v96;
    *&v171[4] = v98;
    *(&v171[4] + 1) = v100;
    *&v171[5] = v102;
    *(&v171[5] + 1) = v104;
    LOBYTE(v171[6]) = 0;
    BYTE8(v171[6]) = v105;
    memset(&v171[7], 0, 32);
    LOBYTE(v171[9]) = 1;
    nullsub_1();
    v178 = v171[6];
    v179 = v171[7];
    v180 = v171[8];
    v181 = v171[9];
    v174 = v171[2];
    v175 = v171[3];
    v176 = v171[4];
    v177 = v171[5];
    v172 = v171[0];
    v173 = v171[1];
    v53 = v163;
    goto LABEL_14;
  }

  __break(1u);
  return result;
}