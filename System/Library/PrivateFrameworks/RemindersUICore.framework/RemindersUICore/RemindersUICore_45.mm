uint64_t sub_21D515A94(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_21D515AF4()
{
  v1 = *(v0 + 24);
  ObjectType = swift_getObjectType();
  return (*(v1 + 24))(ObjectType, v1);
}

uint64_t sub_21D515B58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for TTRReminderPrintingPresenterCapability.ViewModelGenerationConfiguration(0) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = *(v2 + 16);
  v8 = *(v2 + 24);
  v9 = *(v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_21D50DB9C(a1, v7, v8, (v2 + v6), v9, a2);
}

uint64_t sub_21D515C14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(v2 + 16);
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5D650, &qword_21DC19DA8) + 48);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5D630, &unk_21DC19D80);
  return v5(a2, a2 + *(v7 + 48), a1, a1 + v6);
}

uint64_t sub_21D515C94(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21D515E28@<X0>(__int128 *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *(sub_21DBF54CC() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 23) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v2 + v7);
  v10 = *v9;
  v11 = v9[1];
  v12 = *(v2 + v8);

  return sub_21D510B00(a1, v2 + v6, v10, v11, v12, a2);
}

uint64_t sub_21D515EF0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_21D5169E8(a1, *(v2 + 16), *(v2 + 24), *(v2 + 32));
  *a2 = result;
  return result;
}

uint64_t sub_21D515F20(uint64_t a1, uint64_t a2)
{
  result = *a1;
  v5 = *(a1 + 8);
  v6 = *a2;
  v7 = *(a2 + 8);
  v8 = *(a2 + 16);
  if (*(a1 + 16))
  {
    if (*(a2 + 16))
    {
      result = MEMORY[0x223D444F0](result, v5, v6, v7);
      if ((result & 1) == 0)
      {
        goto LABEL_4;
      }

LABEL_11:
      __break(1u);
      goto LABEL_12;
    }

LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (*(a2 + 16))
  {
    goto LABEL_18;
  }

  if (v5 != v7)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (result < v6)
  {
    goto LABEL_11;
  }

LABEL_4:
  v6 = *(a1 + 24);
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  result = *(a2 + 24);
  v5 = *(a2 + 32);
  if (*(a2 + 40))
  {
    if (*(a1 + 40))
    {
      result = MEMORY[0x223D444F0](result, v5, v6, v7);
      if ((result & 1) == 0)
      {
        return result;
      }

LABEL_15:
      __break(1u);
      goto LABEL_16;
    }

LABEL_19:
    __break(1u);
    return result;
  }

LABEL_12:
  if (v8)
  {
    goto LABEL_19;
  }

  if (v5 != v7)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (result < v6)
  {
    goto LABEL_15;
  }

  return result;
}

uint64_t sub_21D515FC8(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v10 = type metadata accessor for TTRReminderPrintingPresenterCapability.ProcessedReminder(0);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5D770, &unk_21DC19E70);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = (&v38 - v15);
  v17 = -1 << *(a1 + 32);
  v18 = ~v17;
  v19 = *(a1 + 64);
  v20 = -v17;
  v39 = a1;
  v40 = a1 + 64;
  if (v20 < 64)
  {
    v21 = ~(-1 << v20);
  }

  else
  {
    v21 = -1;
  }

  v41 = v18;
  v42 = 0;
  v43 = v21 & v19;
  v44 = a2;
  v45 = a3;
  sub_21DBF8E0C();
  v38 = a3;

  while (1)
  {
    sub_21DA5F158(v16);
    v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5D778, &unk_21DC38BD0);
    if ((*(*(v22 - 8) + 48))(v16, 1, v22) == 1)
    {
      sub_21D0CFAF8(v39);
    }

    v23 = *v16;
    sub_21D514D7C(v16 + *(v22 + 48), v13, type metadata accessor for TTRReminderPrintingPresenterCapability.ProcessedReminder);
    v24 = *a5;
    v26 = sub_21D17E07C(v23);
    v27 = v24[2];
    v28 = (v25 & 1) == 0;
    v29 = v27 + v28;
    if (__OFADD__(v27, v28))
    {
      break;
    }

    v30 = v25;
    if (v24[3] >= v29)
    {
      if (a4)
      {
        v33 = *a5;
        if ((v25 & 1) == 0)
        {
          goto LABEL_14;
        }
      }

      else
      {
        sub_21D2238D0();
        v33 = *a5;
        if ((v30 & 1) == 0)
        {
          goto LABEL_14;
        }
      }

LABEL_5:

      sub_21D5171BC(v13, v33[7] + *(v11 + 72) * v26, type metadata accessor for TTRReminderPrintingPresenterCapability.ProcessedReminder);
      a4 = 1;
    }

    else
    {
      sub_21D21B34C(v29, a4 & 1);
      v31 = sub_21D17E07C(v23);
      if ((v30 & 1) != (v32 & 1))
      {
        goto LABEL_21;
      }

      v26 = v31;
      v33 = *a5;
      if (v30)
      {
        goto LABEL_5;
      }

LABEL_14:
      v33[(v26 >> 6) + 8] |= 1 << v26;
      *(v33[6] + 8 * v26) = v23;
      sub_21D514D7C(v13, v33[7] + *(v11 + 72) * v26, type metadata accessor for TTRReminderPrintingPresenterCapability.ProcessedReminder);
      v34 = v33[2];
      v35 = __OFADD__(v34, 1);
      v36 = v34 + 1;
      if (v35)
      {
        goto LABEL_20;
      }

      v33[2] = v36;
      a4 = 1;
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  sub_21D0D8CF0(0, &qword_280D17880, 0x277D44700);
  result = sub_21DBFC70C();
  __break(1u);
  return result;
}

uint64_t sub_21D516320(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE65260, &unk_21DC09040);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v44 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5D760, &qword_21DC19E68);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = (&v44 - v15);
  v17 = -1 << *(a1 + 32);
  v18 = ~v17;
  v19 = *(a1 + 64);
  v20 = -v17;
  v45 = a1;
  v46 = a1 + 64;
  if (v20 < 64)
  {
    v21 = ~(-1 << v20);
  }

  else
  {
    v21 = -1;
  }

  v47 = v18;
  v48 = 0;
  v49 = v21 & v19;
  v50 = a2;
  v51 = a3;
  sub_21DBF8E0C();
  v44 = a3;

  while (1)
  {
    sub_21DA5ED28(v16);
    v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE65270, &unk_21DC09030);
    if ((*(*(v22 - 8) + 48))(v16, 1, v22) == 1)
    {
      sub_21D0CFAF8(v45);
    }

    v23 = *(v22 + 48);
    v24 = v16[3];
    v54 = v16[2];
    v55 = v24;
    v56 = v16[4];
    v25 = v16[1];
    v52 = *v16;
    v53 = v25;
    sub_21D0D523C(v16 + v23, v13, &qword_27CE65260, &unk_21DC09040);
    v26 = *a5;
    v28 = sub_21D17E454(&v52);
    v29 = v26[2];
    v30 = (v27 & 1) == 0;
    v31 = v29 + v30;
    if (__OFADD__(v29, v30))
    {
      break;
    }

    v32 = v27;
    if (v26[3] >= v31)
    {
      if (a4)
      {
        v35 = *a5;
        if ((v27 & 1) == 0)
        {
          goto LABEL_14;
        }
      }

      else
      {
        sub_21D2217E0();
        v35 = *a5;
        if ((v32 & 1) == 0)
        {
          goto LABEL_14;
        }
      }

LABEL_5:
      sub_21D1D9B90(&v52);
      sub_21D0F02F4(v13, v35[7] + *(v11 + 72) * v28, &qword_27CE65260, &unk_21DC09040);
      a4 = 1;
    }

    else
    {
      sub_21D217ABC(v31, a4 & 1);
      v33 = sub_21D17E454(&v52);
      if ((v32 & 1) != (v34 & 1))
      {
        goto LABEL_21;
      }

      v28 = v33;
      v35 = *a5;
      if (v32)
      {
        goto LABEL_5;
      }

LABEL_14:
      v35[(v28 >> 6) + 8] |= 1 << v28;
      v36 = (v35[6] + 80 * v28);
      *v36 = v52;
      v37 = v53;
      v38 = v54;
      v39 = v56;
      v36[3] = v55;
      v36[4] = v39;
      v36[1] = v37;
      v36[2] = v38;
      sub_21D0D523C(v13, v35[7] + *(v11 + 72) * v28, &qword_27CE65260, &unk_21DC09040);
      v40 = v35[2];
      v41 = __OFADD__(v40, 1);
      v42 = v40 + 1;
      if (v41)
      {
        goto LABEL_20;
      }

      v35[2] = v42;
      a4 = 1;
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  result = sub_21DBFC70C();
  __break(1u);
  return result;
}

uint64_t sub_21D516690(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v10 = type metadata accessor for TTRReminderPrintingPresenterCapability.Thumbnail(0);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5D758, &qword_21DC19E50);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = (&v39 - v15);
  v17 = -1 << *(a1 + 32);
  v18 = ~v17;
  v19 = *(a1 + 64);
  v20 = -v17;
  v40 = a1;
  v41 = a1 + 64;
  if (v20 < 64)
  {
    v21 = ~(-1 << v20);
  }

  else
  {
    v21 = -1;
  }

  v42 = v18;
  v43 = 0;
  v44 = v21 & v19;
  v45 = a2;
  v46 = a3;
  sub_21DBF8E0C();
  v39 = a3;

  while (1)
  {
    sub_21DA5E964(v16);
    v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE65250, &qword_21DC19E58);
    if ((*(*(v22 - 8) + 48))(v16, 1, v22) == 1)
    {
      sub_21D0CFAF8(v40);
    }

    v23 = *v16;
    sub_21D514D7C(v16 + *(v22 + 48), v13, type metadata accessor for TTRReminderPrintingPresenterCapability.Thumbnail);
    v24 = *a5;
    v26 = sub_21D17E07C(v23);
    v28 = v24[2];
    v29 = (v25 & 1) == 0;
    v30 = v28 + v29;
    if (__OFADD__(v28, v29))
    {
      break;
    }

    v31 = v25;
    if (v24[3] >= v30)
    {
      if (a4)
      {
        v34 = *a5;
        if ((v25 & 1) == 0)
        {
          goto LABEL_14;
        }
      }

      else
      {
        sub_21D223698(v27);
        v34 = *a5;
        if ((v31 & 1) == 0)
        {
          goto LABEL_14;
        }
      }

LABEL_5:

      sub_21D5171BC(v13, v34[7] + *(v11 + 72) * v26, type metadata accessor for TTRReminderPrintingPresenterCapability.Thumbnail);
      a4 = 1;
    }

    else
    {
      sub_21D21B004(v30, a4 & 1, v27);
      v32 = sub_21D17E07C(v23);
      if ((v31 & 1) != (v33 & 1))
      {
        goto LABEL_21;
      }

      v26 = v32;
      v34 = *a5;
      if (v31)
      {
        goto LABEL_5;
      }

LABEL_14:
      v34[(v26 >> 6) + 8] |= 1 << v26;
      *(v34[6] + 8 * v26) = v23;
      sub_21D514D7C(v13, v34[7] + *(v11 + 72) * v26, type metadata accessor for TTRReminderPrintingPresenterCapability.Thumbnail);
      v35 = v34[2];
      v36 = __OFADD__(v35, 1);
      v37 = v35 + 1;
      if (v36)
      {
        goto LABEL_20;
      }

      v34[2] = v37;
      a4 = 1;
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  sub_21D0D8CF0(0, &qword_280D17880, 0x277D44700);
  result = sub_21DBFC70C();
  __break(1u);
  return result;
}

uint64_t sub_21D5169E8(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v50 = a4;
  v51 = a2;
  v52 = a3;
  v5 = type metadata accessor for TTRReminderPrintingPresenterCapability.GenerationResult(0);
  v56 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v57 = v6;
  v61 = &v49[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5F250, &unk_21DC13240);
  MEMORY[0x28223BE20](v7 - 8);
  v53 = &v49[-v8];
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5D728, &qword_21DC19E38);
  v59 = *(v63 - 8);
  MEMORY[0x28223BE20](v63);
  v55 = &v49[-v9];
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5D730, &qword_21DC19E40);
  v58 = *(v62 - 8);
  MEMORY[0x28223BE20](v62);
  v54 = &v49[-v10];
  v11 = type metadata accessor for TTRReminderPrintingPresenterCapability.ProcessedReminder(0);
  v65 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = &v49[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v64 = v5;
  v14 = *(v5 + 20);
  v60 = a1;
  v15 = *(a1 + v14);
  v73 = MEMORY[0x277D84FA0];
  v16 = 1 << *(v15 + 32);
  v17 = -1;
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  v18 = v17 & *(v15 + 64);
  v19 = (v16 + 63) >> 6;
  result = swift_bridgeObjectRetain_n();
  v21 = 0;
  while (v18)
  {
    v22 = v21;
LABEL_10:
    v23 = __clz(__rbit64(v18));
    v18 &= v18 - 1;
    sub_21D515C94(*(v15 + 56) + *(v65 + 72) * (v23 | (v22 << 6)), v13, type metadata accessor for TTRReminderPrintingPresenterCapability.ProcessedReminder);
    v24 = &v13[*(v11 + 20)];
    v25 = *(v24 + 1);
    if (v25 != 1)
    {
      v26 = *(v24 + 2);
      v74[1] = *(v24 + 1);
      v74[2] = v26;
      v27 = *(v24 + 4);
      v29 = *(v24 + 1);
      v28 = *(v24 + 2);
      v74[3] = *(v24 + 3);
      v74[4] = v27;
      *&v74[0] = *v24;
      *(&v74[0] + 1) = v25;
      v67[0] = *&v74[0];
      v67[1] = v25;
      v68 = v29;
      v69 = v28;
      v30 = *(v24 + 4);
      v70 = *(v24 + 3);
      v71 = v30;
      sub_21D1D9B34(v67, v72);
      sub_21D29D138(v66, v74);
      v72[2] = v66[2];
      v72[3] = v66[3];
      v72[4] = v66[4];
      v72[0] = v66[0];
      v72[1] = v66[1];
      sub_21D1D9B90(v72);
    }

    result = sub_21D515A94(v13, type metadata accessor for TTRReminderPrintingPresenterCapability.ProcessedReminder);
    v21 = v22;
  }

  while (1)
  {
    v22 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      break;
    }

    if (v22 >= v19)
    {

      v31 = v73;
      v32 = *(v73 + 16);
      if (!v32)
      {
        goto LABEL_15;
      }

      v33 = sub_21D9D660C(*(v73 + 16), 0);
      v34 = sub_21D9D55E8(v72, v33 + 32, v32, v31);
      sub_21D0CFAF8(*&v72[0]);
      if (v34 != v32)
      {
        __break(1u);
LABEL_15:

        v33 = MEMORY[0x277D84F90];
      }

      ObjectType = swift_getObjectType();
      v36 = v60;
      v37 = (*(v52 + 40))(v33, v60, v50 & 1, ObjectType, 12.0, 12.0, 5.0);

      *&v72[0] = v37;
      sub_21DBF60DC();
      v38 = sub_21DBF60AC();
      v67[0] = v38;
      v39 = sub_21DBFB0DC();
      v40 = v53;
      (*(*(v39 - 8) + 56))(v53, 1, 1, v39);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5D738, &qword_21DC19E48);
      sub_21D0D8CF0(0, &qword_280D1B900, 0x277D85C78);
      sub_21D0D0F1C(&qword_27CE5D740, &qword_27CE5D738, &qword_21DC19E48, MEMORY[0x277CBCD90]);
      sub_21D47130C();
      v41 = v55;
      sub_21DBF936C();
      sub_21D0CF7E0(v40, &unk_27CE5F250, &unk_21DC13240);

      v42 = v61;
      sub_21D515C94(v36, v61, type metadata accessor for TTRReminderPrintingPresenterCapability.GenerationResult);
      v43 = (*(v56 + 80) + 16) & ~*(v56 + 80);
      v44 = swift_allocObject();
      sub_21D514D7C(v42, v44 + v43, type metadata accessor for TTRReminderPrintingPresenterCapability.GenerationResult);
      sub_21D0D0F1C(&qword_27CE5D748, &qword_27CE5D728, &qword_21DC19E38, MEMORY[0x277CBCD60]);
      v45 = v54;
      v46 = v63;
      sub_21DBF927C();

      (*(v59 + 8))(v41, v46);
      sub_21D0D0F1C(&qword_27CE5D750, &qword_27CE5D730, &qword_21DC19E40, MEMORY[0x277CBCC08]);
      v47 = v62;
      v48 = sub_21DBF920C();
      (*(v58 + 8))(v45, v47);
      return v48;
    }

    v18 = *(v15 + 64 + 8 * v22);
    ++v21;
    if (v18)
    {
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

void sub_21D51713C(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for TTRReminderPrintingPresenterCapability.GenerationResult(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  sub_21D514020(a1, v6, a2);
}

uint64_t sub_21D5171BC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

double sub_21D517224(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
    sub_21DBF8E0C();
  }

  return result;
}

void sub_21D517230(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *(sub_21DBF54CC() - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 23) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v2 + 16);
  v10 = (v2 + v7);
  v11 = *v10;
  v12 = v10[1];
  v13 = *(v2 + v8);

  sub_21D511214(a1, v9, v2 + v6, v11, v12, v13, a2);
}

double sub_21D517310@<D0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v7 = *(sub_21DBF54CC() - 8);
  v8 = v3 + ((*(v7 + 80) + 16) & ~*(v7 + 80));

  return sub_21D5127B8(a1, a2, v8, a3);
}

uint64_t sub_21D517398(uint64_t a1, void *a2, uint64_t a3)
{
  v32 = a2;
  v33 = a3;
  v4 = type metadata accessor for TTRReminderPrintingPresenterCapability.ProcessedReminder(0);
  v29 = *(v4 - 8);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59C28, &qword_21DC0CEB8);
  result = sub_21DBFC3DC();
  v8 = result;
  v9 = 0;
  v30 = result;
  v31 = a1;
  v12 = *(a1 + 64);
  v11 = a1 + 64;
  v10 = v12;
  v13 = 1 << *(v11 - 32);
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v15 = v14 & v10;
  v16 = (v13 + 63) >> 6;
  v28 = result + 64;
  if ((v14 & v10) != 0)
  {
    while (1)
    {
      v17 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_10:
      v20 = v17 | (v9 << 6);
      v21 = *(*(v31 + 56) + 8 * v20);
      v22 = *(*(v31 + 48) + 8 * v20);
      v23 = v21;
      sub_21D511BF4(v23, v32, v6);

      if (v34)
      {
        break;
      }

      *(v28 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      v24 = v29;
      v8 = v30;
      *(*(v30 + 48) + 8 * v20) = v22;
      result = sub_21D514D7C(v6, *(v8 + 56) + *(v24 + 72) * v20, type metadata accessor for TTRReminderPrintingPresenterCapability.ProcessedReminder);
      v25 = *(v8 + 16);
      v26 = __OFADD__(v25, 1);
      v27 = v25 + 1;
      if (v26)
      {
        goto LABEL_17;
      }

      *(v8 + 16) = v27;
      if (!v15)
      {
        goto LABEL_5;
      }
    }

    v8 = v30;

    return v8;
  }

  else
  {
LABEL_5:
    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v9 >= v16)
      {
        return v8;
      }

      v19 = *(v11 + 8 * v9);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
        goto LABEL_10;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
  }

  return result;
}

uint64_t sub_21D5175C8@<X0>(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *(sub_21DBF54CC() - 8);
  v6 = *(v2 + 32);
  v7 = v2 + ((*(v5 + 80) + 40) & ~*(v5 + 80));

  return sub_21D51338C(a1, v6, v7, a2);
}

id sub_21D517650@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = *(type metadata accessor for TTRReminderPrintingPresenterCapability.ImageAttachment(0) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = *v7;
  v9 = v7[1];

  return sub_21D513B7C(a1, (v2 + v6), a2, v8, v9);
}

uint64_t sub_21D517700(uint64_t a1, void *a2, void *a3)
{
  v27[1] = a3;
  v27[0] = a2;
  v3 = type metadata accessor for TTRReminderPrintingPresenterCapability.ProcessedReminder(0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_21DBFBD7C())
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59C28, &qword_21DC0CEB8);
    v7 = sub_21DBFC40C();
  }

  else
  {
    v7 = MEMORY[0x277D84F98];
  }

  v30 = v7;
  sub_21DBFC21C();
  swift_unknownObjectRetain();
  v8 = sub_21DBFC2DC();
  if (v8)
  {
    v10 = v9;
    v11 = v8;
    sub_21D0D8CF0(0, &qword_280D17880, 0x277D44700);
    v12 = v11;
    while (1)
    {
      v28 = v12;
      swift_dynamicCast();
      v27[3] = v10;
      sub_21D0D8CF0(0, &qword_280D17860, 0x277D44750);
      swift_dynamicCast();
      v20 = v29;
      sub_21D511BF4(v28, v27[0], v6);
      if (v27[2])
      {
        break;
      }

      v21 = *(v7 + 16);
      if (*(v7 + 24) <= v21)
      {
        sub_21D21B34C(v21 + 1, 1);
      }

      v7 = v30;
      result = sub_21DBFB62C();
      v14 = v7 + 64;
      v15 = -1 << *(v7 + 32);
      v16 = result & ~v15;
      v17 = v16 >> 6;
      if (((-1 << v16) & ~*(v7 + 64 + 8 * (v16 >> 6))) != 0)
      {
        v18 = __clz(__rbit64((-1 << v16) & ~*(v7 + 64 + 8 * (v16 >> 6)))) | v16 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v22 = 0;
        v23 = (63 - v15) >> 6;
        do
        {
          if (++v17 == v23 && (v22 & 1) != 0)
          {
            __break(1u);
            return result;
          }

          v24 = v17 == v23;
          if (v17 == v23)
          {
            v17 = 0;
          }

          v22 |= v24;
          v25 = *(v14 + 8 * v17);
        }

        while (v25 == -1);
        v18 = __clz(__rbit64(~v25)) + (v17 << 6);
      }

      *(v14 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      *(*(v7 + 48) + 8 * v18) = v20;
      sub_21D514D7C(v6, *(v7 + 56) + *(v4 + 72) * v18, type metadata accessor for TTRReminderPrintingPresenterCapability.ProcessedReminder);
      ++*(v7 + 16);
      v12 = sub_21DBFC2DC();
      v10 = v19;
      if (!v12)
      {
        goto LABEL_20;
      }
    }

    v26 = v28;
  }

  else
  {
LABEL_20:
  }

  return v7;
}

uint64_t sub_21D517A50(uint64_t a1)
{
  result = sub_21DBF54CC();
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

void **sub_21D517AE4(void **a1, char **a2, uint64_t a3)
{
  v3 = *(*(a3 - 8) + 80);
  v4 = *a2;
  *a1 = *a2;
  if ((v3 & 0x20000) != 0)
  {
    v6 = &v4[(v3 + 16) & ~v3];
  }

  else
  {
    v6 = a1;
    v7 = *(a3 + 20);
    v9 = sub_21DBF54CC();
    v10 = *(*(v9 - 8) + 16);
    v11 = v4;
    v10(v6 + v7, a2 + v7, v9);
    *(v6 + *(a3 + 24)) = *(a2 + *(a3 + 24));
  }

  return v6;
}

uint64_t sub_21D517BCC(id *a1, uint64_t a2)
{
  v4 = *(a2 + 20);
  v5 = sub_21DBF54CC();
  v6 = *(*(v5 - 8) + 8);

  return v6(a1 + v4, v5);
}

void **sub_21D517C40(void **a1, void **a2, uint64_t a3)
{
  v6 = *a2;
  *a1 = *a2;
  v7 = *(a3 + 20);
  v8 = sub_21DBF54CC();
  v9 = *(*(v8 - 8) + 16);
  v10 = v6;
  v9(a1 + v7, a2 + v7, v8);
  *(a1 + *(a3 + 24)) = *(a2 + *(a3 + 24));
  return a1;
}

void **sub_21D517CE0(void **a1, void **a2, uint64_t a3)
{
  v6 = *a2;
  v7 = *a1;
  *a1 = *a2;
  v8 = v6;

  v9 = *(a3 + 20);
  v10 = sub_21DBF54CC();
  (*(*(v10 - 8) + 24))(a1 + v9, a2 + v9, v10);
  v11 = *(a3 + 24);
  v12 = (a1 + v11);
  v13 = (a2 + v11);
  *v12 = *v13;
  v12[1] = v13[1];
  return a1;
}

char *sub_21D517D84(char *a1, char *a2, uint64_t a3)
{
  *a1 = *a2;
  v6 = *(a3 + 20);
  v7 = sub_21DBF54CC();
  (*(*(v7 - 8) + 32))(&a1[v6], &a2[v6], v7);
  *&a1[*(a3 + 24)] = *&a2[*(a3 + 24)];
  return a1;
}

void **sub_21D517E0C(void **a1, void **a2, uint64_t a3)
{
  v6 = *a1;
  *a1 = *a2;

  v7 = *(a3 + 20);
  v8 = sub_21DBF54CC();
  (*(*(v8 - 8) + 40))(a1 + v7, a2 + v7, v8);
  *(a1 + *(a3 + 24)) = *(a2 + *(a3 + 24));
  return a1;
}

uint64_t sub_21D517EC4(uint64_t a1)
{
  result = sub_21DBF54CC();
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

void *sub_21D517F68(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v4 = a1;
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v18 = *a2;
    *v4 = *a2;
    v4 = (v18 + ((v5 + 16) & ~v5));
  }

  else
  {
    *a1 = *a2;
    v41 = a2[1];
    *(a1 + 8) = v41;
    *(a1 + 16) = *(a2 + 16);
    v6 = a2[4];
    *(a1 + 24) = a2[3];
    *(a1 + 32) = v6;
    v7 = a2[6];
    *(a1 + 40) = a2[5];
    *(a1 + 48) = v7;
    v8 = a2[8];
    *(a1 + 56) = a2[7];
    *(a1 + 64) = v8;
    v9 = a2[10];
    *(a1 + 72) = a2[9];
    *(a1 + 80) = v9;
    *(a1 + 88) = *(a2 + 88);
    v10 = a2[13];
    *(a1 + 96) = a2[12];
    *(a1 + 104) = v10;
    v11 = type metadata accessor for TTRRemindersPrintingViewModel.Reminder(0);
    v12 = *(v11 + 48);
    __dst = v4 + v12;
    v43 = v11;
    v40 = a2 + v12;
    v13 = type metadata accessor for TTRRemindersPrintingViewModel.Reminder.Assignment(0);
    v14 = *(v13 - 8);
    v39 = *(v14 + 48);
    v15 = v41;
    sub_21DBF8E0C();
    sub_21DBF8E0C();
    sub_21DBF8E0C();
    sub_21DBF8E0C();
    sub_21DBF8E0C();
    if (v39(v40, 1, v13))
    {
      v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58330, &unk_21DC09130);
      memcpy(__dst, v40, *(*(v16 - 8) + 64));
      v17 = a3;
    }

    else
    {
      v19 = sub_21DBF54CC();
      v20 = *(v19 - 8);
      if ((*(v20 + 48))(v40, 1, v19))
      {
        v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5EA20, &qword_21DC0D4A0);
        memcpy(__dst, v40, *(*(v21 - 8) + 64));
      }

      else
      {
        (*(v20 + 16))(__dst, v40, v19);
        (*(v20 + 56))(__dst, 0, 1, v19);
      }

      v17 = a3;
      v22 = *(v13 + 20);
      v23 = &__dst[v22];
      v24 = &v40[v22];
      v25 = *(v24 + 1);
      *v23 = *v24;
      *(v23 + 1) = v25;
      v26 = *(v14 + 56);
      sub_21DBF8E0C();
      v26(__dst, 0, 1, v13);
    }

    *(v4 + *(v43 + 52)) = *(a2 + *(v43 + 52));
    *(v4 + *(v43 + 56)) = *(a2 + *(v43 + 56));
    v27 = *(v17 + 20);
    v28 = v4 + v27;
    v29 = a2 + v27;
    v30 = *(a2 + v27 + 8);
    sub_21DBF8E0C();
    if (v30 == 1)
    {
      v31 = *(v29 + 3);
      *(v28 + 2) = *(v29 + 2);
      *(v28 + 3) = v31;
      *(v28 + 4) = *(v29 + 4);
      v32 = *(v29 + 1);
      *v28 = *v29;
      *(v28 + 1) = v32;
    }

    else
    {
      *v28 = *v29;
      *(v28 + 1) = v30;
      v33 = *(v29 + 3);
      *(v28 + 2) = *(v29 + 2);
      *(v28 + 3) = v33;
      v34 = *(v29 + 5);
      *(v28 + 4) = *(v29 + 4);
      *(v28 + 5) = v34;
      v35 = *(v29 + 7);
      *(v28 + 6) = *(v29 + 6);
      *(v28 + 7) = v35;
      v36 = *(v29 + 8);
      v37 = *(v29 + 9);
      *(v28 + 8) = v36;
      *(v28 + 9) = v37;
      sub_21DBF8E0C();
      sub_21DBF8E0C();
      sub_21DBF8E0C();
      sub_21DBF8E0C();
      sub_21DBF8E0C();
    }

    *(v4 + *(v17 + 24)) = *(a2 + *(v17 + 24));
    sub_21DBF8E0C();
  }

  return v4;
}

double sub_21D51831C(uint64_t a1, uint64_t a2)
{

  v4 = a1 + *(type metadata accessor for TTRRemindersPrintingViewModel.Reminder(0) + 48);
  v5 = type metadata accessor for TTRRemindersPrintingViewModel.Reminder.Assignment(0);
  if (!(*(*(v5 - 8) + 48))(v4, 1, v5))
  {
    v6 = sub_21DBF54CC();
    v7 = *(v6 - 8);
    if (!(*(v7 + 48))(v4, 1, v6))
    {
      (*(v7 + 8))(v4, v6);
    }
  }

  if (*(a1 + *(a2 + 20) + 8) != 1)
  {
  }

  return result;
}

