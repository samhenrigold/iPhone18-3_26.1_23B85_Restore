uint64_t sub_2280143F4(uint64_t a1)
{
  v2 = sub_2281373AC();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_227FCA9B0(a1, &v9, &qword_27D81E7C8, &qword_22813BCE8);
  if (AssociatedTypeWitness)
  {
    sub_227FCF218(&v9, v12);
    __swift_project_boxed_opaque_existential_1(v12, v12[3]);
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    __swift_allocate_boxed_opaque_existential_1(&v9);
    sub_2281373BC();
    sub_22813733C();
    v6 = sub_22813739C();
    (*(v3 + 8))(v5, v2);
    __swift_destroy_boxed_opaque_existential_1Tm_3(&v9);
    __swift_destroy_boxed_opaque_existential_1Tm_3(v12);
    return v6;
  }

  else
  {
    sub_227FCAC58(&v9, &qword_27D81E7C8, &qword_22813BCE8);
    return 0;
  }
}

uint64_t sub_2280147C4(uint64_t a1)
{
  v2 = sub_2281374CC();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v110 = &v109 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v7 = &v109 - v6;
  v115 = sub_22813742C();
  v114 = *(v115 - 8);
  v8 = MEMORY[0x28223BE20](v115);
  v10 = &v109 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v109 - v11;
  v112 = objc_opt_self();

  if (qword_2813C4620 != -1)
  {
    swift_once();
  }

  v113 = v10;
  v111 = v2;
  if (byte_2813C4629 == 1)
  {
    if (qword_27D81E2A0 != -1)
    {
      swift_once();
    }

    v13 = &off_27D81EDB0;
  }

  else
  {
    if (qword_2813C76F0 != -1)
    {
      swift_once();
    }

    v13 = &qword_2813C76F8;
  }

  v14 = *v13;
  sub_22813737C();
  swift_allocObject();
  v116 = v14;

  v15 = sub_22813736C();
  v16 = type metadata accessor for GMSModelInfo(0);
  v17 = (a1 + v16[5]);
  v19 = *v17;
  v18 = v17[1];
  v117 = v15;
  sub_22813735C();
  v109 = a1;
  sub_227FCA9B0(v127, v125, &qword_27D81E7A0, &qword_22813BCC0);
  if (v126)
  {
    sub_227FCA9B0(v125, v124, &qword_27D81E7A0, &qword_22813BCC0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E7A8, &qword_22813BCC8);
    v20 = v115;
    if (swift_dynamicCast())
    {
      (*(v114 + 32))(v113, v12, v20);
      sub_22813740C();
      v21 = v119;
      v22 = v16;
      if (v119)
      {
        v23 = v120;
        v24 = __swift_project_boxed_opaque_existential_1(v118, v119);
        *(&v122 + 1) = v21;
        v123 = *(v23 + 8);
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v121);
        (*(*(v21 - 8) + 16))(boxed_opaque_existential_1, v24, v21);
        __swift_destroy_boxed_opaque_existential_1Tm_3(v118);
      }

      else
      {
        sub_227FCAC58(v118, &qword_27D81E7C0, &qword_22813BCE0);
        v121 = 0u;
        v122 = 0u;
        v123 = 0;
      }

      v38 = v116;
      v39 = sub_228013ECC(&v121);
      sub_227FCAC58(&v121, &qword_27D81E7C8, &qword_22813BCE8);
      v40 = v16[13];
      v41 = v109;

      *(v41 + v40) = v39;
      v42 = v113;
      sub_22813740C();
      if (*(&v122 + 1))
      {
        __swift_project_boxed_opaque_existential_1(&v121, *(&v122 + 1));
        v43 = sub_22813738C();
        v45 = v44;
        __swift_destroy_boxed_opaque_existential_1Tm_3(&v121);

        *v17 = v43;
        v17[1] = v45;
      }

      else
      {
        sub_227FCAC58(&v121, &qword_27D81E7C0, &qword_22813BCE0);
      }

      sub_2281373EC();
      __swift_project_boxed_opaque_existential_1(&v121, *(&v122 + 1));
      v46 = sub_22813738C();
      v48 = v47;
      v49 = v109;
      v50 = (v109 + v22[7]);

      *v50 = v46;
      v50[1] = v48;
      __swift_destroy_boxed_opaque_existential_1Tm_3(&v121);
      sub_22813741C();
      __swift_project_boxed_opaque_existential_1(&v121, *(&v122 + 1));
      v51 = sub_22813738C();
      v53 = v52;
      v54 = (v49 + v22[6]);

      *v54 = v51;
      v54[1] = v53;
      __swift_destroy_boxed_opaque_existential_1Tm_3(&v121);
      sub_2281373FC();
      v55 = *(&v122 + 1);
      if (*(&v122 + 1))
      {
        __swift_project_boxed_opaque_existential_1(&v121, *(&v122 + 1));
        v55 = sub_22813738C();
        v57 = v56;
        __swift_destroy_boxed_opaque_existential_1Tm_3(&v121);
      }

      else
      {
        sub_227FCAC58(&v121, &qword_27D81E7D0, &unk_22813BCF0);
        v57 = 0;
      }

      v58 = (v49 + v22[8]);

      *v58 = v55;
      v58[1] = v57;
      v59 = *(v38 + 1888);
      v60 = *(v38 + 1896);
      v61 = *(v38 + 2208);

      if (qword_2813C4630 != -1)
      {
        swift_once();
      }

      v62 = byte_2813C4638;
      if (byte_2813C4638 == 1)
      {
        v60(&v121, v61);

        if ((v121 & 1) == 0)
        {
          goto LABEL_43;
        }
      }

      else
      {

        if (!v59)
        {
LABEL_43:
          v83 = *(v38 + 1928);
          v84 = *(v38 + 1936);
          v85 = *(v38 + 2208);

          if (v62)
          {
            v84(&v121, v85);

            if ((v121 & 1) == 0)
            {
LABEL_45:

              (*(v114 + 8))(v42, v115);
              sub_227FCAC58(v127, &qword_27D81E7A0, &qword_22813BCC0);
LABEL_54:
              __swift_destroy_boxed_opaque_existential_1Tm_3(v124);
              return sub_227FCAC58(v125, &qword_27D81E7A0, &qword_22813BCC0);
            }
          }

          else
          {

            if (!v83)
            {
              goto LABEL_45;
            }
          }

          sub_2281373EC();
          v86 = v119;
          v87 = v120;
          v88 = __swift_project_boxed_opaque_existential_1(v118, v119);
          *(&v122 + 1) = v86;
          v123 = *(v87 + 8);
          v89 = __swift_allocate_boxed_opaque_existential_1(&v121);
          (*(*(v86 - 8) + 16))(v89, v88, v86);
          v90 = sub_2280143F4(&v121);
          v92 = v91;
          sub_227FCAC58(&v121, &qword_27D81E7C8, &qword_22813BCE8);
          __swift_destroy_boxed_opaque_existential_1Tm_3(v118);
          v93 = (v49 + v22[11]);

          *v93 = v90;
          v93[1] = v92;
          sub_22813741C();
          v94 = v119;
          v95 = v120;
          v96 = __swift_project_boxed_opaque_existential_1(v118, v119);
          *(&v122 + 1) = v94;
          v123 = *(v95 + 8);
          v97 = __swift_allocate_boxed_opaque_existential_1(&v121);
          (*(*(v94 - 8) + 16))(v97, v96, v94);
          v98 = sub_2280143F4(&v121);
          v100 = v99;
          sub_227FCAC58(&v121, &qword_27D81E7C8, &qword_22813BCE8);
          __swift_destroy_boxed_opaque_existential_1Tm_3(v118);
          v101 = (v49 + v22[10]);

          *v101 = v98;
          v101[1] = v100;
          sub_2281373FC();
          v102 = v119;
          if (v119)
          {
            v103 = v120;
            v104 = __swift_project_boxed_opaque_existential_1(v118, v119);
            *(&v122 + 1) = v102;
            v123 = *(v103 + 8);
            v105 = __swift_allocate_boxed_opaque_existential_1(&v121);
            (*(*(v102 - 8) + 16))(v105, v104, v102);
            __swift_destroy_boxed_opaque_existential_1Tm_3(v118);
          }

          else
          {
            sub_227FCAC58(v118, &qword_27D81E7D0, &unk_22813BCF0);
            v121 = 0u;
            v122 = 0u;
            v123 = 0;
          }

          v76 = sub_2280143F4(&v121);
          v78 = v107;

          (*(v114 + 8))(v42, v115);
          sub_227FCAC58(v127, &qword_27D81E7A0, &qword_22813BCC0);
          sub_227FCAC58(&v121, &qword_27D81E7C8, &qword_22813BCE8);
          v106 = (v49 + v22[12]);
LABEL_53:

          *v106 = v76;
          v106[1] = v78;
          goto LABEL_54;
        }
      }

      sub_22813740C();
      v63 = v119;
      if (v119)
      {
        v64 = v120;
        v65 = __swift_project_boxed_opaque_existential_1(v118, v119);
        *(&v122 + 1) = v63;
        v123 = *(v64 + 8);
        v66 = __swift_allocate_boxed_opaque_existential_1(&v121);
        (*(*(v63 - 8) + 16))(v66, v65, v63);
        __swift_destroy_boxed_opaque_existential_1Tm_3(v118);
      }

      else
      {
        sub_227FCAC58(v118, &qword_27D81E7C0, &qword_22813BCE0);
        v121 = 0u;
        v122 = 0u;
        v123 = 0;
      }

      v79 = sub_2280143F4(&v121);
      v81 = v80;
      sub_227FCAC58(&v121, &qword_27D81E7C8, &qword_22813BCE8);
      v82 = (v49 + v22[9]);

      *v82 = v79;
      v82[1] = v81;
      goto LABEL_43;
    }

    v26 = v111;
    if (swift_dynamicCast())
    {
      v27 = v3;
      v28 = *(v3 + 32);
      v29 = v110;
      v28(v110, v7, v26);
      sub_2281374AC();
      if (*(&v122 + 1))
      {
        __swift_project_boxed_opaque_existential_1(&v121, *(&v122 + 1));
        v30 = sub_22813738C();
        v32 = v31;
        __swift_destroy_boxed_opaque_existential_1Tm_3(&v121);

        *v17 = v30;
        v17[1] = v32;
      }

      else
      {
        sub_227FCAC58(&v121, &qword_27D81E7B0, &qword_22813BCD0);
      }

      sub_2281373EC();
      __swift_project_boxed_opaque_existential_1(&v121, *(&v122 + 1));
      v67 = sub_22813738C();
      v69 = v68;
      v70 = v109;
      v71 = (v109 + v16[7]);

      *v71 = v67;
      v71[1] = v69;
      __swift_destroy_boxed_opaque_existential_1Tm_3(&v121);
      sub_22813741C();
      __swift_project_boxed_opaque_existential_1(&v121, *(&v122 + 1));
      v72 = sub_22813738C();
      v74 = v73;
      v75 = (v70 + v16[6]);

      *v75 = v72;
      v75[1] = v74;
      __swift_destroy_boxed_opaque_existential_1Tm_3(&v121);
      sub_22813749C();
      v76 = *(&v122 + 1);
      if (*(&v122 + 1))
      {
        __swift_project_boxed_opaque_existential_1(&v121, *(&v122 + 1));
        v76 = sub_22813738C();
        v78 = v77;

        (*(v27 + 8))(v29, v111);
        sub_227FCAC58(v127, &qword_27D81E7A0, &qword_22813BCC0);
        __swift_destroy_boxed_opaque_existential_1Tm_3(&v121);
      }

      else
      {

        (*(v27 + 8))(v29, v111);
        sub_227FCAC58(v127, &qword_27D81E7A0, &qword_22813BCC0);
        sub_227FCAC58(&v121, &qword_27D81E7B8, &qword_22813BCD8);
        v78 = 0;
      }

      v106 = (v70 + v16[8]);
      goto LABEL_53;
    }

    __swift_destroy_boxed_opaque_existential_1Tm_3(v124);
  }

  if (qword_2813C49A8 != -1)
  {
    swift_once();
  }

  v33 = sub_22813882C();
  __swift_project_value_buffer(v33, qword_2813C89F0);

  v34 = sub_22813880C();
  v35 = sub_2281396EC();

  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v124[0] = v37;
    *v36 = 136446210;
    *(v36 + 4) = sub_227FCC340(v19, v18, v124);
    _os_log_impl(&dword_227FC3000, v34, v35, "Unsupported bundle type for adapter identifier: %{public}s", v36, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm_3(v37);
    MEMORY[0x22AAB28A0](v37, -1, -1);
    MEMORY[0x22AAB28A0](v36, -1, -1);
  }

  sub_227FCAC58(v127, &qword_27D81E7A0, &qword_22813BCC0);
  return sub_227FCAC58(v125, &qword_27D81E7A0, &qword_22813BCC0);
}

uint64_t objectdestroy_16Tm(uint64_t *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 56) & ~v5;
  v7 = *(v4 + 64);
  __swift_destroy_boxed_opaque_existential_1Tm_3((v2 + 16));
  (*(v4 + 8))(v2 + v6, v3);

  return MEMORY[0x2821FE8E8](v2, v6 + v7, v5 | 7);
}

uint64_t __swift_deallocate_boxed_opaque_existential_1(uint64_t result)
{
  if ((*(*(*(result + 24) - 8) + 80) & 0x20000) != 0)
  {
    JUMPOUT(0x22AAB28A0);
  }

  return result;
}

uint64_t sub_228015A70(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_228015AE8()
{
  result = qword_2813C4728;
  if (!qword_2813C4728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813C4728);
  }

  return result;
}

unint64_t sub_228015B3C()
{
  result = qword_2813C4830[0];
  if (!qword_2813C4830[0])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D81E7D8, &qword_22813BD00);
    result = swift_getWitnessTable();
    atomic_store(result, qword_2813C4830);
  }

  return result;
}

unint64_t sub_228015BA0()
{
  v1 = *(type metadata accessor for ModelBundleIdentifier(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 56) & ~*(v1 + 80));

  return sub_228012AB8((v0 + 16), v2);
}

uint64_t sub_228015C8C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_228015CD4(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_228015D40(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t), uint64_t a4)
{
  v5 = a1;
  a3(a1, a2);

  v6 = sub_22813999C();
  if (v6)
  {
    v7 = v6;
  }

  else
  {
    v7 = swift_allocError();
    *v8 = v5;
    *(v8 + 8) = a2;
  }

  v9 = sub_228136E1C();

  v10 = [v9 localizedDescription];
  v11 = sub_2281392AC();

  return v11;
}

uint64_t sub_228015E2C(uint64_t a1)
{
  v2 = sub_227FE4858(MEMORY[0x277D84F90]);
  v3 = *(a1 + 64);
  *&v21[0] = v2;
  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & v3;
  v7 = (v4 + 63) >> 6;

  v8 = 0;
  if (v6)
  {
    while (1)
    {
      v9 = v8;
LABEL_8:
      v10 = __clz(__rbit64(v6)) | (v9 << 6);
      sub_227FC81CC(*(a1 + 48) + 48 * v10, &v22, &qword_27D81E610, &unk_22813B450);
      sub_227FCC40C(*(a1 + 56) + 32 * v10, &v24);
      sub_2280178D8(v21, &v22, a1, &qword_27D81E868, &qword_22813BFE8, &qword_27D81E610, &unk_22813B450);
      v6 &= v6 - 1;
      sub_22801E5D8(&v22, &qword_27D81E868, &qword_22813BFE8);
      v8 = v9;
      if (!v6)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      __break(1u);

      sub_22801E5D8(&v22, &qword_27D81E868, &qword_22813BFE8);

      __break(1u);
      return result;
    }

    if (v9 >= v7)
    {
      break;
    }

    v6 = *(a1 + 64 + 8 * v9);
    ++v8;
    if (v6)
    {
      goto LABEL_8;
    }
  }

  v11 = *&v21[0];
  if (*(*&v21[0] + 16) && (v12 = sub_22808C964(0x697263736544534ELL, 0xED00006E6F697470), (v13 & 1) != 0))
  {
    sub_227FCC40C(*(v11 + 56) + 32 * v12, &v22);
    sub_22801E5D8(&v22, &qword_27D81E830, &unk_22813C630);
  }

  else
  {
    v22 = 0u;
    v23 = 0u;
    sub_22801E5D8(&v22, &qword_27D81E830, &unk_22813C630);
    v14 = sub_2281392AC();
    v16 = sub_228017058(v14, v15, 3, a1);
    v18 = v17;

    if (v18)
    {
      *(&v23 + 1) = MEMORY[0x277D837D0];
      *&v22 = v16;
      *(&v22 + 1) = v18;
      sub_227FCF784(&v22, v21);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      sub_22801B474(v21, 0x697263736544534ELL, 0xED00006E6F697470, isUniquelyReferenced_nonNull_native);
    }
  }

  return v11;
}

uint64_t sub_2280160DC(uint64_t a1)
{
  v2 = sub_227FE4858(MEMORY[0x277D84F90]);
  v3 = *(a1 + 64);
  *&v21[0] = v2;
  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & v3;
  v7 = (v4 + 63) >> 6;

  v8 = 0;
  if (v6)
  {
    while (1)
    {
      v9 = v8;
LABEL_8:
      v10 = __clz(__rbit64(v6)) | (v9 << 6);
      sub_227FC81CC(*(a1 + 48) + 48 * v10, &v22, &qword_27D81E5E8, &unk_22813C660);
      sub_227FCC40C(*(a1 + 56) + 32 * v10, &v24);
      sub_2280178D8(v21, &v22, a1, &qword_27D81E828, &unk_22813BF90, &qword_27D81E5E8, &unk_22813C660);
      v6 &= v6 - 1;
      sub_22801E5D8(&v22, &qword_27D81E828, &unk_22813BF90);
      v8 = v9;
      if (!v6)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      __break(1u);

      sub_22801E5D8(&v22, &qword_27D81E828, &unk_22813BF90);

      __break(1u);
      return result;
    }

    if (v9 >= v7)
    {
      break;
    }

    v6 = *(a1 + 64 + 8 * v9);
    ++v8;
    if (v6)
    {
      goto LABEL_8;
    }
  }

  v11 = *&v21[0];
  if (*(*&v21[0] + 16) && (v12 = sub_22808C964(0x697263736544534ELL, 0xED00006E6F697470), (v13 & 1) != 0))
  {
    sub_227FCC40C(*(v11 + 56) + 32 * v12, &v22);
    sub_22801E5D8(&v22, &qword_27D81E830, &unk_22813C630);
  }

  else
  {
    v22 = 0u;
    v23 = 0u;
    sub_22801E5D8(&v22, &qword_27D81E830, &unk_22813C630);
    v14 = sub_2281392AC();
    v16 = sub_22801760C(v14, v15, 3, a1);
    v18 = v17;

    if (v18)
    {
      *(&v23 + 1) = MEMORY[0x277D837D0];
      *&v22 = v16;
      *(&v22 + 1) = v18;
      sub_227FCF784(&v22, v21);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      sub_22801B474(v21, 0x697263736544534ELL, 0xED00006E6F697470, isUniquelyReferenced_nonNull_native);
    }
  }

  return v11;
}

uint64_t sub_2280163B0()
{
  v1 = *v0;
  sub_228139AAC();
  MEMORY[0x22AAB2060](qword_22813C0E0[v1]);
  return sub_228139AEC();
}

uint64_t sub_228016438(uint64_t a1)
{
  v2 = *v1;
  sub_228139AAC();
  MEMORY[0x22AAB2060](qword_22813C0E0[v2]);
  return sub_228139AEC();
}

