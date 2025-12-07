unint64_t sub_240E7DAC4()
{
  result = qword_27E51B728;
  if (!qword_27E51B728)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E51B6E0, &qword_240E89268);
    sub_240E7DB7C();
    sub_240E6BAE4(&qword_27E51B748, &qword_27E51B6F8, &qword_240E89288, MEMORY[0x277CE04B0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E51B728);
  }

  return result;
}

unint64_t sub_240E7DB7C()
{
  result = qword_27E51B730;
  if (!qword_27E51B730)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E51B6E8, &qword_240E89270);
    sub_240E7DC08();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E51B730);
  }

  return result;
}

unint64_t sub_240E7DC08()
{
  result = qword_27E51B738;
  if (!qword_27E51B738)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E51B740, &qword_240E892B8);
    sub_240E6BAE4(&qword_2815037C8, &qword_27E51B130, &qword_240E879F0, MEMORY[0x277CDF4F0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E51B738);
  }

  return result;
}

unint64_t sub_240E7DCC0()
{
  result = qword_27E51B750;
  if (!qword_27E51B750)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E51B6C8, &qword_240E89250);
    sub_240E7DD78();
    sub_240E6BAE4(&qword_27E51B760, &qword_27E51B720, &qword_240E892B0, MEMORY[0x277CDFC88]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E51B750);
  }

  return result;
}

unint64_t sub_240E7DD78()
{
  result = qword_27E51B758;
  if (!qword_27E51B758)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E51B6F0, &unk_240E89278);
    sub_240E6BAE4(&qword_27E51B748, &qword_27E51B6F8, &qword_240E89288, MEMORY[0x277CE04B0]);
    sub_240E6BAE4(&qword_2815037C8, &qword_27E51B130, &qword_240E879F0, MEMORY[0x277CDF4F0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E51B758);
  }

  return result;
}

unint64_t sub_240E7DE5C()
{
  result = qword_27E51B770;
  if (!qword_27E51B770)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E51B768, &qword_240E892C0);
    v3 = sub_240E6BAE4(&qword_27E51B748, &qword_27E51B6F8, &qword_240E89288, MEMORY[0x277CE04B0]);
    sub_240E7DF14(v3, v1, v2);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E51B770);
  }

  return result;
}

unint64_t sub_240E7DF14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27E51B778;
  if (!qword_27E51B778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E51B778);
  }

  return result;
}

unint64_t sub_240E7DF68()
{
  result = qword_27E51B780;
  if (!qword_27E51B780)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E51B788, &unk_240E892C8);
    sub_240E7DAC4();
    sub_240E7DCC0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E51B780);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_3_4(uint64_t a1, uint64_t a2, uint64_t a3, ...)
{

  return sub_240E86F94();
}

void *sub_240E7E044(void *a1, void *a2)
{
  v3 = [a1 attributesAtIndex:0 effectiveRange:0];
  type metadata accessor for Key(0);
  sub_240E7C050();
  v4 = sub_240E86F34();

  sub_240E6D14C(v4, &v34, *MEMORY[0x277CEE308]);
  if (!v35)
  {
    sub_240E6DFC8(&v34, &qword_27E51B178, "V:");
    goto LABEL_5;
  }

  if (!OUTLINED_FUNCTION_0_0(v5, v6, v7, MEMORY[0x277D83B88], v8, v9, v10, v11, v31, v33, v34))
  {
LABEL_5:
    v12 = 0;
    goto LABEL_6;
  }

  v12 = v31;
LABEL_6:
  v13 = sub_240E75EA0(v12);
  if (v13 != 4 && v13)
  {
    sub_240E6D14C(v4, &v34, *MEMORY[0x277CEE318]);
    if (v35)
    {
      OUTLINED_FUNCTION_0_0(v14, v15, v16, MEMORY[0x277D837D0], v17, v18, v19, v20, v31, v33, v34);
    }

    else
    {
      sub_240E6DFC8(&v34, &qword_27E51B178, "V:");
    }

    sub_240E6D14C(v4, &v34, *MEMORY[0x277CEE310]);

    if (v35)
    {
      if (OUTLINED_FUNCTION_0_0(v21, v22, v23, MEMORY[0x277D83B88], v24, v25, v26, v27, v31, v33, v34))
      {
        v28 = v32;
LABEL_17:
        sub_240E7CE10(v28);
        v29 = a2;
        return a2;
      }
    }

    else
    {
      sub_240E6DFC8(&v34, &qword_27E51B178, "V:");
    }

    v28 = 0;
    goto LABEL_17;
  }

  return 0;
}

uint64_t sub_240E7E250(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 32))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_240E7E290(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

void sub_240E7E2FC(void *a1@<X0>, __int16 a2@<W1>, __n128 *a5@<X8>)
{
  v5 = a2;
  v8 = HIBYTE(a2);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51B0F0, &qword_240E879B0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v43 - v10;
  v12 = 0uLL;
  if (v8 == 2)
  {
    if (a1)
    {
      KeyPath = swift_getKeyPath();
      v44 = a1;
      v45 = 0x3FF0000000000000;
      v46 = v5 << 8;
      v47 = KeyPath;
      v48 = 256;
      sub_240E7E5B0(KeyPath, v39, v40);
      v41 = a1;
      sub_240E869D4();
      v12 = OUTLINED_FUNCTION_1_5();
      if (v36)
      {
        v37 = 0;
      }

      else
      {
        v37 = 256;
      }

      goto LABEL_10;
    }

LABEL_11:
    v42 = -256;
    v35 = 0uLL;
    goto LABEL_12;
  }

  if (v8 != 3)
  {
    goto LABEL_11;
  }

  sub_240E86D64();
  v13 = sub_240E86C44();
  v15 = v14;
  v17 = v16;
  v18 = sub_240E86AB4();
  __swift_storeEnumTagSinglePayload(v11, 1, 1, v18);
  sub_240E86B04();
  sub_240E6DFC8(v11, &qword_27E51B0F0, &qword_240E879B0);
  v19 = sub_240E86C04();
  v21 = v20;
  v23 = v22;

  sub_240E6AE70(v13, v15, v17 & 1);

  v49[0] = sub_240E86CF4();
  v24 = sub_240E86BE4();
  v26 = v25;
  v28 = v27;
  v30 = v29;
  sub_240E6AE70(v19, v21, v23 & 1);

  v44 = v24;
  v45 = v26;
  v46 = v28 & 1;
  v47 = v30;
  v48 = 0;
  sub_240E7E5B0(v31, v32, v33);
  sub_240E869D4();
  v12 = OUTLINED_FUNCTION_1_5();
  if (v36)
  {
    v37 = 0;
  }

  else
  {
    v37 = 256;
  }

LABEL_10:
  v42 = v37 | v34;
LABEL_12:
  *a5 = v12;
  a5[1] = v35;
  a5[2].n128_u16[0] = v42;
}

unint64_t sub_240E7E5B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27E51B790;
  if (!qword_27E51B790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E51B790);
  }

  return result;
}

unint64_t sub_240E7E604()
{
  result = qword_27E51B798;
  if (!qword_27E51B798)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E51B7A0, &qword_240E893D8);
    sub_240E7E688();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E51B798);
  }

  return result;
}

unint64_t sub_240E7E688()
{
  result = qword_27E51B7A8;
  if (!qword_27E51B7A8)
  {
    v1 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E51B7B0, &unk_240E893E0);
    sub_240E7E5B0(v1, v2, v3);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E51B7A8);
  }

  return result;
}

uint64_t sub_240E7E730(uint64_t a1, uint64_t a2)
{
  type metadata accessor for Localizations();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  v4 = sub_240E863F4();

  return v4;
}

uint64_t sub_240E7E80C()
{
  v0 = sub_240E865F4();
  __swift_allocate_value_buffer(v0, qword_27E51CEB0);
  __swift_project_value_buffer(v0, qword_27E51CEB0);
  return sub_240E865E4();
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

uint64_t sub_240E7E8E8(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 48))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_240E7E928(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_240E7E9A0@<X0>(uint64_t a2@<X8>)
{
  *a2 = sub_240E869B4();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51B7B8, &unk_240E894A0);
  return sub_240E7E9F4(v2, a2 + *(v4 + 44));
}