uint64_t sub_21D5184D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  v39 = *(a2 + 8);
  *(a1 + 8) = v39;
  *(a1 + 16) = *(a2 + 16);
  v5 = *(a2 + 32);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = v5;
  v6 = *(a2 + 48);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = v6;
  v7 = *(a2 + 64);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = v7;
  v8 = *(a2 + 80);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 80) = v8;
  *(a1 + 88) = *(a2 + 88);
  v9 = *(a2 + 104);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 104) = v9;
  v10 = type metadata accessor for TTRRemindersPrintingViewModel.Reminder(0);
  v11 = *(v10 + 48);
  __dst = (a1 + v11);
  v41 = v10;
  v38 = (a2 + v11);
  v12 = type metadata accessor for TTRRemindersPrintingViewModel.Reminder.Assignment(0);
  v13 = *(v12 - 8);
  v37 = *(v13 + 48);
  v14 = v39;
  sub_21DBF8E0C();
  sub_21DBF8E0C();
  sub_21DBF8E0C();
  sub_21DBF8E0C();
  sub_21DBF8E0C();
  if (v37(v38, 1, v12))
  {
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58330, &unk_21DC09130);
    memcpy(__dst, v38, *(*(v15 - 8) + 64));
    v16 = a3;
  }

  else
  {
    v17 = sub_21DBF54CC();
    v18 = *(v17 - 8);
    if ((*(v18 + 48))(v38, 1, v17))
    {
      v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5EA20, &qword_21DC0D4A0);
      memcpy(__dst, v38, *(*(v19 - 8) + 64));
    }

    else
    {
      (*(v18 + 16))(__dst, v38, v17);
      (*(v18 + 56))(__dst, 0, 1, v17);
    }

    v16 = a3;
    v20 = *(v12 + 20);
    v21 = &__dst[v20];
    v22 = &v38[v20];
    v23 = *(v22 + 1);
    *v21 = *v22;
    *(v21 + 1) = v23;
    v24 = *(v13 + 56);
    sub_21DBF8E0C();
    v24(__dst, 0, 1, v12);
  }

  *(a1 + *(v41 + 52)) = *(a2 + *(v41 + 52));
  *(a1 + *(v41 + 56)) = *(a2 + *(v41 + 56));
  v25 = *(v16 + 20);
  v26 = a1 + v25;
  v27 = a2 + v25;
  v28 = *(a2 + v25 + 8);
  sub_21DBF8E0C();
  if (v28 == 1)
  {
    v29 = *(v27 + 48);
    *(v26 + 32) = *(v27 + 32);
    *(v26 + 48) = v29;
    *(v26 + 64) = *(v27 + 64);
    v30 = *(v27 + 16);
    *v26 = *v27;
    *(v26 + 16) = v30;
  }

  else
  {
    *v26 = *v27;
    *(v26 + 8) = v28;
    v31 = *(v27 + 24);
    *(v26 + 16) = *(v27 + 16);
    *(v26 + 24) = v31;
    v32 = *(v27 + 40);
    *(v26 + 32) = *(v27 + 32);
    *(v26 + 40) = v32;
    v33 = *(v27 + 56);
    *(v26 + 48) = *(v27 + 48);
    *(v26 + 56) = v33;
    v34 = *(v27 + 64);
    v35 = *(v27 + 72);
    *(v26 + 64) = v34;
    *(v26 + 72) = v35;
    sub_21DBF8E0C();
    sub_21DBF8E0C();
    sub_21DBF8E0C();
    sub_21DBF8E0C();
    sub_21DBF8E0C();
  }

  *(a1 + *(v16 + 24)) = *(a2 + *(v16 + 24));
  sub_21DBF8E0C();
  return a1;
}

uint64_t sub_21D51883C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  v5 = *(a2 + 8);
  v6 = *(a1 + 8);
  *(a1 + 8) = v5;
  v7 = v5;

  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  sub_21DBF8E0C();

  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);
  sub_21DBF8E0C();

  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = *(a2 + 64);
  sub_21DBF8E0C();

  *(a1 + 72) = *(a2 + 72);
  *(a1 + 80) = *(a2 + 80);
  sub_21DBF8E0C();

  *(a1 + 88) = *(a2 + 88);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 104) = *(a2 + 104);
  sub_21DBF8E0C();

  v8 = type metadata accessor for TTRRemindersPrintingViewModel.Reminder(0);
  v9 = v8[12];
  v10 = (a1 + v9);
  v11 = (a2 + v9);
  v12 = type metadata accessor for TTRRemindersPrintingViewModel.Reminder.Assignment(0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 48);
  v15 = v14(v10, 1, v12);
  v16 = v14(v11, 1, v12);
  if (v15)
  {
    if (!v16)
    {
      v17 = sub_21DBF54CC();
      v18 = *(v17 - 8);
      if ((*(v18 + 48))(v11, 1, v17))
      {
        v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5EA20, &qword_21DC0D4A0);
        memcpy(v10, v11, *(*(v19 - 8) + 64));
      }

      else
      {
        (*(v18 + 16))(v10, v11, v17);
        (*(v18 + 56))(v10, 0, 1, v17);
      }

      v25 = *(v12 + 20);
      v26 = &v10[v25];
      v27 = &v11[v25];
      *v26 = *v27;
      *(v26 + 1) = *(v27 + 1);
      v28 = *(v13 + 56);
      sub_21DBF8E0C();
      v28(v10, 0, 1, v12);
      goto LABEL_13;
    }

LABEL_7:
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58330, &unk_21DC09130);
    memcpy(v10, v11, *(*(v20 - 8) + 64));
LABEL_13:
    v29 = a3;
    goto LABEL_14;
  }

  if (v16)
  {
    sub_21D515A94(v10, type metadata accessor for TTRRemindersPrintingViewModel.Reminder.Assignment);
    goto LABEL_7;
  }

  v21 = sub_21DBF54CC();
  v46 = *(v21 - 8);
  v22 = *(v46 + 48);
  v23 = v22(v10, 1, v21);
  v24 = v22(v11, 1, v21);
  if (!v23)
  {
    if (!v24)
    {
      (*(v46 + 24))(v10, v11, v21);
      goto LABEL_25;
    }

    (*(v46 + 8))(v10, v21);
    goto LABEL_24;
  }

  if (v24)
  {
LABEL_24:
    v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5EA20, &qword_21DC0D4A0);
    memcpy(v10, v11, *(*(v42 - 8) + 64));
    goto LABEL_25;
  }

  (*(v46 + 16))(v10, v11, v21);
  (*(v46 + 56))(v10, 0, 1, v21);
LABEL_25:
  v29 = a3;
  v43 = *(v12 + 20);
  v44 = &v10[v43];
  v45 = &v11[v43];
  *v44 = *v45;
  *(v44 + 1) = *(v45 + 1);
  sub_21DBF8E0C();

LABEL_14:
  *(a1 + v8[13]) = *(a2 + v8[13]);
  *(a1 + v8[14]) = *(a2 + v8[14]);
  sub_21DBF8E0C();

  v30 = *(v29 + 20);
  v31 = a1 + v30;
  v32 = a2 + v30;
  v33 = *(a1 + v30 + 8);
  v34 = *(a2 + v30 + 8);
  if (v33 == 1)
  {
    if (v34 == 1)
    {
      *v31 = *v32;
      v35 = *(v32 + 16);
      v36 = *(v32 + 32);
      v37 = *(v32 + 64);
      *(v31 + 48) = *(v32 + 48);
      *(v31 + 64) = v37;
      *(v31 + 16) = v35;
      *(v31 + 32) = v36;
    }

    else
    {
      *v31 = *v32;
      *(v31 + 8) = *(v32 + 8);
      *(v31 + 16) = *(v32 + 16);
      *(v31 + 24) = *(v32 + 24);
      *(v31 + 32) = *(v32 + 32);
      *(v31 + 40) = *(v32 + 40);
      *(v31 + 48) = *(v32 + 48);
      *(v31 + 56) = *(v32 + 56);
      *(v31 + 64) = *(v32 + 64);
      *(v31 + 72) = *(v32 + 72);
      sub_21DBF8E0C();
      sub_21DBF8E0C();
      sub_21DBF8E0C();
      sub_21DBF8E0C();
      sub_21DBF8E0C();
    }
  }

  else if (v34 == 1)
  {
    sub_21D1D9B90(v31);
    *v31 = *v32;
    v38 = *(v32 + 64);
    v40 = *(v32 + 16);
    v39 = *(v32 + 32);
    *(v31 + 48) = *(v32 + 48);
    *(v31 + 64) = v38;
    *(v31 + 16) = v40;
    *(v31 + 32) = v39;
  }

  else
  {
    *v31 = *v32;
    *(v31 + 8) = *(v32 + 8);
    sub_21DBF8E0C();

    *(v31 + 16) = *(v32 + 16);
    *(v31 + 24) = *(v32 + 24);
    sub_21DBF8E0C();

    *(v31 + 32) = *(v32 + 32);
    *(v31 + 40) = *(v32 + 40);
    sub_21DBF8E0C();

    *(v31 + 48) = *(v32 + 48);
    *(v31 + 56) = *(v32 + 56);
    sub_21DBF8E0C();

    *(v31 + 64) = *(v32 + 64);
    *(v31 + 72) = *(v32 + 72);
    sub_21DBF8E0C();
  }

  *(a1 + *(v29 + 24)) = *(a2 + *(v29 + 24));
  sub_21DBF8E0C();

  return a1;
}

uint64_t sub_21D518EB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 96) = *(a2 + 96);
  v6 = type metadata accessor for TTRRemindersPrintingViewModel.Reminder(0);
  v7 = v6[12];
  v8 = (a1 + v7);
  v9 = (a2 + v7);
  v10 = type metadata accessor for TTRRemindersPrintingViewModel.Reminder.Assignment(0);
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v9, 1, v10))
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58330, &unk_21DC09130);
    memcpy(v8, v9, *(*(v12 - 8) + 64));
  }

  else
  {
    v13 = sub_21DBF54CC();
    v14 = *(v13 - 8);
    if ((*(v14 + 48))(v9, 1, v13))
    {
      v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5EA20, &qword_21DC0D4A0);
      memcpy(v8, v9, *(*(v15 - 8) + 64));
    }

    else
    {
      (*(v14 + 32))(v8, v9, v13);
      (*(v14 + 56))(v8, 0, 1, v13);
    }

    *&v8[*(v10 + 20)] = *&v9[*(v10 + 20)];
    (*(v11 + 56))(v8, 0, 1, v10);
  }

  *(a1 + v6[13]) = *(a2 + v6[13]);
  *(a1 + v6[14]) = *(a2 + v6[14]);
  v16 = *(a3 + 20);
  v17 = *(a3 + 24);
  v18 = (a1 + v16);
  v19 = (a2 + v16);
  v20 = v19[4];
  v18[3] = v19[3];
  v18[4] = v20;
  v21 = v19[2];
  v18[1] = v19[1];
  v18[2] = v21;
  *v18 = *v19;
  *(a1 + v17) = *(a2 + v17);
  return a1;
}

uint64_t sub_21D51914C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  v5 = *(a1 + 8);
  *(a1 + 8) = *(a2 + 8);

  *(a1 + 16) = *(a2 + 16);
  v6 = *(a2 + 32);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = v6;

  v7 = *(a2 + 48);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = v7;

  v8 = *(a2 + 64);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = v8;

  v9 = *(a2 + 80);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 80) = v9;

  *(a1 + 88) = *(a2 + 88);
  v10 = *(a2 + 104);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 104) = v10;

  v11 = type metadata accessor for TTRRemindersPrintingViewModel.Reminder(0);
  v12 = v11[12];
  v13 = (a1 + v12);
  v14 = (a2 + v12);
  v15 = type metadata accessor for TTRRemindersPrintingViewModel.Reminder.Assignment(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 48);
  v18 = v17(v13, 1, v15);
  v19 = v17(v14, 1, v15);
  if (!v18)
  {
    if (v19)
    {
      sub_21D515A94(v13, type metadata accessor for TTRRemindersPrintingViewModel.Reminder.Assignment);
      goto LABEL_7;
    }

    v25 = sub_21DBF54CC();
    v46 = *(v25 - 8);
    v26 = *(v46 + 48);
    v27 = v26(v13, 1, v25);
    v28 = v26(v14, 1, v25);
    if (v27)
    {
      if (!v28)
      {
        (*(v46 + 32))(v13, v14, v25);
        (*(v46 + 56))(v13, 0, 1, v25);
LABEL_16:
        v22 = a3;
        v30 = *(v15 + 20);
        v31 = &v13[v30];
        v32 = &v14[v30];
        v34 = *v32;
        v33 = *(v32 + 1);
        *v31 = v34;
        *(v31 + 1) = v33;

        goto LABEL_17;
      }
    }

    else
    {
      if (!v28)
      {
        (*(v46 + 40))(v13, v14, v25);
        goto LABEL_16;
      }

      (*(v46 + 8))(v13, v25);
    }

    v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5EA20, &qword_21DC0D4A0);
    memcpy(v13, v14, *(*(v29 - 8) + 64));
    goto LABEL_16;
  }

  if (v19)
  {
LABEL_7:
    v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58330, &unk_21DC09130);
    memcpy(v13, v14, *(*(v24 - 8) + 64));
    v22 = a3;
    goto LABEL_17;
  }

  v20 = sub_21DBF54CC();
  v21 = *(v20 - 8);
  v22 = a3;
  if ((*(v21 + 48))(v14, 1, v20))
  {
    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5EA20, &qword_21DC0D4A0);
    memcpy(v13, v14, *(*(v23 - 8) + 64));
  }

  else
  {
    (*(v21 + 32))(v13, v14, v20);
    (*(v21 + 56))(v13, 0, 1, v20);
  }

  *&v13[*(v15 + 20)] = *&v14[*(v15 + 20)];
  (*(v16 + 56))(v13, 0, 1, v15);
LABEL_17:
  *(a1 + v11[13]) = *(a2 + v11[13]);
  *(a1 + v11[14]) = *(a2 + v11[14]);

  v35 = *(v22 + 20);
  v36 = (a1 + v35);
  v37 = (a2 + v35);
  if (*(a1 + v35 + 8) != 1)
  {
    v38 = v37[1];
    if (v38 != 1)
    {
      *v36 = *v37;
      v36[1] = v38;

      v41 = v37[3];
      v36[2] = v37[2];
      v36[3] = v41;

      v42 = v37[5];
      v36[4] = v37[4];
      v36[5] = v42;

      v43 = v37[7];
      v36[6] = v37[6];
      v36[7] = v43;

      v44 = v37[9];
      v36[8] = v37[8];
      v36[9] = v44;

      goto LABEL_22;
    }

    sub_21D1D9B90(v36);
  }

  v39 = *(v37 + 3);
  *(v36 + 2) = *(v37 + 2);
  *(v36 + 3) = v39;
  *(v36 + 4) = *(v37 + 4);
  v40 = *(v37 + 1);
  *v36 = *v37;
  *(v36 + 1) = v40;
LABEL_22:
  *(a1 + *(v22 + 24)) = *(a2 + *(v22 + 24));

  return a1;
}

uint64_t sub_21D519680(uint64_t a1)
{
  result = type metadata accessor for TTRRemindersPrintingViewModel.Reminder(319);
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t *sub_21D519724(uint64_t *a1, uint64_t *a2, int *a3)
{
  v5 = *(*(a3 - 1) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v9 = *a2;
    *a1 = *a2;
    a1 = (v9 + ((v5 + 16) & ~v5));
  }

  else
  {
    v7 = sub_21DBF54CC();
    (*(*(v7 - 8) + 16))(a1, a2, v7);
    v8 = a3[6];
    *(a1 + a3[5]) = *(a2 + a3[5]);
    *(a1 + v8) = *(a2 + v8);
    *(a1 + a3[7]) = *(a2 + a3[7]);
    sub_21DBF8E0C();
    sub_21DBF8E0C();
    sub_21DBF8E0C();
  }

  return a1;
}

double sub_21D519814(uint64_t a1)
{
  v2 = sub_21DBF54CC();
  (*(*(v2 - 8) + 8))(a1, v2);

  return result;
}

uint64_t sub_21D5198A0(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_21DBF54CC();
  (*(*(v6 - 8) + 16))(a1, a2, v6);
  v7 = a3[6];
  *(a1 + a3[5]) = *(a2 + a3[5]);
  *(a1 + v7) = *(a2 + v7);
  *(a1 + a3[7]) = *(a2 + a3[7]);
  sub_21DBF8E0C();
  sub_21DBF8E0C();
  sub_21DBF8E0C();
  return a1;
}

uint64_t sub_21D519944(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_21DBF54CC();
  (*(*(v6 - 8) + 24))(a1, a2, v6);
  *(a1 + a3[5]) = *(a2 + a3[5]);
  sub_21DBF8E0C();

  *(a1 + a3[6]) = *(a2 + a3[6]);
  sub_21DBF8E0C();

  *(a1 + a3[7]) = *(a2 + a3[7]);
  sub_21DBF8E0C();

  return a1;
}

uint64_t sub_21D519A08(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_21DBF54CC();
  (*(*(v6 - 8) + 32))(a1, a2, v6);
  v7 = a3[6];
  *(a1 + a3[5]) = *(a2 + a3[5]);
  *(a1 + v7) = *(a2 + v7);
  *(a1 + a3[7]) = *(a2 + a3[7]);
  return a1;
}

uint64_t sub_21D519A98(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_21DBF54CC();
  (*(*(v6 - 8) + 40))(a1, a2, v6);
  *(a1 + a3[5]) = *(a2 + a3[5]);

  *(a1 + a3[6]) = *(a2 + a3[6]);

  *(a1 + a3[7]) = *(a2 + a3[7]);

  return a1;
}

uint64_t sub_21D519B6C(uint64_t a1)
{
  result = sub_21DBF54CC();
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t TTRRemindersListHighlightTarget.TargetItem.init(item:includesChildren:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  sub_21D105764(a1, a3, type metadata accessor for TTRRemindersListViewModel.Item);
  result = type metadata accessor for TTRRemindersListHighlightTarget.TargetItem(0);
  *(a3 + *(result + 20)) = a2;
  return result;
}

uint64_t TTRRemindersListHighlightTarget.init(item:includesChildren:)@<X0>(uint64_t a1@<X0>, uint64_t a3@<X8>)
{
  sub_21D105764(a1, a3, type metadata accessor for TTRRemindersListViewModel.Item);
  type metadata accessor for TTRRemindersListHighlightTarget(0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t TTRRemindersListHighlightTarget.firstItem.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for TTRRemindersListHighlightTarget(0);
  MEMORY[0x28223BE20](v4);
  v6 = (&v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_21D10507C(v2, v6, type metadata accessor for TTRRemindersListHighlightTarget);
  if (swift_getEnumCaseMultiPayload() > 1)
  {
    v9 = *v6;
    if (*(v9 + 16))
    {
      v10 = type metadata accessor for TTRRemindersListViewModel.Item(0);
      v11 = *(v10 - 8);
      sub_21D10507C(v9 + ((*(v11 + 80) + 32) & ~*(v11 + 80)), a1, type metadata accessor for TTRRemindersListViewModel.Item);

      return (*(v11 + 56))(a1, 0, 1, v10);
    }

    else
    {

      v12 = type metadata accessor for TTRRemindersListViewModel.Item(0);
      return (*(*(v12 - 8) + 56))(a1, 1, 1, v12);
    }
  }

  else
  {
    sub_21D105764(v6, a1, type metadata accessor for TTRRemindersListViewModel.Item);
    v7 = type metadata accessor for TTRRemindersListViewModel.Item(0);
    return (*(*(v7 - 8) + 56))(a1, 0, 1, v7);
  }
}

uint64_t TTRRemindersListHighlightTarget.targetItems.getter()
{
  v1 = v0;
  v2 = type metadata accessor for TTRRemindersListHighlightTarget.TargetItem(0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for TTRRemindersListViewModel.Item(0);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for TTRRemindersListHighlightTarget(0);
  MEMORY[0x28223BE20](v10);
  v12 = (&v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_21D10507C(v1, v12, type metadata accessor for TTRRemindersListHighlightTarget);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    sub_21D105764(v12, v9, type metadata accessor for TTRRemindersListViewModel.Item);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE588B8, &qword_21DC1A000);
    v17 = (*(v3 + 80) + 32) & ~*(v3 + 80);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_21DC08D00;
    v18 = v15 + v17;
    sub_21D10507C(v9, v18, type metadata accessor for TTRRemindersListViewModel.Item);
    *(v18 + *(v2 + 20)) = 0;
    goto LABEL_5;
  }

  if (EnumCaseMultiPayload == 1)
  {
    sub_21D105764(v12, v9, type metadata accessor for TTRRemindersListViewModel.Item);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE588B8, &qword_21DC1A000);
    v14 = (*(v3 + 80) + 32) & ~*(v3 + 80);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_21DC08D00;
    v16 = v15 + v14;
    sub_21D10507C(v9, v16, type metadata accessor for TTRRemindersListViewModel.Item);
    *(v16 + *(v2 + 20)) = 1;
LABEL_5:
    sub_21D106B58(v9, type metadata accessor for TTRRemindersListViewModel.Item);
    return v15;
  }

  v19 = *v12;
  v20 = *(v19 + 16);
  if (v20)
  {
    v28 = MEMORY[0x277D84F90];
    sub_21D18F10C(0, v20, 0);
    v15 = v28;
    v21 = *(v7 + 80);
    v27 = v19;
    v22 = v19 + ((v21 + 32) & ~v21);
    v23 = *(v7 + 72);
    do
    {
      sub_21D10507C(v22, v5, type metadata accessor for TTRRemindersListViewModel.Item);
      v5[*(v2 + 20)] = 0;
      v28 = v15;
      v25 = *(v15 + 16);
      v24 = *(v15 + 24);
      if (v25 >= v24 >> 1)
      {
        sub_21D18F10C((v24 > 1), v25 + 1, 1);
        v15 = v28;
      }

      *(v15 + 16) = v25 + 1;
      sub_21D105764(v5, v15 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v25, type metadata accessor for TTRRemindersListHighlightTarget.TargetItem);
      v22 += v23;
      --v20;
    }

    while (v20);
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return v15;
}

uint64_t TTRRemindersListHighlightTarget.description.getter()
{
  v1 = v0;
  v2 = type metadata accessor for TTRRemindersListViewModel.Item(0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for TTRRemindersListHighlightTarget(0);
  MEMORY[0x28223BE20](v5);
  v7 = v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21D10507C(v1, v7, type metadata accessor for TTRRemindersListHighlightTarget);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload != 1)
    {
      v11 = *(*v7 + 16);

      v14[1] = v11;
      v15 = sub_21DBFC5BC();
      v16 = v12;
      MEMORY[0x223D42AA0](0x736D65746920, 0xE600000000000000);
      return v15;
    }

    sub_21D105764(v7, v4, type metadata accessor for TTRRemindersListViewModel.Item);
    v15 = 0;
    v16 = 0xE000000000000000;
    sub_21DBFBEEC();

    v15 = 0xD000000000000010;
    v16 = 0x800000021DC5F100;
    v9 = sub_21D25D250();
    MEMORY[0x223D42AA0](v9);

    MEMORY[0x223D42AA0](41, 0xE100000000000000);
    v10 = v15;
  }

  else
  {
    sub_21D105764(v7, v4, type metadata accessor for TTRRemindersListViewModel.Item);
    v10 = sub_21D25D250();
  }

  sub_21D106B58(v4, type metadata accessor for TTRRemindersListViewModel.Item);
  return v10;
}

void **initializeBufferWithCopyOfBuffer for TTRRemindersListHighlightTarget(void **a1, void **a2, uint64_t a3)
{
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) == 0)
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 2)
    {
      *a1 = *a2;
      sub_21DBF8E0C();
LABEL_253:
      swift_storeEnumTagMultiPayload();
      return a1;
    }

    if (EnumCaseMultiPayload == 1)
    {
      v7 = type metadata accessor for TTRRemindersListViewModel.Item(0);
      v8 = swift_getEnumCaseMultiPayload();
      if (v8 > 3)
      {
        if (v8 > 5)
        {
          if (v8 != 6)
          {
            if (v8 != 7)
            {
              if (v8 == 8)
              {
                goto LABEL_17;
              }

              goto LABEL_70;
            }

            v39 = type metadata accessor for TTRTemplatePublicLinkData.CreatedStateDescription(0);
            v40 = *(v39 - 8);
            if ((*(v40 + 48))(a2, 1, v39))
            {
              goto LABEL_69;
            }

            goto LABEL_125;
          }

          v33 = type metadata accessor for TTRRemindersListViewModel.HashtagLabelSelectorState(0);
          v34 = *(v33 - 8);
          if ((*(v34 + 48))(a2, 1, v33))
          {
            v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A440, &unk_21DC16170);
            memcpy(a1, a2, *(*(v35 - 8) + 64));
          }

          else
          {
            *a1 = *a2;
            v56 = *(v33 + 20);
            v57 = sub_21DBF6C1C();
            v158 = *(*(v57 - 8) + 16);
            sub_21DBF8E0C();
            v158(a1 + v56, a2 + v56, v57);
            (*(v34 + 56))(a1, 0, 1, v33);
          }

          v58 = *(type metadata accessor for TTRRemindersListViewModel.HashtagsState(0) + 20);
          v59 = a1 + v58;
          v60 = a2 + v58;
          v61 = *(v60 + 1);
          if (!v61)
          {
            *v59 = *v60;
            *(v59 + 2) = *(v60 + 2);
            goto LABEL_252;
          }

          goto LABEL_118;
        }

        if (v8 != 4)
        {
          goto LABEL_43;
        }

        v36 = *a2;
        *a1 = *a2;
        v18 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
        v19 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
        v20 = *(v19 - 8);
        v37 = *(v20 + 48);
        v38 = v36;
        if (v37(a2 + v18, 1, v19))
        {
          goto LABEL_63;
        }

        v62 = swift_getEnumCaseMultiPayload();
        if (v62 > 4)
        {
          if (v62 <= 7)
          {
            if (v62 == 5 || v62 == 6)
            {
              goto LABEL_216;
            }

            goto LABEL_250;
          }

          if (v62 != 8 && v62 != 9)
          {
            goto LABEL_250;
          }

          goto LABEL_219;
        }

        if (v62 <= 2)
        {
          if (v62 != 1)
          {
            if (v62 == 2)
            {
              goto LABEL_216;
            }

LABEL_250:
            memcpy(a1 + v18, a2 + v18, *(v20 + 64));
            goto LABEL_251;
          }

          goto LABEL_219;
        }

LABEL_216:
        v144 = sub_21DBF563C();
        (*(*(v144 - 8) + 16))(a1 + v18, a2 + v18, v144);
        swift_storeEnumTagMultiPayload();
LABEL_251:
        (*(v20 + 56))(a1 + v18, 0, 1, v19);
        goto LABEL_252;
      }

      if (v8 > 1)
      {
        if (v8 == 2)
        {
          v30 = *a2;
          *a1 = *a2;
          v18 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
          v19 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
          v20 = *(v19 - 8);
          v31 = *(v20 + 48);
          v32 = v30;
          if (v31(a2 + v18, 1, v19))
          {
            goto LABEL_63;
          }

          v55 = swift_getEnumCaseMultiPayload();
          if (v55 > 4)
          {
            if (v55 <= 7)
            {
              if (v55 == 5 || v55 == 6)
              {
                goto LABEL_216;
              }

              goto LABEL_250;
            }

            if (v55 != 8 && v55 != 9)
            {
              goto LABEL_250;
            }

            goto LABEL_219;
          }

          if (v55 > 2)
          {
            goto LABEL_216;
          }

          if (v55 == 1)
          {
            goto LABEL_219;
          }

          if (v55 != 2)
          {
            goto LABEL_250;
          }
        }

        else
        {
          v17 = *a2;
          *a1 = *a2;
          v18 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
          v19 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
          v20 = *(v19 - 8);
          v21 = *(v20 + 48);
          v22 = v17;
          if (v21(a2 + v18, 1, v19))
          {
            goto LABEL_63;
          }

          v54 = swift_getEnumCaseMultiPayload();
          if (v54 > 4)
          {
            if (v54 <= 7)
            {
              if (v54 == 5 || v54 == 6)
              {
                goto LABEL_216;
              }

              goto LABEL_250;
            }

            if (v54 != 8 && v54 != 9)
            {
              goto LABEL_250;
            }

            goto LABEL_219;
          }

          if (v54 > 2)
          {
            goto LABEL_216;
          }

          if (v54 == 1)
          {
            goto LABEL_219;
          }

          if (v54 != 2)
          {
            goto LABEL_250;
          }
        }

        goto LABEL_216;
      }

      if (v8)
      {
        if (v8 == 1)
        {
          v13 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
          v14 = swift_getEnumCaseMultiPayload();
          if (v14 <= 4)
          {
            if (v14 > 2)
            {
LABEL_127:
              v73 = sub_21DBF563C();
              (*(*(v73 - 8) + 16))(a1, a2, v73);
              swift_storeEnumTagMultiPayload();
              goto LABEL_180;
            }

            if (v14 != 1)
            {
              if (v14 == 2)
              {
                goto LABEL_127;
              }

              goto LABEL_179;
            }

LABEL_130:
            v74 = *a2;
            *a1 = *a2;
            v75 = v74;
            swift_storeEnumTagMultiPayload();
            goto LABEL_180;
          }

          if (v14 > 7)
          {
            if (v14 == 8 || v14 == 9)
            {
              goto LABEL_130;
            }
          }

          else if (v14 == 5 || v14 == 6)
          {
            goto LABEL_127;
          }

LABEL_179:
          memcpy(a1, a2, *(*(v13 - 8) + 64));
LABEL_180:
          v85 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
          v86 = v85[5];
          v87 = a1 + v86;
          v88 = a2 + v86;
          v89 = *(a2 + v86 + 8);
          if (v89)
          {
            *v87 = *v88;
            *(v87 + 1) = v89;
            v90 = *(v88 + 2);
            v91 = *(v88 + 3);
            v92 = *(v88 + 4);
            v93 = *(v88 + 5);
            v94 = *(v88 + 6);
            v150 = *(v88 + 7);
            v160 = v88[64];
            sub_21DBF8E0C();
            sub_21D2A7DB4(v90, v91, v92, v93, v94, v150, v160);
            *(v87 + 2) = v90;
            *(v87 + 3) = v91;
            *(v87 + 4) = v92;
            *(v87 + 5) = v93;
            *(v87 + 6) = v94;
            *(v87 + 7) = v150;
            v87[64] = v160;
            *(v87 + 65) = *(v88 + 65);
            v95 = v88[120];
            if (v95 == 255)
            {
              *(v87 + 72) = *(v88 + 72);
              *(v87 + 88) = *(v88 + 88);
              *(v87 + 104) = *(v88 + 104);
              v87[120] = v88[120];
            }

            else
            {
              v96 = *(v88 + 9);
              v97 = *(v88 + 12);
              v151 = *(v88 + 11);
              v161 = *(v88 + 10);
              v98 = *(v88 + 13);
              v99 = *(v88 + 14);
              v100 = v95 & 1;
              sub_21D0FB960(v96, v161, v151, v97, v98, v99, v95 & 1);
              *(v87 + 9) = v96;
              *(v87 + 10) = v161;
              *(v87 + 11) = v151;
              *(v87 + 12) = v97;
              *(v87 + 13) = v98;
              *(v87 + 14) = v99;
              v87[120] = v100;
            }

            v87[121] = v88[121];
            goto LABEL_200;
          }

LABEL_190:
          v114 = *(v88 + 5);
          *(v87 + 4) = *(v88 + 4);
          *(v87 + 5) = v114;
          *(v87 + 6) = *(v88 + 6);
          *(v87 + 106) = *(v88 + 106);
          v115 = *(v88 + 1);
          *v87 = *v88;
          *(v87 + 1) = v115;
          v116 = *(v88 + 3);
          *(v87 + 2) = *(v88 + 2);
          *(v87 + 3) = v116;
LABEL_200:
          *(a1 + v85[6]) = *(a2 + v85[6]);
          *(a1 + v85[7]) = *(a2 + v85[7]);
          *(a1 + v85[8]) = *(a2 + v85[8]);
          *(a1 + v85[9]) = *(a2 + v85[9]);
          *(a1 + v85[10]) = *(a2 + v85[10]);
          v130 = v85[11];
          v131 = *(a2 + v130);
          *(a1 + v130) = v131;
          v132 = v131;
          goto LABEL_252;
        }

LABEL_70:
        memcpy(a1, a2, *(*(v7 - 8) + 64));
        goto LABEL_253;
      }

      v28 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v29 = swift_getEnumCaseMultiPayload();
      if (v29 <= 4)
      {
        if (v29 > 2)
        {
LABEL_131:
          v76 = sub_21DBF563C();
          (*(*(v76 - 8) + 16))(a1, a2, v76);
          swift_storeEnumTagMultiPayload();
          goto LABEL_187;
        }

        if (v29 != 1)
        {
          if (v29 == 2)
          {
            goto LABEL_131;
          }

          goto LABEL_186;
        }

LABEL_134:
        v77 = *a2;
        *a1 = *a2;
        v78 = v77;
        swift_storeEnumTagMultiPayload();
        goto LABEL_187;
      }

      if (v29 > 7)
      {
        if (v29 == 8 || v29 == 9)
        {
          goto LABEL_134;
        }
      }

      else if (v29 == 5 || v29 == 6)
      {
        goto LABEL_131;
      }

LABEL_186:
      memcpy(a1, a2, *(*(v28 - 8) + 64));
LABEL_187:
      v85 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
      v101 = v85[5];
      v87 = a1 + v101;
      v88 = a2 + v101;
      v102 = *(a2 + v101 + 8);
      if (v102)
      {
        *v87 = *v88;
        *(v87 + 1) = v102;
        v103 = *(v88 + 2);
        v104 = *(v88 + 3);
        v105 = *(v88 + 4);
        v106 = *(v88 + 5);
        v107 = *(v88 + 6);
        v152 = *(v88 + 7);
        v162 = v88[64];
        sub_21DBF8E0C();
        sub_21D2A7DB4(v103, v104, v105, v106, v107, v152, v162);
        *(v87 + 2) = v103;
        *(v87 + 3) = v104;
        *(v87 + 4) = v105;
        *(v87 + 5) = v106;
        *(v87 + 6) = v107;
        *(v87 + 7) = v152;
        v87[64] = v162;
        *(v87 + 65) = *(v88 + 65);
        v108 = v88[120];
        if (v108 == 255)
        {
          *(v87 + 72) = *(v88 + 72);
          *(v87 + 88) = *(v88 + 88);
          *(v87 + 104) = *(v88 + 104);
          v87[120] = v88[120];
        }

        else
        {
          v109 = *(v88 + 9);
          v110 = *(v88 + 12);
          v153 = *(v88 + 11);
          v163 = *(v88 + 10);
          v111 = *(v88 + 13);
          v112 = *(v88 + 14);
          v113 = v108 & 1;
          sub_21D0FB960(v109, v163, v153, v110, v111, v112, v108 & 1);
          *(v87 + 9) = v109;
          *(v87 + 10) = v163;
          *(v87 + 11) = v153;
          *(v87 + 12) = v110;
          *(v87 + 13) = v111;
          *(v87 + 14) = v112;
          v87[120] = v113;
        }

        v87[121] = v88[121];
        goto LABEL_200;
      }

      goto LABEL_190;
    }

    v7 = type metadata accessor for TTRRemindersListViewModel.Item(0);
    v10 = swift_getEnumCaseMultiPayload();
    if (v10 > 3)
    {
      if (v10 > 5)
      {
        if (v10 != 6)
        {
          if (v10 != 7)
          {
            if (v10 == 8)
            {
LABEL_17:
              *a1 = *a2;
              v11 = *(type metadata accessor for TTRRemindersListTips(0) + 20);
              v12 = sub_21DBF8D7C();
              (*(*(v12 - 8) + 16))(a1 + v11, a2 + v11, v12);
LABEL_252:
              swift_storeEnumTagMultiPayload();
              goto LABEL_253;
            }

            goto LABEL_70;
          }

          v39 = type metadata accessor for TTRTemplatePublicLinkData.CreatedStateDescription(0);
          v40 = *(v39 - 8);
          if ((*(v40 + 48))(a2, 1, v39))
          {
LABEL_69:
            v53 = type metadata accessor for TTRTemplatePublicLinkData.StateToDisplay(0);
            memcpy(a1, a2, *(*(v53 - 8) + 64));
LABEL_126:
            v72 = type metadata accessor for TTRTemplatePublicLinkData(0);
            *(a1 + *(v72 + 20)) = *(a2 + *(v72 + 20));
            goto LABEL_252;
          }

LABEL_125:
          v71 = sub_21DBF563C();
          (*(*(v71 - 8) + 16))(a1, a2, v71);
          *(a1 + *(v39 + 20)) = *(a2 + *(v39 + 20));
          (*(v40 + 56))(a1, 0, 1, v39);
          goto LABEL_126;
        }

        v47 = type metadata accessor for TTRRemindersListViewModel.HashtagLabelSelectorState(0);
        v48 = *(v47 - 8);
        if ((*(v48 + 48))(a2, 1, v47))
        {
          v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A440, &unk_21DC16170);
          memcpy(a1, a2, *(*(v49 - 8) + 64));
        }

        else
        {
          *a1 = *a2;
          v65 = *(v47 + 20);
          v66 = sub_21DBF6C1C();
          v159 = *(*(v66 - 8) + 16);
          sub_21DBF8E0C();
          v159(a1 + v65, a2 + v65, v66);
          (*(v48 + 56))(a1, 0, 1, v47);
        }

        v67 = *(type metadata accessor for TTRRemindersListViewModel.HashtagsState(0) + 20);
        v59 = a1 + v67;
        v60 = a2 + v67;
        v61 = *(v60 + 1);
        if (!v61)
        {
          *v59 = *v60;
          *(v59 + 2) = *(v60 + 2);
          goto LABEL_252;
        }

LABEL_118:
        *v59 = *v60;
        *(v59 + 1) = v61;
        v68 = *(v60 + 2);
        *(v59 + 2) = v68;
        sub_21DBF8E0C();
        v69 = v68;
        goto LABEL_252;
      }

      if (v10 != 4)
      {
LABEL_43:
        *a1 = *a2;
        *(a1 + 8) = *(a2 + 8);
        *(a1 + 9) = *(a2 + 9);
        v26 = a2[2];
        a1[2] = v26;
        v27 = v26;
        goto LABEL_252;
      }

      v50 = *a2;
      *a1 = *a2;
      v18 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
      v19 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v20 = *(v19 - 8);
      v51 = *(v20 + 48);
      v52 = v50;
      if (v51(a2 + v18, 1, v19))
      {
LABEL_63:
        v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70, &unk_21DC09230);
        memcpy(a1 + v18, a2 + v18, *(*(v46 - 8) + 64));
        goto LABEL_252;
      }

      v70 = swift_getEnumCaseMultiPayload();
      if (v70 > 4)
      {
        if (v70 <= 7)
        {
          if (v70 == 5 || v70 == 6)
          {
            goto LABEL_216;
          }

          goto LABEL_250;
        }

        if (v70 != 8 && v70 != 9)
        {
          goto LABEL_250;
        }
      }

      else
      {
        if (v70 > 2)
        {
          goto LABEL_216;
        }

        if (v70 != 1)
        {
          if (v70 == 2)
          {
            goto LABEL_216;
          }

          goto LABEL_250;
        }
      }

      goto LABEL_219;
    }

    if (v10 > 1)
    {
      if (v10 == 2)
      {
        v43 = *a2;
        *a1 = *a2;
        v18 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
        v19 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
        v20 = *(v19 - 8);
        v44 = *(v20 + 48);
        v45 = v43;
        if (v44(a2 + v18, 1, v19))
        {
          goto LABEL_63;
        }

        v64 = swift_getEnumCaseMultiPayload();
        if (v64 > 4)
        {
          if (v64 <= 7)
          {
            if (v64 == 5 || v64 == 6)
            {
              goto LABEL_216;
            }

            goto LABEL_250;
          }

          if (v64 != 8 && v64 != 9)
          {
            goto LABEL_250;
          }
        }

        else
        {
          if (v64 > 2)
          {
            goto LABEL_216;
          }

          if (v64 != 1)
          {
            if (v64 == 2)
            {
              goto LABEL_216;
            }

            goto LABEL_250;
          }
        }
      }

      else
      {
        v23 = *a2;
        *a1 = *a2;
        v18 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
        v19 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
        v20 = *(v19 - 8);
        v24 = *(v20 + 48);
        v25 = v23;
        if (v24(a2 + v18, 1, v19))
        {
          goto LABEL_63;
        }

        v63 = swift_getEnumCaseMultiPayload();
        if (v63 > 4)
        {
          if (v63 <= 7)
          {
            if (v63 == 5 || v63 == 6)
            {
              goto LABEL_216;
            }

            goto LABEL_250;
          }

          if (v63 != 8 && v63 != 9)
          {
            goto LABEL_250;
          }
        }

        else
        {
          if (v63 > 2)
          {
            goto LABEL_216;
          }

          if (v63 != 1)
          {
            if (v63 == 2)
            {
              goto LABEL_216;
            }

            goto LABEL_250;
          }
        }
      }

LABEL_219:
      v145 = *(a2 + v18);
      *(a1 + v18) = v145;
      v146 = v145;
      swift_storeEnumTagMultiPayload();
      goto LABEL_251;
    }

    if (v10)
    {
      if (v10 != 1)
      {
        goto LABEL_70;
      }

      v15 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v16 = swift_getEnumCaseMultiPayload();
      if (v16 <= 4)
      {
        if (v16 > 2)
        {
LABEL_135:
          v79 = sub_21DBF563C();
          (*(*(v79 - 8) + 16))(a1, a2, v79);
          swift_storeEnumTagMultiPayload();
          goto LABEL_194;
        }

        if (v16 != 1)
        {
          if (v16 == 2)
          {
            goto LABEL_135;
          }

          goto LABEL_193;
        }

LABEL_138:
        v80 = *a2;
        *a1 = *a2;
        v81 = v80;
        swift_storeEnumTagMultiPayload();
        goto LABEL_194;
      }

      if (v16 > 7)
      {
        if (v16 == 8 || v16 == 9)
        {
          goto LABEL_138;
        }
      }

      else if (v16 == 5 || v16 == 6)
      {
        goto LABEL_135;
      }

LABEL_193:
      memcpy(a1, a2, *(*(v15 - 8) + 64));
LABEL_194:
      v85 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
      v117 = v85[5];
      v87 = a1 + v117;
      v88 = a2 + v117;
      v118 = *(a2 + v117 + 8);
      if (v118)
      {
        *v87 = *v88;
        *(v87 + 1) = v118;
        v119 = *(v88 + 2);
        v120 = *(v88 + 3);
        v121 = *(v88 + 4);
        v122 = *(v88 + 5);
        v123 = *(v88 + 6);
        v154 = *(v88 + 7);
        v164 = v88[64];
        sub_21DBF8E0C();
        sub_21D2A7DB4(v119, v120, v121, v122, v123, v154, v164);
        *(v87 + 2) = v119;
        *(v87 + 3) = v120;
        *(v87 + 4) = v121;
        *(v87 + 5) = v122;
        *(v87 + 6) = v123;
        *(v87 + 7) = v154;
        v87[64] = v164;
        *(v87 + 65) = *(v88 + 65);
        v124 = v88[120];
        if (v124 == 255)
        {
          *(v87 + 72) = *(v88 + 72);
          *(v87 + 88) = *(v88 + 88);
          *(v87 + 104) = *(v88 + 104);
          v87[120] = v88[120];
        }

        else
        {
          v125 = *(v88 + 9);
          v126 = *(v88 + 12);
          v155 = *(v88 + 11);
          v165 = *(v88 + 10);
          v127 = *(v88 + 13);
          v128 = *(v88 + 14);
          v129 = v124 & 1;
          sub_21D0FB960(v125, v165, v155, v126, v127, v128, v124 & 1);
          *(v87 + 9) = v125;
          *(v87 + 10) = v165;
          *(v87 + 11) = v155;
          *(v87 + 12) = v126;
          *(v87 + 13) = v127;
          *(v87 + 14) = v128;
          v87[120] = v129;
        }

        v87[121] = v88[121];
        goto LABEL_200;
      }

      goto LABEL_190;
    }

    v41 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    v42 = swift_getEnumCaseMultiPayload();
    if (v42 <= 4)
    {
      if (v42 > 2)
      {
LABEL_139:
        v82 = sub_21DBF563C();
        (*(*(v82 - 8) + 16))(a1, a2, v82);
        swift_storeEnumTagMultiPayload();
        goto LABEL_202;
      }

      if (v42 != 1)
      {
        if (v42 == 2)
        {
          goto LABEL_139;
        }

        goto LABEL_201;
      }

LABEL_142:
      v83 = *a2;
      *a1 = *a2;
      v84 = v83;
      swift_storeEnumTagMultiPayload();
      goto LABEL_202;
    }

    if (v42 > 7)
    {
      if (v42 == 8 || v42 == 9)
      {
        goto LABEL_142;
      }
    }

    else if (v42 == 5 || v42 == 6)
    {
      goto LABEL_139;
    }