uint64_t sub_228016484@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_22801E118(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_2280164D0(char a1)
{
  switch(a1)
  {
    case 0:
      result = 0xD00000000000001ALL;
      break;
    case 1:
      result = 0xD000000000000028;
      break;
    case 2:
    case 3:
      result = 0xD000000000000025;
      break;
    case 5:
    case 6:
      result = 0xD000000000000043;
      break;
    case 7:
      result = 0xD000000000000027;
      break;
    case 8:
      result = 0xD000000000000013;
      break;
    case 9:
    case 10:
    case 11:
    case 12:
    case 13:
    case 14:
      v1 = sub_22801E100(a1);
      sub_22813988C();

      v2 = 0xE400000000000000;
      v3 = 2036625250;
      v4 = 0xE500000000000000;
      v5 = 0x656C746974;
      if (v1 != 5)
      {
        v5 = 0x6E776F6E6B6E75;
        v4 = 0xE700000000000000;
      }

      v6 = 0xE600000000000000;
      v7 = 0x7265646E6573;
      if (v1 != 3)
      {
        v7 = 0x7463656A627573;
        v6 = 0xE700000000000000;
      }

      if (v1 <= 4u)
      {
        v5 = v7;
        v4 = v6;
      }

      v8 = 0xE800000000000000;
      v9 = 0x73746E656D656C65;
      if (v1 != 1)
      {
        v9 = 0x6E65697069636572;
        v8 = 0xEA00000000007374;
      }

      if (v1)
      {
        v3 = v9;
        v2 = v8;
      }

      if (v1 <= 2u)
      {
        v10 = v3;
      }

      else
      {
        v10 = v5;
      }

      if (v1 <= 2u)
      {
        v11 = v2;
      }

      else
      {
        v11 = v4;
      }

      MEMORY[0x22AAB1970](v10, v11);

      result = 0xD00000000000002ALL;
      break;
    case 15:
      result = 0xD000000000000024;
      break;
    case 16:
      result = 0xD00000000000003DLL;
      break;
    case 17:
    case 50:
      result = 0xD00000000000004DLL;
      break;
    case 18:
    case 34:
      result = 0xD000000000000036;
      break;
    case 19:
      result = 0xD000000000000021;
      break;
    case 20:
      result = 0xD00000000000001BLL;
      break;
    case 21:
      result = 0xD00000000000001CLL;
      break;
    case 22:
    case 30:
      result = 0xD000000000000046;
      break;
    case 23:
      result = 0xD00000000000004ALL;
      break;
    case 24:
    case 51:
      result = 0xD00000000000003ELL;
      break;
    case 25:
    case 31:
    case 55:
      result = 0xD000000000000034;
      break;
    case 26:
      result = 0xD000000000000022;
      break;
    case 27:
      result = 0xD000000000000031;
      break;
    case 28:
      result = 0xD000000000000059;
      break;
    case 29:
      result = 0xD00000000000005FLL;
      break;
    case 32:
      result = 0xD00000000000002CLL;
      break;
    case 33:
      result = 0xD00000000000002DLL;
      break;
    case 35:
    case 48:
      result = 0xD000000000000037;
      break;
    case 38:
      result = 0xD00000000000005CLL;
      break;
    case 39:
    case 45:
      result = 0xD000000000000038;
      break;
    case 40:
      result = 0xD000000000000031;
      break;
    case 41:
      result = 0xD000000000000031;
      break;
    case 42:
    case 43:
      result = 0xD000000000000032;
      break;
    case 46:
      result = 0xD000000000000049;
      break;
    case 47:
    case 58:
      result = 0xD000000000000047;
      break;
    case 49:
      result = 0xD000000000000053;
      break;
    case 52:
      result = 0xD00000000000003FLL;
      break;
    case 53:
      result = 0xD00000000000002BLL;
      break;
    case 54:
      result = 0xD000000000000039;
      break;
    case 56:
      result = 0xD000000000000055;
      break;
    case 57:
      result = 0xD000000000000061;
      break;
    case 59:
      result = 0xD000000000000019;
      break;
    case 60:
      result = 0xD000000000000017;
      break;
    default:
      result = sub_2281399AC();
      __break(1u);
      break;
  }

  return result;
}

uint64_t sub_228016BB4(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  result = sub_22801E6A0(a1, a2);
  if (a3)
  {
    return a3(a1);
  }

  return result;
}

unint64_t sub_228016BF8()
{
  sub_22813988C();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E860, &unk_22813BFD8);
  v0 = sub_2281392EC();
  MEMORY[0x22AAB1970](v0);

  return 0xD00000000000001BLL;
}

unint64_t sub_228016CF4()
{
  result = qword_27D81E808;
  if (!qword_27D81E808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D81E808);
  }

  return result;
}

unint64_t sub_228016D48(uint64_t a1)
{
  *(a1 + 8) = sub_228016D78();
  result = sub_228016DCC();
  *(a1 + 24) = result;
  return result;
}

unint64_t sub_228016D78()
{
  result = qword_2813C83E0;
  if (!qword_2813C83E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813C83E0);
  }

  return result;
}

unint64_t sub_228016DCC()
{
  result = qword_27D81E810;
  if (!qword_27D81E810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D81E810);
  }

  return result;
}

unint64_t sub_228016E20(uint64_t a1)
{
  *(a1 + 8) = sub_228016E50();
  result = sub_228016EA4();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_228016E50()
{
  result = qword_27D81E818;
  if (!qword_27D81E818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D81E818);
  }

  return result;
}

unint64_t sub_228016EA4()
{
  result = qword_27D81E820;
  if (!qword_27D81E820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D81E820);
  }

  return result;
}

uint64_t sub_228016EF8(uint64_t a1)
{
  v2 = sub_228016D78();

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_228016F34(uint64_t a1)
{
  v2 = sub_228016D78();

  return MEMORY[0x28211F4A8](a1, v2);
}

uint64_t sub_228016F78(unsigned __int8 a1)
{
  v1 = a1;
  if (a1 <= 2u)
  {
    v4 = 0xE800000000000000;
    v5 = 0x73746E656D656C65;
    if (a1 != 1)
    {
      v5 = 0x6E65697069636572;
      v4 = 0xEA00000000007374;
    }

    if (a1)
    {
      v2 = v5;
    }

    else
    {
      v2 = 2036625250;
    }

    if (v1)
    {
      v3 = v4;
    }

    else
    {
      v3 = 0xE400000000000000;
    }
  }

  else if (a1 > 4u)
  {
    if (a1 == 5)
    {
      v3 = 0xE500000000000000;
      v2 = 0x656C746974;
    }

    else
    {
      v2 = 0;
      v3 = 0;
    }
  }

  else
  {
    if (a1 == 3)
    {
      v2 = 0x7265646E6573;
    }

    else
    {
      v2 = 0x7463656A627573;
    }

    if (v1 == 3)
    {
      v3 = 0xE600000000000000;
    }

    else
    {
      v3 = 0xE700000000000000;
    }
  }

  return sub_22805F434(v2, v3, 0xD00000000000002DLL, 0x80000002281455B0, 3);
}

uint64_t sub_228017058(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E530, &unk_22813BFF0);
  v15 = sub_22801E9FC(&qword_27D81E538, &qword_27D81E530, &unk_22813BFF0);
  v12[0] = a1;
  v12[1] = a2;
  v13 = a3;
  sub_22801E574(v12, v16);
  __swift_project_boxed_opaque_existential_1Tm(v12, v14);
  DynamicType = swift_getDynamicType();

  __swift_destroy_boxed_opaque_existential_0Tm(v12);
  v16[5] = DynamicType;
  if (*(a4 + 16) && (v9 = sub_22808CE90(v16), (v10 & 1) != 0))
  {
    sub_227FCC40C(*(a4 + 56) + 32 * v9, v17);
    sub_22801E5D8(v16, &qword_27D81E610, &unk_22813B450);
    sub_227FCF784(v17, &v18);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E838, &unk_22813BFA0);
    swift_dynamicCast();
    return v12[0];
  }

  else
  {
    sub_22801E5D8(v16, &qword_27D81E610, &unk_22813B450);
    return 0;
  }
}

uint64_t sub_2280171BC(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E890, qword_22813C060);
  v15 = sub_22801E9FC(&qword_27D81E898, &qword_27D81E890, qword_22813C060);
  v12[0] = a1;
  v12[1] = a2;
  v13 = a3;
  sub_22801E574(v12, v16);
  __swift_project_boxed_opaque_existential_1Tm(v12, v14);
  DynamicType = swift_getDynamicType();

  __swift_destroy_boxed_opaque_existential_0Tm(v12);
  v16[5] = DynamicType;
  if (*(a4 + 16) && (v9 = sub_22808CE90(v16), (v10 & 1) != 0))
  {
    sub_227FCC40C(*(a4 + 56) + 32 * v9, v17);
    sub_22801E5D8(v16, &qword_27D81E610, &unk_22813B450);
    sub_227FCF784(v17, &v18);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E838, &unk_22813BFA0);
    swift_dynamicCast();
    return v12[0];
  }

  else
  {
    sub_22801E5D8(v16, &qword_27D81E610, &unk_22813B450);
    return 0;
  }
}

uint64_t sub_228017324(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E880, &unk_22813C020);
  v15 = sub_22801E9FC(&qword_27D81E888, &qword_27D81E880, &unk_22813C020);
  v12[0] = a1;
  v12[1] = a2;
  v13 = a3;
  sub_22801E574(v12, v16);
  __swift_project_boxed_opaque_existential_1Tm(v12, v14);
  DynamicType = swift_getDynamicType();

  __swift_destroy_boxed_opaque_existential_0Tm(v12);
  v16[5] = DynamicType;
  if (*(a4 + 16) && (v9 = sub_22808CA18(v16), (v10 & 1) != 0))
  {
    sub_227FCC40C(*(a4 + 56) + 32 * v9, v17);
    sub_22801E5D8(v16, &qword_27D81E5E8, &unk_22813C660);
    sub_227FCF784(v17, &v18);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E838, &unk_22813BFA0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E848, &qword_22813BFB8);
    swift_dynamicCast();
    return v12[0];
  }

  else
  {
    sub_22801E5D8(v16, &qword_27D81E5E8, &unk_22813C660);
    return 0;
  }
}

uint64_t sub_228017498(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E5F0, &unk_22813B420);
  v15 = sub_22801E9FC(&qword_2813C6E50, &qword_27D81E5F0, &unk_22813B420);
  v12[0] = a1;
  v12[1] = a2;
  v13 = a3;
  sub_22801E574(v12, v16);
  __swift_project_boxed_opaque_existential_1Tm(v12, v14);
  DynamicType = swift_getDynamicType();

  __swift_destroy_boxed_opaque_existential_0Tm(v12);
  v16[5] = DynamicType;
  if (*(a4 + 16) && (v9 = sub_22808CA18(v16), (v10 & 1) != 0))
  {
    sub_227FCC40C(*(a4 + 56) + 32 * v9, v17);
    sub_22801E5D8(v16, &qword_27D81E5E8, &unk_22813C660);
    sub_227FCF784(v17, &v18);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E838, &unk_22813BFA0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E5A0, &qword_22813B310);
    swift_dynamicCast();
    return v12[0];
  }

  else
  {
    sub_22801E5D8(v16, &qword_27D81E5E8, &unk_22813C660);
    return 0;
  }
}

uint64_t sub_22801760C(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E5E0, &unk_22813B410);
  v15 = sub_22801E9FC(qword_2813C6E58, &qword_27D81E5E0, &unk_22813B410);
  v12[0] = a1;
  v12[1] = a2;
  v13 = a3;
  sub_22801E574(v12, v16);
  __swift_project_boxed_opaque_existential_1Tm(v12, v14);
  DynamicType = swift_getDynamicType();

  __swift_destroy_boxed_opaque_existential_0Tm(v12);
  v16[5] = DynamicType;
  if (*(a4 + 16) && (v9 = sub_22808CA18(v16), (v10 & 1) != 0))
  {
    sub_227FCC40C(*(a4 + 56) + 32 * v9, v17);
    sub_22801E5D8(v16, &qword_27D81E5E8, &unk_22813C660);
    sub_227FCF784(v17, &v18);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E838, &unk_22813BFA0);
    swift_dynamicCast();
    return v12[0];
  }

  else
  {
    sub_22801E5D8(v16, &qword_27D81E5E8, &unk_22813C660);
    return 0;
  }
}

uint64_t sub_228017770(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E870, &qword_22813C008);
  v15 = sub_22801E9FC(&qword_27D81E878, &qword_27D81E870, &qword_22813C008);
  v12[0] = a1;
  v12[1] = a2;
  v13 = a3;
  sub_22801E574(v12, v16);
  __swift_project_boxed_opaque_existential_1Tm(v12, v14);
  DynamicType = swift_getDynamicType();

  __swift_destroy_boxed_opaque_existential_0Tm(v12);
  v16[5] = DynamicType;
  if (*(a4 + 16) && (v9 = sub_22808CA18(v16), (v10 & 1) != 0))
  {
    sub_227FCC40C(*(a4 + 56) + 32 * v9, v17);
    sub_22801E5D8(v16, &qword_27D81E5E8, &unk_22813C660);
    sub_227FCF784(v17, &v18);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E838, &unk_22813BFA0);
    swift_dynamicCast();
    return v12[0];
  }

  else
  {
    sub_22801E5D8(v16, &qword_27D81E5E8, &unk_22813C660);
    return 0;
  }
}

uint64_t sub_2280178D8(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7)
{
  sub_227FC81CC(a2, &v62, a4, a5);
  sub_22801E574(&v62, &v59);
  sub_22801E5D8(&v62, a6, a7);
  v12 = *(&v60 + 1);
  v13 = v61;
  __swift_project_boxed_opaque_existential_1Tm(&v59, *(&v60 + 1));
  v14 = (*(v13 + 24))(v12, v13);
  v16 = v15;
  __swift_destroy_boxed_opaque_existential_0Tm(&v59);
  __swift_destroy_boxed_opaque_existential_0Tm(v64);
  sub_227FC81CC(a2, &v62, a4, a5);
  sub_227FCF784(v64, &v57);
  sub_22801E5D8(&v62, a6, a7);
  sub_227FC81CC(a2, &v62, a4, a5);
  sub_22801E574(&v62, &v59);
  sub_22801E5D8(&v62, a6, a7);
  v17 = *(&v60 + 1);
  v18 = v61;
  __swift_project_boxed_opaque_existential_1Tm(&v59, *(&v60 + 1));
  v19 = (*(v18 + 32))(v17, v18);
  __swift_destroy_boxed_opaque_existential_0Tm(&v59);
  __swift_destroy_boxed_opaque_existential_0Tm(v64);
  v20 = *a1;
  if (!*(*a1 + 16) || (v21 = sub_22808C964(v14, v16), (v22 & 1) == 0))
  {
    v62 = 0u;
    v63 = 0u;
    sub_22801E5D8(&v62, &qword_27D81E830, &unk_22813C630);
    sub_227FCC40C(&v57, v56);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E838, &unk_22813BFA0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E5A0, &qword_22813B310);
    if (swift_dynamicCast())
    {

      sub_227FCC40C(&v57, v55);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E850, &qword_22813BFC0);
      if ((swift_dynamicCast() & 1) == 0)
      {
        v61 = 0;
        v59 = 0u;
        v60 = 0u;
        sub_22801E5D8(&v59, &qword_27D81E858, &unk_22813BFC8);
        goto LABEL_16;
      }

      sub_22801E4F8(&v59, &v62);
      if (v19 == 3)
      {
        __swift_destroy_boxed_opaque_existential_0Tm(&v62);
LABEL_16:
        v36 = v58;
        v37 = __swift_project_boxed_opaque_existential_1Tm(&v57, v58);
        *(&v63 + 1) = v36;
        boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v62);
        (*(*(v36 - 8) + 16))(boxed_opaque_existential_0, v37, v36);
        sub_2280249EC(&v62, v14, v16);
LABEL_21:
        v39 = v56;
        goto LABEL_22;
      }

      sub_228018158(&v62, v14, v16, v19, &v59);
      sub_227FC81CC(&v59, v55, &qword_27D81E830, &unk_22813C630);
      sub_2280249EC(v55, v14, v16);
      sub_22801E5D8(&v59, &qword_27D81E830, &unk_22813C630);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E840, &qword_22813BFB0);
      if (swift_dynamicCast())
      {
        v33 = v58;
        v34 = __swift_project_boxed_opaque_existential_1Tm(&v57, v58);
        *(&v60 + 1) = v33;
        v35 = __swift_allocate_boxed_opaque_existential_0(&v59);
        (*(*(v33 - 8) + 16))(v35, v34, v33);
        sub_2280249EC(&v59, v14, v16);
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E848, &qword_22813BFB8);
        if (swift_dynamicCast())
        {

          goto LABEL_16;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E850, &qword_22813BFC0);
        if (swift_dynamicCast())
        {
          sub_22801E4F8(&v62, &v59);
          if (v19 == 3)
          {
            v42 = 1;
          }

          else
          {
            v42 = v19;
          }

          sub_228018158(&v59, v14, v16, v42, v55);
          sub_227FC81CC(v55, v54, &qword_27D81E830, &unk_22813C630);
          sub_2280249EC(v54, v14, v16);
          sub_22801E5D8(v55, &qword_27D81E830, &unk_22813C630);
          v40 = &v59;
          goto LABEL_20;
        }

        if (qword_2813C49A8 != -1)
        {
          swift_once();
        }

        v43 = sub_22813882C();
        __swift_project_value_buffer(v43, qword_2813C89F0);
        sub_227FCC40C(&v57, &v62);

        v44 = sub_22813880C();
        v45 = sub_2281396DC();

        if (os_log_type_enabled(v44, v45))
        {
          v46 = swift_slowAlloc();
          v47 = swift_slowAlloc();
          *&v59 = v47;
          *v46 = 136446466;
          __swift_project_boxed_opaque_existential_1Tm(&v62, *(&v63 + 1));
          swift_getDynamicType();
          v48 = sub_228139B8C();
          v50 = v49;
          __swift_destroy_boxed_opaque_existential_0Tm(&v62);
          v51 = sub_227FCC340(v48, v50, &v59);

          *(v46 + 4) = v51;
          *(v46 + 12) = 2082;
          v52 = sub_227FCC340(v14, v16, &v59);

          *(v46 + 14) = v52;
          _os_log_impl(&dword_227FC3000, v44, v45, "Dropping value of type %{public}s for key %{public}s when converting ErrorContext to userInfo dictionary.", v46, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x22AAB28A0](v47, -1, -1);
          MEMORY[0x22AAB28A0](v46, -1, -1);

          goto LABEL_21;
        }
      }
    }

    v40 = &v62;
LABEL_20:
    __swift_destroy_boxed_opaque_existential_0Tm(v40);
    goto LABEL_21;
  }

  sub_227FCC40C(*(v20 + 56) + 32 * v21, &v62);
  sub_22801E5D8(&v62, &qword_27D81E830, &unk_22813C630);
  if (qword_2813C49A8 != -1)
  {
    swift_once();
  }

  v23 = sub_22813882C();
  __swift_project_value_buffer(v23, qword_2813C89F0);
  sub_227FCC40C(&v57, &v62);

  v24 = sub_22813880C();
  v25 = sub_2281396DC();

  if (!os_log_type_enabled(v24, v25))
  {

    v39 = &v62;
LABEL_22:
    __swift_destroy_boxed_opaque_existential_0Tm(v39);
    return __swift_destroy_boxed_opaque_existential_0Tm(&v57);
  }

  v26 = swift_slowAlloc();
  v27 = swift_slowAlloc();
  *&v59 = v27;
  *v26 = 136446466;
  __swift_project_boxed_opaque_existential_1Tm(&v62, *(&v63 + 1));
  swift_getDynamicType();
  v28 = sub_228139B8C();
  v30 = v29;
  __swift_destroy_boxed_opaque_existential_0Tm(&v62);
  v31 = sub_227FCC340(v28, v30, &v59);

  *(v26 + 4) = v31;
  *(v26 + 12) = 2082;
  v32 = sub_227FCC340(v14, v16, &v59);

  *(v26 + 14) = v32;
  _os_log_impl(&dword_227FC3000, v24, v25, "Dropping value of type %{public}s for key %{public}s when converting ErrorContext to userInfo dictionary; this userInfoKey has already been used for a value of a different type.", v26, 0x16u);
  swift_arrayDestroy();
  MEMORY[0x22AAB28A0](v27, -1, -1);
  MEMORY[0x22AAB28A0](v26, -1, -1);

  return __swift_destroy_boxed_opaque_existential_0Tm(&v57);
}

void sub_228018158(void *a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, char a4@<W3>, _OWORD *a5@<X8>)
{
  v42 = *MEMORY[0x277D85DE8];
  if (!a4)
  {
    __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
    sub_228136C4C();
    swift_allocObject();
    sub_228136C3C();
    v33 = sub_228136C2C();
    v35 = v34;

    v41 = MEMORY[0x277CC9318];
    *&v40 = v33;
    *(&v40 + 1) = v35;
LABEL_14:
    sub_227FCF784(&v40, a5);
    return;
  }

  if (a4 != 1)
  {
    sub_22801E574(a1, v39);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E850, &qword_22813BFC0);
    v24 = sub_2281392EC();
    v41 = MEMORY[0x277D837D0];
    *&v40 = v24;
    *(&v40 + 1) = v25;
    goto LABEL_14;
  }

  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_228136C4C();
  swift_allocObject();
  sub_228136C3C();
  v26 = sub_228136C2C();
  v28 = v27;

  v29 = objc_opt_self();
  v30 = sub_228136EEC();
  v39[0] = 0;
  v31 = [v29 JSONObjectWithData:v30 options:0 error:v39];

  v32 = v39[0];
  if (v31)
  {
    sub_2281397DC();
    sub_227FC9210(v26, v28);
    swift_unknownObjectRelease();
    goto LABEL_14;
  }

  v36 = v32;
  v37 = sub_228136E2C();

  swift_willThrow();
  sub_227FC9210(v26, v28);
  if (qword_2813C49A8 != -1)
  {
    swift_once();
  }

  v9 = sub_22813882C();
  __swift_project_value_buffer(v9, qword_2813C89F0);
  sub_22801E574(a1, v39);

  v10 = v37;
  v11 = sub_22813880C();
  v12 = sub_2281396DC();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    *&v40 = v15;
    *v13 = 136446722;
    v38 = a3;
    v16 = a5;
    v17 = a2;
    __swift_project_boxed_opaque_existential_1Tm(v39, v39[3]);
    swift_getDynamicType();
    v18 = sub_228139B8C();
    v20 = v19;
    __swift_destroy_boxed_opaque_existential_0Tm(v39);
    v21 = sub_227FCC340(v18, v20, &v40);

    *(v13 + 4) = v21;
    *(v13 + 12) = 2082;
    v22 = v17;
    a5 = v16;
    *(v13 + 14) = sub_227FCC340(v22, v38, &v40);
    *(v13 + 22) = 2112;
    v23 = sub_228136E1C();
    *(v13 + 24) = v23;
    *v14 = v23;
    _os_log_impl(&dword_227FC3000, v11, v12, "Dropping value of type %{public}s for key %{public}s when converting ErrorContext to userInfo dictionary; an error occurred while converting the value to a JSON object: %@", v13, 0x20u);
    sub_22801E5D8(v14, &qword_27D81E3B0, &qword_22813AA20);
    MEMORY[0x22AAB28A0](v14, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x22AAB28A0](v15, -1, -1);
    MEMORY[0x22AAB28A0](v13, -1, -1);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_0Tm(v39);
  }

  *a5 = 0u;
  a5[1] = 0u;
}

