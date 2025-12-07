void sub_226EAE94C()
{
  v1 = v0[2];
  v2 = *v0 + v1;
  if (__OFADD__(*v0, v1))
  {
    __break(1u);
    goto LABEL_6;
  }

  v3 = v2 + 1;
  if (__OFADD__(v2, 1))
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v4 = [objc_allocWithZone(MEMORY[0x277CE8D50]) init];
  v5 = sub_22766BFD0();
  [v4 setUniqueName_];

  [v4 setVersion_];
  [v4 setMinimumEngineVersion_];
  v6 = sub_22766BFD0();
  [v4 setPredicate_];

  v7 = sub_22766BFD0();
  [v4 setValueExpression_];

  v8 = sub_22766BFD0();
  [v4 setProgressExpression_];

  v9 = sub_22766BFD0();
  [v4 setGoalExpression_];

  [v4 setEarnLimit_];
  [v4 setVisibilityPredicate_];
  [v4 setDuplicateRemovalStrategy_];
  [v4 setDuplicateRemovalCalendarUnit_];
  v10 = [objc_opt_self() countUnit];
  [v4 setCanonicalUnit_];

  [v4 setEarnDateStrategy_];
  if ((v3 & 0x8000000000000000) == 0)
  {
    [v4 setDisplayOrder_];
    return;
  }

LABEL_7:
  __break(1u);
}

uint64_t sub_226EAEBAC(char a1)
{
  *(v2 + 264) = v1;
  *(v2 + 336) = a1;
  v3 = sub_22766B390();
  *(v2 + 272) = v3;
  *(v2 + 280) = *(v3 - 8);
  *(v2 + 288) = swift_task_alloc();
  *(v2 + 296) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC7E8, &unk_22767EF78);
  *(v2 + 304) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226EAECAC, 0, 0);
}

uint64_t sub_226EAECAC()
{
  v1 = *(v0 + 264);
  v2 = *(v0 + 336);
  v3 = v1[14];
  v4 = v1[15];
  __swift_project_boxed_opaque_existential_0(v1 + 11, v3);
  sub_226EB3000(v1, v0 + 16);
  v5 = swift_allocObject();
  *(v0 + 312) = v5;
  v6 = *(v0 + 192);
  *(v5 + 176) = *(v0 + 176);
  *(v5 + 192) = v6;
  *(v5 + 208) = *(v0 + 208);
  v7 = *(v0 + 128);
  *(v5 + 112) = *(v0 + 112);
  *(v5 + 128) = v7;
  v8 = *(v0 + 160);
  *(v5 + 144) = *(v0 + 144);
  *(v5 + 160) = v8;
  v9 = *(v0 + 64);
  *(v5 + 48) = *(v0 + 48);
  *(v5 + 64) = v9;
  v10 = *(v0 + 96);
  *(v5 + 80) = *(v0 + 80);
  *(v5 + 96) = v10;
  v11 = *(v0 + 32);
  *(v5 + 16) = *(v0 + 16);
  *(v5 + 32) = v11;
  *(v5 + 224) = v2;
  v15 = (*(v4 + 24) + **(v4 + 24));
  v12 = swift_task_alloc();
  *(v0 + 320) = v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC7E0, &qword_22767EF70);
  *v12 = v0;
  v12[1] = sub_226EBB704;

  return v15(v0 + 248, sub_226EAEE88, v5, v13, v3, v4);
}

uint64_t sub_226EAEED0@<X0>(void *a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t (*a4)(uint64_t)@<X3>, uint64_t (*a5)(char *)@<X4>, void *a6@<X8>)
{
  v71 = a5;
  v72 = a4;
  v68 = a3;
  v67 = a6;
  v73[5] = *MEMORY[0x277D85DE8];
  v9 = sub_227667C20();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v58 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_227663FA0();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v58 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_0((a2 + 128), *(a2 + 152));
  result = sub_226EAF48C(a1, v16);
  if (!v6)
  {
    v18 = v67;
    v65 = a1;
    v66 = v16;
    v60 = 0;
    if (v68)
    {
      v19 = sub_227663F40();
    }

    else
    {
      v19 = sub_227663EE0();
    }

    v20 = v19;
    v21 = v18;
    v22 = *(v19 + 32);
    v59 = ((1 << v22) + 63) >> 6;
    v62 = v14;
    v63 = v13;
    if ((v22 & 0x3Fu) > 0xD)
    {
      goto LABEL_31;
    }

    while (1)
    {
      v58 = &v58;
      MEMORY[0x28223BE20](v19);
      v61 = &v58 - ((v23 + 15) & 0x3FFFFFFFFFFFFFF0);
      bzero(v61, v23);
      v64 = 0;
      v24 = 0;
      v25 = v20 + 56;
      v26 = 1 << *(v20 + 32);
      v27 = -1;
      if (v26 < 64)
      {
        v27 = ~(-1 << v26);
      }

      v28 = v27 & *(v20 + 56);
      v21 = ((v26 + 63) >> 6);
      v70 = v10 + 16;
      v71 = v20;
      v69 = v10 + 8;
      while (v28)
      {
        v29 = __clz(__rbit64(v28));
        v28 &= v28 - 1;
        v30 = v29 | (v24 << 6);
        v31 = v71;
LABEL_16:
        v34 = (*(v10 + 16))(v12, *(v31 + 6) + *(v10 + 72) * v30, v9);
        v20 = v72(v34);
        (*(v10 + 8))(v12, v9);
        if (v20)
        {
          *&v61[(v30 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v30;
          if (__OFADD__(v64++, 1))
          {
            __break(1u);
LABEL_20:
            v36 = sub_226EB10D0(v61, v59, v64, v31);
            v21 = v67;
            goto LABEL_21;
          }
        }
      }

      v32 = v24;
      v30 = v65;
      v31 = v71;
      while (1)
      {
        v24 = v32 + 1;
        if (__OFADD__(v32, 1))
        {
          break;
        }

        if (v24 >= v21)
        {
          goto LABEL_20;
        }

        v33 = *(v25 + 8 * v24);
        ++v32;
        if (v33)
        {
          v28 = (v33 - 1) & v33;
          v30 = __clz(__rbit64(v33)) | (v24 << 6);
          goto LABEL_16;
        }
      }

      __break(1u);
LABEL_31:

      if (!swift_stdlib_isStackAllocationSafe())
      {
        break;
      }
    }

    v43 = swift_slowAlloc();
    v55 = v60;
    v56 = sub_2272C5D44(v43, v59, v20, v71, 0);
    v60 = v55;
    if (!v55)
    {
      v57 = v56;

      MEMORY[0x22AA9A450](v43, -1, -1);
      v36 = v57;
      v30 = v65;
LABEL_21:
      v37 = v60;
      v38 = sub_226EB13F8(v36);

      v39 = sub_226EB16F8(v30);
      v41 = v62;
      v40 = v63;
      v42 = v66;
      if (v37)
      {
        (*(v62 + 8))(v66, v63);
      }

      v43 = sub_226EBAB3C(v39, v38, v68 & 1);
      v72 = 0;

      v44 = v43[2];
      if (v44)
      {
        v45 = sub_226EB7448(v43[2], 0);
        v46 = *(sub_227666FF0() - 8);
        sub_226EB7718(v73, &v45[(*(v46 + 80) + 32) & ~*(v46 + 80)], v44, v43);
        v48 = v47;
        v49 = v73[0];
        v50 = v73[1];
        v51 = v73[2];
        v52 = v73[3];
        v53 = v73[4];

        sub_226EBB218(v49, v50, v51, v52, v53);
        if (v48 != v44)
        {
          __break(1u);
        }

        v41 = v62;
        v40 = v63;
        v42 = v66;
      }

      else
      {
        v45 = MEMORY[0x277D84F90];
      }

      v73[0] = v45;
      v54 = v72;
      sub_226EBB224(v73);
      if (!v54)
      {

        result = (*(v41 + 8))(v42, v40);
        *v21 = v73[0];
        return result;
      }

      __break(1u);
    }

    result = MEMORY[0x22AA9A450](v43, -1, -1);
    __break(1u);
  }

  return result;
}

uint64_t sub_226EAF48C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v90 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB3E8, &unk_227686370);
  MEMORY[0x28223BE20](v3 - 8);
  v99 = v87 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB3F0, &unk_22767A950);
  MEMORY[0x28223BE20](v5 - 8);
  v98 = v87 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9EE8, &qword_227676AA8);
  MEMORY[0x28223BE20](v7 - 8);
  v97 = v87 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9F20, &qword_22767A960);
  MEMORY[0x28223BE20](v9 - 8);
  v96 = v87 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB3F8, &qword_22767A968);
  MEMORY[0x28223BE20](v11 - 8);
  v95 = v87 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB400, &qword_22767A970);
  MEMORY[0x28223BE20](v13 - 8);
  v94 = v87 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB408, &qword_22767A978);
  MEMORY[0x28223BE20](v15 - 8);
  v102 = v87 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB410, &qword_22767A980);
  v92 = *(v17 - 8);
  v93 = v17;
  MEMORY[0x28223BE20](v17);
  v91 = v87 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB418, &qword_22767A988);
  MEMORY[0x28223BE20](v19 - 8);
  v101 = v87 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB420, &qword_22767A990);
  MEMORY[0x28223BE20](v21 - 8);
  v23 = v87 - v22;
  v104 = sub_227663FA0();
  v107 = *(v104 - 8);
  MEMORY[0x28223BE20](v104);
  v100 = v87 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v27 = v87 - v26;
  MEMORY[0x28223BE20](v28);
  v30 = v87 - v29;
  sub_226EB00A4(v87 - v29);
  v31 = __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  v32 = *v31;
  v33 = v31[1];
  v34 = *(v31 + 16);
  v35 = v31[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB428, &qword_22767A998);
  v36 = swift_allocObject();
  v37 = v32;
  v38 = v33;

  v39 = sub_22766A070();
  *(v36 + 16) = v37;
  *(v36 + 24) = v38;
  *(v36 + 32) = v34;
  *(v36 + 40) = v35;
  v40 = MEMORY[0x22AA99A00](v39);
  v41 = v23;
  v42 = v103;
  sub_226EB0B24(v23);
  if (v42)
  {
    objc_autoreleasePoolPop(v40);
    swift_setDeallocating();

    v43 = qword_2813B2078;
    v44 = sub_22766A100();
    (*(*(v44 - 8) + 8))(v36 + v43, v44);
    swift_deallocClassInstance();
    return (*(v107 + 8))(v30, v104);
  }

  else
  {
    v103 = 0;
    v46 = v30;
    objc_autoreleasePoolPop(v40);
    swift_setDeallocating();

    v47 = qword_2813B2078;
    v48 = sub_22766A100();
    (*(*(v48 - 8) + 8))(v36 + v47, v48);
    swift_deallocClassInstance();
    v49 = v107;
    v50 = *(v107 + 48);
    v51 = v23;
    v52 = v104;
    if (v50(v51, 1, v104) == 1)
    {
      v53 = v46;
      (*(v49 + 16))(v27, v46, v52);
      v54 = v50(v41, 1, v52);
      v56 = v100;
      v55 = v101;
      if (v54 != 1)
      {
        sub_226E97D1C(v41, &qword_27D7BB420, &qword_22767A990);
      }
    }

    else
    {
      (*(v49 + 32))(v27, v41, v52);
      v53 = v46;
      v56 = v100;
      v55 = v101;
    }

    v88 = v53;
    v57 = v27;
    v58 = sub_227663F80();
    v59 = sub_227663F80();
    v60 = *(v49 + 16);
    v89 = v57;
    if (v58 >= v59)
    {
      v61 = v57;
    }

    else
    {
      v61 = v53;
    }

    v60(v56, v61, v52);
    v62 = sub_227668CB0();
    (*(*(v62 - 8) + 56))(v55, 1, 1, v62);
    v63 = v94;
    v64 = v102;
    if (qword_28139A408 != -1)
    {
      swift_once();
    }

    v65 = v93;
    v66 = __swift_project_value_buffer(v93, qword_28139A410);
    v68 = v91;
    v67 = v92;
    v69 = *(v92 + 16);
    v69(v91, v66, v65);
    sub_227669730();
    v70 = *(v67 + 8);
    v70(v68, v65);
    v92 = v105;
    v87[3] = v106;
    v71 = sub_227668300();
    (*(*(v71 - 8) + 56))(v64, 1, 1, v71);
    v69(v68, v66, v65);
    sub_227669730();
    v70(v68, v65);
    v72 = sub_227666ED0();
    (*(*(v72 - 8) + 56))(v63, 1, 1, v72);
    v73 = sub_227666CB0();
    v74 = v95;
    (*(*(v73 - 8) + 56))(v95, 1, 1, v73);
    v75 = sub_227668970();
    v76 = v96;
    (*(*(v75 - 8) + 56))(v96, 1, 1, v75);
    v77 = sub_227667500();
    v78 = v97;
    (*(*(v77 - 8) + 56))(v97, 1, 1, v77);
    v79 = sub_2276676D0();
    v80 = v98;
    (*(*(v79 - 8) + 56))(v98, 1, 1, v79);
    v81 = sub_227667370();
    v82 = v99;
    (*(*(v81 - 8) + 56))(v99, 1, 1, v81);
    v84 = v100;
    v83 = v101;
    sub_227663F90();
    sub_226E97D1C(v82, &qword_27D7BB3E8, &unk_227686370);
    sub_226E97D1C(v80, &qword_27D7BB3F0, &unk_22767A950);
    sub_226E97D1C(v78, &qword_27D7B9EE8, &qword_227676AA8);
    sub_226E97D1C(v76, &qword_27D7B9F20, &qword_22767A960);
    sub_226E97D1C(v74, &qword_27D7BB3F8, &qword_22767A968);
    sub_226E97D1C(v63, &qword_27D7BB400, &qword_22767A970);
    sub_226E97D1C(v102, &qword_27D7BB408, &qword_22767A978);
    sub_226E97D1C(v83, &qword_27D7BB418, &qword_22767A988);
    v85 = *(v107 + 8);
    v86 = v104;
    v85(v84, v104);
    v85(v89, v86);
    return (v85)(v88, v86);
  }
}

uint64_t sub_226EB00A4@<X0>(uint64_t a1@<X8>)
{
  v55 = a1;
  v1 = sub_227667370();
  v53 = *(v1 - 8);
  v54 = v1;
  MEMORY[0x28223BE20](v1);
  v52 = &v42 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_2276676D0();
  v47 = *(v3 - 8);
  v48 = v3;
  MEMORY[0x28223BE20](v3);
  v51 = &v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_227667500();
  v44 = *(v5 - 8);
  v45 = v5;
  MEMORY[0x28223BE20](v5);
  v50 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = sub_227668970();
  v7 = *(v43 - 8);
  MEMORY[0x28223BE20](v43);
  v49 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_227666CB0();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v58 = &v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_227666ED0();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v57 = &v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_227668300();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v56 = &v42 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_227668CB0();
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v21 = &v42 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_28139BBA8 != -1)
  {
    swift_once();
  }

  v22 = __swift_project_value_buffer(v18, qword_28139BBB0);
  v23 = *(v19 + 16);
  v46 = v21;
  v23(v21, v22, v18);
  if (qword_28139BA90 != -1)
  {
    swift_once();
  }

  if (qword_28139BA58 != -1)
  {
    swift_once();
  }

  if (qword_28139BB00 != -1)
  {
    swift_once();
  }

  if (qword_28139BB18 != -1)
  {
    swift_once();
  }

  if (qword_28139BB50 != -1)
  {
    swift_once();
  }

  if (qword_28139BBC8 != -1)
  {
    swift_once();
  }

  v24 = __swift_project_value_buffer(v15, qword_28139BBD0);
  (*(v16 + 16))(v56, v24, v15);
  if (qword_28139BB40 != -1)
  {
    swift_once();
  }

  v25 = qword_28139BAB0;

  v26 = v51;
  if (v25 != -1)
  {
    swift_once();
  }

  v27 = __swift_project_value_buffer(v12, qword_28139BAB8);
  (*(v13 + 16))(v57, v27, v12);
  if (qword_28139BB98 != -1)
  {
    swift_once();
  }

  v28 = qword_28139BAA0;

  if (v28 != -1)
  {
    swift_once();
  }

  v29 = qword_28139BA48;

  if (v29 != -1)
  {
    swift_once();
  }

  if (qword_28139BC10 != -1)
  {
    swift_once();
  }

  v30 = __swift_project_value_buffer(v9, qword_28139BC18);
  (*(v10 + 16))(v58, v30, v9);
  if (qword_28139BA70 != -1)
  {
    swift_once();
  }

  v31 = v43;
  v32 = __swift_project_value_buffer(v43, qword_28139BA78);
  (*(v7 + 16))(v49, v32, v31);
  if (qword_28139BAD8 != -1)
  {
    swift_once();
  }

  v33 = v45;
  v34 = __swift_project_value_buffer(v45, qword_28139BAE0);
  (*(v44 + 16))(v50, v34, v33);
  if (qword_28139BB68 != -1)
  {
    swift_once();
  }

  v35 = v48;
  v36 = __swift_project_value_buffer(v48, qword_28139BB70);
  (*(v47 + 16))(v26, v36, v35);
  if (qword_28139BB88 != -1)
  {
    swift_once();
  }

  v37 = qword_28139BB28;

  if (v37 != -1)
  {
    swift_once();
  }

  v38 = qword_28139BBF0;

  if (v38 != -1)
  {
    swift_once();
  }

  v39 = v54;
  v40 = __swift_project_value_buffer(v54, qword_28139BBF8);
  (*(v53 + 16))(v52, v40, v39);
  return sub_227663E70();
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

