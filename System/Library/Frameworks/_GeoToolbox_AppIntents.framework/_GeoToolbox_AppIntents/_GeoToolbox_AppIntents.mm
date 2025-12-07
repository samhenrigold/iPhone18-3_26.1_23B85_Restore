uint64_t sub_23B6F04CC(void *a1)
{
  v33[1] = *MEMORY[0x277D85DE8];
  v2 = sub_23B6F77F4();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v32[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v4);
  v8 = &v32[-v7];
  v9 = [a1 postalAddress];
  if (v9)
  {
    v10 = v9;
    v11 = [objc_allocWithZone(MEMORY[0x277CBDB80]) init];
    v12 = [v11 stringFromPostalAddress_];

    v13 = sub_23B6F7954();
    v15 = v14;

    *v8 = v13;
    v8[1] = v15;
    (*(v3 + 104))(v8, *MEMORY[0x277CCB110], v2);
    v16 = sub_23B6F50BC(0, 1, 1, MEMORY[0x277D84F90]);
    v18 = v16[2];
    v17 = v16[3];
    if (v18 >= v17 >> 1)
    {
      v16 = sub_23B6F50BC((v17 > 1), v18 + 1, 1, v16);
    }

    v16[2] = v18 + 1;
    (*(v3 + 32))(v16 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v18, v8, v2);
  }

  else
  {
    v16 = MEMORY[0x277D84F90];
  }

  v19 = [a1 location];
  if (v19)
  {
    *v6 = v19;
    v20 = v19;
    (*(v3 + 104))(v6, *MEMORY[0x277CCB108], v2);
    v21 = v20;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v16 = sub_23B6F50BC(0, v16[2] + 1, 1, v16);
    }

    v23 = v16[2];
    v22 = v16[3];
    if (v23 >= v22 >> 1)
    {
      v16 = sub_23B6F50BC((v22 > 1), v23 + 1, 1, v16);
    }

    v16[2] = v23 + 1;
    (*(v3 + 32))(v16 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v23, v6, v2);
  }

  v24 = [a1 name];
  if (v24)
  {
    v25 = v24;
    sub_23B6F7954();
  }

  sub_23B6F7834();
  v26 = objc_opt_self();
  v33[0] = 0;
  v27 = [v26 archivedDataWithRootObject:a1 requiringSecureCoding:1 error:v33];
  v28 = v33[0];
  if (v27)
  {
    sub_23B6F77B4();

    return sub_23B6F7824();
  }

  else
  {
    v30 = v28;
    v31 = sub_23B6F7744();

    swift_willThrow();
    return MEMORY[0x23EEA4E20](v31);
  }
}

uint64_t static PlaceDescriptor.typeDisplayRepresentation.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27E17B460 != -1)
  {
    swift_once();
  }

  v2 = sub_23B6F76B4();
  v3 = __swift_project_value_buffer(v2, qword_27E17B470);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t static PlaceDescriptor.typeDisplayRepresentation.setter(uint64_t a1)
{
  if (qword_27E17B460 != -1)
  {
    swift_once();
  }

  v2 = sub_23B6F76B4();
  v3 = __swift_project_value_buffer(v2, qword_27E17B470);
  swift_beginAccess();
  v4 = *(v2 - 8);
  (*(v4 + 24))(v3, a1, v2);
  swift_endAccess();
  return (*(v4 + 8))(a1, v2);
}

uint64_t (*static PlaceDescriptor.typeDisplayRepresentation.modify(uint64_t a1))(uint64_t a1)
{
  if (qword_27E17B460 != -1)
  {
    swift_once();
  }

  v1 = sub_23B6F76B4();
  __swift_project_value_buffer(v1, qword_27E17B470);
  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t PlaceDescriptor.displayRepresentation.getter@<X0>(uint64_t a1@<X8>)
{
  v56 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E17B4A0, &qword_23B6F7D80);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v46 - v3;
  v5 = sub_23B6F77D4();
  MEMORY[0x28223BE20](v5 - 8);
  v61 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_23B6F7944();
  MEMORY[0x28223BE20](v7 - 8);
  v59 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_23B6F7924();
  MEMORY[0x28223BE20](v9 - 8);
  v54 = sub_23B6F7784();
  v10 = *(v54 - 8);
  v11 = MEMORY[0x28223BE20](v54);
  v62 = &v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v46 - v14;
  MEMORY[0x28223BE20](v13);
  v17 = &v46 - v16;
  v18 = sub_23B6F7764();
  v19 = *(v18 - 8);
  v20 = MEMORY[0x28223BE20](v18);
  v60 = &v46 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v23 = &v46 - v22;
  sub_23B6F7864();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v52 = [objc_opt_self() bundleForClass_];
  v25 = [v52 bundleURL];
  sub_23B6F77A4();

  v26 = *MEMORY[0x277CC9118];
  v27 = *(v19 + 104);
  v63 = v23;
  v27(v23, v26, v18);
  sub_23B6F7754();
  sub_23B6F7754();
  v51 = v1;
  sub_23B6F7804();
  v55 = v17;
  v53 = v10;
  v58 = v18;
  if (v28)
  {
    v49 = v15;
    v50 = v4;
    sub_23B6F7914();
    sub_23B6F7904();
    sub_23B6F78F4();

    sub_23B6F7904();
    sub_23B6F7934();
    v48 = v19;
    v47 = *(v19 + 16);
    v47(v60, v63, v18);
    sub_23B6F77C4();
    v29 = v62;
    sub_23B6F7794();
    v30 = v10;
    v31 = *(v10 + 8);
    v32 = v54;
    v57 = v31;
    v31(v17, v54);
    v46 = *(v30 + 32);
    v46(v17, v29, v32);
    sub_23B6F7874();
    if (v33)
    {
      sub_23B6F7914();
      sub_23B6F7904();
      sub_23B6F78F4();

      sub_23B6F7904();
      sub_23B6F7934();
      v47(v60, v63, v58);
      sub_23B6F77C4();
      v34 = v62;
      sub_23B6F7794();
      v35 = v49;
      v57(v49, v32);
      v15 = v35;
      v46(v35, v34, v32);
      v4 = v50;
    }

    else
    {
      v15 = v49;
      v4 = v50;
      v34 = v62;
    }

    v37 = v55;
    v19 = v48;
    v38 = v53;
  }

  else
  {
    sub_23B6F7874();
    if (v36)
    {
      sub_23B6F7914();
      sub_23B6F7904();
      sub_23B6F78F4();

      sub_23B6F7904();
      sub_23B6F7934();
    }

    else
    {
      sub_23B6F78E4();
    }

    (*(v19 + 16))(v60, v63, v18);
    sub_23B6F77C4();
    v34 = v62;
    sub_23B6F7794();
    v38 = v53;
    v32 = v54;
    v37 = v55;
    v57 = *(v53 + 8);
    v57(v55, v54);
    (*(v38 + 32))(v37, v34, v32);
  }

  v39 = *(v38 + 16);
  v39(v34, v37, v32);
  v39(v4, v15, v32);
  (*(v38 + 56))(v4, 0, 1, v32);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E17B4A8, &qword_23B6F7D88);
  MEMORY[0x28223BE20](v40 - 8);
  v42 = &v46 - v41;
  v43 = sub_23B6F7684();
  (*(*(v43 - 8) + 56))(v42, 1, 1, v43);
  sub_23B6F7694();

  v44 = v57;
  v57(v15, v32);
  v44(v37, v32);
  return (*(v19 + 8))(v63, v58);
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t static PlaceDescriptor.defaultResolverSpecification.getter()
{
  v0 = sub_23B6F7884();
  v1 = sub_23B6F14A8();
  MEMORY[0x23EEA48F0](v1, v0, &_s38PlaceDescriptorFromCLPlacemarkResolverVN, v1);
  sub_23B6F6988(&qword_2814F8AB8, MEMORY[0x277CCB120], &protocol conformance descriptor for PlaceDescriptor);
  return sub_23B6F7704();
}

