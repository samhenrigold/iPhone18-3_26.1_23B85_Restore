void *sub_2178FA138@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(a1 + 16);
  result = MEMORY[0x28223BE20](a1);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v2 + *(result + 23)) == 1)
  {
    v10 = (v2 + *(a1 + 80));
    v11 = v10[1];
    if (v11)
    {
      v12 = *v10;

      v13 = sub_2178F0F00(a1);
      v22 = v12;
      v23 = v11;
      if (v13)
      {
        v16 = 257;
      }

      else
      {
        v16 = 1;
      }

      v24 = v16;
      v25 = 0;
    }

    else
    {
      (*(v7 + 16))(v9, v2, v5);
      v20 = sub_2178F0F00(a1);
      v13 = sub_2178C4D74(v9, 1, v20 & 1, v5, *(a1 + 40));
      v22 = v13;
      v23 = v14;
      v24 = v15 & 0x101;
      v25 = 1;
    }

    sub_2178FE668(v13, v14, v15);
    result = sub_217966F8C();
    v17 = v26;
    v18 = v27;
    if (v29)
    {
      v21 = 0x10000;
    }

    else
    {
      v21 = 0;
    }

    v19 = v21 | v28;
  }

  else
  {
    v17 = 0;
    v18 = 0;
    v19 = 16711680;
  }

  *a2 = v17;
  *(a2 + 8) = v18;
  *(a2 + 16) = v19;
  *(a2 + 18) = BYTE2(v19);
  return result;
}

uint64_t sub_2178FA2E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9[0] = a2;
  v9[1] = a3;
  v9[2] = a4;
  v9[3] = a5;
  v9[4] = a6;
  v9[5] = a7;
  v7 = _s9HItemCellVMa(0, v9);
  return sub_2178F22D8(v7);
}

uint64_t sub_2178FA328@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v55 = a2;
  v54 = sub_2179669FC();
  v48 = *(v54 - 8);
  v4 = MEMORY[0x28223BE20](v54);
  v53 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = a1;
  v7 = *--a1;
  v8 = v7;
  v9 = *(v7 + 64);
  MEMORY[0x28223BE20](v4);
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8CEE0, &unk_21796F510);
  v50 = *(v58 - 8);
  MEMORY[0x28223BE20](v58);
  v49 = &v45 - v10;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8CF10, &qword_21796F520);
  v52 = *(v59 - 8);
  MEMORY[0x28223BE20](v59);
  v51 = &v45 - v11;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8CF18, &qword_21796F528);
  MEMORY[0x28223BE20](v56);
  v13 = &v45 - v12;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8CE68, &qword_21796F4C0);
  MEMORY[0x28223BE20](v57);
  v15 = (&v45 - v14);
  v16 = a1[6];
  v17 = a1[3];
  if ((*(v16 + 128))(v17, v16))
  {
    sub_2178FB748(v6, v15);
    v18 = sub_2179673FC();
    sub_21796660C();
    v19 = v15 + *(v57 + 36);
    *v19 = v18;
    *(v19 + 1) = v20;
    *(v19 + 2) = v21;
    *(v19 + 3) = v22;
    *(v19 + 4) = v23;
    v19[40] = 0;
    sub_21788D484(v15, v13, &qword_27CB8CE68, &qword_21796F4C0);
    swift_storeEnumTagMultiPayload();
    sub_2178FDA80();
    v24 = sub_2178FE83C(&qword_27CB8CEE8, &qword_27CB8CEE0, &unk_21796F510, MEMORY[0x277CDF028]);
    v25 = sub_2178FE970(&qword_27CB8A708, MEMORY[0x277CDDB18], MEMORY[0x277CDDB08]);
    v60 = v58;
    v61 = v54;
    v62 = v24;
    v63 = v25;
    swift_getOpaqueTypeConformance2();
    sub_217966F8C();
    return sub_217899038(v15, &qword_27CB8CE68);
  }

  else
  {
    v27 = *(v8 + 16);
    v45 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
    v46 = v2;
    v27(v45, v2, v6);
    v28 = (*(v8 + 80) + 64) & ~*(v8 + 80);
    v29 = swift_allocObject();
    v30 = v6[3];
    v31 = v6[4];
    *(v29 + 2) = v17;
    *(v29 + 3) = v30;
    *(v29 + 4) = v31;
    *(v29 + 5) = v16;
    v47 = v13;
    v32 = v6[6];
    v33 = v6[7];
    *(v29 + 6) = v32;
    *(v29 + 7) = v33;
    v34 = (*(v8 + 32))(&v29[v28], v45, v6);
    MEMORY[0x28223BE20](v34);
    *(&v45 - 8) = v17;
    *(&v45 - 7) = v30;
    *(&v45 - 6) = v31;
    *(&v45 - 5) = v16;
    *(&v45 - 4) = v32;
    *(&v45 - 3) = v33;
    *(&v45 - 2) = v46;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8CF20, &qword_21796F530);
    sub_2178FE83C(&qword_27CB8CF28, &qword_27CB8CF20, &qword_21796F530, MEMORY[0x277CE1138]);
    v35 = v49;
    sub_217967C6C();
    v36 = v53;
    sub_2179669EC();
    v37 = sub_2178FE83C(&qword_27CB8CEE8, &qword_27CB8CEE0, &unk_21796F510, MEMORY[0x277CDF028]);
    v38 = sub_2178FE970(&qword_27CB8A708, MEMORY[0x277CDDB18], MEMORY[0x277CDDB08]);
    v39 = v51;
    v40 = v58;
    v41 = v54;
    sub_2179676FC();
    v42 = v41;
    (*(v48 + 8))(v36, v41);
    (*(v50 + 8))(v35, v40);
    v43 = v52;
    v44 = v59;
    (*(v52 + 16))(v47, v39, v59);
    swift_storeEnumTagMultiPayload();
    sub_2178FDA80();
    v60 = v40;
    v61 = v42;
    v62 = v37;
    v63 = v38;
    swift_getOpaqueTypeConformance2();
    sub_217966F8C();
    return (*(v43 + 8))(v39, v44);
  }
}

double sub_2178FAA50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v77 = a7;
  v78 = a1;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8A810, &unk_21796A9A0);
  MEMORY[0x28223BE20](v12 - 8);
  v62 = &v62 - v13;
  v14 = _s5AlertVMa(0);
  MEMORY[0x28223BE20](v14);
  v69 = &v62 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8A818, &qword_21796F490);
  v17 = MEMORY[0x28223BE20](v16);
  v76 = &v62 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v20 = &v62 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8A578, &qword_21796A750);
  v22 = MEMORY[0x28223BE20](v21 - 8);
  v68 = &v62 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v22);
  v74 = &v62 - v25;
  v26 = MEMORY[0x28223BE20](v24);
  v75 = &v62 - v27;
  v28 = MEMORY[0x28223BE20](v26);
  v70 = &v62 - v29;
  v30 = MEMORY[0x28223BE20](v28);
  v32 = &v62 - v31;
  MEMORY[0x28223BE20](v30);
  v34 = &v62 - v33;
  v63 = a2;
  v79[0] = a2;
  v79[1] = a3;
  v64 = a3;
  v65 = a4;
  v79[2] = a4;
  v79[3] = a5;
  v66 = a5;
  v67 = a6;
  v79[4] = a6;
  v79[5] = v77;
  v71 = _s9HItemCellVMa(0, v79);
  v35 = *(v71 + 124);
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CB8A598, &unk_21796AD60);
  v72 = v35;
  sub_217967C1C();
  if (qword_27CB8A428 != -1)
  {
    swift_once();
  }

  v36 = __swift_project_value_buffer(v14, qword_27CB97A90);
  sub_217864EC8(v36, v32);
  __swift_storeEnumTagSinglePayload(v32, 0, 1, v14);
  v73 = v16;
  v37 = *(v16 + 48);
  sub_21788D484(v34, v20, &qword_27CB8A578, &qword_21796A750);
  sub_21788D484(v32, &v20[v37], &qword_27CB8A578, &qword_21796A750);
  if (__swift_getEnumTagSinglePayload(v20, 1, v14) == 1)
  {
    sub_217899038(v32, &qword_27CB8A578);
    sub_217899038(v34, &qword_27CB8A578);
    if (__swift_getEnumTagSinglePayload(&v20[v37], 1, v14) == 1)
    {
      sub_217899038(v20, &qword_27CB8A578);
LABEL_18:
      sub_2178FB30C(v71);
      return result;
    }

    goto LABEL_8;
  }

  v38 = v70;
  sub_21788D484(v20, v70, &qword_27CB8A578, &qword_21796A750);
  if (__swift_getEnumTagSinglePayload(&v20[v37], 1, v14) == 1)
  {
    sub_217899038(v32, &qword_27CB8A578);
    sub_217899038(v34, &qword_27CB8A578);
    sub_2178FD7CC(v38, _s5AlertVMa);
LABEL_8:
    sub_217899038(v20, &qword_27CB8A818);
    goto LABEL_9;
  }

  v46 = v69;
  sub_217865358(&v20[v37], v69);
  sub_21791EA90();
  v48 = v47;
  sub_2178FD7CC(v46, _s5AlertVMa);
  sub_217899038(v32, &qword_27CB8A578);
  sub_217899038(v34, &qword_27CB8A578);
  sub_2178FD7CC(v38, _s5AlertVMa);
  sub_217899038(v20, &qword_27CB8A578);
  if (v48)
  {
    goto LABEL_18;
  }

LABEL_9:
  v39 = v75;
  sub_217967C1C();
  if (qword_27CB8A430 != -1)
  {
    swift_once();
  }

  v40 = __swift_project_value_buffer(v14, qword_27CB97AA8);
  v41 = v74;
  sub_217864EC8(v40, v74);
  __swift_storeEnumTagSinglePayload(v41, 0, 1, v14);
  v42 = *(v73 + 48);
  v43 = v76;
  sub_21788D484(v39, v76, &qword_27CB8A578, &qword_21796A750);
  sub_21788D484(v41, v43 + v42, &qword_27CB8A578, &qword_21796A750);
  if (__swift_getEnumTagSinglePayload(v43, 1, v14) != 1)
  {
    v44 = v68;
    sub_21788D484(v43, v68, &qword_27CB8A578, &qword_21796A750);
    if (__swift_getEnumTagSinglePayload(v43 + v42, 1, v14) != 1)
    {
      v49 = v69;
      sub_217865358(v43 + v42, v69);
      sub_21791EA90();
      v51 = v50;
      sub_2178FD7CC(v49, _s5AlertVMa);
      sub_217899038(v41, &qword_27CB8A578);
      sub_217899038(v39, &qword_27CB8A578);
      sub_2178FD7CC(v44, _s5AlertVMa);
      sub_217899038(v43, &qword_27CB8A578);
      if ((v51 & 1) == 0)
      {
        return result;
      }

      goto LABEL_20;
    }

    sub_217899038(v41, &qword_27CB8A578);
    sub_217899038(v39, &qword_27CB8A578);
    sub_2178FD7CC(v44, _s5AlertVMa);
LABEL_16:
    sub_217899038(v43, &qword_27CB8A818);
    return result;
  }

  sub_217899038(v41, &qword_27CB8A578);
  sub_217899038(v39, &qword_27CB8A578);
  if (__swift_getEnumTagSinglePayload(v43 + v42, 1, v14) != 1)
  {
    goto LABEL_16;
  }

  sub_217899038(v43, &qword_27CB8A578);
LABEL_20:
  v52 = sub_21796923C();
  __swift_storeEnumTagSinglePayload(v62, 1, 1, v52);
  v53 = swift_allocObject();
  v54 = v64;
  v55 = v67;
  _s9ViewModelCMa(0, v64, v67, v56);
  swift_getWitnessTable();
  sub_217966A9C();
  swift_weakInit();

  sub_21796920C();

  v57 = sub_2179691FC();
  v58 = swift_allocObject();
  v59 = MEMORY[0x277D85700];
  v58[2] = v57;
  v58[3] = v59;
  v58[4] = v63;
  v58[5] = v54;
  v60 = v66;
  v58[6] = v65;
  v58[7] = v60;
  v61 = v77;
  v58[8] = v55;
  v58[9] = v61;
  v58[10] = v53;

  sub_2178D2328();

  return result;
}

uint64_t sub_2178FB3C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a1;
  v4[6] = a4;
  sub_21796920C();
  v4[7] = sub_2179691FC();
  v6 = sub_2179691BC();
  v4[8] = v6;
  v4[9] = v5;

  return MEMORY[0x2822009F8](sub_2178FB460, v6, v5);
}

uint64_t sub_2178FB460()
{
  OUTLINED_FUNCTION_62();
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 80) = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    *(v0 + 88) = v2;
    *v2 = v0;
    v2[1] = sub_2178FB548;

    return sub_2178E2CD0(v3);
  }

  else
  {

    OUTLINED_FUNCTION_7_7();

    return v5();
  }
}

uint64_t sub_2178FB548()
{
  v2 = *v1;

  if (v0)
  {

    v3 = *(v2 + 64);
    v4 = *(v2 + 72);
    v5 = sub_2178FB6F0;
  }

  else
  {

    v3 = *(v2 + 64);
    v4 = *(v2 + 72);
    v5 = sub_2178FB68C;
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

uint64_t sub_2178FB68C()
{
  OUTLINED_FUNCTION_62();

  **(v0 + 40) = 0;
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2178FB6F0()
{
  OUTLINED_FUNCTION_62();

  OUTLINED_FUNCTION_7_7();

  return v0();
}

void *sub_2178FB748@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v110 = a2;
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8CED8, &unk_21796F500);
  MEMORY[0x28223BE20](v97);
  v83 = (&v82 - v4);
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8CF30, &qword_21796F538);
  MEMORY[0x28223BE20](v95);
  v96 = &v82 - v5;
  v90 = sub_21796697C();
  v89 = *(v90 - 8);
  v6 = MEMORY[0x28223BE20](v90);
  v88 = &v82 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v87 = &v82 - v8;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8CEB8, &qword_21796F4F0);
  MEMORY[0x28223BE20](v84);
  v86 = (&v82 - v9);
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8CEA8, &qword_21796F4E8);
  v10 = MEMORY[0x28223BE20](v94);
  v85 = &v82 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v91 = &v82 - v12;
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8CE98, &qword_21796F4E0);
  MEMORY[0x28223BE20](v106);
  v98 = &v82 - v13;
  v14 = *(a1 + 32);
  v111 = *(a1 + 16);
  v112 = v14;
  v113 = *(a1 + 48);
  v15 = _s9HItemCellV30AccessoryButtonImageDescriptorVMa(255, &v111);
  v93 = sub_21796944C();
  KeyPath = *(v93 - 8);
  v16 = MEMORY[0x28223BE20](v93);
  v18 = &v82 - v17;
  v102 = v15;
  v101 = *(v15 - 8);
  MEMORY[0x28223BE20](v16);
  v99 = &v82 - v19;
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8CF38, &qword_21796F540);
  MEMORY[0x28223BE20](v108);
  v109 = &v82 - v20;
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8CF40, &unk_21796F548);
  MEMORY[0x28223BE20](v103);
  v104 = &v82 - v21;
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8CE88, &unk_21796F4D0);
  MEMORY[0x28223BE20](v107);
  v105 = &v82 - v22;
  v23 = sub_2179671EC();
  v100 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v25 = &v82 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8AB98, &qword_21796BD70);
  v27 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v29 = &v82 - v28;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8ABA0, &qword_21796B190);
  MEMORY[0x28223BE20](v30);
  v33 = &v82 - v32;
  if (*(v2 + *(a1 + 128)) == 1)
  {
    v102 = v31;
    sub_21796677C();
    sub_2179671DC();
    v34 = sub_2178FE83C(&qword_27CB8ABA8, &qword_27CB8AB98, &qword_21796BD70, MEMORY[0x277CDD7F8]);
    v35 = sub_2178FE970(&qword_27CB8ABB0, MEMORY[0x277CDE330], MEMORY[0x277CDE318]);
    sub_21796766C();
    (*(v100 + 8))(v25, v23);
    (*(v27 + 8))(v29, v26);
    v36 = v102;
    (*(v102 + 16))(v104, v33, v30);
    swift_storeEnumTagMultiPayload();
    *&v111 = v26;
    *(&v111 + 1) = v23;
    *&v112 = v34;
    *(&v112 + 1) = v35;
    swift_getOpaqueTypeConformance2();
    sub_2178FDCE4();
    v37 = v105;
    sub_217966F8C();
    sub_21788D484(v37, v109, &qword_27CB8CE88, &unk_21796F4D0);
    swift_storeEnumTagMultiPayload();
    sub_2178FDB98();
    sub_217966F8C();
    sub_217899038(v37, &qword_27CB8CE88);
    return (*(v36 + 8))(v33, v30);
  }

  else
  {
    *&v82 = v26;
    *(&v82 + 1) = v23;
    v100 = v30;
    sub_2178F19E8(a1, v18);
    v39 = v102;
    if (__swift_getEnumTagSinglePayload(v18, 1, v102) == 1)
    {
      (*(KeyPath + 8))(v18, v93);
      swift_storeEnumTagMultiPayload();
      sub_2178FDB98();
      return sub_217966F8C();
    }

    else
    {
      v40 = v99;
      (*(v101 + 32))(v99, v18, v39);
      v41 = *&v40[*(v39 + 76)];
      if (v41)
      {

        v93 = sub_217967B8C();
        v42 = *(v40 + 2);
        KeyPath = swift_getKeyPath();
        v43 = *(v39 + 72);
        v44 = swift_getKeyPath();
        v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8B4C0, &qword_217973770);
        v46 = v86;
        v47 = (v86 + *(v45 + 36));
        v48 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8B4F0, &qword_21796BD60) + 28);
        v49 = sub_217967BCC();
        v50 = v47 + v48;
        v39 = v102;
        (*(*(v49 - 8) + 16))(v50, &v40[v43], v49);
        *v47 = v44;
        v51 = KeyPath;
        *v46 = v93;
        v46[1] = v51;
        v46[2] = v42;
        *(v46 + *(v84 + 36)) = v41;

        v52 = v87;
        sub_2179565B8();
        v53 = v89;
        v54 = v88;
        v55 = v90;
        (*(v89 + 104))(v88, *MEMORY[0x277CDFA90], v90);
        LOBYTE(v42) = sub_21796696C();
        v56 = *(v53 + 8);
        v56(v54, v55);
        v56(v52, v55);
        if (v42)
        {
          v57 = -1.0;
        }

        else
        {
          v57 = 1.0;
        }

        sub_217967EBC();
        v59 = v58;
        v61 = v60;
        v62 = v85;
        sub_217898E78(v46, v85, &qword_27CB8CEB8, &qword_21796F4F0);
        v63 = v62 + *(v94 + 36);
        *v63 = v57;
        *(v63 + 8) = 0x3FF0000000000000;
        *(v63 + 16) = v59;
        *(v63 + 24) = v61;
        v64 = &qword_27CB8CEA8;
        v65 = v91;
        sub_217898E78(v62, v91, &qword_27CB8CEA8, &qword_21796F4E8);
        sub_21788D484(v65, v96, &qword_27CB8CEA8, &qword_21796F4E8);
        swift_storeEnumTagMultiPayload();
        sub_2178FDD70();
        sub_2178FDEB4();
        v66 = v98;
        sub_217966F8C();
        v67 = v99;

        v68 = v65;
      }

      else
      {

        v69 = sub_217967B8C();
        v70 = *(v40 + 2);
        v71 = swift_getKeyPath();
        v72 = *(v39 + 72);
        v73 = swift_getKeyPath();
        v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8B4C0, &qword_217973770);
        v75 = v83;
        v76 = (v83 + *(v74 + 36));
        v77 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8B4F0, &qword_21796BD60) + 28);
        v78 = sub_217967BCC();
        (*(*(v78 - 8) + 16))(v76 + v77, &v40[v72], v78);
        *v76 = v73;
        *v75 = v69;
        v75[1] = v71;
        v75[2] = v70;

        *(v75 + *(v97 + 36)) = sub_2179670EC();
        v64 = &qword_27CB8CED8;
        sub_21788D484(v75, v96, &qword_27CB8CED8, &unk_21796F500);
        swift_storeEnumTagMultiPayload();
        sub_2178FDD70();
        sub_2178FDEB4();
        v67 = v40;
        v66 = v98;
        sub_217966F8C();
        v68 = v75;
      }

      sub_217899038(v68, v64);
      sub_21788D484(v66, v104, &qword_27CB8CE98, &qword_21796F4E0);
      swift_storeEnumTagMultiPayload();
      v79 = sub_2178FE83C(&qword_27CB8ABA8, &qword_27CB8AB98, &qword_21796BD70, MEMORY[0x277CDD7F8]);
      v80 = sub_2178FE970(&qword_27CB8ABB0, MEMORY[0x277CDE330], MEMORY[0x277CDE318]);
      v111 = v82;
      *&v112 = v79;
      *(&v112 + 1) = v80;
      swift_getOpaqueTypeConformance2();
      sub_2178FDCE4();
      v81 = v105;
      sub_217966F8C();
      sub_21788D484(v81, v109, &qword_27CB8CE88, &unk_21796F4D0);
      swift_storeEnumTagMultiPayload();
      sub_2178FDB98();
      sub_217966F8C();
      sub_217899038(v81, &qword_27CB8CE88);
      sub_217899038(v66, &qword_27CB8CE98);
      return (*(v101 + 8))(v67, v39);
    }
  }
}

uint64_t sub_2178FC668(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8CC50, &qword_21796F620);
  MEMORY[0x28223BE20](v14 - 8);
  v55 = &v53 - v15;
  v57 = sub_21796595C();
  v54 = *(v57 - 8);
  MEMORY[0x28223BE20](v57);
  v56 = &v53 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8A578, &qword_21796A750);
  v18 = MEMORY[0x28223BE20](v17 - 8);
  v58 = (&v53 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v18);
  v21 = &v53 - v20;
  v65[0] = a2;
  v65[1] = a3;
  v65[2] = a4;
  v66 = a5;
  v67 = a6;
  v68 = a7;
  v59 = _s9HItemCellVMa(0, v65);
  _s9ViewModelCMa(0, a3, a6, v22);
  swift_getWitnessTable();
  sub_217966A9C();
  sub_2178E2AD0(a1, a2);
  v24 = v23;

  if (v24)
  {
    if (qword_27CB8A430 != -1)
    {
      swift_once();
    }

    v25 = _s5AlertVMa(0);
    v26 = v25;
    v27 = qword_27CB97AA8;
LABEL_5:
    v28 = __swift_project_value_buffer(v25, v27);
    sub_217864EC8(v28, v21);
    __swift_storeEnumTagSinglePayload(v21, 0, 1, v26);
    sub_21788D484(v21, v58, &qword_27CB8A578, &qword_21796A750);
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CB8A598, &unk_21796AD60);
    sub_217967C2C();
    return sub_217899038(v21, &qword_27CB8A578);
  }

  sub_217966A9C();
  sub_2178E0E64();
  v31 = v30;

  if (v31)
  {
    sub_217966A9C();
    sub_2178E1804();
    v33 = v32;

    if ((v33 & 1) == 0)
    {
      if (qword_27CB8A428 != -1)
      {
        swift_once();
      }

      v25 = _s5AlertVMa(0);
      v26 = v25;
      v27 = qword_27CB97A90;
      goto LABEL_5;
    }
  }

  sub_217938234();
  v34 = __swift_project_boxed_opaque_existential_1(v65, v66);
  v58 = &v53;
  MEMORY[0x28223BE20](v34);
  (*(v36 + 16))(&v53 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0));
  v37 = v55;
  sub_21796596C();
  v38 = v57;
  if (__swift_getEnumTagSinglePayload(v37, 1, v57) == 1)
  {
    sub_217899038(v37, &qword_27CB8CC50);
    __swift_destroy_boxed_opaque_existential_1(v65);
    v39 = v59;
  }

  else
  {
    v40 = v54;
    (*(v54 + 32))(v56, v37, v38);
    __swift_destroy_boxed_opaque_existential_1(v65);
    sub_217966A9C();
    sub_2178E1804();
    v42 = v41;

    v39 = v59;
    sub_217956100();
    v43 = v66;
    if (v66)
    {
      v44 = v42 & 1;
      v45 = v67;
      __swift_project_boxed_opaque_existential_1(v65, v66);
      v64 = v44;
      v46 = a1 + *(v39 + 68);
      v48 = *(v46 + 8);
      v47 = *(v46 + 16);
      v49 = *(v46 + 24);
      v60[0] = *v46;
      v61 = v48;
      v62 = v47;
      v63 = v49;
      v50 = *(v45 + 24);

      sub_217863EC4(v49);
      v51 = v56;
      v50(v56, &v64, v60, v43, v45);
      v52 = v63;

      sub_2178643E0(v52);
      (*(v40 + 8))(v51, v38);
      __swift_destroy_boxed_opaque_existential_1(v65);
    }

    else
    {
      (*(v40 + 8))(v56, v38);
      sub_217899038(v65, &qword_27CB8A630);
    }
  }

  return sub_2178FB30C(v39);
}

uint64_t sub_2178FCC90@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8CF48, &qword_21796F5B8);
  sub_2178FE83C(&qword_27CB8CF50, &qword_27CB8CF48, &qword_21796F5B8, MEMORY[0x277CE14C0]);
  *a8 = sub_2178767B0(v14);
  *(a8 + 8) = 0;
  *(a8 + 16) = 0;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8CF58, &qword_21796F5C0);
  return sub_2178FCD8C(a2, a3, a4, a5, a6, a7, (a8 + *(v15 + 44)));
}

uint64_t sub_2178FCD8C@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, void *a8@<X8>)
{
  v61 = a8;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8CE68, &qword_21796F4C0);
  MEMORY[0x28223BE20](v58);
  v15 = (&v58 - v14);
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8CF60, &qword_21796F5C8);
  v16 = MEMORY[0x28223BE20](v59);
  v60 = &v58 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v58 - v19;
  MEMORY[0x28223BE20](v18);
  v22 = &v58 - v21;
  v64 = a2;
  v65 = a3;
  v66 = a4;
  v67 = a5;
  v68 = a6;
  v69 = a7;
  v23 = _s9HItemCellVMa(0, &v64);
  v24 = sub_2178F2A00(v23);
  v62 = 0;
  KeyPath = 0;
  v26 = 0;
  v27 = 0;
  v28 = 0;
  v29 = 0;
  v30 = 0;
  v31 = 0;
  if (v24)
  {
    v62 = sub_217967BAC();
    v26 = sub_217967B4C();
    KeyPath = swift_getKeyPath();
    v32 = sub_2179673FC();
    sub_21796660C();
    v28 = v33;
    v29 = v34;
    v30 = v35;
    v31 = v36;
    LOBYTE(v64) = 0;
    v27 = v32;
  }

  sub_2178FB748(v23, v15);
  v37 = sub_2179673FC();
  sub_21796660C();
  v38 = v15 + *(v58 + 36);
  *v38 = v37;
  *(v38 + 1) = v39;
  *(v38 + 2) = v40;
  *(v38 + 3) = v41;
  *(v38 + 4) = v42;
  v38[40] = 0;
  v43 = sub_21796742C();
  sub_2178F2A00(v23);
  sub_21796660C();
  v45 = v44;
  v47 = v46;
  v49 = v48;
  v51 = v50;
  sub_217898E78(v15, v20, &qword_27CB8CE68, &qword_21796F4C0);
  v52 = &v20[*(v59 + 36)];
  *v52 = v43;
  *(v52 + 1) = v45;
  *(v52 + 2) = v47;
  *(v52 + 3) = v49;
  *(v52 + 4) = v51;
  v52[40] = 0;
  sub_217898E78(v20, v22, &qword_27CB8CF60, &qword_21796F5C8);
  v53 = v60;
  sub_21788D484(v22, v60, &qword_27CB8CF60, &qword_21796F5C8);
  v54 = v62;
  __src[0] = v62;
  __src[1] = KeyPath;
  __src[2] = v26;
  __src[3] = v27;
  __src[4] = v28;
  __src[5] = v29;
  __src[6] = v30;
  __src[7] = v31;
  LOBYTE(__src[8]) = 0;
  v55 = v61;
  memcpy(v61, __src, 0x41uLL);
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8CF68, &qword_21796F5D0);
  sub_21788D484(v53, v55 + *(v56 + 48), &qword_27CB8CF60, &qword_21796F5C8);
  sub_21788D484(__src, &v64, &qword_27CB8CF70, &qword_21796F5D8);
  sub_217899038(v22, &qword_27CB8CF60);
  sub_217899038(v53, &qword_27CB8CF60);
  v64 = v54;
  v65 = KeyPath;
  v66 = v26;
  v67 = v27;
  v68 = v28;
  v69 = v29;
  v70 = v30;
  v71 = v31;
  v72 = 0;
  return sub_217899038(&v64, &qword_27CB8CF70);
}

uint64_t sub_2178FD1A4(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v16 = *a1 == *a2 && a1[1] == a2[1];
  if (v16 || (sub_21796969C()) && (sub_21796746C())
  {
    v22[0] = a3;
    v22[1] = a4;
    v22[2] = a5;
    v22[3] = a6;
    v22[4] = a7;
    v22[5] = a8;
    v17 = _s9HItemCellV30AccessoryButtonImageDescriptorVMa(0, v22);
    if (sub_217967BBC())
    {
      v18 = *(v17 + 76);
      v19 = *(a2 + v18);
      if (*(a1 + v18))
      {
        if (v19)
        {

          v20 = sub_217967ACC();

          if (v20)
          {
            return 1;
          }
        }
      }

      else if (!v19)
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t sub_2178FD2AC(uint64_t a1, uint64_t a2)
{
  sub_217968FCC();
  sub_21796749C();
  sub_217967BCC();
  sub_2178FE970(&qword_27CB8D068, MEMORY[0x277CE1060], MEMORY[0x277CE1068]);
  sub_217968ECC();
  v5 = *(v2 + *(a2 + 76));
  if (!v5)
  {
    return sub_21796975C();
  }

  sub_21796975C();

  return MEMORY[0x282133420](a1, v5);
}

uint64_t sub_2178FD3A0(uint64_t a1)
{
  sub_21796973C();
  sub_2178FD2AC(v3, a1);
  return sub_21796977C();
}

uint64_t sub_2178FD404(uint64_t a1, uint64_t a2)
{
  sub_21796973C();
  sub_2178FD2AC(v4, a2);
  return sub_21796977C();
}

BOOL sub_2178FD448(_OWORD *a1, __int128 *a2)
{
  v2 = a1[1];
  v7[0] = *a1;
  v7[1] = v2;
  v3 = *a2;
  v4 = a2[1];
  v7[2] = a1[2];
  v8[0] = v3;
  v5 = a2[2];
  v8[1] = v4;
  v8[2] = v5;
  return sub_217862E8C(v7, v8);
}

unint64_t sub_2178FD4F0()
{
  result = qword_27CB8CE18;
  if (!qword_27CB8CE18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8CE10, &qword_21796F460);
    sub_2178FE83C(&qword_27CB8CE20, &qword_27CB8CE28, &qword_21796F468, MEMORY[0x277CE02F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB8CE18);
  }

  return result;
}

uint64_t sub_2178FD5E8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[10];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2178FD6DC;

  return sub_2178FB3C4(a1, v4, v5, v6);
}

uint64_t sub_2178FD6DC()
{
  OUTLINED_FUNCTION_62();
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_2178FD7CC(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_3();
  (*(v3 + 8))(a1);
  return a1;
}

unint64_t sub_2178FD854(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB8CE50;
  if (!qword_27CB8CE50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB8CE50);
  }

  return result;
}

uint64_t sub_2178FD8A8()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[6];
  v5 = v0[7];
  v16[0] = v0[2];
  v16[1] = v1;
  v16[2] = v2;
  v16[3] = v3;
  v16[4] = v4;
  v16[5] = v5;
  v6 = _s9HItemCellVMa(0, v16);
  OUTLINED_FUNCTION_48(v6);
  v8 = OUTLINED_FUNCTION_18_4(*(v7 + 80));
  return sub_2178FA2E4(v8, v9, v10, v11, v12, v13, v14);
}

unint64_t sub_2178FD934()
{
  result = qword_27CB8CE58;
  if (!qword_27CB8CE58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8CE38, &qword_21796F4A8);
    sub_2178FDA80();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8CEE0, &unk_21796F510);
    sub_2179669FC();
    sub_2178FE83C(&qword_27CB8CEE8, &qword_27CB8CEE0, &unk_21796F510, MEMORY[0x277CDF028]);
    sub_2178FE970(&qword_27CB8A708, MEMORY[0x277CDDB18], MEMORY[0x277CDDB08]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB8CE58);
  }

  return result;
}

unint64_t sub_2178FDA80()
{
  result = qword_27CB8CE60;
  if (!qword_27CB8CE60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8CE68, &qword_21796F4C0);
    sub_2178FDB0C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB8CE60);
  }

  return result;
}