uint64_t sub_2280185D8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E440, &unk_22813AAB0);
  v37 = v4;
  result = sub_22813992C();
  v7 = result;
  if (*(v5 + 16))
  {
    v36 = v5;
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
      v19 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v22 = 16 * (v19 | (v8 << 6));
      v23 = (*(v5 + 48) + v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = (*(v5 + 56) + v22);
      v27 = v26[1];
      v38 = *v26;
      if ((v37 & 1) == 0)
      {
      }

      sub_228139AAC();
      sub_22813923C();
      result = sub_228139AEC();
      v28 = -1 << *(v7 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v14 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v14 + 8 * v30);
          if (v34 != -1)
          {
            v15 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v29) & ~*(v14 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = 16 * v15;
      v17 = (*(v7 + 48) + v16);
      *v17 = v24;
      v17[1] = v25;
      v18 = (*(v7 + 56) + v16);
      *v18 = v38;
      v18[1] = v27;
      ++*(v7 + 16);
      v5 = v36;
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v21 = v9[v8];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v12 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v37 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v2;
    if (v35 >= 64)
    {
      bzero(v9, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_228018898(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E378, &unk_22813A9F0);
  v33 = v4;
  result = sub_22813992C();
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
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = (*(v5 + 56) + 32 * v20);
      if (v33)
      {
        sub_227FCF784(v24, v34);
      }

      else
      {
        sub_227FCC40C(v24, v34);
      }

      sub_228139AAC();
      sub_22813923C();
      result = sub_228139AEC();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      result = sub_227FCF784(v34, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v33 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

uint64_t sub_228018B74(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E3B8, &qword_22813AA28);
  v32 = v4;
  result = sub_22813992C();
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
      v20 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_16:
      v23 = v20 | (v8 << 6);
      v24 = *(*(v5 + 48) + v23);
      v25 = (*(v5 + 56) + 16 * v23);
      v26 = v25[1];
      v33 = *v25;
      if ((v32 & 1) == 0)
      {
      }

      sub_228139AAC();
      sub_22813923C();

      result = sub_228139AEC();
      v15 = -1 << *(v7 + 32);
      v16 = result & ~v15;
      v17 = v16 >> 6;
      if (((-1 << v16) & ~*(v14 + 8 * (v16 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v15) >> 6;
        while (++v17 != v28 || (v27 & 1) == 0)
        {
          v29 = v17 == v28;
          if (v17 == v28)
          {
            v17 = 0;
          }

          v27 |= v29;
          v30 = *(v14 + 8 * v17);
          if (v30 != -1)
          {
            v18 = __clz(__rbit64(~v30)) + (v17 << 6);
            goto LABEL_8;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v16) & ~*(v14 + 8 * (v16 >> 6)))) | v16 & 0x7FFFFFFFFFFFFFC0;
LABEL_8:
      *(v14 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      *(*(v7 + 48) + v18) = v24;
      v19 = (*(v7 + 56) + 16 * v18);
      *v19 = v33;
      v19[1] = v26;
      ++*(v7 + 16);
    }

    v21 = v8;
    while (1)
    {
      v8 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v22 = v9[v8];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v12 = (v22 - 1) & v22;
        goto LABEL_16;
      }
    }

    if ((v32 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v31 = 1 << *(v5 + 32);
    v3 = v2;
    if (v31 >= 64)
    {
      bzero((v5 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v31;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

uint64_t sub_228018E78(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E4B8, &qword_22813AB28);
  v34 = v4;
  result = sub_22813992C();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v5;
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
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + v20);
      if ((v34 & 1) == 0)
      {
      }

      sub_228139AAC();
      sub_22813923C();
      result = sub_228139AEC();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + v15) = v24;
      ++*(v7 + 16);
      v5 = v33;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_228019118(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E4C0, &qword_22813AB30);
  v34 = v4;
  result = sub_22813992C();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v5;
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
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v34 & 1) == 0)
      {
      }

      sub_228139AAC();
      sub_22813923C();
      result = sub_228139AEC();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v33;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_2280193E4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6)
{
  v7 = v6;
  v8 = a2;
  v9 = *v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  result = sub_22813992C();
  v11 = result;
  if (*(v9 + 16))
  {
    v38 = v6;
    v12 = 0;
    v13 = (v9 + 64);
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v9 + 64);
    v17 = (v14 + 63) >> 6;
    v18 = result + 64;
    while (v16)
    {
      v23 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v26 = v23 | (v12 << 6);
      v27 = (*(v9 + 48) + 48 * v26);
      if (v8)
      {
        v28 = *v27;
        v29 = v27[1];
        v44 = v27[2];
        v42 = v28;
        v43 = v29;
        sub_227FCF784((*(v9 + 56) + 32 * v26), v41);
      }

      else
      {
        sub_227FC81CC(v27, &v42, a5, a6);
        sub_227FCC40C(*(v9 + 56) + 32 * v26, v41);
      }

      sub_228139AAC();
      MEMORY[0x22AAB2060](*(&v44 + 1));
      result = sub_228139AEC();
      v30 = -1 << *(v11 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v18 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v18 + 8 * v32);
          if (v36 != -1)
          {
            v19 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v31) & ~*(v18 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      v20 = (*(v11 + 48) + 48 * v19);
      v21 = v42;
      v22 = v44;
      v20[1] = v43;
      v20[2] = v22;
      *v20 = v21;
      result = sub_227FCF784(v41, (*(v11 + 56) + 32 * v19));
      ++*(v11 + 16);
    }

    v24 = v12;
    while (1)
    {
      v12 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v25 = v13[v12];
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v16 = (v25 - 1) & v25;
        goto LABEL_15;
      }
    }

    if ((v8 & 1) == 0)
    {

      v7 = v38;
      goto LABEL_34;
    }

    v37 = 1 << *(v9 + 32);
    v7 = v38;
    if (v37 >= 64)
    {
      bzero((v9 + 64), ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v37;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v7 = v11;
  return result;
}

uint64_t sub_2280196BC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E480, &qword_22813AAF0);
  v31 = v4;
  result = sub_22813992C();
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
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(v5 + 56);
      v21 = *(*(v5 + 48) + 8 * v19);
      v33 = v21;
      v22 = (v20 + 32 * v19);
      if (v31)
      {
        sub_227FCF784(v22, v32);
      }

      else
      {
        sub_227FCC40C(v22, v32);
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E548, &qword_22813C000);
      result = sub_2281391DC();
      v23 = -1 << *(v7 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v14 + 8 * (v24 >> 6))) == 0)
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
          v29 = *(v14 + 8 * v25);
          if (v29 != -1)
          {
            v15 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v24) & ~*(v14 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v21;
      result = sub_227FCF784(v32, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_36;
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

    if ((v31 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v30 = 1 << *(v5 + 32);
    v3 = v2;
    if (v30 >= 64)
    {
      bzero((v5 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v30;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

uint64_t sub_22801997C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v41 = sub_228136EAC();
  v5 = *(v41 - 8);
  MEMORY[0x28223BE20](v41);
  v40 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E438, &qword_22813AAA8);
  v39 = v4;
  result = sub_22813992C();
  v9 = result;
  if (*(v7 + 16))
  {
    v35 = v2;
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v36 = (v5 + 16);
    v37 = v7;
    v38 = v5;
    v16 = (v5 + 32);
    v17 = result + 64;
    while (v14)
    {
      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v22 = v19 | (v10 << 6);
      v23 = *(v7 + 56);
      v24 = *(*(v7 + 48) + v22);
      v25 = *(v38 + 72);
      v26 = v23 + v25 * v22;
      if (v39)
      {
        (*v16)(v40, v26, v41);
      }

      else
      {
        (*v36)(v40, v26, v41);
      }

      sub_228139AAC();
      MEMORY[0x22AAB2060](v24);
      result = sub_228139AEC();
      v27 = -1 << *(v9 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v17 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v17 + 8 * v29);
          if (v33 != -1)
          {
            v18 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v28) & ~*(v17 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      *(*(v9 + 48) + v18) = v24;
      result = (*v16)(*(v9 + 56) + v25 * v18, v40, v41);
      ++*(v9 + 16);
      v7 = v37;
    }

    v20 = v10;
    while (1)
    {
      v10 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v10 >= v15)
      {
        break;
      }

      v21 = v11[v10];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v14 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_34;
    }

    v34 = 1 << *(v7 + 32);
    v3 = v35;
    if (v34 >= 64)
    {
      bzero(v11, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v34;
    }

    *(v7 + 16) = 0;
  }

LABEL_34:
  *v3 = v9;
  return result;
}

uint64_t sub_228019CE0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E4A0, &unk_22813AB10);
  v37 = *(v5 - 8);
  MEMORY[0x28223BE20](v5 - 8);
  v39 = &v36 - v6;
  v7 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E498, &unk_22813C050);
  v38 = v4;
  result = sub_22813992C();
  v9 = result;
  if (*(v7 + 16))
  {
    v36 = v2;
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v16 = result + 64;
    while (v14)
    {
      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v22 = v19 | (v10 << 6);
      v23 = *(v37 + 72);
      v24 = *(v7 + 48) + v23 * v22;
      if (v38)
      {
        sub_22801E994(v24, v39, &qword_27D81E4A0, &unk_22813AB10);
        v25 = *(v7 + 56) + 24 * v22;
        v26 = *v25;
        v40 = *(v25 + 8);
      }

      else
      {
        sub_227FC81CC(v24, v39, &qword_27D81E4A0, &unk_22813AB10);
        v27 = *(v7 + 56) + 24 * v22;
        v26 = *v27;
        v40 = *(v27 + 8);
      }

      sub_228139AAC();
      sub_227FC8030(v41);
      result = sub_228139AEC();
      v28 = -1 << *(v9 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v16 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v16 + 8 * v30);
          if (v34 != -1)
          {
            v17 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v29) & ~*(v16 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      result = sub_22801E994(v39, *(v9 + 48) + v23 * v17, &qword_27D81E4A0, &unk_22813AB10);
      v18 = *(v9 + 56) + 24 * v17;
      *v18 = v26;
      *(v18 + 8) = v40;
      ++*(v9 + 16);
    }

    v20 = v10;
    while (1)
    {
      v10 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v10 >= v15)
      {
        break;
      }

      v21 = v11[v10];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v14 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_34;
    }

    v35 = 1 << *(v7 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero((v7 + 64), ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v35;
    }

    *(v7 + 16) = 0;
  }

LABEL_34:
  *v3 = v9;
  return result;
}

uint64_t sub_22801A094(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E468, &unk_22813C040);
  v35 = v4;
  result = sub_22813992C();
  v7 = result;
  if (*(v5 + 16))
  {
    v34 = v5;
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
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = *(v5 + 56);
      v22 = *(v5 + 48) + 16 * v20;
      v23 = *v22;
      v24 = *(v22 + 8);
      v25 = *(v21 + 8 * v20);
      if ((v35 & 1) == 0)
      {
      }

      sub_228139AAC();
      sub_22801E940();
      sub_2281391EC();
      result = sub_228139AEC();
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
      v16 = *(v7 + 48) + 16 * v15;
      *v16 = v23;
      *(v16 + 8) = v24;
      *(*(v7 + 56) + 8 * v15) = v25;
      ++*(v7 + 16);
      v5 = v34;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v35 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v2;
    if (v33 >= 64)
    {
      bzero(v9, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
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

uint64_t sub_22801A38C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E3C0, &qword_22813AA30);
  v34 = v4;
  result = sub_22813992C();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v5;
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
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v34 & 1) == 0)
      {
      }

      sub_228139AAC();
      sub_22813923C();
      result = sub_228139AEC();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v33;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_22801A62C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t *a4, uint64_t *a5, uint64_t (*a6)(void))
{
  v49 = a6;
  v9 = v6;
  v10 = a2;
  v11 = a3(0);
  v46 = *(v11 - 8);
  MEMORY[0x28223BE20](v11 - 8);
  v48 = &v43 - v12;
  v13 = *v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  v47 = v10;
  result = sub_22813992C();
  v15 = result;
  if (*(v13 + 16))
  {
    v44 = v6;
    v45 = v13;
    v16 = 0;
    v17 = (v13 + 64);
    v18 = 1 << *(v13 + 32);
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    else
    {
      v19 = -1;
    }

    v20 = v19 & *(v13 + 64);
    v21 = (v18 + 63) >> 6;
    v22 = result + 64;
    while (v20)
    {
      v25 = __clz(__rbit64(v20));
      v20 &= v20 - 1;
LABEL_15:
      v28 = v25 | (v16 << 6);
      v29 = *(v13 + 56);
      v30 = (*(v13 + 48) + 16 * v28);
      v32 = *v30;
      v31 = v30[1];
      v33 = *(v46 + 72);
      v34 = v29 + v33 * v28;
      if (v47)
      {
        sub_22801E8D8(v34, v48, v49);
      }

      else
      {
        sub_22801E870(v34, v48, v49);
      }

      sub_228139AAC();
      sub_22813923C();
      result = sub_228139AEC();
      v35 = -1 << *(v15 + 32);
      v36 = result & ~v35;
      v37 = v36 >> 6;
      if (((-1 << v36) & ~*(v22 + 8 * (v36 >> 6))) == 0)
      {
        v38 = 0;
        v39 = (63 - v35) >> 6;
        while (++v37 != v39 || (v38 & 1) == 0)
        {
          v40 = v37 == v39;
          if (v37 == v39)
          {
            v37 = 0;
          }

          v38 |= v40;
          v41 = *(v22 + 8 * v37);
          if (v41 != -1)
          {
            v23 = __clz(__rbit64(~v41)) + (v37 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v23 = __clz(__rbit64((-1 << v36) & ~*(v22 + 8 * (v36 >> 6)))) | v36 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v22 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
      v24 = (*(v15 + 48) + 16 * v23);
      *v24 = v32;
      v24[1] = v31;
      result = sub_22801E8D8(v48, *(v15 + 56) + v33 * v23, v49);
      ++*(v15 + 16);
      v13 = v45;
    }

    v26 = v16;
    while (1)
    {
      v16 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v16 >= v21)
      {
        break;
      }

      v27 = v17[v16];
      ++v26;
      if (v27)
      {
        v25 = __clz(__rbit64(v27));
        v20 = (v27 - 1) & v27;
        goto LABEL_15;
      }
    }

    if ((v47 & 1) == 0)
    {

      v9 = v44;
      goto LABEL_34;
    }

    v42 = 1 << *(v13 + 32);
    v9 = v44;
    if (v42 >= 64)
    {
      bzero(v17, ((v42 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v17 = -1 << v42;
    }

    *(v13 + 16) = 0;
  }

LABEL_34:
  *v9 = v15;
  return result;
}

uint64_t sub_22801A96C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = type metadata accessor for SummarizationResult(0);
  v35 = *(v5 - 8);
  MEMORY[0x28223BE20](v5 - 8);
  v37 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E428, &unk_22813C030);
  v36 = v4;
  result = sub_22813992C();
  v9 = result;
  if (*(v7 + 16))
  {
    v34 = v2;
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v16 = result + 64;
    while (v14)
    {
      v21 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_16:
      v24 = v21 | (v10 << 6);
      v25 = *(*(v7 + 48) + v24);
      v26 = *(v35 + 72);
      v27 = *(v7 + 56) + v26 * v24;
      if (v36)
      {
        sub_22801E8D8(v27, v37, type metadata accessor for SummarizationResult);
      }

      else
      {
        sub_22801E870(v27, v37, type metadata accessor for SummarizationResult);
      }

      sub_228139AAC();
      sub_22813923C();

      result = sub_228139AEC();
      v17 = -1 << *(v9 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v16 + 8 * (v18 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v17) >> 6;
        while (++v19 != v29 || (v28 & 1) == 0)
        {
          v30 = v19 == v29;
          if (v19 == v29)
          {
            v19 = 0;
          }

          v28 |= v30;
          v31 = *(v16 + 8 * v19);
          if (v31 != -1)
          {
            v20 = __clz(__rbit64(~v31)) + (v19 << 6);
            goto LABEL_8;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v20 = __clz(__rbit64((-1 << v18) & ~*(v16 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_8:
      *(v16 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      *(*(v9 + 48) + v20) = v25;
      result = sub_22801E8D8(v37, *(v9 + 56) + v26 * v20, type metadata accessor for SummarizationResult);
      ++*(v9 + 16);
    }

    v22 = v10;
    while (1)
    {
      v10 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v10 >= v15)
      {
        break;
      }

      v23 = v11[v10];
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v14 = (v23 - 1) & v23;
        goto LABEL_16;
      }
    }

    if ((v36 & 1) == 0)
    {

      v3 = v34;
      goto LABEL_35;
    }

    v32 = 1 << *(v7 + 32);
    v3 = v34;
    if (v32 >= 64)
    {
      bzero((v7 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v32;
    }

    *(v7 + 16) = 0;
  }

LABEL_35:
  *v3 = v9;
  return result;
}

uint64_t sub_22801AD78(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = type metadata accessor for PartialSummariesOperation.TaskResult(0);
  v36 = *(v5 - 8);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E400, &qword_22813AA70);
  v37 = v4;
  result = sub_22813992C();
  v10 = result;
  if (*(v8 + 16))
  {
    v35 = v3;
    v11 = 0;
    v12 = (v8 + 64);
    v13 = 1 << *(v8 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v8 + 64);
    v16 = (v13 + 63) >> 6;
    v17 = result + 64;
    while (v15)
    {
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_15:
      v22 = v19 | (v11 << 6);
      v23 = *(*(v8 + 48) + 8 * v22);
      v24 = *(v36 + 72);
      v25 = *(v8 + 56) + v24 * v22;
      if (v37)
      {
        sub_22801E8D8(v25, v7, type metadata accessor for PartialSummariesOperation.TaskResult);
      }

      else
      {
        sub_22801E870(v25, v7, type metadata accessor for PartialSummariesOperation.TaskResult);
      }

      result = sub_228139A9C();
      v26 = -1 << *(v10 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v17 + 8 * (v27 >> 6))) == 0)
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
          v32 = *(v17 + 8 * v28);
          if (v32 != -1)
          {
            v18 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v27) & ~*(v17 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      *(*(v10 + 48) + 8 * v18) = v23;
      result = sub_22801E8D8(v7, *(v10 + 56) + v24 * v18, type metadata accessor for PartialSummariesOperation.TaskResult);
      ++*(v10 + 16);
    }

    v20 = v11;
    while (1)
    {
      v11 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v11 >= v16)
      {
        break;
      }

      v21 = v12[v11];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v15 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v37 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_34;
    }

    v33 = 1 << *(v8 + 32);
    v3 = v35;
    if (v33 >= 64)
    {
      bzero((v8 + 64), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v33;
    }

    *(v8 + 16) = 0;
  }

LABEL_34:
  *v3 = v10;
  return result;
}

uint64_t sub_22801B0C0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E3D8, &unk_22813C640);
  v37 = *(v5 - 8);
  MEMORY[0x28223BE20](v5 - 8);
  v39 = &v36 - v6;
  v7 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E3D0, &unk_22813AA40);
  v38 = v4;
  result = sub_22813992C();
  v9 = result;
  if (*(v7 + 16))
  {
    v36 = v2;
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v16 = result + 64;
    while (v14)
    {
      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v22 = v19 | (v10 << 6);
      v23 = *(v37 + 72);
      v24 = *(v7 + 48) + v23 * v22;
      if (v38)
      {
        sub_22801E994(v24, v39, &qword_27D81E3D8, &unk_22813C640);
        v25 = *(v7 + 56) + 24 * v22;
        v26 = *v25;
        v40 = *(v25 + 8);
      }

      else
      {
        sub_227FC81CC(v24, v39, &qword_27D81E3D8, &unk_22813C640);
        v27 = *(v7 + 56) + 24 * v22;
        v26 = *v27;
        v40 = *(v27 + 8);
      }

      sub_228139AAC();
      sub_228025718(v41);
      result = sub_228139AEC();
      v28 = -1 << *(v9 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v16 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v16 + 8 * v30);
          if (v34 != -1)
          {
            v17 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v29) & ~*(v16 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      result = sub_22801E994(v39, *(v9 + 48) + v23 * v17, &qword_27D81E3D8, &unk_22813C640);
      v18 = *(v9 + 56) + 24 * v17;
      *v18 = v26;
      *(v18 + 8) = v40;
      ++*(v9 + 16);
    }

    v20 = v10;
    while (1)
    {
      v10 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v10 >= v15)
      {
        break;
      }

      v21 = v11[v10];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v14 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_34;
    }

    v35 = 1 << *(v7 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero((v7 + 64), ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v35;
    }

    *(v7 + 16) = 0;
  }

LABEL_34:
  *v3 = v9;
  return result;
}

_OWORD *sub_22801B474(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_22808C964(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_22801C85C();
      v11 = v19;
      goto LABEL_8;
    }

    sub_228018898(v16, a4 & 1);
    v11 = sub_22808C964(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      result = sub_2281399EC();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    v22 = (v21[7] + 32 * v11);
    __swift_destroy_boxed_opaque_existential_0Tm(v22);

    return sub_227FCF784(a1, v22);
  }

  else
  {
    sub_22801C2AC(v11, a2, a3, a1, v21);
  }
}

unint64_t sub_22801B5C4(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  result = sub_22808CA2C(a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_228018B74(v16, a4 & 1);
      result = sub_22808CA2C(a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_16:
        result = sub_2281399EC();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = result;
      sub_22801CA24();
      result = v19;
    }
  }

  v21 = *v5;
  if ((v17 & 1) == 0)
  {
    v21[(result >> 6) + 8] |= 1 << result;
    *(v21[6] + result) = a3;
    v23 = (v21[7] + 16 * result);
    *v23 = a1;
    v23[1] = a2;
    v24 = v21[2];
    v15 = __OFADD__(v24, 1);
    v25 = v24 + 1;
    if (!v15)
    {
      v21[2] = v25;
      return result;
    }

    goto LABEL_15;
  }

  v22 = (v21[7] + 16 * result);
  *v22 = a1;
  v22[1] = a2;
}

uint64_t sub_22801B724(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_22808C964(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_228019118(v16, a4 & 1);
      v11 = sub_22808C964(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        result = sub_2281399EC();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      sub_22801CCF4();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * v11) = a1;
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v23 = (v21[6] + 16 * v11);
  *v23 = a2;
  v23[1] = a3;
  *(v21[7] + 8 * v11) = a1;
  v24 = v21[2];
  v15 = __OFADD__(v24, 1);
  v25 = v24 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21[2] = v25;
}

uint64_t sub_22801B8A0(uint64_t a1, char a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = sub_22808CE24(a2 & 1);
  v11 = v8[2];
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_17;
  }

  v14 = v9;
  v15 = v8[3];
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      sub_22801D1C0();
      goto LABEL_7;
    }

    sub_22801997C(v13, a3 & 1);
    v24 = sub_22808CE24(a2 & 1);
    if ((v14 & 1) == (v25 & 1))
    {
      v10 = v24;
      v16 = *v4;
      if (v14)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

LABEL_17:
    result = sub_2281399EC();
    __break(1u);
    return result;
  }

LABEL_7:
  v16 = *v4;
  if (v14)
  {
LABEL_8:
    v17 = v16[7];
    v18 = sub_228136EAC();
    v19 = *(v18 - 8);
    v20 = *(v19 + 40);
    v21 = v18;
    v22 = v17 + *(v19 + 72) * v10;

    return v20(v22, a1, v21);
  }

LABEL_13:

  return sub_22801C360(v10, a2 & 1, a1, v16);
}

uint64_t sub_22801BA08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, char a5)
{
  v6 = v5;
  v28 = a3;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E4A0, &unk_22813AB10);
  MEMORY[0x28223BE20](v11);
  v13 = &v27 - v12;
  v14 = *v5;
  v16 = sub_227FC7F80(a4);
  v17 = v14[2];
  v18 = (v15 & 1) == 0;
  v19 = v17 + v18;
  if (__OFADD__(v17, v18))
  {
    __break(1u);
    goto LABEL_15;
  }

  v20 = v15;
  v21 = v14[3];
  if (v21 < v19 || (a5 & 1) == 0)
  {
    if (v21 >= v19 && (a5 & 1) == 0)
    {
      sub_22801DE84(&qword_27D81E4A0, &unk_22813AB10, &qword_27D81E498, &unk_22813C050);
      goto LABEL_7;
    }

    sub_228019CE0(v19, a5 & 1);
    v25 = sub_227FC7F80(a4);
    if ((v20 & 1) == (v26 & 1))
    {
      v16 = v25;
      v22 = *v6;
      if (v20)
      {
        goto LABEL_8;
      }

LABEL_13:
      sub_227FC81CC(a4, v13, &qword_27D81E4A0, &unk_22813AB10);
      return sub_22801C60C(v16, v13, a1, a2, v28, v22, &qword_27D81E4A0, &unk_22813AB10);
    }

LABEL_15:
    result = sub_2281399EC();
    __break(1u);
    return result;
  }

LABEL_7:
  v22 = *v6;
  if ((v20 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v23 = (v22[7] + 24 * v16);
  *v23 = a1;
  v23[1] = a2;
  v23[2] = v28;
}

uint64_t sub_22801BC18(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v12 = sub_22808C964(a2, a3);
  v13 = v10[2];
  v14 = (v11 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_15;
  }

  v16 = v11;
  v17 = v10[3];
  if (v17 >= v15 && (a4 & 1) != 0)
  {
LABEL_7:
    v18 = *v5;
    if (v16)
    {
LABEL_8:
      v19 = v18[7];
      v20 = type metadata accessor for GMSModelInfoCache.CacheEntry(0);
      return sub_22801E638(a1, v19 + *(*(v20 - 8) + 72) * v12, type metadata accessor for GMSModelInfoCache.CacheEntry);
    }

    goto LABEL_11;
  }

  if (v17 >= v15 && (a4 & 1) == 0)
  {
    sub_22801D79C(type metadata accessor for GMSModelInfoCache.CacheEntry, &qword_27D81E4D0, &qword_22813AB40, type metadata accessor for GMSModelInfoCache.CacheEntry);
    goto LABEL_7;
  }

  sub_22801A62C(v15, a4 & 1, type metadata accessor for GMSModelInfoCache.CacheEntry, &qword_27D81E4D0, &qword_22813AB40, type metadata accessor for GMSModelInfoCache.CacheEntry);
  v22 = sub_22808C964(a2, a3);
  if ((v16 & 1) != (v23 & 1))
  {
LABEL_15:
    result = sub_2281399EC();
    __break(1u);
    return result;
  }

  v12 = v22;
  v18 = *v5;
  if (v16)
  {
    goto LABEL_8;
  }

LABEL_11:
  sub_22801C410(v12, a2, a3, a1, v18);
}

uint64_t sub_22801BDF4(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = sub_22808CFAC(a2);
  v11 = v8[2];
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_15;
  }

  v14 = v9;
  v15 = v8[3];
  if (v15 >= v13 && (a3 & 1) != 0)
  {
LABEL_7:
    v16 = *v4;
    if (v14)
    {
LABEL_8:
      v17 = v16[7];
      v18 = type metadata accessor for SummarizationResult(0);
      return sub_22801E638(a1, v17 + *(*(v18 - 8) + 72) * v10, type metadata accessor for SummarizationResult);
    }

    goto LABEL_11;
  }

  if (v15 >= v13 && (a3 & 1) == 0)
  {
    sub_22801D9F0();
    goto LABEL_7;
  }

  sub_22801A96C(v13, a3 & 1);
  v20 = sub_22808CFAC(a2);
  if ((v14 & 1) != (v21 & 1))
  {
LABEL_15:
    result = sub_2281399EC();
    __break(1u);
    return result;
  }

  v10 = v20;
  v16 = *v4;
  if (v14)
  {
    goto LABEL_8;
  }

LABEL_11:

  return sub_22801C4BC(v10, a2, a1, v16);
}

uint64_t sub_22801BF48(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = sub_22808D0CC(a2);
  v11 = v8[2];
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_15;
  }

  v14 = v9;
  v15 = v8[3];
  if (v15 >= v13 && (a3 & 1) != 0)
  {
LABEL_7:
    v16 = *v4;
    if (v14)
    {
LABEL_8:
      v17 = v16[7];
      v18 = type metadata accessor for PartialSummariesOperation.TaskResult(0);
      return sub_22801E638(a1, v17 + *(*(v18 - 8) + 72) * v10, type metadata accessor for PartialSummariesOperation.TaskResult);
    }

    goto LABEL_11;
  }

  if (v15 >= v13 && (a3 & 1) == 0)
  {
    sub_22801DC28();
    goto LABEL_7;
  }

  sub_22801AD78(v13, a3 & 1);
  v20 = sub_22808D0CC(a2);
  if ((v14 & 1) != (v21 & 1))
  {
LABEL_15:
    result = sub_2281399EC();
    __break(1u);
    return result;
  }

  v10 = v20;
  v16 = *v4;
  if (v14)
  {
    goto LABEL_8;
  }

LABEL_11:

  return sub_22801C564(v10, a2, a1, v16);
}

uint64_t sub_22801C09C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, char a5)
{
  v6 = v5;
  v28 = a3;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E3D8, &unk_22813C640);
  MEMORY[0x28223BE20](v11);
  v13 = &v27 - v12;
  v14 = *v5;
  v16 = sub_22808D108(a4);
  v17 = v14[2];
  v18 = (v15 & 1) == 0;
  v19 = v17 + v18;
  if (__OFADD__(v17, v18))
  {
    __break(1u);
    goto LABEL_15;
  }

  v20 = v15;
  v21 = v14[3];
  if (v21 < v19 || (a5 & 1) == 0)
  {
    if (v21 >= v19 && (a5 & 1) == 0)
    {
      sub_22801DE84(&qword_27D81E3D8, &unk_22813C640, &qword_27D81E3D0, &unk_22813AA40);
      goto LABEL_7;
    }

    sub_22801B0C0(v19, a5 & 1);
    v25 = sub_22808D108(a4);
    if ((v20 & 1) == (v26 & 1))
    {
      v16 = v25;
      v22 = *v6;
      if (v20)
      {
        goto LABEL_8;
      }

LABEL_13:
      sub_227FC81CC(a4, v13, &qword_27D81E3D8, &unk_22813C640);
      return sub_22801C60C(v16, v13, a1, a2, v28, v22, &qword_27D81E3D8, &unk_22813C640);
    }

LABEL_15:
    result = sub_2281399EC();
    __break(1u);
    return result;
  }

LABEL_7:
  v22 = *v6;
  if ((v20 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v23 = (v22[7] + 24 * v16);
  *v23 = a1;
  v23[1] = a2;
  v23[2] = v28;
}

_OWORD *sub_22801C2AC(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_227FCF784(a4, (a5[7] + 32 * a1));
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

unint64_t sub_22801C318(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  *(a5[7] + 8 * result) = a4;
  v6 = a5[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v8;
  }

  return result;
}

uint64_t sub_22801C360(unint64_t a1, char a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + a1) = a2 & 1;
  v7 = a4[7];
  v8 = sub_228136EAC();
  result = (*(*(v8 - 8) + 32))(v7 + *(*(v8 - 8) + 72) * a1, a3, v8);
  v10 = a4[2];
  v11 = __OFADD__(v10, 1);
  v12 = v10 + 1;
  if (v11)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v12;
  }

  return result;
}

uint64_t sub_22801C410(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v8 = (a5[6] + 16 * a1);
  *v8 = a2;
  v8[1] = a3;
  v9 = a5[7];
  v10 = type metadata accessor for GMSModelInfoCache.CacheEntry(0);
  result = sub_22801E8D8(a4, v9 + *(*(v10 - 8) + 72) * a1, type metadata accessor for GMSModelInfoCache.CacheEntry);
  v12 = a5[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v14;
  }

  return result;
}

uint64_t sub_22801C4BC(unint64_t a1, char a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + a1) = a2;
  v7 = a4[7];
  v8 = type metadata accessor for SummarizationResult(0);
  result = sub_22801E8D8(a3, v7 + *(*(v8 - 8) + 72) * a1, type metadata accessor for SummarizationResult);
  v10 = a4[2];
  v11 = __OFADD__(v10, 1);
  v12 = v10 + 1;
  if (v11)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v12;
  }

  return result;
}

uint64_t sub_22801C564(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  v7 = a4[7];
  v8 = type metadata accessor for PartialSummariesOperation.TaskResult(0);
  result = sub_22801E8D8(a3, v7 + *(*(v8 - 8) + 72) * a1, type metadata accessor for PartialSummariesOperation.TaskResult);
  v10 = a4[2];
  v11 = __OFADD__(v10, 1);
  v12 = v10 + 1;
  if (v11)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v12;
  }

  return result;
}

uint64_t sub_22801C60C(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t *a7, uint64_t *a8)
{
  a6[(a1 >> 6) + 8] |= 1 << a1;
  v16 = a6[6];
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
  result = sub_22801E994(a2, v16 + *(*(v17 - 8) + 72) * a1, a7, a8);
  v19 = (a6[7] + 24 * a1);
  *v19 = a3;
  v19[1] = a4;
  v19[2] = a5;
  v20 = a6[2];
  v21 = __OFADD__(v20, 1);
  v22 = v20 + 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    a6[2] = v22;
  }

  return result;
}

void *sub_22801C6E4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E440, &unk_22813AAB0);
  v2 = *v0;
  v3 = sub_22813991C();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v20 = *v18;
        v19 = v18[1];
        v21 = (*(v2 + 56) + v17);
        v22 = *v21;
        v23 = v21[1];
        v24 = (*(v4 + 48) + v17);
        *v24 = v20;
        v24[1] = v19;
        v25 = (*(v4 + 56) + v17);
        *v25 = v22;
        v25[1] = v23;
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

      v16 = *(v2 + 64 + 8 * v8);
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

void *sub_22801C85C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E378, &unk_22813A9F0);
  v2 = *v0;
  v3 = sub_22813991C();
  v4 = v3;
  if (*(v2 + 16))
  {
    v24 = v1;
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v17 = v14 | (v8 << 6);
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 32 * v17;
        sub_227FCC40C(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_227FCF784(v25, (*(v4 + 56) + v22));
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

        v1 = v24;
        goto LABEL_21;
      }

      v16 = *(v2 + 64 + 8 * v8);
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

LABEL_21:
    *v1 = v4;
  }

  return result;
}

void *sub_22801CA24()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E3B8, &qword_22813AA28);
  v2 = *v0;
  v3 = sub_22813991C();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 56) + 16 * v17);
        v20 = *v18;
        v19 = v18[1];
        *(*(v4 + 48) + v17) = *(*(v2 + 48) + v17);
        v21 = (*(v4 + 56) + 16 * v17);
        *v21 = v20;
        v21[1] = v19;
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

      v16 = *(v2 + 64 + 8 * v8);
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

void *sub_22801CB8C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E4B8, &qword_22813AB28);
  v2 = *v0;
  v3 = sub_22813991C();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v20 = *v18;
        v19 = v18[1];
        LOBYTE(v18) = *(*(v2 + 56) + v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = v20;
        v21[1] = v19;
        *(*(v4 + 56) + v17) = v18;
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

      v16 = *(v2 + 64 + 8 * v8);
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

void *sub_22801CCF4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E4C0, &qword_22813AB30);
  v2 = *v0;
  v3 = sub_22813991C();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;
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

      v16 = *(v2 + 64 + 8 * v8);
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

void *sub_22801CE88(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v7 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v8 = *v4;
  v9 = sub_22813991C();
  v10 = v9;
  if (*(v8 + 16))
  {
    v28 = v7;
    result = (v9 + 64);
    v12 = ((1 << *(v10 + 32)) + 63) >> 6;
    if (v10 != v8 || result >= v8 + 64 + 8 * v12)
    {
      result = memmove(result, (v8 + 64), 8 * v12);
    }

    v14 = 0;
    *(v10 + 16) = *(v8 + 16);
    v15 = 1 << *(v8 + 32);
    v16 = *(v8 + 64);
    v17 = -1;
    if (v15 < 64)
    {
      v17 = ~(-1 << v15);
    }

    v18 = v17 & v16;
    v19 = (v15 + 63) >> 6;
    if ((v17 & v16) != 0)
    {
      do
      {
        v20 = __clz(__rbit64(v18));
        v18 &= v18 - 1;
LABEL_17:
        v23 = v20 | (v14 << 6);
        v24 = 48 * v23;
        sub_227FC81CC(*(v8 + 48) + 48 * v23, v30, a3, a4);
        v23 *= 32;
        sub_227FCC40C(*(v8 + 56) + v23, v29);
        v25 = (*(v10 + 48) + v24);
        v26 = v30[0];
        v27 = v30[2];
        v25[1] = v30[1];
        v25[2] = v27;
        *v25 = v26;
        result = sub_227FCF784(v29, (*(v10 + 56) + v23));
      }

      while (v18);
    }

    v21 = v14;
    while (1)
    {
      v14 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v14 >= v19)
      {

        v7 = v28;
        goto LABEL_21;
      }

      v22 = *(v8 + 64 + 8 * v14);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v18 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v7 = v10;
  }

  return result;
}

void *sub_22801D03C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E480, &qword_22813AAF0);
  v2 = *v0;
  v3 = sub_22813991C();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        sub_227FCC40C(*(v2 + 56) + 32 * v17, v19);
        *(*(v4 + 48) + 8 * v17) = v18;
        sub_227FCF784(v19, (*(v4 + 56) + 32 * v17));
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

      v16 = *(v2 + 64 + 8 * v8);
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

