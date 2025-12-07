uint64_t sub_227182464@<X0>(void *a1@<X1>, uint64_t a2@<X8>)
{
  v4 = sub_22766B390();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A6C0();
  sub_22766B370();
  (*(v5 + 8))(v7, v4);
  v8 = a1[75];
  v9 = a1[76];
  __swift_project_boxed_opaque_existential_0(a1 + 72, v8);
  return sub_226ECF5D8(sub_2271825B8, 0, v8, MEMORY[0x277D84D38], v9, a2);
}

uint64_t sub_2271825B8@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v49 = a2;
  v3 = sub_227663180();
  v4 = *(v3 - 8);
  v53 = v3;
  v54 = v4;
  MEMORY[0x28223BE20](v3);
  v52 = v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  v7 = *v6;
  v8 = v6[1];
  v9 = *(v6 + 16);
  v10 = v6[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8580, &qword_2276777B0);
  v11 = swift_allocObject();
  v12 = v7;
  v13 = v8;

  sub_22766A070();
  *(v11 + 16) = v12;
  *(v11 + 24) = v13;
  *(v11 + 32) = v9;
  *(v11 + 40) = v10;
  swift_getKeyPath();
  v14 = sub_227664570();
  v57[3] = MEMORY[0x277D83B88];
  v57[0] = v14;
  sub_226E99364(0, &qword_281398B40, 0x277CCA9C0);

  v15 = sub_22766C820();
  sub_226ED25F8(v57, v55);
  v16 = v56;
  if (v56)
  {
    v17 = __swift_project_boxed_opaque_existential_0(v55, v56);
    v18 = *(v16 - 8);
    v19 = MEMORY[0x28223BE20](v17);
    v21 = v48 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v18 + 16))(v21, v19);
    v22 = sub_22766D170();
    (*(v18 + 8))(v21, v16);
    __swift_destroy_boxed_opaque_existential_0(v55);
  }

  else
  {
    v22 = 0;
  }

  v23 = [objc_opt_self() expressionForConstantValue_];
  swift_unknownObjectRelease();
  v24 = [objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8590 &unk_2276777E0))];

  sub_226E97D1C(v57, &unk_27D7BC990, &qword_227670A30);
  v25 = &qword_2813B2078;
  swift_beginAccess();
  v26 = v24;
  v27 = sub_22766A080();
  v29 = v28;
  MEMORY[0x22AA985C0]();
  if (*((*v29 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v29 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
LABEL_24:
    sub_22766C360();
  }

  sub_22766C3A0();
  (v27)(v57, 0);
  swift_endAccess();

  v30 = v58;
  v31 = sub_2272325B8(100);
  if (v30)
  {
    swift_setDeallocating();

    v32 = *v25;
    v33 = sub_22766A100();
    (*(*(v33 - 8) + 8))(v11 + v32, v33);
    return swift_deallocClassInstance();
  }

  else
  {
    v35 = v31;
    v48[1] = 0;
    swift_setDeallocating();

    v36 = *v25;
    v37 = sub_22766A100();
    (*(*(v37 - 8) + 8))(v11 + v36, v37);
    swift_deallocClassInstance();
    v11 = (v35 + 56);
    v38 = 1 << v35[32];
    v39 = -1;
    if (v38 < 64)
    {
      v39 = ~(-1 << v38);
    }

    v25 = v39 & *(v35 + 7);
    v40 = (v38 + 63) >> 6;
    v50 = v54 + 8;
    v51 = v54 + 16;

    v41 = 0;
    v27 = 0;
    do
    {
      if (!v25)
      {
        while (1)
        {
          v42 = v41 + 1;
          if (__OFADD__(v41, 1))
          {
            break;
          }

          if (v42 >= v40)
          {
            goto LABEL_20;
          }

          v25 = *(v11 + 8 * v42);
          ++v41;
          if (v25)
          {
            v58 = v27;
            v41 = v42;
            goto LABEL_16;
          }
        }

        __break(1u);
LABEL_23:
        __break(1u);
        goto LABEL_24;
      }

      v58 = v27;
LABEL_16:
      v43 = v35;
      v44 = v53;
      v26 = v54;
      v45 = *(v35 + 6) + *(v54 + 72) * (__clz(__rbit64(v25)) | (v41 << 6));
      v46 = v52;
      (*(v54 + 16))(v52, v45, v53);
      v27 = sub_227663130();
      (*(v26 + 1))(v46, v44);
      if (v27 < 0)
      {
        goto LABEL_23;
      }

      v25 &= v25 - 1;
      v47 = __CFADD__(v58, v27);
      v27 += v58;
      v35 = v43;
    }

    while (!v47);
    __break(1u);
LABEL_20:

    *v49 = v27;
  }

  return result;
}

uint64_t sub_227182BF0(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v40 = v6;
  v41 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v42 = &v36 - v8;
  v9 = sub_22766B390();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A6C0();

  v13 = sub_22766B380();
  v14 = sub_22766C8B0();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v39 = v4;
    v16 = v15;
    v37 = swift_slowAlloc();
    v43 = v37;
    *v16 = 141558274;
    *(v16 + 4) = 1752392040;
    *(v16 + 12) = 2080;
    sub_2276639B0();
    v38 = v10;
    sub_227186290(&qword_28139BCA8, MEMORY[0x277D501C8], MEMORY[0x277D501D0]);
    v17 = sub_22766C610();
    v19 = sub_226E97AE8(v17, v18, &v43);
    v36 = v9;
    v20 = v19;

    *(v16 + 14) = v20;
    _os_log_impl(&dword_226E8E000, v13, v14, "Cache Delete - cancelling requests: %{mask.hash}s", v16, 0x16u);
    v21 = v37;
    __swift_destroy_boxed_opaque_existential_0(v37);
    MEMORY[0x22AA9A450](v21, -1, -1);
    v22 = v16;
    v4 = v39;
    MEMORY[0x22AA9A450](v22, -1, -1);

    (*(v38 + 8))(v12, v36);
  }

  else
  {

    (*(v10 + 8))(v12, v9);
  }

  v23 = v2[75];
  v24 = v2[76];
  __swift_project_boxed_opaque_existential_0(v2 + 72, v23);
  v25 = swift_allocObject();
  *(v25 + 16) = a1;
  *(v25 + 24) = v2;

  v26 = v42;
  sub_226ECF5D8(sub_227185FF8, v25, v23, MEMORY[0x277D84F78] + 8, v24, v42);

  v27 = swift_allocObject();
  *(v27 + 16) = a1;
  v28 = swift_allocObject();
  *(v28 + 16) = sub_227086F08;
  *(v28 + 24) = v27;
  v29 = swift_allocObject();
  *(v29 + 16) = sub_227186304;
  *(v29 + 24) = v28;
  v30 = v41;
  (*(v5 + 16))(v41, v26, v4);
  v31 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v32 = (v40 + v31 + 7) & 0xFFFFFFFFFFFFFFF8;
  v33 = swift_allocObject();
  (*(v5 + 32))(v33 + v31, v30, v4);
  v34 = (v33 + v32);
  *v34 = sub_2271862D8;
  v34[1] = v29;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9360, qword_22767B900);
  sub_227669270();
  return (*(v5 + 8))(v26, v4);
}

uint64_t sub_2271830E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v26[1] = a2;
  v26[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  v5 = *(v26[0] - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v26[0]);
  v7 = v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = v26 - v9;
  v11 = sub_22766B390();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A6C0();
  sub_22766B370();
  (*(v12 + 8))(v14, v11);
  v15 = v3[75];
  v16 = v3[76];
  __swift_project_boxed_opaque_existential_0(v3 + 72, v15);
  v17 = swift_allocObject();
  *(v17 + 16) = a1;
  *(v17 + 24) = v3;

  sub_226ECF5D8(sub_227185E00, v17, v15, MEMORY[0x277D84F78] + 8, v16, v10);

  v18 = swift_allocObject();
  *(v18 + 16) = a1;
  v19 = swift_allocObject();
  *(v19 + 16) = sub_2271862F4;
  *(v19 + 24) = v18;
  v20 = swift_allocObject();
  *(v20 + 16) = sub_227186304;
  *(v20 + 24) = v19;
  v21 = v26[0];
  (*(v5 + 16))(v7, v10, v26[0]);
  v22 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v23 = swift_allocObject();
  (*(v5 + 32))(v23 + v22, v7, v21);
  v24 = (v23 + ((v6 + v22 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v24 = sub_2271862D8;
  v24[1] = v20;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9360, qword_22767B900);
  sub_227669270();
  return (*(v5 + 8))(v10, v21);
}

uint64_t sub_227183480@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_22766B390();
  v38 = *(v6 - 8);
  v39 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v40 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v32 - v13;
  v15 = *a1;
  v16 = *(*a1 + 16);
  if (!v16)
  {
    v17 = MEMORY[0x277D84F90];
    goto LABEL_5;
  }

  v32 = a2;
  v33 = v11;
  v34 = v10;
  v35 = &v32 - v13;
  v36 = v9;
  v37 = a3;
  v17 = sub_2274CD768(v16, 0);
  v18 = *(sub_2276639B0() - 8);
  sub_2274CDD80(&v41, &v17[(*(v18 + 80) + 32) & ~*(v18 + 80)], v16, v15);
  v20 = v19;
  v21 = v15;
  v22 = v41;
  v23 = v21;

  result = sub_226EBB21C(v22);
  if (v20 == v16)
  {
    v9 = v36;
    v15 = v23;
    v10 = v34;
    v14 = v35;
    a2 = v32;
    v11 = v33;
LABEL_5:
    sub_22766A6C0();
    sub_22766B370();
    (*(v38 + 8))(v8, v39);
    __swift_project_boxed_opaque_existential_0((a2 + 96), *(a2 + 120));
    sub_226F29A00(v17, v14);

    v25 = swift_allocObject();
    *(v25 + 16) = v15;
    v26 = swift_allocObject();
    *(v26 + 16) = sub_2271862F4;
    *(v26 + 24) = v25;
    v27 = swift_allocObject();
    *(v27 + 16) = sub_227086F10;
    *(v27 + 24) = v26;
    v28 = v40;
    (*(v10 + 16))(v40, v14, v9);
    v29 = (*(v10 + 80) + 16) & ~*(v10 + 80);
    v30 = swift_allocObject();
    (*(v10 + 32))(v30 + v29, v28, v9);
    v31 = (v30 + ((v11 + v29 + 7) & 0xFFFFFFFFFFFFFFF8));
    *v31 = sub_227185DD0;
    v31[1] = v27;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9360, qword_22767B900);
    sub_227669270();
    return (*(v10 + 8))(v14, v9);
  }

  __break(1u);
  return result;
}

uint64_t sub_227183890(void *a1, uint64_t a2, uint64_t a3)
{
  v94 = a3;
  v104 = sub_227663480();
  v97 = *(v104 - 8);
  MEMORY[0x28223BE20](v104);
  v89 = &v88 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v95 = &v88 - v7;
  v96 = a1;
  v8 = __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  v9 = *v8;
  v10 = v8[1];
  v11 = *(v8 + 16);
  v12 = v8[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B85E8, &qword_227677740);
  v13 = swift_allocObject();
  v14 = v9;
  v15 = v10;

  sub_22766A070();
  *(v13 + 16) = v14;
  *(v13 + 24) = v15;
  *(v13 + 32) = v11;
  *(v13 + 40) = v12;
  swift_getKeyPath();
  sub_227185E1C(a2);
  sub_227230638(v16);
  v18 = v17;

  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8588, &unk_227672CD0);
  v102[0] = v18;
  v19 = sub_226E99364(0, &qword_281398B40, 0x277CCA9C0);

  v99 = v19;
  v20 = sub_22766C820();
  sub_226ED25F8(v102, v100);
  v21 = v101;
  if (v101)
  {
    v22 = __swift_project_boxed_opaque_existential_0(v100, v101);
    v23 = *(v21 - 8);
    v24 = MEMORY[0x28223BE20](v22);
    v26 = &v88 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v23 + 16))(v26, v24);
    v27 = sub_22766D170();
    (*(v23 + 8))(v26, v21);
    __swift_destroy_boxed_opaque_existential_0(v100);
  }

  else
  {
    v27 = 0;
  }

  i = objc_opt_self();
  v28 = [i expressionForConstantValue_];
  swift_unknownObjectRelease();
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BE6B0, &unk_227671120);
  [objc_allocWithZone(v29) initWithLeftExpression:v20 rightExpression:v28 modifier:0 type:10 options:0];

  sub_226E97D1C(v102, &unk_27D7BC990, &qword_227670A30);
  swift_beginAccess();
  v30 = sub_22766A080();
  v32 = v31;
  MEMORY[0x22AA985C0]();
  if (*((*v32 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v32 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    goto LABEL_28;
  }

  while (1)
  {
    sub_22766C3A0();
    v30(v102, 0);
    swift_endAccess();

    swift_getKeyPath();
    v33 = sub_227663450();
    v103 = MEMORY[0x277D83B88];
    v102[0] = v33;

    v34 = sub_22766C820();
    sub_226ED25F8(v102, v100);
    v35 = v101;
    if (v101)
    {
      v36 = __swift_project_boxed_opaque_existential_0(v100, v101);
      v92 = &v88;
      v37 = v29;
      v38 = *(v35 - 8);
      v39 = MEMORY[0x28223BE20](v36);
      v41 = &v88 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v38 + 16))(v41, v39);
      v42 = sub_22766D170();
      (*(v38 + 8))(v41, v35);
      v29 = v37;
      __swift_destroy_boxed_opaque_existential_0(v100);
    }

    else
    {
      v42 = 0;
    }

    v43 = [i expressionForConstantValue_];
    swift_unknownObjectRelease();
    v44 = [objc_allocWithZone(v29) initWithLeftExpression:v34 rightExpression:v43 modifier:0 type:4 options:0];

    sub_226E97D1C(v102, &unk_27D7BC990, &qword_227670A30);
    swift_beginAccess();
    v45 = v44;
    v46 = sub_22766A080();
    v48 = v47;
    MEMORY[0x22AA985C0]();
    if (*((*v48 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v48 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_22766C360();
    }

    sub_22766C3A0();
    v46(v102, 0);
    swift_endAccess();

    swift_getKeyPath();
    v49 = sub_227664570();
    v103 = MEMORY[0x277D83B88];
    v102[0] = v49;

    v50 = sub_22766C820();
    sub_226ED25F8(v102, v100);
    v51 = v101;
    if (v101)
    {
      v52 = __swift_project_boxed_opaque_existential_0(v100, v101);
      v99 = &v88;
      v53 = v29;
      v54 = *(v51 - 8);
      v55 = MEMORY[0x28223BE20](v52);
      v57 = &v88 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v54 + 16))(v57, v55);
      v58 = sub_22766D170();
      (*(v54 + 8))(v57, v51);
      v29 = v53;
      __swift_destroy_boxed_opaque_existential_0(v100);
    }

    else
    {
      v58 = 0;
    }

    v59 = [i expressionForConstantValue_];
    swift_unknownObjectRelease();
    v60 = [objc_allocWithZone(v29) initWithLeftExpression:v50 rightExpression:v59 modifier:0 type:4 options:0];

    sub_226E97D1C(v102, &unk_27D7BC990, &qword_227670A30);
    swift_beginAccess();
    v61 = v60;
    v62 = sub_22766A080();
    v64 = v63;
    MEMORY[0x22AA985C0]();
    if (*((*v64 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v64 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_22766C360();
    }

    sub_22766C3A0();
    v62(v102, 0);
    swift_endAccess();

    v65 = v93;
    v66 = sub_2272328B8(100);
    v30 = v65;
    if (v65)
    {
      break;
    }

    v70 = v66;
    swift_setDeallocating();

    v71 = qword_2813B2078;
    v72 = sub_22766A100();
    (*(*(v72 - 8) + 8))(v13 + v71, v72);
    swift_deallocClassInstance();
    v73 = v70;
    v74 = 0;
    v75 = v70 + 56;
    v76 = 1 << v70[32];
    v77 = -1;
    if (v76 < 64)
    {
      v77 = ~(-1 << v76);
    }

    v13 = v77 & *(v70 + 7);
    v78 = (v76 + 63) >> 6;
    v91 = v97 + 32;
    v92 = (v97 + 16);
    v93 = (v97 + 8);
    v90 = xmmword_227670CD0;
    v79 = v89;
    for (i = v70; v13; v73 = i)
    {
      v29 = v74;
LABEL_24:
      v80 = v97;
      v81 = v95;
      v82 = v104;
      (*(v97 + 16))(v95, *(v73 + 6) + *(v97 + 72) * (__clz(__rbit64(v13)) | (v29 << 6)), v104);
      (*(v80 + 32))(v79, v81, v82);
      v83 = sub_2276633E0();
      v84 = v96;
      sub_2270781A4(v83, v85, v96);

      v99 = *__swift_project_boxed_opaque_existential_0((v94 + 712), *(v94 + 736));
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BC980, &unk_227671070);
      v86 = swift_allocObject();
      *(v86 + 16) = v90;
      *(v86 + 32) = sub_2276633E0();
      *(v86 + 40) = v87;
      sub_2272D752C(1, v86, v84);
      v30 = 0;
      v13 &= v13 - 1;

      (*v93)(v79, v104);
      v74 = v29;
    }

    while (1)
    {
      v29 = v74 + 1;
      if (__OFADD__(v74, 1))
      {
        break;
      }

      if (v29 >= v78)
      {
      }

      v13 = *&v75[8 * v29];
      ++v74;
      if (v13)
      {
        goto LABEL_24;
      }
    }

    __break(1u);
LABEL_28:
    sub_22766C360();
  }

  swift_setDeallocating();

  v67 = qword_2813B2078;
  v68 = sub_22766A100();
  (*(*(v68 - 8) + 8))(v13 + v67, v68);
  return swift_deallocClassInstance();
}

uint64_t sub_2271844B8(void *a1, uint64_t a2)
{
  v94 = sub_22766B390();
  v87 = *(v94 - 8);
  MEMORY[0x28223BE20](v94);
  v93 = &v84 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_227663480();
  v95 = *(v5 - 8);
  v96 = v5;
  MEMORY[0x28223BE20](v5);
  v85 = &v84 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = a1[3];
  v97 = a1;
  v8 = __swift_project_boxed_opaque_existential_0(a1, v7);
  v9 = *v8;
  v10 = v8[1];
  v11 = *(v8 + 16);
  v12 = v8[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B85E8, &qword_227677740);
  v13 = swift_allocObject();
  v14 = v9;
  v15 = v10;

  sub_22766A070();
  *(v13 + 16) = v14;
  *(v13 + 24) = v15;
  *(v13 + 32) = v11;
  *(v13 + 40) = v12;
  swift_getKeyPath();
  sub_227185E1C(a2);
  sub_227230638(v16);
  v18 = v17;

  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8588, &unk_227672CD0);
  v101[0] = v18;
  sub_226E99364(0, &qword_281398B40, 0x277CCA9C0);

  v19 = sub_22766C820();
  sub_226ED25F8(v101, v99);
  v20 = v100;
  if (v100)
  {
    v21 = __swift_project_boxed_opaque_existential_0(v99, v100);
    v22 = *(v20 - 8);
    v23 = MEMORY[0x28223BE20](v21);
    v25 = &v84 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v22 + 16))(v25, v23);
    v26 = sub_22766D170();
    (*(v22 + 8))(v25, v20);
    __swift_destroy_boxed_opaque_existential_0(v99);
  }

  else
  {
    v26 = 0;
  }

  v103 = objc_opt_self();
  v27 = [v103 expressionForConstantValue_];
  swift_unknownObjectRelease();
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BE6B0, &unk_227671120);
  [objc_allocWithZone(v98) initWithLeftExpression:v19 rightExpression:v27 modifier:0 type:10 options:0];

  sub_226E97D1C(v101, &unk_27D7BC990, &qword_227670A30);
  swift_beginAccess();
  v28 = sub_22766A080();
  v30 = v29;
  MEMORY[0x22AA985C0]();
  if (*((*v30 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v30 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    goto LABEL_25;
  }

  while (1)
  {
    sub_22766C3A0();
    v28(v101, 0);
    swift_endAccess();

    swift_getKeyPath();
    v31 = sub_227663450();
    v102 = MEMORY[0x277D83B88];
    v101[0] = v31;

    v32 = sub_22766C820();
    sub_226ED25F8(v101, v99);
    v33 = v100;
    if (v100)
    {
      v34 = __swift_project_boxed_opaque_existential_0(v99, v100);
      v91 = &v84;
      v35 = *(v33 - 8);
      v36 = MEMORY[0x28223BE20](v34);
      v38 = &v84 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v35 + 16))(v38, v36);
      v39 = sub_22766D170();
      (*(v35 + 8))(v38, v33);
      __swift_destroy_boxed_opaque_existential_0(v99);
    }

    else
    {
      v39 = 0;
    }

    v40 = [v103 expressionForConstantValue_];
    swift_unknownObjectRelease();
    v41 = [objc_allocWithZone(v98) initWithLeftExpression:v32 rightExpression:v40 modifier:0 type:4 options:0];

    sub_226E97D1C(v101, &unk_27D7BC990, &qword_227670A30);
    swift_beginAccess();
    v42 = v41;
    v43 = sub_22766A080();
    v45 = v44;
    MEMORY[0x22AA985C0]();
    if (*((*v45 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v45 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_22766C360();
    }

    sub_22766C3A0();
    v43(v101, 0);
    swift_endAccess();

    swift_getKeyPath();
    v46 = sub_227664570();
    v102 = MEMORY[0x277D83B88];
    v101[0] = v46;

    v47 = sub_22766C820();
    sub_226ED25F8(v101, v99);
    v48 = v100;
    if (v100)
    {
      v49 = __swift_project_boxed_opaque_existential_0(v99, v100);
      v50 = *(v48 - 8);
      v51 = MEMORY[0x28223BE20](v49);
      v53 = &v84 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v50 + 16))(v53, v51);
      v54 = sub_22766D170();
      (*(v50 + 8))(v53, v48);
      __swift_destroy_boxed_opaque_existential_0(v99);
    }

    else
    {
      v54 = 0;
    }

    v55 = [v103 expressionForConstantValue_];
    swift_unknownObjectRelease();
    v56 = [objc_allocWithZone(v98) initWithLeftExpression:v47 rightExpression:v55 modifier:0 type:4 options:0];

    sub_226E97D1C(v101, &unk_27D7BC990, &qword_227670A30);
    swift_beginAccess();
    v57 = v56;
    v28 = sub_22766A080();
    v59 = v58;
    MEMORY[0x22AA985C0]();
    if (*((*v59 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v59 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_22766C360();
    }

    sub_22766C3A0();
    v28(v101, 0);
    swift_endAccess();

    v60 = v92;
    v61 = sub_2272328B8(100);
    v62 = v97;
    if (v60)
    {
      swift_setDeallocating();

      v63 = qword_2813B2078;
      v64 = sub_22766A100();
      (*(*(v64 - 8) + 8))(v13 + v63, v64);
      return swift_deallocClassInstance();
    }

    v66 = v61;
    swift_setDeallocating();

    v67 = qword_2813B2078;
    v68 = sub_22766A100();
    (*(*(v68 - 8) + 8))(v13 + v67, v68);
    swift_deallocClassInstance();
    v69 = sub_22717DFA0(v66);

    v70 = v69;
    v90 = *(v69 + 16);
    if (!v90)
    {
      break;
    }

    v71 = 0;
    v13 = v95 + 16;
    v88 = "AssetDataStore.swift";
    v89 = "deleteBundleData(_:)";
    ++v87;
    v91 = (v95 + 8);
    v86 = xmmword_227670CD0;
    v72 = v96;
    v73 = v85;
    v92 = v69;
    while (v71 < *(v70 + 16))
    {
      v74 = (*(v95 + 80) + 32) & ~*(v95 + 80);
      v75 = *(v95 + 72);
      v98 = v71;
      v103 = 0;
      v76 = *(v95 + 16);
      v76(v73, v70 + v74 + v75 * v71, v72);
      v77 = sub_2276633E0();
      v78 = v103;
      sub_2270781A4(v77, v79, v62);
      if (v78)
      {
        (*v91)(v73, v96);
      }

      v80 = v93;
      sub_22766A6C0();
      sub_22766B370();
      (*v87)(v80, v94);
      v81 = __swift_project_boxed_opaque_existential_0(v62, v62[3]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B85F8, &unk_227679DE0);
      v82 = swift_allocObject();
      *(v82 + 16) = v86;
      v83 = v82 + v74;
      v28 = v96;
      v76(v83, v73, v96);
      sub_227556A7C(v82, v81[1], *(v81 + 16), v81[3]);
      v71 = (v98 + 1);

      (*v91)(v73, v28);
      v62 = v97;
      v72 = v28;
      v70 = v92;
      if (v90 == v71)
      {
      }
    }

    __break(1u);
LABEL_25:
    sub_22766C360();
  }
}

uint64_t sub_227185188(uint64_t *a1)
{
  v1 = *a1;
  *(swift_allocObject() + 16) = v1;

  return sub_227669280();
}

void sub_22718520C(uint64_t a1@<X0>, void *a2@<X8>)
{
  v50 = a2;
  v64 = sub_22766B390();
  v3 = *(v64 - 8);
  MEMORY[0x28223BE20](v64);
  v5 = &v48 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v49 = &v48 - v7;
  v8 = sub_227663180();
  MEMORY[0x28223BE20](v8);
  v10 = &v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v65 = &v48 - v14;
  v15 = a1 + 56;
  v16 = 1 << *(a1 + 32);
  v17 = -1;
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  v18 = v17 & *(a1 + 56);
  v19 = (v16 + 63) >> 6;
  v60 = v13 + 16;
  v61 = v13;
  v59 = (v13 + 8);
  v20 = (v3 + 8);
  v21 = v12;
  v62 = v20;
  v63 = a1;

  v22 = 0;
  v67 = 0;
  *&v23 = 141558274;
  v53 = v23;
  v66 = v10;
  v51 = v19;
  v52 = v5;
  while (v18)
  {
LABEL_11:
    v27 = *(v61 + 16);
    v28 = v65;
    v27(v65, *(v63 + 48) + *(v61 + 72) * (__clz(__rbit64(v18)) | (v22 << 6)), v21);
    sub_22766A6C0();
    v27(v66, v28, v21);
    v29 = v21;
    v30 = sub_22766B380();
    v31 = sub_22766C8B0();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v57 = v31;
      v33 = v32;
      v58 = swift_slowAlloc();
      v68 = v58;
      *v33 = v53;
      *(v33 + 4) = 1752392040;
      *(v33 + 12) = 2080;
      sub_227186290(&qword_28139BD48, MEMORY[0x277D4FCA8], MEMORY[0x277D4FCC0]);
      v55 = v30;
      v34 = v66;
      v54 = sub_22766D140();
      v35 = v29;
      v37 = v36;
      v56 = *v59;
      v56(v34, v35);
      v19 = v51;
      v38 = sub_226E97AE8(v54, v37, &v68);
      v29 = v35;

      *(v33 + 14) = v38;
      v39 = v55;
      _os_log_impl(&dword_226E8E000, v55, v57, "Found expired asset entry: %{mask.hash}s", v33, 0x16u);
      v40 = v58;
      __swift_destroy_boxed_opaque_existential_0(v58);
      MEMORY[0x22AA9A450](v40, -1, -1);
      v41 = v33;
      v24 = v56;
      MEMORY[0x22AA9A450](v41, -1, -1);

      v5 = v52;
      (*v62)(v52, v64);
    }

    else
    {

      v24 = *v59;
      (*v59)(v66, v29);
      (*v62)(v5, v64);
    }

    v18 &= v18 - 1;
    v25 = v65;
    v67 += sub_227663130();
    v24(v25, v29);
    v21 = v29;
  }

  while (1)
  {
    v26 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      __break(1u);
      return;
    }

    if (v26 >= v19)
    {
      break;
    }

    v18 = *(v15 + 8 * v26);
    ++v22;
    if (v18)
    {
      v22 = v26;
      goto LABEL_11;
    }
  }

  v42 = v49;
  sub_22766A6C0();
  v43 = sub_22766B380();
  v44 = sub_22766C8B0();
  v45 = os_log_type_enabled(v43, v44);
  v46 = v67;
  if (v45)
  {
    v47 = swift_slowAlloc();
    *v47 = 134349056;
    *(v47 + 4) = v46;
    _os_log_impl(&dword_226E8E000, v43, v44, "Total size in bytes of expired entries: %{public}llu", v47, 0xCu);
    MEMORY[0x22AA9A450](v47, -1, -1);
  }

  (*v62)(v42, v64);
  *v50 = v46;
}

uint64_t sub_227185740(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v5 = *a1;
  v6 = swift_allocObject();
  v6[2] = a2;
  v6[3] = a3;
  v6[4] = v5;

  return sub_227669270();
}

uint64_t sub_2271857D8(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v5 = *a1;
  v6 = swift_allocObject();
  v6[2] = a2;
  v6[3] = a3;
  v6[4] = v5;

  return sub_227669270();
}

uint64_t sub_22718587C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = swift_allocObject();
  *(v5 + 16) = a2;
  *(v5 + 24) = a3;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9360, qword_22767B900);

  return sub_227669270();
}

unint64_t sub_227185914(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v42 = a2;
  v43 = a3;
  v5 = sub_227663480();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v41 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v35 - v9;
  v11 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (v11)
  {
    v35 = v3;
    v49 = MEMORY[0x277D84F90];
    sub_226F1F568(0, v11, 0);
    v47 = a1 + 56;
    v48 = v49;
    result = sub_22766CC90();
    v13 = result;
    v14 = 0;
    v39 = v6 + 8;
    v40 = v6 + 16;
    v37 = v11;
    v38 = v6 + 32;
    v36 = a1 + 64;
    while ((v13 & 0x8000000000000000) == 0 && v13 < 1 << *(a1 + 32))
    {
      v16 = v13 >> 6;
      if ((*(v47 + 8 * (v13 >> 6)) & (1 << v13)) == 0)
      {
        goto LABEL_23;
      }

      v17 = *(a1 + 36);
      v44 = v14;
      v45 = v17;
      v18 = *(a1 + 48);
      v46 = *(v6 + 72);
      v19 = v41;
      (*(v6 + 16))(v41, v18 + v46 * v13, v5);
      sub_227663470();
      (*(v6 + 8))(v19, v5);
      v20 = v48;
      v49 = v48;
      v21 = a1;
      v23 = *(v48 + 16);
      v22 = *(v48 + 24);
      v24 = v23 + 1;
      if (v23 >= v22 >> 1)
      {
        v48 = v23 + 1;
        sub_226F1F568((v22 > 1), v23 + 1, 1);
        v24 = v48;
        v20 = v49;
      }

      *(v20 + 16) = v24;
      v25 = (*(v6 + 80) + 32) & ~*(v6 + 80);
      v48 = v20;
      result = (*(v6 + 32))(v20 + v25 + v23 * v46, v10, v5);
      v15 = 1 << *(v21 + 32);
      if (v13 >= v15)
      {
        goto LABEL_24;
      }

      v26 = *(v47 + 8 * v16);
      if ((v26 & (1 << v13)) == 0)
      {
        goto LABEL_25;
      }

      a1 = v21;
      if (v45 != *(v21 + 36))
      {
        goto LABEL_26;
      }

      v27 = v26 & (-2 << (v13 & 0x3F));
      if (v27)
      {
        v15 = __clz(__rbit64(v27)) | v13 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v28 = v10;
        v29 = v5;
        v30 = v16 << 6;
        v31 = v16 + 1;
        v32 = (v36 + 8 * v16);
        while (v31 < (v15 + 63) >> 6)
        {
          v34 = *v32++;
          v33 = v34;
          v30 += 64;
          ++v31;
          if (v34)
          {
            result = sub_226EB526C(v13, v45, 0);
            v15 = __clz(__rbit64(v33)) + v30;
            goto LABEL_19;
          }
        }

        result = sub_226EB526C(v13, v45, 0);
LABEL_19:
        v5 = v29;
        v10 = v28;
      }

      v14 = v44 + 1;
      v13 = v15;
      if (v44 + 1 == v37)
      {
        return v48;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
  }

  return result;
}

unint64_t *sub_227185D74@<X0>(unint64_t *result@<X0>, unint64_t *a2@<X8>)
{
  v3 = *(v2 + 16);
  v4 = v3 >= *result;
  v5 = v3 - *result;
  if (v4)
  {
    *a2 = v5;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_227185E1C(uint64_t a1)
{
  v2 = sub_2276639B0();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v16[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16[2] = MEMORY[0x277D84FA0];
  v6 = 1 << *(a1 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a1 + 56);
  v9 = (v6 + 63) >> 6;
  v15 = v3 + 16;

  v10 = 0;
  while (v8)
  {
    v11 = v10;
LABEL_10:
    v12 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    (*(v3 + 16))(v5, *(a1 + 48) + *(v3 + 72) * (v12 | (v11 << 6)), v2);
    v13 = sub_227663960();
    if (v14)
    {
      sub_2270AE890(v16, v13, v14);
    }

    (*(v3 + 8))(v5, v2);
    v10 = v11;
  }

  while (1)
  {
    v11 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v11 >= v9)
    {

      return;
    }

    v8 = *(a1 + 56 + 8 * v11);
    ++v10;
    if (v8)
    {
      goto LABEL_10;
    }
  }

  __break(1u);
}

uint64_t objectdestroy_36Tm(void (*a1)(void), void (*a2)(void))
{
  a1(*(v2 + 24));
  a2(*(v2 + 32));

  return MEMORY[0x2821FE8E8](v2, 40, 7);
}

uint64_t sub_227186164(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t, unint64_t, uint64_t, uint64_t))
{
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a3, a4) - 8);
  v9 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v10 = (v5 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];

  return a5(a1, a2, v5 + v9, v11, v12);
}

unint64_t sub_22718622C()
{
  result = qword_281398FB0;
  if (!qword_281398FB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7BA0C8, qword_227677C60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281398FB0);
  }

  return result;
}