unint64_t sub_2178FDB0C()
{
  result = qword_27CB8CE70;
  if (!qword_27CB8CE70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8CE78, &qword_21796F4C8);
    sub_2178FDB98();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB8CE70);
  }

  return result;
}

unint64_t sub_2178FDB98()
{
  result = qword_27CB8CE80;
  if (!qword_27CB8CE80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8CE88, &unk_21796F4D0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8AB98, &qword_21796BD70);
    sub_2179671EC();
    sub_2178FE83C(&qword_27CB8ABA8, &qword_27CB8AB98, &qword_21796BD70, MEMORY[0x277CDD7F8]);
    sub_2178FE970(&qword_27CB8ABB0, MEMORY[0x277CDE330], MEMORY[0x277CDE318]);
    swift_getOpaqueTypeConformance2();
    sub_2178FDCE4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB8CE80);
  }

  return result;
}

unint64_t sub_2178FDCE4()
{
  result = qword_27CB8CE90;
  if (!qword_27CB8CE90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8CE98, &qword_21796F4E0);
    sub_2178FDD70();
    sub_2178FDEB4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB8CE90);
  }

  return result;
}

unint64_t sub_2178FDD70()
{
  result = qword_27CB8CEA0;
  if (!qword_27CB8CEA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8CEA8, &qword_21796F4E8);
    sub_2178FDDFC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB8CEA0);
  }

  return result;
}

unint64_t sub_2178FDDFC()
{
  result = qword_27CB8CEB0;
  if (!qword_27CB8CEB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8CEB8, &qword_21796F4F0);
    sub_217898118();
    sub_2178FE83C(&qword_27CB8CEC0, &unk_27CB8CEC8, &unk_21796F4F8, MEMORY[0x277CE0740]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB8CEB0);
  }

  return result;
}

unint64_t sub_2178FDEB4()
{
  result = qword_27CB8CED0;
  if (!qword_27CB8CED0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8CED8, &unk_21796F500);
    sub_217898118();
    sub_2178FE83C(&qword_27CB8B548, &qword_27CB8B550, &qword_217973230, MEMORY[0x277CE0740]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB8CED0);
  }

  return result;
}

unint64_t sub_2178FDF6C()
{
  result = qword_27CB8CEF0;
  if (!qword_27CB8CEF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8CE30, &unk_21796F470);
    sub_2178FDFF8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB8CEF0);
  }

  return result;
}

unint64_t sub_2178FDFF8()
{
  result = qword_27CB8CEF8;
  if (!qword_27CB8CEF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8CE48, &qword_21796F4B8);
    v3 = sub_2178FE6DC(&qword_27CB8CF00, &qword_27CB8CE40, &qword_21796F4B0, sub_2178FD934);
    sub_2178FE0B0(v3, v1, v2);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB8CEF8);
  }

  return result;
}

unint64_t sub_2178FE0B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB8CF08;
  if (!qword_27CB8CF08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB8CF08);
  }

  return result;
}

uint64_t sub_2178FE11C(uint64_t (*a1)(uint64_t))
{
  v2 = v1[3];
  v3 = v1[4];
  v4 = v1[5];
  v5 = v1[6];
  v6 = v1[7];
  v12[0] = v1[2];
  v12[1] = v2;
  v12[2] = v3;
  v12[3] = v4;
  v12[4] = v5;
  v12[5] = v6;
  v7 = _s9HItemCellVMa(0, v12);
  OUTLINED_FUNCTION_48(v7);
  v9 = OUTLINED_FUNCTION_18_4(*(v8 + 80));

  return a1(v9);
}

uint64_t objectdestroyTm_4()
{
  v1 = v0[2];
  v22[0] = v0[1];
  v2 = v0[3];
  v22[1] = v1;
  v22[2] = v2;
  v3 = _s9HItemCellVMa(0, v22);
  v4 = v0 + ((*(*(v3 - 1) + 80) + 64) & ~*(*(v3 - 1) + 80));
  OUTLINED_FUNCTION_10();
  (*(v5 + 8))(v4);
  v6 = &v4[v3[17]];

  sub_2178643E0(*(v6 + 3));
  OUTLINED_FUNCTION_57_1(v3[20]);

  OUTLINED_FUNCTION_57_1(v3[24]);

  OUTLINED_FUNCTION_57_1(v3[26]);

  OUTLINED_FUNCTION_57_1(v3[28]);

  v7 = &v4[v3[29]];
  if (v7[40])
  {
    if (*(v7 + 3))
    {
      __swift_destroy_boxed_opaque_existential_1(v7);
    }
  }

  else
  {
  }

  v8 = v3[30];
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CB8CCE8, &dword_2179735F0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_21796697C();
    OUTLINED_FUNCTION_3();
    (*(v9 + 8))(&v4[v8]);
  }

  else
  {
  }

  v10 = &v4[v3[31]];
  v11 = _s5AlertVMa(0);
  if (!__swift_getEnumTagSinglePayload(v10, 1, v11))
  {

    v12 = v10 + *(v11 + 24);
    v13 = _s5AlertV7ControlVMa(0);
    if (!__swift_getEnumTagSinglePayload(v12, 1, v13))
    {

      v14 = *(v13 + 20);
      v15 = sub_2179665FC();
      if (!__swift_getEnumTagSinglePayload(v12 + v14, 1, v15))
      {
        OUTLINED_FUNCTION_10();
        (*(v16 + 8))(v12 + v14, v15);
      }
    }

    v17 = v10 + *(v11 + 28);
    if (!__swift_getEnumTagSinglePayload(v17, 1, v13))
    {

      v18 = *(v13 + 20);
      v19 = sub_2179665FC();
      if (!__swift_getEnumTagSinglePayload(v17 + v18, 1, v19))
      {
        OUTLINED_FUNCTION_10();
        (*(v20 + 8))(v17 + v18, v19);
      }
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CB8A598, &unk_21796AD60);

  return swift_deallocObject();
}

unint64_t sub_2178FE560()
{
  result = qword_27CB8CFA0;
  if (!qword_27CB8CFA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8CF98, &qword_21796F648);
    sub_2178FE5E4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB8CFA0);
  }

  return result;
}

unint64_t sub_2178FE5E4()
{
  result = qword_27CB8CFA8;
  if (!qword_27CB8CFA8)
  {
    v1 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8CFB0, &unk_21796F650);
    sub_2178FE668(v1, v2, v3);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB8CFA8);
  }

  return result;
}

unint64_t sub_2178FE668(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB8CFB8;
  if (!qword_27CB8CFB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB8CFB8);
  }

  return result;
}

uint64_t sub_2178FE6BC(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (BYTE2(a3) != 255)
  {
    return sub_2178FE6D4(result, a2);
  }

  return result;
}

uint64_t sub_2178FE6DC(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    v7 = OUTLINED_FUNCTION_63_1(0, a2);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v7, v8);
    a4();
    sub_2178FE970(&qword_27CB8A710, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2178FE78C()
{
  result = qword_27CB8CFC8;
  if (!qword_27CB8CFC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8CE08, &unk_21796F450);
    sub_2178FE6DC(&qword_27CB8CFD0, &qword_27CB8CDF8, &unk_21796F438, sub_21788C8AC);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB8CFC8);
  }

  return result;
}

uint64_t sub_2178FE83C(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    v6 = OUTLINED_FUNCTION_63_1(0, a2);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v6, v7);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_2178FE880(uint64_t a1)
{
  sub_217967BCC();
  if (v1 <= 0x3F)
  {
    sub_2178B0010(319, &qword_27CB8D060, MEMORY[0x277CE0F78]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_2178FE970(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t OUTLINED_FUNCTION_17_7()
{
  v2 = MEMORY[0x277CDFC08];

  return sub_2178FD7CC(v0, v2);
}

uint64_t OUTLINED_FUNCTION_24_5@<X0>(uint64_t a1@<X8>)
{
  *(v2 - 168) = *(a1 - 256);
  *(v2 - 160) = v1;
  return v2 - 184;
}

uint64_t OUTLINED_FUNCTION_25_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return swift_getTupleTypeMetadata3();
}

uint64_t Artwork.LoadingError.hashValue.getter()
{
  sub_21796973C();
  MEMORY[0x21CEA86B0](0);
  return sub_21796977C();
}

uint64_t sub_2178FEBCC(uint64_t a1)
{
  sub_21796973C();
  MEMORY[0x21CEA86B0](0);
  return sub_21796977C();
}

unint64_t sub_2178FEC18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB8D070;
  if (!qword_27CB8D070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB8D070);
  }

  return result;
}

_BYTE *_s12LoadingErrorOwst(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

_BYTE *_s12SearchSourceOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_2178FEE10(char a1)
{
  if (a1)
  {
    if (qword_27CB8A380 != -1)
    {
      OUTLINED_FUNCTION_39_0(&qword_27CB8A380);
    }

    OUTLINED_FUNCTION_1_13();
    OUTLINED_FUNCTION_87();
  }

  else
  {
    if (qword_27CB8A380 != -1)
    {
      OUTLINED_FUNCTION_39_0(&qword_27CB8A380);
    }

    OUTLINED_FUNCTION_87();
  }

  return sub_21796560C();
}

uint64_t sub_2178FEEDC(char a1)
{
  if (a1)
  {
    return 0x7972617262696CLL;
  }

  else
  {
    return 0x676F6C61746163;
  }
}

uint64_t sub_2178FEF0C(uint64_t a1, uint64_t a2)
{
  v2 = sub_217968F6C();
  v4 = v3;
  if (v2 == sub_217968F6C() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_21796969C();
  }

  return v7 & 1;
}

uint64_t sub_2178FEF90(unsigned __int8 a1, char a2)
{
  v2 = 0x6574736567677573;
  v3 = 0xE900000000000064;
  v4 = 0xE900000000000064;
  v5 = a1;
  v6 = 0x6574736567677573;
  switch(v5)
  {
    case 1:
      v6 = 0xD000000000000012;
      v4 = 0x8000000217973DF0;
      break;
    case 2:
      v6 = 0x796C746E65636572;
      v4 = 0xEF646579616C702DLL;
      break;
    case 3:
      v4 = 0xE600000000000000;
      v6 = 0x79616C706572;
      break;
    case 4:
      v4 = 0xE500000000000000;
      v6 = 0x6575657571;
      break;
    case 5:
      v6 = 0x676E6F732D706F74;
      goto LABEL_9;
    case 6:
      v6 = 0x626C612D6C6C7566;
      v4 = 0xEB00000000736D75;
      break;
    case 7:
      v6 = 0x7473696C79616C70;
LABEL_9:
      v4 = 0xE900000000000073;
      break;
    case 8:
      v4 = 0xE700000000000000;
      v6 = 0x73656C676E6973;
      break;
    case 9:
      v6 = 0x74616C69706D6F63;
      v4 = 0xEC000000736E6F69;
      break;
    case 10:
      v6 = 0x2D73726165707061;
      v4 = 0xEA00000000006E6FLL;
      break;
    default:
      break;
  }

  switch(a2)
  {
    case 1:
      v2 = 0xD000000000000012;
      v3 = 0x8000000217973DF0;
      break;
    case 2:
      OUTLINED_FUNCTION_4_11();
      break;
    case 3:
      v3 = 0xE600000000000000;
      v2 = 0x79616C706572;
      break;
    case 4:
      v3 = 0xE500000000000000;
      v2 = 0x6575657571;
      break;
    case 5:
      v2 = 0x676E6F732D706F74;
      goto LABEL_21;
    case 6:
      v2 = 0x626C612D6C6C7566;
      v3 = 0xEB00000000736D75;
      break;
    case 7:
      v2 = 0x7473696C79616C70;
LABEL_21:
      v3 = 0xE900000000000073;
      break;
    case 8:
      v3 = 0xE700000000000000;
      v2 = 0x73656C676E6973;
      break;
    case 9:
      v2 = 0x74616C69706D6F63;
      v3 = 0xEC000000736E6F69;
      break;
    case 10:
      v2 = 0x2D73726165707061;
      v3 = 0xEA00000000006E6FLL;
      break;
    default:
      break;
  }

  if (v6 == v2 && v4 == v3)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_21796969C();
  }

  return v8 & 1;
}

uint64_t sub_2178FF258(char a1, char a2)
{
  if (a1)
  {
    v2 = 0x7972617262696CLL;
  }

  else
  {
    v2 = 0x676F6C61746163;
  }

  if (a2)
  {
    v3 = 0x7972617262696CLL;
  }

  else
  {
    v3 = 0x676F6C61746163;
  }

  if (v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = sub_21796969C();
  }

  swift_bridgeObjectRelease_n();
  return v4 & 1;
}

uint64_t sub_2178FF2D8()
{
  sub_217965C6C();
  sub_2178FF9F8();
  sub_21796909C();
  sub_21796909C();
  if (v5 == v3 && v6 == v4)
  {
    v1 = 1;
  }

  else
  {
    v1 = sub_21796969C();
  }

  return v1 & 1;
}

uint64_t sub_2178FF388(char a1)
{
  if (a1)
  {
    if (qword_27CB8A380 != -1)
    {
      OUTLINED_FUNCTION_39_0(&qword_27CB8A380);
    }

    OUTLINED_FUNCTION_1_13();
  }

  else if (qword_27CB8A380 != -1)
  {
    OUTLINED_FUNCTION_39_0(&qword_27CB8A380);
  }

  OUTLINED_FUNCTION_87();
  return sub_21796560C();
}

uint64_t sub_2178FF454(uint64_t a1, uint64_t a2)
{
  v2 = sub_2179695EC();

  if (v2 == 1)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  if (v2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2178FF4A8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_2178FF454(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_2178FF5A8(uint64_t a1)
{
  v1 = a1;
  sub_21796973C();
  v2 = sub_217947F10(v1);
  OUTLINED_FUNCTION_3_12(v2, v3, v4);

  return sub_21796977C();
}

uint64_t sub_2178FF5F8(uint64_t a1)
{
  sub_21796973C();
  MEMORY[0x21CEA86B0](a1);
  return sub_21796977C();
}

uint64_t sub_2178FF670(uint64_t a1, char a2)
{
  switch(a2)
  {
    case 2:
      OUTLINED_FUNCTION_4_11();
      break;
    default:
      break;
  }

  sub_217968FCC();
}

uint64_t sub_2178FF7E8(uint64_t a1, char a2)
{
  sub_217968FCC();
}

uint64_t sub_2178FF848(uint64_t a1, char a2)
{
  sub_21796973C();
  sub_217968FCC();

  return sub_21796977C();
}

uint64_t sub_2178FF8BC(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  sub_21796973C();
  v3 = sub_217947F10(v2);
  OUTLINED_FUNCTION_3_12(v3, v4, v5);

  return sub_21796977C();
}

uint64_t sub_2178FF908(uint64_t a1, uint64_t a2)
{
  sub_21796973C();
  MEMORY[0x21CEA86B0](a2);
  return sub_21796977C();
}

unint64_t sub_2178FF950(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB8D078;
  if (!qword_27CB8D078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB8D078);
  }

  return result;
}

unint64_t sub_2178FF9A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB8D080;
  if (!qword_27CB8D080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB8D080);
  }

  return result;
}

unint64_t sub_2178FF9F8()
{
  result = qword_27CB8D088[0];
  if (!qword_27CB8D088[0])
  {
    sub_217965C6C();
    result = swift_getWitnessTable();
    atomic_store(result, qword_27CB8D088);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_3_12(uint64_t a1, uint64_t a2, uint64_t a3, ...)
{

  return sub_217968FCC();
}

uint64_t sub_2178FFABC@<X0>(char *a1@<X1>, uint64_t a2@<X8>, uint64_t a3@<X3>, uint64_t a4@<X4>)
{
  v5 = *a1;
  v6 = *(a1 + 1);
  v7 = *(a1 + 2);
  v8 = *(a1 + 3);
  v9 = _s14AlbumTrackCellVMa(0, a3, a4, a3);
  v10 = v9[10];
  if (qword_27CB8A378 != -1)
  {
    swift_once();
  }

  v11 = (a2 + v10);

  *v11 = sub_2178FFBFC();
  v11[1] = v12;
  v13 = (a2 + v9[11]);
  *v13 = xmmword_21796F990;
  v13[1] = xmmword_21796F9A0;
  v13[2] = xmmword_21796F9B0;
  v13[3] = xmmword_21796F9C0;
  v13[4] = xmmword_21796F9D0;
  sub_217968A2C();
  OUTLINED_FUNCTION_3();
  v14 = OUTLINED_FUNCTION_63_0();
  result = v15(v14);
  v17 = a2 + v9[9];
  *v17 = v5;
  *(v17 + 8) = v6;
  *(v17 + 16) = v7;
  *(v17 + 24) = v8;
  return result;
}

uint64_t sub_2178FFBFC()
{
  _s13PreviewPlayerCMa(0);
  sub_2179027DC(&qword_27CB8AFE0, _s13PreviewPlayerCMa, &unk_21796DCB8);
  OUTLINED_FUNCTION_63_0();

  return sub_2179668BC();
}

void sub_2178FFC74(uint64_t a1)
{
  sub_217968A2C();
  if (v2 <= 0x3F)
  {
    sub_2178B81FC(319);
    if (v4 <= 0x3F)
    {
      _s14AlbumTrackCellV9ConstantsVMa(319, *(a1 + 16), *(a1 + 24), v3);
      if (v5 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_2178FFD5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

double sub_2178FFDB4()
{
  v1 = sub_217968A2C();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2179688CC();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v2 + 16))(v4, v0, v1);
  if ((*(v2 + 88))(v4, v1) != *MEMORY[0x277CD8368])
  {
    (*(v2 + 8))(v4, v1);
    return 1.0;
  }

  (*(v2 + 96))(v4, v1);
  (*(v6 + 32))(v8, v4, v5);
  if ((sub_2178C93B0() & 1) == 0)
  {
    (*(v6 + 8))(v8, v5);
    return 1.0;
  }

  v9 = sub_2178C9990(v8);
  (*(v6 + 8))(v8, v5);
  result = 0.0;
  if ((v9 & 1) == 0)
  {
    return 1.0;
  }

  return result;
}

uint64_t sub_2178FFFE4()
{
  v0 = sub_2179689EC();
  result = 0;
  if ((v2 & 1) == 0 && v0 >= 1)
  {
    return sub_21796966C();
  }

  return result;
}

uint64_t sub_217900044()
{
  v1 = sub_21796855C();
  OUTLINED_FUNCTION_2();
  v3 = v2;
  v5 = MEMORY[0x28223BE20](v4);
  v7 = v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = v18 - v8;
  sub_217968A2C();
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_14();
  (*(v13 + 16))(v12 - v11, v0);
  sub_217965F2C();
  memset(v18, 0, sizeof(v18));
  v19 = 0;
  sub_217965F1C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8D2B8, &qword_21796FC68);
  swift_allocObject();
  sub_21796857C();
  sub_21796856C();
  v14 = *MEMORY[0x277D2AEB0];
  sub_21796853C();
  OUTLINED_FUNCTION_3();
  (*(v15 + 104))(v7, v14);
  (*(v3 + 104))(v7, *MEMORY[0x277D2AE90], v1);
  LOBYTE(v14) = sub_21796854C();

  v16 = *(v3 + 8);
  v16(v7, v1);
  v16(v9, v1);
  return v14 & 1;
}

uint64_t sub_217900294@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v102 = a2;
  v3 = sub_217966FAC();
  v84 = v3;
  OUTLINED_FUNCTION_0_1();
  v101 = v4;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_14();
  v100 = v7 - v6;
  OUTLINED_FUNCTION_0_1();
  v91 = v8;
  v92 = *(v9 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_52(&v75[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)]);
  v12 = sub_217968A2C();
  OUTLINED_FUNCTION_2();
  v14 = v13;
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_14();
  v103 = v17 - v16;
  v18 = *(a1 + 16);
  v19 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8D190, &qword_21796FB20);
  v81 = v19;
  OUTLINED_FUNCTION_4_12();
  v22 = sub_2179027DC(v20, v21, &unk_217971754);
  v80 = v22;
  v23 = *(a1 + 24);
  OUTLINED_FUNCTION_2_5();
  v79 = sub_2178FE83C(v24, &qword_27CB8D190, &qword_21796FB20, v25);
  v108 = v12;
  v109 = v18;
  v110 = v19;
  v111 = v22;
  v112 = v23;
  v113 = v79;
  v26 = _s9HItemCellVMa(0, &v108);
  OUTLINED_FUNCTION_2();
  v97 = v27;
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_52(&v75[-v29]);
  OUTLINED_FUNCTION_5_5();
  WitnessTable = swift_getWitnessTable();
  v83 = WitnessTable;
  OUTLINED_FUNCTION_5_7();
  v82 = sub_2179027DC(v31, v32, MEMORY[0x277CDDFA8]);
  v108 = v26;
  v109 = v3;
  v110 = WitnessTable;
  v111 = v82;
  v93 = MEMORY[0x277CDE6B0];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_0_1();
  v94 = v33;
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_52(&v75[-v35]);
  v36 = sub_21796698C();
  OUTLINED_FUNCTION_2();
  v98 = v37;
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_52(&v75[-v39]);
  v96 = sub_21796698C();
  OUTLINED_FUNCTION_2();
  v99 = v40;
  v42 = MEMORY[0x28223BE20](v41);
  v90 = &v75[-((v43 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v42);
  v95 = &v75[-v44];
  v45 = v86;
  (*(v14 + 16))(v103, v86, v12);
  v46 = v45 + *(a1 + 36);
  v48 = *(v46 + 8);
  v47 = *(v46 + 16);
  v49 = *(v46 + 24);
  LOBYTE(v108) = *v46;
  v109 = v48;
  v110 = v47;
  v111 = v49;

  sub_217863EC4(v49);
  v76 = sub_217900044();
  v77 = v45 + *(a1 + 44);
  v50 = *(v77 + 64);
  v51 = v91;
  v52 = v88;
  (*(v91 + 16))(v88, v45, a1);
  v53 = (*(v51 + 80) + 32) & ~*(v51 + 80);
  v54 = swift_allocObject();
  *(v54 + 16) = v18;
  *(v54 + 24) = v23;
  (*(v51 + 32))(v54 + v53, v52, a1);
  v55 = v81;
  v56 = v80;
  v57 = v79;
  LOBYTE(a1) = sub_217862E84();
  v58 = sub_217862E84();
  v59 = a1 & 1;
  v60 = v87;
  sub_2178EFD2C(v103, &v108, v59, 0, 0, 0, v76 & 1, 11, v87, v50, 0, 0, 0, v58 & 1, v18, sub_217902354, v54, v12, v18, v55, v56, v23, v57);
  v61 = v100;
  v62 = v84;
  v63 = v83;
  v64 = v82;
  sub_217884F70(v26);
  OUTLINED_FUNCTION_59();
  v65 = v78;
  sub_21796773C();
  (*(v101 + 8))(v61, v62);
  (*(v97 + 8))(v60, v26);
  sub_21796742C();
  v108 = v26;
  v109 = v62;
  v110 = v63;
  v111 = v64;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v67 = v85;
  v68 = OpaqueTypeMetadata2;
  sub_217967A0C();
  (*(v94 + 8))(v65, v68);
  v106 = OpaqueTypeConformance2;
  v107 = MEMORY[0x277CDF918];
  v74 = swift_getWitnessTable();
  sub_2178935BC(v36);
  v69 = v90;
  sub_2179679AC();
  (*(v98 + 8))(v67, v36);
  v104 = v74;
  v105 = MEMORY[0x277CDFC60];
  v70 = v96;
  swift_getWitnessTable();
  v71 = v95;
  sub_2179560E4();
  v72 = *(v99 + 8);
  v72(v69, v70);
  sub_2179560E4();
  return (v72)(v71, v70);
}

uint64_t sub_217900B64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v126 = a4;
  v102 = sub_21796599C();
  v101 = *(v102 - 8);
  MEMORY[0x28223BE20](v102);
  v100 = &v100 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8D1A8, &qword_21796FB28);
  v107 = *(v108 - 8);
  MEMORY[0x28223BE20](v108);
  v105 = &v100 - v8;
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8D1B0, &qword_21796FB30);
  MEMORY[0x28223BE20](v104);
  v106 = &v100 - v9;
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8D1B8, &qword_21796FB38);
  MEMORY[0x28223BE20](v110);
  v111 = &v100 - v10;
  v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8D1C0, &qword_21796FB40);
  MEMORY[0x28223BE20](v124);
  v109 = &v100 - v11;
  v12 = sub_217968A2C();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v117 = &v100 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8D1C8, &qword_21796FB48);
  v16 = MEMORY[0x28223BE20](v15 - 8);
  v125 = &v100 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v123 = &v100 - v18;
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8D1D0, &qword_21796FB50);
  MEMORY[0x28223BE20](v116);
  v115 = &v100 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8D1D8, &qword_21796FB58);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v122 = &v100 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v129 = &v100 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8D1E0, &qword_21796FB60);
  MEMORY[0x28223BE20](v24);
  v26 = &v100 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8D1E8, &qword_21796FB68);
  v28 = MEMORY[0x28223BE20](v27 - 8);
  v121 = &v100 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v128 = &v100 - v30;
  v118 = v13;
  v119 = v12;
  v31 = *(v13 + 16);
  v114 = v13 + 16;
  v113 = v31;
  v31(v26, a1, v12);
  v26[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8D1F0, &qword_21796FB70) + 36)] = 0;
  v32 = sub_21796742C();
  v34 = _s14AlbumTrackCellVMa(0, a2, a3, v33);
  v35 = *(v34 + 44);
  v120 = a1;
  v36 = a1 + v35;
  sub_21796660C();
  v38 = v37;
  v40 = v39;
  v42 = v41;
  v44 = v43;
  v45 = &v26[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8D1F8, &qword_21796FB78) + 36)];
  *v45 = v32;
  *(v45 + 1) = v38;
  *(v45 + 2) = v40;
  *(v45 + 3) = v42;
  *(v45 + 4) = v44;
  v45[40] = 0;
  LOBYTE(a3) = sub_21796743C();
  v127 = v36;
  sub_21796660C();
  v112 = v24;
  v46 = &v26[*(v24 + 36)];
  *v46 = a3;
  *(v46 + 1) = v47;
  *(v46 + 2) = v48;
  *(v46 + 3) = v49;
  *(v46 + 4) = v50;
  v46[40] = 0;
  if (qword_27CB8A3F0 != -1)
  {
    swift_once();
  }

  v51 = xmmword_27CB979E0;
  v52 = qword_27CB979F0;
  v130 = xmmword_27CB979E0;

  MEMORY[0x21CEA7F50](46, 0xE100000000000000);

  MEMORY[0x21CEA7F50](0x657469726F766166, 0xE800000000000000);

  sub_2178EE0A8(v130, *(&v130 + 1), v52);

  sub_217902498(&qword_27CB8D200, &qword_27CB8D1E0, &qword_21796FB60, sub_2179023E0);
  sub_21796790C();

  sub_217899038(v26, &qword_27CB8D1E0);
  v53 = v115;
  v54 = v120;
  sub_2179018D0(v34, v115);
  v55 = sub_21796743C();
  sub_21796660C();
  v56 = &v53[*(v116 + 36)];
  *v56 = v55;
  *(v56 + 1) = v57;
  *(v56 + 2) = v58;
  *(v56 + 3) = v59;
  *(v56 + 4) = v60;
  v56[40] = 0;
  v103 = v51;
  v130 = v51;

  v112 = *(&v51 + 1);

  MEMORY[0x21CEA7F50](46, 0xE100000000000000);

  MEMORY[0x21CEA7F50](0x746E756F63, 0xE500000000000000);

  sub_2178EE0A8(v130, *(&v130 + 1), v52);

  sub_217902498(&qword_27CB8D218, &qword_27CB8D1D0, &qword_21796FB50, sub_217902518);
  v61 = v129;
  sub_21796790C();

  sub_217899038(v53, &qword_27CB8D1D0);
  v62 = v117;
  v63 = v119;
  v113(v117, v54, v119);
  v64 = v118;
  v65 = (*(v118 + 88))(v62, v63);
  v66 = *MEMORY[0x277CD8350];
  (*(v64 + 8))(v62, v63);
  if (v65 == v66)
  {
    v67 = sub_217967B8C();
    v68 = sub_21796747C();
    KeyPath = swift_getKeyPath();
    *&v130 = v67;
    *(&v130 + 1) = KeyPath;
    v131 = v68;
    sub_2179674FC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8B4D0, &qword_21796BD50);
    sub_2178981D0();
    v70 = v105;
    sub_2179676AC();

    if ((sub_2179687FC() & 1) != 0 && (v71 = v100, sub_21796598C(), v72 = sub_21796597C(), (*(v101 + 8))(v71, v102), (v72 & 1) == 0))
    {
      sub_217967B4C();
      v73 = sub_217967B2C();
    }

    else
    {
      v73 = sub_217967B4C();
    }

    v75 = v123;
    v76 = v128;
    v77 = swift_getKeyPath();
    v78 = v106;
    (*(v107 + 32))(v106, v70, v108);
    v79 = (v78 + *(v104 + 36));
    *v79 = v77;
    v79[1] = v73;
    v80 = sub_21796743C();
    sub_21796660C();
    v82 = v81;
    v84 = v83;
    v86 = v85;
    v88 = v87;
    v89 = v111;
    sub_217898E78(v78, v111, &qword_27CB8D1B0, &qword_21796FB30);
    v90 = v89 + *(v110 + 36);
    *v90 = v80;
    *(v90 + 8) = v82;
    *(v90 + 16) = v84;
    *(v90 + 24) = v86;
    *(v90 + 32) = v88;
    *(v90 + 40) = 0;
    *&v130 = v103;
    *(&v130 + 1) = v112;

    MEMORY[0x21CEA7F50](46, 0xE100000000000000);

    MEMORY[0x21CEA7F50](0x6F65646976, 0xE500000000000000);

    sub_2178EE0A8(v130, *(&v130 + 1), v52);

    sub_21790265C();
    v91 = v109;
    sub_21796790C();

    sub_217899038(v89, &qword_27CB8D1B8);
    sub_217898E78(v91, v75, &qword_27CB8D1C0, &qword_21796FB40);
    v74 = 0;
    v61 = v129;
  }

  else
  {
    v74 = 1;
    v75 = v123;
    v76 = v128;
  }

  __swift_storeEnumTagSinglePayload(v75, v74, 1, v124);
  v92 = v121;
  v93 = v76;
  sub_21788D484(v76, v121, &qword_27CB8D1E8, &qword_21796FB68);
  v94 = v122;
  sub_21788D484(v61, v122, &qword_27CB8D1D8, &qword_21796FB58);
  v95 = v125;
  sub_21788D484(v75, v125, &qword_27CB8D1C8, &qword_21796FB48);
  v96 = v75;
  v97 = v126;
  sub_21788D484(v92, v126, &qword_27CB8D1E8, &qword_21796FB68);
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8D250, &qword_21796FB98);
  sub_21788D484(v94, v97 + *(v98 + 48), &qword_27CB8D1D8, &qword_21796FB58);
  sub_21788D484(v95, v97 + *(v98 + 64), &qword_27CB8D1C8, &qword_21796FB48);
  sub_217899038(v96, &qword_27CB8D1C8);
  sub_217899038(v129, &qword_27CB8D1D8);
  sub_217899038(v93, &qword_27CB8D1E8);
  sub_217899038(v95, &qword_27CB8D1C8);
  sub_217899038(v94, &qword_27CB8D1D8);
  return sub_217899038(v92, &qword_27CB8D1E8);
}

double sub_2179018D0@<D0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  *a2 = sub_217967E3C();
  *(a2 + 1) = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8D268, &qword_21796FC00);
  sub_2179019EC(v2, *(a1 + 16), *(a1 + 24), &a2[*(v6 + 44)]);
  v7 = sub_21796742C();
  sub_21796660C();
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v16 = &a2[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8D238, &qword_21796FB88) + 36)];
  *v16 = v7;
  *(v16 + 1) = v9;
  *(v16 + 2) = v11;
  *(v16 + 3) = v13;
  *(v16 + 4) = v15;
  v16[40] = 0;
  sub_217967E3C();
  sub_2179667FC();
  v17 = &a2[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8D228, &qword_21796FB80) + 36)];
  *v17 = v19;
  *(v17 + 1) = v20;
  result = *&v21;
  *(v17 + 2) = v21;
  return result;
}

