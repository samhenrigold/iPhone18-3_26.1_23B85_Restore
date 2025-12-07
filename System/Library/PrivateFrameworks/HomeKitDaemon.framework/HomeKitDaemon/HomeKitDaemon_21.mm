uint64_t sub_229757954@<X0>(id *a1@<X0>, void *a3@<X8>)
{
  v3 = [*a1 actions];
  sub_229562F68(0, &qword_27D880928, off_278666018);
  v4 = sub_22A4DD83C();

  v13 = MEMORY[0x277D84F90];
  if (!(v4 >> 62))
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5)
    {
      goto LABEL_3;
    }

LABEL_20:
    v7 = MEMORY[0x277D84F90];
    goto LABEL_21;
  }

LABEL_19:
  v5 = sub_22A4DE0EC();
  if (!v5)
  {
    goto LABEL_20;
  }

LABEL_3:
  v6 = 0;
  v7 = MEMORY[0x277D84F90];
  do
  {
    v8 = v6;
    while (1)
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x22AAD13F0](v8, v4);
      }

      else
      {
        if (v8 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_18;
        }

        v9 = *(v4 + 8 * v8 + 32);
      }

      v10 = v9;
      v6 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
LABEL_18:
        __break(1u);
        goto LABEL_19;
      }

      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        break;
      }

      ++v8;
      if (v6 == v5)
      {
        goto LABEL_21;
      }
    }

    MEMORY[0x22AAD09E0]();
    if (*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_22A4DD85C();
    }

    sub_22A4DD87C();
    v7 = v13;
  }

  while (v6 != v5);
LABEL_21:

  *a3 = v7;
  return result;
}

uint64_t sub_229757B18@<X0>(void **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t *a4@<X8>)
{
  v7 = *a1;
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v8 = [v7 actions];
  sub_229562F68(0, &qword_27D880928, off_278666018);
  v9 = sub_22A4DD83C();

  MEMORY[0x28223BE20](v10);
  v13[2] = a2;
  v13[3] = a3;
  v11 = sub_22974DB0C(sub_2297635E4, v13, v9);

  *a4 = v11;
  return result;
}

void sub_229757C30(void **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v7 = *a1;
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  objc_opt_self();
  v8 = swift_dynamicCastObjCClass();
  if (v8)
  {
    v9 = v8;
    v10 = v7;
    v11 = [v9 commands];
    sub_229562F68(0, &qword_27D880930, off_278666260);
    v12 = sub_22A4DD83C();

    MEMORY[0x28223BE20](v13);
    v15[2] = a2;
    v15[3] = a3;
    v14 = sub_229716CE4(sub_229763600, v15, v12);
  }

  else
  {
    v14 = MEMORY[0x277D84F90];
  }

  *a4 = v14;
}

id sub_229757D90@<X0>(void **a1@<X0>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v6 = *a1;
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  result = sub_229757E14(v6, a3);
  *a4 = result;
  return result;
}

id sub_229757E14(void *a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v5 = sub_22A4DD07C();
  v6 = *(v5 - 1);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = v59 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = v59 - v11;
  MEMORY[0x28223BE20](v10);
  v14 = v59 - v13;
  v15 = [a1 expectedValues];
  if (v15)
  {
    v16 = v15;
    v62 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87C410, &qword_22A576EE0);
    v17 = sub_22A4DD83C();

    v18 = [a1 accessory];
    if (v18)
    {
      v19 = v18;
      v67 = &unk_283F010C8;
      v20 = swift_dynamicCastObjCProtocolConditional();
      if (v20)
      {
        v63 = v5;
        v21 = [v20 matterNodeID];
        sub_229562F68(0, &qword_281401770, 0x277CCABB0);
        v22 = sub_22A4DDEBC();
        v61 = v21;
        v23 = sub_22A4DDEDC();

        if (v23)
        {

          sub_229541CB0(ObjectType, &off_283CE36C8);
          v24 = a1;
          v25 = sub_22A4DD05C();
          v26 = sub_22A4DDCEC();

          if (os_log_type_enabled(v25, v26))
          {
            v27 = swift_slowAlloc();
            v28 = swift_slowAlloc();
            *v27 = 138412546;
            v29 = [v24 &selRef_activate];
            *(v27 + 4) = v29;
            *(v27 + 12) = 2112;
            *(v27 + 14) = v24;
            *v28 = v29;
            v28[1] = v24;
            v30 = v24;
            _os_log_impl(&dword_229538000, v25, v26, "Failed to get matter device on accessory %@ from command %@", v27, 0x16u);
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D7D0, &unk_22A578D90);
            swift_arrayDestroy();
            MEMORY[0x22AAD4E50](v28, -1, -1);
            MEMORY[0x22AAD4E50](v27, -1, -1);
            v31 = v19;
          }

          else
          {
            v31 = v25;
            v25 = v19;
          }

          v57 = v61;

          (*(v6 + 8))(v14, v63);
          return 0;
        }

        v60 = v19;
        v63 = [a1 matterPath];
        v47 = MEMORY[0x277D84F90];
        v66 = MEMORY[0x277D84F90];
        v48 = *(v17 + 16);
        if (v48)
        {
          v49 = 0;
          while (v49 < *(v17 + 16))
          {
            v65 = *(v17 + 32 + 8 * v49);

            sub_229758538(&v65, v63, a1, ObjectType, &v64);

            if (v64)
            {
              MEMORY[0x22AAD09E0](v50);
              if (*((v66 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v66 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
              {
                v59[1] = *((v66 & 0xFFFFFFFFFFFFFF8) + 0x10);
                sub_22A4DD85C();
              }

              sub_22A4DD87C();
              v47 = v66;
            }

            if (v48 == ++v49)
            {
              goto LABEL_26;
            }
          }

          __break(1u);
        }

        else
        {
LABEL_26:

          if (!(v47 >> 62))
          {
            v51 = v60;
            v52 = v61;
            if (!*((v47 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
LABEL_33:

              return 0;
            }

LABEL_28:
            sub_22A4DB76C();
            v53 = objc_allocWithZone(MEMORY[0x277CD1B58]);
            v54 = sub_22A4DD5AC();

            sub_229562F68(0, &qword_27D87CF48, 0x277CD51C0);
            v55 = sub_22A4DD81C();

            v56 = [v53 initWithMTRDeviceNodeID:v52 controllerID:v54 attributePaths:v55];

            return v56;
          }
        }

        v58 = sub_22A4DE0EC();
        v51 = v60;
        v52 = v61;
        if (!v58)
        {
          goto LABEL_33;
        }

        goto LABEL_28;
      }
    }

    else
    {
    }

    sub_229541CB0(ObjectType, &off_283CE36C8);
    v40 = a1;
    v41 = sub_22A4DD05C();
    v42 = sub_22A4DDCEC();

    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      *v43 = 138412290;
      *(v43 + 4) = v40;
      *v44 = v40;
      v45 = v40;
      _os_log_impl(&dword_229538000, v41, v42, "Command has no related accessory: %@", v43, 0xCu);
      sub_22953EAE4(v44, &qword_27D87D7D0, &unk_22A578D90);
      MEMORY[0x22AAD4E50](v44, -1, -1);
      MEMORY[0x22AAD4E50](v43, -1, -1);
    }

    v38 = *(v6 + 8);
    v39 = v12;
  }

  else
  {
    sub_229541CB0(ObjectType, &off_283CE36C8);
    v32 = a1;
    v33 = sub_22A4DD05C();
    v34 = sub_22A4DDCDC();

    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      *v35 = 138412290;
      *(v35 + 4) = v32;
      *v36 = v32;
      v37 = v32;
      _os_log_impl(&dword_229538000, v33, v34, "Command has no expectedValues: %@", v35, 0xCu);
      sub_22953EAE4(v36, &qword_27D87D7D0, &unk_22A578D90);
      MEMORY[0x22AAD4E50](v36, -1, -1);
      MEMORY[0x22AAD4E50](v35, -1, -1);
    }

    v38 = *(v6 + 8);
    v39 = v9;
  }

  v38(v39, v5);
  return 0;
}

id sub_229758538@<X0>(uint64_t *a1@<X0>, void *a3@<X2>, void *a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v32 = a6;
  v11 = sub_22A4DD07C();
  v31 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *a1;
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  result = sub_22975A678(v14, a3);
  v16 = result;
  if (!result)
  {
    v30 = v6;
    sub_229541CB0(a5, &off_283CE36C8);

    v17 = a4;
    v18 = sub_22A4DD05C();
    v19 = sub_22A4DDCEC();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v33 = v29;
      *v20 = 136315394;
      v21 = sub_22A4DD4AC();
      v23 = sub_2295A3E30(v21, v22, &v33);

      *(v20 + 4) = v23;
      *(v20 + 12) = 2112;
      *(v20 + 14) = v17;
      v24 = v28;
      *v28 = v17;
      v25 = v17;
      _os_log_impl(&dword_229538000, v18, v19, "Nil attribute path for %s from command %@", v20, 0x16u);
      sub_22953EAE4(v24, &qword_27D87D7D0, &unk_22A578D90);
      MEMORY[0x22AAD4E50](v24, -1, -1);
      v26 = v29;
      __swift_destroy_boxed_opaque_existential_0(v29);
      MEMORY[0x22AAD4E50](v26, -1, -1);
      MEMORY[0x22AAD4E50](v20, -1, -1);
    }

    result = (*(v31 + 8))(v13, v11);
  }

  *v32 = v16;
  return result;
}

uint64_t sub_2297587F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = sub_22A4DD07C();
  v5[4] = v6;
  v5[5] = *(v6 - 8);
  v5[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2297588B4, 0, 0);
}

uint64_t sub_2297588B4()
{
  sub_229541CB0(v0[3], &off_283CE36C8);
  v1 = sub_22A4DD05C();
  v2 = sub_22A4DDCDC();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_229538000, v1, v2, "Retry timer fired", v3, 2u);
    MEMORY[0x22AAD4E50](v3, -1, -1);
  }

  v5 = v0[5];
  v4 = v0[6];
  v6 = v0[4];
  v7 = v0[2];

  (*(v5 + 8))(v4, v6);

  return MEMORY[0x2822009F8](sub_2297589D4, v7, 0);
}

uint64_t sub_2297589D4()
{
  sub_22975381C();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_229758B54(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = sub_22A4DD07C();
  v6 = *(v5 - 1);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v64 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v64 - v11;
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v64 - v14;
  MEMORY[0x28223BE20](v13);
  v17 = &v64 - v16;
  v18 = [a1 expectedValues];
  if (!v18)
  {
    sub_229541CB0(ObjectType, &off_283CE36C8);
    v35 = a1;
    v36 = sub_22A4DD05C();
    v37 = sub_22A4DDCDC();

    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      *v38 = 138412290;
      *(v38 + 4) = v35;
      *v39 = v35;
      v40 = v35;
      _os_log_impl(&dword_229538000, v36, v37, "Command has no expectedValues: %@", v38, 0xCu);
      sub_22953EAE4(v39, &qword_27D87D7D0, &unk_22A578D90);
      MEMORY[0x22AAD4E50](v39, -1, -1);
      MEMORY[0x22AAD4E50](v38, -1, -1);
    }

    (v6[1].isa)(v9, v5);
    return 0;
  }

  v19 = v18;
  v67 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87C410, &qword_22A576EE0);
  v20 = sub_22A4DD83C();

  v21 = [a1 accessory];
  if (!v21)
  {

LABEL_12:
    sub_229541CB0(ObjectType, &off_283CE36C8);
    v41 = a1;
    v42 = sub_22A4DD05C();
    v43 = sub_22A4DDCEC();

    v44 = os_log_type_enabled(v42, v43);
    v45 = v67;
    if (v44)
    {
      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      *v46 = 138412290;
      *(v46 + 4) = v41;
      *v47 = v41;
      v48 = v41;
      _os_log_impl(&dword_229538000, v42, v43, "Command has no related accessory: %@", v46, 0xCu);
      sub_22953EAE4(v47, &qword_27D87D7D0, &unk_22A578D90);
      MEMORY[0x22AAD4E50](v47, -1, -1);
      MEMORY[0x22AAD4E50](v46, -1, -1);
    }

    (v6[1].isa)(v12, v45);
    return 0;
  }

  v22 = v21;
  v69 = &unk_283F010C8;
  v23 = swift_dynamicCastObjCProtocolConditional();
  if (!v23)
  {

    goto LABEL_12;
  }

  v66 = v6;
  v24 = [v23 matterNodeID];
  sub_229562F68(0, &qword_281401770, 0x277CCABB0);
  v25 = sub_22A4DDEBC();
  v26 = sub_22A4DDEDC();

  if (v26)
  {

    sub_229541CB0(ObjectType, &off_283CE36C8);
    v27 = a1;
    v28 = sub_22A4DD05C();
    v29 = sub_22A4DDCEC();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      *v30 = 138412546;
      v32 = [v27 accessory];
      *(v30 + 4) = v32;
      *(v30 + 12) = 2112;
      *(v30 + 14) = v27;
      *v31 = v32;
      v31[1] = v27;
      v33 = v27;
      _os_log_impl(&dword_229538000, v28, v29, "Failed to get matter device on accessory %@ from command %@", v30, 0x16u);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D7D0, &unk_22A578D90);
      swift_arrayDestroy();
      MEMORY[0x22AAD4E50](v31, -1, -1);
      MEMORY[0x22AAD4E50](v30, -1, -1);
      v34 = v24;
      v24 = v22;
    }

    else
    {
      v34 = v28;
      v28 = v22;
    }

    v55 = v67;

    (v66[1].isa)(v15, v55);
    return 0;
  }

  swift_beginAccess();
  v50 = *(v2 + 144);

  v51 = sub_22974C69C(v24, v50);

  if (!v51)
  {

    sub_229541CB0(ObjectType, &off_283CE36C8);
    v56 = v24;
    v57 = sub_22A4DD05C();
    v58 = sub_22A4DDCEC();

    if (os_log_type_enabled(v57, v58))
    {
      v59 = swift_slowAlloc();
      v60 = swift_slowAlloc();
      *v59 = 138412290;
      *(v59 + 4) = v56;
      *v60 = v56;
      v61 = v56;
      _os_log_impl(&dword_229538000, v57, v58, "No monitored device for nodeID %@", v59, 0xCu);
      sub_22953EAE4(v60, &qword_27D87D7D0, &unk_22A578D90);
      MEMORY[0x22AAD4E50](v60, -1, -1);
      MEMORY[0x22AAD4E50](v59, -1, -1);
      v56 = v22;
    }

    else
    {
      v61 = v57;
      v57 = v22;
    }

    v62 = v66;
    v63 = v67;

    (v62[1].isa)(v17, v63);
    return 0;
  }

  v65 = v24;
  v66 = v22;
  result = [a1 matterPath];
  v67 = result;
  v52 = *(v20 + 16);
  if (v52)
  {
    v53 = 0;
    while (v53 < *(v20 + 16))
    {
      v68 = *(v20 + 8 * v53 + 32);

      v54 = sub_229759304(&v68, v2, v67, a1, v51, ObjectType);

      if ((v54 & 1) == 0)
      {

        swift_unknownObjectRelease();

        return 0;
      }

      if (v52 == ++v53)
      {
        goto LABEL_23;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_23:

    swift_unknownObjectRelease();

    return 1;
  }

  return result;
}

uint64_t sub_229759304(uint64_t *a1, uint64_t a2, void *a3, void *a4, void *a5, uint64_t a6)
{
  v170 = a6;
  v167 = a5;
  v176 = a3;
  v9 = sub_22A4DD07C();
  v10 = *(v9 - 8);
  v171 = v9;
  v172 = v10;
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v158 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v158 - v15;
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v158 - v18;
  v20 = MEMORY[0x28223BE20](v17);
  v22 = &v158 - v21;
  v23 = MEMORY[0x28223BE20](v20);
  v165 = &v158 - v24;
  v25 = MEMORY[0x28223BE20](v23);
  v166 = &v158 - v26;
  v27 = MEMORY[0x28223BE20](v25);
  v164 = &v158 - v28;
  MEMORY[0x28223BE20](v27);
  v163 = &v158 - v29;
  v30 = *a1;
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v31 = sub_22975A678(v30, v176);
  if (!v31)
  {
    sub_229541CB0(v170, &off_283CE36C8);

    v72 = a4;
    v73 = sub_22A4DD05C();
    v74 = sub_22A4DDCEC();

    if (os_log_type_enabled(v73, v74))
    {
      v75 = swift_slowAlloc();
      v76 = swift_slowAlloc();
      v169 = v6;
      v77 = v76;
      v78 = swift_slowAlloc();
      v175[0] = v78;
      *v75 = 136315394;
      v79 = sub_22A4DD4AC();
      v81 = sub_2295A3E30(v79, v80, v175);

      *(v75 + 4) = v81;
      *(v75 + 12) = 2112;
      *(v75 + 14) = v72;
      *v77 = v72;
      v82 = v72;
      _os_log_impl(&dword_229538000, v73, v74, "Nil attribute path for %s from command %@", v75, 0x16u);
      sub_22953EAE4(v77, &qword_27D87D7D0, &unk_22A578D90);
      MEMORY[0x22AAD4E50](v77, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v78);
      MEMORY[0x22AAD4E50](v78, -1, -1);
      MEMORY[0x22AAD4E50](v75, -1, -1);
    }

    (*(v172 + 8))(v13, v171);
    goto LABEL_25;
  }

  v168 = v31;
  v169 = v6;
  v32 = sub_22A4DD5EC();
  if (!*(v30 + 16))
  {

    goto LABEL_27;
  }

  v34 = sub_229543DBC(v32, v33);
  v36 = v35;

  if ((v36 & 1) == 0 || (sub_2295404B0(*(v30 + 56) + 32 * v34, v175), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87C410, &qword_22A576EE0), (swift_dynamicCast() & 1) == 0))
  {
LABEL_27:
    sub_229541CB0(v170, &off_283CE36C8);

    v83 = a4;
    v84 = sub_22A4DD05C();
    v85 = sub_22A4DDCEC();

    if (os_log_type_enabled(v84, v85))
    {
      v86 = swift_slowAlloc();
      v87 = swift_slowAlloc();
      v88 = swift_slowAlloc();
      v175[0] = v88;
      *v86 = 136315394;
      v89 = sub_22A4DD4AC();
      v91 = sub_2295A3E30(v89, v90, v175);

      *(v86 + 4) = v91;
      *(v86 + 12) = 2112;
      *(v86 + 14) = v83;
      *v87 = v83;
      v92 = v83;
      _os_log_impl(&dword_229538000, v84, v85, "Failed to get data for %s from command %@", v86, 0x16u);
      sub_22953EAE4(v87, &qword_27D87D7D0, &unk_22A578D90);
      MEMORY[0x22AAD4E50](v87, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v88);
      MEMORY[0x22AAD4E50](v88, -1, -1);
      MEMORY[0x22AAD4E50](v86, -1, -1);
    }

    else
    {
    }

    (*(v172 + 8))(v16, v171);
    goto LABEL_31;
  }

  v37 = v174[0];
  v38 = *MEMORY[0x277CD5188];
  v39 = sub_22A4DD5EC();
  if (!*(v37 + 16))
  {

    goto LABEL_34;
  }

  v162 = v38;
  v41 = sub_229543DBC(v39, v40);
  v43 = v42;

  if ((v43 & 1) == 0 || (sub_2295404B0(*(v37 + 56) + 32 * v41, v175), (swift_dynamicCast() & 1) == 0))
  {
LABEL_34:

    sub_229541CB0(v170, &off_283CE36C8);

    v94 = a4;
    v95 = sub_22A4DD05C();
    v96 = sub_22A4DDCEC();

    if (os_log_type_enabled(v95, v96))
    {
      v97 = swift_slowAlloc();
      v98 = swift_slowAlloc();
      v99 = swift_slowAlloc();
      v175[0] = v99;
      *v97 = 136315394;
      v100 = sub_22A4DD4AC();
      v102 = sub_2295A3E30(v100, v101, v175);

      *(v97 + 4) = v102;
      *(v97 + 12) = 2112;
      *(v97 + 14) = v94;
      *v98 = v94;
      v103 = v94;
      _os_log_impl(&dword_229538000, v95, v96, "Failed to get data type for %s from command %@", v97, 0x16u);
      sub_22953EAE4(v98, &qword_27D87D7D0, &unk_22A578D90);
      MEMORY[0x22AAD4E50](v98, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v99);
      MEMORY[0x22AAD4E50](v99, -1, -1);
      MEMORY[0x22AAD4E50](v97, -1, -1);
    }

    else
    {
    }

    (*(v172 + 8))(v19, v171);
    goto LABEL_25;
  }

  v45 = v174[0];
  v44 = v174[1];
  v160 = *MEMORY[0x277CD51A0];
  v46 = sub_22A4DD5EC();
  if (!*(v37 + 16))
  {

LABEL_41:

    sub_229541CB0(v170, &off_283CE36C8);

    v104 = a4;
    v105 = sub_22A4DD05C();
    v106 = sub_22A4DDCEC();

    if (os_log_type_enabled(v105, v106))
    {
      v107 = swift_slowAlloc();
      v108 = swift_slowAlloc();
      v109 = swift_slowAlloc();
      v175[0] = v109;
      *v107 = 136315394;
      v110 = sub_22A4DD4AC();
      v112 = sub_2295A3E30(v110, v111, v175);

      *(v107 + 4) = v112;
      *(v107 + 12) = 2112;
      *(v107 + 14) = v104;
      *v108 = v104;
      v113 = v104;
      _os_log_impl(&dword_229538000, v105, v106, "Failed to get data value for %s from command %@", v107, 0x16u);
      sub_22953EAE4(v108, &qword_27D87D7D0, &unk_22A578D90);
      MEMORY[0x22AAD4E50](v108, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v109);
      MEMORY[0x22AAD4E50](v109, -1, -1);
      MEMORY[0x22AAD4E50](v107, -1, -1);
    }

    else
    {
    }

    (*(v172 + 8))(v22, v171);
    goto LABEL_25;
  }

  v159 = v45;
  v161 = v44;
  v48 = sub_229543DBC(v46, v47);
  v50 = v49;

  if ((v50 & 1) == 0)
  {

    goto LABEL_41;
  }

  sub_2295404B0(*(v37 + 56) + 32 * v48, v175);

  v51 = v168;
  v52 = [v51 endpoint];
  v53 = [v51 cluster];

  v54 = [v51 attribute];
  v55 = [v167 readAttributeWithEndpointID:v52 clusterID:v53 attributeID:v54 params:0];

  if (!v55)
  {

    v114 = v165;
    sub_229541CB0(v170, &off_283CE36C8);
    v115 = v51;
    v116 = sub_22A4DD05C();
    v117 = sub_22A4DDCCC();

    if (os_log_type_enabled(v116, v117))
    {
      v118 = swift_slowAlloc();
      v119 = swift_slowAlloc();
      *v118 = 138412290;
      *(v118 + 4) = v115;
      *v119 = v168;
      v120 = v115;
      _os_log_impl(&dword_229538000, v116, v117, "Failed to get current value for (%@)", v118, 0xCu);
      sub_22953EAE4(v119, &qword_27D87D7D0, &unk_22A578D90);
      MEMORY[0x22AAD4E50](v119, -1, -1);
      MEMORY[0x22AAD4E50](v118, -1, -1);
    }

    (*(v172 + 8))(v114, v171);
    goto LABEL_56;
  }

  v56 = sub_22A4DD49C();

  v57 = sub_22A4DD5EC();
  if (!*(v56 + 16))
  {

    goto LABEL_49;
  }

  v59 = sub_229543DBC(v57, v58);
  v61 = v60;

  if ((v61 & 1) == 0 || (sub_2295404B0(*(v56 + 56) + 32 * v59, v174), (swift_dynamicCast() & 1) == 0))
  {
LABEL_49:

    v121 = v166;
    sub_229541CB0(v170, &off_283CE36C8);

    v122 = sub_22A4DD05C();
    v123 = sub_22A4DDCEC();

    if (os_log_type_enabled(v122, v123))
    {
      v124 = swift_slowAlloc();
      v125 = swift_slowAlloc();
      v174[0] = v125;
      *v124 = 136315394;
      v126 = sub_22A4DD4AC();
      v128 = sub_2295A3E30(v126, v127, v174);
      v168 = v51;
      v129 = v128;

      *(v124 + 4) = v129;
      *(v124 + 12) = 2080;
      v130 = sub_22A4DD4AC();
      v132 = v131;

      v133 = sub_2295A3E30(v130, v132, v174);

      *(v124 + 14) = v133;
      _os_log_impl(&dword_229538000, v122, v123, "Failed to get read data type for %s from read data %s", v124, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AAD4E50](v125, -1, -1);
      MEMORY[0x22AAD4E50](v124, -1, -1);

      (*(v172 + 8))(v166, v171);
LABEL_56:
      __swift_destroy_boxed_opaque_existential_0(v175);
LABEL_25:
      v71 = 0;
      return v71 & 1;
    }

LABEL_55:

    (*(v172 + 8))(v121, v171);
    goto LABEL_56;
  }

  v62 = v173[0];
  v63 = v173[1];
  v64 = sub_22A4DD5EC();
  if (!*(v56 + 16))
  {

LABEL_53:

    v121 = v164;
    sub_229541CB0(v170, &off_283CE36C8);

    v122 = sub_22A4DD05C();
    v134 = sub_22A4DDCEC();

    if (os_log_type_enabled(v122, v134))
    {
      v135 = swift_slowAlloc();
      v136 = swift_slowAlloc();
      v174[0] = v136;
      *v135 = 136315394;
      v137 = sub_22A4DD4AC();
      v139 = sub_2295A3E30(v137, v138, v174);
      v168 = v51;
      v140 = v139;

      *(v135 + 4) = v140;
      *(v135 + 12) = 2080;
      v141 = sub_22A4DD4AC();
      v143 = v142;

      v144 = sub_2295A3E30(v141, v143, v174);

      *(v135 + 14) = v144;
      _os_log_impl(&dword_229538000, v122, v134, "Failed to get read data value for %s from read data %s", v135, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AAD4E50](v136, -1, -1);
      MEMORY[0x22AAD4E50](v135, -1, -1);

      (*(v172 + 8))(v164, v171);
      goto LABEL_56;
    }

    goto LABEL_55;
  }

  v66 = sub_229543DBC(v64, v65);
  v68 = v67;

  if ((v68 & 1) == 0)
  {
    goto LABEL_53;
  }

  sub_2295404B0(*(v56 + 56) + 32 * v66, v174);
  v69 = v159;
  v70 = v161;
  if ((v159 != v62 || v161 != v63) && (sub_22A4DE60C() & 1) == 0)
  {
    v168 = v51;
    sub_229541CB0(v170, &off_283CE36C8);

    v145 = v176;
    v146 = sub_22A4DD05C();
    v147 = sub_22A4DDCEC();

    if (os_log_type_enabled(v146, v147))
    {
      v148 = swift_slowAlloc();
      v149 = swift_slowAlloc();
      v176 = swift_slowAlloc();
      v173[0] = v176;
      *v148 = 136315906;
      v150 = sub_2295A3E30(v62, v63, v173);

      *(v148 + 4) = v150;
      *(v148 + 12) = 2080;
      v151 = sub_2295A3E30(v159, v161, v173);

      *(v148 + 14) = v151;
      *(v148 + 22) = 2080;
      v152 = sub_22A4DD4AC();
      v154 = v153;

      v155 = sub_2295A3E30(v152, v154, v173);

      *(v148 + 24) = v155;
      *(v148 + 32) = 2112;
      *(v148 + 34) = v145;
      *v149 = v145;
      v156 = v145;
      _os_log_impl(&dword_229538000, v146, v147, "Read data type %s does not match expected data type %s from read data %s for path %@", v148, 0x2Au);
      sub_22953EAE4(v149, &qword_27D87D7D0, &unk_22A578D90);
      MEMORY[0x22AAD4E50](v149, -1, -1);
      v157 = v176;
      swift_arrayDestroy();
      MEMORY[0x22AAD4E50](v157, -1, -1);
      MEMORY[0x22AAD4E50](v148, -1, -1);
    }

    else
    {
    }

    (*(v172 + 8))(v163, v171);
    __swift_destroy_boxed_opaque_existential_0(v174);
    __swift_destroy_boxed_opaque_existential_0(v175);
LABEL_31:
    v71 = 0;
    return v71 & 1;
  }

  v71 = sub_22975AD7C(v175, v174, v69, v70);

  __swift_destroy_boxed_opaque_existential_0(v174);
  __swift_destroy_boxed_opaque_existential_0(v175);
  return v71 & 1;
}

