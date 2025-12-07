double sub_224BD98D0(uint64_t a1, uint64_t *a2, void (*a3)(uint64_t *__return_ptr))
{
  sub_224A3317C(a1, v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4C38, &qword_224DBA3A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4C40, &qword_224DBA3A8);
  swift_dynamicCast();
  a3(&v8);

  if (!v3)
  {
    *a2 = v8;
  }

  return result;
}

void sub_224BD999C(uint64_t a1, _BYTE *a2, void (*a3)(uint64_t *__return_ptr))
{
  sub_224A3317C(a1, v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4C38, &qword_224DBA3A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4C40, &qword_224DBA3A8);
  swift_dynamicCast();
  a3(&v7);

  if (!v3)
  {
    *a2 = 0;
  }
}

uint64_t sub_224BD9A5C(uint64_t a1, uint64_t a2, uint64_t a3)
{

  v3 = sub_224DADDD8();

  return v3;
}

uint64_t sub_224BD9ABC()
{

  v1 = sub_224DAC018();
  v3 = v2;

  v4 = *(v0 + OBJC_IVAR____TtC10ChronoCore21MobileActivityService_lock);

  os_unfair_lock_lock(v4 + 4);
  sub_224BDBD10(v13);
  os_unfair_lock_unlock(v4 + 4);
  v6 = v13[0];
  v5 = v13[1];

  v7 = *(*__swift_project_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC10ChronoCore21MobileActivityService_remoteActivitySubscriptionStore), *(v0 + OBJC_IVAR____TtC10ChronoCore21MobileActivityService_remoteActivitySubscriptionStore + 24)) + 24);
  os_unfair_lock_lock(*(v7 + 16));
  swift_beginAccess();
  v8 = *(v7 + 16);

  os_unfair_lock_unlock(v8);
  sub_224DA9908();
  sub_224DAD9C8();
  sub_224A43A4C(&qword_281351A18, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  v9 = sub_224DAECF8();
  v11 = v10;

  sub_224DAF938();
  MEMORY[0x22AA5D210](0x6C75666574617473, 0xEF203A65726F7453);
  MEMORY[0x22AA5D210](v1, v3);

  MEMORY[0x22AA5D210](0xD000000000000013, 0x8000000224DC9E70);
  MEMORY[0x22AA5D210](v6, v5);

  MEMORY[0x22AA5D210](0xD000000000000016, 0x8000000224DC9E90);
  MEMORY[0x22AA5D210](v9, v11);

  return 0;
}

uint64_t sub_224BD9D14@<X0>(uint64_t *a2@<X8>)
{
  swift_beginAccess();
  sub_224DA9908();
  sub_224DABFD8();
  sub_224A43A4C(&qword_281351A18, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);

  v3 = sub_224DAECF8();
  v5 = v4;

  *a2 = v3;
  a2[1] = v5;
  return result;
}

void sub_224BD9E7C(uint64_t a1)
{
  v1 = sub_224DABCC8();
  v2 = *(v1 - 8);
  v4 = MEMORY[0x28223BE20](v1, v3);
  v38 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v31 - v7;

  v10 = sub_224A3DADC(v9);

  v11 = sub_224DAC108();

  v12 = *(v11 + 16);
  v43 = v10;
  v41 = v12;
  if (!v12)
  {
LABEL_24:

    return;
  }

  v13 = 0;
  v39 = v10 & 0xC000000000000001;
  v40 = v2 + 16;
  if (v10 < 0)
  {
    v14 = v10;
  }

  else
  {
    v14 = v10 & 0xFFFFFFFFFFFFFF8;
  }

  v42 = v10 + 56;
  v37 = (v2 + 32);
  v32 = (v2 + 8);
  v33 = v14;
  v15 = MEMORY[0x277D84F90];
  v35 = v2;
  v36 = v8;
  v34 = v11;
  v31 = v1;
  while (v13 < *(v11 + 16))
  {
    v16 = (*(v2 + 80) + 32) & ~*(v2 + 80);
    v17 = *(v2 + 72);
    (*(v2 + 16))(v8, v11 + v16 + v17 * v13, v1);
    v18 = sub_224DABCA8();
    if (v39)
    {
      v19 = sub_224DAF888();

      if (v19)
      {
        goto LABEL_12;
      }
    }

    else
    {
      v24 = v43;
      if (*(v43 + 16))
      {
        sub_224DAF538();
        v25 = sub_224DAF698();
        v26 = -1 << *(v24 + 32);
        v27 = v25 & ~v26;
        if ((*(v42 + ((v27 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v27))
        {
          v28 = ~v26;
          while (1)
          {
            v29 = *(*(v24 + 48) + 8 * v27);
            v30 = sub_224DAF6A8();

            if (v30)
            {
              break;
            }

            v27 = (v27 + 1) & v28;
            v24 = v43;
            if (((*(v42 + ((v27 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v27) & 1) == 0)
            {
              goto LABEL_6;
            }
          }

          v1 = v31;
          v8 = v36;
LABEL_12:
          v20 = *v37;
          (*v37)(v38, v8, v1);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v44 = v15;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_224ADA608(0, *(v15 + 16) + 1, 1);
            v15 = v44;
          }

          v23 = *(v15 + 16);
          v22 = *(v15 + 24);
          if (v23 >= v22 >> 1)
          {
            sub_224ADA608((v22 > 1), v23 + 1, 1);
            v15 = v44;
          }

          *(v15 + 16) = v23 + 1;
          v20((v15 + v16 + v23 * v17), v38, v1);
          v2 = v35;
          v8 = v36;
          v11 = v34;
          goto LABEL_8;
        }
      }

LABEL_6:

      v1 = v31;
      v2 = v35;
      v8 = v36;
      v11 = v34;
    }

    (*v32)(v8, v1);
LABEL_8:
    if (++v13 == v41)
    {
      goto LABEL_24;
    }
  }

  __break(1u);
}

uint64_t sub_224BDA208(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v80 = a2;
  v60 = a1;
  v75 = sub_224DACB08();
  v65 = *(v75 - 8);
  MEMORY[0x28223BE20](v75, v6);
  v62 = &v60 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = sub_224DACB28();
  v67 = *(v79 - 8);
  MEMORY[0x28223BE20](v79, v8);
  v78 = &v60 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = sub_224DACC88();
  v64 = *(v77 - 8);
  MEMORY[0x28223BE20](v77, v10);
  v76 = &v60 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_224DABCC8();
  v81 = *(v12 - 8);
  MEMORY[0x28223BE20](v12, v13);
  v84 = &v60 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_224DACB98();
  v16 = *(v15 - 8);
  v18 = MEMORY[0x28223BE20](v15, v17);
  v61 = &v60 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18, v20);
  v22 = &v60 - v21;
  v23 = sub_224DAB258();
  v24 = *(v23 - 8);
  MEMORY[0x28223BE20](v23, v25);
  v27 = &v60 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = *(v24 + 16);
  v71 = v29;
  v28(v27, v80 + OBJC_IVAR____TtC10ChronoCore21MobileActivityService_logger);
  v30 = a4;
  v72 = *(v16 + 16);
  v73 = v16 + 16;
  v72(v22, a4, v15);

  v70 = v27;
  v31 = a3;
  v32 = sub_224DAB228();
  LODWORD(a4) = sub_224DAF2A8();

  LODWORD(v69) = a4;
  v33 = os_log_type_enabled(v32, a4);
  v80 = v12;
  v74 = v30;
  if (v33)
  {
    v34 = swift_slowAlloc();
    v66 = swift_slowAlloc();
    v82 = v66;
    *v34 = 136446466;
    v35 = MEMORY[0x22AA5D380](v31, v12);
    v68 = v31;
    v37 = sub_224A33F74(v35, v36, &v82);

    *(v34 + 4) = v37;
    *(v34 + 12) = 2082;
    sub_224A43A4C(&unk_281350D28, MEMORY[0x277CF9BF8], MEMORY[0x277CF9C00]);
    v38 = sub_224DAFD28();
    v40 = v39;
    v41 = v15;
    (*(v16 + 8))(v22, v15);
    v42 = sub_224A33F74(v38, v40, &v82);

    *(v34 + 14) = v42;
    v31 = v68;
    _os_log_impl(&dword_224A2F000, v32, v69, "Reloading session platter for %{public}s due to %{public}s", v34, 0x16u);
    v43 = v66;
    swift_arrayDestroy();
    MEMORY[0x22AA5EED0](v43, -1, -1);
    MEMORY[0x22AA5EED0](v34, -1, -1);
  }

  else
  {

    v41 = v15;
    (*(v16 + 8))(v22, v15);
  }

  result = (*(v24 + 8))(v70, v71);
  v45 = *(v31 + 16);
  v46 = v60;
  v47 = v62;
  v48 = v31;
  v49 = v80;
  v50 = v84;
  v51 = v61;
  if (v45)
  {
    v71 = *(v81 + 16);
    v52 = v48 + ((*(v81 + 80) + 32) & ~*(v81 + 80));
    v69 = *(v81 + 72);
    v70 = 0x8000000224DC9EF0;
    LODWORD(v68) = *MEMORY[0x277CF9B50];
    v67 += 13;
    LODWORD(v66) = *MEMORY[0x277CF9B40];
    ++v64;
    v65 += 13;
    v63 = (v81 + 8);
    v81 += 16;
    do
    {
      v71(v50, v52, v49);
      v82 = 0;
      v83 = 0xE000000000000000;
      sub_224DAF938();

      v82 = 0xD00000000000001BLL;
      v83 = v70;
      sub_224A43A4C(&unk_281350D28, MEMORY[0x277CF9BF8], MEMORY[0x277CF9C00]);
      v53 = v41;
      v54 = v47;
      v55 = v46;
      v56 = v74;
      v57 = sub_224DAFD28();
      MEMORY[0x22AA5D210](v57);

      sub_224DAD1E8();
      v50 = v84;

      (*v67)(v78, v68, v79);
      (*v65)(v54, v66, v75);
      v58 = v56;
      v46 = v55;
      v47 = v54;
      v41 = v53;
      v59 = v76;
      v72(v51, v58, v41);
      sub_224DACC48();
      sub_224DACC38();
      sub_224DAD218();
      v49 = v80;
      (*v64)(v59, v77);
      result = (*v63)(v50, v49);
      v52 += v69;
      --v45;
    }

    while (v45);
  }

  return result;
}

void sub_224BDAA08(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2)
  {
    v4 = *(sub_224DABCC8() - 8);
    v5 = a2 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v6 = *(v4 + 72);
    do
    {
      sub_224DAD228();
      v5 += v6;
      --v2;
    }

    while (v2);
  }
}

double sub_224BDAAB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_224BDAB18(a3);
  }

  return result;
}

void sub_224BDAB18(uint64_t a1)
{
  v3 = sub_224DABCC8();
  v71 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v4);
  v80 = &v65 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_224DAB258();
  v72 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v7);
  v9 = &v65 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = sub_224DAC918();
  v10 = *(v83 - 8);
  MEMORY[0x28223BE20](v83, v11);
  v78 = &v65 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4C70, &qword_224DBA418);
  v15 = MEMORY[0x28223BE20](v13 - 8, v14);
  v17 = &v65 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15, v18);
  v20 = &v65 - v19;

  v21 = sub_224DAC168();

  if (!v21)
  {
    return;
  }

  v66 = v3;
  v67 = v6;
  v68 = a1;
  v69 = v9;
  v70 = v1;
  v22 = 0;
  v79 = v21;
  v25 = *(v21 + 64);
  v24 = v21 + 64;
  v23 = v25;
  v26 = 1 << *(v24 - 32);
  v27 = -1;
  if (v26 < 64)
  {
    v27 = ~(-1 << v26);
  }

  v28 = v27 & v23;
  v29 = (v26 + 63) >> 6;
  v75 = v10 + 2;
  v76 = v17;
  v73 = v24;
  v74 = v10 + 4;
  v81 = v10;
  v82 = (v10 + 1);
  v30 = v80;
  v31 = v10;
  v77 = v20;
  if ((v27 & v23) == 0)
  {
LABEL_6:
    if (v29 <= v22 + 1)
    {
      v33 = v22 + 1;
    }

    else
    {
      v33 = v29;
    }

    v34 = v33 - 1;
    while (1)
    {
      v32 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        break;
      }

      if (v32 >= v29)
      {
        v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4C78, &qword_224DBA420);
        (*(*(v43 - 8) + 56))(v17, 1, 1, v43);
        v28 = 0;
        goto LABEL_14;
      }

      v28 = *(v73 + 8 * v32);
      ++v22;
      if (v28)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
    return;
  }

  while (1)
  {
    v32 = v22;
LABEL_13:
    v35 = __clz(__rbit64(v28));
    v28 &= v28 - 1;
    v36 = v35 | (v32 << 6);
    v37 = v79;
    v38 = v31;
    (v31[2])(v78, *(v79 + 48) + v31[9] * v36, v83);
    v39 = *(*(v37 + 56) + 8 * v36);
    v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4C78, &qword_224DBA420);
    v41 = *(v40 + 48);
    v17 = v76;
    (v38[4])();
    *&v17[v41] = v39;
    (*(*(v40 - 8) + 56))(v17, 0, 1, v40);

    v34 = v32;
    v30 = v80;
    v20 = v77;
LABEL_14:
    sub_224A44E4C(v17, v20, &qword_27D6F4C70, &qword_224DBA418);
    v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4C78, &qword_224DBA420);
    if ((*(*(v42 - 8) + 48))(v20, 1, v42) == 1)
    {

      return;
    }

    if ((sub_224DABFA8() & 1) == 0)
    {
      break;
    }

    (*v82)(v20, v83);

    v22 = v34;
    v31 = v81;
    if (!v28)
    {
      goto LABEL_6;
    }
  }

  v44 = v72;
  v45 = v67;
  (*(v72 + 16))(v69, v70 + OBJC_IVAR____TtC10ChronoCore21MobileActivityService_logger, v67);
  v46 = v71;
  v47 = v68;
  v48 = v66;
  (*(v71 + 16))(v30, v68, v66);
  v49 = v30;
  v50 = sub_224DAB228();
  v51 = sub_224DAF2A8();
  if (os_log_type_enabled(v50, v51))
  {
    v52 = swift_slowAlloc();
    v81 = swift_slowAlloc();
    v84[0] = v81;
    *v52 = 136446210;
    sub_224A43A4C(&qword_281350EA0, MEMORY[0x277CF9880], MEMORY[0x277CF9898]);
    LODWORD(v80) = v51;
    v53 = sub_224DAFD28();
    v54 = v44;
    v56 = v55;
    (*(v46 + 8))(v49, v48);
    v57 = sub_224A33F74(v53, v56, v84);

    *(v52 + 4) = v57;
    v58 = v52;
    _os_log_impl(&dword_224A2F000, v50, v80, "Reloading session platter for %{public}s because environment no longer matches.", v52, 0xCu);
    v59 = v81;
    __swift_destroy_boxed_opaque_existential_1(v81);
    v47 = v68;
    MEMORY[0x22AA5EED0](v59, -1, -1);
    MEMORY[0x22AA5EED0](v58, -1, -1);

    (*(v54 + 8))(v69, v67);
  }

  else
  {

    (*(v46 + 8))(v49, v48);
    (*(v44 + 8))(v69, v45);
  }

  v60 = (*v82)(v20, v83);
  v62 = MEMORY[0x28223BE20](v60, v61);
  *(&v65 - 2) = v47;
  LOBYTE(v84[0]) = 1;
  MEMORY[0x28223BE20](v62, v63);
  *(&v65 - 4) = v84;
  *(&v65 - 3) = sub_224BDC2BC;
  *(&v65 - 2) = v64;

  sub_224DAC128();

  if (v84[0])
  {
    goto LABEL_26;
  }
}

uint64_t sub_224BDB2EC(uint64_t a1, uint64_t a2)
{
  v2 = sub_224DACB98();
  v23 = *(v2 - 8);
  v24 = v2;
  MEMORY[0x28223BE20](v2, v3);
  v22 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_224DACB08();
  v5 = *(v21 - 8);
  MEMORY[0x28223BE20](v21, v6);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_224DACB28();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v11);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_224DACC88();
  v14 = *(v20 - 8);
  MEMORY[0x28223BE20](v20, v15);
  v17 = &v19 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_224DAD1E8();
  (*(v10 + 104))(v13, *MEMORY[0x277CF9B50], v9);
  (*(v5 + 104))(v8, *MEMORY[0x277CF9B40], v21);
  (*(v23 + 104))(v22, *MEMORY[0x277CF9BA8], v24);
  sub_224DACC48();
  sub_224DACC38();
  sub_224DAD218();
  return (*(v14 + 8))(v17, v20);
}

uint64_t sub_224BDB5F0()
{
  v1 = v0;
  v43 = sub_224DA9688();
  v2 = *(v43 - 8);
  v4 = MEMORY[0x28223BE20](v43, v3);
  v6 = v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v4, v7);
  v39 = v34 - v9;
  MEMORY[0x28223BE20](v8, v10);
  v42 = v34 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F4670, &unk_224DC0820);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12, v14);
  v40 = v34 - v15;
  sub_224BD69EC();
  v17 = *(v16 + 16);
  if (v17)
  {
    v19 = *(v13 + 16);
    v18 = v13 + 16;
    v20 = v16 + ((*(v18 + 64) + 32) & ~*(v18 + 64));
    v46 = *(v18 + 56);
    v47 = v19;
    v45 = (v18 - 8);
    v34[1] = v16;
    v35 = (v2 + 8);
    v38 = v2;
    v41 = (v2 + 32);
    v44 = MEMORY[0x277D84F90];
    v21 = v40;
    v36 = v12;
    v37 = v0;
    v48 = v18;
    v19(v40, v20, v12);
    while (1)
    {
      v22 = v6;
      __swift_project_boxed_opaque_existential_1((v1 + 16), *(v1 + 40));
      v23 = v49;
      sub_224DACEA8();
      if (v23)
      {

        (*v45)(v21, v12);
        v49 = 0;
      }

      else
      {
        v49 = 0;
        v24 = v39;
        sub_224DA9548();
        v25 = v43;
        (*v35)(v6, v43);
        (*v45)(v21, v12);
        v26 = *v41;
        (*v41)(v42, v24, v25);
        v27 = v44;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v27 = sub_224AD9420(0, v27[2] + 1, 1, v27);
        }

        v29 = v27[2];
        v28 = v27[3];
        v1 = v37;
        if (v29 >= v28 >> 1)
        {
          v27 = sub_224AD9420((v28 > 1), v29 + 1, 1, v27);
        }

        v27[2] = v29 + 1;
        v30 = (*(v38 + 80) + 32) & ~*(v38 + 80);
        v44 = v27;
        v26(v27 + v30 + *(v38 + 72) * v29, v42, v43);
        v6 = v22;
        v12 = v36;
        v21 = v40;
      }

      v20 += v46;
      if (!--v17)
      {
        break;
      }

      v47(v21, v20, v12);
    }

    v31 = v44;
  }

  else
  {

    v31 = MEMORY[0x277D84F90];
  }

  v32 = sub_224AE9040(v31);

  return v32;
}

uint64_t sub_224BDB9C0()
{
  v2 = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F4680, &unk_224DB4610);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v6 = v30 - v5;
  v7 = sub_224DA9688();
  v8 = *(v7 - 8);
  v10 = MEMORY[0x28223BE20](v7, v9);
  v36 = v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10, v12);
  v35 = v30 - v14;
  MEMORY[0x28223BE20](v13, v15);
  v34 = v30 - v16;
  v38 = MEMORY[0x277D84FA0];
  __swift_project_boxed_opaque_existential_1((v0 + 296), *(v0 + 320));
  v17 = sub_224DAC678();
  v18 = *(v17 + 16);
  if (v18)
  {
    v30[1] = v1;
    v30[2] = v17;
    v19 = v17 + 32;
    v20 = v8;
    v21 = (v8 + 48);
    v31 = (v20 + 8);
    v32 = (v20 + 32);
    v33 = v21;
    do
    {
      sub_224A3317C(v19, v37);
      __swift_project_boxed_opaque_existential_1((v2 + 16), *(v2 + 40));
      sub_224DAD258();
      __swift_destroy_boxed_opaque_existential_1(v37);
      if ((*v21)(v6, 1, v7) == 1)
      {
        sub_224A3311C(v6, &unk_27D6F4680, &unk_224DB4610);
      }

      else
      {
        v22 = v2;
        v23 = v7;
        v24 = v34;
        (*v32)(v34, v6, v23);
        v25 = v36;
        sub_224DA9548();
        v26 = v35;
        sub_224ADB390(v35, v25);
        v27 = *v31;
        (*v31)(v26, v23);
        v28 = v24;
        v7 = v23;
        v2 = v22;
        v21 = v33;
        v27(v28, v7);
      }

      v19 += 40;
      --v18;
    }

    while (v18);

    return v38;
  }

  else
  {

    return MEMORY[0x277D84FA0];
  }
}

void *sub_224BDBD10@<X0>(void *a1@<X8>)
{
  result = (*(v1 + 16))(v6);
  if (!v2)
  {
    v5 = v6[1];
    *a1 = v6[0];
    a1[1] = v5;
  }

  return result;
}

uint64_t sub_224BDBD54(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4C00, &qword_224DBA328);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v10 - v6;
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_224BDBF38();
  sub_224DAFEF8();
  if (!v1)
  {
    v12 = 0;
    v8 = sub_224DAFC58();
    v11 = 1;
    sub_224DAFC58();
    (*(v4 + 8))(v7, v3);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v8;
}

unint64_t sub_224BDBF38()
{
  result = qword_27D6F4C08;
  if (!qword_27D6F4C08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D6F4C08);
  }

  return result;
}

uint64_t sub_224BDBFCC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_224ACED1C;

  return sub_224BD3C44(a1, v4, v5, v6);
}

uint64_t sub_224BDC090(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_224BDC110(uint64_t a1)
{
  v3 = *(sub_224DABCC8() - 8);
  v4 = *(v1 + 16);
  v5 = v1 + ((*(v3 + 80) + 24) & ~*(v3 + 80));

  sub_224BD0998(a1, v4, v5);
}

uint64_t objectdestroy_25Tm_1()
{
  v1 = sub_224DABCC8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

double sub_224BDC248(uint64_t a1)
{
  v3 = *(sub_224DABCC8() - 8);
  v4 = *(v1 + 16);
  v5 = v1 + ((*(v3 + 80) + 24) & ~*(v3 + 80));

  return sub_224BDAAB8(a1, v4, v5);
}

unint64_t sub_224BDC308()
{
  result = qword_27D6F4CE0;
  if (!qword_27D6F4CE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D6F4CE0);
  }

  return result;
}

unint64_t sub_224BDC360()
{
  result = qword_27D6F4CE8;
  if (!qword_27D6F4CE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D6F4CE8);
  }

  return result;
}

unint64_t sub_224BDC3B8()
{
  result = qword_27D6F4CF0;
  if (!qword_27D6F4CF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D6F4CF0);
  }

  return result;
}

uint64_t sub_224BDC4C8()
{
  v0 = sub_224DAB258();
  __swift_allocate_value_buffer(v0, qword_281364E20);
  __swift_project_value_buffer(v0, qword_281364E20);
  return sub_224DAB238();
}