uint64_t sub_2179019EC@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v84 = a4;
  v85 = a1;
  v83 = _s14PreviewControlVMa(0);
  MEMORY[0x28223BE20](v83);
  v73 = &v69 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_217968A2C();
  v76 = *(v8 - 8);
  v77 = v8;
  MEMORY[0x28223BE20](v8);
  v75 = &v69 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2179688CC();
  v71 = *(v10 - 8);
  v72 = v10;
  MEMORY[0x28223BE20](v10);
  v70 = &v69 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8D270, &qword_21796FC08);
  v13 = MEMORY[0x28223BE20](v12 - 8);
  v82 = &v69 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v81 = &v69 - v15;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8AFA8, &qword_21796B6C0);
  MEMORY[0x28223BE20](v74);
  v87 = &v69 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8D278, &qword_21796FC10);
  v79 = *(v17 - 8);
  v80 = v17;
  v18 = MEMORY[0x28223BE20](v17);
  v78 = &v69 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v88 = &v69 - v20;
  v86 = _s14AlbumTrackCellVMa(0, a2, a3, v21);
  __dst[0] = sub_2178FFFE4();
  __dst[1] = v22;
  sub_217873C34(__dst[0], v22, v23);
  v24 = sub_21796763C();
  v26 = v25;
  v28 = v27;
  sub_21796747C();
  v29 = sub_2179675DC();
  v31 = v30;
  v33 = v32;

  sub_21788C9B8(v24, v26, v28 & 1);

  sub_217967ADC();
  v34 = sub_2179675AC();
  v36 = v35;
  v38 = v37;
  v40 = v39;

  v41 = v29;
  v42 = v85;
  sub_21788C9B8(v41, v31, v33 & 1);

  v43 = v86;
  v44 = &v42[*(v86 + 44)];
  sub_217967E3C();
  sub_2179667FC();
  v45 = (v38 & 1);
  LOBYTE(__dst[0]) = v38 & 1;
  v46 = sub_2178FFDB4();
  KeyPath = swift_getKeyPath();
  v90 = 0;
  *&v89[0] = v34;
  *(&v89[0] + 1) = v36;
  LOBYTE(v89[1]) = v38 & 1;
  *(&v89[1] + 1) = v40;
  v48 = v87;
  v89[2] = v91;
  v89[3] = v92;
  v89[4] = v93;
  *&v89[5] = v46;
  *(&v89[5] + 1) = KeyPath;
  *&v89[6] = 1;
  BYTE8(v89[6]) = 0;
  v49 = *MEMORY[0x277CDFA10];
  v50 = sub_21796695C();
  (*(*(v50 - 8) + 104))(v48, v49, v50);
  sub_2179027DC(&qword_27CB8B010, MEMORY[0x277CDFA28], MEMORY[0x277CDFA48]);
  if ((sub_217968F1C() & 1) == 0)
  {
    __break(1u);
LABEL_8:
    swift_once();
    goto LABEL_4;
  }

  v86 = v44;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8D280, &qword_21796FC48);
  sub_217902824();
  sub_2178FE83C(&qword_27CB8B038, &qword_27CB8AFA8, &qword_21796B6C0, MEMORY[0x277D84470]);
  sub_2179677CC();
  sub_217899038(v48, &qword_27CB8AFA8);
  memcpy(__dst, v89, 0x69uLL);
  sub_217899038(__dst, &qword_27CB8D280);
  v52 = v75;
  v51 = v76;
  v53 = v77;
  (*(v76 + 16))(v75, v42, v77);
  if ((*(v51 + 88))(v52, v53) != *MEMORY[0x277CD8368])
  {
    (*(v51 + 8))(v52, v53);
    v58 = 1;
    v45 = v83;
    v57 = v81;
    goto LABEL_6;
  }

  (*(v51 + 96))(v52, v53);
  v42 = v70;
  v48 = v71;
  v44 = v72;
  (*(v71 + 32))(v70, v52, v72);
  v38 = v73;
  (*(v48 + 16))(v73, v42, v44);
  v4 = *(v86 + 40);
  v46 = *(v86 + 48);
  v45 = v83;
  v43 = (v38 + *(v83 + 32));
  if (qword_27CB8A378 != -1)
  {
    goto LABEL_8;
  }

LABEL_4:
  _s13PreviewPlayerCMa(0);
  sub_2179027DC(&qword_27CB8AFE0, _s13PreviewPlayerCMa, &unk_21796DCB8);

  v54 = sub_2179668BC();
  v56 = v55;
  (*(v48 + 8))(v42, v44);
  *v43 = v54;
  v43[1] = v56;
  *(v38 + v45[5]) = v4;
  *(v38 + v45[6]) = v46;
  *(v38 + v45[7]) = 1;
  v57 = v81;
  sub_2179029EC(v38, v81);
  v58 = 0;
LABEL_6:
  __swift_storeEnumTagSinglePayload(v57, v58, 1, v45);
  v59 = v78;
  v60 = v79;
  v61 = *(v79 + 16);
  v62 = v88;
  v63 = v80;
  v61(v78, v88, v80);
  v64 = v82;
  sub_21788D484(v57, v82, &qword_27CB8D270, &qword_21796FC08);
  v65 = v84;
  v61(v84, v59, v63);
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8D2B0, &qword_21796FC60);
  sub_21788D484(v64, &v65[*(v66 + 48)], &qword_27CB8D270, &qword_21796FC08);
  sub_217899038(v57, &qword_27CB8D270);
  v67 = *(v60 + 8);
  v67(v62, v63);
  sub_217899038(v64, &qword_27CB8D270);
  return (v67)(v59, v63);
}

BOOL sub_2179022AC(void *__src, const void *a2)
{
  memcpy(v4, __src, sizeof(v4));
  memcpy(__dst, a2, sizeof(__dst));
  return sub_2178972D0(v4, __dst);
}

uint64_t sub_217902354@<X0>(uint64_t a1@<X3>, uint64_t a2@<X8>)
{
  v4 = *(v2 + 16);
  v5 = *(v2 + 24);
  v6 = *(_s14AlbumTrackCellVMa(0, v4, v5, a1) - 8);
  v7 = v2 + ((*(v6 + 80) + 32) & ~*(v6 + 80));

  return sub_217900B64(v7, v4, v5, a2);
}

unint64_t sub_2179023E0()
{
  result = qword_27CB8D208;
  if (!qword_27CB8D208)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8D1F8, &qword_21796FB78);
    sub_2178FE83C(&qword_27CB8D210, &qword_27CB8D1F0, &qword_21796FB70, &unk_217973718);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB8D208);
  }

  return result;
}

uint64_t sub_217902498(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    v7 = OUTLINED_FUNCTION_63_1(0, a2);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v7, v8);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_217902518()
{
  result = qword_27CB8D220;
  if (!qword_27CB8D220)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8D228, &qword_21796FB80);
    sub_2179025A4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB8D220);
  }

  return result;
}

unint64_t sub_2179025A4()
{
  result = qword_27CB8D230;
  if (!qword_27CB8D230)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8D238, &qword_21796FB88);
    sub_2178FE83C(&qword_27CB8D240, &unk_27CB8D248, &unk_21796FB90, MEMORY[0x277CE11A8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB8D230);
  }

  return result;
}

unint64_t sub_21790265C()
{
  result = qword_27CB8D258;
  if (!qword_27CB8D258)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8D1B8, &qword_21796FB38);
    sub_2179026E8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB8D258);
  }

  return result;
}

unint64_t sub_2179026E8()
{
  result = qword_27CB8D260;
  if (!qword_27CB8D260)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8D1B0, &qword_21796FB30);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8B4D0, &qword_21796BD50);
    sub_2178981D0();
    swift_getOpaqueTypeConformance2();
    sub_2178FE83C(&qword_27CB8A8A0, qword_27CB8A8A8, &qword_21796BDA0, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB8D260);
  }

  return result;
}

uint64_t sub_2179027DC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_217902824()
{
  result = qword_27CB8D288;
  if (!qword_27CB8D288)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8D280, &qword_21796FC48);
    sub_2179028DC();
    sub_2178FE83C(&qword_27CB8A890, &qword_27CB8A898, &unk_21796ACA0, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB8D288);
  }

  return result;
}

unint64_t sub_2179028DC()
{
  result = qword_27CB8D290;
  if (!qword_27CB8D290)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8D298, &qword_21796FC50);
    sub_217902968();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB8D290);
  }

  return result;
}

unint64_t sub_217902968()
{
  result = qword_27CB8D2A0;
  if (!qword_27CB8D2A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8D2A8, &qword_21796FC58);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB8D2A0);
  }

  return result;
}

uint64_t sub_2179029EC(uint64_t a1, uint64_t a2)
{
  v4 = _s14PreviewControlVMa(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t ArtworkImage.ReusePolicy.hashValue.getter()
{
  v1 = *v0;
  sub_21796973C();
  MEMORY[0x21CEA86B0](v1);
  return sub_21796977C();
}

uint64_t ArtworkImage.artworkReusablePolicy(_:)(unsigned __int8 *a1)
{
  v2 = v1;
  v4 = sub_21796633C();
  OUTLINED_FUNCTION_2();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8D2C0, &qword_21796FC70);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v19 - v11;
  sub_21796643C();
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v13);
  v15 = &v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  LODWORD(a1) = *a1;
  (*(v16 + 16))(v15, v2);
  v17 = MEMORY[0x277CE43C8];
  if (!a1)
  {
    v17 = MEMORY[0x277CE43C0];
  }

  (*(v6 + 104))(v9, *v17, v4);
  (*(v6 + 32))(v12, v9, v4);
  __swift_storeEnumTagSinglePayload(v12, 0, 1, v4);
  return sub_2179663AC(v15, 0, 1, 2, 0, 0, 0, 0, 0, v12);
}

unint64_t sub_217902D68()
{
  result = qword_27CB8D2C8;
  if (!qword_27CB8D2C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8D2D0, &qword_21796FC78);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB8D2C8);
  }

  return result;
}

unint64_t sub_217902DD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB8D2D8;
  if (!qword_27CB8D2D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB8D2D8);
  }

  return result;
}

_BYTE *_s11ReusePolicyOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

void sub_217902F00()
{
  OUTLINED_FUNCTION_81();
  v1 = v0;
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8AAE8, &qword_21796AFA0);
  OUTLINED_FUNCTION_2();
  v39 = v5;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_17_5();
  v9 = (v7 - v8);
  MEMORY[0x28223BE20](v10);
  v12 = &v37 - v11;
  _s23PlaylistDetailViewModelC12LoadingStateOMa(0);
  OUTLINED_FUNCTION_3();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_17_5();
  v16 = (v14 - v15);
  MEMORY[0x28223BE20](v17);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8D370, &qword_21796FED8);
  OUTLINED_FUNCTION_48(v20);
  OUTLINED_FUNCTION_47();
  v22 = MEMORY[0x28223BE20](v21);
  v24 = &v37 - v23;
  v25 = &v37 + *(v22 + 56) - v23;
  sub_2179099FC(v3, &v37 - v23);
  sub_2179099FC(v1, v25);
  OUTLINED_FUNCTION_49_2();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_2179099FC(v24, v16);
      v27 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8AB18, &unk_21796FEE0) + 48);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v28 = *v16;
        v37 = *v25;
        v38 = v28;
        v29 = v39;
        v30 = *(v39 + 32);
        v30(v12, &v16[v27], v4);
        v30(v9, &v25[v27], v4);
        if (v38 == v37)
        {
          sub_217968DFC();
          OUTLINED_FUNCTION_0_14();
          sub_217909ABC(v31, v32);
          OUTLINED_FUNCTION_51_0();
          sub_2179680FC();
          v33 = *(v29 + 8);
          v33(v9, v4);
          v34 = OUTLINED_FUNCTION_39_3();
          (v33)(v34);
        }

        else
        {
          v35 = *(v29 + 8);
          v35(v9, v4);
          v36 = OUTLINED_FUNCTION_39_3();
          (v35)(v36);
        }

        goto LABEL_17;
      }

      (*(v39 + 8))(&v16[v27], v4);
    }

    else if (swift_getEnumCaseMultiPayload() == 2)
    {
LABEL_17:
      sub_217909A60(v24);
      goto LABEL_18;
    }
  }

  else
  {
    sub_2179099FC(v24, v19);
    if (!swift_getEnumCaseMultiPayload())
    {
      if (*v19 == *v25)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8A750, &unk_21796A930);
        OUTLINED_FUNCTION_47_0();
        sub_21796924C();
      }

      goto LABEL_17;
    }
  }

  sub_2178BE050(v24, &qword_27CB8D370, &qword_21796FED8);
LABEL_18:
  OUTLINED_FUNCTION_80();
}

uint64_t sub_2179032E0(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  OUTLINED_FUNCTION_51_0();
  return sub_21796592C();
}

void sub_217903324()
{
  OUTLINED_FUNCTION_81();
  v44 = v0;
  v58 = v2;
  v53 = v3;
  v56 = _s23PlaylistDetailViewModelC12LoadingStateOMa(0);
  OUTLINED_FUNCTION_3();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_14();
  v54 = v6 - v5;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8D3C8, &qword_2179700B0);
  OUTLINED_FUNCTION_2();
  v55 = v7;
  OUTLINED_FUNCTION_47();
  MEMORY[0x28223BE20](v8);
  v52 = &v43 - v9;
  sub_217968E3C();
  OUTLINED_FUNCTION_2();
  v50 = v11;
  v51 = v10;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_14();
  v48 = v13 - v12;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8D3C0, &qword_2179700A8);
  OUTLINED_FUNCTION_2();
  v47 = v14;
  OUTLINED_FUNCTION_47();
  MEMORY[0x28223BE20](v15);
  v46 = &v43 - v16;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8D3D8, &qword_2179700C0);
  OUTLINED_FUNCTION_2();
  v43 = v17;
  OUTLINED_FUNCTION_47();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_9_5();
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8D3D0, &qword_2179700B8);
  OUTLINED_FUNCTION_2();
  v21 = v20;
  OUTLINED_FUNCTION_47();
  MEMORY[0x28223BE20](v22);
  v24 = &v43 - v23;
  v25 = OUTLINED_FUNCTION_10_7();
  __swift_instantiateConcreteTypeFromMangledNameV2(v25, v26);
  OUTLINED_FUNCTION_3();
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_17_5();
  MEMORY[0x28223BE20](v28);
  v30 = &v43 - v29;
  v31 = OBJC_IVAR____TtCV25_MusicKitInternal_SwiftUI11MusicPicker23PlaylistDetailViewModel__entries;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8AAE8, &qword_21796AFA0);
  OUTLINED_FUNCTION_13_7();
  __swift_storeEnumTagSinglePayload(v32, v33, v34, v35);
  sub_2178745BC();
  sub_21796655C();
  sub_2178BE050(v30, &qword_27CB8AB10, &unk_21796B0A0);
  v36 = v44;
  (*(v21 + 32))(v44 + v31, v24, v19);
  v37 = OBJC_IVAR____TtCV25_MusicKitInternal_SwiftUI11MusicPicker23PlaylistDetailViewModel__totalEntriesCount;
  v59 = 0;
  v60 = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8D338, &qword_21796FD80);
  sub_21796655C();
  (*(v43 + 32))(v36 + v37, v1, v45);
  *(v36 + OBJC_IVAR____TtCV25_MusicKitInternal_SwiftUI11MusicPicker23PlaylistDetailViewModel_maximumBatchLimit) = 10000;
  v39 = v50;
  v38 = v51;
  v40 = v53;
  (*(v50 + 16))(v48, v53, v51);
  v41 = v46;
  sub_21796655C();
  (*(v47 + 32))(v36 + OBJC_IVAR____TtCV25_MusicKitInternal_SwiftUI11MusicPicker23PlaylistDetailViewModel__playlist, v41, v49);
  swift_storeEnumTagMultiPayload();
  v42 = v52;
  OUTLINED_FUNCTION_153();
  sub_21796655C();
  (*(v39 + 8))(v40, v38);
  (*(v55 + 32))(v36 + OBJC_IVAR____TtCV25_MusicKitInternal_SwiftUI11MusicPicker23PlaylistDetailViewModel__loadingState, v42, v57);
  *(v36 + OBJC_IVAR____TtCV25_MusicKitInternal_SwiftUI11MusicPicker23PlaylistDetailViewModel_source) = v58;
  OUTLINED_FUNCTION_80();
}

uint64_t sub_217903818(uint64_t a1)
{
  v3 = sub_217968E3C();
  OUTLINED_FUNCTION_2();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_75_2();
  swift_getKeyPath();
  swift_getKeyPath();
  (*(v5 + 16))(v1, a1, v3);

  sub_21796658C();
  v7 = OUTLINED_FUNCTION_68_2();
  return v8(v7);
}

uint64_t sub_217903938(uint64_t a1)
{
  v2 = _s23PlaylistDetailViewModelC12LoadingStateOMa(0);
  v3 = OUTLINED_FUNCTION_48(v2);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_83_2();
  swift_getKeyPath();
  swift_getKeyPath();
  v4 = OUTLINED_FUNCTION_68_2();
  sub_2179099FC(v4, v5);

  OUTLINED_FUNCTION_39_3();
  sub_21796658C();
  return sub_217909A60(a1);
}

double sub_2179039FC(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21796657C();

  return result;
}

uint64_t sub_217903A6C()
{
  v0 = OUTLINED_FUNCTION_51_0();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_48(v2);
  OUTLINED_FUNCTION_47();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_9_5();
  swift_getKeyPath();
  swift_getKeyPath();
  OUTLINED_FUNCTION_49_2();
  sub_2178745BC();

  sub_21796658C();
  v4 = OUTLINED_FUNCTION_68_2();
  return sub_2178BE050(v4, v5, &unk_21796B0A0);
}

uint64_t sub_217903B40()
{
  swift_getKeyPath();
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_7();
  sub_21796657C();

  return v1;
}

uint64_t sub_217903BB4(uint64_t a1, char a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_21796658C();
}

uint64_t sub_217903C38()
{
  OUTLINED_FUNCTION_62();
  v1[6] = v0;
  v2 = sub_21796822C();
  v1[7] = v2;
  OUTLINED_FUNCTION_64_0(v2);
  v1[8] = v3;
  v1[9] = OUTLINED_FUNCTION_16_2();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8AB10, &unk_21796B0A0);
  OUTLINED_FUNCTION_48(v4);
  v1[10] = OUTLINED_FUNCTION_71_2();
  v1[11] = swift_task_alloc();
  v1[12] = swift_task_alloc();
  v1[13] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8D3B8, &qword_217970058);
  OUTLINED_FUNCTION_48(v5);
  v1[14] = OUTLINED_FUNCTION_16_2();
  v6 = sub_217968E3C();
  v1[15] = v6;
  OUTLINED_FUNCTION_64_0(v6);
  v1[16] = v7;
  v1[17] = OUTLINED_FUNCTION_71_2();
  v1[18] = swift_task_alloc();
  v1[19] = swift_task_alloc();
  v1[20] = swift_task_alloc();
  v1[21] = swift_task_alloc();
  v1[22] = swift_task_alloc();
  v8 = _s23PlaylistDetailViewModelC12LoadingStateOMa(0);
  v1[23] = v8;
  OUTLINED_FUNCTION_48(v8);
  v1[24] = OUTLINED_FUNCTION_71_2();
  v1[25] = swift_task_alloc();
  sub_21796920C();
  v1[26] = sub_2179691FC();
  OUTLINED_FUNCTION_75_1();
  v10 = sub_2179691BC();
  v1[27] = v10;
  v1[28] = v9;

  return MEMORY[0x2822009F8](sub_217903E48, v10, v9);
}

uint64_t sub_217903E48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_84_1();
  swift_getKeyPath();
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_62_3(KeyPath);

  OUTLINED_FUNCTION_10_7();
  if (swift_getEnumCaseMultiPayload() == 2)
  {
    if (*(v16[6] + OBJC_IVAR____TtCV25_MusicKitInternal_SwiftUI11MusicPicker23PlaylistDetailViewModel_source) == 2)
    {
      v19 = v16[8];
      v18 = v16[9];
      v20 = v16[7];
      swift_getKeyPath();
      v21 = swift_getKeyPath();
      OUTLINED_FUNCTION_68_3(v21);

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8A728, &qword_21796B550);
      v22 = swift_allocObject();
      v16[33] = v22;
      *(v22 + 16) = xmmword_21796A320;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8CAA0, &qword_217970040);
      *(v22 + 32) = sub_21796801C();
      *(v22 + 40) = sub_217967F1C();
      *(v22 + 48) = sub_217967FFC();
      (*(v19 + 104))(v18, *MEMORY[0x277CD7CF8], v20);
      v23 = swift_task_alloc();
      v16[34] = v23;
      OUTLINED_FUNCTION_5_8();
      sub_217909ABC(v24, v25);
      *v23 = v16;
      v23[1] = sub_217904718;
      OUTLINED_FUNCTION_36_3();

      return MEMORY[0x282124808](v26, v27, v28, v29, v30, v31, v32);
    }

    else
    {
      v43 = v16[7];
      swift_getKeyPath();
      v44 = swift_getKeyPath();
      OUTLINED_FUNCTION_68_3(v44);

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8A728, &qword_21796B550);
      OUTLINED_FUNCTION_137();
      v45 = swift_allocObject();
      v16[29] = v45;
      *(v45 + 16) = xmmword_21796E3B0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8CAA0, &qword_217970040);
      *(v45 + 32) = sub_21796801C();
      OUTLINED_FUNCTION_13_7();
      __swift_storeEnumTagSinglePayload(v46, v47, v48, v43);
      v49 = swift_task_alloc();
      v16[30] = v49;
      OUTLINED_FUNCTION_5_8();
      sub_217909ABC(v50, v51);
      *v49 = v16;
      v49[1] = sub_217904254;
      OUTLINED_FUNCTION_36_3();

      return MEMORY[0x28218A4F0](v52);
    }
  }

  else
  {
    v34 = v16[25];

    sub_217909A60(v34);
    OUTLINED_FUNCTION_9_8();

    OUTLINED_FUNCTION_7_10();
    OUTLINED_FUNCTION_36_3();

    return v36(v35, v36, v37, v38, v39, v40, v41, v42, a9, a10, a11, a12, a13, a14, a15, a16);
  }
}

uint64_t sub_217904254()
{
  OUTLINED_FUNCTION_127();
  OUTLINED_FUNCTION_138();
  v2 = *v1;
  v3 = *v1;
  OUTLINED_FUNCTION_6();
  *v4 = v3;
  v5 = v2[20];
  v6 = v2[16];
  v7 = v2[15];
  v8 = v2[14];
  *v4 = *v1;
  v3[31] = v0;

  sub_2178BE050(v8, &qword_27CB8D3B8, &qword_217970058);
  v9 = *(v6 + 8);
  v3[32] = v9;
  v9(v5, v7);
  OUTLINED_FUNCTION_66();
  OUTLINED_FUNCTION_102();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_217904420(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_84_1();
  v17 = v16[13];

  v18 = OUTLINED_FUNCTION_10_7();
  v19(v18);
  sub_217968E2C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8AAE8, &qword_21796AFA0);
  OUTLINED_FUNCTION_26_4(v17);
  if (v20)
  {
    sub_2178BE050(v16[13], &qword_27CB8AB10, &unk_21796B0A0);
    v24 = 0;
  }

  else
  {
    OUTLINED_FUNCTION_36_0();
    sub_217909E08(v21, v22, v23);
    OUTLINED_FUNCTION_68_2();
    sub_2179692AC();
    OUTLINED_FUNCTION_68_2();
    sub_2179692EC();
    v24 = sub_2179692DC();
    OUTLINED_FUNCTION_10();
    v25 = OUTLINED_FUNCTION_10_7();
    v26(v25);
  }

  v27 = v16[32];
  v28 = v16[24];
  v29 = v16[17];
  v30 = v16[11];
  v31 = OUTLINED_FUNCTION_10_7();
  v32(v31);
  sub_217903818(v29);
  sub_217968E2C();
  sub_217903A6C();
  sub_217903BB4(v24, 0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8AB18, &unk_21796FEE0);
  *v28 = 0;
  sub_217968E2C();
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8AAE8, &qword_21796AFA0);
  OUTLINED_FUNCTION_87_2(v33);
  if (v20)
  {
    sub_217968DFC();
    sub_2179680AC();
    OUTLINED_FUNCTION_12_5();
    if (!v20)
    {
      sub_2178BE050(v16[10], &qword_27CB8AB10, &unk_21796B0A0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_10();
    OUTLINED_FUNCTION_51_3();
    v34();
  }

  OUTLINED_FUNCTION_47_2();
  sub_217903938(v30);
  v35 = OUTLINED_FUNCTION_68_2();
  v27(v35);
  OUTLINED_FUNCTION_9_8();

  OUTLINED_FUNCTION_7_10();
  OUTLINED_FUNCTION_36_3();

  return v37(v36, v37, v38, v39, v40, v41, v42, v43, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t sub_217904718()
{
  v2 = *v1;
  v3 = *v1;
  OUTLINED_FUNCTION_6();
  *v4 = v3;
  v20 = v2[18];
  OUTLINED_FUNCTION_66();
  v6 = *(v5 + 128);
  v19 = v2[15];
  OUTLINED_FUNCTION_66();
  v8 = *(v7 + 72);
  v9 = v2[8];
  v10 = v2[7];
  v11 = *v1;
  OUTLINED_FUNCTION_6();
  *v12 = v11;
  v3[35] = v0;

  (*(v9 + 8))(v8, v10);
  v13 = *(v6 + 8);
  v3[36] = v13;
  v13(v20, v19);
  OUTLINED_FUNCTION_66();
  v15 = *(v14 + 224);
  v16 = v2[27];
  if (v0)
  {
    v17 = sub_217904D34;
  }

  else
  {
    v17 = sub_217904920;
  }

  return MEMORY[0x2822009F8](v17, v16, v15);
}

uint64_t sub_217904920(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_84_1();

  v17 = OUTLINED_FUNCTION_10_7();
  v18(v17);
  v19 = sub_217968CAC();
  if (v20)
  {
    v21 = v16[12];
    sub_217968E2C();
    v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8AAE8, &qword_21796AFA0);
    if (__swift_getEnumTagSinglePayload(v21, 1, v22) == 1)
    {
      sub_2178BE050(v16[12], &qword_27CB8AB10, &unk_21796B0A0);
      v23 = 0;
    }

    else
    {
      OUTLINED_FUNCTION_36_0();
      sub_217909E08(v24, v25, v26);
      sub_2179692AC();
      sub_2179692EC();
      v23 = sub_2179692DC();
      OUTLINED_FUNCTION_10();
      v27 = OUTLINED_FUNCTION_47_0();
      v28(v27);
    }
  }

  else
  {
    v23 = v19;
  }

  v29 = v16[36];
  v30 = v16[24];
  v31 = v16[17];
  v32 = OUTLINED_FUNCTION_47_0();
  v33(v32);
  sub_217903818(v31);
  sub_217968E2C();
  sub_217903A6C();
  sub_217903BB4(v23, 0);
  v34 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8AB18, &unk_21796FEE0) + 48);
  *v30 = 0;
  sub_217968E2C();
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8AAE8, &qword_21796AFA0);
  OUTLINED_FUNCTION_87_2(v35);
  if (v36)
  {
    sub_217968DFC();
    sub_2179680AC();
    OUTLINED_FUNCTION_12_5();
    if (!v36)
    {
      sub_2178BE050(v16[10], &qword_27CB8AB10, &unk_21796B0A0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_10();
    OUTLINED_FUNCTION_51_3();
    v37();
  }

  OUTLINED_FUNCTION_47_2();
  sub_217903938(v34);
  v38 = OUTLINED_FUNCTION_68_2();
  v29(v38);
  OUTLINED_FUNCTION_9_8();

  OUTLINED_FUNCTION_7_10();
  OUTLINED_FUNCTION_36_3();

  return v40(v39, v40, v41, v42, v43, v44, v45, v46, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t sub_217904C44()
{
  OUTLINED_FUNCTION_28_2();

  OUTLINED_FUNCTION_39();

  return v0();
}

uint64_t sub_217904D34()
{
  OUTLINED_FUNCTION_28_2();

  OUTLINED_FUNCTION_39();

  return v0();
}

void sub_217904E24()
{
  OUTLINED_FUNCTION_81();
  v2 = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8A810, &unk_21796A9A0);
  OUTLINED_FUNCTION_48(v3);
  OUTLINED_FUNCTION_47();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_75_2();
  _s23PlaylistDetailViewModelC12LoadingStateOMa(0);
  OUTLINED_FUNCTION_2();
  v33 = v5;
  v7 = *(v6 + 64);
  v9 = MEMORY[0x28223BE20](v8);
  v10 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v32 - v12;
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v32 - v15;
  MEMORY[0x28223BE20](v14);
  v18 = &v32 - v17;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21796657C();

  OUTLINED_FUNCTION_47_0();
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    goto LABEL_5;
  }

  sub_2179099FC(v18, v16);
  v19 = *v16;
  v20 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8AB18, &unk_21796FEE0) + 48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8AAE8, &qword_21796AFA0);
  OUTLINED_FUNCTION_4_1();
  (*(v21 + 8))(&v16[v20]);
  if (v19 > 1)
  {
    goto LABEL_5;
  }

  sub_217909A60(v18);
  if (*(v2 + OBJC_IVAR____TtCV25_MusicKitInternal_SwiftUI11MusicPicker23PlaylistDetailViewModel_source) == 2)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    OUTLINED_FUNCTION_63_0();
    sub_21796657C();

    sub_21796923C();
    OUTLINED_FUNCTION_13_7();
    __swift_storeEnumTagSinglePayload(v22, v23, v24, v25);
    v26 = swift_allocObject();
    swift_weakInit();
    sub_2179099FC(v13, v10);
    sub_21796920C();

    v27 = sub_2179691FC();
    v28 = (*(v33 + 80) + 40) & ~*(v33 + 80);
    v29 = swift_allocObject();
    v30 = MEMORY[0x277D85700];
    v29[2] = v27;
    v29[3] = v30;
    v29[4] = v26;
    sub_21790A170(v10, v29 + v28);

    v31 = sub_217905ECC(0, 0, v1, &unk_217970050, v29);
    *v10 = 1;
    *(v10 + 1) = v31;
    swift_storeEnumTagMultiPayload();

    sub_217903938(v10);

    v18 = v13;
LABEL_5:
    sub_217909A60(v18);
  }

  OUTLINED_FUNCTION_80();
}

uint64_t sub_2179051A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  _s23PlaylistDetailViewModelC12LoadingStateOMa(0);
  v5[7] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8AB10, &unk_21796B0A0);
  v5[8] = swift_task_alloc();
  v5[9] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8AAE8, &qword_21796AFA0);
  v5[10] = v6;
  v5[11] = *(v6 - 8);
  v5[12] = swift_task_alloc();
  v5[13] = swift_task_alloc();
  v5[14] = sub_21796920C();
  v5[15] = sub_2179691FC();
  v8 = sub_2179691BC();
  v5[16] = v8;
  v5[17] = v7;

  return MEMORY[0x2822009F8](sub_217905320, v8, v7);
}

uint64_t sub_217905320()
{
  OUTLINED_FUNCTION_108();
  OUTLINED_FUNCTION_63_2();
  Strong = swift_weakLoadStrong();
  v0[18] = Strong;
  if (Strong)
  {
    v2 = v0[10];
    v3 = v0[8];
    swift_getKeyPath();
    swift_getKeyPath();
    sub_21796657C();

    if (__swift_getEnumTagSinglePayload(v3, 1, v2))
    {
      v4 = v0[10];
      sub_2178BE050(v0[8], &qword_27CB8AB10, &unk_21796B0A0);
      OUTLINED_FUNCTION_13_7();
      __swift_storeEnumTagSinglePayload(v5, v6, v7, v4);
      v8 = v0[9];
      sub_217968DFC();
      sub_2179680AC();
      OUTLINED_FUNCTION_26_4(v8);
      if (!v9)
      {
        sub_2178BE050(v0[9], &qword_27CB8AB10, &unk_21796B0A0);
      }

      v0[21] = 0;
      v10 = OUTLINED_FUNCTION_21_5();

      return MEMORY[0x2822009F8](v10, v11, v12);
    }

    else
    {
      v16 = v0[8];
      (*(v0[11] + 16))(v0[12], v16, v0[10]);
      sub_2178BE050(v16, &qword_27CB8AB10, &unk_21796B0A0);
      v17 = swift_task_alloc();
      v0[19] = v17;
      OUTLINED_FUNCTION_0_14();
      sub_217909ABC(v18, v19);
      OUTLINED_FUNCTION_42_1();
      *v17 = v20;
      v17[1] = sub_217905628;
      v21 = v0[9];
      v22 = v0[10];

      return MEMORY[0x282124620](v21, 0, 1, v22);
    }
  }

  else
  {

    sub_2179691EC();
    OUTLINED_FUNCTION_25_3();
    sub_217909ABC(v13, v14);
    swift_allocError();
    sub_217968E8C();
    swift_willThrow();

    OUTLINED_FUNCTION_39();

    return v15();
  }
}

uint64_t sub_217905628()
{
  OUTLINED_FUNCTION_84();
  v2 = *v1;
  OUTLINED_FUNCTION_30_2();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 160) = v0;

  OUTLINED_FUNCTION_139();
  (*(v2[11] + 8))(*(v5 + 96), v2[10]);
  OUTLINED_FUNCTION_139();
  v7 = *(v6 + 136);
  v8 = v2[16];
  if (v0)
  {
    v9 = sub_217905AF8;
  }

  else
  {
    v9 = sub_21790579C;
  }

  return MEMORY[0x2822009F8](v9, v8, v7);
}