uint64_t sub_227186290(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

id sub_22718631C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for OfflineScriptBag();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_227186350()
{
  v1 = sub_227669A70();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v96 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + 16);
  v6 = *(v0 + 32);
  ObjectType = swift_getObjectType();
  v119 = v5;
  v8 = *MEMORY[0x277D4EDC8];
  v9 = *(v2 + 104);
  v114 = v2 + 104;
  v117 = v9;
  v9(v4, v8, v1);
  swift_allocObject();
  swift_weakInit();
  v110 = sub_227668700();
  swift_unknownObjectRetain_n();
  v111 = v6;
  v112 = ObjectType;
  sub_227669EA0();

  v116 = *(v2 + 8);
  v118 = v1;
  v116(v4, v1);
  v115 = v2 + 8;
  swift_unknownObjectRelease();
  v119 = v5;
  v10 = v117;
  v117(v4, *MEMORY[0x277D4EDB8], v1);
  swift_allocObject();
  v113 = v0;
  swift_weakInit();
  swift_unknownObjectRetain();
  sub_227669E90();

  v11 = v118;
  v116(v4, v118);
  swift_unknownObjectRelease();
  v119 = v5;
  v10(v4, *MEMORY[0x277D4ED38], v11);
  swift_allocObject();
  swift_weakInit();
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBAA0, &qword_22767BB38);
  v110 = MEMORY[0x277D53728];
  sub_226E9CFD0(&qword_28139B3B0, &qword_27D7BBAA0, &qword_22767BB38, MEMORY[0x277D53728]);
  v109 = MEMORY[0x277D53730];
  sub_226E9CFD0(&qword_28139B3A8, &qword_27D7BBAA0, &qword_22767BB38, MEMORY[0x277D53730]);
  sub_227669EA0();

  v116(v4, v11);
  swift_unknownObjectRelease();
  v119 = v5;
  v102 = *MEMORY[0x277D4EAE0];
  v12 = v117;
  (v117)(v4);
  swift_allocObject();
  swift_weakInit();
  v13 = sub_227665350();
  v14 = sub_227667670();
  swift_unknownObjectRetain();
  v107 = v14;
  sub_227669E80();

  v15 = v116;
  v116(v4, v118);
  swift_unknownObjectRelease();
  v119 = v5;
  v100 = *MEMORY[0x277D4EDE0];
  v12(v4);
  v16 = v12;
  swift_allocObject();
  swift_weakInit();
  swift_unknownObjectRetain();
  sub_227669E80();

  v15(v4, v118);
  swift_unknownObjectRelease();
  v119 = v5;
  v101 = *MEMORY[0x277D4E340];
  v12(v4);
  swift_allocObject();
  swift_weakInit();
  swift_unknownObjectRetain();
  sub_227669EA0();

  v17 = v118;
  v15(v4, v118);
  swift_unknownObjectRelease();
  v119 = v5;
  v104 = *MEMORY[0x277D4ED10];
  v16(v4);
  swift_allocObject();
  swift_weakInit();
  v103 = sub_227665AD0();
  swift_unknownObjectRetain();
  v108 = v13;
  sub_227669E80();

  v18 = v116;
  v116(v4, v17);
  swift_unknownObjectRelease();
  v119 = v5;
  v117(v4, *MEMORY[0x277D4E360], v17);
  swift_allocObject();
  swift_weakInit();
  swift_unknownObjectRetain();

  sub_227669EB0();

  v19 = v118;
  v18(v4, v118);

  swift_unknownObjectRelease();
  v119 = v5;
  v20 = v117;
  v117(v4, *MEMORY[0x277D4E358], v19);
  swift_allocObject();
  swift_weakInit();
  swift_unknownObjectRetain();

  sub_227669EB0();

  v21 = v116;
  v116(v4, v19);

  swift_unknownObjectRelease();
  v119 = v5;
  v99 = *MEMORY[0x277D4ED08];
  v20(v4);
  swift_allocObject();
  swift_weakInit();
  swift_unknownObjectRetain();
  sub_227669EA0();

  v22 = v118;
  v21(v4, v118);
  swift_unknownObjectRelease();
  v119 = v5;
  v117(v4, *MEMORY[0x277D4E928], v22);
  swift_allocObject();
  swift_weakInit();
  swift_unknownObjectRetain();
  sub_227669EA0();

  v23 = v118;
  v21(v4, v118);
  swift_unknownObjectRelease();
  v119 = v5;
  v24 = v117;
  v117(v4, *MEMORY[0x277D4EC30], v23);
  swift_allocObject();
  swift_weakInit();
  swift_unknownObjectRetain();

  sub_227669EB0();

  v25 = v116;
  v116(v4, v23);

  swift_unknownObjectRelease();
  v119 = v5;
  v24(v4, *MEMORY[0x277D4EE08], v23);
  swift_allocObject();
  swift_weakInit();
  sub_227666E80();
  swift_unknownObjectRetain();
  sub_227669E80();

  v26 = v118;
  v25(v4, v118);
  swift_unknownObjectRelease();
  v119 = v5;
  v117(v4, *MEMORY[0x277D4ED40], v26);
  swift_allocObject();
  swift_weakInit();
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBAA8, &qword_22767BB40);
  sub_226E9CFD0(&qword_28139B3D0, &qword_27D7BBAA8, &qword_22767BB40, v110);
  sub_226E9CFD0(&qword_28139B3C8, &qword_27D7BBAA8, &qword_22767BB40, v109);
  sub_227669EA0();

  v27 = v116;
  v116(v4, v118);
  swift_unknownObjectRelease();
  v119 = v5;
  v106 = *MEMORY[0x277D4E9B0];
  v28 = v117;
  (v117)(v4);
  swift_allocObject();
  swift_weakInit();
  swift_unknownObjectRetain();
  sub_227669EA0();

  v27(v4, v118);
  swift_unknownObjectRelease();
  v119 = v5;
  v105 = *MEMORY[0x277D4ED28];
  v28(v4);
  swift_allocObject();
  swift_weakInit();
  sub_2276690F0();
  swift_unknownObjectRetain();
  sub_227669EA0();

  v29 = v118;
  v27(v4, v118);
  swift_unknownObjectRelease();
  v119 = v5;
  (v28)(v4, *MEMORY[0x277D4EDC0], v29);
  swift_allocObject();
  swift_weakInit();
  swift_unknownObjectRetain();
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBAB0, &qword_22767BB48);
  v30 = v110;
  sub_226E9CFD0(&qword_28139B430, &qword_27D7BBAB0, &qword_22767BB48, v110);
  v31 = v109;
  sub_226E9CFD0(&qword_28139B428, &qword_27D7BBAB0, &qword_22767BB48, v109);
  sub_227669EA0();

  v32 = v118;
  v116(v4, v118);
  swift_unknownObjectRelease();
  v119 = v5;
  v117(v4, *MEMORY[0x277D4EBE8], v32);
  swift_allocObject();
  swift_weakInit();
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBAB8, &qword_22767BB50);
  sub_226E9CFD0(&qword_28139B450, &qword_27D7BBAB8, &qword_22767BB50, v30);
  sub_226E9CFD0(&qword_28139B448, &qword_27D7BBAB8, &qword_22767BB50, v31);
  sub_227669EA0();

  v33 = v118;
  v116(v4, v118);
  swift_unknownObjectRelease();
  v119 = v5;
  v117(v4, *MEMORY[0x277D4ECC8], v33);
  swift_allocObject();
  swift_weakInit();
  swift_unknownObjectRetain();
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBAC0, &qword_22767BB58);
  sub_226E9CFD0(&qword_28139B3E0, &qword_27D7BBAC0, &qword_22767BB58, v110);
  sub_226E9CFD0(&qword_28139B3D8, &qword_27D7BBAC0, &qword_22767BB58, v109);
  sub_227669EA0();

  v34 = v118;
  v116(v4, v118);
  swift_unknownObjectRelease();
  v119 = v5;
  v35 = v117;
  v117(v4, *MEMORY[0x277D4EE18], v34);
  swift_allocObject();
  swift_weakInit();
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBAC8, &qword_22767BB60);
  v36 = v110;
  sub_226E9CFD0(&qword_28139B310, &qword_27D7BBAC8, &qword_22767BB60, v110);
  v37 = v109;
  sub_226E9CFD0(&qword_28139B308, &qword_27D7BBAC8, &qword_22767BB60, v109);
  sub_227669EA0();

  v38 = v118;
  v116(v4, v118);
  swift_unknownObjectRelease();
  v119 = v5;
  v35(v4, *MEMORY[0x277D4ED70], v38);
  swift_allocObject();
  swift_weakInit();
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBAD0, &qword_22767BB68);
  sub_226E9CFD0(&qword_28139B3A0, &qword_27D7BBAD0, &qword_22767BB68, v36);
  sub_226E9CFD0(&qword_28139B398, &qword_27D7BBAD0, &qword_22767BB68, v37);
  sub_227669EA0();

  v39 = v116;
  v116(v4, v38);
  swift_unknownObjectRelease();
  v119 = v5;
  v117(v4, *MEMORY[0x277D4ED78], v38);
  swift_allocObject();
  swift_weakInit();
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBAD8, &qword_22767BB70);
  sub_226E9CFD0(&qword_28139B390, &qword_27D7BBAD8, &qword_22767BB70, v110);
  sub_226E9CFD0(&qword_28139B388, &qword_27D7BBAD8, &qword_22767BB70, v109);
  sub_227669EA0();

  v40 = v118;
  v39(v4, v118);
  swift_unknownObjectRelease();
  v119 = v5;
  v41 = v117;
  v117(v4, *MEMORY[0x277D4ED48], v40);
  swift_allocObject();
  swift_weakInit();
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBAE0, &qword_22767BB78);
  sub_226E9CFD0(&qword_28139B3C0, &qword_27D7BBAE0, &qword_22767BB78, v110);
  sub_226E9CFD0(&qword_28139B3B8, &qword_27D7BBAE0, &qword_22767BB78, v109);
  sub_227669EA0();

  v116(v4, v40);
  swift_unknownObjectRelease();
  v119 = v5;
  v41(v4, *MEMORY[0x277D4ED80], v40);
  swift_allocObject();
  swift_weakInit();
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBAE8, &qword_22767BB80);
  sub_226E9CFD0(&qword_28139B380, &qword_27D7BBAE8, &qword_22767BB80, v110);
  v42 = v109;
  sub_226E9CFD0(&qword_28139B378, &qword_27D7BBAE8, &qword_22767BB80, v109);
  sub_227669EA0();

  v43 = v118;
  v116(v4, v118);
  swift_unknownObjectRelease();
  v119 = v5;
  v117(v4, *MEMORY[0x277D4ED88], v43);
  swift_allocObject();
  swift_weakInit();
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBAF0, &qword_22767BB88);
  v44 = v110;
  sub_226E9CFD0(&qword_28139B370, &qword_27D7BBAF0, &qword_22767BB88, v110);
  sub_226E9CFD0(&qword_28139B368, &qword_27D7BBAF0, &qword_22767BB88, v42);
  sub_227669EA0();

  v45 = v118;
  v116(v4, v118);
  swift_unknownObjectRelease();
  v119 = v5;
  v117(v4, *MEMORY[0x277D4ED98], v45);
  swift_allocObject();
  swift_weakInit();
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBAF8, &unk_22767BB90);
  sub_226E9CFD0(&qword_28139B350, &qword_27D7BBAF8, &unk_22767BB90, v44);
  sub_226E9CFD0(&qword_28139B348, &qword_27D7BBAF8, &unk_22767BB90, v109);
  sub_227669EA0();

  v116(v4, v45);
  swift_unknownObjectRelease();
  v119 = v5;
  v117(v4, *MEMORY[0x277D4E958], v45);
  swift_allocObject();
  swift_weakInit();
  swift_unknownObjectRetain();
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBB00, &unk_22768B330);
  v97 = sub_226E9CFD0(&qword_28139B2C0, &qword_27D7BBB00, &unk_22768B330, v110);
  v96 = sub_226E9CFD0(&qword_28139B2B8, &qword_27D7BBB00, &unk_22768B330, v109);
  sub_227669EA0();

  v46 = v116;
  v116(v4, v45);
  swift_unknownObjectRelease();
  v119 = v5;
  v47 = v117;
  v117(v4, *MEMORY[0x277D4E9A0], v45);
  swift_allocObject();
  swift_weakInit();
  swift_unknownObjectRetain();
  sub_227669EA0();

  v46(v4, v45);
  swift_unknownObjectRelease();
  v119 = v5;
  v47(v4, *MEMORY[0x277D4E8E8], v45);
  swift_allocObject();
  swift_weakInit();
  swift_unknownObjectRetain();
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBB08, &unk_22767BBA0);
  v97 = sub_226E9CFD0(&qword_28139B300, &qword_27D7BBB08, &unk_22767BBA0, v110);
  v96 = sub_226E9CFD0(&qword_28139B2F8, &qword_27D7BBB08, &unk_22767BBA0, v109);
  sub_227669EA0();

  v116(v4, v45);
  swift_unknownObjectRelease();
  v119 = v5;
  v48 = v117;
  v117(v4, *MEMORY[0x277D4E8C8], v45);
  swift_allocObject();
  swift_weakInit();
  swift_unknownObjectRetain();
  sub_227669EA0();

  v116(v4, v45);
  swift_unknownObjectRelease();
  v119 = v5;
  v48(v4, *MEMORY[0x277D4EBF8], v45);
  swift_allocObject();
  swift_weakInit();
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBB10, &unk_22768B320);
  v49 = v110;
  sub_226E9CFD0(&qword_28139B400, &qword_27D7BBB10, &unk_22768B320, v110);
  sub_226E9CFD0(&qword_28139B3F8, &qword_27D7BBB10, &unk_22768B320, v109);
  sub_227669EA0();

  v50 = v118;
  v116(v4, v118);
  swift_unknownObjectRelease();
  v119 = v5;
  v51 = v117;
  v117(v4, *MEMORY[0x277D4EC38], v50);
  swift_allocObject();
  swift_weakInit();
  swift_unknownObjectRetain();
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBB18, &qword_22767BBB0);
  sub_226E9CFD0(&qword_28139B2D0, &qword_27D7BBB18, &qword_22767BBB0, v49);
  v52 = v109;
  sub_226E9CFD0(&qword_28139B2C8, &qword_27D7BBB18, &qword_22767BBB0, v109);
  sub_227669EA0();

  v53 = v118;
  v116(v4, v118);
  swift_unknownObjectRelease();
  v119 = v5;
  v51(v4, *MEMORY[0x277D4ED60], v53);
  swift_allocObject();
  swift_weakInit();
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBB20, &qword_22767BBB8);
  sub_226E9CFD0(&qword_28139B2F0, &qword_27D7BBB20, &qword_22767BBB8, v110);
  sub_226E9CFD0(&qword_28139B2E8, &qword_27D7BBB20, &qword_22767BBB8, v52);
  sub_227669EA0();

  v54 = v118;
  v55 = v116;
  v116(v4, v118);
  swift_unknownObjectRelease();
  v119 = v5;
  v117(v4, *MEMORY[0x277D4EBA8], v54);
  swift_allocObject();
  swift_weakInit();
  swift_unknownObjectRetain();
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBB28, &qword_22767BBC0);
  sub_226E9CFD0(&qword_28139B410, &qword_27D7BBB28, &qword_22767BBC0, v110);
  sub_226E9CFD0(&qword_28139B408, &qword_27D7BBB28, &qword_22767BBC0, v109);
  sub_227669EA0();

  v56 = v118;
  v55(v4, v118);
  swift_unknownObjectRelease();
  v119 = v5;
  v57 = v117;
  v117(v4, *MEMORY[0x277D4EC50], v56);
  swift_allocObject();
  swift_weakInit();
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBB30, &qword_22767BBC8);
  sub_226E9CFD0(&qword_28139B3F0, &qword_27D7BBB30, &qword_22767BBC8, v110);
  sub_226E9CFD0(&qword_28139B3E8, &qword_27D7BBB30, &qword_22767BBC8, v109);
  sub_227669EA0();

  v58 = v118;
  v59 = v116;
  v116(v4, v118);
  swift_unknownObjectRelease();
  v119 = v5;
  v57(v4, *MEMORY[0x277D4ECB8], v58);
  swift_allocObject();
  swift_weakInit();
  swift_unknownObjectRetain();
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBB38, &unk_22767BBD0);
  v60 = v110;
  sub_226E9CFD0(&qword_28139B2E0, &qword_27D7BBB38, &unk_22767BBD0, v110);
  sub_226E9CFD0(&qword_28139B2D8, &qword_27D7BBB38, &unk_22767BBD0, v109);
  sub_227669EA0();

  v61 = v118;
  v59(v4, v118);
  swift_unknownObjectRelease();
  v119 = v5;
  v117(v4, *MEMORY[0x277D4EA48], v61);
  swift_allocObject();
  swift_weakInit();
  swift_unknownObjectRetain();
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBB40, &unk_22768B310);
  v98 = sub_2276638D0();
  sub_226E9CFD0(&qword_28139B440, &qword_27D7BBB40, &unk_22768B310, v60);
  v62 = v109;
  sub_226E9CFD0(&qword_28139B438, &qword_27D7BBB40, &unk_22768B310, v109);
  sub_227669E80();

  v63 = v118;
  v116(v4, v118);
  swift_unknownObjectRelease();
  v119 = v5;
  v117(v4, *MEMORY[0x277D4EA58], v63);
  swift_allocObject();
  swift_weakInit();
  swift_unknownObjectRetain();
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBB48, &unk_22767BBE0);
  sub_226E9CFD0(&qword_28139B420, &qword_27D7BBB48, &unk_22767BBE0, v110);
  sub_226E9CFD0(&qword_28139B418, &qword_27D7BBB48, &unk_22767BBE0, v62);
  sub_227669E80();

  v64 = v118;
  v116(v4, v118);
  swift_unknownObjectRelease();
  v119 = v5;
  v65 = v64;
  v66 = v117;
  v117(v4, *MEMORY[0x277D4ECB0], v65);
  swift_allocObject();
  swift_weakInit();
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBB50, &unk_22768B300);
  v67 = v110;
  sub_226E9CFD0(&qword_28139B360, &qword_27D7BBB50, &unk_22768B300, v110);
  sub_226E9CFD0(&qword_28139B358, &qword_27D7BBB50, &unk_22768B300, v109);
  sub_227669EA0();

  v68 = v118;
  v69 = v116;
  v116(v4, v118);
  swift_unknownObjectRelease();
  v119 = v5;
  v66(v4, *MEMORY[0x277D4EC90], v68);
  swift_allocObject();
  swift_weakInit();
  swift_unknownObjectRetain();
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBB58, &unk_22767BBF0);
  sub_226E9CFD0(&qword_28139B340, &qword_27D7BBB58, &unk_22767BBF0, v67);
  v70 = v109;
  sub_226E9CFD0(&qword_28139B338, &qword_27D7BBB58, &unk_22767BBF0, v109);
  sub_227669EA0();

  v71 = v118;
  v69(v4, v118);
  swift_unknownObjectRelease();
  v119 = v5;
  v117(v4, *MEMORY[0x277D4EDF8], v71);
  swift_allocObject();
  swift_weakInit();
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBB60, &unk_22768B2F0);
  sub_226E9CFD0(&qword_28139B330, &qword_27D7BBB60, &unk_22768B2F0, v110);
  sub_226E9CFD0(&qword_28139B328, &qword_27D7BBB60, &unk_22768B2F0, v70);
  sub_227669EA0();

  v72 = v118;
  v73 = v116;
  v116(v4, v118);
  swift_unknownObjectRelease();
  v119 = v5;
  v117(v4, *MEMORY[0x277D4EE10], v72);
  swift_allocObject();
  swift_weakInit();
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBB68, &qword_22767BC00);
  sub_226E9CFD0(&qword_28139B320, &qword_27D7BBB68, &qword_22767BC00, v110);
  sub_226E9CFD0(&qword_28139B318, &qword_27D7BBB68, &qword_22767BC00, v109);
  sub_227669EA0();

  v74 = v118;
  v73(v4, v118);
  swift_unknownObjectRelease();
  v119 = v5;
  v75 = v74;
  v117(v4, *MEMORY[0x277D4E328], v74);
  swift_allocObject();
  v76 = v113;
  swift_weakInit();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBB70, &qword_22767BC08);
  sub_227664460();
  sub_226E9CFD0(&qword_28139B2B0, &qword_27D7BBB70, &qword_22767BC08, v110);
  sub_226E9CFD0(&qword_28139B2A8, &qword_27D7BBB70, &qword_22767BC08, v109);
  sub_227669E80();

  v77 = v75;
  v78 = v75;
  v79 = v116;
  v116(v4, v78);
  swift_unknownObjectRelease();
  v80 = *(v76 + 64);
  v112 = *(v76 + 80);
  v111 = swift_getObjectType();
  v119 = v80;
  v81 = v117;
  v117(v4, v102, v77);
  swift_allocObject();
  swift_weakInit();
  swift_unknownObjectRetain_n();
  sub_227669E90();

  v82 = v118;
  v79(v4, v118);
  swift_unknownObjectRelease();
  v119 = v80;
  v81(v4, v100, v82);
  swift_allocObject();
  swift_weakInit();
  v110 = sub_227668BB0();
  swift_unknownObjectRetain();
  sub_227669E80();

  v83 = v116;
  v116(v4, v82);
  swift_unknownObjectRelease();
  v119 = v80;
  v117(v4, v101, v82);
  swift_allocObject();
  swift_weakInit();
  swift_unknownObjectRetain();
  sub_227669EA0();

  v83(v4, v82);
  swift_unknownObjectRelease();
  v119 = v80;
  v84 = v117;
  v117(v4, v99, v82);
  swift_allocObject();
  swift_weakInit();
  swift_unknownObjectRetain();
  sub_227669EA0();

  v85 = v118;
  v86 = v116;
  v116(v4, v118);
  swift_unknownObjectRelease();
  v119 = v80;
  v84(v4, *MEMORY[0x277D4EC70], v85);
  swift_allocObject();
  swift_weakInit();
  swift_unknownObjectRetain();
  sub_227669E80();

  v87 = v118;
  v86(v4, v118);
  swift_unknownObjectRelease();
  v119 = v80;
  v88 = v117;
  v117(v4, v104, v87);
  swift_allocObject();
  swift_weakInit();
  swift_unknownObjectRetain();
  sub_227669E90();

  v89 = v116;
  v116(v4, v87);
  swift_unknownObjectRelease();
  v119 = v80;
  v88(v4, v106, v87);
  swift_allocObject();
  v90 = v113;
  swift_weakInit();

  sub_227669EB0();

  v91 = v118;
  v89(v4, v118);

  swift_unknownObjectRelease();
  v119 = v80;
  v92 = v117;
  v117(v4, v105, v91);
  swift_allocObject();
  swift_weakInit();
  v110 = sub_227666D60();
  sub_227669EA0();

  v93 = v116;
  v116(v4, v91);
  swift_unknownObjectRelease();
  v94 = *(v90 + 40);
  v112 = *(v90 + 56);
  swift_getObjectType();
  v119 = v94;
  v92(v4, v106, v91);
  swift_allocObject();
  swift_weakInit();
  swift_unknownObjectRetain_n();

  sub_227669EB0();

  v93(v4, v91);

  swift_unknownObjectRelease();
  v119 = v94;
  v117(v4, v105, v91);
  swift_allocObject();
  swift_weakInit();
  sub_227669EA0();

  v93(v4, v91);
  return swift_unknownObjectRelease();
}

uint64_t sub_227189644@<X0>(uint64_t a1@<X0>, uint64_t a3@<X8>)
{
  v5 = sub_227668700();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = sub_22766B390();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_226E91B50(Strong + 88, v21);

    v13 = *__swift_project_boxed_opaque_existential_0(v21, v21[3]);
    sub_22766A670();
    sub_22766B370();
    (*(v9 + 8))(v11, v8);
    v14 = v13[26];
    v15 = v13[27];
    __swift_project_boxed_opaque_existential_0(v13 + 23, v14);
    (*(v6 + 16))(v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v5);
    v16 = (*(v6 + 80) + 16) & ~*(v6 + 80);
    v17 = swift_allocObject();
    (*(v6 + 32))(v17 + v16, v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v5);
    sub_226ECF5D8(sub_22718C4B4, v17, v14, MEMORY[0x277D84F78] + 8, v15, a3);

    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
    (*(*(v18 - 8) + 56))(a3, 0, 1, v18);
    return __swift_destroy_boxed_opaque_existential_0(v21);
  }

  else
  {
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
    return (*(*(v20 - 8) + 56))(a3, 1, 1, v20);
  }
}

uint64_t sub_22718997C@<X0>(uint64_t a1@<X0>, uint64_t a3@<X8>)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_226E91B50(Strong + 88, v10);

    __swift_project_boxed_opaque_existential_0(v10, v10[3]);
    v6 = off_283AC7D88[0];
    type metadata accessor for RemoteBrowsingSystem();
    v6(a1);
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
    (*(*(v7 - 8) + 56))(a3, 0, 1, v7);
    return __swift_destroy_boxed_opaque_existential_0(v10);
  }

  else
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
    return (*(*(v9 - 8) + 56))(a3, 1, 1, v9);
  }
}

uint64_t sub_227189AE0@<X0>(uint64_t a1@<X0>, uint64_t a3@<X8>)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_226E91B50(Strong + 88, v10);

    __swift_project_boxed_opaque_existential_0(v10, v10[3]);
    v6 = off_283AC7D90;
    type metadata accessor for RemoteBrowsingSystem();
    v6(a1, a3);
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BA270, &qword_2276708A0);
    (*(*(v7 - 8) + 56))(a3, 0, 1, v7);
    return __swift_destroy_boxed_opaque_existential_0(v10);
  }

  else
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BA270, &qword_2276708A0);
    return (*(*(v9 - 8) + 56))(a3, 1, 1, v9);
  }
}

uint64_t sub_227189C44@<X0>(uint64_t a2@<X8>)
{
  v3 = sub_22766B390();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_226E91B50(Strong + 88, v14);

    v8 = *__swift_project_boxed_opaque_existential_0(v14, v14[3]);
    sub_22766A670();
    sub_22766B370();
    (*(v4 + 8))(v6, v3);
    __swift_project_boxed_opaque_existential_0((v8 + 224), *(v8 + 248));
    v9 = off_283AB6108[0];
    v10 = type metadata accessor for RemoteBrowsingConfirmationCoordinator();
    v9(v10, &off_283AB60F8);
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
    (*(*(v11 - 8) + 56))(a2, 0, 1, v11);
    return __swift_destroy_boxed_opaque_existential_0(v14);
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
    return (*(*(v13 - 8) + 56))(a2, 1, 1, v13);
  }
}

uint64_t sub_227189E78@<X0>(uint64_t a2@<X8>)
{
  v3 = sub_22766B390();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_226E91B50(Strong + 88, v14);

    v8 = *__swift_project_boxed_opaque_existential_0(v14, v14[3]);
    sub_22766A670();
    sub_22766B370();
    (*(v4 + 8))(v6, v3);
    __swift_project_boxed_opaque_existential_0((v8 + 224), *(v8 + 248));
    v9 = off_283AB6110[0];
    v10 = type metadata accessor for RemoteBrowsingConfirmationCoordinator();
    v9(v10, &off_283AB60F8);
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
    (*(*(v11 - 8) + 56))(a2, 0, 1, v11);
    return __swift_destroy_boxed_opaque_existential_0(v14);
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
    return (*(*(v13 - 8) + 56))(a2, 1, 1, v13);
  }
}

uint64_t sub_22718A0B0@<X0>(uint64_t a1@<X0>, uint64_t a3@<X8>)
{
  v5 = sub_22766B390();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_226E91B50(Strong + 88, v14);

    v10 = *__swift_project_boxed_opaque_existential_0(v14, v14[3]);
    sub_22766A670();
    sub_22766B370();
    (*(v6 + 8))(v8, v5);
    __swift_project_boxed_opaque_existential_0((v10 + 264), *(v10 + 288));
    sub_22713E7A0(a1, a3);
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
    (*(*(v11 - 8) + 56))(a3, 0, 1, v11);
    return __swift_destroy_boxed_opaque_existential_0(v14);
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
    return (*(*(v13 - 8) + 56))(a3, 1, 1, v13);
  }
}

uint64_t sub_22718A2C8@<X0>(uint64_t *a1@<X0>, uint64_t a3@<X8>)
{
  v5 = sub_22766B390();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a1;
  v10 = a1[1];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_226E91B50(Strong + 88, v16);

    v12 = *__swift_project_boxed_opaque_existential_0(v16, v16[3]);
    sub_22766A670();
    sub_22766B370();
    (*(v6 + 8))(v8, v5);
    __swift_project_boxed_opaque_existential_0((v12 + 264), *(v12 + 288));
    sub_2271400E8(v9, v10);
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
    (*(*(v13 - 8) + 56))(a3, 0, 1, v13);
    return __swift_destroy_boxed_opaque_existential_0(v16);
  }

  else
  {
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
    return (*(*(v15 - 8) + 56))(a3, 1, 1, v15);
  }
}

uint64_t sub_22718A4F4@<X0>(uint64_t a2@<X8>)
{
  v3 = sub_22766B390();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_226E91B50(Strong + 88, v13);

    v8 = *__swift_project_boxed_opaque_existential_0(v13, v13[3]);
    sub_22766A670();
    sub_22766B370();
    (*(v4 + 8))(v6, v3);
    __swift_project_boxed_opaque_existential_0((v8 + 304), *(v8 + 328));
    v9 = off_283ACA1E8[0];
    type metadata accessor for RemoteBrowsingGuestPairingVerifier();
    v9();
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
    (*(*(v10 - 8) + 56))(a2, 0, 1, v10);
    return __swift_destroy_boxed_opaque_existential_0(v13);
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
    return (*(*(v12 - 8) + 56))(a2, 1, 1, v12);
  }
}

uint64_t sub_22718A728@<X0>(uint64_t a1@<X0>, uint64_t a3@<X8>)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_226E91B50(Strong + 88, v10);

    __swift_project_boxed_opaque_existential_0(v10, v10[3]);
    v6 = off_283AC7ED0;
    type metadata accessor for RemoteBrowsingSystem();
    v6(a1, a3);
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD600, &unk_22767BC30);
    (*(*(v7 - 8) + 56))(a3, 0, 1, v7);
    return __swift_destroy_boxed_opaque_existential_0(v10);
  }

  else
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD600, &unk_22767BC30);
    return (*(*(v9 - 8) + 56))(a3, 1, 1, v9);
  }
}

uint64_t sub_22718A88C@<X0>(uint64_t a1@<X0>, uint64_t a3@<X8>)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_226E91B50(Strong + 88, v10);

    __swift_project_boxed_opaque_existential_0(v10, v10[3]);
    v6 = off_283AC7EA8;
    type metadata accessor for RemoteBrowsingSystem();
    v6(a1, a3);
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
    (*(*(v7 - 8) + 56))(a3, 0, 1, v7);
    return __swift_destroy_boxed_opaque_existential_0(v10);
  }

  else
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
    return (*(*(v9 - 8) + 56))(a3, 1, 1, v9);
  }
}

uint64_t sub_22718A9F0@<X0>(uint64_t a1@<X0>, uint64_t a3@<X8>)
{
  v36 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBAC8, &qword_22767BB60);
  v5 = *(v4 - 8);
  v35 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v30 - v6;
  v33 = sub_227665350();
  v8 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA2A0, &qword_22768C460);
  v11 = *(v37 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v37);
  v34 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v30 - v14;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_226E91B50(Strong + 88, v38);

    __swift_project_boxed_opaque_existential_0(v38, v38[3]);
    v31 = v12;
    v32 = a3;
    v17 = v36;
    sub_227668A30();
    sub_227521540(v10);
    (*(v8 + 8))(v10, v33);
    (*(v5 + 16))(v7, v17, v4);
    v18 = (*(v5 + 80) + 16) & ~*(v5 + 80);
    v19 = swift_allocObject();
    (*(v5 + 32))(v19 + v18, v7, v4);
    v20 = v34;
    v21 = v37;
    (*(v11 + 16))(v34, v15, v37);
    v22 = (*(v11 + 80) + 16) & ~*(v11 + 80);
    v23 = (v31 + v22 + 7) & 0xFFFFFFFFFFFFFFF8;
    v24 = swift_allocObject();
    (*(v11 + 32))(v24 + v22, v20, v21);
    v25 = (v24 + v23);
    *v25 = sub_22718C28C;
    v25[1] = v19;
    v26 = v32;
    sub_227669270();
    (*(v11 + 8))(v15, v21);
    v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
    (*(*(v27 - 8) + 56))(v26, 0, 1, v27);
    return __swift_destroy_boxed_opaque_existential_0(v38);
  }

  else
  {
    v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
    return (*(*(v29 - 8) + 56))(a3, 1, 1, v29);
  }
}

uint64_t sub_22718AE50@<X0>(uint64_t a1@<X0>, uint64_t a3@<X8>)
{
  v36 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBAD0, &qword_22767BB68);
  v5 = *(v4 - 8);
  v35 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v30 - v6;
  v33 = sub_227665350();
  v8 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA2A0, &qword_22768C460);
  v11 = *(v37 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v37);
  v34 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v30 - v14;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_226E91B50(Strong + 88, v38);

    __swift_project_boxed_opaque_existential_0(v38, v38[3]);
    v31 = v12;
    v32 = a3;
    v17 = v36;
    sub_227668A30();
    sub_227521540(v10);
    (*(v8 + 8))(v10, v33);
    (*(v5 + 16))(v7, v17, v4);
    v18 = (*(v5 + 80) + 16) & ~*(v5 + 80);
    v19 = swift_allocObject();
    (*(v5 + 32))(v19 + v18, v7, v4);
    v20 = v34;
    v21 = v37;
    (*(v11 + 16))(v34, v15, v37);
    v22 = (*(v11 + 80) + 16) & ~*(v11 + 80);
    v23 = (v31 + v22 + 7) & 0xFFFFFFFFFFFFFFF8;
    v24 = swift_allocObject();
    (*(v11 + 32))(v24 + v22, v20, v21);
    v25 = (v24 + v23);
    *v25 = sub_22718C260;
    v25[1] = v19;
    v26 = v32;
    sub_227669270();
    (*(v11 + 8))(v15, v21);
    v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
    (*(*(v27 - 8) + 56))(v26, 0, 1, v27);
    return __swift_destroy_boxed_opaque_existential_0(v38);
  }

  else
  {
    v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
    return (*(*(v29 - 8) + 56))(a3, 1, 1, v29);
  }
}

uint64_t sub_22718B2B0@<X0>(uint64_t a2@<X8>)
{
  v3 = sub_22766B390();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_226E91B50(Strong + 88, v14);

    v8 = *__swift_project_boxed_opaque_existential_0(v14, v14[3]);
    sub_22766A670();
    sub_22766B370();
    (*(v4 + 8))(v6, v3);
    __swift_project_boxed_opaque_existential_0((v8 + 224), *(v8 + 248));
    v9 = off_283AB6118[0];
    v10 = type metadata accessor for RemoteBrowsingConfirmationCoordinator();
    v9(v10, &off_283AB60F8);
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
    (*(*(v11 - 8) + 56))(a2, 0, 1, v11);
    return __swift_destroy_boxed_opaque_existential_0(v14);
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
    return (*(*(v13 - 8) + 56))(a2, 1, 1, v13);
  }
}

uint64_t sub_22718B4E0@<X0>(uint64_t *a1@<X0>, uint64_t a3@<X8>)
{
  v5 = *a1;
  v4 = a1[1];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_226E91B50(Strong + 88, v10);

    __swift_project_boxed_opaque_existential_0(v10, v10[3]);
    sub_227524530(v5, v4, a3);
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBB78, &qword_22767BC10);
    (*(*(v7 - 8) + 56))(a3, 0, 1, v7);
    return __swift_destroy_boxed_opaque_existential_0(v10);
  }

  else
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBB78, &qword_22767BC10);
    return (*(*(v9 - 8) + 56))(a3, 1, 1, v9);
  }
}