uint64_t sub_240E7E9F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v94 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51B0F0, &qword_240E879B0);
  MEMORY[0x28223BE20](v3 - 8);
  v97 = v87 - v4;
  v5 = sub_240E867B4();
  v6 = v5 - 8;
  MEMORY[0x28223BE20](v5);
  v8 = v87 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51B128, &unk_240E894B0);
  v10 = v9 - 8;
  v11 = MEMORY[0x28223BE20](v9);
  v98 = v87 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v14 = (v87 - v13);
  v15 = *a1;
  v96 = *(a1 + 8);
  v16 = *(a1 + 24);
  v95 = *(a1 + 16);
  v93 = v16;
  v92 = *(a1 + 32);
  v17 = v15;
  v90 = sub_240E86D44();
  v18 = *(a1 + 40);
  v19 = *(v6 + 28);
  LODWORD(v89) = *MEMORY[0x277CE0118];
  v20 = v89;
  v21 = sub_240E86974();
  v88 = *(*(v21 - 8) + 104);
  v88(&v8[v19], v20, v21);
  *v8 = v18;
  *(v8 + 1) = v18;
  v22 = [objc_opt_self() systemGrayColor];
  v23 = sub_240E86D34();
  sub_240E866B4();
  v24 = v14 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51B100, &unk_240E879C0) + 36);
  sub_240E6AD34(v8, v24);
  v25 = v24 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51B108, &unk_240E894C0) + 36);
  v26 = v102;
  *v25 = v101;
  *(v25 + 16) = v26;
  *(v25 + 32) = v103;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51B110, &unk_240E879D0);
  *(v24 + *(v27 + 52)) = v23;
  *(v24 + *(v27 + 56)) = 256;
  v28 = sub_240E86E24();
  v30 = v29;
  sub_240E6AD98(v8);
  v31 = (v24 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51B118, &qword_240E894D0) + 36));
  *v31 = v28;
  v31[1] = v30;
  v32 = sub_240E86E24();
  v34 = v33;
  v35 = (v24 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51B120, &unk_240E879E0) + 36));
  *v35 = v32;
  v35[1] = v34;
  v91 = v14;
  *v14 = v90;
  v36 = v14 + *(v10 + 44);
  v88(&v36[*(v6 + 28)], v89, v21);
  *v36 = v18;
  *(v36 + 1) = v18;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51B130, &qword_240E879F0);
  *&v36[*(v37 + 36)] = 256;
  v105 = v96;
  v106 = v95;
  v87[1] = sub_240E6ADF4(v37, v38, v39);

  v40 = sub_240E86C34();
  v42 = v41;
  LOBYTE(v34) = v43;
  sub_240E86AC4();
  v44 = sub_240E86AB4();
  v45 = v97;
  __swift_storeEnumTagSinglePayload(v97, 1, 1, v44);
  sub_240E86B04();
  sub_240E6DFC8(v45, &qword_27E51B0F0, &qword_240E879B0);
  v46 = sub_240E86C04();
  v48 = v47;
  LOBYTE(v45) = v49;

  sub_240E6AE70(v40, v42, v34 & 1);

  sub_240E86AC4();
  v89 = sub_240E86B54();
  v88 = v50;
  LOBYTE(v34) = v51;
  v90 = v52;
  sub_240E6AE70(v46, v48, v45 & 1);

  LODWORD(v96) = sub_240E86A34();
  sub_240E86684();
  v54 = v53;
  v56 = v55;
  v58 = v57;
  v60 = v59;
  LODWORD(v95) = v34 & 1;
  LOBYTE(__src[0]) = 0;
  v105 = v93;
  v106 = v92;

  v61 = sub_240E86C34();
  v63 = v62;
  LOBYTE(v34) = v64;
  sub_240E86AE4();
  v65 = v97;
  __swift_storeEnumTagSinglePayload(v97, 1, 1, v44);
  sub_240E86B04();
  sub_240E6DFC8(v65, &qword_27E51B0F0, &qword_240E879B0);
  v66 = sub_240E86C04();
  v68 = v67;
  LOBYTE(v42) = v69;

  sub_240E6AE70(v61, v63, v34 & 1);

  sub_240E86AE4();
  v70 = sub_240E86B54();
  v72 = v71;
  LODWORD(v97) = v73;
  v75 = v74;
  sub_240E6AE70(v66, v68, v42 & 1);

  KeyPath = swift_getKeyPath();
  v77 = v91;
  v78 = v98;
  sub_240E7BF78(v91, v98, &qword_27E51B128, &unk_240E894B0);
  v79 = v94;
  sub_240E7BF78(v78, v94, &qword_27E51B128, &unk_240E894B0);
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51B7C0, &qword_240E89508);
  v81 = *(v80 + 48);
  v82 = v89;
  __src[0] = v89;
  v83 = v88;
  __src[1] = v88;
  LOBYTE(__src[2]) = v95;
  *(&__src[2] + 1) = *v100;
  HIDWORD(__src[2]) = *&v100[3];
  v84 = v90;
  __src[3] = v90;
  LOBYTE(__src[4]) = v96;
  *(&__src[4] + 1) = *v99;
  HIDWORD(__src[4]) = *&v99[3];
  __src[5] = v54;
  __src[6] = v56;
  __src[7] = v58;
  __src[8] = v60;
  LOBYTE(__src[9]) = 0;
  memcpy((v79 + v81), __src, 0x49uLL);
  v85 = v79 + *(v80 + 64);
  *v85 = v70;
  *(v85 + 8) = v72;
  LOBYTE(v80) = v97 & 1;
  *(v85 + 16) = v97 & 1;
  *(v85 + 24) = v75;
  *(v85 + 32) = KeyPath;
  *(v85 + 40) = 1;
  sub_240E7BF78(__src, &v105, &qword_27E51B7C8, &qword_240E89510);
  sub_240E6AF9C(v70, v72, v80);

  sub_240E6DFC8(v77, &qword_27E51B128, &unk_240E894B0);
  sub_240E6AE70(v70, v72, v80);

  v105 = v82;
  v106 = v83;
  v107 = v95;
  *v108 = *v100;
  *&v108[3] = *&v100[3];
  v109 = v84;
  v110 = v96;
  *v111 = *v99;
  *&v111[3] = *&v99[3];
  v112 = v54;
  v113 = v56;
  v114 = v58;
  v115 = v60;
  v116 = 0;
  sub_240E6DFC8(&v105, &qword_27E51B7C8, &qword_240E89510);
  return sub_240E6DFC8(v98, &qword_27E51B128, &unk_240E894B0);
}

uint64_t sub_240E7F2E0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_240E86864();
  *a1 = result;
  return result;
}

unint64_t sub_240E7F334()
{
  result = qword_27E51B7D0;
  if (!qword_27E51B7D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E51B7D8, &unk_240E89518);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E51B7D0);
  }

  return result;
}

id sub_240E7F398(uint64_t a1, unint64_t a2, double a3)
{
  v6 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v7 = sub_240E86474();
  v8 = [v6 initWithData:v7 scale:a3];

  sub_240E6B618(a1, a2);
  return v8;
}

id sub_240E7F420(uint64_t a1)
{
  if (a1)
  {
    sub_240E6D0E8(a1, &v42, 0x7469547465656873, 0xEA0000000000656CLL);
    if (v43)
    {
      OUTLINED_FUNCTION_0_0(v2, v3, v4, MEMORY[0x277D837D0], v5, v6, v7, v8, v37, v40, v42);
      goto LABEL_6;
    }
  }

  else
  {
    OUTLINED_FUNCTION_2_2();
  }

  sub_240E6B514(&v42);
  if (!a1)
  {
    OUTLINED_FUNCTION_2_2();
LABEL_10:
    v16 = sub_240E6B514(&v42);
    if (!a1)
    {
      v24 = 0;
      OUTLINED_FUNCTION_2_2();
      v25 = 0xC000000000000000;
      goto LABEL_16;
    }

    goto LABEL_11;
  }

LABEL_6:
  sub_240E6D0E8(a1, &v42, 0x6F6349656C746974, 0xE90000000000006ELL);
  if (!v43)
  {
    goto LABEL_10;
  }

  v16 = OUTLINED_FUNCTION_0_0(v9, v10, v11, MEMORY[0x277CC9318], v12, v13, v14, v15, v37, v40, v42);
  if (v16)
  {
    v24 = v37;
    v25 = v40;
    goto LABEL_12;
  }

LABEL_11:
  v24 = 0;
  v25 = 0xC000000000000000;
LABEL_12:
  OUTLINED_FUNCTION_1_6(v16, v17, v18, v19, v20, v21, v22, v23, v37, v40, v42);
  if (!v43)
  {
LABEL_16:
    sub_240E6B514(&v42);
    goto LABEL_17;
  }

  if (OUTLINED_FUNCTION_0_0(v26, v27, v28, MEMORY[0x277D85048], v29, v30, v31, v32, v38, v41, v42))
  {
    v33 = v39;
    goto LABEL_18;
  }

LABEL_17:
  v33 = 1.0;
LABEL_18:
  sub_240E6B57C();
  sub_240E6B5C0(v24, v25);
  v34 = sub_240E7F398(v24, v25, v33);
  if (!v34)
  {
    v34 = [objc_allocWithZone(MEMORY[0x277D755B8]) init];
  }

  v35 = v34;
  sub_240E6B618(v24, v25);
  return v35;
}

uint64_t sub_240E7F5C8@<X0>(uint64_t a1@<X0>, double *a2@<X8>)
{
  if (!a1)
  {
    OUTLINED_FUNCTION_2_2();
LABEL_6:
    sub_240E6B514(&v55);
    if (!a1)
    {
      v11 = 0;
      OUTLINED_FUNCTION_2_2();
      v12 = 0xE000000000000000;
LABEL_12:
      sub_240E6B514(&v55);
      if (!a1)
      {
        v20 = 0;
        OUTLINED_FUNCTION_2_2();
        v21 = 0xE000000000000000;
LABEL_18:
        v29 = sub_240E6B514(&v55);
        if (!a1)
        {
          v37 = 0;
          OUTLINED_FUNCTION_2_2();
          v38 = 0xC000000000000000;
          goto LABEL_24;
        }

        goto LABEL_19;
      }

      goto LABEL_13;
    }

    goto LABEL_7;
  }

  sub_240E6D0E8(a1, &v55, 0x54747865746E6F63, 0xEC000000656C7469);
  if (!v56)
  {
    goto LABEL_6;
  }

  if (OUTLINED_FUNCTION_0_3(v4, v5, v6, MEMORY[0x277D837D0], v7, v8, v9, v10, v50, v53, v55))
  {
    v11 = v50;
    v12 = v53;
    goto LABEL_8;
  }

LABEL_7:
  v11 = 0;
  v12 = 0xE000000000000000;
LABEL_8:
  sub_240E6D0E8(a1, &v55, 0x6567617373656DLL, 0xE700000000000000);
  if (!v56)
  {
    goto LABEL_12;
  }

  if (OUTLINED_FUNCTION_0_3(v13, v14, v15, MEMORY[0x277D837D0], v16, v17, v18, v19, v50, v53, v55))
  {
    v20 = v50;
    v21 = v53;
    goto LABEL_14;
  }

LABEL_13:
  v20 = 0;
  v21 = 0xE000000000000000;
LABEL_14:
  sub_240E6D0E8(a1, &v55, 0x49747865746E6F63, 0xEB000000006E6F63);
  if (!v56)
  {
    goto LABEL_18;
  }

  v29 = OUTLINED_FUNCTION_0_3(v22, v23, v24, MEMORY[0x277CC9318], v25, v26, v27, v28, v50, v53, v55);
  if (v29)
  {
    v37 = v50;
    v38 = v53;
    goto LABEL_20;
  }

LABEL_19:
  v37 = 0;
  v38 = 0xC000000000000000;
LABEL_20:
  OUTLINED_FUNCTION_1_6(v29, v30, v31, v32, v33, v34, v35, v36, v50, v53, v55);
  if (!v56)
  {
LABEL_24:
    sub_240E6B514(&v55);
    goto LABEL_25;
  }

  if (OUTLINED_FUNCTION_0_3(v39, v40, v41, MEMORY[0x277D85048], v42, v43, v44, v45, v51, v54, v55))
  {
    v46 = v52;
    goto LABEL_26;
  }

LABEL_25:
  v46 = 1.0;
LABEL_26:
  sub_240E6B57C();
  sub_240E6B5C0(v37, v38);
  v47 = sub_240E7F398(v37, v38, v46);
  if (!v47)
  {
    v47 = [objc_allocWithZone(MEMORY[0x277D755B8]) init];
  }

  v48 = v47;
  result = sub_240E6B618(v37, v38);
  *a2 = v48;
  *(a2 + 1) = v11;
  *(a2 + 2) = v12;
  *(a2 + 3) = v20;
  *(a2 + 4) = v21;
  return result;
}