void sub_224BDC544()
{
  v1 = v0;
  swift_beginAccess();
  v2 = *(v0 + 16);
  if ((v2 & 0xC000000000000001) != 0)
  {

    swift_unknownObjectRetain();
    sub_224DAF7E8();
    sub_224DAB338();
    sub_224AA686C(&unk_281350FE0, MEMORY[0x277CBCDA8], MEMORY[0x277CBCDB0]);
    sub_224DAF1F8();
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
      sub_224A3B7E4(v4);

      swift_unknownObjectRelease();
      swift_unknownObjectRelease();

      return;
    }

    while (1)
    {
      sub_224DAB328();

      v6 = v14;
      v7 = v15;
      if ((v4 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_14:
      if (sub_224DAF878())
      {
        sub_224DAB338();
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

uint64_t sub_224BDC7A8()
{
  sub_224BDC544();

  return swift_deallocClassInstance();
}

void sub_224BDC800()
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

  qword_28135C428 = v5;
}

uint64_t sub_224BDC90C(void (**a1)(char *, uint64_t), void *a2, void (**a3)(char *, uint64_t, __n128), uint64_t a4, uint64_t a5)
{
  v67 = a5;
  v68 = a2;
  ObjectType = a4;
  v69 = a3;
  v70 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5090, &qword_224DB5C30);
  MEMORY[0x28223BE20](v6 - 8, v7);
  v75 = &v59 - v8;
  v72 = sub_224DAF3B8();
  v61 = *(v72 - 8);
  MEMORY[0x28223BE20](v72, v9);
  v63 = &v59 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4CA0, &qword_224DBA450);
  v60 = *(v71 - 8);
  MEMORY[0x28223BE20](v71, v11);
  v62 = &v59 - v12;
  v66 = sub_224DAF3C8();
  v13 = *(v66 - 8);
  MEMORY[0x28223BE20](v66, v14);
  v65 = &v59 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_224DAF318();
  MEMORY[0x28223BE20](v16, v17);
  v64 = &v59 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_224DAB848();
  MEMORY[0x28223BE20](v19 - 8, v20);
  v74 = v5;
  *(v5 + 16) = MEMORY[0x277D84FA0];
  v21 = (v5 + 16);
  v22 = sub_224AC319C();
  sub_224DAB7E8();
  aBlock = MEMORY[0x277D84F90];
  sub_224AA686C(&qword_281350A88, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3470, qword_224DB38B0);
  v23 = v68;
  sub_224A33088(&qword_281350B90, &qword_27D6F3470, qword_224DB38B0, MEMORY[0x277D83970]);
  v24 = v22;
  sub_224DAF788();
  (*(v13 + 104))(v65, *MEMORY[0x277D85260], v66);
  v25 = v67;
  v26 = sub_224DAF418();
  v27 = v69;
  v21[6] = v26;
  v21[7] = 0;
  type metadata accessor for UnfairLock();
  v28 = swift_allocObject();
  v29 = swift_slowAlloc();
  *v29 = 0;
  *(v28 + 16) = v29;
  v21[8] = v28;
  v21[3] = v23;
  v21[4] = v27;
  v21[5] = ObjectType;
  v30 = v70;
  v21[1] = v25;
  v21[2] = v30;
  if (v30)
  {
    ObjectType = swift_getObjectType();
    v31 = swift_allocObject();
    v32 = v74;
    swift_weakInit();
    v33 = v23[2];
    swift_unknownObjectRetain();

    swift_unknownObjectRetain();

    v33(sub_224BDD2D8, v31, ObjectType, v23);

    v27 = *(v32 + 48);
  }

  else
  {
    swift_unknownObjectRetain();

    v32 = v74;
  }

  ObjectType = v24;
  v34 = v75;
  if (v27)
  {
    v35 = *(v32 + 56);
    v36 = swift_getObjectType();
    v37 = swift_allocObject();
    swift_weakInit();
    v38 = v25;
    v39 = *(v35 + 16);
    swift_unknownObjectRetain();

    v39(sub_224AA53B0, v37, v36, v35);
    v25 = v38;
    swift_unknownObjectRelease();
  }

  v40 = *(v25 + 16);
  if (v40)
  {
    v41 = v25 + 32;
    v70 = (v61 + 8);
    v68 = v21;
    v69 = (v60 + 8);
    v42 = v63;
    v43 = v62;
    v44 = v74;
    do
    {
      sub_224A3317C(v41, &aBlock);
      v45 = v79;
      v46 = v80;
      __swift_project_boxed_opaque_existential_1(&aBlock, v79);
      v47 = (*(v46 + 1))(v45, v46);
      __swift_destroy_boxed_opaque_existential_1(&aBlock);
      v82 = v47;
      sub_224DAF368();
      v83 = *(v44 + 64);
      v48 = v83;
      v49 = sub_224DAF358();
      (*(*(v49 - 8) + 56))(v34, 1, 1, v49);
      v50 = v48;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5200, &qword_224DBA810);
      sub_224A33088(&qword_281350FF0, &qword_27D6F5200, &qword_224DBA810, MEMORY[0x277CBCD90]);
      sub_224AA686C(&qword_281350A80, sub_224AC319C, MEMORY[0x277D85228]);
      v34 = v75;
      sub_224DAB468();
      sub_224A3311C(v34, &qword_27D6F5090, &qword_224DB5C30);

      (*v70)(v42, v72);

      v51 = swift_allocObject();
      swift_weakInit();
      v52 = swift_allocObject();
      *(v52 + 16) = sub_224A961A0;
      *(v52 + 24) = v51;
      sub_224A33088(&qword_281351338, &qword_27D6F4CA0, &qword_224DBA450, MEMORY[0x277CBCCF8]);
      v53 = v71;
      sub_224DAB488();

      (*v69)(v43, v53);
      swift_beginAccess();
      sub_224DAB308();
      swift_endAccess();

      v41 += 40;
      --v40;
    }

    while (v40);

    v32 = v74;
  }

  else
  {
  }

  sub_224A962BC();
  v54 = sub_224DAF3D8();
  v80 = sub_224BDC538;
  v81 = 0;
  aBlock = MEMORY[0x277D85DD0];
  v77 = 1107296256;
  v78 = sub_224A6B208;
  v79 = &block_descriptor_25;
  v55 = _Block_copy(&aBlock);
  xpc_set_event_stream_handler("com.apple.distnoted.matching", v54, v55);
  _Block_release(v55);

  v56 = sub_224DAF3D8();
  v80 = sub_224A6B268;
  v81 = 0;
  aBlock = MEMORY[0x277D85DD0];
  v77 = 1107296256;
  v78 = sub_224A6B208;
  v79 = &block_descriptor_18;
  v57 = _Block_copy(&aBlock);
  xpc_set_event_stream_handler("com.apple.notifyd.matching", v56, v57);
  _Block_release(v57);

  return v32;
}

void sub_224BDD320(uint64_t a1)
{
  sub_224BDD38C(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_224BDD38C(uint64_t a1)
{
  if (!qword_281351A28)
  {
    sub_224DA9878();
    v1 = sub_224DAF728();
    if (!v2)
    {
      atomic_store(v1, &qword_281351A28);
    }
  }
}

uint64_t sub_224BDD3EC()
{
  if (*v0)
  {
    return 0x656C61636F6CLL;
  }

  else
  {
    return 0x6F6973726556736FLL;
  }
}

uint64_t sub_224BDD428()
{
  sub_224DAF938();

  if (v0[3])
  {
    v1 = v0[2];
    v2 = v0[3];
  }

  else
  {
    v1 = 7104878;
    v2 = 0xE300000000000000;
  }

  MEMORY[0x22AA5D210](v1, v2);

  MEMORY[0x22AA5D210](0xD000000000000010, 0x8000000224DCA0A0);
  if (v0[1])
  {
    v3 = *v0;
    v4 = v0[1];
  }

  else
  {
    v3 = 7104878;
    v4 = 0xE300000000000000;
  }

  MEMORY[0x22AA5D210](v3, v4);

  MEMORY[0x22AA5D210](0x656C61636F6C202CLL, 0xEA0000000000203ALL);
  MEMORY[0x22AA5D210](v0[4], v0[5]);
  MEMORY[0x22AA5D210](41, 0xE100000000000000);
  return 0x6E6F697372657628;
}

uint64_t sub_224BDD568(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4D10, &qword_224DBA980);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v9[-v6];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_224BDE3DC();
  sub_224DAFF08();
  v9[15] = 0;
  sub_224DAFCA8();
  if (v1)
  {
    return (*(v4 + 8))(v7, v3);
  }

  v9[14] = 1;
  sub_224DAFCA8();
  v9[13] = 2;
  sub_224DAFCC8();
  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_224BDD708()
{
  v1 = 0x65566D6574737973;
  if (*v0 != 1)
  {
    v1 = 0x6F4C6D6574737973;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000012;
  }
}

uint64_t sub_224BDD77C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_224BDE0A8(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_224BDD7B0(uint64_t a1)
{
  v2 = sub_224BDE3DC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_224BDD7EC(uint64_t a1)
{
  v2 = sub_224BDE3DC();

  return MEMORY[0x2821FE720](a1, v2);
}

double sub_224BDD828@<D0>(_OWORD *a1@<X8>, void *a2@<X0>)
{
  sub_224BDE1D8(a2, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a1 = v6[0];
    a1[1] = v5;
    result = *&v7;
    a1[2] = v7;
  }

  return result;
}

uint64_t sub_224BDD884(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = a1[3];
  v6 = a1[4];
  v7 = a1[5];
  v9 = *a2;
  v8 = a2[1];
  v10 = a2[3];
  v11 = a2[4];
  v12 = a2[5];
  if (v5)
  {
    if (!v10 || (a1[2] != a2[2] || v5 != v10) && (sub_224DAFD88() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v10)
  {
    return 0;
  }

  if (v4)
  {
    if (v8 && (v3 == v9 && v4 == v8 || (sub_224DAFD88() & 1) != 0))
    {
      goto LABEL_13;
    }

    return 0;
  }

  if (v8)
  {
    return 0;
  }

LABEL_13:
  if (v6 == v11 && v7 == v12)
  {
    return 1;
  }

  return sub_224DAFD88();
}

void *sub_224BDD99C(void *a1, _OWORD *a2)
{
  v3 = v2;
  *(v2 + 104) = 0u;
  *(v2 + 88) = 0u;
  *(v2 + 72) = 0u;
  *(v2 + 16) = a1;
  v4 = a2[1];
  *(v2 + 24) = *a2;
  *(v2 + 40) = v4;
  *(v2 + 56) = a2[2];
  v5 = a1;
  v6 = sub_224DAEDE8();
  v7 = [v5 objectForKey_];

  if (v7)
  {
    sub_224DAF758();
    swift_unknownObjectRelease();
  }

  else
  {
    v26 = 0u;
    v27 = 0u;
  }

  v20 = v26;
  v21 = v27;
  if (*(&v27 + 1))
  {
    if (swift_dynamicCast())
    {
      sub_224DA92F8();
      swift_allocObject();
      sub_224DA92E8();
      sub_224BDEEC0();
      sub_224DA92D8();

      sub_224A78024(v24, v25);
      v19 = v21;
      v8 = v22;
      v9 = v23;

      v10 = v3[9];
      v11 = v3[10];
      v12 = v3[11];
      v13 = v3[12];
      v14 = v3[13];
      v15 = v3[14];
      *(v3 + 9) = v20;
      *(v3 + 11) = v19;
      v3[13] = v8;
      v3[14] = v9;
      sub_224BDE484(v10, v11, v12, v13, v14, v15);
      if (v3[14])
      {
        v16 = v3[11];
      }

      else
      {
        v16 = 0;
        v17 = 0;
      }

      v3[3] = v16;
      v3[4] = v17;
    }

    else
    {
    }
  }

  else
  {

    sub_224A3311C(&v20, &qword_27D6F4760, &unk_224DB3680);
  }

  return v3;
}

uint64_t sub_224BDDBC8(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  if (qword_2813513F8 != -1)
  {
    swift_once();
  }

  v3 = sub_224DAB258();
  __swift_project_value_buffer(v3, qword_281364D00);
  v4 = sub_224DAB228();
  v5 = sub_224DAF2A8();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_224A2F000, v4, v5, "Migration completion. Saving new migration state.", v6, 2u);
    MEMORY[0x22AA5EED0](v6, -1, -1);
  }

  result = sub_224BDDCCC();
  if (a2)
  {
    return a2(result);
  }

  return result;
}

uint64_t sub_224BDDCCC()
{
  sub_224DA9328();
  swift_allocObject();
  sub_224DA9318();
  sub_224BDE430();

  v1 = sub_224DA9308();
  v3 = v2;

  v4 = *(v0 + 16);
  v5 = sub_224DA96B8();
  v6 = sub_224DAEDE8();
  [v4 setObject:v5 forKey:v6];

  return sub_224A78024(v1, v3);
}

uint64_t sub_224BDDE4C()
{

  sub_224BDE484(*(v0 + 72), *(v0 + 80), *(v0 + 88), *(v0 + 96), *(v0 + 104), *(v0 + 112));

  return swift_deallocClassInstance();
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

uint64_t sub_224BDDEFC(uint64_t result, int a2, int a3)
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
      *(result + 40) = (a2 - 1);
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

char *sub_224BDDF58(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = a1[5];
  if (!v5)
  {
    return &unk_2838284C0;
  }

  v6 = a1[3];
  v7 = a1[4];
  if (a3)
  {
    if (v6)
    {
      if (a1[2] == a2 && v6 == a3)
      {
        goto LABEL_9;
      }

      v9 = a4;
      v10 = a5;
      v11 = sub_224DAFD88();
      a4 = v9;
      a5 = v10;
      if (v11)
      {
        goto LABEL_9;
      }
    }
  }

  else if (!v6)
  {
LABEL_9:
    v12 = 0;
    v13 = 1;
    goto LABEL_13;
  }

  v13 = 0;
  v12 = &unk_283828470;
LABEL_13:
  if (v7 != a4 || v5 != a5)
  {
    v15 = sub_224DAFD88();
    v16 = &unk_283828498;
    if (v15)
    {
      v16 = v12;
    }

    if ((v13 | v15))
    {
      return v16;
    }

    else
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v12 = sub_224AD9818(0, *(v12 + 2) + 1, 1, v12);
      }

      v18 = *(v12 + 2);
      v17 = *(v12 + 3);
      if (v18 >= v17 >> 1)
      {
        v12 = sub_224AD9818((v17 > 1), v18 + 1, 1, v12);
      }

      *(v12 + 2) = v18 + 1;
      v12[v18 + 32] = 1;
    }
  }

  return v12;
}

uint64_t sub_224BDE0A8(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000012 && 0x8000000224DCA0C0 == a2 || (sub_224DAFD88() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x65566D6574737973 && a2 == 0xED00006E6F697372 || (sub_224DAFD88() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6F4C6D6574737973 && a2 == 0xEC000000656C6163)
  {

    return 2;
  }

  else
  {
    v5 = sub_224DAFD88();

    if (v5)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_224BDE1D8@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4D08, &qword_224DBA978);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v22 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_224BDE3DC();
  sub_224DAFEF8();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v26 = 0;
  v10 = sub_224DAFC28();
  v12 = v11;
  v23 = v10;
  v25 = 1;
  v13 = sub_224DAFC28();
  v15 = v14;
  v22 = v13;
  v24 = 2;
  v16 = sub_224DAFC58();
  v17 = v9;
  v19 = v18;
  (*(v6 + 8))(v17, v5);
  result = __swift_destroy_boxed_opaque_existential_1(a1);
  v21 = v22;
  *a2 = v23;
  a2[1] = v12;
  a2[2] = v21;
  a2[3] = v15;
  a2[4] = v16;
  a2[5] = v19;
  return result;
}

unint64_t sub_224BDE3DC()
{
  result = qword_28135B7C0;
  if (!qword_28135B7C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28135B7C0);
  }

  return result;
}

unint64_t sub_224BDE430()
{
  result = qword_27D6F4D18;
  if (!qword_27D6F4D18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D6F4D18);
  }

  return result;
}

void sub_224BDE484(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a6)
  {
  }
}

uint64_t sub_224BDE4D4()
{
  v0 = sub_224DA9938();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = [objc_opt_self() standardUserDefaults];
  v6 = [objc_allocWithZone(MEMORY[0x277CF0BB0]) init];
  if (v6)
  {
    v7 = v6;
    v8 = [v6 stringRepresentation];

    v9 = sub_224DAEE18();
    v11 = v10;
  }

  else
  {
    v11 = 0xE700000000000000;
    v9 = 0x6E776F6E6B6E75;
  }

  sub_224DA9928();
  v12 = sub_224DA9918();
  v14 = v13;
  (*(v1 + 8))(v4, v0);
  v17 = 0uLL;
  v18 = v9;
  v19 = v11;
  v20 = v12;
  v21 = v14;
  type metadata accessor for MigrationService();
  v15 = swift_allocObject();
  sub_224BDD99C(v5, &v17);
  return v15;
}

void sub_224BDE670(void (*a1)(void), uint64_t a2, uint64_t a3, void *a4)
{
  v71 = a4;
  v74 = a2;
  v75 = a1;
  v5 = type metadata accessor for FileReaperScenario(0);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v72 = &v65 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v73 = a3;
  v9 = *(a3 + 40);
  v8 = (a3 + 40);
  v10 = *(v8 + 1);
  v11 = *(v8 + 2);
  v12 = *(v8 + 3);
  v13 = v8[3];
  v85[0] = v8[2];
  v85[1] = v13;
  v85[2] = v8[4];

  sub_224A3796C(v85, &v81, &qword_27D6F4D20, qword_224DBA988);
  v14 = sub_224BDDF58(v85, v9, v10, v11, v12);
  sub_224A3311C(v85, &qword_27D6F4D20, qword_224DBA988);

  if (v14)
  {
    v15 = *(v14 + 2);
    if (v15)
    {
      if (qword_2813513F8 != -1)
      {
        swift_once();
      }

      v16 = sub_224DAB258();
      __swift_project_value_buffer(v16, qword_281364D00);
      v17 = v73;

      v18 = sub_224DAB228();
      v19 = sub_224DAF2A8();

      v20 = os_log_type_enabled(v18, v19);
      v70 = v14;
      if (v20)
      {
        v67 = v19;
        v68 = v18;
        v65 = v8 - 1;
        v21 = swift_slowAlloc();
        v66 = swift_slowAlloc();
        v76[0] = v66;
        *&v69 = v21;
        *v21 = 136446722;
        v22 = *(v17 + 112);
        if (v22)
        {
          v23 = *(v17 + 72);
          v24 = *(v17 + 96);
          v82 = *(v17 + 80);
          v83 = v24;
          v81 = v23;
          v84 = v22;

          v25 = sub_224BDD428();
          v27 = v26;
        }

        else
        {
          v27 = 0xE300000000000000;
          v25 = 7104878;
        }

        v32 = sub_224A33F74(v25, v27, v76);

        v33 = v69;
        *(v69 + 4) = v32;
        *(v33 + 12) = 2082;
        v34 = v65[1];
        v78 = *v65;
        v79 = v34;
        v80 = v65[2];
        v35 = *v8;
        v86 = v78;
        v87 = v35;
        v88[0] = v8[1];
        sub_224A3796C(&v86, v77, &qword_27D6F4D30, &qword_224DBA9F0);
        sub_224A3796C(&v87, v77, &qword_27D6F4D30, &qword_224DBA9F0);
        sub_224BDEE64(v88, v77);
        v36 = sub_224BDD428();
        v38 = v37;
        sub_224A3311C(&v86, &qword_27D6F4D30, &qword_224DBA9F0);
        sub_224A3311C(&v87, &qword_27D6F4D30, &qword_224DBA9F0);
        sub_224BCA6B4(v88);
        v39 = sub_224A33F74(v36, v38, v76);

        *(v33 + 14) = v39;
        *(v33 + 22) = 2080;
        v77[0] = MEMORY[0x277D84F90];
        sub_224A3DFD8(0, v15, 0);
        v40 = v77[0];
        v41 = v70 + 32;
        v42 = *(v77[0] + 16);
        v43 = 16 * v42;
        v44 = 0x656C61636F6CLL;
        do
        {
          if (*v41)
          {
            v45 = v44;
          }

          else
          {
            v45 = 0x6F6973726556736FLL;
          }

          if (*v41)
          {
            v46 = 0xE600000000000000;
          }

          else
          {
            v46 = 0xE90000000000006ELL;
          }

          v77[0] = v40;
          v47 = *(v40 + 24);
          v48 = v42 + 1;
          if (v42 >= v47 >> 1)
          {
            v50 = v44;
            sub_224A3DFD8((v47 > 1), v42 + 1, 1);
            v44 = v50;
            v40 = v77[0];
          }

          *(v40 + 16) = v48;
          v49 = v40 + v43;
          *(v49 + 32) = v45;
          *(v49 + 40) = v46;
          v43 += 16;
          ++v41;
          v42 = v48;
          --v15;
        }

        while (v15);
        v77[0] = v40;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4710, &unk_224DB65E0);
        sub_224A6B84C();
        v51 = sub_224DAEDA8();
        v53 = v52;

        v54 = sub_224A33F74(v51, v53, v76);

        v55 = v69;
        *(v69 + 24) = v54;
        v56 = v68;
        _os_log_impl(&dword_224A2F000, v68, v67, "Migration required from state: %{public}s to state: %{public}s for reason(s): [%s].  Migrating...", v55, 0x20u);
        v57 = v66;
        swift_arrayDestroy();
        MEMORY[0x22AA5EED0](v57, -1, -1);
        MEMORY[0x22AA5EED0](v55, -1, -1);

        v17 = v73;
      }

      else
      {
      }

      v58 = v74;
      v59 = v75;
      sub_224A364AC(v75, v74);
      BSDispatchQueueAssertMain();
      v60 = v71;
      sub_224A3317C((v71 + 59), v77);
      type metadata accessor for TimelineFilenameMigrationService();
      swift_initStackObject();
      sub_224BC4EEC(v77);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4D28, &unk_224DBA9E0);
      inited = swift_initStackObject();
      inited[1] = xmmword_224DB8BC0;
      inited[2] = *(v60[21] + 16);
      v69 = *(v60[22] + 16);
      inited[3] = v69;
      v73 = *(v60[23] + 24);
      inited[4] = v73;
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      sub_224BC5468(inited, v62);
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4B98, &unk_224DB9F70);
      swift_arrayDestroy();
      __swift_project_boxed_opaque_existential_1(v60 + 11, v60[14]);
      v63 = type metadata accessor for FileReaperProtectionConfiguration(0);
      v64 = v72;
      (*(*(v63 - 8) + 56))(v72, 1, 4, v63);
      sub_224CCD218(v64, 0, sub_224C3DF2C, 0);
      sub_224B7A89C(v64);
      sub_224BDDBC8(v17, v59);

      sub_224A3D418(v59, v58);

      return;
    }
  }

  if (qword_2813513F8 != -1)
  {
    swift_once();
  }

  v28 = sub_224DAB258();
  __swift_project_value_buffer(v28, qword_281364D00);
  v29 = sub_224DAB228();
  v30 = sub_224DAF2A8();
  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    *v31 = 0;
    _os_log_impl(&dword_224A2F000, v29, v30, "No migration required.", v31, 2u);
    MEMORY[0x22AA5EED0](v31, -1, -1);
  }

  if (v75)
  {
    v75();
  }
}

unint64_t sub_224BDEEC0()
{
  result = qword_28135B7A8;
  if (!qword_28135B7A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28135B7A8);
  }

  return result;
}

unint64_t sub_224BDEF38()
{
  result = qword_27D6F4D38;
  if (!qword_27D6F4D38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D6F4D38);
  }

  return result;
}

unint64_t sub_224BDEF90()
{
  result = qword_27D6F4D40;
  if (!qword_27D6F4D40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D6F4D40);
  }

  return result;
}

unint64_t sub_224BDEFE8()
{
  result = qword_28135B7B0;
  if (!qword_28135B7B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28135B7B0);
  }

  return result;
}

unint64_t sub_224BDF040()
{
  result = qword_28135B7B8;
  if (!qword_28135B7B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28135B7B8);
  }

  return result;
}

uint64_t sub_224BDF0D4@<X0>(unsigned int *a1@<X2>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = sub_224DAA5C8();
  v5 = *(*(v4 - 8) + 104);

  return v5(a2, v3, v4);
}

uint64_t sub_224BDF168(uint64_t a1)
{
  v24 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v2 = sub_224DAF838();
    result = MEMORY[0x277D84F90];
    if (!v2)
    {
      return result;
    }

    v29 = MEMORY[0x277D84F90];
    sub_224DAF9E8();
    result = sub_224DAF7D8();
    v26 = result;
    v27 = v4;
    v28 = 1;
    if ((v2 & 0x8000000000000000) == 0)
    {
      goto LABEL_7;
    }

    __break(1u);
  }

  v2 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (!v2)
  {
    return result;
  }

  v29 = MEMORY[0x277D84F90];
  sub_224DAF9E8();
  result = sub_224DAF798();
  v5 = *(a1 + 36);
  v26 = result;
  v27 = v5;
  v28 = 0;
LABEL_7:
  v6 = 0;
  while (v6 < v2)
  {
    if (__OFADD__(v6++, 1))
    {
      goto LABEL_31;
    }

    v10 = v26;
    v9 = v27;
    v11 = v28;
    sub_224CB9AD0(v26, v27, v28, a1);
    v13 = v12;
    BSDispatchQueueAssert();
    v14 = [*&v13[OBJC_IVAR____TtC10ChronoCoreP33_2559684BF6D015C60DA4DF344EC1B12920ChronoServicesClient__queue_connection] remoteProcess];

    sub_224DAF9B8();
    sub_224DAF9F8();
    sub_224DAFA08();
    result = sub_224DAF9C8();
    if (v24)
    {
      if (!v11)
      {
        goto LABEL_35;
      }

      if (sub_224DAF7F8())
      {
        swift_isUniquelyReferenced_nonNull_native();
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5218, &qword_224DBAF40);
      v7 = sub_224DAF1E8();
      sub_224DAF8A8();
      result = v7(v25, 0);
      if (v6 == v2)
      {
LABEL_28:
        sub_224A3E204(v26, v27, v28);
        return v29;
      }
    }

    else
    {
      if (v11)
      {
        goto LABEL_36;
      }

      if ((v10 & 0x8000000000000000) != 0)
      {
        goto LABEL_32;
      }

      v15 = 1 << *(a1 + 32);
      if (v10 >= v15)
      {
        goto LABEL_32;
      }

      v16 = v10 >> 6;
      v17 = *(a1 + 56 + 8 * (v10 >> 6));
      if (((v17 >> v10) & 1) == 0)
      {
        goto LABEL_33;
      }

      if (*(a1 + 36) != v9)
      {
        goto LABEL_34;
      }

      v18 = v17 & (-2 << (v10 & 0x3F));
      if (v18)
      {
        v15 = __clz(__rbit64(v18)) | v10 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v19 = v16 << 6;
        v20 = v16 + 1;
        v21 = (a1 + 64 + 8 * v16);
        while (v20 < (v15 + 63) >> 6)
        {
          v23 = *v21++;
          v22 = v23;
          v19 += 64;
          ++v20;
          if (v23)
          {
            result = sub_224A3E204(v10, v9, 0);
            v15 = __clz(__rbit64(v22)) + v19;
            goto LABEL_27;
          }
        }

        result = sub_224A3E204(v10, v9, 0);
      }

LABEL_27:
      v26 = v15;
      v27 = v9;
      v28 = 0;
      if (v6 == v2)
      {
        goto LABEL_28;
      }
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
  return result;
}

uint64_t sub_224BDF49C(uint64_t a1)
{
  v24 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v2 = sub_224DAF838();
    result = MEMORY[0x277D84F90];
    if (!v2)
    {
      return result;
    }

    v29 = MEMORY[0x277D84F90];
    sub_224DAF9E8();
    result = sub_224DAF7D8();
    v26 = result;
    v27 = v4;
    v28 = 1;
    if ((v2 & 0x8000000000000000) == 0)
    {
      goto LABEL_7;
    }

    __break(1u);
  }

  v2 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (!v2)
  {
    return result;
  }

  v29 = MEMORY[0x277D84F90];
  sub_224DAF9E8();
  result = sub_224DAF798();
  v5 = *(a1 + 36);
  v26 = result;
  v27 = v5;
  v28 = 0;
LABEL_7:
  v6 = 0;
  while (v6 < v2)
  {
    if (__OFADD__(v6++, 1))
    {
      goto LABEL_31;
    }

    v10 = v26;
    v9 = v27;
    v11 = v28;
    sub_224CB9AE8(v26, v27, v28, a1);
    v13 = v12;
    v14 = [v12 identity];

    sub_224DAF9B8();
    sub_224DAF9F8();
    sub_224DAFA08();
    result = sub_224DAF9C8();
    if (v24)
    {
      if (!v11)
      {
        goto LABEL_35;
      }

      if (sub_224DAF7F8())
      {
        swift_isUniquelyReferenced_nonNull_native();
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5220, qword_224DBAF48);
      v7 = sub_224DAF1E8();
      sub_224DAF8A8();
      result = v7(v25, 0);
      if (v6 == v2)
      {
LABEL_28:
        sub_224A3E204(v26, v27, v28);
        return v29;
      }
    }

    else
    {
      if (v11)
      {
        goto LABEL_36;
      }

      if ((v10 & 0x8000000000000000) != 0)
      {
        goto LABEL_32;
      }

      v15 = 1 << *(a1 + 32);
      if (v10 >= v15)
      {
        goto LABEL_32;
      }

      v16 = v10 >> 6;
      v17 = *(a1 + 56 + 8 * (v10 >> 6));
      if (((v17 >> v10) & 1) == 0)
      {
        goto LABEL_33;
      }

      if (*(a1 + 36) != v9)
      {
        goto LABEL_34;
      }

      v18 = v17 & (-2 << (v10 & 0x3F));
      if (v18)
      {
        v15 = __clz(__rbit64(v18)) | v10 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v19 = v16 << 6;
        v20 = v16 + 1;
        v21 = (a1 + 64 + 8 * v16);
        while (v20 < (v15 + 63) >> 6)
        {
          v23 = *v21++;
          v22 = v23;
          v19 += 64;
          ++v20;
          if (v23)
          {
            result = sub_224A3E204(v10, v9, 0);
            v15 = __clz(__rbit64(v22)) + v19;
            goto LABEL_27;
          }
        }

        result = sub_224A3E204(v10, v9, 0);
      }

LABEL_27:
      v26 = v15;
      v27 = v9;
      v28 = 0;
      if (v6 == v2)
      {
        goto LABEL_28;
      }
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
  return result;
}

uint64_t sub_224BDF7B4(unsigned __int8 a1)
{
  sub_224DAFE68();
  sub_224DAEE78();

  return sub_224DAFEA8();
}

uint64_t sub_224BDF8D4(unsigned __int8 a1)
{
  sub_224DAFE68();
  sub_224DAEE78();

  return sub_224DAFEA8();
}

uint64_t sub_224BDF9F0(uint64_t a1, unsigned __int8 a2)
{
  sub_224DAFE68();
  sub_224DAEE78();

  return sub_224DAFEA8();
}

uint64_t sub_224BDFB08(uint64_t a1, unsigned __int8 a2)
{
  sub_224DAFE68();
  sub_224DAEE78();

  return sub_224DAFEA8();
}

void sub_224BDFC24()
{
  v0 = sub_224CFAFFC();
  v1 = v0;
  v9 = MEMORY[0x277D84F90];
  if (v0 >> 62)
  {
LABEL_18:
    v2 = sub_224DAF838();
    if (v2)
    {
      goto LABEL_3;
    }

LABEL_19:

    v9 = sub_224BF587C(v8);
    sub_224BF4A3C(&v9);

    return;
  }

  v2 = *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v2)
  {
    goto LABEL_19;
  }

LABEL_3:
  v3 = 0;
  while (1)
  {
    if ((v1 & 0xC000000000000001) != 0)
    {
      v4 = MEMORY[0x22AA5DCC0](v3, v1);
    }

    else
    {
      if (v3 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_17;
      }

      v4 = *(v1 + 8 * v3 + 32);
    }

    v5 = v4;
    v6 = (v3 + 1);
    if (__OFADD__(v3, 1))
    {
      __break(1u);
LABEL_17:
      __break(1u);
      goto LABEL_18;
    }

    v7 = [v4 pairingState];
    if ((v7 - 1) >= 3)
    {
      break;
    }

    sub_224DAF9B8();
    sub_224DAF9F8();
    sub_224DAFA08();
    sub_224DAF9C8();
LABEL_5:
    ++v3;
    if (v6 == v2)
    {
      goto LABEL_19;
    }
  }

  if (!v7 || v7 == 4)
  {

    goto LABEL_5;
  }

  sub_224DAFB58();
  __break(1u);

  __break(1u);
}

id sub_224BDFE0C(void *a1, uint64_t a2)
{
  v4 = sub_224DAEDE8();
  [a1 setDomain_];

  v5 = [objc_opt_self() identifier];
  if (!v5)
  {
    sub_224DAEE18();
    v5 = sub_224DAEDE8();
  }

  [a1 setService_];

  return [a1 setDelegate_];
}

id sub_224BDFEE8()
{
  v1 = *&v0[OBJC_IVAR____TtC10ChronoCore20ChronoServicesServer_connectionListener];
  if (v1)
  {
    [v1 invalidate];
  }

  v3.receiver = v0;
  v3.super_class = type metadata accessor for ChronoServicesServer();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

void sub_224BE0180()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F51A0, &qword_224DBAEC8);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v121 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F51A8, &unk_224DBAED0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v9);
  v11 = &v121 - v10;
  v139 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F51B0, &unk_224DB4030);
  v138 = *(v139 - 8);
  MEMORY[0x28223BE20](v139, v12);
  v137 = &v121 - v13;
  v142 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F51B8, &qword_224DBAEE0);
  v141 = *(v142 - 8);
  MEMORY[0x28223BE20](v142, v14);
  v140 = &v121 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F51C0, &qword_224DBAEE8);
  v144 = *(v16 - 8);
  MEMORY[0x28223BE20](v16, v17);
  v143 = &v121 - v18;
  v133 = sub_224DAA118();
  v132 = *(v133 - 8);
  MEMORY[0x28223BE20](v133, v19);
  v131 = &v121 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v136 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F51C8, &qword_224DBAEF0);
  v135 = *(v136 - 8);
  MEMORY[0x28223BE20](v136, v21);
  v134 = &v121 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5090, &qword_224DB5C30);
  MEMORY[0x28223BE20](v23 - 8, v24);
  v26 = (&v121 - v25);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F51D0, &qword_224DBAEF8);
  v29 = MEMORY[0x28223BE20](v27, v28);
  v32 = *&v1[OBJC_IVAR____TtC10ChronoCore20ChronoServicesServer_connectionListener];
  if (v32)
  {
    v127 = &v121 - v30;
    v128 = v31;
    v129 = v29;
    v122 = v8;
    v123 = v7;
    v124 = v6;
    v126 = v2;
    __swift_project_boxed_opaque_existential_1(&v1[OBJC_IVAR____TtC10ChronoCore20ChronoServicesServer_keybagStateProvider], *&v1[OBJC_IVAR____TtC10ChronoCore20ChronoServicesServer_keybagStateProvider + 24]);
    v145 = v32;
    v157 = sub_224DAA168();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F4730, &unk_224DBAF00);
    sub_224A33088(&qword_281351010, &unk_27D6F4730, &unk_224DBAF00, MEMORY[0x277CBCD90]);
    sub_224DAB488();

    v33 = OBJC_IVAR____TtC10ChronoCore20ChronoServicesServer_subscriptions;
    swift_beginAccess();
    sub_224DAB308();
    swift_endAccess();

    if (qword_2813514B8 != -1)
    {
      swift_once();
    }

    v152 = v33;
    v34 = sub_224DAB258();
    __swift_project_value_buffer(v34, qword_281364E50);
    v35 = sub_224DAB228();
    v36 = sub_224DAF2A8();
    v37 = os_log_type_enabled(v35, v36);
    v125 = v3;
    v121 = v11;
    v130 = v16;
    if (v37)
    {
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v157 = v39;
      *v38 = 136446210;
      v40 = [objc_opt_self() identifier];
      v41 = sub_224DAEE18();
      v43 = v42;

      v44 = sub_224A33F74(v41, v43, &v157);

      *(v38 + 4) = v44;
      _os_log_impl(&dword_224A2F000, v35, v36, "%{public}s begin listening for connections", v38, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v39);
      MEMORY[0x22AA5EED0](v39, -1, -1);
      MEMORY[0x22AA5EED0](v38, -1, -1);
    }

    [v145 activate];
    sub_224A3317C(&v1[OBJC_IVAR____TtC10ChronoCore20ChronoServicesServer_descriptorService], &v157);
    __swift_project_boxed_opaque_existential_1(&v157, v158);
    v156 = sub_224DACA58();
    v146 = OBJC_IVAR____TtC10ChronoCore20ChronoServicesServer_queue;
    v155 = *&v1[OBJC_IVAR____TtC10ChronoCore20ChronoServicesServer_queue];
    v45 = v155;
    v46 = sub_224DAF358();
    v47 = (*(v46 - 8) + 56);
    v147 = *v47;
    v148 = v46;
    v150 = v47;
    v147(v26, 1, 1);
    v48 = v45;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F51D8, &unk_224DBE890);
    v49 = sub_224A3B79C(0, &qword_281350A70, 0x277D85C78);
    sub_224A33088(&unk_281351000, &qword_27D6F51D8, &unk_224DBE890, MEMORY[0x277CBCD90]);
    v50 = sub_224A3B758(&qword_281350A80, &qword_281350A70, 0x277D85C78, MEMORY[0x277D85228]);
    v51 = v127;
    v149 = v50;
    sub_224DAB448();
    sub_224A3311C(v26, &qword_27D6F5090, &qword_224DB5C30);

    __swift_destroy_boxed_opaque_existential_1(&v157);
    v52 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v53 = swift_allocObject();
    *(v53 + 16) = v52;
    *(v53 + 24) = v1;
    sub_224A33088(&qword_281351208, &qword_27D6F51D0, &qword_224DBAEF8, MEMORY[0x277CBCD60]);
    v54 = v1;
    v55 = v129;
    sub_224DAB488();

    (*(v128 + 8))(v51, v55);
    swift_beginAccess();
    sub_224DAB308();
    swift_endAccess();

    sub_224A3796C(&v54[OBJC_IVAR____TtC10ChronoCore20ChronoServicesServer_iconStore], &v157, &unk_27D6F51E0, &qword_224DBAF10);
    v151 = v49;
    if (v158)
    {
      __swift_project_boxed_opaque_existential_1(&v157, v158);
      v56 = v132;
      v57 = v131;
      v58 = v133;
      (*(v132 + 104))(v131, *MEMORY[0x277CFA008], v133);
      v59 = sub_224DA9F38();
      (*(v56 + 8))(v57, v58);
      v156 = v59;
      v60 = v146;
      v155 = *&v1[v146];
      v61 = v155;
      (v147)(v26, 1, 1, v148);
      v62 = v61;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5208, &unk_224DBAF30);
      sub_224A33088(&qword_281351050, &qword_27D6F5208, &unk_224DBAF30, MEMORY[0x277CBCD90]);
      v63 = v134;
      sub_224DAB448();
      sub_224A3311C(v26, &qword_27D6F5090, &qword_224DB5C30);

      __swift_destroy_boxed_opaque_existential_1(&v157);
      v64 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v65 = swift_allocObject();
      *(v65 + 16) = v64;
      *(v65 + 24) = v54;
      sub_224A33088(&qword_281351238, &qword_27D6F51C8, &qword_224DBAEF0, MEMORY[0x277CBCD60]);
      v66 = v54;
      v67 = v136;
      sub_224DAB488();

      (*(v135 + 8))(v63, v67);
      swift_beginAccess();
      sub_224DAB308();
      swift_endAccess();
    }

    else
    {
      sub_224A3311C(&v157, &unk_27D6F51E0, &qword_224DBAF10);
      v60 = v146;
    }

    v77 = v147;
    __swift_project_boxed_opaque_existential_1(&v54[OBJC_IVAR____TtC10ChronoCore20ChronoServicesServer_timelineService], *&v54[OBJC_IVAR____TtC10ChronoCore20ChronoServicesServer_timelineService + 24]);
    v157 = sub_224DAD7A8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F50B0, &qword_224DBAE30);
    sub_224A33088(&unk_2813510D0, &unk_27D6F50B0, &qword_224DBAE30, MEMORY[0x277CBCD90]);
    sub_224A33088(&qword_281350CC8, &qword_27D6F50D8, &unk_224DBD6E0, MEMORY[0x277CF9D20]);
    v78 = v140;
    sub_224DAB478();

    v157 = *&v1[v60];
    v79 = v157;
    v77(v26, 1, 1, v148);
    sub_224A33088(&qword_2813513B0, &qword_27D6F51B8, &qword_224DBAEE0, MEMORY[0x277CBCBE0]);
    v80 = v79;
    v81 = v143;
    v82 = v142;
    sub_224DAB448();
    sub_224A3311C(v26, &qword_27D6F5090, &qword_224DB5C30);

    (*(v141 + 8))(v78, v82);
    swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_224A33088(&qword_2813511D8, &qword_27D6F51C0, &qword_224DBAEE8, MEMORY[0x277CBCD60]);
    v83 = v130;
    sub_224DAB488();

    v144[1](v81, v83);
    swift_beginAccess();
    sub_224DAB308();
    swift_endAccess();

    v84 = OBJC_IVAR____TtC10ChronoCore20ChronoServicesServer_deviceService;
    swift_beginAccess();
    sub_224A3796C(&v54[v84], &v157, &unk_27D6F5050, &unk_224DBAE08);
    v85 = v158;
    v144 = v26;
    if (v158)
    {
      v86 = __swift_project_boxed_opaque_existential_1(&v157, v158);
      v143 = &v121;
      v87 = *(v85 - 8);
      MEMORY[0x28223BE20](v86, v86);
      v89 = &v121 - ((v88 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v87 + 16))(v89);
      sub_224A3311C(&v157, &unk_27D6F5050, &unk_224DBAE08);
      v90 = sub_224CFA5B8();
      (*(v87 + 8))(v89, v85);
      v154 = *&v1[v60];
      v91 = v154;
      v155 = v90;
      v77(v26, 1, 1, v148);
      v92 = v91;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5200, &qword_224DBA810);
      sub_224A33088(&qword_281350FF0, &qword_27D6F5200, &qword_224DBA810, MEMORY[0x277CBCD90]);
      v93 = v137;
      sub_224DAB448();
      sub_224A3311C(v26, &qword_27D6F5090, &qword_224DB5C30);

      v94 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v95 = swift_allocObject();
      *(v95 + 16) = sub_224BFDD28;
      *(v95 + 24) = v94;
      sub_224A33088(&unk_2813511F0, &qword_27D6F51B0, &unk_224DB4030, MEMORY[0x277CBCD60]);
      v96 = v139;
      sub_224DAB488();

      (*(v138 + 8))(v93, v96);
      swift_beginAccess();
      sub_224DAB308();
      swift_endAccess();
    }

    else
    {
      sub_224A3311C(&v157, &unk_27D6F5050, &unk_224DBAE08);
    }

    v97 = v148;
    sub_224A3796C(&v54[OBJC_IVAR____TtC10ChronoCore20ChronoServicesServer_widgetRelevanceService], &v157, &unk_27D6F4FB0, &unk_224DBADC8);
    if (v158)
    {
      __swift_project_boxed_opaque_existential_1(&v157, v158);
      v98 = off_28382B340;
      type metadata accessor for WidgetRelevanceService(0);
      v99 = v98();
      v100 = v147;
      v154 = *&v1[v146];
      v101 = v154;
      v155 = v99;
      v102 = v144;
      v103 = v97;
      (v147)(v144, 1, 1, v97);
      v104 = v101;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F51F8, &unk_224DBAF20);
      sub_224A33088(&qword_281351180, &qword_27D6F51F8, &unk_224DBAF20, MEMORY[0x277CBCD90]);
      v105 = v121;
      sub_224DAB448();
      sub_224A3311C(v102, &qword_27D6F5090, &qword_224DB5C30);

      __swift_destroy_boxed_opaque_existential_1(&v157);
      swift_allocObject();
      swift_unknownObjectWeakInit();
      sub_224A33088(&qword_2813512C8, &qword_27D6F51A8, &unk_224DBAED0, MEMORY[0x277CBCD60]);
      v106 = v123;
      sub_224DAB488();

      (*(v122 + 8))(v105, v106);
      swift_beginAccess();
      sub_224DAB308();
      swift_endAccess();
    }

    else
    {
      v103 = v97;
      sub_224A3311C(&v157, &unk_27D6F4FB0, &unk_224DBADC8);
      v100 = v147;
    }

    v107 = OBJC_IVAR____TtC10ChronoCore20ChronoServicesServer_activityService;
    swift_beginAccess();
    sub_224A3796C(&v54[v107], &v157, &unk_27D6F4FD0, &qword_224DB75F0);
    v108 = v158;
    if (v158)
    {
      v109 = __swift_project_boxed_opaque_existential_1(&v157, v158);
      v110 = *(v108 - 8);
      MEMORY[0x28223BE20](v109, v109);
      v112 = &v121 - ((v111 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v110 + 16))(v112);
      sub_224A3311C(&v157, &unk_27D6F4FD0, &qword_224DB75F0);
      v113 = sub_224BCE350();
      (*(v110 + 8))(v112, v108);
      v153 = *&v1[v146];
      v114 = v153;
      v154 = v113;
      v115 = v103;
      v116 = v144;
      v100(v144, 1, 1, v115);
      v117 = v114;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F51F0, &qword_224DBAF18);
      sub_224A33088(&qword_281351188, &qword_27D6F51F0, &qword_224DBAF18, MEMORY[0x277CBCD90]);
      v118 = v124;
      sub_224DAB448();
      sub_224A3311C(v116, &qword_27D6F5090, &qword_224DB5C30);

      swift_allocObject();
      swift_unknownObjectWeakInit();
      sub_224A33088(&qword_2813512D0, &qword_27D6F51A0, &qword_224DBAEC8, MEMORY[0x277CBCD60]);
      v119 = v126;
      sub_224DAB488();

      (*(v125 + 8))(v118, v119);
      swift_beginAccess();
      sub_224DAB308();
      swift_endAccess();
    }

    else
    {

      sub_224A3311C(&v157, &unk_27D6F4FD0, &qword_224DB75F0);
    }
  }

  else
  {
    if (qword_2813514B8 != -1)
    {
      swift_once();
    }

    v68 = sub_224DAB258();
    __swift_project_value_buffer(v68, qword_281364E50);
    v152 = sub_224DAB228();
    v69 = sub_224DAF298();
    if (os_log_type_enabled(v152, v69))
    {
      v70 = swift_slowAlloc();
      v71 = swift_slowAlloc();
      v157 = v71;
      *v70 = 136446210;
      v72 = [objc_opt_self() identifier];
      v73 = sub_224DAEE18();
      v75 = v74;

      v76 = sub_224A33F74(v73, v75, &v157);

      *(v70 + 4) = v76;
      _os_log_impl(&dword_224A2F000, v152, v69, "%{public}s unable to start server; listener is nil", v70, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v71);
      MEMORY[0x22AA5EED0](v71, -1, -1);
      MEMORY[0x22AA5EED0](v70, -1, -1);
    }

    else
    {
      v120 = v152;
    }
  }
}

