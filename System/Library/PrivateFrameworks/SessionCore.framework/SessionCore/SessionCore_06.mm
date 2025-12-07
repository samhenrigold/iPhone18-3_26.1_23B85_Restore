uint64_t sub_22CF7B348(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(void))
{
  v11 = a5(0);
  v38 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11 - 8, v12);
  v15 = &v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v13, v16);
  v19 = &v34 - v18;
  v39 = a4;
  v22 = *(a4 + 64);
  v21 = a4 + 64;
  v20 = v22;
  v23 = -1 << *(v21 - 32);
  if (-v23 < 64)
  {
    v24 = ~(-1 << -v23);
  }

  else
  {
    v24 = -1;
  }

  v25 = v24 & v20;
  if (!a2)
  {
LABEL_18:
    v26 = 0;
    a3 = 0;
LABEL_25:
    *a1 = v39;
    a1[1] = v21;
    a1[2] = ~v23;
    a1[3] = v26;
    a1[4] = v25;
    return a3;
  }

  if (!a3)
  {
    v26 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v36 = a1;
    v37 = a3;
    result = 0;
    v26 = 0;
    v35 = v23;
    v27 = (63 - v23) >> 6;
    v28 = 1;
    while (v25)
    {
LABEL_14:
      v31 = __clz(__rbit64(v25));
      v25 &= v25 - 1;
      a1 = *(v38 + 72);
      sub_22CF07D60(*(v39 + 56) + a1 * (v31 | (v26 << 6)), v15, a6);
      sub_22CF7BE5C(v15, v19, a6);
      sub_22CF7BE5C(v19, a2, a6);
      if (v28 == v37)
      {
        a1 = v36;
        a3 = v37;
        goto LABEL_23;
      }

      a2 += a1;
      result = v28;
      if (__OFADD__(v28++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v29 = v26;
    while (1)
    {
      v30 = v29 + 1;
      if (__OFADD__(v29, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v30 >= v27)
      {
        break;
      }

      v25 = *(v21 + 8 * v30);
      ++v29;
      if (v25)
      {
        v26 = v30;
        goto LABEL_14;
      }
    }

    v25 = 0;
    if (v27 <= v26 + 1)
    {
      v33 = v26 + 1;
    }

    else
    {
      v33 = v27;
    }

    v26 = v33 - 1;
    a3 = result;
    a1 = v36;
LABEL_23:
    v23 = v35;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

uint64_t sub_22CF7B5B4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Assertion(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_22CF7B638(unint64_t *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v72 = a5;
  v74 = a4;
  v56 = a2;
  v57 = a1;
  v70 = sub_22D01555C();
  v6 = *(v70 - 8);
  MEMORY[0x28223BE20](v70, v7);
  v66 = &v55 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2600, &qword_22D018B60);
  v10 = MEMORY[0x28223BE20](v69, v9);
  v79 = &v55 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10, v12);
  v78 = &v55 - v13;
  v14 = type metadata accessor for Assertion(0);
  v67 = *(v14 - 8);
  v68 = v14;
  MEMORY[0x28223BE20](v14, v15);
  v77 = &v55 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = sub_22D01534C();
  result = MEMORY[0x28223BE20](v76, v17);
  v75 = &v55 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = 0;
  v71 = a3;
  v24 = a3[8];
  v23 = a3 + 8;
  v22 = v24;
  v25 = 1 << *(v23 - 32);
  v26 = -1;
  if (v25 < 64)
  {
    v26 = ~(-1 << v25);
  }

  v27 = v26 & v22;
  v58 = 0;
  v59 = (v25 + 63) >> 6;
  v63 = (v6 + 16);
  v64 = v19 + 16;
  v65 = v19;
  v61 = (v19 + 8);
  v62 = (v6 + 8);
  while (v27)
  {
    v31 = __clz(__rbit64(v27));
    v73 = (v27 - 1) & v27;
LABEL_12:
    v34 = v31 | (v21 << 6);
    v35 = v71;
    v36 = *(v65 + 16);
    v37 = v75;
    v38 = v76;
    v36(v75, v71[6] + *(v65 + 72) * v34, v76);
    v39 = v35[7];
    v40 = *(v67 + 72);
    v60 = v34;
    v41 = v39 + v40 * v34;
    v42 = v77;
    sub_22CF07D60(v41, v77, type metadata accessor for Assertion);
    v43 = v78;
    v36(v78, v37, v38);
    v44 = v69;
    sub_22CF07D60(v42, v43 + *(v69 + 48), type metadata accessor for Assertion);
    v45 = v79;
    sub_22CEEB6DC(v43, v79, &qword_27D9F2600, &qword_22D018B60);
    v46 = v45 + *(v44 + 48);
    v47 = v66;
    v48 = v70;
    (*v63)(v66, v46 + *(v68 + 40), v70);
    sub_22CF1CB18(v46, type metadata accessor for Assertion);
    v49 = sub_22D01554C();
    v51 = v50;
    (*v62)(v47, v48);
    if (v49 == v74 && v51 == v72)
    {

      sub_22CEEC3D8(v78, &qword_27D9F2600, &qword_22D018B60);
      v52 = *v61;
      v53 = v76;
      (*v61)(v79, v76);
      sub_22CF1CB18(v77, type metadata accessor for Assertion);
      result = (v52)(v75, v53);
      v27 = v73;
      goto LABEL_15;
    }

    v28 = sub_22D016DFC();

    sub_22CEEC3D8(v78, &qword_27D9F2600, &qword_22D018B60);
    v29 = *v61;
    v30 = v76;
    (*v61)(v79, v76);
    sub_22CF1CB18(v77, type metadata accessor for Assertion);
    result = (v29)(v75, v30);
    v27 = v73;
    if (v28)
    {
LABEL_15:
      *(v57 + ((v60 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v60;
      if (__OFADD__(v58++, 1))
      {
        __break(1u);
        return sub_22CF070F0(v57, v56, v58, v71);
      }
    }
  }

  v32 = v21;
  while (1)
  {
    v21 = v32 + 1;
    if (__OFADD__(v32, 1))
    {
      break;
    }

    if (v21 >= v59)
    {
      return sub_22CF070F0(v57, v56, v58, v71);
    }

    v33 = v23[v21];
    ++v32;
    if (v33)
    {
      v31 = __clz(__rbit64(v33));
      v73 = (v33 - 1) & v33;
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_22CF7BBF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v16[1] = *MEMORY[0x277D85DE8];
  v7 = *(a1 + 32);
  v8 = v7 & 0x3F;
  v9 = ((1 << v7) + 63) >> 6;
  v10 = 8 * v9;
  v11 = swift_bridgeObjectRetain_n();
  if (v8 > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v15 = swift_slowAlloc();

      v13 = sub_22CF7A6A0(v15, v9, a1, a2, a3);
      MEMORY[0x2318C6860](v15, -1, -1);
      swift_bridgeObjectRelease_n();
      return v13;
    }
  }

  MEMORY[0x28223BE20](v11, v12);
  bzero(v16 - ((v10 + 15) & 0x3FFFFFFFFFFFFFF0), v10);

  v13 = sub_22CF7B638((v16 - ((v10 + 15) & 0x3FFFFFFFFFFFFFF0)), v9, a1, a2, a3);

  if (v3)
  {
    swift_willThrow();
  }

  swift_bridgeObjectRelease_n();
  return v13;
}

uint64_t sub_22CF7BDC4(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x2318C59E0](v2, MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_22CEE54CC(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_22CF7BE5C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_22CF7BEC4(uint64_t a1)
{
  v2 = sub_22D01534C();
  v3 = *(v2 - 8);
  v5 = MEMORY[0x28223BE20](v2, v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5, v8);
  v10 = &v19 - v9;
  v11 = *(a1 + 16);
  v12 = sub_22CF7C4D4(qword_28143FBB0, MEMORY[0x277D4D450], MEMORY[0x277D4D458]);
  result = MEMORY[0x2318C59E0](v11, v2, v12);
  v20 = result;
  if (v11)
  {
    v16 = *(v3 + 16);
    v14 = v3 + 16;
    v15 = v16;
    v17 = a1 + ((*(v14 + 64) + 32) & ~*(v14 + 64));
    v18 = *(v14 + 56);
    do
    {
      v15(v7, v17, v2);
      sub_22CF760C4(v10, v7);
      (*(v14 - 8))(v10, v2);
      v17 += v18;
      --v11;
    }

    while (v11);
    return v20;
  }

  return result;
}

uint64_t sub_22CF7C060(uint64_t a1)
{
  v2 = sub_22D0159DC();
  v3 = *(v2 - 8);
  v5 = MEMORY[0x28223BE20](v2, v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5, v8);
  v10 = &v19 - v9;
  v11 = *(a1 + 16);
  v12 = sub_22CF7C4D4(&qword_28143DAE0, MEMORY[0x277D46790], MEMORY[0x277D467A8]);
  result = MEMORY[0x2318C59E0](v11, v2, v12);
  v20 = result;
  if (v11)
  {
    v16 = *(v3 + 16);
    v14 = v3 + 16;
    v15 = v16;
    v17 = a1 + ((*(v14 + 64) + 32) & ~*(v14 + 64));
    v18 = *(v14 + 56);
    do
    {
      v15(v7, v17, v2);
      sub_22CF763A4(v10, v7);
      (*(v14 - 8))(v10, v2);
      v17 += v18;
      --v11;
    }

    while (v11);
    return v20;
  }

  return result;
}

uint64_t sub_22CF7C1FC(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_22CF7C2A4();
  result = MEMORY[0x2318C59E0](v2, &type metadata for AppRestriction, v3);
  v12 = result;
  if (v2)
  {
    v5 = (a1 + 64);
    do
    {
      v7 = *(v5 - 4);
      v6 = *(v5 - 3);
      v8 = *(v5 - 2);
      v9 = *(v5 - 1);
      v10 = *v5;
      v5 += 40;
      v13[0] = v7;
      v13[1] = v6;
      v13[2] = v8;
      v13[3] = v9;
      v14 = v10;

      sub_22CF768E4(v11, v13);

      --v2;
    }

    while (v2);
    return v12;
  }

  return result;
}

unint64_t sub_22CF7C2A4()
{
  result = qword_28143F400;
  if (!qword_28143F400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28143F400);
  }

  return result;
}

uint64_t sub_22CF7C338(uint64_t a1)
{
  v2 = sub_22D015E7C();
  v3 = *(v2 - 8);
  v5 = MEMORY[0x28223BE20](v2, v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5, v8);
  v10 = &v19 - v9;
  v11 = *(a1 + 16);
  v12 = sub_22CF7C4D4(&qword_28143DAD8, MEMORY[0x277D4D5D8], MEMORY[0x277D4D5E0]);
  result = MEMORY[0x2318C59E0](v11, v2, v12);
  v20 = result;
  if (v11)
  {
    v16 = *(v3 + 16);
    v14 = v3 + 16;
    v15 = v16;
    v17 = a1 + ((*(v14 + 64) + 32) & ~*(v14 + 64));
    v18 = *(v14 + 56);
    do
    {
      v15(v7, v17, v2);
      sub_22CF76AFC(v10, v7);
      (*(v14 - 8))(v10, v2);
      v17 += v18;
      --v11;
    }

    while (v11);
    return v20;
  }

  return result;
}

uint64_t sub_22CF7C4D4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_22CF7C540()
{
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_22CF7C5D0()
{
  v1 = *v0;
  sub_22D016EAC();
  MEMORY[0x2318C6020](v1);
  return sub_22D016ECC();
}

uint64_t sub_22CF7C618(uint64_t a1)
{
  v2 = *v1;
  sub_22D016EAC();
  MEMORY[0x2318C6020](v2);
  return sub_22D016ECC();
}

uint64_t sub_22CF7C65C()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 56));

  return swift_deallocClassInstance();
}

void sub_22CF7C6AC(void *a1, void (*a2)(char *, uint64_t), unint64_t a3, char a4, void (*a5)(void), uint64_t a6, double a7)
{
  v94 = a2;
  v95 = a5;
  aBlock[6] = *MEMORY[0x277D85DE8];
  v12 = sub_22D0164CC();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12, v14);
  v91 = &v79 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_22D01653C();
  v90 = *(v16 - 8);
  MEMORY[0x28223BE20](v16, v17);
  v89 = &v79 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = sub_22D0164BC();
  v84 = *(v85 - 8);
  MEMORY[0x28223BE20](v85, v19);
  v21 = (&v79 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v93 = sub_22D01656C();
  v88 = *(v93 - 8);
  v23 = MEMORY[0x28223BE20](v93, v22);
  v25 = &v79 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23, v26);
  v87 = &v79 - v27;
  v28 = [a1 process];
  if (!v28)
  {
    if (qword_28143FB08 != -1)
    {
      swift_once();
    }

    v62 = sub_22D01637C();
    __swift_project_value_buffer(v62, qword_2814443D8);
    v63 = sub_22D01636C();
    v64 = sub_22D01690C();
    if (os_log_type_enabled(v63, v64))
    {
      v65 = swift_slowAlloc();
      *v65 = 0;
      _os_log_impl(&dword_22CEE1000, v63, v64, "Cannot execute task; process does not exist", v65, 2u);
      MEMORY[0x2318C6860](v65, -1, -1);
    }

    sub_22CEEEBB4();
    v66 = swift_allocError();
    *v67 = 2;
    v95();
    v68 = v66;
    goto LABEL_26;
  }

  v29 = v28;
  v83 = v25;
  v81 = v13;
  v82 = v12;
  v92 = a6;
  if (qword_28143FB08 != -1)
  {
    swift_once();
  }

  v30 = sub_22D01637C();
  __swift_project_value_buffer(v30, qword_2814443D8);
  v96 = v29;

  v31 = sub_22D01636C();
  v32 = sub_22D01690C();

  v33 = os_log_type_enabled(v31, v32);
  v80 = v16;
  if (!v33)
  {

    if (a4)
    {
      goto LABEL_6;
    }

    goto LABEL_17;
  }

  v34 = swift_slowAlloc();
  v35 = a4;
  v36 = swift_slowAlloc();
  aBlock[0] = v36;
  *v34 = 67240450;
  *(v34 + 4) = [v96 pid];

  *(v34 + 8) = 2082;
  *(v34 + 10) = sub_22CEEE31C(v94, a3, aBlock);
  _os_log_impl(&dword_22CEE1000, v31, v32, "Executing task for %{public}d with explanation %{public}s", v34, 0x12u);
  __swift_destroy_boxed_opaque_existential_1Tm(v36);
  MEMORY[0x2318C6860](v36, -1, -1);
  MEMORY[0x2318C6860](v34, -1, -1);

  if (!v35)
  {
LABEL_17:
    if ([a1 taskState] == 4)
    {
      (v95)(0);
      v68 = v96;

LABEL_20:

      return;
    }

    v73 = v96;
    v74 = sub_22D01636C();
    v75 = sub_22D0168EC();
    if (os_log_type_enabled(v74, v75))
    {
      v76 = swift_slowAlloc();
      *v76 = 67240192;
      *(v76 + 4) = [v73 pid];

      _os_log_impl(&dword_22CEE1000, v74, v75, "Rejecting low-priority task for %{public}d because process is unavailable", v76, 8u);
      MEMORY[0x2318C6860](v76, -1, -1);
    }

    else
    {

      v74 = v73;
    }

    sub_22CEEEBB4();
    v77 = swift_allocError();
    *v78 = 2;
    v95();

    v68 = v77;
LABEL_26:

    goto LABEL_20;
  }

LABEL_6:
  v37 = sub_22D01666C();
  v38 = sub_22D01666C();
  v39 = [objc_opt_self() attributeWithDomain:v37 name:v38];

  v40 = [objc_opt_self() targetWithPid_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2730, &unk_22D0196E0);
  v41 = swift_allocObject();
  *(v41 + 16) = xmmword_22D018FE0;
  *(v41 + 32) = v39;
  v42 = objc_allocWithZone(MEMORY[0x277D46DB8]);
  v43 = v40;
  v44 = v39;
  v45 = sub_22D01666C();
  sub_22CEEE550();
  v46 = sub_22D0167CC();
  v47 = v43;

  v48 = [v42 initWithExplanation:v45 target:v43 attributes:v46];

  aBlock[0] = 0;
  if ([v48 acquireWithError_])
  {
    v79 = v44;
    v49 = aBlock[0];
    (v95)(0);
    sub_22D01566C();

    v50 = sub_22D01563C();
    v51 = v83;
    sub_22D01654C();
    v52 = a7 * 1000.0;
    if (COERCE__INT64(fabs(a7 * 1000.0)) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v52 > -9.22337204e18)
    {
      v95 = v47;
      if (v52 < 9.22337204e18)
      {
        *v21 = v52;
        v53 = v84;
        v54 = v85;
        (*(v84 + 104))(v21, *MEMORY[0x277D85178], v85);
        v55 = v87;
        sub_22D01655C();
        (*(v53 + 8))(v21, v54);
        v94 = *(v88 + 8);
        v94(v51, v93);
        v92 = *(v86 + 104);
        v56 = swift_allocObject();
        v56[2] = v48;
        v56[3] = v50;
        aBlock[4] = sub_22CF7D8C8;
        aBlock[5] = v56;
        aBlock[0] = MEMORY[0x277D85DD0];
        aBlock[1] = 1107296256;
        aBlock[2] = sub_22CEF8B58;
        aBlock[3] = &block_descriptor_5;
        v57 = _Block_copy(aBlock);
        v58 = v48;

        v59 = v89;
        sub_22D0164EC();
        v97 = MEMORY[0x277D84F90];
        sub_22CF1A0D4(&qword_28143FA60, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9F2FE0, &qword_22D018B70);
        sub_22CF0EDA8();
        v60 = v91;
        v61 = v82;
        sub_22D016ADC();
        MEMORY[0x2318C5A90](v55, v59, v60, v57);
        _Block_release(v57);

        (*(v81 + 8))(v60, v61);
        (*(v90 + 8))(v59, v80);
        v94(v55, v93);

        return;
      }

LABEL_31:
      __break(1u);
    }

    __break(1u);
    goto LABEL_31;
  }

  v69 = aBlock[0];
  v70 = sub_22D01416C();

  swift_willThrow();
  sub_22CEEEBB4();
  v71 = swift_allocError();
  *v72 = 0;
  v95();
}

uint64_t sub_22CF7D2B4(uint64_t a1)
{
  v3 = *(*v1 + 40);
  v4 = *(*v1 + 48);
  __swift_project_boxed_opaque_existential_1((*v1 + 16), v3);
  return (*(v4 + 8))(a1, v3, v4);
}

uint64_t sub_22CF7D314(uint64_t a1, uint64_t a2)
{
  v5 = *(*v2 + 40);
  v6 = *(*v2 + 48);
  __swift_project_boxed_opaque_existential_1((*v2 + 16), v5);
  return (*(v6 + 32))(a1, a2, v5, v6);
}

uint64_t sub_22CF7D384(uint64_t a1)
{
  v3 = *(*v1 + 40);
  v4 = *(*v1 + 48);
  __swift_project_boxed_opaque_existential_1((*v1 + 16), v3);
  return (*(v4 + 40))(a1, v3, v4);
}

void sub_22CF7D3E4(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, unint64_t a5, void (*a6)(uint64_t, uint64_t), uint64_t a7, void *a8)
{
  sub_22D01562C();
  if (a2)
  {
    if (qword_28143FB08 != -1)
    {
      swift_once();
    }

    v14 = sub_22D01637C();
    __swift_project_value_buffer(v14, qword_2814443D8);

    v15 = sub_22D01636C();
    v16 = sub_22D0168EC();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v36 = v18;
      *v17 = 136380675;
      *(v17 + 4) = sub_22CEEE31C(a4, a5, &v36);
      _os_log_impl(&dword_22CEE1000, v15, v16, "Error launching app %{private}s", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v18);
      MEMORY[0x2318C6860](v18, -1, -1);
      MEMORY[0x2318C6860](v17, -1, -1);
    }

    sub_22CEEEBB4();
    v19 = swift_allocError();
    *v20 = a2;
    v21 = a2;
    v22 = v19;
    goto LABEL_22;
  }

  if (!a1)
  {
    if (qword_28143FB08 != -1)
    {
      swift_once();
    }

    v27 = sub_22D01637C();
    __swift_project_value_buffer(v27, qword_2814443D8);

    v28 = sub_22D01636C();
    v29 = sub_22D0168EC();

    if (!os_log_type_enabled(v28, v29))
    {
      goto LABEL_21;
    }

    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v36 = v31;
    *v30 = 136380675;
    *(v30 + 4) = sub_22CEEE31C(a4, a5, &v36);
    v32 = "App may have launched but no handle was returned %{private}s";
    goto LABEL_20;
  }

  v23 = a8[5];
  v24 = a8[6];
  __swift_project_boxed_opaque_existential_1(a8 + 2, v23);
  v25 = (*(v24 + 32))(a4, a5, v23, v24);
  if (!v25)
  {
    if (qword_28143FB08 != -1)
    {
      swift_once();
    }

    v33 = sub_22D01637C();
    __swift_project_value_buffer(v33, qword_2814443D8);

    v28 = sub_22D01636C();
    v29 = sub_22D0168EC();

    if (!os_log_type_enabled(v28, v29))
    {
      goto LABEL_21;
    }

    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v36 = v31;
    *v30 = 136380675;
    *(v30 + 4) = sub_22CEEE31C(a4, a5, &v36);
    v32 = "Could not retrieve RBSProcessState for BSHandle %{private}s";
LABEL_20:
    _os_log_impl(&dword_22CEE1000, v28, v29, v32, v30, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v31);
    MEMORY[0x2318C6860](v31, -1, -1);
    MEMORY[0x2318C6860](v30, -1, -1);
LABEL_21:

    sub_22CEEEBB4();
    v22 = swift_allocError();
    v19 = v22;
    *v34 = 0;
LABEL_22:
    a6(v22, 1);
    v26 = v19;

    goto LABEL_11;
  }

  v35 = v25;
  a6(v25, 0);
  v26 = v35;

LABEL_11:
}

void sub_22CF7D83C(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(a2, a3);
}

void sub_22CF7D8CC(uint64_t a1, unint64_t a2, void *a3, uint64_t a4, void (*a5)(char *, uint64_t), unint64_t a6, char a7, void (*a8)(void), double a9, uint64_t a10)
{
  v18 = swift_allocObject();
  *(v18 + 16) = a4;
  *(v18 + 24) = a5;
  *(v18 + 32) = a6;
  v53 = a7;
  *(v18 + 40) = a7;
  *(v18 + 48) = a9;
  v54 = a8;
  *(v18 + 56) = a8;
  *(v18 + 64) = a10;
  v19 = qword_28143FB08;

  if (v19 != -1)
  {
    swift_once();
  }

  v20 = sub_22D01637C();
  __swift_project_value_buffer(v20, qword_2814443D8);

  v21 = sub_22D01636C();
  v22 = sub_22D01690C();

  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    aBlock = v24;
    *v23 = 136380675;
    *(v23 + 4) = sub_22CEEE31C(a1, a2, &aBlock);
    _os_log_impl(&dword_22CEE1000, v21, v22, "Launching %{private}s", v23, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v24);
    MEMORY[0x2318C6860](v24, -1, -1);
    MEMORY[0x2318C6860](v23, -1, -1);
  }

  v25 = __swift_project_boxed_opaque_existential_1(a3 + 7, a3[10]);
  v26 = *v25;
  v27 = *(*(*v25 + 40) + 16);
  os_unfair_lock_lock(v27);
  swift_beginAccess();
  v28 = *(v26 + 48);

  v29 = sub_22CF24034(a1, a2, v28);

  os_unfair_lock_unlock(v27);
  if ((v29 & 1) == 0)
  {
    v34 = sub_22D01636C();
    v35 = sub_22D0168EC();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      *v36 = 0;
      _os_log_impl(&dword_22CEE1000, v34, v35, "Could not launch an unknown client", v36, 2u);
      MEMORY[0x2318C6860](v36, -1, -1);
    }

    sub_22CEEEBB4();
    v38 = swift_allocError();
    v39 = 2;
    goto LABEL_11;
  }

  v30 = a3[5];
  v31 = a3[6];
  __swift_project_boxed_opaque_existential_1(a3 + 2, v30);
  v32 = (*(v31 + 32))(a1, a2, v30, v31);
  if (v32)
  {
    v33 = v32;
    sub_22CF7C6AC(v32, a5, a6, v53, v54, a10, a9);

    return;
  }

  v40 = [objc_opt_self() serviceWithDefaultShellEndpoint];
  if (!v40)
  {
    v50 = sub_22D01636C();
    v51 = sub_22D0168EC();
    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      *v52 = 0;
      _os_log_impl(&dword_22CEE1000, v50, v51, "Could not create an app launch service", v52, 2u);
      MEMORY[0x2318C6860](v52, -1, -1);
    }

    sub_22CEEEBB4();
    v38 = swift_allocError();
    v39 = 1;
LABEL_11:
    *v37 = v39;
    v54();

    return;
  }

  v41 = v40;
  sub_22D01566C();
  v42 = sub_22D01563C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2A60, &qword_22D019810);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22D0187A0;
  aBlock = sub_22D01667C();
  v57 = v44;
  sub_22D016BFC();
  *(inited + 96) = MEMORY[0x277D83B88];
  *(inited + 72) = 1;
  sub_22CFF69BC(inited);
  swift_setDeallocating();
  sub_22CF7DF70(inited + 32);
  v45 = sub_22D0165CC();

  v46 = [objc_opt_self() optionsWithDictionary_];

  v47 = sub_22D01666C();
  v48 = swift_allocObject();
  v48[2] = v42;
  v48[3] = a1;
  v48[4] = a2;
  v48[5] = sub_22CF7DF24;
  v48[6] = v18;
  v48[7] = a3;
  v60 = sub_22CF7DFD8;
  v61 = v48;
  aBlock = MEMORY[0x277D85DD0];
  v57 = 1107296256;
  v58 = sub_22CF7D83C;
  v59 = &block_descriptor_13;
  v49 = _Block_copy(&aBlock);

  [v41 openApplication:v47 withOptions:v46 completion:v49];
  _Block_release(v49);
}

void sub_22CF7DF24(void *a1, char a2)
{
  v3 = *(v2 + 56);
  if (a2)
  {
    (v3)(a1);
  }

  else
  {
    sub_22CF7C6AC(a1, *(v2 + 24), *(v2 + 32), *(v2 + 40), v3, *(v2 + 64), *(v2 + 48));
  }
}

uint64_t sub_22CF7DF70(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2A68, &qword_22D019818);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_22CF7DFE8(void *a1, void (*a2)(char *, uint64_t), NSObject *a3, int a4, uint64_t a5, void *a6, uint64_t a7, void *a8, double a9)
{
  v99 = a8;
  v88 = a5;
  LODWORD(v97) = a4;
  v98 = a2;
  aBlock[6] = *MEMORY[0x277D85DE8];
  v14 = sub_22D0164CC();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14, v16);
  v93 = &v81 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_22D01653C();
  v92 = *(v18 - 8);
  MEMORY[0x28223BE20](v18, v19);
  v91 = &v81 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = sub_22D0164BC();
  v86 = *(v87 - 8);
  MEMORY[0x28223BE20](v87, v21);
  v23 = &v81 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = sub_22D01656C();
  v90 = *(v96 - 8);
  v25 = MEMORY[0x28223BE20](v96, v24);
  v94 = &v81 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25, v27);
  v89 = &v81 - v28;
  v29 = [a1 process];
  if (!v29)
  {
    if (qword_28143FB08 != -1)
    {
      swift_once();
    }

    v38 = sub_22D01637C();
    __swift_project_value_buffer(v38, qword_2814443D8);
    v39 = sub_22D01636C();
    v40 = sub_22D01690C();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      *v41 = 0;
      _os_log_impl(&dword_22CEE1000, v39, v40, "Cannot execute task; process does not exist", v41, 2u);
      MEMORY[0x2318C6860](v41, -1, -1);
    }

    sub_22D01562C();
    if (qword_28143FAE8 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v38, qword_281444390);

    v100 = sub_22D01636C();
    v42 = sub_22D0168EC();

    if (os_log_type_enabled(v100, v42))
    {
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      aBlock[0] = v44;
      *v43 = 136380675;
      *(v43 + 4) = sub_22CEEE31C(a7, v99, aBlock);
      _os_log_impl(&dword_22CEE1000, v100, v42, "Did not launch process for push token delivery: %{private}s", v43, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v44);
      MEMORY[0x2318C6860](v44, -1, -1);
      MEMORY[0x2318C6860](v43, -1, -1);
LABEL_34:

      return;
    }

    v74 = v100;
    goto LABEL_37;
  }

  v30 = v29;
  v84 = v14;
  v95 = a6;
  if (qword_28143FB08 != -1)
  {
    swift_once();
  }

  v81 = v23;
  v85 = sub_22D01637C();
  __swift_project_value_buffer(v85, qword_2814443D8);
  v100 = v30;

  v31 = sub_22D01636C();
  v32 = sub_22D01690C();

  v33 = os_log_type_enabled(v31, v32);
  v83 = v15;
  v82 = v18;
  if (v33)
  {
    v34 = a7;
    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    aBlock[0] = v36;
    *v35 = 67240450;
    *(v35 + 4) = [v100 pid];

    *(v35 + 8) = 2082;
    *(v35 + 10) = sub_22CEEE31C(v98, a3, aBlock);
    _os_log_impl(&dword_22CEE1000, v31, v32, "Executing task for %{public}d with explanation %{public}s", v35, 0x12u);
    __swift_destroy_boxed_opaque_existential_1Tm(v36);
    MEMORY[0x2318C6860](v36, -1, -1);
    v37 = v35;
    a7 = v34;
    MEMORY[0x2318C6860](v37, -1, -1);
  }

  else
  {
  }

  if (!v97)
  {
    if ([a1 taskState] == 4)
    {
      sub_22D01562C();
LABEL_36:
      v74 = v100;
LABEL_37:

      return;
    }

    a3 = v100;
    v75 = sub_22D01636C();
    v76 = sub_22D0168EC();
    if (os_log_type_enabled(v75, v76))
    {
      v77 = swift_slowAlloc();
      *v77 = 67240192;
      *(v77 + 4) = [a3 &_OBJC_LABEL_PROTOCOL___MCProfileConnectionObserver];

      _os_log_impl(&dword_22CEE1000, v75, v76, "Rejecting low-priority task for %{public}d because process is unavailable", v77, 8u);
      MEMORY[0x2318C6860](v77, -1, -1);
    }

    else
    {

      v75 = a3;
    }

    sub_22D01562C();
    if (qword_28143FAE8 == -1)
    {
LABEL_32:
      __swift_project_value_buffer(v85, qword_281444390);

      v100 = sub_22D01636C();
      v78 = sub_22D0168EC();

      if (os_log_type_enabled(v100, v78))
      {
        v79 = swift_slowAlloc();
        v80 = swift_slowAlloc();
        aBlock[0] = v80;
        *v79 = 136380675;
        *(v79 + 4) = sub_22CEEE31C(a7, v99, aBlock);
        _os_log_impl(&dword_22CEE1000, v100, v78, "Did not launch process for push token delivery: %{private}s", v79, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v80);
        MEMORY[0x2318C6860](v80, -1, -1);
        MEMORY[0x2318C6860](v79, -1, -1);

        goto LABEL_34;
      }

      goto LABEL_36;
    }

LABEL_44:
    swift_once();
    goto LABEL_32;
  }

  v97 = a7;
  v45 = sub_22D01666C();
  v46 = sub_22D01666C();
  v47 = [objc_opt_self() attributeWithDomain:v45 name:v46];

  v48 = [objc_opt_self() targetWithPid_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2730, &unk_22D0196E0);
  v49 = swift_allocObject();
  *(v49 + 16) = xmmword_22D018FE0;
  *(v49 + 32) = v47;
  v50 = objc_allocWithZone(MEMORY[0x277D46DB8]);
  v51 = v48;
  v52 = v47;
  v53 = sub_22D01666C();
  sub_22CEEE550();
  v54 = sub_22D0167CC();

  v55 = [v50 initWithExplanation:v53 target:v51 attributes:v54];

  aBlock[0] = 0;
  if ([v55 acquireWithError_])
  {
    v99 = v52;
    v56 = aBlock[0];
    sub_22D01562C();
    sub_22D01566C();

    v57 = sub_22D01563C();
    v58 = v94;
    sub_22D01654C();
    v59 = a9 * 1000.0;
    if (COERCE__INT64(fabs(a9 * 1000.0)) <= 0x7FEFFFFFFFFFFFFFLL)
    {
      if (v59 <= -9.22337204e18)
      {
        __break(1u);
      }

      else if (v59 < 9.22337204e18)
      {
        v60 = v81;
        *v81 = v59;
        v61 = v86;
        v62 = v87;
        (*(v86 + 104))(v60, *MEMORY[0x277D85178], v87);
        v63 = v89;
        sub_22D01655C();
        (*(v61 + 8))(v60, v62);
        v98 = *(v90 + 8);
        v98(v58, v96);
        v97 = *(v88 + 104);
        v64 = swift_allocObject();
        v64[2] = v55;
        v64[3] = v57;
        aBlock[4] = sub_22CF7F1DC;
        aBlock[5] = v64;
        aBlock[0] = MEMORY[0x277D85DD0];
        aBlock[1] = 1107296256;
        aBlock[2] = sub_22CEF8B58;
        aBlock[3] = &block_descriptor_47_1;
        v65 = _Block_copy(aBlock);
        v95 = v55;

        v66 = v91;
        sub_22D0164EC();
        v101 = MEMORY[0x277D84F90];
        sub_22CF1A0D4(&qword_28143FA60, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9F2FE0, &qword_22D018B70);
        sub_22CF0EDA8();
        v67 = v93;
        v68 = v84;
        sub_22D016ADC();
        MEMORY[0x2318C5A90](v63, v66, v67, v65);
        _Block_release(v65);

        (*(v83 + 8))(v67, v68);
        (*(v92 + 8))(v66, v82);
        v98(v63, v96);

        return;
      }

      __break(1u);
      goto LABEL_44;
    }

    __break(1u);
    goto LABEL_41;
  }

  v69 = aBlock[0];
  a3 = sub_22D01416C();

  swift_willThrow();
  sub_22D01562C();
  if (qword_28143FAE8 != -1)
  {
LABEL_41:
    swift_once();
  }

  __swift_project_value_buffer(v85, qword_281444390);

  v70 = sub_22D01636C();
  v71 = sub_22D0168EC();

  if (os_log_type_enabled(v70, v71))
  {
    v72 = swift_slowAlloc();
    v73 = swift_slowAlloc();
    aBlock[0] = v73;
    *v72 = 136380675;
    *(v72 + 4) = sub_22CEEE31C(v97, v99, aBlock);
    _os_log_impl(&dword_22CEE1000, v70, v71, "Did not launch process for push token delivery: %{private}s", v72, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v73);
    MEMORY[0x2318C6860](v73, -1, -1);
    MEMORY[0x2318C6860](v72, -1, -1);
  }
}