uint64_t OUTLINED_FUNCTION_0_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11)
{

  return swift_dynamicCast();
}

double OUTLINED_FUNCTION_1_6(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, __int128 a11)
{

  return sub_240E6D0E8(v11, &a11, 0x63536E6565726373, 0xEB00000000656C61);
}

uint64_t sub_240E7F86C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 24))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 16);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_240E7F8AC(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

uint64_t sub_240E7F8FC(void *a1)
{
  *&v26 = sub_240E86F74();
  *(&v26 + 1) = v2;
  v3 = [a1 __swift_objectForKeyedSubscript_];
  v4 = swift_unknownObjectRelease();
  if (v3)
  {
    sub_240E87114();
    v4 = swift_unknownObjectRelease();
  }

  else
  {
    v26 = 0u;
    v28 = 0u;
  }

  v29 = v26;
  v30 = v28;
  if (*(&v28 + 1))
  {
    if (OUTLINED_FUNCTION_0_4(v4, v5, v6, MEMORY[0x277D837D0], v7, v8, v9, v10, v23, v25, v26, *(&v26 + 1), v28, *(&v28 + 1), v29))
    {
      sub_240E7FD2C(v23, v25);
    }
  }

  else
  {
    sub_240E6B514(&v29);
  }

  *&v27 = sub_240E86F74();
  *(&v27 + 1) = v11;
  v12 = [a1 __swift_objectForKeyedSubscript_];
  swift_unknownObjectRelease();
  if (v12)
  {
    sub_240E87114();
    swift_unknownObjectRelease();
  }

  else
  {
    v27 = 0u;
    v28 = 0u;
  }

  v29 = v27;
  v30 = v28;
  if (!*(&v28 + 1))
  {
    sub_240E6B514(&v29);
    goto LABEL_15;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51B5C0, &qword_240E88D68);
  if ((OUTLINED_FUNCTION_0_4(v13, v14, v15, v13, v16, v17, v18, v19, v23, v25, v27, *(&v27 + 1), v28, *(&v28 + 1), v29) & 1) == 0)
  {
LABEL_15:
    v20 = MEMORY[0x277D84F98];
    goto LABEL_16;
  }

  v20 = v24;

LABEL_16:
  v21 = sub_240E7FE4C(v20);

  return v21;
}

unint64_t sub_240E7FADC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_240E86554();
  MEMORY[0x28223BE20](v4 - 8);
  v5 = sub_240E86F74();
  sub_240E6D0E8(a3, &v12, v5, v6);

  if (!v13)
  {
    sub_240E6B514(&v12);
    return 0;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  v7 = sub_240E7CE10(v11);
  if (v7 == 8)
  {
    return 0;
  }

  v8 = v7;
  if (qword_27E51B0B0 != -1)
  {
    swift_once();
  }

  v9 = sub_240E865F4();
  __swift_project_value_buffer(v9, qword_27E51CEB0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51B1E8, &unk_240E87DC0);
  sub_240E865A4();
  *(swift_allocObject() + 16) = xmmword_240E88060;
  sub_240E86544();
  sub_240E86534();
  v13 = &type metadata for IconAdornmentStyle;
  LOBYTE(v12) = v8;
  sub_240E86524();
  sub_240E6B514(&v12);
  sub_240E86534();
  sub_240E86564();
  sub_240E865B4();

  return v8;
}

unint64_t sub_240E7FD2C(uint64_t a1, uint64_t a2)
{
  v2 = sub_240E87184();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_240E7FD78(char a1)
{
  if (!a1)
  {
    return 0xD000000000000032;
  }

  if (a1 == 1)
  {
    return 0xD00000000000002BLL;
  }

  return 0xD000000000000033;
}

unint64_t sub_240E7FDF0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_240E7FD2C(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_240E7FE20@<X0>(unint64_t *a1@<X8>)
{
  result = sub_240E7FD78(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_240E7FE4C(uint64_t a1)
{
  v2 = sub_240E86F74();
  sub_240E6D0E8(a1, &v11, v2, v3);

  if (!v12)
  {
    sub_240E6B514(&v11);
    goto LABEL_8;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_8:
    if (qword_27E51B0B0 != -1)
    {
      swift_once();
    }

    v6 = sub_240E865F4();
    __swift_project_value_buffer(v6, qword_27E51CEB0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51B1E8, &unk_240E87DC0);
    sub_240E865A4();
    *(swift_allocObject() + 16) = xmmword_240E87DB0;
    sub_240E86574();
    v12 = MEMORY[0x277D837D0];
    *&v11 = 0xD000000000000041;
    *(&v11 + 1) = 0x8000000240E8A4A0;
    sub_240E86584();
    sub_240E6B514(&v11);
    sub_240E865C4();

    return 0;
  }

  sub_240E74D28(0, &qword_281503750, 0x277CCAAC8);
  sub_240E74D28(0, &qword_27E51B7E0, 0x277CEE618);
  v4 = sub_240E870B4();
  v7 = v4;
  if (v4)
  {
    sub_240E6B618(v9, v10);
    return v7;
  }

  if (qword_27E51B0B0 != -1)
  {
    swift_once();
  }

  v5 = sub_240E865F4();
  __swift_project_value_buffer(v5, qword_27E51CEB0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51B1E8, &unk_240E87DC0);
  sub_240E865A4();
  *(swift_allocObject() + 16) = xmmword_240E87DB0;
  sub_240E86574();
  v12 = MEMORY[0x277D837D0];
  *&v11 = 0xD00000000000002CLL;
  *(&v11 + 1) = 0x8000000240E8A4F0;
  sub_240E86584();
  sub_240E6B514(&v11);
  sub_240E865C4();

  sub_240E6B618(v9, v10);
  return 0;
}

uint64_t sub_240E80204(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_240E86F74();
  sub_240E6D0E8(a3, &v9, v4, v5);

  if (!v10)
  {
    sub_240E6B514(&v9);
    goto LABEL_6;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_6:
    LOBYTE(v6) = 0;
    return v6 & 1;
  }

  v6 = 0x3C6u >> v8;
  if (v8 >= 0xA)
  {
    LOBYTE(v6) = 0;
  }

  return v6 & 1;
}

uint64_t getEnumTagSinglePayload for PaymentRequestLayoutStyle(unsigned __int8 *a1, unsigned int a2)
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

_BYTE *storeEnumTagSinglePayload for PaymentRequestLayoutStyle(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_240E80414(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27E51B7E8;
  if (!qword_27E51B7E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E51B7E8);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_0_4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{

  return swift_dynamicCast();
}

__n128 __swift_memcpy33_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_240E804A8(uint64_t *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 33))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_240E804FC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

double sub_240E80580()
{
  v1 = sub_240E868C4();
  OUTLINED_FUNCTION_3_1();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  v6 = v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v0 + 32);
  v7 = *(v0 + 24);
  v11 = v7;
  if (v12 == 1)
  {
    return v7;
  }

  sub_240E870A4();
  v9 = sub_240E86A24();
  sub_240E86624();

  sub_240E868B4();
  swift_getAtKeyPath();
  sub_240E80A30(&v11);
  (*(v3 + 8))(v6, v1);
  return *&v10[1];
}

void *sub_240E806C8@<X0>(void *a1@<X8>)
{
  v3 = sub_240E86D74();
  OUTLINED_FUNCTION_3_1();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  v8 = &v19[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v9 = *v1;
  if (*v1)
  {
    if (*(v1 + 16))
    {
      v10 = v9;
      sub_240E80580();
    }

    else
    {
      v11 = v9;
    }

    v12 = v9;
    sub_240E86D54();
    (*(v5 + 104))(v8, *MEMORY[0x277CE0FE0], v3);
    v13 = sub_240E86D94();

    (*(v5 + 8))(v8, v3);
    v14 = *(v1 + 17);
    v15 = sub_240E809A8();
    if (qword_27E51B0A8 != -1)
    {
      swift_once();
    }

    v16 = qword_27E51B2E0;
    v21 = 1;

    sub_240E809A8();
    sub_240E86E24();
    sub_240E867C4();

    v20[0] = v13;
    v20[1] = 0;
    LOWORD(v20[2]) = 1;
    v20[3] = v16;
    v20[4] = 0x3FE0000000000000;
    LOBYTE(v20[5]) = v14;
    *&v20[6] = v15;
    v20[7] = 0x404B000000000000;
    memcpy(&v20[8], v19, 0x70uLL);
    LOBYTE(v20[22]) = 1;
    nullsub_1();
    memcpy(v22, v20, 0xB1uLL);
  }

  else
  {
    sub_240E80A28(v22);
  }

  return memcpy(a1, v22, 0xB1uLL);
}

double sub_240E809A8()
{
  if (!*v0)
  {
    return 54.0;
  }

  v1 = *(v0 + 17);
  v2 = *v0;
  Width = CGImageGetWidth(v2);
  Height = CGImageGetHeight(v2);

  v5 = v1 == 2 && Height < Width;
  result = 54.0;
  if (v5)
  {
    return 72.0;
  }

  return result;
}

uint64_t sub_240E80A30(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51B7F0, &qword_240E897B8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_240E80A98()
{
  result = qword_27E51B7F8;
  if (!qword_27E51B7F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E51B800, &qword_240E897C0);
    sub_240E80B1C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E51B7F8);
  }

  return result;
}

unint64_t sub_240E80B1C()
{
  result = qword_27E51B808;
  if (!qword_27E51B808)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E51B810, &qword_240E897C8);
    v3 = sub_240E80BA8();
    sub_240E80D14(v3, v1, v2);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E51B808);
  }

  return result;
}

unint64_t sub_240E80BA8()
{
  result = qword_27E51B818;
  if (!qword_27E51B818)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E51B820, &qword_240E897D0);
    sub_240E80C34();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E51B818);
  }

  return result;
}

