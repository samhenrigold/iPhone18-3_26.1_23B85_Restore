void sub_20D9FF65C(uint64_t a1)
{
  v1 = a1;
  v18 = MEMORY[0x277D84F90];
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_20DD65564();
    sub_20D9D7510(0, &qword_27C843EE8, 0x277CD17F8);
    sub_20D9EC18C(&qword_27C843EF0, &qword_27C843EE8, 0x277CD17F8);
    sub_20DD65284();
    v1 = v13;
    v2 = v14;
    v3 = v15;
    v4 = v16;
    v5 = v17;
  }

  else
  {
    v6 = -1 << *(a1 + 32);
    v2 = a1 + 56;
    v3 = ~v6;
    v7 = -v6;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v5 = v8 & *(a1 + 56);

    v4 = 0;
  }

  while (v1 < 0)
  {
    if (!sub_20DD655F4() || (sub_20D9D7510(0, &qword_27C843EE8, 0x277CD17F8), swift_dynamicCast(), (v11 = v12) == 0))
    {
LABEL_21:
      sub_20D9C51CC(v1);
      return;
    }

LABEL_16:
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      MEMORY[0x20F325F00]();
      if (*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_20DD65014();
      }

      sub_20DD65054();
    }

    else
    {
    }
  }

  v9 = v4;
  v10 = v5;
  if (v5)
  {
LABEL_12:
    v5 = (v10 - 1) & v10;
    v11 = *(*(v1 + 48) + ((v4 << 9) | (8 * __clz(__rbit64(v10)))));
    if (!v11)
    {
      goto LABEL_21;
    }

    goto LABEL_16;
  }

  while (1)
  {
    v4 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v4 >= ((v3 + 64) >> 6))
    {
      goto LABEL_21;
    }

    v10 = *(v2 + 8 * v4);
    ++v9;
    if (v10)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
}

void HFActionNaturalLanguageExecution.stringKeys(for:)(uint64_t a1)
{
  v2 = sub_20DD641A4();
  v52 = *(v2 - 1);
  v3 = MEMORY[0x28223BE20](v2);
  v5 = &v48 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v48 - v7;
  MEMORY[0x28223BE20](v6);
  v51 = &v48 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C843EB0, &qword_20DD94290);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v13 = &v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v48 - v14;
  sub_20D9FF65C(a1);
  if (v16 >> 62)
  {
    goto LABEL_28;
  }

  if (*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    do
    {
      v58 = v8;
      v17 = MEMORY[0x277D84F90];
      v18 = v16;
      v63 = sub_20D9D51E0(MEMORY[0x277D84F90]);
      v19 = sub_20D9D5400(v17);
      v53 = sub_20D9FF53C(v19, v18, &v63);

      v59 = v2;
      if (v17 >> 62)
      {
        v46 = sub_20DD655B4();
        v8 = v58;
        if (v46)
        {
          sub_20D9EE918(MEMORY[0x277D84F90]);
        }

        else
        {
          v16 = MEMORY[0x277D84FA0];
        }
      }

      else
      {
        v16 = MEMORY[0x277D84FA0];
        v8 = v58;
      }

      v20 = 0;
      v63 = v16;
      v21 = v53[8];
      v48 = (v53 + 8);
      v22 = 1 << *(v53 + 32);
      v23 = -1;
      if (v22 < 64)
      {
        v23 = ~(-1 << v22);
      }

      v24 = v23 & v21;
      v25 = (v22 + 63) >> 6;
      v60 = (v52 + 32);
      v61 = (v52 + 16);
      v56 = (v52 + 88);
      v55 = *MEMORY[0x277D15EE8];
      v54 = (v52 + 8);
      v2 = qword_20DD94298;
      v49 = v13;
      v50 = v5;
      v57 = v15;
      while (v24)
      {
        v15 = v20;
LABEL_19:
        v29 = __clz(__rbit64(v24));
        v24 &= v24 - 1;
        v30 = v29 | (v15 << 6);
        v32 = v52;
        v31 = v53;
        (*(v52 + 16))(v51, v53[6] + *(v52 + 72) * v30, v59);
        v33 = *(v31[7] + 8 * v30);
        v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C843EB8, qword_20DD94298);
        v35 = *(v34 + 48);
        v13 = v49;
        (*(v32 + 32))();
        *&v13[v35] = v33;
        (*(*(v34 - 8) + 56))(v13, 0, 1, v34);

        v28 = v15;
        v5 = v50;
        v8 = v58;
LABEL_20:
        v36 = v57;
        sub_20DA031AC(v13, v57, &qword_27C843EB0, &qword_20DD94290);
        v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C843EB8, qword_20DD94298);
        if ((*(*(v37 - 8) + 48))(v36, 1, v37) == 1)
        {

          return;
        }

        v38 = *(v36 + *(v37 + 48));
        v39 = v59;
        (*v60)(v8, v36, v59);
        (*v61)(v5, v8, v39);
        v40 = (*v56)(v5, v39);
        if (v40 == v55)
        {
          sub_20DA00054(v38);
          v42 = v41;

          if (v42)
          {
            sub_20D9E188C(&v62, v42);
            v8 = v58;
            (*v54)(v58, v39);
          }

          else
          {
            v8 = v58;
            v16 = (*v54)(v58, v39);
          }
        }

        else
        {

          v26 = *v54;
          (*v54)(v8, v39);
          v16 = (v26)(v5, v39);
        }

        v20 = v28;
        v2 = qword_20DD94298;
      }

      if (v25 <= v20 + 1)
      {
        v27 = v20 + 1;
      }

      else
      {
        v27 = v25;
      }

      v28 = v27 - 1;
      while (1)
      {
        v15 = v20 + 1;
        if (__OFADD__(v20, 1))
        {
          break;
        }

        if (v15 >= v25)
        {
          v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C843EB8, qword_20DD94298);
          (*(*(v43 - 8) + 56))(v13, 1, 1, v43);
          v24 = 0;
          goto LABEL_20;
        }

        v24 = *&v48[8 * v15];
        ++v20;
        if (v24)
        {
          goto LABEL_19;
        }
      }

      __break(1u);
LABEL_28:
      v44 = v16;
      v45 = sub_20DD655B4();
      v16 = v44;
    }

    while (v45);
  }

  if (MEMORY[0x277D84F90] >> 62 && sub_20DD655B4())
  {
    v47 = MEMORY[0x277D84F90];

    sub_20D9EE918(v47);
  }
}

void sub_20DA00054(uint64_t a1)
{
  v2 = sub_20DD64C44();
  v75 = *(v2 - 8);
  v76 = v2;
  MEMORY[0x28223BE20](v2);
  v74 = &v71 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = _s21AccessoryCommandTupleVMa(0);
  v85 = *(v72 - 8);
  v4 = MEMORY[0x28223BE20](v72);
  v73 = &v71 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v71 - v7;
  MEMORY[0x28223BE20](v6);
  v87 = &v71 - v9;
  v90 = sub_20DD63744();
  v10 = *(v90 - 8);
  MEMORY[0x28223BE20](v90);
  v82 = &v71 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C843F00, &qword_20DD94330);
  v13 = MEMORY[0x28223BE20](v12 - 8);
  v15 = &v71 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v71 - v16;
  v93 = MEMORY[0x277D84FA0];
  v18 = *(a1 + 64);
  v78 = a1 + 64;
  v19 = 1 << *(a1 + 32);
  v20 = -1;
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  v21 = v20 & v18;
  v77 = (v19 + 63) >> 6;
  v79 = v10 + 32;
  v80 = v10 + 16;
  v84 = v10;
  v88 = a1;
  v89 = (v10 + 8);

  v22 = 0;
  v86 = v8;
  v83 = v17;
  v81 = v15;
  v23 = v82;
  if (v21)
  {
    while (1)
    {
      v24 = v22;
LABEL_12:
      v27 = __clz(__rbit64(v21));
      v21 &= v21 - 1;
      v28 = v27 | (v24 << 6);
      v29 = v88;
      v30 = v84;
      v31 = v90;
      (*(v84 + 16))(v23, *(v88 + 48) + *(v84 + 72) * v28, v90);
      v32 = v87;
      sub_20D9D739C(*(v29 + 56) + *(v85 + 72) * v28, v87);
      v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C843F08, &qword_20DD94338);
      v34 = *(v33 + 48);
      v35 = *(v30 + 32);
      v36 = v81;
      v35(v81, v23, v31);
      v37 = v32;
      v15 = v36;
      sub_20D9D7400(v37, &v36[v34]);
      (*(*(v33 - 8) + 56))(v36, 0, 1, v33);
      v26 = v24;
      v8 = v86;
      v17 = v83;
LABEL_13:
      sub_20DA031AC(v15, v17, &qword_27C843F00, &qword_20DD94330);
      v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C843F08, &qword_20DD94338);
      if ((*(*(v38 - 8) + 48))(v17, 1, v38) == 1)
      {
        break;
      }

      sub_20D9D7400(&v17[*(v38 + 48)], v8);
      v39 = sub_20DA00964();
      v40 = sub_20DA49324(v39);

      if (!v40 || (v41 = sub_20DA03568(v40), v41 == 6))
      {

        v43 = v74;
        sub_20DD64C04();
        v44 = v73;
        sub_20D9D739C(v8, v73);
        v45 = sub_20DD64C24();
        v46 = sub_20DD65364();
        if (os_log_type_enabled(v45, v46))
        {
          v47 = swift_slowAlloc();
          v48 = swift_slowAlloc();
          v91 = v48;
          *v47 = 136446210;
          sub_20D9D739C(v44, v87);
          v49 = sub_20DD64ED4();
          v51 = v50;
          sub_20DA04690(v44);
          v52 = sub_20D9E0B38(v49, v51, &v91);

          *(v47 + 4) = v52;
          _os_log_impl(&dword_20D9BF000, v45, v46, "Failed to describe actions for %{public}s", v47, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v48);
          MEMORY[0x20F327D10](v48, -1, -1);
          MEMORY[0x20F327D10](v47, -1, -1);
        }

        else
        {

          sub_20DA04690(v44);
        }

        (*(v75 + 8))(v43, v76);
        sub_20DA04690(v8);
        (*v89)(v17, v90);
        return;
      }

      sub_20D9E1600(&v91, v41);
      sub_20DA04690(v8);
      (*v89)(v17, v90);
      v22 = v26;
      if (!v21)
      {
        goto LABEL_5;
      }
    }

    v53 = v88;

    sub_20DA04448(v93);
    v55 = v54;
    v56 = v54;

    if (v56 != 6)
    {
      v57 = sub_20DA00CBC(v55);
      v59 = v57;
      v60 = v58;
      if (*(v53 + 16) < 2uLL)
      {
        v64 = v71;
        [v71 named];
        if ([v64 named])
        {
          v91 = v59;
          v92 = v60;

          MEMORY[0x20F325E90](0x64656D614E5FLL, 0xE600000000000000);

          v65 = objc_allocWithZone(HFLocalizableStringKey);
          v66 = sub_20DD64E74();

          v67 = sub_20DD64FB4();
          [v65 initWithKey:v66 argumentKeys:v67];
        }

        else
        {
          v68 = objc_allocWithZone(HFLocalizableStringKey);
          v69 = sub_20DD64E74();

          v70 = sub_20DD64FB4();
          [v68 initWithKey:v69 argumentKeys:v70];
        }
      }

      else
      {
        v91 = v57;
        v92 = v58;

        MEMORY[0x20F325E90](0x6C7069746C754D5FLL, 0xE900000000000065);

        v61 = objc_allocWithZone(HFNumberDependentLocalizableStringKey);
        v62 = sub_20DD64E74();

        v63 = [v61 initWithKey_];

        [v63 setIntegerArgument_];
      }
    }
  }

  else
  {
LABEL_5:
    if (v77 <= v22 + 1)
    {
      v25 = v22 + 1;
    }

    else
    {
      v25 = v77;
    }

    v26 = v25 - 1;
    while (1)
    {
      v24 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        break;
      }

      if (v24 >= v77)
      {
        v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C843F08, &qword_20DD94338);
        (*(*(v42 - 8) + 56))(v15, 1, 1, v42);
        v21 = 0;
        goto LABEL_13;
      }

      v21 = *(v78 + 8 * v24);
      ++v22;
      if (v21)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }
}

void *sub_20DA00964()
{
  v1 = v0;
  v2 = sub_20DD64C44();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v1 + 8);
  if (!(v6 >> 62))
  {
    v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v7)
    {
      goto LABEL_3;
    }

    return MEMORY[0x277D84F90];
  }

  v7 = sub_20DD655B4();
  if (!v7)
  {
    return MEMORY[0x277D84F90];
  }

LABEL_3:
  result = _s21AccessoryCommandTupleVMa(0);
  if (v7 >= 1)
  {
    v10 = 0;
    v11 = *(result + 6);
    v31 = v6 & 0xC000000000000001;
    v32 = v11;
    v12 = MEMORY[0x277D84F90];
    v27 = (v3 + 8);
    *&v9 = 138543362;
    v26 = v9;
    v29 = v6;
    v30 = v5;
    v28 = v7;
    do
    {
      if (v31)
      {
        v19 = MEMORY[0x20F326680](v10, v6);
      }

      else
      {
        v19 = *(v6 + 8 * v10 + 32);
      }

      v20 = v19;
      sub_20DD64374();
      if (v34)
      {
        sub_20D9C51D4(&v33, v35);
        sub_20D9FF4D0(v35, &v33);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v12 = sub_20D9E0250(0, v12[2] + 1, 1, v12);
        }

        v22 = v12[2];
        v21 = v12[3];
        if (v22 >= v21 >> 1)
        {
          v12 = sub_20D9E0250((v21 > 1), v22 + 1, 1, v12);
        }

        __swift_destroy_boxed_opaque_existential_0(v35);
        v12[2] = v22 + 1;
        sub_20D9C51D4(&v33, &v12[5 * v22 + 4]);
      }

      else
      {
        sub_20D9D76EC(&v33, &qword_27C843F30, &unk_20DD94350);
        sub_20DD64BE4();
        v23 = v20;
        v24 = sub_20DD64C24();
        v25 = sub_20DD65364();

        if (os_log_type_enabled(v24, v25))
        {
          v13 = swift_slowAlloc();
          v14 = v2;
          v15 = v1;
          v16 = swift_slowAlloc();
          *v13 = v26;
          *(v13 + 4) = v23;
          *v16 = v23;
          v17 = v23;
          _os_log_impl(&dword_20D9BF000, v24, v25, "Tried describing unexpected command: %{public}@", v13, 0xCu);
          sub_20D9D76EC(v16, &unk_27C843630, &qword_20DD94080);
          v18 = v16;
          v1 = v15;
          v2 = v14;
          MEMORY[0x20F327D10](v18, -1, -1);
          MEMORY[0x20F327D10](v13, -1, -1);
        }

        else
        {
          v17 = v24;
          v24 = v23;
        }

        (*v27)(v30, v2);
        v7 = v28;
        v6 = v29;
      }

      ++v10;
    }

    while (v7 != v10);
    return v12;
  }

  __break(1u);
  return result;
}

unint64_t sub_20DA00CBC(char a1)
{
  switch(a1)
  {
    case 3:
      return 0xD000000000000025;
    case 5:
      return 0xD00000000000002ALL;
    case 4:
      return 0xD000000000000022;
  }

  sub_20DD65704();

  if (a1)
  {
    if (a1 == 1)
    {
      v3 = 0x676E6970706F4DLL;
    }

    else
    {
      v3 = 0xD000000000000013;
    }

    if (a1 == 1)
    {
      v4 = 0xE700000000000000;
    }

    else
    {
      v4 = 0x800000020DD97E80;
    }
  }

  else
  {
    v4 = 0xE900000000000067;
    v3 = 0x6E696D7575636156;
  }

  MEMORY[0x20F325E90](v3, v4);

  return 0xD000000000000026;
}

uint64_t sub_20DA00DF8(void *a1, id *a2, uint64_t *a3)
{
  v136 = a3;
  v118 = sub_20DD63744();
  v110 = *(v118 - 8);
  v5 = MEMORY[0x28223BE20](v118);
  v109 = &v106 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v116 = &v106 - v8;
  MEMORY[0x28223BE20](v7);
  v113 = &v106 - v9;
  v124 = _s21AccessoryCommandTupleVMa(0);
  v112 = *(v124 - 8);
  v10 = MEMORY[0x28223BE20](v124);
  v115 = &v106 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v114 = (&v106 - v13);
  v14 = MEMORY[0x28223BE20](v12);
  v108 = &v106 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v106 - v17;
  MEMORY[0x28223BE20](v16);
  v121 = (&v106 - v19);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C843A38, &unk_20DD940C0);
  MEMORY[0x28223BE20](v20 - 8);
  v138 = &v106 - v21;
  v22 = sub_20DD641A4();
  v23 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v25 = &v106 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C843A20, &qword_20DD940B0);
  MEMORY[0x28223BE20](v26 - 8);
  v137 = &v106 - v27;
  v139 = sub_20DD64294();
  v28 = *(v139 - 8);
  MEMORY[0x28223BE20](v139);
  v142 = &v106 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = [*a2 commands];
  sub_20D9D7510(0, &qword_27C843BB0, 0x277CD1B68);
  v31 = sub_20DD64FD4();

  v107 = v18;
  if (v31 >> 62)
  {
    goto LABEL_42;
  }

  v32 = *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v33 = v31;
  v34 = v139;
  if (!v32)
  {
  }

  v134 = v31 & 0xFFFFFFFFFFFFFF8;
  v135 = v31 & 0xC000000000000001;
  v133 = (v28 + 48);
  v130 = (v23 + 48);
  v131 = (v28 + 32);
  v128 = (v23 + 32);
  v117 = (v110 + 8);
  v123 = (v28 + 16);
  v106 = v110 + 16;
  v125 = (v23 + 8);
  v129 = (v28 + 8);
  v28 = 0;
  v122 = xmmword_20DD940A0;
  v119 = xmmword_20DD93A70;
  v126 = v32;
  v127 = a1;
  v120 = v22;
  v132 = v31;
  while (1)
  {
    if (v135)
    {
      v49 = MEMORY[0x20F326680](v28, v33);
      v31 = v137;
      v48 = v138;
      v50 = (v28 + 1);
      if (__OFADD__(v28, 1))
      {
        goto LABEL_39;
      }
    }

    else
    {
      v31 = v137;
      v48 = v138;
      if (v28 >= *(v134 + 16))
      {
        goto LABEL_40;
      }

      v49 = *(v33 + 8 * v28 + 32);
      v50 = (v28 + 1);
      if (__OFADD__(v28, 1))
      {
LABEL_39:
        __break(1u);
LABEL_40:
        __break(1u);
LABEL_41:
        __break(1u);
LABEL_42:
        v32 = sub_20DD655B4();
        goto LABEL_3;
      }
    }

    v141 = v50;
    v51 = v49;
    v23 = [v49 accessory];
    sub_20DA01BB4(v23, v136, v31);
    if ((*v133)(v31, 1, v34) == 1)
    {

      v103 = &qword_27C843A20;
      v104 = &qword_20DD940B0;
      v105 = v31;
      return sub_20D9D76EC(v105, v103, v104);
    }

    v140 = v28;
    (*v131)(v142, v31, v34);
    sub_20DD64204();
    if ((*v130)(v48, 1, v22) == 1)
    {
      (*v129)(v142, v34);

      v103 = &unk_27C843A38;
      v104 = &unk_20DD940C0;
      v105 = v48;
      return sub_20D9D76EC(v105, v103, v104);
    }

    (*v128)(v25, v48, v22);
    v52 = *a1;
    if (*(*a1 + 16))
    {
      v53 = sub_20D9CB460(v25);
      if (v54)
      {
        break;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C843A60, &qword_20DD94360);
    v35 = swift_allocObject();
    *(v35 + 16) = v122;
    *(v35 + 32) = v51;
    v36 = v121;
    (*v123)(v121 + *(v124 + 24), v142, v34);
    *v36 = v23;
    v36[1] = v35;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C843F38, &qword_20DD94368);
    v37 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8435C8, &unk_20DD94370) - 8);
    v38 = (*(*v37 + 80) + 32) & ~*(*v37 + 80);
    v39 = swift_allocObject();
    *(v39 + 16) = v119;
    v40 = v39 + v38;
    v41 = v37[14];
    v42 = v51;
    v43 = [v23 uniqueIdentifier];
    sub_20DD63714();

    v44 = v40 + v41;
    a1 = v127;
    sub_20D9D739C(v36, v44);
    v23 = sub_20D9D48F4(v39);
    swift_setDeallocating();
    v45 = v40;
    v34 = v139;
    sub_20D9D76EC(v45, &qword_27C8435C8, &unk_20DD94370);
    swift_deallocClassInstance();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v143 = *a1;
    sub_20D9D0BF8(v23, v25, isUniquelyReferenced_nonNull_native);

    *a1 = v143;
    v47 = v36;
    v22 = v120;
    sub_20DA04690(v47);
    (*v125)(v25, v22);
    v33 = v132;
    (*v129)(v142, v34);
LABEL_6:
    v28 = v140 + 1;
    if (v141 == v126)
    {
    }
  }

  v28 = *(*(v52 + 56) + 8 * v53);

  v55 = [v23 uniqueIdentifier];
  v56 = v113;
  sub_20DD63714();

  if (*(v28 + 16))
  {
    v61 = sub_20D9CB38C(v56, v57, v58, v59, v60);
    if (v62)
    {
      v63 = v108;
      sub_20D9D739C(*(v28 + 56) + *(v112 + 72) * v61, v108);
      v111 = *v117;
      v111(v56, v118);
      v64 = v107;
      sub_20D9D7400(v63, v107);
      v65 = v51;
      MEMORY[0x20F325F00]();
      if (*((*(v64 + 8) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v64 + 8) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_20DD65014();
      }

      sub_20DD65054();
      v66 = [v23 uniqueIdentifier];
      v67 = v109;
      sub_20DD63714();

      v68 = v121;
      sub_20D9D739C(v64, v121);
      v69 = swift_isUniquelyReferenced_nonNull_native();
      v143 = v28;
      sub_20D9D0A10(v68, v67, v69, v70, v71);
      v111(v67, v118);
      v72 = v143;

      sub_20DA04690(v64);
      goto LABEL_29;
    }
  }

  v111 = *v117;
  v111(v56, v118);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C843A60, &qword_20DD94360);
  v73 = swift_allocObject();
  *(v73 + 16) = v122;
  *(v73 + 32) = v51;
  v74 = v114;
  (*v123)(v114 + *(v124 + 24), v142, v139);
  *v74 = v23;
  v74[1] = v73;
  v75 = v51;
  v76 = [v23 uniqueIdentifier];
  v77 = v116;
  sub_20DD63714();

  sub_20D9D739C(v74, v115);
  v78 = swift_isUniquelyReferenced_nonNull_native();
  v143 = v28;
  v79 = v77;
  v31 = v28;
  v85 = sub_20D9CB38C(v79, v80, v81, v82, v83);
  v86 = *(v28 + 16);
  v87 = (v84 & 1) == 0;
  v88 = v86 + v87;
  if (__OFADD__(v86, v87))
  {
    goto LABEL_41;
  }

  v89 = v84;
  if (*(v28 + 24) >= v88)
  {
    if (v78)
    {
      v72 = v143;
      if ((v84 & 1) == 0)
      {
        goto LABEL_23;
      }
    }

    else
    {
      sub_20D9D2620();
      v72 = v143;
      if ((v89 & 1) == 0)
      {
        goto LABEL_23;
      }
    }

    goto LABEL_27;
  }

  sub_20D9CCACC(v88, v78);
  v94 = sub_20D9CB38C(v116, v90, v91, v92, v93);
  if ((v89 & 1) != (v95 & 1))
  {
    goto LABEL_44;
  }

  v85 = v94;
  v72 = v143;
  if (v89)
  {
LABEL_27:
    sub_20D9D74AC(v115, v72[7] + *(v112 + 72) * v85);
    v111(v116, v118);
    sub_20DA04690(v114);
    goto LABEL_28;
  }

LABEL_23:
  v72[(v85 >> 6) + 8] |= 1 << v85;
  v96 = v116;
  v97 = v118;
  (*(v110 + 16))(v72[6] + *(v110 + 72) * v85, v116, v118);
  sub_20D9D7400(v115, v72[7] + *(v112 + 72) * v85);
  v111(v96, v97);
  sub_20DA04690(v114);
  v98 = v72[2];
  v99 = __OFADD__(v98, 1);
  v100 = v98 + 1;
  if (!v99)
  {
    v72[2] = v100;
LABEL_28:

LABEL_29:
    a1 = v127;
    v34 = v139;
    v101 = swift_isUniquelyReferenced_nonNull_native();
    v143 = *a1;
    sub_20D9D0BF8(v72, v25, v101);

    *a1 = v143;
    (*v125)(v25, v22);
    (*v129)(v142, v34);

    v33 = v132;
    goto LABEL_6;
  }

  __break(1u);