uint64_t sub_22718B61C@<X0>(uint64_t *a2@<X1>, uint64_t *a3@<X2>, void (*a4)(void)@<X3>, uint64_t a5@<X8>)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_226E91B50(Strong + 88, v13);

    __swift_project_boxed_opaque_existential_0(v13, v13[3]);
    a4();
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    (*(*(v10 - 8) + 56))(a5, 0, 1, v10);
    return __swift_destroy_boxed_opaque_existential_0(v13);
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    return (*(*(v12 - 8) + 56))(a5, 1, 1, v12);
  }
}

uint64_t sub_22718B74C@<X0>(uint64_t a1@<X0>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, void (*a5)(uint64_t)@<X4>, uint64_t a6@<X8>)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_226E91B50(Strong + 88, v15);

    __swift_project_boxed_opaque_existential_0(v15, v15[3]);
    a5(a1);
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
    (*(*(v12 - 8) + 56))(a6, 0, 1, v12);
    return __swift_destroy_boxed_opaque_existential_0(v15);
  }

  else
  {
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
    return (*(*(v14 - 8) + 56))(a6, 1, 1, v14);
  }
}

uint64_t sub_22718C2B4(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a2, a3) - 8);
  v7 = v4 + ((*(v6 + 80) + 16) & ~*(v6 + 80));

  return a4(a1, v7);
}

uint64_t objectdestroy_58Tm_0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA2A0, &qword_22768C460);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

uint64_t sub_22718C3F8(uint64_t a1, uint64_t a2)
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA2A0, &qword_22768C460) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = *v7;
  v9 = v7[1];

  return sub_2273D4954(a1, a2, v2 + v6, v8, v9);
}

uint64_t sub_22718C53C(uint64_t *a1, uint64_t *a2, unsigned int *a3)
{
  v7 = sub_2276694E0();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_226E91B50(v3 + 232, &v18);
  sub_226E91B50(v3 + 176, v17);
  v15 = *(v3 + 216);
  sub_226E91B50(v3 + 312, v16);
  swift_unknownObjectRetain();
  v11 = sub_2276693D0();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v13 = swift_allocObject();
  sub_226E92AB8(&v18, v13 + 16);
  sub_226E92AB8(v17, v13 + 56);
  *(v13 + 96) = v15;
  *(v13 + 112) = v11;
  sub_226E92AB8(v16, v13 + 120);
  (*(v8 + 104))(v10, *a3, v7);
  v19 = v12;
  v20 = &off_283AB14F0;
  *&v18 = v13;
  swift_beginAccess();

  sub_227363128(&v18, v10);
  swift_endAccess();
}

uint64_t sub_22718C70C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  sub_22766D370();
  sub_22766C100();
  v6 = sub_22766D3F0();
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
    if (v11 || (sub_22766D190() & 1) != 0)
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

uint64_t sub_22718C804(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 16) && (sub_22766D370(), sub_2276637A0(), sub_22766C100(), , v3 = sub_22766D3F0(), v4 = -1 << *(a2 + 32), v5 = v3 & ~v4, ((*(a2 + 56 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0))
  {
    v6 = ~v4;
    while (1)
    {
      v7 = sub_2276637A0();
      v9 = v8;
      if (v7 == sub_2276637A0() && v9 == v10)
      {
        break;
      }

      v12 = sub_22766D190();

      if ((v12 & 1) == 0)
      {
        v5 = (v5 + 1) & v6;
        if ((*(a2 + 56 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
        {
          continue;
        }
      }

      return v12 & 1;
    }

    v12 = 1;
  }

  else
  {
    v12 = 0;
  }

  return v12 & 1;
}

BOOL sub_22718C954(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v4 = sub_22766D360();
  v5 = -1 << *(a2 + 32);
  v6 = v4 & ~v5;
  if (((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
  {
    return 0;
  }

  v7 = ~v5;
  do
  {
    v8 = *(*(a2 + 48) + 8 * v6);
    result = v8 == a1;
    if (v8 == a1)
    {
      break;
    }

    v6 = (v6 + 1) & v7;
  }

  while (((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  return result;
}

uint64_t sub_22718C9FC(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  if (!*(a4 + 16))
  {
    return 0;
  }

  sub_22766D370();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8560, &unk_227671560);
  sub_226F480FC();
  sub_227663B10();
  v5 = sub_22766D3F0();
  v6 = -1 << *(a4 + 32);
  v7 = v5 & ~v6;
  if ((*(a4 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v8 = ~v6;
    sub_226F48150();
    sub_226EC1E18();
    do
    {
      v9 = sub_227663B20();
      if (v9)
      {
        break;
      }

      v7 = (v7 + 1) & v8;
    }

    while (((*(a4 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
  }

  else
  {
    v9 = 0;
  }

  return v9 & 1;
}

BOOL sub_22718CBBC(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  sub_22766D370();
  v6 = a3(a1);
  MEMORY[0x22AA996B0](v6);
  v7 = sub_22766D3F0();
  v8 = -1 << *(a2 + 32);
  v9 = v7 & ~v8;
  if (((*(a2 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
  {
    return 0;
  }

  v10 = ~v8;
  do
  {
    v11 = a3(*(*(a2 + 48) + v9));
    v12 = v11 == a3(a1);
    result = v12;
    if (v12)
    {
      break;
    }

    v9 = (v9 + 1) & v10;
  }

  while (((*(a2 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  return result;
}

void sub_22718CCBC(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

uint64_t Daemon.__allocating_init()()
{
  v0 = swift_allocObject();
  Daemon.init()();
  return v0;
}

uint64_t sub_2271A8B30()
{
  v0 = sub_22766B390();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A730();
  sub_22766B370();
  (*(v1 + 8))(v3, v0);
  sub_226F77C00();
  sub_226F78128();
  sub_22766A940();
  sub_227669AA0();
  sub_2272C04E4();
  v4 = sub_22766C000();
  sub_22745D1E8(v4, v5, MEMORY[0x277D84F90]);

  return xpc_transaction_exit_clean();
}

char *Daemon.deinit()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  __swift_destroy_boxed_opaque_existential_0((v0 + 64));
  v1 = OBJC_IVAR____TtC15SeymourServices6Daemon_xpcStreamHandler;
  v2 = sub_227669AC0();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = OBJC_IVAR____TtC15SeymourServices6Daemon_appLauncher;
  v4 = sub_22766AAB0();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC15SeymourServices6Daemon_dataProtectionMonitor));
  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC15SeymourServices6Daemon_persistenceStore));

  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC15SeymourServices6Daemon_scriptSystem));

  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC15SeymourServices6Daemon_programCompletionDataStore));
  sub_2271BC7EC(v0 + OBJC_IVAR____TtC15SeymourServices6Daemon_healthKitMindfulSessionService);
  sub_2271BC798(v0 + OBJC_IVAR____TtC15SeymourServices6Daemon_healthKitWorkoutService);

  v5 = OBJC_IVAR____TtC15SeymourServices6Daemon_localDeviceProvider;
  v6 = sub_22766ABA0();
  (*(*(v6 - 8) + 8))(v0 + v5, v6);

  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC15SeymourServices6Daemon_searchDataStore));
  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC15SeymourServices6Daemon_searchScriptClient));

  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC15SeymourServices6Daemon_achievementDataStore));
  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC15SeymourServices6Daemon_achievementEnvironmentCacheCoordinator));
  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC15SeymourServices6Daemon_achievementEvaluatorProvider));
  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC15SeymourServices6Daemon_achievementHistoricalAwardingSource));

  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC15SeymourServices6Daemon_achievementProgressProvider));
  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC15SeymourServices6Daemon_achievementTemplateSource));
  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC15SeymourServices6Daemon_achievementSystem));

  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC15SeymourServices6Daemon_metricBackgroundAccountEventStore));
  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC15SeymourServices6Daemon_metricBackgroundAccountEventPublisher));
  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC15SeymourServices6Daemon_metricIdentifierStore));

  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC15SeymourServices6Daemon_notificationSettingsProvider));
  sub_2271BD838(v0 + OBJC_IVAR____TtC15SeymourServices6Daemon_restrictionsProvider, type metadata accessor for RestrictionsProvider);

  v7 = OBJC_IVAR____TtC15SeymourServices6Daemon_participantConnectionBrokerProvider;
  v8 = sub_22766AD60();
  (*(*(v8 - 8) + 8))(v0 + v7, v8);
  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC15SeymourServices6Daemon_playbackVoucherDataStore));

  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC15SeymourServices6Daemon_userNotificationCenter));

  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC15SeymourServices6Daemon_workoutPlanDataStore));
  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC15SeymourServices6Daemon_workoutPlanSummaryBuilder));

  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC15SeymourServices6Daemon_transactionCoordinator));

  return v0;
}

uint64_t Daemon.__deallocating_deinit()
{
  Daemon.deinit();

  return swift_deallocClassInstance();
}

Swift::Void __swiftcall Daemon.activate()()
{
  v1 = v0;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B96C0, &unk_227684560);
  v87 = *(v88 - 8);
  MEMORY[0x28223BE20](v88);
  v86 = &v84 - v2;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  v93 = *(v91 - 8);
  MEMORY[0x28223BE20](v91);
  v90 = &v84 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBCE8, &unk_22767E460);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v84 - v6;
  v8 = sub_22766B390();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v84 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v84 - v13;
  MEMORY[0x28223BE20](v15);
  v17 = &v84 - v16;
  MEMORY[0x28223BE20](v18);
  v20 = &v84 - v19;
  sub_22766A730();
  sub_22766B370();
  v21 = *(v9 + 8);
  v89 = v20;
  v92 = v8;
  v94 = v21;
  v95 = v9 + 8;
  v21(v20, v8);
  __swift_project_boxed_opaque_existential_0(v1 + 2, v1[5]);
  if (sub_227453E70())
  {
    __swift_project_boxed_opaque_existential_0(v1 + 2, v1[5]);
    sub_227454118(v7);
    v22 = sub_227669290();
    v23 = swift_allocObject();
    *(v23 + 16) = 0;
    *(v23 + 24) = 0;
    v22(sub_2271BDB10, v23);

    (*(v5 + 8))(v7, v4);
    sub_22766A730();
    v24 = sub_22766B380();
    v25 = sub_22766C8B0();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&dword_226E8E000, v24, v25, "Application installation request finished; exiting when clean", v26, 2u);
      MEMORY[0x22AA9A450](v26, -1, -1);
    }

    v27 = v17;
LABEL_5:
    v94(v27, v92);
    sub_2271A8B30();
    return;
  }

  v28 = v1[7];
  v29 = v28[9];
  v30 = v28[10];
  v28[9] = sub_2271BD898;
  v28[10] = v1;

  sub_226EA9E3C(v29, v30);
  v31 = v28[8];
  v32 = sub_22766BFD0();
  LODWORD(v31) = [v31 BOOLForKey_];

  if (v31)
  {
    sub_2274EAC5C();
  }

  else if ((sub_2274EAB54() & 1) == 0)
  {
    sub_22766A730();
    v81 = sub_22766B380();
    v82 = sub_22766C8B0();
    if (os_log_type_enabled(v81, v82))
    {
      v83 = swift_slowAlloc();
      *v83 = 0;
      _os_log_impl(&dword_226E8E000, v81, v82, "Application not installed, exiting when clean", v83, 2u);
      MEMORY[0x22AA9A450](v83, -1, -1);
    }

    v27 = v11;
    goto LABEL_5;
  }

  sub_22766A730();
  v33 = sub_22766B380();
  v34 = sub_22766C8B0();
  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    *v35 = 0;
    _os_log_impl(&dword_226E8E000, v33, v34, "Starting up!", v35, 2u);
    MEMORY[0x22AA9A450](v35, -1, -1);
  }

  v36 = v92;
  v37 = v94;
  v94(v14, v92);
  v38 = swift_allocObject();
  *(v38 + 16) = "SeymourServices/Daemon.swift";
  *(v38 + 24) = 28;
  *(v38 + 32) = 2;
  *(v38 + 40) = 1165;
  *(v38 + 48) = &unk_22767BE08;
  *(v38 + 56) = v1;

  v39 = v90;
  sub_227669270();
  v40 = v91;
  v41 = sub_227669290();
  v42 = swift_allocObject();
  *(v42 + 16) = sub_2271AAE5C;
  *(v42 + 24) = 0;
  v41(sub_226E9F7B8, v42);

  v85 = *(v93 + 8);
  v93 += 8;
  v85(v39, v40);
  v43 = *(v1 + OBJC_IVAR____TtC15SeymourServices6Daemon_publicServerEndpoint);
  __swift_project_boxed_opaque_existential_0((v43 + 56), *(v43 + 80));
  v44 = sub_2274FE5D0(*(v43 + 96));
  v45 = type metadata accessor for SeymourServerAPIAsyncOperationClient();
  v46 = swift_allocObject();
  *(v46 + 16) = v44;
  v99 = v45;
  v100 = &protocol witness table for SeymourServerAPIAsyncOperationClient;
  aBlock = v46;
  swift_beginAccess();
  sub_2271BD940(&aBlock, v43 + 104);
  swift_endAccess();
  v47 = *(v1 + OBJC_IVAR____TtC15SeymourServices6Daemon_privateServerEndpoint);
  __swift_project_boxed_opaque_existential_0((v47 + 56), *(v47 + 80));
  v48 = sub_2274FE5D0(*(v47 + 96));
  v49 = swift_allocObject();
  *(v49 + 16) = v48;
  v99 = v45;
  v100 = &protocol witness table for SeymourServerAPIAsyncOperationClient;
  aBlock = v49;
  swift_beginAccess();
  sub_2271BD940(&aBlock, v47 + 104);
  swift_endAccess();
  v50 = v89;
  sub_22766A6C0();
  sub_22766B370();
  v37(v50, v36);

  sub_227669280();
  v51 = sub_227669290();
  v52 = swift_allocObject();
  *(v52 + 16) = sub_2271AAE68;
  *(v52 + 24) = 0;
  v51(sub_226E9F880, v52);

  v53 = v85;
  v85(v39, v40);
  v54 = swift_allocObject();
  *(v54 + 16) = "SeymourServices/Daemon.swift";
  *(v54 + 24) = 28;
  *(v54 + 32) = 2;
  *(v54 + 40) = 1183;
  *(v54 + 48) = &unk_22767BE20;
  *(v54 + 56) = v1;

  sub_227669270();
  v55 = sub_227669290();
  v56 = swift_allocObject();
  *(v56 + 16) = sub_2271AB234;
  *(v56 + 24) = 0;
  v55(sub_226E9F880, v56);

  v53(v39, v40);
  v57 = *(v1 + OBJC_IVAR____TtC15SeymourServices6Daemon_serviceSubscriptionProviderBroker);
  sub_2275F0F8C(&aBlock);
  sub_226E91B50(&aBlock, v102);
  v58 = OBJC_IVAR____TtC15SeymourServices33ServiceSubscriptionProviderBroker_state;
  swift_beginAccess();
  sub_2271BDAB4(v102, v57 + v58);
  swift_endAccess();
  sub_2276692A0();
  __swift_destroy_boxed_opaque_existential_0(&aBlock);
  v59 = sub_227669290();
  v60 = swift_allocObject();
  *(v60 + 16) = sub_2271AB240;
  *(v60 + 24) = 0;
  v59(sub_226E9F880, v60);

  v53(v39, v40);
  sub_22766ADB0();
  sub_227397FCC();
  sub_2272BC58C();
  sub_227392E8C();
  sub_22766A690();
  sub_22766B370();
  v61 = v92;
  v62 = v94;
  v94(v50, v92);
  v63 = v86;
  sub_227345AA0(v86);
  v64 = v88;
  v65 = sub_227669290();
  v66 = swift_allocObject();
  *(v66 + 16) = 0;
  *(v66 + 24) = 0;
  v65(sub_2271BDB10, v66);

  (*(v87 + 8))(v63, v64);
  sub_22766A730();
  sub_22766B370();
  v62(v50, v61);
  sub_2276696A0();
  sub_22722C818();
  sub_2275D225C();
  sub_226FCC458();
  sub_227088CB0();
  sub_226FF716C();
  sub_22745C268();
  v67 = *(v1 + OBJC_IVAR____TtC15SeymourServices6Daemon_metricIdentifierStore + 24);
  v68 = *(v1 + OBJC_IVAR____TtC15SeymourServices6Daemon_metricIdentifierStore + 32);
  __swift_project_boxed_opaque_existential_0((v1 + OBJC_IVAR____TtC15SeymourServices6Daemon_metricIdentifierStore), v67);
  (*(v68 + 8))(v67, v68);
  v69 = *(v1 + OBJC_IVAR____TtC15SeymourServices6Daemon_metricRecorderBroker);
  sub_22736DA24(&aBlock);
  sub_226E91B50(&aBlock, v102);
  swift_beginAccess();
  sub_2271BDB5C(v102, v69 + 280);
  swift_endAccess();
  v70 = v90;
  sub_2276692A0();
  __swift_destroy_boxed_opaque_existential_0(&aBlock);
  v71 = v91;
  v72 = sub_227669290();
  v73 = swift_allocObject();
  *(v73 + 16) = sub_2271AB24C;
  *(v73 + 24) = 0;
  v72(sub_226E9F880, v73);

  v74 = v85;
  v85(v70, v71);
  sub_2275E1B4C();
  sub_226FA81EC();
  sub_226FB7880();
  sub_2272C04E4();
  __swift_project_boxed_opaque_existential_0((v1 + OBJC_IVAR____TtC15SeymourServices6Daemon_achievementSystem), *(v1 + OBJC_IVAR____TtC15SeymourServices6Daemon_achievementSystem + 24));
  sub_2271C5484();
  sub_22710B900();
  sub_2275C9D80();
  sub_22766A730();
  sub_22766B370();
  v94(v50, v61);
  sub_227219854();
  sub_2272195E4();
  sub_22721D9F0();
  sub_226FC3510();
  sub_227481E74();
  sub_227000374();
  sub_22739D1FC();
  sub_2274F165C();
  sub_2274891CC();
  sub_22717B84C();
  sub_22707145C();
  sub_22746FC54();
  sub_226F5F1D0();
  sub_227186350();
  sub_227117DCC();
  sub_22750C30C();
  sub_2275D56A4();
  sub_227451234();
  sub_2271295F4();
  sub_22722E918();
  sub_227126D64();

  sub_227669270();
  v75 = sub_227669290();
  v76 = swift_allocObject();
  *(v76 + 16) = 0;
  *(v76 + 24) = 0;
  v75(sub_226E9F880, v76);

  v74(v70, v71);
  sub_22735F01C();
  sub_2275BC9EC();
  v77 = *(v1 + OBJC_IVAR____TtC15SeymourServices6Daemon_pairedCompanionLink);
  v100 = sub_2271AB258;
  v101 = 0;
  aBlock = MEMORY[0x277D85DD0];
  v97 = 1107296256;
  v98 = sub_22718CCBC;
  v99 = &block_descriptor_18;
  v78 = _Block_copy(&aBlock);
  [v77 activateWithCompletion_];
  _Block_release(v78);
  v79 = *(v1 + OBJC_IVAR____TtC15SeymourServices6Daemon_remoteParticipantBroadcastLink);
  v100 = sub_2271AB264;
  v101 = 0;
  aBlock = MEMORY[0x277D85DD0];
  v97 = 1107296256;
  v98 = sub_22718CCBC;
  v99 = &block_descriptor_241;
  v80 = _Block_copy(&aBlock);
  [v79 activateWithCompletion_];
  _Block_release(v80);
  sub_226F77C00();
  sub_22766A940();
  sub_227669AA0();
  sub_22766AB10();
}

void sub_2271AAB7C()
{
  v0 = sub_22766B390();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_226F78128();
  sub_22766A730();
  v4 = sub_22766B380();
  v5 = sub_22766C8B0();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_226E8E000, v4, v5, "Associated application bundle for daemon com.apple.fitcored has been recently uninstalled. Exiting!", v6, 2u);
    MEMORY[0x22AA9A450](v6, -1, -1);
  }

  (*(v1 + 8))(v3, v0);
  exit(0);
}

uint64_t sub_2271AACD8()
{
  sub_22710EB8C();
  v1 = (*(v0 + 16) + OBJC_IVAR____TtC15SeymourServices6Daemon_persistenceStore);
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_0(v1, v2);
  v6 = (*(v3 + 8) + **(v3 + 8));
  v4 = swift_task_alloc();
  *(v0 + 24) = v4;
  *v4 = v0;
  v4[1] = sub_226F10788;

  return v6(v2, v3);
}

void sub_2271AAE74(uint64_t a1, const char *a2, ...)
{
  v4 = sub_22766B390();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + 8) == 1)
  {
    v8 = *a1;
    v9 = *a1;
    sub_22766A730();
    v10 = v8;
    v11 = sub_22766B380();
    v12 = sub_22766C890();
    sub_226EB4548(v8, 1);
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v19[0] = a2;
      v14 = v13;
      v15 = swift_slowAlloc();
      v20 = v15;
      *v14 = 136446210;
      swift_getErrorValue();
      v16 = MEMORY[0x22AA995D0](v19[2], v19[3]);
      v18 = sub_226E97AE8(v16, v17, &v20);

      *(v14 + 4) = v18;
      _os_log_impl(&dword_226E8E000, v11, v12, v19[0], v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v15);
      MEMORY[0x22AA9A450](v15, -1, -1);
      MEMORY[0x22AA9A450](v14, -1, -1);

      sub_226EB4548(v8, 1);
    }

    else
    {
      sub_226EB4548(v8, 1);
    }

    (*(v5 + 8))(v7, v4);
  }
}

uint64_t sub_2271AB0A0()
{
  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = sub_2271AB13C;

  return sub_22745CDAC();
}

uint64_t sub_2271AB13C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

void sub_2271AB270(void *a1, const char *a2, ...)
{
  v4 = sub_22766B390();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v8 = a1;
    sub_22766A730();
    v9 = a1;
    v10 = sub_22766B380();
    v11 = sub_22766C890();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v18[0] = a2;
      v13 = v12;
      v14 = swift_slowAlloc();
      v19 = v14;
      *v13 = 136446210;
      swift_getErrorValue();
      v15 = MEMORY[0x22AA995D0](v18[2], v18[3]);
      v17 = sub_226E97AE8(v15, v16, &v19);

      *(v13 + 4) = v17;
      _os_log_impl(&dword_226E8E000, v10, v11, v18[0], v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v14);
      MEMORY[0x22AA9A450](v14, -1, -1);
      MEMORY[0x22AA9A450](v13, -1, -1);
    }

    else
    {
    }

    (*(v5 + 8))(v7, v4);
  }
}

uint64_t sub_2271AB480@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for Daemon(0);
  v2 = swift_allocObject();
  result = Daemon.init()();
  *a1 = v2;
  return result;
}

uint64_t sub_2271AB4E4(uint64_t *a1, uint64_t *a2, unsigned int *a3)
{
  v7 = sub_2276694E0();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_226E91B50(v3 + 136, &v18);
  sub_226E91B50(v3 + 56, v17);
  v15 = *(v3 + 96);
  sub_226E91B50(v3 + 216, v16);
  swift_unknownObjectRetain();
  v11 = sub_2276693D0();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v13 = swift_allocObject();
  sub_226E92AB8(&v18, v13 + 16);
  sub_226E92AB8(v17, v13 + 56);
  *(v13 + 96) = v15;
  *(v13 + 112) = v11;
  sub_226E92AB8(v16, v13 + 120);
  (*(v8 + 104))(v10, *a3, v7);
  v19 = v12;
  v20 = &off_283AB4F18;
  *&v18 = v13;
  swift_beginAccess();

  sub_2273632AC(&v18, v10);
  swift_endAccess();
}

uint64_t sub_2271AB714(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v47 = a7;
  v48 = a8;
  v11 = a5;
  v49 = a10;
  v46 = a9;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BC8E0, &qword_2276784C0);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v40 - v17;
  v19 = sub_22766B390();
  v44 = *(v19 - 8);
  v45 = v19;
  MEMORY[0x28223BE20](v19);
  v21 = &v40 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = sub_226E97A5C(0x65uLL);
  sub_22766A710();
  v22 = sub_22766B380();
  v23 = sub_22766C8B0();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v42 = a1;
    v25 = v24;
    v40 = swift_slowAlloc();
    v51 = v40;
    *v25 = 134218498;
    *(v25 + 4) = v50;
    *(v25 + 12) = 2080;
    v26 = sub_22766CE50();
    v43 = a6;
    v41 = v18;
    v28 = a4;
    v29 = v11;
    v30 = a2;
    v31 = sub_226E97AE8(v26, v27, &v51);
    v32 = a3;
    v33 = v43;

    *(v25 + 14) = v31;
    a2 = v30;
    v11 = v29;
    a4 = v28;
    *(v25 + 22) = 2048;
    a6 = v33;
    *(v25 + 24) = v33;
    a3 = v32;
    v18 = v41;
    _os_log_impl(&dword_226E8E000, v22, v23, "Converting from Async-Await to Promise: %ld:%s:%lu", v25, 0x20u);
    v34 = v40;
    __swift_destroy_boxed_opaque_existential_0(v40);
    MEMORY[0x22AA9A450](v34, -1, -1);
    v35 = v25;
    a1 = v42;
    MEMORY[0x22AA9A450](v35, -1, -1);
  }

  (*(v44 + 8))(v21, v45);
  v36 = sub_22766C4B0();
  (*(*(v36 - 8) + 56))(v18, 1, 1, v36);
  v37 = swift_allocObject();
  *(v37 + 16) = 0;
  *(v37 + 24) = 0;
  *(v37 + 32) = v47;
  v38 = v50;
  *(v37 + 40) = v48;
  *(v37 + 48) = v38;
  *(v37 + 56) = a3;
  *(v37 + 64) = a4;
  *(v37 + 72) = v11;
  *(v37 + 80) = a6;
  *(v37 + 88) = a1;
  *(v37 + 96) = a2;

  sub_2271B42B0(0, 0, v18, v49, v37);
}

uint64_t sub_2271ABF60(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 56) = v19;
  *(v8 + 40) = v18;
  *(v8 + 152) = v17;
  *(v8 + 24) = a7;
  *(v8 + 32) = a8;
  *(v8 + 16) = a6;
  *(v8 + 64) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBD48, &qword_22767C010);
  *(v8 + 72) = swift_task_alloc();
  v10 = sub_22766B390();
  *(v8 + 80) = v10;
  *(v8 + 88) = *(v10 - 8);
  *(v8 + 96) = swift_task_alloc();
  *(v8 + 104) = swift_task_alloc();
  v11 = sub_2276624A0();
  *(v8 + 112) = v11;
  *(v8 + 120) = *(v11 - 8);
  v12 = swift_task_alloc();
  *(v8 + 128) = v12;
  v15 = (a4 + *a4);
  v13 = swift_task_alloc();
  *(v8 + 136) = v13;
  *v13 = v8;
  v13[1] = sub_2271AC184;

  return v15(v12);
}

uint64_t sub_2271AC184()
{
  *(*v1 + 144) = v0;

  if (v0)
  {
    v2 = sub_2271AC500;
  }

  else
  {
    v2 = sub_2271AC298;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2271AC298(uint64_t a1)
{
  v25 = v1;
  sub_22766A710();
  v2 = sub_22766B380();
  v3 = sub_22766C8B0();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = v1[11];
    v22 = v1[10];
    v23 = v1[13];
    v21 = v1[5];
    v5 = v1[2];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v24 = v7;
    *v6 = 134218498;
    *(v6 + 4) = v5;
    *(v6 + 12) = 2080;
    v8 = sub_22766CE50();
    v10 = sub_226E97AE8(v8, v9, &v24);

    *(v6 + 14) = v10;
    *(v6 + 22) = 2048;
    *(v6 + 24) = v21;
    _os_log_impl(&dword_226E8E000, v2, v3, "Finished A->P conversion: %ld:%s:%lu", v6, 0x20u);
    __swift_destroy_boxed_opaque_existential_0(v7);
    MEMORY[0x22AA9A450](v7, -1, -1);
    MEMORY[0x22AA9A450](v6, -1, -1);

    (*(v4 + 8))(v23, v22);
  }

  else
  {
    v11 = v1[13];
    v12 = v1[10];
    v13 = v1[11];

    (*(v13 + 8))(v11, v12);
  }

  v15 = v1[15];
  v14 = v1[16];
  v16 = v1[14];
  v17 = v1[9];
  v18 = v1[6];
  (*(v15 + 16))(v17, v14, v16);
  swift_storeEnumTagMultiPayload();
  v18(v17);
  sub_226E97D1C(v17, &qword_27D7BBD48, &qword_22767C010);
  (*(v15 + 8))(v14, v16);

  v19 = v1[1];

  return v19();
}

uint64_t sub_2271AC500(uint64_t a1)
{
  v24 = v1;
  sub_22766A710();
  v2 = sub_22766B380();
  v3 = sub_22766C8B0();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = v1[11];
    v21 = v1[10];
    v22 = v1[12];
    v20 = v1[5];
    v5 = v1[2];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v23 = v7;
    *v6 = 134218498;
    *(v6 + 4) = v5;
    *(v6 + 12) = 2080;
    v8 = sub_22766CE50();
    v10 = sub_226E97AE8(v8, v9, &v23);

    *(v6 + 14) = v10;
    *(v6 + 22) = 2048;
    *(v6 + 24) = v20;
    _os_log_impl(&dword_226E8E000, v2, v3, "Finished A->P conversion: %ld:%s:%lu", v6, 0x20u);
    __swift_destroy_boxed_opaque_existential_0(v7);
    MEMORY[0x22AA9A450](v7, -1, -1);
    MEMORY[0x22AA9A450](v6, -1, -1);

    (*(v4 + 8))(v22, v21);
  }

  else
  {
    v12 = v1[11];
    v11 = v1[12];
    v13 = v1[10];

    (*(v12 + 8))(v11, v13);
  }

  v14 = v1[18];
  v15 = v1[9];
  v16 = v1[6];
  *v15 = v14;
  swift_storeEnumTagMultiPayload();
  v17 = v14;
  v16(v15);

  sub_226E97D1C(v15, &qword_27D7BBD48, &qword_22767C010);

  v18 = v1[1];

  return v18();
}

uint64_t sub_2271AC73C(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 56) = v17;
  *(v8 + 40) = v16;
  *(v8 + 112) = v15;
  *(v8 + 24) = a7;
  *(v8 + 32) = a8;
  *(v8 + 16) = a6;
  v10 = sub_22766B390();
  *(v8 + 64) = v10;
  *(v8 + 72) = *(v10 - 8);
  *(v8 + 80) = swift_task_alloc();
  *(v8 + 88) = swift_task_alloc();
  v13 = (a4 + *a4);
  v11 = swift_task_alloc();
  *(v8 + 96) = v11;
  *v11 = v8;
  v11[1] = sub_2271AC8BC;

  return v13();
}

uint64_t sub_2271AC8BC()
{
  *(*v1 + 104) = v0;

  if (v0)
  {
    v2 = sub_2271ACBBC;
  }

  else
  {
    v2 = sub_2271AC9D0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2271AC9D0(uint64_t a1)
{
  v22 = v1;
  sub_22766A710();
  v2 = sub_22766B380();
  v3 = sub_22766C8B0();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = v1[9];
    v18 = v1[8];
    v19 = v1[11];
    v17 = v1[5];
    v5 = v1[2];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v20 = v7;
    *v6 = 134218498;
    *(v6 + 4) = v5;
    *(v6 + 12) = 2080;
    v8 = sub_22766CE50();
    v10 = sub_226E97AE8(v8, v9, &v20);

    *(v6 + 14) = v10;
    *(v6 + 22) = 2048;
    *(v6 + 24) = v17;
    _os_log_impl(&dword_226E8E000, v2, v3, "Finished A->P conversion: %ld:%s:%lu", v6, 0x20u);
    __swift_destroy_boxed_opaque_existential_0(v7);
    MEMORY[0x22AA9A450](v7, -1, -1);
    MEMORY[0x22AA9A450](v6, -1, -1);

    (*(v4 + 8))(v19, v18);
  }

  else
  {
    v11 = v1[11];
    v12 = v1[8];
    v13 = v1[9];

    (*(v13 + 8))(v11, v12);
  }

  v14 = v1[6];
  v20 = 0;
  v21 = 0;
  v14(&v20);

  v15 = v1[1];

  return v15();
}

uint64_t sub_2271ACBBC(uint64_t a1)
{
  v24 = v1;
  sub_22766A710();
  v2 = sub_22766B380();
  v3 = sub_22766C8B0();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = v1[9];
    v20 = v1[8];
    v21 = v1[10];
    v19 = v1[5];
    v5 = v1[2];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v22 = v7;
    *v6 = 134218498;
    *(v6 + 4) = v5;
    *(v6 + 12) = 2080;
    v8 = sub_22766CE50();
    v10 = sub_226E97AE8(v8, v9, &v22);

    *(v6 + 14) = v10;
    *(v6 + 22) = 2048;
    *(v6 + 24) = v19;
    _os_log_impl(&dword_226E8E000, v2, v3, "Finished A->P conversion: %ld:%s:%lu", v6, 0x20u);
    __swift_destroy_boxed_opaque_existential_0(v7);
    MEMORY[0x22AA9A450](v7, -1, -1);
    MEMORY[0x22AA9A450](v6, -1, -1);

    (*(v4 + 8))(v21, v20);
  }

  else
  {
    v12 = v1[9];
    v11 = v1[10];
    v13 = v1[8];

    (*(v12 + 8))(v11, v13);
  }

  v14 = v1[13];
  v15 = v1[6];
  v22 = v14;
  v23 = 1;
  v16 = v14;
  v15(&v22);

  v17 = v1[1];

  return v17();
}

uint64_t sub_2271ACDC8(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 72) = v17;
  *(v8 + 56) = v16;
  *(v8 + 128) = v15;
  *(v8 + 40) = a7;
  *(v8 + 48) = a8;
  *(v8 + 32) = a6;
  v10 = sub_22766B390();
  *(v8 + 80) = v10;
  *(v8 + 88) = *(v10 - 8);
  *(v8 + 96) = swift_task_alloc();
  *(v8 + 104) = swift_task_alloc();
  v13 = (a4 + *a4);
  v11 = swift_task_alloc();
  *(v8 + 112) = v11;
  *v11 = v8;
  v11[1] = sub_2271ACF50;

  return v13(v8 + 16);
}

