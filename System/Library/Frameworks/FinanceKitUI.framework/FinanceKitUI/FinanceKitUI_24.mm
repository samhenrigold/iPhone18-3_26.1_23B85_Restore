char *sub_2386CF368(uint64_t a1, uint64_t a2, void *a3, unint64_t *a4, void *a5)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v6 = a5;
    v8 = a4;
    v9 = a3;
    v10 = a2;
    v11 = a1;
    v12 = *v7;
    v13 = *v7 >> 62;
    if (!v13)
    {
      result = *((*v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result >= a2)
      {
        goto LABEL_4;
      }

LABEL_13:
      __break(1u);
      goto LABEL_14;
    }
  }

  result = sub_23875F3A0();
  if (result < v10)
  {
    goto LABEL_13;
  }

LABEL_4:
  v15 = v10 - v11;
  if (__OFSUB__(v10, v11))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v16 = 1 - v15;
  if (__OFSUB__(1, v15))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v13)
  {
    v17 = sub_23875F3A0();
  }

  else
  {
    v17 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v18 = __OFADD__(v17, v16);
  result = (v17 + v16);
  if (!v18)
  {
    sub_2386CB890(result, 1);
    return sub_2386CF244(v11, v10, 1, v9, v8, v6);
  }

LABEL_16:
  __break(1u);
  return result;
}

uint64_t type metadata accessor for SingleAccountSharingChoiceController(uint64_t a1)
{
  result = qword_27DF14378;
  if (!qword_27DF14378)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2386CF4B4(uint64_t a1)
{
  sub_2386CF5E4(319, &qword_27DF14388, MEMORY[0x277CC95F0]);
  if (v1 <= 0x3F)
  {
    sub_2386CF5E4(319, &qword_27DF14390, MEMORY[0x277CC7078]);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_2386CF5E4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_23875F1F0();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

id sub_2386CF638()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B328, &qword_238768050);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v12[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v4);
  v6 = &v12[-v5];
  v7 = OBJC_IVAR____TtC12FinanceKitUI36SingleAccountSharingChoiceController_currentAccountStartDate;
  swift_beginAccess();
  sub_23843981C(v0 + v7, v6, &qword_27DF0B328, &qword_238768050);
  v8 = sub_2387587E0();
  v9 = *(v8 - 8);
  v10 = (*(v9 + 48))(v6, 1, v8);
  result = sub_238439884(v6, &qword_27DF0B328, &qword_238768050);
  if (v10 != 1)
  {
    (*(v9 + 56))(v3, 1, 1, v8);
    swift_beginAccess();
    sub_2385309FC(v3, v0 + v7, &qword_27DF0B328, &qword_238768050);
    swift_endAccess();
    return [v0 reloadSpecifiers];
  }

  return result;
}

id sub_2386CF7FC()
{
  v1 = sub_23875C1E0();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12E00, &unk_238763FC0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v23 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B328, &qword_238768050);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v23 - v9;
  v11 = sub_2387587E0();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = OBJC_IVAR____TtC12FinanceKitUI36SingleAccountSharingChoiceController_specifierForAccountStartDate;
  swift_beginAccess();
  if (*&v0[v15])
  {
    v16 = OBJC_IVAR____TtC12FinanceKitUI36SingleAccountSharingChoiceController_currentAccountStartDate;
    swift_beginAccess();
    if ((*(v12 + 48))(&v0[v16], 1, v11) || ((*(v12 + 16))(v14, &v0[v16], v11), v17 = sub_2387587D0(), result = (*(v12 + 8))(v14, v11), (v17 & 1) == 0))
    {
      v19 = sub_23875BC40();
      (*(*(v19 - 8) + 56))(v7, 1, 1, v19);
      sub_2387587C0();
      (*(v12 + 56))(v10, 0, 1, v11);
      swift_beginAccess();
      sub_2385309FC(v10, &v0[v16], &qword_27DF0B328, &qword_238768050);
      swift_endAccess();
      return [v0 reloadSpecifiers];
    }
  }

  else
  {
    sub_23875C120();
    v20 = sub_23875C1B0();
    v21 = sub_23875EFE0();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_2383F8000, v20, v21, "specifierForAccountStartDate should exists", v22, 2u);
      MEMORY[0x23EE64DF0](v22, -1, -1);
    }

    return (*(v2 + 8))(v4, v1);
  }

  return result;
}

uint64_t sub_2386CFBCC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B328, &qword_238768050);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroyTm_31()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2386CFC7C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2384494A4;

  return sub_2386C88C0(a1, v4, v5, v6);
}

void sub_2386CFD30(id a1)
{
  if (a1 != 1)
  {
  }
}

uint64_t sub_2386CFD40(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_238449A7C;

  return sub_2386CB6A0(a1, v4);
}

uint64_t sub_2386CFDF8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2384494A4;

  return sub_2386CB6A0(a1, v4);
}

double block_copy_helper_17(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_2386CFED8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2386CFF24(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D040, &qword_2387676A0);
  v2[4] = swift_task_alloc();
  v3 = sub_23875B940();
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0AF98, &unk_238775820);
  v2[8] = swift_task_alloc();
  v4 = sub_238758350();
  v2[9] = v4;
  v2[10] = *(v4 - 8);
  v2[11] = swift_task_alloc();
  v2[12] = swift_task_alloc();
  v2[13] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2386D00C8, 0, 0);
}

uint64_t sub_2386D00C8()
{
  v1 = v0[2];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v0[10];
    v4 = v0[6];
    v46 = (v4 + 48);
    v42 = (v4 + 32);
    v43 = (v4 + 8);
    v44 = (v3 + 32);
    v45 = (v3 + 56);
    v39 = v3;
    v41 = (v3 + 48);
    v5 = v1 + 40;
    v6 = MEMORY[0x277D84F90];
    while (1)
    {
      v10 = v0[4];
      v9 = v0[5];

      sub_2387588A0();
      sub_2387591A0();
      v11 = (*v46)(v10, 1, v9);
      v12 = v0[4];
      if (v11 == 1)
      {
        v8 = v0[8];
        v7 = v0[9];

        sub_238439884(v12, &qword_27DF0D040, &qword_2387676A0);
        (*v45)(v8, 1, 1, v7);
      }

      else
      {
        v13 = v0[7];
        (*v42)(v13, v0[4], v0[5]);
        sub_238585454(v13);
        if (v14)
        {
          (*v43)(v0[7], v0[5]);

          v15 = 1;
        }

        else
        {
          v40 = v6;
          v16 = sub_23875B960();
          v18 = v17;
          v19 = objc_allocWithZone(MEMORY[0x277CBF758]);
          sub_23844C8EC(v16, v18);
          v20 = sub_23875B980();
          v21 = [v19 initWithData_];

          sub_23844C954(v16, v18);
          if (v21)
          {
            sub_238758030();
            sub_238758320();
          }

          else
          {
            sub_238758320();
          }

          v22 = v0[12];
          v24 = v0[8];
          v23 = v0[9];
          v25 = v0[7];
          v26 = v0[5];

          (*v43)(v25, v26);
          (*v44)(v24, v22, v23);
          v15 = 0;
          v6 = v40;
        }

        v28 = v0[8];
        v27 = v0[9];
        (*v45)(v28, v15, 1, v27);
        if ((*v41)(v28, 1, v27) != 1)
        {
          v29 = v0[13];
          v30 = v0[11];
          v31 = v0[9];
          v32 = *v44;
          (*v44)(v29, v0[8], v31);
          v32(v30, v29, v31);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v6 = sub_2384986AC(0, v6[2] + 1, 1, v6);
          }

          v34 = v6[2];
          v33 = v6[3];
          if (v34 >= v33 >> 1)
          {
            v6 = sub_2384986AC((v33 > 1), v34 + 1, 1, v6);
          }

          v35 = v0[11];
          v36 = v0[9];
          v6[2] = v34 + 1;
          v32(v6 + ((*(v39 + 80) + 32) & ~*(v39 + 80)) + *(v39 + 72) * v34, v35, v36);
          goto LABEL_5;
        }
      }

      sub_238439884(v0[8], &qword_27DF0AF98, &unk_238775820);
LABEL_5:
      v5 += 16;
      if (!--v2)
      {
        goto LABEL_20;
      }
    }
  }

  v6 = MEMORY[0x277D84F90];
LABEL_20:

  v37 = v0[1];

  return v37(v6);
}

uint64_t sub_2386D0620(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D040, &qword_2387676A0);
  v3[5] = swift_task_alloc();
  v4 = sub_23875B940();
  v3[6] = v4;
  v3[7] = *(v4 - 8);
  v3[8] = swift_task_alloc();
  v3[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2386D0728, 0, 0);
}

uint64_t sub_2386D0728()
{
  v1 = v0[6];
  v2 = v0[7];
  v3 = v0[5];
  sub_238759180();
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_238439884(v0[5], &qword_27DF0D040, &qword_2387676A0);
    v4 = 0;
  }

  else
  {
    v6 = v0[8];
    v5 = v0[9];
    v7 = v0[6];
    v8 = v0[7];
    (*(v8 + 32))(v5, v0[5], v7);
    (*(v8 + 16))(v6, v5, v7);
    v4 = _s12FinanceKitUI12OrderReceiptC7fileUrlACSg10Foundation3URLV_tcfC_0(v6);
    (*(v8 + 8))(v5, v7);
  }

  v9 = v0[1];

  return v9(v4);
}

uint64_t sub_2386D0880(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D040, &qword_2387676A0);
  v3[5] = swift_task_alloc();
  v4 = sub_23875B940();
  v3[6] = v4;
  v3[7] = *(v4 - 8);
  v3[8] = swift_task_alloc();
  v3[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2386D0988, 0, 0);
}

uint64_t sub_2386D0988()
{
  v1 = v0[6];
  v2 = v0[7];
  v3 = v0[5];
  sub_238759190();
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_238439884(v0[5], &qword_27DF0D040, &qword_2387676A0);
    v4 = 0;
  }

  else
  {
    v6 = v0[8];
    v5 = v0[9];
    v7 = v0[6];
    v8 = v0[7];
    (*(v8 + 32))(v5, v0[5], v7);
    (*(v8 + 16))(v6, v5, v7);
    v4 = _s12FinanceKitUI16OrderReturnLabelC7fileUrlACSg10Foundation3URLV_tcfC_0(v6);
    (*(v8 + 8))(v5, v7);
  }

  v9 = v0[1];

  return v9(v4);
}

uint64_t sub_2386D0AE0()
{

  return swift_deallocClassInstance();
}

uint64_t sub_2386D0B3C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_238580A3C;

  return sub_2386CFF24(a1);
}

uint64_t sub_2386D0BD4(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_238586094;

  return sub_2386D0620(a1, a2);
}

uint64_t sub_2386D0C7C(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_238586094;

  return sub_2386D0880(a1, a2);
}

unint64_t sub_2386D0D24(uint64_t a1)
{
  sub_23875EA80();
  sub_23875F700();
  sub_23875EB30();
  v2 = sub_23875F760();

  return sub_238547FD4(a1, v2);
}

unint64_t sub_2386D0DB8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0DEC0, &qword_23876E8D8);
    v3 = sub_23875F570();
    v4 = a1 + 32;

    while (1)
    {
      sub_2386D0EC0(v4, &v11);
      v5 = v11;
      result = sub_2386D0D24(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_23846F7C4(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t sub_2386D0EC0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A4C8, &qword_23876E8E0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

double sub_2386D0F30@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>)
{
  v5 = a1;
  v8 = sub_23875E4A0();
  v10 = v9;
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v11 = swift_allocObject();
  *(v11 + 16) = a4;
  *(v11 + 24) = v5 & 1;
  *(v11 + 32) = a2;

  sub_23875E4A0();
  sub_23875C5C0();
  *a3 = v8;
  *(a3 + 8) = v10;
  *(a3 + 16) = sub_2386D1BAC;
  *(a3 + 24) = v11;
  *(a3 + 32) = v13;
  *(a3 + 48) = v14;
  result = *&v15;
  *(a3 + 64) = v15;
  return result;
}

void sub_2386D1078(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  v29[1] = a1;
  v32 = a2;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF143A8, &qword_23877FD78);
  MEMORY[0x28223BE20](v30);
  v33 = v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = v29 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF143B0, &qword_23877FD80);
  MEMORY[0x28223BE20](v7);
  v9 = v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = v29 - v11;
  sub_23875ED50();
  v31 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_23875C630();
  v13 = *MEMORY[0x277CE0118];
  v14 = sub_23875CF50();
  v15 = *(*(v14 - 8) + 104);
  v15(v12, v13, v14);
  if (qword_2814F0880 != -1)
  {
    swift_once();
  }

  v16 = qword_2814F1B90;
  v17 = sub_23875E0A0();
  *&v12[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF143B8, &qword_23877FD88) + 36)] = v17;
  sub_23875E4A0();
  sub_23875C5C0();
  v18 = &v12[*(v7 + 36)];
  v19 = v35;
  *v18 = v34;
  *(v18 + 1) = v19;
  *(v18 + 2) = v36;
  v15(v6, v13, v14);

  MEMORY[0x23EE62F40](v20);
  sub_23875C740();
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF143C0, &qword_23877FD90);
  v22 = &v6[*(v21 + 52)];
  v23 = v38;
  *v22 = v37;
  *(v22 + 1) = v23;
  *(v22 + 4) = v39;
  *&v6[*(v21 + 56)] = 256;
  sub_23875E4A0();
  sub_23875C5C0();
  v24 = &v6[*(v30 + 36)];
  v25 = v41;
  *v24 = v40;
  *(v24 + 1) = v25;
  *(v24 + 2) = v42;
  sub_23843981C(v12, v9, &qword_27DF143B0, &qword_23877FD80);
  v26 = v33;
  sub_23843981C(v6, v33, &qword_27DF143A8, &qword_23877FD78);
  v27 = v32;
  sub_23843981C(v9, v32, &qword_27DF143B0, &qword_23877FD80);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF143C8, &qword_23877FD98);
  sub_23843981C(v26, v27 + *(v28 + 48), &qword_27DF143A8, &qword_23877FD78);
  sub_238439884(v6, &qword_27DF143A8, &qword_23877FD78);
  sub_238439884(v12, &qword_27DF143B0, &qword_23877FD80);
  sub_238439884(v26, &qword_27DF143A8, &qword_23877FD78);
  sub_238439884(v9, &qword_27DF143B0, &qword_23877FD80);
}

uint64_t sub_2386D14F8(uint64_t a1)
{
  v2 = sub_23875AE10();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, a1, v2, v4);
  v7 = (*(v3 + 88))(v6, v2);
  if (v7 == *MEMORY[0x277CC8468] || v7 == *MEMORY[0x277CC8458])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0ADA8, &unk_23876B470);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_238763B60;
    v9 = qword_2814F0880;
    v10 = 0x3FD0000000000000;
  }

  else if (v7 == *MEMORY[0x277CC8480])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0ADA8, &unk_23876B470);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_238763B60;
    v9 = qword_2814F0880;
    v10 = 0x3FE0000000000000;
  }

  else
  {
    if (v7 != *MEMORY[0x277CC8460])
    {
      v13 = *(v3 + 8);
      v13(a1, v2);
      v13(v6, v2);
      return 0;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0ADA8, &unk_23876B470);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_238763B60;
    v9 = qword_2814F0880;
    v10 = 0x3FE8000000000000;
  }

  if (v9 != -1)
  {
    swift_once();
  }

  v11 = qword_2814F1B90;
  *(v8 + 32) = sub_23875E0A0();
  *(v8 + 40) = sub_23875E0A0();
  (*(v3 + 8))(a1, v2);
  return v10;
}

uint64_t sub_2386D1800(uint64_t a1)
{
  v2 = sub_2387581B0();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, a1, v2, v4);
  v7 = (*(v3 + 88))(v6, v2);
  if (v7 == *MEMORY[0x277CC6E48])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0ADA8, &unk_23876B470);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_238763B60;
    v9 = 0x3FE0000000000000;
    if (qword_2814F0880 != -1)
    {
      goto LABEL_10;
    }
  }

  else if (v7 == *MEMORY[0x277CC6E20])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0ADA8, &unk_23876B470);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_238763B60;
    v9 = 0x3FE8000000000000;
    if (qword_2814F0880 != -1)
    {
LABEL_10:
      swift_once();
    }
  }

  else
  {
    if (v7 != *MEMORY[0x277CC6E18])
    {
      v12 = *(v3 + 8);
      v12(a1, v2);
      v12(v6, v2);
      return 0;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0ADA8, &unk_23876B470);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_238763B60;
    v9 = 0x3FD0000000000000;
    if (qword_2814F0880 != -1)
    {
      goto LABEL_10;
    }
  }

  v10 = qword_2814F1B90;
  *(v8 + 32) = sub_23875E0A0();
  *(v8 + 40) = sub_23875E0A0();
  (*(v3 + 8))(a1, v2);
  return v9;
}

uint64_t sub_2386D1AF8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2386D1B40(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_2386D1BCC()
{
  result = qword_27DF143D0;
  if (!qword_27DF143D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF143D8, &qword_23877FDA8);
    sub_2386D1C58();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF143D0);
  }

  return result;
}

unint64_t sub_2386D1C58()
{
  result = qword_27DF143E0;
  if (!qword_27DF143E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF143E8, qword_23877FDB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF143E0);
  }

  return result;
}

unint64_t sub_2386D1CC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DF143F0;
  if (!qword_27DF143F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF143F0);
  }

  return result;
}

uint64_t type metadata accessor for FetchedReturnDetails(uint64_t a1)
{
  result = qword_27DF143F8;
  if (!qword_27DF143F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2386D1D88(uint64_t a1)
{
  sub_23875A710();
  if (v1 <= 0x3F)
  {
    sub_2386D1E0C(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_2386D1E0C(uint64_t a1)
{
  if (!qword_27DF14408)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF11A48, &qword_23877A090);
    v1 = sub_23875E1E0();
    if (!v2)
    {
      atomic_store(v1, &qword_27DF14408);
    }
  }
}

unint64_t sub_2386D1E8C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  sub_238757DF0();
  v8 = sub_238757D80();
  v9 = MEMORY[0x23EE5C810](a1);
  [v8 setPredicate_];

  result = sub_23875F140();
  if (!(result >> 62))
  {
    if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

LABEL_9:

    v12 = 0;
    goto LABEL_7;
  }

  v15 = result;
  v16 = sub_23875F3A0();
  result = v15;
  if (!v16)
  {
    goto LABEL_9;
  }

LABEL_3:
  if ((result & 0xC000000000000001) != 0)
  {
    v11 = MEMORY[0x23EE63F70](0);
    goto LABEL_6;
  }

  if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v11 = *(result + 32);
LABEL_6:
    v12 = v11;

LABEL_7:
    v13 = swift_allocObject();
    *(v13 + 16) = a3;
    *(v13 + 24) = a4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11A48, &qword_23877A090);
    swift_allocObject();

    v14 = sub_238627B7C(v12, a2, sub_2386D2B10, v13);

    return v14;
  }

  __break(1u);
  return result;
}

void sub_2386D2034(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v7 = [a1 ecommerceOrderContent];
  if (v7)
  {
    v27 = a1;
    v28 = v7;
    v8 = sub_23875A580();
    v9 = v8;
    v29 = a4;
    if (v8 >> 62)
    {
      goto LABEL_25;
    }

    for (i = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_23875F3A0())
    {
      v11 = 0;
      while (1)
      {
        if ((v9 & 0xC000000000000001) != 0)
        {
          v12 = MEMORY[0x23EE63F70](v11, v9);
        }

        else
        {
          if (v11 >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_24;
          }

          v12 = *(v9 + 8 * v11 + 32);
        }

        v13 = v12;
        v14 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
          break;
        }

        sub_23875ED50();
        sub_23875ED40();
        sub_23875ECE0();
        if ((swift_task_isCurrentExecutor() & 1) == 0)
        {
          swift_task_reportUnexpectedExecutor();
        }

        v15 = [v13 returnIdentifier];
        v16 = sub_23875EA80();
        v18 = v17;

        if (v16 == a2 && v18 == a3)
        {

LABEL_19:

          sub_23859FE4C(v27, v28, v13, v29);
          v25 = type metadata accessor for ReturnDetails.ViewModel(0);
          v21 = *(*(v25 - 8) + 56);
          v22 = v25;
          v23 = v29;
          v24 = 0;
          goto LABEL_20;
        }

        v19 = sub_23875F630();

        if (v19)
        {
          goto LABEL_19;
        }

        ++v11;
        if (v14 == i)
        {
          goto LABEL_26;
        }
      }

      __break(1u);
LABEL_24:
      __break(1u);
LABEL_25:
      ;
    }

LABEL_26:

    v26 = type metadata accessor for ReturnDetails.ViewModel(0);
    (*(*(v26 - 8) + 56))(v29, 1, 1, v26);
  }

  else
  {
    v20 = type metadata accessor for ReturnDetails.ViewModel(0);
    v21 = *(*(v20 - 8) + 56);
    v22 = v20;
    v23 = a4;
    v24 = 1;
LABEL_20:

    v21(v23, v24, 1, v22);
  }
}

uint64_t sub_2386D2344@<X0>(uint64_t a1@<X8>)
{
  v44 = a1;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF14410, &unk_23877FE90);
  v42 = *(v43 - 8);
  MEMORY[0x28223BE20](v43);
  v40 = &v40 - v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11A38, &unk_238779510);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v40 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11A30, &qword_23877FEA0);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v40 - v14;
  v16 = type metadata accessor for ReturnDetails.ViewModel(0);
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v40 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *(type metadata accessor for FetchedReturnDetails(0) + 20);
  v41 = v1;
  v21 = (v1 + v20);
  v23 = *v21;
  v22 = v21[1];
  *&v51 = v23;
  *(&v51 + 1) = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF14418, &qword_23877FEA8);
  sub_23875E1B0();
  sub_23863C92C(v8);

  sub_2386D297C(v8, v5);
  if ((*(v10 + 48))(v5, 1, v9) == 1)
  {
    sub_238439884(v8, &qword_27DF11A38, &unk_238779510);
    (*(v17 + 56))(v15, 1, 1, v16);
  }

  else
  {
    sub_2384396E4(v5, v12, &qword_27DF11A30, &qword_23877FEA0);
    sub_23875ED50();
    sub_23875ED40();
    sub_23875ECE0();
    if ((swift_task_isCurrentExecutor() & 1) == 0)
    {
      swift_task_reportUnexpectedExecutor();
    }

    sub_238439884(v8, &qword_27DF11A38, &unk_238779510);
    sub_2384396E4(v12, v15, &qword_27DF11A30, &qword_23877FEA0);
  }

  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {
    sub_238439884(v15, &qword_27DF11A30, &qword_23877FEA0);
    return (*(v42 + 56))(v44, 1, 1, v43);
  }

  else
  {
    sub_2386D29EC(v15, v19);
    v25 = v40;
    sub_2386D2A50(v19, v40);
    v26 = type metadata accessor for ReturnDetails(0);
    v27 = v25 + v26[5];
    LOBYTE(v45) = 1;
    v51 = 0u;
    v52 = 0u;
    v53[0] = 1;
    memset(&v53[8], 0, 32);
    v53[40] = 1;
    sub_23875E1A0();
    sub_2386D2AB4(v19);
    v28 = v50;
    v54 = v50;
    v29 = v49;
    v30 = v48;
    *&v53[16] = v48;
    *&v53[32] = v49;
    v31 = v46;
    v32 = v45;
    v52 = v46;
    *v53 = v47;
    v51 = v45;
    *(v27 + 32) = v47;
    *(v27 + 48) = v30;
    *(v27 + 64) = v29;
    *(v27 + 80) = v28;
    *v27 = v32;
    *(v27 + 16) = v31;
    v33 = v26[6];
    *(v25 + v33) = swift_getKeyPath(aP_25);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B150, &unk_238767A10);
    swift_storeEnumTagMultiPayload();
    v34 = v26[7];
    *(v25 + v34) = swift_getKeyPath(asc_23877FEE8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D340, &qword_238764740);
    swift_storeEnumTagMultiPayload();
    v35 = v43;
    v36 = v25 + *(v43 + 36);
    v37 = sub_23875A710();
    (*(*(v37 - 8) + 16))(v36, v41, v37);
    v38 = v36 + *(type metadata accessor for ManagedOrderResourceLoaderModifier(0) + 20);
    *v38 = swift_getKeyPath(byte_23877FF20);
    *(v38 + 8) = 0;
    v39 = v44;
    sub_2384396E4(v25, v44, &qword_27DF14410, &unk_23877FE90);
    return (*(v42 + 56))(v39, 0, 1, v35);
  }
}

uint64_t sub_2386D297C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11A38, &unk_238779510);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2386D29EC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ReturnDetails.ViewModel(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2386D2A50(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ReturnDetails.ViewModel(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2386D2AB4(uint64_t a1)
{
  v2 = type metadata accessor for ReturnDetails.ViewModel(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_2386D2B18()
{
  result = qword_27DF14420;
  if (!qword_27DF14420)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF14428, &qword_23877FF48);
    sub_2386D2B9C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF14420);
  }

  return result;
}

unint64_t sub_2386D2B9C()
{
  result = qword_27DF14430;
  if (!qword_27DF14430)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF14410, &unk_23877FE90);
    sub_2386D2C88(&qword_27DF14438, type metadata accessor for ReturnDetails, &protocol conformance descriptor for ReturnDetails);
    sub_2386D2C88(&qword_27DF0A060, type metadata accessor for ManagedOrderResourceLoaderModifier, &unk_238770D90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF14430);
  }

  return result;
}

uint64_t sub_2386D2C88(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2386D2CE0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = 0;
  if (((*a1 ^ *a2) & 1) == 0 && *(a1 + 1) == *(a2 + 1) && *(a1 + 2) == *(a2 + 2))
  {
    v2 = a2[24] ^ a1[24] ^ 1;
  }

  return v2 & 1;
}

uint64_t sub_2386D2D30(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[25])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = v3 - 2;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_2386D2D74(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_2386D2DE8(char a1, char *a2, uint64_t a3, char a4)
{
  if ((a4 & 1) == 0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12270, &qword_238765EC0);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_238763B60;
    if (__OFADD__(a2, 1))
    {
      __break(1u);
    }

    else
    {
      v14 = MEMORY[0x277D83B88];
      v15 = MEMORY[0x277D83C10];
      *(v13 + 56) = MEMORY[0x277D83B88];
      *(v13 + 64) = v15;
      *(v13 + 32) = a2 + 1;
      *(v13 + 96) = v14;
      *(v13 + 104) = v15;
      *(v13 + 72) = a3;
      if (qword_2814F0880 == -1)
      {
LABEL_11:
        v12 = qword_2814F1B90;
        goto LABEL_16;
      }
    }

    swift_once();
    goto LABEL_11;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12270, &qword_238765EC0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_238763B60;
  v8 = a2 + 1;
  v9 = __OFADD__(a2, 1);
  if (a1)
  {
    if (!v9)
    {
      v10 = MEMORY[0x277D83B88];
      v11 = MEMORY[0x277D83C10];
      *(v7 + 56) = MEMORY[0x277D83B88];
      *(v7 + 64) = v11;
      *(v7 + 32) = v8;
      *(v7 + 96) = v10;
      *(v7 + 104) = v11;
      *(v7 + 72) = a3;
      if (qword_2814F0880 == -1)
      {
LABEL_8:
        v12 = qword_2814F1B90;
        goto LABEL_16;
      }

LABEL_21:
      swift_once();
      goto LABEL_8;
    }

    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (v9)
  {
    goto LABEL_20;
  }

  v16 = MEMORY[0x277D83B88];
  v17 = MEMORY[0x277D83C10];
  *(v7 + 56) = MEMORY[0x277D83B88];
  *(v7 + 64) = v17;
  *(v7 + 32) = v8;
  *(v7 + 96) = v16;
  *(v7 + 104) = v17;
  *(v7 + 72) = a3;
  if (qword_2814F0880 != -1)
  {
    swift_once();
  }

  v12 = qword_2814F1B90;
LABEL_16:
  v18 = sub_23875EA50();
  v19 = sub_23875EA50();
  v20 = sub_23875EA50();
  v21 = [v12 localizedStringForKey:v18 value:v19 table:v20];

  sub_23875EA80();
  v22 = sub_23875EAA0();

  return v22;
}

void sub_2386D30B4(uint64_t a1@<X8>)
{
  v3 = sub_2386D2DE8(*v1, *(v1 + 8), *(v1 + 16), *(v1 + 24));
  sub_2384397A8(v3, v4, v5);
  v6 = sub_23875DAA0();
  v8 = v7;
  v10 = v9;
  sub_23875D7F0();
  v11 = sub_23875DA60();
  v13 = v12;
  v15 = v14;

  sub_2384397FC(v6, v8, v10 & 1);

  sub_23875D440();
  v16 = sub_23875DA20();
  v18 = v17;
  v20 = v19;
  v22 = v21;
  sub_2384397FC(v11, v13, v15 & 1);

  *a1 = v16;
  *(a1 + 8) = v18;
  *(a1 + 16) = v20 & 1;
  *(a1 + 24) = v22;
}

unint64_t sub_2386D31F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DF14440;
  if (!qword_27DF14440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF14440);
  }

  return result;
}

uint64_t type metadata accessor for OrderWidgetImageView(uint64_t a1)
{
  result = qword_27DF14448;
  if (!qword_27DF14448)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2386D32C0(uint64_t a1)
{
  result = type metadata accessor for OrderWidgetTimelineEntry.WidgetOrderData(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_2386D3354@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v35 = a1;
  v36 = type metadata accessor for ExtractedOrderImageView(0);
  MEMORY[0x28223BE20](v36);
  v4 = &v35 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for OrderWidgetTimelineEntry.ExtractedOrderData(0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF14458, &qword_238780108);
  MEMORY[0x28223BE20](v8);
  v10 = &v35 - v9;
  v11 = type metadata accessor for ClassicOrderImageView(0);
  MEMORY[0x28223BE20](v11);
  v13 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for OrderWidgetTimelineEntry.ClassicOrderData(0);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for OrderWidgetTimelineEntry.WidgetOrderData(0);
  MEMORY[0x28223BE20](v17);
  v19 = &v35 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2386D3970(v2, v19, type metadata accessor for OrderWidgetTimelineEntry.WidgetOrderData);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_2384E73D4(v19, v7, type metadata accessor for OrderWidgetTimelineEntry.ExtractedOrderData);
    v20 = type metadata accessor for OrderWidgetImageView(0);
    v21 = *(v2 + *(v20 + 20));
    v22 = *(v2 + *(v20 + 28));
    sub_2386D3970(v7, v4, type metadata accessor for OrderWidgetTimelineEntry.ExtractedOrderData);
    v23 = v36;
    *&v4[*(v36 + 20)] = v21;
    *&v4[*(v23 + 24)] = v22;
    sub_2386D3970(v4, v10, type metadata accessor for ExtractedOrderImageView);
    swift_storeEnumTagMultiPayload();
    sub_2386D3928(&qword_27DF14460, type metadata accessor for ClassicOrderImageView, &unk_238768CD0);
    sub_2386D3928(&qword_27DF14468, type metadata accessor for ExtractedOrderImageView, &unk_238768DA8);
    sub_23875D1B0();
    sub_2386D39D8(v4, type metadata accessor for ExtractedOrderImageView);
    v24 = type metadata accessor for OrderWidgetTimelineEntry.ExtractedOrderData;
    v25 = v7;
  }

  else
  {
    sub_2384E73D4(v19, v16, type metadata accessor for OrderWidgetTimelineEntry.ClassicOrderData);
    v26 = type metadata accessor for OrderWidgetImageView(0);
    v27 = *(v2 + v26[5]);
    v28 = *(v2 + v26[6]);
    v29 = *(v2 + v26[7]);
    sub_2386D3970(v16, v13, type metadata accessor for OrderWidgetTimelineEntry.ClassicOrderData);
    *&v13[v11[5]] = v27;
    *&v13[v11[6]] = v28;
    *&v13[v11[7]] = v29;
    v30 = v11[8];
    *&v13[v30] = swift_getKeyPath(byte_238780110, v35);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF092F8, &qword_238763100);
    swift_storeEnumTagMultiPayload();
    v31 = v11[9];
    *&v13[v31] = swift_getKeyPath(byte_238780148);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0BEF8, &qword_23876DAC0);
    swift_storeEnumTagMultiPayload();
    v32 = &v13[v11[10]];
    *v32 = swift_getKeyPath(aP_26);
    v32[40] = 0;
    v33 = v11[11];
    *&v13[v33] = swift_getKeyPath(a0_14);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0AC68, &unk_23876A220);
    swift_storeEnumTagMultiPayload();
    sub_2386D3970(v13, v10, type metadata accessor for ClassicOrderImageView);
    swift_storeEnumTagMultiPayload();
    sub_2386D3928(&qword_27DF14460, type metadata accessor for ClassicOrderImageView, &unk_238768CD0);
    sub_2386D3928(&qword_27DF14468, type metadata accessor for ExtractedOrderImageView, &unk_238768DA8);
    sub_23875D1B0();
    sub_2386D39D8(v13, type metadata accessor for ClassicOrderImageView);
    v24 = type metadata accessor for OrderWidgetTimelineEntry.ClassicOrderData;
    v25 = v16;
  }

  return sub_2386D39D8(v25, v24);
}