void sub_224BE1AA4(_BYTE *a1)
{
  if (*a1 == 1)
  {
    if (qword_2813514B8 != -1)
    {
      swift_once();
    }

    v1 = sub_224DAB258();
    __swift_project_value_buffer(v1, qword_281364E50);
    oslog = sub_224DAB228();
    v2 = sub_224DAF2A8();
    if (os_log_type_enabled(oslog, v2))
    {
      v3 = swift_slowAlloc();
      v4 = swift_slowAlloc();
      v11 = v4;
      *v3 = 136446210;
      v5 = [objc_opt_self() identifier];
      v6 = sub_224DAEE18();
      v8 = v7;

      v9 = sub_224A33F74(v6, v8, &v11);

      *(v3 + 4) = v9;
      _os_log_impl(&dword_224A2F000, oslog, v2, "%{public}s notified of first unlock; adjusting responses", v3, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v4);
      MEMORY[0x22AA5EED0](v4, -1, -1);
      MEMORY[0x22AA5EED0](v3, -1, -1);
    }

    else
    {
    }
  }
}

void sub_224BE1C50(uint64_t a1, int64_t isUniquelyReferenced_nonNull_native, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v133 = a4;
  v8 = 0;
  v137[5] = *MEMORY[0x277D85DE8];
  BSDispatchQueueAssert();
  v130 = isUniquelyReferenced_nonNull_native & 0xC000000000000001;
  v131 = a3;
  v132 = a1;
  v134 = 0;
  if ((isUniquelyReferenced_nonNull_native & 0xC000000000000001) == 0)
  {
    v32 = *(isUniquelyReferenced_nonNull_native + 32);
    v33 = v32 & 0x3F;
    v9 = ((1 << v32) + 63) >> 6;
    v34 = 8 * v9;

    if (v33 <= 0xD)
    {
      goto LABEL_25;
    }

    goto LABEL_118;
  }

  v9 = MEMORY[0x277D84FA0];
  v137[0] = MEMORY[0x277D84FA0];

  sub_224DAF7E8();
  v10 = sub_224DAF878();
  if (v10)
  {
    v11 = v10;
    type metadata accessor for ChronoServicesClient();
    v12 = v11;
    v13 = &qword_27D6F3F98[13];
    a1 = -1;
    do
    {
      v135 = v12;
      swift_dynamicCast();
      BSDispatchQueueAssert();
      v14 = OBJC_IVAR____TtC10ChronoCoreP33_2559684BF6D015C60DA4DF344EC1B12920ChronoServicesClient__queue_serviceAssertionIDs;
      swift_beginAccess();
      v15 = *(v136 + v14);
      if (*(v15 + 16))
      {

        v16 = sub_224A5C3D0(1);
        if (v17)
        {
          v18 = *(*(v15 + 56) + 8 * v16);

          v19 = *(v18 + 16);

          if (v19)
          {
            v20 = v136;
            v21 = *(v9 + 16);
            if (*(v9 + 24) <= v21)
            {
              sub_224AE02E0(v21 + 1);
            }

            v9 = v137[0];
            v22 = sub_224DAF698();
            v23 = v137[0] + 56;
            v24 = -1 << *(v137[0] + 32);
            v25 = v22 & ~v24;
            v26 = v25 >> 6;
            if (((-1 << v25) & ~*(v137[0] + 56 + 8 * (v25 >> 6))) != 0)
            {
              v27 = __clz(__rbit64((-1 << v25) & ~*(v137[0] + 56 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
            }

            else
            {
              v28 = 0;
              v29 = (63 - v24) >> 6;
              do
              {
                if (++v26 == v29 && (v28 & 1) != 0)
                {
                  goto LABEL_111;
                }

                v30 = v26 == v29;
                if (v26 == v29)
                {
                  v26 = 0;
                }

                v28 |= v30;
                v31 = *(v23 + 8 * v26);
              }

              while (v31 == -1);
              v27 = __clz(__rbit64(~v31)) + (v26 << 6);
            }

            *(v23 + ((v27 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v27;
            *(*(v9 + 48) + 8 * v27) = v20;
            ++*(v9 + 16);
            goto LABEL_6;
          }
        }

        else
        {
        }
      }

LABEL_6:
      v12 = sub_224DAF878();
    }

    while (v12);
  }

LABEL_44:
  a1 = v132;
  v13 = (v9 & 0xC000000000000001);
  if ((v9 & 0xC000000000000001) == 0)
  {
    goto LABEL_120;
  }

LABEL_45:
  if (!sub_224DAF838())
  {
    goto LABEL_121;
  }

LABEL_46:
  if (qword_2813514B8 != -1)
  {
    goto LABEL_116;
  }

LABEL_47:
  v56 = sub_224DAB258();
  __swift_project_value_buffer(v56, qword_281364E50);

  swift_bridgeObjectRetain_n();

  v57 = sub_224DAB228();
  v58 = sub_224DAF2A8();

  if (os_log_type_enabled(v57, v58))
  {
    v59 = swift_slowAlloc();
    v60 = swift_slowAlloc();
    v137[0] = v60;
    *v59 = 134350082;
    if (v13)
    {
      v61 = sub_224DAF838();
    }

    else
    {
      v61 = *(v9 + 16);
    }

    v66 = v130;
    *(v59 + 4) = v61;

    *(v59 + 12) = 2050;
    if (v66)
    {
      v67 = sub_224DAF838();
    }

    else
    {
      v67 = *(isUniquelyReferenced_nonNull_native + 16);
    }

    *(v59 + 14) = v67;

    *(v59 + 22) = 2050;
    v68 = v134;
    v69 = sub_224BDF49C(a1);
    if (v69 >> 62)
    {
      v70 = sub_224DAF838();
    }

    else
    {
      v70 = *((v69 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v59 + 24) = v70;

    a1 = 2082;
    *(v59 + 32) = 2082;
    v71 = sub_224BDF168(v9);
    v134 = v68;
    v72 = sub_224A3B79C(0, &qword_281350AF0, 0x277CF0CD0);
    v73 = MEMORY[0x22AA5D380](v71, v72);
    v75 = v74;

    v76 = sub_224A33F74(v73, v75, v137);

    *(v59 + 34) = v76;
    *(v59 + 42) = 2082;
    *(v59 + 44) = sub_224A33F74(v131, v133, v137);
    _os_log_impl(&dword_224A2F000, v57, v58, "%{public}ld of %{public}ld clients subscribed to extension data %{public}ld: {\n%{public}s\n} - reason: %{public}s", v59, 0x34u);
    swift_arrayDestroy();
    MEMORY[0x22AA5EED0](v60, -1, -1);
    MEMORY[0x22AA5EED0](v59, -1, -1);

    if (!v13)
    {
      goto LABEL_59;
    }

LABEL_51:
    sub_224DAF7E8();
    type metadata accessor for ChronoServicesClient();
    sub_224A80F90(&qword_27D6F5210, type metadata accessor for ChronoServicesClient, MEMORY[0x277D85378]);
    sub_224DAF1F8();
    v9 = v137[0];
    v62 = v137[1];
    v63 = v137[2];
    v64 = v137[3];
    v65 = v137[4];
    goto LABEL_63;
  }

  swift_bridgeObjectRelease_n();
  if (v13)
  {
    goto LABEL_51;
  }

LABEL_59:
  v64 = 0;
  v77 = -1 << *(v9 + 32);
  v62 = v9 + 56;
  v63 = ~v77;
  v78 = -v77;
  if (v78 < 64)
  {
    v79 = ~(-1 << v78);
  }

  else
  {
    v79 = -1;
  }

  v65 = v79 & *(v9 + 56);
LABEL_63:
  v128 = v63;
  isUniquelyReferenced_nonNull_native = (v63 + 64) >> 6;
  v13 = MEMORY[0x277D84F98];
  v129 = xmmword_224DB2780;
  v130 = v62;
  v131 = isUniquelyReferenced_nonNull_native;
  if ((v9 & 0x8000000000000000) == 0)
  {
    while (1)
    {
      v80 = v64;
      v81 = v65;
      v82 = v64;
      if (!v65)
      {
        break;
      }

LABEL_71:
      v83 = (v81 - 1) & v81;
      v84 = *(*(v9 + 48) + ((v82 << 9) | (8 * __clz(__rbit64(v81)))));
      if (!v84)
      {
        goto LABEL_98;
      }

LABEL_75:
      v133 = v83;
      v86 = v13[2];
      v87 = *(v84 + OBJC_IVAR____TtC10ChronoCoreP33_2559684BF6D015C60DA4DF344EC1B12920ChronoServicesClient__queue_providerOptions);
      v8 = v87;
      if (v86 && (v88 = sub_224B0BAE0(v87), (v89 & 1) != 0))
      {
        v136 = *(v13[7] + 8 * v88);

        v90 = v84;
        sub_224ADC20C(&v135, v90);

        a1 = v136;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v135 = v13;
        v91 = sub_224B0BAE0(v8);
        v93 = v13[2];
        v94 = (v92 & 1) == 0;
        v55 = __OFADD__(v93, v94);
        v95 = v93 + v94;
        if (v55)
        {
LABEL_115:
          __break(1u);
LABEL_116:
          swift_once();
          goto LABEL_47;
        }

        v34 = v92;
        if (v13[3] >= v95)
        {
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v113 = v91;
            sub_224B27BB0();
            v91 = v113;
          }
        }

        else
        {
          sub_224B13884(v95, isUniquelyReferenced_nonNull_native);
          v91 = sub_224B0BAE0(v8);
          if ((v34 & 1) != (v96 & 1))
          {
            goto LABEL_124;
          }
        }

        isUniquelyReferenced_nonNull_native = v131;
        v13 = v135;
        if (v34)
        {
          *(v135[7] + 8 * v91) = a1;
        }

        else
        {
          v135[(v91 >> 6) + 8] |= 1 << v91;
          *(v13[6] + 8 * v91) = v8;
          *(v13[7] + 8 * v91) = a1;

          v111 = v13[2];
          v55 = __OFADD__(v111, 1);
          v112 = v111 + 1;
          if (v55)
          {
            __break(1u);
LABEL_118:
            isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
            if ((isStackAllocationSafe & 1) == 0)
            {
              v124 = swift_slowAlloc();
              v9 = sub_224BF57EC(v124, v9, isUniquelyReferenced_nonNull_native, sub_224BE29F8, 0);
              v134 = v8;
              MEMORY[0x22AA5EED0](v124, -1, -1);
              v13 = (v9 & 0xC000000000000001);
              if ((v9 & 0xC000000000000001) != 0)
              {
                goto LABEL_45;
              }

LABEL_120:
              if (!*(v9 + 16))
              {
LABEL_121:

                return;
              }

              goto LABEL_46;
            }

LABEL_25:
            v126 = v9;
            v125 = &v125;
            MEMORY[0x28223BE20](isStackAllocationSafe, v36);
            v127 = &v125 - ((v34 + 15) & 0x3FFFFFFFFFFFFFF0);
            bzero(v127, v34);
            v128 = 0;
            a1 = 0;
            v37 = isUniquelyReferenced_nonNull_native + 56;
            v38 = 1 << *(isUniquelyReferenced_nonNull_native + 32);
            v39 = -1;
            if (v38 < 64)
            {
              v39 = ~(-1 << v38);
            }

            v40 = v39 & *(isUniquelyReferenced_nonNull_native + 56);
            v13 = ((v38 + 63) >> 6);
            v41 = &qword_27D6F3F98[13];
            v42 = &qword_27D6F3F98[13];
            *&v129 = isUniquelyReferenced_nonNull_native;
            while (v40)
            {
              v43 = __clz(__rbit64(v40));
              v40 &= v40 - 1;
LABEL_36:
              v9 = v43 | (a1 << 6);
              v46 = *(*(isUniquelyReferenced_nonNull_native + 48) + 8 * v9);
              BSDispatchQueueAssert();
              v47 = v42[484];
              swift_beginAccess();
              v48 = *&v46[v47];
              if (*(v48 + 16))
              {

                v49 = sub_224A5C3D0(1);
                if (v50)
                {
                  v51 = v42;
                  v52 = v41;
                  v53 = *(*(v48 + 56) + 8 * v49);

                  v54 = *(v53 + 16);

                  v41 = v52;
                  v42 = v51;
                  isUniquelyReferenced_nonNull_native = v129;

                  if (v54)
                  {
                    *&v127[(v9 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v9;
                    v55 = __OFADD__(v128++, 1);
                    if (v55)
                    {
                      __break(1u);
                    }
                  }
                }

                else
                {
                }
              }

              else
              {
              }
            }

            v44 = a1;
            while (1)
            {
              a1 = v44 + 1;
              if (__OFADD__(v44, 1))
              {
                break;
              }

              if (a1 >= v13)
              {
                v9 = sub_224B05540(v127, v126, v128, isUniquelyReferenced_nonNull_native);
                goto LABEL_44;
              }

              v45 = *(v37 + 8 * a1);
              ++v44;
              if (v45)
              {
                v43 = __clz(__rbit64(v45));
                v40 = (v45 - 1) & v45;
                goto LABEL_36;
              }
            }

LABEL_112:
            __break(1u);
LABEL_113:
            __break(1u);
LABEL_114:
            __break(1u);
            goto LABEL_115;
          }

          v13[2] = v112;
        }

        v64 = v82;
        v65 = v133;
        v62 = v130;
        if ((v9 & 0x8000000000000000) != 0)
        {
          goto LABEL_73;
        }
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5D90, &qword_224DB5FD0);
        inited = swift_initStackObject();
        *(inited + 16) = v129;
        *(inited + 32) = v84;
        v98 = v84;
        sub_224D57EF8(inited);
        v100 = v99;
        swift_setDeallocating();
        swift_arrayDestroy();
        a1 = swift_isUniquelyReferenced_nonNull_native();
        v136 = v13;
        isUniquelyReferenced_nonNull_native = sub_224B0BAE0(v8);
        v102 = v13[2];
        v103 = (v101 & 1) == 0;
        v104 = v102 + v103;
        if (__OFADD__(v102, v103))
        {
          goto LABEL_113;
        }

        v105 = v101;
        if (v13[3] >= v104)
        {
          if ((a1 & 1) == 0)
          {
            sub_224B27BB0();
          }
        }

        else
        {
          sub_224B13884(v104, a1);
          v106 = sub_224B0BAE0(v8);
          if ((v105 & 1) != (v107 & 1))
          {
            goto LABEL_124;
          }

          isUniquelyReferenced_nonNull_native = v106;
        }

        v108 = v133;
        v13 = v136;
        if (v105)
        {
          *(v136[7] + 8 * isUniquelyReferenced_nonNull_native) = v100;
        }

        else
        {
          v136[(isUniquelyReferenced_nonNull_native >> 6) + 8] |= 1 << isUniquelyReferenced_nonNull_native;
          *(v13[6] + 8 * isUniquelyReferenced_nonNull_native) = v8;
          *(v13[7] + 8 * isUniquelyReferenced_nonNull_native) = v100;

          v109 = v13[2];
          v55 = __OFADD__(v109, 1);
          v110 = v109 + 1;
          if (v55)
          {
            goto LABEL_114;
          }

          v13[2] = v110;
        }

        v64 = v82;
        v65 = v108;
        v62 = v130;
        isUniquelyReferenced_nonNull_native = v131;
        if ((v9 & 0x8000000000000000) != 0)
        {
          goto LABEL_73;
        }
      }
    }

    while (1)
    {
      v82 = v80 + 1;
      if (__OFADD__(v80, 1))
      {
        break;
      }

      if (v82 >= isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_98;
      }

      v81 = *(v62 + 8 * v82);
      ++v80;
      if (v81)
      {
        goto LABEL_71;
      }
    }

LABEL_110:
    __break(1u);
LABEL_111:
    __break(1u);
    goto LABEL_112;
  }

LABEL_73:
  v85 = sub_224DAF878();
  if (v85)
  {
    v135 = v85;
    type metadata accessor for ChronoServicesClient();
    swift_dynamicCast();
    v84 = v136;
    v82 = v64;
    v83 = v65;
    if (v136)
    {
      goto LABEL_75;
    }
  }

LABEL_98:
  sub_224A3B7E4(v9);
  a1 = (v13 + 8);
  v114 = 1 << *(v13 + 32);
  v115 = -1;
  if (v114 < 64)
  {
    v115 = ~(-1 << v114);
  }

  v116 = v115 & v13[8];
  isUniquelyReferenced_nonNull_native = (v114 + 63) >> 6;

  v117 = 0;
  if (!v116)
  {
LABEL_102:
    while (1)
    {
      v118 = v117 + 1;
      if (__OFADD__(v117, 1))
      {
        break;
      }

      if (v118 >= isUniquelyReferenced_nonNull_native)
      {

        return;
      }

      v116 = *(a1 + 8 * v118);
      ++v117;
      if (v116)
      {
        goto LABEL_105;
      }
    }

    __break(1u);
    goto LABEL_110;
  }

  while (1)
  {
    v118 = v117;
LABEL_105:
    v119 = (v118 << 9) | (8 * __clz(__rbit64(v116)));
    v120 = *(v13[7] + v119);
    v121 = *(v13[6] + v119);

    v9 = MEMORY[0x22AA5E4C0](v122);
    v123 = v134;
    sub_224BE2A2C(v132, v121, v120);
    v134 = v123;
    if (v123)
    {
      break;
    }

    v116 &= v116 - 1;

    objc_autoreleasePoolPop(v9);

    v117 = v118;
    if (!v116)
    {
      goto LABEL_102;
    }
  }

  objc_autoreleasePoolPop(v9);
  __break(1u);
LABEL_124:
  sub_224DAF608();
  sub_224DAFDD8();
  __break(1u);
}

void sub_224BE2A2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v64 = MEMORY[0x277D84FA0];
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_224DAF7E8();
    sub_224A3B79C(0, &qword_281350A40, 0x277CFA3A8);
    sub_224A3B758(&qword_281350A30, &qword_281350A40, 0x277CFA3A8, MEMORY[0x277D85378]);
    sub_224DAF1F8();
    v3 = v58;
    v4 = v59;
    v5 = v60;
    v6 = v61;
    v7 = v62;
  }

  else
  {
    v8 = -1 << *(a1 + 32);
    v4 = a1 + 56;
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

    v7 = v10 & *(a1 + 56);

    v6 = 0;
  }

  v11 = (v5 + 64) >> 6;
  if (v3 < 0)
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

        v13 = *(v4 + 8 * v14);
        ++v12;
        if (v13)
        {
          goto LABEL_12;
        }
      }

      __break(1u);
LABEL_51:
      __break(1u);
      goto LABEL_52;
    }

LABEL_12:
    v15 = (v13 - 1) & v13;
    v16 = *(*(v3 + 48) + ((v14 << 9) | (8 * __clz(__rbit64(v13)))));
    if (!v16)
    {
      break;
    }

    while (1)
    {
      sub_224A5EAA4(v63, [v16 copyFilteredToOptions_]);

      v6 = v14;
      v7 = v15;
      if ((v3 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_14:
      v17 = sub_224DAF878();
      if (v17)
      {
        *&v57[0] = v17;
        sub_224A3B79C(0, &qword_281350A40, 0x277CFA3A8);
        swift_dynamicCast();
        v16 = v63[0];
        v14 = v6;
        v15 = v7;
        if (v63[0])
        {
          continue;
        }
      }

      goto LABEL_18;
    }
  }

LABEL_18:
  sub_224A3B7E4(v3);
  v11 = v64;
  v18 = objc_allocWithZone(MEMORY[0x277CFA3C8]);
  sub_224A3B79C(0, &qword_281350A40, 0x277CFA3A8);
  sub_224A3B758(&qword_281350A30, &qword_281350A40, 0x277CFA3A8, MEMORY[0x277D85378]);
  v19 = sub_224DAF1A8();
  v7 = a2;
  v3 = [v18 initWithExtensions:v19 generatedFrom:a2];

  [v3 prepareForEncoding];
  if (qword_2813514B8 == -1)
  {
    goto LABEL_19;
  }

LABEL_52:
  swift_once();
LABEL_19:
  v20 = sub_224DAB258();
  __swift_project_value_buffer(v20, qword_281364E50);
  v21 = v3;
  v22 = v7;
  v7 = a3;

  v23 = sub_224DAB228();
  v3 = sub_224DAF2A8();

  v51 = v21;
  if (os_log_type_enabled(v23, v3))
  {
    v24 = swift_slowAlloc();
    v53 = swift_slowAlloc();
    v63[0] = v53;
    *v24 = 136446978;
    v25 = [v22 description];
    v26 = sub_224DAEE18();
    v28 = v27;

    v29 = sub_224A33F74(v26, v28, v63);

    *(v24 + 4) = v29;
    *(v24 + 12) = 2082;
    v30 = sub_224BDF168(a3);
    v31 = sub_224A3B79C(0, &qword_281350AF0, 0x277CF0CD0);
    v32 = MEMORY[0x22AA5D380](v30, v31);
    v34 = v33;

    v35 = sub_224A33F74(v32, v34, v63);

    *(v24 + 14) = v35;
    *(v24 + 22) = 2050;
    v36 = [v21 sequenceNumber];

    *(v24 + 24) = v36;
    *(v24 + 32) = 2050;
    if ((v11 & 0xC000000000000001) != 0)
    {
      v37 = sub_224DAF838();
    }

    else
    {
      v37 = *(v11 + 16);
    }

    *(v24 + 34) = v37;

    _os_log_impl(&dword_224A2F000, v23, v3, "Sending extensions for options: %{public}s to clients: %{public}s - sequence #: %{public}lu, extensionCount: %{public}ld", v24, 0x2Au);
    v3 = v53;
    swift_arrayDestroy();
    MEMORY[0x22AA5EED0](v53, -1, -1);
    MEMORY[0x22AA5EED0](v24, -1, -1);

    v7 = a3;
    if ((a3 & 0xC000000000000001) == 0)
    {
      goto LABEL_26;
    }
  }

  else
  {

    swift_bridgeObjectRelease_n();
    if ((a3 & 0xC000000000000001) == 0)
    {
LABEL_26:
      v42 = -1 << *(v7 + 32);
      v38 = (v7 + 56);
      v39 = ~v42;
      v43 = -v42;
      if (v43 < 64)
      {
        v44 = ~(-1 << v43);
      }

      else
      {
        v44 = -1;
      }

      v41 = (v44 & *(v7 + 56));

      v40 = 0;
      goto LABEL_30;
    }
  }

  swift_unknownObjectRetain();
  v3 = sub_224DAF7E8();
  type metadata accessor for ChronoServicesClient();
  sub_224A80F90(&qword_27D6F5210, type metadata accessor for ChronoServicesClient, MEMORY[0x277D85378]);
  sub_224DAF1F8();
  v7 = v63[0];
  v38 = v63[1];
  v39 = v63[2];
  v40 = v63[3];
  v41 = v63[4];
LABEL_30:
  v11 = &off_27853F000;
  while ((v7 & 0x8000000000000000) == 0)
  {
    v45 = v40;
    v46 = v41;
    v47 = v40;
    if (!v41)
    {
      do
      {
        v47 = (v45 + 1);
        if (__OFADD__(v45, 1))
        {
          goto LABEL_51;
        }

        if (v47 >= ((v39 + 64) >> 6))
        {
          goto LABEL_49;
        }

        v46 = v38[v47];
        ++v45;
      }

      while (!v46);
    }

    v3 = (v46 - 1) & v46;
    v48 = *(*(v7 + 48) + ((v47 << 9) | (8 * __clz(__rbit64(v46)))));
    if (!v48)
    {
      goto LABEL_49;
    }

LABEL_42:
    if ([*&v48[OBJC_IVAR____TtC10ChronoCoreP33_2559684BF6D015C60DA4DF344EC1B12920ChronoServicesClient__queue_connection] remoteTarget])
    {
      sub_224DAF758();
      swift_unknownObjectRelease();
    }

    else
    {
      v55 = 0u;
      v56 = 0u;
    }

    v57[0] = v55;
    v57[1] = v56;
    if (*(&v56 + 1))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5040, &unk_224DBADF8);
      if (swift_dynamicCast())
      {
        [v54 widgetExtensionsDidChange_];
        swift_unknownObjectRelease();
      }
    }

    else
    {

      sub_224A3311C(v57, &qword_27D6F4760, &unk_224DB3680);
    }

    v40 = v47;
    v41 = v3;
  }

  v49 = sub_224DAF878();
  if (v49)
  {
    *&v55 = v49;
    type metadata accessor for ChronoServicesClient();
    swift_dynamicCast();
    v48 = *&v57[0];
    v47 = v40;
    v3 = v41;
    if (*&v57[0])
    {
      goto LABEL_42;
    }
  }

LABEL_49:
  sub_224A3B7E4(v7);
}

char *sub_224BE3210(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v4 = *a1;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v6 = *&result[OBJC_IVAR____TtC10ChronoCore20ChronoServicesServer__clientsSetLock];
    v7 = *(v6 + 16);
    v8 = result;

    os_unfair_lock_lock(v7);
    v9 = OBJC_IVAR____TtC10ChronoCore20ChronoServicesServer__clientsSetLock_clients;
    swift_beginAccess();
    v10 = *&v8[v9];
    v11 = *(v6 + 16);

    os_unfair_lock_unlock(v11);

    sub_224BE1C50(v4, v10, 0xD000000000000012, 0x8000000224DCA870, a3);
  }

  return result;
}

char *sub_224BE3304(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v5 = result;
    sub_224A3317C(&result[OBJC_IVAR____TtC10ChronoCore20ChronoServicesServer_descriptorService], v13);
    __swift_project_boxed_opaque_existential_1(v13, v13[3]);
    v6 = sub_224DACA48();
    if (v6)
    {
      v7 = v6;
      __swift_destroy_boxed_opaque_existential_1(v13);
      v8 = *&v5[OBJC_IVAR____TtC10ChronoCore20ChronoServicesServer__clientsSetLock];
      v9 = *(v8 + 16);

      os_unfair_lock_lock(v9);
      v10 = OBJC_IVAR____TtC10ChronoCore20ChronoServicesServer__clientsSetLock_clients;
      swift_beginAccess();
      v11 = *&v5[v10];
      v12 = *(v8 + 16);

      os_unfair_lock_unlock(v12);

      sub_224BE1C50(v7, v11, 0x707520736E6F6369, 0xED00006465746164, a3);
    }

    else
    {

      return __swift_destroy_boxed_opaque_existential_1(v13);
    }
  }

  return result;
}

void sub_224BE345C(uint64_t a1, uint64_t a2)
{
  v98[5] = *MEMORY[0x277D85DE8];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = *(Strong + OBJC_IVAR____TtC10ChronoCore20ChronoServicesServer__clientsSetLock);
    v5 = *(v4 + 16);

    os_unfair_lock_lock(v5);
    v6 = OBJC_IVAR____TtC10ChronoCore20ChronoServicesServer__clientsSetLock_clients;
    swift_beginAccess();
    v7 = *&v3[v6];
    v8 = *(v4 + 16);

    os_unfair_lock_unlock(v8);

    v93 = v3;
    v92 = 0;
    v91 = v7 & 0xC000000000000001;
    if ((v7 & 0xC000000000000001) != 0)
    {
      v9 = MEMORY[0x277D84FA0];
      v98[0] = MEMORY[0x277D84FA0];

      sub_224DAF7E8();
      v10 = sub_224DAF878();
      if (v10)
      {
        v11 = v10;
        type metadata accessor for ChronoServicesClient();
        v12 = v11;
        v13 = -1;
        do
        {
          *&v95 = v12;
          swift_dynamicCast();
          BSDispatchQueueAssert();
          v14 = OBJC_IVAR____TtC10ChronoCoreP33_2559684BF6D015C60DA4DF344EC1B12920ChronoServicesClient__queue_serviceAssertionIDs;
          swift_beginAccess();
          v15 = *(*&v97[0] + v14);
          if (!*(v15 + 16))
          {
            goto LABEL_6;
          }

          v16 = sub_224A5C3D0(2);
          if ((v17 & 1) == 0)
          {

LABEL_6:

            goto LABEL_7;
          }

          v18 = *(*(v15 + 56) + 8 * v16);

          v19 = *(v18 + 16);

          if (!v19)
          {
            goto LABEL_6;
          }

          v20 = *&v97[0];
          v21 = *(v9 + 16);
          if (*(v9 + 24) <= v21)
          {
            sub_224AE02E0(v21 + 1);
          }

          v9 = v98[0];
          v22 = sub_224DAF698();
          v23 = v98[0] + 56;
          v24 = -1 << *(v98[0] + 32);
          v25 = v22 & ~v24;
          v26 = v25 >> 6;
          if (((-1 << v25) & ~*(v98[0] + 56 + 8 * (v25 >> 6))) != 0)
          {
            v27 = __clz(__rbit64((-1 << v25) & ~*(v98[0] + 56 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
            goto LABEL_23;
          }

          v28 = 0;
          v29 = (63 - v24) >> 6;
          do
          {
            if (++v26 == v29 && (v28 & 1) != 0)
            {
LABEL_84:
              __break(1u);
LABEL_85:
              __break(1u);
LABEL_86:
              swift_once();
LABEL_48:
              v58 = sub_224DAB258();
              __swift_project_value_buffer(v58, qword_281364E50);

              v59 = sub_224DAB228();
              v60 = sub_224DAF2A8();
              if (os_log_type_enabled(v59, v60))
              {
                v61 = swift_slowAlloc();
                v62 = swift_slowAlloc();
                v98[0] = v62;
                *v61 = 134349570;
                if (v13)
                {
                  v63 = sub_224DAF838();
                }

                else
                {
                  v63 = *(v9 + 16);
                }

                *(v61 + 4) = v63;

                *(v61 + 12) = 2050;
                if (v91)
                {
                  v64 = sub_224DAF838();
                }

                else
                {
                  v64 = *(v7 + 16);
                }

                *(v61 + 14) = v64;

                *(v61 + 22) = 2082;
                v65 = v92;
                v66 = sub_224BDF168(v9);
                v92 = v65;
                v67 = sub_224A3B79C(0, &qword_281350AF0, 0x277CF0CD0);
                v68 = MEMORY[0x22AA5D380](v66, v67);
                v70 = v69;

                v71 = sub_224A33F74(v68, v70, v98);

                *(v61 + 24) = v71;
                _os_log_impl(&dword_224A2F000, v59, v60, "Providing %{public}ld of %{public}ld clients relevance entries: {\n%{public}s\n}", v61, 0x20u);
                __swift_destroy_boxed_opaque_existential_1(v62);
                MEMORY[0x22AA5EED0](v62, -1, -1);
                MEMORY[0x22AA5EED0](v61, -1, -1);
              }

              else
              {

                swift_bridgeObjectRelease_n();
              }

              v72 = sub_224BE64D8();
              [v72 prepareForEncoding];
              if (v13)
              {
                sub_224DAF7E8();
                type metadata accessor for ChronoServicesClient();
                sub_224A80F90(&qword_27D6F5210, type metadata accessor for ChronoServicesClient, MEMORY[0x277D85378]);
                sub_224DAF1F8();
                v9 = v98[0];
                v73 = v98[1];
                v74 = v98[2];
                v75 = v98[3];
                v76 = v98[4];
              }

              else
              {
                v75 = 0;
                v77 = -1 << *(v9 + 32);
                v73 = v9 + 56;
                v74 = ~v77;
                v78 = -v77;
                if (v78 < 64)
                {
                  v79 = ~(-1 << v78);
                }

                else
                {
                  v79 = -1;
                }

                v76 = v79 & *(v9 + 56);
              }

              v91 = v74;
              v13 = (v74 + 64) >> 6;
              while (1)
              {
                if (v9 < 0)
                {
                  v84 = sub_224DAF878();
                  if (!v84 || (*&v95 = v84, type metadata accessor for ChronoServicesClient(), swift_dynamicCast(), v83 = *&v97[0], v7 = v75, v82 = v76, !*&v97[0]))
                  {
LABEL_82:
                    sub_224A3B7E4(v9);

                    return;
                  }
                }

                else
                {
                  v80 = v75;
                  v81 = v76;
                  v7 = v75;
                  if (!v76)
                  {
                    while (1)
                    {
                      v7 = v80 + 1;
                      if (__OFADD__(v80, 1))
                      {
                        break;
                      }

                      if (v7 >= v13)
                      {
                        goto LABEL_82;
                      }

                      v81 = *(v73 + 8 * v7);
                      ++v80;
                      if (v81)
                      {
                        goto LABEL_71;
                      }
                    }

                    __break(1u);
                    goto LABEL_84;
                  }

LABEL_71:
                  v82 = (v81 - 1) & v81;
                  v83 = *(*(v9 + 48) + ((v7 << 9) | (8 * __clz(__rbit64(v81)))));
                  if (!v83)
                  {
                    goto LABEL_82;
                  }
                }

                if ([*&v83[OBJC_IVAR____TtC10ChronoCoreP33_2559684BF6D015C60DA4DF344EC1B12920ChronoServicesClient__queue_connection] remoteTarget])
                {
                  sub_224DAF758();
                  swift_unknownObjectRelease();
                }

                else
                {
                  v95 = 0u;
                  v96 = 0u;
                }

                v97[0] = v95;
                v97[1] = v96;
                if (*(&v96 + 1))
                {
                  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5040, &unk_224DBADF8);
                  if (swift_dynamicCast())
                  {
                    [v94 timelineEntryRelevanceDidChange_];
                    swift_unknownObjectRelease();
                  }
                }

                else
                {

                  sub_224A3311C(v97, &qword_27D6F4760, &unk_224DB3680);
                }

                v75 = v7;
                v76 = v82;
              }
            }

            v30 = v26 == v29;
            if (v26 == v29)
            {
              v26 = 0;
            }

            v28 |= v30;
            v31 = *(v23 + 8 * v26);
          }

          while (v31 == -1);
          v27 = __clz(__rbit64(~v31)) + (v26 << 6);
LABEL_23:
          *(v23 + ((v27 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v27;
          *(*(v9 + 48) + 8 * v27) = v20;
          ++*(v9 + 16);
LABEL_7:
          v12 = sub_224DAF878();
        }

        while (v12);
      }

      v13 = v9 & 0xC000000000000001;
      if ((v9 & 0xC000000000000001) == 0)
      {
        goto LABEL_90;
      }
    }

    else
    {
      v32 = *(v7 + 32);
      v33 = v32 & 0x3F;
      v34 = ((1 << v32) + 63) >> 6;
      v35 = 8 * v34;

      if (v33 > 0xD)
      {

        if (!swift_stdlib_isStackAllocationSafe())
        {
          v85 = swift_slowAlloc();
          v9 = sub_224BF57EC(v85, v34, v7, sub_224BE3F04, 0);
          v92 = 0;

          MEMORY[0x22AA5EED0](v85, -1, -1);
          v13 = v9 & 0xC000000000000001;
          if ((v9 & 0xC000000000000001) == 0)
          {
            goto LABEL_90;
          }

          goto LABEL_46;
        }
      }

      v87 = v34;
      v86[1] = v86;
      MEMORY[0x28223BE20](v36, v37);
      v88 = v86 - ((v35 + 15) & 0x3FFFFFFFFFFFFFF0);
      bzero(v88, v35);
      v89 = 0;
      v13 = 0;
      v38 = v7 + 56;
      v39 = 1 << *(v7 + 32);
      v40 = -1;
      if (v39 < 64)
      {
        v40 = ~(-1 << v39);
      }

      v9 = v40 & *(v7 + 56);
      v41 = (v39 + 63) >> 6;
      v42 = &qword_27D6F3F98[13];
      v43 = &qword_27D6F3F98[13];
      v90 = v7;
      while (v9)
      {
        v44 = __clz(__rbit64(v9));
        v9 &= v9 - 1;
LABEL_38:
        v47 = v44 | (v13 << 6);
        v48 = *(*(v7 + 48) + 8 * v47);
        BSDispatchQueueAssert();
        v49 = v43[484];
        swift_beginAccess();
        v50 = *&v48[v49];
        if (*(v50 + 16))
        {

          v51 = sub_224A5C3D0(2);
          if (v52)
          {
            v53 = v43;
            v54 = v42;
            v55 = *(*(v50 + 56) + 8 * v51);

            v56 = *(v55 + 16);

            v42 = v54;
            v43 = v53;
            v7 = v90;

            if (v56)
            {
              *&v88[(v47 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v47;
              if (__OFADD__(v89++, 1))
              {
                __break(1u);
              }
            }
          }

          else
          {
          }
        }

        else
        {
        }
      }

      v45 = v13;
      while (1)
      {
        v13 = v45 + 1;
        if (__OFADD__(v45, 1))
        {
          goto LABEL_85;
        }

        if (v13 >= v41)
        {
          break;
        }

        v46 = *(v38 + 8 * v13);
        ++v45;
        if (v46)
        {
          v44 = __clz(__rbit64(v46));
          v9 = (v46 - 1) & v46;
          goto LABEL_38;
        }
      }

      v9 = sub_224B05540(v88, v87, v89, v7);
      v13 = v9 & 0xC000000000000001;
      if ((v9 & 0xC000000000000001) == 0)
      {
LABEL_90:
        if (!*(v9 + 16))
        {
          goto LABEL_91;
        }

        goto LABEL_47;
      }
    }

LABEL_46:
    if (!sub_224DAF838())
    {
LABEL_91:

      return;
    }

LABEL_47:
    if (qword_2813514B8 != -1)
    {
      goto LABEL_86;
    }

    goto LABEL_48;
  }
}

void *sub_224BE3F38(uint64_t a1)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v2 = result;
    v3 = OBJC_IVAR____TtC10ChronoCore20ChronoServicesServer_deviceService;
    swift_beginAccess();
    sub_224A3796C(v2 + v3, &v12, &unk_27D6F5050, &unk_224DBAE08);
    if (!v13)
    {

      return sub_224A3311C(&v12, &unk_27D6F5050, &unk_224DBAE08);
    }

    sub_224A36F98(&v12, v14);
    v4 = sub_224BE4188(v2);
    v5 = v4;
    if ((v4 & 0xC000000000000001) != 0)
    {
      if (sub_224DAF838())
      {
LABEL_5:
        __swift_project_boxed_opaque_existential_1(v14, v14[3]);
        v6 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v7 = swift_allocObject();
        *(v7 + 16) = v6;
        *(v7 + 24) = v5;

        sub_224CFB21C(sub_224BFDD38, v7);

        return __swift_destroy_boxed_opaque_existential_1(v14);
      }
    }

    else if (v4[2])
    {
      goto LABEL_5;
    }

    if (qword_281351480 != -1)
    {
      swift_once();
    }

    v8 = sub_224DAB258();
    __swift_project_value_buffer(v8, qword_281364DF0);
    v9 = sub_224DAB228();
    v10 = sub_224DAF278();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_224A2F000, v9, v10, "Devices changed, but no clients around to tell", v11, 2u);
      MEMORY[0x22AA5EED0](v11, -1, -1);
    }

    return __swift_destroy_boxed_opaque_existential_1(v14);
  }

  return result;
}

unint64_t *sub_224BE4188(uint64_t a1)
{
  v2 = 0;
  v65 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + OBJC_IVAR____TtC10ChronoCore20ChronoServicesServer__clientsSetLock);
  v4 = *(v3 + 16);

  os_unfair_lock_lock(v4);
  v5 = OBJC_IVAR____TtC10ChronoCore20ChronoServicesServer__clientsSetLock_clients;
  swift_beginAccess();
  v6 = *(a1 + v5);
  v7 = *(v3 + 16);

  os_unfair_lock_unlock(v7);

  if ((v6 & 0xC000000000000001) == 0)
  {
    v32 = *(v6 + 32);
    v11 = ((1 << v32) + 63) >> 6;
    v22 = 8 * v11;
    if ((v32 & 0x3Fu) <= 0xD)
    {
      goto LABEL_25;
    }

    goto LABEL_46;
  }

  v2 = MEMORY[0x277D84FA0];
  v64 = MEMORY[0x277D84FA0];
  v6 = sub_224DAF7E8();
  v9 = sub_224DAF878();
  if (!v9)
  {
LABEL_23:

    return v2;
  }

  v10 = v9;
  v11 = type metadata accessor for ChronoServicesClient();
  v12 = v10;
  while (1)
  {
    v62 = v12;
    swift_dynamicCast();
    BSDispatchQueueAssert();
    v13 = OBJC_IVAR____TtC10ChronoCoreP33_2559684BF6D015C60DA4DF344EC1B12920ChronoServicesClient__queue_serviceAssertionIDs;
    swift_beginAccess();
    v14 = *&v63[v13];
    if (!*(v14 + 16))
    {
      goto LABEL_5;
    }

    v15 = sub_224A5C3D0(0);
    if (v16)
    {
      break;
    }

LABEL_5:

LABEL_6:
    v12 = sub_224DAF878();
    if (!v12)
    {
      goto LABEL_23;
    }
  }

  v17 = *(*(v14 + 56) + 8 * v15);

  v18 = *(v17 + 16);

  if (!v18)
  {
    goto LABEL_5;
  }

  v19 = v63;
  v20 = v2[2];
  if (v2[3] <= v20)
  {
    sub_224AE02E0(v20 + 1);
  }

  v2 = v64;
  v21 = sub_224DAF698();
  v23 = v64 + 56;
  v24 = -1 << *(v64 + 32);
  v25 = v21 & ~v24;
  v26 = v25 >> 6;
  if (((-1 << v25) & ~*(v64 + 56 + 8 * (v25 >> 6))) != 0)
  {
    v27 = __clz(__rbit64((-1 << v25) & ~*(v64 + 56 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_22:
    *(v23 + ((v27 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v27;
    *(v2[6] + 8 * v27) = v19;
    ++v2[2];
    goto LABEL_6;
  }

  v28 = 0;
  v29 = (63 - v24) >> 6;
  while (++v26 != v29 || (v28 & 1) == 0)
  {
    v30 = v26 == v29;
    if (v26 == v29)
    {
      v26 = 0;
    }

    v28 |= v30;
    v31 = *(v23 + 8 * v26);
    if (v31 != -1)
    {
      v27 = __clz(__rbit64(~v31)) + (v26 << 6);
      goto LABEL_22;
    }
  }

  __break(1u);
  while (1)
  {
    __break(1u);
LABEL_46:
    v55 = v22;

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }

    v22 = v55;
LABEL_25:
    v58 = v11;
    v57[1] = v2;
    v57[2] = v57;
    MEMORY[0x28223BE20](v8, v22);
    v59 = v57 - ((v33 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v59, v33);
    v60 = 0;
    v61 = v6;
    v34 = 0;
    v35 = v6 + 56;
    v36 = 1 << *(v6 + 32);
    v37 = -1;
    if (v36 < 64)
    {
      v37 = ~(-1 << v36);
    }

    v11 = v37 & *(v6 + 56);
    v38 = (v36 + 63) >> 6;
    v39 = &qword_27D6F3F98[13];
    v2 = &qword_27D6F3F98[13];
    while (v11)
    {
      v40 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_36:
      v43 = v40 | (v34 << 6);
      v44 = *(*(v6 + 48) + 8 * v43);
      BSDispatchQueueAssert();
      v45 = v2[484];
      swift_beginAccess();
      v46 = *&v44[v45];
      if (*(v46 + 16))
      {

        v47 = sub_224A5C3D0(0);
        if (v48)
        {
          v49 = v2;
          v50 = v39;
          v51 = *(*(v46 + 56) + 8 * v47);

          v52 = *(v51 + 16);

          v39 = v50;
          v2 = v49;
          v6 = v61;

          if (v52)
          {
            *&v59[(v43 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v43;
            if (__OFADD__(v60++, 1))
            {
              __break(1u);
            }
          }
        }

        else
        {
        }
      }

      else
      {
      }
    }

    v41 = v34;
    while (1)
    {
      v34 = v41 + 1;
      if (__OFADD__(v41, 1))
      {
        break;
      }

      if (v34 >= v38)
      {
        return sub_224B05540(v59, v58, v60, v6);
      }

      v42 = *(v35 + 8 * v34);
      ++v41;
      if (v42)
      {
        v40 = __clz(__rbit64(v42));
        v11 = (v42 - 1) & v42;
        goto LABEL_36;
      }
    }
  }

  v56 = swift_slowAlloc();
  v2 = sub_224BF57EC(v56, v11, v6, sub_224BE46DC, 0);

  MEMORY[0x22AA5EED0](v56, -1, -1);
  return v2;
}

double sub_224BE4710(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_224DAB7B8();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_224DAB848();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10, v12);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v17 = *&Strong[OBJC_IVAR____TtC10ChronoCore20ChronoServicesServer_queue];
    v25 = Strong;
    v18 = swift_allocObject();
    *(v18 + 16) = a3;
    *(v18 + 24) = a1;
    aBlock[4] = sub_224BFDD98;
    aBlock[5] = v18;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_224A39F40;
    aBlock[3] = &block_descriptor_309;
    v19 = _Block_copy(aBlock);
    v24 = v10;
    v20 = v19;
    v23 = v17;

    sub_224DAB7E8();
    v26 = MEMORY[0x277D84F90];
    sub_224A80F90(&qword_281350ED0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F3460, &unk_224DB36F0);
    sub_224A33088(&qword_281350BB0, &unk_27D6F3460, &unk_224DB36F0, MEMORY[0x277D83970]);
    sub_224DAF788();
    v21 = v23;
    MEMORY[0x22AA5D760](0, v14, v9, v20);
    _Block_release(v20);

    (*(v6 + 8))(v9, v5);
    (*(v11 + 8))(v14, v24);
  }

  return result;
}

void sub_224BE4A34(uint64_t a1, id a2)
{
  if (qword_2813514B8 == -1)
  {
    goto LABEL_2;
  }

  while (1)
  {
    swift_once();
LABEL_2:
    v3 = sub_224DAB258();
    __swift_project_value_buffer(v3, qword_281364E50);

    v4 = sub_224DAB228();
    v5 = sub_224DAF2A8();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v36[0] = v7;
      *v6 = 134349314;
      v8 = a1 & 0xC000000000000001;
      if ((a1 & 0xC000000000000001) != 0)
      {
        v9 = sub_224DAF838();
      }

      else
      {
        v9 = *(a1 + 16);
      }

      *(v6 + 4) = v9;

      *(v6 + 12) = 2082;
      v10 = sub_224BDF168(a1);
      v11 = sub_224A3B79C(0, &qword_281350AF0, 0x277CF0CD0);
      v12 = MEMORY[0x22AA5D380](v10, v11);
      v14 = v13;

      v15 = sub_224A33F74(v12, v14, v36);

      *(v6 + 14) = v15;
      _os_log_impl(&dword_224A2F000, v4, v5, "Providing %{public}ld clients remote device info: {\n%{public}s\n}", v6, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v7);
      MEMORY[0x22AA5EED0](v7, -1, -1);
      MEMORY[0x22AA5EED0](v6, -1, -1);
    }

    else
    {

      v8 = a1 & 0xC000000000000001;
    }

    v16 = objc_allocWithZone(MEMORY[0x277CFA308]);
    sub_224A3B79C(0, &qword_27D6F40C0, 0x277CFA2F0);
    v17 = sub_224DAEFF8();
    v18 = [v16 initWithDevices_];

    [v18 prepareForEncoding];
    if (v8)
    {
      swift_unknownObjectRetain();
      sub_224DAF7E8();
      type metadata accessor for ChronoServicesClient();
      sub_224A80F90(&qword_27D6F5210, type metadata accessor for ChronoServicesClient, MEMORY[0x277D85378]);
      sub_224DAF1F8();
      a1 = v36[0];
      v19 = v36[1];
      v20 = v36[2];
      v8 = v36[3];
      v21 = v36[4];
    }

    else
    {
      v22 = -1 << *(a1 + 32);
      v19 = a1 + 56;
      v20 = ~v22;
      v23 = -v22;
      if (v23 < 64)
      {
        v24 = ~(-1 << v23);
      }

      else
      {
        v24 = -1;
      }

      v21 = v24 & *(a1 + 56);
    }

    v25 = (v20 + 64) >> 6;
    while (a1 < 0)
    {
      v31 = sub_224DAF878();
      if (!v31)
      {
        goto LABEL_34;
      }

      *&v33 = v31;
      type metadata accessor for ChronoServicesClient();
      swift_dynamicCast();
      v30 = *&v35[0];
      v28 = v8;
      v29 = v21;
      if (!*&v35[0])
      {
        goto LABEL_34;
      }

LABEL_23:
      if ((v30[OBJC_IVAR____TtC10ChronoCoreP33_2559684BF6D015C60DA4DF344EC1B12920ChronoServicesClient__queue_invalidated] & 1) == 0)
      {
        if ([*&v30[OBJC_IVAR____TtC10ChronoCoreP33_2559684BF6D015C60DA4DF344EC1B12920ChronoServicesClient__queue_connection] remoteTarget])
        {
          sub_224DAF758();
          swift_unknownObjectRelease();
        }

        else
        {
          v33 = 0u;
          v34 = 0u;
        }

        v35[0] = v33;
        v35[1] = v34;
        if (!*(&v34 + 1))
        {

          sub_224A3311C(v35, &qword_27D6F4760, &unk_224DB3680);
          goto LABEL_31;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5040, &unk_224DBADF8);
        if (swift_dynamicCast())
        {
          [v32 nearbyDevicesDidChange_];
          swift_unknownObjectRelease();
        }
      }

LABEL_31:
      v8 = v28;
      v21 = v29;
    }

    v26 = v8;
    v27 = v21;
    v28 = v8;
    if (v21)
    {
      break;
    }

    while (1)
    {
      v28 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        break;
      }

      if (v28 >= v25)
      {
        goto LABEL_34;
      }

      v27 = *(v19 + 8 * v28);
      ++v26;
      if (v27)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
  }

LABEL_19:
  v29 = (v27 - 1) & v27;
  v30 = *(*(a1 + 48) + ((v28 << 9) | (8 * __clz(__rbit64(v27)))));
  if (v30)
  {
    goto LABEL_23;
  }

LABEL_34:
  sub_224A3B7E4(a1);
}

double sub_224BE4F04(uint64_t a1, uint64_t a2)
{
  v109[5] = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v3 = *(a1 + 8);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v101 = v2;
    v6 = *(Strong + OBJC_IVAR____TtC10ChronoCore20ChronoServicesServer__clientsSetLock);
    v7 = *(v6 + 16);
    v8 = Strong;

    os_unfair_lock_lock(v7);
    v9 = OBJC_IVAR____TtC10ChronoCore20ChronoServicesServer__clientsSetLock_clients;
    swift_beginAccess();
    v103 = v8;
    v10 = *&v8[v9];
    v11 = *(v6 + 16);

    os_unfair_lock_unlock(v11);

    v102 = 0;
    LODWORD(v104) = v3;
    v100 = v10 & 0xC000000000000001;
    if ((v10 & 0xC000000000000001) != 0)
    {
      v12 = MEMORY[0x277D84FA0];
      v109[0] = MEMORY[0x277D84FA0];

      sub_224DAF7E8();
      v13 = sub_224DAF878();
      if (v13)
      {
        v14 = v13;
        type metadata accessor for ChronoServicesClient();
        v15 = v14;
        v16 = -1;
        do
        {
          *&v106 = v15;
          swift_dynamicCast();
          BSDispatchQueueAssert();
          v17 = OBJC_IVAR____TtC10ChronoCoreP33_2559684BF6D015C60DA4DF344EC1B12920ChronoServicesClient__queue_serviceAssertionIDs;
          swift_beginAccess();
          v18 = *(*&v108[0] + v17);
          if (!*(v18 + 16))
          {
            goto LABEL_6;
          }

          v19 = sub_224A5C3D0(3);
          if ((v20 & 1) == 0)
          {

LABEL_6:

            goto LABEL_7;
          }

          v21 = *(*(v18 + 56) + 8 * v19);

          v22 = *(v21 + 16);

          if (!v22)
          {
            goto LABEL_6;
          }

          v23 = *&v108[0];
          v24 = *(v12 + 16);
          if (*(v12 + 24) <= v24)
          {
            sub_224AE02E0(v24 + 1);
          }

          v12 = v109[0];
          v25 = sub_224DAF698();
          v26 = v109[0] + 56;
          v27 = -1 << *(v109[0] + 32);
          v28 = v25 & ~v27;
          v29 = v28 >> 6;
          if (((-1 << v28) & ~*(v109[0] + 56 + 8 * (v28 >> 6))) != 0)
          {
            v30 = __clz(__rbit64((-1 << v28) & ~*(v109[0] + 56 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
            goto LABEL_23;
          }

          v31 = 0;
          v32 = (63 - v27) >> 6;
          do
          {
            if (++v29 == v32 && (v31 & 1) != 0)
            {
LABEL_89:
              __break(1u);
LABEL_90:
              __break(1u);
LABEL_91:
              swift_once();
LABEL_48:
              v60 = sub_224DAB258();
              __swift_project_value_buffer(v60, qword_281364E50);

              v61 = sub_224DAB228();
              v62 = sub_224DAF2A8();
              if (os_log_type_enabled(v61, v62))
              {
                v63 = swift_slowAlloc();
                v64 = swift_slowAlloc();
                v109[0] = v64;
                *v63 = 134349570;
                if (v16)
                {
                  v65 = sub_224DAF838();
                }

                else
                {
                  v65 = *(v12 + 16);
                }

                *(v63 + 4) = v65;

                *(v63 + 12) = 2050;
                v66 = v16;
                if (v100)
                {
                  v67 = sub_224DAF838();
                }

                else
                {
                  v67 = *(v10 + 16);
                }

                *(v63 + 14) = v67;

                *(v63 + 22) = 2082;
                v68 = v102;
                v69 = sub_224BDF168(v12);
                v102 = v68;
                v70 = sub_224A3B79C(0, &qword_281350AF0, 0x277CF0CD0);
                v71 = MEMORY[0x22AA5D380](v69, v70);
                v73 = v72;

                v74 = sub_224A33F74(v71, v73, v109);

                *(v63 + 24) = v74;
                _os_log_impl(&dword_224A2F000, v61, v62, "Providing %{public}ld of %{public}ld clients with relevance file handle updates: {\n%{public}s\n}", v63, 0x20u);
                __swift_destroy_boxed_opaque_existential_1(v64);
                MEMORY[0x22AA5EED0](v64, -1, -1);
                MEMORY[0x22AA5EED0](v63, -1, -1);

                v16 = v66;
              }

              else
              {

                swift_bridgeObjectRelease_n();
              }

              if (v104)
              {
                if (v104 == 1)
                {
                  v75 = objc_opt_self();

                  sub_224A3DADC(v76);

                  sub_224DAF538();
                  sub_224A80F90(&unk_2813509A0, MEMORY[0x277CFA140], MEMORY[0x277D85378]);
                  v77 = sub_224DAF1A8();

                  v78 = [v75 removeEventWithExtensionIdentities_];
                  goto LABEL_61;
                }

                v104 = [objc_opt_self() reloadEvent];
                if (!v16)
                {
LABEL_64:
                  v82 = 0;
                  v84 = -1 << *(v12 + 32);
                  v10 = v12 + 56;
                  v81 = ~v84;
                  v85 = -v84;
                  if (v85 < 64)
                  {
                    v86 = ~(-1 << v85);
                  }

                  else
                  {
                    v86 = -1;
                  }

                  v83 = v86 & *(v12 + 56);
                  goto LABEL_68;
                }
              }

              else
              {
                v79 = objc_opt_self();

                sub_224AE9634(v80);

                sub_224A3B79C(0, &qword_281350970, 0x277CFA418);
                sub_224A3B758(&qword_281350968, &qword_281350970, 0x277CFA418, MEMORY[0x277D85378]);
                v77 = sub_224DAF1A8();

                v78 = [v79 addOrUpdateEventWithRelevanceKeys_];
LABEL_61:
                v104 = v78;

                if (!v16)
                {
                  goto LABEL_64;
                }
              }

              sub_224DAF7E8();
              type metadata accessor for ChronoServicesClient();
              sub_224A80F90(&qword_27D6F5210, type metadata accessor for ChronoServicesClient, MEMORY[0x277D85378]);
              sub_224DAF1F8();
              v12 = v109[0];
              v10 = v109[1];
              v81 = v109[2];
              v82 = v109[3];
              v83 = v109[4];
LABEL_68:
              v101 = v81;
              v87 = (v81 + 64) >> 6;
              v16 = &qword_27D6F3F98[13];
              while (1)
              {
                if ((v12 & 0x8000000000000000) != 0)
                {
                  v93 = sub_224DAF878();
                  if (!v93 || (*&v106 = v93, type metadata accessor for ChronoServicesClient(), swift_dynamicCast(), v92 = *&v108[0], v90 = v82, v91 = v83, !*&v108[0]))
                  {
LABEL_87:
                    sub_224A3B7E4(v12);

                    return result;
                  }
                }

                else
                {
                  v88 = v82;
                  v89 = v83;
                  v90 = v82;
                  if (!v83)
                  {
                    while (1)
                    {
                      v90 = v88 + 1;
                      if (__OFADD__(v88, 1))
                      {
                        break;
                      }

                      if (v90 >= v87)
                      {
                        goto LABEL_87;
                      }

                      v89 = *(v10 + 8 * v90);
                      ++v88;
                      if (v89)
                      {
                        goto LABEL_76;
                      }
                    }

                    __break(1u);
                    goto LABEL_89;
                  }

LABEL_76:
                  v91 = (v89 - 1) & v89;
                  v92 = *(*(v12 + 48) + ((v90 << 9) | (8 * __clz(__rbit64(v89)))));
                  if (!v92)
                  {
                    goto LABEL_87;
                  }
                }

                if ([*&v92[OBJC_IVAR____TtC10ChronoCoreP33_2559684BF6D015C60DA4DF344EC1B12920ChronoServicesClient__queue_connection] remoteTarget])
                {
                  sub_224DAF758();
                  swift_unknownObjectRelease();
                }

                else
                {
                  v106 = 0u;
                  v107 = 0u;
                }

                v108[0] = v106;
                v108[1] = v107;
                if (*(&v107 + 1))
                {
                  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5040, &unk_224DBADF8);
                  if (swift_dynamicCast())
                  {
                    [v105 handleWidgetRelevanceEvent_];
                    swift_unknownObjectRelease();
                  }
                }

                else
                {

                  sub_224A3311C(v108, &qword_27D6F4760, &unk_224DB3680);
                }

                v82 = v90;
                v83 = v91;
              }
            }

            v33 = v29 == v32;
            if (v29 == v32)
            {
              v29 = 0;
            }

            v31 |= v33;
            v34 = *(v26 + 8 * v29);
          }

          while (v34 == -1);
          v30 = __clz(__rbit64(~v34)) + (v29 << 6);
LABEL_23:
          *(v26 + ((v30 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v30;
          *(*(v12 + 48) + 8 * v30) = v23;
          ++*(v12 + 16);
LABEL_7:
          v15 = sub_224DAF878();
        }

        while (v15);
      }

      v16 = v12 & 0xC000000000000001;
      if ((v12 & 0xC000000000000001) == 0)
      {
        goto LABEL_95;
      }
    }

    else
    {
      v35 = *(v10 + 32);
      v36 = v35 & 0x3F;
      v12 = ((1 << v35) + 63) >> 6;
      v37 = 8 * v12;

      if (v36 > 0xD)
      {

        if (!swift_stdlib_isStackAllocationSafe())
        {
          v94 = swift_slowAlloc();
          v12 = sub_224BF57EC(v94, v12, v10, sub_224BE5B68, 0);
          v102 = 0;

          MEMORY[0x22AA5EED0](v94, -1, -1);
          v16 = v12 & 0xC000000000000001;
          if ((v12 & 0xC000000000000001) == 0)
          {
            goto LABEL_95;
          }

          goto LABEL_46;
        }
      }

      v96 = v12;
      v95[1] = v95;
      MEMORY[0x28223BE20](v38, v39);
      v97 = v95 - ((v37 + 15) & 0x3FFFFFFFFFFFFFF0);
      bzero(v97, v37);
      v98 = 0;
      v40 = 0;
      v41 = v10 + 56;
      v42 = 1 << *(v10 + 32);
      v43 = -1;
      if (v42 < 64)
      {
        v43 = ~(-1 << v42);
      }

      v44 = v43 & *(v10 + 56);
      v16 = (v42 + 63) >> 6;
      v45 = &qword_27D6F3F98[13];
      v46 = &qword_27D6F3F98[13];
      v99 = v10;
      while (v44)
      {
        v47 = __clz(__rbit64(v44));
        v44 &= v44 - 1;
LABEL_38:
        v12 = v47 | (v40 << 6);
        v50 = *(*(v10 + 48) + 8 * v12);
        BSDispatchQueueAssert();
        v51 = v46[484];
        swift_beginAccess();
        v52 = *&v50[v51];
        if (*(v52 + 16))
        {

          v53 = sub_224A5C3D0(3);
          if (v54)
          {
            v55 = v46;
            v56 = v45;
            v57 = *(*(v52 + 56) + 8 * v53);

            v58 = *(v57 + 16);

            v45 = v56;
            v46 = v55;
            v10 = v99;

            if (v58)
            {
              *&v97[(v12 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v12;
              if (__OFADD__(v98++, 1))
              {
                __break(1u);
              }
            }
          }

          else
          {
          }
        }

        else
        {
        }
      }

      v48 = v40;
      while (1)
      {
        v40 = v48 + 1;
        if (__OFADD__(v48, 1))
        {
          goto LABEL_90;
        }

        if (v40 >= v16)
        {
          break;
        }

        v49 = *(v41 + 8 * v40);
        ++v48;
        if (v49)
        {
          v47 = __clz(__rbit64(v49));
          v44 = (v49 - 1) & v49;
          goto LABEL_38;
        }
      }

      v12 = sub_224B05540(v97, v96, v98, v10);
      v16 = v12 & 0xC000000000000001;
      if ((v12 & 0xC000000000000001) == 0)
      {
LABEL_95:
        if (!*(v12 + 16))
        {
          goto LABEL_96;
        }

        goto LABEL_47;
      }
    }

LABEL_46:
    if (!sub_224DAF838())
    {
LABEL_96:

      return result;
    }

LABEL_47:
    if (qword_2813514B8 != -1)
    {
      goto LABEL_91;
    }

    goto LABEL_48;
  }

  return result;
}

double sub_224BE5B9C(uint64_t *a1, uint64_t a2)
{
  v2 = 0;
  v100 = *MEMORY[0x277D85DE8];
  v3 = a1[1];
  v90 = *a1;
  v89 = v3;
  v4 = a1[3];
  v88 = a1[2];
  v87 = v4;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return result;
  }

  v7 = Strong;
  v8 = *(Strong + OBJC_IVAR____TtC10ChronoCore20ChronoServicesServer__clientsSetLock);
  v9 = *(v8 + 16);

  os_unfair_lock_lock(v9);
  v10 = OBJC_IVAR____TtC10ChronoCore20ChronoServicesServer__clientsSetLock_clients;
  swift_beginAccess();
  v11 = *&v7[v10];
  v12 = *(v8 + 16);

  os_unfair_lock_unlock(v12);

  v85 = v7;
  v83 = 0;
  if ((v11 & 0xC000000000000001) != 0)
  {
    v14 = MEMORY[0x277D84FA0];
    v95 = MEMORY[0x277D84FA0];
    sub_224DAF7E8();
    v15 = sub_224DAF878();
    if (!v15)
    {
LABEL_24:

      if ((v14 & 0xC000000000000001) != 0)
      {
        goto LABEL_46;
      }

      goto LABEL_52;
    }

    v16 = v15;
    v11 = type metadata accessor for ChronoServicesClient();
    v17 = v16;
LABEL_8:
    *&v92 = v17;
    swift_dynamicCast();
    BSDispatchQueueAssert();
    v18 = OBJC_IVAR____TtC10ChronoCoreP33_2559684BF6D015C60DA4DF344EC1B12920ChronoServicesClient__queue_serviceAssertionIDs;
    swift_beginAccess();
    v19 = *(*&v94[0] + v18);
    if (!*(v19 + 16))
    {
      goto LABEL_6;
    }

    v20 = sub_224A5C3D0(5);
    if ((v21 & 1) == 0)
    {

LABEL_6:

      goto LABEL_7;
    }

    v22 = *(*(v19 + 56) + 8 * v20);

    v23 = *(v22 + 16);

    if (!v23)
    {
      goto LABEL_6;
    }

    v2 = *&v94[0];
    v24 = *(v14 + 16);
    if (*(v14 + 24) <= v24)
    {
      sub_224AE02E0(v24 + 1);
    }

    v14 = v95;
    v25 = sub_224DAF698();
    v27 = v95 + 56;
    v28 = -1 << *(v95 + 32);
    v29 = v25 & ~v28;
    v30 = v29 >> 6;
    if (((-1 << v29) & ~*(v95 + 56 + 8 * (v29 >> 6))) != 0)
    {
      v31 = __clz(__rbit64((-1 << v29) & ~*(v95 + 56 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
      goto LABEL_23;
    }

    v32 = 0;
    v33 = (63 - v28) >> 6;
    while (++v30 != v33 || (v32 & 1) == 0)
    {
      v34 = v30 == v33;
      if (v30 == v33)
      {
        v30 = 0;
      }

      v32 |= v34;
      v35 = *(v27 + 8 * v30);
      if (v35 != -1)
      {
        v31 = __clz(__rbit64(~v35)) + (v30 << 6);
LABEL_23:
        *(v27 + ((v31 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v31;
        *(*(v14 + 48) + 8 * v31) = v2;
        ++*(v14 + 16);
LABEL_7:
        v17 = sub_224DAF878();
        if (!v17)
        {
          goto LABEL_24;
        }

        goto LABEL_8;
      }
    }

    __break(1u);
LABEL_48:
    __break(1u);
  }

  else
  {
    v36 = *(v11 + 32);
    v23 = ((1 << v36) + 63) >> 6;
    v26 = 8 * v23;
    if ((v36 & 0x3Fu) <= 0xD)
    {
      goto LABEL_27;
    }
  }

  v62 = v26;

  if (!swift_stdlib_isStackAllocationSafe())
  {
    v63 = swift_slowAlloc();
    v14 = sub_224BF57EC(v63, v23, v11, sub_224BE64A4, 0);
    v83 = v2;

    MEMORY[0x22AA5EED0](v63, -1, -1);
    if ((v14 & 0xC000000000000001) != 0)
    {
      goto LABEL_46;
    }

LABEL_52:
    if (*(v14 + 16))
    {
      v60 = 0;
      v64 = -1 << *(v14 + 32);
      v58 = v14 + 56;
      v59 = ~v64;
      v65 = -v64;
      if (v65 < 64)
      {
        v66 = ~(-1 << v65);
      }

      else
      {
        v66 = -1;
      }

      v61 = v66 & *(v14 + 56);
      goto LABEL_57;
    }

LABEL_78:

    return result;
  }

  v26 = v62;
LABEL_27:
  v81 = v23;
  v80 = &v80;
  MEMORY[0x28223BE20](v13, v26);
  v82 = &v80 - ((v37 + 15) & 0x3FFFFFFFFFFFFFF0);
  bzero(v82, v37);
  v84 = 0;
  v38 = 0;
  v39 = v11 + 56;
  v40 = 1 << *(v11 + 32);
  v41 = -1;
  if (v40 < 64)
  {
    v41 = ~(-1 << v40);
  }

  v42 = v41 & *(v11 + 56);
  v43 = (v40 + 63) >> 6;
  v44 = &qword_27D6F3F98[13];
  v45 = &qword_27D6F3F98[13];
  v86 = v11;
  while (v42)
  {
    v46 = __clz(__rbit64(v42));
    v42 &= v42 - 1;
LABEL_38:
    v23 = v46 | (v38 << 6);
    v2 = *(*(v11 + 48) + 8 * v23);
    BSDispatchQueueAssert();
    v49 = v45[484];
    swift_beginAccess();
    v50 = *&v2[v49];
    if (*(v50 + 16))
    {

      v51 = sub_224A5C3D0(5);
      if (v52)
      {
        v53 = v45;
        v54 = v44;
        v55 = *(*(v50 + 56) + 8 * v51);

        v56 = *(v55 + 16);

        v44 = v54;
        v45 = v53;
        v11 = v86;

        if (v56)
        {
          *&v82[(v23 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v23;
          if (__OFADD__(v84++, 1))
          {
            goto LABEL_81;
          }
        }
      }

      else
      {
      }
    }

    else
    {
    }
  }

  v47 = v38;
  while (1)
  {
    v38 = v47 + 1;
    if (__OFADD__(v47, 1))
    {
      goto LABEL_48;
    }

    if (v38 >= v43)
    {
      break;
    }

    v48 = *(v39 + 8 * v38);
    ++v47;
    if (v48)
    {
      v46 = __clz(__rbit64(v48));
      v42 = (v48 - 1) & v48;
      goto LABEL_38;
    }
  }

  v14 = sub_224B05540(v82, v81, v84, v11);
  if ((v14 & 0xC000000000000001) == 0)
  {
    goto LABEL_52;
  }

LABEL_46:
  if (!sub_224DAF838())
  {
    goto LABEL_78;
  }

  sub_224DAF7E8();
  type metadata accessor for ChronoServicesClient();
  sub_224A80F90(&qword_27D6F5210, type metadata accessor for ChronoServicesClient, MEMORY[0x277D85378]);
  sub_224DAF1F8();
  v14 = v95;
  v58 = v96;
  v59 = v97;
  v60 = v98;
  v61 = v99;
LABEL_57:
  v84 = v59;
  v67 = (v59 + 64) >> 6;
  v68 = &qword_27D6F3F98[13];
  v69 = &off_27853F000;
  if ((v14 & 0x8000000000000000) == 0)
  {
    goto LABEL_61;
  }

LABEL_67:
  v75 = sub_224DAF878();
  if (v75)
  {
    *&v92 = v75;
    type metadata accessor for ChronoServicesClient();
    swift_dynamicCast();
    v74 = *&v94[0];
    v72 = v60;
    v73 = v61;
    if (*&v94[0])
    {
      while (1)
      {
        if ([*&v74[v68[478]] v69[445]])
        {
          sub_224DAF758();
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
          break;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5040, &unk_224DBADF8);
        if ((swift_dynamicCast() & 1) == 0)
        {

LABEL_60:
          v60 = v72;
          v61 = v73;
          if (v14 < 0)
          {
            goto LABEL_67;
          }

          goto LABEL_61;
        }

        v86 = v73;
        v76 = v68;
        v77 = v91;
        v78 = sub_224DAEDE8();
        v79 = sub_224DAEDE8();
        [v77 activityDidUpdate:v78 payloadID:v79];
        v68 = v76;
        v69 = &off_27853F000;
        swift_unknownObjectRelease();

        v60 = v72;
        v61 = v86;
        if (v14 < 0)
        {
          goto LABEL_67;
        }

LABEL_61:
        v70 = v60;
        v71 = v61;
        v72 = v60;
        if (!v61)
        {
          while (1)
          {
            v72 = v70 + 1;
            if (__OFADD__(v70, 1))
            {
              break;
            }

            if (v72 >= v67)
            {
              goto LABEL_77;
            }

            v71 = *(v58 + 8 * v72);
            ++v70;
            if (v71)
            {
              goto LABEL_65;
            }
          }

          __break(1u);
LABEL_81:
          __break(1u);
        }

LABEL_65:
        v73 = (v71 - 1) & v71;
        v74 = *(*(v14 + 48) + ((v72 << 9) | (8 * __clz(__rbit64(v71)))));
        if (!v74)
        {
          goto LABEL_77;
        }
      }

      sub_224A3311C(v94, &qword_27D6F4760, &unk_224DB3680);
      goto LABEL_60;
    }
  }

LABEL_77:
  sub_224A3B7E4(v14);

  return result;
}

id sub_224BE64D8()
{
  v102 = sub_224DA9878();
  v1 = *(v102 - 8);
  MEMORY[0x28223BE20](v102, v2);
  v4 = &v77 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F50E8, &qword_224DBAE38);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v8 = &v77 - v7;
  v101 = sub_224DAEA68();
  v9 = *(v101 - 8);
  MEMORY[0x28223BE20](v101, v10);
  v98 = &v77 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F56C0, &unk_224DB3580);
  MEMORY[0x28223BE20](v12 - 8, v13);
  v87 = &v77 - v14;
  v92 = sub_224DAC268();
  v15 = *(v92 - 8);
  MEMORY[0x28223BE20](v92, v16);
  v91 = &v77 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5188, &qword_224DBAEB8);
  v19 = MEMORY[0x28223BE20](v84, v18);
  v83 = &v77 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19, v21);
  v90 = &v77 - v22;
  __swift_project_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC10ChronoCore20ChronoServicesServer_timelineService), *(v0 + OBJC_IVAR____TtC10ChronoCore20ChronoServicesServer_timelineService + 24));
  v23 = sub_224DAC7A8();
  v24 = v23 + 64;
  v25 = 1 << *(v23 + 32);
  v26 = -1;
  if (v25 < 64)
  {
    v26 = ~(-1 << v25);
  }

  v27 = v26 & *(v23 + 64);
  v28 = (v25 + 63) >> 6;
  v82 = v15 + 16;
  v81 = v15 + 32;
  v99 = (v1 + 8);
  v100 = (v9 + 48);
  v96 = (v9 + 8);
  v97 = (v9 + 32);
  v85 = v15;
  v78 = (v15 + 8);
  v86 = v23;

  v29 = 0;
  v30 = MEMORY[0x277D84F98];
  v80 = v24;
  v79 = v28;
  while (1)
  {
    v94 = v30;
    if (!v27)
    {
      break;
    }

    v31 = v29;
    v32 = v87;
LABEL_12:
    v89 = v27;
    v88 = v31;
    v33 = __clz(__rbit64(v27)) | (v31 << 6);
    v34 = v86;
    v35 = v85;
    v36 = v90;
    v37 = v92;
    (*(v85 + 16))(v90, *(v86 + 48) + *(v85 + 72) * v33, v92);
    v38 = *(*(v34 + 56) + 8 * v33);
    v39 = v84;
    *(v36 + *(v84 + 48)) = v38;
    v40 = v36;
    v41 = v83;
    sub_224A3796C(v40, v83, &qword_27D6F5188, &qword_224DBAEB8);
    v93 = *(v41 + *(v39 + 48));
    (*(v35 + 32))(v91, v41, v37);

    v42 = sub_224DAC248();
    v43 = sub_224DAC258();
    sub_224DAC218();
    v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F30D0, &unk_224DB2AC0);
    v45 = *(v44 - 8);
    if ((*(v45 + 48))(v32, 1, v44) == 1)
    {
      sub_224A3311C(v32, &qword_27D6F56C0, &unk_224DB3580);
      v46 = 0;
    }

    else
    {
      sub_224A33088(&qword_281351868, &unk_27D6F30D0, &unk_224DB2AC0, MEMORY[0x277CFA028]);
      sub_224DAEFA8();
      (*(v45 + 8))(v32, v44);
      v46 = sub_224DAEDE8();
    }

    v47 = v94;
    v95 = [objc_allocWithZone(MEMORY[0x277CFA3D8]) initWithWidget:v42 metrics:v43 hostIdentifier:v46];

    v48 = v93;
    v49 = *(v93 + 16);
    if (v49)
    {
      v106 = MEMORY[0x277D84F90];
      sub_224DAF9E8();
      v50 = v48 + 32;
      do
      {
        sub_224A3317C(v50, &v105);
        sub_224A3317C(&v105, v103);
        __swift_project_boxed_opaque_existential_1(v103, v104);
        sub_224DAE788();
        v53 = v101;
        if ((*v100)(v8, 1, v101) == 1)
        {
          sub_224A3311C(v8, &unk_27D6F50E8, &qword_224DBAE38);
          v51 = objc_allocWithZone(MEMORY[0x277CFA328]);
          __swift_project_boxed_opaque_existential_1(v103, v104);
          sub_224DAE778();
          v52 = sub_224DA9778();
          (*v99)(v4, v102);
          [v51 initWithDate_];
        }

        else
        {
          v54 = v98;
          (*v97)(v98, v8, v53);
          v55 = objc_allocWithZone(MEMORY[0x277CFA328]);
          __swift_project_boxed_opaque_existential_1(v103, v104);
          sub_224DAE778();
          v56 = sub_224DA9778();
          (*v99)(v4, v102);
          sub_224DAEA48();
          v58 = v57;
          sub_224DAEA58();
          [v55 initWithDate:v56 score:v58 duration:v59];

          (*v96)(v54, v53);
        }

        __swift_destroy_boxed_opaque_existential_1(&v105);
        __swift_destroy_boxed_opaque_existential_1(v103);
        sub_224DAF9B8();
        sub_224DAF9F8();
        sub_224DAFA08();
        sub_224DAF9C8();
        v50 += 40;
        --v49;
      }

      while (v49);

      v60 = v106;
      v47 = v94;
    }

    else
    {

      v60 = MEMORY[0x277D84F90];
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v105 = v47;
    v62 = sub_224B0BB34(v95);
    v64 = v47[2];
    v65 = (v63 & 1) == 0;
    v66 = __OFADD__(v64, v65);
    v67 = v64 + v65;
    if (v66)
    {
      goto LABEL_34;
    }

    v68 = v63;
    if (v47[3] >= v67)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v72 = v62;
        sub_224B27BC4();
        v62 = v72;
      }
    }

    else
    {
      sub_224B13898(v67, isUniquelyReferenced_nonNull_native);
      v62 = sub_224B0BB34(v95);
      if ((v68 & 1) != (v69 & 1))
      {
        goto LABEL_36;
      }
    }

    v24 = v80;
    v28 = v79;
    v27 = (v89 - 1) & v89;
    v30 = v105;
    if (v68)
    {
      *(v105[7] + 8 * v62) = v60;

      (*v78)(v91, v92);
      sub_224A3311C(v90, &qword_27D6F5188, &qword_224DBAEB8);
    }

    else
    {
      v105[(v62 >> 6) + 8] |= 1 << v62;
      *(v30[6] + 8 * v62) = v95;
      *(v30[7] + 8 * v62) = v60;
      (*v78)(v91, v92);
      sub_224A3311C(v90, &qword_27D6F5188, &qword_224DBAEB8);
      v70 = v30[2];
      v66 = __OFADD__(v70, 1);
      v71 = v70 + 1;
      if (v66)
      {
        goto LABEL_35;
      }

      v30[2] = v71;
    }

    v29 = v88;
  }

  v32 = v87;
  while (1)
  {
    v31 = v29 + 1;
    if (__OFADD__(v29, 1))
    {
      break;
    }

    if (v31 >= v28)
    {

      v73 = objc_allocWithZone(MEMORY[0x277CFA330]);
      sub_224A3B79C(0, &unk_281350B10, 0x277CFA3D8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5190, &qword_224DBAEC0);
      sub_224A3B758(&qword_27D6F5198, &unk_281350B10, 0x277CFA3D8, MEMORY[0x277D85378]);
      v74 = sub_224DAECC8();

      v75 = [v73 initWithEntries_];

      return v75;
    }

    v27 = *(v24 + 8 * v31);
    ++v29;
    if (v27)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  sub_224A3B79C(0, &unk_281350B10, 0x277CFA3D8);
  result = sub_224DAFDD8();
  __break(1u);
  return result;
}

void sub_224BE708C(void *a1, char *a2, uint64_t a3)
{
  v6 = objc_opt_self();
  v7 = [v6 serviceQuality];
  [a1 setServiceQuality_];

  [a1 setTargetQueue_];
  v8 = [v6 interface];
  [a1 setInterface_];

  [a1 setInterfaceTarget_];
  v9 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v10 = swift_allocObject();
  *(v10 + 16) = a2;
  *(v10 + 24) = v9;
  v25 = sub_224BFDCF0;
  v26 = v10;
  v21 = MEMORY[0x277D85DD0];
  v22 = 1107296256;
  v23 = sub_224A3837C;
  v24 = &block_descriptor_266;
  v11 = _Block_copy(&v21);
  v12 = a2;

  [a1 setActivationHandler_];
  _Block_release(v11);
  v13 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v14 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v15 = swift_allocObject();
  *(v15 + 16) = v13;
  *(v15 + 24) = v14;
  v25 = sub_224BFDCF8;
  v26 = v15;
  v21 = MEMORY[0x277D85DD0];
  v22 = 1107296256;
  v23 = sub_224A3837C;
  v24 = &block_descriptor_276;
  v16 = _Block_copy(&v21);

  [a1 setInterruptionHandler_];
  _Block_release(v16);
  v17 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v18 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v19 = swift_allocObject();
  *(v19 + 16) = v17;
  *(v19 + 24) = v18;
  v25 = sub_224BFDD00;
  v26 = v19;
  v21 = MEMORY[0x277D85DD0];
  v22 = 1107296256;
  v23 = sub_224A3837C;
  v24 = &block_descriptor_284;
  v20 = _Block_copy(&v21);

  [a1 setInvalidationHandler_];
  _Block_release(v20);
}

void sub_224BE7404(void *a1, uint64_t a2, uint64_t a3)
{
  BSDispatchQueueAssert();
  if (qword_2813514B8 != -1)
  {
    swift_once();
  }

  v4 = sub_224DAB258();
  __swift_project_value_buffer(v4, qword_281364E50);
  v5 = a1;
  v6 = sub_224DAB228();
  v7 = sub_224DAF2A8();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v19[0] = v9;
    *v8 = 136446210;
    v10 = [v5 remoteProcess];
    if (v10)
    {
      v11 = v10;
      v12 = [v10 description];

      v13 = sub_224DAEE18();
      v15 = v14;
    }

    else
    {
      v15 = 0x8000000224DC7B00;
      v13 = 0xD00000000000001ALL;
    }

    v16 = sub_224A33F74(v13, v15, v19);

    *(v8 + 4) = v16;
    _os_log_impl(&dword_224A2F000, v6, v7, "Chrono widget service connection from %{public}s activated", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v9);
    MEMORY[0x22AA5EED0](v9, -1, -1);
    MEMORY[0x22AA5EED0](v8, -1, -1);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v18 = Strong;
    sub_224BE815C();
  }
}

void sub_224BE7608(void *a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    BSDispatchQueueAssert();
    if (qword_2813514B8 != -1)
    {
      swift_once();
    }

    v6 = sub_224DAB258();
    __swift_project_value_buffer(v6, qword_281364E50);
    v7 = a1;
    v8 = sub_224DAB228();
    v9 = sub_224DAF2A8();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v24[0] = v11;
      *v10 = 136446210;
      v12 = [v7 remoteProcess];
      if (v12)
      {
        v13 = v12;
        v14 = [v12 description];

        v15 = sub_224DAEE18();
        v17 = v16;
      }

      else
      {
        v17 = 0x8000000224DC7B00;
        v15 = 0xD00000000000001ALL;
      }

      v18 = sub_224A33F74(v15, v17, v24);

      *(v10 + 4) = v18;
      _os_log_impl(&dword_224A2F000, v8, v9, "Chrono widget service connection from %{public}s interrupted", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v11);
      MEMORY[0x22AA5EED0](v11, -1, -1);
      MEMORY[0x22AA5EED0](v10, -1, -1);
    }

    [v7 invalidate];
    swift_beginAccess();
    v19 = swift_unknownObjectWeakLoadStrong();
    if (v19)
    {
      v20 = v19;
      sub_224BE8240();
      v21 = *&v5[OBJC_IVAR____TtC10ChronoCore20ChronoServicesServer__clientsSetLock];
      v22 = *(v21 + 16);

      os_unfair_lock_lock(v22);
      swift_beginAccess();
      v23 = sub_224B02474(v20);
      swift_endAccess();

      os_unfair_lock_unlock(*(v21 + 16));
    }
  }
}

void sub_224BE78BC(void *a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    BSDispatchQueueAssert();
    if (qword_2813514B8 != -1)
    {
      swift_once();
    }

    v6 = sub_224DAB258();
    __swift_project_value_buffer(v6, qword_281364E50);
    v7 = a1;
    v8 = sub_224DAB228();
    v9 = sub_224DAF2A8();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v24[0] = v11;
      *v10 = 136446210;
      v12 = [v7 remoteProcess];
      if (v12)
      {
        v13 = v12;
        v14 = [v12 description];

        v15 = sub_224DAEE18();
        v17 = v16;
      }

      else
      {
        v17 = 0x8000000224DC7B00;
        v15 = 0xD00000000000001ALL;
      }

      v18 = sub_224A33F74(v15, v17, v24);

      *(v10 + 4) = v18;
      _os_log_impl(&dword_224A2F000, v8, v9, "Chrono widget service connection from %{public}s invalidated", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v11);
      MEMORY[0x22AA5EED0](v11, -1, -1);
      MEMORY[0x22AA5EED0](v10, -1, -1);
    }

    swift_beginAccess();
    v19 = swift_unknownObjectWeakLoadStrong();
    if (v19)
    {
      v20 = v19;
      sub_224BE8240();
      v21 = *&v5[OBJC_IVAR____TtC10ChronoCore20ChronoServicesServer__clientsSetLock];
      v22 = *(v21 + 16);

      os_unfair_lock_lock(v22);
      swift_beginAccess();
      v23 = sub_224B02474(v20);
      swift_endAccess();

      os_unfair_lock_unlock(*(v21 + 16));
    }
  }
}

uint64_t sub_224BE7BF4()
{
  v10 = sub_224DAF3C8();
  v0 = *(v10 - 8);
  MEMORY[0x28223BE20](v10, v1);
  v3 = v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_224DAF318();
  MEMORY[0x28223BE20](v4, v5);
  v6 = sub_224DAB848();
  MEMORY[0x28223BE20](v6 - 8, v7);
  v9[1] = sub_224A3B79C(0, &qword_281350A70, 0x277D85C78);
  sub_224DAB7E8();
  v11 = MEMORY[0x277D84F90];
  sub_224A80F90(&qword_281350A88, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3470, qword_224DB38B0);
  sub_224A33088(&qword_281350B90, &qword_27D6F3470, qword_224DB38B0, MEMORY[0x277D83970]);
  sub_224DAF788();
  (*(v0 + 104))(v3, *MEMORY[0x277D85260], v10);
  result = sub_224DAF418();
  qword_27D6F4DB0 = result;
  return result;
}

uint64_t sub_224BE7E7C(uint64_t a1)
{
  sub_224DAEE78();
}

unint64_t sub_224BE7F88@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_224BF66C0(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_224BE7FB8(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xED0000726F74696ELL;
  v4 = 0x6F4D656369766564;
  v5 = 0x8000000224DC45E0;
  v6 = 0xE800000000000000;
  v7 = 0x736C6F72746E6F63;
  if (v2 != 4)
  {
    v7 = 0x6974697669746361;
    v6 = 0xEA00000000007365;
  }

  if (v2 == 3)
  {
    v7 = 0xD000000000000016;
  }

  else
  {
    v5 = v6;
  }

  v8 = 0xEA0000000000736ELL;
  v9 = 0xD00000000000001CLL;
  if (v2 == 1)
  {
    v9 = 0x6F69736E65747865;
  }

  else
  {
    v8 = 0x8000000224DC45C0;
  }

  if (*v1)
  {
    v4 = v9;
    v3 = v8;
  }

  if (*v1 <= 2u)
  {
    v10 = v4;
  }

  else
  {
    v10 = v7;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v10;
  a1[1] = v3;
}

unint64_t sub_224BE808C()
{
  v1 = *v0;
  v2 = 0x6F4D656369766564;
  v3 = 0x736C6F72746E6F63;
  if (v1 != 4)
  {
    v3 = 0x6974697669746361;
  }

  if (v1 == 3)
  {
    v3 = 0xD000000000000016;
  }

  v4 = 0xD00000000000001CLL;
  if (v1 == 1)
  {
    v4 = 0x6F69736E65747865;
  }

  if (*v0)
  {
    v2 = v4;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_224BE815C()
{
  BSDispatchQueueAssert();
  if ([*(v0 + OBJC_IVAR____TtC10ChronoCoreP33_2559684BF6D015C60DA4DF344EC1B12920ChronoServicesClient__queue_connection) remoteTarget])
  {
    sub_224DAF758();
    swift_unknownObjectRelease();
  }

  else
  {
    v2 = 0u;
    v3 = 0u;
  }

  v4[0] = v2;
  v4[1] = v3;
  if (!*(&v3 + 1))
  {
    return sub_224A3311C(v4, &qword_27D6F4760, &unk_224DB3680);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5040, &unk_224DBADF8);
  result = swift_dynamicCast();
  if (result)
  {
    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_224BE8240()
{
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F30D0, &unk_224DB2AC0);
  v1 = *(v33 - 8);
  MEMORY[0x28223BE20](v33, v2);
  v31 = v29 - v3;
  BSDispatchQueueAssert();
  *(v0 + OBJC_IVAR____TtC10ChronoCoreP33_2559684BF6D015C60DA4DF344EC1B12920ChronoServicesClient__queue_invalidated) = 1;
  v4 = OBJC_IVAR____TtC10ChronoCoreP33_2559684BF6D015C60DA4DF344EC1B12920ChronoServicesClient__queue_widgetHostIdentities;
  swift_beginAccess();
  v5 = *(v0 + v4);
  v6 = v5 + 56;
  v7 = 1 << *(v5 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(v5 + 56);
  v30 = (v0 + OBJC_IVAR____TtC10ChronoCoreP33_2559684BF6D015C60DA4DF344EC1B12920ChronoServicesClient_widgetHostService);
  v10 = (v7 + 63) >> 6;
  v29[2] = v1 + 16;
  v32 = v1;
  v29[0] = v0;
  v29[1] = v1 + 8;
  v34 = v5;

  v11 = 0;
  if (v9)
  {
    while (1)
    {
      v12 = v11;
LABEL_9:
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v14 = v33;
      v16 = v31;
      v15 = v32;
      (*(v32 + 16))(v31, *(v34 + 48) + *(v32 + 72) * (v13 | (v12 << 6)), v33);
      v18 = v30[3];
      v17 = v30[4];
      __swift_project_boxed_opaque_existential_1(v30, v18);
      (*(*(v17 + 8) + 72))(v16, v18);
      (*(v15 + 8))(v16, v14);
      if (!v9)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v12 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      __break(1u);
      goto LABEL_23;
    }

    if (v12 >= v10)
    {
      break;
    }

    v9 = *(v6 + 8 * v12);
    ++v11;
    if (v9)
    {
      v11 = v12;
      goto LABEL_9;
    }
  }

  v19 = OBJC_IVAR____TtC10ChronoCoreP33_2559684BF6D015C60DA4DF344EC1B12920ChronoServicesClient__queue_serviceAssertions;
  v20 = v29[0];
  swift_beginAccess();
  v21 = *(v20 + v19);
  v22 = 1 << *(v21 + 32);
  v23 = -1;
  if (v22 < 64)
  {
    v23 = ~(-1 << v22);
  }

  v24 = v23 & *(v21 + 64);
  v25 = (v22 + 63) >> 6;
  swift_bridgeObjectRetain_n();
  v26 = 0;
  while (v24)
  {
    v27 = v26;
LABEL_19:
    v28 = __clz(__rbit64(v24));
    v24 &= v24 - 1;
    [*(*(v21 + 56) + ((v27 << 9) | (8 * v28))) invalidate];
  }

  while (1)
  {
    v27 = v26 + 1;
    if (__OFADD__(v26, 1))
    {
      break;
    }

    if (v27 >= v25)
    {

      return;
    }

    v24 = *(v21 + 64 + 8 * v27);
    ++v26;
    if (v24)
    {
      v26 = v27;
      goto LABEL_19;
    }
  }

LABEL_23:
  __break(1u);
}

BOOL sub_224BE8550(uint64_t a1)
{
  BSDispatchQueueAssert();
  v3 = OBJC_IVAR____TtC10ChronoCoreP33_2559684BF6D015C60DA4DF344EC1B12920ChronoServicesClient__queue_serviceAssertionIDs;
  swift_beginAccess();
  v4 = *(v1 + v3);
  if (*(v4 + 16))
  {

    v5 = sub_224A5C3D0(a1);
    if (v6)
    {
      v7 = *(*(v4 + 56) + 8 * v5);

      v8 = *(v7 + 16);

      return v8 != 0;
    }
  }

  return 0;
}

id sub_224BE8638()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ChronoServicesClient();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_224BE88C0(uint64_t a1)
{
  if (qword_281352038 != -1)
  {
    swift_once();
  }

  BSDispatchQueueAssertMain();
  sub_224CC71CC();
  sub_224DAD848();
  sub_224DAD848();
  return sub_224DAD4F8();
}

uint64_t sub_224BE89EC()
{
  BSDispatchQueueAssert();
  sub_224A3796C(v0 + OBJC_IVAR____TtC10ChronoCoreP33_2559684BF6D015C60DA4DF344EC1B12920ChronoServicesClient_stuckPairedRelationshipRepairer, v2, &qword_27D6F5180, &unk_224DBAEA8);
  if (!v3)
  {
    return sub_224A3311C(v2, &qword_27D6F5180, &unk_224DBAEA8);
  }

  __swift_project_boxed_opaque_existential_1(v2, v3);
  sub_224DAAA58();
  return __swift_destroy_boxed_opaque_existential_1(v2);
}

uint64_t sub_224BE8AF0(uint64_t a1)
{
  v6 = MEMORY[0x277D84F90];
  v2 = *(a1 + 16);
  sub_224DAF9E8();
  if (!v2)
  {
    return v6;
  }

  for (i = a1 + 32; ; i += 32)
  {
    sub_224A33E0C(i, v5);
    sub_224A3B79C(0, &qword_281350880, 0x277CFA240);
    if ((swift_dynamicCast() & 1) == 0)
    {
      break;
    }

    sub_224DAF9B8();
    sub_224DAF9F8();
    sub_224DAFA08();
    sub_224DAF9C8();
    if (!--v2)
    {
      return v6;
    }
  }

  return 0;
}

uint64_t sub_224BE8BFC(uint64_t a1)
{
  v2 = *(a1 + 16);
  v12 = MEMORY[0x277D84F90];
  sub_224A3DFD8(0, v2, 0);
  v3 = v12;
  if (v2)
  {
    for (i = a1 + 32; ; i += 32)
    {
      sub_224A33E0C(i, v11);
      if ((swift_dynamicCast() & 1) == 0)
      {
        break;
      }

      v12 = v3;
      v6 = *(v3 + 16);
      v5 = *(v3 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_224A3DFD8((v5 > 1), v6 + 1, 1);
        v3 = v12;
      }

      *(v3 + 16) = v6 + 1;
      v7 = v3 + 16 * v6;
      *(v7 + 32) = v9;
      *(v7 + 40) = v10;
      if (!--v2)
      {
        return v3;
      }
    }

    return 0;
  }

  return v3;
}

void sub_224BE8DA8(uint64_t a1, uint64_t a2)
{
  BSDispatchQueueAssert();
  if ([objc_opt_self() isPreflightFeatureEnabled])
  {
    if (qword_281351708 != -1)
    {
      swift_once();
    }

    v5 = sub_224DAB258();
    __swift_project_value_buffer(v5, qword_281365168);
    oslog = sub_224DAB228();
    v6 = sub_224DAF2A8();
    if (os_log_type_enabled(oslog, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_224A2F000, oslog, v6, "Ignoring request to discover descriptors because device has PDU enabled", v7, 2u);
      MEMORY[0x22AA5EED0](v7, -1, -1);
    }
  }

  else
  {
    sub_224A3317C(v2 + OBJC_IVAR____TtC10ChronoCoreP33_2559684BF6D015C60DA4DF344EC1B12920ChronoServicesClient_descriptorService, v13);
    __swift_project_boxed_opaque_existential_1(v13, v14);
    sub_224DAF938();

    MEMORY[0x22AA5D210](a1, a2);
    sub_224DACA98();

    __swift_destroy_boxed_opaque_existential_1(v13);
    if (qword_281352038 != -1)
    {
      swift_once();
    }

    v8 = *(qword_2813651B0 + 200);
    if (v8)
    {
      swift_beginAccess();
      sub_224A3317C(v8 + 16, v13);
      v9 = v14;
      v10 = v15;
      __swift_project_boxed_opaque_existential_1(v13, v14);
      v11 = *(v10 + 40);

      v11(a1, a2, v9, v10);

      __swift_destroy_boxed_opaque_existential_1(v13);
    }
  }
}

uint64_t sub_224BE91A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3900, &unk_224DB4640);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v9);
  v11 = &v15[-1] - v10;
  BSDispatchQueueAssert();

  sub_224DA9FF8();
  sub_224A3317C(v4 + OBJC_IVAR____TtC10ChronoCoreP33_2559684BF6D015C60DA4DF344EC1B12920ChronoServicesClient_descriptorService, v15);
  __swift_project_boxed_opaque_existential_1(v15, v15[3]);
  v12 = swift_allocObject();
  *(v12 + 16) = a3;
  *(v12 + 24) = a4;

  sub_224DACAA8();

  (*(v8 + 8))(v11, v7);
  return __swift_destroy_boxed_opaque_existential_1(v15);
}

uint64_t sub_224BE9398(void *a1, uint64_t *a2)
{
  v5 = sub_224DACB98();
  v57 = *(v5 - 8);
  v58 = v5;
  MEMORY[0x28223BE20](v5, v6);
  v56 = (&v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F3920, &qword_224DB35B0);
  MEMORY[0x28223BE20](v8 - 8, v9);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F6570, &qword_224DB3C40);
  v59 = *(v10 - 8);
  MEMORY[0x28223BE20](v10, v11);
  v13 = &v52 - v12;
  BSDispatchQueueAssert();
  __swift_project_boxed_opaque_existential_1(&v2[OBJC_IVAR____TtC10ChronoCoreP33_2559684BF6D015C60DA4DF344EC1B12920ChronoServicesClient_keybagStateProvider], *&v2[OBJC_IVAR____TtC10ChronoCoreP33_2559684BF6D015C60DA4DF344EC1B12920ChronoServicesClient_keybagStateProvider + 24]);
  result = sub_224DAA158();
  if (result)
  {
    v53 = a2;
    v55 = v10;
    v15 = [a1 extensionBundleIdentifier];
    sub_224DAEE18();

    sub_224DA9FF8();
    sub_224DAA278();
    __swift_project_boxed_opaque_existential_1(&v2[OBJC_IVAR____TtC10ChronoCoreP33_2559684BF6D015C60DA4DF344EC1B12920ChronoServicesClient_extensionService], *&v2[OBJC_IVAR____TtC10ChronoCoreP33_2559684BF6D015C60DA4DF344EC1B12920ChronoServicesClient_extensionService + 24]);
    v54 = v13;
    sub_224DAC6C8();
    if (v61)
    {
      sub_224A36F98(&v60, v62);
      sub_224DAE558();
      __swift_project_boxed_opaque_existential_1(v62, v62[3]);
      sub_224DAE338();
      v16 = [a1 kind];
      sub_224DAEE18();

      v17 = sub_224DAE548();
      if (qword_2813514B8 != -1)
      {
        swift_once();
      }

      v18 = sub_224DAB258();
      __swift_project_value_buffer(v18, qword_281364E50);
      v19 = a1;
      v20 = v17;
      v21 = v2;
      v22 = sub_224DAB228();
      v23 = sub_224DAF2A8();

      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        v25 = swift_slowAlloc();
        *v24 = 138543874;
        *(v24 + 4) = v20;
        *v25 = v20;
        *(v24 + 12) = 1026;
        v26 = v20;
        v27 = [v19 allowCostOverride];

        *(v24 + 14) = v27;
        *(v24 + 18) = 2114;
        BSDispatchQueueAssert();
        v28 = [*&v21[OBJC_IVAR____TtC10ChronoCoreP33_2559684BF6D015C60DA4DF344EC1B12920ChronoServicesClient__queue_connection] remoteProcess];
        *(v24 + 20) = v28;
        v25[1] = v28;
        _os_log_impl(&dword_224A2F000, v22, v23, "Received request to reload %{public}@ - (allowCostOverride: %{BOOL,public}d) from %{public}@", v24, 0x1Cu);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F69F0, &unk_224DB3900);
        swift_arrayDestroy();
        MEMORY[0x22AA5EED0](v25, -1, -1);
        MEMORY[0x22AA5EED0](v24, -1, -1);
      }

      else
      {

        v22 = v19;
      }

      __swift_project_boxed_opaque_existential_1(&v21[OBJC_IVAR____TtC10ChronoCoreP33_2559684BF6D015C60DA4DF344EC1B12920ChronoServicesClient_timelineService], *&v21[OBJC_IVAR____TtC10ChronoCoreP33_2559684BF6D015C60DA4DF344EC1B12920ChronoServicesClient_timelineService + 24]);
      v43 = swift_allocObject();
      v44 = v20;
      BSDispatchQueueAssert();
      v43[2] = [*&v21[OBJC_IVAR____TtC10ChronoCoreP33_2559684BF6D015C60DA4DF344EC1B12920ChronoServicesClient__queue_connection] remoteProcess];
      v45 = [v19 reason];
      v46 = sub_224DAEE18();
      v48 = v47;

      v43[3] = v46;
      v43[4] = v48;
      v49 = v56;
      v50 = v57;
      *v56 = v43;
      v51 = v58;
      (*(v50 + 104))(v49, *MEMORY[0x277CF9B90], v58);
      [v19 allowCostOverride];
      sub_224DAC768();

      (*(v50 + 8))(v49, v51);
      (*(v59 + 8))(v54, v55);
      return __swift_destroy_boxed_opaque_existential_1(v62);
    }

    else
    {
      sub_224A3311C(&v60, &unk_27D6F4700, &unk_224DB3A10);
      if (qword_2813514B8 != -1)
      {
        swift_once();
      }

      v29 = sub_224DAB258();
      __swift_project_value_buffer(v29, qword_281364E50);
      v30 = a1;
      v31 = sub_224DAB228();
      v32 = sub_224DAF288();

      if (os_log_type_enabled(v31, v32))
      {
        v33 = swift_slowAlloc();
        v34 = swift_slowAlloc();
        v62[0] = v34;
        *v33 = 136446210;
        v35 = [v30 extensionBundleIdentifier];
        v36 = sub_224DAEE18();
        v38 = v37;

        v39 = sub_224A33F74(v36, v38, v62);

        *(v33 + 4) = v39;
        _os_log_impl(&dword_224A2F000, v31, v32, "[ChronoServer] Unable to reload widget for extension bundle identifier [%{public}s] because it is not a valid widget extension identity.", v33, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v34);
        MEMORY[0x22AA5EED0](v34, -1, -1);
        MEMORY[0x22AA5EED0](v33, -1, -1);
      }

      v41 = v54;
      v40 = v55;
      v42 = v53;
      if (v53)
      {
        sub_224A3B79C(0, &qword_281350860, 0x277CCA9B8);
        *v42 = sub_224CBC42C(24, 0, 0);
      }

      return (*(v59 + 8))(v41, v40);
    }
  }

  else if (a2)
  {
    sub_224A3B79C(0, &qword_281350860, 0x277CCA9B8);
    result = sub_224CBC42C(10, 0, 0);
    *a2 = result;
  }

  return result;
}

uint64_t sub_224BE9BB8(uint64_t a1, uint64_t a2)
{
  v52[5] = *MEMORY[0x277D85DE8];
  v3 = sub_224DAE4F8();
  v45 = *(v3 - 8);
  v46 = v3;
  MEMORY[0x28223BE20](v3, v4);
  v43 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_224DAB728();
  v42 = *(v44 - 8);
  v7 = MEMORY[0x28223BE20](v44, v6);
  v9 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7, v10);
  v12 = &v41 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F3920, &qword_224DB35B0);
  MEMORY[0x28223BE20](v13 - 8, v14);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F6570, &qword_224DB3C40);
  v47 = *(v15 - 8);
  v48 = v15;
  MEMORY[0x28223BE20](v15, v16);
  v18 = &v41 - v17;
  BSDispatchQueueAssert();
  __swift_project_boxed_opaque_existential_1((v2 + OBJC_IVAR____TtC10ChronoCoreP33_2559684BF6D015C60DA4DF344EC1B12920ChronoServicesClient_keybagStateProvider), *(v2 + OBJC_IVAR____TtC10ChronoCoreP33_2559684BF6D015C60DA4DF344EC1B12920ChronoServicesClient_keybagStateProvider + 24));
  if ((sub_224DAA158() & 1) == 0)
  {
    if (qword_2813514B8 != -1)
    {
      swift_once();
    }

    v28 = sub_224DAB258();
    __swift_project_value_buffer(v28, qword_281364E50);
    v29 = sub_224DAB228();
    v30 = sub_224DAF288();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v52[0] = v32;
      *v31 = 136446210;
      *(v31 + 4) = sub_224A33F74(0xD00000000000002BLL, 0x8000000224DCA770, v52);
      _os_log_impl(&dword_224A2F000, v29, v30, "%{public}s rejected because not yet unlocked from boot.", v31, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v32);
      MEMORY[0x22AA5EED0](v32, -1, -1);
      MEMORY[0x22AA5EED0](v31, -1, -1);
    }

    return 0;
  }

  if (qword_281352038 != -1)
  {
    swift_once();
  }

  sub_224A3317C(qword_2813651B0 + 16, v52);

  sub_224DA9FF8();
  sub_224DAA278();
  __swift_project_boxed_opaque_existential_1((v2 + OBJC_IVAR____TtC10ChronoCoreP33_2559684BF6D015C60DA4DF344EC1B12920ChronoServicesClient_extensionService), *(v2 + OBJC_IVAR____TtC10ChronoCoreP33_2559684BF6D015C60DA4DF344EC1B12920ChronoServicesClient_extensionService + 24));
  sub_224DAC6C8();
  if (!v50)
  {
    sub_224A3311C(&v49, &unk_27D6F4700, &unk_224DB3A10);
    if (qword_2813514B8 != -1)
    {
      swift_once();
    }

    v33 = sub_224DAB258();
    __swift_project_value_buffer(v33, qword_281364E50);
    v34 = sub_224DAB228();
    v35 = sub_224DAF288();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v51[0] = v37;
      *v36 = 136446210;
      *(v36 + 4) = sub_224A33F74(0xD00000000000002BLL, 0x8000000224DCA770, v51);
      _os_log_impl(&dword_224A2F000, v34, v35, "%{public}s rejected because extension not found.", v36, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v37);
      MEMORY[0x22AA5EED0](v37, -1, -1);
      MEMORY[0x22AA5EED0](v36, -1, -1);
    }

    (*(v47 + 8))(v18, v48);
    __swift_destroy_boxed_opaque_existential_1(v52);
    return 0;
  }

  sub_224A36F98(&v49, v51);
  __swift_project_boxed_opaque_existential_1(v52, v52[3]);
  __swift_project_boxed_opaque_existential_1(v51, v51[3]);
  v19 = sub_224DAE338();
  sub_224DADA58();

  __swift_project_boxed_opaque_existential_1(&v49, v50);
  sub_224DAD168();
  __swift_destroy_boxed_opaque_existential_1(&v49);
  v20 = v42;
  v21 = v44;
  (*(v42 + 16))(v9, v12, v44);
  v22 = v43;
  sub_224DAE4D8();
  v23 = objc_opt_self();
  v24 = sub_224DAE4C8();
  *&v49 = 0;
  v25 = [v23 archivedDataWithRootObject:v24 requiringSecureCoding:1 error:&v49];

  v26 = v49;
  if (v25)
  {
    v27 = sub_224DA96D8();
  }

  else
  {
    v39 = v26;
    v40 = sub_224DA9528();

    swift_willThrow();
    v27 = 0;
  }

  (*(v45 + 8))(v22, v46);
  (*(v20 + 8))(v12, v21);
  (*(v47 + 8))(v18, v48);
  __swift_destroy_boxed_opaque_existential_1(v51);
  __swift_destroy_boxed_opaque_existential_1(v52);
  return v27;
}

uint64_t sub_224BEA3D4(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F56C0, &unk_224DB3580);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v60 = &v50 - v5;
  v57 = sub_224DAA428();
  v55 = *(v57 - 8);
  MEMORY[0x28223BE20](v57, v6);
  v54 = &v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F30D0, &unk_224DB2AC0);
  v58 = *(v8 - 8);
  v59 = v8;
  MEMORY[0x28223BE20](v8, v9);
  v11 = &v50 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F30E0, &unk_224DB2AD0);
  v13 = *(v12 - 8);
  v15 = MEMORY[0x28223BE20](v12, v14);
  v17 = &v50 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v15, v18);
  v21 = &v50 - v20;
  MEMORY[0x28223BE20](v19, v22);
  v24 = &v50 - v23;
  v52 = *&v2[OBJC_IVAR____TtC10ChronoCoreP33_2559684BF6D015C60DA4DF344EC1B12920ChronoServicesClient__queue];
  BSDispatchQueueAssert();

  sub_224DA9FF8();
  v25 = *(v13 + 16);
  v25(v21, v24, v12);
  v56 = v11;
  sub_224DAA228();
  if (qword_2813514B8 != -1)
  {
    swift_once();
  }

  v26 = sub_224DAB258();
  __swift_project_value_buffer(v26, qword_281364E50);
  v53 = v24;
  v25(v17, v24, v12);
  v27 = v2;
  v28 = sub_224DAB228();
  v29 = sub_224DAF2A8();

  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v50 = swift_slowAlloc();
    v51 = swift_slowAlloc();
    v61[0] = v51;
    *v30 = 136446466;
    sub_224A33088(&qword_281351990, &qword_27D6F30E0, &unk_224DB2AD0, MEMORY[0x277CF9FC8]);
    v31 = sub_224DAFD28();
    v33 = v32;
    v34 = v17;
    v35 = *(v13 + 8);
    v35(v34, v12);
    v36 = sub_224A33F74(v31, v33, v61);

    *(v30 + 4) = v36;
    *(v30 + 12) = 2114;
    BSDispatchQueueAssert();
    v37 = [*&v27[OBJC_IVAR____TtC10ChronoCoreP33_2559684BF6D015C60DA4DF344EC1B12920ChronoServicesClient__queue_connection] remoteProcess];
    *(v30 + 14) = v37;
    v38 = v50;
    *v50 = v37;
    _os_log_impl(&dword_224A2F000, v28, v29, "Removing widget host with identifier %{public}s for process %{public}@", v30, 0x16u);
    sub_224A3311C(v38, &unk_27D6F69F0, &unk_224DB3900);
    MEMORY[0x22AA5EED0](v38, -1, -1);
    v39 = v51;
    __swift_destroy_boxed_opaque_existential_1(v51);
    MEMORY[0x22AA5EED0](v39, -1, -1);
    MEMORY[0x22AA5EED0](v30, -1, -1);
  }

  else
  {

    v40 = v17;
    v35 = *(v13 + 8);
    v35(v40, v12);
  }

  v41 = *&v27[OBJC_IVAR____TtC10ChronoCoreP33_2559684BF6D015C60DA4DF344EC1B12920ChronoServicesClient_widgetHostService + 24];
  v42 = *&v27[OBJC_IVAR____TtC10ChronoCoreP33_2559684BF6D015C60DA4DF344EC1B12920ChronoServicesClient_widgetHostService + 32];
  __swift_project_boxed_opaque_existential_1(&v27[OBJC_IVAR____TtC10ChronoCoreP33_2559684BF6D015C60DA4DF344EC1B12920ChronoServicesClient_widgetHostService], v41);
  v61[0] = 0;
  v44 = v54;
  v43 = v55;
  v45 = v57;
  (*(v55 + 104))(v54, *MEMORY[0x277CFA038], v57);
  v46 = *(*(v42 + 8) + 56);
  v47 = v56;
  v46(v61, v44, v56, v41);
  (*(v43 + 8))(v44, v45);
  swift_beginAccess();
  v48 = v60;
  sub_224B024C8(v47, v60);
  sub_224A3311C(v48, &qword_27D6F56C0, &unk_224DB3580);
  swift_endAccess();
  (*(v58 + 8))(v47, v59);
  return (v35)(v53, v12);
}