unint64_t sub_240E80C34()
{
  result = qword_27E51B828;
  if (!qword_27E51B828)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E51B830, &qword_240E897D8);
    v3 = sub_240E6DF44();
    sub_240E80CC0(v3, v1, v2);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E51B828);
  }

  return result;
}

unint64_t sub_240E80CC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27E51B838;
  if (!qword_27E51B838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E51B838);
  }

  return result;
}

unint64_t sub_240E80D14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27E51B840;
  if (!qword_27E51B840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E51B840);
  }

  return result;
}

uint64_t sub_240E80D68@<X0>(void *a1@<X0>, int a2@<W1>, int a3@<W2>, _BYTE *a4@<X8>)
{
  v62 = a3;
  v63 = a2;
  v64 = a4;
  v4 = a1;
  v5 = [v4 label];
  v78 = MEMORY[0x277D84F90];
  [v5 length];
  OUTLINED_FUNCTION_7_1();
  v6 = swift_allocObject();
  *(v6 + 16) = &v78;
  *(v6 + 24) = v5;
  OUTLINED_FUNCTION_7_1();
  v7 = swift_allocObject();
  v7[2] = sub_240E82EC8;
  v7[3] = v6;
  v61 = v6;
  *&v77 = sub_240E82ED0;
  *(&v77 + 1) = v7;
  *&aBlock = MEMORY[0x277D85DD0];
  *(&aBlock + 1) = 1107296256;
  *&v76 = sub_240E814CC;
  *(&v76 + 1) = &block_descriptor_2;
  v8 = _Block_copy(&aBlock);
  v9 = v5;

  v65 = v9;
  OUTLINED_FUNCTION_6_1(v9, sel_enumerateAttributesInRange_options_usingBlock_);
  _Block_release(v8);
  LOBYTE(v9) = swift_isEscapingClosureAtFileLocation();

  if (v9)
  {
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    v51 = OUTLINED_FUNCTION_4_3();
    sub_240E73EA4(v51, v52, v53, v4);
    v4 = v54;
    goto LABEL_21;
  }

  v73 = 0;
  v74 = 1;
  v7 = [v4 label];
  v10 = swift_allocObject();
  *(v10 + 16) = &v73;
  OUTLINED_FUNCTION_7_1();
  v11 = swift_allocObject();
  *(v11 + 16) = sub_240E82F10;
  *(v11 + 24) = v10;
  *&v77 = sub_240E83B90;
  *(&v77 + 1) = v11;
  *&aBlock = MEMORY[0x277D85DD0];
  *(&aBlock + 1) = 1107296256;
  *&v76 = sub_240E814CC;
  *(&v76 + 1) = &block_descriptor_13;
  v12 = _Block_copy(&aBlock);

  OUTLINED_FUNCTION_6_1(v7, sel_enumerateAttributesInRange_options_usingBlock_);

  _Block_release(v12);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    goto LABEL_28;
  }

  v59 = v10;
  v58 = [v4 image];
  v60 = v4;

  v57 = v73;
  v14 = v74;
  KeyPath = swift_getKeyPath();
  v80 = v14;
  v79 = 0;
  v15 = *(v78 + 16);
  v66 = v78 + 32;
  v67 = v78;

  v16 = 0;
  v7 = MEMORY[0x277D84F90];
  v4 = MEMORY[0x277D84F90];
  while (1)
  {
    v17 = 0uLL;
    v18 = v15;
    v19 = 0uLL;
    v20 = 0uLL;
    if (v16 != v15)
    {
      if (v16 >= *(v67 + 16))
      {
        __break(1u);
        goto LABEL_27;
      }

      v18 = v16 + 1;
      *&v71[0] = v16;
      sub_240E74C7C(v66 + 40 * v16, v71 + 8);
      v17 = v71[0];
      v19 = v71[1];
      v20 = v71[2];
    }

    aBlock = v17;
    v76 = v19;
    v77 = v20;
    if (!v20)
    {
      break;
    }

    sub_240E74B14((&aBlock + 8), v71);
    sub_240E74C7C(v71, v68);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51B348, &qword_240E89810);
    if (swift_dynamicCast())
    {

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v32 = OUTLINED_FUNCTION_4_3();
        sub_240E73EA4(v32, v33, v34, v4);
        v4 = v35;
      }

      v22 = v4[2];
      v21 = v4[3];
      if (v22 >= v21 >> 1)
      {
        sub_240E73EA4(v21 > 1, v22 + 1, 1, v4);
        v4 = v36;
      }

      v4[2] = v22 + 1;
      v4[v22 + 4] = v7;
      __swift_destroy_boxed_opaque_existential_0Tm(v71);
      v16 = v18;
      v7 = MEMORY[0x277D84F90];
    }

    else
    {
      sub_240E74C7C(v71, v68);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v72 = v7;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v37 = OUTLINED_FUNCTION_4_3();
        sub_240E73D7C(v37, v38, v39, v7);
        v7 = v40;
        v72 = v40;
      }

      v25 = v7[2];
      v24 = v7[3];
      if (v25 >= v24 >> 1)
      {
        sub_240E73D7C(v24 > 1, v25 + 1, 1, v7);
        v7 = v41;
        v72 = v41;
      }

      __swift_destroy_boxed_opaque_existential_0Tm(v71);
      v26 = v69;
      v27 = v70;
      v28 = __swift_mutable_project_boxed_opaque_existential_1(v68, v69);
      MEMORY[0x28223BE20](v28);
      v30 = &KeyPath - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v31 + 16))(v30);
      sub_240E831C4(v25, v30, &v72, v26, v27);
      __swift_destroy_boxed_opaque_existential_0Tm(v68);
      v16 = v18;
    }
  }

  if (!v7[2])
  {

    goto LABEL_25;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_29;
  }

LABEL_21:
  v43 = v4[2];
  v42 = v4[3];
  if (v43 >= v42 >> 1)
  {
    sub_240E73EA4(v42 > 1, v43 + 1, 1, v4);
    v4 = v55;
  }

  v4[2] = v43 + 1;
  v4[v43 + 4] = v7;
LABEL_25:
  v44 = v62 & 1;

  v46 = v80;
  v47 = v79;
  v48 = v64;
  v49 = v63;
  *v64 = v63;
  *(v48 + 1) = v60;
  v48[16] = v44;
  v50 = v57;
  *(v48 + 3) = v58;
  *(v48 + 4) = v50;
  v48[40] = v46;
  v48[41] = v49;
  *(v48 + 6) = KeyPath;
  v48[56] = v47;
  *(v48 + 8) = v4;
  return result;
}

uint64_t sub_240E814CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = *(a1 + 32);
  type metadata accessor for Key(0);
  sub_240E7C050();
  v9 = sub_240E86F34();
  v8(v9, a3, a4, a5);
}

uint64_t sub_240E8156C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, void *a6)
{
  sub_240E6D14C(a1, &v83, *MEMORY[0x277CEE2E0]);
  if (v85)
  {
    if (swift_dynamicCast())
    {
      v11 = v81;
      goto LABEL_6;
    }
  }

  else
  {
    sub_240E6AFAC(&v83, &qword_27E51B178, "V:");
  }

  v11 = 0;
LABEL_6:
  sub_240E6D14C(a1, &v83, *MEMORY[0x277CEE2C8]);
  if (!v85)
  {
LABEL_15:
    sub_240E6AFAC(&v83, &qword_27E51B178, "V:");
    goto LABEL_16;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51B5C0, &qword_240E88D68);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_16;
  }

  v12 = sub_240E86F74();
  sub_240E6D0E8(v81, &v83, v12, v13);

  if (!v85)
  {

    goto LABEL_15;
  }

  if (swift_dynamicCast())
  {
    v14 = sub_240E86F74();
    sub_240E6D0E8(v81, &v83, v14, v15);

    if (v85)
    {
      if (swift_dynamicCast())
      {
        sub_240E6B5C0(v81, v82);
        v16 = sub_240E73374(*&v81);
        if (v16)
        {
          goto LABEL_19;
        }
      }

      sub_240E6B618(v81, v82);
    }

    else
    {
      sub_240E6B618(v81, v82);
      sub_240E6AFAC(&v83, &qword_27E51B178, "V:");
    }
  }

  else
  {
  }

LABEL_16:
  sub_240E6D14C(a1, &v83, *MEMORY[0x277CEE2D0]);
  if (v85)
  {
    if (swift_dynamicCast())
    {
      sub_240E6B5C0(v81, v82);
      v16 = sub_240E7319C();
      if (v16)
      {
LABEL_19:
        v17 = v16;
        sub_240E82E3C();
        v18 = *(*a5 + 16);
        sub_240E82E88(v18);
        sub_240E6B618(v81, v82);
        return sub_240E82F18(v18, v17, a5);
      }

      sub_240E6B618(v81, v82);
    }
  }

  else
  {
    sub_240E6AFAC(&v83, &qword_27E51B178, "V:");
  }

  sub_240E6D14C(a1, &v83, *MEMORY[0x277CEE378]);
  if (v85)
  {
    if (swift_dynamicCast())
    {
      KeyPath = swift_getKeyPath();
      v21 = swift_getKeyPath();
      sub_240E82E3C();
      v22 = *(*a5 + 16);
      sub_240E82E88(v22);
      *&v83 = KeyPath;
      BYTE8(v83) = 0;
      v84 = v21;
      LOBYTE(v85) = 0;
      BYTE1(v85) = v11;
      v86 = v81;
      v87 = v82;
      return sub_240E82F88(v22, &v83, a5);
    }
  }

  else
  {
    sub_240E6AFAC(&v83, &qword_27E51B178, "V:");
  }

  sub_240E6D14C(a1, &v83, *MEMORY[0x277CEE320]);
  if (v85)
  {
    if (swift_dynamicCast())
    {
      v23 = sub_240E73548(v81, v82, 1633775725, 0xE400000000000000);
      if (v24)
      {
        v27 = v23;
        v28 = v24;
        v29 = v25;
        v30 = v26;
        sub_240E82E3C();
        v31 = *(*a5 + 16);
        sub_240E82E88(v31);
        v32 = v31;
        v33 = v27;
        v34 = v28;
        v35 = v29;
        v36 = v30;
        return sub_240E8301C(v32, v33, v34, v35, v36, a5);
      }
    }
  }

  else
  {
    sub_240E6AFAC(&v83, &qword_27E51B178, "V:");
  }

  sub_240E6D14C(a1, &v83, *MEMORY[0x277CEE328]);
  if (!v85)
  {
    goto LABEL_46;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51B5C0, &qword_240E88D68);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_47;
  }

  v37 = sub_240E86F74();
  sub_240E6D0E8(v81, &v83, v37, v38);

  if (!v85)
  {
    goto LABEL_45;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_65;
  }

  v39 = sub_240E86F74();
  sub_240E6D0E8(v81, &v83, v39, v40);

  if (!v85)
  {
LABEL_45:

LABEL_46:
    sub_240E6AFAC(&v83, &qword_27E51B178, "V:");
    goto LABEL_47;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_65:

    goto LABEL_47;
  }

  v41 = sub_240E73548(v81, v82, v81, v82);
  if (v42)
  {
    v45 = v41;
    v46 = v42;
    v47 = v43;
    v48 = v44;
    sub_240E82E3C();
    v49 = *(*a5 + 16);
    sub_240E82E88(v49);
    v32 = v49;
    v33 = v45;
    v34 = v46;
    v35 = v47;
    v36 = v48;
    return sub_240E8301C(v32, v33, v34, v35, v36, a5);
  }