uint64_t sub_2386D3928(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2386D3970(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2386D39D8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_2386D3A38()
{
  result = qword_27DF14470;
  if (!qword_27DF14470)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF14478, &qword_2387801E0);
    sub_2386D3928(&qword_27DF14460, type metadata accessor for ClassicOrderImageView, &unk_238768CD0);
    sub_2386D3928(&qword_27DF14468, type metadata accessor for ExtractedOrderImageView, &unk_238768DA8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF14470);
  }

  return result;
}

uint64_t sub_2386D3B24(uint64_t *a1, void *a2, uint64_t a3)
{
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (sub_23875F630() & 1) != 0)
  {
    v7 = *(a3 + 20);
    v8 = a1 + v7;
    v9 = a2 + v7;
    if (MEMORY[0x23EE5FA60](a1 + v7, a2 + v7))
    {
      v10 = type metadata accessor for ProductImage.ViewModel(0);
      if (sub_238518C1C(*&v8[*(v10 + 20)], *&v9[*(v10 + 20)]) & 1) != 0 && (MEMORY[0x23EE5DB60](a1 + *(a3 + 24), a2 + *(a3 + 24)))
      {

        JUMPOUT(0x23EE5FB50);
      }
    }
  }

  return 0;
}

uint64_t sub_2386D3C00@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v22[1] = a1;
  v22[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF144A0, &qword_238780290);
  MEMORY[0x28223BE20](v22[0]);
  v4 = v22 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF144A8, &qword_238780298);
  MEMORY[0x28223BE20](v5);
  v7 = v22 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF144B0, &qword_2387802A0);
  MEMORY[0x28223BE20](v8);
  v10 = v22 - v9;
  v11 = sub_23875C880();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for OrderSearchActiveRow(0);
  sub_2384D5138(v14);
  v15 = sub_23875C860();
  (*(v12 + 8))(v14, v11);
  if (v15)
  {
    *v10 = sub_23875D030();
    *(v10 + 1) = 0;
    v10[16] = 1;
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF144E0, &qword_2387802B8);
    sub_2386D3F8C(v2, &v10[*(v16 + 44)]);
    *&v10[*(v8 + 36)] = 256;
    v17 = &qword_27DF144B0;
    v18 = &qword_2387802A0;
    sub_23843981C(v10, v7, &qword_27DF144B0, &qword_2387802A0);
    swift_storeEnumTagMultiPayload();
    sub_2386D5FD4();
    sub_23843A3E8(&qword_27DF144D8, &qword_27DF144A0, &qword_238780290, MEMORY[0x277CE1138]);
    sub_23875D1B0();
    v19 = v10;
  }

  else
  {
    *v4 = sub_23875CE60();
    *(v4 + 1) = 0x4028000000000000;
    v4[16] = 0;
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF144B8, &qword_2387802A8);
    sub_2386D506C(v2, &v4[*(v20 + 44)]);
    v17 = &qword_27DF144A0;
    v18 = &qword_238780290;
    sub_23843981C(v4, v7, &qword_27DF144A0, &qword_238780290);
    swift_storeEnumTagMultiPayload();
    sub_2386D5FD4();
    sub_23843A3E8(&qword_27DF144D8, &qword_27DF144A0, &qword_238780290, MEMORY[0x277CE1138]);
    sub_23875D1B0();
    v19 = v4;
  }

  return sub_238439884(v19, v17, v18);
}

double sub_2386D3F8C@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v69 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A028, &qword_238764FC0);
  MEMORY[0x28223BE20](v3 - 8);
  v70 = &v63 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v74 = &v63 - v6;
  v71 = sub_23875DFD0();
  v7 = *(v71 - 8);
  MEMORY[0x28223BE20](v71);
  v9 = &v63 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0E618, &unk_2387766D0);
  MEMORY[0x28223BE20](v10);
  v12 = &v63 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v63 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF144E8, &qword_2387802C0);
  MEMORY[0x28223BE20](v16 - 8);
  v73 = &v63 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v63 - v19;
  sub_23875ED50();
  v68 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  *v20 = sub_23875CE50();
  *(v20 + 1) = 0;
  v20[16] = 1;
  v67 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v21 = &v20[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF144F0, &qword_2387802C8) + 44)];
  active = type metadata accessor for OrderSearchActiveRow.ViewModel(0);
  sub_238620D88(a1 + *(active + 20), v15);
  v23 = type metadata accessor for ProductImage(0);
  v66 = a1;
  v24 = *(v23 + 20);
  *&v15[v24] = swift_getKeyPath(byte_2387802D0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF092F8, &qword_238763100);
  v72 = v20;
  swift_storeEnumTagMultiPayload();
  (*(v7 + 104))(v9, *MEMORY[0x277CE0EE0], v71);
  v25 = sub_23875E090();
  KeyPath = swift_getKeyPath(byte_238780308);
  v27 = &v15[*(v10 + 36)];
  v28 = type metadata accessor for OrderImageStyleModifier(0);
  *&v27[*(v28 + 36)] = KeyPath;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D340, &qword_238764740);
  swift_storeEnumTagMultiPayload();
  *&v27[*(v28 + 40)] = swift_getKeyPath(byte_2387802D0);
  swift_storeEnumTagMultiPayload();
  *v27 = xmmword_23876FD10;
  *(v27 + 2) = 0;
  v27[24] = 1;
  *(v27 + 4) = v25;
  v27[40] = 0;
  sub_23843981C(v15, v12, &qword_27DF0E618, &unk_2387766D0);
  sub_23843981C(v12, v21, &qword_27DF0E618, &unk_2387766D0);
  v29 = v21 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF144F8, &qword_238780340) + 48);
  *v29 = 0;
  *(v29 + 8) = 1;
  sub_238439884(v15, &qword_27DF0E618, &unk_2387766D0);
  sub_238439884(v12, &qword_27DF0E618, &unk_2387766D0);

  v31 = v66[1];
  v75 = *v66;
  v76 = v31;
  sub_2384397A8(v30, v32, v33);

  v34 = sub_23875DAA0();
  v36 = v35;
  LOBYTE(v25) = v37;
  sub_23875D820();
  v38 = sub_23875DA60();
  v40 = v39;
  v42 = v41;

  sub_2384397FC(v34, v36, v25 & 1);

  sub_23875D890();
  v71 = sub_23875D9E0();
  v44 = v43;
  v65 = v45;
  v67 = v46;
  sub_2384397FC(v38, v40, v42 & 1);

  v64 = sub_23875D000();
  sub_2386D4700(&v75);
  v47 = v75;
  v48 = v76;
  v49 = v77;
  v50 = v78;
  v51 = v74;
  sub_2386D4B3C(v74);
  v52 = v73;
  sub_23843981C(v72, v73, &qword_27DF144E8, &qword_2387802C0);
  v53 = v70;
  sub_23843981C(v51, v70, &qword_27DF0A028, &qword_238764FC0);
  v54 = v52;
  v55 = v69;
  sub_23843981C(v54, v69, &qword_27DF144E8, &qword_2387802C0);
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF14500, &qword_238780348);
  v57 = v55 + v56[12];
  v58 = v71;
  *v57 = v71;
  *(v57 + 8) = v44;
  v59 = v65 & 1;
  *(v57 + 16) = v65 & 1;
  v60 = v64;
  *(v57 + 24) = v67;
  *(v57 + 32) = v60;
  *(v57 + 40) = sub_23843480C;
  *(v57 + 48) = 0;
  v61 = v55 + v56[16];
  *v61 = v47;
  *(v61 + 8) = v48;
  *(v61 + 16) = v49;
  *(v61 + 24) = v50;
  sub_23843981C(v53, v55 + v56[20], &qword_27DF0A028, &qword_238764FC0);
  sub_23843980C(v58, v44, v59);

  sub_23843980C(v47, v48, v49);

  sub_238439884(v74, &qword_27DF0A028, &qword_238764FC0);
  sub_238439884(v72, &qword_27DF144E8, &qword_2387802C0);
  sub_238439884(v53, &qword_27DF0A028, &qword_238764FC0);
  sub_2384397FC(v47, v48, v49);

  sub_2384397FC(v71, v44, v59);

  sub_238439884(v73, &qword_27DF144E8, &qword_2387802C0);

  return result;
}

void sub_2386D4700(uint64_t *a1@<X8>)
{
  v37 = a1;
  v2 = sub_23875BE40();
  MEMORY[0x28223BE20](v2 - 8);
  v3 = sub_23875BE20();
  MEMORY[0x28223BE20](v3 - 8);
  v4 = sub_23875BD20();
  MEMORY[0x28223BE20](v4 - 8);
  v5 = sub_2387595E0();
  MEMORY[0x28223BE20](v5 - 8);
  v6 = sub_23875B1B0();
  MEMORY[0x28223BE20](v6);
  v7 = sub_23875B0A0();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = *(type metadata accessor for OrderSearchActiveRow.ViewModel(0) + 28);
  (*(v8 + 16))(v10, v1 + v36, v7);
  sub_23875BCC0();
  sub_23875BDB0();
  sub_23875BE30();
  sub_2387595B0();
  sub_23875B1A0();
  sub_2386D608C(&qword_27DF0A050, MEMORY[0x277CC8560], MEMORY[0x277CC8558]);
  sub_2386D608C(&qword_27DF118C0, MEMORY[0x277CC8540], MEMORY[0x277CC8548]);
  v11 = sub_23875DA80();
  v13 = v12;
  v15 = v14;
  sub_23875D7F0();
  v16 = sub_23875DA60();
  v18 = v17;
  LOBYTE(v7) = v19;

  sub_2384397FC(v11, v13, v15 & 1);

  sub_23875D890();
  v20 = sub_23875D9E0();
  v22 = v21;
  v24 = v23;
  sub_2384397FC(v16, v18, v7 & 1);

  sub_238495020(v25, v26, v27);
  sub_23875B090();
  v38 = v39[0];
  v28 = sub_23875DA20();
  v30 = v29;
  LOBYTE(v16) = v31;
  v33 = v32;
  sub_2384397FC(v20, v22, v24 & 1);

  v34 = v37;
  *v37 = v28;
  v34[1] = v30;
  *(v34 + 16) = v16 & 1;
  v34[3] = v33;
}

uint64_t sub_2386D4B3C@<X0>(uint64_t a1@<X8>)
{
  v44 = a1;
  v2 = sub_23875C880();
  v42 = *(v2 - 8);
  v43 = v2;
  MEMORY[0x28223BE20](v2);
  v41 = &v41 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_23875BE40();
  MEMORY[0x28223BE20](v4 - 8);
  v5 = sub_23875BE20();
  MEMORY[0x28223BE20](v5 - 8);
  v6 = sub_23875BD20();
  MEMORY[0x28223BE20](v6 - 8);
  v7 = sub_2387595E0();
  MEMORY[0x28223BE20](v7 - 8);
  v8 = sub_2387590C0();
  MEMORY[0x28223BE20](v8);
  v9 = sub_2387590B0();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  active = type metadata accessor for OrderSearchActiveRow.ViewModel(0);
  (*(v10 + 16))(v12, v1 + *(active + 24), v9);
  sub_23875BCC0();
  sub_23875BDB0();
  sub_23875BE30();
  sub_2387595B0();
  sub_238759020();
  sub_2386D608C(&qword_27DF0A030, MEMORY[0x277CC7708], MEMORY[0x277CC76E8]);
  sub_2386D608C(&qword_27DF0A038, MEMORY[0x277CC76F0], MEMORY[0x277CC76F8]);
  v14 = sub_23875DA80();
  v16 = v15;
  v18 = v17;
  sub_23875D7F0();
  v19 = sub_23875DA60();
  v21 = v20;
  v23 = v22;

  sub_2384397FC(v14, v16, v18 & 1);

  v45[0] = sub_23875D440();
  v24 = sub_23875DA20();
  v26 = v25;
  v28 = v27;
  v30 = v29;
  sub_2384397FC(v19, v21, v23 & 1);

  type metadata accessor for OrderSearchActiveRow(0);
  v31 = v41;
  sub_2384D5138(v41);
  LOBYTE(v10) = sub_23875C860();
  (*(v42 + 8))(v31, v43);
  if (v10)
  {
    v32 = 2;
  }

  else
  {
    v32 = 1;
  }

  KeyPath = swift_getKeyPath(byte_238780350);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A028, &qword_238764FC0);
  v35 = v44;
  v36 = (v44 + *(v34 + 36));
  v37 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A040, &qword_238765ED0) + 28);
  v38 = *MEMORY[0x277CE0B30];
  v39 = sub_23875DA00();
  (*(*(v39 - 8) + 104))(&v36[v37], v38, v39);
  result = swift_getKeyPath(aP_27);
  *v36 = result;
  *v35 = v24;
  *(v35 + 8) = v26;
  *(v35 + 16) = v28 & 1;
  *(v35 + 24) = v30;
  *(v35 + 32) = KeyPath;
  *(v35 + 40) = v32;
  *(v35 + 48) = 0;
  return result;
}

double sub_2386D506C@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v32 = a2;
  v30 = sub_23875DFD0();
  v3 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0E618, &unk_2387766D0);
  MEMORY[0x28223BE20](v6);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v29 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF14508, &qword_2387803B8);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v29 - v16;
  sub_23875ED50();
  v31 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  *v17 = sub_23875D030();
  *(v17 + 1) = 0;
  v17[16] = 1;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF14510, &qword_2387803C0);
  sub_2386D54CC(a1, &v17[*(v18 + 44)]);
  active = type metadata accessor for OrderSearchActiveRow.ViewModel(0);
  sub_238620D88(a1 + *(active + 20), v11);
  v20 = *(type metadata accessor for ProductImage(0) + 20);
  *&v11[v20] = swift_getKeyPath(byte_2387802D0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF092F8, &qword_238763100);
  swift_storeEnumTagMultiPayload();
  (*(v3 + 104))(v5, *MEMORY[0x277CE0EE0], v30);
  v21 = sub_23875E090();
  KeyPath = swift_getKeyPath(byte_238780308);
  v23 = &v11[*(v6 + 36)];
  v24 = type metadata accessor for OrderImageStyleModifier(0);
  *&v23[*(v24 + 36)] = KeyPath;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D340, &qword_238764740);
  swift_storeEnumTagMultiPayload();
  *&v23[*(v24 + 40)] = swift_getKeyPath(byte_2387802D0);
  swift_storeEnumTagMultiPayload();
  *v23 = xmmword_23876FD10;
  *(v23 + 2) = 0;
  v23[24] = 1;
  *(v23 + 4) = v21;
  v23[40] = 0;
  sub_23843981C(v17, v14, &qword_27DF14508, &qword_2387803B8);
  sub_23843981C(v11, v8, &qword_27DF0E618, &unk_2387766D0);
  v25 = v32;
  sub_23843981C(v14, v32, &qword_27DF14508, &qword_2387803B8);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF14518, &qword_2387803C8);
  v27 = v25 + *(v26 + 48);
  *v27 = 0;
  *(v27 + 8) = 1;
  sub_23843981C(v8, v25 + *(v26 + 64), &qword_27DF0E618, &unk_2387766D0);
  sub_238439884(v11, &qword_27DF0E618, &unk_2387766D0);
  sub_238439884(v17, &qword_27DF14508, &qword_2387803B8);
  sub_238439884(v8, &qword_27DF0E618, &unk_2387766D0);
  sub_238439884(v14, &qword_27DF14508, &qword_2387803B8);

  return result;
}

double sub_2386D54CC@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A028, &qword_238764FC0);
  MEMORY[0x28223BE20](v4 - 8);
  v48 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v46 = &v37 - v7;
  sub_23875ED50();
  v47 = sub_23875ED40();
  sub_23875ECE0();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  v11 = a1[1];
  v50 = *a1;
  v51 = v11;
  sub_2384397A8(isCurrentExecutor, v9, v10);

  v12 = sub_23875DAA0();
  v14 = v13;
  v45 = a1;
  v16 = v15;
  sub_23875D820();
  v17 = sub_23875DA60();
  v19 = v18;
  v21 = v20;

  sub_2384397FC(v12, v14, v16 & 1);

  sub_23875D890();
  v22 = sub_23875D9E0();
  v49 = v23;
  v43 = v24;
  v44 = v25;
  sub_2384397FC(v17, v19, v21 & 1);

  v38 = sub_23875D000();
  sub_2386D4700(&v50);
  v26 = v50;
  v37 = v51;
  v27 = v52;
  v39 = v52;
  v28 = v53;
  v40 = v50;
  v41 = v53;
  v29 = v46;
  sub_2386D4B3C(v46);
  v30 = v48;
  sub_23843981C(v29, v48, &qword_27DF0A028, &qword_238764FC0);
  v42 = v22;
  v31 = v49;
  *a2 = v22;
  *(a2 + 8) = v31;
  LOBYTE(v14) = v43 & 1;
  *(a2 + 16) = v43 & 1;
  v32 = v38;
  *(a2 + 24) = v44;
  *(a2 + 32) = v32;
  *(a2 + 40) = sub_23843480C;
  *(a2 + 48) = 0;
  *(a2 + 56) = v26;
  v33 = v37;
  *(a2 + 64) = v37;
  *(a2 + 72) = v27;
  *(a2 + 80) = v28;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF14520, &qword_2387803D0);
  sub_23843981C(v30, a2 + *(v34 + 64), &qword_27DF0A028, &qword_238764FC0);
  sub_23843980C(v22, v31, v14);

  v35 = v40;
  LOBYTE(v31) = v39;
  sub_23843980C(v40, v33, v39);

  sub_238439884(v29, &qword_27DF0A028, &qword_238764FC0);
  sub_238439884(v30, &qword_27DF0A028, &qword_238764FC0);
  sub_2384397FC(v35, v33, v31);

  sub_2384397FC(v42, v49, v14);

  return result;
}

uint64_t sub_2386D5844@<X0>(char *a1@<X0>, char *a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = sub_23875BC40();
  MEMORY[0x28223BE20](v6 - 8);
  v60 = &v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_23875AF90();
  v57 = *(v8 - 8);
  v58 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = &v52 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = type metadata accessor for ProductImage.ViewModel(0);
  MEMORY[0x28223BE20](v54);
  v53 = &v52 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09F38, &qword_238764DC0);
  MEMORY[0x28223BE20](v12 - 8);
  v59 = &v52 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v52 - v15;
  MEMORY[0x28223BE20](v17);
  v19 = &v52 - v18;
  sub_23875A4D0();
  v56 = v19;
  sub_23843981C(v19, v16, &qword_27DF09F38, &qword_238764DC0);
  v20 = sub_2387598F0();
  v21 = *(v20 - 8);
  if ((*(v21 + 48))(v16, 1, v20) == 1)
  {
    sub_238439884(v16, &qword_27DF09F38, &qword_238764DC0);
    v22 = sub_23875A5A0();
  }

  else
  {
    v22 = sub_2387598E0();
    (*(v21 + 8))(v16, v20);
  }

  v23 = [a2 merchant];
  v24 = [v23 displayName];

  v25 = sub_2387586A0();
  v27 = v26;

  *a3 = v25;
  a3[1] = v27;
  v55 = v10;
  sub_238757DA0();
  if (v22 >> 62)
  {
LABEL_30:
    v28 = sub_23875F3A0();
  }

  else
  {
    v28 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v61 = a3;
  v62 = a1;
  v63 = a2;
  if (v28)
  {
    a1 = 0;
    v29 = MEMORY[0x277D84F90];
    a3 = &unk_278A55000;
    do
    {
      a2 = a1;
      while (1)
      {
        if ((v22 & 0xC000000000000001) != 0)
        {
          v30 = MEMORY[0x23EE63F70](a2, v22);
          a1 = a2 + 1;
          if (__OFADD__(a2, 1))
          {
            goto LABEL_28;
          }
        }

        else
        {
          if (a2 >= *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_29;
          }

          v30 = *(v22 + 8 * a2 + 32);
          a1 = a2 + 1;
          if (__OFADD__(a2, 1))
          {
LABEL_28:
            __break(1u);
LABEL_29:
            __break(1u);
            goto LABEL_30;
          }
        }

        v31 = v30;
        v32 = [v31 image];
        if (v32)
        {
          break;
        }

        ++a2;
        if (a1 == v28)
        {
          goto LABEL_25;
        }
      }

      v33 = v32;
      v34 = sub_23875EA80();
      v52 = v35;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v29 = sub_238497C2C(0, *(v29 + 2) + 1, 1, v29);
      }

      v37 = *(v29 + 2);
      v36 = *(v29 + 3);
      if (v37 >= v36 >> 1)
      {
        v29 = sub_238497C2C((v36 > 1), v37 + 1, 1, v29);
      }

      *(v29 + 2) = v37 + 1;
      v38 = &v29[16 * v37];
      v39 = v52;
      *(v38 + 4) = v34;
      *(v38 + 5) = v39;
    }

    while (a1 != v28);
  }

  else
  {
    v29 = MEMORY[0x277D84F90];
  }

LABEL_25:
  v41 = v57;
  v40 = v58;
  v42 = v53;
  v43 = v55;
  (*(v57 + 16))(v53, v55, v58);
  if (*(v29 + 2) >= 5uLL)
  {
    sub_23852EE64(v29, (v29 + 32), 0, 9uLL);
    v45 = v44;

    v29 = v45;
  }

  v46 = v63;
  v47 = v61;
  (*(v41 + 8))(v43, v40);
  *(v42 + *(v54 + 20)) = v29;
  active = type metadata accessor for OrderSearchActiveRow.ViewModel(0);
  sub_23856F65C(v42, v47 + *(active + 20));
  v49 = [v46 createdDate];
  sub_23875BBE0();

  sub_2387590A0();
  v50 = v56;
  sub_23843981C(v56, v59, &qword_27DF09F38, &qword_238764DC0);
  sub_23875B080();
  return sub_238439884(v50, &qword_27DF09F38, &qword_238764DC0);
}

uint64_t sub_2386D5E40(uint64_t a1)
{
  result = type metadata accessor for ProductImage.ViewModel(319);
  if (v2 <= 0x3F)
  {
    result = sub_2387590B0();
    if (v3 <= 0x3F)
    {
      result = sub_23875B0A0();
      if (v4 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

void sub_2386D5F34(uint64_t a1)
{
  type metadata accessor for OrderSearchActiveRow.ViewModel(319);
  if (v1 <= 0x3F)
  {
    sub_2384BEA74(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_2386D5FD4()
{
  result = qword_27DF144C0;
  if (!qword_27DF144C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF144B0, &qword_2387802A0);
    sub_23843A3E8(&qword_27DF144C8, &qword_27DF144D0, &qword_2387802B0, MEMORY[0x277CE1198]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF144C0);
  }

  return result;
}

uint64_t sub_2386D608C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_2386D60D4()
{
  result = qword_27DF14528;
  if (!qword_27DF14528)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF14530, &qword_2387803D8);
    sub_2386D5FD4();
    sub_23843A3E8(&qword_27DF144D8, &qword_27DF144A0, &qword_238780290, MEMORY[0x277CE1138]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF14528);
  }

  return result;
}

uint64_t EnvironmentValues.bankConnectService.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_2386D61C8(a1, a2, a3);
  sub_23875CDC0();
  return v4;
}

unint64_t sub_2386D61C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DF14538;
  if (!qword_27DF14538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF14538);
  }

  return result;
}

void *sub_2386D621C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  sub_2386D61C8(a1, a2, a3);
  result = sub_23875CDC0();
  *a4 = v6;
  return result;
}

uint64_t sub_2386D626C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  sub_2386D61C8(a1, a2, a3);

  return sub_23875CDD0();
}

uint64_t sub_2386D6308@<X0>(uint64_t *a1@<X8>)
{
  sub_238758CC0();
  result = sub_238758CB0();
  *a1 = result;
  return result;
}

void (*EnvironmentValues.bankConnectService.modify(void *a1, uint64_t a2, uint64_t a3))(uint64_t *a1, char a2)
{
  a1[2] = v3;
  a1[3] = sub_2386D61C8(a1, a2, a3);
  sub_23875CDC0();
  return sub_2386D639C;
}

void sub_2386D639C(uint64_t *a1, char a2)
{
  a1[1] = *a1;
  if (a2)
  {

    sub_23875CDD0();
  }

  else
  {
    sub_23875CDD0();
  }
}

uint64_t type metadata accessor for SmallWalletCardsBalanceWidget(uint64_t a1)
{
  result = qword_2814F0B20;
  if (!qword_2814F0B20)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2386D64B4(uint64_t a1)
{
  type metadata accessor for ConnectedCardsTimelineEntry(319);
  if (v1 <= 0x3F)
  {
    sub_2384BEA74(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void *sub_2386D6554@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v60 = a1;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF14540, &qword_2387804B0);
  MEMORY[0x28223BE20](v59);
  v57 = &v47 - v3;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF14548, &qword_2387804B8);
  MEMORY[0x28223BE20](v52);
  v53 = &v47 - v4;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF14550, &qword_2387804C0);
  v51 = *(v54 - 8);
  MEMORY[0x28223BE20](v54);
  v50 = &v47 - v5;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF14558, &qword_2387804C8);
  MEMORY[0x28223BE20](v58);
  v55 = &v47 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D040, &qword_2387676A0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v47 - v8;
  v10 = sub_23875B940();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v48 = &v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v56 = &v47 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0E7D8, &unk_238770530);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v47 - v16;
  v18 = type metadata accessor for WidgetAccount(0);
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v21 = &v47 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *(type metadata accessor for ConnectedCardsTimelineEntry(0) + 20);
  v49 = v2;
  sub_23843981C(v2 + v22, v17, &qword_27DF0E7D8, &unk_238770530);
  if ((*(v19 + 48))(v17, 1, v18) == 1)
  {
    v23 = &qword_27DF0E7D8;
    v24 = &unk_238770530;
    v25 = v17;
LABEL_5:
    sub_238439884(v25, v23, v24);
    swift_storeEnumTagMultiPayload();
    v26 = sub_2386D7B00();
    sub_2386D7C0C(v26, v27, v28);
    return sub_23875D1B0();
  }

  sub_2386D7D28(v17, v21, type metadata accessor for WidgetAccount);
  sub_23843981C(&v21[*(v18 + 40)], v9, &qword_27DF0D040, &qword_2387676A0);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_2386D7C60(v21);
    v23 = &qword_27DF0D040;
    v24 = &qword_2387676A0;
    v25 = v9;
    goto LABEL_5;
  }

  v30 = v10;
  v31 = v56;
  (*(v11 + 32))(v56, v9, v10);
  if (v21[*(v18 + 48)])
  {
    swift_storeEnumTagMultiPayload();
    v32 = sub_23843A3E8(&unk_2814F0910, &qword_27DF14550, &qword_2387804C0, MEMORY[0x277CDE598]);
    sub_2386D7BB8(v32, v33, v34);
    v35 = v55;
    sub_23875D1B0();
  }

  else
  {
    v36 = (*(v11 + 16))(v48, v31, v10);
    MEMORY[0x28223BE20](v36);
    v37 = v49;
    *(&v47 - 2) = v21;
    *(&v47 - 1) = v37;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF14560, &qword_2387804D0);
    sub_23843A3E8(&qword_27DF14568, &qword_27DF14560, &qword_2387804D0, MEMORY[0x277CE1198]);
    v38 = v50;
    v30 = v10;
    sub_23875D9A0();
    v31 = v56;
    v39 = v51;
    v40 = v54;
    (*(v51 + 16))(v53, v38, v54);
    swift_storeEnumTagMultiPayload();
    v41 = sub_23843A3E8(&unk_2814F0910, &qword_27DF14550, &qword_2387804C0, MEMORY[0x277CDE598]);
    sub_2386D7BB8(v41, v42, v43);
    v35 = v55;
    sub_23875D1B0();
    (*(v39 + 8))(v38, v40);
  }

  sub_23843981C(v35, v57, &qword_27DF14558, &qword_2387804C8);
  swift_storeEnumTagMultiPayload();
  v44 = sub_2386D7B00();
  sub_2386D7C0C(v44, v45, v46);
  sub_23875D1B0();
  sub_238439884(v35, &qword_27DF14558, &qword_2387804C8);
  (*(v11 + 8))(v31, v30);
  return sub_2386D7C60(v21);
}

double sub_2386D6CC8@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  *a3 = sub_23875D030();
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF14570, &qword_2387804D8);
  sub_2386D6DA0(a1, a2, a3 + *(v6 + 44));

  return result;
}