id sub_22975A678(uint64_t a1, void *a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v7 = sub_22A4DD07C();
  v59 = *(v7 - 8);
  v8 = MEMORY[0x28223BE20](v7);
  v10 = &v57 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v57 - v12;
  MEMORY[0x28223BE20](v11);
  v15 = &v57 - v14;
  v16 = sub_22A4DD5EC();
  if (!*(a1 + 16))
  {

LABEL_8:
    sub_229541CB0(ObjectType, &off_283CE36C8);

    v31 = sub_22A4DD05C();
    v32 = sub_22A4DDCEC();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v61[0] = v35;
      *v33 = 136315394;
      v36 = sub_22A4DD4AC();
      v38 = sub_2295A3E30(v36, v37, v61);

      *(v33 + 4) = v38;
      *(v33 + 12) = 2112;
      *(v33 + 14) = v3;
      *v34 = v3;

      _os_log_impl(&dword_229538000, v31, v32, "Failed to get attribute path for %s from command %@", v33, 0x16u);
      sub_22953EAE4(v34, &qword_27D87D7D0, &unk_22A578D90);
      MEMORY[0x22AAD4E50](v34, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v35);
      MEMORY[0x22AAD4E50](v35, -1, -1);
      MEMORY[0x22AAD4E50](v33, -1, -1);
    }

    (*(v59 + 8))(v10, v7);
    return 0;
  }

  v58 = v7;
  v18 = sub_229543DBC(v16, v17);
  v20 = v19;
  v7 = v58;

  if ((v20 & 1) == 0)
  {
    goto LABEL_8;
  }

  sub_2295404B0(*(a1 + 56) + 32 * v18, v61);
  sub_229562F68(0, &qword_27D87CF48, 0x277CD51C0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_8;
  }

  v21 = v60;
  v22 = [v21 endpoint];
  v23 = [v22 unsignedShortValue];

  v24 = [a2 endpointID];
  v25 = [v24 unsignedShortValue];

  if (v23 == v25)
  {
    v26 = [v21 cluster];

    v27 = [v26 unsignedIntValue];
    v28 = [a2 clusterID];
    v29 = [v28 unsignedIntValue];

    if (v27 == v29)
    {
      return v21;
    }

    sub_229541CB0(ObjectType, &off_283CE36C8);
    v48 = v21;
    v49 = a2;

    v50 = sub_22A4DD05C();
    v51 = sub_22A4DDCEC();

    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      v53 = swift_slowAlloc();
      *v52 = 138412802;
      v54 = [v48 &selRef_computeWithCoder_];
      *(v52 + 4) = v54;
      *v53 = v54;
      *(v52 + 12) = 2112;
      v55 = [v49 clusterID];
      *(v52 + 14) = v55;
      *(v52 + 22) = 2112;
      *(v52 + 24) = v3;
      v53[1] = v55;
      v53[2] = v3;

      _os_log_impl(&dword_229538000, v50, v51, "Cluster ID in expectedValues (%@) doesn't match HMMatterCommand (%@).  %@", v52, 0x20u);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D7D0, &unk_22A578D90);
      swift_arrayDestroy();
      MEMORY[0x22AAD4E50](v53, -1, -1);
      MEMORY[0x22AAD4E50](v52, -1, -1);
      v56 = v48;
    }

    else
    {
      v56 = v50;
      v50 = v48;
    }

    (*(v59 + 8))(v15, v58);
  }

  else
  {

    sub_229541CB0(ObjectType, &off_283CE36C8);
    v39 = v21;
    v40 = a2;

    v41 = sub_22A4DD05C();
    v42 = sub_22A4DDCEC();

    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      *v43 = 138412802;
      v45 = [v39 endpoint];
      *(v43 + 4) = v45;
      *v44 = v45;
      *(v43 + 12) = 2112;
      v46 = [v40 endpointID];
      *(v43 + 14) = v46;
      *(v43 + 22) = 2112;
      *(v43 + 24) = v3;
      v44[1] = v46;
      v44[2] = v3;

      _os_log_impl(&dword_229538000, v41, v42, "EndpointID in expectedValues (%@) doesn't match HMMatterCommand (%@). %@", v43, 0x20u);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D7D0, &unk_22A578D90);
      swift_arrayDestroy();
      MEMORY[0x22AAD4E50](v44, -1, -1);
      MEMORY[0x22AAD4E50](v43, -1, -1);
      v47 = v39;
    }

    else
    {
      v47 = v41;
      v41 = v39;
    }

    (*(v59 + 8))(v13, v58);
  }

  return 0;
}

uint64_t sub_22975AD7C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  ObjectType = swift_getObjectType();
  v8 = sub_22A4DD07C();
  v9 = *(v8 - 8);
  v184 = v8;
  v185 = v9;
  v10 = MEMORY[0x28223BE20](v8);
  v181 = &v179 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v179 - v13;
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v179 - v16;
  v18 = MEMORY[0x28223BE20](v15);
  v182 = &v179 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v22 = &v179 - v21;
  v23 = MEMORY[0x28223BE20](v20);
  v25 = &v179 - v24;
  MEMORY[0x28223BE20](v23);
  v27 = &v179 - v26;
  if (sub_22A4DD5EC() == a3 && v28 == a4)
  {
  }

  else
  {
    v180 = v14;
    v30 = sub_22A4DE60C();

    if ((v30 & 1) == 0)
    {
      if (sub_22A4DD5EC() == a3 && v31 == a4)
      {
      }

      else
      {
        v33 = sub_22A4DE60C();

        if ((v33 & 1) == 0)
        {
          if (sub_22A4DD5EC() == a3 && v34 == a4)
          {

            v35 = a2;
LABEL_30:
            sub_2295404B0(a1, v189);
            if ((swift_dynamicCast() & 1) == 0 || (v56 = v187[0], sub_2295404B0(v35, v189), (swift_dynamicCast() & 1) == 0))
            {
              sub_229541CB0(ObjectType, &off_283CE36C8);
              sub_2295404B0(a1, v189);
              sub_2295404B0(v35, v187);
              v76 = sub_22A4DD05C();
              v77 = sub_22A4DDCEC();
              if (os_log_type_enabled(v76, v77))
              {
                v78 = swift_slowAlloc();
                v79 = swift_slowAlloc();
                v186 = v79;
                *v78 = 136315394;
                v80 = __swift_project_boxed_opaque_existential_0(v189, v190);
                MEMORY[0x28223BE20](v80);
                (*(v82 + 16))(&v179 - ((v81 + 15) & 0xFFFFFFFFFFFFFFF0));
                v83 = sub_22A4DD66C();
                v85 = v84;
                __swift_destroy_boxed_opaque_existential_0(v189);
                v86 = sub_2295A3E30(v83, v85, &v186);

                *(v78 + 4) = v86;
                *(v78 + 12) = 2080;
                v87 = __swift_project_boxed_opaque_existential_0(v187, v188);
                MEMORY[0x28223BE20](v87);
                (*(v89 + 16))(&v179 - ((v88 + 15) & 0xFFFFFFFFFFFFFFF0));
                v90 = sub_22A4DD66C();
                v92 = v91;
                __swift_destroy_boxed_opaque_existential_0(v187);
                v93 = sub_2295A3E30(v90, v92, &v186);

                *(v78 + 14) = v93;
                _os_log_impl(&dword_229538000, v76, v77, "Comparing UInt type, but couldn't cast all values: (%s) (%s)", v78, 0x16u);
                swift_arrayDestroy();
                MEMORY[0x22AAD4E50](v79, -1, -1);
                MEMORY[0x22AAD4E50](v78, -1, -1);

                (*(v185 + 8))(v22, v184);
                goto LABEL_57;
              }

              (*(v185 + 8))(v22, v184);
              goto LABEL_56;
            }

            goto LABEL_24;
          }

          v75 = sub_22A4DE60C();

          v35 = a2;
          if (v75)
          {
            goto LABEL_30;
          }

          if (sub_22A4DD5EC() == a3 && v94 == a4)
          {

            goto LABEL_39;
          }

          v95 = sub_22A4DE60C();

          if (v95)
          {
LABEL_39:
            sub_2295404B0(a1, v189);
            if (swift_dynamicCast())
            {
              v96 = v187[0];
              sub_2295404B0(a2, v189);
              v97 = swift_dynamicCast();
              v98 = v182;
              if (v97)
              {
                v37 = v96 == v187[0];
                return v37 & 1;
              }
            }

            else
            {
              v98 = v182;
            }

            sub_229541CB0(ObjectType, &off_283CE36C8);
            sub_2295404B0(a1, v189);
            sub_2295404B0(a2, v187);
            v99 = sub_22A4DD05C();
            v100 = sub_22A4DDCEC();
            if (os_log_type_enabled(v99, v100))
            {
              v101 = swift_slowAlloc();
              v102 = swift_slowAlloc();
              v186 = v102;
              *v101 = 136315394;
              v103 = __swift_project_boxed_opaque_existential_0(v189, v190);
              MEMORY[0x28223BE20](v103);
              (*(v105 + 16))(&v179 - ((v104 + 15) & 0xFFFFFFFFFFFFFFF0));
              v106 = sub_22A4DD66C();
              v108 = v107;
              __swift_destroy_boxed_opaque_existential_0(v189);
              v109 = sub_2295A3E30(v106, v108, &v186);

              *(v101 + 4) = v109;
              *(v101 + 12) = 2080;
              v110 = __swift_project_boxed_opaque_existential_0(v187, v188);
              MEMORY[0x28223BE20](v110);
              (*(v112 + 16))(&v179 - ((v111 + 15) & 0xFFFFFFFFFFFFFFF0));
              v113 = sub_22A4DD66C();
              v115 = v114;
              __swift_destroy_boxed_opaque_existential_0(v187);
              v116 = sub_2295A3E30(v113, v115, &v186);

              *(v101 + 14) = v116;
              _os_log_impl(&dword_229538000, v99, v100, "Comparing Double type, but couldn't cast all values: (%s) (%s)", v101, 0x16u);
              swift_arrayDestroy();
              MEMORY[0x22AAD4E50](v102, -1, -1);
              MEMORY[0x22AAD4E50](v101, -1, -1);

              (*(v185 + 8))(v98, v184);
              goto LABEL_57;
            }

            (*(v185 + 8))(v98, v184);
            goto LABEL_56;
          }

          if (sub_22A4DD5EC() == a3 && v117 == a4)
          {

            v25 = v17;
LABEL_50:
            sub_2295404B0(a1, v189);
            if (swift_dynamicCast())
            {
              v119 = *v187;
              sub_2295404B0(a2, v189);
              if (swift_dynamicCast())
              {
                v37 = v119 == *v187;
                return v37 & 1;
              }
            }

            sub_229541CB0(ObjectType, &off_283CE36C8);
            sub_2295404B0(a1, v189);
            sub_2295404B0(a2, v187);
            v57 = sub_22A4DD05C();
            v120 = sub_22A4DDCEC();
            if (os_log_type_enabled(v57, v120))
            {
              v59 = swift_slowAlloc();
              v60 = swift_slowAlloc();
              v186 = v60;
              *v59 = 136315394;
              v121 = __swift_project_boxed_opaque_existential_0(v189, v190);
              MEMORY[0x28223BE20](v121);
              (*(v123 + 16))(&v179 - ((v122 + 15) & 0xFFFFFFFFFFFFFFF0));
              v124 = sub_22A4DD66C();
              v126 = v125;
              __swift_destroy_boxed_opaque_existential_0(v189);
              v127 = sub_2295A3E30(v124, v126, &v186);

              *(v59 + 4) = v127;
              *(v59 + 12) = 2080;
              v128 = __swift_project_boxed_opaque_existential_0(v187, v188);
              MEMORY[0x28223BE20](v128);
              (*(v130 + 16))(&v179 - ((v129 + 15) & 0xFFFFFFFFFFFFFFF0));
              v131 = sub_22A4DD66C();
              v133 = v132;
              __swift_destroy_boxed_opaque_existential_0(v187);
              v134 = sub_2295A3E30(v131, v133, &v186);

              *(v59 + 14) = v134;
              _os_log_impl(&dword_229538000, v57, v120, "Comparing Float type, but couldn't cast all values: (%s) (%s)", v59, 0x16u);
              goto LABEL_27;
            }

            goto LABEL_55;
          }

          v118 = sub_22A4DE60C();

          v25 = v17;
          if (v118)
          {
            goto LABEL_50;
          }

          if (sub_22A4DD5EC() == a3 && v136 == a4)
          {
          }

          else
          {
            v137 = sub_22A4DE60C();

            if ((v137 & 1) == 0)
            {
              v140 = v181;
              sub_229541CB0(ObjectType, &off_283CE36C8);
              sub_2295404B0(a1, v189);
              sub_2295404B0(v35, v187);

              v141 = sub_22A4DD05C();
              v142 = sub_22A4DDCEC();

              if (os_log_type_enabled(v141, v142))
              {
                v143 = swift_slowAlloc();
                v144 = swift_slowAlloc();
                v186 = v144;
                *v143 = 136315650;
                *(v143 + 4) = sub_2295A3E30(a3, a4, &v186);
                *(v143 + 12) = 2080;
                v145 = __swift_project_boxed_opaque_existential_0(v189, v190);
                MEMORY[0x28223BE20](v145);
                (*(v147 + 16))(&v179 - ((v146 + 15) & 0xFFFFFFFFFFFFFFF0));
                v148 = sub_22A4DD66C();
                v150 = v149;
                __swift_destroy_boxed_opaque_existential_0(v189);
                v151 = sub_2295A3E30(v148, v150, &v186);

                *(v143 + 14) = v151;
                *(v143 + 22) = 2080;
                v152 = __swift_project_boxed_opaque_existential_0(v187, v188);
                MEMORY[0x28223BE20](v152);
                (*(v154 + 16))(&v179 - ((v153 + 15) & 0xFFFFFFFFFFFFFFF0));
                v155 = sub_22A4DD66C();
                v157 = v156;
                __swift_destroy_boxed_opaque_existential_0(v187);
                v158 = sub_2295A3E30(v155, v157, &v186);

                *(v143 + 24) = v158;
                _os_log_impl(&dword_229538000, v141, v142, "Attempted to compare unsupported type: (%s) values: (%s) (%s)", v143, 0x20u);
                swift_arrayDestroy();
                MEMORY[0x22AAD4E50](v144, -1, -1);
                MEMORY[0x22AAD4E50](v143, -1, -1);

                (*(v185 + 8))(v140, v184);
                goto LABEL_57;
              }

              (*(v185 + 8))(v140, v184);
              goto LABEL_56;
            }
          }

          sub_2295404B0(a1, v189);
          sub_229562F68(0, &unk_27D880900, 0x277CBEA60);
          if (swift_dynamicCast())
          {
            v138 = v187[0];
            sub_2295404B0(a2, v189);
            if (swift_dynamicCast())
            {
              v139 = v187[0];
              sub_229562F68(0, &qword_281401760, 0x277D82BB8);
              v37 = sub_22A4DDEDC();

              return v37 & 1;
            }
          }

          v159 = v180;
          sub_229541CB0(ObjectType, &off_283CE36C8);
          sub_2295404B0(a1, v189);
          v160 = v159;
          sub_2295404B0(a2, v187);
          v161 = sub_22A4DD05C();
          v162 = sub_22A4DDCEC();
          if (os_log_type_enabled(v161, v162))
          {
            v163 = swift_slowAlloc();
            v164 = swift_slowAlloc();
            v186 = v164;
            *v163 = 136315394;
            v165 = __swift_project_boxed_opaque_existential_0(v189, v190);
            MEMORY[0x28223BE20](v165);
            (*(v167 + 16))(&v179 - ((v166 + 15) & 0xFFFFFFFFFFFFFFF0));
            v168 = sub_22A4DD66C();
            v170 = v169;
            __swift_destroy_boxed_opaque_existential_0(v189);
            v171 = sub_2295A3E30(v168, v170, &v186);

            *(v163 + 4) = v171;
            *(v163 + 12) = 2080;
            v172 = __swift_project_boxed_opaque_existential_0(v187, v188);
            MEMORY[0x28223BE20](v172);
            (*(v174 + 16))(&v179 - ((v173 + 15) & 0xFFFFFFFFFFFFFFF0));
            v175 = sub_22A4DD66C();
            v177 = v176;
            __swift_destroy_boxed_opaque_existential_0(v187);
            v178 = sub_2295A3E30(v175, v177, &v186);

            *(v163 + 14) = v178;
            _os_log_impl(&dword_229538000, v161, v162, "Comparing Array type, but couldn't cast all values: (%s) (%s)", v163, 0x16u);
            swift_arrayDestroy();
            MEMORY[0x22AAD4E50](v164, -1, -1);
            MEMORY[0x22AAD4E50](v163, -1, -1);

            (*(v185 + 8))(v160, v184);
            goto LABEL_57;
          }

          (*(v185 + 8))(v160, v184);
LABEL_56:
          __swift_destroy_boxed_opaque_existential_0(v189);
          __swift_destroy_boxed_opaque_existential_0(v187);
          goto LABEL_57;
        }
      }

      sub_2295404B0(a1, v189);
      if (swift_dynamicCast())
      {
        v56 = v187[0];
        sub_2295404B0(a2, v189);
        if (swift_dynamicCast())
        {
LABEL_24:
          v37 = *&v56 == *&v187[0];
          return v37 & 1;
        }
      }

      sub_229541CB0(ObjectType, &off_283CE36C8);
      sub_2295404B0(a1, v189);
      sub_2295404B0(a2, v187);
      v57 = sub_22A4DD05C();
      v58 = sub_22A4DDCEC();
      if (os_log_type_enabled(v57, v58))
      {
        v59 = swift_slowAlloc();
        v60 = swift_slowAlloc();
        v186 = v60;
        *v59 = 136315394;
        v61 = __swift_project_boxed_opaque_existential_0(v189, v190);
        MEMORY[0x28223BE20](v61);
        (*(v63 + 16))(&v179 - ((v62 + 15) & 0xFFFFFFFFFFFFFFF0));
        v64 = sub_22A4DD66C();
        v66 = v65;
        __swift_destroy_boxed_opaque_existential_0(v189);
        v67 = sub_2295A3E30(v64, v66, &v186);

        *(v59 + 4) = v67;
        *(v59 + 12) = 2080;
        v68 = __swift_project_boxed_opaque_existential_0(v187, v188);
        MEMORY[0x28223BE20](v68);
        (*(v70 + 16))(&v179 - ((v69 + 15) & 0xFFFFFFFFFFFFFFF0));
        v71 = sub_22A4DD66C();
        v73 = v72;
        __swift_destroy_boxed_opaque_existential_0(v187);
        v74 = sub_2295A3E30(v71, v73, &v186);

        *(v59 + 14) = v74;
        _os_log_impl(&dword_229538000, v57, v58, "Comparing Int type, but couldn't cast all values: (%s) (%s)", v59, 0x16u);
LABEL_27:
        swift_arrayDestroy();
        MEMORY[0x22AAD4E50](v60, -1, -1);
        MEMORY[0x22AAD4E50](v59, -1, -1);

        (*(v185 + 8))(v25, v184);
        goto LABEL_57;
      }

LABEL_55:

      (*(v185 + 8))(v25, v184);
      goto LABEL_56;
    }
  }

  sub_2295404B0(a1, v189);
  if ((swift_dynamicCast() & 1) == 0 || (v36 = LOBYTE(v187[0]), sub_2295404B0(a2, v189), (swift_dynamicCast() & 1) == 0))
  {
    sub_229541CB0(ObjectType, &off_283CE36C8);
    sub_2295404B0(a1, v189);
    sub_2295404B0(a2, v187);
    v38 = sub_22A4DD05C();
    v39 = sub_22A4DDCEC();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v186 = v41;
      *v40 = 136315394;
      v42 = __swift_project_boxed_opaque_existential_0(v189, v190);
      MEMORY[0x28223BE20](v42);
      (*(v44 + 16))(&v179 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0));
      v45 = sub_22A4DD66C();
      v47 = v46;
      __swift_destroy_boxed_opaque_existential_0(v189);
      v48 = sub_2295A3E30(v45, v47, &v186);

      *(v40 + 4) = v48;
      *(v40 + 12) = 2080;
      v49 = __swift_project_boxed_opaque_existential_0(v187, v188);
      MEMORY[0x28223BE20](v49);
      (*(v51 + 16))(&v179 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0));
      v52 = sub_22A4DD66C();
      v54 = v53;
      __swift_destroy_boxed_opaque_existential_0(v187);
      v55 = sub_2295A3E30(v52, v54, &v186);

      *(v40 + 14) = v55;
      _os_log_impl(&dword_229538000, v38, v39, "Comparing Bool type, but couldn't cast all values: (%s (%s)", v40, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AAD4E50](v41, -1, -1);
      MEMORY[0x22AAD4E50](v40, -1, -1);

      (*(v185 + 8))(v27, v184);
LABEL_57:
      v37 = 0;
      return v37 & 1;
    }

    (*(v185 + 8))(v27, v184);
    goto LABEL_56;
  }

  v37 = v36 ^ LOBYTE(v187[0]) ^ 1;
  return v37 & 1;
}

id *sub_22975C7CC()
{

  swift_unknownObjectRelease();

  sub_2296B874C((v0 + 24));

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_22975C84C()
{
  sub_22975C7CC();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_22975C8B8(void *a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v5 = sub_22A4DD07C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_229541CB0(ObjectType, &off_283CE36C8);
  v9 = a1;
  v10 = sub_22A4DD05C();
  v11 = sub_22A4DDCDC();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *v12 = 138412546;
    *(v12 + 4) = v9;
    *v13 = v9;
    *(v12 + 12) = 2048;
    *(v12 + 14) = a2;
    v14 = v9;
    _os_log_impl(&dword_229538000, v10, v11, "Device %@ state changed to %lu", v12, 0x16u);
    sub_22953EAE4(v13, &qword_27D87D7D0, &unk_22A578D90);
    MEMORY[0x22AAD4E50](v13, -1, -1);
    MEMORY[0x22AAD4E50](v12, -1, -1);
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_22975CAE4(void *a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D8F0, &qword_22A578D70);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v46 - v8;
  v10 = sub_22A4DD07C();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_229541CB0(ObjectType, &off_283CE36C8);

  v14 = a1;
  v15 = sub_22A4DD05C();
  v16 = sub_22A4DDCDC();

  v17 = os_log_type_enabled(v15, v16);
  v50 = v9;
  v51 = v3;
  v49 = v14;
  if (v17)
  {
    v18 = swift_slowAlloc();
    v48 = v11;
    v19 = v18;
    v20 = swift_slowAlloc();
    v47 = v10;
    v21 = v20;
    v22 = swift_slowAlloc();
    v52[0] = v22;
    *v19 = 136315394;
    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87C410, &qword_22A576EE0);
    v24 = MEMORY[0x22AAD0A20](a2, v23);
    v26 = sub_2295A3E30(v24, v25, v52);

    *(v19 + 4) = v26;
    *(v19 + 12) = 2112;
    *(v19 + 14) = v14;
    *v21 = v14;
    v27 = v14;
    _os_log_impl(&dword_229538000, v15, v16, "Received attribute report %s for device %@", v19, 0x16u);
    sub_22953EAE4(v21, &qword_27D87D7D0, &unk_22A578D90);
    MEMORY[0x22AAD4E50](v21, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v22);
    MEMORY[0x22AAD4E50](v22, -1, -1);
    MEMORY[0x22AAD4E50](v19, -1, -1);

    result = (*(v48 + 8))(v13, v47);
  }

  else
  {

    result = (*(v11 + 8))(v13, v10);
  }

  v29 = MEMORY[0x277D84F90];
  v53 = MEMORY[0x277D84F90];
  v30 = *(a2 + 16);
  if (!v30)
  {
    goto LABEL_20;
  }

  v31 = 0;
  do
  {
    v32 = v31;
    while (1)
    {
      if (v32 >= v30)
      {
        __break(1u);
LABEL_22:
        __break(1u);
        return result;
      }

      v31 = v32 + 1;
      if (__OFADD__(v32, 1))
      {
        goto LABEL_22;
      }

      v33 = *(a2 + 32 + 8 * v32);
      v34 = sub_22A4DD5EC();
      v36 = v35;
      if (*(v33 + 16))
      {
        v37 = v34;

        v38 = sub_229543DBC(v37, v36);
        v40 = v39;

        if (v40)
        {
          break;
        }
      }

LABEL_8:
      ++v32;
      if (v31 == v30)
      {
        goto LABEL_20;
      }
    }

    sub_2295404B0(*(v33 + 56) + 32 * v38, v52);

    sub_229562F68(0, &qword_27D87CF48, 0x277CD51C0);
    result = swift_dynamicCast();
    if ((result & 1) == 0 || !v52[4])
    {
      goto LABEL_8;
    }

    MEMORY[0x22AAD09E0]();
    if (*((v53 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v53 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_22A4DD85C();
    }

    result = sub_22A4DD87C();
    v29 = v53;
  }

  while (v31 != v30);
LABEL_20:
  v41 = sub_22A4DD9DC();
  v42 = v50;
  (*(*(v41 - 8) + 56))(v50, 1, 1, v41);
  v43 = swift_allocObject();
  v43[2] = 0;
  v43[3] = 0;
  v43[4] = v51;
  v43[5] = v29;
  v44 = v49;
  v43[6] = v49;
  v45 = v44;

  sub_22957F3C0(0, 0, v42, &unk_22A581DE0, v43);
}

uint64_t sub_22975CFB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  return MEMORY[0x2822009F8](sub_22975CFD4, 0, 0);
}

uint64_t sub_22975CFD4()
{
  v1 = *(v0 + 16);
  *(v0 + 40) = [*(v0 + 32) nodeID];

  return MEMORY[0x2822009F8](sub_22975D054, v1, 0);
}

uint64_t sub_22975D054()
{
  v1 = v0[5];
  sub_22975D0C0(v0[3], v1);

  v2 = v0[1];

  return v2();
}

void sub_22975D0C0(unint64_t a1, int64_t a2)
{
  ObjectType = swift_getObjectType();
  v71 = sub_22A4DD07C();
  v70 = *(v71 - 8);
  MEMORY[0x28223BE20](v71);
  v72 = &v68 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = a1;
  if (a1 >> 62)
  {
    goto LABEL_63;
  }

  for (i = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10); i; v4 = v76)
  {
    v7 = 0;
    v77 = v4 & 0xC000000000000001;
    v74 = v4 & 0xFFFFFFFFFFFFFF8;
    v73 = v4 + 32;
    v8 = &selRef_microLocationScanTriggerTypeForLogEventObserver_;
    v82 = a2;
    v75 = i;
    while (1)
    {
      if (v77)
      {
        v9 = v7;
        v10 = MEMORY[0x22AAD13F0](v7);
        v11 = __OFADD__(v9, 1);
        v12 = v9 + 1;
        if (v11)
        {
          goto LABEL_61;
        }
      }

      else
      {
        if (v7 >= *(v74 + 16))
        {
          goto LABEL_62;
        }

        v13 = v7;
        v10 = *(v73 + 8 * v7);
        v11 = __OFADD__(v13, 1);
        v12 = v13 + 1;
        if (v11)
        {
          goto LABEL_61;
        }
      }

      v95 = v10;
      v79 = v12;
      v81 = *(v78 + 136);
      if ((v81 & 0xC000000000000001) != 0)
      {

        swift_unknownObjectRetain();
        sub_22A4DE09C();
        sub_229562F68(0, &unk_27D8808F0, 0x277CD1B58);
        sub_22959E62C(&qword_27D87E468, &unk_27D8808F0, 0x277CD1B58);
        sub_22A4DDBAC();
        v14 = v101;
        v15 = v102;
        v16 = v103;
        v17 = v104;
        v18 = v105;
      }

      else
      {
        v19 = -1 << *(v81 + 32);
        v20 = v81 + 56;
        v21 = ~v19;
        v22 = -v19;
        v23 = v22 < 64 ? ~(-1 << v22) : -1;
        v24 = v23 & *(v81 + 56);
        v25 = v81;
        swift_bridgeObjectRetain_n();
        v16 = v21;
        v17 = 0;
        v14 = v25;
        v15 = v20;
        v18 = v24;
      }

      v80 = v16;
      v26 = (v16 + 64) >> 6;
      v89 = v14;
      v87 = v26;
      v88 = v15;
LABEL_19:
      v90 = v17;
      if (v14 < 0)
      {
        break;
      }

      v27 = v17;
      v28 = v18;
      if (v18)
      {
LABEL_24:
        v92 = (v28 - 1) & v28;
        v29 = *(*(v14 + 48) + ((v17 << 9) | (8 * __clz(__rbit64(v28)))));
        if (!v29)
        {
          goto LABEL_53;
        }

        goto LABEL_28;
      }

      while (1)
      {
        v17 = v27 + 1;
        if (__OFADD__(v27, 1))
        {
          goto LABEL_60;
        }

        if (v17 >= v26)
        {
          break;
        }

        v28 = *(v15 + 8 * v17);
        ++v27;
        if (v28)
        {
          goto LABEL_24;
        }
      }

LABEL_51:
      sub_22953EE84(v14);

      v7 = v79;
      if (v79 == v75)
      {
        return;
      }
    }

    v30 = sub_22A4DE12C();
    if (!v30)
    {
      v14 = v89;
      goto LABEL_51;
    }

    v99 = v30;
    sub_229562F68(0, &unk_27D8808F0, 0x277CD1B58);
    swift_dynamicCast();
    v29 = v100;
    v92 = v18;
    if (!v100)
    {
LABEL_53:
      v14 = v89;
      goto LABEL_51;
    }

LABEL_28:
    v86 = v18;
    v31 = v29;
    v32 = sub_229562F68(0, &qword_281401760, 0x277D82BB8);
    v33 = [v31 v8[464]];
    v34 = sub_22A4DDEDC();

    if ((v34 & 1) == 0)
    {

      v18 = v92;
LABEL_18:
      v15 = v88;
      v14 = v89;
      v26 = v87;
      goto LABEL_19;
    }

    v85 = v31;
    v35 = [v31 attributePaths];
    v36 = sub_229562F68(0, &qword_27D87CF48, 0x277CD51C0);
    sub_22959E62C(&unk_27D87E450, &qword_27D87CF48, 0x277CD51C0);
    v37 = sub_22A4DDB6C();

    v96 = v32;
    v84 = v37;
    v91 = v36;
    if ((v37 & 0xC000000000000001) != 0)
    {
      swift_unknownObjectRetain();
      sub_22A4DE09C();
      sub_22A4DDBAC();
      v37 = v106;
      v38 = v107;
      v39 = v108;
      a2 = v109;
      v40 = v110;
    }

    else
    {
      v41 = -1 << *(v37 + 32);
      v38 = v37 + 56;
      v39 = ~v41;
      v42 = -v41;
      if (v42 < 64)
      {
        v43 = ~(-1 << v42);
      }

      else
      {
        v43 = -1;
      }

      v40 = v43 & *(v37 + 56);

      a2 = 0;
    }

    v83 = v39;
    v44 = (v39 + 64) >> 6;
    v97 = v37;
    while (1)
    {
      v45 = a2;
      if (v37 < 0)
      {
        v50 = sub_22A4DE12C();
        if (!v50 || (v99 = v50, swift_dynamicCast(), v49 = v100, v48 = v40, !v100))
        {
LABEL_50:

          sub_22953EE84(v37);

          v18 = v92;
          a2 = v82;
          v8 = &selRef_microLocationScanTriggerTypeForLogEventObserver_;
          goto LABEL_18;
        }

        goto LABEL_46;
      }

      v46 = a2;
      v47 = v40;
      if (!v40)
      {
        break;
      }

LABEL_42:
      v48 = (v47 - 1) & v47;
      v49 = *(*(v37 + 48) + ((a2 << 9) | (8 * __clz(__rbit64(v47)))));
      if (!v49)
      {
        goto LABEL_50;
      }

LABEL_46:
      v98 = v48;
      v93 = v40;
      v94 = v45;
      v51 = [v49 endpoint];
      v52 = v95;
      v53 = [v95 endpoint];
      v54 = sub_22A4DDEDC();

      if (v54 & 1) != 0 && (v55 = [v49 cluster], v56 = objc_msgSend(v52, sel_cluster), v57 = sub_22A4DDEDC(), v55, v56, (v57))
      {
        v58 = [v49 attribute];
        v59 = [v52 attribute];
        v60 = sub_22A4DDEDC();

        v37 = v97;
        v40 = v98;
        if (v60)
        {

          sub_22953EE84(v37);

          sub_22953EE84(v89);

          sub_229541CB0(ObjectType, &off_283CE36C8);
          v61 = v95;
          v62 = sub_22A4DD05C();
          v63 = sub_22A4DDCDC();

          if (os_log_type_enabled(v62, v63))
          {
            v65 = swift_slowAlloc();
            v66 = swift_slowAlloc();
            *v65 = 138412290;
            *(v65 + 4) = v61;
            *v66 = v61;
            v67 = v61;
            _os_log_impl(&dword_229538000, v62, v63, "Detected relevant matter attribute change for %@, refreshing on state", v65, 0xCu);
            sub_22953EAE4(v66, &qword_27D87D7D0, &unk_22A578D90);
            MEMORY[0x22AAD4E50](v66, -1, -1);
            MEMORY[0x22AAD4E50](v65, -1, -1);
          }

          (*(v70 + 8))(v72, v71);
          sub_2297564E4();

          return;
        }
      }

      else
      {

        v37 = v97;
        v40 = v98;
      }
    }

    while (1)
    {
      a2 = v46 + 1;
      if (__OFADD__(v46, 1))
      {
        break;
      }

      if (a2 >= v44)
      {
        goto LABEL_50;
      }

      v47 = *(v38 + 8 * a2);
      ++v46;
      if (v47)
      {
        goto LABEL_42;
      }
    }

    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
LABEL_63:
    i = sub_22A4DE0EC();
  }
}

uint64_t sub_22975DA38(void *a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v5 = sub_22A4DD07C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_229541CB0(ObjectType, &off_283CE36C8);

  v9 = a1;
  v10 = sub_22A4DD05C();
  v11 = sub_22A4DDCDC();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v22 = v5;
    v23 = v14;
    v15 = v14;
    *v12 = 136315394;
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87C410, &qword_22A576EE0);
    v17 = MEMORY[0x22AAD0A20](a2, v16);
    v19 = sub_2295A3E30(v17, v18, &v23);

    *(v12 + 4) = v19;
    *(v12 + 12) = 2112;
    *(v12 + 14) = v9;
    *v13 = v9;
    v20 = v9;
    _os_log_impl(&dword_229538000, v10, v11, "Received event report %s for device %@", v12, 0x16u);
    sub_22953EAE4(v13, &qword_27D87D7D0, &unk_22A578D90);
    MEMORY[0x22AAD4E50](v13, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v15);
    MEMORY[0x22AAD4E50](v15, -1, -1);
    MEMORY[0x22AAD4E50](v12, -1, -1);

    return (*(v6 + 8))(v8, v22);
  }

  else
  {

    return (*(v6 + 8))(v8, v5);
  }
}