LABEL_47:
  if (a3 == 1)
  {
    v50 = [a6 attributedSubstringFromRange_];
    v51 = [v50 string];

    v52 = sub_240E86F74();
    v54 = v53;

    if (v52 == 10 && v54 == 0xE100000000000000)
    {
    }

    else
    {
      v56 = sub_240E871A4();

      if ((v56 & 1) == 0)
      {
        goto LABEL_53;
      }
    }

    v71 = [a6 attributedSubstringFromRange_];
    v72 = [v71 string];

    v73 = sub_240E86F74();
    v75 = v74;

    sub_240E82E3C();
    v76 = *(*a5 + 16);
    sub_240E82E88(v76);
    v77 = v76;
    v78 = v73;
    v79 = v75;
    return sub_240E830BC(v77, v78, v79, a5);
  }

LABEL_53:
  v57 = [a6 attributedSubstringFromRange_];
  v58 = swift_getKeyPath();
  v59 = swift_getKeyPath();
  v60 = v57;

  sub_240E82E3C();
  v61 = *(*a5 + 16);
  sub_240E82E88(v61);
  *&v83 = v58;
  BYTE8(v83) = 0;
  v84 = v59;
  LOBYTE(v85) = 0;
  v86 = v60;
  sub_240E83130(v61, &v83, a5);
  v62 = [v60 string];
  v63 = sub_240E86F74();
  v65 = v64;

  v66 = sub_240E81E4C(v63, v65);
  v68 = v67;

  if (!v68)
  {
LABEL_59:
  }

  if (v66 == 10 && v68 == 0xE100000000000000)
  {
  }

  else
  {
    v70 = sub_240E871A4();

    if ((v70 & 1) == 0)
    {
      goto LABEL_59;
    }
  }

  sub_240E82E3C();
  v80 = *(*a5 + 16);
  sub_240E82E88(v80);

  v77 = v80;
  v78 = 10;
  v79 = 0xE100000000000000;
  return sub_240E830BC(v77, v78, v79, a5);
}

uint64_t sub_240E81E4C(uint64_t a1, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v2)
  {
    return 0;
  }

  sub_240E86FB4();
  return sub_240E87004();
}

uint64_t sub_240E81ECC(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (*(result + 16))
  {
    v6 = result;
    result = sub_240E6DCA0(*MEMORY[0x277CEE2C8]);
    if (v7)
    {
      sub_240E6DC44(*(v6 + 56) + 32 * result, &v11);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51B5C0, &qword_240E88D68);
      result = swift_dynamicCast();
      if (result)
      {
        v8 = sub_240E86F74();
        sub_240E6D0E8(v10, &v11, v8, v9);

        if (v12)
        {
          result = swift_dynamicCast();
          if (result)
          {
            *a5 = v10;
            *(a5 + 8) = 0;
          }
        }

        else
        {
          return sub_240E6AFAC(&v11, &qword_27E51B178, "V:");
        }
      }
    }
  }

  return result;
}

uint64_t sub_240E81FE8@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v44 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51B8C8, &qword_240E89998);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v38[-v4];
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51B900, &qword_240E899F0);
  v6 = MEMORY[0x28223BE20](v41);
  v43 = &v38[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v38[-v9];
  MEMORY[0x28223BE20](v8);
  v42 = &v38[-v11];
  v12 = sub_240E86A84();
  v13 = sub_240E86A74();
  sub_240E86A74();
  if (sub_240E86A74() != v12)
  {
    v13 = sub_240E86A74();
  }

  v39 = v13;
  v40 = *(a1 + 24);
  v14 = v40;
  *v58 = *(a1 + 32);
  *&v58[9] = *(a1 + 41);
  sub_240E86684();
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v61[0] = v14;
  v59 = *&v58[16];
  v60 = v58[24];
  v54[119] = 0;
  sub_240E83950(v61, &v46, &qword_27E51B8F8, &unk_240E899E0);
  sub_240E83950(&v59, &v46, &qword_27E51B7F0, &qword_240E897B8);
  sub_240E86E24();
  sub_240E867C4();
  memcpy(&v55[7], v56, 0x70uLL);
  *v5 = sub_240E869C4();
  *(v5 + 1) = 0;
  v5[16] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51B8D0, &qword_240E899A0);
  v45[0] = sub_240E7C0A8(*(a1 + 64));
  KeyPath = swift_getKeyPath();
  v24 = swift_allocObject();
  memcpy((v24 + 16), a1, 0x48uLL);
  v25 = swift_allocObject();
  *(v25 + 16) = sub_240E83B98;
  *(v25 + 24) = v24;
  sub_240E83788(a1, &v46);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51B8D8, &qword_240E899C8);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51B8E0, &qword_240E899D0);
  v28 = sub_240E6BAE4(&qword_281503760, &qword_27E51B8D8, &qword_240E899C8, MEMORY[0x277D83980]);
  v29 = sub_240E837C0();
  sub_240E86DF4(v45, KeyPath, sub_240E83B94, v25, v26, v27, v28, MEMORY[0x277D83B98], v29);
  sub_240E86E24();
  sub_240E867C4();
  sub_240E83900(v5, v10, &qword_27E51B8C8, &qword_240E89998);
  memcpy(&v10[*(v41 + 36)], v57, 0x70uLL);
  v30 = v10;
  v31 = v42;
  sub_240E83900(v30, v42, &qword_27E51B900, &qword_240E899F0);
  v32 = v43;
  sub_240E83950(v31, v43, &qword_27E51B900, &qword_240E899F0);
  v33 = v40;
  v45[0] = v40;
  *&v45[1] = *v58;
  *(&v45[2] + 1) = *&v58[9];
  v34 = v39;
  LOBYTE(v45[5]) = v39;
  v45[6] = v16;
  v45[7] = v18;
  v45[8] = v20;
  v45[9] = v22;
  LOBYTE(v45[10]) = 0;
  memcpy(&v45[10] + 1, v55, 0x77uLL);
  v35 = v44;
  memcpy(v44, v45, 0xC8uLL);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51B908, &qword_240E899F8);
  sub_240E83950(v32, v35 + *(v36 + 48), &qword_27E51B900, &qword_240E899F0);
  sub_240E83950(v45, &v46, &qword_27E51B910, &qword_240E89A00);
  sub_240E6AFAC(v31, &qword_27E51B900, &qword_240E899F0);
  sub_240E6AFAC(v32, &qword_27E51B900, &qword_240E899F0);
  v46 = v33;
  v47[0] = *v58;
  *(v47 + 9) = *&v58[9];
  v48 = v34;
  v49 = v16;
  v50 = v18;
  v51 = v20;
  v52 = v22;
  v53 = 0;
  memcpy(v54, v55, 0x77uLL);
  return sub_240E6AFAC(&v46, &qword_27E51B910, &qword_240E89A00);
}

uint64_t sub_240E82580@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  if (*(a3 + 16))
  {
    sub_240E86E24();
  }

  else
  {
    sub_240E86E34();
  }

  sub_240E867C4();
  *a4 = a2;
  memcpy(a4 + 1, __src, 0x70uLL);
}

uint64_t sub_240E82628@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51B8C8, &qword_240E89998);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v23 - v8;
  v10 = *(a1 + 24);
  v28 = *(a1 + 32);
  v11 = *(a1 + 40);
  v29 = *(a1 + 41);
  v12 = *(a1 + 48);
  v26 = *(a1 + 56);
  v27 = v11;
  *v9 = sub_240E869C4();
  *(v9 + 1) = 0;
  v9[16] = 0;
  v25 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51B8D0, &qword_240E899A0) + 44);
  v30[0] = sub_240E7C0A8(*(a1 + 64));
  KeyPath = swift_getKeyPath();
  v13 = swift_allocObject();
  memcpy((v13 + 16), a1, 0x48uLL);
  v14 = swift_allocObject();
  *(v14 + 16) = sub_240E83750;
  *(v14 + 24) = v13;
  sub_240E83788(a1, &v31);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51B8D8, &qword_240E899C8);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51B8E0, &qword_240E899D0);
  v17 = sub_240E6BAE4(&qword_281503760, &qword_27E51B8D8, &qword_240E899C8, MEMORY[0x277D83980]);
  v18 = sub_240E837C0();
  sub_240E86DF4(v30, KeyPath, sub_240E83758, v14, v15, v16, v17, MEMORY[0x277D83B98], v18);
  v33 = v10;
  v31 = v12;
  LOBYTE(v16) = v26;
  v32 = v26;
  sub_240E83950(v9, v7, &qword_27E51B8C8, &qword_240E89998);
  v19 = v28;
  *a2 = v10;
  *(a2 + 8) = v19;
  *(a2 + 16) = v27 & 1;
  *(a2 + 17) = v29;
  *(a2 + 24) = v12;
  *(a2 + 32) = v16 & 1;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51B8F0, &qword_240E899D8);
  sub_240E83950(v7, a2 + *(v20 + 48), &qword_27E51B8C8, &qword_240E89998);
  sub_240E83950(&v33, v30, &qword_27E51B8F8, &unk_240E899E0);
  sub_240E83950(&v31, v30, &qword_27E51B7F0, &qword_240E897B8);
  v21 = v10;
  sub_240E838A0(v12, v16 & 1);
  sub_240E6AFAC(v9, &qword_27E51B8C8, &qword_240E89998);
  sub_240E6AFAC(v7, &qword_27E51B8C8, &qword_240E89998);

  return sub_240E83744(v12, v16 & 1);
}