LABEL_201:
    memcpy(a1, a2, *(*(v41 - 8) + 64));
LABEL_202:
    v85 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
    v133 = v85[5];
    v87 = a1 + v133;
    v88 = a2 + v133;
    v134 = *(a2 + v133 + 8);
    if (v134)
    {
      *v87 = *v88;
      *(v87 + 1) = v134;
      v135 = *(v88 + 2);
      v136 = *(v88 + 3);
      v137 = *(v88 + 4);
      v138 = *(v88 + 5);
      v148 = *(v88 + 6);
      v166 = *(v88 + 7);
      v156 = v88[64];
      sub_21DBF8E0C();
      sub_21D2A7DB4(v135, v136, v137, v138, v148, v166, v156);
      *(v87 + 2) = v135;
      *(v87 + 3) = v136;
      *(v87 + 4) = v137;
      *(v87 + 5) = v138;
      *(v87 + 6) = v148;
      *(v87 + 7) = v166;
      v87[64] = v156;
      *(v87 + 65) = *(v88 + 65);
      v139 = v88[120];
      if (v139 == 255)
      {
        *(v87 + 72) = *(v88 + 72);
        *(v87 + 88) = *(v88 + 88);
        *(v87 + 104) = *(v88 + 104);
        v87[120] = v88[120];
      }

      else
      {
        v157 = *(v88 + 10);
        v167 = *(v88 + 9);
        v140 = *(v88 + 12);
        v149 = *(v88 + 11);
        v141 = *(v88 + 13);
        v142 = *(v88 + 14);
        v143 = v139 & 1;
        sub_21D0FB960(v167, v157, v149, v140, v141, v142, v139 & 1);
        *(v87 + 9) = v167;
        *(v87 + 10) = v157;
        *(v87 + 11) = v149;
        *(v87 + 12) = v140;
        *(v87 + 13) = v141;
        *(v87 + 14) = v142;
        v87[120] = v143;
      }

      v87[121] = v88[121];
      goto LABEL_200;
    }

    goto LABEL_190;
  }

  v9 = *a2;
  *a1 = *a2;
  a1 = &v9[(v5 + 16) & ~v5];

  return a1;
}

void destroy for TTRRemindersListHighlightTarget(uint64_t a1, uint64_t a2)
{
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 2)
  {

    return;
  }

  if (EnumCaseMultiPayload > 1)
  {
    return;
  }

  type metadata accessor for TTRRemindersListViewModel.Item(0);
  v4 = swift_getEnumCaseMultiPayload();
  if (v4 <= 3)
  {
    if (v4 > 1)
    {
      goto LABEL_22;
    }

    if (v4 > 1)
    {
      return;
    }

    type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    v9 = swift_getEnumCaseMultiPayload();
    if (v9 > 4)
    {
      if (v9 <= 7)
      {
        if (v9 != 5 && v9 != 6)
        {
          goto LABEL_46;
        }

        goto LABEL_42;
      }

      if (v9 != 8 && v9 != 9)
      {
        goto LABEL_46;
      }
    }

    else
    {
      if (v9 > 2)
      {
        goto LABEL_42;
      }

      if (v9 != 1)
      {
        if (v9 != 2)
        {
LABEL_46:
          v20 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
          v21 = a1 + *(v20 + 20);
          if (*(v21 + 8))
          {

            sub_21D179EF0(*(v21 + 16), *(v21 + 24), *(v21 + 32), *(v21 + 40), *(v21 + 48), *(v21 + 56), *(v21 + 64));
            v22 = *(v21 + 120);
            if (v22 != 255)
            {
              sub_21D1078C0(*(v21 + 72), *(v21 + 80), *(v21 + 88), *(v21 + 96), *(v21 + 104), *(v21 + 112), v22 & 1);
            }
          }

          v10 = *(a1 + *(v20 + 44));
          goto LABEL_50;
        }

LABEL_42:
        v19 = sub_21DBF563C();
        (*(*(v19 - 8) + 8))(a1, v19);
        goto LABEL_46;
      }
    }

    goto LABEL_46;
  }

  if (v4 <= 5)
  {
    if (v4 != 4)
    {
      v10 = *(a1 + 16);
LABEL_50:

      return;
    }

LABEL_22:

    v11 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
    v12 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    if ((*(*(v12 - 8) + 48))(a1 + v11, 1, v12))
    {
      return;
    }

    v13 = swift_getEnumCaseMultiPayload();
    if (v13 > 4)
    {
      if (v13 <= 7)
      {
        if (v13 != 5 && v13 != 6)
        {
          return;
        }

        goto LABEL_54;
      }

      if (v13 != 8 && v13 != 9)
      {
        return;
      }
    }

    else
    {
      if (v13 > 2)
      {
LABEL_54:
        v6 = sub_21DBF563C();
        v7 = *(*(v6 - 8) + 8);
        v8 = a1 + v11;
LABEL_55:

        v7(v8, v6);
        return;
      }

      if (v13 != 1)
      {
        if (v13 != 2)
        {
          return;
        }

        goto LABEL_54;
      }
    }

    v10 = *(a1 + v11);
    goto LABEL_50;
  }

  if (v4 != 6)
  {
    if (v4 == 7)
    {
      v18 = type metadata accessor for TTRTemplatePublicLinkData.CreatedStateDescription(0);
      if ((*(*(v18 - 8) + 48))(a1, 1, v18))
      {
        return;
      }

      v23 = sub_21DBF563C();
      v7 = *(*(v23 - 8) + 8);
      v6 = v23;
      v8 = a1;
    }

    else
    {
      if (v4 != 8)
      {
        return;
      }

      v5 = *(type metadata accessor for TTRRemindersListTips(0) + 20);
      v6 = sub_21DBF8D7C();
      v7 = *(*(v6 - 8) + 8);
      v8 = a1 + v5;
    }

    goto LABEL_55;
  }

  v14 = type metadata accessor for TTRRemindersListViewModel.HashtagLabelSelectorState(0);
  if (!(*(*(v14 - 8) + 48))(a1, 1, v14))
  {

    v15 = *(v14 + 20);
    v16 = sub_21DBF6C1C();
    (*(*(v16 - 8) + 8))(a1 + v15, v16);
  }

  v17 = a1 + *(type metadata accessor for TTRRemindersListViewModel.HashtagsState(0) + 20);
  if (*(v17 + 8))
  {

    v10 = *(v17 + 16);
    goto LABEL_50;
  }
}

void **initializeWithCopy for TTRRemindersListHighlightTarget(void **a1, void **a2, uint64_t a3)
{
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 2)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v6 = type metadata accessor for TTRRemindersListViewModel.Item(0);
      v7 = swift_getEnumCaseMultiPayload();
      if (v7 > 3)
      {
        if (v7 > 5)
        {
          if (v7 != 6)
          {
            if (v7 != 7)
            {
              if (v7 == 8)
              {
                goto LABEL_15;
              }

              goto LABEL_68;
            }

            v37 = type metadata accessor for TTRTemplatePublicLinkData.CreatedStateDescription(0);
            v38 = *(v37 - 8);
            if ((*(v38 + 48))(a2, 1, v37))
            {
              goto LABEL_67;
            }

            goto LABEL_123;
          }

          v31 = type metadata accessor for TTRRemindersListViewModel.HashtagLabelSelectorState(0);
          v32 = *(v31 - 8);
          if ((*(v32 + 48))(a2, 1, v31))
          {
            v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A440, &unk_21DC16170);
            memcpy(a1, a2, *(*(v33 - 8) + 64));
          }

          else
          {
            *a1 = *a2;
            v54 = *(v31 + 20);
            v55 = sub_21DBF6C1C();
            v164 = *(*(v55 - 8) + 16);
            sub_21DBF8E0C();
            v164(a1 + v54, a2 + v54, v55);
            (*(v32 + 56))(a1, 0, 1, v31);
          }

          v56 = *(type metadata accessor for TTRRemindersListViewModel.HashtagsState(0) + 20);
          v57 = a1 + v56;
          v58 = a2 + v56;
          v59 = *(v58 + 1);
          if (!v59)
          {
            *v57 = *v58;
            *(v57 + 2) = *(v58 + 2);
            goto LABEL_250;
          }

          goto LABEL_116;
        }

        if (v7 != 4)
        {
          goto LABEL_41;
        }

        v34 = *a2;
        *a1 = *a2;
        v16 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
        v17 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
        v18 = *(v17 - 8);
        v35 = *(v18 + 48);
        v36 = v34;
        if (v35(a2 + v16, 1, v17))
        {
          goto LABEL_61;
        }

        v60 = swift_getEnumCaseMultiPayload();
        if (v60 > 4)
        {
          if (v60 <= 7)
          {
            if (v60 == 5 || v60 == 6)
            {
              goto LABEL_214;
            }

            goto LABEL_248;
          }

          if (v60 != 8 && v60 != 9)
          {
            goto LABEL_248;
          }

          goto LABEL_217;
        }

        if (v60 <= 2)
        {
          if (v60 != 1)
          {
            if (v60 == 2)
            {
              goto LABEL_214;
            }

LABEL_248:
            memcpy(a1 + v16, a2 + v16, *(v18 + 64));
            goto LABEL_249;
          }

          goto LABEL_217;
        }

LABEL_214:
        v152 = sub_21DBF563C();
        (*(*(v152 - 8) + 16))(a1 + v16, a2 + v16, v152);
        swift_storeEnumTagMultiPayload();
LABEL_249:
        (*(v18 + 56))(a1 + v16, 0, 1, v17);
        goto LABEL_250;
      }

      if (v7 > 1)
      {
        if (v7 == 2)
        {
          v28 = *a2;
          *a1 = *a2;
          v16 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
          v17 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
          v18 = *(v17 - 8);
          v29 = *(v18 + 48);
          v30 = v28;
          if (v29(a2 + v16, 1, v17))
          {
            goto LABEL_61;
          }

          v53 = swift_getEnumCaseMultiPayload();
          if (v53 > 4)
          {
            if (v53 <= 7)
            {
              if (v53 == 5 || v53 == 6)
              {
                goto LABEL_214;
              }

              goto LABEL_248;
            }

            if (v53 != 8 && v53 != 9)
            {
              goto LABEL_248;
            }

            goto LABEL_217;
          }

          if (v53 > 2)
          {
            goto LABEL_214;
          }

          if (v53 == 1)
          {
            goto LABEL_217;
          }

          if (v53 != 2)
          {
            goto LABEL_248;
          }
        }

        else
        {
          v15 = *a2;
          *a1 = *a2;
          v16 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
          v17 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
          v18 = *(v17 - 8);
          v19 = *(v18 + 48);
          v20 = v15;
          if (v19(a2 + v16, 1, v17))
          {
            goto LABEL_61;
          }

          v52 = swift_getEnumCaseMultiPayload();
          if (v52 > 4)
          {
            if (v52 <= 7)
            {
              if (v52 == 5 || v52 == 6)
              {
                goto LABEL_214;
              }

              goto LABEL_248;
            }

            if (v52 != 8 && v52 != 9)
            {
              goto LABEL_248;
            }

            goto LABEL_217;
          }

          if (v52 > 2)
          {
            goto LABEL_214;
          }

          if (v52 == 1)
          {
            goto LABEL_217;
          }

          if (v52 != 2)
          {
            goto LABEL_248;
          }
        }

        goto LABEL_214;
      }

      if (v7)
      {
        if (v7 == 1)
        {
          v11 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
          v12 = swift_getEnumCaseMultiPayload();
          if (v12 <= 4)
          {
            if (v12 > 2)
            {
LABEL_125:
              v71 = sub_21DBF563C();
              (*(*(v71 - 8) + 16))(a1, a2, v71);
              swift_storeEnumTagMultiPayload();
              goto LABEL_178;
            }

            if (v12 != 1)
            {
              if (v12 == 2)
              {
                goto LABEL_125;
              }

              goto LABEL_177;
            }

LABEL_128:
            v72 = *a2;
            *a1 = *a2;
            v73 = v72;
            swift_storeEnumTagMultiPayload();
            goto LABEL_178;
          }

          if (v12 > 7)
          {
            if (v12 == 8 || v12 == 9)
            {
              goto LABEL_128;
            }
          }

          else if (v12 == 5 || v12 == 6)
          {
            goto LABEL_125;
          }

LABEL_177:
          memcpy(a1, a2, *(*(v11 - 8) + 64));
LABEL_178:
          v83 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
          v84 = v83[5];
          v85 = a1 + v84;
          v86 = a2 + v84;
          v87 = *(a2 + v84 + 8);
          if (v87)
          {
            v166 = a1;
            *v85 = *v86;
            *(v85 + 1) = v87;
            v88 = *(v86 + 2);
            v89 = *(v86 + 3);
            v90 = *(v86 + 4);
            v91 = *(v86 + 5);
            v93 = *(v86 + 6);
            v92 = *(v86 + 7);
            v156 = v86[64];
            sub_21DBF8E0C();
            sub_21D2A7DB4(v88, v89, v90, v91, v93, v92, v156);
            *(v85 + 2) = v88;
            *(v85 + 3) = v89;
            *(v85 + 4) = v90;
            *(v85 + 5) = v91;
            *(v85 + 6) = v93;
            *(v85 + 7) = v92;
            v85[64] = v156;
            *(v85 + 65) = *(v86 + 65);
            v94 = v86[120];
            if (v94 == 255)
            {
              *(v85 + 72) = *(v86 + 72);
              *(v85 + 88) = *(v86 + 88);
              *(v85 + 104) = *(v86 + 104);
              v85[120] = v86[120];
            }

            else
            {
              v95 = *(v86 + 9);
              v157 = *(v86 + 10);
              v96 = *(v86 + 11);
              v97 = *(v86 + 12);
              v98 = *(v86 + 13);
              v99 = *(v86 + 14);
              v100 = v94 & 1;
              sub_21D0FB960(v95, v157, v96, v97, v98, v99, v94 & 1);
              *(v85 + 9) = v95;
              *(v85 + 10) = v157;
              *(v85 + 11) = v96;
              *(v85 + 12) = v97;
              *(v85 + 13) = v98;
              *(v85 + 14) = v99;
              v85[120] = v100;
            }

            a1 = v166;
            v85[121] = v86[121];
            goto LABEL_198;
          }

LABEL_188:
          v116 = *(v86 + 5);
          *(v85 + 4) = *(v86 + 4);
          *(v85 + 5) = v116;
          *(v85 + 6) = *(v86 + 6);
          *(v85 + 106) = *(v86 + 106);
          v117 = *(v86 + 1);
          *v85 = *v86;
          *(v85 + 1) = v117;
          v118 = *(v86 + 3);
          *(v85 + 2) = *(v86 + 2);
          *(v85 + 3) = v118;
LABEL_198:
          *(a1 + v83[6]) = *(a2 + v83[6]);
          *(a1 + v83[7]) = *(a2 + v83[7]);
          *(a1 + v83[8]) = *(a2 + v83[8]);
          *(a1 + v83[9]) = *(a2 + v83[9]);
          *(a1 + v83[10]) = *(a2 + v83[10]);
          v134 = v83[11];
          v135 = *(a2 + v134);
          *(a1 + v134) = v135;
          v136 = v135;
          goto LABEL_250;
        }

LABEL_68:
        memcpy(a1, a2, *(*(v6 - 8) + 64));
        goto LABEL_251;
      }

      v26 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v27 = swift_getEnumCaseMultiPayload();
      if (v27 <= 4)
      {
        if (v27 > 2)
        {
LABEL_129:
          v74 = sub_21DBF563C();
          (*(*(v74 - 8) + 16))(a1, a2, v74);
          swift_storeEnumTagMultiPayload();
          goto LABEL_185;
        }

        if (v27 != 1)
        {
          if (v27 == 2)
          {
            goto LABEL_129;
          }

          goto LABEL_184;
        }

LABEL_132:
        v75 = *a2;
        *a1 = *a2;
        v76 = v75;
        swift_storeEnumTagMultiPayload();
        goto LABEL_185;
      }

      if (v27 > 7)
      {
        if (v27 == 8 || v27 == 9)
        {
          goto LABEL_132;
        }
      }

      else if (v27 == 5 || v27 == 6)
      {
        goto LABEL_129;
      }

LABEL_184:
      memcpy(a1, a2, *(*(v26 - 8) + 64));