LABEL_44:
  result = sub_20DD659E4();
  __break(1u);
  return result;
}

uint64_t sub_20DA01BB4@<X0>(void *a1@<X0>, uint64_t *a2@<X1>, char *a3@<X8>)
{
  v6 = sub_20DD64C44();
  v79 = *(v6 - 8);
  v80 = v6;
  v7 = MEMORY[0x28223BE20](v6);
  v78 = &v73 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v77 = &v73 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C843A20, &qword_20DD940B0);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v76 = &v73 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v14 = &v73 - v13;
  v15 = sub_20DD63744();
  v16 = *(v15 - 8);
  v17 = MEMORY[0x28223BE20](v15);
  v75 = &v73 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v20 = &v73 - v19;
  v21 = sub_20DD64294();
  v81 = *(v21 - 8);
  v22 = MEMORY[0x28223BE20](v21);
  v24 = &v73 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v26 = &v73 - v25;
  if ([a1 hf_isMatterOnlyAccessory])
  {
    v73 = v21;
    v74 = a3;
    v27 = [a1 uniqueIdentifier];
    sub_20DD63714();

    v32 = *a2;
    if (*(*a2 + 16) && (v33 = sub_20D9CB38C(v20, v28, v29, v30, v31), (v34 & 1) != 0))
    {
      v35 = *(v32 + 56) + *(v81 + 72) * v33;
      v36 = v73;
      (*(v81 + 16))(v26, v35, v73);
      (*(v16 + 8))(v20, v15);
      v37 = v74;
      (*(v81 + 32))(v74, v26, v36);
      return (*(v81 + 56))(v37, 0, 1, v36);
    }

    else
    {
      (*(v16 + 8))(v20, v15);
      v40 = sub_20DD652F4();
      if (v40)
      {
        v41 = v40;
        swift_unknownObjectRetain();
        v42 = a1;
        sub_20DD64254();
        v43 = v73;
        if ((*(v81 + 48))(v14, 1, v73) == 1)
        {
          sub_20D9D76EC(v14, &qword_27C843A20, &qword_20DD940B0);
          v44 = v77;
          sub_20DD64BE4();
          v45 = v42;
          v46 = sub_20DD64C24();
          v47 = sub_20DD65364();

          if (os_log_type_enabled(v46, v47))
          {
            v48 = swift_slowAlloc();
            v49 = swift_slowAlloc();
            v78 = v41;
            v50 = v49;
            v51 = swift_slowAlloc();
            v82 = v51;
            *v48 = 136315394;
            _s21AccessoryCommandTupleVMa(0);
            v52 = sub_20DD65B04();
            v54 = sub_20D9E0B38(v52, v53, &v82);

            *(v48 + 4) = v54;
            *(v48 + 12) = 2112;
            *(v48 + 14) = v45;
            *v50 = v45;
            v55 = v45;
            _os_log_impl(&dword_20D9BF000, v46, v47, "%s: StaticMatterDevice returned nil from initializer with %@", v48, 0x16u);
            sub_20D9D76EC(v50, &unk_27C843630, &qword_20DD94080);
            MEMORY[0x20F327D10](v50, -1, -1);
            __swift_destroy_boxed_opaque_existential_0(v51);
            MEMORY[0x20F327D10](v51, -1, -1);
            MEMORY[0x20F327D10](v48, -1, -1);
            swift_unknownObjectRelease();
          }

          else
          {

            swift_unknownObjectRelease();
          }

          (*(v79 + 8))(v44, v80);
          return (*(v81 + 56))(v74, 1, 1, v43);
        }

        else
        {
          v67 = *(v81 + 32);
          v67(v24, v14, v43);
          v68 = [v42 uniqueIdentifier];
          v69 = v75;
          sub_20DD63714();

          v70 = v76;
          (*(v81 + 16))(v76, v24, v43);
          v71 = *(v81 + 56);
          v81 += 56;
          v71(v70, 0, 1, v43);
          sub_20D9F99FC(v70, v69);
          swift_unknownObjectRelease();
          v72 = v74;
          v67(v74, v24, v43);
          return v71(v72, 0, 1, v43);
        }
      }

      else
      {
        v56 = v78;
        sub_20DD64BE4();
        v57 = a1;
        v58 = sub_20DD64C24();
        v59 = sub_20DD65364();

        if (os_log_type_enabled(v58, v59))
        {
          v60 = swift_slowAlloc();
          v61 = swift_slowAlloc();
          v62 = swift_slowAlloc();
          v82 = v62;
          *v60 = 136315394;
          _s21AccessoryCommandTupleVMa(0);
          v63 = sub_20DD65B04();
          v65 = sub_20D9E0B38(v63, v64, &v82);

          *(v60 + 4) = v65;
          *(v60 + 12) = 2112;
          *(v60 + 14) = v57;
          *v61 = v57;
          v66 = v57;
          _os_log_impl(&dword_20D9BF000, v58, v59, "%s: Failed to get matter device on accessory %@", v60, 0x16u);
          sub_20D9D76EC(v61, &unk_27C843630, &qword_20DD94080);
          MEMORY[0x20F327D10](v61, -1, -1);
          __swift_destroy_boxed_opaque_existential_0(v62);
          MEMORY[0x20F327D10](v62, -1, -1);
          MEMORY[0x20F327D10](v60, -1, -1);
        }

        (*(v79 + 8))(v56, v80);
        return (*(v81 + 56))(v74, 1, 1, v73);
      }
    }
  }

  else
  {
    v39 = *(v81 + 56);

    return v39(a3, 1, 1, v21);
  }
}

uint64_t sub_20DA023E8()
{
  sub_20DD65A64();
  sub_20DD65464();
  sub_20DA02D24(v2, *(v0 + 8));
  sub_20DD64294();
  sub_20DA03164(&qword_27C843EE0, MEMORY[0x277D16408], MEMORY[0x277D16418]);
  sub_20DD64E34();
  return sub_20DD65AA4();
}

uint64_t sub_20DA024A0(uint64_t a1)
{
  sub_20DD65464();
  sub_20DA02D24(a1, *(v1 + 8));
  sub_20DD64294();
  sub_20DA03164(&qword_27C843EE0, MEMORY[0x277D16408], MEMORY[0x277D16418]);
  return sub_20DD64E34();
}

uint64_t sub_20DA0253C(uint64_t a1)
{
  sub_20DD65A64();
  sub_20DD65464();
  sub_20DA02D24(v3, *(v1 + 8));
  sub_20DD64294();
  sub_20DA03164(&qword_27C843EE0, MEMORY[0x277D16408], MEMORY[0x277D16418]);
  sub_20DD64E34();
  return sub_20DD65AA4();
}

uint64_t sub_20DA025F0(void *a1, void *a2)
{
  sub_20D9D7510(0, &qword_27C8441A0, 0x277D82BB8);
  if (sub_20DD65454() & 1) != 0 && (sub_20DA4A558(a1[1], a2[1]))
  {

    JUMPOUT(0x20F3251A0);
  }

  return 0;
}

unint64_t sub_20DA0268C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_20DA04AE0(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_20DA026BC(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE900000000000067;
  v4 = 0xE700000000000000;
  v5 = 0x676E6970706F4DLL;
  if (v2 != 1)
  {
    v5 = 0xD000000000000013;
    v4 = 0x800000020DD97E80;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x6E696D7575636156;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_20DA02724()
{
  sub_20DD65A64();
  sub_20DD64F24();

  return sub_20DD65AA4();
}

uint64_t sub_20DA027D0(uint64_t a1)
{
  sub_20DD64F24();
}

uint64_t sub_20DA02868(uint64_t a1)
{
  sub_20DD65A64();
  sub_20DD64F24();

  return sub_20DD65AA4();
}

uint64_t sub_20DA02910(uint64_t a1, char a2)
{
  if (a2 == 5)
  {
    v2 = 1;
    return MEMORY[0x20F3269D0](v2);
  }

  if (a2 == 4)
  {
    v2 = 0;
    return MEMORY[0x20F3269D0](v2);
  }

  MEMORY[0x20F3269D0](2);
  if (a2 == 3)
  {
    return sub_20DD65A84();
  }

  sub_20DD65A84();
  sub_20DD64F24();
}

uint64_t sub_20DA02A08(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE700000000000000;
  v4 = 0x676E6970706F4DLL;
  v5 = 0x800000020DD97E80;
  if (v2 != 1)
  {
    v4 = 0xD000000000000013;
    v3 = 0x800000020DD97E80;
  }

  if (*a1)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0x6E696D7575636156;
  }

  if (v2)
  {
    v7 = v3;
  }

  else
  {
    v7 = 0xE900000000000067;
  }

  v8 = 0x676E6970706F4DLL;
  if (*a2 == 1)
  {
    v5 = 0xE700000000000000;
  }

  else
  {
    v8 = 0xD000000000000013;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x6E696D7575636156;
  }

  if (*a2)
  {
    v10 = v5;
  }

  else
  {
    v10 = 0xE900000000000067;
  }

  if (v6 == v9 && v7 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_20DD65974();
  }

  return v11 & 1;
}

uint64_t sub_20DA02B04()
{
  v1 = *v0;
  sub_20DD65A64();
  sub_20DA02910(v3, v1);
  return sub_20DD65AA4();
}

uint64_t sub_20DA02B54(uint64_t a1)
{
  v2 = *v1;
  sub_20DD65A64();
  sub_20DA02910(v4, v2);
  return sub_20DD65AA4();
}

uint64_t sub_20DA02BA4(uint64_t isStackAllocationSafe, uint64_t a2, __n128 a3)
{
  v4 = isStackAllocationSafe;
  v20 = *MEMORY[0x277D85DE8];
  v16 = isStackAllocationSafe;
  v5 = *(a2 + 32);
  v6 = v5 & 0x3F;
  v18 = &v16;
  v19 = a2;
  v7 = (1 << v5) + 63;
  if (v6 <= 0xD || (v12 = 8 * (v7 >> 6), isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe & 1) != 0))
  {
    MEMORY[0x28223BE20](isStackAllocationSafe);
    v9 = &v15 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v9, v8);
    v10 = sub_20DA03214(v9, v4, a2);
  }

  else
  {
    v13 = swift_slowAlloc();
    bzero(v13, v12);
    sub_20DA046EC(v13, &v17);
    v14 = v17;
    MEMORY[0x20F327D10](v13, -1, -1);
    v10 = v14;
  }

  return v10 & 1;
}

void sub_20DA02D24(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62)
  {
    v8 = sub_20DD655B4();
    MEMORY[0x20F3269D0](v8);
    v3 = sub_20DD655B4();
    if (!v3)
    {
      return;
    }
  }

  else
  {
    MEMORY[0x20F3269D0](*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10));
    v3 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v3)
    {
      return;
    }
  }

  if (v3 < 1)
  {
    __break(1u);
  }

  else if ((a2 & 0xC000000000000001) != 0)
  {
    for (i = 0; i != v3; ++i)
    {
      MEMORY[0x20F326680](i, a2);
      sub_20DD65464();
      swift_unknownObjectRelease();
    }
  }

  else
  {
    v5 = (a2 + 32);
    do
    {
      v6 = *v5++;
      v7 = v6;
      sub_20DD65464();

      --v3;
    }

    while (v3);
  }
}

BOOL sub_20DA02E14(char a1, char a2)
{
  if (a1 == 5)
  {
    return a2 == 5;
  }

  if (a1 == 4)
  {
    return a2 == 4;
  }

  if ((a2 & 0xFE) == 4)
  {
    return 0;
  }

  if (a1 == 3)
  {
    return a2 == 3;
  }

  if (a2 == 3)
  {
    return 0;
  }

  if (a1)
  {
    if (a1 == 1)
    {
      v3 = 0xE700000000000000;
      v4 = 0x676E6970706F4DLL;
    }

    else
    {
      v4 = 0xD000000000000013;
      v3 = 0x800000020DD97E80;
    }
  }

  else
  {
    v4 = 0x6E696D7575636156;
    v3 = 0xE900000000000067;
  }

  v5 = 0x676E6970706F4DLL;
  v6 = 0x800000020DD97E80;
  if (a2 == 1)
  {
    v6 = 0xE700000000000000;
  }

  else
  {
    v5 = 0xD000000000000013;
  }

  if (a2)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x6E696D7575636156;
  }

  if (a2)
  {
    v8 = v6;
  }

  else
  {
    v8 = 0xE900000000000067;
  }

  if (v4 != v7 || v3 != v8)
  {
    v9 = sub_20DD65974();

    return (v9 & 1) != 0;
  }

  return 1;
}