uint64_t sub_240E8295C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v50 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51B860, &qword_240E89958);
  OUTLINED_FUNCTION_3_2();
  MEMORY[0x28223BE20](v3);
  v5 = v48 - v4;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51B868, &qword_240E89960);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_3_2();
  MEMORY[0x28223BE20](v6);
  v8 = v48 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51B870, &qword_240E89968);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_3_2();
  MEMORY[0x28223BE20](v10);
  v12 = v48 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51B878, &qword_240E89970);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_3_2();
  MEMORY[0x28223BE20](v14);
  v16 = v48 - v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51B880, &qword_240E89978);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_3_2();
  MEMORY[0x28223BE20](v17);
  v19 = v48 - v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51B888, &qword_240E89980);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_3_2();
  v21 = MEMORY[0x28223BE20](v20);
  v23 = v48 - v22;
  if (*(v2 + 16) == 1)
  {
    *v23 = sub_240E869B4();
    *(v23 + 1) = 0;
    v23[16] = 1;
    v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51B8C0, &qword_240E89990);
    sub_240E82628(v2, &v23[*(v24 + 44)]);
    v25 = &qword_27E51B888;
    v26 = &qword_240E89980;
    sub_240E83950(v23, v19, &qword_27E51B888, &qword_240E89980);
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_1_7();
    sub_240E6BAE4(v27, &qword_27E51B888, &qword_240E89980, v28);
    sub_240E83574();
    sub_240E869D4();
    v29 = v23;
  }

  else
  {
    v48[1] = v21;
    if (*(*(v2 + 64) + 16) == 1)
    {
      v30 = sub_240E86904();
    }

    else
    {
      v30 = sub_240E868F4();
    }

    *v5 = v30;
    *(v5 + 1) = 0;
    v5[16] = 0;
    v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51B890, &qword_240E89988);
    sub_240E81FE8(v2, &v5[*(v31 + 44)]);
    sub_240E83900(v5, v8, &qword_27E51B860, &qword_240E89958);
    *&v8[*(v49 + 36)] = 256;
    sub_240E83900(v8, v12, &qword_27E51B868, &qword_240E89960);
    v32 = &v12[*(v9 + 36)];
    *v32 = 0;
    *(v32 + 4) = 1;
    v33 = sub_240E86A34();
    sub_240E86684();
    v35 = v34;
    v37 = v36;
    v39 = v38;
    v41 = v40;
    sub_240E83900(v12, v16, &qword_27E51B870, &qword_240E89968);
    v42 = &v16[*(v13 + 36)];
    *v42 = v33;
    *(v42 + 1) = v35;
    *(v42 + 2) = v37;
    *(v42 + 3) = v39;
    *(v42 + 4) = v41;
    v42[40] = 0;
    v25 = &qword_27E51B878;
    v26 = &qword_240E89970;
    sub_240E83950(v16, v19, &qword_27E51B878, &qword_240E89970);
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_1_7();
    sub_240E6BAE4(v43, v44, v45, v46);
    sub_240E83574();
    sub_240E869D4();
    v29 = v16;
  }

  return sub_240E6AFAC(v29, v25, v26);
}

void sub_240E82E3C()
{
  v1 = *v0;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v0 = v1;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_240E73D7C(0, v1[2] + 1, 1, v1);
    *v0 = v3;
  }
}

void sub_240E82E88(uint64_t result)
{
  v2 = (*v1)[3];
  if (result + 1 > (v2 >> 1))
  {
    sub_240E73D7C(v2 > 1, result + 1, 1, *v1);
    *v1 = v3;
  }
}

double block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_240E82F18(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v9 = &type metadata for ImageRowComponent;
  v10 = sub_240E8330C(a1, a2, a3);
  *&v8 = a2;
  v6 = *a3;
  *(v6 + 16) = a1 + 1;
  return sub_240E74B14(&v8, v6 + 40 * a1 + 32);
}

uint64_t sub_240E82F88(uint64_t a1, _OWORD *a2, uint64_t *a3)
{
  v11 = &type metadata for TextEncapsulationRowComponent;
  v12 = sub_240E83360(a1, a2, a3);
  v6 = swift_allocObject();
  *&v10 = v6;
  v7 = a2[1];
  v6[1] = *a2;
  v6[2] = v7;
  v6[3] = a2[2];
  v8 = *a3;
  *(v8 + 16) = a1 + 1;
  return sub_240E74B14(&v10, v8 + 40 * a1 + 32);
}

uint64_t sub_240E8301C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6)
{
  v16 = &type metadata for RatingRowComponent;
  v17 = sub_240E833B4(a1, a2, a3);
  v12 = swift_allocObject();
  *&v15 = v12;
  v12[2] = a2;
  v12[3] = a3;
  v12[4] = a4;
  v12[5] = a5;
  v13 = *a6;
  *(v13 + 16) = a1 + 1;
  return sub_240E74B14(&v15, v13 + 40 * a1 + 32);
}

uint64_t sub_240E830BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v11 = &type metadata for StringRowComponent;
  v12 = sub_240E83408(a1, a2, a3);
  *&v10 = a2;
  *(&v10 + 1) = a3;
  v8 = *a4;
  *(v8 + 16) = a1 + 1;
  return sub_240E74B14(&v10, v8 + 40 * a1 + 32);
}

uint64_t sub_240E83130(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v11 = &type metadata for AttributedStringRowComponent;
  v12 = sub_240E8345C(a1, a2, a3);
  v6 = swift_allocObject();
  *&v10 = v6;
  v7 = *(a2 + 16);
  *(v6 + 16) = *a2;
  *(v6 + 32) = v7;
  *(v6 + 48) = *(a2 + 32);
  v8 = *a3;
  *(v8 + 16) = a1 + 1;
  return sub_240E74B14(&v10, v8 + 40 * a1 + 32);
}

uint64_t sub_240E831C4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v13 = a4;
  v14 = a5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v12);
  (*(*(a4 - 8) + 32))(boxed_opaque_existential_1, a2, a4);
  v10 = *a3;
  *(v10 + 16) = a1 + 1;
  return sub_240E74B14(&v12, v10 + 40 * a1 + 32);
}

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return v3;
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *a1)
{
  v1 = a1;
  if ((*(*(a1[3] - 8) + 82) & 2) != 0)
  {
    *a1 = swift_allocBox();
    return v2;
  }

  return v1;
}

unint64_t sub_240E8330C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27E51B848;
  if (!qword_27E51B848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E51B848);
  }

  return result;
}

unint64_t sub_240E83360(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27E51B850;
  if (!qword_27E51B850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E51B850);
  }

  return result;
}

unint64_t sub_240E833B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27E51B858;
  if (!qword_27E51B858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E51B858);
  }

  return result;
}

unint64_t sub_240E83408(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_2815037E0;
  if (!qword_2815037E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2815037E0);
  }

  return result;
}

unint64_t sub_240E8345C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_2815037D0;
  if (!qword_2815037D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2815037D0);
  }

  return result;
}

uint64_t sub_240E834B8(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 72))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_240E834F8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_240E83574()
{
  result = qword_27E51B8A0;
  if (!qword_27E51B8A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E51B878, &qword_240E89970);
    sub_240E83600();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E51B8A0);
  }

  return result;
}

unint64_t sub_240E83600()
{
  result = qword_27E51B8A8;
  if (!qword_27E51B8A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E51B870, &qword_240E89968);
    sub_240E8368C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E51B8A8);
  }

  return result;
}

unint64_t sub_240E8368C()
{
  result = qword_27E51B8B0;
  if (!qword_27E51B8B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E51B868, &qword_240E89960);
    sub_240E6BAE4(&qword_27E51B8B8, &qword_27E51B860, &qword_240E89958, MEMORY[0x277CE1138]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E51B8B0);
  }

  return result;
}

uint64_t sub_240E83744(uint64_t result, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return v2;
}

unint64_t sub_240E837C0()
{
  result = qword_27E51B8E8;
  if (!qword_27E51B8E8)
  {
    v1 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E51B8E0, &qword_240E899D0);
    sub_240E8384C(v1, v2, v3);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E51B8E8);
  }

  return result;
}

unint64_t sub_240E8384C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_2815037F0;
  if (!qword_2815037F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2815037F0);
  }

  return result;
}

double sub_240E838A0(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return result;
}

uint64_t objectdestroy_34Tm()
{
  sub_240E83744(*(v0 + 64), *(v0 + 72));

  return MEMORY[0x2821FE8E8](v0, 88, 7);
}

uint64_t sub_240E83900(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  OUTLINED_FUNCTION_1_3(a1, a2, a3, a4);
  OUTLINED_FUNCTION_3();
  (*(v6 + 32))(v4, v5);
  return v4;
}

uint64_t sub_240E83950(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  OUTLINED_FUNCTION_1_3(a1, a2, a3, a4);
  OUTLINED_FUNCTION_3();
  (*(v6 + 16))(v4, v5);
  return v4;
}

_BYTE *storeEnumTagSinglePayload for SalableItemView.Layout(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_240E83A7C()
{
  result = qword_27E51B918;
  if (!qword_27E51B918)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E51B920, qword_240E89A10);
    sub_240E6BAE4(&qword_27E51B898, &qword_27E51B888, &qword_240E89980, MEMORY[0x277CE1198]);
    sub_240E83574();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E51B918);
  }

  return result;
}

unint64_t sub_240E83B38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27E51B928;
  if (!qword_27E51B928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E51B928);
  }

  return result;
}

