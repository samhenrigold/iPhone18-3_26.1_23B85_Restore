uint64_t sub_22CEFBCA4()
{
  v1 = v0;
  v2 = sub_22D0164CC();
  v93 = *(v2 - 8);
  v94 = v2;
  MEMORY[0x28223BE20](v2, v3);
  v91 = &v76 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = sub_22D01653C();
  v90 = *(v92 - 8);
  MEMORY[0x28223BE20](v92, v5);
  v89 = &v76 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22D0164BC();
  v86 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v8);
  v10 = (&v76 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v95 = sub_22D01656C();
  v88 = *(v95 - 8);
  v12 = MEMORY[0x28223BE20](v95, v11);
  v14 = &v76 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12, v15);
  v87 = &v76 - v16;
  v17 = sub_22D01430C();
  v18 = *(v17 - 8);
  v20 = MEMORY[0x28223BE20](v17, v19);
  v22 = &v76 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v20, v23);
  v26 = &v76 - v25;
  MEMORY[0x28223BE20](v24, v27);
  v29 = &v76 - v28;
  result = sub_22D014CFC();
  if ((result & 1) == 0)
  {
    result = sub_22D014D1C();
    if ((result & 1) == 0)
    {
      v85 = v17;
      v31 = &v0[OBJC_IVAR____TtC11SessionCoreP33_F0FA238C64D38D6BA2E43F90C1B188B06Client_backoffBudget];
      swift_beginAccess();
      sub_22D0004CC();
      if ((sub_22D000294() & 1) == 0)
      {
        v32 = *(type metadata accessor for DefaultInputBackoffBudget(0) + 20);
        v33 = *(v31 + v32);
        v34 = __OFSUB__(v33, 1);
        v35 = v33 - 1;
        if (v34)
        {
          __break(1u);
          goto LABEL_18;
        }

        *(v31 + v32) = v35;
      }

      v84 = v14;
      v82 = v7;
      swift_endAccess();
      __swift_project_boxed_opaque_existential_1(&v1[OBJC_IVAR____TtC11SessionCoreP33_F0FA238C64D38D6BA2E43F90C1B188B06Client_backoffPolicy], *&v1[OBJC_IVAR____TtC11SessionCoreP33_F0FA238C64D38D6BA2E43F90C1B188B06Client_backoffPolicy + 24]);
      v98 = type metadata accessor for DefaultInputBackoffBudget(0);
      v99 = &off_28402E6D8;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(aBlock);
      sub_22CEFE9C8(v31, boxed_opaque_existential_1, type metadata accessor for DefaultInputBackoffBudget);
      sub_22CFFFFF4(aBlock, v29);
      __swift_destroy_boxed_opaque_existential_1Tm(aBlock);
      sub_22D0142DC();
      v37 = sub_22D01427C();
      v38 = *(v18 + 8);
      v39 = v85;
      v38(v26, v85);
      if ((v37 & 1) == 0)
      {
        return (v38)(v29, v39);
      }

      v81 = v38;
      v83 = v18 + 8;
      if (qword_28143FB60 == -1)
      {
LABEL_8:
        v40 = sub_22D01637C();
        __swift_project_value_buffer(v40, qword_2814444B0);
        v41 = v85;
        (*(v18 + 16))(v22, v29, v85);
        v42 = v1;
        v43 = sub_22D01636C();
        v44 = sub_22D0168EC();

        v45 = os_log_type_enabled(v43, v44);
        v46 = v84;
        v80 = v42;
        if (v45)
        {
          v47 = swift_slowAlloc();
          v78 = v44;
          v48 = v47;
          v79 = swift_slowAlloc();
          aBlock[0] = v79;
          *v48 = 136446466;
          v77 = v43;
          sub_22D01502C();
          sub_22CEE83DC(&qword_281443988, MEMORY[0x277CB9810], MEMORY[0x277CB9830]);
          v49 = sub_22D016DEC();
          v51 = sub_22CEEE31C(v49, v50, aBlock);

          *(v48 + 4) = v51;
          *(v48 + 12) = 2082;
          sub_22CEE83DC(&unk_281443A20, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
          v52 = sub_22D016DEC();
          v54 = v53;
          v55 = v81;
          v81(v22, v41);
          v56 = sub_22CEEE31C(v52, v54, aBlock);

          v57 = v48;
          *(v48 + 14) = v56;
          v58 = v77;
          _os_log_impl(&dword_22CEE1000, v77, v78, "Client %{public}s has exceeded request budget; timeout until %{public}s", v48, 0x16u);
          v59 = v41;
          v60 = v46;
          v61 = v79;
          swift_arrayDestroy();
          v62 = v61;
          v46 = v60;
          v41 = v59;
          MEMORY[0x2318C6860](v62, -1, -1);
          MEMORY[0x2318C6860](v57, -1, -1);
        }

        else
        {

          v55 = v81;
          v81(v22, v41);
        }

        sub_22D0142DC();
        sub_22D01424C();
        v64 = v63;
        result = v55(v26, v41);
        v65 = v64 * 1000.0;
        if (COERCE__INT64(fabs(v64 * 1000.0)) > 0x7FEFFFFFFFFFFFFFLL)
        {
          __break(1u);
        }

        else
        {
          v66 = v80;
          if (v65 > -9.22337204e18)
          {
            if (v65 < 9.22337204e18)
            {
              v67 = v65;
              sub_22D01654C();
              *v10 = v67;
              v68 = v86;
              v69 = v82;
              (*(v86 + 104))(v10, *MEMORY[0x277D85178], v82);
              v70 = v87;
              sub_22D01655C();
              (*(v68 + 8))(v10, v69);
              v88 = *(v88 + 8);
              (v88)(v46, v95);
              v86 = *&v66[OBJC_IVAR____TtC11SessionCoreP33_F0FA238C64D38D6BA2E43F90C1B188B06Client_targetQueue];
              v71 = swift_allocObject();
              *(v71 + 16) = v66;
              v99 = sub_22CF46060;
              v100 = v71;
              aBlock[0] = MEMORY[0x277D85DD0];
              aBlock[1] = 1107296256;
              aBlock[2] = sub_22CEF8B58;
              v98 = &block_descriptor;
              v72 = _Block_copy(aBlock);
              v84 = v66;
              v73 = v89;
              sub_22D0164EC();
              v96 = MEMORY[0x277D84F90];
              sub_22CEE83DC(&qword_28143FA60, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
              __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9F2FE0, &qword_22D018B70);
              sub_22CEE8340(&qword_28143FA50, &unk_27D9F2FE0, &qword_22D018B70);
              v74 = v91;
              v75 = v94;
              sub_22D016ADC();
              MEMORY[0x2318C5A90](v70, v73, v74, v72);
              _Block_release(v72);
              (*(v93 + 8))(v74, v75);
              (*(v90 + 8))(v73, v92);

              dispatch_suspend(*&v84[OBJC_IVAR____TtC11SessionCoreP33_F0FA238C64D38D6BA2E43F90C1B188B06Client_queue]);
              (v88)(v70, v95);
              v38 = v81;
              v39 = v85;
              return (v38)(v29, v39);
            }

LABEL_21:
            __break(1u);
            return result;
          }
        }

        __break(1u);
        goto LABEL_21;
      }

LABEL_18:
      swift_once();
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_22CEFC690()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22CEFC6C8()
{
  sub_22D016C6C();
  MEMORY[0x2318C5860](0xD000000000000021, 0x800000022D0231A0);
  sub_22D01502C();
  sub_22CEFF268(&qword_281443988, MEMORY[0x277CB9810], MEMORY[0x277CB9830]);
  v1 = sub_22D016DEC();
  MEMORY[0x2318C5860](v1);

  MEMORY[0x2318C5860](0x73696D726570202CLL, 0xEF203A736E6F6973);
  v2 = v0 + *(type metadata accessor for ContentSourceResolver(0) + 20);
  if (*(v2 + 17))
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  v4 = sub_22CEFD4D8(*v2, *(v2 + 8), v3 | *(v2 + 16));
  MEMORY[0x2318C5860](v4);

  MEMORY[0x2318C5860](41, 0xE100000000000000);
  return 0;
}

uint64_t sub_22CEFC820(void *a1)
{
  v2 = sub_22D01666C();
  v3 = [a1 valueForEntitlement_];

  if (v3)
  {
    sub_22D016ACC();
    swift_unknownObjectRelease();
  }

  else
  {
    v9 = 0u;
    v10 = 0u;
  }

  v11[0] = v9;
  v11[1] = v10;
  if (*(&v10 + 1))
  {
    if (swift_dynamicCast())
    {
      v4 = v8;
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    sub_22CEEC3D8(v11, &qword_27D9F2B10, &unk_22D01B930);
    v4 = 0;
  }

  v5 = sub_22D01666C();
  [a1 hasEntitlement_];

  v6 = sub_22D01666C();
  [a1 hasEntitlement_];

  return v4;
}

uint64_t sub_22CEFC9D0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void *sub_22CEFCA38(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v31 = a2;
  v5 = sub_22D01483C();
  v6 = *(v5 - 8);
  v8 = MEMORY[0x28223BE20](v5, v7);
  v34 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8, v10);
  v32 = &v26 - v12;
  MEMORY[0x28223BE20](v11, v13);
  v30 = &v26 - v14;
  v15 = *(a1 + 16);
  if (!v15)
  {
    return MEMORY[0x277D84F90];
  }

  v16 = *(sub_22D01481C() - 8);
  v33 = (v6 + 32);
  v17 = a1 + ((*(v16 + 80) + 32) & ~*(v16 + 80));
  v27 = *(v16 + 72);
  v18 = MEMORY[0x277D84F90];
  v28 = v6;
  v29 = v5;
  while (1)
  {
    v19 = v32;
    sub_22D000878(v17, v32);
    if (v3)
    {
      break;
    }

    v20 = *v33;
    v21 = v30;
    (*v33)(v30, v19, v5);
    v20(v34, v21, v5);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v18 = sub_22CEFCE2C(0, v18[2] + 1, 1, v18);
    }

    v23 = v18[2];
    v22 = v18[3];
    v3 = 0;
    if (v23 >= v22 >> 1)
    {
      v18 = sub_22CEFCE2C((v22 > 1), v23 + 1, 1, v18);
    }

    v18[2] = v23 + 1;
    v24 = v18 + ((*(v28 + 80) + 32) & ~*(v28 + 80)) + *(v28 + 72) * v23;
    v5 = v29;
    v20(v24, v34, v29);
    v17 += v27;
    if (!--v15)
    {
      return v18;
    }
  }

  return v18;
}

uint64_t sub_22CEFCCE8(uint64_t result, uint64_t (*a2)(void), uint64_t (*a3)(void))
{
  v4 = *(result + 16);
  v5 = *v3;
  v6 = *(*v3 + 16);
  if (__OFADD__(v6, v4))
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v9 = result;
  if (swift_isUniquelyReferenced_nonNull_native() && v6 + v4 <= *(v5 + 24) >> 1)
  {
    if (*(v9 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

  v5 = a2();
  if (!*(v9 + 16))
  {
LABEL_10:

    if (!v4)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_5:
  v10 = (*(v5 + 24) >> 1) - *(v5 + 16);
  result = a3(0);
  if (v10 < v4)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  swift_arrayInitWithCopy();

  if (!v4)
  {
LABEL_11:
    *v3 = v5;
    return result;
  }

  v11 = *(v5 + 16);
  v12 = __OFADD__(v11, v4);
  v13 = v11 + v4;
  if (!v12)
  {
    *(v5 + 16) = v13;
    goto LABEL_11;
  }

LABEL_15:
  __break(1u);
  return result;
}

void *sub_22CEFCE54(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
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

uint64_t sub_22CEFD030(uint64_t a1, uint64_t a2)
{
  v50 = a2;
  v49 = sub_22D01502C();
  v3 = *(v49 - 8);
  v5 = MEMORY[0x28223BE20](v49, v4);
  v48 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5, v7);
  v47 = &v41 - v8;
  v9 = sub_22D01483C();
  v10 = *(v9 - 8);
  v12 = MEMORY[0x28223BE20](v9, v11);
  v59 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v12, v14);
  v17 = &v41 - v16;
  MEMORY[0x28223BE20](v15, v18);
  v61 = &v41 - v19;
  v20 = *(a1 + 16);
  if (v20)
  {
    v22 = *(v10 + 16);
    v21 = v10 + 16;
    v23 = (*(v21 + 64) + 32) & ~*(v21 + 64);
    v56 = *(v21 + 56);
    v57 = v22;
    v52 = v23;
    v24 = (a1 + v23);
    v55 = (v21 + 72);
    v54 = *MEMORY[0x277CB9348];
    v51 = (v21 - 8);
    v44 = (v3 + 32);
    v45 = (v21 + 80);
    v42 = (v3 + 8);
    v43 = (v3 + 16);
    v25 = (v21 + 16);
    v26 = MEMORY[0x277D84F90];
    v58 = v17;
    v46 = v21;
    while (1)
    {
      v60 = v26;
      v28 = v61;
      v29 = v57;
      v57(v61, v24, v9);
      v29(v17, v28, v9);
      v30 = (*v55)(v17, v9);
      if (v30 != v54)
      {
        break;
      }

      (*v45)(v17, v9);
      v31 = v47;
      v32 = v49;
      (*v44)(v47, v17, v49);
      v33 = v48;
      (*v43)(v48, v50, v32);
      sub_22CEFF268(&qword_281443990, MEMORY[0x277CB9810], MEMORY[0x277CB9820]);
      v53 = sub_22D01665C();
      v34 = *v42;
      (*v42)(v33, v32);
      v34(v31, v32);
      if ((v53 & 1) == 0)
      {
        goto LABEL_9;
      }

      (*v51)(v61, v9);
      v27 = v56;
      v26 = v60;
LABEL_4:
      v24 += v27;
      --v20;
      v17 = v58;
      if (!v20)
      {
        return v26;
      }
    }

    (*v51)(v17, v9);
LABEL_9:
    v35 = *v25;
    (*v25)(v59, v61, v9);
    v26 = v60;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v62 = v26;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_22CF440E8(0, *(v26 + 16) + 1, 1);
      v26 = v62;
    }

    v38 = *(v26 + 16);
    v37 = *(v26 + 24);
    if (v38 >= v37 >> 1)
    {
      sub_22CF440E8((v37 > 1), v38 + 1, 1);
      v26 = v62;
    }

    *(v26 + 16) = v38 + 1;
    v39 = v26 + v52 + v38 * v56;
    v27 = v56;
    v35(v39, v59, v9);
    goto LABEL_4;
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_22CEFD4D8(uint64_t a1, uint64_t a2, __int16 a3)
{
  sub_22D016C6C();
  MEMORY[0x2318C5860](0xD000000000000020, 0x800000022D0231D0);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F3CB0, &qword_22D01CA08);
  v4 = sub_22D01669C();
  MEMORY[0x2318C5860](v4);

  MEMORY[0x2318C5860](0xD000000000000021, 0x800000022D023200);
  if (a3)
  {
    v5 = 1702195828;
  }

  else
  {
    v5 = 0x65736C6166;
  }

  if (a3)
  {
    v6 = 0xE400000000000000;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  MEMORY[0x2318C5860](v5, v6);

  MEMORY[0x2318C5860](0xD00000000000001FLL, 0x800000022D023230);
  if ((a3 & 0x100) != 0)
  {
    v7 = 1702195828;
  }

  else
  {
    v7 = 0x65736C6166;
  }

  if ((a3 & 0x100) != 0)
  {
    v8 = 0xE400000000000000;
  }

  else
  {
    v8 = 0xE500000000000000;
  }

  MEMORY[0x2318C5860](v7, v8);

  MEMORY[0x2318C5860](0xD000000000000013, 0x800000022D023250);
  v9 = sub_22D01669C();
  MEMORY[0x2318C5860](v9);

  MEMORY[0x2318C5860](41, 0xE100000000000000);
  return 0;
}

uint64_t sub_22CEFD694(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_22CEFD6F4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_22CEFD754(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_22CEFD7B4(uint64_t a1)
{
  v22[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2348, &qword_22D018970);
  MEMORY[0x28223BE20](v22[0], v3);
  v5 = v22 - v4;
  v23 = MEMORY[0x277D84F98];
  v6 = 1 << *(a1 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a1 + 64);
  v9 = (v6 + 63) >> 6;

  v11 = 0;
  while (v8)
  {
    v12 = v11;
LABEL_10:
    v13 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v14 = v13 | (v12 << 6);
    v15 = *(a1 + 48);
    v16 = sub_22D0149AC();
    (*(*(v16 - 8) + 16))(v5, v15 + *(*(v16 - 8) + 72) * v14, v16);
    v17 = *(a1 + 56) + 24 * v14;
    v18 = *v17;
    v19 = *(v17 + 8);
    v20 = *(v17 + 16);
    v21 = &v5[*(v22[0] + 48)];
    *v21 = v18;
    *(v21 + 1) = v19;
    v21[16] = v20;
    sub_22CEFE0EC();
    sub_22CEFD9AC(&v23, v5, v22[1]);
    result = sub_22CEEC3D8(v5, &qword_27D9F2348, &qword_22D018970);
    if (v1)
    {
    }
  }

  while (1)
  {
    v12 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v12 >= v9)
    {

      return v23;
    }

    v8 = *(a1 + 64 + 8 * v12);
    ++v11;
    if (v8)
    {
      v11 = v12;
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

void sub_22CEFD9AC(uint64_t a1, uint64_t a2, char *a3)
{
  v89 = a2;
  v88 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2350, &qword_22D018978);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v87 = &v75 - v6;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2348, &qword_22D018970);
  v8 = MEMORY[0x28223BE20](v86, v7);
  v10 = &v75 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8, v11);
  v85 = &v75 - v12;
  v13 = sub_22D01502C();
  v80 = *(v13 - 8);
  v81 = v13;
  MEMORY[0x28223BE20](v13, v14);
  v16 = &v75 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = type metadata accessor for PlatterTargetResolver(0);
  v18 = MEMORY[0x28223BE20](v82, v17);
  v20 = &v75 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18, v21);
  v23 = &v75 - v22;
  v24 = sub_22D014EFC();
  v83 = *(v24 - 8);
  v84 = v24;
  v26 = MEMORY[0x28223BE20](v24, v25);
  v28 = &v75 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26, v29);
  v31 = &v75 - v30;
  v32 = a3;
  v33 = *&a3[OBJC_IVAR____TtC11SessionCoreP33_F0FA238C64D38D6BA2E43F90C1B188B06Client_connection];
  v34 = [v33 remoteProcess];
  v35 = v90;
  sub_22CEE84BC(v34);
  v90 = v35;
  if (v35)
  {
  }

  else
  {
    v77 = v32;
    v78 = v28;
    v76 = v33;
    v79 = v10;
    (*(v80 + 32))(v20, v16, v81);
    v36 = sub_22D01666C();
    v37 = [v34 hasEntitlement_];

    v38 = v82;
    v20[*(v82 + 20)] = v37;
    sub_22CEFC9D0(v20, v23, type metadata accessor for PlatterTargetResolver);
    v39 = v86;
    v40 = v89;
    sub_22CEFE150(v23, v23[*(v38 + 20)], *(v89 + *(v86 + 48) + 8), *(v89 + *(v86 + 48) + 16), v31);
    sub_22CEFD694(v23, type metadata accessor for PlatterTargetResolver);
    v41 = v85;
    sub_22CEFE940(v40, v85);
    sub_22CEFE9B0(*(v41 + *(v39 + 48)), *(v41 + *(v39 + 48) + 8), *(v41 + *(v39 + 48) + 16));
    v42 = v87;
    sub_22CEFE9C8(v31, v87, MEMORY[0x277CB9790]);
    (*(v83 + 56))(v42, 0, 1, v84);
    sub_22CEFF2F8(v42, v41);
    v43 = v31;
    v44 = v39;
    v45 = v41;
    if (qword_28143FB48 != -1)
    {
      swift_once();
    }

    v46 = sub_22D01637C();
    __swift_project_value_buffer(v46, qword_281444480);
    v47 = v79;
    sub_22CEFE940(v40, v79);
    v48 = v78;
    sub_22CEFE9C8(v43, v78, MEMORY[0x277CB9790]);
    v49 = v77;
    v50 = sub_22D01636C();
    v51 = sub_22D01690C();

    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      v89 = swift_slowAlloc();
      v91 = v89;
      *v52 = 136446723;
      sub_22CEFE940(v47, v45);
      v53 = v45 + *(v44 + 48);
      LODWORD(v87) = v51;
      v54 = *v53;
      v55 = *(v53 + 8);
      v56 = *(v53 + 16);
      v57 = sub_22D0149AC();
      (*(*(v57 - 8) + 8))(v45, v57);
      v58 = sub_22D014EEC();
      v88 = v43;
      v59 = v48;
      v61 = v60;
      sub_22CEFE9B0(v54, v55, v56);
      sub_22CEEC3D8(v47, &qword_27D9F2348, &qword_22D018970);
      v62 = sub_22CEEE31C(v58, v61, &v91);

      *(v52 + 4) = v62;
      *(v52 + 12) = 2081;
      v63 = sub_22D014ECC();
      v65 = v64;
      v66 = MEMORY[0x277CB9790];
      sub_22CEFD694(v59, MEMORY[0x277CB9790]);
      v67 = sub_22CEEE31C(v63, v65, &v91);

      *(v52 + 14) = v67;
      *(v52 + 22) = 2082;
      v68 = [v76 remoteProcess];
      v69 = sub_22CEFF100();
      v71 = v70;

      v72 = sub_22CEEE31C(v69, v71, &v91);

      *(v52 + 24) = v72;
      _os_log_impl(&dword_22CEE1000, v50, v87, "Scene target resolution: %{public}s -> %{private}s (requester: %{public}s)", v52, 0x20u);
      v73 = v89;
      swift_arrayDestroy();
      MEMORY[0x2318C6860](v73, -1, -1);
      MEMORY[0x2318C6860](v52, -1, -1);

      v74 = v88;
    }

    else
    {

      v66 = MEMORY[0x277CB9790];
      sub_22CEFD694(v48, MEMORY[0x277CB9790]);
      sub_22CEEC3D8(v47, &qword_27D9F2348, &qword_22D018970);
      v74 = v43;
    }

    sub_22CEFD694(v74, v66);
  }
}

uint64_t sub_22CEFE0F0(uint64_t a1, unint64_t a2)
{
  if (a2 >= 2)
  {
  }

  return result;
}

uint64_t type metadata accessor for PlatterTargetResolver(uint64_t a1)
{
  result = qword_281440B80;
  if (!qword_281440B80)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22CEFE150@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a4@<X3>, char a5@<W4>, char *a6@<X8>)
{
  v11 = sub_22D01502C();
  v12 = *(v11 - 8);
  v14 = MEMORY[0x28223BE20](v11, v13);
  v16 = &v40 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14, v17);
  v19 = &v40 - v18;
  if (a5)
  {
    if (a2)
    {
      sub_22CEFE530(a1, 1, a4, a6);
      sub_22D014EFC();
LABEL_11:

      return swift_storeEnumTagMultiPayload();
    }
  }

  else
  {
    v20 = sub_22D014FBC();
    if (a2 & 1) != 0 || (v20)
    {
      sub_22CEFE530(a1, a2 & 1, a4, a6);
      sub_22D014EFC();
      goto LABEL_11;
    }
  }

  if (qword_28143FB48 != -1)
  {
    swift_once();
  }

  v21 = sub_22D01637C();
  __swift_project_value_buffer(v21, qword_281444480);
  v22 = *(v12 + 16);
  v22(v19, a1, v11);
  v22(v16, a1, v11);
  v23 = sub_22D01636C();
  v24 = sub_22D0168EC();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v41 = v24;
    v26 = v25;
    v42 = swift_slowAlloc();
    v45 = v42;
    *v26 = 136380931;
    v40 = v23;
    v27 = sub_22D014F9C();
    v43 = v22;
    v44 = a6;
    v29 = v28;
    v30 = *(v12 + 8);
    v30(v19, v11);
    v31 = sub_22CEEE31C(v27, v29, &v45);
    a6 = v44;

    *(v26 + 4) = v31;
    *(v26 + 12) = 2081;
    v32 = sub_22D014F9C();
    v34 = v33;
    v30(v16, v11);
    v22 = v43;
    v35 = sub_22CEEE31C(v32, v34, &v45);

    *(v26 + 14) = v35;
    v36 = v40;
    _os_log_impl(&dword_22CEE1000, v40, v41, "%{private}s is not entitled to specify a scene target. Defaulting containingProcess target to %{private}s", v26, 0x16u);
    v37 = v42;
    swift_arrayDestroy();
    MEMORY[0x2318C6860](v37, -1, -1);
    MEMORY[0x2318C6860](v26, -1, -1);
  }

  else
  {

    v39 = *(v12 + 8);
    v39(v16, v11);
    v39(v19, v11);
  }

  v22(a6, a1, v11);
  sub_22D014EFC();
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_22CEFE530@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v9 = sub_22D01502C();
  v43 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9, v10);
  v13 = &v38[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v11, v14);
  v16 = &v38[-v15];
  v17 = sub_22D014FBC();
  if (v17)
  {
    v17 = sub_22D01501C();
    if ((a2 & 1) == 0 && (v17 & 1) == 0)
    {
      goto LABEL_4;
    }
  }

  else if ((a2 & 1) == 0)
  {
LABEL_4:
    if (qword_28143FB48 != -1)
    {
      swift_once();
    }

    v42 = a5;
    v18 = sub_22D01637C();
    __swift_project_value_buffer(v18, qword_281444480);
    v19 = *(v43 + 16);
    v19(v16, a1, v9);
    v19(v13, a1, v9);
    v20 = sub_22D01636C();
    v21 = sub_22D0168EC();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v41 = v19;
      v23 = v22;
      v40 = swift_slowAlloc();
      v44 = v40;
      *v23 = 136380931;
      v24 = sub_22D014F9C();
      v39 = v21;
      v26 = v25;
      v27 = *(v43 + 8);
      v43 += 8;
      v27(v16, v9);
      v28 = sub_22CEEE31C(v24, v26, &v44);

      *(v23 + 4) = v28;
      *(v23 + 12) = 2081;
      v29 = sub_22D014F9C();
      v31 = v30;
      v27(v13, v9);
      v32 = sub_22CEEE31C(v29, v31, &v44);

      *(v23 + 14) = v32;
      _os_log_impl(&dword_22CEE1000, v20, v39, "%{private}s is not entitled to specify a process record. Defaulting process record to %{private}s", v23, 0x16u);
      v33 = v40;
      swift_arrayDestroy();
      MEMORY[0x2318C6860](v33, -1, -1);
      v34 = v23;
      v19 = v41;
      MEMORY[0x2318C6860](v34, -1, -1);
    }

    else
    {

      v35 = *(v43 + 8);
      v43 += 8;
      v35(v13, v9);
      v35(v16, v9);
    }

    return (v19)(v42, a1, v9);
  }

  if (a4)
  {
    if (a4 == 1)
    {
      sub_22D00072C(v17);
    }

    else
    {
    }

    return sub_22D014F8C();
  }

  else
  {
    v37 = *(v43 + 16);

    return v37(a5, a1, v9);
  }
}

uint64_t sub_22CEFE940(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2348, &qword_22D018970);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22CEFE9B4(uint64_t a1, unint64_t a2)
{
  if (a2 >= 2)
  {
  }

  return result;
}

uint64_t sub_22CEFE9C8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_22CEFEA30(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_22CEFEA98(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_22CEFEB00(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_22CEFEB68(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = sub_22D014EFC();
  v45 = *(v5 - 8);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v50 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_22D0149AC();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v49 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F3258, &unk_22D01B1F0);
  v46 = v4;
  v13 = sub_22D016D2C();
  v14 = v13;
  if (*(v12 + 16))
  {
    v41 = v2;
    v15 = 0;
    v16 = (v12 + 64);
    v17 = 1 << *(v12 + 32);
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v19 = v18 & *(v12 + 64);
    v20 = (v17 + 63) >> 6;
    v42 = (v9 + 16);
    v43 = v9;
    v47 = (v9 + 32);
    v21 = v13 + 64;
    v44 = v12;
    while (v19)
    {
      v23 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
LABEL_15:
      v26 = v23 | (v15 << 6);
      v27 = *(v12 + 48);
      v48 = *(v9 + 72);
      v28 = v27 + v48 * v26;
      if (v46)
      {
        (*v47)(v49, v28, v8);
        v29 = *(v12 + 56);
        v30 = *(v45 + 72);
        sub_22CEF0B08(v29 + v30 * v26, v50, MEMORY[0x277CB9790]);
      }

      else
      {
        (*v42)(v49, v28, v8);
        v31 = *(v12 + 56);
        v30 = *(v45 + 72);
        sub_22CF28C98(v31 + v30 * v26, v50, MEMORY[0x277CB9790]);
      }

      sub_22CEF57B4(&qword_28143F6B0, MEMORY[0x277CB9500], MEMORY[0x277CB9510]);
      v32 = sub_22D01661C();
      v33 = -1 << *(v14 + 32);
      v34 = v32 & ~v33;
      v35 = v34 >> 6;
      if (((-1 << v34) & ~*(v21 + 8 * (v34 >> 6))) == 0)
      {
        v36 = 0;
        v37 = (63 - v33) >> 6;
        while (++v35 != v37 || (v36 & 1) == 0)
        {
          v38 = v35 == v37;
          if (v35 == v37)
          {
            v35 = 0;
          }

          v36 |= v38;
          v39 = *(v21 + 8 * v35);
          if (v39 != -1)
          {
            v22 = __clz(__rbit64(~v39)) + (v35 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v22 = __clz(__rbit64((-1 << v34) & ~*(v21 + 8 * (v34 >> 6)))) | v34 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v21 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      (*v47)((*(v14 + 48) + v48 * v22), v49, v8);
      sub_22CEF0B08(v50, *(v14 + 56) + v30 * v22, MEMORY[0x277CB9790]);
      ++*(v14 + 16);
      v9 = v43;
      v12 = v44;
    }

    v24 = v15;
    while (1)
    {
      v15 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v15 >= v20)
      {
        break;
      }

      v25 = v16[v15];
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v19 = (v25 - 1) & v25;
        goto LABEL_15;
      }
    }

    if ((v46 & 1) == 0)
    {

      v3 = v41;
      goto LABEL_34;
    }

    v40 = 1 << *(v12 + 32);
    v3 = v41;
    if (v40 >= 64)
    {
      bzero(v16, ((v40 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v16 = -1 << v40;
    }

    *(v12 + 16) = 0;
  }

LABEL_34:
  *v3 = v14;
}

uint64_t sub_22CEFF008(unint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t (*a5)(void), uint64_t (*a6)(void), uint64_t (*a7)(void))
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v13 = a4[6];
  v14 = a5(0);
  (*(*(v14 - 8) + 32))(v13 + *(*(v14 - 8) + 72) * a1, a2, v14);
  v15 = a4[7];
  v16 = a6(0);
  result = sub_22CEF0B08(a3, v15 + *(*(v16 - 8) + 72) * a1, a7);
  v18 = a4[2];
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v20;
  }

  return result;
}

uint64_t sub_22CEFF100()
{
  sub_22D016C6C();

  strcpy(v1, "ProcessHandle(");
  sub_22CEE4E5C();
  MEMORY[0x2318C5860]();

  MEMORY[0x2318C5860](41, 0xE100000000000000);
  return v1[0];
}

uint64_t sub_22CEFF220(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_22CEFF268(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_22CEFF2B0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_22CEFF2F8(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2350, &qword_22D018978);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v8 = &v18 - v7;
  v9 = sub_22D014EFC();
  MEMORY[0x28223BE20](v9, v10);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v13 + 48))(a1, 1) == 1)
  {
    sub_22CEEC3D8(a1, &qword_27D9F2350, &qword_22D018978);
    sub_22CFBC82C(a2, v8);
    v14 = sub_22D0149AC();
    (*(*(v14 - 8) + 8))(a2, v14);
    return sub_22CEEC3D8(v8, &qword_27D9F2350, &qword_22D018978);
  }

  else
  {
    sub_22CEF0B08(a1, v12, MEMORY[0x277CB9790]);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19 = *v2;
    sub_22CEFF518(v12, a2, isUniquelyReferenced_nonNull_native);
    v17 = sub_22D0149AC();
    result = (*(*(v17 - 8) + 8))(a2, v17);
    *v2 = v19;
  }

  return result;
}

uint64_t sub_22CEFF518(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_22D0149AC();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  v15 = sub_22CEFF728(a2);
  v16 = v13[2];
  v17 = (v14 & 1) == 0;
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_14;
  }

  v19 = v14;
  v20 = v13[3];
  if (v20 >= v18 && (a3 & 1) != 0)
  {
LABEL_7:
    v21 = *v4;
    if (v19)
    {
LABEL_8:
      v22 = v21[7];
      v23 = sub_22D014EFC();
      return sub_22CF2D7F0(a1, v22 + *(*(v23 - 8) + 72) * v15, MEMORY[0x277CB9790]);
    }

    goto LABEL_11;
  }

  if (v20 >= v18 && (a3 & 1) == 0)
  {
    sub_22CFB6960();
    goto LABEL_7;
  }

  sub_22CEFEB68(v18, a3 & 1);
  v25 = sub_22CEFF728(a2);
  if ((v19 & 1) != (v26 & 1))
  {
LABEL_14:
    result = sub_22D016E1C();
    __break(1u);
    return result;
  }

  v15 = v25;
  v21 = *v4;
  if (v19)
  {
    goto LABEL_8;
  }

LABEL_11:
  (*(v9 + 16))(v12, a2, v8);
  return sub_22CEFF008(v15, v12, a1, v21, MEMORY[0x277CB9500], MEMORY[0x277CB9790], MEMORY[0x277CB9790]);
}

unint64_t sub_22CEFF728(uint64_t a1)
{
  sub_22D0149AC();
  v2 = MEMORY[0x277CB9500];
  sub_22CEF57B4(&qword_28143F6B0, MEMORY[0x277CB9500], MEMORY[0x277CB9510]);
  v3 = sub_22D01661C();
  return sub_22CEF5DAC(a1, v3, MEMORY[0x277CB9500], &qword_28143F6A8, v2, MEMORY[0x277CB9518]);
}

uint64_t sub_22CEFF7FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v9 = type metadata accessor for TaskScheduler.Task(0);
  MEMORY[0x28223BE20](v9, v10);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v4;
  v14 = *(*(v13 + 16) + 16);

  os_unfair_lock_lock(v14);
  sub_22CFB4DC8(v13, a1, a2, a3, v12);
  os_unfair_lock_unlock(v14);

  sub_22CEF0D1C();
  a4[3] = v9;
  a4[4] = sub_22CEF57B4(qword_28143F5F8, type metadata accessor for TaskScheduler.Task, &unk_22D01B064);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a4);
  return sub_22CEF0B08(v12, boxed_opaque_existential_1, type metadata accessor for TaskScheduler.Task);
}