unint64_t sub_23B6F14A8()
{
  result = qword_27E17B4B0;
  if (!qword_27E17B4B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E17B4B0);
  }

  return result;
}

uint64_t sub_23B6F14FC(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return MEMORY[0x2822009F8](sub_23B6F1520, 0, 0);
}

uint64_t sub_23B6F1520()
{
  v1 = *(v0 + 16);
  sub_23B6F04CC(*(v0 + 24));
  v2 = sub_23B6F7884();
  (*(*(v2 - 8) + 56))(v1, 0, 1, v2);
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_23B6F1678(uint64_t a1, uint64_t a2)
{
  v3 = sub_23B6F14A8();
  MEMORY[0x23EEA48F0](v3, a1, &_s38PlaceDescriptorFromCLPlacemarkResolverVN, v3);
  return sub_23B6F7704();
}

uint64_t sub_23B6F16EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_23B6F17B0;

  return MEMORY[0x28210C4A8](a1, a2, a3, a4);
}

uint64_t sub_23B6F17B0()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_23B6F18A4@<X0>(uint64_t a1@<X8>)
{
  if (qword_27E17B460 != -1)
  {
    swift_once();
  }

  v2 = sub_23B6F76B4();
  v3 = __swift_project_value_buffer(v2, qword_27E17B470);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t PlaceDescriptor.convertToEntity()@<X0>(uint64_t *a1@<X8>)
{
  v3 = sub_23B6F7884();
  MEMORY[0x28223BE20](v3);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v5, v1);
  return PlaceDescriptorEntity.init(_:)(v5, a1);
}

uint64_t PlaceDescriptorEntity.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v94 = a2;
  v3 = sub_23B6F77F4();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v113 = (&v92 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v92 - v8;
  MEMORY[0x28223BE20](v7);
  v11 = &v92 - v10;
  v101 = sub_23B6F77E4();
  v104 = *(v101 - 8);
  v12 = MEMORY[0x28223BE20](v101);
  v100 = (&v92 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v12);
  v99 = &v92 - v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E17B4B8, &qword_23B6F7D90);
  sub_23B6F36E4();
  v97 = sub_23B6F7644();
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E17B4C8, &qword_23B6F7D98);
  v15 = sub_23B6F7654();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E17B4D0, &qword_23B6F7DA0);
  sub_23B6F3738();
  v96 = sub_23B6F7644();
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E17B4E0, &qword_23B6F7DA8);
  v95 = sub_23B6F7664();
  v120 = sub_23B6F7804();
  v121 = v16;
  v93 = v15;
  sub_23B6F7634();
  v102 = a1;
  v17 = sub_23B6F7844();
  v18 = *(v17 + 16);
  if (v18)
  {
    v119 = MEMORY[0x277D84F90];
    sub_23B6F5A40(0, v18, 0);
    v19 = v119;
    v21 = *(v4 + 16);
    v20 = v4 + 16;
    v110 = v21;
    v22 = (*(v20 + 64) + 32) & ~*(v20 + 64);
    v92 = v17;
    v23 = v17 + v22;
    v24 = *(v20 + 56);
    v108 = (v20 + 72);
    v109 = v24;
    LODWORD(v107) = *MEMORY[0x277CCB110];
    v103 = *MEMORY[0x277CCB100];
    v105 = (v20 + 80);
    v106 = (v20 - 8);
    v98 = *MEMORY[0x277CCB108];
    v111 = v9;
    v112 = v20;
    v116 = v11;
    while (1)
    {
      v25 = v3;
      v26 = v3;
      v27 = v110;
      v110(v11, v23, v25);
      v27(v9, v11, v26);
      v28 = sub_23B6F7654();
      v117 = sub_23B6F7664();
      v118 = sub_23B6F7664();
      v29 = v113;
      v27(v113, v9, v26);
      v3 = v26;
      v30 = (*v108)(v29, v26);
      if (v30 != v107)
      {
        break;
      }

      (*v105)(v29, v26);
      v31 = *(v29 + 1);
      v120 = *v29;
      v121 = v31;
      sub_23B6F7634();
      v32 = *v106;
      (*v106)(v9, v26);
      v32(v11, v26);
      v33 = v117;
LABEL_12:
      v119 = v19;
      v43 = v19[2];
      v42 = v19[3];
      if (v43 >= v42 >> 1)
      {
        sub_23B6F5A40((v42 > 1), v43 + 1, 1);
        v19 = v119;
      }

      v19[2] = v43 + 1;
      v44 = &v19[3 * v43];
      v44[4] = v28;
      v44[5] = v33;
      v44[6] = v118;
      v23 += v109;
      --v18;
      v9 = v111;
      v11 = v116;
      if (!v18)
      {

        goto LABEL_17;
      }
    }

    if (v30 == v103)
    {
      (*v105)(v29, v26);
      v34 = [objc_allocWithZone(MEMORY[0x277CE41F8]) initWithLatitude:*v29 longitude:v29[1]];
      v35 = v9;
      v36 = [objc_opt_self() placemarkWithLocation:v34 name:0 postalAddress:0];

      v120 = v36;
      v37 = v36;
      v33 = v117;
      sub_23B6F7634();
    }

    else
    {
      v33 = v117;
      if (v30 != v98)
      {
        v41 = v29;
        v39 = *v106;
        (*v106)(v9, v26);
        v39(v116, v26);
        v40 = v41;
        goto LABEL_11;
      }

      (*v105)(v29, v26);
      v38 = *v29;
      v120 = [objc_opt_self() placemarkWithLocation:*v29 name:0 postalAddress:{0, v92}];
      v35 = v9;
      v37 = v120;
      sub_23B6F7634();
    }

    v39 = *v106;
    (*v106)(v35, v26);
    v40 = v116;
LABEL_11:
    v39(v40, v26);
    v3 = v26;
    goto LABEL_12;
  }

  v19 = MEMORY[0x277D84F90];