uint64_t sub_224BEA9FC(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t))
{
  v6 = sub_224DAEE18();
  v8 = v7;
  v9 = a1;
  a4(v6, v8);
}

uint64_t sub_224BEAA68(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v80 = a2;
  v75 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4210, &unk_224DB5FE0);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v82 = &v67 - v7;
  v8 = sub_224DAA428();
  v9 = *(v8 - 1);
  MEMORY[0x28223BE20](v8, v10);
  v76 = &v67 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F30D0, &unk_224DB2AC0);
  v84 = *(v12 - 8);
  v85 = v12;
  v14 = MEMORY[0x28223BE20](v12, v13);
  v74 = &v67 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v14, v16);
  v73 = &v67 - v18;
  MEMORY[0x28223BE20](v17, v19);
  v83 = &v67 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F30E0, &unk_224DB2AD0);
  v22 = *(v21 - 8);
  v24 = MEMORY[0x28223BE20](v21, v23);
  v79 = &v67 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x28223BE20](v24, v26);
  v29 = &v67 - v28;
  MEMORY[0x28223BE20](v27, v30);
  v32 = &v67 - v31;
  v72 = *&v4[OBJC_IVAR____TtC10ChronoCoreP33_2559684BF6D015C60DA4DF344EC1B12920ChronoServicesClient__queue];
  BSDispatchQueueAssert();

  sub_224DA9FF8();
  if (qword_2813514B8 != -1)
  {
    swift_once();
  }

  v33 = sub_224DAB258();
  __swift_project_value_buffer(v33, qword_281364E50);
  v77 = *(v22 + 16);
  v77(v29, v32, v21);
  v34 = v4;
  v35 = sub_224DAB228();
  v36 = sub_224DAF2A8();

  v37 = os_log_type_enabled(v35, v36);
  v86 = v21;
  v81 = v22;
  if (v37)
  {
    v38 = swift_slowAlloc();
    v70 = swift_slowAlloc();
    v71 = swift_slowAlloc();
    v87[0] = v71;
    *v38 = 136446466;
    sub_224A33088(&qword_281351990, &qword_27D6F30E0, &unk_224DB2AD0, MEMORY[0x277CF9FC8]);
    v69 = v36;
    v39 = v34;
    v40 = sub_224DAFD28();
    v68 = v35;
    v41 = v32;
    v42 = v9;
    v43 = v8;
    v45 = v44;
    v78 = *(v22 + 8);
    v78(v29, v86);
    v46 = v40;
    v34 = v39;
    v47 = sub_224A33F74(v46, v45, v87);
    v8 = v43;
    v9 = v42;
    v32 = v41;

    *(v38 + 4) = v47;
    *(v38 + 12) = 2114;
    BSDispatchQueueAssert();
    v48 = [*&v39[OBJC_IVAR____TtC10ChronoCoreP33_2559684BF6D015C60DA4DF344EC1B12920ChronoServicesClient__queue_connection] remoteProcess];
    *(v38 + 14) = v48;
    v49 = v70;
    *v70 = v48;
    v50 = v68;
    _os_log_impl(&dword_224A2F000, v68, v69, "Widget configuration changed for widget host with identifier %{public}s from process %{public}@", v38, 0x16u);
    sub_224A3311C(v49, &unk_27D6F69F0, &unk_224DB3900);
    MEMORY[0x22AA5EED0](v49, -1, -1);
    v51 = v71;
    __swift_destroy_boxed_opaque_existential_1(v71);
    MEMORY[0x22AA5EED0](v51, -1, -1);
    v52 = v38;
    v21 = v86;
    MEMORY[0x22AA5EED0](v52, -1, -1);
  }

  else
  {

    v78 = *(v22 + 8);
    v78(v29, v21);
  }

  v77(v79, v32, v21);
  v53 = v83;
  sub_224DAA228();
  [v80 unsignedIntegerValue];
  v54 = v82;
  sub_224DAA418();
  if ((*(v9 + 48))(v54, 1, v8) == 1)
  {
    (*(v84 + 8))(v53, v85);
    v78(v32, v21);
    return sub_224A3311C(v54, &qword_27D6F4210, &unk_224DB5FE0);
  }

  else
  {
    v56 = v76;
    (*(v9 + 32))(v76, v54, v8);
    v80 = v8;
    v57 = *&v34[OBJC_IVAR____TtC10ChronoCoreP33_2559684BF6D015C60DA4DF344EC1B12920ChronoServicesClient_widgetHostService + 24];
    v58 = *&v34[OBJC_IVAR____TtC10ChronoCoreP33_2559684BF6D015C60DA4DF344EC1B12920ChronoServicesClient_widgetHostService + 32];
    __swift_project_boxed_opaque_existential_1(&v34[OBJC_IVAR____TtC10ChronoCoreP33_2559684BF6D015C60DA4DF344EC1B12920ChronoServicesClient_widgetHostService], v57);
    v87[0] = v75;
    v59 = *(v58 + 8);
    v82 = v32;
    v60 = *(v59 + 56);
    v61 = v75;
    v60(v87, v56, v53, v57, v59);

    v63 = v84;
    v62 = v85;
    v64 = v74;
    (*(v84 + 16))(v74, v53, v85);
    swift_beginAccess();
    v65 = v73;
    sub_224A67790(v73, v64);
    v66 = *(v63 + 8);
    v66(v65, v62);
    swift_endAccess();
    (*(v9 + 8))(v56, v80);
    v66(v53, v62);
    return (v78)(v82, v86);
  }
}