uint64_t sub_22CEFF988(char *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v441 = a5;
  v440 = a4;
  v468 = a3;
  v442 = *v5;
  v8 = sub_22D014E2C();
  v9 = *(v8 - 8);
  v11 = MEMORY[0x28223BE20](v8, v10);
  v13 = (&v425 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v11, v14);
  v16 = (&v425 - v15);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2350, &qword_22D018978);
  v19 = MEMORY[0x28223BE20](v17 - 8, v18);
  v446 = &v425 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19, v21);
  v450 = &v425 - v22;
  v451 = sub_22D014EFC();
  v465 = *(v451 - 8);
  v24 = MEMORY[0x28223BE20](v451, v23);
  v438 = &v425 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x28223BE20](v24, v26);
  v448 = &v425 - v28;
  v30 = MEMORY[0x28223BE20](v27, v29);
  v443 = &v425 - v31;
  v33 = MEMORY[0x28223BE20](v30, v32);
  v452 = &v425 - v34;
  v36 = MEMORY[0x28223BE20](v33, v35);
  v444 = &v425 - v37;
  v39 = MEMORY[0x28223BE20](v36, v38);
  v445 = &v425 - v40;
  v42 = MEMORY[0x28223BE20](v39, v41);
  v457 = &v425 - v43;
  v45 = MEMORY[0x28223BE20](v42, v44);
  v466 = (&v425 - v46);
  MEMORY[0x28223BE20](v45, v47);
  v464 = &v425 - v48;
  v470 = sub_22D0149AC();
  v467 = *(v470 - 8);
  MEMORY[0x28223BE20](v470, v49);
  v463 = &v425 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F3828, &qword_22D01BD10);
  v53 = MEMORY[0x28223BE20](v51 - 8, v52);
  v447 = &v425 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = MEMORY[0x28223BE20](v53, v55);
  v449 = &v425 - v57;
  v59 = MEMORY[0x28223BE20](v56, v58);
  v454 = &v425 - v60;
  v62 = MEMORY[0x28223BE20](v59, v61);
  v453 = &v425 - v63;
  v65 = MEMORY[0x28223BE20](v62, v64);
  v455 = &v425 - v66;
  v68 = MEMORY[0x28223BE20](v65, v67);
  v456 = &v425 - v69;
  v71 = MEMORY[0x28223BE20](v68, v70);
  v73 = &v425 - v72;
  MEMORY[0x28223BE20](v71, v74);
  v462 = (&v425 - v75);
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2340, &qword_22D01D0A0);
  MEMORY[0x28223BE20](v76 - 8, v77);
  v79 = &v425 - v78;
  v80 = sub_22D01502C();
  v81 = *(v80 - 8);
  v460 = v80;
  v461 = v81;
  v83 = MEMORY[0x28223BE20](v80, v82);
  v437 = &v425 - ((v84 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = MEMORY[0x28223BE20](v83, v85);
  v436 = &v425 - v87;
  v89 = MEMORY[0x28223BE20](v86, v88);
  v435 = &v425 - v90;
  v92 = MEMORY[0x28223BE20](v89, v91);
  v434 = &v425 - v93;
  v95 = MEMORY[0x28223BE20](v92, v94);
  v439 = &v425 - v96;
  MEMORY[0x28223BE20](v95, v97);
  v458 = &v425 - v98;
  v99 = sub_22D01666C();
  v100 = [a2 hasEntitlement_];

  if (sub_22CF032C0(a1, v100))
  {
    if (qword_28143FB28 != -1)
    {
      swift_once();
    }

    v101 = sub_22D01637C();
    __swift_project_value_buffer(v101, qword_281444420);
    v102 = v8;
    (*(v9 + 16))(v13, a1, v8);
    v16 = v469;

    v103 = sub_22D01636C();
    v104 = sub_22D0168EC();
    if (!os_log_type_enabled(v103, v104))
    {
      (*(v9 + 8))(v13, v102);

LABEL_50:
      v123 = sub_22D01496C();
      sub_22CEFF2B0(&qword_27D9F3D20, MEMORY[0x277CB94C8], MEMORY[0x277CB94D0]);
      v124 = swift_allocError();
      v126 = v159;
      v127 = MEMORY[0x277CB9490];
      goto LABEL_51;
    }

    v105 = swift_slowAlloc();
    *v105 = 134349312;
    v106 = sub_22D014D4C();
    v108 = v107 >> 62;
    if ((v107 >> 62) <= 1)
    {
      if (!v108)
      {
        v109 = BYTE6(v107);
        sub_22CEE7524(v106, v107);
        v110 = v109;
LABEL_49:
        (*(v9 + 8))(v13, v102);
        *(v105 + 4) = v110;
        *(v105 + 12) = 2050;
        *(v105 + 14) = 4096;

        _os_log_impl(&dword_22CEE1000, v103, v104, "Request attribute size %{public}ld exceeds maximum size of %{public}ld", v105, 0x16u);
        MEMORY[0x2318C6860](v105, -1, -1);

        goto LABEL_50;
      }

      v157 = HIDWORD(v106);
      v158 = v106;
      sub_22CEE7524(v106, v107);
      if (!__OFSUB__(v157, v158))
      {
        v110 = v157 - v158;
        goto LABEL_49;
      }

      __break(1u);
LABEL_207:

      (v467)(v436, v460);
LABEL_208:
      v421 = v458;
      (*(v9 + 16))(v440, v441, v458, v470, v9);
      sub_22CEEC3D8(v450, &qword_27D9F2350, &qword_22D018978);
      (v467)(v421, v460);
      return 0;
    }

    if (v108 != 2)
    {
      sub_22CEE7524(v106, v107);
      v110 = 0;
      goto LABEL_49;
    }

    v121 = *(v106 + 16);
    v120 = *(v106 + 24);
    sub_22CEE7524(v106, v107);
    v122 = __OFSUB__(v120, v121);
    v110 = v120 - v121;
    if (!v122)
    {
      goto LABEL_49;
    }

    __break(1u);
    goto LABEL_20;
  }

  v111 = sub_22D014DAC();
  sub_22D014C7C();
  if (v111)
  {
    if ((MEMORY[0x2318C3DC0]() & 1) == 0)
    {
      goto LABEL_10;
    }
  }

  else if ((MEMORY[0x2318C3DD0]() & 1) == 0)
  {
LABEL_10:
    if (qword_28143FB28 == -1)
    {
      goto LABEL_11;
    }

    goto LABEL_192;
  }

  v459 = a2;
  sub_22CEE84BC(v459);
  v9 = v460;
  v128 = v461;
  (*(v461 + 56))(v79, 0, 1, v460);
  (*(v128 + 32))(v458, v79, v9);
  v129 = sub_22D014CFC();
  if (v129)
  {
    v9 = sub_22D01666C();
    v130 = [v459 hasEntitlement_];

    if (!v130)
    {
      if (qword_28143FB28 == -1)
      {
        goto LABEL_54;
      }

      goto LABEL_212;
    }
  }

  if (sub_22D014D2C())
  {
    v9 = sub_22D01666C();
    v131 = [v459 hasEntitlement_];

    if (!v131)
    {
      if (qword_28143FB28 != -1)
      {
        swift_once();
      }

      v174 = sub_22D01637C();
      __swift_project_value_buffer(v174, qword_281444420);
      v162 = v459;
      v163 = sub_22D01636C();
      v164 = sub_22D0168EC();
      if (os_log_type_enabled(v163, v164))
      {
        v165 = swift_slowAlloc();
        *v165 = 67240192;
        *(v165 + 4) = [v162 pid];

        v166 = "Requester is not entitled to request unbounded activities: %{public}d";
        goto LABEL_64;
      }

LABEL_105:

      v163 = v162;
      goto LABEL_106;
    }
  }

  if ((*(v469 + *(*v469 + 128)) & 1) == 0 && (sub_22D014CFC() & 1) == 0 && (sub_22D014D1C() & 1) == 0)
  {
    if (qword_28143FB28 != -1)
    {
      swift_once();
    }

    v196 = sub_22D01637C();
    __swift_project_value_buffer(v196, qword_281444420);
    v197 = v459;
    v198 = sub_22D01636C();
    v199 = sub_22D0168EC();
    if (os_log_type_enabled(v198, v199))
    {
      v200 = swift_slowAlloc();
      *v200 = 67240192;
      *(v200 + 4) = [v197 pid];

      _os_log_impl(&dword_22CEE1000, v198, v199, "Persistence is not functional and activity is not ephemeral: %{public}d", v200, 8u);
      MEMORY[0x2318C6860](v200, -1, -1);
    }

    else
    {

      v198 = v197;
    }

    v201 = v460;
    v202 = v458;

    v203 = sub_22D01496C();
    sub_22CEFF2B0(&qword_27D9F3D20, MEMORY[0x277CB94C8], MEMORY[0x277CB94D0]);
    v124 = swift_allocError();
    v205 = v204;
    v206 = MEMORY[0x277CB9498];
    goto LABEL_107;
  }

  v427 = 0;
  v132 = *(v468 + 64);
  v429 = v468 + 64;
  v133 = 1 << *(v468 + 32);
  v134 = -1;
  if (v133 < 64)
  {
    v134 = ~(-1 << v133);
  }

  v135 = v134 & v132;
  v136 = (v133 + 63) >> 6;
  v432 = v467 + 16;
  v431 = v467 + 32;
  v433 = (v467 + 8);

  v137 = 0;
  v428 = a1;
  v138 = v462;
  v430 = v73;
  if (v135)
  {
    while (1)
    {
      v139 = v137;
LABEL_40:
      v142 = __clz(__rbit64(v135));
      v135 &= v135 - 1;
      v143 = v142 | (v139 << 6);
      v145 = v467;
      v144 = v468;
      v146 = v463;
      v147 = v470;
      (*(v467 + 16))(v463, *(v468 + 48) + *(v467 + 72) * v143, v470);
      v148 = v464;
      sub_22CEFEB00(*(v144 + 56) + *(v465 + 72) * v143, v464, MEMORY[0x277CB9790]);
      v149 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F3830, &unk_22D01BD18);
      v150 = *(v149 + 48);
      v151 = *(v145 + 32);
      v152 = v430;
      v151(v430, v146, v147);
      sub_22CF033C4(v148, &v152[v150]);
      (*(*(v149 - 8) + 56))(v152, 0, 1, v149);
      v141 = v139;
      v73 = v152;
      v138 = v462;
LABEL_41:
      sub_22CF03428(v73, v138);
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F3830, &unk_22D01BD18);
      v153 = *(v9 - 8);
      a1 = *(v153 + 48);
      if ((a1)(v138, 1, v9) == 1)
      {
        break;
      }

      v154 = v138 + *(v9 + 48);
      v16 = v138;
      v155 = v466;
      sub_22CF033C4(v154, v466);
      if (sub_22CF03498(v155, v459))
      {
        v172 = sub_22D01496C();
        sub_22CEFF2B0(&qword_27D9F3D20, MEMORY[0x277CB94C8], MEMORY[0x277CB94D0]);
        v124 = swift_allocError();
        (*(*(v172 - 8) + 104))(v173, *MEMORY[0x277CB94B0], v172);

        sub_22CEFD754(v155, MEMORY[0x277CB9790]);
        (*(v461 + 8))(v458, v460);
        (*v433)(v16, v470);
        return v124;
      }

      sub_22CEFD754(v155, MEMORY[0x277CB9790]);
      (*v433)(v16, v470);
      v137 = v141;
      v138 = v16;
      if (!v135)
      {
        goto LABEL_33;
      }
    }

    v167 = v468;

    if (sub_22CF04384(v459))
    {
      v168 = sub_22D01496C();
      sub_22CEFF2B0(&qword_27D9F3D20, MEMORY[0x277CB94C8], MEMORY[0x277CB94D0]);
      v124 = swift_allocError();
      v170 = v169;
      v171 = MEMORY[0x277CB94A0];
LABEL_58:
      (*(*(v168 - 8) + 104))(v170, *v171, v168);
      (*(v461 + 8))(v458, v460);
      return v124;
    }

    if (sub_22D014D0C())
    {
      v175 = sub_22D01666C();
      v176 = [v459 hasEntitlement_];

      if ((v176 & 1) == 0)
      {
        if (qword_28143FB28 != -1)
        {
          swift_once();
        }

        v231 = sub_22D01637C();
        __swift_project_value_buffer(v231, qword_281444420);
        v162 = v459;
        v163 = sub_22D01636C();
        v164 = sub_22D0168EC();
        if (os_log_type_enabled(v163, v164))
        {
          v165 = swift_slowAlloc();
          *v165 = 67240192;
          *(v165 + 4) = [v162 pid];

          v166 = "Requester is not entitled to request important activities: %{public}d";
          goto LABEL_64;
        }

        goto LABEL_105;
      }
    }

    v177 = sub_22D014CEC();
    v430 = a1;
    if (v178)
    {
      v179 = v177;
      v180 = v178;
      v181 = sub_22D01666C();
      v182 = [v459 hasEntitlement_];

      v185 = v427;
      v186 = v451;
      if (!v182)
      {

        if (qword_28143FB28 != -1)
        {
          swift_once();
        }

        v232 = sub_22D01637C();
        __swift_project_value_buffer(v232, qword_281444420);
        v162 = v459;
        v163 = sub_22D01636C();
        v164 = sub_22D0168EC();
        if (os_log_type_enabled(v163, v164))
        {
          v165 = swift_slowAlloc();
          *v165 = 67240192;
          *(v165 + 4) = [v162 pid];

          v166 = "Requester is not entitled to reconnect ephemeral activities: %{public}d";
          goto LABEL_64;
        }

        goto LABEL_105;
      }

      v471[0] = 46;
      v471[1] = 0xE100000000000000;
      MEMORY[0x28223BE20](v183, v184);
      *(&v425 - 2) = v471;

      v188 = sub_22D0046B0(0x7FFFFFFFFFFFFFFFLL, 1, sub_22CF4D2CC, (&v425 - 4), v179, v180, v187);
      if (v188[2] != 2)
      {

        if (qword_28143FB28 != -1)
        {
          swift_once();
        }

        v263 = sub_22D01637C();
        __swift_project_value_buffer(v263, qword_281444420);
        v264 = v459;

        v265 = sub_22D01636C();
        v266 = sub_22D0168EC();

        if (os_log_type_enabled(v265, v266))
        {
          v267 = v179;
          v268 = swift_slowAlloc();
          v269 = swift_slowAlloc();
          v471[0] = v269;
          *v268 = 136446466;
          v270 = v267;
LABEL_154:
          v323 = sub_22CEEE31C(v270, v180, v471);

          *(v268 + 4) = v323;
          *(v268 + 12) = 1026;
          *(v268 + 14) = [v264 pid];

          _os_log_impl(&dword_22CEE1000, v265, v266, "Requester provided malformed activity identifier %{public}s: %{public}d", v268, 0x12u);
          __swift_destroy_boxed_opaque_existential_1Tm(v269);
          MEMORY[0x2318C6860](v269, -1, -1);
          MEMORY[0x2318C6860](v268, -1, -1);

LABEL_156:
          v168 = sub_22D01496C();
          sub_22CEFF2B0(&qword_27D9F3D20, MEMORY[0x277CB94C8], MEMORY[0x277CB94D0]);
          v124 = swift_allocError();
          v170 = v324;
          v171 = MEMORY[0x277CB9468];
          goto LABEL_58;
        }

LABEL_155:

        goto LABEL_156;
      }

      v462 = v179;
      v189 = v188[8];
      v190 = v188[9];
      v191 = v188[11];
      v466 = v188[10];

      if (!((v190 ^ v189) >> 14))
      {

        goto LABEL_150;
      }

      v192 = sub_22D0054F4(v189, v190, v466, v191, 10);
      if ((v193 & 0x100) != 0)
      {
        v195 = sub_22D004AE8(v189, v190, v466, v191, 10);
        v194 = v321;
      }

      else
      {
        v194 = v193;
        v195 = v192;
      }

      if (v194)
      {
LABEL_150:
        if (qword_28143FB28 != -1)
        {
          swift_once();
        }

        v322 = sub_22D01637C();
        __swift_project_value_buffer(v322, qword_281444420);
        v264 = v459;

        v265 = sub_22D01636C();
        v266 = sub_22D0168EC();

        if (os_log_type_enabled(v265, v266))
        {
          v268 = swift_slowAlloc();
          v269 = swift_slowAlloc();
          v471[0] = v269;
          *v268 = 136446466;
          v270 = v462;
          goto LABEL_154;
        }

        goto LABEL_155;
      }

      v167 = v468;
      if (v195 != [v459 pid])
      {
        if (qword_28143FB28 != -1)
        {
          swift_once();
        }

        v351 = sub_22D01637C();
        __swift_project_value_buffer(v351, qword_281444420);
        v352 = v459;

        v353 = sub_22D01636C();
        v354 = sub_22D0168EC();

        if (os_log_type_enabled(v353, v354))
        {
          v355 = swift_slowAlloc();
          v356 = swift_slowAlloc();
          v471[0] = v356;
          *v355 = 136446466;
          v357 = sub_22CEEE31C(v462, v180, v471);

          *(v355 + 4) = v357;
          *(v355 + 12) = 1026;
          *(v355 + 14) = [v352 pid];

          _os_log_impl(&dword_22CEE1000, v353, v354, "Requester is not permitted to reconnect activity %{public}s: %{public}d", v355, 0x12u);
          __swift_destroy_boxed_opaque_existential_1Tm(v356);
          MEMORY[0x2318C6860](v356, -1, -1);
          MEMORY[0x2318C6860](v355, -1, -1);
        }

        else
        {
        }

        v168 = sub_22D01496C();
        sub_22CEFF2B0(&qword_27D9F3D20, MEMORY[0x277CB94C8], MEMORY[0x277CB94D0]);
        v124 = swift_allocError();
        v170 = v385;
        v171 = MEMORY[0x277CB94A8];
        goto LABEL_58;
      }

      v427 = v185;
      v325 = v450;

      v207 = v325;
      a1 = v430;
    }

    else
    {
      v207 = v450;
      v186 = v451;
    }

    v208 = *(v465 + 56);
    v428 = (v465 + 56);
    v426 = v208;
    v208(v207, 1, 1, v186);
    v209 = 1 << *(v167 + 32);
    v210 = -1;
    if (v209 < 64)
    {
      v210 = ~(-1 << v209);
    }

    v211 = v210 & *(v167 + 64);
    v212 = (v209 + 63) >> 6;
    v466 = (v153 + 56);

    v213 = 0;
    v8 = v456;
    v214 = v457;
    v16 = v455;
    if (!v211)
    {
LABEL_84:
      if (v212 <= v213 + 1)
      {
        v216 = v213 + 1;
      }

      else
      {
        v216 = v212;
      }

      v217 = v216 - 1;
      while (1)
      {
        v215 = v213 + 1;
        if (__OFADD__(v213, 1))
        {
          break;
        }

        if (v215 >= v212)
        {
          v211 = 0;
          v230 = 1;
          goto LABEL_92;
        }

        v211 = *(v429 + 8 * v215);
        ++v213;
        if (v211)
        {
          goto LABEL_91;
        }
      }

      __break(1u);
LABEL_192:
      swift_once();
LABEL_11:
      v112 = sub_22D01637C();
      __swift_project_value_buffer(v112, qword_281444420);
      v102 = v8;
      (*(v9 + 16))(v16, a1, v8);
      v13 = sub_22D01636C();
      v113 = sub_22D0168EC();
      if (os_log_type_enabled(v13, v113))
      {
        v114 = swift_slowAlloc();
        v115 = swift_slowAlloc();
        v471[0] = v115;
        *v114 = 136380675;
        sub_22CEFF2B0(&qword_27D9F34A0, MEMORY[0x277CB9678], MEMORY[0x277CB9690]);
        v116 = sub_22D016DEC();
        v118 = v117;
        (*(v9 + 8))(v16, v102);
        v119 = sub_22CEEE31C(v116, v118, v471);

        *(v114 + 4) = v119;
        _os_log_impl(&dword_22CEE1000, v13, v113, "Live Activities are not supported for this type of request: %{private}s", v114, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v115);
        MEMORY[0x2318C6860](v115, -1, -1);
        MEMORY[0x2318C6860](v114, -1, -1);

LABEL_21:
        v123 = sub_22D01496C();
        sub_22CEFF2B0(&qword_27D9F3D20, MEMORY[0x277CB94C8], MEMORY[0x277CB94D0]);
        v124 = swift_allocError();
        v126 = v125;
        v127 = MEMORY[0x277CB9480];
LABEL_51:
        (*(*(v123 - 8) + 104))(v126, *v127, v123);
        return v124;
      }

LABEL_20:

      (*(v9 + 8))(v16, v102);
      goto LABEL_21;
    }

    while (1)
    {
      v215 = v213;
LABEL_91:
      v218 = __clz(__rbit64(v211));
      v211 &= v211 - 1;
      v219 = v218 | (v215 << 6);
      v220 = v467;
      v221 = v468;
      v222 = v463;
      v223 = v470;
      (*(v467 + 16))(v463, *(v468 + 48) + *(v467 + 72) * v219, v470);
      v224 = *(v221 + 56);
      v225 = v464;
      sub_22CEFEB00(v224 + *(v465 + 72) * v219, v464, MEMORY[0x277CB9790]);
      v226 = *(v9 + 48);
      v227 = *(v220 + 32);
      v228 = v455;
      v227(v455, v222, v223);
      v229 = v225;
      v16 = v228;
      sub_22CF033C4(v229, v228 + v226);
      v230 = 0;
      v217 = v215;
      v8 = v456;
      v214 = v457;
      a1 = v430;
LABEL_92:
      v462 = *v466;
      (v462)(v16, v230, 1, v9);
      sub_22CF03428(v16, v8);
      if ((a1)(v8, 1, v9) == 1)
      {
        break;
      }

      sub_22CF033C4(v8 + *(v9 + 48), v214);
      if (sub_22CF04684(v214))
      {
        v234 = v450;
        sub_22CEEC3D8(v450, &qword_27D9F2350, &qword_22D018978);

        sub_22CF033C4(v214, v234);
        v236 = v451;
        v426(v234, 0, 1, v451);
        (*v433)(v8, v470);
        v235 = v446;
        goto LABEL_111;
      }

      sub_22CEFD754(v214, MEMORY[0x277CB9790]);
      (*v433)(v8, v470);
      v213 = v217;
      if (!v211)
      {
        goto LABEL_84;
      }
    }
  }

  else
  {
LABEL_33:
    if (v136 <= v137 + 1)
    {
      v140 = v137 + 1;
    }

    else
    {
      v140 = v136;
    }

    v141 = v140 - 1;
    while (1)
    {
      v139 = v137 + 1;
      if (__OFADD__(v137, 1))
      {
        break;
      }

      if (v139 >= v136)
      {
        v156 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F3830, &unk_22D01BD18);
        (*(*(v156 - 8) + 56))(v73, 1, 1, v156);
        v135 = 0;
        goto LABEL_41;
      }

      v135 = *(v429 + 8 * v139);
      ++v137;
      if (v135)
      {
        goto LABEL_40;
      }
    }

    __break(1u);
  }

  v234 = v450;
  v235 = v446;
  v236 = v451;
