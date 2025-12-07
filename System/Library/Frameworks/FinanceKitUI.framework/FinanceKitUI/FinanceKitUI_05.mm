uint64_t _s12FinanceKitUI29BankConnectAuthorizationErrorO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v30 = sub_238757B60();
  v4 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v29 - v8;
  v10 = type metadata accessor for BankConnectAuthorizationError(0);
  MEMORY[0x28223BE20](v10);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v29 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0AD80, &qword_238767038);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v29 - v17;
  v20 = *(v19 + 56);
  sub_23848B020(a1, &v29 - v17);
  sub_23848B020(a2, &v18[v20]);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      sub_23848B020(v18, v12);
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        goto LABEL_10;
      }

      v22 = v30;
      (*(v4 + 32))(v6, &v18[v20], v30);
      v23 = MEMORY[0x23EE5C610](v12, v6);
      v24 = *(v4 + 8);
      v24(v6, v22);
      v25 = v12;
      v26 = v22;
    }

    else
    {
      sub_23848B020(v18, v15);
      if (swift_getEnumCaseMultiPayload())
      {
        v12 = v15;
LABEL_10:
        (*(v4 + 8))(v12, v30);
LABEL_13:
        sub_23848BCCC(v18);
        v23 = 0;
        return v23 & 1;
      }

      v27 = v30;
      (*(v4 + 32))(v9, &v18[v20], v30);
      v23 = MEMORY[0x23EE5C610](v15, v9);
      v24 = *(v4 + 8);
      v24(v9, v27);
      v25 = v15;
      v26 = v27;
    }

    v24(v25, v26);
    sub_23848BBAC(v18);
    return v23 & 1;
  }

  if (EnumCaseMultiPayload == 2)
  {
    if (swift_getEnumCaseMultiPayload() != 2)
    {
      goto LABEL_13;
    }
  }

  else if (swift_getEnumCaseMultiPayload() != 3)
  {
    goto LABEL_13;
  }

  sub_23848BBAC(v18);
  v23 = 1;
  return v23 & 1;
}

uint64_t sub_23848BBAC(uint64_t a1)
{
  v2 = type metadata accessor for BankConnectAuthorizationError(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_23848BC0C()
{
  result = qword_27DF0AD68;
  if (!qword_27DF0AD68)
  {
    type metadata accessor for BankConnectAuthorizationError(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0AD68);
  }

  return result;
}

uint64_t sub_23848BC64(uint64_t a1)
{
  result = sub_238757B60();
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_23848BCCC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0AD80, &qword_238767038);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t type metadata accessor for ReturnIcon(uint64_t a1)
{
  result = qword_27DF0AD88;
  if (!qword_27DF0AD88)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_23848BDA8(uint64_t a1)
{
  sub_238438628(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

unint64_t sub_23848BE38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DF0AD98;
  if (!qword_27DF0AD98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0AD98);
  }

  return result;
}

uint64_t sub_23848BEA4()
{
  v1 = *v0;
  sub_23875F700();
  MEMORY[0x23EE641F0](v1);
  return sub_23875F760();
}

uint64_t sub_23848BF18()
{
  v1 = *v0;
  sub_23875F700();
  MEMORY[0x23EE641F0](v1);
  return sub_23875F760();
}

__n128 sub_23848BF78@<Q0>(uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = sub_23875E4A0();
  v7 = v6;
  sub_23848C07C(&v16);
  v23 = v18;
  v24 = v19;
  v25 = v20;
  v21 = v16;
  v22 = v17;
  v26[2] = v18;
  v26[3] = v19;
  v27 = v20;
  v26[0] = v16;
  v26[1] = v17;
  sub_23848C468(&v21, &v15);
  sub_23848C4D8(v26);
  v30 = v23;
  v31 = v24;
  v32 = v25;
  v28 = v21;
  v29 = v22;
  if (*v3)
  {
    v8 = 10.0;
    v9 = sub_23875D8E0();
  }

  else
  {
    v8 = 12.0;
    v9 = sub_23875D830();
  }

  v10 = v9;
  KeyPath = swift_getKeyPath(byte_238767140);
  *a2 = v5;
  *(a2 + 8) = v7;
  v12 = v31;
  *(a2 + 48) = v30;
  *(a2 + 64) = v12;
  v13 = v32;
  result = v29;
  *(a2 + 16) = v28;
  *(a2 + 32) = result;
  *(a2 + 80) = v13;
  *(a2 + 88) = KeyPath;
  *(a2 + 96) = v10;
  *(a2 + 104) = v8;
  *(a2 + 112) = v8;
  return result;
}

void sub_23848C07C(uint64_t a1@<X8>)
{
  v25 = sub_23875DFD0();
  v2 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v4 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_23875C450();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v24 - v10;
  sub_23875ED50();
  v26 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v12 = sub_23875E0D0();
  type metadata accessor for ReturnIcon(0);
  sub_2384D4E38(v11);
  (*(v6 + 104))(v8, *MEMORY[0x277CDF3C0], v5);
  v13 = sub_23875C440();
  v14 = *(v6 + 8);
  v14(v8, v5);
  v14(v11, v5);
  if (v13)
  {
    v15 = sub_23875E010();
  }

  else
  {
    v15 = sub_23875E040();
  }

  KeyPath = swift_getKeyPath(byte_238767170, v15);
  v17 = sub_23875E0D0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0ADA8, &unk_23876B470);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_238763B60;
  v19 = *MEMORY[0x277CE0EE0];
  v20 = *(v2 + 104);
  v21 = v25;
  v20(v4, v19, v25);
  *(v18 + 32) = sub_23875E090();
  v20(v4, v19, v21);
  *(v18 + 40) = sub_23875E090();
  sub_23875E560();
  sub_23875E580();
  MEMORY[0x23EE62F40](v18);
  sub_23875C740();
  v22 = v27;
  *a1 = v12;
  *(a1 + 8) = KeyPath;
  *(a1 + 16) = v24;
  *(a1 + 24) = v17;
  *(a1 + 32) = v22;
  v23 = v29;
  *(a1 + 40) = v28;
  *(a1 + 56) = v23;
}

uint64_t sub_23848C468(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0ADA0, &qword_238767138);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23848C4D8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0ADA0, &qword_238767138);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_23848C540()
{
  result = qword_27DF0ADB0;
  if (!qword_27DF0ADB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0ADB8, &qword_2387671A0);
    sub_23848C5CC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0ADB0);
  }

  return result;
}

unint64_t sub_23848C5CC()
{
  result = qword_27DF0ADC0;
  if (!qword_27DF0ADC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0ADC8, &qword_2387671A8);
    sub_23843A3E8(&qword_27DF0ADD0, &qword_27DF0ADD8, &unk_2387671B0, MEMORY[0x277CE11A8]);
    sub_23843A3E8(&qword_27DF0A420, &qword_27DF0A428, &unk_23876A910, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0ADC0);
  }

  return result;
}

void sub_23848C708(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  v6 = a3;
  v5(a2, a3);
}

uint64_t sub_23848C780(uint64_t a1, void (*a2)(char *))
{
  v4 = sub_23875E870();
  MEMORY[0x28223BE20](v4 - 8);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0AE28, &qword_2387672A8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v13 - v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0AE30, &unk_2387672B0);
  v9 = *(type metadata accessor for OrderWidgetTimelineEntry(0) - 8);
  v10 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_2387632F0;
  sub_238494F3C(a1, v11 + v10, type metadata accessor for OrderWidgetTimelineEntry);
  sub_23875E860();
  sub_238495074(&qword_27DF0ADE0, type metadata accessor for OrderWidgetTimelineEntry, &unk_23876B504);
  sub_23875E900();
  a2(v8);
  return (*(v6 + 8))(v8, v5);
}

void sub_23848C9BC(void *a1, uint64_t a2, uint64_t a3)
{
  v92 = a3;
  v91 = a2;
  v89 = type metadata accessor for OrderWidgetTimelineEntry(0);
  MEMORY[0x28223BE20](v89);
  v90 = &v69 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = sub_23875C1E0();
  v87 = *(v88 - 8);
  MEMORY[0x28223BE20](v88);
  v93 = &v69 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = type metadata accessor for OrderWidgetTimelineProvider.OrderSnapshot(0);
  v82 = *(v83 - 8);
  MEMORY[0x28223BE20](v83);
  v84 = &v69 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v81 = &v69 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0ADE8, &qword_238767268);
  MEMORY[0x28223BE20](v9 - 8);
  v100 = &v69 - v10;
  v99 = type metadata accessor for OrderWidgetTimelineProvider.OrderSnapshot.ClassicOrderSnapshot(0);
  v94 = *(v99 - 8);
  MEMORY[0x28223BE20](v99);
  v12 = &v69 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF09920, &qword_238764D80);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v69 - v14;
  v16 = sub_238759BE0();
  v86 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v18 = &v69 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v21 = (&v69 - v20);
  sub_238759C20();
  v22 = sub_238759BD0();
  v23 = sub_23875F140();
  v73 = v12;
  v72 = v18;
  v98 = v16;
  v80 = v22;
  v75 = v15;
  v76 = a1;
  v24 = v23;

  *&v102[0] = sub_238491018(v25, sub_23856C360, sub_2384910BC);
  sub_23848FC48(v102);
  v26 = *&v102[0];
  LODWORD(v27) = *&v102[0] < 0 || (*&v102[0] & 0x4000000000000000) != 0;
  v28 = v86;
  if (v27 != 1)
  {
    v29 = *(*&v102[0] + 16);
    if (v29 >= 3)
    {
      v30 = 3;
    }

    else
    {
      v30 = *(*&v102[0] + 16);
    }

    if (v29 >= v30)
    {
      goto LABEL_9;
    }

    goto LABEL_55;
  }

LABEL_47:
  v30 = sub_23875F3A0();
  if (sub_23875F3A0() < 0)
  {
    goto LABEL_56;
  }

  if (v30 >= 3)
  {
    v67 = 3;
  }

  else
  {
    v67 = v30;
  }

  if (v30 >= 0)
  {
    v30 = v67;
  }

  else
  {
    v30 = 3;
  }

  if (sub_23875F3A0() < v30)
  {
LABEL_55:
    __break(1u);
LABEL_56:
    __break(1u);

    __break(1u);
LABEL_57:
    v101[0] = 0;
    v101[1] = 0xE000000000000000;
    sub_23875F470();
    MEMORY[0x23EE63650](0xD000000000000017, 0x8000000238787700);
    v68 = v72;
    sub_238759BF0();
    sub_23875F510();
    (*(v86 + 8))(v68, v30);
    sub_23875F520();
    __break(1u);
    return;
  }

LABEL_9:
  if ((v26 & 0xC000000000000001) != 0)
  {

    if (v30)
    {
      sub_23875F480();
      if (v30 != 1)
      {
        sub_23875F480();
        if (v30 != 2)
        {
          sub_23875F480();
        }
      }
    }
  }

  else
  {
  }

  if (v27)
  {
    v31 = sub_23875F540();
    v97 = v32;
    v34 = v33;
    v36 = v35;

    v37 = v31;
    v30 = v36 >> 1;
  }

  else
  {
    v34 = 0;
    v97 = (v26 + 32);
    v37 = v26;
  }

  v74 = v27;
  v78 = v26;
  v79 = v24;
  v77 = v37;
  swift_unknownObjectRetain();
  if (v34 == v30)
  {
    v85 = MEMORY[0x277D84F90];
  }

  else
  {
    v96 = (v28 + 88);
    v95 = *MEMORY[0x277CC7C50];
    v39 = (v28 + 96);
    v94 += 6;
    v70 = *MEMORY[0x277CC7C58];
    v85 = MEMORY[0x277D84F90];
    v71 = v30 - 1;
    v40 = v34;
    while (2)
    {
      v28 = v40;
      while (1)
      {
        if (v40 < v34 || v28 >= v30)
        {
          __break(1u);
          goto LABEL_47;
        }

        v24 = v34;
        v41 = v30;
        v26 = *&v97[8 * v28];
        sub_238759BF0();
        v30 = v98;
        v42 = (*v96)(v21, v98);
        if (v42 != v95)
        {
          break;
        }

        (*v39)(v21, v30);
        v43 = *v21;
        v27 = v100;
        sub_23848D830(*v21, v100);
        if ((*v94)(v27, 1, v99) != 1)
        {
          v54 = v27;
          v55 = v73;
          sub_2384925EC(v54, v73, type metadata accessor for OrderWidgetTimelineProvider.OrderSnapshot.ClassicOrderSnapshot);
          sub_238494F3C(v55, v81, type metadata accessor for OrderWidgetTimelineProvider.OrderSnapshot.ClassicOrderSnapshot);
          swift_storeEnumTagMultiPayload();
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v85 = sub_238498214(0, v85[2] + 1, 1, v85);
          }

          v52 = v85[2];
          v56 = v85[3];
          v69 = v52 + 1;
          if (v52 >= v56 >> 1)
          {
            v85 = sub_238498214((v56 > 1), v69, 1, v85);
          }

          sub_238492654(v55, type metadata accessor for OrderWidgetTimelineProvider.OrderSnapshot.ClassicOrderSnapshot);
          v53 = v81;
          v27 = v69;
          goto LABEL_42;
        }

        ++v28;

        sub_238439884(v27, &qword_27DF0ADE8, &qword_238767268);
        v30 = v41;
        v44 = v41 == v28;
        v34 = v24;
        if (v44)
        {
          goto LABEL_20;
        }
      }

      if (v42 != v70)
      {
        goto LABEL_57;
      }

      (*v39)(v21, v30);
      v45 = *v21;
      sub_238491EEC(*v21, v102);
      v46 = v102[3];
      v47 = *v103;
      v48 = v84;
      *(v84 + 4) = v102[4];
      v48[5] = v47;
      *(v48 + 92) = *&v103[12];
      v49 = v102[1];
      v50 = v102[2];
      *v48 = v102[0];
      v48[1] = v49;
      v48[2] = v50;
      v48[3] = v46;
      swift_storeEnumTagMultiPayload();
      sub_238492584(v102, v101);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v85 = sub_238498214(0, v85[2] + 1, 1, v85);
      }

      v52 = v85[2];
      v51 = v85[3];
      v27 = v52 + 1;
      if (v52 >= v51 >> 1)
      {
        v85 = sub_238498214((v51 > 1), v52 + 1, 1, v85);
      }

      sub_2384925BC(v102);
      v53 = v84;
LABEL_42:
      v57 = v85;
      v85[2] = v27;
      sub_2384925EC(v53, v57 + ((*(v82 + 80) + 32) & ~*(v82 + 80)) + *(v82 + 72) * v52, type metadata accessor for OrderWidgetTimelineProvider.OrderSnapshot);
      v40 = v28 + 1;
      v30 = v41;
      v34 = v24;
      if (v71 != v28)
      {
        continue;
      }

      break;
    }
  }

LABEL_20:

  swift_unknownObjectRelease_n();
  if (v74)
  {
    v38 = sub_23875F3A0();
  }

  else
  {
    v38 = *(v78 + 16);
  }

  v58 = v92;
  v59 = v91;
  v60 = v76;
  v61 = v75;
  v62 = v80;

  v63 = sub_23875ED80();
  (*(*(v63 - 8) + 56))(v61, 1, 1, v63);
  v64 = swift_allocObject();
  v64[2] = 0;
  v64[3] = 0;
  v65 = v85;
  v64[4] = v60;
  v64[5] = v65;
  v64[6] = v38;
  v64[7] = v59;
  v64[8] = v58;
  v66 = v60;

  sub_2386C3BA4(0, 0, v61, &unk_238767278, v64);
}

void sub_23848D830(void *a1@<X0>, uint64_t a2@<X8>)
{
  v141 = sub_2387598F0();
  v147 = *(v141 - 8);
  MEMORY[0x28223BE20](v141);
  v117 = &v105 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v121 = sub_23875AE50();
  v119 = *(v121 - 8);
  MEMORY[0x28223BE20](v121);
  v120 = &v105 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v118 = &v105 - v8;
  v9 = sub_2387590C0();
  v135 = *(v9 - 8);
  v136 = v9;
  MEMORY[0x28223BE20](v9);
  v134 = &v105 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_23875BE40();
  MEMORY[0x28223BE20](v11 - 8);
  v133 = &v105 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_23875BE20();
  MEMORY[0x28223BE20](v13 - 8);
  v132 = &v105 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_23875BD20();
  MEMORY[0x28223BE20](v15 - 8);
  v131 = &v105 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_2387595E0();
  MEMORY[0x28223BE20](v17 - 8);
  v128 = &v105 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v125 = sub_23875B1B0();
  v124 = *(v125 - 8);
  MEMORY[0x28223BE20](v125);
  v123 = &v105 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_23875AF90();
  v139 = *(v20 - 8);
  v140 = v20;
  MEMORY[0x28223BE20](v20);
  v146 = &v105 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_23875A710();
  v137 = *(v22 - 8);
  v138 = v22;
  MEMORY[0x28223BE20](v22);
  v145 = &v105 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v130 = sub_23875B0A0();
  v129 = *(v130 - 8);
  MEMORY[0x28223BE20](v130);
  v144 = &v105 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_23875BC40();
  MEMORY[0x28223BE20](v25 - 8);
  v127 = sub_2387590B0();
  v126 = *(v127 - 8);
  MEMORY[0x28223BE20](v127);
  v143 = &v105 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09F38, &qword_238764DC0);
  MEMORY[0x28223BE20](v27 - 8);
  v142 = &v105 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v31 = (&v105 - v30);
  MEMORY[0x28223BE20](v32);
  v34 = (&v105 - v33);
  MEMORY[0x28223BE20](v35);
  v37 = &v105 - v36;
  MEMORY[0x28223BE20](v38);
  v40 = &v105 - v39;
  v42 = MEMORY[0x28223BE20](v41);
  v44 = &v105 - v43;
  v122 = a1;
  v45 = [a1 ecommerceOrderContent];
  if (!v45)
  {
    v49 = type metadata accessor for OrderWidgetTimelineProvider.OrderSnapshot.ClassicOrderSnapshot(0);
    (*(*(v49 - 8) + 56))(a2, 1, 1, v49);
    return;
  }

  v46 = v45;
  v114 = a2;
  sub_23875A4D0();
  v47 = sub_2384915BC(v46, v44);
  if (v2)
  {
    sub_238439884(v44, &qword_27DF09F38, &qword_238764DC0);

    return;
  }

  v110 = v47;
  v111 = v48;
  v112 = 0;
  v113 = v44;
  sub_238494FB0(v44, v40);
  v50 = v147;
  v51 = *(v147 + 48);
  v52 = v141;
  v116 = v147 + 48;
  v115 = v51;
  if (v51(v40, 1, v141) == 1)
  {
    sub_238439884(v40, &qword_27DF09F38, &qword_238764DC0);
    sub_23875A5A0();
  }

  else
  {
    sub_2387598E0();
    (*(v50 + 8))(v40, v52);
  }

  v53 = [v46 createdDate];
  sub_23875BBE0();

  sub_2387590A0();
  v54 = v113;
  sub_238494FB0(v113, v37);
  v55 = v122;
  v56 = v46;
  v57 = v54;
  v58 = v56;
  sub_23875B080();
  sub_238494FB0(v54, v34);
  v59 = v52;
  if (v115(v34, 1, v52) == 1)
  {
    sub_238439884(v34, &qword_27DF09F38, &qword_238764DC0);
    v122 = 0;
    v109 = 0;
    v60 = v147;
  }

  else
  {
    v60 = v147;
    if ((*(v147 + 88))(v34, v52) == *MEMORY[0x277CC7B30])
    {
      (*(v60 + 96))(v34, v52);
      v61 = *v34;
      v122 = sub_238759900();
      v109 = v62;
      v63 = (v61 & 0x7FFFFFFFFFFFFFFFLL);
      v60 = v147;
      v59 = v141;
    }

    else
    {
      (*(v60 + 8))(v34, v52);
      v122 = 0;
      v109 = 0;
    }
  }

  v64 = v144;
  sub_238494FB0(v57, v31);
  if (v115(v31, 1, v59) == 1)
  {
    sub_238439884(v31, &qword_27DF09F38, &qword_238764DC0);
  }

  else
  {
    if ((*(v60 + 88))(v31, v59) == *MEMORY[0x277CC7B38])
    {
      (*(v60 + 96))(v31, v59);
      v65 = *v31;
      v66 = [*v31 returnIdentifier];
      v144 = sub_23875EA80();
      v141 = v67;

      goto LABEL_19;
    }

    (*(v60 + 8))(v31, v59);
  }

  v144 = 0;
  v141 = 0;
LABEL_19:
  v106 = v58;
  sub_238757D40();
  sub_238757DA0();
  v68 = [v58 merchant];
  v69 = [v68 displayName];

  v108 = sub_2387586A0();
  v107 = v70;

  sub_23875BCC0();
  sub_23875BDB0();
  sub_23875BE30();
  sub_2387595B0();
  v71 = v123;
  sub_23875B1A0();
  sub_238495074(&qword_27DF0A050, MEMORY[0x277CC8560], MEMORY[0x277CC8558]);
  v72 = v125;
  sub_23875B090();
  v73 = (*(v124 + 8))(v71, v72);
  v125 = v150;
  v124 = v151;
  sub_238495020(v73, v74, v75);
  sub_23875B090();
  v123 = v152;
  sub_23875BCC0();
  sub_23875BDB0();
  sub_23875BE30();
  sub_2387595B0();
  v76 = v134;
  sub_238759020();
  sub_238495074(&qword_27DF0ADF8, MEMORY[0x277CC7708], MEMORY[0x277CC7700]);
  v77 = v143;
  v78 = v136;
  sub_238759950();
  (*(v135 + 8))(v76, v78);
  v80 = v148;
  v79 = v149;
  v81 = v113;
  v82 = v142;
  sub_238494FB0(v113, v142);
  v83 = v115(v82, 1, v59);
  if (v83 != 1)
  {
    v136 = v80;
    v86 = v79;
    v87 = v147;
    (*(v147 + 16))(v117, v82, v59);
    v88 = v118;
    sub_23875AE40();

    (*(v129 + 8))(v64, v130);
    (*(v126 + 8))(v77, v127);
    sub_238439884(v81, &qword_27DF09F38, &qword_238764DC0);
    v89 = v119;
    v90 = v120;
    v91 = v121;
    (*(v119 + 32))(v120, v88, v121);
    v92 = (*(v89 + 88))(v90, v91);
    v84 = 1128792064;
    if (v92 == *MEMORY[0x277CC84A0])
    {
      v85 = v114;
    }

    else
    {
      v85 = v114;
      if (v92 != *MEMORY[0x277CC84A8])
      {
        v79 = v86;
        if (v92 != *MEMORY[0x277CC84B8])
        {
          (*(v89 + 8))(v120, v121);
          v84 = 1065353216;
        }

        goto LABEL_27;
      }
    }

    v79 = v86;
LABEL_27:
    (*(v87 + 8))(v142, v59);
    v80 = v136;
    goto LABEL_28;
  }

  (*(v129 + 8))(v64, v130);
  (*(v126 + 8))(v77, v127);
  sub_238439884(v81, &qword_27DF09F38, &qword_238764DC0);
  sub_238439884(v82, &qword_27DF09F38, &qword_238764DC0);
  v84 = 0;
  v85 = v114;
LABEL_28:
  (*(v137 + 32))(v85, v145, v138);
  v93 = type metadata accessor for OrderWidgetTimelineProvider.OrderSnapshot.ClassicOrderSnapshot(0);
  v94 = (v85 + v93[5]);
  v95 = v109;
  *v94 = v122;
  v94[1] = v95;
  v96 = (v85 + v93[6]);
  v97 = v140;
  v98 = v141;
  *v96 = v144;
  v96[1] = v98;
  (*(v139 + 32))(v85 + v93[7], v146, v97);
  *(v85 + v93[8]) = v110;
  *(v85 + v93[9]) = v111;
  v99 = (v85 + v93[10]);
  v100 = v107;
  *v99 = v108;
  v99[1] = v100;
  v101 = (v85 + v93[11]);
  v102 = v124;
  *v101 = v125;
  v101[1] = v102;
  *(v85 + v93[12]) = v123;
  v103 = (v85 + v93[13]);
  *v103 = v80;
  v103[1] = v79;
  v104 = v85 + v93[14];
  *v104 = v84;
  *(v104 + 4) = v83 == 1;
  (*(*(v93 - 1) + 56))(v85, 0, 1, v93);
}

uint64_t sub_23848E8F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[3] = a7;
  v8[4] = a8;
  v8[2] = a6;
  v8[5] = type metadata accessor for OrderWidgetTimelineEntry.ExtractedOrderData(0);
  v8[6] = swift_task_alloc();
  v8[7] = type metadata accessor for OrderWidgetTimelineEntry.ClassicOrderData(0);
  v8[8] = swift_task_alloc();
  v10 = type metadata accessor for OrderWidgetTimelineEntry.WidgetOrderData(0);
  v8[9] = v10;
  v8[10] = *(v10 - 8);
  v8[11] = swift_task_alloc();
  v8[12] = swift_task_alloc();
  v8[13] = type metadata accessor for OrderWidgetTimelineEntry(0);
  v8[14] = swift_task_alloc();
  v11 = swift_task_alloc();
  v8[15] = v11;
  *v11 = v8;
  v11[1] = sub_23848EAA0;

  return sub_238492CDC(a5);
}

uint64_t sub_23848EAA0(uint64_t a1)
{
  *(*v1 + 128) = a1;

  return MEMORY[0x2822009F8](sub_23848EBA0, 0, 0);
}

uint64_t sub_23848EBA0(uint64_t a1)
{
  v2 = v1[16];
  if (*(v2 + 16))
  {
    v3 = v1[11];
    v4 = v1[12];
    v5 = *(v1[10] + 80);
    sub_238494F3C(v2 + ((v5 + 32) & ~v5), v4, type metadata accessor for OrderWidgetTimelineEntry.WidgetOrderData);
    sub_238494F3C(v4, v3, type metadata accessor for OrderWidgetTimelineEntry.WidgetOrderData);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 1)
    {
      v7 = 6;
    }

    else
    {
      v7 = 8;
    }

    if (EnumCaseMultiPayload == 1)
    {
      v8 = type metadata accessor for OrderWidgetTimelineEntry.ExtractedOrderData;
    }

    else
    {
      v8 = type metadata accessor for OrderWidgetTimelineEntry.ClassicOrderData;
    }

    if (EnumCaseMultiPayload == 1)
    {
      v9 = type metadata accessor for OrderWidgetTimelineEntry.ExtractedOrderData;
    }

    else
    {
      v9 = type metadata accessor for OrderWidgetTimelineEntry.ClassicOrderData;
    }

    v10 = v1[v7];
    sub_2384925EC(v1[11], v10, v8);
    sub_238492654(v10, v9);
    sub_238492654(v1[12], type metadata accessor for OrderWidgetTimelineEntry.WidgetOrderData);
    v2 = v1[16];
  }

  v12 = v1[13];
  v11 = v1[14];
  v13 = v1[3];
  v14 = v1[2];
  sub_23875BC30();
  *v11 = v2;
  *&v11[*(v12 + 24)] = v14;
  v15 = *(v12 + 28);
  sub_23875E890();
  v16 = sub_23875E8A0();
  (*(*(v16 - 8) + 56))(&v11[v15], 0, 1, v16);
  v13(v11);
  sub_238492654(v11, type metadata accessor for OrderWidgetTimelineEntry);

  v17 = v1[1];

  return v17();
}