void *sub_22801D1C0()
{
  v1 = v0;
  v29 = sub_228136EAC();
  v31 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v28 = &v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E438, &qword_22813AAA8);
  v3 = *v0;
  v4 = sub_22813991C();
  v5 = v4;
  if (*(v3 + 16))
  {
    v24 = v1;
    result = (v4 + 64);
    v7 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || result >= v3 + 64 + 8 * v7)
    {
      result = memmove(result, (v3 + 64), 8 * v7);
    }

    v8 = 0;
    v9 = *(v3 + 16);
    v30 = v5;
    *(v5 + 16) = v9;
    v10 = 1 << *(v3 + 32);
    v11 = -1;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    v12 = v11 & *(v3 + 64);
    v13 = (v10 + 63) >> 6;
    v27 = v31 + 16;
    v25 = v3 + 64;
    for (i = v31 + 32; v12; result = (*(v19 + 32))(*(v23 + 56) + v20, v22, v21))
    {
      v14 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_14:
      v17 = v14 | (v8 << 6);
      v18 = *(*(v3 + 48) + v17);
      v19 = v31;
      v20 = *(v31 + 72) * v17;
      v22 = v28;
      v21 = v29;
      (*(v31 + 16))(v28, *(v3 + 56) + v20, v29);
      v23 = v30;
      *(*(v30 + 48) + v17) = v18;
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

        v1 = v24;
        v5 = v30;
        goto LABEL_18;
      }

      v16 = *(v25 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v5;
  }

  return result;
}

void *sub_22801D44C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E468, &unk_22813C040);
  v2 = *v0;
  v3 = sub_22813991C();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v17 = v14 | (v8 << 6);
        v18 = *(v2 + 48) + 16 * v17;
        v19 = *v18;
        LOBYTE(v18) = *(v18 + 8);
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = *(v4 + 48) + 16 * v17;
        *v21 = v19;
        *(v21 + 8) = v18;
        *(*(v4 + 56) + 8 * v17) = v20;
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

      v16 = *(v2 + 64 + 8 * v8);
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

void *sub_22801D5F8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E3C0, &qword_22813AA30);
  v2 = *v0;
  v3 = sub_22813991C();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = *(*(v2 + 56) + 8 * v17);
        v22 = (*(v4 + 48) + 16 * v17);
        *v22 = v20;
        v22[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v21;
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

      v16 = *(v2 + 64 + 8 * v8);
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

void *sub_22801D79C(uint64_t (*a1)(void), uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v41 = a4;
  v7 = v4;
  v8 = a1(0);
  v40 = *(v8 - 8);
  MEMORY[0x28223BE20](v8 - 8);
  v39 = &v38 - v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v10 = *v4;
  v11 = sub_22813991C();
  v12 = v11;
  if (*(v10 + 16))
  {
    v38 = v7;
    result = (v11 + 64);
    v14 = v10 + 64;
    v15 = ((1 << *(v12 + 32)) + 63) >> 6;
    if (v12 != v10 || result >= v10 + 64 + 8 * v15)
    {
      result = memmove(result, (v10 + 64), 8 * v15);
    }

    v17 = 0;
    v18 = *(v10 + 16);
    v42 = v12;
    *(v12 + 16) = v18;
    v19 = 1 << *(v10 + 32);
    v20 = -1;
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    v21 = v20 & *(v10 + 64);
    v22 = (v19 + 63) >> 6;
    if (v21)
    {
      do
      {
        v23 = __clz(__rbit64(v21));
        v43 = (v21 - 1) & v21;
LABEL_17:
        v26 = v23 | (v17 << 6);
        v27 = 16 * v26;
        v28 = *(v10 + 56);
        v29 = (*(v10 + 48) + 16 * v26);
        v30 = v10;
        v31 = *v29;
        v32 = v29[1];
        v33 = v39;
        v34 = *(v40 + 72) * v26;
        v35 = v41;
        sub_22801E870(v28 + v34, v39, v41);
        v36 = v42;
        v37 = (*(v42 + 48) + v27);
        *v37 = v31;
        v37[1] = v32;
        v10 = v30;
        sub_22801E8D8(v33, *(v36 + 56) + v34, v35);

        v21 = v43;
      }

      while (v43);
    }

    v24 = v17;
    while (1)
    {
      v17 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        break;
      }

      if (v17 >= v22)
      {

        v7 = v38;
        v12 = v42;
        goto LABEL_21;
      }

      v25 = *(v14 + 8 * v17);
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v43 = (v25 - 1) & v25;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v7 = v12;
  }

  return result;
}

void *sub_22801D9F0()
{
  v1 = v0;
  v2 = type metadata accessor for SummarizationResult(0);
  v27 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8);
  v26 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E428, &unk_22813C030);
  v4 = *v0;
  v5 = sub_22813991C();
  v6 = v5;
  if (*(v4 + 16))
  {
    v25 = v1;
    result = (v5 + 64);
    v8 = v4 + 64;
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v8 + 8 * v9)
    {
      result = memmove(result, (v4 + 64), 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v28 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = *(v4 + 64);
    v14 = -1;
    if (v12 < 64)
    {
      v14 = ~(-1 << v12);
    }

    v15 = v14 & v13;
    v16 = (v12 + 63) >> 6;
    if ((v14 & v13) != 0)
    {
      do
      {
        v17 = __clz(__rbit64(v15));
        v15 &= v15 - 1;
LABEL_14:
        v20 = v17 | (v10 << 6);
        v21 = *(*(v4 + 48) + v20);
        v22 = v26;
        v23 = *(v27 + 72) * v20;
        sub_22801E870(*(v4 + 56) + v23, v26, type metadata accessor for SummarizationResult);
        v24 = v28;
        *(*(v28 + 48) + v20) = v21;
        result = sub_22801E8D8(v22, *(v24 + 56) + v23, type metadata accessor for SummarizationResult);
      }

      while (v15);
    }

    v18 = v10;
    while (1)
    {
      v10 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v10 >= v16)
      {

        v1 = v25;
        v6 = v28;
        goto LABEL_18;
      }

      v19 = *(v8 + 8 * v10);
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
    *v1 = v6;
  }

  return result;
}