LABEL_111:
  sub_22CEEB6DC(v234, v235, &qword_27D9F2350, &qword_22D018978);
  v237 = (*(v465 + 48))(v235, 1, v236);
  v239 = v460;
  v238 = v461;
  v240 = v453;
  if (v237 == 1)
  {
    sub_22CEEC3D8(v235, &qword_27D9F2350, &qword_22D018978);
    if (qword_28143FB28 != -1)
    {
      swift_once();
    }

    v241 = sub_22D01637C();
    __swift_project_value_buffer(v241, qword_281444420);
    v242 = sub_22D01636C();
    v243 = sub_22D0168EC();
    if (os_log_type_enabled(v242, v243))
    {
      v244 = swift_slowAlloc();
      *v244 = 0;
      _os_log_impl(&dword_22CEE1000, v242, v243, "No scene target has user consent to request activities", v244, 2u);
      v245 = v244;
      v238 = v461;
      MEMORY[0x2318C6860](v245, -1, -1);
    }

    v246 = sub_22D01496C();
    sub_22CEFF2B0(&qword_27D9F3D20, MEMORY[0x277CB94C8], MEMORY[0x277CB94D0]);
    v124 = swift_allocError();
    (*(*(v246 - 8) + 104))(v247, *MEMORY[0x277CB94C0], v246);
    sub_22CEEC3D8(v234, &qword_27D9F2350, &qword_22D018978);
    (*(v238 + 8))(v458, v239);
    return v124;
  }

  v248 = v445;
  sub_22CF033C4(v235, v445);
  if (qword_28143FB28 != -1)
  {
    swift_once();
  }

  v249 = sub_22D01637C();
  v250 = __swift_project_value_buffer(v249, qword_281444420);
  v251 = v444;
  sub_22CEFEB00(v248, v444, MEMORY[0x277CB9790]);
  v457 = v250;
  v252 = sub_22D01636C();
  v253 = sub_22D01690C();
  if (os_log_type_enabled(v252, v253))
  {
    v254 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v471[0] = v16;
    *v254 = 136446210;
    v255 = sub_22D014ECC();
    v257 = v256;
    v258 = v251;
    v259 = MEMORY[0x277CB9790];
    sub_22CEFD754(v258, MEMORY[0x277CB9790]);
    v260 = sub_22CEEE31C(v255, v257, v471);

    *(v254 + 4) = v260;
    _os_log_impl(&dword_22CEE1000, v252, v253, "User consent granted by scene target %{public}s", v254, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v16);
    MEMORY[0x2318C6860](v16, -1, -1);
    MEMORY[0x2318C6860](v254, -1, -1);

    v261 = v445;
    v262 = v259;
  }

  else
  {

    v271 = MEMORY[0x277CB9790];
    sub_22CEFD754(v251, MEMORY[0x277CB9790]);
    v261 = v248;
    v262 = v271;
  }

  sub_22CEFD754(v261, v262);
  v272 = v452;
  v273 = 1 << *(v468 + 32);
  v274 = -1;
  if (v273 < 64)
  {
    v274 = ~(-1 << v273);
  }

  v275 = v274 & *(v468 + 64);
  v276 = (v273 + 63) >> 6;

  v277 = 0;
  if (!v275)
  {
LABEL_130:
    if (v276 <= v277 + 1)
    {
      v279 = v277 + 1;
    }

    else
    {
      v279 = v276;
    }

    v280 = v279 - 1;
    while (1)
    {
      v278 = v277 + 1;
      if (__OFADD__(v277, 1))
      {
        break;
      }

      if (v278 >= v276)
      {
        v275 = 0;
        v292 = 1;
        v291 = v454;
        goto LABEL_138;
      }

      v275 = *(v429 + 8 * v278);
      ++v277;
      if (v275)
      {
        goto LABEL_137;
      }
    }

    __break(1u);
LABEL_198:

    v373 = *(v461 + 8);
    v373(v16, v276);
LABEL_199:
    v401 = v458;
    (*(v9 + 16))(v440, v441, v458, v470, v9);
    sub_22CEEC3D8(v450, &qword_27D9F2350, &qword_22D018978);
    v373(v401, v276);
    return 0;
  }

  while (1)
  {
    v278 = v277;
LABEL_137:
    v281 = __clz(__rbit64(v275));
    v275 &= v275 - 1;
    v282 = v281 | (v278 << 6);
    v284 = v467;
    v283 = v468;
    v285 = v463;
    v286 = v470;
    (*(v467 + 16))(v463, *(v468 + 48) + *(v467 + 72) * v282, v470);
    v287 = *(v283 + 56);
    v288 = v464;
    sub_22CEFEB00(v287 + *(v465 + 72) * v282, v464, MEMORY[0x277CB9790]);
    v289 = *(v9 + 48);
    v290 = *(v284 + 32);
    v291 = v454;
    v290(v454, v285, v286);
    sub_22CF033C4(v288, v291 + v289);
    v292 = 0;
    v280 = v278;
    v272 = v452;
    v240 = v453;
LABEL_138:
    (v462)(v291, v292, 1, v9);
    sub_22CF03428(v291, v240);
    v16 = v430;
    if ((v430)(v240, 1, v9) == 1)
    {
      break;
    }

    sub_22CF033C4(v240 + *(v9 + 48), v272);
    if (sub_22CF048A8(v272))
    {
      v310 = v443;
      sub_22CEFEB00(v272, v443, MEMORY[0x277CB9790]);
      v311 = sub_22D01636C();
      v312 = sub_22D0168EC();
      if (os_log_type_enabled(v311, v312))
      {
        v313 = swift_slowAlloc();
        v314 = swift_slowAlloc();
        v471[0] = v314;
        *v313 = 136380675;
        v315 = sub_22D014ECC();
        v317 = v316;
        sub_22CEFD754(v310, MEMORY[0x277CB9790]);
        v318 = sub_22CEEE31C(v315, v317, v471);
        v272 = v452;

        *(v313 + 4) = v318;
        _os_log_impl(&dword_22CEE1000, v311, v312, "Scene target is restricted: %{private}s", v313, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v314);
        MEMORY[0x2318C6860](v314, -1, -1);
        MEMORY[0x2318C6860](v313, -1, -1);
      }

      else
      {

        sub_22CEFD754(v310, MEMORY[0x277CB9790]);
      }

      v319 = v461;
      v320 = v450;
      v349 = sub_22D01496C();
      sub_22CEFF2B0(&qword_27D9F3D20, MEMORY[0x277CB94C8], MEMORY[0x277CB94D0]);
      v124 = swift_allocError();
      (*(*(v349 - 8) + 104))(v350, *MEMORY[0x277CB94C0], v349);

      sub_22CEFD754(v272, MEMORY[0x277CB9790]);
      sub_22CEEC3D8(v320, &qword_27D9F2350, &qword_22D018978);
      (*(v319 + 8))(v458, v460);
      (*v433)(v240, v470);
      return v124;
    }

    sub_22CEFD754(v272, MEMORY[0x277CB9790]);
    (*v433)(v240, v470);
    v277 = v280;
    if (!v275)
    {
      goto LABEL_130;
    }
  }

  v293 = v468;

  v294 = sub_22D01666C();
  v295 = [v459 hasEntitlement_];

  if (v295)
  {
    v297 = v460;
    v296 = v461;
    v298 = v439;
    (*(v461 + 16))(v439, v458, v460);
    v299 = sub_22D01636C();
    v300 = sub_22D01690C();
    if (os_log_type_enabled(v299, v300))
    {
      v301 = v296;
      v302 = swift_slowAlloc();
      v303 = swift_slowAlloc();
      v471[0] = v303;
      *v302 = 136380675;
      sub_22CEFF2B0(&qword_281443988, MEMORY[0x277CB9810], MEMORY[0x277CB9830]);
      v304 = sub_22D016DEC();
      v305 = v298;
      v307 = v306;
      v308 = *(v301 + 8);
      v308(v305, v297);
      v309 = sub_22CEEE31C(v304, v307, v471);

      *(v302 + 4) = v309;
      _os_log_impl(&dword_22CEE1000, v299, v300, "Requester is entitled to create activities: %{private}s", v302, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v303);
      MEMORY[0x2318C6860](v303, -1, -1);
      MEMORY[0x2318C6860](v302, -1, -1);
    }

    else
    {

      v308 = *(v296 + 8);
      v308(v298, v297);
    }

    v358 = v450;
    v359 = v458;
    (*(*(v442 + 88) + 16))(v440, v441, v458, *(v442 + 80));
    sub_22CEEC3D8(v358, &qword_27D9F2350, &qword_22D018978);
    v308(v359, v297);
    return 0;
  }

  v326 = 1 << *(v293 + 32);
  v327 = -1;
  if (v326 < 64)
  {
    v327 = ~(-1 << v326);
  }

  v328 = v327 & *(v293 + 64);
  v329 = (v326 + 63) >> 6;

  v330 = 0;
  v331 = v447;
  if (!v328)
  {
LABEL_163:
    if (v329 <= v330 + 1)
    {
      v333 = v330 + 1;
    }

    else
    {
      v333 = v329;
    }

    v334 = v333 - 1;
    while (1)
    {
      v332 = v330 + 1;
      if (__OFADD__(v330, 1))
      {
        break;
      }

      if (v332 >= v329)
      {
        v328 = 0;
        v345 = 1;
        goto LABEL_171;
      }

      v328 = *(v429 + 8 * v332);
      ++v330;
      if (v328)
      {
        goto LABEL_170;
      }
    }

    __break(1u);
LABEL_212:
    swift_once();
LABEL_54:
    v161 = sub_22D01637C();
    __swift_project_value_buffer(v161, qword_281444420);
    v162 = v459;
    v163 = sub_22D01636C();
    v164 = sub_22D0168EC();
    if (os_log_type_enabled(v163, v164))
    {
      v165 = swift_slowAlloc();
      *v165 = 67240192;
      *(v165 + 4) = [v162 pid];

      v166 = "Requester is not entitled to request ephemeral activities: %{public}d";
LABEL_64:
      _os_log_impl(&dword_22CEE1000, v163, v164, v166, v165, 8u);
      MEMORY[0x2318C6860](v165, -1, -1);
LABEL_106:
      v201 = v460;
      v202 = v458;

      v203 = sub_22D01496C();
      sub_22CEFF2B0(&qword_27D9F3D20, MEMORY[0x277CB94C8], MEMORY[0x277CB94D0]);
      v124 = swift_allocError();
      v205 = v233;
      v206 = MEMORY[0x277CB9470];
LABEL_107:
      (*(*(v203 - 8) + 104))(v205, *v206, v203);
      (*(v461 + 8))(v202, v201);
      return v124;
    }

    goto LABEL_105;
  }

  while (1)
  {
    v332 = v330;
LABEL_170:
    v335 = __clz(__rbit64(v328));
    v328 &= v328 - 1;
    v336 = v335 | (v332 << 6);
    v338 = v467;
    v337 = v468;
    v339 = v463;
    v340 = v470;
    (*(v467 + 16))(v463, *(v468 + 48) + *(v467 + 72) * v336, v470);
    v341 = *(v337 + 56);
    v342 = v464;
    sub_22CEFEB00(v341 + *(v465 + 72) * v336, v464, MEMORY[0x277CB9790]);
    v343 = *(v9 + 48);
    v344 = *(v338 + 32);
    v331 = v447;
    v344(v447, v339, v340);
    sub_22CF033C4(v342, v331 + v343);
    v345 = 0;
    v334 = v332;
    v16 = v430;
LABEL_171:
    (v462)(v331, v345, 1, v9);
    v346 = v449;
    sub_22CF03428(v331, v449);
    v347 = (v16)(v346, 1, v9);
    v348 = v448;
    if (v347 == 1)
    {
      break;
    }

    sub_22CF033C4(v346 + *(v9 + 48), v448);
    if ((sub_22D005A2C(v348) & 1) == 0)
    {
      v375 = v438;
      sub_22CEFEB00(v348, v438, MEMORY[0x277CB9790]);
      v376 = sub_22D01636C();
      v377 = sub_22D0168EC();
      if (os_log_type_enabled(v376, v377))
      {
        v378 = swift_slowAlloc();
        v379 = swift_slowAlloc();
        v471[0] = v379;
        *v378 = 136446210;
        v380 = sub_22D014ECC();
        v382 = v381;
        sub_22CEFD754(v375, MEMORY[0x277CB9790]);
        v383 = sub_22CEEE31C(v380, v382, v471);

        *(v378 + 4) = v383;
        _os_log_impl(&dword_22CEE1000, v376, v377, "Target does not include NSSupportsLiveActivities key in its Info.plist %{public}s", v378, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v379);
        v384 = v379;
        v348 = v448;
        MEMORY[0x2318C6860](v384, -1, -1);
        MEMORY[0x2318C6860](v378, -1, -1);
      }

      else
      {

        sub_22CEFD754(v375, MEMORY[0x277CB9790]);
      }

      v398 = v449;
      v399 = sub_22D01496C();
      sub_22CEFF2B0(&qword_27D9F3D20, MEMORY[0x277CB94C8], MEMORY[0x277CB94D0]);
      v124 = swift_allocError();
      (*(*(v399 - 8) + 104))(v400, *MEMORY[0x277CB9488], v399);

      sub_22CEFD754(v348, MEMORY[0x277CB9790]);
      sub_22CEEC3D8(v450, &qword_27D9F2350, &qword_22D018978);
      (*(v461 + 8))(v458, v460);
      (*v433)(v398, v470);
      return v124;
    }

    sub_22CEFD754(v348, MEMORY[0x277CB9790]);
    (*v433)(v346, v470);
    v330 = v334;
    if (!v328)
    {
      goto LABEL_163;
    }
  }

  v360 = *(v442 + 80);
  v9 = *(v442 + 88);
  v361 = *(v9 + 8);
  v468 = *(*v469 + 104);
  v362 = v458;
  v470 = v360;
  v363 = v361(v458);
  v364 = *(v461 + 16);
  if (v363)
  {
    v16 = v434;
    v365 = v362;
    v276 = v460;
    v364(v434, v365, v460);
    v275 = sub_22D01636C();
    v366 = sub_22D01690C();
    if (!os_log_type_enabled(v275, v366))
    {
      goto LABEL_198;
    }

    v367 = swift_slowAlloc();
    v368 = swift_slowAlloc();
    v471[0] = v368;
    *v367 = 136380675;
    sub_22CEFF2B0(&qword_281443988, MEMORY[0x277CB9810], MEMORY[0x277CB9830]);
    v369 = sub_22D016DEC();
    v370 = v16;
    v372 = v371;
    v373 = *(v461 + 8);
    v373(v370, v276);
    v374 = sub_22CEEE31C(v369, v372, v471);

    *(v367 + 4) = v374;
    _os_log_impl(&dword_22CEE1000, v275, v366, "Requester is targeted by an activity request assertion: %{private}s", v367, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v368);
    MEMORY[0x2318C6860](v368, -1, -1);
    MEMORY[0x2318C6860](v367, -1, -1);

    goto LABEL_199;
  }

  v386 = v435;
  v387 = v362;
  v388 = v460;
  v364(v435, v387, v460);
  v389 = sub_22D01636C();
  v390 = sub_22D01690C();
  if (os_log_type_enabled(v389, v390))
  {
    v391 = swift_slowAlloc();
    v392 = swift_slowAlloc();
    v471[0] = v392;
    *v391 = 136380675;
    sub_22CEFF2B0(&qword_281443988, MEMORY[0x277CB9810], MEMORY[0x277CB9830]);
    v393 = sub_22D016DEC();
    v394 = v386;
    v396 = v395;
    v467 = *(v461 + 8);
    (v467)(v394, v388);
    v397 = sub_22CEEE31C(v393, v396, v471);

    *(v391 + 4) = v397;
    _os_log_impl(&dword_22CEE1000, v389, v390, "Requester is not targeted by an activity request assertion: %{private}s", v391, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v392);
    MEMORY[0x2318C6860](v392, -1, -1);
    MEMORY[0x2318C6860](v391, -1, -1);
  }

  else
  {

    v467 = *(v461 + 8);
    (v467)(v386, v388);
  }

  if (sub_22D005EE4(v459))
  {
    v364(v436, v458, v460);
    v103 = sub_22D01636C();
    v402 = sub_22D01690C();
    if (!os_log_type_enabled(v103, v402))
    {
      goto LABEL_207;
    }

    v403 = swift_slowAlloc();
    v404 = swift_slowAlloc();
    v471[0] = v404;
    *v403 = 136380675;
    sub_22CEFF2B0(&qword_281443988, MEMORY[0x277CB9810], MEMORY[0x277CB9830]);
    v405 = v436;
    v406 = v460;
    v407 = sub_22D016DEC();
    v409 = v408;
    (v467)(v405, v406);
    v410 = sub_22CEEE31C(v407, v409, v471);

    *(v403 + 4) = v410;
    _os_log_impl(&dword_22CEE1000, v103, v402, "Requester is foreground: %{private}s", v403, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v404);
    MEMORY[0x2318C6860](v404, -1, -1);
    MEMORY[0x2318C6860](v403, -1, -1);

    goto LABEL_208;
  }

  v364(v437, v458, v460);
  v411 = sub_22D01636C();
  v412 = sub_22D01690C();
  if (os_log_type_enabled(v411, v412))
  {
    v413 = swift_slowAlloc();
    v414 = swift_slowAlloc();
    v471[0] = v414;
    *v413 = 136380675;
    sub_22CEFF2B0(&qword_281443988, MEMORY[0x277CB9810], MEMORY[0x277CB9830]);
    v415 = v437;
    v416 = v460;
    v417 = sub_22D016DEC();
    v419 = v418;
    (v467)(v415, v416);
    v420 = sub_22CEEE31C(v417, v419, v471);

    *(v413 + 4) = v420;
    _os_log_impl(&dword_22CEE1000, v411, v412, "Requester is not foreground: %{private}s", v413, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v414);
    MEMORY[0x2318C6860](v414, -1, -1);
    MEMORY[0x2318C6860](v413, -1, -1);
  }

  else
  {

    (v467)(v437, v460);
  }

  v422 = v458;
  (*(v9 + 24))(v458, v470, v9);
  v423 = sub_22D01496C();
  sub_22CEFF2B0(&qword_27D9F3D20, MEMORY[0x277CB94C8], MEMORY[0x277CB94D0]);
  v124 = swift_allocError();
  (*(*(v423 - 8) + 104))(v424, *MEMORY[0x277CB9478], v423);
  sub_22CEEC3D8(v450, &qword_27D9F2350, &qword_22D018978);
  (v467)(v422, v460);
  return v124;
}

uint64_t sub_22CF032B0(char *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2)
  {
    return sub_22CEFF988(a1, a2, a3, a4, a5);
  }

  else
  {
    return sub_22D0027F0(a1, a3);
  }
}

uint64_t sub_22CF032C0(uint64_t a1, char a2)
{
  v3 = sub_22D014D4C();
  v5 = v4 >> 62;
  if (a2)
  {
    if ((v4 >> 62) <= 1)
    {
      if (!v5)
      {
LABEL_4:
        sub_22CEE7524(v3, v4);
        v6 = 1;
        return !v6;
      }

      goto LABEL_16;
    }

    if (v5 != 2)
    {
      goto LABEL_4;
    }

    v10 = *(v3 + 16);
    v9 = *(v3 + 24);
    v3 = sub_22CEE7524(v3, v4);
    v5 = v9 - v10;
    if (!__OFSUB__(v9, v10))
    {
      goto LABEL_18;
    }

    __break(1u);
  }

  else if ((v4 >> 62) <= 1)
  {
    if (v5)
    {
      v16 = HIDWORD(v3);
      v17 = v3;
      result = sub_22CEE7524(v3, v4);
      LODWORD(v8) = v16 - v17;
      if (__OFSUB__(v16, v17))
      {
        goto LABEL_28;
      }

      v8 = v8;
    }

    else
    {
      v7 = BYTE6(v4);
      sub_22CEE7524(v3, v4);
      v8 = v7;
    }

    goto LABEL_23;
  }

  if (v5 == 2)
  {
    v12 = *(v3 + 16);
    v11 = *(v3 + 24);
    v3 = sub_22CEE7524(v3, v4);
    v8 = v11 - v12;
    if (__OFSUB__(v11, v12))
    {
      __break(1u);
LABEL_16:
      v13 = HIDWORD(v3);
      v14 = v3;
      result = sub_22CEE7524(v3, v4);
      LODWORD(v5) = v13 - v14;
      if (!__OFSUB__(v13, v14))
      {
        v5 = v5;
LABEL_18:
        v6 = v5 <= 81920;
        return !v6;
      }

      __break(1u);
LABEL_28:
      __break(1u);
      return result;
    }
  }

  else
  {
    sub_22CEE7524(v3, v4);
    v8 = 0;
  }

LABEL_23:
  v6 = v8 <= 4096;
  return !v6;
}

uint64_t sub_22CF033C4(uint64_t a1, uint64_t a2)
{
  v4 = sub_22D014EFC();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_22CF03428(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F3828, &qword_22D01BD10);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_22CF03498(uint64_t a1, void *a2)
{
  v5 = sub_22D014EFC();
  MEMORY[0x28223BE20](v5 - 8, v6);
  v8 = &v43[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = (v2 + *(*v2 + 112));
  v10 = v9[3];
  v11 = v9[4];
  __swift_project_boxed_opaque_existential_1(v9, v10);
  v12 = (*(v11 + 8))(v10, v11);
  v13 = sub_22CF03A84(v12);

  v44 = a1;
  v14 = sub_22CEE9F88(sub_22D00643C, v43, v13);

  v15 = v14[2];

  if (!a2)
  {
    if (v15 >= 5)
    {
      goto LABEL_25;
    }

    return 0;
  }

  v16 = a2;
  v17 = sub_22D01666C();
  v18 = [v16 valueForEntitlement_];

  if (v18)
  {
    sub_22D016ACC();
    swift_unknownObjectRelease();
  }

  else
  {
    v46 = 0u;
    v47 = 0u;
  }

  v48[0] = v46;
  v48[1] = v47;
  if (*(&v47 + 1))
  {
    if (swift_dynamicCast())
    {
      v19 = v45;
      if (qword_28143FB28 != -1)
      {
        swift_once();
      }

      v20 = sub_22D01637C();
      __swift_project_value_buffer(v20, qword_281444420);
      v21 = v16;
      v22 = sub_22D01636C();
      v23 = sub_22D01690C();
      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        *v24 = 67240448;
        *(v24 + 4) = [v21 pid];

        *(v24 + 8) = 2048;
        *(v24 + 10) = v19;
        _os_log_impl(&dword_22CEE1000, v22, v23, "Client (pid: %{public}d) has their own activity limit %ld", v24, 0x12u);
        MEMORY[0x2318C6860](v24, -1, -1);
      }

      else
      {
      }

      if (v15 < v19)
      {
        return 0;
      }

      goto LABEL_19;
    }

    if (v15 < 5)
    {
      return 0;
    }
  }

  else
  {

    sub_22CEEC3D8(v48, &qword_27D9F2B10, &unk_22D01B930);
    if (v15 < 5)
    {
      return 0;
    }
  }

LABEL_19:
  v25 = v16;
  v26 = sub_22D01666C();
  v27 = [v25 hasEntitlement_];

  if (v27)
  {
    if (qword_28143FB28 != -1)
    {
      swift_once();
    }

    v28 = sub_22D01637C();
    __swift_project_value_buffer(v28, qword_281444420);
    v29 = v25;
    v30 = sub_22D01636C();
    v31 = sub_22D0168EC();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 67240448;
      *(v32 + 4) = [v29 pid];

      *(v32 + 8) = 2048;
      *(v32 + 10) = v15;
      _os_log_impl(&dword_22CEE1000, v30, v31, "Bypassing activity count limit for %{public}d due to entitlement (current=%ld).", v32, 0x12u);
      MEMORY[0x2318C6860](v32, -1, -1);
    }

    else
    {
    }

    return 0;
  }

LABEL_25:
  if (qword_28143FB28 != -1)
  {
    swift_once();
  }

  v33 = sub_22D01637C();
  __swift_project_value_buffer(v33, qword_281444420);
  sub_22CEFEB00(a1, v8, MEMORY[0x277CB9790]);
  v34 = sub_22D01636C();
  v35 = sub_22D0168EC();
  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    *&v48[0] = v37;
    *v36 = 136446210;
    v38 = sub_22D014ECC();
    v40 = v39;
    sub_22CEFD754(v8, MEMORY[0x277CB9790]);
    v41 = sub_22CEEE31C(v38, v40, v48);

    *(v36 + 4) = v41;
    _os_log_impl(&dword_22CEE1000, v34, v35, "Cannot create new activity as maximum count for target has been reached: %{public}s", v36, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v37);
    MEMORY[0x2318C6860](v37, -1, -1);
    MEMORY[0x2318C6860](v36, -1, -1);
  }

  else
  {

    sub_22CEFD754(v8, MEMORY[0x277CB9790]);
  }

  return 1;
}

void *sub_22CF03A84(uint64_t a1)
{
  v2 = v1;
  v3 = a1;
  v16[1] = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 32);
  v5 = v4 & 0x3F;
  v6 = (1 << v4) + 63;
  v7 = v6 >> 6;
  v8 = 8 * (v6 >> 6);
  if (v5 <= 0xD)
  {
    goto LABEL_2;
  }

  v12 = 8 * (v6 >> 6);

  if (swift_stdlib_isStackAllocationSafe())
  {

    v8 = v12;
LABEL_2:
    MEMORY[0x28223BE20](a1, v8);
    v10 = v16 - ((v9 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v10, v9);
    result = sub_22CF03BE4(v10, v7, v3);
    if (v2)
    {
      return swift_willThrow();
    }

    return result;
  }

  v13 = swift_slowAlloc();
  v14 = v2;
  v15 = sub_22D004A70(v13, v7, v3);
  result = MEMORY[0x2318C6860](v13, -1, -1);
  if (!v14)
  {
    return v15;
  }

  return result;
}

uint64_t sub_22CF03BE4(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  v71 = a2;
  v72 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2648, &unk_22D018BC0);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v70 = &v63 - v6;
  v69 = sub_22D01461C();
  v7 = *(v69 - 8);
  MEMORY[0x28223BE20](v69, v8);
  v68 = &v63 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F26E0, &unk_22D018F80);
  MEMORY[0x28223BE20](v10 - 8, v11);
  v77 = &v63 - v12;
  v13 = sub_22D01430C();
  v14 = *(v13 - 8);
  v16 = MEMORY[0x28223BE20](v13, v15);
  v65 = &v63 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16, v18);
  v84 = &v63 - v19;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9F3840, &unk_22D01A2B0);
  v21 = MEMORY[0x28223BE20](v80, v20);
  v79 = &v63 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21, v23);
  v89 = (&v63 - v24);
  v86 = type metadata accessor for Activity(0);
  v78 = *(v86 - 8);
  result = MEMORY[0x28223BE20](v86, v25);
  v28 = &v63 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = 0;
  v85 = a3;
  v30 = *(a3 + 64);
  v73 = 0;
  v74 = a3 + 64;
  v31 = 1 << *(a3 + 32);
  v32 = -1;
  if (v31 < 64)
  {
    v32 = ~(-1 << v31);
  }

  v33 = v32 & v30;
  v34 = (v31 + 63) >> 6;
  v83 = (v14 + 8);
  v67 = (v7 + 8);
  v66 = (v14 + 48);
  v64 = (v14 + 32);
  v81 = v34;
  v82 = v28;
  while (1)
  {
    v35 = v86;
    if (!v33)
    {
      break;
    }

    v36 = __clz(__rbit64(v33));
    v88 = (v33 - 1) & v33;
LABEL_11:
    v39 = v36 | (v29 << 6);
    v40 = v85[7];
    v41 = (v85[6] + 16 * v39);
    v42 = *v41;
    v43 = v41[1];
    v44 = *(v78 + 72);
    v76 = v39;
    sub_22CEFEB00(v40 + v44 * v39, v28, type metadata accessor for Activity);
    v45 = v89;
    *v89 = v42;
    v45[1] = v43;
    v46 = v80;
    sub_22CEFEB00(v28, v45 + *(v80 + 48), type metadata accessor for Activity);
    v47 = v45;
    v48 = v79;
    sub_22CEEB6DC(v47, v79, &unk_27D9F3840, &unk_22D01A2B0);
    v87 = v43;
    swift_bridgeObjectRetain_n();

    v49 = v48 + *(v46 + 48);
    v50 = v84;
    sub_22D0142DC();
    sub_22CEFF2B0(&qword_281443A30, MEMORY[0x277CC9578], MEMORY[0x277CC9590]);
    v51 = sub_22D01663C();
    v52 = *v83;
    (*v83)(v50, v13);
    if ((v51 & 1) == 0)
    {
      goto LABEL_17;
    }

    v75 = v52;
    v53 = v13;
    v54 = v77;
    sub_22CEEB6DC(v49 + *(v35 + 60), v77, &qword_27D9F26E0, &unk_22D018F80);
    v55 = sub_22D01486C();
    v56 = (*(*(v55 - 8) + 48))(v54, 1, v55);
    sub_22CEEC3D8(v54, &qword_27D9F26E0, &unk_22D018F80);
    if (v56 == 1)
    {
      v57 = v68;
      sub_22D01467C();
      v58 = v70;
      sub_22D01460C();
      (*v67)(v57, v69);
      v13 = v53;
      if ((*v66)(v58, 1, v53) == 1)
      {
        sub_22CEEC3D8(v58, &qword_27D9F2648, &unk_22D018BC0);
      }

      else
      {
        v59 = v65;
        (*v64)(v65, v58, v13);
        v60 = v84;
        sub_22D0142DC();
        sub_22D01428C();
        v61 = v75;
        v75(v60, v13);
        v61(v59, v13);
      }

LABEL_17:
      sub_22CEEC3D8(v89, &unk_27D9F3840, &unk_22D01A2B0);
      sub_22CEFD754(v49, type metadata accessor for Activity);
      v28 = v82;
      sub_22CEFD754(v82, type metadata accessor for Activity);

      *(v72 + ((v76 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v76;
      v62 = __OFADD__(v73++, 1);
      v34 = v81;
      v33 = v88;
      if (v62)
      {
        __break(1u);
        return sub_22CEE4A40(v72, v71, v73, v85);
      }
    }

    else
    {
      sub_22CEEC3D8(v89, &unk_27D9F3840, &unk_22D01A2B0);
      sub_22CEFD754(v49, type metadata accessor for Activity);
      v28 = v82;
      sub_22CEFD754(v82, type metadata accessor for Activity);

      v34 = v81;
      v33 = v88;
    }
  }

  v37 = v29;
  while (1)
  {
    v29 = v37 + 1;
    if (__OFADD__(v37, 1))
    {
      break;
    }

    if (v29 >= v34)
    {
      return sub_22CEE4A40(v72, v71, v73, v85);
    }

    v38 = *(v74 + 8 * v29);
    ++v37;
    if (v38)
    {
      v36 = __clz(__rbit64(v38));
      v88 = (v38 - 1) & v38;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_22CF04384(void *a1)
{
  v3 = (v1 + *(*v1 + 112));
  v4 = v3[3];
  v5 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v4);
  v6 = (*(v5 + 8))(v4, v5);
  v7 = sub_22CF03A84(v6);

  if (a1)
  {
    v8 = a1;
    v9 = sub_22D01666C();
    v10 = [v8 valueForEntitlement_];

    if (v10)
    {

      sub_22D016ACC();
      swift_unknownObjectRelease();
      sub_22CEEC3D8(v22, &qword_27D9F2B10, &unk_22D01B930);
      if (qword_28143FB28 != -1)
      {
        swift_once();
      }

      v11 = sub_22D01637C();
      __swift_project_value_buffer(v11, qword_281444420);
      v12 = v8;
      v13 = sub_22D01636C();
      v14 = sub_22D01690C();
      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        *v15 = 67240192;
        *(v15 + 4) = [v12 pid];

        _os_log_impl(&dword_22CEE1000, v13, v14, "Bypassing global maximum activity count check because requester has its own activity count limit %{public}d", v15, 8u);
        MEMORY[0x2318C6860](v15, -1, -1);
      }

      else
      {
      }

      v17 = 0;
LABEL_17:

      return v17;
    }

    memset(v22, 0, 32);
    sub_22CEEC3D8(v22, &qword_27D9F2B10, &unk_22D01B930);
  }

  v16 = v7[2];

  if (v16 >= 0x19)
  {
    if (qword_28143FB28 != -1)
    {
      swift_once();
    }

    v18 = sub_22D01637C();
    __swift_project_value_buffer(v18, qword_281444420);
    v12 = sub_22D01636C();
    v19 = sub_22D0168EC();
    if (os_log_type_enabled(v12, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_22CEE1000, v12, v19, "Cannot create new activity as maximum count has been reached", v20, 2u);
      MEMORY[0x2318C6860](v20, -1, -1);
    }

    v17 = 1;
    goto LABEL_17;
  }

  return 0;
}

uint64_t sub_22CF04684(uint64_t a1)
{
  v2 = sub_22D01502C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v17[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_22D014EFC();
  MEMORY[0x28223BE20](v7, v8);
  v10 = &v17[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_22CEFEB00(a1, v10, MEMORY[0x277CB9790]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_22CEFD754(v10, MEMORY[0x277CB9790]);
    return 1;
  }

  else
  {
    (*(v3 + 32))(v6, v10, v2);
    v12 = sub_22D014F9C();
    v14 = v13;
    v15 = MEMORY[0x28223BE20](v12, v13);
    *&v17[-32] = v16;
    *&v17[-24] = v15;
    *&v17[-16] = v14;
    sub_22D01699C();

    (*(v3 + 8))(v6, v2);
    return v17[15];
  }
}

uint64_t sub_22CF048A8(uint64_t a1)
{
  v3 = sub_22D01502C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_22D014EFC();
  v10 = MEMORY[0x28223BE20](v8 - 8, v9);
  v43 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10, v12);
  v15 = &v37 - v14;
  MEMORY[0x28223BE20](v13, v16);
  v18 = &v37 - v17;
  __swift_project_boxed_opaque_existential_1((v1 + *(*v1 + 152)), *(v1 + *(*v1 + 152) + 24));
  sub_22CEFEB00(a1, v18, MEMORY[0x277CB9790]);
  v42 = *(v4 + 32);
  v42(v7, v18, v3);
  v19 = sub_22D014F9C();
  v21 = v20;
  v41 = *(v4 + 8);
  v41(v7, v3);
  v22 = sub_22CF04C80(v19, v21);

  if (v22)
  {
    if (qword_28143FB28 != -1)
    {
      swift_once();
    }

    v23 = sub_22D01637C();
    __swift_project_value_buffer(v23, qword_281444420);
    sub_22CEFEB00(a1, v15, MEMORY[0x277CB9790]);
    v24 = sub_22D01636C();
    v25 = sub_22D0168EC();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v38 = v26;
      v40 = swift_slowAlloc();
      v44 = v40;
      *v26 = 136446210;
      v27 = MEMORY[0x277CB9790];
      v39 = v25;
      v28 = v43;
      sub_22CEFEB00(v15, v43, MEMORY[0x277CB9790]);
      v42(v7, v28, v3);
      v29 = sub_22D014F9C();
      v31 = v30;
      v41(v7, v3);
      sub_22CEFD754(v15, v27);
      v32 = sub_22CEEE31C(v29, v31, &v44);

      v33 = v38;
      *(v38 + 1) = v32;
      v34 = v33;
      _os_log_impl(&dword_22CEE1000, v24, v39, "App is restricted: %{public}s", v33, 0xCu);
      v35 = v40;
      __swift_destroy_boxed_opaque_existential_1Tm(v40);
      MEMORY[0x2318C6860](v35, -1, -1);
      MEMORY[0x2318C6860](v34, -1, -1);
    }

    else
    {

      sub_22CEFD754(v15, MEMORY[0x277CB9790]);
    }
  }

  return v22 & 1;
}

uint64_t sub_22CF04C80(uint64_t a1, unint64_t a2)
{
  v5 = *(v2 + OBJC_IVAR____TtC11SessionCore16AppEventObserver_lock);

  os_unfair_lock_lock(v5 + 4);
  v6 = 0;
  sub_22CF05288(&v43);
  os_unfair_lock_unlock(v5 + 4);
  v7 = v43;

  if (!*(v7 + 16))
  {

    return 0;
  }

  v8 = 0;
  v9 = 1 << *(v7 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & *(v7 + 56);
  do
  {
    if (!v11)
    {
      while (1)
      {
        v12 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
          break;
        }

        if (v12 >= ((v9 + 63) >> 6))
        {
          v14 = 0;
          goto LABEL_14;
        }

        v11 = *(v7 + 56 + 8 * v12);
        ++v8;
        if (v11)
        {
          v8 = v12;
          goto LABEL_11;
        }
      }

      __break(1u);
      goto LABEL_39;
    }

    v12 = v8;
LABEL_11:
    v13 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
  }

  while ((*(*(v7 + 48) + 40 * (v13 | (v12 << 6)) + 32) & 1) != 0);
  v14 = 1;
LABEL_14:

  v15 = sub_22CFC8050(v7, a1, a2);

  v16 = sub_22CFC8478(v7, a1, a2);

  if (!v14)
  {
    if (!*(v16 + 16))
    {

LABEL_30:

      return 0;
    }

    goto LABEL_21;
  }

  if (!*(v15 + 16))
  {

    sub_22CFC4330(v15);
    v29 = v28;

    if (qword_28143DAA0 != -1)
    {
      swift_once();
    }

    v30 = sub_22D01637C();
    __swift_project_value_buffer(v30, qword_281444308);

    v19 = sub_22D01636C();
    v20 = sub_22D01690C();

    if (!os_log_type_enabled(v19, v20))
    {
      goto LABEL_36;
    }

    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v43 = v22;
    *v21 = 136380931;
    *(v21 + 4) = sub_22CEEE31C(a1, a2, &v43);
    *(v21 + 12) = 2082;
    v31 = MEMORY[0x2318C5950](v29, MEMORY[0x277D837D0]);
    v33 = v32;

    v34 = sub_22CEEE31C(v31, v33, &v43);

    *(v21 + 14) = v34;
    v27 = "Bundle ID %{private}s is restricted because it is not part of the allow-list set by sources: %{public}s";
    goto LABEL_28;
  }

  if (*(v16 + 16))
  {
LABEL_21:

    sub_22CFC4330(v16);
    v6 = v17;

    if (qword_28143DAA0 == -1)
    {
LABEL_22:
      v18 = sub_22D01637C();
      __swift_project_value_buffer(v18, qword_281444308);

      v19 = sub_22D01636C();
      v20 = sub_22D01690C();

      if (!os_log_type_enabled(v19, v20))
      {
        goto LABEL_36;
      }

      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v43 = v22;
      *v21 = 136380931;
      *(v21 + 4) = sub_22CEEE31C(a1, a2, &v43);
      *(v21 + 12) = 2082;
      v23 = MEMORY[0x2318C5950](v6, MEMORY[0x277D837D0]);
      v25 = v24;

      v26 = sub_22CEEE31C(v23, v25, &v43);

      *(v21 + 14) = v26;
      v27 = "Bundle ID %{private}s is restricted because it is is denied by sources: %{public}s";
LABEL_28:
      _os_log_impl(&dword_22CEE1000, v19, v20, v27, v21, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x2318C6860](v22, -1, -1);
      MEMORY[0x2318C6860](v21, -1, -1);
      goto LABEL_37;
    }

LABEL_39:
    swift_once();
    goto LABEL_22;
  }

  if (*(v15 + 16))
  {
    goto LABEL_30;
  }

  sub_22CFC4330(v15);
  v37 = v36;

  if (qword_28143DAA0 != -1)
  {
    swift_once();
  }

  v38 = sub_22D01637C();
  __swift_project_value_buffer(v38, qword_281444308);

  v19 = sub_22D01636C();
  v20 = sub_22D01690C();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v43 = v22;
    *v21 = 136380931;
    *(v21 + 4) = sub_22CEEE31C(a1, a2, &v43);
    *(v21 + 12) = 2082;
    v39 = MEMORY[0x2318C5950](v37, MEMORY[0x277D837D0]);
    v41 = v40;

    v42 = sub_22CEEE31C(v39, v41, &v43);

    *(v21 + 14) = v42;
    v27 = "Bundle ID %{private}s is unrestricted because it is part of the allow-list set by sources: %{public}s";
    goto LABEL_28;
  }

LABEL_36:

LABEL_37:

  return 1;
}

void *sub_22CF052A0@<X0>(void *a1@<X8>)
{
  result = (*(v1 + 16))(&v5);
  if (!v2)
  {
    *a1 = v5;
  }

  return result;
}

uint64_t sub_22CF0534C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v224 = a2;
  v219 = a1;
  v235 = sub_22D0154AC();
  v225 = *(v235 - 8);
  MEMORY[0x28223BE20](v235, v5);
  v234 = &v212 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v228 = sub_22D01553C();
  v7 = *(v228 - 8);
  v9 = MEMORY[0x28223BE20](v228, v8);
  v221 = &v212 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9, v11);
  v220 = &v212 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2680, &qword_22D019670);
  v15 = MEMORY[0x28223BE20](v13 - 8, v14);
  v233 = &v212 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v15, v17);
  v223 = &v212 - v19;
  MEMORY[0x28223BE20](v18, v20);
  v22 = &v212 - v21;
  v246 = sub_22D0154EC();
  v263 = *(v246 - 8);
  MEMORY[0x28223BE20](v246, v23);
  v250 = (&v212 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  v25 = type metadata accessor for Assertion(0);
  v255 = *(v25 - 8);
  v27 = MEMORY[0x28223BE20](v25, v26);
  v251 = &v212 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x28223BE20](v27, v29);
  v216 = &v212 - v31;
  v33 = MEMORY[0x28223BE20](v30, v32);
  v222 = &v212 - v34;
  v36 = MEMORY[0x28223BE20](v33, v35);
  v226 = &v212 - v37;
  v39 = MEMORY[0x28223BE20](v36, v38);
  v247 = &v212 - v40;
  MEMORY[0x28223BE20](v39, v41);
  v261 = &v212 - v42;
  v43 = sub_22D01534C();
  v44 = *(v43 - 8);
  v46 = MEMORY[0x28223BE20](v43, v45);
  v227 = &v212 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = MEMORY[0x28223BE20](v46, v48);
  v51 = &v212 - v50;
  MEMORY[0x28223BE20](v49, v52);
  v258 = &v212 - v53;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F29F0, &unk_22D019678);
  v56 = MEMORY[0x28223BE20](v54 - 8, v55);
  v237 = &v212 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = MEMORY[0x28223BE20](v56, v58);
  v256 = &v212 - v60;
  v62 = MEMORY[0x28223BE20](v59, v61);
  v249 = &v212 - v63;
  MEMORY[0x28223BE20](v62, v64);
  v248 = &v212 - v65;
  v66 = v3[19];
  v67 = v3[20];
  v252 = v3;
  __swift_project_boxed_opaque_existential_1(v3 + 16, v66);
  v68 = (*(v67 + 8))(v66, v67);
  v265 = a3;
  v69 = sub_22CEE9DF8(sub_22CF7C520, v264, v68, sub_22CF06DB0, sub_22CF06DB0);

  v70 = 0;
  v71 = v69[8];
  v236 = (v69 + 8);
  v240 = v69;
  v72 = 1 << *(v69 + 32);
  v73 = -1;
  if (v72 < 64)
  {
    v73 = ~(-1 << v72);
  }

  v74 = v73 & v71;
  v75 = (v72 + 63) >> 6;
  v259 = (v44 + 16);
  v262 = v44 + 32;
  v245 = (v263 + 16);
  v244 = (v263 + 88);
  v243 = *MEMORY[0x277D4D498];
  v253 = v44;
  v257 = (v44 + 8);
  v242 = (v263 + 8);
  v230 = (v263 + 96);
  v229 = *MEMORY[0x277D4D470];
  v218 = (v7 + 32);
  v217 = (v7 + 16);
  v215 = (v7 + 8);
  v231 = MEMORY[0x277D84F90];
  v239 = MEMORY[0x277D84F98];
  v254 = v25;
  v263 = v43;
  v232 = v22;
  v241 = v51;
  v238 = v75;