LABEL_185:
      v83 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
      v101 = v83[5];
      v85 = a1 + v101;
      v86 = a2 + v101;
      v102 = *(a2 + v101 + 8);
      if (v102)
      {
        v167 = a1;
        *v85 = *v86;
        *(v85 + 1) = v102;
        v103 = *(v86 + 2);
        v104 = *(v86 + 3);
        v105 = *(v86 + 4);
        v106 = *(v86 + 5);
        v108 = *(v86 + 6);
        v107 = *(v86 + 7);
        v158 = v86[64];
        sub_21DBF8E0C();
        sub_21D2A7DB4(v103, v104, v105, v106, v108, v107, v158);
        *(v85 + 2) = v103;
        *(v85 + 3) = v104;
        *(v85 + 4) = v105;
        *(v85 + 5) = v106;
        *(v85 + 6) = v108;
        *(v85 + 7) = v107;
        v85[64] = v158;
        *(v85 + 65) = *(v86 + 65);
        v109 = v86[120];
        if (v109 == 255)
        {
          *(v85 + 72) = *(v86 + 72);
          *(v85 + 88) = *(v86 + 88);
          *(v85 + 104) = *(v86 + 104);
          v85[120] = v86[120];
        }

        else
        {
          v110 = *(v86 + 9);
          v159 = *(v86 + 10);
          v111 = *(v86 + 11);
          v112 = *(v86 + 12);
          v113 = *(v86 + 13);
          v114 = *(v86 + 14);
          v115 = v109 & 1;
          sub_21D0FB960(v110, v159, v111, v112, v113, v114, v109 & 1);
          *(v85 + 9) = v110;
          *(v85 + 10) = v159;
          *(v85 + 11) = v111;
          *(v85 + 12) = v112;
          *(v85 + 13) = v113;
          *(v85 + 14) = v114;
          v85[120] = v115;
        }

        a1 = v167;
        v85[121] = v86[121];
        goto LABEL_198;
      }

      goto LABEL_188;
    }

    v6 = type metadata accessor for TTRRemindersListViewModel.Item(0);
    v8 = swift_getEnumCaseMultiPayload();
    if (v8 > 3)
    {
      if (v8 > 5)
      {
        if (v8 != 6)
        {
          if (v8 != 7)
          {
            if (v8 == 8)
            {
LABEL_15:
              *a1 = *a2;
              v9 = *(type metadata accessor for TTRRemindersListTips(0) + 20);
              v10 = sub_21DBF8D7C();
              (*(*(v10 - 8) + 16))(a1 + v9, a2 + v9, v10);
LABEL_250:
              swift_storeEnumTagMultiPayload();
              goto LABEL_251;
            }

            goto LABEL_68;
          }

          v37 = type metadata accessor for TTRTemplatePublicLinkData.CreatedStateDescription(0);
          v38 = *(v37 - 8);
          if ((*(v38 + 48))(a2, 1, v37))
          {
LABEL_67:
            v51 = type metadata accessor for TTRTemplatePublicLinkData.StateToDisplay(0);
            memcpy(a1, a2, *(*(v51 - 8) + 64));
LABEL_124:
            v70 = type metadata accessor for TTRTemplatePublicLinkData(0);
            *(a1 + *(v70 + 20)) = *(a2 + *(v70 + 20));
            goto LABEL_250;
          }

LABEL_123:
          v69 = sub_21DBF563C();
          (*(*(v69 - 8) + 16))(a1, a2, v69);
          *(a1 + *(v37 + 20)) = *(a2 + *(v37 + 20));
          (*(v38 + 56))(a1, 0, 1, v37);
          goto LABEL_124;
        }

        v45 = type metadata accessor for TTRRemindersListViewModel.HashtagLabelSelectorState(0);
        v46 = *(v45 - 8);
        if ((*(v46 + 48))(a2, 1, v45))
        {
          v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A440, &unk_21DC16170);
          memcpy(a1, a2, *(*(v47 - 8) + 64));
        }

        else
        {
          *a1 = *a2;
          v63 = *(v45 + 20);
          v64 = sub_21DBF6C1C();
          v165 = *(*(v64 - 8) + 16);
          sub_21DBF8E0C();
          v165(a1 + v63, a2 + v63, v64);
          (*(v46 + 56))(a1, 0, 1, v45);
        }

        v65 = *(type metadata accessor for TTRRemindersListViewModel.HashtagsState(0) + 20);
        v57 = a1 + v65;
        v58 = a2 + v65;
        v59 = *(v58 + 1);
        if (!v59)
        {
          *v57 = *v58;
          *(v57 + 2) = *(v58 + 2);
          goto LABEL_250;
        }

LABEL_116:
        *v57 = *v58;
        *(v57 + 1) = v59;
        v66 = *(v58 + 2);
        *(v57 + 2) = v66;
        sub_21DBF8E0C();
        v67 = v66;
        goto LABEL_250;
      }

      if (v8 != 4)
      {
LABEL_41:
        *a1 = *a2;
        *(a1 + 8) = *(a2 + 8);
        *(a1 + 9) = *(a2 + 9);
        v24 = a2[2];
        a1[2] = v24;
        v25 = v24;
        goto LABEL_250;
      }

      v48 = *a2;
      *a1 = *a2;
      v16 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
      v17 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v18 = *(v17 - 8);
      v49 = *(v18 + 48);
      v50 = v48;
      if (v49(a2 + v16, 1, v17))
      {
LABEL_61:
        v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70, &unk_21DC09230);
        memcpy(a1 + v16, a2 + v16, *(*(v44 - 8) + 64));
        goto LABEL_250;
      }

      v68 = swift_getEnumCaseMultiPayload();
      if (v68 > 4)
      {
        if (v68 <= 7)
        {
          if (v68 == 5 || v68 == 6)
          {
            goto LABEL_214;
          }

          goto LABEL_248;
        }

        if (v68 != 8 && v68 != 9)
        {
          goto LABEL_248;
        }
      }

      else
      {
        if (v68 > 2)
        {
          goto LABEL_214;
        }

        if (v68 != 1)
        {
          if (v68 == 2)
          {
            goto LABEL_214;
          }

          goto LABEL_248;
        }
      }

      goto LABEL_217;
    }

    if (v8 > 1)
    {
      if (v8 == 2)
      {
        v41 = *a2;
        *a1 = *a2;
        v16 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
        v17 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
        v18 = *(v17 - 8);
        v42 = *(v18 + 48);
        v43 = v41;
        if (v42(a2 + v16, 1, v17))
        {
          goto LABEL_61;
        }

        v62 = swift_getEnumCaseMultiPayload();
        if (v62 > 4)
        {
          if (v62 <= 7)
          {
            if (v62 == 5 || v62 == 6)
            {
              goto LABEL_214;
            }

            goto LABEL_248;
          }

          if (v62 != 8 && v62 != 9)
          {
            goto LABEL_248;
          }
        }

        else
        {
          if (v62 > 2)
          {
            goto LABEL_214;
          }

          if (v62 != 1)
          {
            if (v62 == 2)
            {
              goto LABEL_214;
            }

            goto LABEL_248;
          }
        }
      }

      else
      {
        v21 = *a2;
        *a1 = *a2;
        v16 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
        v17 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
        v18 = *(v17 - 8);
        v22 = *(v18 + 48);
        v23 = v21;
        if (v22(a2 + v16, 1, v17))
        {
          goto LABEL_61;
        }

        v61 = swift_getEnumCaseMultiPayload();
        if (v61 > 4)
        {
          if (v61 <= 7)
          {
            if (v61 == 5 || v61 == 6)
            {
              goto LABEL_214;
            }

            goto LABEL_248;
          }

          if (v61 != 8 && v61 != 9)
          {
            goto LABEL_248;
          }
        }

        else
        {
          if (v61 > 2)
          {
            goto LABEL_214;
          }

          if (v61 != 1)
          {
            if (v61 == 2)
            {
              goto LABEL_214;
            }

            goto LABEL_248;
          }
        }
      }

LABEL_217:
      v153 = *(a2 + v16);
      *(a1 + v16) = v153;
      v154 = v153;
      swift_storeEnumTagMultiPayload();
      goto LABEL_249;
    }

    if (v8)
    {
      if (v8 != 1)
      {
        goto LABEL_68;
      }

      v13 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v14 = swift_getEnumCaseMultiPayload();
      if (v14 <= 4)
      {
        if (v14 > 2)
        {
LABEL_133:
          v77 = sub_21DBF563C();
          (*(*(v77 - 8) + 16))(a1, a2, v77);
          swift_storeEnumTagMultiPayload();
          goto LABEL_192;
        }

        if (v14 != 1)
        {
          if (v14 == 2)
          {
            goto LABEL_133;
          }

          goto LABEL_191;
        }

LABEL_136:
        v78 = *a2;
        *a1 = *a2;
        v79 = v78;
        swift_storeEnumTagMultiPayload();
        goto LABEL_192;
      }

      if (v14 > 7)
      {
        if (v14 == 8 || v14 == 9)
        {
          goto LABEL_136;
        }
      }

      else if (v14 == 5 || v14 == 6)
      {
        goto LABEL_133;
      }

LABEL_191:
      memcpy(a1, a2, *(*(v13 - 8) + 64));
LABEL_192:
      v83 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
      v119 = v83[5];
      v85 = a1 + v119;
      v86 = a2 + v119;
      v120 = *(a2 + v119 + 8);
      if (v120)
      {
        v168 = a1;
        *v85 = *v86;
        *(v85 + 1) = v120;
        v121 = *(v86 + 2);
        v122 = *(v86 + 3);
        v123 = *(v86 + 4);
        v124 = *(v86 + 5);
        v126 = *(v86 + 6);
        v125 = *(v86 + 7);
        v160 = v86[64];
        sub_21DBF8E0C();
        sub_21D2A7DB4(v121, v122, v123, v124, v126, v125, v160);
        *(v85 + 2) = v121;
        *(v85 + 3) = v122;
        *(v85 + 4) = v123;
        *(v85 + 5) = v124;
        *(v85 + 6) = v126;
        *(v85 + 7) = v125;
        v85[64] = v160;
        *(v85 + 65) = *(v86 + 65);
        v127 = v86[120];
        if (v127 == 255)
        {
          *(v85 + 72) = *(v86 + 72);
          *(v85 + 88) = *(v86 + 88);
          *(v85 + 104) = *(v86 + 104);
          v85[120] = v86[120];
        }

        else
        {
          v128 = *(v86 + 9);
          v161 = *(v86 + 10);
          v129 = *(v86 + 11);
          v130 = *(v86 + 12);
          v131 = *(v86 + 13);
          v132 = *(v86 + 14);
          v133 = v127 & 1;
          sub_21D0FB960(v128, v161, v129, v130, v131, v132, v127 & 1);
          *(v85 + 9) = v128;
          *(v85 + 10) = v161;
          *(v85 + 11) = v129;
          *(v85 + 12) = v130;
          *(v85 + 13) = v131;
          *(v85 + 14) = v132;
          v85[120] = v133;
        }

        a1 = v168;
        v85[121] = v86[121];
        goto LABEL_198;
      }

      goto LABEL_188;
    }

    v39 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    v40 = swift_getEnumCaseMultiPayload();
    if (v40 <= 4)
    {
      if (v40 > 2)
      {
LABEL_137:
        v80 = sub_21DBF563C();
        (*(*(v80 - 8) + 16))(a1, a2, v80);
        swift_storeEnumTagMultiPayload();
        goto LABEL_200;
      }

      if (v40 != 1)
      {
        if (v40 == 2)
        {
          goto LABEL_137;
        }

        goto LABEL_199;
      }

LABEL_140:
      v81 = *a2;
      *a1 = *a2;
      v82 = v81;
      swift_storeEnumTagMultiPayload();
      goto LABEL_200;
    }

    if (v40 > 7)
    {
      if (v40 == 8 || v40 == 9)
      {
        goto LABEL_140;
      }
    }

    else if (v40 == 5 || v40 == 6)
    {
      goto LABEL_137;
    }

LABEL_199:
    memcpy(a1, a2, *(*(v39 - 8) + 64));
LABEL_200:
    v83 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
    v137 = v83[5];
    v85 = a1 + v137;
    v86 = a2 + v137;
    v138 = *(a2 + v137 + 8);
    if (v138)
    {
      v169 = a1;
      *v85 = *v86;
      *(v85 + 1) = v138;
      v139 = *(v86 + 2);
      v140 = *(v86 + 3);
      v141 = *(v86 + 4);
      v142 = *(v86 + 5);
      v143 = *(v86 + 6);
      v144 = *(v86 + 7);
      v162 = v86[64];
      sub_21DBF8E0C();
      sub_21D2A7DB4(v139, v140, v141, v142, v143, v144, v162);
      *(v85 + 2) = v139;
      *(v85 + 3) = v140;
      *(v85 + 4) = v141;
      *(v85 + 5) = v142;
      *(v85 + 6) = v143;
      *(v85 + 7) = v144;
      v85[64] = v162;
      *(v85 + 65) = *(v86 + 65);
      v145 = v86[120];
      if (v145 == 255)
      {
        *(v85 + 72) = *(v86 + 72);
        *(v85 + 88) = *(v86 + 88);
        *(v85 + 104) = *(v86 + 104);
        v85[120] = v86[120];
      }

      else
      {
        v146 = *(v86 + 9);
        v163 = *(v86 + 10);
        v147 = *(v86 + 11);
        v148 = *(v86 + 12);
        v149 = *(v86 + 13);
        v150 = *(v86 + 14);
        v151 = v145 & 1;
        sub_21D0FB960(v146, v163, v147, v148, v149, v150, v145 & 1);
        *(v85 + 9) = v146;
        *(v85 + 10) = v163;
        *(v85 + 11) = v147;
        *(v85 + 12) = v148;
        *(v85 + 13) = v149;
        *(v85 + 14) = v150;
        v85[120] = v151;
      }

      a1 = v169;
      v85[121] = v86[121];
      goto LABEL_198;
    }

    goto LABEL_188;
  }

  *a1 = *a2;
  sub_21DBF8E0C();
LABEL_251:
  swift_storeEnumTagMultiPayload();
  return a1;
}

char *assignWithCopy for TTRRemindersListHighlightTarget(char *a1, char *a2, uint64_t a3)
{
  if (a1 != a2)
  {
    sub_21D106B58(a1, type metadata accessor for TTRRemindersListHighlightTarget);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 2)
    {
      *a1 = *a2;
      sub_21DBF8E0C();
LABEL_10:
      swift_storeEnumTagMultiPayload();
      return a1;
    }

    if (EnumCaseMultiPayload == 1)
    {
      v6 = type metadata accessor for TTRRemindersListViewModel.Item(0);
      v7 = swift_getEnumCaseMultiPayload();
      if (v7 > 3)
      {
        if (v7 <= 5)
        {
          if (v7 == 4)
          {
            v8 = *a2;
            *a1 = *a2;
            v9 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
            v10 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
            v11 = *(v10 - 8);
            v12 = *(v11 + 48);
            v13 = v8;
            if (v12(&a2[v9], 1, v10))
            {
LABEL_8:
              v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70, &unk_21DC09230);
              memcpy(&a1[v9], &a2[v9], *(*(v14 - 8) + 64));
LABEL_193:
              swift_storeEnumTagMultiPayload();
              goto LABEL_10;
            }

            v64 = swift_getEnumCaseMultiPayload();
            v65 = v10;
            v66 = v9;
            if (v64 <= 4)
            {
              if (v64 > 2)
              {
                goto LABEL_129;
              }

LABEL_96:
              if (v64 != 1)
              {
                if (v64 == 2)
                {
LABEL_129:
                  v82 = sub_21DBF563C();
                  (*(*(v82 - 8) + 16))(&a1[v66], &a2[v66], v82);
                  swift_storeEnumTagMultiPayload();
LABEL_192:
                  (*(v11 + 56))(&a1[v66], 0, 1, v65);
                  goto LABEL_193;
                }

LABEL_191:
                memcpy(&a1[v66], &a2[v66], *(v11 + 64));
                goto LABEL_192;
              }

LABEL_137:
              v86 = *&a2[v66];
              *&a1[v66] = v86;
              v87 = v86;
              swift_storeEnumTagMultiPayload();
              goto LABEL_192;
            }

            if (v64 <= 7)
            {
              goto LABEL_127;
            }

            goto LABEL_135;
          }

LABEL_38:
          *a1 = *a2;
          a1[8] = a2[8];
          a1[9] = a2[9];
          a1[10] = a2[10];
          v29 = *(a2 + 2);
          *(a1 + 2) = v29;
          v30 = v29;
          swift_storeEnumTagMultiPayload();
          goto LABEL_10;
        }

        goto LABEL_14;
      }

      if (v7 <= 1)
      {
        if (v7)
        {
          if (v7 != 1)
          {
            goto LABEL_45;
          }

          v18 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
          v19 = swift_getEnumCaseMultiPayload();
          if (v19 <= 4)
          {
            if (v19 > 2)
            {
LABEL_106:
              v67 = sub_21DBF563C();
              (*(*(v67 - 8) + 16))(a1, a2, v67);
              swift_storeEnumTagMultiPayload();
              goto LABEL_151;
            }

            if (v19 != 1)
            {
              if (v19 == 2)
              {
                goto LABEL_106;
              }

              goto LABEL_150;
            }

LABEL_109:
            v68 = *a2;
            *a1 = *a2;
            v69 = v68;
            swift_storeEnumTagMultiPayload();
            goto LABEL_151;
          }

          if (v19 > 7)
          {
            if (v19 == 8 || v19 == 9)
            {
              goto LABEL_109;
            }
          }

          else if (v19 == 5 || v19 == 6)
          {
            goto LABEL_106;
          }

LABEL_150:
          memcpy(a1, a2, *(*(v18 - 8) + 64));
LABEL_151:
          v88 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
          v89 = v88[5];
          v90 = &a1[v89];
          v91 = &a2[v89];
          if (!*&a2[v89 + 8])
          {
            goto LABEL_167;
          }

          goto LABEL_163;
        }

        v42 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
        v43 = swift_getEnumCaseMultiPayload();
        if (v43 > 4)
        {
          if (v43 <= 7)
          {
            if (v43 == 5 || v43 == 6)
            {
              goto LABEL_110;
            }

            goto LABEL_153;
          }

          if (v43 != 8 && v43 != 9)
          {
            goto LABEL_153;
          }
        }

        else
        {
          if (v43 > 2)
          {
LABEL_110:
            v70 = sub_21DBF563C();
            (*(*(v70 - 8) + 16))(a1, a2, v70);
            swift_storeEnumTagMultiPayload();
LABEL_154:
            v92 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
            v93 = v92[5];
            v94 = &a1[v93];
            v95 = &a2[v93];
            if (*&a2[v93 + 8])
            {
              *v94 = *v95;
              *(v94 + 1) = *(v95 + 1);
              v96 = *(v95 + 2);
              v97 = *(v95 + 3);
              v98 = *(v95 + 4);
              v99 = *(v95 + 5);
              v100 = *(v95 + 6);
              v167 = *(v95 + 7);
              v174 = v95[64];
              sub_21DBF8E0C();
              sub_21D2A7DB4(v96, v97, v98, v99, v100, v167, v174);
              *(v94 + 2) = v96;
              *(v94 + 3) = v97;
              *(v94 + 4) = v98;
              *(v94 + 5) = v99;
              *(v94 + 6) = v100;
              *(v94 + 7) = v167;
              v94[64] = v174;
              v94[65] = v95[65];
              v94[66] = v95[66];
              v94[67] = v95[67];
              v94[68] = v95[68];
              v101 = v95[120];
              if (v101 == 255)
              {
                v113 = *(v95 + 72);
                v114 = *(v95 + 88);
                v115 = *(v95 + 104);
                v94[120] = v95[120];
                *(v94 + 104) = v115;
                *(v94 + 88) = v114;
                *(v94 + 72) = v113;
              }

              else
              {
                v168 = *(v95 + 10);
                v175 = *(v95 + 9);
                v102 = *(v95 + 11);
                v103 = *(v95 + 12);
                v104 = *(v95 + 13);
                v105 = *(v95 + 14);
                v106 = v101 & 1;
                sub_21D0FB960(v175, v168, v102, v103, v104, v105, v101 & 1);
                *(v94 + 9) = v175;
                *(v94 + 10) = v168;
                *(v94 + 11) = v102;
                *(v94 + 12) = v103;
                *(v94 + 13) = v104;
                *(v94 + 14) = v105;
                v94[120] = v106;
              }

              v94[121] = v95[121];
            }

            else
            {
              v107 = *v95;
              v108 = *(v95 + 1);
              v109 = *(v95 + 3);
              *(v94 + 2) = *(v95 + 2);
              *(v94 + 3) = v109;
              *v94 = v107;
              *(v94 + 1) = v108;
              v110 = *(v95 + 4);
              v111 = *(v95 + 5);
              v112 = *(v95 + 6);
              *(v94 + 106) = *(v95 + 106);
              *(v94 + 5) = v111;
              *(v94 + 6) = v112;
              *(v94 + 4) = v110;
            }

            a1[v92[6]] = a2[v92[6]];
            a1[v92[7]] = a2[v92[7]];
            a1[v92[8]] = a2[v92[8]];
            a1[v92[9]] = a2[v92[9]];
            a1[v92[10]] = a2[v92[10]];
            v116 = v92[11];
LABEL_177:
            v165 = *&a2[v116];
            *&a1[v116] = v165;
            v166 = v165;
            swift_storeEnumTagMultiPayload();
            goto LABEL_10;
          }

          if (v43 != 1)
          {
            if (v43 == 2)
            {
              goto LABEL_110;
            }

LABEL_153:
            memcpy(a1, a2, *(*(v42 - 8) + 64));
            goto LABEL_154;
          }
        }

        v71 = *a2;
        *a1 = *a2;
        v72 = v71;
        swift_storeEnumTagMultiPayload();
        goto LABEL_154;
      }

LABEL_34:
      if (v7 != 2)
      {
        v22 = *a2;
        *a1 = *a2;
        v23 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
        v24 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
        v25 = *(v24 - 8);
        v26 = *(v25 + 48);
        v27 = v22;
        if (v26(&a2[v23], 1, v24))
        {
          v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70, &unk_21DC09230);
          memcpy(&a1[v23], &a2[v23], *(*(v28 - 8) + 64));
          goto LABEL_193;
        }

        v52 = swift_getEnumCaseMultiPayload();
        if (v52 > 4)
        {
          if (v52 <= 7)
          {
            if (v52 == 5 || v52 == 6)
            {
              goto LABEL_122;
            }

            goto LABEL_187;
          }

          if (v52 != 8 && v52 != 9)
          {
            goto LABEL_187;
          }
        }

        else
        {
          if (v52 > 2)
          {
LABEL_122:
            v79 = sub_21DBF563C();
            (*(*(v79 - 8) + 16))(&a1[v23], &a2[v23], v79);
            swift_storeEnumTagMultiPayload();
LABEL_188:
            (*(v25 + 56))(&a1[v23], 0, 1, v24);
            goto LABEL_193;
          }

          if (v52 != 1)
          {
            if (v52 == 2)
            {
              goto LABEL_122;
            }

LABEL_187:
            memcpy(&a1[v23], &a2[v23], *(v25 + 64));
            goto LABEL_188;
          }
        }

        v80 = *&a2[v23];
        *&a1[v23] = v80;
        v81 = v80;
        swift_storeEnumTagMultiPayload();
        goto LABEL_188;
      }

      v31 = *a2;
      *a1 = *a2;
      v9 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
      v32 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v33 = *(v32 - 8);
      v34 = *(v33 + 48);
      v35 = v31;
      if (v34(&a2[v9], 1, v32))
      {
        goto LABEL_8;
      }

      v53 = swift_getEnumCaseMultiPayload();
      if (v53 > 4)
      {
        if (v53 <= 7)
        {
          if (v53 == 5 || v53 == 6)
          {
            goto LABEL_130;
          }

          goto LABEL_189;
        }

        if (v53 != 8 && v53 != 9)
        {
          goto LABEL_189;
        }
      }

      else
      {
        if (v53 > 2)
        {
LABEL_130:
          v83 = sub_21DBF563C();
          (*(*(v83 - 8) + 16))(&a1[v9], &a2[v9], v83);
          swift_storeEnumTagMultiPayload();
LABEL_190:
          (*(v33 + 56))(&a1[v9], 0, 1, v32);
          goto LABEL_193;
        }

        if (v53 != 1)
        {
          if (v53 == 2)
          {
            goto LABEL_130;
          }

LABEL_189:
          memcpy(&a1[v9], &a2[v9], *(v33 + 64));
          goto LABEL_190;
        }
      }

      v84 = *&a2[v9];
      *&a1[v9] = v84;
      v85 = v84;
      swift_storeEnumTagMultiPayload();
      goto LABEL_190;
    }

    v6 = type metadata accessor for TTRRemindersListViewModel.Item(0);
    v7 = swift_getEnumCaseMultiPayload();
    if (v7 > 3)
    {
      if (v7 <= 5)
      {
        if (v7 == 4)
        {
          v46 = *a2;
          *a1 = *a2;
          v47 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
          v48 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
          v11 = *(v48 - 8);
          v49 = *(v11 + 48);
          v50 = v46;
          if (v49(&a2[v47], 1, v48))
          {
            v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70, &unk_21DC09230);
            memcpy(&a1[v47], &a2[v47], *(*(v51 - 8) + 64));
            goto LABEL_193;
          }

          v64 = swift_getEnumCaseMultiPayload();
          v65 = v48;
          v66 = v47;
          if (v64 <= 4)
          {
            if (v64 > 2)
            {
              goto LABEL_129;
            }

            goto LABEL_96;
          }

          if (v64 <= 7)
          {
LABEL_127:
            if (v64 == 5 || v64 == 6)
            {
              goto LABEL_129;
            }

            goto LABEL_191;
          }

LABEL_135:
          if (v64 != 8 && v64 != 9)
          {
            goto LABEL_191;
          }

          goto LABEL_137;
        }

        goto LABEL_38;
      }

LABEL_14:
      switch(v7)
      {
        case 6:
          v39 = type metadata accessor for TTRRemindersListViewModel.HashtagLabelSelectorState(0);
          v40 = *(v39 - 8);
          if ((*(v40 + 48))(a2, 1, v39))
          {
            v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A440, &unk_21DC16170);
            memcpy(a1, a2, *(*(v41 - 8) + 64));
          }

          else
          {
            *a1 = *a2;
            v56 = *(v39 + 20);
            v57 = sub_21DBF6C1C();
            v173 = *(*(v57 - 8) + 16);
            sub_21DBF8E0C();
            v173(&a1[v56], &a2[v56], v57);
            (*(v40 + 56))(a1, 0, 1, v39);
          }

          v58 = *(type metadata accessor for TTRRemindersListViewModel.HashtagsState(0) + 20);
          v59 = &a1[v58];
          v60 = &a2[v58];
          if (*(v60 + 1))
          {
            *v59 = *v60;
            *(v59 + 1) = *(v60 + 1);
            v61 = *(v60 + 2);
            *(v59 + 2) = v61;
            sub_21DBF8E0C();
            v62 = v61;
          }

          else
          {
            v63 = *v60;
            *(v59 + 2) = *(v60 + 2);
            *v59 = v63;
          }

          goto LABEL_193;
        case 7:
          v36 = type metadata accessor for TTRTemplatePublicLinkData.CreatedStateDescription(0);
          v37 = *(v36 - 8);
          if ((*(v37 + 48))(a2, 1, v36))
          {
            v38 = type metadata accessor for TTRTemplatePublicLinkData.StateToDisplay(0);
            memcpy(a1, a2, *(*(v38 - 8) + 64));
          }

          else
          {
            v54 = sub_21DBF563C();
            (*(*(v54 - 8) + 16))(a1, a2, v54);
            a1[*(v36 + 20)] = a2[*(v36 + 20)];
            (*(v37 + 56))(a1, 0, 1, v36);
          }

          v55 = type metadata accessor for TTRTemplatePublicLinkData(0);
          *&a1[*(v55 + 20)] = *&a2[*(v55 + 20)];
          swift_storeEnumTagMultiPayload();
          goto LABEL_10;
        case 8:
          *a1 = *a2;
          v16 = *(type metadata accessor for TTRRemindersListTips(0) + 20);
          v17 = sub_21DBF8D7C();
          (*(*(v17 - 8) + 16))(&a1[v16], &a2[v16], v17);
          swift_storeEnumTagMultiPayload();
          goto LABEL_10;
      }

LABEL_45:
      memcpy(a1, a2, *(*(v6 - 8) + 64));
      goto LABEL_10;
    }

    if (v7 > 1)
    {
      goto LABEL_34;
    }

    if (v7)
    {
      if (v7 != 1)
      {
        goto LABEL_45;
      }

      v20 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v21 = swift_getEnumCaseMultiPayload();
      if (v21 <= 4)
      {
        if (v21 > 2)
        {
LABEL_114:
          v73 = sub_21DBF563C();
          (*(*(v73 - 8) + 16))(a1, a2, v73);
          swift_storeEnumTagMultiPayload();
          goto LABEL_162;
        }

        if (v21 != 1)
        {
          if (v21 == 2)
          {
            goto LABEL_114;
          }

          goto LABEL_161;
        }

LABEL_117:
        v74 = *a2;
        *a1 = *a2;
        v75 = v74;
        swift_storeEnumTagMultiPayload();
        goto LABEL_162;
      }

      if (v21 > 7)
      {
        if (v21 == 8 || v21 == 9)
        {
          goto LABEL_117;
        }
      }

      else if (v21 == 5 || v21 == 6)
      {
        goto LABEL_114;
      }

LABEL_161:
      memcpy(a1, a2, *(*(v20 - 8) + 64));
LABEL_162:
      v88 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
      v117 = v88[5];
      v90 = &a1[v117];
      v91 = &a2[v117];
      if (!*&a2[v117 + 8])
      {
LABEL_167:
        v132 = *v91;
        v133 = *(v91 + 1);
        v134 = *(v91 + 3);
        *(v90 + 2) = *(v91 + 2);
        *(v90 + 3) = v134;
        *v90 = v132;
        *(v90 + 1) = v133;
        v135 = *(v91 + 4);
        v136 = *(v91 + 5);
        v137 = *(v91 + 6);
        *(v90 + 106) = *(v91 + 106);
        *(v90 + 5) = v136;
        *(v90 + 6) = v137;
        *(v90 + 4) = v135;
LABEL_168:
        a1[v88[6]] = a2[v88[6]];
        a1[v88[7]] = a2[v88[7]];
        a1[v88[8]] = a2[v88[8]];
        a1[v88[9]] = a2[v88[9]];
        a1[v88[10]] = a2[v88[10]];
        v138 = v88[11];
        v139 = *&a2[v138];
        *&a1[v138] = v139;
        v140 = v139;
        swift_storeEnumTagMultiPayload();
        goto LABEL_10;
      }

LABEL_163:
      *v90 = *v91;
      *(v90 + 1) = *(v91 + 1);
      v118 = *(v91 + 2);
      v119 = *(v91 + 3);
      v120 = *(v91 + 4);
      v121 = *(v91 + 5);
      v122 = *(v91 + 6);
      v169 = *(v91 + 7);
      v176 = v91[64];
      sub_21DBF8E0C();
      sub_21D2A7DB4(v118, v119, v120, v121, v122, v169, v176);
      *(v90 + 2) = v118;
      *(v90 + 3) = v119;
      *(v90 + 4) = v120;
      *(v90 + 5) = v121;
      *(v90 + 6) = v122;
      *(v90 + 7) = v169;
      v90[64] = v176;
      v90[65] = v91[65];
      v90[66] = v91[66];
      v90[67] = v91[67];
      v90[68] = v91[68];
      v123 = v91[120];
      if (v123 == 255)
      {
        v129 = *(v91 + 72);
        v130 = *(v91 + 88);
        v131 = *(v91 + 104);
        v90[120] = v91[120];
        *(v90 + 104) = v131;
        *(v90 + 88) = v130;
        *(v90 + 72) = v129;
      }

      else
      {
        v170 = *(v91 + 10);
        v177 = *(v91 + 9);
        v124 = *(v91 + 11);
        v125 = *(v91 + 12);
        v126 = *(v91 + 13);
        v127 = *(v91 + 14);
        v128 = v123 & 1;
        sub_21D0FB960(v177, v170, v124, v125, v126, v127, v123 & 1);
        *(v90 + 9) = v177;
        *(v90 + 10) = v170;
        *(v90 + 11) = v124;
        *(v90 + 12) = v125;
        *(v90 + 13) = v126;
        *(v90 + 14) = v127;
        v90[120] = v128;
      }

      v90[121] = v91[121];
      goto LABEL_168;
    }

    v44 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    v45 = swift_getEnumCaseMultiPayload();
    if (v45 > 4)
    {
      if (v45 <= 7)
      {
        if (v45 == 5 || v45 == 6)
        {
          goto LABEL_118;
        }

        goto LABEL_169;
      }

      if (v45 != 8 && v45 != 9)
      {
        goto LABEL_169;
      }
    }

    else
    {
      if (v45 > 2)
      {
LABEL_118:
        v76 = sub_21DBF563C();
        (*(*(v76 - 8) + 16))(a1, a2, v76);
        swift_storeEnumTagMultiPayload();
LABEL_170:
        v141 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
        v142 = v141[5];
        v143 = &a1[v142];
        v144 = &a2[v142];
        if (*&a2[v142 + 8])
        {
          *v143 = *v144;
          *(v143 + 1) = *(v144 + 1);
          v145 = *(v144 + 2);
          v146 = *(v144 + 3);
          v148 = *(v144 + 4);
          v147 = *(v144 + 5);
          v149 = *(v144 + 6);
          v178 = *(v144 + 7);
          v171 = v144[64];
          sub_21DBF8E0C();
          sub_21D2A7DB4(v145, v146, v148, v147, v149, v178, v171);
          *(v143 + 2) = v145;
          *(v143 + 3) = v146;
          *(v143 + 4) = v148;
          *(v143 + 5) = v147;
          *(v143 + 6) = v149;
          *(v143 + 7) = v178;
          v143[64] = v171;
          v143[65] = v144[65];
          v143[66] = v144[66];
          v143[67] = v144[67];
          v143[68] = v144[68];
          v150 = v144[120];
          if (v150 == 255)
          {
            v162 = *(v144 + 72);
            v163 = *(v144 + 88);
            v164 = *(v144 + 104);
            v143[120] = v144[120];
            *(v143 + 104) = v164;
            *(v143 + 88) = v163;
            *(v143 + 72) = v162;
          }

          else
          {
            v172 = *(v144 + 10);
            v179 = *(v144 + 9);
            v152 = *(v144 + 11);
            v151 = *(v144 + 12);
            v153 = *(v144 + 13);
            v154 = *(v144 + 14);
            v155 = v150 & 1;
            sub_21D0FB960(v179, v172, v152, v151, v153, v154, v150 & 1);
            *(v143 + 9) = v179;
            *(v143 + 10) = v172;
            *(v143 + 11) = v152;
            *(v143 + 12) = v151;
            *(v143 + 13) = v153;
            *(v143 + 14) = v154;
            v143[120] = v155;
          }

          v143[121] = v144[121];
        }

        else
        {
          v156 = *v144;
          v157 = *(v144 + 1);
          v158 = *(v144 + 3);
          *(v143 + 2) = *(v144 + 2);
          *(v143 + 3) = v158;
          *v143 = v156;
          *(v143 + 1) = v157;
          v159 = *(v144 + 4);
          v160 = *(v144 + 5);
          v161 = *(v144 + 6);
          *(v143 + 106) = *(v144 + 106);
          *(v143 + 5) = v160;
          *(v143 + 6) = v161;
          *(v143 + 4) = v159;
        }

        a1[v141[6]] = a2[v141[6]];
        a1[v141[7]] = a2[v141[7]];
        a1[v141[8]] = a2[v141[8]];
        a1[v141[9]] = a2[v141[9]];
        a1[v141[10]] = a2[v141[10]];
        v116 = v141[11];
        goto LABEL_177;
      }

      if (v45 != 1)
      {
        if (v45 == 2)
        {
          goto LABEL_118;
        }

LABEL_169:
        memcpy(a1, a2, *(*(v44 - 8) + 64));
        goto LABEL_170;
      }
    }

    v77 = *a2;
    *a1 = *a2;
    v78 = v77;
    swift_storeEnumTagMultiPayload();
    goto LABEL_170;
  }

  return a1;
}