uint64_t sub_21790579C()
{
  OUTLINED_FUNCTION_84();
  OUTLINED_FUNCTION_12_5();
  if (v1)
  {
    v3 = v0[20];
    sub_217968DFC();
    sub_2179680AC();
    OUTLINED_FUNCTION_12_5();
    if (!v1)
    {
      sub_2178BE050(v0[9], &qword_27CB8AB10, &unk_21796B0A0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_51_3();
    v2();
    v3 = v0[20];
  }

  v0[21] = v3;
  v4 = OUTLINED_FUNCTION_21_5();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_21790586C()
{
  OUTLINED_FUNCTION_62();
  *(v0 + 176) = sub_2179691FC();
  OUTLINED_FUNCTION_75_1();
  v2 = sub_2179691BC();

  return MEMORY[0x2822009F8](sub_2179058F0, v2, v1);
}

uint64_t sub_2179058F0()
{
  OUTLINED_FUNCTION_84();
  v1 = v0[21];

  v2 = OUTLINED_FUNCTION_10_7();
  sub_217905BA8(v2, v3);
  v0[23] = v1;
  v4 = v0[16];
  v5 = v0[17];
  if (v1)
  {
    v6 = sub_217905A2C;
  }

  else
  {
    v6 = sub_217905980;
  }

  return MEMORY[0x2822009F8](v6, v4, v5);
}

uint64_t sub_217905980()
{
  OUTLINED_FUNCTION_84();

  v0 = OUTLINED_FUNCTION_68_2();
  v1(v0);
  OUTLINED_FUNCTION_66_3();

  OUTLINED_FUNCTION_7_10();

  return v2();
}

uint64_t sub_217905A2C()
{
  OUTLINED_FUNCTION_84();

  v1 = OUTLINED_FUNCTION_10_7();
  v2(v1);
  v3 = v0[23];
  v4 = v0[7];
  sub_2179099FC(v0[6], v4);
  sub_217903938(v4);

  OUTLINED_FUNCTION_66_3();

  OUTLINED_FUNCTION_7_10();

  return v5();
}

uint64_t sub_217905AF8()
{
  OUTLINED_FUNCTION_84();

  v1 = v0[20];
  v2 = v0[7];
  sub_2179099FC(v0[6], v2);
  sub_217903938(v2);

  OUTLINED_FUNCTION_66_3();

  OUTLINED_FUNCTION_7_10();

  return v3();
}

uint64_t sub_217905BA8(uint64_t a1, uint64_t a2)
{
  v26 = a1;
  v4 = _s23PlaylistDetailViewModelC12LoadingStateOMa(0);
  MEMORY[0x28223BE20](v4);
  v6 = v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8AB10, &unk_21796B0A0);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v10 = v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = v23 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8AAE8, &qword_21796AFA0);
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = v23 - v15;
  result = sub_21796927C();
  if (!v2)
  {
    v23[1] = a2;
    v24 = v14;
    v25 = v4;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_21796657C();

    if (__swift_getEnumTagSinglePayload(v12, 1, v13) == 1)
    {
      return sub_2178BE050(v12, &qword_27CB8AB10, &unk_21796B0A0);
    }

    else
    {
      v18 = v24;
      (*(v24 + 32))(v16, v12, v13);
      sub_217968DFC();
      sub_2179680CC();
      v19 = sub_2179680BC();
      v20 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8AB18, &unk_21796FEE0) + 48);
      if (v19)
      {
        v21 = 1;
      }

      else
      {
        v21 = 2;
      }

      *v6 = v21;
      v22 = *(v18 + 16);
      v22(&v6[v20], v16, v13);
      swift_storeEnumTagMultiPayload();
      sub_217903938(v6);
      v22(v10, v16, v13);
      __swift_storeEnumTagSinglePayload(v10, 0, 1, v13);
      sub_217903A6C();
      return (*(v18 + 8))(v16, v13);
    }
  }

  return result;
}

uint64_t sub_217905ECC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8A810, &unk_21796A9A0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v21 - v9;
  sub_2178745BC();
  v11 = sub_21796923C();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v10, 1, v11);

  if (EnumTagSinglePayload == 1)
  {
    sub_2178BE050(v10, &qword_27CB8A810, &unk_21796A9A0);
  }

  else
  {
    sub_21796922C();
    (*(*(v11 - 8) + 8))(v10, v11);
  }

  v13 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v13)
  {
    swift_getObjectType();
    v14 = sub_2179691BC();
    v16 = v15;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v17 = sub_217968F9C() + 32;

      if (v16 | v14)
      {
        v22[0] = 0;
        v22[1] = 0;
        v18 = v22;
        v22[2] = v14;
        v22[3] = v16;
      }

      else
      {
        v18 = 0;
      }

      v21[1] = 7;
      v21[2] = v18;
      v21[3] = v17;
      v19 = swift_task_create();

      sub_2178BE050(a3, &qword_27CB8A810, &unk_21796A9A0);

      return v19;
    }
  }

  else
  {
    v14 = 0;
    v16 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_2178BE050(a3, &qword_27CB8A810, &unk_21796A9A0);
  if (v16 | v14)
  {
    v22[4] = 0;
    v22[5] = 0;
    v22[6] = v14;
    v22[7] = v16;
  }

  return swift_task_create();
}

double sub_21790615C()
{
  v2 = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8A810, &unk_21796A9A0);
  OUTLINED_FUNCTION_48(v3);
  OUTLINED_FUNCTION_47();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_9_5();
  _s23PlaylistDetailViewModelC12LoadingStateOMa(0);
  OUTLINED_FUNCTION_3();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_17_5();
  v8 = v6 - v7;
  MEMORY[0x28223BE20](v9);
  v11 = &v28 - v10;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21796657C();

  OUTLINED_FUNCTION_47_0();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    if (*v11 > 1u)
    {
      goto LABEL_10;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8A750, &unk_21796A930);
    sub_21796926C();

LABEL_7:
    if (*(v2 + OBJC_IVAR____TtCV25_MusicKitInternal_SwiftUI11MusicPicker23PlaylistDetailViewModel_source) != 2)
    {
      return result;
    }

    v17 = [objc_opt_self() mainBundle];
    v18 = sub_21796940C();

    if ((v18 & 1) == 0)
    {
      return result;
    }

    sub_21796923C();
    OUTLINED_FUNCTION_13_7();
    __swift_storeEnumTagSinglePayload(v19, v20, v21, v22);
    v23 = swift_allocObject();
    swift_weakInit();
    sub_21796920C();

    v24 = sub_2179691FC();
    OUTLINED_FUNCTION_137();
    v25 = swift_allocObject();
    v26 = MEMORY[0x277D85700];
    v25[2] = v24;
    v25[3] = v26;
    v25[4] = v23;

    v27 = sub_217905ECC(0, 0, v1, &unk_217970030, v25);
    *v8 = 2;
    *(v8 + 8) = v27;
    OUTLINED_FUNCTION_153();
    swift_storeEnumTagMultiPayload();

    sub_217903938(v8);
LABEL_10:

    return result;
  }

  if (EnumCaseMultiPayload != 1)
  {
    goto LABEL_7;
  }

  v14 = *v11;
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8AB18, &unk_21796FEE0) + 48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8AAE8, &qword_21796AFA0);
  OUTLINED_FUNCTION_4_1();
  (*(v16 + 8))(&v11[v15]);
  if (v14 <= 1)
  {
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_217906460(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8AB10, &unk_21796B0A0);
  v4[6] = swift_task_alloc();
  v4[7] = swift_task_alloc();
  v5 = sub_217968E3C();
  v4[8] = v5;
  v4[9] = *(v5 - 8);
  v4[10] = swift_task_alloc();
  v4[11] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8AAE8, &qword_21796AFA0);
  v4[12] = v6;
  v4[13] = *(v6 - 8);
  v4[14] = swift_task_alloc();
  v4[15] = swift_task_alloc();
  v4[16] = sub_21796920C();
  v4[17] = sub_2179691FC();
  v8 = sub_2179691BC();
  v4[18] = v8;
  v4[19] = v7;

  return MEMORY[0x2822009F8](sub_21790661C, v8, v7);
}

uint64_t sub_21790661C()
{
  OUTLINED_FUNCTION_108();
  OUTLINED_FUNCTION_63_2();
  Strong = swift_weakLoadStrong();
  v0[20] = Strong;
  if (!Strong)
  {

    sub_2179691EC();
    OUTLINED_FUNCTION_25_3();
    sub_217909ABC(v11, v12);
    OUTLINED_FUNCTION_51_1();
    swift_allocError();
    sub_217968E8C();
    swift_willThrow();
    OUTLINED_FUNCTION_64_3();

    OUTLINED_FUNCTION_39();
    OUTLINED_FUNCTION_41_1();

    __asm { BRAA            X1, X16 }
  }

  swift_getKeyPath();
  swift_getKeyPath();
  OUTLINED_FUNCTION_47_0();
  sub_21796657C();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8A728, &qword_21796B550);
  OUTLINED_FUNCTION_137();
  v2 = swift_allocObject();
  v0[21] = v2;
  *(v2 + 16) = xmmword_21796E3B0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8CAA0, &qword_217970040);
  sub_21796801C();
  v3 = sub_2179682BC();

  *(v2 + 32) = v3;
  swift_task_alloc();
  OUTLINED_FUNCTION_46_1();
  v0[22] = v4;
  *v4 = v5;
  v4[1] = sub_217906848;
  OUTLINED_FUNCTION_41_1();

  return MEMORY[0x2821246D8](v6, v7, v8, v9);
}

uint64_t sub_217906848()
{
  OUTLINED_FUNCTION_69_1();
  v2 = *v1;
  v3 = *v1;
  OUTLINED_FUNCTION_6();
  *v4 = v3;
  *v4 = *v1;
  v3[23] = v0;

  v5 = v2[10];
  v6 = v2[9];
  v7 = v2[8];
  v10 = *(v6 + 8);
  v8 = v6 + 8;
  v9 = v10;
  if (v0)
  {
    v9(v5, v7);

    v11 = v3[18];
    v12 = v3[19];
    v13 = sub_217906C0C;
  }

  else
  {
    v3[24] = v9;
    v3[25] = v8 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v9(v5, v7);

    v11 = v3[18];
    v12 = v3[19];
    v13 = sub_2179069E8;
  }

  return MEMORY[0x2822009F8](v13, v11, v12);
}

uint64_t sub_2179069E8()
{
  OUTLINED_FUNCTION_108();
  v1 = v0[24];
  v2 = v0[12];
  v3 = v0[7];
  sub_217968E2C();
  v4 = OUTLINED_FUNCTION_47_0();
  v1(v4);
  if (__swift_getEnumTagSinglePayload(v3, 1, v2) == 1)
  {
    v5 = v0[7];
    sub_217968DFC();
    sub_2179680AC();
    OUTLINED_FUNCTION_26_4(v5);
    if (!v6)
    {
      sub_2178BE050(v0[7], &qword_27CB8AB10, &unk_21796B0A0);
    }
  }

  else
  {
    (*(v0[13] + 32))(v0[15], v0[7], v0[12]);
  }

  v7 = v0[23];
  if (sub_2179680BC())
  {
    sub_21796927C();
    if (v7)
    {
      OUTLINED_FUNCTION_46_2();

      v8 = OUTLINED_FUNCTION_49_2();
      v9(v8);

      OUTLINED_FUNCTION_39();
      OUTLINED_FUNCTION_41_1();

      __asm { BRAA            X1, X16 }
    }

    v16 = swift_task_alloc();
    v0[26] = v16;
    OUTLINED_FUNCTION_0_14();
    sub_217909ABC(v17, v18);
    OUTLINED_FUNCTION_42_1();
    *v16 = v19;
    OUTLINED_FUNCTION_16_4();
    OUTLINED_FUNCTION_41_1();

    return MEMORY[0x282124620](v20, v21, v22, v23);
  }

  else
  {
    OUTLINED_FUNCTION_20_4();
    OUTLINED_FUNCTION_41_1();

    return MEMORY[0x2822009F8](v12, v13, v14);
  }
}

uint64_t sub_217906C0C()
{
  OUTLINED_FUNCTION_69_1();

  OUTLINED_FUNCTION_64_3();

  OUTLINED_FUNCTION_39();

  return v0();
}

uint64_t sub_217906CB0()
{
  OUTLINED_FUNCTION_84();
  v2 = *v1;
  OUTLINED_FUNCTION_30_2();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 216) = v0;

  OUTLINED_FUNCTION_139();
  v6 = *(v5 + 152);
  v7 = *(v2 + 144);
  if (v0)
  {
    v8 = sub_2179071CC;
  }

  else
  {
    v8 = sub_217906DDC;
  }

  return MEMORY[0x2822009F8](v8, v7, v6);
}

uint64_t sub_217906DDC()
{
  OUTLINED_FUNCTION_108();
  v1 = v0[12];
  v2 = v0[6];
  OUTLINED_FUNCTION_12_5();
  if (v3)
  {
    sub_2178BE050(v2, &qword_27CB8AB10, &unk_21796B0A0);
  }

  else
  {
    v4 = v0[14];
    v5 = v0[13];
    OUTLINED_FUNCTION_51_3();
    v6();
    sub_217968DFC();
    sub_2179680CC();
    (*(v5 + 8))(v4, v1);
    v7 = v0[27];
    v8 = sub_2179680BC();
    if (v8)
    {
      sub_21796927C();
      if (v7)
      {
        OUTLINED_FUNCTION_46_2();

        v9 = OUTLINED_FUNCTION_49_2();
        v10(v9);

        OUTLINED_FUNCTION_39();
        OUTLINED_FUNCTION_41_1();

        __asm { BRAA            X1, X16 }
      }

      v17 = swift_task_alloc();
      v0[26] = v17;
      OUTLINED_FUNCTION_0_14();
      sub_217909ABC(v18, v19);
      OUTLINED_FUNCTION_42_1();
      *v17 = v20;
      OUTLINED_FUNCTION_16_4();
      OUTLINED_FUNCTION_41_1();

      return MEMORY[0x282124620](v21, v22, v23, v24);
    }
  }

  OUTLINED_FUNCTION_20_4();
  OUTLINED_FUNCTION_41_1();

  return MEMORY[0x2822009F8](v13, v14, v15);
}

uint64_t sub_217906FE4()
{
  OUTLINED_FUNCTION_62();
  *(v0 + 232) = sub_2179691FC();
  OUTLINED_FUNCTION_75_1();
  v2 = sub_2179691BC();

  return MEMORY[0x2822009F8](sub_217907068, v2, v1);
}

void sub_217907068()
{
  OUTLINED_FUNCTION_84();
  v1 = v0[28];

  v2 = OUTLINED_FUNCTION_10_7();
  sub_217907284(v2, v3);
  if (v1)
  {
  }

  else
  {
    v4 = v0[18];
    v5 = v0[19];

    MEMORY[0x2822009F8](sub_21790710C, v4, v5);
  }
}

uint64_t sub_21790710C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_127();
  OUTLINED_FUNCTION_138();

  v12 = OUTLINED_FUNCTION_49_2();
  v13(v12);

  OUTLINED_FUNCTION_7_10();
  OUTLINED_FUNCTION_102();

  return v15(v14, v15, v16, v17, v18, v19, v20, v21, a9, a10, a11, a12);
}

uint64_t sub_2179071CC()
{
  OUTLINED_FUNCTION_69_1();
  OUTLINED_FUNCTION_46_2();

  v0 = OUTLINED_FUNCTION_68_2();
  v1(v0);
  OUTLINED_FUNCTION_64_3();

  OUTLINED_FUNCTION_39();

  return v2();
}

uint64_t sub_217907284(uint64_t a1, uint64_t a2)
{
  v3 = _s23PlaylistDetailViewModelC12LoadingStateOMa(0);
  MEMORY[0x28223BE20](v3);
  v5 = v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8AB10, &unk_21796B0A0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v13 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8AAE8, &qword_21796AFA0);
  v10 = *(*(v9 - 8) + 16);
  v10(v8, a2, v9);
  __swift_storeEnumTagSinglePayload(v8, 0, 1, v9);
  sub_217903A6C();
  v11 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8AB18, &unk_21796FEE0) + 48);
  *v5 = 2;
  v10(&v5[v11], a2, v9);
  swift_storeEnumTagMultiPayload();
  return sub_217903938(v5);
}

uint64_t sub_217907424()
{
  OUTLINED_FUNCTION_62();
  v1[3] = v2;
  v1[4] = v0;
  v1[2] = v3;
  v4 = _s23PlaylistDetailViewModelC12LoadingStateOMa(0);
  v1[5] = v4;
  OUTLINED_FUNCTION_48(v4);
  v1[6] = OUTLINED_FUNCTION_16_2();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8AAE8, &qword_21796AFA0);
  v1[7] = v5;
  OUTLINED_FUNCTION_64_0(v5);
  v1[8] = v6;
  v1[9] = OUTLINED_FUNCTION_71_2();
  v1[10] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8AB10, &unk_21796B0A0);
  OUTLINED_FUNCTION_48(v7);
  v1[11] = OUTLINED_FUNCTION_71_2();
  v1[12] = swift_task_alloc();
  v1[13] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8C9C8, &qword_21796E4A8);
  v1[14] = v8;
  OUTLINED_FUNCTION_64_0(v8);
  v1[15] = v9;
  v1[16] = OUTLINED_FUNCTION_16_2();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CB8AC48, &unk_21796FF10);
  OUTLINED_FUNCTION_48(v10);
  v1[17] = OUTLINED_FUNCTION_16_2();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8C9F0, &qword_21796E530);
  v1[18] = v11;
  OUTLINED_FUNCTION_64_0(v11);
  v1[19] = v12;
  v1[20] = OUTLINED_FUNCTION_16_2();
  sub_21796920C();
  v1[21] = sub_2179691FC();
  OUTLINED_FUNCTION_75_1();
  v14 = sub_2179691BC();
  v1[22] = v14;
  v1[23] = v13;

  return MEMORY[0x2822009F8](sub_217907660, v14, v13);
}

uint64_t sub_217907660(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_127();
  OUTLINED_FUNCTION_138();
  if (*(v12[4] + OBJC_IVAR____TtCV25_MusicKitInternal_SwiftUI11MusicPicker23PlaylistDetailViewModel_source) == 2)
  {

    swift_getKeyPath();
    swift_getKeyPath();
    sub_21796657C();

    OUTLINED_FUNCTION_10_7();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        v14 = v12[6];
        v15 = v14 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8AB18, &unk_21796FEE0) + 48);
LABEL_14:
        v35 = v12[11];
        v36 = v12[7];
        (*(v12[8] + 32))(v12[10], v15, v36);
        v37 = OUTLINED_FUNCTION_68_2();
        v38(v37);
        OUTLINED_FUNCTION_62_2();
        __swift_storeEnumTagSinglePayload(v39, v40, v41, v36);
        sub_217907E18();
        sub_2178BE050(v35, &qword_27CB8AB10, &unk_21796B0A0);
        OUTLINED_FUNCTION_62_2();
        __swift_storeEnumTagSinglePayload(v42, v43, v44, v36);
        sub_217903A6C();
        (*(v12[8] + 8))(v12[10], v12[7]);

        OUTLINED_FUNCTION_7_10();
        OUTLINED_FUNCTION_102();

        return v46(v45, v46, v47, v48, v49, v50, v51, v52, a9, a10, a11, a12);
      }
    }

    else
    {
      sub_217909A60(v12[6]);
    }

    v27 = v12[12];
    v28 = v12[7];
    swift_getKeyPath();
    KeyPath = swift_getKeyPath();
    OUTLINED_FUNCTION_62_3(KeyPath);

    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v27, 1, v28);
    v31 = v12[12];
    if (EnumTagSinglePayload == 1)
    {
      v32 = v12[7];
      sub_217968DFC();
      sub_2179680AC();
      if (__swift_getEnumTagSinglePayload(v31, 1, v32) != 1)
      {
        sub_2178BE050(v12[12], &qword_27CB8AB10, &unk_21796B0A0);
      }
    }

    else
    {
      v33 = OUTLINED_FUNCTION_63_0();
      v34(v33);
    }

    v15 = v12[9];
    goto LABEL_14;
  }

  v16 = v12[17];
  sub_217968DFC();
  sub_21796820C();
  swift_getKeyPath();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21796657C();

  sub_217968E3C();
  OUTLINED_FUNCTION_62_2();
  __swift_storeEnumTagSinglePayload(v17, v18, v19, v20);
  OUTLINED_FUNCTION_5_8();
  sub_217909ABC(v21, v22);
  sub_21796817C();

  sub_2178BE050(v16, qword_27CB8AC48, &unk_21796FF10);
  sub_2179681DC();
  sub_2179681AC();
  swift_task_alloc();
  OUTLINED_FUNCTION_46_1();
  v12[24] = v23;
  *v23 = v24;
  v23[1] = sub_217907ACC;
  OUTLINED_FUNCTION_102();

  return MEMORY[0x282124698](v25);
}

uint64_t sub_217907ACC()
{
  OUTLINED_FUNCTION_84();
  v2 = *v1;
  OUTLINED_FUNCTION_30_2();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 200) = v0;

  OUTLINED_FUNCTION_139();
  v6 = *(v5 + 184);
  v7 = *(v2 + 176);
  if (v0)
  {
    v8 = sub_217907D20;
  }

  else
  {
    v8 = sub_217907BF8;
  }

  return MEMORY[0x2822009F8](v8, v7, v6);
}

uint64_t sub_217907BF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_127();
  OUTLINED_FUNCTION_138();
  v13 = v12[7];

  sub_21796823C();
  OUTLINED_FUNCTION_62_2();
  __swift_storeEnumTagSinglePayload(v14, v15, v16, v13);
  sub_217903A6C();
  v17 = OUTLINED_FUNCTION_68_2();
  v18(v17);
  (*(v12[19] + 8))(v12[20], v12[18]);

  OUTLINED_FUNCTION_7_10();
  OUTLINED_FUNCTION_102();

  return v20(v19, v20, v21, v22, v23, v24, v25, v26, a9, a10, a11, a12);
}

uint64_t sub_217907D20()
{

  v0 = OUTLINED_FUNCTION_10_7();
  v1(v0);

  OUTLINED_FUNCTION_39();

  return v2();
}

void sub_217907E18()
{
  OUTLINED_FUNCTION_81();
  v118 = v1;
  v3 = v2;
  v5 = v4;
  v104 = v6;
  v7 = sub_217968DFC();
  OUTLINED_FUNCTION_2();
  v103 = v8;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_17_5();
  v102 = (v10 - v11);
  v13 = MEMORY[0x28223BE20](v12);
  v119 = &v101 - v14;
  MEMORY[0x28223BE20](v13);
  v112 = &v101 - v15;
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8AB20, &unk_21796B100);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_47();
  MEMORY[0x28223BE20](v16);
  v18 = &v101 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8AB10, &unk_21796B0A0);
  v20 = OUTLINED_FUNCTION_48(v19);
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_17_5();
  v23 = v21 - v22;
  MEMORY[0x28223BE20](v24);
  v116 = &v101 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8BB68, &qword_21796C930);
  OUTLINED_FUNCTION_48(v26);
  OUTLINED_FUNCTION_47();
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_75_2();
  v28 = sub_2179655BC();
  OUTLINED_FUNCTION_2();
  v30 = v29;
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_14();
  v34 = v33 - v32;
  *&v120 = v5;
  *(&v120 + 1) = v3;
  v35 = sub_21796559C();
  v38 = sub_217873C34(v35, v36, v37);
  v39 = sub_21796947C();
  v41 = v40;
  (*(v30 + 8))(v34, v28);
  v42 = HIBYTE(v41) & 0xF;
  if ((v41 & 0x2000000000000000) == 0)
  {
    v42 = v39 & 0xFFFFFFFFFFFFLL;
  }

  if (!v42)
  {

    sub_2178745BC();
    v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8AAE8, &qword_21796AFA0);
    OUTLINED_FUNCTION_26_4(v23);
    if (v53)
    {
      sub_2179680AC();
      OUTLINED_FUNCTION_26_4(v23);
      if (!v53)
      {
        sub_2178BE050(v23, &qword_27CB8AB10, &unk_21796B0A0);
      }
    }

    else
    {
      OUTLINED_FUNCTION_10();
      (*(v100 + 32))(v104, v23, v52);
    }

    goto LABEL_33;
  }

  *&v120 = v39;
  *(&v120 + 1) = v41;
  sub_21796580C();
  sub_21796581C();
  OUTLINED_FUNCTION_62_2();
  v111 = v43;
  __swift_storeEnumTagSinglePayload(v44, v45, v46, v43);
  v109 = sub_21796948C();
  v48 = v47;
  sub_2178BE050(v0, &qword_27CB8BB68, &qword_21796C930);

  v49 = v116;
  sub_2178745BC();
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8AAE8, &qword_21796AFA0);
  if (__swift_getEnumTagSinglePayload(v49, 1, v50) == 1)
  {

    sub_2178BE050(v49, &qword_27CB8AB10, &unk_21796B0A0);
    v51 = MEMORY[0x277D84F90];
    goto LABEL_32;
  }

  v110 = v48;
  v106 = v38;
  v108 = v0;
  sub_217909E08(&qword_27CB8D398, &qword_27CB8AAE8, &qword_21796AFA0);
  sub_21796905C();
  OUTLINED_FUNCTION_36_0();
  v55 = v54;
  v57 = sub_217909E08(v56, &qword_27CB8AAE8, &qword_21796AFA0);
  v115 = (v103 + 16);
  v118 = (v103 + 32);
  v101 = MEMORY[0x277D84F90];
  v113 = (v103 + 8);
  v58 = v112;
  v107 = v7;
  v105 = v57;
  v116 = v55;
  v117 = v50;
  while (1)
  {
    sub_2179692EC();
    if (*&v55[v18] == v120)
    {
      break;
    }

    v59 = sub_21796934C();
    v60 = v119;
    (*v115)(v119);
    v59(&v120, 0);
    sub_2179692FC();
    v114 = *v118;
    v114(v58, v60, v7);
    OUTLINED_FUNCTION_0_14();
    sub_217909ABC(&qword_27CB8B0E0, v61);
    OUTLINED_FUNCTION_51_0();
    sub_217967F0C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8B078, &unk_21796B730);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8B080, &unk_21796E060);
    if ((OUTLINED_FUNCTION_65_3() & 1) == 0)
    {
      v122 = 0;
      v120 = 0u;
      v121 = 0u;
LABEL_18:
      sub_2178BE050(&v120, &qword_27CB8B088, &qword_21796B740);
      goto LABEL_19;
    }

    v62 = *(&v121 + 1);
    if (!*(&v121 + 1))
    {
      goto LABEL_18;
    }

    v63 = v122;
    __swift_project_boxed_opaque_existential_1(&v120, *(&v121 + 1));
    v64 = *(v63 + 64);
    v65 = v63;
    v58 = v112;
    v66 = v64(v62, v65);
    v68 = v67;
    __swift_destroy_boxed_opaque_existential_1(&v120);
    if (v68 && (*&v120 = v66, *(&v120 + 1) = v68, v69 = v108, sub_21796580C(), OUTLINED_FUNCTION_62_2(), __swift_storeEnumTagSinglePayload(v70, v71, v72, v111), v73 = OUTLINED_FUNCTION_85_1(129, v69), v75 = v74, v76 = v69, v7 = v107, sub_2178BE050(v76, &qword_27CB8BB68, &qword_21796C930), , *&v120 = v73, *(&v120 + 1) = v75, LOBYTE(v73) = OUTLINED_FUNCTION_24_6(), v58 = v112, , (v73 & 1) != 0))
    {
LABEL_23:
      v114(v102, v58, v7);
      v90 = v101;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v123 = v90;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_21790A000(0, *(v90 + 16) + 1, 1);
        v90 = v123;
      }

      v93 = *(v90 + 16);
      v92 = *(v90 + 24);
      v55 = v116;
      if (v93 >= v92 >> 1)
      {
        sub_21790A000(v92 > 1, v93 + 1, 1);
        v90 = v123;
      }

      *(v90 + 16) = v93 + 1;
      v94 = (*(v103 + 80) + 32) & ~*(v103 + 80);
      v101 = v90;
      v114((v90 + v94 + *(v103 + 72) * v93), v102, v7);
    }

    else
    {
LABEL_19:
      OUTLINED_FUNCTION_51_0();
      sub_217967F0C();
      if ((OUTLINED_FUNCTION_65_3() & 1) == 0)
      {
        v122 = 0;
        v120 = 0u;
        v121 = 0u;
LABEL_29:
        sub_2178BE050(&v120, &qword_27CB8B088, &qword_21796B740);
        goto LABEL_30;
      }

      v77 = *(&v121 + 1);
      if (!*(&v121 + 1))
      {
        goto LABEL_29;
      }

      v78 = v122;
      __swift_project_boxed_opaque_existential_1(&v120, *(&v121 + 1));
      v79 = (*(v78 + 72))(v77, v78);
      v81 = v80;
      __swift_destroy_boxed_opaque_existential_1(&v120);
      if (v81)
      {
        *&v120 = v79;
        *(&v120 + 1) = v81;
        v82 = v108;
        sub_21796580C();
        OUTLINED_FUNCTION_62_2();
        __swift_storeEnumTagSinglePayload(v83, v84, v85, v111);
        v86 = OUTLINED_FUNCTION_85_1(129, v82);
        v88 = v87;
        v89 = v82;
        v7 = v107;
        sub_2178BE050(v89, &qword_27CB8BB68, &qword_21796C930);

        *&v120 = v86;
        *(&v120 + 1) = v88;
        LOBYTE(v86) = OUTLINED_FUNCTION_24_6();

        if (v86)
        {
          goto LABEL_23;
        }
      }

LABEL_30:
      (*v113)(v58, v7);
      v55 = v116;
    }
  }

  sub_2178BE050(v18, &qword_27CB8AB20, &unk_21796B100);
  v51 = v101;
LABEL_32:
  *&v120 = v51;
  v95 = OUTLINED_FUNCTION_63_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(v95, v96);
  OUTLINED_FUNCTION_51_3();
  sub_217909E08(v97, v98, v99);
  sub_21796811C();
LABEL_33:
  OUTLINED_FUNCTION_80();
}

uint64_t sub_21790889C(uint64_t (*a1)(void), uint64_t a2)
{
  a1(0);
  sub_217967F0C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8B078, &unk_21796B730);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8B080, &unk_21796E060);
  if ((OUTLINED_FUNCTION_15_5(v2, v3) & 1) == 0)
  {
    OUTLINED_FUNCTION_30_4();
    goto LABEL_5;
  }

  if (!v19[3])
  {
LABEL_5:
    sub_2178BE050(v19, &qword_27CB8B088, &qword_21796B740);
    OUTLINED_FUNCTION_82_2();
    return OUTLINED_FUNCTION_63_0();
  }

  OUTLINED_FUNCTION_86_1(v19);
  v4 = OUTLINED_FUNCTION_68_2();
  v6 = v5(v4);
  OUTLINED_FUNCTION_37_2(v6, v7, v8, v9, v10, v11, v12, v13, v15, v16, v17, v18);
  return OUTLINED_FUNCTION_63_0();
}

uint64_t sub_217908A24()
{
  v0 = OUTLINED_FUNCTION_52_2();
  v1(v0);
  v2 = OUTLINED_FUNCTION_153();
  sub_217909ABC(v2, v3);
  sub_217967F0C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8B078, &unk_21796B730);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8B080, &unk_21796E060);
  if ((OUTLINED_FUNCTION_15_5(v4, v5) & 1) == 0)
  {
    OUTLINED_FUNCTION_30_4();
    goto LABEL_5;
  }

  if (!v21[3])
  {
LABEL_5:
    sub_2178BE050(v21, &qword_27CB8B088, &qword_21796B740);
    OUTLINED_FUNCTION_82_2();
    return OUTLINED_FUNCTION_63_0();
  }

  OUTLINED_FUNCTION_86_1(v21);
  v6 = OUTLINED_FUNCTION_68_2();
  v8 = v7(v6);
  OUTLINED_FUNCTION_37_2(v8, v9, v10, v11, v12, v13, v14, v15, v17, v18, v19, v20);
  return OUTLINED_FUNCTION_63_0();
}

uint64_t sub_217908B98(uint64_t (*a1)(void), uint64_t a2)
{
  a1(0);
  sub_217967F0C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8B078, &unk_21796B730);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8B080, &unk_21796E060);
  if ((OUTLINED_FUNCTION_15_5(v2, v3) & 1) == 0)
  {
    OUTLINED_FUNCTION_30_4();
    goto LABEL_5;
  }

  if (!v19[3])
  {
LABEL_5:
    sub_2178BE050(v19, &qword_27CB8B088, &qword_21796B740);
    OUTLINED_FUNCTION_82_2();
    return OUTLINED_FUNCTION_63_0();
  }

  OUTLINED_FUNCTION_86_1(v19);
  v4 = OUTLINED_FUNCTION_68_2();
  v6 = v5(v4);
  OUTLINED_FUNCTION_37_2(v6, v7, v8, v9, v10, v11, v12, v13, v15, v16, v17, v18);
  return OUTLINED_FUNCTION_63_0();
}

