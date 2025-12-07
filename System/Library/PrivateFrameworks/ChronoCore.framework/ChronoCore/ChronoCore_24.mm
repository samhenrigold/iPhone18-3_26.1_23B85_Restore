uint64_t sub_224C84990(uint64_t a1, uint64_t a2)
{
  v29 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3900, &unk_224DB4640);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v27 = &v27 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5B90, &qword_224DB5C50);
  v8 = v7 - 8;
  MEMORY[0x28223BE20](v7, v9);
  v11 = &v27 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5060, &qword_224DB5620);
  v14 = MEMORY[0x28223BE20](v12 - 8, v13);
  v28 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14, v16);
  v18 = &v27 - v17;
  v19 = *MEMORY[0x277CFA130];
  swift_beginAccess();
  (*(v4 + 16))(v18, v29, v3);
  (*(v4 + 56))(v18, 0, 1, v3);
  v20 = *(v8 + 56);
  sub_224A3796C(a1 + v19, v11, &unk_27D6F5060, &qword_224DB5620);
  sub_224A3796C(v18, &v11[v20], &unk_27D6F5060, &qword_224DB5620);
  v21 = *(v4 + 48);
  if (v21(v11, 1, v3) != 1)
  {
    v23 = v28;
    sub_224A3796C(v11, v28, &unk_27D6F5060, &qword_224DB5620);
    if (v21(&v11[v20], 1, v3) != 1)
    {
      v24 = v27;
      (*(v4 + 32))(v27, &v11[v20], v3);
      sub_224A33088(&unk_281351960, &qword_27D6F3900, &unk_224DB4640, MEMORY[0x277CF9FB0]);
      v22 = sub_224DAEDD8();
      v25 = *(v4 + 8);
      v25(v24, v3);
      sub_224A3311C(v18, &unk_27D6F5060, &qword_224DB5620);
      v25(v23, v3);
      sub_224A3311C(v11, &unk_27D6F5060, &qword_224DB5620);
      return v22 & 1;
    }

    sub_224A3311C(v18, &unk_27D6F5060, &qword_224DB5620);
    (*(v4 + 8))(v23, v3);
    goto LABEL_6;
  }

  sub_224A3311C(v18, &unk_27D6F5060, &qword_224DB5620);
  if (v21(&v11[v20], 1, v3) != 1)
  {
LABEL_6:
    sub_224A3311C(v11, &qword_27D6F5B90, &qword_224DB5C50);
    v22 = 0;
    return v22 & 1;
  }

  sub_224A3311C(v11, &unk_27D6F5060, &qword_224DB5620);
  v22 = 1;
  return v22 & 1;
}

uint64_t sub_224C84DA4(uint64_t a1, uint64_t a2)
{
  v51 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F6570, &qword_224DB3C40);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v40 - v7;
  v9 = sub_224DA9878();
  v10 = *(v9 - 8);
  v12 = MEMORY[0x28223BE20](v9, v11);
  v14 = &v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12, v15);
  v50 = &v40 - v16;
  if (a2)
  {
    v47 = v8;
    v17 = v2;
    __swift_project_boxed_opaque_existential_1(v2 + 20, *(v2 + 23));
    result = sub_224DADA48();
    if (result)
    {
      v19 = sub_224DACF78();

      if (*(v19 + 16) && (v20 = sub_224A3E7EC(v51), (v21 & 1) != 0))
      {
        v40 = v10;
        v41 = v9;
        v22 = *(*(v19 + 56) + 8 * v20);

        sub_224DA9868();
        if (v22 >> 62)
        {
          goto LABEL_32;
        }

        for (i = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_224DAF838())
        {
          v24 = 0;
          v43 = &v17[OBJC_IVAR____TtC10ChronoCore18LiveControlService_reloadStateService];
          v44 = v4;
          v52 = i;
          v53 = v22 & 0xC000000000000001;
          v45 = v22 + 32;
          v46 = v22 & 0xFFFFFFFFFFFFFF8;
          v25 = a2 + 56;
          v42 = (v5 + 8);
          while (1)
          {
            if (v53)
            {
              v26 = MEMORY[0x22AA5DCC0](v24, v22);
            }

            else
            {
              if (v24 >= *(v46 + 16))
              {
                goto LABEL_31;
              }

              v26 = *(v45 + 8 * v24);
            }

            v17 = v26;
            if (__OFADD__(v24++, 1))
            {
              break;
            }

            v28 = [v26 kind];
            v29 = sub_224DAEE18();
            v31 = v30;

            if (*(a2 + 16) && (sub_224DAFE68(), sub_224DAEE78(), v32 = sub_224DAFEA8(), v33 = -1 << *(a2 + 32), v34 = v32 & ~v33, ((*(v25 + ((v34 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v34) & 1) != 0))
            {
              v5 = ~v33;
              while (1)
              {
                v35 = (*(a2 + 48) + 16 * v34);
                v36 = *v35 == v29 && v35[1] == v31;
                if (v36 || (sub_224DAFD88() & 1) != 0)
                {
                  break;
                }

                v34 = (v34 + 1) & v5;
                if (((*(v25 + ((v34 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v34) & 1) == 0)
                {
                  goto LABEL_8;
                }
              }

              v37 = *(v43 + 3);
              v49 = *(v43 + 4);
              v48 = __swift_project_boxed_opaque_existential_1(v43, v37);
              v38 = v47;
              sub_224DAF528();
              v39 = [v17 kind];
              sub_224DAEE18();
              v4 = v22;

              v5 = v44;
              sub_224DAD1B8();

              (*v42)(v38, v5);
            }

            else
            {
LABEL_8:
            }

            if (v24 == v52)
            {
              goto LABEL_33;
            }
          }

          __break(1u);
LABEL_31:
          __break(1u);
LABEL_32:
          ;
        }

LABEL_33:

        return (*(v40 + 8))(v50, v41);
      }

      else
      {
      }
    }
  }

  else
  {
    __swift_project_boxed_opaque_existential_1(&v2[OBJC_IVAR____TtC10ChronoCore18LiveControlService_reloadStateService], *&v2[OBJC_IVAR____TtC10ChronoCore18LiveControlService_reloadStateService + 24]);
    sub_224DA9868();
    sub_224DAF528();
    sub_224DAD1B8();
    (*(v5 + 8))(v8, v4);
    return (*(v10 + 8))(v14, v9);
  }

  return result;
}

uint64_t sub_224C852BC@<X0>(uint64_t a2@<X8>)
{
  v3 = sub_224DAB728();
  v4 = *(v3 - 8);
  v6 = MEMORY[0x28223BE20](v3, v5);
  v8 = v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v9);
  v11 = v22 - v10;
  v12 = sub_224DAC168();
  if (v12 && (v13 = sub_224D5D26C(v12), v15 = v14, , v13))
  {

    sub_224DABEB8();
    __swift_project_boxed_opaque_existential_1(v27, v27[3]);
    sub_224DAD168();
    __swift_destroy_boxed_opaque_existential_1(v27);
    (*(v4 + 16))(v8, v11, v3);
    sub_224DAE4D8();
    swift_getKeyPath();
    sub_224DAB518();
    sub_224DAE4B8();
    KeyPath = swift_getKeyPath();
    v22[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4CB0, &qword_224DBCF60);
    sub_224DAB558();
    v25 = v3;
    v24 = v4;
    *(swift_allocObject() + 16) = xmmword_224DB30F0;
    v23 = v11;
    v27[0] = MEMORY[0x277D84F90];
    sub_224C8DD50(&qword_281350ED8, MEMORY[0x277CDFB98], MEMORY[0x277CDFBA8]);
    v22[2] = v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4CB8, &qword_224DBA500);
    v22[0] = a2;
    sub_224A33088(&qword_281350BB8, &qword_27D6F4CB8, &qword_224DBA500, MEMORY[0x277D83970]);
    sub_224DAF788();
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_224DB3100;
    sub_224DAB548();
    v27[0] = v16;
    sub_224DAF788();
    v17 = v22[0];
    sub_224DAE4B8();

    (*(v24 + 8))(v23, v25);
    v18 = sub_224DAE4F8();
    return (*(*(v18 - 8) + 56))(v17, 0, 1, v18);
  }

  else
  {
    v20 = sub_224DAE4F8();
    v21 = *(*(v20 - 8) + 56);

    return v21(a2, 1, 1, v20);
  }
}

uint64_t sub_224C856E8(void *a1, uint64_t a2, uint64_t a3)
{
  v92 = sub_224DACB98();
  v90 = *(v92 - 8);
  MEMORY[0x28223BE20](v92, v6);
  v91 = &v83 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = sub_224DACB08();
  v87 = *(v88 - 8);
  MEMORY[0x28223BE20](v88, v8);
  v89 = &v83 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = sub_224DACB28();
  v84 = *(v85 - 8);
  MEMORY[0x28223BE20](v85, v10);
  v86 = &v83 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = sub_224DACC88();
  v93 = *(v94 - 8);
  MEMORY[0x28223BE20](v94, v12);
  v109 = &v83 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v115 = sub_224DAC2B8();
  v112 = *(v115 - 8);
  v15 = MEMORY[0x28223BE20](v115, v14);
  v17 = &v83 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v15, v18);
  v21 = &v83 - v20;
  v23 = MEMORY[0x28223BE20](v19, v22);
  v101 = &v83 - v24;
  MEMORY[0x28223BE20](v23, v25);
  v102 = (&v83 - v26);
  v27 = sub_224DAB258();
  v29 = MEMORY[0x28223BE20](v27, v28);
  v31 = &v83 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = MEMORY[0x28223BE20](v29, v32);
  v36 = &v83 - v34;
  v100 = a3;
  v107 = a1;
  v108 = v33;
  v110 = v21;
  v114 = v31;
  v95 = v35;
  if (a2)
  {
    v83 = v17;

    v38 = sub_224A3DADC(v37);

    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    result = sub_224DAD3C8();
    v40 = *(result + 16);
    v113 = v38;
    v106 = v40;
    if (v40)
    {
      v41 = 0;
      v103 = (v38 & 0xC000000000000001);
      v104 = (v112 + 16);
      if (v38 < 0)
      {
        v42 = v38;
      }

      else
      {
        v42 = v38 & 0xFFFFFFFFFFFFFF8;
      }

      v111 = v38 + 56;
      v97 = v42;
      *&v98 = v112 + 32;
      v96 = (v112 + 8);
      v99 = MEMORY[0x277D84F90];
      v31 = v114;
      v43 = v115;
      v44 = v102;
      v105 = result;
      while (1)
      {
        if (v41 >= *(result + 16))
        {
          __break(1u);
          return result;
        }

        v45 = (*(v112 + 80) + 32) & ~*(v112 + 80);
        v46 = *(v112 + 72);
        (*(v112 + 16))(v44, result + v45 + v46 * v41, v43);
        v47 = sub_224DAC2A8();
        v48 = [v47 extensionIdentity];

        if (v103)
        {
          v49 = v48;
          v50 = sub_224DAF888();

          if (v50)
          {
            goto LABEL_13;
          }
        }

        else
        {
          v56 = v113;
          if (*(v113 + 16))
          {
            sub_224DAF538();
            v57 = sub_224DAF698();
            v58 = -1 << *(v56 + 32);
            v59 = v57 & ~v58;
            if ((*(v111 + ((v59 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v59))
            {
              v60 = ~v58;
              while (1)
              {
                v61 = *(*(v56 + 48) + 8 * v59);
                v62 = sub_224DAF6A8();

                if (v62)
                {
                  break;
                }

                v59 = (v59 + 1) & v60;
                v56 = v113;
                if (((*(v111 + ((v59 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v59) & 1) == 0)
                {
                  goto LABEL_7;
                }
              }

              a3 = v100;
              v21 = v110;
              v44 = v102;
LABEL_13:
              v51 = *v98;
              (*v98)(v101, v44, v115);
              v52 = v99;
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v116 = v52;
              if ((isUniquelyReferenced_nonNull_native & 1) == 0)
              {
                sub_224ADA520(0, *(v52 + 16) + 1, 1);
                v52 = v116;
              }

              v55 = *(v52 + 16);
              v54 = *(v52 + 24);
              if (v55 >= v54 >> 1)
              {
                sub_224ADA520((v54 > 1), v55 + 1, 1);
                v52 = v116;
              }

              *(v52 + 16) = v55 + 1;
              v99 = v52;
              v43 = v115;
              v51(v52 + v45 + v55 * v46, v101, v115);
              v31 = v114;
              v44 = v102;
              goto LABEL_9;
            }
          }

LABEL_7:

          a3 = v100;
          v21 = v110;
          v31 = v114;
          v44 = v102;
        }

        v43 = v115;
        (*v96)(v44, v115);
LABEL_9:
        ++v41;
        result = v105;
        if (v41 == v106)
        {
          goto LABEL_29;
        }
      }
    }

    v99 = MEMORY[0x277D84F90];
    v31 = v114;
    v43 = v115;
LABEL_29:

    v17 = v83;
    v67 = v99;
  }

  else
  {
    (*(v35 + 16))(&v83 - v34, a3 + OBJC_IVAR____TtC10ChronoCore18LiveControlService_logger);
    v63 = sub_224DAB228();
    v64 = sub_224DAF2A8();
    if (os_log_type_enabled(v63, v64))
    {
      v65 = swift_slowAlloc();
      *v65 = 0;
      _os_log_impl(&dword_224A2F000, v63, v64, "Locale change detected - reloading all controls", v65, 2u);
      v66 = v65;
      v31 = v114;
      MEMORY[0x22AA5EED0](v66, -1, -1);
    }

    (*(v95 + 8))(v36, v108);
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    v67 = sub_224DAD3C8();
    v43 = v115;
  }

  (*(v84 + 104))(v86, *MEMORY[0x277CF9B50], v85);
  (*(v87 + 104))(v89, *MEMORY[0x277CF9B40], v88);
  (*(v90 + 104))(v91, *MEMORY[0x277CF9BA8], v92);
  sub_224DACC48();
  sub_224DACC38();
  v69 = *(v67 + 16);
  if (v69)
  {
    v111 = OBJC_IVAR____TtC10ChronoCore18LiveControlService_logger;
    v106 = *(v112 + 16);
    v70 = (*(v112 + 80) + 32) & ~*(v112 + 80);
    v99 = v67;
    v71 = v67 + v70;
    v105 = *(v112 + 72);
    v104 = (v95 + 16);
    v112 += 16;
    v102 = (v95 + 8);
    *&v68 = 138543362;
    v98 = v68;
    v103 = (v112 - 8);
    v101 = ((v112 - 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000);
    v72 = v108;
    do
    {
      v113 = v69;
      v74 = v106;
      v106(v21, v71, v43);
      (*v104)(v31, a3 + v111, v72);
      v74(v17, v21, v43);
      v75 = sub_224DAB228();
      v76 = v17;
      v77 = sub_224DAF2A8();
      if (os_log_type_enabled(v75, v77))
      {
        v78 = swift_slowAlloc();
        v79 = swift_slowAlloc();
        *v78 = v98;
        v80 = sub_224DAC2A8();
        v81 = [v80 extensionIdentity];

        v73 = *v103;
        (*v103)(v76, v115);
        *(v78 + 4) = v81;
        *v79 = v81;
        a3 = v100;
        _os_log_impl(&dword_224A2F000, v75, v77, "Locale change detected - reloading controls for %{public}@", v78, 0xCu);
        sub_224A3311C(v79, &unk_27D6F69F0, &unk_224DB3900);
        v82 = v79;
        v31 = v114;
        MEMORY[0x22AA5EED0](v82, -1, -1);
        MEMORY[0x22AA5EED0](v78, -1, -1);
      }

      else
      {

        v73 = *v103;
        (*v103)(v76, v43);
      }

      v17 = v76;
      v72 = v108;
      (*v102)(v31, v108);
      __swift_project_boxed_opaque_existential_1(v107, v107[3]);
      v21 = v110;
      v31 = v114;
      sub_224DAD3E8();
      v43 = v115;
      v73(v21, v115);
      v71 += v105;
      v69 = v113 - 1;
    }

    while (v113 != 1);
  }

  return (*(v93 + 8))(v109, v94);
}

double sub_224C86260(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v98 = a4;
  v96 = sub_224DACB98();
  v94 = *(v96 - 8);
  MEMORY[0x28223BE20](v96, v7);
  v95 = &v77 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = sub_224DACB08();
  v92 = *(v86 - 8);
  MEMORY[0x28223BE20](v86, v9);
  v93 = &v77 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = sub_224DACB28();
  v89 = *(v90 - 8);
  MEMORY[0x28223BE20](v90, v11);
  v91 = &v77 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = sub_224DACC88();
  v97 = *(v87 - 8);
  MEMORY[0x28223BE20](v87, v13);
  v107 = &v77 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F46D8, &unk_224DB7630);
  MEMORY[0x28223BE20](v15 - 8, v16);
  v88 = &v77 - v17;
  v18 = sub_224DAE918();
  v105 = *(v18 - 8);
  v106 = v18;
  v20 = MEMORY[0x28223BE20](v18, v19);
  v22 = &v77 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20, v23);
  v25 = &v77 - v24;
  v104 = sub_224DAC2B8();
  v100 = *(v104 - 8);
  v27 = MEMORY[0x28223BE20](v104, v26);
  v29 = &v77 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27, v30);
  v99 = &v77 - v31;
  v32 = sub_224DAB258();
  v102 = *(v32 - 1);
  v103 = v32;
  MEMORY[0x28223BE20](v32, v33);
  v101 = &v77 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v111[0] = a3;
  sub_224DAD3D8();
  if (!v111[7])
  {
    v81 = v29;
    v82 = v22;
    v85 = v25;
    v83 = a1;
    v35 = v98;
    (*(v102 + 16))(v101, v98 + OBJC_IVAR____TtC10ChronoCore18LiveControlService_logger, v103);
    v36 = *(v100 + 16);
    v37 = v104;
    v80 = v100 + 16;
    v79 = v36;
    v36(v99, a2, v104);

    v38 = sub_224DAB228();
    v39 = sub_224DAF2A8();

    v40 = os_log_type_enabled(v38, v39);
    v78 = a3;
    v84 = a2;
    if (v40)
    {
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v111[0] = v42;
      *v41 = 136446466;
      sub_224C8DD50(&unk_281350E08, MEMORY[0x277CF99B8], MEMORY[0x277CF99E0]);
      v43 = v99;
      v44 = v39;
      v45 = sub_224DAFD28();
      v46 = a3;
      v48 = v47;
      (*(v100 + 8))(v43, v37);
      v49 = sub_224A33F74(v45, v48, v111);

      *(v41 + 4) = v49;
      *(v41 + 12) = 2082;
      v51 = *(v46 + 16);
      v50 = *(v46 + 24);

      v52 = sub_224A33F74(v51, v50, v111);

      *(v41 + 14) = v52;
      _os_log_impl(&dword_224A2F000, v38, v44, "%{public}s:%{public}s Creating live control entry", v41, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AA5EED0](v42, -1, -1);
      v53 = v41;
      v35 = v98;
      MEMORY[0x22AA5EED0](v53, -1, -1);
    }

    else
    {

      (*(v100 + 8))(v99, v37);
    }

    (*(v102 + 8))(v101, v103);
    v54 = v86;
    v55 = v88;
    v56 = sub_224DAC2A8();
    v57 = [v56 extensionIdentity];

    sub_224A3317C((v35 + 41), v111);
    __swift_project_boxed_opaque_existential_1(v111, v111[3]);
    v103 = v57;
    v58 = v108;
    sub_224DADBE8();
    v108 = v58;
    v59 = v83;
    v60 = v93;
    if (v58)
    {

      __swift_destroy_boxed_opaque_existential_1(v111);
      v62 = v105;
      v61 = v106;
      (*(v105 + 56))(v55, 1, 1, v106);
      v108 = 0;
      v63 = v85;
      v64 = v94;
    }

    else
    {
      v62 = v105;
      v61 = v106;
      (*(v105 + 56))(v55, 0, 1, v106);
      __swift_destroy_boxed_opaque_existential_1(v111);
      v65 = (*(v62 + 48))(v55, 1, v61);
      v64 = v94;
      if (v65 != 1)
      {
        (*(v62 + 32))(v85, v55, v61);
LABEL_12:
        v66 = v96;
        v67 = v95;
        (*(v89 + 104))(v91, *MEMORY[0x277CF9B50], v90);
        (*(v92 + 104))(v60, *MEMORY[0x277CF9B40], v54);
        (*(v64 + 104))(v67, *MEMORY[0x277CF9BF0], v66);
        sub_224DACC48();
        sub_224DACC38();
        __swift_project_boxed_opaque_existential_1(v35 + 9, v35[12]);
        v68 = v84;
        v69 = sub_224DAC2A8();
        v70 = [v69 extensionIdentity];

        sub_224DADA58();
        sub_224DABF48();
        v79(v81, v68, v104);
        sub_224A3317C(v111, &v110);
        v72 = v105;
        v71 = v106;
        v73 = v85;
        (*(v105 + 16))(v82, v85, v106);
        v74 = sub_224DABEF8();
        __swift_project_boxed_opaque_existential_1(v59, v59[3]);
        v109 = v74;
        v110 = v78;
        sub_224DAD3B8();
        __swift_project_boxed_opaque_existential_1(v59, v59[3]);
        v75 = v107;
        sub_224DAD3E8();

        __swift_destroy_boxed_opaque_existential_1(v111);
        (*(v97 + 8))(v75, v87);
        (*(v72 + 8))(v73, v71);
        goto LABEL_13;
      }

      v63 = v85;
    }

    (*(v62 + 104))(v63, *MEMORY[0x277CE3D50], v61);
    if ((*(v62 + 48))(v55, 1, v61) != 1)
    {
      sub_224A3311C(v55, &qword_27D6F46D8, &unk_224DB7630);
    }

    goto LABEL_12;
  }

LABEL_13:

  return result;
}

uint64_t sub_224C86DA4@<X0>(void *a1@<X0>, void (*a2)(char *, char *, uint64_t)@<X1>, uint64_t a3@<X8>)
{
  v25 = a2;
  v26 = a1;
  v27 = a3;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F30D0, &unk_224DB2AC0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v24 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F56C0, &unk_224DB3580);
  v10 = MEMORY[0x28223BE20](v8 - 8, v9);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v10, v13);
  v16 = &v24 - v15;
  MEMORY[0x28223BE20](v14, v17);
  v19 = &v24 - v18;
  v20 = *(v4 + 56);
  v20(&v24 - v18, 1, 1, v3);
  sub_224A3796C(v25, v16, &qword_27D6F56C0, &unk_224DB3580);
  if ((*(v4 + 48))(v16, 1, v3) == 1)
  {
    sub_224A3311C(v16, &qword_27D6F56C0, &unk_224DB3580);
  }

  else
  {
    v25 = *(v4 + 32);
    v25(v7, v16, v3);
    sub_224DAA1F8();
    v21 = sub_224DAA048();

    if (v21)
    {
      sub_224A3311C(v19, &qword_27D6F56C0, &unk_224DB3580);
      v25(v19, v7, v3);
      v20(v19, 0, 1, v3);
    }

    else
    {
      (*(v4 + 8))(v7, v3);
    }
  }

  sub_224A3796C(v19, v12, &qword_27D6F56C0, &unk_224DB3580);
  v22 = v26;
  sub_224DAC298();
  return sub_224A3311C(v19, &qword_27D6F56C0, &unk_224DB3580);
}

uint64_t sub_224C8707C(uint64_t a1)
{
  v61 = sub_224DAC2B8();
  v57 = *(v61 - 8);
  MEMORY[0x28223BE20](v61, v2);
  v4 = &v53 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_224DACB98();
  v6 = *(v5 - 8);
  v8 = MEMORY[0x28223BE20](v5, v7);
  v60 = &v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v53 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5060, &qword_224DB5620);
  MEMORY[0x28223BE20](v13 - 8, v14);
  v16 = &v53 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3900, &unk_224DB4640);
  v18 = *(v17 - 8);
  result = MEMORY[0x28223BE20](v17, v19);
  v22 = &v53 - v21;
  if ((*(a1 + 8) & 1) == 0)
  {
    v56 = *a1;
    v23 = [v56 extensionIdentity];
    v24 = *MEMORY[0x277CFA130];
    swift_beginAccess();
    sub_224A3796C(v23 + v24, v16, &unk_27D6F5060, &qword_224DB5620);

    if ((*(v18 + 48))(v16, 1, v17) == 1)
    {
      sub_224A3311C(v16, &unk_27D6F5060, &qword_224DB5620);
      v25 = v56;
      v26 = [v56 extensionIdentity];
      v27 = [v25 kind];
      v28 = sub_224DAEE18();
      v30 = v29;

      v31 = *MEMORY[0x277CF9BE0];
      v54 = v6;
      v55 = v5;
      (*(v6 + 104))(v60, v31, v5);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3308, &qword_224DB5C00);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_224DB3100;
      v58 = v28;
      *(inited + 32) = v28;
      *(inited + 40) = v30;

      v33 = sub_224AE8AF4(inited);
      swift_setDeallocating();
      sub_224BCA6B4(inited + 32);
      v63 = v26;
      sub_224C84DA4(v26, v33);

      v34 = sub_224DAC108();
      v35 = *(v34 + 16);
      if (v35)
      {
        v59 = v30;
        v62 = sub_224A3B79C(0, &qword_281350840, 0x277D82BB8);
        v36 = v57 + 16;
        v37 = *(v57 + 16);
        v38 = (*(v57 + 80) + 32) & ~*(v57 + 80);
        v57 = v34;
        v39 = v34 + v38;
        v40 = *(v36 + 56);
        v41 = (v36 - 8);
        v42 = v61;
        v37(v4, v34 + v38, v61);
        while (1)
        {
          v44 = sub_224DAC2A8();
          v45 = [v44 extensionIdentity];

          LOBYTE(v44) = sub_224DAF6A8();
          if (v44)
          {
            v46 = sub_224DAC2A8();
            v47 = [v46 kind];

            v48 = sub_224DAEE18();
            v50 = v49;

            if (v48 == v58 && v50 == v59)
            {

              v42 = v61;
LABEL_6:
              v43 = sub_224DAC2A8();
              sub_224C809D8(v43, v60);

              goto LABEL_7;
            }

            v52 = sub_224DAFD88();

            v42 = v61;
            if (v52)
            {
              goto LABEL_6;
            }
          }

LABEL_7:
          (*v41)(v4, v42);
          v39 += v40;
          if (!--v35)
          {

            v25 = v56;
            goto LABEL_19;
          }

          v37(v4, v39, v42);
        }
      }

LABEL_19:

      return (*(v54 + 8))(v60, v55);
    }

    else
    {
      (*(v18 + 32))(v22, v16, v17);
      (*(v6 + 104))(v12, *MEMORY[0x277CF9BE0], v5);
      sub_224C7F024(v22, v12);

      (*(v6 + 8))(v12, v5);
      return (*(v18 + 8))(v22, v17);
    }
  }

  return result;
}

uint64_t sub_224C876A0()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F56C0, &unk_224DB3580);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v51 = (&v46 - v4);
  v50 = sub_224DAC2B8();
  v5 = *(v50 - 8);
  MEMORY[0x28223BE20](v50, v6);
  v49 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_224DAB8C8();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v12 = (&v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = *(v1 + OBJC_IVAR____TtC10ChronoCore18LiveControlService__queue);
  *v12 = v13;
  (*(v9 + 104))(v12, *MEMORY[0x277D85200], v8);
  v14 = v13;
  v15 = sub_224DAB8F8();
  (*(v9 + 8))(v12, v8);
  if (v15)
  {
    sub_224C89C84();
    sub_224C87C9C();
    v16 = v1[28];
    v17 = v1[29];
    __swift_project_boxed_opaque_existential_1(v1 + 25, v16);
    result = (*(v17 + 24))(768, v16, v17);
    if (!result)
    {
      return result;
    }

    v15 = sub_224A7B208(result);

    sub_224DADC38();
    v12 = sub_224DACF78();

    if (!(v15 >> 62))
    {
      v19 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v19)
      {
        goto LABEL_5;
      }

      goto LABEL_41;
    }
  }

  else
  {
LABEL_39:
    __break(1u);
  }

  v19 = sub_224DAF838();
  if (v19)
  {
LABEL_5:
    v20 = 0;
    v21 = v15 & 0xC000000000000001;
    v56 = v15 + 32;
    v57 = v15 & 0xFFFFFFFFFFFFFF8;
    v47 = v5 + 1;
    v48 = v1;
    v22 = &off_27853F000;
    v54 = v12;
    v55 = v15;
    v52 = v15 & 0xC000000000000001;
    v53 = v19;
    while (1)
    {
LABEL_7:
      if (v21)
      {
        v23 = MEMORY[0x22AA5DCC0](v20, v15);
      }

      else
      {
        if (v20 >= *(v57 + 16))
        {
          goto LABEL_38;
        }

        v23 = *(v56 + 8 * v20);
      }

      v5 = v23;
      if (__OFADD__(v20++, 1))
      {
LABEL_37:
        __break(1u);
LABEL_38:
        __break(1u);
        goto LABEL_39;
      }

      v25 = [v23 controlIdentity];
      v26 = [v25 v22[311]];

      if (v12[2])
      {
        v27 = sub_224A3E7EC(v26);
        if (v28)
        {
          break;
        }
      }

      if (v20 == v19)
      {
        goto LABEL_41;
      }
    }

    v58 = v20;
    v29 = *(v12[7] + 8 * v27);

    v59 = v29 & 0xFFFFFFFFFFFFFF8;
    if (v29 >> 62)
    {
      v60 = sub_224DAF838();
    }

    else
    {
      v60 = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v30 = 0;
    while (1)
    {
      if (v60 == v30)
      {

        goto LABEL_32;
      }

      if ((v29 & 0xC000000000000001) != 0)
      {
        v31 = MEMORY[0x22AA5DCC0](v30, v29);
      }

      else
      {
        if (v30 >= *(v59 + 16))
        {
          goto LABEL_36;
        }

        v31 = *(v29 + 8 * v30 + 32);
      }

      v32 = v31;
      if (__OFADD__(v30, 1))
      {
        __break(1u);
LABEL_36:
        __break(1u);
        goto LABEL_37;
      }

      v33 = [v31 kind];
      v34 = sub_224DAEE18();
      v1 = v35;

      v36 = v5;
      v37 = [v5 controlIdentity];
      v38 = [v37 kind];

      v39 = sub_224DAEE18();
      v12 = v40;

      if (v34 == v39 && v1 == v12)
      {
        break;
      }

      v15 = sub_224DAFD88();

      ++v30;
      v5 = v36;
      if (v15)
      {
        goto LABEL_31;
      }
    }

    v5 = v36;
LABEL_31:

    v42 = [v5 controlIdentity];
    v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F30D0, &unk_224DB2AC0);
    v44 = v51;
    (*(*(v43 - 8) + 56))(v51, 1, 1, v43);
    v45 = v49;
    sub_224C86DA4(v42, v44, v49);

    sub_224A3311C(v44, &qword_27D6F56C0, &unk_224DB3580);
    sub_224C796B8(v45);

    (*v47)(v45, v50);
LABEL_32:
    v12 = v54;
    v15 = v55;
    v21 = v52;
    v19 = v53;
    v20 = v58;
    v22 = &off_27853F000;
    if (v58 != v53)
    {
      goto LABEL_7;
    }
  }

LABEL_41:
}