uint64_t sub_2271ACF50()
{
  *(*v1 + 120) = v0;

  if (v0)
  {
    v2 = sub_2271AD258;
  }

  else
  {
    v2 = sub_2271AD064;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2271AD064(uint64_t a1)
{
  v23 = v1;
  sub_22766A710();
  v2 = sub_22766B380();
  v3 = sub_22766C8B0();
  v4 = os_log_type_enabled(v2, v3);
  v5 = v1[13];
  v7 = v1[10];
  v6 = v1[11];
  if (v4)
  {
    v18 = v1[7];
    v20 = v1[13];
    v8 = v1[4];
    v19 = v1[10];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v21[0] = v10;
    *v9 = 134218498;
    *(v9 + 4) = v8;
    *(v9 + 12) = 2080;
    v11 = sub_22766CE50();
    v13 = sub_226E97AE8(v11, v12, v21);

    *(v9 + 14) = v13;
    *(v9 + 22) = 2048;
    *(v9 + 24) = v18;
    _os_log_impl(&dword_226E8E000, v2, v3, "Finished A->P conversion: %ld:%s:%lu", v9, 0x20u);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x22AA9A450](v10, -1, -1);
    MEMORY[0x22AA9A450](v9, -1, -1);

    (*(v6 + 8))(v20, v19);
  }

  else
  {

    (*(v6 + 8))(v5, v7);
  }

  v14 = v1[8];
  v15 = v1[3];
  v21[0] = v1[2];
  v21[1] = v15;
  v22 = 0;

  v14(v21);
  swift_bridgeObjectRelease_n();

  v16 = v1[1];

  return v16();
}

uint64_t sub_2271AD258(uint64_t a1)
{
  v24 = v1;
  sub_22766A710();
  v2 = sub_22766B380();
  v3 = sub_22766C8B0();
  v4 = os_log_type_enabled(v2, v3);
  v5 = v1[11];
  v6 = v1[12];
  v7 = v1[10];
  if (v4)
  {
    v19 = v1[7];
    v21 = v1[12];
    v8 = v1[4];
    v20 = v1[10];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v22[0] = v10;
    *v9 = 134218498;
    *(v9 + 4) = v8;
    *(v9 + 12) = 2080;
    v11 = sub_22766CE50();
    v13 = sub_226E97AE8(v11, v12, v22);

    *(v9 + 14) = v13;
    *(v9 + 22) = 2048;
    *(v9 + 24) = v19;
    _os_log_impl(&dword_226E8E000, v2, v3, "Finished A->P conversion: %ld:%s:%lu", v9, 0x20u);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x22AA9A450](v10, -1, -1);
    MEMORY[0x22AA9A450](v9, -1, -1);

    (*(v5 + 8))(v21, v20);
  }

  else
  {

    (*(v5 + 8))(v6, v7);
  }

  v14 = v1[15];
  v15 = v1[8];
  v22[0] = v14;
  v22[1] = 0;
  v23 = 1;
  v16 = v14;
  v15(v22);

  v17 = v1[1];

  return v17();
}

uint64_t sub_2271AD454(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 64) = v17;
  *(v8 + 48) = v16;
  *(v8 + 120) = v15;
  *(v8 + 32) = a7;
  *(v8 + 40) = a8;
  *(v8 + 24) = a6;
  v10 = sub_22766B390();
  *(v8 + 72) = v10;
  *(v8 + 80) = *(v10 - 8);
  *(v8 + 88) = swift_task_alloc();
  *(v8 + 96) = swift_task_alloc();
  v13 = (a4 + *a4);
  v11 = swift_task_alloc();
  *(v8 + 104) = v11;
  *v11 = v8;
  v11[1] = sub_2271AD5DC;

  return v13(v8 + 16);
}

uint64_t sub_2271AD5DC()
{
  *(*v1 + 112) = v0;

  if (v0)
  {
    v2 = sub_2271BFD4C;
  }

  else
  {
    v2 = sub_2271AD6F0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2271AD6F0(uint64_t a1)
{
  v22 = v1;
  sub_22766A710();
  v2 = sub_22766B380();
  v3 = sub_22766C8B0();
  v4 = os_log_type_enabled(v2, v3);
  v5 = v1[12];
  v7 = v1[9];
  v6 = v1[10];
  if (v4)
  {
    v17 = v1[6];
    v19 = v1[12];
    v8 = v1[3];
    v18 = v1[9];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v20 = v10;
    *v9 = 134218498;
    *(v9 + 4) = v8;
    *(v9 + 12) = 2080;
    v11 = sub_22766CE50();
    v13 = sub_226E97AE8(v11, v12, &v20);

    *(v9 + 14) = v13;
    *(v9 + 22) = 2048;
    *(v9 + 24) = v17;
    _os_log_impl(&dword_226E8E000, v2, v3, "Finished A->P conversion: %ld:%s:%lu", v9, 0x20u);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x22AA9A450](v10, -1, -1);
    MEMORY[0x22AA9A450](v9, -1, -1);

    (*(v6 + 8))(v19, v18);
  }

  else
  {

    (*(v6 + 8))(v5, v7);
  }

  v14 = v1[7];
  v20 = v1[2];
  v21 = 0;
  swift_unknownObjectRetain();
  v14(&v20);
  swift_unknownObjectRelease_n();

  v15 = v1[1];

  return v15();
}

uint64_t sub_2271AD8E4(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 72) = v17;
  *(v8 + 56) = v16;
  *(v8 + 128) = v15;
  *(v8 + 40) = a7;
  *(v8 + 48) = a8;
  *(v8 + 32) = a6;
  v10 = sub_22766B390();
  *(v8 + 80) = v10;
  *(v8 + 88) = *(v10 - 8);
  *(v8 + 96) = swift_task_alloc();
  *(v8 + 104) = swift_task_alloc();
  v13 = (a4 + *a4);
  v11 = swift_task_alloc();
  *(v8 + 112) = v11;
  *v11 = v8;
  v11[1] = sub_2271ADA6C;

  return v13(v8 + 16);
}

uint64_t sub_2271ADA6C()
{
  *(*v1 + 120) = v0;

  if (v0)
  {
    v2 = sub_2271ADD78;
  }

  else
  {
    v2 = sub_2271ADB80;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2271ADB80(uint64_t a1)
{
  v24 = v1;
  sub_22766A710();
  v2 = sub_22766B380();
  v3 = sub_22766C8B0();
  v4 = os_log_type_enabled(v2, v3);
  v5 = v1[13];
  v7 = v1[10];
  v6 = v1[11];
  if (v4)
  {
    v18 = v1[7];
    v20 = v1[13];
    v8 = v1[4];
    v19 = v1[10];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v21 = v10;
    *v9 = 134218498;
    *(v9 + 4) = v8;
    *(v9 + 12) = 2080;
    v11 = sub_22766CE50();
    v13 = sub_226E97AE8(v11, v12, &v21);

    *(v9 + 14) = v13;
    *(v9 + 22) = 2048;
    *(v9 + 24) = v18;
    _os_log_impl(&dword_226E8E000, v2, v3, "Finished A->P conversion: %ld:%s:%lu", v9, 0x20u);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x22AA9A450](v10, -1, -1);
    MEMORY[0x22AA9A450](v9, -1, -1);

    (*(v6 + 8))(v20, v19);
  }

  else
  {

    (*(v6 + 8))(v5, v7);
  }

  v14 = v1[8];
  v15 = v1[3];
  v21 = v1[2];
  v22 = v15;
  v23 = 0;
  sub_226F5E0B4(v21, v15);
  v14(&v21);
  sub_2270934D8(v21, v22, v23);
  sub_226EDC420(v1[2], v1[3]);

  v16 = v1[1];

  return v16();
}

uint64_t sub_2271ADD78(uint64_t a1)
{
  v25 = v1;
  sub_22766A710();
  v2 = sub_22766B380();
  v3 = sub_22766C8B0();
  v4 = os_log_type_enabled(v2, v3);
  v5 = v1[11];
  v6 = v1[12];
  v7 = v1[10];
  if (v4)
  {
    v19 = v1[7];
    v21 = v1[12];
    v8 = v1[4];
    v20 = v1[10];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v22 = v10;
    *v9 = 134218498;
    *(v9 + 4) = v8;
    *(v9 + 12) = 2080;
    v11 = sub_22766CE50();
    v13 = sub_226E97AE8(v11, v12, &v22);

    *(v9 + 14) = v13;
    *(v9 + 22) = 2048;
    *(v9 + 24) = v19;
    _os_log_impl(&dword_226E8E000, v2, v3, "Finished A->P conversion: %ld:%s:%lu", v9, 0x20u);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x22AA9A450](v10, -1, -1);
    MEMORY[0x22AA9A450](v9, -1, -1);

    (*(v5 + 8))(v21, v20);
  }

  else
  {

    (*(v5 + 8))(v6, v7);
  }

  v14 = v1[15];
  v15 = v1[8];
  v22 = v14;
  v23 = 0;
  v24 = 1;
  v16 = v14;
  v15(&v22);

  sub_2270934D8(v22, v23, v24);

  v17 = v1[1];

  return v17();
}

uint64_t sub_2271ADF78(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 56) = v19;
  *(v8 + 40) = v18;
  *(v8 + 152) = v17;
  *(v8 + 24) = a7;
  *(v8 + 32) = a8;
  *(v8 + 16) = a6;
  *(v8 + 64) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BA430, &qword_227678BF8);
  *(v8 + 72) = swift_task_alloc();
  v10 = sub_22766B390();
  *(v8 + 80) = v10;
  *(v8 + 88) = *(v10 - 8);
  *(v8 + 96) = swift_task_alloc();
  *(v8 + 104) = swift_task_alloc();
  v11 = sub_227664900();
  *(v8 + 112) = v11;
  *(v8 + 120) = *(v11 - 8);
  v12 = swift_task_alloc();
  *(v8 + 128) = v12;
  v15 = (a4 + *a4);
  v13 = swift_task_alloc();
  *(v8 + 136) = v13;
  *v13 = v8;
  v13[1] = sub_2271AE19C;

  return v15(v12);
}

uint64_t sub_2271AE19C()
{
  *(*v1 + 144) = v0;

  if (v0)
  {
    v2 = sub_2271AE518;
  }

  else
  {
    v2 = sub_2271AE2B0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2271AE2B0(uint64_t a1)
{
  v25 = v1;
  sub_22766A710();
  v2 = sub_22766B380();
  v3 = sub_22766C8B0();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = v1[11];
    v22 = v1[10];
    v23 = v1[13];
    v21 = v1[5];
    v5 = v1[2];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v24 = v7;
    *v6 = 134218498;
    *(v6 + 4) = v5;
    *(v6 + 12) = 2080;
    v8 = sub_22766CE50();
    v10 = sub_226E97AE8(v8, v9, &v24);

    *(v6 + 14) = v10;
    *(v6 + 22) = 2048;
    *(v6 + 24) = v21;
    _os_log_impl(&dword_226E8E000, v2, v3, "Finished A->P conversion: %ld:%s:%lu", v6, 0x20u);
    __swift_destroy_boxed_opaque_existential_0(v7);
    MEMORY[0x22AA9A450](v7, -1, -1);
    MEMORY[0x22AA9A450](v6, -1, -1);

    (*(v4 + 8))(v23, v22);
  }

  else
  {
    v11 = v1[13];
    v12 = v1[10];
    v13 = v1[11];

    (*(v13 + 8))(v11, v12);
  }

  v15 = v1[15];
  v14 = v1[16];
  v16 = v1[14];
  v17 = v1[9];
  v18 = v1[6];
  (*(v15 + 16))(v17, v14, v16);
  swift_storeEnumTagMultiPayload();
  v18(v17);
  sub_226E97D1C(v17, &unk_27D7BA430, &qword_227678BF8);
  (*(v15 + 8))(v14, v16);

  v19 = v1[1];

  return v19();
}

uint64_t sub_2271AE518(uint64_t a1)
{
  v24 = v1;
  sub_22766A710();
  v2 = sub_22766B380();
  v3 = sub_22766C8B0();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = v1[11];
    v21 = v1[10];
    v22 = v1[12];
    v20 = v1[5];
    v5 = v1[2];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v23 = v7;
    *v6 = 134218498;
    *(v6 + 4) = v5;
    *(v6 + 12) = 2080;
    v8 = sub_22766CE50();
    v10 = sub_226E97AE8(v8, v9, &v23);

    *(v6 + 14) = v10;
    *(v6 + 22) = 2048;
    *(v6 + 24) = v20;
    _os_log_impl(&dword_226E8E000, v2, v3, "Finished A->P conversion: %ld:%s:%lu", v6, 0x20u);
    __swift_destroy_boxed_opaque_existential_0(v7);
    MEMORY[0x22AA9A450](v7, -1, -1);
    MEMORY[0x22AA9A450](v6, -1, -1);

    (*(v4 + 8))(v22, v21);
  }

  else
  {
    v12 = v1[11];
    v11 = v1[12];
    v13 = v1[10];

    (*(v12 + 8))(v11, v13);
  }

  v14 = v1[18];
  v15 = v1[9];
  v16 = v1[6];
  *v15 = v14;
  swift_storeEnumTagMultiPayload();
  v17 = v14;
  v16(v15);

  sub_226E97D1C(v15, &unk_27D7BA430, &qword_227678BF8);

  v18 = v1[1];

  return v18();
}

uint64_t sub_2271AE754(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 64) = v17;
  *(v8 + 48) = v16;
  *(v8 + 120) = v15;
  *(v8 + 32) = a7;
  *(v8 + 40) = a8;
  *(v8 + 24) = a6;
  v10 = sub_22766B390();
  *(v8 + 72) = v10;
  *(v8 + 80) = *(v10 - 8);
  *(v8 + 88) = swift_task_alloc();
  *(v8 + 96) = swift_task_alloc();
  v13 = (a4 + *a4);
  v11 = swift_task_alloc();
  *(v8 + 104) = v11;
  *v11 = v8;
  v11[1] = sub_2271AE8DC;

  return v13(v8 + 16);
}

uint64_t sub_2271AE8DC()
{
  *(*v1 + 112) = v0;

  if (v0)
  {
    v2 = sub_2271BFD4C;
  }

  else
  {
    v2 = sub_2271BFD48;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2271AE9F0(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 64) = v17;
  *(v8 + 48) = v16;
  *(v8 + 120) = v15;
  *(v8 + 32) = a7;
  *(v8 + 40) = a8;
  *(v8 + 24) = a6;
  v10 = sub_22766B390();
  *(v8 + 72) = v10;
  *(v8 + 80) = *(v10 - 8);
  *(v8 + 88) = swift_task_alloc();
  *(v8 + 96) = swift_task_alloc();
  v13 = (a4 + *a4);
  v11 = swift_task_alloc();
  *(v8 + 104) = v11;
  *v11 = v8;
  v11[1] = sub_2271AEB78;

  return v13(v8 + 16);
}

uint64_t sub_2271AEB78()
{
  *(*v1 + 112) = v0;

  if (v0)
  {
    v2 = sub_2271BFD4C;
  }

  else
  {
    v2 = sub_2271AEC8C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2271AEC8C(uint64_t a1)
{
  v23 = v1;
  sub_22766A710();
  v2 = sub_22766B380();
  v3 = sub_22766C8B0();
  v4 = os_log_type_enabled(v2, v3);
  v5 = v1[12];
  v7 = v1[9];
  v6 = v1[10];
  if (v4)
  {
    v18 = v1[6];
    v20 = v1[12];
    v8 = v1[3];
    v19 = v1[9];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v21 = v10;
    *v9 = 134218498;
    *(v9 + 4) = v8;
    *(v9 + 12) = 2080;
    v11 = sub_22766CE50();
    v13 = sub_226E97AE8(v11, v12, &v21);

    *(v9 + 14) = v13;
    *(v9 + 22) = 2048;
    *(v9 + 24) = v18;
    _os_log_impl(&dword_226E8E000, v2, v3, "Finished A->P conversion: %ld:%s:%lu", v9, 0x20u);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x22AA9A450](v10, -1, -1);
    MEMORY[0x22AA9A450](v9, -1, -1);

    (*(v6 + 8))(v20, v19);
  }

  else
  {

    (*(v6 + 8))(v5, v7);
  }

  v14 = v1[7];
  v21 = v1[2];
  v22 = 0;
  v15 = v21;
  v14(&v21);

  v16 = v1[1];

  return v16();
}

uint64_t sub_2271AEE7C(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 64) = v17;
  *(v8 + 48) = v16;
  *(v8 + 120) = v15;
  *(v8 + 32) = a7;
  *(v8 + 40) = a8;
  *(v8 + 24) = a6;
  v10 = sub_22766B390();
  *(v8 + 72) = v10;
  *(v8 + 80) = *(v10 - 8);
  *(v8 + 88) = swift_task_alloc();
  *(v8 + 96) = swift_task_alloc();
  v13 = (a4 + *a4);
  v11 = swift_task_alloc();
  *(v8 + 104) = v11;
  *v11 = v8;
  v11[1] = sub_2271AF004;

  return v13(v8 + 16);
}

uint64_t sub_2271AF004()
{
  *(*v1 + 112) = v0;

  if (v0)
  {
    v2 = sub_2271BFD4C;
  }

  else
  {
    v2 = sub_2271BFD5C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2271AF118(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 56) = v19;
  *(v8 + 40) = v18;
  *(v8 + 152) = v17;
  *(v8 + 24) = a7;
  *(v8 + 32) = a8;
  *(v8 + 16) = a6;
  *(v8 + 64) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBD40, &unk_227684AE0);
  *(v8 + 72) = swift_task_alloc();
  v10 = sub_22766B390();
  *(v8 + 80) = v10;
  *(v8 + 88) = *(v10 - 8);
  *(v8 + 96) = swift_task_alloc();
  *(v8 + 104) = swift_task_alloc();
  v11 = sub_22766B5F0();
  *(v8 + 112) = v11;
  *(v8 + 120) = *(v11 - 8);
  v12 = swift_task_alloc();
  *(v8 + 128) = v12;
  v15 = (a4 + *a4);
  v13 = swift_task_alloc();
  *(v8 + 136) = v13;
  *v13 = v8;
  v13[1] = sub_2271AF33C;

  return v15(v12);
}

uint64_t sub_2271AF33C()
{
  *(*v1 + 144) = v0;

  if (v0)
  {
    v2 = sub_2271AF6B8;
  }

  else
  {
    v2 = sub_2271AF450;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2271AF450(uint64_t a1)
{
  v25 = v1;
  sub_22766A710();
  v2 = sub_22766B380();
  v3 = sub_22766C8B0();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = v1[11];
    v22 = v1[10];
    v23 = v1[13];
    v21 = v1[5];
    v5 = v1[2];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v24 = v7;
    *v6 = 134218498;
    *(v6 + 4) = v5;
    *(v6 + 12) = 2080;
    v8 = sub_22766CE50();
    v10 = sub_226E97AE8(v8, v9, &v24);

    *(v6 + 14) = v10;
    *(v6 + 22) = 2048;
    *(v6 + 24) = v21;
    _os_log_impl(&dword_226E8E000, v2, v3, "Finished A->P conversion: %ld:%s:%lu", v6, 0x20u);
    __swift_destroy_boxed_opaque_existential_0(v7);
    MEMORY[0x22AA9A450](v7, -1, -1);
    MEMORY[0x22AA9A450](v6, -1, -1);

    (*(v4 + 8))(v23, v22);
  }

  else
  {
    v11 = v1[13];
    v12 = v1[10];
    v13 = v1[11];

    (*(v13 + 8))(v11, v12);
  }

  v15 = v1[15];
  v14 = v1[16];
  v16 = v1[14];
  v17 = v1[9];
  v18 = v1[6];
  (*(v15 + 16))(v17, v14, v16);
  swift_storeEnumTagMultiPayload();
  v18(v17);
  sub_226E97D1C(v17, &qword_27D7BBD40, &unk_227684AE0);
  (*(v15 + 8))(v14, v16);

  v19 = v1[1];

  return v19();
}

uint64_t sub_2271AF6B8(uint64_t a1)
{
  v24 = v1;
  sub_22766A710();
  v2 = sub_22766B380();
  v3 = sub_22766C8B0();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = v1[11];
    v21 = v1[10];
    v22 = v1[12];
    v20 = v1[5];
    v5 = v1[2];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v23 = v7;
    *v6 = 134218498;
    *(v6 + 4) = v5;
    *(v6 + 12) = 2080;
    v8 = sub_22766CE50();
    v10 = sub_226E97AE8(v8, v9, &v23);

    *(v6 + 14) = v10;
    *(v6 + 22) = 2048;
    *(v6 + 24) = v20;
    _os_log_impl(&dword_226E8E000, v2, v3, "Finished A->P conversion: %ld:%s:%lu", v6, 0x20u);
    __swift_destroy_boxed_opaque_existential_0(v7);
    MEMORY[0x22AA9A450](v7, -1, -1);
    MEMORY[0x22AA9A450](v6, -1, -1);

    (*(v4 + 8))(v22, v21);
  }

  else
  {
    v12 = v1[11];
    v11 = v1[12];
    v13 = v1[10];

    (*(v12 + 8))(v11, v13);
  }

  v14 = v1[18];
  v15 = v1[9];
  v16 = v1[6];
  *v15 = v14;
  swift_storeEnumTagMultiPayload();
  v17 = v14;
  v16(v15);

  sub_226E97D1C(v15, &qword_27D7BBD40, &unk_227684AE0);

  v18 = v1[1];

  return v18();
}

uint64_t sub_2271AF8F4(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 56) = v19;
  *(v8 + 40) = v18;
  *(v8 + 152) = v17;
  *(v8 + 24) = a7;
  *(v8 + 32) = a8;
  *(v8 + 16) = a6;
  *(v8 + 64) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD7F0, &qword_22767C068);
  *(v8 + 72) = swift_task_alloc();
  v10 = sub_22766B390();
  *(v8 + 80) = v10;
  *(v8 + 88) = *(v10 - 8);
  *(v8 + 96) = swift_task_alloc();
  *(v8 + 104) = swift_task_alloc();
  v11 = sub_227665D90();
  *(v8 + 112) = v11;
  *(v8 + 120) = *(v11 - 8);
  v12 = swift_task_alloc();
  *(v8 + 128) = v12;
  v15 = (a4 + *a4);
  v13 = swift_task_alloc();
  *(v8 + 136) = v13;
  *v13 = v8;
  v13[1] = sub_2271AFB18;

  return v15(v12);
}

uint64_t sub_2271AFB18()
{
  *(*v1 + 144) = v0;

  if (v0)
  {
    v2 = sub_2271AFE94;
  }

  else
  {
    v2 = sub_2271AFC2C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2271AFC2C(uint64_t a1)
{
  v25 = v1;
  sub_22766A710();
  v2 = sub_22766B380();
  v3 = sub_22766C8B0();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = v1[11];
    v22 = v1[10];
    v23 = v1[13];
    v21 = v1[5];
    v5 = v1[2];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v24 = v7;
    *v6 = 134218498;
    *(v6 + 4) = v5;
    *(v6 + 12) = 2080;
    v8 = sub_22766CE50();
    v10 = sub_226E97AE8(v8, v9, &v24);

    *(v6 + 14) = v10;
    *(v6 + 22) = 2048;
    *(v6 + 24) = v21;
    _os_log_impl(&dword_226E8E000, v2, v3, "Finished A->P conversion: %ld:%s:%lu", v6, 0x20u);
    __swift_destroy_boxed_opaque_existential_0(v7);
    MEMORY[0x22AA9A450](v7, -1, -1);
    MEMORY[0x22AA9A450](v6, -1, -1);

    (*(v4 + 8))(v23, v22);
  }

  else
  {
    v11 = v1[13];
    v12 = v1[10];
    v13 = v1[11];

    (*(v13 + 8))(v11, v12);
  }

  v15 = v1[15];
  v14 = v1[16];
  v16 = v1[14];
  v17 = v1[9];
  v18 = v1[6];
  (*(v15 + 16))(v17, v14, v16);
  swift_storeEnumTagMultiPayload();
  v18(v17);
  sub_226E97D1C(v17, &unk_27D7BD7F0, &qword_22767C068);
  (*(v15 + 8))(v14, v16);

  v19 = v1[1];

  return v19();
}

uint64_t sub_2271AFE94(uint64_t a1)
{
  v24 = v1;
  sub_22766A710();
  v2 = sub_22766B380();
  v3 = sub_22766C8B0();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = v1[11];
    v21 = v1[10];
    v22 = v1[12];
    v20 = v1[5];
    v5 = v1[2];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v23 = v7;
    *v6 = 134218498;
    *(v6 + 4) = v5;
    *(v6 + 12) = 2080;
    v8 = sub_22766CE50();
    v10 = sub_226E97AE8(v8, v9, &v23);

    *(v6 + 14) = v10;
    *(v6 + 22) = 2048;
    *(v6 + 24) = v20;
    _os_log_impl(&dword_226E8E000, v2, v3, "Finished A->P conversion: %ld:%s:%lu", v6, 0x20u);
    __swift_destroy_boxed_opaque_existential_0(v7);
    MEMORY[0x22AA9A450](v7, -1, -1);
    MEMORY[0x22AA9A450](v6, -1, -1);

    (*(v4 + 8))(v22, v21);
  }

  else
  {
    v12 = v1[11];
    v11 = v1[12];
    v13 = v1[10];

    (*(v12 + 8))(v11, v13);
  }

  v14 = v1[18];
  v15 = v1[9];
  v16 = v1[6];
  *v15 = v14;
  swift_storeEnumTagMultiPayload();
  v17 = v14;
  v16(v15);

  sub_226E97D1C(v15, &unk_27D7BD7F0, &qword_22767C068);

  v18 = v1[1];

  return v18();
}

uint64_t sub_2271B00D0(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 56) = v19;
  *(v8 + 40) = v18;
  *(v8 + 152) = v17;
  *(v8 + 24) = a7;
  *(v8 + 32) = a8;
  *(v8 + 16) = a6;
  *(v8 + 64) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BBD00, &unk_227684CE0);
  *(v8 + 72) = swift_task_alloc();
  v10 = sub_22766B390();
  *(v8 + 80) = v10;
  *(v8 + 88) = *(v10 - 8);
  *(v8 + 96) = swift_task_alloc();
  *(v8 + 104) = swift_task_alloc();
  v11 = sub_227665E60();
  *(v8 + 112) = v11;
  *(v8 + 120) = *(v11 - 8);
  v12 = swift_task_alloc();
  *(v8 + 128) = v12;
  v15 = (a4 + *a4);
  v13 = swift_task_alloc();
  *(v8 + 136) = v13;
  *v13 = v8;
  v13[1] = sub_2271B02F4;

  return v15(v12);
}

uint64_t sub_2271B02F4()
{
  *(*v1 + 144) = v0;

  if (v0)
  {
    v2 = sub_2271B0670;
  }

  else
  {
    v2 = sub_2271B0408;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2271B0408(uint64_t a1)
{
  v25 = v1;
  sub_22766A710();
  v2 = sub_22766B380();
  v3 = sub_22766C8B0();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = v1[11];
    v22 = v1[10];
    v23 = v1[13];
    v21 = v1[5];
    v5 = v1[2];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v24 = v7;
    *v6 = 134218498;
    *(v6 + 4) = v5;
    *(v6 + 12) = 2080;
    v8 = sub_22766CE50();
    v10 = sub_226E97AE8(v8, v9, &v24);

    *(v6 + 14) = v10;
    *(v6 + 22) = 2048;
    *(v6 + 24) = v21;
    _os_log_impl(&dword_226E8E000, v2, v3, "Finished A->P conversion: %ld:%s:%lu", v6, 0x20u);
    __swift_destroy_boxed_opaque_existential_0(v7);
    MEMORY[0x22AA9A450](v7, -1, -1);
    MEMORY[0x22AA9A450](v6, -1, -1);

    (*(v4 + 8))(v23, v22);
  }

  else
  {
    v11 = v1[13];
    v12 = v1[10];
    v13 = v1[11];

    (*(v13 + 8))(v11, v12);
  }

  v15 = v1[15];
  v14 = v1[16];
  v16 = v1[14];
  v17 = v1[9];
  v18 = v1[6];
  (*(v15 + 16))(v17, v14, v16);
  swift_storeEnumTagMultiPayload();
  v18(v17);
  sub_226E97D1C(v17, &unk_27D7BBD00, &unk_227684CE0);
  (*(v15 + 8))(v14, v16);

  v19 = v1[1];

  return v19();
}

uint64_t sub_2271B0670(uint64_t a1)
{
  v24 = v1;
  sub_22766A710();
  v2 = sub_22766B380();
  v3 = sub_22766C8B0();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = v1[11];
    v21 = v1[10];
    v22 = v1[12];
    v20 = v1[5];
    v5 = v1[2];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v23 = v7;
    *v6 = 134218498;
    *(v6 + 4) = v5;
    *(v6 + 12) = 2080;
    v8 = sub_22766CE50();
    v10 = sub_226E97AE8(v8, v9, &v23);

    *(v6 + 14) = v10;
    *(v6 + 22) = 2048;
    *(v6 + 24) = v20;
    _os_log_impl(&dword_226E8E000, v2, v3, "Finished A->P conversion: %ld:%s:%lu", v6, 0x20u);
    __swift_destroy_boxed_opaque_existential_0(v7);
    MEMORY[0x22AA9A450](v7, -1, -1);
    MEMORY[0x22AA9A450](v6, -1, -1);

    (*(v4 + 8))(v22, v21);
  }

  else
  {
    v12 = v1[11];
    v11 = v1[12];
    v13 = v1[10];

    (*(v12 + 8))(v11, v13);
  }

  v14 = v1[18];
  v15 = v1[9];
  v16 = v1[6];
  *v15 = v14;
  swift_storeEnumTagMultiPayload();
  v17 = v14;
  v16(v15);

  sub_226E97D1C(v15, &unk_27D7BBD00, &unk_227684CE0);

  v18 = v1[1];

  return v18();
}

uint64_t sub_2271B08AC(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 56) = v19;
  *(v8 + 40) = v18;
  *(v8 + 152) = v17;
  *(v8 + 24) = a7;
  *(v8 + 32) = a8;
  *(v8 + 16) = a6;
  *(v8 + 64) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA400, &unk_227684C10);
  *(v8 + 72) = swift_task_alloc();
  v10 = sub_22766B390();
  *(v8 + 80) = v10;
  *(v8 + 88) = *(v10 - 8);
  *(v8 + 96) = swift_task_alloc();
  *(v8 + 104) = swift_task_alloc();
  v11 = sub_227667A70();
  *(v8 + 112) = v11;
  *(v8 + 120) = *(v11 - 8);
  v12 = swift_task_alloc();
  *(v8 + 128) = v12;
  v15 = (a4 + *a4);
  v13 = swift_task_alloc();
  *(v8 + 136) = v13;
  *v13 = v8;
  v13[1] = sub_2271B0AD0;

  return v15(v12);
}

uint64_t sub_2271B0AD0()
{
  *(*v1 + 144) = v0;

  if (v0)
  {
    v2 = sub_2271B0E4C;
  }

  else
  {
    v2 = sub_2271B0BE4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2271B0BE4(uint64_t a1)
{
  v25 = v1;
  sub_22766A710();
  v2 = sub_22766B380();
  v3 = sub_22766C8B0();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = v1[11];
    v22 = v1[10];
    v23 = v1[13];
    v21 = v1[5];
    v5 = v1[2];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v24 = v7;
    *v6 = 134218498;
    *(v6 + 4) = v5;
    *(v6 + 12) = 2080;
    v8 = sub_22766CE50();
    v10 = sub_226E97AE8(v8, v9, &v24);

    *(v6 + 14) = v10;
    *(v6 + 22) = 2048;
    *(v6 + 24) = v21;
    _os_log_impl(&dword_226E8E000, v2, v3, "Finished A->P conversion: %ld:%s:%lu", v6, 0x20u);
    __swift_destroy_boxed_opaque_existential_0(v7);
    MEMORY[0x22AA9A450](v7, -1, -1);
    MEMORY[0x22AA9A450](v6, -1, -1);

    (*(v4 + 8))(v23, v22);
  }

  else
  {
    v11 = v1[13];
    v12 = v1[10];
    v13 = v1[11];

    (*(v13 + 8))(v11, v12);
  }

  v15 = v1[15];
  v14 = v1[16];
  v16 = v1[14];
  v17 = v1[9];
  v18 = v1[6];
  (*(v15 + 16))(v17, v14, v16);
  swift_storeEnumTagMultiPayload();
  v18(v17);
  sub_226E97D1C(v17, &qword_27D7BA400, &unk_227684C10);
  (*(v15 + 8))(v14, v16);

  v19 = v1[1];

  return v19();
}

uint64_t sub_2271B0E4C(uint64_t a1)
{
  v24 = v1;
  sub_22766A710();
  v2 = sub_22766B380();
  v3 = sub_22766C8B0();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = v1[11];
    v21 = v1[10];
    v22 = v1[12];
    v20 = v1[5];
    v5 = v1[2];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v23 = v7;
    *v6 = 134218498;
    *(v6 + 4) = v5;
    *(v6 + 12) = 2080;
    v8 = sub_22766CE50();
    v10 = sub_226E97AE8(v8, v9, &v23);

    *(v6 + 14) = v10;
    *(v6 + 22) = 2048;
    *(v6 + 24) = v20;
    _os_log_impl(&dword_226E8E000, v2, v3, "Finished A->P conversion: %ld:%s:%lu", v6, 0x20u);
    __swift_destroy_boxed_opaque_existential_0(v7);
    MEMORY[0x22AA9A450](v7, -1, -1);
    MEMORY[0x22AA9A450](v6, -1, -1);

    (*(v4 + 8))(v22, v21);
  }

  else
  {
    v12 = v1[11];
    v11 = v1[12];
    v13 = v1[10];

    (*(v12 + 8))(v11, v13);
  }

  v14 = v1[18];
  v15 = v1[9];
  v16 = v1[6];
  *v15 = v14;
  swift_storeEnumTagMultiPayload();
  v17 = v14;
  v16(v15);

  sub_226E97D1C(v15, &qword_27D7BA400, &unk_227684C10);

  v18 = v1[1];

  return v18();
}

uint64_t sub_2271B1088(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 56) = v19;
  *(v8 + 40) = v18;
  *(v8 + 152) = v17;
  *(v8 + 24) = a7;
  *(v8 + 32) = a8;
  *(v8 + 16) = a6;
  *(v8 + 64) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BBD30, &qword_22767BFC8);
  *(v8 + 72) = swift_task_alloc();
  v10 = sub_22766B390();
  *(v8 + 80) = v10;
  *(v8 + 88) = *(v10 - 8);
  *(v8 + 96) = swift_task_alloc();
  *(v8 + 104) = swift_task_alloc();
  v11 = sub_227663CA0();
  *(v8 + 112) = v11;
  *(v8 + 120) = *(v11 - 8);
  v12 = swift_task_alloc();
  *(v8 + 128) = v12;
  v15 = (a4 + *a4);
  v13 = swift_task_alloc();
  *(v8 + 136) = v13;
  *v13 = v8;
  v13[1] = sub_2271B12AC;

  return v15(v12);
}