uint64_t sub_22975DCA8(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void (*a5)(id, uint64_t))
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87C410, &qword_22A576EE0);
  v7 = sub_22A4DD83C();
  v8 = a3;

  a5(v8, v7);
}

uint64_t sub_22975DD4C(uint64_t a1)
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

  return sub_22975CFB0(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_22975DE14(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D880938, &qword_22A586CE0);
    v2 = sub_22A4DE3FC();
    v19 = v2;
    sub_22A4DE35C();
    v3 = sub_22A4DE38C();
    if (v3)
    {
      v4 = v3;
      sub_229562F68(0, &qword_281401770, 0x277CCABB0);
      v5 = v4;
      do
      {
        v17 = v5;
        swift_dynamicCast();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D880910, &qword_22A581DE8);
        swift_dynamicCast();
        v12 = *(v2 + 16);
        if (*(v2 + 24) <= v12)
        {
          sub_229894FF0(v12 + 1, 1);
        }

        v2 = v19;
        result = sub_22A4DDECC();
        v7 = v19 + 64;
        v8 = -1 << *(v19 + 32);
        v9 = result & ~v8;
        v10 = v9 >> 6;
        if (((-1 << v9) & ~*(v19 + 64 + 8 * (v9 >> 6))) != 0)
        {
          v11 = __clz(__rbit64((-1 << v9) & ~*(v19 + 64 + 8 * (v9 >> 6)))) | v9 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v13 = 0;
          v14 = (63 - v8) >> 6;
          do
          {
            if (++v10 == v14 && (v13 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v15 = v10 == v14;
            if (v10 == v14)
            {
              v10 = 0;
            }

            v13 |= v15;
            v16 = *(v7 + 8 * v10);
          }

          while (v16 == -1);
          v11 = __clz(__rbit64(~v16)) + (v10 << 6);
        }

        *(v7 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
        *(*(v19 + 48) + 8 * v11) = v18;
        *(*(v19 + 56) + 8 * v11) = v17;
        ++*(v19 + 16);
        v5 = sub_22A4DE38C();
      }

      while (v5);
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84F98];
  }

  return v2;
}

void sub_22975E088(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_9:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
        goto LABEL_5;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D220, &unk_22A5785F0);
      v7 = swift_allocObject();
      v8 = _swift_stdlib_malloc_size(v7);
      v7[2] = v5;
      v7[3] = 2 * ((v8 - 32) / 40);
      if (v4 != a3)
      {
LABEL_5:
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D228, &qword_22A578170);
        swift_arrayInitWithCopy();
        return;
      }
    }

    __break(1u);
    goto LABEL_9;
  }
}

char *sub_22975E184(uint64_t a1, char *a2, uint64_t (*a3)(uint64_t *, char *, uint64_t (*)(uint64_t *, char *, uint64_t, uint64_t, __n128), uint64_t))
{
  if ((a1 & 0xC000000000000001) == 0)
  {
    goto LABEL_5;
  }

  v6 = sub_22A4DE0EC();
  if (!v6)
  {
    return MEMORY[0x277D84F90];
  }

  while (1)
  {
    a2 = (a2)(v6, 0);

    a3 = a3(&v8, a2 + 32, v6, a1);
    sub_22953EE84(v8);
    if (a3 == v6)
    {
      break;
    }

    __break(1u);
LABEL_5:
    v6 = *(a1 + 16);
    if (!v6)
    {
      return MEMORY[0x277D84F90];
    }
  }

  return a2;
}

void sub_22975E244(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D2A0, &unk_22A578BD0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v17 - v4;
  v6 = sub_22A4DB7DC();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(*v1 + 16))
  {
    v10 = 1 << *(a1 + 32);
    v11 = -1;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    v12 = v11 & *(a1 + 56);
    v13 = (v10 + 63) >> 6;
    v17[0] = v7 + 8;
    v17[1] = v7 + 16;

    v14 = 0;
    while (v12)
    {
      v15 = v14;
LABEL_10:
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
      (*(v7 + 16))(v9, *(a1 + 48) + *(v7 + 72) * (v16 | (v15 << 6)), v6);
      sub_229578E38(v9, v5);
      (*(v7 + 8))(v9, v6);
      sub_22953EAE4(v5, &unk_27D87D2A0, &unk_22A578BD0);
    }

    while (1)
    {
      v15 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v15 >= v13)
      {

        return;
      }

      v12 = *(a1 + 56 + 8 * v15);
      ++v14;
      if (v12)
      {
        v14 = v15;
        goto LABEL_10;
      }
    }

    __break(1u);
  }
}

void sub_22975E460(uint64_t a1, unint64_t *a2, void *a3, unint64_t *a4, uint64_t (*a5)(id))
{
  if ((*v5 & 0xC000000000000001) != 0)
  {
    if (!sub_22A4DE0EC())
    {
      return;
    }
  }

  else if (!*(*v5 + 16))
  {
    return;
  }

  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_22A4DE09C();
    sub_229562F68(0, a2, a3);
    sub_22959E62C(a4, a2, a3);
    sub_22A4DDBAC();
    a1 = v26;
    v8 = v27;
    v9 = v28;
    v10 = v29;
    v11 = v30;
  }

  else
  {
    v12 = -1 << *(a1 + 32);
    v8 = a1 + 56;
    v9 = ~v12;
    v13 = -v12;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v11 = v14 & *(a1 + 56);

    v10 = 0;
  }

  v15 = (v9 + 64) >> 6;
  if (a1 < 0)
  {
    goto LABEL_18;
  }

  while (1)
  {
    v16 = v10;
    v17 = v11;
    v18 = v10;
    if (!v11)
    {
      break;
    }

LABEL_16:
    v19 = (v17 - 1) & v17;
    v20 = *(*(a1 + 48) + ((v18 << 9) | (8 * __clz(__rbit64(v17)))));
    if (!v20)
    {
LABEL_22:
      sub_22953EE84(a1);
      return;
    }

    while (1)
    {
      v21 = a5(v20);

      v10 = v18;
      v11 = v19;
      if ((a1 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_18:
      if (sub_22A4DE12C())
      {
        sub_229562F68(0, a2, a3);
        swift_dynamicCast();
        v20 = v25;
        v18 = v10;
        v19 = v11;
        if (v25)
        {
          continue;
        }
      }

      goto LABEL_22;
    }
  }

  while (1)
  {
    v18 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v18 >= v15)
    {
      goto LABEL_22;
    }

    v17 = *(v8 + 8 * v18);
    ++v16;
    if (v17)
    {
      goto LABEL_16;
    }
  }

  __break(1u);
}