void *initializeWithTake for TTRRemindersListHighlightTarget(void *a1, char *a2, uint64_t a3)
{
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    v7 = type metadata accessor for TTRRemindersListViewModel.Item(0);
    v11 = swift_getEnumCaseMultiPayload();
    if (v11 <= 3)
    {
      if (v11 <= 1)
      {
        if (!v11)
        {
          v9 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
          v27 = swift_getEnumCaseMultiPayload();
          if (v27 <= 3)
          {
            if (v27 == 2 || v27 == 3)
            {
              goto LABEL_20;
            }
          }

          else if (v27 == 4 || v27 == 5 || v27 == 6)
          {
            goto LABEL_20;
          }

          goto LABEL_129;
        }

        if (v11 == 1)
        {
          v9 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
          v12 = swift_getEnumCaseMultiPayload();
          if (v12 <= 3)
          {
            if (v12 == 2 || v12 == 3)
            {
              goto LABEL_20;
            }
          }

          else if (v12 == 4 || v12 == 5 || v12 == 6)
          {
            goto LABEL_20;
          }

          goto LABEL_129;
        }

        goto LABEL_68;
      }

      if (v11 == 2)
      {
        *a1 = *a2;
        v19 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
        v20 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
        v21 = *(v20 - 8);
        if ((*(v21 + 48))(&a2[v19], 1, v20))
        {
LABEL_65:
          v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70, &unk_21DC09230);
          memcpy(a1 + v19, &a2[v19], *(*(v28 - 8) + 64));
          goto LABEL_171;
        }

        v33 = swift_getEnumCaseMultiPayload();
        if (v33 <= 3)
        {
          if (v33 == 2 || v33 == 3)
          {
            goto LABEL_109;
          }
        }

        else if (v33 == 4 || v33 == 5 || v33 == 6)
        {
          goto LABEL_109;
        }
      }

      else
      {
        *a1 = *a2;
        v19 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
        v20 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
        v21 = *(v20 - 8);
        if ((*(v21 + 48))(&a2[v19], 1, v20))
        {
          goto LABEL_65;
        }

        v43 = swift_getEnumCaseMultiPayload();
        if (v43 <= 3)
        {
          if (v43 == 2 || v43 == 3)
          {
            goto LABEL_109;
          }
        }

        else if (v43 == 4 || v43 == 5 || v43 == 6)
        {
          goto LABEL_109;
        }
      }

      goto LABEL_169;
    }

    if (v11 <= 6)
    {
      if (v11 == 4)
      {
        *a1 = *a2;
        v19 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
        v20 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
        v21 = *(v20 - 8);
        if ((*(v21 + 48))(&a2[v19], 1, v20))
        {
          goto LABEL_65;
        }

        v32 = swift_getEnumCaseMultiPayload();
        if (v32 <= 3)
        {
          if (v32 == 2 || v32 == 3)
          {
            goto LABEL_109;
          }
        }

        else if (v32 == 4 || v32 == 5 || v32 == 6)
        {
          goto LABEL_109;
        }

        goto LABEL_169;
      }

      if (v11 != 6)
      {
        goto LABEL_68;
      }

      v16 = type metadata accessor for TTRRemindersListViewModel.HashtagLabelSelectorState(0);
      v17 = *(v16 - 8);
      if ((*(v17 + 48))(a2, 1, v16))
      {
LABEL_33:
        v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A440, &unk_21DC16170);
        memcpy(a1, a2, *(*(v18 - 8) + 64));
LABEL_111:
        v40 = *(type metadata accessor for TTRRemindersListViewModel.HashtagsState(0) + 20);
        v41 = a1 + v40;
        v42 = &a2[v40];
        *v41 = *v42;
        *(v41 + 2) = *(v42 + 2);
        goto LABEL_171;
      }

LABEL_110:
      *a1 = *a2;
      v38 = *(v16 + 20);
      v39 = sub_21DBF6C1C();
      (*(*(v39 - 8) + 32))(a1 + v38, &a2[v38], v39);
      (*(v17 + 56))(a1, 0, 1, v16);
      goto LABEL_111;
    }

    if (v11 != 7)
    {
      if (v11 != 8)
      {
        goto LABEL_68;
      }

LABEL_45:
      *a1 = *a2;
      v22 = *(type metadata accessor for TTRRemindersListTips(0) + 20);
      v23 = sub_21DBF8D7C();
      (*(*(v23 - 8) + 32))(a1 + v22, &a2[v22], v23);
LABEL_171:
      swift_storeEnumTagMultiPayload();
      goto LABEL_172;
    }

    v25 = type metadata accessor for TTRTemplatePublicLinkData.CreatedStateDescription(0);
    v26 = *(v25 - 8);
    if ((*(v26 + 48))(a2, 1, v25))
    {
      goto LABEL_67;
    }

    goto LABEL_102;
  }

  if (!EnumCaseMultiPayload)
  {
    v7 = type metadata accessor for TTRRemindersListViewModel.Item(0);
    v8 = swift_getEnumCaseMultiPayload();
    if (v8 <= 3)
    {
      if (v8 <= 1)
      {
        if (!v8)
        {
          v9 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
          v24 = swift_getEnumCaseMultiPayload();
          if (v24 <= 3)
          {
            if (v24 == 2 || v24 == 3)
            {
              goto LABEL_20;
            }
          }

          else if (v24 == 4 || v24 == 5 || v24 == 6)
          {
            goto LABEL_20;
          }

          goto LABEL_129;
        }

        if (v8 == 1)
        {
          v9 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
          v10 = swift_getEnumCaseMultiPayload();
          if (v10 <= 3)
          {
            if (v10 == 2 || v10 == 3)
            {
              goto LABEL_20;
            }
          }

          else if (v10 == 4 || v10 == 5 || v10 == 6)
          {
LABEL_20:
            v13 = sub_21DBF563C();
            (*(*(v13 - 8) + 32))(a1, a2, v13);
            swift_storeEnumTagMultiPayload();
LABEL_130:
            v44 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
            v45 = v44[5];
            v46 = (a1 + v45);
            v47 = &a2[v45];
            v48 = *(v47 + 3);
            v46[2] = *(v47 + 2);
            v46[3] = v48;
            v49 = *(v47 + 1);
            *v46 = *v47;
            v46[1] = v49;
            *(v46 + 106) = *(v47 + 106);
            v50 = *(v47 + 6);
            v46[5] = *(v47 + 5);
            v46[6] = v50;
            v46[4] = *(v47 + 4);
            *(a1 + v44[6]) = a2[v44[6]];
            *(a1 + v44[7]) = a2[v44[7]];
            *(a1 + v44[8]) = a2[v44[8]];
            *(a1 + v44[9]) = a2[v44[9]];
            *(a1 + v44[10]) = a2[v44[10]];
            *(a1 + v44[11]) = *&a2[v44[11]];
            goto LABEL_171;
          }

LABEL_129:
          memcpy(a1, a2, *(*(v9 - 8) + 64));
          goto LABEL_130;
        }

LABEL_68:
        memcpy(a1, a2, *(*(v7 - 8) + 64));
LABEL_172:
        swift_storeEnumTagMultiPayload();
        return a1;
      }

      if (v8 == 2)
      {
        *a1 = *a2;
        v19 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
        v20 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
        v21 = *(v20 - 8);
        if ((*(v21 + 48))(&a2[v19], 1, v20))
        {
          goto LABEL_65;
        }

        v31 = swift_getEnumCaseMultiPayload();
        if (v31 <= 3)
        {
          if (v31 == 2 || v31 == 3)
          {
            goto LABEL_109;
          }
        }

        else if (v31 == 4 || v31 == 5 || v31 == 6)
        {
          goto LABEL_109;
        }
      }

      else
      {
        *a1 = *a2;
        v19 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
        v20 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
        v21 = *(v20 - 8);
        if ((*(v21 + 48))(&a2[v19], 1, v20))
        {
          goto LABEL_65;
        }

        v36 = swift_getEnumCaseMultiPayload();
        if (v36 <= 3)
        {
          if (v36 == 2 || v36 == 3)
          {
            goto LABEL_109;
          }
        }

        else if (v36 == 4 || v36 == 5 || v36 == 6)
        {
LABEL_109:
          v37 = sub_21DBF563C();
          (*(*(v37 - 8) + 32))(a1 + v19, &a2[v19], v37);
          swift_storeEnumTagMultiPayload();
LABEL_170:
          (*(v21 + 56))(a1 + v19, 0, 1, v20);
          goto LABEL_171;
        }
      }

LABEL_169:
      memcpy(a1 + v19, &a2[v19], *(v21 + 64));
      goto LABEL_170;
    }

    if (v8 <= 6)
    {
      if (v8 == 4)
      {
        *a1 = *a2;
        v19 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
        v20 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
        v21 = *(v20 - 8);
        if ((*(v21 + 48))(&a2[v19], 1, v20))
        {
          goto LABEL_65;
        }

        v30 = swift_getEnumCaseMultiPayload();
        if (v30 <= 3)
        {
          if (v30 == 2 || v30 == 3)
          {
            goto LABEL_109;
          }
        }

        else if (v30 == 4 || v30 == 5 || v30 == 6)
        {
          goto LABEL_109;
        }

        goto LABEL_169;
      }

      if (v8 != 6)
      {
        goto LABEL_68;
      }

      v16 = type metadata accessor for TTRRemindersListViewModel.HashtagLabelSelectorState(0);
      v17 = *(v16 - 8);
      if ((*(v17 + 48))(a2, 1, v16))
      {
        goto LABEL_33;
      }

      goto LABEL_110;
    }

    if (v8 != 7)
    {
      if (v8 != 8)
      {
        goto LABEL_68;
      }

      goto LABEL_45;
    }

    v25 = type metadata accessor for TTRTemplatePublicLinkData.CreatedStateDescription(0);
    v26 = *(v25 - 8);
    if ((*(v26 + 48))(a2, 1, v25))
    {
LABEL_67:
      v29 = type metadata accessor for TTRTemplatePublicLinkData.StateToDisplay(0);
      memcpy(a1, a2, *(*(v29 - 8) + 64));
LABEL_103:
      v35 = type metadata accessor for TTRTemplatePublicLinkData(0);
      *(a1 + *(v35 + 20)) = *&a2[*(v35 + 20)];
      goto LABEL_171;
    }

LABEL_102:
    v34 = sub_21DBF563C();
    (*(*(v34 - 8) + 32))(a1, a2, v34);
    *(a1 + *(v25 + 20)) = a2[*(v25 + 20)];
    (*(v26 + 56))(a1, 0, 1, v25);
    goto LABEL_103;
  }

  v14 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v14);
}

void *assignWithTake for TTRRemindersListHighlightTarget(void *a1, char *a2, uint64_t a3)
{
  if (a1 == a2)
  {
    return a1;
  }

  sub_21D106B58(a1, type metadata accessor for TTRRemindersListHighlightTarget);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    v7 = type metadata accessor for TTRRemindersListViewModel.Item(0);
    v11 = swift_getEnumCaseMultiPayload();
    if (v11 <= 3)
    {
      if (v11 <= 1)
      {
        if (!v11)
        {
          v9 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
          v27 = swift_getEnumCaseMultiPayload();
          if (v27 <= 3)
          {
            if (v27 == 2 || v27 == 3)
            {
              goto LABEL_21;
            }
          }

          else if (v27 == 4 || v27 == 5 || v27 == 6)
          {
            goto LABEL_21;
          }

          goto LABEL_130;
        }

        if (v11 == 1)
        {
          v9 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
          v12 = swift_getEnumCaseMultiPayload();
          if (v12 <= 3)
          {
            if (v12 == 2 || v12 == 3)
            {
              goto LABEL_21;
            }
          }

          else if (v12 == 4 || v12 == 5 || v12 == 6)
          {
            goto LABEL_21;
          }

          goto LABEL_130;
        }

        goto LABEL_69;
      }

      if (v11 == 2)
      {
        *a1 = *a2;
        v19 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
        v20 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
        v21 = *(v20 - 8);
        if ((*(v21 + 48))(&a2[v19], 1, v20))
        {
LABEL_66:
          v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70, &unk_21DC09230);
          memcpy(a1 + v19, &a2[v19], *(*(v28 - 8) + 64));
          goto LABEL_172;
        }

        v33 = swift_getEnumCaseMultiPayload();
        if (v33 <= 3)
        {
          if (v33 == 2 || v33 == 3)
          {
            goto LABEL_110;
          }
        }

        else if (v33 == 4 || v33 == 5 || v33 == 6)
        {
          goto LABEL_110;
        }
      }

      else
      {
        *a1 = *a2;
        v19 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
        v20 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
        v21 = *(v20 - 8);
        if ((*(v21 + 48))(&a2[v19], 1, v20))
        {
          goto LABEL_66;
        }

        v43 = swift_getEnumCaseMultiPayload();
        if (v43 <= 3)
        {
          if (v43 == 2 || v43 == 3)
          {
            goto LABEL_110;
          }
        }

        else if (v43 == 4 || v43 == 5 || v43 == 6)
        {
          goto LABEL_110;
        }
      }

      goto LABEL_170;
    }

    if (v11 <= 6)
    {
      if (v11 == 4)
      {
        *a1 = *a2;
        v19 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
        v20 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
        v21 = *(v20 - 8);
        if ((*(v21 + 48))(&a2[v19], 1, v20))
        {
          goto LABEL_66;
        }

        v32 = swift_getEnumCaseMultiPayload();
        if (v32 <= 3)
        {
          if (v32 == 2 || v32 == 3)
          {
            goto LABEL_110;
          }
        }

        else if (v32 == 4 || v32 == 5 || v32 == 6)
        {
          goto LABEL_110;
        }

        goto LABEL_170;
      }

      if (v11 != 6)
      {
        goto LABEL_69;
      }

      v16 = type metadata accessor for TTRRemindersListViewModel.HashtagLabelSelectorState(0);
      v17 = *(v16 - 8);
      if ((*(v17 + 48))(a2, 1, v16))
      {
LABEL_34:
        v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A440, &unk_21DC16170);
        memcpy(a1, a2, *(*(v18 - 8) + 64));
LABEL_112:
        v40 = *(type metadata accessor for TTRRemindersListViewModel.HashtagsState(0) + 20);
        v41 = a1 + v40;
        v42 = &a2[v40];
        *v41 = *v42;
        *(v41 + 2) = *(v42 + 2);
        goto LABEL_172;
      }

LABEL_111:
      *a1 = *a2;
      v38 = *(v16 + 20);
      v39 = sub_21DBF6C1C();
      (*(*(v39 - 8) + 32))(a1 + v38, &a2[v38], v39);
      (*(v17 + 56))(a1, 0, 1, v16);
      goto LABEL_112;
    }

    if (v11 != 7)
    {
      if (v11 != 8)
      {
        goto LABEL_69;
      }

LABEL_46:
      *a1 = *a2;
      v22 = *(type metadata accessor for TTRRemindersListTips(0) + 20);
      v23 = sub_21DBF8D7C();
      (*(*(v23 - 8) + 32))(a1 + v22, &a2[v22], v23);
LABEL_172:
      swift_storeEnumTagMultiPayload();
      goto LABEL_173;
    }

    v25 = type metadata accessor for TTRTemplatePublicLinkData.CreatedStateDescription(0);
    v26 = *(v25 - 8);
    if ((*(v26 + 48))(a2, 1, v25))
    {
      goto LABEL_68;
    }

    goto LABEL_103;
  }

  if (!EnumCaseMultiPayload)
  {
    v7 = type metadata accessor for TTRRemindersListViewModel.Item(0);
    v8 = swift_getEnumCaseMultiPayload();
    if (v8 <= 3)
    {
      if (v8 <= 1)
      {
        if (!v8)
        {
          v9 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
          v24 = swift_getEnumCaseMultiPayload();
          if (v24 <= 3)
          {
            if (v24 == 2 || v24 == 3)
            {
              goto LABEL_21;
            }
          }

          else if (v24 == 4 || v24 == 5 || v24 == 6)
          {
            goto LABEL_21;
          }

          goto LABEL_130;
        }

        if (v8 == 1)
        {
          v9 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
          v10 = swift_getEnumCaseMultiPayload();
          if (v10 <= 3)
          {
            if (v10 == 2 || v10 == 3)
            {
              goto LABEL_21;
            }
          }

          else if (v10 == 4 || v10 == 5 || v10 == 6)
          {
LABEL_21:
            v13 = sub_21DBF563C();
            (*(*(v13 - 8) + 32))(a1, a2, v13);
            swift_storeEnumTagMultiPayload();
LABEL_131:
            v44 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
            v45 = v44[5];
            v46 = (a1 + v45);
            v47 = &a2[v45];
            v48 = *(v47 + 3);
            v46[2] = *(v47 + 2);
            v46[3] = v48;
            v49 = *(v47 + 1);
            *v46 = *v47;
            v46[1] = v49;
            *(v46 + 106) = *(v47 + 106);
            v50 = *(v47 + 6);
            v46[5] = *(v47 + 5);
            v46[6] = v50;
            v46[4] = *(v47 + 4);
            *(a1 + v44[6]) = a2[v44[6]];
            *(a1 + v44[7]) = a2[v44[7]];
            *(a1 + v44[8]) = a2[v44[8]];
            *(a1 + v44[9]) = a2[v44[9]];
            *(a1 + v44[10]) = a2[v44[10]];
            *(a1 + v44[11]) = *&a2[v44[11]];
            goto LABEL_172;
          }

LABEL_130:
          memcpy(a1, a2, *(*(v9 - 8) + 64));
          goto LABEL_131;
        }

LABEL_69:
        memcpy(a1, a2, *(*(v7 - 8) + 64));
LABEL_173:
        swift_storeEnumTagMultiPayload();
        return a1;
      }

      if (v8 == 2)
      {
        *a1 = *a2;
        v19 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
        v20 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
        v21 = *(v20 - 8);
        if ((*(v21 + 48))(&a2[v19], 1, v20))
        {
          goto LABEL_66;
        }

        v31 = swift_getEnumCaseMultiPayload();
        if (v31 <= 3)
        {
          if (v31 == 2 || v31 == 3)
          {
            goto LABEL_110;
          }
        }

        else if (v31 == 4 || v31 == 5 || v31 == 6)
        {
          goto LABEL_110;
        }
      }

      else
      {
        *a1 = *a2;
        v19 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
        v20 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
        v21 = *(v20 - 8);
        if ((*(v21 + 48))(&a2[v19], 1, v20))
        {
          goto LABEL_66;
        }

        v36 = swift_getEnumCaseMultiPayload();
        if (v36 <= 3)
        {
          if (v36 == 2 || v36 == 3)
          {
            goto LABEL_110;
          }
        }

        else if (v36 == 4 || v36 == 5 || v36 == 6)
        {
LABEL_110:
          v37 = sub_21DBF563C();
          (*(*(v37 - 8) + 32))(a1 + v19, &a2[v19], v37);
          swift_storeEnumTagMultiPayload();
LABEL_171:
          (*(v21 + 56))(a1 + v19, 0, 1, v20);
          goto LABEL_172;
        }
      }

LABEL_170:
      memcpy(a1 + v19, &a2[v19], *(v21 + 64));
      goto LABEL_171;
    }

    if (v8 <= 6)
    {
      if (v8 == 4)
      {
        *a1 = *a2;
        v19 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
        v20 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
        v21 = *(v20 - 8);
        if ((*(v21 + 48))(&a2[v19], 1, v20))
        {
          goto LABEL_66;
        }

        v30 = swift_getEnumCaseMultiPayload();
        if (v30 <= 3)
        {
          if (v30 == 2 || v30 == 3)
          {
            goto LABEL_110;
          }
        }

        else if (v30 == 4 || v30 == 5 || v30 == 6)
        {
          goto LABEL_110;
        }

        goto LABEL_170;
      }

      if (v8 != 6)
      {
        goto LABEL_69;
      }

      v16 = type metadata accessor for TTRRemindersListViewModel.HashtagLabelSelectorState(0);
      v17 = *(v16 - 8);
      if ((*(v17 + 48))(a2, 1, v16))
      {
        goto LABEL_34;
      }

      goto LABEL_111;
    }

    if (v8 != 7)
    {
      if (v8 != 8)
      {
        goto LABEL_69;
      }

      goto LABEL_46;
    }

    v25 = type metadata accessor for TTRTemplatePublicLinkData.CreatedStateDescription(0);
    v26 = *(v25 - 8);
    if ((*(v26 + 48))(a2, 1, v25))
    {
LABEL_68:
      v29 = type metadata accessor for TTRTemplatePublicLinkData.StateToDisplay(0);
      memcpy(a1, a2, *(*(v29 - 8) + 64));
LABEL_104:
      v35 = type metadata accessor for TTRTemplatePublicLinkData(0);
      *(a1 + *(v35 + 20)) = *&a2[*(v35 + 20)];
      goto LABEL_172;
    }

LABEL_103:
    v34 = sub_21DBF563C();
    (*(*(v34 - 8) + 32))(a1, a2, v34);
    *(a1 + *(v25 + 20)) = a2[*(v25 + 20)];
    (*(v26 + 56))(a1, 0, 1, v25);
    goto LABEL_104;
  }

  v14 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v14);
}

uint64_t sub_21D52662C(uint64_t a1)
{
  result = type metadata accessor for TTRRemindersListViewModel.Item(319);
  if (v2 <= 0x3F)
  {
    swift_initEnumMetadataMultiPayload();
    return 0;
  }

  return result;
}

void **initializeBufferWithCopyOfBuffer for TTRRemindersListHighlightTarget.TargetItem(void **a1, void **a2, uint64_t a3)
{
  v3 = a2;
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) == 0)
  {
    v6 = a3;
    v7 = type metadata accessor for TTRRemindersListViewModel.Item(0);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 3)
    {
      if (EnumCaseMultiPayload > 5)
      {
        switch(EnumCaseMultiPayload)
        {
          case 6:
            v28 = type metadata accessor for TTRRemindersListViewModel.HashtagLabelSelectorState(0);
            v29 = *(v28 - 8);
            if ((*(v29 + 48))(v3, 1, v28))
            {
              v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A440, &unk_21DC16170);
              memcpy(a1, v3, *(*(v30 - 8) + 64));
            }

            else
            {
              *a1 = *v3;
              v39 = *(v28 + 20);
              v40 = sub_21DBF6C1C();
              v103 = *(*(v40 - 8) + 16);
              sub_21DBF8E0C();
              v103(a1 + v39, v3 + v39, v40);
              (*(v29 + 56))(a1, 0, 1, v28);
            }

            v41 = *(type metadata accessor for TTRRemindersListViewModel.HashtagsState(0) + 20);
            v42 = (a1 + v41);
            v43 = (v3 + v41);
            v44 = v43[1];
            if (v44)
            {
              *v42 = *v43;
              v42[1] = v44;
              v45 = v43[2];
              v42[2] = v45;
              sub_21DBF8E0C();
              v46 = v45;
            }

            else
            {
              *v42 = *v43;
              v42[2] = v43[2];
            }

            goto LABEL_129;
          case 7:
            v34 = type metadata accessor for TTRTemplatePublicLinkData.CreatedStateDescription(0);
            v35 = *(v34 - 8);
            if ((*(v35 + 48))(v3, 1, v34))
            {
              v36 = type metadata accessor for TTRTemplatePublicLinkData.StateToDisplay(0);
              memcpy(a1, v3, *(*(v36 - 8) + 64));
            }

            else
            {
              v48 = sub_21DBF563C();
              (*(*(v48 - 8) + 16))(a1, v3, v48);
              *(a1 + *(v34 + 20)) = *(v3 + *(v34 + 20));
              (*(v35 + 56))(a1, 0, 1, v34);
            }

            v49 = type metadata accessor for TTRTemplatePublicLinkData(0);
            *(a1 + *(v49 + 20)) = *(v3 + *(v49 + 20));
            goto LABEL_129;
          case 8:
            *a1 = *v3;
            v9 = *(type metadata accessor for TTRRemindersListTips(0) + 20);
            v10 = sub_21DBF8D7C();
            (*(*(v10 - 8) + 16))(a1 + v9, v3 + v9, v10);
LABEL_129:
            swift_storeEnumTagMultiPayload();
            goto LABEL_130;
        }

LABEL_35:
        memcpy(a1, v3, *(*(v7 - 8) + 64));
LABEL_130:
        *(a1 + *(v6 + 20)) = *(v3 + *(v6 + 20));
        return a1;
      }

      if (EnumCaseMultiPayload != 4)
      {
        *a1 = *v3;
        *(a1 + 8) = *(v3 + 8);
        *(a1 + 9) = *(v3 + 9);
        v20 = v3[2];
        a1[2] = v20;
        v21 = v20;
        goto LABEL_129;
      }

      v31 = *v3;
      *a1 = *v3;
      v15 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
      v16 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v17 = *(v16 - 8);
      v32 = *(v17 + 48);
      v33 = v31;
      if (v32(v3 + v15, 1, v16))
      {
LABEL_28:
        v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70, &unk_21DC09230);
        memcpy(a1 + v15, v3 + v15, *(*(v27 - 8) + 64));
        goto LABEL_129;
      }

      v47 = swift_getEnumCaseMultiPayload();
      if (v47 > 4)
      {
        if (v47 <= 7)
        {
          if (v47 == 5 || v47 == 6)
          {
            goto LABEL_114;
          }

          goto LABEL_127;
        }

        if (v47 != 8 && v47 != 9)
        {
          goto LABEL_127;
        }

LABEL_113:
        v95 = *(v3 + v15);
        *(a1 + v15) = v95;
        v96 = v95;
        swift_storeEnumTagMultiPayload();
LABEL_128:
        (*(v17 + 56))(a1 + v15, 0, 1, v16);
        goto LABEL_129;
      }

      if (v47 <= 2)
      {
        if (v47 != 1)
        {
          if (v47 == 2)
          {
            goto LABEL_114;
          }

LABEL_127:
          memcpy(a1 + v15, v3 + v15, *(v17 + 64));
          goto LABEL_128;
        }

        goto LABEL_113;
      }

LABEL_114:
      v97 = sub_21DBF563C();
      (*(*(v97 - 8) + 16))(a1 + v15, v3 + v15, v97);
      swift_storeEnumTagMultiPayload();
      goto LABEL_128;
    }

    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload == 2)
      {
        v24 = *v3;
        *a1 = *v3;
        v15 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
        v16 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
        v17 = *(v16 - 8);
        v25 = *(v17 + 48);
        v26 = v24;
        if (v25(v3 + v15, 1, v16))
        {
          goto LABEL_28;
        }

        v38 = swift_getEnumCaseMultiPayload();
        if (v38 > 4)
        {
          if (v38 <= 7)
          {
            if (v38 == 5 || v38 == 6)
            {
              goto LABEL_114;
            }

            goto LABEL_127;
          }

          if (v38 != 8 && v38 != 9)
          {
            goto LABEL_127;
          }

          goto LABEL_113;
        }

        if (v38 > 2)
        {
          goto LABEL_114;
        }

        if (v38 == 1)
        {
          goto LABEL_113;
        }

        if (v38 != 2)
        {
          goto LABEL_127;
        }
      }

      else
      {
        v14 = *v3;
        *a1 = *v3;
        v15 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
        v16 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
        v17 = *(v16 - 8);
        v18 = *(v17 + 48);
        v19 = v14;
        if (v18(v3 + v15, 1, v16))
        {
          goto LABEL_28;
        }

        v37 = swift_getEnumCaseMultiPayload();
        if (v37 > 4)
        {
          if (v37 <= 7)
          {
            if (v37 == 5 || v37 == 6)
            {
              goto LABEL_114;
            }

            goto LABEL_127;
          }

          if (v37 != 8 && v37 != 9)
          {
            goto LABEL_127;
          }

          goto LABEL_113;
        }

        if (v37 > 2)
        {
          goto LABEL_114;
        }

        if (v37 == 1)
        {
          goto LABEL_113;
        }

        if (v37 != 2)
        {
          goto LABEL_127;
        }
      }

      goto LABEL_114;
    }

    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload != 1)
      {
        goto LABEL_35;
      }

      v12 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v13 = swift_getEnumCaseMultiPayload();
      v106 = v6;
      if (v13 <= 4)
      {
        if (v13 > 2)
        {
LABEL_65:
          v50 = sub_21DBF563C();
          (*(*(v50 - 8) + 16))(a1, v3, v50);
          swift_storeEnumTagMultiPayload();
          goto LABEL_92;
        }

        if (v13 != 1)
        {
          if (v13 == 2)
          {
            goto LABEL_65;
          }

          goto LABEL_91;
        }

LABEL_68:
        v51 = *v3;
        *a1 = *v3;
        v52 = v51;
        swift_storeEnumTagMultiPayload();
        goto LABEL_92;
      }

      if (v13 > 7)
      {
        if (v13 == 8 || v13 == 9)
        {
          goto LABEL_68;
        }
      }

      else if (v13 == 5 || v13 == 6)
      {
        goto LABEL_65;
      }

LABEL_91:
      memcpy(a1, v3, *(*(v12 - 8) + 64));
