uint64_t sub_2297893F4(uint64_t a1, uint64_t a2)
{
  v2[5] = a1;
  v2[6] = a2;
  v3 = sub_22A4DD07C();
  v2[7] = v3;
  v2[8] = *(v3 - 8);
  v2[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2297894B4, 0, 0);
}

uint64_t sub_2297894B4()
{
  v1 = v0[6];
  v2 = swift_task_alloc();
  v0[10] = v2;
  *(v2 + 16) = v1;
  v3 = swift_task_alloc();
  v0[11] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D880C50, &qword_22A582978);
  *v3 = v0;
  v3[1] = sub_2297895BC;

  return MEMORY[0x2822007B8](v0 + 2, 0, 0, 0xD000000000000021, 0x800000022A595740, sub_229792878, v2, v4);
}

uint64_t sub_2297895BC()
{

  return MEMORY[0x2822009F8](sub_2297896D4, 0, 0);
}

uint64_t sub_2297896D4()
{
  v1 = v0[2];
  v2 = v0[3];
  v0[12] = v1;
  v0[13] = v2;
  if (v1 >> 62)
  {
    if (sub_22A4DE0EC())
    {
      goto LABEL_5;
    }
  }

  else if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_5:
    v3 = v0[6];
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D880C58, &qword_22A582980);
    v5 = swift_task_alloc();
    v0[14] = v5;
    v5[2] = v1;
    v5[3] = v2;
    v5[4] = v3;
    v6 = swift_task_alloc();
    v0[15] = v6;
    *v6 = v0;
    v6[1] = sub_229789970;

    return MEMORY[0x282200600](v0 + 4, v4, v4, 0, 0, &unk_22A582990, v5, v4);
  }

  if (v2 >> 62)
  {
    if (sub_22A4DE0EC())
    {
      goto LABEL_5;
    }
  }

  else if (*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_5;
  }

  sub_229562F68(0, &qword_281401BC0, off_2786661B8);
  sub_22A4DDC0C();
  sub_22A4DD08C();
  v7 = sub_22A4DD05C();
  v8 = sub_22A4DDCCC();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_229538000, v7, v8, "[EnergyKit] Current user is not an owner or shared admin of any home", v9, 2u);
    MEMORY[0x22AAD4E50](v9, -1, -1);
  }

  v11 = v0[8];
  v10 = v0[9];
  v12 = v0[7];

  (*(v11 + 8))(v10, v12);
  v13 = sub_22956B768(MEMORY[0x277D84F90]);
  sub_229789BA8(v13, v0[5]);

  v14 = v0[1];

  return v14();
}

uint64_t sub_229789970()
{

  return MEMORY[0x2822009F8](sub_229789AC8, 0, 0);
}

uint64_t sub_229789AC8()
{
  sub_229789BA8(v0[4], v0[5]);

  v1 = v0[1];

  return v1();
}

void sub_229789BA8(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v67 = a2;
  v70 = sub_22A4DDC7C();
  v3 = *(v70 - 8);
  v4 = MEMORY[0x28223BE20](v70);
  v69 = v64 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v68 = v64 - v6;
  v7 = sub_22A4DDC9C();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v90 = v64 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v89 = v64 - v11;
  v12 = sub_22A4DB7DC();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = v64 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v88 = v64 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D880C60, &qword_22A582998);
  v19 = MEMORY[0x28223BE20](v18 - 8);
  v21 = v64 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v82 = v64 - v22;
  v23 = *(a1 + 64);
  v84 = a1 + 64;
  v24 = 1 << *(a1 + 32);
  v25 = -1;
  if (v24 < 64)
  {
    v25 = ~(-1 << v24);
  }

  v26 = v25 & v23;
  v83 = (v24 + 63) >> 6;
  v85 = (v13 + 32);
  v86 = (v13 + 16);
  v78 = v8 + 8;
  v79 = (v8 + 16);
  v74 = v13;
  v80 = v8;
  v81 = (v13 + 8);
  v77 = v8 + 32;
  v65 = (v3 + 16);
  v64[1] = v3 + 8;
  v66 = v3;
  v64[0] = v3 + 32;
  v76 = a1;

  v27 = 0;
  v71 = MEMORY[0x277D84F90];
  v72 = v16;
  v91 = MEMORY[0x277D84F90];
  v75 = v7;
  v73 = v12;
  v87 = v21;
  while (1)
  {
    v28 = v84;
    v29 = v83;
    if (!v26)
    {
      break;
    }

    while (1)
    {
      v30 = v27;
LABEL_14:
      v33 = __clz(__rbit64(v26));
      v26 &= v26 - 1;
      v34 = v33 | (v30 << 6);
      v35 = v76;
      v37 = v73;
      v36 = v74;
      (*(v74 + 16))(v88, *(v76 + 48) + *(v74 + 72) * v34, v73);
      v38 = *(v35 + 56) + 16 * v34;
      v39 = *v38;
      v40 = *(v38 + 8);
      v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D880C68, &qword_22A5829A0);
      v42 = &v87[*(v41 + 48)];
      v43 = *(v36 + 32);
      v12 = v37;
      v21 = v87;
      v43();
      *v42 = v39;
      v42[8] = v40;
      (*(*(v41 - 8) + 56))(v21, 0, 1, v41);
      sub_229792944(v39, v40);
      v7 = v75;
      v16 = v72;
LABEL_15:
      v44 = v21;
      v45 = v82;
      sub_229792950(v44, v82);
      v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D880C68, &qword_22A5829A0);
      if ((*(*(v46 - 8) + 48))(v45, 1, v46) == 1)
      {

        sub_22A4DDCAC();
        return;
      }

      v47 = v45 + *(v46 + 48);
      v48 = *v47;
      v49 = *(v47 + 8);
      (*v85)(v16, v45, v12);
      v50 = v91;
      if (v49 == 1)
      {
        break;
      }

      (*v86)(v88, v16, v12);
      v51 = v89;
      sub_22A4DDC8C();
      (*v79)(v90, v51, v7);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v50 = sub_22958B968(0, v50[2] + 1, 1, v50);
      }

      v53 = v50[2];
      v52 = v50[3];
      v21 = v87;
      if (v53 >= v52 >> 1)
      {
        v50 = sub_22958B968((v52 > 1), v53 + 1, 1, v50);
      }

      v54 = v80;
      (*(v80 + 8))(v89, v7);
      (*v81)(v16, v12);
      v50[2] = v53 + 1;
      v55 = (*(v54 + 80) + 32) & ~*(v54 + 80);
      v91 = v50;
      (*(v54 + 32))(v50 + v55 + *(v54 + 72) * v53, v90, v7);
      v28 = v84;
      v29 = v83;
      if (!v26)
      {
        goto LABEL_6;
      }
    }

    (*v86)(v88, v16, v12);
    v57 = v48;
    v58 = v68;
    sub_22A4DDC6C();
    (*v65)(v69, v58, v70);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v71 = sub_22958B940(0, v71[2] + 1, 1, v71);
    }

    v60 = v71[2];
    v59 = v71[3];
    v21 = v87;
    if (v60 >= v59 >> 1)
    {
      v71 = sub_22958B940((v59 > 1), v60 + 1, 1, v71);
    }

    sub_2297929C0(v48, 1);
    v61 = v66;
    v62 = v70;
    (*(v66 + 8))(v68, v70);
    (*v81)(v16, v12);
    v63 = v71;
    v71[2] = v60 + 1;
    (*(v61 + 32))(v63 + ((*(v61 + 80) + 32) & ~*(v61 + 80)) + *(v61 + 72) * v60, v69, v62);
  }

LABEL_6:
  if (v29 <= v27 + 1)
  {
    v31 = v27 + 1;
  }

  else
  {
    v31 = v29;
  }

  v32 = v31 - 1;
  while (1)
  {
    v30 = v27 + 1;
    if (__OFADD__(v27, 1))
    {
      break;
    }

    if (v30 >= v29)
    {
      v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D880C68, &qword_22A5829A0);
      (*(*(v56 - 8) + 56))(v21, 1, 1, v56);
      v26 = 0;
      v27 = v32;
      goto LABEL_15;
    }

    v26 = *(v28 + 8 * v30);
    ++v27;
    if (v26)
    {
      v27 = v30;
      goto LABEL_14;
    }
  }

  __break(1u);
}

id sub_22978A430(uint64_t a1, void *a2)
{
  v4 = sub_22A4DD26C();
  v24 = *(v4 - 8);
  v25 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22A4DD29C();
  v22 = *(v7 - 8);
  v23 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D880C90, &qword_22A582A20);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v21 - v12;
  result = [a2 workQueue];
  if (result)
  {
    v15 = result;
    (*(v11 + 16))(v13, a1, v10);
    v16 = (*(v11 + 80) + 24) & ~*(v11 + 80);
    v17 = swift_allocObject();
    *(v17 + 16) = a2;
    (*(v11 + 32))(v17 + v16, v13, v10);
    aBlock[4] = sub_229792EE8;
    aBlock[5] = v17;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_22953E640;
    aBlock[3] = &block_descriptor_49;
    v18 = _Block_copy(aBlock);
    v19 = a2;
    sub_22A4DD28C();
    v26 = MEMORY[0x277D84F90];
    sub_229793150(&qword_281401CF0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87CEA0, &unk_22A577A40);
    sub_22953E5DC();
    v20 = v25;
    sub_22A4DE03C();
    MEMORY[0x22AAD0F80](0, v9, v6, v18);
    _Block_release(v18);

    (*(v24 + 8))(v6, v20);
    (*(v22 + 8))(v9, v23);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_22978A7C4(void *a1, NSObject *a2)
{
  v5 = sub_22A4DD07C();
  isa = v5[-1].isa;
  v7 = MEMORY[0x28223BE20](v5);
  v9 = v62 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = v62 - v11;
  v13 = MEMORY[0x28223BE20](v10);
  v68 = v62 - v14;
  MEMORY[0x28223BE20](v13);
  v67 = v62 - v15;
  v81 = MEMORY[0x277D84F90];
  v82 = MEMORY[0x277D84F90];
  v16 = [a1 homes];
  if (v16)
  {
    v17 = v16;
    sub_229562F68(0, &qword_2814017B0, off_278666198);
    v18 = sub_22A4DD83C();

    if (v18 >> 62)
    {
      goto LABEL_41;
    }

    for (i = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_22A4DE0EC())
    {
      v62[1] = a2;
      v21 = 0;
      v70 = v18 & 0xFFFFFFFFFFFFFF8;
      v75 = &isa[1];
      v76 = v18 & 0xC000000000000001;
      *&v19 = 138412290;
      v69 = v19;
      *&v19 = 138412546;
      v65 = v19;
      v64 = MEMORY[0x277D84F90];
      v63 = MEMORY[0x277D84F90];
      v72 = v12;
      v73 = v18;
      v74 = i;
      v66 = v9;
      while (1)
      {
        if (v76)
        {
          v23 = MEMORY[0x22AAD13F0](v21, v18);
        }

        else
        {
          if (v21 >= *(v70 + 16))
          {
            goto LABEL_40;
          }

          v23 = *(v18 + 8 * v21 + 32);
        }

        isa = v23;
        if (__OFADD__(v21, 1))
        {
          break;
        }

        v24 = [v23 currentUser];
        if (!v24)
        {
          v22 = v21 + 1;
          sub_229562F68(0, &qword_281401BC0, off_2786661B8);
          sub_22A4DDC0C();
          sub_22A4DD08C();
          a2 = isa;
          isa = sub_22A4DD05C();
          v26 = sub_22A4DDCEC();

          if (os_log_type_enabled(isa, v26))
          {
            v27 = swift_slowAlloc();
            v28 = swift_slowAlloc();
            *v27 = v69;
            *(v27 + 4) = a2;
            *v28 = a2;
            v29 = a2;
            _os_log_impl(&dword_229538000, isa, v26, "[EnergyKit] Could not find current user for home %@", v27, 0xCu);
            sub_22953EAE4(v28, &qword_27D87D7D0, &unk_22A578D90);
            v30 = v28;
            i = v74;
            MEMORY[0x22AAD4E50](v30, -1, -1);
            v31 = v27;
            v12 = v72;
            MEMORY[0x22AAD4E50](v31, -1, -1);
          }

          else
          {
            v29 = isa;
            isa = a2;
          }

          v18 = v73;

          (*v75)(v9, v5);
          goto LABEL_8;
        }

        v2 = v24;
        v25 = [v24 privilege];
        v77 = v21 + 1;
        if (v25 <= 2)
        {
          if (v25 >= 3)
          {
            goto LABEL_45;
          }

LABEL_36:
          sub_229562F68(0, &qword_281401BC0, off_2786661B8);
          sub_22A4DDC0C();
          sub_22A4DD08C();
          a2 = isa;
          v48 = v2;
          isa = sub_22A4DD05C();
          v49 = sub_22A4DDCCC();

          if (os_log_type_enabled(isa, v49))
          {
            v50 = swift_slowAlloc();
            v51 = swift_slowAlloc();
            v52 = swift_slowAlloc();
            v79 = v52;
            *v50 = v65;
            *(v50 + 4) = a2;
            *v51 = a2;
            *(v50 + 12) = 2080;
            v71 = a2;
            v78 = [v48 privilege];
            type metadata accessor for HMDUserPrivilege(0);
            v53 = sub_22A4DBA6C();
            a2 = v5;
            v55 = sub_2295A3E30(v53, v54, &v79);

            *(v50 + 14) = v55;
            v12 = v72;
            _os_log_impl(&dword_229538000, isa, v49, "[EnergyKit] Will not attempt to clear data for %@ because user does not have permission: %s", v50, 0x16u);
            sub_22953EAE4(v51, &qword_27D87D7D0, &unk_22A578D90);
            v56 = v51;
            v18 = v73;
            MEMORY[0x22AAD4E50](v56, -1, -1);
            __swift_destroy_boxed_opaque_existential_0(v52);
            v57 = v52;
            v9 = v66;
            MEMORY[0x22AAD4E50](v57, -1, -1);
            MEMORY[0x22AAD4E50](v50, -1, -1);
          }

          else
          {
          }

          (*v75)(v12, v5);
          i = v74;
          goto LABEL_7;
        }

        switch(v25)
        {
          case 3:
            sub_229562F68(0, &qword_281401BC0, off_2786661B8);
            sub_22A4DDC0C();
            sub_22A4DD08C();
            v41 = isa;
            v42 = sub_22A4DD05C();
            a2 = sub_22A4DDCCC();

            if (os_log_type_enabled(v42, a2))
            {
              v43 = swift_slowAlloc();
              v44 = swift_slowAlloc();
              *v43 = v69;
              *(v43 + 4) = v41;
              *v44 = v41;
              v45 = v41;
              _os_log_impl(&dword_229538000, v42, a2, "[EnergyKit] Will clear data for owned home %@", v43, 0xCu);
              sub_22953EAE4(v44, &qword_27D87D7D0, &unk_22A578D90);
              v46 = v44;
              i = v74;
              MEMORY[0x22AAD4E50](v46, -1, -1);
              v47 = v43;
              v18 = v73;
              MEMORY[0x22AAD4E50](v47, -1, -1);
            }

            (*v75)(v67, v5);
            isa = v41;
            MEMORY[0x22AAD09E0]();
            if (*((v82 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v82 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              a2 = *((v82 & 0xFFFFFFFFFFFFFF8) + 0x10);
              sub_22A4DD85C();
            }

            sub_22A4DD87C();

            v39 = v82;
            v40 = &v83;
            break;
          case 4:
            sub_229562F68(0, &qword_281401BC0, off_2786661B8);
            sub_22A4DDC0C();
            sub_22A4DD08C();
            v32 = isa;
            v33 = sub_22A4DD05C();
            a2 = sub_22A4DDCCC();

            if (os_log_type_enabled(v33, a2))
            {
              v34 = swift_slowAlloc();
              v35 = swift_slowAlloc();
              *v34 = v69;
              *(v34 + 4) = v32;
              *v35 = v32;
              v36 = v32;
              _os_log_impl(&dword_229538000, v33, a2, "[EnergyKit] Will clear data for %@", v34, 0xCu);
              sub_22953EAE4(v35, &qword_27D87D7D0, &unk_22A578D90);
              v37 = v35;
              i = v74;
              MEMORY[0x22AAD4E50](v37, -1, -1);
              v38 = v34;
              v18 = v73;
              MEMORY[0x22AAD4E50](v38, -1, -1);
            }

            (*v75)(v68, v5);
            isa = v32;
            MEMORY[0x22AAD09E0]();
            if (*((v81 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v81 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              a2 = *((v81 & 0xFFFFFFFFFFFFFF8) + 0x10);
              sub_22A4DD85C();
            }

            sub_22A4DD87C();

            v39 = v81;
            v40 = &v84;
            break;
          case 5:
            goto LABEL_36;
          default:
            goto LABEL_45;
        }

        *(v40 - 32) = v39;
LABEL_7:
        v22 = v77;
LABEL_8:
        ++v21;
        if (v22 == i)
        {

          v58 = v64;
          v59 = v63;
          goto LABEL_43;
        }
      }

      __break(1u);
LABEL_40:
      __break(1u);
LABEL_41:
      ;
    }

    v58 = MEMORY[0x277D84F90];
    v59 = MEMORY[0x277D84F90];
LABEL_43:
    v79 = v59;
    v80 = v58;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D880C90, &qword_22A582A20);
    return sub_22A4DD8FC();
  }

  else
  {
    __break(1u);
LABEL_45:
    v79 = 0;
    v80 = 0xE000000000000000;
    sub_22A4DE1FC();

    v79 = 0xD000000000000015;
    v80 = 0x800000022A5957C0;
    v78 = [v2 privilege];
    type metadata accessor for HMDUserPrivilege(0);
    v61 = sub_22A4DBA6C();
    MEMORY[0x22AAD08C0](v61);

    result = sub_22A4DE39C();
    __break(1u);
  }

  return result;
}

uint64_t sub_22978B188(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 48) = a6;
  *(v7 + 56) = a7;
  *(v7 + 168) = a4;
  *(v7 + 32) = a1;
  *(v7 + 40) = a5;
  v8 = sub_22A4DB7DC();
  *(v7 + 64) = v8;
  *(v7 + 72) = *(v8 - 8);
  *(v7 + 80) = swift_task_alloc();
  *(v7 + 88) = swift_task_alloc();
  v9 = sub_22A4DD07C();
  *(v7 + 96) = v9;
  *(v7 + 104) = *(v9 - 8);
  *(v7 + 112) = swift_task_alloc();
  *(v7 + 120) = swift_task_alloc();
  *(v7 + 128) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22978B2D0, 0, 0);
}

uint64_t sub_22978B2D0()
{
  *(v0 + 136) = sub_229562F68(0, &qword_281401BC0, off_2786661B8);
  sub_22A4DDC0C();
  sub_22A4DD08C();
  v1 = sub_22A4DD05C();
  v2 = sub_22A4DDCCC();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = *(v0 + 168);
    v4 = swift_slowAlloc();
    *v4 = 67109120;
    *(v4 + 4) = v3;
    _os_log_impl(&dword_229538000, v1, v2, "[EnergyKit] Clearing HomeKitEvents data (deletePrivateCloudZones = %{BOOL}d)", v4, 8u);
    MEMORY[0x22AAD4E50](v4, -1, -1);
  }

  v5 = *(v0 + 128);
  v6 = *(v0 + 96);
  v7 = *(v0 + 104);

  v8 = *(v7 + 8);
  *(v0 + 144) = v8;
  *(v0 + 152) = (v7 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v8(v5, v6);
  v9 = swift_task_alloc();
  *(v0 + 160) = v9;
  *v9 = v0;
  v9[1] = sub_22978B450;
  v11 = *(v0 + 40);
  v10 = *(v0 + 48);
  v12 = *(v0 + 168);

  return MEMORY[0x282171BE0](v11, v10, v12);
}

uint64_t sub_22978B450(uint64_t a1)
{
  v2 = *v1;
  *(v2 + 16) = v1;
  *(v2 + 24) = a1;

  return MEMORY[0x2822009F8](sub_22978B550, 0, 0);
}

char *sub_22978B550()
{
  v69 = v0;
  if (*(v0 + 168) == 1)
  {
    v1 = [*(v0 + 56) homes];
    if (v1)
    {
      v2 = v1;
      v3 = *(v0 + 72);
      v4 = *(v0 + 40);
      sub_229562F68(0, &qword_2814017B0, off_278666198);
      v60 = sub_22A4DD83C();

      v66 = MEMORY[0x277D84F90];
      v67 = MEMORY[0x277D84F90];
      v5 = v4 + 56;
      v6 = -1;
      v7 = -1 << *(v4 + 32);
      if (-v7 < 64)
      {
        v6 = ~(-1 << -v7);
      }

      v8 = v6 & *(v4 + 56);
      v9 = (63 - v7) >> 6;
      v57 = v4;
      v58 = v3;
      v56 = (v3 + 8);

      v10 = 0;
      v11 = 0;
      v54 = v9;
      for (i = v5; v8; v66 = v67)
      {
LABEL_13:
        while (1)
        {
          v14 = *(v0 + 88);
          v15 = __clz(__rbit64(v8));
          v8 &= v8 - 1;
          v16 = *(v58 + 16);
          v16(v14, *(v57 + 48) + *(v58 + 72) * (v15 | (v11 << 6)), *(v0 + 64));
          v17 = swift_task_alloc();
          *(v17 + 16) = v14;
          v18 = sub_22968FFF0(sub_229792E10, v17, v60);
          v64 = v10;

          if (v18)
          {
            break;
          }

          v20 = *(v0 + 80);
          v19 = *(v0 + 88);
          v21 = *(v0 + 64);
          sub_22A4DDC0C();
          sub_22A4DD08C();
          v16(v20, v19, v21);
          v22 = sub_22A4DD05C();
          v59 = sub_22A4DDCEC();
          v23 = os_log_type_enabled(v22, v59);
          v24 = *(v0 + 144);
          v61 = *(v0 + 96);
          v63 = *(v0 + 120);
          v25 = *(v0 + 80);
          v26 = *(v0 + 64);
          if (v23)
          {
            v53 = *(v0 + 144);
            v27 = swift_slowAlloc();
            v52 = swift_slowAlloc();
            v68[0] = v52;
            *v27 = 136315138;
            sub_229793150(&qword_281403860, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
            v28 = sub_22A4DE5CC();
            v30 = v29;
            log = v22;
            v12 = *v56;
            (*v56)(v25, v26);
            v31 = sub_2295A3E30(v28, v30, v68);

            *(v27 + 4) = v31;
            _os_log_impl(&dword_229538000, log, v59, "[EnergyKit] Somehow can't find home with identifier %s", v27, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v52);
            MEMORY[0x22AAD4E50](v52, -1, -1);
            MEMORY[0x22AAD4E50](v27, -1, -1);

            v53(v63, v61);
          }

          else
          {

            v12 = *v56;
            (*v56)(v25, v26);
            v24(v63, v61);
          }

          v9 = v54;
          v12(*(v0 + 88), *(v0 + 64));
          v5 = i;
          v10 = v64;
          if (!v8)
          {
            goto LABEL_9;
          }
        }

        v32 = (*v56)(*(v0 + 88), *(v0 + 64));
        MEMORY[0x22AAD09E0](v32);
        if (*((v67 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v67 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_22A4DD85C();
        }

        sub_22A4DD87C();
      }

      while (1)
      {
LABEL_9:
        v13 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
          __break(1u);
          goto LABEL_38;
        }

        if (v13 >= v9)
        {
          break;
        }

        v8 = *(v5 + 8 * v13);
        ++v11;
        if (v8)
        {
          v11 = v13;
          goto LABEL_13;
        }
      }

      v9 = v66;
      if (v66 >> 62)
      {
        goto LABEL_40;
      }

      for (j = *((v66 & 0xFFFFFFFFFFFFFF8) + 0x10); j; j = sub_22A4DE0EC())
      {
        v34 = 0;
        v65 = v9 & 0xC000000000000001;
        v62 = v9 & 0xFFFFFFFFFFFFFF8;
        while (1)
        {
          if (v65)
          {
            v35 = MEMORY[0x22AAD13F0](v34, v9);
          }

          else
          {
            if (v34 >= *(v62 + 16))
            {
              goto LABEL_39;
            }

            v35 = *(v9 + 8 * v34 + 32);
          }

          v36 = v35;
          v37 = v34 + 1;
          if (__OFADD__(v34, 1))
          {
            break;
          }

          sub_22A4DDC0C();
          sub_22A4DD08C();
          v38 = v36;
          v39 = sub_22A4DD05C();
          v40 = sub_22A4DDCCC();

          if (os_log_type_enabled(v39, v40))
          {
            v41 = swift_slowAlloc();
            v42 = swift_slowAlloc();
            *v41 = 138412290;
            *(v41 + 4) = v38;
            *v42 = v38;
            v43 = v38;
            _os_log_impl(&dword_229538000, v39, v40, "[EnergyKit] Synchronizing cloud share manager for home %@", v41, 0xCu);
            sub_22953EAE4(v42, &qword_27D87D7D0, &unk_22A578D90);
            MEMORY[0x22AAD4E50](v42, -1, -1);
            MEMORY[0x22AAD4E50](v41, -1, -1);
          }

          v44 = *(v0 + 144);
          v45 = *(v0 + 112);
          v46 = *(v0 + 96);

          v44(v45, v46);
          result = [v38 swiftExtensions];
          if (!result)
          {
            __break(1u);
LABEL_43:
            __break(1u);
            return result;
          }

          v48 = result;
          swift_getObjectType();
          result = swift_conformsToProtocol2();
          v9 = v66;
          if (!result)
          {
            goto LABEL_43;
          }

          v49 = *&v48[OBJC_IVAR____TtCE13HomeKitDaemonCSo7HMDHomeP33_0B6F54D380C02F3DBB7BB084234D6AED22DefaultSwiftExtensions_energyKitHindsightCloudShareManager];
          swift_unknownObjectRelease();
          [v49 synchronize];

          ++v34;
          if (v37 == j)
          {
            goto LABEL_33;
          }
        }

LABEL_38:
        __break(1u);
LABEL_39:
        __break(1u);
LABEL_40:
        ;
      }

LABEL_33:
    }
  }

  **(v0 + 32) = *(v0 + 24);

  v50 = *(v0 + 8);

  return v50();
}

uint64_t sub_22978BC20(id *a1, uint64_t a2)
{
  v3 = sub_22A4DB7DC();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [*a1 spiClientIdentifier];
  sub_22A4DB79C();

  v8 = sub_22A4DB78C();
  (*(v4 + 8))(v6, v3);
  return v8 & 1;
}

uint64_t sub_22978BD2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[28] = a6;
  v7[29] = a7;
  v7[26] = a4;
  v7[27] = a5;
  v7[25] = a1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8804C0, &qword_22A57B5F0);
  v7[30] = v8;
  v7[31] = *(v8 - 8);
  v7[32] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D2A0, &unk_22A578BD0);
  v7[33] = swift_task_alloc();
  v9 = sub_22A4DB7DC();
  v7[34] = v9;
  v7[35] = *(v9 - 8);
  v7[36] = swift_task_alloc();
  v7[37] = swift_task_alloc();
  v7[38] = swift_task_alloc();
  v7[39] = swift_task_alloc();
  v7[40] = swift_task_alloc();
  v10 = sub_22A4DD07C();
  v7[41] = v10;
  v7[42] = *(v10 - 8);
  v7[43] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22978BF20, 0, 0);
}

uint64_t sub_22978BF20()
{
  sub_229562F68(0, &qword_281401BC0, off_2786661B8);
  sub_22A4DDC0C();
  sub_22A4DD08C();
  v1 = sub_22A4DD05C();
  v2 = sub_22A4DDCCC();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_229538000, v1, v2, "[EnergyKit] Posting current account message to clear data on other devices", v3, 2u);
    MEMORY[0x22AAD4E50](v3, -1, -1);
  }

  v5 = *(v0 + 336);
  v4 = *(v0 + 344);
  v6 = *(v0 + 328);
  v7 = *(v0 + 272);
  v8 = *(v0 + 280);
  v9 = *(v0 + 264);

  (*(v5 + 8))(v4, v6);
  sub_22A4DD5EC();
  sub_22A4DB75C();

  v10 = (*(v8 + 48))(v9, 1, v7);
  if (v10 == 1)
  {
    __break(1u);
    goto LABEL_9;
  }

  v11 = *(v0 + 320);
  v12 = *(v0 + 272);
  v13 = *(v0 + 280);
  v14 = *(v0 + 264);
  v15 = *(v13 + 32);
  v16 = *(v0 + 208);
  *(v0 + 352) = v15;
  *(v0 + 360) = (v13 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v31 = *(v0 + 216);
  v15(v11, v14, v12);
  v17 = objc_allocWithZone(HMDRemoteAccountMessageDestination);
  v18 = sub_22A4DB77C();
  v19 = [v17 initWithTarget:v18 handle:v16 multicast:1];
  *(v0 + 368) = v19;

  v20 = *(v13 + 8);
  *(v0 + 376) = v20;
  *(v0 + 384) = (v13 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v20(v11, v12);
  *(v0 + 168) = v31;
  *(v0 + 184) = 0;
  sub_229792708();
  sub_229790B38();
  sub_22A4DD0BC();
  v21 = *(v0 + 232);
  v22 = objc_opt_self();
  v23 = sub_22A4DD5AC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C3B0, &unk_22A576E90);
  v24 = sub_22A4DD47C();
  v32 = [v22 secureMessageWithName:v23 qualityOfService:25 destination:v19 messagePayload:v24];
  *(v0 + 392) = v32;

  v10 = [v21 messageDispatcher];
  *(v0 + 400) = v10;
  if (!v10)
  {
LABEL_9:
    __break(1u);
    return MEMORY[0x282200938](v10);
  }

  v25 = v10;
  v27 = *(v0 + 248);
  v26 = *(v0 + 256);
  v28 = *(v0 + 240);

  *(v0 + 16) = v0;
  *(v0 + 24) = sub_22978C444;
  swift_continuation_init();
  *(v0 + 136) = v28;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 112));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E520, &unk_22A579920);
  sub_22A4DD8DC();
  (*(v27 + 32))(boxed_opaque_existential_1, v26, v28);
  *(v0 + 80) = MEMORY[0x277D85DD0];
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = sub_229787290;
  *(v0 + 104) = &block_descriptor_37_0;
  [v25 sendMessage:v32 completionHandler:v0 + 80];
  (*(v27 + 8))(boxed_opaque_existential_1, v28);
  v10 = (v0 + 16);

  return MEMORY[0x282200938](v10);
}