uint64_t _s21AccessoryCommandTupleVMa(uint64_t a1)
{
  result = qword_27C843EC0;
  if (!qword_27C843EC0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_20DA03008(uint64_t a1)
{
  sub_20D9D7510(319, &qword_27C844290, 0x277CD1650);
  if (v1 <= 0x3F)
  {
    sub_20DA030B4(319);
    if (v2 <= 0x3F)
    {
      sub_20DD64294();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_20DA030B4(uint64_t a1)
{
  if (!qword_27C843ED0)
  {
    sub_20D9D7510(255, &qword_27C843BB0, 0x277CD1B68);
    v1 = sub_20DD65084();
    if (!v2)
    {
      atomic_store(v1, &qword_27C843ED0);
    }
  }
}

uint64_t sub_20DA03164(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_20DA031AC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_20DA03214(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v28 = a1;
  v6 = sub_20DD644F4();
  v7 = MEMORY[0x28223BE20](v6);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v38 = &v26 - v11;
  v31 = *(a2 + 16);
  if (!v31)
  {
    return 0;
  }

  v26 = v3;
  v27 = 0;
  v12 = 0;
  v36 = *(v10 + 16);
  v37 = v10 + 16;
  v30 = a2 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
  v13 = *(v10 + 72);
  v34 = a3 + 56;
  v35 = v13;
  v14 = (v10 + 8);
  v33 = a3;
  while (1)
  {
    v32 = v12;
    v36(v38, v30 + v35 * v12, v6);
    sub_20DA03164(&qword_27C843F20, MEMORY[0x277D16AB8], MEMORY[0x277D16AC0]);
    v17 = sub_20DD64E24();
    v18 = -1 << *(a3 + 32);
    v19 = v17 & ~v18;
    v20 = v19 >> 6;
    v21 = 1 << v19;
    if (((1 << v19) & *(v34 + 8 * (v19 >> 6))) == 0)
    {
      v15 = *v14;
LABEL_4:
      v15(v38, v6);
      goto LABEL_5;
    }

    v29 = v14 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v22 = ~v18;
    while (1)
    {
      v36(v9, *(v33 + 48) + v19 * v35, v6);
      sub_20DA03164(&qword_27C843F28, MEMORY[0x277D16AB8], MEMORY[0x277D16AD8]);
      v23 = sub_20DD64E64();
      v15 = *v14;
      (*v14)(v9, v6);
      if (v23)
      {
        break;
      }

      v19 = (v19 + 1) & v22;
      v20 = v19 >> 6;
      v21 = 1 << v19;
      if (((1 << v19) & *(v34 + 8 * (v19 >> 6))) == 0)
      {
        a3 = v33;
        goto LABEL_4;
      }
    }

    result = (v15)(v38, v6);
    v25 = *(v28 + 8 * v20);
    *(v28 + 8 * v20) = v25 | v21;
    if ((v25 & v21) != 0)
    {
      a3 = v33;
LABEL_5:
      v16 = v32;
      goto LABEL_6;
    }

    v16 = v32;
    a3 = v33;
    if (__OFADD__(v27, 1))
    {
      break;
    }

    if (v27 + 1 == *(v33 + 16))
    {
      return 1;
    }

    ++v27;
LABEL_6:
    v12 = v16 + 1;
    if (v12 == v31)
    {
      return 0;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_20DA03568(uint64_t a1)
{
  v2 = sub_20DD644F4();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v113 = &v76 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v4);
  v115 = &v76 - v7;
  MEMORY[0x28223BE20](v6);
  v114 = &v76 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C843F10, &qword_20DD94340);
  MEMORY[0x28223BE20](v9 - 8);
  v110 = &v76 - v10;
  v11 = sub_20DD644A4();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v111 = &v76 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v16 = &v76 - v15;
  v17 = *(v12 + 104);
  v17(&v76 - v15, *MEMORY[0x277D16938], v11);
  v18 = sub_20DA2FCBC(v16, a1);
  v112 = v12;
  v21 = *(v12 + 8);
  v19 = v12 + 8;
  v20 = v21;
  v21(v16, v11);
  if (v18)
  {

    return 4;
  }

  v23 = *MEMORY[0x277D168F0];
  v24 = sub_20DD64494();
  (*(*(v24 - 8) + 104))(v16, v23, v24);
  v17(v16, *MEMORY[0x277D16948], v11);
  LOBYTE(v23) = sub_20DA2FCBC(v16, a1);
  v20(v16, v11);
  if ((v23 & 1) == 0)
  {
    v17(v16, *MEMORY[0x277D16908], v11);
    v29 = sub_20DA2FCBC(v16, a1);

    v20(v16, v11);
    if (v29)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }

  v98 = v3;
  v103 = v2;
  v25 = *MEMORY[0x277D169C8];
  v26 = sub_20DD644B4();
  v105 = *(v26 - 8);
  v27 = v105[13];
  v108 = (v105 + 13);
  v109 = v27;
  v27(v16, v25, v26);
  v28 = *MEMORY[0x277D16958];
  v17(v16, v28, v11);
  LOBYTE(v25) = sub_20DA2FCBC(v16, a1);
  v20(v16, v11);
  if (v25)
  {

    return 0;
  }

  v109(v16, *MEMORY[0x277D169B0], v26);
  v17(v16, v28, v11);
  v30 = sub_20DA2FCBC(v16, a1);
  v20(v16, v11);
  if (v30)
  {

    return 1;
  }

  v31 = *MEMORY[0x277D169A8];
  v101 = v26;
  v109(v16, v31, v26);
  v102 = v28;
  v17(v16, v28, v11);
  v32 = sub_20DA2FCBC(v16, a1);
  v91 = v20;
  result = (v20)(v16, v11);
  v100 = v19;
  if (v32)
  {

    return 2;
  }

  v109 = *(a1 + 16);
  if (!v109)
  {

    return 3;
  }

  v33 = 0;
  v34 = v112;
  v108 = (a1 + ((*(v34 + 80) + 32) & ~*(v34 + 80)));
  v106 = v112 + 88;
  v107 = v112 + 16;
  v96 = (v105 + 11);
  v97 = (v112 + 96);
  v95 = *MEMORY[0x277D16988];
  v90 = (v105 + 1);
  v89 = (v105 + 12);
  v86 = *MEMORY[0x277D16A90];
  v93 = *MEMORY[0x277D16AA0];
  v35 = v98;
  v88 = v98 + 104;
  v80 = *MEMORY[0x277D16A80];
  v77 = (v98 + 48);
  v99 = (v98 + 8);
  v94 = (v98 + 16);
  v79 = 3;
  v78 = xmmword_20DD94280;
  v36 = v111;
  v37 = v91;
  v38 = v102;
  v85 = a1;
  while (v33 < *(a1 + 16))
  {
    (*(v34 + 16))(v36, &v108[*(v34 + 72) * v33], v11);
    if ((*(v34 + 88))(v36, v11) == v38)
    {
      (*v97)(v36, v11);
      v39 = v101;
      v40 = (*v96)(v36, v101);
      if (v40 == v95)
      {
        result = (*v89)(v36, v39);
        if (*(v36 + 1))
        {
          v105 = *(v36 + 1);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C843F18, &qword_20DD94348);
          v104 = *(v35 + 72);
          v41 = (*(v35 + 80) + 32) & ~*(v35 + 80);
          v42 = swift_allocObject();
          *(v42 + 1) = v78;
          v92 = v42;
          v43 = &v42[v41];
          v44 = sub_20DD644E4();
          v45 = *(v44 - 8);
          v46 = *(v45 + 104);
          v47 = v45 + 104;
          v46(v43, v86, v44);
          v48 = *(v35 + 104);
          v48(v43, v93, v103);
          v49 = v104;
          v84 = v44;
          v50 = v44;
          v51 = v103;
          v83 = v46;
          v82 = v47;
          v46(&v43[v104], v80, v50);
          v81 = v48;
          v48(&v43[v49], v93, v51);
          v53 = v105[2];
          v38 = v102;
          if (v53 == 1)
          {
            v54 = v110;
            sub_20DA53024(v105, v110);
            result = (*v77)(v54, 1, v51);
            if (result == 1)
            {
              goto LABEL_52;
            }

            v87 = sub_20DA03164(&qword_27C843F28, MEMORY[0x277D16AB8], MEMORY[0x277D16AD8]);
            v55 = sub_20DD64E64();
            a1 = v85;
            v34 = v112;
            if (v55 & 1) != 0 || (sub_20DD64E64())
            {

              (*v99)(v54, v51);
LABEL_32:

              v79 = 2;
LABEL_33:
              v35 = v98;
              v37 = v91;
              goto LABEL_17;
            }

            (*v99)(v54, v51);
            v56 = v105;
          }

          else
          {
            a1 = v85;
            v34 = v112;
            if (!v53)
            {

              swift_setDeallocating();
              v79 = 2;
              swift_arrayDestroy();
              result = swift_deallocClassInstance();
              goto LABEL_33;
            }

            v56 = v105;
            LODWORD(v87) = sub_20DA02BA4(v92, v105, v52);
            swift_setDeallocating();
            swift_arrayDestroy();
            swift_deallocClassInstance();
            if (v87)
            {
              goto LABEL_32;
            }
          }

          v57 = v114;
          v83(v114, v86, v84);
          v81(v57, v93, v51);
          if (v56[2] && (sub_20DA03164(&qword_27C843F20, MEMORY[0x277D16AB8], MEMORY[0x277D16AC0]), v58 = sub_20DD64E24(), v59 = -1 << *(v56 + 32), v60 = v58 & ~v59, v92 = (v56 + 7), ((*(v56 + ((v60 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v60) & 1) != 0))
          {
            v87 = ~v59;
            v61 = *v94;
            while (1)
            {
              v62 = v115;
              v61(v115, v56[6] + v60 * v104, v51);
              sub_20DA03164(&qword_27C843F28, MEMORY[0x277D16AB8], MEMORY[0x277D16AD8]);
              v63 = sub_20DD64E64();
              v64 = *v99;
              (*v99)(v62, v51);
              if (v63)
              {
                break;
              }

              v60 = (v60 + 1) & v87;
              v56 = v105;
              if (((*&v92[(v60 >> 3) & 0xFFFFFFFFFFFFFF8] >> v60) & 1) == 0)
              {
                goto LABEL_40;
              }
            }

            result = (v64)(v114, v51);
            v79 = 0;
          }

          else
          {
LABEL_40:
            v92 = *v99;
            (v92)(v114, v51);
            v65 = v113;
            v83(v113, v80, v84);
            v81(v65, v93, v51);
            if (v56[2] && (v66 = v105, sub_20DA03164(&qword_27C843F20, MEMORY[0x277D16AB8], MEMORY[0x277D16AC0]), v67 = sub_20DD64E24(), v68 = v66 + 7, v69 = -1 << *(v66 + 32), v70 = v67 & ~v69, ((*(v68 + ((v70 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v70) & 1) != 0))
            {
              v71 = v68;
              v72 = ~v69;
              v73 = *v94;
              while (1)
              {
                v74 = v115;
                v73(v115, v105[6] + v70 * v104, v51);
                sub_20DA03164(&qword_27C843F28, MEMORY[0x277D16AB8], MEMORY[0x277D16AD8]);
                v75 = sub_20DD64E64();
                (v92)(v74, v51);
                if (v75)
                {
                  break;
                }

                v70 = (v70 + 1) & v72;
                if (((*(v71 + ((v70 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v70) & 1) == 0)
                {
                  goto LABEL_45;
                }
              }

              result = (v92)(v113, v51);
              v79 = 1;
            }

            else
            {
LABEL_45:

              result = (v92)(v113, v51);
            }
          }

          a1 = v85;
          v35 = v98;
          v36 = v111;
          v37 = v91;
        }
      }

      else
      {
        result = (*v90)(v36, v39);
      }

      v38 = v102;
    }

    else
    {
      result = v37(v36, v11);
    }

LABEL_17:
    if (++v33 == v109)
    {

      return v79;
    }
  }

  __break(1u);
LABEL_52:
  __break(1u);
  return result;
}

void sub_20DA04448(uint64_t a1)
{
  if (*(a1 + 16) == 1 && sub_20DA53124(a1) != 6)
  {
    return;
  }

  v2 = 1 << *(a1 + 32);
  v3 = -1;
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  v4 = v3 & *(a1 + 56);
  v5 = (v2 + 63) >> 6;

  v6 = 0;
  v7 = 6;
  while (v4)
  {
LABEL_11:
    if (v7 - 4 < 2)
    {
      goto LABEL_33;
    }

    v9 = __clz(__rbit64(v4));
    v4 &= v4 - 1;
    v10 = *(*(a1 + 48) + (v9 | (v6 << 6)));
    if (v7 == 6)
    {
      v7 = v10;
    }

    else
    {
      if ((v10 & 0xFE) == 4)
      {
LABEL_33:

        return;
      }

      if (v7 == 3)
      {
        v7 = v10;
      }

      else if (v10 != 3)
      {
        if (v7)
        {
          if (v7 == 1)
          {
            v11 = 0xE700000000000000;
            v12 = 0x676E6970706F4DLL;
            if (v10)
            {
              goto LABEL_21;
            }
          }

          else
          {
            v12 = 0xD000000000000013;
            v11 = 0x800000020DD97E80;
            if (v10)
            {
LABEL_21:
              if (v10 == 1)
              {
                v13 = 0xE700000000000000;
                v14 = 0x676E6970706F4DLL;
              }

              else
              {
                v14 = 0xD000000000000013;
                v13 = 0x800000020DD97E80;
              }

              goto LABEL_26;
            }
          }
        }

        else
        {
          v12 = 0x6E696D7575636156;
          v11 = 0xE900000000000067;
          if (v10)
          {
            goto LABEL_21;
          }
        }

        v14 = 0x6E696D7575636156;
        v13 = 0xE900000000000067;
LABEL_26:
        if (v12 == v14 && v11 == v13)
        {
        }

        else
        {
          v15 = sub_20DD65974();

          if ((v15 & 1) == 0)
          {
            v7 = 3;
          }
        }
      }
    }
  }

  while (1)
  {
    v8 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      break;
    }

    if (v8 >= v5)
    {
      goto LABEL_33;
    }

    v4 = *(a1 + 56 + 8 * v8);
    ++v6;
    if (v4)
    {
      v6 = v8;
      goto LABEL_11;
    }
  }

  __break(1u);
}

uint64_t sub_20DA04690(uint64_t a1)
{
  v2 = _s21AccessoryCommandTupleVMa(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_20DA046EC@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_20DA03214(a1, **(v2 + 16), *(v2 + 24));
  if (!v3)
  {
    *a2 = result & 1;
  }

  return result;
}

uint64_t _s19RVCActionStringTypeOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_20;
  }

  v2 = a2 + 5;
  if (a2 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if (v2 >> 8 < 0xFF)
  {
    v3 = 1;
  }

  if (v2 >= 0x100)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (v4 <= 1)
  {
    if (!v4)
    {
      goto LABEL_20;
    }

    v5 = a1[1];
    if (!a1[1])
    {
      goto LABEL_20;
    }

    return (*a1 | (v5 << 8)) - 5;
  }

  if (v4 == 2)
  {
    v5 = *(a1 + 1);
    if (*(a1 + 1))
    {
      return (*a1 | (v5 << 8)) - 5;
    }
  }

  else
  {
    v5 = *(a1 + 1);
    if (v5)
    {
      return (*a1 | (v5 << 8)) - 5;
    }
  }

LABEL_20:
  v7 = *a1;
  v8 = v7 >= 3;
  v9 = v7 - 3;
  if (!v8)
  {
    v9 = -1;
  }

  if (v9 + 1 < 2)
  {
    v9 = 0;
  }

  if (v9 >= 3)
  {
    return v9 - 2;
  }

  else
  {
    return 0;
  }
}

uint64_t _s19RVCActionStringTypeOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 5;
  if (a3 + 5 >= 0xFFFF00)
  {
    v4 = 4;
  }

  else
  {
    v4 = 2;
  }

  if (v3 >> 8 < 0xFF)
  {
    v4 = 1;
  }

  if (v3 >= 0x100)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 < 0xFB)
  {
    v5 = 0;
  }

  if (a2 > 0xFA)
  {
    v6 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(result + 1) = v6;
      }

      else
      {
        *(result + 1) = v6;
      }
    }

    else if (v5)
    {
      *(result + 1) = v6;
    }

    return result;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_22;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v5)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_22:
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_20DA04890(unsigned __int8 *a1)
{
  v1 = *a1;
  v2 = v1 >= 3;
  v3 = v1 - 3;
  if (!v2)
  {
    v3 = -1;
  }

  if (v3 + 1 >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

_BYTE *sub_20DA048B0(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 3;
  }

  return result;
}

unint64_t sub_20DA048D4()
{
  result = qword_27C843F40;
  if (!qword_27C843F40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C843F40);
  }

  return result;
}

uint64_t _s19RVCActionStringTypeO12CleaningTypeOwet(unsigned __int8 *a1, unsigned int a2)
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

uint64_t _s19RVCActionStringTypeO12CleaningTypeOwst(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_20DA04A8C()
{
  result = qword_27C843F48;
  if (!qword_27C843F48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C843F48);
  }

  return result;
}

unint64_t sub_20DA04AE0(uint64_t a1, uint64_t a2)
{
  v2 = sub_20DD658B4();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

uint64_t static HFProgrammableSwitchServiceItem.supportedServiceTypes.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C843870, &qword_20DD93F40);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20DD93A70;
  *(inited + 32) = sub_20DD64EB4();
  *(inited + 40) = v1;
  v2 = sub_20D9EE93C(inited);
  swift_setDeallocating();
  sub_20DA057B4(inited + 32);
  return v2;
}

id HFProgrammableSwitchServiceItem._subclass_update(options:)(uint64_t a1)
{
  result = sub_20DD651C4();
  if (a1)
  {
    v4 = result;
    v5 = sub_20DD64DB4();
    v6 = [v1 performStandardUpdateWithCharacteristicTypes:v4 options:v5];

    v7 = swift_allocObject();
    *(v7 + 16) = v1;
    v11[4] = sub_20DA05808;
    v11[5] = v7;
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 1107296256;
    v11[2] = sub_20DA055A4;
    v11[3] = &block_descriptor_1;
    v8 = _Block_copy(v11);
    v9 = v1;

    v10 = [v6 flatMap_];

    _Block_release(v8);
    return v10;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_20DA04DF0(void *a1, void *a2)
{
  v3 = [a1 standardResults];
  v4 = sub_20DD64DC4();

  v5 = [a2 home];
  if (!v5)
  {
    v12 = objc_allocWithZone(HFItemUpdateOutcome);
    v13 = sub_20DD64DB4();
    v14 = [v12 initWithResults_];

    v15 = [objc_opt_self() futureWithResult_];
    v16 = [v15 asGeneric];

    return v16;
  }

  v6 = v5;
  if ([v5 hf_currentUserIsAdministrator])
  {
    v7 = [a2 service];
    v8 = [v7 hf_isProgrammableSwitchConfigured];

    if ((v8 & 1) == 0)
    {
      *&v52 = @"longErrorDescription";
      type metadata accessor for HFItemResultKey(0);
      sub_20DA0583C();
      v9 = @"longErrorDescription";
      sub_20DD65684();
      if (*(v4 + 16) && (v10 = sub_20D9CB264(v54), (v11 & 1) != 0))
      {
        sub_20D9D7174(*(v4 + 56) + 32 * v10, &v52);
        sub_20D9D4298(v54);
        sub_20D9F8608(&v52);
      }

      else
      {
        sub_20D9D4298(v54);
        v52 = 0u;
        v53 = 0u;
        sub_20D9F8608(&v52);
        *&v52 = v9;
        v18 = v9;
        sub_20DD65684();
        v19 = sub_20DD64E74();
        v20 = HFLocalizedString(v19);

        v21 = sub_20DD64EB4();
        v23 = v22;

        *(&v53 + 1) = MEMORY[0x277D837D0];
        *&v52 = v21;
        *(&v52 + 1) = v23;
        sub_20D9D77C8(&v52, v51);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        sub_20D9D0DFC(v51, v54, isUniquelyReferenced_nonNull_native);
        sub_20D9D4298(v54);
      }
    }
  }

  if ([v6 hf_remoteAccessState] != 3)
  {
    *&v52 = @"longErrorDescription";
    type metadata accessor for HFItemResultKey(0);
    sub_20DA0583C();
    v25 = @"longErrorDescription";
    sub_20DD65684();
    [v6 hf_remoteAccessState];
    v26 = sub_20DD64E74();
    v27 = HFLocalizedString(v26);

    v28 = sub_20DD64EB4();
    v30 = v29;

    *(&v53 + 1) = MEMORY[0x277D837D0];
    *&v52 = v28;
    *(&v52 + 1) = v30;
    sub_20D9D77C8(&v52, v51);
    v31 = swift_isUniquelyReferenced_nonNull_native();
    sub_20D9D0DFC(v51, v54, v31);
    sub_20D9D4298(v54);
    *&v52 = @"badge";
    v32 = @"badge";
    sub_20DD65684();
    v33 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithUnsignedInteger_];
    v34 = sub_20D9D7510(0, &qword_27C8433B0, 0x277CCABB0);
    *(&v53 + 1) = v34;
    *&v52 = v33;
    sub_20D9D77C8(&v52, v51);
    v35 = swift_isUniquelyReferenced_nonNull_native();
    sub_20D9D0DFC(v51, v54, v35);
    sub_20D9D4298(v54);
    *&v52 = @"descriptionBadge";
    v36 = @"descriptionBadge";
    sub_20DD65684();
    v37 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithUnsignedInteger_];
    *(&v53 + 1) = v34;
    *&v52 = v37;
    sub_20D9D77C8(&v52, v51);
    v38 = swift_isUniquelyReferenced_nonNull_native();
    sub_20D9D0DFC(v51, v54, v38);
    sub_20D9D4298(v54);
  }

  type metadata accessor for HFItemResultKey(0);
  sub_20DA0583C();
  v39 = @"dependentHomeKitClasses";
  sub_20DD65684();
  if (!*(v4 + 16) || (v40 = sub_20D9CB264(v54), (v41 & 1) == 0))
  {
    sub_20D9D4298(v54);
LABEL_17:
    v42 = [objc_allocWithZone(MEMORY[0x277CBEB58]) init];
    goto LABEL_18;
  }

  sub_20D9D7174(*(v4 + 56) + 32 * v40, v51);
  sub_20D9D4298(v54);
  sub_20D9D7510(0, &qword_27C8439F0, 0x277CBEB98);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_17;
  }

  [@"dependentHomeKitClasses" mutableCopy];

  sub_20DD654E4();
  swift_unknownObjectRelease();
  sub_20D9D7510(0, &qword_27C843F68, 0x277CBEB58);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_17;
  }

  v42 = v54[0];
LABEL_18:
  v54[0] = sub_20D9D7510(0, &qword_27C843F58, 0x277CD1EC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C843F60, &unk_20DD944B0);
  [v42 addObject_];
  swift_unknownObjectRelease();
  *&v52 = v39;
  v43 = v39;
  sub_20DD65684();
  *(&v53 + 1) = sub_20D9D7510(0, &qword_27C843F68, 0x277CBEB58);
  *&v52 = v42;
  sub_20D9D77C8(&v52, v51);
  v44 = v42;
  v45 = swift_isUniquelyReferenced_nonNull_native();
  sub_20D9D0DFC(v51, v54, v45);
  sub_20D9D4298(v54);
  v46 = objc_allocWithZone(HFItemUpdateOutcome);
  v47 = sub_20DD64DB4();
  v48 = [v46 initWithResults_];

  v49 = [objc_opt_self() futureWithResult_];
  v50 = [v49 asGeneric];

  return v50;
}

id sub_20DA055A4(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v5 = v3();

  return v5;
}

id HFProgrammableSwitchServiceItem.init(valueSource:service:)(uint64_t a1, void *a2)
{
  v3 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithValueSource:a1 service:a2];
  swift_unknownObjectRelease();

  return v3;
}

{
  v5.super_class = HFProgrammableSwitchServiceItem;
  v3 = objc_msgSendSuper2(&v5, sel_initWithValueSource_service_, a1, a2);
  swift_unknownObjectRelease();

  return v3;
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_20DA0583C()
{
  result = qword_27C842890;
  if (!qword_27C842890)
  {
    type metadata accessor for HFItemResultKey(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C842890);
  }

  return result;
}

uint64_t sub_20DA05894(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_20DA48C3C(a1, a2, a3, a4);
  if (result == 2)
  {

    return sub_20DA06210(a1, a2, a3, a4);
  }

  return result;
}

uint64_t sub_20DA05914(void *a1, void *a2)
{
  result = sub_20DA48DA0(a1, a2);
  if (result != 2)
  {
    return result;
  }

  type metadata accessor for DashboardStaticSectionListItem();
  v3 = swift_dynamicCastClass();
  if (v3)
  {
    v4 = *(v3 + OBJC_IVAR___HFDashboardStaticSectionListItem_sectionType);
  }

  else
  {
    v4 = 3;
  }

  v5 = swift_dynamicCastClass();
  if (v5)
  {
    v6 = *(v5 + OBJC_IVAR___HFDashboardStaticSectionListItem_sectionType);
    if (v4 != 3)
    {
      goto LABEL_11;
    }

LABEL_9:
    if (v6 == 3)
    {
      return 2;
    }

    goto LABEL_11;
  }

  v6 = 3;
  if (v4 == 3)
  {
    goto LABEL_9;
  }

LABEL_11:
  if (v4 == 3)
  {
    if (v6 != 3)
    {
      return v4 != 3;
    }

    return 2;
  }

  if (v6 == 3)
  {
    return v4 != 3;
  }

  v7 = v4 == v6;
  v8 = v4 < v6;
  if (v7)
  {
    return 2;
  }

  else
  {
    return v8;
  }
}

uint64_t sub_20DA059FC(void *a1, void *a2)
{
  result = sub_20DA48DA0(a1, a2);
  if (result == 2)
  {
    type metadata accessor for DashboardStaticSectionListItem();
    v3 = swift_dynamicCastClass();
    if (v3)
    {
      v4 = *(v3 + OBJC_IVAR___HFDashboardStaticSectionListItem_sectionType);
    }

    else
    {
      v4 = 3;
    }

    v5 = swift_dynamicCastClass();
    if (v5)
    {
      v6 = *(v5 + OBJC_IVAR___HFDashboardStaticSectionListItem_sectionType);
    }

    else
    {
      v6 = 3;
    }

    return sub_20DA061A4(v4, v6);
  }

  return result;
}

uint64_t sub_20DA05AB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = OBJC_IVAR___HFReorderableItemList_sortedIdentifiers;
  swift_beginAccess();
  v10 = *(v4 + v9);
  v11 = *(v10 + 16);
  v12 = v11 == 0;
  if (v11)
  {
    v13 = (v10 + 40);
    do
    {
      if (*(v13 - 1) == a1 && *v13 == a2)
      {
        break;
      }

      if (sub_20DD65974())
      {
        break;
      }

      v13 += 2;
      v12 = --v11 == 0;
    }

    while (v11);
  }

  v15 = *(v10 + 16);
  v16 = v15 == 0;
  if (v15)
  {
    v17 = (v10 + 40);
    do
    {
      if (*(v17 - 1) == a3 && *v17 == a4)
      {
        break;
      }

      if (sub_20DD65974())
      {
        break;
      }

      v17 += 2;
      v16 = --v15 == 0;
    }

    while (v15);
  }

  if (a1 == 0x655373656E656373 && a2 == 0xED00006E6F697463 || (sub_20DD65974() & 1) != 0)
  {
    v19 = 1;
  }

  else if (a1 == 0x53736172656D6163 && a2 == 0xEE006E6F69746365 || (sub_20DD65974() & 1) != 0)
  {
    v19 = 0;
  }

  else
  {
    v19 = 2;
    if (a1 != 0xD000000000000010 || 0x800000020DD98860 != a2)
    {
      if (sub_20DD65974())
      {
        v19 = 2;
      }

      else
      {
        v19 = 3;
      }
    }
  }

  if (a3 == 0x655373656E656373 && a4 == 0xED00006E6F697463 || (sub_20DD65974() & 1) != 0)
  {
    v20 = 1;
  }

  else if (a3 == 0x53736172656D6163 && a4 == 0xEE006E6F69746365 || (sub_20DD65974() & 1) != 0)
  {
    v20 = 0;
  }

  else
  {
    v20 = 2;
    if (a3 != 0xD000000000000010 || 0x800000020DD98860 != a4)
    {
      if (sub_20DD65974())
      {
        v20 = 2;
      }

      else
      {
        v20 = 3;
      }
    }
  }

  v21 = v19 < v20;
  if (v20 == 3)
  {
    v21 = 2;
  }

  if (v19 == 3)
  {
    v22 = 2;
  }

  else
  {
    v22 = v21;
  }

  if (v16)
  {
    v23 = v20 == 3;
  }

  else
  {
    v22 = v19 != 3;
    v23 = 2;
  }

  if (v12)
  {
    return v22;
  }

  else
  {
    return v23;
  }
}

uint64_t sub_20DA05DBC(void *a1, void *a2)
{
  v5 = OBJC_IVAR___HFReorderableItemList_sortedIdentifiers;
  swift_beginAccess();
  v6 = *(v2 + v5);

  v7 = [a1 uuidString];
  v8 = sub_20DD64EB4();
  v10 = v9;

  v11 = *(v6 + 16);
  v12 = v11 == 0;
  if (v11)
  {
    v13 = (v6 + 40);
    do
    {
      if (*(v13 - 1) == v8 && *v13 == v10)
      {
        break;
      }

      if (sub_20DD65974())
      {
        break;
      }

      v13 += 2;
      v12 = --v11 == 0;
    }

    while (v11);
  }

  v15 = *(v2 + v5);

  v16 = [a2 uuidString];
  v17 = sub_20DD64EB4();
  v19 = v18;

  v20 = *(v15 + 16);
  v21 = v20 == 0;
  if (v20)
  {
    v22 = (v15 + 40);
    do
    {
      if (*(v22 - 1) == v17 && *v22 == v19)
      {
        break;
      }

      if (sub_20DD65974())
      {
        break;
      }

      v22 += 2;
      v21 = --v20 == 0;
    }

    while (v20);
  }

  type metadata accessor for DashboardStaticSectionListItem();
  v24 = swift_dynamicCastClass();
  if (v24)
  {
    v25 = *(v24 + OBJC_IVAR___HFDashboardStaticSectionListItem_sectionType);
  }

  else
  {
    v25 = 3;
  }

  v26 = swift_dynamicCastClass();
  if (v26)
  {
    v27 = *(v26 + OBJC_IVAR___HFDashboardStaticSectionListItem_sectionType);
    if (v12)
    {
      goto LABEL_22;
    }

LABEL_27:
    v29 = v27 == 3;
    if (v21)
    {
      return v29;
    }

    else
    {
      return 2;
    }
  }

  v27 = 3;
  if (!v12)
  {
    goto LABEL_27;
  }

LABEL_22:
  if (!v21)
  {
    return v25 != 3;
  }

  result = 2;
  if (v25 != 3 && v27 != 3)
  {
    return v25 < v27;
  }

  return result;
}

id DashboardReorderableItemList.__allocating_init(applicationDataContainer:category:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = objc_allocWithZone(v3);
  v6 = sub_20DD64E74();

  v7 = [v5 initWithApplicationDataContainer:a1 category:v6];
  swift_unknownObjectRelease();

  return v7;
}

id DashboardReorderableItemList.init(applicationDataContainer:category:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_20DD64E74();

  v8.receiver = v3;
  v8.super_class = type metadata accessor for DashboardReorderableItemList();
  v6 = objc_msgSendSuper2(&v8, sel_initWithApplicationDataContainer_category_, a1, v5);

  swift_unknownObjectRelease();
  return v6;
}

id DashboardReorderableItemList.__deallocating_deinit(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for DashboardReorderableItemList();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_20DA061A4(unsigned __int8 a1, unsigned __int8 a2)
{
  if (a1 == 3 && a2 == 3)
  {
    return 2;
  }

  if (a1 == 3)
  {
    if (a2 == 3)
    {
      return 2;
    }

    return a1 != 3;
  }

  if (a2 == 3)
  {
    return a1 != 3;
  }

  if (a1 == a2)
  {
    return 2;
  }

  else
  {
    return a1 < a2;
  }
}

uint64_t sub_20DA06210(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 == 0x655373656E656373 && a2 == 0xED00006E6F697463 || (sub_20DD65974() & 1) != 0)
  {
    v8 = 1;
  }

  else if (a1 == 0x53736172656D6163 && a2 == 0xEE006E6F69746365 || (sub_20DD65974() & 1) != 0)
  {
    v8 = 0;
  }

  else
  {
    v8 = 2;
    if (a1 != 0xD000000000000010 || 0x800000020DD98860 != a2)
    {
      if (sub_20DD65974())
      {
        v8 = 2;
      }

      else
      {
        v8 = 3;
      }
    }
  }

  if (a3 == 0x655373656E656373 && a4 == 0xED00006E6F697463 || (sub_20DD65974() & 1) != 0)
  {
    v9 = 1;
    goto LABEL_9;
  }

  if (a3 == 0x53736172656D6163 && a4 == 0xEE006E6F69746365 || (sub_20DD65974() & 1) != 0)
  {
    v9 = 0;
    goto LABEL_9;
  }

  if (a3 == 0xD000000000000010 && 0x800000020DD98860 == a4)
  {
    v9 = 2;
LABEL_9:
    if (v8 == 3)
    {
      return 0;
    }

    goto LABEL_33;
  }

  v11 = sub_20DD65974();
  if (v8 == 3 && (v11 & 1) == 0)
  {
    return 2;
  }

  if (v8 == 3)
  {
    if (v11)
    {
      return 0;
    }

    return 2;
  }

  if ((v11 & 1) == 0)
  {
    return 1;
  }

  v9 = 2;
LABEL_33:
  v12 = v9 == v8;
  v13 = v9 > v8;
  if (v12)
  {
    return 2;
  }

  else
  {
    return v13;
  }
}

uint64_t sub_20DA06504(uint64_t a1, char a2, uint64_t a3, char a4)
{
  v4 = a1 < a3;
  if (a1 == a3)
  {
    v4 = 2;
  }

  if (a4)
  {
    v5 = 1;
  }

  else
  {
    v5 = v4;
  }

  if (a4)
  {
    v6 = 2;
  }

  else
  {
    v6 = 0;
  }

  if (a2)
  {
    return v6;
  }

  else
  {
    return v5;
  }
}

id ActionBuilderContainer.actionBuilder(actingOn:)(void *a1, uint64_t a2, uint64_t a3)
{
  v33 = a1;
  v32 = sub_20DD63744();
  v5 = *(v32 - 8);
  v6 = MEMORY[0x28223BE20](v32);
  v31 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v30 = &v28 - v8;
  v9 = (*(a3 + 8))(a2, a3);
  v10 = v9;
  if (v9 >> 62)
  {
    goto LABEL_15;
  }

  for (i = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_20DD655B4())
  {
    v12 = 0;
    v34 = v10 & 0xFFFFFFFFFFFFFF8;
    v35 = v10 & 0xC000000000000001;
    v29 = (v5 + 8);
    while (1)
    {
      if (v35)
      {
        v13 = MEMORY[0x20F326680](v12, v10);
      }

      else
      {
        if (v12 >= *(v34 + 16))
        {
          goto LABEL_14;
        }

        v13 = *(v10 + 8 * v12 + 32);
      }

      v5 = v13;
      v14 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      v15 = [objc_opt_self() asCharacteristicWriteAction_];
      if (v15)
      {
        v16 = i;
        v17 = v15;
        v18 = [v15 characteristic];
        v19 = [v18 uniqueIdentifier];

        v20 = v30;
        sub_20DD63714();

        v21 = [v33 uniqueIdentifier];
        v22 = v31;
        sub_20DD63714();

        LOBYTE(v21) = sub_20DD63704();
        v23 = *v29;
        v24 = v22;
        v25 = v32;
        (*v29)(v24, v32);
        v23(v20, v25);
        i = v16;
        if (v21)
        {
          goto LABEL_17;
        }
      }

      ++v12;
      if (v14 == i)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    ;
  }

LABEL_16:
  v5 = 0;
LABEL_17:

  v26 = [objc_opt_self() asCharacteristicWriteAction_];

  return v26;
}

unint64_t *ActionBuilderContainer.actionBuilders(actingOn:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v44 = a1;
  v45 = a2;
  v43 = sub_20DD63744();
  v6 = *(v43 - 8);
  v7 = MEMORY[0x28223BE20](v43);
  v42 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = &v33 - v9;
  v11 = (*(a4 + 8))(a3, a4);
  v48 = MEMORY[0x277D84F90];
  if (v11 >> 62)
  {
LABEL_20:
    v30 = v11;
    v12 = sub_20DD655B4();
    v11 = v30;
    v34 = v30;
    if (v12)
    {
      goto LABEL_3;
    }

LABEL_21:
    v29 = MEMORY[0x277D84F90];
    goto LABEL_22;
  }

  v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v34 = v11;
  if (!v12)
  {
    goto LABEL_21;
  }

LABEL_3:
  v13 = 0;
  v37 = v11 & 0xFFFFFFFFFFFFFF8;
  v38 = v11 & 0xC000000000000001;
  v35 = v12;
  v36 = v11 + 32;
  v41 = v45 + 16;
  v14 = (v6 + 8);
  while (v38)
  {
    v15 = MEMORY[0x20F326680](v13, v34);
    v16 = __OFADD__(v13, 1);
    v17 = v13 + 1;
    if (v16)
    {
      goto LABEL_16;
    }

LABEL_9:
    v39 = v15;
    v40 = v17;
    sub_20DA07D54(v15);
    v18 = (v11 + 40);
    v46 = -*(v11 + 16);
    v47 = v11;
    v19 = -1;
    do
    {
      if (v46 + v19 == -1)
      {

        goto LABEL_5;
      }

      if (++v19 >= *(v47 + 16))
      {
        __break(1u);
        goto LABEL_19;
      }

      v20 = v18 + 2;
      v21 = *v18;
      ObjectType = swift_getObjectType();
      v23 = *(v21 + 16);
      swift_unknownObjectRetain();
      v23(ObjectType, v21);
      v24 = swift_getObjectType();
      v25 = v42;
      (*(v45 + 16))(v24);
      v26 = sub_20DD63704();
      swift_unknownObjectRelease();
      v27 = *v14;
      v28 = v25;
      v6 = v43;
      (*v14)(v28, v43);
      v11 = (v27)(v10, v6);
      v18 = v20;
    }

    while ((v26 & 1) == 0);

    sub_20DD65754();
    v6 = *(v48 + 16);
    sub_20DD65784();
    sub_20DD65794();
    v11 = sub_20DD65764();
LABEL_5:
    v13 = v40;
    if (v40 == v35)
    {
      goto LABEL_17;
    }
  }

  if (v13 >= *(v37 + 16))
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v15 = *(v36 + 8 * v13);
  v16 = __OFADD__(v13, 1);
  v17 = v13 + 1;
  if (!v16)
  {
    goto LABEL_9;
  }

LABEL_16:
  __break(1u);
LABEL_17:
  v29 = v48;
LABEL_22:

  v31 = sub_20D9F919C(v29);

  return v31;
}

unint64_t *ActionBuilderContainer.actionBuilders(actingOn:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v40 = a1;
  v39 = sub_20DD63744();
  v5 = *(v39 - 8);
  v6 = MEMORY[0x28223BE20](v39);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v30 - v9;
  v11 = (*(a3 + 8))(a2, a3);
  v43 = MEMORY[0x277D84F90];
  if (v11 >> 62)
  {
LABEL_20:
    v27 = v11;
    v12 = sub_20DD655B4();
    v11 = v27;
    if (v12)
    {
      goto LABEL_3;
    }

LABEL_21:
    v26 = MEMORY[0x277D84F90];
    goto LABEL_22;
  }

  v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v12)
  {
    goto LABEL_21;
  }

LABEL_3:
  v13 = 0;
  v38 = OBJC_IVAR___HFMatterAccessoryRepresentable_accessory;
  v34 = v11 & 0xFFFFFFFFFFFFFF8;
  v35 = v11 & 0xC000000000000001;
  v31 = v11;
  v32 = v12;
  v33 = v11 + 32;
  v14 = (v5 + 8);
  while (v35)
  {
    v15 = MEMORY[0x20F326680](v13, v31);
    v16 = __OFADD__(v13, 1);
    v17 = v13 + 1;
    if (v16)
    {
      goto LABEL_16;
    }

LABEL_9:
    v36 = v15;
    v37 = v17;
    sub_20DA07D54(v15);
    v18 = (v11 + 40);
    v41 = -*(v11 + 16);
    v42 = v11;
    v19 = -1;
    do
    {
      if (v41 + v19 == -1)
      {

        goto LABEL_5;
      }

      if (++v19 >= *(v42 + 16))
      {
        __break(1u);
        goto LABEL_19;
      }

      v20 = v18 + 2;
      v21 = *v18;
      ObjectType = swift_getObjectType();
      v5 = *(v21 + 16);
      swift_unknownObjectRetain();
      (v5)(ObjectType, v21);
      v23 = [*(v40 + v38) uniqueIdentifier];
      sub_20DD63714();

      LOBYTE(v23) = sub_20DD63704();
      swift_unknownObjectRelease();
      v24 = *v14;
      v25 = v39;
      (*v14)(v8, v39);
      v11 = (v24)(v10, v25);
      v18 = v20;
    }

    while ((v23 & 1) == 0);

    sub_20DD65754();
    sub_20DD65784();
    sub_20DD65794();
    v11 = sub_20DD65764();
LABEL_5:
    v13 = v37;
    if (v37 == v32)
    {
      goto LABEL_17;
    }
  }

  if (v13 >= *(v34 + 16))
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v15 = *(v33 + 8 * v13);
  v16 = __OFADD__(v13, 1);
  v17 = v13 + 1;
  if (!v16)
  {
    goto LABEL_9;
  }

LABEL_16:
  __break(1u);
LABEL_17:
  v26 = v43;
LABEL_22:

  v28 = sub_20D9F919C(v26);

  return v28;
}

Swift::OpaquePointer_optional __swiftcall ActionBuilderContainer.matterAttributeValues(for:)(HMAccessory *a1)
{
  v10 = (*(v1 + 64))();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C843C50, &unk_20DD941C0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C843C58, &unk_20DD94500);
  if (swift_dynamicCast())
  {
    sub_20D9FF538(v8, v11);
    v3 = v12;
    v4 = v13;
    __swift_project_boxed_opaque_existential_0(v11, v12);
    v5 = (*(v4 + 8))(a1, v3, v4);
    __swift_destroy_boxed_opaque_existential_0(v11);
    v7 = v5;
  }

  else
  {
    v9 = 0;
    memset(v8, 0, sizeof(v8));
    sub_20D9D76EC(v8, &unk_27C843F70, &unk_20DD941B0);
    v7 = sub_20D9D4D68(MEMORY[0x277D84F90]);
  }

  result.value._rawValue = v7;
  result.is_nil = v6;
  return result;
}

Swift::Void __swiftcall ActionSetBuilderContainer.set(included:actionSet:)(Swift::Bool included, HMActionSet actionSet)
{
  if (included)
  {
    (*(v2 + 8))(actionSet.super.isa);
  }

  else
  {
    (*(v2 + 16))(actionSet.super.isa);
  }
}

id HFTriggerActionSetsBuilder.mediaActionBuilder.getter()
{
  v1 = [v0 anonymousActionSetBuilder];
  v2 = [v1 mediaAction];

  return v2;
}

uint64_t HFTriggerActionSetsBuilder.naturalLightActionBuilders.getter()
{
  v1 = [v0 anonymousActionSetBuilder];
  v2 = [v1 naturalLightingActions];

  sub_20D9D7510(0, &qword_27C843F80, off_277DEFE08);
  v3 = sub_20DD64FD4();

  return v3;
}

uint64_t HFTriggerActionSetsBuilder.anonymousActionSetReference.getter()
{
  v1 = [v0 anonymousActionSetBuilder];
  v2 = swift_dynamicCastObjCProtocolUnconditional();
  swift_getObjectType();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C843F88, &qword_20DD94510);
  result = swift_dynamicCastMetatype();
  if (result)
  {
    return v2;
  }

  __break(1u);
  return result;
}

uint64_t sub_20DA071E8()
{
  v1 = [*v0 anonymousActionSetBuilder];
  v2 = [v1 naturalLightingActions];

  sub_20D9D7510(0, &qword_27C843F80, off_277DEFE08);
  v3 = sub_20DD64FD4();

  return v3;
}

id sub_20DA0726C()
{
  v1 = [*v0 anonymousActionSetBuilder];
  v2 = [v1 mediaAction];

  return v2;
}

uint64_t sub_20DA07300()
{
  v1 = [*v0 anonymousActionSetBuilder];
  v2 = swift_dynamicCastObjCProtocolUnconditional();
  swift_getObjectType();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C843F88, &qword_20DD94510);
  result = swift_dynamicCastMetatype();
  if (result)
  {
    return v2;
  }

  __break(1u);
  return result;
}

Swift::Bool __swiftcall HFTriggerActionSetsBuilder.contains(actionSet:)(HMActionSet actionSet)
{
  v3 = [v1 namedActionSets];
  sub_20D9D7510(0, &unk_27C843F90, off_277DEF3C0);
  v4 = sub_20DD64FD4();

  if (v4 >> 62)
  {
    goto LABEL_15;
  }

  for (i = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_20DD655B4())
  {
    v6 = 0;
    while (1)
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x20F326680](v6, v4);
      }

      else
      {
        if (v6 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_14;
        }

        v7 = *(v4 + 8 * v6 + 32);
      }

      v8 = v7;
      v9 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      v12 = v7;
      v10 = sub_20DA0751C(&v12, actionSet.super.isa);

      if (v10)
      {

        return 1;
      }

      ++v6;
      if (v9 == i)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    ;
  }

LABEL_16:

  return 0;
}

uint64_t sub_20DA0751C(void **a1, void *a2)
{
  v4 = sub_20DD63744();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v34 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C843A68, &unk_20DD940F0);
  MEMORY[0x28223BE20](v7);
  v9 = &v33 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C843A70, &qword_20DD94260);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v35 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v33 - v14;
  MEMORY[0x28223BE20](v13);
  v17 = &v33 - v16;
  v18 = *a1;
  v19 = [a2 uniqueIdentifier];
  sub_20DD63714();

  v36 = v5;
  v20 = *(v5 + 56);
  v21 = 1;
  v20(v17, 0, 1, v4);
  v22 = [v18 actionSet];
  if (v22)
  {
    v23 = v22;
    v24 = [v22 uniqueIdentifier];

    sub_20DD63714();
    v21 = 0;
  }

  v20(v15, v21, 1, v4);
  v25 = *(v7 + 48);
  sub_20D9C90A8(v17, v9);
  sub_20D9C90A8(v15, &v9[v25]);
  v26 = *(v36 + 48);
  if (v26(v9, 1, v4) != 1)
  {
    v28 = v35;
    sub_20D9C90A8(v9, v35);
    if (v26(&v9[v25], 1, v4) != 1)
    {
      v29 = v36;
      v30 = v34;
      (*(v36 + 32))(v34, &v9[v25], v4);
      sub_20DA08490();
      v27 = sub_20DD64E64();
      v31 = *(v29 + 8);
      v31(v30, v4);
      sub_20D9D76EC(v15, &unk_27C843A70, &qword_20DD94260);
      sub_20D9D76EC(v17, &unk_27C843A70, &qword_20DD94260);
      v31(v35, v4);
      sub_20D9D76EC(v9, &unk_27C843A70, &qword_20DD94260);
      return v27 & 1;
    }

    sub_20D9D76EC(v15, &unk_27C843A70, &qword_20DD94260);
    sub_20D9D76EC(v17, &unk_27C843A70, &qword_20DD94260);
    (*(v36 + 8))(v28, v4);
    goto LABEL_8;
  }

  sub_20D9D76EC(v15, &unk_27C843A70, &qword_20DD94260);
  sub_20D9D76EC(v17, &unk_27C843A70, &qword_20DD94260);
  if (v26(&v9[v25], 1, v4) != 1)
  {
LABEL_8:
    sub_20D9D76EC(v9, &qword_27C843A68, &unk_20DD940F0);
    v27 = 0;
    return v27 & 1;
  }

  sub_20D9D76EC(v9, &unk_27C843A70, &qword_20DD94260);
  v27 = 1;
  return v27 & 1;
}