uint64_t sub_2271B12AC()
{
  *(*v1 + 144) = v0;

  if (v0)
  {
    v2 = sub_2271B1628;
  }

  else
  {
    v2 = sub_2271B13C0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2271B13C0(uint64_t a1)
{
  v25 = v1;
  sub_22766A710();
  v2 = sub_22766B380();
  v3 = sub_22766C8B0();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = v1[11];
    v22 = v1[10];
    v23 = v1[13];
    v21 = v1[5];
    v5 = v1[2];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v24 = v7;
    *v6 = 134218498;
    *(v6 + 4) = v5;
    *(v6 + 12) = 2080;
    v8 = sub_22766CE50();
    v10 = sub_226E97AE8(v8, v9, &v24);

    *(v6 + 14) = v10;
    *(v6 + 22) = 2048;
    *(v6 + 24) = v21;
    _os_log_impl(&dword_226E8E000, v2, v3, "Finished A->P conversion: %ld:%s:%lu", v6, 0x20u);
    __swift_destroy_boxed_opaque_existential_0(v7);
    MEMORY[0x22AA9A450](v7, -1, -1);
    MEMORY[0x22AA9A450](v6, -1, -1);

    (*(v4 + 8))(v23, v22);
  }

  else
  {
    v11 = v1[13];
    v12 = v1[10];
    v13 = v1[11];

    (*(v13 + 8))(v11, v12);
  }

  v15 = v1[15];
  v14 = v1[16];
  v16 = v1[14];
  v17 = v1[9];
  v18 = v1[6];
  (*(v15 + 16))(v17, v14, v16);
  swift_storeEnumTagMultiPayload();
  v18(v17);
  sub_226E97D1C(v17, &unk_27D7BBD30, &qword_22767BFC8);
  (*(v15 + 8))(v14, v16);

  v19 = v1[1];

  return v19();
}

uint64_t sub_2271B1628(uint64_t a1)
{
  v24 = v1;
  sub_22766A710();
  v2 = sub_22766B380();
  v3 = sub_22766C8B0();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = v1[11];
    v21 = v1[10];
    v22 = v1[12];
    v20 = v1[5];
    v5 = v1[2];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v23 = v7;
    *v6 = 134218498;
    *(v6 + 4) = v5;
    *(v6 + 12) = 2080;
    v8 = sub_22766CE50();
    v10 = sub_226E97AE8(v8, v9, &v23);

    *(v6 + 14) = v10;
    *(v6 + 22) = 2048;
    *(v6 + 24) = v20;
    _os_log_impl(&dword_226E8E000, v2, v3, "Finished A->P conversion: %ld:%s:%lu", v6, 0x20u);
    __swift_destroy_boxed_opaque_existential_0(v7);
    MEMORY[0x22AA9A450](v7, -1, -1);
    MEMORY[0x22AA9A450](v6, -1, -1);

    (*(v4 + 8))(v22, v21);
  }

  else
  {
    v12 = v1[11];
    v11 = v1[12];
    v13 = v1[10];

    (*(v12 + 8))(v11, v13);
  }

  v14 = v1[18];
  v15 = v1[9];
  v16 = v1[6];
  *v15 = v14;
  swift_storeEnumTagMultiPayload();
  v17 = v14;
  v16(v15);

  sub_226E97D1C(v15, &unk_27D7BBD30, &qword_22767BFC8);

  v18 = v1[1];

  return v18();
}

uint64_t sub_2271B1864(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 64) = v17;
  *(v8 + 48) = v16;
  *(v8 + 120) = v15;
  *(v8 + 32) = a7;
  *(v8 + 40) = a8;
  *(v8 + 24) = a6;
  v10 = sub_22766B390();
  *(v8 + 72) = v10;
  *(v8 + 80) = *(v10 - 8);
  *(v8 + 88) = swift_task_alloc();
  *(v8 + 96) = swift_task_alloc();
  v13 = (a4 + *a4);
  v11 = swift_task_alloc();
  *(v8 + 104) = v11;
  *v11 = v8;
  v11[1] = sub_2271B19EC;

  return v13(v8 + 16);
}

uint64_t sub_2271B19EC()
{
  *(*v1 + 112) = v0;

  if (v0)
  {
    v2 = sub_2271BFD4C;
  }

  else
  {
    v2 = sub_2271B1B00;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2271B1B00(uint64_t a1)
{
  v22 = v1;
  sub_22766A710();
  v2 = sub_22766B380();
  v3 = sub_22766C8B0();
  v4 = os_log_type_enabled(v2, v3);
  v5 = v1[12];
  v7 = v1[9];
  v6 = v1[10];
  if (v4)
  {
    v17 = v1[6];
    v19 = v1[12];
    v8 = v1[3];
    v18 = v1[9];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v20 = v10;
    *v9 = 134218498;
    *(v9 + 4) = v8;
    *(v9 + 12) = 2080;
    v11 = sub_22766CE50();
    v13 = sub_226E97AE8(v11, v12, &v20);

    *(v9 + 14) = v13;
    *(v9 + 22) = 2048;
    *(v9 + 24) = v17;
    _os_log_impl(&dword_226E8E000, v2, v3, "Finished A->P conversion: %ld:%s:%lu", v9, 0x20u);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x22AA9A450](v10, -1, -1);
    MEMORY[0x22AA9A450](v9, -1, -1);

    (*(v6 + 8))(v19, v18);
  }

  else
  {

    (*(v6 + 8))(v5, v7);
  }

  v14 = v1[7];
  v20 = v1[2];
  v21 = 0;
  v14(&v20);

  v15 = v1[1];

  return v15();
}

uint64_t sub_2271B1CE0(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 56) = v19;
  *(v8 + 40) = v18;
  *(v8 + 152) = v17;
  *(v8 + 24) = a7;
  *(v8 + 32) = a8;
  *(v8 + 16) = a6;
  *(v8 + 64) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BBD20, &unk_227684BF0);
  *(v8 + 72) = swift_task_alloc();
  v10 = sub_22766B390();
  *(v8 + 80) = v10;
  *(v8 + 88) = *(v10 - 8);
  *(v8 + 96) = swift_task_alloc();
  *(v8 + 104) = swift_task_alloc();
  v11 = sub_2276638D0();
  *(v8 + 112) = v11;
  *(v8 + 120) = *(v11 - 8);
  v12 = swift_task_alloc();
  *(v8 + 128) = v12;
  v15 = (a4 + *a4);
  v13 = swift_task_alloc();
  *(v8 + 136) = v13;
  *v13 = v8;
  v13[1] = sub_2271B1F04;

  return v15(v12);
}

uint64_t sub_2271B1F04()
{
  *(*v1 + 144) = v0;

  if (v0)
  {
    v2 = sub_2271B2280;
  }

  else
  {
    v2 = sub_2271B2018;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2271B2018(uint64_t a1)
{
  v25 = v1;
  sub_22766A710();
  v2 = sub_22766B380();
  v3 = sub_22766C8B0();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = v1[11];
    v22 = v1[10];
    v23 = v1[13];
    v21 = v1[5];
    v5 = v1[2];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v24 = v7;
    *v6 = 134218498;
    *(v6 + 4) = v5;
    *(v6 + 12) = 2080;
    v8 = sub_22766CE50();
    v10 = sub_226E97AE8(v8, v9, &v24);

    *(v6 + 14) = v10;
    *(v6 + 22) = 2048;
    *(v6 + 24) = v21;
    _os_log_impl(&dword_226E8E000, v2, v3, "Finished A->P conversion: %ld:%s:%lu", v6, 0x20u);
    __swift_destroy_boxed_opaque_existential_0(v7);
    MEMORY[0x22AA9A450](v7, -1, -1);
    MEMORY[0x22AA9A450](v6, -1, -1);

    (*(v4 + 8))(v23, v22);
  }

  else
  {
    v11 = v1[13];
    v12 = v1[10];
    v13 = v1[11];

    (*(v13 + 8))(v11, v12);
  }

  v15 = v1[15];
  v14 = v1[16];
  v16 = v1[14];
  v17 = v1[9];
  v18 = v1[6];
  (*(v15 + 16))(v17, v14, v16);
  swift_storeEnumTagMultiPayload();
  v18(v17);
  sub_226E97D1C(v17, &unk_27D7BBD20, &unk_227684BF0);
  (*(v15 + 8))(v14, v16);

  v19 = v1[1];

  return v19();
}

uint64_t sub_2271B2280(uint64_t a1)
{
  v24 = v1;
  sub_22766A710();
  v2 = sub_22766B380();
  v3 = sub_22766C8B0();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = v1[11];
    v21 = v1[10];
    v22 = v1[12];
    v20 = v1[5];
    v5 = v1[2];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v23 = v7;
    *v6 = 134218498;
    *(v6 + 4) = v5;
    *(v6 + 12) = 2080;
    v8 = sub_22766CE50();
    v10 = sub_226E97AE8(v8, v9, &v23);

    *(v6 + 14) = v10;
    *(v6 + 22) = 2048;
    *(v6 + 24) = v20;
    _os_log_impl(&dword_226E8E000, v2, v3, "Finished A->P conversion: %ld:%s:%lu", v6, 0x20u);
    __swift_destroy_boxed_opaque_existential_0(v7);
    MEMORY[0x22AA9A450](v7, -1, -1);
    MEMORY[0x22AA9A450](v6, -1, -1);

    (*(v4 + 8))(v22, v21);
  }

  else
  {
    v12 = v1[11];
    v11 = v1[12];
    v13 = v1[10];

    (*(v12 + 8))(v11, v13);
  }

  v14 = v1[18];
  v15 = v1[9];
  v16 = v1[6];
  *v15 = v14;
  swift_storeEnumTagMultiPayload();
  v17 = v14;
  v16(v15);

  sub_226E97D1C(v15, &unk_27D7BBD20, &unk_227684BF0);

  v18 = v1[1];

  return v18();
}

uint64_t sub_2271B24BC(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 64) = v17;
  *(v8 + 48) = v16;
  *(v8 + 120) = v15;
  *(v8 + 32) = a7;
  *(v8 + 40) = a8;
  *(v8 + 24) = a6;
  v10 = sub_22766B390();
  *(v8 + 72) = v10;
  *(v8 + 80) = *(v10 - 8);
  *(v8 + 88) = swift_task_alloc();
  *(v8 + 96) = swift_task_alloc();
  v13 = (a4 + *a4);
  v11 = swift_task_alloc();
  *(v8 + 104) = v11;
  *v11 = v8;
  v11[1] = sub_2271B2644;

  return v13(v8 + 16);
}

uint64_t sub_2271B2644()
{
  *(*v1 + 112) = v0;

  if (v0)
  {
    v2 = sub_2271B294C;
  }

  else
  {
    v2 = sub_2271B2758;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2271B2758(uint64_t a1)
{
  v22 = v1;
  sub_22766A710();
  v2 = sub_22766B380();
  v3 = sub_22766C8B0();
  v4 = os_log_type_enabled(v2, v3);
  v5 = v1[12];
  v7 = v1[9];
  v6 = v1[10];
  if (v4)
  {
    v17 = v1[6];
    v19 = v1[12];
    v8 = v1[3];
    v18 = v1[9];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v20 = v10;
    *v9 = 134218498;
    *(v9 + 4) = v8;
    *(v9 + 12) = 2080;
    v11 = sub_22766CE50();
    v13 = sub_226E97AE8(v11, v12, &v20);

    *(v9 + 14) = v13;
    *(v9 + 22) = 2048;
    *(v9 + 24) = v17;
    _os_log_impl(&dword_226E8E000, v2, v3, "Finished A->P conversion: %ld:%s:%lu", v9, 0x20u);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x22AA9A450](v10, -1, -1);
    MEMORY[0x22AA9A450](v9, -1, -1);

    (*(v6 + 8))(v19, v18);
  }

  else
  {

    (*(v6 + 8))(v5, v7);
  }

  v14 = v1[7];
  v20 = v1[2];
  v21 = 0;

  v14(&v20);
  swift_bridgeObjectRelease_n();

  v15 = v1[1];

  return v15();
}

uint64_t sub_2271B294C(uint64_t a1)
{
  v24 = v1;
  sub_22766A710();
  v2 = sub_22766B380();
  v3 = sub_22766C8B0();
  v4 = os_log_type_enabled(v2, v3);
  v5 = v1[10];
  v6 = v1[11];
  v7 = v1[9];
  if (v4)
  {
    v19 = v1[6];
    v21 = v1[11];
    v8 = v1[3];
    v20 = v1[9];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v22 = v10;
    *v9 = 134218498;
    *(v9 + 4) = v8;
    *(v9 + 12) = 2080;
    v11 = sub_22766CE50();
    v13 = sub_226E97AE8(v11, v12, &v22);

    *(v9 + 14) = v13;
    *(v9 + 22) = 2048;
    *(v9 + 24) = v19;
    _os_log_impl(&dword_226E8E000, v2, v3, "Finished A->P conversion: %ld:%s:%lu", v9, 0x20u);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x22AA9A450](v10, -1, -1);
    MEMORY[0x22AA9A450](v9, -1, -1);

    (*(v5 + 8))(v21, v20);
  }

  else
  {

    (*(v5 + 8))(v6, v7);
  }

  v14 = v1[14];
  v15 = v1[7];
  v22 = v14;
  v23 = 1;
  v16 = v14;
  v15(&v22);

  v17 = v1[1];

  return v17();
}

uint64_t sub_2271B2B48(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 56) = v19;
  *(v8 + 40) = v18;
  *(v8 + 152) = v17;
  *(v8 + 24) = a7;
  *(v8 + 32) = a8;
  *(v8 + 16) = a6;
  *(v8 + 64) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD480, &unk_227684B90);
  *(v8 + 72) = swift_task_alloc();
  v10 = sub_22766B390();
  *(v8 + 80) = v10;
  *(v8 + 88) = *(v10 - 8);
  *(v8 + 96) = swift_task_alloc();
  *(v8 + 104) = swift_task_alloc();
  v11 = sub_227668B50();
  *(v8 + 112) = v11;
  *(v8 + 120) = *(v11 - 8);
  v12 = swift_task_alloc();
  *(v8 + 128) = v12;
  v15 = (a4 + *a4);
  v13 = swift_task_alloc();
  *(v8 + 136) = v13;
  *v13 = v8;
  v13[1] = sub_2271B2D6C;

  return v15(v12);
}

uint64_t sub_2271B2D6C()
{
  *(*v1 + 144) = v0;

  if (v0)
  {
    v2 = sub_2271B30E8;
  }

  else
  {
    v2 = sub_2271B2E80;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2271B2E80(uint64_t a1)
{
  v25 = v1;
  sub_22766A710();
  v2 = sub_22766B380();
  v3 = sub_22766C8B0();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = v1[11];
    v22 = v1[10];
    v23 = v1[13];
    v21 = v1[5];
    v5 = v1[2];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v24 = v7;
    *v6 = 134218498;
    *(v6 + 4) = v5;
    *(v6 + 12) = 2080;
    v8 = sub_22766CE50();
    v10 = sub_226E97AE8(v8, v9, &v24);

    *(v6 + 14) = v10;
    *(v6 + 22) = 2048;
    *(v6 + 24) = v21;
    _os_log_impl(&dword_226E8E000, v2, v3, "Finished A->P conversion: %ld:%s:%lu", v6, 0x20u);
    __swift_destroy_boxed_opaque_existential_0(v7);
    MEMORY[0x22AA9A450](v7, -1, -1);
    MEMORY[0x22AA9A450](v6, -1, -1);

    (*(v4 + 8))(v23, v22);
  }

  else
  {
    v11 = v1[13];
    v12 = v1[10];
    v13 = v1[11];

    (*(v13 + 8))(v11, v12);
  }

  v15 = v1[15];
  v14 = v1[16];
  v16 = v1[14];
  v17 = v1[9];
  v18 = v1[6];
  (*(v15 + 16))(v17, v14, v16);
  swift_storeEnumTagMultiPayload();
  v18(v17);
  sub_226E97D1C(v17, &unk_27D7BD480, &unk_227684B90);
  (*(v15 + 8))(v14, v16);

  v19 = v1[1];

  return v19();
}

uint64_t sub_2271B30E8(uint64_t a1)
{
  v24 = v1;
  sub_22766A710();
  v2 = sub_22766B380();
  v3 = sub_22766C8B0();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = v1[11];
    v21 = v1[10];
    v22 = v1[12];
    v20 = v1[5];
    v5 = v1[2];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v23 = v7;
    *v6 = 134218498;
    *(v6 + 4) = v5;
    *(v6 + 12) = 2080;
    v8 = sub_22766CE50();
    v10 = sub_226E97AE8(v8, v9, &v23);

    *(v6 + 14) = v10;
    *(v6 + 22) = 2048;
    *(v6 + 24) = v20;
    _os_log_impl(&dword_226E8E000, v2, v3, "Finished A->P conversion: %ld:%s:%lu", v6, 0x20u);
    __swift_destroy_boxed_opaque_existential_0(v7);
    MEMORY[0x22AA9A450](v7, -1, -1);
    MEMORY[0x22AA9A450](v6, -1, -1);

    (*(v4 + 8))(v22, v21);
  }

  else
  {
    v12 = v1[11];
    v11 = v1[12];
    v13 = v1[10];

    (*(v12 + 8))(v11, v13);
  }

  v14 = v1[18];
  v15 = v1[9];
  v16 = v1[6];
  *v15 = v14;
  swift_storeEnumTagMultiPayload();
  v17 = v14;
  v16(v15);

  sub_226E97D1C(v15, &unk_27D7BD480, &unk_227684B90);

  v18 = v1[1];

  return v18();
}

uint64_t sub_2271B3324(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 56) = v19;
  *(v8 + 40) = v18;
  *(v8 + 152) = v17;
  *(v8 + 24) = a7;
  *(v8 + 32) = a8;
  *(v8 + 16) = a6;
  *(v8 + 64) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD450, &qword_227684B70);
  *(v8 + 72) = swift_task_alloc();
  v10 = sub_22766B390();
  *(v8 + 80) = v10;
  *(v8 + 88) = *(v10 - 8);
  *(v8 + 96) = swift_task_alloc();
  *(v8 + 104) = swift_task_alloc();
  v11 = sub_227667670();
  *(v8 + 112) = v11;
  *(v8 + 120) = *(v11 - 8);
  v12 = swift_task_alloc();
  *(v8 + 128) = v12;
  v15 = (a4 + *a4);
  v13 = swift_task_alloc();
  *(v8 + 136) = v13;
  *v13 = v8;
  v13[1] = sub_2271B3548;

  return v15(v12);
}

uint64_t sub_2271B3548()
{
  *(*v1 + 144) = v0;

  if (v0)
  {
    v2 = sub_2271B38C4;
  }

  else
  {
    v2 = sub_2271B365C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2271B365C(uint64_t a1)
{
  v25 = v1;
  sub_22766A710();
  v2 = sub_22766B380();
  v3 = sub_22766C8B0();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = v1[11];
    v22 = v1[10];
    v23 = v1[13];
    v21 = v1[5];
    v5 = v1[2];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v24 = v7;
    *v6 = 134218498;
    *(v6 + 4) = v5;
    *(v6 + 12) = 2080;
    v8 = sub_22766CE50();
    v10 = sub_226E97AE8(v8, v9, &v24);

    *(v6 + 14) = v10;
    *(v6 + 22) = 2048;
    *(v6 + 24) = v21;
    _os_log_impl(&dword_226E8E000, v2, v3, "Finished A->P conversion: %ld:%s:%lu", v6, 0x20u);
    __swift_destroy_boxed_opaque_existential_0(v7);
    MEMORY[0x22AA9A450](v7, -1, -1);
    MEMORY[0x22AA9A450](v6, -1, -1);

    (*(v4 + 8))(v23, v22);
  }

  else
  {
    v11 = v1[13];
    v12 = v1[10];
    v13 = v1[11];

    (*(v13 + 8))(v11, v12);
  }

  v15 = v1[15];
  v14 = v1[16];
  v16 = v1[14];
  v17 = v1[9];
  v18 = v1[6];
  (*(v15 + 16))(v17, v14, v16);
  swift_storeEnumTagMultiPayload();
  v18(v17);
  sub_226E97D1C(v17, &unk_27D7BD450, &qword_227684B70);
  (*(v15 + 8))(v14, v16);

  v19 = v1[1];

  return v19();
}

uint64_t sub_2271B38C4(uint64_t a1)
{
  v24 = v1;
  sub_22766A710();
  v2 = sub_22766B380();
  v3 = sub_22766C8B0();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = v1[11];
    v21 = v1[10];
    v22 = v1[12];
    v20 = v1[5];
    v5 = v1[2];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v23 = v7;
    *v6 = 134218498;
    *(v6 + 4) = v5;
    *(v6 + 12) = 2080;
    v8 = sub_22766CE50();
    v10 = sub_226E97AE8(v8, v9, &v23);

    *(v6 + 14) = v10;
    *(v6 + 22) = 2048;
    *(v6 + 24) = v20;
    _os_log_impl(&dword_226E8E000, v2, v3, "Finished A->P conversion: %ld:%s:%lu", v6, 0x20u);
    __swift_destroy_boxed_opaque_existential_0(v7);
    MEMORY[0x22AA9A450](v7, -1, -1);
    MEMORY[0x22AA9A450](v6, -1, -1);

    (*(v4 + 8))(v22, v21);
  }

  else
  {
    v12 = v1[11];
    v11 = v1[12];
    v13 = v1[10];

    (*(v12 + 8))(v11, v13);
  }

  v14 = v1[18];
  v15 = v1[9];
  v16 = v1[6];
  *v15 = v14;
  swift_storeEnumTagMultiPayload();
  v17 = v14;
  v16(v15);

  sub_226E97D1C(v15, &unk_27D7BD450, &qword_227684B70);

  v18 = v1[1];

  return v18();
}

uint64_t sub_2271B3B00(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 56) = v18;
  *(v8 + 40) = v17;
  *(v8 + 136) = v16;
  *(v8 + 24) = a7;
  *(v8 + 32) = a8;
  *(v8 + 16) = a6;
  *(v8 + 64) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BBF50, &qword_22767C288);
  *(v8 + 72) = swift_task_alloc();
  v10 = sub_22766B390();
  *(v8 + 80) = v10;
  *(v8 + 88) = *(v10 - 8);
  *(v8 + 96) = swift_task_alloc();
  *(v8 + 104) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD3F0, &unk_2276823F0);
  v11 = swift_task_alloc();
  *(v8 + 112) = v11;
  v14 = (a4 + *a4);
  v12 = swift_task_alloc();
  *(v8 + 120) = v12;
  *v12 = v8;
  v12[1] = sub_2271B3D00;

  return v14(v11);
}

uint64_t sub_2271B3D00()
{
  *(*v1 + 128) = v0;

  if (v0)
  {
    v2 = sub_2271B4074;
  }

  else
  {
    v2 = sub_2271B3E14;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2271B3E14(uint64_t a1)
{
  v23 = v1;
  sub_22766A710();
  v2 = sub_22766B380();
  v3 = sub_22766C8B0();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = v1[11];
    v20 = v1[10];
    v21 = v1[13];
    v19 = v1[5];
    v5 = v1[2];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v22 = v7;
    *v6 = 134218498;
    *(v6 + 4) = v5;
    *(v6 + 12) = 2080;
    v8 = sub_22766CE50();
    v10 = sub_226E97AE8(v8, v9, &v22);

    *(v6 + 14) = v10;
    *(v6 + 22) = 2048;
    *(v6 + 24) = v19;
    _os_log_impl(&dword_226E8E000, v2, v3, "Finished A->P conversion: %ld:%s:%lu", v6, 0x20u);
    __swift_destroy_boxed_opaque_existential_0(v7);
    MEMORY[0x22AA9A450](v7, -1, -1);
    MEMORY[0x22AA9A450](v6, -1, -1);

    (*(v4 + 8))(v21, v20);
  }

  else
  {
    v11 = v1[13];
    v12 = v1[10];
    v13 = v1[11];

    (*(v13 + 8))(v11, v12);
  }

  v14 = v1[14];
  v15 = v1[9];
  v16 = v1[6];
  sub_226E93170(v14, v15, &unk_27D7BD3F0, &unk_2276823F0);
  swift_storeEnumTagMultiPayload();
  v16(v15);
  sub_226E97D1C(v15, &unk_27D7BBF50, &qword_22767C288);
  sub_226E97D1C(v14, &unk_27D7BD3F0, &unk_2276823F0);

  v17 = v1[1];

  return v17();
}

uint64_t sub_2271B4074(uint64_t a1)
{
  v24 = v1;
  sub_22766A710();
  v2 = sub_22766B380();
  v3 = sub_22766C8B0();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = v1[11];
    v21 = v1[10];
    v22 = v1[12];
    v20 = v1[5];
    v5 = v1[2];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v23 = v7;
    *v6 = 134218498;
    *(v6 + 4) = v5;
    *(v6 + 12) = 2080;
    v8 = sub_22766CE50();
    v10 = sub_226E97AE8(v8, v9, &v23);

    *(v6 + 14) = v10;
    *(v6 + 22) = 2048;
    *(v6 + 24) = v20;
    _os_log_impl(&dword_226E8E000, v2, v3, "Finished A->P conversion: %ld:%s:%lu", v6, 0x20u);
    __swift_destroy_boxed_opaque_existential_0(v7);
    MEMORY[0x22AA9A450](v7, -1, -1);
    MEMORY[0x22AA9A450](v6, -1, -1);

    (*(v4 + 8))(v22, v21);
  }

  else
  {
    v12 = v1[11];
    v11 = v1[12];
    v13 = v1[10];

    (*(v12 + 8))(v11, v13);
  }

  v14 = v1[16];
  v15 = v1[9];
  v16 = v1[6];
  *v15 = v14;
  swift_storeEnumTagMultiPayload();
  v17 = v14;
  v16(v15);

  sub_226E97D1C(v15, &unk_27D7BBF50, &qword_22767C288);

  v18 = v1[1];

  return v18();
}

uint64_t sub_2271B42B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BC8E0, &qword_2276784C0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v23 - v10;
  sub_226E93170(a3, v23 - v10, &unk_27D7BC8E0, &qword_2276784C0);
  v12 = sub_22766C4B0();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_226E97D1C(v11, &unk_27D7BC8E0, &qword_2276784C0);
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

  sub_22766C4A0();
  (*(v13 + 8))(v11, v12);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  swift_getObjectType();
  swift_unknownObjectRetain();
  v14 = sub_22766C420();
  v16 = v15;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v17 = sub_22766C0B0() + 32;
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

    sub_226E97D1C(a3, &unk_27D7BC8E0, &qword_2276784C0);

    return v21;
  }

LABEL_8:
  sub_226E97D1C(a3, &unk_27D7BC8E0, &qword_2276784C0);
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

void sub_2271B45AC(uint64_t a1, char a2, void *a3)
{
  v4 = *(a1 + 16);
  if (!v4)
  {
    goto LABEL_22;
  }

  sub_226E93170(a1 + 32, &v44, &qword_27D7BC040, &qword_22767C358);
  v8 = v44;
  v7 = v45;
  v42 = v44;
  v43 = v45;
  sub_226E92AB8(v46, v41);
  v9 = *a3;
  v10 = sub_226E92000(v8, v7);
  v12 = v9[2];
  v13 = (v11 & 1) == 0;
  v14 = __OFADD__(v12, v13);
  v15 = v12 + v13;
  if (v14)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v16 = v11;
  if (v9[3] < v15)
  {
    sub_226FE9AC0(v15, a2 & 1);
    v10 = sub_226E92000(v8, v7);
    if ((v16 & 1) != (v17 & 1))
    {
LABEL_5:
      sub_22766D220();
      __break(1u);
      goto LABEL_22;
    }

LABEL_8:
    if (v16)
    {
      goto LABEL_9;
    }

    goto LABEL_12;
  }

  if (a2)
  {
    goto LABEL_8;
  }

  v20 = v10;
  sub_226FF367C();
  v10 = v20;
  if (v16)
  {
LABEL_9:
    v18 = swift_allocError();
    swift_willThrow();
    v47 = v18;
    v19 = v18;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA3C0, &qword_2276709C0);
    if ((swift_dynamicCast() & 1) == 0)
    {

      __swift_destroy_boxed_opaque_existential_0(v41);

      return;
    }

    goto LABEL_26;
  }

LABEL_12:
  v21 = *a3;
  *(*a3 + 8 * (v10 >> 6) + 64) |= 1 << v10;
  v22 = (v21[6] + 16 * v10);
  *v22 = v8;
  v22[1] = v7;
  sub_226E92AB8(v41, v21[7] + 40 * v10);
  v23 = v21[2];
  v14 = __OFADD__(v23, 1);
  v24 = v23 + 1;
  if (!v14)
  {
    v21[2] = v24;
    if (v4 == 1)
    {
LABEL_22:

      return;
    }

    v25 = a1 + 88;
    v26 = 1;
    while (v26 < *(a1 + 16))
    {
      sub_226E93170(v25, &v44, &qword_27D7BC040, &qword_22767C358);
      v28 = v44;
      v27 = v45;
      v42 = v44;
      v43 = v45;
      sub_226E92AB8(v46, v41);
      v29 = *a3;
      v30 = sub_226E92000(v28, v27);
      v32 = v29[2];
      v33 = (v31 & 1) == 0;
      v14 = __OFADD__(v32, v33);
      v34 = v32 + v33;
      if (v14)
      {
        goto LABEL_23;
      }

      v35 = v31;
      if (v29[3] < v34)
      {
        sub_226FE9AC0(v34, 1);
        v30 = sub_226E92000(v28, v27);
        if ((v35 & 1) != (v36 & 1))
        {
          goto LABEL_5;
        }
      }

      if (v35)
      {
        goto LABEL_9;
      }

      v37 = *a3;
      *(*a3 + 8 * (v30 >> 6) + 64) |= 1 << v30;
      v38 = (v37[6] + 16 * v30);
      *v38 = v28;
      v38[1] = v27;
      sub_226E92AB8(v41, v37[7] + 40 * v30);
      v39 = v37[2];
      v14 = __OFADD__(v39, 1);
      v40 = v39 + 1;
      if (v14)
      {
        goto LABEL_24;
      }

      ++v26;
      v37[2] = v40;
      v25 += 56;
      if (v4 == v26)
      {
        goto LABEL_22;
      }
    }

    goto LABEL_25;
  }

LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  sub_22766CE20();
  MEMORY[0x22AA98450](0xD00000000000001BLL, 0x8000000227694E60);
  sub_22766CF90();
  MEMORY[0x22AA98450](39, 0xE100000000000000);
  sub_22766CFB0();
  __break(1u);
}

uint64_t sub_2271B4990(uint64_t a1, uint64_t a2)
{
  v4 = sub_227669A90();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v13[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14[3] = type metadata accessor for AssetFileStore(0);
  v14[4] = &off_283AC5580;
  v14[0] = a1;
  (*(v5 + 104))(v7, *MEMORY[0x277D4EF60], v4);
  v13[7] = 1;
  sub_227669760();
  sub_226E91B50(v14, a2 + OBJC_IVAR____TtC15SeymourServices17OfflineScriptLink_fileStore);
  v8 = type metadata accessor for ScriptDispatchService();
  v9 = swift_allocObject();
  *(v9 + 24) = MEMORY[0x277D84F98];
  sub_2276696C0();
  swift_allocObject();
  *(v9 + 16) = sub_2276696B0();
  v10 = (a2 + OBJC_IVAR____TtC15SeymourServices17OfflineScriptLink_dispatchService);
  v10[3] = v8;
  v10[4] = &off_283AC64D0;
  *v10 = v9;
  swift_allocObject();
  v11 = sub_2276696B0();
  __swift_destroy_boxed_opaque_existential_0(v14);
  *(a2 + OBJC_IVAR____TtC15SeymourServices17OfflineScriptLink_lock) = v11;
  type metadata accessor for ScriptLinkState(0);
  swift_storeEnumTagMultiPayload();
  return a2;
}

id sub_2271B4B98(uint64_t a1, char a2, _BYTE *a3)
{
  v6 = sub_227669A90();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21[3] = type metadata accessor for AssetFileStore(0);
  v21[4] = &off_283AC5580;
  v21[0] = a1;
  (*(v7 + 104))(v9, *MEMORY[0x277D4EF60], v6);
  v20 = 1;
  sub_227669760();
  sub_226E91B50(v21, &a3[OBJC_IVAR____TtC15SeymourServices17NetworkScriptLink_fileStore]);
  LOBYTE(a1) = sub_2276693D0();
  v10 = type metadata accessor for ScriptConfiguration();
  v11 = objc_allocWithZone(v10);
  v11[OBJC_IVAR____TtC15SeymourServices19ScriptConfiguration_platform] = a1;
  v19.receiver = v11;
  v19.super_class = v10;
  *&a3[OBJC_IVAR____TtC15SeymourServices17NetworkScriptLink_scriptConfiguration] = objc_msgSendSuper2(&v19, sel_init);
  v12 = type metadata accessor for ScriptDispatchService();
  v13 = swift_allocObject();
  *(v13 + 24) = MEMORY[0x277D84F98];
  sub_2276696C0();
  swift_allocObject();
  *(v13 + 16) = sub_2276696B0();
  v14 = &a3[OBJC_IVAR____TtC15SeymourServices17NetworkScriptLink_dispatchService];
  v14[3] = v12;
  v14[4] = &off_283AC64D0;
  *v14 = v13;
  swift_allocObject();
  *&a3[OBJC_IVAR____TtC15SeymourServices17NetworkScriptLink_lock] = sub_2276696B0();
  type metadata accessor for ScriptLinkState(0);
  swift_storeEnumTagMultiPayload();
  a3[OBJC_IVAR____TtC15SeymourServices17NetworkScriptLink_platform] = a2;
  v15 = type metadata accessor for NetworkScriptLink(0);
  v18.receiver = a3;
  v18.super_class = v15;
  v16 = objc_msgSendSuper2(&v18, sel_init);
  __swift_destroy_boxed_opaque_existential_0(v21);
  return v16;
}

uint64_t sub_2271B4E20(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v8 = sub_227669A90();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for AssetFileStore(0);
  v47[3] = v12;
  v47[4] = &off_283AC5580;
  v47[0] = a1;
  v46[3] = type metadata accessor for ScriptBundleLoader(0);
  v46[4] = &off_283AB25A0;
  v46[0] = a2;
  (*(v9 + 104))(v11, *MEMORY[0x277D4F008], v8);
  v44[0] = 0x4034000000000000;
  sub_227669760();
  sub_226E91B50(v46, a4 + 32);
  sub_226E91B50(v47, v44);
  LOBYTE(a2) = sub_2276693D0();
  v13 = __swift_mutable_project_boxed_opaque_existential_1(v44, v45);
  v14 = MEMORY[0x28223BE20](v13);
  v16 = (v41 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v17 + 16))(v16, v14);
  v18 = *v16;
  v42 = v12;
  v43 = &off_283AC5580;
  v41[0] = v18;
  v19 = objc_allocWithZone(type metadata accessor for NetworkScriptLink(0));
  v20 = __swift_mutable_project_boxed_opaque_existential_1(v41, v42);
  v21 = MEMORY[0x28223BE20](v20);
  v23 = (v41 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v24 + 16))(v23, v21);
  v25 = sub_2271B4B98(*v23, a2, v19);
  __swift_destroy_boxed_opaque_existential_0(v41);
  __swift_destroy_boxed_opaque_existential_0(v44);
  *(a4 + 16) = v25;
  sub_226E91B50(v47, v44);
  v26 = __swift_mutable_project_boxed_opaque_existential_1(v44, v45);
  v27 = MEMORY[0x28223BE20](v26);
  v29 = (v41 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v30 + 16))(v29, v27);
  v31 = *v29;
  v42 = v12;
  v43 = &off_283AC5580;
  v41[0] = v31;
  type metadata accessor for OfflineScriptLink(0);
  v32 = swift_allocObject();
  v33 = __swift_mutable_project_boxed_opaque_existential_1(v41, v12);
  v34 = MEMORY[0x28223BE20](v33);
  v36 = (v41 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v37 + 16))(v36, v34);
  v38 = sub_2271B4990(*v36, v32);
  __swift_destroy_boxed_opaque_existential_0(v41);
  __swift_destroy_boxed_opaque_existential_0(v44);
  *(a4 + 24) = v38;
  sub_226E91B50(a3, a4 + 72);
  sub_2276696C0();
  swift_allocObject();
  v39 = sub_2276696B0();
  __swift_destroy_boxed_opaque_existential_0(a3);
  __swift_destroy_boxed_opaque_existential_0(v46);
  __swift_destroy_boxed_opaque_existential_0(v47);
  *(a4 + 112) = v39;
  *(a4 + 120) = 0;
  *(a4 + 128) = 2;
  return a4;
}