uint64_t sub_22CF7EE9C(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFD && *(a1 + 8))
  {
    return (*a1 + 2147483645);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) < 2)
  {
    LODWORD(v3) = 0;
  }

  if (v3 >= 3)
  {
    return (v3 - 2);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_22CF7EF00(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFD)
  {
    *result = 0;
    *result = a2 - 2147483645;
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 2;
    }
  }

  return result;
}

void *sub_22CF7EF50(void *result, unsigned int a2)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *result = a2 - 0x7FFFFFFF;
  }

  else if (a2)
  {
    *result = a2;
  }

  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t getEnumTagSinglePayload for ProcessManagerTaskExecutionOptions(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && a1[16])
  {
    return (*a1 + 254);
  }

  v3 = *a1;
  v4 = v3 >= 3;
  v5 = v3 - 3;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for ProcessManagerTaskExecutionOptions(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2 + 2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ProcessManagerTaskExecutionOptions.Priority(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ProcessManagerTaskExecutionOptions.Priority(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_22CF7F184()
{
  result = qword_27D9F2A70;
  if (!qword_27D9F2A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9F2A70);
  }

  return result;
}

uint64_t sub_22CF7F1F0()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));

  return swift_deallocClassInstance();
}

uint64_t sub_22CF7F24C()
{

  sub_22CF460CC(v0 + 40);

  return swift_deallocClassInstance();
}

unint64_t sub_22CF7F2C0()
{
  v1 = *(*(v0 + 16) + 16);
  os_unfair_lock_lock(v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2010, &qword_22D018B40);
  inited = swift_initStackObject();
  *(inited + 32) = 0xD00000000000001CLL;
  *(inited + 16) = xmmword_22D0187A0;
  *(inited + 40) = 0x800000022D01FA90;
  swift_beginAccess();
  v3 = *(v0 + 24);
  v4 = *(v3 + 16);
  if (!v4)
  {
    v5 = MEMORY[0x277D84F90];
    goto LABEL_5;
  }

  v9 = v1;
  v5 = sub_22CEE561C(v4, 0);
  v10 = sub_22CEE56A4(&v11, v5 + 4, v4, v3);
  v6 = v11;

  result = sub_22CEE57FC(v6);
  if (v10 == v4)
  {
    v1 = v9;
LABEL_5:
    *(inited + 72) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F25F8, &unk_22D018B50);
    *(inited + 48) = v5;
    v8 = sub_22CF11C44(inited);
    swift_setDeallocating();
    sub_22CF7F464(inited + 32);
    os_unfair_lock_unlock(v1);
    return v8;
  }

  __break(1u);
  return result;
}

uint64_t sub_22CF7F464(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F3460, &unk_22D0188B0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22CF7F4CC()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 32));

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 80));

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 160));

  sub_22CF460CC(v0 + 208);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 224));
  return v0;
}

uint64_t sub_22CF7F554()
{
  sub_22CF7F4CC();

  return swift_deallocClassInstance();
}

uint64_t sub_22CF7F5AC(uint64_t a1)
{
  result = sub_22D01483C();
  if (v2 <= 0x3F)
  {
    result = sub_22D0146BC();
    if (v3 <= 0x3F)
    {
      result = sub_22D01430C();
      if (v4 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

void sub_22CF7F658(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(v3 + 16);
  v7 = swift_allocObject();
  v7[2] = v3;
  v7[3] = a1;
  v7[4] = a2;
  v8 = swift_allocObject();
  *(v8 + 16) = sub_22CF7FA64;
  *(v8 + 24) = v7;
  v10[4] = sub_22CEF3C48;
  v10[5] = v8;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 1107296256;
  v10[2] = sub_22CEF3C20;
  v10[3] = &block_descriptor_6;
  v9 = _Block_copy(v10);
  swift_unknownObjectRetain();

  dispatch_sync(v6, v9);
  swift_unknownObjectRelease();
  _Block_release(v9);
  LOBYTE(a1) = swift_isEscapingClosureAtFileLocation();

  if (a1)
  {
    __break(1u);
  }
}

void sub_22CF7F7D4(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2648, &unk_22D018BC0);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v6 = &v20 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F3810, &unk_22D018FA0);
  MEMORY[0x28223BE20](v7 - 8, v8);
  v10 = &v20 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2A78, &unk_22D01B130);
  MEMORY[0x28223BE20](v11 - 8, v12);
  v14 = &v20 - v13;
  v15 = *a2;
  v16 = a2[1];
  v17 = type metadata accessor for XPCInputParticipant.ActivityUpdate(0);
  (*(*(v17 - 8) + 56))(v14, 1, 1, v17);
  swift_beginAccess();
  swift_bridgeObjectRetain_n();
  sub_22CF26EA8(v14, v15, v16);
  swift_endAccess();
  v18 = type metadata accessor for Activity(0);
  (*(*(v18 - 8) + 56))(v10, 1, 1, v18);
  swift_beginAccess();
  sub_22CF0BC5C(v10, v15, v16);
  swift_endAccess();
  v19 = sub_22D01430C();
  (*(*(v19 - 8) + 56))(v6, 1, 1, v19);
  swift_beginAccess();
  sub_22CF3318C(v6, v15, v16);
  swift_endAccess();
  sub_22CF28F14();
}

double sub_22CF7FA90(uint64_t a1)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_22CF2737C();
  }

  return result;
}

id sub_22CF7FB48()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2B20, &qword_22D019C18);
  MEMORY[0x28223BE20](v1 - 8, v2);
  v4 = &v15 - v3;
  v5 = &v0[OBJC_IVAR____TtC11SessionCore35ActivityPreferenceReplicationFilter_filterDidUpdate];
  *v5 = 0;
  *(v5 + 1) = 0;
  v6 = OBJC_IVAR____TtC11SessionCore35ActivityPreferenceReplicationFilter_appSettingsLock;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2B28, &qword_22D019C20);
  v7 = swift_allocObject();
  *(v7 + 20) = 0;
  *(v7 + 16) = 0;
  *&v0[v6] = v7;
  v8 = &v0[OBJC_IVAR____TtC11SessionCore35ActivityPreferenceReplicationFilter_lockedAppSettings];
  v9 = type metadata accessor for ActivityPreferenceReplicationFilter();
  *v8 = 0u;
  *(v8 + 1) = 0u;
  v15.receiver = v0;
  v15.super_class = v9;
  v10 = objc_msgSendSuper2(&v15, sel_init);
  v11 = sub_22D01681C();
  (*(*(v11 - 8) + 56))(v4, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = v10;
  v13 = v10;
  sub_22CF80110(0, 0, v4, &unk_22D019C30, v12);

  return v13;
}

uint64_t sub_22CF7FCCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = sub_22D01430C();
  v4[3] = v5;
  v4[4] = *(v5 - 8);
  v4[5] = swift_task_alloc();
  v4[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22CF7FD98, 0, 0);
}

uint64_t sub_22CF7FD98()
{
  if (sub_22CF80F40())
  {
    v1 = v0[5];
    v2 = v0[3];
    v3 = v0[4];
    sub_22D0142FC();
    v4 = [objc_opt_self() sharedSettingsModel];
    sub_22D0142FC();
    sub_22D01424C();
    v6 = v5;
    v7 = *(v3 + 8);
    v7(v1, v2);
    if (qword_28143DA98 != -1)
    {
      swift_once();
    }

    v8 = v0[2];
    v9 = sub_22D01637C();
    __swift_project_value_buffer(v9, qword_2814442F0);
    v10 = v8;
    v11 = v4;
    v12 = sub_22D01636C();
    v13 = sub_22D01690C();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = v0[2];
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      *v15 = 138412802;
      *(v15 + 4) = v14;
      *(v15 + 12) = 2112;
      *(v15 + 14) = v11;
      *v16 = v14;
      v16[1] = v11;
      *(v15 + 22) = 2048;
      *(v15 + 24) = v6;
      v17 = v14;
      v18 = v11;
      _os_log_impl(&dword_22CEE1000, v12, v13, "%@ received %@ after %f seconds", v15, 0x20u);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2380, &unk_22D019C50);
      swift_arrayDestroy();
      MEMORY[0x2318C6860](v16, -1, -1);
      MEMORY[0x2318C6860](v15, -1, -1);
    }

    v19 = v0[2];

    [v11 registerObserver_];
    v20 = *(v19 + OBJC_IVAR____TtC11SessionCore35ActivityPreferenceReplicationFilter_appSettingsLock);
    v21 = swift_task_alloc();
    *(v21 + 16) = v19;
    *(v21 + 24) = v11;
    os_unfair_lock_lock((v20 + 20));
    sub_22CF811DC((v20 + 16));
    os_unfair_lock_unlock((v20 + 20));
    v22 = v0[6];
    v23 = v0[3];

    v7(v22, v23);
  }

  v24 = v0[1];

  return v24();
}

uint64_t sub_22CF80070(_BYTE *a1, uint64_t a2, void *a3)
{
  v9[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2B18, &qword_22D019C10);
  v9[0] = a3;
  v6 = OBJC_IVAR____TtC11SessionCore35ActivityPreferenceReplicationFilter_lockedAppSettings;
  swift_beginAccess();
  v7 = a3;
  sub_22CF811F8(v9, a2 + v6);
  result = swift_endAccess();
  *a1 = 1;
  return result;
}

uint64_t sub_22CF80110(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2B20, &qword_22D019C18);
  MEMORY[0x28223BE20](v9 - 8, v10);
  v12 = v26 - v11;
  sub_22CEEB6DC(a3, v26 - v11, &qword_27D9F2B20, &qword_22D019C18);
  v13 = sub_22D01681C();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_22CEEC3D8(v12, &qword_27D9F2B20, &qword_22D019C18);
  }

  else
  {
    sub_22D01680C();
    (*(v14 + 8))(v12, v13);
  }

  v16 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_22D0167FC();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = sub_22D0166AC() + 32;
      v21 = swift_allocObject();
      *(v21 + 16) = a4;
      *(v21 + 24) = a5;

      if (v19 | v17)
      {
        v27[0] = 0;
        v27[1] = 0;
        v22 = v27;
        v27[2] = v17;
        v27[3] = v19;
      }

      else
      {
        v22 = 0;
      }

      v26[1] = 7;
      v26[2] = v22;
      v26[3] = v20;
      v24 = swift_task_create();

      sub_22CEEC3D8(a3, &qword_27D9F2B20, &qword_22D019C18);

      return v24;
    }
  }

  else
  {
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_22CEEC3D8(a3, &qword_27D9F2B20, &qword_22D019C18);
  v23 = swift_allocObject();
  *(v23 + 16) = a4;
  *(v23 + 24) = a5;
  if (v19 | v17)
  {
    v27[4] = 0;
    v27[5] = 0;
    v27[6] = v17;
    v27[7] = v19;
  }

  return swift_task_create();
}

void sub_22CF80434(_BYTE *a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, unsigned __int8 *a5@<X8>)
{
  if (*a1 != 1)
  {
    if (qword_28143DA98 != -1)
    {
      swift_once();
    }

    v14 = sub_22D01637C();
    __swift_project_value_buffer(v14, qword_2814442F0);
    v15 = sub_22D01636C();
    v16 = sub_22D0168CC();
    if (!os_log_type_enabled(v15, v16))
    {
      goto LABEL_16;
    }

    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&dword_22CEE1000, v15, v16, "appSettings not set, allowing replication", v17, 2u);
    v18 = v17;
    goto LABEL_15;
  }

  v9 = OBJC_IVAR____TtC11SessionCore35ActivityPreferenceReplicationFilter_lockedAppSettings;
  swift_beginAccess();
  sub_22CEEB6DC(&a2[v9], v32, &qword_27D9F2B10, &unk_22D01B930);
  if (!v32[3])
  {
    sub_22CEEC3D8(v32, &qword_27D9F2B10, &unk_22D01B930);
    goto LABEL_11;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2B18, &qword_22D019C10);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_11:
    if (qword_28143DA98 != -1)
    {
      swift_once();
    }

    v19 = sub_22D01637C();
    __swift_project_value_buffer(v19, qword_2814442F0);
    v20 = a2;
    v15 = sub_22D01636C();
    v21 = sub_22D0168EC();

    if (!os_log_type_enabled(v15, v21))
    {
      goto LABEL_16;
    }

    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v33 = v23;
    *v22 = 136315138;
    sub_22CEEB6DC(&a2[v9], v32, &qword_27D9F2B10, &unk_22D01B930);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2B10, &unk_22D01B930);
    v24 = sub_22D01669C();
    v26 = sub_22CEEE31C(v24, v25, &v33);

    *(v22 + 4) = v26;
    _os_log_impl(&dword_22CEE1000, v15, v21, "appSettings %s not set or not correct, allowing replication", v22, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v23);
    MEMORY[0x2318C6860](v23, -1, -1);
    v18 = v22;
LABEL_15:
    MEMORY[0x2318C6860](v18, -1, -1);
LABEL_16:

LABEL_17:
    v13 = 1;
    goto LABEL_18;
  }

  v10 = v33;
  v11 = sub_22D01666C();
  v12 = [v10 resolvedSettingsForBundleIdentifier_];

  if (!v12)
  {
    if (qword_28143DA98 != -1)
    {
      swift_once();
    }

    v27 = sub_22D01637C();
    __swift_project_value_buffer(v27, qword_2814442F0);

    v28 = sub_22D01636C();
    v29 = sub_22D01690C();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v32[0] = v31;
      *v30 = 136315138;
      *(v30 + 4) = sub_22CEEE31C(a3, a4, v32);
      _os_log_impl(&dword_22CEE1000, v28, v29, "no appSettings for  %s, allowing replication", v30, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v31);
      MEMORY[0x2318C6860](v31, -1, -1);
      MEMORY[0x2318C6860](v30, -1, -1);
    }

    goto LABEL_17;
  }

  v13 = [v12 allowLiveActivitiesForApp];

  swift_unknownObjectRelease();
LABEL_18:
  *a5 = v13;
}

id sub_22CF808B4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ActivityPreferenceReplicationFilter();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

double sub_22CF80970(uint64_t a1, uint64_t a2)
{
  v3 = (*v2 + OBJC_IVAR____TtC11SessionCore35ActivityPreferenceReplicationFilter_filterDidUpdate);
  v4 = *v3;
  v5 = v3[1];
  *v3 = a1;
  v3[1] = a2;
  return sub_22CF80A18(v4, v5);
}

double sub_22CF80994(char *result)
{
  v1 = *&result[OBJC_IVAR____TtC11SessionCore35ActivityPreferenceReplicationFilter_filterDidUpdate];
  if (v1)
  {
    v2 = *&result[OBJC_IVAR____TtC11SessionCore35ActivityPreferenceReplicationFilter_filterDidUpdate + 8];
    v3 = result;
    v4 = sub_22CF80C18(v1, v2);
    v1(v4);

    return sub_22CF80A18(v1, v2);
  }

  return v5;
}

double sub_22CF80A18(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
  }

  return result;
}

uint64_t sub_22CF80A28(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_22CF80B20;

  return v6(a1);
}

uint64_t sub_22CF80B20()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_22CF80C18(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_22CF80C28(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_22CF80CDC;

  return sub_22CF7FCCC(a1, v4, v5, v6);
}

uint64_t sub_22CF80CDC()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_22CF80DD0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_22CF81278;

  return sub_22CF80A28(a1, v4);
}

uint64_t sub_22CF80E88(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_22CF80CDC;

  return sub_22CF80A28(a1, v4);
}

uint64_t sub_22CF80F40()
{
  v0 = MobileGestalt_get_current_device();
  if (!v0)
  {
    if (qword_28143DA98 != -1)
    {
      swift_once();
    }

    v8 = sub_22D01637C();
    __swift_project_value_buffer(v8, qword_2814442F0);
    v1 = sub_22D01636C();
    v9 = sub_22D0168EC();
    if (os_log_type_enabled(v1, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_22CEE1000, v1, v9, "Unable to determine device class from MobileGestalt - defaulting to replication filters not supported", v10, 2u);
      MEMORY[0x2318C6860](v10, -1, -1);
    }

    goto LABEL_16;
  }

  v1 = v0;
  deviceClassNumber = MobileGestalt_get_deviceClassNumber();
  if (deviceClassNumber != 1)
  {
    v11 = deviceClassNumber;
    if (qword_28143DA98 != -1)
    {
      swift_once();
    }

    v12 = sub_22D01637C();
    __swift_project_value_buffer(v12, qword_2814442F0);
    v13 = sub_22D01636C();
    v14 = sub_22D01690C();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 67109120;
      *(v15 + 4) = v11;
      _os_log_impl(&dword_22CEE1000, v13, v14, "Replication filters not supported on deviceClass %d", v15, 8u);
      MEMORY[0x2318C6860](v15, -1, -1);
    }

LABEL_16:
    v7 = 0;
    goto LABEL_17;
  }

  if (qword_28143DA98 != -1)
  {
    swift_once();
  }

  v3 = sub_22D01637C();
  __swift_project_value_buffer(v3, qword_2814442F0);
  v4 = sub_22D01636C();
  v5 = sub_22D01690C();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 67109120;
    v7 = 1;
    *(v6 + 4) = 1;
    _os_log_impl(&dword_22CEE1000, v4, v5, "Replication filters supported on deviceClass %d", v6, 8u);
    MEMORY[0x2318C6860](v6, -1, -1);
  }

  else
  {

    v7 = 1;
  }

LABEL_17:

  return v7;
}

uint64_t sub_22CF811F8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2B10, &unk_22D01B930);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_22CF8127C()
{
  v10[0] = sub_22D01697C();
  v1 = *(v10[0] - 8);
  MEMORY[0x28223BE20](v10[0], v2);
  v4 = v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_22D01691C();
  MEMORY[0x28223BE20](v5, v6);
  v7 = sub_22D01653C();
  MEMORY[0x28223BE20](v7 - 8, v8);
  *(v0 + 16) = -1;
  sub_22CEEC38C();
  sub_22D01650C();
  v10[1] = MEMORY[0x277D84F90];
  sub_22CF65F4C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9F3990, &unk_22D0189A0);
  sub_22CF68848();
  sub_22D016ADC();
  (*(v1 + 104))(v4, *MEMORY[0x277D85268], v10[0]);
  *(v0 + 24) = sub_22D0169BC();
  sub_22CF8150C();
  return v0;
}

uint64_t sub_22CF81498()
{
  swift_beginAccess();
  notify_cancel(*(v0 + 16));

  return swift_deallocClassInstance();
}

void sub_22CF8150C()
{
  sub_22D0155EC();
  v1 = *(v0 + 24);
  v2 = swift_allocObject();
  swift_weakInit();
  v9[4] = sub_22CF81814;
  v9[5] = v2;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 1107296256;
  v9[2] = sub_22CEF261C;
  v9[3] = &block_descriptor_7;
  v3 = _Block_copy(v9);

  v4 = sub_22D0166AC();

  swift_beginAccess();
  LODWORD(v1) = notify_register_dispatch((v4 + 32), (v0 + 16), v1, v3);
  swift_endAccess();

  _Block_release(v3);
  if (v1)
  {
    if (qword_27D9F1E50 != -1)
    {
      swift_once();
    }

    v5 = sub_22D01637C();
    __swift_project_value_buffer(v5, qword_27D9F40D0);
    v6 = sub_22D01636C();
    v7 = sub_22D0168EC();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_22CEE1000, v6, v7, "Could not register for stuck client notifications", v8, 2u);
      MEMORY[0x2318C6860](v8, -1, -1);
    }
  }
}

double sub_22CF816F4(uint64_t a1, uint64_t a2)
{
  state64[7] = *MEMORY[0x277D85DE8];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    state64[0] = 0;
    v4 = Strong;
    swift_beginAccess();
    notify_get_state(*(v4 + 16), state64);
    v5 = sub_22D016DEC();
    sub_22CFAB920(0xD000000000000013, 0x800000022D01FCF0, 0x696C436B63757453, 0xEB00000000746E65, 0x696C436B63757453, 0xEB00000000746E65, v5, v6);
  }

  return result;
}

double sub_22CF8181C(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_22CF8187C(v2);
  }

  return result;
}

void sub_22CF8187C(uint64_t a1)
{
  v3 = type metadata accessor for ActivityParticipantEvent(0);
  v4 = *(v3 - 8);
  v6 = MEMORY[0x28223BE20](v3 - 8, v5);
  v43 = v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v8);
  v10 = v36 - v9;
  v11 = *(v1 + 16);
  v12 = *(v11 + 16);
  os_unfair_lock_lock(v12);
  Strong = swift_unknownObjectWeakLoadStrong();
  v14 = *(v1 + 88);
  os_unfair_lock_unlock(v12);
  if (Strong)
  {
    v15 = *(v11 + 16);
    os_unfair_lock_lock(v15);
    sub_22CF81C68(a1, v1, &v44);
    os_unfair_lock_unlock(v15);
    v16 = v44;
    v17 = v44[2];
    v18 = v43;
    if (v17)
    {
      ObjectType = swift_getObjectType();
      v41 = *(v14 + 24);
      v42 = v14 + 24;
      v20 = *(v4 + 80);
      v36[1] = v16;
      v21 = v16 + ((v20 + 32) & ~v20);
      v22 = *(v4 + 72);
      *&v23 = 136446210;
      v37 = v23;
      v39 = ObjectType;
      v40 = v10;
      v38 = v22;
      do
      {
        sub_22CF1C22C(v21, v10, type metadata accessor for ActivityParticipantEvent);
        if (qword_27D9F1E38 != -1)
        {
          swift_once();
        }

        v24 = sub_22D01637C();
        __swift_project_value_buffer(v24, qword_27D9F40A0);
        sub_22CF1C22C(v10, v18, type metadata accessor for ActivityParticipantEvent);
        v25 = sub_22D01636C();
        v26 = sub_22D01690C();
        if (os_log_type_enabled(v25, v26))
        {
          v27 = swift_slowAlloc();
          v28 = swift_slowAlloc();
          v44 = v28;
          *v27 = v37;
          v29 = v14;
          v30 = Strong;
          v31 = *v18;
          v32 = *(v43 + 8);

          sub_22CF82794(v43, type metadata accessor for ActivityParticipantEvent);
          v33 = sub_22CEEE31C(v31, v32, &v44);
          v18 = v43;

          *(v27 + 4) = v33;
          Strong = v30;
          v14 = v29;
          v10 = v40;
          _os_log_impl(&dword_22CEE1000, v25, v26, "Ending activity because frequent push permission was revoked: %{public}s", v27, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v28);
          v34 = v28;
          v22 = v38;
          MEMORY[0x2318C6860](v34, -1, -1);
          v35 = v27;
          ObjectType = v39;
          MEMORY[0x2318C6860](v35, -1, -1);
        }

        else
        {

          sub_22CF82794(v18, type metadata accessor for ActivityParticipantEvent);
        }

        v41(v10, ObjectType, v14);
        sub_22CF82794(v10, type metadata accessor for ActivityParticipantEvent);
        v21 += v22;
        --v17;
      }

      while (v17);
      swift_unknownObjectRelease();
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }
}