uint64_t sub_224BEB284(void *a1, uint64_t a2, uint64_t a3)
{
  v68 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4210, &unk_224DB5FE0);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v56[-v6];
  v8 = sub_224DAA428();
  v71 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v9);
  v62 = &v56[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F30D0, &unk_224DB2AC0);
  v69 = *(v11 - 8);
  v70 = v11;
  MEMORY[0x28223BE20](v11, v12);
  v67 = &v56[-v13];
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F30E0, &unk_224DB2AD0);
  v15 = *(v14 - 8);
  v17 = MEMORY[0x28223BE20](v14, v16);
  v64 = &v56[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v20 = MEMORY[0x28223BE20](v17, v19);
  v22 = &v56[-v21];
  MEMORY[0x28223BE20](v20, v23);
  v25 = &v56[-v24];
  v61 = *&v3[OBJC_IVAR____TtC10ChronoCoreP33_2559684BF6D015C60DA4DF344EC1B12920ChronoServicesClient__queue];
  BSDispatchQueueAssert();

  sub_224DA9FF8();
  if (qword_2813514B8 != -1)
  {
    swift_once();
  }

  v26 = sub_224DAB258();
  __swift_project_value_buffer(v26, qword_281364E50);
  v27 = *(v15 + 16);
  v65 = v25;
  v27(v22, v25, v14);
  v28 = v3;
  v29 = sub_224DAB228();
  v30 = sub_224DAF2A8();

  v31 = os_log_type_enabled(v29, v30);
  v66 = v15;
  if (v31)
  {
    v32 = swift_slowAlloc();
    v60 = v8;
    v33 = v32;
    v58 = swift_slowAlloc();
    v59 = swift_slowAlloc();
    v72 = v59;
    *v33 = 136446466;
    sub_224A33088(&qword_281351990, &qword_27D6F30E0, &unk_224DB2AD0, MEMORY[0x277CF9FC8]);
    v57 = v30;
    v34 = sub_224DAFD28();
    v35 = v14;
    v36 = v27;
    v37 = v28;
    v38 = v7;
    v40 = v39;
    v41 = v22;
    v42 = v35;
    v63 = *(v15 + 8);
    v63(v41, v35);
    v43 = sub_224A33F74(v34, v40, &v72);
    v7 = v38;
    v28 = v37;
    v27 = v36;

    *(v33 + 4) = v43;
    *(v33 + 12) = 2114;
    BSDispatchQueueAssert();
    v44 = [*&v28[OBJC_IVAR____TtC10ChronoCoreP33_2559684BF6D015C60DA4DF344EC1B12920ChronoServicesClient__queue_connection] remoteProcess];
    *(v33 + 14) = v44;
    v45 = v58;
    *v58 = v44;
    _os_log_impl(&dword_224A2F000, v29, v57, "Widget activation state changed for widget host with identifier %{public}s from process %{public}@", v33, 0x16u);
    sub_224A3311C(v45, &unk_27D6F69F0, &unk_224DB3900);
    MEMORY[0x22AA5EED0](v45, -1, -1);
    v46 = v59;
    __swift_destroy_boxed_opaque_existential_1(v59);
    MEMORY[0x22AA5EED0](v46, -1, -1);
    v47 = v33;
    v8 = v60;
    MEMORY[0x22AA5EED0](v47, -1, -1);

    v14 = v42;
  }

  else
  {

    v63 = *(v15 + 8);
    v63(v22, v14);
  }

  v48 = v65;
  v27(v64, v65, v14);
  v49 = v67;
  sub_224DAA228();
  [v68 unsignedIntegerValue];
  sub_224DAA418();
  v50 = v71;
  if ((*(v71 + 48))(v7, 1, v8) == 1)
  {
    (*(v69 + 8))(v49, v70);
    v63(v48, v14);
    return sub_224A3311C(v7, &qword_27D6F4210, &unk_224DB5FE0);
  }

  else
  {
    v52 = v62;
    (*(v50 + 32))(v62, v7, v8);
    v53 = &v28[OBJC_IVAR____TtC10ChronoCoreP33_2559684BF6D015C60DA4DF344EC1B12920ChronoServicesClient_widgetHostService];
    v54 = *&v28[OBJC_IVAR____TtC10ChronoCoreP33_2559684BF6D015C60DA4DF344EC1B12920ChronoServicesClient_widgetHostService + 24];
    v55 = *&v28[OBJC_IVAR____TtC10ChronoCoreP33_2559684BF6D015C60DA4DF344EC1B12920ChronoServicesClient_widgetHostService + 32];
    __swift_project_boxed_opaque_existential_1(v53, v54);
    (*(*(v55 + 8) + 64))(v52, v49, v54);
    (*(v50 + 8))(v52, v8);
    (*(v69 + 8))(v49, v70);
    return (v63)(v48, v14);
  }
}