uint64_t sub_23848EE34@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v3 = sub_2387598E0();
  v4 = v3;
  v5 = v3 & 0xFFFFFFFFFFFFFF8;
  if (!(v3 >> 62))
  {
    v6 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v6)
    {
      goto LABEL_3;
    }

LABEL_23:
    v25 = MEMORY[0x277D84F90];
    goto LABEL_24;
  }

LABEL_22:
  v6 = sub_23875F3A0();
  if (!v6)
  {
    goto LABEL_23;
  }

LABEL_3:
  v7 = 0;
  v25 = MEMORY[0x277D84F90];
  do
  {
    v8 = v7;
    while (1)
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x23EE63F70](v8, v4);
        v7 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
          goto LABEL_20;
        }
      }

      else
      {
        if (v8 >= *(v5 + 16))
        {
          goto LABEL_21;
        }

        v9 = *(v4 + 8 * v8 + 32);
        v7 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
LABEL_20:
          __break(1u);
LABEL_21:
          __break(1u);
          goto LABEL_22;
        }
      }

      v10 = v9;
      v11 = [v10 image];
      if (v11)
      {
        break;
      }

      ++v8;
      if (v7 == v6)
      {
        goto LABEL_24;
      }
    }

    v23 = v2;
    v12 = v11;
    v13 = sub_23875EA80();
    v22 = v14;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v25 = sub_238497C2C(0, *(v25 + 2) + 1, 1, v25);
    }

    v16 = *(v25 + 2);
    v15 = *(v25 + 3);
    if (v16 >= v15 >> 1)
    {
      v25 = sub_238497C2C((v15 > 1), v16 + 1, 1, v25);
    }

    *(v25 + 2) = v16 + 1;
    v17 = &v25[16 * v16];
    v2 = v23;
    *(v17 + 4) = v13;
    *(v17 + 5) = v22;
  }

  while (v7 != v6);
LABEL_24:

  v19 = v25;
  if (*(v25 + 2) >= 5uLL)
  {
    sub_23852EE64(v25, (v25 + 32), 0, 9uLL);
    v21 = v20;

    v19 = v21;
  }

  *a1 = v19;
  return result;
}

float sub_23848F038()
{
  v1 = sub_2387580D0();
  v44 = *(v1 - 8);
  v45 = v1;
  MEMORY[0x28223BE20](v1);
  v43 = &v42 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_23875ABE0();
  MEMORY[0x28223BE20](v3 - 8);
  v46 = &v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_23875BE40();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_23875BE20();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = sub_23875AE50();
  v47 = *(v49 - 8);
  MEMORY[0x28223BE20](v49);
  v48 = &v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v42 - v15;
  v18 = MEMORY[0x28223BE20](v17);
  v20 = &v42 - v19;
  v42 = v0;
  v21 = [v0 orderContent];
  sub_23875BDB0();
  sub_23875BE30();
  v22 = sub_23875A5F0();

  (*(v6 + 8))(v8, v5);
  (*(v10 + 8))(v12, v9);
  v23 = MEMORY[0x277CC84B8];
  if (!v22)
  {
    v27 = v16;
    v28 = v20;
    v24 = v47;
    v29 = [v42 orderContent];
    v30 = v43;
    sub_23875A5B0();

    v32 = v44;
    v31 = v45;
    v33 = (*(v44 + 88))(v30, v45);
    if (v33 == *MEMORY[0x277CC6DF0])
    {
      v34 = v16;
      v35 = v16;
      v26 = v49;
      (*(v24 + 104))(v35, *MEMORY[0x277CC84B0], v49);
      v25 = v48;
LABEL_12:
      v39 = *(v24 + 32);
      v39(v28, v34, v26);
      v39(v25, v28, v26);
      goto LABEL_13;
    }

    v25 = v48;
    v26 = v49;
    v34 = v27;
    if (v33 == *MEMORY[0x277CC6DE0])
    {
      v36 = MEMORY[0x277CC84B0];
    }

    else
    {
      if (v33 != *MEMORY[0x277CC6DD8])
      {
        if (v33 != *MEMORY[0x277CC6DF8])
        {
          v38 = *(v24 + 104);
          if (v33 != *MEMORY[0x277CC6DE8])
          {
            v38(v27, *MEMORY[0x277CC84B0], v49);
            (*(v32 + 8))(v30, v31);
            goto LABEL_12;
          }

          v37 = *v23;
          goto LABEL_11;
        }

        v37 = *v23;
LABEL_10:
        v38 = *(v24 + 104);
LABEL_11:
        v38(v27, v37, v49);
        goto LABEL_12;
      }

      v36 = MEMORY[0x277CC8498];
    }

    v37 = *v36;
    goto LABEL_10;
  }

  sub_23875ABF0();
  sub_23875AE60();

  v24 = v47;
  v25 = v48;
  v26 = v49;
  (*(v47 + 32))(v48, v20, v49);
LABEL_13:
  v40 = (*(v24 + 88))(v25, v26);
  result = 200.0;
  if (v40 != *MEMORY[0x277CC84A0] && v40 != *MEMORY[0x277CC84A8] && v40 != *v23)
  {
    (*(v24 + 8))(v25, v26, 200.0);
    return 1.0;
  }

  return result;
}

void sub_23848F5D4(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09BC8, &unk_2387645D0);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = aBlock - v8;
  v10 = sub_23875EA50();
  (*(v7 + 16))(v9, a1, v6);
  v11 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v12 = swift_allocObject();
  (*(v7 + 32))(v12 + v11, v9, v6);
  aBlock[4] = sub_23845B2A4;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_23848C708;
  aBlock[3] = &block_descriptor_19;
  v13 = _Block_copy(aBlock);

  [a2 getPKCategoryForDomain:v10 completion:v13];
  _Block_release(v13);
}

uint64_t sub_23848F7A4@<X0>(char *a1@<X8>)
{
  v2 = type metadata accessor for OrderWidgetTimelineEntry(0);
  sub_23875BC30();
  *a1 = MEMORY[0x277D84F90];
  *&a1[*(v2 + 24)] = 0;
  v3 = *(v2 + 28);
  sub_23875E890();
  v4 = sub_23875E8A0();
  v5 = *(*(v4 - 8) + 56);

  return v5(&a1[v3], 0, 1, v4);
}

void sub_23848F850(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *v3;
  v7 = swift_allocObject();
  v7[2] = v6;
  v7[3] = a2;
  v7[4] = a3;
  v10[4] = sub_238495530;
  v10[5] = v7;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 1107296256;
  v10[2] = sub_238461548;
  v10[3] = &block_descriptor_26;
  v8 = _Block_copy(v10);
  v9 = v6;

  [v9 performBlock_];
  _Block_release(v8);
}

double sub_23848F940(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *v3;
  v7 = swift_allocObject();
  *(v7 + 16) = a2;
  *(v7 + 24) = a3;
  v8 = swift_allocObject();
  v8[2] = v6;
  v8[3] = sub_23848FBDC;
  v8[4] = v7;
  v12[4] = sub_23848FBE4;
  v12[5] = v8;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 1107296256;
  v12[2] = sub_238461548;
  v12[3] = &block_descriptor_3;
  v9 = _Block_copy(v12);

  v10 = v6;

  [v10 performBlock_];
  _Block_release(v9);

  return result;
}

uint64_t sub_23848FA74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_2384494A4;

  return MEMORY[0x282136270](a1, a2, a3);
}