LABEL_4:
  v76 = v70;
  if (v74)
  {
    while (1)
    {
      v77 = v76;
LABEL_12:
      v79 = __clz(__rbit64(v74));
      v74 &= v74 - 1;
      v80 = v79 | (v77 << 6);
      v81 = v240;
      v82 = v253;
      v83 = v258;
      (*(v253 + 16))(v258, v240[6] + *(v253 + 72) * v80, v43);
      v84 = v261;
      sub_22CF07D60(v81[7] + *(v255 + 72) * v80, v261, type metadata accessor for Assertion);
      v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2600, &qword_22D018B60);
      v86 = v43;
      v87 = *(v85 + 48);
      v88 = *(v82 + 32);
      v89 = v249;
      v88(v249, v83, v86);
      v90 = &v89[v87];
      v91 = v89;
      sub_22CF7BE5C(v84, v90, type metadata accessor for Assertion);
      (*(*(v85 - 8) + 56))(v89, 0, 1, v85);
      v260 = v77;
      v51 = v241;
      v75 = v238;
LABEL_13:
      v92 = v91;
      v93 = v248;
      sub_22CEF0368(v92, v248, &qword_27D9F29F0, &unk_22D019678);
      v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2600, &qword_22D018B60);
      v95 = *(v94 - 8);
      v96 = *(v95 + 48);
      v97 = v96(v93, 1, v94);
      v98 = v250;
      if (v97 == 1)
      {
        break;
      }

      v99 = *(v94 + 48);
      v100 = v93;
      v101 = v93;
      v43 = v263;
      (*v262)(v51, v100, v263);
      v102 = v247;
      sub_22CF7BE5C(v101 + v99, v247, type metadata accessor for Assertion);
      v103 = v254[5];
      v104 = *v245;
      v105 = v246;
      (*v245)(v98, v102 + v103, v246);
      v106 = (*v244)(v98, v105);
      if (v106 == v243)
      {
        (*v230)(v98, v105);
        LODWORD(v214) = *v98;
        v108 = v232;
        sub_22CEEB6DC(v102 + v254[6], v232, &qword_27D9F2680, &qword_22D019670);
        v109 = sub_22D01539C();
        v110 = *(v109 - 8);
        if ((*(v110 + 48))(v108, 1, v109) == 1)
        {
          sub_22CF1CB18(v102, type metadata accessor for Assertion);
          v51 = v241;
          (*v257)(v241, v43);
          goto LABEL_30;
        }

        v111 = v223;
        sub_22CEEB6DC(v232, v223, &qword_27D9F2680, &qword_22D019670);
        v112 = (*(v110 + 88))(v111, v109);
        v113 = v109;
        v114 = v110;
        if (v112 != v229)
        {
          sub_22CF1CB18(v247, type metadata accessor for Assertion);
          v51 = v241;
          (*v257)(v241, v43);
          (*(v110 + 8))(v111, v113);
LABEL_30:
          v152 = v232;
LABEL_45:
          sub_22CEEC3D8(v152, &qword_27D9F2680, &qword_22D019670);
          v70 = v260;
          goto LABEL_4;
        }

        (*(v110 + 96))(v111, v113);
        (*v218)(v220, v111, v228);
        v115 = sub_22D01552C();

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v115 = sub_22CFCE000(0, *(v115 + 16) + 1, 1, v115);
        }

        v117 = *(v115 + 16);
        v116 = *(v115 + 24);
        v213 = v113;
        if (v117 >= v116 >> 1)
        {
          v115 = sub_22CFCE000((v116 > 1), v117 + 1, 1, v115);
        }

        *(v115 + 16) = v117 + 1;
        v118 = v115 + 16 * v117;
        v119 = v224;
        *(v118 + 32) = v219;
        *(v118 + 40) = v119;
        v120 = v221;
        sub_22D01551C();
        v121 = v254;
        v122 = v254[6];
        v123 = v226;
        (*v217)(v226 + v122, v120, v228);
        v124 = v213;
        (*(v114 + 104))(v123 + v122, v229, v213);
        (*(v114 + 56))(v123 + v122, 0, 1, v124);
        v213 = *v259;
        v125 = v247;
        v213(v123, v247, v263);
        v126 = v121[10];
        v127 = sub_22D01555C();
        (*(*(v127 - 8) + 16))(v123 + v126, v125 + v126, v127);
        v104((v123 + v121[5]), v125 + v103, v246);
        v128 = v121[8];
        v129 = (v125 + v121[7]);
        v131 = *v129;
        v130 = v129[1];
        v132 = sub_22D01430C();
        (*(*(v132 - 8) + 16))(v123 + v128, v125 + v128, v132);
        v133 = v125 + v121[9];
        v134 = *v133;
        LOBYTE(v133) = *(v133 + 8);
        v135 = v123;
        v136 = (v123 + v121[7]);
        *v136 = v131;
        v136[1] = v130;
        v137 = v263;
        v138 = v121[9];
        v139 = v213;
        v140 = v135 + v138;
        *v140 = v134;
        *(v140 + 8) = v133;
        v141 = v227;
        v139(v227, v241, v137);
        sub_22CF07D60(v135, v222, type metadata accessor for Assertion);

        v142 = v239;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v269[0] = v142;
        v144 = sub_22CFB606C(v141);
        v146 = *(v142 + 16);
        v147 = (v145 & 1) == 0;
        v148 = __OFADD__(v146, v147);
        v149 = v146 + v147;
        if (!v148)
        {
          v150 = v145;
          if (*(v142 + 24) >= v149)
          {
            v51 = v241;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              v171 = v144;
              sub_22CFB635C();
              v144 = v171;
            }
          }

          else
          {
            sub_22CFB8B04(v149, isUniquelyReferenced_nonNull_native);
            v144 = sub_22CFB606C(v227);
            v51 = v241;
            if ((v150 & 1) != (v151 & 1))
            {
              goto LABEL_77;
            }
          }

          v153 = *&v269[0];
          v239 = *&v269[0];
          if (v150)
          {
            v154 = v137;
            v155 = *(v255 + 72);
            sub_22CF7B5B4(v222, *(*&v269[0] + 56) + v155 * v144);
            v156 = *v257;
            (*v257)(v227, v154);
          }

          else
          {
            *(*&v269[0] + 8 * (v144 >> 6) + 64) |= 1 << v144;
            v157 = v253;
            v158 = v144;
            v159 = v227;
            v139((v153[6] + *(v253 + 72) * v144), v227, v137);
            v160 = v137;
            v155 = *(v255 + 72);
            sub_22CF7BE5C(v222, v153[7] + v155 * v158, type metadata accessor for Assertion);
            v156 = *(v157 + 8);
            v156(v159, v160);
            v161 = v153[2];
            v148 = __OFADD__(v161, 1);
            v162 = v161 + 1;
            if (v148)
            {
              goto LABEL_76;
            }

            v153[2] = v162;
            v51 = v241;
          }

          if (v214)
          {
            sub_22CF07D60(v226, v216, type metadata accessor for Assertion);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v231 = sub_22CFCDFD8(0, v231[2] + 1, 1, v231);
            }

            v164 = v231[2];
            v163 = v231[3];
            v214 = v155;
            if (v164 >= v163 >> 1)
            {
              v231 = sub_22CFCDFD8((v163 > 1), v164 + 1, 1, v231);
            }

            sub_22CF1CB18(v226, type metadata accessor for Assertion);
            v165 = *v215;
            v166 = v228;
            (*v215)(v221, v228);
            v165(v220, v166);
            sub_22CF1CB18(v247, type metadata accessor for Assertion);
            v51 = v241;
            v167 = v263;
            v156(v241, v263);
            v168 = v231;
            v231[2] = v164 + 1;
            v43 = v167;
            sub_22CF7BE5C(v216, v168 + ((*(v255 + 80) + 32) & ~*(v255 + 80)) + v214 * v164, type metadata accessor for Assertion);
          }

          else
          {
            sub_22CF1CB18(v226, type metadata accessor for Assertion);
            v169 = *v215;
            v170 = v228;
            (*v215)(v221, v228);
            v169(v220, v170);
            sub_22CF1CB18(v247, type metadata accessor for Assertion);
            v43 = v263;
            v156(v51, v263);
          }

          v152 = v232;
          goto LABEL_45;
        }

        goto LABEL_75;
      }

      sub_22CF1CB18(v102, type metadata accessor for Assertion);
      (*v257)(v51, v43);
      (*v242)(v98, v105);
      v76 = v260;
      if (!v74)
      {
        goto LABEL_6;
      }
    }

    v260 = v96;

    v172 = *(v239 + 64);
    v249 = (v239 + 64);
    v173 = 1 << *(v239 + 32);
    v174 = -1;
    if (v173 < 64)
    {
      v174 = ~(-1 << v173);
    }

    v175 = v174 & v172;
    v248 = (v173 + 63) >> 6;
    v250 = (v95 + 56);

    v176 = 0;
    v177 = v237;
    v178 = v256;
    if (!v175)
    {
LABEL_50:
      if (v248 <= v176 + 1)
      {
        v180 = v176 + 1;
      }

      else
      {
        v180 = v248;
      }

      v181 = v180 - 1;
      while (1)
      {
        v179 = v176 + 1;
        if (__OFADD__(v176, 1))
        {
          goto LABEL_74;
        }

        if (v179 >= v248)
        {
          v175 = 0;
          v191 = 1;
          goto LABEL_58;
        }

        v175 = *&v249[8 * v179];
        ++v176;
        if (v175)
        {
          goto LABEL_57;
        }
      }
    }

    while (1)
    {
      v179 = v176;
LABEL_57:
      v182 = __clz(__rbit64(v175));
      v175 &= v175 - 1;
      v183 = v182 | (v179 << 6);
      v184 = v239;
      v185 = v253;
      v186 = v258;
      v187 = v263;
      (*(v253 + 16))(v258, *(v239 + 48) + *(v253 + 72) * v183, v263);
      v188 = v261;
      sub_22CF07D60(*(v184 + 56) + *(v255 + 72) * v183, v261, type metadata accessor for Assertion);
      v189 = *(v94 + 48);
      v190 = *(v185 + 32);
      v177 = v237;
      v190(v237, v186, v187);
      sub_22CF7BE5C(v188, v177 + v189, type metadata accessor for Assertion);
      v191 = 0;
      v181 = v179;
      v178 = v256;
LABEL_58:
      (*v250)(v177, v191, 1, v94);
      sub_22CEF0368(v177, v178, &qword_27D9F29F0, &unk_22D019678);
      if ((v260)(v178, 1, v94) == 1)
      {
        break;
      }

      v192 = v261;
      sub_22CF7BE5C(v178 + *(v94 + 48), v261, type metadata accessor for Assertion);
      v194 = v252[19];
      v193 = v252[20];
      __swift_project_boxed_opaque_existential_1(v252 + 16, v194);
      (*(v193 + 24))(v192, v194, v193);
      v178 = v256;
      sub_22CF1CB18(v192, type metadata accessor for Assertion);
      (*v257)(v178, v263);
      v176 = v181;
      if (!v175)
      {
        goto LABEL_50;
      }
    }

    v195 = v231[2];
    if (v195)
    {
      v262 = v252[6];
      v196 = v255;
      v197 = v231 + ((*(v255 + 80) + 32) & ~*(v255 + 80));
      swift_beginAccess();
      v198 = (v225 + 8);
      v261 = *(v196 + 72);
      do
      {
        v199 = v251;
        sub_22CF07D60(v197, v251, type metadata accessor for Assertion);
        v200 = v252;
        v201 = v252[19];
        v202 = v252[20];
        __swift_project_boxed_opaque_existential_1(v252 + 16, v201);
        (*(v202 + 32))(v199, v201, v202);
        sub_22CF6BE6C(v199);
        v203 = *(v262 + 16);
        os_unfair_lock_lock(v203);
        v204 = sub_22D01531C();
        v205 = v200[7];
        if (*(v205 + 16) && (v206 = sub_22CEE637C(v204), (v207 & 1) != 0))
        {
          sub_22CEE3A84(*(v205 + 56) + 40 * v206, v269);
        }

        else
        {
          v270 = 0;
          memset(v269, 0, sizeof(v269));
        }

        v208 = v254;
        os_unfair_lock_unlock(v203);
        sub_22CEEB6DC(v269, &v266, &qword_27D9F29F8, &qword_22D019688);
        if (v267)
        {
          sub_22CEF44D4(&v266, v268);
          v209 = v251;
          (*v259)(v258, v251, v263);
          sub_22CEEB6DC(v209 + v208[6], v233, &qword_27D9F2680, &qword_22D019670);
          v210 = v234;
          sub_22D01547C();
          __swift_project_boxed_opaque_existential_1(v268, v268[3]);
          sub_22D006D8C(v210);
          (*v198)(v210, v235);
          sub_22CEEC3D8(v269, &qword_27D9F29F8, &qword_22D019688);
          sub_22CF1CB18(v209, type metadata accessor for Assertion);
          __swift_destroy_boxed_opaque_existential_1Tm(v268);
        }

        else
        {
          sub_22CEEC3D8(v269, &qword_27D9F29F8, &qword_22D019688);
          sub_22CF1CB18(v251, type metadata accessor for Assertion);
          sub_22CEEC3D8(&v266, &qword_27D9F29F8, &qword_22D019688);
        }

        v197 += v261;
        --v195;
      }

      while (v195);
    }
  }

  else
  {
LABEL_6:
    if (v75 <= (v76 + 1))
    {
      v78 = (v76 + 1);
    }

    else
    {
      v78 = v75;
    }

    while (1)
    {
      v77 = (v76 + 1);
      if (__OFADD__(v76, 1))
      {
        break;
      }

      if (v77 >= v75)
      {
        v260 = (v78 - 1);
        v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2600, &qword_22D018B60);
        v91 = v249;
        (*(*(v107 - 8) + 56))(v249, 1, 1, v107);
        v74 = 0;
        goto LABEL_13;
      }

      v74 = *&v236[8 * v77];
      ++v76;
      if (v74)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_74:
    __break(1u);
LABEL_75:
    __break(1u);
LABEL_76:
    __break(1u);
LABEL_77:
    result = sub_22D016E1C();
    __break(1u);
  }

  return result;
}