id OUTLINED_FUNCTION_6_1(id a1, SEL a2)
{

  return [a1 a2];
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_240E83C10(uint64_t *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 17))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_240E83C64(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

void *sub_240E83CE4@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v4 = a3;
  v8 = sub_240E869B4();
  v14 = 1;
  sub_240E83DD0(a1, a2, v4, __src);
  memcpy(__dst, __src, 0x6AuLL);
  memcpy(v16, __src, 0x6AuLL);
  sub_240E7BF78(__dst, &v11, &qword_27E51B930, &qword_240E89B18);
  sub_240E6DFC8(v16, &qword_27E51B930, &qword_240E89B18);
  memcpy(&v13[7], __dst, 0x6AuLL);
  v9 = v14;
  *a4 = v8;
  *(a4 + 8) = 0;
  *(a4 + 16) = v9;
  return memcpy((a4 + 17), v13, 0x71uLL);
}

uint64_t sub_240E83DD0@<X0>(void *a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  if (a1)
  {
    sub_240E80D68(a1, a3, 1, v21);
    v17 = v21[1];
    v18 = v21[0];
    v15 = v21[3];
    v16 = v21[2];
    v13 = v21[5];
    v14 = v21[4];
    v11 = v21[7];
    v12 = v21[6];
    v10 = v21[8];
  }

  else
  {
    v17 = 0;
    v18 = 0;
    v15 = 0;
    v16 = 0;
    v13 = 0;
    v14 = 0;
    v11 = 0;
    v12 = 0;
    v10 = 0;
  }

  if (a2)
  {
    v9 = 257;
    v8 = 1;
    v7 = sub_240E869B4();
  }

  else
  {
    v7 = 0;
    v8 = 0;
    v9 = 0;
  }

  __src[0] = v18;
  __src[1] = v17;
  __src[2] = v16;
  __src[3] = v15;
  __src[4] = v14;
  __src[5] = v13;
  __src[6] = v12;
  __src[7] = v11;
  __src[8] = v10;
  memcpy(a4, __src, 0x48uLL);
  *(a4 + 72) = v7;
  *(a4 + 80) = 0;
  *(a4 + 88) = v8;
  *(a4 + 96) = a2;
  *(a4 + 104) = v9;

  sub_240E7BF78(__src, v20, &qword_27E51B2A8, &qword_240E89B20);
  v20[0] = v18;
  v20[1] = v17;
  v20[2] = v16;
  v20[3] = v15;
  v20[4] = v14;
  v20[5] = v13;
  v20[6] = v12;
  v20[7] = v11;
  v20[8] = v10;
  return sub_240E6DFC8(v20, &qword_27E51B2A8, &qword_240E89B20);
}

unint64_t sub_240E83F4C()
{
  result = qword_27E51B938;
  if (!qword_27E51B938)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E51B940, &qword_240E89B28);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E51B938);
  }

  return result;
}

uint64_t sub_240E83FDC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_240E6ADF4(a1, a2, a3);

  sub_240E86C34();
  OUTLINED_FUNCTION_0_5();
  sub_240E86B14();
  v9 = sub_240E86C04();
  v11 = v10;
  v13 = v12;

  sub_240E6AE70(a2, v8, v4 & 1);

  sub_240E86AD4();
  sub_240E86B54();
  OUTLINED_FUNCTION_0_5();
  sub_240E6AE70(v9, v11, v13 & 1);

  *a4 = a2;
  *(a4 + 8) = v8;
  *(a4 + 16) = v4 & 1;
  *(a4 + 24) = v5;
  return result;
}

unint64_t sub_240E84128(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27E51B958;
  if (!qword_27E51B958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E51B958);
  }

  return result;
}

uint64_t sub_240E8417C()
{
  OUTLINED_FUNCTION_4_4();
  result = EnvironmentValues.primaryText.getter();
  *v0 = result;
  return result;
}

uint64_t (*sub_240E841F0(void *a1, char a2, uint64_t a3))()
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51B970, &qword_240E89D08);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6 - 8);
  v10 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v12 = &v23 - v11;
  v13 = a1;

  sub_240E6E33C(a1, a2, a3, v12);
  if (a2)
  {
    sub_240E85404(v12);
    OUTLINED_FUNCTION_2_4();
    v14 = swift_allocObject();
    *(v14 + 16) = a1;
    if (a2 == 1)
    {
      OUTLINED_FUNCTION_5_2(v14, 1);

      v15 = v13;
      return sub_240E8547C;
    }

    else
    {
      OUTLINED_FUNCTION_5_2(v14, 2);

      v19 = v13;
      return sub_240E8546C;
    }
  }

  else if (a1 && [v13 drawBackground])
  {
    sub_240E8548C(v12, v10);
    v17 = (*(v7 + 80) + 16) & ~*(v7 + 80);
    v18 = swift_allocObject();
    sub_240E8548C(v10, v18 + v17);
    return sub_240E85664;
  }

  else
  {
    sub_240E8548C(v12, v10);
    v20 = (*(v7 + 80) + 16) & ~*(v7 + 80);
    v21 = swift_allocObject();
    sub_240E8548C(v10, v21 + v20);
    return sub_240E854FC;
  }
}

uint64_t sub_240E8444C()
{
  v20 = sub_240E86614();
  v0 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v2 = &v20 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_240E867B4();
  MEMORY[0x28223BE20](v3);
  v5 = (&v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51B978, &qword_240E89D10);
  v6 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v8 = &v20 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51B980, &qword_240E89D18);
  MEMORY[0x28223BE20](v9);
  v11 = &v20 - v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51B970, &qword_240E89D08);
  sub_240E856FC();
  sub_240E86C54();
  if ((sub_240E86E14() & 1) == 0 || (v12 = v20, (*(v0 + 104))(v2, *MEMORY[0x277CEE128], v20), v13 = sub_240E86604(), (*(v0 + 8))(v2, v12), v14 = 26.0, (v13 & 1) == 0))
  {
    v14 = 12.0;
  }

  v15 = *(v3 + 20);
  v16 = *MEMORY[0x277CE0118];
  v17 = sub_240E86974();
  (*(*(v17 - 8) + 104))(v5 + v15, v16, v17);
  *v5 = v14;
  v5[1] = v14;
  v18 = &v11[*(v9 + 36)];
  sub_240E857D8(v5, v18);
  *(v18 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51B130, &qword_240E879F0) + 36)) = 256;
  (*(v6 + 32))(v11, v8, v21);
  sub_240E8583C();
  return sub_240E86DC4();
}

uint64_t sub_240E84778(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51B970, &qword_240E89D08);
  MEMORY[0x28223BE20](v2);
  sub_240E85968(a1, &v5 - v3);
  sub_240E856FC();
  return sub_240E86DC4();
}

uint64_t sub_240E84818(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = sub_240E7F5C8(a3, &v7);
  sub_240E859D8(v3, v4, v5);
  return sub_240E86DC4();
}

uint64_t sub_240E84874(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_240E6B330(a3);
  sub_240E85A2C(v6, v3, v4);
  return sub_240E86DC4();
}

uint64_t (*sub_240E848BC(void *a1, char a2, uint64_t a3))()
{
  if (a2)
  {
    if (a2 == 1)
    {
      OUTLINED_FUNCTION_2_4();
      v4 = swift_allocObject();
      *(v4 + 16) = a1;
      OUTLINED_FUNCTION_5_2(v4, 1);
      v5 = a1;

      return sub_240E85B10;
    }

    else
    {
      OUTLINED_FUNCTION_2_4();
      v8 = swift_allocObject();
      *(v8 + 16) = a1;
      OUTLINED_FUNCTION_5_2(v8, 2);
      v9 = a1;

      return sub_240E85A80;
    }
  }

  else if (sub_240E84A04(a1, 0, a3))
  {
    return sub_240E85B64;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_240E849AC(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t), uint64_t (*a5)(void), uint64_t a6)
{
  a4(a3, a2);
  a5();
  return sub_240E86DC4();
}

uint64_t sub_240E84A04(void *a1, uint64_t a2, uint64_t a3)
{

  if (sub_240E80204(a1, a2, a3))
  {
    sub_240E6D1B0(a3, &v17);
    sub_240E8535C(v6, v7, v8);
  }

  else
  {

    if (!a1)
    {
      return 0;
    }

    v9 = [a1 localizedNavigationTitle];
    v10 = sub_240E86F74();
    v12 = v11;

    *&v17 = v10;
    *(&v17 + 1) = v12;
    sub_240E6B9D8(v13, v14, v15);
  }

  return sub_240E86DC4();
}

uint64_t (*sub_240E84AD4(void *a1))(uint64_t a1)
{
  if (a1 && ([a1 drawBottomDivider] & 1) != 0)
  {
    return sub_240E84B20;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_240E84B34()
{
  result = sub_240E86CD4();
  qword_27E51B948 = result;
  return result;
}

uint64_t *sub_240E84B54()
{
  if (qword_27E51B0B8 != -1)
  {
    OUTLINED_FUNCTION_1_8(&qword_27E51B0B8);
  }

  return &qword_27E51B948;
}

uint64_t (*static PrimaryTextColorKey.defaultValue.modify())()
{
  if (qword_27E51B0B8 != -1)
  {
    OUTLINED_FUNCTION_1_8(&qword_27E51B0B8);
  }

  OUTLINED_FUNCTION_6_2();
  return j__swift_endAccess;
}

uint64_t (*EnvironmentValues.primaryText.modify(uint64_t a1, uint64_t a2, uint64_t a3))(uint64_t *a1, char a2)
{
  *(a1 + 16) = v3;
  *(a1 + 24) = sub_240E84128(a1, a2, a3);
  sub_240E868D4();
  return sub_240E84CCC;
}

uint64_t sub_240E84CD8()
{
  result = sub_240E86CE4();
  qword_27E51B950 = result;
  return result;
}

uint64_t *sub_240E84CF8()
{
  if (qword_27E51B0C0 != -1)
  {
    OUTLINED_FUNCTION_0_6(&qword_27E51B0C0);
  }

  return &qword_27E51B950;
}

double sub_240E84D5C(void *a1, void *a2, uint64_t a3)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_3_5();
  swift_beginAccess();

  return result;
}

uint64_t sub_240E84DD8(uint64_t a1, void *a2, uint64_t *a3, uint64_t a4)
{
  if (*a2 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_3_5();
  swift_beginAccess();
  *a3 = a1;
}

uint64_t (*static SecondaryTextColorKey.defaultValue.modify())()
{
  if (qword_27E51B0C0 != -1)
  {
    OUTLINED_FUNCTION_0_6(&qword_27E51B0C0);
  }

  OUTLINED_FUNCTION_6_2();
  return j_j__swift_endAccess;
}

double sub_240E84EA4@<D0>(uint64_t (*a1)(void)@<X3>, uint64_t *a2@<X4>, uint64_t *a3@<X8>)
{
  a1();
  OUTLINED_FUNCTION_3_5();
  swift_beginAccess();
  *a3 = *a2;

  return result;
}

uint64_t sub_240E84EF4(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t), uint64_t *a6)
{
  v8 = *a1;

  a5(v9);
  OUTLINED_FUNCTION_3_5();
  swift_beginAccess();
  *a6 = v8;
}

uint64_t sub_240E84FA0(uint64_t (*a1)(void), uint64_t a2)
{
  a1();
  sub_240E868D4();
  return v3;
}

unint64_t sub_240E84FE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27E51B960;
  if (!qword_27E51B960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E51B960);
  }

  return result;
}