uint64_t sub_22978C444()
{
  v1 = *(*v0 + 48);
  *(*v0 + 408) = v1;
  if (v1)
  {
    v2 = sub_22978CBD4;
  }

  else
  {
    v2 = sub_22978C554;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

void sub_22978C554()
{
  v1 = *(v0 + 216);
  v2 = *(v1 + 16);
  v3 = *(*(v0 + 224) + 16);
  v4 = v2 + v3;
  if (!__OFADD__(v2, v3))
  {
    v5 = *(v0 + 272);
    v6 = *(v0 + 280);
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D880C78, &qword_22A5829F8);
    v8 = sub_229793150(&qword_281403880, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
    v9 = MEMORY[0x22AAD0690](v4, v5, v7, v8);
    v10 = v1 + 56;
    v11 = -1;
    v12 = -1 << *(v1 + 32);
    if (-v12 < 64)
    {
      v11 = ~(-1 << -v12);
    }

    v13 = v11 & *(v1 + 56);
    v14 = (63 - v12) >> 6;
    v94 = v6;
    v88 = v1;

    v15 = 0;
    v84 = v14;
    v86 = v1 + 56;
    while (v13)
    {
      v19 = v15;
LABEL_12:
      v20 = *(v0 + 352);
      v21 = *(v0 + 312);
      v22 = *(v0 + 296);
      v23 = *(v0 + 272);
      v24 = *(v0 + 408) != 0;
      v90 = *(v94 + 72);
      v92 = *(v94 + 16);
      v92(v21, *(v88 + 48) + v90 * (__clz(__rbit64(v13)) | (v19 << 6)), v23);
      v20(v22, v21, v23);
      sub_229792944(0, v24);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v26 = sub_2296DBEC0(v22);
      v28 = v9[2];
      v29 = (v27 & 1) == 0;
      v30 = __OFADD__(v28, v29);
      v31 = v28 + v29;
      if (v30)
      {
        goto LABEL_48;
      }

      v32 = v27;
      if (v9[3] >= v31)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v44 = v26;
          sub_229899690();
          v26 = v44;
        }
      }

      else
      {
        v33 = *(v0 + 296);
        sub_229895CB4(v31, isUniquelyReferenced_nonNull_native);
        v26 = sub_2296DBEC0(v33);
        if ((v32 & 1) != (v34 & 1))
        {
LABEL_43:

          sub_22A4DE67C();
          return;
        }
      }

      v13 &= v13 - 1;
      v35 = *(v0 + 408);
      v36 = *(v0 + 376);
      v37 = *(v0 + 296);
      v38 = *(v0 + 272);
      if (v32)
      {
        v16 = v9[7] + 16 * v26;
        v17 = *v16;
        v18 = *(v16 + 8);
        *v16 = 0;
        *(v16 + 8) = v35 != 0;
        sub_2297929C0(v17, v18);
        v36(v37, v38);
      }

      else
      {
        v39 = v35 != 0;
        v9[(v26 >> 6) + 8] |= 1 << v26;
        v40 = v26;
        v92(v9[6] + v26 * v90, v37, v38);
        v41 = v9[7] + 16 * v40;
        *v41 = 0;
        *(v41 + 8) = v39;
        v36(v37, v38);
        v42 = v9[2];
        v30 = __OFADD__(v42, 1);
        v43 = v42 + 1;
        if (v30)
        {
          goto LABEL_50;
        }

        v9[2] = v43;
      }

      v15 = v19;
      v14 = v84;
      v10 = v86;
    }

    while (1)
    {
      v19 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_47;
      }

      if (v19 >= v14)
      {
        break;
      }

      v13 = *(v10 + 8 * v19);
      ++v15;
      if (v13)
      {
        goto LABEL_12;
      }
    }

    v45 = *(v0 + 224);

    v46 = v45 + 56;
    v47 = -1;
    v48 = -1 << *(v45 + 32);
    if (-v48 < 64)
    {
      v47 = ~(-1 << -v48);
    }

    v49 = v47 & *(v45 + 56);
    v50 = (63 - v48) >> 6;
    v89 = v45;

    v51 = 0;
    v85 = v50;
    v87 = v45 + 56;
    while (v49)
    {
      v55 = v51;
LABEL_31:
      v56 = *(v0 + 352);
      v57 = *(v0 + 304);
      v58 = *(v0 + 288);
      v59 = *(v0 + 272);
      v60 = *(v0 + 408) != 0;
      v91 = *(v94 + 72);
      v93 = *(v94 + 16);
      v93(v57, *(v89 + 48) + v91 * (__clz(__rbit64(v49)) | (v55 << 6)), v59);
      v56(v58, v57, v59);
      sub_229792944(0, v60);
      v61 = swift_isUniquelyReferenced_nonNull_native();
      v62 = sub_2296DBEC0(v58);
      v64 = v9[2];
      v65 = (v63 & 1) == 0;
      v30 = __OFADD__(v64, v65);
      v66 = v64 + v65;
      if (v30)
      {
        goto LABEL_49;
      }

      v67 = v63;
      if (v9[3] >= v66)
      {
        if ((v61 & 1) == 0)
        {
          v79 = v62;
          sub_229899690();
          v62 = v79;
        }
      }

      else
      {
        v68 = *(v0 + 288);
        sub_229895CB4(v66, v61);
        v62 = sub_2296DBEC0(v68);
        if ((v67 & 1) != (v69 & 1))
        {
          goto LABEL_43;
        }
      }

      v49 &= v49 - 1;
      v70 = *(v0 + 408);
      v71 = *(v0 + 376);
      v72 = *(v0 + 288);
      v73 = *(v0 + 272);
      if (v67)
      {
        v52 = v9[7] + 16 * v62;
        v53 = *v52;
        v54 = *(v52 + 8);
        *v52 = 0;
        *(v52 + 8) = v70 != 0;
        sub_2297929C0(v53, v54);
        v71(v72, v73);
      }

      else
      {
        v74 = v70 != 0;
        v9[(v62 >> 6) + 8] |= 1 << v62;
        v75 = v62;
        v93(v9[6] + v62 * v91, v72, v73);
        v76 = v9[7] + 16 * v75;
        *v76 = 0;
        *(v76 + 8) = v74;
        v71(v72, v73);
        v77 = v9[2];
        v30 = __OFADD__(v77, 1);
        v78 = v77 + 1;
        if (v30)
        {
          goto LABEL_51;
        }

        v9[2] = v78;
      }

      v51 = v55;
      v50 = v85;
      v46 = v87;
    }

    while (1)
    {
      v55 = v51 + 1;
      if (__OFADD__(v51, 1))
      {
        break;
      }

      if (v55 >= v50)
      {
        v80 = *(v0 + 392);
        v81 = *(v0 + 368);
        v82 = *(v0 + 200);
        sub_2297929C0(0, *(v0 + 408) != 0);

        *v82 = v9;

        v83 = *(v0 + 8);

        v83();
        return;
      }

      v49 = *(v46 + 8 * v55);
      ++v51;
      if (v49)
      {
        goto LABEL_31;
      }
    }

LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
LABEL_50:
    __break(1u);
LABEL_51:
    __break(1u);
  }

  __break(1u);
}

void sub_22978CBD4(uint64_t a1)
{
  v2 = v1[50];
  v3 = v1[51];
  swift_willThrow();

  v4 = v1[27];
  v5 = *(v4 + 16);
  v6 = *(v1[28] + 16);
  v7 = v5 + v6;
  if (!__OFADD__(v5, v6))
  {
    v9 = v1[34];
    v8 = v1[35];
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D880C78, &qword_22A5829F8);
    v11 = sub_229793150(&qword_281403880, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
    v12 = MEMORY[0x22AAD0690](v7, v9, v10, v11);
    v13 = v4 + 56;
    v14 = -1;
    v15 = -1 << *(v4 + 32);
    if (-v15 < 64)
    {
      v14 = ~(-1 << -v15);
    }

    v16 = v14 & *(v4 + 56);
    v17 = (63 - v15) >> 6;
    v98 = v8;
    v92 = v4;

    v18 = 0;
    v99 = v3;
    v88 = v17;
    v90 = v4 + 56;
    while (v16)
    {
      v22 = v18;
LABEL_12:
      v23 = v1[44];
      v24 = v1[39];
      v25 = v1[37];
      v26 = v1[34];
      v27 = v1[51] != 0;
      v94 = *(v98 + 72);
      v96 = *(v98 + 16);
      v96(v24, *(v92 + 48) + v94 * (__clz(__rbit64(v16)) | (v22 << 6)), v26);
      v23(v25, v24, v26);
      v3 = v99;
      sub_229792944(v99, v27);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v29 = sub_2296DBEC0(v25);
      v31 = v12[2];
      v32 = (v30 & 1) == 0;
      v33 = __OFADD__(v31, v32);
      v34 = v31 + v32;
      if (v33)
      {
        goto LABEL_48;
      }

      v35 = v30;
      if (v12[3] >= v34)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v47 = v29;
          sub_229899690();
          v29 = v47;
        }
      }

      else
      {
        v36 = v1[37];
        sub_229895CB4(v34, isUniquelyReferenced_nonNull_native);
        v29 = sub_2296DBEC0(v36);
        if ((v35 & 1) != (v37 & 1))
        {
LABEL_43:

          sub_22A4DE67C();
          return;
        }
      }

      v16 &= v16 - 1;
      v38 = v1[51];
      v39 = v1[47];
      v40 = v1[37];
      v41 = v1[34];
      if (v35)
      {
        v19 = v12[7] + 16 * v29;
        v20 = *v19;
        v21 = *(v19 + 8);
        *v19 = v99;
        *(v19 + 8) = v38 != 0;
        sub_2297929C0(v20, v21);
        v39(v40, v41);
      }

      else
      {
        v87 = v1[47];
        v42 = v38 != 0;
        v12[(v29 >> 6) + 8] |= 1 << v29;
        v43 = v29;
        v96(v12[6] + v29 * v94, v40, v41);
        v44 = v12[7] + 16 * v43;
        *v44 = v99;
        *(v44 + 8) = v42;
        v87(v40, v41);
        v45 = v12[2];
        v33 = __OFADD__(v45, 1);
        v46 = v45 + 1;
        if (v33)
        {
          goto LABEL_50;
        }

        v12[2] = v46;
      }

      v18 = v22;
      v17 = v88;
      v13 = v90;
    }

    while (1)
    {
      v22 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_47;
      }

      if (v22 >= v17)
      {
        break;
      }

      v16 = *(v13 + 8 * v22);
      ++v18;
      if (v16)
      {
        goto LABEL_12;
      }
    }

    v48 = v1[28];

    v49 = v48 + 56;
    v50 = -1;
    v51 = -1 << *(v48 + 32);
    if (-v51 < 64)
    {
      v50 = ~(-1 << -v51);
    }

    v52 = v50 & *(v48 + 56);
    v53 = (63 - v51) >> 6;
    v93 = v48;

    v54 = 0;
    v89 = v53;
    v91 = v48 + 56;
    while (v52)
    {
      v58 = v54;
LABEL_31:
      v59 = v1[44];
      v60 = v1[38];
      v61 = v1[36];
      v62 = v1[34];
      v63 = v1[51] != 0;
      v95 = *(v98 + 72);
      v97 = *(v98 + 16);
      v97(v60, *(v93 + 48) + v95 * (__clz(__rbit64(v52)) | (v58 << 6)), v62);
      v59(v61, v60, v62);
      v3 = v99;
      sub_229792944(v99, v63);
      v64 = swift_isUniquelyReferenced_nonNull_native();
      v65 = sub_2296DBEC0(v61);
      v67 = v12[2];
      v68 = (v66 & 1) == 0;
      v33 = __OFADD__(v67, v68);
      v69 = v67 + v68;
      if (v33)
      {
        goto LABEL_49;
      }

      v70 = v66;
      if (v12[3] >= v69)
      {
        if ((v64 & 1) == 0)
        {
          v82 = v65;
          sub_229899690();
          v65 = v82;
        }
      }

      else
      {
        v71 = v1[36];
        sub_229895CB4(v69, v64);
        v65 = sub_2296DBEC0(v71);
        if ((v70 & 1) != (v72 & 1))
        {
          goto LABEL_43;
        }
      }

      v52 &= v52 - 1;
      v73 = v1[51];
      v74 = v1[47];
      v75 = v1[36];
      v76 = v1[34];
      if (v70)
      {
        v55 = v12[7] + 16 * v65;
        v56 = *v55;
        v57 = *(v55 + 8);
        *v55 = v99;
        *(v55 + 8) = v73 != 0;
        sub_2297929C0(v56, v57);
        v74(v75, v76);
      }

      else
      {
        v77 = v73 != 0;
        v12[(v65 >> 6) + 8] |= 1 << v65;
        v78 = v65;
        v97(v12[6] + v65 * v95, v75, v76);
        v79 = v12[7] + 16 * v78;
        *v79 = v99;
        *(v79 + 8) = v77;
        v74(v75, v76);
        v80 = v12[2];
        v33 = __OFADD__(v80, 1);
        v81 = v80 + 1;
        if (v33)
        {
          goto LABEL_51;
        }

        v12[2] = v81;
      }

      v54 = v58;
      v53 = v89;
      v49 = v91;
    }

    while (1)
    {
      v58 = v54 + 1;
      if (__OFADD__(v54, 1))
      {
        break;
      }

      if (v58 >= v53)
      {
        v83 = v1[49];
        v84 = v1[46];
        v85 = v1[25];
        sub_2297929C0(v3, v1[51] != 0);

        *v85 = v12;

        v86 = v1[1];

        v86();
        return;
      }

      v52 = *(v49 + 8 * v58);
      ++v54;
      if (v52)
      {
        goto LABEL_31;
      }
    }

LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
LABEL_50:
    __break(1u);
LABEL_51:
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_22978D27C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[4] = a1;
  return MEMORY[0x2822009F8](sub_22978D2A0, 0, 0);
}

uint64_t sub_22978D2A0()
{
  v1 = swift_task_alloc();
  *(v0 + 56) = v1;
  *(v1 + 16) = *(v0 + 40);
  v2 = swift_task_alloc();
  *(v0 + 64) = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D880C78, &qword_22A5829F8);
  *v2 = v0;
  v2[1] = sub_22978D3A8;

  return MEMORY[0x2822007B8](v0 + 16, 0, 0, 0xD000000000000045, 0x800000022A595770, sub_229792CF0, v1, v3);
}

uint64_t sub_22978D3A8()
{

  return MEMORY[0x2822009F8](sub_22978D4C0, 0, 0);
}

uint64_t sub_22978D4C0()
{
  v2 = *(v0 + 32);
  v1 = *(v0 + 40);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D880C80, &unk_22A582A00);
  v5 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87CDD8, &qword_22A577C58) - 8);
  v6 = (*(*v5 + 80) + 32) & ~*(*v5 + 80);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_22A576180;
  v8 = v7 + v6;
  v9 = v8 + v5[14];
  v10 = [v1 spiClientIdentifier];
  sub_22A4DB79C();

  *v9 = v3;
  *(v9 + 8) = v4;
  v11 = sub_22956B768(v7);
  swift_setDeallocating();
  sub_22953EAE4(v8, &qword_27D87CDD8, &qword_22A577C58);
  swift_deallocClassInstance();
  *v2 = v11;
  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_22978D65C(uint64_t a1, void *a2, void *a3)
{
  v23 = a3;
  v5 = sub_22A4DD26C();
  v27 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_22A4DD29C();
  v25 = *(v8 - 8);
  v26 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D880C88, &qword_22A582A10);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v23 - v13;
  v24 = [a2 workQueue];
  (*(v12 + 16))(v14, a1, v11);
  v15 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v16 = swift_allocObject();
  v17 = v23;
  *(v16 + 16) = a2;
  *(v16 + 24) = v17;
  (*(v12 + 32))(v16 + v15, v14, v11);
  aBlock[4] = sub_229792CF8;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22953E640;
  aBlock[3] = &block_descriptor_31;
  v18 = _Block_copy(aBlock);
  v19 = a2;
  v20 = v17;
  sub_22A4DD28C();
  v28 = MEMORY[0x277D84F90];
  sub_229793150(&qword_281401CF0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87CEA0, &unk_22A577A40);
  sub_22953E5DC();
  sub_22A4DE03C();
  v21 = v24;
  MEMORY[0x22AAD0F80](0, v10, v7, v18);
  _Block_release(v18);

  (*(v27 + 8))(v7, v5);
  (*(v25 + 8))(v10, v26);
}

void sub_22978D9F4(void *a1, void *a2, uint64_t a3)
{
  v56 = a3;
  v58 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D880C88, &qword_22A582A10);
  v57 = *(v4 - 8);
  v54 = *(v57 + 64);
  MEMORY[0x28223BE20](v4);
  v55 = &v49 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D2A0, &unk_22A578BD0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v49 - v7;
  v9 = sub_22A4DB7DC();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v53 = &v49 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v52 = &v49 - v13;
  v14 = sub_22A4DD07C();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v49 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_229562F68(0, &qword_281401BC0, off_2786661B8);
  sub_22A4DDC0C();
  sub_22A4DD08C();
  v18 = a1;
  v19 = sub_22A4DD05C();
  v20 = sub_22A4DDCCC();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v50 = v14;
    v22 = v21;
    v23 = swift_slowAlloc();
    v51 = v4;
    v24 = v23;
    *v22 = 138412290;
    *(v22 + 4) = v18;
    *v23 = v18;
    v25 = v18;
    _os_log_impl(&dword_229538000, v19, v20, "[EnergyKit] Posting account message to owner of shared home %@ to clear data", v22, 0xCu);
    sub_22953EAE4(v24, &qword_27D87D7D0, &unk_22A578D90);
    v26 = v24;
    v4 = v51;
    MEMORY[0x22AAD4E50](v26, -1, -1);
    v27 = v22;
    v14 = v50;
    MEMORY[0x22AAD4E50](v27, -1, -1);
  }

  (*(v15 + 8))(v17, v14);
  sub_22A4DD5EC();
  sub_22A4DB75C();

  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    __break(1u);
    aBlock = 0;
    v60 = 0xE000000000000000;
    sub_22A4DE1FC();
    MEMORY[0x22AAD08C0](0xD00000000000001DLL, 0x800000022A595720);
    swift_getErrorValue();
    sub_22A4DE5EC();
    sub_22A4DE39C();
    __break(1u);
  }

  else
  {
    v28 = v52;
    (*(v10 + 32))(v52, v8, v9);
    v29 = [v18 uuid];
    v30 = v53;
    sub_22A4DB79C();

    v31 = objc_allocWithZone(HMDRemoteHomeMessageDestination);
    v32 = sub_22A4DB77C();
    v33 = sub_22A4DB77C();
    v34 = [v31 initWithTarget:v32 homeUUID:v33];

    v35 = *(v10 + 8);
    v35(v30, v9);
    v35(v28, v9);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D180, &qword_22A5780B0);
    v36 = (*(v10 + 80) + 32) & ~*(v10 + 80);
    v37 = swift_allocObject();
    *(v37 + 16) = xmmword_22A576180;
    v38 = [v18 spiClientIdentifier];
    sub_22A4DB79C();

    v39 = sub_2296727F4(v37);
    swift_setDeallocating();
    v35((v37 + v36), v9);
    swift_deallocClassInstance();
    aBlock = v39;
    v60 = MEMORY[0x277D84FA0];
    LOWORD(v61) = 257;
    sub_229792708();
    sub_229790B38();
    sub_22A4DD0BC();

    v40 = objc_opt_self();
    v41 = sub_22A4DD5AC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C3B0, &unk_22A576E90);
    v42 = sub_22A4DD47C();

    v43 = [v40 secureMessageWithName:v41 qualityOfService:25 destination:v34 messagePayload:v42];

    v44 = v57;
    v45 = v55;
    (*(v57 + 16))(v55, v56, v4);
    v46 = (*(v44 + 80) + 16) & ~*(v44 + 80);
    v47 = swift_allocObject();
    (*(v44 + 32))(v47 + v46, v45, v4);
    v63 = sub_229792D68;
    v64 = v47;
    aBlock = MEMORY[0x277D85DD0];
    v60 = 1107296256;
    v61 = sub_2295AAF60;
    v62 = &block_descriptor_34;
    v48 = _Block_copy(&aBlock);

    [v58 sendMessage:v43 completionHandler:v48];
    _Block_release(v48);
  }
}

uint64_t sub_22978E17C(void *a1)
{
  if (a1)
  {
    v1 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D880C88, &qword_22A582A10);
    sub_22A4DD8FC();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D880C88, &qword_22A582A10);
  return sub_22A4DD8FC();
}

uint64_t sub_22978E200(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[31] = a6;
  v7[32] = a7;
  v7[29] = a4;
  v7[30] = a5;
  v7[28] = a1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8804C0, &qword_22A57B5F0);
  v7[33] = v8;
  v7[34] = *(v8 - 8);
  v7[35] = swift_task_alloc();
  v9 = sub_22A4DD07C();
  v7[36] = v9;
  v7[37] = *(v9 - 8);
  v7[38] = swift_task_alloc();
  v7[39] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D2A0, &unk_22A578BD0);
  v7[40] = swift_task_alloc();
  v10 = sub_22A4DB7DC();
  v7[41] = v10;
  v7[42] = *(v10 - 8);
  v7[43] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22978E3D0, 0, 0);
}

uint64_t sub_22978E3D0()
{
  v53 = v0;
  v1 = *(v0 + 328);
  v2 = *(v0 + 336);
  v3 = *(v0 + 320);
  sub_22A4DD5EC();
  sub_22A4DB75C();

  v4 = (*(v2 + 48))(v3, 1, v1);
  if (v4 == 1)
  {
    __break(1u);
  }

  else
  {
    v6 = *(v0 + 336);
    v5 = *(v0 + 344);
    v7 = *(v0 + 328);
    v8 = *(v0 + 232);
    v9 = *(v0 + 240);
    (*(v6 + 32))(v5, *(v0 + 320), v7);
    v10 = objc_allocWithZone(HMDRemoteAccountMessageDestination);
    v11 = sub_22A4DB77C();
    v12 = [v10 initWithTarget:v11 handle:v8 multicast:1];
    *(v0 + 352) = v12;

    v13 = *(v6 + 8);
    v13(v5, v7);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D180, &qword_22A5780B0);
    v14 = (*(v6 + 80) + 32) & ~*(v6 + 80);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_22A576180;
    v16 = *(v6 + 16);
    *(v0 + 360) = v16;
    *(v0 + 368) = (v6 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v16(v15 + v14, v9, v7);
    v17 = sub_2296727F4(v15);
    swift_setDeallocating();
    v13(v15 + v14, v7);
    swift_deallocClassInstance();
    *(v0 + 168) = MEMORY[0x277D84FA0];
    *(v0 + 176) = v17;
    *(v0 + 184) = 257;
    sub_229792708();
    sub_229790B38();
    sub_22A4DD0BC();
    v18 = *(v0 + 248);
    v19 = *(v0 + 232);
    v20 = objc_opt_self();
    v21 = sub_22A4DD5AC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C3B0, &unk_22A576E90);
    v22 = sub_22A4DD47C();

    v51 = [v20 secureMessageWithName:v21 qualityOfService:25 destination:v12 messagePayload:v22];
    *(v0 + 376) = v51;

    *(v0 + 384) = sub_229562F68(0, &qword_281401BC0, off_2786661B8);
    sub_22A4DDC0C();
    sub_22A4DD08C();
    v23 = v19;
    v24 = v18;

    v25 = sub_22A4DD05C();
    v26 = sub_22A4DDCCC();

    v27 = os_log_type_enabled(v25, v26);
    v28 = *(v0 + 312);
    v30 = *(v0 + 288);
    v29 = *(v0 + 296);
    if (v27)
    {
      v31 = *(v0 + 248);
      v50 = *(v0 + 312);
      v32 = *(v0 + 232);
      v49 = *(v0 + 288);
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v52 = v35;
      *v33 = 138740483;
      *(v33 + 4) = v32;
      *(v33 + 12) = 2112;
      *(v33 + 14) = v31;
      *v34 = v32;
      v34[1] = v31;
      *(v33 + 22) = 2080;
      *(v0 + 192) = MEMORY[0x277D84FA0];
      *(v0 + 200) = v17;
      *(v0 + 208) = 257;
      v36 = v32;
      v37 = v31;
      v38 = sub_22A4DBA6C();
      v40 = v39;

      v41 = sub_2295A3E30(v38, v40, &v52);

      *(v33 + 24) = v41;
      _os_log_impl(&dword_229538000, v25, v26, "[EnergyKit] Posting account message to shared admin '%{sensitive}@' of shared home %@ to clear data: %s", v33, 0x20u);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D7D0, &unk_22A578D90);
      swift_arrayDestroy();
      MEMORY[0x22AAD4E50](v34, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v35);
      MEMORY[0x22AAD4E50](v35, -1, -1);
      MEMORY[0x22AAD4E50](v33, -1, -1);

      v42 = *(v29 + 8);
      v42(v50, v49);
    }

    else
    {

      v42 = *(v29 + 8);
      v42(v28, v30);
    }

    *(v0 + 392) = v42;
    v44 = *(v0 + 272);
    v43 = *(v0 + 280);
    v46 = *(v0 + 256);
    v45 = *(v0 + 264);
    *(v0 + 16) = v0;
    *(v0 + 24) = sub_22978EAA4;
    swift_continuation_init();
    *(v0 + 136) = v45;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 112));
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E520, &unk_22A579920);
    sub_22A4DD8DC();
    (*(v44 + 32))(boxed_opaque_existential_1, v43, v45);
    *(v0 + 80) = MEMORY[0x277D85DD0];
    *(v0 + 88) = 1107296256;
    *(v0 + 96) = sub_229787290;
    *(v0 + 104) = &block_descriptor_78;
    [v46 sendMessage:v51 completionHandler:v0 + 80];
    (*(v44 + 8))(boxed_opaque_existential_1, v45);
    v4 = v0 + 16;
  }

  return MEMORY[0x282200938](v4);
}

uint64_t sub_22978EAA4()
{
  v1 = *(*v0 + 48);
  *(*v0 + 400) = v1;
  if (v1)
  {
    v2 = sub_22978ED94;
  }

  else
  {
    v2 = sub_22978EBB4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_22978EBB4()
{
  v1 = v0[45];
  v2 = v0[41];
  v3 = v0[30];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D880C80, &unk_22A582A00);
  v4 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87CDD8, &qword_22A577C58) - 8);
  v5 = (*(*v4 + 80) + 32) & ~*(*v4 + 80);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_22A576180;
  v7 = v6 + v5;
  v8 = v7 + v4[14];
  v1(v7, v3, v2);
  v9 = v0[47];
  v10 = v0[44];
  v11 = v0[28];
  v12 = v0[50] != 0;
  *v8 = 0;
  *(v8 + 8) = v12;
  v13 = sub_22956B768(v6);
  swift_setDeallocating();
  sub_22953EAE4(v7, &qword_27D87CDD8, &qword_22A577C58);
  swift_deallocClassInstance();

  *v11 = v13;

  v14 = v0[1];

  return v14();
}

uint64_t sub_22978ED94(uint64_t a1)
{
  v2 = v1[50];
  swift_willThrow();
  sub_22A4DDC0C();
  sub_22A4DD08C();
  v3 = v2;
  v4 = sub_22A4DD05C();
  v5 = sub_22A4DDCEC();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v1[50];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_229538000, v4, v5, "[EnergyKit] Failed to send message: %@", v7, 0xCu);
    sub_22953EAE4(v8, &qword_27D87D7D0, &unk_22A578D90);
    MEMORY[0x22AAD4E50](v8, -1, -1);
    MEMORY[0x22AAD4E50](v7, -1, -1);
  }

  v11 = v1[49];
  v29 = v1[50];
  v12 = v1[45];
  v13 = v1[41];
  v14 = v1[38];
  v15 = v1[36];
  v16 = v1[30];

  v11(v14, v15);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D880C80, &unk_22A582A00);
  v17 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87CDD8, &qword_22A577C58) - 8);
  v18 = (*(*v17 + 80) + 32) & ~*(*v17 + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_22A576180;
  v20 = v19 + v18;
  v21 = v19 + v18 + v17[14];
  v12(v20, v16, v13);
  v22 = v1[47];
  v23 = v1[44];
  v24 = v1[28];
  v25 = v1[50] != 0;
  *v21 = v29;
  *(v21 + 8) = v25;
  v26 = sub_22956B768(v19);
  swift_setDeallocating();
  sub_22953EAE4(v20, &qword_27D87CDD8, &qword_22A577C58);
  swift_deallocClassInstance();

  *v24 = v26;

  v27 = v1[1];

  return v27();
}

uint64_t sub_22978F09C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[12] = a4;
  v5[13] = a5;
  v5[10] = a2;
  v5[11] = a3;
  v5[9] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D8F0, &qword_22A578D70);
  v5[14] = swift_task_alloc();
  v5[15] = swift_task_alloc();
  v5[16] = swift_task_alloc();
  v6 = sub_22A4DB7DC();
  v5[17] = v6;
  v5[18] = *(v6 - 8);
  v5[19] = swift_task_alloc();
  v5[20] = swift_task_alloc();
  v7 = sub_22A4DD07C();
  v5[21] = v7;
  v5[22] = *(v7 - 8);
  v5[23] = swift_task_alloc();
  v5[24] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22978F228, 0, 0);
}