uint64_t type metadata accessor for Assertion(uint64_t a1)
{
  result = qword_28143FCB0;
  if (!qword_28143FCB0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22CF06DB0(unint64_t *a1, uint64_t a2, void *a3, uint64_t (*a4)(char *, char *))
{
  v42 = a4;
  v34 = a2;
  v35 = a1;
  v5 = type metadata accessor for Assertion(0);
  v41 = *(v5 - 8);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v40 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_22D01534C();
  result = MEMORY[0x28223BE20](v8, v9);
  v43 = a3;
  v44 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = 0;
  v16 = a3[8];
  v15 = a3 + 8;
  v14 = v16;
  v17 = 1 << *(v15 - 32);
  v18 = -1;
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  v19 = v18 & v14;
  v20 = (v17 + 63) >> 6;
  v38 = v11 + 16;
  v39 = v11;
  v36 = 0;
  v37 = (v11 + 8);
  while (v19)
  {
    v45 = (v19 - 1) & v19;
    v21 = __clz(__rbit64(v19)) | (v13 << 6);
    v22 = v44;
LABEL_11:
    v25 = v43;
    (*(v39 + 16))(v22, v43[6] + *(v39 + 72) * v21, v8);
    v26 = v21;
    v27 = v25[7] + *(v41 + 72) * v21;
    v28 = v8;
    v29 = v40;
    sub_22CF07D60(v27, v40, type metadata accessor for Assertion);
    v30 = v46;
    v31 = v42(v22, v29);
    v46 = v30;
    if (v30)
    {
      sub_22CF1CB18(v29, type metadata accessor for Assertion);
      return (*v37)(v22, v28);
    }

    v32 = v31;
    sub_22CF1CB18(v29, type metadata accessor for Assertion);
    result = (*v37)(v22, v28);
    v8 = v28;
    v19 = v45;
    if (v32)
    {
      *(v35 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
      if (__OFADD__(v36++, 1))
      {
        __break(1u);
        return sub_22CF070F0(v35, v34, v36, v43);
      }
    }
  }

  v23 = v13;
  v22 = v44;
  while (1)
  {
    v13 = v23 + 1;
    if (__OFADD__(v23, 1))
    {
      break;
    }

    if (v13 >= v20)
    {
      return sub_22CF070F0(v35, v34, v36, v43);
    }

    v24 = v15[v13];
    ++v23;
    if (v24)
    {
      v45 = (v24 - 1) & v24;
      v21 = __clz(__rbit64(v24)) | (v13 << 6);
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_22CF070F0(unint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = type metadata accessor for Assertion(0);
  v51 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8 - 8, v9);
  v58 = &v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10, v12);
  v50 = &v45 - v13;
  v14 = sub_22D01534C();
  v15 = *(v14 - 8);
  v17 = MEMORY[0x28223BE20](v14, v16);
  v57 = &v45 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17, v19);
  v49 = &v45 - v20;
  if (!a3)
  {
    return MEMORY[0x277D84F98];
  }

  if (a4[2] == a3)
  {

    return a4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2A08, &unk_22D0196A0);
  result = sub_22D016D3C();
  v22 = result;
  if (a2 < 1)
  {
    v23 = 0;
  }

  else
  {
    v23 = *a1;
  }

  v24 = 0;
  v47 = v15 + 16;
  v48 = a1;
  v56 = v15 + 32;
  v25 = result + 64;
  v45 = v15;
  v46 = a4;
  while (v23)
  {
    v26 = __clz(__rbit64(v23));
    v52 = (v23 - 1) & v23;
LABEL_16:
    v29 = v26 | (v24 << 6);
    v30 = a4[6];
    v55 = *(v15 + 72);
    v31 = v49;
    (*(v15 + 16))(v49, v30 + v55 * v29, v14);
    v32 = a4[7];
    v54 = *(v51 + 72);
    v33 = v14;
    v34 = v50;
    sub_22CF07D60(v32 + v54 * v29, v50, type metadata accessor for Assertion);
    v53 = *(v15 + 32);
    v53(v57, v31, v33);
    v35 = v34;
    v14 = v33;
    sub_22CF7BE5C(v35, v58, type metadata accessor for Assertion);
    sub_22CF7C4D4(qword_28143FBB0, MEMORY[0x277D4D450], MEMORY[0x277D4D458]);
    result = sub_22D01661C();
    v36 = -1 << *(v22 + 32);
    v37 = result & ~v36;
    v38 = v37 >> 6;
    if (((-1 << v37) & ~*(v25 + 8 * (v37 >> 6))) == 0)
    {
      v40 = 0;
      v41 = (63 - v36) >> 6;
      a1 = v48;
      while (++v38 != v41 || (v40 & 1) == 0)
      {
        v42 = v38 == v41;
        if (v38 == v41)
        {
          v38 = 0;
        }

        v40 |= v42;
        v43 = *(v25 + 8 * v38);
        if (v43 != -1)
        {
          v39 = __clz(__rbit64(~v43)) + (v38 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v39 = __clz(__rbit64((-1 << v37) & ~*(v25 + 8 * (v37 >> 6)))) | v37 & 0x7FFFFFFFFFFFFFC0;
    a1 = v48;
LABEL_26:
    *(v25 + ((v39 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v39;
    v53((*(v22 + 48) + v39 * v55), v57, v33);
    result = sub_22CF7BE5C(v58, *(v22 + 56) + v39 * v54, type metadata accessor for Assertion);
    ++*(v22 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    v15 = v45;
    a4 = v46;
    v23 = v52;
    if (!a3)
    {
      return v22;
    }
  }

  v27 = v24;
  while (1)
  {
    v24 = v27 + 1;
    if (__OFADD__(v27, 1))
    {
      break;
    }

    if (v24 >= a2)
    {
      return v22;
    }

    v28 = a1[v24];
    ++v27;
    if (v28)
    {
      v26 = __clz(__rbit64(v28));
      v52 = (v28 - 1) & v28;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_22CF07580(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_22D01534C();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_8:

    return v11(v12, a2, a2, v10);
  }

  v13 = sub_22D0154EC();
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[5];
LABEL_7:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_8;
  }

  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2680, &qword_22D019670);
  if (*(*(result - 8) + 84) == a3)
  {
    v10 = result;
    v14 = *(result - 8);
    v15 = a4[6];
    goto LABEL_7;
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[7] + 8) = (a2 - 1);
    return result;
  }

  v17 = sub_22D01430C();
  if (*(*(v17 - 8) + 84) == a3)
  {
    v10 = v17;
    v14 = *(v17 - 8);
    v15 = a4[8];
    goto LABEL_7;
  }

  v18 = sub_22D01555C();
  v19 = *(*(v18 - 8) + 56);
  v20 = a1 + a4[10];

  return v19(v20, a2, a2, v18);
}

uint64_t sub_22CF077A8(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_22D01534C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_8:

    return v9(v10, a2, v8);
  }

  v11 = sub_22D0154EC();
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_7:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_8;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2680, &qword_22D019670);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_7;
  }

  if (a2 == 0x7FFFFFFF)
  {
    v16 = *(a1 + a3[7] + 8);
    if (v16 >= 0xFFFFFFFF)
    {
      LODWORD(v16) = -1;
    }

    return (v16 + 1);
  }

  else
  {
    v17 = sub_22D01430C();
    if (*(*(v17 - 8) + 84) == a2)
    {
      v8 = v17;
      v12 = *(v17 - 8);
      v13 = a3[8];
      goto LABEL_7;
    }

    v18 = sub_22D01555C();
    v19 = *(*(v18 - 8) + 48);
    v20 = a1 + a3[10];

    return v19(v20, a2, v18);
  }
}

uint64_t sub_22CF079BC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v31 = a2;
  v32 = a3;
  v4 = sub_22D01502C();
  v29 = *(v4 - 8);
  v30 = v4;
  MEMORY[0x28223BE20](v4, v5);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_22D014EFC();
  MEMORY[0x28223BE20](v8, v9);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_22D014AFC();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12, v14);
  v16 = &v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_22D0149CC();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17, v19);
  v21 = &v28 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = a1;
  sub_22D014DBC();
  sub_22CF07CF8(v31, v11, MEMORY[0x277CB9790]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v13 + 104))(v16, *MEMORY[0x277CB9578], v12);
    sub_22CF07DC8(v11);
  }

  else
  {
    v22 = v29;
    v23 = v30;
    v24 = (*(v29 + 32))(v7, v11, v30);
    v31 = &v28;
    MEMORY[0x28223BE20](v24, v25);
    *(&v28 - 2) = v26;
    *(&v28 - 1) = v7;
    sub_22D01699C();
    (*(v22 + 8))(v7, v23);
  }

  sub_22D01498C();
  sub_22D014E0C();
  return (*(v18 + 8))(v21, v17);
}

uint64_t sub_22CF07CF8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_22CF07D60(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_22CF07DC8(uint64_t a1)
{
  v2 = sub_22D014EFC();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22CF07E58@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(a1 + 216);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_22CF07F44(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_22D01430C();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_22CF08030@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, char *a5@<X4>, char *a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, unsigned __int8 a11, char *a12, uint64_t a13)
{
  v250 = a8;
  v226 = a7;
  v239 = a6;
  v238 = a5;
  v247 = a4;
  v286 = a3;
  v256 = a2;
  v228 = a9;
  v232 = sub_22D0149AC();
  v243 = *(v232 - 8);
  v15 = MEMORY[0x28223BE20](v232, v14);
  v221 = &v217 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15, v17);
  v227 = &v217 - v18;
  v19 = sub_22D014EFC();
  v222 = *(v19 - 8);
  v21 = MEMORY[0x28223BE20](v19 - 8, v20);
  v217 = &v217 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21, v23);
  v219 = &v217 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F26E0, &unk_22D018F80);
  MEMORY[0x28223BE20](v25 - 8, v26);
  v242 = &v217 - v27;
  v255 = sub_22D01502C();
  v236 = *(v255 - 8);
  MEMORY[0x28223BE20](v255, v28);
  v30 = &v217 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = type metadata accessor for Activity(0);
  v33 = MEMORY[0x28223BE20](v31, v32);
  v35 = &v217 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v33, v36);
  v237 = &v217 - v37;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2308, &unk_22D018950);
  MEMORY[0x28223BE20](v38 - 8, v39);
  v246 = &v217 - v40;
  v41 = sub_22D01461C();
  MEMORY[0x28223BE20](v41 - 8, v42);
  v245 = &v217 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_22D0146BC();
  v260 = *(v44 - 8);
  v46 = MEMORY[0x28223BE20](v44, v45);
  v254 = &v217 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v46, v48);
  v257 = &v217 - v49;
  v262 = sub_22D014E2C();
  v251 = *(v262 - 8);
  v51 = MEMORY[0x28223BE20](v262, v50);
  v253 = &v217 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = MEMORY[0x28223BE20](v51, v53);
  v220 = &v217 - v55;
  MEMORY[0x28223BE20](v54, v56);
  v218 = &v217 - v57;
  v268 = sub_22D0161DC();
  v58 = *(v268 - 1);
  MEMORY[0x28223BE20](v268, v59);
  v267 = &v217 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0);
  v281 = sub_22D01459C();
  v61 = *(v281 - 8);
  MEMORY[0x28223BE20](v281, v62);
  v271 = &v217 - ((v63 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9F2358, &unk_22D018980);
  v66 = MEMORY[0x28223BE20](v64 - 8, v65);
  v283 = (&v217 - ((v67 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v66, v68);
  v249 = &v217 - v69;
  v280 = sub_22D0145EC();
  v70 = *(v280 - 8);
  v72 = MEMORY[0x28223BE20](v280, v71);
  v284 = (&v217 - ((v73 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v72, v74);
  v235 = &v217 - v75;
  v269 = sub_22D01430C();
  v270 = *(v269 - 8);
  v77 = MEMORY[0x28223BE20](v269, v76);
  v230 = &v217 - ((v78 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = MEMORY[0x28223BE20](v77, v79);
  v252 = &v217 - v81;
  v83 = MEMORY[0x28223BE20](v80, v82);
  v244 = &v217 - v84;
  v86 = MEMORY[0x28223BE20](v83, v85);
  v223 = &v217 - v87;
  v89 = MEMORY[0x28223BE20](v86, v88);
  v224 = &v217 - v90;
  v92 = MEMORY[0x28223BE20](v89, v91);
  v241 = &v217 - v93;
  MEMORY[0x28223BE20](v92, v94);
  v258 = (&v217 - v95);
  swift_beginAccess();
  v229 = a1;
  v96 = *(a1 + 16);
  v97 = *(v96 + 16);
  v259 = v44;
  v282 = v97;
  v233 = v31;
  v231 = v35;
  v261 = v30;
  if (!v97)
  {
LABEL_19:
    v111 = v249;
    sub_22CF09E84(v286, v249);
    v112 = v280;
    if ((*(v70 + 48))(v111, 1, v280) == 1)
    {
      v113 = v30;
      sub_22CEEC3D8(v111, &unk_27D9F2358, &unk_22D018980);
LABEL_31:
      v145 = v257;
      v146 = v258;
      v118 = v256;
      sub_22D014E1C();
      goto LABEL_32;
    }

    v114 = v235;
    (*(v70 + 32))(v235, v111, v112);
    v115 = sub_22D01458C();
    v116 = v269;
    if ((v115 & 1) == 0)
    {
      v113 = v30;
      (*(v70 + 8))(v114, v112);
      goto LABEL_31;
    }

    v117 = v241;
    v118 = v256;
    sub_22D014E1C();
    v119 = v224;
    sub_22D0142DC();
    v120 = sub_22D01427C();
    isa = v270[1].isa;
    isa(v119, v116);
    isa(v117, v116);
    if ((v120 & 1) == 0)
    {
      v146 = v258;
      sub_22D014E1C();
      (*(v70 + 8))(v235, v280);
      v145 = v257;
      v113 = v261;
      goto LABEL_32;
    }

    v122 = v251;
    if (qword_28143EEA0 != -1)
    {
      swift_once();
    }

    v123 = off_28143EEA8;
    v124 = *(*(off_28143EEA8 + 4) + 16);
    os_unfair_lock_lock(v124);
    v125 = v123[3];
    os_unfair_lock_unlock(v124);
    if (v125 < 0.0)
    {
      __break(1u);
    }

    else if ((*&v125 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
    {
      sub_22CFCE638(0x20000000000001uLL);
      v126 = v241;
      v118 = v256;
      sub_22D014E1C();
      v124 = v258;
      sub_22D01425C();
      isa(v126, v116);
      if (qword_28143FB58 == -1)
      {
LABEL_28:
        v127 = sub_22D01637C();
        __swift_project_value_buffer(v127, qword_281444498);
        v128 = v220;
        (*(v122 + 16))(v220, v118, v262);
        v129 = v223;
        (v270[2].isa)(v223, v124, v116);
        v130 = sub_22D01636C();
        v131 = sub_22D01690C();
        if (os_log_type_enabled(v130, v131))
        {
          v132 = swift_slowAlloc();
          v285 = swift_slowAlloc();
          v287 = v285;
          *v132 = 136446722;
          v284 = v130;
          v133 = v241;
          LODWORD(v283) = v131;
          sub_22D014E1C();
          sub_22CEF88D4(&unk_281443A20, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
          v134 = sub_22D016DEC();
          v225 = v70;
          v136 = v135;
          isa(v133, v116);
          (*(v251 + 8))(v128, v262);
          v137 = sub_22CEEE31C(v134, v136, &v287);

          *(v132 + 4) = v137;
          *(v132 + 12) = 2082;
          v138 = v223;
          v139 = sub_22D016DEC();
          v141 = v140;
          isa(v138, v116);
          v142 = sub_22CEEE31C(v139, v141, &v287);

          *(v132 + 14) = v142;
          *(v132 + 22) = 2050;
          *(v132 + 24) = v125;
          v143 = v284;
          _os_log_impl(&dword_22CEE1000, v284, v283, "Adjusted start date from %{public}s to %{public}s with max jitter %{public}f", v132, 0x20u);
          v144 = v285;
          swift_arrayDestroy();
          MEMORY[0x2318C6860](v144, -1, -1);
          MEMORY[0x2318C6860](v132, -1, -1);

          (*(v225 + 8))(v235, v280);
        }

        else
        {

          isa(v129, v116);
          (*(v251 + 8))(v128, v262);
          (*(v70 + 8))(v235, v280);
        }

        v145 = v257;
        v113 = v261;
        v146 = v258;
        v118 = v256;
LABEL_32:
        sub_22D0142FC();
        sub_22D014DCC();
        sub_22CEEB6DC(v247, v246, &qword_27D9F2308, &unk_22D018950);
        v147 = v248;
        sub_22D0146AC();
        if (v147)
        {
          return (v270[1].isa)(v146, v269);
        }

        LODWORD(v280) = a11;
        v281 = 0;
        v282 = a10;
        v277 = *(v251 + 16);
        (v277)(v253, v118, v262);
        v275 = *(v236 + 16);
        v275(v113, v226, v255);
        v149 = *(v260 + 16);
        v278 = (v260 + 16);
        v276 = v149;
        v149(v254, v145, v259);
        v283 = v270[2].isa;
        v284 = v270 + 2;
        v283(v252, v146, v269);
        v150 = sub_22D01486C();
        v151 = *(*(v150 - 8) + 56);
        v151(v242, 1, 1, v150);
        v152 = *(v243 + 104);
        v153 = v227;
        LODWORD(v271) = *MEMORY[0x277CB94E0];
        v154 = v232;
        v272 = (v243 + 104);
        v268 = v152;
        v152(v227);
        if (*(v250 + 16) && (v155 = sub_22CEFF728(v153), (v156 & 1) != 0))
        {
          v157 = v219;
          sub_22CEFEA98(*(v250 + 56) + *(v222 + 72) * v155, v219, MEMORY[0x277CB9790]);
          v273 = *(v243 + 8);
          v273(v153, v154);
          v279 = sub_22CF0A190();
          v285 = v158;
          sub_22CF0A5FC(v157, MEMORY[0x277CB9790]);
        }

        else
        {
          v273 = *(v243 + 8);
          v273(v153, v154);
          v279 = 0;
          v285 = 0;
        }

        v159 = v230;
        sub_22D0142DC();
        v160 = v233;
        v274 = v233[15];
        v161 = v231;
        v151(v231 + v274, 1, 1, v150);
        v162 = v239;
        *v161 = v238;
        v161[1] = v162;
        v163 = (v161 + v160[13]);
        *v163 = 0;
        v163[1] = 0;
        (v277)(v161 + v160[5], v253, v262);
        v275(v161 + v160[6], v261, v255);
        *(v161 + v160[9]) = v286;
        v164 = v250;
        *(v161 + v160[7]) = v250;
        *(v161 + v160[8]) = v282;
        v276(v161 + v160[14], v254, v259);
        v165 = v269;
        v166 = v283;
        v283(v161 + v160[10], v252, v269);
        v166(v161 + v160[11], v159, v165);
        v167 = v164;
        v168 = v262;
        *(v161 + v160[12]) = v280 & 1;

        v169 = v242;
        sub_22CF0A6BC(v242, v161 + v274);
        v170 = v159;
        v171 = v279;
        if (!v285)
        {
          v172 = v221;
          v173 = v232;
          (v268)(v221, v271, v232);
          if (*(v167 + 16) && (v174 = sub_22CEFF728(v172), (v175 & 1) != 0))
          {
            v176 = v217;
            sub_22CEFEA98(*(v250 + 56) + *(v222 + 72) * v174, v217, MEMORY[0x277CB9790]);
            v273(v172, v173);
            v171 = sub_22CF0A190();
            v285 = v177;
            sub_22CF0A5FC(v176, MEMORY[0x277CB9790]);
          }

          else
          {
            v273(v172, v173);
            v171 = 0;
            v285 = 0;
          }

          v160 = v233;
          v168 = v262;
          v165 = v269;
          v169 = v242;
          v161 = v231;
          v170 = v230;
        }

        v282 = a13;
        v286 = a12;
        v178 = v270 + 1;
        v99 = v270[1].isa;
        (v99)(v170, v165);
        sub_22CEEC3D8(v169, &qword_27D9F26E0, &unk_22D018F80);
        (v99)(v252, v165);
        v61 = *(v260 + 8);
        v260 += 8;
        (v61)(v254, v259);
        (*(v236 + 8))(v261, v255);
        (*(v251 + 8))(v253, v168);
        v179 = (v161 + v160[16]);
        v180 = v285;
        *v179 = v171;
        v179[1] = v180;
        v181 = v237;
        sub_22CF0A72C(v161, v237, type metadata accessor for Activity);
        v182 = v241;
        sub_22D0142DC();
        sub_22CEF88D4(&qword_281443A30, MEMORY[0x277CC9578], MEMORY[0x277CC9590]);
        v183 = sub_22D01663C();
        v270 = v178;
        (v99)(v182, v165);
        v184 = v160[11];
        v185 = type metadata accessor for ActivityState(0);
        v186 = v228;
        v283((v228 + *(v185 + 28)), (v181 + v184), v165);
        v100 = v238;
        v35 = v239;
        *v186 = v238;
        *(v186 + 8) = v35;
        *(v186 + 16) = v183 & 1;
        *(v186 + 24) = xmmword_22D01AFB0;
        v187 = qword_28143FB58;

        if (v187 != -1)
        {
LABEL_60:
          swift_once();
        }

        v188 = sub_22D01637C();
        __swift_project_value_buffer(v188, qword_281444498);

        v189 = sub_22D01636C();
        v190 = sub_22D01690C();

        if (os_log_type_enabled(v189, v190))
        {
          v191 = swift_slowAlloc();
          v192 = swift_slowAlloc();
          v193 = v100;
          v194 = v61;
          v195 = v192;
          v287 = v192;
          *v191 = 136446210;
          *(v191 + 4) = sub_22CEEE31C(v193, v35, &v287);
          _os_log_impl(&dword_22CEE1000, v189, v190, "Created activity: %{public}s", v191, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v195);
          v196 = v195;
          v61 = v194;
          MEMORY[0x2318C6860](v196, -1, -1);
          MEMORY[0x2318C6860](v191, -1, -1);
        }

        v197 = v259;
        v198 = v286;
        ObjectType = swift_getObjectType();
        v200 = v237;
        sub_22CF0A7FC(v237, v198, 0, 0, 0, v229, ObjectType, *(v282 + 8));
        sub_22CF0A5FC(v200, type metadata accessor for Activity);
        (v61)(v257, v197);
        return (v99)(v258, v269);
      }

LABEL_63:
      swift_once();
      goto LABEL_28;
    }

    __break(1u);
    goto LABEL_63;
  }

  v285 = (v70 + 48);
  v279 = (v70 + 32);
  v277 = (v61 + 88);
  LODWORD(v276) = *MEMORY[0x277CB9218];
  v266 = *MEMORY[0x277CB9210];
  v234 = *MEMORY[0x277CB9220];
  v225 = v70;
  v278 = (v70 + 8);
  v240 = (v61 + 8);
  v265 = (v61 + 96);
  v264 = (v58 + 8);

  v98 = 0;
  v99 = 32;
  v100 = v280;
  v101 = v271;
  v103 = v282;
  v102 = v283;
  v263 = v96;
  while (1)
  {
    if (v98 >= *(v96 + 16))
    {
      __break(1u);
      goto LABEL_60;
    }

    v61 = *(v96 + v99);
    swift_getObjectType();
    if (swift_conformsToProtocol2())
    {
      v104 = v61 == 0;
    }

    else
    {
      v104 = 1;
    }

    if (v104)
    {
      goto LABEL_4;
    }

    swift_unknownObjectRetain_n();
    sub_22CF09E84(v286, v102);
    v35 = v100;
    if ((*v285)(v102, 1, v100) == 1)
    {
      swift_unknownObjectRelease_n();
      sub_22CEEC3D8(v102, &unk_27D9F2358, &unk_22D018980);
      goto LABEL_4;
    }

    v105 = v284;
    (*v279)(v284, v102, v100);
    sub_22D0145DC();
    v106 = v281;
    v107 = (*v277)(v101, v281);
    if (v107 != v276)
    {
      break;
    }

    (*v265)(v101, v106);
    v108 = *v101;
    v273 = *(v61 + 72);
    v274 = v108;
    v275 = *(v61 + 80);
    v272 = __swift_project_boxed_opaque_existential_1((v61 + 48), v273);
    sub_22D0145BC();
    v35 = v267;
    sub_22D0161EC();
    v109 = v280;
    v110 = sub_22D015F4C();

    (*v264)(v35, v268);
    (*v278)(v105, v109);
    if (v110)
    {

      goto LABEL_53;
    }

    v100 = v109;
    swift_unknownObjectRelease_n();
    v101 = v271;
    v103 = v282;
    v102 = v283;
    v96 = v263;
LABEL_4:
    ++v98;
    v99 += 16;
    if (v103 == v98)
    {

      v30 = v261;
      v70 = v225;
      goto LABEL_19;
    }
  }

  v103 = v282;
  if (v107 == v266)
  {
    swift_unknownObjectRelease_n();
    (*v278)(v284, v100);
    (*v240)(v101, v106);
    v102 = v283;
    goto LABEL_4;
  }

  v102 = v283;
  if (v107 == v234)
  {
    swift_unknownObjectRelease_n();
    (*v278)(v284, v100);
    goto LABEL_4;
  }

  (*v278)(v284, v100);
  (*v240)(v101, v281);
LABEL_53:
  v201 = v262;
  v202 = v251;
  v203 = v256;
  v204 = v218;
  if (qword_28143FB58 != -1)
  {
    swift_once();
  }

  v205 = sub_22D01637C();
  __swift_project_value_buffer(v205, qword_281444498);
  (*(v202 + 16))(v204, v203, v201);
  v206 = sub_22D01636C();
  v207 = sub_22D0168EC();
  if (os_log_type_enabled(v206, v207))
  {
    v208 = swift_slowAlloc();
    v209 = v202;
    v210 = swift_slowAlloc();
    v287 = v210;
    *v208 = 136380675;
    sub_22CEF88D4(&qword_27D9F34A0, MEMORY[0x277CB9678], MEMORY[0x277CB9690]);
    v211 = sub_22D016DEC();
    v212 = v201;
    v214 = v213;
    (*(v209 + 8))(v204, v212);
    v215 = sub_22CEEE31C(v211, v214, &v287);

    *(v208 + 4) = v215;
    _os_log_impl(&dword_22CEE1000, v206, v207, "Activity request is invalid: %{private}s", v208, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v210);
    MEMORY[0x2318C6860](v210, -1, -1);
    MEMORY[0x2318C6860](v208, -1, -1);
  }

  else
  {

    (*(v202 + 8))(v204, v201);
  }

  sub_22CF3D1BC();
  swift_allocError();
  *v216 = 1;
  swift_willThrow();
  return swift_unknownObjectRelease_n();
}

uint64_t sub_22CF09E84@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v34 = a2;
  v3 = sub_22D01483C();
  v33 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3, v4);
  v32 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5, v7);
  v10 = &v31 - v9;
  v12 = MEMORY[0x28223BE20](v8, v11);
  v14 = &v31 - v13;
  MEMORY[0x28223BE20](v12, v15);
  v17 = &v31 - v16;
  v18 = *(a1 + 16);
  if (v18)
  {
    v19 = *(v33 + 16);
    v20 = (v33 + 8);
    v21 = a1 + ((*(v33 + 80) + 32) & ~*(v33 + 80));
    v22 = *(v33 + 72);
    while (1)
    {
      v19(v10, v21, v3);
      if (sub_22D0147BC())
      {
        break;
      }

      (*v20)(v10, v3);
      v21 += v22;
      if (!--v18)
      {
        goto LABEL_9;
      }
    }

    v23 = v33;
    v24 = *(v33 + 32);
    v24(v14, v10, v3);
    v24(v17, v14, v3);
    v25 = v32;
    v24(v32, v17, v3);
    if ((*(v23 + 88))(v25, v3) == *MEMORY[0x277CB9320])
    {
      (*(v23 + 96))(v25, v3);
      v26 = sub_22D0145EC();
      v27 = *(v26 - 8);
      v28 = v34;
      (*(v27 + 32))(v34, v25, v26);
      return (*(v27 + 56))(v28, 0, 1, v26);
    }

    (*v20)(v25, v3);
  }

LABEL_9:
  v30 = sub_22D0145EC();
  return (*(*(v30 - 8) + 56))(v34, 1, 1, v30);
}

uint64_t sub_22CF0A190()
{
  v1 = v0;
  v2 = sub_22D01502C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v23[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_22D014EFC();
  v9 = MEMORY[0x28223BE20](v7 - 8, v8);
  v11 = MEMORY[0x28223BE20](v9, v10);
  MEMORY[0x28223BE20](v11, v12);
  v14 = &v23[-v13];
  sub_22CF0A598(v1, &v23[-v13]);
  (*(v3 + 32))(v6, v14, v2);
  v15 = sub_22D014F9C();
  v17 = v16;
  v24 = *(v3 + 8);
  v24(v6, v2);
  v18 = objc_allocWithZone(MEMORY[0x277CC1E70]);
  v19 = sub_22CEE8CD0(v15, v17, 1);
  v20 = [v19 localizedName];

  v21 = sub_22D01667C();
  return v21;
}

uint64_t sub_22CF0A598(uint64_t a1, uint64_t a2)
{
  v4 = sub_22D014EFC();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22CF0A5FC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_22CF0A65C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_22CF0A6BC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F26E0, &unk_22D018F80);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_22CF0A72C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_22CF0A794(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_22CF0A7FC(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, unint64_t a6, uint64_t a7, uint64_t a8)
{
  v87 = a3;
  v88 = a8;
  v89 = a5;
  v90 = a4;
  v91 = a2;
  v86 = type metadata accessor for ActivityManagerEvent(0);
  MEMORY[0x28223BE20](v86, v10);
  v85 = &v83 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F3810, &unk_22D018FA0);
  MEMORY[0x28223BE20](v12 - 8, v13);
  v93 = &v83 - v14;
  v15 = type metadata accessor for Activity(0);
  v92 = *(v15 - 8);
  v17 = MEMORY[0x28223BE20](v15, v16);
  v84 = &v83 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17, v19);
  v21 = &v83 - v20;
  v22 = sub_22D01430C();
  v23 = *(v22 - 8);
  MEMORY[0x28223BE20](v22, v24);
  v26 = &v83 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_22D01659C();
  v28 = *(v27 - 8);
  MEMORY[0x28223BE20](v27, v29);
  v31 = (&v83 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0));
  v94 = a6;
  v32 = *(a6 + 40);
  *v31 = v32;
  (*(v28 + 104))(v31, *MEMORY[0x277D85200], v27);
  v33 = v32;
  LOBYTE(v32) = sub_22D0165BC();
  v35 = *(v28 + 8);
  v34 = v28 + 8;
  v35(v31, v27);
  if ((v32 & 1) == 0)
  {
LABEL_27:
    __break(1u);
LABEL_28:
    swift_once();
    goto LABEL_4;
  }

  sub_22D0142DC();
  sub_22CEF88D4(&qword_281443A30, MEMORY[0x277CC9578], MEMORY[0x277CC9590]);
  v36 = sub_22D01663C();
  (*(v23 + 8))(v26, v22);
  v34 = a1;
  v31 = v15;
  if ((v36 & 1) == 0)
  {
    if (qword_28143FB58 != -1)
    {
      swift_once();
    }

    v47 = sub_22D01637C();
    __swift_project_value_buffer(v47, qword_281444498);
    v48 = v84;
    sub_22CEFEA98(a1, v84, type metadata accessor for Activity);
    v49 = sub_22D01636C();
    v50 = sub_22D01690C();
    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      v95[0] = v52;
      *v51 = 136446210;
      v53 = sub_22CF0B174();
      v54 = v31;
      v56 = v55;
      sub_22CF0A5FC(v48, type metadata accessor for Activity);
      v57 = sub_22CEEE31C(v53, v56, v95);
      v31 = v54;

      *(v51 + 4) = v57;
      _os_log_impl(&dword_22CEE1000, v49, v50, "Pending activity: %{public}s", v51, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v52);
      MEMORY[0x2318C6860](v52, -1, -1);
      MEMORY[0x2318C6860](v51, -1, -1);
    }

    else
    {

      sub_22CF0A5FC(v48, type metadata accessor for Activity);
    }

    v58 = 0;
    goto LABEL_14;
  }

  if (qword_28143FB58 != -1)
  {
    goto LABEL_28;
  }

LABEL_4:
  v37 = sub_22D01637C();
  __swift_project_value_buffer(v37, qword_281444498);
  sub_22CEFEA98(v34, v21, type metadata accessor for Activity);
  v38 = sub_22D01636C();
  v39 = sub_22D01690C();
  if (os_log_type_enabled(v38, v39))
  {
    v40 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    v95[0] = v41;
    *v40 = 136446210;
    v42 = sub_22CF0B174();
    v43 = v31;
    v45 = v44;
    sub_22CF0A5FC(v21, type metadata accessor for Activity);
    v46 = sub_22CEEE31C(v42, v45, v95);
    v31 = v43;

    *(v40 + 4) = v46;
    _os_log_impl(&dword_22CEE1000, v38, v39, "Starting activity: %{public}s", v40, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v41);
    MEMORY[0x2318C6860](v41, -1, -1);
    MEMORY[0x2318C6860](v40, -1, -1);
  }

  else
  {

    sub_22CF0A5FC(v21, type metadata accessor for Activity);
  }

  v58 = 1;
LABEL_14:
  v60 = v92;
  v59 = v93;
  v61 = *v34;
  v62 = *(v34 + 8);
  v93 = v34;
  sub_22CEFEA98(v34, v59, type metadata accessor for Activity);
  (*(v60 + 56))(v59, 0, 1, v31);
  v34 = v94;
  swift_beginAccess();

  sub_22CF0BC5C(v59, v61, v62);
  swift_endAccess();
  swift_beginAccess();
  v63 = *(v34 + 16);
  v31 = *(v63 + 16);

  v64 = 0;
  v21 = 0;
  v65 = MEMORY[0x277D84F90];
LABEL_15:
  v66 = 16 * v64 + 32;
  while (v31 != v64)
  {
    if (v64 >= *(v63 + 16))
    {
      __break(1u);
      goto LABEL_27;
    }

    ++v64;
    v34 = v66 + 16;
    v67 = *(v63 + v66);
    swift_getObjectType();
    v68 = swift_conformsToProtocol2();
    v66 = v34;
    if (v68)
    {
      v66 = v34;
      if (v67)
      {
        v69 = v68;
        swift_unknownObjectRetain();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v65 = sub_22CF1B8BC(0, v65[2] + 1, 1, v65, &qword_27D9F34A8, &qword_22D01B8E0, &qword_27D9F34B0, &unk_22D01B8E8);
        }

        v34 = v65[2];
        v70 = v65[3];
        if (v34 >= v70 >> 1)
        {
          v65 = sub_22CF1B8BC((v70 > 1), v34 + 1, 1, v65, &qword_27D9F34A8, &qword_22D01B8E0, &qword_27D9F34B0, &unk_22D01B8E8);
        }

        v65[2] = v34 + 1;
        v71 = &v65[2 * v34];
        v71[4] = v67;
        v71[5] = v69;
        goto LABEL_15;
      }
    }
  }

  v72 = v85;
  sub_22CEFEA98(v93, v85, type metadata accessor for Activity);
  v73 = v86;
  *(v72 + *(v86 + 20)) = v58;
  v74 = (v72 + v73[6]);
  v75 = v90;
  v76 = v87;
  v77 = v88;
  *v74 = v91;
  v74[1] = v77;
  v78 = (v72 + v73[7]);
  *v78 = v76;
  v78[1] = v75;
  *(v72 + v73[8]) = v89 & 1;
  type metadata accessor for ActivityManager.QueueActivityManager();
  v79 = swift_allocObject();
  *(v79 + 16) = v94;
  v81 = MEMORY[0x28223BE20](v79, v80);
  *(&v83 - 2) = v72;
  *(&v83 - 1) = v81;

  swift_unknownObjectRetain();
  sub_22CF1BA14(sub_22CF1A060, (&v83 - 4), v65);

  return sub_22CF0A5FC(v72, type metadata accessor for ActivityManagerEvent);
}

uint64_t sub_22CF0B174()
{
  v1 = v0;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F26E0, &unk_22D018F80);
  MEMORY[0x28223BE20](v28, v2);
  v4 = &v27 - v3;
  v5 = sub_22D01430C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = 0;
  v31 = 0xE000000000000000;
  sub_22D016C6C();
  MEMORY[0x2318C5860](540697705, 0xE400000000000000);
  MEMORY[0x2318C5860](*v1, v1[1]);
  MEMORY[0x2318C5860](0x657461657263203BLL, 0xEB00000000203A64);
  v10 = type metadata accessor for Activity(0);
  sub_22CF0B598(&unk_281443A20, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
  v11 = sub_22D016DEC();
  MEMORY[0x2318C5860](v11);

  MEMORY[0x2318C5860](0x657472617473203BLL, 0xEB00000000203A64);
  v12 = sub_22D016DEC();
  MEMORY[0x2318C5860](v12);

  MEMORY[0x2318C5860](0x3A6574617473203BLL, 0xE900000000000020);
  v13 = sub_22CF0B5E0();
  v14 = 0xE700000000000000;
  v15 = 0x676E69646E6570;
  if (v13 == 2)
  {
    v15 = 0x656C617473;
    v14 = 0xE500000000000000;
  }

  v16 = 0x657669746361;
  if (v13)
  {
    v16 = 0x6569626D6F7ALL;
  }

  if (v13 <= 1)
  {
    v17 = v16;
  }

  else
  {
    v17 = v15;
  }

  if (v13 <= 1)
  {
    v18 = 0xE600000000000000;
  }

  else
  {
    v18 = v14;
  }

  MEMORY[0x2318C5860](v17, v18);

  MEMORY[0x2318C5860](0x656369766564203BLL, 0xEC000000203A4449);
  v29 = *(v0 + v10[13]);
  sub_22D016CEC();
  MEMORY[0x2318C5860](0xD000000000000012, 0x800000022D022EF0);
  v19 = *(v0 + v10[9]);
  v20 = sub_22D01483C();
  v21 = MEMORY[0x2318C5950](v19, v20);
  MEMORY[0x2318C5860](v21);

  MEMORY[0x2318C5860](0x70557473616C203BLL, 0xEF203A6465746164);
  sub_22D01469C();
  v22 = sub_22D016DEC();
  v24 = v23;
  (*(v6 + 8))(v9, v5);
  MEMORY[0x2318C5860](v22, v24);

  MEMORY[0x2318C5860](0xD000000000000011, 0x800000022D022F10);
  sub_22CF0B9D0(v1 + v10[15], v4);
  v25 = sub_22D01669C();
  MEMORY[0x2318C5860](v25);

  return v30;
}

uint64_t sub_22CF0B598(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_22CF0B5E0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2648, &unk_22D018BC0);
  MEMORY[0x28223BE20](v1 - 8, v2);
  v4 = &v33 - v3;
  v5 = sub_22D01461C();
  v37 = *(v5 - 8);
  v38 = v5;
  MEMORY[0x28223BE20](v5, v6);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F26E0, &unk_22D018F80);
  MEMORY[0x28223BE20](v9 - 8, v10);
  v12 = &v33 - v11;
  v13 = sub_22D01430C();
  v14 = *(v13 - 8);
  v16 = MEMORY[0x28223BE20](v13, v15);
  v35 = &v33 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16, v18);
  v20 = &v33 - v19;
  v21 = type metadata accessor for Activity(0);
  sub_22D0142DC();
  sub_22CF0B598(&qword_281443A30, MEMORY[0x277CC9578], MEMORY[0x277CC9590]);
  v22 = v0;
  v23 = sub_22D01663C();
  v36 = v14;
  v24 = *(v14 + 8);
  v24(v20, v13);
  if ((v23 & 1) == 0)
  {
    return 3;
  }

  v34 = v4;
  sub_22CF0B9D0(v22 + *(v21 + 60), v12);
  v25 = sub_22D01486C();
  v26 = 1;
  v27 = (*(*(v25 - 8) + 48))(v12, 1, v25);
  sub_22CEEC3D8(v12, &qword_27D9F26E0, &unk_22D018F80);
  if (v27 == 1)
  {
    sub_22D01467C();
    v28 = v34;
    sub_22D01460C();
    (*(v37 + 8))(v8, v38);
    v29 = v36;
    if ((*(v36 + 48))(v28, 1, v13) == 1)
    {
      sub_22CEEC3D8(v28, &qword_27D9F2648, &unk_22D018BC0);
      return 0;
    }

    v30 = v35;
    (*(v29 + 32))(v35, v28, v13);
    sub_22D0142DC();
    v31 = sub_22D01428C();
    v24(v20, v13);
    v24(v30, v13);
    if ((v31 & 1) == 0)
    {
      return 0;
    }

    return 2;
  }

  return v26;
}

uint64_t sub_22CF0B9D0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F26E0, &unk_22D018F80);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22CF0BA54(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
    return result;
  }

  v8 = sub_22D014E2C();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
LABEL_11:
    v15 = *(v10 + 56);

    return v15(v5 + v11, a2, a2, v9);
  }

  v12 = sub_22D01502C();
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[6];
    goto LABEL_11;
  }

  v13 = sub_22D01430C();
  if (*(*(v13 - 8) + 84) == a3)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a4[10];
    goto LABEL_11;
  }

  v14 = sub_22D0146BC();
  if (*(*(v14 - 8) + 84) == a3)
  {
    v9 = v14;
    v10 = *(v14 - 8);
    v11 = a4[14];
    goto LABEL_11;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F26E0, &unk_22D018F80);
  v17 = *(*(v16 - 8) + 56);
  v18 = v5 + a4[15];

  return v17(v18, a2, a2, v16);
}

uint64_t sub_22CF0BC5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F3810, &unk_22D018FA0);
  MEMORY[0x28223BE20](v7 - 8, v8);
  v10 = &v18 - v9;
  v11 = type metadata accessor for Activity(0);
  MEMORY[0x28223BE20](v11, v12);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v15 + 48))(a1, 1) == 1)
  {
    sub_22CEEC3D8(a1, &qword_27D9F3810, &unk_22D018FA0);
    sub_22CF1E6E8(a2, a3, v10);

    return sub_22CEEC3D8(v10, &qword_27D9F3810, &unk_22D018FA0);
  }

  else
  {
    sub_22CEF0B08(a1, v14, type metadata accessor for Activity);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19 = *v3;
    sub_22CFBE338(v14, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v19;
  }

  return result;
}

uint64_t sub_22CF0BE44(uint64_t a1, uint64_t a2, int *a3)
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

  v8 = sub_22D014E2C();
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[5];
LABEL_13:
    v15 = *(v10 + 48);

    return v15(a1 + v11, a2, v9);
  }

  v12 = sub_22D01502C();
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[6];
    goto LABEL_13;
  }

  v13 = sub_22D01430C();
  if (*(*(v13 - 8) + 84) == a2)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a3[10];
    goto LABEL_13;
  }

  v14 = sub_22D0146BC();
  if (*(*(v14 - 8) + 84) == a2)
  {
    v9 = v14;
    v10 = *(v14 - 8);
    v11 = a3[14];
    goto LABEL_13;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F26E0, &unk_22D018F80);
  v17 = *(*(v16 - 8) + 48);
  v18 = a1 + a3[15];

  return v17(v18, a2, v16);
}

uint64_t sub_22CF0C04C(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t (*a6)(void), uint64_t (*a7)(void))
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v11 = (a5[6] + 16 * a1);
  *v11 = a2;
  v11[1] = a3;
  v12 = a5[7];
  v13 = a6(0);
  result = sub_22CEF0B08(a4, v12 + *(*(v13 - 8) + 72) * a1, a7);
  v15 = a5[2];
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (v16)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v17;
  }

  return result;
}