void sub_2386D6DA0(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v151 = a1;
  v137 = a3;
  v128 = type metadata accessor for WalletWidgetCardBalances(0);
  MEMORY[0x28223BE20](v128);
  v132 = (&v119 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF14578, &unk_2387804E0);
  MEMORY[0x28223BE20](v131);
  v138 = &v119 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v130 = &v119 - v7;
  MEMORY[0x28223BE20](v8);
  v136 = &v119 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF14580, &unk_238780790);
  v126 = *(v10 - 8);
  v127 = v10;
  MEMORY[0x28223BE20](v10);
  v121 = &v119 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF14588, &qword_2387804F0);
  MEMORY[0x28223BE20](v12 - 8);
  v135 = &v119 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v149 = &v119 - v15;
  v139 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF14590, &qword_2387804F8);
  v122 = *(v139 - 8);
  MEMORY[0x28223BE20](v139);
  v120 = &v119 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF14598, &qword_238780500);
  MEMORY[0x28223BE20](v17 - 8);
  v134 = &v119 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v150 = &v119 - v20;
  v21 = sub_23875C880();
  v22 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v24 = &v119 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v140 = &v119 - v26;
  sub_23875ED50();
  v133 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v27 = type metadata accessor for WidgetAccount(0);
  v30 = v27;
  v31 = *(v151 + *(v27 + 36));
  v148 = v31;
  if (v31)
  {
    type metadata accessor for SmallWalletCardsBalanceWidget(0);
    v32 = v31;
    v33 = v140;
    sub_2384D5138(v140);
    (*(v22 + 104))(v24, *MEMORY[0x277CDFA00], v21);
    sub_23875C870();
    v34 = v30;
    v35 = *(v22 + 8);
    v35(v24, v21);
    v35(v33, v21);
    sub_23875E4A0();
    sub_23875C5C0();
    v36 = v164;
    v146 = v165;
    v147 = v163;
    LOBYTE(v35) = v166;
    v144 = v168;
    v145 = v167;
    v37 = sub_23875D7A0();
    v27 = sub_23875C3D0();
    v39 = v38;
    v41 = v40;
    v43 = v42;
    v45 = v44;
    LOBYTE(v169) = v36;
    LOBYTE(v159[0]) = v35;
    v30 = v34;
    LOBYTE(v152) = 0;
    v142 = v36;
    v143 = v37;
    v141 = LOBYTE(v159[0]);
  }

  else
  {
    v146 = 0;
    v147 = 0;
    v144 = 0;
    v145 = 0;
    v142 = 0;
    v143 = 0;
    v141 = 0;
    v39 = 0;
    v41 = 0;
    v43 = 0;
    v45 = 0;
  }

  v123 = v24;
  v124 = v22;
  v125 = v21;
  v129 = a2;
  v46 = (v151 + *(v30 + 20));
  v47 = v46[1];
  if (v47)
  {
    *&v169 = *v46;
    *(&v169 + 1) = v47;
    sub_2384397A8(v27, v28, v29);
    v119 = v30;

    v48 = sub_23875DAA0();
    v50 = v49;
    v52 = v51;
    v54 = v53;
    KeyPath = swift_getKeyPath(aH_19);
    *&v169 = v48;
    *(&v169 + 1) = v50;
    LOBYTE(v170) = v52 & 1;
    *(&v170 + 1) = v54;
    *&v171 = KeyPath;
    *(&v171 + 1) = 1;
    LOBYTE(v172) = 0;
    sub_23875D890();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09358, &unk_238774FB0);
    sub_23843A174();
    v56 = v120;
    sub_23875DAF0();
    sub_2384397FC(v48, v50, v52 & 1);

    v30 = v119;

    v57 = sub_23875D970();
    v58 = swift_getKeyPath(asc_238780548);
    v59 = (v56 + *(v139 + 36));
    *v59 = v58;
    v59[1] = v57;
    sub_23842CB44(v56, v150);
    v60 = 0;
  }

  else
  {
    v60 = 1;
  }

  v61 = (*(v122 + 56))(v150, v60, 1, v139);
  v64 = (v151 + *(v30 + 24));
  v65 = v64[1];
  if (v65)
  {
    *&v169 = *v64;
    *(&v169 + 1) = v65;
    sub_2384397A8(v61, v62, v63);

    v66 = sub_23875DAA0();
    v68 = v67;
    v70 = v69;
    sub_23875D930();
    v71 = sub_23875DA60();
    v73 = v72;
    v75 = v74;

    sub_2384397FC(v66, v68, v70 & 1);

    LODWORD(v169) = sub_23875D440();
    v76 = sub_23875DA20();
    v78 = v77;
    LOBYTE(v66) = v79;
    v81 = v80;
    sub_2384397FC(v71, v73, v75 & 1);

    *&v169 = v76;
    *(&v169 + 1) = v78;
    LOBYTE(v170) = v66 & 1;
    *(&v170 + 1) = v81;
    v82 = v121;
    sub_23875DAB0();
    sub_2384397FC(v76, v78, v66 & 1);

    v84 = v126;
    v83 = v127;
    v85 = v149;
    (*(v126 + 32))(v149, v82, v127);
    v86 = 0;
  }

  else
  {
    v86 = 1;
    v85 = v149;
    v84 = v126;
    v83 = v127;
  }

  (*(v84 + 56))(v85, v86, 1, v83);
  v87 = v132;
  sub_2386D7CC4(v151, v132 + *(v128 + 20));
  *v87 = sub_23875D030();
  v88 = sub_23875D790();
  type metadata accessor for SmallWalletCardsBalanceWidget(0);
  v89 = v140;
  sub_2384D5138(v140);
  v91 = v123;
  v90 = v124;
  v92 = v125;
  (*(v124 + 104))(v123, *MEMORY[0x277CDF9F0], v125);
  sub_23875C870();
  v93 = *(v90 + 8);
  v93(v91, v92);
  v93(v89, v92);
  sub_23875C3D0();
  v95 = v94;
  v97 = v96;
  v99 = v98;
  v101 = v100;
  v102 = v130;
  sub_2386D7D28(v87, v130, type metadata accessor for WalletWidgetCardBalances);
  v103 = v102 + *(v131 + 36);
  *v103 = v88;
  *(v103 + 8) = v95;
  *(v103 + 16) = v97;
  *(v103 + 24) = v99;
  *(v103 + 32) = v101;
  *(v103 + 40) = 0;
  v104 = v102;
  v105 = v136;
  sub_2386D7D90(v104, v136);
  sub_23875E4A0();
  sub_23875C9C0();
  *&v161[55] = v172;
  *&v161[71] = v173;
  *&v161[87] = v174;
  *&v161[103] = v175;
  *&v161[7] = v169;
  *&v161[23] = v170;
  v162 = 0;
  *&v161[39] = v171;
  v106 = v134;
  sub_23843981C(v150, v134, &qword_27DF14598, &qword_238780500);
  v107 = v149;
  v108 = v135;
  sub_23843981C(v149, v135, &qword_27DF14588, &qword_2387804F0);
  v109 = v138;
  sub_23843981C(v105, v138, &qword_27DF14578, &unk_2387804E0);
  *&v152 = v148;
  *(&v152 + 1) = v147;
  *&v153 = v142;
  *(&v153 + 1) = v146;
  *&v154 = v141;
  *(&v154 + 1) = v145;
  *&v155 = v144;
  *(&v155 + 1) = v143;
  *&v156 = v39;
  *(&v156 + 1) = v41;
  *&v157 = v43;
  *(&v157 + 1) = v45;
  v158 = 0;
  v110 = v137;
  *(v137 + 96) = 0;
  v111 = v157;
  v110[4] = v156;
  v110[5] = v111;
  v112 = v153;
  *v110 = v152;
  v110[1] = v112;
  v113 = v155;
  v110[2] = v154;
  v110[3] = v113;
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF145A0, &qword_238780508);
  sub_23843981C(v106, v110 + v114[12], &qword_27DF14598, &qword_238780500);
  sub_23843981C(v108, v110 + v114[16], &qword_27DF14588, &qword_2387804F0);
  sub_23843981C(v109, v110 + v114[20], &qword_27DF14578, &unk_2387804E0);
  v115 = v110 + v114[24];
  v116 = *&v161[80];
  *(v115 + 73) = *&v161[64];
  *(v115 + 89) = v116;
  *(v115 + 105) = *&v161[96];
  v117 = *&v161[16];
  *(v115 + 9) = *v161;
  *(v115 + 25) = v117;
  v118 = *&v161[48];
  *(v115 + 41) = *&v161[32];
  *v115 = 0;
  v115[8] = 0;
  *(v115 + 15) = *&v161[111];
  *(v115 + 57) = v118;
  sub_23843981C(&v152, v159, &qword_27DF145A8, &qword_238780510);
  sub_238439884(v105, &qword_27DF14578, &unk_2387804E0);
  sub_238439884(v107, &qword_27DF14588, &qword_2387804F0);
  sub_238439884(v150, &qword_27DF14598, &qword_238780500);
  sub_238439884(v109, &qword_27DF14578, &unk_2387804E0);
  sub_238439884(v108, &qword_27DF14588, &qword_2387804F0);
  sub_238439884(v106, &qword_27DF14598, &qword_238780500);
  v159[0] = v148;
  v159[1] = v147;
  v159[2] = v142;
  v159[3] = v146;
  v159[4] = v141;
  v159[5] = v145;
  v159[6] = v144;
  v159[7] = v143;
  v159[8] = v39;
  v159[9] = v41;
  v159[10] = v43;
  v159[11] = v45;
  v160 = 0;
  sub_238439884(v159, &qword_27DF145A8, &qword_238780510);
}

unint64_t sub_2386D7B00()
{
  result = qword_2814F0950;
  if (!qword_2814F0950)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF14558, &qword_2387804C8);
    v3 = sub_23843A3E8(&unk_2814F0910, &qword_27DF14550, &qword_2387804C0, MEMORY[0x277CDE598]);
    sub_2386D7BB8(v3, v1, v2);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814F0950);
  }

  return result;
}

unint64_t sub_2386D7BB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_2814F09F0;
  if (!qword_2814F09F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814F09F0);
  }

  return result;
}

unint64_t sub_2386D7C0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_2814F09F8[0];
  if (!qword_2814F09F8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2814F09F8);
  }

  return result;
}

uint64_t sub_2386D7C60(uint64_t a1)
{
  v2 = type metadata accessor for WidgetAccount(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2386D7CC4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WidgetAccount(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2386D7D28(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_2386D7D90(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF14578, &unk_2387804E0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_2386D7E00()
{
  result = qword_2814F0940;
  if (!qword_2814F0940)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF145B0, &qword_238780578);
    v3 = sub_2386D7B00();
    sub_2386D7C0C(v3, v1, v2);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814F0940);
  }

  return result;
}

uint64_t sub_2386D7EB8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B970, &unk_238768D50);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v27 - v5;
  v7 = sub_23875E0E0();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = qword_2814F0880;
  v12 = a1;
  if (v11 != -1)
  {
    swift_once();
  }

  v13 = qword_2814F1B90;
  v14 = sub_23875EA50();
  v15 = sub_23875EA50();
  v16 = sub_23875EA50();
  v17 = [v13 localizedStringForKey:v14 value:v15 table:v16];

  v18 = sub_23875EA80();
  v20 = v19;

  v27[2] = v18;
  v27[3] = v20;
  sub_2384397A8(v21, v22, v23);
  sub_23875DAA0();
  sub_23875E160();
  (*(v8 + 104))(v10, *MEMORY[0x277CE0FE0], v7);
  sub_23875E150();

  (*(v8 + 8))(v10, v7);
  sub_23875E7B0();
  v24 = sub_23875E7C0();
  (*(*(v24 - 8) + 56))(v6, 0, 1, v24);
  sub_23875E140();

  sub_2384BC514(v6);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B978, &unk_238780610);
  v26 = a2 + *(result + 36);
  *v26 = 0;
  *(v26 + 8) = 257;
  return result;
}

void sub_2386D821C(uint64_t a1@<X8>)
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (qword_2814F0880 != -1)
  {
    swift_once();
  }

  v2 = qword_2814F1B90;
  v3 = sub_23875EA50();
  v4 = sub_23875EA50();
  v5 = sub_23875EA50();
  v6 = [v2 localizedStringForKey:v3 value:v4 table:v5];

  sub_23875EA80();
  sub_2384397A8(v7, v8, v9);
  v10 = sub_23875DAA0();
  v12 = v11;
  LOBYTE(v4) = v13;
  sub_23875D440();
  v14 = sub_23875DA20();
  v16 = v15;
  v18 = v17;
  v20 = v19;
  sub_2384397FC(v10, v12, v4 & 1);

  KeyPath = swift_getKeyPath(aX_25);

  *a1 = v14;
  *(a1 + 8) = v16;
  *(a1 + 16) = v18 & 1;
  *(a1 + 24) = v20;
  *(a1 + 32) = KeyPath;
  *(a1 + 40) = 1;
}

__n128 sub_2386D8448@<Q0>(uint64_t a2@<X8>)
{
  v3 = sub_23875D020();
  v13 = 1;
  sub_2386D821C(&v9);
  v4 = v10;
  v5 = v12;
  result = v9;
  v7 = v11;
  v8 = v13;
  *a2 = v3;
  *(a2 + 8) = 0;
  *(a2 + 16) = v8;
  *(a2 + 24) = result;
  *(a2 + 40) = v4;
  *(a2 + 48) = v7;
  *(a2 + 64) = v5;
  return result;
}

unint64_t sub_2386D84B8()
{
  result = qword_2814F08F8;
  if (!qword_2814F08F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF145B8, &qword_2387806C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814F08F8);
  }

  return result;
}

uint64_t type metadata accessor for WalletWidgetCardBalances(uint64_t a1)
{
  result = qword_2814F0CE8;
  if (!qword_2814F0CE8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2386D8590(uint64_t a1)
{
  result = type metadata accessor for WidgetAccount(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_2386D8628@<X0>(uint64_t a1@<X8>)
{
  v67 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF145C0, &unk_238780740);
  v65 = *(v2 - 8);
  v66 = v2;
  MEMORY[0x28223BE20](v2);
  v58 = (&v56 - v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12E00, &unk_238763FC0);
  MEMORY[0x28223BE20](v4 - 8);
  v59 = &v56 - v5;
  v6 = sub_23875BC40();
  v61 = *(v6 - 8);
  v62 = v6;
  MEMORY[0x28223BE20](v6);
  v60 = &v56 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0CA30, qword_23877D7B0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v56 - v9;
  v11 = sub_238757AD0();
  v64 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v57 = &v56 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v63 = &v56 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0E7E0, &unk_238770560);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v56 - v16;
  v18 = sub_238758B60();
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v21 = &v56 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = v1 + *(type metadata accessor for WalletWidgetCardBalances(0) + 20);
  v23 = type metadata accessor for WidgetAccount(0);
  sub_23843981C(v22 + v23[7], v17, &qword_27DF0E7E0, &unk_238770560);
  if ((*(v19 + 48))(v17, 1, v18) == 1)
  {
    v24 = &qword_27DF0E7E0;
    v25 = &unk_238770560;
    v26 = v17;
  }

  else
  {
    (*(v19 + 32))(v21, v17, v18);
    sub_23843981C(v22 + v23[11], v10, &qword_27DF0CA30, qword_23877D7B0);
    v27 = v64;
    v28 = v21;
    if ((*(v64 + 48))(v10, 1, v11) == 1)
    {
      (*(v19 + 8))(v21, v18);
      v24 = &qword_27DF0CA30;
      v25 = qword_23877D7B0;
      v26 = v10;
    }

    else
    {
      v29 = v18;
      v30 = v63;
      (*(v27 + 32))(v63, v10, v11);
      v31 = v22 + v23[8];
      v32 = v59;
      sub_23843981C(v31, v59, &qword_27DF12E00, &unk_238763FC0);
      v34 = v61;
      v33 = v62;
      if ((*(v61 + 48))(v32, 1, v62) != 1)
      {
        (*(v34 + 32))(v60, v32, v33);
        v36 = v57;
        (*(v27 + 16))(v57, v30, v11);
        v37 = (*(v27 + 88))(v36, v11);
        v38 = *MEMORY[0x277CC6B50];
        v56 = v11;
        if (v37 == v38)
        {
          v39 = v28;
          v40 = sub_23853471C(v28, v30);
        }

        else
        {
          if (v37 != *MEMORY[0x277CC6B58])
          {
            result = sub_23875F520();
            __break(1u);
            return result;
          }

          v39 = v28;
          v40 = sub_238533CD8(v28, v30);
        }

        v44 = v40;
        v45 = v41;
        v46 = v42;
        v47 = v43;
        v48 = sub_23875D030();
        v49 = v58;
        *v58 = v48;
        *(v49 + 8) = 0;
        *(v49 + 16) = 0;
        v50 = (v49 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF145C8, &qword_238780750) + 44));
        v51 = v44;
        v52 = v60;
        sub_2386D8D90(v51, v45, v46, v47, v60, v50);

        v53 = v66;
        v54 = (v49 + *(v66 + 36));
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF145D0, &qword_238780758);
        sub_23875C9D0();
        (*(v64 + 8))(v63, v56);
        (*(v19 + 8))(v39, v29);
        *v54 = swift_getKeyPath(asc_238780760);
        v55 = v67;
        sub_23842CCE4(v49, v67);
        (*(v65 + 56))(v55, 0, 1, v53);
        return (*(v34 + 8))(v52, v33);
      }

      (*(v27 + 8))(v30, v11);
      (*(v19 + 8))(v28, v29);
      v24 = &qword_27DF12E00;
      v25 = &unk_238763FC0;
      v26 = v32;
    }
  }

  sub_238439884(v26, v24, v25);
  return (*(v65 + 56))(v67, 1, 1, v66);
}

double sub_2386D8D90@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v84 = a5;
  v81 = a3;
  v82 = a4;
  v87 = a6;
  v8 = type metadata accessor for WidgetBalanceUpdatedTime(0);
  MEMORY[0x28223BE20](v8 - 8);
  v91 = v71 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v90 = v71 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF14580, &unk_238780790);
  v85 = *(v12 - 8);
  v86 = v12;
  MEMORY[0x28223BE20](v12);
  v89 = v71 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v88 = v71 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C7F0, &qword_23877B880);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = v71 - v17;
  v19 = sub_23875D990();
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v22 = v71 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23875ED50();
  v83 = sub_23875ED40();
  sub_23875ECE0();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  v92 = a1;
  v93 = a2;
  v76 = sub_2384397A8(isCurrentExecutor, v24, v25);

  v26 = sub_23875DAA0();
  v28 = v27;
  v30 = v29;
  v71[1] = v31;
  v32 = *MEMORY[0x277CE0A80];
  v33 = *(v20 + 104);
  v74 = v20 + 104;
  v75 = v33;
  v33(v22, v32, v19);
  v34 = *MEMORY[0x277CE09A0];
  v35 = sub_23875D840();
  v36 = v19;
  v71[0] = v19;
  v37 = v35;
  v38 = *(v35 - 8);
  (*(v38 + 104))(v18, v34, v35);
  v73 = *(v38 + 56);
  v73(v18, 0, 1, v37);
  sub_23875D8D0();
  sub_238439884(v18, &qword_27DF0C7F0, &qword_23877B880);
  v72 = *(v20 + 8);
  v72(v22, v36);
  sub_23875D940();

  sub_23875D890();
  sub_23875D900();

  v78 = sub_23875DA60();
  v77 = v39;
  v79 = v40;
  v80 = v41;

  sub_2384397FC(v26, v28, v30 & 1);

  v92 = v81;
  v93 = v82;

  v42 = sub_23875DAA0();
  v44 = v43;
  LOBYTE(v28) = v45;
  v46 = v71[0];
  v75(v22, *MEMORY[0x277CE0AA0], v71[0]);
  v73(v18, 1, 1, v37);
  sub_23875D8D0();
  sub_238439884(v18, &qword_27DF0C7F0, &qword_23877B880);
  v72(v22, v46);
  sub_23875D940();

  v47 = sub_23875DA60();
  v49 = v48;
  LOBYTE(v37) = v50;

  sub_2384397FC(v42, v44, v28 & 1);

  LODWORD(v92) = sub_23875D440();
  v51 = sub_23875DA20();
  v53 = v52;
  LOBYTE(v36) = v54;
  v56 = v55;
  sub_2384397FC(v47, v49, v37 & 1);

  v92 = v51;
  v93 = v53;
  v94 = v36 & 1;
  v95 = v56;
  v57 = v88;
  sub_23875DAB0();
  sub_2384397FC(v51, v53, v36 & 1);

  v58 = sub_23875BC40();
  v59 = v90;
  (*(*(v58 - 8) + 16))(v90, v84, v58);
  v61 = v85;
  v60 = v86;
  v62 = *(v85 + 16);
  v63 = v89;
  v62(v89, v57, v86);
  sub_2386D9614(v59, v91);
  v64 = v87;
  v65 = v78;
  v66 = v77;
  *v87 = v78;
  v64[1] = v66;
  LODWORD(v84) = v79 & 1;
  *(v64 + 16) = v79 & 1;
  v64[3] = v80;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF145D8, &qword_2387807A0);
  v62(v64 + *(v67 + 48), v63, v60);
  v68 = v91;
  sub_2386D9614(v91, v64 + *(v67 + 64));
  LOBYTE(v62) = v84;
  sub_23843980C(v65, v66, v84);

  sub_2386D9678(v90);
  v69 = *(v61 + 8);
  v69(v88, v60);
  sub_2386D9678(v68);
  v69(v89, v60);
  sub_2384397FC(v65, v66, v62);

  return result;
}

uint64_t sub_2386D954C(uint64_t a1)
{
  v2 = sub_23875C9E0();
  v3 = MEMORY[0x28223BE20](v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  return sub_23875CB60();
}

uint64_t sub_2386D9614(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WidgetBalanceUpdatedTime(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2386D9678(uint64_t a1)
{
  v2 = type metadata accessor for WidgetBalanceUpdatedTime(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_2386D96D4()
{
  result = qword_27DF145E0;
  if (!qword_27DF145E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF145E8, &qword_2387807A8);
    sub_2386D9758();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF145E0);
  }

  return result;
}

unint64_t sub_2386D9758()
{
  result = qword_27DF145F0;
  if (!qword_27DF145F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF145C0, &unk_238780740);
    sub_23843A3E8(&qword_27DF145F8, &qword_27DF14600, &unk_2387807B0, MEMORY[0x277CE1198]);
    sub_23843A3E8(&qword_27DF14608, &qword_27DF145D0, &qword_238780758, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF145F0);
  }

  return result;
}

void sub_2386D9868(uint64_t a1@<X8>)
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (qword_2814F0880 != -1)
  {
    swift_once();
  }

  v2 = qword_2814F1B90;
  v3 = sub_23875EA50();
  v4 = sub_23875EA50();
  v5 = sub_23875EA50();
  v6 = [v2 localizedStringForKey:v3 value:v4 table:v5];

  sub_23875EA80();
  sub_2384397A8(v7, v8, v9);
  v10 = sub_23875DAA0();
  v12 = v11;
  LOBYTE(v4) = v13;
  sub_23875D440();
  v14 = sub_23875DA20();
  v16 = v15;
  v18 = v17;
  v20 = v19;
  sub_2384397FC(v10, v12, v4 & 1);

  KeyPath = swift_getKeyPath(aX_26);

  *a1 = v14;
  *(a1 + 8) = v16;
  *(a1 + 16) = v18 & 1;
  *(a1 + 24) = v20;
  *(a1 + 32) = KeyPath;
  *(a1 + 40) = 1;
}

__n128 sub_2386D9A90@<Q0>(uint64_t a2@<X8>)
{
  v3 = sub_23875D020();
  v13 = 1;
  sub_2386D9868(&v9);
  v4 = v10;
  v5 = v12;
  result = v9;
  v7 = v11;
  v8 = v13;
  *a2 = v3;
  *(a2 + 8) = 0;
  *(a2 + 16) = v8;
  *(a2 + 24) = result;
  *(a2 + 40) = v4;
  *(a2 + 48) = v7;
  *(a2 + 64) = v5;
  return result;
}

void sub_2386D9B00(uint64_t a1)
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v2 = [objc_opt_self() sharedApplication];
  v3 = sub_23875B860();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF14610, &qword_2387808D8);
  inited = swift_initStackObject();
  v5 = *MEMORY[0x277D766C8];
  *(inited + 32) = *MEMORY[0x277D766C8];
  *(inited + 16) = xmmword_2387632F0;
  *(inited + 64) = MEMORY[0x277D839B0];
  *(inited + 40) = 1;
  v6 = v5;
  sub_23854BA18(inited);
  swift_setDeallocating();
  sub_2386D9E78(inited + 32);
  type metadata accessor for OpenExternalURLOptionsKey(0);
  sub_2386D9EE0();
  v7 = sub_23875E910();

  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  aBlock[4] = sub_2386D9F38;
  aBlock[5] = v8;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2386D9E00;
  aBlock[3] = &block_descriptor_18;
  v9 = _Block_copy(aBlock);

  [v2 openURL:v3 options:v7 completionHandler:v9];
  _Block_release(v9);
}

double sub_2386D9D38(char a1, uint64_t a2)
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  **(*(a2 + 64) + 40) = a1 & 1;
  swift_continuation_throwingResume();

  return result;
}

double sub_2386D9E00(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);

  return result;
}

uint64_t sub_2386D9E78(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0DDB0, &qword_2387808E0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_2386D9EE0()
{
  result = qword_27DF09138;
  if (!qword_27DF09138)
  {
    type metadata accessor for OpenExternalURLOptionsKey(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF09138);
  }

  return result;
}

double block_copy_helper_18(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t LogoStyle.hashValue.getter()
{
  v1 = *v0;
  sub_23875F700();
  MEMORY[0x23EE641F0](v1);
  return sub_23875F760();
}

unint64_t sub_2386D9FF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DF14618;
  if (!qword_27DF14618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF14618);
  }

  return result;
}

uint64_t sub_2386DA05C()
{
  swift_getKeyPath(byte_238780C38);
  swift_getKeyPath(byte_238780C60);
  sub_23875C2D0();

  return v1;
}

double sub_2386DA0D0@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, uint64_t *a5@<X4>, uint64_t *a6@<X5>, uint64_t a7@<X8>)
{
  v28 = a5;
  v29 = a6;
  v26 = a1;
  v27 = a2;
  v30 = a7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v25 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF13090, &qword_23876C690);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v25 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0BC20, &qword_238769430);
  MEMORY[0x28223BE20](v15);
  v17 = &v25 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v25 - v19;
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_2386E3CF8(v26, v14, type metadata accessor for OrderNavigationDestination);
  v21 = type metadata accessor for OrderNavigationDestination(0);
  (*(*(v21 - 8) + 56))(v14, 0, 1, v21);
  sub_2386E2E80(&qword_27DF12A80, type metadata accessor for OrderNavigationDestination, &protocol conformance descriptor for OrderNavigationDestination);
  sub_23875C760();
  *&v20[*(v15 + 36)] = 0;
  sub_23843981C(v20, v17, &qword_27DF0BC20, &qword_238769430);
  sub_23843981C(v27, v11, a3, a4);
  v22 = v30;
  sub_23843981C(v17, v30, &qword_27DF0BC20, &qword_238769430);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(v28, v29);
  sub_23843981C(v11, v22 + *(v23 + 48), a3, a4);
  sub_238439884(v20, &qword_27DF0BC20, &qword_238769430);
  sub_238439884(v11, a3, a4);
  sub_238439884(v17, &qword_27DF0BC20, &qword_238769430);

  return result;
}

uint64_t sub_2386DA424()
{
  swift_getKeyPath(asc_238780BB8);
  swift_getKeyPath(byte_238780BE0);
  sub_23875C2D0();

  return v1;
}

uint64_t sub_2386DA49C()
{
  swift_getKeyPath(aH_20);
  swift_getKeyPath(aH_21);
  sub_23875C2D0();

  return v1;
}

uint64_t sub_2386DA510()
{
  v1 = (v0 + OBJC_IVAR____TtC12FinanceKitUI16OrderSearchModel_notificationToken);
  swift_beginAccess();
  if (*v1)
  {
    v2 = v1[1];
    aBlock = *v1;
    v35 = v2;
    v36 = *(v1 + 4);
    __swift_project_boxed_opaque_existential_1(&aBlock + 1, v36);
    v3 = aBlock;
    [v3 removeObserver_];

    swift_unknownObjectRelease();
    __swift_destroy_boxed_opaque_existential_1(&aBlock + 1);
  }

  v1[1] = 0u;
  v4 = v1 + 1;
  *(v1 + 4) = 0;
  *v1 = 0u;
  result = swift_endAccess();
  v6 = *(v0 + OBJC_IVAR____TtC12FinanceKitUI16OrderSearchModel_context);
  if (v6)
  {
    v7 = objc_opt_self();
    v8 = v6;
    v33 = [v7 defaultCenter];
    v9 = *MEMORY[0x277CBE1B8];
    v38[3] = sub_238449184(0, &qword_2814F0888, 0x277CBE440);
    v38[0] = v8;
    v10 = swift_allocObject();
    swift_weakInit();
    v11 = objc_opt_self();
    v12 = v8;

    v13 = [v11 mainQueue];
    v14 = swift_allocObject();
    *(v14 + 16) = sub_2386E3E58;
    *(v14 + 24) = v10;
    sub_23843981C(v38, &aBlock, &qword_27DF0A4A8, &qword_238767840);
    v15 = *(&v35 + 1);
    if (*(&v35 + 1))
    {
      v16 = __swift_project_boxed_opaque_existential_1(&aBlock, *(&v35 + 1));
      v31 = v9;
      v32 = v1 + 1;
      v17 = v13;
      v18 = v12;
      v19 = *(v15 - 8);
      v20 = MEMORY[0x28223BE20](v16);
      v22 = &v30 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v19 + 16))(v22, v20);

      v23 = sub_23875F620();
      (*(v19 + 8))(v22, v15);
      v12 = v18;
      v13 = v17;
      v9 = v31;
      v4 = v32;
      __swift_destroy_boxed_opaque_existential_1(&aBlock);
    }

    else
    {

      v23 = 0;
    }

    v36 = sub_23862EE48;
    v37 = v14;
    *&aBlock = MEMORY[0x277D85DD0];
    *(&aBlock + 1) = 1107296256;
    *&v35 = sub_23862ED54;
    *(&v35 + 1) = &block_descriptor_19;
    v24 = _Block_copy(&aBlock);

    v25 = [v33 addObserverForName:v9 object:v23 queue:v13 usingBlock:v24];
    _Block_release(v24);
    swift_unknownObjectRelease();
    ObjectType = swift_getObjectType();

    sub_238439884(v38, &qword_27DF0A4A8, &qword_238767840);
    swift_beginAccess();
    if (*v1)
    {
      v27 = v1[1];
      aBlock = *v1;
      v35 = v27;
      v36 = *(v1 + 4);
      v28 = aBlock;
      __swift_project_boxed_opaque_existential_1(&aBlock + 1, v36);
      v29 = v28;
      [v29 removeObserver_];

      swift_unknownObjectRelease();
      __swift_destroy_boxed_opaque_existential_1(&aBlock + 1);
    }

    *v1 = v33;
    *(v1 + 1) = v25;
    *v4 = aBlock;
    *(v1 + 4) = ObjectType;
    return swift_endAccess();
  }

  return result;
}

double sub_2386DA9BC(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = HIBYTE(v3) & 0xF;
  if ((v3 & 0x2000000000000000) == 0)
  {
    v4 = v2 & 0xFFFFFFFFFFFFLL;
  }

  if (v4)
  {
  }

  else
  {
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      swift_getKeyPath(asc_238780BB8);
      swift_getKeyPath(byte_238780BE0);
      sub_23875C2E0();
    }
  }

  return result;
}

double sub_2386DAAF8(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_2386DABD8(v2, v3);
  }

  return result;
}