void sub_22978F228()
{
  v97 = v0;
  sub_229562F68(0, &qword_281401BC0, off_2786661B8);
  sub_22A4DDC0C();
  sub_22A4DD08C();

  v3 = sub_22A4DD05C();
  v4 = sub_22A4DDCCC();

  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 192);
  v8 = *(v0 + 168);
  v7 = *(v0 + 176);
  if (v5)
  {
    v9 = *(v0 + 88);
    v93 = *(v0 + 96);
    v94 = *(v0 + 192);
    v10 = swift_slowAlloc();
    v1 = swift_slowAlloc();
    v96 = v1;
    *v10 = 136315394;
    v11 = sub_229562F68(0, &qword_2814017B0, off_278666198);
    v12 = MEMORY[0x22AAD0A20](v9, v11);
    v14 = sub_2295A3E30(v12, v13, &v96);

    *(v10 + 4) = v14;
    *(v10 + 12) = 2080;
    v15 = MEMORY[0x22AAD0A20](v93, v11);
    v2 = sub_2295A3E30(v15, v16, &v96);

    *(v10 + 14) = v2;
    _os_log_impl(&dword_229538000, v3, v4, "[EnergyKit] Current user is the owner of %s, shared admin of %s", v10, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AAD4E50](v1, -1, -1);
    MEMORY[0x22AAD4E50](v10, -1, -1);

    v17 = *(v7 + 8);
    v18 = v94;
  }

  else
  {

    v17 = *(v7 + 8);
    v18 = v6;
  }

  v90 = v17;
  v17(v18, v8);
  v19 = *(v0 + 88);
  if (v19 >> 62)
  {
    v20 = sub_22A4DE0EC();
  }

  else
  {
    v20 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v21 = MEMORY[0x277D84F90];
  v87 = v20;
  if (v20)
  {
    v96 = MEMORY[0x277D84F90];
    sub_22958345C(0, v20 & ~(v20 >> 63), 0);
    if (v87 < 0)
    {
      __break(1u);
      goto LABEL_37;
    }

    v22 = 0;
    v2 = *(v0 + 144);
    v21 = v96;
    v23 = v19 & 0xC000000000000001;
    v24 = *(v0 + 88) + 32;
    do
    {
      if (v23)
      {
        v25 = MEMORY[0x22AAD13F0](v22, *(v0 + 88));
      }

      else
      {
        v25 = *(v24 + 8 * v22);
      }

      v26 = v25;
      v27 = [v25 spiClientIdentifier];
      sub_22A4DB79C();

      v96 = v21;
      v4 = *(v21 + 16);
      v28 = *(v21 + 24);
      if (v4 >= v28 >> 1)
      {
        sub_22958345C((v28 > 1), v4 + 1, 1);
        v21 = v96;
      }

      v29 = *(v0 + 160);
      v30 = *(v0 + 136);
      ++v22;
      *(v21 + 16) = v4 + 1;
      (*(v2 + 32))(v21 + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + *(v2 + 72) * v4, v29, v30);
    }

    while (v87 != v22);
  }

  v1 = *(v0 + 96);
  v84 = sub_2296727F4(v21);

  v93 = v1 >> 62;
  if (v1 >> 62)
  {
    v31 = sub_22A4DE0EC();
  }

  else
  {
    v31 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v32 = MEMORY[0x277D84F90];
  v86 = v31;
  if (!v31)
  {
    goto LABEL_26;
  }

  v96 = MEMORY[0x277D84F90];
  sub_22958345C(0, v31 & ~(v31 >> 63), 0);
  if (v31 < 0)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v33 = 0;
  v34 = *(v0 + 144);
  v32 = v96;
  v35 = *(v0 + 96) + 32;
  do
  {
    if ((v1 & 0xC000000000000001) != 0)
    {
      v36 = MEMORY[0x22AAD13F0](v33, *(v0 + 96));
    }

    else
    {
      v36 = *(v35 + 8 * v33);
    }

    v37 = v36;
    v38 = [v36 spiClientIdentifier];
    sub_22A4DB79C();

    v96 = v32;
    v40 = *(v32 + 16);
    v39 = *(v32 + 24);
    if (v40 >= v39 >> 1)
    {
      sub_22958345C((v39 > 1), v40 + 1, 1);
      v32 = v96;
    }

    v41 = *(v0 + 152);
    v42 = *(v0 + 136);
    ++v33;
    *(v32 + 16) = v40 + 1;
    (*(v34 + 32))(v32 + ((*(v34 + 80) + 32) & ~*(v34 + 80)) + *(v34 + 72) * v40, v41, v42);
  }

  while (v86 != v33);
LABEL_26:
  v43 = *(v0 + 128);
  v44 = *(v0 + 104);
  v45 = sub_2296727F4(v32);

  v46 = sub_22A4DD9DC();
  v2 = *(v46 - 8);
  v94 = v46;
  v92 = *(v2 + 56);
  v92(v43, 1, 1);
  v47 = swift_allocObject();
  *(v47 + 16) = 0;
  *(v47 + 24) = 0;
  *(v47 + 32) = 1;
  *(v47 + 40) = v84;
  *(v47 + 48) = v45;
  *(v47 + 56) = v44;

  v83 = v45;

  v48 = v44;
  sub_229787078(v43, &unk_22A5829B0, v47);
  sub_22953EAE4(v43, &unk_27D87D8F0, &qword_22A578D70);
  v49 = [v48 appleAccountManager];
  if (!v49)
  {
LABEL_72:
    __break(1u);
    return;
  }

  v50 = v49;
  v51 = [v49 account];

  if (!v51)
  {
LABEL_40:
    sub_22A4DDC0C();
    sub_22A4DD08C();
    v58 = sub_22A4DD05C();
    v4 = sub_22A4DDCEC();
    v59 = os_log_type_enabled(v58, v4);
    v60 = *(v0 + 184);
    v61 = *(v0 + 168);
    if (v59)
    {
      v62 = swift_slowAlloc();
      *v62 = 0;
      _os_log_impl(&dword_229538000, v58, v4, "[EnergyKit] Cannot signal other devices to clear data because there is no current account handle", v62, 2u);
      MEMORY[0x22AAD4E50](v62, -1, -1);
    }

    v90(v60, v61);
    goto LABEL_43;
  }

  v52 = [v51 handles];

  sub_229562F68(0, &qword_27D880818, off_278666008);
  v4 = sub_22A4DD83C();

  if (!(v4 >> 62))
  {
    if (*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_30;
    }

    goto LABEL_39;
  }

LABEL_38:
  if (!sub_22A4DE0EC())
  {
LABEL_39:

    goto LABEL_40;
  }

LABEL_30:
  if ((v4 & 0xC000000000000001) != 0)
  {
LABEL_69:
    v53 = MEMORY[0x22AAD13F0](0, v4);
    goto LABEL_33;
  }

  if (!*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

  v53 = *(v4 + 32);
LABEL_33:
  v54 = v53;
  v55 = *(v0 + 128);
  v56 = *(v0 + 104);

  (v92)(v55, 1, 1, v94);
  v4 = swift_allocObject();
  *(v4 + 16) = 0;
  *(v4 + 24) = 0;
  *(v4 + 32) = v54;
  *(v4 + 40) = v84;
  *(v4 + 48) = v83;
  *(v4 + 56) = v56;

  v57 = v56;
  sub_229787078(v55, &unk_22A5829C0, v4);
  sub_22953EAE4(v55, &unk_27D87D8F0, &qword_22A578D70);
LABEL_43:
  v63 = 0;
  v95 = v1 & 0xFFFFFFFFFFFFFF8;
  v89 = *(v0 + 96) + 32;
  v91 = v1 & 0xC000000000000001;
  v88 = (v2 + 48);
  v85 = (v2 + 8);
  while (1)
  {
    v2 = v94;
    if (v93)
    {
      break;
    }

    if (v63 == *(v95 + 16))
    {
      goto LABEL_62;
    }

LABEL_49:
    if (v91)
    {
      v65 = MEMORY[0x22AAD13F0](v63, *(v0 + 96));
    }

    else
    {
      if (v63 >= *(v95 + 16))
      {
        goto LABEL_67;
      }

      v65 = *(v89 + 8 * v63);
    }

    v66 = v65;
    if (__OFADD__(v63, 1))
    {
      __break(1u);
LABEL_67:
      __break(1u);
LABEL_68:
      __break(1u);
      goto LABEL_69;
    }

    v67 = [*(v0 + 104) messageDispatcher];
    if (!v67)
    {
      goto LABEL_71;
    }

    v68 = v67;
    v70 = *(v0 + 112);
    v69 = *(v0 + 120);
    (v92)(v69, 1, 1, v94);
    v1 = swift_allocObject();
    *(v1 + 16) = 0;
    v71 = (v1 + 16);
    *(v1 + 24) = 0;
    *(v1 + 32) = v66;
    *(v1 + 40) = v68;
    sub_229569C24(v69, v70);
    v72 = (*v88)(v70, 1, v94);
    v73 = v66;
    v4 = v68;
    v74 = *(v0 + 112);
    if (v72 == 1)
    {
      sub_22953EAE4(*(v0 + 112), &unk_27D87D8F0, &qword_22A578D70);
      if (*v71)
      {
        goto LABEL_56;
      }
    }

    else
    {
      sub_22A4DD9CC();
      (*v85)(v74, v94);
      if (*v71)
      {
LABEL_56:
        swift_getObjectType();
        swift_unknownObjectRetain();
        v75 = sub_22A4DD8CC();
        v77 = v76;
        swift_unknownObjectRelease();
        goto LABEL_59;
      }
    }

    v75 = 0;
    v77 = 0;
LABEL_59:
    v78 = **(v0 + 80);
    v79 = swift_allocObject();
    *(v79 + 16) = &unk_22A5829D0;
    *(v79 + 24) = v1;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D880C58, &qword_22A582980);
    v80 = v77 | v75;
    if (v77 | v75)
    {
      v80 = v0 + 16;
      *(v0 + 16) = 0;
      *(v0 + 24) = 0;
      *(v0 + 32) = v75;
      *(v0 + 40) = v77;
    }

    v64 = *(v0 + 120);
    *(v0 + 48) = 1;
    *(v0 + 56) = v80;
    *(v0 + 64) = v78;
    swift_task_create();

    sub_22953EAE4(v64, &unk_27D87D8F0, &qword_22A578D70);
    ++v63;
  }

  if (v63 != sub_22A4DE0EC())
  {
    goto LABEL_49;
  }

LABEL_62:

  if (__OFADD__(v87, v86))
  {
    goto LABEL_68;
  }

  v81 = swift_task_alloc();
  *(v0 + 200) = v81;
  *v81 = v0;
  v81[1] = sub_22978FD94;
  v82 = *(v0 + 80);

  sub_229790B8C(v82, v87 + v86, 0);
}

uint64_t sub_22978FD94(uint64_t a1)
{
  *(*v1 + 208) = a1;

  return MEMORY[0x2822009F8](sub_22978FE94, 0, 0);
}

uint64_t sub_22978FE94()
{
  **(v0 + 72) = *(v0 + 208);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22978FF4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7)
{
  *(v7 + 112) = a6;
  *(v7 + 48) = a5;
  *(v7 + 56) = a7;
  *(v7 + 32) = a3;
  *(v7 + 40) = a4;
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;
  v8 = sub_22A4DD07C();
  *(v7 + 64) = v8;
  *(v7 + 72) = *(v8 - 8);
  *(v7 + 80) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D8F0, &qword_22A578D70);
  *(v7 + 88) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_229790050, 0, 0);
}

void sub_229790050()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 112);
  v3 = *(v0 + 40);
  v4 = *(v0 + 48);
  v5 = *(v0 + 32);
  v6 = sub_22A4DD9DC();
  v7 = (*(v6 - 8) + 56);
  v43 = *v7;
  (*v7)(v1, 1, 1, v6);
  v8 = swift_allocObject();
  *(v8 + 16) = 0;
  *(v8 + 24) = 0;
  *(v8 + 32) = v2;
  *(v8 + 40) = v3;
  *(v8 + 48) = v4;
  *(v8 + 56) = v5;

  v9 = v5;
  sub_229787078(v1, &unk_22A582A48, v8);
  sub_22953EAE4(v1, &unk_27D87D8F0, &qword_22A578D70);
  if (v2 != 1)
  {
    goto LABEL_15;
  }

  v10 = [*(v0 + 32) appleAccountManager];
  if (!v10)
  {
    goto LABEL_38;
  }

  v11 = v10;
  v12 = [v10 account];

  if (!v12)
  {
LABEL_12:
    sub_229562F68(0, &qword_281401BC0, off_2786661B8);
    sub_22A4DDC0C();
    sub_22A4DD08C();
    v22 = sub_22A4DD05C();
    v23 = sub_22A4DDCEC();
    v24 = os_log_type_enabled(v22, v23);
    v26 = *(v0 + 72);
    v25 = *(v0 + 80);
    v27 = *(v0 + 64);
    if (v24)
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&dword_229538000, v22, v23, "[EnergyKit] Cannot signal other devices to clear data because there is no current account handle", v28, 2u);
      MEMORY[0x22AAD4E50](v28, -1, -1);
    }

    (*(v26 + 8))(v25, v27);
    goto LABEL_15;
  }

  v13 = [v12 handles];

  sub_229562F68(0, &qword_27D880818, off_278666008);
  v2 = sub_22A4DD83C();

  if (!(v2 >> 62))
  {
    if (*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_6;
    }

    goto LABEL_11;
  }

  if (!sub_22A4DE0EC())
  {
LABEL_11:

    goto LABEL_12;
  }

LABEL_6:
  if ((v2 & 0xC000000000000001) != 0)
  {
    goto LABEL_35;
  }

  if (!*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
    return;
  }

  for (i = *(v2 + 32); ; i = MEMORY[0x22AAD13F0](0, v2))
  {
    v15 = i;
    v16 = *(v0 + 88);
    v18 = *(v0 + 40);
    v17 = *(v0 + 48);
    v19 = *(v0 + 32);

    v43(v16, 1, 1, v6);
    v20 = swift_allocObject();
    v20[2] = 0;
    v20[3] = 0;
    v20[4] = v15;
    v20[5] = v18;
    v20[6] = v17;
    v20[7] = v19;

    v21 = v19;
    sub_229787078(v16, &unk_22A582A50, v20);
    sub_22953EAE4(v16, &unk_27D87D8F0, &qword_22A578D70);
LABEL_15:
    v29 = **(v0 + 56);
    if (!(v29 >> 62))
    {
      v30 = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_17;
    }

    while (1)
    {
      v30 = sub_22A4DE0EC();
LABEL_17:

      if (!v30)
      {
        break;
      }

      v31 = 0;
      v2 = v29 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if ((v29 & 0xC000000000000001) != 0)
        {
          v32 = MEMORY[0x22AAD13F0](v31, v29);
        }

        else
        {
          if (v31 >= *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_32;
          }

          v32 = *(v29 + 8 * v31 + 32);
        }

        v33 = v32;
        v34 = v31 + 1;
        if (__OFADD__(v31, 1))
        {
          break;
        }

        v35 = [*(v0 + 32) messageDispatcher];
        if (!v35)
        {
          goto LABEL_37;
        }

        v36 = v35;
        sub_2297917B4(*(v0 + 24), v33, v35);

        ++v31;
        if (v34 == v30)
        {
          goto LABEL_27;
        }
      }

      __break(1u);
LABEL_32:
      __break(1u);
    }

LABEL_27:
    v37 = *(v0 + 40);
    v6 = *(v0 + 48);

    v38 = *(v37 + 16);
    v39 = *(v6 + 16);
    v40 = v38 + v39;
    if (!__OFADD__(v38, v39))
    {
      break;
    }

    __break(1u);
LABEL_35:
    ;
  }

  v41 = swift_task_alloc();
  *(v0 + 96) = v41;
  *v41 = v0;
  v41[1] = sub_22979052C;
  v42 = *(v0 + 24);

  sub_229790B8C(v42, v40, 0);
}

uint64_t sub_22979052C(uint64_t a1)
{
  *(*v1 + 104) = a1;

  return MEMORY[0x2822009F8](sub_22979062C, 0, 0);
}

uint64_t sub_22979062C()
{
  **(v0 + 16) = *(v0 + 104);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2297906A0(void *a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  v12 = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D880C20, &unk_22A582948);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v12 - v9;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_229792618();
  sub_22A4DE80C();
  v14 = a2;
  v13 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87FC18, &qword_22A582940);
  sub_22979266C(&qword_27D880C28, &qword_27D880C30, MEMORY[0x277CC95F8], MEMORY[0x277D83B50]);
  sub_22A4DE59C();
  if (v4)
  {
    return (*(v8 + 8))(v10, v7);
  }

  v14 = v12;
  v13 = 1;
  sub_22A4DE59C();
  LOBYTE(v14) = 2;
  sub_22A4DE55C();
  LOBYTE(v14) = 3;
  sub_22A4DE55C();
  return (*(v8 + 8))(v10, v7);
}

unint64_t sub_2297908E4()
{
  v1 = 0xD000000000000017;
  if (*v0 != 2)
  {
    v1 = 0xD000000000000012;
  }

  v2 = 0xD000000000000015;
  if (!*v0)
  {
    v2 = 0xD000000000000014;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_229790958@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_2297921CC(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_229790980(uint64_t a1)
{
  v2 = sub_229792618();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2297909BC(uint64_t a1)
{
  v2 = sub_229792618();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_229790A1C@<X0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  result = sub_229792334(a2);
  if (!v2)
  {
    *a1 = result;
    *(a1 + 8) = v5;
    *(a1 + 16) = v6 & 1;
    *(a1 + 17) = HIBYTE(v6) & 1;
  }

  return result;
}

uint64_t sub_229790A58(void *a1)
{
  if (*(v1 + 17))
  {
    v2 = 256;
  }

  else
  {
    v2 = 0;
  }

  return sub_2297906A0(a1, *v1, *(v1 + 8), v2 | *(v1 + 16));
}

unint64_t sub_229790B38()
{
  result = qword_27D880BF8;
  if (!qword_27D880BF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D880BF8);
  }

  return result;
}

uint64_t sub_229790B8C(uint64_t a1, uint64_t a2, char a3)
{
  *(v3 + 160) = a3;
  *(v3 + 48) = a1;
  *(v3 + 56) = a2;
  v4 = sub_22A4DB7DC();
  *(v3 + 64) = v4;
  *(v3 + 72) = *(v4 - 8);
  *(v3 + 80) = swift_task_alloc();
  *(v3 + 88) = swift_task_alloc();
  *(v3 + 96) = swift_task_alloc();
  *(v3 + 104) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D880C60, &qword_22A582998);
  *(v3 + 112) = swift_task_alloc();
  *(v3 + 120) = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D880C70, &qword_22A5829F0);
  *(v3 + 128) = v5;
  *(v3 + 136) = *(v5 - 8);
  *(v3 + 144) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_229790D20, 0, 0);
}

uint64_t sub_229790D20()
{
  *(v0 + 16) = MEMORY[0x277D84F98];
  if ((*(v0 + 160) & 1) == 0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D880C58, &qword_22A582980);
    sub_22A4DD4CC();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D880C58, &qword_22A582980);
  sub_22A4DD91C();
  v1 = swift_task_alloc();
  *(v0 + 152) = v1;
  *v1 = v0;
  v1[1] = sub_229790E34;
  v2 = *(v0 + 128);

  return MEMORY[0x2822002E8](v0 + 24, 0, 0, v2);
}

uint64_t sub_229790E34()
{

  return MEMORY[0x2822009F8](sub_229790F30, 0, 0);
}

uint64_t sub_229790F30(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4[3];
  if (v5)
  {
    v6 = 0;
    v96 = (v4 + 3);
    v97 = v4 + 2;
    v98 = v4[3];
    v7 = *(v5 + 64);
    v95 = v5 + 64;
    v8 = -1;
    v9 = -1 << *(v5 + 32);
    if (-v9 < 64)
    {
      v8 = ~(-1 << -v9);
    }

    v10 = v8 & v7;
    v11 = (63 - v9) >> 6;
    v99 = v11;
    if ((v8 & v7) == 0)
    {
      goto LABEL_7;
    }

    while (1)
    {
      while (1)
      {
        v17 = v6;
LABEL_17:
        v20 = v4[14];
        v105 = v4[13];
        v22 = v4[8];
        v21 = v4[9];
        v23 = __clz(__rbit64(v10));
        v10 &= v10 - 1;
        v24 = v23 | (v17 << 6);
        (*(v21 + 16))();
        v25 = *(v98 + 56) + 16 * v24;
        v26 = *v25;
        v27 = *(v25 + 8);
        v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D880C68, &qword_22A5829A0);
        v29 = v20 + *(v28 + 48);
        (*(v21 + 32))(v20, v105, v22);
        *v29 = v26;
        *(v29 + 8) = v27;
        (*(*(v28 - 8) + 56))(v20, 0, 1, v28);
        v4 = v108;
        sub_229792944(v26, v27);
        v16 = v17;
LABEL_18:
        v30 = v4[15];
        sub_229792950(v4[14], v30);
        v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D880C68, &qword_22A5829A0);
        if ((*(*(v31 - 8) + 48))(v30, 1, v31) == 1)
        {

          v91 = swift_task_alloc();
          v4[19] = v91;
          *v91 = v4;
          v91[1] = sub_229790E34;
          a4 = v4[16];
          a1 = v96;
          a2 = 0;
          a3 = 0;

          return MEMORY[0x2822002E8](a1, a2, a3, a4);
        }

        v32 = v4[15] + *(v31 + 48);
        v33 = *v32;
        v34 = *(v32 + 8);
        (*(v4[9] + 32))(v4[12]);
        v35 = v4[2];
        if (*(v35 + 16))
        {
          v36 = sub_2296DBEC0(v4[12]);
          if (v37)
          {
            break;
          }
        }

        v51 = v4[10];
        v52 = *(v4[9] + 16);
        v52(v51, v4[12], v4[8]);
        v107 = v33;
        sub_229792944(v33, v34);
        v53 = v4[2];
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v4[4] = v53;
        a1 = sub_2296DBEC0(v51);
        v55 = *(v53 + 16);
        v56 = (a2 & 1) == 0;
        v46 = __OFADD__(v55, v56);
        v57 = v55 + v56;
        if (v46)
        {
          goto LABEL_56;
        }

        v58 = a2;
        v102 = v16;
        v104 = v34;
        if (*(v53 + 24) >= v57)
        {
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v89 = a1;
            sub_229899690();
            a1 = v89;
          }
        }

        else
        {
          v59 = v4[10];
          sub_229895CB4(v57, isUniquelyReferenced_nonNull_native);
          a1 = sub_2296DBEC0(v59);
          if ((v58 & 1) != (v60 & 1))
          {
LABEL_52:

            return sub_22A4DE67C();
          }
        }

        v61 = v4[4];
        v100 = v4[12];
        v63 = v4[9];
        v62 = v4[10];
        v64 = v4[8];
        v65 = (v63 + 8);
        if (v58)
        {
          v66 = v61[7] + 16 * a1;
          v67 = *v66;
          v68 = *(v66 + 8);
          *v66 = v107;
          *(v66 + 8) = v104;
          sub_2297929C0(v67, v68);
          sub_2297929C0(v107, v104);
          v69 = *v65;
          (*v65)(v62, v64);
          a1 = v69(v100, v64);
        }

        else
        {
          v61[(a1 >> 6) + 8] |= 1 << a1;
          v70 = a1;
          v52(v61[6] + *(v63 + 72) * a1, v62, v64);
          v71 = v61[7] + 16 * v70;
          *v71 = v107;
          *(v71 + 8) = v104;
          sub_2297929C0(v107, v104);
          v72 = *(v63 + 8);
          v72(v62, v64);
          a1 = (v72)(v100, v64);
          v73 = v61[2];
          v46 = __OFADD__(v73, 1);
          v74 = v73 + 1;
          if (v46)
          {
            goto LABEL_57;
          }

          v61[2] = v74;
        }

        *v97 = v61;
LABEL_37:
        v6 = v102;
        v4 = v108;
        v11 = v99;
        if (!v10)
        {
LABEL_7:
          if (v11 <= v6 + 1)
          {
            v15 = v6 + 1;
          }

          else
          {
            v15 = v11;
          }

          v16 = v15 - 1;
          while (1)
          {
            v17 = v6 + 1;
            if (__OFADD__(v6, 1))
            {
              break;
            }

            if (v17 >= v11)
            {
              v18 = v4[14];
              v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D880C68, &qword_22A5829A0);
              (*(*(v19 - 8) + 56))(v18, 1, 1, v19);
              v10 = 0;
              goto LABEL_18;
            }

            v10 = *(v95 + 8 * v17);
            ++v6;
            if (v10)
            {
              goto LABEL_17;
            }
          }

          __break(1u);
LABEL_56:
          __break(1u);
LABEL_57:
          __break(1u);
LABEL_58:
          __break(1u);
LABEL_59:
          __break(1u);
          return MEMORY[0x2822002E8](a1, a2, a3, a4);
        }
      }

      v38 = *(*(v35 + 56) + 16 * v36 + 8);
      v39 = v4[12];
      if ((v38 & 1) == 0)
      {
        v40 = v4[11];
        v41 = *(v4[9] + 16);
        v41(v40, v4[12], v4[8]);
        v106 = v33;
        sub_229792944(v33, v34);
        v42 = v4[2];
        v43 = swift_isUniquelyReferenced_nonNull_native();
        v4[5] = v42;
        a1 = sub_2296DBEC0(v40);
        v44 = *(v42 + 16);
        v45 = (a2 & 1) == 0;
        v46 = __OFADD__(v44, v45);
        v47 = v44 + v45;
        if (v46)
        {
          goto LABEL_58;
        }

        v48 = a2;
        v102 = v16;
        v103 = v34;
        if (*(v42 + 24) >= v47)
        {
          if ((v43 & 1) == 0)
          {
            v90 = a1;
            sub_229899690();
            a1 = v90;
          }
        }

        else
        {
          v49 = v4[11];
          sub_229895CB4(v47, v43);
          a1 = sub_2296DBEC0(v49);
          if ((v48 & 1) != (v50 & 1))
          {
            goto LABEL_52;
          }
        }

        v75 = v4[5];
        v76 = v4[11];
        v101 = v4[12];
        v78 = v4[8];
        v77 = v4[9];
        v79 = (v77 + 8);
        if (v48)
        {
          v80 = v75[7] + 16 * a1;
          v81 = *v80;
          v82 = *(v80 + 8);
          *v80 = v106;
          *(v80 + 8) = v103;
          sub_2297929C0(v81, v82);
          sub_2297929C0(v106, v103);
          v83 = *v79;
          (*v79)(v76, v78);
          a1 = v83(v101, v78);
        }

        else
        {
          v75[(a1 >> 6) + 8] |= 1 << a1;
          v84 = a1;
          v41(v75[6] + *(v77 + 72) * a1, v76, v78);
          v85 = v75[7] + 16 * v84;
          *v85 = v106;
          *(v85 + 8) = v103;
          sub_2297929C0(v106, v103);
          v86 = *(v77 + 8);
          v86(v76, v78);
          a1 = (v86)(v101, v78);
          v87 = v75[2];
          v46 = __OFADD__(v87, 1);
          v88 = v87 + 1;
          if (v46)
          {
            goto LABEL_59;
          }

          v75[2] = v88;
        }

        *v97 = v75;
        goto LABEL_37;
      }

      v12 = v33;
      v13 = v4[8];
      v14 = v4[9];
      sub_2297929C0(v12, v34);
      a1 = (*(v14 + 8))(v39, v13);
      v6 = v16;
      v11 = v99;
      if (!v10)
      {
        goto LABEL_7;
      }
    }
  }

  (*(v4[17] + 8))(v4[18], v4[16], a3, a4);
  v92 = v4[2];

  v93 = v4[1];

  return v93(v92);
}

uint64_t sub_2297917B4(NSObject *a1, void *a2, void *a3)
{
  v75 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D8F0, &qword_22A578D70);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v8 = &v66 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v84 = &v66 - v9;
  v76 = sub_22A4DB7DC();
  v78 = *(v76 - 8);
  v10 = *(v78 + 64);
  v11 = MEMORY[0x28223BE20](v76);
  v74 = &v66 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v79 = &v66 - v12;
  v13 = sub_22A4DD07C();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v66 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = MEMORY[0x277D84F90];
  v77 = a2;
  v17 = [a2 users];
  if (!v17)
  {
LABEL_52:
    __break(1u);
LABEL_53:
    v89 = 0;
    v90 = 0xE000000000000000;
    sub_22A4DE1FC();

    v89 = 0xD000000000000015;
    v90 = 0x800000022A5957C0;
    v88[4] = [a1 v10[250]];
    type metadata accessor for HMDUserPrivilege(0);
    v65 = sub_22A4DBA6C();
    MEMORY[0x22AAD08C0](v65);

    result = sub_22A4DE39C();
    __break(1u);
    return result;
  }

  v18 = v17;
  sub_229562F68(0, &qword_281401790, off_278666348);
  v19 = sub_22A4DD83C();

  if (v19 >> 62)
  {
LABEL_48:
    v72 = v19 & 0xFFFFFFFFFFFFFF8;
    v21 = sub_22A4DE0EC();
  }

  else
  {
    v72 = v19 & 0xFFFFFFFFFFFFFF8;
    v21 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v73 = v8;
  v67 = v10;
  v69 = a1;
  if (!v21)
  {
    v23 = MEMORY[0x277D84F90];
    goto LABEL_30;
  }

  v22 = 0;
  v83 = v19 & 0xC000000000000001;
  v80 = v14 + 8;
  v23 = MEMORY[0x277D84F90];
  v10 = &selRef_preProcessMediaSystemMessage_;
  *&v20 = 138412290;
  v70 = v20;
  v8 = v72;
  v71 = v16;
  v81 = v19;
  for (i = v21; i != v22; v21 = i)
  {
    v14 = v22;
    while (1)
    {
      if (v83)
      {
        v24 = MEMORY[0x22AAD13F0](v14, v19);
      }

      else
      {
        if (v14 >= *(v8 + 2))
        {
          goto LABEL_47;
        }

        v24 = *(v19 + 8 * v14 + 32);
      }

      a1 = v24;
      v22 = (v14 + 1);
      if (__OFADD__(v14, 1))
      {
        __break(1u);
LABEL_47:
        __break(1u);
        goto LABEL_48;
      }

      v25 = [v24 v10[250]];
      if (v25 <= 2)
      {
        if (v25 > 2)
        {
          goto LABEL_53;
        }

        goto LABEL_8;
      }

      if (v25 != 5)
      {
        break;
      }

LABEL_8:

LABEL_9:
      ++v14;
      if (v22 == v21)
      {
        goto LABEL_30;
      }
    }

    if (v25 != 4)
    {
      if (v25 != 3)
      {
        goto LABEL_53;
      }

      goto LABEL_8;
    }

    v26 = [a1 accountHandle];
    if (!v26)
    {
      sub_229562F68(0, &qword_281401BC0, off_2786661B8);
      sub_22A4DDC0C();
      sub_22A4DD08C();
      a1 = a1;
      v27 = sub_22A4DD05C();
      v28 = sub_22A4DDCEC();

      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        v30 = v13;
        v31 = swift_slowAlloc();
        *v29 = v70;
        *(v29 + 4) = a1;
        *v31 = a1;
        v32 = a1;
        _os_log_impl(&dword_229538000, v27, v28, "[EnergyKit] Cannot signal other devices for user %@ because there is no current account handle", v29, 0xCu);
        sub_22953EAE4(v31, &qword_27D87D7D0, &unk_22A578D90);
        v33 = v31;
        v13 = v30;
        v8 = v72;
        MEMORY[0x22AAD4E50](v33, -1, -1);
        v34 = v29;
        v16 = v71;
        MEMORY[0x22AAD4E50](v34, -1, -1);
      }

      else
      {
        v32 = v27;
        v27 = a1;
      }

      (*v80)(v16, v13);
      v19 = v81;
      v21 = i;
      v10 = &selRef_preProcessMediaSystemMessage_;
      goto LABEL_9;
    }

    v35 = v26;
    MEMORY[0x22AAD09E0]();
    if (*((v91 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v91 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_22A4DD85C();
      v10 = &selRef_preProcessMediaSystemMessage_;
    }

    sub_22A4DD87C();

    v23 = v91;
  }

LABEL_30:

  v36 = [v77 spiClientIdentifier];
  sub_22A4DB79C();

  if (v23 >> 62)
  {
    v37 = sub_22A4DE0EC();
    if (!v37)
    {
      goto LABEL_50;
    }

LABEL_32:
    if (v37 >= 1)
    {
      v38 = 0;
      *&v70 = v23 & 0xC000000000000001;
      v69 = v69->isa;
      v68 = v78 + 16;
      v67 = (v67 + 7);
      v66 = v78 + 32;
      v72 = v23;
      v71 = v37;
      do
      {
        v83 = v38;
        if (v70)
        {
          v39 = MEMORY[0x22AAD13F0](v38, v23);
        }

        else
        {
          v39 = *(v23 + 8 * v38 + 32);
        }

        i = v39;
        v40 = sub_22A4DD9DC();
        v80 = *(v40 - 8);
        v41 = v84;
        (*(v80 + 56))(v84, 1, 1, v40);
        v42 = v78;
        v43 = v74;
        v44 = v76;
        (*(v78 + 16))(v74, v79, v76);
        v45 = (*(v42 + 80) + 40) & ~*(v42 + 80);
        v46 = (v67 + v45) & 0xFFFFFFFFFFFFFFF8;
        v47 = swift_allocObject();
        v47[2] = 0;
        v81 = v47 + 2;
        v48 = i;
        v47[3] = 0;
        v47[4] = v48;
        v49 = v43;
        v50 = v80;
        (*(v42 + 32))(v47 + v45, v49, v44);
        v51 = v77;
        *(v47 + v46) = v77;
        v52 = v75;
        *(v47 + ((v46 + 15) & 0xFFFFFFFFFFFFFFF8)) = v75;
        v53 = v73;
        sub_229569C24(v41, v73);
        v54 = v40;
        LODWORD(v45) = (*(v50 + 48))(v53, 1, v40);
        v55 = v48;
        v56 = v51;
        v57 = v52;
        if (v45 == 1)
        {
          sub_22953EAE4(v53, &unk_27D87D8F0, &qword_22A578D70);
        }

        else
        {
          sub_22A4DD9CC();
          (*(v50 + 8))(v53, v54);
        }

        v23 = v72;
        v58 = v83;
        if (*v81)
        {
          swift_getObjectType();
          swift_unknownObjectRetain();
          v59 = sub_22A4DD8CC();
          v61 = v60;
          swift_unknownObjectRelease();
        }

        else
        {
          v59 = 0;
          v61 = 0;
        }

        v62 = swift_allocObject();
        *(v62 + 16) = &unk_22A582A60;
        *(v62 + 24) = v47;

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D880C58, &qword_22A582980);
        v63 = (v61 | v59);
        if (v61 | v59)
        {
          v88[0] = 0;
          v88[1] = 0;
          v63 = v88;
          v88[2] = v59;
          v88[3] = v61;
        }

        v38 = v58 + 1;
        v85 = 1;
        v86 = v63;
        v87 = v69;
        swift_task_create();

        sub_22953EAE4(v84, &unk_27D87D8F0, &qword_22A578D70);
      }

      while (v71 != v38);
      goto LABEL_50;
    }

    __break(1u);
    goto LABEL_52;
  }

  v37 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v37)
  {
    goto LABEL_32;
  }