uint64_t sub_224C87C9C()
{
  v1 = v0;
  v237 = sub_224DAD158();
  v219 = *(v237 - 8);
  v3 = MEMORY[0x28223BE20](v237, v2);
  v222 = &v211 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v3, v5);
  v224 = &v211 - v7;
  MEMORY[0x28223BE20](v6, v8);
  v249 = &v211 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5238, &qword_224DBB1E0);
  v12 = MEMORY[0x28223BE20](v10 - 8, v11);
  v223 = &v211 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v12, v14);
  v235 = &v211 - v16;
  v18 = MEMORY[0x28223BE20](v15, v17);
  v244 = &v211 - v19;
  v21 = MEMORY[0x28223BE20](v18, v20);
  v236 = &v211 - v22;
  v24 = MEMORY[0x28223BE20](v21, v23);
  v254 = &v211 - v25;
  MEMORY[0x28223BE20](v24, v26);
  v252 = &v211 - v27;
  v240 = sub_224DAB8C8();
  v28 = *(v240 - 8);
  MEMORY[0x28223BE20](v240, v29);
  v239 = (&v211 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0));
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F56C0, &unk_224DB3580);
  v33 = MEMORY[0x28223BE20](v31 - 8, v32);
  v264 = &v211 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = MEMORY[0x28223BE20](v33, v35);
  v265 = &v211 - v37;
  v39 = MEMORY[0x28223BE20](v36, v38);
  v278 = &v211 - v40;
  MEMORY[0x28223BE20](v39, v41);
  v277 = &v211 - v42;
  v43 = sub_224DAC2B8();
  v44 = *(v43 - 8);
  v46 = MEMORY[0x28223BE20](v43, v45);
  v220 = &v211 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = MEMORY[0x28223BE20](v46, v48);
  v247 = &v211 - v50;
  v52 = MEMORY[0x28223BE20](v49, v51);
  v234 = &v211 - v53;
  v55 = MEMORY[0x28223BE20](v52, v54);
  v248 = &v211 - v56;
  MEMORY[0x28223BE20](v55, v57);
  v280 = (&v211 - v58);
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F30D0, &unk_224DB2AC0);
  v60 = *(v59 - 8);
  v62 = MEMORY[0x28223BE20](v59, v61);
  v255 = &v211 - ((v63 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = MEMORY[0x28223BE20](v62, v64);
  v271 = &v211 - v66;
  MEMORY[0x28223BE20](v65, v67);
  v212 = &v211 - v68;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5BE8, &qword_224DBCEE8);
  v71 = MEMORY[0x28223BE20](v69 - 8, v70);
  v217 = &v211 - ((v72 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v71, v73);
  v216 = &v211 - v74;
  v76 = v0[28];
  v75 = v0[29];
  __swift_project_boxed_opaque_existential_1(v0 + 25, v76);
  v77 = (*(v75 + 24))(769, v76, v75);
  if (!v77)
  {
    v203 = MEMORY[0x277D84F90];

    sub_224DA22EC(v203);
    sub_224DADDC8();

    *(v0 + OBJC_IVAR____TtC10ChronoCore18LiveControlService__queue_configurationLifetimeAssertions) = v203;
  }

  v78 = sub_224CFECC0(v77);

  v283 = MEMORY[0x277D84F98];
  v79 = v78 + 8;
  v80 = 1 << *(v78 + 32);
  v81 = -1;
  if (v80 < 64)
  {
    v81 = ~(-1 << v80);
  }

  v226 = v81 & v78[8];
  v233 = OBJC_IVAR____TtC10ChronoCore18LiveControlService__queue;
  v211 = (v80 + 63) >> 6;
  v268 = (v60 + 16);
  v261 = (v60 + 32);
  v272 = (v60 + 56);
  v263 = (v60 + 48);
  v215 = v60;
  v245 = (v60 + 8);
  v232 = *MEMORY[0x277D85200];
  v231 = (v28 + 104);
  v230 = (v28 + 8);
  v229 = (v219 + 56);
  v218 = v219 + 16;
  v262 = (v219 + 48);
  v242 = (v219 + 32);
  v227 = (v219 + 8);
  v243 = (v44 + 16);
  v267 = (v44 + 8);
  v238 = v44;
  v228 = v44 + 32;
  v213 = v78;

  v82 = 0;
  v250 = 0;
  *&v83 = 136446466;
  v221 = v83;
  v259 = MEMORY[0x277D84F90];
  v260 = MEMORY[0x277D84F90];
  v84 = v265;
  v214 = v78 + 8;
  v274 = v1;
  v273 = v43;
  v269 = v59;
  while (1)
  {
    v85 = v226;
    if (v226)
    {
      v225 = v82;
      v86 = v82;
      v87 = v215;
      goto LABEL_16;
    }

    v88 = v211 <= v82 + 1 ? v82 + 1 : v211;
    v89 = v88 - 1;
    v87 = v215;
    do
    {
      v86 = v82 + 1;
      if (__OFADD__(v82, 1))
      {
LABEL_95:
        __break(1u);
LABEL_96:
        __break(1u);
LABEL_97:
        swift_once();
LABEL_82:
        v191 = sub_224DAB258();
        __swift_project_value_buffer(v191, qword_281364D90);
        v192 = sub_224DAB228();
        v193 = sub_224DAF278();
        if (os_log_type_enabled(v192, v193))
        {
          v194 = swift_slowAlloc();
          v195 = swift_slowAlloc();
          v282 = v195;
          *v194 = 136446210;
          v196 = v260;

          v198 = v273;
          v199 = MEMORY[0x22AA5D380](v197);
          v201 = v200;

          v202 = sub_224A33F74(v199, v201, &v282);

          *(v194 + 4) = v202;
          _os_log_impl(&dword_224A2F000, v192, v193, "making live control entries for %{public}s", v194, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v195);
          MEMORY[0x22AA5EED0](v195, -1, -1);
          MEMORY[0x22AA5EED0](v194, -1, -1);
        }

        else
        {
          v198 = v273;

          v196 = v260;
        }

        v204 = v196[2];
        if (v204)
        {
          v205 = v196 + ((*(v238 + 80) + 32) & ~*(v238 + 80));
          v279 = *(v238 + 72);
          v280 = *(v238 + 16);
          v260 = v196;

          v206 = v220;
          v207 = v267;
          do
          {
            v280(v206, v205, v198);
            type metadata accessor for EmptyKey();
            v208 = swift_allocObject();
            *(v208 + 16) = 0;
            *(v208 + 24) = 0xE000000000000000;
            v210 = MEMORY[0x28223BE20](v208, v209);
            *(&v211 - 4) = v220;
            *(&v211 - 3) = v210;
            *(&v211 - 2) = v274;
            sub_224DAC128();

            v206 = v220;
            (*v207)(v220, v198);
            v205 = &v279[v205];
            --v204;
          }

          while (v204);
        }

        else
        {
        }
      }

      if (v86 >= v211)
      {
        v189 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5BF0, &qword_224DBCEF0);
        v98 = v217;
        (*(*(v189 - 8) + 56))(v217, 1, 1, v189);
        v226 = 0;
        v225 = v89;
        goto LABEL_17;
      }

      v85 = v79[v86];
      ++v82;
    }

    while (!v85);
    v225 = v86;
LABEL_16:
    v226 = (v85 - 1) & v85;
    v90 = __clz(__rbit64(v85)) | (v86 << 6);
    v91 = v213;
    v92 = v212;
    v93 = v87;
    (*(v87 + 16))(v212, v213[6] + *(v87 + 72) * v90, v59);
    v94 = *(v91[7] + 8 * v90);
    v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5BF0, &qword_224DBCEF0);
    v96 = *(v95 + 48);
    v97 = *(v93 + 32);
    v98 = v217;
    v97(v217, v92, v59);
    *(v98 + v96) = v94;
    (*(*(v95 - 8) + 56))(v98, 0, 1, v95);

LABEL_17:
    v99 = v216;
    sub_224C8F308(v98, v216);
    v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5BF0, &qword_224DBCEF0);
    if ((*(*(v100 - 8) + 48))(v99, 1, v100) == 1)
    {

      v190 = v283;

      v278 = v190;
      sub_224DADDC8();

      *(v1 + OBJC_IVAR____TtC10ChronoCore18LiveControlService__queue_configurationLifetimeAssertions) = v259;

      if (qword_281351448 == -1)
      {
        goto LABEL_82;
      }

      goto LABEL_97;
    }

    v101 = *(v99 + *(v100 + 48));
    v102 = *v261;
    v103 = v59;
    v104 = v101;
    (*v261)(v271, v99, v103);
    v105 = v267;
    v270 = v104 >> 62 ? sub_224DAF838() : *((v104 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v270)
    {
      break;
    }

LABEL_5:

    v59 = v269;
    (*v245)(v271, v269);
    v79 = v214;
    v82 = v225;
  }

  v256 = v102;
  v106 = 0;
  v266 = v104 & 0xC000000000000001;
  v251 = v104 & 0xFFFFFFFFFFFFFF8;
  v253 = v104;
  while (1)
  {
    if (v266)
    {
      v107 = MEMORY[0x22AA5DCC0](v106, v104);
      v108 = v106 + 1;
      if (__OFADD__(v106, 1))
      {
        goto LABEL_93;
      }
    }

    else
    {
      if (v106 >= *(v251 + 16))
      {
        goto LABEL_94;
      }

      v107 = *(v104 + 8 * v106 + 32);
      v108 = v106 + 1;
      if (__OFADD__(v106, 1))
      {
LABEL_93:
        __break(1u);
LABEL_94:
        __break(1u);
        goto LABEL_95;
      }
    }

    v276 = v108;
    v279 = v107;
    v109 = [v107 controlIdentity];
    v110 = v277;
    v111 = v269;
    (*v268)(v277, v271, v269);
    v112 = *v272;
    (*v272)(v110, 0, 1, v111);
    v112(v278, 1, 1, v111);
    sub_224A3796C(v110, v84, &qword_27D6F56C0, &unk_224DB3580);
    if ((*v263)(v84, 1, v111) == 1)
    {
      sub_224A3311C(v84, &qword_27D6F56C0, &unk_224DB3580);
    }

    else
    {
      v275 = v106;
      v113 = v255;
      v114 = v256;
      v256(v255, v84, v111);
      sub_224DAA1F8();
      v115 = sub_224DAA048();

      if (v115)
      {
        v116 = v278;
        sub_224A3311C(v278, &qword_27D6F56C0, &unk_224DB3580);
        v114(v116, v113, v111);
        v104 = v253;
        v112(v116, 0, 1, v111);
      }

      else
      {
        (*v245)(v113, v111);
      }

      v106 = v275;
      v105 = v267;
    }

    v117 = v278;
    sub_224A3796C(v278, v264, &qword_27D6F56C0, &unk_224DB3580);
    v118 = v109;
    sub_224DAC298();
    sub_224A3311C(v117, &qword_27D6F56C0, &unk_224DB3580);
    sub_224A3311C(v277, &qword_27D6F56C0, &unk_224DB3580);
    v1 = v274;
    __swift_project_boxed_opaque_existential_1((v274 + 160), *(v274 + 184));
    v119 = sub_224DADA48();
    v120 = v273;
    if (!v119)
    {
      goto LABEL_23;
    }

    v121 = sub_224DACFB8();

    if (!v121)
    {
      goto LABEL_23;
    }

    if ([v121 disablesControlStateCaching])
    {

LABEL_23:
      (*v105)(v280, v120);
      goto LABEL_24;
    }

    v246 = v121;
    v275 = v106;
    v122 = *(v1 + v233);
    v123 = v239;
    *v239 = v122;
    v124 = v240;
    (*v231)(v123, v232, v240);
    v125 = v122;
    v126 = sub_224DAB8F8();
    (*v230)(v123, v124);
    if ((v126 & 1) == 0)
    {
      goto LABEL_96;
    }

    type metadata accessor for EmptyKey();
    v127 = swift_allocObject();
    *(v127 + 16) = 0;
    *(v127 + 24) = 0xE000000000000000;
    *&v281 = v127;
    v128 = v280;
    v129 = sub_224DAD288();
    MEMORY[0x28223BE20](v129, v130);
    *(&v211 - 4) = v128;
    *(&v211 - 3) = v127;
    *(&v211 - 2) = v1;
    v131 = v250;
    sub_224DAC128();

    sub_224A3317C(&v282, &v281);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v259 = sub_224AD97A8(0, v259[2] + 1, 1, v259);
    }

    v132 = v237;
    v133 = v236;
    v135 = v259[2];
    v134 = v259[3];
    if (v135 >= v134 >> 1)
    {
      v259 = sub_224AD97A8((v134 > 1), v135 + 1, 1, v259);
    }

    v136 = v259;
    v259[2] = v135 + 1;
    sub_224A36F98(&v281, &v136[5 * v135 + 4]);
    v137 = v283;
    v138 = *(v283 + 16);
    v250 = v131;
    if (v138 && (v139 = sub_224B0BBA8(v280), (v140 & 1) != 0))
    {
      (*(v219 + 16))(v252, *(v137 + 56) + *(v219 + 72) * v139, v132);
      v141 = 0;
    }

    else
    {
      v141 = 1;
    }

    v142 = *v229;
    v143 = v252;
    (*v229)(v252, v141, 1, v132);
    v144 = v254;
    v142(v254, 1, 1, v132);
    sub_224A3796C(v143, v133, &qword_27D6F5238, &qword_224DBB1E0);
    v145 = *v262;
    if ((*v262)(v133, 1, v132) == 1)
    {
      sub_224A3311C(v133, &qword_27D6F5238, &qword_224DBB1E0);
      v146 = v244;
      sub_224DAD148();
      v142(v146, 0, 1, v132);
      swift_beginAccess();
      sub_224A838C0(v146, v144, &qword_27D6F5238, &qword_224DBB1E0);
      v147 = v279;
      [v279 supportedColorSchemes];
      swift_beginAccess();
      result = v145(v144, 1, v132);
      if (result == 1)
      {
        goto LABEL_105;
      }

      sub_224DAD098();
      swift_endAccess();
      [v147 canAppearInSecureEnvironment];
      swift_beginAccess();
      result = v145(v144, 1, v132);
      v149 = v243;
      v150 = v273;
      if (result == 1)
      {
        goto LABEL_102;
      }

      sub_224DACFF8();
      swift_endAccess();
      [v147 supportsLowLuminance];
      swift_beginAccess();
      result = v145(v144, 1, v132);
      if (result == 1)
      {
        goto LABEL_100;
      }

      sub_224DAD108();
      swift_endAccess();
      goto LABEL_65;
    }

    (*v242)(v249, v133, v132);
    v151 = v244;
    sub_224DAD148();
    v142(v151, 0, 1, v132);
    swift_beginAccess();
    sub_224A838C0(v151, v144, &qword_27D6F5238, &qword_224DBB1E0);
    sub_224DAD088();
    swift_beginAccess();
    result = v145(v144, 1, v132);
    if (result == 1)
    {
      goto LABEL_101;
    }

    sub_224DAD098();
    swift_endAccess();
    v152 = [v279 supportedColorSchemes];
    swift_beginAccess();
    result = v145(v144, 1, v132);
    v149 = v243;
    if (result == 1)
    {
      goto LABEL_104;
    }

    v154 = sub_224DAD078();
    if ((v152 & ~*v153) != 0)
    {
      *v153 |= v152;
    }

    v154(&v281, 0);
    swift_endAccess();
    if ((sub_224DACFE8() & 1) == 0)
    {
      [v279 canAppearInSecureEnvironment];
    }

    v150 = v273;
    swift_beginAccess();
    result = v145(v144, 1, v132);
    if (result == 1)
    {
      goto LABEL_99;
    }

    sub_224DACFF8();
    swift_endAccess();
    if ((sub_224DAD0F8() & 1) == 0)
    {
      [v279 supportsLowLuminance];
    }

    swift_beginAccess();
    result = v145(v144, 1, v132);
    if (result == 1)
    {
      break;
    }

    sub_224DAD108();
    swift_endAccess();
    (*v227)(v249, v132);
LABEL_65:
    v257 = *v149;
    v257(v248, v280, v150);
    swift_beginAccess();
    v155 = v235;
    sub_224A3796C(v144, v235, &qword_27D6F5238, &qword_224DBB1E0);
    v156 = v145(v155, 1, v132);
    v241 = v145;
    if (v156 == 1)
    {
      sub_224A3311C(v155, &qword_27D6F5238, &qword_224DBB1E0);
      v157 = v244;
      v158 = v248;
      sub_224B0D8FC(v248, v244);
      sub_224A3311C(v157, &qword_27D6F5238, &qword_224DBB1E0);
      v258 = *v267;
      v258(v158, v150);
    }

    else
    {
      v159 = v224;
      (*v242)(v224, v155, v132);
      v160 = v283;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v281 = v160;
      v162 = v159;
      v163 = v248;
      sub_224B21D38(v162, v248, isUniquelyReferenced_nonNull_native);
      v258 = *v267;
      v258(v163, v150);
      v283 = v281;
    }

    v1 = v274;
    v164 = v234;
    if (qword_281351448 != -1)
    {
      swift_once();
    }

    v165 = sub_224DAB258();
    __swift_project_value_buffer(v165, qword_281364D90);
    v257(v164, v280, v150);
    v166 = v150;
    v167 = sub_224DAB228();
    v168 = sub_224DAF278();
    if (os_log_type_enabled(v167, v168))
    {
      v169 = v166;
      v170 = v164;
      v171 = v132;
      v172 = swift_slowAlloc();
      v173 = swift_slowAlloc();
      *&v281 = v173;
      *v172 = v221;
      sub_224C8DD50(&unk_281350E08, MEMORY[0x277CF99B8], MEMORY[0x277CF99E0]);
      v174 = sub_224DAFD28();
      v176 = v175;
      v258(v170, v169);
      v177 = sub_224A33F74(v174, v176, &v281);

      *(v172 + 4) = v177;
      *(v172 + 12) = 2082;
      v178 = v223;
      sub_224A3796C(v254, v223, &qword_27D6F5238, &qword_224DBB1E0);
      result = v241(v178, 1, v171);
      if (result == 1)
      {
        goto LABEL_103;
      }

      v179 = v222;
      (*v242)(v222, v178, v171);
      sub_224C8DD50(&qword_27D6F3E80, MEMORY[0x277CF9C60], MEMORY[0x277CF9C70]);
      v180 = sub_224DAFD28();
      v182 = v181;
      (*v227)(v179, v171);
      v183 = sub_224A33F74(v180, v182, &v281);

      *(v172 + 14) = v183;
      _os_log_impl(&dword_224A2F000, v167, v168, "New environment modifiers for key [configuration]: %{public}s: %{public}s", v172, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AA5EED0](v173, -1, -1);
      MEMORY[0x22AA5EED0](v172, -1, -1);

      v1 = v274;
      v184 = v273;
      v105 = v267;
    }

    else
    {

      v105 = v267;
      v258(v164, v166);
      v184 = v166;
    }

    v257(v247, v280, v184);
    v185 = swift_isUniquelyReferenced_nonNull_native();
    v104 = v253;
    if ((v185 & 1) == 0)
    {
      v260 = sub_224AD990C(0, v260[2] + 1, 1, v260);
    }

    v106 = v275;
    v187 = v260[2];
    v186 = v260[3];
    if (v187 >= v186 >> 1)
    {
      v260 = sub_224AD990C((v186 > 1), v187 + 1, 1, v260);
    }

    sub_224A3311C(v252, &qword_27D6F5238, &qword_224DBB1E0);
    __swift_destroy_boxed_opaque_existential_1(&v282);
    v188 = v260;
    v260[2] = v187 + 1;
    (*(v238 + 32))(v188 + ((*(v238 + 80) + 32) & ~*(v238 + 80)) + *(v238 + 72) * v187, v247, v184);
    v258(v280, v184);
    sub_224A3311C(v254, &qword_27D6F5238, &qword_224DBB1E0);
LABEL_24:
    ++v106;
    v84 = v265;
    if (v276 == v270)
    {
      goto LABEL_5;
    }
  }

  __break(1u);
LABEL_99:
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
  return result;
}

uint64_t sub_224C89C84()
{
  v1 = v0;
  v154 = sub_224DAB7B8();
  v2 = *(v154 - 8);
  MEMORY[0x28223BE20](v154, v3);
  v153 = &v126 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v152 = sub_224DAB848();
  v156 = *(v152 - 8);
  MEMORY[0x28223BE20](v152, v5);
  v151 = &v126 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v136 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5BF8, &qword_224DBCEF8);
  MEMORY[0x28223BE20](v136, v7);
  v135 = &v126 - v8;
  v148 = sub_224DAE138();
  v128 = *(v148 - 8);
  v10 = MEMORY[0x28223BE20](v148, v9);
  v138 = &v126 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10, v12);
  v134 = &v126 - v13;
  v133 = sub_224DAE168();
  v147 = *(v133 - 8);
  MEMORY[0x28223BE20](v133, v14);
  v132 = &v126 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_224DAC5E8();
  v162 = *(v16 - 1);
  v18 = MEMORY[0x28223BE20](v16, v17);
  v149 = &v126 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v150 = v19;
  MEMORY[0x28223BE20](v18, v20);
  v22 = &v126 - v21;
  v23 = sub_224DAB258();
  v24 = *(v23 - 8);
  MEMORY[0x28223BE20](v23, v25);
  v27 = &v126 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(v0 + 20, v0[23]);
  result = sub_224DADA48();
  if (!result)
  {
    return result;
  }

  v142 = v2;
  v157 = v22;
  v137 = result;
  v29 = v0[28];
  v30 = v0[29];
  __swift_project_boxed_opaque_existential_1(v0 + 25, v29);
  v31 = (*(v30 + 24))(768, v29, v30);
  v32 = MEMORY[0x277D84F90];
  if (v31)
  {
    v32 = sub_224A7B208(v31);
    v126 = 0;
  }

  else
  {
    v126 = 0;
  }

  (*(v24 + 16))(v27, v0 + OBJC_IVAR____TtC10ChronoCore18LiveControlService_logger, v23);
  v33 = sub_224DAB228();
  v34 = sub_224DAF2A8();
  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    *v35 = 0;
    _os_log_impl(&dword_224A2F000, v33, v34, "Configured controls changed. Evaluating push configured controls.", v35, 2u);
    MEMORY[0x22AA5EED0](v35, -1, -1);
  }

  (*(v24 + 8))(v27, v23);
  if (v32 >> 62)
  {
    goto LABEL_93;
  }

  for (i = *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_224DAF838())
  {
    v155 = v16;
    v159 = v1;
    v127 = v32;
    if (i)
    {
      break;
    }

    v16 = MEMORY[0x277D84F98];
LABEL_51:
    __swift_project_boxed_opaque_existential_1(v159 + 30, v159[33]);
    v68 = off_283828B60[0];
    v69 = type metadata accessor for PushService();

    v70 = v68(v69, &off_283828B40);
    v71 = v70;
    v72 = *(v70 + 16);
    v158 = v16;
    if (v72)
    {
      v32 = 0;
      v73 = *(v162 + 80);
      v74 = v70 + ((v73 + 32) & ~v73);
      v163 = v162 + 16;
      v131 = (v147 + 8);
      v130 = (v128 + 32);
      v129 = (v128 + 88);
      v140 = *MEMORY[0x277CF9EB0];
      v139 = *MEMORY[0x277CF9EB8];
      v161 = v162 + 8;
      v147 = v73;
      v145 = (v73 + 24) & ~v73;
      v144 = (v162 + 32);
      v143 = v166;
      ++v142;
      v141 = (v156 + 1);
      v156 = v16;
      v1 = v155;
      v75 = v157;
      v146 = v74;
      while (1)
      {
        if (v32 >= *(v71 + 16))
        {
          goto LABEL_89;
        }

        v90 = *(v162 + 16);
        v90(v75, v74 + *(v162 + 72) * v32, v1);
        v91 = sub_224DAC5D8();
        if (!v91)
        {
          goto LABEL_68;
        }

        v92 = v91;
        if (v16[2])
        {
          v93 = sub_224B0BD50(v91);
          if (v94)
          {
            break;
          }
        }

        v76 = __swift_project_boxed_opaque_existential_1(v159 + 30, v159[33]);
        v77 = *v76;
        v160 = *(*v76 + 40);
        v78 = v149;
        v90(v149, v75, v1);
        v79 = v145;
        v80 = swift_allocObject();
        *(v80 + 16) = v77;
        (*v144)(v80 + v79, v78, v1);
        v166[2] = sub_224C8F3B8;
        v166[3] = v80;
        aBlock[0] = MEMORY[0x277D85DD0];
        aBlock[1] = 1107296256;
        v166[0] = sub_224A39F40;
        v166[1] = &block_descriptor_117;
        v81 = _Block_copy(aBlock);

        v82 = v72;
        v83 = v71;
        v84 = v151;
        sub_224DAB7E8();
        v164 = MEMORY[0x277D84F90];
        sub_224C8DD50(&qword_281350ED0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F3460, &unk_224DB36F0);
        sub_224A33088(&qword_281350BB0, &unk_27D6F3460, &unk_224DB36F0, MEMORY[0x277D83970]);
        v85 = v153;
        v86 = v154;
        v75 = v157;
        sub_224DAF788();
        MEMORY[0x22AA5D760](0, v84, v85, v81);

        _Block_release(v81);
        v87 = v85;
        v16 = v158;
        v88 = v86;
        v1 = v155;
        (*v142)(v87, v88);
        v89 = v84;
        v71 = v83;
        v72 = v82;
        v74 = v146;
        (*v141)(v89, v152);
        (*v161)(v75, v1);

LABEL_54:
        if (v72 == ++v32)
        {

          v16 = v156;
          goto LABEL_72;
        }
      }

      v95 = *(v16[7] + 8 * v93);
      v96 = v132;
      sub_224DAC5B8();
      v97 = v134;
      sub_224DAE158();
      (*v131)(v96, v133);
      v98 = *(v136 + 48);
      v99 = v135;
      *v135 = v95;
      v100 = v97;
      v101 = v148;
      (*v130)(&v99[v98], v100, v148);
      v102 = (*v129)(&v99[v98], v101);
      if (v102 == v140)
      {
        v75 = v157;
        v16 = v158;
        if (v95 != 2)
        {
          goto LABEL_69;
        }
      }

      else
      {
        if (v102 != v139)
        {
          goto LABEL_96;
        }

        v75 = v157;
        v16 = v158;
        if (v95 != 1)
        {
LABEL_69:
          (*v161)(v75, v1);

          goto LABEL_54;
        }
      }

      v103 = v156;
      v104 = sub_224B0BD50(v92);
      if ((v105 & 1) == 0)
      {
        goto LABEL_69;
      }

      v106 = v104;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      aBlock[0] = v103;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_224B28FD8();
        v103 = aBlock[0];
      }

      v156 = v103;
      sub_224A58C3C(v106, v103);

LABEL_68:
      (*v161)(v75, v1);
      goto LABEL_54;
    }

    v139 = *MEMORY[0x277CF9EB8];
    v140 = *MEMORY[0x277CF9EB0];
LABEL_72:
    v108 = 0;
    v156 = v16;
    v110 = v16[8];
    v16 += 8;
    v109 = v110;
    v111 = 1 << *(v16 - 32);
    v112 = -1;
    if (v111 < 64)
    {
      v112 = ~(-1 << v111);
    }

    v1 = v112 & v109;
    v113 = (v111 + 63) >> 6;
    v114 = (v128 + 104);
    v115 = (v128 + 8);
    v32 = v138;
    v116 = v148;
    if ((v112 & v109) != 0)
    {
      do
      {
        v117 = v108;
LABEL_80:
        v118 = (v117 << 9) | (8 * __clz(__rbit64(v1)));
        v119 = *(v156[6] + v118);
        v1 &= v1 - 1;
        if (*(v156[7] + v118) == 2)
        {
          v120 = v140;
        }

        else
        {
          v120 = v139;
        }

        (*v114)(v32, v120, v116);
        v121 = v119;
        sub_224C7CAAC(v121, v32);

        (*v115)(v32, v116);
      }

      while (v1);
    }

    while (1)
    {
      v117 = v108 + 1;
      if (__OFADD__(v108, 1))
      {
        break;
      }

      if (v117 >= v113)
      {

        v122 = v159;
        BSDispatchQueueAssert();
        v123 = v122[28];
        v124 = v122[29];
        __swift_project_boxed_opaque_existential_1(v122 + 25, v123);
        v125 = (*(v124 + 24))(769, v123, v124);
        sub_224C8AE30(v125);
      }

      v1 = v16[v117];
      ++v108;
      if (v1)
      {
        v108 = v117;
        goto LABEL_80;
      }
    }

    __break(1u);
LABEL_88:
    __break(1u);
LABEL_89:
    __break(1u);
LABEL_90:
    __break(1u);
LABEL_91:
    __break(1u);
LABEL_92:
    __break(1u);
LABEL_93:
    ;
  }

  v1 = 0;
  v163 = v32 & 0xC000000000000001;
  v16 = MEMORY[0x277D84F98];
  v160 = i;
  v161 = v32 & 0xFFFFFFFFFFFFFF8;
  while (1)
  {
    if (v163)
    {
      v37 = MEMORY[0x22AA5DCC0](v1, v32);
    }

    else
    {
      if (v1 >= *(v161 + 16))
      {
        goto LABEL_90;
      }

      v37 = *(v32 + 8 * v1 + 32);
    }

    v38 = v37;
    v39 = v1 + 1;
    if (__OFADD__(v1, 1))
    {
      goto LABEL_88;
    }

    v40 = [v37 controlIdentity];
    v41 = sub_224DACFB8();
    if (!v41)
    {
      goto LABEL_12;
    }

    v42 = v41;
    if (([v41 supportsPush] & 1) == 0)
    {

LABEL_12:
LABEL_13:

      goto LABEL_14;
    }

    v43 = [v38 pushPolicy];
    if (!v43)
    {
      goto LABEL_29;
    }

    if (v43 != 1)
    {
      break;
    }

    if (v16[2] && (sub_224B0BD50(v40), (v53 & 1) != 0))
    {
    }

    else
    {
      v54 = swift_isUniquelyReferenced_nonNull_native();
      aBlock[0] = v16;
      v55 = sub_224B0BD50(v40);
      v57 = v16[2];
      v58 = (v56 & 1) == 0;
      v59 = __OFADD__(v57, v58);
      v60 = v57 + v58;
      if (v59)
      {
        goto LABEL_92;
      }

      v61 = v56;
      if (v16[3] >= v60)
      {
        if ((v54 & 1) == 0)
        {
          v67 = v55;
          sub_224B28FD8();
          v55 = v67;
        }
      }

      else
      {
        sub_224B16F84(v60, v54);
        v55 = sub_224B0BD50(v40);
        if ((v61 & 1) != (v62 & 1))
        {
          goto LABEL_97;
        }
      }

      v16 = aBlock[0];
      if (v61)
      {
        *(*(aBlock[0] + 56) + 8 * v55) = 1;

        i = v160;
      }

      else
      {
        *(aBlock[0] + 8 * (v55 >> 6) + 64) |= 1 << v55;
        *(v16[6] + 8 * v55) = v40;
        *(v16[7] + 8 * v55) = 1;

        v65 = v16[2];
        v59 = __OFADD__(v65, 1);
        v66 = v65 + 1;
        if (v59)
        {
          goto LABEL_95;
        }

        v16[2] = v66;
        i = v160;
      }
    }

LABEL_14:
    ++v1;
    if (v39 == i)
    {
      goto LABEL_51;
    }
  }

  if (v43 != 2)
  {
LABEL_29:

    goto LABEL_13;
  }

  v44 = swift_isUniquelyReferenced_nonNull_native();
  aBlock[0] = v16;
  v46 = sub_224B0BD50(v40);
  v47 = v16[2];
  v48 = (v45 & 1) == 0;
  v49 = v47 + v48;
  if (__OFADD__(v47, v48))
  {
    goto LABEL_91;
  }

  v50 = v45;
  if (v16[3] >= v49)
  {
    if ((v44 & 1) == 0)
    {
      sub_224B28FD8();
    }
  }

  else
  {
    sub_224B16F84(v49, v44);
    v51 = sub_224B0BD50(v40);
    if ((v50 & 1) != (v52 & 1))
    {
      goto LABEL_97;
    }

    v46 = v51;
  }

  v16 = aBlock[0];
  if (v50)
  {
    *(*(aBlock[0] + 56) + 8 * v46) = 2;

LABEL_43:
    v32 = v127;
    i = v160;
    goto LABEL_14;
  }

  *(aBlock[0] + 8 * (v46 >> 6) + 64) |= 1 << v46;
  *(v16[6] + 8 * v46) = v40;
  *(v16[7] + 8 * v46) = 2;

  v63 = v16[2];
  v59 = __OFADD__(v63, 1);
  v64 = v63 + 1;
  if (!v59)
  {
    v16[2] = v64;
    goto LABEL_43;
  }

  __break(1u);
LABEL_95:
  __break(1u);
LABEL_96:
  sub_224DAFD78();
  __break(1u);
LABEL_97:
  sub_224A3B79C(0, &qword_281350A50, 0x277CFA228);
  result = sub_224DAFDD8();
  __break(1u);
  return result;
}

uint64_t sub_224C8AD30()
{
  BSDispatchQueueAssert();
  v1 = v0[28];
  v2 = v0[29];
  __swift_project_boxed_opaque_existential_1(v0 + 25, v1);
  v3 = (*(v2 + 24))(769, v1, v2);
  if (v3)
  {
    v4 = v0[40];
    v5 = *(v4 + 16);
    if (v5)
    {
      v6 = v4 + 32;
      do
      {
        sub_224A3317C(v6, v10);
        v7 = v11;
        v8 = v12;
        __swift_project_boxed_opaque_existential_1(v10, v11);
        (*(v8 + 16))(v7, v8);
        __swift_destroy_boxed_opaque_existential_1(v10);
        v6 += 40;
        --v5;
      }

      while (v5);
    }
  }

  sub_224C8AE30(v3);
}