LABEL_92:
      v56 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
      v57 = v56[5];
      v58 = a1 + v57;
      v59 = v3 + v57;
      v60 = *(v3 + v57 + 8);
      if (v60)
      {
        v104 = v3;
        *v58 = *v59;
        *(v58 + 1) = v60;
        v61 = *(v59 + 2);
        v62 = *(v59 + 3);
        v63 = *(v59 + 4);
        v64 = *(v59 + 5);
        v66 = *(v59 + 6);
        v65 = *(v59 + 7);
        v99 = v59[64];
        sub_21DBF8E0C();
        sub_21D2A7DB4(v61, v62, v63, v64, v66, v65, v99);
        *(v58 + 2) = v61;
        *(v58 + 3) = v62;
        *(v58 + 4) = v63;
        *(v58 + 5) = v64;
        *(v58 + 6) = v66;
        *(v58 + 7) = v65;
        v58[64] = v99;
        *(v58 + 65) = *(v59 + 65);
        v67 = v59[120];
        if (v67 == 255)
        {
          *(v58 + 72) = *(v59 + 72);
          *(v58 + 88) = *(v59 + 88);
          *(v58 + 104) = *(v59 + 104);
          v58[120] = v59[120];
        }

        else
        {
          v68 = *(v59 + 9);
          v100 = *(v59 + 10);
          v69 = *(v59 + 11);
          v70 = *(v59 + 12);
          v71 = *(v59 + 13);
          v72 = *(v59 + 14);
          v73 = v67 & 1;
          sub_21D0FB960(v68, v100, v69, v70, v71, v72, v67 & 1);
          *(v58 + 9) = v68;
          *(v58 + 10) = v100;
          *(v58 + 11) = v69;
          *(v58 + 12) = v70;
          *(v58 + 13) = v71;
          *(v58 + 14) = v72;
          v58[120] = v73;
        }

        v6 = v106;
        v58[121] = v59[121];
        v3 = v104;
        goto LABEL_98;
      }

LABEL_95:
      v74 = *(v59 + 5);
      *(v58 + 4) = *(v59 + 4);
      *(v58 + 5) = v74;
      *(v58 + 6) = *(v59 + 6);
      *(v58 + 106) = *(v59 + 106);
      v75 = *(v59 + 1);
      *v58 = *v59;
      *(v58 + 1) = v75;
      v76 = *(v59 + 3);
      *(v58 + 2) = *(v59 + 2);
      *(v58 + 3) = v76;
LABEL_98:
      *(a1 + v56[6]) = *(v3 + v56[6]);
      *(a1 + v56[7]) = *(v3 + v56[7]);
      *(a1 + v56[8]) = *(v3 + v56[8]);
      *(a1 + v56[9]) = *(v3 + v56[9]);
      *(a1 + v56[10]) = *(v3 + v56[10]);
      v77 = v56[11];
      v78 = *(v3 + v77);
      *(a1 + v77) = v78;
      v79 = v78;
      goto LABEL_129;
    }

    v22 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    v23 = swift_getEnumCaseMultiPayload();
    v107 = v6;
    if (v23 <= 4)
    {
      if (v23 > 2)
      {
LABEL_69:
        v53 = sub_21DBF563C();
        (*(*(v53 - 8) + 16))(a1, v3, v53);
        swift_storeEnumTagMultiPayload();
        goto LABEL_100;
      }

      if (v23 != 1)
      {
        if (v23 == 2)
        {
          goto LABEL_69;
        }

        goto LABEL_99;
      }

LABEL_72:
      v54 = *v3;
      *a1 = *v3;
      v55 = v54;
      swift_storeEnumTagMultiPayload();
      goto LABEL_100;
    }

    if (v23 > 7)
    {
      if (v23 == 8 || v23 == 9)
      {
        goto LABEL_72;
      }
    }

    else if (v23 == 5 || v23 == 6)
    {
      goto LABEL_69;
    }

LABEL_99:
    memcpy(a1, v3, *(*(v22 - 8) + 64));
LABEL_100:
    v56 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
    v80 = v56[5];
    v58 = a1 + v80;
    v59 = v3 + v80;
    v81 = *(v3 + v80 + 8);
    if (v81)
    {
      v105 = v3;
      *v58 = *v59;
      *(v58 + 1) = v81;
      v82 = *(v59 + 2);
      v83 = *(v59 + 3);
      v84 = *(v59 + 4);
      v85 = *(v59 + 5);
      v86 = *(v59 + 6);
      v87 = *(v59 + 7);
      v101 = v59[64];
      sub_21DBF8E0C();
      sub_21D2A7DB4(v82, v83, v84, v85, v86, v87, v101);
      *(v58 + 2) = v82;
      *(v58 + 3) = v83;
      *(v58 + 4) = v84;
      *(v58 + 5) = v85;
      *(v58 + 6) = v86;
      *(v58 + 7) = v87;
      v58[64] = v101;
      *(v58 + 65) = *(v59 + 65);
      v88 = v59[120];
      if (v88 == 255)
      {
        *(v58 + 72) = *(v59 + 72);
        *(v58 + 88) = *(v59 + 88);
        *(v58 + 104) = *(v59 + 104);
        v58[120] = v59[120];
      }

      else
      {
        v89 = *(v59 + 9);
        v102 = *(v59 + 10);
        v90 = *(v59 + 11);
        v91 = *(v59 + 12);
        v92 = *(v59 + 13);
        v93 = *(v59 + 14);
        v94 = v88 & 1;
        sub_21D0FB960(v89, v102, v90, v91, v92, v93, v88 & 1);
        *(v58 + 9) = v89;
        *(v58 + 10) = v102;
        *(v58 + 11) = v90;
        *(v58 + 12) = v91;
        *(v58 + 13) = v92;
        *(v58 + 14) = v93;
        v58[120] = v94;
      }

      v6 = v107;
      v58[121] = v59[121];
      v3 = v105;
      goto LABEL_98;
    }

    goto LABEL_95;
  }

  v11 = *a2;
  *a1 = *a2;
  a1 = &v11[(v5 + 16) & ~v5];

  return a1;
}

void destroy for TTRRemindersListHighlightTarget.TargetItem(uint64_t a1)
{
  type metadata accessor for TTRRemindersListViewModel.Item(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 3)
  {
    if (EnumCaseMultiPayload > 1)
    {
      goto LABEL_17;
    }

    if (EnumCaseMultiPayload > 1)
    {
      return;
    }

    type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    v7 = swift_getEnumCaseMultiPayload();
    if (v7 > 4)
    {
      if (v7 <= 7)
      {
        if (v7 != 5 && v7 != 6)
        {
          goto LABEL_41;
        }

        goto LABEL_37;
      }

      if (v7 != 8 && v7 != 9)
      {
        goto LABEL_41;
      }
    }

    else
    {
      if (v7 > 2)
      {
        goto LABEL_37;
      }

      if (v7 != 1)
      {
        if (v7 != 2)
        {
LABEL_41:
          v18 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
          v19 = a1 + *(v18 + 20);
          if (*(v19 + 8))
          {

            sub_21D179EF0(*(v19 + 16), *(v19 + 24), *(v19 + 32), *(v19 + 40), *(v19 + 48), *(v19 + 56), *(v19 + 64));
            v20 = *(v19 + 120);
            if (v20 != 255)
            {
              sub_21D1078C0(*(v19 + 72), *(v19 + 80), *(v19 + 88), *(v19 + 96), *(v19 + 104), *(v19 + 112), v20 & 1);
            }
          }

          v8 = *(a1 + *(v18 + 44));
          goto LABEL_45;
        }

LABEL_37:
        v17 = sub_21DBF563C();
        (*(*(v17 - 8) + 8))(a1, v17);
        goto LABEL_41;
      }
    }

    goto LABEL_41;
  }

  if (EnumCaseMultiPayload <= 5)
  {
    if (EnumCaseMultiPayload != 4)
    {
      v8 = *(a1 + 16);
LABEL_45:

      return;
    }

LABEL_17:

    v9 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
    v10 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    if ((*(*(v10 - 8) + 48))(a1 + v9, 1, v10))
    {
      return;
    }

    v11 = swift_getEnumCaseMultiPayload();
    if (v11 > 4)
    {
      if (v11 <= 7)
      {
        if (v11 != 5 && v11 != 6)
        {
          return;
        }

        goto LABEL_49;
      }

      if (v11 != 8 && v11 != 9)
      {
        return;
      }
    }

    else
    {
      if (v11 > 2)
      {
LABEL_49:
        v4 = sub_21DBF563C();
        v5 = *(*(v4 - 8) + 8);
        v6 = a1 + v9;
LABEL_50:

        v5(v6, v4);
        return;
      }

      if (v11 != 1)
      {
        if (v11 != 2)
        {
          return;
        }

        goto LABEL_49;
      }
    }

    v8 = *(a1 + v9);
    goto LABEL_45;
  }

  if (EnumCaseMultiPayload != 6)
  {
    if (EnumCaseMultiPayload == 7)
    {
      v16 = type metadata accessor for TTRTemplatePublicLinkData.CreatedStateDescription(0);
      if ((*(*(v16 - 8) + 48))(a1, 1, v16))
      {
        return;
      }

      v21 = sub_21DBF563C();
      v5 = *(*(v21 - 8) + 8);
      v4 = v21;
      v6 = a1;
    }

    else
    {
      if (EnumCaseMultiPayload != 8)
      {
        return;
      }

      v3 = *(type metadata accessor for TTRRemindersListTips(0) + 20);
      v4 = sub_21DBF8D7C();
      v5 = *(*(v4 - 8) + 8);
      v6 = a1 + v3;
    }

    goto LABEL_50;
  }

  v12 = type metadata accessor for TTRRemindersListViewModel.HashtagLabelSelectorState(0);
  if (!(*(*(v12 - 8) + 48))(a1, 1, v12))
  {

    v13 = *(v12 + 20);
    v14 = sub_21DBF6C1C();
    (*(*(v14 - 8) + 8))(a1 + v13, v14);
  }

  v15 = a1 + *(type metadata accessor for TTRRemindersListViewModel.HashtagsState(0) + 20);
  if (*(v15 + 8))
  {

    v8 = *(v15 + 16);
    goto LABEL_45;
  }
}

void **initializeWithCopy for TTRRemindersListHighlightTarget.TargetItem(void **a1, void **a2, uint64_t a3)
{
  v6 = type metadata accessor for TTRRemindersListViewModel.Item(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 3)
  {
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload == 2)
      {
        v22 = *a2;
        *a1 = *a2;
        v13 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
        v14 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
        v15 = *(v14 - 8);
        v23 = *(v15 + 48);
        v24 = v22;
        if (v23(a2 + v13, 1, v14))
        {
          goto LABEL_26;
        }

        v36 = swift_getEnumCaseMultiPayload();
        if (v36 > 4)
        {
          if (v36 <= 7)
          {
            if (v36 == 5 || v36 == 6)
            {
              goto LABEL_112;
            }

            goto LABEL_125;
          }

          if (v36 != 8 && v36 != 9)
          {
            goto LABEL_125;
          }

          goto LABEL_111;
        }

        if (v36 > 2)
        {
          goto LABEL_112;
        }

        if (v36 == 1)
        {
          goto LABEL_111;
        }

        if (v36 != 2)
        {
          goto LABEL_125;
        }
      }

      else
      {
        v12 = *a2;
        *a1 = *a2;
        v13 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
        v14 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
        v15 = *(v14 - 8);
        v16 = *(v15 + 48);
        v17 = v12;
        if (v16(a2 + v13, 1, v14))
        {
          goto LABEL_26;
        }

        v35 = swift_getEnumCaseMultiPayload();
        if (v35 > 4)
        {
          if (v35 <= 7)
          {
            if (v35 == 5 || v35 == 6)
            {
              goto LABEL_112;
            }

            goto LABEL_125;
          }

          if (v35 != 8 && v35 != 9)
          {
            goto LABEL_125;
          }

          goto LABEL_111;
        }

        if (v35 > 2)
        {
          goto LABEL_112;
        }

        if (v35 == 1)
        {
          goto LABEL_111;
        }

        if (v35 != 2)
        {
          goto LABEL_125;
        }
      }

      goto LABEL_112;
    }

    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload != 1)
      {
        goto LABEL_33;
      }

      v10 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v11 = swift_getEnumCaseMultiPayload();
      v106 = a3;
      if (v11 <= 4)
      {
        if (v11 > 2)
        {
LABEL_63:
          v49 = sub_21DBF563C();
          (*(*(v49 - 8) + 16))(a1, a2, v49);
          swift_storeEnumTagMultiPayload();
          goto LABEL_90;
        }

        if (v11 != 1)
        {
          if (v11 == 2)
          {
            goto LABEL_63;
          }

          goto LABEL_89;
        }

LABEL_66:
        v50 = *a2;
        *a1 = *a2;
        v51 = v50;
        swift_storeEnumTagMultiPayload();
        goto LABEL_90;
      }

      if (v11 > 7)
      {
        if (v11 == 8 || v11 == 9)
        {
          goto LABEL_66;
        }
      }

      else if (v11 == 5 || v11 == 6)
      {
        goto LABEL_63;
      }

LABEL_89:
      memcpy(a1, a2, *(*(v10 - 8) + 64));
LABEL_90:
      v55 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
      v56 = v55[5];
      v57 = a1 + v56;
      v58 = a2 + v56;
      v59 = *(a2 + v56 + 8);
      if (v59)
      {
        v102 = a2;
        v104 = a1;
        *v57 = *v58;
        *(v57 + 1) = v59;
        v60 = *(v58 + 2);
        v61 = *(v58 + 3);
        v62 = *(v58 + 4);
        v63 = *(v58 + 5);
        v64 = *(v58 + 6);
        v65 = *(v58 + 7);
        v66 = v58[64];
        sub_21DBF8E0C();
        sub_21D2A7DB4(v60, v61, v62, v63, v64, v65, v66);
        *(v57 + 2) = v60;
        *(v57 + 3) = v61;
        *(v57 + 4) = v62;
        *(v57 + 5) = v63;
        *(v57 + 6) = v64;
        *(v57 + 7) = v65;
        v57[64] = v66;
        *(v57 + 65) = *(v58 + 65);
        v67 = v58[120];
        if (v67 == 255)
        {
          *(v57 + 72) = *(v58 + 72);
          *(v57 + 88) = *(v58 + 88);
          *(v57 + 104) = *(v58 + 104);
          v57[120] = v58[120];
        }

        else
        {
          v68 = *(v58 + 9);
          v69 = *(v58 + 10);
          v70 = *(v58 + 11);
          v71 = *(v58 + 12);
          v72 = *(v58 + 13);
          v73 = *(v58 + 14);
          v74 = v67 & 1;
          sub_21D0FB960(v68, v69, v70, v71, v72, v73, v67 & 1);
          *(v57 + 9) = v68;
          *(v57 + 10) = v69;
          *(v57 + 11) = v70;
          *(v57 + 12) = v71;
          *(v57 + 13) = v72;
          *(v57 + 14) = v73;
          v57[120] = v74;
        }

        a3 = v106;
        v57[121] = v58[121];
        a2 = v102;
        a1 = v104;
        goto LABEL_96;
      }

LABEL_93:
      v75 = *(v58 + 5);
      *(v57 + 4) = *(v58 + 4);
      *(v57 + 5) = v75;
      *(v57 + 6) = *(v58 + 6);
      *(v57 + 106) = *(v58 + 106);
      v76 = *(v58 + 1);
      *v57 = *v58;
      *(v57 + 1) = v76;
      v77 = *(v58 + 3);
      *(v57 + 2) = *(v58 + 2);
      *(v57 + 3) = v77;
LABEL_96:
      *(a1 + v55[6]) = *(a2 + v55[6]);
      *(a1 + v55[7]) = *(a2 + v55[7]);
      *(a1 + v55[8]) = *(a2 + v55[8]);
      *(a1 + v55[9]) = *(a2 + v55[9]);
      *(a1 + v55[10]) = *(a2 + v55[10]);
      v78 = v55[11];
      v79 = *(a2 + v78);
      *(a1 + v78) = v79;
      v80 = v79;
      goto LABEL_127;
    }

    v20 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    v21 = swift_getEnumCaseMultiPayload();
    v107 = a3;
    if (v21 <= 4)
    {
      if (v21 > 2)
      {
LABEL_67:
        v52 = sub_21DBF563C();
        (*(*(v52 - 8) + 16))(a1, a2, v52);
        swift_storeEnumTagMultiPayload();
        goto LABEL_98;
      }

      if (v21 != 1)
      {
        if (v21 == 2)
        {
          goto LABEL_67;
        }

        goto LABEL_97;
      }

LABEL_70:
      v53 = *a2;
      *a1 = *a2;
      v54 = v53;
      swift_storeEnumTagMultiPayload();
      goto LABEL_98;
    }

    if (v21 > 7)
    {
      if (v21 == 8 || v21 == 9)
      {
        goto LABEL_70;
      }
    }

    else if (v21 == 5 || v21 == 6)
    {
      goto LABEL_67;
    }

LABEL_97:
    memcpy(a1, a2, *(*(v20 - 8) + 64));
LABEL_98:
    v55 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
    v81 = v55[5];
    v57 = a1 + v81;
    v58 = a2 + v81;
    v82 = *(a2 + v81 + 8);
    if (v82)
    {
      v103 = a2;
      v105 = a1;
      *v57 = *v58;
      *(v57 + 1) = v82;
      v83 = *(v58 + 2);
      v84 = *(v58 + 3);
      v85 = *(v58 + 4);
      v86 = *(v58 + 5);
      v88 = *(v58 + 6);
      v87 = *(v58 + 7);
      v89 = v58[64];
      sub_21DBF8E0C();
      sub_21D2A7DB4(v83, v84, v85, v86, v88, v87, v89);
      *(v57 + 2) = v83;
      *(v57 + 3) = v84;
      *(v57 + 4) = v85;
      *(v57 + 5) = v86;
      *(v57 + 6) = v88;
      *(v57 + 7) = v87;
      v57[64] = v89;
      *(v57 + 65) = *(v58 + 65);
      v90 = v58[120];
      if (v90 == 255)
      {
        *(v57 + 72) = *(v58 + 72);
        *(v57 + 88) = *(v58 + 88);
        *(v57 + 104) = *(v58 + 104);
        v57[120] = v58[120];
      }

      else
      {
        v91 = *(v58 + 9);
        v92 = *(v58 + 10);
        v93 = *(v58 + 11);
        v94 = *(v58 + 12);
        v95 = *(v58 + 13);
        v96 = *(v58 + 14);
        v97 = v90 & 1;
        sub_21D0FB960(v91, v92, v93, v94, v95, v96, v90 & 1);
        *(v57 + 9) = v91;
        *(v57 + 10) = v92;
        *(v57 + 11) = v93;
        *(v57 + 12) = v94;
        *(v57 + 13) = v95;
        *(v57 + 14) = v96;
        v57[120] = v97;
      }

      a3 = v107;
      v57[121] = v58[121];
      a2 = v103;
      a1 = v105;
      goto LABEL_96;
    }

    goto LABEL_93;
  }

  if (EnumCaseMultiPayload <= 5)
  {
    if (EnumCaseMultiPayload != 4)
    {
      *a1 = *a2;
      *(a1 + 8) = *(a2 + 8);
      *(a1 + 9) = *(a2 + 9);
      v18 = a2[2];
      a1[2] = v18;
      v19 = v18;
      goto LABEL_127;
    }

    v29 = *a2;
    *a1 = *a2;
    v13 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
    v14 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    v15 = *(v14 - 8);
    v30 = *(v15 + 48);
    v31 = v29;
    if (v30(a2 + v13, 1, v14))
    {
LABEL_26:
      v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70, &unk_21DC09230);
      memcpy(a1 + v13, a2 + v13, *(*(v25 - 8) + 64));
      goto LABEL_127;
    }

    v46 = swift_getEnumCaseMultiPayload();
    if (v46 > 4)
    {
      if (v46 <= 7)
      {
        if (v46 == 5 || v46 == 6)
        {
          goto LABEL_112;
        }

        goto LABEL_125;
      }

      if (v46 != 8 && v46 != 9)
      {
        goto LABEL_125;
      }

LABEL_111:
      v98 = *(a2 + v13);
      *(a1 + v13) = v98;
      v99 = v98;
      swift_storeEnumTagMultiPayload();
LABEL_126:
      (*(v15 + 56))(a1 + v13, 0, 1, v14);
      goto LABEL_127;
    }

    if (v46 <= 2)
    {
      if (v46 != 1)
      {
        if (v46 == 2)
        {
          goto LABEL_112;
        }

LABEL_125:
        memcpy(a1 + v13, a2 + v13, *(v15 + 64));
        goto LABEL_126;
      }

      goto LABEL_111;
    }

LABEL_112:
    v100 = sub_21DBF563C();
    (*(*(v100 - 8) + 16))(a1 + v13, a2 + v13, v100);
    swift_storeEnumTagMultiPayload();
    goto LABEL_126;
  }

  switch(EnumCaseMultiPayload)
  {
    case 6:
      v26 = type metadata accessor for TTRRemindersListViewModel.HashtagLabelSelectorState(0);
      v27 = *(v26 - 8);
      if ((*(v27 + 48))(a2, 1, v26))
      {
        v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A440, &unk_21DC16170);
        memcpy(a1, a2, *(*(v28 - 8) + 64));
      }

      else
      {
        *a1 = *a2;
        v37 = *(v26 + 20);
        v38 = sub_21DBF6C1C();
        v39 = *(*(v38 - 8) + 16);
        sub_21DBF8E0C();
        v39(a1 + v37, a2 + v37, v38);
        (*(v27 + 56))(a1, 0, 1, v26);
      }

      v40 = *(type metadata accessor for TTRRemindersListViewModel.HashtagsState(0) + 20);
      v41 = (a1 + v40);
      v42 = (a2 + v40);
      v43 = v42[1];
      if (v43)
      {
        *v41 = *v42;
        v41[1] = v43;
        v44 = v42[2];
        v41[2] = v44;
        sub_21DBF8E0C();
        v45 = v44;
      }

      else
      {
        *v41 = *v42;
        v41[2] = v42[2];
      }

      goto LABEL_127;
    case 7:
      v32 = type metadata accessor for TTRTemplatePublicLinkData.CreatedStateDescription(0);
      v33 = *(v32 - 8);
      if ((*(v33 + 48))(a2, 1, v32))
      {
        v34 = type metadata accessor for TTRTemplatePublicLinkData.StateToDisplay(0);
        memcpy(a1, a2, *(*(v34 - 8) + 64));
      }

      else
      {
        v47 = sub_21DBF563C();
        (*(*(v47 - 8) + 16))(a1, a2, v47);
        *(a1 + *(v32 + 20)) = *(a2 + *(v32 + 20));
        (*(v33 + 56))(a1, 0, 1, v32);
      }

      v48 = type metadata accessor for TTRTemplatePublicLinkData(0);
      *(a1 + *(v48 + 20)) = *(a2 + *(v48 + 20));
      goto LABEL_127;
    case 8:
      *a1 = *a2;
      v8 = *(type metadata accessor for TTRRemindersListTips(0) + 20);
      v9 = sub_21DBF8D7C();
      (*(*(v9 - 8) + 16))(a1 + v8, a2 + v8, v9);
LABEL_127:
      swift_storeEnumTagMultiPayload();
      goto LABEL_128;
  }

LABEL_33:
  memcpy(a1, a2, *(*(v6 - 8) + 64));
LABEL_128:
  *(a1 + *(a3 + 20)) = *(a2 + *(a3 + 20));
  return a1;
}

void **assignWithCopy for TTRRemindersListHighlightTarget.TargetItem(void **a1, void **a2, uint64_t a3)
{
  v4 = a2;
  if (a1 != a2)
  {
    sub_21D106B58(a1, type metadata accessor for TTRRemindersListViewModel.Item);
    v6 = type metadata accessor for TTRRemindersListViewModel.Item(0);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 3)
    {
      if (EnumCaseMultiPayload > 5)
      {
        switch(EnumCaseMultiPayload)
        {
          case 6:
            v26 = type metadata accessor for TTRRemindersListViewModel.HashtagLabelSelectorState(0);
            v27 = *(v26 - 8);
            if ((*(v27 + 48))(v4, 1, v26))
            {
              v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A440, &unk_21DC16170);
              memcpy(a1, v4, *(*(v28 - 8) + 64));
            }

            else
            {
              *a1 = *v4;
              v37 = *(v26 + 20);
              v38 = sub_21DBF6C1C();
              v108 = *(*(v38 - 8) + 16);
              sub_21DBF8E0C();
              v108(a1 + v37, v4 + v37, v38);
              (*(v27 + 56))(a1, 0, 1, v26);
            }

            v39 = *(type metadata accessor for TTRRemindersListViewModel.HashtagsState(0) + 20);
            v40 = (a1 + v39);
            v41 = (v4 + v39);
            if (v41[1])
            {
              *v40 = *v41;
              v40[1] = v41[1];
              v42 = v41[2];
              v40[2] = v42;
              sub_21DBF8E0C();
              v43 = v42;
            }

            else
            {
              v44 = *v41;
              v40[2] = v41[2];
              *v40 = v44;
            }

            goto LABEL_128;
          case 7:
            v32 = type metadata accessor for TTRTemplatePublicLinkData.CreatedStateDescription(0);
            v33 = *(v32 - 8);
            if ((*(v33 + 48))(v4, 1, v32))
            {
              v34 = type metadata accessor for TTRTemplatePublicLinkData.StateToDisplay(0);
              memcpy(a1, v4, *(*(v34 - 8) + 64));
            }

            else
            {
              v46 = sub_21DBF563C();
              (*(*(v46 - 8) + 16))(a1, v4, v46);
              *(a1 + *(v32 + 20)) = *(v4 + *(v32 + 20));
              (*(v33 + 56))(a1, 0, 1, v32);
            }

            v47 = type metadata accessor for TTRTemplatePublicLinkData(0);
            *(a1 + *(v47 + 20)) = *(v4 + *(v47 + 20));
            goto LABEL_128;
          case 8:
            *a1 = *v4;
            v8 = *(type metadata accessor for TTRRemindersListTips(0) + 20);
            v9 = sub_21DBF8D7C();
            (*(*(v9 - 8) + 16))(a1 + v8, v4 + v8, v9);
LABEL_128:
            swift_storeEnumTagMultiPayload();
            goto LABEL_129;
        }

        goto LABEL_34;
      }

      if (EnumCaseMultiPayload != 4)
      {
        *a1 = *v4;
        *(a1 + 8) = *(v4 + 8);
        *(a1 + 9) = *(v4 + 9);
        *(a1 + 10) = *(v4 + 10);
        v18 = v4[2];
        a1[2] = v18;
        v19 = v18;
        goto LABEL_128;
      }

      v29 = *v4;
      *a1 = *v4;
      v13 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
      v14 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v15 = *(v14 - 8);
      v30 = *(v15 + 48);
      v31 = v29;
      if (v30(v4 + v13, 1, v14))
      {
LABEL_27:
        v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70, &unk_21DC09230);
        memcpy(a1 + v13, v4 + v13, *(*(v25 - 8) + 64));
        goto LABEL_128;
      }

      v45 = swift_getEnumCaseMultiPayload();
      if (v45 > 4)
      {
        if (v45 <= 7)
        {
          if (v45 == 5 || v45 == 6)
          {
            goto LABEL_113;
          }

          goto LABEL_126;
        }

        if (v45 != 8 && v45 != 9)
        {
          goto LABEL_126;
        }

LABEL_112:
        v100 = *(v4 + v13);
        *(a1 + v13) = v100;
        v101 = v100;
        swift_storeEnumTagMultiPayload();
LABEL_127:
        (*(v15 + 56))(a1 + v13, 0, 1, v14);
        goto LABEL_128;
      }

      if (v45 <= 2)
      {
        if (v45 != 1)
        {
          if (v45 == 2)
          {
            goto LABEL_113;
          }

LABEL_126:
          memcpy(a1 + v13, v4 + v13, *(v15 + 64));
          goto LABEL_127;
        }

        goto LABEL_112;
      }

LABEL_113:
      v102 = sub_21DBF563C();
      (*(*(v102 - 8) + 16))(a1 + v13, v4 + v13, v102);
      swift_storeEnumTagMultiPayload();
      goto LABEL_127;
    }

    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload == 2)
      {
        v22 = *v4;
        *a1 = *v4;
        v13 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
        v14 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
        v15 = *(v14 - 8);
        v23 = *(v15 + 48);
        v24 = v22;
        if (v23(v4 + v13, 1, v14))
        {
          goto LABEL_27;
        }

        v36 = swift_getEnumCaseMultiPayload();
        if (v36 > 4)
        {
          if (v36 <= 7)
          {
            if (v36 == 5 || v36 == 6)
            {
              goto LABEL_113;
            }

            goto LABEL_126;
          }

          if (v36 != 8 && v36 != 9)
          {
            goto LABEL_126;
          }

          goto LABEL_112;
        }

        if (v36 > 2)
        {
          goto LABEL_113;
        }

        if (v36 == 1)
        {
          goto LABEL_112;
        }

        if (v36 != 2)
        {
          goto LABEL_126;
        }
      }

      else
      {
        v12 = *v4;
        *a1 = *v4;
        v13 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
        v14 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
        v15 = *(v14 - 8);
        v16 = *(v15 + 48);
        v17 = v12;
        if (v16(v4 + v13, 1, v14))
        {
          goto LABEL_27;
        }

        v35 = swift_getEnumCaseMultiPayload();
        if (v35 > 4)
        {
          if (v35 <= 7)
          {
            if (v35 == 5 || v35 == 6)
            {
              goto LABEL_113;
            }

            goto LABEL_126;
          }

          if (v35 != 8 && v35 != 9)
          {
            goto LABEL_126;
          }

          goto LABEL_112;
        }

        if (v35 > 2)
        {
          goto LABEL_113;
        }

        if (v35 == 1)
        {
          goto LABEL_112;
        }

        if (v35 != 2)
        {
          goto LABEL_126;
        }
      }

      goto LABEL_113;
    }

    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload != 1)
      {
LABEL_34:
        memcpy(a1, v4, *(*(v6 - 8) + 64));
        goto LABEL_129;
      }

      v10 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v11 = swift_getEnumCaseMultiPayload();
      v111 = a3;
      if (v11 <= 4)
      {
        if (v11 > 2)
        {
LABEL_64:
          v48 = sub_21DBF563C();
          (*(*(v48 - 8) + 16))(a1, v4, v48);
          swift_storeEnumTagMultiPayload();
          goto LABEL_91;
        }

        if (v11 != 1)
        {
          if (v11 == 2)
          {
            goto LABEL_64;
          }

          goto LABEL_90;
        }

LABEL_67:
        v49 = *v4;
        *a1 = *v4;
        v50 = v49;
        swift_storeEnumTagMultiPayload();
        goto LABEL_91;
      }

      if (v11 > 7)
      {
        if (v11 == 8 || v11 == 9)
        {
          goto LABEL_67;
        }
      }

      else if (v11 == 5 || v11 == 6)
      {
        goto LABEL_64;
      }

LABEL_90:
      memcpy(a1, v4, *(*(v10 - 8) + 64));
LABEL_91:
      v54 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
      v55 = v54[5];
      v56 = a1 + v55;
      v57 = v4 + v55;
      if (*(v4 + v55 + 8))
      {
        v109 = v4;
        *v56 = *v57;
        *(v56 + 1) = *(v57 + 1);
        v58 = *(v57 + 2);
        v59 = *(v57 + 3);
        v60 = *(v57 + 4);
        v61 = *(v57 + 5);
        v63 = *(v57 + 6);
        v62 = *(v57 + 7);
        v104 = v57[64];
        sub_21DBF8E0C();
        sub_21D2A7DB4(v58, v59, v60, v61, v63, v62, v104);
        *(v56 + 2) = v58;
        *(v56 + 3) = v59;
        *(v56 + 4) = v60;
        *(v56 + 5) = v61;
        *(v56 + 6) = v63;
        *(v56 + 7) = v62;
        v56[64] = v104;
        v56[65] = v57[65];
        v56[66] = v57[66];
        v56[67] = v57[67];
        v56[68] = v57[68];
        v64 = v57[120];
        if (v64 == 255)
        {
          v77 = *(v57 + 72);
          v78 = *(v57 + 88);
          v79 = *(v57 + 104);
          v56[120] = v57[120];
          *(v56 + 104) = v79;
          *(v56 + 88) = v78;
          *(v56 + 72) = v77;
        }

        else
        {
          v65 = *(v57 + 9);
          v105 = *(v57 + 10);
          v66 = *(v57 + 11);
          v67 = *(v57 + 12);
          v68 = *(v57 + 13);
          v69 = *(v57 + 14);
          v70 = v64 & 1;
          sub_21D0FB960(v65, v105, v66, v67, v68, v69, v64 & 1);
          *(v56 + 9) = v65;
          *(v56 + 10) = v105;
          *(v56 + 11) = v66;
          *(v56 + 12) = v67;
          *(v56 + 13) = v68;
          *(v56 + 14) = v69;
          v56[120] = v70;
        }

        a3 = v111;
        v56[121] = v57[121];
        v4 = v109;
        goto LABEL_97;
      }