uint64_t sub_22975E690(unint64_t a1, uint64_t a2)
{
  v2 = a2;
  v52[2] = *MEMORY[0x277D85DE8];
  if (*(a2 + 16))
  {
    v52[0] = a1;
    v43 = a1 >> 62;
    if (a1 >> 62)
    {
LABEL_47:
      v34 = a1;
      v3 = sub_22A4DE0EC();
      a1 = v34;
    }

    else
    {
      v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v48 = a1;

    if (v3)
    {
      v4 = 0;
      v49 = v48 & 0xC000000000000001;
      v47 = v48 & 0xFFFFFFFFFFFFFF8;
      v45 = v48 + 32;
      v51 = (v2 + 56);
      while (1)
      {
        if (v49)
        {
          a1 = MEMORY[0x22AAD13F0](v4, v48);
        }

        else
        {
          if (v4 >= *(v47 + 16))
          {
            goto LABEL_46;
          }

          a1 = *(v45 + 8 * v4);
        }

        v50 = a1;
        v5 = __OFADD__(v4++, 1);
        if (v5)
        {
          goto LABEL_45;
        }

        v6 = sub_22A4DDECC();
        v7 = -1 << *(v2 + 32);
        v8 = v6 & ~v7;
        v9 = v8 >> 6;
        v10 = 1 << v8;
        if (((1 << v8) & v51[v8 >> 6]) != 0)
        {
          break;
        }

LABEL_6:

        if (v4 == v3)
        {
          goto LABEL_40;
        }
      }

      v11 = ~v7;
      sub_229562F68(0, &qword_281401920, off_278666038);
      while (1)
      {
        v12 = *(*(v2 + 48) + 8 * v8);
        v13 = sub_22A4DDEDC();

        if (v13)
        {
          break;
        }

        v8 = (v8 + 1) & v11;
        v9 = v8 >> 6;
        v10 = 1 << v8;
        if (((1 << v8) & v51[v8 >> 6]) == 0)
        {
          goto LABEL_6;
        }
      }

      v52[1] = v4;

      v15 = *(v2 + 32);
      v16 = v15 & 0x3F;
      v17 = ((1 << v15) + 63) >> 6;
      v41 = v17;
      if (v16 <= 0xD)
      {
LABEL_19:
        v42 = &v40;
        MEMORY[0x28223BE20](v14);
        v19 = &v40 - ((v18 + 15) & 0x3FFFFFFFFFFFFFF0);
        a1 = memcpy(v19, v51, v18);
        v20 = *(v2 + 16);
        v21 = *&v19[8 * v9] & ~v10;
        v46 = v19;
        *&v19[8 * v9] = v21;
        v44 = v20 - 1;
        if (v43)
        {
          a1 = sub_22A4DE0EC();
          v50 = a1;
        }

        else
        {
          v50 = *(v47 + 16);
        }

        while (1)
        {
          if (v4 == v50)
          {
            v2 = sub_22966F34C(v46, v41, v44, v2);
            goto LABEL_40;
          }

          if (v49)
          {
            a1 = MEMORY[0x22AAD13F0](v4, v48);
          }

          else
          {
            if ((v4 & 0x8000000000000000) != 0)
            {
              goto LABEL_43;
            }

            if (v4 >= *(v47 + 16))
            {
              goto LABEL_44;
            }

            a1 = *(v45 + 8 * v4);
          }

          v22 = a1;
          v5 = __OFADD__(v4++, 1);
          if (v5)
          {
            break;
          }

          v23 = sub_22A4DDECC();
          v24 = -1 << *(v2 + 32);
          v25 = v23 & ~v24;
          v26 = v25 >> 6;
          v27 = 1 << v25;
          if (((1 << v25) & v51[v25 >> 6]) != 0)
          {
            v28 = ~v24;
            while (1)
            {
              v29 = *(*(v2 + 48) + 8 * v25);
              v30 = sub_22A4DDEDC();

              if (v30)
              {
                break;
              }

              v25 = (v25 + 1) & v28;
              v26 = v25 >> 6;
              v27 = 1 << v25;
              if (((1 << v25) & v51[v25 >> 6]) == 0)
              {
                goto LABEL_22;
              }
            }

            v31 = v46[v26];
            v46[v26] = v31 & ~v27;
            if ((v31 & v27) != 0)
            {
              v32 = v44 - 1;
              if (__OFSUB__(v44, 1))
              {
                __break(1u);
              }

              --v44;
              if (!v32)
              {

                v2 = MEMORY[0x277D84FA0];
                goto LABEL_40;
              }
            }
          }

          else
          {
LABEL_22:
          }
        }

        __break(1u);
LABEL_43:
        __break(1u);
LABEL_44:
        __break(1u);
LABEL_45:
        __break(1u);
LABEL_46:
        __break(1u);
        goto LABEL_47;
      }

      v35 = 8 * v17;

      v36 = v35;
      if (swift_stdlib_isStackAllocationSafe())
      {

        goto LABEL_19;
      }

      v37 = swift_slowAlloc();
      memcpy(v37, v51, v36);
      sub_22976033C(v37, v41, v2, v8, v52);
      v39 = v38;

      MEMORY[0x22AAD4E50](v37, -1, -1);

      return v39;
    }

    else
    {
LABEL_40:
    }
  }

  else
  {

    return MEMORY[0x277D84FA0];
  }

  return v2;
}

uint64_t sub_22975EB68(uint64_t a1, uint64_t a2)
{
  v94 = *MEMORY[0x277D85DE8];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D2A0, &unk_22A578BD0);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v8 = &v65 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = (&v65 - v9);
  v11 = sub_22A4DB7DC();
  v12 = MEMORY[0x28223BE20](v11);
  v85 = (&v65 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = MEMORY[0x28223BE20](v12);
  v16 = (&v65 - v15);
  MEMORY[0x28223BE20](v14);
  v80 = (&v65 - v18);
  if (!*(a2 + 16))
  {

    return MEMORY[0x277D84FA0];
  }

  v66 = v10;
  v68 = v8;
  v20 = a1 + 56;
  v19 = *(a1 + 56);
  v21 = -1 << *(a1 + 32);
  v79 = ~v21;
  if (-v21 < 64)
  {
    v22 = ~(-1 << -v21);
  }

  else
  {
    v22 = -1;
  }

  v87 = (v22 & v19);
  v72 = (63 - v21) >> 6;
  v86 = v17 + 16;
  v77 = (v17 + 48);
  v78 = (v17 + 56);
  v76 = (v17 + 32);
  v82 = (a2 + 56);
  v67 = v17;
  v88 = (v17 + 8);

  v24 = 0;
  v69 = a1;
  for (i = a1 + 56; ; v20 = i)
  {
    v25 = v87;
    v26 = v24;
    if (v87)
    {
LABEL_14:
      v2 = (v25 - 1) & v25;
      v30 = v66;
      (*(v67 + 16))(v66, *(a1 + 48) + *(v67 + 72) * (__clz(__rbit64(v25)) | (v26 << 6)), v11);
      v31 = 0;
      v28 = v26;
    }

    else
    {
      v27 = v72 <= (v24 + 1) ? v24 + 1 : v72;
      v28 = v27 - 1;
      v29 = v24;
      while (1)
      {
        v26 = v29 + 1;
        if (__OFADD__(v29, 1))
        {
          goto LABEL_58;
        }

        if (v26 >= v72)
        {
          break;
        }

        v25 = *(v20 + 8 * v26);
        ++v29;
        if (v25)
        {
          goto LABEL_14;
        }
      }

      v2 = 0;
      v31 = 1;
      v30 = v66;
    }

    v74 = *v78;
    v74(v30, v31, 1, v11);
    v89 = a1;
    v90 = v20;
    v91 = v79;
    v92 = v28;
    v93 = v2;
    v73 = *v77;
    if (v73(v30, 1, v11) == 1)
    {
      sub_22953EAE4(v30, &unk_27D87D2A0, &unk_22A578BD0);
      v59 = a1;
      goto LABEL_53;
    }

    v71 = *v76;
    v71(v80, v30, v11);
    v70 = sub_229763570(&qword_281403880, 255, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
    v32 = sub_22A4DD4EC();
    v33 = -1 << *(a2 + 32);
    v24 = v32 & ~v33;
    v26 = v24 >> 6;
    v20 = 1 << v24;
    if (((1 << v24) & v82[v24 >> 6]) != 0)
    {
      break;
    }

    (*v88)(v80, v11);
LABEL_22:
    v24 = v28;
    v87 = v2;
  }

  v65 = v88 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v81 = ~v33;
  v34 = *(v67 + 72);
  v83 = *(v67 + 16);
  v84 = v34;
  while (1)
  {
    v83(v16, *(a2 + 48) + v84 * v24, v11);
    v35 = sub_229763570(&qword_281403870, 255, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
    v36 = sub_22A4DD58C();
    v87 = *v88;
    v87(v16, v11);
    if (v36)
    {
      break;
    }

    v24 = (v24 + 1) & v81;
    v26 = v24 >> 6;
    v20 = 1 << v24;
    if (((1 << v24) & v82[v24 >> 6]) == 0)
    {
      a1 = v69;
      v87(v80, v11);
      goto LABEL_22;
    }
  }

  v81 = v35;
  v37 = (v87)(v80, v11);
  v38 = *(a2 + 32);
  v65 = ((1 << v38) + 63) >> 6;
  v23 = 8 * v65;
  a1 = v69;
  if ((v38 & 0x3Fu) > 0xD)
  {
    goto LABEL_59;
  }

  while (2)
  {
    v66 = &v65;
    MEMORY[0x28223BE20](v37);
    v40 = &v65 - ((v39 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v40, v82, v39);
    v41 = *&v40[8 * v26] & ~v20;
    v42 = *(a2 + 16);
    v80 = v40;
    *&v40[8 * v26] = v41;
    v43 = v42 - 1;
    v24 = v68;
    v44 = i;
    v45 = v72;
LABEL_26:
    v67 = v43;
    while (v2)
    {
      v46 = v28;
LABEL_38:
      v49 = __clz(__rbit64(v2));
      v2 &= v2 - 1;
      v83(v24, *(a1 + 48) + (v49 | (v46 << 6)) * v84, v11);
      v50 = 0;
LABEL_39:
      v74(v24, v50, 1, v11);
      v89 = a1;
      v90 = v44;
      v91 = v79;
      v92 = v28;
      v93 = v2;
      if (v73(v24, 1, v11) == 1)
      {
        sub_22953EAE4(v24, &unk_27D87D2A0, &unk_22A578BD0);
        a2 = sub_22966F7C0(v80, v65, v67, a2);
        goto LABEL_52;
      }

      v71(v85, v24, v11);
      v51 = sub_22A4DD4EC();
      v52 = a2;
      v53 = -1 << *(a2 + 32);
      v54 = v51 & ~v53;
      v26 = v54 >> 6;
      v20 = 1 << v54;
      if (((1 << v54) & v82[v54 >> 6]) != 0)
      {
        v83(v16, *(v52 + 48) + v54 * v84, v11);
        v55 = sub_22A4DD58C();
        v87(v16, v11);
        if ((v55 & 1) == 0)
        {
          v56 = ~v53;
          do
          {
            v54 = (v54 + 1) & v56;
            v26 = v54 >> 6;
            v20 = 1 << v54;
            if (((1 << v54) & v82[v54 >> 6]) == 0)
            {
              goto LABEL_27;
            }

            v83(v16, *(v52 + 48) + v54 * v84, v11);
            v57 = sub_22A4DD58C();
            v87(v16, v11);
          }

          while ((v57 & 1) == 0);
        }

        v87(v85, v11);
        v58 = v80[v26];
        v80[v26] = v58 & ~v20;
        a2 = v52;
        a1 = v69;
        v24 = v68;
        v44 = i;
        v45 = v72;
        if ((v58 & v20) != 0)
        {
          v43 = v67 - 1;
          if (__OFSUB__(v67, 1))
          {
            __break(1u);
          }

          if (v67 == 1)
          {

            a2 = MEMORY[0x277D84FA0];
            goto LABEL_52;
          }

          goto LABEL_26;
        }
      }

      else
      {
LABEL_27:
        v87(v85, v11);
        a2 = v52;
        a1 = v69;
        v24 = v68;
        v44 = i;
        v45 = v72;
      }
    }

    if (v45 <= (v28 + 1))
    {
      v47 = v28 + 1;
    }

    else
    {
      v47 = v45;
    }

    v48 = v47 - 1;
    while (1)
    {
      v46 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        break;
      }

      if (v46 >= v45)
      {
        v2 = 0;
        v50 = 1;
        v28 = v48;
        goto LABEL_39;
      }

      v2 = *(v44 + 8 * v46);
      ++v28;
      if (v2)
      {
        v28 = v46;
        goto LABEL_38;
      }
    }

    __break(1u);
LABEL_58:
    __break(1u);
LABEL_59:
    v61 = v23;

    v80 = a2;
    v62 = v61;
    if (swift_stdlib_isStackAllocationSafe())
    {
      v63 = v80;

      a2 = v63;
      continue;
    }

    break;
  }

  v64 = swift_slowAlloc();
  memcpy(v64, v82, v62);
  a2 = sub_22976058C(v64, v65, v80, v24, &v89);

  MEMORY[0x22AAD4E50](v64, -1, -1);
LABEL_52:
  v59 = v89;
LABEL_53:
  sub_22953EE84(v59);
  return a2;
}

uint64_t sub_22975F5D4(uint64_t a1, uint64_t a2)
{
  v3 = a2;
  v84 = *MEMORY[0x277D85DE8];
  if (!*(a2 + 16))
  {

    return MEMORY[0x277D84FA0];
  }

  v4 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_22A4DE09C();
    sub_229562F68(0, &qword_281401B70, off_278666148);
    sub_22959E62C(&unk_27D87E480, &qword_281401B70, off_278666148);
    sub_22A4DDBAC();
    v4 = v79;
    v6 = v80;
    v7 = v81;
    v8 = v82;
    v9 = v83;
  }

  else
  {
    v10 = -1 << *(a1 + 32);
    v6 = a1 + 56;
    v7 = ~v10;
    v11 = -v10;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v9 = v12 & *(a1 + 56);

    v8 = 0;
  }

  v74 = v4;
  v75 = v6;
  v76 = v7;
  v77 = v8;
  v65 = v7;
  v13 = (v7 + 64) >> 6;
  v71 = (v3 + 56);
  v78 = v9;
  v68 = v6;
  v69 = v4;
  for (i = v13; ; v13 = i)
  {
    if (v4 < 0)
    {
      v21 = sub_22A4DE12C();
      if (!v21)
      {
        goto LABEL_65;
      }

      v72 = v21;
      sub_229562F68(0, &qword_281401B70, off_278666148);
      swift_dynamicCast();
      v19 = v73;
      v17 = v8;
      v2 = v9;
      if (!v73)
      {
        goto LABEL_65;
      }
    }

    else
    {
      v14 = v9;
      v15 = v8;
      if (v9)
      {
LABEL_20:
        v2 = (v14 - 1) & v14;
        v19 = *(*(v4 + 48) + ((v15 << 9) | (8 * __clz(__rbit64(v14)))));
        v20 = v19;
        v17 = v15;
      }

      else
      {
        if (v13 <= (v8 + 1))
        {
          v16 = v8 + 1;
        }

        else
        {
          v16 = v13;
        }

        v17 = v16 - 1;
        v18 = v8;
        while (1)
        {
          v15 = v18 + 1;
          if (__OFADD__(v18, 1))
          {
            goto LABEL_67;
          }

          if (v15 >= v13)
          {
            break;
          }

          v14 = *(v6 + 8 * v15);
          ++v18;
          if (v14)
          {
            goto LABEL_20;
          }
        }

        v19 = 0;
        v2 = 0;
      }

      v74 = v4;
      v75 = v6;
      v76 = v65;
      v77 = v17;
      v78 = v2;
      if (!v19)
      {
LABEL_65:
        v54 = v4;
        goto LABEL_63;
      }
    }

    v22 = v19;
    v23 = sub_22A4DDECC();
    v24 = -1 << *(v3 + 32);
    v8 = v23 & ~v24;
    v4 = v8 >> 6;
    v15 = 1 << v8;
    if (((1 << v8) & v71[v8 >> 6]) != 0)
    {
      break;
    }

LABEL_10:

    v8 = v17;
    v9 = v2;
    v6 = v68;
    v4 = v69;
  }

  v25 = ~v24;
  v26 = sub_229562F68(0, &qword_281401B70, off_278666148);
  v27 = *(*(v3 + 48) + 8 * v8);
  v70 = v26;
  while (1)
  {
    v28 = sub_22A4DDEDC();

    if (v28)
    {
      break;
    }

    v8 = (v8 + 1) & v25;
    v4 = v8 >> 6;
    v15 = 1 << v8;
    if (((1 << v8) & v71[v8 >> 6]) == 0)
    {
      goto LABEL_10;
    }

    v27 = *(*(v3 + 48) + 8 * v8);
  }

  v30 = *(v3 + 32);
  v62 = ((1 << v30) + 63) >> 6;
  v5 = 8 * v62;
  if ((v30 & 0x3Fu) > 0xD)
  {
    goto LABEL_68;
  }

  while (2)
  {
    v63 = &v61;
    MEMORY[0x28223BE20](v29);
    v32 = &v61 - ((v31 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v32, v71, v31);
    v33 = *&v32[8 * v4] & ~v15;
    v34 = *(v3 + 16);
    v64 = v32;
    *&v32[8 * v4] = v33;
    v4 = v34 - 1;
    v36 = v68;
    v35 = v69;
    v37 = i;
LABEL_33:
    v66 = v4;
    while (v35 < 0)
    {
      v38 = sub_22A4DE12C();
      if (!v38)
      {
        goto LABEL_61;
      }

      v72 = v38;
      swift_dynamicCast();
      v39 = v73;
      if (!v73)
      {
        goto LABEL_61;
      }

LABEL_50:
      v44 = sub_22A4DDECC();
      v45 = v3;
      v46 = -1 << *(v3 + 32);
      v47 = v44 & ~v46;
      v48 = v47 >> 6;
      v49 = 1 << v47;
      if (((1 << v47) & v71[v47 >> 6]) != 0)
      {
        v50 = ~v46;
        while (1)
        {
          v8 = *(*(v45 + 48) + 8 * v47);
          v51 = sub_22A4DDEDC();

          if (v51)
          {
            break;
          }

          v47 = (v47 + 1) & v50;
          v48 = v47 >> 6;
          v49 = 1 << v47;
          if (((1 << v47) & v71[v47 >> 6]) == 0)
          {
            goto LABEL_34;
          }
        }

        v52 = v64[v48];
        v64[v48] = v52 & ~v49;
        v53 = (v52 & v49) == 0;
        v3 = v45;
        v36 = v68;
        v35 = v69;
        v4 = v66;
        v37 = i;
        if (!v53)
        {
          v4 = v66 - 1;
          if (__OFSUB__(v66, 1))
          {
            __break(1u);
          }

          if (v66 == 1)
          {

            v3 = MEMORY[0x277D84FA0];
            goto LABEL_62;
          }

          goto LABEL_33;
        }
      }

      else
      {
LABEL_34:

        v3 = v45;
        v36 = v68;
        v35 = v69;
        v4 = v66;
        v37 = i;
      }
    }

    if (v2)
    {
      v15 = v17;
LABEL_48:
      v42 = __clz(__rbit64(v2));
      v2 &= v2 - 1;
      v39 = *(*(v35 + 48) + ((v15 << 9) | (8 * v42)));
      v43 = v39;
      v41 = v15;
LABEL_49:
      v74 = v35;
      v75 = v36;
      v76 = v65;
      v77 = v41;
      v17 = v41;
      v78 = v2;
      if (!v39)
      {
LABEL_61:
        v3 = sub_22966FAE8(v64, v62, v4, v3);
        goto LABEL_62;
      }

      goto LABEL_50;
    }

    if (v37 <= (v17 + 1))
    {
      v40 = v17 + 1;
    }

    else
    {
      v40 = v37;
    }

    v41 = v40 - 1;
    while (1)
    {
      v15 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v15 >= v37)
      {
        v39 = 0;
        v2 = 0;
        goto LABEL_49;
      }

      v2 = *(v36 + 8 * v15);
      ++v17;
      if (v2)
      {
        goto LABEL_48;
      }
    }

    __break(1u);
LABEL_67:
    __break(1u);
LABEL_68:
    v56 = v5;

    v57 = v56;
    if (swift_stdlib_isStackAllocationSafe())
    {

      continue;
    }

    break;
  }

  v58 = swift_slowAlloc();
  memcpy(v58, v71, v57);
  sub_229760A68(v58, v62, v3, v8, &v74);
  v60 = v59;

  MEMORY[0x22AAD4E50](v58, -1, -1);
  v3 = v60;
LABEL_62:
  v54 = v74;
LABEL_63:
  sub_22953EE84(v54);
  return v3;
}

uint64_t sub_22975FC6C(uint64_t a1, uint64_t a2, unint64_t *a3, void *a4, unint64_t *a5, uint64_t (*a6)(unint64_t *, unint64_t, uint64_t, uint64_t), void (*a7)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v72 = a4;
  v70 = a3;
  v8 = a2;
  v90 = *MEMORY[0x277D85DE8];
  if (!*(a2 + 16))
  {

    return MEMORY[0x277D84FA0];
  }

  v9 = a1;
  v69 = a6;
  v68 = a7;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_22A4DE09C();
    v7 = sub_229562F68(0, v70, v72);
    sub_22959E62C(a5, v70, v72);
    sub_22A4DDBAC();
    v9 = v85;
    v12 = v86;
    v13 = v87;
    v14 = v88;
    v15 = v89;
  }

  else
  {
    v16 = -1 << *(a1 + 32);
    v12 = a1 + 56;
    v13 = ~v16;
    v17 = -v16;
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v15 = v18 & *(a1 + 56);

    v14 = 0;
  }

  v80 = v9;
  v81 = v12;
  v82 = v13;
  v83 = v14;
  v71 = v13;
  v19 = (v13 + 64) >> 6;
  v77 = (v8 + 56);
  v84 = v15;
  v74 = v12;
  v75 = v9;
  for (i = v19; ; v19 = i)
  {
    if (v9 < 0)
    {
      v27 = sub_22A4DE12C();
      if (!v27)
      {
        goto LABEL_65;
      }

      v78 = v27;
      sub_229562F68(0, v70, v72);
      swift_dynamicCast();
      v25 = v79;
      v23 = v14;
      v7 = v15;
      if (!v79)
      {
        goto LABEL_65;
      }
    }

    else
    {
      v20 = v15;
      v21 = v14;
      if (v15)
      {
LABEL_20:
        v7 = (v20 - 1) & v20;
        v25 = *(*(v9 + 48) + ((v21 << 9) | (8 * __clz(__rbit64(v20)))));
        v26 = v25;
        v23 = v21;
      }

      else
      {
        if (v19 <= v14 + 1)
        {
          v22 = v14 + 1;
        }

        else
        {
          v22 = v19;
        }

        v23 = v22 - 1;
        v24 = v14;
        while (1)
        {
          v21 = v24 + 1;
          if (__OFADD__(v24, 1))
          {
            goto LABEL_67;
          }

          if (v21 >= v19)
          {
            break;
          }

          v20 = *(v12 + 8 * v21);
          ++v24;
          if (v20)
          {
            goto LABEL_20;
          }
        }

        v25 = 0;
        v7 = 0;
      }

      v80 = v9;
      v81 = v12;
      v82 = v71;
      v83 = v23;
      v84 = v7;
      if (!v25)
      {
LABEL_65:
        v60 = v9;
        goto LABEL_63;
      }
    }

    v28 = v25;
    v29 = sub_22A4DDECC();
    v30 = -1 << *(v8 + 32);
    v15 = v29 & ~v30;
    v9 = v15 >> 6;
    v21 = 1 << v15;
    if (((1 << v15) & v77[v15 >> 6]) != 0)
    {
      break;
    }

LABEL_10:

    v14 = v23;
    v15 = v7;
    v12 = v74;
    v9 = v75;
  }

  v31 = ~v30;
  v32 = sub_229562F68(0, v70, v72);
  v33 = *(*(v8 + 48) + 8 * v15);
  v76 = v32;
  while (1)
  {
    v34 = sub_22A4DDEDC();

    if (v34)
    {
      break;
    }

    v15 = (v15 + 1) & v31;
    v9 = v15 >> 6;
    v21 = 1 << v15;
    if (((1 << v15) & v77[v15 >> 6]) == 0)
    {
      goto LABEL_10;
    }

    v33 = *(*(v8 + 48) + 8 * v15);
  }

  v36 = *(v8 + 32);
  v67 = ((1 << v36) + 63) >> 6;
  v11 = 8 * v67;
  if ((v36 & 0x3Fu) > 0xD)
  {
    goto LABEL_68;
  }

  while (2)
  {
    v68 = &v67;
    MEMORY[0x28223BE20](v35);
    v38 = &v67 - ((v37 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v38, v77, v37);
    v39 = *&v38[8 * v9] & ~v21;
    v40 = *(v8 + 16);
    v70 = v38;
    *&v38[8 * v9] = v39;
    v9 = v40 - 1;
    v42 = v74;
    v41 = v75;
    v43 = i;
LABEL_33:
    v72 = v9;
    while (v41 < 0)
    {
      v44 = sub_22A4DE12C();
      if (!v44)
      {
        goto LABEL_61;
      }

      v78 = v44;
      swift_dynamicCast();
      v15 = v79;
      if (!v79)
      {
        goto LABEL_61;
      }

LABEL_50:
      v49 = sub_22A4DDECC();
      v50 = v8;
      v51 = -1 << *(v8 + 32);
      v52 = v49 & ~v51;
      v53 = v52 >> 6;
      v54 = 1 << v52;
      if (((1 << v52) & v77[v52 >> 6]) != 0)
      {
        v55 = ~v51;
        while (1)
        {
          v56 = *(*(v50 + 48) + 8 * v52);
          v57 = sub_22A4DDEDC();

          if (v57)
          {
            break;
          }

          v52 = (v52 + 1) & v55;
          v53 = v52 >> 6;
          v54 = 1 << v52;
          if (((1 << v52) & v77[v52 >> 6]) == 0)
          {
            goto LABEL_34;
          }
        }

        v43 = i;

        v58 = v70[v53];
        v70[v53] = v58 & ~v54;
        v59 = (v58 & v54) == 0;
        v8 = v50;
        v42 = v74;
        v41 = v75;
        v9 = v72;
        if (!v59)
        {
          v9 = v72 - 1;
          if (__OFSUB__(v72, 1))
          {
            __break(1u);
          }

          if (v72 == 1)
          {

            v8 = MEMORY[0x277D84FA0];
            goto LABEL_62;
          }

          goto LABEL_33;
        }
      }

      else
      {
LABEL_34:

        v8 = v50;
        v42 = v74;
        v41 = v75;
        v9 = v72;
        v43 = i;
      }
    }

    if (v7)
    {
      v21 = v23;
LABEL_48:
      v47 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      v15 = *(*(v41 + 48) + ((v21 << 9) | (8 * v47)));
      v48 = v15;
      v46 = v21;
LABEL_49:
      v80 = v41;
      v81 = v42;
      v82 = v71;
      v83 = v46;
      v23 = v46;
      v84 = v7;
      if (!v15)
      {
LABEL_61:
        v8 = v69(v70, v67, v9, v8);
        goto LABEL_62;
      }

      goto LABEL_50;
    }

    if (v43 <= v23 + 1)
    {
      v45 = v23 + 1;
    }

    else
    {
      v45 = v43;
    }

    v46 = v45 - 1;
    while (1)
    {
      v21 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        break;
      }

      if (v21 >= v43)
      {
        v15 = 0;
        v7 = 0;
        goto LABEL_49;
      }

      v7 = *(v42 + 8 * v21);
      ++v23;
      if (v7)
      {
        goto LABEL_48;
      }
    }

    __break(1u);
LABEL_67:
    __break(1u);
LABEL_68:
    v62 = v11;

    v63 = v8;
    v64 = v62;
    if (swift_stdlib_isStackAllocationSafe())
    {

      v8 = v63;
      continue;
    }

    break;
  }

  v65 = swift_slowAlloc();
  memcpy(v65, v77, v64);
  sub_229760D0C(v65, v67, v63, v15, &v80, v70, v72, v68);
  v8 = v66;

  MEMORY[0x22AAD4E50](v65, -1, -1);
LABEL_62:
  v60 = v80;
LABEL_63:
  sub_22953EE84(v60);
  return v8;
}

void sub_22976033C(unint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t *a5)
{
  v5 = a5;
  v7 = *(a3 + 16);
  *(a1 + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v8 = v7 - 1;
  v30 = a3 + 56;
  while (2)
  {
    v27 = v8;
    do
    {
      while (1)
      {
        if (*v5 >> 62)
        {
          v9 = sub_22A4DE0EC();
        }

        else
        {
          v9 = *((*v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v10 = v5[1];
        if (v10 == v9)
        {

          sub_22966F34C(a1, a2, v27, a3);
          return;
        }

        v11 = *v5;
        if ((*v5 & 0xC000000000000001) != 0)
        {
          v12 = MEMORY[0x22AAD13F0](v5[1]);
          v25 = v5[1];
          v13 = v25 + 1;
          if (__OFADD__(v25, 1))
          {
            goto LABEL_27;
          }
        }

        else
        {
          if ((v10 & 0x8000000000000000) != 0)
          {
            __break(1u);
LABEL_27:
            __break(1u);
LABEL_28:
            __break(1u);
LABEL_29:
            __break(1u);
            return;
          }

          if (v10 >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_28;
          }

          v12 = *(v11 + 8 * v10 + 32);
          v13 = v10 + 1;
          if (__OFADD__(v10, 1))
          {
            goto LABEL_27;
          }
        }

        v5[1] = v13;
        v14 = sub_22A4DDECC();
        v15 = -1 << *(a3 + 32);
        v16 = v14 & ~v15;
        v17 = v16 >> 6;
        v18 = 1 << v16;
        if (((1 << v16) & *(v30 + 8 * (v16 >> 6))) == 0)
        {
          goto LABEL_3;
        }

        sub_229562F68(0, &qword_281401920, off_278666038);
        v19 = *(*(a3 + 48) + 8 * v16);
        v20 = sub_22A4DDEDC();

        if (v20)
        {
          break;
        }

        v21 = ~v15;
        while (1)
        {
          v16 = (v16 + 1) & v21;
          v17 = v16 >> 6;
          v18 = 1 << v16;
          if (((1 << v16) & *(v30 + 8 * (v16 >> 6))) == 0)
          {
            break;
          }

          v22 = *(*(a3 + 48) + 8 * v16);
          v23 = sub_22A4DDEDC();

          if (v23)
          {
            goto LABEL_16;
          }
        }

LABEL_3:

        v5 = a5;
      }

LABEL_16:
      v5 = a5;

      v24 = a1[v17];
      a1[v17] = v24 & ~v18;
    }

    while ((v24 & v18) == 0);
    v8 = v27 - 1;
    if (__OFSUB__(v27, 1))
    {
      goto LABEL_29;
    }

    if (v27 != 1)
    {
      continue;
    }

    break;
  }
}

uint64_t sub_22976058C(unint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v47 = a2;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D2A0, &unk_22A578BD0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v46 - v10;
  v12 = sub_22A4DB7DC();
  v13 = MEMORY[0x28223BE20](v12);
  v57 = &v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v13);
  v63 = &v46 - v16;
  v17 = *(a3 + 16);
  v18 = (a4 >> 3) & 0x1FFFFFFFFFFFFFF8;
  v19 = *(a1 + v18);
  v49 = a1;
  v50 = v11;
  *(a1 + v18) = v19 & ((-1 << a4) - 1);
  v20 = v17 - 1;
  v60 = v21 + 16;
  v61 = a3;
  v54 = (v21 + 48);
  v55 = (v21 + 56);
  v53 = (v21 + 32);
  v59 = a3 + 56;
  v56 = v21;
  v62 = (v21 + 8);
  v51 = a5;
  while (2)
  {
    v48 = v20;
    do
    {
      while (1)
      {
        v23 = *a5;
        v24 = a5[1];
        v26 = a5[2];
        v25 = a5[3];
        v27 = a5[4];
        if (!v27)
        {
          v29 = (v26 + 64) >> 6;
          if (v29 <= v25 + 1)
          {
            v30 = v25 + 1;
          }

          else
          {
            v30 = (v26 + 64) >> 6;
          }

          v31 = v30 - 1;
          while (1)
          {
            v28 = v25 + 1;
            if (__OFADD__(v25, 1))
            {
              break;
            }

            if (v28 >= v29)
            {
              v32 = 0;
              v33 = 1;
              goto LABEL_15;
            }

            v27 = *(v24 + 8 * v28);
            ++v25;
            if (v27)
            {
              goto LABEL_14;
            }
          }

          __break(1u);
          goto LABEL_30;
        }

        v28 = a5[3];
LABEL_14:
        v32 = (v27 - 1) & v27;
        (*(v56 + 16))(v11, *(v23 + 48) + *(v56 + 72) * (__clz(__rbit64(v27)) | (v28 << 6)), v12);
        v33 = 0;
        v31 = v28;
LABEL_15:
        (*v55)(v11, v33, 1, v12);
        *a5 = v23;
        a5[1] = v24;
        a5[2] = v26;
        a5[3] = v31;
        a5[4] = v32;
        if ((*v54)(v11, 1, v12) == 1)
        {
          sub_22953EAE4(v11, &unk_27D87D2A0, &unk_22A578BD0);
          v45 = v61;

          return sub_22966F7C0(v49, v47, v48, v45);
        }

        (*v53)(v63, v11, v12);
        v34 = v61;
        sub_229763570(&qword_281403880, 255, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
        v35 = sub_22A4DD4EC();
        v36 = -1 << *(v34 + 32);
        v37 = v35 & ~v36;
        v38 = v37 >> 6;
        v39 = 1 << v37;
        if (((1 << v37) & *(v59 + 8 * (v37 >> 6))) != 0)
        {
          break;
        }

        v22 = *v62;
LABEL_4:
        result = (v22)(v63, v12);
      }

      v52 = v62 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v58 = ~v36;
      v40 = *(v56 + 72);
      v41 = *(v56 + 16);
      while (1)
      {
        v42 = v57;
        v41(v57, *(v61 + 48) + v40 * v37, v12);
        sub_229763570(&qword_281403870, 255, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
        v43 = sub_22A4DD58C();
        v22 = *v62;
        (*v62)(v42, v12);
        if (v43)
        {
          break;
        }

        v37 = (v37 + 1) & v58;
        v38 = v37 >> 6;
        v39 = 1 << v37;
        if (((1 << v37) & *(v59 + 8 * (v37 >> 6))) == 0)
        {
          v11 = v50;
          a5 = v51;
          goto LABEL_4;
        }
      }

      result = (v22)(v63, v12);
      v11 = v50;
      v44 = v49[v38];
      v49[v38] = v44 & ~v39;
      a5 = v51;
    }

    while ((v44 & v39) == 0);
    v20 = v48 - 1;
    if (__OFSUB__(v48, 1))
    {
LABEL_30:
      __break(1u);
      return result;
    }

    if (v48 != 1)
    {
      continue;
    }

    return MEMORY[0x277D84FA0];
  }
}

void sub_229760A68(unint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v5 = a5;
  v7 = *(a3 + 16);
  *(a1 + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v8 = v7 - 1;
  v33 = a3 + 56;
  while (2)
  {
    v30 = v8;
    do
    {
      while (1)
      {
        if ((*v5 & 0x8000000000000000) != 0)
        {
          if (!sub_22A4DE12C())
          {
            goto LABEL_29;
          }

          sub_229562F68(0, &qword_281401B70, off_278666148);
          swift_dynamicCast();
          v12 = v34;
          if (!v34)
          {
            goto LABEL_29;
          }
        }

        else
        {
          v9 = v5[3];
          v10 = v5[4];
          if (!v10)
          {
            v13 = (v5[2] + 64) >> 6;
            if (v13 <= v9 + 1)
            {
              v14 = v9 + 1;
            }

            else
            {
              v14 = (v5[2] + 64) >> 6;
            }

            v15 = v14 - 1;
            while (1)
            {
              v11 = v9 + 1;
              if (__OFADD__(v9, 1))
              {
                break;
              }

              if (v11 >= v13)
              {
                v5[3] = v15;
                v5[4] = 0;
                goto LABEL_29;
              }

              v10 = *(v5[1] + 8 * v11);
              ++v9;
              if (v10)
              {
                goto LABEL_17;
              }
            }

            __break(1u);
            goto LABEL_31;
          }

          v11 = v5[3];
LABEL_17:
          v16 = (v10 - 1) & v10;
          v12 = *(*(*v5 + 48) + ((v11 << 9) | (8 * __clz(__rbit64(v10)))));
          v17 = v12;
          v5[3] = v11;
          v5[4] = v16;
          if (!v12)
          {
LABEL_29:

            sub_22966FAE8(a1, a2, v30, a3);
            return;
          }
        }

        v18 = sub_22A4DDECC();
        v19 = -1 << *(a3 + 32);
        v20 = v18 & ~v19;
        v21 = v20 >> 6;
        v22 = 1 << v20;
        if (((1 << v20) & *(v33 + 8 * (v20 >> 6))) == 0)
        {
          goto LABEL_3;
        }

        sub_229562F68(0, &qword_281401B70, off_278666148);
        v23 = *(*(a3 + 48) + 8 * v20);
        v24 = sub_22A4DDEDC();

        if (v24)
        {
          break;
        }

        v25 = ~v19;
        while (1)
        {
          v20 = (v20 + 1) & v25;
          v21 = v20 >> 6;
          v22 = 1 << v20;
          if (((1 << v20) & *(v33 + 8 * (v20 >> 6))) == 0)
          {
            break;
          }

          v26 = *(*(a3 + 48) + 8 * v20);
          v27 = sub_22A4DDEDC();

          if (v27)
          {
            goto LABEL_23;
          }
        }

LABEL_3:

        v5 = a5;
      }

LABEL_23:

      v28 = a1[v21];
      a1[v21] = v28 & ~v22;
      v5 = a5;
    }

    while ((v28 & v22) == 0);
    v8 = v30 - 1;
    if (__OFSUB__(v30, 1))
    {
LABEL_31:
      __break(1u);
      return;
    }

    if (v30 != 1)
    {
      continue;
    }

    break;
  }
}

void sub_229760D0C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5, unint64_t *a6, void *a7, void (*a8)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v8 = a5;
  v10 = *(a3 + 16);
  *(a1 + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v11 = v10 - 1;
  v39 = a3 + 56;
  while (2)
  {
    v34 = v11;
    do
    {
      while (1)
      {
        if ((*v8 & 0x8000000000000000) != 0)
        {
          if (!sub_22A4DE12C())
          {
            goto LABEL_30;
          }

          sub_229562F68(0, a6, a7);
          swift_dynamicCast();
          v15 = v40;
          if (!v40)
          {
            goto LABEL_30;
          }
        }

        else
        {
          v12 = v8[3];
          v13 = v8[4];
          if (!v13)
          {
            v16 = (v8[2] + 64) >> 6;
            if (v16 <= v12 + 1)
            {
              v17 = v12 + 1;
            }

            else
            {
              v17 = (v8[2] + 64) >> 6;
            }

            v18 = v17 - 1;
            while (1)
            {
              v14 = v12 + 1;
              if (__OFADD__(v12, 1))
              {
                break;
              }

              if (v14 >= v16)
              {
                v15 = 0;
                v19 = 0;
                goto LABEL_18;
              }

              v13 = *(v8[1] + 8 * v14);
              ++v12;
              if (v13)
              {
                goto LABEL_17;
              }
            }

            __break(1u);
            goto LABEL_32;
          }

          v14 = v8[3];
LABEL_17:
          v19 = (v13 - 1) & v13;
          v15 = *(*(*v8 + 48) + ((v14 << 9) | (8 * __clz(__rbit64(v13)))));
          v20 = v15;
          v18 = v14;
LABEL_18:
          v8[3] = v18;
          v8[4] = v19;
          if (!v15)
          {
LABEL_30:

            a8(a1, a2, v34, a3);
            return;
          }
        }

        v21 = sub_22A4DDECC();
        v22 = -1 << *(a3 + 32);
        v23 = v21 & ~v22;
        v24 = v23 >> 6;
        v25 = 1 << v23;
        if (((1 << v23) & *(v39 + 8 * (v23 >> 6))) == 0)
        {
          goto LABEL_3;
        }

        sub_229562F68(0, a6, a7);
        v26 = *(*(a3 + 48) + 8 * v23);
        v27 = sub_22A4DDEDC();

        if (v27)
        {
          break;
        }

        v28 = ~v22;
        while (1)
        {
          v23 = (v23 + 1) & v28;
          v24 = v23 >> 6;
          v25 = 1 << v23;
          if (((1 << v23) & *(v39 + 8 * (v23 >> 6))) == 0)
          {
            break;
          }

          v29 = *(*(a3 + 48) + 8 * v23);
          v30 = sub_22A4DDEDC();

          if (v30)
          {
            goto LABEL_24;
          }
        }

LABEL_3:

        v8 = a5;
      }

LABEL_24:
      v8 = a5;

      v31 = *(a1 + 8 * v24);
      *(a1 + 8 * v24) = v31 & ~v25;
    }

    while ((v31 & v25) == 0);
    v11 = v34 - 1;
    if (__OFSUB__(v34, 1))
    {
LABEL_32:
      __break(1u);
      return;
    }

    if (v34 != 1)
    {
      continue;
    }

    break;
  }
}

unint64_t *sub_229760F9C(uint64_t isStackAllocationSafe, uint64_t a2)
{
  v3 = isStackAllocationSafe;
  v17[6] = *MEMORY[0x277D85DE8];
  v16 = isStackAllocationSafe;
  v4 = *(a2 + 32);
  v5 = v4 & 0x3F;
  v17[3] = &v16;
  v17[4] = a2;
  v6 = (1 << v4) + 63;
  v7 = v6 >> 6;
  if (v5 <= 0xD || (v12 = 8 * (v6 >> 6), isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe & 1) != 0))
  {
    MEMORY[0x28223BE20](isStackAllocationSafe);
    v9 = &v15 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v9, v8);
    v10 = sub_229761514(v9, v7, v3, a2);
  }

  else
  {
    v13 = v12;
    v14 = swift_slowAlloc();
    bzero(v14, v13);
    sub_229763EF4(v14, v7, v17);
    v10 = v17[0];

    MEMORY[0x22AAD4E50](v14, -1, -1);
  }

  return v10;
}

uint64_t sub_22976113C(uint64_t isStackAllocationSafe, uint64_t a2)
{
  v3 = isStackAllocationSafe;
  v18[6] = *MEMORY[0x277D85DE8];
  v17 = isStackAllocationSafe;
  v4 = *(a2 + 32);
  v5 = v4 & 0x3F;
  v18[3] = &v17;
  v18[4] = a2;
  v6 = (1 << v4) + 63;
  v7 = v6 >> 6;
  if (v5 <= 0xD || (v13 = 8 * (v6 >> 6), isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe & 1) != 0))
  {
    MEMORY[0x28223BE20](isStackAllocationSafe);
    v9 = &v16 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v9, v8);
    sub_2297616F4(v9, v7, v3, a2);
    v11 = v10;
  }

  else
  {
    v14 = v13;
    v15 = swift_slowAlloc();
    bzero(v15, v14);
    sub_2297635B8(v15, v7, v18);
    v11 = v18[0];

    MEMORY[0x22AAD4E50](v15, -1, -1);
  }

  return v11;
}

void *sub_2297612DC(uint64_t a1, uint64_t a2)
{
  v3 = a1 & 0xC000000000000001;
  if ((a2 & 0xC000000000000001) != 0)
  {
    if (v3)
    {
      if (a2 < 0)
      {
        v4 = a2;
      }

      else
      {
        v4 = a2 & 0xFFFFFFFFFFFFFF8;
      }

      v5 = sub_22A4DE0EC();
      a2 = sub_229572B8C(v4, v5);
      goto LABEL_8;
    }

    sub_229562F68(0, &unk_27D8808F0, 0x277CD1B58);
    v7 = MEMORY[0x277D84FA0];
    v17 = MEMORY[0x277D84FA0];
    sub_22A4DE09C();
    if (sub_22A4DE12C())
    {
      v8 = a1 + 56;
      do
      {
        swift_dynamicCast();
        if (*(a1 + 16) && (v9 = sub_22A4DDECC(), v10 = -1 << *(a1 + 32), v11 = v9 & ~v10, ((*(v8 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0))
        {
          v12 = ~v10;
          while (1)
          {
            v13 = *(*(a1 + 48) + 8 * v11);
            v14 = sub_22A4DDEDC();

            if (v14)
            {
              break;
            }

            v11 = (v11 + 1) & v12;
            if (((*(v8 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
            {
              goto LABEL_13;
            }
          }

          v15 = *(v7 + 16);
          if (*(v7 + 24) <= v15)
          {
            sub_229574584(v15 + 1);
          }

          v7 = v17;
          sub_22957A4A8();
        }

        else
        {
LABEL_13:
        }
      }

      while (sub_22A4DE12C());
    }

    return v7;
  }

  else
  {
    if (v3)
    {
LABEL_8:

      return sub_22976113C(a1, a2);
    }

    return sub_229670018(a1, a2);
  }
}

unint64_t *sub_229761514(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = 0;
  v6 = 0;
  v7 = *(a3 + 16);
  v27 = a3 + 32;
  v8 = a4 + 56;
  v25 = result;
  v26 = v7;
  while (2)
  {
    v24 = v5;
    if (v6 != v7)
    {
      while (1)
      {
        while (1)
        {
          if (v6 >= v7)
          {
            __break(1u);
LABEL_26:
            __break(1u);
            return result;
          }

          v9 = v6 + 1;
          if (__OFADD__(v6, 1))
          {
            goto LABEL_26;
          }

          v10 = (v27 + 16 * v6);
          v12 = *v10;
          v11 = v10[1];
          sub_22A4DE77C();

          sub_22A4DD6BC();
          v13 = sub_22A4DE7BC();
          v14 = -1 << *(a4 + 32);
          v15 = v13 & ~v14;
          v16 = v15 >> 6;
          v17 = 1 << v15;
          if (((1 << v15) & *(v8 + 8 * (v15 >> 6))) != 0)
          {
            break;
          }

LABEL_5:
          v6 = v9;

          if (v9 == v7)
          {
            goto LABEL_24;
          }
        }

        v18 = (*(a4 + 48) + 16 * v15);
        if (*v18 != v12 || v18[1] != v11)
        {
          v20 = ~v14;
          while ((sub_22A4DE60C() & 1) == 0)
          {
            v15 = (v15 + 1) & v20;
            v16 = v15 >> 6;
            v17 = 1 << v15;
            if (((1 << v15) & *(v8 + 8 * (v15 >> 6))) == 0)
            {
              v7 = v26;
              goto LABEL_5;
            }

            v21 = (*(a4 + 48) + 16 * v15);
            if (*v21 == v12 && v21[1] == v11)
            {
              break;
            }
          }
        }

        v22 = v25[v16];
        v25[v16] = v22 | v17;
        if ((v22 & v17) == 0)
        {
          break;
        }

        v7 = v26;
        v6 = v9;
        if (v9 == v26)
        {
          goto LABEL_24;
        }
      }

      v5 = v24 + 1;
      v7 = v26;
      v6 = v9;
      if (!__OFADD__(v24, 1))
      {
        continue;
      }

      __break(1u);
    }

    break;
  }

LABEL_24:

  return sub_22966F360(v25, a2, v24, a4);
}

void sub_2297616F4(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a3;
  if ((a3 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_22A4DE09C();
    sub_229562F68(0, &unk_27D8808F0, 0x277CD1B58);
    sub_22959E62C(&qword_27D87E468, &unk_27D8808F0, 0x277CD1B58);
    sub_22A4DDBAC();
    v4 = v38;
    v5 = v39;
    v6 = v40;
    v7 = v41;
    v8 = v42;
  }

  else
  {
    v9 = -1 << *(a3 + 32);
    v5 = a3 + 56;
    v6 = ~v9;
    v10 = -v9;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v8 = v11 & *(a3 + 56);

    v7 = 0;
  }

  v32 = 0;
  v12 = (v6 + 64) >> 6;
  v36 = a4 + 56;
  v34 = v5;
  v35 = v4;
LABEL_8:
  v13 = v7;
  v14 = v8;
  while (v4 < 0)
  {
    if (!sub_22A4DE12C())
    {
      goto LABEL_29;
    }

    sub_229562F68(0, &unk_27D8808F0, 0x277CD1B58);
    swift_dynamicCast();
    v17 = v43;
    v7 = v13;
    v8 = v14;
    if (!v43)
    {
      goto LABEL_29;
    }

LABEL_19:
    v18 = sub_22A4DDECC();
    v19 = -1 << *(a4 + 32);
    v20 = v18 & ~v19;
    v21 = v20 >> 6;
    v22 = 1 << v20;
    if (((1 << v20) & *(v36 + 8 * (v20 >> 6))) == 0)
    {
      goto LABEL_9;
    }

    sub_229562F68(0, &unk_27D8808F0, 0x277CD1B58);
    v23 = *(*(a4 + 48) + 8 * v20);
    v24 = sub_22A4DDEDC();

    if (v24)
    {
LABEL_24:
      v12 = (v6 + 64) >> 6;

      v28 = a1[v21];
      a1[v21] = v28 | v22;
      v13 = v7;
      v14 = v8;
      v29 = (v28 & v22) == 0;
      v5 = v34;
      v4 = v35;
      if (v29)
      {
        if (!__OFADD__(v32++, 1))
        {
          goto LABEL_8;
        }

        __break(1u);
LABEL_29:
        sub_22953EE84(v4);

        sub_22966FB24(a1, a2, v32, a4);
        return;
      }
    }

    else
    {
      v25 = ~v19;
      while (1)
      {
        v20 = (v20 + 1) & v25;
        v21 = v20 >> 6;
        v22 = 1 << v20;
        if (((1 << v20) & *(v36 + 8 * (v20 >> 6))) == 0)
        {
          break;
        }

        v26 = *(*(a4 + 48) + 8 * v20);
        v27 = sub_22A4DDEDC();

        if (v27)
        {
          goto LABEL_24;
        }
      }

LABEL_9:

      v13 = v7;
      v12 = (v6 + 64) >> 6;
      v14 = v8;
      v5 = v34;
      v4 = v35;
    }
  }

  v15 = v13;
  v16 = v14;
  v7 = v13;
  if (v14)
  {
LABEL_15:
    v8 = (v16 - 1) & v16;
    v17 = *(*(v4 + 48) + ((v7 << 9) | (8 * __clz(__rbit64(v16)))));
    if (!v17)
    {
      goto LABEL_29;
    }

    goto LABEL_19;
  }

  while (1)
  {
    v7 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v7 >= v12)
    {
      goto LABEL_29;
    }

    v16 = *(v5 + 8 * v7);
    ++v15;
    if (v16)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
}

uint64_t sub_229761A4C(void *a1, void *a2)
{
  v4 = MEMORY[0x277D84F90];
  v12 = MEMORY[0x277D84F90];
  if ([a1 state])
  {
    v5 = [a2 smartSpeakerCurrentMediaStateCharacteristic];
    if (v5)
    {
      v6 = v5;
      MEMORY[0x22AAD09E0]();
      if (*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v11 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_22A4DD85C();
      }

      sub_22A4DD87C();

      v4 = v12;
    }
  }

  v7 = [a1 volume];
  if (v7)
  {

    v8 = [a2 smartSpeakerVolumeCharacteristic];
    if (v8)
    {
      v9 = v8;
      MEMORY[0x22AAD09E0]();
      if (*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_22A4DD85C();
      }

      sub_22A4DD87C();

      return v12;
    }
  }

  return v4;
}

void sub_229761BB8(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_22A4DE09C();
    sub_229562F68(0, &qword_27D880918, off_278666280);
    sub_22959E62C(&qword_27D880920, &qword_27D880918, off_278666280);
    sub_22A4DDBAC();
    v3 = v47[4];
    v44 = v47[5];
    v4 = v47[6];
    v5 = v47[7];
    v6 = v47[8];
  }

  else
  {
    v7 = -1 << *(a1 + 32);
    v44 = a1 + 56;
    v4 = ~v7;
    v8 = -v7;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v6 = v9 & *(a1 + 56);

    v5 = 0;
  }

  v10 = MEMORY[0x277D84F90];
  v41 = v3;
  while (v3 < 0)
  {
    v16 = sub_22A4DE12C();
    if (!v16)
    {
      goto LABEL_52;
    }

    v47[11] = v16;
    sub_229562F68(0, &qword_27D880918, off_278666280);
    swift_dynamicCast();
    v15 = v47[0];
    v13 = v5;
    v14 = v6;
    if (!v47[0])
    {
      goto LABEL_52;
    }

LABEL_18:
    if ((swift_task_isCurrentExecutor() & 1) == 0)
    {
      swift_task_reportUnexpectedExecutor();
    }

    objc_opt_self();
    v17 = swift_dynamicCastObjCClass();
    v46 = v14;
    if (v17)
    {
      v18 = v17;
      v19 = v15;
      v20 = sub_229761A4C(a3, v18);
    }

    else
    {
      v20 = MEMORY[0x277D84F90];
    }

    v21 = v20 >> 62;
    if (v20 >> 62)
    {
      v22 = sub_22A4DE0EC();
    }

    else
    {
      v22 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v23 = v10 >> 62;
    if (v10 >> 62)
    {
      v40 = sub_22A4DE0EC();
      v25 = v40 + v22;
      if (__OFADD__(v40, v22))
      {
LABEL_51:
        __break(1u);
LABEL_52:
        sub_22953EE84(v3);
        return;
      }
    }

    else
    {
      v24 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v25 = v24 + v22;
      if (__OFADD__(v24, v22))
      {
        goto LABEL_51;
      }
    }

    if (!swift_isUniquelyReferenced_nonNull_bridgeObject())
    {
      if (v23)
      {
LABEL_33:
        sub_22A4DE0EC();
      }

LABEL_34:
      v45 = sub_22A4DE22C();
      v26 = v45 & 0xFFFFFFFFFFFFFF8;
      goto LABEL_35;
    }

    if (v23)
    {
      goto LABEL_33;
    }

    v26 = v10 & 0xFFFFFFFFFFFFFF8;
    if (v25 > *((v10 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      goto LABEL_34;
    }

    v45 = v10;
LABEL_35:
    v27 = *(v26 + 16);
    v28 = *(v26 + 24);
    if (v21)
    {
      v30 = v26;
      v31 = sub_22A4DE0EC();
      v26 = v30;
      v29 = v31;
      if (v31)
      {
        goto LABEL_39;
      }

LABEL_8:

      v5 = v13;
      v10 = v45;
      v6 = v46;
      if (v22 > 0)
      {
        goto LABEL_54;
      }
    }

    else
    {
      v29 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v29)
      {
        goto LABEL_8;
      }

LABEL_39:
      if (((v28 >> 1) - v27) < v22)
      {
        goto LABEL_55;
      }

      v32 = v26 + 8 * v27 + 32;
      v43 = v26;
      if (v21)
      {
        if (v29 < 1)
        {
          goto LABEL_57;
        }

        sub_2297636E4(&qword_27D87D518, &unk_27D880960, &qword_22A578820);
        for (i = 0; i != v29; ++i)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D880960, &qword_22A578820);
          v34 = sub_22958C03C(v47, i, v20);
          v36 = *v35;
          (v34)(v47, 0);
          *(v32 + 8 * i) = v36;
        }
      }

      else
      {
        sub_229562F68(0, &unk_27D87E490, off_2786660B8);
        swift_arrayInitWithCopy();
      }

      v5 = v13;
      v10 = v45;
      v6 = v46;
      v3 = v41;
      if (v22 >= 1)
      {
        v37 = *(v43 + 16);
        v38 = __OFADD__(v37, v22);
        v39 = v37 + v22;
        if (v38)
        {
          goto LABEL_56;
        }

        *(v43 + 16) = v39;
        v5 = v13;
        v6 = v46;
      }
    }
  }

  v11 = v5;
  v12 = v6;
  v13 = v5;
  if (v6)
  {
LABEL_14:
    v14 = (v12 - 1) & v12;
    v15 = *(*(v3 + 48) + ((v13 << 9) | (8 * __clz(__rbit64(v12)))));
    if (!v15)
    {
      goto LABEL_52;
    }

    goto LABEL_18;
  }

  while (1)
  {
    v13 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v13 >= ((v4 + 64) >> 6))
    {
      goto LABEL_52;
    }

    v12 = *(v44 + 8 * v13);
    ++v11;
    if (v12)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_54:
  __break(1u);
LABEL_55:
  __break(1u);
LABEL_56:
  __break(1u);
LABEL_57:
  __break(1u);
}

unint64_t sub_2297620A8(unint64_t isUniquelyReferenced_nonNull_bridgeObject, void *a2)
{
  v3 = v2;
  if (isUniquelyReferenced_nonNull_bridgeObject >> 62)
  {
    goto LABEL_68;
  }

  v5 = *((isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v6 = MEMORY[0x277D84F90];
  if (!v5)
  {
    return v6;
  }

  v7 = 0;
  v39 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
  v40 = isUniquelyReferenced_nonNull_bridgeObject & 0xC000000000000001;
  v37 = v5;
  v38 = isUniquelyReferenced_nonNull_bridgeObject + 32;
  v34 = isUniquelyReferenced_nonNull_bridgeObject;
  v35 = MEMORY[0x277D84F90] >> 62;
  v36 = a2;
  do
  {
    if (v40)
    {
      isUniquelyReferenced_nonNull_bridgeObject = MEMORY[0x22AAD13F0](v7, v34);
    }

    else
    {
      if (v7 >= *(v39 + 16))
      {
        goto LABEL_62;
      }

      isUniquelyReferenced_nonNull_bridgeObject = *(v38 + 8 * v7);
    }

    v9 = isUniquelyReferenced_nonNull_bridgeObject;
    v10 = __OFADD__(v7, 1);
    v11 = v7 + 1;
    if (v10)
    {
      goto LABEL_61;
    }

    if ((swift_task_isCurrentExecutor() & 1) == 0)
    {
      swift_task_reportUnexpectedExecutor();
    }

    objc_opt_self();
    v12 = swift_dynamicCastObjCClass();
    if (v12)
    {
      v13 = v12;
      v14 = v9;
      v15 = [v13 mediaProfiles];
      sub_229562F68(0, &qword_27D880918, off_278666280);
      sub_22959E62C(&qword_27D880920, &qword_27D880918, off_278666280);
      v16 = sub_22A4DDB6C();

      a2 = v36;
      v17 = v14;

      sub_229761BB8(v16, v36, v13);
      v19 = v18;

      if ((v19 & 0x8000000000000000) == 0 && (v19 & 0x4000000000000000) == 0)
      {
LABEL_17:
        v43 = 0;
        v20 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if ((v6 & 0x8000000000000000) == 0 && (v6 & 0x4000000000000000) == 0)
        {
          goto LABEL_19;
        }

        goto LABEL_32;
      }
    }

    else
    {

      v19 = MEMORY[0x277D84F90];
      if (!v35)
      {
        goto LABEL_17;
      }
    }

    v20 = sub_22A4DE0EC();
    v43 = 1;
    if ((v6 & 0x8000000000000000) == 0 && (v6 & 0x4000000000000000) == 0)
    {
LABEL_19:
      isUniquelyReferenced_nonNull_bridgeObject = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v21 = isUniquelyReferenced_nonNull_bridgeObject + v20;
      if (__OFADD__(isUniquelyReferenced_nonNull_bridgeObject, v20))
      {
        goto LABEL_63;
      }

      goto LABEL_20;
    }

LABEL_32:
    isUniquelyReferenced_nonNull_bridgeObject = sub_22A4DE0EC();
    v21 = isUniquelyReferenced_nonNull_bridgeObject + v20;
    if (__OFADD__(isUniquelyReferenced_nonNull_bridgeObject, v20))
    {
      goto LABEL_63;
    }

LABEL_20:
    isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
    v42 = v11;
    if (isUniquelyReferenced_nonNull_bridgeObject)
    {
      if ((v6 & 0x8000000000000000) != 0 || (v6 & 0x4000000000000000) != 0)
      {
        goto LABEL_35;
      }

      v22 = v6 & 0xFFFFFFFFFFFFFF8;
      v23 = a2;
      if (v21 <= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        a2 = v3;
        v3 = v20;
        goto LABEL_37;
      }
    }

    else
    {
      if ((v6 & 0x8000000000000000) != 0 || (v6 & 0x4000000000000000) != 0)
      {
LABEL_35:
        v23 = a2;
        a2 = v3;
        sub_22A4DE0EC();
        goto LABEL_36;
      }

      v23 = a2;
    }

    a2 = v3;
LABEL_36:
    v3 = v20;
    isUniquelyReferenced_nonNull_bridgeObject = sub_22A4DE22C();
    v6 = isUniquelyReferenced_nonNull_bridgeObject;
    v22 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
LABEL_37:
    v24 = *(v22 + 16);
    v25 = *(v22 + 24);
    if (v43)
    {
      isUniquelyReferenced_nonNull_bridgeObject = sub_22A4DE0EC();
      v26 = isUniquelyReferenced_nonNull_bridgeObject;
      if (!isUniquelyReferenced_nonNull_bridgeObject)
      {
        goto LABEL_5;
      }
    }

    else
    {
      v26 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v26)
      {
LABEL_5:

        v8 = v3 <= 0;
        v3 = a2;
        a2 = v23;
        if (!v8)
        {
          goto LABEL_64;
        }

        goto LABEL_7;
      }
    }

    if (((v25 >> 1) - v24) < v3)
    {
      goto LABEL_65;
    }

    v27 = v3;
    v41 = a2;
    v3 = (v22 + 8 * v24 + 32);
    if ((v43 & 1) == 0)
    {
      sub_229562F68(0, &unk_27D87E490, off_2786660B8);
      swift_arrayInitWithCopy();

      a2 = v23;
      goto LABEL_54;
    }

    if (v26 < 1)
    {
      goto LABEL_67;
    }

    v28 = 0;
    a2 = (v19 & 0xFFFFFFFFFFFFFF8);
    if ((v19 & 0xC000000000000001) == 0)
    {
      goto LABEL_47;
    }

    while (1)
    {
      isUniquelyReferenced_nonNull_bridgeObject = MEMORY[0x22AAD13F0](v28++, v19);
      *v3 = isUniquelyReferenced_nonNull_bridgeObject;
      if (v28 == v26)
      {
        break;
      }

      while (1)
      {
        ++v3;
        if ((v19 & 0xC000000000000001) != 0)
        {
          break;
        }

LABEL_47:
        if ((v28 & 0x8000000000000000) != 0)
        {
          __break(1u);
LABEL_60:
          __break(1u);
LABEL_61:
          __break(1u);
LABEL_62:
          __break(1u);
LABEL_63:
          __break(1u);
LABEL_64:
          __break(1u);
LABEL_65:
          __break(1u);
LABEL_66:
          __break(1u);
LABEL_67:
          __break(1u);
LABEL_68:
          v33 = isUniquelyReferenced_nonNull_bridgeObject;
          v5 = sub_22A4DE0EC();
          isUniquelyReferenced_nonNull_bridgeObject = v33;
          goto LABEL_3;
        }

        if (v28 >= *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_60;
        }

        v29 = *(v19 + 32 + 8 * v28++);
        *v3 = v29;
        isUniquelyReferenced_nonNull_bridgeObject = v29;
        if (v28 == v26)
        {
          goto LABEL_53;
        }
      }
    }

LABEL_53:

    a2 = v36;
LABEL_54:
    v3 = v41;
    if (v27 >= 1)
    {
      v30 = *(v22 + 16);
      v10 = __OFADD__(v30, v27);
      v31 = v30 + v27;
      if (v10)
      {
        goto LABEL_66;
      }

      *(v22 + 16) = v31;
    }

LABEL_7:
    v7 = v42;
  }

  while (v42 != v37);
  return v6;
}

unint64_t sub_229762550(unint64_t isUniquelyReferenced_nonNull_bridgeObject, void *a2)
{
  v3 = v2;
  if (isUniquelyReferenced_nonNull_bridgeObject >> 62)
  {
    goto LABEL_48;
  }

  for (i = *((isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8) + 0x10); i; isUniquelyReferenced_nonNull_bridgeObject = v29)
  {
    v6 = 0;
    v35 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
    v36 = isUniquelyReferenced_nonNull_bridgeObject & 0xC000000000000001;
    v31 = isUniquelyReferenced_nonNull_bridgeObject;
    v34 = isUniquelyReferenced_nonNull_bridgeObject + 32;
    v7 = MEMORY[0x277D84F90];
    v33 = i;
    v32 = a2;
    while (1)
    {
      if (v36)
      {
        isUniquelyReferenced_nonNull_bridgeObject = MEMORY[0x22AAD13F0](v6, v31);
      }

      else
      {
        if (v6 >= *(v35 + 16))
        {
          goto LABEL_43;
        }

        isUniquelyReferenced_nonNull_bridgeObject = *(v34 + 8 * v6);
      }

      v8 = isUniquelyReferenced_nonNull_bridgeObject;
      v9 = __OFADD__(v6++, 1);
      if (v9)
      {
        break;
      }

      if ((swift_task_isCurrentExecutor() & 1) == 0)
      {
        swift_task_reportUnexpectedExecutor();
      }

      v10 = [v8 actions];
      sub_229562F68(0, &qword_27D880928, off_278666018);
      v11 = sub_22A4DD83C();

      v12 = v3;
      v13 = sub_2297620A8(v11, a2);

      v14 = v13 >> 62;
      if (v13 >> 62)
      {
        v15 = sub_22A4DE0EC();
      }

      else
      {
        v15 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v16 = v7 >> 62;
      if (v7 >> 62)
      {
        isUniquelyReferenced_nonNull_bridgeObject = sub_22A4DE0EC();
        v17 = isUniquelyReferenced_nonNull_bridgeObject + v15;
        if (__OFADD__(isUniquelyReferenced_nonNull_bridgeObject, v15))
        {
LABEL_41:
          __break(1u);
          break;
        }
      }

      else
      {
        isUniquelyReferenced_nonNull_bridgeObject = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v17 = isUniquelyReferenced_nonNull_bridgeObject + v15;
        if (__OFADD__(isUniquelyReferenced_nonNull_bridgeObject, v15))
        {
          goto LABEL_41;
        }
      }

      isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
      if (isUniquelyReferenced_nonNull_bridgeObject)
      {
        if (!v16)
        {
          v39 = v7;
          v18 = v7 & 0xFFFFFFFFFFFFFF8;
          if (v17 <= *(v18 + 24) >> 1)
          {
            goto LABEL_24;
          }

          goto LABEL_23;
        }

LABEL_22:
        sub_22A4DE0EC();
        goto LABEL_23;
      }

      if (v16)
      {
        goto LABEL_22;
      }

      v39 = v7;
LABEL_23:
      isUniquelyReferenced_nonNull_bridgeObject = sub_22A4DE22C();
      v39 = isUniquelyReferenced_nonNull_bridgeObject;
      v18 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
LABEL_24:
      v37 = v15;
      v19 = *(v18 + 16);
      v20 = *(v18 + 24);
      if (v14)
      {
        isUniquelyReferenced_nonNull_bridgeObject = sub_22A4DE0EC();
        v21 = isUniquelyReferenced_nonNull_bridgeObject;
      }

      else
      {
        v21 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (v21)
      {
        if (((v20 >> 1) - v19) < v37)
        {
          goto LABEL_45;
        }

        v22 = v18 + 8 * v19 + 32;
        if (v14)
        {
          if (v21 < 1)
          {
            goto LABEL_47;
          }

          sub_2297636E4(&qword_27D87D518, &unk_27D880960, &qword_22A578820);
          for (j = 0; j != v21; ++j)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D880960, &qword_22A578820);
            v24 = sub_22958C03C(v38, j, v13);
            v26 = *v25;
            (v24)(v38, 0);
            *(v22 + 8 * j) = v26;
          }
        }

        else
        {
          sub_229562F68(0, &unk_27D87E490, off_2786660B8);
          swift_arrayInitWithCopy();
        }

        v3 = v12;
        a2 = v32;
        if (v37 >= 1)
        {
          v27 = *(v18 + 16);
          v9 = __OFADD__(v27, v37);
          v28 = v27 + v37;
          if (v9)
          {
            goto LABEL_46;
          }

          *(v18 + 16) = v28;
        }
      }

      else
      {

        if (v37 > 0)
        {
          goto LABEL_44;
        }
      }

      v7 = v39;
      if (v6 == v33)
      {
        return v7;
      }
    }

    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
LABEL_48:
    v29 = isUniquelyReferenced_nonNull_bridgeObject;
    i = sub_22A4DE0EC();
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_229762958(unint64_t a1)
{
  v47 = sub_22A4DB7DC();
  v43 = *(v47 - 8);
  v2 = MEMORY[0x28223BE20](v47);
  v42 = &v40 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v46 = &v40 - v4;
  v5 = sub_22974D080(a1);
  v58 = MEMORY[0x277D84F90];
  if (v5 >> 62)
  {
    goto LABEL_37;
  }

  v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v6)
  {
LABEL_38:
    v36 = MEMORY[0x277D84F90];
    goto LABEL_39;
  }

  while (1)
  {
    v7 = 0;
    v50 = v5 & 0xFFFFFFFFFFFFFF8;
    v51 = v5 & 0xC000000000000001;
    v41 = v5;
    v49 = v5 + 32;
    v45 = (v43 + 32);
    v48 = v6;
LABEL_5:
    if (v51)
    {
      v5 = MEMORY[0x22AAD13F0](v7, v41);
    }

    else
    {
      if (v7 >= *(v50 + 16))
      {
        goto LABEL_36;
      }

      v5 = *(v49 + 8 * v7);
    }

    v8 = v5;
    if (!__OFADD__(v7++, 1))
    {
      break;
    }

LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    v37 = v5;
    v6 = sub_22A4DE0EC();
    v5 = v37;
    if (!v6)
    {
      goto LABEL_38;
    }
  }

  v10 = [v5 mediaProfiles];
  v11 = sub_229562F68(0, &qword_27D880918, off_278666280);
  sub_22959E62C(&qword_27D880920, &qword_27D880918, off_278666280);
  v12 = sub_22A4DDB6C();

  v53 = v8;
  v55 = v11;
  if ((v12 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_22A4DE09C();
    v5 = sub_22A4DDBAC();
    v14 = v59;
    v13 = v60;
    v15 = v61;
    v16 = v62;
    v17 = v63;
  }

  else
  {
    v18 = -1 << *(v12 + 32);
    v13 = v12 + 56;
    v15 = ~v18;
    v19 = -v18;
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    else
    {
      v20 = -1;
    }

    v17 = v20 & *(v12 + 56);

    v16 = 0;
    v14 = v12;
  }

  v52 = v15;
  v21 = (v15 + 64) >> 6;
  v54 = MEMORY[0x277D84F90];
  while (v14 < 0)
  {
    v25 = sub_22A4DE12C();
    if (!v25)
    {
      goto LABEL_4;
    }

    v56 = v25;
    swift_dynamicCast();
    v24 = v57;
    if (!v57)
    {
      goto LABEL_4;
    }

LABEL_25:
    v26 = [v24 accessory];
    if (v26)
    {
      v27 = v26;
      v28 = [v26 uuid];

      v29 = v42;
      sub_22A4DB79C();

      v30 = *v45;
      (*v45)(v46, v29, v47);
      v31 = v54;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v44 = v30;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v31 = sub_22958B1F0(0, v31[2] + 1, 1, v31);
      }

      v34 = v31[2];
      v33 = v31[3];
      if (v34 >= v33 >> 1)
      {
        v31 = sub_22958B1F0((v33 > 1), v34 + 1, 1, v31);
      }

      v31[2] = v34 + 1;
      v35 = (*(v43 + 80) + 32) & ~*(v43 + 80);
      v54 = v31;
      v5 = v44(v31 + v35 + *(v43 + 72) * v34, v46, v47);
    }

    else
    {
    }
  }

  v22 = v16;
  v23 = v17;
  if (!v17)
  {
    while (1)
    {
      v16 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        break;
      }

      if (v16 >= v21)
      {
        goto LABEL_4;
      }

      v23 = *(v13 + 8 * v16);
      ++v22;
      if (v23)
      {
        goto LABEL_21;
      }
    }

    __break(1u);
    goto LABEL_35;
  }

LABEL_21:
  v17 = (v23 - 1) & v23;
  v24 = *(*(v14 + 48) + ((v16 << 9) | (8 * __clz(__rbit64(v23)))));
  if (v24)
  {
    goto LABEL_25;
  }

LABEL_4:

  sub_22953EE84(v14);

  v5 = sub_2296F0BBC(v54);
  if (v7 != v48)
  {
    goto LABEL_5;
  }

  v36 = v58;
LABEL_39:

  v38 = sub_2296727F4(v36);

  return v38;
}

uint64_t sub_229762E64(unint64_t a1)
{
  v29 = sub_22A4DB7DC();
  v26 = *(v29 - 8);
  v2 = MEMORY[0x28223BE20](v29);
  v25 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v5 = &v25 - v4;
  v6 = sub_22974D400(a1);
  v7 = v6;
  if (v6 >> 62)
  {
    goto LABEL_19;
  }

  for (i = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_22A4DE0EC())
  {
    v9 = 0;
    v27 = v7 & 0xFFFFFFFFFFFFFF8;
    v28 = v7 & 0xC000000000000001;
    v10 = (v26 + 32);
    v11 = MEMORY[0x277D84F90];
    while (1)
    {
      if (v28)
      {
        v12 = MEMORY[0x22AAD13F0](v9, v7);
      }

      else
      {
        if (v9 >= *(v27 + 16))
        {
          goto LABEL_18;
        }

        v12 = *(v7 + 8 * v9 + 32);
      }

      v13 = v12;
      v14 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      v15 = [v12 accessory];
      if (v15)
      {
        v16 = i;
        v17 = v15;
        v18 = [v15 uuid];

        v19 = v25;
        sub_22A4DB79C();

        v20 = *v10;
        (*v10)(v5, v19, v29);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v11 = sub_22958B1F0(0, *(v11 + 2) + 1, 1, v11);
        }

        v22 = *(v11 + 2);
        v21 = *(v11 + 3);
        if (v22 >= v21 >> 1)
        {
          v11 = sub_22958B1F0((v21 > 1), v22 + 1, 1, v11);
        }

        *(v11 + 2) = v22 + 1;
        v20(&v11[((*(v26 + 80) + 32) & ~*(v26 + 80)) + *(v26 + 72) * v22], v5, v29);
        i = v16;
      }

      else
      {
      }

      ++v9;
      if (v14 == i)
      {
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    ;
  }

  v11 = MEMORY[0x277D84F90];
LABEL_21:

  v23 = sub_2296727F4(v11);

  return v23;
}

uint64_t sub_229763134(void *a1)
{
  v2 = [a1 characteristic];
  if (!v2)
  {
    v37 = 0u;
    v38 = 0u;
LABEL_12:
    sub_22953EAE4(&v37, &unk_27D87FC20, &unk_22A578810);
    goto LABEL_13;
  }

  v3 = v2;
  v4 = [v2 value];

  if (v4)
  {
    sub_22A4DE01C();
    swift_unknownObjectRelease();
    v5 = v34;
    v6 = __swift_project_boxed_opaque_existential_0(v33, v34);
    v32[3] = v5;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v32);
    (*(*(v5 - 8) + 16))(boxed_opaque_existential_1, v6, v5);
    sub_229543C58(v32, &v35);
    __swift_destroy_boxed_opaque_existential_0(v33);
  }

  else
  {
    v35 = 0u;
    v36 = 0u;
  }

  v37 = v35;
  v38 = v36;
  if (!*(&v36 + 1))
  {
    goto LABEL_12;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C3B0, &unk_22A576E90);
  sub_229562F68(0, &qword_281401770, 0x277CCABB0);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_13:
    v30 = 0;
    return v30 & 1;
  }

  v8 = v35;
  v9 = [a1 targetValue];
  sub_22A4DE01C();
  swift_unknownObjectRelease();
  v10 = __swift_project_boxed_opaque_existential_0(&v37, *(&v38 + 1));
  MEMORY[0x28223BE20](v10);
  (*(v12 + 16))(v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (!swift_dynamicCast())
  {

    __swift_destroy_boxed_opaque_existential_0(&v37);
    goto LABEL_13;
  }

  v13 = v35;
  __swift_destroy_boxed_opaque_existential_0(&v37);
  v14 = [a1 characteristic];
  v15 = [v14 metadata];

  v16 = [v15 minimumValue];
  v17 = [a1 characteristic];
  v18 = [v17 metadata];

  v19 = [v18 maximumValue];
  if (v19 && v16)
  {
    v20 = v19;
    v21 = v16;
    [v8 floatValue];
    v23 = v22;
    [v13 floatValue];
    v25 = vabds_f32(v23, v24);
    [v20 floatValue];
    v27 = v26;
    [v21 floatValue];
    v29 = v28;

    v30 = v25 <= ((v27 - v29) * 0.02);
  }

  else
  {
    sub_229562F68(0, &qword_281401760, 0x277D82BB8);
    v30 = sub_22A4DDEDC();
  }

  return v30 & 1;
}

uint64_t sub_229763570(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_22976361C(uint64_t a1)
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

  return sub_22975412C(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_2297636E4(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_229763738(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_229586D38;

  return sub_229751EE4(a1, v4, v5, v7, v6);
}

uint64_t sub_2297637F8(uint64_t result, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return v2;
}

uint64_t sub_229763804(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_229586D38;

  return sub_2297514C4(a1, v4, v5, v7, v6);
}

uint64_t sub_2297638C4(uint64_t a1)
{
  v4 = *(sub_22A4DB7DC() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_229586D38;

  return sub_229750BDC(a1, v6, v7, v8, v1 + v5, v9);
}

uint64_t sub_2297639F4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_229586D38;

  return sub_229750380(a1, v4, v5, v7, v6);
}

uint64_t sub_229763AB4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_229586D38;

  return sub_22974FBD4(a1, v4, v5, v7, v6);
}

uint64_t sub_229763B74(uint64_t a1)
{
  v4 = *(sub_22A4DB7DC() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_229586D38;

  return sub_22974F980(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_229763C6C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_229586D38;

  return sub_2297587F4(a1, v4, v5, v7, v6);
}

uint64_t sub_229763D2C()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_229586D38;

  return sub_229752120(v2, v3, v4);
}

uint64_t objectdestroy_57Tm(uint64_t a1)
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v1, a1, 7);
}

uint64_t sub_229763E34(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_229569B30;

  return sub_22974E5A0(a1, v4, v5, v7, v6);
}

uint64_t sub_229763F20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(uint64_t, uint64_t, void, void)@<X2>, uint64_t *a4@<X8>)
{
  result = a3(a1, a2, **(v4 + 16), *(v4 + 24));
  if (!v5)
  {
    *a4 = result;
  }

  return result;
}

uint64_t (*sub_229763F5C(uint64_t (*result)(__int128 *), uint64_t a2, uint64_t a3))(__int128 *)
{
  v5 = *(a3 + 16);
  if (v5)
  {
    v6 = result;
    v7 = 0;
    v8 = a3 + 32;
    v9 = MEMORY[0x277D84F90];
    v14 = result;
    while (v7 < *(a3 + 16))
    {
      sub_22957F1C4(v8, v16);
      v10 = v6(v16);
      if (v3)
      {
        __swift_destroy_boxed_opaque_existential_0(v16);

        goto LABEL_15;
      }

      if (v10)
      {
        sub_229557188(v16, v15);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v17 = v9;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_229583B04(0, *(v9 + 16) + 1, 1);
          v9 = v17;
        }

        v13 = *(v9 + 16);
        v12 = *(v9 + 24);
        if (v13 >= v12 >> 1)
        {
          sub_229583B04((v12 > 1), v13 + 1, 1);
          v9 = v17;
        }

        *(v9 + 16) = v13 + 1;
        result = sub_229557188(v15, v9 + 40 * v13 + 32);
        v6 = v14;
      }

      else
      {
        result = __swift_destroy_boxed_opaque_existential_0(v16);
      }

      ++v7;
      v8 += 40;
      if (v5 == v7)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    v9 = MEMORY[0x277D84F90];
LABEL_15:

    return v9;
  }

  return result;
}

uint64_t sub_229764130@<X0>(uint64_t *a3@<X8>)
{
  v4 = sub_22A4DCEBC();
  swift_allocObject();
  swift_unknownObjectRetain();
  result = sub_22A4DCE7C();
  a3[3] = v4;
  a3[4] = &off_283CE3910;
  *a3 = result;
  return result;
}

uint64_t sub_2297641A8()
{
  v1 = v0;
  v2 = *v0;
  v3 = sub_22A4DD07C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_229541CB0(v2, &off_283CE3968);
  v7 = sub_22A4DD05C();
  v8 = sub_22A4DDCCC();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_229538000, v7, v8, "Start network diagnostics.", v9, 2u);
    MEMORY[0x22AAD4E50](v9, -1, -1);
  }

  (*(v4 + 8))(v6, v3);
  if (qword_281401AF0 != -1)
  {
    swift_once();
  }

  os_unfair_lock_lock(&dword_281401AF8);

  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  qword_281401B00 = v1;

  os_unfair_lock_unlock(&dword_281401AF8);
  return sub_2297645C4(v10, v11);
}

uint64_t sub_2297643B4()
{
  v1 = v0;
  v2 = *v0;
  v3 = sub_22A4DD07C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_229541CB0(v2, &off_283CE3968);
  v7 = sub_22A4DD05C();
  v8 = sub_22A4DDCCC();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_229538000, v7, v8, "Stop network diagnostics.", v9, 2u);
    MEMORY[0x22AAD4E50](v9, -1, -1);
  }

  (*(v4 + 8))(v6, v3);
  if (qword_281401AF0 != -1)
  {
    swift_once();
  }

  os_unfair_lock_lock(&dword_281401AF8);
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (qword_281401B00 == v1)
  {

    qword_281401B00 = 0;
  }

  os_unfair_lock_unlock(&dword_281401AF8);
  return sub_229764914();
}

uint64_t sub_2297645C4(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 160);
  v4 = sub_229767DE4(&qword_281401AE8, a2, _s26NetworkDiagnosticsObserverCMa, &unk_22A581FBC);
  v3(v13, v2, v4);
  v5 = swift_allocObject();
  swift_weakInit();
  v6 = v14;
  v7 = v15;
  __swift_mutable_project_boxed_opaque_existential_0(v13, v14);
  v8 = *(v7 + 32);
  swift_retain_n();
  v8(sub_229767E2C, v5, v6, v7);
  v9 = v14;
  v10 = v15;
  __swift_mutable_project_boxed_opaque_existential_0(v13, v14);
  (*(v10 + 56))(sub_229767E2C, v5, v9, v10);
  __swift_project_boxed_opaque_existential_0(v13, v14);
  sub_22A4DCF1C();
  sub_22A4DCE6C();

  sub_22957F1C4(v13, v12);
  swift_beginAccess();
  sub_229767D74(v12, v2 + 112);
  swift_endAccess();
  return __swift_destroy_boxed_opaque_existential_0(v13);
}

uint64_t sub_229764770(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D8F0, &qword_22A578D70);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v8 - v2;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v5 = result;
    v6 = sub_22A4DD9DC();
    (*(*(v6 - 8) + 56))(v3, 1, 1, v6);
    v7 = swift_allocObject();
    v7[2] = 0;
    v7[3] = 0;
    v7[4] = v5;
    sub_22957F3C0(0, 0, v3, &unk_22A582070, v7);
  }

  return result;
}

uint64_t sub_2297648B0()
{
  v1 = sub_229764914();
  sub_2297645C4(v1, v2);
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_229764914()
{
  swift_beginAccess();
  sub_229767D04(v0 + 112, &v3);
  if (*(&v4 + 1))
  {
    sub_22957F1C4(&v3, v2);
    sub_22953EAE4(&v3, &qword_27D8809D8, &unk_22A582040);
    __swift_project_boxed_opaque_existential_0(v2, v2[3]);
    sub_22A4DCF1C();
    sub_22A4DCE8C();

    __swift_destroy_boxed_opaque_existential_0(v2);
  }

  else
  {
    sub_22953EAE4(&v3, &qword_27D8809D8, &unk_22A582040);
  }

  v5 = 0;
  v3 = 0u;
  v4 = 0u;
  swift_beginAccess();
  sub_229767D74(&v3, v0 + 112);
  return swift_endAccess();
}

uint64_t sub_229764A10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v25 = *(v3 + 192);
  *(v3 + 192) = 0x8000000000000000;
  sub_2295ABB70(a1, a2, a3, isUniquelyReferenced_nonNull_native);

  *(v3 + 192) = v25;
  swift_endAccess();
  v9 = *(a1 + 16);
  v10 = MEMORY[0x277D84F90];
  if (v9)
  {
    v25 = MEMORY[0x277D84F90];
    sub_22A4DE29C();
    v11 = sub_229562F68(0, &unk_281401750, 0x277CD1E80);
    v12 = a1 + 32;
    do
    {
      sub_22957F1C4(v12, v22);
      v13 = v23;
      v14 = v24;
      v15 = __swift_project_boxed_opaque_existential_0(v22, v23);
      MEMORY[0x28223BE20](v15);
      v17 = v22 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v18 + 16))(v17);
      sub_229766C74(v17, v11, v13, v14);
      __swift_destroy_boxed_opaque_existential_0(v22);
      sub_22A4DE27C();
      sub_22A4DE2AC();
      sub_22A4DE2BC();
      sub_22A4DE28C();
      v12 += 40;
      --v9;
    }

    while (v9);
    v10 = v25;
  }

  if (!swift_unknownObjectWeakLoadStrong())
  {
  }

  v19 = *(v4 + 184);
  ObjectType = swift_getObjectType();
  (*(v19 + 8))(a2, a3, v10, ObjectType, v19);

  return swift_unknownObjectRelease();
}

uint64_t sub_229764C6C(uint64_t a1)
{
  v3 = *v1;
  v4 = sub_22A4DCF3C();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v55 = &v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v50 - v9;
  MEMORY[0x28223BE20](v8);
  v12 = &v50 - v11;
  v13 = sub_22A4DD07C();
  v58 = *(v13 - 8);
  v14 = MEMORY[0x28223BE20](v13);
  v59 = &v50 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v17 = &v50 - v16;
  v54 = v3;
  sub_229541CB0(v3, &off_283CE3968);
  v18 = *(v5 + 16);
  v57 = a1;
  v60 = v18;
  v61 = (v5 + 16);
  v18(v12, a1, v4);
  v19 = sub_22A4DD05C();
  v20 = sub_22A4DDCCC();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v56 = v13;
    v22 = v21;
    v23 = swift_slowAlloc();
    v51 = v5;
    v24 = v23;
    v62[0] = v23;
    *v22 = 136315138;
    v25 = sub_22A4DCF2C();
    v52 = v10;
    v27 = v26;
    v53 = *(v5 + 8);
    v53(v12, v4);
    v28 = sub_2295A3E30(v25, v27, v62);
    v10 = v52;

    *(v22 + 4) = v28;
    _os_log_impl(&dword_229538000, v19, v20, "Network diagnostics event occurred: %s", v22, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v24);
    MEMORY[0x22AAD4E50](v24, -1, -1);
    v29 = v22;
    v13 = v56;
    MEMORY[0x22AAD4E50](v29, -1, -1);

    v30 = *(v58 + 8);
    v30(v17, v13);
    v31 = v51;
  }

  else
  {

    v53 = *(v5 + 8);
    v53(v12, v4);
    v31 = v5;
    v30 = *(v58 + 8);
    v30(v17, v13);
  }

  v32 = v57;
  v60(v10, v57, v4);
  v33 = (*(v31 + 88))(v10, v4);
  v34 = v59;
  if (v33 == *MEMORY[0x277D6B270])
  {
    (*(v31 + 96))(v10, v4);
    v35 = sub_22A4DCF8C();
    v36 = MEMORY[0x277D6B2B8];
LABEL_16:
    v62[3] = v35;
    v62[4] = v36;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v62);
    (*(*(v35 - 8) + 32))(boxed_opaque_existential_1, v10, v35);
    sub_2297653A4(v62);
    return __swift_destroy_boxed_opaque_existential_0(v62);
  }

  if (v33 == *MEMORY[0x277D6B280])
  {
    (*(v31 + 96))(v10, v4);
    v35 = sub_22A4DCE5C();
    v36 = MEMORY[0x277D6B230];
    goto LABEL_16;
  }

  if (v33 == *MEMORY[0x277D6B260])
  {
    (*(v31 + 96))(v10, v4);
    v35 = sub_22A4DCF6C();
    v36 = MEMORY[0x277D6B2A8];
    goto LABEL_16;
  }

  if (v33 == *MEMORY[0x277D6B278])
  {
    (*(v31 + 96))(v10, v4);
    v35 = sub_22A4DCF9C();
    v36 = MEMORY[0x277D6B2C0];
    goto LABEL_16;
  }

  if (v33 == *MEMORY[0x277D6B258])
  {
    (*(v31 + 96))(v10, v4);
    v35 = sub_22A4DCF4C();
    v36 = MEMORY[0x277D6B2A0];
    goto LABEL_16;
  }

  if (v33 == *MEMORY[0x277D6B268])
  {
    (*(v31 + 96))(v10, v4);
    v35 = sub_22A4DCF7C();
    v36 = MEMORY[0x277D6B2B0];
    goto LABEL_16;
  }

  v56 = v13;
  sub_229541CB0(v54, &off_283CE3968);
  v39 = v55;
  v60(v55, v32, v4);
  v40 = sub_22A4DD05C();
  v41 = sub_22A4DDCEC();
  if (os_log_type_enabled(v40, v41))
  {
    v42 = swift_slowAlloc();
    v61 = swift_slowAlloc();
    v62[0] = v61;
    *v42 = 136315138;
    v43 = sub_22A4DCF2C();
    v45 = v44;
    v46 = v53;
    v53(v39, v4);
    v47 = sub_2295A3E30(v43, v45, v62);

    *(v42 + 4) = v47;
    _os_log_impl(&dword_229538000, v40, v41, "Unsupported payload type: %s", v42, 0xCu);
    v48 = v61;
    __swift_destroy_boxed_opaque_existential_0(v61);
    MEMORY[0x22AAD4E50](v48, -1, -1);
    MEMORY[0x22AAD4E50](v42, -1, -1);

    v49 = v59;
  }

  else
  {

    v46 = v53;
    v53(v39, v4);
    v49 = v34;
  }

  v30(v49, v56);
  return v46(v10, v4);
}