void sub_226EB0B24(uint64_t a1@<X8>)
{
  v3 = sub_226EB0E3C(0);
  if (v1)
  {
    return;
  }

  v4 = v3;
  [v3 setReturnsObjectsAsFaults_];
  [v4 setFetchLimit_];
  type metadata accessor for ManagedConfiguration();
  v5 = sub_22766C9E0();
  if (v5 >> 62)
  {
    v14 = v5;
    v15 = sub_22766CD20();
    v5 = v14;
    if (v15)
    {
      goto LABEL_4;
    }

LABEL_12:

    v16 = sub_227663FA0();
    (*(*(v16 - 8) + 56))(a1, 1, 1, v16);
    return;
  }

  if (!*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_12;
  }

LABEL_4:
  if ((v5 & 0xC000000000000001) != 0)
  {
    v6 = MEMORY[0x22AA991A0](0);
  }

  else
  {
    if (!*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return;
    }

    v6 = *(v5 + 32);
  }

  v7 = v6;

  v8 = v7;
  v9 = [v8 data];
  if (v9)
  {
    v10 = v9;
    sub_227662590();

    v11 = sub_227663FA0();
    sub_226EB1040(&qword_28139BA28, MEMORY[0x277D50560], MEMORY[0x277D50558]);
    sub_2276683D0();

    (*(*(v11 - 8) + 56))(a1, 0, 1, v11);
  }

  else
  {
    v12 = sub_227664DD0();
    sub_226EB1040(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
    swift_allocError();
    (*(*(v12 - 8) + 104))(v13, *MEMORY[0x277D51028], v12);
    swift_willThrow();
  }
}

uint64_t sub_226EB0E90(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_226EB0ED8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_226EB0F20(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_226EB0F68(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_226EB0FB0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_226EB0FF8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_226EB1040(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_226EB1088(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_226EB10D0(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = sub_227667C20();
  v8 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v34 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a3)
  {

    return MEMORY[0x277D84FA0];
  }

  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8A40, &qword_22767DE30);
  result = sub_22766CDE0();
  v10 = result;
  if (a2 < 1)
  {
    v12 = 0;
  }

  else
  {
    v12 = *a1;
  }

  v13 = 0;
  v14 = result + 56;
  v30 = (v8 + 32);
  v31 = v8 + 16;
  v29 = a4;
  while (v12)
  {
    v15 = __clz(__rbit64(v12));
    v32 = (v12 - 1) & v12;
LABEL_16:
    v18 = *(a4 + 48);
    v33 = *(v8 + 72);
    (*(v8 + 16))(v34, v18 + v33 * (v15 | (v13 << 6)), v35);
    sub_226E9CF88(&qword_28139B4E0, MEMORY[0x277D531E0], MEMORY[0x277D531E8]);
    result = sub_22766BF50();
    v19 = -1 << *(v10 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v14 + 8 * (v20 >> 6))) == 0)
    {
      v23 = 0;
      v24 = (63 - v19) >> 6;
      while (++v21 != v24 || (v23 & 1) == 0)
      {
        v25 = v21 == v24;
        if (v21 == v24)
        {
          v21 = 0;
        }

        v23 |= v25;
        v26 = *(v14 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v14 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v14 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    result = (*v30)(*(v10 + 48) + v22 * v33, v34, v35);
    ++*(v10 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v29;
    v12 = v32;
    if (!a3)
    {
LABEL_28:

      return v10;
    }
  }

  v16 = v13;
  while (1)
  {
    v13 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v13 >= a2)
    {
      goto LABEL_28;
    }

    v17 = a1[v13];
    ++v16;
    if (v17)
    {
      v15 = __clz(__rbit64(v17));
      v32 = (v17 - 1) & v17;
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

uint64_t sub_226EB13F8(uint64_t a1)
{
  v31 = sub_227667C20();
  v3 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v30 = v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (v5)
  {
    v24[1] = v1;
    v35 = MEMORY[0x277D84F90];
    sub_226EB5238(0, v5, 0);
    v33 = a1 + 56;
    v34 = v35;
    result = sub_22766CC90();
    v7 = result;
    v8 = 0;
    v28 = v3 + 8;
    v29 = v3 + 16;
    v25 = a1 + 64;
    v26 = v5;
    v27 = v3;
    while ((v7 & 0x8000000000000000) == 0 && v7 < 1 << *(a1 + 32))
    {
      v10 = v7 >> 6;
      if ((*(v33 + 8 * (v7 >> 6)) & (1 << v7)) == 0)
      {
        goto LABEL_22;
      }

      v32 = *(a1 + 36);
      v11 = v30;
      v12 = v31;
      (*(v3 + 16))(v30, *(a1 + 48) + *(v3 + 72) * v7, v31);
      v13 = sub_227667BF0();
      result = (*(v3 + 8))(v11, v12);
      v14 = v34;
      v35 = v34;
      v16 = *(v34 + 16);
      v15 = *(v34 + 24);
      if (v16 >= v15 >> 1)
      {
        result = sub_226EB5238((v15 > 1), v16 + 1, 1);
        v14 = v35;
      }

      *(v14 + 16) = v16 + 1;
      *(v14 + 8 * v16 + 32) = v13;
      v9 = 1 << *(a1 + 32);
      if (v7 >= v9)
      {
        goto LABEL_23;
      }

      v17 = *(v33 + 8 * v10);
      if ((v17 & (1 << v7)) == 0)
      {
        goto LABEL_24;
      }

      v34 = v14;
      if (v32 != *(a1 + 36))
      {
        goto LABEL_25;
      }

      v18 = v17 & (-2 << (v7 & 0x3F));
      if (v18)
      {
        v9 = __clz(__rbit64(v18)) | v7 & 0x7FFFFFFFFFFFFFC0;
        v3 = v27;
      }

      else
      {
        v19 = v10 << 6;
        v20 = v10 + 1;
        v21 = (v25 + 8 * v10);
        v3 = v27;
        while (v20 < (v9 + 63) >> 6)
        {
          v23 = *v21++;
          v22 = v23;
          v19 += 64;
          ++v20;
          if (v23)
          {
            result = sub_226EB526C(v7, v32, 0);
            v9 = __clz(__rbit64(v22)) + v19;
            goto LABEL_4;
          }
        }

        result = sub_226EB526C(v7, v32, 0);
      }

LABEL_4:
      ++v8;
      v7 = v9;
      if (v8 == v26)
      {
        return v34;
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

char *sub_226EB16F8(uint64_t a1)
{
  v22 = sub_227669890();
  v18 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A830();
  sub_226E91B50(a1, v21);
  sub_226E9DD3C("CatalogDataStore::queryAllCatalogModalityReferences", 51, 2, &dword_226E8E000, 0, v19);
  v5 = __swift_project_boxed_opaque_existential_0(v21, v21[3]);
  v6 = *v5;
  v7 = v5[1];
  v8 = *(v5 + 16);
  v9 = v5[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8FB0, &qword_22767CDE0);
  v10 = swift_allocObject();
  v11 = v6;
  v12 = v7;

  sub_22766A070();
  *(v10 + 16) = v11;
  *(v10 + 24) = v12;
  *(v10 + 32) = v8;
  *(v10 + 40) = v9;
  v13 = sub_226EB1A68(100);
  swift_setDeallocating();

  v14 = qword_2813B2078;
  v15 = sub_22766A100();
  (*(*(v15 - 8) + 8))(v10 + v14, v15);
  swift_deallocClassInstance();
  __swift_project_boxed_opaque_existential_0(v19, v20);
  sub_227669930();
  if (v1)
  {
    swift_willThrow();
    __swift_project_boxed_opaque_existential_0(v19, v20);
    sub_227669920();
  }

  (*(v18 + 8))(v4, v22);
  __swift_destroy_boxed_opaque_existential_0(v19);
  __swift_destroy_boxed_opaque_existential_0(v21);
  return v13;
}

char *sub_226EB1A68(uint64_t a1)
{
  v4 = sub_227669A90();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC480, &qword_22767DB18);
  MEMORY[0x28223BE20](v8);
  v10 = &v23 - v9;
  v11 = sub_226EB3A78(a1);
  if (!v2)
  {
    v12 = v11;
    v24 = 0;
    v13 = *(v1 + 2);
    if (sub_226EB1D68(v13))
    {
      v14 = sub_22766C2B0();
    }

    else
    {
      v14 = 0;
    }

    [v12 setRelationshipKeyPathsForPrefetching_];

    (*(v5 + 104))(v7, *MEMORY[0x277D4F000], v4);
    v26 = 1;
    v15 = v13;
    sub_227669760();
    *&v10[*(v8 + 28)] = v12;
    *&v10[*(v8 + 32)] = v15;
    v16 = v12;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BC880, &unk_227671C60);
    v1 = v10;
    v17 = sub_227669730();
    if (v25 == 1)
    {
      sub_227262EBC(MEMORY[0x277D84FA0], sub_226EB2A38, 0);
      v1 = v18;
    }

    else
    {
      v19 = MEMORY[0x22AA99A00](v17);
      v20 = v24;
      v21 = sub_22725A9B0(v10, MEMORY[0x277D84FA0], sub_226EB2A38, 0);
      if (!v20)
      {
        v1 = v21;
      }

      objc_autoreleasePoolPop(v19);
    }

    sub_226E97D1C(v10, &qword_27D7BC480, &qword_22767DB18);
  }

  return v1;
}

uint64_t sub_226EB1D68(uint64_t a1)
{
  v2 = objc_opt_self();
  v3 = sub_22766BFD0();
  v4 = [v2 entityForName:v3 inManagedObjectContext:a1];

  if (v4)
  {
    v5 = [v4 relationshipsByName];

    sub_226E99364(0, &qword_281398A78, 0x277CBE500);
    v6 = sub_22766BEB0();
  }

  else
  {
    v6 = sub_2271480A0(MEMORY[0x277D84F90]);
  }

  v7 = 1 << *(v6 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(v6 + 64);
  v10 = (v7 + 63) >> 6;

  v12 = 0;
  v30 = MEMORY[0x277D84F90];
  while (v9)
  {
LABEL_14:
    v14 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
    v15 = v14 | (v12 << 6);
    v16 = (*(v6 + 48) + 16 * v15);
    v17 = *v16;
    v18 = v16[1];
    v19 = *(*(v6 + 56) + 8 * v15);

    v20 = v19;
    v21 = [v20 userInfo];
    if (!v21)
    {

      v32 = 0u;
      v33 = 0u;
      goto LABEL_8;
    }

    v22 = v21;
    v23 = sub_22766BEB0();

    sub_22766CDA0();
    if (!*(v23 + 16) || (v24 = sub_226E9BF6C(v31), (v25 & 1) == 0))
    {

      sub_226E9B62C(v31);
      v32 = 0u;
      v33 = 0u;
      goto LABEL_26;
    }

    sub_226E97CC0(*(v23 + 56) + 32 * v24, &v32);
    sub_226E9B62C(v31);

    if (*(&v33 + 1))
    {
      if (swift_dynamicCast())
      {
        v26 = sub_226EB5278(v31[0], v31[1]);

        if ((v26 & 1) == 0)
        {
          goto LABEL_28;
        }

        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_226EB3F78(0, *(v30 + 16) + 1, 1, v30);
          v30 = result;
        }

        v28 = *(v30 + 16);
        v27 = *(v30 + 24);
        if (v28 >= v27 >> 1)
        {
          result = sub_226EB3F78((v27 > 1), v28 + 1, 1, v30);
          v30 = result;
        }

        *(v30 + 16) = v28 + 1;
        v29 = v30 + 16 * v28;
        *(v29 + 32) = v17;
        *(v29 + 40) = v18;
      }

      else
      {

LABEL_28:
      }
    }

    else
    {
LABEL_26:

LABEL_8:
      result = sub_226E97D1C(&v32, &unk_27D7BC990, &qword_227670A30);
    }
  }

  while (1)
  {
    v13 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v13 >= v10)
    {

      return v30;
    }

    v9 = *(v6 + 64 + 8 * v13);
    ++v12;
    if (v9)
    {
      v12 = v13;
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

void *sub_226EB218C(void *a1, void (*a2)(BOOL, unint64_t, uint64_t), void (*a3)(void), SEL *a4, void (*a5)(void), uint64_t a6)
{
  v47 = a5;
  v48 = a6;
  v49 = a4;
  v50 = a3;
  v52 = sub_2276622D0();
  v46 = *(v52 - 8);
  v8 = MEMORY[0x28223BE20](v52);
  v10 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = [a1 count];
  v60 = MEMORY[0x277D84F90];
  v45 = a2;
  a2(0, v11 & ~(v11 >> 63), 0);
  v12 = v60;
  v51 = v10;
  result = sub_22766CA80();
  if (v11 < 0)
  {
    __break(1u);
LABEL_25:
    __break(1u);
  }

  else
  {
    if (v11)
    {
      sub_226EB2904(&qword_28139BDF0, MEMORY[0x277CC9178], MEMORY[0x277CC9180]);
      while (1)
      {
        result = sub_22766CBB0();
        if (!v59)
        {
          goto LABEL_25;
        }

        sub_226E97CC0(&v58, &v55);
        v50(0);
        if (!swift_dynamicCast())
        {
          break;
        }

        v14 = v53;
        v15 = [v14 *v49];
        if (!v15)
        {

          (*(v46 + 8))(v51, v52);
          v38 = sub_227664DD0();
          sub_226EB2904(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
          swift_allocError();
          (*(*(v38 - 8) + 104))(v39, *MEMORY[0x277D51028], v38);
          swift_willThrow();

          goto LABEL_19;
        }

        v16 = v15;
        v17 = sub_22766C000();
        v19 = v18;

        v53 = v17;
        v54 = v19;
        v47();
        sub_227663AE0();

        v20 = v55;
        v21 = v56;
        __swift_destroy_boxed_opaque_existential_0(&v58);
        v60 = v12;
        v23 = *(v12 + 16);
        v22 = *(v12 + 24);
        if (v23 >= v22 >> 1)
        {
          v45(v22 > 1, v23 + 1, 1);
          v12 = v60;
        }

        *(v12 + 16) = v23 + 1;
        v24 = v12 + 24 * v23;
        *(v24 + 32) = v20;
        *(v24 + 48) = v21;
        if (!--v11)
        {
          goto LABEL_10;
        }
      }

      (*(v46 + 8))(v51, v52);
      v36 = sub_227664DD0();
      sub_226EB2904(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
      swift_allocError();
      (*(*(v36 - 8) + 104))(v37, *MEMORY[0x277D51028], v36);
      swift_willThrow();

LABEL_19:
      __swift_destroy_boxed_opaque_existential_0(&v58);
      return v12;
    }

LABEL_10:
    sub_226EB2904(&qword_28139BDF0, MEMORY[0x277CC9178], MEMORY[0x277CC9180]);
    sub_22766CBB0();
    if (v57)
    {
      while (1)
      {
        sub_226F04970(&v55, &v58);
        sub_226E97CC0(&v58, &v55);
        v50(0);
        if (!swift_dynamicCast())
        {
          (*(v46 + 8))(v51, v52);
          v40 = sub_227664DD0();
          sub_226EB2904(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
          swift_allocError();
          (*(*(v40 - 8) + 104))(v41, *MEMORY[0x277D51028], v40);
          swift_willThrow();
          goto LABEL_22;
        }

        v25 = v53;
        v26 = [v25 *v49];
        if (!v26)
        {
          break;
        }

        v27 = v26;
        v28 = sub_22766C000();
        v30 = v29;

        v53 = v28;
        v54 = v30;
        v47();
        sub_227663AE0();

        __swift_destroy_boxed_opaque_existential_0(&v58);
        v31 = v55;
        v32 = v56;
        v60 = v12;
        v34 = *(v12 + 16);
        v33 = *(v12 + 24);
        if (v34 >= v33 >> 1)
        {
          v44 = v55;
          v45(v33 > 1, v34 + 1, 1);
          v31 = v44;
          v12 = v60;
        }

        *(v12 + 16) = v34 + 1;
        v35 = v12 + 24 * v34;
        *(v35 + 32) = v31;
        *(v35 + 48) = v32;
        sub_22766CBB0();
        if (!v57)
        {
          goto LABEL_16;
        }
      }

      (*(v46 + 8))(v51, v52);
      v42 = sub_227664DD0();
      sub_226EB2904(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
      swift_allocError();
      (*(*(v42 - 8) + 104))(v43, *MEMORY[0x277D51028], v42);
      swift_willThrow();

LABEL_22:
      __swift_destroy_boxed_opaque_existential_0(&v58);
    }

    else
    {
LABEL_16:
      (*(v46 + 8))(v51, v52);
      sub_226E97D1C(&v55, &unk_27D7BC990, &qword_227670A30);
    }

    return v12;
  }

  return result;
}

uint64_t sub_226EB2904(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_226EB294C(uint64_t a1)
{
  v6 = MEMORY[0x277D84F90];
  v2 = *(a1 + 16);
  sub_22766CF30();
  if (!v2)
  {
    return v6;
  }

  for (i = a1 + 32; ; i += 32)
  {
    sub_226E97CC0(i, v5);
    type metadata accessor for ManagedHealthKitActivityType();
    if ((swift_dynamicCast() & 1) == 0)
    {
      break;
    }

    sub_22766CF00();
    sub_22766CF40();
    sub_22766CF50();
    sub_22766CF10();
    if (!--v2)
    {
      return v6;
    }
  }

  return 0;
}

void sub_226EB2A38(uint64_t a1, unint64_t a2)
{
  v4 = MEMORY[0x22AA99A00]();
  v5 = MEMORY[0x22AA99A00]();
  v6 = sub_226EB5448(a2, MEMORY[0x277D52AF8], sub_226EB5880, sub_226EB58F8);
  if (v2)
  {
    objc_autoreleasePoolPop(v5);
  }

  else
  {
    v7 = v6;
    objc_autoreleasePoolPop(v5);
    v8 = sub_226EB9D38(v7);

    sub_226EB707C(v8, MEMORY[0x277D52AF8], sub_226EB9F1C);
  }

  objc_autoreleasePoolPop(v4);
}

void sub_226EB2B38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void (*a8)(uint64_t, uint64_t), uint64_t a9, uint64_t *a10, uint64_t *a11, uint64_t (*a12)(void))
{
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(a10, a11);
  [*(a3 + *(v19 + 28)) copy];
  sub_22766CC20();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B96F8, &qword_2276749C0);
  if (!swift_dynamicCast())
  {
    goto LABEL_8;
  }

  [v33 setReturnsObjectsAsFaults_];
  if (__OFSUB__(a4, 1))
  {
    __break(1u);
    goto LABEL_17;
  }

  if (a4 - 1 != a2)
  {
    v22 = 0;
    goto LABEL_10;
  }

  v20 = a4 * a6;
  if ((a4 * a6) >> 64 != (a4 * a6) >> 63)
  {
LABEL_20:
    __break(1u);
    return;
  }

  v21 = __OFSUB__(a5, v20);
  v22 = a5 - v20;
  if (v21)
  {
    __break(1u);
LABEL_8:
    v23 = sub_227664DD0();
    sub_226E9CF88(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
    swift_allocError();
    (*(*(v23 - 8) + 104))(v24, *MEMORY[0x277D50FF0], v23);
    swift_willThrow();
    return;
  }

LABEL_10:
  v25 = a6 + v22;
  if (__OFADD__(a6, v22))
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  [v33 setFetchBatchSize_];
  [v33 setFetchLimit_];
  v26 = a2 * a6;
  if ((a2 * a6) >> 64 != (a2 * a6) >> 63)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (__OFADD__(a7, v26))
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  [v33 setFetchOffset_];
  v27 = *(a3 + *(v19 + 32));
  a12(0);
  v28 = sub_22766C9E0();
  if (!v12)
  {
    v29 = v28;
    v30 = MEMORY[0x22AA99A00]();
    a8(a1, v29);
    objc_autoreleasePoolPop(v30);

    [v27 reset];
  }
}

uint64_t sub_226EB2DFC(uint64_t a1, uint64_t a2, char a3)
{
  if ((a3 & 1) == 0)
  {
  }

  return result;
}

void sub_226EB2E64()
{
  v1 = v0[5];
  v2 = *v0 + v1;
  if (__OFADD__(*v0, v1))
  {
    __break(1u);
    goto LABEL_6;
  }

  v3 = v2 + 1;
  if (__OFADD__(v2, 1))
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v4 = [objc_allocWithZone(MEMORY[0x277CE8D50]) init];
  v5 = sub_22766BFD0();
  [v4 setUniqueName_];

  [v4 setVersion_];
  [v4 setMinimumEngineVersion_];
  v6 = sub_22766BFD0();
  [v4 setPredicate_];

  [v4 setEarnLimit_];
  [v4 setVisibilityPredicate_];
  [v4 setDuplicateRemovalStrategy_];
  [v4 setDuplicateRemovalCalendarUnit_];
  [v4 setDisplaysEarnedInstanceCount_];
  [v4 setEarnDateStrategy_];
  if ((v3 & 0x8000000000000000) == 0)
  {
    [v4 setDisplayOrder_];
    return;
  }

LABEL_7:
  __break(1u);
}

void *sub_226EB3038(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B86D0, &qword_22768B670);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v40 = &v39 - v7;
  v43 = sub_2276622D0();
  v41 = *(v43 - 8);
  v8 = MEMORY[0x28223BE20](v43);
  v10 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = [a1 count];
  v49 = MEMORY[0x277D84F90];
  sub_226EC18B4(0, v11 & ~(v11 >> 63), 0);
  v12 = v49;
  v42 = v10;
  result = sub_22766CA80();
  if (v11 < 0)
  {
    __break(1u);
LABEL_26:
    __break(1u);
  }

  else
  {
    if (v11)
    {
      sub_226EB2904(&qword_28139BDF0, MEMORY[0x277CC9178], MEMORY[0x277CC9180]);
      while (1)
      {
        result = sub_22766CBB0();
        if (!v48)
        {
          goto LABEL_26;
        }

        sub_226E97CC0(&v47, &v45);
        type metadata accessor for ManagedAlternativeActivityType();
        if (!swift_dynamicCast())
        {
          break;
        }

        v14 = v44;
        v15 = [v14 alternativeActivityType];
        if (!v15)
        {

          (*(v41 + 8))(v42, v43);
          v33 = sub_227664DD0();
          sub_226EB2904(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
          swift_allocError();
          (*(*(v33 - 8) + 104))(v34, *MEMORY[0x277D51028], v33);
          swift_willThrow();

          goto LABEL_20;
        }

        v16 = v15;
        v17 = sub_22766C000();
        v19 = v18;

        *&v45 = v17;
        *(&v45 + 1) = v19;
        sub_227666520();
        sub_226EB2904(&qword_28139B668, MEMORY[0x277D52360], MEMORY[0x277D52378]);
        sub_227663AE0();

        __swift_destroy_boxed_opaque_existential_0(&v47);
        v49 = v12;
        v21 = *(v12 + 16);
        v20 = *(v12 + 24);
        if (v21 >= v20 >> 1)
        {
          sub_226EC18B4((v20 > 1), v21 + 1, 1);
          v12 = v49;
        }

        *(v12 + 16) = v21 + 1;
        sub_226EB700C(v5, v12 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v21);
        if (!--v11)
        {
          goto LABEL_10;
        }
      }

      (*(v41 + 8))(v42, v43);
      v31 = sub_227664DD0();
      sub_226EB2904(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
      swift_allocError();
      (*(*(v31 - 8) + 104))(v32, *MEMORY[0x277D51028], v31);
      swift_willThrow();

LABEL_20:
      __swift_destroy_boxed_opaque_existential_0(&v47);
      return v12;
    }

LABEL_10:
    sub_226EB2904(&qword_28139BDF0, MEMORY[0x277CC9178], MEMORY[0x277CC9180]);
    sub_22766CBB0();
    if (v46)
    {
      v22 = v40;
      while (1)
      {
        sub_226F04970(&v45, &v47);
        sub_226E97CC0(&v47, &v45);
        type metadata accessor for ManagedAlternativeActivityType();
        if (!swift_dynamicCast())
        {
          (*(v41 + 8))(v42, v43);
          v35 = sub_227664DD0();
          sub_226EB2904(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
          swift_allocError();
          (*(*(v35 - 8) + 104))(v36, *MEMORY[0x277D51028], v35);
          swift_willThrow();
          goto LABEL_23;
        }

        v23 = v44;
        v24 = [v23 alternativeActivityType];
        if (!v24)
        {
          break;
        }

        v25 = v24;
        v26 = sub_22766C000();
        v28 = v27;

        *&v45 = v26;
        *(&v45 + 1) = v28;
        sub_227666520();
        sub_226EB2904(&qword_28139B668, MEMORY[0x277D52360], MEMORY[0x277D52378]);
        sub_227663AE0();

        __swift_destroy_boxed_opaque_existential_0(&v47);
        v49 = v12;
        v30 = *(v12 + 16);
        v29 = *(v12 + 24);
        if (v30 >= v29 >> 1)
        {
          sub_226EC18B4((v29 > 1), v30 + 1, 1);
          v12 = v49;
        }

        *(v12 + 16) = v30 + 1;
        sub_226EB700C(v22, v12 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v30);
        sub_22766CBB0();
        if (!v46)
        {
          goto LABEL_17;
        }
      }

      (*(v41 + 8))(v42, v43);
      v37 = sub_227664DD0();
      sub_226EB2904(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
      swift_allocError();
      (*(*(v37 - 8) + 104))(v38, *MEMORY[0x277D51028], v37);
      swift_willThrow();

LABEL_23:
      __swift_destroy_boxed_opaque_existential_0(&v47);
    }

    else
    {
LABEL_17:
      (*(v41 + 8))(v42, v43);
      sub_226E97D1C(&v45, &unk_27D7BC990, &qword_227670A30);
    }

    return v12;
  }

  return result;
}

uint64_t sub_226EB3880(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B86E0, &qword_227679650);
  v4 = sub_226EB6150(&qword_28139BC60, &qword_27D7B86E0, &qword_227679650, sub_226EB63D4);
  result = MEMORY[0x22AA98980](v2, v3, v4);
  v12 = result;
  if (v2)
  {
    v6 = (a1 + 48);
    do
    {
      v7 = *v6;
      v9 = *(v6 - 2);
      v8 = *(v6 - 1);
      sub_226EB396C(v9, v8, *v6);
      sub_226EB61D4(v10, v9, v8, v7);
      sub_226EB2DFC(v10[0], v10[1], v11);
      v6 += 24;
      --v2;
    }

    while (v2);
    return v12;
  }

  return result;
}

uint64_t sub_226EB396C(uint64_t a1, uint64_t a2, char a3)
{
  if ((a3 & 1) == 0)
  {
  }

  return result;
}

char *sub_226EB397C(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
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

id sub_226EB3A78(uint64_t a1)
{
  v5 = sub_22766A100();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v44 - v10;
  MEMORY[0x28223BE20](v12);
  v51 = &v44 - v13;
  MEMORY[0x28223BE20](v14);
  v16 = &v44 - v15;
  if (sub_227669C10())
  {
    v17 = sub_227664DD0();
    sub_226E9CF88(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
    swift_allocError();
    (*(*(v17 - 8) + 104))(v18, *MEMORY[0x277D51010], v17);
    swift_willThrow();
  }

  else
  {
    v48 = v11;
    v49 = v8;
    v50 = v2;
    v19 = objc_allocWithZone(MEMORY[0x277CBE428]);
    v20 = sub_22766BFD0();
    v21 = [v19 initWithEntityName_];
    v46 = v21;

    [v21 setFetchBatchSize_];
    v22 = v1;
    v23 = qword_2813B2078;
    swift_beginAccess();
    v24 = v16;
    v25 = *(v6 + 16);
    v25(v24, v22 + v23, v5);
    sub_22766A090();
    v45 = *(v6 + 8);
    v47 = v24;
    v45(v24, v5);
    sub_226E99364(0, &qword_281398B58, 0x277CCAC30);
    v26 = sub_22766C2B0();

    v27 = [objc_opt_self() andPredicateWithSubpredicates_];

    v28 = v51;
    v3 = v46;
    [v46 setPredicate_];

    v53 = v23;
    v29 = v22 + v23;
    v30 = v22;
    v52 = v25;
    v25(v28, v29, v5);
    v31 = v45;
    v32 = sub_22766A0C0();
    LOBYTE(v27) = v33;
    v31(v28, v5);
    if ((v27 & 1) == 0)
    {
      [v3 setFetchLimit_];
    }

    v34 = v48;
    v52(v48, v30 + v53, v5);
    v35 = sub_22766A0E0();
    v37 = v36;
    v31(v34, v5);
    if ((v37 & 1) == 0)
    {
      [v3 setFetchOffset_];
    }

    v38 = v49;
    v52(v49, v30 + v53, v5);
    v39 = sub_22766A0B0();
    v40 = v31;
    v31(v38, v5);
    v41 = v47;
    if (v39 >> 62)
    {
      v42 = sub_22766CD20();
    }

    else
    {
      v42 = *((v39 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v42)
    {
      v52(v41, v30 + v53, v5);
      sub_22766A0B0();
      v40(v41, v5);
      sub_226E99364(0, &qword_281398AF8, 0x277CCAC98);
      v42 = sub_22766C2B0();
    }

    [v3 setSortDescriptors_];
  }

  return v3;
}

char *sub_226EB3F78(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BC980, &unk_227671070);
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

void sub_226EB4120()
{
  v0 = type metadata accessor for ScriptLinkState(0);
  MEMORY[0x28223BE20](v0);
  v2 = &v11[-((v1 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v3);
  v5 = &v11[-v4];
  sub_2276696A0();
  sub_226EA81F8(v5, v2);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      sub_22766BDB0();
      sub_227669280();
      sub_226EA4FC0(v5);
      return;
    }
  }

  else if (EnumCaseMultiPayload)
  {
    v7 = sub_22766B5F0();
    (*(*(v7 - 8) + 8))(v2, v7);
  }

  else
  {
    sub_226EA4FC0(v2);
  }

  sub_226F6649C();
  v8 = swift_allocError();
  *v9 = 4;
  *(swift_allocObject() + 16) = v8;
  v10 = v8;
  sub_22766BDB0();
  sub_227669280();
  sub_226EA4FC0(v5);
}

uint64_t sub_226EB439C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v5 = *a1;
  v6 = swift_allocObject();
  v6[2] = a2;
  v6[3] = a3;
  v6[4] = v5;

  return sub_227669270();
}

void sub_226EB4458(void (*a1)(uint64_t *), uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t *), uint64_t a4, uint64_t *a5)
{
  v7 = *a5;
  a3(&v8, &v7);
  v6 = v8;
  v9 = 0;
  a1(&v8);

  sub_226EB4548(v6, 0);
}

void sub_226EB4548(id a1, char a2)
{
  if (a2)
  {
  }
}

uint64_t objectdestroy_6Tm(void (*a1)(void))
{

  a1(*(v1 + 32));

  return MEMORY[0x2821FE8E8](v1, 40, 7);
}

uint64_t objectdestroy_6Tm_0()
{
  v1 = sub_2276639B0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

void sub_226EB4668(id a1, char a2, void (*a3)(id))
{
  if (a2)
  {
  }

  else
  {
    a3(a1);
  }
}

void sub_226EB46D8()
{
  v1 = type metadata accessor for ScriptLinkState(0);
  MEMORY[0x28223BE20](v1);
  v3 = &v12[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v4);
  v6 = &v12[-v5];
  v13 = v0;
  sub_2276696A0();
  sub_226EA81F8(v6, v3);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      sub_22766BDB0();
      sub_227669280();
      sub_226EA4FC0(v6);
      return;
    }
  }

  else if (EnumCaseMultiPayload)
  {
    v8 = sub_22766B5F0();
    (*(*(v8 - 8) + 8))(v3, v8);
  }

  else
  {
    sub_226EA4FC0(v3);
  }

  sub_226F6649C();
  v9 = swift_allocError();
  *v10 = 4;
  *(swift_allocObject() + 16) = v9;
  v11 = v9;
  sub_22766BDB0();
  sub_227669280();
  sub_226EA4FC0(v6);
}

uint64_t sub_226EB48F0()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_226EB492C(uint64_t a1, char a2, uint64_t (*a3)(uint64_t *))
{
  v4 = a1;
  v5 = a2 & 1;
  return a3(&v4);
}

void sub_226EB4998(void (*a1)(void **), uint64_t a2, void (*a3)(void **__return_ptr))
{
  a3(&v5);
  v4 = v5;
  v6 = 0;
  a1(&v5);

  sub_226EB4548(v4, 0);
}

void sub_226EB4A74(uint64_t a1)
{
  v2 = sub_22766B390();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + 128))
  {
    sub_22766A730();
    v6 = sub_22766B380();
    v7 = sub_22766C890();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_226E8E000, v6, v7, "Unexpected script connection state after activating", v8, 2u);
      MEMORY[0x22AA9A450](v8, -1, -1);
    }

    (*(v3 + 8))(v5, v2);
  }

  else
  {
    dispatch_group_leave(*(a1 + 120));
    v9 = *(a1 + 120);
    *(a1 + 120) = 1;
    v10 = *(a1 + 128);
    *(a1 + 128) = 1;
    sub_226E972B0(v9, v10);
  }
}

uint64_t *sub_226EB4CF0(uint64_t *result, uint64_t (*a2)(uint64_t *))
{
  v2 = *(result + 8);
  v3 = *result;
  v4 = v2;
  if (a2)
  {
    return a2(&v3);
  }

  return result;
}

id sub_226EB4D38(uint64_t a1)
{
  v5 = sub_22766A100();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v44 - v10;
  MEMORY[0x28223BE20](v12);
  v51 = &v44 - v13;
  MEMORY[0x28223BE20](v14);
  v16 = &v44 - v15;
  if (sub_227669C10())
  {
    v17 = sub_227664DD0();
    sub_226E9CF88(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
    swift_allocError();
    (*(*(v17 - 8) + 104))(v18, *MEMORY[0x277D51010], v17);
    swift_willThrow();
  }

  else
  {
    v48 = v11;
    v49 = v8;
    v50 = v2;
    v19 = objc_allocWithZone(MEMORY[0x277CBE428]);
    v20 = sub_22766BFD0();
    v21 = [v19 initWithEntityName_];
    v46 = v21;

    [v21 setFetchBatchSize_];
    v22 = v1;
    v23 = qword_2813B2078;
    swift_beginAccess();
    v24 = v16;
    v25 = *(v6 + 16);
    v25(v24, v22 + v23, v5);
    sub_22766A090();
    v45 = *(v6 + 8);
    v47 = v24;
    v45(v24, v5);
    sub_226E99364(0, &qword_281398B58, 0x277CCAC30);
    v26 = sub_22766C2B0();

    v27 = [objc_opt_self() andPredicateWithSubpredicates_];

    v28 = v51;
    v3 = v46;
    [v46 setPredicate_];

    v53 = v23;
    v29 = v22 + v23;
    v30 = v22;
    v52 = v25;
    v25(v28, v29, v5);
    v31 = v45;
    v32 = sub_22766A0C0();
    LOBYTE(v27) = v33;
    v31(v28, v5);
    if ((v27 & 1) == 0)
    {
      [v3 setFetchLimit_];
    }

    v34 = v48;
    v52(v48, v30 + v53, v5);
    v35 = sub_22766A0E0();
    v37 = v36;
    v31(v34, v5);
    if ((v37 & 1) == 0)
    {
      [v3 setFetchOffset_];
    }

    v38 = v49;
    v52(v49, v30 + v53, v5);
    v39 = sub_22766A0B0();
    v40 = v31;
    v31(v38, v5);
    v41 = v47;
    if (v39 >> 62)
    {
      v42 = sub_22766CD20();
    }

    else
    {
      v42 = *((v39 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v42)
    {
      v52(v41, v30 + v53, v5);
      sub_22766A0B0();
      v40(v41, v5);
      sub_226E99364(0, &qword_281398AF8, 0x277CCAC98);
      v42 = sub_22766C2B0();
    }

    [v3 setSortDescriptors_];
  }

  return v3;
}

char *sub_226EB5238(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_226EB5258(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_226EB526C(uint64_t result, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return v3;
}

uint64_t sub_226EB5278(uint64_t a1, uint64_t a2)
{
  v3 = sub_22766C070();
  v4 = v2;
  if (v3 == 121 && v2 == 0xE100000000000000 || (sub_22766D190() & 1) != 0 || v3 == 7562617 && v4 == 0xE300000000000000 || (sub_22766D190() & 1) != 0 || v3 == 116 && v4 == 0xE100000000000000 || (sub_22766D190() & 1) != 0 || v3 == 1702195828 && v4 == 0xE400000000000000 || (sub_22766D190() & 1) != 0 || v3 == 49 && v4 == 0xE100000000000000)
  {

    return 1;
  }

  else
  {
    v6 = sub_22766D190();

    return v6 & 1;
  }
}

uint64_t sub_226EB5448(unint64_t a1, uint64_t (*a2)(void), void (*a3)(BOOL, unint64_t, uint64_t), void (*a4)(id))
{
  v24 = a4;
  v23 = a2(0);
  v7 = *(v23 - 8);
  v8.n128_f64[0] = MEMORY[0x28223BE20](v23);
  v25 = &v18 - v9;
  if (a1 >> 62)
  {
    goto LABEL_20;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_22766CD20())
  {
    v11 = MEMORY[0x277D84F90];
    if (!i)
    {
      return v11;
    }

    v26 = MEMORY[0x277D84F90];
    result = (a3)(0, i & ~(i >> 63), 0, v8);
    if (i < 0)
    {
      break;
    }

    v13 = 0;
    v11 = v26;
    v19 = a3;
    v20 = a1 & 0xFFFFFFFFFFFFFF8;
    v21 = v7 + 32;
    v22 = a1 & 0xC000000000000001;
    while (1)
    {
      v14 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v22)
      {
        v15 = MEMORY[0x22AA991A0](v13, a1);
      }

      else
      {
        if (v13 >= *(v20 + 16))
        {
          goto LABEL_19;
        }

        v15 = *(a1 + 8 * v13 + 32);
      }

      v24(v15);
      if (v4)
      {

        return v11;
      }

      v26 = v11;
      v17 = *(v11 + 16);
      v16 = *(v11 + 24);
      a3 = (v17 + 1);
      if (v17 >= v16 >> 1)
      {
        v19(v16 > 1, v17 + 1, 1);
        v11 = v26;
      }

      *(v11 + 16) = a3;
      (*(v7 + 32))(v11 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v17, v25, v23);
      ++v13;
      if (v14 == i)
      {
        return v11;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    ;
  }

  __break(1u);
  return result;
}

void *sub_226EB567C(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
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

void *sub_226EB5880(void *a1, int64_t a2, char a3)
{
  result = sub_226EB5858(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void sub_226EB58F8(void *a1)
{
  v2 = a1;
  v3 = [a1 identifier];
  if (!v3)
  {
    goto LABEL_10;
  }

  v4 = v3;
  sub_22766C000();

  v5 = [v2 name];
  if (!v5)
  {
LABEL_9:

LABEL_10:
    v13 = sub_227664DD0();
    sub_2273364DC(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
    swift_allocError();
    (*(*(v13 - 8) + 104))(v14, *MEMORY[0x277D51028], v13);
    swift_willThrow();
LABEL_11:

    return;
  }

  v6 = v5;
  sub_22766C000();

  v7 = [v2 kind];
  if (!v7)
  {

    goto LABEL_9;
  }

  v8 = v7;
  sub_22766C000();

  v9 = [v2 features];
  if (!v9)
  {
    v15 = sub_227664DD0();
    sub_2273364DC(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
    swift_allocError();
    (*(*(v15 - 8) + 104))(v16, *MEMORY[0x277D51028], v15);
    swift_willThrow();

    goto LABEL_13;
  }

  v10 = v9;
  v11 = MEMORY[0x22AA99A00]();
  v12 = sub_226EB5F10(v10);
  if (v1)
  {
    objc_autoreleasePoolPop(v11);

    v2 = v10;
LABEL_13:

    return;
  }

  v17 = v12;
  objc_autoreleasePoolPop(v11);
  sub_226EB3880(v17);

  v18 = [v2 filterPropertyTypes];
  if (v18)
  {
    v19 = v18;
    v20 = MEMORY[0x22AA99A00]();
    v23 = sub_226EB6660(v19);
    objc_autoreleasePoolPop(v20);
    sub_226EB67D8(v23);

    sub_226EB6D50([v2 healthKitActivityTypes]);
    v24 = [v2 alternativeActivityTypes];
    if (v24)
    {
      v25 = v24;
      v26 = MEMORY[0x22AA99A00]();
      v29 = sub_226EB3038(v25);
      objc_autoreleasePoolPop(v26);
      sub_226EB9540(v29);

      sub_226EC1E18();
      sub_227663AE0();
      sub_227666FD0();
      goto LABEL_11;
    }

    v27 = sub_227664DD0();
    sub_2273364DC(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
    swift_allocError();
    (*(*(v27 - 8) + 104))(v28, *MEMORY[0x277D51028], v27);
    swift_willThrow();
  }

  else
  {
    v21 = sub_227664DD0();
    sub_2273364DC(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
    swift_allocError();
    (*(*(v21 - 8) + 104))(v22, *MEMORY[0x277D51028], v21);
    swift_willThrow();
  }
}

void *sub_226EB5F74(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
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
    v16[3] = 2 * ((v17 - 32) / 24);
  }

  else
  {
    v16 = MEMORY[0x277D84F90];
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[3 * v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 24 * v14);
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

void *sub_226EB60DC(void *a1, int64_t a2, char a3)
{
  result = sub_226EB60B8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

unint64_t sub_226EB60FC()
{
  result = qword_28139B678;
  if (!qword_28139B678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28139B678);
  }

  return result;
}

uint64_t sub_226EB6150(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
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

uint64_t sub_226EB61D4(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v7 = *v4;
  v18 = a4 & 1;
  sub_22766D370();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B86E0, &qword_227679650);
  sub_226EB63D4();
  sub_227663B10();
  v8 = sub_22766D3F0();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    sub_226EC1E6C();
    sub_226EB60FC();
    while ((sub_227663B20() & 1) == 0)
    {
      v10 = (v10 + 1) & v11;
      if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    sub_226EB2DFC(a2, a3, a4 & 1);
    v14 = *(v7 + 48) + 24 * v10;
    v15 = *v14;
    v16 = *(v14 + 8);
    v17 = *(v14 + 16);
    *a1 = *v14;
    *(a1 + 8) = v16;
    *(a1 + 16) = v17;
    sub_226EB396C(v15, v16, v17);
    return 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v22 = *v19;
    sub_226EB396C(a2, a3, v18);
    sub_226EB6428(a2, a3, v18, v10, isUniquelyReferenced_nonNull_native);
    *v19 = v22;
    *a1 = a2;
    *(a1 + 8) = a3;
    *(a1 + 16) = v18;
    return 1;
  }
}

unint64_t sub_226EB63D4()
{
  result = qword_28139B688;
  if (!qword_28139B688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28139B688);
  }

  return result;
}

uint64_t sub_226EB6428(uint64_t result, uint64_t a2, char a3, unint64_t a4, char a5)
{
  v7 = result;
  v8 = *(*v5 + 16);
  v9 = *(*v5 + 24);
  if (v9 > v8 && (a5 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a5)
  {
    sub_2270C4AB0(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_2270EF51C(&qword_27D7BA5C0, &qword_227678E50, sub_226F491DC);
      goto LABEL_12;
    }

    sub_2270F2288(v8 + 1);
  }

  v10 = *v5;
  sub_22766D370();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B86E0, &qword_227679650);
  sub_226EB63D4();
  sub_227663B10();
  result = sub_22766D3F0();
  v11 = -1 << *(v10 + 32);
  a4 = result & ~v11;
  if ((*(v10 + 56 + ((a4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a4))
  {
    v12 = ~v11;
    sub_226EC1E6C();
    sub_226EB60FC();
    do
    {
      result = sub_227663B20();
      if (result)
      {
        goto LABEL_15;
      }

      a4 = (a4 + 1) & v12;
    }

    while (((*(v10 + 56 + ((a4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a4) & 1) != 0);
  }

LABEL_12:
  v13 = *v18;
  *(*v18 + 8 * (a4 >> 6) + 56) |= 1 << a4;
  v14 = *(v13 + 48) + 24 * a4;
  *v14 = v7;
  *(v14 + 8) = a2;
  *(v14 + 16) = a3 & 1;
  v15 = *(v13 + 16);
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (!v16)
  {
    *(v13 + 16) = v17;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_22766D210();
  __break(1u);
  return result;
}

void *sub_226EB6740(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_226EB6760(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

unint64_t sub_226EB6784()
{
  result = qword_28139B528;
  if (!qword_28139B528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28139B528);
  }

  return result;
}

uint64_t sub_226EB67D8(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B86D8, &unk_227671530);
  v4 = sub_226EB6150(&qword_28139BC50, &qword_27D7B86D8, &unk_227671530, sub_226EB6AC4);
  result = MEMORY[0x22AA98980](v2, v3, v4);
  v12 = result;
  if (v2)
  {
    v6 = (a1 + 48);
    do
    {
      v7 = *v6;
      v9 = *(v6 - 2);
      v8 = *(v6 - 1);
      sub_226EB396C(v9, v8, *v6);
      sub_226EB68C4(v10, v9, v8, v7);
      sub_226EB2DFC(v10[0], v10[1], v11);
      v6 += 24;
      --v2;
    }

    while (v2);
    return v12;
  }

  return result;
}

uint64_t sub_226EB68C4(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v7 = *v4;
  v18 = a4 & 1;
  sub_22766D370();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B86D8, &unk_227671530);
  sub_226EB6AC4();
  sub_227663B10();
  v8 = sub_22766D3F0();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    sub_226EC21AC();
    sub_226EB6784();
    while ((sub_227663B20() & 1) == 0)
    {
      v10 = (v10 + 1) & v11;
      if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    sub_226EB2DFC(a2, a3, a4 & 1);
    v14 = *(v7 + 48) + 24 * v10;
    v15 = *v14;
    v16 = *(v14 + 8);
    v17 = *(v14 + 16);
    *a1 = *v14;
    *(a1 + 8) = v16;
    *(a1 + 16) = v17;
    sub_226EB396C(v15, v16, v17);
    return 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v22 = *v19;
    sub_226EB396C(a2, a3, v18);
    sub_226EB6B18(a2, a3, v18, v10, isUniquelyReferenced_nonNull_native);
    *v19 = v22;
    *a1 = a2;
    *(a1 + 8) = a3;
    *(a1 + 16) = v18;
    return 1;
  }
}

unint64_t sub_226EB6AC4()
{
  result = qword_28139B538;
  if (!qword_28139B538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28139B538);
  }

  return result;
}

uint64_t sub_226EB6B18(uint64_t result, uint64_t a2, char a3, unint64_t a4, char a5)
{
  v7 = result;
  v8 = *(*v5 + 16);
  v9 = *(*v5 + 24);
  if (v9 > v8 && (a5 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a5)
  {
    sub_2270C4804(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_2270EF51C(&qword_27D7BA5B8, &qword_227678E48, sub_226F491DC);
      goto LABEL_12;
    }

    sub_2270F1FFC(v8 + 1);
  }

  v10 = *v5;
  sub_22766D370();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B86D8, &unk_227671530);
  sub_226EB6AC4();
  sub_227663B10();
  result = sub_22766D3F0();
  v11 = -1 << *(v10 + 32);
  a4 = result & ~v11;
  if ((*(v10 + 56 + ((a4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a4))
  {
    v12 = ~v11;
    sub_226EC21AC();
    sub_226EB6784();
    do
    {
      result = sub_227663B20();
      if (result)
      {
        goto LABEL_15;
      }

      a4 = (a4 + 1) & v12;
    }

    while (((*(v10 + 56 + ((a4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a4) & 1) != 0);
  }

LABEL_12:
  v13 = *v18;
  *(*v18 + 8 * (a4 >> 6) + 56) |= 1 << a4;
  v14 = *(v13 + 48) + 24 * a4;
  *v14 = v7;
  *(v14 + 8) = a2;
  *(v14 + 16) = a3 & 1;
  v15 = *(v13 + 16);
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (!v16)
  {
    *(v13 + 16) = v17;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_22766D210();
  __break(1u);
  return result;
}

char *sub_226EB6D50(void *a1)
{
  v1 = MEMORY[0x277D84F90];
  if (!a1)
  {
    return v1;
  }

  v2 = a1;
  v3 = [a1 array];
  v4 = sub_22766C2C0();

  v5 = sub_226EB294C(v4);

  if (!v5)
  {
    v1 = sub_227664DD0();
    sub_226FC4F70();
    swift_allocError();
    (*(*(v1 - 8) + 104))(v13, *MEMORY[0x277D51028], v1);
    swift_willThrow();

    return v1;
  }

  if (v5 >> 62)
  {
    goto LABEL_17;
  }

  v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v6)
  {
LABEL_18:

LABEL_19:

    return v1;
  }

  while (1)
  {
    v14 = v2;
    result = sub_226EB5238(0, v6 & ~(v6 >> 63), 0);
    if (v6 < 0)
    {
      break;
    }

    v8 = 0;
    while (1)
    {
      v9 = (v5 & 0xC000000000000001) != 0 ? MEMORY[0x22AA991A0](v8, v5) : *(v5 + 8 * v8 + 32);
      v10 = v9;
      v11 = [v9 value];

      if ((v11 & 0x8000000000000000) != 0)
      {
        break;
      }

      v2 = *(v1 + 16);
      v12 = *(v1 + 24);
      if (v2 >= v12 >> 1)
      {
        sub_226EB5238((v12 > 1), v2 + 1, 1);
      }

      ++v8;
      *(v1 + 16) = v2 + 1;
      *(v1 + 8 * v2 + 32) = v11;
      if (v6 == v8)
      {

        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_17:
    v6 = sub_22766CD20();
    if (!v6)
    {
      goto LABEL_18;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_226EB6FEC(uint64_t a1)
{
  *(v2 + 72) = a1;
  *(v2 + 80) = v1;
  return MEMORY[0x2822009F8](sub_226EB9140, 0, 0);
}

uint64_t sub_226EB700C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B86D0, &qword_22768B670);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_226EB707C(uint64_t a1, uint64_t (*a2)(void), void (*a3)(char *, char *))
{
  v26 = a3;
  v4 = a2(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = v25 - v9;
  v12.n128_f64[0] = MEMORY[0x28223BE20](v11);
  v14 = v25 - v13;
  v15 = 0;
  v27 = a1;
  v18 = *(a1 + 56);
  v17 = a1 + 56;
  v16 = v18;
  v19 = 1 << *(v17 - 24);
  v20 = -1;
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  v21 = v20 & v16;
  v22 = (v19 + 63) >> 6;
  v25[2] = v5 + 32;
  v25[3] = v5 + 16;
  v25[1] = v5 + 8;
  if ((v20 & v16) != 0)
  {
    do
    {
      v23 = v15;
LABEL_9:
      v24 = __clz(__rbit64(v21));
      v21 &= v21 - 1;
      (*(v5 + 16))(v14, *(v27 + 48) + *(v5 + 72) * (v24 | (v23 << 6)), v4, v12);
      (*(v5 + 32))(v7, v14, v4);
      v26(v10, v7);
      (*(v5 + 8))(v10, v4);
    }

    while (v21);
  }

  while (1)
  {
    v23 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v23 >= v22)
    {

      return;
    }

    v21 = *(v17 + 8 * v23);
    ++v15;
    if (v21)
    {
      v15 = v23;
      goto LABEL_9;
    }
  }

  __break(1u);
}

BOOL sub_226EB729C(uint64_t a1, uint64_t a2, char a3)
{
  v5 = sub_227666F90();
  v6 = *(v5 + 16);
  if (v6)
  {
    v7 = 0;
    while (2)
    {
      v8 = *(v5 + 32 + 8 * v7++);
      v9 = *(a2 + 16);
      v10 = (a2 + 32);
      do
      {
        if (!v9)
        {

          return 0;
        }

        v11 = *v10++;
        --v9;
      }

      while (v11 != v8);
      if (v7 != v6)
      {
        continue;
      }

      break;
    }
  }

  if ((a3 & 1) == 0)
  {
    return 1;
  }

  v12 = *(sub_227666F90() + 16);

  return v12 == 1;
}

void *sub_226EB734C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(void))
{
  if (a2 <= a1)
  {
    v5 = a1;
  }

  else
  {
    v5 = a2;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v8 = *(a5(0) - 8);
  v9 = *(v8 + 72);
  v10 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v11 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v11);
  if (v9)
  {
    if ((result - v10) != 0x8000000000000000 || v9 != -1)
    {
      v11[2] = a1;
      v11[3] = 2 * ((result - v10) / v9);
      return v11;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_226EB7470(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v41 = a5(0);
  v43 = *(v41 - 8);
  MEMORY[0x28223BE20](v41);
  v42 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11.n128_f64[0] = MEMORY[0x28223BE20](v10);
  v40 = &v34 - v12;
  v13 = a4 + 56;
  v14 = -1 << *(a4 + 32);
  if (-v14 < 64)
  {
    v15 = ~(-1 << -v14);
  }

  else
  {
    v15 = -1;
  }

  v16 = v15 & *(a4 + 56);
  if (!a2)
  {
LABEL_19:
    v32 = 0;
LABEL_25:
    *a1 = a4;
    *(a1 + 8) = v13;
    *(a1 + 16) = ~v14;
    *(a1 + 24) = v32;
    *(a1 + 32) = v16;
    return;
  }

  if (!a3)
  {
    v32 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v34 = -1 << *(a4 + 32);
    v35 = a1;
    v17 = 0;
    v18 = (63 - v14) >> 6;
    v36 = v43 + 32;
    v37 = v43 + 16;
    a1 = 1;
    v38 = a4 + 56;
    v39 = a3;
    v19 = v40;
    while (v16)
    {
      v45 = a2;
LABEL_15:
      v22 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
      v44 = v17;
      v23 = a4;
      v24 = *(a4 + 48);
      v25 = v42;
      v26 = v43;
      v27 = *(v43 + 72);
      v28 = v41;
      (*(v43 + 16))(v42, v24 + v27 * (v22 | (v17 << 6)), v41, v11);
      v29 = *(v26 + 32);
      v29(v19, v25, v28);
      v30 = v45;
      v29(v45, v19, v28);
      if (a1 == v39)
      {
        v14 = v34;
        a1 = v35;
        a4 = v23;
        v32 = v44;
        v13 = v38;
        goto LABEL_25;
      }

      a2 = &v30[v27];
      v31 = __OFADD__(a1++, 1);
      a4 = v23;
      v17 = v44;
      v13 = v38;
      if (v31)
      {
        __break(1u);
        goto LABEL_19;
      }
    }

    v20 = v17;
    while (1)
    {
      v21 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v21 >= v18)
      {
        break;
      }

      v16 = *(v13 + 8 * v21);
      ++v20;
      if (v16)
      {
        v45 = a2;
        v17 = v21;
        goto LABEL_15;
      }
    }

    v16 = 0;
    if (v18 <= v17 + 1)
    {
      v33 = v17 + 1;
    }

    else
    {
      v33 = v18;
    }

    v32 = v33 - 1;
    v14 = v34;
    a1 = v35;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
}

uint64_t objectdestroyTm(void (*a1)(void), void (*a2)(void))
{
  a1(*(v2 + 16));
  a2(*(v2 + 24));

  return MEMORY[0x2821FE8E8](v2, 32, 7);
}

uint64_t objectdestroyTm_0()
{
  v1 = *(sub_227667AA0() - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(v1 + 64);

  v5 = sub_227665FB0();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t objectdestroyTm_1(uint64_t (*a1)(void))
{
  v2 = a1(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 24) & ~v4;
  v6 = *(v3 + 64);

  (*(v3 + 8))(v1 + v5, v2);

  return MEMORY[0x2821FE8E8](v1, v5 + v6, v4 | 7);
}

uint64_t objectdestroyTm_2(uint64_t (*a1)(void))
{
  v2 = a1(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 24) & ~v4;
  v6 = *(v3 + 64);

  (*(v3 + 8))(v1 + v5, v2);

  return MEMORY[0x2821FE8E8](v1, v5 + v6, v4 | 7);
}

uint64_t objectdestroyTm_3()
{
  v1 = sub_227667370();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t objectdestroyTm_4(uint64_t (*a1)(void))
{
  v2 = a1(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 16) & ~v4;
  v6 = (*(v3 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v3 + 8))(v1 + v5, v2);

  return MEMORY[0x2821FE8E8](v1, v6 + 8, v4 | 7);
}

uint64_t objectdestroyTm_5(void (*a1)(void))
{
  a1(*(v1 + 16));

  return MEMORY[0x2821FE8E8](v1, 32, 7);
}

uint64_t objectdestroyTm_6()
{
  v1 = sub_2276627D0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 200) & ~v3;
  v5 = *(v2 + 64);
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  __swift_destroy_boxed_opaque_existential_0(v0 + 7);
  __swift_destroy_boxed_opaque_existential_0(v0 + 15);
  __swift_destroy_boxed_opaque_existential_0(v0 + 20);
  (*(v2 + 8))(&v0[v4], v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t objectdestroyTm_7(uint64_t (*a1)(void))
{
  v2 = a1(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 24) & ~v4;
  v6 = *(v3 + 64);

  (*(v3 + 8))(v1 + v5, v2);

  return MEMORY[0x2821FE8E8](v1, v5 + v6, v4 | 7);
}

uint64_t objectdestroyTm_8(uint64_t (*a1)(void))
{
  v2 = a1(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 16) & ~v4;
  v6 = (*(v3 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v3 + 8))(v1 + v5, v2);

  return MEMORY[0x2821FE8E8](v1, v6 + 8, v4 | 7);
}

uint64_t objectdestroyTm_9(uint64_t a1)
{
  __swift_destroy_boxed_opaque_existential_0(v1 + 13);
  __swift_destroy_boxed_opaque_existential_0(v1 + 18);
  __swift_destroy_boxed_opaque_existential_0(v1 + 23);

  return MEMORY[0x2821FE8E8](v1, a1, 7);
}

uint64_t objectdestroyTm_10()
{
  v1 = (type metadata accessor for InferenceProvider(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BC880, &unk_227671C60);
  (*(*(v5 - 8) + 8))(v0 + v3, v5);
  __swift_destroy_boxed_opaque_existential_0((v0 + v3 + v1[7]));
  __swift_destroy_boxed_opaque_existential_0((v0 + v3 + v1[8]));
  __swift_destroy_boxed_opaque_existential_0((v0 + v3 + v1[9]));
  __swift_destroy_boxed_opaque_existential_0((v0 + v3 + v1[10]));

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t objectdestroyTm_11()
{
  v1 = sub_2276639B0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t objectdestroyTm_12(uint64_t (*a1)(void))
{
  v2 = a1(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 24) & ~v4;
  v6 = *(v3 + 64);

  (*(v3 + 8))(v1 + v5, v2);

  return MEMORY[0x2821FE8E8](v1, v5 + v6, v4 | 7);
}

uint64_t objectdestroyTm_13(uint64_t (*a1)(void))
{
  v2 = a1(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 16) & ~v4;
  v6 = *(v3 + 64);
  (*(v3 + 8))(v1 + v5, v2);

  return MEMORY[0x2821FE8E8](v1, v5 + v6, v4 | 7);
}

uint64_t objectdestroyTm_14()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t objectdestroyTm_15(uint64_t (*a1)(void), void (*a2)(void))
{
  v4 = a1(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  v7 = (v6 + 16) & ~v6;
  v8 = (*(v5 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v5 + 8))(v2 + v7, v4);
  a2(*(v2 + v8));

  return MEMORY[0x2821FE8E8](v2, v8 + 8, v6 | 7);
}

uint64_t sub_226EB8288(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC7E8, &unk_22767EF78);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_226EB82F0(uint64_t a1)
{
  *(*v1 + 176) = a1;

  return MEMORY[0x2822009F8](sub_226EB83F0, 0, 0);
}

uint64_t sub_226EB83F0()
{
  *(v0[17] + 56) = v0[22];
  v1 = swift_task_alloc();
  v0[23] = v1;
  *v1 = v0;
  v1[1] = sub_226EC7DAC;

  return sub_226EB848C();
}

uint64_t sub_226EB848C()
{
  v1[33] = v0;
  v2 = sub_22766B390();
  v1[34] = v2;
  v1[35] = *(v2 - 8);
  v1[36] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226EBBDC0, 0, 0);
}

uint64_t sub_226EB8590(uint64_t a1)
{
  *(*v1 + 208) = a1;

  return MEMORY[0x2822009F8](sub_226EB8690, 0, 0);
}

uint64_t sub_226EB8690()
{
  *(v0[17] + 72) = v0[26];
  v1 = swift_task_alloc();
  v0[27] = v1;
  *v1 = v0;
  v1[1] = sub_226EBD714;

  return sub_226EAEBAC(1);
}

uint64_t sub_226EB8730()
{
  v1 = *(v0 + 272);
  v2 = *(v0 + 329);
  v3 = v1[14];
  v4 = v1[15];
  __swift_project_boxed_opaque_existential_0(v1 + 11, v3);
  sub_226EB3000(v1, v0 + 16);
  v5 = swift_allocObject();
  *(v0 + 304) = v5;
  v6 = *(v0 + 192);
  *(v5 + 176) = *(v0 + 176);
  *(v5 + 192) = v6;
  *(v5 + 208) = *(v0 + 208);
  v7 = *(v0 + 128);
  *(v5 + 112) = *(v0 + 112);
  *(v5 + 128) = v7;
  v8 = *(v0 + 160);
  *(v5 + 144) = *(v0 + 144);
  *(v5 + 160) = v8;
  v9 = *(v0 + 64);
  *(v5 + 48) = *(v0 + 48);
  *(v5 + 64) = v9;
  v10 = *(v0 + 96);
  *(v5 + 80) = *(v0 + 80);
  *(v5 + 96) = v10;
  v11 = *(v0 + 32);
  *(v5 + 16) = *(v0 + 16);
  *(v5 + 32) = v11;
  *(v5 + 224) = v2;
  v15 = (*(v4 + 24) + **(v4 + 24));
  v12 = swift_task_alloc();
  *(v0 + 312) = v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC7E0, &qword_22767EF70);
  *v12 = v0;
  v12[1] = sub_226EC1698;

  return v15(v0 + 248, sub_226EBD978, v5, v13, v3, v4);
}

uint64_t sub_226EB8904(uint64_t *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 32);
  v4 = *(a1 + 8);
  v6 = *a1;
  v7 = v4;
  v2(&v6);
  return v3(&v6);
}

uint64_t sub_226EB89A4(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t), uint64_t a3)
{
  v43 = a2;
  v44 = a3;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC7E8, &unk_22767EF78);
  MEMORY[0x28223BE20](v42);
  v41 = (&v33 - v4);
  v40 = *(a1 + 16);
  if (!v40)
  {
    return MEMORY[0x277D84F90];
  }

  v5 = 0;
  v39 = sub_227666FF0();
  v6 = *(v39 - 8);
  v7 = *(v6 + 16);
  v6 += 16;
  v38 = v7;
  v36 = a1 + ((*(v6 + 64) + 32) & ~*(v6 + 64));
  v8 = MEMORY[0x277D84F90];
  v37 = v6;
  v35 = *(v6 + 56);
  while (1)
  {
    v10 = v36 + v35 * v5;
    v11 = v41;
    v12 = *(v42 + 48);
    *v41 = v5;
    v38(v11 + v12, v10, v39);
    v13 = v43(v5, v11 + v12);
    sub_226EB8288(v11);
    v14 = v13 >> 62;
    if (v13 >> 62)
    {
      v15 = sub_22766CD20();
    }

    else
    {
      v15 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v16 = v8 >> 62;
    if (v8 >> 62)
    {
      v32 = sub_22766CD20();
      v18 = v32 + v15;
      if (__OFADD__(v32, v15))
      {
LABEL_32:
        __break(1u);
        return MEMORY[0x277D84F90];
      }
    }

    else
    {
      v17 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v18 = v17 + v15;
      if (__OFADD__(v17, v15))
      {
        goto LABEL_32;
      }
    }

    result = swift_isUniquelyReferenced_nonNull_bridgeObject();
    if (result)
    {
      if (!v16)
      {
        v19 = v8 & 0xFFFFFFFFFFFFFF8;
        if (v18 <= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          goto LABEL_16;
        }

        goto LABEL_15;
      }

LABEL_14:
      sub_22766CD20();
      goto LABEL_15;
    }

    if (v16)
    {
      goto LABEL_14;
    }

LABEL_15:
    result = sub_22766CE90();
    v8 = result;
    v19 = result & 0xFFFFFFFFFFFFFF8;
LABEL_16:
    v20 = *(v19 + 16);
    v21 = *(v19 + 24);
    if (v14)
    {
      break;
    }

    v22 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v22)
    {
      goto LABEL_3;
    }

LABEL_20:
    if (((v21 >> 1) - v20) < v15)
    {
      goto LABEL_36;
    }

    v45 = v15;
    v46 = v5;
    v48 = v8;
    v24 = v19 + 8 * v20 + 32;
    v34 = v19;
    if (v14)
    {
      if (v22 < 1)
      {
        goto LABEL_38;
      }

      sub_2272C7054();
      for (i = 0; i != v22; ++i)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC7D0, &qword_22767EF68);
        v26 = sub_2275F0174(v47, i, v13);
        v28 = *v27;
        (v26)(v47, 0);
        *(v24 + 8 * i) = v28;
      }
    }

    else
    {
      sub_226EBD6C8();
      swift_arrayInitWithCopy();
    }

    v5 = v46;
    v8 = v48;
    if (v45 >= 1)
    {
      v29 = *(v34 + 16);
      v30 = __OFADD__(v29, v45);
      v31 = v29 + v45;
      if (v30)
      {
        goto LABEL_37;
      }

      *(v34 + 16) = v31;
    }

LABEL_4:
    if (++v5 == v40)
    {
      return v8;
    }
  }

  v23 = v19;
  result = sub_22766CD20();
  v19 = v23;
  v22 = result;
  if (result)
  {
    goto LABEL_20;
  }

LABEL_3:

  if (v15 <= 0)
  {
    goto LABEL_4;
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

uint64_t sub_226EB8D2C(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  v23 = a2;
  v24 = a3;
  v22 = a1;
  v4 = sub_22766B3B0();
  v27 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22766B3F0();
  v25 = *(v7 - 8);
  v26 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_22766B410();
  v21 = v10;
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v21 - v15;
  sub_226EA1CF4();
  v17 = sub_22766C950();
  sub_22766B400();
  sub_22766C550();
  sub_22766B430();
  v18 = *(v11 + 8);
  v18(v13, v10);
  aBlock[4] = v23;
  aBlock[5] = v22;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_226E9D72C;
  aBlock[3] = v24;
  v19 = _Block_copy(aBlock);

  sub_22766B3D0();
  v28 = MEMORY[0x277D84F90];
  sub_226E9ECD0(&qword_2813A5870, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BA240, &unk_227674420);
  sub_226E9D394();
  sub_22766CC80();
  MEMORY[0x22AA98C50](v16, v9, v6, v19);
  _Block_release(v19);

  (*(v27 + 8))(v6, v4);
  (*(v25 + 8))(v9, v26);
  v18(v16, v21);
}

uint64_t sub_226EB90D0(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 40);
  v5 = *(v2 + 24);
  *v3 = 12;
  v7[1] = v5;
  v8 = a2;
  v9 = v4;
  v10 = a1;
  v11 = v3;
  return sub_226EC17B4(sub_226EC1B60, v7, &unk_283A941F0);
}

uint64_t sub_226EB9140()
{
  __swift_project_boxed_opaque_existential_0((*(v0 + 80) + 48), *(*(v0 + 80) + 72));
  v1 = swift_task_alloc();
  *(v0 + 88) = v1;
  *v1 = v0;
  v1[1] = sub_226EC6F28;

  return sub_226EB91E0();
}

uint64_t sub_226EB9200()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC7C8, &qword_22767EF38);
  inited = swift_initStackObject();
  *(v0 + 136) = inited;
  *(inited + 16) = xmmword_22767EEC0;
  v2 = swift_task_alloc();
  *(v0 + 144) = v2;
  *v2 = v0;
  v2[1] = sub_226EAE72C;

  return sub_226EB92BC();
}

void *sub_226EB9358(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
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

uint64_t sub_226EB9540(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B86D0, &qword_22768B670);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v14 - v7;
  v9 = *(a1 + 16);
  v10 = sub_226EC1AA4();
  result = MEMORY[0x22AA98980](v9, v2, v10);
  v15 = result;
  if (v9)
  {
    v12 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v13 = *(v3 + 72);
    do
    {
      sub_226E93170(v12, v5, &qword_27D7B86D0, &qword_22768B670);
      sub_226EB96AC(v8, v5);
      sub_226E97D1C(v8, &qword_27D7B86D0, &qword_22768B670);
      v12 += v13;
      --v9;
    }

    while (v9);
    return v15;
  }

  return result;
}

uint64_t sub_226EB96AC(uint64_t a1, uint64_t a2)
{
  v21 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B86D0, &qword_22768B670);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v20 - v6;
  v20 = v2;
  v8 = *v2;
  sub_22766D370();
  sub_226EB99C8(&qword_28139B670, MEMORY[0x277D52360], MEMORY[0x277D52368]);
  v24 = a2;
  sub_227663B10();
  v9 = sub_22766D3F0();
  v22 = v8 + 56;
  v23 = v8;
  v10 = -1 << *(v8 + 32);
  v11 = v9 & ~v10;
  if ((*(v8 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    v13 = *(v5 + 72);
    while (1)
    {
      sub_226E93170(*(v23 + 48) + v13 * v11, v7, &qword_27D7B86D0, &qword_22768B670);
      sub_227666520();
      v14 = MEMORY[0x277D52360];
      sub_226EB99C8(&qword_27D7BA5A8, MEMORY[0x277D52360], MEMORY[0x277D52370]);
      sub_226EB99C8(&qword_28139B668, v14, MEMORY[0x277D52378]);
      v15 = sub_227663B20();
      sub_226E97D1C(v7, &qword_27D7B86D0, &qword_22768B670);
      if (v15)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
      if (((*(v22 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    sub_226E97D1C(v24, &qword_27D7B86D0, &qword_22768B670);
    sub_226E93170(*(v23 + 48) + v13 * v11, v21, &qword_27D7B86D0, &qword_22768B670);
    return 0;
  }

  else
  {
LABEL_5:
    v16 = v20;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = v24;
    sub_226E93170(v24, v7, &qword_27D7B86D0, &qword_22768B670);
    v25 = *v16;
    sub_226EB9A10(v7, v11, isUniquelyReferenced_nonNull_native);
    *v16 = v25;
    sub_226E95D18(v18, v21, &qword_27D7B86D0, &qword_22768B670);
    return 1;
  }
}

uint64_t sub_226EB99C8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_226EB9A10(uint64_t a1, unint64_t a2, char a3)
{
  v29 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B86D0, &qword_22768B670);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v25 - v8;
  v10 = *(*v3 + 16);
  v11 = *(*v3 + 24);
  v26 = v7;
  v27 = v3;
  if (v11 > v10 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_2270C44A4(v10 + 1);
  }

  else
  {
    if (v11 > v10)
    {
      sub_2270EF1BC(&qword_27D7B86D0, &qword_22768B670, &qword_27D7BA5B0, &qword_227678E40);
      goto LABEL_12;
    }

    sub_2270F1CCC(v10 + 1);
  }

  v12 = *v3;
  sub_22766D370();
  sub_226EB99C8(&qword_28139B670, MEMORY[0x277D52360], MEMORY[0x277D52368]);
  sub_227663B10();
  v13 = sub_22766D3F0();
  v14 = v12 + 56;
  v28 = v12;
  v15 = -1 << *(v12 + 32);
  a2 = v13 & ~v15;
  if ((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v25 = v6;
    v16 = ~v15;
    v17 = *(v7 + 72);
    do
    {
      sub_226E93170(*(v28 + 48) + v17 * a2, v9, &qword_27D7B86D0, &qword_22768B670);
      sub_227666520();
      v18 = MEMORY[0x277D52360];
      sub_226EB99C8(&qword_27D7BA5A8, MEMORY[0x277D52360], MEMORY[0x277D52370]);
      sub_226EB99C8(&qword_28139B668, v18, MEMORY[0x277D52378]);
      v19 = sub_227663B20();
      sub_226E97D1C(v9, &qword_27D7B86D0, &qword_22768B670);
      if (v19)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v16;
    }

    while (((*(v14 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v20 = *v27;
  *(*v27 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = sub_226E95D18(v29, *(v20 + 48) + *(v26 + 72) * a2, &qword_27D7B86D0, &qword_22768B670);
  v22 = *(v20 + 16);
  v23 = __OFADD__(v22, 1);
  v24 = v22 + 1;
  if (!v23)
  {
    *(v20 + 16) = v24;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_22766D210();
  __break(1u);
  return result;
}

uint64_t sub_226EB9D38(uint64_t a1)
{
  v2 = sub_227666FF0();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v17 - v7;
  v9 = *(a1 + 16);
  v10 = sub_226EB9ED4(&unk_28139B578, MEMORY[0x277D52AF8], MEMORY[0x277D52B00]);
  result = MEMORY[0x22AA98980](v9, v2, v10);
  v18 = result;
  if (v9)
  {
    v14 = *(v3 + 16);
    v12 = v3 + 16;
    v13 = v14;
    v15 = a1 + ((*(v12 + 64) + 32) & ~*(v12 + 64));
    v16 = *(v12 + 56);
    do
    {
      v13(v5, v15, v2);
      sub_226EB9F1C(v8, v5);
      (*(v12 - 8))(v8, v2);
      v15 += v16;
      --v9;
    }

    while (v9);
    return v18;
  }

  return result;
}

uint64_t sub_226EB9ED4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_226EB9F1C(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_227666FF0();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_226EB99C8(&unk_28139B578, MEMORY[0x277D52AF8], MEMORY[0x277D52B00]);
  v33 = a2;
  v11 = sub_22766BF50();
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
      sub_226EB99C8(&qword_28139B570, MEMORY[0x277D52AF8], MEMORY[0x277D52B08]);
      v21 = sub_22766BFB0();
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
    sub_226EBA1FC(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t sub_226EBA1FC(uint64_t a1, unint64_t a2, char a3)
{
  v32 = a1;
  v6 = sub_227666FF0();
  v7 = *(v6 - 8);
  v8.n128_f64[0] = MEMORY[0x28223BE20](v6);
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
    sub_226EBA7E0(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      sub_2270EF7AC(MEMORY[0x277D52AF8], &qword_27D7BA5A0, &qword_227678E38);
      goto LABEL_12;
    }

    sub_226EBA4C4(v11 + 1);
  }

  v13 = *v3;
  sub_226EB99C8(&unk_28139B578, MEMORY[0x277D52AF8], MEMORY[0x277D52B00]);
  v14 = sub_22766BF50();
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
      sub_226EB99C8(&qword_28139B570, MEMORY[0x277D52AF8], MEMORY[0x277D52B08]);
      v22 = sub_22766BFB0();
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
  result = sub_22766D210();
  __break(1u);
  return result;
}

uint64_t sub_226EBA4C4(uint64_t a1)
{
  v2 = v1;
  v33 = sub_227666FF0();
  v3 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA5A0, &qword_227678E38);
  v7 = sub_22766CDC0();
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
      sub_226EB99C8(&unk_28139B578, MEMORY[0x277D52AF8], MEMORY[0x277D52B00]);
      result = sub_22766BF50();
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

uint64_t sub_226EBA7E0(uint64_t a1)
{
  v2 = v1;
  v36 = sub_227666FF0();
  v3 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v35 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA5A0, &qword_227678E38);
  result = sub_22766CDC0();
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
      sub_226EB99C8(&unk_28139B578, MEMORY[0x277D52AF8], MEMORY[0x277D52B00]);
      result = sub_22766BF50();
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

uint64_t sub_226EBAB3C(uint64_t a1, uint64_t a2, int a3)
{
  v41 = a3;
  v45 = *MEMORY[0x277D85DE8];
  v5 = sub_227666FF0();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(v7) = *(a1 + 32);
  v9 = v7 & 0x3F;
  v33 = ((1 << v7) + 63) >> 6;
  v10 = 8 * v33;
  v43 = a2;

  if (v9 > 0xD)
  {
    goto LABEL_21;
  }

  while (1)
  {
    v39 = v8;
    v40 = v5;
    v35 = &v32;
    MEMORY[0x28223BE20](v11);
    v34 = &v32 - ((v10 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v34, v10);
    v5 = 0;
    v42 = a1;
    v13 = *(a1 + 56);
    a1 += 56;
    v12 = v13;
    v14 = 1 << *(a1 - 24);
    v15 = -1;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    v16 = v15 & v12;
    v17 = (v14 + 63) >> 6;
    v36 = 0;
    v37 = v6 + 16;
    v38 = (v6 + 8);
    while (v16)
    {
      v18 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_12:
      v21 = v18 | (v5 << 6);
      v22 = *(v42 + 48) + *(v6 + 72) * v21;
      v23 = v6;
      v24 = *(v6 + 16);
      v8 = v39;
      v25 = v40;
      v24(v39, v22, v40);
      v26 = v44;
      v27 = sub_226EB729C(v8, v43, v41 & 1);
      v44 = v26;
      if (v26)
      {
        (*v38)(v8, v25);

        swift_willThrow();

        return v5;
      }

      v10 = v27;
      (*v38)(v8, v25);
      v6 = v23;
      if (v10)
      {
        *&v34[(v21 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v21;
        if (__OFADD__(v36++, 1))
        {
          __break(1u);
LABEL_17:
          v5 = sub_226EBAEF0(v34, v33, v36, v42);

          return v5;
        }
      }
    }

    v19 = v5;
    while (1)
    {
      v5 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v5 >= v17)
      {
        goto LABEL_17;
      }

      v20 = *(a1 + 8 * v5);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_21:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v30 = swift_slowAlloc();
  v31 = v43;

  v5 = sub_2272C5C04(v30, v33, a1, v31, v41 & 1);

  MEMORY[0x22AA9A450](v30, -1, -1);

  return v5;
}

uint64_t sub_226EBAEF0(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = sub_227666FF0();
  v8 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v34 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a3)
  {

    return MEMORY[0x277D84FA0];
  }

  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA5A0, &qword_227678E38);
  result = sub_22766CDE0();
  v10 = result;
  if (a2 < 1)
  {
    v12 = 0;
  }

  else
  {
    v12 = *a1;
  }

  v13 = 0;
  v14 = result + 56;
  v30 = (v8 + 32);
  v31 = v8 + 16;
  v29 = a4;
  while (v12)
  {
    v15 = __clz(__rbit64(v12));
    v32 = (v12 - 1) & v12;
LABEL_16:
    v18 = *(a4 + 48);
    v33 = *(v8 + 72);
    (*(v8 + 16))(v34, v18 + v33 * (v15 | (v13 << 6)), v35);
    sub_226E9CF88(&unk_28139B578, MEMORY[0x277D52AF8], MEMORY[0x277D52B00]);
    result = sub_22766BF50();
    v19 = -1 << *(v10 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v14 + 8 * (v20 >> 6))) == 0)
    {
      v23 = 0;
      v24 = (63 - v19) >> 6;
      while (++v21 != v24 || (v23 & 1) == 0)
      {
        v25 = v21 == v24;
        if (v21 == v24)
        {
          v21 = 0;
        }

        v23 |= v25;
        v26 = *(v14 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v14 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v14 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    result = (*v30)(*(v10 + 48) + v22 * v33, v34, v35);
    ++*(v10 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v29;
    v12 = v32;
    if (!a3)
    {
LABEL_28:

      return v10;
    }
  }

  v16 = v13;
  while (1)
  {
    v13 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v13 >= a2)
    {
      goto LABEL_28;
    }

    v17 = a1[v13];
    ++v16;
    if (v17)
    {
      v15 = __clz(__rbit64(v17));
      v32 = (v17 - 1) & v17;
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

void sub_226EBB224(uint64_t *a1)
{
  v2 = *(sub_227666FF0() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_227117960(v3);
  }

  v4 = v3[2];
  v5[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v5[1] = v4;
  sub_226EBB2CC(v5);
  *a1 = v3;
}

void sub_226EBB2CC(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_22766D130();
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
        sub_227666FF0();
        v6 = sub_22766C380();
        *(v6 + 16) = v5;
      }

      v7 = *(sub_227666FF0() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_2272C5DFC(v8, v9, a1, v4);
      *(v6 + 16) = 0;

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
    sub_226EBB3F8(0, v2, 1, a1);
  }
}

void sub_226EBB3F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = sub_227666FF0();
  MEMORY[0x28223BE20](v8);
  v44 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v48 = &v34 - v11;
  v14.n128_f64[0] = MEMORY[0x28223BE20](v12);
  v47 = &v34 - v15;
  v36 = a2;
  if (a3 != a2)
  {
    v16 = *a4;
    v45 = *(v13 + 16);
    v46 = v13 + 16;
    v17 = *(v13 + 72);
    v18 = (v13 + 8);
    v42 = (v13 + 32);
    v43 = v16;
    v19 = (v16 + v17 * (a3 - 1));
    v41 = -v17;
    v20 = a1 - a3;
    v35 = v17;
    v21 = v16 + v17 * a3;
LABEL_6:
    v39 = v19;
    v40 = a3;
    v37 = v21;
    v38 = v20;
    v23 = v19;
    while (1)
    {
      v24 = v45;
      (v45)(v47, v21, v8, v14);
      v24(v48, v23, v8);
      v25 = sub_227666F70();
      v27 = v26;
      if (v25 == sub_227666F70() && v27 == v28)
      {

        v22 = *v18;
        (*v18)(v48, v8);
        v22(v47, v8);
LABEL_5:
        a3 = v40 + 1;
        v19 = &v39[v35];
        v20 = v38 - 1;
        v21 = v37 + v35;
        if (v40 + 1 == v36)
        {
          return;
        }

        goto LABEL_6;
      }

      v29 = sub_22766D190();

      v30 = *v18;
      (*v18)(v48, v8);
      v30(v47, v8);
      if ((v29 & 1) == 0)
      {
        goto LABEL_5;
      }

      if (!v43)
      {
        break;
      }

      v31 = *v42;
      v32 = v44;
      (*v42)(v44, v21, v8);
      swift_arrayInitWithTakeFrontToBack();
      v31(v23, v32, v8);
      v23 += v41;
      v21 += v41;
      if (__CFADD__(v20++, 1))
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }
}

uint64_t sub_226EBB704()
{
  *(*v1 + 328) = v0;

  if (v0)
  {
    v2 = sub_2272C4E84;
  }

  else
  {

    v2 = sub_226EBB820;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

void sub_226EBB820()
{
  v1 = 0;
  v2 = *(v0 + 296);
  v3 = *(v0 + 248);
  v17 = MEMORY[0x277D84F90];
  v18 = MEMORY[0x277D84F90];
  v4 = *(v3 + 16);
  if (v4)
  {
    while (v1 < *(v3 + 16))
    {
      v9 = *(v0 + 304);
      v10 = *(v0 + 336);
      v11 = sub_227666FF0();
      v12 = *(v11 - 8);
      v13 = *(v12 + 16);
      v14 = v3 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * v1;
      v15 = *(v2 + 48);
      *v9 = v1;
      v13(&v9[v15], v14, v11);
      v16 = 0;
      if (v10 == 1)
      {
        v16 = 20 * v1;
        if ((v1 * 20) >> 64 != (20 * v1) >> 63)
        {
          goto LABEL_16;
        }
      }

      v6 = *(v0 + 304);
      v7 = sub_226EBBA0C(&v9[v15], *(v0 + 336), v16);
      v8 = sub_226EB8288(v6);
      ++v1;
      if (v7)
      {
        MEMORY[0x22AA985C0](v8);
        if (*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_22766C360();
        }

        sub_22766C3A0();
        v17 = v18;
        if (v4 == v1)
        {
          goto LABEL_2;
        }
      }

      else if (v4 == v1)
      {
        goto LABEL_2;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  else
  {
LABEL_2:

    v5 = *(v0 + 8);

    v5(v17);
  }
}

id sub_226EBBA0C(uint64_t a1, char a2, uint64_t a3)
{
  v6 = sub_227666FB0();
  v8 = v7;
  v10 = v9 & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8560, &unk_227671560);
  sub_227663B00();
  sub_226EB2DFC(v6, v8, v10);
  if (v31 == 14)
  {
    return 0;
  }

  result = MEMORY[0x22AA91B00]();
  v14 = 6;
  if (a2)
  {
    v14 = 9;
  }

  v15 = v3[v14];
  v16 = __OFADD__(*v3, v15);
  v17 = *v3 + v15;
  if (v16)
  {
    __break(1u);
    goto LABEL_14;
  }

  v16 = __OFADD__(v17, a3);
  v18 = v17 + a3;
  if (v16)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v19 = result;
  v20 = v13;
  v30 = v18;
  if (a2)
  {
    sub_227669DE0();
    v21 = sub_227669D70();
    v23 = v22;
    v24 = 0xE400000000000000;
    v29 = 1702195828;
  }

  else
  {
    v21 = 0;
    v29 = 0x65736C6166;
    v24 = 0xE500000000000000;
    v23 = 0xE000000000000000;
  }

  v11 = [objc_allocWithZone(MEMORY[0x277CE8D50]) init];
  sub_22766CE20();

  MEMORY[0x22AA98450](v21, v23);
  MEMORY[0x22AA98450](v19, v20);

  v25 = sub_22766BFD0();

  [v11 setUniqueName_];

  [v11 setVersion_];
  [v11 setMinimumEngineVersion_];
  sub_22766CE20();
  MEMORY[0x22AA98450](0xD000000000000017, 0x800000022769CB10);
  v26 = sub_227666F70();
  MEMORY[0x22AA98450](v26);

  MEMORY[0x22AA98450](0xD000000000000038, 0x800000022769CB30);
  MEMORY[0x22AA98450](v21, v23);

  MEMORY[0x22AA98450](0xD000000000000024, 0x800000022769CB70);
  v27 = sub_227666F70();
  MEMORY[0x22AA98450](v27);

  MEMORY[0x22AA98450](0xD00000000000001ELL, 0x800000022769CCE0);
  MEMORY[0x22AA98450](v29, v24);

  v28 = sub_22766BFD0();

  [v11 setPredicate_];

  [v11 setEarnLimit_];
  [v11 setVisibilityPredicate_];
  [v11 setDuplicateRemovalStrategy_];
  result = [v11 setEarnDateStrategy_];
  if ((v30 & 0x8000000000000000) == 0)
  {
    [v11 setDisplayOrder_];
    return v11;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_226EBBDC0()
{
  v1 = *(v0 + 264);
  v2 = v1[14];
  v3 = v1[15];
  __swift_project_boxed_opaque_existential_0(v1 + 11, v2);
  sub_226EB3000(v1, v0 + 16);
  v4 = swift_allocObject();
  *(v0 + 296) = v4;
  v5 = *(v0 + 64);
  v4[3] = *(v0 + 48);
  v4[4] = v5;
  v6 = *(v0 + 128);
  v4[7] = *(v0 + 112);
  v4[8] = v6;
  v7 = *(v0 + 96);
  v4[5] = *(v0 + 80);
  v4[6] = v7;
  v8 = *(v0 + 208);
  v4[12] = *(v0 + 192);
  v4[13] = v8;
  v9 = *(v0 + 176);
  v4[10] = *(v0 + 160);
  v4[11] = v9;
  v4[9] = *(v0 + 144);
  v10 = *(v0 + 32);
  v4[1] = *(v0 + 16);
  v4[2] = v10;
  v14 = (*(v3 + 24) + **(v3 + 24));
  v11 = swift_task_alloc();
  *(v0 + 304) = v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB978, &unk_22767B520);
  *v11 = v0;
  v11[1] = sub_226EBC42C;

  return v14(v0 + 248, sub_226EB854C, v4, v12, v2, v3);
}

uint64_t sub_226EBBF90@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v47 = a3;
  v51 = *MEMORY[0x277D85DE8];
  v6 = sub_227667C20();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_227663FA0();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_0((a2 + 128), *(a2 + 152));
  result = sub_226EAF48C(a1, v13);
  if (!v3)
  {
    v44 = 0;
    v42 = v13;
    v15 = sub_227663EE0();
    v16 = v15;
    v17 = *(v15 + 32);
    v18 = ((1 << v17) + 63) >> 6;
    v43 = a1;
    if ((v17 & 0x3Fu) > 0xD)
    {
      goto LABEL_23;
    }

    while (1)
    {
      v39 = v18;
      v40 = v11;
      v41 = v10;
      v38 = &v38;
      MEMORY[0x28223BE20](v15);
      v45 = &v38 - ((v19 + 15) & 0x3FFFFFFFFFFFFFF0);
      bzero(v45, v19);
      v46 = 0;
      v18 = 0;
      v11 = v16 + 56;
      v20 = 1 << *(v16 + 32);
      v21 = -1;
      if (v20 < 64)
      {
        v21 = ~(-1 << v20);
      }

      v22 = v21 & *(v16 + 56);
      v23 = (v20 + 63) >> 6;
      v49 = v7 + 16;
      v50 = v16;
      v48 = v7 + 8;
      while (v22)
      {
        v24 = __clz(__rbit64(v22));
        v22 &= v22 - 1;
LABEL_13:
        v10 = v24 | (v18 << 6);
        (*(v7 + 16))(v9, *(v50 + 48) + *(v7 + 72) * v10, v6);
        v16 = sub_227667C00();
        (*(v7 + 8))(v9, v6);
        if (v16)
        {
          *&v45[(v10 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v10;
          if (__OFADD__(v46++, 1))
          {
            __break(1u);
LABEL_17:
            v28 = sub_226EB10D0(v45, v39, v46, v50);
            v11 = v40;
            v10 = v41;
            goto LABEL_18;
          }
        }
      }

      v25 = v18;
      while (1)
      {
        v18 = v25 + 1;
        if (__OFADD__(v25, 1))
        {
          break;
        }

        if (v18 >= v23)
        {
          goto LABEL_17;
        }

        v26 = *(v11 + 8 * v18);
        ++v25;
        if (v26)
        {
          v24 = __clz(__rbit64(v26));
          v22 = (v26 - 1) & v26;
          goto LABEL_13;
        }
      }

      __break(1u);
LABEL_23:

      if (!swift_stdlib_isStackAllocationSafe())
      {
        break;
      }
    }

    v34 = swift_slowAlloc();
    v35 = v44;
    v36 = sub_2272C5D44(v34, v18, v16, sub_2272C5274, 0);
    v44 = v35;
    if (v35)
    {

      result = MEMORY[0x22AA9A450](v34, -1, -1);
      __break(1u);
    }

    else
    {
      v37 = v36;

      MEMORY[0x22AA9A450](v34, -1, -1);
      v28 = v37;
LABEL_18:
      v29 = v44;
      v30 = sub_226EB13F8(v28);

      v31 = sub_226EB16F8(v43);
      v32 = v42;
      if (v29)
      {
        (*(v11 + 8))(v42, v10);
      }

      else
      {
        v33 = sub_226EC696C(v31, v30);

        result = (*(v11 + 8))(v32, v10);
        *v47 = v33;
      }
    }
  }

  return result;
}

uint64_t sub_226EBC42C()
{
  *(*v1 + 312) = v0;

  if (v0)
  {
    v2 = sub_2272C52A4;
  }

  else
  {

    v2 = sub_226EBC548;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_226EBC548()
{
  v1 = v0[33];
  v2 = v0[31];
  v3 = swift_task_alloc();
  *(v3 + 16) = v1;
  v4 = sub_226EBC60C(sub_226EC78E8, v3, v2);

  v5 = v0[1];

  return v5(v4);
}

uint64_t sub_226EBC60C(void (*a1)(uint64_t *__return_ptr, char *), uint64_t a2, uint64_t a3)
{
  v18 = a1;
  v19 = a2;
  v21 = sub_227666FF0();
  v5 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v7 = v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17[0] = MEMORY[0x277D84F90];
  v24 = MEMORY[0x277D84F90];
  v8 = 1 << *(a3 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(a3 + 56);
  v11 = (v8 + 63) >> 6;
  v17[1] = v5 + 16;
  v20 = (v5 + 8);
  v22 = a3;

  v13 = 0;
  while (v10)
  {
    v14 = v21;
LABEL_11:
    (*(v5 + 16))(v7, *(v22 + 48) + *(v5 + 72) * (__clz(__rbit64(v10)) | (v13 << 6)), v14);
    v18(&v23, v7);
    if (v3)
    {
      (*v20)(v7, v14);
      v16 = v17[0];

      return v16;
    }

    v10 &= v10 - 1;
    result = (*v20)(v7, v14);
    if (v23)
    {
      MEMORY[0x22AA985C0](result);
      if (*((v24 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v24 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v17[0] = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_22766C360();
      }

      result = sub_22766C3A0();
      v17[0] = v24;
    }
  }

  v14 = v21;
  while (1)
  {
    v15 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v15 >= v11)
    {

      return v17[0];
    }

    v10 = *(a3 + 56 + 8 * v15);
    ++v13;
    if (v10)
    {
      v13 = v15;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_226EBC888(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BC990, &qword_227670A30);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_226EBC8F0()
{
  v1 = v0 + 328;
  v2 = *(v0 + 329);
  v3 = *(v0 + 248);
  *(v0 + 328) = 12;
  if (v2 == 1)
  {
    v4 = *(v0 + 272);
    *(v0 + 264) = 1;
    v5 = swift_task_alloc();
    *(v5 + 16) = v1;
    *(v5 + 24) = v0 + 264;
    *(v5 + 32) = v4;
    *(v5 + 40) = 1;
    v6 = sub_226EB89A4(v3, sub_226EB90D0, v5);
  }

  else
  {
    v7 = *(v0 + 272);
    v8 = swift_task_alloc();
    *(v8 + 16) = v3;
    *(v8 + 24) = v7;
    *(v8 + 32) = 0;
    *(v8 + 40) = v1;
    v6 = sub_226EBCAA0(byte_283A92410, sub_226EBCA30);
  }

  v9 = v6;

  v10 = *(v0 + 8);

  return v10(v9);
}

void *sub_226EBCA30(uint64_t a1, char a2)
{
  v4 = *(v2 + 16);
  v5 = *(v2 + 24);
  v6 = *(v2 + 32);
  v7 = *(v2 + 40);
  v9[2] = v5;
  v10 = a2;
  v11 = v6;
  v12 = a1;
  v13 = v7;
  result = sub_226EBCD6C(sub_226EB8568, v9, v4);
  *v7 = a2;
  return result;
}

uint64_t sub_226EBCAA0(uint64_t a1, uint64_t (*a2)(uint64_t, void))
{
  v30 = *(a1 + 16);
  if (!v30)
  {
    return MEMORY[0x277D84F90];
  }

  v2 = 0;
  v3 = MEMORY[0x277D84F90];
  v29 = a1 + 32;
  v4 = &qword_27D7BC7D0;
  while (1)
  {
    v6 = a2(v2, *(v29 + v2));
    v7 = v6;
    v8 = v6 >> 62;
    if (v6 >> 62)
    {
      v9 = sub_22766CD20();
    }

    else
    {
      v9 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v10 = v3 >> 62;
    if (v3 >> 62)
    {
      v27 = sub_22766CD20();
      v12 = v27 + v9;
      if (__OFADD__(v27, v9))
      {
LABEL_32:
        __break(1u);
        return MEMORY[0x277D84F90];
      }
    }

    else
    {
      v11 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v12 = v11 + v9;
      if (__OFADD__(v11, v9))
      {
        goto LABEL_32;
      }
    }

    result = swift_isUniquelyReferenced_nonNull_bridgeObject();
    v35 = v9;
    if (result)
    {
      if (!v10)
      {
        v13 = v3 & 0xFFFFFFFFFFFFFF8;
        if (v12 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          goto LABEL_16;
        }

        goto LABEL_15;
      }

LABEL_14:
      sub_22766CD20();
      goto LABEL_15;
    }

    if (v10)
    {
      goto LABEL_14;
    }

LABEL_15:
    result = sub_22766CE90();
    v3 = result;
    v13 = result & 0xFFFFFFFFFFFFFF8;
LABEL_16:
    v14 = *(v13 + 16);
    v15 = *(v13 + 24);
    if (v8)
    {
      break;
    }

    v16 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v16)
    {
      goto LABEL_3;
    }

LABEL_20:
    if (((v15 >> 1) - v14) < v35)
    {
      goto LABEL_36;
    }

    v32 = v2;
    v33 = v3;
    v18 = v13 + 8 * v14 + 32;
    v28 = v13;
    if (v8)
    {
      if (v16 < 1)
      {
        goto LABEL_38;
      }

      sub_2272C7054();
      for (i = 0; i != v16; ++i)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(v4, &qword_22767EF68);
        v20 = v4;
        v21 = sub_2275F0174(v34, i, v7);
        v23 = *v22;
        (v21)(v34, 0);
        v4 = v20;
        *(v18 + 8 * i) = v23;
      }
    }

    else
    {
      sub_226EBD6C8();
      swift_arrayInitWithCopy();
    }

    v2 = v32;
    v3 = v33;
    if (v35 >= 1)
    {
      v24 = *(v28 + 16);
      v25 = __OFADD__(v24, v35);
      v26 = v24 + v35;
      if (v25)
      {
        goto LABEL_37;
      }

      *(v28 + 16) = v26;
    }

LABEL_4:
    if (++v2 == v30)
    {
      return v3;
    }
  }

  v17 = v13;
  result = sub_22766CD20();
  v13 = v17;
  v16 = result;
  if (result)
  {
    goto LABEL_20;
  }

LABEL_3:

  if (v35 <= 0)
  {
    goto LABEL_4;
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

void *sub_226EBCD6C(void *(*a1)(uint64_t *__return_ptr, unint64_t), uint64_t a2, uint64_t a3)
{
  result = MEMORY[0x277D84F90];
  v15 = MEMORY[0x277D84F90];
  v6 = *(a3 + 16);
  if (v6)
  {
    v8 = 0;
    do
    {
      v13 = result;
      for (i = v8; ; ++i)
      {
        if (i >= v6)
        {
          __break(1u);
LABEL_17:
          __break(1u);
          return result;
        }

        v10 = sub_227666FF0();
        v12 = *(v10 - 8);
        result = (v10 - 8);
        v11 = v12;
        v8 = i + 1;
        if (__OFADD__(i, 1))
        {
          goto LABEL_17;
        }

        result = a1(&v14, a3 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * i);
        if (v3)
        {

          return v13;
        }

        if (v14)
        {
          break;
        }

        if (v8 == v6)
        {
          return v13;
        }
      }

      MEMORY[0x22AA985C0](result);
      if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_22766C360();
      }

      sub_22766C3A0();
      result = v15;
    }

    while (v8 != v6);
  }

  return result;
}

id sub_226EBCEEC@<X0>(uint64_t a1@<X0>, char a2@<W2>, char a3@<W3>, uint64_t a4@<X4>, unsigned __int8 *a5@<X5>, uint64_t *a6@<X8>)
{
  v7 = *a5;
  v8 = 1;
  v9 = 10;
  v11 = 0;
  switch(v7)
  {
    case 1:
      v9 = 25;
      goto LABEL_13;
    case 2:
      v9 = 50;
      goto LABEL_13;
    case 3:
      v9 = 100;
      goto LABEL_13;
    case 4:
      v9 = 250;
      goto LABEL_13;
    case 5:
      v9 = 500;
      goto LABEL_13;
    case 6:
      v9 = 750;
      goto LABEL_13;
    case 7:
      v9 = 1000;
      goto LABEL_13;
    case 8:
      v9 = 1250;
      goto LABEL_13;
    case 9:
      v9 = 1500;
      goto LABEL_13;
    case 10:
      v9 = 1750;
      goto LABEL_13;
    case 11:
      v9 = 2000;
      goto LABEL_13;
    case 12:
      goto LABEL_14;
    default:
LABEL_13:
      v8 = 0;
      v11 = v9;
LABEL_14:
      result = sub_226EBD004(a1, qword_22767EF88[a2], a3 & 1, a4, v11, v8);
      *a6 = result;
      return result;
  }
}

id sub_226EBD004(uint64_t a1, unint64_t a2, char a3, uint64_t a4, unint64_t a5, char a6)
{
  v9 = sub_227666FB0();
  v11 = v10;
  v13 = v12 & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8560, &unk_227671560);
  sub_227663B00();
  sub_226EB2DFC(v9, v11, v13);
  if (v44 == 14)
  {
    return 0;
  }

  result = MEMORY[0x22AA91B00]();
  v42 = result;
  v17 = 8;
  if (a3)
  {
    v17 = 10;
  }

  v18 = v6[v17];
  v19 = __OFADD__(*v6, v18);
  v20 = *v6 + v18;
  if (v19)
  {
    __break(1u);
    goto LABEL_17;
  }

  v19 = __OFADD__(v20, a4);
  v21 = v20 + a4;
  if (v19)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v22 = v16;
  v41 = v21;
  if (a3)
  {
    sub_227669DE0();
    v23 = sub_227669D70();
    v25 = v24;
    v26 = 0xE400000000000000;
    v40 = 1702195828;
  }

  else
  {
    v23 = 0;
    v40 = 0x65736C6166;
    v26 = 0xE500000000000000;
    v25 = 0xE000000000000000;
  }

  v14 = [objc_allocWithZone(MEMORY[0x277CE8D50]) init];
  sub_22766CE20();

  MEMORY[0x22AA98450](v23, v25);
  MEMORY[0x22AA98450](v42, v22);
  MEMORY[0x22AA98450](45, 0xE100000000000000);
  v27 = sub_22766D140();
  MEMORY[0x22AA98450](v27);

  v28 = sub_22766BFD0();

  [v14 setUniqueName_];

  [v14 setVersion_];
  [v14 setMinimumEngineVersion_];
  sub_22766CE20();
  MEMORY[0x22AA98450](0xD000000000000017, 0x800000022769CB10);
  v29 = sub_227666F70();
  MEMORY[0x22AA98450](v29);

  MEMORY[0x22AA98450](0xD000000000000038, 0x800000022769CB30);
  MEMORY[0x22AA98450](v23, v25);
  MEMORY[0x22AA98450](0xD000000000000024, 0x800000022769CB70);
  v30 = sub_227666F70();
  MEMORY[0x22AA98450](v30);

  MEMORY[0x22AA98450](0x203D3D202927, 0xE600000000000000);
  v31 = sub_22766D140();
  MEMORY[0x22AA98450](v31);

  MEMORY[0x22AA98450](0xD000000000000017, 0x800000022769CBA0);
  MEMORY[0x22AA98450](v40, v26);

  v32 = sub_22766BFD0();

  [v14 setPredicate_];

  [v14 setEarnLimit_];
  sub_22766CE20();
  MEMORY[0x22AA98450](0xD000000000000018, 0x800000022769CBC0);
  MEMORY[0x22AA98450](v23, v25);
  MEMORY[0x22AA98450](0xD000000000000024, 0x800000022769CB70);
  v33 = sub_227666F70();
  MEMORY[0x22AA98450](v33);

  MEMORY[0x22AA98450](10535, 0xE200000000000000);
  v34 = sub_22766BFD0();

  [v14 setProgressExpression_];

  sub_22766D140();
  v35 = sub_22766BFD0();

  [v14 setGoalExpression_];

  v36 = [objc_opt_self() countUnit];
  [v14 setCanonicalUnit_];

  [v14 setVisibilityPredicate_];
  [v14 setDuplicateRemovalStrategy_];
  result = [v14 setEarnDateStrategy_];
  if ((v41 & 0x8000000000000000) == 0)
  {
    [v14 setDisplayOrder_];
    sub_22766CE20();

    MEMORY[0x22AA98450](v23, v25);

    if (a6)
    {
      v37 = v42;
      v38 = v22;
    }

    else
    {
      MEMORY[0x22AA98450](v42, v22);

      MEMORY[0x22AA98450](45, 0xE100000000000000);
      v37 = sub_22766D140();
    }

    MEMORY[0x22AA98450](v37, v38);

    v39 = sub_22766BFD0();

    [v14 setPrerequisiteTemplateName_];

    return v14;
  }

LABEL_18:
  __break(1u);
  return result;
}

unint64_t sub_226EBD6C8()
{
  result = qword_281398B88;
  if (!qword_281398B88)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_281398B88);
  }

  return result;
}

uint64_t sub_226EBD714(uint64_t a1)
{
  *(*v1 + 224) = a1;

  return MEMORY[0x2822009F8](sub_226EBD814, 0, 0);
}

uint64_t sub_226EBD814()
{
  *(v0[17] + 80) = v0[28];
  v1 = swift_task_alloc();
  v0[29] = v1;
  *v1 = v0;
  v1[1] = sub_226EC1D18;

  return sub_226EBD8B4(1);
}

uint64_t sub_226EBD8B4(char a1)
{
  *(v2 + 272) = v1;
  *(v2 + 329) = a1;
  v3 = sub_22766B390();
  *(v2 + 280) = v3;
  *(v2 + 288) = *(v3 - 8);
  *(v2 + 296) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226EB8730, 0, 0);
}

uint64_t sub_226EBD9F4(void *a1, unint64_t a2, uint64_t a3)
{
  v89 = a3;
  v5 = sub_22766BE10();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v84 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v84 - v10;
  v12 = sub_22766B390();
  MEMORY[0x28223BE20](v12);
  v88 = &v84 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v84 - v15;
  v18 = MEMORY[0x28223BE20](v17);
  v20 = &v84 - v19;
  v95 = v21;
  v86 = v6;
  v87 = v5;
  v85 = v11;
  v91 = v22;
  if ((a2 & 0xC000000000000001) != 0)
  {
    v23 = MEMORY[0x22AA991A0](0, a2, v18);
  }

  else
  {
    if (!*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_28;
    }

    v23 = *(a2 + 32);
  }

  v24 = v23;
  v25 = sub_22766CAA0();
  v27 = v26;

  if (!v27 || (v28 = sub_226EA68D8(v25, v27), v28 == 52))
  {
    sub_226F6649C();
    swift_allocError();
    v30 = 2;
LABEL_7:
    *v29 = v30;
    swift_willThrow();
    return v24;
  }

  LOBYTE(v6) = v28;
  sub_22766B9F0();
  v84 = MEMORY[0x22AA97CF0]();
  if (!v84)
  {
    sub_22766A730();
    v33 = sub_22766B380();
    v34 = sub_22766C8B0();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v93 = v36;
      *v35 = 136315138;
      v37 = sub_226EA8DA8(v6);
      v39 = sub_226E97AE8(v37, v38, &v93);

      *(v35 + 4) = v39;
      _os_log_impl(&dword_226E8E000, v33, v34, "Invalid worker thread for request: %s", v35, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v36);
      MEMORY[0x22AA9A450](v36, -1, -1);
      MEMORY[0x22AA9A450](v35, -1, -1);
    }

    v40 = *(v91 + 8);
    v41 = v95;
    v40(v20, v95);
    sub_22766A730();
    v42 = sub_22766B380();
    v43 = sub_22766C8B0();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v93 = v45;
      *v44 = 136315138;
      v46 = [objc_opt_self() currentThread];
      v47 = v40;
      v48 = [v46 description];

      v49 = sub_22766C000();
      v51 = v50;

      v40 = v47;
      v52 = sub_226E97AE8(v49, v51, &v93);

      *(v44 + 4) = v52;
      _os_log_impl(&dword_226E8E000, v42, v43, "Current Thread: %s", v44, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v45);
      v53 = v45;
      v41 = v95;
      MEMORY[0x22AA9A450](v53, -1, -1);
      MEMORY[0x22AA9A450](v44, -1, -1);

      v47(v16, v41);
    }

    else
    {

      v40(v16, v41);
    }

    v54 = v88;
    sub_22766A730();
    v24 = v54;
    v55 = sub_22766B380();
    v56 = sub_22766C8B0();
    if (os_log_type_enabled(v55, v56))
    {
      v24 = swift_slowAlloc();
      v57 = swift_slowAlloc();
      v93 = v57;
      *v24 = 136315138;
      v58 = [objc_opt_self() currentThread];
      v59 = v40;
      v60 = [v58 threadDictionary];

      v61 = [v60 description];
      v62 = sub_22766C000();
      v64 = v63;

      v65 = sub_226E97AE8(v62, v64, &v93);

      *(v24 + 1) = v65;
      _os_log_impl(&dword_226E8E000, v55, v56, "Thread Dictionary: %s", v24, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v57);
      MEMORY[0x22AA9A450](v57, -1, -1);
      MEMORY[0x22AA9A450](v24, -1, -1);

      v59(v54, v95);
    }

    else
    {

      v40(v54, v41);
    }

    sub_226F6649C();
    swift_allocError();
    v30 = 8;
    goto LABEL_7;
  }

  if (!(a2 >> 62))
  {
    result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result > 1)
    {
      goto LABEL_12;
    }

LABEL_29:
    v68 = 0;
    v70 = 0;
    v67 = v89;
    goto LABEL_30;
  }

LABEL_28:
  result = sub_22766CD20();
  if (result <= 1)
  {
    goto LABEL_29;
  }

LABEL_12:
  if ((a2 & 0xC000000000000001) != 0)
  {
    v32 = MEMORY[0x22AA991A0](1, a2);
LABEL_25:
    v66 = v32;
    v67 = v89;
    v68 = sub_22766CAA0();
    v70 = v69;

LABEL_30:
    v71 = __swift_project_boxed_opaque_existential_0((v67 + OBJC_IVAR____TtC15SeymourServices17NetworkScriptLink_dispatchService), *(v67 + OBJC_IVAR____TtC15SeymourServices17NetworkScriptLink_dispatchService + 24));
    MEMORY[0x28223BE20](v71);
    *(&v84 - 2) = v72;
    *(&v84 - 8) = v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC748, &qword_22767E990);
    v73 = v90;
    sub_2276696A0();
    v74 = v93;
    if (v93)
    {
      v75 = v94;
      v93 = v68;
      v94 = v70;
      v74(&v92, &v93);
      sub_226EA9E3C(v74, v75);
      v24 = swift_allocObject();
      *(v24 + 1) = v92;

      v76 = sub_226EA9E88;
    }

    else
    {

      v24 = 0;
      v76 = sub_2274E9878;
    }

    v77 = v76;
    v78 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v79 = swift_allocObject();
    v79[2] = v77;
    v79[3] = v24;
    v79[4] = v84;
    v79[5] = v78;

    v80 = a1;
    sub_22766BDF0();

    if (v73)
    {
    }

    else
    {
      v82 = v85;
      v81 = v86;
      v83 = v87;
      (*(v86 + 32))(v85, v8, v87);
      v24 = sub_22766BE00();

      (*(v81 + 8))(v82, v83);
    }

    return v24;
  }

  if (*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 2uLL)
  {
    v32 = *(a2 + 40);
    goto LABEL_25;
  }

  __break(1u);
  return result;
}

void sub_226EBE30C(uint64_t *a1, uint64_t a2, void (*a3)(void *, void))
{
  sub_22766BDB0();
  sub_22766B820();
  sub_22766BCC0();
  sub_226EBE3DC(v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA3C0, &qword_2276709C0);
  sub_22766D430();
  a3(v4, v5);

  sub_226EB4548(v4, v5);
}

uint64_t sub_226EBE3DC(uint64_t a1)
{
  v2 = v1;
  v4 = sub_22766B390();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A730();
  v8 = sub_22766B380();
  v9 = sub_22766C8B0();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v14[0] = v11;
    *v10 = 136446210;
    *(v10 + 4) = sub_226E97AE8(0xD000000000000011, 0x800000022767E8F0, v14);
    _os_log_impl(&dword_226E8E000, v8, v9, "[%{public}s] Successfully created JSStack", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v11);
    MEMORY[0x22AA9A450](v11, -1, -1);
    MEMORY[0x22AA9A450](v10, -1, -1);
  }

  v12 = (*(v5 + 8))(v7, v4);
  MEMORY[0x28223BE20](v12);
  v14[-2] = v2;
  v14[-1] = a1;
  sub_2276696A0();
  return sub_226EBE924();
}

void sub_226EBE608(char *a1, uint64_t a2)
{
  v5 = sub_22766B390();
  v28 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ScriptLinkState(0);
  MEMORY[0x28223BE20](v8);
  v10 = (&v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v11);
  v13 = (&v25 - v12);
  v14 = OBJC_IVAR____TtC15SeymourServices17NetworkScriptLink_state;
  swift_beginAccess();
  sub_226EA81F8(&a1[v14], v13);
  if (swift_getEnumCaseMultiPayload())
  {
    v26 = v5;
    sub_226EA4FC0(v13);
    sub_22766A730();
    v15 = a1;
    v16 = sub_22766B380();
    v17 = sub_22766C8A0();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v25 = v2;
      v19 = v18;
      v20 = swift_slowAlloc();
      v27[0] = v20;
      *v19 = 136446466;
      *(v19 + 4) = sub_226E97AE8(0xD000000000000011, 0x800000022767E8F0, v27);
      *(v19 + 12) = 2082;
      sub_226EA81F8(&a1[v14], v10);
      v21 = sub_22766C060();
      v23 = sub_226E97AE8(v21, v22, v27);

      *(v19 + 14) = v23;
      _os_log_impl(&dword_226E8E000, v16, v17, "[%{public}s] JSStack stack created in unexpected state %{public}s", v19, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AA9A450](v20, -1, -1);
      MEMORY[0x22AA9A450](v19, -1, -1);
    }

    (*(v28 + 8))(v7, v26);
  }

  else
  {
    v24 = *v13;
    *v10 = a2;
    swift_storeEnumTagMultiPayload();
    swift_beginAccess();

    sub_226EA4F5C(v10, &a1[v14]);
    swift_endAccess();
    dispatch_group_leave(v24);
  }
}

uint64_t sub_226EBE924()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD3B0, &unk_227684AF0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v27 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  v28 = *(v9 - 8);
  v29 = v9;
  MEMORY[0x28223BE20](v9);
  v11 = &v27 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BC880, &unk_227671C60);
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v27 - v15;
  (*(v13 + 16))(&v27 - v15, v1 + OBJC_IVAR____TtC15SeymourServices17NetworkScriptLink__shrinkJsFootprintEnabled, v12, v14);
  sub_227669730();
  result = (*(v13 + 8))(v16, v12);
  if (v30 == 1)
  {
    *(swift_allocObject() + 16) = v1;
    sub_22766BDB0();
    v18 = v1;
    sub_227669270();
    v19 = swift_allocObject();
    *(v19 + 16) = sub_226EB4500;
    *(v19 + 24) = 0;
    (*(v3 + 16))(v5, v8, v2);
    v20 = (*(v3 + 80) + 16) & ~*(v3 + 80);
    v21 = (v4 + v20 + 7) & 0xFFFFFFFFFFFFFFF8;
    v22 = swift_allocObject();
    (*(v3 + 32))(v22 + v20, v5, v2);
    v23 = (v22 + v21);
    *v23 = sub_2272B81D0;
    v23[1] = v19;
    sub_227669270();
    (*(v3 + 8))(v8, v2);
    v24 = v29;
    v25 = sub_227669290();
    v26 = swift_allocObject();
    *(v26 + 16) = 0;
    *(v26 + 24) = 0;
    v25(sub_226EB4544, v26);

    return (*(v28 + 8))(v11, v24);
  }

  return result;
}

uint64_t sub_226EBED30()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_226EBED80(uint64_t a1, uint64_t a2, char *a3)
{
  v84 = sub_22766B3B0();
  v83 = *(v84 - 8);
  MEMORY[0x28223BE20](v84);
  v81 = &v72 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = sub_22766B3F0();
  v80 = *(v82 - 8);
  MEMORY[0x28223BE20](v82);
  v79 = &v72 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  v75 = *(v77 - 8);
  v8 = *(v75 + 64);
  MEMORY[0x28223BE20](v77);
  v73 = &v72 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v74 = &v72 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD3B0, &unk_227684AF0);
  v89 = *(v11 - 8);
  v90 = v11;
  MEMORY[0x28223BE20](v11);
  v13 = &v72 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v78 = &v72 - v15;
  v88 = sub_22766B5F0();
  v76 = *(v88 - 8);
  MEMORY[0x28223BE20](v88);
  v87 = &v72 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_22766B390();
  v85 = *(v17 - 8);
  v86 = v17;
  MEMORY[0x28223BE20](v17);
  v19 = &v72 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v22 = &v72 - v21;
  v23 = type metadata accessor for ScriptLinkState(0);
  MEMORY[0x28223BE20](v23);
  v25 = (&v72 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v26);
  v28 = &v72 - v27;
  v29 = swift_allocObject();
  *(v29 + 16) = a1;
  *(v29 + 24) = a2;
  v91 = v29;
  v92 = a3;
  v94 = a3;

  sub_2276696A0();
  v93 = v28;
  sub_226EA81F8(v28, v25);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      sub_226EA4FC0(v25);
    }

    sub_226EB46D8();
    v45 = swift_allocObject();
    v47 = v90;
    v46 = v91;
    *(v45 + 16) = sub_226EBF9F4;
    *(v45 + 24) = v46;
    v48 = sub_227669290();
    v49 = swift_allocObject();
    *(v49 + 16) = sub_226EB4390;
    *(v49 + 24) = v45;

    v48(sub_226E9F880, v49);

    (*(v89 + 8))(v13, v47);
    return sub_226EA4FC0(v93);
  }

  if (EnumCaseMultiPayload)
  {
    v50 = v76;
    v51 = v87;
    (*(v76 + 32))(v87, v25, v88);
    sub_22766A730();
    sub_22766B370();
    (*(v85 + 8))(v19, v86);
    v52 = v92;
    if ([*&v92[OBJC_IVAR____TtC15SeymourServices17NetworkScriptLink_scriptConfiguration] useSimulatorBag])
    {
      v53 = v74;
      sub_2272BA6C8(v51, v74);
    }

    else
    {
      v53 = v74;
      sub_226EAB110(v51, v74);
    }

    v54 = swift_allocObject();
    *(v54 + 16) = v52;
    v55 = swift_allocObject();
    *(v55 + 16) = sub_2272B4674;
    *(v55 + 24) = v54;
    v56 = v75;
    v57 = v73;
    v58 = v77;
    (*(v75 + 16))(v73, v53, v77);
    v59 = (*(v56 + 80) + 16) & ~*(v56 + 80);
    v60 = v8 + v59 + 7;
    v61 = v53;
    v62 = v60 & 0xFFFFFFFFFFFFFFF8;
    v63 = swift_allocObject();
    (*(v56 + 32))(v63 + v59, v57, v58);
    v64 = (v63 + v62);
    *v64 = sub_2272B81D4;
    v64[1] = v55;
    sub_22766BDB0();
    v65 = v52;
    v66 = v78;
    sub_227669270();
    (*(v56 + 8))(v61, v58);
    v67 = swift_allocObject();
    v69 = v90;
    v68 = v91;
    *(v67 + 16) = sub_226EBF9F4;
    *(v67 + 24) = v68;
    v70 = sub_227669290();
    v71 = swift_allocObject();
    *(v71 + 16) = sub_226EB4390;
    *(v71 + 24) = v67;

    v70(sub_226E9F880, v71);

    (*(v89 + 8))(v66, v69);
    (*(v50 + 8))(v87, v88);
    return sub_226EA4FC0(v93);
  }

  v31 = *v25;
  sub_22766A730();
  v32 = sub_22766B380();
  v33 = sub_22766C8B0();
  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    aBlock[0] = v35;
    *v34 = 136446210;
    *(v34 + 4) = sub_226E97AE8(0xD000000000000011, 0x800000022769C290, aBlock);
    _os_log_impl(&dword_226E8E000, v32, v33, "[%{public}s] Stack requested before JS load -- waiting", v34, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v35);
    MEMORY[0x22AA9A450](v35, -1, -1);
    MEMORY[0x22AA9A450](v34, -1, -1);
  }

  (*(v85 + 8))(v22, v86);
  v36 = v92;
  sub_226EA1CF4();
  v37 = sub_22766C950();
  v38 = swift_allocObject();
  v38[2] = v36;
  v38[3] = sub_226EBF9F4;
  v38[4] = v91;
  aBlock[4] = sub_2272B4698;
  aBlock[5] = v38;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_226E9D72C;
  aBlock[3] = &block_descriptor_353;
  v39 = _Block_copy(aBlock);
  v40 = v36;
  v41 = v79;
  sub_22766B3D0();
  v95 = MEMORY[0x277D84F90];
  sub_226E9ECD0(&qword_2813A5870, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BA240, &unk_227674420);
  sub_226E9D394();
  v42 = v81;
  v43 = v84;
  sub_22766CC80();
  sub_22766C910();
  _Block_release(v39);

  (*(v83 + 8))(v42, v43);
  (*(v80 + 8))(v41, v82);
  sub_226EA4FC0(v93);
}

uint64_t sub_226EBF8E8()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_226EBF98C@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = OBJC_IVAR____TtC15SeymourServices17NetworkScriptLink_state;
  swift_beginAccess();
  return sub_226EA81F8(v3 + v4, a1);
}

void sub_226EBF9F8(void *a1, char a2, void (*a3)(double), uint64_t a4, void (*a5)(void **), uint64_t a6)
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v19 - v14;
  if (a2)
  {
    v19 = a1;
    v20 = 1;
    v16 = a1;
    a5(&v19);
    sub_226EB4548(a1, 1);
  }

  else
  {
    a3(v13);
    v17 = sub_227669290();
    v18 = swift_allocObject();
    *(v18 + 16) = a5;
    *(v18 + 24) = a6;

    v17(sub_226E9F7B0, v18);

    (*(v12 + 8))(v15, v11);
  }
}

uint64_t sub_226EBFBA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = swift_allocObject();
  *(v5 + 16) = a2;
  *(v5 + 24) = a3;

  return sub_227669270();
}

uint64_t sub_226EBFCC0@<X0>(uint64_t *a1@<X1>, uint64_t *a2@<X2>, uint64_t a3@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v6 = *(v5 - 8);
  v7 = *(v6 + 16);
  v8 = v3 + ((*(v6 + 80) + 16) & ~*(v6 + 80));

  return v7(a3, v8, v5);
}

void sub_226EBFD38(void *a1, char a2, void (*a3)(void *), uint64_t a4, void (*a5)(void *), uint64_t a6)
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9500, &unk_227671CA0);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v22[-1] - v13;
  if (a2)
  {
    v22[0] = a1;
    v22[1] = 0;
    v23 = 1;
    v15 = a1;
    a5(v22);
    v16 = MEMORY[0x277D85008];
    v17 = a1;
    v18 = 1;
  }

  else
  {
    v22[0] = a1;

    a3(v22);
    v19 = sub_227669290();
    v20 = swift_allocObject();
    *(v20 + 16) = a5;
    *(v20 + 24) = a6;

    v19(sub_226EC29B8, v20);

    (*(v12 + 8))(v14, v11);
    v16 = MEMORY[0x277D85008];
    v17 = a1;
    v18 = 0;
  }

  sub_226EB4668(v17, v18, v16);
}

uint64_t sub_226EBFF7C(uint64_t *a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = *a1;
  v9 = *a2;
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = a3;
  *(v10 + 32) = a4;
  *(v10 + 40) = v8;

  return sub_227669270();
}

uint64_t sub_226EC004C(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(char *, uint64_t), uint64_t a5, uint64_t a6)
{
  v74 = a6;
  v69 = a4;
  v7 = a3;
  v10 = sub_22766B390();
  v71 = *(v10 - 8);
  v72 = v10;
  MEMORY[0x28223BE20](v10);
  v79 = v68 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_22766BE40();
  v81 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v80 = v68 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v70 = v68 - v15;
  MEMORY[0x28223BE20](v16);
  v18 = v68 - v17;
  v75 = v19;
  MEMORY[0x28223BE20](v20);
  v82 = v68 - v21;
  v22 = sub_22766BD20();
  v23 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v25 = v68 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v28 = v68 - v27;
  v29 = swift_allocObject();
  *(v29 + 16) = a1;
  *(v29 + 24) = a2;
  v73 = v29;
  sub_226EC0768(v7);

  sub_22766BD10();
  v76 = v28;
  v77 = v23;
  v30 = *(v23 + 16);
  v78 = v22;
  v30(v25, v28, v22);
  sub_22766BE30();
  if (a5)
  {
    v31 = MEMORY[0x277D837D0];
    v32 = a5;
    v33 = v69;
  }

  else
  {
    v33 = 0;
    v32 = 0;
    v31 = 0;
    v83[2] = 0;
  }

  v83[0] = v33;
  v83[1] = v32;
  v84 = v31;

  v34 = v82;
  sub_22766BE20();
  v35 = v81;
  v36 = v81 + 8;
  v69 = *(v81 + 8);
  v69(v18, v12);
  sub_226E97D1C(v83, &unk_27D7BC990, &qword_227670A30);
  v37 = v79;
  sub_22766A730();
  v38 = v70;
  v39 = v34;
  v40 = *(v35 + 16);
  v40(v70, v39, v12);
  v41 = sub_22766B380();
  v42 = sub_22766C8B0();
  v43 = os_log_type_enabled(v41, v42);
  v44 = v80;
  if (v43)
  {
    v45 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    v68[1] = v36;
    v47 = v40;
    v48 = v46;
    v83[0] = v46;
    *v45 = 136315138;
    v47(v44, v38, v12);
    v49 = sub_22766C060();
    v50 = v38;
    v51 = v49;
    v53 = v52;
    v54 = v69;
    v69(v50, v12);
    v55 = sub_226E97AE8(v51, v53, v83);
    v44 = v80;

    *(v45 + 4) = v55;
    _os_log_impl(&dword_226E8E000, v41, v42, "ScriptConnection invoking %s", v45, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v48);
    v56 = v48;
    v40 = v47;
    MEMORY[0x22AA9A450](v56, -1, -1);
    MEMORY[0x22AA9A450](v45, -1, -1);

    (*(v71 + 8))(v79, v72);
  }

  else
  {

    v54 = v69;
    v69(v38, v12);
    (*(v71 + 8))(v37, v72);
  }

  v57 = v82;
  sub_22766BD50();
  v84 = sub_22766B9C0();
  v85 = MEMORY[0x277D21FB0];
  __swift_allocate_boxed_opaque_existential_0(v83);
  sub_22766B9B0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBC30, &unk_2276720D0);
  sub_22766BDC0();

  __swift_destroy_boxed_opaque_existential_0(v83);
  v40(v44, v57, v12);
  v58 = v81;
  v59 = (*(v81 + 80) + 16) & ~*(v81 + 80);
  v60 = (v75 + v59 + 7) & 0xFFFFFFFFFFFFFFF8;
  v61 = swift_allocObject();
  (*(v58 + 32))(v61 + v59, v44, v12);
  v62 = (v61 + v60);
  v63 = v73;
  *v62 = sub_2272B822C;
  v62[1] = v63;
  v64 = swift_allocObject();
  *(v64 + 16) = sub_2272B822C;
  *(v64 + 24) = v63;
  v65 = sub_226EA1CF4();

  v66 = sub_22766C950();
  v84 = v65;
  v85 = MEMORY[0x277D225C0];
  v83[0] = v66;
  sub_22766BDD0();

  v54(v57, v12);
  (*(v77 + 8))(v76, v78);
  return __swift_destroy_boxed_opaque_existential_0(v83);
}

unint64_t sub_226EC0768(char a1)
{
  result = 0x746E497972657571;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000024;
      break;
    case 2:
    case 3:
    case 19:
      result = 0xD000000000000023;
      break;
    case 4:
    case 15:
      result = 0xD00000000000001CLL;
      break;
    case 5:
      result = 0xD00000000000001DLL;
      break;
    case 6:
      result = 0xD00000000000001DLL;
      break;
    case 7:
      result = 0xD00000000000001ELL;
      break;
    case 8:
    case 16:
      result = 0xD000000000000019;
      break;
    case 9:
      result = 0xD00000000000001ALL;
      break;
    case 10:
      result = 0xD00000000000001DLL;
      break;
    case 12:
      result = 0xD000000000000026;
      break;
    case 13:
      result = 0xD000000000000017;
      break;
    case 14:
      result = 0xD00000000000001FLL;
      break;
    case 17:
    case 21:
      result = 0xD000000000000012;
      break;
    case 18:
      result = 0xD00000000000001DLL;
      break;
    case 20:
      return result;
    default:
      result = 0xD000000000000028;
      break;
  }

  return result;
}

uint64_t objectdestroy_69Tm()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_226EC0A48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v13 - v7;
  sub_2276696A0();
  v9 = swift_allocObject();
  *(v9 + 16) = a2;
  *(v9 + 24) = a3;

  v10 = sub_227669290();
  v11 = swift_allocObject();
  *(v11 + 16) = sub_226EB4354;
  *(v11 + 24) = v9;

  v10(sub_226EB4544, v11);

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_226EC0D0C(uint64_t a1, uint64_t a2, char a3, void (*a4)(char *, uint64_t), uint64_t a5, uint64_t a6)
{
  v74 = a6;
  v69 = a4;
  v10 = sub_22766B390();
  v71 = *(v10 - 8);
  v72 = v10;
  MEMORY[0x28223BE20](v10);
  v79 = v68 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_22766BE40();
  v81 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v80 = v68 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v70 = v68 - v15;
  MEMORY[0x28223BE20](v16);
  v18 = v68 - v17;
  v75 = v19;
  MEMORY[0x28223BE20](v20);
  v82 = v68 - v21;
  v22 = sub_22766BD20();
  v23 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v25 = v68 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v28 = v68 - v27;
  v29 = swift_allocObject();
  *(v29 + 16) = a1;
  *(v29 + 24) = a2;
  v73 = v29;
  sub_226EC0768(a3);

  sub_22766BD10();
  v76 = v28;
  v77 = v23;
  v30 = *(v23 + 16);
  v78 = v22;
  v30(v25, v28, v22);
  sub_22766BE30();
  if (a5)
  {
    v31 = MEMORY[0x277D837D0];
    v32 = a5;
    v33 = v69;
  }

  else
  {
    v33 = 0;
    v32 = 0;
    v31 = 0;
    v83[2] = 0;
  }

  v83[0] = v33;
  v83[1] = v32;
  v84 = v31;

  v34 = v82;
  sub_22766BE20();
  v35 = v81;
  v36 = v81 + 8;
  v69 = *(v81 + 8);
  v69(v18, v12);
  sub_226E97D1C(v83, &unk_27D7BC990, &qword_227670A30);
  v37 = v79;
  sub_22766A730();
  v38 = v70;
  v39 = v34;
  v40 = *(v35 + 16);
  v40(v70, v39, v12);
  v41 = sub_22766B380();
  v42 = sub_22766C8B0();
  v43 = os_log_type_enabled(v41, v42);
  v44 = v80;
  if (v43)
  {
    v45 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    v68[1] = v36;
    v47 = v40;
    v48 = v46;
    v83[0] = v46;
    *v45 = 136315138;
    v47(v44, v38, v12);
    v49 = sub_22766C060();
    v50 = v38;
    v51 = v49;
    v53 = v52;
    v54 = v69;
    v69(v50, v12);
    v55 = sub_226E97AE8(v51, v53, v83);
    v44 = v80;

    *(v45 + 4) = v55;
    _os_log_impl(&dword_226E8E000, v41, v42, "ScriptConnection invoking %s", v45, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v48);
    v56 = v48;
    v40 = v47;
    MEMORY[0x22AA9A450](v56, -1, -1);
    MEMORY[0x22AA9A450](v45, -1, -1);

    (*(v71 + 8))(v79, v72);
  }

  else
  {

    v54 = v69;
    v69(v38, v12);
    (*(v71 + 8))(v37, v72);
  }

  v57 = v82;
  sub_22766BD50();
  v84 = sub_22766B9C0();
  v85 = MEMORY[0x277D21FB0];
  __swift_allocate_boxed_opaque_existential_0(v83);
  sub_22766B9B0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBC30, &unk_2276720D0);
  sub_22766BDC0();

  __swift_destroy_boxed_opaque_existential_0(v83);
  v40(v44, v57, v12);
  v58 = v81;
  v59 = (*(v81 + 80) + 16) & ~*(v81 + 80);
  v60 = (v75 + v59 + 7) & 0xFFFFFFFFFFFFFFF8;
  v61 = swift_allocObject();
  (*(v58 + 32))(v61 + v59, v44, v12);
  v62 = (v61 + v60);
  v63 = v73;
  *v62 = sub_2272B822C;
  v62[1] = v63;
  v64 = swift_allocObject();
  *(v64 + 16) = sub_2272B822C;
  *(v64 + 24) = v63;
  v65 = sub_226EA1CF4();

  v66 = sub_22766C950();
  v84 = v65;
  v85 = MEMORY[0x277D225C0];
  v83[0] = v66;
  sub_22766BDD0();

  v54(v57, v12);
  (*(v77 + 8))(v76, v78);
  return __swift_destroy_boxed_opaque_existential_0(v83);
}

uint64_t sub_226EC1424(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a2, a3) - 8);
  v7 = v4 + ((*(v6 + 80) + 16) & ~*(v6 + 80));

  return a4(a1, v7);
}

uint64_t sub_226EC14C0@<X0>(uint64_t x8_0@<X8>)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860) - 8);
  v5 = v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return sub_226EC161C(v5, x8_0);
}

uint64_t sub_226EC154C@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  v4 = *(v3 - 8);
  v5 = *(v4 + 16);
  v6 = v1 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return v5(a1, v6, v3);
}

uint64_t sub_226EC161C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  v5 = *(*(v4 - 8) + 16);

  return v5(a2, a1, v4);
}

uint64_t sub_226EC1698()
{
  *(*v1 + 320) = v0;

  if (v0)
  {
    v2 = sub_2272C509C;
  }

  else
  {

    v2 = sub_226EBC8F0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_226EC17B4(void *(*a1)(uint64_t *__return_ptr, char *), uint64_t a2, uint64_t a3)
{
  v4 = MEMORY[0x277D84F90];
  v13 = MEMORY[0x277D84F90];
  v5 = *(a3 + 16);
  if (v5)
  {
    v7 = (a3 + 32);
    while (1)
    {
      v8 = *v7++;
      v12 = v8;
      v9 = a1(&v11, &v12);
      if (v3)
      {
        break;
      }

      if (v11)
      {
        MEMORY[0x22AA985C0](v9);
        if (*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_22766C360();
        }

        sub_22766C3A0();
        v4 = v13;
      }

      if (!--v5)
      {
        return v4;
      }
    }
  }

  return v4;
}

void *sub_226EC18B4(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_226EB90AC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

id sub_226EC1938@<X0>(char *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X3>, char a4@<W4>, uint64_t a5@<X5>, _BYTE *a6@<X6>, void *a7@<X8>)
{
  v8 = *a2 + 1;
  if (__OFADD__(*a2, 1))
  {
    __break(1u);
    goto LABEL_19;
  }

  v9 = *a1;
  *a2 = v8;
  v10 = 20 * a5;
  if ((a5 * 20) >> 64 != (20 * a5) >> 63)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v11 = __OFADD__(v8, v10);
  v12 = v8 + v10;
  if (v11)
  {
LABEL_20:
    __break(1u);
    JUMPOUT(0x226EC1A70);
  }

  v14 = v9;
  v15 = *a6;
  v16 = 1;
  v17 = 10;
  v18 = 0;
  switch(v15)
  {
    case 1:
      v17 = 25;
      goto LABEL_16;
    case 2:
      v17 = 50;
      goto LABEL_16;
    case 3:
      v17 = 100;
      goto LABEL_16;
    case 4:
      v17 = 250;
      goto LABEL_16;
    case 5:
      v17 = 500;
      goto LABEL_16;
    case 6:
      v17 = 750;
      goto LABEL_16;
    case 7:
      v17 = 1000;
      goto LABEL_16;
    case 8:
      v17 = 1250;
      goto LABEL_16;
    case 9:
      v17 = 1500;
      goto LABEL_16;
    case 10:
      v17 = 1750;
      goto LABEL_16;
    case 11:
      v17 = 2000;
      goto LABEL_16;
    case 12:
      goto LABEL_17;
    default:
LABEL_16:
      v16 = 0;
      v18 = v17;
LABEL_17:
      result = sub_226EBD004(a3, qword_22767EF88[v9], a4 & 1, v12, v18, v16);
      *a6 = v14;
      *a7 = result;
      return result;
  }
}

unint64_t sub_226EC1AA4()
{
  result = qword_28139BC58;
  if (!qword_28139BC58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7B86D0, &qword_22768B670);
    sub_226EB9ED4(&qword_28139B670, MEMORY[0x277D52360], MEMORY[0x277D52368]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28139BC58);
  }

  return result;
}

void sub_226EC1B88(void *a1, char a2, void (*a3)(double), uint64_t a4, void (*a5)(void *), uint64_t a6, uint64_t *a7, uint64_t *a8, uint64_t a9, uint64_t a10)
{
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
  v16 = *(v15 - 8);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v24[-1] - v18;
  if (a2)
  {
    v24[0] = a1;
    v24[1] = 0;
    v25 = 1;
    v20 = a1;
    a5(v24);
    sub_226EB4548(a1, 1);
  }

  else
  {
    a3(v17);
    v21 = sub_227669290();
    v22 = swift_allocObject();
    *(v22 + 16) = a5;
    *(v22 + 24) = a6;

    v21(a10, v22);

    (*(v16 + 8))(v19, v15);
  }
}

uint64_t sub_226EC1D18(uint64_t a1)
{
  *(*v1 + 240) = a1;

  return MEMORY[0x2822009F8](sub_226EC1EC0, 0, 0);
}

unint64_t sub_226EC1E18()
{
  result = qword_28139B7D0;
  if (!qword_28139B7D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28139B7D0);
  }

  return result;
}

unint64_t sub_226EC1E6C()
{
  result = qword_28139B680;
  if (!qword_28139B680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28139B680);
  }

  return result;
}

uint64_t sub_226EC1EC0()
{
  v1 = v0[17];
  v1[11] = v0[30];
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_227670B30;
  sub_226EC2200();
  *(v2 + 32) = v3;
  v1[12] = v2;
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_227670B30;
  sub_226EC250C();
  *(v4 + 32) = v5;
  v1[13] = v4;
  v6 = sub_226EC26B4(v1);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC7D0, &qword_22767EF68);
  swift_arrayDestroy();
  if (v6 >> 62)
  {
    v7 = sub_22766CD20();
    if (v7)
    {
      goto LABEL_3;
    }

LABEL_11:

    v13 = MEMORY[0x277D84F90];
    goto LABEL_12;
  }

  v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v7)
  {
    goto LABEL_11;
  }

LABEL_3:
  v16 = MEMORY[0x277D84F90];
  result = sub_22766CF30();
  if (v7 < 0)
  {
    __break(1u);
    return result;
  }

  sub_227669DE0();
  v9 = 0;
  do
  {
    if ((v6 & 0xC000000000000001) != 0)
    {
      v10 = MEMORY[0x22AA991A0](v9, v6);
    }

    else
    {
      v10 = *(v6 + 8 * v9 + 32);
    }

    v11 = v10;
    ++v9;
    sub_227669D80();
    v12 = sub_22766BFD0();

    [v11 setSourceName_];

    sub_22766CF00();
    sub_22766CF40();
    sub_22766CF50();
    sub_22766CF10();
  }

  while (v7 != v9);

  v13 = v16;
LABEL_12:
  v14 = sub_226EC2980(v13);

  v15 = v0[1];

  return v15(v14);
}

uint64_t sub_226EC2110(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = swift_allocObject();
  *(v5 + 16) = a2;
  *(v5 + 24) = a3;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBC30, &unk_2276720D0);

  return sub_227669270();
}

unint64_t sub_226EC21AC()
{
  result = qword_28139B530;
  if (!qword_28139B530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28139B530);
  }

  return result;
}

void sub_226EC2200()
{
  v1 = v0[3];
  v2 = *v0 + v1;
  if (__OFADD__(*v0, v1))
  {
    __break(1u);
    goto LABEL_6;
  }

  v3 = v2 + 1;
  if (__OFADD__(v2, 1))
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v4 = [objc_allocWithZone(MEMORY[0x277CE8D50]) init];
  v5 = sub_22766BFD0();
  [v4 setUniqueName_];

  [v4 setVersion_];
  [v4 setMinimumEngineVersion_];
  v6 = sub_22766BFD0();
  [v4 setPredicate_];

  v7 = sub_22766BFD0();
  [v4 setValueExpression_];

  v8 = sub_22766BFD0();
  [v4 setProgressExpression_];

  v9 = sub_22766BFD0();
  [v4 setGoalExpression_];

  v10 = [objc_opt_self() countUnit];
  [v4 setCanonicalUnit_];

  [v4 setEarnLimit_];
  [v4 setVisibilityPredicate_];
  [v4 setDuplicateRemovalStrategy_];
  [v4 setDuplicateRemovalCalendarUnit_];
  [v4 setDisplaysEarnedInstanceCount_];
  [v4 setEarnDateStrategy_];
  if ((v3 & 0x8000000000000000) == 0)
  {
    [v4 setDisplayOrder_];
    return;
  }

LABEL_7:
  __break(1u);
}

void sub_226EC2474(void (*a1)(void *), uint64_t a2, void (*a3)(void *__return_ptr))
{
  a3(v6);
  v4 = v6[0];
  v5 = v6[1];
  v7 = 0;
  a1(v6);

  sub_226EC33EC(v4, v5, 0);
}

void sub_226EC250C()
{
  v1 = v0[4];
  v2 = *v0 + v1;
  if (__OFADD__(*v0, v1))
  {
    __break(1u);
    goto LABEL_6;
  }

  v3 = v2 + 1;
  if (__OFADD__(v2, 1))
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v4 = [objc_allocWithZone(MEMORY[0x277CE8D50]) init];
  v5 = sub_22766BFD0();
  [v4 setUniqueName_];

  [v4 setVersion_];
  [v4 setMinimumEngineVersion_];
  v6 = sub_22766BFD0();
  [v4 setPredicate_];

  [v4 setEarnLimit_];
  [v4 setVisibilityPredicate_];
  [v4 setDuplicateRemovalStrategy_];
  [v4 setDuplicateRemovalCalendarUnit_];
  [v4 setDisplaysEarnedInstanceCount_];
  [v4 setEarnDateStrategy_];
  if ((v3 & 0x8000000000000000) == 0)
  {
    [v4 setDisplayOrder_];
    return;
  }

LABEL_7:
  __break(1u);
}

uint64_t sub_226EC26B4(uint64_t a1)
{
  v27 = *(a1 + 16);
  if (!v27)
  {
    return MEMORY[0x277D84F90];
  }

  v1 = 0;
  v2 = MEMORY[0x277D84F90];
  v26 = a1 + 32;
  while (1)
  {
    v4 = *(v26 + 8 * v1);
    v5 = v4 >> 62;
    v6 = v4 >> 62 ? sub_22766CD20() : *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v7 = v2 >> 62;
    if (v2 >> 62)
    {
      v24 = sub_22766CD20();
      v9 = v24 + v6;
      if (__OFADD__(v24, v6))
      {
LABEL_32:
        __break(1u);
        return MEMORY[0x277D84F90];
      }
    }

    else
    {
      v8 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v9 = v8 + v6;
      if (__OFADD__(v8, v6))
      {
        goto LABEL_32;
      }
    }

    result = swift_isUniquelyReferenced_nonNull_bridgeObject();
    v30 = v6;
    if (!result)
    {
      break;
    }

    if (v7)
    {
      goto LABEL_17;
    }

    v10 = v2 & 0xFFFFFFFFFFFFFF8;
    if (v9 > *((v2 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      goto LABEL_18;
    }

    v11 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v12 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x18);
    if (v5)
    {
      goto LABEL_19;
    }

LABEL_13:
    v13 = v4;
    v14 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v14)
    {
      goto LABEL_3;
    }

LABEL_20:
    if (((v12 >> 1) - v11) < v30)
    {
      goto LABEL_36;
    }

    v28 = v2;
    v16 = v10 + 8 * v11 + 32;
    v25 = v10;
    if (v5)
    {
      if (v14 < 1)
      {
        goto LABEL_38;
      }

      sub_2272C7054();
      for (i = 0; i != v14; ++i)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC7D0, &qword_22767EF68);
        v18 = sub_2275F0174(v29, i, v13);
        v20 = *v19;
        (v18)(v29, 0);
        *(v16 + 8 * i) = v20;
      }
    }

    else
    {
      sub_226EBD6C8();
      swift_arrayInitWithCopy();
    }

    v2 = v28;
    if (v30 >= 1)
    {
      v21 = *(v25 + 16);
      v22 = __OFADD__(v21, v30);
      v23 = v21 + v30;
      if (v22)
      {
        goto LABEL_37;
      }

      *(v25 + 16) = v23;
    }

LABEL_4:
    if (++v1 == v27)
    {
      return v2;
    }
  }

  if (!v7)
  {
    goto LABEL_18;
  }

LABEL_17:
  sub_22766CD20();
LABEL_18:
  result = sub_22766CE90();
  v2 = result;
  v10 = result & 0xFFFFFFFFFFFFFF8;
  v11 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
  v12 = *((result & 0xFFFFFFFFFFFFFF8) + 0x18);
  if (!v5)
  {
    goto LABEL_13;
  }

LABEL_19:
  v13 = v4;
  v15 = v10;
  result = sub_22766CD20();
  v10 = v15;
  v14 = result;
  if (result)
  {
    goto LABEL_20;
  }

LABEL_3:

  if (v30 <= 0)
  {
    goto LABEL_4;
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

unint64_t *sub_226EC29BC(unint64_t a1, unint64_t *a2, void *a3, unint64_t *a4, void (*a5)(id *, id))
{
  v10 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_22766CD20())
  {
    v12 = sub_226E99364(0, a2, a3);
    v13 = sub_226ECCEB4(a4, a2, a3);
    result = MEMORY[0x22AA98980](i, v12, v13);
    v18 = result;
    if (v10)
    {
      break;
    }

    v15 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v15)
    {
      return result;
    }

LABEL_7:
    a2 = 0;
    a3 = (a1 & 0xC000000000000001);
    while (1)
    {
      if (a3)
      {
        v16 = MEMORY[0x22AA991A0](a2, a1);
      }

      else
      {
        if (a2 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v16 = *(a1 + 8 * a2 + 32);
      }

      v10 = a2 + 1;
      if (__OFADD__(a2, 1))
      {
        break;
      }

      a4 = &v18;
      a5(&v17, v16);

      a2 = (a2 + 1);
      if (v10 == v15)
      {
        return v18;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

  a4 = result;
  v15 = sub_22766CD20();
  result = a4;
  if (v15)
  {
    goto LABEL_7;
  }

  return result;
}

__int128 *sub_226EC2B14(__int128 *result)
{
  v2 = *(v1 + 16);
  v3 = *(result + 16);
  v4 = *result;
  v5 = v3;
  if (v2)
  {
    return v2(&v4);
  }

  return result;
}

uint64_t sub_226EC2B80(uint64_t *a1, void *a2, unint64_t *a3, void *a4, uint64_t *a5, uint64_t *a6)
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

    v17 = sub_22766CD30();

    if (v17)
    {

      sub_226E99364(0, a3, a4);
      swift_dynamicCast();
      result = 0;
      *a1 = v36;
    }

    else
    {
      result = sub_22766CD20();
      if (__OFADD__(result, 1))
      {
        __break(1u);
      }

      else
      {
        v27 = sub_2270C1C4C(v15, result + 1, a5, a6, a3, a4);
        v28 = *(v27 + 16);
        if (*(v27 + 24) <= v28)
        {
          sub_2270D9070(v28 + 1, a5, a6);
        }

        v29 = v16;
        sub_2270D9BC4(v29, v27);

        *v11 = v27;
        *a1 = v29;
        return 1;
      }
    }
  }

  else
  {
    sub_226E99364(0, a3, a4);
    v19 = sub_22766CB20();
    v20 = -1 << *(v14 + 32);
    v21 = v19 & ~v20;
    if ((*(v14 + 56 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21))
    {
      v22 = ~v20;
      while (1)
      {
        v23 = *(*(v14 + 48) + 8 * v21);
        v24 = sub_22766CB30();

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
      sub_226EC2E3C(v26, v21, isUniquelyReferenced_nonNull_native, a5, a6, a3, a4);
      *v11 = v37;
      *a1 = v26;
      return 1;
    }
  }

  return result;
}

__int128 *sub_226EC2DF4(__int128 *result, uint64_t (*a2)(__int128 *))
{
  v2 = *(result + 16);
  v3 = *result;
  v4 = v2;
  if (a2)
  {
    return a2(&v3);
  }

  return result;
}

void sub_226EC2E3C(uint64_t a1, unint64_t a2, char a3, uint64_t *a4, uint64_t *a5, unint64_t *a6, void *a7)
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
    sub_2270D9070(v10 + 1, a4, a5);
  }

  else
  {
    if (v11 > v10)
    {
      sub_2270EF3DC(a4, a5);
      goto LABEL_12;
    }

    v12 = a6;
    v13 = a7;
    sub_227102DF0(v10 + 1, a4, a5);
  }

  v14 = *v7;
  v15 = sub_22766CB20();
  v16 = -1 << *(v14 + 32);
  a2 = v15 & ~v16;
  if ((*(v14 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v17 = ~v16;
    sub_226E99364(0, v12, v13);
    do
    {
      v18 = *(*(v14 + 48) + 8 * a2);
      v19 = sub_22766CB30();

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
  sub_22766D210();
  __break(1u);
}

uint64_t sub_226EC3004(void *a1, uint64_t a2, char a3)
{
  v7 = *(sub_22766B780() - 8);
  v8 = *(v7 + 80);
  v9 = (v8 + 24) & ~v8;
  v10 = (*(v7 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = *(v3 + 16);
  v12 = *(v3 + v10);

  return sub_226EC30CC(a1, a2, a3 & 1, v11, v3 + v9, v12, v3 + ((v8 + v10 + 8) & ~v8));
}

uint64_t sub_226EC30CC(void *a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v30 = a6;
  v31 = a4;
  v29 = a3;
  v28 = a2;
  v26 = a1;
  v10 = sub_22766B780();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v27 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v13);
  v16 = &v26 - v15;
  v17 = *(v11 + 16);
  v17(&v26 - v15, a5, v10, v14);
  (v17)(&v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), a7, v10);
  v18 = *(v11 + 80);
  v19 = (v18 + 33) & ~v18;
  v20 = (v12 + v19 + 7) & 0xFFFFFFFFFFFFFFF8;
  v21 = (v18 + v20 + 8) & ~v18;
  v22 = swift_allocObject();
  *(v22 + 16) = a1;
  v23 = v28;
  *(v22 + 24) = v28;
  LOBYTE(v17) = v29 & 1;
  *(v22 + 32) = v29 & 1;
  v24 = *(v11 + 32);
  v24(v22 + v19, v16, v10);
  *(v22 + v20) = v30;
  v24(v22 + v21, v27, v10);
  sub_226EC33DC(v26, v23, v17);

  sub_22766B9E0();
}

uint64_t sub_226EC32D0()
{
  v1 = sub_22766B780();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 33) & ~v3;
  v5 = *(v2 + 64);
  v6 = (v3 + ((v5 + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v3;
  sub_226EC33EC(*(v0 + 16), *(v0 + 24), *(v0 + 32));
  v7 = *(v2 + 8);
  v7(v0 + v4, v1);

  v7(v0 + v6, v1);

  return MEMORY[0x2821FE8E8](v0, v6 + v5, v3 | 7);
}

id sub_226EC33DC(void *a1, uint64_t a2, char a3)
{
  if (a3)
  {
    return a1;
  }

  else
  {
  }
}

void sub_226EC33EC(void *a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_226EC33FC(uint64_t a1, uint64_t a2, char a3)
{
  v4 = *(v3 + 16);
  v6[0] = a1;
  v6[1] = a2;
  v7 = a3 & 1;
  return v4(v6);
}

void sub_226EC343C(void *a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v43 = a5;
  v42 = sub_22766BD00();
  v41 = *(v42 - 8);
  MEMORY[0x28223BE20](v42);
  v11 = v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_22766B390();
  v12 = *(v44 - 8);
  MEMORY[0x28223BE20](v44);
  v14 = v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  MEMORY[0x28223BE20](v16);
  v18 = v40 - v17;
  if (a3)
  {
    sub_22766A730();
    v19 = a1;
    v20 = sub_22766B380();
    v21 = sub_22766C890();
    sub_226EC33EC(a1, a2, 1);
    v22 = os_log_type_enabled(v20, v21);
    v40[3] = v12;
    v40[2] = a1;
    if (v22)
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v40[1] = v14;
      v25 = v24;
      v49[0] = v24;
      *v23 = 136446210;
      swift_getErrorValue();
      v26 = MEMORY[0x22AA995D0](v45, v46);
      v28 = sub_226E97AE8(v26, v27, v49);
      v40[0] = a6;
      v29 = v28;

      *(v23 + 4) = v29;
      v30 = v44;
      _os_log_impl(&dword_226E8E000, v20, v21, "Rejecting script promise with error: %{public}s", v23, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v25);
      MEMORY[0x22AA9A450](v25, -1, -1);
      MEMORY[0x22AA9A450](v23, -1, -1);

      (*(v12 + 8))(v18, v30);
    }

    else
    {

      (*(v12 + 8))(v18, v44);
    }

    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v33 = Strong;
      swift_getErrorValue();
      sub_2273331E8(v47, v48);
      sub_22766BCD0();
      (*(v41 + 8))(v11, v42);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8FE8, &qword_227672B80);
      v35 = swift_allocObject();
      *(v35 + 16) = xmmword_227670CD0;
      v36 = v50;
      v37 = __swift_project_boxed_opaque_existential_0(v49, v50);
      *(v35 + 56) = v36;
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v35 + 32));
      (*(*(v36 - 8) + 16))(boxed_opaque_existential_0, v37, v36);
      v39 = sub_22766B770();

      __swift_destroy_boxed_opaque_existential_0(v49);
    }

    else
    {
    }
  }

  else
  {
    if (a2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8FE8, &qword_227672B80);
      v31 = swift_allocObject();
      *(v31 + 16) = xmmword_227670CD0;
      *(v31 + 56) = MEMORY[0x277D837D0];
      *(v31 + 32) = a1;
      *(v31 + 40) = a2;

      v44 = sub_22766B770();

      v34 = v44;
    }

    else
    {
      v34 = sub_22766B770();
    }
  }
}

uint64_t sub_226EC3C5C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t (**a4)(uint64_t *a1)@<X8>)
{
  v8 = *a1;
  v7 = a1[1];
  v9 = swift_allocObject();
  *(v9 + 2) = a2;
  *(v9 + 3) = a3;
  *(v9 + 4) = v8;
  *(v9 + 5) = v7;
  *a4 = sub_226EC3EEC;
  a4[1] = v9;
}

uint64_t sub_226EC3CE4()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_226EC3D24(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BC8E0, &qword_2276784C0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v19 - v11;
  v14 = *a1;
  v13 = a1[1];
  v15 = swift_allocObject();
  *(v15 + 16) = v14;
  *(v15 + 24) = v13;
  v16 = sub_22766C4B0();
  (*(*(v16 - 8) + 56))(v12, 1, 1, v16);
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = sub_226EC8390;
  v17[5] = v15;
  v17[6] = a2;
  v17[7] = a3;
  v17[8] = a4;
  v17[9] = a5;

  sub_2272CA940(0, 0, v12, &unk_227688BA0, v17);
}

uint64_t sub_226EC3E98()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t sub_226EC3EF8(uint64_t a1)
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
  v11[1] = sub_226E92F34;

  return sub_226EC3FE4(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_226EC3FE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int *a6, uint64_t a7, uint64_t a8)
{
  v8[2] = a4;
  v8[3] = a5;
  v12 = (a6 + *a6);
  v10 = swift_task_alloc();
  v8[4] = v10;
  *v10 = v8;
  v10[1] = sub_226EC81E4;

  return v12(a8);
}

uint64_t sub_226EC40F0(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_227485278;

  return sub_226EC41A0(a1, a2, v7, v6);
}

uint64_t sub_226EC41A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[7] = a3;
  v4[8] = a4;
  v4[5] = a1;
  v4[6] = a2;
  v5 = sub_227666ED0();
  v4[9] = v5;
  v4[10] = *(v5 - 8);
  v4[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226EC4264, 0, 0);
}

uint64_t sub_226EC4264(uint64_t a1)
{
  if (v1[6])
  {

    sub_227667720();
    v7 = (v1[7] + *v1[7]);
    v2 = swift_task_alloc();
    v1[12] = v2;
    *v2 = v1;
    v2[1] = sub_226EC7EAC;
    v3 = v1[11];

    return v7(v1 + 2, v3);
  }

  else
  {
    sub_226F6649C();
    swift_allocError();
    *v5 = 2;
    swift_willThrow();

    v6 = v1[1];

    return v6();
  }
}

uint64_t sub_226EC4424(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 2);
  v7 = v2[3];
  v9 = *(v2 + 4);
  v8 = *(v2 + 5);
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = sub_226E93028;

  return sub_226EC4504(a1, a2, v6, v9, v8, v7);
}

uint64_t sub_226EC4504(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6)
{
  *(v6 + 16) = a1;
  v12 = swift_task_alloc();
  *(v6 + 24) = v12;
  *v12 = v6;
  v12[1] = sub_226EC7924;

  return sub_226EC45CC(a2, a3, a4, a5, a6);
}

uint64_t sub_226EC45CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5)
{
  *(v5 + 80) = a3;
  *(v5 + 88) = a4;
  *(v5 + 72) = a5;
  *(v5 + 56) = a1;
  *(v5 + 64) = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  *(v5 + 96) = v6;
  *(v5 + 104) = *(v6 - 8);
  *(v5 + 112) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226EC46A0, 0, 0);
}

uint64_t sub_226EC46A0()
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    v1 = v0[14];
    sub_2276696A0();

    v2 = swift_task_alloc();
    v0[15] = v2;
    *(v2 + 16) = "SeymourServices/ScriptConnection.swift";
    *(v2 + 24) = 38;
    *(v2 + 32) = 2;
    *(v2 + 40) = 210;
    *(v2 + 48) = v1;
    v3 = swift_task_alloc();
    v0[16] = v3;
    *v3 = v0;
    v3[1] = sub_226EC4FD0;
    v4 = MEMORY[0x277D84F78] + 8;

    return MEMORY[0x2822008A0](v3, 0, 0, 0xD000000000000013, 0x8000000227693B00, sub_227485280, v2, v4);
  }

  else
  {
    v8 = (v0[10] + *v0[10]);
    v5 = swift_task_alloc();
    v0[18] = v5;
    *v5 = v0;
    v5[1] = sub_226EC6E14;
    v6 = v0[7];

    return v8(v0 + 5, v6);
  }
}

uint64_t sub_226EC48EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = a4;
  v42 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA190, &qword_227678478);
  v45 = *(v11 - 8);
  v44 = *(v45 + 64);
  MEMORY[0x28223BE20](v11);
  v13 = &v36 - v12;
  v14 = sub_22766B390();
  v43 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v16 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_226E97A5C(0x65uLL);
  sub_22766A710();
  v17 = sub_22766B380();
  v40 = sub_22766C8B0();
  v41 = v17;
  if (os_log_type_enabled(v17, v40))
  {
    v18 = swift_slowAlloc();
    v39 = a6;
    v19 = v18;
    v37 = swift_slowAlloc();
    v47 = v37;
    *v19 = 134218498;
    *(v19 + 4) = v46;
    *(v19 + 12) = 2080;
    v20 = sub_22766CE50();
    v38 = v8;
    v22 = sub_226E97AE8(v20, v21, &v47);
    v36 = v14;
    v23 = v11;
    v24 = a2;
    v25 = a3;
    v26 = a5;
    v27 = v22;
    LOBYTE(v8) = v38;

    *(v19 + 14) = v27;
    a5 = v26;
    a3 = v25;
    a2 = v24;
    v11 = v23;
    *(v19 + 22) = 2048;
    *(v19 + 24) = a5;
    v28 = v41;
    _os_log_impl(&dword_226E8E000, v41, v40, "Converting from Promise to Async-Await. Created at: %ld:%s:%lu", v19, 0x20u);
    v29 = v37;
    __swift_destroy_boxed_opaque_existential_0(v37);
    MEMORY[0x22AA9A450](v29, -1, -1);
    MEMORY[0x22AA9A450](v19, -1, -1);

    (*(v43 + 8))(v16, v36);
  }

  else
  {

    (*(v43 + 8))(v16, v14);
  }

  v30 = v45;
  (*(v45 + 16))(v13, v42, v11);
  v31 = (*(v30 + 80) + 56) & ~*(v30 + 80);
  v32 = swift_allocObject();
  *(v32 + 16) = v46;
  *(v32 + 24) = a2;
  *(v32 + 32) = a3;
  *(v32 + 40) = v8;
  *(v32 + 48) = a5;
  (*(v30 + 32))(v32 + v31, v13, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  v33 = sub_227669290();
  v34 = swift_allocObject();
  *(v34 + 16) = sub_226EC4D58;
  *(v34 + 24) = v32;

  v33(sub_226E9F7B0, v34);
}

uint64_t sub_226EC4D80(void *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned int a6, uint64_t a7, uint64_t a8)
{
  v29 = a7;
  v28 = a6;
  v30 = a2;
  v11 = sub_22766B390();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A710();
  v15 = sub_22766B380();
  v16 = sub_22766C8B0();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v27[1] = a8;
    v18 = v17;
    v19 = swift_slowAlloc();
    v27[0] = a1;
    v20 = v19;
    v31 = v19;
    *v18 = 134218498;
    *(v18 + 4) = a3;
    *(v18 + 12) = 2080;
    v21 = sub_22766CE50();
    v23 = sub_226E97AE8(v21, v22, &v31);

    *(v18 + 14) = v23;
    *(v18 + 22) = 2048;
    *(v18 + 24) = v29;
    _os_log_impl(&dword_226E8E000, v15, v16, "Finished P->A conversion: %ld:%s:%lu", v18, 0x20u);
    __swift_destroy_boxed_opaque_existential_0(v20);
    v24 = v20;
    a1 = v27[0];
    MEMORY[0x22AA9A450](v24, -1, -1);
    MEMORY[0x22AA9A450](v18, -1, -1);
  }

  (*(v12 + 8))(v14, v11);
  if (v30)
  {
    v31 = a1;
    v25 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA190, &qword_227678478);
    return sub_22766C440();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA190, &qword_227678478);
    return sub_22766C450();
  }
}

uint64_t sub_226EC4FD0()
{
  v2 = *v1;
  *(*v1 + 136) = v0;

  if (v0)
  {

    v3 = sub_2274861D0;
  }

  else
  {
    v5 = v2[13];
    v4 = v2[14];
    v6 = v2[12];

    (*(v5 + 8))(v4, v6);
    v3 = sub_226EC5128;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_226EC5128()
{
  v4 = (v0[10] + *v0[10]);
  v1 = swift_task_alloc();
  v0[18] = v1;
  *v1 = v0;
  v1[1] = sub_226EC6E14;
  v2 = v0[7];

  return v4(v0 + 5, v2);
}

uint64_t sub_226EC5220(uint64_t a1, uint64_t a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_226E93028;

  return sub_226EC52CC(a1, a2, v2);
}

uint64_t sub_226EC52CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[12] = a2;
  v3[13] = a3;
  v3[11] = a1;
  v4 = sub_227666ED0();
  v3[14] = v4;
  v5 = *(v4 - 8);
  v3[15] = v5;
  v3[16] = *(v5 + 64);
  v3[17] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226EC5398, 0, 0);
}

uint64_t sub_226EC5398()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v2 = v0[17];
    v3 = v0[14];
    v4 = v0[15];
    v5 = v0[12];
    sub_226E91B50(Strong + 80, (v0 + 2));

    v6 = __swift_project_boxed_opaque_existential_0(v0 + 2, v0[5]);
    v7 = *v6;
    v8 = *(*v6 + 40);
    v9 = *(*v6 + 48);
    __swift_project_boxed_opaque_existential_0((*v6 + 16), v8);
    (*(v4 + 16))(v2, v5, v3);
    v10 = (*(v4 + 80) + 24) & ~*(v4 + 80);
    v11 = swift_allocObject();
    v0[18] = v11;
    *(v11 + 16) = v7;
    (*(v4 + 32))(v11 + v10, v2, v3);
    v12 = *(v9 + 24);

    v18 = (v12 + *v12);
    v13 = swift_task_alloc();
    v0[19] = v13;
    *v13 = v0;
    v13[1] = sub_226EC6850;
    v14 = MEMORY[0x277D83B88];

    return (v18)(v0 + 10, sub_226EC56EC, v11, v14, v8, v9);
  }

  else
  {
    v16 = v0[11];
    *v16 = 0;
    *(v16 + 8) = 1;

    v17 = v0[1];

    return v17();
  }
}

uint64_t sub_226EC5628()
{
  v1 = sub_227666ED0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_226EC57B8@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_227666EC0();
  v6 = v5;
  v7 = sub_227666EA0();
  result = sub_226EC5818(v7, a1, v6);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_226EC5818(char *a1, void *a2, double a3)
{
  v78 = a1;
  v5 = sub_227662930();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v71 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_227662750();
  v73 = *(v9 - 8);
  v10 = v73;
  MEMORY[0x28223BE20](v9);
  v12 = &v71 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9690, qword_227670B50);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v71 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v71 - v17;
  sub_227662740();
  (*(v6 + 104))(v8, *MEMORY[0x277CC9968], v5);
  sub_227662610();
  (*(v6 + 8))(v8, v5);
  (*(v10 + 8))(v12, v9);
  v19 = __swift_project_boxed_opaque_existential_0(a2, a2[3]);
  v20 = *v19;
  v21 = v19[1];
  LOBYTE(v5) = *(v19 + 16);
  v22 = v19[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9190, qword_227673CB0);
  v23 = swift_allocObject();
  v24 = v20;
  v25 = v21;

  sub_22766A070();
  v75 = v22;
  v76 = v24;
  *(v23 + 16) = v24;
  *(v23 + 24) = v25;
  v74 = v25;
  *(v23 + 32) = v5;
  *(v23 + 40) = v22;
  swift_getKeyPath();
  v78 = v18;
  v26 = v18;
  v27 = v73;
  sub_226E93170(v26, v15, &qword_27D7B9690, qword_227670B50);
  if ((*(v27 + 48))(v15, 1, v9) == 1)
  {
    sub_226E97D1C(v15, &qword_27D7B9690, qword_227670B50);
    v81 = 0u;
    v82 = 0u;
  }

  else
  {
    *(&v82 + 1) = v9;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v81);
    (*(v27 + 32))(boxed_opaque_existential_0, v15, v9);
  }

  sub_226E99364(0, &qword_281398B40, 0x277CCA9C0);

  v29 = sub_22766C820();
  sub_226E93170(&v81, v79, &unk_27D7BC990, &qword_227670A30);
  v30 = v80;
  v31 = v23;
  if (v80)
  {
    v32 = __swift_project_boxed_opaque_existential_0(v79, v80);
    v33 = *(v30 - 8);
    v34 = MEMORY[0x28223BE20](v32);
    v36 = &v71 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v33 + 16))(v36, v34);
    v37 = sub_22766D170();
    (*(v33 + 8))(v36, v30);
    __swift_destroy_boxed_opaque_existential_0(v79);
  }

  else
  {
    v37 = 0;
  }

  v38 = objc_opt_self();
  v39 = [v38 expressionForConstantValue_];
  swift_unknownObjectRelease();
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB950, &unk_227670BB0);
  v41 = [objc_allocWithZone(v40) initWithLeftExpression:v29 rightExpression:v39 modifier:0 type:3 options:0];

  sub_226E97D1C(&v81, &unk_27D7BC990, &qword_227670A30);
  v42 = qword_2813B2078;
  swift_beginAccess();
  v43 = v41;
  v44 = sub_22766A080();
  v46 = v45;
  MEMORY[0x22AA985C0]();
  if (*((*v46 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v46 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v73 = *((*v46 & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_22766C360();
  }

  sub_22766C3A0();
  v44(&v81, 0);
  swift_endAccess();

  swift_getKeyPath();
  *(&v82 + 1) = MEMORY[0x277D839F8];
  *&v81 = a3;

  v47 = sub_22766C820();
  sub_226E93170(&v81, v79, &unk_27D7BC990, &qword_227670A30);
  v48 = v80;
  if (v80)
  {
    v49 = __swift_project_boxed_opaque_existential_0(v79, v80);
    v72 = v31;
    v73 = v42;
    v50 = v40;
    v51 = *(v48 - 8);
    v52 = MEMORY[0x28223BE20](v49);
    v54 = &v71 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v51 + 16))(v54, v52);
    v55 = sub_22766D170();
    (*(v51 + 8))(v54, v48);
    v40 = v50;
    v31 = v72;
    v42 = v73;
    __swift_destroy_boxed_opaque_existential_0(v79);
  }

  else
  {
    v55 = 0;
  }

  v56 = [v38 expressionForConstantValue_];
  swift_unknownObjectRelease();
  v57 = [objc_allocWithZone(v40) initWithLeftExpression:v47 rightExpression:v56 modifier:0 type:3 options:0];

  sub_226E97D1C(&v81, &unk_27D7BC990, &qword_227670A30);
  swift_beginAccess();
  v58 = v57;
  v59 = sub_22766A080();
  v61 = v60;
  MEMORY[0x22AA985C0]();
  if (*((*v61 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v61 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v42 = *((*v61 & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_22766C360();
  }

  sub_22766C3A0();
  v59(&v81, 0);
  swift_endAccess();

  v62 = v77;
  v63 = sub_226EC6320(0);
  if (v62)
  {

    swift_setDeallocating();
    v64 = qword_2813B2078;
    v65 = sub_22766A100();
    (*(*(v65 - 8) + 8))(v31 + v64, v65);
    swift_deallocClassInstance();
    sub_226E97D1C(v78, &qword_27D7B9690, qword_227670B50);
  }

  else
  {
    v66 = v63;
    [v63 setResultType_];
    [v66 setFetchLimit_];
    [v66 setFetchOffset_];
    [v66 setIncludesSubentities_];
    sub_226E99364(0, &qword_28139D220, 0x277CCABB0);
    v67 = v76;
    v42 = sub_22766C9D0();

    sub_226E97D1C(v78, &qword_27D7B9690, qword_227670B50);

    swift_setDeallocating();
    v69 = qword_2813B2078;
    v70 = sub_22766A100();
    (*(*(v70 - 8) + 8))(v31 + v69, v70);
    swift_deallocClassInstance();
  }

  return v42;
}

id sub_226EC6350(uint64_t a1)
{
  v5 = sub_22766A100();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v44 - v10;
  MEMORY[0x28223BE20](v12);
  v51 = &v44 - v13;
  MEMORY[0x28223BE20](v14);
  v16 = &v44 - v15;
  if (sub_227669C10())
  {
    v17 = sub_227664DD0();
    sub_226E9CF88(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
    swift_allocError();
    (*(*(v17 - 8) + 104))(v18, *MEMORY[0x277D51010], v17);
    swift_willThrow();
  }

  else
  {
    v48 = v11;
    v49 = v8;
    v50 = v2;
    v19 = objc_allocWithZone(MEMORY[0x277CBE428]);
    v20 = sub_22766BFD0();
    v21 = [v19 initWithEntityName_];
    v46 = v21;

    [v21 setFetchBatchSize_];
    v22 = v1;
    v23 = qword_2813B2078;
    swift_beginAccess();
    v24 = v16;
    v25 = *(v6 + 16);
    v25(v24, v22 + v23, v5);
    sub_22766A090();
    v45 = *(v6 + 8);
    v47 = v24;
    v45(v24, v5);
    sub_226E99364(0, &qword_281398B58, 0x277CCAC30);
    v26 = sub_22766C2B0();

    v27 = [objc_opt_self() andPredicateWithSubpredicates_];

    v28 = v51;
    v3 = v46;
    [v46 setPredicate_];

    v53 = v23;
    v29 = v22 + v23;
    v30 = v22;
    v52 = v25;
    v25(v28, v29, v5);
    v31 = v45;
    v32 = sub_22766A0C0();
    LOBYTE(v27) = v33;
    v31(v28, v5);
    if ((v27 & 1) == 0)
    {
      [v3 setFetchLimit_];
    }

    v34 = v48;
    v52(v48, v30 + v53, v5);
    v35 = sub_22766A0E0();
    v37 = v36;
    v31(v34, v5);
    if ((v37 & 1) == 0)
    {
      [v3 setFetchOffset_];
    }

    v38 = v49;
    v52(v49, v30 + v53, v5);
    v39 = sub_22766A0B0();
    v40 = v31;
    v31(v38, v5);
    v41 = v47;
    if (v39 >> 62)
    {
      v42 = sub_22766CD20();
    }

    else
    {
      v42 = *((v39 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v42)
    {
      v52(v41, v30 + v53, v5);
      sub_22766A0B0();
      v40(v41, v5);
      sub_226E99364(0, &qword_281398AF8, 0x277CCAC98);
      v42 = sub_22766C2B0();
    }

    [v3 setSortDescriptors_];
  }

  return v3;
}

uint64_t sub_226EC6850()
{
  *(*v1 + 160) = v0;

  if (v0)
  {
    v2 = sub_226FABDEC;
  }

  else
  {

    v2 = sub_226EC6D0C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

unint64_t sub_226EC696C(uint64_t a1, uint64_t a2)
{
  v42 = *MEMORY[0x277D85DE8];
  v4 = sub_227666FF0();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(v6) = *(a1 + 32);
  v8 = v6 & 0x3F;
  v31 = ((1 << v6) + 63) >> 6;
  v9 = 8 * v31;
  v40 = a2;

  if (v8 > 0xD)
  {
    goto LABEL_21;
  }

  while (1)
  {
    v37 = v7;
    v38 = v4;
    v33 = &v31;
    MEMORY[0x28223BE20](v10);
    v32 = &v31 - ((v9 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v32, v9);
    v9 = 0;
    v39 = a1;
    v12 = *(a1 + 56);
    a1 += 56;
    v11 = v12;
    v13 = 1 << *(a1 - 24);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v4 = v14 & v11;
    v15 = (v13 + 63) >> 6;
    v34 = 0;
    v35 = v5 + 16;
    v36 = (v5 + 8);
    while (v4)
    {
      v16 = __clz(__rbit64(v4));
      v4 &= v4 - 1;
LABEL_12:
      v19 = v16 | (v9 << 6);
      v20 = *(v39 + 48) + *(v5 + 72) * v19;
      v21 = v5;
      v22 = *(v5 + 16);
      v7 = v37;
      v23 = v38;
      v22(v37, v20, v38);
      v24 = v41;
      v25 = sub_226EC6D84(v7, v40);
      v41 = v24;
      if (v24)
      {
        (*v36)(v7, v23);

        swift_willThrow();

        return v4;
      }

      v26 = v25;
      (*v36)(v7, v23);
      v5 = v21;
      if (v26)
      {
        *&v32[(v19 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v19;
        if (__OFADD__(v34++, 1))
        {
          __break(1u);
LABEL_17:
          v4 = sub_226EBAEF0(v32, v31, v34, v39);

          return v4;
        }
      }
    }

    v17 = v9;
    while (1)
    {
      v9 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v9 >= v15)
      {
        goto LABEL_17;
      }

      v18 = *(a1 + 8 * v9);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v4 = (v18 - 1) & v18;
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_21:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v29 = swift_slowAlloc();
  v30 = v40;

  v4 = sub_2272C5CA8(v29, v31, a1, v30);

  MEMORY[0x22AA9A450](v29, -1, -1);

  return v4;
}

uint64_t sub_226EC6D0C()
{
  v1 = v0[11];
  *v1 = v0[10];
  *(v1 + 8) = 0;
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);

  v2 = v0[1];

  return v2();
}

uint64_t sub_226EC6D84(uint64_t a1, uint64_t a2)
{
  v3 = sub_227666F90();
  v4 = *(v3 + 16);
  if (v4)
  {
    v5 = 0;
    while (2)
    {
      v6 = *(v3 + 32 + 8 * v5++);
      v7 = *(a2 + 16);
      v8 = (a2 + 32);
      do
      {
        if (!v7)
        {
          v10 = 0;
          goto LABEL_9;
        }

        v9 = *v8++;
        --v7;
      }

      while (v9 != v6);
      if (v5 != v4)
      {
        continue;
      }

      break;
    }
  }

  v10 = 1;
LABEL_9:

  return v10;
}

uint64_t sub_226EC6E14()
{
  *(*v1 + 152) = v0;

  if (v0)
  {
    v2 = sub_22748624C;
  }

  else
  {
    v2 = sub_226EC7028;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_226EC6F28(uint64_t a1)
{
  *(*v1 + 96) = a1;

  return MEMORY[0x2822009F8](sub_226EC70D4, 0, 0);
}

uint64_t sub_226EC7028()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);
  sub_226EC70B4(*(v0 + 64), *(v0 + 72));

  v3 = *(v0 + 8);

  return v3(v1, v2);
}

void sub_226EC70D4()
{
  v1 = v0[9];
  v2 = MEMORY[0x277D84F90];
  v45 = MEMORY[0x277D84F90];
  v3 = *(v1 + 16);
  if (!v3)
  {
    goto LABEL_36;
  }

  v4 = 0;
  v5 = v0[12];
  v40 = v1 + 32;
  v38 = *(v1 + 16);
  v39 = v5 & 0xC000000000000001;
  v36 = v5;
  v35 = v5 + 56;
  while (2)
  {
    v37 = v2;
LABEL_4:
    if (v4 >= v3)
    {
LABEL_40:
      __break(1u);
      goto LABEL_41;
    }

    v6 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
LABEL_41:
      __break(1u);
      return;
    }

    v7 = (v40 + 16 * v4);
    v43 = *v7;
    v44 = v7[1];
    if (v39)
    {

      sub_22766CCE0();
      sub_226E99364(0, &qword_281398B88, 0x277CE8D50);
      sub_226ECCEB4(&qword_281398B80, &qword_281398B88, 0x277CE8D50);
      sub_22766C700();
      v9 = v0[2];
      v8 = v0[3];
      v10 = v0[4];
      v11 = v0[5];
      v12 = v0[6];
    }

    else
    {
      v9 = v36;
      v13 = -1 << *(v36 + 32);
      v10 = ~v13;
      v14 = -v13;
      if (v14 < 64)
      {
        v15 = ~(-1 << v14);
      }

      else
      {
        v15 = -1;
      }

      v12 = v15 & *(v36 + 56);

      v11 = 0;
      v8 = v35;
    }

    v41 = v6;
    v42 = v6;
    v16 = (v10 + 64) >> 6;
    while (1)
    {
      if (v9 < 0)
      {
        v22 = sub_22766CD50();
        if (!v22)
        {
          goto LABEL_30;
        }

        v0[8] = v22;
        sub_226E99364(0, &qword_281398B88, 0x277CE8D50);
        swift_dynamicCast();
        v21 = v0[7];
        v19 = v11;
        v20 = v12;
        if (!v21)
        {
          goto LABEL_30;
        }
      }

      else
      {
        v17 = v11;
        v18 = v12;
        v19 = v11;
        if (!v12)
        {
          while (1)
          {
            v19 = v17 + 1;
            if (__OFADD__(v17, 1))
            {
              break;
            }

            if (v19 >= v16)
            {
              goto LABEL_30;
            }

            v18 = *(v8 + 8 * v19);
            ++v17;
            if (v18)
            {
              goto LABEL_19;
            }
          }

          __break(1u);
          goto LABEL_40;
        }

LABEL_19:
        v20 = (v18 - 1) & v18;
        v21 = *(*(v9 + 48) + ((v19 << 9) | (8 * __clz(__rbit64(v18)))));
        if (!v21)
        {
LABEL_30:

          sub_226EBB21C(v9);
          v2 = v37;
          v3 = v38;
          v4 = v41;
          if (v42 != v38)
          {
            goto LABEL_4;
          }

          goto LABEL_36;
        }
      }

      v23 = [v21 uniqueName];
      if (v23)
      {
        break;
      }

LABEL_13:

      v11 = v19;
      v12 = v20;
    }

    v24 = v23;
    v25 = v9;
    v26 = sub_22766C000();
    v28 = v27;

    if (v26 != v43 || v28 != v44)
    {
      v30 = sub_22766D190();

      v9 = v25;
      if (v30)
      {
        goto LABEL_33;
      }

      goto LABEL_13;
    }

    v9 = v25;
LABEL_33:
    sub_226EBB21C(v9);

    MEMORY[0x22AA985C0](v31);
    if (*((v45 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v45 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_22766C360();
    }

    sub_22766C3A0();
    v2 = v45;
    v3 = v38;
    v4 = v41;
    if (v42 != v38)
    {
      continue;
    }

    break;
  }

LABEL_36:
  v32 = v0[10];

  __swift_project_boxed_opaque_existential_0((v32 + 168), *(v32 + 192));
  v33 = sub_226EC2980(v2);
  v0[13] = v33;

  v34 = swift_task_alloc();
  v0[14] = v34;
  *v34 = v0;
  v34[1] = sub_226ECCF44;

  sub_226EC9C54(v33);
}