id sub_224BEB984(uint64_t a1)
{
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5160, &qword_224DBAE90);
  v3 = MEMORY[0x28223BE20](v58, v2);
  v64 = &v54 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v3, v5);
  v57 = &v54 - v7;
  MEMORY[0x28223BE20](v6, v8);
  v65 = &v54 - v9;
  v66 = sub_224A876C0(MEMORY[0x277D84F90]);
  v10 = a1 + 64;
  v11 = 1 << *(a1 + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & *(a1 + 64);
  v14 = (v11 + 63) >> 6;
  v59 = a1;

  v15 = 0;
  v55 = v14;
  v56 = a1 + 64;
  while (v13)
  {
LABEL_11:
    v19 = __clz(__rbit64(v13)) | (v15 << 6);
    v20 = v59;
    v21 = *(v59 + 48);
    v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F30E0, &unk_224DB2AD0);
    v23 = *(v22 - 8);
    v24 = v65;
    (*(v23 + 16))(v65, v21 + *(v23 + 72) * v19, v22);
    v25 = *(*(v20 + 56) + 8 * v19);
    v27 = v57;
    v26 = v58;
    *(v24 + *(v58 + 48)) = v25;
    sub_224A3796C(v24, v27, &unk_27D6F5160, &qword_224DBAE90);
    v28 = *(v27 + *(v26 + 48));
    v29 = v25;

    v63 = sub_224DA9FE8();
    v31 = v30;
    v60 = *(v23 + 8);
    v61 = v22;
    v60(v27, v22);
    v32 = v64;
    v33 = v31;
    sub_224A3796C(v24, v64, &unk_27D6F5160, &qword_224DBAE90);
    v62 = *(v32 + *(v26 + 48));
    v34 = v66;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v67 = v34;
    v36 = v63;
    v38 = sub_224A3A40C(v63, v33);
    v39 = *(v34 + 16);
    v40 = (v37 & 1) == 0;
    v41 = v39 + v40;
    if (__OFADD__(v39, v40))
    {
      goto LABEL_24;
    }

    v42 = v37;
    if (*(v34 + 24) >= v41)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        if (v37)
        {
          goto LABEL_4;
        }
      }

      else
      {
        sub_224B28008();
        if (v42)
        {
          goto LABEL_4;
        }
      }
    }

    else
    {
      sub_224A87A6C(v41, isUniquelyReferenced_nonNull_native);
      v43 = sub_224A3A40C(v36, v33);
      if ((v42 & 1) != (v44 & 1))
      {
        goto LABEL_26;
      }

      v38 = v43;
      if (v42)
      {
LABEL_4:

        v66 = v67;
        v16 = v67[7];
        v17 = *(v16 + 8 * v38);
        *(v16 + 8 * v38) = v62;

        sub_224A3311C(v65, &unk_27D6F5160, &qword_224DBAE90);
        goto LABEL_5;
      }
    }

    v45 = v67;
    v67[(v38 >> 6) + 8] |= 1 << v38;
    v46 = (v45[6] + 16 * v38);
    *v46 = v36;
    v46[1] = v33;
    *(v45[7] + 8 * v38) = v62;
    sub_224A3311C(v65, &unk_27D6F5160, &qword_224DBAE90);
    v47 = v45[2];
    v48 = __OFADD__(v47, 1);
    v49 = v47 + 1;
    if (v48)
    {
      goto LABEL_25;
    }

    v66 = v45;
    v45[2] = v49;