uint64_t sub_23848FB28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_238449A7C;

  return MEMORY[0x282136278](a1, a2, a3);
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_23848FC48(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_238400C00(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_23848FCC4(v6);
  return sub_23875F4D0();
}

void sub_23848FCC4(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_23875F5E0();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        sub_238759C20();
        v6 = sub_23875ECA0();
        *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = v5;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFF8;
      v8[0] = (v6 & 0xFFFFFFFFFFFFFF8) + 32;
      v8[1] = v5;
      sub_238490060(v8, v9, a1, v4);
      *(v7 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_23848FDC8(0, v2, 1, a1);
  }
}

void sub_23848FDC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v39 = sub_23875BC40();
  v8 = *(v39 - 8);
  MEMORY[0x28223BE20](v39);
  v38 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = sub_23875AD10();
  MEMORY[0x28223BE20](v37);
  v36 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v14 = &v30 - v13;
  v31 = a2;
  if (a3 != a2)
  {
    v15 = *a4;
    v35 = (v8 + 8);
    v16 = (v12 + 8);
    v40 = v15;
    v17 = v15 + 8 * a3 - 8;
    v18 = a1 - a3;
LABEL_5:
    v33 = v17;
    v34 = a3;
    v19 = *(v40 + 8 * a3);
    v32 = v18;
    while (1)
    {
      v20 = *v17;
      v21 = v19;
      v22 = v20;
      sub_238759C10();
      v23 = v36;
      sub_238759C10();
      v24 = v38;
      sub_23875BBF0();
      LOBYTE(v20) = sub_23875AD00();
      (*v35)(v24, v39);
      v25 = *v16;
      v26 = v23;
      v27 = v37;
      (*v16)(v26, v37);
      v25(v14, v27);

      if ((v20 & 1) == 0)
      {
LABEL_4:
        a3 = v34 + 1;
        v17 = v33 + 8;
        v18 = v32 - 1;
        if (v34 + 1 == v31)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v40)
      {
        break;
      }

      v28 = *v17;
      v19 = *(v17 + 8);
      *v17 = v19;
      *(v17 + 8) = v28;
      v17 -= 8;
      if (__CFADD__(v18++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

void sub_238490060(int64_t *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v5 = v4;
  v115 = a1;
  v127 = sub_23875BC40();
  v8 = *(v127 - 8);
  MEMORY[0x28223BE20](v127);
  v126 = &v110 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v125 = sub_23875AD10();
  MEMORY[0x28223BE20](v125);
  v124 = &v110 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v123 = &v110 - v13;
  v14 = a3[1];
  if (v14 < 1)
  {
    v16 = MEMORY[0x277D84F90];
LABEL_88:
    v17 = *v115;
    if (!*v115)
    {
      goto LABEL_126;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_120:
      v16 = sub_238490ED4(v16);
    }

    v128 = v16;
    v105 = *(v16 + 16);
    if (v105 >= 2)
    {
      while (*a3)
      {
        v106 = *(v16 + 16 * v105);
        v107 = v16;
        v108 = *(v16 + 16 * (v105 - 1) + 32);
        v16 = *(v16 + 16 * (v105 - 1) + 40);
        sub_238490948((*a3 + 8 * v106), (*a3 + 8 * v108), (*a3 + 8 * v16), v17);
        if (v5)
        {
          goto LABEL_98;
        }

        if (v16 < v106)
        {
          goto LABEL_113;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v107 = sub_238490ED4(v107);
        }

        if (v105 - 2 >= *(v107 + 2))
        {
          goto LABEL_114;
        }

        v109 = &v107[16 * v105];
        *v109 = v106;
        *(v109 + 1) = v16;
        v128 = v107;
        sub_238490E48(v105 - 1);
        v16 = v128;
        v105 = *(v128 + 16);
        if (v105 <= 1)
        {
          goto LABEL_98;
        }
      }

      goto LABEL_124;
    }

LABEL_98:

    return;
  }

  v110 = a4;
  v15 = 0;
  v121 = (v12 + 8);
  v122 = (v8 + 8);
  v16 = MEMORY[0x277D84F90];
  v111 = a3;
  while (1)
  {
    v17 = v15++;
    if (v15 < v14)
    {
      v112 = v16;
      v114 = v5;
      v18 = *a3;
      v19 = *(*a3 + 8 * v15);
      v20 = v17;
      v116 = 8 * v17;
      v21 = (v18 + 8 * v17);
      v23 = *v21;
      v22 = v21 + 2;
      v24 = v19;
      v113 = v23;
      v16 = v123;
      sub_238759C10();
      v25 = v124;
      sub_238759C10();
      v26 = v126;
      sub_23875BBF0();
      LODWORD(v120) = sub_23875AD00();
      v119 = *v122;
      v119(v26, v127);
      v27 = *v121;
      v28 = v125;
      (*v121)(v25, v125);
      v118 = v27;
      v27(v16, v28);

      v113 = v20;
      v29 = v20 + 2;
      v117 = v14;
      while (v14 != v29)
      {
        v30 = *(v22 - 1);
        v31 = *v22;
        v32 = v30;
        v33 = v123;
        sub_238759C10();
        v34 = v124;
        sub_238759C10();
        v35 = v126;
        sub_23875BBF0();
        LODWORD(v30) = sub_23875AD00() & 1;
        v119(v35, v127);
        v16 = v125;
        v36 = v118;
        v118(v34, v125);
        v36(v33, v16);
        v14 = v117;

        ++v29;
        ++v22;
        if ((v120 & 1) != v30)
        {
          v14 = (v29 - 1);
          break;
        }
      }

      v17 = v113;
      v5 = v114;
      a3 = v111;
      v37 = v116;
      if ((v120 & 1) == 0)
      {
        goto LABEL_18;
      }

      if (v14 < v113)
      {
        goto LABEL_117;
      }

      if (v113 < v14)
      {
        v38 = 8 * v14 - 8;
        v39 = v14;
        v40 = v113;
        v16 = v112;
        do
        {
          if (v40 != --v39)
          {
            v42 = *a3;
            if (!*a3)
            {
              goto LABEL_123;
            }

            v41 = *(v42 + v37);
            *(v42 + v37) = *(v42 + v38);
            *(v42 + v38) = v41;
          }

          ++v40;
          v38 -= 8;
          v37 += 8;
        }

        while (v40 < v39);
        v15 = v14;
      }

      else
      {
LABEL_18:
        v15 = v14;
        v16 = v112;
      }
    }

    v43 = a3[1];
    if (v15 < v43)
    {
      if (__OFSUB__(v15, v17))
      {
        goto LABEL_116;
      }

      if (v15 - v17 < v110)
      {
        v44 = v17 + v110;
        if (__OFADD__(v17, v110))
        {
          goto LABEL_118;
        }

        if (v44 >= v43)
        {
          v44 = a3[1];
        }

        if (v44 < v17)
        {
LABEL_119:
          __break(1u);
          goto LABEL_120;
        }

        if (v15 != v44)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v15 < v17)
    {
      goto LABEL_115;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v16 = sub_238490EE8(0, *(v16 + 16) + 1, 1, v16);
    }

    v60 = *(v16 + 16);
    v59 = *(v16 + 24);
    v61 = v60 + 1;
    if (v60 >= v59 >> 1)
    {
      v16 = sub_238490EE8((v59 > 1), v60 + 1, 1, v16);
    }

    *(v16 + 16) = v61;
    v62 = v16 + 16 * v60;
    *(v62 + 32) = v17;
    *(v62 + 40) = v15;
    v63 = *v115;
    if (!*v115)
    {
      goto LABEL_125;
    }

    if (v60)
    {
      while (1)
      {
        v17 = v61 - 1;
        if (v61 >= 4)
        {
          break;
        }

        if (v61 == 3)
        {
          v64 = *(v16 + 32);
          v65 = *(v16 + 40);
          v74 = __OFSUB__(v65, v64);
          v66 = v65 - v64;
          v67 = v74;
LABEL_57:
          if (v67)
          {
            goto LABEL_104;
          }

          v80 = (v16 + 16 * v61);
          v82 = *v80;
          v81 = v80[1];
          v83 = __OFSUB__(v81, v82);
          v84 = v81 - v82;
          v85 = v83;
          if (v83)
          {
            goto LABEL_107;
          }

          v86 = (v16 + 32 + 16 * v17);
          v88 = *v86;
          v87 = v86[1];
          v74 = __OFSUB__(v87, v88);
          v89 = v87 - v88;
          if (v74)
          {
            goto LABEL_110;
          }

          if (__OFADD__(v84, v89))
          {
            goto LABEL_111;
          }

          if (v84 + v89 >= v66)
          {
            if (v66 < v89)
            {
              v17 = v61 - 2;
            }

            goto LABEL_78;
          }

          goto LABEL_71;
        }

        v90 = (v16 + 16 * v61);
        v92 = *v90;
        v91 = v90[1];
        v74 = __OFSUB__(v91, v92);
        v84 = v91 - v92;
        v85 = v74;
LABEL_71:
        if (v85)
        {
          goto LABEL_106;
        }

        v93 = v16 + 16 * v17;
        v95 = *(v93 + 32);
        v94 = *(v93 + 40);
        v74 = __OFSUB__(v94, v95);
        v96 = v94 - v95;
        if (v74)
        {
          goto LABEL_109;
        }

        if (v96 < v84)
        {
          goto LABEL_3;
        }

LABEL_78:
        v101 = v17 - 1;
        if (v17 - 1 >= v61)
        {
          __break(1u);
LABEL_100:
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
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
          goto LABEL_119;
        }

        if (!*a3)
        {
          goto LABEL_122;
        }

        v102 = *(v16 + 32 + 16 * v101);
        v103 = *(v16 + 32 + 16 * v17 + 8);
        sub_238490948((*a3 + 8 * v102), (*a3 + 8 * *(v16 + 32 + 16 * v17)), (*a3 + 8 * v103), v63);
        if (v5)
        {
          goto LABEL_98;
        }

        if (v103 < v102)
        {
          goto LABEL_100;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v16 = sub_238490ED4(v16);
        }

        if (v101 >= *(v16 + 16))
        {
          goto LABEL_101;
        }

        v104 = v16 + 16 * v101;
        *(v104 + 32) = v102;
        *(v104 + 40) = v103;
        v128 = v16;
        sub_238490E48(v17);
        v16 = v128;
        v61 = *(v128 + 16);
        if (v61 <= 1)
        {
          goto LABEL_3;
        }
      }

      v68 = v16 + 32 + 16 * v61;
      v69 = *(v68 - 64);
      v70 = *(v68 - 56);
      v74 = __OFSUB__(v70, v69);
      v71 = v70 - v69;
      if (v74)
      {
        goto LABEL_102;
      }

      v73 = *(v68 - 48);
      v72 = *(v68 - 40);
      v74 = __OFSUB__(v72, v73);
      v66 = v72 - v73;
      v67 = v74;
      if (v74)
      {
        goto LABEL_103;
      }

      v75 = (v16 + 16 * v61);
      v77 = *v75;
      v76 = v75[1];
      v74 = __OFSUB__(v76, v77);
      v78 = v76 - v77;
      if (v74)
      {
        goto LABEL_105;
      }

      v74 = __OFADD__(v66, v78);
      v79 = v66 + v78;
      if (v74)
      {
        goto LABEL_108;
      }

      if (v79 >= v71)
      {
        v97 = (v16 + 32 + 16 * v17);
        v99 = *v97;
        v98 = v97[1];
        v74 = __OFSUB__(v98, v99);
        v100 = v98 - v99;
        if (v74)
        {
          goto LABEL_112;
        }

        if (v66 < v100)
        {
          v17 = v61 - 2;
        }

        goto LABEL_78;
      }

      goto LABEL_57;
    }

LABEL_3:
    v14 = a3[1];
    if (v15 >= v14)
    {
      goto LABEL_88;
    }
  }

  v112 = v16;
  v113 = v17;
  v114 = v5;
  v120 = *a3;
  v45 = v120 + 8 * v15 - 8;
  v46 = v17 - v15;
  v116 = v44;
LABEL_30:
  v118 = v45;
  v119 = v15;
  v47 = *(v120 + 8 * v15);
  v117 = v46;
  while (1)
  {
    v48 = *v45;
    v49 = v47;
    v50 = v48;
    v51 = v123;
    sub_238759C10();
    v52 = v124;
    sub_238759C10();
    v53 = v126;
    sub_23875BBF0();
    LOBYTE(v48) = sub_23875AD00();
    (*v122)(v53, v127);
    v54 = *v121;
    v55 = v52;
    v56 = v125;
    (*v121)(v55, v125);
    v54(v51, v56);

    if ((v48 & 1) == 0)
    {
LABEL_29:
      v15 = v119 + 1;
      v45 = v118 + 8;
      v46 = v117 - 1;
      if ((v119 + 1) != v116)
      {
        goto LABEL_30;
      }

      v15 = v116;
      v17 = v113;
      v5 = v114;
      a3 = v111;
      v16 = v112;
      goto LABEL_37;
    }

    if (!v120)
    {
      break;
    }

    v57 = *v45;
    v47 = *(v45 + 8);
    *v45 = v47;
    *(v45 + 8) = v57;
    v45 -= 8;
    if (__CFADD__(v46++, 1))
    {
      goto LABEL_29;
    }
  }

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
}

uint64_t sub_238490948(id *a1, id *a2, id *a3, void **a4)
{
  v59 = sub_23875BC40();
  v51 = *(v59 - 8);
  MEMORY[0x28223BE20](v59);
  v58 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = sub_23875AD10();
  v9 = *(v57 - 8);
  MEMORY[0x28223BE20](v57);
  v56 = &v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v55 = &v47 - v12;
  v13 = a2 - a1 + 7;
  if (a2 - a1 >= 0)
  {
    v13 = a2 - a1;
  }

  v14 = v13 >> 3;
  v15 = a3 - a2 + 7;
  if (a3 - a2 >= 0)
  {
    v15 = a3 - a2;
  }

  v16 = v15 >> 3;
  if (v14 >= v15 >> 3)
  {
    if (a4 != a2 || &a2[v16] <= a4)
    {
      memmove(a4, a2, 8 * v16);
    }

    v60 = &a4[v16];
    if (a3 - a2 >= 8 && a2 > a1)
    {
      v49 = (v9 + 8);
      v50 = (v51 + 1);
      v52 = a4;
      v54 = a1;
LABEL_28:
      v48 = a2;
      v31 = a2 - 1;
      --a3;
      v32 = v60;
      v51 = a2 - 1;
      do
      {
        v33 = (a3 + 1);
        v34 = *--v32;
        v35 = *v31;
        v36 = v34;
        v37 = v35;
        v38 = v55;
        sub_238759C10();
        v39 = v56;
        sub_238759C10();
        v40 = v58;
        sub_23875BBF0();
        LODWORD(v53) = sub_23875AD00();
        (*v50)(v40, v59);
        v41 = *v49;
        v42 = v39;
        v43 = v57;
        (*v49)(v42, v57);
        v41(v38, v43);

        if (v53)
        {
          v44 = v54;
          v45 = v51;
          if (v33 != v48)
          {
            *a3 = *v51;
          }

          a4 = v52;
          if (v60 <= v52 || (a2 = v45, v45 <= v44))
          {
            a2 = v45;
            goto LABEL_39;
          }

          goto LABEL_28;
        }

        if (v33 != v60)
        {
          *a3 = *v32;
        }

        --a3;
        v60 = v32;
        v31 = v51;
      }

      while (v32 > v52);
      v60 = v32;
      a2 = v48;
      a4 = v52;
    }
  }

  else
  {
    if (a4 != a1 || &a1[v14] <= a4)
    {
      memmove(a4, a1, 8 * v14);
    }

    v60 = &a4[v14];
    if (a2 - a1 >= 8 && a2 < a3)
    {
      v50 = (v9 + 8);
      ++v51;
      v53 = a3;
      while (1)
      {
        v54 = a1;
        v17 = *a4;
        v18 = a4;
        v19 = *a2;
        v20 = v17;
        v21 = v55;
        sub_238759C10();
        v22 = v56;
        sub_238759C10();
        v23 = v58;
        sub_23875BBF0();
        v24 = sub_23875AD00();
        (*v51)(v23, v59);
        v25 = *v50;
        v26 = v22;
        v27 = v57;
        (*v50)(v26, v57);
        v25(v21, v27);

        if ((v24 & 1) == 0)
        {
          break;
        }

        v28 = a2;
        v29 = v54;
        v30 = v54 == a2++;
        a4 = v18;
        if (!v30)
        {
          goto LABEL_17;
        }

LABEL_18:
        a1 = v29 + 1;
        if (a4 >= v60 || a2 >= v53)
        {
          goto LABEL_20;
        }
      }

      v28 = v18;
      a4 = v18 + 1;
      v29 = v54;
      if (v54 == v18)
      {
        goto LABEL_18;
      }

LABEL_17:
      *v29 = *v28;
      goto LABEL_18;
    }

LABEL_20:
    a2 = a1;
  }

LABEL_39:
  if (a2 != a4 || a2 >= (a4 + ((v60 - a4 + (v60 - a4 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(a2, a4, 8 * (v60 - a4));
  }

  return 1;
}

uint64_t sub_238490E48(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_238490ED4(v3);
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

char *sub_238490EE8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0AE20, &qword_2387672A0);
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
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

unint64_t sub_238491018(unint64_t a1, uint64_t (*a2)(uint64_t, void), uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!(a1 >> 62))
  {
    return a1 & 0xFFFFFFFFFFFFFF8;
  }

  v7 = sub_23875F3A0();
  if (!v7)
  {
LABEL_7:

    return MEMORY[0x277D84F90];
  }

  v8 = v7;
  v9 = a2(v7, 0);
  a3(v9 + 32, v8, a1);
  v11 = v10;

  result = v9;
  if (v11 != v8)
  {
    __break(1u);
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_2384910BC(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_23875F3A0();
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
      result = sub_23875F3A0();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_238495148(&qword_27DF0AE18, &qword_27DF0AE10, &unk_238780E90);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0AE10, &unk_238780E90);
            v9 = sub_23856B91C(v13, i, a3);
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
        sub_238759C20();
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

uint64_t sub_23849124C(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_23875F3A0();
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
      result = sub_23875F3A0();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_238495148(&qword_27DF0AE58, &qword_27DF0AE50, &qword_2387672C0);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0AE50, &qword_2387672C0);
            v9 = sub_23856B9A4(v13, i, a3);
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
        type metadata accessor for AccountStartDateModel(0);
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

uint64_t sub_2384913DC(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_23875F3A0();
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
      result = sub_23875F3A0();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_238495148(&qword_27DF0AE48, &qword_27DF0AE40, &qword_23877FB70);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0AE40, &qword_23877FB70);
            v9 = sub_23856BA2C(v13, i, a3);
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
        sub_2384950FC();
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

uint64_t sub_2384915BC(void *a1, uint64_t a2)
{
  v79 = sub_238758350();
  v5 = *(v79 - 8);
  MEMORY[0x28223BE20](v79);
  v7 = &v74 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v76 = &v74 - v9;
  MEMORY[0x28223BE20](v10);
  v77 = &v74 - v11;
  MEMORY[0x28223BE20](v12);
  v78 = &v74 - v13;
  v14 = sub_2387598F0();
  v15 = *(v14 - 1);
  MEMORY[0x28223BE20](v14);
  v17 = &v74 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09F38, &qword_238764DC0);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = &v74 - v19;
  sub_238494FB0(a2, &v74 - v19);
  v21 = (*(v15 + 6))(v20, 1, v14);
  v81 = a1;
  if (v21 == 1)
  {
    *&v84 = v2;
  }

  else
  {
    (*(v15 + 4))(v17, v20, v14);
    sub_23848EE34(&v85);
    *&v84 = v2;
    if (v2)
    {
      goto LABEL_62;
    }

    (*(v15 + 1))(v17, v14);
    v15 = v85;
    if (v85)
    {

      v22 = v84;
      goto LABEL_33;
    }
  }

  v80 = v7;
  v23 = sub_23875A5A0();
  v24 = v23;
  v25 = v23 & 0xFFFFFFFFFFFFFF8;
  if (v23 >> 62)
  {
LABEL_27:
    v26 = sub_23875F3A0();
    v82 = v5;
    if (v26)
    {
LABEL_8:
      v27 = 0;
      v83 = MEMORY[0x277D84F90];
      v5 = &unk_278A55000;
      do
      {
        v28 = v27;
        while (1)
        {
          if ((v24 & 0xC000000000000001) != 0)
          {
            v29 = MEMORY[0x23EE63F70](v28, v24);
            v27 = v28 + 1;
            if (__OFADD__(v28, 1))
            {
              goto LABEL_25;
            }
          }

          else
          {
            if (v28 >= *(v25 + 16))
            {
              goto LABEL_26;
            }

            v29 = *(v24 + 8 * v28 + 32);
            v27 = v28 + 1;
            if (__OFADD__(v28, 1))
            {
LABEL_25:
              __break(1u);
LABEL_26:
              __break(1u);
              goto LABEL_27;
            }
          }

          v30 = v29;
          v31 = [v30 image];
          if (v31)
          {
            break;
          }

          ++v28;
          if (v27 == v26)
          {
            goto LABEL_29;
          }
        }

        v32 = v31;
        v33 = sub_23875EA80();
        v75 = v34;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v83 = sub_238497C2C(0, *(v83 + 2) + 1, 1, v83);
        }

        v36 = *(v83 + 2);
        v35 = *(v83 + 3);
        if (v36 >= v35 >> 1)
        {
          v83 = sub_238497C2C((v35 > 1), v36 + 1, 1, v83);
        }

        v37 = v83;
        *(v83 + 2) = v36 + 1;
        v38 = &v37[16 * v36];
        v39 = v75;
        *(v38 + 4) = v33;
        *(v38 + 5) = v39;
      }

      while (v27 != v26);
      goto LABEL_29;
    }
  }

  else
  {
    v26 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v82 = v5;
    if (v26)
    {
      goto LABEL_8;
    }
  }

  v83 = MEMORY[0x277D84F90];
LABEL_29:

  v15 = v83;
  a1 = v81;
  if (*(v83 + 2) < 5uLL)
  {
  }

  else
  {
    sub_23852EE64(v83, (v83 + 32), 0, 9uLL);
    v41 = v40;

    v15 = v41;
  }

  v5 = v82;
  v7 = v80;
  v22 = v84;

LABEL_33:
  v42 = objc_opt_self();
  v43 = [v42 preferredLanguages];
  v44 = sub_23875EC80();

  v45 = sub_23875A560();
  v46 = v22;
  if (v22)
  {

LABEL_57:

    return v44;
  }

  v47 = v45;

  v48 = v47;
  if (v47 >> 62)
  {
    v17 = sub_23875F3A0();
    v48 = v47;
    if (v17)
    {
      goto LABEL_37;
    }

LABEL_50:

    v44 = MEMORY[0x277D84F90];
    goto LABEL_51;
  }

  v17 = *((v47 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v17)
  {
    goto LABEL_50;
  }

LABEL_37:
  *&v84 = v48;
  v85 = MEMORY[0x277D84F90];
  v14 = &v85;
  sub_2385FE810(0, v17 & ~(v17 >> 63), 0);
  if ((v17 & 0x8000000000000000) == 0)
  {
    v80 = 0;
    v83 = v15;
    v44 = v85;
    v49 = v79;
    if ((v84 & 0xC000000000000001) != 0)
    {
      v82 = v42;
      v50 = 0;
      v51 = v78;
      do
      {
        MEMORY[0x23EE63F70](v50, v84);
        sub_238758340();
        v85 = v44;
        v53 = *(v44 + 16);
        v52 = *(v44 + 24);
        if (v53 >= v52 >> 1)
        {
          sub_2385FE810((v52 > 1), v53 + 1, 1);
          v49 = v79;
          v44 = v85;
        }

        ++v50;
        *(v44 + 16) = v53 + 1;
        (*(v5 + 4))(v44 + ((v5[80] + 32) & ~v5[80]) + *(v5 + 9) * v53, v51, v49);
      }

      while (v17 != v50);

      v46 = v80;
      a1 = v81;
      v42 = v82;
      v15 = v83;
    }

    else
    {
      v82 = v5 + 32;
      v54 = 32;
      do
      {
        v55 = *(v84 + v54);
        sub_238758340();
        v85 = v44;
        v56 = v7;
        v58 = *(v44 + 16);
        v57 = *(v44 + 24);
        if (v58 >= v57 >> 1)
        {
          sub_2385FE810((v57 > 1), v58 + 1, 1);
          v49 = v79;
          v44 = v85;
        }

        *(v44 + 16) = v58 + 1;
        (*(v5 + 4))(v44 + ((v5[80] + 32) & ~v5[80]) + *(v5 + 9) * v58, v56, v49);
        v54 += 8;
        --v17;
        v7 = v56;
      }

      while (v17);

      v46 = v80;
      a1 = v81;
      v15 = v83;
    }

LABEL_51:
    v59 = [a1 merchant];
    v60 = [v59 logoName];

    if (v60)
    {
      v61 = v42;
      v62 = sub_23875EA80();
      v64 = v63;

      if (*(v44 + 16))
      {
        goto LABEL_57;
      }

      if (v64)
      {
        v83 = v15;
        v65 = [v61 preferredLanguages];
        sub_23875EC80();

        v66 = sub_23875A550();
        if (v46)
        {
        }

        else
        {
          v68 = v66;

          if (v68)
          {

            v69 = v76;
            sub_238758340();
            v70 = v77;
            v71 = v79;
            (*(v5 + 4))(v77, v69, v79);
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0AE00, &unk_238767290);
            v72 = (v5[80] + 32) & ~v5[80];
            v44 = swift_allocObject();
            v84 = xmmword_2387632F0;
            *(v44 + 16) = xmmword_2387632F0;
            (*(v5 + 2))(v44 + v72, v70, v71);
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0AE08, &unk_2387675C0);
            v73 = swift_allocObject();
            *(v73 + 16) = v84;
            *(v73 + 32) = v62;
            *(v73 + 40) = v64;
            (*(v5 + 1))(v70, v71);
            return v44;
          }
        }

        goto LABEL_57;
      }
    }

    else if (*(v44 + 16))
    {
      goto LABEL_57;
    }

    return v44;
  }

  __break(1u);
LABEL_62:
  result = (*(v15 + 1))(v17, v14);
  __break(1u);
  return result;
}

uint64_t sub_238491EEC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_2387591F0();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v73 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2387580D0();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v73 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v12);
  v15 = &v73 - v14;
  v80 = a1;
  v16 = [a1 orderContent];
  sub_23875A5B0();

  v17 = *(v9 + 16);
  v77 = v15;
  v17(v11, v15, v8);
  v79 = v9;
  v18 = (*(v9 + 88))(v11, v8);
  v19 = *MEMORY[0x277CC6DF0];
  v78 = v8;
  if (v18 == v19)
  {
    (*(v5 + 104))(v7, *MEMORY[0x277CC77B0], v4);
LABEL_9:
    v23 = sub_238758A40();
    v75 = v24;
    v76 = v23;
    (*(v5 + 8))(v7, v4);
    v25 = sub_23875E030();
LABEL_10:
    v74 = v25;

    goto LABEL_11;
  }

  v20 = *MEMORY[0x277CC77B0];
  v21 = *(v5 + 104);
  if (v18 == *MEMORY[0x277CC6DE0] || v18 == *MEMORY[0x277CC6DD8])
  {
    v21(v7, v20, v4);
    goto LABEL_9;
  }

  if (v18 == *MEMORY[0x277CC6DF8])
  {
    v21(v7, v20, v4);
    v62 = sub_238758A40();
    v75 = v63;
    v76 = v62;
    (*(v5 + 8))(v7, v4);
LABEL_21:
    v25 = sub_23875E070();
    goto LABEL_10;
  }

  v64 = *MEMORY[0x277CC6DE8];
  v65 = v18;
  v21(v7, v20, v4);
  v66 = (v5 + 8);
  if (v65 == v64)
  {
    v67 = sub_238758A40();
    v75 = v68;
    v76 = v67;
    (*v66)(v7, v4);
    goto LABEL_21;
  }

  v69 = sub_238758A40();
  v75 = v70;
  v76 = v69;
  (*v66)(v7, v4);
  v71 = sub_23875E070();
  v72 = *(v79 + 8);
  v74 = v71;

  v72(v11, v8);
LABEL_11:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12270, &qword_238765EC0);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_2387632F0;
  v27 = v80;
  v28 = [v80 orderContent];
  v29 = [v28 orderNumber];

  v30 = sub_23875EA80();
  v32 = v31;

  *(v26 + 56) = MEMORY[0x277D837D0];
  *(v26 + 64) = sub_238448C58(v33, v34, v35);
  *(v26 + 32) = v30;
  *(v26 + 40) = v32;
  if (qword_2814F0880 != -1)
  {
    swift_once();
  }

  v36 = qword_2814F1B90;
  v37 = sub_23875EA50();
  v38 = sub_23875EA50();
  v39 = sub_23875EA50();
  v40 = [v36 localizedStringForKey:v37 value:v38 table:v39];

  sub_23875EA80();
  v41 = sub_23875EAA0();
  v43 = v42;

  v44 = [v27 trackedOrderIdentifier];
  v45 = sub_23875EA80();
  v47 = v46;

  v48 = [v27 orderContent];
  v49 = [v48 merchantDisplayName];

  v50 = sub_23875EA80();
  v52 = v51;

  v53 = [v27 merchantEmailAddress];
  if (v53)
  {
    v54 = v53;
    v55 = sub_23875EA80();
    v57 = v56;
  }

  else
  {
    v55 = 0;
    v57 = 0;
  }

  v58 = sub_23848F038();
  v59 = v74;

  result = (*(v79 + 8))(v77, v78);
  *a2 = v45;
  *(a2 + 8) = v47;
  *(a2 + 16) = v41;
  *(a2 + 24) = v43;
  *(a2 + 32) = v50;
  *(a2 + 40) = v52;
  *(a2 + 48) = v55;
  *(a2 + 56) = v57;
  v61 = v75;
  *(a2 + 64) = v76;
  *(a2 + 72) = v61;
  *(a2 + 80) = v59;
  *(a2 + 88) = v41;
  *(a2 + 96) = v43;
  *(a2 + 104) = v58;
  return result;
}

uint64_t sub_2384925EC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_238492654(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2384926B4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_2384494A4;

  return sub_23848E8F4(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_238492790(uint64_t a1, uint64_t a2)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return MEMORY[0x2822009F8](sub_2384927B0, 0, 0);
}

uint64_t sub_2384927B0()
{
  v1 = objc_allocWithZone(MEMORY[0x277D07080]);
  v2 = sub_23875EA50();
  v3 = [v1 initWithString_];

  if (v3 && (v4 = [v3 highLevelDomain], v3, v4))
  {
    v5 = sub_23875EA80();
    v7 = v6;

    v0[5] = v7;
    v8 = [objc_allocWithZone(MEMORY[0x277D81650]) init];
    v0[6] = v8;
    v9 = swift_task_alloc();
    v0[7] = v9;
    v9[2] = v8;
    v9[3] = v5;
    v9[4] = v7;
    v10 = swift_task_alloc();
    v0[8] = v10;
    type metadata accessor for PKMerchantCategory(0);
    *v10 = v0;
    v10[1] = sub_238492990;

    return MEMORY[0x2822008A0](v0 + 2, 0, 0, 0xD000000000000019, 0x80000002387860E0, sub_238494FA4, v9, v11);
  }

  else
  {
    v12 = v0[1];

    return v12(0);
  }
}

uint64_t sub_238492990()
{
  *(*v1 + 72) = v0;

  if (v0)
  {
    v2 = sub_238492B1C;
  }

  else
  {

    v2 = sub_238492AB8;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_238492AB8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_238492B1C()
{
  v1 = v0[6];

  if (qword_27DF08CD8 != -1)
  {
    swift_once();
  }

  v2 = v0[9];
  v3 = sub_23875C1E0();
  __swift_project_value_buffer(v3, qword_27DF2F690);
  v4 = v2;
  v5 = sub_23875C1B0();
  v6 = sub_23875EFE0();

  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[9];
  if (v7)
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    v11 = v8;
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 4) = v12;
    *v10 = v12;
    _os_log_impl(&dword_2383F8000, v5, v6, "Could not fetch icon: %@", v9, 0xCu);
    sub_238439884(v10, &qword_27DF09930, &unk_2387638C0);
    MEMORY[0x23EE64DF0](v10, -1, -1);
    MEMORY[0x23EE64DF0](v9, -1, -1);
  }

  else
  {
  }

  v13 = v0[1];

  return v13(0);
}

uint64_t sub_238492CDC(uint64_t a1)
{
  v1[2] = a1;
  v1[3] = type metadata accessor for OrderWidgetTimelineEntry.ExtractedOrderData(0);
  v1[4] = swift_task_alloc();
  v2 = sub_23875C1E0();
  v1[5] = v2;
  v1[6] = *(v2 - 8);
  v1[7] = swift_task_alloc();
  v3 = type metadata accessor for OrderWidgetTimelineEntry.WidgetOrderData(0);
  v1[8] = v3;
  v1[9] = *(v3 - 8);
  v1[10] = swift_task_alloc();
  v1[11] = swift_task_alloc();
  v1[12] = swift_task_alloc();
  v1[13] = swift_task_alloc();
  v1[14] = type metadata accessor for OrderWidgetTimelineEntry.ClassicOrderData(0);
  v1[15] = swift_task_alloc();
  v4 = sub_23875B940();
  v1[16] = v4;
  v1[17] = *(v4 - 8);
  v1[18] = swift_task_alloc();
  v1[19] = swift_task_alloc();
  v1[20] = type metadata accessor for OrderWidgetTimelineProvider.OrderSnapshot.ClassicOrderSnapshot(0);
  v1[21] = swift_task_alloc();
  v5 = type metadata accessor for OrderWidgetTimelineProvider.OrderSnapshot(0);
  v1[22] = v5;
  v1[23] = *(v5 - 8);
  v1[24] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_238492F70, 0, 0);
}

uint64_t sub_238492F70()
{
  v1 = *(*(v0 + 16) + 16);
  *(v0 + 200) = v1;
  if (v1)
  {
    v2 = 0;
    v3 = *(v0 + 184);
    *(v0 + 392) = *(v3 + 80);
    *(v0 + 208) = *(v3 + 72);
    v4 = MEMORY[0x277D84F90];
    while (1)
    {
      *(v0 + 216) = v2;
      *(v0 + 224) = v4;
      sub_238494F3C(*(v0 + 16) + ((*(v0 + 392) + 32) & ~*(v0 + 392)) + *(v0 + 208) * v2, *(v0 + 192), type metadata accessor for OrderWidgetTimelineProvider.OrderSnapshot);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v15 = *(v0 + 192);
      if (EnumCaseMultiPayload == 1)
      {
        v16 = *v15;
        *(v0 + 232) = *v15;
        v17 = *(v15 + 8);
        *(v0 + 240) = v17;
        v18 = *(v15 + 16);
        *(v0 + 248) = v18;
        v19 = *(v15 + 24);
        *(v0 + 256) = v19;
        v20 = *(v15 + 32);
        *(v0 + 264) = v20;
        v21 = *(v15 + 40);
        *(v0 + 272) = v21;
        v22 = *(v15 + 48);
        *(v0 + 280) = v22;
        v23 = *(v15 + 56);
        *(v0 + 288) = v23;
        v24 = *(v15 + 64);
        *(v0 + 296) = v24;
        v25 = *(v15 + 72);
        *(v0 + 304) = v25;
        v26 = *(v15 + 80);
        *(v0 + 312) = v26;
        v27 = *(v15 + 88);
        *(v0 + 320) = v27;
        v28 = *(v15 + 96);
        *(v0 + 328) = v28;
        v29 = *(v15 + 104);
        *(v0 + 396) = v29;
        if (v23)
        {
          sub_2387579D0();
          *(v0 + 336) = sub_2387579A0();
          v69 = swift_task_alloc();
          *(v0 + 344) = v69;
          *v69 = v0;
          v69[1] = sub_238493860;

          return MEMORY[0x282116E08](v22, v23, 1);
        }

        v86 = v18;
        v30 = *(v0 + 136);
        v31 = *(v0 + 144);
        v32 = *(v0 + 128);
        v89 = *(v0 + 88);
        v94 = *(v0 + 80);
        v79 = v28;
        v81 = v22;
        v33 = *(v0 + 24);
        v34 = *(v0 + 32);
        v71 = v21;
        v72 = v19;
        v75 = v25;
        v77 = v26;
        v70 = v20;
        v73 = v24;
        v83 = v29;
        sub_2387576D0();
        v35 = *(v33 + 48);
        (*(v30 + 16))(&v34[v35], v31, v32);
        (*(v30 + 56))(&v34[v35], 0, 1, v32);
        *v34 = v16;
        *(v34 + 1) = v17;
        *(v34 + 2) = v86;
        *(v34 + 3) = v72;
        *(v34 + 4) = v70;
        *(v34 + 5) = v71;
        *(v34 + 6) = v81;
        *(v34 + 7) = 0;
        *(v34 + 8) = 0;
        *(v34 + 9) = 0xF000000000000000;
        *(v34 + 10) = v73;
        *(v34 + 11) = v75;
        *(v34 + 12) = v77;
        *(v34 + 13) = v27;
        *(v34 + 14) = v79;
        v36 = &v34[*(v33 + 52)];
        *v36 = v83;
        v36[4] = 0;
        sub_238494F3C(v34, v89, type metadata accessor for OrderWidgetTimelineEntry.ExtractedOrderData);
        swift_storeEnumTagMultiPayload();
        sub_238494F3C(v89, v94, type metadata accessor for OrderWidgetTimelineEntry.WidgetOrderData);

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v38 = *(v0 + 224);
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v38 = sub_23849823C(0, v38[2] + 1, 1, v38);
        }

        v40 = v38[2];
        v39 = v38[3];
        v96 = v40;
        v95 = v40 + 1;
        if (v40 >= v39 >> 1)
        {
          v99 = sub_23849823C((v39 > 1), v40 + 1, 1, v38);
        }

        else
        {
          v99 = v38;
        }

        v41 = *(v0 + 136);
        v87 = *(v0 + 128);
        v90 = *(v0 + 144);
        v42 = *(v0 + 88);
        v92 = *(v0 + 80);
        v43 = *(v0 + 72);
        v84 = *(v0 + 32);

        sub_238492654(v42, type metadata accessor for OrderWidgetTimelineEntry.WidgetOrderData);
        sub_238492654(v84, type metadata accessor for OrderWidgetTimelineEntry.ExtractedOrderData);
        (*(v41 + 8))(v90, v87);
        v4 = v99;
        v99[2] = v95;
        sub_2384925EC(v92, v99 + ((*(v43 + 80) + 32) & ~*(v43 + 80)) + *(v43 + 72) * v96, type metadata accessor for OrderWidgetTimelineEntry.WidgetOrderData);
      }

      else
      {
        v44 = *(v0 + 160);
        v45 = *(v0 + 168);
        sub_2384925EC(v15, v45, type metadata accessor for OrderWidgetTimelineProvider.OrderSnapshot.ClassicOrderSnapshot);
        v100 = v4;
        if (*(v45 + *(v44 + 20) + 8) || !*(*(v0 + 168) + *(*(v0 + 160) + 24) + 8))
        {
          sub_2387576B0();
        }

        else
        {
          sub_2387576C0();
        }

        v46 = *(v0 + 160);
        v47 = *(v0 + 168);
        v48 = *(v0 + 128);
        v49 = *(v0 + 136);
        v51 = *(v0 + 112);
        v50 = *(v0 + 120);
        v91 = *(v0 + 152);
        v93 = *(v0 + 104);
        v97 = *(v0 + 96);
        v52 = v46[7];
        v53 = sub_23875AF90();
        (*(*(v53 - 8) + 16))(v50, v47 + v52, v53);
        v85 = *(v47 + v46[8]);
        v88 = *(v47 + v46[9]);
        v54 = (v47 + v46[10]);
        v55 = *v54;
        v56 = v54[1];
        v57 = (v47 + v46[11]);
        v82 = *v57;
        v78 = v55;
        v80 = v57[1];
        v58 = *(v47 + v46[12]);
        v59 = (v47 + v46[13]);
        v74 = v59[1];
        v76 = *v59;
        v60 = v51[11];
        (*(v49 + 16))(v50 + v60, v91, v48);
        (*(v49 + 56))(v50 + v60, 0, 1, v48);
        v61 = (v47 + v46[14]);
        v62 = *v61;
        LOBYTE(v61) = *(v61 + 4);
        *(v50 + v51[5]) = v85;
        *(v50 + v51[6]) = v88;
        v63 = (v50 + v51[7]);
        *v63 = v78;
        v63[1] = v56;
        v64 = (v50 + v51[8]);
        *v64 = v82;
        v64[1] = v80;
        *(v50 + v51[9]) = v58;
        v65 = (v50 + v51[10]);
        *v65 = v76;
        v65[1] = v74;
        v66 = v50 + v51[12];
        *v66 = v62;
        *(v66 + 4) = v61;
        sub_238494F3C(v50, v93, type metadata accessor for OrderWidgetTimelineEntry.ClassicOrderData);
        swift_storeEnumTagMultiPayload();
        sub_238494F3C(v93, v97, type metadata accessor for OrderWidgetTimelineEntry.WidgetOrderData);

        v7 = v100;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v7 = sub_23849823C(0, v100[2] + 1, 1, v100);
        }

        v68 = v7[2];
        v67 = v7[3];
        if (v68 >= v67 >> 1)
        {
          v7 = sub_23849823C((v67 > 1), v68 + 1, 1, v7);
        }

        v98 = *(v0 + 168);
        v8 = *(v0 + 152);
        v9 = *(v0 + 128);
        v10 = *(v0 + 136);
        v11 = *(v0 + 120);
        v12 = *(v0 + 96);
        v13 = *(v0 + 72);
        sub_238492654(*(v0 + 104), type metadata accessor for OrderWidgetTimelineEntry.WidgetOrderData);
        sub_238492654(v11, type metadata accessor for OrderWidgetTimelineEntry.ClassicOrderData);
        (*(v10 + 8))(v8, v9);
        v4 = v7;
        v7[2] = v68 + 1;
        sub_2384925EC(v12, v7 + ((*(v13 + 80) + 32) & ~*(v13 + 80)) + *(v13 + 72) * v68, type metadata accessor for OrderWidgetTimelineEntry.WidgetOrderData);
        sub_238492654(v98, type metadata accessor for OrderWidgetTimelineProvider.OrderSnapshot.ClassicOrderSnapshot);
      }

      v2 = *(v0 + 216) + 1;
      if (v2 == *(v0 + 200))
      {
        goto LABEL_4;
      }
    }
  }

  v4 = MEMORY[0x277D84F90];
LABEL_4:

  v5 = *(v0 + 8);

  return v5(v4);
}

uint64_t sub_238493860(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  *(*v3 + 352) = v2;

  if (v2)
  {
    v7 = sub_23849399C;
  }

  else
  {

    *(v6 + 360) = a2;
    *(v6 + 368) = a1;
    v7 = sub_238493B68;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_23849399C()
{
  v1 = v0[44];

  sub_23875C190();
  v2 = v1;
  v3 = sub_23875C1B0();
  v4 = sub_23875F000();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[44];
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_2383F8000, v3, v4, "Error fetching business connect icon: %@", v7, 0xCu);
    sub_238439884(v8, &qword_27DF09930, &unk_2387638C0);
    MEMORY[0x23EE64DF0](v8, -1, -1);
    MEMORY[0x23EE64DF0](v7, -1, -1);
  }

  else
  {
  }

  (*(v0[6] + 8))(v0[7], v0[5]);
  v11 = v0[36];
  v12 = swift_task_alloc();
  v0[47] = v12;
  *v12 = v0;
  v12[1] = sub_2384944E0;
  v13 = v0[35];

  return sub_238492790(v13, v11);
}

uint64_t sub_238493B68()
{
  v1 = *(v0 + 360);
  if (v1 >> 60 == 15)
  {
    v2 = *(v0 + 288);
    v3 = swift_task_alloc();
    *(v0 + 376) = v3;
    *v3 = v0;
    v3[1] = sub_2384944E0;
    v4 = *(v0 + 280);

    return sub_238492790(v4, v2);
  }

  else
  {
    v6 = *(v0 + 368);
    v7 = *(v0 + 396);
    v9 = *(v0 + 320);
    v8 = *(v0 + 328);
    v11 = *(v0 + 304);
    v10 = *(v0 + 312);
    v12 = *(v0 + 288);
    v13 = *(v0 + 296);
    v15 = *(v0 + 272);
    v14 = *(v0 + 280);
    v17 = *(v0 + 256);
    v16 = *(v0 + 264);
    v19 = *(v0 + 240);
    v18 = *(v0 + 248);
    v20 = *(v0 + 232);
    while (2)
    {
      v75 = v20;
      v76 = v18;
      v77 = v16;
      v78 = v6;
      v79 = v13;
      v80 = v11;
      v82 = v9;
      v84 = v12;
      v86 = v10;
      v88 = v14;
      v90 = v7;
      v93 = v1;
      v96 = v8;
      v22 = *(v0 + 136);
      v21 = *(v0 + 144);
      v23 = *(v0 + 128);
      v99 = *(v0 + 88);
      v103 = *(v0 + 80);
      v24 = *(v0 + 24);
      v25 = *(v0 + 32);
      v26 = v17;
      sub_2387576D0();
      v27 = *(v24 + 48);
      (*(v22 + 16))(&v25[v27], v21, v23);
      (*(v22 + 56))(&v25[v27], 0, 1, v23);
      *v25 = v75;
      *(v25 + 1) = v19;
      *(v25 + 2) = v76;
      *(v25 + 3) = v26;
      *(v25 + 4) = v77;
      *(v25 + 5) = v15;
      *(v25 + 6) = v88;
      *(v25 + 7) = v84;
      *(v25 + 8) = v78;
      *(v25 + 9) = v93;
      *(v25 + 10) = v79;
      *(v25 + 11) = v80;
      *(v25 + 12) = v86;
      *(v25 + 13) = v82;
      *(v25 + 14) = v96;
      v28 = &v25[*(v24 + 52)];
      *v28 = v90;
      v28[4] = 0;
      sub_238494F3C(v25, v99, type metadata accessor for OrderWidgetTimelineEntry.ExtractedOrderData);
      swift_storeEnumTagMultiPayload();
      sub_238494F3C(v99, v103, type metadata accessor for OrderWidgetTimelineEntry.WidgetOrderData);

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v30 = *(v0 + 224);
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v30 = sub_23849823C(0, v30[2] + 1, 1, v30);
      }

      v32 = v30[2];
      v31 = v30[3];
      v102 = v32 + 1;
      v104 = v32;
      if (v32 >= v31 >> 1)
      {
        v106 = sub_23849823C((v31 > 1), v32 + 1, 1, v30);
      }

      else
      {
        v106 = v30;
      }

      v33 = *(v0 + 136);
      v94 = *(v0 + 128);
      v97 = *(v0 + 144);
      v34 = *(v0 + 88);
      v100 = *(v0 + 80);
      v35 = *(v0 + 72);
      v91 = *(v0 + 32);

      sub_238492654(v34, type metadata accessor for OrderWidgetTimelineEntry.WidgetOrderData);
      sub_238492654(v91, type metadata accessor for OrderWidgetTimelineEntry.ExtractedOrderData);
      (*(v33 + 8))(v97, v94);
      v36 = v106;
      v106[2] = v102;
      sub_2384925EC(v100, v106 + ((*(v35 + 80) + 32) & ~*(v35 + 80)) + *(v35 + 72) * v104, type metadata accessor for OrderWidgetTimelineEntry.WidgetOrderData);
      while (1)
      {
        v37 = *(v0 + 216) + 1;
        if (v37 == *(v0 + 200))
        {

          v73 = *(v0 + 8);

          return v73(v36);
        }

        *(v0 + 216) = v37;
        *(v0 + 224) = v36;
        sub_238494F3C(*(v0 + 16) + ((*(v0 + 392) + 32) & ~*(v0 + 392)) + *(v0 + 208) * v37, *(v0 + 192), type metadata accessor for OrderWidgetTimelineProvider.OrderSnapshot);
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        v39 = *(v0 + 192);
        if (EnumCaseMultiPayload == 1)
        {
          break;
        }

        v40 = *(v0 + 160);
        v41 = *(v0 + 168);
        sub_2384925EC(v39, v41, type metadata accessor for OrderWidgetTimelineProvider.OrderSnapshot.ClassicOrderSnapshot);
        v107 = v36;
        if (*(v41 + *(v40 + 20) + 8) || !*(*(v0 + 168) + *(*(v0 + 160) + 24) + 8))
        {
          sub_2387576B0();
        }

        else
        {
          sub_2387576C0();
        }

        v42 = *(v0 + 160);
        v43 = *(v0 + 168);
        v44 = *(v0 + 128);
        v45 = *(v0 + 136);
        v47 = *(v0 + 112);
        v46 = *(v0 + 120);
        v98 = *(v0 + 152);
        v101 = *(v0 + 104);
        v105 = *(v0 + 96);
        v48 = v42[7];
        v49 = sub_23875AF90();
        (*(*(v49 - 8) + 16))(v46, v43 + v48, v49);
        v92 = *(v43 + v42[8]);
        v95 = *(v43 + v42[9]);
        v50 = (v43 + v42[10]);
        v51 = *v50;
        v52 = v50[1];
        v53 = (v43 + v42[11]);
        v89 = *v53;
        v85 = v51;
        v87 = v53[1];
        v54 = *(v43 + v42[12]);
        v55 = (v43 + v42[13]);
        v81 = v55[1];
        v83 = *v55;
        v56 = v47[11];
        (*(v45 + 16))(v46 + v56, v98, v44);
        (*(v45 + 56))(v46 + v56, 0, 1, v44);
        v57 = (v43 + v42[14]);
        v58 = *v57;
        LOBYTE(v57) = *(v57 + 4);
        *(v46 + v47[5]) = v92;
        *(v46 + v47[6]) = v95;
        v59 = (v46 + v47[7]);
        *v59 = v85;
        v59[1] = v52;
        v60 = (v46 + v47[8]);
        *v60 = v89;
        v60[1] = v87;
        *(v46 + v47[9]) = v54;
        v61 = (v46 + v47[10]);
        *v61 = v83;
        v61[1] = v81;
        v62 = v46 + v47[12];
        *v62 = v58;
        *(v62 + 4) = v57;
        sub_238494F3C(v46, v101, type metadata accessor for OrderWidgetTimelineEntry.ClassicOrderData);
        swift_storeEnumTagMultiPayload();
        sub_238494F3C(v101, v105, type metadata accessor for OrderWidgetTimelineEntry.WidgetOrderData);

        v63 = v107;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v63 = sub_23849823C(0, v107[2] + 1, 1, v107);
        }

        v65 = v63[2];
        v64 = v63[3];
        if (v65 >= v64 >> 1)
        {
          v63 = sub_23849823C((v64 > 1), v65 + 1, 1, v63);
        }

        v108 = *(v0 + 168);
        v66 = *(v0 + 152);
        v67 = *(v0 + 128);
        v68 = *(v0 + 136);
        v69 = *(v0 + 120);
        v70 = *(v0 + 96);
        v71 = *(v0 + 72);
        sub_238492654(*(v0 + 104), type metadata accessor for OrderWidgetTimelineEntry.WidgetOrderData);
        sub_238492654(v69, type metadata accessor for OrderWidgetTimelineEntry.ClassicOrderData);
        (*(v68 + 8))(v66, v67);
        v36 = v63;
        v63[2] = v65 + 1;
        sub_2384925EC(v70, v63 + ((*(v71 + 80) + 32) & ~*(v71 + 80)) + *(v71 + 72) * v65, type metadata accessor for OrderWidgetTimelineEntry.WidgetOrderData);
        sub_238492654(v108, type metadata accessor for OrderWidgetTimelineProvider.OrderSnapshot.ClassicOrderSnapshot);
      }

      v12 = 0;
      v6 = 0;
      v20 = *v39;
      *(v0 + 232) = *v39;
      v19 = *(v39 + 8);
      *(v0 + 240) = v19;
      v18 = *(v39 + 16);
      *(v0 + 248) = v18;
      v17 = *(v39 + 24);
      *(v0 + 256) = v17;
      v16 = *(v39 + 32);
      *(v0 + 264) = v16;
      v15 = *(v39 + 40);
      *(v0 + 272) = v15;
      v14 = *(v39 + 48);
      *(v0 + 280) = v14;
      v72 = *(v39 + 56);
      *(v0 + 288) = v72;
      v13 = *(v39 + 64);
      *(v0 + 296) = v13;
      v11 = *(v39 + 72);
      *(v0 + 304) = v11;
      v10 = *(v39 + 80);
      *(v0 + 312) = v10;
      v9 = *(v39 + 88);
      *(v0 + 320) = v9;
      v8 = *(v39 + 96);
      *(v0 + 328) = v8;
      v7 = *(v39 + 104);
      *(v0 + 396) = v7;
      v1 = 0xF000000000000000;
      if (!v72)
      {
        continue;
      }

      break;
    }

    sub_2387579D0();
    *(v0 + 336) = sub_2387579A0();
    v74 = swift_task_alloc();
    *(v0 + 344) = v74;
    *v74 = v0;
    v74[1] = sub_238493860;

    return MEMORY[0x282116E08](v14, v72, 1);
  }
}

uint64_t sub_2384944E0(uint64_t a1)
{
  *(*v1 + 384) = a1;

  return MEMORY[0x2822009F8](sub_2384945E0, 0, 0);
}

uint64_t sub_2384945E0(uint64_t a1)
{
  if (*(v1 + 384))
  {
    sub_2387588A0();
    v2 = PKMapsIconForMerchantCategory();
    if (v2)
    {
      v3 = v2;
      v4 = UIImagePNGRepresentation(v2);
      if (v4)
      {
        v5 = v4;
        v6 = sub_23875B990();
        v8 = v7;

        goto LABEL_7;
      }
    }
  }

  v6 = 0;
  v8 = 0xF000000000000000;
LABEL_7:
  v9 = *(v1 + 396);
  v11 = *(v1 + 320);
  v10 = *(v1 + 328);
  v13 = *(v1 + 304);
  v12 = *(v1 + 312);
  v15 = *(v1 + 288);
  v14 = *(v1 + 296);
  v16 = *(v1 + 272);
  v17 = *(v1 + 280);
  v19 = *(v1 + 256);
  v18 = *(v1 + 264);
  v21 = *(v1 + 240);
  v20 = *(v1 + 248);
  v22 = *(v1 + 232);
  while (2)
  {
    v79 = v22;
    v80 = v6;
    v81 = v20;
    v82 = v18;
    v83 = v14;
    v84 = v13;
    v85 = v11;
    v87 = v15;
    v89 = v12;
    v91 = v9;
    v93 = v10;
    v95 = v17;
    v98 = v8;
    v24 = *(v1 + 136);
    v23 = *(v1 + 144);
    v25 = *(v1 + 128);
    v107 = *(v1 + 80);
    v103 = *(v1 + 88);
    v26 = *(v1 + 24);
    v27 = *(v1 + 32);
    v28 = v16;
    v29 = v19;
    sub_2387576D0();
    v30 = *(v26 + 48);
    (*(v24 + 16))(&v27[v30], v23, v25);
    (*(v24 + 56))(&v27[v30], 0, 1, v25);
    *v27 = v79;
    *(v27 + 1) = v21;
    *(v27 + 2) = v81;
    *(v27 + 3) = v29;
    *(v27 + 4) = v82;
    *(v27 + 5) = v28;
    *(v27 + 6) = v95;
    *(v27 + 7) = v87;
    *(v27 + 8) = v80;
    *(v27 + 9) = v98;
    *(v27 + 10) = v83;
    *(v27 + 11) = v84;
    *(v27 + 12) = v89;
    *(v27 + 13) = v85;
    *(v27 + 14) = v93;
    v31 = &v27[*(v26 + 52)];
    *v31 = v91;
    v31[4] = 0;
    sub_238494F3C(v27, v103, type metadata accessor for OrderWidgetTimelineEntry.ExtractedOrderData);
    swift_storeEnumTagMultiPayload();
    sub_238494F3C(v103, v107, type metadata accessor for OrderWidgetTimelineEntry.WidgetOrderData);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v33 = *(v1 + 224);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v33 = sub_23849823C(0, v33[2] + 1, 1, v33);
    }

    v35 = v33[2];
    v34 = v33[3];
    v106 = v35 + 1;
    v108 = v35;
    if (v35 >= v34 >> 1)
    {
      v110 = sub_23849823C((v34 > 1), v35 + 1, 1, v33);
    }

    else
    {
      v110 = v33;
    }

    v36 = *(v1 + 136);
    v99 = *(v1 + 128);
    v101 = *(v1 + 144);
    v37 = *(v1 + 88);
    v104 = *(v1 + 80);
    v38 = *(v1 + 72);
    v96 = *(v1 + 32);

    sub_238492654(v37, type metadata accessor for OrderWidgetTimelineEntry.WidgetOrderData);
    sub_238492654(v96, type metadata accessor for OrderWidgetTimelineEntry.ExtractedOrderData);
    (*(v36 + 8))(v101, v99);
    v39 = v110;
    v110[2] = v106;
    sub_2384925EC(v104, v110 + ((*(v38 + 80) + 32) & ~*(v38 + 80)) + *(v38 + 72) * v108, type metadata accessor for OrderWidgetTimelineEntry.WidgetOrderData);
    while (1)
    {
      v40 = *(v1 + 216) + 1;
      if (v40 == *(v1 + 200))
      {

        v76 = *(v1 + 8);

        return v76(v39);
      }

      *(v1 + 216) = v40;
      *(v1 + 224) = v39;
      sub_238494F3C(*(v1 + 16) + ((*(v1 + 392) + 32) & ~*(v1 + 392)) + *(v1 + 208) * v40, *(v1 + 192), type metadata accessor for OrderWidgetTimelineProvider.OrderSnapshot);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v42 = *(v1 + 192);
      if (EnumCaseMultiPayload == 1)
      {
        break;
      }

      v43 = *(v1 + 160);
      v44 = *(v1 + 168);
      sub_2384925EC(v42, v44, type metadata accessor for OrderWidgetTimelineProvider.OrderSnapshot.ClassicOrderSnapshot);
      v111 = v39;
      if (*(v44 + *(v43 + 20) + 8) || !*(*(v1 + 168) + *(*(v1 + 160) + 24) + 8))
      {
        sub_2387576B0();
      }

      else
      {
        sub_2387576C0();
      }

      v45 = *(v1 + 160);
      v46 = *(v1 + 168);
      v102 = *(v1 + 152);
      v47 = *(v1 + 128);
      v48 = *(v1 + 136);
      v50 = *(v1 + 112);
      v49 = *(v1 + 120);
      v109 = *(v1 + 96);
      v105 = *(v1 + 104);
      v51 = v45[7];
      v52 = sub_23875AF90();
      (*(*(v52 - 8) + 16))(v49, v46 + v51, v52);
      v97 = *(v46 + v45[8]);
      v100 = *(v46 + v45[9]);
      v53 = (v46 + v45[10]);
      v54 = *v53;
      v55 = v53[1];
      v56 = (v46 + v45[11]);
      v94 = *v56;
      v90 = v54;
      v92 = v56[1];
      v57 = *(v46 + v45[12]);
      v58 = (v46 + v45[13]);
      v86 = v58[1];
      v88 = *v58;
      v59 = v50[11];
      (*(v48 + 16))(v49 + v59, v102, v47);
      (*(v48 + 56))(v49 + v59, 0, 1, v47);
      v60 = (v46 + v45[14]);
      v61 = *v60;
      LOBYTE(v60) = *(v60 + 4);
      *(v49 + v50[5]) = v97;
      *(v49 + v50[6]) = v100;
      v62 = (v49 + v50[7]);
      *v62 = v90;
      v62[1] = v55;
      v63 = (v49 + v50[8]);
      *v63 = v94;
      v63[1] = v92;
      *(v49 + v50[9]) = v57;
      v64 = (v49 + v50[10]);
      *v64 = v88;
      v64[1] = v86;
      v65 = v49 + v50[12];
      *v65 = v61;
      *(v65 + 4) = v60;
      sub_238494F3C(v49, v105, type metadata accessor for OrderWidgetTimelineEntry.ClassicOrderData);
      swift_storeEnumTagMultiPayload();
      sub_238494F3C(v105, v109, type metadata accessor for OrderWidgetTimelineEntry.WidgetOrderData);

      v66 = v111;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v66 = sub_23849823C(0, v111[2] + 1, 1, v111);
      }

      v68 = v66[2];
      v67 = v66[3];
      if (v68 >= v67 >> 1)
      {
        v66 = sub_23849823C((v67 > 1), v68 + 1, 1, v66);
      }

      v112 = *(v1 + 168);
      v69 = *(v1 + 152);
      v70 = *(v1 + 128);
      v71 = *(v1 + 136);
      v72 = *(v1 + 120);
      v73 = *(v1 + 96);
      v74 = *(v1 + 72);
      sub_238492654(*(v1 + 104), type metadata accessor for OrderWidgetTimelineEntry.WidgetOrderData);
      sub_238492654(v72, type metadata accessor for OrderWidgetTimelineEntry.ClassicOrderData);
      (*(v71 + 8))(v69, v70);
      v39 = v66;
      v66[2] = v68 + 1;
      sub_2384925EC(v73, v66 + ((*(v74 + 80) + 32) & ~*(v74 + 80)) + *(v74 + 72) * v68, type metadata accessor for OrderWidgetTimelineEntry.WidgetOrderData);
      sub_238492654(v112, type metadata accessor for OrderWidgetTimelineProvider.OrderSnapshot.ClassicOrderSnapshot);
    }

    v15 = 0;
    v6 = 0;
    v22 = *v42;
    *(v1 + 232) = *v42;
    v21 = *(v42 + 8);
    *(v1 + 240) = v21;
    v20 = *(v42 + 16);
    *(v1 + 248) = v20;
    v19 = *(v42 + 24);
    *(v1 + 256) = v19;
    v18 = *(v42 + 32);
    *(v1 + 264) = v18;
    v16 = *(v42 + 40);
    *(v1 + 272) = v16;
    v17 = *(v42 + 48);
    *(v1 + 280) = v17;
    v75 = *(v42 + 56);
    *(v1 + 288) = v75;
    v14 = *(v42 + 64);
    *(v1 + 296) = v14;
    v13 = *(v42 + 72);
    *(v1 + 304) = v13;
    v12 = *(v42 + 80);
    *(v1 + 312) = v12;
    v11 = *(v42 + 88);
    *(v1 + 320) = v11;
    v10 = *(v42 + 96);
    *(v1 + 328) = v10;
    v9 = *(v42 + 104);
    *(v1 + 396) = v9;
    v8 = 0xF000000000000000;
    if (!v75)
    {
      continue;
    }

    break;
  }

  sub_2387579D0();
  *(v1 + 336) = sub_2387579A0();
  v78 = swift_task_alloc();
  *(v1 + 344) = v78;
  *v78 = v1;
  v78[1] = sub_238493860;

  return MEMORY[0x282116E08](v17, v75, 1);
}