LABEL_94:
      v71 = *v57;
      v72 = *(v57 + 1);
      v73 = *(v57 + 3);
      *(v56 + 2) = *(v57 + 2);
      *(v56 + 3) = v73;
      *v56 = v71;
      *(v56 + 1) = v72;
      v74 = *(v57 + 4);
      v75 = *(v57 + 5);
      v76 = *(v57 + 6);
      *(v56 + 106) = *(v57 + 106);
      *(v56 + 5) = v75;
      *(v56 + 6) = v76;
      *(v56 + 4) = v74;
      a3 = v111;
LABEL_97:
      *(a1 + v54[6]) = *(v4 + v54[6]);
      *(a1 + v54[7]) = *(v4 + v54[7]);
      *(a1 + v54[8]) = *(v4 + v54[8]);
      *(a1 + v54[9]) = *(v4 + v54[9]);
      *(a1 + v54[10]) = *(v4 + v54[10]);
      v80 = v54[11];
      v81 = *(v4 + v80);
      *(a1 + v80) = v81;
      v82 = v81;
      goto LABEL_128;
    }

    v20 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    v21 = swift_getEnumCaseMultiPayload();
    v111 = a3;
    if (v21 <= 4)
    {
      if (v21 > 2)
      {
LABEL_68:
        v51 = sub_21DBF563C();
        (*(*(v51 - 8) + 16))(a1, v4, v51);
        swift_storeEnumTagMultiPayload();
        goto LABEL_99;
      }

      if (v21 != 1)
      {
        if (v21 == 2)
        {
          goto LABEL_68;
        }

        goto LABEL_98;
      }

LABEL_71:
      v52 = *v4;
      *a1 = *v4;
      v53 = v52;
      swift_storeEnumTagMultiPayload();
      goto LABEL_99;
    }

    if (v21 > 7)
    {
      if (v21 == 8 || v21 == 9)
      {
        goto LABEL_71;
      }
    }

    else if (v21 == 5 || v21 == 6)
    {
      goto LABEL_68;
    }

LABEL_98:
    memcpy(a1, v4, *(*(v20 - 8) + 64));
LABEL_99:
    v54 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
    v83 = v54[5];
    v56 = a1 + v83;
    v57 = v4 + v83;
    if (*(v4 + v83 + 8))
    {
      v110 = v4;
      *v56 = *v57;
      *(v56 + 1) = *(v57 + 1);
      v84 = *(v57 + 2);
      v85 = *(v57 + 3);
      v86 = *(v57 + 4);
      v87 = *(v57 + 5);
      v88 = *(v57 + 6);
      v89 = *(v57 + 7);
      v106 = v57[64];
      sub_21DBF8E0C();
      sub_21D2A7DB4(v84, v85, v86, v87, v88, v89, v106);
      *(v56 + 2) = v84;
      *(v56 + 3) = v85;
      *(v56 + 4) = v86;
      *(v56 + 5) = v87;
      *(v56 + 6) = v88;
      *(v56 + 7) = v89;
      v56[64] = v106;
      v56[65] = v57[65];
      v56[66] = v57[66];
      v56[67] = v57[67];
      v56[68] = v57[68];
      v90 = v57[120];
      if (v90 == 255)
      {
        v97 = *(v57 + 72);
        v98 = *(v57 + 88);
        v99 = *(v57 + 104);
        v56[120] = v57[120];
        *(v56 + 104) = v99;
        *(v56 + 88) = v98;
        *(v56 + 72) = v97;
      }

      else
      {
        v91 = *(v57 + 9);
        v107 = *(v57 + 10);
        v92 = *(v57 + 11);
        v93 = *(v57 + 12);
        v94 = *(v57 + 13);
        v95 = *(v57 + 14);
        v96 = v90 & 1;
        sub_21D0FB960(v91, v107, v92, v93, v94, v95, v90 & 1);
        *(v56 + 9) = v91;
        *(v56 + 10) = v107;
        *(v56 + 11) = v92;
        *(v56 + 12) = v93;
        *(v56 + 13) = v94;
        *(v56 + 14) = v95;
        v56[120] = v96;
      }

      a3 = v111;
      v56[121] = v57[121];
      v4 = v110;
      goto LABEL_97;
    }

    goto LABEL_94;
  }

LABEL_129:
  *(a1 + *(a3 + 20)) = *(v4 + *(a3 + 20));
  return a1;
}

_BYTE *initializeWithTake for TTRRemindersListHighlightTarget.TargetItem(_BYTE *a1, _BYTE *a2, uint64_t a3)
{
  v6 = type metadata accessor for TTRRemindersListViewModel.Item(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 3)
  {
    if (EnumCaseMultiPayload > 6)
    {
      if (EnumCaseMultiPayload == 7)
      {
        v21 = type metadata accessor for TTRTemplatePublicLinkData.CreatedStateDescription(0);
        v22 = *(v21 - 8);
        if ((*(v22 + 48))(a2, 1, v21))
        {
          v23 = type metadata accessor for TTRTemplatePublicLinkData.StateToDisplay(0);
          memcpy(a1, a2, *(*(v23 - 8) + 64));
        }

        else
        {
          v26 = sub_21DBF563C();
          (*(*(v26 - 8) + 32))(a1, a2, v26);
          a1[*(v21 + 20)] = a2[*(v21 + 20)];
          (*(v22 + 56))(a1, 0, 1, v21);
        }

        v27 = type metadata accessor for TTRTemplatePublicLinkData(0);
        *&a1[*(v27 + 20)] = *&a2[*(v27 + 20)];
        goto LABEL_87;
      }

      if (EnumCaseMultiPayload != 8)
      {
        goto LABEL_32;
      }

      *a1 = *a2;
      v17 = *(type metadata accessor for TTRRemindersListTips(0) + 20);
      v18 = sub_21DBF8D7C();
      (*(*(v18 - 8) + 32))(&a1[v17], &a2[v17], v18);
LABEL_87:
      swift_storeEnumTagMultiPayload();
      goto LABEL_88;
    }

    if (EnumCaseMultiPayload != 4)
    {
      if (EnumCaseMultiPayload == 6)
      {
        v11 = type metadata accessor for TTRRemindersListViewModel.HashtagLabelSelectorState(0);
        v12 = *(v11 - 8);
        if ((*(v12 + 48))(a2, 1, v11))
        {
          v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A440, &unk_21DC16170);
          memcpy(a1, a2, *(*(v13 - 8) + 64));
        }

        else
        {
          *a1 = *a2;
          v28 = *(v11 + 20);
          v29 = sub_21DBF6C1C();
          (*(*(v29 - 8) + 32))(&a1[v28], &a2[v28], v29);
          (*(v12 + 56))(a1, 0, 1, v11);
        }

        v30 = *(type metadata accessor for TTRRemindersListViewModel.HashtagsState(0) + 20);
        v31 = &a1[v30];
        v32 = &a2[v30];
        *v31 = *v32;
        *(v31 + 2) = *(v32 + 2);
        goto LABEL_87;
      }

      goto LABEL_32;
    }

    *a1 = *a2;
    v14 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
    v15 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    v16 = *(v15 - 8);
    if (!(*(v16 + 48))(&a2[v14], 1, v15))
    {
      v24 = swift_getEnumCaseMultiPayload();
      if (v24 <= 3)
      {
        if (v24 == 2 || v24 == 3)
        {
          goto LABEL_57;
        }
      }

      else if (v24 == 4 || v24 == 5 || v24 == 6)
      {
        goto LABEL_57;
      }

      goto LABEL_85;
    }

    goto LABEL_29;
  }

  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload != 2)
    {
      *a1 = *a2;
      v14 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
      v15 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v16 = *(v15 - 8);
      if ((*(v16 + 48))(&a2[v14], 1, v15))
      {
        goto LABEL_29;
      }

      v33 = swift_getEnumCaseMultiPayload();
      if (v33 <= 3)
      {
        if (v33 == 2 || v33 == 3)
        {
          goto LABEL_57;
        }
      }

      else if (v33 == 4 || v33 == 5 || v33 == 6)
      {
LABEL_57:
        v34 = sub_21DBF563C();
        (*(*(v34 - 8) + 32))(&a1[v14], &a2[v14], v34);
        swift_storeEnumTagMultiPayload();
LABEL_86:
        (*(v16 + 56))(&a1[v14], 0, 1, v15);
        goto LABEL_87;
      }

LABEL_85:
      memcpy(&a1[v14], &a2[v14], *(v16 + 64));
      goto LABEL_86;
    }

    *a1 = *a2;
    v14 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
    v15 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    v16 = *(v15 - 8);
    if (!(*(v16 + 48))(&a2[v14], 1, v15))
    {
      v25 = swift_getEnumCaseMultiPayload();
      if (v25 <= 3)
      {
        if (v25 == 2 || v25 == 3)
        {
          goto LABEL_57;
        }
      }

      else if (v25 == 4 || v25 == 5 || v25 == 6)
      {
        goto LABEL_57;
      }

      goto LABEL_85;
    }

LABEL_29:
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70, &unk_21DC09230);
    memcpy(&a1[v14], &a2[v14], *(*(v20 - 8) + 64));
    goto LABEL_87;
  }

  if (!EnumCaseMultiPayload)
  {
    v8 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    v19 = swift_getEnumCaseMultiPayload();
    if (v19 <= 3)
    {
      if (v19 == 2 || v19 == 3)
      {
        goto LABEL_9;
      }
    }

    else if (v19 == 4 || v19 == 5 || v19 == 6)
    {
      goto LABEL_9;
    }

    goto LABEL_64;
  }

  if (EnumCaseMultiPayload == 1)
  {
    v8 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    v9 = swift_getEnumCaseMultiPayload();
    if (v9 <= 3)
    {
      if (v9 == 2 || v9 == 3)
      {
        goto LABEL_9;
      }
    }

    else if (v9 == 4 || v9 == 5 || v9 == 6)
    {
LABEL_9:
      v10 = sub_21DBF563C();
      (*(*(v10 - 8) + 32))(a1, a2, v10);
      swift_storeEnumTagMultiPayload();
LABEL_65:
      v35 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
      v36 = v35[5];
      v37 = &a1[v36];
      v38 = &a2[v36];
      v39 = v38[3];
      v37[2] = v38[2];
      v37[3] = v39;
      v40 = v38[1];
      *v37 = *v38;
      v37[1] = v40;
      *(v37 + 106) = *(v38 + 106);
      v41 = v38[6];
      v37[5] = v38[5];
      v37[6] = v41;
      v37[4] = v38[4];
      a1[v35[6]] = a2[v35[6]];
      a1[v35[7]] = a2[v35[7]];
      a1[v35[8]] = a2[v35[8]];
      a1[v35[9]] = a2[v35[9]];
      a1[v35[10]] = a2[v35[10]];
      *&a1[v35[11]] = *&a2[v35[11]];
      goto LABEL_87;
    }

LABEL_64:
    memcpy(a1, a2, *(*(v8 - 8) + 64));
    goto LABEL_65;
  }

LABEL_32:
  memcpy(a1, a2, *(*(v6 - 8) + 64));
LABEL_88:
  a1[*(a3 + 20)] = a2[*(a3 + 20)];
  return a1;
}

void *assignWithTake for TTRRemindersListHighlightTarget.TargetItem(void *a1, void *a2, uint64_t a3)
{
  if (a1 != a2)
  {
    sub_21D106B58(a1, type metadata accessor for TTRRemindersListViewModel.Item);
    v6 = type metadata accessor for TTRRemindersListViewModel.Item(0);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload <= 3)
    {
      if (EnumCaseMultiPayload <= 1)
      {
        if (!EnumCaseMultiPayload)
        {
          v8 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
          v19 = swift_getEnumCaseMultiPayload();
          if (v19 <= 3)
          {
            if (v19 == 2 || v19 == 3)
            {
              goto LABEL_10;
            }
          }

          else if (v19 == 4 || v19 == 5 || v19 == 6)
          {
            goto LABEL_10;
          }

          goto LABEL_65;
        }

        if (EnumCaseMultiPayload == 1)
        {
          v8 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
          v9 = swift_getEnumCaseMultiPayload();
          if (v9 <= 3)
          {
            if (v9 == 2 || v9 == 3)
            {
              goto LABEL_10;
            }
          }

          else if (v9 == 4 || v9 == 5 || v9 == 6)
          {
LABEL_10:
            v10 = sub_21DBF563C();
            (*(*(v10 - 8) + 32))(a1, a2, v10);
            swift_storeEnumTagMultiPayload();
LABEL_66:
            v35 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
            v36 = v35[5];
            v37 = (a1 + v36);
            v38 = (a2 + v36);
            v39 = v38[3];
            v37[2] = v38[2];
            v37[3] = v39;
            v40 = v38[1];
            *v37 = *v38;
            v37[1] = v40;
            *(v37 + 106) = *(v38 + 106);
            v41 = v38[6];
            v37[5] = v38[5];
            v37[6] = v41;
            v37[4] = v38[4];
            *(a1 + v35[6]) = *(a2 + v35[6]);
            *(a1 + v35[7]) = *(a2 + v35[7]);
            *(a1 + v35[8]) = *(a2 + v35[8]);
            *(a1 + v35[9]) = *(a2 + v35[9]);
            *(a1 + v35[10]) = *(a2 + v35[10]);
            *(a1 + v35[11]) = *(a2 + v35[11]);
            goto LABEL_88;
          }

LABEL_65:
          memcpy(a1, a2, *(*(v8 - 8) + 64));
          goto LABEL_66;
        }

        goto LABEL_33;
      }

      if (EnumCaseMultiPayload == 2)
      {
        *a1 = *a2;
        v14 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
        v15 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
        v16 = *(v15 - 8);
        if ((*(v16 + 48))(a2 + v14, 1, v15))
        {
LABEL_30:
          v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70, &unk_21DC09230);
          memcpy(a1 + v14, a2 + v14, *(*(v20 - 8) + 64));
          goto LABEL_88;
        }

        v25 = swift_getEnumCaseMultiPayload();
        if (v25 <= 3)
        {
          if (v25 == 2 || v25 == 3)
          {
            goto LABEL_58;
          }
        }

        else if (v25 == 4 || v25 == 5 || v25 == 6)
        {
          goto LABEL_58;
        }
      }

      else
      {
        *a1 = *a2;
        v14 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
        v15 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
        v16 = *(v15 - 8);
        if ((*(v16 + 48))(a2 + v14, 1, v15))
        {
          goto LABEL_30;
        }

        v33 = swift_getEnumCaseMultiPayload();
        if (v33 <= 3)
        {
          if (v33 == 2 || v33 == 3)
          {
            goto LABEL_58;
          }
        }

        else if (v33 == 4 || v33 == 5 || v33 == 6)
        {
LABEL_58:
          v34 = sub_21DBF563C();
          (*(*(v34 - 8) + 32))(a1 + v14, a2 + v14, v34);
          swift_storeEnumTagMultiPayload();
LABEL_87:
          (*(v16 + 56))(a1 + v14, 0, 1, v15);
          goto LABEL_88;
        }
      }

LABEL_86:
      memcpy(a1 + v14, a2 + v14, *(v16 + 64));
      goto LABEL_87;
    }

    if (EnumCaseMultiPayload > 6)
    {
      if (EnumCaseMultiPayload == 7)
      {
        v21 = type metadata accessor for TTRTemplatePublicLinkData.CreatedStateDescription(0);
        v22 = *(v21 - 8);
        if ((*(v22 + 48))(a2, 1, v21))
        {
          v23 = type metadata accessor for TTRTemplatePublicLinkData.StateToDisplay(0);
          memcpy(a1, a2, *(*(v23 - 8) + 64));
        }

        else
        {
          v26 = sub_21DBF563C();
          (*(*(v26 - 8) + 32))(a1, a2, v26);
          *(a1 + *(v21 + 20)) = *(a2 + *(v21 + 20));
          (*(v22 + 56))(a1, 0, 1, v21);
        }

        v27 = type metadata accessor for TTRTemplatePublicLinkData(0);
        *(a1 + *(v27 + 20)) = *(a2 + *(v27 + 20));
        goto LABEL_88;
      }

      if (EnumCaseMultiPayload == 8)
      {
        *a1 = *a2;
        v17 = *(type metadata accessor for TTRRemindersListTips(0) + 20);
        v18 = sub_21DBF8D7C();
        (*(*(v18 - 8) + 32))(a1 + v17, a2 + v17, v18);
LABEL_88:
        swift_storeEnumTagMultiPayload();
        goto LABEL_89;
      }
    }

    else
    {
      if (EnumCaseMultiPayload == 4)
      {
        *a1 = *a2;
        v14 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
        v15 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
        v16 = *(v15 - 8);
        if ((*(v16 + 48))(a2 + v14, 1, v15))
        {
          goto LABEL_30;
        }

        v24 = swift_getEnumCaseMultiPayload();
        if (v24 <= 3)
        {
          if (v24 == 2 || v24 == 3)
          {
            goto LABEL_58;
          }
        }

        else if (v24 == 4 || v24 == 5 || v24 == 6)
        {
          goto LABEL_58;
        }

        goto LABEL_86;
      }

      if (EnumCaseMultiPayload == 6)
      {
        v11 = type metadata accessor for TTRRemindersListViewModel.HashtagLabelSelectorState(0);
        v12 = *(v11 - 8);
        if ((*(v12 + 48))(a2, 1, v11))
        {
          v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A440, &unk_21DC16170);
          memcpy(a1, a2, *(*(v13 - 8) + 64));
        }

        else
        {
          *a1 = *a2;
          v28 = *(v11 + 20);
          v29 = sub_21DBF6C1C();
          (*(*(v29 - 8) + 32))(a1 + v28, a2 + v28, v29);
          (*(v12 + 56))(a1, 0, 1, v11);
        }

        v30 = *(type metadata accessor for TTRRemindersListViewModel.HashtagsState(0) + 20);
        v31 = a1 + v30;
        v32 = a2 + v30;
        *v31 = *v32;
        *(v31 + 2) = *(v32 + 2);
        goto LABEL_88;
      }
    }

LABEL_33:
    memcpy(a1, a2, *(*(v6 - 8) + 64));
  }

LABEL_89:
  *(a1 + *(a3 + 20)) = *(a2 + *(a3 + 20));
  return a1;
}

uint64_t sub_21D52D00C(uint64_t a1)
{
  result = type metadata accessor for TTRRemindersListViewModel.Item(319);
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

char *TTRIBackgroundView.__allocating_init(frame:backgroundColor:cornerRadius:)(uint64_t a1, double a2, double a3, double a4, double a5, double a6)
{
  v9 = [objc_allocWithZone(v6) initWithFrame_];
  v10 = OBJC_IVAR____TtC15RemindersUICore18TTRIBackgroundView_customCornerRadius;
  swift_beginAccess();
  *&v9[v10] = a6;
  v11 = OBJC_IVAR____TtC15RemindersUICore18TTRIBackgroundView_backgroundFillColor;
  swift_beginAccess();
  v12 = *&v9[v11];
  *&v9[v11] = a1;
  v13 = v9;

  return v13;
}

id TTRIBackgroundView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id TTRIBackgroundView.init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = OBJC_IVAR____TtC15RemindersUICore18TTRIBackgroundView_backgroundFillColor;
  *&v4[v9] = [objc_opt_self() clearColor];
  *&v4[OBJC_IVAR____TtC15RemindersUICore18TTRIBackgroundView_borderWidth] = 0;
  *&v4[OBJC_IVAR____TtC15RemindersUICore18TTRIBackgroundView_borderColor] = 0;
  v4[OBJC_IVAR____TtC15RemindersUICore18TTRIBackgroundView_continuousCorners] = 1;
  *&v4[OBJC_IVAR____TtC15RemindersUICore18TTRIBackgroundView_roundedCorners] = 15;
  *&v4[OBJC_IVAR____TtC15RemindersUICore18TTRIBackgroundView_customCornerRadius] = 0;
  v12.receiver = v4;
  v12.super_class = type metadata accessor for TTRIBackgroundView();
  v10 = objc_msgSendSuper2(&v12, sel_initWithFrame_, a1, a2, a3, a4);
  sub_21D52DE50();

  return v10;
}

id sub_21D52D31C(void *a1)
{
  v3 = OBJC_IVAR____TtC15RemindersUICore18TTRIBackgroundView_backgroundFillColor;
  *&v1[v3] = [objc_opt_self() clearColor];
  *&v1[OBJC_IVAR____TtC15RemindersUICore18TTRIBackgroundView_borderWidth] = 0;
  *&v1[OBJC_IVAR____TtC15RemindersUICore18TTRIBackgroundView_borderColor] = 0;
  v1[OBJC_IVAR____TtC15RemindersUICore18TTRIBackgroundView_continuousCorners] = 1;
  *&v1[OBJC_IVAR____TtC15RemindersUICore18TTRIBackgroundView_roundedCorners] = 15;
  *&v1[OBJC_IVAR____TtC15RemindersUICore18TTRIBackgroundView_customCornerRadius] = 0;
  v8.receiver = v1;
  v8.super_class = type metadata accessor for TTRIBackgroundView();
  v4 = objc_msgSendSuper2(&v8, sel_initWithCoder_, a1);
  v5 = v4;
  if (v4)
  {
    v6 = v4;
    sub_21D52DE50();
  }

  return v5;
}

id sub_21D52D420(void **a1, char **a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC15RemindersUICore18TTRIBackgroundView_backgroundFillColor;
  swift_beginAccess();
  v5 = *&v3[v4];
  *&v3[v4] = v2;
  v6 = v2;

  return [v3 setNeedsLayout];
}

id sub_21D52D490()
{
  v1 = OBJC_IVAR____TtC15RemindersUICore18TTRIBackgroundView_backgroundFillColor;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void sub_21D52D4E4(void *a1)
{
  v3 = OBJC_IVAR____TtC15RemindersUICore18TTRIBackgroundView_backgroundFillColor;
  swift_beginAccess();
  v4 = *&v1[v3];
  *&v1[v3] = a1;
  v5 = a1;

  [v1 setNeedsLayout];
}

uint64_t (*sub_21D52D558(uint64_t a1))()
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_21D52E3C0;
}

double sub_21D52D5BC()
{
  v1 = OBJC_IVAR____TtC15RemindersUICore18TTRIBackgroundView_borderWidth;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t (*sub_21D52D60C(uint64_t a1))()
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_21D52E3C0;
}

id sub_21D52D670(void **a1, char **a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC15RemindersUICore18TTRIBackgroundView_borderColor;
  swift_beginAccess();
  v5 = *&v3[v4];
  *&v3[v4] = v2;
  v6 = v2;

  return [v3 setNeedsLayout];
}

void *sub_21D52D6E0()
{
  v1 = OBJC_IVAR____TtC15RemindersUICore18TTRIBackgroundView_borderColor;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_21D52D72C(void *a1)
{
  v3 = OBJC_IVAR____TtC15RemindersUICore18TTRIBackgroundView_borderColor;
  swift_beginAccess();
  v4 = *&v1[v3];
  *&v1[v3] = a1;
  v5 = a1;

  [v1 setNeedsLayout];
}

uint64_t (*sub_21D52D7A0(uint64_t a1))()
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_21D52D804;
}

uint64_t sub_21D52D808()
{
  v1 = OBJC_IVAR____TtC15RemindersUICore18TTRIBackgroundView_continuousCorners;
  swift_beginAccess();
  return *(v0 + v1);
}

id sub_21D52D84C(char a1)
{
  v3 = OBJC_IVAR____TtC15RemindersUICore18TTRIBackgroundView_continuousCorners;
  swift_beginAccess();
  v1[v3] = a1;
  return [v1 setNeedsLayout];
}

uint64_t (*sub_21D52D8AC(uint64_t a1))()
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_21D52E3C0;
}

void sub_21D52D910(void *a1@<X8>)
{
  v3 = OBJC_IVAR____TtC15RemindersUICore18TTRIBackgroundView_roundedCorners;
  swift_beginAccess();
  *a1 = *(v1 + v3);
}

id sub_21D52D964(uint64_t *a1)
{
  v2 = *a1;
  v3 = OBJC_IVAR____TtC15RemindersUICore18TTRIBackgroundView_roundedCorners;
  swift_beginAccess();
  *&v1[v3] = v2;
  return [v1 setNeedsLayout];
}

uint64_t (*sub_21D52D9C4(uint64_t a1))()
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_21D52E3C0;
}

double sub_21D52DA28()
{
  v1 = OBJC_IVAR____TtC15RemindersUICore18TTRIBackgroundView_customCornerRadius;
  swift_beginAccess();
  return *(v0 + v1);
}

id sub_21D52DA78(uint64_t *a1, double a2)
{
  v4 = *a1;
  swift_beginAccess();
  *&v2[v4] = a2;
  return [v2 setNeedsLayout];
}

uint64_t (*sub_21D52DAD4(uint64_t a1))()
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_21D52E3C0;
}

id sub_21D52DB38(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v5 = *(a1 + 24);

    return [v5 setNeedsLayout];
  }

  return result;
}

void sub_21D52DB98()
{
  v1 = v0;
  v16.receiver = v0;
  v16.super_class = type metadata accessor for TTRIBackgroundView();
  objc_msgSendSuper2(&v16, sel_layoutSubviews);
  swift_beginAccess();
  v2 = TTRRectCorners.cornerMask(layoutDirection:isFlipped:)([v0 effectiveUserInterfaceLayoutDirection], 1);
  v3 = [v1 layer];
  v4 = OBJC_IVAR____TtC15RemindersUICore18TTRIBackgroundView_borderColor;
  swift_beginAccess();
  v5 = *&v1[v4];
  if (v5)
  {
    v6 = [v5 CGColor];
  }

  else
  {
    v6 = 0;
  }

  [v3 setBorderColor_];

  v7 = [v1 layer];
  v8 = OBJC_IVAR____TtC15RemindersUICore18TTRIBackgroundView_borderWidth;
  swift_beginAccess();
  [v7 setBorderWidth_];

  v9 = [v1 layer];
  [v9 setMaskedCorners_];

  v10 = [v1 layer];
  [v10 setCornerCurve_];

  v11 = [v1 layer];
  v12 = OBJC_IVAR____TtC15RemindersUICore18TTRIBackgroundView_customCornerRadius;
  swift_beginAccess();
  [v11 setCornerRadius_];

  v13 = [v1 layer];
  v14 = OBJC_IVAR____TtC15RemindersUICore18TTRIBackgroundView_backgroundFillColor;
  swift_beginAccess();
  v15 = [*&v1[v14] CGColor];
  [v13 setBackgroundColor_];
}

id sub_21D52DE50()
{
  type metadata accessor for UILayoutPriority(0);
  sub_21D367748();
  sub_21DBF84EC();
  LODWORD(v1) = v6;
  [v0 setContentHuggingPriority:0 forAxis:v1];
  LODWORD(v2) = v6;
  [v0 setContentHuggingPriority:1 forAxis:v2];
  LODWORD(v3) = v6;
  [v0 setContentCompressionResistancePriority:0 forAxis:v3];
  LODWORD(v4) = v6;
  return [v0 setContentCompressionResistancePriority:1 forAxis:v4];
}

id TTRIBackgroundView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TTRIBackgroundView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id keypath_set_3Tm_0(uint64_t *a1, char **a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v5 = *a1;
  v6 = *a2;
  v7 = *a5;
  swift_beginAccess();
  *&v6[v7] = v5;
  return [v6 setNeedsLayout];
}

uint64_t sub_21D52E3C4()
{
  if (*(v0 + 24))
  {
    v1 = *(v0 + 24);
  }

  else
  {
    v1 = sub_21D53859C(v0);
    *(v0 + 24) = v1;
  }

  return v1;
}

uint64_t sub_21D52E424()
{
  if (*(v0 + 72))
  {
    v1 = *(v0 + 72);
  }

  else
  {
    v1 = sub_21D5340AC(v0, sub_21D5339EC, 1702125892, sub_21D539A98, sub_21D539AA0);
    *(v0 + 72) = v1;
  }

  return v1;
}

uint64_t sub_21D52E4C8()
{
  if (*(v0 + 80))
  {
    v1 = *(v0 + 80);
  }

  else
  {
    v1 = sub_21D533CD4();
    *(v0 + 80) = v1;
  }

  return v1;
}

uint64_t sub_21D52E528()
{
  if (*(v0 + 88))
  {
    v1 = *(v0 + 88);
  }

  else
  {
    v1 = sub_21D5340AC(v0, sub_21D5344DC, 1701669204, sub_21D5396A4, sub_21D5396AC);
    *(v0 + 88) = v1;
  }

  return v1;
}

uint64_t sub_21D52E5CC(__n128 a1)
{
  if (*(v1 + 96))
  {
    v2 = *(v1 + 96);
  }

  else
  {
    v2 = sub_21D53480C(a1);
    *(v1 + 96) = v2;
  }

  return v2;
}

uint64_t sub_21D52E62C()
{
  if (*(v0 + 104))
  {
    v1 = *(v0 + 104);
  }

  else
  {
    v1 = sub_21D534BE0();
    *(v0 + 104) = v1;
  }

  return v1;
}

uint64_t sub_21D52E68C()
{
  if (*(v0 + 112))
  {
    v1 = *(v0 + 112);
  }

  else
  {
    v1 = sub_21D535150();
    *(v0 + 112) = v1;
  }

  return v1;
}

uint64_t sub_21D52E6EC()
{
  if (*(v0 + 32))
  {
    v1 = *(v0 + 32);
  }

  else
  {
    v1 = sub_21D5392E0(v0);
    *(v0 + 32) = v1;
  }

  return v1;
}

uint64_t sub_21D52E74C()
{
  if (*(v0 + 120))
  {
    v1 = *(v0 + 120);
  }

  else
  {
    v1 = sub_21D5355F0();
    *(v0 + 120) = v1;
  }

  return v1;
}

uint64_t sub_21D52E7AC()
{
  if (*(v0 + 128))
  {
    v1 = *(v0 + 128);
  }

  else
  {
    v1 = sub_21D535B78();
    *(v0 + 128) = v1;
  }

  return v1;
}

uint64_t sub_21D52E80C()
{
  if (*(v0 + 136))
  {
    v1 = *(v0 + 136);
  }

  else
  {
    v1 = sub_21D535E50();
    *(v0 + 136) = v1;
  }

  return v1;
}

uint64_t sub_21D52E86C()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong && (v2 = Strong, v3 = [Strong traitCollection], v4 = objc_msgSend(v3, sel_userInterfaceIdiom), v3, v2, v4 == 1))
  {
    return 1;
  }

  else
  {
    return *(v0 + 64);
  }
}

uint64_t sub_21D52E8E4()
{
  if (*(v0 + 152))
  {
    v1 = *(v0 + 152);
  }

  else
  {
    v1 = sub_21D536214();
    *(v0 + 152) = v1;
  }

  return v1;
}