uint64_t sub_2297653A4(void *a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = sub_22A4DD07C();
  v54 = *(v5 - 8);
  v55 = v5;
  v6 = MEMORY[0x28223BE20](v5);
  v53 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v52 = &v45 - v8;
  v9 = sub_22A4DD26C();
  v50 = *(v9 - 8);
  v51 = v9;
  MEMORY[0x28223BE20](v9);
  v48 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = sub_22A4DD29C();
  v47 = *(v49 - 8);
  MEMORY[0x28223BE20](v49);
  v46 = &v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_22A4DCECC();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v45 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v45 - v17;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_22A4DCEFC();
  (*(v13 + 104))(v16, *MEMORY[0x277D6B240], v12);
  sub_229767DE4(&qword_281401CF8, 255, MEMORY[0x277D6B248], MEMORY[0x277D6B250]);
  v19 = sub_22A4DD58C();
  v20 = *(v13 + 8);
  v20(v16, v12);
  v20(v18, v12);
  if (v19)
  {
    v21 = v53;
    sub_229541CB0(v4, &off_283CE3968);
    sub_22957F1C4(a1, aBlock);
    v22 = sub_22A4DD05C();
    v23 = sub_22A4DDCCC();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      *&v61[0] = v25;
      *v24 = 136315138;
      __swift_project_boxed_opaque_existential_0(aBlock, v58);
      v26 = sub_22A4DCEEC();
      v28 = v27;
      __swift_destroy_boxed_opaque_existential_0(aBlock);
      v29 = sub_2295A3E30(v26, v28, v61);

      *(v24 + 4) = v29;
      _os_log_impl(&dword_229538000, v22, v23, "Receive invalid event: %s", v24, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v25);
      MEMORY[0x22AAD4E50](v25, -1, -1);
      MEMORY[0x22AAD4E50](v24, -1, -1);

      return (*(v54 + 8))(v21, v55);
    }

    (*(v54 + 8))(v21, v55);
    return __swift_destroy_boxed_opaque_existential_0(aBlock);
  }

  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  if ((sub_22A4DCEDC() & 1) == 0)
  {
    sub_22957F1C4(a1, v61);
    v40 = swift_allocObject();
    sub_229557188(v61, v40 + 16);
    *(v40 + 56) = v2;
    *(v40 + 64) = v4;
    v59 = sub_229767C14;
    v60 = v40;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_22953E640;
    v58 = &block_descriptor_29;
    v41 = _Block_copy(aBlock);

    v42 = v46;
    sub_22A4DD28C();
    v56 = MEMORY[0x277D84F90];
    sub_229767DE4(&qword_281401CF0, 255, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87CEA0, &unk_22A577A40);
    sub_229579858(qword_281401CB0, &unk_27D87CEA0, &unk_22A577A40);
    v43 = v48;
    v44 = v51;
    sub_22A4DE03C();
    MEMORY[0x22AAD0F80](0, v42, v43, v41);
    _Block_release(v41);
    (*(v50 + 8))(v43, v44);
    (*(v47 + 8))(v42, v49);
  }

  v31 = v52;
  sub_229541CB0(v4, &off_283CE3968);
  sub_22957F1C4(a1, aBlock);
  v32 = sub_22A4DD05C();
  v33 = sub_22A4DDCCC();
  if (!os_log_type_enabled(v32, v33))
  {

    (*(v54 + 8))(v31, v55);
    return __swift_destroy_boxed_opaque_existential_0(aBlock);
  }

  v34 = swift_slowAlloc();
  v35 = swift_slowAlloc();
  *&v61[0] = v35;
  *v34 = 136315138;
  __swift_project_boxed_opaque_existential_0(aBlock, v58);
  v36 = sub_22A4DCEEC();
  v38 = v37;
  __swift_destroy_boxed_opaque_existential_0(aBlock);
  v39 = sub_2295A3E30(v36, v38, v61);

  *(v34 + 4) = v39;
  _os_log_impl(&dword_229538000, v32, v33, "Ignore synthetic event: %s", v34, 0xCu);
  __swift_destroy_boxed_opaque_existential_0(v35);
  MEMORY[0x22AAD4E50](v35, -1, -1);
  MEMORY[0x22AAD4E50](v34, -1, -1);

  return (*(v54 + 8))(v31, v55);
}