uint64_t sub_2386DABD8(uint64_t result, unint64_t a2)
{
  v3 = v2;
  v5 = result;
  v6 = (v2 + OBJC_IVAR____TtC12FinanceKitUI16OrderSearchModel_searchQuery);
  if (*(v2 + OBJC_IVAR____TtC12FinanceKitUI16OrderSearchModel_searchQuery))
  {
    v7 = v6[1];
    ObjectType = swift_getObjectType();
    v9 = *(v7 + 72);
    swift_unknownObjectRetain();
    v9(ObjectType, v7);
    result = swift_unknownObjectRelease();
  }

  v10 = *(v2 + OBJC_IVAR____TtC12FinanceKitUI16OrderSearchModel_context);
  if (v10)
  {
    v11 = HIBYTE(a2) & 0xF;
    if ((a2 & 0x2000000000000000) == 0)
    {
      v11 = v5 & 0xFFFFFFFFFFFFLL;
    }

    if (v11)
    {
      v12 = *(v3 + OBJC_IVAR____TtC12FinanceKitUI16OrderSearchModel_factory + 24);
      v13 = *(v3 + OBJC_IVAR____TtC12FinanceKitUI16OrderSearchModel_factory + 32);
      __swift_project_boxed_opaque_existential_1((v3 + OBJC_IVAR____TtC12FinanceKitUI16OrderSearchModel_factory), v12);
      v22 = v10;
      sub_23875F470();
      MEMORY[0x23EE63650](658319914, 0xE400000000000000);
      MEMORY[0x23EE63650](v5, a2);
      MEMORY[0x23EE63650](0xD000000000000032, 0x80000002387909B0);
      v14 = (*(v13 + 8))(0, 0xE000000000000000, &unk_284B25088, v12, v13);
      v16 = v15;

      swift_getKeyPath(aH_20);
      swift_getKeyPath(aH_21);
      sub_23875C2D0();

      if (qword_27DF08D88 != -1)
      {
        swift_once();
      }

      swift_getKeyPath(asc_238780BB8);
      swift_getKeyPath(byte_238780BE0);

      sub_23875C2E0();
      swift_getKeyPath(aH_20);
      swift_getKeyPath(aH_21);

      sub_23875C2E0();
      v17 = swift_getObjectType();
      v18 = swift_allocObject();
      v18[2] = v3;
      v18[3] = 1;
      v18[4] = v22;
      v19 = *(v16 + 24);
      v23 = v22;

      v19(sub_2386E3E88, v18, v17, v16);
      v20 = swift_allocObject();
      v20[2] = v3;
      v20[3] = 1;
      v20[4] = v5;
      v20[5] = a2;
      v21 = *(v16 + 48);

      v21(sub_2386E3E94, v20, v17, v16);
      (*(v16 + 64))(v17, v16);

      *v6 = v14;
      v6[1] = v16;
      return swift_unknownObjectRelease();
    }
  }

  return result;
}

double sub_2386DAF98(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v37 = a2;
  v38 = a4;
  v36 = a3;
  v5 = sub_23875E5C0();
  v43 = *(v5 - 8);
  v44 = v5;
  MEMORY[0x28223BE20](v5);
  v41 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = sub_23875E5E0();
  v40 = *(v42 - 8);
  v7.n128_f64[0] = MEMORY[0x28223BE20](v42);
  v39 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 >> 62)
  {
LABEL_25:
    v9 = sub_23875F3A0();
  }

  else
  {
    v9 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v9)
  {
    v10 = 0;
    v45 = MEMORY[0x277D84F90];
    do
    {
      v11 = v10;
      while (1)
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          v12 = MEMORY[0x23EE63F70](v11, a1, v7);
          v10 = v11 + 1;
          if (__OFADD__(v11, 1))
          {
            goto LABEL_23;
          }
        }

        else
        {
          if (v11 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_24;
          }

          v12 = *(a1 + 8 * v11 + 32);
          v10 = v11 + 1;
          if (__OFADD__(v11, 1))
          {
LABEL_23:
            __break(1u);
LABEL_24:
            __break(1u);
            goto LABEL_25;
          }
        }

        v13 = v12;
        v14 = [v13 attributeSet];
        v15 = [v14 identifier];
        if (v15)
        {
          break;
        }

        ++v11;
        if (v10 == v9)
        {
          goto LABEL_22;
        }
      }

      v16 = v15;
      v17 = sub_23875EA80();
      v35 = v18;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v45 = sub_238497C2C(0, *(v45 + 2) + 1, 1, v45);
      }

      v20 = *(v45 + 2);
      v19 = *(v45 + 3);
      if (v20 >= v19 >> 1)
      {
        v45 = sub_238497C2C((v19 > 1), v20 + 1, 1, v45);
      }

      v21 = v45;
      *(v45 + 2) = v20 + 1;
      v22 = &v21[16 * v20];
      v23 = v35;
      *(v22 + 4) = v17;
      *(v22 + 5) = v23;
    }

    while (v10 != v9);
  }

  else
  {
    v45 = MEMORY[0x277D84F90];
  }

LABEL_22:
  sub_238449184(0, &qword_27DF12280, 0x277D85C78);
  v24 = sub_23875F0A0();
  v25 = swift_allocObject();
  v26 = v36;
  v25[2] = v37;
  v25[3] = v26;
  v27 = v38;
  v28 = v45;
  v25[4] = v38;
  v25[5] = v28;
  aBlock[4] = sub_2386E3EEC;
  aBlock[5] = v25;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_238461548;
  aBlock[3] = &block_descriptor_54;
  v29 = _Block_copy(aBlock);

  v30 = v27;
  v31 = v39;
  sub_23875E5D0();
  v46 = MEMORY[0x277D84F90];
  sub_2386E2E80(&qword_27DF12288, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12290, &qword_23877A568);
  sub_23843A3E8(&qword_27DF12298, &qword_27DF12290, &qword_23877A568, MEMORY[0x277D83970]);
  v32 = v41;
  v33 = v44;
  sub_23875F310();
  MEMORY[0x23EE63B90](0, v31, v32, v29);
  _Block_release(v29);

  (*(v43 + 8))(v32, v33);
  (*(v40 + 8))(v31, v42);

  return result;
}

double sub_2386DB438(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  swift_getKeyPath(aH_20);
  swift_getKeyPath(aH_21);
  sub_23875C2D0();

  if (v11 == a2)
  {
    swift_getKeyPath(asc_238780BB8);
    swift_getKeyPath(byte_238780BE0);
    sub_23875C2D0();

    if (v13 == 1)
    {

      sub_2386E3CA8(v11, v12, 1);
      MEMORY[0x28223BE20](v5);
      sub_23875F120();

      sub_238569CC0(v7, v6);

      sub_238569CC0(v9, v8);

      swift_getKeyPath(asc_238780BB8);
      swift_getKeyPath(byte_238780BE0);

      sub_23875C2E0();
    }

    else
    {
      sub_2386E3CA8(v11, v12, v13);
    }
  }

  return result;
}

uint64_t sub_2386DB6A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  sub_23875ED50();
  v8[2] = a1;
  v8[3] = a2;
  result = sub_2386DC178(sub_2386E3F14, v8, "FinanceKitUI/OrderSearchResults.swift", 37, 2, 108);
  *a3 = result;
  a3[1] = v7;
  return result;
}

void sub_2386DB72C(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v66 = a2;
  v65 = sub_23875C1E0();
  v52 = *(v65 - 8);
  MEMORY[0x28223BE20](v65);
  v50 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v59 = &v46 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D040, &qword_2387676A0);
  MEMORY[0x28223BE20](v9 - 8);
  v62 = &v46 - v10;
  v61 = sub_23875B940();
  v11 = *(v61 - 8);
  MEMORY[0x28223BE20](v61);
  v57 = &v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_23875ED50();
  v51 = sub_23875ED40();
  v14 = sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v71 = MEMORY[0x277D84F90];
  v16 = *(a1 + 16);
  if (!v16)
  {
    v53 = MEMORY[0x277D84F90];
    goto LABEL_24;
  }

  v17 = 0;
  v60 = (v11 + 48);
  v54 = (v11 + 8);
  v55 = (v11 + 32);
  v64 = (v52 + 8);
  v18 = a1 + 40;
  v53 = MEMORY[0x277D84F90];
  *&v15 = 136315138;
  v58 = v15;
  v19 = v59;
  v63 = v16;
  v49 = a3;
  v48 = v3;
  v56 = v13;
  v47 = a1 + 40;
  do
  {
    v20 = (v18 + 16 * v17);
    a3 = v17;
    while (1)
    {
      if (a3 >= v16)
      {
        __break(1u);
LABEL_37:
        __break(1u);
        goto LABEL_38;
      }

      if (__OFADD__(a3, 1))
      {
        goto LABEL_37;
      }

      v68 = a3 + 1;
      v21 = *v20;
      v69 = *(v20 - 1);

      v67 = sub_23875ED40();
      sub_23875ECE0();
      if ((swift_task_isCurrentExecutor() & 1) == 0)
      {
        swift_task_reportUnexpectedExecutor();
      }

      v22 = [v66 persistentStoreCoordinator];
      if (v22)
      {
        break;
      }

LABEL_16:
      sub_23875C180();

      v30 = sub_23875C1B0();
      v14 = sub_23875F000();

      if (os_log_type_enabled(v30, v14))
      {
        v31 = swift_slowAlloc();
        v32 = swift_slowAlloc();
        v70 = v32;
        *v31 = v58;
        *(v31 + 4) = sub_2384615AC(v69, v21, &v70);
        _os_log_impl(&dword_2383F8000, v30, v14, "Could not create ObjectID from search item with identifier: %s", v31, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v32);
        v33 = v32;
        v16 = v63;
        v14 = v65;
        v19 = v59;
        MEMORY[0x23EE64DF0](v33, -1, -1);
        MEMORY[0x23EE64DF0](v31, -1, -1);

        (*v64)(v19, v14);
      }

      else
      {

        (*v64)(v19, v65);
      }

      a3 = (a3 + 1);
      v20 += 2;
      if (v68 == v16)
      {
        a3 = v49;
        goto LABEL_24;
      }
    }

    v23 = v22;
    v24 = v62;
    sub_23875B910();
    v25 = v61;
    if ((*v60)(v24, 1, v61) == 1)
    {

      sub_238439884(v24, &qword_27DF0D040, &qword_2387676A0);
      goto LABEL_16;
    }

    v26 = v57;
    (*v55)(v57, v24, v25);
    v27 = v25;
    v28 = sub_23875B860();
    v14 = [v23 managedObjectIDForURIRepresentation_];

    v29 = v27;
    v16 = v63;
    (*v54)(v26, v29);
    if (!v14)
    {
      goto LABEL_16;
    }

    MEMORY[0x23EE63730](v34);
    if (*((v71 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v71 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_23875EC90();
    }

    sub_23875ECB0();
    v53 = v71;
    v17 = v68;
    a3 = v49;
    v18 = v47;
  }

  while (v68 != v16);
LABEL_24:
  sub_238759C20();
  v35 = sub_2384A53CC(v53);

  v14 = sub_2386DBEF0(v35);

  if (v14 >> 62)
  {
LABEL_38:
    if (!sub_23875F3A0())
    {
      goto LABEL_39;
    }

LABEL_26:
    v36 = sub_2386E3F74(v14);

    if (!v36[2])
    {
      v39 = MEMORY[0x277D84F90];
      v40 = MEMORY[0x277D84F90];
LABEL_35:

      goto LABEL_42;
    }

    v37 = sub_238547C24(1);
    if (v38)
    {
      v39 = *(v36[7] + 8 * v37);

      if (!v36[2])
      {
        goto LABEL_34;
      }
    }

    else
    {
      v39 = MEMORY[0x277D84F90];
      if (!v36[2])
      {
        goto LABEL_34;
      }
    }

    v41 = sub_238547C24(0);
    if (v42)
    {
      v40 = *(v36[7] + 8 * v41);

      goto LABEL_35;
    }

LABEL_34:
    v40 = MEMORY[0x277D84F90];
    goto LABEL_35;
  }

  if (*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_26;
  }

LABEL_39:

  sub_23875C180();
  v43 = sub_23875C1B0();
  v44 = sub_23875EFE0();
  if (os_log_type_enabled(v43, v44))
  {
    v45 = swift_slowAlloc();
    *v45 = 0;
    _os_log_impl(&dword_2383F8000, v43, v44, "Index found items for query, but no dashboard items found.", v45, 2u);
    MEMORY[0x23EE64DF0](v45, -1, -1);
  }

  (*(v52 + 8))(v50, v65);

  v39 = MEMORY[0x277D84F90];
  v40 = MEMORY[0x277D84F90];
LABEL_42:
  *a3 = v39;
  a3[1] = v40;
}

uint64_t sub_2386DBEF0(uint64_t a1)
{
  v1 = sub_23875C1E0();
  MEMORY[0x28223BE20](v1);
  v2 = sub_238759C00();
  v3 = sub_238759BA0();
  [v2 setPredicate_];

  v4 = sub_23875F140();
  return v4;
}

uint64_t sub_2386DC178(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t isEscapingClosureAtFileLocation, uint64_t a5, uint64_t a6)
{
  sub_23875ED40();

  swift_task_getMainExecutor();
  if (swift_task_isCurrentExecutor())
  {
    v9 = swift_allocObject();
    *(v9 + 16) = a1;
    *(v9 + 24) = a2;
    sub_2386E3F30(&v14);
    if (v6)
    {
      v10 = swift_isEscapingClosureAtFileLocation();

      if ((v10 & 1) == 0)
      {
        return v10;
      }

      __break(1u);
    }

    else
    {
      v10 = v14;
      v11 = swift_isEscapingClosureAtFileLocation();

      if ((v11 & 1) == 0)
      {
        return v10;
      }
    }

    __break(1u);
  }

  *&v14 = 0;
  *(&v14 + 1) = 0xE000000000000000;
  sub_23875F470();
  MEMORY[0x23EE63650](0xD00000000000003FLL, 0x8000000238790970);
  v13 = sub_23875F7D0();
  MEMORY[0x23EE63650](v13);

  MEMORY[0x23EE63650](46, 0xE100000000000000);
  result = sub_23875F520();
  __break(1u);
  return result;
}

void sub_2386DC338(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, uint64_t a6)
{
  sub_23875ED40();

  swift_task_getMainExecutor();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    goto LABEL_8;
  }

  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  *(v9 + 24) = a2;
  sub_2386E3E30();
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (v6)
  {
    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      return;
    }

    __break(1u);
  }

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
LABEL_8:
    sub_23875F470();
    MEMORY[0x23EE63650](0xD00000000000003FLL, 0x8000000238790970);
    v11 = sub_23875F7D0();
    MEMORY[0x23EE63650](v11);

    MEMORY[0x23EE63650](46, 0xE100000000000000);
    sub_23875F520();
    __break(1u);
  }
}

void sub_2386DC4C0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v37 = a1;
  v9 = sub_23875C1E0();
  v33 = *(v9 - 8);
  v34 = v9;
  MEMORY[0x28223BE20](v9);
  v32 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_23875E5C0();
  v36 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_23875E5E0();
  v14 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v16 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_238449184(0, &qword_27DF12280, 0x277D85C78);
  v17 = sub_23875F0A0();
  v18 = swift_allocObject();
  v18[2] = a2;
  v18[3] = a3;
  v18[4] = a4;
  v18[5] = a5;
  aBlock[4] = sub_2386E3EE0;
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_238461548;
  aBlock[3] = &block_descriptor_48;
  v19 = _Block_copy(aBlock);

  sub_23875E5D0();
  v38 = MEMORY[0x277D84F90];
  sub_2386E2E80(&qword_27DF12288, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12290, &qword_23877A568);
  sub_23843A3E8(&qword_27DF12298, &qword_27DF12290, &qword_23877A568, MEMORY[0x277D83970]);
  sub_23875F310();
  MEMORY[0x23EE63B90](0, v16, v13, v19);
  _Block_release(v19);

  v20 = v11;
  v21 = v37;
  (*(v36 + 8))(v13, v20);
  (*(v14 + 8))(v16, v35);

  if (v21)
  {
    v22 = v21;
    v23 = v32;
    sub_23875C180();
    v24 = v21;
    v25 = sub_23875C1B0();
    v26 = sub_23875F000();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      *v27 = 138412290;
      v29 = v21;
      v30 = _swift_stdlib_bridgeErrorToNSError();
      *(v27 + 4) = v30;
      *v28 = v30;
      _os_log_impl(&dword_2383F8000, v25, v26, "Failed to search for orders: %@", v27, 0xCu);
      sub_238439884(v28, &qword_27DF09930, &unk_2387638C0);
      MEMORY[0x23EE64DF0](v28, -1, -1);
      MEMORY[0x23EE64DF0](v27, -1, -1);
    }

    else
    {
    }

    (*(v33 + 8))(v23, v34);
  }
}

double sub_2386DC96C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  swift_getKeyPath(aH_20);
  swift_getKeyPath(aH_21);
  sub_23875C2D0();

  if (v17 == a2)
  {
    swift_getKeyPath(asc_238780BB8);
    swift_getKeyPath(byte_238780BE0);
    sub_23875C2D0();

    v5 = v17;
    v6 = v18;
    v7 = v19;
    if (v19 != 1)
    {
LABEL_11:
      sub_2386E3CA8(v5, v6, v7);
      goto LABEL_12;
    }

    if (v17 >> 62)
    {
      v11 = sub_23875F3A0();
      v6 = v18;
      v12 = v11;
      v5 = v17;
      if (v12)
      {
        goto LABEL_10;
      }
    }

    else if (*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_10;
    }

    if (v6 >> 62)
    {
      v13 = v5;
      v14 = v6;
      v15 = sub_23875F3A0();
      v6 = v14;
      v16 = v15;
      v5 = v13;
      if (v16)
      {
        goto LABEL_10;
      }

      goto LABEL_9;
    }

    if (!*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_9:
      v8 = v5;
      v9 = v6;
      swift_getKeyPath(asc_238780BB8);
      swift_getKeyPath(byte_238780BE0);

      sub_23875C2E0();
      v5 = v8;
      v6 = v9;
    }

LABEL_10:
    v7 = 1;
    goto LABEL_11;
  }

LABEL_12:

  return result;
}

double sub_2386DCBA4(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_2386DCC04();
  }

  return result;
}

double sub_2386DCC04()
{
  v0 = sub_23875B520();
  if (v0)
  {
    v2 = v0;
    v16 = 1;
    v17 = 1;
    v15 = 1;
    v3 = sub_2386DCD64(&v17, v0);
    sub_2386E3E78(v17);
    sub_2386DCFA4(v3);
    v5 = v4;

    if (v5 & 1) != 0 || (v6 = sub_2386DCE88(&v16, v2, MEMORY[0x277CBE150]), sub_2386DCFA4(v6), v8 = v7, , (v8))
    {

      v9 = 1;
    }

    else
    {
      v10 = sub_2386DCE88(&v15, v2, MEMORY[0x277CBE310]);

      sub_2386DCFA4(v10);
      v12 = v11;

      v9 = v15;
      if ((v12 & 1) == 0)
      {
        goto LABEL_6;
      }
    }

    swift_getKeyPath(byte_238780C38);
    swift_getKeyPath(byte_238780C60);
    sub_23875C2D0();

    sub_2386DABD8(v13, v14);

LABEL_6:
    sub_2386E3E78(v9);
    return sub_2386E3E78(v16);
  }

  return result;
}

uint64_t sub_2386DCD64(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *a1;
  if (*a1 == 1)
  {
    v13[0] = sub_23875EA80();
    v13[1] = v6;
    sub_23875F410();
    if (*(a2 + 16) && (v7 = sub_238547A14(v12), (v8 & 1) != 0))
    {
      sub_238453DB4(*(a2 + 56) + 32 * v7, v13);
      sub_23854CE50(v12);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF14708, &qword_238780CC8);
      if (swift_dynamicCast())
      {
        v3 = v11;
LABEL_8:
        swift_beginAccess();
        v9 = *a1;
        *a1 = v3;

        sub_2386E3E78(v9);
        goto LABEL_9;
      }
    }

    else
    {
      sub_23854CE50(v12);
    }

    v3 = 0;
    goto LABEL_8;
  }

LABEL_9:
  sub_2386E41CC(v2);
  return v3;
}

uint64_t sub_2386DCE88(uint64_t *a1, uint64_t a2, void *a3)
{
  v3 = *a1;
  v4 = *a1;
  if (*a1 == 1)
  {
    v14[0] = sub_23875EA80();
    v14[1] = v7;
    sub_23875F410();
    if (*(a2 + 16) && (v8 = sub_238547A14(v13), (v9 & 1) != 0))
    {
      sub_238453DB4(*(a2 + 56) + 32 * v8, v14);
      sub_23854CE50(v13);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF14708, &qword_238780CC8);
      if (swift_dynamicCast())
      {
        v4 = v12;
LABEL_8:
        swift_beginAccess();
        v10 = *a1;
        *a1 = v4;

        sub_2386E3E78(v10);
        goto LABEL_9;
      }
    }

    else
    {
      sub_23854CE50(v13);
    }

    v4 = 0;
    goto LABEL_8;
  }

LABEL_9:
  sub_2386E41CC(v3);
  return v4;
}

void sub_2386DCFA4(uint64_t a1)
{
  if (!a1)
  {
    return;
  }

  v1 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {

    sub_23875F360();
    sub_238449184(0, &qword_27DF14710, 0x277CBE438);
    sub_2384A537C(&qword_27DF14718, &qword_27DF14710, 0x277CBE438);
    sub_23875EEA0();
    v1 = v14;
    v2 = v15;
    v3 = v16;
    v4 = v17;
    v5 = v18;
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
    if (!sub_23875F3D0() || (sub_238449184(0, &qword_27DF14710, 0x277CBE438), swift_dynamicCast(), (v9 = v13) == 0))
    {
LABEL_19:
      sub_238434840(v1);
      return;
    }

LABEL_10:
    sub_238759C20();
    v10 = swift_dynamicCastClass();

    if (v10)
    {
      goto LABEL_19;
    }
  }

  v11 = v4;
  v12 = v5;
  if (v5)
  {
LABEL_9:
    v5 = (v12 - 1) & v12;
    v9 = *(*(v1 + 48) + ((v4 << 9) | (8 * __clz(__rbit64(v12)))));
    if (!v9)
    {
      goto LABEL_19;
    }

    goto LABEL_10;
  }

  while (1)
  {
    v4 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v4 >= ((v3 + 64) >> 6))
    {
      goto LABEL_19;
    }

    v12 = *(v2 + 8 * v4);
    ++v11;
    if (v12)
    {
      goto LABEL_9;
    }
  }

  __break(1u);
}

uint64_t sub_2386DD1D4()
{
  v1 = OBJC_IVAR____TtC12FinanceKitUI16OrderSearchModel__state;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF10708, &qword_238775DE8);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC12FinanceKitUI16OrderSearchModel__searchText;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF10700, &qword_238775DE0);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = OBJC_IVAR____TtC12FinanceKitUI16OrderSearchModel__searchCounter;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF106F8, &qword_238775DD8);
  (*(*(v6 - 8) + 8))(v0 + v5, v6);

  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC12FinanceKitUI16OrderSearchModel_factory));
  swift_unknownObjectRelease();

  v7 = v0 + OBJC_IVAR____TtC12FinanceKitUI16OrderSearchModel_notificationToken;
  if (*(v0 + OBJC_IVAR____TtC12FinanceKitUI16OrderSearchModel_notificationToken))
  {
    v8 = *(v7 + 16);
    v11[0] = *v7;
    v11[1] = v8;
    v12 = *(v7 + 32);
    __swift_project_boxed_opaque_existential_1(v11 + 1, v12);
    v9 = *&v11[0];
    [v9 removeObserver_];

    swift_unknownObjectRelease();
    __swift_destroy_boxed_opaque_existential_1(v11 + 1);
  }

  return swift_deallocClassInstance();
}

void sub_2386DD408(uint64_t a1)
{
  sub_2386E2C18(319, &qword_27DF14668, &type metadata for OrderSearchModel.State, MEMORY[0x277CBCED0]);
  if (v1 <= 0x3F)
  {
    sub_2386E2C18(319, &qword_27DF14670, MEMORY[0x277D837D0], MEMORY[0x277CBCED0]);
    if (v2 <= 0x3F)
    {
      sub_2386E2C18(319, &qword_27DF14678, MEMORY[0x277D83B88], MEMORY[0x277CBCED0]);
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

uint64_t get_enum_tag_for_layout_string_12FinanceKitUI16OrderSearchModelC5StateO(uint64_t a1)
{
  if ((*(a1 + 16) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

uint64_t sub_2386DD5C8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 17))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 16);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_2386DD610(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_2386DD654(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    LOBYTE(a2) = 2;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t sub_2386DD6A4()
{
  v1 = sub_23875CDB0();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v9[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = v0 + *(type metadata accessor for OrderListSearchContainer(0) + 24);
  v6 = *v5;
  if (*(v5 + 8) != 1)
  {

    sub_23875EFF0();
    v7 = sub_23875D730();
    sub_23875C110();

    sub_23875CDA0();
    swift_getAtKeyPath();
    sub_2384348B8(v6, 0);
    (*(v2 + 8))(v4, v1);
    LOBYTE(v6) = v9[15];
  }

  return v6 & 1;
}

double sub_2386DD7FC@<D0>(uint64_t a2@<X8>)
{
  v36 = a2;
  v35 = type metadata accessor for OrderListContent(0);
  MEMORY[0x28223BE20](v35);
  v3 = (&v28 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF146D8, &qword_238780B90);
  MEMORY[0x28223BE20](v30);
  v5 = &v28 - v4;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF146F8, &qword_238780BA8);
  MEMORY[0x28223BE20](v31);
  v7 = &v28 - v6;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF14700, &qword_238780BB0);
  MEMORY[0x28223BE20](v29);
  v9 = &v28 - v8;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF146C0, &qword_238780B88);
  MEMORY[0x28223BE20](v32);
  v11 = &v28 - v10;
  v12 = type metadata accessor for OrderSearchResults(0);
  MEMORY[0x28223BE20](v12);
  v14 = (&v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF146B0, &qword_238780B80);
  MEMORY[0x28223BE20](v15 - 8);
  v34 = &v28 - v16;
  sub_23875ED50();
  v33 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  swift_getKeyPath(asc_238780BB8);
  swift_getKeyPath(byte_238780BE0);
  sub_23875C2D0();

  v18 = v37;
  v17 = v38;
  if (v39)
  {
    if (v39 == 1)
    {
      *v14 = v37;
      v14[1] = v17;
      v19 = *(v12 + 20);
      *(v14 + v19) = swift_getKeyPath(byte_238780C00);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D340, &qword_238764740);
      swift_storeEnumTagMultiPayload();
      sub_2386E3CF8(v14, v9, type metadata accessor for OrderSearchResults);
      swift_storeEnumTagMultiPayload();
      sub_2386E2E80(&qword_27DF146C8, type metadata accessor for OrderSearchResults, &unk_238780D28);
      sub_2386E2EE8();
      sub_23875D1B0();
      sub_23843981C(v11, v7, &qword_27DF146C0, &qword_238780B88);
      swift_storeEnumTagMultiPayload();
      sub_2386E2DC4();
      sub_2386E2E80(&qword_27DF146F0, type metadata accessor for OrderListContent, &unk_238776A20);
      v20 = v34;
      sub_23875D1B0();
      sub_238439884(v11, &qword_27DF146C0, &qword_238780B88);
      v21 = type metadata accessor for OrderSearchResults;
      v22 = v14;
    }

    else
    {
      sub_2385F6AC8(v3);
      sub_2386E3CF8(v3, v7, type metadata accessor for OrderListContent);
      swift_storeEnumTagMultiPayload();
      sub_2386E2DC4();
      sub_2386E2E80(&qword_27DF146F0, type metadata accessor for OrderListContent, &unk_238776A20);
      v20 = v34;
      sub_23875D1B0();
      v21 = type metadata accessor for OrderListContent;
      v22 = v3;
    }

    sub_2386E3D60(v22, v21);
  }

  else
  {
    sub_23875D410();
    sub_2386E3CA8(v18, v17, 0);
    v23 = [objc_opt_self() systemGroupedBackgroundColor];
    v24 = sub_23875DFB0();
    v25 = sub_23875D780();
    v26 = &v5[*(v30 + 36)];
    *v26 = v24;
    v26[8] = v25;
    sub_23843981C(v5, v9, &qword_27DF146D8, &qword_238780B90);
    swift_storeEnumTagMultiPayload();
    sub_2386E2E80(&qword_27DF146C8, type metadata accessor for OrderSearchResults, &unk_238780D28);
    sub_2386E2EE8();
    sub_23875D1B0();
    sub_23843981C(v11, v7, &qword_27DF146C0, &qword_238780B88);
    swift_storeEnumTagMultiPayload();
    sub_2386E2DC4();
    sub_2386E2E80(&qword_27DF146F0, type metadata accessor for OrderListContent, &unk_238776A20);
    v20 = v34;
    sub_23875D1B0();
    sub_238439884(v11, &qword_27DF146C0, &qword_238780B88);
    sub_238439884(v5, &qword_27DF146D8, &qword_238780B90);
  }

  sub_2384396E4(v20, v36, &qword_27DF146B0, &qword_238780B80);

  return result;
}

double sub_2386DDF24(uint64_t a1, unsigned __int8 *a2)
{
  v2 = *a2;
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (v2)
  {
    v3 = sub_23854B138(MEMORY[0x277D84F90]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF0D3C0, &qword_238769F10);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_238763300;
    v5 = *MEMORY[0x277D383D8];
    *(inited + 32) = *MEMORY[0x277D383D8];
    *(inited + 40) = sub_23875EA80();
    *(inited + 48) = v6;
    v7 = *MEMORY[0x277D38390];
    *(inited + 56) = *MEMORY[0x277D38390];
    *(inited + 64) = 0x686372616573;
    v8 = *MEMORY[0x277D384B8];
    *(inited + 72) = 0xE600000000000000;
    *(inited + 80) = v8;
    strcpy((inited + 88), "orderDashboard");
    *(inited + 103) = -18;
    v9 = v5;
    v10 = v7;
    v11 = v8;
    v12 = sub_23854B138(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF130A0, &unk_238763810);
    swift_arrayDestroy();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = v12;
    sub_2385C33E4(v3, sub_2386E31DC, 0, isUniquelyReferenced_nonNull_native, &v18);

    v14 = *MEMORY[0x277D38548];
    v15 = objc_opt_self();
    type metadata accessor for PKAnalyticsKey(0);
    sub_2386E2E80(&qword_27DF09090, type metadata accessor for PKAnalyticsKey, &unk_238762110);
    v16 = sub_23875E910();

    [v15 subject:v14 sendEvent:v16];
  }

  else
  {
  }

  return result;
}

uint64_t sub_2386DE1E4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF14698, &qword_238780B78);
  MEMORY[0x28223BE20](v0);
  v2 = &v4[-v1];
  sub_2386DD7FC(&v4[-v1]);
  v4[15] = sub_2386DD6A4() & 1;
  sub_2386E2C84();
  sub_23875DF10();
  return sub_238439884(v2, &qword_27DF14698, &qword_238780B78);
}