uint64_t sub_238494F3C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_238494FB0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09F38, &qword_238764DC0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_238495020(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DF0ADF0;
  if (!qword_27DF0ADF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0ADF0);
  }

  return result;
}

uint64_t sub_238495074(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t objectdestroy_4Tm()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

unint64_t sub_2384950FC()
{
  result = qword_27DF0AE38;
  if (!qword_27DF0AE38)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27DF0AE38);
  }

  return result;
}

uint64_t sub_238495148(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

__n128 __swift_memcpy108_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 92) = *(a2 + 92);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_2384951C8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 108))
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

uint64_t sub_238495210(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 104) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 108) = 1;
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

    *(result + 108) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_2384952A4(uint64_t a1)
{
  sub_23875A710();
  if (v1 <= 0x3F)
  {
    sub_238495464(319, &qword_2814F08C0, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      sub_23875AF90();
      if (v3 <= 0x3F)
      {
        sub_23849540C(319);
        if (v4 <= 0x3F)
        {
          sub_238495464(319, &qword_2814F08B0, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
          if (v5 <= 0x3F)
          {
            sub_238495464(319, &qword_2814F08A8, MEMORY[0x277D83A90], MEMORY[0x277D83D88]);
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

void sub_23849540C(uint64_t a1)
{
  if (!qword_2814F08B8)
  {
    sub_238758350();
    v1 = sub_23875ECC0();
    if (!v2)
    {
      atomic_store(v1, &qword_2814F08B8);
    }
  }
}

void sub_238495464(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_2384954B4(uint64_t a1)
{
  result = type metadata accessor for OrderWidgetTimelineProvider.OrderSnapshot.ClassicOrderSnapshot(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

void *EnvironmentValues.coreDataProvider.getter(uint64_t x0_0, uint64_t a2, uint64_t a3)
{
  sub_23849557C(x0_0, a2, a3);

  return sub_23875CDC0();
}

unint64_t sub_23849557C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DF0AE80;
  if (!qword_27DF0AE80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0AE80);
  }

  return result;
}

uint64_t EnvironmentValues.coreDataProvider.setter(void *a1)
{
  v2 = sub_23845C998(a1, v6);
  sub_23849557C(v2, v3, v4);
  sub_23875CDD0();
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_238495624@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_238758890();
  result = sub_238758880();
  v4 = MEMORY[0x277CC70D0];
  a1[3] = v2;
  a1[4] = v4;
  *a1 = result;
  return result;
}

void (*EnvironmentValues.coreDataProvider.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  *a1 = v3;
  *(v3 + 120) = v1;
  *(v3 + 128) = sub_23849557C(v3, v4, v5);
  sub_23875CDC0();
  return sub_2384956F4;
}

void sub_2384956F4(uint64_t *a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    sub_23845C998(*a1, (v2 + 5));
    sub_23845C998((v2 + 5), (v2 + 10));
    sub_23875CDD0();
    __swift_destroy_boxed_opaque_existential_1(v2 + 5);
  }

  else
  {
    sub_23845C998(*a1, (v2 + 5));
    sub_23875CDD0();
  }

  __swift_destroy_boxed_opaque_existential_1(v2);

  free(v2);
}

char *SuggestionsOrderBanner.__allocating_init(_:)(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = sub_23875BE40();
  MEMORY[0x28223BE20](v6 - 8);
  v7 = sub_23875BE20();
  MEMORY[0x28223BE20](v7 - 8);
  v8 = sub_23875BD20();
  MEMORY[0x28223BE20](v8 - 8);
  v9 = sub_2387595E0();
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  objc_allocWithZone(v3);
  sub_23875BCC0();
  sub_23875BDB0();
  sub_23875BE30();
  sub_2387595B0();
  v12 = objc_allocWithZone(v3);
  v13 = SuggestionsOrderBanner.init(_:configuration:)(a1, a2, v11);
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v13;
}

char *SuggestionsOrderBanner.init(_:)(uint64_t a1, unint64_t a2)
{
  ObjectType = swift_getObjectType();
  v5 = sub_23875BE40();
  MEMORY[0x28223BE20](v5 - 8);
  v6 = sub_23875BE20();
  MEMORY[0x28223BE20](v6 - 8);
  v7 = sub_23875BD20();
  MEMORY[0x28223BE20](v7 - 8);
  v8 = sub_2387595E0();
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23875BCC0();
  sub_23875BDB0();
  sub_23875BE30();
  sub_2387595B0();
  v11 = objc_allocWithZone(ObjectType);
  v12 = SuggestionsOrderBanner.init(_:configuration:)(a1, a2, v10);
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v12;
}

char *SuggestionsOrderBanner.init(_:configuration:)(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v47 = a3;
  v45 = a2;
  ObjectType = swift_getObjectType();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0AE90, &unk_2387673C0);
  MEMORY[0x28223BE20](v4 - 8);
  v44 = &v40 - v5;
  v6 = sub_238758700();
  v40 = *(v6 - 8);
  v41 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_238759B60();
  v42 = *(v9 - 8);
  v43 = v9;
  MEMORY[0x28223BE20](v9);
  v11 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_23875B940();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_238757C20();
  v16 = [objc_opt_self() defaultManager];
  v17 = [v16 temporaryDirectory];

  sub_23875B8B0();
  sub_238758AF0();
  v50[3] = sub_238759260();
  v50[4] = MEMORY[0x277CC77F0];
  __swift_allocate_boxed_opaque_existential_1(v50);
  v18 = v45;
  sub_238759250();
  v19 = v46;
  v20 = sub_238757BE0();
  if (v19)
  {
    sub_23844C954(a1, v18);
    v21 = sub_2387595E0();
    (*(*(v21 - 8) + 8))(v47, v21);
    (*(v13 + 8))(v15, v12);
    __swift_destroy_boxed_opaque_existential_1(v50);
  }

  else
  {
    v22 = v20;
    (*(v13 + 8))(v15, v12);
    __swift_destroy_boxed_opaque_existential_1(v50);
    *&v51[OBJC_IVAR____TtC12FinanceKitUI22SuggestionsOrderBanner_orderBundle] = v22;

    sub_238757C10();

    v23 = v44;
    sub_2387586D0();
    (*(v40 + 8))(v8, v41);
    v25 = v42;
    v24 = v43;
    if ((*(v42 + 48))(v23, 1, v43) != 1)
    {
      v31 = *(v25 + 32);
      v32 = v11;
      v31(v11, v23, v24);
      v33 = v51;
      v31(&v51[OBJC_IVAR____TtC12FinanceKitUI22SuggestionsOrderBanner_order], v32, v24);
      v34 = OBJC_IVAR____TtC12FinanceKitUI22SuggestionsOrderBanner_configuration;
      v35 = sub_2387595E0();
      v36 = v18;
      v37 = *(v35 - 8);
      v38 = &v33[v34];
      v39 = v47;
      (*(v37 + 16))(v38, v47, v35);
      v49.receiver = v33;
      v49.super_class = ObjectType;
      v11 = objc_msgSendSuper2(&v49, sel_init);
      sub_23844C954(a1, v36);
      (*(v37 + 8))(v39, v35);
      return v11;
    }

    v26 = sub_238439884(v23, &qword_27DF0AE90, &unk_2387673C0);
    sub_238496298(v26, v27, v28);
    swift_allocError();
    swift_willThrow();
    sub_23844C954(a1, v18);
    v29 = sub_2387595E0();
    (*(*(v29 - 8) + 8))(v47, v29);
    v11 = v51;
  }

  swift_deallocPartialClassInstance();
  return v11;
}

unint64_t sub_238496298(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DF0AEA0;
  if (!qword_27DF0AEA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0AEA0);
  }

  return result;
}

id SuggestionsOrderBanner.__deallocating_deinit()
{
  ObjectType = swift_getObjectType();

  sub_238757BF0();

  v3.receiver = v0;
  v3.super_class = ObjectType;
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t SuggestionsOrderBanner.merchantName.getter(uint64_t a1, uint64_t a2)
{
  v2 = sub_238757CC0();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_238759B30();
  sub_238757C60();
  (*(v3 + 8))(v5, v2);
  v6 = sub_238757BD0();

  v7 = sub_2387586A0();

  return v7;
}

id SuggestionsOrderBanner.merchantLogo.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D040, &qword_2387676A0);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = v20 - v1;
  v3 = sub_23875B940();
  v20[0] = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_238757CC0();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_238759B30();
  sub_238757CB0();
  v11 = v10;
  (*(v7 + 8))(v9, v6);
  if (v11)
  {
    sub_238757C00();
    sub_2387588A0();
    sub_2387591A0();

    v12 = v20[0];
    if ((*(v20[0] + 48))(v2, 1, v3) != 1)
    {
      (*(v12 + 32))(v5, v2, v3);
      v13 = sub_23875B960();
      v15 = v14;
      v16 = objc_allocWithZone(MEMORY[0x277D755B8]);
      v17 = sub_23875B980();
      v18 = [v16 initWithData_];

      sub_23844C954(v13, v15);
      (*(v12 + 8))(v5, v3);
      return v18;
    }

    sub_238439884(v2, &qword_27DF0D040, &qword_2387676A0);
  }

  return 0;
}

uint64_t SuggestionsOrderBanner.orderDeepLink.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_23875A710();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_238757A70();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_238757A20();
  v10 = sub_238757A60();
  (*(v7 + 8))(v9, v6);
  if (v10)
  {
    sub_238759A40();
    sub_2387576B0();
    (*(v3 + 8))(v5, v2);
    v11 = 0;
  }

  else
  {
    v11 = 1;
  }

  v12 = sub_23875B940();
  return (*(*(v12 - 8) + 56))(a1, v11, 1, v12);
}

uint64_t SuggestionsOrderBanner.bannerAttributedSubtitle.getter(uint64_t a1, uint64_t a2)
{
  v2 = sub_238757CC0();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26[6] = sub_2384971BC();
  v26[7] = v6;
  v26[8] = sub_23849753C();
  v26[9] = v7;
  sub_238759B30();
  v8 = sub_238757C60();
  v10 = v9;
  result = (*(v3 + 8))(v5, v2);
  v12 = 0;
  v26[10] = v8;
  v26[11] = v10;
  v13 = MEMORY[0x277D84F90];
LABEL_2:
  if (v12 <= 3)
  {
    v14 = 3;
  }

  else
  {
    v14 = v12;
  }

  v15 = v14 + 1;
  v16 = 16 * v12 + 40;
  while (1)
  {
    if (v12 == 3)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0AEB8, &unk_2387673D0);
      swift_arrayDestroy();
      v26[1] = v13;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09550, &qword_2387638E0);
      sub_238497D38();
      sub_23875E980();

      v23 = objc_allocWithZone(MEMORY[0x277CCA898]);
      v24 = sub_23875EA50();

      v25 = [v23 initWithString_];

      return v25;
    }

    if (v15 == ++v12)
    {
      break;
    }

    v17 = v16 + 16;
    v18 = *(&v26[2] + v16);
    v16 += 16;
    if (v18)
    {
      v19 = *(&v26[-1] + v17);

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_238497C2C(0, *(v13 + 16) + 1, 1, v13);
        v13 = result;
      }

      v21 = *(v13 + 16);
      v20 = *(v13 + 24);
      if (v21 >= v20 >> 1)
      {
        result = sub_238497C2C((v20 > 1), v21 + 1, 1, v13);
        v13 = result;
      }

      *(v13 + 16) = v21 + 1;
      v22 = v13 + 16 * v21;
      *(v22 + 32) = v19;
      *(v22 + 40) = v18;
      goto LABEL_2;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2384971BC()
{
  v0 = sub_23875BE40();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_23875BE20();
  MEMORY[0x28223BE20](v1 - 8);
  v21 = v19 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_23875BD20();
  MEMORY[0x28223BE20](v3 - 8);
  v19[1] = v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2387595E0();
  MEMORY[0x28223BE20](v5 - 8);
  v20 = sub_2387590C0();
  v19[0] = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v7 = v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_23875BC40();
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_2387590B0();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(sub_238759B50() + 16);

  if (!v15)
  {
    return 0;
  }

  v16 = sub_238759B50();
  sub_238759B40();
  MEMORY[0x23EE5DB70](v16, v10);
  sub_23875BCC0();
  sub_23875BDB0();
  sub_23875BE30();
  sub_2387595B0();
  sub_238759020();
  sub_23849917C();
  v17 = v20;
  sub_238759950();
  (*(v19[0] + 8))(v7, v17);
  (*(v12 + 8))(v14, v11);
  return v22;
}

uint64_t sub_23849753C()
{
  v0 = sub_2387591F0();
  v39 = *(v0 - 8);
  v40 = v0;
  MEMORY[0x28223BE20](v0);
  v38 = v34 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_23875BC40();
  v36 = *(v2 - 8);
  v37 = v2;
  MEMORY[0x28223BE20](v2);
  v35 = v34 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_23875B7F0();
  MEMORY[0x28223BE20](v4 - 8);
  v34[3] = v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_23875BE40();
  MEMORY[0x28223BE20](v6 - 8);
  v34[2] = v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_23875BE20();
  MEMORY[0x28223BE20](v8 - 8);
  v9 = sub_23875BD20();
  MEMORY[0x28223BE20](v9 - 8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09980, &unk_2387640E0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = v34 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09988, &unk_2387675D0);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = v34 - v14;
  v34[0] = sub_23875BAD0();
  v16 = *(v34[0] - 8);
  MEMORY[0x28223BE20](v34[0]);
  v18 = v34 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34[1] = "ation-icon.passbook-stub.wallet";
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12270, &qword_238765EC0);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_2387632F0;
  sub_23875BA30();
  v20 = sub_23875BA40();
  (*(*(v20 - 8) + 56))(v15, 0, 1, v20);
  v21 = sub_23875BA10();
  (*(*(v21 - 8) + 56))(v12, 1, 1, v21);
  sub_2387595A0();
  sub_2387595C0();
  sub_2387595D0();
  sub_23875B7E0();
  sub_23875BA50();
  v22 = v35;
  sub_238759B40();
  v23 = sub_23875BAC0();
  v25 = v24;
  (*(v36 + 8))(v22, v37);
  v26 = (*(v16 + 8))(v18, v34[0]);
  *(v19 + 56) = MEMORY[0x277D837D0];
  *(v19 + 64) = sub_238448C58(v26, v27, v28);
  *(v19 + 32) = v23;
  *(v19 + 40) = v25;
  v30 = v38;
  v29 = v39;
  v31 = v40;
  (*(v39 + 104))(v38, *MEMORY[0x277CC77B0], v40);
  v32 = sub_238758A50();

  (*(v29 + 8))(v30, v31);
  return v32;
}

uint64_t static SuggestionsOrderBanner.walletLogo()()
{
  if (qword_27DF08CC8 != -1)
  {
    swift_once();
  }

  v0 = qword_27DF0AE88;
  v1 = qword_27DF0AE88;
  return v0;
}

id sub_238497B6C()
{
  result = sub_238498EBC(0, 0, 1);
  qword_27DF0AE88 = result;
  return result;
}

id SuggestionsOrderBanner.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

char *sub_238497C2C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0AE08, &unk_2387675C0);
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