void sub_224C8AE30(uint64_t a1)
{
  v113 = sub_224DAE0D8();
  v3 = *(v113 - 8);
  v5 = MEMORY[0x28223BE20](v113, v4);
  v112 = &v93 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5, v7);
  v111 = &v93 - v8;
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F30E0, &unk_224DB2AD0);
  v9 = *(v103 - 8);
  MEMORY[0x28223BE20](v103, v10);
  v102 = &v93 - v11;
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F30D0, &unk_224DB2AC0);
  v96 = *(v106 - 8);
  v13 = MEMORY[0x28223BE20](v106, v12);
  v109 = &v93 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13, v15);
  v94 = &v93 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5BE8, &qword_224DBCEE8);
  v19 = MEMORY[0x28223BE20](v17 - 8, v18);
  v21 = &v93 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19, v22);
  v24 = &v93 - v23;
  v25 = sub_224DAB258();
  v26 = *(v25 - 8);
  MEMORY[0x28223BE20](v25, v27);
  v29 = &v93 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  BSDispatchQueueAssert();
  if (!a1)
  {
    goto LABEL_48;
  }

  v110 = v9;
  v104 = v21;
  v105 = v24;
  v30 = *(v26 + 16);
  v108 = v1;
  v30(v29, v1 + OBJC_IVAR____TtC10ChronoCore18LiveControlService_logger, v25);
  v31 = sub_224DAB228();
  v32 = sub_224DAF2A8();
  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    *v33 = 0;
    _os_log_impl(&dword_224A2F000, v31, v32, "Evaluating elevated push topics for controls.", v33, 2u);
    MEMORY[0x22AA5EED0](v33, -1, -1);
  }

  (*(v26 + 8))(v29, v25);
  v120 = MEMORY[0x277D84FA0];
  v34 = sub_224CFECC0(a1);
  v35 = 0;
  v37 = v34 + 8;
  v36 = v34[8];
  v95 = v34;
  v38 = 1 << *(v34 + 32);
  if (v38 < 64)
  {
    v39 = ~(-1 << v38);
  }

  else
  {
    v39 = -1;
  }

  v40 = v39 & v36;
  v101 = OBJC_IVAR____TtC10ChronoCore18LiveControlService_pushElevatedHosts;
  v41 = (v38 + 63) >> 6;
  v93 = v96 + 16;
  v107 = (v96 + 32);
  v100 = (v110 + 1);
  v110 = (v3 + 8);
  v97 = (v96 + 8);
  v42 = v106;
  v99 = v34 + 8;
  v98 = v41;
  v43 = v108;
  while (1)
  {
    if (!v40)
    {
      if (v41 <= v35 + 1)
      {
        v46 = v35 + 1;
      }

      else
      {
        v46 = v41;
      }

      v47 = v46 - 1;
      v45 = v105;
      while (1)
      {
        v44 = v35 + 1;
        if (__OFADD__(v35, 1))
        {
          break;
        }

        if (v44 >= v41)
        {
          v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5BF0, &qword_224DBCEF0);
          v57 = v104;
          (*(*(v79 - 8) + 56))(v104, 1, 1, v79);
          v40 = 0;
          v35 = v47;
          goto LABEL_21;
        }

        v40 = v37[v44];
        ++v35;
        if (v40)
        {
          v35 = v44;
          goto LABEL_20;
        }
      }

      __break(1u);
LABEL_51:
      __break(1u);
      goto LABEL_52;
    }

    v44 = v35;
    v45 = v105;
LABEL_20:
    v48 = __clz(__rbit64(v40));
    v40 &= v40 - 1;
    v49 = v48 | (v44 << 6);
    v50 = v95;
    v51 = v96;
    v52 = v94;
    (*(v96 + 16))(v94, v95[6] + *(v96 + 72) * v49, v42);
    v53 = *(v50[7] + 8 * v49);
    v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5BF0, &qword_224DBCEF0);
    v55 = *(v54 + 48);
    v56 = *(v51 + 32);
    v57 = v104;
    v56(v104, v52, v42);
    *(v57 + v55) = v53;
    (*(*(v54 - 8) + 56))(v57, 0, 1, v54);

    v43 = v108;
LABEL_21:
    sub_224C8F308(v57, v45);
    v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5BF0, &qword_224DBCEF0);
    if ((*(*(v58 - 8) + 48))(v45, 1, v58) == 1)
    {
      break;
    }

    v59 = *(v45 + *(v58 + 48));
    (*v107)(v109, v45, v42);
    v60 = *(v43 + v101);
    v61 = v102;
    sub_224DAA1E8();
    v62 = v103;
    v63 = sub_224DA9FE8();
    v65 = v64;
    (*v100)(v61, v62);
    if (!*(v60 + 16) || (sub_224DAFE68(), sub_224DAEE78(), v66 = sub_224DAFEA8(), v67 = -1 << *(v60 + 32), v68 = v66 & ~v67, ((*(v60 + 56 + ((v68 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v68) & 1) == 0))
    {
LABEL_8:
      v42 = v106;
      (*v97)(v109, v106);

      goto LABEL_9;
    }

    v69 = ~v67;
    while (1)
    {
      v70 = (*(v60 + 48) + 16 * v68);
      v71 = *v70 == v63 && v70[1] == v65;
      if (v71 || (sub_224DAFD88() & 1) != 0)
      {
        break;
      }

      v68 = (v68 + 1) & v69;
      if (((*(v60 + 56 + ((v68 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v68) & 1) == 0)
      {
        goto LABEL_8;
      }
    }

    if (v59 >> 62)
    {
      v72 = sub_224DAF838();
      if (v72)
      {
LABEL_34:
        if (v72 < 1)
        {
          goto LABEL_51;
        }

        for (i = 0; i != v72; ++i)
        {
          if ((v59 & 0xC000000000000001) != 0)
          {
            v74 = MEMORY[0x22AA5DCC0](i, v59);
          }

          else
          {
            v74 = *(v59 + 8 * i + 32);
          }

          v75 = v74;
          if ([v74 pushPolicy] - 1 >= 2)
          {
          }

          else
          {
            v76 = [v75 controlIdentity];
            v77 = v112;
            sub_224DAE0E8();
            v78 = v111;
            sub_224ADB0B0(v111, v77);

            (*v110)(v78, v113);
          }
        }
      }
    }

    else
    {
      v72 = *((v59 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v72)
      {
        goto LABEL_34;
      }
    }

    v42 = v106;
    (*v97)(v109, v106);
LABEL_9:
    v43 = v108;
    v37 = v99;
    v41 = v98;
  }

  v80 = __swift_project_boxed_opaque_existential_1(v43 + 30, v43[33]);
  v81 = v120;
  v82 = *v80;
  v83 = *(*v80 + 40);
  v1 = swift_allocObject();
  v1[2] = v82;
  v1[3] = v81;
  v84 = swift_allocObject();
  *(v84 + 16) = sub_224C900B0;
  *(v84 + 24) = v1;
  v118 = sub_224BC4B74;
  v119 = v84;
  aBlock = MEMORY[0x277D85DD0];
  v115 = 1107296256;
  v116 = sub_224A9B6F8;
  v117 = &block_descriptor_111_0;
  v85 = _Block_copy(&aBlock);

  dispatch_sync(v83, v85);
  _Block_release(v85);
  LOBYTE(v83) = swift_isEscapingClosureAtFileLocation();

  if ((v83 & 1) == 0)
  {
    return;
  }

  __break(1u);
LABEL_48:
  v86 = __swift_project_boxed_opaque_existential_1(v1 + 30, v1[33]);
  v87 = *v86;
  v88 = *(*v86 + 40);
  v89 = swift_allocObject();
  v90 = MEMORY[0x277D84FA0];
  *(v89 + 16) = v87;
  *(v89 + 24) = v90;
  v91 = swift_allocObject();
  *(v91 + 16) = sub_224C8F300;
  *(v91 + 24) = v89;
  v118 = sub_224A8A838;
  v119 = v91;
  aBlock = MEMORY[0x277D85DD0];
  v115 = 1107296256;
  v116 = sub_224A9B6F8;
  v117 = &block_descriptor_100;
  v92 = _Block_copy(&aBlock);

  dispatch_sync(v88, v92);
  _Block_release(v92);
  LOBYTE(v88) = swift_isEscapingClosureAtFileLocation();

  if (v88)
  {
LABEL_52:
    __break(1u);
  }
}

uint64_t sub_224C8B9D8(uint64_t a1, uint64_t a2, uint64_t a3)
{

  v3 = sub_224DADDD8();

  return v3;
}

uint64_t sub_224C8BA80(void *a1, uint64_t a2)
{
  v4 = [a1 extensionIdentity];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3308, &qword_224DB5C00);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_224DB3100;
  v6 = [a1 kind];
  v7 = sub_224DAEE18();
  v9 = v8;

  *(inited + 32) = v7;
  *(inited + 40) = v9;
  v10 = sub_224AE8AF4(inited);
  swift_setDeallocating();
  sub_224BCA6B4(inited + 32);
  sub_224C84DA4(v4, v10);

  return sub_224C809D8(a1, a2);
}

uint64_t sub_224C8BB84(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F56C0, &unk_224DB3580);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v6 = &v17[-v5];
  v7 = sub_224DAC2B8();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v9);
  v11 = &v17[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = *v1;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F30D0, &unk_224DB2AC0);
  (*(*(v13 - 8) + 56))(v6, 1, 1, v13);
  sub_224C86DA4(a1, v6, v11);
  sub_224A3311C(v6, &qword_27D6F56C0, &unk_224DB3580);
  v14 = *(v12 + OBJC_IVAR____TtC10ChronoCore18LiveControlService__queue);
  v18 = v12;
  v19 = v11;
  v15 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3698, &qword_224DB3C70);
  sub_224DAF3E8();

  return (*(v8 + 8))(v11, v7);
}

uint64_t sub_224C8BD7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_224DACB98();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_224DACC68();
  sub_224C7F6A4(a1, a2, a3, v10);
  return (*(v7 + 8))(v10, v6);
}

void sub_224C8BF10()
{
  v62 = sub_224DA9688();
  v1 = *(v62 - 8);
  v3 = MEMORY[0x28223BE20](v62, v2);
  v5 = &v56 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v3, v6);
  v61 = &v56 - v8;
  v10 = MEMORY[0x28223BE20](v7, v9);
  v12 = &v56 - v11;
  MEMORY[0x28223BE20](v10, v13);
  v15 = &v56 - v14;
  v63 = sub_224DAC2B8();
  v16 = *(v63 - 8);
  MEMORY[0x28223BE20](v63, v17);
  v72 = &v56 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_224DAC108();
  v20 = *(v0 + 136);
  v74 = v0;
  __swift_project_boxed_opaque_existential_1((v0 + 112), v20);
  v21 = v19;
  v22 = sub_224DAC678();
  v87 = MEMORY[0x277D84FA0];
  v71 = *(v19 + 16);
  if (v71)
  {
    v56 = v5;
    v23 = 0;
    v73 = 0;
    v24 = (*(v16 + 80) + 32) & ~*(v16 + 80);
    v79 = *(v22 + 16);
    v70 = v19 + v24;
    v69 = v16 + 16;
    v68 = v16 + 8;
    v78 = v22;
    v65 = v22 + 32;
    v60 = v1;
    v25 = (v1 + 8);
    v26 = &off_27853F000;
    v27 = v63;
    v28 = v16;
    v67 = v15;
    v64 = v16;
    v66 = v21;
    v59 = v1 + 16;
    v58 = v12;
    while (v23 < *(v21 + 16))
    {
      v29 = *(v28 + 72);
      v75 = v23;
      v30 = v72;
      (*(v28 + 16))(v72, v70 + v29 * v23, v27);
      v31 = sub_224DAC2A8();
      (*(v28 + 8))(v30, v27);
      v80 = [v31 v26[311]];

      if (v79)
      {
        v32 = 0;
        v33 = v65;
        while (v32 < *(v78 + 16))
        {
          sub_224A3317C(v33, &v83);
          sub_224A3B79C(0, &qword_281350840, 0x277D82BB8);
          __swift_project_boxed_opaque_existential_1(&v83, v84);
          v34 = sub_224DAE338();
          v35 = sub_224DAF6A8();

          if (v35)
          {
            sub_224A36F98(&v83, v85);
            goto LABEL_13;
          }

          ++v32;
          __swift_destroy_boxed_opaque_existential_1(&v83);
          v33 += 40;
          if (v79 == v32)
          {
            goto LABEL_11;
          }
        }

        __break(1u);
        break;
      }

LABEL_11:
      v86 = 0;
      memset(v85, 0, sizeof(v85));
LABEL_13:
      sub_224A3796C(v85, &v81, &unk_27D6F4700, &unk_224DB3A10);
      v36 = v67;
      if (v82)
      {
        sub_224A36F98(&v81, &v83);
        swift_getObjectType();
        v37 = v73;
        v38 = sub_224DAD2B8();
        if (v37)
        {

          v37 = 0;
        }

        else
        {
          v39 = *(v38 + 16);
          if (v39)
          {
            v57 = 0;
            v40 = (*(v60 + 80) + 32) & ~*(v60 + 80);
            v73 = v38;
            v41 = v36;
            v42 = v38 + v40;
            v77 = *(v60 + 72);
            v76 = *(v60 + 16);
            v43 = v61;
            v44 = v58;
            v45 = v62;
            do
            {
              v76(v41, v42, v45);
              sub_224DA9548();
              v46 = *v25;
              (*v25)(v41, v45);
              sub_224ADB390(v44, v43);
              v46(v44, v45);
              v42 += v77;
              --v39;
            }

            while (v39);

            v27 = v63;
            v26 = &off_27853F000;
            v37 = v57;
          }

          else
          {
          }
        }

        swift_getObjectType();
        v47 = sub_224DAD2B8();
        if (v37)
        {

          __swift_destroy_boxed_opaque_existential_1(&v83);
          sub_224A3311C(v85, &unk_27D6F4700, &unk_224DB3A10);
          v73 = 0;
        }

        else
        {
          v73 = 0;
          v48 = *(v47 + 16);
          if (v48)
          {
            v49 = (*(v60 + 80) + 32) & ~*(v60 + 80);
            v57 = v47;
            v50 = v47 + v49;
            v76 = *(v60 + 72);
            v77 = *(v60 + 16);
            v51 = v62;
            v52 = v58;
            v53 = v61;
            v54 = v56;
            do
            {
              v77(v54, v50, v51);
              sub_224DA9548();
              v55 = *v25;
              (*v25)(v54, v51);
              sub_224ADB390(v52, v53);
              v55(v52, v51);
              v50 += v76;
              --v48;
            }

            while (v48);

            v27 = v63;
            v26 = &off_27853F000;
          }

          else
          {
          }

          __swift_destroy_boxed_opaque_existential_1(&v83);
          sub_224A3311C(v85, &unk_27D6F4700, &unk_224DB3A10);
        }

        v28 = v64;
      }

      else
      {

        sub_224A3311C(v85, &unk_27D6F4700, &unk_224DB3A10);
        sub_224A3311C(&v81, &unk_27D6F4700, &unk_224DB3A10);
      }

      v21 = v66;
      v23 = v75 + 1;
      if (v75 + 1 == v71)
      {

        return;
      }
    }

    __break(1u);
  }

  else
  {
  }
}

uint64_t sub_224C8C6F0()
{
  v1 = 0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F4680, &unk_224DB4610);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v60 = &v51 - v4;
  v5 = sub_224DA9688();
  v56 = *(v5 - 1);
  v7 = MEMORY[0x28223BE20](v5, v6);
  v9 = &v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v7, v10);
  v13 = &v51 - v12;
  v15 = MEMORY[0x28223BE20](v11, v14);
  v52 = &v51 - v16;
  MEMORY[0x28223BE20](v15, v17);
  v19 = &v51 - v18;
  __swift_project_boxed_opaque_existential_1(v0 + 14, v0[17]);
  v20 = sub_224DAC678();
  v21 = v0[28];
  v22 = v0[29];
  v68 = v0;
  __swift_project_boxed_opaque_existential_1(v0 + 25, v21);
  v23 = (*(v22 + 24))(768, v21, v22);
  if (v23)
  {
    v24 = sub_224A7B208(v23);
  }

  else
  {
    v24 = MEMORY[0x277D84F90];
  }

  v82 = MEMORY[0x277D84FA0];
  if (v24 >> 62)
  {
    goto LABEL_38;
  }

  for (i = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_224DAF838())
  {
    v62 = v13;
    v63 = v9;
    v66 = v5;
    v26 = 0;
    v70 = v24 & 0xC000000000000001;
    v74 = *(v20 + 16);
    v65 = v24 & 0xFFFFFFFFFFFFFF8;
    v64 = v24 + 32;
    v67 = v20 + 32;
    v61 = (v56 + 8);
    v57 = (v56 + 48);
    v51 = (v56 + 32);
    v55 = v20;
    v54 = v24;
    v69 = i;
    v53 = (v56 + 16);
    while (1)
    {
      if (v70)
      {
        v27 = MEMORY[0x22AA5DCC0](v26, v24);
        v28 = __OFADD__(v26, 1);
        v29 = v26 + 1;
        if (v28)
        {
          goto LABEL_36;
        }
      }

      else
      {
        if (v26 >= *(v65 + 16))
        {
          goto LABEL_37;
        }

        v27 = *(v64 + 8 * v26);
        v28 = __OFADD__(v26, 1);
        v29 = v26 + 1;
        if (v28)
        {
          goto LABEL_36;
        }
      }

      v72 = v29;
      v71 = v27;
      v75 = [v27 controlIdentity];
      if (v74)
      {
        break;
      }

LABEL_20:
      v81 = 0;
      memset(v80, 0, sizeof(v80));
LABEL_22:
      sub_224A3796C(v80, &v76, &unk_27D6F4700, &unk_224DB3A10);
      v26 = v72;
      if (v77)
      {
        sub_224A36F98(&v76, &v78);
        swift_getObjectType();
        v33 = sub_224DAD2B8();
        if (v1)
        {

          __swift_destroy_boxed_opaque_existential_1(&v78);
          sub_224A3311C(v80, &unk_27D6F4700, &unk_224DB3A10);
          v1 = 0;
          goto LABEL_8;
        }

        v34 = *(v33 + 16);
        if (v34)
        {
          v58 = 0;
          v35 = (*(v56 + 80) + 32) & ~*(v56 + 80);
          v59 = v33;
          v36 = v33 + v35;
          v73 = *(v56 + 72);
          v9 = *(v56 + 16);
          v37 = v66;
          v38 = v63;
          v39 = v19;
          v40 = v62;
          v5 = v53;
          v41 = v61;
          do
          {
            (v9)(v39, v36, v37);
            sub_224DA9548();
            sub_224ADB390(v40, v38);
            v42 = *v41;
            (*v41)(v40, v37);
            v42(v39, v37);
            v36 += v73;
            --v34;
          }

          while (v34);

          v19 = v39;
          v20 = v55;
          v24 = v54;
          v1 = v58;
        }

        else
        {
        }

        v43 = v60;
        v13 = v71;
        sub_224C8D414(v71, v60);
        v44 = v66;
        if ((*v57)(v43, 1, v66) == 1)
        {

          __swift_destroy_boxed_opaque_existential_1(&v78);
          sub_224A3311C(v80, &unk_27D6F4700, &unk_224DB3A10);
          v45 = v43;
          v46 = &unk_27D6F4680;
          v47 = &unk_224DB4610;
        }

        else
        {
          v9 = v52;
          (*v51)(v52, v43, v44);
          v48 = v63;
          sub_224DA9548();
          v5 = v62;
          sub_224ADB390(v62, v48);

          v49 = *v61;
          (*v61)(v5, v44);
          v49(v9, v44);
          __swift_destroy_boxed_opaque_existential_1(&v78);
          v45 = v80;
          v46 = &unk_27D6F4700;
          v47 = &unk_224DB3A10;
        }

        sub_224A3311C(v45, v46, v47);
        v26 = v72;
        if (v72 == v69)
        {
LABEL_34:

          return v82;
        }
      }

      else
      {
        sub_224A3311C(v80, &unk_27D6F4700, &unk_224DB3A10);

        sub_224A3311C(&v76, &unk_27D6F4700, &unk_224DB3A10);
LABEL_8:
        if (v26 == v69)
        {
          goto LABEL_34;
        }
      }
    }

    v30 = 0;
    v31 = v67;
    while (v30 < *(v20 + 16))
    {
      sub_224A3317C(v31, &v78);
      v9 = sub_224A3B79C(0, &qword_281350840, 0x277D82BB8);
      __swift_project_boxed_opaque_existential_1(&v78, v79);
      v5 = sub_224DAE338();
      v13 = [v75 extensionIdentity];
      v32 = sub_224DAF6A8();

      if (v32)
      {
        sub_224A36F98(&v78, v80);
        goto LABEL_22;
      }

      ++v30;
      __swift_destroy_boxed_opaque_existential_1(&v78);
      v31 += 40;
      if (v74 == v30)
      {
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    ;
  }

  return MEMORY[0x277D84FA0];
}

uint64_t sub_224C8CED0()
{
  v2 = v1;
  v3 = v0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F4680, &unk_224DB4610);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v70 = (&v56 - v6);
  v65 = sub_224DA9688();
  v7 = *(v65 - 8);
  v9 = MEMORY[0x28223BE20](v65, v8);
  v62 = &v56 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9, v11);
  v64 = &v56 - v13;
  v15 = MEMORY[0x28223BE20](v12, v14);
  v17 = &v56 - v16;
  MEMORY[0x28223BE20](v15, v18);
  v20 = &v56 - v19;
  v75 = MEMORY[0x277D84FA0];
  v21 = __swift_project_boxed_opaque_existential_1(v0 + 14, v0[17]);
  v22 = sub_224DAC678();
  v23 = *(v22 + 16);
  if (v23)
  {
    v24 = v3[2];
    v68 = v3[3];
    v69 = v24;
    ObjectType = swift_getObjectType();
    v26 = 0;
    v66 = v22 + 32;
    v67 = ObjectType;
    v27 = (v7 + 8);
    v58 = v7;
    v59 = v3;
    v57 = v22;
    v60 = v23;
    v56 = v7 + 16;
    while (v26 < *(v22 + 16))
    {
      v71 = v26;
      sub_224A3317C(v66 + 40 * v26, v74);
      v21 = v69;
      v28 = sub_224DAD2B8();
      if (v2)
      {

        __swift_destroy_boxed_opaque_existential_1(v74);
        v2 = 0;
      }

      else
      {
        v21 = v28;
        __swift_destroy_boxed_opaque_existential_1(v74);
        v29 = *(v21 + 2);
        if (v29)
        {
          v63 = 0;
          v30 = (*(v7 + 80) + 32) & ~*(v7 + 80);
          v61 = v21;
          v31 = v21 + v30;
          v32 = *(v7 + 72);
          v72 = *(v7 + 16);
          v73 = v32;
          v33 = v64;
          v34 = v65;
          do
          {
            v72(v20, v31, v34);
            sub_224DA9548();
            sub_224ADB390(v17, v33);
            v21 = *v27;
            (*v27)(v17, v34);
            v21(v20, v34);
            v31 += v73;
            --v29;
          }

          while (v29);

          v7 = v58;
          v3 = v59;
          v2 = v63;
          v22 = v57;
        }

        else
        {
        }

        v23 = v60;
      }

      v26 = v71 + 1;
      if (v71 + 1 == v23)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_28:
    result = sub_224DAF838();
    v38 = result;
    if (!result)
    {
      goto LABEL_29;
    }

    goto LABEL_18;
  }

LABEL_13:

  v35 = v3[28];
  v36 = v3[29];
  __swift_project_boxed_opaque_existential_1(v3 + 25, v35);
  result = (*(v36 + 24))(768, v35, v36);
  if (result)
  {
    v23 = sub_224A7B208(result);
  }

  else
  {
    v23 = MEMORY[0x277D84F90];
  }

  v21 = v70;
  v63 = v2;
  if (v23 >> 62)
  {
    goto LABEL_28;
  }

  v38 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v38)
  {
LABEL_29:

    return v75;
  }

LABEL_18:
  if (v38 >= 1)
  {
    v73 = v17;
    v39 = 0;
    v40 = v23 & 0xC000000000000001;
    v41 = v7;
    v42 = (v7 + 48);
    v68 = (v41 + 8);
    v69 = (v41 + 32);
    v43 = v65;
    v71 = v23;
    v72 = (v23 & 0xC000000000000001);
    do
    {
      if (v40)
      {
        v54 = MEMORY[0x22AA5DCC0](v39, v23);
      }

      else
      {
        v54 = *(v23 + 8 * v39 + 32);
      }

      v55 = v54;
      sub_224C8D414(v54, v21);
      v21 = v70;
      if ((*v42)(v70, 1, v43) == 1)
      {

        sub_224A3311C(v21, &unk_27D6F4680, &unk_224DB4610);
      }

      else
      {
        v44 = v62;
        (*v69)(v62, v21, v43);
        v45 = v42;
        v46 = v38;
        v47 = v3;
        v48 = v64;
        sub_224DA9548();
        v49 = v73;
        v50 = v48;
        v3 = v47;
        v38 = v46;
        v42 = v45;
        sub_224ADB390(v73, v50);

        v51 = *v68;
        v52 = v49;
        v43 = v65;
        (*v68)(v52, v65);
        v53 = v44;
        v23 = v71;
        v40 = v72;
        v51(v53, v43);
        v21 = v70;
      }

      ++v39;
    }

    while (v38 != v39);
    goto LABEL_29;
  }

  __break(1u);
  return result;
}

uint64_t sub_224C8D414@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v73 = a2;
  v4 = sub_224DAB258();
  v74 = *(v4 - 8);
  v75 = v4;
  v6 = MEMORY[0x28223BE20](v4, v5);
  v67 = &v62 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v8);
  v65 = &v62 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F56C0, &unk_224DB3580);
  MEMORY[0x28223BE20](v10 - 8, v11);
  v13 = (&v62 - v12);
  v14 = sub_224DAC2B8();
  v69 = *(v14 - 8);
  v70 = v14;
  MEMORY[0x28223BE20](v14, v15);
  v17 = &v62 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F4680, &unk_224DB4610);
  MEMORY[0x28223BE20](v18 - 8, v19);
  v21 = &v62 - v20;
  v22 = sub_224DA9688();
  v72 = *(v22 - 8);
  v24 = MEMORY[0x28223BE20](v22, v23);
  v63 = &v62 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x28223BE20](v24, v26);
  v64 = &v62 - v28;
  MEMORY[0x28223BE20](v27, v29);
  v31 = &v62 - v30;
  v71 = v2;
  swift_getObjectType();
  v66 = a1;
  v32 = [a1 controlIdentity];
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F30D0, &unk_224DB2AC0);
  (*(*(v33 - 8) + 56))(v13, 1, 1, v33);
  sub_224C86DA4(v32, v13, v17);

  sub_224A3311C(v13, &qword_27D6F56C0, &unk_224DB3580);
  v34 = v21;
  sub_224DACEF8();
  v35 = v71;
  v67 = v31;
  v36 = v65;
  v37 = v74;
  v38 = v75;
  (*(v69 + 8))(v17, v70);
  v39 = v72;
  v40 = v21;
  v41 = (*(v72 + 48))(v21, 1, v22);
  v42 = v22;
  if (v41 == 1)
  {
    sub_224A3311C(v34, &unk_27D6F4680, &unk_224DB4610);
    v43 = 1;
    v44 = v73;
  }

  else
  {
    v46 = v67;
    (*(v39 + 32))(v67, v40, v22);
    (*(v37 + 16))(v36, v35 + OBJC_IVAR____TtC10ChronoCore18LiveControlService_logger, v38);
    v47 = v64;
    (*(v39 + 16))(v64, v46, v22);
    v48 = sub_224DAB228();
    v49 = sub_224DAF2A8();
    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      v68 = v22;
      v51 = v50;
      v70 = v50;
      v71 = swift_slowAlloc();
      v76 = v71;
      *v51 = 136446210;
      v52 = v63;
      sub_224DA9548();
      sub_224C8DD50(&qword_281351A70, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
      v53 = sub_224DAFD28();
      v55 = v54;
      v56 = *(v39 + 8);
      v56(v52, v68);
      v56(v47, v68);
      v57 = sub_224A33F74(v53, v55, &v76);

      v58 = v70;
      *(v70 + 4) = v57;
      v46 = v67;
      _os_log_impl(&dword_224A2F000, v48, v49, "Protecting assetLibrariesDir for configured control %{public}s", v58, 0xCu);
      v59 = v71;
      __swift_destroy_boxed_opaque_existential_1(v71);
      MEMORY[0x22AA5EED0](v59, -1, -1);
      v42 = v68;
      MEMORY[0x22AA5EED0](v58, -1, -1);

      (*(v74 + 8))(v65, v75);
    }

    else
    {

      v56 = *(v39 + 8);
      v56(v47, v22);
      (*(v74 + 8))(v36, v75);
    }

    v60 = v46;
    v61 = v73;
    sub_224DA9548();
    v56(v60, v42);
    v44 = v61;
    v43 = 0;
  }

  return (*(v39 + 56))(v44, v43, 1, v42);
}

uint64_t sub_224C8DC38()
{
  sub_224C8BF10();
  v1 = v0;
  v2 = sub_224C8C6F0();
  return sub_224AD6960(v2, v1);
}