uint64_t sub_2386DE2E8@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v25 = a2;
  active = type metadata accessor for OrderSearchResults.ActiveSearchRowViewModel(0);
  MEMORY[0x28223BE20](active);
  v5 = (&v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = sub_238758FA0();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = (&v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = sub_238759BE0();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = (&v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_238759BF0();
  v14 = (*(v11 + 88))(v13, v10);
  if (v14 == *MEMORY[0x277CC7C50])
  {
    (*(v11 + 96))(v13, v10);
    v15 = *v13;
    sub_238757D90();
    if ((*(v7 + 88))(v9, v6) == *MEMORY[0x277CC76A8])
    {
      (*(v7 + 96))(v9, v6);
      v16 = *v9;
      v17 = v15;
      v18 = v16;
      sub_2386D5844(v17, v18, v5);
      v19 = v5 + *(active + 20);
      sub_238757D40();
      v20 = sub_2385BA98C();
      v21 = type metadata accessor for OrderListRowActionsModifier.ViewModel(0);
      v19[*(v21 + 20)] = v20 & 1;
      v22 = [v17 isMarkedAsComplete];

      v19[*(v21 + 24)] = v22;
      sub_2386E46A4(v5, v25, type metadata accessor for OrderSearchResults.ActiveSearchRowViewModel);
LABEL_6:
      type metadata accessor for OrderSearchResults.ActiveContentItem(0);
      return swift_storeEnumTagMultiPayload();
    }
  }

  else if (v14 == *MEMORY[0x277CC7C58])
  {
    (*(v11 + 96))(v13, v10);
    sub_2386A2B1C(*v13, 0, v25);

    goto LABEL_6;
  }

  result = sub_23875F520();
  __break(1u);
  return result;
}

uint64_t sub_2386DE6CC@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v48 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09F38, &qword_238764DC0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v45 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v45 - v7;
  MEMORY[0x28223BE20](v9);
  v46 = &v45 - v10;
  v45 = type metadata accessor for OrderSearchResults.PastOrderSearchRowViewModel(0);
  MEMORY[0x28223BE20](v45);
  v12 = (&v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = sub_238758FA0();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = (&v45 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = sub_238759BE0();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = (&v45 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v47 = a1;
  sub_238759BF0();
  v21 = (*(v18 + 88))(v20, v17);
  if (v21 == *MEMORY[0x277CC7C50])
  {
    (*(v18 + 96))(v20, v17);
    v22 = *v20;
    sub_238757D90();
    if ((*(v14 + 88))(v16, v13) == *MEMORY[0x277CC76A8])
    {
      (*(v14 + 96))(v16, v13);
      v23 = *v16;
      v24 = v46;
      sub_23875A4D0();
      sub_23843981C(v24, v8, &qword_27DF09F38, &qword_238764DC0);
      v25 = v22;
      v26 = v23;
      v27 = v25;
      v28 = v26;
      v29 = [v28 merchant];
      v30 = [v29 logoName];

      if (v30)
      {
        v31 = sub_23875EA80();
        v33 = v32;
      }

      else
      {
        v31 = 0;
        v33 = 0;
      }

      *v12 = v31;
      v12[1] = v33;
      v34 = type metadata accessor for MerchantImage.ViewModel(0);
      sub_238757DA0();
      v35 = [v28 merchant];
      v36 = [v35 displayName];

      v37 = sub_2387586A0();
      v39 = v38;

      v40 = (v12 + *(v34 + 24));
      *v40 = v37;
      v40[1] = v39;
      sub_23843981C(v8, v5, &qword_27DF09F38, &qword_238764DC0);
      type metadata accessor for OrderListRow.ViewModel(0);
      v41 = v28;
      sub_238759050();
      sub_23843981C(v8, v5, &qword_27DF09F38, &qword_238764DC0);
      sub_23875B080();
      sub_238439884(v8, &qword_27DF09F38, &qword_238764DC0);
      v42 = v12 + *(v45 + 20);
      sub_238757D40();
      LOBYTE(v37) = sub_2385BA98C();
      v43 = type metadata accessor for OrderListRowActionsModifier.ViewModel(0);
      v42[*(v43 + 20)] = v37 & 1;
      LOBYTE(v37) = [v27 isMarkedAsComplete];

      sub_238439884(v46, &qword_27DF09F38, &qword_238764DC0);
      v42[*(v43 + 24)] = v37;
      sub_2386E46A4(v12, v48, type metadata accessor for OrderSearchResults.PastOrderSearchRowViewModel);
      goto LABEL_9;
    }
  }

  else if (v21 == *MEMORY[0x277CC7C58])
  {
    (*(v18 + 96))(v20, v17);
    sub_2386A2B1C(*v20, 0, v48);

LABEL_9:
    type metadata accessor for OrderSearchResults.PastContentItem(0);
    return swift_storeEnumTagMultiPayload();
  }

  result = sub_23875F520();
  __break(1u);
  return result;
}

double sub_2386DECE4@<D0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v132 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF14750, &qword_238780D88);
  v130 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v127 = v123 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF14758, &unk_238780D90);
  MEMORY[0x28223BE20](v5 - 8);
  v131 = v123 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = v123 - v8;
  v10 = sub_23875CEA0();
  v138 = *(v10 - 8);
  v139 = v10;
  MEMORY[0x28223BE20](v10);
  v136 = v123 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v135 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0AB38, &unk_238766830);
  MEMORY[0x28223BE20](v135);
  v134 = v123 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v133 = v123 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF14760, &qword_238780DA0);
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = v123 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF14768, &unk_238780DA8);
  MEMORY[0x28223BE20](v19 - 8);
  v129 = v123 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v23 = v123 - v22;
  sub_23875ED50();
  v128 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (*a1 >> 62)
  {
    v24 = sub_23875F3A0();
  }

  else
  {
    v24 = *((*a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v140 = v3;
  v141 = v9;
  v137 = v23;
  v142 = a1;
  if (v24)
  {
    v124 = v18;
    v125 = v16;
    v126 = v15;
    if (qword_2814F0880 != -1)
    {
      swift_once();
    }

    v25 = qword_2814F1B90;
    v26 = sub_23875EA50();
    v27 = sub_23875EA50();
    v28 = sub_23875EA50();
    v29 = [v25 localizedStringForKey:v26 value:v27 table:v28];

    v30 = sub_23875EA80();
    v32 = v31;

    v143 = v30;
    v144 = v32;
    sub_2384397A8(v33, v34, v35);
    v36 = sub_23875DAA0();
    v38 = v37;
    LOBYTE(v32) = v39;
    sub_23875D8E0();
    v40 = sub_23875DA60();
    v42 = v41;
    v44 = v43;

    sub_2384397FC(v36, v38, v32 & 1);

    sub_23875D890();
    v45 = sub_23875D9E0();
    v47 = v46;
    LOBYTE(v32) = v48;
    sub_2384397FC(v40, v42, v44 & 1);

    LODWORD(v143) = sub_23875D420();
    v49 = sub_23875DA20();
    v51 = v50;
    v53 = v52;
    v55 = v54;
    sub_2384397FC(v45, v47, v32 & 1);

    v56 = v133;
    v57 = &v133[*(v135 + 36)];
    v58 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09C20, &qword_2387711C0) + 28);
    v59 = sub_23875DA40();
    (*(*(v59 - 8) + 56))(v57 + v58, 1, 1, v59);
    KeyPath = swift_getKeyPath(byte_238780DB8);
    v123[1] = v123;
    *v57 = KeyPath;
    *v56 = v49;
    *(v56 + 8) = v51;
    *(v56 + 16) = v53 & 1;
    *(v56 + 24) = v55;
    MEMORY[0x28223BE20](KeyPath);
    v123[-2] = v142;
    sub_23843981C(v56, v134, &qword_27DF0AB38, &unk_238766830);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF14770, &qword_238780DE8);
    sub_238485418();
    sub_2386E432C();
    v61 = v124;
    sub_23875E3B0();
    v62 = v136;
    sub_23875CE90();
    sub_238439884(v56, &qword_27DF0AB38, &unk_238766830);
    v63 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF14790, &qword_238780DF8) + 36);
    v65 = v138;
    v64 = v139;
    (*(v138 + 16))(v61 + v63, v62, v139);
    v66 = *(v65 + 56);
    v66(v61 + v63, 0, 1, v64);
    v67 = swift_getKeyPath(byte_238780E00);
    v68 = v126;
    v69 = (v61 + *(v126 + 9));
    v70 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D480, &qword_23876D950) + 28);
    (*(v65 + 32))(v69 + v70, v62, v64);
    v66(v69 + v70, 0, 1, v64);
    a1 = v142;
    *v69 = v67;
    v23 = v137;
    sub_2384396E4(v61, v137, &qword_27DF14760, &qword_238780DA0);
    (*(v125 + 56))(v23, 0, 1, v68);
    v3 = v140;
    v9 = v141;
  }

  else
  {
    (*(v16 + 56))(v23, 1, 1, v15);
  }

  v71 = a1[1];
  if (v71 >> 62)
  {
    v72 = sub_23875F3A0();
  }

  else
  {
    v72 = *((v71 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v72)
  {
    if (qword_2814F0880 != -1)
    {
      swift_once();
    }

    v73 = qword_2814F1B90;
    v74 = sub_23875EA50();
    v75 = sub_23875EA50();
    v76 = sub_23875EA50();
    v77 = [v73 localizedStringForKey:v74 value:v75 table:v76];

    v78 = sub_23875EA80();
    v80 = v79;

    v143 = v78;
    v144 = v80;
    sub_2384397A8(v81, v82, v83);
    v84 = sub_23875DAA0();
    v86 = v85;
    LOBYTE(v80) = v87;
    sub_23875D8E0();
    v88 = sub_23875DA60();
    v90 = v89;
    v92 = v91;

    sub_2384397FC(v84, v86, v80 & 1);

    sub_23875D890();
    v93 = sub_23875D9E0();
    v95 = v94;
    LOBYTE(v80) = v96;
    sub_2384397FC(v88, v90, v92 & 1);

    LODWORD(v143) = sub_23875D420();
    v97 = sub_23875DA20();
    v99 = v98;
    LOBYTE(v90) = v100;
    v102 = v101;
    sub_2384397FC(v93, v95, v80 & 1);

    v103 = v133;
    v104 = &v133[*(v135 + 36)];
    v105 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09C20, &qword_2387711C0) + 28);
    v106 = sub_23875DA40();
    (*(*(v106 - 8) + 56))(v104 + v105, 1, 1, v106);
    v107 = swift_getKeyPath(byte_238780DB8);
    v126 = v123;
    *v104 = v107;
    *v103 = v97;
    *(v103 + 8) = v99;
    *(v103 + 16) = v90 & 1;
    *(v103 + 24) = v102;
    MEMORY[0x28223BE20](v107);
    v123[-2] = v142;
    sub_23843981C(v103, v134, &qword_27DF0AB38, &unk_238766830);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF14798, &qword_238780E38);
    sub_238485418();
    sub_2386E43E4();
    v108 = v127;
    sub_23875E3B0();
    v109 = v136;
    sub_23875CE90();
    sub_238439884(v103, &qword_27DF0AB38, &unk_238766830);
    v110 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF147B8, &qword_238780E48) + 36);
    v112 = v138;
    v111 = v139;
    (*(v138 + 16))(v108 + v110, v109, v139);
    v113 = *(v112 + 56);
    v113(v108 + v110, 0, 1, v111);
    v114 = swift_getKeyPath(byte_238780E00);
    v3 = v140;
    v115 = (v108 + *(v140 + 36));
    v116 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D480, &qword_23876D950) + 28);
    (*(v112 + 32))(v115 + v116, v109, v111);
    v113(v115 + v116, 0, 1, v111);
    *v115 = v114;
    v9 = v141;
    sub_2384396E4(v108, v141, &qword_27DF14750, &qword_238780D88);
    v117 = 0;
    v23 = v137;
  }

  else
  {
    v117 = 1;
  }

  (*(v130 + 56))(v9, v117, 1, v3);
  v118 = v129;
  sub_23843981C(v23, v129, &qword_27DF14768, &unk_238780DA8);
  v119 = v131;
  sub_23843981C(v9, v131, &qword_27DF14758, &unk_238780D90);
  v120 = v132;
  sub_23843981C(v118, v132, &qword_27DF14768, &unk_238780DA8);
  v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF147C0, qword_238780E50);
  sub_23843981C(v119, v120 + *(v121 + 48), &qword_27DF14758, &unk_238780D90);
  sub_238439884(v9, &qword_27DF14758, &unk_238780D90);
  sub_238439884(v23, &qword_27DF14768, &unk_238780DA8);
  sub_238439884(v119, &qword_27DF14758, &unk_238780D90);
  sub_238439884(v118, &qword_27DF14768, &unk_238780DA8);

  return result;
}

uint64_t sub_2386DFAF8(uint64_t *a1, double a2)
{
  v3 = type metadata accessor for OrderSearchResults(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3 - 8);
  v10[1] = *a1;
  swift_getKeyPath(asc_238780E68, v6);
  sub_2386E3CF8(a1, v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for OrderSearchResults);
  v7 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v8 = swift_allocObject();
  sub_2386E46A4(v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v8 + v7, type metadata accessor for OrderSearchResults);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0AE10, &unk_238780E90);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF14788, &qword_238780DF0);
  sub_23843A3E8(&qword_27DF147C8, &qword_27DF0AE10, &unk_238780E90, MEMORY[0x277D83980]);
  sub_2384A537C(&qword_27DF0B110, &qword_27DF0B108, 0x277CBE448);
  sub_23843A3E8(&qword_27DF14780, &qword_27DF14788, &qword_238780DF0, &unk_238769740);
  return sub_23875E370();
}

void sub_2386DFD2C(void **a1@<X0>, uint64_t a2@<X1>, char **a3@<X8>)
{
  v7 = type metadata accessor for OrderSearchResults(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = *a1;
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_2386E3CF8(a2, &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for OrderSearchResults);
  v11 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v12 = swift_allocObject();
  sub_2386E46A4(&v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), &v12[v11], type metadata accessor for OrderSearchResults);
  *&v12[(v9 + v11 + 7) & 0xFFFFFFFFFFFFFFF8] = v10;
  v13 = v10;
  v14 = [v13 managedObjectContext];
  if (v14)
  {
    v15 = v14;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11A88, &qword_238779548);
    swift_allocObject();
    v16 = v13;
    v17 = sub_238629B90(v13, v15, sub_2386DFF58, 0);

    *a3 = v17;
    a3[1] = 0;
    a3[2] = sub_2386E4A14;
    a3[3] = v12;
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_2386DFF58@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = a1;

  return sub_2386DE2E8(v3, a2);
}

uint64_t sub_2386DFF90@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, void *a3@<X8>)
{
  v24[1] = a2;
  v25 = a3;
  v26 = sub_238759BE0();
  v24[0] = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v5 = v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_23875C880();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = v24 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0CF10, &unk_238780F50);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = v24 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0CEF8, &unk_23876C6F0);
  v17 = v16 - 8;
  MEMORY[0x28223BE20](v16);
  v19 = v24 - v18;
  sub_2386E02A4(a1, v15);
  type metadata accessor for OrderSearchResults(0);
  sub_2384D5138(v12);
  (*(v7 + 104))(v9, *MEMORY[0x277CDF9D8], v6);
  LOBYTE(a1) = sub_23875C870();
  v20 = *(v7 + 8);
  v20(v9, v6);
  v20(v12, v6);
  if (a1)
  {
    v21 = 0x4028000000000000;
  }

  else
  {
    v21 = 0x4030000000000000;
  }

  sub_2384396E4(v15, v19, &qword_27DF0CF10, &unk_238780F50);
  v22 = &v19[*(v17 + 44)];
  *v22 = 0x4028000000000000;
  *(v22 + 1) = v21;
  *(v22 + 2) = 0x4028000000000000;
  *(v22 + 3) = v21;
  v22[32] = 0;
  sub_238759BF0();
  sub_2386E0910(v5, v25);
  (*(v24[0] + 8))(v5, v26);
  return sub_238439884(v19, &qword_27DF0CEF8, &unk_23876C6F0);
}

double sub_2386E02A4@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v33[0] = a1;
  v38 = a2;
  v37 = type metadata accessor for ExtractedOrderArchiveMonthRow(0);
  MEMORY[0x28223BE20](v37);
  v3 = v33 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for ExtractedOrderArchiveMonthRow.ViewModel(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF14898, &unk_238780FA0);
  MEMORY[0x28223BE20](v34);
  v8 = v33 - v7;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0CF30, &qword_23876C708);
  MEMORY[0x28223BE20](v36);
  v10 = v33 - v9;
  active = type metadata accessor for OrderSearchResults.ActiveSearchRowViewModel(0);
  MEMORY[0x28223BE20](active);
  v13 = v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for OrderSearchResults.ActiveContentItem(0);
  MEMORY[0x28223BE20](v14);
  v16 = v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0CF20, &qword_23876C700);
  MEMORY[0x28223BE20](v17 - 8);
  v35 = v33 - v18;
  sub_23875ED50();
  v33[1] = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_2386E3CF8(v33[0], v16, type metadata accessor for OrderSearchResults.ActiveContentItem);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_2386E46A4(v16, v6, type metadata accessor for ExtractedOrderArchiveMonthRow.ViewModel);
    sub_2386E3CF8(v6, v3, type metadata accessor for ExtractedOrderArchiveMonthRow.ViewModel);
    v19 = v37;
    v20 = &v3[*(v37 + 20)];
    v39 = 0;
    sub_23875E1A0();
    v21 = v41;
    *v20 = v40;
    *(v20 + 1) = v21;
    v22 = *(v19 + 24);
    *&v3[v22] = swift_getKeyPath(byte_238780C00);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D340, &qword_238764740);
    swift_storeEnumTagMultiPayload();
    sub_2386E3CF8(v3, v8, type metadata accessor for ExtractedOrderArchiveMonthRow);
    swift_storeEnumTagMultiPayload();
    sub_238500284();
    sub_2386E2E80(&qword_27DF0CE80, type metadata accessor for ExtractedOrderArchiveMonthRow, &unk_23877E75C);
    v23 = v35;
    sub_23875D1B0();
    sub_2386E3D60(v3, type metadata accessor for ExtractedOrderArchiveMonthRow);
    v24 = type metadata accessor for ExtractedOrderArchiveMonthRow.ViewModel;
    v25 = v6;
  }

  else
  {
    sub_2386E46A4(v16, v13, type metadata accessor for OrderSearchResults.ActiveSearchRowViewModel);
    sub_2386E3CF8(v13, v10, type metadata accessor for OrderSearchActiveRow.ViewModel);
    v26 = *(type metadata accessor for OrderSearchActiveRow(0) + 20);
    *&v10[v26] = swift_getKeyPath(byte_238780C00);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D340, &qword_238764740);
    swift_storeEnumTagMultiPayload();
    v27 = &v10[*(v36 + 36)];
    sub_2386E3CF8(&v13[*(active + 20)], v27, type metadata accessor for OrderListRowActionsModifier.ViewModel);
    v28 = type metadata accessor for OrderListRowActionsModifier(0);
    v29 = v27 + *(v28 + 20);
    v39 = 0;
    sub_23875E1A0();
    v30 = v41;
    *v29 = v40;
    *(v29 + 8) = v30;
    v31 = *(v28 + 24);
    *(v27 + v31) = swift_getKeyPath(byte_238780F20);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09DD8, &qword_2387694D0);
    swift_storeEnumTagMultiPayload();
    sub_23843981C(v10, v8, &qword_27DF0CF30, &qword_23876C708);
    swift_storeEnumTagMultiPayload();
    sub_238500284();
    sub_2386E2E80(&qword_27DF0CE80, type metadata accessor for ExtractedOrderArchiveMonthRow, &unk_23877E75C);
    v23 = v35;
    sub_23875D1B0();
    sub_238439884(v10, &qword_27DF0CF30, &qword_23876C708);
    v24 = type metadata accessor for OrderSearchResults.ActiveSearchRowViewModel;
    v25 = v13;
  }

  sub_2386E3D60(v25, v24);
  sub_2384396E4(v23, v38, &qword_27DF0CF20, &qword_23876C700);

  return result;
}

uint64_t sub_2386E0910@<X0>(char *a1@<X0>, void *a2@<X8>)
{
  v38 = a1;
  v44 = a2;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF14838, &qword_238780F60);
  v37 = *(v41 - 8);
  MEMORY[0x28223BE20](v41);
  v36 = &v35 - v2;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF14840, &qword_238780F68);
  MEMORY[0x28223BE20](v43);
  v4 = &v35 - v3;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF14848, &qword_238780F70);
  MEMORY[0x28223BE20](v39);
  v6 = &v35 - v5;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF14850, &qword_238780F78);
  MEMORY[0x28223BE20](v42);
  v8 = &v35 - v7;
  v9 = type metadata accessor for OrderNavigationDestination(0);
  MEMORY[0x28223BE20](v9);
  v11 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF14858, &qword_238780F80);
  MEMORY[0x28223BE20](v12);
  v14 = (&v35 - v13);
  v15 = sub_238759BE0();
  v16 = *(v15 - 8);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = (&v35 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v16 + 16))(v19, v38, v15, v17);
  v20 = (*(v16 + 88))(v19, v15);
  if (v20 == *MEMORY[0x277CC7C50])
  {
    (*(v16 + 96))(v19, v15);
    v21 = *v19;
    *v11 = v21;
    *(v11 + 8) = 0u;
    *(v11 + 24) = 0u;
    swift_storeEnumTagMultiPayload();
    v22 = v21;
    *v14 = sub_23875E4B0();
    v14[1] = v23;
    v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF14888, &qword_238780F90);
    sub_2386DA0D0(v11, v40, &qword_27DF0CEF8, &unk_23876C6F0, &qword_27DF14890, &qword_238780F98, v14 + *(v24 + 44));
    sub_2386E3D60(v11, type metadata accessor for OrderNavigationDestination);
    v25 = v14 + *(v12 + 36);
    sub_238757D40();
    v26 = &v25[*(type metadata accessor for ManagedOrderResourceLoaderModifier(0) + 20)];
    *v26 = swift_getKeyPath(byte_238780EE8);
    v26[8] = 0;
    sub_23843981C(v14, v6, &qword_27DF14858, &qword_238780F80);
    swift_storeEnumTagMultiPayload();
    sub_2386E4AEC();
    sub_23843A3E8(&qword_27DF14878, &qword_27DF14838, &qword_238780F60, MEMORY[0x277CDD938]);
    sub_23875D1B0();
    sub_23843981C(v8, v4, &qword_27DF14850, &qword_238780F78);
    swift_storeEnumTagMultiPayload();
    sub_2386E4BD4();
    sub_23875D1B0();

    sub_238439884(v8, &qword_27DF14850, &qword_238780F78);
    return sub_238439884(v14, &qword_27DF14858, &qword_238780F80);
  }

  else
  {
    v38 = v4;
    v28 = v41;
    if (v20 == *MEMORY[0x277CC7C58])
    {
      (*(v16 + 96))(v19, v15);
      v35 = *v19;
      v29 = [v35 trackedOrderIdentifier];
      v30 = sub_23875EA80();
      v32 = v31;

      v33 = v36;
      sub_2384FD820(v30, v32, v36);

      v34 = v37;
      (*(v37 + 16))(v6, v33, v28);
      swift_storeEnumTagMultiPayload();
      sub_2386E4AEC();
      sub_23843A3E8(&qword_27DF14878, &qword_27DF14838, &qword_238780F60, MEMORY[0x277CDD938]);
      sub_23875D1B0();
      sub_23843981C(v8, v38, &qword_27DF14850, &qword_238780F78);
      swift_storeEnumTagMultiPayload();
      sub_2386E4BD4();
      sub_23875D1B0();

      sub_238439884(v8, &qword_27DF14850, &qword_238780F78);
      return (*(v34 + 8))(v33, v28);
    }

    else
    {
      result = sub_23875F520();
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_2386E1020@<X0>(char *a1@<X0>, void *a2@<X8>)
{
  v38 = a1;
  v44 = a2;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF147D0, &qword_238780EB0);
  v37 = *(v41 - 8);
  MEMORY[0x28223BE20](v41);
  v36 = &v35 - v2;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF147D8, &qword_238780EB8);
  MEMORY[0x28223BE20](v43);
  v4 = &v35 - v3;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF147E0, &qword_238780EC0);
  MEMORY[0x28223BE20](v39);
  v6 = &v35 - v5;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF147E8, &qword_238780EC8);
  MEMORY[0x28223BE20](v42);
  v8 = &v35 - v7;
  v9 = type metadata accessor for OrderNavigationDestination(0);
  MEMORY[0x28223BE20](v9);
  v11 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF147F0, &qword_238780ED0);
  MEMORY[0x28223BE20](v12);
  v14 = (&v35 - v13);
  v15 = sub_238759BE0();
  v16 = *(v15 - 8);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = (&v35 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v16 + 16))(v19, v38, v15, v17);
  v20 = (*(v16 + 88))(v19, v15);
  if (v20 == *MEMORY[0x277CC7C50])
  {
    (*(v16 + 96))(v19, v15);
    v21 = *v19;
    *v11 = v21;
    *(v11 + 8) = 0u;
    *(v11 + 24) = 0u;
    swift_storeEnumTagMultiPayload();
    v22 = v21;
    *v14 = sub_23875E4B0();
    v14[1] = v23;
    v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF14820, &qword_238780EE0);
    sub_2386DA0D0(v11, v40, &qword_27DF0CEB8, &unk_23876C6D0, &qword_27DF14828, &qword_238780F10, v14 + *(v24 + 44));
    sub_2386E3D60(v11, type metadata accessor for OrderNavigationDestination);
    v25 = v14 + *(v12 + 36);
    sub_238757D40();
    v26 = &v25[*(type metadata accessor for ManagedOrderResourceLoaderModifier(0) + 20)];
    *v26 = swift_getKeyPath(byte_238780EE8);
    v26[8] = 0;
    sub_23843981C(v14, v6, &qword_27DF147F0, &qword_238780ED0);
    swift_storeEnumTagMultiPayload();
    sub_2386E44C4();
    sub_23843A3E8(&qword_27DF14810, &qword_27DF147D0, &qword_238780EB0, MEMORY[0x277CDD938]);
    sub_23875D1B0();
    sub_23843981C(v8, v4, &qword_27DF147E8, &qword_238780EC8);
    swift_storeEnumTagMultiPayload();
    sub_2386E45AC();
    sub_23875D1B0();

    sub_238439884(v8, &qword_27DF147E8, &qword_238780EC8);
    return sub_238439884(v14, &qword_27DF147F0, &qword_238780ED0);
  }

  else
  {
    v38 = v4;
    v28 = v41;
    if (v20 == *MEMORY[0x277CC7C58])
    {
      (*(v16 + 96))(v19, v15);
      v35 = *v19;
      v29 = [v35 trackedOrderIdentifier];
      v30 = sub_23875EA80();
      v32 = v31;

      v33 = v36;
      sub_2384FD85C(v30, v32, v36);

      v34 = v37;
      (*(v37 + 16))(v6, v33, v28);
      swift_storeEnumTagMultiPayload();
      sub_2386E44C4();
      sub_23843A3E8(&qword_27DF14810, &qword_27DF147D0, &qword_238780EB0, MEMORY[0x277CDD938]);
      sub_23875D1B0();
      sub_23843981C(v8, v38, &qword_27DF147E8, &qword_238780EC8);
      swift_storeEnumTagMultiPayload();
      sub_2386E45AC();
      sub_23875D1B0();

      sub_238439884(v8, &qword_27DF147E8, &qword_238780EC8);
      return (*(v34 + 8))(v33, v28);
    }

    else
    {
      result = sub_23875F520();
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_2386E1730(uint64_t a1, double a2)
{
  v3 = type metadata accessor for OrderSearchResults(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3 - 8);
  v10[1] = *(a1 + 8);
  swift_getKeyPath(asc_238780E68, v6);
  sub_2386E3CF8(a1, v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for OrderSearchResults);
  v7 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v8 = swift_allocObject();
  sub_2386E46A4(v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v8 + v7, type metadata accessor for OrderSearchResults);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0AE10, &unk_238780E90);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF147B0, &qword_238780E40);
  sub_23843A3E8(&qword_27DF147C8, &qword_27DF0AE10, &unk_238780E90, MEMORY[0x277D83980]);
  sub_2384A537C(&qword_27DF0B110, &qword_27DF0B108, 0x277CBE448);
  sub_23843A3E8(&qword_27DF147A8, &qword_27DF147B0, &qword_238780E40, &unk_238769740);
  return sub_23875E370();
}

void sub_2386E1964(void **a1@<X0>, uint64_t a2@<X1>, char **a3@<X8>)
{
  v7 = type metadata accessor for OrderSearchResults(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = *a1;
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_2386E3CF8(a2, &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for OrderSearchResults);
  v11 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v12 = swift_allocObject();
  sub_2386E46A4(&v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), &v12[v11], type metadata accessor for OrderSearchResults);
  *&v12[(v9 + v11 + 7) & 0xFFFFFFFFFFFFFFF8] = v10;
  v13 = v10;
  v14 = [v13 managedObjectContext];
  if (v14)
  {
    v15 = v14;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11A70, &qword_238779538);
    swift_allocObject();
    v16 = v13;
    v17 = sub_23862A0B8(v13, v15, sub_2386E1B90, 0);

    *a3 = v17;
    a3[1] = 0;
    a3[2] = sub_2386E44AC;
    a3[3] = v12;
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_2386E1B90@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = a1;

  return sub_2386DE6CC(v3, a2);
}

uint64_t sub_2386E1BC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, void *a3@<X8>)
{
  v24[1] = a2;
  v25 = a3;
  v26 = sub_238759BE0();
  v24[0] = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v5 = v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_23875C880();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = v24 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0CED0, &unk_238780EA0);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = v24 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0CEB8, &unk_23876C6D0);
  v17 = v16 - 8;
  MEMORY[0x28223BE20](v16);
  v19 = v24 - v18;
  sub_2386E1EDC(a1, v15);
  type metadata accessor for OrderSearchResults(0);
  sub_2384D5138(v12);
  (*(v7 + 104))(v9, *MEMORY[0x277CDF9D8], v6);
  LOBYTE(a1) = sub_23875C870();
  v20 = *(v7 + 8);
  v20(v9, v6);
  v20(v12, v6);
  if (a1)
  {
    v21 = 0x4028000000000000;
  }

  else
  {
    v21 = 0x4030000000000000;
  }

  sub_2384396E4(v15, v19, &qword_27DF0CED0, &unk_238780EA0);
  v22 = &v19[*(v17 + 44)];
  *v22 = 0x4028000000000000;
  *(v22 + 1) = v21;
  *(v22 + 2) = 0x4028000000000000;
  *(v22 + 3) = v21;
  v22[32] = 0;
  sub_238759BF0();
  sub_2386E1020(v5, v25);
  (*(v24[0] + 8))(v5, v26);
  return sub_238439884(v19, &qword_27DF0CEB8, &unk_23876C6D0);
}