LABEL_50:

  return (*(v78 + 8))(v79, v76);
}

uint64_t sub_2297921CC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0xD000000000000014 && 0x800000022A5957E0 == a2;
  if (v4 || (sub_22A4DE60C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000015 && 0x800000022A595800 == a2 || (sub_22A4DE60C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000017 && 0x800000022A595820 == a2 || (sub_22A4DE60C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000012 && 0x800000022A595840 == a2)
  {

    return 3;
  }

  else
  {
    v6 = sub_22A4DE60C();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_229792334(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D880C00, &qword_22A582938);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v8 - v4;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_229792618();
  sub_22A4DE7FC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87FC18, &qword_22A582940);
  v9 = 0;
  sub_22979266C(&qword_27D880C10, &qword_27D880C18, MEMORY[0x277CC9618], MEMORY[0x277D83B70]);
  sub_22A4DE4EC();
  v7 = v10;
  v9 = 1;
  sub_22A4DE4EC();
  LOBYTE(v10) = 2;
  v8[2] = sub_22A4DE4AC();
  LOBYTE(v10) = 3;
  sub_22A4DE4AC();
  (*(v3 + 8))(v5, v2);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return v7;
}

unint64_t sub_229792618()
{
  result = qword_27D880C08;
  if (!qword_27D880C08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D880C08);
  }

  return result;
}

uint64_t sub_22979266C(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D87FC18, &qword_22A582940);
    sub_229793150(a2, MEMORY[0x277CC95F0], a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_229792708()
{
  result = qword_27D880C38;
  if (!qword_27D880C38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D880C38);
  }

  return result;
}

unint64_t sub_22979275C()
{
  result = qword_27D880C40;
  if (!qword_27D880C40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D880C40);
  }

  return result;
}

uint64_t sub_2297927B0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_229569B30;

  return sub_229788D78(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_229792880(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_229586D38;

  return sub_22978F09C(a1, a2, v6, v7, v8);
}

id sub_229792944(id result, char a2)
{
  if (a2)
  {
    return result;
  }

  return result;
}

uint64_t sub_229792950(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D880C60, &qword_22A582998);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_2297929C0(id a1, char a2)
{
  if (a2)
  {
  }
}

uint64_t sub_2297929CC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = *(v1 + 56);
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_229586D38;

  return sub_22978B188(a1, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_229792AA4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_229586D38;

  return sub_22978BD2C(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_229792B78(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_229586D38;

  return sub_22978D27C(a1, v4, v5, v7, v6);
}

uint64_t sub_229792C38(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_229586D38;

  return sub_2295850E8(a1, v4);
}

void sub_229792CF8()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D880C88, &qword_22A582A10) - 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = v0 + ((*(v1 + 80) + 32) & ~*(v1 + 80));

  sub_22978D9F4(v2, v3, v4);
}

uint64_t sub_229792D68(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D880C88, &qword_22A582A10);

  return sub_22978E17C(a1);
}

uint64_t sub_229792E30(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_229569B30;

  return sub_2295850E8(a1, v4);
}

uint64_t sub_229792EE8()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D880C90, &qword_22A582A20) - 8);
  v2 = *(v0 + 16);
  v3 = (v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80)));

  return sub_22978A7C4(v2, v3);
}

uint64_t objectdestroyTm_5(uint64_t a1)
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v1, a1, 7);
}

uint64_t sub_229792FAC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_229586D38;

  return sub_22978788C(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_229793074(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = *(v2 + 24);
  v8 = *(v2 + 32);
  v9 = *(v2 + 40);
  v10 = *(v2 + 48);
  v11 = swift_task_alloc();
  *(v3 + 16) = v11;
  *v11 = v3;
  v11[1] = sub_229586D38;

  return sub_22978FF4C(a1, a2, v6, v7, v8, v9, v10);
}

uint64_t sub_229793150(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t objectdestroy_7Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t objectdestroy_11Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_229793240(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_22A4DB7DC() - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = v1[2];
  v9 = v1[3];
  v10 = v1[4];
  v11 = *(v1 + v7);
  v12 = *(v1 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8));
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_229586D38;

  return sub_22978E200(a1, v8, v9, v10, v1 + v6, v11, v12);
}

__n128 __swift_memcpy18_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u16[0] = a2[1].n128_u16[0];
  *a1 = result;
  return result;
}

uint64_t sub_2297933C8(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 18))
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

uint64_t sub_229793410(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 18) = 1;
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

    *(result + 18) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_229793464()
{
  result = qword_27D880C98;
  if (!qword_27D880C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D880C98);
  }

  return result;
}

unint64_t sub_2297934BC()
{
  result = qword_27D880CA0;
  if (!qword_27D880CA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D880CA0);
  }

  return result;
}

unint64_t sub_229793514()
{
  result = qword_27D880CA8;
  if (!qword_27D880CA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D880CA8);
  }

  return result;
}

HMDUserActivityReportCoordinatorFactory __swiftcall HMDUserActivityReportCoordinatorFactory.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

unint64_t type metadata accessor for HMDUserActivityReportCoordinatorFactory()
{
  result = qword_27D880CB0;
  if (!qword_27D880CB0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27D880CB0);
  }

  return result;
}

uint64_t sub_2297936B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_22A4DBC7C();
  v15 = v8;
  v16 = sub_229793D48();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v14);
  (*(*(v8 - 8) + 32))(boxed_opaque_existential_1, a3, v8);
  swift_defaultActor_initialize();
  *(a4 + OBJC_IVAR____TtC13HomeKitDaemon34DefaultUserActivityReportMessenger_messageInFlight) = 0;
  *(a4 + OBJC_IVAR____TtC13HomeKitDaemon34DefaultUserActivityReportMessenger_sendCount) = 0;
  v10 = a4 + OBJC_IVAR____TtC13HomeKitDaemon34DefaultUserActivityReportMessenger_retryTimer;
  *(v10 + 32) = 0;
  *v10 = 0u;
  *(v10 + 16) = 0u;
  *(a4 + OBJC_IVAR____TtC13HomeKitDaemon34DefaultUserActivityReportMessenger_messageToRetry) = 0;
  sub_22A4DD5EC();
  sub_22A4DD06C();
  v11 = OBJC_IVAR____TtC13HomeKitDaemon34DefaultUserActivityReportMessenger_homeUUID;
  v12 = sub_22A4DB7DC();
  (*(*(v12 - 8) + 32))(a4 + v11, a1, v12);
  *(a4 + OBJC_IVAR____TtC13HomeKitDaemon34DefaultUserActivityReportMessenger_messageDispatcher) = a2;
  sub_229557188(&v14, a4 + OBJC_IVAR____TtC13HomeKitDaemon34DefaultUserActivityReportMessenger_timerProvider);
  return a4;
}

id sub_229793830(void *a1)
{
  v2 = sub_22A4DBC7C();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v41 - v7;
  v9 = sub_22A4DB7DC();
  v41 = *(v9 - 8);
  v42 = v9;
  v10 = MEMORY[0x28223BE20](v9);
  v12 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v41 - v13;
  v15 = [a1 uuid];
  sub_22A4DB79C();
  v16 = [a1 uuid];
  sub_22A4DB79C();
  result = [a1 msgDispatcher];
  if (result)
  {
    v18 = result;

    sub_22A4DBC6C();
    v19 = type metadata accessor for DefaultUserActivityReportMessenger(0);
    v20 = swift_allocObject();
    (*(v3 + 16))(v6, v8, v2);
    v21 = sub_2297936B8(v12, v18, v6, v20);
    (*(v3 + 8))(v8, v2);
    v22 = [objc_allocWithZone(MEMORY[0x277D0F798]) init];
    v23 = [objc_opt_self() sharedManager];
    PresenceFeedRefreshInMinutes = getPresenceFeedRefreshInMinutes();
    v47[3] = v19;
    v47[4] = &off_283CDD3E0;
    v25 = PresenceFeedRefreshInMinutes * 60.0;
    v47[0] = v21;
    v26 = type metadata accessor for DefaultUserActivityReportCoordinator(0);
    v27 = swift_allocObject();
    v28 = __swift_mutable_project_boxed_opaque_existential_0(v47, v19);
    MEMORY[0x28223BE20](v28);
    v30 = (&v41 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v31 + 16))(v30);
    v32 = *v30;
    v46[3] = v19;
    v46[4] = &off_283CDD3E0;
    v46[0] = v32;
    swift_defaultActor_initialize();
    v27[OBJC_IVAR____TtC13HomeKitDaemon36DefaultUserActivityReportCoordinator_isCoordinating] = 1;
    v33 = MEMORY[0x277D84F98];
    *&v27[OBJC_IVAR____TtC13HomeKitDaemon36DefaultUserActivityReportCoordinator_detectorsByContributorType] = MEMORY[0x277D84F98];
    *&v27[OBJC_IVAR____TtC13HomeKitDaemon36DefaultUserActivityReportCoordinator_currentReports] = v33;
    sub_22A4DD5EC();
    sub_22A4DD06C();
    v35 = v41;
    v34 = v42;
    (*(v41 + 16))(&v27[OBJC_IVAR____TtC13HomeKitDaemon36DefaultUserActivityReportCoordinator_homeUUID], v14, v42);
    sub_22957F1C4(v46, &v27[OBJC_IVAR____TtC13HomeKitDaemon36DefaultUserActivityReportCoordinator_messenger]);
    *&v27[OBJC_IVAR____TtC13HomeKitDaemon36DefaultUserActivityReportCoordinator_dateProvider] = v22;
    *&v27[OBJC_IVAR____TtC13HomeKitDaemon36DefaultUserActivityReportCoordinator_backgroundTaskManager] = v23;
    *&v27[OBJC_IVAR____TtC13HomeKitDaemon36DefaultUserActivityReportCoordinator_periodicUpdateInterval] = v25;
    v44 = 0;
    v45 = 0xE000000000000000;
    v36 = v23;
    sub_22A4DE1FC();
    MEMORY[0x22AAD08C0](0xD000000000000032, 0x800000022A5958B0);
    v37 = sub_22A4DB76C();
    MEMORY[0x22AAD08C0](v37);

    v38 = v45;
    v39 = &v27[OBJC_IVAR____TtC13HomeKitDaemon36DefaultUserActivityReportCoordinator_periodicUpdateTimerIdentifier];
    *v39 = v44;
    v39[1] = v38;
    v43.receiver = v27;
    v43.super_class = v26;
    v40 = objc_msgSendSuper2(&v43, sel_init);

    (*(v35 + 8))(v14, v34);
    __swift_destroy_boxed_opaque_existential_0(v46);
    __swift_destroy_boxed_opaque_existential_0(v47);
    return v40;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_229793D48()
{
  result = qword_281403838;
  if (!qword_281403838)
  {
    sub_22A4DBC7C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281403838);
  }

  return result;
}

uint64_t (*sub_229793DA0(uint64_t **a1, uint64_t a2))()
{
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  *a1 = v4;
  v4[4] = sub_229796228(v4, a2);
  return sub_229793E18;
}

void sub_229793E18(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

void sub_229793F64()
{
  v1 = *(v0 + OBJC_IVAR____TtC13HomeKitDaemon38HomeManagerXPCClientConnectionsManager_messageDispatcher);
  v2 = *MEMORY[0x277CCF1C8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C350, &qword_22A576E40);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_22A582080;
  *(v3 + 32) = [objc_opt_self() policyWithEntitlements_];
  *(v3 + 40) = [objc_opt_self() policyWithEntitlementRequirement_];
  sub_229562F68(0, qword_281401B40, 0x277D0F838);
  v4 = sub_22A4DD81C();

  [v1 registerForMessage:v2 receiver:v0 policies:v4 selector:sel_handleActiveAssertionUpdateStateMessage_];

  v5 = *(v0 + OBJC_IVAR____TtC13HomeKitDaemon38HomeManagerXPCClientConnectionsManager_notificationCenter);
  v6 = *(v0 + OBJC_IVAR____TtC13HomeKitDaemon38HomeManagerXPCClientConnectionsManager_xpcTransport);
  [v5 addObserver:v0 selector:sel_handleXPCConnectionDidStartNotification_ name:@"HMDXPCClientConnectionDidStartNotification" object:v6];
  [v5 addObserver:v0 selector:sel_handleXPCConnectionDidInvalidateNotification_ name:@"HMDXPCClientConnectionDidInvalidateNotification" object:v6];
  v7 = HMDProcessMonitorProcessStateDidChangeNotification;
  v8 = [v6 processMonitor];
  [v5 addObserver:v0 selector:sel_handleProcessInfoStateChangedNotification_ name:v7 object:v8];
}

BOOL sub_2297941D0()
{
  v1 = v0 + OBJC_IVAR____TtC13HomeKitDaemon38HomeManagerXPCClientConnectionsManager_lockedState;
  os_unfair_lock_lock((v0 + OBJC_IVAR____TtC13HomeKitDaemon38HomeManagerXPCClientConnectionsManager_lockedState));
  v2 = *(v1 + 8);
  if ((v2 & 0xC000000000000001) != 0)
  {
    v3 = sub_22A4DE0EC();
  }

  else
  {
    v3 = *(v2 + 16);
  }

  v4 = v3 != 0;
  os_unfair_lock_unlock(v1);
  return v4;
}

void sub_229794238(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = sub_22A4DD07C();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v51 = &v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = &v50 - v9;
  v11 = sub_22A4DD2FC();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = (&v50 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = *(v2 + OBJC_IVAR____TtC13HomeKitDaemon38HomeManagerXPCClientConnectionsManager_queue);
  *v14 = v15;
  (*(v12 + 104))(v14, *MEMORY[0x277D85200], v11);
  v16 = v15;
  LOBYTE(v15) = sub_22A4DD31C();
  (*(v12 + 8))(v14, v11);
  if ((v15 & 1) == 0)
  {
    __break(1u);
    return;
  }

  v17 = v2 + OBJC_IVAR____TtC13HomeKitDaemon38HomeManagerXPCClientConnectionsManager_lockedState;
  os_unfair_lock_lock((v2 + OBJC_IVAR____TtC13HomeKitDaemon38HomeManagerXPCClientConnectionsManager_lockedState));
  v18 = sub_229579398(a1);
  if (!v18)
  {
    os_unfair_lock_unlock(v17);
    return;
  }

  v19 = *(v17 + 8);
  if ((v19 & 0xC000000000000001) == 0)
  {
    v20 = *(v19 + 16);
    if (!*(v17 + 24))
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v20 = sub_22A4DE0EC();
  if (*(v17 + 24))
  {
LABEL_5:
    [*(v2 + OBJC_IVAR____TtC13HomeKitDaemon38HomeManagerXPCClientConnectionsManager_accessoryBrowser) endActiveAssertion_];
    *(v17 + 24) = 0;
    swift_unknownObjectRelease();
  }

LABEL_6:
  os_unfair_lock_unlock(v17);
  sub_229541CB0(ObjectType, &off_283CE4470);
  v21 = a1;
  v22 = sub_22A4DD05C();
  v23 = sub_22A4DDD0C();

  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v50 = ObjectType;
    v25 = v6;
    v26 = v5;
    v27 = v20;
    v28 = v24;
    v29 = swift_slowAlloc();
    *v28 = 138412290;
    *(v28 + 4) = v21;
    *v29 = v21;
    v30 = v21;
    _os_log_impl(&dword_229538000, v22, v23, "Removing inactive connection: %@", v28, 0xCu);
    sub_22953EAE4(v29, &qword_27D87D7D0, &unk_22A578D90);
    MEMORY[0x22AAD4E50](v29, -1, -1);
    v31 = v28;
    v20 = v27;
    v5 = v26;
    v6 = v25;
    ObjectType = v50;
    MEMORY[0x22AAD4E50](v31, -1, -1);
  }

  v32 = *(v6 + 8);
  v32(v10, v5);
  v33 = [objc_allocWithZone(HMDActiveXPCConnectionLogEvent) initWithXPCConnection:v21 added:0];
  [*(v2 + OBJC_IVAR____TtC13HomeKitDaemon38HomeManagerXPCClientConnectionsManager_logEventSubmitter) submitLogEvent_];
  [*(v2 + OBJC_IVAR____TtC13HomeKitDaemon38HomeManagerXPCClientConnectionsManager_notificationCenter) postNotificationName:@"HMDHomeManagerConnectionActiveStateUpdatedNotification" object:v21];

  if (!v20)
  {
    sub_229541CB0(ObjectType, &off_283CE4470);
    v34 = sub_22A4DD05C();
    v35 = sub_22A4DDD0C();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      *v36 = 0;
      _os_log_impl(&dword_229538000, v34, v35, "Posting notification because last home manager connection has become inactive", v36, 2u);
      MEMORY[0x22AAD4E50](v36, -1, -1);
    }

    v32(v51, v5);
    v37 = MEMORY[0x277D84F98];
    v55 = MEMORY[0x277D84F98];
    v38 = sub_22A4DD5EC();
    v40 = v39;
    v41 = [v21 clientIdentifier];
    if (v41)
    {
      v42 = v41;
      v43 = sub_22A4DD5EC();
      v45 = v44;

      v54[3] = MEMORY[0x277D837D0];
      v54[0] = v43;
      v54[1] = v45;
      sub_229543C58(v54, v53);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v52 = v37;
      sub_229543C6C(v53, v38, v40, isUniquelyReferenced_nonNull_native);

      v47 = v52;
    }

    else
    {
      sub_2297FD000(v38, v40, v54);

      sub_22953EAE4(v54, &unk_27D87DE60, &unk_22A57A960);
      v47 = v55;
    }

    v48 = *(v2 + OBJC_IVAR____TtC13HomeKitDaemon38HomeManagerXPCClientConnectionsManager_notificationCenter);
    sub_229543F58(v47);

    v49 = sub_22A4DD47C();

    [v48 postNotificationName:@"HMDHomeManagerLastProcessDidBecomeInactiveNotification" object:v2 userInfo:v49];
  }
}

void sub_229794820(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D2A0, &unk_22A578BD0);
  MEMORY[0x28223BE20](v4 - 8);
  v100 = &v91 - v5;
  v6 = sub_22A4DD07C();
  v107 = *(v6 - 8);
  v108 = v6;
  v7 = MEMORY[0x28223BE20](v6);
  v9 = &v91 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v91 - v11;
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v91 - v14;
  MEMORY[0x28223BE20](v13);
  v104 = &v91 - v16;
  v103 = sub_22A4DB7DC();
  v105 = *(v103 - 8);
  v17 = MEMORY[0x28223BE20](v103);
  v101 = &v91 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v17);
  v99 = &v91 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v102 = &v91 - v22;
  MEMORY[0x28223BE20](v21);
  v106 = &v91 - v23;
  v24 = sub_22A4DD2FC();
  v29 = *(v24 - 1);
  MEMORY[0x28223BE20](v24);
  v26 = &v91 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = *(v1 + OBJC_IVAR____TtC13HomeKitDaemon38HomeManagerXPCClientConnectionsManager_queue);
  *v26 = v27;
  (*(v29 + 104))(v26, *MEMORY[0x277D85200], v24);
  v28 = v27;
  LOBYTE(v27) = sub_22A4DD31C();
  v30 = *(v29 + 8);
  LOBYTE(v29) = v29 + 8;
  v30(v26, v24);
  if ((v27 & 1) == 0)
  {
    __break(1u);
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v31 = [a1 proxyConnection];
  v32 = a1;
  if (!v31)
  {
    sub_229541CB0(ObjectType, &off_283CE4470);
    v63 = a1;
    v64 = sub_22A4DD05C();
    v65 = sub_22A4DDCEC();

    if (os_log_type_enabled(v64, v65))
    {
      v66 = swift_slowAlloc();
      v67 = swift_slowAlloc();
      *v66 = 138412290;
      *(v66 + 4) = v63;
      *v67 = v63;
      v68 = v63;
      _os_log_impl(&dword_229538000, v64, v65, "Could not find connection for active assertion message: %@", v66, 0xCu);
      sub_22953EAE4(v67, &qword_27D87D7D0, &unk_22A578D90);
      MEMORY[0x22AAD4E50](v67, -1, -1);
      MEMORY[0x22AAD4E50](v66, -1, -1);
    }

    (*(v107 + 8))(v9, v108);
    v69 = objc_opt_self();
    v70 = sub_22A4DD5AC();
    v71 = [v69 hmErrorWithCode:2 description:0 reason:v70 suggestion:0];

    v62 = sub_22A4DB3DC();
    [v63 respondWithError_];

    goto LABEL_14;
  }

  v33 = v31;
  if (![v31 principalClass] || (swift_getObjCClassMetadata(), sub_229562F68(0, &unk_281401BE8, 0x277CD1A90), !swift_dynamicCastMetatype()))
  {
    sub_229541CB0(ObjectType, &off_283CE4470);
    v55 = v33;
    v56 = sub_22A4DD05C();
    v57 = sub_22A4DDCEC();

    if (os_log_type_enabled(v56, v57))
    {
      v58 = swift_slowAlloc();
      v59 = swift_slowAlloc();
      *v58 = 138412290;
      *(v58 + 4) = v55;
      *v59 = v33;
      v60 = v55;
      _os_log_impl(&dword_229538000, v56, v57, "Cannot update assertion for non-home-manager connection: %@", v58, 0xCu);
      sub_22953EAE4(v59, &qword_27D87D7D0, &unk_22A578D90);
      MEMORY[0x22AAD4E50](v59, -1, -1);
      MEMORY[0x22AAD4E50](v58, -1, -1);
    }

    (*(v107 + 8))(v12, v108);
    type metadata accessor for HMError(0);
    v110 = 48;
    sub_22956AD8C(MEMORY[0x277D84F90]);
    sub_2295AEE34(&qword_27D87D7C0, type metadata accessor for HMError, &unk_22A576D30);
    sub_22A4DB3CC();
    v61 = v109[0];
    v62 = sub_22A4DB3DC();

    [v32 respondWithError_];
LABEL_14:

    return;
  }

  v34 = [a1 uuidForKey_];
  if (!v34)
  {
    sub_229541CB0(ObjectType, &off_283CE4470);
    v72 = sub_22A4DD05C();
    v73 = sub_22A4DDCEC();
    if (os_log_type_enabled(v72, v73))
    {
      v74 = swift_slowAlloc();
      *v74 = 0;
      _os_log_impl(&dword_229538000, v72, v73, "Could not find assertion UUID in update state message payload", v74, 2u);
      MEMORY[0x22AAD4E50](v74, -1, -1);
    }

    (*(v107 + 8))(v15, v108);
    type metadata accessor for HMError(0);
    v110 = 3;
    sub_22956AD8C(MEMORY[0x277D84F90]);
    sub_2295AEE34(&qword_27D87D7C0, type metadata accessor for HMError, &unk_22A576D30);
    sub_22A4DB3CC();
    v75 = v109[0];
    v76 = sub_22A4DB3DC();

    [v32 respondWithError_];
    return;
  }

  v98 = v1;
  v35 = v106;
  v36 = v34;
  sub_22A4DB79C();

  v37 = *MEMORY[0x277CCF1B8];
  v96 = v32;
  v97 = [v32 BOOLForKey_];
  v26 = v104;
  sub_229541CB0(ObjectType, &off_283CE4470);
  v38 = v105;
  v39 = v102;
  v29 = v103;
  v94 = *(v105 + 16);
  v95 = v105 + 16;
  v94(v102, v35, v103);
  v40 = v33;
  v41 = sub_22A4DD05C();
  v42 = sub_22A4DDD0C();

  if (os_log_type_enabled(v41, v42))
  {
    v43 = swift_slowAlloc();
    v92 = swift_slowAlloc();
    v93 = swift_slowAlloc();
    v109[0] = v93;
    *v43 = 136315650;
    sub_2295AEE34(&qword_281403860, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v44 = sub_22A4DE5CC();
    v26 = v45;
    v46 = v39;
    v47 = *(v105 + 8);
    v47(v46, v29);
    v48 = sub_2295A3E30(v44, v26, v109);

    *(v43 + 4) = v48;
    *(v43 + 12) = 1024;
    v49 = v97;
    *(v43 + 14) = v97;
    *(v43 + 18) = 2112;
    *(v43 + 20) = v40;
    v50 = v92;
    *v92 = v33;
    v24 = v47;
    v51 = v40;
    _os_log_impl(&dword_229538000, v41, v42, "Updating assertion with UUID %s to %{BOOL}d for connection: %@", v43, 0x1Cu);
    sub_22953EAE4(v50, &qword_27D87D7D0, &unk_22A578D90);
    MEMORY[0x22AAD4E50](v50, -1, -1);
    v52 = v93;
    __swift_destroy_boxed_opaque_existential_0(v93);
    MEMORY[0x22AAD4E50](v52, -1, -1);
    v53 = v43;
    v38 = v105;
    MEMORY[0x22AAD4E50](v53, -1, -1);

    (*(v107 + 8))(v104, v108);
    v54 = v98;
    v9 = v40;
  }

  else
  {

    v24 = *(v38 + 8);
    v24(v39, v29);
    (*(v107 + 8))(v26, v108);
    v54 = v98;
    v9 = v40;
    v49 = v97;
  }

  a1 = v54 + OBJC_IVAR____TtC13HomeKitDaemon38HomeManagerXPCClientConnectionsManager_lockedState;
  os_unfair_lock_lock((v54 + OBJC_IVAR____TtC13HomeKitDaemon38HomeManagerXPCClientConnectionsManager_lockedState));
  if (!v49)
  {
    v85 = sub_229793DA0(v109, v9);
    if (*v86)
    {
      v87 = v100;
      sub_229578E38(v106, v100);
      sub_22953EAE4(v87, &unk_27D87D2A0, &unk_22A578BD0);
      (v85)(v109, 0);
    }

    else
    {
      (v85)(v109, 0);
      v90 = v100;
      (*(v38 + 56))(v100, 1, 1, v29);
      sub_22953EAE4(v90, &unk_27D87D2A0, &unk_22A578BD0);
    }

    v26 = v96;
    goto LABEL_33;
  }

  v94(v101, v106, v29);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v109[0] = *(a1 + 16);
  v78 = v109[0];
  *(a1 + 16) = 0x8000000000000000;
  ObjectType = sub_2296DC034(v9);
  v80 = v78[2];
  v81 = (v79 & 1) == 0;
  v82 = v80 + v81;
  if (__OFADD__(v80, v81))
  {
    goto LABEL_35;
  }

  LOBYTE(v29) = v79;
  if (v78[3] >= v82)
  {
    v26 = v96;
    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_28;
    }

LABEL_36:
    sub_229899924();
    v78 = v109[0];
    goto LABEL_28;
  }

  sub_2298960AC(v82, isUniquelyReferenced_nonNull_native);
  v78 = v109[0];
  v83 = sub_2296DC034(v9);
  v26 = v96;
  if ((v29 & 1) == (v84 & 1))
  {
    ObjectType = v83;
LABEL_28:
    v88 = v99;
    *(a1 + 16) = v78;

    if ((v29 & 1) == 0)
    {
      sub_2295AC894(ObjectType, v9, MEMORY[0x277D84FA0], *(a1 + 16));
      v89 = v9;
    }

    sub_22957198C(v88, v101);
    v29 = v103;
    v24(v88, v103);
LABEL_33:
    os_unfair_lock_unlock(a1);
    sub_229541DF0(v9);
    [v26 respondWithSuccess];

    v24(v106, v29);
    return;
  }

  sub_229562F68(0, &unk_281401910, off_278666388);
  sub_22A4DE67C();
  __break(1u);
}

void sub_2297955A4(unint64_t a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = sub_22A4DB21C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v55 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_22A4DD07C();
  v59 = *(v9 - 8);
  v60 = v9;
  v10 = MEMORY[0x28223BE20](v9);
  v12 = v55 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v57 = v55 - v13;
  v14 = sub_22A4DD2FC();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = (v55 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v58 = v2;
  v18 = *(v2 + OBJC_IVAR____TtC13HomeKitDaemon38HomeManagerXPCClientConnectionsManager_queue);
  *v17 = v18;
  (*(v15 + 104))(v17, *MEMORY[0x277D85200], v14);
  v19 = v18;
  LOBYTE(v18) = sub_22A4DD31C();
  (*(v15 + 8))(v17, v14);
  if ((v18 & 1) == 0)
  {
    __break(1u);
    goto LABEL_33;
  }

  v20 = sub_22A4DB20C();
  if (!v20)
  {
    goto LABEL_13;
  }

  v21 = v20;
  v61 = sub_22A4DD5EC();
  v62 = v22;
  sub_22A4DE18C();
  if (!*(v21 + 16) || (v23 = sub_2295402E8(v63), (v24 & 1) == 0))
  {

    sub_22954045C(v63);
LABEL_13:
    v64 = 0u;
    v65 = 0u;
    goto LABEL_14;
  }

  sub_2295404B0(*(v21 + 56) + 32 * v23, &v64);
  sub_22954045C(v63);

  if (!*(&v65 + 1))
  {
LABEL_14:
    sub_22953EAE4(&v64, &unk_27D87DE60, &unk_22A57A960);
    goto LABEL_15;
  }

  sub_229562F68(0, &unk_281401910, off_278666388);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_15:
    sub_229541CB0(ObjectType, &off_283CE4470);
    (*(v6 + 16))(v8, a1, v5);
    v32 = sub_22A4DD05C();
    v33 = sub_22A4DDCFC();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v63[0] = v35;
      *v34 = 136315138;
      *&v64 = sub_22A4DB20C();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87DA20, &unk_22A579B70);
      v36 = sub_22A4DD64C();
      v38 = v37;
      (*(v6 + 8))(v8, v5);
      v39 = sub_2295A3E30(v36, v38, v63);

      *(v34 + 4) = v39;
      _os_log_impl(&dword_229538000, v32, v33, "XPC connection did activate notification user info did not contain a HMDXPCClientConnection: %s", v34, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v35);
      MEMORY[0x22AAD4E50](v35, -1, -1);
      MEMORY[0x22AAD4E50](v34, -1, -1);
    }

    else
    {

      (*(v6 + 8))(v8, v5);
    }

    (*(v59 + 8))(v12, v60);
    return;
  }

  v25 = v63[0];
  if ([v63[0] principalClass] && (swift_getObjCClassMetadata(), v55[1] = sub_229562F68(0, &unk_281401BE8, 0x277CD1A90), swift_dynamicCastMetatype()))
  {
    v26 = v58;
    v27 = (v58 + OBJC_IVAR____TtC13HomeKitDaemon38HomeManagerXPCClientConnectionsManager_lockedState);
    os_unfair_lock_lock((v58 + OBJC_IVAR____TtC13HomeKitDaemon38HomeManagerXPCClientConnectionsManager_lockedState));
    v28 = v25;
    sub_22989166C(0, v28);
    os_unfair_lock_unlock(v27);
    sub_229794238(v28);
    v56 = [v28 processInfo];
    v29 = [*(v26 + OBJC_IVAR____TtC13HomeKitDaemon38HomeManagerXPCClientConnectionsManager_xpcTransport) connections];
    a1 = sub_22A4DD83C();

    v55[0] = v28;
    if (a1 >> 62)
    {
      goto LABEL_35;
    }

    for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_22A4DE0EC())
    {
      v31 = 0;
      while (1)
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          v40 = MEMORY[0x22AAD13F0](v31, a1);
        }

        else
        {
          if (v31 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_34;
          }

          v40 = *(a1 + 8 * v31 + 32);
        }

        v41 = v40;
        v42 = v31 + 1;
        if (__OFADD__(v31, 1))
        {
          break;
        }

        sub_229562F68(0, &qword_281401760, 0x277D82BB8);
        v43 = [v41 processInfo];
        v44 = sub_22A4DDEDC();

        if (v44)
        {
          v45 = [v41 principalClass];

          if (v45)
          {
            swift_getObjCClassMetadata();
            if (swift_dynamicCastMetatype())
            {

              return;
            }
          }
        }

        else
        {
        }

        ++v31;
        if (v42 == i)
        {
          goto LABEL_36;
        }
      }