void sub_22CF81C68(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = v3;
  v92 = type metadata accessor for ActivityParticipantEvent(0);
  v89 = *(v92 - 8);
  v9 = MEMORY[0x28223BE20](v92, v8);
  v91 = &v81 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9, v11);
  v90 = &v81 - v12;
  v108 = type metadata accessor for Activity(0);
  v103 = *(v108 - 8);
  v14 = MEMORY[0x28223BE20](v108, v13);
  v104 = &v81 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14, v16);
  v102 = &v81 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F3850, &unk_22D019D30);
  v20 = MEMORY[0x28223BE20](v18 - 8, v19);
  v22 = &v81 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20, v23);
  v105 = (&v81 - v24);
  v25 = sub_22D01495C();
  MEMORY[0x28223BE20](v25 - 8, v26);
  v96 = sub_22D01486C();
  v27 = *(v96 - 8);
  MEMORY[0x28223BE20](v96, v28);
  v30 = &v81 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22D01494C();
  v95 = v30;
  sub_22D01485C();
  v31 = *(a1 + 64);
  v97 = a1 + 64;
  v32 = 1 << *(a1 + 32);
  if (v32 < 64)
  {
    v33 = ~(-1 << v32);
  }

  else
  {
    v33 = -1;
  }

  v34 = v33 & v31;

  v93 = a2;
  swift_beginAccess();
  v35 = 0;
  v36 = v27;
  v37 = (v32 + 63) >> 6;
  v38 = (v27 + 16);
  v98 = MEMORY[0x277D84F90];
  v109 = v22;
  do
  {
LABEL_6:
    if (!v34)
    {
      do
      {
        v41 = v35 + 1;
        if (__OFADD__(v35, 1))
        {
          __break(1u);
          goto LABEL_44;
        }

        if (v41 >= v37)
        {

          (*(v36 + 8))(v95, v96);
          *a3 = v98;
          return;
        }

        v34 = *(v97 + 8 * v41);
        ++v35;
      }

      while (!v34);
      v35 = v41;
    }

    v39 = __clz(__rbit64(v34));
    v34 &= v34 - 1;
    v40 = v39 | (v35 << 6);
  }

  while ((*(*(a1 + 56) + v40) & 1) != 0);
  v88 = v38;
  v83 = v37;
  v84 = v36;
  v86 = a3;
  v87 = v4;
  v85 = a1;
  v42 = (*(a1 + 48) + 16 * v40);
  v43 = *v42;
  v106 = v42[1];
  v107 = v43;
  v44 = *(v93 + 72);
  v45 = *(v44 + 64);
  v94 = v44 + 64;
  v46 = 1 << *(v44 + 32);
  if (v46 < 64)
  {
    v47 = ~(-1 << v46);
  }

  else
  {
    v47 = -1;
  }

  v48 = v47 & v45;
  v49 = (v46 + 63) >> 6;

  v99 = v44;

  v50 = 0;
  v51 = v104;
  v101 = v49;
LABEL_15:
  for (i = v50; ; i = v50)
  {
    v53 = v109;
    if (!v48)
    {
      break;
    }

    v54 = i;
LABEL_27:
    v56 = __clz(__rbit64(v48));
    v48 &= v48 - 1;
    v57 = v56 | (v54 << 6);
    v58 = (*(v99 + 48) + 16 * v57);
    v60 = *v58;
    v59 = v58[1];
    v61 = v102;
    sub_22CF1C22C(*(v99 + 56) + *(v103 + 72) * v57, v102, type metadata accessor for Activity);
    v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9F3840, &unk_22D01A2B0);
    v63 = *(v62 + 48);
    v64 = v109;
    *v109 = v60;
    v64[1] = v59;
    v53 = v64;
    sub_22CF0A72C(v61, v64 + v63, type metadata accessor for Activity);
    (*(*(v62 - 8) + 56))(v53, 0, 1, v62);

    v50 = v54;
    v51 = v104;
LABEL_28:
    v65 = v105;
    sub_22CF82724(v53, v105);
    v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9F3840, &unk_22D01A2B0);
    if ((*(*(v66 - 8) + 48))(v65, 1, v66) == 1)
    {

      v4 = v87;
      a3 = v86;
      a1 = v85;
      v36 = v84;
      v37 = v83;
      v38 = v88;
      goto LABEL_6;
    }

    v67 = v65[1];
    v100 = *v65;
    sub_22CF0A72C(v65 + *(v66 + 48), v51, type metadata accessor for Activity);
    if (sub_22D014F9C() == v107 && v68 == v106)
    {

      v49 = v101;
    }

    else
    {
      v69 = sub_22D016DFC();

      v49 = v101;
      if ((v69 & 1) == 0)
      {
        sub_22CF82794(v51, type metadata accessor for Activity);

        continue;
      }
    }

    v70 = *(v51 + *(v108 + 36));
    if (*(v70 + 16))
    {
      v82 = sub_22D01483C();
      v72 = *(v82 - 8);
      v81 = (*(v72 + 80) + 32) & ~*(v72 + 80);
      v73 = v90;
      (*v88)(&v90[*(v92 + 24)], v95, v96);
      type metadata accessor for ActivityParticipantEvent.EventType(0);
      swift_storeEnumTagMultiPayload();
      v74 = v92;
      (*(v72 + 16))(&v73[*(v92 + 28)], v70 + v81, v82);
      v75 = v74[9];
      v76 = sub_22D0146BC();
      (*(*(v76 - 8) + 56))(&v73[v75], 1, 1, v76);
      *v73 = v100;
      *(v73 + 1) = v67;
      *(v73 + 2) = 0;
      *(v73 + 3) = 0;
      v77 = &v73[v74[8]];
      *v77 = v93;
      v77[1] = &off_28402A658;
      v73[v74[10]] = 0;
      sub_22CF1C22C(v73, v91, type metadata accessor for ActivityParticipantEvent);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v98 = sub_22CFCE570(0, v98[2] + 1, 1, v98);
      }

      v79 = v98[2];
      v78 = v98[3];
      v51 = v104;
      if (v79 >= v78 >> 1)
      {
        v98 = sub_22CFCE570((v78 > 1), v79 + 1, 1, v98);
      }

      sub_22CF82794(v90, type metadata accessor for ActivityParticipantEvent);
      sub_22CF82794(v51, type metadata accessor for Activity);
      v80 = v98;
      v98[2] = v79 + 1;
      sub_22CF0A72C(v91, v80 + ((*(v89 + 80) + 32) & ~*(v89 + 80)) + *(v89 + 72) * v79, type metadata accessor for ActivityParticipantEvent);
      v49 = v101;
      goto LABEL_15;
    }

    sub_22CF82794(v51, type metadata accessor for Activity);
  }

  if (v49 <= i + 1)
  {
    v55 = i + 1;
  }

  else
  {
    v55 = v49;
  }

  v50 = v55 - 1;
  while (1)
  {
    v54 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v54 >= v49)
    {
      v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9F3840, &unk_22D01A2B0);
      (*(*(v71 - 8) + 56))(v53, 1, 1, v71);
      v48 = 0;
      goto LABEL_28;
    }

    v48 = *(v94 + 8 * v54);
    ++i;
    if (v48)
    {
      goto LABEL_27;
    }
  }

LABEL_44:
  __break(1u);
}

uint64_t sub_22CF82638()
{

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 24));

  sub_22CF460CC(v0 + 80);

  return swift_deallocClassInstance();
}

uint64_t sub_22CF826B4(uint64_t a1, uint64_t a2)
{
  v4 = *(*(v2 + 16) + 16);
  os_unfair_lock_lock(v4);
  *(v2 + 88) = a2;
  swift_unknownObjectWeakAssign();
  os_unfair_lock_unlock(v4);

  return swift_unknownObjectRelease();
}

uint64_t sub_22CF82724(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F3850, &unk_22D019D30);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_22CF82794(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_22CF8281C()
{
  v1 = *v0;
  sub_22D016EAC();
  if (v1)
  {
    v2 = 2;
  }

  else
  {
    v2 = 1;
  }

  MEMORY[0x2318C6020](v2);
  return sub_22D016ECC();
}

uint64_t sub_22CF8286C()
{
  if (*v0)
  {
    v1 = 2;
  }

  else
  {
    v1 = 1;
  }

  return MEMORY[0x2318C6020](v1);
}

uint64_t sub_22CF828A4(uint64_t a1)
{
  v2 = *v1;
  sub_22D016EAC();
  if (v2)
  {
    v3 = 2;
  }

  else
  {
    v3 = 1;
  }

  MEMORY[0x2318C6020](v3);
  return sub_22D016ECC();
}

void *sub_22CF828F0@<X0>(void *result@<X0>, char *a2@<X8>)
{
  if (*result == 2)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (*result == 1)
  {
    v3 = 0;
  }

  else
  {
    v3 = v2;
  }

  *a2 = v3;
  return result;
}

void sub_22CF82910(uint64_t *a1@<X8>)
{
  v2 = 1;
  if (*v1)
  {
    v2 = 2;
  }

  *a1 = v2;
}

uint64_t sub_22CF82928()
{
  v1 = *v0;
  sub_22D016EAC();
  if (v1)
  {
    v2 = 10;
  }

  else
  {
    v2 = 5;
  }

  MEMORY[0x2318C6020](v2);
  return sub_22D016ECC();
}

uint64_t sub_22CF8297C()
{
  if (*v0)
  {
    v1 = 10;
  }

  else
  {
    v1 = 5;
  }

  return MEMORY[0x2318C6020](v1);
}

uint64_t sub_22CF829B8(uint64_t a1)
{
  v2 = *v1;
  sub_22D016EAC();
  if (v2)
  {
    v3 = 10;
  }

  else
  {
    v3 = 5;
  }

  MEMORY[0x2318C6020](v3);
  return sub_22D016ECC();
}

void *sub_22CF82A08@<X0>(void *result@<X0>, char *a2@<X8>)
{
  if (*result == 10)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (*result == 5)
  {
    v3 = 0;
  }

  else
  {
    v3 = v2;
  }

  *a2 = v3;
  return result;
}

void sub_22CF82A28(uint64_t *a1@<X8>)
{
  v2 = 5;
  if (*v1)
  {
    v2 = 10;
  }

  *a1 = v2;
}

uint64_t sub_22CF82A44()
{
  v1 = *v0;
  sub_22D016EAC();
  MEMORY[0x2318C6020](v1 + 1);
  return sub_22D016ECC();
}

uint64_t sub_22CF82ABC(uint64_t a1)
{
  v2 = *v1;
  sub_22D016EAC();
  MEMORY[0x2318C6020](v2 + 1);
  return sub_22D016ECC();
}

uint64_t sub_22CF82B00@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_22CF832EC(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_22CF82B64(uint64_t a1)
{
  result = sub_22D01430C();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_22D01430C();
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

uint64_t __swift_store_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_22D01430C();
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

uint64_t sub_22CF82DD0(uint64_t a1)
{
  result = sub_22D01430C();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PowerLog.UpdateEvent.State(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for PowerLog.UpdateEvent.State(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Activity.CreationSource(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for Activity.CreationSource(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_22CF83138()
{
  result = qword_27D9F2B30;
  if (!qword_27D9F2B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9F2B30);
  }

  return result;
}

unint64_t sub_22CF83190()
{
  result = qword_27D9F2B38;
  if (!qword_27D9F2B38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9F2B38);
  }

  return result;
}

unint64_t sub_22CF831E8()
{
  result = qword_27D9F2B40;
  if (!qword_27D9F2B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9F2B40);
  }

  return result;
}

unint64_t sub_22CF83240()
{
  result = qword_27D9F2B48;
  if (!qword_27D9F2B48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9F2B48);
  }

  return result;
}

unint64_t sub_22CF83298()
{
  result = qword_27D9F2B50;
  if (!qword_27D9F2B50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9F2B50);
  }

  return result;
}

uint64_t sub_22CF832EC(unint64_t a1)
{
  if (a1 >= 5)
  {
    return 4;
  }

  else
  {
    return (0x302010004uLL >> (8 * a1));
  }
}

id sub_22CF83348(void *a1)
{
  [a1 selector];
  if (sub_22D0143EC())
  {

    return [a1 copyAsOnewayVoid];
  }

  else
  {

    return a1;
  }
}

id sub_22CF833C0(void *a1, uint64_t a2)
{
  v4 = sub_22D01561C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getObjectType();
  sub_22D014BEC();
  sub_22D016A3C();
  (*(v5 + 8))(v8, v4);
  sub_22D014BDC();
  v9 = sub_22D01666C();

  [a1 setService_];

  return [a1 setDelegate_];
}

void sub_22CF834EC(void *a1, uint64_t a2, char *a3, int a4)
{
  sub_22D014BDC();
  v8 = sub_22D01666C();

  v9 = [objc_opt_self() interfaceWithIdentifier_];

  v26 = sub_22CF83348;
  v27 = 0;
  v22 = MEMORY[0x277D85DD0];
  v23 = 1107296256;
  v24 = sub_22CEE5F40;
  v25 = &block_descriptor_47_2;
  v10 = _Block_copy(&v22);
  v11 = &unk_284040918;

  v12 = objc_opt_self();
  v13 = [v12 protocolForProtocol:v11 interpreter:v10];
  _Block_release(v10);

  [v9 setClient_];
  v14 = [v12 protocolForProtocol_];
  [v9 setServer_];

  v15 = [objc_opt_self() userInitiated];
  [a1 setServiceQuality_];

  [a1 setInterface_];
  [a1 setInterfaceTarget_];
  [a1 setTargetQueue_];
  v16 = swift_allocObject();
  *(v16 + 16) = a3;
  *(v16 + 24) = a4;
  v26 = sub_22CF84E84;
  v27 = v16;
  v22 = MEMORY[0x277D85DD0];
  v23 = 1107296256;
  v24 = sub_22D008590;
  v25 = &block_descriptor_53_0;
  v17 = _Block_copy(&v22);
  v18 = a3;

  [a1 setInterruptionHandler_];
  _Block_release(v17);
  v19 = swift_allocObject();
  *(v19 + 16) = v18;
  *(v19 + 24) = a4;
  v26 = sub_22CF84EAC;
  v27 = v19;
  v22 = MEMORY[0x277D85DD0];
  v23 = 1107296256;
  v24 = sub_22D008590;
  v25 = &block_descriptor_59_1;
  v20 = _Block_copy(&v22);
  v21 = v18;

  [a1 setInvalidationHandler_];
  _Block_release(v20);
}

void sub_22CF83860(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  v7 = sub_22D01637C();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v9);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22D01635C();
  v12 = sub_22D01636C();
  v13 = sub_22D0168EC();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_22CEE1000, v12, v13, a4, v14, 2u);
    MEMORY[0x2318C6860](v14, -1, -1);
  }

  (*(v8 + 8))(v11, v7);
  v15 = *(*(a2 + OBJC_IVAR____TtC11SessionCore36PresentationObservationServiceServer_lock) + 16);
  os_unfair_lock_lock(v15);
  swift_beginAccess();
  sub_22CFB3474(0, a3);
  swift_endAccess();
  os_unfair_lock_unlock(v15);
}

id sub_22CF83B90(uint64_t a1)
{
  *&v1[OBJC_IVAR____TtC11SessionCore36PresentationObservationServiceClient_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v3 = OBJC_IVAR____TtC11SessionCore36PresentationObservationServiceClient_lock;
  type metadata accessor for UnfairLock();
  v4 = swift_allocObject();
  v5 = swift_slowAlloc();
  *(v4 + 16) = v5;
  *v5 = 0;
  *&v1[v3] = v4;
  *&v1[OBJC_IVAR____TtC11SessionCore36PresentationObservationServiceClient__lock_bufferedPresentationUpdate] = 0;
  v1[OBJC_IVAR____TtC11SessionCore36PresentationObservationServiceClient__lock_pendingAck] = 0;
  v6 = OBJC_IVAR____TtC11SessionCore36PresentationObservationServiceClient__lock_predicate;
  v7 = sub_22D014A7C();
  (*(*(v7 - 8) + 56))(&v1[v6], 1, 1, v7);
  *&v1[OBJC_IVAR____TtC11SessionCore36PresentationObservationServiceClient_connection] = a1;
  v9.receiver = v1;
  v9.super_class = type metadata accessor for PresentationObservationServiceClient(0);
  return objc_msgSendSuper2(&v9, sel_init);
}

uint64_t sub_22CF83C98(uint64_t a1)
{
  v41 = a1;
  v2 = sub_22D01637C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22D0148AC();
  v39 = *(v7 - 8);
  v40 = v7;
  MEMORY[0x28223BE20](v7, v8);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9F2C88, qword_22D01A200);
  MEMORY[0x28223BE20](v11 - 8, v12);
  v14 = &v38 - v13;
  v15 = sub_22D014A7C();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15, v17);
  v19 = &v38 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ([*&v1[OBJC_IVAR____TtC11SessionCore36PresentationObservationServiceClient_connection] remoteTarget])
  {
    sub_22D016ACC();
    swift_unknownObjectRelease();
  }

  else
  {
    v47 = 0u;
    v48 = 0u;
  }

  aBlock = v47;
  v43 = v48;
  if (*(&v48 + 1))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2C98, &qword_22D01A218);
    if (swift_dynamicCast())
    {
      v20 = v46;
      v21 = *(*&v1[OBJC_IVAR____TtC11SessionCore36PresentationObservationServiceClient_lock] + 16);
      os_unfair_lock_lock(v21);
      v22 = OBJC_IVAR____TtC11SessionCore36PresentationObservationServiceClient__lock_predicate;
      swift_beginAccess();
      sub_22CF849CC(&v1[v22], v14);
      if ((*(v16 + 48))(v14, 1, v15) == 1)
      {
        sub_22CEEC3D8(v14, &unk_27D9F2C88, qword_22D01A200);
      }

      else
      {
        (*(v16 + 32))(v19, v14, v15);
        if ((v1[OBJC_IVAR____TtC11SessionCore36PresentationObservationServiceClient__lock_pendingAck] & 1) == 0)
        {
          v27 = v1;
          v1[OBJC_IVAR____TtC11SessionCore36PresentationObservationServiceClient__lock_pendingAck] = 1;
          v28 = sub_22D014A6C();
          (*(v16 + 8))(v19, v15);
          os_unfair_lock_unlock(v21);
          if (v28)
          {

            sub_22D01489C();
            sub_22CF84A3C(&qword_28143F6C0, MEMORY[0x277CB93C8], MEMORY[0x277CB93C0]);
            v29 = sub_22D01517C();
            v30 = sub_22D0141EC();
            v32 = v31;

            sub_22D01566C();
            v33 = sub_22D01563C();
            v34 = sub_22D0141DC();
            v35 = swift_allocObject();
            *(v35 + 16) = v27;
            *(v35 + 24) = v33;
            v44 = sub_22CF84A84;
            v45 = v35;
            *&aBlock = MEMORY[0x277D85DD0];
            *(&aBlock + 1) = 1107296256;
            *&v43 = sub_22CF217E0;
            *(&v43 + 1) = &block_descriptor_8;
            v36 = _Block_copy(&aBlock);
            v37 = v27;

            [v20 activityPresentationsDidChange:v34 completion:v36];
            sub_22CEE7524(v30, v32);
            _Block_release(v36);

            swift_unknownObjectRelease();

            return (*(v39 + 8))(v10, v40);
          }

          return swift_unknownObjectRelease();
        }

        (*(v16 + 8))(v19, v15);
        *&v1[OBJC_IVAR____TtC11SessionCore36PresentationObservationServiceClient__lock_bufferedPresentationUpdate] = v41;
      }

      os_unfair_lock_unlock(v21);
      return swift_unknownObjectRelease();
    }
  }

  else
  {
    sub_22CEEC3D8(&aBlock, &qword_27D9F2B10, &unk_22D01B930);
  }

  sub_22D01635C();
  v23 = sub_22D01636C();
  v24 = sub_22D0168EC();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    *v25 = 0;
    _os_log_impl(&dword_22CEE1000, v23, v24, "Client does not implement expected interface", v25, 2u);
    MEMORY[0x2318C6860](v25, -1, -1);
  }

  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_22CF842A8(uint64_t a1, uint64_t a2)
{
  v3 = *(*(a2 + OBJC_IVAR____TtC11SessionCore36PresentationObservationServiceClient_lock) + 16);
  os_unfair_lock_lock(v3);
  *(a2 + OBJC_IVAR____TtC11SessionCore36PresentationObservationServiceClient__lock_pendingAck) = 0;
  v4 = *(a2 + OBJC_IVAR____TtC11SessionCore36PresentationObservationServiceClient__lock_bufferedPresentationUpdate);
  *(a2 + OBJC_IVAR____TtC11SessionCore36PresentationObservationServiceClient__lock_bufferedPresentationUpdate) = 0;
  os_unfair_lock_unlock(v3);
  if (v4)
  {
    sub_22CF83C98(v4);
  }

  return sub_22D01562C();
}

id sub_22CF84378(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v4.receiver = v2;
  v4.super_class = a2(a1);
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t type metadata accessor for PresentationObservationServiceClient(uint64_t a1)
{
  result = qword_28143DC78;
  if (!qword_28143DC78)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_22CF84484(uint64_t a1)
{
  sub_22CF8454C(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_22CF8454C(uint64_t a1)
{
  if (!qword_28143F678)
  {
    sub_22D014A7C();
    v1 = sub_22D016A8C();
    if (!v2)
    {
      atomic_store(v1, &qword_28143F678);
    }
  }
}

uint64_t sub_22CF845A4(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9F2C88, qword_22D01A200);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v6 = &v16 - v5;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v8 = result;
    v9 = *(*(v1 + OBJC_IVAR____TtC11SessionCore36PresentationObservationServiceClient_lock) + 16);
    os_unfair_lock_lock(v9);
    v10 = sub_22D014A7C();
    v11 = *(v10 - 8);
    (*(v11 + 16))(v6, a1, v10);
    (*(v11 + 56))(v6, 0, 1, v10);
    v12 = OBJC_IVAR____TtC11SessionCore36PresentationObservationServiceClient__lock_predicate;
    swift_beginAccess();
    sub_22CF8495C(v6, v1 + v12);
    swift_endAccess();
    os_unfair_lock_unlock(v9);
    v13 = *(*(v8 + OBJC_IVAR____TtC11SessionCore36PresentationObservationServiceServer_lock) + 16);
    os_unfair_lock_lock(v13);
    v14 = OBJC_IVAR____TtC11SessionCore36PresentationObservationServiceServer__lock_presentations;
    swift_beginAccess();
    v15 = *(v8 + v14);

    os_unfair_lock_unlock(v13);
    sub_22CF83C98(v15);
    swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_22CF8495C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9F2C88, qword_22D01A200);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_22CF849CC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9F2C88, qword_22D01A200);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22CF84A3C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_22CF84A8C(void *a1)
{
  v2 = v1;
  v4 = sub_22D01637C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &aBlock[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [a1 remoteProcess];
  v10 = sub_22D01666C();
  v11 = [v9 hasEntitlement_];

  if (v11)
  {
    v12 = objc_allocWithZone(type metadata accessor for PresentationObservationServiceClient(0));
    v13 = a1;
    v14 = sub_22CF83B90(v13);
    v15 = [v13 remoteProcess];
    v16 = [v15 pid];

    *&v14[OBJC_IVAR____TtC11SessionCore36PresentationObservationServiceClient_delegate + 8] = &off_28402A988;
    swift_unknownObjectWeakAssign();
    v17 = *(*&v2[OBJC_IVAR____TtC11SessionCore36PresentationObservationServiceServer_lock] + 16);
    os_unfair_lock_lock(v17);
    v18 = OBJC_IVAR____TtC11SessionCore36PresentationObservationServiceServer__lock_clients;
    swift_beginAccess();
    v19 = v14;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v32 = *&v2[v18];
    *&v2[v18] = 0x8000000000000000;
    sub_22CFBFA04(v19, v16, isUniquelyReferenced_nonNull_native);
    *&v2[v18] = v32;
    swift_endAccess();
    os_unfair_lock_unlock(v17);
    v21 = swift_allocObject();
    *(v21 + 16) = v19;
    *(v21 + 24) = v2;
    *(v21 + 32) = v16;
    v22 = swift_allocObject();
    *(v22 + 16) = sub_22CF84E78;
    *(v22 + 24) = v21;
    aBlock[4] = sub_22CEE5B1C;
    aBlock[5] = v22;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_22CEE5AA0;
    aBlock[3] = &block_descriptor_44_0;
    v23 = _Block_copy(aBlock);
    v24 = v19;
    v25 = v2;

    [v13 configureConnection_];
    _Block_release(v23);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }

    else
    {
      [v13 activate];
    }
  }

  else
  {
    sub_22D01635C();
    v27 = sub_22D01636C();
    v28 = sub_22D0168EC();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&dword_22CEE1000, v27, v28, "Process is not entitled to listen to the presentation service", v29, 2u);
      MEMORY[0x2318C6860](v29, -1, -1);
    }

    (*(v5 + 8))(v8, v4);
    [a1 invalidate];
  }
}

double sub_22CF84EF0(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_22CF84F50(v2);
  }

  return result;
}

void sub_22CF84F50(uint64_t a1)
{
  v3 = type metadata accessor for ActivityParticipantEvent(0);
  v4 = *(v3 - 8);
  v6 = MEMORY[0x28223BE20](v3 - 8, v5);
  v43 = v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v8);
  v10 = v36 - v9;
  v11 = *(v1 + 16);
  v12 = *(v11 + 16);
  os_unfair_lock_lock(v12);
  Strong = swift_unknownObjectWeakLoadStrong();
  v14 = *(v1 + 88);
  os_unfair_lock_unlock(v12);
  if (Strong)
  {
    v15 = *(v11 + 16);
    os_unfair_lock_lock(v15);
    sub_22CF8533C(a1, v1, &v44);
    os_unfair_lock_unlock(v15);
    v16 = v44;
    v17 = v44[2];
    v18 = v43;
    if (v17)
    {
      ObjectType = swift_getObjectType();
      v41 = *(v14 + 24);
      v42 = v14 + 24;
      v20 = *(v4 + 80);
      v36[1] = v16;
      v21 = v16 + ((v20 + 32) & ~v20);
      v22 = *(v4 + 72);
      *&v23 = 136446210;
      v37 = v23;
      v39 = ObjectType;
      v40 = v10;
      v38 = v22;
      do
      {
        sub_22CF1C22C(v21, v10, type metadata accessor for ActivityParticipantEvent);
        if (qword_28143DAB8 != -1)
        {
          swift_once();
        }

        v24 = sub_22D01637C();
        __swift_project_value_buffer(v24, qword_281444338);
        sub_22CF1C22C(v10, v18, type metadata accessor for ActivityParticipantEvent);
        v25 = sub_22D01636C();
        v26 = sub_22D01690C();
        if (os_log_type_enabled(v25, v26))
        {
          v27 = swift_slowAlloc();
          v28 = swift_slowAlloc();
          v44 = v28;
          *v27 = v37;
          v29 = v14;
          v30 = Strong;
          v31 = *v18;
          v32 = *(v43 + 8);

          sub_22CF82794(v43, type metadata accessor for ActivityParticipantEvent);
          v33 = sub_22CEEE31C(v31, v32, &v44);
          v18 = v43;

          *(v27 + 4) = v33;
          Strong = v30;
          v14 = v29;
          v10 = v40;
          _os_log_impl(&dword_22CEE1000, v25, v26, "Ending activity because authorization was revoked: %{public}s", v27, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v28);
          v34 = v28;
          v22 = v38;
          MEMORY[0x2318C6860](v34, -1, -1);
          v35 = v27;
          ObjectType = v39;
          MEMORY[0x2318C6860](v35, -1, -1);
        }

        else
        {

          sub_22CF82794(v18, type metadata accessor for ActivityParticipantEvent);
        }

        v41(v10, ObjectType, v14);
        sub_22CF82794(v10, type metadata accessor for ActivityParticipantEvent);
        v21 += v22;
        --v17;
      }

      while (v17);
      swift_unknownObjectRelease();
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }
}