uint64_t sub_229765B9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D8F0, &qword_22A578D70);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v12 - v7;
  v9 = sub_22A4DD9DC();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  sub_22957F1C4(a1, v13);
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  sub_229557188(v13, (v10 + 4));
  v10[9] = a2;
  v10[10] = a3;

  sub_22957F3C0(0, 0, v8, &unk_22A582058, v10);
}

uint64_t sub_229765CCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[18] = a5;
  v6[19] = a6;
  v6[17] = a4;
  v7 = sub_22A4DCECC();
  v6[20] = v7;
  v6[21] = *(v7 - 8);
  v6[22] = swift_task_alloc();
  v6[23] = swift_task_alloc();
  v8 = sub_22A4DD07C();
  v6[24] = v8;
  v6[25] = *(v8 - 8);
  v6[26] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_229765DF8, 0, 0);
}

uint64_t sub_229765DF8()
{
  v19 = v0;
  v1 = v0[17];
  sub_229541CB0(v0[19], &off_283CE3968);
  sub_22957F1C4(v1, (v0 + 2));
  v2 = sub_22A4DD05C();
  v3 = sub_22A4DDCDC();
  v4 = os_log_type_enabled(v2, v3);
  v6 = v0[25];
  v5 = v0[26];
  v7 = v0[24];
  if (v4)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v18 = v9;
    *v8 = 136315138;
    __swift_project_boxed_opaque_existential_0(v0 + 2, v0[5]);
    v17 = v5;
    v10 = sub_22A4DCEEC();
    v12 = v11;
    __swift_destroy_boxed_opaque_existential_0(v0 + 2);
    v13 = sub_2295A3E30(v10, v12, &v18);

    *(v8 + 4) = v13;
    _os_log_impl(&dword_229538000, v2, v3, "Adding network diagnostics payload: %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x22AAD4E50](v9, -1, -1);
    MEMORY[0x22AAD4E50](v8, -1, -1);

    (*(v6 + 8))(v17, v7);
  }

  else
  {

    (*(v6 + 8))(v5, v7);
    __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  }

  v14 = v0[18];
  __swift_project_boxed_opaque_existential_0(v0[17], *(v0[17] + 24));
  v0[15] = sub_22A4DCF0C();
  v0[16] = v15;
  v0[27] = v15;

  return MEMORY[0x2822009F8](sub_22976600C, v14, 0);
}

uint64_t sub_22976600C()
{
  v1 = *(v0 + 144);
  swift_beginAccess();
  *(v0 + 224) = *(v1 + 192);

  return MEMORY[0x2822009F8](sub_229766094, 0, 0);
}

uint64_t sub_229766094()
{
  if (*(*(v0 + 224) + 16))
  {
    v1 = sub_229543DBC(*(v0 + 120), *(v0 + 216));
    v3 = v2;

    if (v3)
    {
      v4 = *(*(*(v0 + 224) + 56) + 8 * v1);
      swift_bridgeObjectRetain_n();
      goto LABEL_6;
    }
  }

  else
  {
  }

  v4 = MEMORY[0x277D84F90];
LABEL_6:

  v6 = *(v0 + 176);
  v5 = *(v0 + 184);
  v7 = *(v0 + 160);
  v8 = *(v0 + 168);
  v9 = *(v0 + 136);
  v10 = swift_task_alloc();
  *(v10 + 16) = v9;
  v11 = sub_229763F5C(sub_229767CE4, v10, v4);

  __swift_project_boxed_opaque_existential_0(v9, v9[3]);
  sub_22A4DCEFC();
  (*(v8 + 104))(v6, *MEMORY[0x277D6B238], v7);
  sub_229767DE4(&qword_281401CF8, 255, MEMORY[0x277D6B248], MEMORY[0x277D6B250]);
  v12 = sub_22A4DD58C();
  v13 = *(v8 + 8);
  v13(v6, v7);
  v13(v5, v7);
  if ((v12 & 1) == 0)
  {
    sub_22957F1C4(*(v0 + 136), v0 + 56);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v11 = sub_22958B7D4(0, v11[2] + 1, 1, v11);
    }

    v15 = v11[2];
    v14 = v11[3];
    if (v15 >= v14 >> 1)
    {
      v11 = sub_22958B7D4((v14 > 1), v15 + 1, 1, v11);
    }

    v11[2] = v15 + 1;
    sub_229557188((v0 + 56), &v11[5 * v15 + 4]);
  }

  *(v0 + 232) = v11;
  v16 = *(v0 + 144);
  __swift_project_boxed_opaque_existential_0(*(v0 + 136), *(*(v0 + 136) + 24));
  *(v0 + 240) = sub_22A4DCF0C();
  *(v0 + 248) = v17;

  return MEMORY[0x2822009F8](sub_229766344, v16, 0);
}

uint64_t sub_229766344()
{
  sub_229764A10(v0[29], v0[30], v0[31]);

  v1 = v0[1];

  return v1();
}

BOOL sub_2297663F4(void *a1, void *a2)
{
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  DynamicType = swift_getDynamicType();
  __swift_project_boxed_opaque_existential_0(a2, a2[3]);
  return DynamicType != swift_getDynamicType();
}

uint64_t sub_229766464()
{
  sub_22953EAE4(v0 + 112, &qword_27D8809D8, &unk_22A582040);

  sub_2296B874C(v0 + 176);

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

void sub_2297664D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_229562F68(0, &unk_281401750, 0x277CD1E80);
  v4 = sub_22A4DD81C();
  v5 = sub_22A4DD5AC();
  [v3 _updateSymptoms_forIDSIdentifier_];
}

uint64_t sub_229766594(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  *(v4 + 24) = a4;
  return MEMORY[0x2822009F8](sub_2297665B4, 0, 0);
}

uint64_t sub_2297665B4()
{
  v1 = *(v0 + 24);
  v2 = objc_opt_self();
  v3 = v1;
  v4 = [v2 defaultDataSource];
  _s26NetworkDiagnosticsObserverCMa();
  v5 = swift_allocObject();
  v6 = sub_2297678B0(v3, v4, sub_229764130, 0, v5);
  *(v0 + 32) = v6;
  if (v6)
  {

    return MEMORY[0x2822009F8](sub_2297666C8, v6, 0);
  }

  else
  {
    **(v0 + 16) = 1;
    v7 = *(v0 + 8);

    return v7();
  }
}

uint64_t sub_2297666C8()
{
  sub_2297641A8();

  return MEMORY[0x2822009F8](sub_2296BB844, 0, 0);
}

uint64_t sub_22976685C()
{
  if (qword_281401AF0 != -1)
  {
    swift_once();
  }

  os_unfair_lock_lock(&dword_281401AF8);
  v1 = qword_281401B00;
  *(v0 + 16) = qword_281401B00;

  os_unfair_lock_unlock(&dword_281401AF8);
  if (v1)
  {

    return MEMORY[0x2822009F8](sub_229766954, v1, 0);
  }

  else
  {
    v2 = *(v0 + 8);

    return v2();
  }
}

uint64_t sub_229766954()
{
  sub_2297643B4();

  return MEMORY[0x2822009F8](sub_2297669C4, 0, 0);
}

uint64_t sub_2297669C4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_229766B14()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_229586D38;

  return sub_229766840();
}