LABEL_17:
  v120 = v19;
  sub_23B6F7634();
  v45 = v102;
  result = sub_23B6F7854();
  v47 = result;
  v48 = *(result + 16);
  v49 = v101;
  v50 = v100;
  v51 = v99;
  if (!v48)
  {

    v82 = MEMORY[0x277D84F90];
LABEL_46:
    v120 = v82;
    sub_23B6F7634();
    v83 = sub_23B6F7814();
    if (v84 >> 60 != 15)
    {
      v62 = v83;
      v63 = v84;
      sub_23B6F725C(0, &qword_27E17B4E8, 0x277CCAAC8);
      sub_23B6F725C(0, &qword_27E17B4F0, 0x277CBFC40);
      v85 = sub_23B6F7974();
      if (!v85)
      {
LABEL_52:
        v91 = sub_23B6F7884();
        (*(*(v91 - 8) + 8))(v45, v91);
        result = sub_23B6F5A60(v62, v63);
        goto LABEL_50;
      }

      v120 = v85;
      v86 = v85;
      sub_23B6F7634();
      sub_23B6F5A60(v62, v63);
    }

    v87 = sub_23B6F7884();
    result = (*(*(v87 - 8) + 8))(v45, v87);
LABEL_50:
    v88 = v94;
    v89 = v93;
    *v94 = v97;
    v88[1] = v89;
    v90 = v95;
    v88[2] = v96;
    v88[3] = v90;
    return result;
  }

  v52 = 0;
  v114 = result + ((*(v104 + 80) + 32) & ~*(v104 + 80));
  v112 = v104 + 88;
  v113 = (v104 + 16);
  LODWORD(v111) = *MEMORY[0x277CCB0F0];
  v110 = (v104 + 8);
  v108 = result;
  v109 = (v104 + 96);
  v115 = MEMORY[0x277D84F90];
  v107 = v48;
  while (v52 < *(v47 + 16))
  {
    v54 = v104;
    v55 = *(v104 + 72);
    v116 = v52;
    v56 = *(v104 + 16);
    v56(v51, v114 + v55 * v52, v49);
    v56(v50, v51, v49);
    v57 = (*(v54 + 88))(v50, v49);
    if (v57 == v111)
    {
      (*v109)(v50, v49);
      v58 = *v50 + 64;
      v59 = 1 << *(*v50 + 32);
      if (v59 < 64)
      {
        v60 = ~(-1 << v59);
      }

      else
      {
        v60 = -1;
      }

      v61 = v60 & *(*v50 + 64);
      v62 = (v59 + 63) >> 6;
      v117 = *v50;

      v63 = 0;
      v64 = MEMORY[0x277D84F90];
      if (!v61)
      {
        goto LABEL_28;
      }

      do
      {
        v118 = v64;
LABEL_32:
        v66 = (v63 << 10) | (16 * __clz(__rbit64(v61)));
        v67 = *(v117 + 48) + v66;
        v68 = *v67;
        v69 = *(v67 + 8);
        v70 = *(v117 + 56) + v66;
        v72 = *v70;
        v71 = *(v70 + 8);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E17B4F8, &qword_23B6F7DB0);

        v73 = sub_23B6F7654();
        v74 = sub_23B6F7654();
        v120 = v68;
        v121 = v69;
        v45 = v74;

        sub_23B6F7634();
        v120 = v72;
        v121 = v71;

        sub_23B6F7634();

        v64 = v118;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v64 = sub_23B6F51F0(0, *(v64 + 2) + 1, 1, v64);
        }

        v76 = *(v64 + 2);
        v75 = *(v64 + 3);
        if (v76 >= v75 >> 1)
        {
          v64 = sub_23B6F51F0((v75 > 1), v76 + 1, 1, v64);
        }

        v61 &= v61 - 1;
        *(v64 + 2) = v76 + 1;
        v77 = &v64[16 * v76];
        *(v77 + 4) = v73;
        *(v77 + 5) = v45;
      }

      while (v61);
      while (1)
      {
LABEL_28:
        v65 = v63 + 1;
        if (__OFADD__(v63, 1))
        {
          __break(1u);
          goto LABEL_52;
        }

        if (v65 >= v62)
        {
          break;
        }

        v61 = *(v58 + 8 * v65);
        ++v63;
        if (v61)
        {
          v118 = v64;
          v63 = v65;
          goto LABEL_32;
        }
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E17B500, &qword_23B6F7DB8);
      sub_23B6F5AC8();
      v78 = sub_23B6F7644();
      v120 = v64;
      sub_23B6F7634();
      v51 = v99;
      v49 = v101;
      (*v110)(v99, v101);
      result = swift_isUniquelyReferenced_nonNull_native();
      if (result)
      {
        v45 = v102;
        v50 = v100;
        v47 = v108;
        v79 = v115;
      }

      else
      {
        result = sub_23B6F50E4(0, *(v115 + 2) + 1, 1, v115);
        v79 = result;
        v45 = v102;
        v50 = v100;
        v47 = v108;
      }

      v81 = *(v79 + 2);
      v80 = *(v79 + 3);
      if (v81 >= v80 >> 1)
      {
        result = sub_23B6F50E4((v80 > 1), v81 + 1, 1, v79);
        v79 = result;
      }

      *(v79 + 2) = v81 + 1;
      v115 = v79;
      *&v79[8 * v81 + 32] = v78;
      v48 = v107;
    }

    else
    {
      v53 = *v110;
      (*v110)(v51, v49);
      result = v53(v50, v49);
    }

    v52 = v116 + 1;
    if (v116 + 1 == v48)
    {

      v82 = v115;
      goto LABEL_46;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_23B6F26B8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  MEMORY[0x28223BE20](a1);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v4);
  return PlaceDescriptorEntity.init(_:)(v4, a2);
}