void sub_22CF8533C(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = v3;
  v92 = type metadata accessor for ActivityParticipantEvent(0);
  v89 = *(v92 - 8);
  v9 = MEMORY[0x28223BE20](v92, v8);
  v91 = &v81 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9, v11);
  v90 = &v81 - v12;
  v108 = type metadata accessor for Activity(0);
  v103 = *(v108 - 8);
  v14 = MEMORY[0x28223BE20](v108, v13);
  v104 = &v81 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14, v16);
  v102 = &v81 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F3850, &unk_22D019D30);
  v20 = MEMORY[0x28223BE20](v18 - 8, v19);
  v22 = &v81 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20, v23);
  v105 = (&v81 - v24);
  v25 = sub_22D01495C();
  MEMORY[0x28223BE20](v25 - 8, v26);
  v96 = sub_22D01486C();
  v27 = *(v96 - 8);
  MEMORY[0x28223BE20](v96, v28);
  v30 = &v81 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22D01494C();
  v95 = v30;
  sub_22D01485C();
  v31 = *(a1 + 64);
  v97 = a1 + 64;
  v32 = 1 << *(a1 + 32);
  if (v32 < 64)
  {
    v33 = ~(-1 << v32);
  }

  else
  {
    v33 = -1;
  }

  v34 = v33 & v31;

  v93 = a2;
  swift_beginAccess();
  v35 = 0;
  v36 = v27;
  v37 = (v32 + 63) >> 6;
  v38 = (v27 + 16);
  v98 = MEMORY[0x277D84F90];
  v109 = v22;
  do
  {
LABEL_6:
    if (!v34)
    {
      do
      {
        v41 = v35 + 1;
        if (__OFADD__(v35, 1))
        {
          __break(1u);
          goto LABEL_44;
        }

        if (v41 >= v37)
        {

          (*(v36 + 8))(v95, v96);
          *a3 = v98;
          return;
        }

        v34 = *(v97 + 8 * v41);
        ++v35;
      }

      while (!v34);
      v35 = v41;
    }

    v39 = __clz(__rbit64(v34));
    v34 &= v34 - 1;
    v40 = v39 | (v35 << 6);
  }

  while ((*(*(a1 + 56) + v40) & 1) != 0);
  v88 = v38;
  v83 = v37;
  v84 = v36;
  v86 = a3;
  v87 = v4;
  v85 = a1;
  v42 = (*(a1 + 48) + 16 * v40);
  v43 = *v42;
  v106 = v42[1];
  v107 = v43;
  v44 = *(v93 + 72);
  v45 = *(v44 + 64);
  v94 = v44 + 64;
  v46 = 1 << *(v44 + 32);
  if (v46 < 64)
  {
    v47 = ~(-1 << v46);
  }

  else
  {
    v47 = -1;
  }

  v48 = v47 & v45;
  v49 = (v46 + 63) >> 6;

  v99 = v44;

  v50 = 0;
  v51 = v104;
  v101 = v49;
LABEL_15:
  for (i = v50; ; i = v50)
  {
    v53 = v109;
    if (!v48)
    {
      break;
    }

    v54 = i;
LABEL_27:
    v56 = __clz(__rbit64(v48));
    v48 &= v48 - 1;
    v57 = v56 | (v54 << 6);
    v58 = (*(v99 + 48) + 16 * v57);
    v60 = *v58;
    v59 = v58[1];
    v61 = v102;
    sub_22CF1C22C(*(v99 + 56) + *(v103 + 72) * v57, v102, type metadata accessor for Activity);
    v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9F3840, &unk_22D01A2B0);
    v63 = *(v62 + 48);
    v64 = v109;
    *v109 = v60;
    v64[1] = v59;
    v53 = v64;
    sub_22CF0A72C(v61, v64 + v63, type metadata accessor for Activity);
    (*(*(v62 - 8) + 56))(v53, 0, 1, v62);

    v50 = v54;
    v51 = v104;
LABEL_28:
    v65 = v105;
    sub_22CF82724(v53, v105);
    v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9F3840, &unk_22D01A2B0);
    if ((*(*(v66 - 8) + 48))(v65, 1, v66) == 1)
    {

      v4 = v87;
      a3 = v86;
      a1 = v85;
      v36 = v84;
      v37 = v83;
      v38 = v88;
      goto LABEL_6;
    }

    v67 = v65[1];
    v100 = *v65;
    sub_22CF0A72C(v65 + *(v66 + 48), v51, type metadata accessor for Activity);
    if (sub_22D014F9C() == v107 && v68 == v106)
    {

      v49 = v101;
    }

    else
    {
      v69 = sub_22D016DFC();

      v49 = v101;
      if ((v69 & 1) == 0)
      {
        sub_22CF82794(v51, type metadata accessor for Activity);

        continue;
      }
    }

    v70 = *(v51 + *(v108 + 36));
    if (*(v70 + 16))
    {
      v82 = sub_22D01483C();
      v72 = *(v82 - 8);
      v81 = (*(v72 + 80) + 32) & ~*(v72 + 80);
      v73 = v90;
      (*v88)(&v90[*(v92 + 24)], v95, v96);
      type metadata accessor for ActivityParticipantEvent.EventType(0);
      swift_storeEnumTagMultiPayload();
      v74 = v92;
      (*(v72 + 16))(&v73[*(v92 + 28)], v70 + v81, v82);
      v75 = v74[9];
      v76 = sub_22D0146BC();
      (*(*(v76 - 8) + 56))(&v73[v75], 1, 1, v76);
      *v73 = v100;
      *(v73 + 1) = v67;
      *(v73 + 2) = 0;
      *(v73 + 3) = 0;
      v77 = &v73[v74[8]];
      *v77 = v93;
      v77[1] = &off_28402AB40;
      v73[v74[10]] = 0;
      sub_22CF1C22C(v73, v91, type metadata accessor for ActivityParticipantEvent);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v98 = sub_22CFCE570(0, v98[2] + 1, 1, v98);
      }

      v79 = v98[2];
      v78 = v98[3];
      v51 = v104;
      if (v79 >= v78 >> 1)
      {
        v98 = sub_22CFCE570((v78 > 1), v79 + 1, 1, v98);
      }

      sub_22CF82794(v90, type metadata accessor for ActivityParticipantEvent);
      sub_22CF82794(v51, type metadata accessor for Activity);
      v80 = v98;
      v98[2] = v79 + 1;
      sub_22CF0A72C(v91, v80 + ((*(v89 + 80) + 32) & ~*(v89 + 80)) + *(v89 + 72) * v79, type metadata accessor for ActivityParticipantEvent);
      v49 = v101;
      goto LABEL_15;
    }

    sub_22CF82794(v51, type metadata accessor for Activity);
  }

  if (v49 <= i + 1)
  {
    v55 = i + 1;
  }

  else
  {
    v55 = v49;
  }

  v50 = v55 - 1;
  while (1)
  {
    v54 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v54 >= v49)
    {
      v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9F3840, &unk_22D01A2B0);
      (*(*(v71 - 8) + 56))(v53, 1, 1, v71);
      v48 = 0;
      goto LABEL_28;
    }

    v48 = *(v94 + 8 * v54);
    ++i;
    if (v48)
    {
      goto LABEL_27;
    }
  }

LABEL_44:
  __break(1u);
}

uint64_t sub_22CF85D30()
{
  sub_22CF460CC(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for PermissionsError(uint64_t a1)
{
  result = qword_27D9F2CA0;
  if (!qword_27D9F2CA0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_22CF85EEC(uint64_t a1)
{
  sub_22CF85F60();
  if (v1 <= 0x3F)
  {
    sub_22D01502C();
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_22CF85F60()
{
  if (!qword_27D9F2CB0)
  {
    v0 = sub_22D0145EC();
    if (!v1)
    {
      atomic_store(v0, &qword_27D9F2CB0);
    }
  }
}

id sub_22CF85FA8(void *a1, uint64_t a2)
{
  v4 = sub_22D01561C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getObjectType();
  sub_22D01519C();
  sub_22D016A3C();
  (*(v5 + 8))(v8, v4);
  sub_22D01518C();
  v9 = sub_22D01666C();

  [a1 setService_];

  return [a1 setDelegate_];
}

void sub_22CF860D4(void *a1, uint64_t a2)
{
  sub_22D01518C();
  v4 = sub_22D01666C();

  v5 = [objc_opt_self() interfaceWithIdentifier_];

  v6 = objc_opt_self();
  v7 = [v6 protocolForProtocol_];
  [v5 setClient_];

  v8 = [v6 protocolForProtocol_];
  [v5 setServer_];

  v9 = [objc_opt_self() utility];
  [a1 setServiceQuality_];

  [a1 setInterface_];
  [a1 setInterfaceTarget_];
  v16 = sub_22CF86338;
  v17 = 0;
  v12 = MEMORY[0x277D85DD0];
  v13 = 1107296256;
  v14 = sub_22D008590;
  v15 = &block_descriptor_13_0;
  v10 = _Block_copy(&v12);
  [a1 setInterruptionHandler_];
  _Block_release(v10);
  v16 = sub_22CF863D4;
  v17 = 0;
  v12 = MEMORY[0x277D85DD0];
  v13 = 1107296256;
  v14 = sub_22D008590;
  v15 = &block_descriptor_16;
  v11 = _Block_copy(&v12);
  [a1 setInvalidationHandler_];
  _Block_release(v11);
}

uint64_t sub_22CF86338()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2E08, qword_22D01A460);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_22D0187A0;
  *(v0 + 56) = MEMORY[0x277D837D0];
  *(v0 + 32) = 0xD000000000000016;
  *(v0 + 40) = 0x800000022D020110;
  sub_22D016E7C();
}

uint64_t sub_22CF863D4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2E08, qword_22D01A460);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_22D0187A0;
  *(v0 + 56) = MEMORY[0x277D837D0];
  *(v0 + 32) = 0xD000000000000016;
  *(v0 + 40) = 0x800000022D0200F0;
  sub_22D016E7C();
}

id sub_22CF86534()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for StateCaptureServiceServer();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void *sub_22CF865E8(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_project_boxed_opaque_existential_1((v2 + OBJC_IVAR____TtC11SessionCore25StateCaptureServiceServer_stateCaptureManager), *(v2 + OBJC_IVAR____TtC11SessionCore25StateCaptureServiceServer_stateCaptureManager + 24));
    v5 = sub_22CF685BC(a1, a2);
    v6 = MEMORY[0x277D84F98];
    if (v5)
    {
      v7 = *(v5 + 48);

      v9 = v7(v8);

      v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2DA0, &unk_22D01A450);
      *&v55 = v9;
      sub_22CF1D288(&v55, v54);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v57[0] = v6;
      sub_22CFBFA18(v54, a1, a2, isUniquelyReferenced_nonNull_native);

      return v57[0];
    }

    return v6;
  }

  v52 = (v2 + OBJC_IVAR____TtC11SessionCore25StateCaptureServiceServer_stateCaptureManager);
  __swift_project_boxed_opaque_existential_1((v2 + OBJC_IVAR____TtC11SessionCore25StateCaptureServiceServer_stateCaptureManager), *(v2 + OBJC_IVAR____TtC11SessionCore25StateCaptureServiceServer_stateCaptureManager + 24));
  if (qword_281441CE0 != -1)
  {
LABEL_34:
    swift_once();
  }

  v51 = off_281441CE8[0];
  v11 = *(off_281441CE8[0] + 16);
  os_unfair_lock_lock(v11);
  swift_beginAccess();

  v12 = sub_22CF7C51C();
  os_unfair_lock_unlock(v11);
  v13 = 0;
  v14 = v12 + 56;
  v53 = v12;
  v15 = 1 << *(v12 + 32);
  v16 = -1;
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  v17 = v16 & *(v12 + 56);
  v18 = (v15 + 63) >> 6;
  v48 = MEMORY[0x277D84F98];
  while (1)
  {
    while (1)
    {
      if (!v17)
      {
        while (1)
        {
          v19 = v13 + 1;
          if (__OFADD__(v13, 1))
          {
            break;
          }

          if (v19 >= v18)
          {

            return v48;
          }

          v17 = *(v14 + 8 * v19);
          ++v13;
          if (v17)
          {
            v13 = v19;
            goto LABEL_17;
          }
        }

        __break(1u);
        goto LABEL_34;
      }

LABEL_17:
      v20 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
      v21 = (*(v53 + 48) + ((v13 << 10) | (16 * v20)));
      v23 = *v21;
      v22 = v21[1];
      v24 = *__swift_project_boxed_opaque_existential_1(v52, v52[3]);
      v25 = *(v51 + 16);

      os_unfair_lock_lock(v25);
      swift_beginAccess();
      v26 = *(v24 + 16);
      if (!*(v26 + 16))
      {
        goto LABEL_10;
      }

      v27 = sub_22CEEC698(v23, v22);
      if ((v28 & 1) == 0)
      {

LABEL_10:
        os_unfair_lock_unlock(v25);
        goto LABEL_11;
      }

      v29 = *(*(v26 + 56) + 8 * v27);

      os_unfair_lock_unlock(v25);
      if (v29)
      {
        break;
      }

LABEL_11:
    }

    v30 = *(v29 + 48);

    v32 = v30(v31);

    v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2DA0, &unk_22D01A450);
    *&v55 = v32;
    sub_22CF1D288(&v55, v54);
    v47 = swift_isUniquelyReferenced_nonNull_native();
    v58 = v48;
    v34 = sub_22CEEC698(v23, v22);
    v35 = v48[2];
    v36 = (v33 & 1) == 0;
    v37 = v35 + v36;
    if (__OFADD__(v35, v36))
    {
      break;
    }

    if (v48[3] >= v37)
    {
      if (v47)
      {
        if ((v33 & 1) == 0)
        {
          goto LABEL_29;
        }
      }

      else
      {
        v50 = v33;
        sub_22CFB72D0();
        if ((v50 & 1) == 0)
        {
          goto LABEL_29;
        }
      }

LABEL_27:

      v48 = v58;
      v40 = (v58[7] + 32 * v34);
      __swift_destroy_boxed_opaque_existential_1Tm(v40);
      sub_22CF1D288(v54, v40);
    }

    else
    {
      v49 = v33;
      sub_22CFBA2E8(v37, v47);
      v38 = sub_22CEEC698(v23, v22);
      if ((v49 & 1) != (v39 & 1))
      {
        goto LABEL_37;
      }

      v34 = v38;
      if (v49)
      {
        goto LABEL_27;
      }

LABEL_29:
      v41 = v58;
      v58[(v34 >> 6) + 8] |= 1 << v34;
      v42 = (v41[6] + 16 * v34);
      *v42 = v23;
      v42[1] = v22;
      sub_22CF1D288(v54, (v41[7] + 32 * v34));

      v43 = v41[2];
      v44 = __OFADD__(v43, 1);
      v45 = v43 + 1;
      if (v44)
      {
        goto LABEL_36;
      }

      v48 = v41;
      v41[2] = v45;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  result = sub_22D016E1C();
  __break(1u);
  return result;
}

void sub_22CF86B14(void *a1)
{
  v3 = [a1 remoteProcess];
  v4 = sub_22D01666C();
  v5 = [v3 hasEntitlement_];

  if (v5)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v1;
    v7 = swift_allocObject();
    *(v7 + 16) = sub_22CF86D08;
    *(v7 + 24) = v6;
    v11[4] = sub_22CEE5B1C;
    v11[5] = v7;
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 1107296256;
    v11[2] = sub_22CEE5AA0;
    v11[3] = &block_descriptor_9;
    v8 = _Block_copy(v11);
    v9 = v1;

    [a1 configureConnection_];
    _Block_release(v8);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }

    else
    {
      [a1 activate];
    }
  }

  else
  {

    [a1 invalidate];
  }
}

double sub_22CF86D34()
{
  v1 = *__swift_project_boxed_opaque_existential_1((v0 + 96), *(v0 + 120));
  v2 = [objc_opt_self() enumeratorWithOptions_];
  v25[4] = sub_22CF88644;
  v25[5] = v1;
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 1107296256;
  v25[2] = sub_22CF885EC;
  v25[3] = &block_descriptor_10;
  v3 = _Block_copy(v25);

  [v2 setFilter_];
  _Block_release(v3);
  v4 = [v2 nextObject];
  if (v4)
  {
    v5 = v4;
    v6 = MEMORY[0x277D84F90];
    do
    {
      v7 = [v5 bundleIdentifier];
      if (v7)
      {
        v9 = v7;
        v10 = sub_22D01667C();
        v12 = v11;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v6 = sub_22CFCE000(0, *(v6 + 2) + 1, 1, v6);
        }

        v14 = *(v6 + 2);
        v13 = *(v6 + 3);
        if (v14 >= v13 >> 1)
        {
          v6 = sub_22CFCE000((v13 > 1), v14 + 1, 1, v6);
        }

        *(v6 + 2) = v14 + 1;
        v15 = &v6[16 * v14];
        *(v15 + 4) = v10;
        *(v15 + 5) = v12;
        v8 = [v2 nextObject];
      }

      else
      {

        v8 = [v2 nextObject];
      }

      v5 = v8;
    }

    while (v5);
  }

  else
  {
    v6 = MEMORY[0x277D84F90];
  }

  v16 = sub_22CF7BDC4(v6);

  v17 = sub_22CF87CE4();
  v18 = sub_22CF7BDC4(v17);

  if (*(v18 + 16) <= *(v16 + 16) >> 3)
  {
    v25[0] = v16;

    sub_22CF627A8(v18);
    v19 = v25[0];
  }

  else
  {

    v19 = sub_22CF62C50(v18, v16);
  }

  if (*(v16 + 16) <= *(v18 + 16) >> 3)
  {
    goto LABEL_20;
  }

  v18 = sub_22CF62C50(v16, v18);

  v20 = *(v19 + 16);
  if (v20)
  {
    while (1)
    {
      v16 = sub_22CEE561C(v20, 0);
      v19 = sub_22CEE56A4(v25, (v16 + 32), v20, v19);
      sub_22CEE57FC(v25[0]);
      if (v19 == v20)
      {
        break;
      }

      __break(1u);
LABEL_20:
      v25[0] = v18;
      sub_22CF627A8(v16);

      v18 = v25[0];
      v20 = *(v19 + 16);
      if (!v20)
      {
        goto LABEL_21;
      }
    }
  }

  else
  {
LABEL_21:

    v16 = MEMORY[0x277D84F90];
  }

  sub_22CF874AC(v16);

  v21 = *(v18 + 16);
  if (!v21)
  {
    goto LABEL_25;
  }

  v22 = sub_22CEE561C(*(v18 + 16), 0);
  v23 = sub_22CEE56A4(v25, v22 + 4, v21, v18);
  sub_22CEE57FC(v25[0]);
  if (v23 != v21)
  {
    __break(1u);
LABEL_25:

    v22 = MEMORY[0x277D84F90];
  }

  sub_22CF880A4(v22);

  return result;
}

double sub_22CF870F4(uint64_t a1)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_22CF86D34();
  }

  return result;
}

double sub_22CF8714C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_22CF86D34();
  }

  return result;
}

void sub_22CF871C8()
{
  v1 = v0;
  swift_beginAccess();
  v2 = *(v0 + 224);
  if ((v2 & 0xC000000000000001) != 0)
  {

    swift_unknownObjectRetain();
    sub_22D016B3C();
    sub_22D01640C();
    sub_22CF87454();
    sub_22D01689C();
    v4 = v18;
    v3 = v19;
    v5 = v20;
    v6 = v21;
    v7 = v22;
  }

  else
  {
    v8 = -1 << *(v2 + 32);
    v3 = v2 + 56;
    v5 = ~v8;
    v9 = -v8;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v7 = v10 & *(v2 + 56);
    swift_bridgeObjectRetain_n();
    v6 = 0;
    v4 = v2;
  }

  v11 = (v5 + 64) >> 6;
  if (v4 < 0)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v12 = v6;
    v13 = v7;
    v14 = v6;
    if (!v7)
    {
      break;
    }

LABEL_12:
    v15 = (v13 - 1) & v13;
    v16 = *(*(v4 + 48) + ((v14 << 9) | (8 * __clz(__rbit64(v13)))));

    if (!v16)
    {
LABEL_18:
      sub_22CEE57FC(v4);

      __swift_destroy_boxed_opaque_existential_1Tm((v1 + 16));
      __swift_destroy_boxed_opaque_existential_1Tm((v1 + 56));
      __swift_destroy_boxed_opaque_existential_1Tm((v1 + 96));
      __swift_destroy_boxed_opaque_existential_1Tm((v1 + 136));
      __swift_destroy_boxed_opaque_existential_1Tm((v1 + 176));

      return;
    }

    while (1)
    {
      sub_22D0163FC();

      v6 = v14;
      v7 = v15;
      if ((v4 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_14:
      if (sub_22D016BAC())
      {
        sub_22D01640C();
        swift_dynamicCast();
        v14 = v6;
        v15 = v7;
        if (v17)
        {
          continue;
        }
      }

      goto LABEL_18;
    }
  }

  while (1)
  {
    v14 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v14 >= v11)
    {
      goto LABEL_18;
    }

    v13 = *(v3 + 8 * v14);
    ++v12;
    if (v13)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
}

uint64_t sub_22CF873FC()
{
  sub_22CF871C8();

  return swift_deallocClassInstance();
}

unint64_t sub_22CF87454()
{
  result = qword_27D9F2678;
  if (!qword_27D9F2678)
  {
    sub_22D01640C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9F2678);
  }

  return result;
}

uint64_t sub_22CF874AC(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2700, &unk_22D01AEA0);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v19 - v6;
  v8 = sub_22D015C8C();
  result = MEMORY[0x28223BE20](v8, v9);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(a1 + 16);
  if (v14)
  {
    v15 = (v11 + 48);
    v19 = (v11 + 8);
    v20 = (v11 + 32);
    v16 = (a1 + 40);
    do
    {
      v17 = *(v16 - 1);
      v18 = *v16;

      sub_22CF876A4(v17, v18, v7);

      if ((*v15)(v7, 1, v8) == 1)
      {
        result = sub_22CF886DC(v7);
      }

      else
      {
        (*v20)(v13, v7, v8);
        __swift_project_boxed_opaque_existential_1((v2 + 56), *(v2 + 80));
        sub_22D015F6C();
        result = (*v19)(v13, v8);
      }

      v16 += 2;
      --v14;
    }

    while (v14);
  }

  return result;
}

uint64_t sub_22CF876A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v63 = a1;
  v6 = sub_22D0162DC();
  v54 = *(v6 - 8);
  v55 = v6;
  MEMORY[0x28223BE20](v6, v7);
  v53 = &v53 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_22D0161DC();
  v60 = *(v9 - 8);
  v61 = v9;
  MEMORY[0x28223BE20](v9, v10);
  v62 = &v53 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2700, &unk_22D01AEA0);
  v14 = MEMORY[0x28223BE20](v12 - 8, v13);
  v58 = &v53 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14, v16);
  v59 = &v53 - v17;
  v18 = *__swift_project_boxed_opaque_existential_1(v3 + 12, v3[15]);
  v19 = [objc_opt_self() enumeratorWithOptions_];
  v68 = sub_22CF88784;
  v69 = v18;
  aBlock = MEMORY[0x277D85DD0];
  v65 = 1107296256;
  v66 = sub_22CF885EC;
  v67 = &block_descriptor_9;
  v20 = _Block_copy(&aBlock);

  [v19 setFilter_];
  _Block_release(v20);
  v21 = [v19 nextObject];
  if (v21)
  {
    v22 = v21;
    v23 = MEMORY[0x277D84F90];
    do
    {
      while (1)
      {
        v24 = [v22 bundleIdentifier];
        if (v24)
        {
          break;
        }

        v22 = [v19 nextObject];
        if (!v22)
        {
          goto LABEL_13;
        }
      }

      v56 = v3;
      v57 = a3;
      v25 = v24;
      v26 = sub_22D01667C();
      v28 = v27;

      v29 = a2;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v23 = sub_22CFCE000(0, *(v23 + 2) + 1, 1, v23);
      }

      v31 = *(v23 + 2);
      v30 = *(v23 + 3);
      if (v31 >= v30 >> 1)
      {
        v23 = sub_22CFCE000((v30 > 1), v31 + 1, 1, v23);
      }

      *(v23 + 2) = v31 + 1;
      v32 = &v23[16 * v31];
      *(v32 + 4) = v26;
      *(v32 + 5) = v28;
      v22 = [v19 nextObject];
      a2 = v29;
      v3 = v56;
      a3 = v57;
    }

    while (v22);
  }

  else
  {
    v23 = MEMORY[0x277D84F90];
  }

LABEL_13:

  v33 = v63;
  aBlock = v63;
  v65 = a2;
  MEMORY[0x28223BE20](v34, v35);
  *(&v53 - 2) = &aBlock;
  v36 = sub_22CEE7430(sub_22CF88744, (&v53 - 4), v23);

  if (v36)
  {

    v37 = v62;
    sub_22D0161EC();
    __swift_project_boxed_opaque_existential_1(v3 + 7, v3[10]);
    v38 = sub_22D015F2C();
    MEMORY[0x28223BE20](v38, v39);
    *(&v53 - 2) = v37;
    v40 = v58;
    sub_22CF11BC8(sub_22CF88764, v38, v58);

    v41 = v59;
    sub_22CF8866C(v40, v59);
    v42 = v60[1];
    v43 = v37;
    v44 = v61;
    v42(v43, v61);
    v45 = sub_22D015C8C();
    v46 = *(v45 - 8);
    LODWORD(v38) = (*(v46 + 48))(v41, 1, v45);
    sub_22CF886DC(v41);
    if (v38 == 1 && (v47 = sub_22CFE04C4(v33, a2), v48))
    {
      v60 = v47;

      v49 = v62;
      sub_22D0161EC();
      v50 = v53;
      sub_22D015B2C();
      sub_22D015B1C();

      (*(v54 + 8))(v50, v55);
      v42(v49, v44);
      return (*(v46 + 56))(a3, 0, 1, v45);
    }

    else
    {
      return (*(v46 + 56))(a3, 1, 1, v45);
    }
  }

  else
  {
    v52 = sub_22D015C8C();
    return (*(*(v52 - 8) + 56))(a3, 1, 1, v52);
  }
}

char *sub_22CF87CE4()
{
  v36 = sub_22D0161DC();
  v1 = *(v36 - 8);
  MEMORY[0x28223BE20](v36, v2);
  v35 = v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = sub_22D015B9C();
  v4 = *(v38 - 8);
  MEMORY[0x28223BE20](v38, v5);
  v7 = v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = sub_22D015C8C();
  v8 = *(v37 - 8);
  MEMORY[0x28223BE20](v37, v9);
  v11 = v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1((v0 + 56), *(v0 + 80));
  v12 = sub_22D015F2C();
  v13 = *(v12 + 16);
  if (v13)
  {
    v15 = *(v8 + 16);
    v14 = v8 + 16;
    v16 = *(v14 + 64);
    v33[1] = v12;
    v17 = v12 + ((v16 + 32) & ~v16);
    v43 = *(v14 + 56);
    v44 = v15;
    v42 = (v4 + 88);
    v41 = *MEMORY[0x277D4D548];
    v45 = v14;
    v18 = v1;
    v19 = (v14 - 8);
    v20 = (v4 + 8);
    v34 = (v18 + 8);
    v21 = MEMORY[0x277D84F90];
    v23 = v37;
    v22 = v38;
    v15(v11, v17, v37);
    while (1)
    {
      sub_22D015BDC();
      v24 = (*v42)(v7, v22);
      if (v24 == v41)
      {
        (*v20)(v7, v22);
        v25 = v35;
        sub_22D015C5C();
        v26 = sub_22D01619C();
        v39 = v27;
        v40 = v26;
        (*v34)(v25, v36);
        (*v19)(v11, v23);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v21 = sub_22CFCE000(0, *(v21 + 2) + 1, 1, v21);
        }

        v29 = *(v21 + 2);
        v28 = *(v21 + 3);
        if (v29 >= v28 >> 1)
        {
          v21 = sub_22CFCE000((v28 > 1), v29 + 1, 1, v21);
        }

        *(v21 + 2) = v29 + 1;
        v30 = &v21[16 * v29];
        v31 = v39;
        *(v30 + 4) = v40;
        *(v30 + 5) = v31;
        v23 = v37;
        v22 = v38;
      }

      else
      {
        (*v19)(v11, v23);
        (*v20)(v7, v22);
      }

      v17 += v43;
      if (!--v13)
      {
        break;
      }

      v44(v11, v17, v23);
    }
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return v21;
}

uint64_t sub_22CF880A4(uint64_t a1)
{
  v2 = v1;
  v39 = sub_22D0161DC();
  v4 = *(v39 - 8);
  MEMORY[0x28223BE20](v39, v5);
  v36 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2700, &unk_22D01AEA0);
  v9 = MEMORY[0x28223BE20](v7 - 8, v8);
  v38 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9, v11);
  v13 = &v29 - v12;
  v37 = sub_22D015C8C();
  result = MEMORY[0x28223BE20](v37, v14);
  v32 = &v29 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(a1 + 16);
  if (v18)
  {
    v19 = 0;
    v34 = (v16 + 48);
    v35 = (v4 + 8);
    v30 = (v16 + 8);
    v31 = (v16 + 32);
    v20 = a1 + 40;
    do
    {

      v21 = v36;
      sub_22D0161EC();
      __swift_project_boxed_opaque_existential_1((v2 + 56), *(v2 + 80));
      v22 = sub_22D015F2C();
      MEMORY[0x28223BE20](v22, v23);
      *(&v29 - 2) = v21;
      v24 = v38;
      sub_22CF11BC8(sub_22CF8864C, v22, v38);

      sub_22CF8866C(v24, v13);
      (*v35)(v21, v39);
      v25 = v37;
      if ((*v34)(v13, 1, v37) == 1)
      {
        result = sub_22CF886DC(v13);
      }

      else
      {
        v26 = *v31;
        v33 = v19;
        v27 = v32;
        v26(v32, v13, v25);
        __swift_project_boxed_opaque_existential_1((v2 + 56), *(v2 + 80));
        sub_22D015EFC();
        v28 = v27;
        v19 = v33;
        result = (*v30)(v28, v25);
      }

      v20 += 16;
      --v18;
    }

    while (v18);
  }

  return result;
}