double sub_22CF0C0F8(uint64_t a1, uint64_t *a2)
{
  v4 = type metadata accessor for Activity(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v8 = MEMORY[0x28223BE20](v4, v7);
  v9 = (&v32[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v32[-1] - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F3810, &unk_22D018FA0);
  MEMORY[0x28223BE20](v13 - 8, v14);
  v16 = &v32[-1] - v15;
  v31 = a1;
  v18 = *a2;
  v17 = a2[1];
  sub_22CF0F9C8(a2, &v32[-1] - v15);
  (*(v5 + 56))(v16, 0, 1, v4);
  swift_beginAccess();

  sub_22CF0BC5C(v16, v18, v17);
  swift_endAccess();
  if (sub_22D014CFC() & 1) != 0 || (sub_22D014D1C())
  {
    if (qword_28143FB00 != -1)
    {
      swift_once();
    }

    v19 = sub_22D01637C();
    __swift_project_value_buffer(v19, qword_2814443C0);
    sub_22CF0F9C8(a2, v9);
    v20 = sub_22D01636C();
    v21 = sub_22D01690C();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v32[0] = v23;
      *v22 = 136446210;
      v24 = *v9;
      v25 = v9[1];

      sub_22CF0C71C(v9);
      v26 = sub_22CEEE31C(v24, v25, v32);

      *(v22 + 4) = v26;
      _os_log_impl(&dword_22CEE1000, v20, v21, "Not persisting ephemeral activity %{public}s", v22, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v23);
      MEMORY[0x2318C6860](v23, -1, -1);
      MEMORY[0x2318C6860](v22, -1, -1);
    }

    else
    {

      sub_22CF0C71C(v9);
    }
  }

  else
  {
    sub_22D01566C();
    v28 = v31;
    sub_22CF0F9C8(a2, v12);
    v29 = (*(v5 + 80) + 24) & ~*(v5 + 80);
    v30 = swift_allocObject();
    *(v30 + 16) = v28;
    sub_22CFA8FC0(v12, v30 + v29);

    sub_22D01565C();
    sub_22D01564C();
  }

  return result;
}

uint64_t sub_22CF0C490()
{
  v1 = type metadata accessor for Activity(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(*(v1 - 1) + 64);

  v5 = v1[5];
  v6 = sub_22D014E2C();
  (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);
  v7 = v1[6];
  v8 = sub_22D01502C();
  (*(*(v8 - 8) + 8))(v0 + v3 + v7, v8);

  v9 = v1[10];
  v10 = sub_22D01430C();
  v11 = *(*(v10 - 8) + 8);
  v11(v0 + v3 + v9, v10);
  v11(v0 + v3 + v1[11], v10);

  v12 = v1[14];
  v13 = sub_22D0146BC();
  (*(*(v13 - 8) + 8))(v0 + v3 + v12, v13);
  v14 = v1[15];
  v15 = sub_22D01486C();
  v16 = *(v15 - 8);
  if (!(*(v16 + 48))(v0 + v3 + v14, 1, v15))
  {
    (*(v16 + 8))(v0 + v3 + v14, v15);
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_22CF0C71C(uint64_t a1)
{
  v2 = type metadata accessor for Activity(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_22CF0C778(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for ActivityManagerEvent(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6, v9);
  v10 = &aBlock - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!*(a1 + *(type metadata accessor for Activity(0) + 52) + 8))
  {
    v11 = *(a1 + *(v6 + 20));
    if (v11 < 2)
    {
      ObjectType = swift_getObjectType();
      v13 = isEscapingClosureAtFileLocation;
      (*(a3 + 32))(isEscapingClosureAtFileLocation, &off_28402A280, *a1, a1[1], ObjectType, a3);
      v14 = *(isEscapingClosureAtFileLocation + 16);
      sub_22CF0CB84(a1, &aBlock - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ActivityManagerEvent);
      v15 = (*(v7 + 80) + 24) & ~*(v7 + 80);
      v16 = swift_allocObject();
      *(v16 + 16) = v13;
      sub_22CF0FF70(&aBlock - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v16 + v15, type metadata accessor for ActivityManagerEvent);
      v10 = swift_allocObject();
      *(v10 + 2) = sub_22CF1B428;
      *(v10 + 3) = v16;
      v28 = sub_22CEF4034;
      v29 = v10;
      aBlock = MEMORY[0x277D85DD0];
      v25 = 1107296256;
      v26 = sub_22CEF3C20;
      v27 = &block_descriptor_56_0;
      v17 = _Block_copy(&aBlock);
      a1 = v29;

      dispatch_sync(v14, v17);
      _Block_release(v17);
      isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

      if ((isEscapingClosureAtFileLocation & 1) == 0)
      {
        return;
      }

      __break(1u);
    }

    if (v11 == 4)
    {
      v18 = *(isEscapingClosureAtFileLocation + 16);
      sub_22CF0CB84(a1, v10, type metadata accessor for ActivityManagerEvent);
      v19 = (*(v7 + 80) + 24) & ~*(v7 + 80);
      v20 = swift_allocObject();
      *(v20 + 16) = isEscapingClosureAtFileLocation;
      sub_22CF0FF70(v10, v20 + v19, type metadata accessor for ActivityManagerEvent);
      v21 = swift_allocObject();
      *(v21 + 16) = sub_22CF7FA78;
      *(v21 + 24) = v20;
      v28 = sub_22CEF4034;
      v29 = v21;
      aBlock = MEMORY[0x277D85DD0];
      v25 = 1107296256;
      v26 = sub_22CEF3C20;
      v27 = &block_descriptor_46;
      v22 = _Block_copy(&aBlock);

      dispatch_sync(v18, v22);
      _Block_release(v22);
      v23 = swift_isEscapingClosureAtFileLocation();

      if (v23)
      {
        __break(1u);
      }
    }
  }
}

uint64_t sub_22CF0CB84(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_22CF0CBEC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_22CF0CC54(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_22CF0CCBC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_22CF0CD24(uint64_t (*a1)(uint64_t, uint64_t))
{
  v2 = *(type metadata accessor for ActivityManagerEvent(0) - 8);
  v3 = *(v1 + 16);
  v4 = v1 + ((*(v2 + 80) + 24) & ~*(v2 + 80));

  return a1(v3, v4);
}

uint64_t sub_22CF0CD9C(uint64_t *a1)
{
  v2 = type metadata accessor for Assertion(0);
  v4 = MEMORY[0x28223BE20](v2, v3);
  v57 = &v53 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v4, v6);
  v58 = &v53 - v8;
  MEMORY[0x28223BE20](v7, v9);
  v11 = &v53 - v10;
  v12 = sub_22D01534C();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12, v14);
  v16 = &v53 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_22D0154EC();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17, v19);
  v21 = &v53 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Activity(0);
  result = sub_22D014D1C();
  if (result)
  {
    getpid();
    (*(v18 + 104))(v21, *MEMORY[0x277D4D4A8], v17);
    sub_22D01532C();
    sub_22D01533C();
    v55 = v13;
    v56 = v12;
    v23 = *(v13 + 16);
    v53 = v16;
    v23(v11, v16, v12);
    v24 = &v11[v2[10]];
    v25 = *a1;
    v26 = a1[1];
    *v24 = v25;
    *(v24 + 1) = v26;
    v27 = *MEMORY[0x277D4D4D8];
    v28 = sub_22D01555C();
    (*(*(v28 - 8) + 104))(v24, v27, v28);
    v29 = *(v18 + 16);
    v30 = &v11[v2[5]];
    v54 = v17;
    v29(v30, v21, v17);
    v31 = v2[6];
    v32 = sub_22D01539C();
    (*(*(v32 - 8) + 56))(&v11[v31], 1, 1, v32);

    sub_22D0142DC();
    v33 = &v11[v2[7]];
    *v33 = 0xD00000000000001DLL;
    *(v33 + 1) = 0x800000022D01F720;
    v34 = &v11[v2[9]];
    *v34 = 0;
    v34[8] = 1;
    v35 = v59[19];
    v36 = v59[20];
    __swift_project_boxed_opaque_existential_1(v59 + 16, v35);
    (*(v36 + 24))(v11, v35, v36);
    v37 = v21;
    if (qword_28143FAF0 != -1)
    {
      swift_once();
    }

    v38 = sub_22D01637C();
    __swift_project_value_buffer(v38, qword_2814443A8);
    v39 = v58;
    sub_22CF07D60(v11, v58, type metadata accessor for Assertion);
    v40 = sub_22D01636C();
    v41 = sub_22D01690C();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v60 = v43;
      *v42 = 136380675;
      sub_22CF07D60(v39, v57, type metadata accessor for Assertion);
      v44 = sub_22D01669C();
      v46 = v45;
      sub_22CF1CB18(v39, type metadata accessor for Assertion);
      v47 = v37;
      v48 = sub_22CEEE31C(v44, v46, &v60);

      *(v42 + 4) = v48;
      v37 = v47;
      _os_log_impl(&dword_22CEE1000, v40, v41, "Acquired momentary activity prominence assertion: %{private}s", v42, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v43);
      MEMORY[0x2318C6860](v43, -1, -1);
      MEMORY[0x2318C6860](v42, -1, -1);
    }

    else
    {

      sub_22CF1CB18(v39, type metadata accessor for Assertion);
    }

    v50 = v55;
    v49 = v56;
    v52 = v53;
    v51 = v54;
    sub_22CF6BE6C(v11);
    sub_22CF1CB18(v11, type metadata accessor for Assertion);
    (*(v50 + 8))(v52, v49);
    return (*(v18 + 8))(v37, v51);
  }

  return result;
}

uint64_t sub_22CF0D34C(uint64_t a1)
{
  v2 = type metadata accessor for ActivityManagerEvent(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22CF0D3A8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v38 = a1;
  v36 = sub_22D01430C();
  v3 = *(v36 - 8);
  MEMORY[0x28223BE20](v36, v4);
  v37 = v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_22D0149CC();
  MEMORY[0x28223BE20](v6 - 8, v7);
  v27 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_22D01502C();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v11);
  v13 = v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = v13;
  v14 = sub_22D01488C();
  MEMORY[0x28223BE20](v14 - 8, v15);
  v17 = v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *v1;
  v19 = *(v1 + 1);
  v35 = v18;
  v33 = v17;
  v34 = v19;
  v20 = type metadata accessor for Activity(0);

  sub_22D014D7C();
  v21 = sub_22D014D4C();
  v31 = v22;
  v32 = v21;
  v23 = v20[6];
  v24 = *&v2[v20[7]];
  v28 = *&v2[v20[8]];
  v29 = v24;
  (*(v10 + 16))(v13, &v2[v23], v9);

  sub_22D014DBC();

  v26[3] = sub_22D014CFC();
  sub_22D014D1C();
  sub_22D014D0C();
  (*(v3 + 16))(v37, &v2[v20[11]], v36);

  sub_22D014D8C();

  return sub_22D0146FC();
}

uint64_t sub_22CF0D704(uint64_t a1)
{
  v2 = sub_22D014C4C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22D014C8C();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v9);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = *(a1 + 16);
  if (!v29)
  {
    return 0;
  }

  v40 = v6;
  v42 = v2;
  v12 = 0;
  v13 = *(sub_22D014CBC() - 8);
  v31 = a1 + ((*(v13 + 80) + 32) & ~*(v13 + 80));
  v14 = v8 + 16;
  v15 = v8 + 88;
  v16 = *MEMORY[0x277CB9630];
  v39 = *MEMORY[0x277CB9628];
  v41 = (v8 + 8);
  v37 = (v3 + 32);
  v38 = (v8 + 96);
  v36 = (v3 + 88);
  v35 = *MEMORY[0x277CB9610];
  v34 = (v3 + 8);
  v30 = *(v13 + 72);
  v33 = v8;
  while (1)
  {
    v32 = v12;
    result = sub_22D014CAC();
    v18 = result;
    v19 = *(result + 16);
    if (v19)
    {
      break;
    }

LABEL_3:
    v12 = v32 + 1;

    if (v12 == v29)
    {
      return 0;
    }
  }

  v20 = 0;
  v43 = result;
  while (v20 < *(v18 + 16))
  {
    (*(v8 + 16))(v11, v18 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v20, v7);
    v21 = (*(v8 + 88))(v11, v7);
    if (v21 == v16)
    {
      v22 = v19;
      v23 = v15;
      v24 = v14;
      (*v38)(v11, v7);
      v25 = v40;
      v26 = v42;
      (*v37)(v40, v11, v42);
      v27 = (*v36)(v25, v26);
      if (v27 == v35)
      {

        return 1;
      }

      result = (*v34)(v25, v26);
      v14 = v24;
      v15 = v23;
      v19 = v22;
      v8 = v33;
      v18 = v43;
    }

    else
    {
      if (v21 == v39)
      {

        (*v41)(v11, v7);
        return 1;
      }

      result = (*v41)(v11, v7);
    }

    if (v19 == ++v20)
    {
      goto LABEL_3;
    }
  }

  __break(1u);
  return result;
}

void sub_22CF0DADC(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  swift_beginAccess();
  v7 = *(a1 + 40);
  if (*(v7 + 16))
  {
    v8 = sub_22CEE637C(a2);
    if (v9)
    {
      v10 = *(*(v7 + 56) + 8 * v8);
      *a3 = v10;
      v11 = v10;
      return;
    }
  }

  v12 = [objc_opt_self() identifierWithPid_];
  if (!v12)
  {
    goto LABEL_10;
  }

  v13 = v12;
  sub_22CEE82F8(0, &qword_28143D928, 0x277D46F48);
  v14 = v13;
  v15 = sub_22CF17328(v14, &selRef_handleForIdentifier_error_);
  if (!v3)
  {
    v17 = v15;

    if (v17)
    {
      v16 = [v17 currentState];

      goto LABEL_11;
    }

LABEL_10:
    v16 = 0;
    goto LABEL_11;
  }

  v16 = 0;
LABEL_11:
  *a3 = v16;
}

void sub_22CF0DC2C(void *a1, uint64_t a2, unint64_t a3, char a4, uint64_t a5, void *a6, uint64_t a7, void *a8, double a9, uint64_t a10)
{
  v149 = a6;
  v134 = a5;
  v148 = a2;
  v157 = *MEMORY[0x277D85DE8];
  v16 = sub_22D0164CC();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16, v18);
  v139 = &v122 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_22D01653C();
  v138 = *(v20 - 8);
  MEMORY[0x28223BE20](v20, v21);
  v137 = &v122 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v133 = sub_22D0164BC();
  v132 = *(v133 - 8);
  MEMORY[0x28223BE20](v133, v23);
  v131 = (&v122 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  v147 = sub_22D01656C();
  v136 = *(v147 - 8);
  v26 = MEMORY[0x28223BE20](v147, v25);
  v140 = &v122 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26, v28);
  v135 = &v122 - v29;
  v30 = sub_22D01457C();
  v145 = *(v30 - 8);
  v146 = v30;
  MEMORY[0x28223BE20](v30, v31);
  v144 = &v122 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = [a1 process];
  if (v33)
  {
    v34 = v33;
    v127 = v17;
    v128 = v16;
    v141 = a7;
    v142 = a10;
    v143 = a8;
    if (qword_28143FB08 != -1)
    {
      swift_once();
    }

    v129 = sub_22D01637C();
    __swift_project_value_buffer(v129, qword_2814443D8);
    v35 = v34;

    v36 = sub_22D01636C();
    v37 = sub_22D01690C();

    v38 = os_log_type_enabled(v36, v37);
    v126 = v20;
    v130 = a3;
    if (v38)
    {
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      aBlock = v40;
      *v39 = 67240450;
      *(v39 + 4) = [v35 pid];

      *(v39 + 8) = 2082;
      *(v39 + 10) = sub_22CEEE31C(v148, a3, &aBlock);
      _os_log_impl(&dword_22CEE1000, v36, v37, "Executing task for %{public}d with explanation %{public}s", v39, 0x12u);
      __swift_destroy_boxed_opaque_existential_1Tm(v40);
      MEMORY[0x2318C6860](v40, -1, -1);
      MEMORY[0x2318C6860](v39, -1, -1);
    }

    else
    {
    }

    v48 = v35;
    if (a4)
    {
      v49 = sub_22D01666C();
      v50 = sub_22D01666C();
      v51 = [objc_opt_self() attributeWithDomain:v49 name:v50];

      v52 = [objc_opt_self() targetWithPid_];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2730, &unk_22D0196E0);
      v53 = swift_allocObject();
      *(v53 + 16) = xmmword_22D018FE0;
      *(v53 + 32) = v51;
      v54 = objc_allocWithZone(MEMORY[0x277D46DB8]);
      v55 = v52;
      v56 = v51;
      v57 = sub_22D01666C();
      sub_22CEEE550();
      v58 = sub_22D0167CC();

      v59 = [v54 initWithExplanation:v57 target:v55 attributes:v58];

      aBlock = 0;
      if (([v59 acquireWithError_] & 1) == 0)
      {
        v108 = aBlock;
        v109 = sub_22D01416C();

        swift_willThrow();
        sub_22CEEEBB4();
        v110 = swift_allocError();
        *v111 = 0;
        sub_22CF2F0BC(v110, v149, v141, v143, v142);

        return;
      }

      v122 = v59;
      v60 = qword_28143FB60;
      v61 = aBlock;
      if (v60 != -1)
      {
        swift_once();
      }

      __swift_project_value_buffer(v129, qword_2814444B0);
      v62 = v149;
      v63 = sub_22D01636C();
      v64 = sub_22D01690C();

      v65 = os_log_type_enabled(v63, v64);
      v125 = v35;
      v124 = v55;
      v123 = v56;
      if (v65)
      {
        v66 = swift_slowAlloc();
        v67 = swift_slowAlloc();
        aBlock = v67;
        *v66 = 136446210;
        *(v66 + 4) = sub_22CEEE31C(*&v62[OBJC_IVAR____TtC11SessionCoreP33_0305B71F931612257040B50ABDE1CB866Client_processIdentifier], *&v62[OBJC_IVAR____TtC11SessionCoreP33_0305B71F931612257040B50ABDE1CB866Client_processIdentifier + 8], &aBlock);
        _os_log_impl(&dword_22CEE1000, v63, v64, "Delivering activity changes for %{public}s", v66, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v67);
        MEMORY[0x2318C6860](v67, -1, -1);
        MEMORY[0x2318C6860](v66, -1, -1);
      }

      v68 = v144;
      sub_22D01456C();
      sub_22CF1A0D4(&unk_281443A00, MEMORY[0x277CB9208], MEMORY[0x277CB9200]);
      v69 = v146;
      v70 = sub_22D01517C();
      v71 = sub_22D0141EC();
      v48 = v72;

      v73 = sub_22D0141DC();
      v74 = swift_allocObject();
      v75 = v142;
      *(v74 + 16) = v62;
      *(v74 + 24) = v75;
      v155 = sub_22CF2184C;
      v156 = v74;
      aBlock = MEMORY[0x277D85DD0];
      v152 = 1107296256;
      v153 = sub_22CF217E0;
      v154 = &block_descriptor_19;
      v76 = _Block_copy(&aBlock);
      v77 = v62;

      [v143 activitiesChanged:v73 completion:v76];
      sub_22CEE7524(v71, v48);
      _Block_release(v76);

      (*(v145 + 8))(v68, v69);
      sub_22D01566C();

      v78 = sub_22D01563C();
      v79 = v140;
      sub_22D01654C();
      v80 = a9 * 1000.0;
      if (COERCE__INT64(fabs(a9 * 1000.0)) > 0x7FEFFFFFFFFFFFFFLL)
      {
        __break(1u);
      }

      else if (v80 > -9.22337204e18)
      {
        if (v80 < 9.22337204e18)
        {
          v81 = v131;
          *v131 = v80;
          v82 = v132;
          v83 = v133;
          (*(v132 + 104))(v81, *MEMORY[0x277D85178], v133);
          v84 = v135;
          sub_22D01655C();
          (*(v82 + 8))(v81, v83);
          v149 = *(v136 + 8);
          (v149)(v79, v147);
          v148 = *(v134 + 104);
          v85 = swift_allocObject();
          v86 = v122;
          *(v85 + 16) = v122;
          *(v85 + 24) = v78;
          v155 = sub_22CF7F1DC;
          v156 = v85;
          aBlock = MEMORY[0x277D85DD0];
          v152 = 1107296256;
          v153 = sub_22CEF8B58;
          v154 = &block_descriptor_26_0;
          v87 = _Block_copy(&aBlock);
          v88 = v86;

          v89 = v137;
          sub_22D0164EC();
          v150 = MEMORY[0x277D84F90];
          sub_22CF1A0D4(&qword_28143FA60, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9F2FE0, &qword_22D018B70);
          sub_22CF0EDA8();
          v90 = v139;
          v91 = v128;
          sub_22D016ADC();
          MEMORY[0x2318C5A90](v84, v89, v90, v87);
          _Block_release(v87);

          (*(v127 + 8))(v90, v91);
          (*(v138 + 8))(v89, v126);
          (v149)(v84, v147);

          return;
        }

        goto LABEL_37;
      }

      __break(1u);
LABEL_37:
      __break(1u);
      goto LABEL_38;
    }

    if ([a1 taskState] == 4)
    {
      if (qword_28143FB60 == -1)
      {
LABEL_24:
        __swift_project_value_buffer(v129, qword_2814444B0);
        v92 = v149;
        v93 = sub_22D01636C();
        v94 = sub_22D01690C();

        if (os_log_type_enabled(v93, v94))
        {
          v95 = swift_slowAlloc();
          v96 = swift_slowAlloc();
          aBlock = v96;
          *v95 = 136446210;
          *(v95 + 4) = sub_22CEEE31C(*&v92[OBJC_IVAR____TtC11SessionCoreP33_0305B71F931612257040B50ABDE1CB866Client_processIdentifier], *&v92[OBJC_IVAR____TtC11SessionCoreP33_0305B71F931612257040B50ABDE1CB866Client_processIdentifier + 8], &aBlock);
          _os_log_impl(&dword_22CEE1000, v93, v94, "Delivering activity changes for %{public}s", v95, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v96);
          MEMORY[0x2318C6860](v96, -1, -1);
          MEMORY[0x2318C6860](v95, -1, -1);
        }

        v97 = v142;

        v98 = v144;
        sub_22D01456C();
        sub_22CF1A0D4(&unk_281443A00, MEMORY[0x277CB9208], MEMORY[0x277CB9200]);
        v99 = v146;
        v100 = sub_22D01517C();
        v101 = sub_22D0141EC();
        v103 = v102;

        v104 = sub_22D0141DC();
        v105 = swift_allocObject();
        *(v105 + 16) = v92;
        *(v105 + 24) = v97;
        v155 = sub_22CF303DC;
        v156 = v105;
        aBlock = MEMORY[0x277D85DD0];
        v152 = 1107296256;
        v153 = sub_22CF217E0;
        v154 = &block_descriptor_33;
        v106 = _Block_copy(&aBlock);
        v107 = v92;

        [v143 activitiesChanged:v104 completion:v106];
        sub_22CEE7524(v101, v103);
        _Block_release(v106);

        (*(v145 + 8))(v98, v99);
        return;
      }

LABEL_38:
      swift_once();
      goto LABEL_24;
    }

    v112 = v35;
    v113 = sub_22D01636C();
    v114 = sub_22D0168EC();
    v115 = os_log_type_enabled(v113, v114);
    v116 = v143;
    if (v115)
    {
      v117 = swift_slowAlloc();
      *v117 = 67240192;
      *(v117 + 4) = [v112 pid];

      _os_log_impl(&dword_22CEE1000, v113, v114, "Rejecting low-priority task for %{public}d because process is unavailable", v117, 8u);
      MEMORY[0x2318C6860](v117, -1, -1);
    }

    else
    {

      v113 = v112;
    }

    v119 = v141;
    v118 = v142;

    sub_22CEEEBB4();
    v120 = swift_allocError();
    *v121 = 2;
    sub_22CF2F0BC(v120, v149, v119, v116, v118);

    v47 = v120;
  }

  else
  {
    if (qword_28143FB08 != -1)
    {
      swift_once();
    }

    v41 = sub_22D01637C();
    __swift_project_value_buffer(v41, qword_2814443D8);
    v42 = sub_22D01636C();
    v43 = sub_22D01690C();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      *v44 = 0;
      _os_log_impl(&dword_22CEE1000, v42, v43, "Cannot execute task; process does not exist", v44, 2u);
      MEMORY[0x2318C6860](v44, -1, -1);
    }

    sub_22CEEEBB4();
    v45 = swift_allocError();
    *v46 = 2;
    sub_22CF2F0BC(v45, v149, a7, a8, a10);
    v47 = v45;
  }
}

unint64_t sub_22CF0EDA8()
{
  result = qword_28143FA50;
  if (!qword_28143FA50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27D9F2FE0, &qword_22D018B70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28143FA50);
  }

  return result;
}

void sub_22CF0EE0C(uint64_t a1, int a2, double a3)
{
  LODWORD(v51) = a2;
  v5 = type metadata accessor for Activity(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5, v8);
  v9 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_22D01471C();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10, v12);
  v14 = &v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22CF0D3A8(v14);
  v15 = sub_22D0146CC();
  v16 = *(v11 + 8);
  v16(v14, v10);
  if ((v15 & 1) == 0)
  {
    sub_22CF0D3A8(v14);
    v17 = sub_22D0146DC();
    v16(v14, v10);
    if ((v17 & 1) == 0)
    {
      v18 = v52;
      v49 = *(*(v52 + OBJC_IVAR____TtC11SessionCore12OutputServer_lock) + 16);
      os_unfair_lock_lock(v49);
      v19 = OBJC_IVAR____TtC11SessionCore12OutputServer__lock_clients;
      swift_beginAccess();
      v20 = *(v18 + v19);
      v21 = *(v20 + 16);
      if (v21)
      {
        v46 = v6;
        v47 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
        v50 = sub_22CF1C2FC(v21, 0);
        v48 = sub_22CF102C0(&v53, v50 + 4, v21, v20);
        v22 = v53;

        sub_22CEE57FC(v22);
        if (v48 != v21)
        {
          __break(1u);
          return;
        }

        v23 = v50;
        v6 = v46;
        v9 = v47;
      }

      else
      {
        v23 = MEMORY[0x277D84F90];
      }

      os_unfair_lock_unlock(v49);
      MEMORY[0x28223BE20](v24, v25);
      v45 = a1;
      if ((sub_22CF4CA70(sub_22CFD91AC, (&v46 - 4), v23) & 1) == 0)
      {
        v50 = v23;
        v26 = v51 & 1;
        if (v51)
        {
          v27 = 0x7974697669746341;
        }

        else
        {
          v27 = 0xD000000000000010;
        }

        if (v51)
        {
          v28 = 0xEE006465646E6520;
        }

        else
        {
          v28 = 0x800000022D021B30;
        }

        sub_22D01566C();
        v51 = v27;
        v49 = v28;
        v29 = v6;
        v30 = sub_22D01563C();
        v31 = __swift_project_boxed_opaque_existential_1((v52 + OBJC_IVAR____TtC11SessionCore12OutputServer_processManager), *(v52 + OBJC_IVAR____TtC11SessionCore12OutputServer_processManager + 24));
        v32 = sub_22D014F9C();
        v33 = v9;
        v35 = v34;
        sub_22CF1C294(a1, v33, type metadata accessor for Activity);
        v36 = (*(v29 + 80) + 32) & ~*(v29 + 80);
        v37 = swift_allocObject();
        *(v37 + 16) = v26;
        *(v37 + 24) = a3;
        sub_22CF0A794(v33, v37 + v36, type metadata accessor for Activity);
        *(v37 + ((v7 + v36 + 7) & 0xFFFFFFFFFFFFFFF8)) = v30;
        v38 = *v31;
        v39 = *(*v31 + 40);
        v40 = v38[6];
        __swift_project_boxed_opaque_existential_1(v38 + 2, v39);
        v41 = *(v40 + 32);
        v52 = v30;

        v42 = v41(v32, v35, v39, v40);
        if (!v42)
        {

          v44 = v49;

          sub_22CF7D8CC(v32, v35, v38, v38, v51, v44, 2, sub_22CFD91CC, a3, v37);

          swift_bridgeObjectRelease_n();
          return;
        }

        v43 = v42;

        sub_22CF7C6AC(v43, v51, v49, 2, sub_22CFD91CC, v37, a3);
      }
    }
  }
}

uint64_t sub_22CF0F348()
{
  v1 = type metadata accessor for Activity(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*(v1 - 1) + 64);

  v5 = v1[5];
  v6 = sub_22D014E2C();
  (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);
  v7 = v1[6];
  v8 = sub_22D01502C();
  (*(*(v8 - 8) + 8))(v0 + v3 + v7, v8);

  v9 = v1[10];
  v10 = sub_22D01430C();
  v11 = *(*(v10 - 8) + 8);
  v11(v0 + v3 + v9, v10);
  v11(v0 + v3 + v1[11], v10);

  v12 = v1[14];
  v13 = sub_22D0146BC();
  (*(*(v13 - 8) + 8))(v0 + v3 + v12, v13);
  v14 = v1[15];
  v15 = sub_22D01486C();
  v16 = *(v15 - 8);
  if (!(*(v16 + 48))(v0 + v3 + v14, 1, v15))
  {
    (*(v16 + 8))(v0 + v3 + v14, v15);
  }

  return MEMORY[0x2821FE8E8](v0, ((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 8, v2 | 7);
}

uint64_t sub_22CF0F5E0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_22CF0F640(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_22CF0F6C4(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F3810, &unk_22D018FA0);
  MEMORY[0x28223BE20](v6 - 8, v7);
  v9 = &v22 - v8;
  v10 = *(a1 + *(type metadata accessor for ActivityManagerEvent(0) + 20));
  if (v10 == 4)
  {
    v14 = *(*(v3 + 16) + 16);
    os_unfair_lock_lock(v14);
    v20 = *a1;
    v19 = a1[1];
    v21 = type metadata accessor for Activity(0);
    (*(*(v21 - 8) + 56))(v9, 1, 1, v21);
    swift_beginAccess();

    v16 = v9;
    v17 = v20;
    v18 = v19;
  }

  else
  {
    if (v10 != 1)
    {
      return;
    }

    ObjectType = swift_getObjectType();
    v12 = *a1;
    v13 = a1[1];
    (*(a3 + 32))(v3, &off_28402AB28, *a1, v13, ObjectType, a3);
    v14 = *(*(v3 + 16) + 16);
    os_unfair_lock_lock(v14);
    sub_22CF1C22C(a1, v9, type metadata accessor for Activity);
    v15 = type metadata accessor for Activity(0);
    (*(*(v15 - 8) + 56))(v9, 0, 1, v15);
    swift_beginAccess();

    v16 = v9;
    v17 = v12;
    v18 = v13;
  }

  sub_22CF0BC5C(v16, v17, v18);
  swift_endAccess();
  os_unfair_lock_unlock(v14);
}

uint64_t sub_22CF0F8F0(uint64_t (*a1)(void), uint64_t (*a2)(uint64_t))
{
  v3 = *(a1(0) - 8);
  v4 = v2 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return a2(v4);
}

void sub_22CF0F96C(uint64_t *a1)
{
  v3 = *v1;
  v4 = *(*(v3 + 32) + 16);
  os_unfair_lock_lock(v4);
  sub_22CF0C0F8(v3, a1);

  os_unfair_lock_unlock(v4);
}

uint64_t sub_22CF0F9C8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Activity(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22CF0FA2C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = v4;
  v10 = sub_22D01659C();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10, v12);
  v14 = (&v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = *(v5 + 40);
  *v14 = v15;
  (*(v11 + 104))(v14, *MEMORY[0x277D85200], v10);
  v16 = v15;
  LOBYTE(v15) = sub_22D0165BC();
  (*(v11 + 8))(v14, v10);
  if (v15)
  {
    if (qword_28143FB58 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v17 = sub_22D01637C();
  __swift_project_value_buffer(v17, qword_281444498);
  swift_unknownObjectRetain();

  v18 = sub_22D01636C();
  v19 = sub_22D01690C();

  swift_unknownObjectRelease();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v36[0] = v35;
    *v20 = 136446466;
    v36[3] = a1;
    v36[4] = a2;
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F34B0, &unk_22D01B8E8);
    v21 = sub_22D01669C();
    v23 = sub_22CEEE31C(v21, v22, v36);

    *(v20 + 4) = v23;
    *(v20 + 12) = 2082;
    *(v20 + 14) = sub_22CEEE31C(a3, a4, v36);
    _os_log_impl(&dword_22CEE1000, v18, v19, "Subscribing participant %{public}s to activity: %{public}s", v20, 0x16u);
    v24 = v35;
    swift_arrayDestroy();
    MEMORY[0x2318C6860](v24, -1, -1);
    MEMORY[0x2318C6860](v20, -1, -1);
  }

  swift_beginAccess();
  v25 = *(v5 + 24);
  if (*(v25 + 16))
  {

    v26 = sub_22CEEC698(a3, a4);
    if (v27)
    {
      v28 = *(*(v25 + 56) + 8 * v26);
    }

    else
    {
      v28 = MEMORY[0x277D84F90];
    }
  }

  else
  {
    v28 = MEMORY[0x277D84F90];
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v28 = sub_22CF1B8BC(0, v28[2] + 1, 1, v28, &qword_27D9F34A8, &qword_22D01B8E0, &qword_27D9F34B0, &unk_22D01B8E8);
  }

  v30 = v28[2];
  v29 = v28[3];
  if (v30 >= v29 >> 1)
  {
    v28 = sub_22CF1B8BC((v29 > 1), v30 + 1, 1, v28, &qword_27D9F34A8, &qword_22D01B8E0, &qword_27D9F34B0, &unk_22D01B8E8);
  }

  v28[2] = v30 + 1;
  v31 = &v28[2 * v30];
  v31[4] = a1;
  v31[5] = a2;
  swift_beginAccess();
  swift_unknownObjectRetain();

  sub_22CF0FE54(v32, a3, a4);
  swift_endAccess();
}

uint64_t sub_22CF0FE54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *v3;
    sub_22CF1BF00(a1, a2, a3, isUniquelyReferenced_nonNull_native, &qword_27D9F31B8, &qword_22D01B150);

    *v3 = v15;
  }

  else
  {
    v10 = sub_22CEEC698(a2, a3);
    v12 = v11;

    if (v12)
    {
      v13 = swift_isUniquelyReferenced_nonNull_native();
      v14 = *v4;
      v16 = *v4;
      if (!v13)
      {
        sub_22CFB856C(&qword_27D9F31B8, &qword_22D01B150);
        v14 = v16;
      }

      result = sub_22CF37F44(v10, v14);
      *v4 = v14;
    }
  }

  return result;
}