unint64_t sub_238497D38()
{
  result = qword_27DF0AEC0;
  if (!qword_27DF0AEC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF09550, &qword_2387638E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0AEC0);
  }

  return result;
}

uint64_t type metadata accessor for SuggestionsOrderBanner(uint64_t a1)
{
  result = qword_27DF0AEC8;
  if (!qword_27DF0AEC8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_238497DF0(uint64_t a1)
{
  result = sub_238759B60();
  if (v2 <= 0x3F)
  {
    result = sub_2387595E0();
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

unint64_t sub_238497F20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DF0AED8;
  if (!qword_27DF0AED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0AED8);
  }

  return result;
}

char *sub_238497FC0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0AF00, &unk_238767510);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  v14 = 24 * v8;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v14])
    {
      memmove(v12, v13, v14);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v14);
  }

  return v10;
}

char *sub_238498120(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0AFA0, &qword_2387675E0);
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

char *sub_238498264(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0AF50, &qword_238767568);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[48 * v8])
    {
      memmove(v12, v13, 48 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_238498380(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0AF48, &qword_238767560);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_2384984DC(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0AF80, &qword_2387675A0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0AF88, &qword_2387675A8);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_2384986F8(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
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
LABEL_30:
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

  if (!v15)
  {
    v19 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v16 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a7, a8) - 8);
  v17 = *(v16 + 72);
  v18 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v19 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v19);
  if (!v17)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v18) == 0x8000000000000000 && v17 == -1)
  {
    goto LABEL_29;
  }

  v19[2] = v14;
  v19[3] = 2 * ((result - v18) / v17);
LABEL_19:
  v21 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a7, a8) - 8);
  if (v11)
  {
    if (v19 < a4 || (v22 = (*(v21 + 80) + 32) & ~*(v21 + 80), v19 + v22 >= a4 + v22 + *(v21 + 72) * v14))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v19 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v19;
}

char *sub_2384988E0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0AF08, &unk_238767520);
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

void *sub_2384989EC(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0AF10, &qword_2387744B0);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0AF18, &qword_238767530);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_238498B48(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0AF70, &unk_238767590);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[3 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0AF78, &qword_23877F8C0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_238498CE0(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
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

id sub_238498EBC(uint64_t a1, uint64_t a2, char a3)
{
  v6 = sub_238757A70();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v26 - v11;
  sub_238757A20();
  (*(v7 + 104))(v9, *MEMORY[0x277CC6A70], v6);
  sub_238757A40();
  v13 = *(v7 + 8);
  v13(v9, v6);
  v13(v12, v6);
  v14 = sub_2387588A0();
  if (a3)
  {
    v15 = 28.0;
  }

  else
  {
    v15 = *&a1;
  }

  if (a3)
  {
    v16 = 28.0;
  }

  else
  {
    v16 = *&a2;
  }

  v17 = objc_allocWithZone(MEMORY[0x277D1B1A8]);
  v18 = sub_23875EA50();

  v19 = [v17 initWithType_];

  v20 = [objc_allocWithZone(MEMORY[0x277D1B1C8]) initWithSize:v15 scale:{v16, v14}];
  [v20 setShape_];
  v21 = [v19 prepareImageForDescriptor_];
  if (!v21)
  {

    return 0;
  }

  v22 = v21;
  result = [v21 CGImage];
  if (result)
  {
    v24 = result;
    v25 = [objc_allocWithZone(MEMORY[0x277D755B8]) initWithCGImage:result scale:0 orientation:1.0];

    return v25;
  }

  __break(1u);
  return result;
}

unint64_t sub_23849917C()
{
  result = qword_27DF0ADF8;
  if (!qword_27DF0ADF8)
  {
    sub_2387590C0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0ADF8);
  }

  return result;
}

id sub_2384991D4()
{
  v1 = v0;
  v2 = sub_23875BCB0();
  MEMORY[0x28223BE20](v2 - 8);
  v335 = &v293 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v315 = sub_238758AA0();
  v314 = *(v315 - 8);
  MEMORY[0x28223BE20](v315);
  v313 = &v293 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v294 = sub_2387598C0();
  v293 = *(v294 - 8);
  MEMORY[0x28223BE20](v294);
  v321 = &v293 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v305 = sub_23875EAD0();
  v304 = *(v305 - 8);
  MEMORY[0x28223BE20](v305);
  v303 = &v293 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF0B060, &unk_238767670);
  MEMORY[0x28223BE20](v7 - 8);
  v302 = &v293 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v318 = &v293 - v10;
  v342 = sub_23875A8A0();
  v336 = *(v342 - 8);
  MEMORY[0x28223BE20](v342);
  v346 = &v293 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D040, &qword_2387676A0);
  MEMORY[0x28223BE20](v12 - 8);
  v301 = &v293 - v13;
  v308 = sub_238759FF0();
  v307 = *(v308 - 8);
  MEMORY[0x28223BE20](v308);
  v298 = &v293 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v299 = &v293 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF0B070, &unk_238766290);
  MEMORY[0x28223BE20](v17 - 8);
  v339 = &v293 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v306 = &v293 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A928, &qword_238766270);
  MEMORY[0x28223BE20](v21 - 8);
  v350 = &v293 - v22;
  v23 = sub_23875A010();
  v337 = *(v23 - 8);
  v338 = v23;
  MEMORY[0x28223BE20](v23);
  v348 = &v293 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v330 = sub_238758090();
  v329 = *(v330 - 8);
  MEMORY[0x28223BE20](v330);
  v310 = &v293 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF0B080, &unk_2387662A0);
  MEMORY[0x28223BE20](v26 - 8);
  v328 = &v293 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A978, &unk_2387662C0);
  MEMORY[0x28223BE20](v28 - 8);
  v325 = &v293 - v29;
  v327 = sub_238759230();
  v326 = *(v327 - 8);
  MEMORY[0x28223BE20](v327);
  v309 = &v293 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v324 = sub_23875BC40();
  v323 = *(v324 - 8);
  MEMORY[0x28223BE20](v324);
  v340 = &v293 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v334 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B090, &qword_238767680);
  v341 = *(v334 - 8);
  MEMORY[0x28223BE20](v334);
  v296 = &v293 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v33);
  v322 = &v293 - v34;
  MEMORY[0x28223BE20](v35);
  v343 = &v293 - v36;
  v37 = sub_2387587A0();
  MEMORY[0x28223BE20](v37 - 8);
  v344 = &v293 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v317 = sub_23875C1E0();
  v316 = *(v317 - 8);
  MEMORY[0x28223BE20](v317);
  v300 = &v293 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v40);
  v333 = &v293 - v41;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B098, &qword_238767688);
  MEMORY[0x28223BE20](v42 - 8);
  v44 = &v293 - v43;
  v45 = sub_23875A690();
  v46 = *(v45 - 8);
  MEMORY[0x28223BE20](v45);
  v48 = &v293 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  v320 = sub_238758F50();
  v319 = *(v320 - 8);
  MEMORY[0x28223BE20](v320);
  v312 = &v293 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v50);
  v311 = &v293 - v51;
  MEMORY[0x28223BE20](v52);
  v54 = &v293 - v53;
  v55 = [objc_allocWithZone(MEMORY[0x277CD4F78]) init];
  v297 = 0;
  sub_238449184(0, &qword_27DF0B0A0, 0x277CCABB0);
  v56 = sub_23875F190();
  [v55 setBankEnableBrandMUIDFallback_];

  v57 = OBJC_IVAR____TtC12FinanceKitUI38BankConnectMerchantLookupRequestSource_input;
  sub_23875A330();
  v58 = sub_23875EA50();

  [v55 setBankIdentifier_];

  v59 = v57;
  v345 = v54;
  sub_23875A300();
  v349 = v1;
  sub_23875A320();
  v60 = (*(v46 + 48))(v44, 1, v45);
  v347 = v55;
  if (v60 == 1)
  {
    sub_238439884(v44, &qword_27DF0B098, &qword_238767688);
    v61 = v333;
    sub_23875C120();
    v62 = sub_23875C1B0();
    v63 = sub_23875EFE0();
    if (os_log_type_enabled(v62, v63))
    {
      v64 = swift_slowAlloc();
      *v64 = 0;
      _os_log_impl(&dword_2383F8000, v62, v63, "No user identifier supplied for Maps lookup", v64, 2u);
      MEMORY[0x23EE64DF0](v64, -1, -1);
    }

    (*(v316 + 8))(v61, v317);
    v65 = v349;
    v55 = v347;
  }

  else
  {
    (*(v46 + 32))(v48, v44, v45);
    sub_23875A670();
    v66 = sub_23875EA50();

    [v55 setBankAnonymisedUserId_];

    sub_23875A680();
    v67 = sub_23875F210();
    [v55 setRotationPeriodsSinceEpoch_];

    (*(v46 + 8))(v48, v45);
    v65 = v349;
  }

  v68 = v344;
  sub_238758E90();
  [v55 setBankTransactionType_];
  [v55 setBankMerchantStatus_];
  v69 = sub_238758EF0();
  v71 = v70;
  sub_23875A310();
  v72 = (v65 + OBJC_IVAR____TtC12FinanceKitUI38BankConnectMerchantLookupRequestSource_piiProcessor);
  __swift_project_boxed_opaque_existential_1((v65 + OBJC_IVAR____TtC12FinanceKitUI38BankConnectMerchantLookupRequestSource_piiProcessor), *(v65 + OBJC_IVAR____TtC12FinanceKitUI38BankConnectMerchantLookupRequestSource_piiProcessor + 24));
  v351 = v69;
  v352 = v71;
  v73 = v343;
  sub_238758020();
  v74 = v341;
  v75 = *(v341 + 88);
  v76 = v334;
  v333 = (v341 + 88);
  v332 = v75;
  v77 = v75(v73, v334);
  v331 = *MEMORY[0x277CC7710];
  LODWORD(v344) = v77 != v331;
  if (v77 == v331)
  {

    (*(v74 + 8))(v73, v76);
  }

  else
  {
    if (v77 != *MEMORY[0x277CC7718])
    {
      goto LABEL_127;
    }

    (*(v74 + 96))(v73, v76);
  }

  v78 = sub_23875EA50();

  [v347 setBankTransactionDescriptionClean_];

  v79 = sub_238758E30();
  v81 = v80;
  sub_23875A310();
  v82 = v72;
  v83 = v72[3];
  v295 = v82;
  __swift_project_boxed_opaque_existential_1(v82, v83);
  v351 = v79;
  v352 = v81;
  v84 = v322;
  sub_238758020();
  v85 = v332(v84, v76);
  v343 = v59;
  if (v85 == v331)
  {

    (*(v341 + 8))(v84, v76);
    v86 = v329;
    v87 = v325;
  }

  else
  {
    v86 = v329;
    v87 = v325;
    if (v85 != *MEMORY[0x277CC7718])
    {
      goto LABEL_127;
    }

    (*(v341 + 96))(v84, v76);
    LODWORD(v344) = 1;
  }

  v88 = sub_23875EA50();

  v89 = v347;
  [v347 setBankTransactionDescription_];

  v90 = v340;
  sub_238758E80();
  sub_23875B9B0();
  v92 = v91;
  (*(v323 + 8))(v90, v324);
  v93 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
  [v89 setBankTransactionTimestamp_];

  sub_238758ED0();
  v94 = v326;
  v95 = v327;
  v96 = (*(v326 + 48))(v87, 1, v327);
  v97 = v339;
  v98 = v330;
  if (v96 == 1)
  {
    sub_238439884(v87, &qword_27DF0A978, &unk_2387662C0);
  }

  else
  {
    v99 = v309;
    (*(v94 + 32))(v309, v87, v95);
    v100 = v94;
    v101 = v95;
    v102 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithShort_];
    [v89 setBankIndustryCode_];

    (*(v100 + 8))(v99, v101);
  }

  v103 = v348;
  v104 = v350;
  v105 = v328;
  sub_238758EE0();
  if ((*(v86 + 48))(v105, 1, v98) == 1)
  {
    sub_238439884(v105, &unk_27DF0B080, &unk_2387662A0);
    v105 = v310;
    sub_238758EA0();
  }

  sub_238758040();
  (*(v86 + 8))(v105, v98);
  v106 = sub_23875EA50();

  v107 = v347;
  [v347 setBankTransactionCurrencyCode_];

  v108 = *(v349 + OBJC_IVAR____TtC12FinanceKitUI38BankConnectMerchantLookupRequestSource_otherBankTransactionLocations);
  v109 = v108 & 0xFFFFFFFFFFFFFF8;
  if (v108 >> 62)
  {
    goto LABEL_124;
  }

  v110 = *((v108 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v110)
  {
    v351 = MEMORY[0x277D84F90];
    while (1)
    {
      v103 = 0;
      v111 = v108 & 0xC000000000000001;
      v330 = MEMORY[0x277D84F90];
      v107 = &unk_278A55000;
      while (1)
      {
        if (v110 == v103)
        {
          sub_238449184(0, &qword_27DF0B0A8, 0x277D0EB80);
          v107 = v347;
          v119 = v347;

          v120 = sub_23875EC60();
          [v119 setOtherBankTransactionLocations_];

          swift_bridgeObjectRelease_n();
          v103 = v348;
          v97 = v339;
          goto LABEL_34;
        }

        if (v111)
        {
          v112 = MEMORY[0x23EE63F70](v103, v108);
        }

        else
        {
          if (v103 >= *(v109 + 16))
          {
            goto LABEL_123;
          }

          v112 = *(v108 + 8 * v103 + 32);
        }

        v104 = v112;
        v113 = v103 + 1;
        if (__OFADD__(v103, 1))
        {
          break;
        }

        v114 = v108;
        v115 = [v112 snapToResolution_];
        v116 = objc_allocWithZone(MEMORY[0x277D0EB80]);
        [v115 coordinate];
        v118 = v117;
        [v115 coordinate];
        v97 = [v116 initWithLatitude:v118 longitude:?];

        v108 = v114;
        ++v103;
        v104 = v350;
        if (v97)
        {

          MEMORY[0x23EE63730]();
          if (*((v351 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v351 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_23875EC90();
          }

          sub_23875ECB0();
          v330 = v351;
          v103 = v113;
        }
      }

      __break(1u);
LABEL_123:
      __break(1u);
LABEL_124:
      if (!sub_23875F3A0())
      {
        break;
      }

      v351 = MEMORY[0x277D84F90];
      v110 = sub_23875F3A0();
    }
  }

LABEL_34:
  sub_23875A2F0();
  v122 = v337;
  v121 = v338;
  v123 = (*(v337 + 48))(v104, 1, v338);
  v124 = v321;
  v329 = v108;
  if (v123 == 1)
  {
    sub_238439884(v104, &qword_27DF0A928, &qword_238766270);
  }

  else
  {
    (*(v122 + 32))(v103, v104, v121);
    sub_238759EB0();
    if (v125)
    {
      v126 = v107;

      v127 = sub_23875EA50();
      [v126 setMerchantCode_];

      v103 = v348;
      swift_bridgeObjectRelease_n();
    }

    sub_238759F20();
    if (v128)
    {
      v129 = v107;

      v130 = sub_23875EA50();
      [v129 setRawMerchantCode_];

      v103 = v348;
      swift_bridgeObjectRelease_n();
    }

    sub_238759EC0();
    if (v131)
    {
      v132 = v107;

      v133 = sub_23875EA50();
      [v132 setMerchantType_];

      v103 = v348;
      swift_bridgeObjectRelease_n();
    }

    sub_238759F40();
    if (v134)
    {
      v135 = v107;

      v136 = sub_23875EA50();
      [v135 setIndustryCategory_];

      v103 = v348;
      swift_bridgeObjectRelease_n();
    }

    v137 = sub_238759E90();
    if ((v137 & 0x10000) == 0)
    {
      v138 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithShort_];
      v139 = v107;
      [v139 setIndustryCode_];
    }

    sub_238759FA0();
    if (v140)
    {
      v141 = v107;

      v142 = sub_23875EA50();
      [v141 setMerchantCountryCode_];

      v103 = v348;
      swift_bridgeObjectRelease_n();
    }

    sub_238759F90();
    if (v143)
    {
      v144 = v107;

      v145 = sub_23875EA50();
      [v144 setTerminalId_];

      v103 = v348;
      swift_bridgeObjectRelease_n();
    }

    sub_238759FC0();
    if (v146)
    {
      v147 = v107;

      v148 = sub_23875EA50();
      [v147 setMerchantAdditionalData_];

      v103 = v348;
      swift_bridgeObjectRelease_n();
    }

    sub_238759EF0();
    if (v149)
    {
      v150 = v107;

      v151 = sub_23875EA50();
      [v150 setPaymentNetwork_];

      v103 = v348;
      swift_bridgeObjectRelease_n();
    }

    v152 = sub_238759F50();
    if (v152 != 2)
    {
      v153 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
      v154 = v107;
      [v154 setCoarseLocationUsed_];
    }

    v155 = v306;
    sub_23875A000();
    sub_23849C3DC(v155, v97);
    v156 = v307;
    v157 = v308;
    if ((*(v307 + 48))(v97, 1, v308) == 1)
    {
      sub_238439884(v155, &unk_27DF0B070, &unk_238766290);
    }

    else
    {
      v158 = v97;
      v159 = v299;
      (*(v156 + 32))(v299, v158, v157);
      sub_238449184(0, &qword_27DF0A960, 0x277CE41F8);
      (*(v156 + 16))(v298, v159, v157);
      v160 = sub_23875EF70();
      v161 = v156;
      v162 = v160;
      (*(v161 + 8))(v159, v157);
      sub_238439884(v155, &unk_27DF0B070, &unk_238766290);
      v163 = [objc_allocWithZone(MEMORY[0x277D0EB80]) initWithCLLocation_];
      if (!v163)
      {
        __break(1u);
        goto LABEL_127;
      }

      v164 = v163;

      v165 = v107;
      [v165 setLocation_];
    }

    sub_238759F70();
    if (v166)
    {
      v167 = v107;

      v168 = sub_23875EA50();
      [v167 setMerchantId_];

      v103 = v348;
      swift_bridgeObjectRelease_n();
    }

    sub_238759F00();
    if (v169)
    {
      v170 = v107;

      v171 = sub_23875EA50();
      [v170 setMerchantCanl_];

      v103 = v348;
      swift_bridgeObjectRelease_n();
    }

    sub_238759F10();
    if (v172)
    {
      v173 = v107;

      v174 = sub_23875EA50();
      [v173 setMerchantRawCity_];

      v103 = v348;
      swift_bridgeObjectRelease_n();
    }

    sub_238759F60();
    if (v175)
    {
      v176 = v107;

      v177 = sub_23875EA50();
      [v176 setMerchantRawState_];

      v103 = v348;
      swift_bridgeObjectRelease_n();
    }

    sub_238759EA0();
    if (v178)
    {
      v179 = v107;

      v180 = sub_23875EA50();
      [v179 setMerchantCity_];

      v103 = v348;
      swift_bridgeObjectRelease_n();
    }

    sub_238759E70();
    if (v181)
    {
      v182 = v107;

      v183 = sub_23875EA50();
      [v182 setMerchantZip_];

      v103 = v348;
      swift_bridgeObjectRelease_n();
    }

    sub_238759ED0();
    if (v184)
    {
      v185 = v107;

      v186 = sub_23875EA50();
      [v185 setMerchantState_];

      v103 = v348;
      swift_bridgeObjectRelease_n();
    }

    v187 = sub_238759FD0();
    if ((v187 & 0x10000) == 0)
    {
      v188 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithShort_];
      v189 = v107;
      [v189 setMerchantCleanConfidenceLevel_];
    }

    v190 = sub_238759EE0();
    if ((v191 & 1) == 0)
    {
      v351 = v190;
      sub_23875F600();
      v192 = v107;

      v193 = sub_23875EA50();
      [v192 setAdamId_];

      v103 = v348;
      swift_bridgeObjectRelease_n();
    }

    v194 = v301;
    sub_238759FE0();
    v195 = sub_23875B940();
    v196 = *(v195 - 8);
    if ((*(v196 + 48))(v194, 1, v195) == 1)
    {
      sub_238439884(v194, &qword_27DF0D040, &qword_2387676A0);
    }

    else
    {
      sub_23875B820();
      (*(v196 + 8))(v194, v195);
      v197 = v107;

      v198 = sub_23875EA50();
      [v197 setWarsawMerchantDomain_];

      v103 = v348;
      swift_bridgeObjectRelease_n();
    }

    sub_238759F30();
    if (v199)
    {
      v200 = v107;

      v201 = sub_23875EA50();
      [v200 setWarsawMerchantName_];

      v103 = v348;
      swift_bridgeObjectRelease_n();
    }

    sub_238759FB0();
    if (v202)
    {
      v203 = v103;
      v204 = v107;

      v205 = sub_23875EA50();
      [v204 setWarsawMerchantId_];

      swift_bridgeObjectRelease_n();
      (*(v337 + 8))(v203, v338);
    }

    else
    {
      (*(v337 + 8))(v103, v338);
    }
  }

  v206 = v336;
  v207 = v318;
  sub_23875A340();
  v208 = *(v206 + 48);
  if (v208(v207, 1, v342) != 1)
  {
    v209 = v342;
    (*(v206 + 32))(v346, v207, v342);
    v210 = v206;
    v211 = [objc_allocWithZone(MEMORY[0x277CD4F70]) init];
    [v107 setBankMerchantInfo_];

    v212 = v302;
    sub_23875A340();
    if (v208(v212, 1, v209) == 1)
    {
      sub_238439884(v212, &unk_27DF0B060, &unk_238767670);
LABEL_96:
      v222 = sub_23875A880();
      if (v222)
      {
        v223 = v222;
        v224 = [v222 street];

        sub_23875EA80();
        v225 = v107;

        v226 = [v225 bankMerchantInfo];
        v227 = sub_23875EA50();
        [v226 setBankMerchantAddress_];

        swift_bridgeObjectRelease_n();
      }

      v228 = sub_23875A880();
      if (v228)
      {
        v229 = v228;
        v230 = [v228 postalCode];

        sub_23875EA80();
        v231 = v107;

        v232 = [v231 bankMerchantInfo];
        v233 = sub_23875EA50();
        [v232 setBankMerchantZip_];

        swift_bridgeObjectRelease_n();
      }

      v234 = sub_23875A880();
      if (v234)
      {
        v235 = v234;
        v236 = [v234 city];

        sub_23875EA80();
        v237 = v107;

        v238 = [v237 bankMerchantInfo];
        v239 = sub_23875EA50();
        [v238 setBankMerchantCity_];

        swift_bridgeObjectRelease_n();
      }

      v240 = sub_23875A880();
      if (v240)
      {
        v241 = v240;
        v242 = [v240 state];

        sub_23875EA80();
        v243 = v107;

        v244 = [v243 bankMerchantInfo];
        v245 = sub_23875EA50();
        [v244 setBankMerchantState_];

        swift_bridgeObjectRelease_n();
      }

      v246 = sub_23875A880();
      if (v246)
      {
        v247 = v246;
        v248 = [v246 ISOCountryCode];

        sub_23875EA80();
        v249 = v107;

        v250 = [v249 bankMerchantInfo];
        v251 = sub_23875EA50();
        [v250 setBankMerchantCountryCode_];

        swift_bridgeObjectRelease_n();
      }

      v252 = sub_23875A890();
      if ((v252 & 0x10000) == 0 && v252)
      {
        v253 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithShort_];
        [v107 setBankIndustryCode_];
      }

      (*(v336 + 8))(v346, v342);
      goto LABEL_110;
    }

    v213 = sub_23875A870();
    v215 = v214;
    (*(v210 + 8))(v212, v342);
    if (!v215)
    {
      goto LABEL_96;
    }

    sub_23875A310();
    __swift_project_boxed_opaque_existential_1(v295, v295[3]);
    v351 = v213;
    v352 = v215;
    v216 = v296;
    sub_238758020();
    v217 = v334;
    v218 = v332(v216, v334);
    if (v218 == v331)
    {

      (*(v341 + 8))(v216, v217);
LABEL_95:
      v219 = v107;

      v220 = [v219 bankMerchantInfo];
      v221 = sub_23875EA50();
      [v220 setBankMerchantEnhancedName_];

      swift_bridgeObjectRelease_n();
      goto LABEL_96;
    }

    if (v218 == *MEMORY[0x277CC7718])
    {

      (*(v341 + 96))(v216, v217);
      LODWORD(v344) = 1;
      goto LABEL_95;
    }

LABEL_127:
    result = sub_23875F520();
    __break(1u);
    return result;
  }

  sub_238439884(v207, &unk_27DF0B060, &unk_238767670);