uint64_t sub_22CF88418(uint64_t a1, uint64_t a2)
{
  v16[1] = a2;
  v2 = sub_22D0161DC();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22D015B9C();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v9);
  v11 = v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22D015BDC();
  v12 = (*(v8 + 88))(v11, v7);
  v13 = *MEMORY[0x277D4D548];
  (*(v8 + 8))(v11, v7);
  if (v12 == v13)
  {
    sub_22D015C5C();
    v14 = sub_22D0161AC();
    (*(v3 + 8))(v6, v2);
  }

  else
  {
    v14 = 0;
  }

  return v14 & 1;
}

uint64_t sub_22CF885EC(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  LOBYTE(v3) = v3();

  return v3 & 1;
}

uint64_t sub_22CF8866C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2700, &unk_22D01AEA0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_22CF886DC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2700, &unk_22D01AEA0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t (*sub_22CF887D8())()
{
  v1 = *(v0 + OBJC_IVAR____TtC11SessionCore26PreciseWakingTaskScheduler_lock);
  os_unfair_lock_lock(v1 + 4);
  sub_22CF8A7AC(&v4);
  os_unfair_lock_unlock(v1 + 4);
  if (!v4)
  {
    return 0;
  }

  v3 = v4;
  *(swift_allocObject() + 16) = v3;
  return sub_22CF8A7F0;
}

uint64_t sub_22CF88894@<X0>(uint64_t a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = *(a1 + OBJC_IVAR____TtC11SessionCore26PreciseWakingTaskScheduler_lock_didFire);
  v4 = *(a1 + OBJC_IVAR____TtC11SessionCore26PreciseWakingTaskScheduler_lock_didFire + 8);
  if (v3)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_22CF8A818;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  *a2 = v6;
  a2[1] = v5;
  return sub_22CF80C18(v3, v4);
}

double sub_22CF8891C(uint64_t a1, uint64_t a2)
{
  v3 = sub_22CF887D8();
  if (v3)
  {
    v6 = v3;
    v7 = v4;
    (v3)(a2);

    return sub_22CF80A18(v6, v7);
  }

  return result;
}

uint64_t sub_22CF8898C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_22D01436C();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

void *sub_22CF889F4()
{
  type metadata accessor for PreciseWakingTaskScheduler.Singleton();
  swift_allocObject();
  result = sub_22CF88A34();
  qword_28143DF48 = result;
  return result;
}

void *sub_22CF88A34()
{
  v22 = *v0;
  v23 = v0;
  v24 = sub_22D01697C();
  v1 = *(v24 - 8);
  MEMORY[0x28223BE20](v24, v2);
  v4 = v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_22D01691C();
  MEMORY[0x28223BE20](v5, v6);
  v7 = sub_22D01653C();
  MEMORY[0x28223BE20](v7 - 8, v8);
  v21[1] = sub_22CEEC38C();
  v21[4] = "larm";
  sub_22D0164EC();
  aBlock[0] = MEMORY[0x277D84F90];
  v21[3] = sub_22CF8A740(&qword_28143FA20, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9F3990, &unk_22D0189A0);
  sub_22CEE8340(&qword_28143FA40, &unk_27D9F3990, &unk_22D0189A0);
  sub_22D016ADC();
  v9 = *MEMORY[0x277D85260];
  v10 = v1 + 104;
  v11 = *(v1 + 104);
  v21[2] = v10;
  v11(v4, v9, v24);
  v23[2] = sub_22D0169BC();
  sub_22D0164EC();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_22D016ADC();
  v11(v4, v9, v24);
  v12 = sub_22D0169BC();
  v13 = MEMORY[0x277D84F98];
  v14 = v23;
  v23[3] = v12;
  v14[4] = v13;
  v15 = v14[2];
  v16 = swift_allocObject();
  v17 = v22;
  *(v16 + 16) = v14;
  *(v16 + 24) = v17;
  aBlock[4] = sub_22CF8A788;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22CEF2428;
  aBlock[3] = &block_descriptor_46_0;
  v18 = _Block_copy(aBlock);
  v19 = v15;

  xpc_set_event_stream_handler("com.apple.alarm", v19, v18);
  _Block_release(v18);

  return v14;
}

void sub_22CF88E28(void *a1)
{
  if (xpc_dictionary_get_string(a1, *MEMORY[0x277D86430]))
  {
    if (qword_28143FB18 != -1)
    {
      swift_once();
    }

    v1 = sub_22D01637C();
    __swift_project_value_buffer(v1, qword_2814443F0);
    v2 = sub_22D01636C();
    v3 = sub_22D01690C();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      v5 = swift_slowAlloc();
      v9 = v5;
      *v4 = 136446210;
      v6 = sub_22D01670C();
      v8 = sub_22CEEE31C(v6, v7, &v9);

      *(v4 + 4) = v8;
      _os_log_impl(&dword_22CEE1000, v2, v3, "Wake event received [alarm]: %{public}s", v4, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v5);
      MEMORY[0x2318C6860](v5, -1, -1);
      MEMORY[0x2318C6860](v4, -1, -1);
    }

    sub_22D0166AC();
    xpc_set_event();

    sub_22CF89348();
  }
}

void sub_22CF88FD0(uint64_t a1)
{
  v3 = type metadata accessor for PreciseWakingTaskScheduler.Singleton.Task(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3 - 8, v6);
  v7 = *(v1 + 16);
  sub_22CF8A54C(a1, aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = v1;
  sub_22CF8A60C(aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v9 + v8);
  v10 = swift_allocObject();
  *(v10 + 16) = sub_22CF8A6E8;
  *(v10 + 24) = v9;
  aBlock[4] = sub_22CEF3C48;
  aBlock[5] = v10;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22CEF3C20;
  aBlock[3] = &block_descriptor_27;
  v11 = _Block_copy(aBlock);

  dispatch_sync(v7, v11);
  _Block_release(v11);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }
}

void sub_22CF891B8(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2E18, &qword_22D01A5F0);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v6 = &v13 - v5;
  v7 = sub_22D01436C();
  MEMORY[0x28223BE20](v7, v8);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v10, a2);
  sub_22CF8A54C(a2, v6);
  v12 = type metadata accessor for PreciseWakingTaskScheduler.Singleton.Task(0);
  (*(*(v12 - 8) + 56))(v6, 0, 1, v12);
  swift_beginAccess();
  sub_22CEF57FC(v6, v10);
  swift_endAccess();
  sub_22CEF5F4C();
}

void sub_22CF89348()
{
  v100 = sub_22D0164CC();
  v99 = *(v100 - 8);
  MEMORY[0x28223BE20](v100, v1);
  v97 = &v94 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = sub_22D01653C();
  v96 = *(v98 - 8);
  MEMORY[0x28223BE20](v98, v3);
  v95 = &v94 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2E18, &qword_22D01A5F0);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v103 = &v94 - v7;
  v115 = sub_22D01430C();
  v120 = *(v115 - 8);
  MEMORY[0x28223BE20](v115, v8);
  v114 = &v94 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v121 = type metadata accessor for PreciseWakingTaskScheduler.Singleton.Task(0);
  v116 = *(v121 - 8);
  v11 = MEMORY[0x28223BE20](v121, v10);
  v102 = &v94 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11, v13);
  v113 = &v94 - v15;
  v17 = MEMORY[0x28223BE20](v14, v16);
  v19 = &v94 - v18;
  MEMORY[0x28223BE20](v17, v20);
  v110 = &v94 - v21;
  v122 = sub_22D01436C();
  v22 = *(v122 - 8);
  v24 = MEMORY[0x28223BE20](v122, v23);
  v101 = &v94 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24, v26);
  v109 = &v94 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2E20, &qword_22D01A5F8);
  v30 = MEMORY[0x28223BE20](v28 - 8, v29);
  v32 = &v94 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30, v33);
  v35 = &v94 - v34;
  v36 = sub_22D01659C();
  v37 = *(v36 - 8);
  MEMORY[0x28223BE20](v36, v38);
  v40 = (&v94 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0));
  v41 = *(v0 + 16);
  *v40 = v41;
  (*(v37 + 104))(v40, *MEMORY[0x277D85200], v36);
  v42 = v41;
  v43 = sub_22D0165BC();
  (*(v37 + 8))(v40, v36);
  if (v43)
  {
    swift_beginAccess();
    v94 = v0;
    v44 = *(v0 + 32);
    v45 = v44 + 64;
    v46 = 1 << *(v44 + 32);
    v47 = -1;
    if (v46 < 64)
    {
      v47 = ~(-1 << v46);
    }

    v48 = v47 & *(v44 + 64);
    v49 = (v46 + 63) >> 6;
    v117 = (v22 + 16);
    v106 = v22 + 32;
    v112 = (v120 + 1);
    v118 = v22;
    v120 = (v22 + 8);
    v111 = v44;

    v50 = 0;
    v119 = MEMORY[0x277D84F90];
    v51 = v122;
    v108 = v19;
    v107 = v32;
    v105 = v35;
    v104 = v45;
    while (v48)
    {
      v52 = v50;
LABEL_17:
      v55 = __clz(__rbit64(v48));
      v48 &= v48 - 1;
      v56 = v55 | (v52 << 6);
      v57 = v111;
      v58 = v118;
      (*(v118 + 16))(v109, *(v111 + 48) + *(v118 + 72) * v56, v51);
      v59 = *(v57 + 56) + *(v116 + 72) * v56;
      v60 = v110;
      sub_22CF8A54C(v59, v110);
      v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2E10, &qword_22D01A5E8);
      v62 = *(v61 + 48);
      v32 = v107;
      (*(v58 + 32))();
      sub_22CF8A60C(v60, &v32[v62]);
      (*(*(v61 - 8) + 56))(v32, 0, 1, v61);
      v19 = v108;
      v35 = v105;
      v45 = v104;
LABEL_18:
      sub_22CF8A670(v32, v35);
      v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2E10, &qword_22D01A5E8);
      if ((*(*(v63 - 8) + 48))(v35, 1, v63) == 1)
      {

        v71 = v119[2];
        v72 = v122;
        if (v71)
        {
          v73 = v119 + ((*(v116 + 80) + 32) & ~*(v116 + 80));
          v74 = *(v116 + 72);
          v75 = (v116 + 56);
          v76 = v94;
          v77 = v118;
          v78 = v101;
          v116 += 56;
          do
          {
            v81 = v102;
            sub_22CF8A54C(v73, v102);
            (*v117)(v78, v81, v72);
            sub_22CF8A5B0(v81);
            swift_beginAccess();
            v82 = sub_22CEF5CD8(v78);
            if (v83)
            {
              v84 = v82;
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v86 = *(v76 + 32);
              v123 = v86;
              *(v76 + 32) = 0x8000000000000000;
              if (!isUniquelyReferenced_nonNull_native)
              {
                sub_22CFB7BDC();
                v86 = v123;
              }

              v87 = *(v86 + 48) + *(v77 + 72) * v84;
              v88 = *(v118 + 8);
              v72 = v122;
              v88(v87, v122);
              v80 = v103;
              sub_22CF8A60C(*(v86 + 56) + v84 * v74, v103);
              sub_22CFBD9B0(v84, v86);
              v78 = v101;
              v88(v101, v72);
              v77 = v118;
              *(v76 + 32) = v86;

              v79 = 0;
              v75 = v116;
            }

            else
            {
              (*v120)(v78, v72);
              v79 = 1;
              v80 = v103;
            }

            (*v75)(v80, v79, 1, v121);
            sub_22CEEC3D8(v80, &qword_27D9F2E18, &qword_22D01A5F0);
            swift_endAccess();
            v73 += v74;
            --v71;
          }

          while (v71);
          v89 = swift_allocObject();
          *(v89 + 16) = v119;
          aBlock[4] = sub_22CF8A6E0;
          aBlock[5] = v89;
          aBlock[0] = MEMORY[0x277D85DD0];
          aBlock[1] = 1107296256;
          aBlock[2] = sub_22CEF8B58;
          aBlock[3] = &block_descriptor_11;
          v90 = _Block_copy(aBlock);
          v91 = v95;
          sub_22D0164EC();
          v123 = MEMORY[0x277D84F90];
          sub_22CF8A740(&qword_28143FA60, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9F2FE0, &qword_22D018B70);
          sub_22CEE8340(&qword_28143FA50, &unk_27D9F2FE0, &qword_22D018B70);
          v92 = v97;
          v93 = v100;
          sub_22D016ADC();
          MEMORY[0x2318C5B10](0, v91, v92, v90);
          _Block_release(v90);
          (*(v99 + 8))(v92, v93);
          (*(v96 + 8))(v91, v98);
        }

        else
        {
        }

        return;
      }

      sub_22CF8A60C(&v35[*(v63 + 48)], v19);
      v64 = v114;
      sub_22D0142DC();
      v65 = sub_22D01428C();
      (*v112)(v64, v115);
      v51 = v122;
      if (v65)
      {
        sub_22CF8A54C(v19, v113);
        v66 = v119;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v66 = sub_22CFCE598(0, v66[2] + 1, 1, v66);
        }

        v68 = v66[2];
        v67 = v66[3];
        v119 = v66;
        if (v68 >= v67 >> 1)
        {
          v119 = sub_22CFCE598((v67 > 1), v68 + 1, 1, v119);
        }

        sub_22CF8A5B0(v19);
        v69 = v119;
        v119[2] = v68 + 1;
        sub_22CF8A60C(v113, v69 + ((*(v116 + 80) + 32) & ~*(v116 + 80)) + *(v116 + 72) * v68);
        v51 = v122;
      }

      else
      {
        sub_22CF8A5B0(v19);
      }

      (*v120)(v35, v51);
    }

    if (v49 <= v50 + 1)
    {
      v53 = v50 + 1;
    }

    else
    {
      v53 = v49;
    }

    v54 = v53 - 1;
    while (1)
    {
      v52 = v50 + 1;
      if (__OFADD__(v50, 1))
      {
        break;
      }

      if (v52 >= v49)
      {
        v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2E10, &qword_22D01A5E8);
        (*(*(v70 - 8) + 56))(v32, 1, 1, v70);
        v48 = 0;
        v50 = v54;
        goto LABEL_18;
      }

      v48 = *(v45 + 8 * v52);
      ++v50;
      if (v48)
      {
        v50 = v52;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  __break(1u);
}

void sub_22CF89FD4(uint64_t a1)
{
  v2 = type metadata accessor for PreciseWakingTaskScheduler.Singleton.Task(0);
  v4 = MEMORY[0x28223BE20](v2, v3);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 16);
  if (v8)
  {
    v9 = &v7[*(v4 + 24)];
    v10 = a1 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v11 = *(v5 + 72);
    do
    {
      sub_22CF8A54C(v10, v7);
      v12 = *v9;

      v13 = sub_22CF8A5B0(v7);
      v12(v13);

      v10 += v11;
      --v8;
    }

    while (v8);
  }
}

uint64_t sub_22CF8A0E4()
{

  return swift_deallocClassInstance();
}

uint64_t sub_22CF8A12C()
{
  v1 = OBJC_IVAR____TtC11SessionCore26PreciseWakingTaskScheduler_id;
  v2 = sub_22D01436C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_22CF80A18(*(v0 + OBJC_IVAR____TtC11SessionCore26PreciseWakingTaskScheduler_lock_didFire), *(v0 + OBJC_IVAR____TtC11SessionCore26PreciseWakingTaskScheduler_lock_didFire + 8));

  return swift_deallocClassInstance();
}

uint64_t sub_22CF8A214(uint64_t a1)
{
  result = sub_22D01436C();
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

uint64_t sub_22CF8A2E0(uint64_t a1)
{
  result = sub_22D01436C();
  if (v2 <= 0x3F)
  {
    result = sub_22D01430C();
    if (v3 <= 0x3F)
    {
      result = sub_22CF8A37C();
      if (v4 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

unint64_t sub_22CF8A37C()
{
  result = qword_28143D8E0;
  if (!qword_28143D8E0)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_28143D8E0);
  }

  return result;
}

double sub_22CF8A414(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + OBJC_IVAR____TtC11SessionCore26PreciseWakingTaskScheduler_lock);
  os_unfair_lock_lock(v5 + 4);
  sub_22CF8A524();
  os_unfair_lock_unlock(v5 + 4);
  return sub_22CF80A18(a1, a2);
}

double sub_22CF8A4A4()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = (v0[2] + OBJC_IVAR____TtC11SessionCore26PreciseWakingTaskScheduler_lock_didFire);
  v4 = *v3;
  v5 = v3[1];
  *v3 = v1;
  v3[1] = v2;
  sub_22CF80C18(v1, v2);
  return sub_22CF80A18(v4, v5);
}

uint64_t sub_22CF8A54C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PreciseWakingTaskScheduler.Singleton.Task(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22CF8A5B0(uint64_t a1)
{
  v2 = type metadata accessor for PreciseWakingTaskScheduler.Singleton.Task(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22CF8A60C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PreciseWakingTaskScheduler.Singleton.Task(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_22CF8A670(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2E20, &qword_22D01A5F8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_22CF8A740(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

double sub_22CF8A7AC@<D0>(_OWORD *a1@<X8>)
{
  (*(v1 + 16))(&v5);
  if (!v2)
  {
    result = *&v5;
    *a1 = v5;
  }

  return result;
}

uint64_t sub_22CF8A84C()
{
  v12 = sub_22D01697C();
  v0 = *(v12 - 8);
  MEMORY[0x28223BE20](v12, v1);
  v3 = &v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_22D01691C();
  MEMORY[0x28223BE20](v4, v5);
  v6 = sub_22D01653C();
  MEMORY[0x28223BE20](v6 - 8, v7);
  v11 = sub_22CEEC38C();
  sub_22D01651C();
  v14 = MEMORY[0x277D84F90];
  sub_22CF1A11C(&qword_28143FA20, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9F3990, &unk_22D0189A0);
  sub_22CEE8340(&qword_28143FA40, &unk_27D9F3990, &unk_22D0189A0);
  sub_22D016ADC();
  (*(v0 + 104))(v3, *MEMORY[0x277D85268], v12);
  v8 = sub_22D0169BC();
  v9 = v13;
  *(v13 + 16) = v8;
  return v9;
}

uint64_t sub_22CF8AAA4()
{

  return swift_deallocClassInstance();
}

void sub_22CF8AB00()
{
  v0 = MobileGestalt_get_current_device();
  if (v0)
  {
    v1 = v0;
    deviceSupportsDynamicIsland = MobileGestalt_get_deviceSupportsDynamicIsland();

    byte_281444380 = deviceSupportsDynamicIsland;
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_22CF8AB48(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (!v1)
  {
    return v2;
  }

  v28 = MEMORY[0x277D84F90];
  sub_22CF440C8(0, v1, 0);
  v2 = v28;
  v4 = a1 + 64;
  result = sub_22D016AEC();
  v6 = result;
  v7 = 0;
  v27 = *(a1 + 36);
  v25 = v1;
  while ((v6 & 0x8000000000000000) == 0 && v6 < 1 << *(a1 + 32))
  {
    v9 = v6 >> 6;
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) == 0)
    {
      goto LABEL_22;
    }

    if (v27 != *(a1 + 36))
    {
      goto LABEL_23;
    }

    v10 = (*(a1 + 48) + 16 * v6);
    v11 = v10[1];
    v26 = *v10;

    result = sub_22D014BAC();
    v14 = *(v28 + 16);
    v13 = *(v28 + 24);
    if (v14 >= v13 >> 1)
    {
      v23 = v12;
      v24 = result;
      sub_22CF440C8((v13 > 1), v14 + 1, 1);
      v12 = v23;
      result = v24;
    }

    *(v28 + 16) = v14 + 1;
    v15 = (v28 + 32 * v14);
    v15[4] = v26;
    v15[5] = v11;
    v15[6] = result;
    v15[7] = v12;
    v8 = 1 << *(a1 + 32);
    if (v6 >= v8)
    {
      goto LABEL_24;
    }

    v4 = a1 + 64;
    v16 = *(a1 + 64 + 8 * v9);
    if ((v16 & (1 << v6)) == 0)
    {
      goto LABEL_25;
    }

    if (v27 != *(a1 + 36))
    {
      goto LABEL_26;
    }

    v17 = v16 & (-2 << (v6 & 0x3F));
    if (v17)
    {
      v8 = __clz(__rbit64(v17)) | v6 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v18 = v9 << 6;
      v19 = v9 + 1;
      v20 = (a1 + 72 + 8 * v9);
      while (v19 < (v8 + 63) >> 6)
      {
        v22 = *v20++;
        v21 = v22;
        v18 += 64;
        ++v19;
        if (v22)
        {
          result = sub_22CF44CF8(v6, v27, 0);
          v8 = __clz(__rbit64(v21)) + v18;
          goto LABEL_4;
        }
      }

      result = sub_22CF44CF8(v6, v27, 0);
    }

LABEL_4:
    ++v7;
    v6 = v8;
    if (v7 == v25)
    {
      return v2;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_22CF8ADA8()
{

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 40));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 80));

  return swift_deallocClassInstance();
}

uint64_t sub_22CF8AE2C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F29E8, &qword_22D019668);
  sub_22CF8B128();
  return sub_22D01646C();
}

uint64_t sub_22CF8AE88@<X0>(uint64_t a1@<X0>, unint64_t *a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2010, &qword_22D018B40);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22D01A630;
  *(inited + 32) = 7565169;
  *(inited + 40) = 0xE300000000000000;

  v7 = sub_22CF8AB48(v6);

  if (*(v7 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2018, &unk_22D0188A0);
    v8 = sub_22D016D3C();
  }

  else
  {
    v8 = MEMORY[0x277D84F98];
  }

  v20 = v8;

  sub_22CF43CD4(v9, 1, &v20);
  if (v2)
  {
    result = swift_unexpectedError();
    __break(1u);
  }

  else
  {

    v10 = v20;
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9F2020, &unk_22D01B140);
    *(inited + 48) = v10;
    *(inited + 72) = v11;
    *(inited + 80) = 0x64656B636F4C6975;
    *(inited + 88) = 0xE800000000000000;
    if (*(a1 + 32))
    {
      v12 = 1702195828;
    }

    else
    {
      v12 = 0x65736C6166;
    }

    if (*(a1 + 32))
    {
      v13 = 0xE400000000000000;
    }

    else
    {
      v13 = 0xE500000000000000;
    }

    v14 = MEMORY[0x277D837D0];
    *(inited + 96) = v12;
    *(inited + 104) = v13;
    *(inited + 120) = v14;
    strcpy((inited + 128), "allowQoSBoost");
    *(inited + 142) = -4864;
    v15 = sub_22CEF4850();
    if (v15)
    {
      v16 = 1702195828;
    }

    else
    {
      v16 = 0x65736C6166;
    }

    *(inited + 168) = v14;
    if (v15)
    {
      v17 = 0xE400000000000000;
    }

    else
    {
      v17 = 0xE500000000000000;
    }

    *(inited + 144) = v16;
    *(inited + 152) = v17;
    v18 = sub_22CF11C44(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F3460, &unk_22D0188B0);
    result = swift_arrayDestroy();
    *a2 = v18;
  }

  return result;
}

uint64_t sub_22CF8B0B4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2DA0, &unk_22D01A450);
  sub_22D01699C();
  return v1;
}

unint64_t sub_22CF8B128()
{
  result = qword_28143FA80;
  if (!qword_28143FA80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D9F29E8, &qword_22D019668);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28143FA80);
  }

  return result;
}

uint64_t sub_22CF8B1A8(uint64_t a1)
{
  v37 = sub_22D01436C();
  v3 = *(v37 - 8);
  MEMORY[0x28223BE20](v37, v4);
  v36 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (v6)
  {
    v29 = v1;
    v41 = MEMORY[0x277D84F90];
    sub_22CF4412C(0, v6, 0);
    v40 = v41;
    v8 = a1 + 64;
    result = sub_22D016AEC();
    v9 = result;
    v10 = 0;
    v34 = v3 + 8;
    v35 = v3 + 16;
    v30 = a1 + 72;
    v31 = v6;
    v32 = v3;
    v33 = a1 + 64;
    while ((v9 & 0x8000000000000000) == 0 && v9 < 1 << *(a1 + 32))
    {
      v12 = v9 >> 6;
      if ((*(v8 + 8 * (v9 >> 6)) & (1 << v9)) == 0)
      {
        goto LABEL_22;
      }

      v38 = *(a1 + 36);
      v13 = v36;
      v14 = v37;
      v15 = (*(v3 + 16))(v36, *(a1 + 48) + *(v3 + 72) * v9, v37);
      v39 = MEMORY[0x2318C34A0](v15);
      v17 = v16;
      result = (*(v3 + 8))(v13, v14);
      v18 = v40;
      v41 = v40;
      v20 = *(v40 + 16);
      v19 = *(v40 + 24);
      if (v20 >= v19 >> 1)
      {
        result = sub_22CF4412C((v19 > 1), v20 + 1, 1);
        v18 = v41;
      }

      *(v18 + 16) = v20 + 1;
      v21 = v18 + 16 * v20;
      *(v21 + 32) = v39;
      *(v21 + 40) = v17;
      v11 = 1 << *(a1 + 32);
      if (v9 >= v11)
      {
        goto LABEL_23;
      }

      v8 = v33;
      v22 = *(v33 + 8 * v12);
      if ((v22 & (1 << v9)) == 0)
      {
        goto LABEL_24;
      }

      v40 = v18;
      if (v38 != *(a1 + 36))
      {
        goto LABEL_25;
      }

      v23 = v22 & (-2 << (v9 & 0x3F));
      if (v23)
      {
        v11 = __clz(__rbit64(v23)) | v9 & 0x7FFFFFFFFFFFFFC0;
        v3 = v32;
      }

      else
      {
        v24 = v12 << 6;
        v25 = v12 + 1;
        v26 = (v30 + 8 * v12);
        v3 = v32;
        while (v25 < (v11 + 63) >> 6)
        {
          v28 = *v26++;
          v27 = v28;
          v24 += 64;
          ++v25;
          if (v28)
          {
            result = sub_22CF44CF8(v9, v38, 0);
            v11 = __clz(__rbit64(v27)) + v24;
            goto LABEL_4;
          }
        }

        result = sub_22CF44CF8(v9, v38, 0);
      }

LABEL_4:
      ++v10;
      v9 = v11;
      if (v10 == v31)
      {
        return v40;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
  }

  return result;
}

uint64_t sub_22CF8B4B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2F30, &qword_22D01A918);
  v16 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v5);
  v7 = &v15 - v6;
  v8 = sub_22D016AEC();
  if (v8 == 1 << *(a1 + 32))
  {
    v9 = *(v16 + 56);

    return v9(a2, 1, 1, v4);
  }

  else
  {
    v11 = *(v4 + 48);
    sub_22CFA3668(v7, &v7[v11], v8, *(a1 + 36), 0, a1);
    v12 = sub_22D0159DC();
    (*(*(v12 - 8) + 32))(a2, v7, v12);
    v13 = *(v4 + 48);
    v14 = sub_22D015A3C();
    (*(*(v14 - 8) + 32))(a2 + v13, &v7[v11], v14);
    return (*(v16 + 56))(a2, 0, 1, v4);
  }
}

uint64_t sub_22CF8B6A0()
{
  if (*(v0 + 224))
  {
    v1 = *(v0 + 224);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2EF0, &unk_22D01A8C0);
    sub_22CEE8394(&qword_27D9F2EF8, &qword_27D9F2EF0, &unk_22D01A8C0, MEMORY[0x277CBCE48]);
    v1 = sub_22D01646C();
    *(v0 + 224) = v1;
  }

  return v1;
}

uint64_t sub_22CF8B764()
{
  v0 = sub_22D01582C();
  __swift_allocate_value_buffer(v0, qword_27D9F40E8);
  __swift_project_value_buffer(v0, qword_27D9F40E8);
  return sub_22D01581C();
}

void sub_22CF8B7B8(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = swift_allocObject();
  *(v3 + 16) = sub_22CFA63BC;
  *(v3 + 24) = a1;
  v5[4] = sub_22CEF4034;
  v5[5] = v3;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 1107296256;
  v5[2] = sub_22CEF3C20;
  v5[3] = &block_descriptor_85;
  v4 = _Block_copy(v5);

  dispatch_sync(v2, v4);
  _Block_release(v4);
  LOBYTE(v2) = swift_isEscapingClosureAtFileLocation();

  if (v2)
  {
    __break(1u);
  }
}