uint64_t sub_229766BC0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_229586D38;

  return sub_229766594(a1, v4, v5, v6);
}

id sub_229766C74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a3 - 8);
  v8 = MEMORY[0x28223BE20](a1);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v17 - v11;
  (*(v7 + 32))(&v17 - v11);
  (*(v7 + 16))(v10, v12, a3);
  v13 = sub_229766E3C(v10, a3, a4);
  if (sub_22976747C(v12, a2, a3, a4))
  {
    sub_229562F68(0, &qword_281401760, 0x277D82BB8);
    v14 = sub_22A4DD47C();
  }

  else
  {
    v14 = 0;
  }

  v15 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithType:v13 infoDictionary:v14];

  (*(v7 + 8))(v12, a3);
  return v15;
}

uint64_t sub_229766E3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v47 = a1;
  v39 = sub_22A4DCF7C();
  v36 = *(v39 - 8);
  MEMORY[0x28223BE20](v39);
  v38 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = sub_22A4DCF8C();
  v37 = *(v42 - 8);
  MEMORY[0x28223BE20](v42);
  v40 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_22A4DCE5C();
  v43 = *(v46 - 8);
  v7 = MEMORY[0x28223BE20](v46);
  v41 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v45 = &v35 - v9;
  v10 = sub_22A4DCF4C();
  v44 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_22A4DCF6C();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_22A4DCF9C();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = &v35 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49[3] = a2;
  v49[4] = a3;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v49);
  (*(*(a2 - 8) + 32))(boxed_opaque_existential_1, v47, a2);
  sub_22957F1C4(v49, v48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8809E0, &qword_22A582060);
  if (swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_0(v49);
    (*(v18 + 8))(v20, v17);
    v22 = 113;
  }

  else if (swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_0(v49);
    (*(v14 + 8))(v16, v13);
    v22 = 112;
  }

  else if (swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_0(v49);
    (*(v44 + 8))(v12, v10);
    v22 = 114;
  }

  else
  {
    v25 = v45;
    v24 = v46;
    if (swift_dynamicCast())
    {
      v26 = v43;
      v27 = v41;
      (*(v43 + 32))(v41, v25, v24);
      v28 = sub_22A4DCE3C();
      if (v28 == 2 || (v28 & 1) == 0)
      {
        v31 = sub_22A4DCE4C();
        if (v31 == 2 || (v31 & 1) == 0)
        {
          v32 = sub_22A4DCE2C();
          (*(v26 + 8))(v27, v24);
          if (v32 == 2)
          {
            __swift_destroy_boxed_opaque_existential_0(v49);
          }

          else
          {
            __swift_destroy_boxed_opaque_existential_0(v49);
            if ((v32 & 1) == 0)
            {
              v22 = 103;
              goto LABEL_7;
            }
          }

          v22 = 100;
        }

        else
        {
          (*(v26 + 8))(v27, v24);
          __swift_destroy_boxed_opaque_existential_0(v49);
          v22 = 102;
        }
      }

      else
      {
        (*(v26 + 8))(v27, v24);
        __swift_destroy_boxed_opaque_existential_0(v49);
        v22 = 101;
      }
    }

    else
    {
      __swift_destroy_boxed_opaque_existential_0(v49);
      v29 = v40;
      v30 = v42;
      if (swift_dynamicCast())
      {
        (*(v37 + 8))(v29, v30);
        v22 = 111;
      }

      else
      {
        v33 = v38;
        v34 = v39;
        if (swift_dynamicCast())
        {
          (*(v36 + 8))(v33, v34);
          v22 = 115;
        }

        else
        {
          v22 = 110;
        }
      }
    }
  }

LABEL_7:
  __swift_destroy_boxed_opaque_existential_0(v48);
  return v22;
}

unint64_t sub_22976747C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_22A4DCE5C();
  v31 = *(v7 - 8);
  v8 = MEMORY[0x28223BE20](v7);
  v10 = v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0) + 152;
  MEMORY[0x28223BE20](v8);
  v12 = v32 - v11 + 152;
  v13 = sub_22A4DCF6C();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = v32 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0) + 152;
  MEMORY[0x28223BE20](v15);
  v19 = v32 - v18 + 152;
  v33[3] = a3;
  v33[4] = a4;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v33);
  (*(*(a3 - 8) + 16))(boxed_opaque_existential_1, a1, a3);
  sub_22957F1C4(v33, v32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8809E0, &qword_22A582060);
  if (swift_dynamicCast())
  {
    (*(v14 + 32))(v17, v19, v13);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87CCC0, &unk_22A5779A0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_22A576180;
    *(inited + 32) = sub_22A4DD5EC();
    *(inited + 40) = v22;
    sub_22A4DCF5C();
    v23 = sub_22A4DD81C();

    *(inited + 48) = v23;
    v24 = sub_22956AC48(inited);
    swift_setDeallocating();
    sub_22953EAE4(inited + 32, &qword_27D87CD90, &qword_22A5779F0);
    (*(v14 + 8))(v17, v13);
  }

  else
  {
    v24 = 0;
    if (swift_dynamicCast())
    {
      v25 = v31;
      (*(v31 + 32))(v10, v12, v7);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87CCC0, &unk_22A5779A0);
      v26 = swift_initStackObject();
      *(v26 + 16) = xmmword_22A5761B0;
      *(v26 + 32) = sub_22A4DD5EC();
      *(v26 + 40) = v27;
      sub_22A4DCE4C();
      *(v26 + 48) = sub_22A4DD8AC();
      *(v26 + 56) = sub_22A4DD5EC();
      *(v26 + 64) = v28;
      sub_22A4DCE3C();
      *(v26 + 72) = sub_22A4DD8AC();
      *(v26 + 80) = sub_22A4DD5EC();
      *(v26 + 88) = v29;
      sub_22A4DCE2C();
      *(v26 + 96) = sub_22A4DD8AC();
      v24 = sub_22956AC48(v26);
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87CD90, &qword_22A5779F0);
      swift_arrayDestroy();
      (*(v25 + 8))(v10, v7);
    }
  }

  __swift_destroy_boxed_opaque_existential_0(v32);
  __swift_destroy_boxed_opaque_existential_0(v33);
  return v24;
}

uint64_t sub_2297678B0(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v22 = a1;
  v23 = a4;
  v16 = a3;
  v20 = a2;
  v21 = sub_22A4DDD7C();
  v19 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_22A4DDD5C();
  MEMORY[0x28223BE20](v8);
  v9 = sub_22A4DD29C();
  MEMORY[0x28223BE20](v9 - 8);
  swift_defaultActor_initialize();
  v10 = sub_229562F68(0, &qword_281401980, 0x277D85C78);
  *(a5 + 112) = 0u;
  *(a5 + 128) = 0u;
  v17 = &OBJC_IVAR____TtCE13HomeKitDaemonCSo17HMDSymptomManager26NetworkDiagnosticsObserver_serialQueue;
  v18 = v10;
  *(a5 + 144) = 0;
  sub_22A4DD28C();
  v24 = MEMORY[0x277D84F90];
  sub_229767DE4(&qword_281401990, 255, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87BAF0, &unk_22A5761E0);
  sub_229579858(&qword_281401CA0, &unk_27D87BAF0, &unk_22A5761E0);
  v11 = v20;
  sub_22A4DE03C();
  (*(v19 + 104))(v7, *MEMORY[0x277D85260], v21);
  *(a5 + 152) = sub_22A4DDDCC();
  *(a5 + 184) = 0;
  swift_unknownObjectWeakInit();
  *(a5 + 192) = MEMORY[0x277D84F98];
  if ([v11 isNetworkDiagnosticsEnabled])
  {

    *(a5 + 184) = &off_283CE3958;
    v12 = v22;
    swift_unknownObjectWeakAssign();

    v13 = v23;
    *(a5 + 160) = v16;
    *(a5 + 168) = v13;
  }

  else
  {
    sub_22953EAE4(a5 + 112, &qword_27D8809D8, &unk_22A582040);

    sub_2296B874C(a5 + 176);

    _s26NetworkDiagnosticsObserverCMa();
    swift_defaultActor_destroy();

    swift_deallocPartialClassInstance();
    return 0;
  }

  return a5;
}

uint64_t sub_229767C20(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[9];
  v7 = v1[10];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_229586D38;

  return sub_229765CCC(a1, v4, v5, (v1 + 4), v6, v7);
}

uint64_t sub_229767D04(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8809D8, &unk_22A582040);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_229767D74(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8809D8, &unk_22A582040);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_229767DE4(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_229767E34(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_229569B30;

  return sub_229764890(a1, v4, v5, v6);
}

uint64_t sub_229767EE8(uint64_t a1)
{
  v35 = a1;
  v1 = sub_22A4DCC4C();
  v30 = v1;
  v2 = *(v1 - 8);
  v3 = MEMORY[0x28223BE20](v1);
  v33 = v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v6 = v29 - v5;
  v7 = sub_22A4DC75C();
  v32 = v7;
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = v29 - v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C350, &qword_22A576E40);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22A582080;
  sub_22A4DC72C();
  sub_22A4DC74C();
  v31 = *(v8 + 8);
  v31(v13, v7);
  v15 = sub_22A4DE7DC();
  sub_22A4DCB6C();
  sub_22A4DCC3C();
  v16 = *(v2 + 8);
  v29[1] = v2 + 8;
  v16(v6, v1);
  v17 = sub_22A4DE7DC();
  v18 = [v34 accessory];
  v19 = objc_opt_self();
  v20 = [v19 PathWithEventID:v15 endpointID:v35 clusterID:v17 accessory:v18];

  *(inited + 32) = v20;
  sub_22A4DC73C();
  sub_22A4DC74C();
  v31(v11, v32);
  v21 = sub_22A4DE7DC();
  v22 = v33;
  sub_22A4DCC0C();
  sub_22A4DCC3C();
  v16(v22, v30);
  v23 = sub_22A4DE7DC();
  v24 = [v34 accessory];
  v25 = [v19 PathWithEventID:v21 endpointID:v35 clusterID:v23 accessory:v24];

  *(inited + 40) = v25;
  sub_22965C5B0(inited);
  v27 = v26;
  swift_setDeallocating();
  swift_arrayDestroy();
  return v27;
}

uint64_t sub_229768300(void *a1)
{
  v3 = sub_22A4DD07C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [v1 accessory];
  if (v7)
  {
    v8 = v7;
    objc_opt_self();
    v9 = swift_dynamicCastObjCClass();
    if (v9)
    {
      v10 = v9;
      if ([v9 supportsClimateAutomations])
      {
        v11 = [v10 home];
        if (v11)
        {
          v12 = v11;
          v13 = [a1 eventID];
          if (v13)
          {
            v14 = v13;
            if ([v12 isCurrentDeviceConfirmedPrimaryResident])
            {
              v15 = [a1 clusterID];
              v16 = sub_2297686D0(v14, v15, &selRef_supportsAdaptiveTemperatureAutomations, MEMORY[0x277D17228], MEMORY[0x277D17398]);

              if (v16)
              {

                v17 = 1;
              }

              else
              {
                v25 = [a1 clusterID];
                v17 = sub_2297686D0(v14, v25, &selRef_supportsCleanEnergyAutomation, MEMORY[0x277D17230], MEMORY[0x277D173B8]);
              }

              return v17 & 1;
            }

            v8 = v12;
          }

          else
          {
            v14 = v12;
          }

          v8 = v14;
        }
      }
    }
  }

  sub_229562F68(0, &qword_27D8809F0, off_278666248);
  sub_22A4DDC0C();
  sub_22A4DD08C();
  v18 = a1;
  v19 = sub_22A4DD05C();
  v20 = sub_22A4DDCEC();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    *v21 = 138412290;
    *(v21 + 4) = v18;
    *v22 = v18;
    v23 = v18;
    _os_log_impl(&dword_229538000, v19, v20, "Climate should not handle event report with matter path: %@", v21, 0xCu);
    sub_22953EAE4(v22, &qword_27D87D7D0, &unk_22A578D90);
    MEMORY[0x22AAD4E50](v22, -1, -1);
    MEMORY[0x22AAD4E50](v21, -1, -1);
  }

  (*(v4 + 8))(v6, v3);
  v17 = 0;
  return v17 & 1;
}

uint64_t sub_2297686D0(uint64_t a1, uint64_t a2, SEL *a3, uint64_t (*a4)(void), void (*a5)(void))
{
  v28 = a5;
  v8 = v5;
  v10 = sub_22A4DCC4C();
  v27 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_22A4DC75C();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = [v8 accessory];
  if (!v17)
  {
    goto LABEL_8;
  }

  v18 = v17;
  objc_opt_self();
  v19 = swift_dynamicCastObjCClass();
  if (!v19)
  {
LABEL_7:

LABEL_8:
    LOBYTE(v21) = 0;
    return v21 & 1;
  }

  v26[1] = a2;
  v20 = [v19 *a3];
  v21 = [v20 BOOLValue];

  if (v21)
  {
    sub_229562F68(0, &qword_281401760, 0x277D82BB8);
    a4();
    sub_22A4DC74C();
    (*(v14 + 8))(v16, v13);
    v22 = sub_22A4DE7DC();
    v23 = sub_22A4DDEDC();

    if (v23)
    {
      v28();
      sub_22A4DCC3C();
      (*(v27 + 8))(v12, v10);
      v24 = sub_22A4DE7DC();
      LOBYTE(v21) = sub_22A4DDEDC();

      goto LABEL_6;
    }

    goto LABEL_7;
  }

LABEL_6:

  return v21 & 1;
}

unint64_t sub_229768968()
{
  result = qword_27D8819F0;
  if (!qword_27D8819F0)
  {
    sub_229562F68(255, &qword_27D87E358, off_278666270);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8819F0);
  }

  return result;
}

uint64_t sub_2297689D0(uint64_t a1)
{
  v2[28] = a1;
  v2[29] = v1;
  v2[30] = swift_getObjectType();
  v3 = sub_22A4DD07C();
  v2[31] = v3;
  v2[32] = *(v3 - 8);
  v2[33] = swift_task_alloc();
  v4 = sub_22A4DC86C();
  v2[34] = v4;
  v2[35] = *(v4 - 8);
  v2[36] = swift_task_alloc();
  v2[37] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D881900, &unk_22A576E70);
  v2[38] = swift_task_alloc();
  v5 = sub_22A4DC8EC();
  v2[39] = v5;
  v2[40] = *(v5 - 8);
  v2[41] = swift_task_alloc();
  v6 = sub_22A4DCA0C();
  v2[42] = v6;
  v2[43] = *(v6 - 8);
  v2[44] = swift_task_alloc();
  v2[45] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_229768C00, 0, 0);
}

uint64_t sub_229768C00()
{

  sub_22A4DC9FC();
  (*(v0[43] + 32))(v0[45], v0[44], v0[42]);
  v1 = swift_task_alloc();
  v0[46] = v1;
  *v1 = v0;
  v1[1] = sub_229768E78;
  v2 = v0[38];

  return sub_2297693CC(v2);
}

uint64_t sub_229768E78()
{

  return MEMORY[0x2822009F8](sub_229768F74, 0, 0);
}

uint64_t sub_229768F74()
{
  v33 = v0;
  v1 = *(v0 + 312);
  v2 = *(v0 + 320);
  v3 = *(v0 + 304);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    (*(*(v0 + 344) + 8))(*(v0 + 360), *(v0 + 336));
    sub_22953EAE4(v3, &qword_27D881900, &unk_22A576E70);
    v4 = 0;
  }

  else
  {
    v5 = *(v0 + 288);
    v6 = *(v0 + 296);
    v8 = *(v0 + 272);
    v7 = *(v0 + 280);
    (*(v2 + 32))(*(v0 + 328), v3, v1);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D080, &qword_22A57CF50);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_22A576180;
    *(inited + 32) = 0xD000000000000017;
    *(inited + 40) = 0x800000022A589450;
    v10 = sub_22A4DC8DC();
    *(inited + 72) = MEMORY[0x277D84B78];
    *(inited + 48) = v10;
    v4 = sub_22956AC5C(inited);
    swift_setDeallocating();
    sub_22953EAE4(inited + 32, &unk_27D87DE50, &qword_22A577CD0);
    sub_22A4DC9BC();
    (*(v7 + 104))(v5, *MEMORY[0x277D17280], v8);
    sub_22976B5B8();
    sub_22A4DD7DC();
    sub_22A4DD7DC();
    v11 = *(v7 + 8);
    v11(v5, v8);
    v11(v6, v8);
    v12 = *(v0 + 360);
    if (*(v0 + 376) == *(v0 + 377))
    {
      v13 = sub_22A4DC9DC();
      v12 = *(v0 + 360);
      if ((v13 & 0x10000) == 0)
      {
        v14 = v13;
        v15 = sub_22A4DC9EC();
        if ((v15 & 0x10000) == 0)
        {
          v16 = sub_22976A7CC(v14, v15);
          if (v16 != 2)
          {
            v21 = *(v0 + 336);
            v22 = *(v0 + 312);
            v23 = (*(v0 + 320) + 8);
            v24 = (*(v0 + 344) + 8);
            v25 = *(v0 + 360);
            v26 = *(v0 + 328);
            if (v16)
            {
              *(v0 + 184) = MEMORY[0x277D839B0];
              *(v0 + 160) = 1;
              sub_229543C58(v0 + 160, v0 + 192);
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v32 = v4;
              v28 = __swift_mutable_project_boxed_opaque_existential_0(v0 + 192, *(v0 + 216));
              sub_2297FEF7C(*v28, 0x6E69746165487369, 0xE900000000000067, isUniquelyReferenced_nonNull_native, &v32);
              (*v23)(v26, v22);
              (*v24)(v25, v21);
              v29 = (v0 + 192);
            }

            else
            {
              *(v0 + 120) = MEMORY[0x277D839B0];
              *(v0 + 96) = 1;
              sub_229543C58(v0 + 96, v0 + 128);
              v30 = swift_isUniquelyReferenced_nonNull_native();
              v32 = v4;
              v31 = __swift_mutable_project_boxed_opaque_existential_0(v0 + 128, *(v0 + 152));
              sub_2297FEF7C(*v31, 0x6E696C6F6F437369, 0xE900000000000067, v30, &v32);
              (*v23)(v26, v22);
              (*v24)(v25, v21);
              v29 = (v0 + 128);
            }

            __swift_destroy_boxed_opaque_existential_0(v29);
            v4 = v32;
            goto LABEL_9;
          }
        }

        v12 = *(v0 + 360);
      }
    }

    v17 = *(v0 + 336);
    v18 = *(v0 + 344);
    (*(*(v0 + 320) + 8))(*(v0 + 328), *(v0 + 312));
    (*(v18 + 8))(v12, v17);
  }

LABEL_9:

  v19 = *(v0 + 8);

  return v19(v4);
}

uint64_t sub_2297693CC(uint64_t a1)
{
  v2[12] = a1;
  v2[13] = v1;
  v2[14] = swift_getObjectType();
  v3 = sub_22A4DD07C();
  v2[15] = v3;
  v2[16] = *(v3 - 8);
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();
  v2[19] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8818D0, &qword_22A57A448);
  v2[20] = swift_task_alloc();
  v4 = sub_22A4DC85C();
  v2[21] = v4;
  v2[22] = *(v4 - 8);
  v2[23] = swift_task_alloc();
  v5 = sub_22A4DCA3C();
  v2[24] = v5;
  v2[25] = *(v5 - 8);
  v2[26] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8818C0, &unk_22A5820B0);
  v2[27] = swift_task_alloc();
  v2[28] = swift_task_alloc();
  v2[29] = swift_task_alloc();
  v6 = sub_22A4DCD0C();
  v2[30] = v6;
  v2[31] = *(v6 - 8);
  v2[32] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22976964C, 0, 0);
}

uint64_t sub_22976964C()
{
  v34 = v0;
  v1 = [*(v0 + 104) matterDevice];
  *(v0 + 264) = v1;
  if (v1)
  {
    v2 = v1;
    v3 = [*(v0 + 104) accessory];
    if (v3)
    {
      v4 = v3;
      objc_opt_self();
      v5 = swift_dynamicCastObjCClass();
      if (v5)
      {
        v6 = [v5 valenciaMatterEndpoint];

        if (v6)
        {
          [v6 unsignedShortValue];

          sub_22A4DCCEC();
          v7 = sub_229562F68(0, &qword_27D87DB90, 0x277CD5310);
          *(v0 + 272) = v7;
          v8 = MEMORY[0x277D17450];
          *(v0 + 40) = v7;
          *(v0 + 48) = v8;
          *(v0 + 16) = v2;
          v9 = v2;
          v10 = swift_task_alloc();
          *(v0 + 280) = v10;
          *v10 = v0;
          v10[1] = sub_229769ADC;
          v11 = *(v0 + 256);
          v12 = *(v0 + 224);

          return MEMORY[0x282171618](v12, v0 + 16, v11);
        }
      }

      else
      {
      }
    }

    sub_2296F8604();
    v21 = sub_22A4DD05C();
    v22 = sub_22A4DDCEC();
    v23 = os_log_type_enabled(v21, v22);
    v24 = *(v0 + 152);
    v25 = *(v0 + 120);
    v26 = *(v0 + 128);
    if (v23)
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v33 = v28;
      *v27 = 136315138;
      *(v27 + 4) = sub_2295A3E30(0xD000000000000019, 0x800000022A595270, &v33);
      _os_log_impl(&dword_229538000, v21, v22, "%s Cannot determine the endpoint for the Thermostat cluster", v27, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v28);
      MEMORY[0x22AAD4E50](v28, -1, -1);
      MEMORY[0x22AAD4E50](v27, -1, -1);
    }

    else
    {
    }

    (*(v26 + 8))(v24, v25);
  }

  else
  {
    sub_2296F8604();
    v13 = sub_22A4DD05C();
    v14 = sub_22A4DDCEC();
    v15 = os_log_type_enabled(v13, v14);
    v16 = *(v0 + 144);
    v17 = *(v0 + 120);
    v18 = *(v0 + 128);
    if (v15)
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v33 = v20;
      *v19 = 136315138;
      *(v19 + 4) = sub_2295A3E30(0xD000000000000019, 0x800000022A595270, &v33);
      _os_log_impl(&dword_229538000, v13, v14, "%s matterDevice is nil", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v20);
      MEMORY[0x22AAD4E50](v20, -1, -1);
      MEMORY[0x22AAD4E50](v19, -1, -1);
    }

    (*(v18 + 8))(v16, v17);
  }

  v29 = *(v0 + 96);
  v30 = sub_22A4DC8EC();
  (*(*(v30 - 8) + 56))(v29, 1, 1, v30);

  v31 = *(v0 + 8);

  return v31();
}

uint64_t sub_229769ADC()
{
  v2 = *v1;
  *(*v1 + 288) = v0;

  if (v0)
  {
    v3 = sub_22976A184;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0((v2 + 16));
    v3 = sub_229769BF8;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_229769BF8()
{
  v2 = v0[33];
  v1 = v0[34];
  sub_22976B610(v0[28], v0[29]);
  v3 = MEMORY[0x277D17450];
  v0[10] = v1;
  v0[11] = v3;
  v0[7] = v2;
  v4 = v2;
  v5 = swift_task_alloc();
  v0[37] = v5;
  *v5 = v0;
  v5[1] = sub_229769CC0;
  v6 = v0[32];

  return MEMORY[0x282171560](v0 + 7, v6);
}

uint64_t sub_229769CC0(uint64_t a1)
{
  v3 = *v2;
  v3[38] = a1;
  v3[39] = v1;

  if (v1)
  {
    v4 = sub_22976A4A8;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0(v3 + 7);
    v4 = sub_229769DDC;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_229769DDC()
{
  v1 = v0[27];
  v2 = v0[24];
  v3 = v0[25];
  sub_22976B680(v0[29], v1);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    v4 = v0[32];
    v5 = v0[33];
    v6 = v0[30];
    v7 = v0[31];
    v8 = v0[29];
    v9 = v0[27];

    sub_22953EAE4(v8, &qword_27D8818C0, &unk_22A5820B0);
    (*(v7 + 8))(v4, v6);
    sub_22953EAE4(v9, &qword_27D8818C0, &unk_22A5820B0);
LABEL_5:
    v25 = v0[12];
    v26 = sub_22A4DC8EC();
    (*(*(v26 - 8) + 56))(v25, 1, 1, v26);
    goto LABEL_7;
  }

  v10 = v0[38];
  v11 = v0[26];
  v12 = v0[21];
  v13 = v0[22];
  v14 = v0[20];
  (*(v0[25] + 32))(v11, v0[27], v0[24]);
  *(swift_task_alloc() + 16) = v11;
  sub_229685338(sub_22976B6F0, v10, v14);

  v15 = (*(v13 + 48))(v14, 1, v12);
  v17 = v0[32];
  v16 = v0[33];
  v19 = v0[30];
  v18 = v0[31];
  v20 = v0[29];
  v22 = v0[25];
  v21 = v0[26];
  v23 = v0[24];
  if (v15 == 1)
  {
    v24 = v0[20];

    sub_22953EAE4(v20, &qword_27D8818C0, &unk_22A5820B0);
    (*(v18 + 8))(v17, v19);
    sub_22953EAE4(v24, &unk_27D8818D0, &qword_22A57A448);
    (*(v22 + 8))(v21, v23);
    goto LABEL_5;
  }

  v35 = v0[26];
  v36 = v0[24];
  v28 = v0[22];
  v27 = v0[23];
  v29 = v0[21];
  v34 = v0[32];
  v30 = v0[12];
  (*(v28 + 32))(v27, v0[20], v29);
  sub_22A4DC83C();

  (*(v28 + 8))(v27, v29);
  sub_22953EAE4(v20, &qword_27D8818C0, &unk_22A5820B0);
  (*(v18 + 8))(v34, v19);
  v31 = sub_22A4DC8EC();
  (*(*(v31 - 8) + 56))(v30, 0, 1, v31);
  (*(v22 + 8))(v35, v36);
LABEL_7:

  v32 = v0[1];

  return v32();
}

uint64_t sub_22976A184()
{
  v27 = v0;
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v1 = v0[36];
  sub_2296F8604();
  v2 = v1;
  v3 = sub_22A4DD05C();
  v4 = sub_22A4DDCEC();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[32];
  v25 = v0[33];
  v8 = v0[30];
  v7 = v0[31];
  v9 = v0[16];
  v10 = v0[17];
  v11 = v0[15];
  if (v5)
  {
    v24 = v0[30];
    v12 = swift_slowAlloc();
    v23 = v6;
    v13 = swift_slowAlloc();
    v22 = v10;
    v14 = swift_slowAlloc();
    v26 = v14;
    *v12 = 136315394;
    *(v12 + 4) = sub_2295A3E30(0xD000000000000019, 0x800000022A595270, &v26);
    *(v12 + 12) = 2112;
    v15 = v1;
    v16 = _swift_stdlib_bridgeErrorToNSError();
    *(v12 + 14) = v16;
    *v13 = v16;
    _os_log_impl(&dword_229538000, v3, v4, "%s Failed to read attributes with error: %@", v12, 0x16u);
    sub_22953EAE4(v13, &qword_27D87D7D0, &unk_22A578D90);
    MEMORY[0x22AAD4E50](v13, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v14);
    MEMORY[0x22AAD4E50](v14, -1, -1);
    MEMORY[0x22AAD4E50](v12, -1, -1);

    (*(v9 + 8))(v22, v11);
    (*(v7 + 8))(v23, v24);
  }

  else
  {

    (*(v9 + 8))(v10, v11);
    (*(v7 + 8))(v6, v8);
  }

  v17 = v0[36];
  v18 = v0[12];
  v19 = sub_22A4DC8EC();
  (*(*(v19 - 8) + 56))(v18, 1, 1, v19);
  if (!v17)
  {
    sub_22953EAE4(v0[29], &qword_27D8818C0, &unk_22A5820B0);
  }

  v20 = v0[1];

  return v20();
}

uint64_t sub_22976A4A8()
{
  v27 = v0;
  __swift_destroy_boxed_opaque_existential_0(v0 + 7);
  v1 = v0[39];
  sub_2296F8604();
  v2 = v1;
  v3 = sub_22A4DD05C();
  v4 = sub_22A4DDCEC();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[32];
  v25 = v0[33];
  v8 = v0[30];
  v7 = v0[31];
  v9 = v0[16];
  v10 = v0[17];
  v11 = v0[15];
  if (v5)
  {
    v24 = v0[30];
    v12 = swift_slowAlloc();
    v23 = v6;
    v13 = swift_slowAlloc();
    v22 = v10;
    v14 = swift_slowAlloc();
    v26 = v14;
    *v12 = 136315394;
    *(v12 + 4) = sub_2295A3E30(0xD000000000000019, 0x800000022A595270, &v26);
    *(v12 + 12) = 2112;
    v15 = v1;
    v16 = _swift_stdlib_bridgeErrorToNSError();
    *(v12 + 14) = v16;
    *v13 = v16;
    _os_log_impl(&dword_229538000, v3, v4, "%s Failed to read attributes with error: %@", v12, 0x16u);
    sub_22953EAE4(v13, &qword_27D87D7D0, &unk_22A578D90);
    MEMORY[0x22AAD4E50](v13, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v14);
    MEMORY[0x22AAD4E50](v14, -1, -1);
    MEMORY[0x22AAD4E50](v12, -1, -1);

    (*(v9 + 8))(v22, v11);
    (*(v7 + 8))(v23, v24);
  }

  else
  {

    (*(v9 + 8))(v10, v11);
    (*(v7 + 8))(v6, v8);
  }

  v17 = v0[36];
  v18 = v0[12];
  v19 = sub_22A4DC8EC();
  (*(*(v19 - 8) + 56))(v18, 1, 1, v19);
  if (!v17)
  {
    sub_22953EAE4(v0[29], &qword_27D8818C0, &unk_22A5820B0);
  }

  v20 = v0[1];

  return v20();
}

uint64_t sub_22976A7CC(int a1, int a2)
{
  LODWORD(v33) = a2;
  LODWORD(v34) = a1;
  swift_getObjectType();
  v3 = sub_22A4DD07C();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v6 = MEMORY[0x28223BE20](v5);
  v8 = &v32 - v7;
  MEMORY[0x28223BE20](v6);
  v10 = &v32 - v9;
  v11 = sub_22A4DCD0C();
  v35 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = [v2 matterDevice];
  if (!v14)
  {
    sub_2296F8604();
    v21 = sub_22A4DD05C();
    v22 = sub_22A4DDCEC();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v36[0] = v24;
      *v23 = 136315138;
      *(v23 + 4) = sub_2295A3E30(0xD00000000000004BLL, 0x800000022A595220, v36);
      _os_log_impl(&dword_229538000, v21, v22, "%s matterDevice is nil", v23, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v24);
      MEMORY[0x22AAD4E50](v24, -1, -1);
      MEMORY[0x22AAD4E50](v23, -1, -1);
    }

    (*(v4 + 8))(v8, v3);
    return 2;
  }

  v15 = v14;
  v16 = [v2 accessory];
  if (!v16)
  {
    goto LABEL_10;
  }

  v17 = v16;
  objc_opt_self();
  v18 = swift_dynamicCastObjCClass();
  if (!v18)
  {

    goto LABEL_10;
  }

  v19 = [v18 matterThermostatEndpoint];

  if (!v19)
  {
LABEL_10:
    sub_2296F8604();
    v25 = sub_22A4DD05C();
    v26 = sub_22A4DDCEC();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v36[0] = v28;
      *v27 = 136315138;
      *(v27 + 4) = sub_2295A3E30(0xD00000000000004BLL, 0x800000022A595220, v36);
      _os_log_impl(&dword_229538000, v25, v26, "%s Cannot determine the endpoint for the Thermostat cluster", v27, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v28);
      MEMORY[0x22AAD4E50](v28, -1, -1);
      MEMORY[0x22AAD4E50](v27, -1, -1);
    }

    else
    {
    }

    (*(v4 + 8))(v10, v3);
    return 2;
  }

  [v19 unsignedShortValue];

  sub_22A4DCCEC();
  v36[3] = sub_229562F68(0, &qword_27D87DB90, 0x277CD5310);
  v36[4] = MEMORY[0x277D17450];
  v36[0] = v15;
  v20 = v15;
  v29 = sub_22A4DC90C();
  (*(v35 + 8))(v13, v11);

  result = __swift_destroy_boxed_opaque_existential_0(v36);
  v31 = v33 + v34;
  if ((v33 + v34) == v31)
  {
    return v29 <= (v31 + ((v31 & 0x8000) >> 15)) >> 1;
  }

  __break(1u);
  return result;
}

BOOL sub_22976AE2C()
{
  v0 = sub_22A4DC82C();
  v2 = v1;
  v3 = sub_22A4DCA1C();
  v5 = v4;
  v6 = sub_2297B7550(v0, v2, v3, v4);
  sub_2295798D4(v3, v5);
  sub_2295798D4(v0, v2);
  return v6;
}

uint64_t sub_22976AEB8()
{
  v1[8] = v0;
  v1[9] = swift_getObjectType();
  v2 = sub_22A4DD07C();
  v1[10] = v2;
  v1[11] = *(v2 - 8);
  v1[12] = swift_task_alloc();
  v1[13] = swift_task_alloc();
  v1[14] = swift_task_alloc();
  v3 = sub_22A4DCD0C();
  v1[15] = v3;
  v1[16] = *(v3 - 8);
  v1[17] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22976AFF8, 0, 0);
}