uint64_t sub_20DA07A0C(SEL *a1, unint64_t *a2, void *a3)
{
  v6 = [v3 *a1];
  sub_20D9D7510(0, a2, a3);
  v7 = sub_20DD64FD4();

  return v7;
}

id HFActionSetBuilder.mediaActionBuilder.getter()
{
  v1 = [v0 mediaAction];

  return v1;
}

id HFActionSetBuilder.anonymousActionSetReference.getter()
{
  v1 = swift_dynamicCastObjCProtocolUnconditional();
  swift_getObjectType();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C843F88, &qword_20DD94510);
  result = swift_dynamicCastMetatype();
  if (result)
  {

    return v1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_20DA07BBC(uint64_t a1, uint64_t a2, SEL *a3, unint64_t *a4, void *a5)
{
  v8 = [*v5 *a3];
  sub_20D9D7510(0, a4, a5);
  v9 = sub_20DD64FD4();

  return v9;
}

id sub_20DA07C44()
{
  v1 = [*v0 mediaAction];

  return v1;
}

id sub_20DA07CB8()
{
  v1 = swift_dynamicCastObjCProtocolUnconditional();
  swift_getObjectType();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C843F88, &qword_20DD94510);
  result = swift_dynamicCastMetatype();
  if (result)
  {

    return v1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_20DA07D54(void *a1)
{
  v2 = sub_20DD64C44();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v47 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  objc_opt_self();
  v6 = swift_dynamicCastObjCClass();
  if (v6)
  {
    v7 = v6;
    v8 = a1;
    v9 = [v7 characteristic];
    v10 = [v9 service];

    if (v10)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C843FB0, &unk_20DD95650);
      v11 = swift_allocObject();
      *(v11 + 16) = xmmword_20DD93A70;
      *(v11 + 32) = v10;
      *(v11 + 40) = &protocol witness table for HMService;
    }
  }

  else
  {
    objc_opt_self();
    v12 = swift_dynamicCastObjCClass();
    if (v12)
    {
      v13 = v12;
      v48 = a1;
      v14 = [v13 mediaProfiles];
      v15 = sub_20DD651E4();

      v16 = v15 + 56;
      v17 = 1 << *(v15 + 32);
      v18 = -1;
      if (v17 < 64)
      {
        v18 = ~(-1 << v17);
      }

      v19 = v18 & *(v15 + 56);
      v20 = (v17 + 63) >> 6;
      v53 = (v3 + 8);

      v21 = 0;
      v49 = MEMORY[0x277D84F90];
      *&v22 = 136315138;
      v50 = v22;
      v51 = v15;
      v52 = v5;
      for (i = v15 + 56; v19; *&v37[2 * v36 + 4] = v47)
      {
LABEL_16:
        while (1)
        {
          v24 = __clz(__rbit64(v19));
          v19 &= v19 - 1;
          sub_20D9D7288(*(v15 + 48) + 40 * (v24 | (v21 << 6)), v57);
          sub_20D9D7288(v57, v56);
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C8438F0, &qword_20DD93F90);
          if (swift_dynamicCast())
          {
            break;
          }

          sub_20DD64BF4();
          sub_20D9D7288(v57, v56);
          v25 = sub_20DD64C24();
          v26 = sub_20DD65364();
          if (os_log_type_enabled(v25, v26))
          {
            v27 = swift_slowAlloc();
            v28 = swift_slowAlloc();
            *&v55 = v28;
            *v27 = v50;
            v29 = sub_20DD65654();
            v30 = v2;
            v32 = v31;
            sub_20D9D4298(v56);
            v33 = sub_20D9E0B38(v29, v32, &v55);
            v2 = v30;
            v5 = v52;

            *(v27 + 4) = v33;
            _os_log_impl(&dword_20D9BF000, v25, v26, "Failed to cast mediaProfileContainer %s to AccessoryElement. This may lead to undefined behavior", v27, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v28);
            v34 = v28;
            v15 = v51;
            MEMORY[0x20F327D10](v34, -1, -1);
            MEMORY[0x20F327D10](v27, -1, -1);
          }

          else
          {

            sub_20D9D4298(v56);
          }

          (*v53)(v5, v2);
          sub_20D9D4298(v57);
          v16 = i;
          if (!v19)
          {
            goto LABEL_12;
          }
        }

        v47 = v55;
        sub_20D9D4298(v57);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v49 = sub_20D9E0398(0, v49[2] + 1, 1, v49);
        }

        v36 = v49[2];
        v35 = v49[3];
        if (v36 >= v35 >> 1)
        {
          v49 = sub_20D9E0398((v35 > 1), v36 + 1, 1, v49);
        }

        v37 = v49;
        v49[2] = v36 + 1;
      }

LABEL_12:
      while (1)
      {
        v23 = v21 + 1;
        if (__OFADD__(v21, 1))
        {
          break;
        }

        if (v23 >= v20)
        {

          return;
        }

        v19 = *(v16 + 8 * v23);
        ++v21;
        if (v19)
        {
          v21 = v23;
          goto LABEL_16;
        }
      }

      __break(1u);
    }

    else
    {
      objc_opt_self();
      v38 = swift_dynamicCastObjCClass();
      if (v38)
      {
        v39 = v38;
        v40 = a1;
        v41 = [v39 lightProfile];
        v42 = [v41 services];

        sub_20D9D7510(0, &qword_27C8435F0, 0x277CD1D90);
        v43 = sub_20DD64FD4();

        sub_20DA0B284(v43);
      }

      else
      {
        objc_opt_self();
        v44 = swift_dynamicCastObjCClass();
        if (v44)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C843FA0, &qword_20DD945D0);
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_20DD93A70;
          v46 = a1;
          *(inited + 32) = [v44 accessory];
          sub_20DA495F4(inited);
          swift_setDeallocating();
          sub_20D9D76EC(inited + 32, &qword_27C843FA8, &unk_20DD945D8);
        }
      }
    }
  }
}

unint64_t sub_20DA08490()
{
  result = qword_280E02288;
  if (!qword_280E02288)
  {
    sub_20DD63744();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E02288);
  }

  return result;
}

uint64_t sub_20DA084EC(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x2822009F8](sub_20DA0850C, 0, 0);
}

uint64_t sub_20DA0850C()
{
  sub_20DD64BC4();
  v1 = sub_20DD64B94();
  v0[4] = v1;
  v2 = swift_task_alloc();
  v0[5] = v2;
  *v2 = v0;
  v2[1] = sub_20DA085C0;
  v4 = v0[2];
  v3 = v0[3];

  return MEMORY[0x282172638](v4, v3, v1);
}

uint64_t sub_20DA085C0(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;
  *(*v2 + 48) = v1;

  if (v1)
  {

    return MEMORY[0x2822009F8](sub_20DA08718, 0, 0);
  }

  else
  {

    v6 = *(v5 + 8);

    return v6(a1);
  }
}

uint64_t sub_20DA08718()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_20DA08794(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x2822009F8](sub_20DA087B4, 0, 0);
}

uint64_t sub_20DA087B4()
{
  sub_20DD64BC4();
  v1 = sub_20DD64B94();
  v0[4] = v1;
  v2 = swift_task_alloc();
  v0[5] = v2;
  *v2 = v0;
  v2[1] = sub_20DA08868;
  v4 = v0[2];
  v3 = v0[3];

  return MEMORY[0x282172638](v4, v3, v1);
}

uint64_t sub_20DA08868(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;
  *(*v2 + 48) = v1;

  if (v1)
  {

    return MEMORY[0x2822009F8](sub_20DA08CD8, 0, 0);
  }

  else
  {

    v6 = *(v5 + 8);

    return v6(a1);
  }
}

uint64_t HFHomeEnergyManager.testingMode.getter()
{
  sub_20D9FF4D0(v0 + OBJC_IVAR____TtC4Home19HFHomeEnergyManager_utilityService, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C843FC0, &qword_20DD945E8);
  type metadata accessor for RealUtilityServices();
  v1 = swift_dynamicCast();
  if (v1)
  {
  }

  return v1 ^ 1u;
}

uint64_t dispatch thunk of UtilityServicing.allUtilitiesInRegion(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 8) + **(a4 + 8));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_20D9D7010;

  return v11(a1, a2, a3, a4);
}

uint64_t dispatch thunk of RealUtilityServices.allUtilitiesInRegion(_:)(uint64_t a1, uint64_t a2)
{
  v8 = (*(*v2 + 80) + **(*v2 + 80));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_20D9D77BC;

  return v8(a1, a2);
}

uint64_t sub_20DA08CE0(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C843D50, &qword_20DD94250);
  v2[4] = swift_task_alloc();
  v3 = sub_20DD63744();
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();
  v4 = sub_20DD638F4();
  v2[8] = v4;
  v2[9] = *(v4 - 8);
  v2[10] = swift_task_alloc();
  v5 = sub_20DD63E94();
  v2[11] = v5;
  v2[12] = *(v5 - 8);
  v2[13] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C843D58, &qword_20DD94258);
  v2[14] = swift_task_alloc();
  sub_20DD650F4();
  v2[15] = sub_20DD650E4();
  v7 = sub_20DD65094();
  v2[16] = v7;
  v2[17] = v6;

  return MEMORY[0x2822009F8](sub_20DA08EFC, v7, v6);
}

uint64_t sub_20DA08EFC()
{
  v0[18] = sub_20DD63C84();
  v1 = sub_20DD63C64();
  v2 = sub_20DD63C04();

  if (*(v2 + 16) && (v7 = sub_20D9CB38C(v0[3], v3, v4, v5, v6), (v8 & 1) != 0))
  {
    (*(v0[12] + 16))(v0[14], *(v2 + 56) + *(v0[12] + 72) * v7, v0[11]);
    v9 = 0;
  }

  else
  {
    v9 = 1;
  }

  v10 = v0[14];
  v11 = v0[11];
  v12 = v0[12];

  (*(v12 + 56))(v10, v9, 1, v11);
  if ((*(v12 + 48))(v10, 1, v11))
  {
    v13 = v0[14];

    sub_20D9D76EC(v13, &qword_27C843D58, &qword_20DD94258);
    sub_20DD64324();

    v14 = v0[1];

    return v14();
  }

  else
  {
    v16 = v0[13];
    v17 = v0[14];
    v18 = v0[11];
    v19 = v0[12];
    (*(v19 + 16))(v16, v17, v18);
    sub_20D9D76EC(v17, &qword_27C843D58, &qword_20DD94258);
    sub_20DD63E34();
    (*(v19 + 8))(v16, v18);
    v20 = swift_task_alloc();
    v0[19] = v20;
    *v20 = v0;
    v20[1] = sub_20DA09160;

    return MEMORY[0x28216E688]();
  }
}

uint64_t sub_20DA09160(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v4 = *(*v1 + 72);
  v5 = *(*v1 + 64);
  *(*v1 + 160) = a1;

  (*(v4 + 8))(v3, v5);
  v6 = *(v2 + 136);
  v7 = *(v2 + 128);

  return MEMORY[0x2822009F8](sub_20DA092EC, v7, v6);
}

uint64_t sub_20DA092EC()
{
  v1 = v0[20];

  if (v1)
  {
    v2 = v0[20];
    v3 = sub_20DD63C64();
    v4 = [v2 uniqueIdentifier];
    sub_20DD63714();

    v5 = sub_20DD63C14();
    if (*(v5 + 16) && (v10 = sub_20D9CB38C(v0[7], v6, v7, v8, v9), (v11 & 1) != 0))
    {
      v12 = v10;
      v13 = v0[6];
      v15 = v0[4];
      v14 = v0[5];
      v27 = v0[7];
      v28 = v0[2];
      v16 = *(v5 + 56);
      v17 = sub_20DD64354();
      v18 = *(v17 - 8);
      (*(v18 + 16))(v15, v16 + *(v18 + 72) * v12, v17);

      (*(v13 + 8))(v27, v14);

      (*(v18 + 56))(v15, 0, 1, v17);
      (*(v18 + 32))(v28, v15, v17);
    }

    else
    {
      v20 = v0[6];
      v19 = v0[7];
      v22 = v0[4];
      v21 = v0[5];

      (*(v20 + 8))(v19, v21);
      v23 = sub_20DD64354();
      v24 = *(v23 - 8);
      (*(v24 + 56))(v22, 1, 1, v23);
      sub_20DD64324();

      if ((*(v24 + 48))(v22, 1, v23) != 1)
      {
        sub_20D9D76EC(v0[4], &qword_27C843D50, &qword_20DD94250);
      }
    }
  }

  else
  {
    sub_20DD64324();
  }

  v25 = v0[1];

  return v25();
}