uint64_t sub_240E8503C()
{
  OUTLINED_FUNCTION_4_4();
  result = EnvironmentValues.secondaryText.getter();
  *v0 = result;
  return result;
}

uint64_t (*EnvironmentValues.secondaryText.modify(uint64_t a1, uint64_t a2, uint64_t a3))(uint64_t *a1, char a2)
{
  *(a1 + 16) = v3;
  *(a1 + 24) = sub_240E84FE8(a1, a2, a3);
  sub_240E868D4();
  return sub_240E85158;
}

uint64_t sub_240E85164(uint64_t *a1, char a2)
{
  a1[1] = *a1;
  if ((a2 & 1) == 0)
  {
    return OUTLINED_FUNCTION_7_2();
  }

  OUTLINED_FUNCTION_7_2();
}

uint64_t sub_240E85260(unsigned int *a1, int a2)
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

_BYTE *sub_240E852B0(_BYTE *result, int a2, int a3)
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

unint64_t sub_240E8535C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_281503950;
  if (!qword_281503950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281503950);
  }

  return result;
}

unint64_t sub_240E853B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27E51B968;
  if (!qword_27E51B968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E51B968);
  }

  return result;
}

uint64_t sub_240E85404(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51B970, &qword_240E89D08);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_240E8548C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51B970, &qword_240E89D08);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroy_36Tm()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51B970, &qword_240E89D08) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  v5 = (v0 + v3);
  v6 = type metadata accessor for CardOnFileView(0);
  if (!__swift_getEnumTagSinglePayload(v0 + v3, 1, v6))
  {

    v7 = *(v6 + 32);
    v8 = sub_240E86774();
    if (!__swift_getEnumTagSinglePayload(v5 + v7, 1, v8))
    {
      (*(*(v8 - 8) + 8))(v5 + v7, v8);
    }
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_240E8567C(uint64_t (*a1)(uint64_t))
{
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51B970, &qword_240E89D08) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

unint64_t sub_240E856FC()
{
  result = qword_2815037F8;
  if (!qword_2815037F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E51B970, &qword_240E89D08);
    sub_240E85780();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2815037F8);
  }

  return result;
}

unint64_t sub_240E85780()
{
  result = qword_281503800;
  if (!qword_281503800)
  {
    type metadata accessor for CardOnFileView(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281503800);
  }

  return result;
}

uint64_t sub_240E857D8(uint64_t a1, uint64_t a2)
{
  v4 = sub_240E867B4();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_240E8583C()
{
  result = qword_27E51B988;
  if (!qword_27E51B988)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E51B980, &qword_240E89D18);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E51B970, &qword_240E89D08);
    sub_240E856FC();
    swift_getOpaqueTypeConformance2();
    sub_240E85904();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E51B988);
  }

  return result;
}

unint64_t sub_240E85904()
{
  result = qword_2815037C8;
  if (!qword_2815037C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E51B130, &qword_240E879F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2815037C8);
  }

  return result;
}

uint64_t sub_240E85968(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51B970, &qword_240E89D08);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_240E859D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27E51B990;
  if (!qword_27E51B990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E51B990);
  }

  return result;
}

unint64_t sub_240E85A2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27E51B998;
  if (!qword_27E51B998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E51B998);
  }

  return result;
}

uint64_t objectdestroyTm_0()
{

  OUTLINED_FUNCTION_2_4();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

unint64_t sub_240E85B6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27E51B9A0;
  if (!qword_27E51B9A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E51B9A0);
  }

  return result;
}

unint64_t sub_240E85BC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27E51B9A8;
  if (!qword_27E51B9A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E51B9A8);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_0_6(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_1_8(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_5_2@<X0>(uint64_t result@<X0>, char a2@<W8>)
{
  *(result + 24) = a2;
  *(result + 32) = v2;
  return result;
}

uint64_t OUTLINED_FUNCTION_6_2()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_7_2()
{

  return sub_240E868E4();
}

uint64_t sub_240E85D00@<X0>(uint64_t *a4@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51B188, &qword_240E87D88);
  MEMORY[0x28223BE20](v5);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51B190, &unk_240E87D90);
  sub_240E6B9D8(v6, v7, v8);
  sub_240E6BA2C();
  sub_240E86DB4();
  sub_240E6BAE4(&qword_27E51B1A8, &qword_27E51B188, &qword_240E87D88, MEMORY[0x277CDEFF0]);
  result = sub_240E86DC4();
  *a4 = result;
  return result;
}

uint64_t __isPlatformVersionAtLeast(int a1, int a2, int a3, int a4)
{
  if (qword_27E51CE88 == -1)
  {
    if (qword_27E51CE90)
    {
      return _availability_version_check();
    }
  }

  else
  {
    v5 = a4;
    v6 = a3;
    v7 = a2;
    __isPlatformVersionAtLeast_cold_1();
    a2 = v7;
    a3 = v6;
    a4 = v5;
    if (qword_27E51CE90)
    {
      return _availability_version_check();
    }
  }

  if (qword_27E51CE80 != -1)
  {
    v9 = a4;
    v10 = a3;
    v11 = a2;
    __isPlatformVersionAtLeast_cold_2();
    a3 = v10;
    a4 = v9;
    v8 = _MergedGlobals < v11;
    if (_MergedGlobals > v11)
    {
      return 1;
    }

LABEL_7:
    if (!v8)
    {
      if (dword_27E51CE74 > a3)
      {
        return 1;
      }

      if (dword_27E51CE74 >= a3)
      {
        return dword_27E51CE78 >= a4;
      }
    }

    return 0;
  }

  v8 = _MergedGlobals < a2;
  if (_MergedGlobals <= a2)
  {
    goto LABEL_7;
  }

  return 1;
}

uint64_t _initializeAvailabilityCheck(uint64_t result)
{
  v29 = *MEMORY[0x277D85DE8];
  v1 = qword_27E51CE90;
  if (qword_27E51CE90)
  {
    v2 = result == 0;
  }

  else
  {
    v2 = 0;
  }

  if (!v2)
  {
    if (MEMORY[0x28223BE68])
    {
      v1 = MEMORY[0x28223BE68];
      qword_27E51CE90 = MEMORY[0x28223BE68];
    }

    if (v1)
    {
      v3 = result == 0;
    }

    else
    {
      v3 = 0;
    }

    if (!v3)
    {
      result = dlsym(0xFFFFFFFFFFFFFFFELL, "kCFAllocatorNull");
      if (result)
      {
        v4 = *result;
        result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFDataCreateWithBytesNoCopy");
        if (result)
        {
          v5 = result;
          v6 = dlsym(0xFFFFFFFFFFFFFFFELL, "CFPropertyListCreateWithData");
          result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFPropertyListCreateFromXMLData");
          if (v6 | result)
          {
            v7 = result;
            result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringCreateWithCStringNoCopy");
            if (result)
            {
              v8 = result;
              result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFDictionaryGetValue");
              if (result)
              {
                v9 = result;
                result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFGetTypeID");
                if (result)
                {
                  v10 = result;
                  result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringGetTypeID");
                  if (result)
                  {
                    v11 = result;
                    result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringGetCString");
                    v27 = result;
                    if (result)
                    {
                      result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFRelease");
                      if (result)
                      {
                        v12 = result;
                        result = fopen("/System/Library/CoreServices/SystemVersion.plist", "r");
                        if (result)
                        {
                          v13 = result;
                          v26 = v12;
                          fseek(result, 0, 2);
                          v14 = MEMORY[0x245CD2030](v13);
                          if (v14 < 0)
                          {
                            v16 = 0;
                          }

                          else
                          {
                            v15 = v14;
                            rewind(v13);
                            v16 = malloc(v15);
                            if (v16)
                            {
                              v25 = v16;
                              if (fread(v16, 1uLL, v15, v13) == v15 && (v17 = v5(0, v25, v15, v4)) != 0)
                              {
                                v18 = v17;
                                if (v6)
                                {
                                  v19 = (v6)(0, v17, 0, 0, 0);
                                }

                                else
                                {
                                  v19 = v7(0, v17, 0, 0);
                                }

                                v20 = v19;
                                if (v19)
                                {
                                  v21 = v8(0, "ProductVersion", 1536, v4);
                                  if (v21)
                                  {
                                    v22 = v21;
                                    v23 = v9(v20, v21);
                                    (v26)(v22);
                                    if (v23)
                                    {
                                      v24 = v10(v23);
                                      if (v24 == v11())
                                      {
                                        if (v27(v23, v28, 32, 134217984))
                                        {
                                          sscanf(v28, "%d.%d.%d", &_MergedGlobals, &dword_27E51CE74, &dword_27E51CE78);
                                        }
                                      }
                                    }
                                  }

                                  (v26)(v20);
                                }

                                (v26)(v18);
                                v16 = v25;
                              }

                              else
                              {
                                v16 = v25;
                              }
                            }
                          }

                          free(v16);
                          return fclose(v13);
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}