LABEL_33:
      __break(1u);
LABEL_34:
      __break(1u);
LABEL_35:
      ;
    }

LABEL_36:

    v46 = v57;
    sub_229541CB0(ObjectType, &off_283CE4470);
    v47 = v56;
    v48 = sub_22A4DD05C();
    v49 = sub_22A4DDCCC();

    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      *v50 = 138412290;
      *(v50 + 4) = v47;
      *v51 = v47;
      v52 = v47;
      _os_log_impl(&dword_229538000, v48, v49, "Posting notification that no more client connections exist for process: %@", v50, 0xCu);
      sub_22953EAE4(v51, &qword_27D87D7D0, &unk_22A578D90);
      MEMORY[0x22AAD4E50](v51, -1, -1);
      MEMORY[0x22AAD4E50](v50, -1, -1);
    }

    (*(v59 + 8))(v46, v60);
    v53 = *(v58 + OBJC_IVAR____TtC13HomeKitDaemon38HomeManagerXPCClientConnectionsManager_notificationCenter);
    v54 = v47;
    [v53 postNotificationName:@"HMDHomeManagerClientProcessDisconnectedNotification" object:v54];
  }

  else
  {
  }
}

HMDHomeManagerXPCClientConnectionsManagerFactory __swiftcall HMDHomeManagerXPCClientConnectionsManagerFactory.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

uint64_t type metadata accessor for HomeManagerXPCClientConnectionsManager(uint64_t a1)
{
  result = qword_281403060;
  if (!qword_281403060)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_229796114(uint64_t a1)
{
  result = sub_22A4DB7DC();
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

void (*sub_229796228(uint64_t *a1, uint64_t a2))(uint64_t a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x50uLL);
  }

  v5 = v4;
  *a1 = v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5[8] = sub_229796534(v5);
  v5[9] = sub_22979632C(v5 + 4, a2, isUniquelyReferenced_nonNull_native);
  return sub_2297962CC;
}

void sub_2297962CC(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 64);
  (*(*a1 + 72))();
  v2(v1, 0);

  free(v1);
}

void (*sub_22979632C(uint64_t *a1, uint64_t a2, char a3))(uint64_t **a1)
{
  v4 = v3;
  if (MEMORY[0x277D84FD8])
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(0x28uLL);
  }

  v9 = v8;
  *a1 = v8;
  *(v8 + 8) = a2;
  *(v8 + 16) = v3;
  v10 = *v3;
  v11 = sub_2296DC034(a2);
  *(v9 + 32) = v12 & 1;
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a3 & 1) == 0)
  {
    if (v18 >= v16 && (a3 & 1) == 0)
    {
      v19 = v11;
      sub_229899924();
      v11 = v19;
      goto LABEL_11;
    }

    sub_2298960AC(v16, a3 & 1);
    v11 = sub_2296DC034(a2);
    if ((v17 & 1) == (v20 & 1))
    {
      goto LABEL_11;
    }

LABEL_16:
    sub_229562F68(0, &unk_281401910, off_278666388);
    result = sub_22A4DE67C();
    __break(1u);
    return result;
  }

LABEL_11:
  *(v9 + 24) = v11;
  if (v17)
  {
    v21 = *(*(*v4 + 56) + 8 * v11);
  }

  else
  {
    v21 = 0;
  }

  *v9 = v21;
  return sub_229796484;
}

void sub_229796484(uint64_t **a1)
{
  v1 = *a1;
  v2 = **a1;
  v3 = *(*a1 + 32);
  if (v2)
  {
    v4 = v1[3];
    v5 = *v1[2];
    if (v3)
    {
      *(v5[7] + 8 * v4) = v2;
    }

    else
    {
      v8 = v1[1];
      sub_2295AC894(v4, v8, v2, v5);
      v9 = v8;
    }
  }

  else if ((*a1)[4])
  {
    v6 = v1[3];
    v7 = *v1[2];

    sub_2297FE434(v6, v7);
  }

  free(v1);
}

uint64_t (*sub_229796534(void *a1))(uint64_t result)
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_22979655C;
}

id sub_229796568(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v31 = a4;
  v32 = a5;
  v30 = a2;
  v7 = sub_22A4DB7DC();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v27 - v12;
  v14 = *(v8 + 16);
  v14(&v27 - v12, a3, v7);
  v14(v11, v13, v7);
  v29 = [objc_opt_self() defaultTransport];
  v28 = [objc_opt_self() defaultCenter];
  v15 = type metadata accessor for HomeManagerXPCClientConnectionsManager(0);
  v16 = objc_allocWithZone(v15);
  v17 = &v16[OBJC_IVAR____TtC13HomeKitDaemon38HomeManagerXPCClientConnectionsManager_lockedState];
  *v17 = 0;
  v18 = MEMORY[0x277D84F98];
  *(v17 + 1) = MEMORY[0x277D84FA0];
  *(v17 + 2) = v18;
  *(v17 + 3) = 0;
  *&v16[OBJC_IVAR____TtC13HomeKitDaemon38HomeManagerXPCClientConnectionsManager_queue] = a1;
  v19 = v30;
  *&v16[OBJC_IVAR____TtC13HomeKitDaemon38HomeManagerXPCClientConnectionsManager_messageDispatcher] = v30;
  v14(&v16[OBJC_IVAR____TtC13HomeKitDaemon38HomeManagerXPCClientConnectionsManager_messageTargetUUID], v11, v7);
  v20 = v32;
  *&v16[OBJC_IVAR____TtC13HomeKitDaemon38HomeManagerXPCClientConnectionsManager_accessoryBrowser] = v31;
  *&v16[OBJC_IVAR____TtC13HomeKitDaemon38HomeManagerXPCClientConnectionsManager_logEventSubmitter] = v20;
  v21 = v28;
  *&v16[OBJC_IVAR____TtC13HomeKitDaemon38HomeManagerXPCClientConnectionsManager_xpcTransport] = v29;
  *&v16[OBJC_IVAR____TtC13HomeKitDaemon38HomeManagerXPCClientConnectionsManager_notificationCenter] = v21;
  v33.receiver = v16;
  v33.super_class = v15;
  v22 = a1;
  v23 = v19;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v24 = objc_msgSendSuper2(&v33, sel_init);
  v25 = *(v8 + 8);
  v25(v11, v7);
  v25(v13, v7);
  return v24;
}

void sub_229796818()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D880180, &unk_22A586590);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v9 - v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D880D70, &qword_22A582D70);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v9 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D880D78, &qword_22A582D78);
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  v7 = sub_22A4DB57C();
  (*(*(v7 - 8) + 56))(v2, 1, 1, v7);
  type metadata accessor for DemoModeMetadata(0);
  v8 = swift_allocObject();
  sub_229796B8C(v5, v2);
  qword_281405070 = v8;
}

uint64_t sub_229796994()
{
  v1 = *(v0 + 112);
  if (*(v1 + 16))
  {

    v2 = sub_229543DBC(0x6E6F6973726556, 0xE700000000000000);
    if (v3)
    {
      sub_2295404B0(*(v1 + 56) + 32 * v2, v6);

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C3B0, &unk_22A576E90);
      if (swift_dynamicCast())
      {
        return v5;
      }
    }

    else
    {
    }
  }

  return 45;
}

uint64_t sub_229796A4C()
{
  v0 = sub_22A4DB57C();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x28223BE20](v0);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_allocate_value_buffer(v2, qword_281405088);
  __swift_project_value_buffer(v0, qword_281405088);
  v5 = demoModeConfigPath();
  sub_22A4DD5EC();

  sub_22A4DB4CC();

  sub_22A4DB4FC();
  return (*(v1 + 8))(v4, v0);
}

void sub_229796B8C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D880180, &unk_22A586590);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v29 - v7;
  v9 = sub_22A4DB57C();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v32 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v33 = &v29 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D880D70, &qword_22A582D70);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v29 - v15;
  swift_defaultActor_initialize();
  *(v3 + 112) = MEMORY[0x277D84F98];
  (*(v10 + 56))(v3 + OBJC_IVAR____TtC13HomeKitDaemon16DemoModeMetadata_currentMetadataURL, 1, 1, v9);
  sub_229564F88(a1, v16, &qword_27D880D70, &qword_22A582D70);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D880D78, &qword_22A582D78);
  v18 = *(v17 - 8);
  if ((*(v18 + 48))(v16, 1, v17) == 1)
  {
    sub_22953EAE4(v16, &qword_27D880D70, &qword_22A582D70);
    v19 = [objc_allocWithZone(HMDFileManager) init];
  }

  else
  {
    sub_22A4DBA4C();
    v19 = v34;
    (*(v18 + 8))(v16, v17);
  }

  *(v3 + 120) = v19;
  sub_229564F88(a2, v8, &qword_27D880180, &unk_22A586590);
  v20 = *(v10 + 48);
  if (v20(v8, 1, v9) != 1)
  {
    sub_22953EAE4(a2, &qword_27D880180, &unk_22A586590);
    sub_22953EAE4(a1, &qword_27D880D70, &qword_22A582D70);
    v27 = *(v10 + 32);
    v28 = v33;
    v27(v33, v8, v9);
LABEL_9:
    v27((v3 + OBJC_IVAR____TtC13HomeKitDaemon16DemoModeMetadata_defaultMetadataURL), v28, v9);
    return;
  }

  v30 = a2;
  v31 = a1;
  type metadata accessor for DemoModeManager();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v22 = [objc_opt_self() bundleForClass_];
  v23 = sub_22A4DD5AC();
  v24 = sub_22A4DD5AC();
  v25 = [v22 URLForResource:v23 withExtension:v24];

  if (v25)
  {
    v26 = v32;
    sub_22A4DB51C();

    sub_22953EAE4(v30, &qword_27D880180, &unk_22A586590);
    sub_22953EAE4(v31, &qword_27D880D70, &qword_22A582D70);
    v27 = *(v10 + 32);
    v28 = v33;
    v27(v33, v26, v9);
    if (v20(v8, 1, v9) != 1)
    {
      sub_22953EAE4(v8, &qword_27D880180, &unk_22A586590);
    }

    goto LABEL_9;
  }

  __break(1u);
}

uint64_t sub_22979704C()
{
  v1 = v0;
  v32 = *v0;
  v2 = sub_22A4DD07C();
  v34 = *(v2 - 8);
  v35 = v2;
  MEMORY[0x28223BE20](v2);
  v33 = &v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_22A4DB57C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = (&v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D880180, &unk_22A586590);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v32 - v12;
  v14 = v0[15];
  if (qword_2814028E8 != -1)
  {
    swift_once();
  }

  v15 = __swift_project_value_buffer(v4, qword_281405088);
  v16 = sub_22A4DB4EC();
  v17 = [v14 fileExistsAtURL_];

  if (v17)
  {
    (*(v5 + 16))(v13, v15, v4);
  }

  else
  {
    (*(v5 + 16))(v13, v1 + OBJC_IVAR____TtC13HomeKitDaemon16DemoModeMetadata_defaultMetadataURL, v4);
  }

  (*(v5 + 56))(v13, 0, 1, v4);
  v18 = OBJC_IVAR____TtC13HomeKitDaemon16DemoModeMetadata_currentMetadataURL;
  swift_beginAccess();
  sub_22979836C(v13, v1 + v18);
  swift_endAccess();
  v19 = OBJC_IVAR____TtC13HomeKitDaemon16DemoModeMetadata_currentMetadataURL;
  swift_beginAccess();
  sub_229564F88(v1 + v19, v11, &qword_27D880180, &unk_22A586590);
  if ((*(v5 + 48))(v11, 1, v4) == 1)
  {
    sub_22953EAE4(v11, &qword_27D880180, &unk_22A586590);
  }

  else
  {
    (*(v5 + 32))(v7, v11, v4);
    v20 = v36;
    v21 = sub_229797860(v7);
    if (v20)
    {
      return (*(v5 + 8))(v7, v4);
    }

    v23 = v21;
    (*(v5 + 8))(v7, v4);
    v1[14] = v23;
  }

  v24 = v33;
  sub_229541CB0(v32, &off_283CE4488);

  v25 = sub_22A4DD05C();
  v26 = sub_22A4DDCCC();

  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v37 = v28;
    *v27 = 136315138;
    v29 = sub_229796994();
    v31 = sub_2295A3E30(v29, v30, &v37);

    *(v27 + 4) = v31;
    _os_log_impl(&dword_229538000, v25, v26, "Refreshed metadata-%s", v27, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v28);
    MEMORY[0x22AAD4E50](v28, -1, -1);
    MEMORY[0x22AAD4E50](v27, -1, -1);
  }

  return (*(v34 + 8))(v24, v35);
}

void sub_229797534(int a1)
{
  v3 = v1;
  v29 = a1;
  v30[1] = *MEMORY[0x277D85DE8];
  v4 = *v1;
  v5 = sub_22A4DD07C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_229541CB0(v4, &off_283CE4488);

  v9 = sub_22A4DD05C();
  v10 = sub_22A4DDCCC();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v28 = v2;
    v12 = v11;
    v13 = swift_slowAlloc();
    v30[0] = v13;
    *v12 = 136315138;
    v14 = sub_229796994();
    v16 = sub_2295A3E30(v14, v15, v30);
    v27 = v5;
    v17 = v16;

    *(v12 + 4) = v17;
    _os_log_impl(&dword_229538000, v9, v10, "Resetting metadata-%s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v13);
    MEMORY[0x22AAD4E50](v13, -1, -1);
    MEMORY[0x22AAD4E50](v12, -1, -1);

    (*(v6 + 8))(v8, v27);
  }

  else
  {

    (*(v6 + 8))(v8, v5);
  }

  v18 = v3[15];
  if (qword_2814028E8 != -1)
  {
    swift_once();
  }

  v19 = sub_22A4DB57C();
  __swift_project_value_buffer(v19, qword_281405088);
  v20 = sub_22A4DB4EC();
  v21 = [v18 fileExistsAtURL_];

  if (v21)
  {
    v22 = sub_22A4DB4EC();
    v30[0] = 0;
    v23 = [v18 removeItemAtURL:v22 error:v30];

    if (!v23)
    {
      v25 = v30[0];
      sub_22A4DB3EC();

      swift_willThrow();
      return;
    }

    v24 = v30[0];
  }

  if (v29)
  {
    sub_22979704C();
  }
}

void *sub_229797860(void *a1)
{
  v53[14] = *MEMORY[0x277D85DE8];
  v4 = *v1;
  v5 = sub_22A4DB57C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = sub_22A4DD07C();
  v49 = *(v50 - 8);
  v9 = MEMORY[0x28223BE20](v50);
  v11 = &v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v48 = (&v47 - v12);
  v13 = v1[15];
  v14 = sub_22A4DB4EC();
  LODWORD(v13) = [v13 fileExistsAtURL_];

  if (!v13)
  {
    goto LABEL_13;
  }

  v15 = a1;
  if (sub_22A4DB4AC() == 0x7473696C70 && v16 == 0xE500000000000000)
  {

    goto LABEL_6;
  }

  v15 = v16;
  v17 = sub_22A4DE60C();

  if ((v17 & 1) == 0)
  {
LABEL_13:
    sub_229541CB0(v4, &off_283CE4488);
    (*(v6 + 16))(v8, a1, v5);
    v27 = sub_22A4DD05C();
    v28 = sub_22A4DDCEC();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      v53[0] = v48;
      *v29 = 136315138;
      sub_229798324(&qword_27D87E238, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
      v30 = sub_22A4DE5CC();
      v32 = v31;
      (*(v6 + 8))(v8, v5);
      v33 = sub_2295A3E30(v30, v32, v53);

      *(v29 + 4) = v33;
      _os_log_impl(&dword_229538000, v27, v28, "Invalid metadata: %s", v29, 0xCu);
      v34 = v48;
      __swift_destroy_boxed_opaque_existential_0(v48);
      MEMORY[0x22AAD4E50](v34, -1, -1);
      MEMORY[0x22AAD4E50](v29, -1, -1);
    }

    else
    {

      (*(v6 + 8))(v8, v5);
    }

    (*(v49 + 8))(v11, v50);
    type metadata accessor for HMError(0);
    v15 = v35;
    v52[0] = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D7B0, &unk_22A578800);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_22A576180;
    *(inited + 32) = sub_22A4DD5EC();
    *(inited + 72) = MEMORY[0x277D837D0];
    *(inited + 40) = v37;
    *(inited + 48) = 0xD000000000000014;
    *(inited + 56) = 0x800000022A595BF0;
    sub_22956AD8C(inited);
    swift_setDeallocating();
    sub_22953EAE4(inited + 32, &qword_27D87CDA0, &unk_22A57A930);
    sub_229798324(&qword_27D87D7C0, type metadata accessor for HMError, &unk_22A576D30);
    sub_22A4DB3CC();
    swift_willThrow();
    return v15;
  }

LABEL_6:
  v18 = sub_22A4DB59C();
  if (!v2)
  {
    v20 = v18;
    v21 = v19;
    v22 = objc_opt_self();
    v15 = sub_22A4DB61C();
    v52[0] = 0;
    v23 = [v22 propertyListWithData:v15 options:0 format:0 error:v52];

    v24 = v52[0];
    if (!v23)
    {
      v39 = v24;
      sub_22A4DB3EC();

      swift_willThrow();
      sub_2295798D4(v20, v21);
      return v15;
    }

    sub_22A4DE01C();
    swift_unknownObjectRelease();
    sub_2295404B0(v53, v52);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C370, &qword_22A578090);
    if (swift_dynamicCast())
    {
      v15 = v51;
      if (*(v51 + 16))
      {
        v25 = sub_229543DBC(0x6E6F6973726556, 0xE700000000000000);
        if (v26)
        {
          sub_2295404B0(v15[7] + 32 * v25, v52);
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C3B0, &unk_22A576E90);
          if (swift_dynamicCast())
          {
            __swift_destroy_boxed_opaque_existential_0(v53);
            sub_2295798D4(v20, v21);

            return v15;
          }
        }
      }
    }

    v40 = v48;
    sub_229541CB0(v4, &off_283CE4488);
    v41 = sub_22A4DD05C();
    v42 = sub_22A4DDCEC();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      *v43 = 0;
      _os_log_impl(&dword_229538000, v41, v42, "Invalid metadata format", v43, 2u);
      MEMORY[0x22AAD4E50](v43, -1, -1);
    }

    (*(v49 + 8))(v40, v50);
    type metadata accessor for HMError(0);
    v15 = v44;
    v51 = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D7B0, &unk_22A578800);
    v45 = swift_initStackObject();
    *(v45 + 16) = xmmword_22A576180;
    *(v45 + 32) = sub_22A4DD5EC();
    *(v45 + 72) = MEMORY[0x277D837D0];
    *(v45 + 40) = v46;
    *(v45 + 48) = 0xD000000000000017;
    *(v45 + 56) = 0x800000022A595C10;
    sub_22956AD8C(v45);
    swift_setDeallocating();
    sub_22953EAE4(v45 + 32, &qword_27D87CDA0, &unk_22A57A930);
    sub_229798324(&qword_27D87D7C0, type metadata accessor for HMError, &unk_22A576D30);
    sub_22A4DB3CC();
    swift_willThrow();
    sub_2295798D4(v20, v21);
    __swift_destroy_boxed_opaque_existential_0(v53);
  }

  return v15;
}

uint64_t sub_2297980E0()
{

  swift_unknownObjectRelease();
  v1 = OBJC_IVAR____TtC13HomeKitDaemon16DemoModeMetadata_defaultMetadataURL;
  v2 = sub_22A4DB57C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_22953EAE4(v0 + OBJC_IVAR____TtC13HomeKitDaemon16DemoModeMetadata_currentMetadataURL, &qword_27D880180, &unk_22A586590);
  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t type metadata accessor for DemoModeMetadata(uint64_t a1)
{
  result = qword_2814028C8;
  if (!qword_2814028C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2297981DC(uint64_t a1)
{
  sub_22A4DB57C();
  if (v1 <= 0x3F)
  {
    sub_2297982CC(319);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_2297982CC(uint64_t a1)
{
  if (!qword_2814038B8)
  {
    sub_22A4DB57C();
    v1 = sub_22A4DDF9C();
    if (!v2)
    {
      atomic_store(v1, &qword_2814038B8);
    }
  }
}

uint64_t sub_229798324(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_22979836C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D880180, &unk_22A586590);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_2297983DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x2822009F8](sub_229798400, 0, 0);
}

uint64_t sub_229798400()
{
  v6 = *(v0 + 16);
  v7 = *(v0 + 32);
  v1 = sub_22A4DD5EC();
  MEMORY[0x22AAD08C0](v1);

  *(v0 + 48) = 0x800000022A595C30;
  v2 = swift_task_alloc();
  *(v0 + 56) = v2;
  *(v2 + 16) = v6;
  *(v2 + 32) = v7;
  v3 = swift_task_alloc();
  *(v0 + 64) = v3;
  *v3 = v0;
  v3[1] = sub_22979852C;
  v4 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822008A0](v3, 0, 0, 0xD000000000000021, 0x800000022A595C30, sub_229798A98, v2, v4);
}

uint64_t sub_22979852C()
{
  *(*v1 + 72) = v0;

  if (v0)
  {
    v2 = sub_229798650;
  }

  else
  {

    v2 = sub_229566EE4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_229798650()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2297986BC(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = a3;
  v5 = *(a1 + 32);
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C3B0, &unk_22A576E90);
    v3 = sub_22A4DD49C();
  }

  v6 = a2;
  v5(a2, v3);
}

void sub_22979876C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v24 = a5;
  v19[1] = a4;
  v20 = a2;
  v21 = a3;
  v23 = a1;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8804C0, &qword_22A57B5F0);
  v5 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v7 = v19 - v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D080, &qword_22A57CF50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22A576180;
  *(inited + 32) = sub_22A4DD5EC();
  *(inited + 40) = v9;
  *(inited + 72) = MEMORY[0x277D839B0];
  *(inited + 48) = 1;
  sub_22956AC5C(inited);
  swift_setDeallocating();
  sub_2295ED9B4(inited + 32);
  sub_22956AC5C(MEMORY[0x277D84F90]);
  v10 = objc_allocWithZone(MEMORY[0x277D0F818]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C3B0, &unk_22A576E90);
  v11 = sub_22A4DD47C();

  v12 = sub_22A4DD47C();

  v13 = sub_22A4DD47C();
  v14 = [v10 initWithName:v20 qualityOfService:25 destination:v21 userInfo:v11 headers:v12 payload:v13];

  v15 = v22;
  (*(v5 + 16))(v7, v23, v22);
  v16 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v17 = swift_allocObject();
  (*(v5 + 32))(v17 + v16, v7, v15);
  aBlock[4] = sub_229798B18;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2297986BC;
  aBlock[3] = &block_descriptor_32;
  v18 = _Block_copy(aBlock);

  [v14 setResponseHandler_];
  _Block_release(v18);
  [v24 sendMessage_];
}

uint64_t sub_229798AA4(void *a1)
{
  if (a1)
  {
    v1 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8804C0, &qword_22A57B5F0);
    return sub_22A4DD8EC();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8804C0, &qword_22A57B5F0);
    return sub_22A4DD8FC();
  }
}

uint64_t sub_229798B18(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8804C0, &qword_22A57B5F0);

  return sub_229798AA4(a1);
}

uint64_t sub_229798BA4(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a2;
  v7 = *(a1 + 32);
  if (a2)
  {
    sub_229562F68(0, &qword_27D880D90, 0x277D17B60);
    v6 = sub_22A4DD83C();
  }

  v8 = a3;
  v9 = a4;
  v7(v6, a3, a4);
}

void sub_229798C64(void *a1)
{
  v51 = a1;
  ObjectType = swift_getObjectType();
  v3 = sub_22A4DD07C();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v46[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v5);
  v9 = &v46[-v8];
  v10 = [v1 accessory];
  if (v10)
  {
    v11 = v10;
    v12 = [v10 accessoryServer];
    if (v12)
    {
      v13 = v12;
      sub_2296F8604();
      v14 = v1;
      v15 = sub_22A4DD05C();
      v16 = sub_22A4DDCCC();

      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        v48 = v17;
        v50 = swift_slowAlloc();
        v58 = v50;
        *v17 = 136315138;
        aBlock = 91;
        v53 = 0xE100000000000000;
        v18 = [v14 logIdentifier];
        v47 = v16;
        v19 = v18;
        v20 = sub_22A4DD5EC();
        v49 = v3;
        v21 = v20;
        v23 = v22;

        MEMORY[0x22AAD08C0](v21, v23);

        MEMORY[0x22AAD08C0](93, 0xE100000000000000);
        v24 = sub_2295A3E30(aBlock, v53, &v58);

        v25 = v48;
        *(v48 + 1) = v24;
        _os_log_impl(&dword_229538000, v15, v47, "%s Fetching matter pairings per request", v25, 0xCu);
        v26 = v50;
        __swift_destroy_boxed_opaque_existential_0(v50);
        MEMORY[0x22AAD4E50](v26, -1, -1);
        MEMORY[0x22AAD4E50](v25, -1, -1);

        (*(v4 + 8))(v9, v49);
      }

      else
      {

        (*(v4 + 8))(v9, v3);
      }

      v39 = swift_allocObject();
      v40 = v51;
      v39[2] = v14;
      v39[3] = v40;
      v39[4] = ObjectType;
      v56 = sub_22979CD5C;
      v57 = v39;
      aBlock = MEMORY[0x277D85DD0];
      v53 = 1107296256;
      v54 = sub_229798BA4;
      v55 = &block_descriptor_34_0;
      v41 = _Block_copy(&aBlock);
      v42 = v14;
      v43 = v41;
      v44 = v42;
      v45 = v40;

      [v13 fetchLastKnownPairingsWithCompletionHandler_];
      _Block_release(v43);

      goto LABEL_12;
    }
  }

  sub_2296F8604();
  v27 = v1;
  v28 = sub_22A4DD05C();
  v29 = sub_22A4DDCEC();

  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v58 = v31;
    *v30 = 136315138;
    aBlock = 91;
    v53 = 0xE100000000000000;
    v32 = [v27 logIdentifier];
    v33 = v3;
    v34 = sub_22A4DD5EC();
    v36 = v35;

    MEMORY[0x22AAD08C0](v34, v36);

    MEMORY[0x22AAD08C0](93, 0xE100000000000000);
    v37 = sub_2295A3E30(aBlock, v53, &v58);

    *(v30 + 4) = v37;
    _os_log_impl(&dword_229538000, v28, v29, "%s Unable to find accessory server", v30, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v31);
    MEMORY[0x22AAD4E50](v31, -1, -1);
    MEMORY[0x22AAD4E50](v30, -1, -1);

    (*(v4 + 8))(v7, v33);
  }

  else
  {

    (*(v4 + 8))(v7, v3);
  }

  v38 = [objc_opt_self() hmErrorWithCode_];
  v13 = sub_22A4DB3DC();

  [v51 respondWithError_];
LABEL_12:
}

void sub_229799184(unint64_t a1, void *a2, uint64_t a3, void *a4, void *a5)
{
  v9 = sub_22A4DD07C();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a1)
  {
    sub_2296F8604();
    v22 = a4;
    v23 = a2;
    v24 = sub_22A4DD05C();
    v25 = sub_22A4DDCEC();

    if (os_log_type_enabled(v24, v25))
    {
      v44 = v25;
      v45 = a5;
      v26 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v43 = v27;
      *v26 = 136315394;
      v46 = 91;
      v47 = 0xE100000000000000;
      v48 = v27;
      v28 = [v22 logIdentifier];
      v29 = sub_22A4DD5EC();
      v31 = v30;

      MEMORY[0x22AAD08C0](v29, v31);

      MEMORY[0x22AAD08C0](93, 0xE100000000000000);
      v32 = sub_2295A3E30(v46, v47, &v48);

      *(v26 + 4) = v32;
      *(v26 + 12) = 2112;
      if (a2)
      {
        v33 = a2;
        v34 = _swift_stdlib_bridgeErrorToNSError();
        v35 = v34;
      }

      else
      {
        v34 = 0;
        v35 = 0;
      }

      v37 = v44;
      *(v26 + 14) = v34;
      v38 = v42;
      *v42 = v35;
      _os_log_impl(&dword_229538000, v24, v37, "%s Failed to fetch pairings from matter accessory server with error: %@", v26, 0x16u);
      sub_22953EAE4(v38, &qword_27D87D7D0, &unk_22A578D90);
      MEMORY[0x22AAD4E50](v38, -1, -1);
      v39 = v43;
      __swift_destroy_boxed_opaque_existential_0(v43);
      MEMORY[0x22AAD4E50](v39, -1, -1);
      MEMORY[0x22AAD4E50](v26, -1, -1);

      (*(v10 + 8))(v12, v9);
      a5 = v45;
      v36 = a2;
      if (a2)
      {
        goto LABEL_11;
      }
    }

    else
    {

      (*(v10 + 8))(v12, v9);
      v36 = a2;
      if (a2)
      {
LABEL_11:
        v40 = a2;
        v20 = sub_22A4DB3DC();

        v21 = &selRef_respondWithError_;
        goto LABEL_12;
      }
    }

    v36 = [objc_opt_self() hmErrorWithCode_];
    goto LABEL_11;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D080, &qword_22A57CF50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22A576180;
  *(inited + 32) = sub_22A4DD5EC();
  *(inited + 40) = v14;
  sub_229703E88(a1);
  sub_229562F68(0, &unk_27D87CF00, 0x277CD1880);
  sub_229707F80();
  v15 = sub_22A4DDB5C();

  v16 = encodeRootObjectForXPC(v15);

  v17 = sub_22A4DB62C();
  v19 = v18;

  *(inited + 72) = MEMORY[0x277CC9318];
  *(inited + 48) = v17;
  *(inited + 56) = v19;
  sub_22956AC5C(inited);
  swift_setDeallocating();
  sub_22953EAE4(inited + 32, &unk_27D87DE50, &qword_22A577CD0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C3B0, &unk_22A576E90);
  v20 = sub_22A4DD47C();

  v21 = &selRef_respondWithPayload_;
LABEL_12:
  [a5 *v21];
}