LABEL_5:
    v13 &= v13 - 1;
    v60(v64, v61);
    v14 = v55;
    v10 = v56;
  }

  while (1)
  {
    v18 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v18 >= v14)
    {

      v50 = objc_allocWithZone(swift_getObjCClassFromMetadata());

      sub_224A3B79C(0, &qword_281350958, 0x277CFA360);
      v51 = sub_224DAECC8();

      v52 = [v50 initWithConfigurationsByHost_];

      return v52;
    }

    v13 = *(v10 + 8 * v18);
    ++v15;
    if (v13)
    {
      v15 = v18;
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  result = sub_224DAFDD8();
  __break(1u);
  return result;
}

void sub_224BEBE2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(void, void *))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    swift_beginAccess();
    *(a3 + 16) = 1;
    swift_beginAccess();
    if (*(a4 + 16))
    {
      swift_beginAccess();

      sub_224B0279C(v12);
      swift_endAccess();

      swift_beginAccess();
      *(a4 + 16) = 0;
    }

    swift_beginAccess();
    if (*(a5 + 16) == 1)
    {
      if (qword_281351668 != -1)
      {
        swift_once();
      }

      v13 = sub_224DAB258();
      __swift_project_value_buffer(v13, qword_281365078);
      v14 = sub_224DAB228();
      v15 = sub_224DAF2A8();
      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        *v16 = 0;
        _os_log_impl(&dword_224A2F000, v14, v15, "Widget configuration request timed out - notifying!", v16, 2u);
        MEMORY[0x22AA5EED0](v16, -1, -1);
      }

      sub_224A3B79C(0, &qword_281350860, 0x277CCA9B8);
      v17 = sub_224CBC42C(12, 0, 0);
      a6(0, v17);
    }
  }
}

void sub_224BEC064(unint64_t a1, uint64_t isUniquelyReferenced_nonNull_native, uint64_t a3, void (*a4)(void, void), void *a5)
{
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F30E0, &unk_224DB2AD0);
  v77 = *(v79 - 8);
  MEMORY[0x28223BE20](v79, v10);
  v88 = (v70 - v11);
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F38A8, &unk_224DB4650);
  v13 = MEMORY[0x28223BE20](v82, v12);
  v86 = (v70 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = MEMORY[0x28223BE20](v13, v15);
  v83 = v70 - v17;
  MEMORY[0x28223BE20](v16, v18);
  v87 = (v70 - v19);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F30D0, &unk_224DB2AC0);
  v21 = *(v20 - 8);
  MEMORY[0x28223BE20](v20, v22);
  v24 = (v70 - v23);
  if (qword_281351668 != -1)
  {
LABEL_33:
    swift_once();
  }

  v25 = sub_224DAB258();
  __swift_project_value_buffer(v25, qword_281365078);
  v80 = v21[2];
  v81 = v21 + 2;
  v80(v24, a1, v20);
  v26 = sub_224DAB228();
  v27 = sub_224DAF2A8();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v71 = a4;
    v29 = v28;
    v78 = swift_slowAlloc();
    v90[0] = v78;
    *v29 = 136446210;
    sub_224A33088(&qword_281351860, &unk_27D6F30D0, &unk_224DB2AC0, MEMORY[0x277CFA030]);
    v30 = sub_224DAFD28();
    v84 = isUniquelyReferenced_nonNull_native;
    v31 = a3;
    v32 = a5;
    v34 = v33;
    v85 = v21[1];
    v85(v24, v20);
    v35 = sub_224A33F74(v30, v34, v90);
    a5 = v32;
    a3 = v31;
    isUniquelyReferenced_nonNull_native = v84;

    *(v29 + 4) = v35;
    _os_log_impl(&dword_224A2F000, v26, v27, "Widget configuration received from %{public}s- notifying!", v29, 0xCu);
    v36 = v78;
    __swift_destroy_boxed_opaque_existential_1(v78);
    MEMORY[0x22AA5EED0](v36, -1, -1);
    v37 = v29;
    a4 = v71;
    MEMORY[0x22AA5EED0](v37, -1, -1);
  }

  else
  {

    v85 = v21[1];
    v85(v24, v20);
  }

  swift_beginAccess();
  *(isUniquelyReferenced_nonNull_native + 16) = 0;
  v38 = *(a3 + OBJC_IVAR____TtC10ChronoCoreP33_2559684BF6D015C60DA4DF344EC1B12920ChronoServicesClient_widgetHostService + 24);
  v39 = *(a3 + OBJC_IVAR____TtC10ChronoCoreP33_2559684BF6D015C60DA4DF344EC1B12920ChronoServicesClient_widgetHostService + 32);
  __swift_project_boxed_opaque_existential_1((a3 + OBJC_IVAR____TtC10ChronoCoreP33_2559684BF6D015C60DA4DF344EC1B12920ChronoServicesClient_widgetHostService), v38);
  (*(v39 + 32))(v90, 768, v38, v39);
  if (!v90[5])
  {
    sub_224A3311C(v90, &qword_27D6F50E0, &qword_224DB41A0);
LABEL_29:
    v41 = MEMORY[0x277D84F98];
LABEL_30:
    sub_224A3B79C(0, &qword_281350888, 0x277CFA368);
    v69 = sub_224BEB984(v41);
    a4(v69, 0);

    return;
  }

  a1 = v90;
  v40 = sub_224A86CAC();
  sub_224A699F0(v90);
  if (!v40)
  {
    goto LABEL_29;
  }

  v70[1] = a5;
  v71 = a4;
  v41 = sub_224DA1DE8(MEMORY[0x277D84F90]);
  a5 = v40 + 8;
  v42 = 1 << *(v40 + 32);
  v43 = -1;
  if (v42 < 64)
  {
    v43 = ~(-1 << v42);
  }

  v44 = v43 & v40[8];
  v24 = ((v42 + 63) >> 6);
  v84 = (v21 + 1);
  v70[2] = v77 + 16;
  v75 = (v77 + 8);
  v78 = v40;

  a3 = 0;
  v76 = a5;
  v74 = v24;
  v73 = v20;
  for (i = v21; ; v21 = i)
  {
    if (!v44)
    {
      while (1)
      {
        v47 = a3 + 1;
        if (__OFADD__(a3, 1))
        {
          break;
        }

        if (v47 >= v24)
        {

          a4 = v71;
          goto LABEL_30;
        }

        v44 = a5[v47];
        ++a3;
        if (v44)
        {
          a3 = v47;
          goto LABEL_17;
        }
      }

      __break(1u);
LABEL_32:
      __break(1u);
      goto LABEL_33;
    }

LABEL_17:
    v48 = __clz(__rbit64(v44)) | (a3 << 6);
    v49 = v78;
    v50 = v78[6] + v21[9] * v48;
    v51 = v87;
    v80(v87, v50, v20);
    v52 = *(v49[7] + 8 * v48);
    a5 = v82;
    v53 = v83;
    *(v51 + *(v82 + 48)) = v52;
    v24 = &qword_27D6F38A8;
    sub_224A3796C(v51, v53, &qword_27D6F38A8, &unk_224DB4650);
    v54 = *(v53 + *(a5 + 12));
    v55 = v52;

    a4 = v88;
    sub_224DAA238();
    v85(v53, v20);
    v56 = v86;
    sub_224A3796C(v51, v86, &qword_27D6F38A8, &unk_224DB4650);
    v21 = *(v56 + *(a5 + 12));
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v89 = v41;
    a1 = v41;
    v57 = sub_224B0BB84(a4);
    v59 = v41[2];
    v60 = (v58 & 1) == 0;
    v61 = __OFADD__(v59, v60);
    v62 = v59 + v60;
    if (v61)
    {
      goto LABEL_32;
    }

    v63 = v58;
    if (v41[3] < v62)
    {
      sub_224B13FB0(v62, isUniquelyReferenced_nonNull_native);
      a1 = v89;
      v57 = sub_224B0BB84(v88);
      a5 = v76;
      v24 = v74;
      if ((v63 & 1) != (v64 & 1))
      {
        goto LABEL_35;
      }

LABEL_22:
      v41 = v89;
      if (v63)
      {
        goto LABEL_10;
      }

      goto LABEL_23;
    }

    a5 = v76;
    v24 = v74;
    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_22;
    }

    a1 = &v89;
    v68 = v57;
    sub_224B2801C();
    v57 = v68;
    v41 = v89;
    if (v63)
    {
LABEL_10:
      v45 = v41[7];
      v46 = *(v45 + 8 * v57);
      *(v45 + 8 * v57) = v21;

      (*v75)(v88, v79);
      sub_224A3311C(v87, &qword_27D6F38A8, &unk_224DB4650);
      goto LABEL_11;
    }

LABEL_23:
    v41[(v57 >> 6) + 8] |= 1 << v57;
    isUniquelyReferenced_nonNull_native = v77;
    a1 = v57;
    a4 = v88;
    v65 = v79;
    (*(v77 + 16))(v41[6] + *(v77 + 72) * v57, v88, v79);
    *(v41[7] + 8 * a1) = v21;
    (*(isUniquelyReferenced_nonNull_native + 8))(a4, v65);
    sub_224A3311C(v87, &qword_27D6F38A8, &unk_224DB4650);
    v66 = v41[2];
    v61 = __OFADD__(v66, 1);
    v67 = v66 + 1;
    if (v61)
    {
      break;
    }

    v41[2] = v67;
LABEL_11:
    v44 &= v44 - 1;
    v20 = v73;
    v85(v86, v73);
  }

  __break(1u);
LABEL_35:
  sub_224DAFDD8();
  __break(1u);
}

BOOL sub_224BEC8F8(unsigned __int8 a1, uint64_t a2)
{
  os_unfair_lock_lock((a2 + 24));
  v4 = *(a2 + 16);
  if (v4 < a1)
  {
    *(a2 + 16) = a1;
  }

  v5 = v4 < a1;
  os_unfair_lock_unlock((a2 + 24));
  return v5;
}

void sub_224BEC94C(void *a1, uint64_t (*a2)(uint64_t), uint64_t a3, uint64_t a4, void (*a5)(void, void, unint64_t, void *), uint64_t a6)
{
  v48 = a5;
  v49 = a6;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F3920, &qword_224DB35B0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v14 = MEMORY[0x28223BE20](v10, v13);
  v15 = &v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v14, v16);
  v19 = &v48 - v18;
  MEMORY[0x28223BE20](v17, v20);
  v22 = &v48 - v21;
  if (a2(1))
  {
    if (a1)
    {
      (*(v11 + 16))(v19, a4, v10);
      v23 = (*(v11 + 80) + 32) & ~*(v11 + 80);
      v24 = (v12 + v23 + 7) & 0xFFFFFFFFFFFFFFF8;
      v25 = swift_allocObject();
      *(v25 + 16) = a2;
      *(v25 + 24) = a3;
      (*(v11 + 32))(v25 + v23, v19, v10);
      v26 = (v25 + v24);
      v27 = v49;
      *v26 = v48;
      v26[1] = v27;
      *(v25 + ((v24 + 23) & 0xFFFFFFFFFFFFFFF8)) = a1;
      aBlock[4] = sub_224BFDB78;
      aBlock[5] = v25;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_224BED254;
      aBlock[3] = &block_descriptor_208;
      v28 = _Block_copy(aBlock);
      swift_unknownObjectRetain_n();

      [a1 getAppIntentsXPCListenerEndpointWithCompletion_];
      _Block_release(v28);
      swift_unknownObjectRelease();
    }

    else
    {
      if (qword_2813514B8 != -1)
      {
        swift_once();
      }

      v38 = sub_224DAB258();
      __swift_project_value_buffer(v38, qword_281364E50);
      (*(v11 + 16))(v22, a4, v10);
      v39 = sub_224DAB228();
      v40 = sub_224DAF2A8();
      if (os_log_type_enabled(v39, v40))
      {
        v41 = swift_slowAlloc();
        v42 = swift_slowAlloc();
        aBlock[0] = v42;
        *v41 = 136446210;
        sub_224A33088(&unk_2813518D0, &unk_27D6F3920, &qword_224DB35B0, MEMORY[0x277CF9FC8]);
        v43 = sub_224DAFD28();
        v45 = v44;
        (*(v11 + 8))(v22, v10);
        v46 = sub_224A33F74(v43, v45, aBlock);

        *(v41 + 4) = v46;
        _os_log_impl(&dword_224A2F000, v39, v40, "Unable to make session for %{public}s", v41, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v42);
        MEMORY[0x22AA5EED0](v42, -1, -1);
        MEMORY[0x22AA5EED0](v41, -1, -1);
      }

      else
      {

        (*(v11 + 8))(v22, v10);
      }

      sub_224A3B79C(0, &qword_281350860, 0x277CCA9B8);
      v47 = sub_224CBC42C(0, 0, 0);
      v48(0, 0, 0xF000000000000000, v47);
    }
  }

  else
  {
    if (qword_2813514B8 != -1)
    {
      swift_once();
    }

    v29 = sub_224DAB258();
    __swift_project_value_buffer(v29, qword_281364E50);
    (*(v11 + 16))(v15, a4, v10);
    v30 = sub_224DAB228();
    v31 = sub_224DAF2A8();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      aBlock[0] = v33;
      *v32 = 136446210;
      sub_224A33088(&unk_2813518D0, &unk_27D6F3920, &qword_224DB35B0, MEMORY[0x277CF9FC8]);
      v34 = sub_224DAFD28();
      v36 = v35;
      (*(v11 + 8))(v15, v10);
      v37 = sub_224A33F74(v34, v36, aBlock);

      *(v32 + 4) = v37;
      _os_log_impl(&dword_224A2F000, v30, v31, "Completion handler for getAppIntentsXPCListener already called for %{public}s while trying to make session", v32, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v33);
      MEMORY[0x22AA5EED0](v33, -1, -1);
      MEMORY[0x22AA5EED0](v32, -1, -1);
    }

    else
    {

      (*(v11 + 8))(v15, v10);
    }
  }
}

void sub_224BECF5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t), uint64_t a6, uint64_t a7, void (*a8)(uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a9, void *a10)
{
  v31 = a7;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F3920, &qword_224DB35B0);
  v32 = *(v16 - 8);
  v33 = v16;
  MEMORY[0x28223BE20](v16, v17);
  v19 = &v31 - v18;
  if (a5(2))
  {
    a8(a1, a2, a3, a4);

    [a10 invalidate];
  }

  else
  {
    if (qword_2813514B8 != -1)
    {
      swift_once();
    }

    v20 = sub_224DAB258();
    __swift_project_value_buffer(v20, qword_281364E50);
    v21 = v32;
    v22 = v33;
    (*(v32 + 16))(v19, v31, v33);
    v23 = sub_224DAB228();
    v24 = sub_224DAF2A8();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v34 = v26;
      *v25 = 136446210;
      sub_224A33088(&unk_2813518D0, &unk_27D6F3920, &qword_224DB35B0, MEMORY[0x277CF9FC8]);
      v27 = sub_224DAFD28();
      v29 = v28;
      (*(v21 + 8))(v19, v22);
      v30 = sub_224A33F74(v27, v29, &v34);

      *(v25 + 4) = v30;
      _os_log_impl(&dword_224A2F000, v23, v24, "Completion handler for getAppIntentsXPCListener already called for %{public}s while trying to get intents", v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v26);
      MEMORY[0x22AA5EED0](v26, -1, -1);
      MEMORY[0x22AA5EED0](v25, -1, -1);
    }

    else
    {

      (*(v21 + 8))(v19, v22);
    }
  }
}

double sub_224BED254(uint64_t a1, void *a2, void *a3, void *a4)
{
  v5 = a3;
  v7 = *(a1 + 32);
  if (a3)
  {

    v8 = a2;
    v9 = v5;
    v5 = sub_224DA96D8();
    v11 = v10;
  }

  else
  {

    v12 = a2;
    v11 = 0xF000000000000000;
  }

  v13 = a4;
  v7(a2, v5, v11, a4);

  sub_224AC1D9C(v5, v11);

  return result;
}

void sub_224BED334(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a3 >> 60 == 15)
  {
    v8 = 0;
    if (a4)
    {
LABEL_3:
      v9 = sub_224DA9518();
      goto LABEL_6;
    }
  }

  else
  {
    v8 = sub_224DA96B8();
    if (a4)
    {
      goto LABEL_3;
    }
  }

  v9 = 0;
LABEL_6:
  v10 = v9;
  (*(a5 + 16))(a5, a1, v8);
}

void sub_224BED3DC(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5630, &unk_224DB34C0);
  MEMORY[0x28223BE20](v9 - 8, v10);
  v12 = &v26 - v11;
  v13 = sub_224DA9908();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13, v15);
  v17 = &v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_224A3796C(v5 + OBJC_IVAR____TtC10ChronoCoreP33_2559684BF6D015C60DA4DF344EC1B12920ChronoServicesClient_remoteActivityLaunchService, &v26, &qword_27D6F5110, &qword_224DBAE50);
  if (v27)
  {
    sub_224A36F98(&v26, v28);
    sub_224DA9888();
    if ((*(v14 + 48))(v12, 1, v13) == 1)
    {
      sub_224A3311C(v12, &unk_27D6F5630, &unk_224DB34C0);
      if (qword_2813514B8 != -1)
      {
        swift_once();
      }

      v18 = sub_224DAB258();
      __swift_project_value_buffer(v18, qword_281364E50);
      v19 = sub_224DAB228();
      v20 = sub_224DAF2A8();
      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        *v21 = 0;
        _os_log_impl(&dword_224A2F000, v19, v20, "Relationship ID is invalid, can't launch remote activity", v21, 2u);
        MEMORY[0x22AA5EED0](v21, -1, -1);
      }
    }

    else
    {
      (*(v14 + 32))(v17, v12, v13);
      __swift_project_boxed_opaque_existential_1(v28, v28[3]);
      sub_224D749E4(a1, a2, v17, a5);
      (*(v14 + 8))(v17, v13);
    }

    __swift_destroy_boxed_opaque_existential_1(v28);
  }

  else
  {
    sub_224A3311C(&v26, &qword_27D6F5110, &qword_224DBAE50);
    if (qword_2813514B8 != -1)
    {
      swift_once();
    }

    v22 = sub_224DAB258();
    __swift_project_value_buffer(v22, qword_281364E50);
    v23 = sub_224DAB228();
    v24 = sub_224DAF288();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_224A2F000, v23, v24, "Remote Activity Launch Service not available", v25, 2u);
      MEMORY[0x22AA5EED0](v25, -1, -1);
    }
  }
}

void sub_224BED8F0(uint64_t a1, uint64_t a2, void (*a3)(id, void))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v11 = MEMORY[0x277D84F98];
    v6 = Strong;
    v7 = *__swift_project_boxed_opaque_existential_1((Strong + OBJC_IVAR____TtC10ChronoCoreP33_2559684BF6D015C60DA4DF344EC1B12920ChronoServicesClient__duetServiceQueue_duetService), *(Strong + OBJC_IVAR____TtC10ChronoCoreP33_2559684BF6D015C60DA4DF344EC1B12920ChronoServicesClient__duetServiceQueue_duetService + 24));

    sub_224C5C794(v7, a2, &v11);

    v8 = objc_opt_self();
    sub_224D9F53C(v11);
    v9 = sub_224DAECC8();

    v10 = [v8 boxedValue_];

    a3(v10, 0);
  }
}