void PlaceDescriptorEntity.convertToSystemIntentValue()(uint64_t a1@<X8>)
{
  v66[2] = a1;
  v78 = sub_23B6F77E4();
  v71 = *(v78 - 8);
  v2 = MEMORY[0x28223BE20](v78);
  v70 = (v66 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v2);
  v77 = v66 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E17B510, &qword_23B6F7DC0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = (v66 - v6);
  v8 = sub_23B6F77F4();
  v76 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = v66 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v1 + 8);
  v12 = *(v1 + 16);
  sub_23B6F7624();
  v13 = v86;
  if (v86)
  {
    sub_23B6F7624();
    v14 = *(v86 + 2);

    if (!v14)
    {
      sub_23B6F04CC(v13);

      return;
    }
  }

  v69 = v11;
  v72 = v12;
  sub_23B6F7624();
  v15 = v86;
  v88 = *(v86 + 2);
  if (v88)
  {
    v16 = 0;
    LODWORD(v80) = *MEMORY[0x277CCB110];
    v81 = (v76 + 104);
    v84 = (v76 + 56);
    LODWORD(v74) = *MEMORY[0x277CCB100];
    LODWORD(v73) = *MEMORY[0x277CCB108];
    v82 = (v76 + 32);
    v83 = (v76 + 48);
    v17 = v86 + 48;
    v79 = MEMORY[0x277D84F90];
    v75 = v10;
    v85 = v86;
    while (1)
    {
      if (v16 >= *(v15 + 2))
      {
        goto LABEL_60;
      }

      sub_23B6F7624();
      v18 = v87;
      if (v87)
      {
        break;
      }

      sub_23B6F7624();
      v25 = v86;
      if (!v86 || (v26 = [v86 location], v25, !v26))
      {
        sub_23B6F7624();
        v32 = v86;
        if (v86 && (v33 = [v86 location], v32, v33))
        {
          *v7 = v33;
          v19 = v73;
          v10 = v75;
LABEL_11:
          (*v81)(v7, v19, v8);
          v20 = 0;
        }

        else
        {
          v20 = 1;
          v10 = v75;
        }

        (*v84)(v7, v20, 1, v8);

        if ((*v83)(v7, 1, v8) != 1)
        {
          goto LABEL_13;
        }

        goto LABEL_6;
      }

      [v26 coordinate];
      v28 = v27;
      v30 = v29;

      *v7 = v28;
      v7[1] = v30;
      (*v81)(v7, v74, v8);
      (*v84)(v7, 0, 1, v8);

      v31 = (*v83)(v7, 1, v8);
      v10 = v75;
      if (v31 != 1)
      {
LABEL_13:
        v21 = *v82;
        (*v82)(v10, v7, v8);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v79 = sub_23B6F52FC(0, v79[2] + 1, 1, v79, &qword_27E17B758, &qword_23B6F8BC8, MEMORY[0x277CCB118]);
        }

        v23 = v79[2];
        v22 = v79[3];
        if (v23 >= v22 >> 1)
        {
          v79 = sub_23B6F52FC((v22 > 1), v23 + 1, 1, v79, &qword_27E17B758, &qword_23B6F8BC8, MEMORY[0x277CCB118]);
        }

        v24 = v79;
        v79[2] = v23 + 1;
        v21(&v24[((*(v76 + 80) + 32) & ~*(v76 + 80)) + *(v76 + 72) * v23], v10, v8);
        goto LABEL_7;
      }

LABEL_6:
      sub_23B6F5B1C(v7);
LABEL_7:
      ++v16;
      v17 += 24;
      v15 = v85;
      if (v88 == v16)
      {
        goto LABEL_27;
      }
    }

    *v7 = v86;
    v7[1] = v18;
    v19 = v80;
    goto LABEL_11;
  }

  v79 = MEMORY[0x277D84F90];