void *sub_22801DC28()
{
  v1 = v0;
  v2 = type metadata accessor for PartialSummariesOperation.TaskResult(0);
  v27 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8);
  v26 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E400, &qword_22813AA70);
  v4 = *v0;
  v5 = sub_22813991C();
  v6 = v5;
  if (*(v4 + 16))
  {
    v25 = v1;
    result = (v5 + 64);
    v8 = v4 + 64;
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v8 + 8 * v9)
    {
      result = memmove(result, (v4 + 64), 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v28 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = *(v4 + 64);
    v14 = -1;
    if (v12 < 64)
    {
      v14 = ~(-1 << v12);
    }

    v15 = v14 & v13;
    v16 = (v12 + 63) >> 6;
    if ((v14 & v13) != 0)
    {
      do
      {
        v17 = __clz(__rbit64(v15));
        v15 &= v15 - 1;
LABEL_14:
        v20 = v17 | (v10 << 6);
        v21 = *(*(v4 + 48) + 8 * v20);
        v22 = v26;
        v23 = *(v27 + 72) * v20;
        sub_22801E870(*(v4 + 56) + v23, v26, type metadata accessor for PartialSummariesOperation.TaskResult);
        v24 = v28;
        *(*(v28 + 48) + 8 * v20) = v21;
        result = sub_22801E8D8(v22, *(v24 + 56) + v23, type metadata accessor for PartialSummariesOperation.TaskResult);
      }

      while (v15);
    }

    v18 = v10;
    while (1)
    {
      v10 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v10 >= v16)
      {

        v1 = v25;
        v6 = v28;
        goto LABEL_18;
      }

      v19 = *(v8 + 8 * v10);
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
    *v1 = v6;
  }

  return result;
}

void *sub_22801DE84(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v7 = v4;
  v44 = a1;
  v45 = a2;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v43 = *(v8 - 8);
  MEMORY[0x28223BE20](v8 - 8);
  v42 = &v38 - v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v10 = *v4;
  v11 = sub_22813991C();
  v12 = v11;
  if (*(v10 + 16))
  {
    result = (v11 + 64);
    v14 = ((1 << *(v12 + 32)) + 63) >> 6;
    v38 = v7;
    v39 = (v10 + 64);
    if (v12 != v10 || result >= v10 + 64 + 8 * v14)
    {
      result = memmove(result, v39, 8 * v14);
    }

    v16 = 0;
    v17 = *(v10 + 16);
    v46 = v12;
    *(v12 + 16) = v17;
    v18 = 1 << *(v10 + 32);
    v19 = -1;
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    v20 = v19 & *(v10 + 64);
    v21 = (v18 + 63) >> 6;
    v40 = v21;
    v41 = v10;
    v22 = v42;
    if (v20)
    {
      do
      {
        v23 = __clz(__rbit64(v20));
        v47 = (v20 - 1) & v20;
LABEL_17:
        v26 = v23 | (v16 << 6);
        v27 = v44;
        v28 = *(v43 + 72) * v26;
        v29 = v45;
        sub_227FC81CC(*(v10 + 48) + v28, v22, v44, v45);
        v30 = 24 * v26;
        v31 = (*(v10 + 56) + 24 * v26);
        v32 = *v31;
        v33 = v31[1];
        v34 = v31[2];
        v35 = v46;
        sub_22801E994(v22, *(v46 + 48) + v28, v27, v29);
        v36 = *(v35 + 56);
        v10 = v41;
        v37 = (v36 + v30);
        *v37 = v32;
        v37[1] = v33;
        v37[2] = v34;

        v21 = v40;
        v20 = v47;
      }

      while (v47);
    }

    v24 = v16;
    while (1)
    {
      v16 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        break;
      }

      if (v16 >= v21)
      {

        v7 = v38;
        v12 = v46;
        goto LABEL_21;
      }

      v25 = *(v39 + v16);
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v47 = (v25 - 1) & v25;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v7 = v12;
  }

  return result;
}

uint64_t sub_22801E100(char a1)
{
  if ((a1 - 9) >= 6u)
  {
    return 6;
  }

  else
  {
    return (a1 - 9);
  }
}

uint64_t sub_22801E118(uint64_t result)
{
  if (result <= 1999)
  {
    if (result > 505)
    {
      if (result <= 1004)
      {
        if (result > 1001)
        {
          if (result == 1002)
          {
            return 17;
          }

          if (result == 1003)
          {
            return 18;
          }

          return 19;
        }

        switch(result)
        {
          case 506:
            return 14;
          case 1000:
            return 15;
          case 1001:
            return 16;
        }
      }

      else
      {
        if (result <= 1007)
        {
          if (result == 1005)
          {
            return 20;
          }

          if (result == 1006)
          {
            return 21;
          }

          return 22;
        }

        if (result <= 1009)
        {
          if (result == 1008)
          {
            return 23;
          }

          else
          {
            return 24;
          }
        }

        if (result == 1010)
        {
          return 25;
        }

        if (result == 1011)
        {
          return 26;
        }
      }
    }

    else if (result <= 9)
    {
      if (result > 2)
      {
        if (result == 3 || result == 5 || result == 6)
        {
          return result;
        }
      }

      else if (result <= 2)
      {
        return result;
      }
    }

    else
    {
      if (result > 501)
      {
        if (result > 503)
        {
          if (result == 504)
          {
            return 12;
          }

          else
          {
            return 13;
          }
        }

        else if (result == 502)
        {
          return 10;
        }

        else
        {
          return 11;
        }
      }

      switch(result)
      {
        case 10:
          return 7;
        case 20:
          return 8;
        case 501:
          return 9;
      }
    }

    return 61;
  }

  if (result > 2299)
  {
    if (result > 2501)
    {
      if (result <= 2503)
      {
        if (result == 2502)
        {
          return 57;
        }

        else
        {
          return 58;
        }
      }

      if (result == 2504)
      {
        return 59;
      }

      if (result == 2505)
      {
        return 60;
      }
    }

    else
    {
      if (result > 2499)
      {
        if (result == 2500)
        {
          return 55;
        }

        else
        {
          return 56;
        }
      }

      if (result == 2300)
      {
        return 53;
      }

      if (result == 2301)
      {
        return 54;
      }
    }

    return 61;
  }

  switch(result)
  {
    case 2000:
      result = 27;
      break;
    case 2001:
      result = 28;
      break;
    case 2002:
      result = 29;
      break;
    case 2003:
      result = 30;
      break;
    case 2004:
      result = 31;
      break;
    case 2005:
      result = 32;
      break;
    case 2006:
      result = 33;
      break;
    case 2007:
      result = 34;
      break;
    case 2008:
      result = 35;
      break;
    case 2011:
      result = 38;
      break;
    case 2012:
      result = 39;
      break;
    case 2013:
      result = 40;
      break;
    case 2014:
      result = 41;
      break;
    case 2015:
      result = 42;
      break;
    case 2016:
      result = 43;
      break;
    case 2018:
      result = 45;
      break;
    case 2019:
      result = 46;
      break;
    case 2020:
      result = 47;
      break;
    case 2021:
      result = 48;
      break;
    case 2022:
      result = 49;
      break;
    case 2023:
      result = 50;
      break;
    case 2200:
      result = 51;
      break;
    case 2201:
      result = 52;
      break;
    default:
      return 61;
  }

  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_0Tm(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

void *__swift_project_boxed_opaque_existential_1Tm(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_22801E4F8(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t *__swift_allocate_boxed_opaque_existential_0(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_22801E574(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_22801E5D8(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_22801E638(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

uint64_t sub_22801E6A0(uint64_t a1, char a2)
{
  v3 = sub_2280164D0(a2);
  v5 = v4;
  v6 = sub_2281392AC();
  v8 = v7;
  *(&v14 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E5E0, &unk_22813B410);
  v15 = sub_22801E9FC(qword_2813C6E58, &qword_27D81E5E0, &unk_22813B410);
  *&v13 = v6;
  *(&v13 + 1) = v8;
  LOBYTE(v14) = 3;
  sub_22801E574(&v13, v16);
  __swift_project_boxed_opaque_existential_1Tm(&v13, *(&v14 + 1));
  DynamicType = swift_getDynamicType();
  __swift_destroy_boxed_opaque_existential_0Tm(&v13);
  v17 = DynamicType;
  *(&v14 + 1) = MEMORY[0x277D837D0];
  *&v13 = v3;
  *(&v13 + 1) = v5;
  sub_228024ABC(&v13, v16);
  if ((a2 - 9) <= 5u)
  {
    v10 = sub_22801E100(a2);
    if (v10 != 6)
    {
      sub_228016F78(v10);
    }
  }

  *(&v14 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E870, &qword_22813C008);
  v15 = sub_22801E9FC(&qword_27D81E878, &qword_27D81E870, &qword_22813C008);
  *&v13 = 0xD00000000000001ELL;
  *(&v13 + 1) = 0x8000000228145590;
  LOBYTE(v14) = 3;
  sub_22801E574(&v13, v16);
  __swift_project_boxed_opaque_existential_1Tm(&v13, *(&v14 + 1));
  v11 = swift_getDynamicType();
  __swift_destroy_boxed_opaque_existential_0Tm(&v13);
  v17 = v11;
  v13 = 0u;
  v14 = 0u;
  return sub_228024ABC(&v13, v16);
}

uint64_t sub_22801E870(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_22801E8D8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_22801E940()
{
  result = qword_2813C60E0;
  if (!qword_2813C60E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813C60E0);
  }

  return result;
}

uint64_t sub_22801E994(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_22801E9FC(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t getEnumTagSinglePayload for SummarizationError.Code(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xC4)
  {
    goto LABEL_17;
  }

  if (a2 + 60 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 60) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 60;
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

      return (*a1 | (v4 << 8)) - 60;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 60;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x3D;
  v8 = v6 - 61;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SummarizationError.Code(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 60 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 60) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xC4)
  {
    v4 = 0;
  }

  if (a2 > 0xC3)
  {
    v5 = ((a2 - 196) >> 8) + 1;
    *result = a2 + 60;
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
    *result = a2 + 60;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_22801EBB8()
{
  result = qword_27D81E8A0;
  if (!qword_27D81E8A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D81E8A0);
  }

  return result;
}

uint64_t sub_22801EC14()
{
  sub_228139AAC();
  MEMORY[0x22AAB2060](0);
  return sub_228139AEC();
}

uint64_t sub_22801EC80(uint64_t a1)
{
  sub_228139AAC();
  MEMORY[0x22AAB2060](0);
  return sub_228139AEC();
}

void *sub_22801ECE8()
{
  result = sub_227FE5398(MEMORY[0x277D84F90]);
  dword_27D81E8A8 = 0;
  off_27D81E8B0 = result;
  return result;
}

uint64_t sub_22801ED18()
{
  v0 = [objc_opt_self() processInfo];
  if (qword_2813C4630 != -1)
  {
    v7 = v0;
    swift_once();
    v0 = v7;
  }

  if (byte_2813C4638 != 1)
  {

    return 2;
  }

  if (qword_2813C4620 != -1)
  {
    v8 = v0;
    swift_once();
    v0 = v8;
  }

  v1 = byte_2813C4629;

  if ((v1 & 1) == 0)
  {
    return 2;
  }

  if (qword_27D81E280 != -1)
  {
    swift_once();
  }

  os_unfair_lock_lock(&dword_27D81E8A8);
  v2 = off_27D81E8B0;
  if (*(off_27D81E8B0 + 2) && (v3 = sub_22808DA18(), (v4 & 1) != 0))
  {
    v5 = *(v2[7] + v3);
  }

  else
  {
    v5 = 2;
  }

  os_unfair_lock_unlock(&dword_27D81E8A8);
  return v5;
}

uint64_t getEnumTagSinglePayload for FeatureFlag(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for FeatureFlag(_WORD *result, int a2, int a3)
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

unint64_t sub_22801EF60()
{
  result = qword_27D81E8B8;
  if (!qword_27D81E8B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D81E8B8);
  }

  return result;
}

uint64_t type metadata accessor for SummarizationResult(uint64_t a1)
{
  result = qword_2813C83C0;
  if (!qword_2813C83C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_22801F028(uint64_t a1)
{
  sub_22801F13C(319, qword_2813C7DF0, type metadata accessor for GMSModelInfo);
  if (v1 <= 0x3F)
  {
    sub_22801F13C(319, &qword_2813C4810, MEMORY[0x277D0DBB0]);
    if (v2 <= 0x3F)
    {
      sub_22801F13C(319, &qword_2813C8700, MEMORY[0x277D71C38]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_22801F13C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_22813977C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t get_enum_tag_for_layout_string_16SummarizationKit16StringSanitizing_pSg(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy216_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 144);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 144) = v8;
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  result = *(a2 + 160);
  v10 = *(a2 + 176);
  v11 = *(a2 + 192);
  *(a1 + 208) = *(a2 + 208);
  *(a1 + 176) = v10;
  *(a1 + 192) = v11;
  *(a1 + 160) = result;
  return result;
}

uint64_t sub_22801F1EC(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 216))
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

uint64_t sub_22801F234(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
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
      *(result + 216) = 1;
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

    *(result + 216) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_22801F2B8@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_228136FCC();
  MEMORY[0x28223BE20](v4 - 8);
  v5 = sub_228137AEC();
  MEMORY[0x28223BE20](v5 - 8);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E718, &qword_22813BB00);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v22 - v7;
  v9 = sub_228137B6C();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_228137BAC();
  (*(*(v13 - 8) + 56))(v12, 1, 1, v13);
  (*(v10 + 104))(v12, *MEMORY[0x277D0E5C0], v9);
  sub_228137AAC();
  sub_228137B3C();
  v14 = sub_228137B4C();
  (*(*(v14 - 8) + 56))(v8, 0, 1, v14);
  a2[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E8F8, &qword_22813C510);
  a2[4] = sub_2280248CC(&qword_2813C6EE0, &qword_27D81E8F8, &qword_22813C510);
  __swift_allocate_boxed_opaque_existential_1(a2);
  sub_228137BBC();
  v16 = a1[3];
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v16);
  (*(*(v15 + 8) + 8))(v16);
  v17 = a1[3];
  v18 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v17);
  (*(v18 + 24))(v17, v18);
  v20 = a1[3];
  v19 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v20);
  (*(*(v19 + 8) + 24))(v20);
  return sub_228137B5C();
}

uint64_t sub_22801F614@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t *a4@<X8>)
{
  v83 = a4;
  v84 = a3;
  v73 = a2;
  v5 = sub_228136FCC();
  MEMORY[0x28223BE20](v5 - 8);
  v78 = &v70 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E718, &qword_22813BB00);
  MEMORY[0x28223BE20](v7 - 8);
  v75 = &v70 - v8;
  v9 = sub_228137B6C();
  v71 = *(v9 - 8);
  v72 = v9;
  MEMORY[0x28223BE20](v9);
  v74 = &v70 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_228137BAC();
  v76 = *(v11 - 8);
  v77 = v11;
  MEMORY[0x28223BE20](v11);
  v82 = &v70 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E8F0, &unk_22813C500);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v70 - v14;
  v80 = type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfig.InputConfig(0);
  v16 = *(v80 - 8);
  MEMORY[0x28223BE20](v80);
  v18 = &v70 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E900, &qword_22813C518);
  MEMORY[0x28223BE20](v19 - 8);
  v21 = &v70 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E908, &qword_22813C520);
  MEMORY[0x28223BE20](v22 - 8);
  v24 = &v70 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E910, &qword_22813C528);
  MEMORY[0x28223BE20](v25 - 8);
  v27 = &v70 - v26;
  v28 = sub_228137B4C();
  v86 = *(v28 - 8);
  v87 = v28;
  MEMORY[0x28223BE20](v28);
  v30 = &v70 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_228137AEC();
  (*(*(v31 - 8) + 56))(v27, 1, 1, v31);
  v32 = sub_2281379AC();
  (*(*(v32 - 8) + 56))(v24, 1, 1, v32);
  v33 = sub_2281379FC();
  (*(*(v33 - 8) + 56))(v21, 1, 1, v33);
  v85 = v30;
  sub_228137B2C();
  v34 = objc_opt_self();

  if (qword_2813C4620 != -1)
  {
    swift_once();
  }

  v81 = v15;
  v79 = v16;
  if (byte_2813C4629 == 1)
  {
    v35 = a1;
    if (qword_27D81E2A0 != -1)
    {
      swift_once();
    }

    v36 = &off_27D81EDB0;
  }

  else
  {
    v35 = a1;
    if (qword_2813C76F0 != -1)
    {
      swift_once();
    }

    v36 = &qword_2813C76F8;
  }

  v37 = *(*v36 + 760);
  v38 = *(*v36 + 768);
  v39 = *(*v36 + 2208);

  if (qword_2813C4630 != -1)
  {
    swift_once();
  }

  if (byte_2813C4638 == 1)
  {
    v38(v88, v39);

    if ((v88[0] & 1) == 0)
    {
LABEL_14:
      if (qword_2813C49E0 != -1)
      {
        swift_once();
      }

      v40 = sub_22813882C();
      __swift_project_value_buffer(v40, qword_2813C8A20);
      v41 = sub_22813880C();
      v42 = sub_2281396DC();
      if (os_log_type_enabled(v41, v42))
      {
        v43 = swift_slowAlloc();
        *v43 = 0;
        _os_log_impl(&dword_227FC3000, v41, v42, "Input deny list has been disabled by internal override.", v43, 2u);
        MEMORY[0x22AAB28A0](v43, -1, -1);
      }

LABEL_26:
      sub_22801F2B8(v84, v83);
      return (*(v86 + 8))(v85, v87);
    }
  }

  else
  {

    if (!v37)
    {
      goto LABEL_14;
    }
  }

  v44 = v35;
  v45 = *(v35 + *(type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfig(0) + 20));
  v46 = OBJC_IVAR____TtCV16SummarizationKit56Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfigP33_0E8DBBF5E77A489AA82974336A322CBD13_StorageClass__input;
  swift_beginAccess();
  v47 = v81;
  sub_2280247C4(v45 + v46, v81, &qword_27D81E8F0, &unk_22813C500);
  v48 = v80;
  v49 = *(v79 + 48);
  if (v49(v47, 1, v80) == 1)
  {
    *v18 = 0;
    *(v18 + 1) = 0;
    *(v18 + 2) = 0xE000000000000000;
    *(v18 + 3) = MEMORY[0x277D84F90];
    *(v18 + 4) = 0;
    *(v18 + 5) = 0xE000000000000000;
    sub_228137D6C();
    v50 = *(v48 + 36);
    v51 = type metadata accessor for Com_Apple_Summarizationkit_Proto_LangCheckConfig(0);
    (*(*(v51 - 8) + 56))(&v18[v50], 1, 1, v51);
    if (v49(v47, 1, v48) != 1)
    {
      sub_22802482C(v47, &qword_27D81E8F0, &unk_22813C500);
    }
  }

  else
  {
    sub_228024980(v47, v18, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfig.InputConfig);
  }

  v52 = *v18;
  sub_228024920(v18, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfig.InputConfig);
  if ((v52 & 1) == 0)
  {
    goto LABEL_26;
  }

  v53 = v82;
  sub_2280200E8(v44, v82);
  v55 = v76;
  v54 = v77;
  v56 = v74;
  (*(v76 + 16))(v74, v53, v77);
  (*(v55 + 56))(v56, 0, 1, v54);
  (*(v71 + 104))(v56, *MEMORY[0x277D0E5C0], v72);
  v57 = v86;
  v58 = v75;
  v59 = v87;
  (*(v86 + 16))(v75, v85, v87);
  (*(v57 + 56))(v58, 0, 1, v59);
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E8F8, &qword_22813C510);
  v61 = v83;
  v83[3] = v60;
  v61[4] = sub_2280248CC(&qword_2813C6EE0, &qword_27D81E8F8, &qword_22813C510);
  __swift_allocate_boxed_opaque_existential_1(v61);
  sub_228137BBC();
  v62 = v84;
  v64 = v84[3];
  v63 = v84[4];
  __swift_project_boxed_opaque_existential_1(v84, v64);
  (*(*(v63 + 8) + 8))(v64);
  v65 = v62[3];
  v66 = v62[4];
  __swift_project_boxed_opaque_existential_1(v62, v65);
  (*(v66 + 24))(v65, v66);
  v68 = v62[3];
  v67 = v62[4];
  __swift_project_boxed_opaque_existential_1(v62, v68);
  (*(*(v67 + 8) + 24))(v68);
  sub_228137B5C();
  (*(v55 + 8))(v82, v54);
  return (*(v86 + 8))(v85, v87);
}

uint64_t sub_2280200E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v67 = a2;
  v3 = sub_2281379CC();
  MEMORY[0x28223BE20](v3 - 8);
  v66 = &v59 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfig.InputConfig(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v61 = &v59 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v64 = &v59 - v10;
  MEMORY[0x28223BE20](v9);
  v12 = &v59 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E8F0, &unk_22813C500);
  v14 = MEMORY[0x28223BE20](v13 - 8);
  v60 = &v59 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v62 = &v59 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v65 = &v59 - v19;
  MEMORY[0x28223BE20](v18);
  v21 = &v59 - v20;
  sub_22813722C();
  v22 = *(a1 + *(type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfig(0) + 20));
  v23 = OBJC_IVAR____TtCV16SummarizationKit56Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfigP33_0E8DBBF5E77A489AA82974336A322CBD13_StorageClass__input;
  swift_beginAccess();
  sub_2280247C4(v22 + v23, v21, &qword_27D81E8F0, &unk_22813C500);
  v24 = *(v6 + 48);
  v25 = v24(v21, 1, v5);
  sub_22802482C(v21, &qword_27D81E8F0, &unk_22813C500);
  if (v25 != 1)
  {
    v26 = v65;
    sub_2280247C4(v22 + v23, v65, &qword_27D81E8F0, &unk_22813C500);
    v27 = v24(v26, 1, v5);
    v63 = v5;
    if (v27 == 1)
    {
      *v12 = 0;
      *(v12 + 1) = 0;
      *(v12 + 2) = 0xE000000000000000;
      *(v12 + 3) = MEMORY[0x277D84F90];
      *(v12 + 4) = 0;
      *(v12 + 5) = 0xE000000000000000;
      sub_228137D6C();
      v28 = *(v5 + 36);
      v29 = type metadata accessor for Com_Apple_Summarizationkit_Proto_LangCheckConfig(0);
      (*(*(v29 - 8) + 56))(&v12[v28], 1, 1, v29);
      if (v24(v26, 1, v5) != 1)
      {
        sub_22802482C(v26, &qword_27D81E8F0, &unk_22813C500);
      }
    }

    else
    {
      sub_228024980(v26, v12, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfig.InputConfig);
    }

    v30 = *v12;
    sub_228024920(v12, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfig.InputConfig);
    v31 = v63;
    if (v30)
    {
      v32 = v22;
      v33 = v62;
      sub_2280247C4(v22 + v23, v62, &qword_27D81E8F0, &unk_22813C500);
      if (v24(v33, 1, v31) == 1)
      {
        v34 = v64;
        *v64 = 0;
        *(v34 + 1) = 0;
        *(v34 + 2) = 0xE000000000000000;
        *(v34 + 3) = MEMORY[0x277D84F90];
        *(v34 + 4) = 0;
        *(v34 + 5) = 0xE000000000000000;
        sub_228137D6C();
        v35 = *(v31 + 36);
        v36 = type metadata accessor for Com_Apple_Summarizationkit_Proto_LangCheckConfig(0);
        (*(*(v36 - 8) + 56))(&v34[v35], 1, 1, v36);
        if (v24(v33, 1, v31) != 1)
        {
          sub_22802482C(v33, &qword_27D81E8F0, &unk_22813C500);
        }
      }

      else
      {
        v34 = v64;
        sub_228024980(v33, v64, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfig.InputConfig);
      }

      v38 = *(v34 + 1);
      v37 = *(v34 + 2);

      sub_228024920(v34, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfig.InputConfig);

      v39 = HIBYTE(v37) & 0xF;
      if ((v37 & 0x2000000000000000) == 0)
      {
        v39 = v38 & 0xFFFFFFFFFFFFLL;
      }

      v40 = v63;
      if (v39)
      {
        v41 = v60;
        sub_2280247C4(v32 + v23, v60, &qword_27D81E8F0, &unk_22813C500);
        if (v24(v41, 1, v40) == 1)
        {
          v42 = v61;
          *v61 = 0;
          *(v42 + 1) = 0;
          *(v42 + 2) = 0xE000000000000000;
          *(v42 + 3) = MEMORY[0x277D84F90];
          *(v42 + 4) = 0;
          *(v42 + 5) = 0xE000000000000000;
          sub_228137D6C();
          v43 = *(v40 + 36);
          v44 = type metadata accessor for Com_Apple_Summarizationkit_Proto_LangCheckConfig(0);
          (*(*(v44 - 8) + 56))(&v42[v43], 1, 1, v44);
          if (v24(v41, 1, v40) != 1)
          {
            sub_22802482C(v41, &qword_27D81E8F0, &unk_22813C500);
          }
        }

        else
        {
          v42 = v61;
          sub_228024980(v41, v61, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfig.InputConfig);
        }

        v46 = *(v42 + 1);
        v45 = *(v42 + 2);

        sub_228024920(v42, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfig.InputConfig);
        if (qword_2813C49E0 != -1)
        {
          swift_once();
        }

        v47 = sub_22813882C();
        __swift_project_value_buffer(v47, qword_2813C8A20);

        v48 = sub_22813880C();
        v49 = sub_2281396BC();

        if (os_log_type_enabled(v48, v49))
        {
          v50 = swift_slowAlloc();
          v51 = swift_slowAlloc();
          *&v68[0] = v51;
          *v50 = 136446210;
          *(v50 + 4) = sub_227FCC340(v46, v45, v68);
          _os_log_impl(&dword_227FC3000, v48, v49, "input deny list function: %{public}s", v50, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm_4(v51);
          MEMORY[0x22AAB28A0](v51, -1, -1);
          MEMORY[0x22AAB28A0](v50, -1, -1);
        }

        sub_228023F34(v46, v45);

        __swift_destroy_boxed_opaque_existential_1Tm_4(v69);
        sub_227FCFAB8(v68, v69);
      }
    }
  }

  v52 = v70;
  v53 = v71;
  v54 = __swift_project_boxed_opaque_existential_1(v69, v70);
  MEMORY[0x28223BE20](v54);
  v56 = &v59 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v57 + 16))(v56);
  MEMORY[0x22AAAFF60](v56, v52, *(v53 + 16));
  sub_228137B9C();
  return __swift_destroy_boxed_opaque_existential_1Tm_4(v69);
}