void sub_229799610(void *a1)
{
  v2 = v1;
  v168 = a1;
  ObjectType = swift_getObjectType();
  v4 = sub_22A4DD26C();
  MEMORY[0x28223BE20](v4);
  v6 = &v142 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22A4DD07C();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v142 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v142 - v13;
  v15 = MEMORY[0x28223BE20](v12);
  v166 = &v142 - v16;
  MEMORY[0x28223BE20](v15);
  v18 = &v142 - v17;
  v19 = [v2 accessory];
  if (!v19)
  {
    goto LABEL_9;
  }

  v20 = v19;
  v167 = ObjectType;
  v21 = [v19 accessoryServer];
  if (!v21)
  {
    v22 = v20;
LABEL_8:

LABEL_9:
    sub_2296F8604();
    v30 = v2;
    v31 = sub_22A4DD05C();
    v32 = sub_22A4DDCEC();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      *&v174 = v34;
      *v33 = 136315138;
      *&aBlock = 91;
      *(&aBlock + 1) = 0xE100000000000000;
      v35 = [v30 logIdentifier];
      v36 = sub_22A4DD5EC();
      v38 = v37;

      MEMORY[0x22AAD08C0](v36, v38);

      MEMORY[0x22AAD08C0](93, 0xE100000000000000);
      v39 = sub_2295A3E30(aBlock, *(&aBlock + 1), &v174);

      *(v33 + 4) = v39;
      _os_log_impl(&dword_229538000, v31, v32, "%s Unable to find accessory server", v33, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v34);
      MEMORY[0x22AAD4E50](v34, -1, -1);
      MEMORY[0x22AAD4E50](v33, -1, -1);
    }

    (*(v8 + 8))(v11, v7);
    v40 = [objc_opt_self() hmfErrorWithCode_];
    v41 = sub_22A4DB3DC();

    [v168 respondWithError_];
    goto LABEL_12;
  }

  v22 = v21;
  v23 = [v20 home];
  if (!v23)
  {

    goto LABEL_8;
  }

  v151 = v4;
  v152 = v6;
  v163 = v23;
  v165 = v22;
  v24 = *MEMORY[0x277CCE830];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87F060, &qword_22A578050);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_22A5761A0;
  *(v25 + 32) = sub_229562F68(0, &qword_27D87DA30, 0x277CBEB98);
  v156 = sub_229562F68(0, &unk_27D87CF00, 0x277CD1880);
  *(v25 + 40) = v156;
  v26 = v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87F058, &unk_22A582DE0);
  v27 = sub_22A4DD81C();

  v28 = v168;
  v29 = [v168 unarchivedObjectForKey:v26 ofClasses:v27];

  if (v29)
  {
    sub_22A4DE01C();
    swift_unknownObjectRelease();
  }

  else
  {
    v174 = 0u;
    v175 = 0u;
  }

  aBlock = v174;
  v170 = v175;
  v157 = v7;
  v158 = v20;
  if (!*(&v175 + 1))
  {
    sub_22953EAE4(&aBlock, &unk_27D87DE60, &unk_22A57A960);
LABEL_20:
    sub_2296F8604();
    v62 = v2;
    v63 = v28;
    v64 = sub_22A4DD05C();
    v65 = sub_22A4DDCEC();

    if (os_log_type_enabled(v64, v65))
    {
      v66 = swift_slowAlloc();
      v67 = swift_slowAlloc();
      v168 = swift_slowAlloc();
      *&v174 = v168;
      *v66 = 136315394;
      *&aBlock = 91;
      *(&aBlock + 1) = 0xE100000000000000;
      v68 = [v62 logIdentifier];
      v69 = sub_22A4DD5EC();
      v71 = v70;

      MEMORY[0x22AAD08C0](v69, v71);

      MEMORY[0x22AAD08C0](93, 0xE100000000000000);
      v72 = sub_2295A3E30(aBlock, *(&aBlock + 1), &v174);

      *(v66 + 4) = v72;
      v20 = v158;
      *(v66 + 12) = 2112;
      *(v66 + 14) = v63;
      *v67 = v63;
      v73 = v63;
      _os_log_impl(&dword_229538000, v64, v65, "%s Could not find matter pairings in remote matter pairings message payload: %@", v66, 0x16u);
      sub_22953EAE4(v67, &qword_27D87D7D0, &unk_22A578D90);
      MEMORY[0x22AAD4E50](v67, -1, -1);
      v74 = v168;
      __swift_destroy_boxed_opaque_existential_0(v168);
      MEMORY[0x22AAD4E50](v74, -1, -1);
      MEMORY[0x22AAD4E50](v66, -1, -1);
    }

    (*(v8 + 8))(v14, v157);
    v75 = [objc_opt_self() hmErrorWithCode_];
    v41 = sub_22A4DB3DC();

    [v63 respondWithError_];
    goto LABEL_12;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D880D80, &unk_22A582DF0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v20 = v158;
    goto LABEL_20;
  }

  v42 = v173;
  sub_2296F8604();
  v43 = v2;

  v44 = sub_22A4DD05C();
  v45 = sub_22A4DDCCC();

  v46 = os_log_type_enabled(v44, v45);
  v162 = v43;
  if (v46)
  {
    v47 = swift_slowAlloc();
    v164 = swift_slowAlloc();
    *&v174 = v164;
    *v47 = 136315394;
    *&aBlock = 91;
    *(&aBlock + 1) = 0xE100000000000000;
    v48 = [v43 logIdentifier];
    v49 = v42;
    v50 = sub_22A4DD5EC();
    v52 = v51;

    v53 = v50;
    v42 = v49;
    MEMORY[0x22AAD08C0](v53, v52);

    MEMORY[0x22AAD08C0](93, 0xE100000000000000);
    v54 = sub_2295A3E30(aBlock, *(&aBlock + 1), &v174);

    *(v47 + 4) = v54;
    *(v47 + 12) = 2080;
    sub_229707F80();
    v55 = sub_22A4DDB7C();
    v57 = sub_2295A3E30(v55, v56, &v174);

    *(v47 + 14) = v57;
    _os_log_impl(&dword_229538000, v44, v45, "%s Removing matter pairings: %s", v47, 0x16u);
    v58 = v164;
    swift_arrayDestroy();
    MEMORY[0x22AAD4E50](v58, -1, -1);
    MEMORY[0x22AAD4E50](v47, -1, -1);

    v59 = *(v8 + 8);
    v60 = v18;
    v61 = v157;
  }

  else
  {

    v59 = *(v8 + 8);
    v60 = v18;
    v61 = v7;
  }

  v149 = v59;
  v59(v60, v61);
  v76 = [v165 rootPublicKey];
  if (v76)
  {
    v77 = v76;
    v153 = sub_22A4DB62C();
    v161 = v78;
  }

  else
  {
    v153 = 0;
    v161 = 0xF000000000000000;
  }

  v160 = dispatch_group_create();
  v79 = swift_allocObject();
  *(v79 + 16) = 0;
  v159 = v79;
  *(v79 + 20) = 0;
  if ((v42 & 0xC000000000000001) != 0)
  {
    sub_22A4DE09C();
    sub_229707F80();
    sub_22A4DDBAC();
    v81 = *(&v174 + 1);
    v42 = v174;
    v83 = *(&v175 + 1);
    v82 = v175;
    v84 = v176;
  }

  else
  {
    v83 = 0;
    v85 = -1 << *(v42 + 32);
    v81 = v42 + 56;
    v82 = ~v85;
    v86 = -v85;
    if (v86 < 64)
    {
      v87 = ~(-1 << v86);
    }

    else
    {
      v87 = -1;
    }

    v84 = v87 & *(v42 + 56);
  }

  v147 = v82;
  v88 = (v82 + 64) >> 6;
  v154 = &v170;
  v148 = v8 + 8;
  *&v80 = 136315394;
  v146 = v80;
  v155 = v42;
  if (v42 < 0)
  {
    goto LABEL_40;
  }

LABEL_34:
  v89 = v83;
  v90 = v84;
  v91 = v83;
  if (v84)
  {
LABEL_38:
    v92 = (v90 - 1) & v90;
    v93 = *(*(v42 + 48) + ((v91 << 9) | (8 * __clz(__rbit64(v90)))));
    if (!v93)
    {
LABEL_56:
      sub_22953EE84(v42);
      v133 = v158;
      v134 = [v158 workQueue];
      v135 = swift_allocObject();
      v136 = v162;
      v135[2] = v159;
      v135[3] = v136;
      v137 = v167;
      v138 = v168;
      v135[4] = v168;
      v135[5] = v137;
      v171 = sub_22979CD40;
      v172 = v135;
      *&aBlock = MEMORY[0x277D85DD0];
      *(&aBlock + 1) = 1107296256;
      *&v170 = sub_22953E640;
      *(&v170 + 1) = &block_descriptor_19;
      _Block_copy(&aBlock);
      v173 = MEMORY[0x277D84F90];
      sub_22974B658();
      v139 = v136;

      v140 = v138;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87CEA0, &unk_22A577A40);
      sub_22953E5DC();
      sub_22A4DE03C();
      sub_22A4DD2EC();
      swift_allocObject();
      sub_22A4DD2DC();

      v141 = v160;
      sub_22A4DDD4C();

      sub_229590D18(v153, v161);

      v41 = v163;
LABEL_12:

      return;
    }

    while (1)
    {
      v164 = v92;
      v95 = v160;
      dispatch_group_enter(v160);
      v96 = swift_allocObject();
      v97 = v162;
      v96[2] = v162;
      v96[3] = v93;
      v96[4] = v159;
      v96[5] = v95;
      v96[6] = v167;
      v98 = v97;
      v99 = v93;

      v100 = v95;
      v101 = [v99 home];
      v102 = [v101 ecosystem];

      v103 = [v102 vendor];
      LODWORD(v102) = [v103 isAppleVendor];

      if (v102)
      {
        v150 = v98;
        v104 = [v99 home];
        v105 = [v104 ecosystem];

        v106 = [v105 rootPublicKey];
        v107 = sub_22A4DB62C();
        v109 = v108;

        if (v109 >> 60 == 15)
        {
          if (v161 >> 60 == 15)
          {
            sub_2295AEF1C(v153, v161);
            sub_229590D18(v107, v109);
            v110 = v150;
LABEL_52:
            v117 = v166;
            sub_2296F8604();
            v118 = v110;
            v99 = v99;
            v119 = sub_22A4DD05C();
            v120 = sub_22A4DDCCC();

            LODWORD(v150) = v120;
            if (os_log_type_enabled(v119, v120))
            {
              v121 = swift_slowAlloc();
              v144 = swift_slowAlloc();
              v145 = swift_slowAlloc();
              v173 = v145;
              *v121 = v146;
              *&aBlock = 91;
              *(&aBlock + 1) = 0xE100000000000000;
              v122 = [v118 logIdentifier];
              v143 = v119;
              v123 = v122;
              v124 = sub_22A4DD5EC();
              v126 = v125;

              MEMORY[0x22AAD08C0](v124, v126);

              MEMORY[0x22AAD08C0](93, 0xE100000000000000);
              v127 = sub_2295A3E30(aBlock, *(&aBlock + 1), &v173);

              *(v121 + 4) = v127;
              *(v121 + 12) = 2112;
              *(v121 + 14) = v99;
              v128 = v144;
              *v144 = v93;
              v129 = v99;
              v130 = v143;
              _os_log_impl(&dword_229538000, v143, v150, "%s Pairing is from apple ecosystem, removing accessory from HomeKit: %@", v121, 0x16u);
              sub_22953EAE4(v128, &qword_27D87D7D0, &unk_22A578D90);
              MEMORY[0x22AAD4E50](v128, -1, -1);
              v131 = v145;
              __swift_destroy_boxed_opaque_existential_0(v145);
              MEMORY[0x22AAD4E50](v131, -1, -1);
              MEMORY[0x22AAD4E50](v121, -1, -1);

              v132 = v166;
            }

            else
            {

              v132 = v117;
            }

            v149(v132, v157);
            v171 = sub_22979CD4C;
            v172 = v96;
            *&aBlock = MEMORY[0x277D85DD0];
            *(&aBlock + 1) = 1107296256;
            *&v170 = sub_2295AAF60;
            *(&v170 + 1) = &block_descriptor_28;
            v114 = _Block_copy(&aBlock);
            v113 = v158;

            [v163 handleRemoveAccessory:v113 completion:v114];
            goto LABEL_49;
          }

LABEL_47:
          v111 = v153;
          v112 = v161;
          sub_2295AEF1C(v153, v161);
          sub_229590D18(v107, v109);
          sub_229590D18(v111, v112);
          goto LABEL_48;
        }

        if (v161 >> 60 == 15)
        {
          goto LABEL_47;
        }

        v115 = v161;
        v116 = v153;
        sub_2295AEF1C(v153, v161);
        sub_22956C148(v107, v109);
        LODWORD(v145) = sub_2297B7550(v107, v109, v116, v115);
        sub_229590D18(v116, v115);
        sub_2295798D4(v107, v109);
        sub_229590D18(v107, v109);
        v110 = v150;
        if (v145)
        {
          goto LABEL_52;
        }
      }

LABEL_48:
      v113 = [v99 chipPluginPairing];
      v171 = sub_22979CD4C;
      v172 = v96;
      *&aBlock = MEMORY[0x277D85DD0];
      *(&aBlock + 1) = 1107296256;
      *&v170 = sub_2295AAF60;
      *(&v170 + 1) = &block_descriptor_25_1;
      v114 = _Block_copy(&aBlock);

      [v165 removePairing:v113 completionHandler:v114];
LABEL_49:
      v42 = v155;

      _Block_release(v114);
      v83 = v91;
      v84 = v164;
      if ((v42 & 0x8000000000000000) == 0)
      {
        goto LABEL_34;
      }

LABEL_40:
      v94 = sub_22A4DE12C();
      if (v94)
      {
        v173 = v94;
        swift_dynamicCast();
        v93 = aBlock;
        v91 = v83;
        v92 = v84;
        if (aBlock)
        {
          continue;
        }
      }

      goto LABEL_56;
    }
  }

  while (1)
  {
    v91 = v89 + 1;
    if (__OFADD__(v89, 1))
    {
      break;
    }

    if (v91 >= v88)
    {
      goto LABEL_56;
    }

    v90 = *(v81 + 8 * v91);
    ++v89;
    if (v90)
    {
      goto LABEL_38;
    }
  }

  __break(1u);
}

void sub_22979A8B4(void *a1, void *a2, void *a3, NSObject *a4, NSObject *a5)
{
  v10 = sub_22A4DD07C();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v57 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v57 - v15;
  if (a1)
  {
    v62 = a4;
    v17 = a1;
    sub_2296F8604();
    v18 = a1;
    v19 = a2;
    v20 = a3;
    v21 = sub_22A4DD05C();
    v22 = sub_22A4DDCEC();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v61 = v10;
      v24 = v23;
      v25 = swift_slowAlloc();
      v59 = v22;
      v26 = v25;
      v27 = swift_slowAlloc();
      v60 = v27;
      *v24 = 136315650;
      v64 = 91;
      v65 = 0xE100000000000000;
      v66 = v27;
      v28 = [v19 logIdentifier];
      v29 = a5;
      v30 = sub_22A4DD5EC();
      v63 = v11;
      v32 = v31;

      v58 = v21;
      v33 = v30;
      a5 = v29;
      MEMORY[0x22AAD08C0](v33, v32);

      MEMORY[0x22AAD08C0](93, 0xE100000000000000);
      v34 = sub_2295A3E30(v64, v65, &v66);

      *(v24 + 4) = v34;
      *(v24 + 12) = 2112;
      *(v24 + 14) = v20;
      *v26 = v20;
      *(v24 + 22) = 2112;
      v35 = a1;
      v36 = v20;
      v37 = _swift_stdlib_bridgeErrorToNSError();
      *(v24 + 24) = v37;
      v26[1] = v37;
      v38 = v58;
      _os_log_impl(&dword_229538000, v58, v59, "%s Failed to remove chip accessory from HomeKit: %@ with error: %@", v24, 0x20u);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D7D0, &unk_22A578D90);
      swift_arrayDestroy();
      MEMORY[0x22AAD4E50](v26, -1, -1);
      v39 = v60;
      __swift_destroy_boxed_opaque_existential_0(v60);
      MEMORY[0x22AAD4E50](v39, -1, -1);
      MEMORY[0x22AAD4E50](v24, -1, -1);

      (*(v63 + 8))(v16, v61);
    }

    else
    {

      (*(v11 + 8))(v16, v10);
    }

    v56 = v62;
    os_unfair_lock_lock(&v62[2]);
    BYTE4(v56[2].isa) = 1;
    os_unfair_lock_unlock(&v56[2]);
  }

  else
  {
    v63 = v11;
    sub_2296F8604();
    v40 = a2;
    v41 = a3;
    v42 = sub_22A4DD05C();
    v43 = sub_22A4DDCCC();

    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      v62 = a5;
      v45 = v44;
      v46 = swift_slowAlloc();
      v61 = v10;
      v47 = v46;
      v48 = swift_slowAlloc();
      *v45 = 136315394;
      v64 = 91;
      v65 = 0xE100000000000000;
      v66 = v48;
      v49 = [v40 logIdentifier];
      v50 = sub_22A4DD5EC();
      v52 = v51;

      MEMORY[0x22AAD08C0](v50, v52);

      MEMORY[0x22AAD08C0](93, 0xE100000000000000);
      v53 = sub_2295A3E30(v64, v65, &v66);

      *(v45 + 4) = v53;
      *(v45 + 12) = 2112;
      *(v45 + 14) = v41;
      *v47 = v41;
      v54 = v41;
      _os_log_impl(&dword_229538000, v42, v43, "%s Successfully removed chip accessory from HomeKit: %@", v45, 0x16u);
      sub_22953EAE4(v47, &qword_27D87D7D0, &unk_22A578D90);
      MEMORY[0x22AAD4E50](v47, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v48);
      MEMORY[0x22AAD4E50](v48, -1, -1);
      v55 = v45;
      a5 = v62;
      MEMORY[0x22AAD4E50](v55, -1, -1);

      (*(v63 + 8))(v14, v61);
    }

    else
    {

      (*(v63 + 8))(v14, v10);
    }
  }

  dispatch_group_leave(a5);
}

void sub_22979ADDC(uint64_t a1, void *a2, void *a3)
{
  v6 = sub_22A4DD07C();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v38 - v11;
  os_unfair_lock_lock((a1 + 16));
  v13 = *(a1 + 20);
  os_unfair_lock_unlock((a1 + 16));
  if (v13)
  {
    sub_2296F8604();
    v14 = a2;
    v15 = sub_22A4DD05C();
    v16 = sub_22A4DDCEC();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      *v17 = 136315138;
      v39 = 91;
      v40 = 0xE100000000000000;
      v41 = v18;
      v19 = [v14 logIdentifier];
      v20 = sub_22A4DD5EC();
      v38 = v6;
      v21 = a3;
      v23 = v22;

      MEMORY[0x22AAD08C0](v20, v23);
      a3 = v21;

      MEMORY[0x22AAD08C0](93, 0xE100000000000000);
      v24 = sub_2295A3E30(v39, v40, &v41);

      *(v17 + 4) = v24;
      _os_log_impl(&dword_229538000, v15, v16, "%s Failed to remove some matter pairings", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v18);
      MEMORY[0x22AAD4E50](v18, -1, -1);
      MEMORY[0x22AAD4E50](v17, -1, -1);

      (*(v7 + 8))(v10, v38);
    }

    else
    {

      (*(v7 + 8))(v10, v6);
    }

    v36 = [objc_opt_self() hmErrorWithCode_];
    v37 = sub_22A4DB3DC();

    [a3 respondWithError_];
  }

  else
  {
    sub_2296F8604();
    v25 = a2;
    v26 = sub_22A4DD05C();
    v27 = sub_22A4DDCCC();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      *v28 = 136315138;
      v39 = 91;
      v40 = 0xE100000000000000;
      v41 = v29;
      v30 = [v25 logIdentifier];
      v31 = sub_22A4DD5EC();
      v38 = v6;
      v32 = a3;
      v34 = v33;

      MEMORY[0x22AAD08C0](v31, v34);
      a3 = v32;

      MEMORY[0x22AAD08C0](93, 0xE100000000000000);
      v35 = sub_2295A3E30(v39, v40, &v41);

      *(v28 + 4) = v35;
      _os_log_impl(&dword_229538000, v26, v27, "%s Successfully removed all matter pairings", v28, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v29);
      MEMORY[0x22AAD4E50](v29, -1, -1);
      MEMORY[0x22AAD4E50](v28, -1, -1);

      (*(v7 + 8))(v12, v38);
    }

    else
    {

      (*(v7 + 8))(v12, v6);
    }

    [a3 respondWithSuccess];
  }
}

void sub_22979B218(uint64_t a1, void (*a2)(void), uint64_t a3)
{
  v4 = v3;
  ObjectType = swift_getObjectType();
  v9 = sub_22A4DD07C();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = [v4 accessory];
  if (!v13)
  {
LABEL_6:
    if (a2)
    {
      v53 = [objc_opt_self() hmErrorWithCode_];
      a2();
      v19 = v53;
    }

    return;
  }

  v14 = v13;
  v53 = [v13 home];
  if (!v53)
  {

    goto LABEL_6;
  }

  v46 = v12;
  v47 = v10;
  v48 = v9;
  v49 = a3;
  v51 = v14;
  v52 = a2;
  v45 = ObjectType;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_22A4DE09C();
    sub_229562F68(0, &unk_27D87CF00, 0x277CD1880);
    sub_229707F80();
    sub_22A4DDBAC();
    a1 = v56[2];
    v15 = v56[3];
    v17 = v56[4];
    v16 = v56[5];
    v18 = v56[6];
  }

  else
  {
    v20 = -1 << *(a1 + 32);
    v15 = a1 + 56;
    v17 = ~v20;
    v21 = -v20;
    if (v21 < 64)
    {
      v22 = ~(-1 << v21);
    }

    else
    {
      v22 = -1;
    }

    v18 = v22 & *(a1 + 56);

    v16 = 0;
  }

  v50 = v17;
  v23 = (v17 + 64) >> 6;
  if (a1 < 0)
  {
    goto LABEL_21;
  }

LABEL_15:
  v24 = v16;
  v25 = v18;
  v26 = v16;
  if (v18)
  {
LABEL_19:
    v27 = (v25 - 1) & v25;
    v28 = *(*(a1 + 48) + ((v26 << 9) | (8 * __clz(__rbit64(v25)))));
    if (v28)
    {
      while (1)
      {
        v54 = v28;
        sub_22979B738(&v54, v53);
        if (v30)
        {
          break;
        }

        v16 = v26;
        v18 = v27;
        if ((a1 & 0x8000000000000000) == 0)
        {
          goto LABEL_15;
        }

LABEL_21:
        v29 = sub_22A4DE12C();
        if (v29)
        {
          v56[0] = v29;
          sub_229562F68(0, &unk_27D87CF00, 0x277CD1880);
          swift_dynamicCast();
          v28 = v54;
          v26 = v16;
          v27 = v18;
          if (v54)
          {
            continue;
          }
        }

        goto LABEL_26;
      }

      sub_22953EE84(a1);
      v32 = v46;
      sub_2296F8604();
      v33 = v4;
      v34 = sub_22A4DD05C();
      v35 = sub_22A4DDCEC();

      if (os_log_type_enabled(v34, v35))
      {
        v36 = swift_slowAlloc();
        v37 = swift_slowAlloc();
        *v36 = 136315138;
        v54 = 91;
        v55 = 0xE100000000000000;
        v56[0] = v37;
        v38 = [v33 logIdentifier];
        v39 = sub_22A4DD5EC();
        v41 = v40;

        MEMORY[0x22AAD08C0](v39, v41);

        MEMORY[0x22AAD08C0](93, 0xE100000000000000);
        v42 = sub_2295A3E30(v54, v55, v56);

        *(v36 + 4) = v42;
        _os_log_impl(&dword_229538000, v34, v35, "%s System commissioner is unsupported on this platform", v36, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v37);
        MEMORY[0x22AAD4E50](v37, -1, -1);
        MEMORY[0x22AAD4E50](v36, -1, -1);
      }

      (*(v47 + 8))(v32, v48);
      v43 = v52;
      if (v52)
      {
        v44 = [objc_opt_self() hmErrorWithCode_];
        v43();
      }
    }

    else
    {
LABEL_26:
      sub_22953EE84(a1);
      v31 = v51;
      if (v52)
      {
        (v52)(0);
      }
    }
  }

  else
  {
    while (1)
    {
      v26 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        break;
      }

      if (v26 >= v23)
      {
        goto LABEL_26;
      }

      v25 = *(v15 + 8 * v26);
      ++v24;
      if (v25)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
  }
}

void sub_22979B738(id *a1, void *a2)
{
  v3 = *a1;
  v4 = [*a1 home];
  v5 = [v4 ecosystem];

  v6 = [v5 vendor];
  LODWORD(v5) = [v6 isSystemCommissionerVendor];

  if (!v5)
  {
    return;
  }

  v7 = [v3 home];
  v8 = [v7 ecosystem];

  v9 = [v8 rootPublicKey];
  v10 = sub_22A4DB62C();
  v12 = v11;
  v13 = [a2 homeManager];
  if (!v13)
  {

    goto LABEL_9;
  }

  v14 = v13;
  v15 = [v13 accessoryBrowser];

  if (!v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v16 = [v15 chipAccessoryServerBrowser];
  swift_unknownObjectRelease();
  if (!v16)
  {
LABEL_17:
    __break(1u);
    return;
  }

  v17 = [v16 systemCommissionerFabricRootPublicKey];
  if (!v17)
  {
LABEL_9:
    v18 = 0;
    v20 = 0xF000000000000000;
    goto LABEL_10;
  }

  v18 = sub_22A4DB62C();
  v20 = v19;

LABEL_10:
  if (v12 >> 60 == 15)
  {
    if (v20 >> 60 == 15)
    {
      sub_229590D18(v10, v12);
      return;
    }

    goto LABEL_14;
  }

  if (v20 >> 60 == 15)
  {
LABEL_14:
    sub_229590D18(v10, v12);
    sub_229590D18(v18, v20);
    return;
  }

  sub_22956C148(v10, v12);
  sub_2295AEF1C(v18, v20);
  sub_2297B7550(v10, v12, v18, v20);
  sub_229590D18(v18, v20);
  sub_229590D18(v18, v20);
  sub_2295798D4(v10, v12);
  sub_229590D18(v10, v12);
}

void sub_22979B9D0(void *a1)
{
  ObjectType = swift_getObjectType();
  v4 = sub_22A4DD07C();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v51[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v6);
  v10 = &v51[-v9];
  v11 = [v1 accessory];
  if (v11)
  {
    v12 = v11;
    v13 = [v11 accessoryServer];
    if (v13)
    {
      v14 = v13;
      [objc_opt_self() chipPairingModeActiveDuration];
      v16 = v15;
      sub_2296F8604();
      v17 = v1;
      v18 = sub_22A4DD05C();
      v19 = sub_22A4DDCCC();

      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        v56 = v5;
        v21 = v20;
        v53 = swift_slowAlloc();
        v63 = v53;
        *v21 = 136315394;
        aBlock = 91;
        v58 = 0xE100000000000000;
        v22 = [v17 logIdentifier];
        v52 = v19;
        v23 = v22;
        v24 = sub_22A4DD5EC();
        v54 = a1;
        v55 = v4;
        v25 = v24;
        v27 = v26;

        MEMORY[0x22AAD08C0](v25, v27);

        MEMORY[0x22AAD08C0](93, 0xE100000000000000);
        v28 = sub_2295A3E30(aBlock, v58, &v63);

        *(v21 + 4) = v28;
        a1 = v54;
        *(v21 + 12) = 2048;
        *(v21 + 14) = v16;
        _os_log_impl(&dword_229538000, v18, v52, "%s Opening CHIP pairing window for duration: %f", v21, 0x16u);
        v29 = v53;
        __swift_destroy_boxed_opaque_existential_0(v53);
        MEMORY[0x22AAD4E50](v29, -1, -1);
        MEMORY[0x22AAD4E50](v21, -1, -1);

        (*(v56 + 8))(v10, v55);
      }

      else
      {

        (*(v5 + 8))(v10, v4);
      }

      v47 = swift_allocObject();
      v47[2] = v17;
      v47[3] = a1;
      v47[4] = ObjectType;
      v61 = sub_22979CD34;
      v62 = v47;
      aBlock = MEMORY[0x277D85DD0];
      v58 = 1107296256;
      v59 = sub_2295AAF60;
      v60 = &block_descriptor_10;
      v48 = _Block_copy(&aBlock);
      v49 = v17;
      v50 = a1;

      [v14 openPairingWindowForDuration:v48 completionHandler:v16];
      _Block_release(v48);

      goto LABEL_12;
    }
  }

  v56 = v5;
  sub_2296F8604();
  v30 = v1;
  v31 = a1;
  v32 = sub_22A4DD05C();
  v33 = sub_22A4DDCEC();

  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v63 = v35;
    *v34 = 136315394;
    aBlock = 91;
    v58 = 0xE100000000000000;
    v36 = [v30 logIdentifier];
    v37 = sub_22A4DD5EC();
    v55 = v4;
    v39 = v38;

    MEMORY[0x22AAD08C0](v37, v39);

    MEMORY[0x22AAD08C0](93, 0xE100000000000000);
    v40 = sub_2295A3E30(aBlock, v58, &v63);

    *(v34 + 4) = v40;
    *(v34 + 12) = 2080;
    v41 = [v31 shortDescription];
    v42 = sub_22A4DD5EC();
    v44 = v43;

    v45 = sub_2295A3E30(v42, v44, &v63);

    *(v34 + 14) = v45;
    _os_log_impl(&dword_229538000, v32, v33, "%s Unable to find accessory server to handle: %s", v34, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AAD4E50](v35, -1, -1);
    MEMORY[0x22AAD4E50](v34, -1, -1);

    (*(v56 + 8))(v8, v55);
  }

  else
  {

    (*(v56 + 8))(v8, v4);
  }

  v46 = [objc_opt_self() hmErrorWithCode_];
  v14 = sub_22A4DB3DC();

  [v31 respondWithError_];
LABEL_12:
}

void sub_22979BFA0(void *a1, void *a2, void *a3)
{
  v6 = sub_22A4DD07C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v10 = a1;
    sub_2296F8604();
    v11 = a1;
    v12 = a2;
    v13 = sub_22A4DD05C();
    v14 = sub_22A4DDCEC();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v32 = a3;
      v16 = v15;
      v30 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v31 = v17;
      *v16 = 136315394;
      v33 = 91;
      v34 = 0xE100000000000000;
      v35 = v17;
      v18 = [v12 logIdentifier];
      v19 = sub_22A4DD5EC();
      v21 = v20;

      MEMORY[0x22AAD08C0](v19, v21);

      MEMORY[0x22AAD08C0](93, 0xE100000000000000);
      v22 = sub_2295A3E30(v33, v34, &v35);

      *(v16 + 4) = v22;
      *(v16 + 12) = 2112;
      v23 = a1;
      v24 = _swift_stdlib_bridgeErrorToNSError();
      *(v16 + 14) = v24;
      v25 = v30;
      *v30 = v24;
      _os_log_impl(&dword_229538000, v13, v14, "%s Failed to open CHIP pairing window: %@", v16, 0x16u);
      sub_22953EAE4(v25, &qword_27D87D7D0, &unk_22A578D90);
      MEMORY[0x22AAD4E50](v25, -1, -1);
      v26 = v31;
      __swift_destroy_boxed_opaque_existential_0(v31);
      MEMORY[0x22AAD4E50](v26, -1, -1);
      v27 = v16;
      a3 = v32;
      MEMORY[0x22AAD4E50](v27, -1, -1);
    }

    (*(v7 + 8))(v9, v6);
    v28 = [objc_opt_self() hmErrorWithCode_];
    v29 = sub_22A4DB3DC();

    [a3 respondWithError_];
  }

  else
  {

    [a3 respondWithSuccess];
  }
}