uint64_t sub_2271B52E4(void *a1, void *a2, char a3, uint64_t a4)
{
  v8 = sub_22766B390();
  MEMORY[0x28223BE20](v8);
  v18[3] = &type metadata for PlaybackVoucherDataStore;
  v18[4] = &off_283A98408;
  *(a4 + 16) = a1;
  sub_226E91B50(a2, a4 + 24);
  sub_226E91B50(v18, a4 + 64);
  *(a4 + 104) = a3;
  v9 = a1;
  v10 = sub_227662580();
  *(a4 + 112) = v10;
  *(a4 + 120) = v11;
  v12 = v10;
  v13 = v11;
  v16 = sub_22766A9B0();
  v17 = &off_283AB2458;
  __swift_allocate_boxed_opaque_existential_0(&v15);
  sub_226F5E0B4(v12, v13);
  sub_22766A980();

  __swift_destroy_boxed_opaque_existential_0(a2);
  __swift_destroy_boxed_opaque_existential_0(v18);
  sub_226E92AB8(&v15, a4 + 128);
  return a4;
}

uint64_t sub_2271B556C(uint64_t a1, uint64_t a2, __int128 *a3, uint64_t a4)
{
  v14 = type metadata accessor for AssetDataStore();
  v15 = &off_283A9E1F8;
  *&v13 = a1;
  v11 = type metadata accessor for KeyProvider();
  v12 = &off_283AB1678;
  *&v10 = a2;
  if (MEMORY[0x277D84F90] >> 62 && sub_22766CD20())
  {
    sub_226F4F830(MEMORY[0x277D84F90]);
  }

  else
  {
    v8 = MEMORY[0x277D84FA0];
  }

  *(a4 + 96) = v8;
  sub_226E92AB8(&v13, a4 + 16);
  sub_226E92AB8(&v10, a4 + 56);
  sub_226E92AB8(a3, a4 + 104);
  return a4;
}

uint64_t sub_2271B563C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_22766A8A0();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27[3] = type metadata accessor for RemoteBrowsingConfirmationCoordinator();
  v27[4] = &off_283AB60F8;
  v27[0] = a1;
  *(a3 + 32) = -1;
  *(a3 + 16) = 0u;
  sub_226E91B50(v27, a3 + 40);
  v9 = sub_2276693C0();
  (*(v6 + 104))(v8, *MEMORY[0x277D4F978], v5);
  v10 = sub_226EC9A38(v8, v9);

  (*(v6 + 8))(v8, v5);
  if (v10)
  {
    sub_227666D80();
    sub_226E99364(0, &qword_2813A5840, 0x277D85C78);
    v11 = sub_22766C950();
    v12 = swift_allocObject();
    swift_weakInit();
    v25 = sub_2271BF92C;
    v26 = v12;
    aBlock = MEMORY[0x277D85DD0];
    v22 = 1107296256;
    v23 = sub_2275D18A0;
    v24 = &block_descriptor_383;
    v13 = _Block_copy(&aBlock);

    v14 = sub_22766C0B0();

    swift_beginAccess();
    notify_register_dispatch((v14 + 32), (a3 + 32), v11, v13);
    swift_endAccess();

    _Block_release(v13);

    sub_227666D90();
    v15 = sub_22766C950();
    v16 = swift_allocObject();
    swift_weakInit();

    v25 = sub_2271BF934;
    v26 = v16;
    aBlock = MEMORY[0x277D85DD0];
    v22 = 1107296256;
    v23 = sub_2275D18A0;
    v24 = &block_descriptor_387;
    v17 = _Block_copy(&aBlock);

    v18 = sub_22766C0B0();

    swift_beginAccess();
    notify_register_dispatch((v18 + 32), (a3 + 36), v15, v17);
    swift_endAccess();
    _Block_release(v17);

    __swift_destroy_boxed_opaque_existential_0(v27);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0(v27);
  }

  return a3;
}

id sub_2271B59F0(uint64_t a1)
{
  v2 = type metadata accessor for BagConsumer();
  v15[3] = v2;
  v15[4] = &off_283A9F810;
  v15[0] = a1;
  v3 = type metadata accessor for EngagementPushHandler();
  v4 = objc_allocWithZone(v3);
  v5 = __swift_mutable_project_boxed_opaque_existential_1(v15, v2);
  v6 = MEMORY[0x28223BE20](v5);
  v8 = (&v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v9 + 16))(v8, v6);
  v10 = *v8;
  v14[3] = v2;
  v14[4] = &off_283A9F810;
  v14[0] = v10;
  *&v4[OBJC_IVAR____TtC15SeymourServices21EngagementPushHandler_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  sub_226E91B50(v14, &v4[OBJC_IVAR____TtC15SeymourServices21EngagementPushHandler_bagConsumer]);
  *&v4[OBJC_IVAR____TtC15SeymourServices21EngagementPushHandler_state] = 0;
  v13.receiver = v4;
  v13.super_class = v3;
  v11 = objc_msgSendSuper2(&v13, sel_init);
  __swift_destroy_boxed_opaque_existential_0(v14);
  __swift_destroy_boxed_opaque_existential_0(v15);
  return v11;
}

id sub_2271B5B68(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ServerContainer(0);
  v19[3] = v4;
  v19[4] = &off_283AC6E68;
  v19[0] = a1;
  v5 = type metadata accessor for PushServiceObserver();
  v6 = objc_allocWithZone(v5);
  v7 = __swift_mutable_project_boxed_opaque_existential_1(v19, v4);
  v8 = MEMORY[0x28223BE20](v7);
  v10 = (&v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v11 + 16))(v10, v8);
  v12 = *v10;
  v18[3] = v4;
  v18[4] = &off_283AC6E68;
  v18[0] = v12;
  *&v6[OBJC_IVAR____TtC15SeymourServices19PushServiceObserver_connection] = 0;
  v13 = MEMORY[0x277D4F9B0];
  v14 = &v6[OBJC_IVAR____TtC15SeymourServices19PushServiceObserver_eventHub];
  *v14 = a2;
  *(v14 + 1) = v13;
  sub_226E91B50(v18, &v6[OBJC_IVAR____TtC15SeymourServices19PushServiceObserver_container]);
  v17.receiver = v6;
  v17.super_class = v5;
  v15 = objc_msgSendSuper2(&v17, sel_init);
  __swift_destroy_boxed_opaque_existential_0(v18);
  __swift_destroy_boxed_opaque_existential_0(v19);
  return v15;
}

uint64_t sub_2271B5CE4(uint64_t a1, uint64_t a2, void *a3)
{
  v23 = type metadata accessor for AssetFileStore(0);
  v24 = &off_283AC5580;
  v22[0] = a1;
  v20 = type metadata accessor for ScriptBundleLoader(0);
  v21 = &off_283AB25A0;
  v19[0] = a2;
  type metadata accessor for ScriptConnection(0);
  v6 = swift_allocObject();
  v7 = __swift_mutable_project_boxed_opaque_existential_1(v22, v23);
  v8 = MEMORY[0x28223BE20](v7);
  v10 = (v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v11 + 16))(v10, v8);
  v12 = __swift_mutable_project_boxed_opaque_existential_1(v19, v20);
  v13 = MEMORY[0x28223BE20](v12);
  v15 = (v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v16 + 16))(v15, v13);
  v17 = sub_2271B4E20(*v10, *v15, a3, v6);
  __swift_destroy_boxed_opaque_existential_0(v19);
  __swift_destroy_boxed_opaque_existential_0(v22);
  return v17;
}

uint64_t sub_2271B5EC8(uint64_t a1, uint64_t a2, char a3)
{
  v6 = type metadata accessor for AccountSyncStatusObserver();
  v25[3] = v6;
  v25[4] = &off_283AB4F98;
  v25[0] = a1;
  v7 = type metadata accessor for ServerContainer(0);
  v23 = v7;
  v24 = &off_283AC6E68;
  v22[0] = a2;
  type metadata accessor for ServerEndpoint(0);
  v8 = swift_allocObject();
  v9 = __swift_mutable_project_boxed_opaque_existential_1(v25, v6);
  v10 = MEMORY[0x28223BE20](v9);
  v12 = (v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v13 + 16))(v12, v10);
  v14 = __swift_mutable_project_boxed_opaque_existential_1(v22, v23);
  v15 = MEMORY[0x28223BE20](v14);
  v17 = (v22 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v18 + 16))(v17, v15);
  v19 = *v12;
  v20 = *v17;
  *(v8 + 40) = v6;
  *(v8 + 48) = &off_283AB4F98;
  *(v8 + 16) = v19;
  *(v8 + 80) = v7;
  *(v8 + 88) = &off_283AC6E68;
  *(v8 + 56) = v20;
  *(v8 + 104) = 0u;
  *(v8 + 120) = 0u;
  *(v8 + 136) = 0;
  sub_227662660();
  *(v8 + 96) = a3 & 1;
  __swift_destroy_boxed_opaque_existential_0(v22);
  __swift_destroy_boxed_opaque_existential_0(v25);
  return v8;
}

uint64_t sub_2271B60EC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, int a5)
{
  v37 = a5;
  v35 = a4;
  v36 = a3;
  v40 = sub_22766A8A0();
  v39 = *(v40 - 8);
  MEMORY[0x28223BE20](v40);
  v38 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_227669A90();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for ServerSyncCoordinator();
  v47[3] = v12;
  v47[4] = &off_283A96748;
  v47[0] = a1;
  v13 = type metadata accessor for PairedSyncCoordinator();
  v45 = v13;
  v46 = &off_283ACB0E8;
  v44[0] = a2;
  type metadata accessor for SyncCoordinator(0);
  v14 = swift_allocObject();
  v15 = __swift_mutable_project_boxed_opaque_existential_1(v47, v12);
  v16 = MEMORY[0x28223BE20](v15);
  v18 = (&v35 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v19 + 16))(v18, v16);
  v20 = __swift_mutable_project_boxed_opaque_existential_1(v44, v45);
  v21 = MEMORY[0x28223BE20](v20);
  v23 = (&v35 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v24 + 16))(v23, v21);
  v25 = *v18;
  v26 = *v23;
  v43[3] = v12;
  v43[4] = &off_283A96748;
  v43[0] = v25;
  v42[3] = v13;
  v42[4] = &off_283ACB0E8;
  v42[0] = v26;
  *(v14 + 160) = 0;
  *(v14 + 168) = 0;
  v27 = *(v9 + 104);
  v27(v11, *MEMORY[0x277D4EE88], v8);
  LOBYTE(v41) = 1;
  sub_227669760();
  v27(v11, *MEMORY[0x277D4EEA0], v8);
  LOBYTE(v41) = 1;
  sub_227669760();
  v27(v11, *MEMORY[0x277D4EE60], v8);
  LOBYTE(v41) = 0;
  sub_227669760();
  v27(v11, *MEMORY[0x277D4F0A0], v8);
  v41 = 0x4014000000000000;
  sub_227669760();
  v27(v11, *MEMORY[0x277D4EE38], v8);
  v41 = 0x403E000000000000;
  v28 = v35;
  sub_227669760();
  sub_226E91B50(v43, v14 + 16);
  sub_226E91B50(v42, v14 + 56);
  v29 = MEMORY[0x277D4F9B0];
  *(v14 + 96) = v36;
  *(v14 + 104) = v29;
  *(v14 + 112) = v37;
  sub_226E91B50(v28, v14 + 120);
  sub_227669B50();
  swift_allocObject();

  *(v14 + 176) = sub_227669B40();
  v30 = sub_2276693C0();
  v31 = v39;
  v32 = v38;
  v33 = v40;
  (*(v39 + 104))(v38, *MEMORY[0x277D4F880], v40);
  LOBYTE(v9) = sub_226EC9A38(v32, v30);

  (*(v31 + 8))(v32, v33);
  if (v9)
  {
    sub_2271DA1A4();
  }

  __swift_destroy_boxed_opaque_existential_0(v28);
  __swift_destroy_boxed_opaque_existential_0(v42);
  __swift_destroy_boxed_opaque_existential_0(v43);
  __swift_destroy_boxed_opaque_existential_0(v44);
  __swift_destroy_boxed_opaque_existential_0(v47);
  return v14;
}

uint64_t sub_2271B66CC(uint64_t a1, uint64_t a2, __int128 *a3)
{
  v23 = type metadata accessor for AssetDataStore();
  v24 = &off_283A9E1F8;
  v22[0] = a1;
  v20 = type metadata accessor for KeyProvider();
  v21 = &off_283AB1678;
  v19[0] = a2;
  type metadata accessor for AssetKeyDeletionHandler();
  v6 = swift_allocObject();
  v7 = __swift_mutable_project_boxed_opaque_existential_1(v22, v23);
  v8 = MEMORY[0x28223BE20](v7);
  v10 = (v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v11 + 16))(v10, v8);
  v12 = __swift_mutable_project_boxed_opaque_existential_1(v19, v20);
  v13 = MEMORY[0x28223BE20](v12);
  v15 = (v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v16 + 16))(v15, v13);
  v17 = sub_2271B556C(*v10, *v15, a3, v6);
  __swift_destroy_boxed_opaque_existential_0(v19);
  __swift_destroy_boxed_opaque_existential_0(v22);
  return v17;
}

void *sub_2271B68B0(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v25[1] = *a4;
  v8 = type metadata accessor for ConfigurationDataStore();
  v32[3] = v8;
  v32[4] = &off_283AA1218;
  v32[0] = a2;
  v9 = type metadata accessor for ConfigurationScriptClient();
  v30 = v9;
  v31 = &off_283AB7AC8;
  v29[0] = a3;
  type metadata accessor for ConfigurationSystem();
  v10 = swift_allocObject();
  v11 = __swift_mutable_project_boxed_opaque_existential_1(v32, v8);
  v12 = MEMORY[0x28223BE20](v11);
  v14 = (v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v15 + 16))(v14, v12);
  v16 = __swift_mutable_project_boxed_opaque_existential_1(v29, v30);
  v17 = MEMORY[0x28223BE20](v16);
  v19 = (v25 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v20 + 16))(v19, v17);
  v21 = *v14;
  v22 = *v19;
  v28[3] = v8;
  v28[4] = &off_283AA1218;
  v27[4] = &off_283AB7AC8;
  v28[0] = v21;
  v27[3] = v9;
  v27[0] = v22;
  sub_226E91B50(a1, (v10 + 2));
  sub_226E91B50(v28, (v10 + 7));
  sub_226E91B50(v27, (v10 + 12));
  v23 = MEMORY[0x277D4F9B0];
  v10[17] = a4;
  v10[18] = v23;
  sub_227669B50();
  swift_allocObject();
  swift_retain_n();
  v10[19] = sub_227669B40();
  swift_allocObject();
  swift_weakInit();
  sub_227118FC0();

  sub_227669A10();

  __swift_destroy_boxed_opaque_existential_0(a1);
  __swift_destroy_boxed_opaque_existential_0(v26);
  __swift_destroy_boxed_opaque_existential_0(v27);
  __swift_destroy_boxed_opaque_existential_0(v28);

  __swift_destroy_boxed_opaque_existential_0(v29);
  __swift_destroy_boxed_opaque_existential_0(v32);
  return v10;
}

uint64_t sub_2271B6BEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6)
{
  v56 = a6;
  LODWORD(v61) = a5;
  v63 = sub_22766A8A0();
  v10 = *(v63 - 8);
  MEMORY[0x28223BE20](v63);
  v12 = &v56 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for SessionPreferenceDataStore();
  v72[3] = v13;
  v72[4] = &off_283AA5168;
  v72[0] = a2;
  v14 = type metadata accessor for SyncCoordinator(0);
  v70 = v14;
  v71 = &off_283AA3680;
  v69[0] = a4;
  type metadata accessor for SessionPreferenceSystem();
  v15 = swift_allocObject();
  v16 = __swift_mutable_project_boxed_opaque_existential_1(v72, v13);
  v17 = MEMORY[0x28223BE20](v16);
  v19 = (&v56 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v20 + 16))(v19, v17);
  v21 = __swift_mutable_project_boxed_opaque_existential_1(v69, v70);
  v22 = MEMORY[0x28223BE20](v21);
  v24 = (&v56 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v25 + 16))(v24, v22);
  v26 = *v19;
  v27 = *v24;
  v68[3] = v13;
  v68[4] = &off_283AA5168;
  v68[0] = v26;
  v66 = v14;
  v67 = &off_283AA3680;
  v65[0] = v27;
  v28 = MEMORY[0x277D4F9B0];
  *(v15 + 16) = a1;
  *(v15 + 24) = v28;
  sub_226E91B50(v68, v15 + 32);
  v62 = a3;
  sub_226E91B50(a3, v15 + 80);
  *(v15 + 72) = v61;
  sub_227669B50();
  swift_allocObject();
  swift_retain_n();
  *(v15 + 120) = sub_227669B40();
  v61 = v15;
  sub_226E91B50(v65, v15 + 128);
  v29 = *__swift_project_boxed_opaque_existential_0(v65, v66);
  v30 = sub_2276693C0();
  v31 = *(v10 + 104);
  v59 = *MEMORY[0x277D4F880];
  v32 = v63;
  v58 = v31;
  (v31)(v12);
  LOBYTE(a3) = sub_226EC9A38(v12, v30);

  v33 = *(v10 + 8);
  v60 = v10 + 8;
  v57 = v33;
  v33(v12, v32);
  if (a3)
  {
    __swift_project_boxed_opaque_existential_0(v29 + 2, v29[5]);
    v34 = MEMORY[0x277D53D00];
    sub_22718C53C(&qword_27D7BBED0, &qword_22767C210, MEMORY[0x277D53D00]);
    __swift_project_boxed_opaque_existential_0(v29 + 7, v29[10]);
    sub_2271AB4E4(&qword_27D7BBEC8, &qword_22767C208, v34);
  }

  sub_22766A3F0();
  v35 = swift_allocObject();
  v36 = MEMORY[0x277D4F9D0];
  v35[2] = v56;
  v35[3] = v36;
  v35[4] = MEMORY[0x277D4F9D8];
  sub_22766A8E0();
  v37 = MEMORY[0x277D4F9B0];
  sub_2276699F0();

  __swift_destroy_boxed_opaque_existential_0(v64);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BBEB8, &qword_22767C200);
  v38 = swift_allocObject();
  *(v38 + 16) = a1;
  *(v38 + 24) = v37;
  sub_226E9CFD0(qword_28139AAF0, &unk_27D7BBEB8, &qword_22767C200, &unk_227686E90);

  sub_2276699F0();

  __swift_destroy_boxed_opaque_existential_0(v64);
  v39 = *__swift_project_boxed_opaque_existential_0(v65, v66);
  v40 = sub_2276693C0();
  v41 = v59;
  v42 = v63;
  v43 = v58;
  v58(v12, v59, v63);
  v44 = sub_226EC9A38(v12, v40);

  v45 = v57;
  v57(v12, v42);
  if (v44)
  {
    __swift_project_boxed_opaque_existential_0(v39 + 2, v39[5]);
    v46 = MEMORY[0x277D53D28];
    sub_22718C53C(&qword_27D7BBEE0, &qword_22767C220, MEMORY[0x277D53D28]);
    __swift_project_boxed_opaque_existential_0(v39 + 7, v39[10]);
    sub_2271AB4E4(&qword_27D7BBED8, &qword_22767C218, v46);
  }

  v47 = *__swift_project_boxed_opaque_existential_0(v65, v66);
  v48 = sub_2276693C0();
  v43(v12, v41, v42);
  v49 = sub_226EC9A38(v12, v48);

  v45(v12, v42);
  if (v49)
  {
    __swift_project_boxed_opaque_existential_0(v47 + 2, v47[5]);
    v50 = MEMORY[0x277D53D30];
    sub_22718C53C(&qword_27D7BBEF0, &qword_22767C230, MEMORY[0x277D53D30]);
    __swift_project_boxed_opaque_existential_0(v47 + 7, v47[10]);
    sub_2271AB4E4(&qword_27D7BBEE8, &qword_22767C228, v50);
  }

  v51 = *__swift_project_boxed_opaque_existential_0(v65, v66);
  v52 = sub_2276693C0();
  v43(v12, v41, v42);
  v53 = sub_226EC9A38(v12, v52);

  v45(v12, v42);
  if (v53)
  {
    __swift_project_boxed_opaque_existential_0(v51 + 2, v51[5]);
    v54 = MEMORY[0x277D53D38];
    sub_22718C53C(&unk_27D7BBF00, &qword_22767C240, MEMORY[0x277D53D38]);
    __swift_project_boxed_opaque_existential_0(v51 + 7, v51[10]);
    sub_2271AB4E4(&qword_27D7BBEF8, &qword_22767C238, v54);
  }

  __swift_destroy_boxed_opaque_existential_0(v62);
  __swift_destroy_boxed_opaque_existential_0(v68);
  __swift_destroy_boxed_opaque_existential_0(v65);
  __swift_destroy_boxed_opaque_existential_0(v69);
  __swift_destroy_boxed_opaque_existential_0(v72);
  return v61;
}

void *sub_2271B73E4(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5)
{
  v54 = a5;
  v51 = sub_22766A8A0();
  v9 = *(v51 - 8);
  MEMORY[0x28223BE20](v51);
  v11 = &v51 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for PrivacyPreferenceDataSource(0);
  v65[3] = v12;
  v65[4] = &off_283AB2760;
  v65[0] = a1;
  v13 = type metadata accessor for SyncCoordinator(0);
  v63 = v13;
  v64 = &off_283AA3680;
  v62[0] = a4;
  type metadata accessor for PrivacyPreferenceSystem();
  v14 = swift_allocObject();
  v15 = __swift_mutable_project_boxed_opaque_existential_1(v65, v12);
  v16 = MEMORY[0x28223BE20](v15);
  v18 = (&v51 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v19 + 16))(v18, v16);
  v20 = __swift_mutable_project_boxed_opaque_existential_1(v62, v63);
  v21 = MEMORY[0x28223BE20](v20);
  v23 = (&v51 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v24 + 16))(v23, v21);
  v25 = *v18;
  v26 = *v23;
  v61[3] = v12;
  v61[4] = &off_283AB2760;
  v61[0] = v25;
  v59 = v13;
  v60 = &off_283AA3680;
  v58[0] = v26;
  sub_226E91B50(v61, (v14 + 2));
  v27 = MEMORY[0x277D4F9B0];
  v14[7] = a2;
  v14[8] = v27;
  v56 = a3;
  sub_226E91B50(a3, (v14 + 9));
  sub_227669B50();
  swift_allocObject();
  swift_retain_n();
  v52 = a2;
  v53 = sub_227669B40();
  v14[14] = v53;
  v55 = v14;
  sub_226E91B50(v58, (v14 + 15));
  v28 = *__swift_project_boxed_opaque_existential_0(v58, v59);
  v29 = sub_2276693C0();
  v30 = *MEMORY[0x277D4F880];
  v31 = *(v9 + 104);
  v32 = v51;
  v31(v11, v30, v51);
  LOBYTE(v12) = sub_226EC9A38(v11, v29);

  v33 = *(v9 + 8);
  v33(v11, v32);
  if (v12)
  {
    __swift_project_boxed_opaque_existential_0(v28 + 2, v28[5]);
    v34 = MEMORY[0x277D53D10];
    sub_22718C53C(&qword_27D7BBEA0, &qword_22767C1E8, MEMORY[0x277D53D10]);
    __swift_project_boxed_opaque_existential_0(v28 + 7, v28[10]);
    sub_2271AB4E4(&qword_27D7BBE98, &qword_22767C1E0, v34);
  }

  v35 = *__swift_project_boxed_opaque_existential_0(v58, v59);
  v36 = sub_2276693C0();
  v31(v11, v30, v32);
  v37 = sub_226EC9A38(v11, v36);

  v33(v11, v32);
  if (v37)
  {
    __swift_project_boxed_opaque_existential_0(v35 + 2, v35[5]);
    v38 = MEMORY[0x277D53D60];
    sub_22718C53C(&qword_27D7BBEB0, &qword_22767C1F8, MEMORY[0x277D53D60]);
    __swift_project_boxed_opaque_existential_0(v35 + 7, v35[10]);
    sub_2271AB4E4(&qword_27D7BBEA8, &qword_22767C1F0, v38);
  }

  sub_22766A410();
  v39 = swift_allocObject();
  v40 = MEMORY[0x277D4F9D0];
  v41 = v54;
  v39[2] = v54;
  v39[3] = v40;
  v42 = MEMORY[0x277D4F9D8];
  v39[4] = MEMORY[0x277D4F9D8];
  sub_22766A8E0();
  v43 = v41;
  v44 = v52;
  v45 = MEMORY[0x277D4F9B0];
  sub_2276699F0();

  __swift_destroy_boxed_opaque_existential_0(v57);
  sub_22766A3A0();
  v46 = swift_allocObject();
  v46[2] = v43;
  v46[3] = v40;
  v46[4] = v42;
  v47 = v43;
  sub_2276699F0();

  __swift_destroy_boxed_opaque_existential_0(v57);
  sub_22766A5F0();
  v48 = swift_allocObject();
  v48[2] = v47;
  v48[3] = v40;
  v48[4] = v42;
  sub_2276699F0();

  __swift_destroy_boxed_opaque_existential_0(v57);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BBE88, &qword_22767C1D8);
  v49 = swift_allocObject();
  *(v49 + 16) = v44;
  *(v49 + 24) = v45;
  sub_226E9CFD0(&unk_2813A2E00, &unk_27D7BBE88, &qword_22767C1D8, &unk_227686E90);

  sub_2276699F0();

  __swift_destroy_boxed_opaque_existential_0(v56);
  __swift_destroy_boxed_opaque_existential_0(v57);
  __swift_destroy_boxed_opaque_existential_0(v61);
  __swift_destroy_boxed_opaque_existential_0(v58);
  __swift_destroy_boxed_opaque_existential_0(v62);
  __swift_destroy_boxed_opaque_existential_0(v65);
  return v55;
}

void *sub_2271B7B20(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t *a4)
{
  v8 = *a4;
  v9 = type metadata accessor for AchievementEnvironmentCacheCoordinator();
  v27[3] = v9;
  v27[4] = &off_283A9A890;
  v27[0] = a1;
  v25 = v8;
  v26 = &off_283AA53B8;
  v24[0] = a4;
  type metadata accessor for AchievementProgressProvider();
  v10 = swift_allocObject();
  v11 = __swift_mutable_project_boxed_opaque_existential_1(v27, v9);
  v12 = MEMORY[0x28223BE20](v11);
  v14 = (v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v15 + 16))(v14, v12);
  v16 = __swift_mutable_project_boxed_opaque_existential_1(v24, v25);
  v17 = MEMORY[0x28223BE20](v16);
  v19 = (v24 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v20 + 16))(v19, v17);
  v21 = *v14;
  v22 = *v19;
  v10[5] = v9;
  v10[6] = &off_283A9A890;
  v10[2] = v21;
  v10[15] = v8;
  v10[16] = &off_283AA53B8;
  v10[12] = v22;
  sub_226E92AB8(a2, (v10 + 7));
  sub_226E92AB8(a3, (v10 + 17));
  __swift_destroy_boxed_opaque_existential_0(v24);
  __swift_destroy_boxed_opaque_existential_0(v27);
  return v10;
}

void *sub_2271B7D50(__int128 *a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for CatalogDataStore();
  v25[3] = v6;
  v25[4] = &off_283A99B78;
  v25[0] = a2;
  v7 = type metadata accessor for ConfigurationDataStore();
  v23 = v7;
  v24 = &off_283AA1218;
  v22[0] = a3;
  type metadata accessor for WorkoutPlanInputValidator();
  v8 = swift_allocObject();
  v9 = __swift_mutable_project_boxed_opaque_existential_1(v25, v6);
  v10 = MEMORY[0x28223BE20](v9);
  v12 = (v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v13 + 16))(v12, v10);
  v14 = __swift_mutable_project_boxed_opaque_existential_1(v22, v23);
  v15 = MEMORY[0x28223BE20](v14);
  v17 = (v22 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v18 + 16))(v17, v15);
  v19 = *v12;
  v20 = *v17;
  v8[5] = v6;
  v8[6] = &off_283A99B78;
  v8[2] = v19;
  v8[10] = v7;
  v8[11] = &off_283AA1218;
  v8[7] = v20;
  v8[18] = 0;
  v8[19] = 0;
  v8[17] = 0;
  sub_226E92AB8(a1, (v8 + 12));
  __swift_destroy_boxed_opaque_existential_0(v22);
  __swift_destroy_boxed_opaque_existential_0(v25);
  return v8;
}

void *sub_2271B7F5C(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4)
{
  v40 = a1;
  v41 = a2;
  v6 = MEMORY[0x277D545F8];
  v39 = sub_2271BFC90(&qword_28139D360, MEMORY[0x277D545F8], MEMORY[0x277D545E8]);
  v7 = sub_2271BFC90(&qword_28139D358, v6, MEMORY[0x277D545F0]);
  v8 = type metadata accessor for AchievementSystem();
  v45[3] = v8;
  v45[4] = &off_283AA3410;
  v45[0] = a3;
  v43 = &type metadata for AchievementTemplateSource;
  v44 = &off_283AADD00;
  v9 = swift_allocObject();
  v42[0] = v9;
  v10 = a4[11];
  v9[11] = a4[10];
  v9[12] = v10;
  v9[13] = a4[12];
  v11 = a4[7];
  v9[7] = a4[6];
  v9[8] = v11;
  v12 = a4[9];
  v9[9] = a4[8];
  v9[10] = v12;
  v13 = a4[3];
  v9[3] = a4[2];
  v9[4] = v13;
  v14 = a4[5];
  v9[5] = a4[4];
  v9[6] = v14;
  v15 = a4[1];
  v9[1] = *a4;
  v9[2] = v15;
  type metadata accessor for AchievementListener();
  v16 = swift_allocObject();
  v17 = __swift_mutable_project_boxed_opaque_existential_1(v45, v8);
  v18 = MEMORY[0x28223BE20](v17);
  v20 = (&v38 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v21 + 16))(v20, v18);
  v22 = __swift_mutable_project_boxed_opaque_existential_1(v42, v43);
  v23 = MEMORY[0x28223BE20](v22);
  v25 = (&v38 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v26 + 16))(v25, v23);
  v27 = *v20;
  v16[11] = v8;
  v16[12] = &off_283AA3410;
  v16[8] = v27;
  v16[16] = &type metadata for AchievementTemplateSource;
  v16[17] = &off_283AADD00;
  v28 = swift_allocObject();
  v16[13] = v28;
  v29 = v25[11];
  v28[11] = v25[10];
  v28[12] = v29;
  v28[13] = v25[12];
  v30 = v25[7];
  v28[7] = v25[6];
  v28[8] = v30;
  v31 = v25[9];
  v28[9] = v25[8];
  v28[10] = v31;
  v32 = v25[3];
  v28[3] = v25[2];
  v28[4] = v32;
  v33 = v25[5];
  v28[5] = v25[4];
  v28[6] = v33;
  v34 = v25[1];
  v28[1] = *v25;
  v28[2] = v34;
  v35 = MEMORY[0x277D4F9D0];
  v16[2] = v40;
  v16[3] = v35;
  v36 = v41;
  v16[4] = MEMORY[0x277D4F9D8];
  v16[5] = v36;
  v16[6] = v39;
  v16[7] = v7;
  __swift_destroy_boxed_opaque_existential_0(v42);
  __swift_destroy_boxed_opaque_existential_0(v45);
  return v16;
}

id sub_2271B8270(uint64_t a1, char a2)
{
  v4 = type metadata accessor for RemoteBrowsingEnvironmentBuilder();
  v18[3] = v4;
  v18[4] = &off_283ABE3C0;
  v18[0] = a1;
  v5 = type metadata accessor for RemoteBrowsingConfirmationCoordinator();
  v6 = objc_allocWithZone(v5);
  v7 = __swift_mutable_project_boxed_opaque_existential_1(v18, v4);
  v8 = MEMORY[0x28223BE20](v7);
  v10 = (&v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v11 + 16))(v10, v8);
  v12 = *v10;
  v17[3] = v4;
  v17[4] = &off_283ABE3C0;
  v17[0] = v12;
  v6[OBJC_IVAR____TtC15SeymourServices37RemoteBrowsingConfirmationCoordinator_platform] = a2;
  sub_2276696C0();
  swift_allocObject();
  *&v6[OBJC_IVAR____TtC15SeymourServices37RemoteBrowsingConfirmationCoordinator_lock] = sub_2276696B0();
  sub_226E91B50(v17, &v6[OBJC_IVAR____TtC15SeymourServices37RemoteBrowsingConfirmationCoordinator_remoteBrowsingEnvironmentBuilder]);
  v13 = &v6[OBJC_IVAR____TtC15SeymourServices37RemoteBrowsingConfirmationCoordinator_state];
  *v13 = 0u;
  *(v13 + 1) = 0u;
  v13[32] = 2;
  v16.receiver = v6;
  v16.super_class = v5;
  v14 = objc_msgSendSuper2(&v16, sel_init);
  __swift_destroy_boxed_opaque_existential_0(v17);
  __swift_destroy_boxed_opaque_existential_0(v18);
  return v14;
}