LABEL_27:

  sub_23B6F7624();
  v66[1] = v86;
  v66[0] = v87;
  sub_23B6F7624();
  v34 = v86;
  v73 = *(v86 + 2);
  if (!v73)
  {
LABEL_55:

    sub_23B6F7834();
    return;
  }

  v35 = 0;
  v72 = v86 + 32;
  v68 = *MEMORY[0x277CCB0F0];
  v67 = (v71 + 104);
  v36 = MEMORY[0x277D84F90];
  v76 = v71 + 32;
  v69 = v86;
  while (1)
  {
    if (v35 >= *(v34 + 2))
    {
      goto LABEL_61;
    }

    v37 = *&v72[8 * v35];

    sub_23B6F7624();
    v38 = v86;
    if (v86)
    {
      break;
    }

LABEL_30:
    if (++v35 == v73)
    {
      goto LABEL_55;
    }
  }

  v74 = v35;
  v75 = v36;
  v82 = *(v86 + 2);
  if (!v82)
  {
    v41 = MEMORY[0x277D84F98];
LABEL_50:

    v61 = v70;
    *v70 = v41;
    v62 = v78;
    (*v67)(v61, v68, v78);
    v63 = *v76;
    (*v76)(v77, v61, v62);
    v36 = v75;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v36 = sub_23B6F52FC(0, *(v36 + 2) + 1, 1, v36, &qword_27E17B748, &qword_23B6F8BB8, MEMORY[0x277CCB0F8]);
    }

    v34 = v69;
    v35 = v74;
    v65 = *(v36 + 2);
    v64 = *(v36 + 3);
    if (v65 >= v64 >> 1)
    {
      v36 = sub_23B6F52FC((v64 > 1), v65 + 1, 1, v36, &qword_27E17B748, &qword_23B6F8BB8, MEMORY[0x277CCB0F8]);
    }

    *(v36 + 2) = v65 + 1;
    v63(&v36[((*(v71 + 80) + 32) & ~*(v71 + 80)) + *(v71 + 72) * v65], v77, v78);
    goto LABEL_30;
  }

  v39 = 0;
  v40 = (v86 + 40);
  v41 = MEMORY[0x277D84F98];
  v80 = v86;
  v81 = v37;
  while (v39 < *(v38 + 2))
  {
    v83 = v40;
    v84 = v39;
    v43 = *(v40 - 1);

    v88 = v43;
    sub_23B6F7624();
    v45 = v86;
    v44 = v87;
    sub_23B6F7624();
    v46 = v87;
    v85 = v86;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v86 = v41;
    v49 = sub_23B6F54D8(v45, v44);
    v50 = *(v41 + 2);
    v51 = (v48 & 1) == 0;
    v52 = v50 + v51;
    if (__OFADD__(v50, v51))
    {
      goto LABEL_58;
    }

    v53 = v48;
    if (*(v41 + 3) >= v52)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        if (v48)
        {
          goto LABEL_35;
        }
      }

      else
      {
        sub_23B6F58C8();
        if (v53)
        {
          goto LABEL_35;
        }
      }
    }

    else
    {
      sub_23B6F5550(v52, isUniquelyReferenced_nonNull_native);
      v54 = sub_23B6F54D8(v45, v44);
      if ((v53 & 1) != (v55 & 1))
      {
        goto LABEL_62;
      }

      v49 = v54;
      if (v53)
      {
LABEL_35:

        v41 = v86;
        v42 = (*(v86 + 7) + 16 * v49);
        *v42 = v85;
        v42[1] = v46;

        goto LABEL_36;
      }
    }

    v41 = v86;
    *&v86[8 * (v49 >> 6) + 64] |= 1 << v49;
    v56 = (*(v41 + 6) + 16 * v49);
    *v56 = v45;
    v56[1] = v44;
    v57 = (*(v41 + 7) + 16 * v49);
    *v57 = v85;
    v57[1] = v46;

    v58 = *(v41 + 2);
    v59 = __OFADD__(v58, 1);
    v60 = v58 + 1;
    if (v59)
    {
      goto LABEL_59;
    }

    *(v41 + 2) = v60;
LABEL_36:
    v39 = v84 + 1;
    v40 = v83 + 2;
    v38 = v80;
    if (v82 == v84 + 1)
    {
      goto LABEL_50;
    }
  }

  __break(1u);
LABEL_58:
  __break(1u);
LABEL_59:
  __break(1u);
LABEL_60:
  __break(1u);
LABEL_61:
  __break(1u);
LABEL_62:
  sub_23B6F79B4();
  __break(1u);
}

uint64_t PlaceDescriptorEntity.PlaceRepresentationEntity.placeRepresentation.getter@<X0>(id *a2@<X8>)
{
  sub_23B6F7624();
  if (v17)
  {
    *a2 = v16;
    a2[1] = v17;
    v3 = MEMORY[0x277CCB110];
LABEL_3:
    v4 = *v3;
    v5 = sub_23B6F77F4();
    v6 = *(v5 - 8);
    (*(v6 + 104))(a2, v4, v5);
    return (*(v6 + 56))(a2, 0, 1, v5);
  }

  sub_23B6F7624();
  if (v16)
  {
    v8 = [v16 location];

    if (v8)
    {
      [v8 coordinate];
      v10 = v9;
      v12 = v11;

      *a2 = v10;
      a2[1] = v12;
      v3 = MEMORY[0x277CCB100];
      goto LABEL_3;
    }
  }

  sub_23B6F7624();
  if (v16)
  {
    v13 = [v16 location];

    if (v13)
    {
      *a2 = v13;
      v14 = *MEMORY[0x277CCB108];
      v5 = sub_23B6F77F4();
      v6 = *(v5 - 8);
      (*(v6 + 104))(a2, v14, v5);
      return (*(v6 + 56))(a2, 0, 1, v5);
    }
  }

  v15 = sub_23B6F77F4();
  return (*(*(v15 - 8) + 56))(a2, 1, 1, v15);
}

uint64_t PlaceDescriptorEntity.PlaceRepresentationEntity.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_23B6F77F4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E17B4C8, &qword_23B6F7D98);
  v8 = sub_23B6F7654();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E17B4E0, &qword_23B6F7DA8);
  v9 = sub_23B6F7664();
  v10 = sub_23B6F7664();
  (*(v5 + 16))(v7, a1, v4);
  v11 = (*(v5 + 88))(v7, v4);
  if (v11 == *MEMORY[0x277CCB110])
  {
    (*(v5 + 96))(v7, v4);
    v12 = *(v7 + 1);
    v20[0] = *v7;
    v20[1] = v12;
    sub_23B6F7634();
  }

  else if (v11 == *MEMORY[0x277CCB100])
  {
    (*(v5 + 96))(v7, v4);
    v13 = [objc_allocWithZone(MEMORY[0x277CE41F8]) initWithLatitude:*v7 longitude:*(v7 + 1)];
    v14 = [objc_opt_self() placemarkWithLocation:v13 name:0 postalAddress:0];

    v20[0] = v14;
    v15 = v14;
    sub_23B6F7634();
  }

  else
  {
    if (v11 != *MEMORY[0x277CCB108])
    {
      v19 = *(v5 + 8);
      v19(a1, v4);
      result = (v19)(v7, v4);
      goto LABEL_8;
    }

    (*(v5 + 96))(v7, v4);
    v16 = *v7;
    v20[0] = [objc_opt_self() placemarkWithLocation:v16 name:0 postalAddress:0];
    v17 = v20[0];
    sub_23B6F7634();
  }

  result = (*(v5 + 8))(a1, v4);
LABEL_8:
  *a2 = v8;
  a2[1] = v9;
  a2[2] = v10;
  return result;
}

unint64_t sub_23B6F36E4()
{
  result = qword_27E17B4C0;
  if (!qword_27E17B4C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E17B4C0);
  }

  return result;
}

unint64_t sub_23B6F3738()
{
  result = qword_27E17B4D8;
  if (!qword_27E17B4D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E17B4D8);
  }

  return result;
}