void sub_22CF8B8F0()
{
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2E78, &qword_22D01A888);
  v2 = MEMORY[0x28223BE20](v114, v1);
  v113 = &v94 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x28223BE20](v2, v4);
  v112 = &v94 - v6;
  MEMORY[0x28223BE20](v5, v7);
  v111 = &v94 - v8;
  v110 = type metadata accessor for ReplicatorParticipant.RelationshipSchedule(0);
  v109 = *(v110 - 8);
  MEMORY[0x28223BE20](v110, v9);
  v11 = &v94 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Activity(0);
  v97 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12 - 8, v13);
  v95 = &v94 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14, v16);
  v96 = &v94 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F3850, &unk_22D019D30);
  v20 = MEMORY[0x28223BE20](v18 - 8, v19);
  v22 = (&v94 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v20, v23);
  v25 = &v94 - v24;
  v26 = sub_22D01659C();
  v27 = *(v26 - 8);
  MEMORY[0x28223BE20](v26, v28);
  v30 = (&v94 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0));
  v31 = *(v0 + 16);
  *v30 = v31;
  (*(v27 + 104))(v30, *MEMORY[0x277D85200], v26);
  v32 = v31;
  LOBYTE(v31) = sub_22D0165BC();
  (*(v27 + 8))(v30, v26);
  if (v31)
  {
    v100 = v25;
    swift_beginAccess();
    v33 = *(v0 + 200);
    v34 = *(v33 + 64);
    v101 = v33 + 64;
    v35 = 1 << *(v33 + 32);
    if (v35 < 64)
    {
      v36 = ~(-1 << v35);
    }

    else
    {
      v36 = -1;
    }

    v105 = v36 & v34;
    v98 = v33;

    v102 = v0;
    swift_beginAccess();
    v37 = 0;
    v104 = 0;
    v38 = (v35 + 63) >> 6;
    v107 = *MEMORY[0x277D46828];
    v99 = v38;
    v39 = v95;
    v108 = v11;
    v94 = v22;
    while (1)
    {
      v41 = v105;
      if (!v105)
      {
        break;
      }

      v42 = v39;
      v103 = v37;
      v43 = v37;
LABEL_18:
      v105 = (v41 - 1) & v41;
      v46 = __clz(__rbit64(v41)) | (v43 << 6);
      v47 = (*(v98 + 48) + 16 * v46);
      v49 = *v47;
      v48 = v47[1];
      v50 = v96;
      sub_22CF0CBEC(*(v98 + 56) + *(v97 + 72) * v46, v96, type metadata accessor for Activity);
      v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9F3840, &unk_22D01A2B0);
      v52 = *(v51 + 48);
      *v22 = v49;
      v22[1] = v48;
      sub_22CF0FFD8(v50, v22 + v52, type metadata accessor for Activity);
      (*(*(v51 - 8) + 56))(v22, 0, 1, v51);

      v39 = v42;
LABEL_19:
      v53 = v100;
      sub_22CEF0368(v22, v100, &qword_27D9F3850, &unk_22D019D30);
      v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9F3840, &unk_22D01A2B0);
      if ((*(*(v54 - 8) + 48))(v53, 1, v54) == 1)
      {

        return;
      }

      v55 = sub_22CF0FFD8(v53 + *(v54 + 48), v39, type metadata accessor for Activity);
      v56 = *(v102 + 216);
      MEMORY[0x28223BE20](v55, v57);
      *(&v94 - 2) = v39;

      v58 = v104;
      v59 = sub_22CF79D7C(sub_22CFA61AC, (&v94 - 4), v56);
      v104 = v58;

      v60 = *(v59 + 2);
      if (v60)
      {
        v123 = MEMORY[0x277D84F90];
        sub_22CF44238(0, v60, 0);
        v122 = v123;
        v61 = v59 + 64;
        v62 = sub_22D016AEC();
        v63 = 0;
        v106 = v59 + 72;
        v115 = v60;
        v116 = v59 + 64;
        v117 = v59;
        while ((v62 & 0x8000000000000000) == 0 && v62 < 1 << v59[32])
        {
          if ((*&v61[8 * (v62 >> 6)] & (1 << v62)) == 0)
          {
            goto LABEL_42;
          }

          v120 = 1 << v62;
          v121 = v62 >> 6;
          v65 = *(v59 + 9);
          v118 = v63;
          v119 = v65;
          v66 = *(v59 + 6);
          v67 = sub_22D01436C();
          v68 = *(v67 - 8);
          v69 = v111;
          (*(v68 + 16))(v111, v66 + *(v68 + 72) * v62, v67);
          v70 = *(v59 + 7) + 32 * v62;
          v71 = *v70;
          v72 = *(v70 + 8);
          v73 = *(v70 + 16);
          v74 = *(v70 + 24);
          v75 = *(v68 + 32);
          v76 = v112;
          v75(v112, v69, v67);
          v77 = &v76[*(v114 + 48)];
          *v77 = v71;
          *(v77 + 1) = v72;
          v77[16] = v73;
          *(v77 + 3) = v74;
          v78 = v76;
          v79 = v113;
          sub_22CEF0368(v78, v113, &qword_27D9F2E78, &qword_22D01A888);

          v80 = v108;

          v81 = *(v110 + 20);
          v82 = sub_22D015A5C();
          (*(*(v82 - 8) + 104))(v80 + v81, v107, v82);
          v75(v80, v79, v67);
          v83 = v122;
          v123 = v122;
          v85 = *(v122 + 16);
          v84 = *(v122 + 24);
          if (v85 >= v84 >> 1)
          {
            sub_22CF44238((v84 > 1), v85 + 1, 1);
            v83 = v123;
          }

          *(v83 + 16) = v85 + 1;
          sub_22CF0FFD8(v80, v83 + ((*(v109 + 80) + 32) & ~*(v109 + 80)) + *(v109 + 72) * v85, type metadata accessor for ReplicatorParticipant.RelationshipSchedule);
          v59 = v117;
          v64 = 1 << v117[32];
          if (v62 >= v64)
          {
            goto LABEL_43;
          }

          v61 = v116;
          v86 = *&v116[8 * v121];
          if ((v86 & v120) == 0)
          {
            goto LABEL_44;
          }

          if (v119 != *(v117 + 9))
          {
            goto LABEL_45;
          }

          v122 = v83;
          v87 = v86 & (-2 << (v62 & 0x3F));
          if (v87)
          {
            v64 = __clz(__rbit64(v87)) | v62 & 0x7FFFFFFFFFFFFFC0;
          }

          else
          {
            v88 = v121 << 6;
            v89 = v121 + 1;
            v90 = &v106[8 * v121];
            while (v89 < (v64 + 63) >> 6)
            {
              v92 = *v90++;
              v91 = v92;
              v88 += 64;
              ++v89;
              if (v92)
              {
                sub_22CF44CF8(v62, v119, 0);
                v64 = __clz(__rbit64(v91)) + v88;
                goto LABEL_23;
              }
            }

            sub_22CF44CF8(v62, v119, 0);
          }

LABEL_23:
          v63 = v118 + 1;
          v62 = v64;
          if (v118 + 1 == v115)
          {

            v39 = v95;
            v22 = v94;
            v40 = v122;
            goto LABEL_7;
          }
        }

        __break(1u);
LABEL_42:
        __break(1u);
LABEL_43:
        __break(1u);
LABEL_44:
        __break(1u);
LABEL_45:
        __break(1u);
        goto LABEL_46;
      }

      v40 = MEMORY[0x277D84F90];
LABEL_7:
      sub_22CF8D580(v39, v40);

      sub_22CF0F5E0(v39, type metadata accessor for Activity);
      v38 = v99;
      v37 = v103;
    }

    if (v38 <= v37 + 1)
    {
      v44 = v37 + 1;
    }

    else
    {
      v44 = v38;
    }

    v45 = v44 - 1;
    while (1)
    {
      v43 = v37 + 1;
      if (__OFADD__(v37, 1))
      {
        break;
      }

      if (v43 >= v38)
      {
        v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9F3840, &unk_22D01A2B0);
        (*(*(v93 - 8) + 56))(v22, 1, 1, v93);
        v105 = 0;
        v103 = v45;
        goto LABEL_19;
      }

      v41 = *(v101 + 8 * v43);
      ++v37;
      if (v41)
      {
        v42 = v39;
        v103 = v43;
        goto LABEL_18;
      }
    }

LABEL_46:
    __break(1u);
  }

  __break(1u);
}

double sub_22CF8C40C()
{
  v1 = sub_22D0164CC();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1, v3);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_22D01653C();
  v6 = *(v13 - 8);
  MEMORY[0x28223BE20](v13, v7);
  v9 = v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12[1] = *(v0 + 16);
  aBlock[4] = sub_22CFA5C94;
  v16 = v0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22CEF8B58;
  aBlock[3] = &block_descriptor_28;
  v10 = _Block_copy(aBlock);

  sub_22D0164EC();
  v14 = MEMORY[0x277D84F90];
  sub_22CF1A164(&qword_28143FA60, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9F2FE0, &qword_22D018B70);
  sub_22CEE8394(&qword_28143FA50, &unk_27D9F2FE0, &qword_22D018B70, MEMORY[0x277D83970]);
  sub_22D016ADC();
  MEMORY[0x2318C5B10](0, v9, v5, v10);
  _Block_release(v10);
  (*(v2 + 8))(v5, v1);
  (*(v6 + 8))(v9, v13);

  return result;
}

void sub_22CF8C6C0(uint64_t a1)
{
  v3 = sub_22D01659C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = (v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_22CF8C998();
  sub_22CEEB6DC(a1 + 32, v19, &qword_27D9F2E28, &unk_22D01A838);
  if (v20)
  {
    __swift_project_boxed_opaque_existential_1(v19, v20);
    v1 = 0;
    sub_22D01588C();
    __swift_destroy_boxed_opaque_existential_1Tm(v19);
  }

  else
  {
    sub_22CEEC3D8(v19, &qword_27D9F2E28, &unk_22D01A838);
  }

  v16 = *(a1 + 16);
  *v7 = v16;
  (*(v4 + 104))(v7, *MEMORY[0x277D85200], v3);
  v17 = v16;
  LOBYTE(v16) = sub_22D0165BC();
  (*(v4 + 8))(v7, v3);
  if (v16)
  {
    sub_22CF9B574();
    sub_22CF9CB04();
  }

  else
  {
    __break(1u);
    swift_once();
    v8 = sub_22D01637C();
    __swift_project_value_buffer(v8, qword_2814442F0);
    v9 = v1;
    v10 = sub_22D01636C();
    v11 = sub_22D0168EC();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      *v12 = 138543362;
      v14 = v1;
      v15 = _swift_stdlib_bridgeErrorToNSError();
      *(v12 + 4) = v15;
      *v13 = v15;
      _os_log_impl(&dword_22CEE1000, v10, v11, "Failed to register replicator client: %{public}@", v12, 0xCu);
      sub_22CEEC3D8(v13, &qword_27D9F2380, &unk_22D019C50);
      MEMORY[0x2318C6860](v13, -1, -1);
      MEMORY[0x2318C6860](v12, -1, -1);
    }

    else
    {
    }
  }
}

void sub_22CF8C998()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2B20, &qword_22D019C18);
  MEMORY[0x28223BE20](v1 - 8, v2);
  v4 = &v11 - v3;
  sub_22CEEB6DC(v0 + 32, &v11, &qword_27D9F2E28, &unk_22D01A838);
  if (v12)
  {
    sub_22CFA3864(&v11, v13);
    v5 = sub_22D01681C();
    (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
    sub_22CFA5D28(v13, &v11);
    v6 = swift_allocObject();
    *(v6 + 16) = 0;
    *(v6 + 24) = 0;
    sub_22CFA3864(&v11, (v6 + 32));
    *(v6 + 96) = v0;

    sub_22CF80110(0, 0, v4, &unk_22D01A8E8, v6);

    __swift_destroy_boxed_opaque_existential_1Tm(v13);
  }

  else
  {
    sub_22CEEC3D8(&v11, &qword_27D9F2E28, &unk_22D01A838);
    if (qword_28143DA98 != -1)
    {
      swift_once();
    }

    v7 = sub_22D01637C();
    __swift_project_value_buffer(v7, qword_2814442F0);
    v8 = sub_22D01636C();
    v9 = sub_22D0168EC();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_22CEE1000, v8, v9, "Replicator is not available", v10, 2u);
      MEMORY[0x2318C6860](v10, -1, -1);
    }
  }
}

uint64_t sub_22CF8CBC4()
{
  sub_22CEEC3D8(v0 + 32, &qword_27D9F2E28, &unk_22D01A838);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 96));
  sub_22CEEC3D8(v0 + 136, &qword_27D9F2E40, &qword_22D01A858);

  sub_22CF460CC(v0 + 184);

  return v0;
}

uint64_t sub_22CF8CC5C()
{
  sub_22CF8CBC4();

  return swift_deallocClassInstance();
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_22CF8CC9C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_22CF8CCE4(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_22CF8CD34(uint64_t a1)
{
  v2 = *(v1 + 176);
  os_unfair_lock_lock(v2 + 4);
  sub_22CFA1590(v3);
  os_unfair_lock_unlock(v2 + 4);
  return swift_unknownObjectRelease();
}

uint64_t sub_22CF8CDAC@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = sub_22D01483C();
  v5 = *(v4 - 8);
  v7 = MEMORY[0x28223BE20](v4, v6);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7, v10);
  v12 = &v20 - v11;
  v13 = *(a1 + 16);
  if (v13)
  {
    v21 = a2;
    v14 = *(v5 + 16);
    v15 = a1 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v16 = *(v5 + 72);
    while (1)
    {
      v14(v9, v15, v4);
      if (sub_22D0147CC())
      {
        break;
      }

      (*(v5 + 8))(v9, v4);
      v15 += v16;
      if (!--v13)
      {
        v17 = 1;
        a2 = v21;
        return (*(v5 + 56))(a2, v17, 1, v4);
      }
    }

    v18 = *(v5 + 32);
    v18(v12, v9, v4);
    a2 = v21;
    v18(v21, v12, v4);
    v17 = 0;
  }

  else
  {
    v17 = 1;
  }

  return (*(v5 + 56))(a2, v17, 1, v4);
}