void sub_228020974(void *a1@<X0>, uint64_t a2@<X1>, void (*a3)(char *)@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v55[1] = a4;
  v56 = a3;
  v65 = a2;
  v66 = a1;
  v69 = a5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E8F0, &unk_22813C500);
  MEMORY[0x28223BE20](v7 - 8);
  v55[0] = v55 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E8C8, &qword_22813C4D8);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v55 - v10;
  v57 = type metadata accessor for Com_Apple_Summarizationkit_Proto_SKUseCaseSafetyConfig(0);
  MEMORY[0x28223BE20](v57);
  v64 = v55 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfig(0);
  v62 = *(v13 - 8);
  v14 = MEMORY[0x28223BE20](v13);
  v58 = v55 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v17 = v55 - v16;
  v18 = objc_opt_self();

  if (qword_2813C4620 != -1)
  {
    swift_once();
  }

  v60 = v11;
  v61 = v17;
  v63 = v5;
  v59 = v13;
  if (byte_2813C4629 == 1)
  {
    if (qword_27D81E2A0 != -1)
    {
      swift_once();
    }

    v19 = &off_27D81EDB0;
  }

  else
  {
    if (qword_2813C76F0 != -1)
    {
      swift_once();
    }

    v19 = &qword_2813C76F8;
  }

  v20 = *(*v19 + 720);
  v21 = *(*v19 + 728);
  v22 = *(*v19 + 2208);

  if (qword_2813C4630 != -1)
  {
    swift_once();
  }

  if (byte_2813C4638 == 1)
  {
    v21(&v67, v22);

    if ((v67 & 1) == 0)
    {
LABEL_14:
      if (qword_2813C49E0 != -1)
      {
        swift_once();
      }

      v23 = sub_22813882C();
      __swift_project_value_buffer(v23, qword_2813C8A20);
      v24 = sub_22813880C();
      v25 = sub_2281396DC();
      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        *v26 = 0;
        _os_log_impl(&dword_227FC3000, v24, v25, "Model safety has been disabled by internal override.", v26, 2u);
        MEMORY[0x22AAB28A0](v26, -1, -1);
      }

      sub_22801F2B8(v66, v69);
      return;
    }
  }

  else
  {

    if (!v20)
    {
      goto LABEL_14;
    }
  }

  sub_2280247C4(v65, &v67, &qword_27D81E8E0, &unk_22813C4F0);
  if (v68)
  {
    sub_227FCFAB8(&v67, v69);
  }

  else
  {
    sub_22802482C(&v67, &qword_27D81E8E0, &unk_22813C4F0);
    v27 = v63;
    v28 = v66;
    v30 = v66[3];
    v29 = v66[4];
    __swift_project_boxed_opaque_existential_1(v66, v30);
    v31 = (*(*(v29 + 8) + 16))(v30);
    v33 = v32;
    v35 = v28[3];
    v34 = v28[4];
    __swift_project_boxed_opaque_existential_1(v28, v35);
    v36 = (*(*(v34 + 8) + 8))(v35);
    v37 = v64;
    sub_22805DD40(v31, v33, v36, v38, v64);
    if (v6)
    {

      if (*(v27 + 8))
      {
        sub_22801F2B8(v66, v69);
      }
    }

    else
    {

      v39 = v60;
      sub_2280247C4(v37 + *(v57 + 24), v60, &qword_27D81E8C8, &qword_22813C4D8);
      v41 = v62 + 48;
      v40 = *(v62 + 48);
      v42 = v59;
      if (v40(v39, 1, v59) == 1)
      {
        v62 = v41;
        v43 = v58;
        sub_228137D6C();
        v44 = *(v42 + 20);
        v45 = v61;
        if (qword_2813C5440 != -1)
        {
          swift_once();
        }

        v46 = qword_2813C5448;

        sub_228024920(v64, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKUseCaseSafetyConfig);
        *(v43 + v44) = v46;
        if (v40(v39, 1, v42) != 1)
        {
          sub_22802482C(v39, &qword_27D81E8C8, &qword_22813C4D8);
        }
      }

      else
      {
        sub_228024920(v37, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKUseCaseSafetyConfig);
        v43 = v58;
        sub_228024980(v39, v58, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfig);
        v45 = v61;
      }

      sub_228024980(v43, v45, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfig);
      if ((*(v27 + 8) & 1) != 0 || (v47 = *(v45 + *(v42 + 20)), v48 = OBJC_IVAR____TtCV16SummarizationKit56Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfigP33_0E8DBBF5E77A489AA82974336A322CBD13_StorageClass__input, swift_beginAccess(), v49 = v47 + v48, v50 = v55[0], sub_2280247C4(v49, v55[0], &qword_27D81E8F0, &unk_22813C500), v51 = type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfig.InputConfig(0), LODWORD(v47) = (*(*(v51 - 8) + 48))(v50, 1, v51), sub_22802482C(v50, &qword_27D81E8F0, &unk_22813C500), v47 != 1))
      {
        v56(v45);
      }

      else
      {
        v52 = swift_allocObject();
        *(v52 + 16) = 32;
        *(v52 + 24) = 0;
        *(v52 + 32) = 0;
        v53 = sub_227FF96D4(0, 0xD00000000000007FLL, 0x8000000228145610, 168, sub_2280249E8, v52);
        sub_227FDB3CC();
        swift_allocError();
        *v54 = 32;
        *(v54 + 8) = v53;
        swift_willThrow();
      }

      sub_228024920(v45, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfig);
    }
  }
}

uint64_t sub_2280211E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t *a4@<X8>)
{
  v64 = a3;
  v60 = a2;
  v67 = a4;
  v5 = sub_228136FCC();
  MEMORY[0x28223BE20](v5 - 8);
  v68 = &v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E718, &qword_22813BB00);
  MEMORY[0x28223BE20](v7 - 8);
  v66 = &v54 - v8;
  v9 = sub_228137B6C();
  v62 = *(v9 - 8);
  v63 = v9;
  MEMORY[0x28223BE20](v9);
  v65 = &v54 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E900, &qword_22813C518);
  MEMORY[0x28223BE20](v11 - 8);
  v58 = &v54 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E908, &qword_22813C520);
  MEMORY[0x28223BE20](v13 - 8);
  v57 = &v54 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E910, &qword_22813C528);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v54 - v16;
  v61 = sub_228137B4C();
  v59 = *(v61 - 8);
  MEMORY[0x28223BE20](v61);
  v69 = &v54 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E8F0, &unk_22813C500);
  MEMORY[0x28223BE20](v19 - 8);
  v21 = &v54 - v20;
  v22 = type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfig.InputConfig(0);
  v23 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v25 = &v54 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_228137AEC();
  v27 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v29 = &v54 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = *(a1 + *(type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfig(0) + 20));
  v31 = OBJC_IVAR____TtCV16SummarizationKit56Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfigP33_0E8DBBF5E77A489AA82974336A322CBD13_StorageClass__input;
  swift_beginAccess();
  sub_2280247C4(v30 + v31, v21, &qword_27D81E8F0, &unk_22813C500);
  v32 = *(v23 + 48);
  if (v32(v21, 1, v22) == 1)
  {
    *v25 = 0;
    *(v25 + 1) = 0;
    *(v25 + 2) = 0xE000000000000000;
    *(v25 + 3) = MEMORY[0x277D84F90];
    *(v25 + 4) = 0;
    *(v25 + 5) = 0xE000000000000000;
    sub_228137D6C();
    v33 = *(v22 + 36);
    v34 = type metadata accessor for Com_Apple_Summarizationkit_Proto_LangCheckConfig(0);
    (*(*(v34 - 8) + 56))(&v25[v33], 1, 1, v34);
    if (v32(v21, 1, v22) != 1)
    {
      sub_22802482C(v21, &qword_27D81E8F0, &unk_22813C500);
    }
  }

  else
  {
    sub_228024980(v21, v25, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfig.InputConfig);
  }

  v35 = *(v25 + 3);

  sub_228024920(v25, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfig.InputConfig);
  sub_228021A60(v35);

  v56 = v29;
  sub_228137AAC();
  v54 = v26;
  v55 = v27;
  (*(v27 + 16))(v17, v29, v26);
  (*(v27 + 56))(v17, 0, 1, v26);
  v36 = sub_2281379AC();
  (*(*(v36 - 8) + 56))(v57, 1, 1, v36);
  v37 = sub_2281379FC();
  (*(*(v37 - 8) + 56))(v58, 1, 1, v37);
  v38 = v69;
  sub_228137B2C();
  v39 = sub_228137BAC();
  v40 = v65;
  (*(*(v39 - 8) + 56))(v65, 1, 1, v39);
  (*(v62 + 104))(v40, *MEMORY[0x277D0E5C0], v63);
  v41 = v59;
  v42 = v66;
  v43 = v61;
  (*(v59 + 16))(v66, v38, v61);
  (*(v41 + 56))(v42, 0, 1, v43);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E8F8, &qword_22813C510);
  v45 = v67;
  v67[3] = v44;
  v45[4] = sub_2280248CC(&qword_2813C6EE0, &qword_27D81E8F8, &qword_22813C510);
  __swift_allocate_boxed_opaque_existential_1(v45);
  sub_228137BBC();
  v46 = v64;
  v48 = v64[3];
  v47 = v64[4];
  __swift_project_boxed_opaque_existential_1(v64, v48);
  (*(*(v47 + 8) + 8))(v48);
  v49 = v46[3];
  v50 = v46[4];
  __swift_project_boxed_opaque_existential_1(v46, v49);
  (*(v50 + 24))(v49, v50);
  v52 = v46[3];
  v51 = v46[4];
  __swift_project_boxed_opaque_existential_1(v46, v52);
  (*(*(v51 + 8) + 24))(v52);
  sub_228137B5C();
  (*(v41 + 8))(v69, v43);
  return (*(v55 + 8))(v56, v54);
}

void *sub_228021A60(uint64_t a1)
{
  v2 = sub_228137ADC();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v20 - v7;
  v9 = *(a1 + 16);
  if (v9)
  {
    v10 = (a1 + 40);
    v11 = MEMORY[0x277D84F90];
    while (1)
    {
      if (*v10 == 1)
      {
        v13 = *(v10 - 1);
        if (v13 <= 1)
        {
          if (!v13)
          {
            goto LABEL_5;
          }

          sub_228137ABC();
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v11 = sub_228133B48(0, v11[2] + 1, 1, v11);
          }

          v16 = v11[2];
          v18 = v11[3];
          v17 = v16 + 1;
          if (v16 >= v18 >> 1)
          {
            v11 = sub_228133B48((v18 > 1), v16 + 1, 1, v11);
          }

          v12 = v8;
        }

        else
        {
          if (v13 == 2 || v13 != 3)
          {
            goto LABEL_5;
          }

          sub_228137ACC();
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v11 = sub_228133B48(0, v11[2] + 1, 1, v11);
          }

          v16 = v11[2];
          v15 = v11[3];
          v17 = v16 + 1;
          if (v16 >= v15 >> 1)
          {
            v11 = sub_228133B48((v15 > 1), v16 + 1, 1, v11);
          }

          v12 = v6;
        }

        v11[2] = v17;
        (*(v3 + 32))(v11 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v16, v12, v2);
      }

LABEL_5:
      v10 += 16;
      if (!--v9)
      {
        return v11;
      }
    }
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_228021CA0(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v25 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E8C8, &qword_22813C4D8);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v24 - v8;
  v10 = type metadata accessor for Com_Apple_Summarizationkit_Proto_SKUseCaseSafetyConfig(0);
  MEMORY[0x28223BE20](v10);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfig(0);
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22805DD40(a1, a2, a3, v25, v12);
  sub_2280247C4(&v12[*(v10 + 24)], v9, &qword_27D81E8C8, &qword_22813C4D8);
  v17 = *(v14 + 48);
  if (v17(v9, 1, v13) == 1)
  {
    sub_228137D6C();
    v18 = *(v13 + 20);
    if (qword_2813C5440 != -1)
    {
      swift_once();
    }

    v19 = qword_2813C5448;

    sub_228024920(v12, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKUseCaseSafetyConfig);
    *&v16[v18] = v19;
    if (v17(v9, 1, v13) != 1)
    {
      sub_22802482C(v9, &qword_27D81E8C8, &qword_22813C4D8);
    }
  }

  else
  {
    sub_228024920(v12, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKUseCaseSafetyConfig);
    sub_228024980(v9, v16, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfig);
  }

  v20 = *&v16[*(v13 + 20)];
  v21 = OBJC_IVAR____TtCV16SummarizationKit56Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfigP33_0E8DBBF5E77A489AA82974336A322CBD13_StorageClass__summarizeUnsafeInput;
  swift_beginAccess();
  v22 = *(v20 + v21);
  sub_228024920(v16, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfig);
  return v22;
}