uint64_t PlaceDescriptorEntity.SupportingPlaceRepresentationEntity.ServiceIdentifier.init(bundleIdentifier:uniqueIdentifier:)@<X0>(uint64_t *a5@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E17B4F8, &qword_23B6F7DB0);
  *a5 = sub_23B6F7654();
  a5[1] = sub_23B6F7654();
  sub_23B6F7634();
  return sub_23B6F7634();
}

uint64_t PlaceDescriptorEntity.SupportingPlaceRepresentationEntity.init(_:)@<X0>(uint64_t *a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E17B500, &qword_23B6F7DB8);
  sub_23B6F5AC8();
  *a2 = sub_23B6F7644();
  return sub_23B6F7634();
}

uint64_t sub_23B6F38CC@<X0>(uint64_t *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E17B4C8, &qword_23B6F7D98);
  *a1 = sub_23B6F7654();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E17B4E0, &qword_23B6F7DA8);
  a1[1] = sub_23B6F7664();
  result = sub_23B6F7664();
  a1[2] = result;
  return result;
}

uint64_t PlaceDescriptorEntity.PlaceRepresentationEntity.init()@<X0>(uint64_t *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E17B4C8, &qword_23B6F7D98);
  *a1 = sub_23B6F7654();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E17B4E0, &qword_23B6F7DA8);
  a1[1] = sub_23B6F7664();
  result = sub_23B6F7664();
  a1[2] = result;
  return result;
}

uint64_t sub_23B6F3AEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_23B6F75C4;

  return MEMORY[0x28210C4A8](a1, a2, a3, a4);
}

uint64_t sub_23B6F3C50@<X0>(uint64_t *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E17B4F8, &qword_23B6F7DB0);
  *a1 = sub_23B6F7654();
  result = sub_23B6F7654();
  a1[1] = result;
  return result;
}

uint64_t PlaceDescriptorEntity.SupportingPlaceRepresentationEntity.ServiceIdentifier.init()@<X0>(uint64_t *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E17B4F8, &qword_23B6F7DB0);
  *a1 = sub_23B6F7654();
  result = sub_23B6F7654();
  a1[1] = result;
  return result;
}

uint64_t PlaceDescriptorEntity.SupportingPlaceRepresentationEntity.ServiceIdentifier.displayRepresentation.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E17B4A0, &qword_23B6F7D80);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v11 - v1;
  v3 = sub_23B6F7784();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = sub_23B6F7924();
  MEMORY[0x28223BE20](v5 - 8);
  sub_23B6F7914();
  sub_23B6F7904();
  sub_23B6F7624();
  sub_23B6F78F4();

  sub_23B6F7904();
  sub_23B6F7624();
  sub_23B6F78F4();

  sub_23B6F7904();
  sub_23B6F7774();
  (*(v4 + 56))(v2, 1, 1, v3);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E17B4A8, &qword_23B6F7D88);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v11 - v7;
  v9 = sub_23B6F7684();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  return sub_23B6F7694();
}

uint64_t sub_23B6F40EC@<X0>(uint64_t *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E17B500, &qword_23B6F7DB8);
  sub_23B6F5AC8();
  result = sub_23B6F7644();
  *a1 = result;
  return result;
}

uint64_t PlaceDescriptorEntity.SupportingPlaceRepresentationEntity.init()@<X0>(uint64_t *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E17B500, &qword_23B6F7DB8);
  sub_23B6F5AC8();
  result = sub_23B6F7644();
  *a1 = result;
  return result;
}

uint64_t sub_23B6F4314@<X0>(uint64_t *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E17B4B8, &qword_23B6F7D90);
  sub_23B6F36E4();
  *a1 = sub_23B6F7644();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E17B4C8, &qword_23B6F7D98);
  a1[1] = sub_23B6F7654();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E17B4D0, &qword_23B6F7DA0);
  sub_23B6F3738();
  a1[2] = sub_23B6F7644();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E17B4E0, &qword_23B6F7DA8);
  result = sub_23B6F7664();
  a1[3] = result;
  return result;
}

uint64_t PlaceDescriptorEntity.init()@<X0>(uint64_t *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E17B4B8, &qword_23B6F7D90);
  sub_23B6F36E4();
  *a1 = sub_23B6F7644();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E17B4C8, &qword_23B6F7D98);
  a1[1] = sub_23B6F7654();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E17B4D0, &qword_23B6F7DA0);
  sub_23B6F3738();
  a1[2] = sub_23B6F7644();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E17B4E0, &qword_23B6F7DA8);
  result = sub_23B6F7664();
  a1[3] = result;
  return result;
}

uint64_t sub_23B6F451C@<X0>(uint64_t a1@<X8>)
{
  if (qword_27E17B468 != -1)
  {
    swift_once();
  }

  v2 = sub_23B6F76B4();
  v3 = __swift_project_value_buffer(v2, qword_27E17B488);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t static PlaceDescriptorEntity.typeDisplayRepresentation.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27E17B468 != -1)
  {
    swift_once();
  }

  v2 = sub_23B6F76B4();
  v3 = __swift_project_value_buffer(v2, qword_27E17B488);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_23B6F4738(uint64_t a1, uint64_t *a2)
{
  v3 = sub_23B6F76B4();
  __swift_allocate_value_buffer(v3, a2);
  __swift_project_value_buffer(v3, a2);
  return sub_23B6F76A4();
}

uint64_t static PlaceDescriptorEntity.transferRepresentation.getter@<X0>(uint64_t a1@<X8>)
{
  v23 = a1;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E17B518, &qword_23B6F7DC8);
  MEMORY[0x28223BE20](v22);
  v21 = &v20 - v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E17B520, &qword_23B6F7DD0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v20 - v3;
  v5 = sub_23B6F78D4();
  v20 = v5;
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E17B528, &qword_23B6F7DD8);
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v20 - v12;
  v14 = *(v6 + 56);
  v14(v4, 1, 1, v5);
  sub_23B6F78C4();
  sub_23B6F5B84();
  sub_23B6F7894();
  v14(v4, 1, 1, v20);
  sub_23B6F78C4();
  sub_23B6F78A4();
  v15 = v21;
  v16 = *(v22 + 48);
  v17 = *(v8 + 16);
  v17(v21, v13, v7);
  v17(&v15[v16], v11, v7);
  sub_23B6F78B4();
  v18 = *(v8 + 8);
  v18(v11, v7);
  return (v18)(v13, v7);
}