void sub_224BEDA38(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v85 = a6;
  v86 = a1;
  v78 = a3;
  v8 = sub_224DAD738();
  v9 = *(v8 - 8);
  v11 = MEMORY[0x28223BE20](v8, v10);
  v13 = &v75 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11, v14);
  v80 = &v75 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F50F8, &qword_224DBAE40);
  v18 = MEMORY[0x28223BE20](v16 - 8, v17);
  v20 = &v75 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18, v21);
  v87 = (&v75 - v22);
  v23 = *(a5 + 64);
  v88 = a5 + 64;
  v24 = 1 << *(a5 + 32);
  v25 = -1;
  if (v24 < 64)
  {
    v25 = ~(-1 << v24);
  }

  v26 = v25 & v23;
  v76 = (v24 + 63) >> 6;
  v79 = v9 + 16;
  v93 = (v9 + 32);
  v81 = v9;
  v82 = a5;
  v84 = (v9 + 8);

  v27 = 0;
  v89 = v20;
  v90 = v13;
  v77 = a2;
  v92 = v8;
  v28 = v88;
  if (v26)
  {
    while (1)
    {
      v29 = a2;
      v30 = v27;
LABEL_13:
      v33 = __clz(__rbit64(v26));
      v26 &= v26 - 1;
      v34 = v33 | (v30 << 6);
      v35 = v81;
      v36 = (*(v82 + 48) + 16 * v34);
      v38 = *v36;
      v37 = v36[1];
      v39 = v80;
      v40 = v92;
      (*(v81 + 16))(v80, *(v82 + 56) + *(v81 + 72) * v34, v92);
      v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5100, &qword_224DBAE48);
      v42 = *(v41 + 48);
      v43 = v89;
      *v89 = v38;
      *(v43 + 1) = v37;
      v44 = v39;
      v20 = v43;
      (*(v35 + 32))(&v43[v42], v44, v40);
      (*(*(v41 - 8) + 56))(v20, 0, 1, v41);

      v13 = v90;
      a2 = v29;
LABEL_14:
      v45 = v87;
      sub_224BFDA48(v20, v87);
      v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5100, &qword_224DBAE48);
      if ((*(*(v46 - 8) + 48))(v45, 1, v46) == 1)
      {
        break;
      }

      v47 = v45[1];
      v91 = *v45;
      v48 = v45 + *(v46 + 48);
      v49 = v92;
      (*v93)(v13, v48, v92);
      v96 = v86;
      v97 = a2;

      v94 = sub_224DAD6F8();
      v95 = v50;
      sub_224AFC154();
      v51 = sub_224DAF748();

      if (v51)
      {
        sub_224A3B79C(0, &qword_281350850, 0x277CCABB0);
        v83 = sub_224DAF688();
        v52 = v85;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v96 = *v52;
        v54 = v96;
        *v52 = 0x8000000000000000;
        v55 = v47;
        v56 = v91;
        v57 = v55;
        v59 = sub_224A3A40C(v91, v55);
        v60 = v54[2];
        v61 = (v58 & 1) == 0;
        v62 = v60 + v61;
        if (__OFADD__(v60, v61))
        {
          goto LABEL_33;
        }

        v63 = v58;
        if (v54[3] >= v62)
        {
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_224B282F0();
          }
        }

        else
        {
          sub_224B1473C(v62, isUniquelyReferenced_nonNull_native);
          v64 = sub_224A3A40C(v56, v57);
          if ((v63 & 1) != (v65 & 1))
          {
            goto LABEL_35;
          }

          v59 = v64;
        }

        v13 = v90;
        v66 = v96;
        if (v63)
        {
          v67 = v96[7];
          v68 = *(v67 + 8 * v59);
          *(v67 + 8 * v59) = v83;
        }

        else
        {
          v96[(v59 >> 6) + 8] |= 1 << v59;
          v69 = (v66[6] + 16 * v59);
          *v69 = v56;
          v69[1] = v57;
          *(v66[7] + 8 * v59) = v83;
          v70 = v66[2];
          v71 = __OFADD__(v70, 1);
          v72 = v70 + 1;
          if (v71)
          {
            goto LABEL_34;
          }

          v66[2] = v72;
        }

        v73 = v84;
        *v85 = v66;
        (*v73)(v13, v49);
        a2 = v77;
        v20 = v89;
      }

      else
      {
        (*v84)(v13, v49);
      }

      v28 = v88;
      if (!v26)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    if (v76 <= v27 + 1)
    {
      v31 = v27 + 1;
    }

    else
    {
      v31 = v76;
    }

    v32 = v31 - 1;
    while (1)
    {
      v30 = v27 + 1;
      if (__OFADD__(v27, 1))
      {
        break;
      }

      if (v30 >= v76)
      {
        v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5100, &qword_224DBAE48);
        (*(*(v74 - 8) + 56))(v20, 1, 1, v74);
        v26 = 0;
        v27 = v32;
        goto LABEL_14;
      }

      v26 = *(v28 + 8 * v30);
      ++v27;
      if (v26)
      {
        v29 = a2;
        v27 = v30;
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    sub_224DAFDD8();
    __break(1u);
  }
}

void sub_224BEE068(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void, void, id), uint64_t a5, void *a6, void *a7, void *a8, uint64_t a9, char *a10)
{
  v140 = a8;
  v141 = a7;
  v145 = a5;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5090, &qword_224DB5C30);
  MEMORY[0x28223BE20](v14 - 8, v15);
  v133 = &v111 - v16;
  v128 = sub_224DAF3B8();
  v127 = *(v128 - 8);
  MEMORY[0x28223BE20](v128, v17);
  v126 = &v111 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5098, &qword_224DBAE18);
  v130 = *(v131 - 8);
  MEMORY[0x28223BE20](v131, v19);
  v129 = &v111 - v20;
  v135 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F50A0, &unk_224DBAE20);
  v134 = *(v135 - 8);
  MEMORY[0x28223BE20](v135, v21);
  v142 = &v111 - v22;
  v148 = sub_224DAC268();
  v143 = *(v148 - 8);
  v24 = MEMORY[0x28223BE20](v148, v23);
  v147 = &v111 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v132 = v25;
  MEMORY[0x28223BE20](v24, v26);
  v28 = &v111 - v27;
  v29 = sub_224DAD738();
  v30 = *(v29 - 1);
  MEMORY[0x28223BE20](v29, v31);
  v33 = &v111 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v35 = Strong;
  v137 = a4;

  v136 = a2;
  v144 = a3;
  sub_224DAD718();
  v146 = v35;
  v36 = __swift_project_boxed_opaque_existential_1(&v35[OBJC_IVAR____TtC10ChronoCoreP33_2559684BF6D015C60DA4DF344EC1B12920ChronoServicesClient__duetServiceQueue_duetService], *&v35[OBJC_IVAR____TtC10ChronoCoreP33_2559684BF6D015C60DA4DF344EC1B12920ChronoServicesClient__duetServiceQueue_duetService + 24]);
  sub_224DAD6F8();
  v37 = *(*v36 + 24);
  v38 = sub_224DAEDE8();

  v39 = [v37 decrementBudgetForWidgetID:v38 by:1.0];

  if (!v39)
  {
    if (qword_2813513E8 != -1)
    {
      swift_once();
    }

    v47 = sub_224DAB258();
    __swift_project_value_buffer(v47, qword_281364CE8);
    v43 = sub_224DAB228();
    v44 = sub_224DAF2A8();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      *v45 = 0;
      v46 = "Budget not found, proceeding with prewarming.";
      goto LABEL_12;
    }

LABEL_13:
    v120 = v33;
    v121 = v30;
    v122 = v29;
    goto LABEL_14;
  }

  v40 = [v39 successful];

  v41 = qword_2813513E8 == -1;
  if (v40)
  {
    if (qword_2813513E8 != -1)
    {
      swift_once();
    }

    v42 = sub_224DAB258();
    __swift_project_value_buffer(v42, qword_281364CE8);
    v43 = sub_224DAB228();
    v44 = sub_224DAF2A8();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      *v45 = 0;
      v46 = "Budget was available, proceeding with prewarming.";
LABEL_12:
      _os_log_impl(&dword_224A2F000, v43, v44, v46, v45, 2u);
      v120 = v33;
      v121 = v30;
      v122 = v29;
      MEMORY[0x22AA5EED0](v45, -1, -1);
LABEL_14:
      v119 = a10;
      v118 = a9;

      v48 = a6;
      v49 = v141;
      v125 = v28;
      v123 = v48;
      sub_224DAC238();
      v141 = swift_allocObject();
      v50 = v146;
      *(v141 + 2) = sub_224BFA2A0(v28, v140);
      v51 = &v50[OBJC_IVAR____TtC10ChronoCoreP33_2559684BF6D015C60DA4DF344EC1B12920ChronoServicesClient_timelineService];
      __swift_project_boxed_opaque_existential_1(&v50[OBJC_IVAR____TtC10ChronoCoreP33_2559684BF6D015C60DA4DF344EC1B12920ChronoServicesClient_timelineService], *&v50[OBJC_IVAR____TtC10ChronoCoreP33_2559684BF6D015C60DA4DF344EC1B12920ChronoServicesClient_timelineService + 24]);
      sub_224DAD7C8();
      v52 = swift_allocObject();
      v140 = v52;
      v52[16] = 0;
      v117 = v52 + 16;
      v139 = swift_allocObject();
      *(v139 + 16) = 1;
      v53 = swift_allocObject();
      v138 = v53;
      *(v53 + 16) = 0;
      v116 = (v53 + 16);
      __swift_project_boxed_opaque_existential_1(v51, *(v51 + 3));
      v115 = sub_224DAD7A8();
      *&aBlock = v115;
      v54 = v126;
      sub_224DAF388();
      v124 = OBJC_IVAR____TtC10ChronoCoreP33_2559684BF6D015C60DA4DF344EC1B12920ChronoServicesClient__queue;
      v154 = *&v50[OBJC_IVAR____TtC10ChronoCoreP33_2559684BF6D015C60DA4DF344EC1B12920ChronoServicesClient__queue];
      v55 = v154;
      v56 = sub_224DAF358();
      v57 = *(v56 - 8);
      v113 = *(v57 + 56);
      v114 = v57 + 56;
      v58 = v133;
      v113(v133, 1, 1, v56);
      v112 = v55;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F50B0, &qword_224DBAE30);
      sub_224A3B79C(0, &qword_281350A70, 0x277D85C78);
      sub_224A33088(&unk_2813510D0, &unk_27D6F50B0, &qword_224DBAE30, MEMORY[0x277CBCD90]);
      sub_224A3B758(&qword_281350A80, &qword_281350A70, 0x277D85C78, MEMORY[0x277D85228]);
      v59 = v129;
      sub_224DAB458();
      sub_224A3311C(v58, &qword_27D6F5090, &qword_224DB5C30);

      (*(v127 + 8))(v54, v128);

      *&aBlock = *&v146[v124];
      v60 = aBlock;
      v113(v58, 1, 1, v56);
      sub_224A33088(&qword_27D6F50C0, &qword_27D6F5098, &qword_224DBAE18, MEMORY[0x277CBCCE8]);
      v61 = v60;
      v62 = v131;
      sub_224DAB448();
      sub_224A3311C(v58, &qword_27D6F5090, &qword_224DB5C30);

      (*(v130 + 8))(v59, v62);
      v63 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v64 = swift_allocObject();
      v64[2] = v141;
      v64[3] = v63;
      v65 = v123;
      v64[4] = v139;
      v64[5] = v65;
      v66 = v144;
      v64[6] = v136;
      v64[7] = v66;
      v67 = v138;
      v64[8] = v140;
      v64[9] = v67;
      v68 = v145;
      v64[10] = v137;
      v64[11] = v68;
      v130 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v69 = v143;
      v70 = *(v143 + 16);
      v131 = v143 + 16;
      v133 = v70;
      (v70)(v147, v125, v148);
      sub_224A3317C(&v155, &aBlock);
      v71 = (*(v69 + 80) + 32) & ~*(v69 + 80);
      v128 = *(v69 + 80);
      v132 += 7;
      v72 = (v132 + v71) & 0xFFFFFFFFFFFFFFF8;
      v73 = (v72 + 15) & 0xFFFFFFFFFFFFFFF8;
      v74 = (v73 + 23) & 0xFFFFFFFFFFFFFFF8;
      v75 = (v74 + 15) & 0xFFFFFFFFFFFFFFF8;
      v76 = (v75 + 15) & 0xFFFFFFFFFFFFFFF8;
      v77 = (v76 + 15) & 0xFFFFFFFFFFFFFFF8;
      v127 = (v77 + 47) & 0xFFFFFFFFFFFFFFF8;
      v78 = swift_allocObject();
      v79 = v130;
      *(v78 + 16) = v141;
      *(v78 + 24) = v79;
      v80 = *(v69 + 32);
      v129 = (v69 + 32);
      v130 = v80;
      v80(v78 + v71, v147, v148);
      v81 = v123;
      *(v78 + v72) = v123;
      v82 = (v78 + v73);
      v83 = v144;
      *v82 = v136;
      v82[1] = v83;
      *(v78 + v74) = v139;
      *(v78 + v75) = v140;
      *(v78 + v76) = v138;
      sub_224A36F98(&aBlock, v78 + v77);
      v84 = (v78 + v127);
      v85 = v145;
      *v84 = v137;
      v84[1] = v85;
      sub_224A33088(&unk_27D6F50C8, &unk_27D6F50A0, &unk_224DBAE20, MEMORY[0x277CBCD60]);
      swift_bridgeObjectRetain_n();
      v86 = v81;
      swift_retain_n();
      swift_retain_n();
      swift_retain_n();
      swift_retain_n();
      swift_retain_n();
      v87 = v86;
      v88 = v135;
      v89 = v142;
      v90 = sub_224DAB408();

      (*(v134 + 8))(v89, v88);
      v91 = v116;
      swift_beginAccess();
      *v91 = v90;
      v92 = v91;

      v93 = v146;
      v94 = v147;
      v95 = *&v146[v124];
      v96 = v125;
      v97 = v148;
      (v133)(v147, v125, v148);
      v98 = (v128 + 40) & ~v128;
      v99 = (v132 + v98) & 0xFFFFFFFFFFFFFFF8;
      v100 = swift_allocObject();
      v101 = v117;
      v100[2] = v92;
      v100[3] = v101;
      v100[4] = v93;
      (v130)(v100 + v98, v94, v97);
      v102 = (v100 + v99);
      v33 = v119;
      *v102 = v118;
      v102[1] = v33;
      v103 = swift_allocObject();
      *(v103 + 16) = sub_224BFD990;
      *(v103 + 24) = v100;
      v152 = sub_224A8A838;
      v153 = v103;
      *&aBlock = MEMORY[0x277D85DD0];
      *(&aBlock + 1) = 1107296256;
      v150 = sub_224A9B6F8;
      v151 = &block_descriptor_180;
      v104 = _Block_copy(&aBlock);
      v30 = v153;
      v29 = v93;

      dispatch_sync(v95, v104);
      _Block_release(v104);
      __swift_destroy_boxed_opaque_existential_1(&v155);
      (*(v143 + 8))(v96, v97);
      (*(v121 + 8))(v120, v122);

      LOBYTE(v95) = swift_isEscapingClosureAtFileLocation();

      if ((v95 & 1) == 0)
      {
        return;
      }

      __break(1u);
      goto LABEL_16;
    }

    goto LABEL_13;
  }

LABEL_16:
  v105 = v137;
  if (!v41)
  {
    swift_once();
  }

  v106 = sub_224DAB258();
  __swift_project_value_buffer(v106, qword_281364CE8);
  v107 = sub_224DAB228();
  v108 = sub_224DAF2A8();
  if (os_log_type_enabled(v107, v108))
  {
    v109 = swift_slowAlloc();
    *v109 = 0;
    _os_log_impl(&dword_224A2F000, v107, v108, "Insufficient budget for suggestion, not prewarming.", v109, 2u);
    MEMORY[0x22AA5EED0](v109, -1, -1);
  }

  v110 = [objc_allocWithZone(MEMORY[0x277CCA9B8]) initWithDomain:*MEMORY[0x277CFA188] code:3 userInfo:0];
  v105(0, 0, v110);

  (*(v30 + 8))(v33, v29);
}

void sub_224BEF140(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, unint64_t a7, uint64_t a8, uint64_t a9, void (*a10)(void, void, void *))
{
  swift_beginAccess();
  if (*(a2 + 16))
  {

    sub_224DADCC8();
  }

  swift_beginAccess();
  *(a2 + 16) = 0;

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v17 = Strong;
    BSDispatchQueueAssert();
    swift_beginAccess();
    if (*(a4 + 16) == 1)
    {
      if (qword_2813513E8 != -1)
      {
        swift_once();
      }

      v18 = a10;
      v19 = sub_224DAB258();
      __swift_project_value_buffer(v19, qword_281364CE8);
      v20 = a5;

      v21 = sub_224DAB228();
      v22 = sub_224DAF2A8();

      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        v24 = swift_slowAlloc();
        v25 = swift_slowAlloc();
        v30[0] = v25;
        *v23 = 138543618;
        v26 = [v20 extensionIdentity];
        *(v23 + 4) = v26;
        *v24 = v26;
        *(v23 + 12) = 2082;
        *(v23 + 14) = sub_224A33F74(a6, a7, v30);
        _os_log_impl(&dword_224A2F000, v21, v22, "Suggested widget %{public}@ for stack %{public}s request timed out - notifying!", v23, 0x16u);
        sub_224A3311C(v24, &unk_27D6F69F0, &unk_224DB3900);
        v27 = v24;
        v18 = a10;
        MEMORY[0x22AA5EED0](v27, -1, -1);
        __swift_destroy_boxed_opaque_existential_1(v25);
        MEMORY[0x22AA5EED0](v25, -1, -1);
        MEMORY[0x22AA5EED0](v23, -1, -1);
      }

      swift_beginAccess();
      *(a8 + 16) = 1;
      swift_beginAccess();
      if (*(a9 + 16))
      {
        swift_beginAccess();

        sub_224B0279C(v28);
        swift_endAccess();

        swift_beginAccess();
        *(a9 + 16) = 0;
      }

      sub_224A3B79C(0, &qword_281350860, 0x277CCA9B8);
      v29 = sub_224CBC42C(12, 0, 0);
      v18(0, 0, v29);
    }
  }
}

char *sub_224BEF4C8(uint64_t a1, uint64_t a2, uint64_t a3, void (**a4)(char *, uint64_t), void *a5, void (**a6)(char *, uint64_t), void (**a7)(char *, uint64_t, uint64_t), uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void (*a12)(void, void, void), uint64_t a13)
{
  v113 = a5;
  v114 = a8;
  v120 = a7;
  v118 = a6;
  v123 = a4;
  v127 = sub_224DA9878();
  v14 = *(v127 - 8);
  MEMORY[0x28223BE20](v127, v15);
  v126 = &v107 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F50E8, &qword_224DBAE38);
  MEMORY[0x28223BE20](v17 - 8, v18);
  v128 = &v107 - v19;
  v125 = sub_224DAEA68();
  v111 = *(v125 - 8);
  MEMORY[0x28223BE20](v125, v20);
  v121 = &v107 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_224DA9908();
  v116 = *(v22 - 8);
  v117 = v22;
  MEMORY[0x28223BE20](v22, v23);
  v115 = &v107 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_224DAC268();
  v26 = *(v25 - 8);
  MEMORY[0x28223BE20](v25, v27);
  v29 = &v107 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_224DABE18();
  v119 = *(v30 - 8);
  v32 = MEMORY[0x28223BE20](v30, v31);
  v124 = &v107 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32, v34);
  v122 = &v107 - v35;
  swift_beginAccess();
  if (*(a2 + 16))
  {

    sub_224DADCC8();
  }

  swift_beginAccess();
  *(a2 + 16) = 0;

  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v37 = result;
    v110 = v14;
    v38 = v30;
    v109 = OBJC_IVAR____TtC10ChronoCoreP33_2559684BF6D015C60DA4DF344EC1B12920ChronoServicesClient__queue;
    BSDispatchQueueAssert();
    v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F50D8, &unk_224DBD6E0);
    v40 = v122;
    MEMORY[0x22AA5BB00](v39);
    (*(v26 + 16))(v29, v123, v25);
    v41 = v124;
    sub_224DABD88();
    v42 = MEMORY[0x22AA5A130](v40, v41);
    v112 = v38;
    if ((v42 & 1) == 0)
    {

      v80 = v119;
LABEL_31:
      v105 = *(v80 + 8);
      v106 = v112;
      v105(v124, v112);
      return (v105)(v122, v106);
    }

    if (qword_2813513E8 != -1)
    {
      swift_once();
    }

    v108 = a10;
    v43 = sub_224DAB258();
    __swift_project_value_buffer(v43, qword_281364CE8);
    v44 = v113;

    v45 = sub_224DAB228();
    v46 = sub_224DAF2A8();

    v47 = os_log_type_enabled(v45, v46);
    v113 = v44;
    if (v47)
    {
      v48 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      v130 = v50;
      *v48 = 138543618;
      v51 = [v44 extensionIdentity];
      *(v48 + 4) = v51;
      *v49 = v51;
      *(v48 + 12) = 2082;
      *(v48 + 14) = sub_224A33F74(v118, v120, &v130);
      _os_log_impl(&dword_224A2F000, v45, v46, "Suggested widget %{public}@ for stack %{public}s completed!", v48, 0x16u);
      sub_224A3311C(v49, &unk_27D6F69F0, &unk_224DB3900);
      MEMORY[0x22AA5EED0](v49, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v50);
      MEMORY[0x22AA5EED0](v50, -1, -1);
      MEMORY[0x22AA5EED0](v48, -1, -1);
    }

    v52 = v110;
    v53 = v117;
    v54 = v114;
    swift_beginAccess();
    *(v54 + 16) = 0;
    swift_beginAccess();
    *(a9 + 16) = 1;
    v55 = v108;
    swift_beginAccess();
    if (*(v55 + 16))
    {
      swift_beginAccess();

      sub_224B0279C(v56);
      swift_endAccess();

      swift_beginAccess();
      *(v55 + 16) = 0;
    }

    swift_beginAccess();
    if (*(a2 + 16))
    {

      sub_224DADCC8();
    }

    v114 = a13;
    v117 = a12;
    swift_beginAccess();
    *(a2 + 16) = 0;

    v130 = sub_224DABD98();
    v131 = v57;

    MEMORY[0x22AA5D210](58, 0xE100000000000000);

    v59 = v130;
    v58 = v131;
    v60 = v115;
    v61 = sub_224DA98F8();
    v62 = MEMORY[0x22AA57C10](v61);
    v64 = v63;
    (*(v116 + 1))(v60, v53);
    v130 = v59;
    v131 = v58;

    MEMORY[0x22AA5D210](v62, v64);

    v65 = v130;
    v66 = v131;
    sub_224A3317C(a11, &v136);
    v67 = swift_allocObject();
    v68 = v113;
    v67[2] = v37;
    v67[3] = v68;
    v69 = v120;
    v67[4] = v118;
    v67[5] = v69;
    sub_224A36F98(&v136, (v67 + 6));
    v67[11] = v65;
    v67[12] = v66;
    v134 = sub_224BFDA28;
    v135 = v67;
    v130 = MEMORY[0x277D85DD0];
    v131 = 1107296256;
    v132 = sub_224A3837C;
    v133 = &block_descriptor_186;
    v70 = _Block_copy(&v130);
    v71 = objc_opt_self();
    v72 = v68;

    v73 = v37;
    v74 = [v71 responderWithHandler_];
    _Block_release(v70);

    [v74 setQueue_];
    v75 = objc_allocWithZone(MEMORY[0x277CF0B58]);
    v76 = v74;
    v116 = [v75 initWithInfo:0 responder:v76];
    v77 = OBJC_IVAR____TtC10ChronoCoreP33_2559684BF6D015C60DA4DF344EC1B12920ChronoServicesClient__queue_widgetTimelineLoadActionResponders;
    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v136 = *&v73[v77];
    *&v73[v77] = 0x8000000000000000;
    sub_224B21930(v76, v65, v66, isUniquelyReferenced_nonNull_native);

    *&v73[v77] = v136;
    swift_endAccess();
    __swift_project_boxed_opaque_existential_1(&v73[OBJC_IVAR____TtC10ChronoCoreP33_2559684BF6D015C60DA4DF344EC1B12920ChronoServicesClient_timelineService], *&v73[OBJC_IVAR____TtC10ChronoCoreP33_2559684BF6D015C60DA4DF344EC1B12920ChronoServicesClient_timelineService + 24]);
    v79 = sub_224DAC738();
    v80 = v119;
    if (v79)
    {
      v81 = v79;
      sub_224DABE68();
      if (v137)
      {
        sub_224A36F98(&v136, &v130);
        __swift_project_boxed_opaque_existential_1(&v130, v133);
        v82 = sub_224DAEAC8();
        v83 = *(v82 + 16);
        if (v83)
        {
          v110 = v81;
          v113 = v76;
          v115 = v73;
          v129 = MEMORY[0x277D84F90];
          sub_224DAF9E8();
          v109 = v82;
          v84 = v82 + 32;
          v85 = (v111 + 48);
          v120 = (v111 + 32);
          v123 = (v52 + 8);
          v118 = (v111 + 8);
          v86 = v128;
          v87 = v125;
          do
          {
            sub_224A3317C(v84, &v136);
            __swift_project_boxed_opaque_existential_1(&v136, v137);
            sub_224DAE788();
            if ((*v85)(v86, 1, v87) == 1)
            {
              sub_224A3311C(v86, &unk_27D6F50E8, &qword_224DBAE38);
              __swift_project_boxed_opaque_existential_1(&v136, v137);
              v88 = v126;
              sub_224DAE778();
              v89 = objc_allocWithZone(CHDProactiveEntry);
              v90 = sub_224DA9778();
              [v89 initWithDate_];

              (*v123)(v88, v127);
            }

            else
            {
              v91 = v121;
              (*v120)(v121, v86, v87);
              __swift_project_boxed_opaque_existential_1(&v136, v137);
              v92 = v126;
              sub_224DAE778();
              sub_224DAEA48();
              v94 = v93;
              sub_224DAEA58();
              v96 = v95;
              v97 = objc_allocWithZone(CHDProactiveEntry);
              v98 = sub_224DA9778();
              [v97 initWithDate:v98 score:v94 duration:v96];

              (*v123)(v92, v127);
              (*v118)(v91, v87);
            }

            __swift_destroy_boxed_opaque_existential_1(&v136);
            sub_224DAF9B8();
            sub_224DAF9F8();
            sub_224DAFA08();
            sub_224DAF9C8();
            v84 += 40;
            --v83;
            v86 = v128;
          }

          while (v83);

          v80 = v119;
          v73 = v115;
          v76 = v113;
        }

        else
        {
        }

        __swift_destroy_boxed_opaque_existential_1(&v130);
        sub_224A3B79C(0, &qword_281350A98, &off_27853D6A8);
        v99 = v116;
        v102 = v116;
        v101 = sub_224DAEFF8();

        goto LABEL_27;
      }

      sub_224A3311C(&v136, &unk_27D6F3CB0, &unk_224DB7860);
    }

    v99 = v116;
    v100 = v116;
    v101 = 0;
LABEL_27:
    v103 = CHDCreateATXInfoTimelineEntries(v101);

    if (v103)
    {
      v104 = sub_224DAF008();
    }

    else
    {
      v104 = 0;
    }

    v117(v99, v104, 0);

    goto LABEL_31;
  }

  return result;
}

uint64_t sub_224BF0240(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, unint64_t a5, void *a6, uint64_t a7, uint64_t a8)
{
  BSDispatchQueueAssert();
  if (qword_2813513E8 != -1)
  {
    swift_once();
  }

  v14 = sub_224DAB258();
  __swift_project_value_buffer(v14, qword_281364CE8);
  v15 = a3;

  v16 = sub_224DAB228();
  v17 = sub_224DAF2A8();

  if (os_log_type_enabled(v16, v17))
  {
    v27 = a7;
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v20 = a8;
    v21 = a4;
    v22 = swift_slowAlloc();
    v28[0] = v22;
    *v18 = 138543618;
    v23 = [v15 extensionIdentity];
    *(v18 + 4) = v23;
    *v19 = v23;
    *(v18 + 12) = 2082;
    v24 = v21;
    a8 = v20;
    *(v18 + 14) = sub_224A33F74(v24, a5, v28);
    _os_log_impl(&dword_224A2F000, v16, v17, "Suggested widget %{public}@ for stack %{public}s assertion invalidated.", v18, 0x16u);
    sub_224A3311C(v19, &unk_27D6F69F0, &unk_224DB3900);
    MEMORY[0x22AA5EED0](v19, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v22);
    MEMORY[0x22AA5EED0](v22, -1, -1);
    v25 = v18;
    a7 = v27;
    MEMORY[0x22AA5EED0](v25, -1, -1);
  }

  __swift_project_boxed_opaque_existential_1(a6, a6[3]);
  sub_224DAE1F8();
  swift_beginAccess();

  sub_224B08BC0(0, a7, a8);
  return swift_endAccess();
}

double sub_224BF04A8(uint64_t *a1, _BYTE *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_beginAccess();
  v10 = *a1;
  if (v10)
  {
    swift_beginAccess();
    if ((*a2 & 1) == 0)
    {
      swift_beginAccess();
      swift_retain_n();
      sub_224ADC248(&v11, v10);
      swift_endAccess();

      __swift_project_boxed_opaque_existential_1((a3 + OBJC_IVAR____TtC10ChronoCoreP33_2559684BF6D015C60DA4DF344EC1B12920ChronoServicesClient_timelineService), *(a3 + OBJC_IVAR____TtC10ChronoCoreP33_2559684BF6D015C60DA4DF344EC1B12920ChronoServicesClient_timelineService + 24));
      sub_224DAC7F8();
    }
  }

  return result;
}

void sub_224BF06A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    v7 = sub_224DAEFF8();
    if (a3)
    {
LABEL_3:
      v8 = sub_224DA9518();
      goto LABEL_6;
    }
  }

  else
  {
    v7 = 0;
    if (a3)
    {
      goto LABEL_3;
    }
  }

  v8 = 0;
LABEL_6:
  v9 = v8;
  (*(a4 + 16))(a4, a1, v7);
}

void sub_224BF0754(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_224DA9908();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v12 = Strong;
    BSDispatchQueueAssert();
    if (qword_2813514B8 != -1)
    {
      swift_once();
    }

    v13 = sub_224DAB258();
    __swift_project_value_buffer(v13, qword_281364E50);
    (*(v7 + 16))(v10, a3, v6);
    v14 = sub_224DAB228();
    v15 = sub_224DAF2A8();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v27 = a3;
      v17 = v16;
      v26 = swift_slowAlloc();
      v28[0] = v26;
      *v17 = 136446210;
      sub_224A80F90(&qword_281351A00, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v18 = sub_224DAFD28();
      v20 = v19;
      (*(v7 + 8))(v10, v6);
      v21 = sub_224A33F74(v18, v20, v28);

      *(v17 + 4) = v21;
      _os_log_impl(&dword_224A2F000, v14, v15, "Invalidating lifetime assertion %{public}s", v17, 0xCu);
      v22 = v26;
      __swift_destroy_boxed_opaque_existential_1(v26);
      MEMORY[0x22AA5EED0](v22, -1, -1);
      v23 = v17;
      a3 = v27;
      MEMORY[0x22AA5EED0](v23, -1, -1);
    }

    else
    {

      (*(v7 + 8))(v10, v6);
    }

    swift_beginAccess();
    v24 = sub_224B3E1E0(a3);
    swift_endAccess();

    swift_beginAccess();
    if (*(a4 + 40))
    {
      sub_224A3317C(a4 + 16, v28);
      __swift_project_boxed_opaque_existential_1(v28, v28[3]);
      sub_224DAE1F8();

      __swift_destroy_boxed_opaque_existential_1(v28);
    }

    else
    {
    }
  }
}