void sub_228021FA8(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v166 = a2;
  v4 = sub_228136FCC();
  MEMORY[0x28223BE20](v4 - 8);
  v143 = &v133 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_228137A7C();
  v160 = *(v6 - 8);
  v161 = v6;
  MEMORY[0x28223BE20](v6);
  v137 = &v133 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v162 = sub_228137A9C();
  v142 = *(v162 - 8);
  MEMORY[0x28223BE20](v162);
  v149 = &v133 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v150 = type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfig.OutputConfig(0);
  v154 = *(v150 - 8);
  v9 = MEMORY[0x28223BE20](v150);
  v136 = &v133 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v141 = &v133 - v11;
  v12 = sub_228137A1C();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v153 = &v133 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E8D0, &unk_22813C4E0);
  v16 = MEMORY[0x28223BE20](v15 - 8);
  v18 = &v133 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v16);
  v148 = &v133 - v20;
  MEMORY[0x28223BE20](v19);
  v138 = &v133 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E8C8, &qword_22813C4D8);
  MEMORY[0x28223BE20](v22 - 8);
  v146 = &v133 - v23;
  v144 = type metadata accessor for Com_Apple_Summarizationkit_Proto_SKUseCaseSafetyConfig(0);
  MEMORY[0x28223BE20](v144);
  v155 = (&v133 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  v25 = type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfig(0);
  v152 = *(v25 - 8);
  v26 = MEMORY[0x28223BE20](v25);
  v145 = &v133 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v29 = &v133 - v28;
  v30 = sub_228137AEC();
  v31 = MEMORY[0x28223BE20](v30 - 8);
  v140 = &v133 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E8D8, &unk_22813E420);
  MEMORY[0x28223BE20](v33 - 8);
  v159 = &v133 - v34;
  v157 = sub_228137A3C();
  v156 = *(v157 - 8);
  MEMORY[0x28223BE20](v157);
  v158 = &v133 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v167 = objc_opt_self();

  if (qword_2813C4620 != -1)
  {
    swift_once();
  }

  v147 = v25;
  v171 = byte_2813C4629;
  v163 = v13;
  v164 = v12;
  v151 = v29;
  v135 = v18;
  v36 = a1;
  if (byte_2813C4629 == 1)
  {
    v37 = v2;
    if (qword_27D81E2A0 != -1)
    {
      swift_once();
    }

    v38 = &off_27D81EDB0;
  }

  else
  {
    v37 = v2;
    if (qword_2813C76F0 != -1)
    {
      swift_once();
    }

    v38 = &qword_2813C76F8;
  }

  v39 = *(*v38 + 720);
  v40 = *(*v38 + 728);
  v41 = *(*v38 + 2208);

  if (qword_2813C4630 != -1)
  {
    swift_once();
  }

  v139 = byte_2813C4638;
  if (byte_2813C4638 == 1)
  {
    v40(&v170, v41);

    if ((v170 & 1) == 0)
    {
LABEL_14:
      v42 = v164;
      if (qword_2813C49E0 != -1)
      {
        swift_once();
      }

      v43 = sub_22813882C();
      __swift_project_value_buffer(v43, qword_2813C8A20);
      v44 = sub_22813880C();
      v45 = sub_2281396DC();
      if (os_log_type_enabled(v44, v45))
      {
        v46 = swift_slowAlloc();
        *v46 = 0;
        _os_log_impl(&dword_227FC3000, v44, v45, "Model safety has been disabled by internal override.", v46, 2u);
        MEMORY[0x22AAB28A0](v46, -1, -1);
      }

      v47 = v166;
      v166[3] = v162;
      v47[4] = &off_2813C8678;
      __swift_allocate_boxed_opaque_existential_1(v47);
      v48 = v158;
      (*(v160 + 56))(v158, 1, 1, v161);
      (*(v156 + 104))(v48, *MEMORY[0x277D0E578], v157);
      sub_228137AAC();
      v49 = v159;
      sub_228137A0C();
      (*(v163 + 56))(v49, 0, 1, v42);
      sub_228137A8C();
      return;
    }
  }

  else
  {

    if ((v39 & 1) == 0)
    {
      goto LABEL_14;
    }
  }

  sub_2280247C4(v165 + 56, &v168, &qword_27D81E8E0, &unk_22813C4F0);
  if (v169)
  {
    sub_227FCFAB8(&v168, &v170);
    sub_227FCFAB8(&v170, v166);
    return;
  }

  sub_22802482C(&v168, &qword_27D81E8E0, &unk_22813C4F0);
  v50 = a1;
  v52 = a1[3];
  v51 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v52);
  v53 = (*(*(v51 + 8) + 16))(v52);
  v55 = v54;
  v57 = a1[3];
  v56 = v36[4];
  __swift_project_boxed_opaque_existential_1(v36, v36[3]);
  v58 = (*(*(v56 + 8) + 8))(v57);
  v59 = v155;
  sub_22805DD40(v53, v55, v58, v60, v155);
  if (!v37)
  {
    v134 = v50;

    v64 = v146;
    sub_2280247C4(v59 + *(v144 + 24), v146, &qword_27D81E8C8, &qword_22813C4D8);
    v65 = v152 + 48;
    v66 = *(v152 + 48);
    v67 = v147;
    if (v66(v64, 1, v147) == 1)
    {
      v152 = v65;
      v68 = v145;
      sub_228137D6C();
      v69 = *(v67 + 20);
      v70 = v151;
      v71 = v165;
      if (qword_2813C5440 != -1)
      {
        swift_once();
      }

      v72 = qword_2813C5448;

      sub_228024920(v155, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKUseCaseSafetyConfig);
      *(v68 + v69) = v72;
      if (v66(v64, 1, v67) != 1)
      {
        sub_22802482C(v64, &qword_27D81E8C8, &qword_22813C4D8);
      }
    }

    else
    {
      sub_228024920(v59, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKUseCaseSafetyConfig);
      v68 = v145;
      sub_228024980(v64, v145, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfig);
      v70 = v151;
      v71 = v165;
    }

    sub_228024980(v68, v70, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfig);
    if ((*(v71 + 8) & 1) == 0)
    {
      v73 = *(v70 + *(v67 + 20));
      v74 = OBJC_IVAR____TtCV16SummarizationKit56Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfigP33_0E8DBBF5E77A489AA82974336A322CBD13_StorageClass__output;
      swift_beginAccess();
      v75 = v73 + v74;
      v76 = v138;
      sub_2280247C4(v75, v138, &qword_27D81E8D0, &unk_22813C4E0);
      LODWORD(v73) = (*(v154 + 48))(v76, 1, v150);
      sub_22802482C(v76, &qword_27D81E8D0, &unk_22813C4E0);
      if (v73 == 1)
      {
        v77 = swift_allocObject();
        *(v77 + 16) = 33;
        *(v77 + 24) = 0;
        *(v77 + 32) = 0;
        v78 = sub_227FF96D4(0, 0xD00000000000007FLL, 0x8000000228145610, 294, sub_2280247B8, v77);
        sub_227FDB3CC();
        swift_allocError();
        *v79 = 33;
        *(v79 + 8) = v78;
        swift_willThrow();
        sub_228024920(v70, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfig);
        return;
      }
    }

    v80 = *(v70 + *(v67 + 20));
    v81 = OBJC_IVAR____TtCV16SummarizationKit56Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfigP33_0E8DBBF5E77A489AA82974336A322CBD13_StorageClass__output;
    swift_beginAccess();
    v152 = v80;
    v82 = v80 + v81;
    v83 = v148;
    sub_2280247C4(v82, v148, &qword_27D81E8D0, &unk_22813C4E0);
    v84 = v154 + 48;
    v85 = *(v154 + 48);
    v86 = v150;
    if (v85(v83, 1, v150) == 1)
    {
      v87 = v141;
      *v141 = 0;
      v87[1] = 0;
      v87[2] = 0xE000000000000000;
      v87[3] = MEMORY[0x277D84F90];
      v87[4] = 0;
      v87[5] = 0xE000000000000000;
      sub_228137D6C();
      v88 = *(v86 + 36);
      v89 = type metadata accessor for Com_Apple_Summarizationkit_Proto_LangCheckConfig(0);
      v90 = v87 + v88;
      v91 = v148;
      (*(*(v89 - 8) + 56))(v90, 1, 1, v89);
      v92 = v86;
      v93 = v87;
      if (v85(v91, 1, v92) != 1)
      {
        sub_22802482C(v91, &qword_27D81E8D0, &unk_22813C4E0);
      }
    }

    else
    {
      v93 = v141;
      sub_228024980(v83, v141, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfig.OutputConfig);
    }

    v94 = *(v93 + 3);

    sub_228024920(v93, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfig.OutputConfig);
    sub_228021A60(v94);

    sub_228137AAC();
    sub_228137A0C();

    v154 = v84;
    v155 = v85;
    if (v171)
    {
      if (qword_27D81E2A0 != -1)
      {
        swift_once();
      }

      v95 = &off_27D81EDB0;
    }

    else
    {
      if (qword_2813C76F0 != -1)
      {
        swift_once();
      }

      v95 = &qword_2813C76F8;
    }

    v96 = *(*v95 + 800);
    v97 = *(*v95 + 808);
    v98 = *(*v95 + 2208);

    if (v139)
    {
      v97(&v172, v98);

      v100 = v163;
      v99 = v164;
      if ((v172 & 1) == 0)
      {
LABEL_48:
        v101 = v134;
        if (qword_2813C49E0 != -1)
        {
          swift_once();
        }

        v102 = sub_22813882C();
        __swift_project_value_buffer(v102, qword_2813C8A20);
        v103 = sub_22813880C();
        v104 = sub_2281396DC();
        if (os_log_type_enabled(v103, v104))
        {
          v105 = swift_slowAlloc();
          *v105 = 0;
          _os_log_impl(&dword_227FC3000, v103, v104, "Output deny list has been disabled by internal override.", v105, 2u);
          MEMORY[0x22AAB28A0](v105, -1, -1);
        }

        goto LABEL_60;
      }
    }

    else
    {

      v100 = v163;
      v99 = v164;
      if (!v96)
      {
        goto LABEL_48;
      }
    }

    v106 = v152 + v81;
    v107 = v135;
    sub_2280247C4(v106, v135, &qword_27D81E8D0, &unk_22813C4E0);
    v108 = v150;
    v109 = v155;
    v110 = v155(v107, 1, v150);
    v101 = v134;
    if (v110 == 1)
    {
      v111 = v136;
      *v136 = 0;
      *(v111 + 1) = 0;
      *(v111 + 2) = 0xE000000000000000;
      *(v111 + 3) = MEMORY[0x277D84F90];
      *(v111 + 4) = 0;
      *(v111 + 5) = 0xE000000000000000;
      sub_228137D6C();
      v112 = *(v108 + 36);
      v113 = type metadata accessor for Com_Apple_Summarizationkit_Proto_LangCheckConfig(0);
      (*(*(v113 - 8) + 56))(&v111[v112], 1, 1, v113);
      if (v109(v107, 1, v108) != 1)
      {
        sub_22802482C(v107, &qword_27D81E8D0, &unk_22813C4E0);
      }
    }

    else
    {
      v111 = v136;
      sub_228024980(v107, v136, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfig.OutputConfig);
    }

    v114 = *v111;
    sub_228024920(v111, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfig.OutputConfig);
    v99 = v164;
    if (v114)
    {
      v115 = v137;
      sub_2280236A8(v151, v137);
      v116 = v160;
      v117 = v158;
      v118 = v115;
      v119 = v161;
      (*(v160 + 16))(v158, v118, v161);
      (*(v116 + 56))(v117, 0, 1, v119);
      (*(v156 + 104))(v117, *MEMORY[0x277D0E578], v157);
      v120 = v159;
      (*(v100 + 16))(v159, v153, v99);
      (*(v100 + 56))(v120, 0, 1, v99);
      sub_228137A8C();
      (*(v116 + 8))(v137, v119);
LABEL_61:
      v123 = v100;
      v124 = v101[3];
      v125 = v101[4];
      __swift_project_boxed_opaque_existential_1(v101, v124);
      v167 = (*(*(v125 + 8) + 8))(v124);
      v126 = v101[3];
      v127 = v101[4];
      __swift_project_boxed_opaque_existential_1(v101, v126);
      (*(v127 + 24))(v126, v127);
      v129 = v101[3];
      v128 = v101[4];
      __swift_project_boxed_opaque_existential_1(v101, v129);
      (*(*(v128 + 8) + 24))(v129);
      v130 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E8E8, &qword_22813F0E0);
      v131 = v166;
      v166[3] = v130;
      v131[4] = sub_2280248CC(qword_2813C6EE8, &qword_27D81E8E8, &qword_22813F0E0);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v131);
      sub_228137A2C();
      (*(v123 + 8))(v153, v164);
      sub_228024920(v151, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfig);
      (*(v142 + 32))(boxed_opaque_existential_1 + *(v130 + 36), v149, v162);
      return;
    }

LABEL_60:
    v121 = v158;
    (*(v160 + 56))(v158, 1, 1, v161);
    (*(v156 + 104))(v121, *MEMORY[0x277D0E578], v157);
    v122 = v159;
    (*(v100 + 16))(v159, v153, v99);
    (*(v100 + 56))(v122, 0, 1, v99);
    sub_228137A8C();
    goto LABEL_61;
  }

  if (*(v165 + 8))
  {
    v61 = v166;
    v166[3] = v162;
    v61[4] = &off_2813C8678;
    __swift_allocate_boxed_opaque_existential_1(v61);
    v62 = v158;
    (*(v160 + 56))(v158, 1, 1, v161);
    (*(v156 + 104))(v62, *MEMORY[0x277D0E578], v157);
    sub_228137AAC();
    v63 = v159;
    sub_228137A0C();
    (*(v163 + 56))(v63, 0, 1, v164);
    sub_228137A8C();
  }
}

uint64_t sub_2280236A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v67 = a2;
  v3 = sub_2281379EC();
  MEMORY[0x28223BE20](v3 - 8);
  v66 = &v59 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfig.OutputConfig(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v61 = &v59 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v64 = &v59 - v10;
  MEMORY[0x28223BE20](v9);
  v12 = &v59 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E8D0, &unk_22813C4E0);
  v14 = MEMORY[0x28223BE20](v13 - 8);
  v60 = &v59 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v62 = &v59 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v65 = &v59 - v19;
  MEMORY[0x28223BE20](v18);
  v21 = &v59 - v20;
  sub_2281372AC();
  v22 = *(a1 + *(type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfig(0) + 20));
  v23 = OBJC_IVAR____TtCV16SummarizationKit56Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfigP33_0E8DBBF5E77A489AA82974336A322CBD13_StorageClass__output;
  swift_beginAccess();
  sub_2280247C4(v22 + v23, v21, &qword_27D81E8D0, &unk_22813C4E0);
  v24 = *(v6 + 48);
  v25 = v24(v21, 1, v5);
  sub_22802482C(v21, &qword_27D81E8D0, &unk_22813C4E0);
  if (v25 != 1)
  {
    v26 = v65;
    sub_2280247C4(v22 + v23, v65, &qword_27D81E8D0, &unk_22813C4E0);
    v27 = v24(v26, 1, v5);
    v63 = v5;
    if (v27 == 1)
    {
      *v12 = 0;
      *(v12 + 1) = 0;
      *(v12 + 2) = 0xE000000000000000;
      *(v12 + 3) = MEMORY[0x277D84F90];
      *(v12 + 4) = 0;
      *(v12 + 5) = 0xE000000000000000;
      sub_228137D6C();
      v28 = *(v5 + 36);
      v29 = type metadata accessor for Com_Apple_Summarizationkit_Proto_LangCheckConfig(0);
      (*(*(v29 - 8) + 56))(&v12[v28], 1, 1, v29);
      if (v24(v26, 1, v5) != 1)
      {
        sub_22802482C(v26, &qword_27D81E8D0, &unk_22813C4E0);
      }
    }

    else
    {
      sub_228024980(v26, v12, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfig.OutputConfig);
    }

    v30 = *v12;
    sub_228024920(v12, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfig.OutputConfig);
    v31 = v63;
    if (v30)
    {
      v32 = v22;
      v33 = v62;
      sub_2280247C4(v22 + v23, v62, &qword_27D81E8D0, &unk_22813C4E0);
      if (v24(v33, 1, v31) == 1)
      {
        v34 = v64;
        *v64 = 0;
        *(v34 + 1) = 0;
        *(v34 + 2) = 0xE000000000000000;
        *(v34 + 3) = MEMORY[0x277D84F90];
        *(v34 + 4) = 0;
        *(v34 + 5) = 0xE000000000000000;
        sub_228137D6C();
        v35 = *(v31 + 36);
        v36 = type metadata accessor for Com_Apple_Summarizationkit_Proto_LangCheckConfig(0);
        (*(*(v36 - 8) + 56))(&v34[v35], 1, 1, v36);
        if (v24(v33, 1, v31) != 1)
        {
          sub_22802482C(v33, &qword_27D81E8D0, &unk_22813C4E0);
        }
      }

      else
      {
        v34 = v64;
        sub_228024980(v33, v64, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfig.OutputConfig);
      }

      v38 = *(v34 + 1);
      v37 = *(v34 + 2);

      sub_228024920(v34, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfig.OutputConfig);

      v39 = HIBYTE(v37) & 0xF;
      if ((v37 & 0x2000000000000000) == 0)
      {
        v39 = v38 & 0xFFFFFFFFFFFFLL;
      }

      v40 = v63;
      if (v39)
      {
        v41 = v60;
        sub_2280247C4(v32 + v23, v60, &qword_27D81E8D0, &unk_22813C4E0);
        if (v24(v41, 1, v40) == 1)
        {
          v42 = v61;
          *v61 = 0;
          *(v42 + 1) = 0;
          *(v42 + 2) = 0xE000000000000000;
          *(v42 + 3) = MEMORY[0x277D84F90];
          *(v42 + 4) = 0;
          *(v42 + 5) = 0xE000000000000000;
          sub_228137D6C();
          v43 = *(v40 + 36);
          v44 = type metadata accessor for Com_Apple_Summarizationkit_Proto_LangCheckConfig(0);
          (*(*(v44 - 8) + 56))(&v42[v43], 1, 1, v44);
          if (v24(v41, 1, v40) != 1)
          {
            sub_22802482C(v41, &qword_27D81E8D0, &unk_22813C4E0);
          }
        }

        else
        {
          v42 = v61;
          sub_228024980(v41, v61, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfig.OutputConfig);
        }

        v46 = *(v42 + 1);
        v45 = *(v42 + 2);

        sub_228024920(v42, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfig.OutputConfig);
        if (qword_2813C49E0 != -1)
        {
          swift_once();
        }

        v47 = sub_22813882C();
        __swift_project_value_buffer(v47, qword_2813C8A20);

        v48 = sub_22813880C();
        v49 = sub_2281396BC();

        if (os_log_type_enabled(v48, v49))
        {
          v50 = swift_slowAlloc();
          v51 = swift_slowAlloc();
          *&v68[0] = v51;
          *v50 = 136446210;
          *(v50 + 4) = sub_227FCC340(v46, v45, v68);
          _os_log_impl(&dword_227FC3000, v48, v49, "output deny list function: %{public}s", v50, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm_4(v51);
          MEMORY[0x22AAB28A0](v51, -1, -1);
          MEMORY[0x22AAB28A0](v50, -1, -1);
        }

        sub_228024208(v46, v45);

        __swift_destroy_boxed_opaque_existential_1Tm_4(v69);
        sub_227FCFAB8(v68, v69);
      }
    }
  }

  v52 = v70;
  v53 = v71;
  v54 = __swift_project_boxed_opaque_existential_1(v69, v70);
  MEMORY[0x28223BE20](v54);
  v56 = &v59 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v57 + 16))(v56);
  MEMORY[0x22AAAFF80](v56, v52, *(v53 + 16));
  sub_228137A6C();
  return __swift_destroy_boxed_opaque_existential_1Tm_4(v69);
}

void *sub_228023F34(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000026 && 0x8000000228145800 == a2 || (sub_2281399BC() & 1) != 0)
  {

    return MEMORY[0x282187CE8]();
  }

  else if (a1 == 0xD00000000000002ELL && 0x8000000228145830 == a2 || (sub_2281399BC() & 1) != 0)
  {

    return MEMORY[0x282187D28]();
  }

  else if (a1 == 0xD00000000000002FLL && 0x8000000228145860 == a2 || (sub_2281399BC() & 1) != 0)
  {

    return MEMORY[0x282187D30]();
  }

  else if (a1 == 0xD000000000000026 && 0x8000000228145890 == a2 || (sub_2281399BC() & 1) != 0)
  {

    return MEMORY[0x282187CF0]();
  }

  else if (a1 == 0xD00000000000002ALL && 0x80000002281458C0 == a2 || (sub_2281399BC() & 1) != 0)
  {

    return MEMORY[0x282187D10]();
  }

  else if (a1 == 0xD000000000000029 && 0x80000002281458F0 == a2 || (sub_2281399BC() & 1) != 0)
  {

    return MEMORY[0x282187D08]();
  }

  else if (a1 == 0xD000000000000035 && 0x8000000228145920 == a2 || (sub_2281399BC() & 1) != 0)
  {

    return MEMORY[0x282187D40]();
  }

  else
  {

    return sub_22813722C();
  }
}

void *sub_228024208(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000027 && 0x8000000228145690 == a2 || (sub_2281399BC() & 1) != 0)
  {

    return MEMORY[0x282187D58]();
  }

  else if (a1 == 0xD00000000000002FLL && 0x80000002281456C0 == a2 || (sub_2281399BC() & 1) != 0)
  {

    return MEMORY[0x282187D98]();
  }

  else if (a1 == 0xD000000000000030 && 0x80000002281456F0 == a2 || (sub_2281399BC() & 1) != 0)
  {

    return MEMORY[0x282187DA0]();
  }

  else if (a1 == 0xD000000000000027 && 0x8000000228145730 == a2 || (sub_2281399BC() & 1) != 0)
  {

    return MEMORY[0x282187D60]();
  }

  else if (a1 == 0xD00000000000002BLL && 0x8000000228145760 == a2 || (sub_2281399BC() & 1) != 0)
  {

    return MEMORY[0x282187D80]();
  }

  else if (a1 == 0xD00000000000002ALL && 0x8000000228145790 == a2 || (sub_2281399BC() & 1) != 0)
  {

    return MEMORY[0x282187D78]();
  }

  else if (a1 == 0xD000000000000036 && 0x80000002281457C0 == a2 || (sub_2281399BC() & 1) != 0)
  {

    return MEMORY[0x282187DB0]();
  }

  else
  {

    return sub_2281372AC();
  }
}

uint64_t sub_2280244DC(uint64_t a1)
{
  v2 = type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfig(0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v23 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E8C8, &qword_22813C4D8);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v21 - v9;
  v11 = *(type metadata accessor for Com_Apple_Summarizationkit_Proto_SKUseCaseSafetyConfig(0) + 24);
  v22 = a1;
  sub_2280247C4(a1 + v11, v10, &qword_27D81E8C8, &qword_22813C4D8);
  v12 = *(v3 + 48);
  v13 = 1;
  v14 = v12(v10, 1, v2);
  sub_22802482C(v10, &qword_27D81E8C8, &qword_22813C4D8);
  if (v14 != 1)
  {
    sub_2280247C4(v22 + v11, v8, &qword_27D81E8C8, &qword_22813C4D8);
    if (v12(v8, 1, v2) == 1)
    {
      v15 = v23;
      sub_228137D6C();
      v16 = *(v2 + 20);
      if (qword_2813C5440 != -1)
      {
        swift_once();
      }

      *(v15 + v16) = qword_2813C5448;
      v17 = v12(v8, 1, v2);

      if (v17 != 1)
      {
        sub_22802482C(v8, &qword_27D81E8C8, &qword_22813C4D8);
      }
    }

    else
    {
      v15 = v23;
      sub_228024980(v8, v23, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfig);
    }

    v18 = *(v15 + *(v2 + 20));
    v19 = OBJC_IVAR____TtCV16SummarizationKit56Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfigP33_0E8DBBF5E77A489AA82974336A322CBD13_StorageClass__throwErrorIfFinalDecisionUnsafe;
    swift_beginAccess();
    v13 = *(v18 + v19);
    sub_228024920(v15, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfig);
  }

  return v13;
}

uint64_t sub_2280247C4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_22802482C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t objectdestroyTm_3()
{
  if (*(v0 + 24))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2280248CC(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_228024920(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_228024980(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_2280249EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 24))
  {
    sub_227FCFAD4(a1, v9);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v8 = *v3;
    sub_22801B474(v9, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v8;
  }

  else
  {
    sub_2280292BC(a1, &qword_27D81E830, &unk_22813C630);
    sub_228027284(a2, a3, v9);

    return sub_2280292BC(v9, &qword_27D81E830, &unk_22813C630);
  }

  return result;
}

uint64_t sub_228024ABC(uint64_t a1, void *a2)
{
  if (*(a1 + 24))
  {
    sub_227FCFAD4(a1, &v13);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v2;
    v5 = v14;
    v6 = __swift_mutable_project_boxed_opaque_existential_0(&v13, v14);
    MEMORY[0x28223BE20](v6);
    v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v9 + 16))(v8);
    sub_228028528(v8, a2, isUniquelyReferenced_nonNull_native, &v12, v5);
    __swift_destroy_boxed_opaque_existential_0(&v13);
    result = sub_2280292BC(a2, &qword_27D81E5E8, &unk_22813C660);
    *v2 = v12;
  }

  else
  {
    sub_2280292BC(a1, &qword_27D81E940, &qword_22813C658);
    sub_228027328(sub_22808CA18, &qword_27D81E5E8, &unk_22813C660, sub_22801CA00, &v13);
    sub_2280292BC(a2, &qword_27D81E5E8, &unk_22813C660);
    return sub_2280292BC(&v13, &qword_27D81E940, &qword_22813C658);
  }

  return result;
}