void *sub_2271B841C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v29 = a2;
  v7 = MEMORY[0x277D545F8];
  v8 = sub_2271BFC90(&qword_28139D360, MEMORY[0x277D545F8], MEMORY[0x277D545E8]);
  v9 = sub_2271BFC90(&qword_28139D358, v7, MEMORY[0x277D545F0]);
  v10 = type metadata accessor for ScriptConnection(0);
  v33[3] = v10;
  v33[4] = &off_283AB69E8;
  v33[0] = a3;
  v11 = type metadata accessor for BookmarkSystem();
  v31 = v11;
  v32 = &off_283AAF940;
  v30[0] = a4;
  type metadata accessor for BookmarkListener();
  v12 = swift_allocObject();
  v13 = __swift_mutable_project_boxed_opaque_existential_1(v33, v10);
  v14 = MEMORY[0x28223BE20](v13);
  v16 = (&v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v17 + 16))(v16, v14);
  v18 = __swift_mutable_project_boxed_opaque_existential_1(v30, v31);
  v19 = MEMORY[0x28223BE20](v18);
  v21 = (&v28 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v22 + 16))(v21, v19);
  v23 = *v16;
  v24 = *v21;
  v12[8] = v10;
  v12[9] = &off_283AB69E8;
  v12[10] = v24;
  v12[13] = v11;
  v12[14] = &off_283AAF940;
  v25 = MEMORY[0x277D4F9D0];
  v26 = MEMORY[0x277D4F9D8];
  v12[2] = a1;
  v12[3] = v25;
  v12[4] = v26;
  v12[5] = v23;
  v12[15] = v29;
  v12[16] = v8;
  v12[17] = v9;
  __swift_destroy_boxed_opaque_existential_0(v30);
  __swift_destroy_boxed_opaque_existential_0(v33);
  return v12;
}

void *sub_2271B86A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t a6, uint64_t (*a7)(void))
{
  v35 = a4;
  v13 = type metadata accessor for ScriptConnection(0);
  v39[3] = v13;
  v39[4] = &off_283AB69E8;
  v39[0] = a2;
  v14 = a5(0);
  v37 = v14;
  v38 = a6;
  v36[0] = a3;
  v15 = MEMORY[0x277D545F8];
  v16 = sub_2271BFC90(&qword_28139D360, MEMORY[0x277D545F8], MEMORY[0x277D545E8]);
  v17 = sub_2271BFC90(&qword_28139D358, v15, MEMORY[0x277D545F0]);
  a7(0);
  v18 = swift_allocObject();
  v19 = __swift_mutable_project_boxed_opaque_existential_1(v39, v13);
  v20 = MEMORY[0x28223BE20](v19);
  v22 = (&v34 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v23 + 16))(v22, v20);
  v24 = __swift_mutable_project_boxed_opaque_existential_1(v36, v37);
  v25 = MEMORY[0x28223BE20](v24);
  v27 = (&v34 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v28 + 16))(v27, v25);
  v29 = *v22;
  v30 = *v27;
  v18[8] = v13;
  v18[9] = &off_283AB69E8;
  v18[10] = v30;
  v18[13] = v14;
  v18[14] = a6;
  v31 = MEMORY[0x277D4F9D0];
  v32 = MEMORY[0x277D4F9D8];
  v18[2] = a1;
  v18[3] = v31;
  v18[4] = v32;
  v18[5] = v29;
  v18[15] = v35;
  v18[16] = v16;
  v18[17] = v17;
  __swift_destroy_boxed_opaque_existential_0(v36);
  __swift_destroy_boxed_opaque_existential_0(v39);
  return v18;
}

void *sub_2271B8938(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for RecommendationSystem(0);
  v32[3] = v8;
  v32[4] = &off_283AA1580;
  v32[0] = a2;
  v9 = type metadata accessor for ScriptConnection(0);
  v30 = v9;
  v31 = &off_283AB69E8;
  v29[0] = a3;
  v10 = MEMORY[0x277D545F8];
  v11 = sub_2271BFC90(&qword_28139D360, MEMORY[0x277D545F8], MEMORY[0x277D545E8]);
  v12 = sub_2271BFC90(&qword_28139D358, v10, MEMORY[0x277D545F0]);
  type metadata accessor for RecommendationListener();
  v13 = swift_allocObject();
  v14 = __swift_mutable_project_boxed_opaque_existential_1(v32, v8);
  v15 = MEMORY[0x28223BE20](v14);
  v17 = (v29 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v18 + 16))(v17, v15);
  v19 = __swift_mutable_project_boxed_opaque_existential_1(v29, v30);
  v20 = MEMORY[0x28223BE20](v19);
  v22 = (v29 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v23 + 16))(v22, v20);
  v24 = *v17;
  v25 = *v22;
  v13[8] = v8;
  v13[9] = &off_283AA1580;
  v13[13] = v9;
  v13[14] = &off_283AB69E8;
  v13[10] = v25;
  v26 = MEMORY[0x277D4F9D0];
  v27 = MEMORY[0x277D4F9D8];
  v13[2] = a1;
  v13[3] = v26;
  v13[4] = v27;
  v13[5] = v24;
  v13[15] = a4;
  v13[16] = v11;
  v13[17] = v12;
  __swift_destroy_boxed_opaque_existential_0(v29);
  __swift_destroy_boxed_opaque_existential_0(v32);
  return v13;
}

void *sub_2271B8BCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v28 = a2;
  v7 = MEMORY[0x277D545F8];
  v8 = sub_2271BFC90(&qword_28139D360, MEMORY[0x277D545F8], MEMORY[0x277D545E8]);
  v9 = sub_2271BFC90(&qword_28139D358, v7, MEMORY[0x277D545F0]);
  v10 = type metadata accessor for ScriptConnection(0);
  v32[3] = v10;
  v32[4] = &off_283AB69E8;
  v32[0] = a3;
  v11 = type metadata accessor for WorkoutPlanSystem();
  v30 = v11;
  v31 = &off_283AA3858;
  v29[0] = a4;
  type metadata accessor for WorkoutPlanListener();
  v12 = swift_allocObject();
  v13 = __swift_mutable_project_boxed_opaque_existential_1(v32, v10);
  v14 = MEMORY[0x28223BE20](v13);
  v16 = (&v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v17 + 16))(v16, v14);
  v18 = __swift_mutable_project_boxed_opaque_existential_1(v29, v30);
  v19 = MEMORY[0x28223BE20](v18);
  v21 = (&v27 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v22 + 16))(v21, v19);
  v23 = *v16;
  v24 = *v21;
  v12[8] = v10;
  v12[9] = &off_283AB69E8;
  v12[16] = v11;
  v12[17] = &off_283AA3858;
  v25 = MEMORY[0x277D4F9D0];
  v12[2] = a1;
  v12[3] = v25;
  v12[4] = MEMORY[0x277D4F9D8];
  v12[5] = v23;
  v12[10] = v28;
  v12[11] = v8;
  v12[12] = v9;
  v12[13] = v24;
  __swift_destroy_boxed_opaque_existential_0(v29);
  __swift_destroy_boxed_opaque_existential_0(v32);
  return v12;
}

uint64_t sub_2271B8E54(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_227669A90();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_22766AE70();
  v20[3] = v12;
  v20[4] = MEMORY[0x277D4FAF8];
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v20);
  (*(*(v12 - 8) + 32))(boxed_opaque_existential_0, a1, v12);
  v14 = sub_22766AC10();
  v19[3] = v14;
  v19[4] = MEMORY[0x277D54628];
  v15 = __swift_allocate_boxed_opaque_existential_0(v19);
  (*(*(v14 - 8) + 32))(v15, a3, v14);
  *(a4 + 17) = a2;
  sub_226E91B50(v20, a4 + 24);
  sub_226E91B50(v19, a4 + 64);
  v16 = [objc_opt_self() standardUserDefaults];
  (*(v9 + 104))(v11, *MEMORY[0x277D4EF08], v8);
  sub_227669A80();
  (*(v9 + 8))(v11, v8);
  v17 = sub_22766BFD0();

  LOBYTE(v8) = [v16 BOOLForKey_];

  __swift_destroy_boxed_opaque_existential_0(v19);
  __swift_destroy_boxed_opaque_existential_0(v20);
  *(a4 + 16) = v8;
  return a4;
}

uint64_t sub_2271B9094(uint64_t a1, uint64_t a2, _OWORD *a3, int a4)
{
  v17 = a4;
  v18 = a3;
  v16 = a1;
  v5 = sub_227669A90();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_226E99364(0, &unk_28139D298, 0x277CF0130);
  v22 = &off_283A9DE10;
  *&v20 = a2;
  type metadata accessor for AccountDeviceObserver(0);
  v9 = swift_allocObject();
  swift_defaultActor_initialize();
  v10 = *(v6 + 104);
  v10(v8, *MEMORY[0x277D4EFA0], v5);
  v19 = 0;
  sub_227669760();
  *(v9 + OBJC_IVAR____TtC15SeymourServices21AccountDeviceObserver_accountHasSupportedWatch) = 2;
  v10(v8, *MEMORY[0x277D4EF98], v5);
  v19 = 0;
  sub_227669760();
  *(v9 + OBJC_IVAR____TtC15SeymourServices21AccountDeviceObserver_accountHasSupportedPhone) = 2;
  *(v9 + OBJC_IVAR____TtC15SeymourServices21AccountDeviceObserver_accountHasSupportedDevice) = 2;
  *(v9 + OBJC_IVAR____TtC15SeymourServices21AccountDeviceObserver_accountOwnedDevices) = 0;
  v11 = MEMORY[0x277D4F9B0];
  *(v9 + 112) = v16;
  *(v9 + 120) = v11;
  *(v9 + 208) = v17;
  sub_226E92AB8(&v20, v9 + 128);
  v12 = v18;
  v13 = v18[1];
  *(v9 + 168) = *v18;
  *(v9 + 184) = v13;
  *(v9 + 200) = *(v12 + 4);
  return v9;
}

uint64_t sub_2271B92C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_227669A90();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v23[-1] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27[3] = sub_227669970();
  v27[4] = MEMORY[0x277D4E258];
  v27[0] = a4;
  v26[3] = sub_22766ADD0();
  v26[4] = MEMORY[0x277D4FAB0];
  v26[0] = a1;
  v12 = type metadata accessor for BagConsumer();
  v25[3] = v12;
  v25[4] = &off_283A9F810;
  v25[0] = a2;
  type metadata accessor for StorefrontObserver(0);
  v13 = swift_allocObject();
  v14 = __swift_mutable_project_boxed_opaque_existential_1(v25, v12);
  v15 = MEMORY[0x28223BE20](v14);
  v17 = (&v23[-1] - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v18 + 16))(v17, v15);
  v19 = *v17;
  v24[3] = v12;
  v24[4] = &off_283A9F810;
  v24[0] = v19;
  *(v13 + 160) = 0;
  (*(v9 + 104))(v11, *MEMORY[0x277D4F048], v8);
  LOBYTE(v23[0]) = 0;
  sub_227669760();
  sub_226E91B50(v26, v13 + 16);
  sub_226E91B50(v24, v13 + 56);
  v20 = MEMORY[0x277D4F9B0];
  *(v13 + 96) = a3;
  *(v13 + 104) = v20;
  sub_226E91B50(v27, v13 + 112);
  sub_227669B50();
  swift_allocObject();
  swift_retain_n();
  *(v13 + 152) = sub_227669B40();
  sub_22766ADA0();
  swift_allocObject();
  swift_weakInit();
  sub_22766A8E0();
  sub_2271BFC90(&unk_28139D330, MEMORY[0x277D4FAA8], MEMORY[0x277D4FAA0]);

  sub_227669A10();

  __swift_destroy_boxed_opaque_existential_0(v23);

  swift_allocObject();
  swift_weakInit();

  sub_226FD0200();

  sub_227669A10();

  __swift_destroy_boxed_opaque_existential_0(v27);
  __swift_destroy_boxed_opaque_existential_0(v23);
  __swift_destroy_boxed_opaque_existential_0(v26);
  __swift_destroy_boxed_opaque_existential_0(v24);

  __swift_destroy_boxed_opaque_existential_0(v25);
  return v13;
}

void *sub_2271B96F4(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v16[3] = sub_226E99364(0, &unk_2813A5830, 0x277D44150);
  v16[4] = MEMORY[0x277D54680];
  v16[0] = a4;
  v8 = sub_22766AD60();
  v15[3] = v8;
  v15[4] = MEMORY[0x277D54670];
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v15);
  (*(*(v8 - 8) + 32))(boxed_opaque_existential_0, a1, v8);
  type metadata accessor for RemoteBrowsingGuestPairingVerifier();
  v10 = swift_allocObject();
  sub_226E91B50(a3, (v10 + 2));
  sub_226E91B50(v15, (v10 + 7));
  v11 = MEMORY[0x277D4F9B0];
  v10[12] = a2;
  v10[13] = v11;
  sub_226E91B50(v16, (v10 + 14));
  v12 = sub_22714AD98(MEMORY[0x277D84F90]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBE70, &qword_22767C1B0);
  v13 = swift_allocObject();
  *(v13 + 24) = 0;

  __swift_destroy_boxed_opaque_existential_0(v16);
  __swift_destroy_boxed_opaque_existential_0(a3);
  __swift_destroy_boxed_opaque_existential_0(v15);
  *(v13 + 16) = v12;

  v10[19] = v13;
  return v10;
}

void *sub_2271B985C(uint64_t a1, uint64_t a2, void *a3)
{
  v9[3] = type metadata accessor for RecentAPIAccessRestrictionProvider();
  v9[4] = &protocol witness table for RecentAPIAccessRestrictionProvider;
  v9[0] = a1;
  sub_226E91B50(v9, (a3 + 2));
  v6 = MEMORY[0x277D4F9B0];
  a3[7] = a2;
  a3[8] = v6;
  sub_227669B50();
  swift_allocObject();
  swift_retain_n();
  a3[9] = sub_227669B40();
  sub_227669680();
  swift_allocObject();
  swift_weakInit();
  sub_22766A8E0();
  sub_2276699F0();

  __swift_destroy_boxed_opaque_existential_0(v8);
  __swift_destroy_boxed_opaque_existential_0(v9);
  return a3;
}

unint64_t sub_2271B99F0()
{
  result = qword_28139D2C0;
  if (!qword_28139D2C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27D7BBBB8, &qword_22767C380);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28139D2C0);
  }

  return result;
}

unint64_t sub_2271B9A6C()
{
  result = qword_28139D2B8;
  if (!qword_28139D2B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27D7BBBB8, &qword_22767C380);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28139D2B8);
  }

  return result;
}

uint64_t sub_2271B9AE8(uint64_t a1, void *a2, char a3, uint64_t a4)
{
  v6 = MEMORY[0x277D4F9B0];
  *(a4 + 16) = a1;
  *(a4 + 24) = v6;
  *(a4 + 32) = a3;
  *(a4 + 40) = a2;
  *(a4 + 48) = &off_283AC2938;
  sub_227669B50();
  swift_allocObject();
  swift_retain_n();
  v7 = a2;
  *(a4 + 56) = sub_227669B40();
  *&v7[OBJC_IVAR____TtC15SeymourServices21EngagementPushHandler_delegate + 8] = &off_283A99DE8;
  swift_unknownObjectWeakAssign();

  swift_allocObject();
  swift_weakInit();
  sub_22766A8E0();
  sub_2271BFCE8();
  sub_2276699F0();

  __swift_destroy_boxed_opaque_existential_0(v9);
  return a4;
}

id sub_2271B9C38(uint64_t a1, uint64_t a2, void *a3, char *a4)
{
  v15[3] = type metadata accessor for AssetFileStore(0);
  v15[4] = &off_283AC5580;
  v15[0] = a1;
  *&a4[OBJC_IVAR____TtC15SeymourServices16AssetImageLoader____lazy_storage___session] = 0;
  sub_226E91B50(v15, &a4[OBJC_IVAR____TtC15SeymourServices16AssetImageLoader_assetFileStore]);
  v8 = &a4[OBJC_IVAR____TtC15SeymourServices16AssetImageLoader_eventHub];
  v9 = MEMORY[0x277D4F9B0];
  *v8 = a2;
  *(v8 + 1) = v9;
  sub_2276696C0();
  swift_allocObject();
  *&a4[OBJC_IVAR____TtC15SeymourServices16AssetImageLoader_lock] = sub_2276696B0();
  *&a4[OBJC_IVAR____TtC15SeymourServices16AssetImageLoader_queue] = a3;
  v10 = a3;
  v11 = MEMORY[0x277D84F90];
  *&a4[OBJC_IVAR____TtC15SeymourServices16AssetImageLoader_taskCompletions] = sub_22714A1CC(MEMORY[0x277D84F90]);
  *&a4[OBJC_IVAR____TtC15SeymourServices16AssetImageLoader_taskResults] = sub_22714A2D4(v11);
  *&a4[OBJC_IVAR____TtC15SeymourServices16AssetImageLoader_requestIdentifierToTask] = sub_22714A4B0(v11);
  v14.receiver = a4;
  v14.super_class = type metadata accessor for AssetImageLoader();
  v12 = objc_msgSendSuper2(&v14, sel_init);
  __swift_destroy_boxed_opaque_existential_0(v15);
  return v12;
}

uint64_t sub_2271B9D88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = OBJC_IVAR____TtC15SeymourServices16JournalingSystem_directory;
  v7 = sub_2276624A0();
  v8 = *(v7 - 8);
  (*(v8 + 16))(a3 + v6, a1, v7);
  v9 = (a3 + OBJC_IVAR____TtC15SeymourServices16JournalingSystem_eventHub);
  v10 = MEMORY[0x277D4F9B0];
  *v9 = a2;
  v9[1] = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBFB8, &qword_22767C2D8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22767BC90;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBFC0, &qword_22767C2E0);
  *(inited + 32) = 0xD000000000000022;
  *(inited + 72) = v12;
  *(inited + 80) = &off_283AA0328;
  *(inited + 48) = a2;
  *(inited + 56) = v10;
  *(inited + 40) = 0x80000002276929A0;
  *(inited + 128) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBFC8, &qword_22767C2E8);
  *(inited + 136) = &off_283AA0328;
  *(inited + 104) = a2;
  *(inited + 112) = v10;
  *(inited + 88) = 0xD000000000000024;
  *(inited + 96) = 0x80000002276929D0;
  *(inited + 184) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBFD0, &qword_22767C2F0);
  *(inited + 192) = &off_283AA0328;
  *(inited + 160) = a2;
  *(inited + 168) = v10;
  *(inited + 144) = 0xD000000000000016;
  *(inited + 152) = 0x8000000227692A40;
  *(inited + 240) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBFD8, &qword_22767C2F8);
  *(inited + 248) = &off_283AA0328;
  *(inited + 216) = a2;
  *(inited + 224) = v10;
  *(inited + 200) = 0xD000000000000021;
  *(inited + 208) = 0x8000000227692A60;
  *(inited + 296) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBFE0, &qword_22767C300);
  *(inited + 304) = &off_283AA0328;
  *(inited + 272) = a2;
  *(inited + 280) = v10;
  *(inited + 256) = 0x42646567616E614DLL;
  *(inited + 264) = 0xEF6B72616D6B6F6FLL;
  *(inited + 352) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBFE8, &qword_22767C308);
  *(inited + 360) = &off_283AA0328;
  *(inited + 328) = a2;
  *(inited + 336) = v10;
  *(inited + 312) = 0xD00000000000002BLL;
  *(inited + 320) = 0x8000000227693120;
  *(inited + 408) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBFF0, &qword_22767C310);
  *(inited + 416) = &off_283AA0328;
  *(inited + 384) = a2;
  *(inited + 392) = v10;
  *(inited + 368) = 0xD00000000000001DLL;
  *(inited + 376) = 0x80000002276932C0;
  *(inited + 464) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBFF8, &qword_22767C318);
  *(inited + 472) = &off_283AA0328;
  *(inited + 440) = a2;
  *(inited + 448) = v10;
  *(inited + 424) = 0xD000000000000027;
  *(inited + 432) = 0x80000002276932E0;

  *(inited + 520) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC000, &qword_22767C320);
  *(inited + 528) = &off_283AA0328;
  *(inited + 496) = a2;
  *(inited + 504) = v10;
  *(inited + 480) = 0x50646567616E614DLL;
  *(inited + 488) = 0xEF7473696C79616CLL;

  *(inited + 576) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC008, &qword_22767C328);
  *(inited + 584) = &off_283AA0328;
  *(inited + 552) = a2;
  *(inited + 560) = v10;
  *(inited + 536) = 0xD000000000000013;
  *(inited + 544) = 0x8000000227693340;

  *(inited + 632) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC010, &qword_22767C330);
  *(inited + 640) = &off_283AA0328;
  *(inited + 608) = a2;
  *(inited + 616) = v10;
  *(inited + 592) = 0xD000000000000017;
  *(inited + 600) = 0x80000002276933D0;

  *(inited + 688) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC018, &qword_22767C338);
  *(inited + 696) = &off_283AA0328;
  *(inited + 664) = a2;
  *(inited + 672) = v10;
  *(inited + 648) = 0xD000000000000016;
  *(inited + 656) = 0x8000000227693650;

  *(inited + 744) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC020, &qword_22767C340);
  *(inited + 752) = &off_283AA0328;
  *(inited + 720) = a2;
  *(inited + 728) = v10;
  *(inited + 704) = 0xD000000000000012;
  *(inited + 712) = 0x80000002276936B0;

  *(inited + 800) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC028, &qword_22767C348);
  *(inited + 808) = &off_283AA0328;
  *(inited + 776) = a2;
  *(inited + 784) = v10;
  *(inited + 760) = 0xD00000000000001FLL;
  *(inited + 768) = 0x80000002276937C0;

  *(inited + 856) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BC030, &qword_22767C350);
  *(inited + 864) = &off_283AA0328;
  *(inited + 832) = a2;
  *(inited + 840) = v10;
  *(inited + 816) = 0xD00000000000001ALL;
  *(inited + 824) = 0x80000002276937E0;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9A80, &qword_227674EA8);
  v15 = sub_22766D010();
  swift_retain_n();

  sub_2271B45AC(v13, 1, &v15);
  (*(v8 + 8))(a1, v7);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC040, &qword_22767C358);
  swift_arrayDestroy();
  *(a3 + OBJC_IVAR____TtC15SeymourServices16JournalingSystem_journalingAgents) = v15;
  return a3;
}

uint64_t sub_2271BA334()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_226E93028;

  return sub_227106A24(v0);
}

char *sub_2271BA420(uint64_t a1, uint64_t a2, char *a3)
{
  ObjectType = swift_getObjectType();
  v14[3] = sub_22766ADD0();
  v14[4] = MEMORY[0x277D4FAB0];
  v14[0] = a1;
  sub_226E91B50(v14, &a3[OBJC_IVAR____TtC15SeymourServices21AMSRequestBagConsumer_accountProvider]);
  *&a3[OBJC_IVAR____TtC15SeymourServices21AMSRequestBagConsumer_bagConsumer] = a2;
  v7 = objc_opt_self();

  v8 = [v7 defaultSessionConfiguration];
  [v8 setURLCache_];
  sub_2276693D0();
  sub_2276693E0();
  v9 = sub_22766CA30();

  v10 = [objc_allocWithZone(MEMORY[0x277CEE6F0]) initWithConfiguration:v9 delegate:0 delegateQueue:0];
  *&a3[OBJC_IVAR____TtC15SeymourServices21AMSRequestBagConsumer_amsSession] = v10;
  v13.receiver = a3;
  v13.super_class = ObjectType;
  v11 = objc_msgSendSuper2(&v13, sel_init);
  [*&v11[OBJC_IVAR____TtC15SeymourServices21AMSRequestBagConsumer_amsSession] setDelegate_];

  __swift_destroy_boxed_opaque_existential_0(v14);
  return v11;
}

uint64_t sub_2271BA590(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_226E93028;

  return sub_2272D8258(a1, v1 + 16);
}

uint64_t sub_2271BA62C(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_226E93028;

  return sub_2272D8674(a1, v1);
}

uint64_t sub_2271BA6C4(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_226E93028;

  return sub_2272D88D0(a1, v1);
}

void *sub_2271BA764(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  v68 = a5;
  v71 = a1;
  v12 = sub_22766A8A0();
  v13 = *(v12 - 8);
  v72 = v12;
  v73 = v13;
  MEMORY[0x28223BE20](v12);
  v15 = &v66 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for ArchivedSessionDataStore();
  v90[3] = v16;
  v90[4] = &off_283A9CAB0;
  v90[0] = a2;
  v70 = type metadata accessor for SyncCoordinator(0);
  v88 = v70;
  v89 = &off_283AA3680;
  v87[0] = a3;
  v69 = type metadata accessor for ConfigurationDataStore();
  v85 = v69;
  v86 = &off_283AA1218;
  v84[0] = a6;
  v67 = type metadata accessor for ProgramCompletionDataStore();
  v82 = v67;
  v83 = &off_283A9CA78;
  v81[0] = a7;
  type metadata accessor for ArchivedSessionSystem();
  v17 = swift_allocObject();
  v18 = __swift_mutable_project_boxed_opaque_existential_1(v90, v16);
  v19 = MEMORY[0x28223BE20](v18);
  v21 = (&v66 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v22 + 16))(v21, v19);
  v23 = __swift_mutable_project_boxed_opaque_existential_1(v87, v88);
  v24 = MEMORY[0x28223BE20](v23);
  v26 = (&v66 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v27 + 16))(v26, v24);
  v28 = __swift_mutable_project_boxed_opaque_existential_1(v84, v85);
  v29 = MEMORY[0x28223BE20](v28);
  v31 = (&v66 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v32 + 16))(v31, v29);
  v33 = __swift_mutable_project_boxed_opaque_existential_1(v81, v82);
  v34 = MEMORY[0x28223BE20](v33);
  v36 = (&v66 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v37 + 16))(v36, v34);
  v38 = *v21;
  v39 = *v26;
  v40 = *v31;
  v41 = *v36;
  v80[3] = v16;
  v80[4] = &off_283A9CAB0;
  v80[0] = v38;
  v79 = &off_283AA3680;
  v78 = v70;
  v77[0] = v39;
  v76[3] = v69;
  v76[4] = &off_283AA1218;
  v76[0] = v40;
  v75[3] = v67;
  v75[4] = &off_283A9CA78;
  v75[0] = v41;
  sub_226E91B50(v71, (v17 + 2));
  sub_226E91B50(v80, (v17 + 7));
  sub_226E91B50(v77, (v17 + 12));
  v42 = MEMORY[0x277D4F9B0];
  v17[17] = a4;
  v17[18] = v42;
  sub_227669B50();
  swift_allocObject();
  swift_retain_n();
  v69 = a4;
  v17[19] = sub_227669B40();
  sub_226E91B50(v76, (v17 + 20));
  sub_226E91B50(v75, (v17 + 25));
  v43 = *__swift_project_boxed_opaque_existential_0(v77, v78);
  v44 = sub_2276693C0();
  v45 = *MEMORY[0x277D4F880];
  v46 = v72;
  v47 = v73;
  v70 = v73[13];
  v70(v15, v45, v72);
  LOBYTE(v26) = sub_226EC9A38(v15, v44);

  v48 = v47 + 1;
  v49 = v47[1];
  v73 = v48;
  v49(v15, v46);
  if (v26)
  {
    __swift_project_boxed_opaque_existential_0(v43 + 2, v43[5]);
    v50 = MEMORY[0x277D53CC8];
    sub_22718C53C(&qword_27D7BBF88, &qword_22767C2B0, MEMORY[0x277D53CC8]);
    __swift_project_boxed_opaque_existential_0(v43 + 7, v43[10]);
    sub_2271AB4E4(&qword_27D7BBF80, &qword_22767C2A8, v50);
  }

  v51 = *__swift_project_boxed_opaque_existential_0(v77, v78);
  v52 = sub_2276693C0();
  v53 = v72;
  v70(v15, v45, v72);
  v54 = sub_226EC9A38(v15, v52);

  v49(v15, v53);
  if (v54)
  {
    __swift_project_boxed_opaque_existential_0(v51 + 2, v51[5]);
    v55 = MEMORY[0x277D53CF0];
    sub_22718C53C(&qword_27D7BBF98, &qword_22767C2C0, MEMORY[0x277D53CF0]);
    __swift_project_boxed_opaque_existential_0(v51 + 7, v51[10]);
    sub_2271AB4E4(&qword_27D7BBF90, &qword_22767C2B8, v55);
  }

  v56 = *__swift_project_boxed_opaque_existential_0(v77, v78);
  v57 = sub_2276693C0();
  v58 = v72;
  v70(v15, v45, v72);
  v59 = sub_226EC9A38(v15, v57);

  v49(v15, v58);
  if (v59)
  {
    __swift_project_boxed_opaque_existential_0(v56 + 2, v56[5]);
    v60 = MEMORY[0x277D53D48];
    sub_22718C53C(&unk_27D7BBFA8, &qword_22767C2D0, MEMORY[0x277D53D48]);
    __swift_project_boxed_opaque_existential_0(v56 + 7, v56[10]);
    sub_2271AB4E4(&qword_27D7BBFA0, &qword_22767C2C8, v60);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBF60, &qword_22767C290);
  swift_allocObject();
  swift_weakInit();
  sub_22766A8E0();
  v73 = &unk_227686E90;
  sub_226E9CFD0(&unk_2813A2E88, &qword_27D7BBF60, &qword_22767C290, &unk_227686E90);

  sub_2276699F0();

  __swift_destroy_boxed_opaque_existential_0(v74);
  swift_allocObject();
  swift_weakInit();
  sub_226FA6E58();
  sub_2276699F0();

  __swift_destroy_boxed_opaque_existential_0(v74);
  swift_allocObject();
  swift_weakInit();
  sub_226FA7000();
  sub_2276699F0();

  __swift_destroy_boxed_opaque_existential_0(v74);
  sub_22766A060();
  v61 = swift_allocObject();
  v62 = MEMORY[0x277D4F9D0];
  v63 = v68;
  v61[2] = v68;
  v61[3] = v62;
  v61[4] = MEMORY[0x277D4F9D8];
  v72 = v63;
  sub_2276699F0();

  __swift_destroy_boxed_opaque_existential_0(v74);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBF68, &qword_22767C298);
  swift_allocObject();
  swift_weakInit();
  sub_226E9CFD0(&qword_2813A2E20, &qword_27D7BBF68, &qword_22767C298, v73);
  sub_2276699F0();

  __swift_destroy_boxed_opaque_existential_0(v74);
  swift_allocObject();
  swift_weakInit();
  sub_226FA6F54();
  sub_2276699F0();

  __swift_destroy_boxed_opaque_existential_0(v74);
  sub_22766A550();
  v64 = swift_allocObject();
  v64[2] = v72;
  v64[3] = MEMORY[0x277D4F9D0];
  v64[4] = MEMORY[0x277D4F9D8];
  sub_2276699F0();

  __swift_destroy_boxed_opaque_existential_0(v74);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BBF70, &qword_22767C2A0);
  swift_allocObject();
  swift_weakInit();

  sub_226E9CFD0(&qword_2813A2E58, &unk_27D7BBF70, &qword_22767C2A0, v73);
  sub_2276699F0();

  __swift_destroy_boxed_opaque_existential_0(v71);
  __swift_destroy_boxed_opaque_existential_0(v74);
  __swift_destroy_boxed_opaque_existential_0(v75);
  __swift_destroy_boxed_opaque_existential_0(v76);
  __swift_destroy_boxed_opaque_existential_0(v80);
  __swift_destroy_boxed_opaque_existential_0(v77);
  __swift_destroy_boxed_opaque_existential_0(v81);
  __swift_destroy_boxed_opaque_existential_0(v84);
  __swift_destroy_boxed_opaque_existential_0(v87);
  __swift_destroy_boxed_opaque_existential_0(v90);
  return v17;
}

unint64_t sub_2271BB418()
{
  result = qword_2813A2138;
  if (!qword_2813A2138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813A2138);
  }

  return result;
}

void *sub_2271BB46C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(char *, uint64_t, uint64_t), void *a6)
{
  v62 = a1;
  v10 = *a6;
  v57 = a5;
  v58 = v10;
  v61 = sub_22766A8A0();
  v63 = *(v61 - 8);
  MEMORY[0x28223BE20](v61);
  v60 = &v56 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for BookmarkDataStore();
  v76[3] = v12;
  v76[4] = &off_283AC7718;
  v76[0] = a2;
  v13 = type metadata accessor for CatalogDataStore();
  v74 = v13;
  v75 = &off_283A99B78;
  v73[0] = a3;
  v14 = type metadata accessor for SyncCoordinator(0);
  v71 = v14;
  v72 = &off_283AA3680;
  v70[0] = a4;
  type metadata accessor for BookmarkSystem();
  v15 = swift_allocObject();
  v16 = __swift_mutable_project_boxed_opaque_existential_1(v76, v12);
  v17 = MEMORY[0x28223BE20](v16);
  v19 = (&v56 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v20 + 16))(v19, v17);
  v21 = __swift_mutable_project_boxed_opaque_existential_1(v73, v74);
  v22 = MEMORY[0x28223BE20](v21);
  v24 = (&v56 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v25 + 16))(v24, v22);
  v26 = __swift_mutable_project_boxed_opaque_existential_1(v70, v71);
  v27 = MEMORY[0x28223BE20](v26);
  v29 = (&v56 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v30 + 16))(v29, v27);
  v31 = *v19;
  v32 = *v24;
  v33 = *v29;
  v69[3] = v12;
  v69[4] = &off_283AC7718;
  v69[0] = v31;
  v68[3] = v13;
  v68[4] = &off_283A99B78;
  v68[0] = v32;
  v66 = v14;
  v67 = &off_283AA3680;
  v65[0] = v33;
  sub_226E91B50(v62, (v15 + 14));
  sub_226E91B50(v69, (v15 + 2));
  sub_226E91B50(v68, (v15 + 7));
  v34 = MEMORY[0x277D4F9B0];
  v15[12] = a6;
  v15[13] = v34;
  sub_227669B50();
  swift_allocObject();
  swift_retain_n();
  v59 = a6;
  v15[19] = sub_227669B40();
  sub_226E91B50(v65, (v15 + 20));
  v35 = MEMORY[0x277D4F9D0];
  v15[25] = v57;
  v15[26] = v35;
  v15[27] = MEMORY[0x277D4F9D8];
  v36 = *__swift_project_boxed_opaque_existential_0(v65, v66);
  v37 = sub_2276693C0();
  v38 = *MEMORY[0x277D4F880];
  v39 = v63;
  v40 = v60;
  v41 = v61;
  v57 = v63[13];
  v57(v60, v38, v61);
  LOBYTE(v24) = sub_226EC9A38(v40, v37);

  v42 = v39 + 1;
  v43 = v39[1];
  v63 = v42;
  (v43)(v40, v41);
  if (v24)
  {
    __swift_project_boxed_opaque_existential_0(v36 + 2, v36[5]);
    v44 = MEMORY[0x277D53D78];
    sub_22718C53C(&qword_27D7BBF38, &qword_22767C260, MEMORY[0x277D53D78]);
    __swift_project_boxed_opaque_existential_0(v36 + 7, v36[10]);
    sub_2271AB4E4(&qword_27D7BBF30, &qword_22767C258, v44);
  }

  v45 = *__swift_project_boxed_opaque_existential_0(v65, v66);
  v46 = sub_2276693C0();
  v48 = v60;
  v47 = v61;
  v57(v60, v38, v61);
  v49 = sub_226EC9A38(v48, v46);

  (v43)(v48, v47);
  if (v49)
  {
    __swift_project_boxed_opaque_existential_0(v45 + 2, v45[5]);
    v50 = MEMORY[0x277D53D80];
    sub_22718C53C(&qword_27D7BBF48, &qword_22767C270, MEMORY[0x277D53D80]);
    __swift_project_boxed_opaque_existential_0(v45 + 7, v45[10]);
    sub_2271AB4E4(&qword_27D7BBF40, &qword_22767C268, v50);
  }

  sub_2276699A0();
  swift_allocObject();
  swift_weakInit();

  v51 = v59;
  sub_2276699F0();

  __swift_destroy_boxed_opaque_existential_0(v64);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BBF10, &qword_22767C248);
  v52 = swift_allocObject();
  *(v52 + 16) = v51;
  v53 = MEMORY[0x277D4F9B0];
  *(v52 + 24) = MEMORY[0x277D4F9B0];
  v63 = &unk_227686E90;
  sub_226E9CFD0(&qword_2813A2DE8, &unk_27D7BBF10, &qword_22767C248, &unk_227686E90);

  sub_2276699F0();

  __swift_destroy_boxed_opaque_existential_0(v64);
  sub_227669A40();
  swift_allocObject();
  swift_weakInit();

  sub_2276699F0();

  __swift_destroy_boxed_opaque_existential_0(v64);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BBF20, &qword_22767C250);
  v54 = swift_allocObject();
  *(v54 + 16) = v51;
  *(v54 + 24) = v53;
  sub_226E9CFD0(&unk_2813A2DD8, &unk_27D7BBF20, &qword_22767C250, v63);

  sub_2276699F0();

  __swift_destroy_boxed_opaque_existential_0(v62);
  __swift_destroy_boxed_opaque_existential_0(v64);
  __swift_destroy_boxed_opaque_existential_0(v68);
  __swift_destroy_boxed_opaque_existential_0(v69);
  __swift_destroy_boxed_opaque_existential_0(v65);
  __swift_destroy_boxed_opaque_existential_0(v70);
  __swift_destroy_boxed_opaque_existential_0(v73);
  __swift_destroy_boxed_opaque_existential_0(v76);
  return v15;
}