uint64_t sub_224C8DCA0(uint64_t a1)
{
  result = sub_224C8DD50(&qword_281359B88, type metadata accessor for LiveControlService, &unk_224DBCE50);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_224C8DCF8(uint64_t a1)
{
  result = sub_224C8DD50(&qword_281359B78, type metadata accessor for LiveControlService, &unk_224DBCE78);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_224C8DD50(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

double sub_224C8DDD4(void *a1, uint64_t a2, void *a3, void (**a4)(void, void))
{
  v129 = a2;
  v133 = a1;
  v6 = sub_224DAE6E8();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v115 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4030, &unk_224DB5630);
  MEMORY[0x28223BE20](v11 - 8, v12);
  v128 = &v115 - v13;
  v127 = sub_224DA9908();
  v126 = *(v127 - 8);
  MEMORY[0x28223BE20](v127, v14);
  v125 = &v115 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v124 = sub_224DA9878();
  v123 = *(v124 - 1);
  MEMORY[0x28223BE20](v124, v16);
  v122 = &v115 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for ExtensionTask.SchedulingConfiguration(0);
  MEMORY[0x28223BE20](v18 - 8, v19);
  v139 = &v115 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v121 = type metadata accessor for ExtensionTask.Identifier(0);
  v22 = MEMORY[0x28223BE20](v121, v21);
  v130 = &v115 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22, v24);
  v131 = (&v115 - v25);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F56C0, &unk_224DB3580);
  MEMORY[0x28223BE20](v26 - 8, v27);
  v29 = (&v115 - v28);
  v30 = sub_224DAC2B8();
  v137 = *(v30 - 8);
  v138 = v30;
  MEMORY[0x28223BE20](v30, v31);
  v33 = &v115 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = swift_allocObject();
  *(v34 + 16) = a4;
  v35 = swift_allocObject();
  *(v35 + 16) = sub_224BFDE1C;
  *(v35 + 24) = v34;
  v134 = v35;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F30D0, &unk_224DB2AC0);
  (*(*(v36 - 8) + 56))(v29, 1, 1, v36);
  _Block_copy(a4);
  v135 = v34;
  v37 = v133;

  sub_224C86DA4(v37, v29, v33);
  sub_224A3311C(v29, &qword_27D6F56C0, &unk_224DB3580);
  v132 = a3;
  v136 = v33;
  v38 = sub_224DAC168();
  if (v38 && (v39 = sub_224D5D26C(v38), , v39))
  {

    if (qword_281351448 != -1)
    {
      swift_once();
    }

    v40 = sub_224DAB258();
    __swift_project_value_buffer(v40, qword_281364D90);
    v41 = v37;
    v42 = v129;

    v43 = sub_224DAB228();
    v44 = sub_224DAF2A8();

    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      v142 = v47;
      *v45 = 138543618;
      *(v45 + 4) = v41;
      *v46 = v41;
      *(v45 + 12) = 2082;
      v140 = v42;
      sub_224DA9FA8();
      sub_224C8DD50(&qword_27D6F5BC0, MEMORY[0x277CF9F80], MEMORY[0x277CF9F88]);
      v48 = v41;
      v49 = sub_224DAFD28();
      v51 = sub_224A33F74(v49, v50, &v142);

      *(v45 + 14) = v51;
      _os_log_impl(&dword_224A2F000, v43, v44, "Updating state requested for control: %{public}@ to %{public}s...", v45, 0x16u);
      sub_224A3311C(v46, &unk_27D6F69F0, &unk_224DB3900);
      MEMORY[0x22AA5EED0](v46, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v47);
      MEMORY[0x22AA5EED0](v47, -1, -1);
      MEMORY[0x22AA5EED0](v45, -1, -1);
    }

    v52 = v41;
    v53 = sub_224C83DFC(v52);
    v54 = v131;
    *v131 = v52;
    v54[1] = v53;
    v133 = v52;
    v55 = v54;
    swift_storeEnumTagMultiPayload();
    v121 = type metadata accessor for ExtensionTask.Identifier;
    sub_224A4152C(v55, v130, type metadata accessor for ExtensionTask.Identifier);
    v115 = [v52 extensionIdentity];
    v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F33D0, qword_224DB3710);
    (*(*(v56 - 8) + 56))(v139, 1, 1, v56);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5070, &unk_224DB3670);
    v57 = *(type metadata accessor for ExtensionTask.SchedulingOption(0) - 8);
    v58 = *(v57 + 72);
    v59 = (*(v57 + 80) + 32) & ~*(v57 + 80);
    v60 = swift_allocObject();
    *(v60 + 16) = xmmword_224DB8BC0;
    v61 = v60 + v59;
    v62 = sub_224DAE8B8();
    v63 = *(v62 - 8);
    v64 = *(v63 + 56);
    v64(v61, 4, 5, v62);
    v64(v61 + v58, 3, 5, v62);
    (*(v63 + 104))(v61 + 2 * v58, *MEMORY[0x277CE3D20], v62);
    v64(v61 + 2 * v58, 0, 5, v62);
    v116 = type metadata accessor for ExtensionTask(0);
    v65 = objc_allocWithZone(v116);
    sub_224DAE908();
    v66 = OBJC_IVAR____TtC10ChronoCore13ExtensionTask_schedulingOptions;
    *&v65[OBJC_IVAR____TtC10ChronoCore13ExtensionTask_schedulingOptions] = MEMORY[0x277D84F90];
    v67 = OBJC_IVAR____TtC10ChronoCore13ExtensionTask_powerlogWakeReason;
    v117 = sub_224DAC938();
    v118 = *(v117 - 8);
    v68 = *(v118 + 56);
    v119 = v118 + 56;
    v120 = v68;
    v68(&v65[v67], 1, 1, v117);
    v69 = &v65[OBJC_IVAR____TtC10ChronoCore13ExtensionTask_syncWorkItem];
    *v69 = 0;
    v69[1] = 0;
    v70 = &v65[OBJC_IVAR____TtC10ChronoCore13ExtensionTask_asyncWorkItem];
    *v70 = 0;
    v70[1] = 0;
    v71 = &v65[OBJC_IVAR____TtC10ChronoCore13ExtensionTask_taskWorkItem];
    *v71 = 0;
    v71[1] = 0;
    v72 = &v65[OBJC_IVAR____TtC10ChronoCore13ExtensionTask_completion];
    *v72 = 0;
    v72[1] = 0;
    v73 = v122;
    sub_224DA9868();
    (*(v123 + 32))(&v65[OBJC_IVAR____TtC10ChronoCore13ExtensionTask_creationDate], v73, v124);
    v74 = v115;
    *&v65[OBJC_IVAR____TtC10ChronoCore13ExtensionTask_target] = v115;
    sub_224A4152C(v139, &v65[OBJC_IVAR____TtC10ChronoCore13ExtensionTask_schedulingConfiguration], type metadata accessor for ExtensionTask.SchedulingConfiguration);
    swift_beginAccess();
    *&v65[v66] = v60;
    v124 = v74;

    v75 = &v65[OBJC_IVAR____TtC10ChronoCore13ExtensionTask_cost];
    *v75 = 1;
    v75[8] = 0;
    v76 = v130;
    sub_224A4152C(v130, &v65[OBJC_IVAR____TtC10ChronoCore13ExtensionTask_identifier], v121);
    v77 = v125;
    sub_224DA98F8();
    v78 = v126;
    v79 = v127;
    (*(v126 + 16))(&v65[OBJC_IVAR____TtC10ChronoCore13ExtensionTask_taskIdentifier], v77, v127);
    v140 = sub_224DA98E8();
    sub_224A3F6A4();
    v80 = sub_224DAEF18();
    v82 = sub_224A3D19C(8, v80, v81);
    v84 = v83;
    v86 = v85;
    v88 = v87;

    v89 = MEMORY[0x22AA5D1C0](v82, v84, v86, v88);
    v91 = v90;

    v92 = &v65[OBJC_IVAR____TtC10ChronoCore13ExtensionTask_logDigest];
    *v92 = v89;
    v92[1] = v91;
    v65[OBJC_IVAR____TtC10ChronoCore13ExtensionTask_allowCostOverride] = 1;
    v141.receiver = v65;
    v141.super_class = v116;
    v93 = objc_msgSendSuper2(&v141, sel_init);

    (*(v78 + 8))(v77, v79);
    sub_224A3D358(v139, type metadata accessor for ExtensionTask.SchedulingConfiguration);
    sub_224A3D358(v76, type metadata accessor for ExtensionTask.Identifier);
    v94 = v128;
    v95 = v117;
    (*(v118 + 104))(v128, *MEMORY[0x277CF9AE8], v117);
    v120(v94, 0, 1, v95);
    v96 = OBJC_IVAR____TtC10ChronoCore13ExtensionTask_powerlogWakeReason;
    swift_beginAccess();
    sub_224A838C0(v94, &v93[v96], &qword_27D6F4030, &unk_224DB5630);
    swift_endAccess();
    v97 = swift_allocObject();
    v98 = v133;
    v99 = v129;
    *(v97 + 16) = v133;
    *(v97 + 24) = v99;
    v100 = &v93[OBJC_IVAR____TtC10ChronoCore13ExtensionTask_asyncWorkItem];
    v101 = *&v93[OBJC_IVAR____TtC10ChronoCore13ExtensionTask_asyncWorkItem];
    v102 = *&v93[OBJC_IVAR____TtC10ChronoCore13ExtensionTask_asyncWorkItem + 8];
    *v100 = sub_224C8F2E4;
    v100[1] = v97;
    v103 = v98;

    sub_224A3D418(v101, v102);
    v104 = swift_allocObject();
    v104[2] = v103;
    v104[3] = sub_224C900D0;
    v105 = v132;
    v104[4] = v134;
    v104[5] = v105;
    v106 = &v93[OBJC_IVAR____TtC10ChronoCore13ExtensionTask_completion];
    v107 = *&v93[OBJC_IVAR____TtC10ChronoCore13ExtensionTask_completion];
    v108 = *&v93[OBJC_IVAR____TtC10ChronoCore13ExtensionTask_completion + 8];
    *v106 = sub_224C8F2EC;
    *(v106 + 1) = v104;
    v109 = v103;

    sub_224A3D418(v107, v108);
    v110 = v105[51];
    v111 = v105[52];
    __swift_project_boxed_opaque_existential_1(v105 + 48, v110);
    (*(v111 + 16))(v93, v110, v111);

    sub_224A3D358(v131, type metadata accessor for ExtensionTask.Identifier);
  }

  else
  {
    sub_224A3B79C(0, &qword_281350860, 0x277CCA9B8);
    (*(v7 + 104))(v10, *MEMORY[0x277CE3BF8], v6);
    v112 = sub_224DAF638();
    _Block_copy(a4);
    v113 = sub_224DA9518();
    (a4)[2](a4, v113);

    _Block_release(a4);
  }

  (*(v137 + 8))(v136, v138);

  return result;
}

void sub_224C8ECA0(uint64_t a1, void *a2, const void *a3)
{
  v53 = a2;
  v5 = sub_224DAA548();
  v48 = *(v5 - 8);
  v49 = v5;
  MEMORY[0x28223BE20](v5, v6);
  v47 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_224DAE718();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_224DAE738();
  v14 = *(v13 - 8);
  v16 = MEMORY[0x28223BE20](v13, v15);
  v43 = &v42 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16, v18);
  v20 = &v42 - v19;
  v21 = swift_allocObject();
  *(v21 + 16) = a3;
  v22 = swift_allocObject();
  *(v22 + 16) = sub_224B67834;
  *(v22 + 24) = v21;
  v51 = v22;
  _Block_copy(a3);

  v52 = a3;
  _Block_copy(a3);

  sub_224DAA8B8();
  v23 = sub_224DAA0D8();

  v50 = sub_224DAA8C8();
  v46 = a1;
  sub_224DAA8D8();
  sub_224DAE728();
  v24 = *(v14 + 8);
  v44 = v14 + 8;
  v45 = v13;
  v24(v20, v13);
  v25 = (*(v9 + 88))(v12, v8);
  if (v25 == *MEMORY[0x277CE3C70])
  {
    v42 = v24;
    (*(v9 + 8))(v12, v8);
    if (qword_281351448 != -1)
    {
      swift_once();
    }

    v26 = sub_224DAB258();
    __swift_project_value_buffer(v26, qword_281364D90);
    v27 = v23;
    v28 = sub_224DAB228();
    v29 = sub_224DAF2A8();

    v30 = os_log_type_enabled(v28, v29);
    v31 = v51;
    if (v30)
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      *v32 = 138543362;
      *(v32 + 4) = v27;
      *v33 = v27;
      v34 = v27;
      _os_log_impl(&dword_224A2F000, v28, v29, "[%{public}@]: Performing control action with the intent", v32, 0xCu);
      sub_224A3311C(v33, &unk_27D6F69F0, &unk_224DB3900);
      MEMORY[0x22AA5EED0](v33, -1, -1);
      MEMORY[0x22AA5EED0](v32, -1, -1);
    }

    __swift_project_boxed_opaque_existential_1(v53 + 35, v53[38]);
    v36 = v47;
    v35 = v48;
    v37 = v49;
    (*(v48 + 104))(v47, *MEMORY[0x277CFA0A0], v49);
    v38 = v43;
    sub_224DAA8D8();
    v39 = swift_allocObject();
    *(v39 + 16) = sub_224C8F2AC;
    *(v39 + 24) = v31;

    sub_224B92DFC(v27, v36, v38, sub_224C8F2B4, v39);

    v42(v38, v45);
    (*(v35 + 8))(v36, v37);
    v40 = v52;
    goto LABEL_9;
  }

  if (v25 == *MEMORY[0x277CE3C68])
  {
    v40 = v52;
    _Block_copy(v52);

    sub_224C8DDD4(v23, v50, v53, v40);
    _Block_release(v40);

LABEL_9:

    _Block_release(v40);
    return;
  }

  v41 = v52;
  (*(v52 + 2))(v52, 0);

  _Block_release(v41);
  _Block_release(v41);
  sub_224DAFB58();
  __break(1u);
}

uint64_t sub_224C8F2B4(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    a1 = 0;
  }

  return (*(v2 + 16))(a1);
}

uint64_t sub_224C8F308(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5BE8, &qword_224DBCEE8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroy_93Tm()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t objectdestroy_75Tm()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t objectdestroy_78Tm()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t objectdestroy_136Tm()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4280, &unk_224DB65C0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_224C8F56C(void *a1, char a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4280, &unk_224DB65C0);

  return sub_224C820F4(a1, a2 & 1);
}

uint64_t sub_224C8F63C(uint64_t a1)
{
  v3 = *(sub_224DAE738() - 8);
  v4 = (*(v3 + 80) + 48) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  sub_224DAA548();
  v13 = v1[3];
  v14 = v1[2];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1 + v5;
  v9 = *(v1 + v5);
  v10 = *(v8 + 1);
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_224ACFF60;

  return sub_224C7D838(a1, v14, v13, v6, v7, v1 + v4, v9, v10);
}

uint64_t objectdestroy_142Tm()
{
  v1 = sub_224DAE738();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = sub_224DAA548();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v5 + v8 + 16) & ~v8;
  v10 = v3 | v8;
  v11 = (*(v7 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  (*(v7 + 8))(v0 + v9, v6);

  return MEMORY[0x2821FE8E8](v0, v11 + 16, v10 | 7);
}

uint64_t sub_224C8F990(uint64_t a1)
{
  v3 = *(sub_224DAE738() - 8);
  v4 = (*(v3 + 80) + 48) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  sub_224DAA548();
  v13 = v1[3];
  v14 = v1[2];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1 + v5;
  v9 = *(v1 + v5);
  v10 = *(v8 + 1);
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_224ACED1C;

  return sub_224C7D838(a1, v14, v13, v6, v7, v1 + v4, v9, v10);
}

uint64_t sub_224C8FB70(uint64_t a1, char a2, void *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4280, &unk_224DB65C0);
  v7 = *(v3 + 16);
  v8 = *(v3 + 24);

  return sub_224C7C70C(a1, a2 & 1, a3, v7, v8);
}

uint64_t sub_224C8FC08(uint64_t a1)
{
  v4 = *(sub_224DAC528() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_224ACFF60;

  return sub_224C7AAA8(a1, v6, v7, v8, v1 + v5);
}

double sub_224C8FD00(uint64_t a1)
{
  v3 = *(sub_224DAC2B8() - 8);
  v4 = *(v1 + 16);
  v5 = v1 + ((*(v3 + 80) + 24) & ~*(v3 + 80));

  return sub_224C78CBC(a1, v4, v5);
}

uint64_t sub_224C8FDA0(uint64_t (*a1)(void), uint64_t (*a2)(uint64_t, uint64_t))
{
  v3 = *(a1(0) - 8);
  v4 = *(v2 + 16);
  v5 = v2 + ((*(v3 + 80) + 24) & ~*(v3 + 80));

  return a2(v4, v5);
}

uint64_t objectdestroy_113Tm(uint64_t (*a1)(void))
{
  v2 = a1(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 24) & ~v4;
  v6 = *(v3 + 64);

  (*(v3 + 8))(v1 + v5, v2);

  return MEMORY[0x2821FE8E8](v1, v5 + v6, v4 | 7);
}

uint64_t sub_224C8FFBC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_224ACED1C;

  return sub_224C762C4(a1, v4, v5, v7, v6);
}

uint64_t type metadata accessor for ReplicatedExtension(uint64_t a1)
{
  result = qword_281358F70;
  if (!qword_281358F70)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_224C90148(uint64_t a1)
{
  sub_224DACE38();
  if (v1 <= 0x3F)
  {
    sub_224C90214(319, &qword_281350B80, &unk_2813509D0, 0x277CFA378);
    if (v2 <= 0x3F)
    {
      sub_224C90214(319, &qword_281350B78, &qword_2813509B8, 0x277CFA210);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_224C90214(uint64_t a1, unint64_t *a2, unint64_t *a3, void *a4)
{
  if (!*a2)
  {
    sub_224A3B79C(255, a3, a4);
    v5 = sub_224DAF0B8();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_224C9026C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x7470697263736564;
  v4 = 0xEB0000000073726FLL;
  v5 = 0x8000000224DC4620;
  if (v2 != 1)
  {
    v3 = 0xD000000000000012;
    v4 = 0x8000000224DC4620;
  }

  if (*a1)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0x6F69736E65747865;
  }

  if (v2)
  {
    v7 = v4;
  }

  else
  {
    v7 = 0xED00006F666E496ELL;
  }

  v8 = 0x7470697263736564;
  if (*a2 == 1)
  {
    v5 = 0xEB0000000073726FLL;
  }

  else
  {
    v8 = 0xD000000000000012;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x6F69736E65747865;
  }

  if (*a2)
  {
    v10 = v5;
  }

  else
  {
    v10 = 0xED00006F666E496ELL;
  }

  if (v6 == v9 && v7 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_224DAFD88();
  }

  return v11 & 1;
}

uint64_t sub_224C90380()
{
  sub_224DAFE68();
  sub_224DAEE78();

  return sub_224DAFEA8();
}

uint64_t sub_224C9043C(uint64_t a1)
{
  sub_224DAEE78();
}

uint64_t sub_224C904E4(uint64_t a1)
{
  sub_224DAFE68();
  sub_224DAEE78();

  return sub_224DAFEA8();
}

unint64_t sub_224C9059C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_224C91A54(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_224C905CC(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xED00006F666E496ELL;
  v4 = 0xEB0000000073726FLL;
  v5 = 0x7470697263736564;
  if (v2 != 1)
  {
    v5 = 0xD000000000000012;
    v4 = 0x8000000224DC4620;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x6F69736E65747865;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

unint64_t sub_224C90644()
{
  v1 = 0x7470697263736564;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000012;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6F69736E65747865;
  }
}

unint64_t sub_224C906B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_224C91A54(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_224C906E0(uint64_t a1)
{
  v2 = sub_224C910B0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_224C9071C(uint64_t a1)
{
  v2 = sub_224C910B0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_224C90758@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v37 = a2;
  v4 = sub_224DACE38();
  v38 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v5);
  v40 = v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5C10, &qword_224DBD100);
  v39 = *(v41 - 8);
  MEMORY[0x28223BE20](v41, v7);
  v9 = v33 - v8;
  v10 = type metadata accessor for ReplicatedExtension(0);
  MEMORY[0x28223BE20](v10, v11);
  v13 = v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_224C910B0();
  sub_224DAFEF8();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v14 = v38;
  LOBYTE(v42) = 0;
  sub_224C91168(&qword_27D6F5C18, MEMORY[0x277CF9C28]);
  sub_224DAFC68();
  v16 = *(v14 + 32);
  v36 = v13;
  v16(v13, v40, v4);
  v44 = 1;
  sub_224B6AA7C();
  sub_224DAFC68();
  v40 = v9;
  v17 = v42;
  v18 = v43;
  v19 = sub_224DAAD38();
  type metadata accessor for ReplicatedDescriptorsBox();
  v20 = sub_224DAACF8();
  v33[1] = v19;
  v34 = v17;
  v35 = v18;
  v21 = *(v20 + OBJC_IVAR___CHSReplicatedDescriptorsBox_descriptors);
  v22 = v20;

  *&v36[*(v10 + 20)] = v21;
  v44 = 2;
  sub_224DAFC48();
  v23 = v39;
  v24 = v43;
  if (v43 >> 60 == 15)
  {
    sub_224A78024(v34, v35);
    (*(v23 + 8))(v40, v41);
    v25 = MEMORY[0x277D84F90];
  }

  else
  {
    v26 = v42;
    type metadata accessor for ReplicatedControlDescriptorsBox();
    v27 = v26;
    v28 = sub_224DAACF8();
    v29 = v35;
    v30 = v28;
    (*(v23 + 8))(v40, v41);
    sub_224AC1D9C(v27, v24);
    sub_224A78024(v34, v29);
    v25 = *&v30[OBJC_IVAR___CHSReplicatedControlDescriptorsBox_descriptors];
  }

  v32 = v36;
  v31 = v37;
  *&v36[*(v10 + 24)] = v25;
  sub_224C91104(v32, v31);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_224C5AF9C(v32);
}

void sub_224C90C78(void *a1)
{
  v37 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5C20, &unk_224DBD108);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v28 - v6;
  v8 = type metadata accessor for ReplicatedExtension(0);
  v9 = v1;
  v10 = *(v1 + *(v8 + 20));
  v11 = type metadata accessor for ReplicatedDescriptorsBox();
  v12 = objc_allocWithZone(v11);
  *&v12[OBJC_IVAR___CHSReplicatedDescriptorsBox_descriptors] = v10;
  v41.receiver = v12;
  v41.super_class = v11;

  v13 = objc_msgSendSuper2(&v41, sel_init);
  sub_224DAAD38();
  v14 = sub_224DAAD08();
  if (v2)
  {
  }

  else
  {
    v33 = v3;
    v34 = v13;
    v31 = v7;
    v32 = v4;
    v16 = v37;
    v35 = v14;
    v36 = v15;
    v17 = *(v9 + *(v8 + 24));
    v18 = type metadata accessor for ReplicatedControlDescriptorsBox();
    v19 = objc_allocWithZone(v18);
    *&v19[OBJC_IVAR___CHSReplicatedControlDescriptorsBox_descriptors] = v17;
    v40.receiver = v19;
    v40.super_class = v18;

    v20 = objc_msgSendSuper2(&v40, sel_init);
    v21 = sub_224DAAD08();
    v29 = v22;
    v30 = v21;
    __swift_project_boxed_opaque_existential_1(v16, v16[3]);
    sub_224C910B0();
    v23 = v31;
    sub_224DAFF08();
    LOBYTE(v38) = 0;
    sub_224DACE38();
    sub_224C91168(&qword_281350D20, MEMORY[0x277CF9C20]);
    v24 = v33;
    sub_224DAFCE8();
    v25 = v34;
    v38 = v35;
    v39 = v36;
    v42 = 1;
    sub_224B6B30C();
    sub_224DAFCE8();
    v26 = v32;
    v27 = v29;
    v38 = v30;
    v39 = v29;
    v42 = 2;
    sub_224DAFCE8();
    (*(v26 + 8))(v23, v24);

    sub_224A78024(v35, v36);
    sub_224A78024(v30, v27);
  }
}

uint64_t sub_224C91028(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (MEMORY[0x22AA5B110]() & 1) != 0 && (sub_224C9142C(*(a1 + *(a3 + 20)), *(a2 + *(a3 + 20)), &unk_2813509D0, 0x277CFA378))
  {
    v6 = sub_224C9142C(*(a1 + *(a3 + 24)), *(a2 + *(a3 + 24)), &qword_2813509B8, 0x277CFA210);
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

unint64_t sub_224C910B0()
{
  result = qword_281358FA0[0];
  if (!qword_281358FA0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_281358FA0);
  }

  return result;
}

uint64_t sub_224C91104(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ReplicatedExtension(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_224C91168(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_224DACE38();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_224C911D8(unint64_t a1, unint64_t a2, uint64_t (*a3)(void))
{
  v4 = a1;
  v5 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_44;
  }

  v6 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (!(a2 >> 62))
  {
    result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v6 != result)
    {
      goto LABEL_46;
    }

LABEL_5:
    if (!v6)
    {
      goto LABEL_29;
    }

    v8 = v4 & 0xFFFFFFFFFFFFFF8;
    v9 = (v4 & 0xFFFFFFFFFFFFFF8) + 32;
    if (v4 < 0)
    {
      v8 = v4;
    }

    if (v5)
    {
      v9 = v8;
    }

    v10 = a2 & 0xFFFFFFFFFFFFFF8;
    v11 = (a2 & 0xFFFFFFFFFFFFFF8) + 32;
    if ((a2 & 0x8000000000000000) != 0)
    {
      v10 = a2;
    }

    if (a2 >> 62)
    {
      v11 = v10;
    }

    if (v9 == v11)
    {
LABEL_29:
      v19 = 1;
      return v19 & 1;
    }

    if (v6 < 0)
    {
      __break(1u);
      return result;
    }

    v5 = a3(0);
    if (((a2 | v4) & 0xC000000000000001) != 0)
    {
      v12 = a2 & 0xC000000000000001;
      v13 = 4;
      while (1)
      {
        v14 = v13 - 4;
        v15 = v13 - 3;
        if (__OFADD__(v13 - 4, 1))
        {
          __break(1u);
LABEL_40:
          __break(1u);
          goto LABEL_41;
        }

        if ((v4 & 0xC000000000000001) != 0)
        {
          v16 = MEMORY[0x22AA5DCC0](v13 - 4, v4);
          if (!v12)
          {
            goto LABEL_24;
          }
        }

        else
        {
          if (v14 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_42;
          }

          v16 = *(v4 + 8 * v13);
          if (!v12)
          {
LABEL_24:
            if (v14 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_43;
            }

            v17 = *(a2 + 8 * v13);
            goto LABEL_26;
          }
        }

        v17 = MEMORY[0x22AA5DCC0](v13 - 4, a2);
LABEL_26:
        v18 = v17;
        v19 = sub_224DAF6A8();

        if (v19)
        {
          ++v13;
          if (v15 != v6)
          {
            continue;
          }
        }

        return v19 & 1;
      }
    }

    v20 = (v4 + 32);
    v21 = (a2 + 32);
    v22 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v23 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v24 = v6 - 1;
    while (1)
    {
      if (!v22)
      {
        goto LABEL_40;
      }

      if (!v23)
      {
        break;
      }

      v26 = *v20++;
      v25 = v26;
      v27 = *v21++;
      a2 = v25;
      v4 = v27;
      v19 = sub_224DAF6A8();

      v29 = v24-- != 0;
      if (v19)
      {
        --v23;
        --v22;
        if (v29)
        {
          continue;
        }
      }

      return v19 & 1;
    }

LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    v30 = a3;
    v31 = sub_224DAF838();
    a3 = v30;
    v6 = v31;
  }

  v32 = a3;
  result = sub_224DAF838();
  a3 = v32;
  if (v6 == result)
  {
    goto LABEL_5;
  }

LABEL_46:
  v19 = 0;
  return v19 & 1;
}

uint64_t sub_224C9142C(unint64_t a1, unint64_t a2, unint64_t *a3, void *a4)
{
  v5 = a1;
  v6 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_44;
  }

  v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (!(a2 >> 62))
  {
    result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v7 != result)
    {
      goto LABEL_46;
    }

LABEL_5:
    if (!v7)
    {
      goto LABEL_29;
    }

    v9 = v5 & 0xFFFFFFFFFFFFFF8;
    v10 = (v5 & 0xFFFFFFFFFFFFFF8) + 32;
    if (v5 < 0)
    {
      v9 = v5;
    }

    if (v6)
    {
      v10 = v9;
    }

    v11 = a2 & 0xFFFFFFFFFFFFFF8;
    v12 = (a2 & 0xFFFFFFFFFFFFFF8) + 32;
    if ((a2 & 0x8000000000000000) != 0)
    {
      v11 = a2;
    }

    if (a2 >> 62)
    {
      v12 = v11;
    }

    if (v10 == v12)
    {
LABEL_29:
      v20 = 1;
      return v20 & 1;
    }

    if (v7 < 0)
    {
      __break(1u);
      return result;
    }

    v6 = sub_224A3B79C(0, a3, a4);
    if (((a2 | v5) & 0xC000000000000001) != 0)
    {
      v13 = a2 & 0xC000000000000001;
      v14 = 4;
      while (1)
      {
        v15 = v14 - 4;
        v16 = v14 - 3;
        if (__OFADD__(v14 - 4, 1))
        {
          __break(1u);
LABEL_40:
          __break(1u);
          goto LABEL_41;
        }

        if ((v5 & 0xC000000000000001) != 0)
        {
          v17 = MEMORY[0x22AA5DCC0](v14 - 4, v5);
          if (!v13)
          {
            goto LABEL_24;
          }
        }

        else
        {
          if (v15 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_42;
          }

          v17 = *(v5 + 8 * v14);
          if (!v13)
          {
LABEL_24:
            if (v15 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_43;
            }

            v18 = *(a2 + 8 * v14);
            goto LABEL_26;
          }
        }

        v18 = MEMORY[0x22AA5DCC0](v14 - 4, a2);
LABEL_26:
        v19 = v18;
        v20 = sub_224DAF6A8();

        if (v20)
        {
          ++v14;
          if (v16 != v7)
          {
            continue;
          }
        }

        return v20 & 1;
      }
    }

    v21 = (v5 + 32);
    v22 = (a2 + 32);
    v23 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v24 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v25 = v7 - 1;
    while (1)
    {
      if (!v23)
      {
        goto LABEL_40;
      }

      if (!v24)
      {
        break;
      }

      v27 = *v21++;
      v26 = v27;
      v28 = *v22++;
      a2 = v26;
      v5 = v28;
      v20 = sub_224DAF6A8();

      v30 = v25-- != 0;
      if (v20)
      {
        --v24;
        --v23;
        if (v30)
        {
          continue;
        }
      }

      return v20 & 1;
    }

LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    v31 = a4;
    v32 = a3;
    v33 = sub_224DAF838();
    a3 = v32;
    a4 = v31;
    v7 = v33;
  }

  v34 = a4;
  v35 = a3;
  result = sub_224DAF838();
  a3 = v35;
  a4 = v34;
  if (v7 == result)
  {
    goto LABEL_5;
  }

LABEL_46:
  v20 = 0;
  return v20 & 1;
}

uint64_t sub_224C916D4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F30D0, &unk_224DB2AC0);
  v5 = *(v4 - 8);
  v7 = MEMORY[0x28223BE20](v4, v6);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7, v10);
  v12 = &v26 - v11;
  v13 = *(a1 + 16);
  if (v13 != *(a2 + 16))
  {
    v23 = 0;
    return v23 & 1;
  }

  if (!v13 || a1 == a2)
  {
    v23 = 1;
    return v23 & 1;
  }

  v14 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v15 = a1 + v14;
  v16 = a2 + v14;
  v18 = *(v5 + 16);
  v17 = v5 + 16;
  v19 = (v17 - 8);
  v26 = *(v17 + 56);
  v27 = v18;
  while (1)
  {
    v20 = v27;
    result = (v27)(v12, v15, v4);
    if (!v13)
    {
      break;
    }

    v22 = v17;
    v20(v9, v16, v4);
    sub_224C918C4();
    v23 = sub_224DAEDD8();
    v24 = *v19;
    (*v19)(v9, v4);
    v24(v12, v4);
    if (v23)
    {
      v16 += v26;
      v15 += v26;
      v25 = v13-- == 1;
      v17 = v22;
      if (!v25)
      {
        continue;
      }
    }

    return v23 & 1;
  }

  __break(1u);
  return result;
}

unint64_t sub_224C918C4()
{
  result = qword_281351870;
  if (!qword_281351870)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27D6F30D0, &unk_224DB2AC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281351870);
  }

  return result;
}

unint64_t sub_224C91950()
{
  result = qword_27D6F5C28;
  if (!qword_27D6F5C28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D6F5C28);
  }

  return result;
}

unint64_t sub_224C919A8()
{
  result = qword_281358F90;
  if (!qword_281358F90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281358F90);
  }

  return result;
}

unint64_t sub_224C91A00()
{
  result = qword_281358F98;
  if (!qword_281358F98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281358F98);
  }

  return result;
}