double sub_2386E1EDC@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v33[0] = a1;
  v38 = a2;
  v37 = type metadata accessor for ExtractedOrderArchiveMonthRow(0);
  MEMORY[0x28223BE20](v37);
  v3 = v33 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for ExtractedOrderArchiveMonthRow.ViewModel(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF14830, &qword_238780F18);
  MEMORY[0x28223BE20](v34);
  v8 = v33 - v7;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0CEF0, &qword_238776C10);
  MEMORY[0x28223BE20](v36);
  v10 = v33 - v9;
  v11 = type metadata accessor for OrderSearchResults.PastOrderSearchRowViewModel(0);
  MEMORY[0x28223BE20](v11);
  v13 = v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for OrderSearchResults.PastContentItem(0);
  MEMORY[0x28223BE20](v14);
  v16 = v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0CEE0, &unk_23876C6E0);
  MEMORY[0x28223BE20](v17 - 8);
  v35 = v33 - v18;
  sub_23875ED50();
  v33[1] = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_2386E3CF8(v33[0], v16, type metadata accessor for OrderSearchResults.PastContentItem);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_2386E46A4(v16, v6, type metadata accessor for ExtractedOrderArchiveMonthRow.ViewModel);
    sub_2386E3CF8(v6, v3, type metadata accessor for ExtractedOrderArchiveMonthRow.ViewModel);
    v19 = v37;
    v20 = &v3[*(v37 + 20)];
    v39 = 0;
    sub_23875E1A0();
    v21 = v41;
    *v20 = v40;
    *(v20 + 1) = v21;
    v22 = *(v19 + 24);
    *&v3[v22] = swift_getKeyPath(byte_238780C00);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D340, &qword_238764740);
    swift_storeEnumTagMultiPayload();
    sub_2386E3CF8(v3, v8, type metadata accessor for ExtractedOrderArchiveMonthRow);
    swift_storeEnumTagMultiPayload();
    sub_23850004C();
    sub_2386E2E80(&qword_27DF0CE80, type metadata accessor for ExtractedOrderArchiveMonthRow, &unk_23877E75C);
    v23 = v35;
    sub_23875D1B0();
    sub_2386E3D60(v3, type metadata accessor for ExtractedOrderArchiveMonthRow);
    v24 = type metadata accessor for ExtractedOrderArchiveMonthRow.ViewModel;
    v25 = v6;
  }

  else
  {
    sub_2386E46A4(v16, v13, type metadata accessor for OrderSearchResults.PastOrderSearchRowViewModel);
    sub_2386E3CF8(v13, v10, type metadata accessor for OrderListRow.ViewModel);
    v26 = *(type metadata accessor for OrderListRow(0) + 20);
    *&v10[v26] = swift_getKeyPath(byte_238780C00);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D340, &qword_238764740);
    swift_storeEnumTagMultiPayload();
    v27 = &v10[*(v36 + 36)];
    sub_2386E3CF8(&v13[*(v11 + 20)], v27, type metadata accessor for OrderListRowActionsModifier.ViewModel);
    v28 = type metadata accessor for OrderListRowActionsModifier(0);
    v29 = v27 + *(v28 + 20);
    v39 = 0;
    sub_23875E1A0();
    v30 = v41;
    *v29 = v40;
    *(v29 + 8) = v30;
    v31 = *(v28 + 24);
    *(v27 + v31) = swift_getKeyPath(byte_238780F20);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09DD8, &qword_2387694D0);
    swift_storeEnumTagMultiPayload();
    sub_23843981C(v10, v8, &qword_27DF0CEF0, &qword_238776C10);
    swift_storeEnumTagMultiPayload();
    sub_23850004C();
    sub_2386E2E80(&qword_27DF0CE80, type metadata accessor for ExtractedOrderArchiveMonthRow, &unk_23877E75C);
    v23 = v35;
    sub_23875D1B0();
    sub_238439884(v10, &qword_27DF0CEF0, &qword_238776C10);
    v24 = type metadata accessor for OrderSearchResults.PastOrderSearchRowViewModel;
    v25 = v13;
  }

  sub_2386E3D60(v25, v24);
  sub_2384396E4(v23, v38, &qword_27DF0CEE0, &unk_23876C6E0);

  return result;
}

uint64_t sub_2386E2548@<X0>(uint64_t a1@<X8>)
{
  v11[1] = a1;
  v2 = sub_23875D310();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF14730, &qword_238780D78);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v11 - v8;
  v12 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF14738, &qword_238780D80);
  sub_23843A3E8(&qword_27DF14740, &qword_27DF14738, &qword_238780D80, MEMORY[0x277CE14C0]);
  sub_23875D9C0();
  sub_23875D300();
  sub_23843A3E8(&qword_27DF14748, &qword_27DF14730, &qword_238780D78, MEMORY[0x277CDE5A0]);
  sub_23875DF50();
  (*(v3 + 8))(v5, v2);
  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_2386E2788(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_23875B530();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v12[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v7 + 16))(v10, a1, v6, v8);
  sub_23875ED50();
  v13 = a2;
  v14 = a3;
  v15 = v10;
  sub_2386DC338(sub_2386E3E10, v12, "FinanceKitUI/OrderSearchResults.swift", 37, 2u, 504);
  return (*(v7 + 8))(v10, v6);
}

double sub_2386E28C4(void (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  a1(a3);

  return result;
}

uint64_t sub_2386E2980()
{
  v1 = *v0;
  __swift_project_boxed_opaque_existential_1((v0 + 8), *(v0 + 32));
  v2 = v1;
  [v2 removeObserver_];

  swift_unknownObjectRelease();
  return __swift_destroy_boxed_opaque_existential_1((v0 + 8));
}

uint64_t sub_2386E2A00(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  *a1 = *a2;

  __swift_destroy_boxed_opaque_existential_1((a1 + 8));
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  return a1;
}

void sub_2386E2AA8(uint64_t a1)
{
  sub_2386E2B84(319);
  if (v1 <= 0x3F)
  {
    sub_2386E429C(319, &qword_2814F09B0, MEMORY[0x277CDF3E0]);
    if (v2 <= 0x3F)
    {
      sub_2386E2C18(319, &qword_2814F09A0, MEMORY[0x277D839B0], MEMORY[0x277CDF468]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_2386E2B84(uint64_t a1)
{
  if (!qword_27DF14690)
  {
    type metadata accessor for OrderSearchModel(255);
    sub_2386E2E80(&qword_27DF10658, type metadata accessor for OrderSearchModel, &unk_238780B3C);
    v1 = sub_23875C7D0();
    if (!v2)
    {
      atomic_store(v1, &qword_27DF14690);
    }
  }
}

void sub_2386E2C18(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_2386E2C84()
{
  result = qword_27DF146A0;
  if (!qword_27DF146A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF14698, &qword_238780B78);
    sub_2386E2D08();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF146A0);
  }

  return result;
}

unint64_t sub_2386E2D08()
{
  result = qword_27DF146A8;
  if (!qword_27DF146A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF146B0, &qword_238780B80);
    sub_2386E2DC4();
    sub_2386E2E80(&qword_27DF146F0, type metadata accessor for OrderListContent, &unk_238776A20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF146A8);
  }

  return result;
}

unint64_t sub_2386E2DC4()
{
  result = qword_27DF146B8;
  if (!qword_27DF146B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF146C0, &qword_238780B88);
    sub_2386E2E80(&qword_27DF146C8, type metadata accessor for OrderSearchResults, &unk_238780D28);
    sub_2386E2EE8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF146B8);
  }

  return result;
}

uint64_t sub_2386E2E80(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_2386E2EE8()
{
  result = qword_27DF146D0;
  if (!qword_27DF146D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF146D8, &qword_238780B90);
    sub_23843A3E8(&qword_27DF146E0, &qword_27DF146E8, &unk_238780B98, MEMORY[0x277CDE158]);
    sub_23843A3E8(&qword_27DF09AC0, &qword_27DF09AC8, &unk_23876A000, MEMORY[0x277CE0728]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF146D0);
  }

  return result;
}

double sub_2386E2FCC@<D0>(uint64_t a2@<X8>)
{
  swift_getKeyPath(asc_238780BB8);
  swift_getKeyPath(byte_238780BE0);
  sub_23875C2D0();

  result = *&v4;
  *a2 = v4;
  *(a2 + 16) = v5;
  return result;
}

uint64_t sub_2386E3054(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 16);
  swift_getKeyPath(asc_238780BB8);
  swift_getKeyPath(byte_238780BE0);
  sub_2386E3DC0(v2, v3, v4);

  return sub_23875C2E0();
}

void sub_2386E30E8(void *a2@<X8>)
{
  swift_getKeyPath(aH_20);
  swift_getKeyPath(aH_21);
  sub_23875C2D0();

  *a2 = v3;
}

uint64_t sub_2386E3168(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath(aH_20);
  swift_getKeyPath(aH_21);

  return sub_23875C2E0();
}

double sub_2386E31DC@<D0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  *a2 = *a1;
  a2[1] = v3;
  a2[2] = v4;
  v5 = v2;

  return result;
}

BOOL sub_2386E3220(uint64_t *a1, void *a2)
{
  v4 = a1[1];
  v5 = a2[1];
  if (v4)
  {
    if (!v5)
    {
      return 0;
    }

    v6 = *a1 == *a2 && v4 == v5;
    if (!v6 && (sub_23875F630() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v5)
  {
    return 0;
  }

  v7 = type metadata accessor for MerchantImage.ViewModel(0);
  if ((MEMORY[0x23EE5FA60](a1 + *(v7 + 20), a2 + *(v7 + 20)) & 1) == 0)
  {
    return 0;
  }

  v8 = *(v7 + 24);
  v9 = *(a1 + v8);
  v10 = *(a1 + v8 + 8);
  v11 = (a2 + v8);
  v12 = v9 == *v11 && v10 == v11[1];
  if (!v12 && (sub_23875F630() & 1) == 0)
  {
    return 0;
  }

  v13 = type metadata accessor for OrderListRow.ViewModel(0);
  if ((MEMORY[0x23EE5DB60](a1 + *(v13 + 20), a2 + *(v13 + 20)) & 1) == 0)
  {
    return 0;
  }

  if ((MEMORY[0x23EE5FB50](a1 + *(v13 + 24), a2 + *(v13 + 24)) & 1) == 0)
  {
    return 0;
  }

  v14 = *(type metadata accessor for OrderSearchResults.PastOrderSearchRowViewModel(0) + 20);
  v15 = a1 + v14;
  v16 = a2 + v14;
  if ((MEMORY[0x23EE5F1E0](v15, v16) & 1) == 0)
  {
    return 0;
  }

  v17 = type metadata accessor for OrderListRowActionsModifier.ViewModel(0);
  return v15[*(v17 + 20)] == v16[*(v17 + 20)] && v15[*(v17 + 24)] == v16[*(v17 + 24)];
}

BOOL sub_2386E3364(uint64_t *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  result = 0;
  if (v4 || (sub_23875F630() & 1) != 0)
  {
    active = type metadata accessor for OrderSearchActiveRow.ViewModel(0);
    v6 = active[5];
    v7 = a1 + v6;
    v8 = a2 + v6;
    if (MEMORY[0x23EE5FA60](a1 + v6, a2 + v6))
    {
      v9 = type metadata accessor for ProductImage.ViewModel(0);
      if (sub_238518C1C(*&v7[*(v9 + 20)], *&v8[*(v9 + 20)]) & 1) != 0 && (MEMORY[0x23EE5DB60](a1 + active[6], a2 + active[6]) & 1) != 0 && (MEMORY[0x23EE5FB50](a1 + active[7], a2 + active[7]))
      {
        v10 = *(type metadata accessor for OrderSearchResults.ActiveSearchRowViewModel(0) + 20);
        v11 = a1 + v10;
        v12 = a2 + v10;
        if (MEMORY[0x23EE5F1E0](v11, v12))
        {
          v13 = type metadata accessor for OrderListRowActionsModifier.ViewModel(0);
          if (v11[*(v13 + 20)] == v12[*(v13 + 20)] && v11[*(v13 + 24)] == v12[*(v13 + 24)])
          {
            return 1;
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_2386E3488(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ExtractedOrderArchiveMonthRow.ViewModel(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = (&v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = type metadata accessor for OrderSearchResults.PastOrderSearchRowViewModel(0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = (&v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = type metadata accessor for OrderSearchResults.PastContentItem(0);
  MEMORY[0x28223BE20](v10);
  v12 = (&v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v13);
  v15 = (&v27 - v14);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF148E0, &qword_2387810B8);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v27 - v17;
  v20 = *(v19 + 56);
  sub_2386E3CF8(a1, &v27 - v17, type metadata accessor for OrderSearchResults.PastContentItem);
  sub_2386E3CF8(a2, &v18[v20], type metadata accessor for OrderSearchResults.PastContentItem);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_2386E3CF8(v18, v12, type metadata accessor for OrderSearchResults.PastContentItem);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_2386E46A4(&v18[v20], v6, type metadata accessor for ExtractedOrderArchiveMonthRow.ViewModel);
      v21 = sub_2386A5A4C(v12, v6);
      sub_2386E3D60(v6, type metadata accessor for ExtractedOrderArchiveMonthRow.ViewModel);
      v22 = v12;
      v23 = type metadata accessor for ExtractedOrderArchiveMonthRow.ViewModel;
LABEL_9:
      sub_2386E3D60(v22, v23);
      sub_2386E3D60(v18, type metadata accessor for OrderSearchResults.PastContentItem);
      return v21 & 1;
    }

    v24 = type metadata accessor for ExtractedOrderArchiveMonthRow.ViewModel;
    v25 = v12;
  }

  else
  {
    sub_2386E3CF8(v18, v15, type metadata accessor for OrderSearchResults.PastContentItem);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      sub_2386E46A4(&v18[v20], v9, type metadata accessor for OrderSearchResults.PastOrderSearchRowViewModel);
      v21 = sub_2386E3220(v15, v9);
      sub_2386E3D60(v9, type metadata accessor for OrderSearchResults.PastOrderSearchRowViewModel);
      v22 = v15;
      v23 = type metadata accessor for OrderSearchResults.PastOrderSearchRowViewModel;
      goto LABEL_9;
    }

    v24 = type metadata accessor for OrderSearchResults.PastOrderSearchRowViewModel;
    v25 = v15;
  }

  sub_2386E3D60(v25, v24);
  sub_238439884(v18, &qword_27DF148E0, &qword_2387810B8);
  v21 = 0;
  return v21 & 1;
}

uint64_t sub_2386E37F4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ExtractedOrderArchiveMonthRow.ViewModel(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = (&v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  active = type metadata accessor for OrderSearchResults.ActiveSearchRowViewModel(0);
  MEMORY[0x28223BE20](active);
  v8 = (&v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = type metadata accessor for OrderSearchResults.ActiveContentItem(0);
  MEMORY[0x28223BE20](v9);
  v11 = (&v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v12);
  v14 = (&v34 - v13);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF148E8, &unk_2387810C0);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v34 - v16;
  v19 = *(v18 + 56);
  sub_2386E3CF8(a1, &v34 - v16, type metadata accessor for OrderSearchResults.ActiveContentItem);
  sub_2386E3CF8(a2, &v17[v19], type metadata accessor for OrderSearchResults.ActiveContentItem);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_2386E3CF8(v17, v14, type metadata accessor for OrderSearchResults.ActiveContentItem);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      sub_2386E46A4(&v17[v19], v8, type metadata accessor for OrderSearchResults.ActiveSearchRowViewModel);
      v23 = *v14 == *v8 && v14[1] == v8[1];
      if (v23 || (sub_23875F630() & 1) != 0)
      {
        v24 = type metadata accessor for OrderSearchActiveRow.ViewModel(0);
        v25 = v24[5];
        v26 = v14 + v25;
        v27 = v8 + v25;
        if (MEMORY[0x23EE5FA60](v14 + v25, v8 + v25))
        {
          v28 = type metadata accessor for ProductImage.ViewModel(0);
          if (sub_238518C1C(*&v26[*(v28 + 20)], *&v27[*(v28 + 20)]) & 1) != 0 && (MEMORY[0x23EE5DB60](v14 + v24[6], v8 + v24[6]) & 1) != 0 && (MEMORY[0x23EE5FB50](v14 + v24[7], v8 + v24[7]))
          {
            v29 = *(active + 20);
            v30 = v14 + v29;
            v31 = v8 + v29;
            if (MEMORY[0x23EE5F1E0](v14 + v29, v8 + v29))
            {
              v32 = type metadata accessor for OrderListRowActionsModifier.ViewModel(0);
              if (v30[*(v32 + 20)] == v31[*(v32 + 20)] && v30[*(v32 + 24)] == v31[*(v32 + 24)])
              {
                sub_2386E3D60(v8, type metadata accessor for OrderSearchResults.ActiveSearchRowViewModel);
                sub_2386E3D60(v14, type metadata accessor for OrderSearchResults.ActiveSearchRowViewModel);
                sub_2386E3D60(v17, type metadata accessor for OrderSearchResults.ActiveContentItem);
                v20 = 1;
                return v20 & 1;
              }
            }
          }
        }
      }

      sub_2386E3D60(v8, type metadata accessor for OrderSearchResults.ActiveSearchRowViewModel);
      sub_2386E3D60(v14, type metadata accessor for OrderSearchResults.ActiveSearchRowViewModel);
      sub_2386E3D60(v17, type metadata accessor for OrderSearchResults.ActiveContentItem);
      goto LABEL_21;
    }

    v21 = type metadata accessor for OrderSearchResults.ActiveSearchRowViewModel;
    v22 = v14;
LABEL_7:
    sub_2386E3D60(v22, v21);
    sub_238439884(v17, &qword_27DF148E8, &unk_2387810C0);
LABEL_21:
    v20 = 0;
    return v20 & 1;
  }

  sub_2386E3CF8(v17, v11, type metadata accessor for OrderSearchResults.ActiveContentItem);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v21 = type metadata accessor for ExtractedOrderArchiveMonthRow.ViewModel;
    v22 = v11;
    goto LABEL_7;
  }

  sub_2386E46A4(&v17[v19], v6, type metadata accessor for ExtractedOrderArchiveMonthRow.ViewModel);
  v20 = sub_2386A5A4C(v11, v6);
  sub_2386E3D60(v6, type metadata accessor for ExtractedOrderArchiveMonthRow.ViewModel);
  sub_2386E3D60(v11, type metadata accessor for ExtractedOrderArchiveMonthRow.ViewModel);
  sub_2386E3D60(v17, type metadata accessor for OrderSearchResults.ActiveContentItem);
  return v20 & 1;
}

double sub_2386E3CA8(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
    if (a3 != 1)
    {
      return result;
    }
  }

  return result;
}

uint64_t sub_2386E3CF8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2386E3D60(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

double sub_2386E3DC0(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
    if (a3 != 1)
    {
      return result;
    }
  }

  return result;
}

double block_copy_helper_19(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

double sub_2386E3E78(uint64_t a1)
{
  if (a1 != 1)
  {
  }

  return result;
}

uint64_t objectdestroy_41Tm()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

double sub_2386E3F30@<D0>(_OWORD *a1@<X8>)
{
  (*(v1 + 16))(&v5);
  if (!v2)
  {
    result = *&v5;
    *a1 = v5;
  }

  return result;
}

void *sub_2386E3F74(unint64_t a1)
{
  v23 = MEMORY[0x277D84F98];
  if (!(a1 >> 62))
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v2)
    {
      goto LABEL_3;
    }

    return MEMORY[0x277D84F98];
  }

LABEL_23:
  v2 = sub_23875F3A0();
  if (!v2)
  {
    return MEMORY[0x277D84F98];
  }

LABEL_3:
  v3 = 0;
  v4 = MEMORY[0x277D84F98];
  while (1)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v6 = MEMORY[0x23EE63F70](v3, a1);
    }

    else
    {
      if (v3 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_20;
      }

      v6 = *(a1 + 8 * v3 + 32);
    }

    v7 = v6;
    v8 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
      goto LABEL_23;
    }

    v9 = [v6 storedShowsAsActive];
    v10 = sub_238547C24(v9);
    v12 = v4[2];
    v13 = (v11 & 1) == 0;
    v14 = __OFADD__(v12, v13);
    v15 = v12 + v13;
    if (v14)
    {
      goto LABEL_21;
    }

    v16 = v11;
    if (v4[3] < v15)
    {
      sub_238549AD8(v15, 1);
      v4 = v23;
      v10 = sub_238547C24(v9);
      if ((v16 & 1) != (v17 & 1))
      {
        break;
      }
    }

    if (v16)
    {
      v5 = (v4[7] + 8 * v10);
      MEMORY[0x23EE63730]();
      if (*((*v5 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v5 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_23875EC90();
      }

      sub_23875ECB0();
    }

    else
    {
      v18 = v10;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF09DE0, &unk_2387638D0);
      v19 = swift_allocObject();
      *(v19 + 16) = xmmword_238763E70;
      *(v19 + 32) = v7;
      v4[(v18 >> 6) + 8] |= 1 << v18;
      *(v4[6] + v18) = v9;
      *(v4[7] + 8 * v18) = v19;
      v20 = v4[2];
      v14 = __OFADD__(v20, 1);
      v21 = v20 + 1;
      if (v14)
      {
        goto LABEL_22;
      }

      v4[2] = v21;
    }

    ++v3;
    if (v8 == v2)
    {
      return v4;
    }
  }

  result = sub_23875F680();
  __break(1u);
  return result;
}

double sub_2386E41CC(uint64_t a1)
{
  if (a1 != 1)
  {
  }

  return result;
}

void sub_2386E4204(uint64_t a1)
{
  sub_2386E429C(319, &qword_2814F09A8, MEMORY[0x277CDFA28]);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_2386E429C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_23875C470();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_2386E432C()
{
  result = qword_27DF14778;
  if (!qword_27DF14778)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF14770, &qword_238780DE8);
    sub_23843A3E8(&qword_27DF14780, &qword_27DF14788, &qword_238780DF0, &unk_238769740);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF14778);
  }

  return result;
}

unint64_t sub_2386E43E4()
{
  result = qword_27DF147A0;
  if (!qword_27DF147A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF14798, &qword_238780E38);
    sub_23843A3E8(&qword_27DF147A8, &qword_27DF147B0, &qword_238780E40, &unk_238769740);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF147A0);
  }

  return result;
}

unint64_t sub_2386E44C4()
{
  result = qword_27DF147F8;
  if (!qword_27DF147F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF147F0, &qword_238780ED0);
    sub_23843A3E8(&qword_27DF14800, &qword_27DF14808, &qword_238780ED8, MEMORY[0x277CE11A8]);
    sub_2386E2E80(&qword_27DF0A060, type metadata accessor for ManagedOrderResourceLoaderModifier, &unk_238770D90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF147F8);
  }

  return result;
}

unint64_t sub_2386E45AC()
{
  result = qword_27DF14818;
  if (!qword_27DF14818)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF147E8, &qword_238780EC8);
    sub_2386E44C4();
    sub_23843A3E8(&qword_27DF14810, &qword_27DF147D0, &qword_238780EB0, MEMORY[0x277CDD938]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF14818);
  }

  return result;
}

uint64_t sub_2386E46A4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t objectdestroy_86Tm()
{
  v1 = (type metadata accessor for OrderSearchResults(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);

  v5 = v1[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D340, &qword_238764740);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_23875C880();
    (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);
  }

  else
  {
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_2386E4848(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v4 = *(type metadata accessor for OrderSearchResults(0) - 8);
  v5 = v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return a2(a1, v5);
}

uint64_t objectdestroy_89Tm()
{
  v1 = (type metadata accessor for OrderSearchResults(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);

  v5 = v1[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D340, &qword_238764740);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_23875C880();
    (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);
  }

  else
  {
  }

  v7 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;

  return MEMORY[0x2821FE8E8](v0, v7 + 8, v2 | 7);
}

uint64_t sub_2386E4A2C(uint64_t a1, uint64_t (*a2)(uint64_t, unint64_t, uint64_t))
{
  v4 = *(type metadata accessor for OrderSearchResults(0) - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = *(v2 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));

  return a2(a1, v2 + v5, v6);
}

unint64_t sub_2386E4AEC()
{
  result = qword_27DF14860;
  if (!qword_27DF14860)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF14858, &qword_238780F80);
    sub_23843A3E8(&qword_27DF14868, &qword_27DF14870, &qword_238780F88, MEMORY[0x277CE11A8]);
    sub_2386E2E80(&qword_27DF0A060, type metadata accessor for ManagedOrderResourceLoaderModifier, &unk_238770D90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF14860);
  }

  return result;
}

unint64_t sub_2386E4BD4()
{
  result = qword_27DF14880;
  if (!qword_27DF14880)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF14850, &qword_238780F78);
    sub_2386E4AEC();
    sub_23843A3E8(&qword_27DF14878, &qword_27DF14838, &qword_238780F60, MEMORY[0x277CDD938]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF14880);
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_index_111Tm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v7 = a4(0);
  v8 = *(v7 - 8);
  if (*(v8 + 84) == a2)
  {
    v9 = *(v8 + 48);

    return v9(a1, a2, v7);
  }

  else
  {
    v11 = type metadata accessor for OrderListRowActionsModifier.ViewModel(0);
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 20);

    return v12(v13, a2, v11);
  }
}

uint64_t __swift_store_extra_inhabitant_index_112Tm(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t (*a5)(void))
{
  v9 = a5(0);
  v10 = *(v9 - 8);
  if (*(v10 + 84) == a3)
  {
    v11 = *(v10 + 56);

    return v11(a1, a2, a2, v9);
  }

  else
  {
    v13 = type metadata accessor for OrderListRowActionsModifier.ViewModel(0);
    v14 = *(*(v13 - 8) + 56);
    v15 = a1 + *(a4 + 20);

    return v14(v15, a2, a2, v13);
  }
}

uint64_t sub_2386E4F40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  result = a4(319, a2, a3);
  if (v5 <= 0x3F)
  {
    result = type metadata accessor for OrderListRowActionsModifier.ViewModel(319);
    if (v6 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_2386E4FF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  result = a4(319, a2, a3);
  if (v5 <= 0x3F)
  {
    result = type metadata accessor for ExtractedOrderArchiveMonthRow.ViewModel(319);
    if (v6 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

id BankConnectImageProvider.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t BankConnectImageProvider.logo(for:size:scale:)(uint64_t a1, uint64_t a2, double a3, double a4, double a5)
{
  *(v6 + 248) = v5;
  *(v6 + 232) = a4;
  *(v6 + 240) = a5;
  *(v6 + 224) = a3;
  *(v6 + 208) = a1;
  *(v6 + 216) = a2;
  v7 = sub_23875C1E0();
  *(v6 + 256) = v7;
  *(v6 + 264) = *(v7 - 8);
  *(v6 + 272) = swift_task_alloc();
  *(v6 + 280) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2386E518C, 0, 0);
}

uint64_t sub_2386E518C()
{
  v1 = swift_task_alloc();
  v0[36] = v1;
  *v1 = v0;
  v1[1] = sub_2386E5234;
  v3 = v0[26];
  v2 = v0[27];

  return MEMORY[0x282117E00](v3, v2);
}

uint64_t sub_2386E5234(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v4[37] = a1;
  v4[38] = a2;
  v4[39] = v2;

  if (v2)
  {
    v5 = sub_2386E5A6C;
  }

  else
  {
    v5 = sub_2386E534C;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_2386E534C()
{
  v40 = v0;
  if (*(v0 + 304) >> 60 == 15)
  {
    goto LABEL_9;
  }

  v1 = sub_23875B980();
  v2 = CGImageSourceCreateWithData(v1, 0);
  *(v0 + 320) = v2;

  if (!v2)
  {
    sub_23844C940(*(v0 + 296), *(v0 + 304));
LABEL_9:
    sub_23875ED50();
    *(v0 + 376) = sub_23875ED40();
    v23 = sub_23875ECE0();
    v25 = v24;
    v26 = sub_2386E59CC;
    goto LABEL_10;
  }

  v3 = *(v0 + 240) * *(v0 + 224);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF148F8, &unk_2387810E0);
  inited = swift_initStackObject();
  v5 = *MEMORY[0x277CD3618];
  *(inited + 32) = *MEMORY[0x277CD3618];
  v6 = MEMORY[0x277D839B0];
  *(inited + 16) = xmmword_238763310;
  *(inited + 40) = 0;
  v7 = *MEMORY[0x277CD3568];
  *(inited + 64) = v6;
  *(inited + 72) = v7;
  *(inited + 80) = 1;
  v8 = *MEMORY[0x277CD3578];
  *(inited + 104) = v6;
  *(inited + 112) = v8;
  *(inited + 120) = 1;
  v9 = *MEMORY[0x277CD3660];
  *(inited + 144) = v6;
  *(inited + 152) = v9;
  *(inited + 184) = MEMORY[0x277D85048];
  *(inited + 160) = v3;
  v10 = v5;
  v11 = v7;
  v12 = v8;
  v13 = v9;
  sub_23854B8F0(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0DE68, &qword_23876E858);
  swift_arrayDestroy();
  type metadata accessor for CFString(0);
  sub_2386E6B34();
  v14 = sub_23875E910();
  *(v0 + 328) = v14;

  ThumbnailAtIndex = CGImageSourceCreateThumbnailAtIndex(v2, 0, v14);
  *(v0 + 336) = ThumbnailAtIndex;
  if (ThumbnailAtIndex)
  {
    v16 = ThumbnailAtIndex;
    v17 = sub_2386E68C4(ThumbnailAtIndex);
    if (v17)
    {
      v18 = v17;
      v20 = *(v0 + 296);
      v19 = *(v0 + 304);

      sub_23844C940(v20, v19);

      v21 = *(v0 + 8);

      return v21(v18);
    }

    sub_23875C120();

    v28 = sub_23875C1B0();
    v29 = sub_23875EFE0();

    v30 = os_log_type_enabled(v28, v29);
    v31 = *(v0 + 280);
    v32 = *(v0 + 256);
    v33 = *(v0 + 264);
    if (v30)
    {
      v35 = *(v0 + 208);
      v34 = *(v0 + 216);
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v39 = v37;
      *v36 = 136315138;
      *(v36 + 4) = sub_2384615AC(v35, v34, &v39);
      _os_log_impl(&dword_2383F8000, v28, v29, "Error instantiating image for: %s.", v36, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v37);
      MEMORY[0x23EE64DF0](v37, -1, -1);
      MEMORY[0x23EE64DF0](v36, -1, -1);
    }

    (*(v33 + 8))(v31, v32);
    sub_23875ED50();
    *(v0 + 344) = sub_23875ED40();
    v23 = sub_23875ECE0();
    v25 = v38;
    v26 = sub_2386E5784;
  }

  else
  {
    sub_23875ED50();
    *(v0 + 360) = sub_23875ED40();
    v23 = sub_23875ECE0();
    v25 = v27;
    v26 = sub_2386E58AC;
  }

LABEL_10:

  return MEMORY[0x2822009F8](v26, v23, v25);
}

uint64_t sub_2386E5784()
{
  v2 = v0[29];
  v1 = v0[30];
  v3 = v0[28];

  *(v0 + 44) = sub_2386E69F4(v3, v2, v1);

  return MEMORY[0x2822009F8](sub_2386E5810, 0, 0);
}

uint64_t sub_2386E5810()
{
  v1 = *(v0 + 328);
  v2 = *(v0 + 320);
  v3 = *(v0 + 296);
  v4 = *(v0 + 304);

  sub_23844C940(v3, v4);
  v5 = *(v0 + 352);

  v6 = *(v0 + 8);

  return v6(v5);
}

uint64_t sub_2386E58AC()
{
  v2 = v0[29];
  v1 = v0[30];
  v3 = v0[28];

  *(v0 + 46) = sub_2386E69F4(v3, v2, v1);

  return MEMORY[0x2822009F8](sub_2386E5938, 0, 0);
}

uint64_t sub_2386E5938()
{
  v1 = *(v0 + 320);
  v2 = *(v0 + 296);
  v3 = *(v0 + 304);

  sub_23844C940(v2, v3);
  v4 = *(v0 + 368);

  v5 = *(v0 + 8);

  return v5(v4);
}

uint64_t sub_2386E59CC()
{
  v2 = v0[29];
  v1 = v0[30];
  v3 = v0[28];

  v4 = sub_2386E69F4(v3, v2, v1);

  v5 = *(v0 + 1);

  return v5(v4);
}

uint64_t sub_2386E5A6C(uint64_t a1)
{
  v24 = v1;
  v2 = v1[39];
  sub_23875C120();

  v3 = v2;
  v4 = sub_23875C1B0();
  v5 = sub_23875EFE0();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v1[39];
    v7 = v1[33];
    v21 = v1[32];
    v22 = v1[34];
    v8 = v1[26];
    v9 = v1[27];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v23 = v12;
    *v10 = 136315394;
    *(v10 + 4) = sub_2384615AC(v8, v9, &v23);
    *(v10 + 12) = 2112;
    v13 = v6;
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 14) = v14;
    *v11 = v14;
    _os_log_impl(&dword_2383F8000, v4, v5, "Unable to obtain asset from financed for institution id: %s. Returning fallback image. Error: %@", v10, 0x16u);
    sub_238439884(v11, &qword_27DF09930, &unk_2387638C0);
    MEMORY[0x23EE64DF0](v11, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v12);
    MEMORY[0x23EE64DF0](v12, -1, -1);
    MEMORY[0x23EE64DF0](v10, -1, -1);

    (*(v7 + 8))(v22, v21);
  }

  else
  {
    v16 = v1[33];
    v15 = v1[34];
    v17 = v1[32];

    (*(v16 + 8))(v15, v17);
  }

  sub_23875ED50();
  v1[48] = sub_23875ED40();
  v19 = sub_23875ECE0();

  return MEMORY[0x2822009F8](sub_2386E5CB0, v19, v18);
}

uint64_t sub_2386E5CB0()
{
  v2 = v0[29];
  v1 = v0[30];
  v3 = v0[28];

  *(v0 + 49) = sub_2386E69F4(v3, v2, v1);

  return MEMORY[0x2822009F8](sub_2386E5D3C, 0, 0);
}

uint64_t sub_2386E5D3C()
{
  v1 = *(v0 + 392);

  v2 = *(v0 + 8);

  return v2(v1);
}

id BankConnectImageProvider.init()()
{
  ObjectType = swift_getObjectType();
  sub_238758CC0();
  *&v0[OBJC_IVAR____TtC12FinanceKitUI24BankConnectImageProvider_bankConnectService] = sub_238758CB0();
  v3.receiver = v0;
  v3.super_class = ObjectType;
  return objc_msgSendSuper2(&v3, sel_init);
}

uint64_t sub_2386E6034(uint64_t a1, void *aBlock, void *a3, double a4, double a5, double a6)
{
  v6[2] = a3;
  v6[3] = _Block_copy(aBlock);
  v11 = sub_23875EA80();
  v13 = v12;
  v6[4] = v12;
  a3;
  v14 = swift_task_alloc();
  v6[5] = v14;
  *v14 = v6;
  v14[1] = sub_2386E6130;

  return BankConnectImageProvider.logo(for:size:scale:)(v11, v13, a4, a5, a6);
}

uint64_t sub_2386E6130(void *a1)
{
  v3 = *(*v1 + 24);
  v4 = *(*v1 + 16);
  v7 = *v1;

  (v3)[2](v3, a1);
  _Block_release(v3);

  v5 = *(v7 + 8);

  return v5();
}

id sub_2386E6298(double a1, double a2, double a3)
{
  v4 = [objc_allocWithZone(MEMORY[0x277D1B1C8]) initWithSize:a1 scale:{a2, a3}];
  [v4 setShape_];
  [v4 setDrawBorder_];
  [v4 setBackground_];
  v5 = [v3 prepareImageForDescriptor_];
  if (!v5)
  {

    return 0;
  }

  v6 = v5;
  result = [v5 CGImage];
  if (result)
  {
    v8 = result;
    v9 = [objc_allocWithZone(MEMORY[0x277D755B8]) initWithCGImage:result scale:0 orientation:1.0];

    return v9;
  }

  __break(1u);
  return result;
}

id BankConnectImageProvider.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_2386E6408(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = (a3 + *a3);
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v4[1] = sub_238449A7C;

  return v6();
}

uint64_t sub_2386E64F0(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v7 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v5[1] = sub_2384494A4;

  return v7();
}

uint64_t sub_2386E65D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF09920, &qword_238764D80);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v23 - v10;
  sub_2386E6CA0(a3, v23 - v10);
  v12 = sub_23875ED80();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_238439884(v11, &unk_27DF09920, &qword_238764D80);
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

  sub_23875ED70();
  (*(v13 + 8))(v11, v12);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  swift_getObjectType();
  swift_unknownObjectRetain();
  v14 = sub_23875ECE0();
  v16 = v15;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v17 = sub_23875EB00() + 32;
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

    sub_238439884(a3, &unk_27DF09920, &qword_238764D80);

    return v21;
  }