void sub_22979C2CC(void *a1)
{
  ObjectType = swift_getObjectType();
  v4 = sub_22A4DD07C();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v51[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v6);
  v10 = &v51[-v9];
  v11 = [v1 accessory];
  if (v11)
  {
    v12 = v11;
    v13 = [v11 accessoryServer];
    if (v13)
    {
      v14 = v13;
      [objc_opt_self() chipPairingModeActiveDuration];
      v16 = v15;
      sub_2296F8604();
      v17 = v1;
      v18 = sub_22A4DD05C();
      v19 = sub_22A4DDCCC();

      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        v56 = v5;
        v21 = v20;
        v53 = swift_slowAlloc();
        v63 = v53;
        *v21 = 136315394;
        aBlock = 91;
        v58 = 0xE100000000000000;
        v22 = [v17 logIdentifier];
        v52 = v19;
        v23 = v22;
        v24 = sub_22A4DD5EC();
        v54 = a1;
        v55 = v4;
        v25 = v24;
        v27 = v26;

        MEMORY[0x22AAD08C0](v25, v27);

        MEMORY[0x22AAD08C0](93, 0xE100000000000000);
        v28 = sub_2295A3E30(aBlock, v58, &v63);

        *(v21 + 4) = v28;
        a1 = v54;
        *(v21 + 12) = 2048;
        *(v21 + 14) = v16;
        _os_log_impl(&dword_229538000, v18, v52, "%s Opening Matter pairing window with PIN for duration: %f", v21, 0x16u);
        v29 = v53;
        __swift_destroy_boxed_opaque_existential_0(v53);
        MEMORY[0x22AAD4E50](v29, -1, -1);
        MEMORY[0x22AAD4E50](v21, -1, -1);

        (*(v56 + 8))(v10, v55);
      }

      else
      {

        (*(v5 + 8))(v10, v4);
      }

      v47 = swift_allocObject();
      v47[2] = v17;
      v47[3] = a1;
      v47[4] = ObjectType;
      v61 = sub_22979CD28;
      v62 = v47;
      aBlock = MEMORY[0x277D85DD0];
      v58 = 1107296256;
      v59 = sub_22979CC90;
      v60 = &block_descriptor_33;
      v48 = _Block_copy(&aBlock);
      v49 = v17;
      v50 = a1;

      [v14 openPairingWindowWithPINForDuration:v48 completionHandler:v16];
      _Block_release(v48);

      goto LABEL_12;
    }
  }

  v56 = v5;
  sub_2296F8604();
  v30 = v1;
  v31 = a1;
  v32 = sub_22A4DD05C();
  v33 = sub_22A4DDCEC();

  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v63 = v35;
    *v34 = 136315394;
    aBlock = 91;
    v58 = 0xE100000000000000;
    v36 = [v30 logIdentifier];
    v37 = sub_22A4DD5EC();
    v55 = v4;
    v39 = v38;

    MEMORY[0x22AAD08C0](v37, v39);

    MEMORY[0x22AAD08C0](93, 0xE100000000000000);
    v40 = sub_2295A3E30(aBlock, v58, &v63);

    *(v34 + 4) = v40;
    *(v34 + 12) = 2080;
    v41 = [v31 shortDescription];
    v42 = sub_22A4DD5EC();
    v44 = v43;

    v45 = sub_2295A3E30(v42, v44, &v63);

    *(v34 + 14) = v45;
    _os_log_impl(&dword_229538000, v32, v33, "%s Unable to find accessory server to handle: %s", v34, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AAD4E50](v35, -1, -1);
    MEMORY[0x22AAD4E50](v34, -1, -1);

    (*(v56 + 8))(v8, v55);
  }

  else
  {

    (*(v56 + 8))(v8, v4);
  }

  v46 = [objc_opt_self() hmErrorWithCode_];
  v14 = sub_22A4DB3DC();

  [v31 respondWithError_];
LABEL_12:
}

void sub_22979C89C(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  v10 = sub_22A4DD07C();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D080, &qword_22A57CF50);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_22A576180;
    *(inited + 32) = sub_22A4DD5EC();
    *(inited + 72) = MEMORY[0x277D837D0];
    *(inited + 40) = v15;
    *(inited + 48) = a1;
    *(inited + 56) = a2;

    sub_22956AC5C(inited);
    swift_setDeallocating();
    sub_22953EAE4(inited + 32, &unk_27D87DE50, &qword_22A577CD0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C3B0, &unk_22A576E90);
    v16 = sub_22A4DD47C();

    v17 = &selRef_respondWithPayload_;
  }

  else
  {
    sub_2296F8604();
    v18 = a4;
    v19 = a3;
    v20 = sub_22A4DD05C();
    v21 = sub_22A4DDCEC();

    if (os_log_type_enabled(v20, v21))
    {
      v37 = a5;
      v22 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v36 = v23;
      *v22 = 136315394;
      v38 = 91;
      v39 = 0xE100000000000000;
      v40 = v23;
      v24 = [v18 logIdentifier];
      v25 = sub_22A4DD5EC();
      v27 = v26;

      MEMORY[0x22AAD08C0](v25, v27);

      MEMORY[0x22AAD08C0](93, 0xE100000000000000);
      v28 = sub_2295A3E30(v38, v39, &v40);

      *(v22 + 4) = v28;
      *(v22 + 12) = 2112;
      if (a3)
      {
        v29 = a3;
        v30 = _swift_stdlib_bridgeErrorToNSError();
        v31 = v30;
      }

      else
      {
        v30 = 0;
        v31 = 0;
      }

      *(v22 + 14) = v30;
      v32 = v35;
      *v35 = v31;
      _os_log_impl(&dword_229538000, v20, v21, "%s Failed to open Matter pairing window with PIN with error: %@", v22, 0x16u);
      sub_22953EAE4(v32, &qword_27D87D7D0, &unk_22A578D90);
      MEMORY[0x22AAD4E50](v32, -1, -1);
      v33 = v36;
      __swift_destroy_boxed_opaque_existential_0(v36);
      MEMORY[0x22AAD4E50](v33, -1, -1);
      MEMORY[0x22AAD4E50](v22, -1, -1);

      (*(v11 + 8))(v13, v10);
      a5 = v37;
    }

    else
    {

      (*(v11 + 8))(v13, v10);
    }

    v34 = [objc_opt_self() hmErrorWithCode_];
    v16 = sub_22A4DB3DC();

    v17 = &selRef_respondWithError_;
  }

  [a5 *v17];
}

uint64_t sub_22979CC90(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  if (a2)
  {
    v5 = sub_22A4DD5EC();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v8 = a3;
  v4(v5, v7, a3);
}

HMDUserDefaultDataSource __swiftcall HMDUserDefaultDataSource.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

unint64_t type metadata accessor for HMDUserDefaultDataSource()
{
  result = qword_27D880DF8;
  if (!qword_27D880DF8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27D880DF8);
  }

  return result;
}

uint64_t sub_22979D468(void *a1)
{
  v2 = [a1 home];
  v3 = v2;
  if (v2 && (v4 = [v2 homeManager]) != 0 && (v5 = v4, v6 = objc_msgSend(v4, sel_isCloudKitRequiredForHH2), v5, (v6 & 1) == 0) || (v7 = objc_msgSend(a1, sel_account)) != 0 && (v8 = v7, v9 = objc_msgSend(v7, sel_isCurrentAccount), v8, v9))
  {

    return 1;
  }

  if (v3)
  {
    if ([v3 isOwnerUser])
    {
      v11 = [a1 isOwner];

      if (v11)
      {
        return 1;
      }
    }

    else
    {
    }
  }

  return 0;
}

uint64_t sub_22979D56C()
{
  v0 = sub_22A4DB9BC();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_281402D50 != -1)
  {
    swift_once();
  }

  v4 = (qword_2814050C8 + OBJC_IVAR____TtC13HomeKitDaemon13FindMyHandler_fmfDevice);
  os_unfair_lock_lock((qword_2814050C8 + OBJC_IVAR____TtC13HomeKitDaemon13FindMyHandler_fmfDevice));
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D880E00, &qword_22A57B438) + 28);
  if ((*(v1 + 48))(v4 + v5, 1, v0))
  {
    v6 = 0;
  }

  else
  {
    (*(v1 + 16))(v3, v4 + v5, v0);
    v6 = sub_22A4DB97C();
    (*(v1 + 8))(v3, v0);
  }

  os_unfair_lock_unlock(v4);
  return v6;
}

uint64_t sub_22979D6FC(int *a1)
{
  v4 = (a1 + *a1);
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_22953ED8C;

  return v4();
}

uint64_t sub_22979D7E4(uint64_t a1, int *a2)
{
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 16) = v3;
  *v3 = v2;
  v3[1] = sub_229569B30;

  return v5();
}

uint64_t sub_22979D8CC()
{
  v0 = sub_22A4DD07C();
  __swift_allocate_value_buffer(v0, qword_27D880E10);
  __swift_project_value_buffer(v0, qword_27D880E10);
  sub_22A4DD5EC();
  return sub_22A4DD06C();
}

uint64_t sub_22979D944()
{
  *(v1 + 264) = v0;
  sub_22A4DB7DC();
  *(v1 + 272) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22979D9D4, 0, 0);
}

uint64_t sub_22979D9D4()
{
  if (qword_27D87BA80 != -1)
  {
    swift_once();
  }

  v1 = sub_22A4DD07C();
  v0[35] = __swift_project_value_buffer(v1, qword_27D880E10);
  v2 = sub_22A4DD05C();
  v3 = sub_22A4DDCCC();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_229538000, v2, v3, "Start", v4, 2u);
    MEMORY[0x22AAD4E50](v4, -1, -1);
  }

  v5 = v0[33];

  v6 = OBJC_IVAR____TtC13HomeKitDaemon29HomeMatterServicesCoordinator_matterServer;
  v0[36] = OBJC_IVAR____TtC13HomeKitDaemon29HomeMatterServicesCoordinator_matterServer;
  v7 = __swift_project_boxed_opaque_existential_0((v5 + v6), *(v5 + v6 + 24));
  v8 = *v7;
  v0[37] = *v7;

  return MEMORY[0x2822009F8](sub_22979DB14, v8, 0);
}

uint64_t sub_22979DB14()
{
  v1 = *(*(v0 + 296) + 120);
  *(v0 + 304) = v1;

  return MEMORY[0x2822009F8](sub_22979DB8C, v1, 0);
}

uint64_t sub_22979DB8C()
{
  v1 = v0[37];
  v2 = swift_task_alloc();
  v0[39] = v2;
  *(v2 + 16) = &unk_22A582E78;
  *(v2 + 24) = v1;
  v3 = swift_task_alloc();
  v0[40] = v3;
  *(v3 + 16) = &unk_22A582E80;
  *(v3 + 24) = v2;
  v6 = (*MEMORY[0x277D0EF78] + MEMORY[0x277D0EF78]);
  v4 = swift_task_alloc();
  v0[41] = v4;
  *v4 = v0;
  v4[1] = sub_22979DCA8;

  return v6();
}

void sub_22979DCA8()
{
  v2 = *v1;

  if (v0)
  {
  }

  else
  {
    v3 = *(v2 + 304);

    MEMORY[0x2822009F8](sub_22979DDF0, v3, 0);
  }
}

uint64_t sub_22979DDF0()
{

  return MEMORY[0x2822009F8](sub_22979DE58, 0, 0);
}

uint64_t sub_22979DE58()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 336) = Strong;
  if (Strong)
  {
    v2 = Strong;
    if ([*(*(v0 + 264) + OBJC_IVAR____TtC13HomeKitDaemon29HomeMatterServicesCoordinator_featuresDataSource) isHomeEnergy2025Enabled])
    {
      v3 = sub_22A4DD05C();
      v4 = sub_22A4DDCDC();
      if (os_log_type_enabled(v3, v4))
      {
        v5 = swift_slowAlloc();
        *v5 = 0;
        _os_log_impl(&dword_229538000, v3, v4, "Home Energy 2025 enabled", v5, 2u);
        MEMORY[0x22AAD4E50](v5, -1, -1);
      }

      v6 = *(v0 + 288);
      v7 = *(v0 + 264);
      v29 = *(v0 + 272);

      v8 = *__swift_project_boxed_opaque_existential_0((v7 + v6), *(v7 + v6 + 24));

      v9 = [v2 spiClientIdentifier];
      sub_22A4DB79C();

      v10 = type metadata accessor for DefaultGuidancePublisherFactoryDataSource();
      v11 = swift_allocObject();
      *(v0 + 120) = v10;
      *(v0 + 128) = &off_283CDD490;
      *(v0 + 96) = v11;
      type metadata accessor for GuidancePublisherFactory();
      v12 = swift_allocObject();
      v13 = __swift_mutable_project_boxed_opaque_existential_0(v0 + 96, v10);
      v14 = *(v10 - 8);
      v15 = swift_task_alloc();
      (*(v14 + 16))(v15, v13, v10);
      v16 = *v15;
      *(v12 + 40) = v10;
      *(v12 + 48) = &off_283CDD490;
      *(v12 + 16) = v16;
      *(v12 + 56) = 0;
      *(v12 + 64) = 0;
      __swift_destroy_boxed_opaque_existential_0((v0 + 96));

      v17 = v2;
      v18 = sub_22979FBF0(v8, v29, v12, v17);

      *(v0 + 80) = type metadata accessor for DefaultEnergyGuidanceServerV2(0);
      *(v0 + 88) = &off_283CE2ED0;

      *(v0 + 56) = v18;
      v19 = OBJC_IVAR____TtC13HomeKitDaemon29HomeMatterServicesCoordinator_energyGuidanceServerV2;
      swift_beginAccess();
      sub_22979FAF0(v0 + 56, v7 + v19);
      swift_endAccess();
      sub_22979FA18(v7 + v19, v0 + 136);
      if (*(v0 + 160))
      {
        sub_22957F1C4(v0 + 136, v0 + 176);
        sub_22979FA88(v0 + 136);
        v20 = __swift_project_boxed_opaque_existential_0((v0 + 176), *(v0 + 200));
        v21 = *v20;
        *(v0 + 344) = *v20;

        return MEMORY[0x2822009F8](sub_22979E278, v21, 0);
      }

      sub_22979FA88(v0 + 136);
    }

    else
    {
      v25 = *(v0 + 264);

      *(v0 + 48) = 0;
      *(v0 + 16) = 0u;
      *(v0 + 32) = 0u;
      v26 = OBJC_IVAR____TtC13HomeKitDaemon29HomeMatterServicesCoordinator_energyGuidanceServerV2;
      swift_beginAccess();
      sub_22979FAF0(v0 + 16, v25 + v26);
      swift_endAccess();
    }
  }

  else
  {
    v22 = sub_22A4DD05C();
    v23 = sub_22A4DDCEC();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_229538000, v22, v23, "Home is nil", v24, 2u);
      MEMORY[0x22AAD4E50](v24, -1, -1);
    }
  }

  v27 = *(v0 + 8);

  return v27();
}

uint64_t sub_22979E278()
{
  v3 = (*MEMORY[0x277D0EF78] + MEMORY[0x277D0EF78]);
  v1 = swift_task_alloc();
  *(v0 + 352) = v1;
  *v1 = v0;
  v1[1] = sub_22979E344;

  return v3();
}

void sub_22979E344()
{
  v2 = *v1;

  if (v0)
  {
  }

  else
  {
    v3 = *(v2 + 344);

    MEMORY[0x2822009F8](sub_22979E478, v3, 0);
  }
}

uint64_t sub_22979E494()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 176));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22979E678(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_2297A0254;

  return sub_22979D944();
}

uint64_t sub_22979E740()
{
  if (qword_27D87BA80 != -1)
  {
    swift_once();
  }

  v1 = sub_22A4DD07C();
  __swift_project_value_buffer(v1, qword_27D880E10);
  v2 = sub_22A4DD05C();
  v3 = sub_22A4DDCCC();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_229538000, v2, v3, "Stop", v4, 2u);
    MEMORY[0x22AAD4E50](v4, -1, -1);
  }

  v5 = *(v0 + 184);

  v6 = __swift_project_boxed_opaque_existential_0((v5 + OBJC_IVAR____TtC13HomeKitDaemon29HomeMatterServicesCoordinator_matterServer), *(v5 + OBJC_IVAR____TtC13HomeKitDaemon29HomeMatterServicesCoordinator_matterServer + 24));
  v7 = *v6;
  *(v0 + 192) = *v6;

  return MEMORY[0x2822009F8](sub_22979E878, v7, 0);
}

uint64_t sub_22979E878()
{
  v1 = *(*(v0 + 192) + 120);
  *(v0 + 200) = v1;

  return MEMORY[0x2822009F8](sub_22979E8F0, v1, 0);
}

uint64_t sub_22979E8F0()
{
  v1 = v0[24];
  v2 = swift_task_alloc();
  v0[26] = v2;
  *(v2 + 16) = &unk_22A582E48;
  *(v2 + 24) = v1;
  v3 = swift_task_alloc();
  v0[27] = v3;
  *(v3 + 16) = &unk_22A5824E0;
  *(v3 + 24) = v2;
  v6 = (*MEMORY[0x277D0EF78] + MEMORY[0x277D0EF78]);
  v4 = swift_task_alloc();
  v0[28] = v4;
  *v4 = v0;
  v4[1] = sub_22979EA0C;

  return v6();
}

void sub_22979EA0C()
{
  v2 = *v1;

  if (v0)
  {
  }

  else
  {
    v3 = *(v2 + 200);

    MEMORY[0x2822009F8](sub_22979EB54, v3, 0);
  }
}

uint64_t sub_22979EB54()
{

  return MEMORY[0x2822009F8](sub_22979EBBC, 0, 0);
}

uint64_t sub_22979EBBC()
{
  v1 = *(v0 + 184);
  v2 = OBJC_IVAR____TtC13HomeKitDaemon29HomeMatterServicesCoordinator_energyGuidanceServerV2;
  *(v0 + 232) = OBJC_IVAR____TtC13HomeKitDaemon29HomeMatterServicesCoordinator_energyGuidanceServerV2;
  swift_beginAccess();
  sub_22979FA18(v1 + v2, v0 + 16);
  if (*(v0 + 40))
  {
    sub_22957F1C4(v0 + 16, v0 + 96);
    sub_22979FA88(v0 + 16);
    __swift_project_boxed_opaque_existential_0((v0 + 96), *(v0 + 120));
    v3 = swift_task_alloc();
    *(v0 + 240) = v3;
    *v3 = v0;
    v3[1] = sub_22979ED2C;

    return sub_22972F6D0();
  }

  else
  {
    sub_22979FA88(v0 + 16);
    v5 = *(v0 + 232);
    v6 = *(v0 + 184);
    *(v0 + 72) = 0u;
    *(v0 + 88) = 0;
    *(v0 + 56) = 0u;
    swift_beginAccess();
    sub_22979FAF0(v0 + 56, v6 + v5);
    swift_endAccess();
    v7 = *(v0 + 8);

    return v7();
  }
}

uint64_t sub_22979ED2C()
{

  return MEMORY[0x2822009F8](sub_22979EE28, 0, 0);
}

uint64_t sub_22979EE28()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 96));
  v1 = *(v0 + 232);
  v2 = *(v0 + 184);
  *(v0 + 72) = 0u;
  *(v0 + 88) = 0;
  *(v0 + 56) = 0u;
  swift_beginAccess();
  sub_22979FAF0(v0 + 56, v2 + v1);
  swift_endAccess();
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_22979F048(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_22979F0F0;

  return sub_22979E720();
}

uint64_t sub_22979F0F0()
{
  v1 = *(*v0 + 24);
  v2 = *(*v0 + 16);
  v5 = *v0;

  v1[2](v1);
  _Block_release(v1);
  v3 = *(v5 + 8);

  return v3();
}

id sub_22979F258()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HomeMatterServicesCoordinator();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

HMDHomeMatterServicesCoordinatorFactory __swiftcall HMDHomeMatterServicesCoordinatorFactory.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

id sub_22979F42C(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v9[3] = _s27PrimaryResidentDataProviderCMa();
  v9[4] = &off_283CE4AF8;
  v9[0] = a1;
  swift_defaultActor_initialize();
  *(a2 + 112) = MEMORY[0x277D84F90];
  type metadata accessor for PrimaryResidentMatterServer.StateFSM();
  v5 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v5 + 112) = 0;
  sub_22A4DBA2C();
  *(v5 + 120) = sub_22A4DBA1C();
  *(a2 + 120) = v5;
  *(a2 + 168) = 0u;
  *(a2 + 184) = 0u;
  *(a2 + 200) = 0;
  sub_22957F1C4(v9, a2 + 128);
  v8.receiver = a2;
  v8.super_class = ObjectType;
  v6 = objc_msgSendSuper2(&v8, sel_init);
  __swift_destroy_boxed_opaque_existential_0(v9);
  return v6;
}

id sub_22979F510(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v24 = a1;
  v7 = type metadata accessor for PrimaryResidentMatterServer();
  v31[3] = v7;
  v31[4] = &off_283CE3CE0;
  v31[0] = a3;
  v8 = type metadata accessor for DefaultHomeMatterServicesFactory();
  v29 = v8;
  v30 = &off_283CE6130;
  v28[0] = a4;
  v9 = type metadata accessor for HomeMatterServicesCoordinator();
  v10 = objc_allocWithZone(v9);
  v11 = __swift_mutable_project_boxed_opaque_existential_0(v31, v7);
  MEMORY[0x28223BE20](v11);
  v13 = (&v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v14 + 16))(v13);
  v15 = __swift_mutable_project_boxed_opaque_existential_0(v28, v29);
  MEMORY[0x28223BE20](v15);
  v17 = (&v24 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v18 + 16))(v17);
  v19 = *v13;
  v20 = *v17;
  v27[3] = v7;
  v27[4] = &off_283CE3CE0;
  v26[4] = &off_283CE6130;
  v27[0] = v19;
  v26[3] = v8;
  v26[0] = v20;
  swift_unknownObjectWeakInit();
  v21 = &v10[OBJC_IVAR____TtC13HomeKitDaemon29HomeMatterServicesCoordinator_energyGuidanceServerV2];
  *v21 = 0u;
  *(v21 + 1) = 0u;
  *(v21 + 4) = 0;
  *&v10[OBJC_IVAR____TtC13HomeKitDaemon29HomeMatterServicesCoordinator_featuresDataSource] = a2;
  sub_22957F1C4(v27, &v10[OBJC_IVAR____TtC13HomeKitDaemon29HomeMatterServicesCoordinator_matterServer]);
  swift_unknownObjectWeakAssign();
  sub_22957F1C4(v26, &v10[OBJC_IVAR____TtC13HomeKitDaemon29HomeMatterServicesCoordinator_matterServicesFactory]);
  v25.receiver = v10;
  v25.super_class = v9;
  v22 = objc_msgSendSuper2(&v25, sel_init, v24);
  __swift_destroy_boxed_opaque_existential_0(v26);
  __swift_destroy_boxed_opaque_existential_0(v27);
  __swift_destroy_boxed_opaque_existential_0(v28);
  __swift_destroy_boxed_opaque_existential_0(v31);
  return v22;
}

id sub_22979F7A8(void *a1)
{
  v2 = [objc_allocWithZone(HMDFeaturesDataSource) init];
  v3 = _s27PrimaryResidentDataProviderCMa();
  v4 = swift_allocObject();
  v5 = a1;
  swift_defaultActor_initialize();
  swift_unknownObjectWeakInit();
  v4[16] = 0;
  swift_unknownObjectWeakInit();
  v4[17] = [objc_opt_self() defaultCenter];
  v4[18] = 0;
  swift_unknownObjectWeakAssign();
  v16[3] = v3;
  v16[4] = &off_283CE4AF8;
  v16[0] = v4;
  type metadata accessor for PrimaryResidentMatterServer();
  v6 = swift_allocObject();
  v7 = __swift_mutable_project_boxed_opaque_existential_0(v16, v3);
  MEMORY[0x28223BE20](v7);
  v9 = (&v16[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v10 + 16))(v9);
  v11 = *v9;

  v12 = sub_22979F42C(v11, v6);

  __swift_destroy_boxed_opaque_existential_0(v16);
  type metadata accessor for DefaultHomeMatterServicesFactory();
  v13 = swift_allocObject();
  return sub_22979F510(v5, v2, v12, v13);
}

uint64_t sub_22979F988()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_229586D38;

  return sub_229777AE8(v0);
}

uint64_t sub_22979FA18(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27D880EC8, &qword_22A582E70);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22979FA88(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27D880EC8, &qword_22A582E70);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22979FAF0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27D880EC8, &qword_22A582E70);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_22979FB60()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_229586D38;

  return sub_229777A1C(v0);
}

void *sub_22979FBF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v23 = a2;
  v24 = a4;
  v22 = a1;
  v21 = sub_22A4DDD7C();
  v5 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_22A4DDD5C();
  MEMORY[0x28223BE20](v8);
  v9 = sub_22A4DD29C();
  MEMORY[0x28223BE20](v9 - 8);
  v10 = type metadata accessor for GuidancePublisherFactory();
  v29[3] = v10;
  v29[4] = &off_283CE3F58;
  v29[0] = a3;
  type metadata accessor for DefaultEnergyGuidanceServerV2(0);
  v11 = swift_allocObject();
  v12 = __swift_mutable_project_boxed_opaque_existential_0(v29, v10);
  MEMORY[0x28223BE20](v12);
  v14 = (&v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v15 + 16))(v14);
  v16 = *v14;
  v27 = v10;
  v28 = &off_283CE3F58;
  *&v26 = v16;
  swift_defaultActor_initialize();
  sub_22A4DBA2C();
  v11[14] = sub_22A4DBA1C();
  sub_229562F68(0, &qword_281401980, 0x277D85C78);
  sub_22A4DD28C();
  v25 = MEMORY[0x277D84F90];
  sub_2297A0064();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87BAF0, &unk_22A5761E0);
  sub_22955A264();
  sub_22A4DE03C();
  (*(v5 + 104))(v7, *MEMORY[0x277D85260], v21);
  v11[15] = sub_22A4DDDCC();
  v11[16] = 0;
  *(v11 + OBJC_IVAR____TtC13HomeKitDaemon29DefaultEnergyGuidanceServerV2_guidancePublisherTask) = 0;
  *(v11 + OBJC_IVAR____TtC13HomeKitDaemon29DefaultEnergyGuidanceServerV2_isConfiguringPublisher) = 0;
  swift_unknownObjectWeakInit();
  *(v11 + OBJC_IVAR____TtC13HomeKitDaemon29DefaultEnergyGuidanceServerV2_notificationHandlerTasks) = MEMORY[0x277D84F90];
  v11[17] = v22;
  v11[18] = &off_283CE3D00;
  v17 = OBJC_IVAR____TtC13HomeKitDaemon29DefaultEnergyGuidanceServerV2_homeSPIClientIdentifier;
  v18 = sub_22A4DB7DC();
  (*(*(v18 - 8) + 32))(v11 + v17, v23, v18);
  sub_229557188(&v26, v11 + OBJC_IVAR____TtC13HomeKitDaemon29DefaultEnergyGuidanceServerV2_guidancePublisherFactory);
  swift_unknownObjectWeakAssign();
  __swift_destroy_boxed_opaque_existential_0(v29);
  return v11;
}

uint64_t sub_22979FFC8(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_229569B30;

  return sub_22972ECB0(a1, v1);
}

unint64_t sub_2297A0064()
{
  result = qword_281401990;
  if (!qword_281401990)
  {
    sub_22A4DDD5C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281401990);
  }

  return result;
}

uint64_t sub_2297A00BC()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_229569B30;

  return sub_22979F048(v2, v3);
}

uint64_t objectdestroyTm_6()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2297A01A8()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_229586D38;

  return sub_22979E678(v2, v3);
}

uint64_t sub_2297A0260(uint64_t a1)
{
  result = sub_22A4DDA5C();
  if (v2 <= 0x3F)
  {
    result = sub_22A4DDA2C();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

id sub_2297A0370(uint64_t a1)
{
  v3 = sub_22A4DB74C();
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_22A4DB7DC();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v40 - v11;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v41 = result;
    objc_opt_self();
    v14 = swift_dynamicCastObjCClass();
    if (v14)
    {
      v15 = v14;
      v40 = a1;
      swift_unknownObjectRetain();
      v16 = [v15 groupName];
      sub_22A4DD5EC();

      v17 = [v15 homeUUID];
      sub_22A4DB79C();

      v18 = [v15 accessoryUUID];
      sub_22A4DB79C();

      v19 = sub_22A4DBFCC();

      v20 = *(v7 + 8);
      v20(v10, v6);
      v20(v12, v6);
      if (v19)
      {

        v21 = [v15 date];
        sub_22A4DB70C();

        v22 = sub_2297C6574(v41, v19, v5);
LABEL_13:
        swift_unknownObjectRelease();

        return v22;
      }

      goto LABEL_18;
    }

    objc_opt_self();
    v23 = swift_dynamicCastObjCClass();
    if (v23)
    {
      v24 = v23;
      swift_unknownObjectRetain();
      v25 = [v24 groupName];
      sub_22A4DD5EC();

      v26 = [v24 homeUUID];
      sub_22A4DB79C();

      v27 = sub_22A4DBFDC();

      (*(v7 + 8))(v12, v6);
      if (v27)
      {

        v28 = [v24 date];
LABEL_12:
        v32 = v28;
        sub_22A4DB70C();

        v22 = sub_2297C6574(v41, v27, v5);
        goto LABEL_13;
      }
    }

    else
    {
      objc_opt_self();
      v29 = swift_dynamicCastObjCClass();
      if (!v29)
      {
        objc_opt_self();
        v33 = swift_dynamicCastObjCClass();
        if (!v33)
        {
          v42 = 0;
          v43 = 0xE000000000000000;
          sub_22A4DE1FC();
          MEMORY[0x22AAD08C0](0xD00000000000001BLL, 0x800000022A595F10);
          swift_getObjectType();
          v39 = sub_22A4DE8EC();
          MEMORY[0x22AAD08C0](v39);

          MEMORY[0x22AAD08C0](0xD000000000000027, 0x800000022A595F30);
          result = sub_22A4DE39C();
          __break(1u);
          return result;
        }

        v34 = v33;
        v35 = v1;
        swift_unknownObjectRetain();
        v36 = [v34 groupName];
        sub_22A4DD5EC();

        v37 = sub_22A4DBFEC();

        if (v37)
        {
          v38 = *(v35 + 32);
          v22 = sub_2297C676C(v41, v37, v38);
          swift_unknownObjectRelease();
          return v22;
        }

        goto LABEL_18;
      }

      v30 = v29;
      swift_unknownObjectRetain();
      v31 = [v30 groupName];
      sub_22A4DD5EC();

      v27 = sub_22A4DBFEC();

      if (v27)
      {

        v28 = [v30 date];
        goto LABEL_12;
      }
    }

LABEL_18:
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    return 0;
  }

  return result;
}

uint64_t sub_2297A09C0()
{
  sub_2296B874C(v0 + 16);

  return swift_deallocClassInstance();
}

id sub_2297A0A44(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(uint64_t, uint64_t, id, uint64_t))
{
  v32 = a7;
  v33 = a5;
  v28[2] = a4;
  v11 = sub_22A4DB74C();
  v30 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  ObjCClassFromObject = swift_getObjCClassFromObject();
  swift_getObjectType();
  sub_22A4DC00C();
  v14 = a3;
  swift_unknownObjectRetain();
  v15 = v31;
  v16 = v32(a1, a2, v14, a6);
  if (v15)
  {

    swift_unknownObjectRelease();

    return swift_deallocPartialClassInstance();
  }

  else
  {
    v18 = v16;
    v28[1] = 0;
    v31 = v13;
    v32 = v11;
    [objc_opt_self() defaultSaveInterval];
    v20 = v19;
    v21 = [objc_opt_self() sharedInstance];
    if (v33)
    {
      sub_22A4DBF8C();
    }

    _s16CoreDataDelegateCMa();
    v22 = swift_allocObject();
    swift_unknownObjectWeakInit();
    *(v22 + 24) = v18;
    *(v22 + 32) = v14;
    v23 = objc_allocWithZone(ObjCClassFromObject);
    v24 = v14;

    v25 = [v23 initWithDelegate:v22 saveInterval:v21 uptimeProvider:v20];

    v26 = [v24 startOfCurrentDay];
    v27 = v31;
    sub_22A4DB70C();

    sub_22A4DBF5C();

    (*(v30 + 8))(v27, v32);
    swift_unknownObjectRelease();
    swift_deallocPartialClassInstance();
    return v25;
  }
}

id sub_2297A0D30(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t (*a8)(uint64_t, uint64_t, id, uint64_t))
{
  v12 = sub_22A4DD5EC();
  v14 = v13;
  if (a5)
  {
    a5 = sub_22A4DD5EC();
    v16 = v15;
  }

  else
  {
    v16 = 0;
  }

  v17 = a4;
  swift_unknownObjectRetain();
  return sub_2297A0A44(v12, v14, v17, a5, v16, a6, a8);
}

id sub_2297A0F64(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5, double a6)
{
  v11 = sub_22A4DB74C();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a4)
  {
    sub_22A4DBF8C();
  }

  _s16CoreDataDelegateCMa();
  v15 = swift_allocObject();
  swift_unknownObjectWeakInit();
  *(v15 + 24) = a1;
  *(v15 + 32) = a2;
  v16 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  v17 = a2;

  v18 = [v16 initWithDelegate:v15 saveInterval:a5 uptimeProvider:a6];

  v19 = [v17 startOfCurrentDay];
  sub_22A4DB70C();

  sub_22A4DBF5C();

  (*(v12 + 8))(v14, v11);
  return v18;
}