unint64_t sub_224C91A54(uint64_t a1, uint64_t a2)
{
  v2 = sub_224DAFBF8();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

void sub_224C91AA0()
{
  v0 = sub_224DA9A08();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = [objc_allocWithZone(MEMORY[0x277CCAA68]) init];
  sub_224DA99E8();
  v6 = sub_224DA99D8();
  (*(v1 + 8))(v4, v0);
  [v5 setTimeZone_];

  qword_281351A58 = v5;
}

id sub_224C91BAC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5060, &qword_224DB5620);
  MEMORY[0x28223BE20](v1 - 8, v2);
  v56 = v43 - v3;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F3920, &qword_224DB35B0);
  v4 = *(v55 - 8);
  MEMORY[0x28223BE20](v55, v5);
  v54 = v43 - v6;
  v44 = v0;
  v7 = [v0 containerDescriptors];
  v43[1] = sub_224A3B79C(0, &unk_281350870, 0x277CFA1E0);
  v8 = sub_224DAF008();

  if (v8 >> 62)
  {
    goto LABEL_35;
  }

  v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v9)
  {
    while (1)
    {
      v58 = MEMORY[0x277D84F90];
      result = sub_224DAF9E8();
      if (v9 < 0)
      {
        break;
      }

      v11 = 0;
      v48 = v8;
      v49 = v8 & 0xC000000000000001;
      v45 = v8 + 32;
      v46 = v8 & 0xFFFFFFFFFFFFFF8;
      v53 = v4 + 2;
      v47 = v9;
      while (1)
      {
        v13 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
          break;
        }

        if (v49)
        {
          v14 = MEMORY[0x22AA5DCC0]();
        }

        else
        {
          if (v11 >= *(v46 + 16))
          {
            goto LABEL_34;
          }

          v14 = *(v45 + 8 * v11);
        }

        v15 = v14;
        v4 = [v14 widgets];
        v16 = sub_224A3B79C(0, &qword_2813508A0, 0x277CFA1E8);
        v17 = sub_224DAF008();

        if (v17 >> 62)
        {
          v18 = sub_224DAF838();
        }

        else
        {
          v18 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v51 = v13;
        v52 = v15;
        v50 = v16;
        if (v18)
        {
          v57 = MEMORY[0x277D84F90];
          sub_224DAF9E8();
          if (v18 < 0)
          {
            goto LABEL_33;
          }

          sub_224DAF538();
          v19 = 0;
          do
          {
            if ((v17 & 0xC000000000000001) != 0)
            {
              v20 = MEMORY[0x22AA5DCC0](v19, v17);
            }

            else
            {
              v20 = *(v17 + 8 * v19 + 32);
            }

            v21 = v20;
            ++v19;
            v22 = [v20 widget];
            v23 = [v22 extensionIdentity];
            v24 = *MEMORY[0x277CFA138];
            swift_beginAccess();
            (*v53)(v54, &v23[v24], v55);
            v25 = *MEMORY[0x277CFA130];
            swift_beginAccess();
            sub_224AFD468(&v23[v25], v56);
            v26 = sub_224DAF508();

            v27 = sub_224C931C8(v26);
            sub_224C92FBC(v27);

            sub_224DAF9B8();
            sub_224DAF9F8();
            sub_224DAFA08();
            sub_224DAF9C8();
          }

          while (v18 != v19);

          v15 = v52;
        }

        else
        {
        }

        v28 = [v15 uniqueIdentifier];
        if (!v28)
        {
          sub_224DAEE18();
          v28 = sub_224DAEDE8();
        }

        v29 = [v15 location];
        v30 = [v15 canAppearInSecureEnvironment];
        v31 = [v15 page];
        v32 = [v15 family];
        v33 = [v15 activeWidget];
        if (v33)
        {
          v34 = v33;
          v35 = [v33 uniqueIdentifier];

          sub_224DAEE18();
          v37 = v36;
        }

        else
        {
          v37 = 0;
        }

        v38 = sub_224DAEFF8();

        if (v37)
        {
          v12 = sub_224DAEDE8();
        }

        else
        {
          v12 = 0;
        }

        [objc_allocWithZone(MEMORY[0x277CFA1E0]) initWithUniqueIdentifier:v28 location:v29 canAppearInSecureEnvironment:v30 page:v31 family:v32 widgets:v38 activeWidget:v12];

        sub_224DAF9B8();
        v4 = *(v58 + 16);
        sub_224DAF9F8();
        sub_224DAFA08();
        sub_224DAF9C8();
        v11 = v51;
        v8 = v48;
        if (v51 == v47)
        {
          goto LABEL_36;
        }
      }

      __break(1u);
LABEL_33:
      __break(1u);
LABEL_34:
      __break(1u);
LABEL_35:
      v9 = sub_224DAF838();
      if (!v9)
      {
        goto LABEL_36;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_36:

    v39 = [v44 metricsSpecification];
    v40 = objc_allocWithZone(MEMORY[0x277CFA360]);
    v41 = sub_224DAEFF8();

    v42 = [v40 initWithContainerDescriptors:v41 metricsSpecification:v39];

    return v42;
  }

  return result;
}

id sub_224C9222C()
{
  result = [objc_allocWithZone(MEMORY[0x277CFA400]) initWithMaximumRefreshes:1 perWindow:900.0];
  qword_27D6F71D0 = result;
  return result;
}

uint64_t sub_224C92270@<X0>(id *a1@<X0>, uint64_t *a2@<X8>, uint64_t a3@<X1>)
{
  v5 = [*a1 widgets];
  sub_224A3B79C(0, &qword_2813508A0, 0x277CFA1E8);
  v6 = sub_224DAF008();

  v10[2] = a3;
  v7 = sub_224AEA1F4(sub_224C9337C, v10, v6);

  if (v7 >> 62)
  {
    if (sub_224DAF838())
    {
      goto LABEL_3;
    }

LABEL_5:

    v8 = 0;
    goto LABEL_6;
  }

  if (!*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_5;
  }

LABEL_3:
  v8 = sub_224C92CC8(v7);

LABEL_6:
  *a2 = v8;
  return result;
}

void *sub_224C92388(uint64_t a1, uint64_t a2, void *a3)
{
  [objc_opt_self() defaultStrategy];
  objc_opt_self();
  swift_dynamicCastObjCClassUnconditional();
  [v3 mutableCopy];
  sub_224DAF758();
  swift_unknownObjectRelease();
  sub_224A3B79C(0, &qword_27D6F5C30, 0x277CFA2B0);
  swift_dynamicCast();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5D90, &qword_224DB5FD0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_224DB2780;
  *(inited + 32) = a3;
  v6 = a3;
  sub_224AE9C84(inited);
  swift_setDeallocating();
  swift_arrayDestroy();
  v7 = objc_allocWithZone(MEMORY[0x277CFA408]);
  v8 = sub_224DAEDE8();
  sub_224A3B79C(0, &unk_281350A20, 0x277CFA400);
  sub_224A5D644(&unk_281350A10, &unk_281350A20, 0x277CFA400);
  v9 = sub_224DAF1A8();

  v10 = [v7 initWithIdentifier:v8 rateLimits:v9];

  v11 = [v68 rateLimitPolicies];
  if (v11)
  {
    v12 = v11;
    sub_224A3B79C(0, &qword_281350930, 0x277CFA408);
    sub_224A5D644(&unk_281350920, &qword_281350930, 0x277CFA408);
    sub_224DAF1B8();
  }

  v55 = v10;
  sub_224ADCAD0(v69, v55);

  sub_224A3B79C(0, &qword_281350930, 0x277CFA408);
  sub_224A5D644(&unk_281350920, &qword_281350930, 0x277CFA408);
  v13 = sub_224DAF1A8();
  [v68 setRateLimitPolicies_];

  v14 = [v68 containerDescriptors];
  sub_224A3B79C(0, &unk_281350870, 0x277CFA1E0);
  v15 = sub_224DAF008();

  if (v15 >> 62)
  {
    goto LABEL_42;
  }

  v16 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v16)
  {
    while (1)
    {
      result = sub_224DAF9E8();
      if (v16 < 0)
      {
        break;
      }

      v18 = 0;
      v59 = v16;
      v60 = v15 & 0xC000000000000001;
      v56 = v15 + 32;
      v57 = v15 & 0xFFFFFFFFFFFFFF8;
      v19 = &unk_27D6F5C38;
      v58 = v15;
      while (1)
      {
        v21 = v18 + 1;
        if (__OFADD__(v18, 1))
        {
          break;
        }

        if (v60)
        {
          v22 = MEMORY[0x22AA5DCC0]();
        }

        else
        {
          if (v18 >= *(v57 + 16))
          {
            goto LABEL_41;
          }

          v22 = *(v56 + 8 * v18);
        }

        v23 = v22;
        v24 = [v22 widgets];
        sub_224A3B79C(0, &qword_2813508A0, 0x277CFA1E8);
        v25 = sub_224DAF008();

        if (v25 >> 62)
        {
          v26 = sub_224DAF838();
        }

        else
        {
          v26 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v62 = v21;
        v63 = v23;
        if (v26)
        {
          v67 = MEMORY[0x277D84F90];
          sub_224DAF9E8();
          if (v26 < 0)
          {
            goto LABEL_40;
          }

          v27 = sub_224A3B79C(0, &qword_281350840, 0x277D82BB8);
          v28 = 0;
          v29 = v25 & 0xC000000000000001;
          do
          {
            if (v29)
            {
              v30 = MEMORY[0x22AA5DCC0](v28, v25);
            }

            else
            {
              v30 = *(v25 + 8 * v28 + 32);
            }

            v31 = v30;
            [v30 mutableCopy];
            sub_224DAF758();
            swift_unknownObjectRelease();
            sub_224A3B79C(0, v19, 0x277CFA288);
            swift_dynamicCast();
            v32 = [v66 refreshStrategy];
            objc_opt_self();
            swift_dynamicCastObjCClassUnconditional();
            if (sub_224DAF6A8())
            {
              v33 = objc_allocWithZone(MEMORY[0x277CFA448]);
              v64 = v31;
              v34 = v29;
              v35 = v27;
              v36 = v26;
              v37 = v25;
              v38 = v19;
              v39 = sub_224DAEDE8();
              v40 = [v33 initWithRateLimitIdentifier_];

              v19 = v38;
              v25 = v37;
              v26 = v36;
              v27 = v35;
              v29 = v34;
              v31 = v64;
              [v66 setRefreshStrategy_];
            }

            swift_unknownObjectRelease();

            ++v28;
            sub_224DAF9B8();
            sub_224DAF9F8();
            sub_224DAFA08();
            sub_224DAF9C8();
          }

          while (v26 != v28);

          v41 = v67;
          v15 = v58;
        }

        else
        {

          v41 = MEMORY[0x277D84F90];
        }

        v42 = [v23 uniqueIdentifier];
        if (!v42)
        {
          sub_224DAEE18();
          v42 = sub_224DAEDE8();
        }

        v43 = [v23 location];
        v44 = [v23 canAppearInSecureEnvironment];
        v65 = [v23 page];
        v61 = [v23 family];

        if (v41 >> 62)
        {
          sub_224DAFB68();
        }

        else
        {
          sub_224DAFD98();
        }

        v45 = [v23 activeWidget];
        if (v45)
        {
          v46 = v45;
          v47 = v44;
          v48 = v43;
          v49 = v15;
          v50 = [v45 uniqueIdentifier];

          sub_224DAEE18();
          v52 = v51;

          v15 = v49;
          v43 = v48;
          v44 = v47;
        }

        else
        {
          v52 = 0;
        }

        v53 = sub_224DAEFF8();

        if (v52)
        {
          v20 = sub_224DAEDE8();
        }

        else
        {
          v20 = 0;
        }

        [objc_allocWithZone(MEMORY[0x277CFA1E0]) initWithUniqueIdentifier:v42 location:v43 canAppearInSecureEnvironment:v44 page:v65 family:v61 widgets:v53 activeWidget:v20];

        sub_224DAF9B8();
        sub_224DAF9F8();
        sub_224DAFA08();
        sub_224DAF9C8();
        v18 = v62;
        if (v62 == v59)
        {
          goto LABEL_43;
        }
      }

      __break(1u);
LABEL_40:
      __break(1u);
LABEL_41:
      __break(1u);
LABEL_42:
      v16 = sub_224DAF838();
      if (!v16)
      {
        goto LABEL_43;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_43:

    v54 = sub_224DAEFF8();

    [v68 setContainerDescriptors_];

    swift_unknownObjectRelease();
    return v68;
  }

  return result;
}

id sub_224C92CC8(uint64_t a1)
{
  v2 = [v1 uniqueIdentifier];
  if (!v2)
  {
    sub_224DAEE18();
    v2 = sub_224DAEDE8();
  }

  v3 = [v1 location];
  v4 = [v1 canAppearInSecureEnvironment];
  v5 = [v1 page];
  v6 = [v1 family];
  v7 = [v1 activeWidget];
  if (v7)
  {
    v8 = v7;
    v9 = [v7 uniqueIdentifier];

    sub_224DAEE18();
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  sub_224A3B79C(0, &qword_2813508A0, 0x277CFA1E8);
  v12 = sub_224DAEFF8();
  if (v11)
  {
    v13 = sub_224DAEDE8();
  }

  else
  {
    v13 = 0;
  }

  v14 = [objc_allocWithZone(MEMORY[0x277CFA1E0]) initWithUniqueIdentifier:v2 location:v3 canAppearInSecureEnvironment:v4 page:v5 family:v6 widgets:v12 activeWidget:v13];

  return v14;
}

void sub_224C92E88(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 widget];
  v4 = [v3 extensionIdentity];
  v5 = &v4[*MEMORY[0x277CFA128]];
  swift_beginAccess();
  v7 = *v5;
  v6 = *(v5 + 1);

  if (!v6)
  {
    goto LABEL_7;
  }

  if (v7 == sub_224DA9898() && v6 == v8)
  {

    goto LABEL_9;
  }

  v10 = sub_224DAFD88();

  if (v10)
  {
LABEL_9:
    v11 = sub_224C92FBC(v3);

    goto LABEL_10;
  }

LABEL_7:

  v11 = 0;
LABEL_10:
  *a2 = v11;
}

id sub_224C92FBC(uint64_t a1)
{
  v3 = [v1 uniqueIdentifier];
  if (!v3)
  {
    sub_224DAEE18();
    v3 = sub_224DAEDE8();
  }

  v4 = [v1 metrics];
  v5 = [objc_allocWithZone(MEMORY[0x277CFA288]) initWithUniqueIdentifier:v3 widget:a1 metrics:v4];

  [v5 setSuggestion_];
  [v5 setSystemConfigured_];
  [v5 setSupportedColorSchemes_];
  v6 = [v1 supportedRenderSchemes];
  if (!v6)
  {
    sub_224A3B79C(0, &qword_281350960, 0x277CFA430);
    sub_224DAF008();
    v6 = sub_224DAEFF8();
  }

  [v5 setSupportedRenderSchemes_];

  [v5 setShowsWidgetLabel_];
  v7 = [v1 displayProperties];
  [v5 setDisplayProperties_];

  [v5 setSupportsLowLuminance_];
  return v5;
}

id sub_224C931C8(uint64_t a1)
{
  v2 = v1;
  v4 = [v1 kind];
  if (!v4)
  {
    sub_224DAEE18();
    v4 = sub_224DAEDE8();
  }

  v5 = [v2 family];
  v6 = [v2 intentReference];
  v7 = [v2 activityIdentifier];
  if (v7)
  {
    v8 = v7;
    sub_224DAEE18();
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  v11 = [v2 personaIdentifier];
  if (v11)
  {
    v12 = v11;
    sub_224DAEE18();
    v14 = v13;

    if (v10)
    {
      goto LABEL_8;
    }

LABEL_11:
    v15 = 0;
    if (v14)
    {
      goto LABEL_9;
    }

LABEL_12:
    v16 = 0;
    goto LABEL_13;
  }

  v14 = 0;
  if (!v10)
  {
    goto LABEL_11;
  }

LABEL_8:
  v15 = sub_224DAEDE8();

  if (!v14)
  {
    goto LABEL_12;
  }

LABEL_9:
  v16 = sub_224DAEDE8();

LABEL_13:
  v17 = [objc_allocWithZone(MEMORY[0x277CFA358]) initWithExtensionIdentity:a1 kind:v4 family:v5 intentReference:v6 activityIdentifier:v15 personaIdentifier:v16];

  return v17;
}

uint64_t sub_224C93398(uint64_t a1, uint64_t a2)
{
  v23 = a1;
  v24 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5C48, &qword_224DBD308);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v23 - v6;
  v8 = sub_224DA9908();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v12 = MEMORY[0x28223BE20](v8, v11);
  v13 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12, v14);
  v16 = &v23 - v15;
  (*(v4 + 16))(v7, a1, v3);
  v17 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v18 = swift_allocObject();
  (*(v4 + 32))(v18 + v17, v7, v3);
  v19 = v24;
  sub_224C937C8(sub_224C941F8, v18, v16);

  (*(v9 + 16))(v13, v16, v8);
  v20 = (*(v9 + 80) + 24) & ~*(v9 + 80);
  v21 = swift_allocObject();
  *(v21 + 16) = v19;
  (*(v9 + 32))(v21 + v20, v13, v8);

  sub_224DAF138();
  return (*(v9 + 8))(v16, v8);
}

uint64_t sub_224C93638(uint64_t a1)
{
  v2 = sub_224DAD9C8();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5C50, &unk_224DBD310);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v9);
  v11 = &v13 - v10;
  (*(v3 + 16))(v6, a1, v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5C48, &qword_224DBD308);
  sub_224DAF148();
  return (*(v8 + 8))(v11, v7);
}

double sub_224C937C8@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_224DAB7B8();
  v47 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v7);
  v45 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_224DAB848();
  v44 = *(v46 - 8);
  MEMORY[0x28223BE20](v46, v9);
  v43 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_224DA9908();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11, v13);
  v15 = &v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_224DA98F8();
  if (qword_2813516C8 != -1)
  {
    swift_once();
  }

  v16 = sub_224DAB258();
  __swift_project_value_buffer(v16, qword_281365120);
  (*(v12 + 16))(v15, a3, v11);
  v17 = sub_224DAB228();
  v18 = sub_224DAF2A8();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v40 = a1;
    v20 = v19;
    v21 = swift_slowAlloc();
    v41 = a2;
    v39 = v21;
    aBlock[0] = v21;
    *v20 = 136446210;
    sub_224A4C200(&qword_281351A00, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v22 = sub_224DAFD28();
    v23 = a3;
    v24 = v6;
    v26 = v25;
    (*(v12 + 8))(v15, v11);
    v27 = sub_224A33F74(v22, v26, aBlock);
    v6 = v24;
    a3 = v23;

    *(v20 + 4) = v27;
    _os_log_impl(&dword_224A2F000, v17, v18, "Adding observer %{public}s", v20, 0xCu);
    v28 = v39;
    __swift_destroy_boxed_opaque_existential_1(v39);
    a2 = v41;
    MEMORY[0x22AA5EED0](v28, -1, -1);
    v29 = v20;
    a1 = v40;
    MEMORY[0x22AA5EED0](v29, -1, -1);
  }

  else
  {

    (*(v12 + 8))(v15, v11);
  }

  v30 = v42;
  v31 = *(v42 + 24);
  os_unfair_lock_lock(*(v31 + 16));
  sub_224C9725C(v30, a3, a1, a2, aBlock);
  os_unfair_lock_unlock(*(v31 + 16));
  v32 = aBlock[0];
  v33 = swift_allocObject();
  v33[2] = v32;
  v33[3] = a1;
  v33[4] = a2;
  aBlock[4] = sub_224C984EC;
  aBlock[5] = v33;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_224A39F40;
  aBlock[3] = &block_descriptor_37;
  v34 = _Block_copy(aBlock);

  v35 = v43;
  sub_224DAB7E8();
  v48 = MEMORY[0x277D84F90];
  sub_224A4C200(&qword_281350ED0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F3460, &unk_224DB36F0);
  sub_224A9B6A0(&qword_281350BB0, &unk_27D6F3460, &unk_224DB36F0);
  v36 = v45;
  sub_224DAF788();
  MEMORY[0x22AA5D760](0, v35, v36, v34);
  _Block_release(v34);
  (*(v47 + 8))(v36, v6);
  (*(v44 + 8))(v35, v46);

  return result;
}

void sub_224C93D48(uint64_t a1)
{
  v2 = v1;
  v4 = sub_224DA9908();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2813516C8 != -1)
  {
    swift_once();
  }

  v9 = sub_224DAB258();
  __swift_project_value_buffer(v9, qword_281365120);
  (*(v5 + 16))(v8, a1, v4);
  v10 = sub_224DAB228();
  v11 = sub_224DAF2A8();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v22 = a1;
    v13 = v12;
    v14 = swift_slowAlloc();
    v23 = v14;
    *v13 = 136446210;
    sub_224A4C200(&qword_281351A00, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v15 = sub_224DAFD28();
    v17 = v16;
    (*(v5 + 8))(v8, v4);
    v18 = sub_224A33F74(v15, v17, &v23);

    *(v13 + 4) = v18;
    _os_log_impl(&dword_224A2F000, v10, v11, "Removing observer %{public}s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v14);
    MEMORY[0x22AA5EED0](v14, -1, -1);
    v19 = v13;
    a1 = v22;
    MEMORY[0x22AA5EED0](v19, -1, -1);
  }

  else
  {

    (*(v5 + 8))(v8, v4);
  }

  v20 = *(v2 + 24);
  os_unfair_lock_lock(*(v20 + 16));
  sub_224C979BC(v2, a1);
  os_unfair_lock_unlock(*(v20 + 16));
}

uint64_t sub_224C93FFC()
{

  return swift_deallocClassInstance();
}

uint64_t sub_224C94078()
{
  v1 = *v0;
  v2 = *(*v0 + 24);
  os_unfair_lock_lock(*(v2 + 16));
  swift_beginAccess();
  v3 = *(v1 + 32);
  v4 = *(v2 + 16);

  os_unfair_lock_unlock(v4);
  return v3;
}

uint64_t sub_224C940DC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5C40, &qword_224DBD300);
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = &v6 - v3;
  sub_224DAD9C8();
  (*(v1 + 104))(v4, *MEMORY[0x277D85778], v0);
  return sub_224DAF178();
}

uint64_t sub_224C941F8(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5C48, &qword_224DBD308);

  return sub_224C93638(a1);
}

double sub_224C942D8(uint64_t a1)
{
  v2 = v1;
  v4 = sub_224DAD9C8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2813516C8 != -1)
  {
    swift_once();
  }

  v9 = sub_224DAB258();
  __swift_project_value_buffer(v9, qword_281365120);
  (*(v5 + 16))(v8, a1, v4);
  v10 = sub_224DAB228();
  v11 = sub_224DAF2A8();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v23 = v1;
    v13 = v12;
    v14 = swift_slowAlloc();
    v24 = v14;
    *v13 = 136446210;
    sub_224A4C200(&qword_27D6F4B70, MEMORY[0x277CF9D80], MEMORY[0x277CF9D98]);
    v15 = sub_224DAFD28();
    v17 = v16;
    (*(v5 + 8))(v8, v4);
    v18 = sub_224A33F74(v15, v17, &v24);

    *(v13 + 4) = v18;
    _os_log_impl(&dword_224A2F000, v10, v11, "Updating subscription to remote activity in cache: %{public}s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v14);
    MEMORY[0x22AA5EED0](v14, -1, -1);
    v19 = v13;
    v2 = v23;
    MEMORY[0x22AA5EED0](v19, -1, -1);
  }

  else
  {

    (*(v5 + 8))(v8, v4);
  }

  v20 = *(v2 + 24);
  os_unfair_lock_lock(*(v20 + 16));
  sub_224C94598(v2, a1);
  os_unfair_lock_unlock(*(v20 + 16));
  return sub_224C94AD4(a1);
}

uint64_t sub_224C94598(uint64_t a1, uint64_t a2)
{
  v5 = sub_224DAD9C8();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3BD8, &qword_224DB9C20);
  MEMORY[0x28223BE20](v10 - 8, v11);
  v13 = &v39 - v12;
  v14 = sub_224DA9908();
  v16 = MEMORY[0x28223BE20](v14, v15);
  v20 = &v39 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + 16))
  {
    v45 = v18;
    v46 = v16;
    v47 = a1;
    MEMORY[0x28223BE20](v16, v17);
    v49 = v21;
    *(&v39 - 2) = v21;

    sub_224DABBC8();
    if (v2)
    {
      if (qword_2813516C8 != -1)
      {
        swift_once();
      }

      v22 = sub_224DAB258();
      __swift_project_value_buffer(v22, qword_281365120);
      (*(v6 + 16))(v9, v49, v5);
      v23 = v2;
      v24 = sub_224DAB228();
      v25 = sub_224DAF288();

      v44 = v24;
      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        v40 = v26;
        v42 = swift_slowAlloc();
        v43 = swift_slowAlloc();
        v48[0] = v43;
        *v26 = 136446466;
        v41 = v25;
        sub_224DAD988();
        sub_224A4C200(&qword_281351A00, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
        v27 = v46;
        v39 = sub_224DAFD28();
        v29 = v28;
        (*(v45 + 8))(v20, v27);
        (*(v6 + 8))(v9, v5);
        v30 = sub_224A33F74(v39, v29, v48);

        v31 = v40;
        *(v40 + 1) = v30;
        *(v31 + 6) = 2114;
        v32 = v31;
        v33 = v2;
        v34 = _swift_stdlib_bridgeErrorToNSError();
        *(v32 + 14) = v34;
        v35 = v42;
        *v42 = v34;
        v36 = v44;
        _os_log_impl(&dword_224A2F000, v44, v41, "Failed to update activity subscription in store: %{public}s; %{public}@", v32, 0x16u);
        sub_224A3311C(v35, &unk_27D6F69F0, &unk_224DB3900);
        MEMORY[0x22AA5EED0](v35, -1, -1);
        v37 = v43;
        __swift_destroy_boxed_opaque_existential_1(v43);
        MEMORY[0x22AA5EED0](v37, -1, -1);
        MEMORY[0x22AA5EED0](v32, -1, -1);
      }

      else
      {

        (*(v6 + 8))(v9, v5);
      }
    }

    else
    {
    }

    a2 = v49;
  }

  sub_224DAD988();
  (*(v6 + 16))(v13, a2, v5);
  (*(v6 + 56))(v13, 0, 1, v5);
  swift_beginAccess();
  sub_224B09374(v13, v20);
  return swift_endAccess();
}

double sub_224C94AD4(uint64_t a1)
{
  v3 = sub_224DAB7B8();
  v59 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v4);
  v57 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = sub_224DAB848();
  v56 = *(v58 - 8);
  MEMORY[0x28223BE20](v58, v6);
  v55 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_224DA9908();
  v49 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v9);
  v11 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_224DAD9C8();
  v13 = *(v12 - 8);
  v15 = MEMORY[0x28223BE20](v12, v14);
  v52 = v16;
  v53 = &v45 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15, v17);
  v19 = &v45 - v18;
  v20 = *(v1 + 24);
  os_unfair_lock_lock(*(v20 + 16));
  swift_beginAccess();
  v54 = v1;
  v21 = *(v1 + 40);
  v22 = *(v20 + 16);
  v51 = v21;

  os_unfair_lock_unlock(v22);
  if (qword_2813516C8 != -1)
  {
    swift_once();
  }

  v23 = sub_224DAB258();
  __swift_project_value_buffer(v23, qword_281365120);
  v50 = *(v13 + 16);
  v50(v19, a1, v12);
  v24 = v12;
  v25 = sub_224DAB228();
  v26 = sub_224DAF2A8();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v47 = a1;
    v28 = v27;
    v46 = swift_slowAlloc();
    aBlock[0] = v46;
    *v28 = 136446210;
    v45 = v24;
    sub_224DAD988();
    sub_224A4C200(&qword_281351A00, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v29 = sub_224DAFD28();
    v48 = v3;
    v31 = v30;
    (*(v49 + 8))(v11, v8);
    v32 = v19;
    v33 = v45;
    (*(v13 + 8))(v32, v45);
    v34 = sub_224A33F74(v29, v31, aBlock);
    v3 = v48;

    *(v28 + 4) = v34;
    _os_log_impl(&dword_224A2F000, v25, v26, "Publishing change to subscription %{public}s", v28, 0xCu);
    v35 = v46;
    __swift_destroy_boxed_opaque_existential_1(v46);
    MEMORY[0x22AA5EED0](v35, -1, -1);
    v36 = v28;
    a1 = v47;
    MEMORY[0x22AA5EED0](v36, -1, -1);

    v37 = v33;
  }

  else
  {

    (*(v13 + 8))(v19, v24);
    v37 = v24;
  }

  v38 = v53;
  v50(v53, a1, v37);
  v39 = (*(v13 + 80) + 24) & ~*(v13 + 80);
  v40 = swift_allocObject();
  *(v40 + 16) = v51;
  (*(v13 + 32))(v40 + v39, v38, v37);
  aBlock[4] = sub_224C9866C;
  aBlock[5] = v40;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_224A39F40;
  aBlock[3] = &block_descriptor_28_2;
  v41 = _Block_copy(aBlock);
  v42 = v55;
  sub_224DAB7E8();
  v60 = MEMORY[0x277D84F90];
  sub_224A4C200(&qword_281350ED0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F3460, &unk_224DB36F0);
  sub_224A9B6A0(&qword_281350BB0, &unk_27D6F3460, &unk_224DB36F0);
  v43 = v57;
  sub_224DAF788();
  MEMORY[0x22AA5D760](0, v42, v43, v41);
  _Block_release(v41);
  (*(v59 + 8))(v43, v3);
  (*(v56 + 8))(v42, v58);

  return result;
}

uint64_t sub_224C9516C(uint64_t a1, double a2)
{
  v4 = sub_224DAD9C8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_224DA9878();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v11);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);

  v15 = sub_224AE8AF4(v14);

  sub_224DA9808();
  v30 = MEMORY[0x277D84F90];
  v16 = *(v2 + 24);
  os_unfair_lock_lock(*(v16 + 16));
  v29 = v13;
  sub_224C953D0(v2, v15, v13, &v30, a2);

  os_unfair_lock_unlock(*(v16 + 16));
  v17 = v30;
  v18 = *(v30 + 16);
  if (v18)
  {
    v27 = v10;
    v28 = v9;
    v21 = *(v5 + 16);
    v20 = v5 + 16;
    v19 = v21;
    v22 = v30 + ((*(v20 + 64) + 32) & ~*(v20 + 64));
    v23 = *(v20 + 56);

    do
    {
      v19(v8, v22, v4);
      v24 = sub_224C94AD4(v8);
      (*(v20 - 8))(v8, v4, v24);
      v22 += v23;
      --v18;
    }

    while (v18);

    v10 = v27;
    v9 = v28;
  }

  (*(v10 + 8))(v29, v9);
  return v17;
}

void sub_224C953D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, double a5)
{
  v167 = a4;
  v164 = a3;
  v196 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3BD8, &qword_224DB9C20);
  MEMORY[0x28223BE20](v6 - 8, v7);
  v166 = &v157 - v8;
  v181 = sub_224DA9878();
  v9 = *(v181 - 8);
  MEMORY[0x28223BE20](v181, v10);
  v163 = &v157 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F32B0, &qword_224DB3EA0);
  v14 = MEMORY[0x28223BE20](v12 - 8, v13);
  v168 = &v157 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14, v16);
  v180 = &v157 - v17;
  v191 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F30D0, &unk_224DB2AC0);
  v18 = *(v191 - 8);
  MEMORY[0x28223BE20](v191, v19);
  v190 = &v157 - v20;
  v21 = sub_224DAD9C8();
  v22 = *(v21 - 8);
  v24 = MEMORY[0x28223BE20](v21, v23);
  v177 = &v157 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x28223BE20](v24, v26);
  v165 = &v157 - v28;
  v30 = MEMORY[0x28223BE20](v27, v29);
  v204 = &v157 - v31;
  MEMORY[0x28223BE20](v30, v32);
  v185 = &v157 - v33;
  v34 = sub_224DA9908();
  v35 = *(v34 - 8);
  v37 = MEMORY[0x28223BE20](v34, v36);
  v158 = &v157 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = MEMORY[0x28223BE20](v37, v39);
  v42 = &v157 - v41;
  v44 = MEMORY[0x28223BE20](v40, v43);
  v46 = &v157 - v45;
  MEMORY[0x28223BE20](v44, v47);
  v183 = &v157 - v48;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4C60, &unk_224DBA3D0);
  v51 = MEMORY[0x28223BE20](v49 - 8, v50);
  v193 = &v157 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v51, v53);
  v192 = &v157 - v54;
  swift_beginAccess();
  v178 = a1;
  v55 = *(a1 + 32);
  v56 = v55 + 64;
  v57 = 1 << *(v55 + 32);
  if (v57 < 64)
  {
    v58 = ~(-1 << v57);
  }

  else
  {
    v58 = -1;
  }

  v207 = v58 & *(v55 + 64);
  v173 = (v57 + 63) >> 6;
  v198 = (v35 + 16);
  v202 = (v22 + 16);
  v203 = (v35 + 32);
  v208 = (v22 + 32);
  v189 = (v18 + 8);
  v59 = v42;
  v60 = v196;
  v209 = v196 + 56;
  v179 = (v9 + 48);
  v162 = (v9 + 8);
  v194 = v22;
  v201 = (v22 + 8);
  v184 = v35;
  v160 = "lock_subscriptionObservers";
  v187 = v55;

  v61 = 0;
  v62.n128_u64[0] = 136446978;
  v159 = v62;
  v62.n128_u64[0] = 136446466;
  v157 = v62;
  v206 = v34;
  v200 = v46;
  v188 = v56;
  v186 = v21;
  v176 = v59;
  v197 = (v35 + 8);
  while (1)
  {
    v63 = v207;
    if (!v207)
    {
      break;
    }

    v64 = v21;
    v205 = v61;
    v65 = v61;
LABEL_17:
    v207 = (v63 - 1) & v63;
    v69 = __clz(__rbit64(v63)) | (v65 << 6);
    v70 = v187;
    v71 = v184;
    v72 = v183;
    (*(v184 + 16))(v183, *(v187 + 48) + *(v184 + 72) * v69, v34);
    v73 = v194;
    v74 = v34;
    v75 = v185;
    (*(v194 + 16))(v185, *(v70 + 56) + *(v194 + 72) * v69, v64);
    v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4C68, &unk_224DBA3F0);
    v77 = *(v76 + 48);
    v78 = *(v71 + 32);
    v79 = v193;
    v78(v193, v72, v74);
    v80 = v75;
    v81 = v79;
    v82 = v64;
    (*(v73 + 32))(&v79[v77], v80, v64);
    (*(*(v76 - 8) + 56))(v79, 0, 1, v76);
    v68 = v204;
    v46 = v200;
    v60 = v196;