LABEL_8:
  sub_238439884(a3, &unk_27DF09920, &qword_238764D80);
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

id sub_2386E68C4(uint64_t a1)
{
  v1 = [objc_allocWithZone(MEMORY[0x277D1B160]) initWithCGImage:a1 scale:sub_2387588A0()];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF09DE0, &unk_2387638D0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_238763E70;
  *(v2 + 32) = v1;
  v3 = objc_allocWithZone(MEMORY[0x277D1B1A8]);
  sub_2386E6E80();
  v4 = v1;
  v5 = sub_23875EC60();

  v6 = [v3 initWithImages_];

  [v4 size];
  v8 = v7;
  v10 = v9;
  [v4 scale];
  v12 = sub_2386E6298(v8, v10, v11);

  return v12;
}

id sub_2386E69F4(double a1, double a2, double a3)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0E138, &unk_23876F130);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v9[-v4];
  v9[15] = 3;
  sub_238557CBC(&v9[-v4]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF14908, &unk_238781170);
  swift_allocObject();
  MEMORY[0x23EE61170](v5);
  v9[8] = 0;
  v9[0] = 0;
  sub_23875C670();
  sub_23875C680();
  v6 = sub_23875C660();

  if (!v6)
  {
    return 0;
  }

  v7 = [objc_allocWithZone(MEMORY[0x277D755B8]) initWithCGImage:v6 scale:0 orientation:1.0];

  return v7;
}

unint64_t sub_2386E6B34()
{
  result = qword_27DF08FE0;
  if (!qword_27DF08FE0)
  {
    type metadata accessor for CFString(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF08FE0);
  }

  return result;
}

uint64_t sub_2386E6BC8()
{
  v2 = *(v0 + 2);
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v7 = *(v0 + 6);
  v6 = *(v0 + 7);
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = sub_2384494A4;

  return sub_2386E6034(v2, v7, v6, v3, v4, v5);
}

uint64_t sub_2386E6CA0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF09920, &qword_238764D80);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2386E6D10(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_238449A7C;

  return sub_2386CB6A0(a1, v4);
}

uint64_t sub_2386E6DC8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2384494A4;

  return sub_2386CB6A0(a1, v4);
}

unint64_t sub_2386E6E80()
{
  result = qword_27DF14900;
  if (!qword_27DF14900)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27DF14900);
  }

  return result;
}

uint64_t BankConnectExtensionAuthorizationViewModel.__allocating_init(flow:flowManager:completionHandler:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v9 = a2[3];
  v10 = a2[4];
  v11 = __swift_mutable_project_boxed_opaque_existential_1(a2, v9);
  v12 = sub_2386E83F8(a1, v11, a3, a4, v4, v9, v10);
  __swift_destroy_boxed_opaque_existential_1(a2);
  return v12;
}

uint64_t BankConnectExtensionAuthorizationView.init(viewModel:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = sub_238447830;
  *(a2 + 8) = result;
  *(a2 + 16) = 0;
  return result;
}

uint64_t BankConnectExtensionAuthorizationViewModel.init(flow:flowManager:completionHandler:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v9 = a2[3];
  v10 = a2[4];
  v11 = __swift_mutable_project_boxed_opaque_existential_1(a2, v9);
  v12 = MEMORY[0x28223BE20](v11);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v15 + 16))(v14, v12);
  v16 = sub_2386E8348(a1, v14, a3, a4, v4, v9, v10);
  __swift_destroy_boxed_opaque_existential_1(a2);
  return v16;
}

double sub_2386E707C(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF0D380, &qword_23876CFA0);
  MEMORY[0x28223BE20](v4);
  v6 = (&v37 - v5);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF09920, &qword_238764D80);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v37 - v8;
  v10 = sub_23875C1E0();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v37 - v15;
  v17 = *a1;
  if (*(a1 + 8))
  {
    sub_23875C120();
    v18 = v17;
    v19 = sub_23875C1B0();
    v20 = sub_23875EFE0();
    sub_23865E454(v17, 1);
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v38 = v2;
      v23 = v22;
      *v21 = 138412290;
      v24 = v17;
      v25 = _swift_stdlib_bridgeErrorToNSError();
      *(v21 + 4) = v25;
      *v23 = v25;
      _os_log_impl(&dword_2383F8000, v19, v20, "Extension authorization step failed with error in extension: %@.", v21, 0xCu);
      sub_238439884(v23, &qword_27DF09930, &unk_2387638C0);
      v26 = v23;
      v2 = v38;
      MEMORY[0x23EE64DF0](v26, -1, -1);
      MEMORY[0x23EE64DF0](v21, -1, -1);
    }

    (*(v11 + 8))(v13, v10);
    v27 = *(v2 + OBJC_IVAR____TtC12FinanceKitUI42BankConnectExtensionAuthorizationViewModel_completionHandler);
    *v6 = v17;
    swift_storeEnumTagMultiPayload();
    v28 = v17;
    v27(v6);
    sub_238439884(v6, &unk_27DF0D380, &qword_23876CFA0);
  }

  else
  {
    sub_23875C120();
    v30 = sub_23875C1B0();
    v31 = sub_23875F000();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&dword_2383F8000, v30, v31, "Extension authorization step succeeded with authorization params.", v32, 2u);
      MEMORY[0x23EE64DF0](v32, -1, -1);
    }

    (*(v11 + 8))(v16, v10);
    v33 = sub_23875ED80();
    (*(*(v33 - 8) + 56))(v9, 1, 1, v33);
    sub_23875ED50();

    sub_23865FC4C(v17, 0);
    v34 = sub_23875ED40();
    v35 = swift_allocObject();
    v36 = MEMORY[0x277D85700];
    v35[2] = v34;
    v35[3] = v36;
    v35[4] = v2;
    v35[5] = v17;
    sub_2386C3BA4(0, 0, v9, &unk_2387813A8, v35);
  }

  return result;
}

uint64_t sub_2386E74A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v5[4] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF0D380, &qword_23876CFA0);
  v5[5] = swift_task_alloc();
  v6 = sub_23875C1E0();
  v5[6] = v6;
  v5[7] = *(v6 - 8);
  v5[8] = swift_task_alloc();
  v5[9] = swift_task_alloc();
  v7 = sub_23875A8F0();
  v5[10] = v7;
  v5[11] = *(v7 - 8);
  v5[12] = swift_task_alloc();
  v5[13] = type metadata accessor for BankConnectAuthorizationFlow(0);
  v5[14] = swift_task_alloc();
  v8 = sub_238758BB0();
  v5[15] = v8;
  v5[16] = *(v8 - 8);
  v5[17] = swift_task_alloc();
  v5[18] = swift_task_alloc();
  sub_23875ED50();
  v5[19] = sub_23875ED40();
  v10 = sub_23875ECE0();
  v5[20] = v10;
  v5[21] = v9;

  return MEMORY[0x2822009F8](sub_2386E76D8, v10, v9);
}

uint64_t sub_2386E76D8()
{
  v1 = v0[14];
  v3 = v0[11];
  v2 = v0[12];
  v4 = v0[10];
  v5 = v0[2];
  v6 = v0[3];
  v7 = *(v5 + OBJC_IVAR____TtC12FinanceKitUI42BankConnectExtensionAuthorizationViewModel_flowManager + 24);
  v8 = *(v5 + OBJC_IVAR____TtC12FinanceKitUI42BankConnectExtensionAuthorizationViewModel_flowManager + 32);
  __swift_project_boxed_opaque_existential_1((v5 + OBJC_IVAR____TtC12FinanceKitUI42BankConnectExtensionAuthorizationViewModel_flowManager), v7);
  sub_2386E85B4(v5 + OBJC_IVAR____TtC12FinanceKitUI42BankConnectExtensionAuthorizationViewModel_flow, v1);
  swift_storeEnumTagMultiPayload();
  *v2 = v6;
  (*(v3 + 104))(v2, *MEMORY[0x277CC8038], v4);
  v9 = *(v8 + 16);

  v15 = (v9 + *v9);
  v10 = swift_task_alloc();
  v0[22] = v10;
  *v10 = v0;
  v10[1] = sub_2386E7898;
  v11 = v0[18];
  v12 = v0[14];
  v13 = v0[12];

  return v15(v11, v12, v13, v7, v8);
}

uint64_t sub_2386E7898()
{
  v2 = *v1;
  v3 = *(*v1 + 112);
  v4 = *(*v1 + 96);
  v5 = *(*v1 + 88);
  v6 = *(*v1 + 80);
  *(*v1 + 184) = v0;

  (*(v5 + 8))(v4, v6);
  sub_2386E885C(v3, type metadata accessor for BankConnectAuthorizationFlow);
  v7 = *(v2 + 168);
  v8 = *(v2 + 160);
  if (v0)
  {
    v9 = sub_2386E7D4C;
  }

  else
  {
    v9 = sub_2386E7A68;
  }

  return MEMORY[0x2822009F8](v9, v8, v7);
}

uint64_t sub_2386E7A68()
{
  v34 = v0;
  v1 = v0[18];
  v3 = v0[16];
  v2 = v0[17];
  v4 = v0[15];

  sub_23875C120();
  v32 = *(v3 + 16);
  v32(v2, v1, v4);
  v5 = sub_23875C1B0();
  v6 = sub_23875F000();
  v7 = os_log_type_enabled(v5, v6);
  v9 = v0[16];
  v8 = v0[17];
  v31 = v0[15];
  v10 = v0[9];
  v12 = v0[6];
  v11 = v0[7];
  if (v7)
  {
    v30 = v0[6];
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v33 = v14;
    *v13 = 136315138;
    v27 = sub_238758BA0();
    v28 = v6;
    v16 = v15;
    v29 = v10;
    v17 = *(v9 + 8);
    v17(v8, v31);
    v18 = v17;
    v19 = sub_2384615AC(v27, v16, &v33);

    *(v13 + 4) = v19;
    _os_log_impl(&dword_2383F8000, v5, v28, "Extension authorization step successfully completed authorization flow. Consent with consentID: %s saved to the store.", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v14);
    MEMORY[0x23EE64DF0](v14, -1, -1);
    MEMORY[0x23EE64DF0](v13, -1, -1);

    (*(v11 + 8))(v29, v30);
  }

  else
  {

    v20 = *(v9 + 8);
    v20(v8, v31);
    v18 = v20;
    (*(v11 + 8))(v10, v12);
  }

  v21 = v0[18];
  v22 = v0[15];
  v23 = v0[5];
  v24 = *(v0[2] + OBJC_IVAR____TtC12FinanceKitUI42BankConnectExtensionAuthorizationViewModel_completionHandler);
  v32(v23, v21, v22);
  swift_storeEnumTagMultiPayload();
  v24(v23);
  sub_238439884(v23, &unk_27DF0D380, &qword_23876CFA0);
  v18(v21, v22);

  v25 = v0[1];

  return v25();
}

uint64_t sub_2386E7D4C()
{
  v1 = v0[23];

  sub_23875C120();
  v2 = v1;
  v3 = sub_23875C1B0();
  v4 = sub_23875EFE0();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[23];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    v8 = v5;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_2383F8000, v3, v4, "Extension authorization step failed to complete authorization flow with error: %@", v6, 0xCu);
    sub_238439884(v7, &qword_27DF09930, &unk_2387638C0);
    MEMORY[0x23EE64DF0](v7, -1, -1);
    MEMORY[0x23EE64DF0](v6, -1, -1);
  }

  v10 = v0[23];
  v12 = v0[7];
  v11 = v0[8];
  v14 = v0[5];
  v13 = v0[6];
  v15 = v0[2];

  (*(v12 + 8))(v11, v13);
  v16 = *(v15 + OBJC_IVAR____TtC12FinanceKitUI42BankConnectExtensionAuthorizationViewModel_completionHandler);
  *v14 = v10;
  swift_storeEnumTagMultiPayload();
  v17 = v10;
  v16(v14);

  sub_238439884(v14, &unk_27DF0D380, &qword_23876CFA0);

  v18 = v0[1];

  return v18();
}

uint64_t BankConnectExtensionAuthorizationViewModel.deinit()
{
  sub_2386E885C(v0 + OBJC_IVAR____TtC12FinanceKitUI42BankConnectExtensionAuthorizationViewModel_flow, type metadata accessor for BankConnectExtensionAuthorizationFlow);
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC12FinanceKitUI42BankConnectExtensionAuthorizationViewModel_flowManager));

  return v0;
}

uint64_t BankConnectExtensionAuthorizationViewModel.__deallocating_deinit()
{
  sub_2386E885C(v0 + OBJC_IVAR____TtC12FinanceKitUI42BankConnectExtensionAuthorizationViewModel_flow, type metadata accessor for BankConnectExtensionAuthorizationFlow);
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC12FinanceKitUI42BankConnectExtensionAuthorizationViewModel_flowManager));

  return swift_deallocClassInstance();
}

uint64_t sub_2386E8074@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for BankConnectExtensionAuthorizationViewModel(0);
  result = sub_23875C260();
  *a2 = result;
  return result;
}

uint64_t BankConnectExtensionAuthorizationView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for BankConnectExtensionAuthorizationFlow(0);
  v4 = v3 - 8;
  MEMORY[0x28223BE20](v3);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v19 - v8;
  v11 = *v1;
  v10 = *(v1 + 8);
  v12 = *(v1 + 16);
  type metadata accessor for BankConnectExtensionAuthorizationViewModel(0);
  sub_2386E855C();
  v13 = sub_23875C490();
  sub_2386E85B4(v13 + OBJC_IVAR____TtC12FinanceKitUI42BankConnectExtensionAuthorizationViewModel_flow, v9);

  sub_23845C998(&v9[*(v4 + 28)], a1);
  sub_2386E885C(v9, type metadata accessor for BankConnectExtensionAuthorizationFlow);
  v14 = sub_23875C490();
  sub_2386E85B4(v14 + OBJC_IVAR____TtC12FinanceKitUI42BankConnectExtensionAuthorizationViewModel_flow, v6);

  v15 = *&v6[*(v4 + 32)];

  sub_2386E885C(v6, type metadata accessor for BankConnectExtensionAuthorizationFlow);
  v16 = swift_allocObject();
  *(v16 + 16) = v11;
  *(v16 + 24) = v10;
  *(v16 + 32) = v12;
  v17 = swift_allocObject();
  v17[2] = v15;
  v17[3] = sub_2386E8618;
  v17[4] = v16;
  *(a1 + 40) = sub_238486EF8;
  *(a1 + 48) = v17;
  *(a1 + 56) = 0;
  return sub_2384D63F0(v11, v10);
}

double sub_2386E82AC(uint64_t *a1, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  type metadata accessor for BankConnectExtensionAuthorizationViewModel(0);
  sub_2386E855C();
  sub_23875C490();
  v7 = v4;
  v8 = v5;
  sub_2386E707C(&v7);

  return result;
}

uint64_t sub_2386E8348(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = (a5 + OBJC_IVAR____TtC12FinanceKitUI42BankConnectExtensionAuthorizationViewModel_flowManager);
  v13[3] = a6;
  v13[4] = a7;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v13);
  (*(*(a6 - 8) + 32))(boxed_opaque_existential_1, a2, a6);
  sub_2386E88BC(a1, a5 + OBJC_IVAR____TtC12FinanceKitUI42BankConnectExtensionAuthorizationViewModel_flow);
  v15 = (a5 + OBJC_IVAR____TtC12FinanceKitUI42BankConnectExtensionAuthorizationViewModel_completionHandler);
  *v15 = a3;
  v15[1] = a4;
  return a5;
}

uint64_t sub_2386E83F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = *(a6 - 8);
  MEMORY[0x28223BE20](a1);
  v15 = &v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for BankConnectExtensionAuthorizationViewModel(0);
  v16 = swift_allocObject();
  (*(v13 + 16))(v15, a2, a6);
  return sub_2386E8348(a1, v15, a3, a4, v16, a6, a7);
}

uint64_t type metadata accessor for BankConnectExtensionAuthorizationViewModel(uint64_t a1)
{
  result = qword_27DF14918;
  if (!qword_27DF14918)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_2386E855C()
{
  result = qword_27DF14910;
  if (!qword_27DF14910)
  {
    type metadata accessor for BankConnectExtensionAuthorizationViewModel(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF14910);
  }

  return result;
}

uint64_t sub_2386E85B4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BankConnectExtensionAuthorizationFlow(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2386E8658(uint64_t a1)
{
  result = type metadata accessor for BankConnectExtensionAuthorizationFlow(319);
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

unint64_t sub_2386E8748(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DF14928;
  if (!qword_27DF14928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF14928);
  }

  return result;
}

uint64_t sub_2386E879C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_2384494A4;

  return sub_2386E74A8(a1, v4, v5, v7, v6);
}

uint64_t sub_2386E885C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2386E88BC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BankConnectExtensionAuthorizationFlow(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_2386E8988(uint64_t a1)
{
  type metadata accessor for ExtractedOrderDetailsShippingFulfillment.ViewModel(319);
  if (v1 <= 0x3F)
  {
    sub_2384BEA74(319);
    if (v2 <= 0x3F)
    {
      sub_2386E8BBC(319, &qword_27DF0F4F0, &type metadata for CopyStringAction, MEMORY[0x277CDF468]);
      if (v3 <= 0x3F)
      {
        sub_2386E8A60(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_2386E8A60(uint64_t a1)
{
  if (!qword_27DF0D130)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0D040, &qword_2387676A0);
    v1 = sub_23875E1E0();
    if (!v2)
    {
      atomic_store(v1, &qword_27DF0D130);
    }
  }
}

void sub_2386E8AEC(uint64_t a1)
{
  sub_2387581B0();
  if (v1 <= 0x3F)
  {
    _s19ShippingFulfillmentO12StatusValuesVMa(319);
    if (v2 <= 0x3F)
    {
      sub_2386E8BBC(319, &qword_2814F08C0, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_2386E8BBC(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_2386E8C0C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0BB60, &unk_2387692D0);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = v22 - v6;
  v8 = type metadata accessor for ExtractedOrderDetailsShippingFulfillment.ViewModel(0);
  v9 = *(v2 + 16);
  v9(v7, v0 + *(v8 + 20), v1);
  v10 = (*(v2 + 88))(v7, v1);
  if (v10 == *MEMORY[0x277CC83B8])
  {
    goto LABEL_27;
  }

  if (v10 != *MEMORY[0x277CC83A8])
  {
    if (v10 != *MEMORY[0x277CC83B0])
    {
      goto LABEL_30;
    }

LABEL_27:
    v20 = 0;
    goto LABEL_28;
  }

  v9(v4, v7, v1);
  (*(v2 + 96))(v4, v1);
  v11 = sub_2387581B0();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 88))(v4, v11);
  if (v13 == *MEMORY[0x277CC6E40] || v13 == *MEMORY[0x277CC6E38])
  {
    goto LABEL_27;
  }

  if (v13 == *MEMORY[0x277CC6E48] || v13 == *MEMORY[0x277CC6E20])
  {
    goto LABEL_25;
  }

  v16 = v13 == *MEMORY[0x277CC6E60] || v13 == *MEMORY[0x277CC6E58];
  v17 = v16 || v13 == *MEMORY[0x277CC6E30];
  v18 = v17 || v13 == *MEMORY[0x277CC6E28];
  if (v18 || v13 == *MEMORY[0x277CC6E50])
  {
    goto LABEL_27;
  }

  if (v13 == *MEMORY[0x277CC6E18])
  {
LABEL_25:
    v20 = 1;
LABEL_28:
    (*(v2 + 8))(v7, v1);
    return v20;
  }

  (*(v12 + 8))(v4, v11);
LABEL_30:
  v22[0] = 0;
  v22[1] = 0xE000000000000000;
  sub_23875F470();
  MEMORY[0x23EE63650](0xD000000000000017, 0x800000023878AD90);
  sub_23875F510();
  result = sub_23875F520();
  __break(1u);
  return result;
}

uint64_t sub_2386E8F80()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0BB60, &unk_2387692D0);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = v23 - v6;
  MEMORY[0x28223BE20](v8);
  v10 = v23 - v9;
  v11 = type metadata accessor for ExtractedOrderDetailsShippingFulfillment.ViewModel(0);
  v12 = *(v2 + 16);
  v12(v10, v0 + *(v11 + 20), v1);
  v13 = (*(v2 + 88))(v10, v1);
  if (v13 == *MEMORY[0x277CC83B8])
  {
    v12(v4, v10, v1);
    (*(v2 + 96))(v4, v1);
    v14 = sub_2387580D0();
    v15 = *(v14 - 8);
    v16 = (*(v15 + 88))(v4, v14);
    if (v16 != *MEMORY[0x277CC6DF0] && v16 != *MEMORY[0x277CC6DE0] && v16 != *MEMORY[0x277CC6DD8])
    {
      if (v16 == *MEMORY[0x277CC6DF8])
      {
LABEL_10:
        v19 = 1;
LABEL_18:
        (*(v2 + 8))(v10, v1);
        return v19;
      }

      if (v16 == *MEMORY[0x277CC6DE8])
      {
LABEL_17:
        v19 = 2;
        goto LABEL_18;
      }

      v7 = v4;
      goto LABEL_32;
    }

    goto LABEL_13;
  }

  if (v13 == *MEMORY[0x277CC83A8])
  {
    v12(v7, v10, v1);
    (*(v2 + 96))(v7, v1);
    v14 = sub_2387581B0();
    v15 = *(v14 - 8);
    v20 = (*(v15 + 88))(v7, v14);
    if (v20 == *MEMORY[0x277CC6E40])
    {
      goto LABEL_13;
    }

    if (v20 != *MEMORY[0x277CC6E38])
    {
      if (v20 == *MEMORY[0x277CC6E48] || v20 == *MEMORY[0x277CC6E20])
      {
        goto LABEL_13;
      }

      if (v20 != *MEMORY[0x277CC6E60])
      {
        if (v20 == *MEMORY[0x277CC6E58])
        {
          goto LABEL_10;
        }

        if (v20 == *MEMORY[0x277CC6E30])
        {
          goto LABEL_17;
        }

        if (v20 == *MEMORY[0x277CC6E28])
        {
          goto LABEL_13;
        }

        if (v20 != *MEMORY[0x277CC6E50])
        {
          if (v20 != *MEMORY[0x277CC6E18])
          {
LABEL_32:
            (*(v15 + 8))(v7, v14);
            goto LABEL_33;
          }

LABEL_13:
          v19 = 3;
          goto LABEL_18;
        }
      }
    }

LABEL_15:
    v19 = 0;
    goto LABEL_18;
  }

  if (v13 == *MEMORY[0x277CC83B0])
  {
    goto LABEL_15;
  }

LABEL_33:
  v23[0] = 0;
  v23[1] = 0xE000000000000000;
  sub_23875F470();
  MEMORY[0x23EE63650](0xD000000000000017, 0x800000023878AD90);
  sub_23875F510();
  result = sub_23875F520();
  __break(1u);
  return result;
}

uint64_t sub_2386E9448@<X0>(uint64_t a1@<X8>)
{
  v182 = a1;
  v2 = type metadata accessor for OrderDetailsShippingTracking(0);
  MEMORY[0x28223BE20](v2 - 8);
  v151 = &v146 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v181 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0F508, &unk_238781470);
  v180 = *(v181 - 8);
  MEMORY[0x28223BE20](v181);
  v152 = &v146 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D040, &qword_2387676A0);
  MEMORY[0x28223BE20](v5 - 8);
  v174 = &v146 - v6;
  v176 = sub_23875B940();
  v175 = *(v176 - 8);
  MEMORY[0x28223BE20](v176);
  v148 = &v146 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v147 = type metadata accessor for OrderDetailsShippingTracking.ViewModel(0);
  MEMORY[0x28223BE20](v147);
  v149 = &v146 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v150 = &v146 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0F510, &unk_2387728D0);
  MEMORY[0x28223BE20](v11 - 8);
  v179 = &v146 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v178 = &v146 - v14;
  v172 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0F518, &unk_238781480);
  v171 = *(v172 - 8);
  MEMORY[0x28223BE20](v172);
  v156 = &v146 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0F520, &unk_2387728E0);
  v184 = *(v16 - 8);
  v185 = v16;
  MEMORY[0x28223BE20](v16);
  v155 = &v146 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v154 = &v146 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0F528, &unk_238781490);
  MEMORY[0x28223BE20](v20 - 8);
  v153 = &v146 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v183 = &v146 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0F530, &qword_2387728F0);
  MEMORY[0x28223BE20](v24 - 8);
  v177 = &v146 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v188 = &v146 - v27;
  v186 = type metadata accessor for ExtractedOrderDetailsShippingFulfillment(0);
  v168 = *(v186 - 8);
  MEMORY[0x28223BE20](v186);
  v169 = v28;
  v170 = (&v146 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
  v164 = sub_23875C880();
  v29 = *(v164 - 8);
  MEMORY[0x28223BE20](v164);
  v161 = &v146 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31);
  v159 = &v146 - v32;
  v158 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF14950, &qword_2387814A0);
  MEMORY[0x28223BE20](v158);
  v34 = &v146 - v33;
  v165 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF14958, &qword_2387814A8);
  v163 = *(v165 - 8);
  MEMORY[0x28223BE20](v165);
  v36 = &v146 - v35;
  v160 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF14960, &qword_2387814B0);
  MEMORY[0x28223BE20](v160);
  v167 = &v146 - v37;
  v162 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF14968, &qword_2387814B8);
  MEMORY[0x28223BE20](v162);
  v173 = &v146 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v39);
  v166 = &v146 - v40;
  MEMORY[0x28223BE20](v41);
  v187 = &v146 - v42;
  v43 = sub_23875BE40();
  MEMORY[0x28223BE20](v43 - 8);
  v44 = sub_23875BE20();
  MEMORY[0x28223BE20](v44 - 8);
  v45 = sub_23875BD20();
  MEMORY[0x28223BE20](v45 - 8);
  v46 = _s19ShippingFulfillmentO15StatusFormatterVMa(0);
  MEMORY[0x28223BE20](v46);
  v48 = &v146 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23875BCC0();
  sub_23875BDB0();
  sub_23875BE30();
  sub_2387595B0();
  v49 = type metadata accessor for ExtractedOrderDetailsShippingFulfillment.ViewModel(0);
  sub_2386ED1B4(&qword_27DF09310, _s19ShippingFulfillmentO15StatusFormatterVMa, &unk_238777678);
  v50 = v1;
  sub_238759950();
  sub_2386ECFA8(v48, _s19ShippingFulfillmentO15StatusFormatterVMa);
  v52 = *(&v189 + 1);
  v51 = v189;
  v54 = *(&v190 + 1);
  v53 = v190;
  *v34 = sub_23875D030();
  *(v34 + 1) = 0x4028000000000000;
  v34[16] = 0;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF14970, &qword_2387814C0);
  sub_2386EAB00(v51, v52, v53, v54, v50, &v34[*(v55 + 44)]);

  sub_2386E8C0C();
  sub_23875C580();
  sub_23843A3E8(&qword_27DF14978, &qword_27DF14950, &qword_2387814A0, MEMORY[0x277CE1198]);
  v56 = v36;
  sub_23875DCA0();
  sub_238439884(v34, &qword_27DF14950, &qword_2387814A0);
  v57 = v159;
  sub_2384D5138(v159);
  v58 = v161;
  v59 = v164;
  (*(v29 + 104))(v161, *MEMORY[0x277CDF9D8], v164);
  v60 = sub_23875C870();
  v61 = *(v29 + 8);
  v61(v58, v59);
  v62 = v50;
  v61(v57, v59);
  v63 = 0x4028000000000000;
  if (sub_2386E8C0C())
  {
    if (*(v50 + *(v49 + 24) + 8))
    {
      v63 = 0;
    }

    else
    {
      v63 = 0x4028000000000000;
    }
  }

  if (v60)
  {
    v64 = 0x4028000000000000;
  }

  else
  {
    v64 = 0x4030000000000000;
  }

  v65 = v167;
  (*(v163 + 32))(v167, v56, v165);
  v66 = v65 + *(v160 + 36);
  *v66 = 0x4028000000000000;
  *(v66 + 8) = v64;
  *(v66 + 16) = v63;
  *(v66 + 24) = v64;
  *(v66 + 32) = 0;
  v67 = v170;
  sub_2386EC9B0(v62, v170, type metadata accessor for ExtractedOrderDetailsShippingFulfillment);
  v68 = (*(v168 + 80) + 16) & ~*(v168 + 80);
  v69 = swift_allocObject();
  sub_2386EC948(v67, v69 + v68, type metadata accessor for ExtractedOrderDetailsShippingFulfillment);
  v70 = v166;
  v71 = &v166[*(v162 + 36)];
  sub_23875C6E0();
  sub_23875ED60();
  *v71 = &unk_2387814D0;
  *(v71 + 1) = v69;
  sub_2384396E4(v65, v70, &qword_27DF14960, &qword_2387814B0);
  sub_2384396E4(v70, v187, &qword_27DF14968, &qword_2387814B8);
  v72 = (v62 + *(v49 + 24));
  if (v72[1])
  {
    v170 = v72[1];
    v73 = *v72;
    v74 = (v62 + *(v49 + 28));
    v75 = v74[1];
    v157 = v62;
    if (v75)
    {
      v169 = v73;
      v76 = *v74;
      v77 = v183;
      v78 = v184;
      if (qword_2814F0880 != -1)
      {
        swift_once();
      }

      v79 = qword_2814F1B90;
      v80 = sub_23875EA50();
      v81 = sub_23875EA50();
      v82 = sub_23875EA50();
      v83 = [v79 localizedStringForKey:v80 value:v81 table:v82];

      v84 = sub_23875EA80();
      v86 = v85;

      *&v189 = v84;
      *(&v189 + 1) = v86;
      *&v190 = v76;
      *(&v190 + 1) = v75;
      MEMORY[0x28223BE20](v87);

      v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B730, &unk_23876B800);
      sub_2385A8F14(v88, v89, v90);
      sub_23843A3E8(&qword_27DF0B738, &qword_27DF0B730, &unk_23876B800, MEMORY[0x277CDF028]);
      sub_23875DB50();

      v91 = 0;
      v73 = v169;
    }

    else
    {
      v91 = 1;
      v77 = v183;
      v78 = v184;
    }

    (*(v78 + 56))(v77, v91, 1, v185);
    if (qword_2814F0880 != -1)
    {
      swift_once();
    }

    v96 = qword_2814F1B90;
    v97 = sub_23875EA50();
    v98 = sub_23875EA50();
    v99 = sub_23875EA50();
    v100 = [v96 localizedStringForKey:v97 value:v98 table:v99];

    v101 = sub_23875EA80();
    v103 = v102;

    v169 = &v146;
    *&v189 = v101;
    *(&v189 + 1) = v103;
    *&v190 = v73;
    *(&v190 + 1) = v170;
    MEMORY[0x28223BE20](v104);

    v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B730, &unk_23876B800);
    sub_2385A8F14(v105, v106, v107);
    sub_23843A3E8(&qword_27DF0B738, &qword_27DF0B730, &unk_23876B800, MEMORY[0x277CDF028]);
    v108 = v154;
    sub_23875DB50();

    v109 = v153;
    sub_23843981C(v77, v153, &qword_27DF0F528, &unk_238781490);
    v111 = v184;
    v110 = v185;
    v112 = *(v184 + 16);
    v113 = v155;
    v112(v155, v108, v185);
    v114 = v156;
    sub_23843981C(v109, v156, &qword_27DF0F528, &unk_238781490);
    v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0F570, &qword_238772928);
    v112((v114 + *(v115 + 48)), v113, v110);
    v116 = *(v111 + 8);
    v116(v108, v110);
    sub_238439884(v183, &qword_27DF0F528, &unk_238781490);
    v116(v113, v110);
    sub_238439884(v109, &qword_27DF0F528, &unk_238781490);
    v117 = v114;
    v94 = v188;
    sub_2384396E4(v117, v188, &qword_27DF0F518, &unk_238781480);
    v92 = 0;
    v95 = v175;
    v93 = v178;
  }

  else
  {
    v92 = 1;
    v93 = v178;
    v94 = v188;
    v95 = v175;
  }

  (*(v171 + 56))(v94, v92, 1, v172);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF0D100, &qword_23876CA08);
  v118 = v174;
  sub_23875E1B0();
  v119 = v176;
  if ((*(v95 + 48))(v118, 1, v176) == 1)
  {
    sub_238439884(v118, &qword_27DF0D040, &qword_2387676A0);
    v120 = 1;
    v121 = v181;
  }

  else
  {
    v122 = *(v95 + 32);
    v123 = v148;
    v122(v148, v118, v119);
    v124 = type metadata accessor for OrderProviderLogoButton.ViewModel(0);
    v125 = v149;
    (*(*(v124 - 8) + 56))(v149, 1, 1, v124);
    v126 = v147;
    v122((v125 + *(v147 + 20)), v123, v119);
    v127 = *(v126 + 24);
    v128 = *MEMORY[0x277CC8440];
    v129 = sub_23875AD80();
    (*(*(v129 - 8) + 104))(v125 + v127, v128, v129);
    v130 = v150;
    sub_2386EC948(v125, v150, type metadata accessor for OrderDetailsShippingTracking.ViewModel);
    v131 = v151;
    sub_2386EC9B0(v130, v151, type metadata accessor for OrderDetailsShippingTracking.ViewModel);
    sub_23875E4B0();
    sub_23875C9C0();
    sub_2386ECFA8(v130, type metadata accessor for OrderDetailsShippingTracking.ViewModel);
    v132 = v152;
    sub_2386EC948(v131, v152, type metadata accessor for OrderDetailsShippingTracking);
    v121 = v181;
    v133 = (v132 + *(v181 + 36));
    v134 = v194;
    v133[4] = v193;
    v133[5] = v134;
    v133[6] = v195;
    v135 = v190;
    *v133 = v189;
    v133[1] = v135;
    v136 = v192;
    v133[2] = v191;
    v133[3] = v136;
    sub_2384396E4(v132, v93, &qword_27DF0F508, &unk_238781470);
    v120 = 0;
  }

  (*(v180 + 56))(v93, v120, 1, v121);
  v137 = v187;
  v138 = v173;
  sub_23843981C(v187, v173, &qword_27DF14968, &qword_2387814B8);
  v139 = v177;
  sub_23843981C(v94, v177, &qword_27DF0F530, &qword_2387728F0);
  v140 = v93;
  v141 = v93;
  v142 = v179;
  sub_23843981C(v140, v179, &qword_27DF0F510, &unk_2387728D0);
  v143 = v182;
  sub_23843981C(v138, v182, &qword_27DF14968, &qword_2387814B8);
  v144 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF14980, &unk_2387814D8);
  sub_23843981C(v139, v143 + *(v144 + 48), &qword_27DF0F530, &qword_2387728F0);
  sub_23843981C(v142, v143 + *(v144 + 64), &qword_27DF0F510, &unk_2387728D0);
  sub_238439884(v141, &qword_27DF0F510, &unk_2387728D0);
  sub_238439884(v188, &qword_27DF0F530, &qword_2387728F0);
  sub_238439884(v137, &qword_27DF14968, &qword_2387814B8);
  sub_238439884(v142, &qword_27DF0F510, &unk_2387728D0);
  sub_238439884(v139, &qword_27DF0F530, &qword_2387728F0);
  return sub_238439884(v138, &qword_27DF14968, &qword_2387814B8);
}