uint64_t sub_23B6F4B0C(_OWORD *a1)
{
  v2 = a1[1];
  *(v1 + 48) = *a1;
  *(v1 + 64) = v2;

  return MEMORY[0x2822009F8](sub_23B6F4BA0, 0, 0);
}

uint64_t sub_23B6F4BA0()
{
  v12 = *(v0 + 64);
  v13 = *(v0 + 48);
  v1 = objc_opt_self();
  *(v0 + 16) = v13;
  *(v0 + 32) = v12;
  sub_23B6F5EB8();
  v2 = sub_23B6F7714();
  *(v0 + 16) = 0;
  v3 = [v1 archivedDataWithRootObject:v2 requiringSecureCoding:1 error:v0 + 16];

  v4 = *(v0 + 16);
  if (v3)
  {
    v5 = sub_23B6F77B4();
    v7 = v6;

    v8 = *(v0 + 8);

    return v8(v5, v7);
  }

  else
  {
    v10 = v4;
    sub_23B6F7744();

    swift_willThrow();
    v11 = *(v0 + 8);

    return v11();
  }
}

uint64_t sub_23B6F4D40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[7] = a2;
  v3[8] = a3;
  v3[6] = a1;
  return MEMORY[0x2822009F8](sub_23B6F4D64, 0, 0);
}

uint64_t sub_23B6F4D64()
{
  sub_23B6F725C(0, &qword_27E17B4E8, 0x277CCAAC8);
  sub_23B6F725C(0, &qword_27E17B738, 0x277D23950);
  v1 = sub_23B6F7974();
  if (v1 && (v2 = v1, sub_23B6F5EB8(), sub_23B6F7734(), v2, (v3 = *(v0 + 16)) != 0))
  {
    v5 = *(v0 + 40);
    v4 = *(v0 + 48);
    v6 = *(v0 + 24);
    *v4 = v3;
    *(v4 + 8) = v6;
    *(v4 + 24) = v5;
    v7 = *(v0 + 8);
  }

  else
  {
    sub_23B6F72A4();
    swift_allocError();
    swift_willThrow();
    v7 = *(v0 + 8);
  }

  return v7();
}

uint64_t sub_23B6F4E9C()
{
  sub_23B6F7A04();
  MEMORY[0x23EEA4C10](0);
  return sub_23B6F7A24();
}

uint64_t sub_23B6F4F08(uint64_t a1)
{
  sub_23B6F7A04();
  MEMORY[0x23EEA4C10](0);
  return sub_23B6F7A24();
}

uint64_t IntentStandardRepresentation<>.init(exporting:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_23B6F7884();
  v9 = sub_23B6F6988(&qword_2814F8AB8, MEMORY[0x277CCB120], &protocol conformance descriptor for PlaceDescriptor);
  return MEMORY[0x23EEA48E0](a1, a2, 0, 0, a3, v8, a4, v9);
}

uint64_t IntentStandardRepresentation<>.init(exporting:importing:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = sub_23B6F7884();
  v13 = sub_23B6F6988(&qword_2814F8AB8, MEMORY[0x277CCB120], &protocol conformance descriptor for PlaceDescriptor);
  return MEMORY[0x23EEA48E0](a1, a2, a3, a4, a5, v12, a6, v13);
}

char *sub_23B6F50E4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E17B760, &qword_23B6F8BD0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_23B6F51F0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E17B768, &qword_23B6F8BD8);
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

void *sub_23B6F52FC(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
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

unint64_t sub_23B6F54D8(uint64_t a1, uint64_t a2)
{
  sub_23B6F7A04();
  sub_23B6F7964();
  v4 = sub_23B6F7A24();

  return sub_23B6F5810(a1, a2, v4);
}

uint64_t sub_23B6F5550(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E17B750, &qword_23B6F8BC0);
  v37 = v4;
  result = sub_23B6F7994();
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

      sub_23B6F7A04();
      sub_23B6F7964();
      result = sub_23B6F7A24();
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

unint64_t sub_23B6F5810(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_23B6F79A4())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

void *sub_23B6F58C8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E17B750, &qword_23B6F8BC0);
  v2 = *v0;
  v3 = sub_23B6F7984();
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

char *sub_23B6F5A40(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_23B6F7360(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_23B6F5A60(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_23B6F5A74(a1, a2);
  }

  return a1;
}

uint64_t sub_23B6F5A74(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

unint64_t sub_23B6F5AC8()
{
  result = qword_27E17B508;
  if (!qword_27E17B508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E17B508);
  }

  return result;
}

uint64_t sub_23B6F5B1C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E17B510, &qword_23B6F7DC0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_23B6F5B84()
{
  result = qword_27E17B530;
  if (!qword_27E17B530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E17B530);
  }

  return result;
}

unint64_t sub_23B6F5BDC()
{
  result = qword_27E17B538;
  if (!qword_27E17B538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E17B538);
  }

  return result;
}

unint64_t sub_23B6F5C34()
{
  result = qword_27E17B540;
  if (!qword_27E17B540)
  {
    sub_23B6F725C(255, &qword_27E17B4F0, 0x277CBFC40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E17B540);
  }

  return result;
}

unint64_t sub_23B6F5C94()
{
  result = qword_27E17B548;
  if (!qword_27E17B548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E17B548);
  }

  return result;
}

unint64_t sub_23B6F5EB8()
{
  result = qword_27E17B558;
  if (!qword_27E17B558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E17B558);
  }

  return result;
}

unint64_t sub_23B6F5F14()
{
  result = qword_27E17B560;
  if (!qword_27E17B560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E17B560);
  }

  return result;
}

unint64_t sub_23B6F5F6C()
{
  result = qword_27E17B568;
  if (!qword_27E17B568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E17B568);
  }

  return result;
}

unint64_t sub_23B6F5FC4()
{
  result = qword_27E17B570;
  if (!qword_27E17B570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E17B570);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_23B6F60A8()
{
  result = qword_27E17B588;
  if (!qword_27E17B588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E17B588);
  }

  return result;
}

unint64_t sub_23B6F60FC()
{
  result = qword_27E17B590;
  if (!qword_27E17B590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E17B590);
  }

  return result;
}

unint64_t sub_23B6F6150()
{
  result = qword_27E17B598;
  if (!qword_27E17B598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E17B598);
  }

  return result;
}