LABEL_18:
    v83 = v81;
    v84 = v192;
    sub_224A44E4C(v83, v192, &qword_27D6F4C60, &unk_224DBA3D0);
    v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4C68, &unk_224DBA3F0);
    if ((*(*(v85 - 8) + 48))(v84, 1, v85) == 1)
    {

      return;
    }

    v86 = *(v85 + 48);
    (*v203)(v46, v84, v206);
    v199 = *v208;
    v199(v68, v84 + v86, v82);
    v87 = v190;
    sub_224DAD958();
    v88 = v191;
    sub_224DAA1F8();
    (*v189)(v87, v88);
    v89 = sub_224DAA048();

    if (v89)
    {
      (*v201)(v68, v82);
      v21 = v82;
      v34 = v206;
      (*v197)(v46, v206);
      goto LABEL_6;
    }

    v90 = sub_224DAD938();
    v92 = v91;
    if (*(v60 + 16))
    {
      v93 = v90;
      sub_224DAFE68();
      sub_224DAEE78();
      v94 = sub_224DAFEA8();
      v95 = -1 << *(v60 + 32);
      v96 = v94 & ~v95;
      v34 = v206;
      if ((*(v209 + ((v96 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v96))
      {
        v97 = ~v95;
        while (1)
        {
          v98 = (*(v60 + 48) + 16 * v96);
          v99 = *v98 == v93 && v98[1] == v92;
          if (v99 || (sub_224DAFD88() & 1) != 0)
          {
            break;
          }

          v96 = (v96 + 1) & v97;
          if (((*(v209 + ((v96 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v96) & 1) == 0)
          {
            goto LABEL_29;
          }
        }

        LODWORD(v195) = 1;
      }

      else
      {
LABEL_29:
        LODWORD(v195) = 0;
      }
    }

    else
    {
      LODWORD(v195) = 0;
      v34 = v206;
    }

    v101 = v180;
    sub_224DAD948();
    v102 = *v179;
    v103 = v181;
    v104 = (*v179)(v101, 1, v181);
    sub_224A3311C(v101, &qword_27D6F32B0, &qword_224DB3EA0);
    if (v104 == 1)
    {
      v21 = v186;
      v105 = v176;
      if (v195)
      {
        goto LABEL_39;
      }

      v106 = 0;
    }

    else
    {
      v107 = v168;
      sub_224DAD948();
      v108 = v107;
      if (v102(v107, 1, v103) == 1)
      {
        goto LABEL_60;
      }

      v109 = v163;
      sub_224DA9768();
      v110 = *v162;
      (*v162)(v108, v103);
      v111 = sub_224DA9798();
      v110(v109, v103);
      v106 = v195 | v111;
      if (v195)
      {
        v21 = v186;
        v105 = v176;
        if ((v111 & 1) == 0)
        {
LABEL_39:
          (*v201)(v68, v21);
          (*v197)(v46, v34);
          goto LABEL_6;
        }
      }

      else
      {
        v21 = v186;
        v105 = v176;
      }
    }

    LODWORD(v172) = v106;
    if (qword_2813516C8 != -1)
    {
      swift_once();
    }

    v112 = sub_224DAB258();
    v113 = __swift_project_value_buffer(v112, qword_281365120);
    v114 = *v198;
    (*v198)(v105, v46, v34);
    v115 = *v202;
    v116 = v165;
    (*v202)(v165, v204, v21);
    v117 = sub_224DAB228();
    LODWORD(v171) = sub_224DAF2A8();
    v118 = os_log_type_enabled(v117, v171);
    v170 = v113;
    v169 = v114;
    if (v118)
    {
      v119 = swift_slowAlloc();
      v161 = swift_slowAlloc();
      v210 = v161;
      *v119 = v159.n128_u32[0];
      sub_224A4C200(&qword_281351A00, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v120 = sub_224DAFD28();
      v121 = v105;
      v123 = v122;
      v182 = *v197;
      v182(v121, v34);
      v124 = sub_224A33F74(v120, v123, &v210);

      *(v119 + 4) = v124;
      *(v119 + 12) = 2082;
      v125 = sub_224DAD938();
      v127 = v126;
      v174 = *v201;
      v174(v116, v21);
      v128 = sub_224A33F74(v125, v127, &v210);

      *(v119 + 14) = v128;
      *(v119 + 22) = 1026;
      *(v119 + 24) = v195 ^ 1;
      *(v119 + 28) = 1026;
      *(v119 + 30) = v172 & 1;
      _os_log_impl(&dword_224A2F000, v117, v171, "Deleting obsolete activity subscription %{public}s for activity %{public}s; missing: %{BOOL,public}d, expired: %{BOOL,public}d", v119, 0x22u);
      v129 = v161;
      swift_arrayDestroy();
      MEMORY[0x22AA5EED0](v129, -1, -1);
      MEMORY[0x22AA5EED0](v119, -1, -1);
    }

    else
    {

      v174 = *v201;
      v174(v116, v21);
      v182 = *v197;
      v130 = (v182)(v105, v34);
    }

    if (*(v178 + 16))
    {
      MEMORY[0x28223BE20](v130, v131);
      v132 = v200;
      *(&v157 - 2) = v200;

      v133 = v175;
      sub_224DABBC8();
      if (v133)
      {
        v134 = v158;
        v169(v158, v132, v34);
        v135 = v133;
        v136 = sub_224DAB228();
        v137 = sub_224DAF288();

        if (os_log_type_enabled(v136, v137))
        {
          v138 = swift_slowAlloc();
          v172 = swift_slowAlloc();
          v195 = swift_slowAlloc();
          v210 = v195;
          *v138 = v157.n128_u32[0];
          sub_224A4C200(&qword_281351A00, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
          v171 = v136;
          v139 = sub_224DAFD28();
          v175 = v133;
          v140 = v139;
          v142 = v141;
          v182(v134, v34);
          v143 = sub_224A33F74(v140, v142, &v210);

          *(v138 + 4) = v143;
          *(v138 + 12) = 2114;
          v144 = v175;
          v145 = _swift_stdlib_bridgeErrorToNSError();
          *(v138 + 14) = v145;
          v146 = v172;
          *v172 = v145;
          v147 = v171;
          _os_log_impl(&dword_224A2F000, v171, v137, "Failed to delete activity subscription from store: %{public}s; %{public}@", v138, 0x16u);
          sub_224A3311C(v146, &unk_27D6F69F0, &unk_224DB3900);
          MEMORY[0x22AA5EED0](v146, -1, -1);
          v148 = v195;
          __swift_destroy_boxed_opaque_existential_1(v195);
          MEMORY[0x22AA5EED0](v148, -1, -1);
          MEMORY[0x22AA5EED0](v138, -1, -1);
        }

        else
        {

          v182(v134, v34);
        }

        v175 = 0;
        v21 = v186;
      }

      else
      {
        v175 = 0;
      }
    }

    swift_beginAccess();
    v149 = v166;
    v46 = v200;
    sub_224B0DE48(v200, v166);
    sub_224A3311C(v149, &qword_27D6F3BD8, &qword_224DB9C20);
    swift_endAccess();
    v115(v177, v204, v21);
    v150 = v167;
    v151 = *v167;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v150 = v151;
    v60 = v196;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v151 = sub_224AD99CC(0, v151[2] + 1, 1, v151);
      *v150 = v151;
    }

    v154 = v151[2];
    v153 = v151[3];
    if (v154 >= v153 >> 1)
    {
      *v150 = sub_224AD99CC((v153 > 1), v154 + 1, 1, v151);
    }

    v155 = v186;
    v174(v204, v186);
    v156 = *v150;
    v21 = v155;
    *(v156 + 16) = v154 + 1;
    v199((v156 + ((*(v194 + 80) + 32) & ~*(v194 + 80)) + *(v194 + 72) * v154), v177, v155);
    v182(v46, v34);
LABEL_6:
    v56 = v188;
    v61 = v205;
  }

  if (v173 <= v61 + 1)
  {
    v66 = v61 + 1;
  }

  else
  {
    v66 = v173;
  }

  v67 = v66 - 1;
  v68 = v204;
  while (1)
  {
    v65 = v61 + 1;
    if (__OFADD__(v61, 1))
    {
      break;
    }

    if (v65 >= v173)
    {
      v82 = v21;
      v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4C68, &unk_224DBA3F0);
      v81 = v193;
      (*(*(v100 - 8) + 56))(v193, 1, 1, v100);
      v207 = 0;
      v205 = v67;
      goto LABEL_18;
    }

    v63 = *(v56 + 8 * v65);
    ++v61;
    if (v63)
    {
      v64 = v21;
      v205 = v65;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_60:
  __break(1u);
}

uint64_t sub_224C96790(uint64_t a1)
{
  v2 = sub_224DAD9C8();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v41 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3BD8, &qword_224DB9C20);
  v8 = MEMORY[0x28223BE20](v6 - 8, v7);
  v10 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8, v11);
  v42 = &v39 - v12;
  v13 = sub_224DA9908();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13, v15);
  v17 = &v39 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2813516C8 != -1)
  {
    swift_once();
  }

  v18 = sub_224DAB258();
  __swift_project_value_buffer(v18, qword_281365120);
  (*(v14 + 16))(v17, a1, v13);
  v19 = sub_224DAB228();
  v20 = sub_224DAF2A8();
  v21 = os_log_type_enabled(v19, v20);
  v43 = v3;
  if (v21)
  {
    v22 = swift_slowAlloc();
    v39 = a1;
    v23 = v22;
    v24 = swift_slowAlloc();
    v40 = v2;
    v25 = v24;
    v45 = v24;
    *v23 = 136446210;
    sub_224A4C200(&qword_281351A00, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v26 = sub_224DAFD28();
    v28 = v27;
    (*(v14 + 8))(v17, v13);
    v29 = sub_224A33F74(v26, v28, &v45);

    *(v23 + 4) = v29;
    _os_log_impl(&dword_224A2F000, v19, v20, "Deleting subscription to remote activity from cache: %{public}s", v23, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v25);
    v30 = v25;
    v2 = v40;
    MEMORY[0x22AA5EED0](v30, -1, -1);
    v31 = v23;
    a1 = v39;
    MEMORY[0x22AA5EED0](v31, -1, -1);
  }

  else
  {

    (*(v14 + 8))(v17, v13);
  }

  v32 = v44;
  v33 = *(v44 + 24);
  os_unfair_lock_lock(*(v33 + 16));
  v34 = v42;
  sub_224C96C00(v32, a1, v42);
  os_unfair_lock_unlock(*(v33 + 16));
  sub_224C98520(v34, v10);
  v35 = v43;
  if ((*(v43 + 48))(v10, 1, v2) == 1)
  {
    sub_224A3311C(v34, &qword_27D6F3BD8, &qword_224DB9C20);
  }

  else
  {
    v36 = v41;
    (*(v35 + 32))(v41, v10, v2);
    v37 = sub_224C94AD4(v36);
    (*(v35 + 8))(v36, v2, v37);
    v10 = v34;
  }

  return sub_224A3311C(v10, &qword_27D6F3BD8, &qword_224DB9C20);
}

uint64_t sub_224C96C00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v60 = a2;
  v56 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3BD8, &qword_224DB9C20);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v8 = &v51 - v7;
  v9 = sub_224DA9908();
  v10 = *(v9 - 8);
  v57 = v9;
  v58 = v10;
  v12 = MEMORY[0x28223BE20](v9, v11);
  v14 = &v51 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v12, v15);
  v19 = &v51 - v18;
  if (!*(a1 + 16))
  {
    goto LABEL_8;
  }

  MEMORY[0x28223BE20](v16, v17);
  *(&v51 - 2) = v60;

  sub_224DABBC8();
  if (!v3)
  {

    goto LABEL_8;
  }

  if (qword_2813516C8 != -1)
  {
    swift_once();
  }

  v20 = sub_224DAB258();
  __swift_project_value_buffer(v20, qword_281365120);
  v21 = v57;
  (*(v58 + 16))(v14, v60, v57);
  v22 = v3;
  v23 = sub_224DAB228();
  v24 = sub_224DAF288();

  LODWORD(v54) = v24;
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v55 = v19;
    v26 = v25;
    v53 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v59[0] = v27;
    *v26 = 136446466;
    sub_224A4C200(&qword_281351A00, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v52 = v23;
    v28 = sub_224DAFD28();
    v29 = v21;
    v31 = v30;
    (*(v58 + 8))(v14, v29);
    v32 = sub_224A33F74(v28, v31, v59);

    *(v26 + 4) = v32;
    *(v26 + 12) = 2114;
    v33 = v3;
    v34 = _swift_stdlib_bridgeErrorToNSError();
    *(v26 + 14) = v34;
    v35 = v52;
    v36 = v53;
    *v53 = v34;
    _os_log_impl(&dword_224A2F000, v35, v54, "Failed to delete activity subscription from store: %{public}s; %{public}@", v26, 0x16u);
    sub_224A3311C(v36, &unk_27D6F69F0, &unk_224DB3900);
    MEMORY[0x22AA5EED0](v36, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v27);
    MEMORY[0x22AA5EED0](v27, -1, -1);
    v37 = v26;
    v19 = v55;
    MEMORY[0x22AA5EED0](v37, -1, -1);

LABEL_8:
    v38 = v58;
    goto LABEL_9;
  }

  v38 = v58;
  (*(v58 + 8))(v14, v21);
LABEL_9:
  swift_beginAccess();
  v39 = *(a1 + 32);
  if (*(v39 + 16))
  {
    v55 = v19;

    v40 = sub_224A438E8(v60);
    if (v41)
    {
      v42 = v40;
      v43 = *(v39 + 56);
      v44 = sub_224DAD9C8();
      v45 = *(v44 - 8);
      v54 = a1;
      v46 = v8;
      v47 = v45;
      v48 = v43 + *(v45 + 72) * v42;
      v38 = v58;
      v49 = v56;
      (*(v45 + 16))(v56, v48, v44);

      (*(v47 + 56))(v49, 0, 1, v44);
      v8 = v46;
    }

    else
    {

      v44 = sub_224DAD9C8();
      (*(*(v44 - 8) + 56))(v56, 1, 1, v44);
    }

    v19 = v55;
  }

  else
  {
    v44 = sub_224DAD9C8();
    (*(*(v44 - 8) + 56))(v56, 1, 1, v44);
  }

  (*(v38 + 16))(v19, v60, v57);
  sub_224DAD9C8();
  (*(*(v44 - 8) + 56))(v8, 1, 1, v44);
  swift_beginAccess();
  sub_224B09374(v8, v19);
  return swift_endAccess();
}

void sub_224C9725C(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v6 = v5;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4C68, &unk_224DBA3F0);
  v13 = MEMORY[0x28223BE20](v71, v12);
  v70 = &v58 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v13, v15);
  v69 = &v58 - v17;
  MEMORY[0x28223BE20](v16, v18);
  v68 = &v58 - v19;
  v79 = sub_224DAD9C8();
  v20 = *(v79 - 8);
  MEMORY[0x28223BE20](v79, v21);
  v67 = (&v58 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  v23 = swift_allocObject();
  *(v23 + 16) = a3;
  *(v23 + 24) = a4;
  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v80 = *(a1 + 40);
  *(a1 + 40) = 0x8000000000000000;
  sub_224B22B28(sub_224C984F8, v23, a2, isUniquelyReferenced_nonNull_native);
  *(a1 + 40) = v80;
  swift_endAccess();
  if (qword_2813516C8 != -1)
  {
    goto LABEL_30;
  }

  while (1)
  {
    v25 = sub_224DAB258();
    __swift_project_value_buffer(v25, qword_281365120);

    v26 = sub_224DAB228();
    v27 = sub_224DAF2A8();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 134349056;
      *(v28 + 4) = *(*(a1 + 40) + 16);

      _os_log_impl(&dword_224A2F000, v26, v27, "Observer count: %{public}ld", v28, 0xCu);
      MEMORY[0x22AA5EED0](v28, -1, -1);
    }

    else
    {
    }

    swift_beginAccess();
    a1 = *(a1 + 32);
    v29 = *(a1 + 16);
    v30 = MEMORY[0x277D84F90];
    if (!v29)
    {
      break;
    }

    v59 = a5;
    v60 = v6;
    v80 = MEMORY[0x277D84F90];

    sub_224ADA714(0, v29, 0);
    v78 = v80;
    a5 = (a1 + 64);
    v31 = sub_224DAF798();
    v32 = 0;
    v65 = v20 + 32;
    v66 = v20 + 16;
    v61 = a1 + 72;
    v6 = a1;
    v62 = v29;
    v63 = (a1 + 64);
    v64 = a1;
    while ((v31 & 0x8000000000000000) == 0 && v31 < 1 << *(v6 + 32))
    {
      if ((a5[v31 >> 6] & (1 << v31)) == 0)
      {
        goto LABEL_26;
      }

      v74 = 1 << v31;
      v75 = v31 >> 6;
      v34 = *(v6 + 36);
      v72 = v32;
      v73 = v34;
      v35 = v71;
      v36 = *(v71 + 48);
      v37 = *(v6 + 48);
      v38 = v31;
      v39 = sub_224DA9908();
      v40 = *(v39 - 8);
      v41 = v68;
      (*(v40 + 16))(v68, v37 + *(v40 + 72) * v38, v39);
      v42 = *(v6 + 56);
      v76 = *(v20 + 72);
      v77 = v38;
      (*(v20 + 16))(&v41[v36], v42 + v76 * v38, v79);
      v43 = v69;
      (*(v40 + 32))(v69, v41, v39);
      a1 = *(v20 + 32);
      (a1)(&v43[*(v35 + 48)], &v41[v36], v79);
      v44 = v43;
      v45 = v79;
      v46 = v70;
      sub_224A44E4C(v44, v70, &qword_27D6F4C68, &unk_224DBA3F0);
      v47 = v46 + *(v35 + 48);
      a5 = v67;
      (a1)(v67, v47, v45);
      (*(v40 + 8))(v46, v39);
      v48 = v78;
      v80 = v78;
      v50 = *(v78 + 16);
      v49 = *(v78 + 24);
      if (v50 >= v49 >> 1)
      {
        sub_224ADA714((v49 > 1), v50 + 1, 1);
        v48 = v80;
      }

      *(v48 + 16) = v50 + 1;
      v51 = (*(v20 + 80) + 32) & ~*(v20 + 80);
      v78 = v48;
      (a1)(v48 + v51 + v50 * v76, a5, v45);
      v6 = v64;
      v33 = 1 << *(v64 + 32);
      if (v77 >= v33)
      {
        goto LABEL_27;
      }

      a5 = v63;
      v52 = v63[v75];
      if ((v52 & v74) == 0)
      {
        goto LABEL_28;
      }

      if (v73 != *(v64 + 36))
      {
        goto LABEL_29;
      }

      v53 = v52 & (-2 << (v77 & 0x3F));
      if (v53)
      {
        v33 = __clz(__rbit64(v53)) | v77 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        a1 = v75 << 6;
        v54 = v75 + 1;
        v55 = (v61 + 8 * v75);
        while (v54 < (v33 + 63) >> 6)
        {
          v57 = *v55++;
          v56 = v57;
          a1 += 64;
          ++v54;
          if (v57)
          {
            sub_224A3E204(v77, v73, 0);
            v33 = __clz(__rbit64(v56)) + a1;
            goto LABEL_8;
          }
        }

        sub_224A3E204(v77, v73, 0);
      }

LABEL_8:
      v32 = v72 + 1;
      v31 = v33;
      if (v72 + 1 == v62)
      {

        a5 = v59;
        v30 = v78;
        goto LABEL_24;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    swift_once();
  }

LABEL_24:
  *a5 = v30;
}

uint64_t sub_224C9790C(uint64_t result, uint64_t (*a2)(unint64_t))
{
  v2 = *(result + 16);
  if (v2)
  {
    v4 = result;
    v5 = *(sub_224DAD9C8() - 8);
    v6 = v4 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v7 = *(v5 + 72);
    do
    {
      result = a2(v6);
      v6 += v7;
      --v2;
    }

    while (v2);
  }

  return result;
}

double sub_224C979BC(uint64_t a1, uint64_t a2)
{
  v4 = sub_224DA9908();
  MEMORY[0x28223BE20](v4, v5);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v7, a2);
  swift_beginAccess();
  sub_224B095A0(0, 0, v7);
  swift_endAccess();
  if (qword_2813516C8 != -1)
  {
    swift_once();
  }

  v9 = sub_224DAB258();
  __swift_project_value_buffer(v9, qword_281365120);

  v10 = sub_224DAB228();
  v11 = sub_224DAF2A8();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 134349056;
    *(v12 + 4) = *(*(a1 + 40) + 16);

    _os_log_impl(&dword_224A2F000, v10, v11, "Observer count: %{public}ld", v12, 0xCu);
    MEMORY[0x22AA5EED0](v12, -1, -1);
  }

  else
  {
  }

  return result;
}

void sub_224C97BA8(uint64_t a1, uint64_t a2)
{
  v56 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5C58, &qword_224DBD320);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v48 = &v47 - v6;
  v7 = sub_224DA9908();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v9);
  v51 = &v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5C60, qword_224DBD328);
  v13 = MEMORY[0x28223BE20](v11 - 8, v12);
  v15 = MEMORY[0x28223BE20](v13, v14);
  v59 = &v47 - v16;
  MEMORY[0x28223BE20](v15, v17);
  v57 = &v47 - v19;
  v20 = *(a1 + 64);
  v47 = a1 + 64;
  v21 = 1 << *(a1 + 32);
  v22 = -1;
  if (v21 < 64)
  {
    v22 = ~(-1 << v21);
  }

  v23 = v22 & v20;
  v24 = (v21 + 63) >> 6;
  v50 = v8 + 16;
  v58 = (v8 + 32);
  v61 = (v4 + 48);
  v62 = (v4 + 56);
  v52 = v8;
  v53 = a1;
  v55 = (v8 + 8);
  v25 = v18;

  v26 = 0;
  v60 = v25;
  v49 = v3;
  if (v23)
  {
    while (1)
    {
      v27 = v26;
LABEL_12:
      v30 = __clz(__rbit64(v23));
      v23 &= v23 - 1;
      v31 = v30 | (v27 << 6);
      v33 = v52;
      v32 = v53;
      v34 = v51;
      (*(v52 + 16))(v51, *(v53 + 48) + *(v52 + 72) * v31, v7);
      v35 = *(v3 + 48);
      v36 = *(v33 + 32);
      v63 = *(*(v32 + 56) + 16 * v31);
      v25 = v60;
      v36(v60, v34, v7);
      *(v25 + v35) = v63;
      v37 = *v62;
      (*v62)(v25, 0, 1, v3);

      v29 = v27;
LABEL_13:
      v38 = *v61;
      v39 = 1;
      if ((*v61)(v25, 1, v3) != 1)
      {
        *&v63 = v29;
        v40 = *(v3 + 48);
        v54 = v37;
        v41 = *v58;
        (*v58)(v48, v25, v7);
        v42 = swift_allocObject();
        *(v42 + 16) = *(v60 + v40);
        v43 = &v59[*(v3 + 48)];
        v41();
        v37 = v54;
        v39 = 0;
        *v43 = sub_224C986D0;
        v43[1] = v42;
        v29 = v63;
        v25 = v60;
        v3 = v49;
      }

      v44 = v59;
      v37(v59, v39, 1, v3);
      v45 = v44;
      v46 = v57;
      sub_224A44E4C(v45, v57, &qword_27D6F5C60, qword_224DBD328);
      if (v38(v46, 1, v3) == 1)
      {
        break;
      }

      (*(v46 + *(v3 + 48)))(v56);

      (*v55)(v46, v7);
      v26 = v29;
      if (!v23)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    if (v24 <= v26 + 1)
    {
      v28 = v26 + 1;
    }

    else
    {
      v28 = v24;
    }

    v29 = v28 - 1;
    while (1)
    {
      v27 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        break;
      }

      if (v27 >= v24)
      {
        v37 = *v62;
        (*v62)(v25, 1, 1, v3);
        v23 = 0;
        goto LABEL_13;
      }

      v23 = *(v47 + 8 * v27);
      ++v26;
      if (v23)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }
}

void sub_224C980A4(uint64_t a1)
{
  if (*(a1 + 16))
  {

    sub_224DABA58();
    v3 = sub_224DABA48();
    if (v1)
    {

      if (qword_2813516C8 != -1)
      {
        swift_once();
      }

      v4 = sub_224DAB258();
      __swift_project_value_buffer(v4, qword_281365120);
      v5 = v1;
      v6 = sub_224DAB228();
      v7 = sub_224DAF288();

      if (os_log_type_enabled(v6, v7))
      {
        v8 = swift_slowAlloc();
        v9 = swift_slowAlloc();
        *v8 = 138543362;
        v10 = v1;
        v11 = _swift_stdlib_bridgeErrorToNSError();
        *(v8 + 4) = v11;
        *v9 = v11;
        _os_log_impl(&dword_224A2F000, v6, v7, "Failed to load existing activity subscriptions from store: %{public}@", v8, 0xCu);
        sub_224A3311C(v9, &unk_27D6F69F0, &unk_224DB3900);
        MEMORY[0x22AA5EED0](v9, -1, -1);
        MEMORY[0x22AA5EED0](v8, -1, -1);
      }

      else
      {
      }
    }

    else
    {
      v16 = v3;

      swift_beginAccess();
      *(a1 + 32) = v16;

      if (qword_2813516C8 != -1)
      {
        swift_once();
      }

      v17 = sub_224DAB258();
      __swift_project_value_buffer(v17, qword_281365120);

      v18 = sub_224DAB228();
      v19 = sub_224DAF2A8();

      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        v21 = swift_slowAlloc();
        v26 = v21;
        *v20 = 136446210;
        sub_224DA9908();
        sub_224DAD9C8();
        sub_224A4C200(&qword_281351A18, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);

        v22 = sub_224DAECF8();
        v24 = v23;

        v25 = sub_224A33F74(v22, v24, &v26);

        *(v20 + 4) = v25;
        _os_log_impl(&dword_224A2F000, v18, v19, "Fetched activity subscriptions from backing store: %{public}s", v20, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v21);
        MEMORY[0x22AA5EED0](v21, -1, -1);
        MEMORY[0x22AA5EED0](v20, -1, -1);
      }
    }
  }

  else
  {
    if (qword_2813516C8 != -1)
    {
      swift_once();
    }

    v12 = sub_224DAB258();
    __swift_project_value_buffer(v12, qword_281365120);
    v13 = sub_224DAB228();
    v14 = sub_224DAF288();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_224A2F000, v13, v14, "Failed to load existing activity subscriptions from store as store is missing", v15, 2u);
      MEMORY[0x22AA5EED0](v15, -1, -1);
    }
  }
}

uint64_t sub_224C98520(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3BD8, &qword_224DB9C20);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroy_15Tm(uint64_t (*a1)(void), void (*a2)(void))
{
  v4 = a1(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  v7 = (v6 + 24) & ~v6;
  v8 = *(v5 + 64);
  a2(*(v2 + 16));
  (*(v5 + 8))(v2 + v7, v4);

  return MEMORY[0x2821FE8E8](v2, v7 + v8, v6 | 7);
}

void sub_224C9866C()
{
  v1 = *(sub_224DAD9C8() - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  sub_224C97BA8(v2, v3);
}

double sub_224C98750(uint64_t a1, void (*a2)(uint64_t))
{
  v4 = *(v2 + 16);
  sub_224DABB28();
  a2(v4);

  return result;
}

void *sub_224C987AC(uint64_t a1)
{
  v2 = v1;
  v20 = a1;
  v3 = sub_224DAF3C8();
  v18 = *(v3 - 8);
  v19 = v3;
  MEMORY[0x28223BE20](v3, v4);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_224DAF318();
  MEMORY[0x28223BE20](v7, v8);
  v9 = sub_224DAB848();
  MEMORY[0x28223BE20](v9 - 8, v10);
  type metadata accessor for UnfairLock();
  v11 = swift_allocObject();
  v12 = swift_slowAlloc();
  *v12 = 0;
  *(v11 + 16) = v12;
  v13 = MEMORY[0x277D84F98];
  v1[3] = v11;
  v1[4] = v13;
  v1[5] = v13;
  v17 = sub_224AC319C();
  sub_224DAB7E8();
  v21 = MEMORY[0x277D84F90];
  sub_224A4C200(&qword_281350A88, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3470, qword_224DB38B0);
  sub_224A9B6A0(&qword_281350B90, &qword_27D6F3470, qword_224DB38B0);
  sub_224DAF788();
  (*(v18 + 104))(v6, *MEMORY[0x277D85260], v19);
  v1[6] = sub_224DAF418();
  v1[2] = v20;
  v14 = v1[3];
  v15 = *(v14 + 16);

  os_unfair_lock_lock(v15);
  sub_224C980A4(v2);
  os_unfair_lock_unlock(*(v14 + 16));
  return v2;
}

uint64_t sub_224C98B58(uint64_t a1)
{
  result = sub_224DAA5C8();
  if (v2 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_224C98C00()
{
  v1 = v0;
  v2 = *v0;
  v3 = type metadata accessor for UnfairLock();

  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27D6F30D0, &unk_224DB2AC0);
  type metadata accessor for ReadOnlyHost(255, *(v2 + 80), *(v2 + 88), v4);
  sub_224C9A3FC();
  sub_224DAED48();
  v5 = sub_224DAF728();
  sub_224A49C20(sub_224C9A3E0, v1, v3, v5, &off_28382D228);

  return v7;
}

void sub_224C98D0C(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *(*a1 + 80);
  v6 = *(*a1 + 88);
  v7 = sub_224DABC68();
  v71 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v8);
  v84 = v62 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F30D0, &unk_224DB2AC0);
  v70 = *(v10 - 8);
  MEMORY[0x28223BE20](v10, v10);
  v83 = v62 - v11;
  v85 = v7;
  v86 = v12;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v77 = sub_224DAF728();
  v14 = *(v77 - 8);
  v16 = MEMORY[0x28223BE20](v77, v15);
  v69 = v62 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16, v18);
  v20 = v62 - v19;
  if (!a1[3])
  {
    goto LABEL_24;
  }

  sub_224DABAC8();
  v21 = sub_224DAB968();
  v22 = v2;
  if (v2)
  {

    if (qword_281351438 == -1)
    {
      goto LABEL_4;
    }

    goto LABEL_26;
  }

  v31 = v21;
  v78 = v20;
  v62[1] = 0;
  v63 = a2;

  OnlyHost = type metadata accessor for ReadOnlyHost(0, v5, v6, v32);
  v73 = sub_224C9A3FC();
  v74 = OnlyHost;
  v34 = sub_224DAECB8();
  v35 = 0;
  v68 = v31;
  v36 = *(v31 + 64);
  v88 = v34;
  v65 = v31 + 64;
  v37 = 1 << *(v31 + 32);
  v38 = -1;
  if (v37 < 64)
  {
    v38 = ~(-1 << v37);
  }

  v39 = v38 & v36;
  v64 = (v37 + 63) >> 6;
  v76 = TupleTypeMetadata2 - 8;
  v67 = v70 + 16;
  v66 = v71 + 16;
  v81 = (v71 + 32);
  v82 = (v70 + 32);
  v75 = (v14 + 32);
  v72 = (v71 + 8);
  v79 = TupleTypeMetadata2;
  v22 = v69;
  if ((v38 & v36) == 0)
  {
LABEL_10:
    if (v64 <= v35 + 1)
    {
      v41 = v35 + 1;
    }

    else
    {
      v41 = v64;
    }

    v42 = v41 - 1;
    v43 = v78;
    v44 = v79;
    while (1)
    {
      v40 = v35 + 1;
      if (__OFADD__(v35, 1))
      {
        break;
      }

      if (v40 >= v64)
      {
        v39 = 0;
        v56 = 1;
        goto LABEL_18;
      }

      v39 = *(v65 + 8 * v40);
      ++v35;
      if (v39)
      {
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_26:
    swift_once();
LABEL_4:
    v23 = sub_224DAB258();
    __swift_project_value_buffer(v23, qword_281364D78);
    v24 = v22;
    v25 = sub_224DAB228();
    v26 = sub_224DAF288();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      *v27 = 138543362;
      v29 = v22;
      v30 = _swift_stdlib_bridgeErrorToNSError();
      *(v27 + 4) = v30;
      *v28 = v30;
      _os_log_impl(&dword_224A2F000, v25, v26, "Error fetching hosts: %{public}@", v27, 0xCu);
      sub_224AD68CC(v28);
      MEMORY[0x22AA5EED0](v28, -1, -1);
      MEMORY[0x22AA5EED0](v27, -1, -1);
    }

    else
    {
    }

LABEL_24:
    *a2 = 0;
    return;
  }

  while (1)
  {
    v40 = v35;
LABEL_17:
    v45 = __clz(__rbit64(v39));
    v39 &= v39 - 1;
    v46 = v45 | (v40 << 6);
    v47 = v68;
    v48 = v70;
    v49 = v83;
    v50 = v86;
    (*(v70 + 16))(v83, *(v68 + 48) + *(v70 + 72) * v46, v86);
    v51 = v71;
    v52 = *(v47 + 56) + *(v71 + 72) * v46;
    v53 = v84;
    v54 = v85;
    (*(v71 + 16))(v84, v52, v85);
    v44 = v79;
    v80 = *(v79 + 48);
    v55 = *(v48 + 32);
    v22 = v69;
    v55(v69, v49, v50);
    (*(v51 + 32))(&v22[v80], v53, v54);
    v56 = 0;
    v42 = v40;
    v43 = v78;
LABEL_18:
    v57 = *(v44 - 8);
    (*(v57 + 56))(v22, v56, 1, v44);
    (*v75)(v43, v22, v77);
    if ((*(v57 + 48))(v43, 1, v44) == 1)
    {
      break;
    }

    v58 = *(v44 + 48);
    (*v82)(v83, v43, v86);
    v59 = &v43[v58];
    v60 = v84;
    a2 = v85;
    (*v81)(v84, v59, v85);
    v61 = sub_224C9A460();
    (*v72)(v60, a2);
    v87 = v61;
    sub_224DAED48();
    sub_224DAED68();
    v35 = v42;
    if (!v39)
    {
      goto LABEL_10;
    }
  }

  *v63 = v88;
}

void sub_224C99444(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = v3[2];
  os_unfair_lock_lock(*(v7 + 16));
  sub_224C994D4(a2, v3, a1, a3);
  v8 = *(v7 + 16);

  os_unfair_lock_unlock(v8);
}

void sub_224C994D4(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v32 = a4;
  v33 = a3;
  v7 = *(*a2 + 80);
  v8 = sub_224DAF728();
  v9 = *(v8 - 8);
  v11 = MEMORY[0x28223BE20](v8, v10);
  v13 = &v31 - v12;
  v14 = *(v7 - 8);
  MEMORY[0x28223BE20](v11, v15);
  v17 = &v31 - v16;
  (*(v9 + 16))(v13, a1, v8);
  if ((*(v14 + 48))(v13, 1, v7) == 1)
  {
    v18 = (*(v9 + 8))(v13, v8);
    if (!a2[3])
    {
      return;
    }

    MEMORY[0x28223BE20](v18, v19);
    *(&v31 - 2) = v33;
    *(&v31 - 1) = a2;
    sub_224DABBC8();
    if (!v4)
    {
      return;
    }
  }

  else
  {
    v20 = (*(v14 + 32))(v17, v13, v7);
    if (!a2[3] || (MEMORY[0x28223BE20](v20, v21), *(&v31 - 4) = v33, *(&v31 - 3) = a2, v22 = v32, *(&v31 - 2) = v17, *(&v31 - 1) = v22, sub_224DABBC8(), !v4))
    {
      (*(v14 + 8))(v17, v7);
      return;
    }

    (*(v14 + 8))(v17, v7);
  }

  if (qword_281351438 != -1)
  {
    swift_once();
  }

  v23 = sub_224DAB258();
  __swift_project_value_buffer(v23, qword_281364D78);
  v24 = v4;
  v25 = sub_224DAB228();
  v26 = sub_224DAF288();

  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    *v27 = 138543362;
    v29 = v4;
    v30 = _swift_stdlib_bridgeErrorToNSError();
    *(v27 + 4) = v30;
    *v28 = v30;
    _os_log_impl(&dword_224A2F000, v25, v26, "Error updating host cache configuration: %{public}@", v27, 0xCu);
    sub_224AD68CC(v28);
    MEMORY[0x22AA5EED0](v28, -1, -1);
    MEMORY[0x22AA5EED0](v27, -1, -1);
  }

  else
  {
  }
}