uint64_t sub_228024C84(uint64_t a1, void *a2)
{
  if (*(a1 + 24))
  {
    sub_227FCFAD4(a1, &v13);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v2;
    v5 = v14;
    v6 = __swift_mutable_project_boxed_opaque_existential_0(&v13, v14);
    MEMORY[0x28223BE20](v6);
    v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v9 + 16))(v8);
    sub_228028758(v8, a2, isUniquelyReferenced_nonNull_native, &v12, v5);
    __swift_destroy_boxed_opaque_existential_0(&v13);
    result = sub_2280292BC(a2, &qword_27D81E610, &unk_22813B450);
    *v2 = v12;
  }

  else
  {
    sub_2280292BC(a1, &qword_27D81E940, &qword_22813C658);
    sub_228027328(sub_22808CE90, &qword_27D81E610, &unk_22813B450, sub_22801CE64, &v13);
    sub_2280292BC(a2, &qword_27D81E610, &unk_22813B450);
    return sub_2280292BC(&v13, &qword_27D81E940, &qword_22813C658);
  }

  return result;
}

uint64_t sub_228024E4C(uint64_t a1, char a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E7E8, &unk_22813BD10);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v20 - v7;
  v9 = sub_228136EAC();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v10 + 48))(a1, 1, v9) == 1)
  {
    sub_2280292BC(a1, &qword_27D81E7E8, &unk_22813BD10);
    v13 = sub_22808CE24(a2 & 1);
    if (v14)
    {
      v15 = v13;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v17 = *v2;
      v21 = *v3;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_22801D1C0();
        v17 = v21;
      }

      (*(v10 + 32))(v8, *(v17 + 56) + *(v10 + 72) * v15, v9);
      sub_228027D20(v15, v17);
      *v3 = v17;
      (*(v10 + 56))(v8, 0, 1, v9);
    }

    else
    {
      (*(v10 + 56))(v8, 1, 1, v9);
    }

    return sub_2280292BC(v8, &qword_27D81E7E8, &unk_22813BD10);
  }

  else
  {
    (*(v10 + 32))(v12, a1, v9);
    v18 = swift_isUniquelyReferenced_nonNull_native();
    v21 = *v2;
    result = sub_22801B8A0(v12, a2 & 1, v18);
    *v2 = v21;
  }

  return result;
}

uint64_t sub_22802509C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E798, &qword_22813BCA0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v16 - v8;
  v10 = type metadata accessor for GMSModelInfoCache.CacheEntry(0);
  MEMORY[0x28223BE20](v10);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v13 + 48))(a1, 1) == 1)
  {
    sub_2280292BC(a1, &qword_27D81E798, &qword_22813BCA0);
    sub_2280274CC(a2, a3, v9);

    return sub_2280292BC(v9, &qword_27D81E798, &qword_22813BCA0);
  }

  else
  {
    sub_227FC8304(a1, v12, type metadata accessor for GMSModelInfoCache.CacheEntry);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v3;
    sub_22801BC18(v12, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v17;
  }

  return result;
}

uint64_t sub_228025270(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E950, &qword_22813C670);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v20 - v7;
  v9 = type metadata accessor for SummarizationResult(0);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v10 + 48))(a1, 1, v9) == 1)
  {
    sub_2280292BC(a1, &qword_27D81E950, &qword_22813C670);
    v13 = sub_22808CFAC(a2);
    if (v14)
    {
      v15 = v13;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v17 = *v3;
      v21 = *v3;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_22801D9F0();
        v17 = v21;
      }

      sub_227FC8304(*(v17 + 56) + *(v10 + 72) * v15, v8, type metadata accessor for SummarizationResult);
      sub_2280280DC(v15, v17);
      *v3 = v17;
      (*(v10 + 56))(v8, 0, 1, v9);
    }

    else
    {
      (*(v10 + 56))(v8, 1, 1, v9);
    }

    return sub_2280292BC(v8, &qword_27D81E950, &qword_22813C670);
  }

  else
  {
    sub_227FC8304(a1, v12, type metadata accessor for SummarizationResult);
    v18 = swift_isUniquelyReferenced_nonNull_native();
    v21 = *v3;
    result = sub_22801BDF4(v12, a2, v18);
    *v3 = v21;
  }

  return result;
}

uint64_t sub_2280254C4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E948, &qword_22813E1F0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v20 - v7;
  v9 = type metadata accessor for PartialSummariesOperation.TaskResult(0);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v10 + 48))(a1, 1, v9) == 1)
  {
    sub_2280292BC(a1, &qword_27D81E948, &qword_22813E1F0);
    v13 = sub_22808D0CC(a2);
    if (v14)
    {
      v15 = v13;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v17 = *v3;
      v21 = *v3;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_22801DC28();
        v17 = v21;
      }

      sub_227FC8304(*(v17 + 56) + *(v10 + 72) * v15, v8, type metadata accessor for PartialSummariesOperation.TaskResult);
      sub_228028368(v15, v17);
      *v3 = v17;
      (*(v10 + 56))(v8, 0, 1, v9);
    }

    else
    {
      (*(v10 + 56))(v8, 1, 1, v9);
    }

    return sub_2280292BC(v8, &qword_27D81E948, &qword_22813E1F0);
  }

  else
  {
    sub_227FC8304(a1, v12, type metadata accessor for PartialSummariesOperation.TaskResult);
    v18 = swift_isUniquelyReferenced_nonNull_native();
    v21 = *v3;
    result = sub_22801BF48(v12, a2, v18);
    *v3 = v21;
  }

  return result;
}

uint64_t SKAssetManager.__allocating_init()()
{
  v0 = swift_allocObject();
  SKAssetManager.init()();
  return v0;
}

uint64_t sub_22802577C()
{
  v1 = *v0;
  sub_228139AAC();
  MEMORY[0x22AAB2060](v1);
  return sub_228139AEC();
}

uint64_t sub_2280257F0(uint64_t a1)
{
  v2 = *v1;
  sub_228139AAC();
  MEMORY[0x22AAB2060](v2);
  return sub_228139AEC();
}

unint64_t sub_228025834()
{
  if (*v0)
  {
    return 0xD000000000000024;
  }

  else
  {
    return 0xD00000000000002CLL;
  }
}

unint64_t SKAssetManager.init()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E7E8, &unk_22813BD10);
  MEMORY[0x28223BE20](v2 - 8);
  v84 = &v73 - v3;
  v4 = sub_228136EAC();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v73 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v73 - v9;
  *(v1 + 16) = 0xD00000000000001ALL;
  *(v1 + 24) = 0x8000000228145960;
  *(v1 + 32) = sub_228028BD0(&unk_283B5B1D0);
  *(v1 + 40) = sub_227FE4ED0(MEMORY[0x277D84F90]);
  v83 = v1 + 40;
  v11 = [objc_opt_self() sharedManager];

  v12 = sub_22813927C();

  v13 = [v11 retrieveAssetSet:v12 usages:0];

  if (v13)
  {
    v85 = v10;
    v81 = v8;
    v82 = v4;
    v74 = v1;
    v14 = *(v1 + 32);
    v15 = v14 + 56;
    v16 = 1 << *(v14 + 32);
    v17 = -1;
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    v1 = v17 & *(v14 + 56);
    v18 = (v16 + 63) >> 6;
    v79 = (v5 + 56);
    v80 = (v5 + 16);
    v78 = (v5 + 8);
    v90 = v14;

    v19 = 0;
    v88 = "izationkit.ota.rules";
    v89 = "com.apple.summarizationkit";
    v20.n128_u64[0] = 136446210;
    v75 = v20;
    v20.n128_u64[0] = 136446466;
    v73 = v20;
    v86 = v13;
    v76 = v15;
    v77 = v18;
    while (v1)
    {
      v21 = v19;
LABEL_10:
      v22 = *(*(v90 + 48) + (__clz(__rbit64(v1)) | (v21 << 6)));
      v1 &= v1 - 1;
      if (v22)
      {
        v23 = 0xD000000000000024;
      }

      else
      {
        v23 = 0xD00000000000002CLL;
      }

      if (v22)
      {
        v24 = v89;
      }

      else
      {
        v24 = v88;
      }

      v91 = v23;
      v25 = sub_22813927C();
      v26 = [v13 assetNamed_];

      if (v26)
      {
        v27 = [v26 location];
        if (v27)
        {
          v87 = v26;
          v28 = v85;
          v29 = v27;
          sub_228136E5C();

          v30 = *v80;
          v31 = v84;
          v32 = v82;
          (*v80)(v84, v28, v82);
          (*v79)(v31, 0, 1, v32);
          swift_beginAccess();
          sub_228024E4C(v31, v22);
          swift_endAccess();
          if (qword_2813C49A8 != -1)
          {
            swift_once();
          }

          v33 = sub_22813882C();
          __swift_project_value_buffer(v33, qword_2813C89F0);
          v34 = v81;
          v30(v81, v28, v32);

          v35 = sub_22813880C();
          v36 = sub_2281396CC();

          if (os_log_type_enabled(v35, v36))
          {
            v37 = v32;
            v38 = swift_slowAlloc();
            v39 = swift_slowAlloc();
            v92[0] = v39;
            *v38 = v73.n128_u32[0];
            v40 = sub_227FCC340(v91, v24 | 0x8000000000000000, v92);
            LODWORD(v91) = v36;
            v41 = v40;

            *(v38 + 4) = v41;
            *(v38 + 12) = 2082;
            sub_228029218(&qword_2813C8798, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
            v42 = sub_22813998C();
            v44 = v43;
            v45 = v34;
            v46 = *v78;
            (*v78)(v45, v37);
            v47 = sub_227FCC340(v42, v44, v92);

            *(v38 + 14) = v47;
            _os_log_impl(&dword_227FC3000, v35, v91, "Asset %{public}s is mapped to %{public}s", v38, 0x16u);
            swift_arrayDestroy();
            MEMORY[0x22AAB28A0](v39, -1, -1);
            MEMORY[0x22AAB28A0](v38, -1, -1);

            v46(v85, v37);
          }

          else
          {

            v63 = *v78;
            (*v78)(v34, v32);
            v63(v28, v32);
          }

          v19 = v21;
          v13 = v86;
          v15 = v76;
          v18 = v77;
        }

        else
        {
          if (qword_2813C49A8 != -1)
          {
            swift_once();
          }

          v55 = sub_22813882C();
          __swift_project_value_buffer(v55, qword_2813C89F0);

          v56 = sub_22813880C();
          v57 = sub_2281396DC();

          if (os_log_type_enabled(v56, v57))
          {
            v58 = swift_slowAlloc();
            v59 = swift_slowAlloc();
            v92[0] = v59;
            *v58 = v75.n128_u32[0];
            v60 = sub_227FCC340(v91, v24 | 0x8000000000000000, v92);
            v87 = v26;
            v61 = v60;

            *(v58 + 4) = v61;
            _os_log_impl(&dword_227FC3000, v56, v57, "Path for asset %{public}s is nil", v58, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v59);
            MEMORY[0x22AAB28A0](v59, -1, -1);
            v62 = v58;
            v13 = v86;
            MEMORY[0x22AAB28A0](v62, -1, -1);
          }

          else
          {
          }

          v19 = v21;
        }
      }

      else
      {
        if (qword_2813C49A8 != -1)
        {
          swift_once();
        }

        v48 = sub_22813882C();
        __swift_project_value_buffer(v48, qword_2813C89F0);

        v49 = sub_22813880C();
        v50 = sub_2281396DC();

        if (os_log_type_enabled(v49, v50))
        {
          v51 = swift_slowAlloc();
          v52 = swift_slowAlloc();
          v92[0] = v52;
          *v51 = v75.n128_u32[0];
          v53 = sub_227FCC340(v91, v24 | 0x8000000000000000, v92);

          *(v51 + 4) = v53;
          _os_log_impl(&dword_227FC3000, v49, v50, "Asset %{public}s does not exist", v51, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v52);
          MEMORY[0x22AAB28A0](v52, -1, -1);
          v54 = v51;
          v13 = v86;
          MEMORY[0x22AAB28A0](v54, -1, -1);
        }

        else
        {
        }

        v19 = v21;
      }
    }

    while (1)
    {
      v21 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v21 >= v18)
      {

        return v74;
      }

      v1 = *(v15 + 8 * v21);
      ++v19;
      if (v1)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
    goto LABEL_43;
  }

  if (qword_2813C49A8 != -1)
  {
LABEL_43:
    swift_once();
  }

  v64 = sub_22813882C();
  __swift_project_value_buffer(v64, qword_2813C89F0);

  v65 = sub_22813880C();
  v66 = sub_2281396DC();

  if (os_log_type_enabled(v65, v66))
  {
    v67 = swift_slowAlloc();
    v68 = swift_slowAlloc();
    v92[0] = v68;
    *v67 = 136446210;
    v69 = *(v1 + 16);
    v70 = *(v1 + 24);

    v71 = sub_227FCC340(v69, v70, v92);

    *(v67 + 4) = v71;
    _os_log_impl(&dword_227FC3000, v65, v66, "Asset set %{public}s does not exist", v67, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v68);
    MEMORY[0x22AAB28A0](v68, -1, -1);
    MEMORY[0x22AAB28A0](v67, -1, -1);
  }

  return v1;
}

uint64_t sub_228026254@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v31 = a4;
  v8 = sub_228136E3C();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v32[-1] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_228136EAC();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v32[-1] - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v16 = *(v4 + 40);
  if (*(v16 + 16) && (v17 = sub_22808CE24(a1 & 1), (v18 & 1) != 0))
  {
    (*(v13 + 16))(v15, *(v16 + 56) + *(v13 + 72) * v17, v12);
    v32[0] = a2;
    v32[1] = a3;
    (*(v9 + 104))(v11, *MEMORY[0x277CC91D8], v8);
    sub_227FDB420();
    v19 = v31;
    sub_228136E9C();
    (*(v9 + 8))(v11, v8);
    (*(v13 + 8))(v15, v12);
    v20 = v19;
    v21 = 0;
  }

  else
  {
    if (qword_2813C49A8 != -1)
    {
      swift_once();
    }

    v22 = sub_22813882C();
    __swift_project_value_buffer(v22, qword_2813C89F0);
    v23 = sub_22813880C();
    v24 = sub_2281396DC();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v32[0] = v26;
      *v25 = 136446210;
      if (a1)
      {
        v27 = 0xD000000000000024;
      }

      else
      {
        v27 = 0xD00000000000002CLL;
      }

      if (a1)
      {
        v28 = "com.apple.summarizationkit";
      }

      else
      {
        v28 = "izationkit.ota.rules";
      }

      v29 = sub_227FCC340(v27, v28 | 0x8000000000000000, v32);

      *(v25 + 4) = v29;
      _os_log_impl(&dword_227FC3000, v23, v24, "Asset ID %{public}s is not registered", v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v26);
      MEMORY[0x22AAB28A0](v26, -1, -1);
      MEMORY[0x22AAB28A0](v25, -1, -1);
    }

    v21 = 1;
    v20 = v31;
  }

  return (*(v13 + 56))(v20, v21, 1, v12);
}

uint64_t sub_2280265D4(int a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_228136C0C();
  v36 = *(v6 - 8);
  v37 = v6;
  v7 = MEMORY[0x28223BE20](v6);
  v34 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v39 = &v30 - v9;
  v40 = sub_228136C1C();
  v35 = *(v40 - 8);
  v10 = MEMORY[0x28223BE20](v40);
  v41 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = sub_2281392DC();
  MEMORY[0x28223BE20](v12 - 8);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E7E8, &unk_22813BD10);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v30 - v14;
  v16 = sub_228136EAC();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v30 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = a1;
  v33 = a2;
  v38 = a3;
  sub_228026254(a1 & 1, a2, a3, v15);
  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {
    sub_2280292BC(v15, &qword_27D81E7E8, &unk_22813BD10);
    return 0;
  }

  else
  {
    (*(v17 + 32))(v19, v15, v16);
    v20 = sub_228136EBC();
    v31 = v17;
    v30 = v16;
    v21 = v20;
    v23 = v22;
    v25 = sub_227FC87CC(v20, v22);
    v26 = v21;
    v28 = v27;
    sub_227FC9210(v26, v23);
    sub_2281392CC();
    v29 = sub_2281392BC();
    sub_227FC9210(v25, v28);
    (*(v31 + 8))(v19, v30);
    return v29;
  }
}

void *SKAssetManager.deinit()
{

  return v0;
}

uint64_t SKAssetManager.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

void *sub_228026EB4(uint64_t a1, unint64_t a2)
{
  v3 = sub_228026F00(a1, a2);
  sub_228027030(&unk_283B5AAE8);
  return v3;
}

void *sub_228026F00(uint64_t a1, unint64_t a2)
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

  v6 = sub_22802711C(v5, 0);
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

  result = sub_2281398AC();
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
        v10 = sub_2281393EC();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_22802711C(v10, 0);
        result = sub_22813985C();
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

uint64_t sub_228027030(uint64_t result)
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

  result = sub_228027190(result, v11, 1, v3);
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

void *sub_22802711C(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E958, &qword_22813C678);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size_0(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_228027190(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E958, &qword_22813C678);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
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

double sub_228027284@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = v3;
  v6 = sub_22808C964(a1, a2);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v12 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_22801C85C();
      v10 = v12;
    }

    sub_227FCFAD4((*(v10 + 56) + 32 * v8), a3);
    sub_228027638(v8, v10);
    *v4 = v10;
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

double sub_228027328@<D0>(uint64_t (*a1)(void)@<X1>, uint64_t *a2@<X2>, uint64_t *a3@<X3>, void (*a4)(void)@<X4>, _OWORD *a5@<X8>)
{
  v9 = v5;
  v11 = a1();
  if (v12)
  {
    v13 = v11;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *v5;
    v17 = *v9;
    if (!isUniquelyReferenced_nonNull_native)
    {
      a4();
      v15 = v17;
    }

    sub_2280292BC(*(v15 + 48) + 48 * v13, a2, a3);
    sub_227FCFAD4((*(v15 + 56) + 32 * v13), a5);
    sub_228027998(v13, v15, a2, a3);
    *v9 = v15;
  }

  else
  {
    result = 0.0;
    *a5 = 0u;
    a5[1] = 0u;
  }

  return result;
}

double sub_228027400@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = sub_2280D3358(a1, *v2, *a1);
  if (v5)
  {
    v6 = v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v8 = *v2;
    v10 = *v2;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_22801D03C();
      v8 = v10;
    }

    sub_227FCFAD4((*(v8 + 56) + 32 * v6), a2);
    sub_228027B6C(v6, v8);
    *v2 = v8;
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

uint64_t sub_2280274CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = sub_22808C964(a1, a2);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v20 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_22801D760();
      v10 = v20;
    }

    v11 = *(v10 + 56);
    v12 = type metadata accessor for GMSModelInfoCache.CacheEntry(0);
    v19 = *(v12 - 8);
    sub_227FC8304(v11 + *(v19 + 72) * v8, a3, type metadata accessor for GMSModelInfoCache.CacheEntry);
    sub_228027EF0(v8, v10);
    *v4 = v10;
    v13 = *(v19 + 56);
    v14 = a3;
    v15 = 0;
    v16 = v12;
  }

  else
  {
    v17 = type metadata accessor for GMSModelInfoCache.CacheEntry(0);
    v13 = *(*(v17 - 8) + 56);
    v16 = v17;
    v14 = a3;
    v15 = 1;
  }

  return v13(v14, v15, 1, v16);
}

uint64_t sub_228027638(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_22813980C() + 1) & ~v5;
    do
    {
      sub_228139AAC();

      sub_22813923C();
      v10 = sub_228139AEC();

      v11 = v10 & v7;
      if (v3 >= v8)
      {
        if (v11 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v11 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v11)
      {
LABEL_10:
        v12 = *(a2 + 48);
        v13 = (v12 + 16 * v3);
        v14 = (v12 + 16 * v6);
        if (v3 != v6 || v13 >= v14 + 1)
        {
          *v13 = *v14;
        }

        v15 = *(a2 + 56);
        v16 = (v15 + 32 * v3);
        v17 = (v15 + 32 * v6);
        if (v3 != v6 || v16 >= v17 + 2)
        {
          v9 = v17[1];
          *v16 = *v17;
          v16[1] = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v18 = *(a2 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v20;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_2280277E8(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_22813980C() + 1) & ~v5;
    do
    {
      sub_228139AAC();

      sub_22813923C();
      v9 = sub_228139AEC();

      v10 = v9 & v7;
      if (v3 >= v8)
      {
        if (v10 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v10 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v10)
      {
LABEL_10:
        v11 = *(a2 + 48);
        v12 = (v11 + 16 * v3);
        v13 = (v11 + 16 * v6);
        if (v3 != v6 || v12 >= v13 + 1)
        {
          *v12 = *v13;
        }

        v14 = *(a2 + 56);
        v15 = (v14 + 8 * v3);
        v16 = (v14 + 8 * v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v17 = *(a2 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v19;
    ++*(a2 + 36);
  }

  return result;
}