uint64_t sub_21D52E944()
{
  if (*(v0 + 160))
  {
    v1 = *(v0 + 160);
  }

  else
  {
    v1 = sub_21D53659C();
    *(v0 + 160) = v1;
  }

  return v1;
}

uint64_t sub_21D52E9A4()
{
  if (*(v0 + 176))
  {
    v1 = *(v0 + 176);
  }

  else
  {
    v1 = sub_21D536E58();
    *(v0 + 176) = v1;
  }

  return v1;
}

uint64_t sub_21D52EA04(__n128 a1)
{
  if (*(v1 + 184))
  {
    v2 = *(v1 + 184);
  }

  else
  {
    v2 = sub_21D5373D4(a1);
    *(v1 + 184) = v2;
  }

  return v2;
}

uint64_t sub_21D52EA64()
{
  if (*(v0 + 144))
  {
    v1 = *(v0 + 144);
  }

  else
  {
    v1 = sub_21D5377AC(v0, sub_21D5360C0, 0x746165706552, 0xE600000000000000, sub_21D5395C4);
    *(v0 + 144) = v1;
  }

  return v1;
}

uint64_t sub_21D52EAFC()
{
  if (*(v0 + 192))
  {
    v1 = *(v0 + 192);
  }

  else
  {
    v1 = sub_21D5377AC(v0, sub_21D537070, 0x6570655220646E45, 0xEA00000000007461, sub_21D5395BC);
    *(v0 + 192) = v1;
  }

  return v1;
}

uint64_t sub_21D52EB9C(uint64_t a1)
{
  MEMORY[0x28223BE20](a1);
  v386 = v1;
  v384 = v2;
  v4 = v3;
  v365 = type metadata accessor for TTRIDatePickerCellContentState(0);
  MEMORY[0x28223BE20](v365);
  v373 = &v343[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v6);
  v374 = &v343[-v7];
  v363 = type metadata accessor for TTRICalendarPickerCellContentState(0);
  MEMORY[0x28223BE20](v363);
  v372 = &v343[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE60DB0, qword_21DC0BF70);
  MEMORY[0x28223BE20](v9 - 8);
  v369 = &v343[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v11);
  v368 = &v343[-v12];
  MEMORY[0x28223BE20](v13);
  v367 = &v343[-v14];
  MEMORY[0x28223BE20](v15);
  v17 = &v343[-v16];
  v18 = sub_21DBF5C4C();
  v19 = *(v18 - 8);
  v377 = v18;
  v378 = v19;
  MEMORY[0x28223BE20](v18);
  v370 = &v343[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v21);
  v366 = &v343[-v22];
  MEMORY[0x28223BE20](v23);
  v364 = &v343[-v24];
  MEMORY[0x28223BE20](v25);
  v362 = &v343[-v26];
  MEMORY[0x28223BE20](v27);
  v375 = &v343[-v28];
  MEMORY[0x28223BE20](v29);
  v31 = &v343[-v30];
  v380 = sub_21DBF604C();
  v383 = *(v380 - 8);
  MEMORY[0x28223BE20](v380);
  v379 = &v343[-((v32 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v381 = type metadata accessor for TTRReminderDetailViewModel.DatePickerModel(0);
  MEMORY[0x28223BE20](v381);
  v371 = &v343[-((v33 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v34);
  v385 = &v343[-v35];
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5D998, &unk_21DC1D520);
  MEMORY[0x28223BE20](v36 - 8);
  v38 = &v343[-v37];
  v39 = type metadata accessor for TTRReminderDetailViewModel.DueDateState(0);
  v40 = *(v39 - 8);
  MEMORY[0x28223BE20](v39);
  v376 = &v343[-((v41 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v42);
  v382 = &v343[-v43];
  MEMORY[0x28223BE20](v44);
  v46 = &v343[-v45];
  sub_21D0D3954(v4, v38, &qword_27CE5D998, &unk_21DC1D520);
  if ((*(v40 + 48))(v38, 1, v39) == 1)
  {
    sub_21D0CF7E0(v38, &qword_27CE5D998, &unk_21DC1D520);
    goto LABEL_54;
  }

  sub_21D539B30(v38, v46, type metadata accessor for TTRReminderDetailViewModel.DueDateState);
  v47 = v386;
  if ((v384 & 0x200) != 0)
  {
    sub_21D539CB4(v46, type metadata accessor for TTRReminderDetailViewModel.DueDateState);
    goto LABEL_54;
  }

  v48 = v382;
  sub_21D539D14(v46, v382, type metadata accessor for TTRReminderDetailViewModel.DueDateState);
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C678, &unk_21DC16600);
  v50 = *(v49 - 8);
  v51 = *(v50 + 48);
  v52 = v50 + 48;
  v360 = v51(v48, 1, v49);
  v359 = v46;
  if (v360 != 1)
  {
    v346 = v51;

    v344 = v48[*(v49 + 96)];
    v53 = v48;
    v54 = v385;
    sub_21D539B30(v53, v385, type metadata accessor for TTRReminderDetailViewModel.DatePickerModel);
    v355 = v54[v381[5]];
    v55 = v381[7];
    v56 = v54[v381[11]];
    v358 = v355 ^ 1;
    v350 = v49;
    v345 = v52;
    if ((v56 - 2) >= 2)
    {
      if (v56)
      {
        LODWORD(v384) = 0;
        v361 = v355 ^ 1;
      }

      else
      {
        v361 = 0;
        LODWORD(v384) = 1;
      }
    }

    else
    {
      v361 = 0;
      LODWORD(v384) = 0;
    }

    v347 = v54[v55];
    v59 = v383;
    v60 = v383[13];
    v62 = v379;
    v61 = v380;
    v353 = *MEMORY[0x277D44DC0];
    v354 = (v383 + 13);
    v352 = v60;
    v60(v379);
    v63 = sub_21DBF603C();
    v64 = v59[1];
    v383 = v59 + 1;
    v351 = v64;
    v64(v62, v61);
    if (v63)
    {
      sub_21DBF507C();
      v65 = v378;
      v66 = v377;
      if ((*(v378 + 48))(v17, 1, v377) != 1)
      {
        (*(v65 + 32))(v31, v17, v66);
        v80 = _s15RemindersUICore26TTRReminderDetailViewModelV010DatePickerF0V10dateString3forSS10Foundation8TimeZoneV_tF_0(v31);
        v348 = v81;
        v349 = v80;
        if (qword_280D1BAA8 != -1)
        {
          swift_once();
        }

        sub_21DBF516C();
        v357 = sub_21D7A5CB4();
        v83 = v82;

        v72 = *(v65 + 8);
        (v72)(v31, v66);
        v47 = v386;
        v77 = v384;
        v78 = v65;
        v79 = v375;
        v356 = v83;
        if (!v384)
        {
LABEL_26:
          if (v355)
          {
            v103 = 0;
            v104 = 0;
          }

          else
          {
            v106 = v379;
            v105 = v380;
            v352(v379, v353, v380);
            v107 = sub_21DBF603C();
            v351(v106, v105);
            if (v107)
            {
              v108 = v368;
              sub_21DBF507C();
              v109 = v108;
              if ((*(v78 + 48))(v108, 1, v66) == 1)
              {
                sub_21D0CF7E0(v108, &unk_27CE60DB0, qword_21DC0BF70);
              }

              else
              {
                v110 = v364;
                (*(v78 + 32))(v364, v109, v66);
                TTRReminderDetailViewModel.DatePickerModel.timeZoneAbbreviationString.getter();
                if (v111)
                {

                  v112 = [objc_opt_self() defaultTimeZone];
                  sub_21DBF5C2C();

                  sub_21D0F1CF8(&qword_27CE64FE0, MEMORY[0x277CC9A70], MEMORY[0x277CC9A88]);
                  if (sub_21DBFA10C())
                  {
                    v103 = sub_21D7A235C(v110);
                    v104 = v113;
                  }

                  else
                  {
                    *&v490[0] = sub_21D7A235C(v110);
                    *(&v490[0] + 1) = v339;
                    MEMORY[0x223D42AA0](32, 0xE100000000000000);
                    v340 = TTRReminderDetailViewModel.DatePickerModel.timeZoneAbbreviationString.getter();
                    if (v341)
                    {
                      v342 = v341;
                    }

                    else
                    {
                      v340 = 0;
                      v342 = 0xE000000000000000;
                    }

                    MEMORY[0x223D42AA0](v340, v342);

                    v104 = *(&v490[0] + 1);
                    v103 = *&v490[0];
                  }

                  (v72)(v366, v66);
                  (v72)(v110, v66);
                  goto LABEL_36;
                }

                (v72)(v110, v66);
              }
            }

            v114 = [objc_opt_self() defaultTimeZone];
            sub_21DBF5C2C();

            v103 = sub_21D7A235C(v79);
            v115 = v79;
            v104 = v116;
            (v72)(v115, v66);
          }

LABEL_36:
          v372 = v104;
          v375 = v103;
          if (v361)
          {
            v117 = *(sub_21D52E5CC(v76) + 32);

            v118 = *((*MEMORY[0x277D85000] & *v117) + 0x78);
            swift_beginAccess();
            v119 = v72;
            v120 = v374;
            sub_21D539D14(v117 + v118, v374, type metadata accessor for TTRIDatePickerCellContentState);
            v121 = sub_21DBF563C();
            (*(*(v121 - 8) + 24))(v120, v385, v121);
            v122 = v373;
            sub_21D539D14(v117 + v118, v373, type metadata accessor for TTRIDatePickerCellContentState);
            swift_beginAccess();
            v123 = v377;
            v77 = v384;
            sub_21D539C50(v120, v117 + v118, v124);
            swift_endAccess();
            sub_21D5D2158(v122, v125);

            sub_21D539CB4(v122, type metadata accessor for TTRIDatePickerCellContentState);
            v126 = v120;
            v127 = v119;
            sub_21D539CB4(v126, type metadata accessor for TTRIDatePickerCellContentState);
            v129 = v379;
            v128 = v380;
            v352(v379, v353, v380);
            LOBYTE(v117) = sub_21DBF603C();
            v351(v129, v128);
            if (v117)
            {
              v130 = v369;
              sub_21DBF507C();
              if ((*(v78 + 48))(v130, 1, v123) == 1)
              {
                sub_21D0CF7E0(v130, &unk_27CE60DB0, qword_21DC0BF70);
              }

              else
              {
                (*(v78 + 32))(v370, v130, v123);
                v131 = *(v47[12] + 32);
                v132 = *((*MEMORY[0x277D85000] & *v131) + 0x78);
                swift_beginAccess();
                v386 = v127;
                v133 = v374;
                sub_21D539D14(v131 + v132, v374, type metadata accessor for TTRIDatePickerCellContentState);
                v134 = *(v365 + 20);
                v135 = *(v78 + 24);
                v383 = v131;
                v136 = &v133[v134];
                v137 = v370;
                v135(v136, v370, v123);
                v138 = v373;
                sub_21D539D14(v131 + v132, v373, type metadata accessor for TTRIDatePickerCellContentState);
                swift_beginAccess();
                v77 = v384;
                sub_21D539C50(v133, v131 + v132, v139);
                swift_endAccess();
                v140 = v383;
                sub_21D5D2158(v138, v141);

                sub_21D539CB4(v138, type metadata accessor for TTRIDatePickerCellContentState);
                (v386)(v137, v377);
                sub_21D539CB4(v133, type metadata accessor for TTRIDatePickerCellContentState);
              }
            }
          }

          if ((v355 & 1) == 0)
          {
            v142 = *(sub_21D52E62C() + 32);

            v143 = v142 + *((*MEMORY[0x277D85000] & *v142) + 0x78);
            swift_beginAccess();
            v144 = *v143;
            v145 = *(v143 + 1);
            v146 = *(v143 + 2);
            v478 = *(v143 + 3);
            v477 = v146;
            v476 = v145;
            v475 = v144;
            v147 = *(v143 + 4);
            v148 = *(v143 + 5);
            v149 = *(v143 + 6);
            *(v481 + 14) = *(v143 + 110);
            v481[0] = v149;
            v480 = v148;
            v479 = v147;
            v150 = *v143;
            v151 = *(v143 + 1);
            v152 = *(v143 + 3);
            v490[2] = *(v143 + 2);
            v490[3] = v152;
            v490[0] = v150;
            v490[1] = v151;
            v153 = *(v143 + 4);
            v154 = *(v143 + 5);
            v155 = *(v143 + 6);
            v491 = *(v143 + 14);
            v490[5] = v154;
            v490[6] = v155;
            v490[4] = v153;
            v492 = v344;
            v156 = *(v143 + 121);
            v494 = v143[125];
            v493 = v156;
            sub_21D539B98(&v475, v470);
            sub_21D5C6D8C(v490);
          }

          v157 = v376;
          sub_21D539D14(v359, v376, type metadata accessor for TTRReminderDetailViewModel.DueDateState);
          v158 = v350;
          if (v346(v157, 1, v350) == 1)
          {
            v159 = 0;
            v160 = 0;
          }

          else
          {

            v161 = *(v158 + 64);
            v162 = v371;
            sub_21D539B30(v157, v371, type metadata accessor for TTRReminderDetailViewModel.DatePickerModel);
            v163 = &v162[v381[12]];
            v159 = *v163;
            v160 = v163[1];
            sub_21DBF8E0C();
            sub_21D539CB4(v162, type metadata accessor for TTRReminderDetailViewModel.DatePickerModel);
            sub_21D0CF7E0(&v157[v161], &unk_27CE628E0, &unk_21DC17980);
          }

          v383 = v160;
          if (v361)
          {
            v164 = *(sub_21D52E68C() + 32);

            if (v160)
            {
              v165 = v160;
            }

            else
            {
              v159 = 0;
              v165 = 0xE000000000000000;
            }

            v166 = v164 + *((*MEMORY[0x277D85000] & *v164) + 0x78);
            swift_beginAccess();
            v167 = *(v166 + 1);
            v168 = *v166;
            v477 = *(v166 + 2);
            v476 = v167;
            v475 = v168;
            v169 = *(v166 + 3);
            v170 = *(v166 + 4);
            v171 = *(v166 + 5);
            LOBYTE(v481[0]) = v166[96];
            v480 = v171;
            v479 = v170;
            v478 = v169;
            sub_21DBF8E0C();
            sub_21D539BF4(&v475, v470);

            v482 = v475;
            v487 = v479;
            v488 = v480;
            v489 = v481[0];
            v486 = v478;
            v485 = v477;
            v483 = v159;
            v484 = v165;
            sub_21D5C7018(&v482);
          }

          sub_21D539CB4(v385, type metadata accessor for TTRReminderDetailViewModel.DatePickerModel);
          LODWORD(v384) = v77;
          sub_21D0CF7E0(&v382[*(v158 + 64)], &unk_27CE628E0, &unk_21DC17980);
          LODWORD(v385) = v347 ^ 1;
          v58 = v348;
          v57 = v349;
          goto LABEL_52;
        }

LABEL_22:
        v84 = *(sub_21D52E4C8() + 32);

        v85 = *((*MEMORY[0x277D85000] & *v84) + 0x78);
        swift_beginAccess();
        v86 = v84 + v85;
        v87 = v372;
        sub_21D539D14(v86, v372, type metadata accessor for TTRICalendarPickerCellContentState);
        v88 = sub_21DBF563C();
        (*(*(v88 - 8) + 24))(v87, v385, v88);
        sub_21D5C665C(v87);

        v90 = v379;
        v89 = v380;
        v352(v379, v353, v380);
        LOBYTE(v84) = sub_21DBF603C();
        v351(v90, v89);
        if (v84)
        {
          v91 = v367;
          sub_21DBF507C();
          if ((*(v78 + 48))(v91, 1, v66) == 1)
          {
            sub_21D0CF7E0(v91, &unk_27CE60DB0, qword_21DC0BF70);
          }

          else
          {
            v92 = *(v78 + 32);
            v93 = v362;
            v92(v362, v91, v66);
            v94 = *(v47[10] + 32);
            v95 = *((*MEMORY[0x277D85000] & *v94) + 0x78);
            swift_beginAccess();
            v96 = v72;
            v97 = v372;
            sub_21D539D14(v94 + v95, v372, type metadata accessor for TTRICalendarPickerCellContentState);
            v98 = *(v363 + 20);
            v99 = *(v378 + 24);
            v100 = v94;
            v99(&v97[v98], v93, v377);
            v66 = v377;
            v101 = v97;
            v72 = v96;
            v77 = v384;
            sub_21D5C665C(v101);

            v102 = v93;
            v78 = v378;
            (v72)(v102, v66);
          }
        }

        goto LABEL_26;
      }

      sub_21D0CF7E0(v17, &unk_27CE60DB0, qword_21DC0BF70);
    }

    v67 = objc_opt_self();
    v68 = [v67 defaultTimeZone];
    v69 = v375;
    sub_21DBF5C2C();

    v70 = _s15RemindersUICore26TTRReminderDetailViewModelV010DatePickerF0V10dateString3forSS10Foundation8TimeZoneV_tF_0(v69);
    v348 = v71;
    v349 = v70;
    v66 = v377;
    v72 = *(v378 + 8);
    (v72)(v69, v377);
    v73 = [v67 &selRef__setContinuousCornerRadius_ + 3];
    sub_21DBF5C2C();

    if (qword_280D1BAA8 != -1)
    {
      swift_once();
    }

    sub_21DBF516C();
    v357 = sub_21D7A5CB4();
    v75 = v74;

    (v72)(v69, v66);
    v47 = v386;
    v77 = v384;
    v78 = v378;
    v79 = v69;
    v356 = v75;
    if (!v384)
    {
      goto LABEL_26;
    }

    goto LABEL_22;
  }

  v358 = 0;
  v361 = 0;
  LODWORD(v384) = 0;
  LODWORD(v385) = 0;
  v375 = 0;
  v372 = 0;
  v356 = 0;
  v357 = 0;
  v57 = 0;
  v58 = 0;
LABEL_52:
  v172 = v360 != 1;
  LODWORD(v386) = v360 != 1;
  v173 = *(sub_21D52E424() + 32);

  v174 = MEMORY[0x277D85000];
  v175 = v173 + *((*MEMORY[0x277D85000] & *v173) + 0x78);
  swift_beginAccess();
  v176 = *v175;
  v177 = *(v175 + 1);
  v178 = *(v175 + 3);
  v388[2] = *(v175 + 2);
  v388[3] = v178;
  v388[0] = v176;
  v388[1] = v177;
  v179 = *(v175 + 4);
  v180 = *(v175 + 5);
  v181 = *(v175 + 6);
  *(v389 + 14) = *(v175 + 110);
  v388[5] = v180;
  v389[0] = v181;
  v388[4] = v179;
  v182 = *v175;
  v183 = *(v175 + 1);
  v184 = *(v175 + 2);
  v478 = *(v175 + 3);
  v477 = v184;
  v476 = v183;
  v475 = v182;
  v185 = *(v175 + 4);
  v186 = *(v175 + 5);
  v187 = *(v175 + 6);
  *&v481[1] = *(v175 + 14);
  v481[0] = v187;
  v480 = v186;
  v479 = v185;
  BYTE8(v481[1]) = v172;
  v188 = *(v175 + 121);
  BYTE13(v481[1]) = v175[125];
  *(&v481[1] + 9) = v188;
  sub_21D539B98(v388, v470);
  sub_21D5C6D8C(&v475);

  v189 = *(v47[9] + 32);
  v190 = (v189 + *((*v174 & *v189) + 0x78));
  swift_beginAccess();
  v191 = v190[4];
  v192 = v190[5];
  v193 = *(v190 + 110);
  v396[0] = v190[6];
  v194 = *v190;
  v195 = v190[1];
  v196 = v190[2];
  v393 = v190[3];
  v392 = v196;
  v391 = v195;
  v390 = v194;
  *(v396 + 14) = v193;
  v395 = v192;
  v394 = v191;
  v197 = v189;
  sub_21D539B98(&v390, v470);

  v470[2] = v392;
  v470[3] = v393;
  v470[4] = v394;
  v470[0] = v390;
  v470[1] = v391;
  *v474 = *(v396 + 8);
  *&v474[14] = *(&v396[1] + 6);
  v471 = v395;
  v472 = v57;
  v473 = v58;
  sub_21D5C6D8C(v470);

  v198 = *(v47[9] + 32);
  v199 = (v198 + *((*v174 & *v198) + 0x78));
  swift_beginAccess();
  v200 = v199[4];
  v201 = v199[5];
  v202 = v199[6];
  *(v403 + 14) = *(v199 + 110);
  v203 = *v199;
  v204 = v199[1];
  v205 = v199[2];
  v400 = v199[3];
  v399 = v205;
  v398 = v204;
  v397 = v203;
  v403[0] = v202;
  v402 = v201;
  v401 = v200;
  v206 = v198;
  sub_21D539B98(&v397, v464);

  v464[4] = v401;
  v464[5] = v402;
  v468 = DWORD2(v403[1]);
  v469 = WORD6(v403[1]);
  v464[0] = v397;
  v464[1] = v398;
  v464[3] = v400;
  v464[2] = v399;
  v465 = *&v403[0];
  v466 = v357;
  v467 = v356;
  sub_21D5C6D8C(v464);

  v207 = *(v47[9] + 32);
  v208 = (v207 + *((*v174 & *v207) + 0x78));
  swift_beginAccess();
  v209 = *v208;
  v210 = v208[1];
  v211 = v208[2];
  v404[3] = v208[3];
  v404[2] = v211;
  v404[1] = v210;
  v404[0] = v209;
  v212 = v208[4];
  v213 = v208[5];
  v214 = v208[6];
  *(v405 + 14) = *(v208 + 110);
  v405[0] = v214;
  v404[5] = v213;
  v404[4] = v212;
  v215 = *v208;
  v216 = v208[1];
  v217 = v208[2];
  v460[3] = v208[3];
  v460[2] = v217;
  v460[1] = v216;
  v460[0] = v215;
  v218 = v208[4];
  v219 = v208[5];
  v220 = v208[6];
  *&v461[9] = *(v208 + 105);
  *v461 = v220;
  v460[5] = v219;
  v460[4] = v218;
  v462 = v386;
  v463 = *(&v405[1] + 10);
  v221 = v207;
  sub_21D539B98(v404, v455);
  sub_21D5C6D8C(v460);

  v222 = *(v47[9] + 32);
  v223 = v222 + *((*v174 & *v222) + 0x78);
  swift_beginAccess();
  v224 = *v223;
  v225 = *(v223 + 1);
  v226 = *(v223 + 2);
  v406[3] = *(v223 + 3);
  v406[2] = v226;
  v406[1] = v225;
  v406[0] = v224;
  v227 = *(v223 + 4);
  v228 = *(v223 + 5);
  v229 = *(v223 + 6);
  *(v407 + 14) = *(v223 + 110);
  v407[0] = v229;
  v406[5] = v228;
  v406[4] = v227;
  v230 = *v223;
  v231 = *(v223 + 1);
  v232 = *(v223 + 2);
  v455[3] = *(v223 + 3);
  v455[2] = v232;
  v455[1] = v231;
  v455[0] = v230;
  v233 = *(v223 + 4);
  v234 = *(v223 + 5);
  v235 = *(v223 + 6);
  *&v456[10] = *(v223 + 106);
  *v456 = v235;
  v455[5] = v234;
  v455[4] = v233;
  v457 = v385;
  v236 = *(v223 + 123);
  v459 = v223[125];
  v458 = v236;
  v237 = v222;
  sub_21D539B98(v406, v451);
  sub_21D5C6D8C(v455);

  v238 = *(v47[9] + 32);
  v239 = (v238 + *((*v174 & *v238) + 0x78));
  swift_beginAccess();
  v240 = *v239;
  v241 = v239[1];
  v242 = v239[2];
  v408[3] = v239[3];
  v408[2] = v242;
  v408[1] = v241;
  v408[0] = v240;
  v243 = v239[4];
  v244 = v239[5];
  v245 = v239[6];
  *(v409 + 14) = *(v239 + 110);
  v409[0] = v245;
  v408[5] = v244;
  v408[4] = v243;
  v246 = *v239;
  v247 = v239[1];
  v248 = v239[2];
  v451[3] = v239[3];
  v451[2] = v248;
  v451[1] = v247;
  v451[0] = v246;
  v249 = v239[4];
  v250 = v239[5];
  v251 = v239[6];
  *&v452[12] = *(v239 + 108);
  *v452 = v251;
  v451[5] = v250;
  v451[4] = v249;
  v453 = 1;
  v454 = BYTE13(v409[1]);
  v252 = v238;
  sub_21D539B98(v408, v448);
  sub_21D5C6D8C(v451);

  v253 = *(v47[9] + 32);
  v254 = (v253 + *((*v174 & *v253) + 0x78));
  swift_beginAccess();
  v255 = *v254;
  v256 = v254[1];
  v257 = v254[2];
  v410[3] = v254[3];
  v410[2] = v257;
  v410[1] = v256;
  v410[0] = v255;
  v258 = v254[4];
  v259 = v254[5];
  v260 = v254[6];
  *(v411 + 14) = *(v254 + 110);
  v411[0] = v260;
  v410[5] = v259;
  v410[4] = v258;
  v261 = *v254;
  v262 = v254[1];
  v263 = v254[2];
  v448[3] = v254[3];
  v448[2] = v263;
  v448[1] = v262;
  v448[0] = v261;
  v264 = v254[4];
  v265 = v254[5];
  v266 = v254[6];
  *&v449[13] = *(v254 + 109);
  *v449 = v266;
  v448[5] = v265;
  v448[4] = v264;
  v450 = v384;
  v267 = v253;
  sub_21D539B98(v410, v443);
  sub_21D5C6D8C(v448);

  v268 = *(sub_21D52E528() + 32);

  v269 = v268 + *((*v174 & *v268) + 0x78);
  swift_beginAccess();
  v270 = *v269;
  v271 = *(v269 + 1);
  v272 = *(v269 + 2);
  v412[3] = *(v269 + 3);
  v412[2] = v272;
  v412[1] = v271;
  v412[0] = v270;
  v273 = *(v269 + 4);
  v274 = *(v269 + 5);
  v275 = *(v269 + 6);
  *(v413 + 14) = *(v269 + 110);
  v413[0] = v275;
  v412[5] = v274;
  v412[4] = v273;
  v276 = *v269;
  v277 = *(v269 + 1);
  v278 = *(v269 + 2);
  v443[3] = *(v269 + 3);
  v443[2] = v278;
  v443[1] = v277;
  v443[0] = v276;
  v279 = *(v269 + 4);
  v280 = *(v269 + 5);
  v281 = *(v269 + 6);
  v444 = *(v269 + 14);
  v443[6] = v281;
  v443[5] = v280;
  v443[4] = v279;
  LOBYTE(v253) = v358;
  v445 = v358;
  v282 = *(v269 + 121);
  v447 = v269[125];
  v446 = v282;
  sub_21D539B98(v412, v439);
  sub_21D5C6D8C(v443);

  v283 = *(v47[11] + 32);
  v284 = (v283 + *((*v174 & *v283) + 0x78));
  swift_beginAccess();
  v285 = *v284;
  v286 = v284[1];
  v287 = v284[2];
  v414[3] = v284[3];
  v414[2] = v287;
  v414[1] = v286;
  v414[0] = v285;
  v288 = v284[4];
  v289 = v284[5];
  v290 = v284[6];
  *(v415 + 14) = *(v284 + 110);
  v415[0] = v290;
  v414[5] = v289;
  v414[4] = v288;
  v291 = *v284;
  v292 = v284[1];
  v293 = v284[2];
  v439[3] = v284[3];
  v439[2] = v293;
  v439[1] = v292;
  v439[0] = v291;
  v294 = v284[4];
  v295 = v284[5];
  v296 = v284[6];
  *&v440[9] = *(v284 + 105);
  *v440 = v296;
  v439[5] = v295;
  v439[4] = v294;
  v441 = v253;
  v442 = *(&v415[1] + 10);
  v297 = v283;
  sub_21D539B98(v414, v434);
  sub_21D5C6D8C(v439);

  v298 = *(v47[11] + 32);
  v299 = (v298 + *((*v174 & *v298) + 0x78));
  swift_beginAccess();
  v300 = v299[4];
  v301 = v299[5];
  v302 = *(v299 + 110);
  v422[0] = v299[6];
  v303 = *v299;
  v304 = v299[1];
  v305 = v299[2];
  v419 = v299[3];
  v418 = v305;
  v417 = v304;
  v416 = v303;
  *(v422 + 14) = v302;
  v421 = v301;
  v420 = v300;
  v306 = v298;
  sub_21D539B98(&v416, v434);

  v434[2] = v418;
  v434[3] = v419;
  v434[4] = v420;
  v434[0] = v416;
  v434[1] = v417;
  *v438 = *(v422 + 8);
  *&v438[14] = *(&v422[1] + 6);
  v435 = v421;
  v436 = v375;
  v437 = v372;
  sub_21D5C6D8C(v434);

  v307 = *(v47[11] + 32);
  v308 = (v307 + *((*v174 & *v307) + 0x78));
  swift_beginAccess();
  v309 = *v308;
  v310 = v308[1];
  v311 = v308[2];
  v423[3] = v308[3];
  v423[2] = v311;
  v423[1] = v310;
  v423[0] = v309;
  v312 = v308[4];
  v313 = v308[5];
  v314 = v308[6];
  *(v424 + 14) = *(v308 + 110);
  v424[0] = v314;
  v423[5] = v313;
  v423[4] = v312;
  v315 = *v308;
  v316 = v308[1];
  v317 = v308[2];
  v430[3] = v308[3];
  v430[2] = v317;
  v430[1] = v316;
  v430[0] = v315;
  v318 = v308[4];
  v319 = v308[5];
  v320 = v308[6];
  *&v431[12] = *(v308 + 108);
  *v431 = v320;
  v430[5] = v319;
  v430[4] = v318;
  v432 = 1;
  v433 = BYTE13(v424[1]);
  v321 = v307;
  sub_21D539B98(v423, v427);
  sub_21D5C6D8C(v430);

  v322 = *(v47[11] + 32);
  v323 = (v322 + *((*v174 & *v322) + 0x78));
  swift_beginAccess();
  v324 = *v323;
  v325 = v323[1];
  v326 = v323[2];
  v425[3] = v323[3];
  v425[2] = v326;
  v425[1] = v325;
  v425[0] = v324;
  v327 = v323[4];
  v328 = v323[5];
  v329 = v323[6];
  *(v426 + 14) = *(v323 + 110);
  v426[0] = v329;
  v425[5] = v328;
  v425[4] = v327;
  v330 = *v323;
  v331 = v323[1];
  v332 = v323[2];
  v427[3] = v323[3];
  v427[2] = v332;
  v427[1] = v331;
  v427[0] = v330;
  v333 = v323[4];
  v334 = v323[5];
  v335 = v323[6];
  *&v428[13] = *(v323 + 109);
  *v428 = v335;
  v427[5] = v334;
  v427[4] = v333;
  v429 = v361;
  v336 = v322;
  sub_21D539B98(v425, &v387);
  sub_21D5C6D8C(v427);

  sub_21D539CB4(v359, type metadata accessor for TTRReminderDetailViewModel.DueDateState);
  if (v360 != 1)
  {
  }

LABEL_54:
  sub_21D52E424();
  sub_21D5D3E3C();

  sub_21D52E4C8();
  sub_21D5D3E3C();

  sub_21D52E528();
  sub_21D5D3E3C();

  sub_21D52E5CC(v337);
  sub_21D5D3E3C();

  sub_21D52E62C();
  sub_21D5D3E3C();

  sub_21D52E68C();
  sub_21D5D3E3C();
}