void *sub_22CF8CF70(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2E70, &qword_22D01A880);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v6 = &v61 - v5;
  v7 = type metadata accessor for ReplicatorParticipant.RelationshipSchedule(0);
  v8 = *(v7 - 8);
  v10 = MEMORY[0x28223BE20](v7, v9);
  v63 = &v61 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10, v12);
  v62 = &v61 - v13;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2E78, &qword_22D01A888);
  MEMORY[0x28223BE20](v74, v14);
  v76 = &v61 - v15;
  v16 = sub_22D01659C();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16, v18);
  v20 = (&v61 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = *(v1 + 16);
  *v20 = v21;
  (*(v17 + 104))(v20, *MEMORY[0x277D85200], v16);
  v22 = v21;
  v23 = sub_22D0165BC();
  result = (*(v17 + 8))(v20, v16);
  if (v23)
  {
    v73 = a1;
    swift_beginAccess();
    v25 = *(v1 + 216);
    v26 = v25 + 64;
    v27 = 1 << *(v25 + 32);
    v28 = -1;
    if (v27 < 64)
    {
      v28 = ~(-1 << v27);
    }

    v29 = v28 & *(v25 + 64);
    v30 = (v27 + 63) >> 6;
    v68 = (v8 + 56);
    v66 = *MEMORY[0x277D46820];
    v65 = *MEMORY[0x277D46828];
    v61 = v8;
    v67 = (v8 + 48);
    v75 = v25;
    result = swift_bridgeObjectRetain_n();
    v31 = 0;
    v64 = MEMORY[0x277D84F90];
    v32 = v76;
    v69 = v30;
    v70 = v26;
    v71 = v7;
    v72 = v6;
    while (1)
    {
      v33 = v31;
      if (!v29)
      {
        break;
      }

LABEL_9:
      v34 = __clz(__rbit64(v29)) | (v31 << 6);
      v35 = v75;
      v36 = *(v75 + 48);
      v37 = sub_22D01436C();
      v38 = *(v37 - 8);
      v39 = v36 + *(v38 + 72) * v34;
      v76 = *(v38 + 16);
      (v76)(v32, v39, v37);
      v40 = (*(v35 + 56) + 32 * v34);
      v41 = *v40;
      v42 = *(v40 + 1);
      v43 = v40[16];
      v44 = *(v40 + 3);
      v45 = &v32[*(v74 + 48)];
      *v45 = v41;
      *(v45 + 1) = v42;
      v45[16] = v43;
      *(v45 + 3) = v44;

      v46 = v32;
      v47 = v73;
      if (sub_22CF924E4(v73, v41, v42, v43, v44))
      {
        v48 = sub_22CFA5558(v47, v41, v43, v44);
        v49 = v72;
        (v76)(v72, v46, v37);
        v50 = v71;
        v51 = *(v71 + 20);
        v52 = sub_22D015A5C();
        if (v48)
        {
          v53 = v65;
        }

        else
        {
          v53 = v66;
        }

        (*(*(v52 - 8) + 104))(v49 + v51, v53, v52);
        v54 = 0;
      }

      else
      {
        v54 = 1;
        v50 = v71;
        v49 = v72;
      }

      v32 = v46;
      v29 &= v29 - 1;
      (*v68)(v49, v54, 1, v50);
      sub_22CEEC3D8(v46, &qword_27D9F2E78, &qword_22D01A888);
      v55 = (*v67)(v49, 1, v50);
      v30 = v69;
      v26 = v70;
      if (v55 == 1)
      {
        result = sub_22CEEC3D8(v49, &qword_27D9F2E70, &qword_22D01A880);
      }

      else
      {
        v56 = v62;
        sub_22CF0FFD8(v49, v62, type metadata accessor for ReplicatorParticipant.RelationshipSchedule);
        sub_22CF0FFD8(v56, v63, type metadata accessor for ReplicatorParticipant.RelationshipSchedule);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v64 = sub_22CFCE5E8(0, v64[2] + 1, 1, v64);
        }

        v58 = v64[2];
        v57 = v64[3];
        if (v58 >= v57 >> 1)
        {
          v64 = sub_22CFCE5E8((v57 > 1), v58 + 1, 1, v64);
        }

        v59 = v63;
        v60 = v64;
        v64[2] = v58 + 1;
        result = sub_22CF0FFD8(v59, v60 + ((*(v61 + 80) + 32) & ~*(v61 + 80)) + *(v61 + 72) * v58, type metadata accessor for ReplicatorParticipant.RelationshipSchedule);
      }
    }

    while (1)
    {
      v31 = v33 + 1;
      if (__OFADD__(v33, 1))
      {
        break;
      }

      if (v31 >= v30)
      {

        return v64;
      }

      v29 = *(v26 + 8 * v31);
      ++v33;
      if (v29)
      {
        goto LABEL_9;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_22CF8D580(uint64_t a1, uint64_t a2)
{
  v226 = a1;
  v196 = sub_22D01589C();
  v229 = *(v196 - 8);
  MEMORY[0x28223BE20](v196, v4);
  v195 = (v185 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v194 = sub_22D015A3C();
  v198 = *(v194 - 8);
  MEMORY[0x28223BE20](v194, v6);
  v202 = v185 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v205 = sub_22D01582C();
  v231 = *(v205 - 8);
  MEMORY[0x28223BE20](v205, v8);
  v204 = v185 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2E30, &qword_22D01A848);
  MEMORY[0x28223BE20](v10 - 8, v11);
  v214 = v185 - v12;
  v213 = sub_22D0159DC();
  v230 = *(v213 - 8);
  MEMORY[0x28223BE20](v213, v13);
  v223 = v185 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v227 = sub_22D01594C();
  v15 = *(v227 - 8);
  MEMORY[0x28223BE20](v227, v16);
  v222 = v185 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2E38, &qword_22D01A850);
  v20 = MEMORY[0x28223BE20](v18 - 8, v19);
  v221 = v185 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20, v22);
  v232 = v185 - v23;
  v233 = sub_22D01436C();
  v197 = *(v233 - 8);
  MEMORY[0x28223BE20](v233, v24);
  v220 = v185 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v193 = type metadata accessor for ReplicatorParticipant.RelationshipSchedule(0);
  v26 = *(v193 - 8);
  v28 = MEMORY[0x28223BE20](v193, v27);
  v200 = v185 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = MEMORY[0x28223BE20](v28, v30);
  v212 = v185 - v32;
  v34 = MEMORY[0x28223BE20](v31, v33);
  v207 = v185 - v35;
  v37 = MEMORY[0x28223BE20](v34, v36);
  v224 = v185 - v38;
  MEMORY[0x28223BE20](v37, v39);
  v228 = v185 - v40;
  v41 = type metadata accessor for Activity(0);
  v43 = MEMORY[0x28223BE20](v41 - 8, v42);
  v199 = v185 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = MEMORY[0x28223BE20](v43, v45);
  v48 = v185 - v47;
  v50 = MEMORY[0x28223BE20](v46, v49);
  v211 = (v185 - v51);
  v53 = MEMORY[0x28223BE20](v50, v52);
  v206 = (v185 - v54);
  v56 = MEMORY[0x28223BE20](v53, v55);
  v225 = (v185 - v57);
  MEMORY[0x28223BE20](v56, v58);
  v203 = v185 - v59;
  v60 = sub_22D01659C();
  v61 = *(v60 - 8);
  MEMORY[0x28223BE20](v60, v62);
  v64 = (v185 - ((v63 + 15) & 0xFFFFFFFFFFFFFFF0));
  v65 = *(v2 + 16);
  *v64 = v65;
  (*(v61 + 104))(v64, *MEMORY[0x277D85200], v60);
  v66 = v65;
  v67 = sub_22D0165BC();
  (*(v61 + 8))(v64, v60);
  if ((v67 & 1) == 0)
  {
    __break(1u);
LABEL_46:
    swift_once();
    goto LABEL_7;
  }

  sub_22CEEB6DC(v2 + 32, &v236, &qword_27D9F2E28, &unk_22D01A838);
  if (v237)
  {
    sub_22CFA3864(&v236, &v238);
    swift_beginAccess();
    sub_22CEEB6DC(v2 + 136, &v234, &qword_27D9F2E40, &qword_22D01A858);
    if (v235)
    {
      v68 = sub_22CEF44D4(&v234, &v236);
      MEMORY[0x28223BE20](v68, v69);
      v70 = v226;
      v185[-2] = &v236;
      v185[-1] = v70;

      a2 = sub_22CF68C7C(sub_22CFA38BC, &v185[-4], a2);

      __swift_destroy_boxed_opaque_existential_1Tm(&v236);
      v71 = *(a2 + 16);

      if (v71)
      {
        v72 = v233;
        v73 = v220;
        v74 = v226;
LABEL_12:
        sub_22CFA011C(v74, v203);
        v81 = *(a2 + 16);
        v82 = a2;
        v83 = v228;
        v84 = v225;
        if (v81)
        {
          v85 = (*(v26 + 80) + 32) & ~*(v26 + 80);
          v185[1] = v82;
          v86 = v82 + v85;
          v219 = (v197 + 16);
          v218 = *(v26 + 72);
          v217 = (v15 + 48);
          v210 = (v15 + 32);
          v201 = (v231 + 8);
          v209 = (v15 + 8);
          v190 = v198 + 16;
          v189 = *MEMORY[0x277D46558];
          v188 = (v229 + 104);
          v187 = (v229 + 8);
          v186 = (v198 + 8);
          v208 = (v230 + 8);
          v216 = (v197 + 8);
          *&v80 = 136446466;
          v215 = v80;
          v192 = xmmword_22D0187A0;
          v87 = v224;
          do
          {
            v89 = v73;
            v231 = v81;
            v230 = v86;
            sub_22CF0CBEC(v86, v83, type metadata accessor for ReplicatorParticipant.RelationshipSchedule);
            if (qword_28143DA98 != -1)
            {
              swift_once();
            }

            v90 = sub_22D01637C();
            v91 = __swift_project_value_buffer(v90, qword_2814442F0);
            v92 = v74;
            sub_22CF0CBEC(v74, v84, type metadata accessor for Activity);
            v93 = v83;
            sub_22CF0CBEC(v83, v87, type metadata accessor for ReplicatorParticipant.RelationshipSchedule);
            v229 = v91;
            v94 = sub_22D01636C();
            v95 = sub_22D01690C();
            if (os_log_type_enabled(v94, v95))
            {
              v96 = v87;
              v97 = swift_slowAlloc();
              v98 = swift_slowAlloc();
              *&v236 = v98;
              *v97 = v215;
              v99 = *v84;
              v100 = v84[1];

              sub_22CF0F5E0(v84, type metadata accessor for Activity);
              v101 = sub_22CEEE31C(v99, v100, &v236);

              *(v97 + 4) = v101;
              *(v97 + 12) = 2082;
              sub_22CF1A164(&qword_28143F708, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
              v102 = sub_22D016DEC();
              v104 = v103;
              v105 = v228;
              sub_22CF0F5E0(v96, type metadata accessor for ReplicatorParticipant.RelationshipSchedule);
              v106 = sub_22CEEE31C(v102, v104, &v236);
              v72 = v233;

              *(v97 + 14) = v106;
              _os_log_impl(&dword_22CEE1000, v94, v95, "Adding activity to replicator: %{public}s for relationship schedule: %{public}s", v97, 0x16u);
              swift_arrayDestroy();
              v107 = v98;
              v108 = v227;
              v109 = v226;
              MEMORY[0x2318C6860](v107, -1, -1);
              MEMORY[0x2318C6860](v97, -1, -1);
            }

            else
            {

              sub_22CF0F5E0(v87, type metadata accessor for ReplicatorParticipant.RelationshipSchedule);
              sub_22CF0F5E0(v84, type metadata accessor for Activity);
              v109 = v92;
              v105 = v93;
              v108 = v227;
            }

            v110 = *v219;
            (*v219)(v89, v105, v72);
            __swift_project_boxed_opaque_existential_1(&v238, v239);
            v111 = sub_22D0158AC();
            MEMORY[0x28223BE20](v111, v112);
            v185[-2] = v89;
            v113 = v232;
            sub_22CEEBAB4(sub_22CFA387C, v111, MEMORY[0x277D46770], v232);

            v114 = v221;
            sub_22CEEB6DC(v113, v221, &qword_27D9F2E38, &qword_22D01A850);
            if ((*v217)(v114, 1, v108) == 1)
            {
              sub_22CEEC3D8(v114, &qword_27D9F2E38, &qword_22D01A850);
              v115 = v109;
              v116 = v211;
              sub_22CF0CBEC(v109, v211, type metadata accessor for Activity);
              v117 = v212;
              sub_22CF0CBEC(v105, v212, type metadata accessor for ReplicatorParticipant.RelationshipSchedule);
              v118 = sub_22D01636C();
              v119 = sub_22D0168EC();
              if (os_log_type_enabled(v118, v119))
              {
                v120 = swift_slowAlloc();
                v121 = swift_slowAlloc();
                *&v236 = v121;
                *v120 = v215;
                v122 = v116;
                v123 = *v116;
                v124 = v116[1];

                sub_22CF0F5E0(v122, type metadata accessor for Activity);
                v125 = sub_22CEEE31C(v123, v124, &v236);

                *(v120 + 4) = v125;
                *(v120 + 12) = 2082;
                sub_22CF1A164(&qword_28143F708, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
                v126 = v117;
                v88 = v233;
                v127 = sub_22D016DEC();
                v129 = v128;
                v130 = v126;
                v131 = v228;
                sub_22CF0F5E0(v130, type metadata accessor for ReplicatorParticipant.RelationshipSchedule);
                v132 = sub_22CEEE31C(v127, v129, &v236);
                v115 = v226;

                *(v120 + 14) = v132;
                _os_log_impl(&dword_22CEE1000, v118, v119, "Could not add activity to replicator: %{public}s no device for relationship ID: %{public}s", v120, 0x16u);
                swift_arrayDestroy();
                MEMORY[0x2318C6860](v121, -1, -1);
                v133 = v120;
                v83 = v131;
                MEMORY[0x2318C6860](v133, -1, -1);

                sub_22CEEC3D8(v232, &qword_27D9F2E38, &qword_22D01A850);
                sub_22CF0F5E0(v131, type metadata accessor for ReplicatorParticipant.RelationshipSchedule);
              }

              else
              {
                v83 = v105;

                sub_22CF0F5E0(v117, type metadata accessor for ReplicatorParticipant.RelationshipSchedule);
                sub_22CF0F5E0(v116, type metadata accessor for Activity);
                sub_22CEEC3D8(v232, &qword_27D9F2E38, &qword_22D01A850);
                sub_22CF0F5E0(v105, type metadata accessor for ReplicatorParticipant.RelationshipSchedule);
                v88 = v233;
              }

              v87 = v224;
              v84 = v225;
            }

            else
            {
              (*v210)(v222, v114, v108);
              v134 = v223;
              sub_22CF90C14();
              v135 = sub_22D01593C();
              MEMORY[0x28223BE20](v135, v136);
              v185[-2] = v134;
              v137 = v214;
              sub_22CEEBAB4(sub_22CFA389C, v135, MEMORY[0x277D46670], v214);
              v138 = v137;

              v139 = sub_22D0158DC();
              v140 = *(v139 - 8);
              if ((*(v140 + 48))(v138, 1, v139) == 1)
              {
                sub_22CEEC3D8(v138, &qword_27D9F2E30, &qword_22D01A848);
              }

              else
              {
                v141 = v89;
                v142 = v204;
                sub_22D0158CC();
                (*(v140 + 8))(v138, v139);
                if (qword_27D9F1E60 != -1)
                {
                  swift_once();
                }

                v143 = v205;
                __swift_project_value_buffer(v205, qword_27D9F40E8);
                v144 = sub_22D01580C();
                v146 = v145;
                (*v201)(v142, v143);
                if ((v146 & 1) == 0)
                {
                  v162 = v202;
                  sub_22CF90D50(v141, v144, v202);
                  v191 = v240;
                  __swift_project_boxed_opaque_existential_1(&v238, v239);
                  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2E48, &qword_22D01A860);
                  v163 = v198;
                  v164 = (*(v198 + 80) + 32) & ~*(v198 + 80);
                  v165 = swift_allocObject();
                  *(v165 + 16) = v192;
                  v166 = v194;
                  (*(v163 + 16))(v165 + v164, v162, v194);
                  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F20C8, &qword_22D0188F0);
                  v167 = (*(v197 + 80) + 32) & ~*(v197 + 80);
                  v168 = swift_allocObject();
                  *(v168 + 16) = v192;
                  v169 = v228;
                  v170 = v233;
                  v110(v168 + v167, v228, v233);
                  v171 = v195;
                  *v195 = v168;
                  v172 = v196;
                  (*v188)(v171, v189, v196);
                  sub_22D01585C();

                  (*v187)(v171, v172);
                  (*v186)(v202, v166);
                  (*v209)(v222, v227);
                  sub_22CEEC3D8(v232, &qword_27D9F2E38, &qword_22D01A850);
                  sub_22CF0F5E0(v169, type metadata accessor for ReplicatorParticipant.RelationshipSchedule);
                  (*v208)(v223, v213);
                  v173 = v220;
                  (*v216)(v220, v170);
                  v72 = v170;
                  v74 = v226;
                  v87 = v224;
                  v84 = v225;
                  v83 = v169;
                  v73 = v173;
                  goto LABEL_17;
                }
              }

              v115 = v109;
              v147 = v109;
              v148 = v206;
              sub_22CF0CBEC(v147, v206, type metadata accessor for Activity);
              v83 = v228;
              v149 = v207;
              sub_22CF0CBEC(v228, v207, type metadata accessor for ReplicatorParticipant.RelationshipSchedule);
              v150 = sub_22D01636C();
              v151 = sub_22D0168EC();
              if (os_log_type_enabled(v150, v151))
              {
                v152 = swift_slowAlloc();
                v153 = swift_slowAlloc();
                *&v236 = v153;
                *v152 = v215;
                v154 = *v148;
                v155 = v148[1];

                sub_22CF0F5E0(v148, type metadata accessor for Activity);
                v156 = sub_22CEEE31C(v154, v155, &v236);

                *(v152 + 4) = v156;
                *(v152 + 12) = 2082;
                sub_22CF1A164(&qword_28143F708, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
                v88 = v233;
                v157 = sub_22D016DEC();
                v159 = v158;
                sub_22CF0F5E0(v149, type metadata accessor for ReplicatorParticipant.RelationshipSchedule);
                v160 = sub_22CEEE31C(v157, v159, &v236);
                v115 = v226;

                *(v152 + 14) = v160;
                _os_log_impl(&dword_22CEE1000, v150, v151, "Could not add activity to replicator: %{public}s no device for relationship ID: %{public}s", v152, 0x16u);
                swift_arrayDestroy();
                MEMORY[0x2318C6860](v153, -1, -1);
                v161 = v152;
                v83 = v228;
                MEMORY[0x2318C6860](v161, -1, -1);

                (*v209)(v222, v227);
                sub_22CEEC3D8(v232, &qword_27D9F2E38, &qword_22D01A850);
                sub_22CF0F5E0(v83, type metadata accessor for ReplicatorParticipant.RelationshipSchedule);
              }

              else
              {

                sub_22CF0F5E0(v149, type metadata accessor for ReplicatorParticipant.RelationshipSchedule);
                sub_22CF0F5E0(v148, type metadata accessor for Activity);
                (*v209)(v222, v227);
                sub_22CEEC3D8(v232, &qword_27D9F2E38, &qword_22D01A850);
                sub_22CF0F5E0(v83, type metadata accessor for ReplicatorParticipant.RelationshipSchedule);
                v88 = v233;
              }

              v87 = v224;
              v84 = v225;
              (*v208)(v223, v213);
            }

            v73 = v220;
            (*v216)(v220, v88);
            v72 = v88;
            v74 = v115;
LABEL_17:
            v86 = v230 + v218;
            v81 = v231 - 1;
          }

          while (v231 != 1);
        }

        v174 = v203;
        goto LABEL_43;
      }
    }

    else
    {
      sub_22CEEC3D8(&v234, &qword_27D9F2E40, &qword_22D01A858);
      v72 = v233;
      v79 = v220;
      if (*(a2 + 16))
      {

        v74 = v226;
        v73 = v79;
        goto LABEL_12;
      }
    }

    v175 = v226;
    if (qword_28143DA98 != -1)
    {
      swift_once();
    }

    v176 = sub_22D01637C();
    __swift_project_value_buffer(v176, qword_2814442F0);
    sub_22CF0CBEC(v175, v48, type metadata accessor for Activity);
    v177 = sub_22D01636C();
    v178 = sub_22D01690C();
    if (os_log_type_enabled(v177, v178))
    {
      v179 = swift_slowAlloc();
      v180 = swift_slowAlloc();
      *&v236 = v180;
      *v179 = 136315138;
      v181 = sub_22CF0B174();
      v183 = v182;
      sub_22CF0F5E0(v48, type metadata accessor for Activity);
      v184 = sub_22CEEE31C(v181, v183, &v236);

      *(v179 + 4) = v184;
      _os_log_impl(&dword_22CEE1000, v177, v178, "No applicable relationship schedules to replicate %s", v179, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v180);
      MEMORY[0x2318C6860](v180, -1, -1);
      MEMORY[0x2318C6860](v179, -1, -1);

LABEL_44:
      __swift_destroy_boxed_opaque_existential_1Tm(&v238);
      return;
    }

    v174 = v48;
LABEL_43:
    sub_22CF0F5E0(v174, type metadata accessor for Activity);
    goto LABEL_44;
  }

  sub_22CEEC3D8(&v236, &qword_27D9F2E28, &unk_22D01A838);
  if (qword_28143DA98 != -1)
  {
    goto LABEL_46;
  }

LABEL_7:
  v75 = sub_22D01637C();
  __swift_project_value_buffer(v75, qword_2814442F0);
  v76 = sub_22D01636C();
  v77 = sub_22D0168EC();
  if (os_log_type_enabled(v76, v77))
  {
    v78 = swift_slowAlloc();
    *v78 = 0;
    _os_log_impl(&dword_22CEE1000, v76, v77, "Replicator is not available", v78, 2u);
    MEMORY[0x2318C6860](v78, -1, -1);
  }
}

void sub_22CF8F470(uint64_t *a1, uint64_t a2)
{
  v85 = a1;
  v4 = sub_22D015A5C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v98 = &v80 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_22D0159BC();
  MEMORY[0x28223BE20](v8 - 8, v9);
  v97 = &v80 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = sub_22D01436C();
  v99 = *(v100 - 8);
  v12 = MEMORY[0x28223BE20](v100, v11);
  v84 = &v80 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12, v14);
  v101 = &v80 - v15;
  v16 = type metadata accessor for Activity(0);
  v18 = MEMORY[0x28223BE20](v16 - 8, v17);
  v83 = (&v80 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v18, v20);
  v22 = (&v80 - v21);
  v23 = sub_22D01659C();
  v24 = *(v23 - 8);
  MEMORY[0x28223BE20](v23, v25);
  v27 = (&v80 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  v28 = *(v2 + 16);
  *v27 = v28;
  (*(v24 + 104))(v27, *MEMORY[0x277D85200], v23);
  v29 = v28;
  LOBYTE(v28) = sub_22D0165BC();
  (*(v24 + 8))(v27, v23);
  if ((v28 & 1) == 0)
  {
    __break(1u);
    goto LABEL_22;
  }

  sub_22CEEB6DC(v2 + 32, &v105, &qword_27D9F2E28, &unk_22D01A838);
  if (v106)
  {
    sub_22CFA3864(&v105, &v107);
    if (qword_28143DA98 == -1)
    {
LABEL_4:
      v30 = sub_22D01637C();
      v31 = __swift_project_value_buffer(v30, qword_2814442F0);
      sub_22CF0CBEC(v85, v22, type metadata accessor for Activity);

      v82 = v31;
      v32 = sub_22D01636C();
      v33 = sub_22D0168EC();

      v34 = os_log_type_enabled(v32, v33);
      v96 = v4;
      if (v34)
      {
        v35 = swift_slowAlloc();
        v36 = swift_slowAlloc();
        *&v105 = v36;
        *v35 = 136446466;
        v37 = v5;
        v38 = *v22;
        v39 = v22[1];

        sub_22CF0F5E0(v22, type metadata accessor for Activity);
        v40 = sub_22CEEE31C(v38, v39, &v105);
        v5 = v37;

        *(v35 + 4) = v40;
        *(v35 + 12) = 2082;
        v41 = MEMORY[0x2318C5950](a2, v100);
        v43 = sub_22CEEE31C(v41, v42, &v105);

        *(v35 + 14) = v43;
        _os_log_impl(&dword_22CEE1000, v32, v33, "Removing activity from replicator: %{public}s for relationship IDs: %{public}s", v35, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x2318C6860](v36, -1, -1);
        MEMORY[0x2318C6860](v35, -1, -1);
      }

      else
      {

        sub_22CF0F5E0(v22, type metadata accessor for Activity);
      }

      v48 = *(a2 + 16);
      v49 = v101;
      if (v48)
      {
        v104 = 0;
        v50 = v85[1];
        v95 = *v85;
        v94 = v50;
        v93 = "ubscriptionsPublisher";
        v51 = *(v99 + 16);
        v52 = a2 + ((*(v99 + 80) + 32) & ~*(v99 + 80));
        v92 = *(v99 + 72);
        v91 = (v99 + 56);
        v90 = *MEMORY[0x277D46828];
        v89 = (v5 + 104);
        v88 = (v5 + 8);
        v87 = (v99 + 8);
        *(&v53 + 1) = 2;
        v86 = xmmword_22D0187A0;
        *&v53 = 136446466;
        v80 = v53;
        v99 += 16;
        v81 = v51;
        do
        {
          v103 = v48;
          v54 = v100;
          v51(v49, v52, v100);
          v102 = v109;
          __swift_project_boxed_opaque_existential_1(&v107, v108);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F23E8, &unk_22D0189B0);
          sub_22D0159DC();
          *(swift_allocObject() + 16) = v86;
          *&v105 = v95;
          *(&v105 + 1) = v94;

          MEMORY[0x2318C5860](46, 0xE100000000000000);
          v55 = sub_22D01432C();
          MEMORY[0x2318C5860](v55);

          (*v91)(v97, 1, 1, v54);
          sub_22D01597C();
          v56 = v98;
          v57 = v96;
          (*v89)(v98, v90, v96);
          v58 = v104;
          sub_22D01586C();
          v104 = v58;
          if (v58)
          {
            (*v88)(v56, v57);

            v59 = v83;
            sub_22CF0CBEC(v85, v83, type metadata accessor for Activity);
            v60 = v84;
            v51(v84, v101, v54);
            v61 = sub_22D01636C();
            v62 = sub_22D0168EC();
            if (os_log_type_enabled(v61, v62))
            {
              v63 = swift_slowAlloc();
              v64 = swift_slowAlloc();
              *&v105 = v64;
              *v63 = v80;
              v66 = *v59;
              v65 = v59[1];

              sub_22CF0F5E0(v59, type metadata accessor for Activity);
              v67 = sub_22CEEE31C(v66, v65, &v105);

              *(v63 + 4) = v67;
              *(v63 + 12) = 2082;
              sub_22CF1A164(&qword_28143F708, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
              v68 = v100;
              v69 = sub_22D016DEC();
              v71 = v70;
              v72 = v60;
              v73 = *v87;
              (*v87)(v72, v68);
              v74 = sub_22CEEE31C(v69, v71, &v105);

              *(v63 + 14) = v74;
              _os_log_impl(&dword_22CEE1000, v61, v62, "Could not remove activity from replicator: %{public}s for relationship ID: %{public}s", v63, 0x16u);
              swift_arrayDestroy();
              MEMORY[0x2318C6860](v64, -1, -1);
              MEMORY[0x2318C6860](v63, -1, -1);

              v49 = v101;
              v75 = v68;
              v51 = v81;
              v73(v101, v75);
              v104 = 0;
            }

            else
            {

              v76 = v59;
              v77 = *v87;
              v78 = v100;
              (*v87)(v60, v100);
              sub_22CF0F5E0(v76, type metadata accessor for Activity);
              v79 = v101;
              v77(v101, v78);
              v104 = 0;
              v49 = v79;
            }
          }

          else
          {

            (*v88)(v56, v57);
            v49 = v101;
            (*v87)(v101, v54);
          }

          v52 += v92;
          v48 = v103 - 1;
        }

        while (v103 != 1);
      }

      __swift_destroy_boxed_opaque_existential_1Tm(&v107);
      return;
    }

LABEL_22:
    swift_once();
    goto LABEL_4;
  }

  sub_22CEEC3D8(&v105, &qword_27D9F2E28, &unk_22D01A838);
  if (qword_28143DA98 != -1)
  {
    swift_once();
  }

  v44 = sub_22D01637C();
  __swift_project_value_buffer(v44, qword_2814442F0);
  v45 = sub_22D01636C();
  v46 = sub_22D0168EC();
  if (os_log_type_enabled(v45, v46))
  {
    v47 = swift_slowAlloc();
    *v47 = 0;
    _os_log_impl(&dword_22CEE1000, v45, v46, "Replicator is not available", v47, 2u);
    MEMORY[0x2318C6860](v47, -1, -1);
  }
}

void sub_22CF90068(uint64_t *a1)
{
  v80 = a1;
  v70 = sub_22D015A5C();
  v69 = *(v70 - 8);
  MEMORY[0x28223BE20](v70, v2);
  v68 = &v65 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = sub_22D015A3C();
  v71 = *(v75 - 8);
  MEMORY[0x28223BE20](v75, v4);
  v73 = &v65 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Activity(0);
  v8 = MEMORY[0x28223BE20](v6, v7);
  v72 = &v65 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8, v10);
  v12 = (&v65 - v11);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2E80, &unk_22D01A890);
  MEMORY[0x28223BE20](v13 - 8, v14);
  v16 = &v65 - v15;
  v78 = sub_22D01436C();
  v17 = *(v78 - 8);
  v19 = MEMORY[0x28223BE20](v78, v18);
  v21 = &v65 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19, v22);
  v79 = &v65 - v23;
  v74 = sub_22D01589C();
  v76 = *(v74 - 8);
  MEMORY[0x28223BE20](v74, v24);
  v77 = (&v65 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  v26 = sub_22D01659C();
  v27 = *(v26 - 8);
  MEMORY[0x28223BE20](v26, v28);
  v30 = (&v65 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0));
  v31 = *(v1 + 16);
  *v30 = v31;
  (*(v27 + 104))(v30, *MEMORY[0x277D85200], v26);
  v32 = v31;
  LOBYTE(v31) = sub_22D0165BC();
  (*(v27 + 8))(v30, v26);
  if ((v31 & 1) == 0)
  {
    __break(1u);
LABEL_18:
    swift_once();
    goto LABEL_7;
  }

  sub_22CEEB6DC(v1 + 32, &v81, &qword_27D9F2E28, &unk_22D01A838);
  if (v82)
  {
    sub_22CFA3864(&v81, v83);
    if (*(v80 + *(v6 + 52) + 8))
    {
      sub_22D01431C();
      v33 = v17;
      v34 = *(v17 + 48);
      v35 = v78;
      if (v34(v16, 1, v78) == 1)
      {
        sub_22CEEC3D8(v16, &qword_27D9F2E80, &unk_22D01A890);
      }

      else
      {
        v67 = v1;
        (*(v33 + 32))(v21, v16, v35);
        v40 = *(v33 + 16);
        v41 = v79;
        v40(v79, v21, v35);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F20C8, &qword_22D0188F0);
        v42 = (*(v33 + 80) + 32) & ~*(v33 + 80);
        v43 = swift_allocObject();
        v65 = xmmword_22D0187A0;
        *(v43 + 16) = xmmword_22D0187A0;
        v40(v43 + v42, v41, v35);
        v66 = *(v33 + 8);
        v66(v21, v35);
        v44 = v77;
        *v77 = v43;
        (*(v76 + 104))(v44, *MEMORY[0x277D46558], v74);
        if (qword_28143DA98 != -1)
        {
          swift_once();
        }

        v45 = sub_22D01637C();
        v46 = __swift_project_value_buffer(v45, qword_2814442F0);
        sub_22CF0CBEC(v80, v12, type metadata accessor for Activity);
        v47 = sub_22D01636C();
        v48 = sub_22D0168EC();
        v49 = os_log_type_enabled(v47, v48);
        v50 = v75;
        if (v49)
        {
          v51 = v46;
          v52 = swift_slowAlloc();
          v53 = swift_slowAlloc();
          *&v81 = v53;
          *v52 = 136446210;
          v54 = *v12;
          v55 = v12[1];

          sub_22CF0F5E0(v12, type metadata accessor for Activity);
          v56 = sub_22CEEE31C(v54, v55, &v81);
          v35 = v78;

          *(v52 + 4) = v56;
          _os_log_impl(&dword_22CEE1000, v47, v48, "Adding dismiss record for activity: %{public}s", v52, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v53);
          MEMORY[0x2318C6860](v53, -1, -1);
          v57 = v52;
          v46 = v51;
          v50 = v75;
          MEMORY[0x2318C6860](v57, -1, -1);
        }

        else
        {

          sub_22CF0F5E0(v12, type metadata accessor for Activity);
        }

        v58 = v71;
        v59 = v73;
        sub_22CF9161C(*v80, v80[1], v79, v83, v73);
        v71 = v46;
        v72 = v84;
        v78 = v85;
        __swift_project_boxed_opaque_existential_1(v83, v84);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2E48, &qword_22D01A860);
        v60 = (*(v58 + 80) + 32) & ~*(v58 + 80);
        v61 = swift_allocObject();
        *(v61 + 16) = v65;
        (*(v58 + 16))(v61 + v60, v59, v50);
        v62 = v69;
        v63 = v68;
        v64 = v70;
        (*(v69 + 104))(v68, *MEMORY[0x277D46828], v70);
        sub_22D01585C();

        (*(v62 + 8))(v63, v64);
        (*(v58 + 8))(v73, v75);
        v66(v79, v35);
        (*(v76 + 8))(v77, v74);
      }
    }

    __swift_destroy_boxed_opaque_existential_1Tm(v83);
    return;
  }

  sub_22CEEC3D8(&v81, &qword_27D9F2E28, &unk_22D01A838);
  if (qword_28143DA98 != -1)
  {
    goto LABEL_18;
  }

LABEL_7:
  v36 = sub_22D01637C();
  __swift_project_value_buffer(v36, qword_2814442F0);
  v37 = sub_22D01636C();
  v38 = sub_22D0168EC();
  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    *v39 = 0;
    _os_log_impl(&dword_22CEE1000, v37, v38, "Replicator is not available", v39, 2u);
    MEMORY[0x2318C6860](v39, -1, -1);
  }
}

uint64_t sub_22CF90C14()
{
  v1 = sub_22D0159BC();
  MEMORY[0x28223BE20](v1 - 8, v2);
  v4 = v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = v0[1];
  v9[0] = *v0;
  v9[1] = v5;

  MEMORY[0x2318C5860](46, 0xE100000000000000);
  v6 = sub_22D01432C();
  MEMORY[0x2318C5860](v6);

  v7 = sub_22D01436C();
  (*(*(v7 - 8) + 56))(v4, 1, 1, v7);
  return sub_22D01597C();
}

void sub_22CF90D50(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v63 = a2;
  v59[1] = a1;
  v67 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2648, &unk_22D018BC0);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v64 = v59 - v6;
  v7 = sub_22D01430C();
  v65 = *(v7 - 8);
  v66 = v7;
  MEMORY[0x28223BE20](v7, v8);
  v73 = v59 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2708, &qword_22D018FC0);
  MEMORY[0x28223BE20](v10 - 8, v11);
  v61 = v59 - v12;
  v13 = sub_22D0159DC();
  v71 = *(v13 - 8);
  v72 = v13;
  v15 = MEMORY[0x28223BE20](v13, v14);
  v68 = v59 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15, v17);
  v74 = v59 - v18;
  v19 = sub_22D01436C();
  v69 = *(v19 - 8);
  v70 = v19;
  v21 = MEMORY[0x28223BE20](v19, v20);
  v62 = v59 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21, v23);
  v75 = v59 - v24;
  v25 = sub_22D01504C();
  MEMORY[0x28223BE20](v25 - 8, v26);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2308, &unk_22D018950);
  v29 = MEMORY[0x28223BE20](v27 - 8, v28);
  v31 = v59 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29, v32);
  v34 = v59 - v33;
  v35 = sub_22D0150CC();
  v36 = *(v35 - 8);
  MEMORY[0x28223BE20](v35, v37);
  v39 = v59 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = type metadata accessor for Activity(0);
  MEMORY[0x28223BE20](v40, v41);
  v43 = v59 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = v3;
  sub_22CF0CBEC(v3, v43, type metadata accessor for Activity);
  v79 = v40;
  sub_22D01462C();
  if ((*(v36 + 48))(v34, 1, v35) == 1)
  {
    sub_22CEEC3D8(v34, &qword_27D9F2308, &unk_22D018950);
  }

  else
  {
    (*(v36 + 32))(v39, v34, v35);
    sub_22D01503C();
    sub_22D0150AC();
    (*(v36 + 16))(v31, v39, v35);
    (*(v36 + 56))(v31, 0, 1, v35);
    sub_22D01463C();
    (*(v36 + 8))(v39, v35);
  }

  sub_22D0140BC();
  swift_allocObject();
  sub_22D0140AC();
  sub_22CF1A164(&qword_27D9F2E50, type metadata accessor for Activity, &unk_22D01C97C);
  v44 = v76;
  v45 = sub_22D01409C();
  if (v44)
  {
    sub_22CF0F5E0(v43, type metadata accessor for Activity);
  }

  else
  {
    v47 = v45;
    v48 = v46;
    v77 = v45;
    v78 = v46;
    sub_22CFA38FC();
    sub_22D01595C();
    sub_22CF90C14();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2E60, &qword_22D01A868);
    v49 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2E68, &unk_22D01A870) - 8);
    v50 = (*(v49 + 80) + 32) & ~*(v49 + 80);
    v51 = swift_allocObject();
    *(v51 + 16) = xmmword_22D0187A0;
    v52 = (v51 + v50);
    *v52 = v63;
    v53 = sub_22D0141BC();
    (*(*(v53 - 8) + 56))(v61, 1, 1, v53);
    sub_22CEEC970(v47, v48);
    sub_22D015A0C();
    v76 = sub_22CFF76D0(v51);
    swift_setDeallocating();
    sub_22CEEC3D8(v52, &qword_27D9F2E68, &unk_22D01A870);
    swift_deallocClassInstance();
    v54 = v73;
    sub_22D01425C();
    (*(v71 + 16))(v68, v74, v72);
    (*(v69 + 16))(v62, v75, v70);
    v56 = v64;
    v55 = v65;
    v57 = v54;
    v58 = v66;
    (*(v65 + 16))(v64, v57, v66);
    (*(v55 + 56))(v56, 0, 1, v58);
    sub_22D0159EC();

    sub_22CEE7524(v47, v48);
    (*(v55 + 8))(v73, v58);
    (*(v71 + 8))(v74, v72);
    (*(v69 + 8))(v75, v70);
    sub_22CF0F5E0(v43, type metadata accessor for Activity);
  }
}

uint64_t sub_22CF9161C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t a5@<X8>)
{
  v78 = a3;
  v63[2] = a1;
  v63[3] = a2;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2648, &unk_22D018BC0);
  MEMORY[0x28223BE20](v8 - 8, v9);
  v70 = v63 - v10;
  v71 = sub_22D01430C();
  v69 = *(v71 - 8);
  v12 = MEMORY[0x28223BE20](v71, v11);
  v66 = v63 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12, v14);
  v68 = v63 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2708, &qword_22D018FC0);
  MEMORY[0x28223BE20](v16 - 8, v17);
  v64 = v63 - v18;
  v19 = sub_22D0159BC();
  MEMORY[0x28223BE20](v19 - 8, v20);
  v22 = v63 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = sub_22D0159DC();
  v67 = *(v73 - 8);
  v24 = MEMORY[0x28223BE20](v73, v23);
  v72 = v63 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24, v26);
  v75 = v63 - v27;
  v76 = sub_22D01436C();
  v74 = *(v76 - 8);
  v29 = MEMORY[0x28223BE20](v76, v28);
  v65 = v63 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29, v31);
  v77 = v63 - v32;
  v33 = type metadata accessor for ReplicatorParticipant.RemoteActivityDismissal(0);
  MEMORY[0x28223BE20](v33, v34);
  v36 = v63 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = sub_22D01659C();
  v38 = *(v37 - 8);
  MEMORY[0x28223BE20](v37, v39);
  v41 = (v63 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0));
  v42 = *(v5 + 16);
  *v41 = v42;
  (*(v38 + 104))(v41, *MEMORY[0x277D85200], v37);
  v43 = v42;
  LOBYTE(v42) = sub_22D0165BC();
  result = (*(v38 + 8))(v41, v37);
  if (v42)
  {
    v63[1] = a5;
    sub_22D0142DC();
    __swift_project_boxed_opaque_existential_1(a4, a4[3]);
    sub_22CF1A164(&qword_27D9F2E88, type metadata accessor for ReplicatorParticipant.RemoteActivityDismissal, &unk_22D01AA98);
    sub_22CF1A164(&qword_27D9F2E90, type metadata accessor for ReplicatorParticipant.RemoteActivityDismissal, &unk_22D01AA70);
    v45 = v81;
    v46 = sub_22D0157FC();
    if (!v45)
    {
      v49 = v46;
      v50 = v47;
      v81 = v48;
      v79 = v46;
      v80 = v47;
      sub_22CFA38FC();
      sub_22D01595C();
      (*(v74 + 56))(v22, 1, 1, v76);

      sub_22D01597C();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2E60, &qword_22D01A868);
      v51 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2E68, &unk_22D01A870) - 8);
      v52 = (*(v51 + 80) + 32) & ~*(v51 + 80);
      v53 = swift_allocObject();
      *(v53 + 16) = xmmword_22D0187A0;
      v54 = (v53 + v52);
      *v54 = v81;
      v55 = sub_22D0141BC();
      (*(*(v55 - 8) + 56))(v64, 1, 1, v55);
      sub_22CEEC970(v49, v50);
      sub_22D015A0C();
      v81 = sub_22CFF76D0(v53);
      swift_setDeallocating();
      sub_22CEEC3D8(v54, &qword_27D9F2E68, &unk_22D01A870);
      swift_deallocClassInstance();
      v56 = v66;
      sub_22D0142DC();
      v78 = v49;
      v57 = v68;
      sub_22D01425C();
      v58 = v69;
      v64 = *(v69 + 8);
      v59 = v71;
      (v64)(v56, v71);
      v60 = v67;
      (*(v67 + 16))(v72, v75, v73);
      v61 = *(v74 + 16);
      v66 = v50;
      v61(v65, v77, v76);
      v62 = v70;
      (*(v58 + 16))(v70, v57, v59);
      (*(v58 + 56))(v62, 0, 1, v59);
      sub_22D0159EC();
      sub_22CEE7524(v78, v66);
      (v64)(v57, v59);
      (*(v60 + 8))(v75, v73);
      (*(v74 + 8))(v77, v76);
    }

    return sub_22CF0F5E0(v36, type metadata accessor for ReplicatorParticipant.RemoteActivityDismissal);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_22CF91EB4()
{
  sub_22D016EAC();
  MEMORY[0x2318C6020](0);
  return sub_22D016ECC();
}

uint64_t sub_22CF91F20(uint64_t a1)
{
  sub_22D016EAC();
  MEMORY[0x2318C6020](0);
  return sub_22D016ECC();
}