unint64_t sub_23B6F61A8()
{
  result = qword_27E17B5A0;
  if (!qword_27E17B5A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E17B5A0);
  }

  return result;
}

unint64_t sub_23B6F6238()
{
  result = qword_27E17B5C0;
  if (!qword_27E17B5C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E17B5C0);
  }

  return result;
}

unint64_t sub_23B6F6294()
{
  result = qword_27E17B5C8;
  if (!qword_27E17B5C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E17B5C8);
  }

  return result;
}

unint64_t sub_23B6F62EC()
{
  result = qword_27E17B5D0;
  if (!qword_27E17B5D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E17B5D0);
  }

  return result;
}

unint64_t sub_23B6F6344()
{
  result = qword_27E17B5D8;
  if (!qword_27E17B5D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E17B5D8);
  }

  return result;
}

unint64_t sub_23B6F63D4()
{
  result = qword_27E17B5F0;
  if (!qword_27E17B5F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E17B5F0);
  }

  return result;
}

unint64_t sub_23B6F6428()
{
  result = qword_27E17B5F8;
  if (!qword_27E17B5F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E17B5F8);
  }

  return result;
}

unint64_t sub_23B6F647C()
{
  result = qword_27E17B600;
  if (!qword_27E17B600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E17B600);
  }

  return result;
}

unint64_t sub_23B6F64D4()
{
  result = qword_27E17B608;
  if (!qword_27E17B608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E17B608);
  }

  return result;
}

unint64_t sub_23B6F6564()
{
  result = qword_27E17B620;
  if (!qword_27E17B620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E17B620);
  }

  return result;
}

unint64_t sub_23B6F65C0()
{
  result = qword_27E17B628;
  if (!qword_27E17B628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E17B628);
  }

  return result;
}

unint64_t sub_23B6F6618()
{
  result = qword_27E17B630;
  if (!qword_27E17B630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E17B630);
  }

  return result;
}

unint64_t sub_23B6F6670()
{
  result = qword_27E17B638;
  if (!qword_27E17B638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E17B638);
  }

  return result;
}

unint64_t sub_23B6F6700()
{
  result = qword_27E17B650;
  if (!qword_27E17B650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E17B650);
  }

  return result;
}

unint64_t sub_23B6F6754()
{
  result = qword_27E17B658;
  if (!qword_27E17B658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E17B658);
  }

  return result;
}

unint64_t sub_23B6F67A8()
{
  result = qword_27E17B660;
  if (!qword_27E17B660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E17B660);
  }

  return result;
}

unint64_t sub_23B6F6800()
{
  result = qword_27E17B668;
  if (!qword_27E17B668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E17B668);
  }

  return result;
}

unint64_t sub_23B6F6890()
{
  result = qword_27E17B680;
  if (!qword_27E17B680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E17B680);
  }

  return result;
}

unint64_t sub_23B6F68E8()
{
  result = qword_27E17B688;
  if (!qword_27E17B688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E17B688);
  }

  return result;
}

uint64_t sub_23B6F6988(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_23B6F69D4()
{
  result = qword_27E17B698;
  if (!qword_27E17B698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E17B698);
  }

  return result;
}

unint64_t sub_23B6F6A2C()
{
  result = qword_27E17B6A0;
  if (!qword_27E17B6A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E17B6A0);
  }

  return result;
}

unint64_t sub_23B6F6A84()
{
  result = qword_27E17B6A8;
  if (!qword_27E17B6A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E17B6A8);
  }

  return result;
}

unint64_t sub_23B6F6ADC()
{
  result = qword_27E17B6B0;
  if (!qword_27E17B6B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E17B6B0);
  }

  return result;
}

unint64_t sub_23B6F6B6C()
{
  result = qword_27E17B6C8;
  if (!qword_27E17B6C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E17B6C8);
  }

  return result;
}

unint64_t sub_23B6F6BC0()
{
  result = qword_27E17B6D0;
  if (!qword_27E17B6D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E17B6D0);
  }

  return result;
}

unint64_t sub_23B6F6C14()
{
  result = qword_27E17B6D8;
  if (!qword_27E17B6D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E17B6D8);
  }

  return result;
}

unint64_t sub_23B6F6C6C()
{
  result = qword_27E17B6E0;
  if (!qword_27E17B6E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E17B6E0);
  }

  return result;
}

unint64_t sub_23B6F6CFC()
{
  result = qword_27E17B6F8;
  if (!qword_27E17B6F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E17B6F8);
  }

  return result;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_23B6F6D78(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_23B6F6DC0(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_23B6F6E24(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_23B6F6E6C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t *__swift_initWithCopy_strong(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  return a1;
}

uint64_t *__swift_assignWithCopy_strong(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  return a1;
}

uint64_t *__swift_assignWithTake_strong(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  return a1;
}

uint64_t getEnumTagSinglePayload for PlaceDescriptorEntity.SupportingPlaceRepresentationEntity(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 8))
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

uint64_t storeEnumTagSinglePayload for PlaceDescriptorEntity.SupportingPlaceRepresentationEntity(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_23B6F7010(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_23B6F7058(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_23B6F70A4(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
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

unint64_t sub_23B6F70EC()
{
  result = qword_27E17B710;
  if (!qword_27E17B710)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E17B718, &unk_23B6F8B80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E17B710);
  }

  return result;
}

unint64_t sub_23B6F7160()
{
  result = qword_27E17B720;
  if (!qword_27E17B720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E17B720);
  }

  return result;
}

unint64_t sub_23B6F71B4()
{
  result = qword_27E17B728;
  if (!qword_27E17B728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E17B728);
  }

  return result;
}

unint64_t sub_23B6F7208()
{
  result = qword_27E17B730;
  if (!qword_27E17B730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E17B730);
  }

  return result;
}

uint64_t sub_23B6F725C(uint64_t a1, unint64_t *a2, void *a3)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

unint64_t sub_23B6F72A4()
{
  result = qword_27E17B740;
  if (!qword_27E17B740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E17B740);
  }

  return result;
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

char *sub_23B6F7360(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E17B770, &qword_23B6F8BE0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t getEnumTagSinglePayload for PlaceDescriptorEntity.Errors(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for PlaceDescriptorEntity.Errors(_WORD *result, int a2, int a3)
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

unint64_t sub_23B6F7570()
{
  result = qword_27E17B778;
  if (!qword_27E17B778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E17B778);
  }

  return result;
}