uint64_t sub_217908D20()
{
  v0 = OUTLINED_FUNCTION_52_2();
  v1(v0);
  v2 = OUTLINED_FUNCTION_153();
  sub_217909ABC(v2, v3);
  sub_217967F0C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8B078, &unk_21796B730);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8B080, &unk_21796E060);
  if ((OUTLINED_FUNCTION_15_5(v4, v5) & 1) == 0)
  {
    OUTLINED_FUNCTION_30_4();
    goto LABEL_5;
  }

  if (!v21[3])
  {
LABEL_5:
    sub_2178BE050(v21, &qword_27CB8B088, &qword_21796B740);
    OUTLINED_FUNCTION_82_2();
    return OUTLINED_FUNCTION_63_0();
  }

  OUTLINED_FUNCTION_86_1(v21);
  v6 = OUTLINED_FUNCTION_68_2();
  v8 = v7(v6);
  OUTLINED_FUNCTION_37_2(v8, v9, v10, v11, v12, v13, v14, v15, v17, v18, v19, v20);
  return OUTLINED_FUNCTION_63_0();
}

uint64_t sub_217908E0C()
{
  v1 = OBJC_IVAR____TtCV25_MusicKitInternal_SwiftUI11MusicPicker23PlaylistDetailViewModel__playlist;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8D3C0, &qword_2179700A8);
  OUTLINED_FUNCTION_4_1();
  (*(v2 + 8))(v0 + v1);
  v3 = OBJC_IVAR____TtCV25_MusicKitInternal_SwiftUI11MusicPicker23PlaylistDetailViewModel__loadingState;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8D3C8, &qword_2179700B0);
  OUTLINED_FUNCTION_4_1();
  (*(v4 + 8))(v0 + v3);
  v5 = OBJC_IVAR____TtCV25_MusicKitInternal_SwiftUI11MusicPicker23PlaylistDetailViewModel__entries;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8D3D0, &qword_2179700B8);
  OUTLINED_FUNCTION_4_1();
  (*(v6 + 8))(v0 + v5);
  v7 = OBJC_IVAR____TtCV25_MusicKitInternal_SwiftUI11MusicPicker23PlaylistDetailViewModel__totalEntriesCount;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8D3D8, &qword_2179700C0);
  OUTLINED_FUNCTION_4_1();
  (*(v8 + 8))(v0 + v7);
  return v0;
}