id _sSo27HFServiceActionItemProviderC4HomeE013_createMatterbC03for4home16actionSetBuilderSo0abC0CSgSo11HMAccessoryC_So6HMHomeCSo08HFActionkL8Protocol_So06HFItemL0CyyXlGXctF_0(void *a1, void *a2, void *a3)
{
  v6 = sub_20DD63744();
  MEMORY[0x28223BE20](v6 - 8);
  v7 = sub_20DD63FE4();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (![a1 hf_isMatterOnlyAccessory])
  {
    return 0;
  }

  sub_20DD65334();
  if (v11)
  {
    return 0;
  }

  v13 = [a2 uniqueIdentifier];
  sub_20DD63714();

  sub_20DD63FB4();
  v14 = type metadata accessor for MatterAccessoryRepresentable(0);
  v15 = objc_allocWithZone(v14);
  v16 = OBJC_IVAR___HFMatterAccessoryRepresentable_staticMatterDevice;
  v17 = sub_20DD64294();
  (*(*(v17 - 8) + 56))(&v15[v16], 1, 1, v17);
  v18 = &v15[OBJC_IVAR___HFMatterAccessoryRepresentable__tileInfo];
  *(v18 + 4) = 0;
  *v18 = 0u;
  *(v18 + 1) = 0u;
  *&v15[OBJC_IVAR___HFMatterAccessoryRepresentable_accessory] = a1;
  v31 = a2;
  v19 = *(v8 + 16);
  v19(&v15[OBJC_IVAR___HFMatterAccessoryRepresentable_tilePath], v10, v7);
  v33.receiver = v15;
  v33.super_class = v14;
  v20 = a1;
  v21 = objc_msgSendSuper2(&v33, sel_init);
  (*(v8 + 8))(v10, v7);
  v22 = type metadata accessor for MatterAccessoryLikeItem(0);
  v23 = objc_allocWithZone(v22);
  v19(&v23[OBJC_IVAR____TtC4Home23MatterAccessoryLikeItem_tilePath], &v21[OBJC_IVAR___HFMatterAccessoryRepresentable_tilePath], v7);
  v24 = &v23[OBJC_IVAR____TtC4Home23MatterAccessoryLikeItem_matterSnapshotProvider];
  *v24 = &unk_20DD94660;
  *(v24 + 1) = 0;
  *&v23[OBJC_IVAR____TtC4Home23MatterAccessoryLikeItem_matterAccessoryRepresentable] = v21;
  *&v23[OBJC_IVAR____TtC4Home23MatterAccessoryLikeItem_actionSetBuilder] = a3;
  v32.receiver = v23;
  v32.super_class = v22;
  v25 = v21;
  v26 = a3;
  v27 = objc_msgSendSuper2(&v32, sel_init);
  v28 = *&v27[OBJC_IVAR____TtC4Home23MatterAccessoryLikeItem_matterAccessoryRepresentable];
  sub_20D9F18F4();

  v29 = objc_allocWithZone(HFServiceActionItem);
  v30 = [v29 initWithHome:v31 containingItem:v27];

  return v30;
}

uint64_t _sSo27HFServiceActionItemProviderC4HomeE015isMatterServicebC0_14forAccessoryIDSbSo0abC0C_10Foundation4UUIDVtF_0(void *a1, uint64_t a2)
{
  v3 = sub_20DD63744();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [a1 containingItem];
  type metadata accessor for MatterAccessoryLikeItem(0);
  v8 = swift_dynamicCastClass();
  if (v8)
  {
    v9 = *(v8 + OBJC_IVAR____TtC4Home23MatterAccessoryLikeItem_matterAccessoryRepresentable);
    v10 = *&v9[OBJC_IVAR___HFMatterAccessoryRepresentable_accessory];
    v11 = v9;
    v12 = [v10 uniqueIdentifier];
    sub_20DD63714();

    v13 = sub_20DD63704();
    (*(v4 + 8))(v6, v3);
  }

  else
  {

    v13 = 0;
  }

  return v13 & 1;
}

Swift::OpaquePointer_optional __swiftcall HFAbstractBaseActionSetBuilder.matterAttributeValues(for:)(HMAccessory *a1)
{
  v2 = sub_20DD63D64();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [v1 matterActionBuilders];
  if (v6)
  {

    v6 = sub_20DA09E0C();
    if (v6)
    {
      v8 = v6;
      v9 = MEMORY[0x277D84F90];
      v10 = sub_20D9D4D68(MEMORY[0x277D84F90]);
      v16 = v9;
      v17 = v10;
      sub_20DA09FE4(v8);

      v11 = v16;
      v12 = *(v16 + 16);
      if (v12)
      {
        v13 = 0;
        v14 = (v3 + 8);
        while (v13 < *(v11 + 16))
        {
          (*(v3 + 16))(v5, v11 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v13, v2);
          sub_20DA0A0D4(v5, &v17);
          ++v13;
          (*v14)(v5, v2);
          if (v12 == v13)
          {
            v10 = v17;
            goto LABEL_8;
          }
        }

        __break(1u);

        v6 = (*v14)(v5, v2);
        __break(1u);
      }

      else
      {
LABEL_8:

        v6 = v10;
      }
    }
  }

  result.value._rawValue = v6;
  result.is_nil = v7;
  return result;
}

uint64_t sub_20DA09E0C()
{
  v1 = [v0 matterActionBuilders];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  sub_20DA0AF98();
  v3 = sub_20DD64FD4();

  v19 = MEMORY[0x277D84F90];
  if (v3 >> 62)
  {
    goto LABEL_25;
  }

  for (i = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_20DD655B4())
  {
    v5 = 0;
    while (1)
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x20F326680](v5, v3);
      }

      else
      {
        if (v5 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_24;
        }

        v6 = *(v3 + 8 * v5 + 32);
      }

      v7 = v6;
      v8 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      v9 = [v6 accessory];
      if (v9)
      {
        v10 = v9;
        v11 = sub_20DD65334();
        v13 = v12;

        v14 = sub_20DD65334();
        if (v13)
        {
          if (v15)
          {
            goto LABEL_19;
          }
        }

        else if ((v15 & 1) == 0 && v11 == v14)
        {
LABEL_19:
          sub_20DD65754();
          sub_20DD65784();
          sub_20DD65794();
          sub_20DD65764();
          goto LABEL_6;
        }
      }

      else
      {
        sub_20DD65334();
        if (v16)
        {
          goto LABEL_19;
        }
      }

LABEL_6:
      ++v5;
      if (v8 == i)
      {
        v17 = v19;
        goto LABEL_27;
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    ;
  }

  v17 = MEMORY[0x277D84F90];
LABEL_27:

  return v17;
}

void sub_20DA09FE4(unint64_t a1)
{
  if (a1 >> 62)
  {
    goto LABEL_14;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_20DD655B4())
  {
    for (j = 0; ; ++j)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v4 = MEMORY[0x20F326680](j, a1);
      }

      else
      {
        if (j >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_13;
        }

        v4 = *(a1 + 8 * j + 32);
      }

      v5 = v4;
      v6 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      v7 = HFMatterCommandActionBuilder.overridingAttributes()();
      if (v7)
      {
        sub_20DA12BF8(v7);
      }

      if (v6 == i)
      {
        return;
      }
    }

    __break(1u);
LABEL_13:
    __break(1u);
LABEL_14:
    ;
  }
}

uint64_t sub_20DA0A0D4(uint64_t a1, void *a2)
{
  v152 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C843FC8, &qword_20DD946C0);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v124 = v122 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v151 = v122 - v6;
  v156 = sub_20DD63CD4();
  v7 = *(v156 - 8);
  v8 = MEMORY[0x28223BE20](v156);
  v160 = v122 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v136 = v122 - v10;
  v11 = sub_20DD638D4();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v132 = v122 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v150 = v122 - v16;
  MEMORY[0x28223BE20](v15);
  v128 = v122 - v17;
  v18 = sub_20DD64504();
  v19 = *(v18 - 8);
  v20 = MEMORY[0x28223BE20](v18);
  v158 = v122 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v20);
  v149 = v122 - v23;
  MEMORY[0x28223BE20](v22);
  v127 = v122 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C843FD0, &qword_20DD946C8);
  v26 = MEMORY[0x28223BE20](v25 - 8);
  v141 = v122 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v138 = v122 - v28;
  v137 = a1;
  v29 = sub_20DD63D54();
  v30 = 0;
  v31 = 0;
  v32 = 0;
  v33 = *(v29 + 64);
  v123 = v29 + 64;
  v129 = v29;
  v34 = 1 << *(v29 + 32);
  v35 = -1;
  if (v34 < 64)
  {
    v35 = ~(-1 << v34);
  }

  v36 = v35 & v33;
  v37 = (v34 + 63) >> 6;
  v155 = (v19 + 16);
  v145 = (v19 + 32);
  v146 = (v12 + 16);
  v157 = (v12 + 32);
  v148 = (v7 + 8);
  v135 = (v12 + 56);
  v126 = v7;
  v125 = v7 + 16;
  v133 = (v12 + 48);
  v139 = v19;
  v142 = (v19 + 8);
  v122[2] = v12 + 40;
  v143 = v12;
  v130 = (v12 + 8);
  v131 = v37;
  v134 = v11;
  v159 = v18;
  while (1)
  {
    v153 = v31;
    v154 = v30;
    if (!v36)
    {
      break;
    }

    v42 = v32;
LABEL_16:
    v147 = (v36 - 1) & v36;
    v46 = __clz(__rbit64(v36)) | (v42 << 6);
    v47 = v129;
    v48 = v139;
    v49 = v127;
    v50 = v159;
    (*(v139 + 16))(v127, *(v129 + 48) + *(v139 + 72) * v46, v159);
    v51 = v143;
    v52 = v128;
    (*(v143 + 16))(v128, *(v47 + 56) + *(v143 + 72) * v46, v11);
    v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C843FD8, &qword_20DD946D0);
    v54 = *(v53 + 48);
    v55 = *(v48 + 32);
    v45 = v141;
    v55(v141, v49, v50);
    (*(v51 + 32))(v45 + v54, v52, v11);
    (*(*(v53 - 8) + 56))(v45, 0, 1, v53);
LABEL_17:
    v56 = v138;
    sub_20DA0AEC0(v45, v138);
    v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C843FD8, &qword_20DD946D0);
    if ((*(*(v57 - 8) + 48))(v56, 1, v57) == 1)
    {

      sub_20D9C2E38(v154, 0);
      return sub_20D9C2E38(v153, 0);
    }

    v58 = *(v57 + 48);
    v59 = v149;
    v60 = v159;
    (*v145)(v149, v56, v159);
    v61 = v150;
    v144 = *v157;
    v144(v150, v56 + v58, v11);
    v62 = v11;
    v63 = sub_20DD63D24();
    v64 = v136;
    sub_20DD63D44();
    sub_20DD63CB4();
    v65 = *v148;
    (*v148)(v64, v156);
    v140 = *v155;
    v140(v158, v59, v60);
    v66 = v151;
    (*v146)(v151, v61, v62);
    (*v135)(v66, 0, 1, v62);
    sub_20D9C2E38(v154, 0);
    v67 = v152;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v161 = *v67;
    v69 = v161;
    *v67 = 0x8000000000000000;
    v71 = sub_20D9CB188(v63);
    v72 = v69[2];
    v73 = (v70 & 1) == 0;
    v74 = v72 + v73;
    if (__OFADD__(v72, v73))
    {
      goto LABEL_51;
    }

    v75 = v70;
    if (v69[3] >= v74)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_20D9D2B2C();
        v69 = v161;
      }
    }

    else
    {
      sub_20D9CDE48(v74, isUniquelyReferenced_nonNull_native);
      v69 = v161;
      v76 = sub_20D9CB188(v63);
      if ((v75 & 1) != (v77 & 1))
      {
        goto LABEL_58;
      }

      v71 = v76;
    }

    v78 = v152;
    *v152 = v69;

    v79 = *v78;
    if ((v75 & 1) == 0)
    {
      v80 = sub_20D9D55E8(MEMORY[0x277D84F90]);
      v79[(v71 >> 6) + 8] |= 1 << v71;
      *(v79[6] + 2 * v71) = v63;
      *(v79[7] + 8 * v71) = v80;
      v81 = v79[2];
      v82 = __OFADD__(v81, 1);
      v83 = v81 + 1;
      if (v82)
      {
        goto LABEL_53;
      }

      v79[2] = v83;
    }

    v84 = v79[7];
    sub_20D9C2E38(v153, 0);
    v85 = swift_isUniquelyReferenced_nonNull_native();
    v161 = *(v84 + 8 * v71);
    v86 = v161;
    *(v84 + 8 * v71) = 0x8000000000000000;
    v88 = sub_20D9CB608(v160);
    v89 = v86[2];
    v90 = (v87 & 1) == 0;
    v91 = v89 + v90;
    if (__OFADD__(v89, v90))
    {
      goto LABEL_52;
    }

    v92 = v87;
    if (v86[3] >= v91)
    {
      if ((v85 & 1) == 0)
      {
        sub_20D9D2B04();
        v86 = v161;
      }
    }

    else
    {
      sub_20D9CDA6C(v91, v85);
      v86 = v161;
      v93 = sub_20D9CB608(v160);
      if ((v92 & 1) != (v94 & 1))
      {
        goto LABEL_57;
      }

      v88 = v93;
    }

    *(v84 + 8 * v71) = v86;

    v95 = *(v84 + 8 * v71);
    v96 = v151;
    if ((v92 & 1) == 0)
    {
      v97 = sub_20D9D57D0(MEMORY[0x277D84F90]);
      v95[(v88 >> 6) + 8] |= 1 << v88;
      (*(v126 + 16))(v95[6] + *(v126 + 72) * v88, v160, v156);
      *(v95[7] + 8 * v88) = v97;
      v98 = v95[2];
      v82 = __OFADD__(v98, 1);
      v99 = v98 + 1;
      if (v82)
      {
        goto LABEL_54;
      }

      v95[2] = v99;
    }

    v100 = (v95[7] + 8 * v88);
    v11 = v134;
    if ((*v133)(v96, 1, v134) == 1)
    {
      sub_20DA0AF30(v96);
      v38 = v124;
      v39 = v158;
      sub_20DA27740(v158, v124);
      sub_20DA0AF30(v38);
      v40 = *v142;
      v41 = v159;
      (*v142)(v39, v159);
      goto LABEL_5;
    }

    v144(v132, v96, v11);
    v101 = swift_isUniquelyReferenced_nonNull_native();
    v161 = *v100;
    v102 = v161;
    *v100 = 0x8000000000000000;
    v103 = sub_20D9CB534(v158);
    v105 = v102[2];
    v106 = (v104 & 1) == 0;
    v82 = __OFADD__(v105, v106);
    v107 = v105 + v106;
    v108 = v142;
    if (v82)
    {
      goto LABEL_55;
    }

    v109 = v104;
    if (v102[3] < v107)
    {
      sub_20D9CD5C4(v107, v101);
      v103 = sub_20D9CB534(v158);
      if ((v109 & 1) != (v110 & 1))
      {
        goto LABEL_59;
      }

LABEL_42:
      v111 = v161;
      if ((v109 & 1) == 0)
      {
        goto LABEL_46;
      }

      goto LABEL_43;
    }

    if (v101)
    {
      goto LABEL_42;
    }

    v113 = v103;
    sub_20D9D2AC8();
    v103 = v113;
    v111 = v161;
    if ((v109 & 1) == 0)
    {
LABEL_46:
      v154 = v65;
      v111[(v103 >> 6) + 8] |= 1 << v103;
      v114 = v139;
      v115 = v103;
      v116 = v11;
      v118 = v158;
      v117 = v159;
      v140(v111[6] + *(v139 + 72) * v103, v158, v159);
      v144((v111[7] + *(v143 + 72) * v115), v132, v116);
      v40 = *(v114 + 8);
      v40(v118, v117);
      v119 = v111[2];
      v82 = __OFADD__(v119, 1);
      v120 = v119 + 1;
      if (v82)
      {
        goto LABEL_56;
      }

      v111[2] = v120;
      v11 = v116;
      v65 = v154;
      goto LABEL_48;
    }

LABEL_43:
    (*(v143 + 40))(v111[7] + *(v143 + 72) * v103, v132, v11);
    v40 = *v108;
    (*v108)(v158, v159);
LABEL_48:
    *v100 = v111;

    v41 = v159;
LABEL_5:
    (v65)(v160, v156);
    (*v130)(v150, v11);
    v40(v149, v41);
    v31 = sub_20DA0AE58;
    v30 = sub_20DA0AE28;
    v37 = v131;
    v36 = v147;
  }

  if (v37 <= v32 + 1)
  {
    v43 = v32 + 1;
  }

  else
  {
    v43 = v37;
  }

  v44 = v43 - 1;
  v45 = v141;
  while (1)
  {
    v42 = v32 + 1;
    if (__OFADD__(v32, 1))
    {
      break;
    }

    if (v42 >= v37)
    {
      v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C843FD8, &qword_20DD946D0);
      (*(*(v112 - 8) + 56))(v45, 1, 1, v112);
      v147 = 0;
      v32 = v44;
      goto LABEL_17;
    }

    v36 = *(v123 + 8 * v42);
    ++v32;
    if (v36)
    {
      v32 = v42;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_51:
  __break(1u);
LABEL_52:
  __break(1u);
LABEL_53:
  __break(1u);
LABEL_54:
  __break(1u);
LABEL_55:
  __break(1u);
LABEL_56:
  __break(1u);
LABEL_57:
  sub_20DD659E4();
  __break(1u);
LABEL_58:
  sub_20DD659E4();
  __break(1u);
LABEL_59:
  result = sub_20DD659E4();
  __break(1u);
  return result;
}

unint64_t sub_20DA0AE28@<X0>(unint64_t *a1@<X8>)
{
  result = sub_20D9D55E8(MEMORY[0x277D84F90]);
  *a1 = result;
  return result;
}

unint64_t sub_20DA0AE58@<X0>(unint64_t *a1@<X8>)
{
  result = sub_20D9D57D0(MEMORY[0x277D84F90]);
  *a1 = result;
  return result;
}

uint64_t sub_20DA0AEC0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C843FD0, &qword_20DD946C8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_20DA0AF30(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C843FC8, &qword_20DD946C0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_20DA0AF98()
{
  result = qword_27C843FE0;
  if (!qword_27C843FE0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27C843FE0);
  }

  return result;
}

uint64_t sub_20DA0AFE4(uint64_t (*a1)(id *), uint64_t a2, unint64_t a3)
{
  v4 = a3;
  v19 = MEMORY[0x277D84F90];
  if (a3 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_20DD655B4())
  {
    v8 = 0;
    v16 = v4 & 0xFFFFFFFFFFFFFF8;
    v17 = v4 & 0xC000000000000001;
    v15 = v4;
    while (1)
    {
      if (v17)
      {
        v9 = MEMORY[0x20F326680](v8, v4);
      }

      else
      {
        if (v8 >= *(v16 + 16))
        {
          goto LABEL_17;
        }

        v9 = *(v4 + 8 * v8 + 32);
      }

      v10 = v9;
      v11 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      v18 = v9;
      v12 = a2;
      v13 = a1(&v18);
      if (v3)
      {

        return v12;
      }

      if (v13)
      {
        sub_20DD65754();
        sub_20DD65784();
        v4 = v15;
        sub_20DD65794();
        sub_20DD65764();
      }

      else
      {
      }

      ++v8;
      if (v11 == i)
      {
        v12 = v19;
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

  v12 = MEMORY[0x277D84F90];
LABEL_20:

  return v12;
}

uint64_t sub_20DA0B190(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v4 = sub_20DD655B4();
    if ((v2 & 0xC000000000000001) != 0)
    {
      goto LABEL_3;
    }

LABEL_9:
    if (v4 > *(v2 + 16) >> 3)
    {
      goto LABEL_10;
    }

LABEL_13:
    sub_20D9E9BF8(a1);
    return v2;
  }

  v4 = *(a1 + 16);
  if ((a2 & 0xC000000000000001) == 0)
  {
    goto LABEL_9;
  }

LABEL_3:
  if (v2 < 0)
  {
    v5 = v2;
  }

  else
  {
    v5 = v2 & 0xFFFFFFFFFFFFFF8;
  }

  if (v4 <= sub_20DD655B4() / 8)
  {
    goto LABEL_13;
  }

  v6 = sub_20DD655B4();
  v2 = sub_20D9E3D58(v5, v6);
LABEL_10:

  return sub_20DA868B8(a1, v2);
}

uint64_t sub_20DA0B290(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v9 = MEMORY[0x277D84F90];
    sub_20DA4B008(0, v1, 0);
    v4 = a1 + 32;
    v2 = v9;
    do
    {

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C844850, &qword_20DD946F8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C8438D0, &unk_20DD93F80);
      swift_dynamicCast();
      v6 = *(v9 + 16);
      v5 = *(v9 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_20DA4B008((v5 > 1), v6 + 1, 1);
      }

      *(v9 + 16) = v6 + 1;
      *(v9 + 8 * v6 + 32) = v8;
      v4 += 8;
      --v1;
    }

    while (v1);
  }

  return v2;
}

void *sub_20DA0B3CC(unint64_t a1, uint64_t a2)
{
  if (a1 >> 62)
  {
    v4 = sub_20DD655B4();
  }

  else
  {
    v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v5 = MEMORY[0x277D84F90];
  if (!v4)
  {
    return v5;
  }

  v20 = MEMORY[0x277D84F90];
  result = sub_20DA4AFE8(0, v4 & ~(v4 >> 63), 0);
  if ((v4 & 0x8000000000000000) == 0)
  {
    v5 = v20;
    if ((a1 & 0xC000000000000001) != 0)
    {
      v7 = 0;
      do
      {
        v8 = MEMORY[0x20F326680](v7, a1);
        v10 = *(v20 + 16);
        v9 = *(v20 + 24);
        if (v10 >= v9 >> 1)
        {
          v12 = v8;
          sub_20DA4AFE8((v9 > 1), v10 + 1, 1);
          v8 = v12;
        }

        ++v7;
        *(v20 + 16) = v10 + 1;
        v11 = v20 + 16 * v10;
        *(v11 + 32) = v8;
        *(v11 + 40) = a2;
      }

      while (v4 != v7);
    }

    else
    {
      v13 = (a1 + 32);
      do
      {
        v14 = *(v20 + 16);
        v15 = *(v20 + 24);
        v16 = *v13;
        if (v14 >= v15 >> 1)
        {
          v18 = v15 > 1;
          v19 = v16;
          sub_20DA4AFE8(v18, v14 + 1, 1);
          v16 = v19;
        }

        *(v20 + 16) = v14 + 1;
        v17 = v20 + 16 * v14;
        *(v17 + 32) = v16;
        *(v17 + 40) = a2;
        ++v13;
        --v4;
      }

      while (v4);
    }

    return v5;
  }

  __break(1u);
  return result;
}

uint64_t sub_20DA0B570(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (v4)
  {
    v9 = MEMORY[0x277D84F90];
    sub_20DD65774();
    v8 = a1 + 32;
    do
    {
      v8 += 16;
      swift_unknownObjectRetain();
      __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C843D48, &qword_20DD94240);
      swift_dynamicCast();
      sub_20DD65754();
      sub_20DD65784();
      sub_20DD65794();
      sub_20DD65764();
      --v4;
    }

    while (v4);
    return v9;
  }

  return result;
}

uint64_t sub_20DA0B67C(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v12 = MEMORY[0x277D84F90];
    sub_20DA4AFE8(0, v1, 0);
    v2 = v12;
    v4 = a1 + 32;
    do
    {
      sub_20D9D7174(v4, v10);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C8438F0, &qword_20DD93F90);
      swift_dynamicCast();
      v5 = v11;
      v12 = v2;
      v7 = *(v2 + 16);
      v6 = *(v2 + 24);
      if (v7 >= v6 >> 1)
      {
        v9 = v11;
        sub_20DA4AFE8((v6 > 1), v7 + 1, 1);
        v5 = v9;
        v2 = v12;
      }

      *(v2 + 16) = v7 + 1;
      *(v2 + 16 * v7 + 32) = v5;
      v4 += 32;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_20DA0B794(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v9 = MEMORY[0x277D84F90];
    sub_20DA4B048(0, v1, 0);
    v2 = v9;
    v4 = a1 + 40;
    do
    {

      swift_dynamicCast();
      v9 = v2;
      v6 = *(v2 + 16);
      v5 = *(v2 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_20DA4B048((v5 > 1), v6 + 1, 1);
        v2 = v9;
      }

      *(v2 + 16) = v6 + 1;
      sub_20D9D77C8(&v8, (v2 + 32 * v6 + 32));
      v4 += 16;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_20DA0B894(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v14 = MEMORY[0x277D84F90];
    sub_20DA4B0AC(0, v1, 0);
    v2 = v14;
    v4 = a1 + 32;
    do
    {
      sub_20D9D7558(v4, v12, &unk_27C844030, &qword_20DD93C68);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C844030, &qword_20DD93C68);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C845270, &unk_20DD96CD0);
      swift_dynamicCast();
      v14 = v2;
      v6 = *(v2 + 16);
      v5 = *(v2 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_20DA4B0AC((v5 > 1), v6 + 1, 1);
        v2 = v14;
      }

      *(v2 + 16) = v6 + 1;
      v7 = v2 + 72 * v6;
      *(v7 + 32) = v12[3];
      v8 = v12[4];
      v9 = v12[5];
      v10 = v12[6];
      *(v7 + 96) = v13;
      *(v7 + 64) = v9;
      *(v7 + 80) = v10;
      *(v7 + 48) = v8;
      v4 += 48;
      --v1;
    }

    while (v1);
  }

  return v2;
}