LABEL_110:
  v254 = (v349 + OBJC_IVAR____TtC12FinanceKitUI38BankConnectMerchantLookupRequestSource_deviceIdentityProvider);
  __swift_project_boxed_opaque_existential_1((v349 + OBJC_IVAR____TtC12FinanceKitUI38BankConnectMerchantLookupRequestSource_deviceIdentityProvider), *(v349 + OBJC_IVAR____TtC12FinanceKitUI38BankConnectMerchantLookupRequestSource_deviceIdentityProvider + 24));
  if (sub_238759880())
  {
    v255 = [v347 bankTransactionDescription];
    sub_23875EA80();

    v256 = v303;
    sub_23875EAC0();
    v257 = sub_23875EA90();
    v259 = v258;

    (*(v304 + 8))(v256, v305);
    if (v259 >> 60 != 15)
    {
      __swift_project_boxed_opaque_existential_1(v254, v254[3]);
      v260 = v297;
      sub_238759890();
      if (v260)
      {
        sub_23875C120();
        v261 = v260;
        v262 = sub_23875C1B0();
        v263 = sub_23875EFE0();

        if (os_log_type_enabled(v262, v263))
        {
          v264 = swift_slowAlloc();
          v265 = swift_slowAlloc();
          *v264 = 138412290;
          v266 = v260;
          v267 = _swift_stdlib_bridgeErrorToNSError();
          *(v264 + 4) = v267;
          *v265 = v267;
          _os_log_impl(&dword_2383F8000, v262, v263, "Could not generate BAA identity %@", v264, 0xCu);
          sub_238439884(v265, &qword_27DF09930, &unk_2387638C0);
          MEMORY[0x23EE64DF0](v265, -1, -1);
          MEMORY[0x23EE64DF0](v264, -1, -1);
          sub_23844C940(v257, v259);
        }

        else
        {
          sub_23844C940(v257, v259);
        }

        (*(v316 + 8))(v300, v317);
      }

      else
      {
        sub_2387598A0();
        v268 = sub_23875EC60();

        v269 = v347;
        [v347 setBaaCerts_];

        v270 = sub_2387598B0();
        v272 = v271;
        v273 = sub_23875B980();
        sub_23844C954(v270, v272);
        [v269 setBaaSignature_];

        sub_23844C940(v257, v259);
        (*(v293 + 8))(v124, v294);
      }
    }
  }

  v274 = objc_allocWithZone(MEMORY[0x277CCABB0]);
  v275 = v344;
  v276 = [v274 initWithBool_];
  v277 = v347;
  [v347 setPiiRedactionOccurred_];

  if (*(v349 + OBJC_IVAR____TtC12FinanceKitUI38BankConnectMerchantLookupRequestSource_networkEventRecorder))
  {
    LODWORD(v344) = v275;
    v278 = v311;
    sub_23875A300();
    sub_238758F10();
    v279 = *(v319 + 8);
    v280 = v278;
    v281 = v320;
    v279(v280, v320);
    v282 = v312;
    sub_23875A300();
    v283 = sub_238758EF0();
    v349 = v284;
    v350 = v283;
    v279(v282, v281);
    sub_23875BBF0();
    v285 = [v277 bankTransactionDescriptionClean];
    v348 = sub_23875EA80();
    v346 = v286;

    v287 = [v277 bankTransactionDescription];
    sub_23875EA80();
    v343 = v288;

    v289 = [v277 bankMerchantInfo];
    v290 = [v289 bankMerchantEnhancedName];

    sub_23875EA80();

    v291 = v313;
    sub_238758A90();
    sub_238759240();
    (*(v314 + 8))(v291, v315);
    v279(v345, v281);
  }

  else
  {
    (*(v319 + 8))(v345, v320);
  }

  return v277;
}

uint64_t type metadata accessor for BankConnectMerchantLookupRequestSource(uint64_t a1)
{
  result = qword_27DF0B050;
  if (!qword_27DF0B050)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_23849C328(uint64_t a1, uint64_t a2)
{
  result = sub_23875A350();
  if (v3 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_23849C3DC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF0B070, &unk_238766290);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_23849C494(uint64_t a1)
{
  sub_23875BC40();
  if (v1 <= 0x3F)
  {
    sub_2384A58C0(319, &qword_2814F1160, MEMORY[0x277CC9260], MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      sub_23849C598(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_23849C598(uint64_t a1)
{
  if (!qword_27DF0B0C0)
  {
    sub_238759D30();
    sub_23849CDC8(&qword_27DF0B0C8, MEMORY[0x277CC7C98], MEMORY[0x277CC7CA0]);
    v1 = sub_23875EEB0();
    if (!v2)
    {
      atomic_store(v1, &qword_27DF0B0C0);
    }
  }
}

uint64_t sub_23849C638(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 57))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 56);
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

uint64_t sub_23849C680(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 57) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 57) = 0;
    }

    if (a2)
    {
      *(result + 56) = -a2;
    }
  }

  return result;
}

unint64_t sub_23849C6EC@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_2384A47CC(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_23849C744()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12270, &qword_238765EC0);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_2387632F0;
  v3 = *(v0 + 24);
  v2 = *(v0 + 32);
  *(v1 + 56) = MEMORY[0x277D837D0];
  *(v1 + 64) = sub_238448C58(v1, v4, v5);
  *(v1 + 32) = v3;
  *(v1 + 40) = v2;
  v6 = qword_2814F0880;

  if (v6 != -1)
  {
    swift_once();
  }

  v7 = qword_2814F1B90;
  v8 = sub_23875EA50();
  v9 = sub_23875EA50();
  v10 = sub_23875EA50();
  v11 = [v7 localizedStringForKey:v8 value:v9 table:v10];

  sub_23875EA80();
  v12 = sub_23875EAA0();

  return v12;
}

uint64_t sub_23849C8C8()
{
  switch(*v0)
  {
    case 2:
    case 9:
      if (qword_2814F0880 != -1)
      {
        swift_once();
      }

      v1 = qword_2814F1B90;
      break;
    case 3:
    case 5:
      if (qword_2814F0880 != -1)
      {
        swift_once();
      }

      v1 = qword_2814F1B90;
      break;
    case 4:
    case 6:
    case 7:
    case 0xB:
    case 0xD:
      if (qword_2814F0880 != -1)
      {
        swift_once();
      }

      v1 = qword_2814F1B90;
      break;
    case 8:
    case 0xE:
      if (qword_2814F0880 != -1)
      {
        swift_once();
      }

      v1 = qword_2814F1B90;
      break;
    case 0xF:
    case 0x10:
      if (qword_2814F0880 != -1)
      {
        swift_once();
      }

      v1 = qword_2814F1B90;
      break;
    default:
      if (qword_2814F0880 != -1)
      {
        swift_once();
      }

      v1 = qword_2814F1B90;
      break;
  }

  v2 = sub_23875EA50();
  v3 = sub_23875EA50();
  v4 = sub_23875EA50();
  v5 = [v1 localizedStringForKey:v2 value:v3 table:v4];

  v6 = sub_23875EA80();
  return v6;
}

BOOL sub_23849CBE0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v5[2] = *(a1 + 32);
  v6 = *(a1 + 48);
  v3 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v3;
  v7[2] = *(a2 + 32);
  v8 = *(a2 + 48);
  return sub_2384A2554(v5, v7);
}

BOOL sub_23849CC3C(uint64_t *a1, uint64_t a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = *(a1 + 32);
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  v7 = *(a2 + 32);
  v8 = *a1 == *a2 && a1[1] == *(a2 + 8);
  if (v8 || (sub_23875F630()) && (v2 == v5 ? (v9 = v3 == v6) : (v9 = 0), v9 || (sub_23875F630()))
  {
    return v4 == v7;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_23849CCDC(_OWORD *a1, __int128 *a2)
{
  v2 = a1[1];
  v7[0] = *a1;
  v7[1] = v2;
  v3 = *a2;
  v4 = a2[1];
  v7[2] = a1[2];
  v8[0] = v3;
  v5 = a2[2];
  v8[1] = v4;
  v8[2] = v5;
  return sub_2384A23B0(v7, v8) & 1;
}

uint64_t sub_23849CD24(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  v5[0] = *a1;
  v5[1] = v2;
  v6[0] = a1[2];
  *(v6 + 9) = *(a1 + 41);
  v3 = a2[1];
  v7[0] = *a2;
  v7[1] = v3;
  v8[0] = a2[2];
  *(v8 + 9) = *(a2 + 41);
  return sub_2384A26BC(v5, v7) & 1;
}

uint64_t sub_23849CDC8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_23849CE74@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v91 = a1;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B138, &qword_2387679C8);
  MEMORY[0x28223BE20](v88);
  v90 = &v81 - v3;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B140, &qword_2387679D0);
  MEMORY[0x28223BE20](v86);
  v85 = &v81 - v4;
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B148, &qword_2387679D8);
  MEMORY[0x28223BE20](v89);
  v87 = &v81 - v5;
  v6 = type metadata accessor for RelatedEmailContents(0);
  MEMORY[0x28223BE20](v6);
  v8 = (&v81 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v9);
  v11 = (&v81 - v10);
  MEMORY[0x28223BE20](v12);
  v14 = (&v81 - v13);
  v16 = *v2;
  v15 = *(v2 + 8);
  v17 = *(v2 + 16);
  v18 = *(v2 + 24);
  v20 = *(v2 + 32);
  v19 = *(v2 + 40);
  if (!*(v2 + 56))
  {
    v42 = *(v2 + 48);
    v92 = *v2;
    v93 = v15;
    v94 = v17;
    v95 = v18;
    v96 = v20;
    v97 = v19;
    v98 = v42;

    v43 = sub_23849C8C8();
    v83 = v44;
    v84 = v43;
    v82 = sub_23849C744();
    v46 = v45;
    v47 = type metadata accessor for OrderDetailsRelatedEmailView.ViewModel(0);
    sub_23843981C(v2 + v47[8], v14 + v6[7], &qword_27DF0D040, &qword_2387676A0);
    v48 = v47[7];
    v49 = v6[8];
    v50 = sub_23875BC40();
    (*(*(v50 - 8) + 16))(v14 + v49, v2 + v48, v50);
    v51 = *(v2 + 64);
    v52 = *(v2 + 72);
    v53 = *(v2 + 80);
    v54 = *(v2 + 88);
    v55 = (v2 + v47[9]);
    v56 = *v55;
    v57 = v55[1];
    LOBYTE(v55) = *(v2 + v47[11]);
    *v14 = v15;
    v14[1] = v17;
    v58 = v83;
    v14[2] = v84;
    v14[3] = v58;
    v14[4] = v82;
    v14[5] = v46;
    v59 = (v14 + v6[9]);
    *v59 = v51;
    v59[1] = v52;
    v60 = (v14 + v6[10]);
    *v60 = v53;
    v60[1] = v54;
    v61 = (v14 + v6[11]);
    *v61 = v56;
    v61[1] = v57;
    *(v14 + v6[12]) = v55;
    *(v14 + v6[13]) = 4;
    v62 = v6[14];
    *(v14 + v62) = swift_getKeyPath(byte_2387679E0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B150, &unk_238767A10);
    swift_storeEnumTagMultiPayload();
    sub_2384A59C4(v14, v85, type metadata accessor for RelatedEmailContents);
    swift_storeEnumTagMultiPayload();
    sub_23849CDC8(&qword_27DF0B160, type metadata accessor for RelatedEmailContents, &unk_238767B20);

    v41 = v87;
    goto LABEL_5;
  }

  if (*(v2 + 56) == 1)
  {

    v21 = sub_2384A4964(v20);
    v83 = v22;
    v84 = v21;
    v82 = sub_2384A47DC(v17, v18);
    v24 = v23;
    v25 = type metadata accessor for OrderDetailsRelatedEmailView.ViewModel(0);
    sub_23843981C(v2 + v25[8], v14 + v6[7], &qword_27DF0D040, &qword_2387676A0);
    v26 = v25[7];
    v27 = v6[8];
    v28 = sub_23875BC40();
    (*(*(v28 - 8) + 16))(v14 + v27, v2 + v26, v28);
    v29 = *(v2 + 64);
    v30 = *(v2 + 72);
    v31 = *(v2 + 80);
    v32 = *(v2 + 88);
    v33 = (v2 + v25[9]);
    v34 = *v33;
    v35 = v33[1];
    LOBYTE(v33) = *(v2 + v25[11]);
    *v14 = v16;
    v14[1] = v15;
    v36 = v83;
    v14[2] = v84;
    v14[3] = v36;
    v14[4] = v82;
    v14[5] = v24;
    v37 = (v14 + v6[9]);
    *v37 = v29;
    v37[1] = v30;
    v38 = (v14 + v6[10]);
    *v38 = v31;
    v38[1] = v32;
    v39 = (v14 + v6[11]);
    *v39 = v34;
    v39[1] = v35;
    *(v14 + v6[12]) = v33;
    *(v14 + v6[13]) = 4;
    v40 = v6[14];
    *(v14 + v40) = swift_getKeyPath(byte_2387679E0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B150, &unk_238767A10);
    swift_storeEnumTagMultiPayload();
    sub_2384A59C4(v14, v85, type metadata accessor for RelatedEmailContents);
    swift_storeEnumTagMultiPayload();
    sub_23849CDC8(&qword_27DF0B160, type metadata accessor for RelatedEmailContents, &unk_238767B20);

    v41 = v87;
LABEL_5:
    sub_23875D1B0();
    sub_23843981C(v41, v90, &qword_27DF0B148, &qword_2387679D8);
    swift_storeEnumTagMultiPayload();
    sub_2384A5A2C();
    sub_23875D1B0();
    sub_238439884(v41, &qword_27DF0B148, &qword_2387679D8);
    v11 = v14;
    return sub_2384A5AE0(v11, type metadata accessor for RelatedEmailContents);
  }

  v87 = *(v2 + 40);
  if (v18)
  {
    v85 = v18;
  }

  else
  {
    v85 = v15;

    v17 = v16;
  }

  v63 = type metadata accessor for OrderDetailsRelatedEmailView.ViewModel(0);
  sub_23843981C(v2 + v63[8], v8 + v6[7], &qword_27DF0D040, &qword_2387676A0);
  v64 = v63[7];
  v65 = v6[8];
  v66 = sub_23875BC40();
  (*(*(v66 - 8) + 16))(v8 + v65, v2 + v64, v66);
  v67 = *(v2 + 64);
  v86 = *(v2 + 72);
  v68 = v86;
  v69 = *(v2 + 80);
  v70 = *(v2 + 88);
  v71 = (v2 + v63[9]);
  v72 = *v71;
  v73 = v71[1];
  LOBYTE(v71) = *(v2 + v63[11]);
  v74 = v85;
  *v8 = v17;
  v8[1] = v74;
  v75 = v87;
  v8[2] = v20;
  v8[3] = v75;
  v8[4] = 0;
  v8[5] = 0;
  v76 = (v8 + v6[9]);
  *v76 = v67;
  v76[1] = v68;
  v77 = (v8 + v6[10]);
  *v77 = v69;
  v77[1] = v70;
  v78 = (v8 + v6[11]);
  *v78 = v72;
  v78[1] = v73;
  *(v8 + v6[12]) = v71;
  *(v8 + v6[13]) = 4;
  v79 = v6[14];
  *(v8 + v79) = swift_getKeyPath(byte_2387679E0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B150, &unk_238767A10);
  swift_storeEnumTagMultiPayload();
  sub_2384A5960(v8, v11);
  sub_2384A59C4(v11, v90, type metadata accessor for RelatedEmailContents);
  swift_storeEnumTagMultiPayload();
  sub_2384A5A2C();
  sub_23849CDC8(&qword_27DF0B160, type metadata accessor for RelatedEmailContents, &unk_238767B20);

  sub_23875D1B0();
  return sub_2384A5AE0(v11, type metadata accessor for RelatedEmailContents);
}

double sub_23849D6BC(uint64_t a1)
{
  v2 = sub_23875C6D0();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v35[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D040, &qword_2387676A0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v35[-v7];
  v9 = sub_23875B940();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v35[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_23875ED50();
  v41 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v13 = type metadata accessor for RelatedEmailContents(0);
  sub_23843981C(a1 + v13[7], v8, &qword_27DF0D040, &qword_2387676A0);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_238439884(v8, &qword_27DF0D040, &qword_2387676A0);
  }

  else
  {
    v38 = v5;
    v39 = v3;
    v40 = v2;
    (*(v10 + 32))(v12, v8, v9);
    v36 = *(a1 + v13[13]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF0D3C0, &qword_238769F10);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_2387632F0;
    *(inited + 32) = sub_23875EA50();
    v15 = 1818845549;
    if (*(a1 + v13[12]))
    {
      v15 = 0x63697373616C63;
    }

    v16 = 0xE400000000000000;
    if (*(a1 + v13[12]))
    {
      v16 = 0xE700000000000000;
    }

    *(inited + 40) = v15;
    *(inited + 48) = v16;
    v17 = sub_23854B138(inited);
    v37 = a1;
    v18 = v17;
    swift_setDeallocating();
    sub_238439884(inited + 32, &unk_27DF130A0, &unk_238763810);
    v19 = swift_initStackObject();
    *(v19 + 16) = xmmword_238763300;
    v20 = *MEMORY[0x277D383D8];
    *(v19 + 32) = *MEMORY[0x277D383D8];
    *(v19 + 40) = sub_23875EA80();
    *(v19 + 48) = v21;
    v22 = *MEMORY[0x277D38390];
    *(v19 + 56) = *MEMORY[0x277D38390];
    *(v19 + 64) = 0x616D456B63696C63;
    v23 = *MEMORY[0x277D384B8];
    *(v19 + 72) = 0xEA00000000006C69;
    *(v19 + 80) = v23;
    *(v19 + 88) = sub_238449A8C(v36);
    *(v19 + 96) = v24;
    v25 = v20;
    v26 = v22;
    v27 = v23;
    v28 = sub_23854B138(v19);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF130A0, &unk_238763810);
    swift_arrayDestroy();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v42 = v28;
    sub_2385C33E4(v18, sub_2386E31DC, 0, isUniquelyReferenced_nonNull_native, &v42);

    v30 = *MEMORY[0x277D38548];
    v31 = objc_opt_self();
    type metadata accessor for PKAnalyticsKey(0);
    sub_23849CDC8(&qword_27DF09090, type metadata accessor for PKAnalyticsKey, &unk_238762110);
    v32 = sub_23875E910();

    [v31 subject:v30 sendEvent:v32];

    v33 = v38;
    sub_2384D51B0(v38);
    sub_23875C6A0();
    (*(v39 + 8))(v33, v40);
    (*(v10 + 8))(v12, v9);
  }

  return result;
}

void *sub_23849DC4C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = sub_23875CE60();
  v10 = 0;
  sub_23849DD84(a1, __src);
  memcpy(__dst, __src, sizeof(__dst));
  memcpy(v12, __src, sizeof(v12));
  sub_23843981C(__dst, v7, &qword_27DF0B1C0, &qword_238767B88);
  sub_238439884(v12, &qword_27DF0B1C0, &qword_238767B88);

  memcpy(&v9[7], __dst, 0x1E8uLL);
  v5 = v10;
  *a2 = v4;
  *(a2 + 8) = 0;
  *(a2 + 16) = v5;
  return memcpy((a2 + 17), v9, 0x1EFuLL);
}

void sub_23849DD84(uint64_t *a1@<X0>, void *a2@<X8>)
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = type metadata accessor for RelatedEmailContents(0);
  v5 = v4[10];
  v6 = (a1 + v4[9]);
  v7 = *v6;
  v8 = v6[1];
  v9 = *(a1 + v5);
  v10 = *(a1 + v5 + 8);
  v11 = (a1 + v4[11]);
  v12 = *v11;
  v13 = v11[1];

  sub_2384A4C58(v7, v8, v9, v10, v12, v13, &v26);
  v14 = sub_23875D030();
  LOBYTE(v24[0]) = 1;
  sub_23849E080(a1, __src);
  memcpy(__dst, __src, 0x139uLL);
  memcpy(v34, __src, 0x139uLL);
  sub_23843981C(__dst, v36, &qword_27DF0B1C8, &qword_238767B90);
  sub_238439884(v34, &qword_27DF0B1C8, &qword_238767B90);
  memcpy(&v32[7], __dst, 0x139uLL);
  v15 = sub_23875D7B0();
  sub_23875C3D0();
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;
  LOBYTE(__src[0]) = 0;
  LODWORD(v8) = sub_23875D420();
  v35[2] = v28;
  v35[3] = v29;
  v35[4] = v30;
  v35[5] = v31;
  v35[0] = v26;
  v35[1] = v27;
  v25[0] = v26;
  v25[1] = v27;
  v25[2] = v28;
  v25[3] = v29;
  v25[4] = v30;
  v25[5] = v31;
  v36[0] = v14;
  v36[1] = 0;
  LOBYTE(v36[2]) = 1;
  memcpy(&v36[2] + 1, v32, 0x140uLL);
  LOBYTE(v36[43]) = v15;
  v36[44] = v17;
  v36[45] = v19;
  v36[46] = v21;
  v36[47] = v23;
  LOBYTE(v36[48]) = 0;
  HIDWORD(v36[48]) = v8;
  memcpy(&v25[6], v36, 0x188uLL);
  memcpy(a2, v25, 0x1E8uLL);
  __src[0] = v14;
  __src[1] = 0;
  LOBYTE(__src[2]) = 1;
  memcpy(&__src[2] + 1, v32, 0x140uLL);
  v38 = v15;
  v39 = v17;
  v40 = v19;
  v41 = v21;
  v42 = v23;
  v43 = 0;
  v44 = v8;
  sub_2384A61B4(v35, v24);
  sub_23843981C(v36, v24, &qword_27DF0B1D0, &qword_238767B98);
  sub_238439884(__src, &qword_27DF0B1D0, &qword_238767B98);
  v24[2] = v28;
  v24[3] = v29;
  v24[4] = v30;
  v24[5] = v31;
  v24[0] = v26;
  v24[1] = v27;
  sub_2384A61EC(v24);
}