uint64_t sub_2271BBD18(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_226E93028;

  return sub_227373C60(a1, v4, v5, v6);
}

unint64_t sub_2271BBDF4()
{
  result = qword_28139D300;
  if (!qword_28139D300)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7BBC30, &unk_2276720D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28139D300);
  }

  return result;
}

unint64_t sub_2271BBE70()
{
  result = qword_28139D2F0;
  if (!qword_28139D2F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7BBC30, &unk_2276720D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28139D2F0);
  }

  return result;
}

void *sub_2271BBF0C(uint64_t a1, void *a2, uint64_t a3, uint64_t *a4)
{
  v8 = sub_22766A8A0();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_227669700();
  v32[3] = v12;
  v32[4] = MEMORY[0x277D4DFA8];
  v32[5] = MEMORY[0x277D4DF90];
  v32[6] = MEMORY[0x277D4DF98];
  v32[7] = MEMORY[0x277D4DFA0];
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v32);
  (*(*(v12 - 8) + 32))(boxed_opaque_existential_0, a1, v12);
  v14 = type metadata accessor for SyncCoordinator(0);
  v31[3] = v14;
  v31[4] = &off_283AA3680;
  v31[0] = a3;
  type metadata accessor for EstimatedCaloriesSystem();
  v15 = swift_allocObject();
  v16 = __swift_mutable_project_boxed_opaque_existential_1(v31, v14);
  v17 = MEMORY[0x28223BE20](v16);
  v19 = (v27 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v20 + 16))(v19, v17);
  v21 = *v19;
  v29 = v14;
  v30 = &off_283AA3680;
  v28[0] = v21;
  sub_226FB68A4(v32, (v15 + 2));
  sub_226E91B50(a2, (v15 + 10));
  sub_226E91B50(v28, (v15 + 15));
  v22 = MEMORY[0x277D4F9B0];
  v15[20] = a4;
  v15[21] = v22;
  sub_227669B50();
  swift_allocObject();
  swift_retain_n();
  v15[22] = sub_227669B40();
  v23 = *__swift_project_boxed_opaque_existential_0(v28, v29);
  v24 = sub_2276693C0();
  (*(v9 + 104))(v11, *MEMORY[0x277D4F880], v8);
  LOBYTE(v14) = sub_226EC9A38(v11, v24);

  (*(v9 + 8))(v11, v8);
  if (v14)
  {
    __swift_project_boxed_opaque_existential_0(v23 + 2, v23[5]);
    v25 = MEMORY[0x277D53CD8];
    sub_22718C53C(&qword_27D7BBE80, &qword_22767C1D0, MEMORY[0x277D53CD8]);
    __swift_project_boxed_opaque_existential_0(v23 + 7, v23[10]);
    sub_2271AB4E4(&qword_27D7BBE78, &qword_22767C1C8, v25);
  }

  swift_allocObject();
  swift_weakInit();
  sub_227118F6C();
  sub_2276699E0();

  __swift_destroy_boxed_opaque_existential_0(a2);
  __swift_destroy_boxed_opaque_existential_0(v27);
  __swift_destroy_boxed_opaque_existential_0(v32);
  __swift_destroy_boxed_opaque_existential_0(v28);
  __swift_destroy_boxed_opaque_existential_0(v31);
  return v15;
}

uint64_t sub_2271BC3E4(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_226E93028;

  return sub_227050FCC(a1, v1);
}

uint64_t sub_2271BC47C(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_226E93028;

  return sub_2270517F8(a1, v1);
}

uint64_t sub_2271BC514(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_226E93028;

  return sub_2270517F8(a1, v1);
}

uint64_t sub_2271BC5AC(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_226E93028;

  return sub_227051A3C(a1, v1);
}

uint64_t sub_2271BC644(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_226E93028;

  return sub_227051B44(a1, v1);
}

uint64_t sub_2271BC700(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_226E93028;

  return sub_227052508(a1, v1);
}

unint64_t sub_2271BC888()
{
  result = qword_28139D208;
  if (!qword_28139D208)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7BBC70, &qword_2276765B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28139D208);
  }

  return result;
}

unint64_t sub_2271BC904()
{
  result = qword_28139D200;
  if (!qword_28139D200)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7BBC70, &qword_2276765B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28139D200);
  }

  return result;
}

uint64_t sub_2271BC980(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2271BC9E8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_2271BCA88(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_226E93028;

  return sub_22715ADD0(a1, v1);
}

uint64_t sub_2271BCB28(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_226E93028;

  return sub_226F21850(a1, v4, v5);
}

void *sub_2271BCBE4(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = type metadata accessor for ScoreDataStore();
  v21[3] = v8;
  v21[4] = &off_283A9F600;
  v21[0] = a2;
  v20[3] = type metadata accessor for ScoreServer(0);
  v20[4] = &protocol witness table for ScoreServer;
  v20[0] = a3;
  type metadata accessor for ScoreSystem();
  v9 = swift_allocObject();
  v10 = __swift_mutable_project_boxed_opaque_existential_1(v21, v8);
  v11 = MEMORY[0x28223BE20](v10);
  v13 = (v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v14 + 16))(v13, v11);
  v15 = *v13;
  v19[3] = v8;
  v19[4] = &off_283A9F600;
  v19[0] = v15;
  sub_226E91B50(a1, (v9 + 2));
  sub_226E91B50(v19, (v9 + 7));
  sub_226E91B50(v20, (v9 + 12));
  v16 = MEMORY[0x277D4F9B0];
  v9[17] = a4;
  v9[18] = v16;
  sub_227669B50();
  swift_allocObject();
  swift_retain_n();
  v9[19] = sub_227669B40();
  swift_allocObject();
  swift_weakInit();
  sub_227118F6C();
  sub_2276699E0();

  __swift_destroy_boxed_opaque_existential_0(a1);
  __swift_destroy_boxed_opaque_existential_0(v18);
  __swift_destroy_boxed_opaque_existential_0(v20);
  __swift_destroy_boxed_opaque_existential_0(v19);
  __swift_destroy_boxed_opaque_existential_0(v21);
  return v9;
}

uint64_t sub_2271BCE44(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v8 = type metadata accessor for ServiceSubscriptionProviderBroker(0);
  v24[3] = v8;
  v24[4] = &off_283ACB2B8;
  v24[0] = a1;
  type metadata accessor for ServiceSubscriptionSystem();
  v9 = swift_allocObject();
  v10 = __swift_mutable_project_boxed_opaque_existential_1(v24, v8);
  v11 = MEMORY[0x28223BE20](v10);
  v13 = (&v22[-1] - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v14 + 16))(v13, v11);
  v15 = *v13;
  v23[3] = v8;
  v23[4] = &off_283ACB2B8;
  v23[0] = v15;
  sub_226E91B50(v23, v9 + 40);
  v16 = MEMORY[0x277D4F9B0];
  *(v9 + 16) = a2;
  *(v9 + 24) = v16;
  sub_227669B50();
  swift_allocObject();
  swift_retain_n();
  v17 = sub_227669B40();
  v18 = MEMORY[0x277D4F9D0];
  *(v9 + 80) = v17;
  *(v9 + 88) = a3;
  v19 = MEMORY[0x277D4F9D8];
  *(v9 + 96) = v18;
  *(v9 + 104) = v19;
  *(v9 + 32) = a4;
  swift_allocObject();
  swift_weakInit();
  sub_22766A8E0();
  sub_226FFDCDC();

  sub_227669A10();

  __swift_destroy_boxed_opaque_existential_0(v22);

  swift_allocObject();
  swift_weakInit();
  sub_227119014();

  sub_227669A10();

  __swift_destroy_boxed_opaque_existential_0(v22);

  sub_22766A040();
  swift_allocObject();
  swift_weakInit();

  sub_2276699F0();

  __swift_destroy_boxed_opaque_existential_0(v22);
  __swift_destroy_boxed_opaque_existential_0(v23);
  __swift_destroy_boxed_opaque_existential_0(v24);
  return v9;
}

uint64_t sub_2271BD1A0()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_226E93028;

  return sub_227094670(v0);
}

uint64_t sub_2271BD230(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_226E93028;

  return sub_227094E88(a1, v1);
}

uint64_t sub_2271BD2D0(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_226E93028;

  return sub_2272CAED4(a1, v1);
}

uint64_t sub_2271BD368(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_226E93028;

  return sub_2272CBD60(a1, v1);
}

unint64_t sub_2271BD400()
{
  result = qword_2813A0B08[0];
  if (!qword_2813A0B08[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2813A0B08);
  }

  return result;
}

uint64_t sub_2271BD464(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_226E93028;

  return sub_2271E6674(a1, v1);
}

uint64_t sub_2271BD50C(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_226E93028;

  return sub_2271E7C60(a1, v1);
}

uint64_t sub_2271BD5A4(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_226E93028;

  return sub_2271E8658(a1, v1);
}

void *sub_2271BD63C(uint64_t a1, uint64_t a2, void *a3)
{
  v9[3] = type metadata accessor for DeviceRegistry();
  v9[4] = &off_283AB4DB8;
  v9[0] = a2;
  v6 = MEMORY[0x277D84F90];
  a3[10] = MEMORY[0x277D84F90];
  a3[11] = v6;
  sub_2276696C0();
  swift_allocObject();
  a3[2] = sub_2276696B0();
  a3[3] = a1;
  sub_226E91B50(v9, (a3 + 4));
  sub_227669B50();
  swift_allocObject();
  swift_retain_n();
  a3[9] = sub_227669B40();
  sub_227669B90();
  swift_allocObject();
  swift_weakInit();
  sub_22766A8D0();

  __swift_destroy_boxed_opaque_existential_0(v8);
  __swift_destroy_boxed_opaque_existential_0(v9);
  return a3;
}

uint64_t sub_2271BD838(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2271BD8A0(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_226E93028;

  return sub_2271AACB8(a1, v1);
}

uint64_t sub_2271BD940(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BBCF0, &qword_22767BE10);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_2271BD9CC(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_226E93028;

  return sub_2271AB080(a1, v1);
}

uint64_t sub_2271BDB10()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    return v1();
  }

  return result;
}

uint64_t type metadata accessor for Daemon(uint64_t a1)
{
  result = qword_28139D390;
  if (!qword_28139D390)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2271BDC14(uint64_t a1)
{
  result = sub_227669AC0();
  if (v2 <= 0x3F)
  {
    result = sub_22766AAB0();
    if (v3 <= 0x3F)
    {
      result = sub_22766ABA0();
      if (v4 <= 0x3F)
      {
        result = type metadata accessor for RestrictionsProvider(319);
        if (v5 <= 0x3F)
        {
          result = sub_22766AD60();
          if (v6 <= 0x3F)
          {
            return swift_updateClassMetadata2();
          }
        }
      }
    }
  }

  return result;
}

void sub_2271BE058()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_226E93028;

  JUMPOUT(0x2271AD8E4);
}

void sub_2271BE16C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_226E93028;

  JUMPOUT(0x2271ACDC8);
}

void sub_2271BE280()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_226E93028;

  JUMPOUT(0x2271B00D0);
}

void sub_2271BE394()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_226E93028;

  JUMPOUT(0x2271B2B48);
}

void sub_2271BE4A8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_226E93028;

  JUMPOUT(0x2271B24BCLL);
}

void sub_2271BE5BC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_226E93028;

  JUMPOUT(0x2271AE754);
}

void sub_2271BE6D0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_226E93028;

  JUMPOUT(0x2271B1CE0);
}

void sub_2271BE7E4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_226E93028;

  JUMPOUT(0x2271AE754);
}

void sub_2271BE8F8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_226E93028;

  JUMPOUT(0x2271B08ACLL);
}

void sub_2271BEA0C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_226E93028;

  JUMPOUT(0x2271B1864);
}

void sub_2271BEB20()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_226E93028;

  JUMPOUT(0x2271B1088);
}

void sub_2271BEC34()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_226E93028;

  JUMPOUT(0x2271B3324);
}

void sub_2271BED48()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_226E93028;

  JUMPOUT(0x2271AF118);
}

void sub_2271BEE5C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_226E93028;

  JUMPOUT(0x2271AE754);
}

void sub_2271BEF70()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_226E92F34;

  JUMPOUT(0x2271ABF60);
}

void sub_2271BF084()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_226E93028;

  JUMPOUT(0x2271ADF78);
}

void sub_2271BF198()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_226E93028;

  JUMPOUT(0x2271AE9F0);
}

void sub_2271BF2AC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_226E93028;

  JUMPOUT(0x2271AD454);
}

void sub_2271BF3C0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_226E93028;

  JUMPOUT(0x2271AE754);
}

void sub_2271BF4D4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_226E93028;

  JUMPOUT(0x2271AF8F4);
}

void sub_2271BF5E8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_226E93028;

  JUMPOUT(0x2271AEE7CLL);
}

void sub_2271BF6FC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_226E93028;

  JUMPOUT(0x2271AE754);
}

void sub_2271BF810()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_226E93028;

  JUMPOUT(0x2271AC73CLL);
}

uint64_t sub_2271BF94C(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_226E92F34;

  return sub_226F73D24(a1, v1);
}

uint64_t sub_2271BF9E4(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_226E93028;

  return sub_2271DCEB4(a1, v1);
}

uint64_t objectdestroy_248Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 104, 7);
}

void sub_2271BFB2C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_226E93028;

  JUMPOUT(0x2271B3B00);
}

uint64_t sub_2271BFC90(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_2271BFCE8()
{
  result = qword_28139E960;
  if (!qword_28139E960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28139E960);
  }

  return result;
}

uint64_t sub_2271BFD64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[16] = a2;
  v3[17] = a3;
  v3[15] = a1;
  v3[18] = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8E28, &unk_227672340) - 8);
  v3[19] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC078, &unk_22767C450);
  v3[20] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8E20, &qword_22767C3B0);
  v3[21] = v4;
  v3[22] = *(v4 - 8);
  v3[23] = swift_task_alloc();
  v3[24] = swift_task_alloc();
  v3[25] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BC8E0, &qword_2276784C0);
  v3[26] = swift_task_alloc();
  v3[27] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC080, &qword_22767C460);
  v3[28] = v5;
  v3[29] = *(v5 - 8);
  v3[30] = swift_task_alloc();
  v6 = sub_227665680();
  v3[31] = v6;
  v7 = *(v6 - 8);
  v3[32] = v7;
  v3[33] = *(v7 + 64);
  v3[34] = swift_task_alloc();
  v3[35] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2271C0004, 0, 0);
}

uint64_t sub_2271C0004()
{
  v1 = *(v0 + 128);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = *(v0 + 256);
    v36 = **(v0 + 120);
    v4 = *(v3 + 16);
    v3 += 16;
    v35 = v4;
    v5 = *(v3 + 64);
    v6 = v1 + ((v5 + 32) & ~v5);
    v34 = (v5 + 72) & ~v5;
    v32 = (v3 - 8);
    v33 = (v3 + 16);
    v31 = *(v3 + 56);
    do
    {
      v39 = v2;
      v11 = *(v0 + 272);
      v12 = *(v0 + 280);
      v13 = *(v0 + 248);
      v14 = *(v0 + 216);
      v37 = *(v0 + 208);
      v15 = *(v0 + 136);
      v38 = v6;
      v35(v12);
      v16 = sub_22766C4B0();
      v17 = *(v16 - 8);
      (*(v17 + 56))(v14, 1, 1, v16);
      sub_226E91B50(v15, v0 + 16);
      (v35)(v11, v12, v13);
      v18 = swift_allocObject();
      *(v18 + 16) = 0;
      v19 = (v18 + 16);
      *(v18 + 24) = 0;
      sub_226E92AB8((v0 + 16), v18 + 32);
      (*v33)(v18 + v34, v11, v13);
      sub_226E93170(v14, v37, &unk_27D7BC8E0, &qword_2276784C0);
      v20 = (*(v17 + 48))(v37, 1, v16);
      v21 = *(v0 + 208);
      if (v20 == 1)
      {
        sub_226E97D1C(*(v0 + 208), &unk_27D7BC8E0, &qword_2276784C0);
        if (*v19)
        {
          goto LABEL_9;
        }
      }

      else
      {
        sub_22766C4A0();
        (*(v17 + 8))(v21, v16);
        if (*v19)
        {
LABEL_9:
          swift_getObjectType();
          swift_unknownObjectRetain();
          v22 = sub_22766C420();
          v23 = v24;
          swift_unknownObjectRelease();
          goto LABEL_10;
        }
      }

      v22 = 0;
      v23 = 0;
LABEL_10:
      v25 = swift_allocObject();
      *(v25 + 16) = &unk_22767C468;
      *(v25 + 24) = v18;

      if (v23 | v22)
      {
        v7 = v0 + 56;
        *(v0 + 56) = 0;
        *(v0 + 64) = 0;
        *(v0 + 72) = v22;
        *(v0 + 80) = v23;
      }

      else
      {
        v7 = 0;
      }

      v8 = *(v0 + 280);
      v9 = *(v0 + 248);
      v10 = *(v0 + 216);
      *(v0 + 88) = 1;
      *(v0 + 96) = v7;
      *(v0 + 104) = v36;
      swift_task_create();

      sub_226E97D1C(v10, &unk_27D7BC8E0, &qword_2276784C0);
      (*v32)(v8, v9);
      v6 = v38 + v31;
      v2 = v39 - 1;
    }

    while (v39 != 1);
  }

  sub_22766C470();
  *(v0 + 288) = MEMORY[0x277D84F98];
  v26 = sub_2271C477C();
  v27 = swift_task_alloc();
  *(v0 + 296) = v27;
  *v27 = v0;
  v27[1] = sub_2271C042C;
  v28 = *(v0 + 224);
  v29 = *(v0 + 160);

  return MEMORY[0x282200308](v29, v28, v26);
}

uint64_t sub_2271C042C()
{
  v2 = *v1;

  if (v0)
  {
    v4 = v2[29];
    v3 = v2[30];
    v5 = v2[28];

    (*(v4 + 8))(v3, v5);

    v6 = nullsub_1;
  }

  else
  {
    v6 = sub_2271C0580;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_2271C0580()
{
  v1 = v0[21];
  v2 = v0[20];
  if ((*(v0[22] + 48))(v2, 1, v1) == 1)
  {
    (*(v0[29] + 8))(v0[30], v0[28]);
    sub_226E97D1C(v2, &qword_27D7BC078, &unk_22767C450);

    v3 = v0[1];
    v4 = v0[36];

    return v3(v4);
  }

  v6 = v0[36];
  v8 = v0[24];
  v7 = v0[25];
  v9 = v0[23];
  v10 = v0[19];
  sub_226E95D18(v2, v7, &qword_27D7B8E20, &qword_22767C3B0);
  sub_226E93170(v7, v8, &qword_27D7B8E20, &qword_22767C3B0);
  sub_226E93170(v7, v9, &qword_27D7B8E20, &qword_22767C3B0);
  sub_226E95D18(v9 + *(v1 + 48), v10, &qword_27D7B8E28, &unk_227672340);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v0[14] = v6;
  v12 = sub_226F3A8A4(v8);
  v14 = *(v6 + 16);
  v15 = (v13 & 1) == 0;
  v16 = __OFADD__(v14, v15);
  v17 = v14 + v15;
  if (v16)
  {
    __break(1u);
    goto LABEL_15;
  }

  LOBYTE(v1) = v13;
  if (*(v0[36] + 24) >= v17)
  {
    if (isUniquelyReferenced_nonNull_native)
    {
LABEL_12:
      v20 = v0[14];
      if (v1)
      {
LABEL_13:
        v21 = v0[25];
        sub_2271C47E0(v0[19], v20[7] + *(v0[18] + 72) * v12);
        sub_226E97D1C(v21, &qword_27D7B8E20, &qword_22767C3B0);
        goto LABEL_18;
      }

LABEL_16:
      v23 = v0[31];
      v24 = v0[32];
      v25 = v0[24];
      v26 = v0[25];
      v28 = v0[18];
      v27 = v0[19];
      v20[(v12 >> 6) + 8] |= 1 << v12;
      v29 = v12;
      (*(v24 + 16))(v20[6] + *(v24 + 72) * v12, v25, v23);
      sub_226E95D18(v27, v20[7] + *(v28 + 72) * v29, &qword_27D7B8E28, &unk_227672340);
      v30 = sub_226E97D1C(v26, &qword_27D7B8E20, &qword_22767C3B0);
      v33 = v20[2];
      v16 = __OFADD__(v33, 1);
      v34 = v33 + 1;
      if (v16)
      {
        __break(1u);
        return MEMORY[0x282200308](v30, v31, v32);
      }

      v20[2] = v34;
LABEL_18:
      v35 = v0[31];
      v37 = v0[23];
      v36 = v0[24];
      v38 = *(v0[21] + 48);
      v39 = *(v0[32] + 8);
      v39(v36, v35);
      v39(v37, v35);
      sub_226E97D1C(v36 + v38, &qword_27D7B8E28, &unk_227672340);
      v0[36] = v20;
      v40 = sub_2271C477C();
      v41 = swift_task_alloc();
      v0[37] = v41;
      *v41 = v0;
      v41[1] = sub_2271C042C;
      v31 = v0[28];
      v30 = v0[20];
      v32 = v40;

      return MEMORY[0x282200308](v30, v31, v32);
    }

LABEL_15:
    v22 = v12;
    sub_226FF0A94();
    v12 = v22;
    v20 = v0[14];
    if (v1)
    {
      goto LABEL_13;
    }

    goto LABEL_16;
  }

  v18 = v0[24];
  sub_226FE33D8(v17, isUniquelyReferenced_nonNull_native);
  v12 = sub_226F3A8A4(v18);
  if ((v1 & 1) == (v19 & 1))
  {
    goto LABEL_12;
  }

  return sub_22766D220();
}

uint64_t RestrictionsProvider.init(profileRegistry:restrictionZones:)@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_227669A90();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v11[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  type metadata accessor for RestrictionsProvider(0);
  (*(v7 + 104))(v9, *MEMORY[0x277D4EF00], v6);
  v11[15] = 2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BBBB8, &qword_22767C380);
  sub_2271C0BA8(&qword_28139D2C0, MEMORY[0x277D4F9F8], MEMORY[0x277D4FA50]);
  sub_2271C0BA8(&qword_28139D2B8, MEMORY[0x277D839C8], MEMORY[0x277D84F50]);
  sub_227669760();
  result = sub_226E92AB8(a1, a3);
  *(a3 + 40) = a2;
  return result;
}

uint64_t type metadata accessor for RestrictionsProvider(uint64_t a1)
{
  result = qword_2813A0B98;
  if (!qword_2813A0B98)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2271C0BA8(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27D7BBBB8, &qword_22767C380);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2271C0C14(char a1)
{
  *(v2 + 24) = v1;
  *(v2 + 113) = a1;
  v3 = sub_22766B390();
  *(v2 + 32) = v3;
  *(v2 + 40) = *(v3 - 8);
  *(v2 + 48) = swift_task_alloc();
  v4 = sub_227665680();
  *(v2 + 56) = v4;
  *(v2 + 64) = *(v4 - 8);
  *(v2 + 72) = swift_task_alloc();
  *(v2 + 80) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2271C0D40, 0, 0);
}

uint64_t sub_2271C0D40()
{
  v1 = *(v0 + 24);
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_0(v1, v2);
  v6 = (*(v3 + 8) + **(v3 + 8));
  v4 = swift_task_alloc();
  *(v0 + 88) = v4;
  *v4 = v0;
  v4[1] = sub_2271C0E64;

  return v6(v2, v3);
}

uint64_t sub_2271C0E64(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 96) = a1;
  *(v3 + 104) = v1;

  if (v1)
  {
    v4 = sub_2271C12C0;
  }

  else
  {
    v4 = sub_2271C0F78;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

void sub_2271C0F78()
{
  v1 = 0;
  v2 = v0[8];
  v3 = v0[12];
  v6 = *(v3 + 56);
  v5 = v3 + 56;
  v4 = v6;
  v36 = v0[12];
  v7 = -1;
  v8 = -1 << *(v36 + 32);
  if (-v8 < 64)
  {
    v7 = ~(-1 << -v8);
  }

  v9 = v7 & v4;
  v10 = (63 - v8) >> 6;
  v39 = v0[8];
  v32 = (v2 + 32);
  v33 = (v2 + 8);
  v34 = MEMORY[0x277D84F90];
  v35 = v10;
  if ((v7 & v4) == 0)
  {
    goto LABEL_6;
  }

  do
  {
LABEL_10:
    while (1)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v38 = *(v39 + 72);
      (*(v39 + 16))(v0[10], *(v36 + 48) + v38 * (v14 | (v1 << 6)), v0[7]);
      v15 = sub_227665650();
      v16 = sub_226F4920C(v15);

      v17 = *(v16 + 16);
      if (v17)
      {
        break;
      }

LABEL_5:
      v0 = v37;
      v11 = v37[10];
      v12 = v37[7];

      (*v33)(v11, v12);
      v10 = v35;
      if (!v9)
      {
        goto LABEL_6;
      }
    }

    v18 = 32;
    while (1)
    {
      if (*(v16 + v18) == 2)
      {
        goto LABEL_12;
      }

      v19 = sub_227665A80();
      v21 = v20;
      if (v19 == sub_227665A80() && v21 == v22)
      {
        break;
      }

      v24 = sub_22766D190();

      if (v24)
      {
        goto LABEL_21;
      }

LABEL_12:
      ++v18;
      if (!--v17)
      {
        goto LABEL_5;
      }
    }

LABEL_21:

    v0 = v37;
    v25 = *v32;
    (*v32)(v37[9], v37[10], v37[7]);
    v26 = v34;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_226F201C8(0, *(v34 + 16) + 1, 1);
      v26 = v34;
    }

    v28 = *(v26 + 16);
    v27 = *(v26 + 24);
    if (v28 >= v27 >> 1)
    {
      sub_226F201C8((v27 > 1), v28 + 1, 1);
      v26 = v34;
    }

    v29 = v37[9];
    v30 = v37[7];
    *(v26 + 16) = v28 + 1;
    v34 = v26;
    v25(v26 + ((*(v39 + 80) + 32) & ~*(v39 + 80)) + v28 * v38, v29, v30);
    v10 = v35;
  }

  while (v9);
LABEL_6:
  while (2)
  {
    v13 = v1 + 1;
    if (__OFADD__(v1, 1))
    {
      __break(1u);
    }

    else
    {
      if (v13 < v10)
      {
        v9 = *(v5 + 8 * v13);
        ++v1;
        if (!v9)
        {
          continue;
        }

        v1 = v13;
        goto LABEL_10;
      }

      v31 = v0[1];

      v31(v34);
    }

    break;
  }
}

uint64_t sub_2271C12C0(uint64_t a1)
{
  v27 = v1;
  v2 = *(v1 + 104);
  sub_22766A730();
  v3 = v2;
  v4 = sub_22766B380();
  v5 = sub_22766C890();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v1 + 104);
    v7 = *(v1 + 40);
    v25 = *(v1 + 48);
    v8 = *(v1 + 32);
    v9 = *(v1 + 113);
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v26 = v11;
    *v10 = 136446466;
    *(v1 + 112) = v9 & 1;
    sub_226FF66F0();
    v12 = sub_22766D140();
    v14 = sub_226E97AE8(v12, v13, &v26);

    *(v10 + 4) = v14;
    *(v10 + 12) = 2082;
    *(v1 + 16) = v6;
    v15 = v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA3C0, &qword_2276709C0);
    v16 = sub_22766C060();
    v18 = sub_226E97AE8(v16, v17, &v26);

    *(v10 + 14) = v18;
    _os_log_impl(&dword_226E8E000, v4, v5, "Failed to fetch profiles for %{public}s: %{public}s", v10, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AA9A450](v11, -1, -1);
    MEMORY[0x22AA9A450](v10, -1, -1);

    (*(v7 + 8))(v25, v8);
  }

  else
  {
    v20 = *(v1 + 40);
    v19 = *(v1 + 48);
    v21 = *(v1 + 32);

    (*(v20 + 8))(v19, v21);
  }

  v22 = *(v1 + 8);
  v23 = MEMORY[0x277D84F90];

  return v22(v23);
}

uint64_t RestrictionsProvider.effectiveRestriction(for:)(uint64_t a1, char a2)
{
  *(v3 + 365) = a2;
  *(v3 + 112) = a1;
  *(v3 + 120) = v2;
  *(v3 + 128) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC048, &qword_22767C390);
  *(v3 + 136) = swift_task_alloc();
  *(v3 + 144) = swift_task_alloc();
  *(v3 + 152) = swift_task_alloc();
  *(v3 + 160) = swift_task_alloc();
  v4 = sub_227665680();
  *(v3 + 168) = v4;
  *(v3 + 176) = *(v4 - 8);
  *(v3 + 184) = swift_task_alloc();
  *(v3 + 192) = swift_task_alloc();
  v5 = sub_2276637B0();
  *(v3 + 200) = v5;
  *(v3 + 208) = *(v5 - 8);
  *(v3 + 216) = swift_task_alloc();
  *(v3 + 224) = swift_task_alloc();
  *(v3 + 232) = swift_task_alloc();
  v6 = sub_22766B390();
  *(v3 + 240) = v6;
  *(v3 + 248) = *(v6 - 8);
  *(v3 + 256) = swift_task_alloc();
  *(v3 + 264) = swift_task_alloc();
  *(v3 + 272) = swift_task_alloc();
  *(v3 + 280) = swift_task_alloc();
  *(v3 + 288) = swift_task_alloc();
  *(v3 + 296) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2271C1754, 0, 0);
}

uint64_t sub_2271C1754()
{
  v33 = v0;
  type metadata accessor for RestrictionsProvider(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC050, &unk_22767C398);
  sub_227669730();
  v1 = *(v0 + 360);
  if (v1 == 2)
  {
    v2 = *(*(v0 + 120) + 40);
    if (*(v2 + 16))
    {
      v3 = *(v0 + 365);
      v4 = sub_226F3B360(v3 & 1);
      if (v5)
      {
        sub_226E91B50(*(v2 + 56) + 40 * v4, v0 + 56);
        sub_226E92AB8((v0 + 56), v0 + 16);
        v6 = swift_task_alloc();
        *(v0 + 304) = v6;
        *v6 = v0;
        v6[1] = sub_2271C1C00;

        return sub_2271C0C14(v3 & 1);
      }
    }

    sub_22766A730();
    v18 = sub_22766B380();
    v19 = sub_22766C8B0();
    v20 = os_log_type_enabled(v18, v19);
    v22 = *(v0 + 248);
    v21 = *(v0 + 256);
    v23 = *(v0 + 240);
    if (v20)
    {
      v24 = *(v0 + 365);
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v32 = v26;
      *v25 = 136446210;
      *(v0 + 361) = v24 & 1;
      sub_226FF66F0();
      v27 = sub_22766D140();
      v29 = sub_226E97AE8(v27, v28, &v32);

      *(v25 + 4) = v29;
      _os_log_impl(&dword_226E8E000, v18, v19, "No restrictions provider found for zone %{public}s, using unrestricted", v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v26);
      MEMORY[0x22AA9A450](v26, -1, -1);
      MEMORY[0x22AA9A450](v25, -1, -1);
    }

    (*(v22 + 8))(v21, v23);
    v14 = *(v0 + 112);
    goto LABEL_14;
  }

  sub_22766A730();
  v8 = sub_22766B380();
  v9 = sub_22766C8B0();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 67109120;
    *(v10 + 4) = v1 & 1;
    _os_log_impl(&dword_226E8E000, v8, v9, "Default set to %{BOOL}d for faking daemon restriction", v10, 8u);
    MEMORY[0x22AA9A450](v10, -1, -1);
  }

  v11 = *(v0 + 296);
  v12 = *(v0 + 240);
  v13 = *(v0 + 248);

  (*(v13 + 8))(v11, v12);
  v14 = *(v0 + 112);
  if ((v1 & 1) == 0)
  {
LABEL_14:
    v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8A10, &qword_227671620);
    (*(*(v30 - 8) + 56))(v14, 1, 1, v30);
    goto LABEL_15;
  }

  v15 = *MEMORY[0x277D515F8];
  v16 = sub_227665360();
  (*(*(v16 - 8) + 104))(v14, v15, v16);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8A10, &qword_227671620);
  (*(*(v17 - 8) + 56))(v14, 0, 1, v17);
LABEL_15:

  v31 = *(v0 + 8);

  return v31();
}