Swift::OpaquePointer_optional __swiftcall HFMatterCommandActionBuilder.overridingAttributes()()
{
  v1 = sub_20DD63CD4();
  MEMORY[0x28223BE20](v1 - 8);
  v32 = &v26 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C843FF0, &qword_20DD946D8);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v26 - v4;
  v36 = sub_20DD63D64();
  v27 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v31 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [v0 commands];
  if (v7)
  {
    v9 = v7;
    sub_20DA0BEB0();
    v10 = sub_20DD64FD4();

    v34 = v10;
    if (v10 >> 62)
    {
      goto LABEL_26;
    }

    for (i = *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_20DD655B4())
    {
      v12 = 0;
      v13 = v34 & 0xC000000000000001;
      v14 = v34 & 0xFFFFFFFFFFFFFF8;
      v33 = (v27 + 56);
      v28 = (v27 + 32);
      v29 = (v27 + 48);
      v15 = MEMORY[0x277D84F90];
      v30 = v34 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if (v13)
        {
          v16 = MEMORY[0x20F326680](v12, v34);
        }

        else
        {
          if (v12 >= *(v14 + 16))
          {
            goto LABEL_25;
          }

          v16 = *(v34 + 8 * v12 + 32);
        }

        v17 = v16;
        v18 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          break;
        }

        sub_20DD65394();
        if (!v38)
        {

          sub_20D9D76EC(&v37, &qword_27C844000, &qword_20DD946E0);
LABEL_6:
          (*v33)(v5, 1, 1, v36);
          goto LABEL_7;
        }

        v35 = v12 + 1;
        sub_20D9C51D4(&v37, v39);
        __swift_project_boxed_opaque_existential_0(v39, v40);
        if (!sub_20DD63E04())
        {

          __swift_destroy_boxed_opaque_existential_0(v39);
          v18 = v35;
          goto LABEL_6;
        }

        __swift_project_boxed_opaque_existential_0(v39, v40);
        v14 = v30;
        sub_20DD63DC4();
        v19 = [v17 endpointID];
        [v19 unsignedShortValue];

        v20 = v36;
        sub_20DD63D34();

        (*v33)(v5, 0, 1, v20);
        __swift_destroy_boxed_opaque_existential_0(v39);
        v21 = (*v29)(v5, 1, v20);
        v18 = v35;
        if (v21 != 1)
        {
          v22 = *v28;
          (*v28)(v31, v5, v36);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v15 = sub_20D9E04CC(0, *(v15 + 2) + 1, 1, v15);
          }

          v24 = *(v15 + 2);
          v23 = *(v15 + 3);
          if (v24 >= v23 >> 1)
          {
            v15 = sub_20D9E04CC((v23 > 1), v24 + 1, 1, v15);
          }

          *(v15 + 2) = v24 + 1;
          v22(&v15[((*(v27 + 80) + 32) & ~*(v27 + 80)) + *(v27 + 72) * v24], v31, v36);
          goto LABEL_8;
        }

LABEL_7:
        sub_20D9D76EC(v5, &unk_27C843FF0, &qword_20DD946D8);
LABEL_8:
        ++v12;
        if (v18 == i)
        {
          goto LABEL_28;
        }
      }

      __break(1u);
LABEL_25:
      __break(1u);
LABEL_26:
      ;
    }

    v15 = MEMORY[0x277D84F90];
LABEL_28:
  }

  else
  {
    v15 = 0;
  }

  v25 = v15;
  result.value._rawValue = v25;
  result.is_nil = v8;
  return result;
}

unint64_t sub_20DA0BEB0()
{
  result = qword_27C843BB0;
  if (!qword_27C843BB0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27C843BB0);
  }

  return result;
}

void sub_20DA0BEFC(unint64_t a1)
{
  if (a1 >> 62)
  {
    goto LABEL_13;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_20DD655B4())
  {
    v3 = 0;
    while ((a1 & 0xC000000000000001) != 0)
    {
      v4 = MEMORY[0x20F326680](v3, a1);
      v5 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        goto LABEL_11;
      }

LABEL_7:
      v6 = v4;
      sub_20D9E1CFC(&v8, v6);
      v7 = v8;

      ++v3;
      if (v5 == i)
      {
        return;
      }
    }

    if (v3 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_12;
    }

    v4 = *(a1 + 8 * v3 + 32);
    v5 = v3 + 1;
    if (!__OFADD__(v3, 1))
    {
      goto LABEL_7;
    }

LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    ;
  }
}

Swift::Void __swiftcall HFMatterCommandActionBuilder.updateCommands(with:)(Swift::OpaquePointer with)
{
  v3 = [v1 commands];
  if (v3)
  {
    v4 = v3;
    sub_20DA0BEB0();
    v5 = sub_20DD64FD4();

    if (MEMORY[0x277D84F90] >> 62 && sub_20DD655B4())
    {
      sub_20D9EEAA4(MEMORY[0x277D84F90]);
    }

    else
    {
      v6 = MEMORY[0x277D84FA0];
    }

    v12 = v6;
    v7 = v1;
    sub_20DA0D36C(with._rawValue, v7, &v12);

    v8 = sub_20D9F91CC(v5);

    v9 = sub_20DA0B190(v12, v8);

    sub_20DA0D270(v10, v9, sub_20D9E1CFC);

    sub_20DD65224();

    v11 = sub_20DD64FB4();

    [v7 setCommands_];
  }

  else
  {
    sub_20DA0BEB0();
    v11 = sub_20DD64FB4();
    [v1 setCommands_];
  }
}

uint64_t HFMatterCommandActionBuilder.associatedMatterCommand(for:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C844008, &qword_20DD946E8);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v22 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C844010, &qword_20DD946F0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v22 - v8;
  v10 = sub_20DD63CD4();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = [a1 clusterID];
  [v14 unsignedIntValue];

  sub_20DD63CC4();
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    result = sub_20D9D76EC(v9, &unk_27C844010, &qword_20DD946F0);
LABEL_7:
    *(a2 + 32) = 0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
    return result;
  }

  (*(v11 + 32))(v13, v9, v10);
  v16 = [a1 expectedValues];
  if (!v16)
  {
    result = (*(v11 + 8))(v13, v10);
    goto LABEL_7;
  }

  v17 = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C844850, &qword_20DD946F8);
  v18 = sub_20DD64FD4();

  v19 = [a1 commandID];
  [v19 unsignedIntValue];

  sub_20DA0B290(v18);

  v20 = [a1 commandFields];
  if (v20)
  {
    v21 = v20;
    sub_20DD64DC4();
  }

  sub_20DD642A4();
  sub_20DD64364();

  sub_20D9D76EC(v6, &qword_27C844008, &qword_20DD946E8);
  return (*(v11 + 8))(v13, v10);
}

uint64_t sub_20DA0C69C(uint64_t a1, uint64_t a2)
{
  sub_20DD653A4();
  if (v5)
  {
    sub_20D9C51D4(&v4, v6);
    __swift_project_boxed_opaque_existential_0(v6, v6[3]);
    v2 = sub_20DD64474() ^ 1;
    __swift_destroy_boxed_opaque_existential_0(v6);
  }

  else
  {
    sub_20D9D76EC(&v4, &qword_27C843F30, &unk_20DD94350);
    v2 = 0;
  }

  return v2 & 1;
}

char *HFMatterCommandActionBuilder.description.getter()
{
  v1 = sub_20DD63744();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = [v0 accessory];
  if (!v5)
  {
    return 0;
  }

  v6 = v5;
  v7 = [v5 name];
  v8 = sub_20DD64EB4();
  v10 = v9;

  v11 = [v6 uniqueIdentifier];
  sub_20DD63714();

  v12 = [v0 commands];
  v13 = MEMORY[0x277D84F90];
  if (v12)
  {
    v14 = v12;
    sub_20DA0BEB0();
    v15 = sub_20DD64FD4();

    if (!(v15 >> 62))
    {
      goto LABEL_4;
    }
  }

  else
  {
    v15 = MEMORY[0x277D84F90];
    if (!(MEMORY[0x277D84F90] >> 62))
    {
LABEL_4:
      v16 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v38 = v8;
      v39 = v10;
      if (v16)
      {
        goto LABEL_5;
      }

LABEL_17:

      v19 = MEMORY[0x277D84F90];
LABEL_18:
      v41[0] = 0;
      v41[1] = 0xE000000000000000;
      sub_20DD65704();

      strcpy(v41, "<accessory: ");
      BYTE5(v41[1]) = 0;
      HIWORD(v41[1]) = -5120;
      MEMORY[0x20F325E90](v38, v39);

      MEMORY[0x20F325E90](10272, 0xE200000000000000);
      sub_20DA0D808();
      v29 = sub_20DD65934();
      MEMORY[0x20F325E90](v29);

      MEMORY[0x20F325E90](0xD000000000000014, 0x800000020DD988D0);
      v40 = v19;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C8436B0, &qword_20DD93CF0);
      sub_20DA0D860();
      v30 = sub_20DD64E44();
      v32 = v31;

      MEMORY[0x20F325E90](v30, v32);

      MEMORY[0x20F325E90](15882, 0xE200000000000000);

      v28 = v41[0];
      (*(v2 + 8))(v4, v1);
      return v28;
    }
  }

  v16 = sub_20DD655B4();
  v38 = v8;
  v39 = v10;
  if (!v16)
  {
    goto LABEL_17;
  }

LABEL_5:
  v41[0] = v13;
  result = sub_20DA4AF84(0, v16 & ~(v16 >> 63), 0);
  if ((v16 & 0x8000000000000000) == 0)
  {
    v34 = v6;
    v35 = v4;
    v36 = v2;
    v37 = v1;
    v18 = 0;
    v19 = v41[0];
    do
    {
      if ((v15 & 0xC000000000000001) != 0)
      {
        v20 = MEMORY[0x20F326680](v18, v15);
      }

      else
      {
        v20 = *(v15 + 8 * v18 + 32);
      }

      v21 = v20;
      v22 = sub_20DA0CB84();
      v24 = v23;

      v41[0] = v19;
      v26 = *(v19 + 16);
      v25 = *(v19 + 24);
      if (v26 >= v25 >> 1)
      {
        sub_20DA4AF84((v25 > 1), v26 + 1, 1);
        v19 = v41[0];
      }

      ++v18;
      *(v19 + 16) = v26 + 1;
      v27 = v19 + 16 * v26;
      *(v27 + 32) = v22;
      *(v27 + 40) = v24;
    }

    while (v16 != v18);

    v2 = v36;
    v1 = v37;
    v6 = v34;
    v4 = v35;
    goto LABEL_18;
  }

  __break(1u);
  return result;
}

uint64_t sub_20DA0CB84()
{
  v1 = v0;
  v2 = sub_20DD63CD4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C844010, &qword_20DD946F0);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v9 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v37 - v10;
  v12 = [v1 clusterID];
  [v12 unsignedIntValue];

  sub_20DD63CC4();
  v37 = v11;
  sub_20D9D7558(v11, v9, &unk_27C844010, &qword_20DD946F0);
  if ((*(v3 + 48))(v9, 1, v2) == 1)
  {
    sub_20D9D76EC(v9, &unk_27C844010, &qword_20DD946F0);
    v38 = 0x286E776F6E6B6E75;
    v39 = 0xE800000000000000;
    v13 = [v1 clusterID];
    v14 = [v13 description];
    v15 = sub_20DD64EB4();
    v17 = v16;

    MEMORY[0x20F325E90](v15, v17);

    MEMORY[0x20F325E90](41, 0xE100000000000000);
    v19 = v38;
    v18 = v39;
  }

  else
  {
    (*(v3 + 32))(v5, v9, v2);
    v38 = 0;
    v39 = 0xE000000000000000;
    sub_20DD657A4();
    v19 = v38;
    v18 = v39;
    (*(v3 + 8))(v5, v2);
  }

  v38 = 0;
  v39 = 0xE000000000000000;
  sub_20DD65704();

  v38 = 2112101;
  v39 = 0xE300000000000000;
  v20 = [v1 endpointID];
  v21 = [v20 description];
  v22 = sub_20DD64EB4();
  v24 = v23;

  MEMORY[0x20F325E90](v22, v24);

  MEMORY[0x20F325E90](0x203A63202CLL, 0xE500000000000000);
  MEMORY[0x20F325E90](v19, v18);

  MEMORY[0x20F325E90](0x209286E220, 0xA500000000000000);
  v26 = v38;
  v25 = v39;
  sub_20DD65394();
  if (v40)
  {
    __swift_project_boxed_opaque_existential_0(&v38, v40);
    v27 = sub_20DD63DD4();
    v29 = v28;
    __swift_destroy_boxed_opaque_existential_0(&v38);
  }

  else
  {
    sub_20D9D76EC(&v38, &qword_27C844000, &qword_20DD946E0);
    v38 = 0;
    v39 = 0xE000000000000000;
    sub_20DD65704();

    v38 = 0x436E776F6E6B6E75;
    v39 = 0xEF28646E616D6D6FLL;
    v30 = [v1 commandID];
    v31 = [v30 description];
    v32 = sub_20DD64EB4();
    v34 = v33;

    MEMORY[0x20F325E90](v32, v34);

    MEMORY[0x20F325E90](41, 0xE100000000000000);
    v27 = v38;
    v29 = v39;
  }

  v38 = v26;
  v39 = v25;

  MEMORY[0x20F325E90](v27, v29);

  v35 = v38;
  sub_20D9D76EC(v37, &unk_27C844010, &qword_20DD946F0);
  return v35;
}

id sub_20DA0D060(void *a1)
{
  v1 = a1;
  v2 = [v1 commands];
  sub_20DA0BEB0();
  v3 = sub_20DD64FD4();

  if (v3 >> 62)
  {
    result = sub_20DD655B4();
    if (result)
    {
      goto LABEL_3;
    }

LABEL_8:

    v7 = 0;
    goto LABEL_9;
  }

  result = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
    goto LABEL_8;
  }

LABEL_3:
  if ((v3 & 0xC000000000000001) != 0)
  {
    v5 = MEMORY[0x20F326680](0, v3);
  }

  else
  {
    if (!*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v5 = *(v3 + 32);
  }

  v6 = v5;

  v7 = [v6 accessory];

LABEL_9:

  return v7;
}

id HMMatterCommandAction.representedAccessory.getter()
{
  v1 = [v0 commands];
  sub_20DA0BEB0();
  v2 = sub_20DD64FD4();

  if (!(v2 >> 62))
  {
    result = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_3;
    }

LABEL_8:

    return 0;
  }

  result = sub_20DD655B4();
  if (!result)
  {
    goto LABEL_8;
  }

LABEL_3:
  if ((v2 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x20F326680](0, v2);
    goto LABEL_6;
  }

  if (*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v4 = *(v2 + 32);
LABEL_6:
    v5 = v4;

    v6 = [v5 accessory];

    return v6;
  }

  __break(1u);
  return result;
}

id sub_20DA0D270(unint64_t a1, id a2, void (*a3)(id *, id))
{
  v13 = a2;
  if (a1 >> 62)
  {
    goto LABEL_14;
  }

  v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v5)
  {
    do
    {
      for (i = 0; ; ++i)
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          v7 = MEMORY[0x20F326680](i, a1);
        }

        else
        {
          if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_13;
          }

          v7 = *(a1 + 8 * i + 32);
        }

        a2 = v7;
        v8 = i + 1;
        if (__OFADD__(i, 1))
        {
          break;
        }

        a3(&v12, v7);

        if (v8 == v5)
        {
          return v13;
        }
      }

      __break(1u);
LABEL_13:
      __break(1u);
LABEL_14:
      v10 = a2;
      v11 = sub_20DD655B4();
      a2 = v10;
      v5 = v11;
    }

    while (v11);
  }

  return a2;
}

void sub_20DA0D36C(unint64_t a1, void *a2, uint64_t a3)
{
  v4 = v3;
  v20 = a2;
  v21 = a3;
  v25 = a1;
  if (a1 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_20DD655B4())
  {
    v6 = 0;
    v7 = v25 & 0xC000000000000001;
    v8 = v25 & 0xFFFFFFFFFFFFFF8;
    v19 = i;
    while (1)
    {
      if (v7)
      {
        v9 = MEMORY[0x20F326680](v6, v25);
      }

      else
      {
        if (v6 >= *(v8 + 16))
        {
          goto LABEL_17;
        }

        v9 = *(v25 + 8 * v6 + 32);
      }

      v10 = v9;
      v11 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      sub_20DD653A4();
      if (v23)
      {
        sub_20D9C51D4(&v22, v24);
        v12 = [v20 commands];
        if (v12)
        {
          v13 = v12;
          sub_20DA0BEB0();
          v14 = v4;
          v15 = sub_20DD64FD4();

          MEMORY[0x28223BE20](v16);
          v18[2] = v24;
          v17 = sub_20DA0AFE4(sub_20DA0D8C4, v18, v15);
          v4 = v14;
          i = v19;
        }

        else
        {
          v17 = MEMORY[0x277D84F90];
        }

        __swift_destroy_boxed_opaque_existential_0(v24);
        sub_20DA0BEFC(v17);
      }

      else
      {
        sub_20D9D76EC(&v22, &qword_27C843F30, &unk_20DD94350);
      }

      ++v6;
      if (v11 == i)
      {
        return;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }
}

uint64_t _sSo28HFMatterCommandActionBuilderC4HomeE20actionExpectedValues3forSaySDySSs8Sendable_pGGSgSo08HMMatterB0C_tF_0(void *a1)
{
  sub_20DD65394();
  if (v6)
  {
    sub_20D9C51D4(&v5, v7);
    __swift_project_boxed_opaque_existential_0(v7, v8);
    sub_20DD63DF4();
    __swift_project_boxed_opaque_existential_0(v7, v8);
    v2 = [a1 endpointID];
    [v2 unsignedShortValue];

    v3 = sub_20DD63E24();

    __swift_destroy_boxed_opaque_existential_0(v7);
  }

  else
  {
    sub_20D9D76EC(&v5, &qword_27C844000, &qword_20DD946E0);
    return 0;
  }

  return v3;
}

uint64_t _sSo28HFMatterCommandActionBuilderC4HomeE06actionB6Fields3forSDySSypGSgSo08HMMatterB0C_tF_0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C844008, &qword_20DD946E8);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v7 - v1;
  sub_20DD65394();
  if (v8)
  {
    sub_20D9C51D4(&v7, v9);
    __swift_project_boxed_opaque_existential_0(v9, v9[3]);
    sub_20DD63DE4();
    v3 = sub_20DD642C4();
    v4 = *(v3 - 8);
    if ((*(v4 + 48))(v2, 1, v3) == 1)
    {
      sub_20D9D76EC(v2, &qword_27C844008, &qword_20DD946E8);
      v5 = 0;
    }

    else
    {
      v5 = sub_20DD642B4();
      (*(v4 + 8))(v2, v3);
    }

    __swift_destroy_boxed_opaque_existential_0(v9);
  }

  else
  {
    sub_20D9D76EC(&v7, &qword_27C844000, &qword_20DD946E0);
    return 0;
  }

  return v5;
}

unint64_t sub_20DA0D808()
{
  result = qword_27C8436C0;
  if (!qword_27C8436C0)
  {
    sub_20DD63744();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8436C0);
  }

  return result;
}

unint64_t sub_20DA0D860()
{
  result = qword_27C844020;
  if (!qword_27C844020)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27C8436B0, &qword_20DD93CF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C844020);
  }

  return result;
}

uint64_t sub_20DA0D98C(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_20DD64CD4();

  return v3;
}

uint64_t sub_20DA0DA84(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = v2;
  return sub_20DD64CE4();
}

uint64_t sub_20DA0DAFC@<X0>(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_20DD64CD4();

  *a2 = v4;
  a2[1] = v5;
  return result;
}

uint64_t sub_20DA0DB7C(uint64_t *a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  v3 = v2;
  return sub_20DD64CE4();
}

uint64_t (*sub_20DA0DBFC(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_20DD64CC4();
  return sub_20DA11CC8;
}

uint64_t sub_20DA0DCA0(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C844060, &qword_20DD94768);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - v8;
  v10 = *(v4 + 16);
  v10(&v12 - v8, a1, v3);
  v10(v7, v9, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C844058, &qword_20DD94760);
  sub_20DD64CB4();
  swift_endAccess();
  return (*(v4 + 8))(v9, v3);
}

uint64_t sub_20DA0DE40(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C844060, &qword_20DD94768);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v6 - v4, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C844058, &qword_20DD94760);
  sub_20DD64CB4();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_20DA0DF78(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C844060, &qword_20DD94768);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR___HFStatusItemUpdate__title;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C844058, &qword_20DD94760);
  sub_20DD64CA4();
  swift_endAccess();
  return sub_20DA11CCC;
}

uint64_t sub_20DA0E1A0(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_20DD64CD4();

  return v3;
}

uint64_t sub_20DA0E2A8(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = v2;
  return sub_20DD64CE4();
}

double sub_20DA0E320@<D0>(_OWORD *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_20DD64CD4();

  result = *&v4;
  *a2 = v4;
  return result;
}

uint64_t sub_20DA0E3A0(uint64_t *a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  v3 = v2;
  return sub_20DD64CE4();
}

uint64_t (*sub_20DA0E420(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_20DD64CC4();
  return sub_20DA11CC8;
}

uint64_t sub_20DA0E4C4(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C844078, &unk_20DD947D0);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - v8;
  v10 = *(v4 + 16);
  v10(&v12 - v8, a1, v3);
  v10(v7, v9, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C844070, &qword_20DD947C8);
  sub_20DD64CB4();
  swift_endAccess();
  return (*(v4 + 8))(v9, v3);
}

uint64_t sub_20DA0E664(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C844078, &unk_20DD947D0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v6 - v4, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C844070, &qword_20DD947C8);
  sub_20DD64CB4();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_20DA0E79C(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C844078, &unk_20DD947D0);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR___HFStatusItemUpdate__secondaryText;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C844070, &qword_20DD947C8);
  sub_20DD64CA4();
  swift_endAccess();
  return sub_20DA11CCC;
}

uint64_t sub_20DA0E9C8(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  swift_unknownObjectRetain();
  v3 = v2;
  v4 = sub_20DD64CE4();
  sub_20DA0EAE4(v4, v5);
  return swift_unknownObjectRelease();
}

uint64_t sub_20DA0EA60(uint64_t *a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  swift_unknownObjectRetain();
  v2;
  v3 = sub_20DD64CE4();
  return sub_20DA0EAE4(v3, v4);
}

uint64_t sub_20DA0EAE4(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_20DD64CD4();

  v3 = sub_20DA10DDC(v8);
  swift_unknownObjectRelease();
  swift_getKeyPath();
  swift_getKeyPath();
  swift_unknownObjectRetain();
  sub_20DD64CD4();

  if (v3)
  {
    if (v8)
    {
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      if (v3 == v8)
      {
        return swift_unknownObjectRelease();
      }

      goto LABEL_7;
    }
  }

  else if (!v8)
  {
    return result;
  }

  swift_unknownObjectRelease();
LABEL_7:
  swift_getKeyPath();
  swift_getKeyPath();
  swift_unknownObjectRetain();
  v5 = v2;
  v6 = sub_20DD64CE4();
  sub_20DA0EAE4(v6, v7);
  return swift_unknownObjectRelease();
}

uint64_t (*sub_20DA0EC50(void *a1, uint64_t a2))(uint64_t *a1, uint64_t a2)
{
  a1[2] = v2;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_20DD64CD4();

  *a1 = a1[1];
  return sub_20DA0ECE4;
}

uint64_t sub_20DA0ECE4(uint64_t *a1, uint64_t a2)
{
  v2 = a2;
  v4 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  a1[1] = v4;
  v5 = a1[2];
  swift_unknownObjectRetain();
  v5;
  if (v2)
  {
    swift_unknownObjectRetain();
    v6 = sub_20DD64CE4();
    sub_20DA0EAE4(v6, v7);
    swift_unknownObjectRelease();
  }

  else
  {
    v8 = sub_20DD64CE4();
    sub_20DA0EAE4(v8, v9);
  }

  return swift_unknownObjectRelease();
}

uint64_t sub_20DA0EDC8(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8440F0, &qword_20DD94840);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - v8;
  v10 = *(v4 + 16);
  v10(&v12 - v8, a1, v3);
  v10(v7, v9, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8440E8, &qword_20DD94838);
  sub_20DD64CB4();
  swift_endAccess();
  return (*(v4 + 8))(v9, v3);
}

uint64_t sub_20DA0EF68(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8440F0, &qword_20DD94840);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v6 - v4, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8440E8, &qword_20DD94838);
  sub_20DD64CB4();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_20DA0F0A0(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8440F0, &qword_20DD94840);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR___HFStatusItemUpdate__iconDescriptor;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8440E8, &qword_20DD94838);
  sub_20DD64CA4();
  swift_endAccess();
  return sub_20DA11CCC;
}