double sub_23849E080@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v3 = sub_23875CE60();
  LOBYTE(v74[0]) = 1;
  sub_23849E7D8(a1, v73);
  v84 = *&v73[128];
  v85 = *&v73[144];
  v86 = *&v73[160];
  v80 = *&v73[64];
  v81 = *&v73[80];
  v82 = *&v73[96];
  v83 = *&v73[112];
  v76 = *v73;
  v77 = *&v73[16];
  v78 = *&v73[32];
  v79 = *&v73[48];
  v88[8] = *&v73[128];
  v88[9] = *&v73[144];
  v88[10] = *&v73[160];
  v88[4] = *&v73[64];
  v88[5] = *&v73[80];
  v88[6] = *&v73[96];
  v88[7] = *&v73[112];
  v88[0] = *v73;
  v88[1] = *&v73[16];
  v87 = *&v73[176];
  v89 = *&v73[176];
  v88[2] = *&v73[32];
  v88[3] = *&v73[48];
  sub_23843981C(&v76, &v90, &qword_27DF0B1D8, &qword_238767BA0);
  v4 = sub_238439884(v88, &qword_27DF0B1D8, &qword_238767BA0);
  *&v73[135] = v84;
  *&v73[151] = v85;
  *&v73[167] = v86;
  *&v73[183] = v87;
  *&v73[71] = v80;
  *&v73[87] = v81;
  *&v73[103] = v82;
  *&v73[119] = v83;
  *&v73[7] = v76;
  *&v73[23] = v77;
  *&v73[39] = v78;
  *&v73[55] = v79;
  *(&v91[8] + 1) = *&v73[128];
  *(&v91[9] + 1) = *&v73[144];
  *(&v91[10] + 1) = *&v73[160];
  *(&v91[10] + 12) = *&v73[171];
  *(&v91[4] + 1) = *&v73[64];
  *(&v91[5] + 1) = *&v73[80];
  *(&v91[6] + 1) = *&v73[96];
  *(&v91[7] + 1) = *&v73[112];
  *(v91 + 1) = *v73;
  *(&v91[1] + 1) = *&v73[16];
  *(&v91[2] + 1) = *&v73[32];
  v90 = v3;
  LOBYTE(v91[0]) = v74[0];
  *(&v91[3] + 1) = *&v73[48];
  v7 = a1[3];
  if (!v7)
  {
    v57 = 0;
    v58 = 0;
    v51 = 0;
    v55 = 0;
    v56 = 0;
    v53 = 0;
    v21 = a1[5];
    if (v21)
    {
      goto LABEL_5;
    }

LABEL_7:
    v39 = 0;
    v54 = 0;
    v48 = 0;
    v49 = 0;
    v47 = 0;
    v52 = 0;
    goto LABEL_8;
  }

  *v73 = a1[2];
  *&v73[8] = v7;
  sub_2384397A8(v4, v5, v6);

  v8 = sub_23875DAA0();
  v10 = v9;
  v12 = v11;
  sub_23875D970();
  v13 = sub_23875DA60();
  v15 = v14;
  v17 = v16;
  v19 = v18;

  sub_2384397FC(v8, v10, v12 & 1);

  KeyPath = swift_getKeyPath(byte_238767BB0);
  v58 = v13;
  v51 = v15;
  v56 = v17 & 1;
  sub_23843980C(v13, v15, v17 & 1);
  v57 = v19;

  v53 = KeyPath;

  v55 = 1;
  v21 = a1[5];
  if (!v21)
  {
    goto LABEL_7;
  }

LABEL_5:
  *v73 = a1[4];
  *&v73[8] = v21;
  sub_2384397A8(v4, v5, v6);

  v22 = sub_23875DAA0();
  v24 = v23;
  v26 = v25;
  sub_23875D970();
  v27 = sub_23875DA60();
  v29 = v28;
  v31 = v30;

  sub_2384397FC(v22, v24, v26 & 1);

  *v73 = sub_23875D440();
  v32 = sub_23875DA20();
  v34 = v33;
  LOBYTE(v24) = v35;
  v37 = v36;
  sub_2384397FC(v27, v29, v31 & 1);

  v38 = swift_getKeyPath(byte_238767BB0);
  v39 = v32;
  v54 = v34;
  v49 = v24 & 1;
  sub_23843980C(v32, v34, v24 & 1);
  v47 = v37;

  v48 = v38;

  v52 = 1;
LABEL_8:
  v68 = v91[8];
  v69 = v91[9];
  *v70 = v91[10];
  *&v70[12] = *(&v91[10] + 12);
  v65 = v91[5];
  v66 = v91[6];
  v67 = v91[7];
  v61 = v91[1];
  v62 = v91[2];
  v63 = v91[3];
  v64 = v91[4];
  v59 = v90;
  v60 = v91[0];
  v71[9] = v91[8];
  v71[10] = v91[9];
  v72[0] = v91[10];
  *(v72 + 12) = *(&v91[10] + 12);
  v71[6] = v91[5];
  v71[7] = v91[6];
  v71[8] = v91[7];
  v71[2] = v91[1];
  v71[3] = v91[2];
  v71[4] = v91[3];
  v71[5] = v91[4];
  v71[0] = v90;
  v71[1] = v91[0];
  *&v73[160] = v91[9];
  *&v73[176] = v91[10];
  *&v73[188] = *(&v91[10] + 12);
  *&v73[96] = v91[5];
  *&v73[112] = v91[6];
  *&v73[128] = v91[7];
  *&v73[144] = v91[8];
  *&v73[32] = v91[1];
  *&v73[48] = v91[2];
  *&v73[64] = v91[3];
  *&v73[80] = v91[4];
  *v73 = v90;
  *&v73[16] = v91[0];
  sub_23843981C(&v90, v74, &qword_27DF0B1E0, &qword_238767BA8);
  sub_23843981C(v71, v74, &qword_27DF0B1E0, &qword_238767BA8);
  sub_2384A621C(v58, v51, v56, v57, v53);
  sub_2384A621C(v39, v54, v49, v47, v48);
  sub_2384A626C(v58, v51, v56, v57, v53);
  sub_2384A626C(v39, v54, v49, v47, v48);
  sub_238439884(&v90, &qword_27DF0B1E0, &qword_238767BA8);
  v40 = *&v73[176];
  *(a2 + 160) = *&v73[160];
  *(a2 + 176) = v40;
  *(a2 + 192) = *&v73[192];
  v41 = *&v73[112];
  *(a2 + 96) = *&v73[96];
  *(a2 + 112) = v41;
  v42 = *&v73[144];
  *(a2 + 128) = *&v73[128];
  *(a2 + 144) = v42;
  v43 = *&v73[48];
  *(a2 + 32) = *&v73[32];
  *(a2 + 48) = v43;
  v44 = *&v73[80];
  *(a2 + 64) = *&v73[64];
  *(a2 + 80) = v44;
  v45 = *&v73[16];
  *a2 = *v73;
  *(a2 + 16) = v45;
  *(a2 + 208) = v58;
  *(a2 + 216) = v51;
  *(a2 + 224) = v56;
  *(a2 + 232) = v57;
  *(a2 + 240) = v53;
  *(a2 + 248) = v55;
  *(a2 + 256) = 0;
  *(a2 + 264) = v39;
  *(a2 + 272) = v54;
  *(a2 + 280) = v49;
  *(a2 + 288) = v47;
  *(a2 + 296) = v48;
  *(a2 + 304) = v52;
  *(a2 + 312) = 0;
  sub_2384A626C(v39, v54, v49, v47, v48);
  sub_2384A626C(v58, v51, v56, v57, v53);
  v74[9] = v68;
  v74[10] = v69;
  v75[0] = *v70;
  *(v75 + 12) = *&v70[12];
  v74[6] = v65;
  v74[7] = v66;
  v74[8] = v67;
  v74[2] = v61;
  v74[3] = v62;
  v74[4] = v63;
  v74[5] = v64;
  v74[0] = v59;
  v74[1] = v60;
  sub_238439884(v74, &qword_27DF0B1E0, &qword_238767BA8);

  return result;
}

uint64_t sub_23849E7D8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v70 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D040, &qword_2387676A0);
  MEMORY[0x28223BE20](v3 - 8);
  v79 = &v69 - v4;
  v82 = sub_23875BA10();
  v77 = *(v82 - 8);
  MEMORY[0x28223BE20](v82);
  v76 = &v69 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = sub_23875BA40();
  v74 = *(v75 - 8);
  MEMORY[0x28223BE20](v75);
  v73 = &v69 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_23875ED50();
  v80 = sub_23875ED40();
  v69 = v7;
  sub_23875ECE0();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  v11 = a1[1];
  v92 = *a1;
  v93 = v11;
  v71 = sub_2384397A8(isCurrentExecutor, v9, v10);

  v12 = sub_23875DAA0();
  v14 = v13;
  v81 = a1;
  v16 = v15;
  sub_23875D820();
  v17 = sub_23875DA60();
  v19 = v18;
  v21 = v20;

  sub_2384397FC(v12, v14, v16 & 1);

  v22 = sub_23875DA50();
  v84 = v23;
  v85 = v22;
  v78 = v24;
  v86 = v25;
  sub_2384397FC(v17, v19, v21 & 1);

  KeyPath = swift_getKeyPath(byte_238767BB0);
  v72 = type metadata accessor for RelatedEmailContents(0);
  v26 = v73;
  sub_23875BA30();
  v27 = v76;
  sub_23875BA00();
  v28 = sub_23875BC00();
  v30 = v29;
  (*(v77 + 8))(v27, v82);
  (*(v74 + 8))(v26, v75);
  v92 = v28;
  v93 = v30;
  v31 = sub_23875DAA0();
  v33 = v32;
  LOBYTE(v27) = v34;
  sub_23875D970();
  v35 = sub_23875DA60();
  v37 = v36;
  v39 = v38;

  sub_2384397FC(v31, v33, v27 & 1);

  LODWORD(v92) = sub_23875D440();
  v77 = sub_23875DA20();
  v76 = v40;
  LODWORD(v74) = v41;
  v82 = v42;
  sub_2384397FC(v35, v37, v39 & 1);

  v75 = swift_getKeyPath(byte_238767BB0);
  v43 = v79;
  sub_23843981C(v81 + *(v72 + 28), v79, &qword_27DF0D040, &qword_2387676A0);
  v44 = sub_23875B940();
  LODWORD(v27) = (*(*(v44 - 8) + 48))(v43, 1, v44);
  sub_238439884(v43, &qword_27DF0D040, &qword_2387676A0);
  if (v27 == 1)
  {
    v45 = 0;
    v46 = 0;
    v47 = 0;
    v48 = 0;
    v81 = 0;
    LODWORD(v79) = 0;
  }

  else
  {
    v49 = sub_23875D020();
    sub_23875ED40();
    sub_23875ECE0();
    if ((swift_task_isCurrentExecutor() & 1) == 0)
    {
      swift_task_reportUnexpectedExecutor();
    }

    v50 = sub_23875E0D0();
    v51 = sub_23875D970();
    v48 = swift_getKeyPath(byte_238767BE0);
    LODWORD(v79) = sub_23875D430();

    v47 = v50;

    v81 = v51;

    v46 = 1;
    v45 = v49;
  }

  LOBYTE(v92) = v78 & 1;
  v91 = v78 & 1;
  v90 = 0;
  v89 = 1;
  v52 = v74 & 1;
  v88 = v74 & 1;
  v78 = v74 & 1;
  v87 = 0;
  sub_23843980C(v85, v84, v92);

  v53 = KeyPath;

  v54 = v77;
  v55 = v76;
  sub_23843980C(v77, v76, v52);

  v56 = v75;

  v57 = v48;
  v58 = v81;
  v59 = v48;
  v60 = v79;
  sub_2384A62BC(v45, 0, v46, v47, v57, v81);
  sub_2384A630C(v45, 0, v46, v47, v59, v58);
  v61 = v91;
  v62 = v90;
  v63 = v89;
  v64 = v88;
  v65 = v87;
  v66 = v84;
  v67 = v70;
  *v70 = v85;
  v67[1] = v66;
  *(v67 + 16) = v61;
  v67[3] = v86;
  v67[4] = v53;
  v67[5] = 1;
  *(v67 + 48) = v62;
  v67[7] = 0;
  *(v67 + 64) = v63;
  v67[9] = v54;
  v67[10] = v55;
  *(v67 + 88) = v64;
  v67[12] = v82;
  v67[13] = v56;
  v67[14] = 1;
  *(v67 + 120) = v65;
  v67[16] = v45;
  v67[17] = 0;
  v67[18] = v46;
  v67[19] = v47;
  v67[20] = v59;
  v67[21] = v58;
  *(v67 + 44) = v60;
  sub_2384A630C(v45, 0, v46, v47, v59, v58);
  sub_2384397FC(v54, v55, v78);

  sub_2384397FC(v85, v84, v92);
}

uint64_t sub_23849EF68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = v2;
  v23 = a2;
  v5 = sub_23875C950();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a1 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v11);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B198, &qword_238767B70);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v22 - v14;
  sub_2384A59C4(v4, &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for RelatedEmailContents);
  v16 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v17 = swift_allocObject();
  sub_2384A5960(&v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v17 + v16);
  v24 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B1A0, &qword_238767B78);
  sub_23843A3E8(&qword_27DF0B1A8, &qword_27DF0B1A0, &qword_238767B78, MEMORY[0x277CE1138]);
  sub_23875E200();
  sub_23875C940();
  sub_23843A3E8(&qword_27DF0B1B0, &qword_27DF0B198, &qword_238767B70, MEMORY[0x277CDF028]);
  sub_23849CDC8(&qword_27DF0A778, MEMORY[0x277CDDB18], MEMORY[0x277CDDB08]);
  v18 = v23;
  sub_23875DB30();
  (*(v6 + 8))(v8, v5);
  (*(v13 + 8))(v15, v12);
  v19 = sub_23875D000();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B1B8, &qword_238767B80);
  v21 = (v18 + *(result + 36));
  *v21 = v19;
  v21[1] = sub_23849EF60;
  v21[2] = 0;
  return result;
}

uint64_t sub_23849F2F0@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A890, &qword_238766090);
  MEMORY[0x28223BE20](v4);
  v6 = (v31 - v5);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B200, &qword_238767DA8);
  MEMORY[0x28223BE20](v7);
  v9 = v31 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B208, &qword_238767DB0);
  MEMORY[0x28223BE20](v10);
  v12 = (v31 - v11);
  v32 = *(v1 + 16);
  *&v33 = *(v1 + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B210, &qword_238767DB8);
  sub_23875E1B0();
  v13 = v36;
  if (v36 == 255)
  {
    v31[0] = sub_23875E020();
    KeyPath = swift_getKeyPath("@,{E");
    v21 = swift_allocObject();
    v22 = v2[3];
    v21[3] = v2[2];
    v21[4] = v22;
    v23 = v2[5];
    v21[5] = v2[4];
    v21[6] = v23;
    v24 = v2[1];
    v21[1] = *v2;
    v21[2] = v24;
    v25 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A880, &qword_238766080) + 36);
    v31[1] = a1;
    v26 = (v6 + v25);
    sub_23875C6E0();
    sub_2384A61B4(v2, &v32);
    sub_23875ED60();
    *v26 = &unk_238767DF8;
    v26[1] = v21;
    v27 = v31[0];
    *v6 = KeyPath;
    v6[1] = v27;
    sub_23875E4A0();
    sub_23875C5C0();
    v28 = (v6 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A888, &qword_238766088) + 36));
    v29 = v33;
    *v28 = v32;
    v28[1] = v29;
    v28[2] = v34;
    *(v6 + *(v4 + 36)) = 257;
    sub_23843981C(v6, v9, &qword_27DF0A890, &qword_238766090);
    swift_storeEnumTagMultiPayload();
    sub_23843A3E8(&qword_27DF0B218, &qword_27DF0B208, &qword_238767DB0, MEMORY[0x277CE11A8]);
    sub_2384A6738(&qword_27DF0A8E0, &qword_27DF0A890, &qword_238766090, sub_23847E248);
    sub_23875D1B0();
    v17 = v6;
    v18 = &qword_27DF0A890;
    v19 = &qword_238766090;
  }

  else
  {
    v14 = v35;
    *v12 = sub_23875E490();
    v12[1] = v15;
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B220, &qword_238767E00);
    sub_23849F734(v2, v14, v13 & 1, v12 + *(v16 + 44));
    sub_23843981C(v12, v9, &qword_27DF0B208, &qword_238767DB0);
    swift_storeEnumTagMultiPayload();
    sub_23843A3E8(&qword_27DF0B218, &qword_27DF0B208, &qword_238767DB0, MEMORY[0x277CE11A8]);
    sub_2384A6738(&qword_27DF0A8E0, &qword_27DF0A890, &qword_238766090, sub_23847E248);
    sub_23875D1B0();
    sub_23845B254(v14, v13);
    v17 = v12;
    v18 = &qword_27DF0B208;
    v19 = &qword_238767DB0;
  }

  return sub_238439884(v17, v18, v19);
}

void sub_23849F734(uint64_t a1@<X0>, void *a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v40.i64[0] = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B228, &qword_238767E08);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = (v39 - v8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B230, &qword_238767E10);
  MEMORY[0x28223BE20](v10);
  v12 = v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = v39 - v14;
  MEMORY[0x28223BE20](v16);
  v18 = v39 - v17;
  sub_23875ED50();
  v39[1] = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_23849FB44(a2, a3 & 1, v9);
  v50[0] = *(a1 + 88);
  if (v50[0])
  {
    v19 = 0.9;
  }

  else
  {
    v19 = 1.0;
  }

  sub_23843981C(v50, v45, &qword_27DF0B238, &qword_238767E18);
  sub_23875E560();
  v21 = v20;
  v23 = v22;
  sub_2384396E4(v9, v15, &qword_27DF0B228, &qword_238767E08);
  v24 = &v15[*(v10 + 36)];
  *v24 = v19;
  *(v24 + 1) = v19;
  *(v24 + 2) = v21;
  *(v24 + 3) = v23;
  v25 = v18;
  sub_2384396E4(v15, v18, &qword_27DF0B230, &qword_238767E10);
  if (v50[0])
  {
    sub_23868852C(v50[0], v49, *a1, *(a1 + 8));
    v26 = v49[0];
    v27 = v49[1];
    v28 = v49[2];
    v29 = v49[3];
    v30 = v49[4];
    sub_238439884(v50, &qword_27DF0B238, &qword_238767E18);
  }

  else
  {
    v26 = 0;
    v27 = 0;
    v28 = 0;
    v29 = 0;
    v30 = 0;
  }

  sub_23875E580();
  v32 = v31;
  v34 = v33;
  sub_23843981C(v25, v12, &qword_27DF0B230, &qword_238767E10);
  v35 = v40.i64[0];
  sub_23843981C(v12, v40.i64[0], &qword_27DF0B230, &qword_238767E10);
  v36 = v35 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B240, &qword_238767E20) + 48);
  *&v41 = v26;
  *(&v41 + 1) = v27;
  *&v42 = v28;
  *(&v42 + 1) = v29;
  *v43 = v30;
  v40 = vdupq_n_s64(0x3FDD70A3D70A3D71uLL);
  *&v43[8] = v40;
  *&v43[24] = v32;
  v44 = v34;
  v37 = v42;
  *v36 = v41;
  *(v36 + 16) = v37;
  v38 = *&v43[16];
  *(v36 + 32) = *v43;
  *(v36 + 48) = v38;
  *(v36 + 64) = v44;
  sub_23843981C(&v41, v45, &qword_27DF0B248, &qword_238767E28);
  sub_238439884(v25, &qword_27DF0B230, &qword_238767E10);
  v45[0] = v26;
  v45[1] = v27;
  v45[2] = v28;
  v45[3] = v29;
  v45[4] = v30;
  v46 = v40;
  v47 = v32;
  v48 = v34;
  sub_238439884(v45, &qword_27DF0B248, &qword_238767E28);
  sub_238439884(v12, &qword_27DF0B230, &qword_238767E10);
}

id sub_23849FB44@<X0>(void *a1@<X0>, char a2@<W1>, void *a3@<X8>)
{
  v53 = a3;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B250, &qword_238767E30);
  MEMORY[0x28223BE20](v52);
  v51 = &v48 - v5;
  v6 = sub_23875E0E0();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B258, &unk_238767E38);
  MEMORY[0x28223BE20](v10);
  v12 = &v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v48 - v14;
  MEMORY[0x28223BE20](v16);
  v18 = &v48 - v17;
  if ((a2 & 1) == 0)
  {
    v36 = a1;
    sub_23875E0C0();
    (*(v7 + 104))(v9, *MEMORY[0x277CE0FE0], v6);
    v50 = sub_23875E150();

    (*(v7 + 8))(v9, v6);
    sub_23875E4A0();
    sub_23875C5C0();
    v49 = v56;
    v37 = v57;
    v38 = v58;
    v39 = v59;
    v40 = v60;
    v41 = v61;
    v55 = v57;
    v54 = v59;
    v42 = &v18[*(v10 + 36)];
    v43 = *(sub_23875C980() + 20);
    v44 = *MEMORY[0x277CE0118];
    v45 = sub_23875CF50();
    (*(*(v45 - 8) + 104))(&v42[v43], v44, v45);
    __asm { FMOV            V0.2D, #8.0 }

    *v42 = _Q0;
    *&v42[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09A88, &qword_238764220) + 36)] = 256;
    v47 = v49;
    *v18 = v50;
    *(v18 + 1) = v47;
    v18[16] = v37;
    *(v18 + 3) = v38;
    v18[32] = v39;
    *(v18 + 5) = v40;
    *(v18 + 6) = v41;
    *(v18 + 28) = 257;
    sub_23843981C(v18, v51, &qword_27DF0B258, &unk_238767E38);
    swift_storeEnumTagMultiPayload();
    sub_2384A6654();
    sub_23875D1B0();
    v35 = v18;
    return sub_238439884(v35, &qword_27DF0B258, &unk_238767E38);
  }

  sub_2387588A0();
  result = PKMapsIconForMerchantCategory();
  if (result)
  {
    sub_23875E0C0();
    (*(v7 + 104))(v9, *MEMORY[0x277CE0FE0], v6);
    v50 = sub_23875E150();

    (*(v7 + 8))(v9, v6);
    sub_23875E4A0();
    sub_23875C5C0();
    v20 = v57;
    v21 = v58;
    v22 = v59;
    v23 = v60;
    v48 = v61;
    v49 = v56;
    v55 = v57;
    v54 = v59;
    v24 = &v12[*(v10 + 36)];
    v25 = *(sub_23875C980() + 20);
    v26 = *MEMORY[0x277CE0118];
    v27 = sub_23875CF50();
    (*(*(v27 - 8) + 104))(&v24[v25], v26, v27);
    __asm { FMOV            V0.2D, #8.0 }

    *v24 = _Q0;
    *&v24[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09A88, &qword_238764220) + 36)] = 256;
    v33 = v49;
    *v12 = v50;
    *(v12 + 1) = v33;
    v12[16] = v20;
    *(v12 + 3) = v21;
    v12[32] = v22;
    v34 = v48;
    *(v12 + 5) = v23;
    *(v12 + 6) = v34;
    *(v12 + 28) = 257;
    sub_2384396E4(v12, v15, &qword_27DF0B258, &unk_238767E38);
    sub_23843981C(v15, v51, &qword_27DF0B258, &unk_238767E38);
    swift_storeEnumTagMultiPayload();
    sub_2384A6654();
    sub_23875D1B0();
    v35 = v15;
    return sub_238439884(v35, &qword_27DF0B258, &unk_238767E38);
  }

  __break(1u);
  return result;
}

uint64_t sub_2384A00DC(uint64_t a1)
{
  v1[7] = a1;
  v1[8] = sub_23875ED50();
  v1[9] = sub_23875ED40();
  v1[10] = sub_23875ED40();
  v2 = swift_task_alloc();
  v1[11] = v2;
  *v2 = v1;
  v2[1] = sub_2384A0194;

  return sub_2384A0644();
}

uint64_t sub_2384A0194(uint64_t a1)
{
  v2 = *v1;
  v2[12] = a1;

  v4 = sub_23875ECE0();
  v2[13] = v4;
  v2[14] = v3;

  return MEMORY[0x2822009F8](sub_2384A02E0, v4, v3);
}

uint64_t sub_2384A02E0()
{
  if (v0[12])
  {

    v0[17] = v0[12];
    v2 = sub_23875ECE0();

    return MEMORY[0x2822009F8](sub_2384A0588, v2, v1);
  }

  else
  {
    v3 = swift_task_alloc();
    v0[15] = v3;
    *v3 = v0;
    v3[1] = sub_2384A03D8;

    return sub_2384A0B94();
  }
}

uint64_t sub_2384A03D8(uint64_t a1)
{
  v2 = *v1;
  *(*v1 + 128) = a1;

  v3 = *(v2 + 112);
  v4 = *(v2 + 104);

  return MEMORY[0x2822009F8](sub_2384A0500, v4, v3);
}

uint64_t sub_2384A0500()
{

  *(v0 + 136) = *(v0 + 128);
  v2 = sub_23875ECE0();

  return MEMORY[0x2822009F8](sub_2384A0588, v2, v1);
}

uint64_t sub_2384A0588()
{
  v1 = *(v0 + 136);
  v2 = *(v0 + 96);
  v3 = *(v0 + 56);

  v4 = *(v3 + 16);
  *(v0 + 32) = *(v3 + 32);
  *(v0 + 16) = v4;
  *(v0 + 40) = v1;
  *(v0 + 48) = v2 == 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B210, &qword_238767DB8);
  sub_23875E1C0();
  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_2384A0644()
{
  v1[2] = v0;
  v2 = sub_23875C1E0();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  sub_23875ED50();
  v1[6] = sub_23875ED40();
  v4 = sub_23875ECE0();
  v1[7] = v4;
  v1[8] = v3;

  return MEMORY[0x2822009F8](sub_2384A0738, v4, v3);
}

uint64_t sub_2384A0738()
{
  v1 = v0[2];
  sub_2387579D0();
  v0[9] = sub_2387579A0();
  v2 = *(v1 + 56);
  v3 = *(v1 + 64);
  v4 = swift_task_alloc();
  v0[10] = v4;
  *v4 = v0;
  v4[1] = sub_2384A07FC;

  return MEMORY[0x282116E08](v2, v3, 1);
}

uint64_t sub_2384A07FC(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v4[11] = a1;
  v4[12] = a2;
  v4[13] = v2;

  if (v2)
  {
    v5 = v4[7];
    v6 = v4[8];
    v7 = sub_2384A09F4;
  }

  else
  {

    v5 = v4[7];
    v6 = v4[8];
    v7 = sub_2384A091C;
  }

  return MEMORY[0x2822009F8](v7, v5, v6);
}

uint64_t sub_2384A091C()
{
  v1 = v0[12];

  if (v1 >> 60 == 15)
  {
    v2 = 0;
  }

  else
  {
    v4 = v0[11];
    v3 = v0[12];
    v5 = objc_allocWithZone(MEMORY[0x277D755B8]);
    v6 = sub_23875B980();
    v2 = [v5 initWithData_];

    sub_23844C940(v4, v3);
  }

  v7 = v0[1];

  return v7(v2);
}