uint64_t sub_22CF0FF70(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_22CF0FFD8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_22CF10058(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F3810, &unk_22D018FA0);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v6 = &v19 - v5;
  v7 = *(*(v1 + OBJC_IVAR____TtC11SessionCore12OutputServer_lock) + 16);
  os_unfair_lock_lock(v7);
  v8 = *a1;
  v9 = a1[1];
  sub_22CF1C294(a1, v6, type metadata accessor for Activity);
  v10 = type metadata accessor for Activity(0);
  (*(*(v10 - 8) + 56))(v6, 0, 1, v10);
  swift_beginAccess();

  sub_22CF0BC5C(v6, v8, v9);
  swift_endAccess();
  v11 = OBJC_IVAR____TtC11SessionCore12OutputServer__lock_clients;
  swift_beginAccess();
  v12 = *(v1 + v11);
  v13 = *(v12 + 16);
  if (!v13)
  {
    v14 = MEMORY[0x277D84F90];
    goto LABEL_5;
  }

  v20 = v7;
  v21 = a1;
  v14 = sub_22CF1C2FC(v13, 0);
  v15 = sub_22CF102C0(&v22, v14 + 4, v13, v12);
  v16 = v22;

  sub_22CEE57FC(v16);
  if (v15 == v13)
  {
    v7 = v20;
    a1 = v21;
LABEL_5:
    os_unfair_lock_unlock(v7);
    MEMORY[0x28223BE20](v17, v18);
    *(&v19 - 2) = a1;
    sub_22CF1685C(sub_22CF1695C, (&v19 - 4), v14);
    sub_22CF0EE0C(a1, byte_27D9F36E0, *&qword_27D9F36E8);

    return;
  }

  __break(1u);
}

void *sub_22CF102C0(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v18 = *(*(a4 + 56) + ((v12 << 9) | (8 * v17)));
      *v11 = v18;
      if (v14 == v10)
      {
        v22 = v18;
        goto LABEL_24;
      }

      ++v11;
      v19 = v18;
      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v21 = v12 + 1;
    }

    else
    {
      v21 = (63 - v7) >> 6;
    }

    v12 = v21 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

void sub_22CF10414(uint64_t *a1)
{
  v3 = sub_22D014C4C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22CF16990(a1);
  if (v8)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F20F0, &qword_22D018918);
    v9 = sub_22D014C8C();
    v10 = *(v9 - 8);
    v11 = v10;
    v24 = v1;
    v12 = a1;
    v13 = *(v10 + 72);
    v14 = (*(v11 + 80) + 32) & ~*(v11 + 80);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_22D0189F0;
    v16 = v15 + v14;
    v23 = v12;
    sub_22CF0D3A8(v16);
    v17 = *(v11 + 104);
    v17(v16, *MEMORY[0x277CB9628], v9);
    v18 = sub_22CF0B5E0();
    (*(v4 + 104))(v7, **(&unk_2787486F8 + v18), v3);
    (*(v4 + 32))(v16 + v13, v7, v3);
    v19 = v16 + v13;
    v20 = v24;
    v17(v19, *MEMORY[0x277CB9630], v9);
    v26 = v15;
    v21 = *(*(v20 + OBJC_IVAR____TtC11SessionCoreP33_0305B71F931612257040B50ABDE1CB866Client_lock) + 16);
    os_unfair_lock_lock(v21);
    sub_22CFD7634(v20, &v26, v23, &v25);
    os_unfair_lock_unlock(v21);
    sub_22CF1C384(v25);
  }
}

uint64_t sub_22CF10698(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*(v3 + 48) + 16);
  os_unfair_lock_lock(v4);
  sub_22CF0DADC(v3, a1, &v6);
  os_unfair_lock_unlock(v4);
  return v6;
}

void sub_22CF10718(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v97[1] = a2;
  v98 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F3810, &unk_22D018FA0);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v100 = v97 - v6;
  v7 = type metadata accessor for ActivityManagerEvent(0);
  v9 = MEMORY[0x28223BE20](v7, v8);
  v11 = (v97 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = MEMORY[0x28223BE20](v9, v12);
  v15 = (v97 - v14);
  v17 = MEMORY[0x28223BE20](v13, v16);
  v99 = (v97 - v18);
  v20 = MEMORY[0x28223BE20](v17, v19);
  v22 = (v97 - v21);
  MEMORY[0x28223BE20](v20, v23);
  v25 = (v97 - v24);
  v26 = sub_22D01430C();
  v27 = *(v26 - 8);
  MEMORY[0x28223BE20](v26, v28);
  v30 = v97 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = type metadata accessor for Activity(0);
  if (sub_22D014D2C() & 1) != 0 || (sub_22CF37A40(), (v31))
  {
    if (qword_28143FB30 != -1)
    {
      swift_once();
    }

    v32 = sub_22D01637C();
    __swift_project_value_buffer(v32, qword_281444438);
    sub_22CF0CCBC(a1, v11, type metadata accessor for ActivityManagerEvent);
    v33 = sub_22D01636C();
    v34 = sub_22D01690C();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v103[0] = v36;
      *v35 = 136446210;
      v37 = *v11;
      v38 = v11[1];

      sub_22CF0F640(v11, type metadata accessor for ActivityManagerEvent);
      v39 = sub_22CEEE31C(v37, v38, v103);

      *(v35 + 4) = v39;
      _os_log_impl(&dword_22CEE1000, v33, v34, "Duration limit is not enforced for unbounded or interactive activity %{public}s", v35, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v36);
      MEMORY[0x2318C6860](v36, -1, -1);
      MEMORY[0x2318C6860](v35, -1, -1);

      return;
    }

    v40 = v11;
LABEL_8:
    sub_22CF0F640(v40, type metadata accessor for ActivityManagerEvent);
    return;
  }

  v41 = v102;
  sub_22D0142DC();
  sub_22CEF888C(&qword_281443A30, MEMORY[0x277CC9578], MEMORY[0x277CC9590]);
  v42 = sub_22D01663C();
  (*(v27 + 8))(v30, v26);
  if ((v42 & 1) == 0)
  {
    if (qword_28143FB30 != -1)
    {
      swift_once();
    }

    v53 = sub_22D01637C();
    __swift_project_value_buffer(v53, qword_281444438);
    sub_22CF0CCBC(a1, v15, type metadata accessor for ActivityManagerEvent);
    v54 = sub_22D01636C();
    v55 = sub_22D01690C();
    if (os_log_type_enabled(v54, v55))
    {
      v56 = swift_slowAlloc();
      v57 = swift_slowAlloc();
      v103[0] = v57;
      *v56 = 136446210;
      v58 = *v15;
      v59 = v15[1];

      sub_22CF0F640(v15, type metadata accessor for ActivityManagerEvent);
      v60 = sub_22CEEE31C(v58, v59, v103);

      *(v56 + 4) = v60;
      _os_log_impl(&dword_22CEE1000, v54, v55, "Duration limit is not enforced for pending activity %{public}s", v56, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v57);
      MEMORY[0x2318C6860](v57, -1, -1);
      MEMORY[0x2318C6860](v56, -1, -1);

      return;
    }

    v40 = v15;
    goto LABEL_8;
  }

  if (*(a1 + *(v7 + 20)) > 1u)
  {
    if (*(a1 + *(v7 + 20)) == 3)
    {
      if (qword_28143FB30 != -1)
      {
        swift_once();
      }

      v43 = sub_22D01637C();
      __swift_project_value_buffer(v43, qword_281444438);
      v44 = a1;
      v45 = v99;
      sub_22CF0CCBC(a1, v99, type metadata accessor for ActivityManagerEvent);
      v46 = sub_22D01636C();
      v47 = sub_22D01690C();
      if (os_log_type_enabled(v46, v47))
      {
        v48 = swift_slowAlloc();
        v49 = swift_slowAlloc();
        v103[0] = v49;
        *v48 = 136446210;
        v50 = *v45;
        v51 = v45[1];

        sub_22CF0F640(v45, type metadata accessor for ActivityManagerEvent);
        v52 = sub_22CEEE31C(v50, v51, v103);

        *(v48 + 4) = v52;
        _os_log_impl(&dword_22CEE1000, v46, v47, "Updating buffered activity copy %{public}s", v48, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v49);
        MEMORY[0x2318C6860](v49, -1, -1);
        MEMORY[0x2318C6860](v48, -1, -1);
      }

      else
      {

        sub_22CF0F640(v45, type metadata accessor for ActivityManagerEvent);
      }

      v86 = v100;
      v85 = *(v101[2] + 16);
      os_unfair_lock_lock(v85);
      v87 = *v44;
      v88 = v44[1];
      sub_22CF0CCBC(v44, v86, type metadata accessor for Activity);
      (*(*(v102 - 8) + 56))(v86, 0, 1);
      swift_beginAccess();

      sub_22CF0BC5C(v86, v87, v88);
      swift_endAccess();
      goto LABEL_37;
    }

    if (qword_28143FB30 != -1)
    {
      swift_once();
    }

    v61 = sub_22D01637C();
    __swift_project_value_buffer(v61, qword_281444438);
    v62 = a1;
    sub_22CF0CCBC(a1, v22, type metadata accessor for ActivityManagerEvent);
    v63 = sub_22D01636C();
    v64 = sub_22D01690C();
    if (os_log_type_enabled(v63, v64))
    {
      v65 = swift_slowAlloc();
      v66 = swift_slowAlloc();
      v103[0] = v66;
      *v65 = 136446210;
      v67 = *v22;
      v68 = v22[1];

      sub_22CF0F640(v22, type metadata accessor for ActivityManagerEvent);
      v69 = sub_22CEEE31C(v67, v68, v103);

      *(v65 + 4) = v69;
      _os_log_impl(&dword_22CEE1000, v63, v64, "Activity is no longer relevant %{public}s", v65, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v66);
      MEMORY[0x2318C6860](v66, -1, -1);
      MEMORY[0x2318C6860](v65, -1, -1);
    }

    else
    {

      sub_22CF0F640(v22, type metadata accessor for ActivityManagerEvent);
    }

    v79 = v101;
    v80 = v101[2];
    v81 = *(v80 + 16);
    os_unfair_lock_lock(v81);
    v82 = *v62;
    v83 = v62[1];
    v84 = v100;
    (*(*(v41 - 8) + 56))(v100, 1, 1, v41);
    swift_beginAccess();

    sub_22CF0BC5C(v84, v82, v83);
    swift_endAccess();
    os_unfair_lock_unlock(v81);
    v85 = *(v80 + 16);
LABEL_34:
    os_unfair_lock_lock(v85);
    sub_22CFCEFBC(v79);
LABEL_37:
    os_unfair_lock_unlock(v85);
    return;
  }

  if (*(a1 + *(v7 + 20)) && sub_22CF0B5E0() != 1)
  {
    if (qword_28143FB30 != -1)
    {
      swift_once();
    }

    v70 = sub_22D01637C();
    __swift_project_value_buffer(v70, qword_281444438);
    v71 = a1;
    sub_22CF0CCBC(a1, v25, type metadata accessor for ActivityManagerEvent);
    v72 = sub_22D01636C();
    v73 = sub_22D01690C();
    if (os_log_type_enabled(v72, v73))
    {
      v74 = swift_slowAlloc();
      v75 = swift_slowAlloc();
      v103[0] = v75;
      *v74 = 136446210;
      v76 = *v25;
      v77 = v25[1];

      sub_22CF0F640(v25, type metadata accessor for ActivityManagerEvent);
      v78 = sub_22CEEE31C(v76, v77, v103);

      *(v74 + 4) = v78;
      _os_log_impl(&dword_22CEE1000, v72, v73, "Tracking activity %{public}s", v74, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v75);
      MEMORY[0x2318C6860](v75, -1, -1);
      MEMORY[0x2318C6860](v74, -1, -1);
    }

    else
    {

      sub_22CF0F640(v25, type metadata accessor for ActivityManagerEvent);
    }

    v79 = v101;
    ObjectType = swift_getObjectType();
    v90 = v71;
    v91 = *v71;
    v92 = v71[1];
    (*(v98 + 32))(v79, &off_28402C548, *v71, v92, ObjectType);
    v93 = v79[2];
    v94 = *(v93 + 16);
    os_unfair_lock_lock(v94);
    v95 = v90;
    v96 = v100;
    sub_22CF0CCBC(v95, v100, type metadata accessor for Activity);
    (*(*(v41 - 8) + 56))(v96, 0, 1, v41);
    swift_beginAccess();

    sub_22CF0BC5C(v96, v91, v92);
    swift_endAccess();
    os_unfair_lock_unlock(v94);
    v85 = *(v93 + 16);
    goto LABEL_34;
  }
}

uint64_t sub_22CF11390(uint64_t a1, uint64_t *a2)
{
  swift_beginAccess();
  if (!*(*(a1 + 24) + 16))
  {
    sub_22D01566C();
    *(a1 + 32) = sub_22D01563C();
  }

  v5 = *a2;
  v4 = a2[1];
  swift_beginAccess();

  sub_22CEE54CC(&v7, v5, v4);
  swift_endAccess();
}

void sub_22CF11460(uint64_t *a1)
{
  if (*(a1 + *(type metadata accessor for ActivityManagerEvent(0) + 20)) == 4)
  {
    __swift_project_boxed_opaque_existential_1((v1 + 16), *(v1 + 40));
    sub_22CF6CFA0(*a1, a1[1], 2);
  }
}

uint64_t sub_22CF114B8(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v24[1] = a3;
  v5 = sub_22D01502C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9F3840, &unk_22D01A2B0);
  v11 = v10 - 8;
  v13 = MEMORY[0x28223BE20](v10, v12);
  v15 = v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13, v16);
  v18 = (v24 - v17);
  v19 = *a1;
  v20 = a1[1];
  *v18 = v19;
  v18[1] = v20;
  sub_22CF0CC54(a2, v24 + *(v11 + 56) - v17, type metadata accessor for Activity);
  sub_22CEEB6DC(v18, v15, &unk_27D9F3840, &unk_22D01A2B0);

  v21 = &v15[*(v11 + 56)];
  v22 = type metadata accessor for Activity(0);
  (*(v6 + 16))(v9, v21 + *(v22 + 24), v5);
  sub_22CF0F640(v21, type metadata accessor for Activity);
  LOBYTE(v21) = sub_22D014FEC();
  (*(v6 + 8))(v9, v5);
  sub_22CEEC3D8(v18, &unk_27D9F3840, &unk_22D01A2B0);
  return v21 & 1;
}

uint64_t sub_22CF1173C(uint64_t a1)
{
  v40 = a1;
  v2 = sub_22D0162BC();
  v38 = *(v2 - 8);
  v39 = v2;
  MEMORY[0x28223BE20](v2, v3);
  v35 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F26F8, qword_22D01D230);
  v7 = MEMORY[0x28223BE20](v5 - 8, v6);
  v37 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7, v9);
  v36 = &v34 - v10;
  v11 = sub_22D015C8C();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11, v13);
  v41 = &v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = &qword_27D9F2700;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2700, &unk_22D01AEA0);
  v18 = MEMORY[0x28223BE20](v16 - 8, v17);
  v20 = &v34 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18, v21);
  v23 = &v34 - v22;
  __swift_project_boxed_opaque_existential_1(v1 + 7, v1[10]);
  v24 = sub_22D015F2C();
  v42 = v40;
  sub_22CF11BC8(sub_22CF11BF4, v24, v23);

  sub_22CEEB6DC(v23, v20, &qword_27D9F2700, &unk_22D01AEA0);
  if ((*(v12 + 48))(v20, 1, v11) == 1)
  {
    v25 = &unk_22D01AEA0;
    sub_22CEEC3D8(v23, &qword_27D9F2700, &unk_22D01AEA0);
    v26 = v20;
LABEL_5:
    sub_22CEEC3D8(v26, v15, v25);
    return 0;
  }

  (*(v12 + 32))(v41, v20, v11);
  __swift_project_boxed_opaque_existential_1(v1 + 12, v1[15]);
  sub_22D015C3C();
  v27 = v36;
  sub_22D01600C();

  v28 = v37;
  sub_22CEEB6DC(v27, v37, &qword_27D9F26F8, qword_22D01D230);
  v30 = v38;
  v29 = v39;
  if ((*(v38 + 48))(v28, 1, v39) == 1)
  {
    v15 = &qword_27D9F26F8;
    v25 = qword_22D01D230;
    sub_22CEEC3D8(v27, &qword_27D9F26F8, qword_22D01D230);
    (*(v12 + 8))(v41, v11);
    sub_22CEEC3D8(v23, &qword_27D9F2700, &unk_22D01AEA0);
    v26 = v28;
    goto LABEL_5;
  }

  v32 = v35;
  (*(v30 + 32))(v35, v28, v29);
  v33 = sub_22D0161FC();
  (*(v30 + 8))(v32, v29);
  sub_22CEEC3D8(v27, &qword_27D9F26F8, qword_22D01D230);
  (*(v12 + 8))(v41, v11);
  sub_22CEEC3D8(v23, &qword_27D9F2700, &unk_22D01AEA0);
  return v33;
}

unint64_t sub_22CF11C44(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F27A0, &qword_22D019090);
    v3 = sub_22D016D3C();
    v4 = a1 + 32;

    while (1)
    {
      sub_22CEEB6DC(v4, &v13, &qword_27D9F3460, &unk_22D0188B0);
      v5 = v13;
      v6 = v14;
      result = sub_22CEEC698(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_22CF1D288(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
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

uint64_t sub_22CF11D74(void *a1)
{
  v2 = sub_22D01559C();
  v30 = *(v2 - 8);
  v31 = v2;
  MEMORY[0x28223BE20](v2, v3);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_22D0155CC();
  v32 = *(v6 - 8);
  v33 = v6;
  MEMORY[0x28223BE20](v6, v7);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_22D01430C();
  v11 = *(v10 - 8);
  v13 = MEMORY[0x28223BE20](v10, v12);
  v15 = &v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13, v16);
  v18 = &v29 - v17;
  swift_beginAccess();
  sub_22CEEB6DC((a1 + 10), &v35, &qword_27D9F3278, &unk_22D01B2C0);
  if (*(&v36 + 1))
  {
    sub_22CEE3A84(&v35, v34);
    sub_22CEEC3D8(&v35, &qword_27D9F3278, &unk_22D01B2C0);
    __swift_project_boxed_opaque_existential_1(v34, v34[3]);
    sub_22D0163DC();
    __swift_destroy_boxed_opaque_existential_1Tm(v34);
  }

  else
  {
    sub_22CEEC3D8(&v35, &qword_27D9F3278, &unk_22D01B2C0);
  }

  v37 = 0;
  v35 = 0u;
  v36 = 0u;
  swift_beginAccess();
  sub_22CF1B3B4(&v35, (a1 + 10));
  swift_endAccess();
  sub_22CF122C0(v18);
  sub_22D01423C();
  v19 = sub_22D01428C();
  v20 = *(v11 + 8);
  v20(v15, v10);
  if (v19)
  {
    (*(v11 + 16))(v15, v18, v10);
    (*(v30 + 104))(v5, *MEMORY[0x277D4D518], v31);
    sub_22D01558C();
    __swift_project_boxed_opaque_existential_1(a1 + 3, a1[6]);
    swift_allocObject();
    swift_weakInit();

    sub_22D0155DC();

    (*(v32 + 8))(v9, v33);
    v20(v18, v10);

    sub_22CEF44D4(&v35, v34);
    swift_beginAccess();
    sub_22CF1B3B4(v34, (a1 + 10));
    return swift_endAccess();
  }

  else
  {
    if (qword_28143DAB0 != -1)
    {
      swift_once();
    }

    v22 = sub_22D01637C();
    __swift_project_value_buffer(v22, qword_281444320);
    v23 = sub_22D01636C();
    v24 = sub_22D01690C();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = v10;
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&dword_22CEE1000, v23, v24, "No more activities with stale dates", v26, 2u);
      MEMORY[0x2318C6860](v26, -1, -1);

      v27 = v18;
      v28 = v25;
    }

    else
    {

      v27 = v18;
      v28 = v10;
    }

    return (v20)(v27, v28);
  }
}

uint64_t sub_22CF12288()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22CF122C0@<X0>(uint64_t a1@<X8>)
{
  v91 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2648, &unk_22D018BC0);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v111 = &v90 - v4;
  v110 = sub_22D01461C();
  v123 = *(v110 - 8);
  MEMORY[0x28223BE20](v110, v5);
  v109 = &v90 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v118 = sub_22D0146BC();
  v122 = *(v118 - 8);
  v8 = MEMORY[0x28223BE20](v118, v7);
  v98 = &v90 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8, v10);
  v108 = &v90 - v11;
  v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9F3840, &unk_22D01A2B0);
  v13 = MEMORY[0x28223BE20](v121 - 8, v12);
  v97 = &v90 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v13, v15);
  v107 = &v90 - v17;
  MEMORY[0x28223BE20](v16, v18);
  v20 = (&v90 - v19);
  v21 = sub_22D01430C();
  v22 = *(v21 - 8);
  v24 = MEMORY[0x28223BE20](v21, v23);
  v26 = &v90 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x28223BE20](v24, v27);
  v94 = &v90 - v29;
  v31 = MEMORY[0x28223BE20](v28, v30);
  v93 = &v90 - v32;
  v34 = MEMORY[0x28223BE20](v31, v33);
  v120 = &v90 - v35;
  v37 = MEMORY[0x28223BE20](v34, v36);
  v39 = &v90 - v38;
  v41 = MEMORY[0x28223BE20](v37, v40);
  v43 = &v90 - v42;
  MEMORY[0x28223BE20](v41, v44);
  v46 = &v90 - v45;
  os_unfair_lock_assert_owner(*(*(v1 + 16) + 16));
  swift_beginAccess();
  v99 = v1;
  v47 = *(v1 + 120);
  v48 = v43;

  sub_22D01423C();
  v50 = *(v22 + 16);
  v49 = v22 + 16;
  v90 = v46;
  v92 = v50;
  v50(v43, v46, v21);
  v51 = v47 + 64;
  v52 = 1 << *(v47 + 32);
  v53 = -1;
  if (v52 < 64)
  {
    v53 = ~(-1 << v52);
  }

  v54 = v53 & *(v47 + 64);
  v115 = (v52 + 63) >> 6;
  v105 = (v122 + 2);
  v104 = v122 + 1;
  v103 = (v123 + 8);
  v102 = (v49 + 32);
  v123 = v49 + 16;
  v96 = v49;
  v122 = (v49 - 8);
  v114 = v47;

  v56 = 0;
  v106 = v21;
  v119 = v48;
  v112 = v51;
  v95 = v26;
  v113 = v39;
  while (v54)
  {
LABEL_12:
    v61 = __clz(__rbit64(v54)) | (v56 << 6);
    v62 = *(v114 + 56);
    v63 = (*(v114 + 48) + 16 * v61);
    v65 = *v63;
    v64 = v63[1];
    v66 = type metadata accessor for Activity(0);
    v67 = v121;
    sub_22CF0CCBC(v62 + *(*(v66 - 8) + 72) * v61, v20 + *(v121 + 48), type metadata accessor for Activity);
    *v20 = v65;
    v20[1] = v64;
    v68 = v107;
    sub_22CEEB6DC(v20, v107, &unk_27D9F3840, &unk_22D01A2B0);

    v69 = v68 + *(v67 + 48);
    v117 = v66;
    v70 = *v105;
    v71 = v69 + *(v66 + 56);
    v72 = v108;
    v73 = v118;
    (*v105)(v108, v71, v118);
    sub_22CF0F640(v69, type metadata accessor for Activity);
    v74 = v109;
    sub_22D01467C();
    v116 = *v104;
    v116(v72, v73);
    v75 = v111;
    sub_22D01460C();
    (*v103)(v74, v110);
    v21 = v106;
    if ((*v102)(v75, 1, v106) == 1)
    {
      sub_22CEEC3D8(v20, &unk_27D9F3840, &unk_22D01A2B0);
      sub_22CEEC3D8(v75, &qword_27D9F2648, &unk_22D018BC0);
      v57 = *v123;
      v58 = v113;
      v48 = v119;
      (*v123)(v113, v119, v21);
      v51 = v112;
    }

    else
    {
      v76 = *v123;
      v100 = v123 & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
      v101 = v76;
      v76(v120, v75, v21);
      v77 = v97;
      sub_22CEEB6DC(v20, v97, &unk_27D9F3840, &unk_22D01A2B0);

      v78 = v77 + *(v121 + 48);
      v79 = v118;
      v80 = v98;
      v70(v98, v78 + *(v117 + 56), v118);
      sub_22CF0F640(v78, type metadata accessor for Activity);
      v81 = v94;
      sub_22D01469C();
      v116(v80, v79);
      v82 = v93;
      sub_22D01425C();
      v83 = *v122;
      (*v122)(v81, v21);
      sub_22CF1A1AC(&qword_281443A30, MEMORY[0x277CC9578], MEMORY[0x277CC9590]);
      v84 = v120;
      if (sub_22D01664C())
      {
        v85 = v84;
      }

      else
      {
        v85 = v82;
      }

      v86 = v95;
      v92(v95, v85, v21);
      v87 = sub_22D01663C();
      v83(v82, v21);
      v83(v120, v21);
      sub_22CEEC3D8(v20, &unk_27D9F3840, &unk_22D01A2B0);
      if (v87)
      {
        v83(v86, v21);
        v58 = v113;
        v88 = v113;
        v48 = v119;
        v89 = v119;
      }

      else
      {
        v48 = v119;
        v83(v119, v21);
        v58 = v113;
        v88 = v113;
        v89 = v86;
      }

      v57 = v101;
      v101(v88, v89, v21);
      v51 = v112;
    }

    v54 &= v54 - 1;
    result = (v57)(v48, v58, v21);
  }

  v59 = v123;
  while (1)
  {
    v60 = v56 + 1;
    if (__OFADD__(v56, 1))
    {
      break;
    }

    if (v60 >= v115)
    {
      (*v122)(v90, v21);

      (*v59)(v91, v48, v21);
    }

    v54 = *(v51 + 8 * v60);
    ++v56;
    if (v54)
    {
      v56 = v60;
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

void sub_22CF12C90(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F3810, &unk_22D018FA0);
  MEMORY[0x28223BE20](v6 - 8, v7);
  v9 = &v22 - v8;
  v10 = *(a1 + *(type metadata accessor for ActivityManagerEvent(0) + 20));
  if (v10 == 4)
  {
    v14 = *(*(v3 + 16) + 16);
    os_unfair_lock_lock(v14);
    v20 = *a1;
    v19 = a1[1];
    v21 = type metadata accessor for Activity(0);
    (*(*(v21 - 8) + 56))(v9, 1, 1, v21);
    swift_beginAccess();

    v16 = v9;
    v17 = v20;
    v18 = v19;
  }

  else
  {
    if (v10 != 1)
    {
      return;
    }

    ObjectType = swift_getObjectType();
    v12 = *a1;
    v13 = a1[1];
    (*(a3 + 32))(v3, &off_28402A640, *a1, v13, ObjectType, a3);
    v14 = *(*(v3 + 16) + 16);
    os_unfair_lock_lock(v14);
    sub_22CF1C22C(a1, v9, type metadata accessor for Activity);
    v15 = type metadata accessor for Activity(0);
    (*(*(v15 - 8) + 56))(v9, 0, 1, v15);
    swift_beginAccess();

    v16 = v9;
    v17 = v12;
    v18 = v13;
  }

  sub_22CF0BC5C(v16, v17, v18);
  swift_endAccess();
  os_unfair_lock_unlock(v14);
}

uint64_t sub_22CF12EBC(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v30 = a2;
  v31 = a3;
  v6 = type metadata accessor for ActivityManagerEvent(0);
  MEMORY[0x28223BE20](v6, v7);
  v9 = (&v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v32 = sub_22D01637C();
  v10 = *(v32 - 8);
  MEMORY[0x28223BE20](v32, v11);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_22D01430C();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14, v16);
  v18 = &v30 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Activity(0);
  sub_22D0142DC();
  sub_22CEF87B4(&qword_281443A30, MEMORY[0x277CC9578], MEMORY[0x277CC9590]);
  v19 = sub_22D01663C();
  (*(v15 + 8))(v18, v14);
  if (v19)
  {
    v20 = *(a1 + *(v6 + 20));
    if (v20 == 3)
    {
      sub_22CF30760(a1);
      return sub_22CF13264(a1);
    }

    else if (v20 == 1)
    {
      ObjectType = swift_getObjectType();
      (*(v31 + 32))(v4, &off_284029DC8, *a1, a1[1], ObjectType);
      return sub_22CF13264(a1);
    }

    else
    {
      return sub_22CF30760(a1);
    }
  }

  else
  {
    sub_22D01635C();
    sub_22CF1C1C8(a1, v9);
    v23 = sub_22D01636C();
    v24 = sub_22D01690C();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v33 = v26;
      *v25 = 136446210;
      v27 = *v9;
      v28 = v9[1];

      sub_22CF0D34C(v9);
      v29 = sub_22CEEE31C(v27, v28, &v33);

      *(v25 + 4) = v29;
      _os_log_impl(&dword_22CEE1000, v23, v24, "AlertPresenter is ignoring pending activity: %{public}s", v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v26);
      MEMORY[0x2318C6860](v26, -1, -1);
      MEMORY[0x2318C6860](v25, -1, -1);
    }

    else
    {

      sub_22CF0D34C(v9);
    }

    return (*(v10 + 8))(v13, v32);
  }
}