double sub_224C998FC(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v37 = a4;
  v38 = a5;
  v34 = a2;
  v39 = a1;
  v5 = *a3;
  v7 = sub_224DAA428();
  v35 = *(v7 - 8);
  v36 = v7;
  v9 = MEMORY[0x28223BE20](v7, v8);
  v33 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v5 + 80);
  v28 = a3;
  v32 = *(v11 - 8);
  MEMORY[0x28223BE20](v9, v12);
  v31 = &v28 - v13;
  v29 = sub_224DAA5C8();
  v14 = *(v29 - 8);
  MEMORY[0x28223BE20](v29, v15);
  v17 = &v28 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F30D0, &unk_224DB2AC0);
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18, v20);
  v22 = &v28 - v21;
  v30 = sub_224DABC68();
  v23 = *(v30 - 8);
  MEMORY[0x28223BE20](v30, v24);
  v26 = &v28 - v25;
  (*(v19 + 16))(v22, v34, v18);
  (*(v14 + 16))(v17, v28 + qword_281351C60, v29);
  (*(v32 + 16))(v31, v37, v11);
  (*(v35 + 16))(v33, v38, v36);
  sub_224DABC58();
  sub_224DABB48();
  sub_224DABA28();
  (*(v23 + 8))(v26, v30);

  return result;
}

void sub_224C99CC8(uint64_t a1, uint64_t a2)
{
  v4 = *(v2 + 16);
  os_unfair_lock_lock(*(v4 + 16));
  sub_224C99D48(v2, a1);
  v5 = *(v4 + 16);

  os_unfair_lock_unlock(v5);
}

void sub_224C99D48(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24))
  {
    MEMORY[0x28223BE20](a1, a2);
    sub_224DABBC8();
    if (v2)
    {
      if (qword_281351438 != -1)
      {
        swift_once();
      }

      v3 = sub_224DAB258();
      __swift_project_value_buffer(v3, qword_281364D78);
      v4 = v2;
      v5 = sub_224DAB228();
      v6 = sub_224DAF288();

      if (os_log_type_enabled(v5, v6))
      {
        v7 = swift_slowAlloc();
        v8 = swift_slowAlloc();
        *v7 = 138543362;
        v9 = v2;
        v10 = _swift_stdlib_bridgeErrorToNSError();
        *(v7 + 4) = v10;
        *v8 = v10;
        _os_log_impl(&dword_224A2F000, v5, v6, "Error updating host cache (activationState): %{public}@", v7, 0xCu);
        sub_224AD68CC(v8);
        MEMORY[0x22AA5EED0](v8, -1, -1);
        MEMORY[0x22AA5EED0](v7, -1, -1);
      }

      else
      {
      }
    }
  }
}

void sub_224C99F18(uint64_t a1)
{
  v3 = *(v1 + 16);
  os_unfair_lock_lock(*(v3 + 16));
  sub_224C99F90(v1, a1);
  v4 = *(v3 + 16);

  os_unfair_lock_unlock(v4);
}

void sub_224C99F90(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24))
  {
    MEMORY[0x28223BE20](a1, a2);
    sub_224DABBC8();
    if (v2)
    {
      if (qword_281351438 != -1)
      {
        swift_once();
      }

      v3 = sub_224DAB258();
      __swift_project_value_buffer(v3, qword_281364D78);
      v4 = v2;
      v5 = sub_224DAB228();
      v6 = sub_224DAF288();

      if (os_log_type_enabled(v5, v6))
      {
        v7 = swift_slowAlloc();
        v8 = swift_slowAlloc();
        *v7 = 138543362;
        v9 = v2;
        v10 = _swift_stdlib_bridgeErrorToNSError();
        *(v7 + 4) = v10;
        *v8 = v10;
        _os_log_impl(&dword_224A2F000, v5, v6, "Error removing host cache configuration: %{public}@", v7, 0xCu);
        sub_224AD68CC(v8);
        MEMORY[0x22AA5EED0](v8, -1, -1);
        MEMORY[0x22AA5EED0](v7, -1, -1);
      }

      else
      {
      }
    }
  }
}

uint64_t sub_224C9A160()
{

  v1 = qword_281351C60;
  v2 = sub_224DAA5C8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t sub_224C9A1D0()
{
  sub_224C9A160();

  return swift_deallocClassInstance();
}

double sub_224C9A2F0(uint64_t a1)
{
  sub_224DABB48();
  sub_224DABA18();

  return result;
}

double sub_224C9A360(uint64_t a1)
{
  sub_224DABB48();
  sub_224DABA38();

  return result;
}

unint64_t sub_224C9A3FC()
{
  result = qword_281351878;
  if (!qword_281351878)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27D6F30D0, &unk_224DB2AC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281351878);
  }

  return result;
}

uint64_t sub_224C9A460()
{
  v0 = sub_224DAA428();
  v2 = MEMORY[0x28223BE20](v0 - 8, v1);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2, v5);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F30D0, &unk_224DB2AC0);
  MEMORY[0x28223BE20](v8 - 8, v9);
  v11 = &v13 - v10;
  sub_224DABC68();
  sub_224DABC48();
  sub_224DABC28();
  sub_224DABC38();
  return sub_224D431CC(v11, v7, v4);
}

uint64_t RemoteControlActionRequest.description.getter()
{
  v1 = v0;
  sub_224DAF938();
  MEMORY[0x22AA5D210](60, 0xE100000000000000);
  MEMORY[0x22AA5D210](0xD00000000000001ALL, 0x8000000224DBD3F0);
  MEMORY[0x22AA5D210](0xD000000000000012, 0x8000000224DCC980);
  v2 = [*v0 description];
  v3 = sub_224DAEE18();
  v5 = v4;

  MEMORY[0x22AA5D210](v3, v5);

  MEMORY[0x22AA5D210](0x6E6F69746361202CLL, 0xE90000000000003DLL);
  v6 = type metadata accessor for RemoteControlActionRequest(0);
  sub_224DAE738();
  sub_224C9A7E0();
  v7 = sub_224DAFD28();
  MEMORY[0x22AA5D210](v7);

  MEMORY[0x22AA5D210](0x4F68636E75616C20, 0xEE003D6E69676972);
  v8 = (v1 + *(v6 + 24));
  if (v8[1])
  {
    v9 = *v8;
    v10 = v8[1];
  }

  else
  {
    v10 = 0xE300000000000000;
    v9 = 7104878;
  }

  MEMORY[0x22AA5D210](v9, v10);

  MEMORY[0x22AA5D210](62, 0xE100000000000000);
  return 0;
}

uint64_t type metadata accessor for RemoteControlActionRequest(uint64_t a1)
{
  result = qword_27D6F5C70;
  if (!qword_27D6F5C70)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_224C9A7E0()
{
  result = qword_27D6F5C68;
  if (!qword_27D6F5C68)
  {
    sub_224DAE738();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D6F5C68);
  }

  return result;
}

void sub_224C9A864(uint64_t a1)
{
  sub_224AB43D8();
  if (v1 <= 0x3F)
  {
    sub_224DAE738();
    if (v2 <= 0x3F)
    {
      sub_224C9A900();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_224C9A900()
{
  if (!qword_27D6F5C80)
  {
    v0 = sub_224DAF728();
    if (!v1)
    {
      atomic_store(v0, &qword_27D6F5C80);
    }
  }
}

uint64_t sub_224C9AA34(uint64_t *a1, uint64_t *a2, unint64_t *a3)
{
  if (*(v3 + 16))
  {
    v5 = *(v3 + 16);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
    sub_224A33088(a3, a1, a2, MEMORY[0x277CBCE20]);
    v5 = sub_224DAB3A8();
    *(v3 + 16) = v5;
  }

  return v5;
}

void sub_224C9ABA4(char *a1, uint64_t a2, uint64_t *a3, uint64_t *a4, unsigned int *a5, uint64_t *a6, uint64_t *a7, char *a8, uint64_t a9, uint64_t *a10)
{
  v107 = a7;
  v108 = a8;
  v106 = a6;
  v109 = a5;
  v116 = a2;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F30D0, &unk_224DB2AC0);
  v114 = *(v14 - 8);
  v115 = v14;
  MEMORY[0x28223BE20](v14, v15);
  v113 = &v99 - v16;
  v17 = sub_224DAA5C8();
  v111 = *(v17 - 8);
  v112 = v17;
  MEMORY[0x28223BE20](v17, v18);
  v110 = &v99 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v117 = a4;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v22 = MEMORY[0x28223BE20](v20, v21);
  v24 = (&v99 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  v26 = MEMORY[0x28223BE20](v22, v25);
  v105 = &v99 - v27;
  v29 = MEMORY[0x28223BE20](v26, v28);
  v31 = &v99 - v30;
  MEMORY[0x28223BE20](v29, v32);
  v34 = &v99 - v33;
  v35 = sub_224DAB8C8();
  v36 = *(v35 - 8);
  MEMORY[0x28223BE20](v35, v37);
  v39 = (&v99 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0));
  v40 = *(v10 + 16);
  *v39 = v40;
  (*(v36 + 104))(v39, *MEMORY[0x277D85200], v35);
  v41 = v40;
  LOBYTE(v40) = sub_224DAB8F8();
  v43 = *(v36 + 8);
  v42 = (v36 + 8);
  v43(v39, v35);
  if ((v40 & 1) == 0)
  {
    __break(1u);
    goto LABEL_15;
  }

  v44 = *&a1[*(v20 + 36)];
  v42 = a1;
  if (v44)
  {
    v20 = a9;
    v45 = qword_2813516C8;
    a1 = v44;
    if (v45 == -1)
    {
LABEL_4:
      v46 = sub_224DAB258();
      v47 = __swift_project_value_buffer(v46, qword_281365120);
      sub_224A3796C(v42, v34, a3, v117);
      v48 = sub_224DAB228();
      v49 = sub_224DAF2A8();
      if (os_log_type_enabled(v48, v49))
      {
        v50 = swift_slowAlloc();
        v102 = v20;
        v51 = v50;
        v100 = swift_slowAlloc();
        v118[0] = v100;
        *v51 = 136446466;
        v52 = v110;
        v53 = *v109;
        v54 = v111;
        v55 = *(v111 + 104);
        v101 = v47;
        v56 = v112;
        v55(v110, v53, v112);
        sub_224CB0A6C(&qword_2813517E0, MEMORY[0x277CFA0E8], MEMORY[0x277CFA0F8]);
        v57 = sub_224DAFD28();
        v103 = v42;
        v104 = a1;
        v58 = v57;
        v60 = v59;
        (*(v54 + 8))(v52, v56);
        v61 = sub_224A33F74(v58, v60, v118);

        *(v51 + 4) = v61;
        *(v51 + 12) = 2082;
        v62 = v113;
        v63 = v114;
        v64 = v115;
        (*(v114 + 16))(v113, v34, v115);
        sub_224A3311C(v34, a3, v117);
        sub_224A33088(&qword_281351860, &unk_27D6F30D0, &unk_224DB2AC0, MEMORY[0x277CFA030]);
        v65 = sub_224DAFD28();
        v67 = v66;
        v68 = *(v63 + 8);
        v69 = v64;
        v42 = v103;
        a1 = v104;
        v68(v62, v69);
        v70 = sub_224A33F74(v65, v67, v118);

        *(v51 + 14) = v70;
        _os_log_impl(&dword_224A2F000, v48, v49, "Requesting replication of %{public}s configuration from host: %{public}s", v51, 0x16u);
        v71 = v100;
        swift_arrayDestroy();
        MEMORY[0x22AA5EED0](v71, -1, -1);
        v72 = v51;
        v20 = v102;
        MEMORY[0x22AA5EED0](v72, -1, -1);
      }

      else
      {
        sub_224A3311C(v34, a3, v117);
      }

      sub_224C9BA28(v42, a3, v117, v106, v107, v108, v20);
      return;
    }

LABEL_15:
    swift_once();
    goto LABEL_4;
  }

  v73 = a10;
  if (qword_2813516C8 != -1)
  {
    swift_once();
  }

  v74 = sub_224DAB258();
  v75 = __swift_project_value_buffer(v74, qword_281365120);
  sub_224A3796C(v42, v31, a3, v117);
  v76 = sub_224DAB228();
  v77 = sub_224DAF2A8();
  if (os_log_type_enabled(v76, v77))
  {
    v78 = swift_slowAlloc();
    v106 = v75;
    v79 = v78;
    v105 = swift_slowAlloc();
    v118[0] = v105;
    *v79 = 136446466;
    v80 = *v109;
    v81 = v111;
    v82 = *(v111 + 104);
    v107 = a10;
    v108 = v24;
    v83 = v110;
    v84 = v112;
    v82(v110, v80, v112);
    sub_224CB0A6C(&qword_2813517E0, MEMORY[0x277CFA0E8], MEMORY[0x277CFA0F8]);
    v85 = sub_224DAFD28();
    v103 = v42;
    v87 = v86;
    (*(v81 + 8))(v83, v84);
    v88 = sub_224A33F74(v85, v87, v118);

    *(v79 + 4) = v88;
    *(v79 + 12) = 2082;
    v89 = v113;
    v90 = v114;
    v91 = v115;
    (*(v114 + 16))(v113, v31, v115);
    sub_224A3311C(v31, a3, v117);
    sub_224A33088(&qword_281351860, &unk_27D6F30D0, &unk_224DB2AC0, MEMORY[0x277CFA030]);
    v92 = sub_224DAFD28();
    v94 = v93;
    v95 = v90;
    v73 = v107;
    v96 = v91;
    v42 = v103;
    (*(v95 + 8))(v89, v96);
    v97 = sub_224A33F74(v92, v94, v118);

    *(v79 + 14) = v97;
    _os_log_impl(&dword_224A2F000, v76, v77, "Requesting deletion of %{public}s configuration for: %{public}s", v79, 0x16u);
    v98 = v105;
    swift_arrayDestroy();
    MEMORY[0x22AA5EED0](v98, -1, -1);
    MEMORY[0x22AA5EED0](v79, -1, -1);
  }

  else
  {
    sub_224A3311C(v31, a3, v117);
  }

  sub_224C9CBCC(v42, v73);
}

void sub_224C9BA28(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, unint64_t *a6, void (*a7)(uint64_t, uint64_t *, char *))
{
  v162 = a7;
  v175 = a6;
  v176 = a5;
  v172 = a4;
  v10 = v7;
  v168 = a1;
  v11 = sub_224DA9908();
  v166 = *(v11 - 8);
  MEMORY[0x28223BE20](v11, v12);
  v134 = &v128 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F30D0, &unk_224DB2AC0);
  v144 = *(v14 - 8);
  MEMORY[0x28223BE20](v14, v15);
  v132 = &v128 - v16;
  v160 = a2;
  v161 = a3;
  v185 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  MEMORY[0x28223BE20](v185, v17);
  v157 = &v128 - v18;
  v159 = sub_224DAAC58();
  v138 = *(v159 - 8);
  MEMORY[0x28223BE20](v159, v19);
  v158 = (&v128 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v183 = sub_224DAADC8();
  v174 = *(v183 - 8);
  v22 = MEMORY[0x28223BE20](v183, v21);
  v182 = &v128 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22, v24);
  v181 = &v128 - v25;
  v173 = sub_224DAAE38();
  v184 = *(v173 - 8);
  v27 = MEMORY[0x28223BE20](v173, v26);
  v156 = &v128 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x28223BE20](v27, v29);
  v170 = &v128 - v31;
  MEMORY[0x28223BE20](v30, v32);
  v186 = &v128 - v33;
  v34 = sub_224DAB0B8();
  v143 = *(v34 - 8);
  v36 = MEMORY[0x28223BE20](v34, v35);
  v155 = &v128 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v36, v38);
  v180 = &v128 - v39;
  v40 = sub_224DAAF28();
  v42 = MEMORY[0x28223BE20](v40 - 8, v41);
  v44 = &v128 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v42, v45);
  v47 = &v128 - v46;
  v167 = sub_224DAAF48();
  v179 = *(v167 - 8);
  v139 = v179;
  MEMORY[0x28223BE20](v167, v48);
  v50 = &v128 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = sub_224B942B8(*(v10 + 32));
  v177 = v52;
  v178 = v51;
  v53 = *(v166 + 56);
  v135 = v11;
  v53(v47, 1, 1, v11);
  v133 = v14;
  sub_224DAA218();
  sub_224CB298C(v47, v44, MEMORY[0x277D46780]);
  v54 = v34;
  sub_224DAAEE8();
  sub_224CB2720(v47, MEMORY[0x277D46780]);
  v55 = *(v10 + 64);
  v164 = v10;
  __swift_project_boxed_opaque_existential_1((v10 + 40), v55);
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3368, &qword_224DB3B10);
  v57 = v139;
  v58 = *(v179 + 72);
  v59 = *(v139 + 80);
  v60 = (v59 + 32) & ~v59;
  v154 = v60;
  v152 = v58;
  v151 = v59;
  v153 = v56;
  v61 = swift_allocObject();
  v169 = xmmword_224DB3100;
  *(v61 + 16) = xmmword_224DB3100;
  v62 = *(v57 + 16);
  v63 = v61 + v60;
  v64 = v180;
  v165 = v50;
  v65 = v50;
  v66 = v143;
  v150 = v57 + 16;
  v149 = v62;
  v62(v63, v65, v167);
  v67 = v66[13];
  v148 = *MEMORY[0x277D46828];
  v147 = (v66 + 13);
  v146 = v67;
  (v67)(v64);
  v68 = v187;
  sub_224DAABF8();
  if (v68)
  {

    v163 = v66[1];
    v163(v64, v54);
  }

  else
  {
    v163 = v66[1];
    v163(v64, v54);
  }

  v69 = *(v168 + *(v185 + 36));
  if (v69)
  {
    v172 = 0;
    v145 = v54;
    __swift_project_boxed_opaque_existential_1((v164 + 40), *(v164 + 64));
    v171 = v69;
    v70 = sub_224DAAC78();
    v72 = v70;
    v180 = *(v70 + 16);
    if (v180)
    {
      v73 = 0;
      v177 = v70 + ((*(v184 + 80) + 32) & ~*(v184 + 80));
      LODWORD(v176) = *MEMORY[0x277D46750];
      v74 = v174++;
      v175 = (v74 + 13);
      v179 = v184 + 8;
      v131 = (v144 + 2);
      v130 = (v144 + 1);
      v129 = (v166 + 8);
      v141 = *MEMORY[0x277D46558];
      v140 = (v138 + 104);
      v144 = (v57 + 8);
      v142 = (v66 + 1);
      v143 = (v138 + 8);
      *&v71 = 136315394;
      v128 = v71;
      v75 = v173;
      v76 = v186;
      v185 = v184 + 16;
      v178 = v70;
      while (v73 < *(v72 + 16))
      {
        v77 = *(v184 + 72);
        v187 = v73;
        v78 = *(v184 + 16);
        v78(v76, v177 + v77 * v73, v75);
        v79 = v181;
        sub_224DAADD8();
        v81 = v182;
        v80 = v183;
        (*v175)(v182, v176, v183);
        v82 = MEMORY[0x22AA59120](v79, v81);
        v83 = *v174;
        (*v174)(v81, v80);
        v83(v79, v80);
        if (v82)
        {
          sub_224A3B79C(0, &qword_27D6F40C0, 0x277CFA2F0);
          v84 = v170;
          v78(v170, v186, v75);
          v85 = sub_224CF9E44(v84);
          v86 = [v171 replicationPredicate];
          v87 = [v86 acceptsDevice_];

          if (v87)
          {
            v88 = v154;
            v89 = swift_allocObject();
            *(v89 + 16) = v169;
            v90 = v167;
            v149(v89 + v88, v165, v167);
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3BC0, &unk_224DB9C60);
            v91 = swift_allocObject();
            *(v91 + 16) = v169;
            sub_224DAAD98();
            v92 = v158;
            *v158 = v91;
            v93 = v92;
            v94 = v159;
            (*v140)(v92, v141, v159);
            v95 = v155;
            v96 = v145;
            (v146)(v155, v148, v145);
            v97 = v172;
            v162(v89, v93, v95);
            v172 = v97;
            if (v97)
            {

              swift_setDeallocating();
              v126 = v95;
              v127 = *v144;
              (*v144)(v89 + v88, v90);
              swift_deallocClassInstance();
              v163(v126, v96);
              (*v143)(v93, v94);
              (*v179)(v186, v173);
              v127(v165, v90);
              return;
            }

            swift_setDeallocating();
            (*v144)(v89 + v88, v90);
            swift_deallocClassInstance();
            v163(v95, v96);
            (*v143)(v93, v94);
            v76 = v186;
            v75 = v173;
            (*v179)(v186, v173);
          }

          else
          {
            if (qword_2813516C8 != -1)
            {
              swift_once();
            }

            v98 = sub_224DAB258();
            __swift_project_value_buffer(v98, qword_281365120);
            v99 = v157;
            v100 = v160;
            v101 = v161;
            sub_224A3796C(v168, v157, v160, v161);
            v102 = v156;
            v103 = v186;
            v75 = v173;
            v78(v156, v186, v173);
            v104 = sub_224DAB228();
            v105 = sub_224DAF2A8();
            if (os_log_type_enabled(v104, v105))
            {
              v106 = swift_slowAlloc();
              v138 = swift_slowAlloc();
              v188 = v138;
              *v106 = v128;
              v107 = *v131;
              v137 = v104;
              v108 = v132;
              v136 = v105;
              v109 = v133;
              v107(v132, v99, v133);
              sub_224A3311C(v99, v100, v101);
              sub_224A33088(&qword_281351860, &unk_27D6F30D0, &unk_224DB2AC0, MEMORY[0x277CFA030]);
              v110 = sub_224DAFD28();
              v112 = v111;
              (*v130)(v108, v109);
              v113 = sub_224A33F74(v110, v112, &v188);

              *(v106 + 4) = v113;
              *(v106 + 12) = 2080;
              v114 = v134;
              sub_224DAAD98();
              sub_224CB0A6C(&qword_281351A00, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
              v115 = v135;
              v116 = sub_224DAFD28();
              v118 = v117;
              (*v129)(v114, v115);
              v119 = *v179;
              (*v179)(v102, v75);
              v120 = sub_224A33F74(v116, v118, &v188);

              *(v106 + 14) = v120;
              v121 = v137;
              _os_log_impl(&dword_224A2F000, v137, v136, "Replication of configuration %s to %s is disallowed by replication predicate", v106, 0x16u);
              v122 = v138;
              swift_arrayDestroy();
              MEMORY[0x22AA5EED0](v122, -1, -1);
              MEMORY[0x22AA5EED0](v106, -1, -1);
            }

            else
            {
              sub_224A3311C(v99, v100, v101);

              v119 = *v179;
              (*v179)(v102, v75);
            }

            v119(v103, v75);
            v76 = v103;
          }
        }

        else
        {
          v76 = v186;
          (*v179)(v186, v75);
        }

        v73 = v187 + 1;
        v72 = v178;
        if (v180 == v187 + 1)
        {
          goto LABEL_20;
        }
      }

      __break(1u);
    }

    else
    {
LABEL_20:
      (*(v139 + 8))(v165, v167);
    }
  }

  else
  {
    v123 = v172;
    v124 = v176;
    __swift_instantiateConcreteTypeFromMangledNameV2(v172, v176);
    sub_224A33088(v175, v123, v124, &unk_224DB8AC8);
    swift_allocError();
    *v125 = 3;
    swift_willThrow();
    (*(v57 + 8))(v165, v167);
  }
}

uint64_t sub_224C9CBCC(uint64_t a1, void (*a2)(uint64_t))
{
  v65 = a2;
  v85 = sub_224DAB0B8();
  v64 = *(v85 - 8);
  MEMORY[0x28223BE20](v85 - 8, v3);
  v84 = &v64 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_224DAADC8();
  v88 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5, v6);
  v83 = &v64 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7, v9);
  v82 = &v64 - v10;
  v69 = sub_224DAAE38();
  v11 = *(v69 - 8);
  v13 = MEMORY[0x28223BE20](v69, v12);
  v81 = &v64 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13, v15);
  v71 = &v64 - v16;
  v17 = sub_224DAAF28();
  v19 = MEMORY[0x28223BE20](v17 - 8, v18);
  v21 = &v64 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19, v22);
  v24 = &v64 - v23;
  v87 = sub_224DAAF48();
  v67 = *(v87 - 8);
  MEMORY[0x28223BE20](v87, v25);
  v27 = &v64 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_224B942B8(*(v2 + 32));
  v89 = v29;
  v90 = v28;
  v30 = sub_224DA9908();
  (*(*(v30 - 8) + 56))(v24, 1, 1, v30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F30D0, &unk_224DB2AC0);
  sub_224DAA218();
  sub_224CB298C(v24, v21, MEMORY[0x277D46780]);
  v68 = v27;
  sub_224DAAEE8();
  sub_224CB2720(v24, MEMORY[0x277D46780]);
  v31 = *(v2 + 64);
  v86 = v2;
  __swift_project_boxed_opaque_existential_1((v2 + 40), v31);
  result = sub_224DAAC78();
  v33 = result;
  *&v80 = *(result + 16);
  if (v80)
  {
    v79 = v5;
    v34 = 0;
    v76 = v11 + 16;
    v75 = *MEMORY[0x277D46750];
    v73 = (v88 + 8);
    v74 = (v88 + 104);
    v70 = (v11 + 8);
    v72 = (v11 + 32);
    v35 = MEMORY[0x277D84F90];
    v36 = v69;
    v37 = v71;
    v77 = result;
    v78 = v11;
    while (v34 < *(v33 + 16))
    {
      v89 = (*(v11 + 80) + 32) & ~*(v11 + 80);
      v90 = v35;
      v88 = *(v11 + 72);
      (*(v11 + 16))(v37, v33 + v89 + v88 * v34, v36);
      v38 = v82;
      v39 = v36;
      sub_224DAADD8();
      v40 = v83;
      v41 = v79;
      (*v74)(v83, v75, v79);
      v42 = MEMORY[0x22AA59120](v38, v40);
      v43 = *v73;
      (*v73)(v40, v41);
      v43(v38, v41);
      if (v42)
      {
        v44 = *v72;
        (*v72)(v81, v37, v39);
        v35 = v90;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v91 = v35;
        if (isUniquelyReferenced_nonNull_native)
        {
          v36 = v39;
        }

        else
        {
          sub_224ADA1C0(0, *(v35 + 16) + 1, 1);
          v36 = v69;
          v35 = v91;
        }

        v33 = v77;
        v47 = v88;
        v46 = v89;
        v49 = *(v35 + 16);
        v48 = *(v35 + 24);
        if (v49 >= v48 >> 1)
        {
          sub_224ADA1C0((v48 > 1), v49 + 1, 1);
          v36 = v69;
          v35 = v91;
        }

        *(v35 + 16) = v49 + 1;
        result = (v44)(v35 + v46 + v49 * v47, v81, v36);
        v37 = v71;
      }

      else
      {
        result = (*v70)(v37, v39);
        v36 = v39;
        v33 = v77;
        v35 = v90;
      }

      ++v34;
      v11 = v78;
      if (v80 == v34)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
    v35 = MEMORY[0x277D84F90];
LABEL_14:

    MEMORY[0x28223BE20](v50, v51);
    *(&v64 - 2) = v68;
    v52 = v66;
    sub_224D4082C(v65, (&v64 - 4), v35);
    v54 = v53;
    v55 = v52;

    v56 = *(v54 + 16);
    if (v56)
    {
      v57 = *(v67 + 80);
      v78 = v54;
      v89 = (v57 + 32) & ~v57;
      v90 = v57;
      v58 = v54 + v89;
      v59 = *(v67 + 72);
      v83 = (v67 + 16);
      LODWORD(v82) = *MEMORY[0x277D46828];
      v81 = (v64 + 104);
      v79 = (v64 + 8);
      v80 = xmmword_224DB3100;
      v88 = v59;
      do
      {
        __swift_project_boxed_opaque_existential_1((v86 + 40), *(v86 + 64));
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3368, &qword_224DB3B10);
        v60 = v89;
        v61 = swift_allocObject();
        *(v61 + 16) = v80;
        (*v83)(v61 + v60, v58, v87);
        v63 = v84;
        v62 = v85;
        (*v81)(v84, v82, v85);
        sub_224DAABF8();
        if (v55)
        {

          (*v79)(v63, v62);
          v55 = 0;
        }

        else
        {
          (*v79)(v63, v62);
        }

        v58 += v88;
        --v56;
      }

      while (v56);
    }

    return (*(v67 + 8))(v68, v87);
  }

  return result;
}

uint64_t sub_224C9D44C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4220, &unk_224DB60D0);
  v4[4] = v5;
  v4[5] = *(v5 - 8);
  v4[6] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4228, &unk_224DB9BE0);
  v4[7] = v6;
  v4[8] = *(v6 - 8);
  v4[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_224C9D580, 0, 0);
}

uint64_t sub_224C9D580()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[4];
  __swift_project_boxed_opaque_existential_1((v0[3] + 40), *(v0[3] + 64));
  sub_224DAABA8();
  sub_224DAF158();
  (*(v2 + 8))(v1, v3);
  v4 = swift_task_alloc();
  v0[10] = v4;
  *v4 = v0;
  v4[1] = sub_224C9D69C;
  v5 = v0[7];

  return MEMORY[0x2822003E8](v0 + 2, 0, 0, v5);
}

uint64_t sub_224C9D69C()
{

  return MEMORY[0x2822009F8](sub_224C9D798, 0, 0);
}

uint64_t sub_224C9D798()
{
  if (v0[2])
  {
    sub_224C9F084(v0[2], &qword_27D6F5D58, &qword_224DBD828, &qword_27D6F3848, &qword_224DBD830, &qword_27D6F5D50, &unk_224DBD810, qword_28135ADC0);

    v1 = swift_task_alloc();
    v0[10] = v1;
    *v1 = v0;
    v1[1] = sub_224C9D69C;
    v2 = v0[7];

    return MEMORY[0x2822003E8](v0 + 2, 0, 0, v2);
  }

  else
  {
    (*(v0[8] + 8))(v0[9], v0[7]);

    v3 = v0[1];

    return v3();
  }
}

uint64_t sub_224C9D900(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4220, &unk_224DB60D0);
  v4[4] = v5;
  v4[5] = *(v5 - 8);
  v4[6] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4228, &unk_224DB9BE0);
  v4[7] = v6;
  v4[8] = *(v6 - 8);
  v4[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_224C9DA34, 0, 0);
}

uint64_t sub_224C9DA34()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[4];
  __swift_project_boxed_opaque_existential_1((v0[3] + 40), *(v0[3] + 64));
  sub_224DAABA8();
  sub_224DAF158();
  (*(v2 + 8))(v1, v3);
  v4 = swift_task_alloc();
  v0[10] = v4;
  *v4 = v0;
  v4[1] = sub_224C9DB50;
  v5 = v0[7];

  return MEMORY[0x2822003E8](v0 + 2, 0, 0, v5);
}

uint64_t sub_224C9DB50()
{

  return MEMORY[0x2822009F8](sub_224C9DC4C, 0, 0);
}

uint64_t sub_224C9DC4C()
{
  if (v0[2])
  {
    sub_224C9F084(v0[2], &qword_27D6F5D60, qword_224DBD840, &qword_27D6F5740, &qword_224DB3608, &qword_27D6F3398, &unk_224DB35C0, &qword_27D6F33A0);

    v1 = swift_task_alloc();
    v0[10] = v1;
    *v1 = v0;
    v1[1] = sub_224C9DB50;
    v2 = v0[7];

    return MEMORY[0x2822003E8](v0 + 2, 0, 0, v2);
  }

  else
  {
    (*(v0[8] + 8))(v0[9], v0[7]);

    v3 = v0[1];

    return v3();
  }
}

uint64_t sub_224C9DDB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4220, &unk_224DB60D0);
  v4[4] = v5;
  v4[5] = *(v5 - 8);
  v4[6] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4228, &unk_224DB9BE0);
  v4[7] = v6;
  v4[8] = *(v6 - 8);
  v4[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_224C9DEE8, 0, 0);
}

uint64_t sub_224C9DEE8()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[4];
  __swift_project_boxed_opaque_existential_1((v0[3] + 40), *(v0[3] + 64));
  sub_224DAABA8();
  sub_224DAF158();
  (*(v2 + 8))(v1, v3);
  v4 = swift_task_alloc();
  v0[10] = v4;
  *v4 = v0;
  v4[1] = sub_224C9E004;
  v5 = v0[7];

  return MEMORY[0x2822003E8](v0 + 2, 0, 0, v5);
}

uint64_t sub_224C9E004()
{

  return MEMORY[0x2822009F8](sub_224C9E100, 0, 0);
}

uint64_t sub_224C9E100()
{
  if (v0[2])
  {
    sub_224C9F084(v0[2], &qword_27D6F5D10, &qword_224DBD7A8, &qword_27D6F3800, &qword_224DB4180, &qword_27D6F5CE8, &unk_224DBD750, byte_27D6F5CF0);

    v1 = swift_task_alloc();
    v0[10] = v1;
    *v1 = v0;
    v1[1] = sub_224C9E004;
    v2 = v0[7];

    return MEMORY[0x2822003E8](v0 + 2, 0, 0, v2);
  }

  else
  {
    (*(v0[8] + 8))(v0[9], v0[7]);

    v3 = v0[1];

    return v3();
  }
}

uint64_t sub_224C9E268(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4220, &unk_224DB60D0);
  v4[4] = v5;
  v4[5] = *(v5 - 8);
  v4[6] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4228, &unk_224DB9BE0);
  v4[7] = v6;
  v4[8] = *(v6 - 8);
  v4[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_224C9E39C, 0, 0);
}