uint64_t sub_217908F2C()
{
  sub_217908E0C();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

void sub_217908FAC(uint64_t a1)
{
  sub_21790916C(319, &qword_27CB8D318, MEMORY[0x277CD8608]);
  if (v1 <= 0x3F)
  {
    sub_21790916C(319, &qword_27CB8D320, _s23PlaylistDetailViewModelC12LoadingStateOMa);
    if (v2 <= 0x3F)
    {
      sub_217909214(319, &qword_27CB8D328, &qword_27CB8AB10, &unk_21796B0A0);
      if (v3 <= 0x3F)
      {
        sub_217909214(319, &qword_27CB8D330, &qword_27CB8D338, &qword_21796FD80);
        if (v4 <= 0x3F)
        {
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

void sub_21790916C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    OUTLINED_FUNCTION_51_1();
    v4 = sub_21796659C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_2179091DC(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_217909214(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    OUTLINED_FUNCTION_51_1();
    v5 = sub_21796659C();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

unsigned __int8 *_s23PlaylistDetailViewModelC6SourceOwet(unsigned __int8 *result, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
LABEL_18:
    v6 = *result;
    v7 = v6 >= 2;
    v8 = (v6 + 2147483646) & 0x7FFFFFFF;
    if (!v7)
    {
      v8 = -1;
    }

    if (v8 + 1 >= 2)
    {
      return v8;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v2 = a2 + 2;
    if (a2 + 2 >= 0xFFFF00)
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

    switch(v4)
    {
      case 1:
        v5 = result[1];
        if (!result[1])
        {
          goto LABEL_18;
        }

        goto LABEL_16;
      case 2:
        v5 = *(result + 1);
        if (!*(result + 1))
        {
          goto LABEL_18;
        }

        goto LABEL_16;
      case 3:
        __break(1u);
        return result;
      case 4:
        v5 = *(result + 1);
        if (!v5)
        {
          goto LABEL_18;
        }

LABEL_16:
        result = ((*result | (v5 << 8)) - 2);
        break;
      default:
        goto LABEL_18;
    }
  }

  return result;
}

_BYTE *_s23PlaylistDetailViewModelC6SourceOwst(_BYTE *result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 2;
  if (a3 + 2 >= 0xFFFF00)
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

  if (a3 >= 0xFE)
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  if (a2 > 0xFD)
  {
    v7 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v6)
    {
      case 1:
        result[1] = v7;
        break;
      case 2:
        *(result + 1) = v7;
        break;
      case 3:
LABEL_25:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v7;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v6)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_20;
      case 2:
        *(result + 1) = 0;
        goto LABEL_19;
      case 3:
        goto LABEL_25;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_20;
      default:
LABEL_19:
        if (a2)
        {
LABEL_20:
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_2179093F4(unsigned __int8 *a1)
{
  v1 = *a1;
  v2 = v1 >= 2;
  v3 = (v1 + 2147483646) & 0x7FFFFFFF;
  if (v2)
  {
    return (v3 + 1);
  }

  else
  {
    return 0;
  }
}

_BYTE *sub_217909410(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 1;
  }

  return result;
}

void sub_217909440(uint64_t a1)
{
  sub_2179094E4(319, &qword_27CB8D350, &qword_27CB8D358, &unk_21796FDB8);
  if (v1 <= 0x3F)
  {
    sub_2179094E4(319, &qword_27CB8D360, &qword_27CB8AAE8, &qword_21796AFA0);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_2179094E4(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v6)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

uint64_t _s23PlaylistDetailViewModelC12LoadingStateO4KindOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFE)
  {
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 3;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v5 = v6 - 3;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *_s23PlaylistDetailViewModelC12LoadingStateO4KindOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_2179096B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB8D368;
  if (!qword_27CB8D368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB8D368);
  }

  return result;
}

uint64_t sub_217909704@<X0>(uint64_t *a2@<X8>)
{
  _s23PlaylistDetailViewModelCMa(0);
  result = sub_21796654C();
  *a2 = result;
  return result;
}

void sub_21790978C(uint64_t a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8AAE8, &qword_21796AFA0);
  OUTLINED_FUNCTION_2();
  v6 = v5;
  OUTLINED_FUNCTION_47();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_83_2();
  _s23PlaylistDetailViewModelC12LoadingStateOMa(0);
  OUTLINED_FUNCTION_3();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_75_2();
  sub_2179099FC(v1, v3);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v10 = *v3;
      v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8AB18, &unk_21796FEE0);
      (*(v6 + 32))(v2, &v3[*(v11 + 48)], v4);
      MEMORY[0x21CEA86B0](2);
      MEMORY[0x21CEA86B0](v10);
      sub_217909B00();
      sub_217968ECC();
      (*(v6 + 8))(v2, v4);
    }

    else
    {
      MEMORY[0x21CEA86B0](0);
    }
  }

  else
  {
    v12 = *v3;
    MEMORY[0x21CEA86B0](1);
    MEMORY[0x21CEA86B0](v12);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8A750, &unk_21796A930);
    OUTLINED_FUNCTION_47_0();
    sub_21796925C();
  }
}

uint64_t sub_217909974()
{
  sub_21796973C();
  sub_21790978C(v1);
  return sub_21796977C();
}

uint64_t sub_2179099C0(uint64_t a1)
{
  sub_21796973C();
  sub_21790978C(v2);
  return sub_21796977C();
}

uint64_t sub_2179099FC(uint64_t a1, uint64_t a2)
{
  v4 = _s23PlaylistDetailViewModelC12LoadingStateOMa(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_217909A60(uint64_t a1)
{
  v2 = _s23PlaylistDetailViewModelC12LoadingStateOMa(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_217909ABC(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    OUTLINED_FUNCTION_51_1();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_217909B00()
{
  result = qword_27CB8D378;
  if (!qword_27CB8D378)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8AAE8, &qword_21796AFA0);
    sub_217909ABC(&qword_27CB8D380, MEMORY[0x277CD8590]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB8D378);
  }

  return result;
}

uint64_t sub_217909BD8()
{
  OUTLINED_FUNCTION_86();
  sub_217968E3C();
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_83_2();
  v2 = OUTLINED_FUNCTION_39_3();
  v3(v2);
  return sub_217903818(v0);
}

uint64_t sub_217909CA8()
{
  OUTLINED_FUNCTION_86();
  v1 = _s23PlaylistDetailViewModelC12LoadingStateOMa(0);
  v2 = OUTLINED_FUNCTION_48(v1);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_83_2();
  v3 = OUTLINED_FUNCTION_47_0();
  sub_2179099FC(v3, v4);
  return sub_217903938(v0);
}

uint64_t sub_217909D40()
{
  OUTLINED_FUNCTION_86();
  v0 = OUTLINED_FUNCTION_51_0();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_48(v2);
  OUTLINED_FUNCTION_47();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_9_5();
  sub_2178745BC();
  return sub_217903A6C();
}

uint64_t sub_217909E08(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    OUTLINED_FUNCTION_51_1();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

char *sub_217909E4C(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[32 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_1_14(a3, result);
  }

  return result;
}

char *sub_217909E6C(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[16 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_1_14(a3, result);
  }

  return result;
}

char *sub_217909EA4(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[8 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_1_14(a3, result);
  }

  return result;
}

void sub_217909F0C(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t (*a4)(void))
{
  OUTLINED_FUNCTION_86();
  if (v9 < v8 || (a4(0), OUTLINED_FUNCTION_3(), v5 + *(v10 + 72) * v4 <= a3))
  {
    a4(0);
    OUTLINED_FUNCTION_39_3();

    swift_arrayInitWithTakeFrontToBack();
  }

  else if (a3 != v5)
  {
    OUTLINED_FUNCTION_39_3();

    swift_arrayInitWithTakeBackToFront();
  }
}

char *sub_217909FD8(char *__src, size_t __len, char *__dst)
{
  if (__dst != __src || &__src[__len] <= __dst)
  {
    return memmove(__dst, __src, __len);
  }

  return __src;
}

uint64_t sub_21790A0D0()
{
  OUTLINED_FUNCTION_84();
  v2 = *(v0 + 32);
  swift_task_alloc();
  OUTLINED_FUNCTION_46_1();
  *(v1 + 16) = v3;
  *v3 = v4;
  v3[1] = sub_2178655D0;
  v5 = OUTLINED_FUNCTION_8_6();

  return sub_217906460(v5, v6, v7, v2);
}

uint64_t sub_21790A170(uint64_t a1, uint64_t a2)
{
  v4 = _s23PlaylistDetailViewModelC12LoadingStateOMa(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21790A1D4()
{
  OUTLINED_FUNCTION_69_1();
  v2 = _s23PlaylistDetailViewModelC12LoadingStateOMa(0);
  OUTLINED_FUNCTION_48(v2);
  v3 = *(v0 + 32);
  swift_task_alloc();
  OUTLINED_FUNCTION_46_1();
  *(v1 + 16) = v4;
  *v4 = v5;
  v4[1] = sub_217864540;
  v6 = OUTLINED_FUNCTION_8_6();

  return sub_2179051A0(v6, v7, v8, v3, v9);
}

void sub_21790A2B4(char a1, uint64_t a2, char a3, char *a4)
{
  if (a3)
  {
    OUTLINED_FUNCTION_49_1();
    if (v7 != v8)
    {
      if (v6 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_48_1();
    }
  }

  else
  {
    v6 = a2;
  }

  v9 = *(a4 + 2);
  if (v6 <= v9)
  {
    v10 = *(a4 + 2);
  }

  else
  {
    v10 = v6;
  }

  if (v10)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8CC00, &qword_21796F0B8);
    v11 = swift_allocObject();
    v12 = _swift_stdlib_malloc_size(v11);
    *(v11 + 2) = v9;
    *(v11 + 3) = 2 * ((v12 - 32) / 32);
  }

  else
  {
    v11 = MEMORY[0x277D84F90];
  }

  v13 = v11 + 32;
  v14 = a4 + 32;
  if (a1)
  {
    if (v11 != a4 || &v14[32 * v9] <= v13)
    {
      memmove(v13, v14, 32 * v9);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 32 * v9);
  }
}

void sub_21790A3A4()
{
  OUTLINED_FUNCTION_81();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  if (v11)
  {
    OUTLINED_FUNCTION_49_1();
    if (v13 != v14)
    {
      if (v12 + 0x4000000000000000 < 0)
      {
LABEL_24:
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_48_1();
    }
  }

  else
  {
    v12 = v0;
  }

  v15 = *(v8 + 16);
  if (v12 <= v15)
  {
    v16 = *(v8 + 16);
  }

  else
  {
    v16 = v12;
  }

  if (!v16)
  {
    v22 = MEMORY[0x277D84F90];
    goto LABEL_18;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  v17 = v6(0);
  OUTLINED_FUNCTION_64_0(v17);
  v19 = *(v18 + 72);
  v21 = (*(v20 + 80) + 32) & ~*(v20 + 80);
  v22 = swift_allocObject();
  v23 = _swift_stdlib_malloc_size(v22);
  if (!v19)
  {
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (v23 - v21 == 0x8000000000000000 && v19 == -1)
  {
    goto LABEL_23;
  }

  v22[2] = v15;
  v22[3] = 2 * ((v23 - v21) / v19);
LABEL_18:
  v25 = *(v6(0) - 8);
  if (v10)
  {
    v26 = (*(v25 + 80) + 32) & ~*(v25 + 80);
    sub_217909F0C(v8 + v26, v15, v22 + v26, v4);
    *(v8 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  OUTLINED_FUNCTION_80();
}

void sub_21790A580(char a1, uint64_t a2, char a3, char *a4)
{
  if (a3)
  {
    OUTLINED_FUNCTION_49_1();
    if (v7 != v8)
    {
      if (v6 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_48_1();
    }
  }

  else
  {
    v6 = a2;
  }

  v9 = *(a4 + 2);
  if (v6 <= v9)
  {
    v10 = *(a4 + 2);
  }

  else
  {
    v10 = v6;
  }

  if (v10)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8CC08, &unk_2179700D0);
    v11 = swift_allocObject();
    v12 = _swift_stdlib_malloc_size(v11);
    *(v11 + 2) = v9;
    *(v11 + 3) = 2 * ((v12 - 32) / 16);
  }

  else
  {
    v11 = MEMORY[0x277D84F90];
  }

  v13 = v11 + 32;
  v14 = a4 + 32;
  if (a1)
  {
    if (v11 != a4 || &v14[16 * v9] <= v13)
    {
      memmove(v13, v14, 16 * v9);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

uint64_t OUTLINED_FUNCTION_9_8()
{
}

uint64_t OUTLINED_FUNCTION_15_5(uint64_t a1, uint64_t a2, ...)
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_24_6()
{
  v2 = *(v0 - 264);
  *(v0 - 184) = *(v0 - 272);
  *(v0 - 176) = v2;

  return sub_21796949C();
}

double OUTLINED_FUNCTION_28_2()
{

  return result;
}

uint64_t OUTLINED_FUNCTION_37_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);

  return __swift_destroy_boxed_opaque_existential_1(va);
}

uint64_t OUTLINED_FUNCTION_47_2()
{

  return swift_storeEnumTagMultiPayload();
}

uint64_t OUTLINED_FUNCTION_62_3(uint64_t a1)
{

  return sub_21796657C();
}

uint64_t OUTLINED_FUNCTION_63_2()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_64_3()
{
}

uint64_t OUTLINED_FUNCTION_65_3()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_66_3()
{
}

uint64_t OUTLINED_FUNCTION_68_3(uint64_t a1)
{

  return sub_21796657C();
}

uint64_t OUTLINED_FUNCTION_71_2()
{

  return swift_task_alloc();
}

uint64_t OUTLINED_FUNCTION_85_1(uint64_t a1, uint64_t a2)
{

  return sub_21796948C();
}

uint64_t sub_21790AB74(uint64_t a1)
{
  result = sub_21796821C();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

BOOL sub_21790AC3C(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *a1 == *a2 && a1[1] == a2[1];
  if (!v10 && (sub_21796969C() & 1) == 0)
  {
    return 0;
  }

  v11 = a1[2] == a2[2] && a1[3] == a2[3];
  if (!v11 && (sub_21796969C() & 1) == 0)
  {
    return 0;
  }

  v12 = _s35LibrarySectionContentViewPropertiesVMa(0, a3, a4, a5);
  return *(a1 + *(v12 + 52)) == *(a2 + *(v12 + 52));
}

uint64_t sub_21790ACF0(uint64_t a1, uint64_t a2)
{
  sub_217968FCC();
  sub_217968FCC();
  return MEMORY[0x21CEA86B0](*(v2 + *(a2 + 52)));
}

uint64_t sub_21790AD40(uint64_t a1)
{
  sub_21796973C();
  sub_21790ACF0(v3, a1);
  return sub_21796977C();
}

uint64_t sub_21790AD88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>, uint64_t a10)
{
  v12 = *a6;
  *a9 = a1;
  *(a9 + 1) = a2;
  *(a9 + 2) = a3;
  *(a9 + 3) = a4;
  v13 = _s35LibrarySectionContentViewPropertiesVMa(0, a7, a8, a10);
  v14 = *(v13 + 48);
  v15 = sub_21796821C();
  result = (*(*(v15 - 8) + 32))(&a9[v14], a5, v15);
  a9[*(v13 + 52)] = v12;
  return result;
}

uint64_t sub_21790AE78(uint64_t a1, uint64_t a2)
{
  sub_21796973C();
  sub_21790ACF0(v4, a2);
  return sub_21796977C();
}

uint64_t sub_21790AEBC(uint64_t a1)
{
  v2 = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    sub_2178B81FC(319);
    if (v6 > 0x3F)
    {
      return v4;
    }

    else
    {
      v2 = _s11ArtworkViewV9ConstantsVMa(319, v2, *(a1 + 24), v5);
      if (v7 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return v2;
}

uint64_t sub_21790AF88(uint64_t result, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(*(v4 - 8) + 84);
  v6 = *(*(v4 - 8) + 64);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(*(v4 - 8) + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
LABEL_26:
    if (v5 < 0x7FFFFFFF)
    {
      v16 = *(((((((((result + v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8);
      if (v16 >= 0xFFFFFFFF)
      {
        LODWORD(v16) = -1;
      }

      return (v16 + 1);
    }

    else
    {
      return __swift_getEnumTagSinglePayload(result, v5, v4);
    }
  }

  else
  {
    v8 = ((((((((((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 48;
    v9 = a2 - v7;
    v10 = v8 & 0xFFFFFFF8;
    if ((v8 & 0xFFFFFFF8) != 0)
    {
      v11 = 2;
    }

    else
    {
      v11 = v9 + 1;
    }

    if (v11 >= 0x10000)
    {
      v12 = 4;
    }

    else
    {
      v12 = 2;
    }

    if (v11 < 0x100)
    {
      v12 = 1;
    }

    if (v11 >= 2)
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    switch(v13)
    {
      case 1:
        v14 = *(result + v8);
        if (!v14)
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 2:
        v14 = *(result + v8);
        if (!v14)
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 3:
        __break(1u);
        return result;
      case 4:
        v14 = *(result + v8);
        if (!v14)
        {
          goto LABEL_26;
        }

LABEL_22:
        v15 = v14 - 1;
        if (v10)
        {
          v15 = 0;
          LODWORD(v10) = *result;
        }

        result = v7 + (v10 | v15) + 1;
        break;
      default:
        goto LABEL_26;
    }
  }

  return result;
}

void sub_21790B0FC(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(*(v6 - 8) + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(*(v6 - 8) + 84);
  }

  v9 = *(*(v6 - 8) + 64);
  v10 = ((((((((((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 48;
  if (v8 >= a3)
  {
    v14 = 0;
  }

  else
  {
    v11 = a3 - v8;
    if (((((((((((v9 + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFD0)
    {
      v12 = v11 + 1;
    }

    else
    {
      v12 = 2;
    }

    if (v12 >= 0x10000)
    {
      v13 = 4;
    }

    else
    {
      v13 = 2;
    }

    if (v12 < 0x100)
    {
      v13 = 1;
    }

    if (v12 >= 2)
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }
  }

  if (a2 <= v8)
  {
    switch(v14)
    {
      case 1:
        a1[v10] = 0;
        if (a2)
        {
          goto LABEL_32;
        }

        break;
      case 2:
        *&a1[v10] = 0;
        if (a2)
        {
          goto LABEL_32;
        }

        break;
      case 3:
LABEL_42:
        __break(1u);
        break;
      case 4:
        *&a1[v10] = 0;
        goto LABEL_31;
      default:
LABEL_31:
        if (a2)
        {
LABEL_32:
          if (v7 < 0x7FFFFFFF)
          {
            v17 = (((((((&a1[v9 + 7] & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8);
            if ((a2 & 0x80000000) != 0)
            {
              *v17 = a2 & 0x7FFFFFFF;
              v17[1] = 0;
            }

            else
            {
              v17[1] = (a2 - 1);
            }
          }

          else
          {

            __swift_storeEnumTagSinglePayload(a1, a2, v7, v6);
          }
        }

        break;
    }
  }

  else
  {
    if (((((((((((v9 + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFD0)
    {
      v15 = a2 - v8;
    }

    else
    {
      v15 = 1;
    }

    if (((((((((((v9 + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) != 0xFFFFFFD0)
    {
      v16 = ~v8 + a2;
      bzero(a1, ((((((((((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 48);
      *a1 = v16;
    }

    switch(v14)
    {
      case 1:
        a1[v10] = v15;
        break;
      case 2:
        *&a1[v10] = v15;
        break;
      case 3:
        goto LABEL_42;
      case 4:
        *&a1[v10] = v15;
        break;
      default:
        return;
    }
  }
}

uint64_t sub_21790B33C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

void sub_21790B394(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_5_9(a1, a2, a3, a4);
  if (qword_27CB8A378 != -1)
  {
    OUTLINED_FUNCTION_1_15(&qword_27CB8A378);
  }

  v10 = (v4 + v5);

  *v10 = sub_21790B7F0();
  v10[1] = v11;
  v12 = (v4 + *(v7 + 52));
  __asm { FMOV            V1.2D, #5.0 }

  *v12 = xmmword_21796B360;
  v12[1] = _Q1;
  v12[2] = xmmword_21796B370;
  v18 = *(v6 - 8);
  v19 = OUTLINED_FUNCTION_8_10();
  v21 = v20(v19);
  *(v4 + *(v7 + 36)) = v9;
  OUTLINED_FUNCTION_9_9(v21);
  __swift_project_boxed_opaque_existential_1(v35, v35[3]);
  v22 = OUTLINED_FUNCTION_6_6();
  v23(v22);
  __swift_destroy_boxed_opaque_existential_1(v35);
  v24 = OUTLINED_FUNCTION_2_9();
  v25(v24);
  v26 = (*(v18 + 8))(v8, v6);
  OUTLINED_FUNCTION_3_13(v26, v27, v28, v29, v30, v31, v32, v33, v34, v35[0]);
}

uint64_t sub_21790B4E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_217968C2C();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8BD60, &qword_21796CC60);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v40 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8D5F0, &qword_217970328);
  sub_2179664AC();
  sub_21796661C();
  sub_21796641C();
  v16 = sub_2179663BC();
  v17 = a4 + v15[9];
  *v17 = v16;
  *(v17 + 8) = v18 & 1;
  v19 = sub_21796640C();
  v20 = a4 + v15[10];
  *v20 = v19;
  *(v20 + 8) = v21 & 1;
  v22 = sub_21796637C();
  v23 = a4 + v15[11];
  *v23 = v22;
  *(v23 + 8) = v24 & 1;
  *(a4 + v15[12]) = sub_21796631C();
  v25 = sub_21796634C();
  v26 = (a4 + v15[13]);
  *v26 = v25;
  v26[1] = v27;
  v28 = sub_21796630C();
  v29 = (a4 + v15[14]);
  *v29 = v28;
  v29[1] = v30;
  sub_21796632C();
  *(a4 + v15[17]) = sub_21796638C() & 1;
  *(a4 + v15[16]) = sub_21796636C();
  v31 = sub_21796635C();
  v32 = a4 + v15[18];
  *v32 = v31;
  *(v32 + 8) = v33;
  *(v32 + 16) = v34 & 1;
  v35 = (a4 + v15[19]);
  *v35 = a2;
  v35[1] = a3;
  sub_21796641C();
  v36 = sub_217968BCC();
  (*(v9 + 8))(v11, v8);
  if (v36)
  {
    v37 = 1;
  }

  else
  {
    sub_21796641C();
    v37 = 0;
  }

  v38 = sub_21796643C();
  (*(*(v38 - 8) + 8))(a1, v38);
  __swift_storeEnumTagSinglePayload(v14, v37, 1, v8);
  return sub_2178B0264(v14, a4 + v15[20]);
}

uint64_t sub_21790B7AC@<X0>(uint64_t *a1@<X8>)
{
  sub_2179664AC();
  swift_allocObject();
  result = sub_21796647C();
  *a1 = result;
  return result;
}

uint64_t sub_21790B7F0()
{
  _s13PreviewPlayerCMa(0);
  sub_2178B8260();
  OUTLINED_FUNCTION_63_0();

  return sub_2179668BC();
}

void sub_21790B838(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_5_9(a1, a2, a3, a4);
  if (qword_27CB8A378 != -1)
  {
    OUTLINED_FUNCTION_1_15(&qword_27CB8A378);
  }

  v10 = (v4 + v5);

  *v10 = sub_21790B7F0();
  v10[1] = v11;
  v12 = (v4 + *(v7 + 52));
  __asm { FMOV            V1.2D, #5.0 }

  *v12 = xmmword_21796B360;
  v12[1] = _Q1;
  v12[2] = xmmword_21796B370;
  v18 = *(v6 - 8);
  v19 = OUTLINED_FUNCTION_8_10();
  v21 = v20(v19);
  OUTLINED_FUNCTION_9_9(v21);
  __swift_project_boxed_opaque_existential_1(v36, v36[3]);
  v22 = OUTLINED_FUNCTION_6_6();
  v24 = v9 / v23(v22);
  __swift_destroy_boxed_opaque_existential_1(v36);
  *(v4 + *(v7 + 36)) = v24;
  v25 = OUTLINED_FUNCTION_2_9();
  v26(v25);
  v27 = (*(v18 + 8))(v8, v6);
  OUTLINED_FUNCTION_3_13(v27, v28, v29, v30, v31, v32, v33, v34, v35, v36[0]);
}

double sub_21790B98C(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8CA28, &unk_21796F610);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v10 - v2;
  v4 = sub_2179688CC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_217938234();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8B080, &unk_21796E060);
  if ((swift_dynamicCast() & 1) == 0)
  {
    __swift_storeEnumTagSinglePayload(v3, 1, 1, v4);
    sub_2178653BC(v3, &qword_27CB8CA28, &unk_21796F610);
    return 0.0;
  }

  __swift_storeEnumTagSinglePayload(v3, 0, 1, v4);
  (*(v5 + 32))(v7, v3, v4);
  if ((sub_2178C93B0() & 1) == 0)
  {
    (*(v5 + 8))(v7, v4);
    return 0.0;
  }

  v8 = sub_2178C9990(v7);
  (*(v5 + 8))(v7, v4);
  result = 0.0;
  if (v8)
  {
    return 5.0;
  }

  return result;
}

uint64_t sub_21790BB90@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = v2;
  v6 = sub_217966A2C();
  v7 = v6 - 8;
  MEMORY[0x28223BE20](v6);
  v9 = &v35[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_217864B2C(&qword_27CB8D588, &qword_27CB8D580, &qword_2179702D8, MEMORY[0x277CE14C0]);
  *a2 = sub_217967E3C();
  a2[1] = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8D590, &qword_2179702E0);
  sub_21790BE64(v3, *(a1 + 16), *(a1 + 24), a2 + *(v11 + 44));
  v12 = *(v3 + *(a1 + 44));
  v13 = *(v7 + 28);
  v14 = *MEMORY[0x277CE0118];
  sub_217966DAC();
  OUTLINED_FUNCTION_3();
  (*(v15 + 104))(&v9[v13], v14);
  *v9 = v12;
  *(v9 + 1) = v12;
  v16 = sub_217967ADC();
  v17 = v3 + *(a1 + 52);
  sub_21796671C();
  v18 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8D598, &qword_2179702E8) + 36);
  v19 = OUTLINED_FUNCTION_63_0();
  sub_217897E74(v19, v20);
  v21 = &v18[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8D5A0, &qword_2179702F0) + 36)];
  v22 = v36;
  *v21 = *&v35[8];
  *(v21 + 1) = v22;
  *(v21 + 4) = v37;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8D5A8, &qword_2179702F8);
  *&v18[*(v23 + 52)] = v16;
  *&v18[*(v23 + 56)] = 256;
  v24 = sub_217967E3C();
  v26 = v25;
  sub_21788D5F4(v9);
  v27 = &v18[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8D5B0, &qword_217970300) + 36)];
  *v27 = v24;
  v27[1] = v26;
  v28 = *(v17 + 40);
  *&v18[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8D5B8, &qword_217970308) + 36)] = v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8D5C0, &qword_217970310);
  sub_217864B2C(&qword_27CB8D5C8, &qword_27CB8D5C0, &qword_217970310, MEMORY[0x277CE11A8]);
  sub_21790DEBC();
  v30 = sub_2178935BC(v29);
  v32 = v31;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8D5E8, &qword_217970320);
  v34 = &v18[*(result + 36)];
  *v34 = v30;
  v34[1] = v32;
  return result;
}

uint64_t sub_21790BE64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v124 = a1;
  v121 = a4;
  v120 = _s14PreviewControlVMa(0);
  MEMORY[0x28223BE20](v120);
  v97 = &v95 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8CA28, &unk_21796F610);
  MEMORY[0x28223BE20](v7 - 8);
  v116 = &v95 - v8;
  v117 = sub_2179688CC();
  v96 = *(v117 - 8);
  MEMORY[0x28223BE20](v117);
  v95 = &v95 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8D270, &qword_21796FC08);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v119 = &v95 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v118 = &v95 - v13;
  v15 = _s11ArtworkViewVMa(0, a2, a3, v14);
  v113 = *(v15 - 8);
  v111 = *(v113 + 64);
  MEMORY[0x28223BE20](v15);
  v112 = &v95 - v16;
  v110 = sub_217968BAC();
  v109 = *(v110 - 8);
  MEMORY[0x28223BE20](v110);
  v108 = &v95 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_217968C2C();
  v19 = *(v18 - 8);
  v20 = MEMORY[0x28223BE20](v18);
  v122 = &v95 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v23 = &v95 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8BD60, &qword_21796CC60);
  v25 = MEMORY[0x28223BE20](v24 - 8);
  v27 = &v95 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v29 = &v95 - v28;
  v107 = sub_21796643C();
  v105 = *(v107 - 8);
  v30 = MEMORY[0x28223BE20](v107);
  v104 = &v95 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = MEMORY[0x28223BE20](v30);
  v34 = &v95 - v33;
  v35 = MEMORY[0x28223BE20](v32);
  v98 = &v95 - v36;
  MEMORY[0x28223BE20](v35);
  v101 = &v95 - v37;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8D5F0, &qword_217970328);
  MEMORY[0x28223BE20](v38 - 8);
  v102 = &v95 - v39;
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8D5F8, &qword_217970330);
  MEMORY[0x28223BE20](v100);
  v106 = &v95 - v40;
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8D600, &qword_217970338);
  v41 = MEMORY[0x28223BE20](v99);
  v114 = &v95 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = MEMORY[0x28223BE20](v41);
  v103 = &v95 - v44;
  MEMORY[0x28223BE20](v43);
  v125 = &v95 - v45;
  v126 = a2;
  (*(a3 + 88))(a2);
  v115 = v15;
  sub_21788D484(v29, v27, &qword_27CB8BD60, &qword_21796CC60);
  if (__swift_getEnumTagSinglePayload(v27, 1, v18) == 1)
  {
    sub_217968BBC();
    if (__swift_getEnumTagSinglePayload(v27, 1, v18) != 1)
    {
      sub_2178653BC(v27, &qword_27CB8BD60, &qword_21796CC60);
    }
  }

  else
  {
    (*(v19 + 32))(v23, v27, v18);
  }

  (*(v19 + 16))(v122, v23, v18);
  sub_21796644C();
  (*(v19 + 8))(v23, v18);
  sub_2178653BC(v29, &qword_27CB8BD60, &qword_21796CC60);
  v123 = a3;
  sub_217938234();
  v46 = v128;
  v47 = v129;
  __swift_project_boxed_opaque_existential_1(&v127, v128);
  v48 = (*(v47 + 104))(v46, v47);
  __swift_destroy_boxed_opaque_existential_1(&v127);
  v49 = v98;
  ArtworkImage.artworkIdealAspectRatio(_:contentMode:)(v48, 0, 2);
  v50 = v105;
  v122 = *(v105 + 8);
  v51 = v107;
  (v122)(v34, v107);
  sub_217938234();
  v52 = v128;
  v53 = v129;
  __swift_project_boxed_opaque_existential_1(&v127, v128);
  v54 = v108;
  (*(v53 + 112))(v52, v53);
  v55 = v101;
  ArtworkImage.artworkCropStyle(_:)();
  (*(v109 + 8))(v54, v110);
  (v122)(v49, v51);
  __swift_destroy_boxed_opaque_existential_1(&v127);
  v56 = v113;
  v57 = v112;
  v58 = v124;
  v59 = v115;
  (*(v113 + 16))(v112, v124, v115);
  v60 = (*(v56 + 80) + 32) & ~*(v56 + 80);
  v61 = swift_allocObject();
  v62 = v123;
  *(v61 + 16) = v126;
  *(v61 + 24) = v62;
  (*(v56 + 32))(v61 + v60, v57, v59);
  v63 = v104;
  (*(v50 + 16))(v104, v55, v51);
  v64 = v102;
  sub_21790B4E0(v63, sub_21790DF74, v61, v102);
  (v122)(v55, v51);
  v65 = sub_21790B98C(v59);
  sub_217864B2C(&qword_27CB8D608, &qword_27CB8D5F0, &qword_217970328, &unk_21796CC98);
  v66 = v106;
  sub_217898E78(v64, v106, &qword_27CB8D5F0, &qword_217970328);
  v67 = v66 + *(v100 + 36);
  *v67 = v65;
  *(v67 + 8) = 0;
  v68 = *(v58 + *(v59 + 44));
  sub_21790E030();
  v69 = v103;
  v70 = &v103[*(v99 + 36)];
  v71 = *(sub_217966A2C() + 20);
  v72 = *MEMORY[0x277CE0118];
  v73 = sub_217966DAC();
  (*(*(v73 - 8) + 104))(&v70[v71], v72, v73);
  *v70 = v68;
  *(v70 + 1) = v68;
  *&v70[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8D618, &qword_217970340) + 36)] = 256;
  sub_217898E78(v66, v69, &qword_27CB8D5F8, &qword_217970330);
  sub_217898E78(v69, v125, &qword_27CB8D600, &qword_217970338);
  sub_217938234();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8B080, &unk_21796E060);
  v74 = v116;
  v75 = v117;
  if (swift_dynamicCast())
  {
    __swift_storeEnumTagSinglePayload(v74, 0, 1, v75);
    v76 = v96;
    v77 = v95;
    (*(v96 + 32))(v95, v74, v75);
    v78 = v97;
    (*(v76 + 16))(v97, v77, v75);
    v79 = (v58 + *(v59 + 52));
    v81 = *v79;
    v80 = v79[1];
    v82 = v120;
    v83 = (v78 + *(v120 + 32));
    v84 = v118;
    if (qword_27CB8A378 != -1)
    {
      swift_once();
    }

    _s13PreviewPlayerCMa(0);
    sub_2178B8260();

    v85 = sub_2179668BC();
    v87 = v86;
    (*(v76 + 8))(v77, v75);
    *v83 = v85;
    v83[1] = v87;
    *(v78 + v82[5]) = v81;
    *(v78 + v82[6]) = v80;
    *(v78 + v82[7]) = 0;
    sub_2179029EC(v78, v84);
    v88 = 0;
  }

  else
  {
    v88 = 1;
    __swift_storeEnumTagSinglePayload(v74, 1, 1, v75);
    sub_2178653BC(v74, &qword_27CB8CA28, &unk_21796F610);
    v82 = v120;
    v84 = v118;
  }

  __swift_storeEnumTagSinglePayload(v84, v88, 1, v82);
  v89 = v125;
  v90 = v114;
  sub_21788D484(v125, v114, &qword_27CB8D600, &qword_217970338);
  v91 = v119;
  sub_21788D484(v84, v119, &qword_27CB8D270, &qword_21796FC08);
  v92 = v121;
  sub_21788D484(v90, v121, &qword_27CB8D600, &qword_217970338);
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8D620, &qword_217970348);
  sub_21788D484(v91, v92 + *(v93 + 48), &qword_27CB8D270, &qword_21796FC08);
  sub_2178653BC(v84, &qword_27CB8D270, &qword_21796FC08);
  sub_2178653BC(v89, &qword_27CB8D600, &qword_217970338);
  sub_2178653BC(v91, &qword_27CB8D270, &qword_21796FC08);
  return sub_2178653BC(v90, &qword_27CB8D600, &qword_217970338);
}

uint64_t sub_21790CC84@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  sub_217864B2C(&qword_27CB8D630, &qword_27CB8D628, &qword_217970350, MEMORY[0x277CE14C0]);
  *a2 = sub_217967E3C();
  a2[1] = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8D638, &qword_217970358);
  return sub_21790CD10(v2, *(a1 + 16), *(a1 + 24), a2 + *(v6 + 44));
}

uint64_t sub_21790CD10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v32 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8D640, &qword_217970360);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v10 = &v33[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0) - 6];
  MEMORY[0x28223BE20](v8);
  v12 = &v33[-v11 - 6];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8D648, &qword_217970368);
  v14 = v13 - 8;
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v33[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0) - 6];
  MEMORY[0x28223BE20](v15);
  v19 = &v33[-v18 - 6];
  sub_217967AFC();
  v20 = sub_217967B2C();

  v22 = _s11ArtworkViewVMa(0, a2, a3, v21);
  sub_217967E3C();
  sub_2179667FC();
  *&v33[22] = v35;
  *&v33[38] = v36;
  *&v33[6] = v34;
  v23 = *(a1 + *(v22 + 44));
  v24 = &v19[*(v14 + 44)];
  v25 = *(sub_217966A2C() + 20);
  v26 = *MEMORY[0x277CE0118];
  v27 = sub_217966DAC();
  (*(*(v27 - 8) + 104))(&v24[v25], v26, v27);
  *v24 = v23;
  *(v24 + 1) = v23;
  *&v24[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8D618, &qword_217970340) + 36)] = 256;
  *v19 = v20;
  *(v19 + 4) = 256;
  v28 = *&v33[16];
  *(v19 + 10) = *v33;
  *(v19 + 26) = v28;
  *(v19 + 42) = *&v33[32];
  *(v19 + 7) = *&v33[46];
  sub_21790D04C(v22, v12);
  sub_21788D484(v19, v17, &qword_27CB8D648, &qword_217970368);
  sub_21788D484(v12, v10, &qword_27CB8D640, &qword_217970360);
  v29 = v32;
  sub_21788D484(v17, v32, &qword_27CB8D648, &qword_217970368);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8D650, &qword_217970370);
  sub_21788D484(v10, v29 + *(v30 + 48), &qword_27CB8D640, &qword_217970360);
  sub_2178653BC(v12, &qword_27CB8D640, &qword_217970360);
  sub_2178653BC(v19, &qword_27CB8D648, &qword_217970368);
  sub_2178653BC(v10, &qword_27CB8D640, &qword_217970360);
  return sub_2178653BC(v17, &qword_27CB8D648, &qword_217970368);
}

uint64_t sub_21790D04C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v77 = a2;
  v3 = sub_217967B9C();
  v75 = *(v3 - 8);
  v76 = v3;
  MEMORY[0x28223BE20](v3);
  v74 = &v53 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = sub_217965D6C();
  v54 = *(v56 - 8);
  MEMORY[0x28223BE20](v56);
  v72 = &v53 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = sub_21796624C();
  v55 = *(v58 - 8);
  MEMORY[0x28223BE20](v58);
  v71 = &v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = sub_21796852C();
  v57 = *(v62 - 8);
  MEMORY[0x28223BE20](v62);
  v70 = &v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = sub_217968D2C();
  v61 = *(v69 - 8);
  MEMORY[0x28223BE20](v69);
  v68 = &v53 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8D658, &qword_217970378);
  MEMORY[0x28223BE20](v9 - 8);
  v63 = &v53 - v10;
  v65 = sub_217968D3C();
  v59 = *(v65 - 8);
  v11 = MEMORY[0x28223BE20](v65);
  v60 = &v53 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v64 = &v53 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CB8AC48, &unk_21796FF10);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v53 - v15;
  v17 = sub_217968E3C();
  v67 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v66 = &v53 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_217968AFC();
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v22 = &v53 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = a1;
  sub_217938234();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8B080, &unk_21796E060);
  if (swift_dynamicCast())
  {
    (*(v20 + 8))(v22, v19);
    sub_2179674FC();
    v23 = sub_217967B4C();
    goto LABEL_25;
  }

  sub_217938234();
  if ((swift_dynamicCast() & 1) == 0)
  {
    __swift_storeEnumTagSinglePayload(v16, 1, 1, v17);
    v27 = qword_27CB8AC48;
    v28 = &unk_21796FF10;
LABEL_7:
    sub_2178653BC(v16, v27, v28);
    sub_217938234();
    v30 = v68;
    v29 = v69;
    v31 = swift_dynamicCast();
    v33 = v71;
    v32 = v72;
    v34 = v70;
    if (v31)
    {
      (*(v61 + 8))(v30, v29);
      sub_2179674DC();
      if (qword_27CB8A350 != -1)
      {
        swift_once();
      }

      v23 = qword_27CB977C8;

      goto LABEL_25;
    }

    sub_217938234();
    v35 = v62;
    if (swift_dynamicCast())
    {
      (*(v57 + 8))(v34, v35);
    }

    else
    {
      sub_217938234();
      v41 = v58;
      if (swift_dynamicCast())
      {
        (*(v55 + 8))(v33, v41);
      }

      else
      {
        sub_217938234();
        v42 = v56;
        if (!swift_dynamicCast())
        {
          sub_2179674DC();
          goto LABEL_22;
        }

        (*(v54 + 8))(v32, v42);
      }
    }

    sub_2179674EC();
LABEL_22:
    v23 = sub_217967B4C();
    goto LABEL_25;
  }

  __swift_storeEnumTagSinglePayload(v16, 0, 1, v17);
  v25 = v66;
  v24 = v67;
  (*(v67 + 32))(v66, v16, v17);
  v16 = v63;
  sub_217968D4C();
  v26 = v65;
  if (__swift_getEnumTagSinglePayload(v16, 1, v65) == 1)
  {
    (*(v24 + 8))(v25, v17);
    v27 = &qword_27CB8D658;
    v28 = &qword_217970378;
    goto LABEL_7;
  }

  v36 = v59;
  v37 = v16;
  v38 = v64;
  (*(v59 + 32))(v64, v37, v26);
  v39 = v60;
  (*(v36 + 16))(v60, v38, v26);
  v40 = (*(v36 + 88))(v39, v26);
  if (v40 != *MEMORY[0x277D2B3D8] && v40 != *MEMORY[0x277D2B3E0])
  {
    (*(v36 + 8))(v60, v26);
  }

  sub_2179674DC();
  v23 = sub_217967B4C();
  (*(v36 + 8))(v64, v26);
  (*(v67 + 8))(v66, v17);
LABEL_25:

  sub_217938234();
  v43 = __dst[3];
  v44 = __dst[4];
  __swift_project_boxed_opaque_existential_1(__dst, __dst[3]);
  (*(v44 + 104))(v43, v44);
  __swift_destroy_boxed_opaque_existential_1(__dst);
  sub_217967BAC();
  v46 = v74;
  v45 = v75;
  v47 = v76;
  (*(v75 + 104))(v74, *MEMORY[0x277CE0FE0], v76);
  v48 = sub_217967BDC();

  (*(v45 + 8))(v46, v47);
  sub_217967E3C();
  sub_2179667FC();
  *&v79[38] = v84;
  *&v79[22] = v83;
  *&v79[6] = v82;
  *(&v78[2] + 2) = *v79;
  v80 = 1;
  v78[0] = v48;
  v78[1] = 0;
  LOWORD(v78[2]) = 1;
  *(&v78[4] + 2) = *&v79[16];
  *(&v78[6] + 2) = *&v79[32];
  v78[8] = *(&v84 + 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8D660, &qword_217970380);
  sub_21790E0E8();
  v49 = v77;
  sub_2179676AC();

  memcpy(__dst, v78, sizeof(__dst));
  sub_2178653BC(__dst, &qword_27CB8D660, &qword_217970380);
  KeyPath = swift_getKeyPath();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8D640, &qword_217970360);
  v52 = (v49 + *(result + 36));
  *v52 = KeyPath;
  v52[1] = v23;
  return result;
}

uint64_t sub_21790DC80()
{
  v1 = *v0;
  if (*v0 == 0.0)
  {
    v1 = 0.0;
  }

  MEMORY[0x21CEA86D0](*&v1);
  v2 = v0[1];
  if (v2 == 0.0)
  {
    v2 = 0.0;
  }

  MEMORY[0x21CEA86D0](*&v2);
  sub_2178D0354(v0[2], v0[3]);
  v3 = v0[4];
  if (v3 == 0.0)
  {
    v3 = 0.0;
  }

  MEMORY[0x21CEA86D0](*&v3);
  v4 = v0[5];
  if (v4 == 0.0)
  {
    v4 = 0.0;
  }

  return MEMORY[0x21CEA86D0](*&v4);
}

uint64_t sub_21790DD0C()
{
  sub_21796973C();
  sub_21790DC80();
  return sub_21796977C();
}

BOOL sub_21790DD54(_OWORD *a1, __int128 *a2)
{
  v2 = a1[1];
  v7[0] = *a1;
  v7[1] = v2;
  v3 = *a2;
  v4 = a2[1];
  v7[2] = a1[2];
  v8[0] = v3;
  v5 = a2[2];
  v8[1] = v4;
  v8[2] = v5;
  return sub_21790DC14(v7, v8);
}

uint64_t sub_21790DE1C(uint64_t a1)
{
  sub_21796973C();
  sub_21790DC80();
  return sub_21796977C();
}

unint64_t sub_21790DEBC()
{
  result = qword_27CB8D5D0;
  if (!qword_27CB8D5D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8D5B8, &qword_217970308);
    sub_217864B2C(&qword_27CB8D5D8, &qword_27CB8D5E0, &qword_217970318, MEMORY[0x277CDFB00]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB8D5D0);
  }

  return result;
}

uint64_t sub_21790DF74@<X0>(uint64_t a4@<X3>, uint64_t *x8_0@<X8>)
{
  v7 = *(v5 + 16);
  v8 = *(v5 + 24);
  _s11ArtworkViewVMa(0, v7, v8, a4);

  return sub_21790CC48(v7, v8, x8_0);
}

unint64_t sub_21790E030()
{
  result = qword_27CB8D610;
  if (!qword_27CB8D610)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8D5F8, &qword_217970330);
    sub_217864B2C(&qword_27CB8D608, &qword_27CB8D5F0, &qword_217970328, &unk_21796CC98);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB8D610);
  }

  return result;
}

unint64_t sub_21790E0E8()
{
  result = qword_27CB8D668;
  if (!qword_27CB8D668)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8D660, &qword_217970380);
    sub_21790E174();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB8D668);
  }

  return result;
}

unint64_t sub_21790E174()
{
  result = qword_27CB8D670;
  if (!qword_27CB8D670)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8D678, &qword_217970388);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB8D670);
  }

  return result;
}

unint64_t sub_21790E1F8()
{
  result = qword_27CB8D680;
  if (!qword_27CB8D680)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8D598, &qword_2179702E8);
    sub_217864B2C(&qword_27CB8D5C8, &qword_27CB8D5C0, &qword_217970310, MEMORY[0x277CE11A8]);
    sub_217864B2C(qword_27CB8D688, &qword_27CB8D5E8, &qword_217970320, MEMORY[0x277CDFC88]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB8D680);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_1_15(uint64_t a1)
{

  return swift_once();
}

void OUTLINED_FUNCTION_3_13(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10)
{
  v14 = v13 * 0.5;
  if (!a10)
  {
    v14 = v12;
  }

  *(v10 + *(v11 + 44)) = v14;
}

void OUTLINED_FUNCTION_9_9(uint64_t a1, ...)
{

  sub_217938234();
}

__n128 sub_21790E3C4@<Q0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X8>, double a8@<D0>, uint64_t x7_0@<X7>, uint64_t a9)
{
  v16 = *a2;
  v26 = *(a2 + 8);
  v17 = *(a2 + 3);
  v28[0] = a5;
  v28[1] = a6;
  v28[2] = x7_0;
  v28[3] = a9;
  v18 = _s9VItemCellVMa(0, v28);
  v19 = (a7 + v18[16]);
  _s9ViewModelCMa(0, a6, a9, v20);
  swift_getWitnessTable();
  *v19 = sub_217966ACC();
  v19[1] = v21;
  v22 = a7 + v18[17];
  *v22 = xmmword_2179703C0;
  *(v22 + 16) = 0;
  (*(*(a5 - 8) + 32))(a7, a1, a5);
  v23 = a7 + v18[13];
  *v23 = v16;
  result = v26;
  *(v23 + 8) = v26;
  *(v23 + 24) = v17;
  *(a7 + v18[14]) = a8;
  v25 = (a7 + v18[15]);
  *v25 = a3;
  v25[1] = a4;
  return result;
}

uint64_t sub_21790E53C(void *a1)
{
  v2 = swift_checkMetadataState();
  v3 = v2;
  if (v4 <= 0x3F)
  {
    v16 = 0;
    v21 = v2;
    v22 = &type metadata for MusicPicker.Click.SourceContext;
    v17 = 0;
    v23 = MEMORY[0x277D839F8];
    sub_217897C74();
    if (v7 > 0x3F)
    {
      return v5;
    }

    v18 = 0;
    v24 = v5;
    v8 = a1[3];
    v9 = a1[5];
    _s9ViewModelCMa(255, v8, v9, v6);
    swift_getWitnessTable();
    v5 = sub_217966ADC();
    if (v10 > 0x3F)
    {
      return v5;
    }

    else
    {
      v19 = 0;
      v25 = v5;
      v11 = a1[4];
      v15[0] = v3;
      v15[1] = v8;
      v15[2] = v11;
      v15[3] = v9;
      v12 = _s9VItemCellV9ConstantsVMa(319, v15);
      v3 = v12;
      if (v13 <= 0x3F)
      {
        v20 = 0;
        v26 = v12;
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return v3;
}

_DWORD *sub_21790E684(_DWORD *result, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(*(v4 - 8) + 84);
  v6 = *(*(v4 - 8) + 64);
  if (v5 <= 0x7FFFFFFE)
  {
    v7 = 2147483646;
  }

  else
  {
    v7 = *(*(v4 - 8) + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
LABEL_26:
    if (v5 >= 0x7FFFFFFE)
    {
      return __swift_getEnumTagSinglePayload(result, v5, v4);
    }

    v17 = *(((result + v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 16);
    if (v17 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    v16 = v17 - 1;
    if (v16 < 0)
    {
      v16 = -1;
    }
  }

  else
  {
    v8 = ((((((((((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 24;
    v9 = a2 - v7;
    v10 = v8 & 0xFFFFFFF8;
    if ((v8 & 0xFFFFFFF8) != 0)
    {
      v11 = 2;
    }

    else
    {
      v11 = v9 + 1;
    }

    if (v11 >= 0x10000)
    {
      v12 = 4;
    }

    else
    {
      v12 = 2;
    }

    if (v11 < 0x100)
    {
      v12 = 1;
    }

    if (v11 >= 2)
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    switch(v13)
    {
      case 1:
        v14 = *(result + v8);
        if (!v14)
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 2:
        v14 = *(result + v8);
        if (!v14)
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 3:
        __break(1u);
        return result;
      case 4:
        v14 = *(result + v8);
        if (!v14)
        {
          goto LABEL_26;
        }

LABEL_22:
        v15 = v14 - 1;
        if (v10)
        {
          v15 = 0;
          LODWORD(v10) = *result;
        }

        v16 = v7 + (v10 | v15);
        break;
      default:
        goto LABEL_26;
    }
  }

  return (v16 + 1);
}

void sub_21790E7E8(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(*(v6 - 8) + 84);
  if (v7 <= 0x7FFFFFFE)
  {
    v8 = 2147483646;
  }

  else
  {
    v8 = *(*(v6 - 8) + 84);
  }

  v9 = *(*(v6 - 8) + 64);
  v10 = ((((((((((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 24;
  if (v8 >= a3)
  {
    v14 = 0;
  }

  else
  {
    v11 = a3 - v8;
    if (((((((((((v9 + 7) & 0xFFFFFFF8) + 39) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFE8)
    {
      v12 = v11 + 1;
    }

    else
    {
      v12 = 2;
    }

    if (v12 >= 0x10000)
    {
      v13 = 4;
    }

    else
    {
      v13 = 2;
    }

    if (v12 < 0x100)
    {
      v13 = 1;
    }

    if (v12 >= 2)
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }
  }

  if (a2 <= v8)
  {
    switch(v14)
    {
      case 1:
        a1[v10] = 0;
        if (a2)
        {
          goto LABEL_32;
        }

        break;
      case 2:
        *&a1[v10] = 0;
        if (a2)
        {
          goto LABEL_32;
        }

        break;
      case 3:
LABEL_42:
        __break(1u);
        break;
      case 4:
        *&a1[v10] = 0;
        goto LABEL_31;
      default:
LABEL_31:
        if (a2)
        {
LABEL_32:
          if (v7 < 0x7FFFFFFE)
          {
            v17 = (&a1[v9 + 7] & 0xFFFFFFFFFFFFFFF8);
            if (a2 > 0x7FFFFFFE)
            {
              v17[2] = 0;
              v17[3] = 0;
              *v17 = (a2 - 0x7FFFFFFF);
              v17[1] = 0;
            }

            else
            {
              v17[2] = a2;
            }
          }

          else
          {

            __swift_storeEnumTagSinglePayload(a1, a2, v7, v6);
          }
        }

        break;
    }
  }

  else
  {
    if (((((((((((v9 + 7) & 0xFFFFFFF8) + 39) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFE8)
    {
      v15 = a2 - v8;
    }

    else
    {
      v15 = 1;
    }

    if (((((((((((v9 + 7) & 0xFFFFFFF8) + 39) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) != 0xFFFFFFE8)
    {
      v16 = ~v8 + a2;
      bzero(a1, ((((((((((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 24);
      *a1 = v16;
    }

    switch(v14)
    {
      case 1:
        a1[v10] = v15;
        break;
      case 2:
        *&a1[v10] = v15;
        break;
      case 3:
        goto LABEL_42;
      case 4:
        *&a1[v10] = v15;
        break;
      default:
        return;
    }
  }
}

uint64_t sub_21790EA04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_21790EA5C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v122 = a2;
  v123 = sub_217966FAC();
  OUTLINED_FUNCTION_2();
  v121 = v4;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_4_0();
  v120 = v6;
  v7 = sub_2179669FC();
  v119 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_52(v8);
  v116 = sub_217966A2C();
  MEMORY[0x28223BE20](v116);
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_52(v9);
  v108 = a1;
  v114 = a1 + 3;
  v115 = a1 + 5;
  v10 = a1[2];
  v11 = a1[4];
  v113 = _s20DetailViewPropertiesVMa(255, v10, v11, v12);
  sub_21796944C();
  OUTLINED_FUNCTION_47();
  MEMORY[0x28223BE20](v13);
  v15 = &v88 - v14;
  v111 = v10;
  v112 = v11;
  _s11ArtworkViewVMa(255, v10, v11, v16);
  sub_21796698C();
  sub_21796732C();
  OUTLINED_FUNCTION_48_0();
  sub_21796698C();
  _s9CellTitleVMa(255, v10, v11, v17);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8A898, &unk_21796ACA0);
  OUTLINED_FUNCTION_9();
  sub_21796698C();
  OUTLINED_FUNCTION_8();
  sub_21796698C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8D790, &qword_2179704F8);
  v18 = OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_75(v18);
  OUTLINED_FUNCTION_8();
  sub_217967E9C();
  OUTLINED_FUNCTION_8();
  sub_217967B7C();
  OUTLINED_FUNCTION_8();
  sub_21796698C();
  v19 = OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_75(v19);
  OUTLINED_FUNCTION_8();
  v20 = sub_217967E9C();
  OUTLINED_FUNCTION_30(v20, v21, v22);
  OUTLINED_FUNCTION_9();
  v23 = sub_217967CDC();
  v107 = v23;
  v105 = OUTLINED_FUNCTION_7_11(v23, v24, v25);
  v131 = v23;
  v132 = MEMORY[0x277D84A98];
  v133 = v105;
  v134 = MEMORY[0x277CE1538];
  v26 = sub_21796688C();
  OUTLINED_FUNCTION_2();
  v106 = v27;
  OUTLINED_FUNCTION_47();
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_45_0();
  OUTLINED_FUNCTION_52(v29);
  v30 = sub_21796698C();
  OUTLINED_FUNCTION_2();
  v110 = v31;
  OUTLINED_FUNCTION_47();
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_45_0();
  OUTLINED_FUNCTION_52(v33);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8ADF0, &qword_21796B500);
  v100 = v30;
  v34 = sub_21796698C();
  v109 = *(v34 - 8);
  OUTLINED_FUNCTION_47();
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_45_0();
  OUTLINED_FUNCTION_52(v36);
  OUTLINED_FUNCTION_11_7();
  WitnessTable = swift_getWitnessTable();
  v130 = MEMORY[0x277CDF918];
  v37 = swift_getWitnessTable();
  v95 = v37;
  OUTLINED_FUNCTION_20_1();
  v40 = sub_217864B2C(v38, &qword_27CB8ADF0, &qword_21796B500, v39);
  v127 = v37;
  v128 = v40;
  v41 = swift_getWitnessTable();
  OUTLINED_FUNCTION_1_16();
  v44 = sub_217910E88(v42, v43, MEMORY[0x277CDDB08]);
  v131 = v34;
  v132 = v7;
  v92 = v34;
  v91 = v7;
  v133 = v41;
  v134 = v44;
  v94 = v41;
  v45 = v44;
  v93 = v44;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_2();
  v103 = v47;
  OUTLINED_FUNCTION_47();
  MEMORY[0x28223BE20](v48);
  OUTLINED_FUNCTION_45_0();
  OUTLINED_FUNCTION_52(v49);
  v131 = v34;
  v132 = v7;
  v133 = v41;
  v134 = v45;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  OUTLINED_FUNCTION_3_14();
  v53 = sub_217910E88(v51, v52, MEMORY[0x277CDDFA8]);
  v131 = OpaqueTypeMetadata2;
  v132 = v123;
  v133 = OpaqueTypeConformance2;
  v134 = v53;
  v97 = MEMORY[0x277CDE6B0];
  v98 = swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_2();
  v99 = v54;
  v56 = MEMORY[0x28223BE20](v55);
  v89 = &v88 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v56);
  OUTLINED_FUNCTION_52(&v88 - v58);
  v59 = v108;
  sub_21790F52C(v108, v15);
  __swift_storeEnumTagSinglePayload(v15, 0, 1, v113);
  *&v60 = v111;
  *(&v60 + 1) = *v114;
  *&v61 = v112;
  *(&v61 + 1) = *v115;
  v124 = v60;
  v125 = v61;
  v126 = v2;
  swift_getWitnessTable();
  v62 = v102;
  sub_21796687C();
  v63 = v2 + *(v59 + 17);
  v64 = v101;
  sub_2179679FC();
  OUTLINED_FUNCTION_54();
  v65(v62, v26);
  v66 = *(v63 + 8);
  v67 = *(v116 + 20);
  v68 = *MEMORY[0x277CE0118];
  v69 = sub_217966DAC();
  v70 = v117;
  (*(*(v69 - 8) + 104))(v117 + v67, v68, v69);
  *v70 = v66;
  v70[1] = v66;
  sub_217910E88(&qword_27CB8B050, MEMORY[0x277CDFC08], MEMORY[0x277CDFBF8]);
  v71 = v100;
  sub_217862E84();
  v72 = v104;
  sub_21796779C();
  sub_21788D5F4(v70);
  OUTLINED_FUNCTION_54();
  v73(v64, v71);
  v74 = v118;
  sub_2179669EC();
  v75 = v90;
  v76 = v92;
  v77 = v91;
  sub_2179676FC();
  OUTLINED_FUNCTION_54();
  v78(v74, v77);
  OUTLINED_FUNCTION_54();
  v79(v72, v76);
  v80 = v120;
  v81 = v123;
  sub_217884F70(OpaqueTypeMetadata2);
  OUTLINED_FUNCTION_59();
  v82 = v89;
  sub_21796773C();
  (*(v121 + 8))(v80, v81);
  OUTLINED_FUNCTION_54();
  v83(v75, OpaqueTypeMetadata2);
  v131 = OpaqueTypeMetadata2;
  v132 = v81;
  v133 = OpaqueTypeConformance2;
  v134 = v53;
  swift_getOpaqueTypeConformance2();
  v84 = v96;
  v85 = v98;
  sub_2179560E4();
  v86 = *(v99 + 8);
  v86(v82, v85);
  sub_2179560E4();
  return (v86)(v84, v85);
}

unint64_t sub_21790F52C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(a1 + 16);
  MEMORY[0x28223BE20](a1);
  v7 = &v14[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v8 + 16))(v7, v2, v5);
  v9 = v2 + *(a1 + 52);
  v10 = *(v9 + 8);
  v11 = *(v9 + 16);
  v12 = *(v9 + 24);
  v14[0] = *v9;
  v15 = v10;
  v16 = v11;
  v17 = v12;
  sub_217920EC4(v7, v14, 0, 0, v5, *(a1 + 32), a2);

  return sub_217863EC4(v12);
}

uint64_t sub_21790F644@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v22 = a3;
  v23 = a5;
  v24 = a6;
  _s11ArtworkViewVMa(255, a2, a4, a4);
  sub_21796698C();
  sub_21796732C();
  sub_21796698C();
  _s9CellTitleVMa(255, a2, a4, v9);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8A898, &unk_21796ACA0);
  sub_21796698C();
  sub_21796698C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8D790, &qword_2179704F8);
  swift_getTupleTypeMetadata2();
  sub_217967E9C();
  sub_217967B7C();
  sub_21796698C();
  swift_getTupleTypeMetadata2();
  sub_217967E9C();
  swift_getWitnessTable();
  v10 = sub_217967CDC();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v22 - v15;
  (*(a4 + 96))(&v25, a2, a4);
  if (v25 == 1)
  {
    v17 = sub_217966E5C();
  }

  else
  {
    v17 = sub_217966E6C();
  }

  MEMORY[0x28223BE20](v17);
  v19 = v22;
  v18 = v23;
  *(&v22 - 6) = a2;
  *(&v22 - 5) = v19;
  *(&v22 - 4) = a4;
  *(&v22 - 3) = v18;
  *(&v22 - 2) = a1;
  sub_217967CCC();
  swift_getWitnessTable();
  sub_2179560E4();
  v20 = *(v11 + 8);
  v20(v14, v10);
  sub_2179560E4();
  return (v20)(v16, v10);
}

uint64_t sub_21790F97C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v85 = a3;
  v86 = a5;
  v81 = a6;
  _s9CellTitleVMa(255, a2, a4, a4);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8A898, &unk_21796ACA0);
  sub_21796698C();
  sub_21796732C();
  sub_21796698C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8D790, &qword_2179704F8);
  swift_getTupleTypeMetadata2();
  v72 = sub_217967E9C();
  v9 = sub_217967B7C();
  v75 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v87 = &v66 - v10;
  v76 = v11;
  v80 = sub_21796698C();
  v78 = *(v80 - 8);
  v12 = MEMORY[0x28223BE20](v80);
  v79 = &v66 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v74 = &v66 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v77 = &v66 - v17;
  v18 = *(a2 - 8);
  MEMORY[0x28223BE20](v16);
  v20 = &v66 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = _s11ArtworkViewVMa(0, a2, a4, v21);
  v23 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v25 = &v66 - v24;
  v26 = sub_21796698C();
  v69 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v67 = &v66 - v27;
  v84 = sub_21796698C();
  v82 = *(v84 - 8);
  v28 = MEMORY[0x28223BE20](v84);
  v73 = &v66 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x28223BE20](v28);
  v68 = &v66 - v31;
  MEMORY[0x28223BE20](v30);
  v83 = &v66 - v32;
  (*(v18 + 16))(v20, a1, a2);
  *&v91 = a2;
  *(&v91 + 1) = v85;
  v92 = a4;
  v93 = v86;
  _s9VItemCellVMa(0, &v91);
  v33 = *(a4 + 96);
  v34 = a2;
  v35 = a2;
  v36 = a4;
  v71 = a4 + 96;
  v70 = v33;
  v33(&v91, v35, a4);
  v66 = a1;
  sub_21790B838(v20, v34, a4, v37);
  sub_217967E4C();
  WitnessTable = swift_getWitnessTable();
  v39 = v67;
  sub_21796799C();
  (*(v23 + 8))(v25, v22);
  if (qword_27CB8A3F0 != -1)
  {
    swift_once();
  }

  v40 = qword_27CB979F0;
  v91 = xmmword_27CB979E0;

  MEMORY[0x21CEA7F50](46, 0xE100000000000000);

  MEMORY[0x21CEA7F50](0x6B726F77747261, 0xE700000000000000);

  v41 = v91;
  v90[7] = WitnessTable;
  v90[8] = MEMORY[0x277CDF678];
  v42 = swift_getWitnessTable();
  v43 = v68;
  sub_2178ED854(v41, *(&v41 + 1), v40, v26, v42);

  (*(v69 + 8))(v39, v26);
  v44 = sub_217910E88(&qword_27CB8A710, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
  v90[5] = v42;
  v90[6] = v44;
  v45 = v84;
  v67 = swift_getWitnessTable();
  sub_2179560E4();
  v46 = *(v82 + 8);
  v69 = v82 + 8;
  v68 = v46;
  v47 = (v46)(v43, v45);
  MEMORY[0x28223BE20](v47);
  v49 = v85;
  v48 = v86;
  *(&v66 - 6) = v34;
  *(&v66 - 5) = v49;
  *(&v66 - 4) = v36;
  *(&v66 - 3) = v48;
  *(&v66 - 2) = v66;
  v50 = swift_getWitnessTable();
  sub_217967B6C();
  v70(&v91, v34, v36);
  if (v91 == 1)
  {
    sub_217967E3C();
  }

  else
  {
    sub_217967E4C();
  }

  v90[4] = v50;
  v51 = v76;
  v52 = swift_getWitnessTable();
  v53 = v74;
  v54 = v87;
  sub_21796799C();
  (*(v75 + 8))(v54, v51);
  v90[2] = v52;
  v90[3] = MEMORY[0x277CDF678];
  v55 = v80;
  v56 = swift_getWitnessTable();
  v57 = v77;
  sub_2179560E4();
  v58 = v78;
  v59 = *(v78 + 8);
  v59(v53, v55);
  v60 = v73;
  v61 = v83;
  v62 = v84;
  (*(v82 + 16))(v73, v83, v84);
  *&v91 = v60;
  v63 = v79;
  (*(v58 + 16))(v79, v57, v55);
  *(&v91 + 1) = v63;
  v90[0] = v62;
  v90[1] = v55;
  v88 = v67;
  v89 = v56;
  sub_2178B9390(&v91, 2, v90);
  v59(v57, v55);
  v64 = v68;
  (v68)(v61, v62);
  v59(v63, v55);
  return v64(v60, v62);
}

uint64_t sub_2179103EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v61 = a5;
  v59 = a3;
  v67 = a1;
  v65 = a6;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8D790, &qword_2179704F8);
  v8 = MEMORY[0x28223BE20](v62);
  v64 = &v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v63 = &v53 - v11;
  v12 = *(a2 - 8);
  MEMORY[0x28223BE20](v10);
  v14 = &v53 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = _s9CellTitleVMa(0, a2, a4, v15);
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v53 - v18;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8A898, &unk_21796ACA0);
  v20 = sub_21796698C();
  v55 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v22 = &v53 - v21;
  sub_21796732C();
  v23 = sub_21796698C();
  v56 = *(v23 - 8);
  v24 = MEMORY[0x28223BE20](v23);
  v58 = &v53 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v66 = &v53 - v26;
  (*(v12 + 16))(v14, v67, a2);
  v27 = sub_217862E84();
  v57 = a2;
  v60 = a4;
  sub_2178C6F54(v14, v27 & 1, 1, a2, a4, v19);
  WitnessTable = swift_getWitnessTable();
  v54 = v22;
  sub_217967AAC();
  (*(v17 + 8))(v19, v16);
  if (qword_27CB8A3F0 != -1)
  {
    swift_once();
  }

  v29 = *(&xmmword_27CB979E0 + 1);
  v53 = xmmword_27CB979E0;
  v30 = qword_27CB979F0;
  v71 = xmmword_27CB979E0;

  MEMORY[0x21CEA7F50](46, 0xE100000000000000);

  MEMORY[0x21CEA7F50](0x656C746974, 0xE500000000000000);

  v31 = v71;
  v32 = sub_217864B2C(&qword_27CB8A890, &qword_27CB8A898, &unk_21796ACA0, MEMORY[0x277CE0868]);
  v76 = WitnessTable;
  v77 = v32;
  v33 = swift_getWitnessTable();
  v34 = v58;
  v35 = v54;
  sub_2178ED854(v31, *(&v31 + 1), v30, v20, v33);

  (*(v55 + 8))(v35, v20);
  v36 = sub_217910E88(&qword_27CB8A710, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
  v74 = v33;
  v75 = v36;
  v54 = swift_getWitnessTable();
  sub_2179560E4();
  v37 = v56;
  v55 = *(v56 + 8);
  (v55)(v34, v23);
  *&v71 = v57;
  *(&v71 + 1) = v59;
  v72 = v60;
  v73 = v61;
  v38 = _s9VItemCellVMa(0, &v71);
  v39 = sub_217910B3C(v38);
  v41 = v40;
  LOWORD(v33) = v42;
  *&v71 = v53;
  *(&v71 + 1) = v29;

  MEMORY[0x21CEA7F50](46, 0xE100000000000000);

  MEMORY[0x21CEA7F50](0x656C746974627573, 0xE800000000000000);

  v43 = v71;
  *&v71 = v39;
  *(&v71 + 1) = v41;
  LOWORD(v72) = v33 & 0x101;
  sub_2178EE0A8(v43, *(&v43 + 1), v30);

  sub_2178FE668(v44, v45, v46);
  v47 = v63;
  sub_21796790C();

  v48 = v66;
  (*(v37 + 16))(v34, v66, v23);
  *&v71 = v34;
  v49 = v64;
  sub_217910F00(v47, v64);
  *(&v71 + 1) = v49;
  v70[0] = v23;
  v70[1] = v62;
  v68 = v54;
  v69 = sub_217910F70();
  sub_2178B9390(&v71, 2, v70);
  sub_21791102C(v47);
  v50 = v48;
  v51 = v55;
  (v55)(v50, v23);
  sub_21791102C(v49);
  return v51(v34, v23);
}

uint64_t sub_217910B3C(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = MEMORY[0x28223BE20](a1);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = (v7 + *(v3 + 60));
  if (v8[1])
  {
    v9 = *v8;
  }

  else
  {
    (*(v4 + 16))(v6);
    v9 = sub_2178C4D74(v6, 0, 0, v2, *(a1 + 32));
  }

  return v9;
}

BOOL sub_217910C58(double a1, double a2, double a3, double a4, double a5, double a6)
{
  v6 = a1 == a4;
  if (a2 != a5)
  {
    v6 = 0;
  }

  return a3 == a6 && v6;
}

uint64_t sub_217910C74(double a1, double a2, double a3)
{
  if (a1 == 0.0)
  {
    a1 = 0.0;
  }

  MEMORY[0x21CEA86D0](*&a1);
  if (a2 == 0.0)
  {
    v5 = 0.0;
  }

  else
  {
    v5 = a2;
  }

  MEMORY[0x21CEA86D0](*&v5);
  if (a3 == 0.0)
  {
    v6 = 0.0;
  }

  else
  {
    v6 = a3;
  }

  return MEMORY[0x21CEA86D0](*&v6);
}

uint64_t sub_217910CE0(double a1, double a2, double a3)
{
  sub_21796973C();
  sub_217910C74(a1, a2, a3);
  return sub_21796977C();
}

uint64_t sub_217910DC0(uint64_t a1)
{
  sub_21796973C();
  sub_217910C74(*v1, v1[1], v1[2]);
  return sub_21796977C();
}

uint64_t sub_217910E88(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_217910F00(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8D790, &qword_2179704F8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_217910F70()
{
  result = qword_27CB8D798[0];
  if (!qword_27CB8D798[0])
  {
    v1 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8D790, &qword_2179704F8);
    sub_2178FE668(v1, v2, v3);
    sub_217910E88(&qword_27CB8A710, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, qword_27CB8D798);
  }

  return result;
}

uint64_t sub_21791102C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8D790, &qword_2179704F8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t OUTLINED_FUNCTION_7_11(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return swift_getWitnessTable();
}

double sub_2179110EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13[0] = sub_217911180(a1, a3, a5, a4);
  v13[1] = v9;
  v11 = _s34NavigationDestinationsViewModifierVMa(0, a3, a5, v10);
  MEMORY[0x21CEA69A0](v13, a2, v11, a4);

  return result;
}

uint64_t sub_217911180(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  _s9ViewModelCMa(0, a2, a3, a4);
  OUTLINED_FUNCTION_23();
  swift_getWitnessTable();

  return sub_217966ACC();
}

uint64_t sub_2179111E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

void sub_217911264(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_81();
  a19 = v20;
  a20 = v21;
  v631 = v22;
  v638 = v23;
  v606[2] = v24;
  v606[3] = v25;
  v641 = v26;
  v642 = v27;
  v28 = _s34NavigationDestinationsViewModifierVMa(255, v26, v27, v26);
  OUTLINED_FUNCTION_58_3(v28, v29, v30);
  OUTLINED_FUNCTION_12();
  v628 = sub_2179670BC();
  v629 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8B0C0, &unk_2179705C0);
  v31 = OUTLINED_FUNCTION_36_4();
  _s15AlbumDetailViewVMa(v31, v32, v33, v34);
  sub_21796698C();
  v35 = OUTLINED_FUNCTION_36_4();
  _s16ArtistDetailViewVMa(v35, v36, v37, v38);
  sub_21796698C();
  sub_217966F9C();
  v39 = OUTLINED_FUNCTION_36_4();
  _s18PlaylistDetailViewVMa(v39, v40, v41, v42);
  v43 = OUTLINED_FUNCTION_36_4();
  _s24PlaylistFolderDetailViewVMa(v43, v44, v45, v46);
  sub_217966F9C();
  v639 = sub_217966F9C();
  v640 = sub_217966F9C();
  OUTLINED_FUNCTION_45_2();
  WitnessTable = swift_getWitnessTable();
  OUTLINED_FUNCTION_44_2();
  v636 = v48;
  v630 = sub_217864B2C(v49, &qword_27CB8B0C0, &unk_2179705C0, v50);
  OUTLINED_FUNCTION_3_15();
  v51 = swift_getWitnessTable();
  v52 = MEMORY[0x277CE0790];
  v659[1] = v51;
  v659[2] = MEMORY[0x277CE0790];
  OUTLINED_FUNCTION_56_4();
  v637 = v53;
  v54 = swift_getWitnessTable();
  OUTLINED_FUNCTION_2_10();
  v658[8] = swift_getWitnessTable();
  v659[0] = v52;
  v658[6] = v54;
  v658[7] = swift_getWitnessTable();
  OUTLINED_FUNCTION_6_7();
  v55 = swift_getWitnessTable();
  OUTLINED_FUNCTION_1_17();
  v56 = swift_getWitnessTable();
  OUTLINED_FUNCTION_0_15();
  v658[4] = v56;
  v658[5] = swift_getWitnessTable();
  v658[2] = v55;
  v658[3] = swift_getWitnessTable();
  v658[0] = swift_getWitnessTable();
  v658[1] = MEMORY[0x277CE1410];
  v57 = v640;
  v58 = swift_getWitnessTable();
  v59 = WitnessTable;
  v605[2] = WitnessTable;
  v60 = MEMORY[0x277CDEB90];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_8_5(OpaqueTypeMetadata2, v658);
  v606[1] = v62;
  OUTLINED_FUNCTION_47();
  MEMORY[0x28223BE20](v63);
  OUTLINED_FUNCTION_45_0();
  OUTLINED_FUNCTION_52(v64);
  v65 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8AF58, &qword_21796B660);
  v652 = v628;
  v653 = v629;
  v654 = v640;
  v655 = v59;
  v656 = v630;
  v657 = v58;
  v66 = v58;
  v632 = v58;
  v67 = OUTLINED_FUNCTION_93_1(&v652);
  OUTLINED_FUNCTION_86_2();
  v69 = *(v68 - 256);
  v73 = sub_217864B2C(v70, v71, v72, v69);
  v652 = v627;
  v653 = v65;
  v603 = v65;
  v654 = v640;
  v655 = v67;
  v604 = v67;
  v656 = v73;
  v657 = v58;
  v74 = v73;
  OUTLINED_FUNCTION_12_6(v73, &v628);
  v75 = swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_8_5(v75, &v656);
  v606[0] = v76;
  OUTLINED_FUNCTION_47();
  MEMORY[0x28223BE20](v77);
  OUTLINED_FUNCTION_45_0();
  OUTLINED_FUNCTION_52(v78);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8D820, &qword_2179705D0);
  OUTLINED_FUNCTION_83_3();
  v79 = v57;
  v654 = v57;
  v655 = v67;
  v80 = v632;
  v656 = v74;
  v657 = v632;
  v81 = OUTLINED_FUNCTION_93_1(&v652);
  OUTLINED_FUNCTION_152();
  v85 = sub_217864B2C(v82, v83, v84, v69);
  v86 = v625;
  v652 = v625;
  v653 = v66;
  v600[5] = v66;
  v654 = v79;
  v655 = v81;
  v87 = v81;
  v601 = v81;
  v88 = OUTLINED_FUNCTION_68_4(v85);
  OUTLINED_FUNCTION_12_6(v88, v624);
  v89 = v60;
  v90 = swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_0_1();
  v605[1] = v91;
  OUTLINED_FUNCTION_47();
  MEMORY[0x28223BE20](v92);
  OUTLINED_FUNCTION_45_0();
  OUTLINED_FUNCTION_52(v93);
  v94 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8D830, &qword_2179705D8);
  v652 = v86;
  v653 = v66;
  v95 = v640;
  v654 = v640;
  v655 = v87;
  v96 = OUTLINED_FUNCTION_35_2();
  OUTLINED_FUNCTION_86_2();
  v98 = *(v97 - 256);
  v102 = sub_217864B2C(v99, v100, v101, v98);
  v600[0] = v90;
  v652 = v90;
  v653 = v94;
  v599 = v94;
  v654 = v95;
  v655 = v96;
  v600[2] = v96;
  v103 = OUTLINED_FUNCTION_68_4(v102);
  v104 = OUTLINED_FUNCTION_12_6(v103, &v619);
  v106 = OUTLINED_FUNCTION_76_2(v104, v105);
  OUTLINED_FUNCTION_8_5(v106, &v654);
  v605[0] = v107;
  OUTLINED_FUNCTION_47();
  MEMORY[0x28223BE20](v108);
  OUTLINED_FUNCTION_45_0();
  OUTLINED_FUNCTION_52(v109);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8D840, &qword_2179705E0);
  OUTLINED_FUNCTION_83_3();
  v110 = v640;
  v654 = v640;
  v655 = v96;
  v111 = OUTLINED_FUNCTION_35_2();
  OUTLINED_FUNCTION_152();
  v115 = sub_217864B2C(v112, v113, v114, v98);
  v116 = v624[0];
  v652 = v624[0];
  v653 = v95;
  v596[2] = v95;
  v654 = v110;
  v655 = v111;
  v117 = v111;
  v597 = v111;
  v118 = OUTLINED_FUNCTION_68_4(v115);
  v119 = OUTLINED_FUNCTION_12_6(v118, &v614);
  v121 = OUTLINED_FUNCTION_76_2(v119, v120);
  OUTLINED_FUNCTION_0_1();
  v602 = v122;
  OUTLINED_FUNCTION_47();
  MEMORY[0x28223BE20](v123);
  OUTLINED_FUNCTION_45_0();
  OUTLINED_FUNCTION_52(v124);
  v125 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8D850, &qword_2179705E8);
  v652 = v116;
  v653 = v95;
  v126 = v640;
  v654 = v640;
  v655 = v117;
  v127 = OUTLINED_FUNCTION_35_2();
  OUTLINED_FUNCTION_86_2();
  v129 = *(v128 - 256);
  v133 = sub_217864B2C(v130, v131, v132, v129);
  v595[4] = v121;
  v652 = v121;
  v653 = v125;
  v595[3] = v125;
  v654 = v126;
  v655 = v127;
  v595[6] = v127;
  v134 = OUTLINED_FUNCTION_68_4(v133);
  v135 = OUTLINED_FUNCTION_12_6(v134, &v609);
  v137 = OUTLINED_FUNCTION_76_2(v135, v136);
  OUTLINED_FUNCTION_8_5(v137, &v653);
  v600[4] = v138;
  OUTLINED_FUNCTION_47();
  MEMORY[0x28223BE20](v139);
  OUTLINED_FUNCTION_45_0();
  OUTLINED_FUNCTION_52(v140);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8D860, &qword_2179705F0);
  OUTLINED_FUNCTION_83_3();
  v141 = v640;
  v654 = v640;
  v655 = v127;
  v142 = OUTLINED_FUNCTION_35_2();
  v143 = sub_217864B2C(&qword_27CB8D868, &qword_27CB8D860, &qword_2179705F0, v129);
  v144 = v623;
  v652 = v623;
  v653 = v95;
  v594[4] = v95;
  v654 = v141;
  v655 = v142;
  v145 = v141;
  v595[0] = v142;
  v146 = OUTLINED_FUNCTION_68_4(v143);
  v147 = OUTLINED_FUNCTION_12_6(v146, v606);
  v149 = OUTLINED_FUNCTION_76_2(v147, v148);
  OUTLINED_FUNCTION_8_5(v149, &v652);
  v598 = v150;
  OUTLINED_FUNCTION_47();
  MEMORY[0x28223BE20](v151);
  OUTLINED_FUNCTION_45_0();
  OUTLINED_FUNCTION_52(v152);
  v153 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8D870, &qword_2179705F8);
  v652 = v144;
  v653 = v95;
  v654 = v145;
  v655 = v142;
  v154 = OUTLINED_FUNCTION_35_2();
  v155 = sub_217864B2C(&qword_27CB8D878, &qword_27CB8D870, &qword_2179705F8, v129);
  v652 = v622;
  v653 = v153;
  v594[0] = v153;
  v654 = v145;
  v655 = v154;
  v156 = v154;
  v594[2] = v154;
  v157 = OUTLINED_FUNCTION_68_4(v155);
  v158 = OUTLINED_FUNCTION_12_6(v157, v605);
  v160 = OUTLINED_FUNCTION_76_2(v158, v159);
  OUTLINED_FUNCTION_0_1();
  v596[1] = v161;
  OUTLINED_FUNCTION_47();
  MEMORY[0x28223BE20](v162);
  OUTLINED_FUNCTION_45_0();
  OUTLINED_FUNCTION_52(v163);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8D880, &qword_217970600);
  OUTLINED_FUNCTION_83_3();
  v654 = v145;
  v655 = v156;
  v656 = v74;
  v657 = v80;
  v164 = v89;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  OUTLINED_FUNCTION_86_2();
  v170 = sub_217864B2C(v167, v168, v169, *(v166 - 256));
  v652 = v160;
  v653 = v95;
  v171 = v160;
  v591[2] = v160;
  v591[1] = v95;
  v654 = v145;
  v655 = OpaqueTypeConformance2;
  v172 = v145;
  v592 = OpaqueTypeConformance2;
  v656 = v170;
  v657 = v80;
  v173 = v170;
  v591[3] = v170;
  v174 = v80;
  v175 = v164;
  v176 = swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_0_1();
  v595[2] = v177;
  OUTLINED_FUNCTION_47();
  MEMORY[0x28223BE20](v178);
  OUTLINED_FUNCTION_45_0();
  OUTLINED_FUNCTION_52(v179);
  v180 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8D890, &qword_217970608);
  OUTLINED_FUNCTION_69_2(v180, &v651);
  v181 = sub_2179688CC();
  v609 = v181;
  OUTLINED_FUNCTION_52_3();
  v611 = sub_217916A20(v182, v183, &unk_217971AF0);
  v184 = v641;
  v652 = v181;
  v653 = v641;
  v654 = v611;
  v655 = v642;
  v185 = OUTLINED_FUNCTION_59_3();
  v187 = _s21AdditionalContentViewVMa(v185, v186);
  v652 = v171;
  v653 = v95;
  v654 = v172;
  v655 = OpaqueTypeConformance2;
  v656 = v173;
  v657 = v174;
  v639 = v175;
  v188 = swift_getOpaqueTypeConformance2();
  v636 = &unk_21796B2B8;
  v189 = sub_217864B2C(&qword_27CB8D898, &qword_27CB8D890, &qword_217970608, &unk_21796B2B8);
  OUTLINED_FUNCTION_15_6();
  v635 = v190;
  v191 = swift_getWitnessTable();
  v192 = v176;
  v589[2] = v176;
  v193 = v621;
  v652 = v176;
  v653 = v621;
  v654 = v187;
  v655 = v188;
  v589[0] = v187;
  v590 = v188;
  v656 = v189;
  v657 = v191;
  v589[3] = v189;
  OUTLINED_FUNCTION_12_6(v191, v600);
  v194 = swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_8_5(v194, &v650);
  v593 = v195;
  OUTLINED_FUNCTION_47();
  MEMORY[0x28223BE20](v196);
  OUTLINED_FUNCTION_45_0();
  OUTLINED_FUNCTION_52(v197);
  v198 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8D8A0, &qword_217970610);
  v199 = sub_217968A2C();
  OUTLINED_FUNCTION_50_3();
  v202 = sub_217916A20(v200, v201, &unk_217971754);
  v652 = v199;
  v653 = v184;
  v654 = v202;
  v655 = v642;
  v203 = OUTLINED_FUNCTION_59_3();
  v205 = _s21AdditionalContentViewVMa(v203, v204);
  v652 = v192;
  v653 = v193;
  v654 = v187;
  v655 = v188;
  v656 = v189;
  v657 = v191;
  v206 = OUTLINED_FUNCTION_74_2();
  v207 = OUTLINED_FUNCTION_93_1(v206);
  v208 = sub_217864B2C(&qword_27CB8D8A8, &qword_27CB8D8A0, &qword_217970610, &unk_21796B2B8);
  v209 = swift_getWitnessTable();
  v210 = v620;
  v652 = v620;
  v653 = v198;
  v586[1] = v198;
  v654 = v205;
  v655 = v207;
  v211 = v205;
  v585 = v205;
  v212 = v207;
  v587 = v207;
  v656 = v208;
  v657 = v209;
  v586[2] = v208;
  OUTLINED_FUNCTION_12_6(v209, v596);
  v213 = swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_8_5(v213, &v649);
  v591[0] = v214;
  OUTLINED_FUNCTION_47();
  MEMORY[0x28223BE20](v215);
  OUTLINED_FUNCTION_45_0();
  OUTLINED_FUNCTION_52(v216);
  v217 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8D8B0, &qword_217970618);
  v218 = sub_217968E3C();
  OUTLINED_FUNCTION_49_3();
  sub_217916A20(v219, v220, &unk_21797178C);
  OUTLINED_FUNCTION_84_2();
  v652 = v218;
  v653 = v221;
  v222 = v642;
  v654 = v223;
  v655 = v642;
  v224 = OUTLINED_FUNCTION_59_3();
  v226 = _s21AdditionalContentViewVMa(v224, v225);
  v652 = v210;
  v653 = v198;
  v654 = v211;
  v655 = v212;
  v656 = v208;
  v657 = v209;
  v227 = OUTLINED_FUNCTION_92_1();
  v228 = sub_217864B2C(&qword_27CB8D8B8, &qword_27CB8D8B0, &qword_217970618, v636);
  v229 = swift_getWitnessTable();
  v230 = v619;
  v652 = v619;
  v653 = v217;
  v231 = v217;
  v582[1] = v217;
  v654 = v226;
  v655 = v227;
  v581 = v226;
  v232 = v227;
  v583 = v227;
  v656 = v228;
  v657 = v229;
  v233 = v228;
  v582[2] = v228;
  v234 = v229;
  OUTLINED_FUNCTION_12_6(v229, v595);
  v235 = swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_8_5(v235, &v648);
  v588 = v236;
  OUTLINED_FUNCTION_47();
  MEMORY[0x28223BE20](v237);
  OUTLINED_FUNCTION_45_0();
  OUTLINED_FUNCTION_52(v238);
  v239 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8D8C0, &qword_217970620);
  OUTLINED_FUNCTION_69_2(v239, &v647);
  v240 = sub_2179689AC();
  v608 = v240;
  OUTLINED_FUNCTION_47_3();
  v610 = sub_217916A20(v241, v242, &unk_217971698);
  OUTLINED_FUNCTION_84_2();
  v652 = v240;
  v653 = v243;
  v654 = v244;
  v655 = v222;
  v245 = OUTLINED_FUNCTION_59_3();
  v247 = _s21AdditionalContentViewVMa(v245, v246);
  v652 = v230;
  v653 = v231;
  v654 = v226;
  v655 = v232;
  v656 = v233;
  v657 = v234;
  v248 = OUTLINED_FUNCTION_95_1(&v652);
  v249 = sub_217864B2C(&qword_27CB8D8C8, &qword_27CB8D8C0, &qword_217970620, v636);
  v250 = swift_getWitnessTable();
  v251 = v618;
  v252 = v617;
  v652 = v618;
  v653 = v617;
  v654 = v247;
  v655 = v248;
  v577 = v247;
  v253 = v248;
  v579 = v248;
  v656 = v249;
  v657 = v250;
  v254 = v249;
  v578[1] = v249;
  OUTLINED_FUNCTION_12_6(v250, v594);
  v255 = swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_8_5(v255, &v646);
  v584 = v256;
  OUTLINED_FUNCTION_47();
  MEMORY[0x28223BE20](v257);
  OUTLINED_FUNCTION_45_0();
  OUTLINED_FUNCTION_52(v258);
  v259 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8D8D0, &qword_217970628);
  v260 = sub_217968AFC();
  v633 = v260;
  OUTLINED_FUNCTION_55_3();
  v634 = sub_217916A20(v261, v262, &unk_2179717C8);
  v263 = v641;
  v652 = v260;
  v653 = v641;
  v264 = v642;
  v654 = v634;
  v655 = v642;
  v265 = OUTLINED_FUNCTION_59_3();
  v267 = _s21AdditionalContentViewVMa(v265, v266);
  v652 = v251;
  v653 = v252;
  v654 = v247;
  v655 = v253;
  v656 = v254;
  v657 = v250;
  OUTLINED_FUNCTION_74_2();
  v268 = swift_getOpaqueTypeConformance2();
  v269 = sub_217864B2C(&qword_27CB8D8D8, &qword_27CB8D8D0, &qword_217970628, v636);
  v270 = swift_getWitnessTable();
  v271 = v616;
  v652 = v616;
  v653 = v259;
  v654 = v267;
  v655 = v268;
  v576 = v268;
  v656 = v269;
  v657 = v270;
  OUTLINED_FUNCTION_12_6(v270, v591);
  v272 = swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_8_5(v272, &v645);
  v580 = v273;
  OUTLINED_FUNCTION_47();
  MEMORY[0x28223BE20](v274);
  OUTLINED_FUNCTION_45_0();
  OUTLINED_FUNCTION_52(v275);
  v276 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8D8E0, &qword_217970630);
  OUTLINED_FUNCTION_34_2(v276, &v644);
  v652 = v277;
  v653 = v263;
  v654 = MEMORY[0x277CD8408];
  v655 = v634;
  v656 = v264;
  v278 = OUTLINED_FUNCTION_59_3();
  _s25LibrarySectionContentViewVMa(v278, v279);
  v280 = sub_21796732C();
  OUTLINED_FUNCTION_69_2(v280, v659);
  v281 = sub_21796698C();
  v652 = v271;
  v653 = v259;
  v654 = v267;
  v655 = v268;
  v656 = v269;
  v657 = v270;
  v282 = swift_getOpaqueTypeConformance2();
  OUTLINED_FUNCTION_53_2();
  v635 = v283;
  v286 = sub_217864B2C(v284, &qword_27CB8D8E0, &qword_217970630, v285);
  OUTLINED_FUNCTION_17_8();
  v634 = v287;
  v288 = swift_getWitnessTable();
  OUTLINED_FUNCTION_16_5();
  v633 = sub_217916A20(v289, v290, MEMORY[0x277CDE458]);
  v650 = v288;
  v651 = v633;
  v291 = swift_getWitnessTable();
  v292 = v615;
  v293 = v614;
  v652 = v615;
  v653 = v614;
  v654 = v281;
  v655 = v282;
  v575 = v282;
  v656 = v286;
  v657 = v291;
  OUTLINED_FUNCTION_12_6(v291, v589);
  v294 = swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_8_5(v294, &v643);
  OUTLINED_FUNCTION_47();
  MEMORY[0x28223BE20](v295);
  OUTLINED_FUNCTION_45_0();
  OUTLINED_FUNCTION_52(v296);
  v612 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8D8F0, &qword_217970638);
  OUTLINED_FUNCTION_84_2();
  v652 = v298;
  v653 = v297;
  v654 = MEMORY[0x277CD82A8];
  v655 = v610;
  OUTLINED_FUNCTION_32_2();
  v299 = OUTLINED_FUNCTION_27_4();
  v301 = OUTLINED_FUNCTION_98_0(v299, v300);
  v652 = v292;
  v653 = v293;
  v654 = v281;
  v655 = v282;
  v656 = v286;
  v657 = v291;
  v302 = swift_getOpaqueTypeConformance2();
  v303 = OUTLINED_FUNCTION_97_0(&qword_27CB8D8F8, &qword_27CB8D8F0, &qword_217970638);
  v306 = OUTLINED_FUNCTION_71_3(v303, v304, v305);
  OUTLINED_FUNCTION_34_2(v306, &a18);
  v649 = v307;
  v308 = swift_getWitnessTable();
  v309 = v613;
  v310 = v612;
  v652 = v613;
  v653 = v612;
  v654 = v301;
  v655 = v302;
  v311 = v302;
  v574 = v302;
  v656 = v303;
  v657 = v308;
  v312 = v308;
  OUTLINED_FUNCTION_12_6(v308, v586);
  v313 = swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_8_5(v313, &v641);
  OUTLINED_FUNCTION_47();
  MEMORY[0x28223BE20](v314);
  OUTLINED_FUNCTION_45_0();
  OUTLINED_FUNCTION_52(v315);
  v316 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8D900, &qword_217970640);
  OUTLINED_FUNCTION_84_2();
  v652 = v318;
  v653 = v317;
  v654 = MEMORY[0x277CD8200];
  v655 = v611;
  OUTLINED_FUNCTION_32_2();
  v319 = OUTLINED_FUNCTION_27_4();
  v321 = OUTLINED_FUNCTION_98_0(v319, v320);
  v652 = v309;
  v653 = v310;
  v654 = v301;
  v655 = v311;
  v656 = v303;
  v657 = v312;
  v322 = OUTLINED_FUNCTION_92_1();
  v323 = OUTLINED_FUNCTION_97_0(&qword_27CB8D908, &qword_27CB8D900, &qword_217970640);
  v326 = OUTLINED_FUNCTION_71_3(v323, v324, v325);
  OUTLINED_FUNCTION_34_2(v326, &a16);
  v647 = v327;
  v328 = v321;
  v611 = v321;
  v329 = swift_getWitnessTable();
  v330 = v610;
  v652 = v610;
  v653 = v316;
  v331 = v316;
  v654 = v328;
  v655 = v322;
  v332 = v322;
  v573 = v322;
  v656 = v323;
  v657 = v329;
  v333 = v323;
  v334 = v329;
  OUTLINED_FUNCTION_12_6(v329, v582);
  v335 = swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_47();
  MEMORY[0x28223BE20](v336);
  OUTLINED_FUNCTION_45_0();
  OUTLINED_FUNCTION_52(v337);
  v338 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8D910, &qword_217970648);
  OUTLINED_FUNCTION_69_2(v338, &v638);
  v339 = sub_21796591C();
  v340 = MEMORY[0x277D2A350];
  v341 = sub_217916A20(&qword_27CB8BFA8, MEMORY[0x277D2A350], MEMORY[0x277D2A340]);
  OUTLINED_FUNCTION_5_2();
  v344 = sub_217916A20(v342, v340, v343);
  v345 = v641;
  v652 = v339;
  v653 = v641;
  v654 = v341;
  v655 = v344;
  OUTLINED_FUNCTION_32_2();
  v346 = OUTLINED_FUNCTION_27_4();
  v348 = OUTLINED_FUNCTION_98_0(v346, v347);
  v652 = v330;
  v653 = v331;
  v654 = v611;
  v655 = v332;
  v656 = v333;
  v657 = v334;
  OUTLINED_FUNCTION_74_2();
  v349 = swift_getOpaqueTypeConformance2();
  v350 = OUTLINED_FUNCTION_97_0(&qword_27CB8D918, &qword_27CB8D910, &qword_217970648);
  v353 = OUTLINED_FUNCTION_71_3(v350, v351, v352);
  OUTLINED_FUNCTION_34_2(v353, &a14);
  v645 = v354;
  v608 = v348;
  v355 = swift_getWitnessTable();
  v356 = v607;
  v652 = v335;
  v653 = v607;
  v654 = v348;
  v655 = v349;
  v357 = v349;
  v572 = v349;
  v656 = v350;
  v657 = v355;
  OUTLINED_FUNCTION_12_6(v355, &v577);
  v358 = swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_8_5(v358, &v640);
  OUTLINED_FUNCTION_47();
  MEMORY[0x28223BE20](v359);
  OUTLINED_FUNCTION_45_0();
  OUTLINED_FUNCTION_52(v360);
  v361 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8D920, &qword_217970650);
  OUTLINED_FUNCTION_69_2(v361, v578);
  v362 = sub_217968CFC();
  v363 = MEMORY[0x277D2B358];
  v364 = sub_217916A20(&qword_27CB8BF98, MEMORY[0x277D2B358], MEMORY[0x277D2B340]);
  OUTLINED_FUNCTION_7_3();
  v367 = sub_217916A20(v365, v363, v366);
  v652 = v362;
  v653 = v345;
  v654 = v364;
  v655 = v367;
  OUTLINED_FUNCTION_32_2();
  v368 = OUTLINED_FUNCTION_27_4();
  v370 = OUTLINED_FUNCTION_98_0(v368, v369);
  v652 = v335;
  v653 = v356;
  v654 = v608;
  v655 = v357;
  v656 = v350;
  v657 = v355;
  v371 = OUTLINED_FUNCTION_74_2();
  v571 = OUTLINED_FUNCTION_93_1(v371);
  v372 = OUTLINED_FUNCTION_97_0(&qword_27CB8D928, &qword_27CB8D920, &qword_217970650);
  v635 = v372;
  v375 = OUTLINED_FUNCTION_71_3(v372, v373, v374);
  OUTLINED_FUNCTION_34_2(v375, &a12);
  v643 = v376;
  v633 = swift_getWitnessTable();
  v652 = v609;
  v653 = v361;
  v654 = v370;
  v655 = v571;
  v656 = v372;
  v657 = v633;
  v377 = swift_getOpaqueTypeMetadata2();
  v378 = OUTLINED_FUNCTION_8_5(v377, v659);
  v637 = v379;
  MEMORY[0x28223BE20](v378);
  OUTLINED_FUNCTION_88();
  v570 = v380;
  OUTLINED_FUNCTION_84_0();
  MEMORY[0x28223BE20](v381);
  OUTLINED_FUNCTION_13_4();
  OUTLINED_FUNCTION_52(v382);
  v383 = v638;
  v384 = v631;
  v385 = v641;
  v386 = v642;
  sub_2179135DC(v638, v631, v641, v642);
  swift_checkMetadataState();
  v387 = swift_checkMetadataState();
  OUTLINED_FUNCTION_91_1();
  sub_2179678DC();
  OUTLINED_FUNCTION_67_2();
  v388 = v384;
  sub_217914D98(v383, v384, v385, v386);
  OUTLINED_FUNCTION_70_1();
  v389 = OUTLINED_FUNCTION_23_4();
  v390 = v387;
  OUTLINED_FUNCTION_99_0(v389, v391, v392, v627, v389, v387, v604);
  OUTLINED_FUNCTION_67_2();
  OUTLINED_FUNCTION_54();
  v393 = OUTLINED_FUNCTION_38_2();
  v394(v393);
  v395 = v638;
  v396 = v641;
  sub_217914EA8(v638, v384, v641, v386);
  v397 = v632;
  v398 = OUTLINED_FUNCTION_23_4();
  v399 = v625;
  v640 = v390;
  OUTLINED_FUNCTION_79_2(v398, v400, v401, v625, v398, v390, v601);
  OUTLINED_FUNCTION_67_2();
  OUTLINED_FUNCTION_54();
  v402(v383, v399);
  v403 = v396;
  v404 = v396;
  v405 = v642;
  sub_217914F28(v395, v384, v404, v642);
  v406 = v397;
  OUTLINED_FUNCTION_91_1();
  OUTLINED_FUNCTION_23_4();
  OUTLINED_FUNCTION_28_3();
  v407 = v626;
  sub_2179678DC();
  OUTLINED_FUNCTION_67_2();
  OUTLINED_FUNCTION_54();
  v408(v407, v383);
  v409 = v638;
  v410 = OUTLINED_FUNCTION_72_2();
  v411 = v405;
  sub_217914FA8(v410, v412, v413, v405);
  OUTLINED_FUNCTION_37_3();
  OUTLINED_FUNCTION_23_4();
  OUTLINED_FUNCTION_28_3();
  OUTLINED_FUNCTION_99_0(v414, v415, v416, v417, v418, v640, v597);
  OUTLINED_FUNCTION_67_2();
  OUTLINED_FUNCTION_54();
  v419 = OUTLINED_FUNCTION_65_4();
  v420(v419);
  v421 = OUTLINED_FUNCTION_72_2();
  sub_217915028(v421, v422, v423, v405);
  OUTLINED_FUNCTION_37_3();
  OUTLINED_FUNCTION_91_1();
  OUTLINED_FUNCTION_23_4();
  OUTLINED_FUNCTION_28_3();
  v424 = v624[1];
  sub_2179678DC();
  OUTLINED_FUNCTION_67_2();
  OUTLINED_FUNCTION_54();
  v425(v424, v383);
  v426 = v409;
  v427 = OUTLINED_FUNCTION_72_2();
  sub_2179150A8(v427, v428, v429, v411);
  OUTLINED_FUNCTION_37_3();
  v430 = v595[1];
  OUTLINED_FUNCTION_23_4();
  OUTLINED_FUNCTION_28_3();
  OUTLINED_FUNCTION_99_0(v431, v432, v433, v434, v435, v640, v595[0]);
  OUTLINED_FUNCTION_67_2();
  OUTLINED_FUNCTION_54();
  v436 = OUTLINED_FUNCTION_65_4();
  v437(v436);
  v438 = v426;
  v439 = v388;
  v440 = v403;
  v441 = v642;
  sub_217915128(v438, v439, v403, v642);
  OUTLINED_FUNCTION_37_3();
  OUTLINED_FUNCTION_91_1();
  OUTLINED_FUNCTION_23_4();
  OUTLINED_FUNCTION_28_3();
  sub_2179678DC();
  OUTLINED_FUNCTION_67_2();
  OUTLINED_FUNCTION_54();
  v442(v430, v383);
  v443 = v638;
  v444 = v631;
  sub_2179151A8(v638, v631, v440, v441);
  OUTLINED_FUNCTION_37_3();
  OUTLINED_FUNCTION_73_3();
  OUTLINED_FUNCTION_23_4();
  OUTLINED_FUNCTION_28_3();
  OUTLINED_FUNCTION_99_0(v445, v446, v447, v448, v449, v640, v592);
  OUTLINED_FUNCTION_67_2();
  OUTLINED_FUNCTION_54();
  v450 = OUTLINED_FUNCTION_65_4();
  v451(v450);
  sub_217915228(v443, v444, v440, v441);
  OUTLINED_FUNCTION_18_5();
  swift_checkMetadataState();
  OUTLINED_FUNCTION_62_4();
  OUTLINED_FUNCTION_70_1();
  OUTLINED_FUNCTION_19_4();
  OUTLINED_FUNCTION_20_5();
  OUTLINED_FUNCTION_80_0(v452, v453, v454, v455, v456, v457, v590);
  OUTLINED_FUNCTION_67_2();
  v458 = OUTLINED_FUNCTION_22_3();
  v459(v458);
  v460 = OUTLINED_FUNCTION_9_10();
  sub_217915514(v460, v461, v462, v463);
  OUTLINED_FUNCTION_18_5();
  swift_checkMetadataState();
  OUTLINED_FUNCTION_62_4();
  OUTLINED_FUNCTION_73_3();
  OUTLINED_FUNCTION_19_4();
  OUTLINED_FUNCTION_20_5();
  OUTLINED_FUNCTION_79_2(v464, v465, v466, v467, v468, v469, v587);
  OUTLINED_FUNCTION_67_2();
  v470 = OUTLINED_FUNCTION_21_6();
  v471(v470);
  v472 = OUTLINED_FUNCTION_9_10();
  sub_217915620(v472, v473, v474, v475);
  OUTLINED_FUNCTION_18_5();
  swift_checkMetadataState();
  OUTLINED_FUNCTION_62_4();
  OUTLINED_FUNCTION_70_1();
  OUTLINED_FUNCTION_19_4();
  OUTLINED_FUNCTION_20_5();
  OUTLINED_FUNCTION_80_0(v476, v477, v478, v479, v480, v481, v583);
  OUTLINED_FUNCTION_67_2();
  v482 = OUTLINED_FUNCTION_22_3();
  v483(v482);
  v484 = OUTLINED_FUNCTION_9_10();
  sub_2179156A0(v484, v485, v486, v487);
  OUTLINED_FUNCTION_18_5();
  swift_checkMetadataState();
  OUTLINED_FUNCTION_62_4();
  OUTLINED_FUNCTION_73_3();
  OUTLINED_FUNCTION_19_4();
  OUTLINED_FUNCTION_20_5();
  OUTLINED_FUNCTION_79_2(v488, v489, v490, v491, v492, v493, v579);
  OUTLINED_FUNCTION_67_2();
  v494 = OUTLINED_FUNCTION_21_6();
  v495(v494);
  v496 = OUTLINED_FUNCTION_9_10();
  sub_217915720(v496, v497, v498, v499);
  OUTLINED_FUNCTION_18_5();
  swift_checkMetadataState();
  OUTLINED_FUNCTION_62_4();
  OUTLINED_FUNCTION_70_1();
  OUTLINED_FUNCTION_19_4();
  OUTLINED_FUNCTION_20_5();
  OUTLINED_FUNCTION_80_0(v500, v501, v502, v503, v504, v505, v576);
  OUTLINED_FUNCTION_67_2();
  v506 = OUTLINED_FUNCTION_22_3();
  v507(v506);
  v508 = OUTLINED_FUNCTION_9_10();
  sub_2179157A0(v508, v509, v510, v511);
  OUTLINED_FUNCTION_18_5();
  swift_checkMetadataState();
  OUTLINED_FUNCTION_62_4();
  OUTLINED_FUNCTION_73_3();
  OUTLINED_FUNCTION_19_4();
  OUTLINED_FUNCTION_20_5();
  OUTLINED_FUNCTION_79_2(v512, v513, v514, v515, v516, v517, v575);
  OUTLINED_FUNCTION_67_2();
  v518 = OUTLINED_FUNCTION_21_6();
  v519(v518);
  v520 = OUTLINED_FUNCTION_9_10();
  sub_217915DBC(v520, v521, v522, v523);
  OUTLINED_FUNCTION_18_5();
  swift_checkMetadataState();
  OUTLINED_FUNCTION_62_4();
  OUTLINED_FUNCTION_70_1();
  OUTLINED_FUNCTION_19_4();
  OUTLINED_FUNCTION_20_5();
  OUTLINED_FUNCTION_80_0(v524, v525, v526, v527, v528, v529, v574);
  OUTLINED_FUNCTION_67_2();
  v530 = OUTLINED_FUNCTION_22_3();
  v531(v530);
  v532 = OUTLINED_FUNCTION_9_10();
  sub_217915EE8(v532, v533, v534, v535);
  OUTLINED_FUNCTION_18_5();
  swift_checkMetadataState();
  OUTLINED_FUNCTION_62_4();
  OUTLINED_FUNCTION_73_3();
  OUTLINED_FUNCTION_19_4();
  OUTLINED_FUNCTION_20_5();
  OUTLINED_FUNCTION_79_2(v536, v537, v538, v539, v540, v541, v573);
  OUTLINED_FUNCTION_67_2();
  v542 = OUTLINED_FUNCTION_21_6();
  v543(v542);
  v544 = OUTLINED_FUNCTION_9_10();
  sub_217916014(v544, v545, v546, v547);
  OUTLINED_FUNCTION_18_5();
  swift_checkMetadataState();
  OUTLINED_FUNCTION_62_4();
  OUTLINED_FUNCTION_70_1();
  OUTLINED_FUNCTION_19_4();
  OUTLINED_FUNCTION_20_5();
  OUTLINED_FUNCTION_80_0(v548, v549, v550, v551, v552, v553, v572);
  OUTLINED_FUNCTION_67_2();
  v554 = OUTLINED_FUNCTION_22_3();
  v555(v554);
  v556 = OUTLINED_FUNCTION_9_10();
  sub_217916170(v556, v557, v558, v559);
  OUTLINED_FUNCTION_18_5();
  v560 = swift_checkMetadataState();
  v561 = v633;
  OUTLINED_FUNCTION_19_4();
  OUTLINED_FUNCTION_20_5();
  v563 = v562;
  v564 = v635;
  sub_2179678DC();
  OUTLINED_FUNCTION_67_2();
  v565 = OUTLINED_FUNCTION_21_6();
  v566(v565);
  v652 = v406;
  v653 = v563;
  v654 = v560;
  v655 = v571;
  v656 = v564;
  v657 = v561;
  OUTLINED_FUNCTION_74_2();
  swift_getOpaqueTypeConformance2();
  v567 = v636;
  sub_2179560E4();
  v568 = *(v637 + 8);
  v568(v570, v567);
  OUTLINED_FUNCTION_140();
  sub_2179560E4();
  v569 = OUTLINED_FUNCTION_140();
  (v568)(v569);
  OUTLINED_FUNCTION_80();
}

void (*sub_2179135DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4))()
{
  v8 = swift_allocObject();
  v8[2] = a3;
  v8[3] = a4;
  v8[4] = a1;
  v8[5] = a2;

  return sub_217916B10;
}

void sub_21791365C()
{
  OUTLINED_FUNCTION_81();
  v1 = v0;
  v332 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v311 = v8;
  v321 = v9;
  v11 = v10;
  v328 = v12;
  v13 = _s24PlaylistFolderDetailViewVMa(0, v6, v2, v6);
  OUTLINED_FUNCTION_2();
  v285 = v14;
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_88();
  v283 = v16;
  OUTLINED_FUNCTION_84_0();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_13_4();
  v282 = v18;
  OUTLINED_FUNCTION_46_0();
  v284 = sub_217968D2C();
  OUTLINED_FUNCTION_2();
  v281 = v19;
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_88();
  v278 = v21;
  OUTLINED_FUNCTION_84_0();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_88_1();
  v280 = v23;
  OUTLINED_FUNCTION_84_0();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_13_4();
  v279 = v25;
  v26 = OUTLINED_FUNCTION_36_4();
  v30 = _s18PlaylistDetailViewVMa(v26, v27, v28, v29);
  v334 = v13;
  v31 = sub_217966F9C();
  OUTLINED_FUNCTION_2();
  v286 = v32;
  OUTLINED_FUNCTION_47();
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_45_0();
  v298 = v34;
  v336 = v30;
  v297 = *(v30 - 8);
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_88();
  v295 = v36;
  OUTLINED_FUNCTION_84_0();
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_13_4();
  v294 = v38;
  OUTLINED_FUNCTION_46_0();
  v296 = sub_217968E3C();
  OUTLINED_FUNCTION_2();
  v293 = v39;
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_88();
  v291 = v41;
  OUTLINED_FUNCTION_84_0();
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_88_1();
  v292 = v43;
  OUTLINED_FUNCTION_84_0();
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_13_4();
  v288 = v45;
  OUTLINED_FUNCTION_46_0();
  OUTLINED_FUNCTION_60_3();
  _s16ArtistDetailViewVMa(v46, v47, v48, v49);
  OUTLINED_FUNCTION_2();
  v290 = v50;
  OUTLINED_FUNCTION_47();
  MEMORY[0x28223BE20](v51);
  OUTLINED_FUNCTION_45_0();
  v289 = v52;
  v335 = v53;
  v54 = sub_21796698C();
  OUTLINED_FUNCTION_2();
  v308 = v55;
  MEMORY[0x28223BE20](v56);
  OUTLINED_FUNCTION_88();
  v306 = v57;
  OUTLINED_FUNCTION_84_0();
  MEMORY[0x28223BE20](v58);
  OUTLINED_FUNCTION_13_4();
  v305 = v59;
  OUTLINED_FUNCTION_46_0();
  v318 = sub_217968AFC();
  OUTLINED_FUNCTION_2();
  v304 = v60;
  MEMORY[0x28223BE20](v61);
  OUTLINED_FUNCTION_88();
  v287 = v62;
  OUTLINED_FUNCTION_84_0();
  MEMORY[0x28223BE20](v63);
  OUTLINED_FUNCTION_88_1();
  v303 = v64;
  OUTLINED_FUNCTION_84_0();
  MEMORY[0x28223BE20](v65);
  OUTLINED_FUNCTION_13_4();
  v301 = v66;
  v319 = v7;
  v320 = v3;
  OUTLINED_FUNCTION_60_3();
  v71 = _s15AlbumDetailViewVMa(v67, v68, v69, v70);
  v72 = sub_21796698C();
  v331 = v54;
  sub_217966F9C();
  OUTLINED_FUNCTION_2();
  v310 = v73;
  OUTLINED_FUNCTION_47();
  MEMORY[0x28223BE20](v74);
  OUTLINED_FUNCTION_45_0();
  v309 = v75;
  OUTLINED_FUNCTION_46_0();
  v325 = v31;
  v326 = v76;
  v77 = sub_217966F9C();
  OUTLINED_FUNCTION_2();
  v313 = v78;
  OUTLINED_FUNCTION_47();
  MEMORY[0x28223BE20](v79);
  OUTLINED_FUNCTION_45_0();
  v312 = v80;
  v81 = OUTLINED_FUNCTION_46_0();
  v82 = v5;
  v84 = _s20DetailViewPropertiesVMa(v81, v5, v1, v83);
  OUTLINED_FUNCTION_2();
  v314 = v85;
  OUTLINED_FUNCTION_47();
  v307 = v86;
  MEMORY[0x28223BE20](v87);
  OUTLINED_FUNCTION_45_0();
  v89 = v88;
  v333 = v71;
  v300 = *(v71 - 8);
  OUTLINED_FUNCTION_47();
  MEMORY[0x28223BE20](v90);
  OUTLINED_FUNCTION_45_0();
  v299 = v91;
  v329 = v72;
  v330 = *(v72 - 8);
  MEMORY[0x28223BE20](v92);
  OUTLINED_FUNCTION_88();
  v302 = v93;
  OUTLINED_FUNCTION_84_0();
  MEMORY[0x28223BE20](v94);
  OUTLINED_FUNCTION_13_4();
  v317 = v95;
  OUTLINED_FUNCTION_46_0();
  v96 = sub_2179689AC();
  OUTLINED_FUNCTION_2();
  v316 = v97;
  v99 = MEMORY[0x28223BE20](v98);
  v101 = &v276 - ((v100 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v99);
  OUTLINED_FUNCTION_88_1();
  v315 = v102;
  OUTLINED_FUNCTION_84_0();
  MEMORY[0x28223BE20](v103);
  v105 = &v276 - v104;
  v327 = v77;
  sub_217966F9C();
  OUTLINED_FUNCTION_2();
  v323 = v107;
  v324 = v106;
  OUTLINED_FUNCTION_47();
  MEMORY[0x28223BE20](v108);
  OUTLINED_FUNCTION_45_0();
  v322 = v109;
  v110 = v82;
  v111 = v11;
  sub_217938234();
  sub_217916604(v357, v356);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8B080, &unk_21796E060);
  if (swift_dynamicCast())
  {
    v112 = v316;
    v113 = *(v316 + 32);
    v277 = v96;
    v113(v315, v105, v96);
    v114 = OUTLINED_FUNCTION_65_4();
    v115(v114);
    OUTLINED_FUNCTION_11_8(*(v84 + 36));
    v116 = *(v11 + *(v84 + 44));

    sub_217863EC4(v112);
    v117 = v101;
    v118 = v11;
    v119 = v319;
    v120 = v320;
    sub_2178580FC(v117, v353, v116, v319, v320, v299);
    v121 = v314;
    (*(v314 + 16))(v89, v118, v84);
    v122 = (*(v121 + 80) + 64) & ~*(v121 + 80);
    v123 = swift_allocObject();
    *(v123 + 2) = v119;
    *(v123 + 3) = v110;
    v124 = v332;
    *(v123 + 4) = v120;
    *(v123 + 5) = v124;
    v125 = v311;
    *(v123 + 6) = v321;
    *(v123 + 7) = v125;
    (*(v121 + 32))(&v123[v122], v89, v84);

    OUTLINED_FUNCTION_3_15();
    v126 = v333;
    WitnessTable = swift_getWitnessTable();
    OUTLINED_FUNCTION_152();
    sub_217967A4C();

    v128 = OUTLINED_FUNCTION_51_4();
    v129(v128, v126);
    v345 = WitnessTable;
    v130 = MEMORY[0x277CE0790];
    v346 = MEMORY[0x277CE0790];
    OUTLINED_FUNCTION_8_9();
    v131 = v329;
    v132 = swift_getWitnessTable();
    OUTLINED_FUNCTION_38_2();
    sub_2179560E4();
    v133 = *(v330 + 8);
    v330 += 8;
    v332 = v133;
    v134 = OUTLINED_FUNCTION_38_2();
    v135(v134);
    sub_2179560E4();
    OUTLINED_FUNCTION_2_10();
    v343 = swift_getWitnessTable();
    v344 = v130;
    v136 = swift_getWitnessTable();
    OUTLINED_FUNCTION_9_10();
    sub_217952EE8();
    v341 = v132;
    v342 = v136;
    OUTLINED_FUNCTION_6_7();
    v137 = v326;
    v138 = swift_getWitnessTable();
    OUTLINED_FUNCTION_1_17();
    v139 = swift_getWitnessTable();
    OUTLINED_FUNCTION_0_15();
    v140 = swift_getWitnessTable();
    v339 = v139;
    v340 = v140;
    v141 = swift_getWitnessTable();
    v142 = v312;
    sub_217952EE8();
    v143 = OUTLINED_FUNCTION_51_4();
    v144(v143, v137);
    v337 = v138;
    v338 = v141;
    v145 = v327;
    swift_getWitnessTable();
    sub_217952EE8();
    OUTLINED_FUNCTION_90_0();
    v146(v142, v145);
    v147 = OUTLINED_FUNCTION_38_2();
    v148 = v332;
    v332(v147);
    v148(v317, v131);
    (*(v316 + 8))(v315, v277);
  }

  else
  {
    v149 = v89;
    v150 = v314;
    v330 = v110;
    v151 = v319;
    v152 = v301;
    if (swift_dynamicCast())
    {
      v154 = v303;
      v153 = v304;
      v155 = v318;
      (*(v304 + 32))(v303, v152, v318);
      v156 = v287;
      (*(v153 + 16))(v287, v154, v155);
      v157 = v84;
      OUTLINED_FUNCTION_11_8(*(v84 + 36));
      v158 = *(v111 + *(v84 + 44));

      sub_217863EC4(v153);
      v159 = v289;
      v160 = v156;
      v161 = v320;
      sub_217876BA4(v160, v353, v158, v151, v320, v289, v151);
      OUTLINED_FUNCTION_60_3();
      v162();
      v163 = (*(v150 + 80) + 64) & ~*(v150 + 80);
      v164 = swift_allocObject();
      v165 = v330;
      *(v164 + 2) = v151;
      *(v164 + 3) = v165;
      v166 = v332;
      *(v164 + 4) = v161;
      *(v164 + 5) = v166;
      v167 = v311;
      *(v164 + 6) = v321;
      *(v164 + 7) = v167;
      (*(v150 + 32))(&v164[v163], v149, v157);

      OUTLINED_FUNCTION_2_10();
      v168 = v335;
      v169 = swift_getWitnessTable();
      v170 = v306;
      sub_217967A4C();

      (*(v290 + 8))(v159, v168);
      v348[6] = v169;
      v171 = MEMORY[0x277CE0790];
      v348[7] = MEMORY[0x277CE0790];
      OUTLINED_FUNCTION_8_9();
      v172 = v331;
      v173 = swift_getWitnessTable();
      OUTLINED_FUNCTION_152();
      sub_2179560E4();
      v174 = *(v308 + 8);
      v308 += 8;
      v332 = v174;
      (v174)(v170, v172);
      OUTLINED_FUNCTION_152();
      sub_2179560E4();
      OUTLINED_FUNCTION_3_15();
      v348[4] = swift_getWitnessTable();
      v348[5] = v171;
      v175 = swift_getWitnessTable();
      v176 = v309;
      OUTLINED_FUNCTION_65_4();
      sub_217952FA4();
      v348[2] = v175;
      v348[3] = v173;
      OUTLINED_FUNCTION_6_7();
      v177 = swift_getWitnessTable();
      OUTLINED_FUNCTION_1_17();
      v178 = v172;
      v179 = swift_getWitnessTable();
      OUTLINED_FUNCTION_0_15();
      v180 = swift_getWitnessTable();
      v348[0] = v179;
      v348[1] = v180;
      v182 = OUTLINED_FUNCTION_96_0(v175, v181, v348);
      v183 = v312;
      OUTLINED_FUNCTION_89_0();
      sub_217952EE8();
      v184 = OUTLINED_FUNCTION_89_0();
      v185(v184);
      v347[0] = v177;
      v347[1] = v182;
      OUTLINED_FUNCTION_94_0(v175, v186, v347);
      sub_217952EE8();
      OUTLINED_FUNCTION_90_0();
      v187(v183, v176);
      v188 = v332;
      (v332)(v306, v178);
      v188(v305, v178);
      (*(v304 + 8))(v303, v318);
    }

    else
    {
      v189 = v288;
      v190 = v296;
      if (swift_dynamicCast())
      {
        v192 = v292;
        v191 = v293;
        (*(v293 + 32))(v292, v189, v190);
        (*(v191 + 16))(v291, v192, v190);
        v276 = v84;
        OUTLINED_FUNCTION_11_8(*(v84 + 36));

        sub_217863EC4(v191);
        _s9ViewModelCMa(0, v151, v320, v193);
        OUTLINED_FUNCTION_23();
        swift_getWitnessTable();
        v194 = sub_217966A9C();
        sub_2178D83B0(v194, v195, v196, v197, v198, v199, v200, v201, v276, v277, v278, v279, v280, v281, SWORD2(v281), SBYTE6(v281), HIBYTE(v281));

        v202 = sub_217966A9C();
        sub_2178D8388(v202, v203, v204, v205, v206, v207, v208, v209, v276, v277, v278, v279, v280, v281, SWORD2(v281), SBYTE6(v281), HIBYTE(v281));

        v210 = v295;
        sub_2178661B0(v291, v353);
        OUTLINED_FUNCTION_1_17();
        v211 = v336;
        v212 = swift_getWitnessTable();
        sub_2179560E4();
        v213 = *(v297 + 8);
        v297 += 8;
        v332 = v213;
        (v213)(v210, v211);
        sub_2179560E4();
        OUTLINED_FUNCTION_0_15();
        v214 = v334;
        v215 = swift_getWitnessTable();
        sub_217952EE8();
        OUTLINED_FUNCTION_3_15();
        v350[6] = swift_getWitnessTable();
        v216 = MEMORY[0x277CE0790];
        v350[7] = MEMORY[0x277CE0790];
        OUTLINED_FUNCTION_57_4();
        v217 = v329;
        v218 = swift_getWitnessTable();
        OUTLINED_FUNCTION_2_10();
        v350[4] = swift_getWitnessTable();
        v350[5] = v216;
        v219 = swift_getWitnessTable();
        v350[2] = v218;
        v350[3] = v219;
        OUTLINED_FUNCTION_54_2();
        v220 = swift_getWitnessTable();
        v350[0] = v212;
        v350[1] = v215;
        v222 = OUTLINED_FUNCTION_96_0(v214, v221, v350);
        OUTLINED_FUNCTION_64_4(v222);
        v223 = OUTLINED_FUNCTION_51_4();
        v224(v223, v217);
        v349[0] = v220;
        v349[1] = v212;
        OUTLINED_FUNCTION_94_0(v214, v225, v349);
        OUTLINED_FUNCTION_87_3();
        sub_217952EE8();
        OUTLINED_FUNCTION_90_0();
        v226 = OUTLINED_FUNCTION_87_3();
        v227(v226);
        v228 = v336;
        v229 = v332;
        (v332)(v295, v336);
        v229(v294, v228);
        (*(v293 + 8))(v292, v296);
      }

      else
      {
        v230 = v279;
        v231 = v284;
        v232 = swift_dynamicCast();
        v233 = MEMORY[0x277CE0790];
        v234 = v320;
        if (v232)
        {
          v235 = v151;
          v237 = v280;
          v236 = v281;
          (*(v281 + 32))(v280, v230, v231);
          v238 = *(v236 + 16);
          v239 = v278;
          v238(v278, v237, v231);
          OUTLINED_FUNCTION_11_8(*(v84 + 36));

          sub_217863EC4(v231);
          v240 = v283;
          sub_217959584(v239, v353, 0, v283, v235, v234);
          OUTLINED_FUNCTION_0_15();
          v241 = v334;
          v242 = swift_getWitnessTable();
          sub_2179560E4();
          v243 = *(v285 + 8);
          v285 += 8;
          v332 = v243;
          (v243)(v240, v241);
          sub_2179560E4();
          OUTLINED_FUNCTION_1_17();
          v244 = v336;
          v245 = swift_getWitnessTable();
          sub_217952FA4();
          OUTLINED_FUNCTION_3_15();
          v352[6] = swift_getWitnessTable();
          v246 = MEMORY[0x277CE0790];
          v352[7] = MEMORY[0x277CE0790];
          OUTLINED_FUNCTION_57_4();
          v247 = swift_getWitnessTable();
          OUTLINED_FUNCTION_2_10();
          v352[4] = swift_getWitnessTable();
          v352[5] = v246;
          v248 = swift_getWitnessTable();
          v352[2] = v247;
          v352[3] = v248;
          OUTLINED_FUNCTION_54_2();
          v249 = swift_getWitnessTable();
          v352[0] = v245;
          v352[1] = v242;
          v251 = OUTLINED_FUNCTION_96_0(v244, v250, v352);
          OUTLINED_FUNCTION_64_4(v251);
          v252 = OUTLINED_FUNCTION_51_4();
          v253(v252, v239);
          v351[0] = v249;
          v351[1] = v242;
          OUTLINED_FUNCTION_94_0(v244, v254, v351);
          OUTLINED_FUNCTION_87_3();
          sub_217952EE8();
          OUTLINED_FUNCTION_90_0();
          v255 = OUTLINED_FUNCTION_87_3();
          v256(v255);
          v257 = v332;
          (v332)(v283, v241);
          v257(v282, v241);
          (*(v281 + 8))(v280, v284);
        }

        else
        {
          OUTLINED_FUNCTION_3_15();
          v355[6] = swift_getWitnessTable();
          v355[7] = v233;
          OUTLINED_FUNCTION_8_9();
          v268 = swift_getWitnessTable();
          OUTLINED_FUNCTION_2_10();
          v355[4] = swift_getWitnessTable();
          v355[5] = v233;
          v269 = swift_getWitnessTable();
          v355[2] = v268;
          v355[3] = v269;
          OUTLINED_FUNCTION_6_7();
          v270 = swift_getWitnessTable();
          OUTLINED_FUNCTION_1_17();
          v271 = swift_getWitnessTable();
          OUTLINED_FUNCTION_0_15();
          v272 = swift_getWitnessTable();
          v355[0] = v271;
          v355[1] = v272;
          v274 = OUTLINED_FUNCTION_96_0(v231, v273, v355);
          v354[0] = v270;
          v354[1] = v274;
          OUTLINED_FUNCTION_94_0(v231, v275, v354);
          sub_217952FA4();
        }
      }
    }
  }

  __swift_destroy_boxed_opaque_existential_1(v357);
  __swift_destroy_boxed_opaque_existential_1(v356);
  OUTLINED_FUNCTION_3_15();
  v353[14] = swift_getWitnessTable();
  v258 = MEMORY[0x277CE0790];
  v353[15] = MEMORY[0x277CE0790];
  OUTLINED_FUNCTION_8_9();
  v259 = swift_getWitnessTable();
  OUTLINED_FUNCTION_2_10();
  v353[12] = swift_getWitnessTable();
  v353[13] = v258;
  v260 = swift_getWitnessTable();
  v353[10] = v259;
  v353[11] = v260;
  OUTLINED_FUNCTION_6_7();
  v261 = swift_getWitnessTable();
  OUTLINED_FUNCTION_1_17();
  v262 = swift_getWitnessTable();
  OUTLINED_FUNCTION_0_15();
  v263 = swift_getWitnessTable();
  v353[8] = v262;
  v353[9] = v263;
  v264 = swift_getWitnessTable();
  v353[6] = v261;
  v353[7] = v264;
  v353[4] = swift_getWitnessTable();
  v353[5] = MEMORY[0x277CE1410];
  v265 = v324;
  swift_getWitnessTable();
  sub_2179560E4();
  v266 = OUTLINED_FUNCTION_51_4();
  v267(v266, v265);
  OUTLINED_FUNCTION_80();
}