uint64_t (*sub_20DA0F288(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_20DD64CC4();
  return sub_20DA0F32C;
}

uint64_t sub_20DA0F330(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C844108, &qword_20DD948A8);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - v8;
  v10 = *(v4 + 16);
  v10(&v12 - v8, a1, v3);
  v10(v7, v9, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C844100, &qword_20DD948A0);
  sub_20DD64CB4();
  swift_endAccess();
  return (*(v4 + 8))(v9, v3);
}

uint64_t sub_20DA0F4D0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C844108, &qword_20DD948A8);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v6 - v4, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C844100, &qword_20DD948A0);
  sub_20DD64CB4();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_20DA0F608(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C844108, &qword_20DD948A8);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR___HFStatusItemUpdate__currentValue;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C844100, &qword_20DD948A0);
  sub_20DD64CA4();
  swift_endAccess();
  return sub_20DA0F778;
}

id sub_20DA0F790(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_getKeyPath();
  swift_getKeyPath();
  v5 = a1;
  sub_20DD64CD4();

  return v7;
}

uint64_t sub_20DA0F830(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_20DD64CD4();

  return v3;
}

uint64_t sub_20DA0F8B0(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  swift_getKeyPath();
  swift_getKeyPath();
  v7 = a3;
  v8 = a1;
  return sub_20DD64CE4();
}

uint64_t sub_20DA0F934(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getKeyPath();
  swift_getKeyPath();
  v4 = v3;
  return sub_20DD64CE4();
}

uint64_t sub_20DA0F9B0@<X0>(void *a4@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_20DD64CD4();

  *a4 = v6;
  return result;
}

uint64_t sub_20DA0FA40(void **a1, void **a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = *a1;
  v7 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v8 = v6;
  v9 = v7;
  return sub_20DD64CE4();
}

uint64_t (*sub_20DA0FAB0(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_20DD64CC4();
  return sub_20DA11CC8;
}

void sub_20DA0FB54(void *a1)
{
  v1 = *a1;
  (*(*a1 + 48))(*a1, 0);

  free(v1);
}

uint64_t sub_20DA0FBBC(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t *a5, uint64_t *a6)
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  sub_20DD64CA4();
  return swift_endAccess();
}

uint64_t sub_20DA0FC38(char *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C844108, &qword_20DD948A8);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - v8;
  v10 = *(v4 + 16);
  v10(&v12 - v8, a1, v3);
  v10(v7, v9, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C844100, &qword_20DD948A0);
  sub_20DD64CB4();
  swift_endAccess();
  return (*(v4 + 8))(v9, v3);
}

uint64_t sub_20DA0FDD8(void *a1, uint64_t *a2, uint64_t *a3)
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  sub_20DD64CA4();
  return swift_endAccess();
}

uint64_t sub_20DA0FE50(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C844108, &qword_20DD948A8);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v6 - v4, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C844100, &qword_20DD948A0);
  sub_20DD64CB4();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_20DA0FF88(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C844108, &qword_20DD948A8);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR___HFStatusItemUpdate__possibleValues;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C844100, &qword_20DD948A0);
  sub_20DD64CA4();
  swift_endAccess();
  return sub_20DA11CCC;
}

void sub_20DA100F8(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*(*a1 + 88) + 16);
  v4(*(*a1 + 104), v3[14], v3[10]);
  v5 = v3[13];
  v11 = v3[14];
  v7 = v3[11];
  v6 = v3[12];
  v8 = v3[10];
  if (a2)
  {
    v4(v3[12], v5, v3[10]);
    swift_beginAccess();
    sub_20DD64CB4();
    swift_endAccess();
    v9 = *(v7 + 8);
    v9(v5, v8);
    v10 = v11;
    v9(v11, v8);
  }

  else
  {
    swift_beginAccess();
    sub_20DD64CB4();
    swift_endAccess();
    v10 = v11;
    (*(v7 + 8))(v11, v8);
  }

  free(v10);
  free(v5);
  free(v6);

  free(v3);
}

id StatusItemUpdate.__allocating_init(title:secondaryText:iconDescriptor:)(__CFString *a1, uint64_t a2, __CFString *a3, uint64_t a4, uint64_t a5)
{
  v11 = objc_allocWithZone(v5);
  v12 = sub_20DA10F78(a1, a2, a3, a4, a5);
  swift_unknownObjectRelease();
  return v12;
}

id StatusItemUpdate.init(title:secondaryText:iconDescriptor:)(__CFString *a1, uint64_t a2, __CFString *a3, uint64_t a4, uint64_t a5)
{
  v5 = sub_20DA10F78(a1, a2, a3, a4, a5);
  swift_unknownObjectRelease();
  return v5;
}

id StatusItemUpdate.init(title:)(uint64_t a1, uint64_t a2)
{
  v23 = a1;
  v24 = a2;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C844100, &qword_20DD948A0);
  v3 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v5 = &v22 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8440E8, &qword_20DD94838);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v22 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C844070, &qword_20DD947C8);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v22 - v12;
  v14 = OBJC_IVAR___HFStatusItemUpdate__secondaryText;
  v28 = 0;
  v29 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C844118, qword_20DD96F20);
  sub_20DD64C94();
  (*(v11 + 32))(&v2[v14], v13, v10);
  v15 = OBJC_IVAR___HFStatusItemUpdate__iconDescriptor;
  v28 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C844120, &qword_20DD94910);
  sub_20DD64C94();
  (*(v7 + 32))(&v2[v15], v9, v6);
  v16 = OBJC_IVAR___HFStatusItemUpdate__currentValue;
  v28 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C844128, &qword_20DD94918);
  sub_20DD64C94();
  v17 = *(v3 + 32);
  v18 = v22;
  v17(&v2[v16], v5, v22);
  v19 = OBJC_IVAR___HFStatusItemUpdate__possibleValues;
  v28 = 0;
  sub_20DD64C94();
  v17(&v2[v19], v5, v18);
  swift_beginAccess();
  v26 = v23;
  v27 = v24;
  sub_20DD64C94();
  swift_endAccess();
  v20 = type metadata accessor for StatusItemUpdate(0);
  v25.receiver = v2;
  v25.super_class = v20;
  return objc_msgSendSuper2(&v25, sel_init);
}

uint64_t sub_20DA107B8()
{
  v11 = 0;
  v12 = 0xE000000000000000;
  sub_20DD65704();
  v10.receiver = v0;
  v10.super_class = type metadata accessor for StatusItemUpdate(0);
  v1 = objc_msgSendSuper2(&v10, sel_description);
  v2 = sub_20DD64EB4();
  v4 = v3;

  MEMORY[0x20F325E90](v2, v4);

  MEMORY[0x20F325E90](32, 0xE100000000000000);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_20DD64CD4();

  MEMORY[0x20F325E90]();

  MEMORY[0x20F325E90](0x61646E6F63657320, 0xEB000000003A7972);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_20DD64CD4();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C844118, qword_20DD96F20);
  v5 = sub_20DD64ED4();
  MEMORY[0x20F325E90](v5);

  MEMORY[0x20F325E90](0x3A6E6F636920, 0xE600000000000000);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_20DD64CD4();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C844120, &qword_20DD94910);
  v6 = sub_20DD64ED4();
  MEMORY[0x20F325E90](v6);

  MEMORY[0x20F325E90](0x746E657272756320, 0xEE003A65756C6156);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_20DD64CD4();

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C844128, &qword_20DD94918);
  v7 = sub_20DD64ED4();
  MEMORY[0x20F325E90](v7);

  MEMORY[0x20F325E90](0xD000000000000010, 0x800000020DD98950);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_20DD64CD4();

  v8 = sub_20DD64ED4();
  MEMORY[0x20F325E90](v8);

  return v11;
}

id StatusItemUpdate.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id StatusItemUpdate.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for StatusItemUpdate(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_20DA10D9C@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for StatusItemUpdate(0);
  result = sub_20DD64C84();
  *a2 = result;
  return result;
}

__CFString *sub_20DA10DDC(uint64_t a1)
{
  v1 = a1;
  if (!a1)
  {
    goto LABEL_11;
  }

  objc_opt_self();
  v2 = swift_dynamicCastObjCClass();
  if (!v2)
  {
    goto LABEL_11;
  }

  v3 = v2;
  swift_unknownObjectRetain();
  v4 = [v3 packageIdentifier];
  if (!v4)
  {
    sub_20DD64EB4();
    v4 = sub_20DD64E74();
  }

  v5 = [v3 state];
  v6 = sub_20DD64EB4();
  v8 = v7;
  if (v6 == sub_20DD64EB4() && v8 == v9)
  {
  }

  else
  {
    v11 = sub_20DD65974();

    if ((v11 & 1) == 0)
    {

      swift_unknownObjectRelease();
LABEL_11:
      swift_unknownObjectRetain();
      return v1;
    }
  }

  result = HFCAPackageAlternateStateForHFCAPackageState(v5);
  if (result)
  {
    v13 = result;

    v14 = [objc_allocWithZone(HFCAPackageIconDescriptor) initWithPackageIdentifier:v4 state:v13];
    swift_unknownObjectRelease();

    return v14;
  }

  __break(1u);
  return result;
}

id sub_20DA10F78(__CFString *a1, uint64_t a2, __CFString *a3, uint64_t a4, uint64_t a5)
{
  v35 = a4;
  v36 = a5;
  v33 = a2;
  v34 = a3;
  v32 = a1;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C844100, &qword_20DD948A0);
  v6 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v8 = &v26 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8440E8, &qword_20DD94838);
  v10 = *(v9 - 8);
  v27 = v9;
  v28 = v10;
  MEMORY[0x28223BE20](v9);
  v12 = &v26 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C844070, &qword_20DD947C8);
  v26 = v13;
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v26 - v15;
  v17 = OBJC_IVAR___HFStatusItemUpdate__secondaryText;
  v40 = 0;
  v41 = 0;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C844118, qword_20DD96F20);
  sub_20DD64C94();
  (*(v14 + 32))(&v5[v17], v16, v13);
  v18 = OBJC_IVAR___HFStatusItemUpdate__iconDescriptor;
  v40 = 0;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C844120, &qword_20DD94910);
  sub_20DD64C94();
  (*(v10 + 32))(&v5[v18], v12, v9);
  v19 = OBJC_IVAR___HFStatusItemUpdate__currentValue;
  v40 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C844128, &qword_20DD94918);
  sub_20DD64C94();
  v20 = *(v6 + 32);
  v21 = v31;
  v20(&v5[v19], v8, v31);
  v22 = OBJC_IVAR___HFStatusItemUpdate__possibleValues;
  v40 = 0;
  sub_20DD64C94();
  v20(&v5[v22], v8, v21);
  swift_beginAccess();
  v38 = v32;
  v39 = v33;
  sub_20DD64C94();
  swift_endAccess();
  swift_beginAccess();
  (*(v14 + 8))(&v5[v17], v26);
  v38 = v34;
  v39 = v35;
  sub_20DD64C94();
  swift_endAccess();
  v23 = sub_20DA10DDC(v36);
  swift_beginAccess();
  (*(v28 + 8))(&v5[v18], v27);
  v38 = v23;
  sub_20DD64C94();
  swift_endAccess();
  v24 = type metadata accessor for StatusItemUpdate(0);
  v37.receiver = v5;
  v37.super_class = v24;
  return [(__CFString *)&v37 init];
}

uint64_t type metadata accessor for StatusItemUpdate(uint64_t a1)
{
  result = qword_27C844138;
  if (!qword_27C844138)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_20DA113DC(uint64_t a1)
{
  sub_20DA11C24();
  if (v1 <= 0x3F)
  {
    sub_20DA11C74(319, &qword_27C844150, &qword_27C844118, qword_20DD96F20);
    if (v2 <= 0x3F)
    {
      sub_20DA11C74(319, &qword_27C844158, &qword_27C844120, &qword_20DD94910);
      if (v3 <= 0x3F)
      {
        sub_20DA11C74(319, &unk_27C844160, &unk_27C844128, &qword_20DD94918);
        if (v4 <= 0x3F)
        {
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

void sub_20DA11C24()
{
  if (!qword_27C844148)
  {
    v0 = sub_20DD64CF4();
    if (!v1)
    {
      atomic_store(v0, &qword_27C844148);
    }
  }
}

void sub_20DA11C74(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v5 = sub_20DD64CF4();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void HFItem.homeElementType.getter(uint64_t a1@<X8>)
{
  v3 = sub_20DD63984();
  v22 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    v6 = *MEMORY[0x277D152E8];
    v7 = v22[13];

    v7(a1, v6, v3);
    return;
  }

  objc_opt_self();
  v8 = swift_dynamicCastObjCClass();
  if (!v8)
  {
    objc_opt_self();
    v12 = swift_dynamicCastObjCClass();
    if (v12)
    {
      v13 = v12;
      v21 = v1;
      v14 = [v13 mediaAccessoryItemType];
      if (v14 > 4)
      {
        if (v14 <= 6)
        {
          goto LABEL_21;
        }

        if (v14 == 7)
        {
          v15 = MEMORY[0x277D152C0];
          goto LABEL_26;
        }

        if (v14 == 8)
        {
LABEL_21:
          v15 = MEMORY[0x277D15300];
          goto LABEL_26;
        }
      }

      else
      {
        if (v14 > 1)
        {
          v15 = MEMORY[0x277D152F8];
LABEL_26:
          (v22[13])(a1, *v15, v3);
          v11 = v21;
          goto LABEL_27;
        }

        if (v14 == 1)
        {
          v15 = MEMORY[0x277D152F0];
          goto LABEL_26;
        }
      }

      v15 = MEMORY[0x277D152D8];
      goto LABEL_26;
    }

    v23 = &unk_28252AFF0;
    v16 = swift_dynamicCastObjCProtocolConditional();
    if (!v16)
    {
      (v22[13])(a1, *MEMORY[0x277D152D8], v3);
      return;
    }

    [v16 accessoryRepresentableObject];
    swift_getObjectType();
    v17 = HFAccessoryRepresentable.accessoryType.getter();
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      HFServiceAccessoryType.specializedHomeElementType.getter(v5);
    }

    else
    {
      objc_opt_self();
      v18 = swift_dynamicCastObjCClass();
      if (v18)
      {
        v19 = [v18 categoryType];
        sub_20DD64EB4();

        sub_20DD63974();
      }

      else
      {
        objc_opt_self();
        if (!swift_dynamicCastObjCClass())
        {
          swift_unknownObjectRelease();

          (v22[13])(v5, *MEMORY[0x277D152D8], v3);
          goto LABEL_33;
        }

        HFMatterDeviceAccessoryType.specializedHomeElementType.getter(v5);
      }
    }

    swift_unknownObjectRelease();

LABEL_33:
    (v22[4])(a1, v5, v3);
    return;
  }

  v9 = v8;
  v10 = v1;
  v22 = [v9 sourceItem];
  HFItem.homeElementType.getter(a1);

  v11 = v22;
LABEL_27:
}

uint64_t HFMediaAccessoryItem.specializedHomeElementType.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = [v1 mediaAccessoryItemType];
  v4 = sub_20DD63984();
  v5 = *(*(v4 - 8) + 104);
  if (v3 > 9)
  {
    v6 = MEMORY[0x277D152D8];
  }

  else
  {
    v6 = qword_277DF2488[v3];
  }

  v7 = *v6;

  return v5(a1, v7, v4);
}

uint64_t HFAccessoryType.homeElementType.getter@<X0>(uint64_t a1@<X8>)
{
  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    return HFServiceAccessoryType.specializedHomeElementType.getter(a1);
  }

  objc_opt_self();
  v3 = swift_dynamicCastObjCClass();
  if (v3)
  {
    v4 = [v3 categoryType];
    sub_20DD64EB4();

    return sub_20DD63974();
  }

  else
  {
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      return HFMatterDeviceAccessoryType.specializedHomeElementType.getter(a1);
    }

    else
    {
      v5 = *MEMORY[0x277D152D8];
      v6 = sub_20DD63984();
      v7 = *(*(v6 - 8) + 104);

      return v7(a1, v5, v6);
    }
  }
}

uint64_t HFServiceAccessoryType.specializedHomeElementType.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C844170, &qword_20DD94988);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v18 - v5;
  v7 = sub_20DD63D14();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v18 - v12;
  v14 = [v2 serviceType];
  sub_20DD64EB4();

  sub_20DD63D04();
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_20D9D76EC(v6, &qword_27C844170, &qword_20DD94988);
    v15 = *MEMORY[0x277D152D8];
    v16 = sub_20DD63984();
    return (*(*(v16 - 8) + 104))(a1, v15, v16);
  }

  else
  {
    (*(v8 + 32))(v13, v6, v7);
    (*(v8 + 16))(v11, v13, v7);
    sub_20DD63964();
    return (*(v8 + 8))(v13, v7);
  }
}

uint64_t HFCategoryAccessoryType.specializedHomeElementType.getter()
{
  v1 = [v0 categoryType];
  sub_20DD64EB4();

  return sub_20DD63974();
}

uint64_t HFMatterDeviceAccessoryType.specializedHomeElementType.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C843A38, &unk_20DD940C0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v18 - v5;
  v7 = sub_20DD641A4();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v18 - v12;
  v14 = [v2 deviceType];
  [v14 unsignedIntValue];

  sub_20DD64184();
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_20D9D76EC(v6, &unk_27C843A38, &unk_20DD940C0);
    v15 = *MEMORY[0x277D152D8];
    v16 = sub_20DD63984();
    return (*(*(v16 - 8) + 104))(a1, v15, v16);
  }

  else
  {
    (*(v8 + 32))(v13, v6, v7);
    (*(v8 + 16))(v11, v13, v7);
    sub_20DD63954();
    return (*(v8 + 8))(v13, v7);
  }
}

id static HFMatterAccessoryLikeItemProvider.itemProvider(in:in:)(void *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C843A70, &qword_20DD94260);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v13 - v5;
  sub_20D9C90A8(a2, &v13 - v5);
  v7 = type metadata accessor for MatterAccessoryLikeItemProvider(0);
  v8 = objc_allocWithZone(v7);
  *&v8[qword_27C84C680] = a1;
  v9 = &v8[qword_27C844CB8];
  *v9 = 0;
  *(v9 + 1) = 0;
  sub_20D9C90A8(v6, &v8[qword_27C84C688]);
  v13.receiver = v8;
  v13.super_class = v7;
  v10 = a1;
  v11 = objc_msgSendSuper2(&v13, sel_init);
  sub_20D9C9040(v6);
  return v11;
}

HFMatterAccessoryLikeItemProvider __swiftcall HFMatterAccessoryLikeItemProvider.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

unint64_t type metadata accessor for HFMatterAccessoryLikeItemProvider()
{
  result = qword_27C844178;
  if (!qword_27C844178)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27C844178);
  }

  return result;
}