double sub_2386EAB00@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v51 = a1;
  v52 = a3;
  v55 = a6;
  v9 = sub_2387581B0();
  v49 = *(v9 - 8);
  v50 = v9;
  MEMORY[0x28223BE20](v9);
  v48 = &v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_23875D990();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for OrderDetailsStatusLabel(0);
  MEMORY[0x28223BE20](v15);
  v54 = &v47 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v47 - v18;
  sub_23875ED50();
  v53 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v20 = sub_2386E8F80();
  v21 = a4;
  v22 = v15[7];
  v23 = type metadata accessor for OrderDetailsNote(0);
  (*(*(v23 - 8) + 56))(&v19[v22], 1, 1, v23);
  v24 = (a5 + *(type metadata accessor for ExtractedOrderDetailsShippingFulfillment.ViewModel(0) + 32));
  v25 = *v24;
  v26 = v24[24];
  *v19 = v51;
  *(v19 + 1) = a2;
  *(v19 + 2) = v52;
  *(v19 + 3) = v21;
  v19[32] = v20;
  v27 = &v19[v15[8]];
  *v27 = v25;
  *(v27 + 8) = *(v24 + 8);
  v27[24] = v26;
  v28 = &v19[v15[9]];
  v56 = 0;
  sub_23875E1A0();
  v29 = v58;
  *v28 = v57;
  *(v28 + 1) = v29;
  v30 = &v19[v15[10]];
  *v30 = swift_getKeyPath(byte_238781518);
  v30[8] = 0;
  v52 = a5;
  v57 = 0x403F000000000000;
  v31 = *MEMORY[0x277CE0A50];
  v32 = *(v12 + 104);
  v33 = v32(v14, v31, v11);
  sub_23857414C(v33, v34, v35);
  sub_23875C540();
  v57 = 0x403C000000000000;
  v32(v14, v31, v11);
  sub_23875C540();
  v57 = 0x4018000000000000;
  v32(v14, v31, v11);
  v36 = v52;
  sub_23875C540();
  if (sub_2386E8C0C())
  {
    v37 = v48;
    (*(v49 + 16))(v48, v36, v50);
    v38 = sub_2386D1800(v37);
    v40 = v39;
    v42 = v41;
  }

  else
  {
    v38 = 0;
    v40 = 0;
    v42 = 1;
  }

  v43 = v54;
  sub_2386EC9B0(v19, v54, type metadata accessor for OrderDetailsStatusLabel);
  v44 = v55;
  sub_2386EC9B0(v43, v55, type metadata accessor for OrderDetailsStatusLabel);
  v45 = (v44 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF149C0, &qword_238781540) + 48));
  *v45 = v38;
  v45[1] = v40;
  v45[2] = v42;
  sub_2385A9610(v38, v40, v42);
  sub_2386ECFA8(v19, type metadata accessor for OrderDetailsStatusLabel);
  sub_2385A9684(v38, v40, v42);
  sub_2386ECFA8(v43, type metadata accessor for OrderDetailsStatusLabel);

  return result;
}

uint64_t sub_2386EAFE4()
{
  v0[2] = sub_23875ED50();
  v0[3] = sub_23875ED40();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_2384E80A8;

  return sub_2386EB090();
}

uint64_t sub_2386EB090()
{
  v1[7] = v0;
  v2 = sub_23875BFC0();
  v1[8] = v2;
  v1[9] = *(v2 - 8);
  v1[10] = swift_task_alloc();
  v3 = sub_23875BFB0();
  v1[11] = v3;
  v1[12] = *(v3 - 8);
  v1[13] = swift_task_alloc();
  v4 = sub_23875BFE0();
  v1[14] = v4;
  v1[15] = *(v4 - 8);
  v1[16] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF14988, &qword_2387814F0);
  v1[17] = swift_task_alloc();
  v5 = sub_23875C000();
  v1[18] = v5;
  v1[19] = *(v5 - 8);
  v1[20] = swift_task_alloc();
  v6 = sub_23875C020();
  v1[21] = v6;
  v1[22] = *(v6 - 8);
  v1[23] = swift_task_alloc();
  v1[24] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF14990, &qword_2387814F8);
  v1[25] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF14998, &qword_238781500);
  v1[26] = v7;
  v1[27] = *(v7 - 8);
  v1[28] = swift_task_alloc();
  v8 = sub_23875B940();
  v1[29] = v8;
  v1[30] = *(v8 - 8);
  v1[31] = swift_task_alloc();
  v1[32] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D040, &qword_2387676A0);
  v1[33] = swift_task_alloc();
  v1[34] = swift_task_alloc();
  v1[35] = swift_task_alloc();
  v1[36] = swift_task_alloc();
  v1[37] = swift_task_alloc();
  v1[38] = swift_task_alloc();
  v1[39] = sub_23875ED50();
  v1[40] = sub_23875ED40();
  v10 = sub_23875ECE0();
  v1[41] = v10;
  v1[42] = v9;

  return MEMORY[0x2822009F8](sub_2386EB4B0, v10, v9);
}

uint64_t sub_2386EB4B0()
{
  v1 = *(v0 + 56);
  v2 = type metadata accessor for ExtractedOrderDetailsShippingFulfillment.ViewModel(0);
  v3 = (v1 + *(v2 + 24));
  v4 = v3[1];
  if (v4)
  {
    v5 = *v3;
    if (!*(v1 + *(v2 + 28) + 8))
    {
LABEL_9:
      v17 = *(v0 + 176);
      v37 = *(v0 + 184);
      v18 = *(v0 + 160);
      v38 = *(v0 + 168);
      v19 = *(v0 + 152);
      v39 = *(v0 + 144);
      *(v0 + 16) = v5;
      *(v0 + 24) = v4;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF149A0, &qword_238781508);
      v20 = swift_allocObject();
      *(v20 + 16) = xmmword_2387632F0;
      sub_23875C010();
      *(v0 + 48) = v20;
      sub_2386ED1B4(&qword_27DF149A8, MEMORY[0x277CC5650], MEMORY[0x277CC5658]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF149B0, &qword_238781510);
      sub_23843A3E8(&qword_27DF149B8, &qword_27DF149B0, &qword_238781510, MEMORY[0x277D83970]);
      sub_23875F310();
      v21 = sub_23875BFF0();
      v24 = sub_2384397A8(v21, v22, v23);
      sub_23875F2B0();
      (*(v19 + 8))(v18, v39);
      (*(v17 + 8))(v37, v38);
      *(v0 + 32) = MEMORY[0x277D837D0];
      *(v0 + 40) = v24;
      *(v0 + 344) = swift_getOpaqueTypeConformance2();
      sub_23875EE20();
      *(v0 + 368) = *MEMORY[0x277CC5648];
      v25 = sub_23875ED40();
      *(v0 + 352) = v25;
      swift_getAssociatedConformanceWitness();
      v26 = swift_task_alloc();
      *(v0 + 360) = v26;
      *v26 = v0;
      v26[1] = sub_2386EBAF4;
      v27 = *(v0 + 136);
      v28 = MEMORY[0x277D85700];

      return MEMORY[0x282200310](v27, v25, v28);
    }

    v6 = sub_23875EA50();
    v40 = v5;
    v7 = sub_23875EA50();
    v8 = DDResultGetShipmentTrackingUrlWithCarrier();

    if (v8)
    {
      sub_23875B8B0();

      v9 = 0;
    }

    else
    {
      v9 = 1;
    }

    v11 = *(v0 + 296);
    v10 = *(v0 + 304);
    v12 = *(v0 + 288);
    v13 = *(v0 + 232);
    v14 = *(v0 + 240);
    v15 = *(v14 + 56);
    v15(v11, v9, 1, v13);
    sub_2384396E4(v11, v10, &qword_27DF0D040, &qword_2387676A0);
    sub_23843981C(v10, v12, &qword_27DF0D040, &qword_2387676A0);
    if ((*(v14 + 48))(v12, 1, v13) == 1)
    {
      v16 = *(v0 + 288);
      sub_238439884(*(v0 + 304), &qword_27DF0D040, &qword_2387676A0);
      sub_238439884(v16, &qword_27DF0D040, &qword_2387676A0);
      v5 = v40;
      goto LABEL_9;
    }

    v30 = *(v0 + 280);
    v29 = *(v0 + 288);
    v31 = *(v0 + 272);
    v32 = *(v0 + 256);
    v33 = *(v0 + 232);
    v34 = *(v0 + 240);
    v41 = *(v0 + 304);

    (*(v34 + 32))(v32, v29, v33);
    (*(v34 + 16))(v30, v32, v33);
    v15(v30, 0, 1, v33);
    type metadata accessor for ExtractedOrderDetailsShippingFulfillment(0);
    sub_23843981C(v30, v31, &qword_27DF0D040, &qword_2387676A0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF0D100, &qword_23876CA08);
    sub_23875E1C0();
    sub_238439884(v30, &qword_27DF0D040, &qword_2387676A0);
    (*(v34 + 8))(v32, v33);
    sub_238439884(v41, &qword_27DF0D040, &qword_2387676A0);
  }

  else
  {
  }

  v35 = *(v0 + 8);

  return v35();
}

uint64_t sub_2386EBAF4()
{
  v2 = *v1;

  if (!v0)
  {

    v4 = *(v2 + 328);
    v5 = *(v2 + 336);

    return MEMORY[0x2822009F8](sub_2386EBC08, v4, v5);
  }

  return result;
}

uint64_t sub_2386EBC08()
{
  v1 = *(v0 + 136);
  v2 = *(v0 + 112);
  v3 = *(v0 + 120);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    (*(*(v0 + 216) + 8))(*(v0 + 224), *(v0 + 208));

LABEL_3:

    v4 = *(v0 + 8);

    return v4();
  }

  v6 = *(v0 + 368);
  v8 = *(v0 + 72);
  v7 = *(v0 + 80);
  v9 = *(v0 + 64);
  (*(v3 + 32))(*(v0 + 128), v1, v2);
  sub_23875BFD0();
  if ((*(v8 + 88))(v7, v9) == v6)
  {
    v10 = *(v0 + 264);
    v11 = *(v0 + 232);
    v12 = *(v0 + 240);
    v14 = *(v0 + 96);
    v13 = *(v0 + 104);
    v16 = *(v0 + 80);
    v15 = *(v0 + 88);
    (*(*(v0 + 72) + 96))(v16, *(v0 + 64));
    (*(v14 + 32))(v13, v16, v15);
    sub_23875BFA0();
    if ((*(v12 + 48))(v10, 1, v11) != 1)
    {
      v29 = *(v0 + 272);
      v28 = *(v0 + 280);
      v30 = *(v0 + 264);
      v31 = *(v0 + 240);
      v32 = *(v0 + 248);
      v33 = *(v0 + 232);
      v34 = *(v0 + 216);
      v41 = *(v0 + 208);
      v42 = *(v0 + 224);
      v35 = *(v0 + 120);
      v39 = *(v0 + 112);
      v40 = *(v0 + 128);
      v36 = *(v0 + 96);
      v37 = *(v0 + 88);
      v38 = *(v0 + 104);

      (*(v31 + 32))(v32, v30, v33);
      (*(v31 + 16))(v28, v32, v33);
      (*(v31 + 56))(v28, 0, 1, v33);
      type metadata accessor for ExtractedOrderDetailsShippingFulfillment(0);
      sub_23843981C(v28, v29, &qword_27DF0D040, &qword_2387676A0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF0D100, &qword_23876CA08);
      sub_23875E1C0();
      sub_238439884(v28, &qword_27DF0D040, &qword_2387676A0);
      (*(v31 + 8))(v32, v33);
      (*(v36 + 8))(v38, v37);
      (*(v35 + 8))(v40, v39);
      (*(v34 + 8))(v42, v41);
      goto LABEL_3;
    }

    v17 = *(v0 + 264);
    v19 = *(v0 + 120);
    v18 = *(v0 + 128);
    v20 = *(v0 + 112);
    (*(*(v0 + 96) + 8))(*(v0 + 104), *(v0 + 88));
    (*(v19 + 8))(v18, v20);
    sub_238439884(v17, &qword_27DF0D040, &qword_2387676A0);
  }

  else
  {
    v22 = *(v0 + 72);
    v21 = *(v0 + 80);
    v23 = *(v0 + 64);
    (*(*(v0 + 120) + 8))(*(v0 + 128), *(v0 + 112));
    (*(v22 + 8))(v21, v23);
  }

  v24 = sub_23875ED40();
  *(v0 + 352) = v24;
  swift_getAssociatedConformanceWitness();
  v25 = swift_task_alloc();
  *(v0 + 360) = v25;
  *v25 = v0;
  v25[1] = sub_2386EBAF4;
  v26 = *(v0 + 136);
  v27 = MEMORY[0x277D85700];

  return MEMORY[0x282200310](v26, v24, v27);
}

double sub_2386EC114()
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (qword_2814F0880 != -1)
  {
    swift_once();
  }

  v0 = qword_2814F1B90;
  v1 = sub_23875EA50();
  v2 = sub_23875EA50();
  v3 = sub_23875EA50();
  v4 = [v0 localizedStringForKey:v1 value:v2 table:v3];

  sub_23875EA80();
  sub_2384397A8(v5, v6, v7);
  sub_23875E190();

  return result;
}

double sub_2386EC2B8@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v17[2] = a6;
  v17[3] = a7;
  v17[0] = a2;
  v17[1] = a8;
  v10 = type metadata accessor for ExtractedOrderDetailsShippingFulfillment(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10 - 8);
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_2386EC9B0(a1, v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ExtractedOrderDetailsShippingFulfillment);
  v13 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v14 = swift_allocObject();
  sub_2386EC948(v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v14 + v13, type metadata accessor for ExtractedOrderDetailsShippingFulfillment);
  v15 = (v14 + ((v12 + v13 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v15 = v17[0];
  v15[1] = a3;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A2F0, &unk_23876BB30);
  sub_23843A3E8(&qword_27DF0A2F8, &qword_27DF0A2F0, &unk_23876BB30, MEMORY[0x277CDEFF0]);
  sub_23875E200();

  return result;
}

void sub_2386EC4C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_23875CDB0();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v9 = a1 + *(type metadata accessor for ExtractedOrderDetailsShippingFulfillment(0) + 24);
  if ((*(v9 + 8) & 1) == 0)
  {
    v10 = *v9;

    sub_23875EFF0();
    v11 = sub_23875D730();
    sub_23875C110();

    sub_23875CDA0();
    swift_getAtKeyPath();
    sub_2385A9698(v10, 0);
    (*(v6 + 8))(v8, v5);
  }

  v12 = [objc_opt_self() generalPasteboard];
  v13 = sub_23875EA50();
  [v12 setString_];
}

double sub_2386EC6DC()
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (qword_2814F0880 != -1)
  {
    swift_once();
  }

  v0 = qword_2814F1B90;
  v1 = sub_23875EA50();
  v2 = sub_23875EA50();
  v3 = sub_23875EA50();
  v4 = [v0 localizedStringForKey:v1 value:v2 table:v3];

  sub_23875EA80();
  sub_2384397A8(v5, v6, v7);
  sub_23875E190();

  return result;
}

uint64_t sub_2386EC87C()
{
  type metadata accessor for ExtractedOrderDetailsShippingFulfillment(0);
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2384494A4;

  return sub_2386EAFE4();
}

uint64_t sub_2386EC948(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_2386EC9B0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t objectdestroy_13Tm()
{
  v1 = type metadata accessor for ExtractedOrderDetailsShippingFulfillment(0);
  v2 = *(*(v1 - 1) + 80);
  v23 = *(*(v1 - 1) + 64);
  v24 = (v2 + 16) & ~v2;
  v3 = v0 + v24;
  v4 = sub_2387581B0();
  (*(*(v4 - 8) + 8))(v0 + v24, v4);
  v5 = v0 + v24 + *(type metadata accessor for ExtractedOrderDetailsShippingFulfillment.ViewModel(0) + 20);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0BB60, &unk_2387692D0);
  (*(*(v6 - 8) + 8))(v5, v6);
  v7 = _s19ShippingFulfillmentO12StatusValuesVMa(0);
  v8 = v7[5];
  v9 = sub_238757FA0();
  v10 = *(v9 - 8);
  if (!(*(v10 + 48))(v5 + v8, 1, v9))
  {
    (*(v10 + 8))(v5 + v8, v9);
  }

  v11 = v7[6];
  v12 = sub_238757F70();
  v13 = *(v12 - 8);
  if (!(*(v13 + 48))(v5 + v11, 1, v12))
  {
    (*(v13 + 8))(v5 + v11, v12);
  }

  v14 = v7[7];
  v15 = sub_238757F90();
  v16 = *(v15 - 8);
  if (!(*(v16 + 48))(v5 + v14, 1, v15))
  {
    (*(v16 + 8))(v5 + v14, v15);
  }

  v17 = v1[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D340, &qword_238764740);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v18 = sub_23875C880();
    (*(*(v18 - 8) + 8))(v3 + v17, v18);
  }

  else
  {
  }

  sub_2385A9698(*(v3 + v1[6]), *(v3 + v1[6] + 8));
  v19 = v3 + v1[7];
  v20 = sub_23875B940();
  v21 = *(v20 - 8);
  if (!(*(v21 + 48))(v19, 1, v20))
  {
    (*(v21 + 8))(v19, v20);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF0D100, &qword_23876CA08);

  return MEMORY[0x2821FE8E8](v0, ((v23 + v24 + 7) & 0xFFFFFFFFFFFFFFF8) + 16, v2 | 7);
}

void sub_2386ECF14(uint64_t a1)
{
  v3 = *(type metadata accessor for ExtractedOrderDetailsShippingFulfillment(0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));
  sub_2386EC4C8(v1 + v4, *v5, v5[1], a1);
}

uint64_t sub_2386ECFA8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2386ED008(uint64_t a1, uint64_t a2)
{
  sub_2387581B0();
  sub_2386ED1B4(&qword_27DF149C8, MEMORY[0x277CC6E68], MEMORY[0x277CC6E78]);
  sub_23875EC40();
  sub_23875EC40();
  if (v30 != v29)
  {
    return 0;
  }

  v4 = type metadata accessor for ExtractedOrderDetailsShippingFulfillment.ViewModel(0);
  if ((sub_238601FBC(a1 + v4[5], a2 + v4[5]) & 1) == 0)
  {
    return 0;
  }

  v5 = v4[6];
  v6 = (a1 + v5);
  v7 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  v9 = v8[1];
  if (v7)
  {
    if (!v9)
    {
      return 0;
    }

    v10 = *v6 == *v8 && v7 == v9;
    if (!v10 && (sub_23875F630() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v9)
  {
    return 0;
  }

  v11 = v4[7];
  v12 = (a1 + v11);
  v13 = *(a1 + v11 + 8);
  v14 = (a2 + v11);
  v15 = v14[1];
  if (v13)
  {
    if (v15)
    {
      v16 = *v12 == *v14 && v13 == v15;
      if (v16 || (sub_23875F630() & 1) != 0)
      {
        goto LABEL_19;
      }
    }

    return 0;
  }

  if (v15)
  {
    return 0;
  }

LABEL_19:
  v17 = v4[8];
  v18 = *(a1 + v17);
  v19 = *(a1 + v17 + 8);
  v20 = *(a1 + v17 + 16);
  v21 = *(a1 + v17 + 24);
  v22 = (a2 + v17);
  v23 = *v22;
  v24 = *(v22 + 1);
  v25 = *(v22 + 2);
  v26 = v22[24];
  v27 = (v19 == v24) & ~(v18 ^ v23);
  if (v20 != v25)
  {
    v27 = 0;
  }

  return v27 & (v21 ^ v26 ^ 1u);
}

uint64_t sub_2386ED1B4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

UIImage __swiftcall UIImage.init(cgImage:)(CGImageRef cgImage)
{
  v2 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithCGImage:cgImage scale:0 orientation:1.0];

  return v2;
}

void static UIImage.downsampledImage(with:size:scale:)(void *a1, double a2, double a3, double a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF149E0, &qword_238781550);
  inited = swift_initStackObject();
  v9 = MEMORY[0x277CD3618];
  *(inited + 16) = xmmword_2387632F0;
  v10 = *v9;
  *(inited + 32) = v10;
  *(inited + 40) = 0;
  v11 = v10;
  sub_23854C234(inited);
  swift_setDeallocating();
  sub_2386ED5A8(inited + 32);
  type metadata accessor for CFString(0);
  sub_2386E6B34();
  v12 = MEMORY[0x277D839B0];
  v13 = sub_23875E910();

  if (a1[2])
  {
    v14 = a1[4];
    v15 = a1[5];
    sub_23844C8EC(v14, v15);
    v16 = sub_23875B980();
    v17 = CGImageSourceCreateWithData(v16, v13);

    if (v17)
    {
      v40 = v14;
      v41 = v13;
      if (a2 > a3)
      {
        v21 = a2;
      }

      else
      {
        v21 = a3;
      }

      v22 = v21 * a4;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF148F8, &unk_2387810E0);
      v23 = swift_initStackObject();
      v24 = *MEMORY[0x277CD3620];
      *(v23 + 32) = *MEMORY[0x277CD3620];
      *(v23 + 16) = xmmword_238763310;
      *(v23 + 40) = 1;
      v25 = *MEMORY[0x277CD3568];
      *(v23 + 64) = v12;
      *(v23 + 72) = v25;
      *(v23 + 80) = 1;
      v26 = *MEMORY[0x277CD3578];
      *(v23 + 104) = v12;
      *(v23 + 112) = v26;
      *(v23 + 120) = 1;
      v27 = *MEMORY[0x277CD3660];
      *(v23 + 144) = v12;
      *(v23 + 152) = v27;
      *(v23 + 184) = MEMORY[0x277D85048];
      *(v23 + 160) = v22;
      v28 = v24;
      v29 = v25;
      v30 = v26;
      v31 = v27;
      v32 = v17;
      sub_23854B8F0(v23);
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0DE68, &qword_23876E858);
      swift_arrayDestroy();
      v33 = sub_23875E910();

      ThumbnailAtIndex = CGImageSourceCreateThumbnailAtIndex(v32, 0, v33);
      if (ThumbnailAtIndex)
      {
        v37 = ThumbnailAtIndex;

        [objc_allocWithZone(MEMORY[0x277D755B8]) initWithCGImage:v37 scale:0 orientation:1.0];
        sub_23844C954(v40, v15);

        return;
      }

      sub_2386ED610(0, v35, v36);
      swift_allocError();
      *v39 = 1;
      swift_willThrow();

      v14 = v40;
      v13 = v41;
    }

    else
    {
      sub_2386ED610(v18, v19, v20);
      swift_allocError();
      *v38 = 0;
      swift_willThrow();
    }

    sub_23844C954(v14, v15);
  }

  else
  {
    __break(1u);
  }
}