uint64_t sub_224C9E39C()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[4];
  __swift_project_boxed_opaque_existential_1((v0[3] + 40), *(v0[3] + 64));
  sub_224DAABA8();
  sub_224DAF158();
  (*(v2 + 8))(v1, v3);
  v4 = swift_task_alloc();
  v0[10] = v4;
  *v4 = v0;
  v4[1] = sub_224C9E4B8;
  v5 = v0[7];

  return MEMORY[0x2822003E8](v0 + 2, 0, 0, v5);
}

uint64_t sub_224C9E4B8()
{

  return MEMORY[0x2822009F8](sub_224C9E5B4, 0, 0);
}

uint64_t sub_224C9E5B4()
{
  if (v0[2])
  {
    sub_224C9F084(v0[2], &qword_27D6F5D18, &unk_224DBD7B0, &qword_27D6F56D8, &qword_224DBD790, &qword_27D6F5CB0, &unk_224DBD700, &qword_27D6F5CB8);

    v1 = swift_task_alloc();
    v0[10] = v1;
    *v1 = v0;
    v1[1] = sub_224C9E4B8;
    v2 = v0[7];

    return MEMORY[0x2822003E8](v0 + 2, 0, 0, v2);
  }

  else
  {
    (*(v0[8] + 8))(v0[9], v0[7]);

    v3 = v0[1];

    return v3();
  }
}

uint64_t sub_224C9E71C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4220, &unk_224DB60D0);
  v4[4] = v5;
  v4[5] = *(v5 - 8);
  v4[6] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4228, &unk_224DB9BE0);
  v4[7] = v6;
  v4[8] = *(v6 - 8);
  v4[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_224C9E850, 0, 0);
}

uint64_t sub_224C9E850()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[4];
  __swift_project_boxed_opaque_existential_1((v0[3] + 40), *(v0[3] + 64));
  sub_224DAABA8();
  sub_224DAF158();
  (*(v2 + 8))(v1, v3);
  v4 = swift_task_alloc();
  v0[10] = v4;
  *v4 = v0;
  v4[1] = sub_224C9E96C;
  v5 = v0[7];

  return MEMORY[0x2822003E8](v0 + 2, 0, 0, v5);
}

uint64_t sub_224C9E96C()
{

  return MEMORY[0x2822009F8](sub_224C9EA68, 0, 0);
}

uint64_t sub_224C9EA68()
{
  if (v0[2])
  {
    sub_224C9F084(v0[2], &qword_27D6F5D20, &unk_224DBD7D8, &unk_27D6F56B0, &unk_224DB4140, &qword_27D6F5D28, &qword_224DBD7E8, &qword_27D6F5D30);

    v1 = swift_task_alloc();
    v0[10] = v1;
    *v1 = v0;
    v1[1] = sub_224C9E96C;
    v2 = v0[7];

    return MEMORY[0x2822003E8](v0 + 2, 0, 0, v2);
  }

  else
  {
    (*(v0[8] + 8))(v0[9], v0[7]);

    v3 = v0[1];

    return v3();
  }
}

uint64_t sub_224C9EBD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4220, &unk_224DB60D0);
  v4[4] = v5;
  v4[5] = *(v5 - 8);
  v4[6] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4228, &unk_224DB9BE0);
  v4[7] = v6;
  v4[8] = *(v6 - 8);
  v4[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_224C9ED04, 0, 0);
}

uint64_t sub_224C9ED04()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[4];
  __swift_project_boxed_opaque_existential_1((v0[3] + 40), *(v0[3] + 64));
  sub_224DAABA8();
  sub_224DAF158();
  (*(v2 + 8))(v1, v3);
  v4 = swift_task_alloc();
  v0[10] = v4;
  *v4 = v0;
  v4[1] = sub_224C9EE20;
  v5 = v0[7];

  return MEMORY[0x2822003E8](v0 + 2, 0, 0, v5);
}

uint64_t sub_224C9EE20()
{

  return MEMORY[0x2822009F8](sub_224C9EF1C, 0, 0);
}

uint64_t sub_224C9EF1C()
{
  if (v0[2])
  {
    sub_224C9F084(v0[2], &qword_27D6F5D38, &qword_224DBD7F8, &qword_27D6F37E8, &qword_224DBD800, &qword_27D6F5D40, &qword_224DBD808, &qword_27D6F5D48);

    v1 = swift_task_alloc();
    v0[10] = v1;
    *v1 = v0;
    v1[1] = sub_224C9EE20;
    v2 = v0[7];

    return MEMORY[0x2822003E8](v0 + 2, 0, 0, v2);
  }

  else
  {
    (*(v0[8] + 8))(v0[9], v0[7]);

    v3 = v0[1];

    return v3();
  }
}

void sub_224C9F084(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, unint64_t *a8)
{
  v365 = a8;
  v364 = a7;
  v363 = a6;
  v398 = a1;
  v342 = a2;
  v343 = a3;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  MEMORY[0x28223BE20](v10 - 8, v11);
  v354 = &v319 - v12;
  v344 = a4;
  v345 = a5;
  v350 = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  v397 = *(v350 - 8);
  v14 = MEMORY[0x28223BE20](v350, v13);
  v341 = &v319 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14, v16);
  v334 = &v319 - v17;
  v333 = sub_224DAB018();
  v349 = *(v333 - 8);
  v19 = MEMORY[0x28223BE20](v333, v18);
  v332 = &v319 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19, v21);
  v331 = &v319 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3320, &unk_224DBD6F0);
  v25 = MEMORY[0x28223BE20](v23 - 8, v24);
  v362 = &v319 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25, v27);
  v361 = &v319 - v28;
  v374 = sub_224DAAE38();
  v395 = *(v374 - 8);
  v30 = MEMORY[0x28223BE20](v374, v29);
  v358 = &v319 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30, v32);
  v366 = &v319 - v33;
  v34 = sub_224DA9908();
  v393 = *(v34 - 8);
  v36 = MEMORY[0x28223BE20](v34, v35);
  v372 = &v319 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = MEMORY[0x28223BE20](v36, v38);
  v336 = &v319 - v40;
  MEMORY[0x28223BE20](v39, v41);
  v371 = &v319 - v42;
  v43 = sub_224DAAF28();
  v45 = MEMORY[0x28223BE20](v43 - 8, v44);
  v385 = &v319 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v45, v47);
  v384 = &v319 - v48;
  v49 = sub_224DAAF48();
  v351 = *(v49 - 8);
  v51 = MEMORY[0x28223BE20](v49, v50);
  v359 = &v319 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = MEMORY[0x28223BE20](v51, v53);
  v353 = &v319 - v55;
  v57 = MEMORY[0x28223BE20](v54, v56);
  v370 = &v319 - v58;
  v60 = MEMORY[0x28223BE20](v57, v59);
  v360 = &v319 - v61;
  v63 = MEMORY[0x28223BE20](v60, v62);
  v335 = &v319 - v64;
  v66 = MEMORY[0x28223BE20](v63, v65);
  v340 = &v319 - v67;
  v69 = MEMORY[0x28223BE20](v66, v68);
  v352 = &v319 - v70;
  v72 = MEMORY[0x28223BE20](v69, v71);
  v375 = &v319 - v73;
  v75 = MEMORY[0x28223BE20](v72, v74);
  v77 = &v319 - v76;
  MEMORY[0x28223BE20](v75, v78);
  v80 = &v319 - v79;
  v386 = sub_224DAAB18();
  v81 = *(v386 - 8);
  v83 = MEMORY[0x28223BE20](v386, v82);
  v339 = &v319 - ((v84 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v83, v85);
  v392 = &v319 - v86;
  v391 = sub_224DAAA98();
  v87 = *(v391 - 8);
  MEMORY[0x28223BE20](v391, v88);
  v390 = &v319 - ((v89 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F4680, &unk_224DB4610);
  v92 = MEMORY[0x28223BE20](v90 - 8, v91);
  v338 = &v319 - ((v93 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v92, v94);
  v96 = &v319 - v95;
  v97 = sub_224DA9688();
  v98 = *(v97 - 8);
  MEMORY[0x28223BE20](v97, v99);
  v101 = &v319 - ((v100 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_224AEFFB4(v96);
  if ((*(v98 + 48))(v96, 1, v97) != 1)
  {
    v348 = v98;
    v105 = *(v98 + 32);
    v337 = v101;
    v105(v101, v96, v97);
    v107 = *(v398 + 16);
    v108 = v375;
    v109 = v392;
    if (!v107)
    {
LABEL_148:
      (*(v348 + 8))(v337, v97);
      return;
    }

    v380 = 0;
    v394 = qword_2813652E0;
    v347 = (v399 + qword_2813652F0);
    v346 = (v399 + qword_2813652E8);
    v325 = (v399 + qword_281365308);
    v110 = (v398 + ((*(v87 + 80) + 32) & ~*(v87 + 80)));
    v388 = *(v87 + 72);
    v378 = (v81 + 32);
    v377 = (v81 + 8);
    v383 = (v393 + 48);
    v369 = (v393 + 32);
    v368 = (v395 + 6);
    *&v106 = 136446210;
    v373 = v106;
    *&v106 = 136446466;
    v355 = v106;
    v329 = xmmword_224DB3100;
    v357 = (v395 + 4);
    v356 = (v395 + 1);
    v328 = (v81 + 16);
    v367 = (v393 + 8);
    v330 = (v397 + 6);
    v397 = (v351 + 8);
    v395 = (v351 + 16);
    v327 = (v348 + 16);
    v326 = (v348 + 56);
    v324 = v349 + 16;
    v323 = v349 + 32;
    v322 = (v349 + 8);
    v376 = (v351 + 32);
    v382 = v34;
    v393 = v49;
    v387 = v77;
    v389 = v80;
    v396 = v97;
    while (1)
    {
      v398 = v107;
      v111 = v390;
      sub_224CB298C(v110, v390, MEMORY[0x277D46518]);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        (*v376)(v77, v111, v49);
        v112 = sub_224DAAF08();
        v113 = v112;
        v115 = v114;
        v116 = *(v399 + 32);
        if (v116 >> 6)
        {
          if (v116 >> 6 == 1)
          {
            v117 = v116 & 0x3F;
            v400[0] = 0;
            v400[1] = 0xE000000000000000;
            sub_224DAF938();

            strcpy(v400, "configuration-");
            HIBYTE(v400[1]) = -18;
            v118 = 0xEF77656976657270;
            if (v117 != 2)
            {
              v118 = 0xEC0000006576696CLL;
            }

            v119 = 0x746F687370616E73;
            if (v117)
            {
              v119 = 0x656E696C656D6974;
            }

            if (v117 <= 1)
            {
              v120 = v119;
            }

            else
            {
              v120 = 0x2D6C6F72746E6F63;
            }

            if (v117 <= 1)
            {
              v121 = 0xE800000000000000;
            }

            else
            {
              v121 = v118;
            }

            goto LABEL_49;
          }

          v143 = 0x7974697669746361;
          if (v116 == 129)
          {
            v143 = 1852793705;
          }

          v144 = 0xEF65766968637241;
          if (v116 == 129)
          {
            v144 = 0xE400000000000000;
          }

          if (v116 == 128)
          {
            v145 = 0x6F69736E65747865;
          }

          else
          {
            v145 = v143;
          }

          if (v116 == 128)
          {
            v137 = 0xE90000000000006ELL;
          }

          else
          {
            v137 = v144;
          }

          if (v112 == v145)
          {
LABEL_79:
            if (v115 == v137)
            {

              v97 = v396;
              goto LABEL_82;
            }
          }
        }

        else
        {
          strcpy(v400, "archive-");
          BYTE1(v400[1]) = 0;
          WORD1(v400[1]) = 0;
          HIDWORD(v400[1]) = -402653184;
          v133 = 0xEF77656976657270;
          if (v116 != 3)
          {
            v133 = 0xEC0000006576696CLL;
          }

          v134 = 0x656E696C656D6974;
          if (v116 == 2)
          {
            v133 = 0xE800000000000000;
          }

          else
          {
            v134 = 0x2D6C6F72746E6F63;
          }

          v135 = 0x746F687370616E73;
          if (!v116)
          {
            v135 = 0x6C6F686563616C70;
          }

          v136 = 0xEB00000000726564;
          if (v116)
          {
            v136 = 0xE800000000000000;
          }

          if (v116 <= 1)
          {
            v120 = v135;
          }

          else
          {
            v120 = v134;
          }

          if (v116 <= 1)
          {
            v121 = v136;
          }

          else
          {
            v121 = v133;
          }

LABEL_49:
          MEMORY[0x22AA5D210](v120, v121);

          v137 = v400[1];
          if (v113 == v400[0])
          {
            goto LABEL_79;
          }
        }

        v146 = sub_224DAFD88();

        v97 = v396;
        if (v146)
        {
LABEL_82:
          v147 = v370;
          v381 = *v395;
          v381(v370, v77, v49);
          v148 = sub_224DAB228();
          v149 = sub_224DAF2A8();
          if (os_log_type_enabled(v148, v149))
          {
            v150 = v110;
            v151 = v108;
            v152 = v147;
            v153 = swift_slowAlloc();
            v154 = swift_slowAlloc();
            v400[0] = v154;
            *v153 = v373;
            sub_224CB0A6C(&qword_281351720, MEMORY[0x277D46790], MEMORY[0x277D467C8]);
            v155 = sub_224DAFD28();
            v157 = v156;
            v158 = v152;
            v108 = v151;
            v110 = v150;
            v159 = *v397;
            (*v397)(v158, v49);
            v160 = sub_224A33F74(v155, v157, v400);
            v34 = v382;

            *(v153 + 4) = v160;
            _os_log_impl(&dword_224A2F000, v148, v149, "Received deleted record: %{public}s", v153, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v154);
            v161 = v154;
            v97 = v396;
            MEMORY[0x22AA5EED0](v161, -1, -1);
            MEMORY[0x22AA5EED0](v153, -1, -1);
          }

          else
          {

            v159 = *v397;
            (*v397)(v147, v49);
          }

          v77 = v387;
          sub_224DAAF38();
          v162 = v385;
          if ((*v383)(v385, 1, v34) == 1)
          {
LABEL_86:
            v49 = v393;
            (v159)(v77, v393);
          }

          else
          {
            (*v369)(v372, v162, v34);
            __swift_project_boxed_opaque_existential_1((v399 + 40), *(v399 + 64));
            v163 = v362;
            sub_224DAAC98();
            v164 = v374;
            if ((*v368)(v163, 1, v374) == 1)
            {
              sub_224A3311C(v163, &qword_27D6F3320, &unk_224DBD6F0);
              v165 = v353;
              v166 = v393;
              v381(v353, v77, v393);
              v167 = sub_224DAB228();
              v168 = sub_224DAF288();
              if (os_log_type_enabled(v167, v168))
              {
                v169 = v165;
                v170 = swift_slowAlloc();
                v171 = swift_slowAlloc();
                v400[0] = v171;
                *v170 = v373;
                sub_224CB0A6C(&qword_281351720, MEMORY[0x277D46790], MEMORY[0x277D467C8]);
                v172 = sub_224DAFD28();
                v174 = v173;
                v175 = v169;
                v77 = v387;
                (v159)(v175, v166);
                v176 = sub_224A33F74(v172, v174, v400);

                *(v170 + 4) = v176;
                _os_log_impl(&dword_224A2F000, v167, v168, "Received deleted remote record from a device that does not exist: %{public}s", v170, 0xCu);
                __swift_destroy_boxed_opaque_existential_1(v171);
                MEMORY[0x22AA5EED0](v171, -1, -1);
                MEMORY[0x22AA5EED0](v170, -1, -1);
              }

              else
              {

                (v159)(v165, v166);
              }

              v49 = v166;
              v222 = v363;
              v223 = v364;
              __swift_instantiateConcreteTypeFromMangledNameV2(v363, v364);
              sub_224A33088(v365, v222, v223, &unk_224DB8AC8);
              v218 = swift_allocError();
              *v224 = 0;
              swift_willThrow();
              goto LABEL_122;
            }

            v215 = v358;
            (*v357)(v358, v163, v164);
            v216 = v354;
            v217 = v380;
            (*v347)(v77, v215);
            if (v217)
            {
              (*v356)(v215, v164);
              v218 = v217;
              v49 = v393;
LABEL_122:
              v380 = 0;
              v225 = v359;
              v381(v359, v77, v49);
              v226 = v218;
              v227 = sub_224DAB228();
              v228 = sub_224DAF288();

              if (os_log_type_enabled(v227, v228))
              {
                v229 = v159;
                v230 = swift_slowAlloc();
                v231 = swift_slowAlloc();
                v381 = swift_slowAlloc();
                v400[0] = v381;
                *v230 = v355;
                sub_224CB0A6C(&qword_281351720, MEMORY[0x277D46790], MEMORY[0x277D467C8]);
                v232 = sub_224DAFD28();
                v234 = v233;
                (v229)(v225, v393);
                v235 = sub_224A33F74(v232, v234, v400);
                v77 = v387;

                *(v230 + 4) = v235;
                *(v230 + 12) = 2114;
                v236 = v218;
                v237 = _swift_stdlib_bridgeErrorToNSError();
                *(v230 + 14) = v237;
                *v231 = v237;
                _os_log_impl(&dword_224A2F000, v227, v228, "Failed to handle record deletion: %{public}s - %{public}@", v230, 0x16u);
                sub_224A3311C(v231, &unk_27D6F69F0, &unk_224DB3900);
                MEMORY[0x22AA5EED0](v231, -1, -1);
                v238 = v381;
                __swift_destroy_boxed_opaque_existential_1(v381);
                v49 = v393;
                MEMORY[0x22AA5EED0](v238, -1, -1);
                MEMORY[0x22AA5EED0](v230, -1, -1);

                v34 = v382;
                (*v367)(v372, v382);
                (v229)(v77, v49);
              }

              else
              {

                (v159)(v225, v49);
                v34 = v382;
                (*v367)(v372, v382);
                (v159)(v77, v49);
              }

              v108 = v375;
              v80 = v389;
              v109 = v392;
              v97 = v396;
              goto LABEL_8;
            }

            v380 = 0;
            v258 = (*v330)(v216, 1, v350);
            v108 = v375;
            if (v258 != 1)
            {
              v264 = v216;
              v265 = v164;
              v266 = v341;
              v267 = v344;
              v268 = v345;
              sub_224A44E4C(v264, v341, v344, v345);
              sub_224DAB348();
              sub_224A3311C(v266, v267, v268);
              v269 = v265;
              v97 = v396;
              (*v356)(v358, v269);
              (*v367)(v372, v34);
              goto LABEL_86;
            }

            (*v356)(v358, v164);
            (*v367)(v372, v34);
            v49 = v393;
            (v159)(v77, v393);
            sub_224A3311C(v216, v342, v343);
          }
        }

        else
        {
          (*v397)(v77, v49);
        }

        v80 = v389;
        v109 = v392;
        goto LABEL_8;
      }

      v122 = v386;
      (*v378)(v109, v111, v386);
      sub_224DAAAF8();
      v123 = sub_224DAAF08();
      v124 = v123;
      v126 = v125;
      v127 = *(v399 + 32);
      if (!(v127 >> 6))
      {
        break;
      }

      if (v127 >> 6 == 1)
      {
        v128 = v127 & 0x3F;
        v400[0] = 0;
        v400[1] = 0xE000000000000000;
        sub_224DAF938();

        strcpy(v400, "configuration-");
        HIBYTE(v400[1]) = -18;
        v129 = 0xEF77656976657270;
        if (v128 != 2)
        {
          v129 = 0xEC0000006576696CLL;
        }

        v130 = 0x746F687370616E73;
        if (v128)
        {
          v130 = 0x656E696C656D6974;
        }

        if (v128 <= 1)
        {
          v131 = v130;
        }

        else
        {
          v131 = 0x2D6C6F72746E6F63;
        }

        if (v128 <= 1)
        {
          v132 = 0xE800000000000000;
        }

        else
        {
          v132 = v129;
        }

        goto LABEL_66;
      }

      v177 = 0x7974697669746361;
      if (v127 == 129)
      {
        v177 = 1852793705;
      }

      v178 = 0xEF65766968637241;
      if (v127 == 129)
      {
        v178 = 0xE400000000000000;
      }

      if (v127 == 128)
      {
        v179 = 0x6F69736E65747865;
      }

      else
      {
        v179 = v177;
      }

      if (v127 == 128)
      {
        v142 = 0xE90000000000006ELL;
      }

      else
      {
        v142 = v178;
      }

      if (v123 != v179)
      {
LABEL_103:
        v180 = sub_224DAFD88();

        v97 = v396;
        if ((v180 & 1) == 0)
        {
          (*v397)(v80, v49);
          v109 = v392;
          (*v377)(v392, v122);
LABEL_114:
          v77 = v387;
          goto LABEL_8;
        }

        goto LABEL_104;
      }

LABEL_101:
      if (v126 != v142)
      {
        goto LABEL_103;
      }

      v97 = v396;
LABEL_104:
      v381 = v110;
      v181 = *v395;
      (*v395)(v108, v80, v49);
      v182 = sub_224DAB228();
      v183 = sub_224DAF2A8();
      if (os_log_type_enabled(v182, v183))
      {
        v184 = swift_slowAlloc();
        v185 = swift_slowAlloc();
        v400[0] = v185;
        *v184 = v373;
        sub_224CB0A6C(&qword_281351720, MEMORY[0x277D46790], MEMORY[0x277D467C8]);
        v186 = sub_224DAFD28();
        v188 = v187;
        v189 = v108;
        v190 = *v397;
        v191 = v189;
        (*v397)();
        v192 = sub_224A33F74(v186, v188, v400);
        v34 = v382;

        *(v184 + 4) = v192;
        _os_log_impl(&dword_224A2F000, v182, v183, "Received updated record: %{public}s", v184, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v185);
        v193 = v185;
        v97 = v396;
        MEMORY[0x22AA5EED0](v193, -1, -1);
        MEMORY[0x22AA5EED0](v184, -1, -1);
      }

      else
      {

        v194 = v108;
        v190 = *v397;
        v191 = v194;
        (*v397)();
      }

      v80 = v389;
      sub_224DAAF38();
      v195 = v384;
      if ((*v383)(v384, 1, v34) != 1)
      {
        v379 = v190;
        (*v369)(v371, v195, v34);
        __swift_project_boxed_opaque_existential_1((v399 + 40), *(v399 + 64));
        v196 = v361;
        sub_224DAAC98();
        v197 = v196;
        v198 = v196;
        v199 = v374;
        v200 = (*v368)(v198, 1, v374);
        v201 = v366;
        if (v200 == 1)
        {
          sub_224A3311C(v197, &qword_27D6F3320, &unk_224DBD6F0);
          v202 = v352;
          v203 = v393;
          v181(v352, v80, v393);
          v204 = sub_224DAB228();
          v205 = sub_224DAF288();
          v206 = os_log_type_enabled(v204, v205);
          v110 = v381;
          if (v206)
          {
            v207 = v202;
            v208 = swift_slowAlloc();
            v209 = swift_slowAlloc();
            v400[0] = v209;
            *v208 = v373;
            sub_224CB0A6C(&qword_281351720, MEMORY[0x277D46790], MEMORY[0x277D467C8]);
            v210 = sub_224DAFD28();
            v212 = v211;
            v213 = v207;
            v80 = v389;
            (v379)(v213, v203);
            v214 = sub_224A33F74(v210, v212, v400);

            *(v208 + 4) = v214;
            _os_log_impl(&dword_224A2F000, v204, v205, "Received incoming remote record from a device that does not exist: %{public}s", v208, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v209);
            MEMORY[0x22AA5EED0](v209, -1, -1);
            MEMORY[0x22AA5EED0](v208, -1, -1);
          }

          else
          {

            (v379)(v202, v203);
          }

          v49 = v203;
          v239 = v363;
          v240 = v364;
          __swift_instantiateConcreteTypeFromMangledNameV2(v363, v364);
          sub_224A33088(v365, v239, v240, &unk_224DB8AC8);
          v221 = swift_allocError();
          *v241 = 0;
          swift_willThrow();
          goto LABEL_128;
        }

        (*v357)(v366, v197, v199);
        v219 = v380;
        v220 = (*v346)(v392, v201);
        v110 = v381;
        if (v219)
        {
          (*v356)(v201, v199);
          v221 = v219;
          goto LABEL_119;
        }

        v380 = 0;
        if (v220)
        {
          __swift_project_boxed_opaque_existential_1((v399 + 40), *(v399 + 64));
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3368, &qword_224DB3B10);
          v259 = (*(v351 + 80) + 32) & ~*(v351 + 80);
          v260 = swift_allocObject();
          *(v260 + 16) = v329;
          v181((v260 + v259), v80, v393);
          v261 = v338;
          (*v327)(v338, v337, v97);
          (*v326)(v261, 0, 1, v97);
          v262 = v380;
          v263 = sub_224DAAC08();
          v221 = v262;
          if (v262)
          {

            sub_224A3311C(v261, &unk_27D6F4680, &unk_224DB4610);
            (*v356)(v366, v374);
LABEL_119:
            v49 = v393;
LABEL_128:
            v380 = 0;
            v242 = v360;
            v181(v360, v80, v49);
            v243 = v221;
            v244 = sub_224DAB228();
            v245 = sub_224DAF288();

            if (os_log_type_enabled(v244, v245))
            {
              v246 = swift_slowAlloc();
              v247 = swift_slowAlloc();
              v248 = swift_slowAlloc();
              v400[0] = v248;
              *v246 = v355;
              sub_224CB0A6C(&qword_281351720, MEMORY[0x277D46790], MEMORY[0x277D467C8]);
              v249 = sub_224DAFD28();
              v251 = v250;
              (v379)(v242, v393);
              v252 = sub_224A33F74(v249, v251, v400);

              *(v246 + 4) = v252;
              *(v246 + 12) = 2114;
              v253 = v221;
              v254 = _swift_stdlib_bridgeErrorToNSError();
              *(v246 + 14) = v254;
              *v247 = v254;
              _os_log_impl(&dword_224A2F000, v244, v245, "Failed to handle record update: %{public}s - %{public}@", v246, 0x16u);
              sub_224A3311C(v247, &unk_27D6F69F0, &unk_224DB3900);
              MEMORY[0x22AA5EED0](v247, -1, -1);
              __swift_destroy_boxed_opaque_existential_1(v248);
              v255 = v248;
              v49 = v393;
              MEMORY[0x22AA5EED0](v255, -1, -1);
              v256 = v246;
              v80 = v389;
              MEMORY[0x22AA5EED0](v256, -1, -1);

              v34 = v382;
              (*v367)(v371, v382);
              (v379)(v80, v49);
            }

            else
            {

              v257 = v379;
              (v379)(v242, v49);
              v34 = v382;
              (*v367)(v371, v382);
              (v257)(v80, v49);
            }
          }

          else
          {
            v295 = v263;
            sub_224A3311C(v261, &unk_27D6F4680, &unk_224DB4610);

            if (!*(v295 + 16) || (v296 = sub_224B0B3CC(v80), (v297 & 1) == 0))
            {

              v304 = v335;
              v305 = v393;
              v181(v335, v80, v393);
              v306 = sub_224DAB228();
              v307 = sub_224DAF288();
              if (os_log_type_enabled(v306, v307))
              {
                v308 = swift_slowAlloc();
                v309 = v304;
                v310 = swift_slowAlloc();
                v400[0] = v310;
                *v308 = v373;
                sub_224CB0A6C(&qword_281351720, MEMORY[0x277D46790], MEMORY[0x277D467C8]);
                v311 = sub_224DAFD28();
                v313 = v312;
                v314 = v309;
                v80 = v389;
                (v379)(v314, v305);
                v315 = sub_224A33F74(v311, v313, v400);

                *(v308 + 4) = v315;
                _os_log_impl(&dword_224A2F000, v306, v307, "Received incoming remote record that does not exist: %{public}s", v308, 0xCu);
                __swift_destroy_boxed_opaque_existential_1(v310);
                MEMORY[0x22AA5EED0](v310, -1, -1);
                MEMORY[0x22AA5EED0](v308, -1, -1);
              }

              else
              {

                (v379)(v304, v305);
              }

              v49 = v305;
              v316 = v363;
              v317 = v364;
              __swift_instantiateConcreteTypeFromMangledNameV2(v363, v364);
              sub_224A33088(v365, v316, v317, &unk_224DB8AC8);
              v221 = swift_allocError();
              *v318 = 0;
              swift_willThrow();
              (*v356)(v366, v374);
              goto LABEL_128;
            }

            v298 = v349;
            v299 = v332;
            v300 = v333;
            (*(v349 + 16))(v332, *(v295 + 56) + *(v349 + 72) * v296, v333);

            v301 = v331;
            (*(v298 + 32))(v331, v299, v300);
            v302 = v334;
            v303 = v366;
            (*v325)(v301, v366);
            v380 = 0;
            sub_224DAB348();
            sub_224A3311C(v302, v344, v345);
            (*v322)(v301, v300);
            (*v356)(v303, v374);
            v34 = v382;
            (*v367)(v371, v382);
            v49 = v393;
            (v379)(v80, v393);
          }

          v109 = v392;
          (*v377)(v392, v386);
          v108 = v375;
          v77 = v387;
          v97 = v396;
          goto LABEL_8;
        }

        v270 = v340;
        v49 = v393;
        v181(v340, v80, v393);
        v271 = v339;
        v272 = v386;
        (*v328)(v339, v392, v386);
        v273 = sub_224DAB228();
        v274 = sub_224DAF2A8();
        if (!os_log_type_enabled(v273, v274))
        {

          v291 = v270;
          v292 = *v377;
          (*v377)(v271, v272);
          v293 = v379;
          (v379)(v291, v49);
          (*v356)(v366, v374);
          (*v367)(v371, v34);
          (v293)(v80, v49);
          v294 = v392;
          v292(v392, v272);
          v108 = v375;
          v77 = v387;
          v109 = v294;
          goto LABEL_8;
        }

        v275 = swift_slowAlloc();
        v321 = swift_slowAlloc();
        v400[0] = v321;
        *v275 = v355;
        sub_224CB0A6C(&qword_281351720, MEMORY[0x277D46790], MEMORY[0x277D467C8]);
        v320 = v274;
        v276 = sub_224DAFD28();
        v277 = v270;
        v278 = v276;
        v280 = v279;
        (v379)(v277, v49);
        v281 = sub_224A33F74(v278, v280, v400);

        *(v275 + 4) = v281;
        *(v275 + 12) = 2082;
        v282 = v336;
        sub_224DAAB08();
        sub_224CB0A6C(&qword_281351A00, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
        v283 = sub_224DAFD28();
        v285 = v284;
        v319 = *v367;
        v319(v282, v382);
        v286 = v271;
        v287 = *v377;
        (*v377)(v286, v272);
        v288 = sub_224A33F74(v283, v285, v400);

        *(v275 + 14) = v288;
        _os_log_impl(&dword_224A2F000, v273, v320, "Client does not want record: %{public}s:%{public}s", v275, 0x16u);
        v289 = v321;
        swift_arrayDestroy();
        MEMORY[0x22AA5EED0](v289, -1, -1);
        v290 = v275;
        v97 = v396;
        MEMORY[0x22AA5EED0](v290, -1, -1);

        (*v356)(v366, v374);
        v319(v371, v382);
        v34 = v382;
        (v379)(v80, v393);
        v109 = v392;
        v287(v392, v272);
        v49 = v393;
        v108 = v375;
        goto LABEL_114;
      }

      v49 = v393;
      (v190)(v80, v393);
      v109 = v392;
      (*v377)(v392, v386);
      v77 = v387;
      v108 = v191;
      v110 = v381;
LABEL_8:
      v110 = (v110 + v388);
      v107 = v398 - 1;
      if (v398 == 1)
      {
        goto LABEL_148;
      }
    }

    strcpy(v400, "archive-");
    BYTE1(v400[1]) = 0;
    WORD1(v400[1]) = 0;
    HIDWORD(v400[1]) = -402653184;
    v138 = 0xEF77656976657270;
    if (v127 != 3)
    {
      v138 = 0xEC0000006576696CLL;
    }

    v139 = 0x656E696C656D6974;
    if (v127 == 2)
    {
      v138 = 0xE800000000000000;
    }

    else
    {
      v139 = 0x2D6C6F72746E6F63;
    }

    v140 = 0x746F687370616E73;
    if (!v127)
    {
      v140 = 0x6C6F686563616C70;
    }

    v141 = 0xEB00000000726564;
    if (v127)
    {
      v141 = 0xE800000000000000;
    }

    if (v127 <= 1)
    {
      v131 = v140;
    }

    else
    {
      v131 = v139;
    }

    if (v127 <= 1)
    {
      v132 = v141;
    }

    else
    {
      v132 = v138;
    }

LABEL_66:
    MEMORY[0x22AA5D210](v131, v132);

    v142 = v400[1];
    if (v124 != v400[0])
    {
      goto LABEL_103;
    }

    goto LABEL_101;
  }

  sub_224A3311C(v96, &unk_27D6F4680, &unk_224DB4610);
  v102 = sub_224DAB228();
  v103 = sub_224DAF288();
  if (os_log_type_enabled(v102, v103))
  {
    v104 = swift_slowAlloc();
    *v104 = 0;
    _os_log_impl(&dword_224A2F000, v102, v103, "Replicator temporary URL is not available; ignoring record updates", v104, 2u);
    MEMORY[0x22AA5EED0](v104, -1, -1);
  }
}