uint64_t sub_20DA12BF8(uint64_t result)
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
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= v3[3] >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  v3 = sub_20D9E04CC(isUniquelyReferenced_nonNull_native, v12, 1, v3);
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
  v8 = (v3[3] >> 1) - v3[2];
  result = sub_20DD63D64();
  if (v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = v3[2];
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    v3[2] = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_20DA12D24(unint64_t a1)
{
  if (a1 >> 62)
  {
    v3 = sub_20DD655B4();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!(*v1 >> 62))
  {
    v4 = *((*v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v5 = __OFADD__(v4, v3);
    result = v4 + v3;
    if (!v5)
    {
      goto LABEL_5;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v13 = sub_20DD655B4();
  v5 = __OFADD__(v13, v3);
  result = v13 + v3;
  if (v5)
  {
    goto LABEL_13;
  }

LABEL_5:
  sub_20DA169E4(result, 1);
  v7 = *v1;
  v8 = *v1 & 0xFFFFFFFFFFFFFF8;
  sub_20DA16C24(v8 + 8 * *(v8 + 0x10) + 32, (*(v8 + 0x18) >> 1) - *(v8 + 0x10), a1);
  v10 = v9;

  if (v10 < v3)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v10 < 1)
  {
LABEL_9:
    *v1 = v7;
    return result;
  }

  v11 = *(v8 + 16);
  v5 = __OFADD__(v11, v10);
  v12 = v11 + v10;
  if (!v5)
  {
    *(v8 + 16) = v12;
    goto LABEL_9;
  }

LABEL_15:
  __break(1u);
  return result;
}

void *sub_20DA12E14(void *result)
{
  v2 = result[2];
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
  if (result && v5 <= v3[3] >> 1)
  {
    if (v6[2])
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_20D9E0398(result, v10, 1, v3);
  v3 = result;
  if (!v6[2])
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((v3[3] >> 1) - v3[2] < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C8438F0, &qword_20DD93F90);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = v3[2];
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    v3[2] = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_20DA12F18(unint64_t a1)
{
  if (a1 >> 62)
  {
    v3 = sub_20DD655B4();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!(*v1 >> 62))
  {
    v4 = *((*v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v5 = __OFADD__(v4, v3);
    result = v4 + v3;
    if (!v5)
    {
      goto LABEL_5;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v13 = sub_20DD655B4();
  v5 = __OFADD__(v13, v3);
  result = v13 + v3;
  if (v5)
  {
    goto LABEL_13;
  }

LABEL_5:
  sub_20DA169E4(result, 1);
  v7 = *v1;
  v8 = *v1 & 0xFFFFFFFFFFFFFF8;
  sub_20DA16F60(v8 + 8 * *(v8 + 0x10) + 32, (*(v8 + 0x18) >> 1) - *(v8 + 0x10), a1);
  v10 = v9;

  if (v10 < v3)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v10 < 1)
  {
LABEL_9:
    *v1 = v7;
    return result;
  }

  v11 = *(v8 + 16);
  v5 = __OFADD__(v11, v10);
  v12 = v11 + v10;
  if (!v5)
  {
    *(v8 + 16) = v12;
    goto LABEL_9;
  }

LABEL_15:
  __break(1u);
  return result;
}

void *sub_20DA13008(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v54 = a2;
  v9 = type metadata accessor for HFEvent(0);
  v55 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C844198, &qword_20DD949D0);
  v13 = MEMORY[0x28223BE20](v12 - 8);
  v15 = &v45 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v13);
  v52 = &v45 - v17;
  MEMORY[0x28223BE20](v16);
  v18 = &v45;
  v20 = &v45 - v19;
  v21 = a4 >> 1;
  v22 = __OFSUB__(a4 >> 1, a3);
  v23 = (a4 >> 1) - a3;
  if (v22)
  {
    __break(1u);
    goto LABEL_21;
  }

  v53 = v11;
  v56 = a1;
  v5 = *v4;
  v24 = *(*v4 + 16);
  v25 = v24 + v23;
  if (__OFADD__(v24, v23))
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  result = swift_isUniquelyReferenced_nonNull_native();
  if (!result || (v18 = (v5[3] >> 1), v18 < v25))
  {
    if (v24 <= v25)
    {
      v27 = v24 + v23;
    }

    else
    {
      v27 = v24;
    }

    result = sub_20D9E0628(result, v27, 1, v5);
    v5 = result;
    v18 = (result[3] >> 1);
  }

  v28 = v18 - v5[2];
  if (v21 == a3)
  {
    if (v23 <= 0)
    {
      v23 = 0;
      v18 = a3;
      goto LABEL_17;
    }

LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (v28 < v23)
  {
    __break(1u);
  }

  else
  {
    result = swift_arrayInitWithCopy();
    if (v23 <= 0)
    {
LABEL_16:
      v18 = v21;
LABEL_17:
      if (v23 != v28)
      {
        result = swift_unknownObjectRelease();
LABEL_19:
        *v4 = v5;
        return result;
      }

LABEL_23:
      v51 = v18;
      v31 = v5[2];
      v32 = v55;
      v46 = *(v55 + 56);
      v47 = v55 + 56;
      v46(v20, 1, 1, v9);
      v33 = v52;
      sub_20DA1A88C(v20, v52);
      v49 = *(v32 + 48);
      v50 = v32 + 48;
      for (i = v49(v33, 1, v9); i != 1; i = v49(v33, 1, v9))
      {
        sub_20D9D76EC(v33, &qword_27C844198, &qword_20DD949D0);
        v36 = v5[3];
        v35 = v36 >> 1;
        if ((v36 >> 1) < v31 + 1)
        {
          v5 = sub_20D9E0628((v36 > 1), v31 + 1, 1, v5);
          v35 = v5[3] >> 1;
        }

        v37 = *(v55 + 80);
        sub_20DA1A88C(v20, v15);
        if (v49(v15, 1, v9) == 1)
        {
LABEL_24:
          sub_20D9D76EC(v15, &qword_27C844198, &qword_20DD949D0);
          v35 = v31;
        }

        else
        {
          v48 = v5 + ((v37 + 32) & ~v37);
          if (v31 > v35)
          {
            v35 = v31;
          }

          v38 = v53;
          while (1)
          {
            sub_20DA1A8FC(v15, v38);
            if (v35 == v31)
            {
              break;
            }

            sub_20D9D76EC(v20, &qword_27C844198, &qword_20DD949D0);
            v41 = v38;
            v42 = *(v55 + 72);
            result = sub_20DA1A8FC(v41, &v48[v42 * v31]);
            if (v51 == v21)
            {
              v39 = 1;
              v51 = v21;
            }

            else
            {
              if (v51 < a3 || v51 >= v21)
              {
                goto LABEL_44;
              }

              v43 = v54 + v42 * v51;
              v44 = v51;
              sub_20DA1A828(v43, v20);
              v39 = 0;
              v51 = v44 + 1;
            }

            v46(v20, v39, 1, v9);
            sub_20DA1A88C(v20, v15);
            v40 = v49(v15, 1, v9);
            ++v31;
            v38 = v53;
            if (v40 == 1)
            {
              goto LABEL_24;
            }
          }

          sub_20DA1A960(v38);
          v31 = v35;
        }

        v5[2] = v35;
        v33 = v52;
        sub_20DA1A88C(v20, v52);
      }

      sub_20D9D76EC(v20, &qword_27C844198, &qword_20DD949D0);
      swift_unknownObjectRelease();
      result = sub_20D9D76EC(v33, &qword_27C844198, &qword_20DD949D0);
      goto LABEL_19;
    }

    v29 = v5[2];
    v22 = __OFADD__(v29, v23);
    v30 = v29 + v23;
    if (!v22)
    {
      v5[2] = v30;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_44:
  __break(1u);
  return result;
}

uint64_t sub_20DA13524(uint64_t a1, uint64_t (*a2)(uint64_t *, uint64_t, uint64_t, uint64_t), unint64_t *a3, void *a4)
{
  v11 = v4;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v13 = sub_20DD655B4();
  }

  else
  {
    v13 = *(a1 + 16);
  }

  if (!(*v4 >> 62))
  {
    v14 = *((*v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v15 = __OFADD__(v14, v13);
    result = v14 + v13;
    if (!v15)
    {
      goto LABEL_6;
    }

LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v21 = sub_20DD655B4();
  v15 = __OFADD__(v21, v13);
  result = v21 + v13;
  if (v15)
  {
    goto LABEL_14;
  }

LABEL_6:
  sub_20DA169E4(result, 1);
  v5 = *v4;
  v6 = *v4 & 0xFFFFFFFFFFFFFF8;
  v17 = *(v6 + 0x10);
  v18 = (*(v6 + 0x18) >> 1) - v17;
  result = a2(&v42, v6 + 8 * v17 + 32, v18, a1);
  if (result < v13)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (result >= 1)
  {
    v19 = *(v6 + 16);
    v15 = __OFADD__(v19, result);
    v20 = v19 + result;
    if (v15)
    {
      __break(1u);
      goto LABEL_20;
    }

    *(v6 + 16) = v20;
  }

  if (result != v18)
  {
LABEL_11:
    result = sub_20D9C51CC(v42);
    *v11 = v5;
    return result;
  }

LABEL_16:
  a2 = *(v6 + 16);
  v13 = v43;
  v6 = v45;
  v37 = v44;
  v38 = v42;
  v7 = v46;
  if (v42 < 0)
  {
LABEL_20:
    if (!sub_20DD655F4())
    {
      goto LABEL_11;
    }

    sub_20D9D7510(0, a3, a4);
    result = swift_dynamicCast();
    v23 = v41;
    goto LABEL_31;
  }

  if (!v46)
  {
    v24 = (v44 + 64) >> 6;
    if (v24 <= v45 + 1)
    {
      v25 = v45 + 1;
    }

    else
    {
      v25 = (v44 + 64) >> 6;
    }

    v26 = v25 - 1;
    while (1)
    {
      v22 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        goto LABEL_59;
      }

      if (v22 >= v24)
      {
        v23 = 0;
        v7 = 0;
        goto LABEL_30;
      }

      v7 = *(v43 + 8 * v22);
      ++v6;
      if (v7)
      {
        goto LABEL_29;
      }
    }
  }

  v22 = v45;
LABEL_29:
  v27 = __clz(__rbit64(v7));
  v7 &= v7 - 1;
  v23 = *(*(v42 + 48) + ((v22 << 9) | (8 * v27)));
  result = v23;
  v26 = v22;
LABEL_30:
  v45 = v26;
  v46 = v7;
  v6 = v26;
LABEL_31:
  v28 = v38;
  v29 = a2;
  if (!v23)
  {
    goto LABEL_11;
  }

  v30 = (v37 + 64) >> 6;
LABEL_33:
  if (v29 + 1 > *((v5 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    result = sub_20DD65014();
    v28 = v38;
  }

  v5 = *v11;
  v31 = *((*v11 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1;
  v36 = *v11 & 0xFFFFFFFFFFFFFF8;
  if (v29 > v31)
  {
    v31 = v29;
  }

  v39 = v31;
  while (1)
  {
    while (1)
    {
      if (v29 == v39)
      {
        v29 = v39;
        *(v36 + 16) = v39;
        goto LABEL_33;
      }

      *(v36 + 32 + 8 * v29++) = v23;
      if ((v28 & 0x8000000000000000) == 0)
      {
        break;
      }

      if (sub_20DD655F4())
      {
        sub_20D9D7510(0, a3, a4);
        result = swift_dynamicCast();
        v28 = v38;
        v23 = v41;
        if (v41)
        {
          continue;
        }
      }

      goto LABEL_56;
    }

    v40 = v29;
    if (!v7)
    {
      break;
    }

    v32 = v6;
LABEL_54:
    v35 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v23 = *(*(v28 + 48) + ((v32 << 9) | (8 * v35)));
    result = v23;
    v28 = v38;
    v34 = v32;
LABEL_39:
    v42 = v28;
    v43 = v13;
    v44 = v37;
    v45 = v34;
    v6 = v34;
    v46 = v7;
    v29 = v40;
    if (!v23)
    {
LABEL_56:
      *(v36 + 16) = v29;
      goto LABEL_11;
    }
  }

  if (v30 <= v6 + 1)
  {
    v33 = v6 + 1;
  }

  else
  {
    v33 = (v37 + 64) >> 6;
  }

  v34 = v33 - 1;
  while (1)
  {
    v32 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      break;
    }

    if (v32 >= v30)
    {
      v23 = 0;
      v7 = 0;
      goto LABEL_39;
    }

    v7 = *(v13 + 8 * v32);
    ++v6;
    if (v7)
    {
      goto LABEL_54;
    }
  }

  __break(1u);
LABEL_59:
  __break(1u);
  return result;
}

unint64_t sub_20DA138D8(unint64_t isUniquelyReferenced_nonNull_bridgeObject)
{
  if (isUniquelyReferenced_nonNull_bridgeObject >> 62)
  {
    goto LABEL_58;
  }

  for (i = *((isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8) + 0x10); i; isUniquelyReferenced_nonNull_bridgeObject = v33)
  {
    v2 = 0;
    v38 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
    v39 = isUniquelyReferenced_nonNull_bridgeObject & 0xC000000000000001;
    v35 = isUniquelyReferenced_nonNull_bridgeObject;
    v37 = isUniquelyReferenced_nonNull_bridgeObject + 32;
    v3 = MEMORY[0x277D84F90];
    v36 = i;
    while (1)
    {
      if (v39)
      {
        isUniquelyReferenced_nonNull_bridgeObject = MEMORY[0x20F326680](v2, v35);
      }

      else
      {
        if (v2 >= *(v38 + 16))
        {
          goto LABEL_53;
        }

        isUniquelyReferenced_nonNull_bridgeObject = *(v37 + 8 * v2);
      }

      v4 = isUniquelyReferenced_nonNull_bridgeObject;
      v5 = __OFADD__(v2++, 1);
      if (v5)
      {
        break;
      }

      if ([isUniquelyReferenced_nonNull_bridgeObject hf_isMatterOnlyAccessory])
      {
        if ([v4 homeKitObject])
        {
          objc_opt_self();
          v6 = swift_dynamicCastObjCClass();
          swift_unknownObjectRelease();
          if (v6)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C843A60, &qword_20DD94360);
            v7 = swift_allocObject();
            *(v7 + 16) = xmmword_20DD940A0;
            *(v7 + 32) = v4;
            v42 = v7;
            goto LABEL_23;
          }
        }
      }

      if (![v4 homeKitObject])
      {
        goto LABEL_21;
      }

      objc_opt_self();
      v8 = swift_dynamicCastObjCClass();
      if (v8)
      {
        v9 = v8;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C8441D0, &unk_20DD95880);
        v10 = swift_allocObject();
        v11 = v10;
        *(v10 + 16) = xmmword_20DD93A70;
        *(v10 + 32) = v9;
        v12 = &protocol witness table for HMServiceGroup;
      }

      else
      {
        objc_opt_self();
        v13 = swift_dynamicCastObjCClass();
        if (!v13)
        {
          swift_unknownObjectRelease();
LABEL_21:
          v11 = MEMORY[0x277D84F90];
          goto LABEL_22;
        }

        v14 = v13;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C8441D0, &unk_20DD95880);
        v10 = swift_allocObject();
        v11 = v10;
        *(v10 + 16) = xmmword_20DD93A70;
        *(v10 + 32) = v14;
        v12 = &protocol witness table for HMMediaSystem;
      }

      *(v10 + 40) = v12;
LABEL_22:
      v15 = sub_20DA0B548(v11);

      v42 = v15;
      v16 = HFAccessoryLikeObject.elements.getter();
      v17 = sub_20DA0B55C(v16);

      sub_20DA12D24(v17);

      v7 = v42;
LABEL_23:
      v18 = v7 >> 62;
      if (v7 >> 62)
      {
        v19 = sub_20DD655B4();
      }

      else
      {
        v19 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v20 = v3 >> 62;
      if (v3 >> 62)
      {
        isUniquelyReferenced_nonNull_bridgeObject = sub_20DD655B4();
        v21 = isUniquelyReferenced_nonNull_bridgeObject + v19;
        if (__OFADD__(isUniquelyReferenced_nonNull_bridgeObject, v19))
        {
LABEL_51:
          __break(1u);
          break;
        }
      }

      else
      {
        isUniquelyReferenced_nonNull_bridgeObject = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v21 = isUniquelyReferenced_nonNull_bridgeObject + v19;
        if (__OFADD__(isUniquelyReferenced_nonNull_bridgeObject, v19))
        {
          goto LABEL_51;
        }
      }

      isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
      if (isUniquelyReferenced_nonNull_bridgeObject)
      {
        if (!v20)
        {
          v22 = v3 & 0xFFFFFFFFFFFFFF8;
          if (v21 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            goto LABEL_34;
          }

          goto LABEL_33;
        }

LABEL_32:
        sub_20DD655B4();
        goto LABEL_33;
      }

      if (v20)
      {
        goto LABEL_32;
      }

LABEL_33:
      isUniquelyReferenced_nonNull_bridgeObject = sub_20DD65734();
      v3 = isUniquelyReferenced_nonNull_bridgeObject;
      v22 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
LABEL_34:
      v40 = v3;
      v23 = *(v22 + 16);
      v24 = *(v22 + 24);
      if (v18)
      {
        isUniquelyReferenced_nonNull_bridgeObject = sub_20DD655B4();
        v25 = isUniquelyReferenced_nonNull_bridgeObject;
      }

      else
      {
        v25 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (v25)
      {
        if (((v24 >> 1) - v23) < v19)
        {
          goto LABEL_55;
        }

        v26 = v22 + 8 * v23 + 32;
        if (v18)
        {
          if (v25 < 1)
          {
            goto LABEL_57;
          }

          sub_20DA1A9BC(&qword_27C8441C8, &qword_27C8441C0, &qword_20DD949E0);
          for (j = 0; j != v25; ++j)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8441C0, &qword_20DD949E0);
            v28 = sub_20D9EAE84(v41, j, v7);
            v30 = *v29;
            swift_unknownObjectRetain();
            (v28)(v41, 0);
            *(v26 + 8 * j) = v30;
          }
        }

        else
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C843D48, &qword_20DD94240);
          swift_arrayInitWithCopy();
        }

        i = v36;
        v3 = v40;
        if (v19 >= 1)
        {
          v31 = *(v22 + 16);
          v5 = __OFADD__(v31, v19);
          v32 = v31 + v19;
          if (v5)
          {
            goto LABEL_56;
          }

          *(v22 + 16) = v32;
        }
      }

      else
      {

        v3 = v40;
        if (v19 > 0)
        {
          goto LABEL_54;
        }
      }

      if (v2 == i)
      {
        return v3;
      }
    }

    __break(1u);
LABEL_53:
    __break(1u);
LABEL_54:
    __break(1u);
LABEL_55:
    __break(1u);
LABEL_56:
    __break(1u);
LABEL_57:
    __break(1u);
LABEL_58:
    v33 = isUniquelyReferenced_nonNull_bridgeObject;
    i = sub_20DD655B4();
  }

  return MEMORY[0x277D84F90];
}

unint64_t sub_20DA13DE8(unint64_t isUniquelyReferenced_nonNull_bridgeObject)
{
  v2 = v1;
  if (isUniquelyReferenced_nonNull_bridgeObject >> 62)
  {
    goto LABEL_47;
  }

  for (i = *((isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8) + 0x10); i; isUniquelyReferenced_nonNull_bridgeObject = v25)
  {
    v4 = 0;
    v30 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
    v31 = isUniquelyReferenced_nonNull_bridgeObject & 0xC000000000000001;
    v5 = MEMORY[0x277D84F90];
    v27 = isUniquelyReferenced_nonNull_bridgeObject;
    v28 = i;
    v29 = isUniquelyReferenced_nonNull_bridgeObject + 32;
    while (1)
    {
      if (v31)
      {
        isUniquelyReferenced_nonNull_bridgeObject = MEMORY[0x20F326680](v4, v27);
      }

      else
      {
        if (v4 >= *(v30 + 16))
        {
          goto LABEL_42;
        }

        isUniquelyReferenced_nonNull_bridgeObject = *(v29 + 8 * v4);
      }

      v6 = isUniquelyReferenced_nonNull_bridgeObject;
      v7 = __OFADD__(v4++, 1);
      if (v7)
      {
        break;
      }

      v35 = isUniquelyReferenced_nonNull_bridgeObject;
      sub_20DA14B84(&v35, &v34);
      if (v2)
      {
        goto LABEL_40;
      }

      v8 = v34;
      v6 = (v34 >> 62);
      if (v34 >> 62)
      {
        v9 = sub_20DD655B4();
      }

      else
      {
        v9 = *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v10 = v5 >> 62;
      if (v5 >> 62)
      {
        v24 = sub_20DD655B4();
        v12 = v24 + v9;
        if (__OFADD__(v24, v9))
        {
LABEL_39:
          __break(1u);
LABEL_40:

          return v5;
        }
      }

      else
      {
        v11 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v12 = v11 + v9;
        if (__OFADD__(v11, v9))
        {
          goto LABEL_39;
        }
      }

      isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
      v32 = v9;
      if (isUniquelyReferenced_nonNull_bridgeObject)
      {
        if (!v10)
        {
          v13 = v5 & 0xFFFFFFFFFFFFFF8;
          if (v12 <= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            goto LABEL_22;
          }

          goto LABEL_21;
        }

LABEL_20:
        sub_20DD655B4();
        goto LABEL_21;
      }

      if (v10)
      {
        goto LABEL_20;
      }

LABEL_21:
      isUniquelyReferenced_nonNull_bridgeObject = sub_20DD65734();
      v5 = isUniquelyReferenced_nonNull_bridgeObject;
      v13 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
LABEL_22:
      v14 = *(v13 + 16);
      v15 = *(v13 + 24);
      if (v6)
      {
        isUniquelyReferenced_nonNull_bridgeObject = sub_20DD655B4();
        v16 = isUniquelyReferenced_nonNull_bridgeObject;
      }

      else
      {
        v16 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (v16)
      {
        if (((v15 >> 1) - v14) < v32)
        {
          goto LABEL_44;
        }

        v17 = v13 + 8 * v14 + 32;
        if (v6)
        {
          if (v16 < 1)
          {
            goto LABEL_46;
          }

          sub_20DA1A9BC(&qword_27C8441C8, &qword_27C8441C0, &qword_20DD949E0);
          for (j = 0; j != v16; ++j)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8441C0, &qword_20DD949E0);
            v19 = sub_20D9EAE84(v33, j, v8);
            v21 = *v20;
            swift_unknownObjectRetain();
            (v19)(v33, 0);
            *(v17 + 8 * j) = v21;
          }
        }

        else
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C843D48, &qword_20DD94240);
          swift_arrayInitWithCopy();
        }

        v2 = 0;
        if (v32 >= 1)
        {
          v22 = *(v13 + 16);
          v7 = __OFADD__(v22, v32);
          v23 = v22 + v32;
          if (v7)
          {
            goto LABEL_45;
          }

          *(v13 + 16) = v23;
        }
      }

      else
      {

        if (v32 > 0)
        {
          goto LABEL_43;
        }
      }

      if (v4 == v28)
      {
        return v5;
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
LABEL_46:
    __break(1u);
LABEL_47:
    v25 = isUniquelyReferenced_nonNull_bridgeObject;
    i = sub_20DD655B4();
  }

  return MEMORY[0x277D84F90];
}

void sub_20DA14150(uint64_t a1)
{
  v2 = sub_20DD63744();
  MEMORY[0x28223BE20](v2 - 8);
  v36 = &v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = sub_20DD63FE4();
  v4 = *(v40 - 8);
  v5 = MEMORY[0x28223BE20](v40);
  v39 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v38 = &v32 - v7;
  v52 = MEMORY[0x277D84F90];
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_20DD65564();
    sub_20D9D7510(0, &qword_280E01F60, off_277DEF2B8);
    sub_20DA1A7C0();
    sub_20DD65284();
    a1 = v47;
    v8 = v48;
    v10 = v49;
    v9 = v50;
    v11 = v51;
  }

  else
  {
    v12 = -1 << *(a1 + 32);
    v8 = a1 + 56;
    v10 = ~v12;
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

    v9 = 0;
  }

  v42 = v10;
  v37 = (v4 + 16);
  v35 = (v4 + 8);
  v43 = MEMORY[0x277D84F90];
LABEL_8:
  v15 = v9;
  if ((a1 & 0x8000000000000000) == 0)
  {
    while (1)
    {
      v16 = v15;
      v17 = v11;
      v9 = v15;
      if (!v11)
      {
        while (1)
        {
          v9 = v16 + 1;
          if (__OFADD__(v16, 1))
          {
            break;
          }

          if (v9 >= ((v10 + 64) >> 6))
          {
            goto LABEL_32;
          }

          v17 = *(v8 + 8 * v9);
          ++v16;
          if (v17)
          {
            goto LABEL_16;
          }
        }

        __break(1u);
        return;
      }

LABEL_16:
      v18 = (v17 - 1) & v17;
      v19 = *(*(a1 + 48) + ((v9 << 9) | (8 * __clz(__rbit64(v17)))));
      if (!v19)
      {
        goto LABEL_32;
      }

LABEL_20:
      if (![v19 homeKitObject])
      {
        break;
      }

      objc_opt_self();
      v21 = swift_dynamicCastObjCClass();
      if (v21 && (v22 = v21, (v23 = [v21 home]) != 0))
      {
        v24 = v23;
        if (([v22 hf_isMatterOnlyAccessory] & 1) == 0)
        {

          swift_unknownObjectRelease();
          goto LABEL_11;
        }

        v41 = v18;
        sub_20DD65334();
        if ((v25 & 1) == 0)
        {
          v34 = v24;
          v43 = [v24 uniqueIdentifier];
          sub_20DD63714();

          sub_20DD63FB4();
          v43 = *v37;
          (v43)(v39, v38, v40);
          v33 = type metadata accessor for MatterAccessoryRepresentable(0);
          v26 = objc_allocWithZone(v33);
          v27 = OBJC_IVAR___HFMatterAccessoryRepresentable_staticMatterDevice;
          v28 = sub_20DD64294();
          (*(*(v28 - 8) + 56))(&v26[v27], 1, 1, v28);
          v29 = &v26[OBJC_IVAR___HFMatterAccessoryRepresentable__tileInfo];
          *(v29 + 4) = 0;
          *v29 = 0u;
          *(v29 + 1) = 0u;
          *&v26[OBJC_IVAR___HFMatterAccessoryRepresentable_accessory] = v22;
          (v43)(&v26[OBJC_IVAR___HFMatterAccessoryRepresentable_tilePath], v39, v40);
          v46.receiver = v26;
          v46.super_class = v33;
          swift_unknownObjectRetain();
          v30 = objc_msgSendSuper2(&v46, sel_init);
          v31 = *v35;
          (*v35)(v39, v40);
          v43 = v30;
          sub_20D9F18F4();
          swift_unknownObjectRelease();

          v31(v38, v40);
          MEMORY[0x20F325F00]();
          if (*((v52 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v52 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_20DD65014();
          }

          sub_20DD65054();
          v43 = v52;
          v11 = v41;
          goto LABEL_8;
        }

        swift_unknownObjectRelease();
        v15 = v9;
        v11 = v41;
        if (a1 < 0)
        {
          goto LABEL_18;
        }
      }

      else
      {

        swift_unknownObjectRelease();
LABEL_11:
        v15 = v9;
        v11 = v18;
        if (a1 < 0)
        {
          goto LABEL_18;
        }
      }
    }

    goto LABEL_11;
  }

LABEL_18:
  v20 = sub_20DD655F4();
  if (v20)
  {
    v44 = v20;
    sub_20D9D7510(0, &qword_280E01F60, off_277DEF2B8);
    swift_dynamicCast();
    v19 = v45;
    v9 = v15;
    v18 = v11;
    if (v45)
    {
      goto LABEL_20;
    }
  }

LABEL_32:
  sub_20D9C51CC(a1);
}

uint64_t static HFAccessoryListUtilities.accessoryRepresentableObjects(from:objectLevel:accessoryTypeGroups:)(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v5 = sub_20DA148AC(a2, a1, v3, a3);
  v6 = v5;
  v13 = MEMORY[0x277D84F90];
  if (v5 >> 62)
  {
LABEL_16:
    v7 = sub_20DD655B4();
    if (v7)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v7 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v7)
    {
LABEL_3:
      v8 = 0;
      while (1)
      {
        if ((v6 & 0xC000000000000001) != 0)
        {
          MEMORY[0x20F326680](v8, v6);
          v9 = v8 + 1;
          if (__OFADD__(v8, 1))
          {
LABEL_13:
            __break(1u);
LABEL_14:
            v10 = v13;
            goto LABEL_18;
          }
        }

        else
        {
          if (v8 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_16;
          }

          swift_unknownObjectRetain();
          v9 = v8 + 1;
          if (__OFADD__(v8, 1))
          {
            goto LABEL_13;
          }
        }

        swift_getObjectType();
        if (HFAccessoryRepresentable.isMatterOnlyAccessory.getter())
        {
          swift_unknownObjectRelease();
        }

        else
        {
          sub_20DD65754();
          sub_20DD65784();
          sub_20DD65794();
          sub_20DD65764();
        }

        ++v8;
        if (v9 == v7)
        {
          goto LABEL_14;
        }
      }
    }
  }

  v10 = MEMORY[0x277D84F90];
LABEL_18:

  sub_20DA14150(a1);
  sub_20DA12D24(v11);
  return v10;
}

uint64_t sub_20DA148AC(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a1 <= 2)
  {
    if (a1 != 1)
    {
      if (a1 == 2)
      {
        goto LABEL_13;
      }

      goto LABEL_10;
    }

    if (!a4)
    {
      goto LABEL_10;
    }

    v9 = sub_20DA55058(a2);

    sub_20DA17108(v9, a4);

    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C843D48, &qword_20DD94240);
    v6 = sub_20DD64FB4();

    v7 = [ObjCClassFromMetadata uniqueAccessoryRepresentablesIn_];
LABEL_14:
    v15 = v7;

    v12 = sub_20DD64FD4();
    return v12;
  }

  if (a1 == 3)
  {
LABEL_13:
    v13 = sub_20DA55058(a2);
    sub_20DA138D8(v13);

    v14 = swift_getObjCClassFromMetadata();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C843D48, &qword_20DD94240);
    v6 = sub_20DD64FB4();

    v7 = [v14 uniqueAccessoryRepresentablesIn_];
    goto LABEL_14;
  }

  if (a1 == 4)
  {
    v4 = sub_20DA55058(a2);
    sub_20DA13DE8(v4);

    v5 = swift_getObjCClassFromMetadata();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C843D48, &qword_20DD94240);
    v6 = sub_20DD64FB4();

    v7 = [v5 uniqueAccessoryRepresentablesIn_];
    goto LABEL_14;
  }

LABEL_10:
  v11 = sub_20DA55058(a2);
  v12 = v11;
  if ((v11 & 0x8000000000000000) == 0 && (v11 & 0x4000000000000000) == 0)
  {

    sub_20DD65994();

    return v12;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C843D48, &qword_20DD94240);
  v17 = sub_20DD65834();

  return v17;
}