uint64_t sub_2384A09F4()
{
  v1 = v0[13];

  sub_23875C150();
  v2 = v1;
  v3 = sub_23875C1B0();
  v4 = sub_23875EFE0();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[13];
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_2383F8000, v3, v4, "Could not generate icon for mail item: %@", v7, 0xCu);
    sub_238439884(v8, &qword_27DF09930, &unk_2387638C0);
    MEMORY[0x23EE64DF0](v8, -1, -1);
    MEMORY[0x23EE64DF0](v7, -1, -1);
  }

  else
  {
  }

  (*(v0[4] + 8))(v0[5], v0[3]);

  v11 = v0[1];

  return v11(0);
}

uint64_t sub_2384A0B94()
{
  v1[3] = v0;
  v2 = sub_23875C1E0();
  v1[4] = v2;
  v1[5] = *(v2 - 8);
  v1[6] = swift_task_alloc();
  v1[7] = sub_23875ED50();
  v1[8] = sub_23875ED40();
  v4 = sub_23875ECE0();
  v1[9] = v4;
  v1[10] = v3;

  return MEMORY[0x2822009F8](sub_2384A0C8C, v4, v3);
}

uint64_t sub_2384A0C8C()
{
  v1 = v0[3];
  v2 = [objc_allocWithZone(MEMORY[0x277D81650]) init];
  v0[11] = v2;
  v3 = sub_23875ED40();
  v0[12] = v3;
  v4 = swift_task_alloc();
  v0[13] = v4;
  *(v4 + 16) = v2;
  *(v4 + 24) = v1;
  v5 = swift_task_alloc();
  v0[14] = v5;
  type metadata accessor for PKMerchantCategory(0);
  *v5 = v0;
  v5[1] = sub_2384A0DC4;
  v7 = MEMORY[0x277D85700];

  return MEMORY[0x2822008A0](v0 + 2, v3, v7, 0xD000000000000010, 0x8000000238787F10, sub_2384A67BC, v4, v6);
}

uint64_t sub_2384A0DC4()
{
  v2 = *v1;
  *(*v1 + 120) = v0;

  if (v0)
  {
    v3 = *(v2 + 72);
    v4 = *(v2 + 80);
    v5 = sub_2384A0F64;
  }

  else
  {

    v3 = *(v2 + 72);
    v4 = *(v2 + 80);
    v5 = sub_2384A0EE8;
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

uint64_t sub_2384A0EE8()
{

  v1 = *(v0 + 16);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_2384A0F64()
{
  v1 = v0[15];
  v2 = v0[11];

  sub_23875C150();
  v3 = v1;
  v4 = sub_23875C1B0();
  v5 = sub_23875EFE0();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[15];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_2383F8000, v4, v5, "Could not generate category for mail item: %@", v8, 0xCu);
    sub_238439884(v9, &qword_27DF09930, &unk_2387638C0);
    MEMORY[0x23EE64DF0](v9, -1, -1);
    MEMORY[0x23EE64DF0](v8, -1, -1);
  }

  else
  {
  }

  (*(v0[5] + 8))(v0[6], v0[4]);

  v12 = v0[1];

  return v12(0);
}

void sub_2384A1118(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09BC8, &unk_2387645D0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = aBlock - v7;
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v9 = sub_23875EA50();
  (*(v6 + 16))(v8, a1, v5);
  v10 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v11 = swift_allocObject();
  (*(v6 + 32))(v11 + v10, v8, v5);
  aBlock[4] = sub_23845B2A4;
  aBlock[5] = v11;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_23848C708;
  aBlock[3] = &block_descriptor_4;
  v12 = _Block_copy(aBlock);

  [a2 getPKCategoryForDomain:v9 completion:v12];
  _Block_release(v12);
}

uint64_t sub_2384A138C@<X0>(void *a1@<X0>, int a2@<W1>, int a3@<W2>, uint64_t a4@<X8>)
{
  LODWORD(v86) = a3;
  LODWORD(v85) = a2;
  v6 = sub_2387583E0();
  MEMORY[0x28223BE20](v6 - 8);
  v88 = &v73 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = sub_238758450();
  v90 = *(v87 - 8);
  MEMORY[0x28223BE20](v87);
  v89 = &v73 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v73 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D040, &qword_2387676A0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v73 - v13;
  v15 = type metadata accessor for OrderDetailsRelatedEmailView.ViewModel(0);
  v16 = *(v15 - 1);
  MEMORY[0x28223BE20](v15);
  v18 = &v73 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *(v19 + 32);
  v21 = sub_23875B940();
  (*(*(v21 - 8) + 56))(&v18[v20], 1, 1, v21);
  v22 = sub_23875EA50();
  v23 = [a1 valueForKey_];

  if (v23)
  {
    sub_23875F2E0();
    swift_unknownObjectRelease();
  }

  else
  {
    v92 = 0u;
    v93 = 0u;
  }

  v94[0] = v92;
  v94[1] = v93;
  if (!*(&v93 + 1))
  {

    sub_238439884(v94, &qword_27DF0A4A8, &qword_238767840);
LABEL_10:
    sub_238439884(&v18[v20], &qword_27DF0D040, &qword_2387676A0);
    return (*(v16 + 56))(a4, 1, 1, v15);
  }

  sub_238759690();
  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_10;
  }

  v83 = v16;
  v84 = a4;
  v24 = v91;
  v25 = [v91 messageID];
  v26 = sub_23875EA80();
  v28 = v27;

  *(v18 + 8) = v26;
  *(v18 + 9) = v28;
  v79 = v28;
  v29 = [v24 fromEmailAddress];
  v30 = sub_23875EA80();
  v32 = v31;

  *(v18 + 10) = v30;
  *(v18 + 11) = v32;
  v77 = v32;
  v33 = [v24 dateSent];
  v78 = v15[7];
  sub_23875BBE0();

  sub_238759670();
  sub_2384A475C(v14, &v18[v20]);
  v34 = [v24 senderDomain];
  v35 = sub_23875EA80();
  v37 = v36;

  v38 = &v18[v15[9]];
  *v38 = v35;
  v38[1] = v37;
  v39 = sub_238759680();
  sub_23851EAE0(sub_2384A68C0, 0, v39);
  v41 = v40;

  v42 = sub_2384A2EE0(v41);

  *&v18[v15[10]] = v42;
  v18[v15[11]] = v85 & 1;
  v18[v15[12]] = v86;
  v43 = [a1 merchantDisplayName];
  if (v43)
  {
    v44 = v43;
    v76 = sub_23875EA80();
    v86 = v45;
  }

  else
  {
    v76 = 0;
    v86 = 0;
  }

  v47 = [a1 orderNumber];
  v16 = v83;
  v48 = v84;
  if (v47)
  {
    v49 = v47;
    v75 = sub_23875EA80();
    v82 = v50;
  }

  else
  {
    v75 = 0;
    v82 = 0;
  }

  v51 = [a1 shippingDetailsTrackingNumber];
  if (v51)
  {
    v52 = v51;
    v80 = sub_23875EA80();
    v85 = v53;
  }

  else
  {
    v80 = 0;
    v85 = 0;
  }

  v81 = v20;
  v54 = [a1 shippingDetailsCarrierName];
  if (v54)
  {
    v55 = v54;
    v74 = sub_23875EA80();
    v57 = v56;
  }

  else
  {
    v74 = 0;
    v57 = 0;
  }

  sub_23875AB10();
  v58 = v88;
  sub_23875AB00();
  v59 = sub_2384A307C(v11, v58);
  v60 = v89;
  sub_23875AB10();
  v61 = v87;
  if ((*(v90 + 88))(v60, v87) == *MEMORY[0x277CC6F40])
  {
    a4 = v48;
    v63 = v85;
    v62 = v86;
    if (v57)
    {
      if (v85)
      {

        v64 = v63;
        v65 = v88;
        sub_23875AB00();
        v66 = sub_2384A3D28(v65);

        *v18 = v74;
        *(v18 + 1) = v57;
        *(v18 + 2) = v80;
        *(v18 + 3) = v64;
        v18[32] = v66;
        v18[56] = 1;
LABEL_35:
        sub_2384A59C4(v18, a4, type metadata accessor for OrderDetailsRelatedEmailView.ViewModel);
        (*(v16 + 56))(a4, 0, 1, v15);
        return sub_2384A5AE0(v18, type metadata accessor for OrderDetailsRelatedEmailView.ViewModel);
      }
    }

    if (v62)
    {
      v69 = v81;
      v71 = v82;
      if (v82)
      {
        *v18 = v59;
        *(v18 + 1) = v76;
        *(v18 + 2) = v62;
        *(v18 + 3) = v75;
        *(v18 + 4) = v71;
        *(v18 + 5) = v80;
        *(v18 + 6) = v63;
        v18[56] = 0;
        goto LABEL_35;
      }
    }

    else
    {

      v69 = v81;
    }
  }

  else
  {

    a4 = v48;
    v67 = v86;
    if (v86)
    {
      v69 = v81;
      v68 = v82;
      v70 = v85;
      if (v82)
      {
        *v18 = v59;
        *(v18 + 1) = v76;
        *(v18 + 2) = v67;
        *(v18 + 3) = v75;
        *(v18 + 4) = v68;
        *(v18 + 5) = v80;
        *(v18 + 6) = v70;
        v18[56] = 0;
        (*(v90 + 8))(v89, v61);
        goto LABEL_35;
      }
    }

    else
    {

      v69 = v81;
    }

    (*(v90 + 8))(v89, v61);
  }

  v72 = sub_23875BC40();
  (*(*(v72 - 8) + 8))(&v18[v78], v72);
  sub_238439884(&v18[v69], &qword_27DF0D040, &qword_2387676A0);

  return (*(v16 + 56))(a4, 1, 1, v15);
}

void sub_2384A1C50(uint64_t a1, uint64_t a2)
{
  v4 = sub_238759D30();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v33 - v9;
  v12.n128_f64[0] = MEMORY[0x28223BE20](v10);
  v13 = &v33 - v11;
  if (a1 != a2 && *(a1 + 16) == *(a2 + 16))
  {
    v14 = 0;
    v15 = *(a1 + 56);
    v33 = a1 + 56;
    v16 = 1 << *(a1 + 32);
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    else
    {
      v17 = -1;
    }

    v18 = v17 & v15;
    v19 = (v16 + 63) >> 6;
    v40 = v5 + 32;
    v42 = a2 + 56;
    v43 = v5 + 16;
    v20 = (v5 + 8);
    v34 = v19;
    v35 = &v33 - v11;
    v36 = v5;
    v37 = a1;
    if (v18)
    {
      while (1)
      {
        v21 = __clz(__rbit64(v18));
        v39 = (v18 - 1) & v18;
LABEL_13:
        v24 = *(a1 + 48);
        v41 = *(v5 + 72);
        v25 = *(v5 + 16);
        v25(v13, v24 + v41 * (v21 | (v14 << 6)), v4, v12);
        (*(v5 + 32))(v44, v13, v4);
        sub_23849CDC8(&qword_27DF0B0C8, MEMORY[0x277CC7C98], MEMORY[0x277CC7CA0]);
        v26 = sub_23875E950();
        v27 = -1 << *(a2 + 32);
        v28 = v26 & ~v27;
        if (((*(v42 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28) & 1) == 0)
        {
          break;
        }

        v38 = v20 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
        v29 = a2;
        v30 = ~v27;
        while (1)
        {
          (v25)(v7, *(v29 + 48) + v28 * v41, v4);
          sub_23849CDC8(&qword_27DF0B0E8, MEMORY[0x277CC7C98], MEMORY[0x277CC7CA8]);
          v31 = sub_23875E9E0();
          v32 = *v20;
          (*v20)(v7, v4);
          if (v31)
          {
            break;
          }

          v28 = (v28 + 1) & v30;
          if (((*(v42 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28) & 1) == 0)
          {
            v32(v44, v4);
            return;
          }
        }

        v32(v44, v4);
        a2 = v29;
        v5 = v36;
        a1 = v37;
        v19 = v34;
        v13 = v35;
        v18 = v39;
        if (!v39)
        {
          goto LABEL_8;
        }
      }

      (*v20)(v44, v4);
    }

    else
    {
LABEL_8:
      v22 = v14;
      while (1)
      {
        v14 = v22 + 1;
        if (__OFADD__(v22, 1))
        {
          break;
        }

        if (v14 >= v19)
        {
          return;
        }

        v23 = *(v33 + 8 * v14);
        ++v22;
        if (v23)
        {
          v21 = __clz(__rbit64(v23));
          v39 = (v23 - 1) & v23;
          goto LABEL_13;
        }
      }

      __break(1u);
    }
  }
}

void sub_2384A2000(uint64_t a1, uint64_t a2)
{
  v4 = sub_238758680();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v33 - v9;
  v12.n128_f64[0] = MEMORY[0x28223BE20](v10);
  v13 = &v33 - v11;
  if (a1 != a2 && *(a1 + 16) == *(a2 + 16))
  {
    v14 = 0;
    v15 = *(a1 + 56);
    v33 = a1 + 56;
    v16 = 1 << *(a1 + 32);
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    else
    {
      v17 = -1;
    }

    v18 = v17 & v15;
    v19 = (v16 + 63) >> 6;
    v40 = v5 + 32;
    v42 = a2 + 56;
    v43 = v5 + 16;
    v20 = (v5 + 8);
    v34 = v19;
    v35 = &v33 - v11;
    v36 = v5;
    v37 = a1;
    if (v18)
    {
      while (1)
      {
        v21 = __clz(__rbit64(v18));
        v39 = (v18 - 1) & v18;
LABEL_13:
        v24 = *(a1 + 48);
        v41 = *(v5 + 72);
        v25 = *(v5 + 16);
        v25(v13, v24 + v41 * (v21 | (v14 << 6)), v4, v12);
        (*(v5 + 32))(v44, v13, v4);
        sub_23849CDC8(&qword_27DF0B0F0, MEMORY[0x277CC6F70], MEMORY[0x277CC6F78]);
        v26 = sub_23875E950();
        v27 = -1 << *(a2 + 32);
        v28 = v26 & ~v27;
        if (((*(v42 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28) & 1) == 0)
        {
          break;
        }

        v38 = v20 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
        v29 = a2;
        v30 = ~v27;
        while (1)
        {
          (v25)(v7, *(v29 + 48) + v28 * v41, v4);
          sub_23849CDC8(&qword_27DF09538, MEMORY[0x277CC6F70], MEMORY[0x277CC6F80]);
          v31 = sub_23875E9E0();
          v32 = *v20;
          (*v20)(v7, v4);
          if (v31)
          {
            break;
          }

          v28 = (v28 + 1) & v30;
          if (((*(v42 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28) & 1) == 0)
          {
            v32(v44, v4);
            return;
          }
        }

        v32(v44, v4);
        a2 = v29;
        v5 = v36;
        a1 = v37;
        v19 = v34;
        v13 = v35;
        v18 = v39;
        if (!v39)
        {
          goto LABEL_8;
        }
      }

      (*v20)(v44, v4);
    }

    else
    {
LABEL_8:
      v22 = v14;
      while (1)
      {
        v14 = v22 + 1;
        if (__OFADD__(v22, 1))
        {
          break;
        }

        if (v14 >= v19)
        {
          return;
        }

        v23 = *(v33 + 8 * v14);
        ++v22;
        if (v23)
        {
          v21 = __clz(__rbit64(v23));
          v39 = (v23 - 1) & v23;
          goto LABEL_13;
        }
      }

      __break(1u);
    }
  }
}

uint64_t sub_2384A23B0(uint64_t *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_23875F630() & 1) == 0)
  {
    return 0;
  }

  v5 = a1[3];
  v6 = a2[3];
  if (v5)
  {
    if (!v6)
    {
      return 0;
    }

    v7 = a1[2] == a2[2] && v5 == v6;
    if (!v7 && (sub_23875F630() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v6)
  {
    return 0;
  }

  v8 = a1[5];
  v9 = a2[5];
  if (v8)
  {
    if (v9 && (a1[4] == a2[4] && v8 == v9 || (sub_23875F630() & 1) != 0))
    {
      return 1;
    }
  }

  else if (!v9)
  {
    return 1;
  }

  return 0;
}

BOOL sub_2384A2474(unsigned __int8 a1, unsigned __int8 a2)
{
  if (a1 > 0xCu)
  {
    if (a1 > 0xEu)
    {
      if (a1 == 15)
      {
        return a2 == 15;
      }

      if (a1 == 16)
      {
        return a2 == 16;
      }
    }

    else
    {
      if (a1 == 13)
      {
        return a2 == 13;
      }

      if (a1 == 14)
      {
        return a2 == 14;
      }
    }

LABEL_18:
    if (a2 - 10 >= 7)
    {
      return a1 == a2;
    }

    return 0;
  }

  if (a1 == 10)
  {
    return a2 == 10;
  }

  if (a1 != 11)
  {
    if (a1 == 12)
    {
      return a2 == 12;
    }

    goto LABEL_18;
  }

  return a2 == 11;
}

BOOL sub_2384A2554(void *a1, void *a2)
{
  v4 = *a1;
  v5 = *a2;
  if (v4 <= 0xC)
  {
    switch(v4)
    {
      case 0xAu:
        if (v5 != 10)
        {
          return 0;
        }

        goto LABEL_26;
      case 0xBu:
        if (v5 != 11)
        {
          return 0;
        }

        goto LABEL_26;
      case 0xCu:
        if (v5 != 12)
        {
          return 0;
        }

        goto LABEL_26;
    }
  }

  else if (*a1 > 0xEu)
  {
    if (v4 == 15)
    {
      if (v5 != 15)
      {
        return 0;
      }

      goto LABEL_26;
    }

    if (v4 == 16)
    {
      if (v5 != 16)
      {
        return 0;
      }

      goto LABEL_26;
    }
  }

  else
  {
    if (v4 == 13)
    {
      if (v5 != 13)
      {
        return 0;
      }

      goto LABEL_26;
    }

    if (v4 == 14)
    {
      if (v5 != 14)
      {
        return 0;
      }

      goto LABEL_26;
    }
  }

  result = 0;
  if (v4 == v5 && (v5 - 17) < 0xFFFFFFF9)
  {
LABEL_26:
    v7 = a1[1] == a2[1] && a1[2] == a2[2];
    if (!v7 && (sub_23875F630() & 1) == 0 || (a1[3] != a2[3] || a1[4] != a2[4]) && (sub_23875F630() & 1) == 0)
    {
      return 0;
    }

    v8 = a1[6];
    v9 = a2[6];
    if (v8)
    {
      return v9 && (a1[5] == a2[5] && v8 == v9 || (sub_23875F630() & 1) != 0);
    }

    return !v9;
  }

  return result;
}

uint64_t sub_2384A26BC(uint64_t *a1, unsigned __int8 *a2)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = a1[2];
  v7 = a1[3];
  v8 = *(a1 + 32);
  v9 = *(a1 + 33) | ((*(a1 + 37) | (*(a1 + 39) << 16)) << 32);
  v10 = a1[5];
  if (!*(a1 + 56))
  {
    if (a2[56])
    {
      return 0;
    }

    v15 = a1[6];
    v16 = *a2;
    v17 = *(a2 + 3);
    v18 = *(a2 + 4);
    v20 = *(a2 + 5);
    v19 = *(a2 + 6);
    if (v4 <= 0xCu)
    {
      switch(v4)
      {
        case 0xAu:
          if (v16 != 10)
          {
            return 0;
          }

          goto LABEL_58;
        case 0xBu:
          if (v16 != 11)
          {
            return 0;
          }

LABEL_58:
          if ((*(a2 + 1) != v5 || v6 != *(a2 + 2)) && (sub_23875F630() & 1) == 0 || (v7 != v17 || (v8 | (v9 << 8)) != v18) && (sub_23875F630() & 1) == 0)
          {
            return 0;
          }

          if (v15)
          {
            if (!v19)
            {
              return 0;
            }

            if (v10 != v20 || v15 != v19)
            {
LABEL_68:
              if ((sub_23875F630() & 1) == 0)
              {
                return 0;
              }
            }
          }

          else if (v19)
          {
            return 0;
          }

          return 1;
        case 0xCu:
          if (v16 != 12)
          {
            return 0;
          }

          goto LABEL_58;
      }
    }

    else if (v4 > 0xEu)
    {
      if (v4 == 15)
      {
        if (v16 != 15)
        {
          return 0;
        }

        goto LABEL_58;
      }

      if (v4 == 16)
      {
        if (v16 != 16)
        {
          return 0;
        }

        goto LABEL_58;
      }
    }

    else
    {
      if (v4 == 13)
      {
        if (v16 != 13)
        {
          return 0;
        }

        goto LABEL_58;
      }

      if (v4 == 14)
      {
        if (v16 != 14)
        {
          return 0;
        }

        goto LABEL_58;
      }
    }

    if (v16 != v4 || (v16 - 17) >= 0xFFFFFFF9)
    {
      return 0;
    }

    goto LABEL_58;
  }

  if (*(a1 + 56) != 1)
  {
    if (a2[56] != 2)
    {
      return 0;
    }

    v22 = *(a2 + 2);
    v21 = *(a2 + 3);
    v24 = *(a2 + 4);
    v23 = *(a2 + 5);
    if ((v4 != *a2 || v5 != *(a2 + 1)) && (sub_23875F630() & 1) == 0)
    {
      return 0;
    }

    if (v7)
    {
      if (!v21 || (v6 != v22 || v7 != v21) && (sub_23875F630() & 1) == 0)
      {
        return 0;
      }
    }

    else if (v21)
    {
      return 0;
    }

    if (v10)
    {
      if (!v23)
      {
        return 0;
      }

      if ((v8 | (v9 << 8)) != v24 || v10 != v23)
      {
        goto LABEL_68;
      }
    }

    else if (v23)
    {
      return 0;
    }

    return 1;
  }

  if (a2[56] == 1)
  {
    if (v11 = *(a2 + 2), v12 = *(a2 + 3), v13 = a2[32], v4 == *a2) && v5 == *(a2 + 1) || (sub_23875F630())
    {
      if (v6 == v11 && v7 == v12 || (sub_23875F630()) && v8 == v13)
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t sub_2384A29A8(uint64_t a1, uint64_t a2)
{
  v4 = sub_23875B940();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D040, &qword_2387676A0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v46 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B0D8, &qword_238772730);
  MEMORY[0x28223BE20](v11);
  v13 = &v46 - v12;
  v14 = *(a1 + 16);
  v48[0] = *a1;
  v48[1] = v14;
  v49[0] = *(a1 + 32);
  *(v49 + 9) = *(a1 + 41);
  v15 = *(a2 + 16);
  v50[0] = *a2;
  v50[1] = v15;
  v51[0] = *(a2 + 32);
  *(v51 + 9) = *(a2 + 41);
  if ((sub_2384A26BC(v48, v50) & 1) == 0 || (*(a1 + 64) != *(a2 + 64) || *(a1 + 72) != *(a2 + 72)) && (sub_23875F630() & 1) == 0)
  {
    goto LABEL_39;
  }

  if ((*(a1 + 80) != *(a2 + 80) || *(a1 + 88) != *(a2 + 88)) && (sub_23875F630() & 1) == 0)
  {
    goto LABEL_39;
  }

  v16 = type metadata accessor for OrderDetailsRelatedEmailView.ViewModel(0);
  if ((sub_23875BBD0() & 1) == 0)
  {
    goto LABEL_39;
  }

  v46 = v16;
  v47 = v5;
  v17 = *(v16 + 32);
  v18 = *(v11 + 48);
  sub_23843981C(a1 + v17, v13, &qword_27DF0D040, &qword_2387676A0);
  v19 = a2 + v17;
  v20 = v47;
  sub_23843981C(v19, &v13[v18], &qword_27DF0D040, &qword_2387676A0);
  v21 = *(v20 + 48);
  if (v21(v13, 1, v4) == 1)
  {
    if (v21(&v13[v18], 1, v4) == 1)
    {
      sub_238439884(v13, &qword_27DF0D040, &qword_2387676A0);
      goto LABEL_16;
    }

LABEL_14:
    sub_238439884(v13, &qword_27DF0B0D8, &qword_238772730);
    goto LABEL_39;
  }

  sub_23843981C(v13, v10, &qword_27DF0D040, &qword_2387676A0);
  if (v21(&v13[v18], 1, v4) == 1)
  {
    (*(v20 + 8))(v10, v4);
    goto LABEL_14;
  }

  (*(v20 + 32))(v7, &v13[v18], v4);
  sub_23849CDC8(&qword_27DF0B0E0, MEMORY[0x277CC9260], MEMORY[0x277CC9278]);
  v22 = sub_23875E9E0();
  v23 = *(v20 + 8);
  v23(v7, v4);
  v23(v10, v4);
  sub_238439884(v13, &qword_27DF0D040, &qword_2387676A0);
  if ((v22 & 1) == 0)
  {
    goto LABEL_39;
  }

LABEL_16:
  v24 = v46;
  v25 = v46[9];
  v26 = *(a1 + v25);
  v27 = *(a1 + v25 + 8);
  v28 = (a2 + v25);
  if ((v26 != *v28 || v27 != v28[1]) && (sub_23875F630() & 1) == 0)
  {
    goto LABEL_39;
  }

  sub_2384A1C50(*(a1 + v24[10]), *(a2 + v24[10]));
  if ((v29 & 1) == 0)
  {
    goto LABEL_39;
  }

  v30 = v24[11];
  v31 = *(a1 + v30);
  v32 = *(a2 + v30);
  if (v31)
  {
    v33 = 0x63697373616C63;
  }

  else
  {
    v33 = 1818845549;
  }

  if (v31)
  {
    v34 = 0xE700000000000000;
  }

  else
  {
    v34 = 0xE400000000000000;
  }

  if (v32)
  {
    v35 = 0x63697373616C63;
  }

  else
  {
    v35 = 1818845549;
  }

  if (v32)
  {
    v36 = 0xE700000000000000;
  }

  else
  {
    v36 = 0xE400000000000000;
  }

  if (v33 != v35 || v34 != v36)
  {
    v37 = sub_23875F630();

    if (v37)
    {
      goto LABEL_36;
    }

LABEL_39:
    v44 = 0;
    return v44 & 1;
  }

LABEL_36:
  v38 = v24[12];
  v39 = *(a2 + v38);
  v40 = sub_238449A8C(*(a1 + v38));
  v42 = v41;
  if (v40 == sub_238449A8C(v39) && v42 == v43)
  {

    v44 = 1;
  }

  else
  {
    v44 = sub_23875F630();
  }

  return v44 & 1;
}