uint64_t sub_22CF91F80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6165724365746164 && a2 == 0xEB00000000646574)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_22D016DFC();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_22CF92024(uint64_t a1)
{
  v2 = sub_22CFA6618();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22CF92060(uint64_t a1)
{
  v2 = sub_22CFA6618();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22CF9209C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v19 = a2;
  v3 = sub_22D01430C();
  v20 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v4);
  v21 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2F78, &qword_22D01AAC0);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v18 - v9;
  v11 = type metadata accessor for ReplicatorParticipant.RemoteActivityDismissal(0);
  MEMORY[0x28223BE20](v11 - 8, v12);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22D0142DC();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22CFA6618();
  v15 = v22;
  sub_22D016EDC();
  if (!v15)
  {
    v16 = v20;
    sub_22CF1A164(&qword_27D9F2F88, MEMORY[0x277CC9578], MEMORY[0x277CC95A0]);
    sub_22D016DAC();
    (*(v7 + 8))(v10, v6);
    (*(v16 + 40))(v14, v21, v3);
    sub_22CF0CBEC(v14, v19, type metadata accessor for ReplicatorParticipant.RemoteActivityDismissal);
  }

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return sub_22CF0F5E0(v14, type metadata accessor for ReplicatorParticipant.RemoteActivityDismissal);
}

uint64_t sub_22CF9236C(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2F90, &qword_22D01AAC8);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22CFA6618();
  sub_22D016EEC();
  sub_22D01430C();
  sub_22CF1A164(&qword_27D9F2F98, MEMORY[0x277CC9578], MEMORY[0x277CC9580]);
  sub_22D016DDC();
  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_22CF924E4(uint64_t a1, int a2, uint64_t a3, int a4, uint64_t a5)
{
  v97 = a5;
  v95 = a4;
  v104 = a3;
  v98 = a2;
  v102 = type metadata accessor for ActivityManagerEvent(0);
  MEMORY[0x28223BE20](v102, v6);
  v103 = (&v91 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v101 = sub_22D01502C();
  v8 = *(v101 - 8);
  v10 = MEMORY[0x28223BE20](v101, v9);
  v96 = &v91 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10, v12);
  v14 = &v91 - v13;
  v15 = sub_22D014EFC();
  v109 = *(v15 - 8);
  v110 = v15;
  v17 = MEMORY[0x28223BE20](v15, v16);
  v106 = &v91 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v17, v19);
  v22 = &v91 - v21;
  v24 = MEMORY[0x28223BE20](v20, v23);
  v26 = &v91 - v25;
  MEMORY[0x28223BE20](v24, v27);
  v29 = &v91 - v28;
  v105 = type metadata accessor for Activity(0);
  v30 = *(v105 + 28);
  v107 = a1;
  v31 = *(a1 + v30);
  v32 = 1 << *(v31 + 32);
  v33 = -1;
  if (v32 < 64)
  {
    v33 = ~(-1 << v32);
  }

  v34 = v33 & *(v31 + 64);
  v35 = (v32 + 63) >> 6;
  v99 = (v8 + 8);
  v100 = (v8 + 32);
  swift_bridgeObjectRetain_n();
  v36 = 0;
  v108 = MEMORY[0x277D84F90];
  while (1)
  {
    v37 = v36;
    if (!v34)
    {
      break;
    }

LABEL_8:
    v38 = __clz(__rbit64(v34));
    v34 &= v34 - 1;
    v39 = MEMORY[0x277CB9790];
    sub_22CF0CBEC(*(v31 + 56) + *(v109 + 72) * (v38 | (v36 << 6)), v29, MEMORY[0x277CB9790]);
    sub_22CF0CBEC(v29, v26, v39);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v40 = MEMORY[0x277CB9790];
      sub_22CF0F5E0(v26, MEMORY[0x277CB9790]);
      sub_22CF0F5E0(v29, v40);
    }

    else
    {
      v41 = v101;
      (*v100)(v14, v26, v101);
      v42 = sub_22D014F9C();
      v93 = v43;
      v94 = v42;
      (*v99)(v14, v41);
      sub_22CF0F5E0(v29, MEMORY[0x277CB9790]);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v108 = sub_22CFCE000(0, *(v108 + 2) + 1, 1, v108);
      }

      v45 = *(v108 + 2);
      v44 = *(v108 + 3);
      v46 = v45 + 1;
      if (v45 >= v44 >> 1)
      {
        v92 = v45 + 1;
        v50 = sub_22CFCE000((v44 > 1), v45 + 1, 1, v108);
        v46 = v92;
        v108 = v50;
      }

      v47 = v108;
      *(v108 + 2) = v46;
      v48 = &v47[16 * v45];
      v49 = v93;
      *(v48 + 4) = v94;
      *(v48 + 5) = v49;
    }
  }

  while (1)
  {
    v36 = v37 + 1;
    if (__OFADD__(v37, 1))
    {
      __break(1u);
      goto LABEL_46;
    }

    if (v36 >= v35)
    {
      break;
    }

    v34 = *(v31 + 64 + 8 * v36);
    ++v37;
    if (v34)
    {
      goto LABEL_8;
    }
  }

  v31 = v107;
  v51 = *(v107 + *(v105 + 32));
  v52 = 1 << *(v51 + 32);
  v53 = -1;
  if (v52 < 64)
  {
    v53 = ~(-1 << v52);
  }

  v54 = v53 & *(v51 + 64);
  v55 = (v52 + 63) >> 6;
  swift_bridgeObjectRetain_n();
  v56 = 0;
  v57 = MEMORY[0x277D84F90];
  v58 = v106;
  if (v54)
  {
    while (1)
    {
      v59 = v56;
LABEL_22:
      v60 = __clz(__rbit64(v54));
      v54 &= v54 - 1;
      v61 = MEMORY[0x277CB9790];
      sub_22CF0CBEC(*(v51 + 56) + *(v109 + 72) * (v60 | (v59 << 6)), v22, MEMORY[0x277CB9790]);
      sub_22CF0CBEC(v22, v58, v61);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v62 = MEMORY[0x277CB9790];
        sub_22CF0F5E0(v58, MEMORY[0x277CB9790]);
        sub_22CF0F5E0(v22, v62);
        v56 = v59;
        if (!v54)
        {
          break;
        }
      }

      else
      {
        v63 = v96;
        v64 = v58;
        v65 = v101;
        (*v100)(v96, v64, v101);
        v105 = sub_22D014F9C();
        v67 = v66;
        (*v99)(v63, v65);
        sub_22CF0F5E0(v22, MEMORY[0x277CB9790]);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v57 = sub_22CFCE000(0, *(v57 + 2) + 1, 1, v57);
        }

        v69 = *(v57 + 2);
        v68 = *(v57 + 3);
        if (v69 >= v68 >> 1)
        {
          v57 = sub_22CFCE000((v68 > 1), v69 + 1, 1, v57);
        }

        *(v57 + 2) = v69 + 1;
        v70 = &v57[16 * v69];
        *(v70 + 4) = v105;
        *(v70 + 5) = v67;
        v56 = v59;
        v31 = v107;
        v58 = v106;
        if (!v54)
        {
          break;
        }
      }
    }
  }

  while (1)
  {
    v59 = v56 + 1;
    if (__OFADD__(v56, 1))
    {
      break;
    }

    if (v59 >= v55)
    {

      v111[0] = v108;
      sub_22CFA1444(v57);
      v71 = sub_22CF7BDC4(v111[0]);

      v72 = v104;

      v73 = sub_22CFA2D7C(v71, v72)[2];

      if (v73)
      {
        if (qword_28143DA98 != -1)
        {
          goto LABEL_47;
        }

        goto LABEL_33;
      }

      v88 = *(v31 + *(v102 + 20));
      if (v88 == 4)
      {
        v89 = 1;
        return v89 & 1;
      }

      if ((v98 & 1) == 0 || (v89 = 1, v88 != 1) && ((v88 == 0) & v95) == 0)
      {
        if (!*(v97 + 16))
        {
          goto LABEL_38;
        }

        sub_22CEEC698(*v31, *(v31 + 8));
      }

      return v89 & 1;
    }

    v54 = *(v51 + 64 + 8 * v59);
    ++v56;
    if (v54)
    {
      goto LABEL_22;
    }
  }

LABEL_46:
  __break(1u);
LABEL_47:
  swift_once();
LABEL_33:
  v74 = sub_22D01637C();
  __swift_project_value_buffer(v74, qword_2814442F0);
  v75 = v31;
  v76 = v103;
  sub_22CF0CBEC(v75, v103, type metadata accessor for ActivityManagerEvent);

  v77 = sub_22D01636C();
  v78 = sub_22D01690C();

  if (os_log_type_enabled(v77, v78))
  {
    v79 = swift_slowAlloc();
    v80 = swift_slowAlloc();
    v111[0] = v80;
    *v79 = 136315394;
    v81 = *v76;
    v82 = v76[1];

    sub_22CF0F5E0(v76, type metadata accessor for ActivityManagerEvent);
    v83 = sub_22CEEE31C(v81, v82, v111);

    *(v79 + 4) = v83;
    *(v79 + 12) = 2080;
    v84 = sub_22D01686C();
    v86 = v85;

    v87 = sub_22CEEE31C(v84, v86, v111);

    *(v79 + 14) = v87;
    _os_log_impl(&dword_22CEE1000, v77, v78, "Not sending activity %s because %s overlaps presentationTargetBundleIDExceptions", v79, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x2318C6860](v80, -1, -1);
    MEMORY[0x2318C6860](v79, -1, -1);
  }

  else
  {

    sub_22CF0F5E0(v76, type metadata accessor for ActivityManagerEvent);
  }

LABEL_38:
  v89 = 0;
  return v89 & 1;
}

void sub_22CF92DF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{

  v11 = sub_22CF7C51C();
  if (a2)
  {
  }

  else
  {
    sub_22CFF78AC(MEMORY[0x277D84F90]);
  }

  v12 = sub_22CF7C51C();
  if (*(v12 + 16) <= *(v11 + 16) >> 3)
  {

    sub_22CF627A8(v12);
    v13 = v11;
  }

  else
  {

    v13 = sub_22CF62C50(v12, v11);
  }

  if (*(v11 + 16) <= *(v12 + 16) >> 3)
  {

    sub_22CF627A8(v11);
    v87 = v12;
  }

  else
  {

    v87 = sub_22CF62C50(v11, v12);
  }

  v84 = sub_22CFA2D7C(v12, v11);

  if (a2)
  {

    v14 = a2;
  }

  else
  {
    v14 = MEMORY[0x277D84FA0];
  }

  v15 = a8;
  if (*(v14 + 16) <= *(a6 + 16) >> 3)
  {

    sub_22CF627A8(v14);
    v88 = a6;
  }

  else
  {

    v88 = sub_22CF62C50(v14, a6);
  }

  v82 = a2;
  v83 = a4;
  if (*(a6 + 16) <= *(v14 + 16) >> 3)
  {
    sub_22CF627A8(a6);
    v85 = v14;
  }

  else
  {
    v85 = sub_22CF62C50(a6, v14);
  }

  v16 = 0;
  v17 = 1 << *(v13 + 32);
  v18 = -1;
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  v19 = v18 & *(v13 + 56);
  v20 = (v17 + 63) >> 6;
  while (v19)
  {
LABEL_29:
    v24 = (*(v13 + 48) + ((v16 << 10) | (16 * __clz(__rbit64(v19)))));
    v26 = *v24;
    v25 = v24[1];
    v27 = *(v15 + 16);

    if (v27 && (sub_22CEEC698(v26, v25), (v28 & 1) != 0))
    {
      v22 = sub_22D01510C();
      v21 = v29;
    }

    else
    {
      v21 = 0xE700000000000000;
      v22 = 0x6E776F6E6B6E75;
    }

    v19 &= v19 - 1;
    sub_22D016C6C();

    MEMORY[0x2318C5860](v26, v25);

    MEMORY[0x2318C5860](0x206570797420, 0xE600000000000000);
    MEMORY[0x2318C5860](v22, v21);

    MEMORY[0x2318C5860](10, 0xE100000000000000);
    MEMORY[0x2318C5860](0x206465646441, 0xE600000000000000);

    v15 = a8;
  }

  while (1)
  {
    v23 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      __break(1u);
LABEL_92:
      __break(1u);
LABEL_93:
      __break(1u);
LABEL_94:
      __break(1u);
      goto LABEL_95;
    }

    if (v23 >= v20)
    {
      break;
    }

    v19 = *(v13 + 56 + 8 * v23);
    ++v16;
    if (v19)
    {
      v16 = v23;
      goto LABEL_29;
    }
  }

  v30 = 0;
  v31 = 1 << *(v88 + 32);
  v32 = -1;
  if (v31 < 64)
  {
    v32 = ~(-1 << v31);
  }

  v33 = v32 & *(v88 + 56);
  v34 = (v31 + 63) >> 6;
  if (v33)
  {
    while (1)
    {
      v35 = v30;
LABEL_40:
      v36 = (*(v88 + 48) + ((v35 << 10) | (16 * __clz(__rbit64(v33)))));
      v37 = *v36;
      v38 = v36[1];
      v33 &= v33 - 1;

      sub_22D016C6C();

      MEMORY[0x2318C5860](v37, v38);

      MEMORY[0x2318C5860](10, 0xE100000000000000);
      MEMORY[0x2318C5860](0xD000000000000010, 0x800000022D020620);

      if (!v33)
      {
        goto LABEL_36;
      }
    }
  }

  while (1)
  {
LABEL_36:
    v35 = v30 + 1;
    if (__OFADD__(v30, 1))
    {
      goto LABEL_92;
    }

    if (v35 >= v34)
    {
      break;
    }

    v33 = *(v88 + 56 + 8 * v35);
    ++v30;
    if (v33)
    {
      v30 = v35;
      goto LABEL_40;
    }
  }

  if (!v82)
  {

LABEL_90:

    return;
  }

  v39 = 0;
  v40 = 1 << *(v87 + 32);
  v41 = -1;
  if (v40 < 64)
  {
    v41 = ~(-1 << v40);
  }

  v42 = v41 & *(v87 + 56);
  v43 = (v40 + 63) >> 6;
  while (v42)
  {
LABEL_53:
    v47 = (*(v87 + 48) + ((v39 << 10) | (16 * __clz(__rbit64(v42)))));
    v49 = *v47;
    v48 = v47[1];
    v50 = *(a8 + 16);

    if (v50 && (sub_22CEEC698(v49, v48), (v51 & 1) != 0))
    {
      v45 = sub_22D01510C();
      v44 = v52;
    }

    else
    {
      v44 = 0xE700000000000000;
      v45 = 0x6E776F6E6B6E75;
    }

    v42 &= v42 - 1;
    sub_22D016C6C();

    MEMORY[0x2318C5860](v49, v48);

    MEMORY[0x2318C5860](0x206570797420, 0xE600000000000000);
    MEMORY[0x2318C5860](v45, v44);

    MEMORY[0x2318C5860](10, 0xE100000000000000);
    MEMORY[0x2318C5860](0x206465766F6D6552, 0xE800000000000000);
  }

  while (1)
  {
    v46 = v39 + 1;
    if (__OFADD__(v39, 1))
    {
      goto LABEL_93;
    }

    if (v46 >= v43)
    {
      break;
    }

    v42 = *(v87 + 56 + 8 * v46);
    ++v39;
    if (v42)
    {
      v39 = v46;
      goto LABEL_53;
    }
  }

  v53 = 0;
  v54 = 1 << *(v85 + 32);
  v55 = -1;
  if (v54 < 64)
  {
    v55 = ~(-1 << v54);
  }

  v56 = v55 & *(v85 + 56);
  v57 = (v54 + 63) >> 6;
  v58 = v83;
  if (v56)
  {
    while (1)
    {
      v59 = v53;
LABEL_64:
      v60 = (*(v85 + 48) + ((v59 << 10) | (16 * __clz(__rbit64(v56)))));
      v61 = *v60;
      v62 = v60[1];
      v56 &= v56 - 1;

      sub_22D016C6C();

      MEMORY[0x2318C5860](v61, v62);

      MEMORY[0x2318C5860](10, 0xE100000000000000);
      MEMORY[0x2318C5860](0xD000000000000012, 0x800000022D020640);

      if (!v56)
      {
        goto LABEL_60;
      }
    }
  }

  while (1)
  {
LABEL_60:
    v59 = v53 + 1;
    if (__OFADD__(v53, 1))
    {
      goto LABEL_94;
    }

    if (v59 >= v57)
    {
      break;
    }

    v56 = *(v85 + 56 + 8 * v59);
    ++v53;
    if (v56)
    {
      v53 = v59;
      goto LABEL_64;
    }
  }

  v63 = 0;
  v64 = 1 << *(v84 + 32);
  v65 = -1;
  if (v64 < 64)
  {
    v65 = ~(-1 << v64);
  }

  v66 = v65 & v84[7];
  v67 = (v64 + 63) >> 6;
  while (v66)
  {
LABEL_76:
    v69 = (v84[6] + ((v63 << 10) | (16 * __clz(__rbit64(v66)))));
    v71 = *v69;
    v70 = v69[1];
    v72 = *(a8 + 16);

    if (v72 && (sub_22CEEC698(v71, v70), (v73 & 1) != 0))
    {
      v89 = sub_22D01510C();
      v75 = v74;
      v76 = 0;
      if (!*(v58 + 16))
      {
        goto LABEL_85;
      }
    }

    else
    {
      v76 = 1;
      v75 = 0xE700000000000000;
      v89 = 0x6E776F6E6B6E75;
      if (!*(v58 + 16))
      {
        goto LABEL_85;
      }
    }

    sub_22CEEC698(v71, v70);
    if ((v77 & 1) == 0)
    {
LABEL_85:
      if (v76)
      {

        goto LABEL_70;
      }

      v79 = 0xE700000000000000;
      v81 = 0x6E776F6E6B6E75;
      goto LABEL_88;
    }

    v86 = sub_22D01510C();
    v79 = v78;
    if ((v76 & 1) == 0)
    {
      v80 = sub_22D01511C();
      if (v80 == sub_22D01511C())
      {

        v58 = v83;
        goto LABEL_70;
      }
    }

    v81 = v86;
LABEL_88:
    sub_22D016C6C();

    MEMORY[0x2318C5860](v71, v70);

    MEMORY[0x2318C5860](0x206570797420, 0xE600000000000000);
    MEMORY[0x2318C5860](v81, v79);

    MEMORY[0x2318C5860](540945696, 0xE400000000000000);
    MEMORY[0x2318C5860](v89, v75);

    MEMORY[0x2318C5860](10, 0xE100000000000000);
    MEMORY[0x2318C5860](0x206465676E616843, 0xE800000000000000);
    v58 = v83;
LABEL_70:
    v66 &= v66 - 1;
  }

  while (1)
  {
    v68 = v63 + 1;
    if (__OFADD__(v63, 1))
    {
      break;
    }

    if (v68 >= v67)
    {
      goto LABEL_90;
    }

    v66 = v84[v68 + 7];
    ++v63;
    if (v66)
    {
      v63 = v68;
      goto LABEL_76;
    }
  }

LABEL_95:
  __break(1u);
}

unint64_t sub_22CF937B4()
{
  v1 = 0x766974634177656ELL;
  v2 = 0x7069726373627573;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000024;
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

uint64_t sub_22CF93854@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_22CFA5648(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_22CF93888(uint64_t a1)
{
  v2 = sub_22CFA5AA8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22CF938C4(uint64_t a1)
{
  v2 = sub_22CFA5AA8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22CF93900(void *a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5)
{
  v15 = a5;
  v16 = a4;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2ED0, &qword_22D01A8B8);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v15 - v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22CFA5AA8();
  sub_22D016EEC();
  LOBYTE(v18) = 0;
  sub_22D016DCC();
  if (!v5)
  {
    v14 = v15;
    LOBYTE(v18) = 1;
    sub_22D016DCC();
    v18 = v14;
    v17 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2EA8, &qword_22D01A8A8);
    sub_22CFA5B50(&qword_27D9F2ED8, sub_22CFA5BD4, MEMORY[0x277D837D8], MEMORY[0x277D83508]);
    sub_22D016DDC();
    v18 = a3;
    v17 = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2EC0, &qword_22D01A8B0);
    sub_22CFA5C28(&qword_27D9F2EE8, MEMORY[0x277D837D8], MEMORY[0x277D83B50]);
    sub_22D016DDC();
  }

  return (*(v9 + 8))(v12, v8);
}

uint64_t sub_22CF93BDC@<X0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  result = sub_22CFA57C8(a2);
  if (!v2)
  {
    *a1 = result & 1;
    *(a1 + 8) = v5;
    *(a1 + 16) = v6 & 1;
    *(a1 + 24) = v7;
  }

  return result;
}

void sub_22CF93C44(uint64_t a1)
{
  v2 = v1;
  v4 = sub_22D01495C();
  MEMORY[0x28223BE20](v4 - 8, v5);
  v67 = &v63 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = type metadata accessor for ActivityParticipantEvent(0);
  MEMORY[0x28223BE20](v68, v7);
  v9 = (&v63 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = sub_22D0159DC();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10, v12);
  v14 = &v63 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_22D01436C();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15, v17);
  v19 = &v63 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_22D0159BC();
  MEMORY[0x28223BE20](v20 - 8, v21);
  v23 = &v63 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = a1;
  sub_22D0159CC();
  if ((*(v16 + 48))(v23, 1, v15) != 1)
  {
    v24 = *(v16 + 32);
    v65 = v15;
    v24(v19, v23, v15);
    if (qword_28143DA98 != -1)
    {
      swift_once();
    }

    v25 = sub_22D01637C();
    __swift_project_value_buffer(v25, qword_2814442F0);
    (*(v11 + 16))(v14, v69, v10);
    v26 = sub_22D01636C();
    v27 = sub_22D01690C();
    v28 = os_log_type_enabled(v26, v27);
    v64 = v2;
    v66 = v19;
    if (v28)
    {
      v29 = swift_slowAlloc();
      v63 = swift_slowAlloc();
      *&aBlock = v63;
      *v29 = 136446210;
      sub_22CF1A164(&qword_27D9F2F08, MEMORY[0x277D46790], MEMORY[0x277D467C8]);
      v30 = sub_22D016DEC();
      v31 = v9;
      v32 = v16;
      v34 = v33;
      (*(v11 + 8))(v14, v10);
      v35 = sub_22CEEE31C(v30, v34, &aBlock);
      v16 = v32;
      v9 = v31;

      *(v29 + 4) = v35;
      _os_log_impl(&dword_22CEE1000, v26, v27, "ReplicatorParticipant stopping activity due to deleted replicator record ID: %{public}s", v29, 0xCu);
      v36 = v63;
      __swift_destroy_boxed_opaque_existential_1Tm(v63);
      MEMORY[0x2318C6860](v36, -1, -1);
      MEMORY[0x2318C6860](v29, -1, -1);
    }

    else
    {

      (*(v11 + 8))(v14, v10);
    }

    v37 = sub_22CFA5E4C(v69);
    if (v38)
    {
      v39 = v37;
      v40 = v16;
      v41 = v38;

      v42 = sub_22D01432C();
      v44 = v43;
      v45 = v68;
      sub_22D01494C();
      sub_22D01485C();
      type metadata accessor for ActivityParticipantEvent.EventType(0);
      swift_storeEnumTagMultiPayload();
      v46 = v45[7];
      v47 = *MEMORY[0x277CB9328];
      v48 = sub_22D01483C();
      (*(*(v48 - 8) + 104))(v9 + v46, v47, v48);
      v49 = v45[9];
      v50 = sub_22D0146BC();
      (*(*(v50 - 8) + 56))(v9 + v49, 1, 1, v50);
      *v9 = v39;
      v9[1] = v41;
      v9[2] = v42;
      v9[3] = v44;
      v51 = (v9 + v45[8]);
      v52 = v64;
      *v51 = v64;
      v51[1] = &off_28402B0C8;
      *(v9 + v45[10]) = 0;
      v53 = v52[2];
      v54 = swift_allocObject();
      v54[2] = v52;
      v54[3] = v39;
      v54[4] = v41;
      v55 = v52;
      v56 = swift_allocObject();
      *(v56 + 16) = sub_22CFA61A0;
      *(v56 + 24) = v54;
      v73 = sub_22CEF4034;
      v74 = v56;
      *&aBlock = MEMORY[0x277D85DD0];
      *(&aBlock + 1) = 1107296256;
      v71 = sub_22CEF3C20;
      v72 = &block_descriptor_62_0;
      v57 = _Block_copy(&aBlock);
      swift_retain_n();

      dispatch_sync(v53, v57);
      _Block_release(v57);
      LOBYTE(v53) = swift_isEscapingClosureAtFileLocation();

      if (v53)
      {
        __break(1u);
      }

      else
      {
        v60 = v55[22];
        MEMORY[0x28223BE20](v58, v59);
        *(&v63 - 2) = sub_22CFA68AC;
        *(&v63 - 1) = v55;
        os_unfair_lock_lock(v60 + 4);
        sub_22CFA6864(&aBlock);
        os_unfair_lock_unlock(v60 + 4);
        if (aBlock)
        {
          v61 = *(&aBlock + 1);
          ObjectType = swift_getObjectType();
          (*(v61 + 24))(v9, ObjectType, v61);
          swift_unknownObjectRelease();
        }

        sub_22CF0F5E0(v9, type metadata accessor for ActivityParticipantEvent);
        (*(v40 + 8))(v66, v65);
      }
    }

    else
    {
      (*(v16 + 8))(v66, v65);
    }
  }
}

uint64_t sub_22CF9439C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F3810, &unk_22D018FA0);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v8 = &v11 - v7;
  sub_22CF944A4(a2, a3);
  v9 = type metadata accessor for Activity(0);
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  swift_beginAccess();

  sub_22CF0BC5C(v8, a2, a3);
  return swift_endAccess();
}

void sub_22CF944A4(uint64_t a1, uint64_t a2)
{
  v44 = a1;
  v45 = a2;
  v43 = sub_22D015A5C();
  v3 = *(v43 - 8);
  MEMORY[0x28223BE20](v43, v4);
  v42 = v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_22D0159BC();
  MEMORY[0x28223BE20](v6 - 8, v7);
  v9 = v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_22D0159DC();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10, v12);
  v14 = v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_22D01659C();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15, v17);
  v19 = (v41 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = *(v2 + 16);
  *v19 = v20;
  (*(v16 + 104))(v19, *MEMORY[0x277D85200], v15);
  v21 = v20;
  LOBYTE(v20) = sub_22D0165BC();
  (*(v16 + 8))(v19, v15);
  if ((v20 & 1) == 0)
  {
    __break(1u);
    swift_once();
    v27 = sub_22D01637C();
    __swift_project_value_buffer(v27, qword_2814442F0);
    v28 = v45;

    v29 = v9;
    v30 = sub_22D01636C();
    v31 = sub_22D0168EC();

    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      *&v46 = v34;
      *v32 = 136446466;
      *(v32 + 4) = sub_22CEEE31C(v44, v28, &v46);
      *(v32 + 12) = 2114;
      v35 = v9;
      v36 = _swift_stdlib_bridgeErrorToNSError();
      *(v32 + 14) = v36;
      *v33 = v36;
      _os_log_impl(&dword_22CEE1000, v30, v31, "Could not delete dismiss record for activity: %{public}s; error: %{public}@", v32, 0x16u);
      sub_22CEEC3D8(v33, &qword_27D9F2380, &unk_22D019C50);
      MEMORY[0x2318C6860](v33, -1, -1);
      __swift_destroy_boxed_opaque_existential_1Tm(v34);
      MEMORY[0x2318C6860](v34, -1, -1);
      MEMORY[0x2318C6860](v32, -1, -1);
    }

    else
    {
    }

    goto LABEL_12;
  }

  sub_22CEEB6DC(v2 + 32, &v46, &qword_27D9F2E28, &unk_22D01A838);
  if (v47)
  {
    sub_22CFA3864(&v46, v48);
    v22 = sub_22D01436C();
    (*(*(v22 - 8) + 56))(v9, 1, 1, v22);

    sub_22D01597C();
    v41[1] = v50;
    __swift_project_boxed_opaque_existential_1(v48, v49);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F23E8, &unk_22D0189B0);
    v23 = (*(v11 + 80) + 32) & ~*(v11 + 80);
    v24 = swift_allocObject();
    *(v24 + 16) = xmmword_22D0187A0;
    (*(v11 + 16))(v24 + v23, v14, v10);
    v26 = v42;
    v25 = v43;
    (*(v3 + 104))(v42, *MEMORY[0x277D46828], v43);
    sub_22D01586C();

    (*(v3 + 8))(v26, v25);
    (*(v11 + 8))(v14, v10);
LABEL_12:
    __swift_destroy_boxed_opaque_existential_1Tm(v48);
    return;
  }

  sub_22CEEC3D8(&v46, &qword_27D9F2E28, &unk_22D01A838);
  if (qword_28143DA98 != -1)
  {
    swift_once();
  }

  v37 = sub_22D01637C();
  __swift_project_value_buffer(v37, qword_2814442F0);
  v38 = sub_22D01636C();
  v39 = sub_22D0168EC();
  if (os_log_type_enabled(v38, v39))
  {
    v40 = swift_slowAlloc();
    *v40 = 0;
    _os_log_impl(&dword_22CEE1000, v38, v39, "Replicator is not available", v40, 2u);
    MEMORY[0x2318C6860](v40, -1, -1);
  }
}