uint64_t sub_22976AFF8()
{
  v40 = v0;
  v1 = [*(v0 + 64) matterDevice];
  if (v1)
  {
    v2 = v1;
    v3 = [*(v0 + 64) accessory];
    if (v3)
    {
      v4 = v3;
      objc_opt_self();
      v5 = swift_dynamicCastObjCClass();
      if (v5)
      {
        v6 = [v5 valenciaMatterEndpoint];
        if (v6)
        {
          v7 = v6;
          v8 = sub_229562F68(0, &qword_27D87DB90, 0x277CD5310);
          v9 = MEMORY[0x277D17450];
          *(v0 + 40) = v8;
          *(v0 + 48) = v9;
          *(v0 + 16) = v2;
          v10 = v2;
          [v7 unsignedShortValue];
          sub_22A4DCCEC();
          v11 = sub_22A4DC97C();
          (*(*(v0 + 128) + 8))(*(v0 + 136), *(v0 + 120));

          __swift_destroy_boxed_opaque_existential_0((v0 + 16));
          goto LABEL_15;
        }
      }
    }

    sub_2296F8604();
    v28 = sub_22A4DD05C();
    v29 = sub_22A4DDCEC();
    v30 = os_log_type_enabled(v28, v29);
    v31 = *(v0 + 112);
    v32 = *(v0 + 80);
    v33 = *(v0 + 88);
    if (v30)
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v39[0] = v35;
      *v34 = 136315138;
      *(v34 + 4) = sub_2295A3E30(0xD00000000000002ELL, 0x800000022A5951C0, v39);
      _os_log_impl(&dword_229538000, v28, v29, "%s Found no capable endpoint to read AppleFollowSystemModeInPreset", v34, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v35);
      MEMORY[0x22AAD4E50](v35, -1, -1);
      MEMORY[0x22AAD4E50](v34, -1, -1);
    }

    else
    {
    }

    (*(v33 + 8))(v31, v32);
  }

  else
  {
    v12 = *(v0 + 64);
    sub_2296F8604();
    v13 = v12;
    v14 = sub_22A4DD05C();
    v15 = sub_22A4DDCEC();

    v16 = os_log_type_enabled(v14, v15);
    v17 = *(v0 + 104);
    v19 = *(v0 + 80);
    v18 = *(v0 + 88);
    if (v16)
    {
      v20 = *(v0 + 64);
      v38 = *(v0 + 104);
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v39[0] = v22;
      *v21 = 136315394;
      *(v21 + 4) = sub_2295A3E30(0xD00000000000002ELL, 0x800000022A5951C0, v39);
      *(v21 + 12) = 2080;
      v23 = [v20 matterDevice];
      *(v0 + 56) = v23;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8809E8, &qword_22A582098);
      v24 = sub_22A4DBA6C();
      v26 = v25;

      v27 = sub_2295A3E30(v24, v26, v39);

      *(v21 + 14) = v27;
      _os_log_impl(&dword_229538000, v14, v15, "%s Found no matter device %s", v21, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AAD4E50](v22, -1, -1);
      MEMORY[0x22AAD4E50](v21, -1, -1);

      (*(v18 + 8))(v38, v19);
    }

    else
    {

      (*(v18 + 8))(v17, v19);
    }
  }

  v11 = 0;
LABEL_15:

  v36 = *(v0 + 8);

  return v36(v11 & 1);
}

unint64_t sub_22976B5B8()
{
  result = qword_27D87C3A0;
  if (!qword_27D87C3A0)
  {
    sub_22A4DC86C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D87C3A0);
  }

  return result;
}

uint64_t sub_22976B610(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8818C0, &unk_22A5820B0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_22976B680(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8818C0, &unk_22A5820B0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22976B710()
{
  if (*(v0 + OBJC_IVAR____TtCC13HomeKitDaemon16HomeIntelligence20DistributedScheduler_updateTask))
  {

    sub_22A4DDA7C();
  }

  MEMORY[0x22AAD4F90](v0 + 120);
  sub_22953EAE4(v0 + OBJC_IVAR____TtCC13HomeKitDaemon16HomeIntelligence20DistributedScheduler_eventStream, &qword_27D87D5A0, &qword_22A582190);

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t _s20DistributedSchedulerCMa(uint64_t a1)
{
  result = qword_27D880A10;
  if (!qword_27D880A10)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_22976B82C(uint64_t a1)
{
  sub_22976CE04(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_22976B8F8()
{
  v1 = v0;
  v2 = *v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D8F0, &qword_22A578D70);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v20 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D5A0, &qword_22A582190);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v20 - v7;
  v9 = sub_22A4DD07C();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_229541CB0(v2, &off_283CE3A98);
  v13 = sub_22A4DD05C();
  v14 = sub_22A4DDCCC();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_229538000, v13, v14, "Registering for system state changes", v15, 2u);
    MEMORY[0x22AAD4E50](v15, -1, -1);
  }

  (*(v10 + 8))(v12, v9);
  sub_2295FE8C0(v1 + OBJC_IVAR____TtCC13HomeKitDaemon16HomeIntelligence20DistributedScheduler_eventStream, v8);
  sub_229620368(v8);
  sub_22953EAE4(v8, &qword_27D87D5A0, &qword_22A582190);
  v16 = sub_22A4DD9DC();
  (*(*(v16 - 8) + 56))(v5, 1, 1, v16);
  v17 = swift_allocObject();
  swift_weakInit();
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = v17;
  *(v1 + OBJC_IVAR____TtCC13HomeKitDaemon16HomeIntelligence20DistributedScheduler_updateTask) = sub_22957F3C0(0, 0, v5, &unk_22A5821A0, v18);
}

uint64_t sub_22976BC04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[13] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D880A28, &qword_22A5821A8);
  v4[14] = v5;
  v4[15] = *(v5 - 8);
  v4[16] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D5A0, &qword_22A582190);
  v4[17] = swift_task_alloc();
  v4[18] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22976BD14, 0, 0);
}

uint64_t sub_22976BD14()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 152) = Strong;
  if (Strong)
  {

    return MEMORY[0x2822009F8](sub_22976BDE8, Strong, 0);
  }

  else
  {

    v2 = *(v0 + 8);

    return v2();
  }
}

uint64_t sub_22976BDE8()
{
  sub_2295FE8C0(*(v0 + 152) + OBJC_IVAR____TtCC13HomeKitDaemon16HomeIntelligence20DistributedScheduler_eventStream, *(v0 + 136));

  return MEMORY[0x2822009F8](sub_22976BE68, 0, 0);
}

uint64_t sub_22976BE68()
{
  sub_2295FE930(v0[17], v0[18]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D600, &qword_22A5821B0);
  sub_22A4DDA3C();
  swift_beginAccess();
  v1 = swift_task_alloc();
  v0[20] = v1;
  *v1 = v0;
  v1[1] = sub_22976BF5C;
  v2 = v0[14];

  return MEMORY[0x2822003E8](v0 + 2, 0, 0, v2);
}

uint64_t sub_22976BF5C()
{

  return MEMORY[0x2822009F8](sub_22976C058, 0, 0);
}

uint64_t sub_22976C058()
{
  if (v0[5])
  {
    Strong = swift_weakLoadStrong();
    v0[21] = Strong;
    if (Strong)
    {
      v2 = swift_task_alloc();
      v0[22] = v2;
      *v2 = v0;
      v2[1] = sub_22976C1D0;

      return sub_22976CBC4();
    }

    v8 = v0[18];
    (*(v0[15] + 8))(v0[16], v0[14]);
    sub_22953EAE4(v8, &qword_27D87D5A0, &qword_22A582190);
    v5 = &qword_27D880A30;
    v6 = &qword_22A5821B8;
    v7 = (v0 + 2);
  }

  else
  {
    v4 = v0[18];
    (*(v0[15] + 8))(v0[16], v0[14]);
    v5 = &qword_27D87D5A0;
    v6 = &qword_22A582190;
    v7 = v4;
  }

  sub_22953EAE4(v7, v5, v6);

  v9 = v0[1];

  return v9();
}

uint64_t sub_22976C1D0()
{

  return MEMORY[0x2822009F8](sub_22976C2CC, 0, 0);
}

uint64_t sub_22976C2CC()
{

  sub_22953EAE4(v0 + 16, &qword_27D880A30, &qword_22A5821B8);
  v1 = swift_task_alloc();
  *(v0 + 160) = v1;
  *v1 = v0;
  v1[1] = sub_22976BF5C;
  v2 = *(v0 + 112);

  return MEMORY[0x2822003E8](v0 + 16, 0, 0, v2);
}

uint64_t sub_22976C394(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[11] = a3;
  v4[12] = a4;
  v4[9] = a1;
  v4[10] = a2;
  _s20ControlBlockInternalVMa(0);
  v4[13] = swift_task_alloc();
  v6 = sub_22A4DB7DC();
  v4[14] = v6;
  v4[15] = *(v6 - 8);
  v4[16] = swift_task_alloc();
  v7 = sub_22A4DD07C();
  v4[17] = v7;
  v4[18] = *(v7 - 8);
  v4[19] = swift_task_alloc();
  v4[20] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22976C4F0, a3, 0);
}

uint64_t sub_22976C4F0()
{
  v21 = v0;
  sub_229541CB0(v0[12], &off_283CE3A98);
  swift_unknownObjectRetain();
  v1 = sub_22A4DD05C();
  v2 = sub_22A4DDCDC();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v1, v2))
  {
    v19 = v0[20];
    v3 = v0[17];
    v4 = v0[18];
    v5 = v0[9];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v20 = v7;
    *v6 = 136315138;
    swift_getObjectType();
    v0[8] = v5;
    v8 = sub_22A4DE5CC();
    v10 = sub_2295A3E30(v8, v9, &v20);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_229538000, v1, v2, "Adding %s to be scheduled", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v7);
    MEMORY[0x22AAD4E50](v7, -1, -1);
    MEMORY[0x22AAD4E50](v6, -1, -1);

    v11 = *(v4 + 8);
    v11(v19, v3);
  }

  else
  {
    v12 = v0[20];
    v13 = v0[17];
    v14 = v0[18];

    v11 = *(v14 + 8);
    v11(v12, v13);
  }

  v0[21] = v11;
  v15 = v0[10];
  v0[22] = swift_getObjectType();
  v0[23] = *(v15 + 40);
  v0[24] = (v15 + 40) & 0xFFFFFFFFFFFFLL | 0x7AC000000000000;
  v17 = sub_22A4DD8CC();
  v0[25] = v17;
  v0[26] = v16;

  return MEMORY[0x2822009F8](sub_22976C6FC, v17, v16);
}

uint64_t sub_22976C6FC()
{
  v1 = *(v0 + 88);
  (*(v0 + 184))(*(v0 + 176), *(v0 + 80));

  return MEMORY[0x2822009F8](sub_22976C774, v1, 0);
}

uint64_t sub_22976C774()
{
  v1 = v0[11];
  (*(v0[15] + 32))(v0[16], v0[13], v0[14]);
  swift_beginAccess();
  if (*(*(v1 + 112) + 16))
  {
    v2 = v0[16];

    sub_2296DBEC0(v2);
    LOBYTE(v2) = v3;

    if (v2)
    {
      sub_229541CB0(v0[12], &off_283CE3A98);
      v4 = sub_22A4DD05C();
      v5 = sub_22A4DDCCC();
      v6 = os_log_type_enabled(v4, v5);
      v7 = v0[21];
      v8 = v0[19];
      v10 = v0[16];
      v9 = v0[17];
      v11 = v0[14];
      v12 = v0[15];
      if (v6)
      {
        v26 = v0[16];
        v13 = swift_slowAlloc();
        *v13 = 0;
        _os_log_impl(&dword_229538000, v4, v5, "Task already scheduled, ignoring request", v13, 2u);
        MEMORY[0x22AAD4E50](v13, -1, -1);

        v7(v8, v9);
        (*(v12 + 8))(v26, v11);
      }

      else
      {

        v7(v8, v9);
        (*(v12 + 8))(v10, v11);
      }

LABEL_13:

      v24 = v0[1];

      return v24();
    }
  }

  v14 = v0[16];
  v15 = v0[10];
  v16 = v0[9];
  swift_beginAccess();
  swift_unknownObjectRetain();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v27 = *(v1 + 112);
  *(v1 + 112) = 0x8000000000000000;
  sub_2295ABCEC(v16, v15, v14, isUniquelyReferenced_nonNull_native);
  *(v1 + 112) = v27;
  swift_endAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[27] = Strong;
  if (!Strong)
  {
    (*(v0[15] + 8))(v0[16], v0[14]);
    goto LABEL_13;
  }

  v19 = Strong;
  v20 = (*(v0[10] + 32))(v0[22]);
  v21 = sub_22962007C(v19, v20);

  if ((v21 & 1) == 0)
  {
    (*(v0[15] + 8))(v0[16], v0[14]);

    goto LABEL_13;
  }

  v22 = v0[25];
  v23 = v0[26];

  return MEMORY[0x2822009F8](sub_22976CAA4, v22, v23);
}

uint64_t sub_22976CAA4()
{
  v1 = v0[11];
  sub_2297E3398(v0[22], v0[10]);

  return MEMORY[0x2822009F8](sub_22976CB14, v1, 0);
}

uint64_t sub_22976CB14()
{
  v2 = *(v0 + 120);
  v1 = *(v0 + 128);
  v3 = *(v0 + 112);

  (*(v2 + 8))(v1, v3);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_22976CBC4()
{
  *(v1 + 16) = v0;
  *(v1 + 24) = *v0;
  return MEMORY[0x2822009F8](sub_22976CC0C, v0, 0);
}

uint64_t sub_22976CC0C()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = swift_allocObject();
  v0[4] = v3;
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;

  v4 = swift_task_alloc();
  v0[5] = v4;
  *v4 = v0;
  v4[1] = sub_22976CCF4;

  return sub_2297C85B8(&unk_22A582180, v3);
}

uint64_t sub_22976CCF4()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

void sub_22976CE04(uint64_t a1)
{
  if (!qword_27D880A20)
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D87D618, &qword_22A582120);
    v5 = _s6StreamVMa(a1, v2, v3, v4);
    if (!v6)
    {
      atomic_store(v5, &qword_27D880A20);
    }
  }
}

uint64_t sub_22976CE68(uint64_t a1, uint64_t a2)
{
  v2[5] = a1;
  v2[6] = a2;
  v4 = sub_22A4DD07C();
  v2[7] = v4;
  v2[8] = *(v4 - 8);
  v2[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22976CF2C, a1, 0);
}

uint64_t sub_22976CF2C()
{
  sub_229541CB0(*(v0 + 48), &off_283CE3A98);
  v1 = sub_22A4DD05C();
  v2 = sub_22A4DDCDC();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_229538000, v1, v2, "System state has changed, reevaluating scheduled items", v3, 2u);
    MEMORY[0x22AAD4E50](v3, -1, -1);
  }

  v5 = *(v0 + 64);
  v4 = *(v0 + 72);
  v6 = *(v0 + 56);

  (*(v5 + 8))(v4, v6);
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 80) = Strong;
  if (!Strong)
  {
LABEL_18:

    v25 = *(v0 + 8);

    return v25();
  }

  v8 = *(v0 + 40);
  swift_beginAccess();
  v9 = *(v8 + 112);
  *(v0 + 88) = v9;
  v10 = *(v9 + 32);
  *(v0 + 136) = v10;
  v11 = -1;
  v12 = -1 << v10;
  if (-(-1 << v10) < 64)
  {
    v11 = ~(-1 << -v12);
  }

  v13 = v11 & *(v9 + 64);

  if (!v13)
  {
    v15 = 0;
    while (((63 - v12) >> 6) - 1 != v15)
    {
      v14 = v15 + 1;
      v13 = *(v9 + 8 * v15++ + 72);
      if (v13)
      {
        goto LABEL_11;
      }
    }

    goto LABEL_18;
  }

  v14 = 0;
LABEL_11:
  *(v0 + 96) = v13;
  *(v0 + 104) = v14;
  v16 = *(v0 + 80);
  v17 = (*(v9 + 56) + ((v14 << 10) | (16 * __clz(__rbit64(v13)))));
  *(v0 + 112) = *v17;
  v18 = v17[1];
  *(v0 + 120) = v18;
  ObjectType = swift_getObjectType();
  *(v0 + 128) = ObjectType;
  v20 = *(v18 + 32);
  swift_unknownObjectRetain();
  v21 = v20(ObjectType, v18);
  LOBYTE(v16) = sub_22962007C(v16, v21);

  v23 = sub_22A4DD8CC();
  if (v16)
  {
    v24 = sub_22976D1DC;
  }

  else
  {
    v24 = sub_22976D40C;
  }

  return MEMORY[0x2822009F8](v24, v23, v22);
}

uint64_t sub_22976D1DC()
{
  v1 = v0[5];
  sub_2297E3398(v0[16], v0[15]);

  return MEMORY[0x2822009F8](sub_22976D24C, v1, 0);
}

uint64_t sub_22976D24C()
{
  v1 = swift_unknownObjectRelease();
  v4 = *(v0 + 104);
  v5 = (*(v0 + 96) - 1) & *(v0 + 96);
  if (v5)
  {
    v6 = *(v0 + 88);
LABEL_7:
    *(v0 + 96) = v5;
    *(v0 + 104) = v4;
    v8 = *(v0 + 80);
    v9 = (*(v6 + 56) + ((v4 << 10) | (16 * __clz(__rbit64(v5)))));
    *(v0 + 112) = *v9;
    v10 = v9[1];
    *(v0 + 120) = v10;
    ObjectType = swift_getObjectType();
    *(v0 + 128) = ObjectType;
    v12 = *(v10 + 32);
    swift_unknownObjectRetain();
    v13 = v12(ObjectType, v10);
    LOBYTE(v8) = sub_22962007C(v8, v13);

    v14 = sub_22A4DD8CC();
    v3 = v15;
    if (v8)
    {
      v16 = sub_22976D1DC;
    }

    else
    {
      v16 = sub_22976D40C;
    }

    v1 = v16;
    v2 = v14;

    return MEMORY[0x2822009F8](v1, v2, v3);
  }

  else
  {
    while (1)
    {
      v7 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        __break(1u);
        return MEMORY[0x2822009F8](v1, v2, v3);
      }

      v6 = *(v0 + 88);
      if (v7 >= (((1 << *(v0 + 136)) + 63) >> 6))
      {
        break;
      }

      v5 = *(v6 + 8 * v7 + 64);
      ++v4;
      if (v5)
      {
        v4 = v7;
        goto LABEL_7;
      }
    }

    v17 = *(v0 + 8);

    return v17();
  }
}

uint64_t sub_22976D40C()
{
  v1 = v0[5];
  sub_2297E37E4(v0[16], v0[15]);

  return MEMORY[0x2822009F8](sub_22976D7E8, v1, 0);
}

uint64_t sub_22976D498()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_229586D38;

  return sub_22976CE68(v2, v3);
}

uint64_t sub_22976D530(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a2;
  v4[4] = a4;
  v4[2] = a1;
  v4[5] = *a2;
  return MEMORY[0x2822009F8](sub_22976D578, a2, 0);
}

uint64_t sub_22976D578()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 16);
  v3 = swift_allocObject();
  v4 = vextq_s8(*(v0 + 24), *(v0 + 24), 8uLL);
  *(v0 + 48) = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v4;
  *(v3 + 40) = v1;
  swift_unknownObjectRetain();

  v5 = swift_task_alloc();
  *(v0 + 56) = v5;
  *v5 = v0;
  v5[1] = sub_229731D94;

  return sub_2297C85B8(&unk_22A5821D0, v3);
}

uint64_t sub_22976D688(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_229586D38;

  return sub_22976BC04(a1, v4, v5, v6);
}

uint64_t sub_22976D73C()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_229569B30;

  return sub_22976C394(v2, v3, v5, v4);
}

unint64_t sub_22976D7EC(unint64_t result, uint64_t *a2)
{
  v29 = a2;
  if (result >> 62)
  {
    goto LABEL_17;
  }

  v2 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (1)
  {
    v3 = MEMORY[0x277D84F90];
    if (!v2)
    {
      return v3;
    }

    v4 = result;
    v37 = MEMORY[0x277D84F90];
    result = sub_229583394(0, v2 & ~(v2 >> 63), 0);
    if (v2 < 0)
    {
      break;
    }

    v5 = 0;
    v3 = v37;
    v6 = v4;
    v27 = v4;
    v28 = v4 & 0xC000000000000001;
    v25 = v4 & 0xFFFFFFFFFFFFFF8;
    v26 = v2;
    while (!__OFADD__(v5, 1))
    {
      v31 = v5 + 1;
      if (v28)
      {
        v7 = MEMORY[0x22AAD13F0](v5, v6);
      }

      else
      {
        if (v5 >= *(v25 + 16))
        {
          goto LABEL_16;
        }

        v7 = *(v6 + 8 * v5 + 32);
      }

      v8 = v7;
      v30 = v7;
      v10 = *v29;
      v9 = v29[1];
      sub_22956C148(*v29, v9);

      v11 = [v8 serviceType];
      v12 = sub_22A4DD5EC();
      v14 = v13;

      v35 = MEMORY[0x277D837D0];
      v36 = &off_283CDFC68;
      *&v34 = v12;
      *(&v34 + 1) = v14;
      sub_229557188(&v34, v33);
      v15 = MEMORY[0x277D84F98];
      LOBYTE(v14) = swift_isUniquelyReferenced_nonNull_native();
      v32 = v15;
      v16 = __swift_mutable_project_boxed_opaque_existential_0(v33, v33[3]);
      MEMORY[0x28223BE20](v16);
      v18 = (&v24 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v19 + 16))(v18);
      sub_22989A820(*v18, v18[1], 0x5465636976726573, 0xEB00000000657079, v14, &v32);
      __swift_destroy_boxed_opaque_existential_0(v33);
      v20 = v32;

      sub_2295798D4(v10, v9);

      v37 = v3;
      v22 = *(v3 + 16);
      v21 = *(v3 + 24);
      if (v22 >= v21 >> 1)
      {
        result = sub_229583394((v21 > 1), v22 + 1, 1);
        v3 = v37;
      }

      *(v3 + 16) = v22 + 1;
      *(v3 + 8 * v22 + 32) = v20;
      ++v5;
      v6 = v27;
      if (v31 == v26)
      {
        return v3;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    v23 = result;
    v2 = sub_22A4DE0EC();
    result = v23;
  }

  __break(1u);
  return result;
}

unint64_t sub_22976DAFC(unint64_t result, uint64_t a2)
{
  if (result >> 62)
  {
    goto LABEL_17;
  }

  v3 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (1)
  {
    v4 = MEMORY[0x277D84F90];
    if (!v3)
    {
      return v4;
    }

    v5 = result;
    v21 = MEMORY[0x277D84F90];
    result = sub_229583394(0, v3 & ~(v3 >> 63), 0);
    if (v3 < 0)
    {
      break;
    }

    v6 = 0;
    v4 = v21;
    v7 = v5;
    v16 = v5;
    v17 = v5 & 0xC000000000000001;
    v15 = v5 & 0xFFFFFFFFFFFFFF8;
    v8 = v3;
    while (1)
    {
      v9 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      if (v17)
      {
        v10 = MEMORY[0x22AAD13F0](v6, v7);
      }

      else
      {
        if (v6 >= *(v15 + 16))
        {
          goto LABEL_16;
        }

        v10 = *(v7 + 8 * v6 + 32);
      }

      v11 = v10;
      v18 = *a2;
      v19 = *(a2 + 8);
      v20 = MEMORY[0x277D84F98];
      sub_22956C148(*a2, v19);

      sub_2297C3648();

      sub_2295798D4(v18, v19);

      v13 = *(v21 + 16);
      v12 = *(v21 + 24);
      if (v13 >= v12 >> 1)
      {
        result = sub_229583394((v12 > 1), v13 + 1, 1);
      }

      *(v21 + 16) = v13 + 1;
      *(v21 + 8 * v13 + 32) = v20;
      ++v6;
      v7 = v16;
      if (v9 == v8)
      {
        return v4;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    v14 = result;
    v3 = sub_22A4DE0EC();
    result = v14;
  }

  __break(1u);
  return result;
}