uint64_t sub_2297A1124(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_2297A1290(a3, &v16);
  if (!v18)
  {
    return sub_2297A1300(&v16);
  }

  sub_229557188(&v16, v21);
  v7 = *(v3 + 24);
  v8 = *(v3 + 32);
  v16 = *v3;
  v6 = v16;
  v17 = *(v3 + 8);
  v14 = v17;
  v18 = v7;
  v19 = v8;
  v20 = MEMORY[0x277D84F98];
  v9 = v22;
  v10 = v23;
  __swift_project_boxed_opaque_existential_0(v21, v22);
  v11 = *(v10 + 16);
  sub_22956C148(v6, v14);

  v11(&v16, v9, v10);
  v12 = v20;
  v15[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D238, &qword_22A578180);
  v15[4] = &off_283CDFC90;
  v15[0] = v12;

  sub_229890DC4(v15, a1, a2);
  sub_2295798D4(v16, v17);

  return __swift_destroy_boxed_opaque_existential_0(v21);
}

uint64_t sub_2297A1290(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D882000, &qword_22A578390);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2297A1300(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D882000, &qword_22A578390);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_2297A1368()
{
  ObjectType = swift_getObjectType();
  sub_2297A2054();
  v2 = sub_22A4DDD8C();
  v3 = swift_allocObject();
  *(v3 + 16) = v0;
  *(v3 + 24) = ObjectType;
  v13 = sub_2297A20A0;
  v14 = v3;
  v9 = MEMORY[0x277D85DD0];
  v10 = 1107296256;
  v11 = sub_2297A1948;
  v12 = &block_descriptor_34;
  v4 = _Block_copy(&v9);
  v5 = v0;

  xpc_set_event_stream_handler("com.apple.notifyd.matching", v2, v4);
  _Block_release(v4);

  v6 = sub_22A4DDD8C();
  v7 = swift_allocObject();
  *(v7 + 16) = ObjectType;
  v13 = sub_2297A20A8;
  v14 = v7;
  v9 = MEMORY[0x277D85DD0];
  v10 = 1107296256;
  v11 = sub_2297A1948;
  v12 = &block_descriptor_6;
  v8 = _Block_copy(&v9);

  xpc_set_event_stream_handler("com.apple.rapport.matching", v6, v8);
  _Block_release(v8);
}

void sub_2297A1518(void *a1, void *a2, uint64_t a3)
{
  v6 = sub_22A4DD07C();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v36 - v12;
  MEMORY[0x28223BE20](v11);
  v15 = &v36 - v14;
  v16 = sub_22A4DD09C();
  if (xpc_dictionary_get_string(a1, v16))
  {
    v38 = v7;
    v17 = sub_22A4DD6FC();
    v19 = v18;
    sub_229541CB0(a3, &off_283CE4848);

    v20 = sub_22A4DD05C();
    v21 = sub_22A4DDCCC();

    v22 = os_log_type_enabled(v20, v21);
    v37 = a2;
    if (v22)
    {
      v23 = swift_slowAlloc();
      v36 = v6;
      v24 = v23;
      v25 = swift_slowAlloc();
      v39 = v25;
      *v24 = 136315138;

      v26 = sub_2295A3E30(v17, v19, &v39);

      *(v24 + 4) = v26;
      _os_log_impl(&dword_229538000, v20, v21, "XPC stream handler invoked with com.apple.notifyd.matching with event name: %s", v24, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v25);
      MEMORY[0x22AAD4E50](v25, -1, -1);
      v27 = v24;
      v6 = v36;
      MEMORY[0x22AAD4E50](v27, -1, -1);
    }

    v28 = *(v38 + 8);
    v28(v13, v6);
    if (v17 == 0xD00000000000001FLL && 0x800000022A595FF0 == v19)
    {
    }

    else
    {
      v32 = sub_22A4DE60C();

      if ((v32 & 1) == 0)
      {
        return;
      }
    }

    sub_229541CB0(a3, &off_283CE4848);
    v33 = sub_22A4DD05C();
    v34 = sub_22A4DDCCC();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      *v35 = 0;
      _os_log_impl(&dword_229538000, v33, v34, "XPC stream handler invoked with com.apple.CascadeSets.DonateNow", v35, 2u);
      MEMORY[0x22AAD4E50](v35, -1, -1);
    }

    v28(v10, v6);
    if (qword_281402BB0 != -1)
    {
      swift_once();
    }

    logAndPostNotification(qword_2814050B8, v37, 0);
  }

  else
  {
    sub_229541CB0(a3, &off_283CE4848);
    v29 = sub_22A4DD05C();
    v30 = sub_22A4DDCEC();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&dword_229538000, v29, v30, "com.apple.notifyd.matching XPC stream handler was called with nil event name. Not handling.", v31, 2u);
      MEMORY[0x22AAD4E50](v31, -1, -1);
    }

    (*(v7 + 8))(v15, v6);
  }
}

uint64_t sub_2297A1948(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);

  v3 = swift_unknownObjectRetain();
  v2(v3);

  return swift_unknownObjectRelease();
}

uint64_t sub_2297A19A8(void *a1, uint64_t a2)
{
  v4 = sub_22A4DD07C();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v52 - v10;
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v52 - v13;
  MEMORY[0x28223BE20](v12);
  v16 = &v52 - v15;
  v17 = sub_22A4DD09C();
  if (!xpc_dictionary_get_string(a1, v17))
  {
    v29 = v4;
    sub_229541CB0(a2, &off_283CE4848);
    v30 = sub_22A4DD05C();
    v31 = sub_22A4DDCEC();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = v5;
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&dword_229538000, v30, v31, "Rapport XPC stream: Not handling xpc stream event with nil name", v33, 2u);
      MEMORY[0x22AAD4E50](v33, -1, -1);

      return (*(v32 + 8))(v16, v29);
    }

    else
    {

      return (*(v5 + 8))(v16, v29);
    }
  }

  v53 = a1;
  v18 = sub_22A4DD6FC();
  v20 = v19;
  sub_229541CB0(a2, &off_283CE4848);

  v21 = sub_22A4DD05C();
  v22 = sub_22A4DDCCC();

  v23 = os_log_type_enabled(v21, v22);
  v54 = v5;
  v52 = v8;
  if (v23)
  {
    v24 = v4;
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v55 = v26;
    *v25 = 136315138;
    *(v25 + 4) = sub_2295A3E30(v18, v20, &v55);
    _os_log_impl(&dword_229538000, v21, v22, "Rapport XPC stream event handler invoked with : %s", v25, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v26);
    MEMORY[0x22AAD4E50](v26, -1, -1);
    v27 = v25;
    v4 = v24;
    MEMORY[0x22AAD4E50](v27, -1, -1);

    v28 = *(v54 + 8);
    v28(v14, v24);
  }

  else
  {

    v28 = *(v5 + 8);
    v28(v14, v4);
  }

  if (v18 == 0xD000000000000018 && 0x800000022A595FC0 == v20)
  {

    goto LABEL_11;
  }

  v35 = sub_22A4DE60C();

  if (v35)
  {
LABEL_11:
    v36 = [objc_opt_self() productInfo];
    v37 = [v36 productPlatform];

    if (v37 != 3)
    {
      sub_229541CB0(a2, &off_283CE4848);
      v38 = sub_22A4DD05C();
      v39 = sub_22A4DDCCC();
      if (os_log_type_enabled(v38, v39))
      {
        v40 = swift_slowAlloc();
        *v40 = 0;
        _os_log_impl(&dword_229538000, v38, v39, "Starting Rapport Messaging Discovery Client", v40, 2u);
        MEMORY[0x22AAD4E50](v40, -1, -1);
      }

      v28(v11, v4);
      v41 = [objc_opt_self() sharedInstance];
      v42 = [objc_opt_self() requestIDsToRegister];
      if (!v42)
      {
        sub_22A4DD83C();
        v42 = sub_22A4DD81C();
      }

      [v41 configureDiscoveryClientForRequestIDs:v42 withCompletion:{0, v52}];
    }
  }

  v43 = v53;
  result = xpc_dictionary_get_BOOL(v53, "replyRequired");
  if (result)
  {
    result = xpc_dictionary_create_reply(v43);
    if (result)
    {
      v44 = v52;
      sub_229541CB0(a2, &off_283CE4848);
      v45 = sub_22A4DD05C();
      v46 = sub_22A4DDCCC();
      if (os_log_type_enabled(v45, v46))
      {
        v47 = swift_slowAlloc();
        v48 = v4;
        v49 = swift_slowAlloc();
        v55 = v49;
        *v47 = 136315138;
        *(v47 + 4) = sub_2295A3E30(0xD00000000000001ALL, 0x800000022A595FA0, &v55);
        _os_log_impl(&dword_229538000, v45, v46, "Sending reply to %s", v47, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v49);
        MEMORY[0x22AAD4E50](v49, -1, -1);
        MEMORY[0x22AAD4E50](v47, -1, -1);

        v50 = v44;
        v51 = v48;
      }

      else
      {

        v50 = v44;
        v51 = v4;
      }

      v28(v50, v51);
      xpc_dictionary_send_reply();
      return swift_unknownObjectRelease();
    }
  }

  return result;
}

unint64_t sub_2297A2054()
{
  result = qword_281401980;
  if (!qword_281401980)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_281401980);
  }

  return result;
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_2297A20CC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 17))
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

uint64_t sub_2297A2114(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 17) = 1;
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

    *(result + 17) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2297A2164(uint64_t *a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a2 + 16);
  if (*a1 == *a2 && a1[1] == *(a2 + 8))
  {
    return v2 ^ v3 ^ 1u;
  }

  v5 = sub_22A4DE60C();
  result = 0;
  if (v5)
  {
    return v2 ^ v3 ^ 1u;
  }

  return result;
}

uint64_t sub_2297A21C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = swift_task_alloc();
  *(v5 + 16) = v7;
  *v7 = v5;
  v7[1] = sub_229569B30;

  return sub_2297A2260(a5);
}

uint64_t sub_2297A2260(uint64_t a1)
{
  v2[20] = a1;
  v2[21] = v1;
  v3 = sub_22A4DB7DC();
  v2[22] = v3;
  v2[23] = *(v3 - 8);
  v2[24] = swift_task_alloc();
  v2[25] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2297A232C, 0, 0);
}

uint64_t sub_2297A232C()
{
  v1 = [*(v0 + 160) dataForKey_];
  if (!v1)
  {
    v32 = *(v0 + 160);
    type metadata accessor for HMError(0);
    *(v0 + 152) = 3;
    sub_22956AD8C(MEMORY[0x277D84F90]);
    sub_22958E108();
    sub_22A4DB3CC();
    v33 = *(v0 + 144);
    v34 = sub_22A4DB3DC();

    [v32 respondWithError_];
    goto LABEL_10;
  }

  v2 = v1;
  v3 = sub_22A4DB62C();
  v5 = v4;

  v6 = sub_2297A28AC(v3, v5);
  if (!v6)
  {
    goto LABEL_8;
  }

  v8 = v6;
  v9 = v7;
  if (([*(v0 + 160) isEntitledForSPIAccess] & 1) == 0)
  {
    v10 = *(v0 + 160);
    v11 = [v9 vendorInfo];
    LODWORD(v10) = [v10 isEntitledForVendorAccessForAccessoryWithVendorInfo_];

    if (!v10)
    {

LABEL_8:
      [*(v0 + 160) respondWithSuccess];
      v30 = v3;
      v31 = v5;
      goto LABEL_9;
    }
  }

  v12 = *(v0 + 200);
  v37 = *(v0 + 192);
  v41 = v3;
  v14 = *(v0 + 176);
  v13 = *(v0 + 184);
  v40 = *(v0 + 160);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D080, &qword_22A57CF50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22A5761A0;
  *(inited + 32) = sub_22A4DD5EC();
  *(inited + 40) = v16;
  v17 = [v8 uuid];
  v39 = v8;
  v18 = v9;
  v19 = v17;
  sub_22A4DB79C();

  v20 = sub_22A4DB76C();
  v38 = v5;
  v22 = v21;
  v23 = *(v13 + 8);
  v23(v12, v14);
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 48) = v20;
  *(inited + 56) = v22;
  *(inited + 80) = sub_22A4DD5EC();
  *(inited + 88) = v24;
  v25 = [v18 uuid];
  sub_22A4DB79C();

  v26 = sub_22A4DB76C();
  v28 = v27;
  v23(v37, v14);
  *(inited + 120) = MEMORY[0x277D837D0];
  *(inited + 96) = v26;
  *(inited + 104) = v28;
  sub_22956AC5C(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87DE50, &qword_22A577CD0);
  swift_arrayDestroy();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C3B0, &unk_22A576E90);
  v29 = sub_22A4DD47C();

  [v40 respondWithPayload_];

  v30 = v41;
  v31 = v38;
LABEL_9:
  sub_2295798D4(v30, v31);
LABEL_10:

  v35 = *(v0 + 8);

  return v35();
}

uint64_t sub_2297A27EC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_229569B30;

  return sub_2297A21C4(a1, v4, v5, v7, v6);
}

char *sub_2297A28AC(uint64_t a1, unint64_t a2)
{
  __s1[2] = *MEMORY[0x277D85DE8];
  v4 = [v2 homes];
  if (!v4)
  {
    goto LABEL_200;
  }

  v5 = v4;
  sub_229562F68(0, &qword_2814017B0, off_278666198);
  v6 = sub_22A4DD83C();

  v7 = v6;
  if (v6 >> 62)
  {
    goto LABEL_178;
  }

  v8 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v8)
  {
LABEL_179:

    return 0;
  }

  while (1)
  {
    v9 = 0;
    v92 = v7 + 32;
    v93 = v7 & 0xFFFFFFFFFFFFFF8;
    v10 = !a1 && a2 == 0xC000000000000000;
    v11 = !v10;
    v107 = v11;
    v12 = a2 >> 62;
    v13 = __OFSUB__(HIDWORD(a1), a1);
    v102 = v13;
    v101 = v7 & 0xC000000000000001;
    __n = BYTE6(a2);
    v94 = (a1 >> 32) - a1;
    v95 = a1 >> 32;
    v106 = a2;
    v104 = a2 >> 62;
    v100 = v8;
    while (1)
    {
      if (v101)
      {
        v14 = MEMORY[0x22AAD13F0](v9);
        goto LABEL_19;
      }

      if (v9 >= *(v93 + 16))
      {
        __break(1u);
LABEL_181:
        __break(1u);
LABEL_182:
        __break(1u);
LABEL_183:
        __break(1u);
LABEL_184:
        __break(1u);
LABEL_185:
        __break(1u);
LABEL_186:
        __break(1u);
LABEL_187:
        __break(1u);
LABEL_188:
        __break(1u);
LABEL_189:
        __break(1u);
LABEL_190:
        __break(1u);
LABEL_191:
        __break(1u);
LABEL_192:
        __break(1u);
LABEL_193:
        __break(1u);
LABEL_194:
        __break(1u);
LABEL_195:
        __break(1u);
LABEL_196:
        __break(1u);
LABEL_197:
        __break(1u);
LABEL_198:
        __break(1u);
LABEL_199:
        __break(1u);
LABEL_200:
        __break(1u);
      }

      v14 = *(v92 + 8 * v9);
LABEL_19:
      v15 = v14;
      v16 = __OFADD__(v9, 1);
      v17 = v9 + 1;
      if (v16)
      {
        goto LABEL_175;
      }

      v18 = [v14 accessories];
      sub_229562F68(0, &qword_281401C30, off_278665FE8);
      v19 = sub_22A4DD83C();

      v105 = v15;
      v103 = v17;
      if (v19 >> 62)
      {
        break;
      }

      v20 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v20)
      {
        goto LABEL_22;
      }

LABEL_14:

      v9 = v103;
      if (v103 == v100)
      {
        goto LABEL_179;
      }
    }

    v20 = sub_22A4DE0EC();
    if (!v20)
    {
      goto LABEL_14;
    }

LABEL_22:
    v21 = 0;
    v22 = v19 & 0xC000000000000001;
    v110 = v20;
LABEL_25:
    if (v22)
    {
      v23 = MEMORY[0x22AAD13F0](v21, v19);
    }

    else
    {
      if (v21 >= *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_172;
      }

      v23 = *(v19 + 8 * v21 + 32);
    }

    v24 = v23;
    v25 = v21 + 1;
    if (!__OFADD__(v21, 1))
    {
      break;
    }

    __break(1u);
LABEL_172:
    __break(1u);
LABEL_173:
    __break(1u);
LABEL_174:
    __break(1u);
LABEL_175:
    __break(1u);
LABEL_176:
    __break(1u);
LABEL_177:
    __break(1u);
LABEL_178:
    v86 = v7;
    v87 = sub_22A4DE0EC();
    v7 = v86;
    v8 = v87;
    if (!v87)
    {
      goto LABEL_179;
    }
  }

  objc_opt_self();
  v26 = swift_dynamicCastObjCClass();
  if (!v26 || (v27 = v26, ![v26 isPrimary]))
  {

    goto LABEL_24;
  }

  v28 = [v27 publicKey];
  v29 = sub_22A4DB62C();
  v31 = v30;

  v32 = v31 >> 62;
  if (v31 >> 62 != 3)
  {
    if (v32 > 1)
    {
      v22 = v19 & 0xC000000000000001;
      if (v32 != 2)
      {
        v36 = 0;
        if (v12 > 1)
        {
          goto LABEL_60;
        }

        goto LABEL_56;
      }

      v38 = *(v29 + 16);
      v37 = *(v29 + 24);
      v16 = __OFSUB__(v37, v38);
      v36 = v37 - v38;
      if (v16)
      {
        goto LABEL_176;
      }
    }

    else
    {
      v22 = v19 & 0xC000000000000001;
      if (!v32)
      {
        v36 = BYTE6(v31);
        if (v12 <= 1)
        {
          goto LABEL_56;
        }

LABEL_60:
        if (v12 == 2)
        {
          v41 = *(a1 + 16);
          v40 = *(a1 + 24);
          v16 = __OFSUB__(v40, v41);
          v39 = v40 - v41;
          if (v16)
          {
            goto LABEL_174;
          }

          goto LABEL_62;
        }

        if (!v36)
        {
          goto LABEL_166;
        }

        goto LABEL_74;
      }

      LODWORD(v36) = HIDWORD(v29) - v29;
      if (__OFSUB__(HIDWORD(v29), v29))
      {
        goto LABEL_177;
      }

      v36 = v36;
    }

    if (v12 > 1)
    {
      goto LABEL_60;
    }

    goto LABEL_56;
  }

  if (v29)
  {
    v33 = 0;
  }

  else
  {
    v33 = v31 == 0xC000000000000000;
  }

  v35 = !v33 || v12 < 3;
  if (((v35 | v107) & 1) == 0)
  {

    v84 = 0;
    v85 = 0xC000000000000000;
    goto LABEL_168;
  }

  v36 = 0;
  v22 = v19 & 0xC000000000000001;
  if (v12 > 1)
  {
    goto LABEL_60;
  }

LABEL_56:
  v39 = __n;
  if (v12)
  {
    v39 = HIDWORD(a1) - a1;
    if (v102)
    {
      goto LABEL_173;
    }
  }

LABEL_62:
  if (v36 != v39)
  {
LABEL_74:

    sub_2295798D4(v29, v31);
    v20 = v110;
    goto LABEL_24;
  }

  if (v36 < 1)
  {
    goto LABEL_166;
  }

  if (v32 <= 1)
  {
    if (!v32)
    {
      __s1[0] = v29;
      LOWORD(__s1[1]) = v31;
      BYTE2(__s1[1]) = BYTE2(v31);
      BYTE3(__s1[1]) = BYTE3(v31);
      BYTE4(__s1[1]) = BYTE4(v31);
      BYTE5(__s1[1]) = BYTE5(v31);
      if (v12)
      {
        if (v12 == 1)
        {
          if (v95 < a1)
          {
            goto LABEL_184;
          }

          v42 = sub_22A4DB24C();
          if (!v42)
          {
            goto LABEL_208;
          }

          v43 = v42;
          v44 = sub_22A4DB27C();
          if (__OFSUB__(a1, v44))
          {
            goto LABEL_190;
          }

          v45 = (a1 - v44 + v43);
          v46 = sub_22A4DB26C();
          if (!v45)
          {
            goto LABEL_206;
          }

LABEL_129:
          if (v46 >= v94)
          {
            v69 = (a1 >> 32) - a1;
          }

          else
          {
            v69 = v46;
          }

LABEL_132:
          v73 = memcmp(__s1, v45, v69);
          sub_2295798D4(v29, v31);
          a2 = v106;
          v12 = v104;
          if (!v73)
          {
            goto LABEL_169;
          }

LABEL_163:

          v20 = v110;
          v22 = v19 & 0xC000000000000001;
LABEL_24:
          ++v21;
          if (v25 == v20)
          {
            goto LABEL_14;
          }

          goto LABEL_25;
        }

        v67 = *(a1 + 16);
        v99 = *(a1 + 24);
        v45 = sub_22A4DB24C();
        if (v45)
        {
          v68 = sub_22A4DB27C();
          if (__OFSUB__(v67, v68))
          {
            goto LABEL_195;
          }

          v45 += v67 - v68;
        }

        v16 = __OFSUB__(v99, v67);
        v56 = &v99[-v67];
        if (v16)
        {
          goto LABEL_186;
        }

        v57 = sub_22A4DB26C();
        if (!v45)
        {
          goto LABEL_207;
        }

LABEL_122:
        if (v57 >= v56)
        {
          v69 = v56;
        }

        else
        {
          v69 = v57;
        }

        goto LABEL_132;
      }

LABEL_91:
      v111 = a1;
      v112 = a2;
      v113 = BYTE2(a2);
      v114 = BYTE3(a2);
      v115 = BYTE4(a2);
      v116 = BYTE5(a2);
      v58 = __s1;
      v59 = &v111;
LABEL_144:
      v78 = memcmp(v58, v59, __n);
      sub_2295798D4(v29, v31);
      if (!v78)
      {
        goto LABEL_169;
      }

      goto LABEL_163;
    }

    if (v29 > v29 >> 32)
    {
      goto LABEL_181;
    }

    v51 = sub_22A4DB24C();
    if (v51)
    {
      v52 = v51;
      v53 = sub_22A4DB27C();
      if (__OFSUB__(v29, v53))
      {
        goto LABEL_183;
      }

      v97 = (v29 - v53 + v52);
    }

    else
    {
      v97 = 0;
    }

    sub_22A4DB26C();
    v12 = v104;
    a2 = v106;
    if (v104 != 2)
    {
      if (v104 == 1)
      {
        if (v95 < a1)
        {
          goto LABEL_192;
        }

        v60 = sub_22A4DB24C();
        if (v60)
        {
          v65 = sub_22A4DB27C();
          if (__OFSUB__(a1, v65))
          {
            goto LABEL_199;
          }

          v60 += a1 - v65;
        }

        v66 = sub_22A4DB26C();
        v63 = (a1 >> 32) - a1;
        if (v66 < v94)
        {
          v63 = v66;
        }

        result = v97;
        if (!v97)
        {
          goto LABEL_210;
        }

        if (!v60)
        {
          goto LABEL_209;
        }

LABEL_115:
        if (result == v60)
        {
          goto LABEL_166;
        }

LABEL_162:
        v83 = memcmp(result, v60, v63);
        sub_2295798D4(v29, v31);
        v12 = v104;
        if (v83)
        {
          goto LABEL_163;
        }

LABEL_169:

        return v105;
      }

      v58 = v97;
      __s1[0] = a1;
      LOWORD(__s1[1]) = v106;
      *(&__s1[1] + 2) = *(&v106 + 2);
      if (!v97)
      {
        goto LABEL_203;
      }

LABEL_143:
      v59 = __s1;
      goto LABEL_144;
    }

    v89 = *(a1 + 24);
    v91 = *(a1 + 16);
    v60 = sub_22A4DB24C();
    if (v60)
    {
      v76 = sub_22A4DB27C();
      v77 = v91;
      if (__OFSUB__(v91, v76))
      {
        goto LABEL_198;
      }

      v60 += v91 - v76;
    }

    else
    {
      v77 = v91;
    }

    v81 = v89 - v77;
    if (__OFSUB__(v89, v77))
    {
      goto LABEL_193;
    }

    v82 = sub_22A4DB26C();
    if (v82 >= v81)
    {
      v63 = v81;
    }

    else
    {
      v63 = v82;
    }

    result = v97;
    if (!v97)
    {
      goto LABEL_212;
    }

    if (!v60)
    {
      goto LABEL_211;
    }

    goto LABEL_161;
  }

  if (v32 == 2)
  {
    v47 = *(v29 + 16);
    v48 = sub_22A4DB24C();
    if (v48)
    {
      v49 = v48;
      v50 = sub_22A4DB27C();
      if (__OFSUB__(v47, v50))
      {
        goto LABEL_182;
      }

      v96 = (v47 - v50 + v49);
    }

    else
    {
      v96 = 0;
    }

    a2 = v106;
    sub_22A4DB26C();
    v12 = v104;
    if (v104 != 2)
    {
      if (v104 == 1)
      {
        if (v95 < a1)
        {
          goto LABEL_188;
        }

        v60 = sub_22A4DB24C();
        if (v60)
        {
          v61 = sub_22A4DB27C();
          if (__OFSUB__(a1, v61))
          {
            goto LABEL_197;
          }

          v60 += a1 - v61;
        }

        v62 = sub_22A4DB26C();
        v63 = (a1 >> 32) - a1;
        if (v62 < v94)
        {
          v63 = v62;
        }

        result = v96;
        if (!v96)
        {
          goto LABEL_214;
        }

        if (!v60)
        {
          goto LABEL_213;
        }

        goto LABEL_115;
      }

      v58 = v96;
      __s1[0] = a1;
      LOWORD(__s1[1]) = v106;
      *(&__s1[1] + 2) = *(&v106 + 2);
      if (!v96)
      {
        goto LABEL_204;
      }

      goto LABEL_143;
    }

    v88 = *(a1 + 24);
    v90 = *(a1 + 16);
    v60 = sub_22A4DB24C();
    if (v60)
    {
      v74 = sub_22A4DB27C();
      v75 = v90;
      if (__OFSUB__(v90, v74))
      {
        goto LABEL_196;
      }

      v60 += v90 - v74;
    }

    else
    {
      v75 = v90;
    }

    v79 = v88 - v75;
    if (__OFSUB__(v88, v75))
    {
      goto LABEL_191;
    }

    v80 = sub_22A4DB26C();
    if (v80 >= v79)
    {
      v63 = v79;
    }

    else
    {
      v63 = v80;
    }

    result = v96;
    if (!v96)
    {
      goto LABEL_216;
    }

    if (!v60)
    {
      goto LABEL_215;
    }

LABEL_161:
    a2 = v106;
    if (result != v60)
    {
      goto LABEL_162;
    }

LABEL_166:

    v84 = v29;
    v85 = v31;
LABEL_168:
    sub_2295798D4(v84, v85);
    return v105;
  }

  memset(__s1, 0, 14);
  if (!v12)
  {
    goto LABEL_91;
  }

  if (v12 == 2)
  {
    v54 = *(a1 + 16);
    v98 = *(a1 + 24);
    v45 = sub_22A4DB24C();
    if (v45)
    {
      v55 = sub_22A4DB27C();
      if (__OFSUB__(v54, v55))
      {
        goto LABEL_194;
      }

      v45 += v54 - v55;
    }

    v16 = __OFSUB__(v98, v54);
    v56 = &v98[-v54];
    if (v16)
    {
      goto LABEL_187;
    }

    v57 = sub_22A4DB26C();
    if (!v45)
    {
      goto LABEL_205;
    }

    goto LABEL_122;
  }

  if (v95 < a1)
  {
    goto LABEL_185;
  }

  v70 = sub_22A4DB24C();
  if (v70)
  {
    v71 = v70;
    v72 = sub_22A4DB27C();
    if (__OFSUB__(a1, v72))
    {
      goto LABEL_189;
    }

    v45 = (a1 - v72 + v71);
    v46 = sub_22A4DB26C();
    if (!v45)
    {
      goto LABEL_202;
    }

    goto LABEL_129;
  }

  sub_22A4DB26C();
LABEL_202:
  __break(1u);
LABEL_203:
  __break(1u);
LABEL_204:
  __break(1u);
LABEL_205:
  __break(1u);
LABEL_206:
  __break(1u);
LABEL_207:
  __break(1u);
LABEL_208:
  result = sub_22A4DB26C();
  __break(1u);
LABEL_209:
  __break(1u);
LABEL_210:
  __break(1u);
LABEL_211:
  __break(1u);
LABEL_212:
  __break(1u);
LABEL_213:
  __break(1u);
LABEL_214:
  __break(1u);
LABEL_215:
  __break(1u);
LABEL_216:
  __break(1u);
  return result;
}