uint64_t sub_22CF13264(void *a1)
{
  v2 = sub_22D01504C();
  MEMORY[0x28223BE20](v2 - 8, v3);
  v218 = &v197 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v214 = sub_22D014F2C();
  v212 = *(v214 - 8);
  MEMORY[0x28223BE20](v214, v5);
  v211 = &v197 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v213 = sub_22D0152EC();
  v223 = *(v213 - 8);
  v8 = MEMORY[0x28223BE20](v213, v7);
  v201 = &v197 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8, v10);
  v220 = &v197 - v11;
  v12 = sub_22D01506C();
  v221 = *(v12 - 8);
  v222 = v12;
  v14 = MEMORY[0x28223BE20](v12, v13);
  v210 = &v197 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14, v16);
  v219 = &v197 - v17;
  v18 = sub_22D01417C();
  MEMORY[0x28223BE20](v18 - 8, v19);
  v209 = &v197 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_22D01436C();
  v229 = *(v21 - 8);
  v230 = v21;
  v23 = MEMORY[0x28223BE20](v21, v22);
  v217 = &v197 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23, v25);
  v228 = &v197 - v26;
  v27 = type metadata accessor for ActivityManagerEvent(0);
  v29 = MEMORY[0x28223BE20](v27, v28);
  v205 = &v197 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = MEMORY[0x28223BE20](v29, v31);
  v204 = &v197 - v33;
  v35 = MEMORY[0x28223BE20](v32, v34);
  v37 = &v197 - v36;
  v39 = MEMORY[0x28223BE20](v35, v38);
  v41 = (&v197 - v40);
  v43 = MEMORY[0x28223BE20](v39, v42);
  v227 = (&v197 - v44);
  v46 = MEMORY[0x28223BE20](v43, v45);
  v226 = (&v197 - v47);
  v49 = MEMORY[0x28223BE20](v46, v48);
  v225 = (&v197 - v50);
  v52 = MEMORY[0x28223BE20](v49, v51);
  v224 = &v197 - v53;
  v55 = MEMORY[0x28223BE20](v52, v54);
  v203 = &v197 - v56;
  v58 = MEMORY[0x28223BE20](v55, v57);
  v202 = (&v197 - v59);
  v61 = MEMORY[0x28223BE20](v58, v60);
  v215 = (&v197 - v62);
  MEMORY[0x28223BE20](v61, v63);
  v207 = (&v197 - v64);
  v65 = sub_22D01637C();
  v232 = *(v65 - 8);
  v233 = v65;
  v67 = MEMORY[0x28223BE20](v65, v66);
  v206 = &v197 - ((v68 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = MEMORY[0x28223BE20](v67, v69);
  v72 = &v197 - v71;
  MEMORY[0x28223BE20](v70, v73);
  v216 = &v197 - v74;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2308, &unk_22D018950);
  MEMORY[0x28223BE20](v75 - 8, v76);
  v78 = &v197 - v77;
  v79 = sub_22D0150CC();
  v80 = *(v79 - 8);
  MEMORY[0x28223BE20](v79, v81);
  v83 = &v197 - ((v82 + 15) & 0xFFFFFFFFFFFFFFF0);
  v231 = type metadata accessor for Activity(0);
  v208 = *(v231 + 56);
  sub_22D01462C();
  if ((*(v80 + 48))(v78, 1, v79) == 1)
  {
    sub_22CEEC3D8(v78, &qword_27D9F2308, &unk_22D018950);
    sub_22D01635C();
    sub_22CF1C1C8(a1, v41);
    sub_22CF1C1C8(a1, v37);
    v84 = sub_22D01636C();
    v85 = sub_22D01690C();
    if (os_log_type_enabled(v84, v85))
    {
      v86 = swift_slowAlloc();
      v87 = swift_slowAlloc();
      v234 = v87;
      *v86 = 136446466;
      v88 = *v41;
      v89 = v41[1];

      sub_22CF0D34C(v41);
      v90 = sub_22CEEE31C(v88, v89, &v234);

      *(v86 + 4) = v90;
      *(v86 + 12) = 2082;
      v91 = v228;
      sub_22D01466C();
      sub_22CEF87B4(&qword_28143F708, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v92 = v230;
      v93 = sub_22D016DEC();
      v95 = v94;
      (*(v229 + 8))(v91, v92);
      sub_22CF0D34C(v37);
      v96 = sub_22CEEE31C(v93, v95, &v234);

      *(v86 + 14) = v96;
      _os_log_impl(&dword_22CEE1000, v84, v85, "AlertPresenter is ignoring non-alerting update: %{public}s.%{public}s", v86, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x2318C6860](v87, -1, -1);
      MEMORY[0x2318C6860](v86, -1, -1);
    }

    else
    {

      sub_22CF0D34C(v37);
      sub_22CF0D34C(v41);
    }

    return (*(v232 + 8))(v72, v233);
  }

  (*(v80 + 32))(v83, v78, v79);
  v97 = *(a1 + v27[6]);
  swift_getObjectType();
  v98 = v80;
  if (swift_conformsToProtocol2() && v97)
  {
    if (qword_28143FB58 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v233, qword_281444498);
    v99 = v226;
    sub_22CF1C1C8(a1, v226);
    v100 = a1;
    v101 = v227;
    sub_22CF1C1C8(v100, v227);
    v102 = sub_22D01636C();
    v103 = sub_22D01690C();
    if (os_log_type_enabled(v102, v103))
    {
      v104 = swift_slowAlloc();
      v105 = swift_slowAlloc();
      v199 = v79;
      v200 = v83;
      v106 = v105;
      v234 = v105;
      *v104 = 136446466;
      v107 = *v99;
      v108 = v99[1];

      sub_22CF0D34C(v99);
      v109 = sub_22CEEE31C(v107, v108, &v234);

      *(v104 + 4) = v109;
      *(v104 + 12) = 2082;
      v110 = v228;
      sub_22D01466C();
      sub_22CEF87B4(&qword_28143F708, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v111 = v101;
      v112 = v230;
      v113 = sub_22D016DEC();
      v115 = v114;
      (*(v229 + 8))(v110, v112);
      sub_22CF0D34C(v111);
      v116 = sub_22CEEE31C(v113, v115, &v234);

      *(v104 + 14) = v116;
      _os_log_impl(&dword_22CEE1000, v102, v103, "Alert coordinator is not interested in event from persistent input: %{public}s.%{public}s", v104, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x2318C6860](v106, -1, -1);
      MEMORY[0x2318C6860](v104, -1, -1);

      return (*(v80 + 8))(v200, v199);
    }

    sub_22CF0D34C(v101);
    v139 = v99;
    goto LABEL_26;
  }

  v118 = (a1 + v27[7]);
  if (v118[1])
  {
    if (qword_28143FB58 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v233, qword_281444498);
    v119 = v224;
    sub_22CF1C1C8(a1, v224);
    v120 = v225;
    sub_22CF1C1C8(a1, v225);
    v121 = sub_22D01636C();
    v122 = sub_22D01690C();
    if (os_log_type_enabled(v121, v122))
    {
      v123 = v119;
      v124 = swift_slowAlloc();
      v125 = swift_slowAlloc();
      v234 = v125;
      *v124 = 136446466;
      v199 = v79;
      v200 = v83;
      v126 = *v123;
      v127 = v123[1];

      sub_22CF0D34C(v123);
      v128 = sub_22CEEE31C(v126, v127, &v234);

      *(v124 + 4) = v128;
      *(v124 + 12) = 2082;
      v129 = v120;
      v130 = v228;
      sub_22D01466C();
      sub_22CEF87B4(&qword_28143F708, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v131 = v230;
      v132 = sub_22D016DEC();
      v134 = v133;
      (*(v229 + 8))(v130, v131);
      sub_22CF0D34C(v129);
      v135 = sub_22CEEE31C(v132, v134, &v234);

      *(v124 + 14) = v135;
      _os_log_impl(&dword_22CEE1000, v121, v122, "Alert coordinator is not interested in remote event: %{public}s.%{public}s", v124, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x2318C6860](v125, -1, -1);
      MEMORY[0x2318C6860](v124, -1, -1);

      v136 = *(v98 + 8);
      v137 = v200;
LABEL_15:
      v138 = v199;
      return v136(v137, v138);
    }

    sub_22CF0D34C(v120);
    v139 = v119;
    goto LABEL_26;
  }

  v140 = *v118;
  if (*(a1 + v27[5]) == 3 && sub_22CF0B5E0() == 2)
  {
    if (qword_28143FB58 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v233, qword_281444498);
    v141 = v202;
    sub_22CF1C1C8(a1, v202);
    v142 = v203;
    sub_22CF1C1C8(a1, v203);
    v143 = sub_22D01636C();
    v144 = sub_22D01690C();
    if (os_log_type_enabled(v143, v144))
    {
      v145 = swift_slowAlloc();
      v233 = swift_slowAlloc();
      v234 = v233;
      *v145 = 136446466;
      v146 = *v141;
      v147 = v141[1];

      sub_22CF0D34C(v141);
      v148 = sub_22CEEE31C(v146, v147, &v234);

      *(v145 + 4) = v148;
      *(v145 + 12) = 2082;
      v199 = v79;
      v149 = v228;
      sub_22D01466C();
      sub_22CEF87B4(&qword_28143F708, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v150 = v142;
      v151 = v230;
      v152 = sub_22D016DEC();
      v154 = v153;
      (*(v229 + 8))(v149, v151);
      sub_22CF0D34C(v150);
      v155 = sub_22CEEE31C(v152, v154, &v234);

      *(v145 + 14) = v155;
      _os_log_impl(&dword_22CEE1000, v143, v144, "Alert coordinator is not interested in stale updates: %{public}s.%{public}s", v145, 0x16u);
      v156 = v233;
      swift_arrayDestroy();
      MEMORY[0x2318C6860](v156, -1, -1);
      MEMORY[0x2318C6860](v145, -1, -1);

      v136 = *(v98 + 8);
      v137 = v83;
      goto LABEL_15;
    }

    sub_22CF0D34C(v142);
    v139 = v141;
LABEL_26:
    sub_22CF0D34C(v139);
    v136 = *(v98 + 8);
    v137 = v83;
    v138 = v79;
    return v136(v137, v138);
  }

  v226 = v140;
  v157 = v216;
  sub_22D01635C();
  v158 = v207;
  sub_22CF1C1C8(a1, v207);
  v227 = a1;
  v159 = v215;
  sub_22CF1C1C8(a1, v215);
  v160 = sub_22D01636C();
  v161 = sub_22D01690C();
  if (os_log_type_enabled(v160, v161))
  {
    v162 = swift_slowAlloc();
    v225 = swift_slowAlloc();
    v234 = v225;
    *v162 = 136446466;
    v163 = *v158;
    v164 = v158[1];

    sub_22CF0D34C(v158);
    v165 = sub_22CEEE31C(v163, v164, &v234);

    *(v162 + 4) = v165;
    *(v162 + 12) = 2082;
    v166 = v79;
    v167 = v228;
    sub_22D01466C();
    sub_22CEF87B4(&qword_28143F708, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v168 = v230;
    v169 = sub_22D016DEC();
    v171 = v170;
    v172 = v167;
    v79 = v166;
    (*(v229 + 8))(v172, v168);
    sub_22CF0D34C(v215);
    v173 = sub_22CEEE31C(v169, v171, &v234);

    *(v162 + 14) = v173;
    _os_log_impl(&dword_22CEE1000, v160, v161, "AlertPresenter is presenting alert: %{public}s.%{public}s", v162, 0x16u);
    v174 = v225;
    swift_arrayDestroy();
    MEMORY[0x2318C6860](v174, -1, -1);
    MEMORY[0x2318C6860](v162, -1, -1);

    v175 = *(v232 + 8);
    v176 = v216;
  }

  else
  {

    sub_22CF0D34C(v159);
    sub_22CF0D34C(v158);
    v175 = *(v232 + 8);
    v176 = v157;
  }

  v215 = v175;
  (v175)(v176, v233);
  v177 = v221;
  v178 = v210;
  sub_22D0150BC();
  v224 = sub_22D01668C();
  v216 = v179;
  sub_22D01508C();
  sub_22D01668C();
  v180 = v219;
  sub_22D01507C();
  LODWORD(v210) = sub_22D01505C();
  v181 = v220;
  sub_22D0152CC();
  v182 = v222;
  (*(v177 + 16))(v178, v180, v222);
  v183 = (*(v177 + 88))(v178, v182);
  v184 = v183 == *MEMORY[0x277CB9840];
  v198 = v98;
  v199 = v79;
  v200 = v83;
  if (v184)
  {
    v185 = v223;
    v186 = v213;
    v225 = *(v223 + 8);
    (v225)(v181, v213);
    (*(v177 + 96))(v178, v182);
    *v181 = *v178;
    v187 = MEMORY[0x277D4D438];
  }

  else if (v183 == *MEMORY[0x277CB9848])
  {
    v185 = v223;
    v186 = v213;
    v225 = *(v223 + 8);
    (v225)(v181, v213);
    v187 = MEMORY[0x277D4D440];
  }

  else
  {
    if (v183 != *MEMORY[0x277CB9838])
    {
      v194 = v201;
      sub_22D0152CC();
      v195 = v223;
      v196 = v213;
      v225 = *(v223 + 8);
      (v225)(v181, v213);
      (*(v195 + 32))(v181, v194, v196);
      (*(v177 + 8))(v178, v182);
      goto LABEL_39;
    }

    v185 = v223;
    v186 = v213;
    v225 = *(v223 + 8);
    (v225)(v181, v213);
    v187 = MEMORY[0x277D4D430];
  }

  (*(v185 + 104))(v181, *v187, v186);
LABEL_39:
  sub_22D01466C();
  sub_22D014F9C();
  sub_22D01509C();

  sub_22D014DDC();
  if (!v188)
  {
    sub_22D014F9C();
  }

  v189 = v211;
  sub_22D014F1C();
  sub_22D0140BC();
  swift_allocObject();
  sub_22D0140AC();
  sub_22CEF87B4(&qword_28143F648, MEMORY[0x277CB97B0], MEMORY[0x277CB97B8]);
  v190 = sub_22D01409C();
  v192 = v191;
  swift_getObjectType();
  sub_22CF37A40();
  v193 = v220;
  sub_22D0152AC();
  sub_22CEE7524(v190, v192);

  (*(v212 + 8))(v189, v214);
  (v225)(v193, v213);
  (*(v221 + 8))(v219, v222);
  return (*(v198 + 8))(v200, v199);
}

void sub_22CF14C8C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F3810, &unk_22D018FA0);
  MEMORY[0x28223BE20](v7 - 8, v8);
  v10 = &v49 - v9;
  v11 = type metadata accessor for ActivityManagerEvent(0);
  v13 = MEMORY[0x28223BE20](v11 - 8, v12);
  v15 = (&v49 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = MEMORY[0x28223BE20](v13, v16);
  v19 = (&v49 - v18);
  v20 = *(a1 + *(v17 + 28));
  if (v20 == 4)
  {
    if (qword_28143FB38 != -1)
    {
      swift_once();
    }

    v34 = sub_22D01637C();
    __swift_project_value_buffer(v34, qword_281444450);
    sub_22CF0CC54(a1, v15, type metadata accessor for ActivityManagerEvent);
    v35 = sub_22D01636C();
    v36 = sub_22D01690C();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v52[0] = v38;
      *v37 = 136446210;
      v39 = *v15;
      v40 = v15[1];

      sub_22CF0F640(v15, type metadata accessor for ActivityManagerEvent);
      v41 = sub_22CEEE31C(v39, v40, v52);

      *(v37 + 4) = v41;
      _os_log_impl(&dword_22CEE1000, v35, v36, "Momentary activity ended %{public}s", v37, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v38);
      MEMORY[0x2318C6860](v38, -1, -1);
      MEMORY[0x2318C6860](v37, -1, -1);
    }

    else
    {

      sub_22CF0F640(v15, type metadata accessor for ActivityManagerEvent);
    }

    v42 = *(*(v4 + 16) + 16);
    os_unfair_lock_lock(v42);
    v44 = *a1;
    v43 = a1[1];
    v45 = type metadata accessor for Activity(0);
    (*(*(v45 - 8) + 56))(v10, 1, 1, v45);
    swift_beginAccess();

    v46 = v10;
    v47 = v44;
    v48 = v43;
    goto LABEL_16;
  }

  if (v20 == 1)
  {
    ObjectType = swift_getObjectType();
    v22 = *a1;
    v23 = a1[1];
    (*(a3 + 32))(v3, &off_28402C630, *a1, v23, ObjectType, a3);
    v24 = type metadata accessor for Activity(0);
    if (sub_22D014D1C())
    {
      if (qword_28143FB38 != -1)
      {
        swift_once();
      }

      v25 = sub_22D01637C();
      __swift_project_value_buffer(v25, qword_281444450);
      sub_22CF0CC54(a1, v19, type metadata accessor for ActivityManagerEvent);
      v26 = sub_22D01636C();
      v27 = sub_22D01690C();
      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        v29 = swift_slowAlloc();
        v51 = v22;
        v52[0] = v29;
        v30 = v29;
        *v28 = 136446210;
        v49 = *v19;
        v50 = v23;
        v31 = v19[1];

        sub_22CF0F640(v19, type metadata accessor for ActivityManagerEvent);
        v32 = sub_22CEEE31C(v49, v31, v52);
        v23 = v50;

        *(v28 + 4) = v32;
        _os_log_impl(&dword_22CEE1000, v26, v27, "Tracking momentary activity %{public}s", v28, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v30);
        v33 = v30;
        v22 = v51;
        MEMORY[0x2318C6860](v33, -1, -1);
        MEMORY[0x2318C6860](v28, -1, -1);
      }

      else
      {

        sub_22CF0F640(v19, type metadata accessor for ActivityManagerEvent);
      }

      v42 = *(*(v4 + 16) + 16);
      os_unfair_lock_lock(v42);
      sub_22CF0CC54(a1, v10, type metadata accessor for Activity);
      (*(*(v24 - 8) + 56))(v10, 0, 1, v24);
      swift_beginAccess();

      v46 = v10;
      v47 = v22;
      v48 = v23;
LABEL_16:
      sub_22CF0BC5C(v46, v47, v48);
      swift_endAccess();
      os_unfair_lock_unlock(v42);
    }
  }
}

uint64_t sub_22CF15224@<X0>(uint64_t a1@<X8>)
{
  v53 = a1;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9F3840, &unk_22D01A2B0);
  v3 = MEMORY[0x28223BE20](v62, v2);
  v61 = &v52 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3, v5);
  v60 = &v52 - v6;
  v7 = sub_22D01430C();
  v8 = *(v7 - 8);
  v10 = MEMORY[0x28223BE20](v7, v9);
  v58 = &v52 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10, v12);
  v57 = &v52 - v14;
  v16 = MEMORY[0x28223BE20](v13, v15);
  v18 = &v52 - v17;
  MEMORY[0x28223BE20](v16, v19);
  v21 = &v52 - v20;
  os_unfair_lock_assert_owner(*(*(v1 + 16) + 16));
  swift_beginAccess();
  v22 = *(v1 + 112);

  sub_22D01423C();
  v24 = *(v8 + 16);
  v23 = v8 + 16;
  v66 = v18;
  v67 = v7;
  v52 = v21;
  v56 = v24;
  v24(v18, v21, v7);
  v25 = *(v22 + 64);
  v55 = v22 + 64;
  v26 = 1 << *(v22 + 32);
  v27 = -1;
  if (v26 < 64)
  {
    v27 = ~(-1 << v26);
  }

  v28 = v27 & v25;
  v54 = (v26 + 63) >> 6;
  v59 = v23;
  v63 = (v23 - 8);
  v64 = (v23 + 16);
  v65 = v22;

  v30 = 0;
  for (i = v60; v28; result = (v49)(v45, v50, v44))
  {
    v32 = v30;
LABEL_9:
    v33 = __clz(__rbit64(v28));
    v28 &= v28 - 1;
    v34 = v33 | (v32 << 6);
    v35 = *(v65 + 56);
    v36 = (*(v65 + 48) + 16 * v34);
    v38 = *v36;
    v37 = v36[1];
    v39 = (type metadata accessor for Activity(0) - 8);
    v40 = v62;
    sub_22CF0CCBC(v35 + *(*v39 + 72) * v34, i + *(v62 + 48), type metadata accessor for Activity);
    *i = v38;
    i[1] = v37;
    v41 = v61;
    sub_22CEEB6DC(i, v61, &unk_27D9F3840, &unk_22D01A2B0);

    v42 = v41 + *(v40 + 48);
    v43 = v58;
    v44 = v67;
    v56(v58, v42 + v39[12], v67);
    sub_22CF0F640(v42, type metadata accessor for Activity);
    sub_22CF1A1AC(&qword_281443A30, MEMORY[0x277CC9578], MEMORY[0x277CC9590]);
    v45 = v66;
    v46 = sub_22D01663C();
    sub_22CEEC3D8(i, &unk_27D9F3840, &unk_22D01A2B0);
    if (v46)
    {
      v47 = v45;
    }

    else
    {
      v47 = v43;
    }

    if (v46)
    {
      v48 = v43;
    }

    else
    {
      v48 = v45;
    }

    (*v63)(v47, v44);
    v49 = *v64;
    v50 = v57;
    (*v64)(v57, v48, v44);
  }

  while (1)
  {
    v32 = v30 + 1;
    if (__OFADD__(v30, 1))
    {
      break;
    }

    if (v32 >= v54)
    {
      v51 = v67;
      (*v63)(v52, v67);

      (*v64)(v53, v66, v51);
    }

    v28 = *(v55 + 8 * v32);
    ++v30;
    if (v28)
    {
      v30 = v32;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t objectdestroy_38Tm()
{
  v1 = *(type metadata accessor for ActivityManagerEvent(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v18 = *(v1 + 64);

  v4 = type metadata accessor for Activity(0);
  v5 = v4[5];
  v6 = sub_22D014E2C();
  (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);
  v7 = v4[6];
  v8 = sub_22D01502C();
  (*(*(v8 - 8) + 8))(v0 + v3 + v7, v8);

  v9 = v4[10];
  v10 = sub_22D01430C();
  v11 = *(*(v10 - 8) + 8);
  v11(v0 + v3 + v9, v10);
  v11(v0 + v3 + v4[11], v10);

  v12 = v4[14];
  v13 = sub_22D0146BC();
  (*(*(v13 - 8) + 8))(v0 + v3 + v12, v13);
  v14 = v4[15];
  v15 = sub_22D01486C();
  v16 = *(v15 - 8);
  if (!(*(v16 + 48))(v0 + v3 + v14, 1, v15))
  {
    (*(v16 + 8))(v0 + v3 + v14, v15);
  }

  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, v3 + v18, v2 | 7);
}

uint64_t sub_22CF15990(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = type metadata accessor for ActivityManagerEvent(0);
  v10 = *(a1 + *(result + 20));
  if (v10 == 1)
  {
    ObjectType = swift_getObjectType();
    (*(a3 + 32))(v5, a5, *a1, a1[1], ObjectType, a3);

    return sub_22CF0CD9C(a1);
  }

  else if (v10 == 4)
  {
    v11 = *a1;
    v12 = a1[1];

    return sub_22CF38300(v11, v12, 2);
  }

  return result;
}

void sub_22CF15A78(uint64_t *a1, char *a2, uint64_t a3)
{
  v142 = a3;
  v5 = sub_22D01630C();
  v143 = *(v5 - 8);
  v144 = v5;
  v7 = MEMORY[0x28223BE20](v5, v6);
  v141 = &v139 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7, v9);
  v12 = &v139 - v11;
  MEMORY[0x28223BE20](v10, v13);
  v15 = &v139 - v14;
  v16 = type metadata accessor for ActivityManagerEvent(0);
  v18 = MEMORY[0x28223BE20](v16 - 8, v17);
  v20 = (&v139 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v22 = MEMORY[0x28223BE20](v18, v21);
  v24 = MEMORY[0x28223BE20](v22, v23);
  v26 = (&v139 - v25);
  v28 = MEMORY[0x28223BE20](v24, v27);
  v30 = (&v139 - v29);
  v32 = MEMORY[0x28223BE20](v28, v31);
  v34 = MEMORY[0x28223BE20](v32, v33);
  v36 = (&v139 - v35);
  v38 = MEMORY[0x28223BE20](v34, v37);
  v40 = (&v139 - v39);
  v42 = MEMORY[0x28223BE20](v38, v41);
  v46 = (&v139 - v45);
  v47 = *(v42 + 28);
  v145 = a1;
  v48 = *(a1 + v47);
  if (v48 <= 1)
  {
    v139 = v15;
    v140 = v12;
    v141 = a2;
    if (v48)
    {
      v85 = v44;
      v86 = v145;
      if (qword_28143FB40 != -1)
      {
        swift_once();
      }

      v87 = sub_22D01637C();
      __swift_project_value_buffer(v87, qword_281444468);
      sub_22CF1C1C8(v86, v36);
      v88 = sub_22D01636C();
      v89 = sub_22D01690C();
      if (os_log_type_enabled(v88, v89))
      {
        v90 = swift_slowAlloc();
        v91 = swift_slowAlloc();
        v147 = v91;
        *v90 = 136446210;
        v92 = *v36;
        v93 = v36[1];

        sub_22CF0D34C(v36);
        v94 = sub_22CEEE31C(v92, v93, &v147);

        *(v90 + 4) = v94;
        _os_log_impl(&dword_22CEE1000, v88, v89, "Activity started: %{public}s", v90, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v91);
        MEMORY[0x2318C6860](v91, -1, -1);
        MEMORY[0x2318C6860](v90, -1, -1);
      }

      else
      {

        sub_22CF0D34C(v36);
      }

      v125 = v140;
      sub_22D01632C();
      sub_22D0162EC();
      sub_22CF1C1C8(v86, v85);
      v126 = sub_22D01632C();
      v127 = sub_22D016A1C();
      if (sub_22D016A7C())
      {
        v128 = swift_slowAlloc();
        v129 = swift_slowAlloc();
        v147 = v129;
        *v128 = 136446210;
        v130 = *v85;
        v131 = v85[1];

        sub_22CF0D34C(v85);
        v132 = sub_22CEEE31C(v130, v131, &v147);

        *(v128 + 4) = v132;
        v133 = sub_22D0162FC();
        _os_signpost_emit_with_name_impl(&dword_22CEE1000, v126, v127, v133, "activityStarted", "Activity started: %{public}s", v128, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v129);
        MEMORY[0x2318C6860](v129, -1, -1);
        MEMORY[0x2318C6860](v128, -1, -1);
      }

      else
      {

        sub_22CF0D34C(v85);
      }

      (*(v143 + 8))(v125, v144);
      v137 = v142;
      ObjectType = swift_getObjectType();
      (*(v137 + 32))(v146, &off_28402E610, *v86, v86[1], ObjectType, v137);
      v136 = v86;
    }

    else
    {
      v58 = v145;
      if (qword_28143FB40 != -1)
      {
        swift_once();
      }

      v59 = sub_22D01637C();
      __swift_project_value_buffer(v59, qword_281444468);
      sub_22CF1C1C8(v58, v46);
      v60 = sub_22D01636C();
      v61 = sub_22D01690C();
      if (os_log_type_enabled(v60, v61))
      {
        v62 = swift_slowAlloc();
        v63 = swift_slowAlloc();
        v147 = v63;
        *v62 = 136446210;
        v64 = *v46;
        v65 = v46[1];

        sub_22CF0D34C(v46);
        v66 = sub_22CEEE31C(v64, v65, &v147);

        *(v62 + 4) = v66;
        _os_log_impl(&dword_22CEE1000, v60, v61, "Activity pended: %{public}s", v62, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v63);
        MEMORY[0x2318C6860](v63, -1, -1);
        MEMORY[0x2318C6860](v62, -1, -1);
      }

      else
      {

        sub_22CF0D34C(v46);
      }

      sub_22D01632C();
      v116 = v139;
      sub_22D0162EC();
      sub_22CF1C1C8(v58, v40);
      v117 = sub_22D01632C();
      v118 = sub_22D016A1C();
      if (sub_22D016A7C())
      {
        v119 = swift_slowAlloc();
        v120 = swift_slowAlloc();
        v147 = v120;
        *v119 = 136446210;
        v121 = *v40;
        v122 = v40[1];

        sub_22CF0D34C(v40);
        v123 = sub_22CEEE31C(v121, v122, &v147);

        *(v119 + 4) = v123;
        v124 = sub_22D0162FC();
        _os_signpost_emit_with_name_impl(&dword_22CEE1000, v117, v118, v124, "activityPended", "Activity pended: %{public}s", v119, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v120);
        MEMORY[0x2318C6860](v120, -1, -1);
        MEMORY[0x2318C6860](v119, -1, -1);
      }

      else
      {

        sub_22CF0D34C(v40);
      }

      (*(v143 + 8))(v116, v144);
      v134 = v142;
      v135 = swift_getObjectType();
      (*(v134 + 32))(v146, &off_28402E610, *v58, v58[1], v135, v134);
      v136 = v58;
    }

    sub_22CF10058(v136);
  }

  else
  {
    if (v48 == 2)
    {
      if (qword_28143FB40 != -1)
      {
        swift_once();
      }

      v67 = sub_22D01637C();
      __swift_project_value_buffer(v67, qword_281444468);
      v68 = v145;
      sub_22CF1C1C8(v145, v30);
      v69 = sub_22D01636C();
      v70 = sub_22D01690C();
      if (os_log_type_enabled(v69, v70))
      {
        v71 = swift_slowAlloc();
        v72 = swift_slowAlloc();
        v147 = v72;
        *v71 = 136446210;
        v73 = *v30;
        v74 = v30[1];

        sub_22CF0D34C(v30);
        v75 = sub_22CEEE31C(v73, v74, &v147);

        *(v71 + 4) = v75;
        _os_log_impl(&dword_22CEE1000, v69, v70, "Activity stopped: %{public}s", v71, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v72);
        MEMORY[0x2318C6860](v72, -1, -1);
        MEMORY[0x2318C6860](v71, -1, -1);
      }

      else
      {

        sub_22CF0D34C(v30);
      }

      v95 = *(v146 + 16);
      v147 = 0;
      v96 = *(*(v95 + OBJC_IVAR____TtC11SessionCore12OutputServer_lock) + 16);
      os_unfair_lock_lock(v96);
      sub_22CF2D9F0(v95, v68, &v147);
      os_unfair_lock_unlock(v96);
      v99 = v147;
      if (v147)
      {
        MEMORY[0x28223BE20](v97, v98);
        v100 = &v139 - 4;
        *(&v139 - 2) = v68;
        v101 = sub_22CFFF98C;
LABEL_31:
        sub_22CF1685C(v101, v100, v99);

        return;
      }

      __break(1u);
      goto LABEL_49;
    }

    if (v48 == 3)
    {
      if (qword_28143FB40 != -1)
      {
        swift_once();
      }

      v49 = sub_22D01637C();
      __swift_project_value_buffer(v49, qword_281444468);
      v50 = v145;
      sub_22CF1C1C8(v145, v20);
      v51 = sub_22D01636C();
      v52 = sub_22D01690C();
      if (os_log_type_enabled(v51, v52))
      {
        v53 = swift_slowAlloc();
        v54 = swift_slowAlloc();
        v147 = v54;
        *v53 = 136446210;
        v55 = *v20;
        v56 = v20[1];

        sub_22CF0D34C(v20);
        v57 = sub_22CEEE31C(v55, v56, &v147);

        *(v53 + 4) = v57;
        _os_log_impl(&dword_22CEE1000, v51, v52, "Activity updated: %{public}s", v53, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v54);
        MEMORY[0x2318C6860](v54, -1, -1);
        MEMORY[0x2318C6860](v53, -1, -1);
      }

      else
      {

        sub_22CF0D34C(v20);
      }

      v102 = *(v146 + 16);
      v147 = 0;
      v103 = *(*(v102 + OBJC_IVAR____TtC11SessionCore12OutputServer_lock) + 16);
      os_unfair_lock_lock(v103);
      sub_22CF2D9F0(v102, v50, &v147);
      os_unfair_lock_unlock(v103);
      v99 = v147;
      if (v147)
      {
        MEMORY[0x28223BE20](v104, v105);
        v100 = &v139 - 4;
        *(&v139 - 2) = v50;
        v101 = sub_22CF2E768;
        goto LABEL_31;
      }

LABEL_49:
      __break(1u);
      return;
    }

    v76 = v43;
    if (qword_28143FB40 != -1)
    {
      swift_once();
    }

    v77 = sub_22D01637C();
    __swift_project_value_buffer(v77, qword_281444468);
    sub_22CF1C1C8(v145, v26);
    v78 = sub_22D01636C();
    v79 = sub_22D01690C();
    if (os_log_type_enabled(v78, v79))
    {
      v80 = swift_slowAlloc();
      v81 = swift_slowAlloc();
      v147 = v81;
      *v80 = 136446210;
      v82 = *v26;
      v83 = v26[1];

      sub_22CF0D34C(v26);
      v84 = sub_22CEEE31C(v82, v83, &v147);

      *(v80 + 4) = v84;
      _os_log_impl(&dword_22CEE1000, v78, v79, "Activity discarded: %{public}s", v80, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v81);
      MEMORY[0x2318C6860](v81, -1, -1);
      MEMORY[0x2318C6860](v80, -1, -1);
    }

    else
    {

      sub_22CF0D34C(v26);
    }

    v106 = v141;
    v107 = v145;
    sub_22CF3BF74(v145);
    sub_22D01632C();
    sub_22D0162EC();
    sub_22CF1C1C8(v107, v76);
    v108 = sub_22D01632C();
    v109 = sub_22D016A1C();
    if (sub_22D016A7C())
    {
      v110 = swift_slowAlloc();
      v111 = swift_slowAlloc();
      v147 = v111;
      *v110 = 136446210;
      v112 = *v76;
      v113 = v76[1];

      sub_22CF0D34C(v76);
      v114 = sub_22CEEE31C(v112, v113, &v147);

      *(v110 + 4) = v114;
      v115 = sub_22D0162FC();
      _os_signpost_emit_with_name_impl(&dword_22CEE1000, v108, v109, v115, "activityDiscarded", "Activity discarded: %{public}s", v110, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v111);
      MEMORY[0x2318C6860](v111, -1, -1);
      MEMORY[0x2318C6860](v110, -1, -1);
    }

    else
    {

      sub_22CF0D34C(v76);
    }

    (*(v143 + 8))(v106, v144);
  }
}