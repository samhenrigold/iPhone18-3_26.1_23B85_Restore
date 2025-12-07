uint64_t sub_23A6C4250@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = sub_23A6DEFB4();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, a1, v4, v6);
  result = (*(v5 + 88))(v8, v4);
  if (result == *MEMORY[0x277CFEFE0])
  {
    v10 = 0;
  }

  else if (result == *MEMORY[0x277CFEFD8])
  {
    v10 = 1;
  }

  else if (result == *MEMORY[0x277CFEFD0])
  {
    v10 = 2;
  }

  else if (result == *MEMORY[0x277CFEFC8])
  {
    v10 = 3;
  }

  else
  {
    if (result != *MEMORY[0x277CFEFE8])
    {
      result = (*(v5 + 8))(v8, v4);
    }

    v10 = 4;
  }

  *a2 = v10;
  return result;
}

uint64_t sub_23A6C43E0@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = sub_23A6DF074();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v9, a1, v5, v7);
  result = (*(v6 + 88))(v9, v5);
  if (result == *MEMORY[0x277CFF010])
  {
    *a2 = 0;
  }

  else if (result == *MEMORY[0x277CFEFF8])
  {
    *a2 = 1;
  }

  else if (result == *MEMORY[0x277CFF018])
  {
    *a2 = 2;
  }

  else if (result == *MEMORY[0x277CFEFF0])
  {
    *a2 = 3;
  }

  else if (result == *MEMORY[0x277CFF000])
  {
    *a2 = 4;
  }

  else if (result == *MEMORY[0x277CFF020])
  {
    *a2 = 5;
  }

  else if (result == *MEMORY[0x277CFF028])
  {
    *a2 = 6;
  }

  else if (result == *MEMORY[0x277CFF030])
  {
    *a2 = 7;
  }

  else if (result == *MEMORY[0x277CFF008])
  {
    *a2 = 8;
  }

  else if (result == *MEMORY[0x277CFF038])
  {
    *a2 = 9;
  }

  else
  {
    *a2 = 10;
    return (*(v6 + 8))(v9, v5);
  }

  return result;
}

uint64_t sub_23A6C4628@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = sub_23A6DF094();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v9, a1, v5, v7);
  result = (*(v6 + 88))(v9, v5);
  if (result == *MEMORY[0x277CFF048])
  {
    *a2 = 0;
  }

  else if (result == *MEMORY[0x277CFF058])
  {
    *a2 = 1;
  }

  else if (result == *MEMORY[0x277CFF060])
  {
    *a2 = 2;
  }

  else if (result == *MEMORY[0x277CFF068])
  {
    *a2 = 3;
  }

  else if (result == *MEMORY[0x277CFF050])
  {
    *a2 = 4;
  }

  else if (result == *MEMORY[0x277CFF040])
  {
    *a2 = 5;
  }

  else if (result == *MEMORY[0x277CFF080])
  {
    *a2 = 6;
  }

  else if (result == *MEMORY[0x277CFF070])
  {
    *a2 = 7;
  }

  else if (result == *MEMORY[0x277CFF078])
  {
    *a2 = 8;
  }

  else if (result == *MEMORY[0x277CFF088])
  {
    *a2 = 9;
  }

  else
  {
    *a2 = 10;
    return (*(v6 + 8))(v9, v5);
  }

  return result;
}

uint64_t sub_23A6C4870@<X0>(uint64_t a1@<X8>)
{
  v64 = a1;
  v1 = sub_23A6DEFB4();
  v59 = *(v1 - 8);
  v60 = v1;
  MEMORY[0x28223BE20](v1);
  v55 = &v49[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9D340, &qword_23A6E5050);
  MEMORY[0x28223BE20](v3 - 8);
  v56 = &v49[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v5);
  v58 = &v49[-v6];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9CCC8, &qword_23A6E3C40);
  MEMORY[0x28223BE20](v7 - 8);
  v63 = &v49[-v8];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9CCC0, &unk_23A6E3790);
  MEMORY[0x28223BE20](v9 - 8);
  v62 = &v49[-v10];
  v11 = type metadata accessor for MobileNationalIDCardDataRequest.Response.DocumentElements(0);
  MEMORY[0x28223BE20](v11 - 8);
  v57 = &v49[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = sub_23A6DEB84();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v49[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v17 = sub_23A6DF0C4();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = &v49[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v21 = sub_23A6DE314();
  v61 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v23 = &v49[-((v22 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v24);
  v26 = &v49[-v25];
  sub_23A6DEB94();
  if ((*(v14 + 88))(v16, v13) != *MEMORY[0x277D43BE8])
  {
    goto LABEL_6;
  }

  (*(v14 + 96))(v16, v13);
  v27 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9CF40, &qword_23A6E4368) + 48);
  v13 = sub_23A6DE8C4();
  v14 = *(v13 - 8);
  if ((*(v14 + 88))(v16, v13) != *MEMORY[0x277D43928])
  {
    (*(v18 + 8))(&v16[v27], v17);
LABEL_6:
    (*(v14 + 8))(v16, v13);
    v38 = 1;
    v39 = v64;
    goto LABEL_9;
  }

  (*(v14 + 96))(v16, v13);
  (*(v61 + 32))(v26, v16, v21);
  (*(v18 + 32))(v20, &v16[v27], v17);
  v28 = v62;
  sub_23A6DED64();
  v29 = sub_23A6DE0F4();
  (*(*(v29 - 8) + 56))(v28, 0, 1, v29);
  v30 = sub_23A6DED44();
  v53 = v31;
  v54 = v30;
  v52 = sub_23A6DED14();
  v51 = sub_23A6DEFC4();
  v50 = v32;
  sub_23A6DED24();
  v33 = v58;
  sub_23A6DEFD4();
  v34 = v56;
  sub_23A646D48(v33, v56, &qword_27DF9D340, &qword_23A6E5050);
  v36 = v59;
  v35 = v60;
  if ((*(v59 + 48))(v34, 1, v60) == 1)
  {
    sub_23A646DB0(v33, &qword_27DF9D340, &qword_23A6E5050);
    v37 = 4;
  }

  else
  {
    v40 = v34;
    v41 = v33;
    v42 = v55;
    (*(v36 + 32))(v55, v40, v35);
    sub_23A6C4FB0(v42, &v66);
    (*(v36 + 8))(v42, v35);
    sub_23A646DB0(v41, &qword_27DF9D340, &qword_23A6E5050);
    v37 = v66;
  }

  v65 = v37;
  v43 = sub_23A6DED54();
  v44 = v57;
  sub_23A6AE734(v62, v54, v53, v52, v51, v50 & 1, v63, &v65, v57, v43, v45);
  v46 = v61;
  (*(v61 + 16))(v23, v26, v21);
  v39 = v64;
  sub_23A6ADAB4(v44, v23, v64);
  (*(v18 + 8))(v20, v17);
  (*(v46 + 8))(v26, v21);
  v38 = 0;
LABEL_9:
  v47 = type metadata accessor for MobileNationalIDCardDataRequest.Response(0);
  return (*(*(v47 - 8) + 56))(v39, v38, 1, v47);
}

uint64_t sub_23A6C4FB0@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = sub_23A6DEFB4();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, a1, v4, v6);
  result = (*(v5 + 88))(v8, v4);
  if (result == *MEMORY[0x277CFEFE0])
  {
    v10 = 0;
  }

  else if (result == *MEMORY[0x277CFEFD8])
  {
    v10 = 1;
  }

  else if (result == *MEMORY[0x277CFEFD0])
  {
    v10 = 2;
  }

  else
  {
    if (result != *MEMORY[0x277CFEFC8] && result != *MEMORY[0x277CFEFE8])
    {
      result = (*(v5 + 8))(v8, v4);
    }

    v10 = 3;
  }

  *a2 = v10;
  return result;
}

uint64_t sub_23A6C5134@<X0>(uint64_t a1@<X8>)
{
  v125 = a1;
  v118 = sub_23A6DEE34();
  v117 = *(v118 - 8);
  MEMORY[0x28223BE20](v118);
  v108 = &v99 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9D320, &qword_23A6E5030);
  MEMORY[0x28223BE20](v3 - 8);
  v115 = &v99 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v116 = &v99 - v6;
  v119 = sub_23A6DF054();
  v111 = *(v119 - 8);
  MEMORY[0x28223BE20](v119);
  v107 = &v99 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9D338, &qword_23A6E5048);
  MEMORY[0x28223BE20](v8 - 8);
  *&v110 = &v99 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  *&v120 = &v99 - v11;
  v12 = sub_23A6DEFB4();
  *&v109 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v14 = &v99 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v99 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9D340, &qword_23A6E5050);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = &v99 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v23 = &v99 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9CCC8, &qword_23A6E3C40);
  MEMORY[0x28223BE20](v24 - 8);
  v114 = &v99 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v113 = &v99 - v27;
  MEMORY[0x28223BE20](v28);
  v122 = &v99 - v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9CCC0, &unk_23A6E3790);
  MEMORY[0x28223BE20](v30 - 8);
  v121 = &v99 - v31;
  v32 = type metadata accessor for MobilePhotoIDDataRequest.Response.DocumentElements(0);
  MEMORY[0x28223BE20](v32 - 8);
  v112 = &v99 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_23A6DEB84();
  v35 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v37 = &v99 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v124 = sub_23A6DF0C4();
  v123 = *(v124 - 8);
  MEMORY[0x28223BE20](v124);
  v39 = &v99 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23A6DEB94();
  if ((*(v35 + 88))(v37, v34) != *MEMORY[0x277D43BE8])
  {
    (*(v35 + 8))(v37, v34);
LABEL_7:
    v52 = 1;
    v53 = v125;
    goto LABEL_27;
  }

  (*(v35 + 96))(v37, v34);
  v40 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9CF40, &qword_23A6E4368) + 48);
  v41 = sub_23A6DE8C4();
  v42 = (*(v41 - 8) + 88);
  v43 = (*v42)(v37, v41);
  v44 = (v42 - 10);
  if (v43 != *MEMORY[0x277D43930])
  {
    (*(v123 + 8))(&v37[v40], v124);
    (*v44)(v37, v41);
    goto LABEL_7;
  }

  (*(v123 + 32))(v39, &v37[v40], v124);
  (*v44)(v37, v41);
  v45 = v121;
  sub_23A6DED64();
  v46 = sub_23A6DE0F4();
  (*(*(v46 - 8) + 56))(v45, 0, 1, v46);
  v106 = sub_23A6DED44();
  v105 = v47;
  v104 = sub_23A6DED14();
  v103 = sub_23A6DEFC4();
  v102 = v48;
  sub_23A6DED24();
  sub_23A6DEFD4();
  sub_23A646D48(v23, v20, &qword_27DF9D340, &qword_23A6E5050);
  v49 = v109;
  if ((*(v109 + 48))(v20, 1, v12) != 1)
  {
    (*(v49 + 32))(v17, v20, v12);
    (*(v49 + 16))(v14, v17, v12);
    v54 = (*(v49 + 88))(v14, v12);
    if (v54 == *MEMORY[0x277CFEFE0])
    {
      v50 = 0;
      v51 = v110;
    }

    else
    {
      v51 = v110;
      if (v54 == *MEMORY[0x277CFEFD8])
      {
        v50 = 1;
      }

      else
      {
        if (v54 != *MEMORY[0x277CFEFD0])
        {
          if (v54 != *MEMORY[0x277CFEFC8])
          {
            if (v54 == *MEMORY[0x277CFEFE8])
            {
              v50 = 3;
              goto LABEL_19;
            }

            (*(v49 + 8))(v14, v12);
          }

          v50 = 4;
          goto LABEL_19;
        }

        v50 = 2;
      }
    }

LABEL_19:
    (*(v49 + 8))(v17, v12);
    goto LABEL_20;
  }

  v50 = 4;
  v51 = v110;
LABEL_20:
  sub_23A646DB0(v23, &qword_27DF9D340, &qword_23A6E5050);
  v130 = v50;
  v55 = v120;
  sub_23A6DF064();
  sub_23A646D48(v55, v51, &qword_27DF9D338, &qword_23A6E5048);
  v56 = v111;
  v57 = v119;
  v58 = (*(v111 + 48))(v51, 1, v119);
  v110 = xmmword_23A6E5010;
  if (v58 == 1)
  {
    v59 = 0;
    v60 = 0;
    v109 = xmmword_23A6E5010;
    v101 = 0u;
    v100 = 0u;
    v99 = 0u;
  }

  else
  {
    v61 = v107;
    (*(v56 + 32))(v107, v51, v57);
    v62 = v56;
    *&v109 = sub_23A6DF044();
    *&v101 = v63;
    v64 = sub_23A6DF024();
    v66 = v65;
    v67 = sub_23A6DF034();
    v69 = v68;
    v70 = sub_23A6DF004();
    v72 = v71;
    v73 = sub_23A6DF014();
    sub_23A6C67F0(v109, v101, v64, v66, v67, v69, v70, v72, v131, v73, v74);
    v101 = v131[1];
    v109 = v131[0];
    v99 = v131[3];
    v100 = v131[2];
    v59 = v132;
    v60 = v133;
    (*(v62 + 8))(v61, v119);
  }

  v75 = v118;
  v76 = v117;
  v77 = v116;
  sub_23A646DB0(v120, &qword_27DF9D338, &qword_23A6E5048);
  v134[0] = v109;
  v134[1] = v101;
  v134[2] = v100;
  v134[3] = v99;
  v135 = v59;
  v136 = v60;
  sub_23A6DEE44();
  v78 = v115;
  sub_23A646D48(v77, v115, &qword_27DF9D320, &qword_23A6E5030);
  if ((*(v76 + 48))(v78, 1, v75) == 1)
  {
    v79 = 0;
    v80 = 0;
    v120 = 0u;
  }

  else
  {
    v81 = v108;
    (*(v76 + 32))(v108, v78, v75);
    v82 = sub_23A6DEE24();
    v84 = v83;
    v85 = sub_23A6DEDA4();
    v87 = v86;
    v88 = sub_23A6DEDB4();
    sub_23A6A979C(v82, v84, v85, v87, v88, v89, &v126);
    v120 = v127;
    v110 = v126;
    v79 = v128;
    v80 = v129;
    (*(v76 + 8))(v81, v75);
  }

  sub_23A646DB0(v77, &qword_27DF9D320, &qword_23A6E5030);
  v127 = v120;
  v126 = v110;
  v128 = v79;
  v129 = v80;
  v90 = sub_23A6DED54();
  v92 = v91;
  v93 = v113;
  sub_23A6DEE54();
  v94 = v114;
  sub_23A6DEF84();
  v98 = v90;
  v95 = v112;
  sub_23A6C93CC(v121, v106, v105, v104, v103, v102 & 1, v122, &v130, v112, v134, &v126, v98, v92, v93, v94);
  v53 = v125;
  sub_23A6C8428(v95, v125);
  (*(v123 + 8))(v39, v124);
  v52 = 0;
LABEL_27:
  v96 = type metadata accessor for MobilePhotoIDDataRequest.Response(0);
  return (*(*(v96 - 8) + 56))(v53, v52, 1, v96);
}

void *sub_23A6C5EF0(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_23A6C60E0(a1, a2, a3, *v3, &qword_27DF9D358, &qword_23A6E5068, type metadata accessor for MobileDriversLicenseDataRequest.Response.DocumentElements.AAMVADrivingPrivilege);
  *v3 = result;
  return result;
}

void *sub_23A6C5F34(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_23A6C60E0(a1, a2, a3, *v3, &qword_27DF9D368, &qword_23A6E5078, type metadata accessor for MobileDriversLicenseDataRequest.Response.DocumentElements.DrivingPrivilege);
  *v3 = result;
  return result;
}

char *sub_23A6C5F78(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_23A6C62BC(a1, a2, a3, *v3, &qword_27DF9D348, &qword_23A6E5058, &type metadata for MobileDriversLicenseDataRequest.Response.DocumentElements.AAMVADrivingPrivilege.VehicleEndorsement);
  *v3 = result;
  return result;
}

char *sub_23A6C5FB0(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_23A6C62BC(a1, a2, a3, *v3, &qword_27DF9D350, &qword_23A6E5060, &type metadata for MobileDriversLicenseDataRequest.Response.DocumentElements.AAMVADrivingPrivilege.VehicleRestriction);
  *v3 = result;
  return result;
}

char *sub_23A6C5FE8(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_23A6C63C8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_23A6C6008(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_23A6C6070(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9D318, &qword_23A6E5028);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void *sub_23A6C60E0(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
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

char *sub_23A6C62BC(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6, uint64_t a7)
{
  v8 = result;
  if (a3)
  {
    v9 = *(a4 + 3);
    v10 = v9 >> 1;
    if ((v9 >> 1) < a2)
    {
      if (v10 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v10 = v9 & 0xFFFFFFFFFFFFFFFELL;
      if ((v9 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v10 = a2;
      }
    }
  }

  else
  {
    v10 = a2;
  }

  v11 = *(a4 + 2);
  if (v10 <= v11)
  {
    v12 = *(a4 + 2);
  }

  else
  {
    v12 = v10;
  }

  if (v12)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v13 = swift_allocObject();
    v14 = _swift_stdlib_malloc_size(v13);
    v15 = v14 - 32;
    if (v14 < 32)
    {
      v15 = v14 - 1;
    }

    *(v13 + 2) = v11;
    *(v13 + 3) = 2 * (v15 >> 5);
  }

  else
  {
    v13 = MEMORY[0x277D84F90];
  }

  v16 = v13 + 32;
  v17 = a4 + 32;
  if (v8)
  {
    if (v13 != a4 || v16 >= &v17[32 * v11])
    {
      memmove(v16, v17, 32 * v11);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

char *sub_23A6C63C8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9D360, &qword_23A6E5070);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[48 * v8])
    {
      memmove(v12, v13, 48 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_23A6C64E8()
{
  v1 = [objc_allocWithZone(MEMORY[0x277CBDB60]) init];
  if (v0[1])
  {
    v2 = sub_23A6DF614();
    [v1 setStreet_];
  }

  if (v0[3])
  {
    v3 = sub_23A6DF614();
    [v1 setCity_];
  }

  if (v0[5])
  {
    v4 = sub_23A6DF614();
    [v1 setState_];
  }

  if (v0[7])
  {
    v5 = sub_23A6DF614();
    [v1 setPostalCode_];
  }

  if (v0[9])
  {
    v6 = sub_23A6DF614();
    [v1 setISOCountryCode_];
  }

  [v1 copy];
  sub_23A6DF994();

  swift_unknownObjectRelease();
  sub_23A6C6660();
  swift_dynamicCast();
  return v8;
}

unint64_t sub_23A6C6660()
{
  result = qword_27DF9D370;
  if (!qword_27DF9D370)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27DF9D370);
  }

  return result;
}

uint64_t sub_23A6C66AC(uint64_t a1)
{
  if (v1[1])
  {
    sub_23A6DFD04();
    sub_23A6DF684();
    if (v1[3])
    {
      goto LABEL_3;
    }
  }

  else
  {
    sub_23A6DFD04();
    if (v1[3])
    {
LABEL_3:
      sub_23A6DFD04();
      sub_23A6DF684();
      if (v1[5])
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  sub_23A6DFD04();
  if (v1[5])
  {
LABEL_4:
    sub_23A6DFD04();
    sub_23A6DF684();
    if (v1[7])
    {
      goto LABEL_5;
    }

LABEL_12:
    sub_23A6DFD04();
    if (v1[9])
    {
      goto LABEL_6;
    }

    return sub_23A6DFD04();
  }

LABEL_11:
  sub_23A6DFD04();
  if (!v1[7])
  {
    goto LABEL_12;
  }

LABEL_5:
  sub_23A6DFD04();
  sub_23A6DF684();
  if (!v1[9])
  {
    return sub_23A6DFD04();
  }

LABEL_6:
  sub_23A6DFD04();

  return sub_23A6DF684();
}

uint64_t sub_23A6C67F0@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, uint64_t a10, uint64_t a11)
{
  *a9 = result;
  a9[1] = a2;
  a9[2] = a3;
  a9[3] = a4;
  a9[4] = a5;
  a9[5] = a6;
  a9[6] = a7;
  a9[7] = a8;
  a9[8] = a10;
  a9[9] = a11;
  return result;
}

uint64_t sub_23A6C680C()
{
  sub_23A6DFCE4();
  sub_23A6C66AC(v1);
  return sub_23A6DFD14();
}

uint64_t sub_23A6C6850(uint64_t a1)
{
  sub_23A6DFCE4();
  sub_23A6C66AC(v2);
  return sub_23A6DFD14();
}

uint64_t sub_23A6C688C(_OWORD *a1, __int128 *a2)
{
  v2 = a1[3];
  v8[2] = a1[2];
  v8[3] = v2;
  v3 = a1[4];
  v4 = a1[1];
  v8[0] = *a1;
  v8[1] = v4;
  v5 = a2[3];
  v9[2] = a2[2];
  v9[3] = v5;
  v9[4] = a2[4];
  v6 = *a2;
  v9[1] = a2[1];
  v8[4] = v3;
  v9[0] = v6;
  return sub_23A6C68E8(v8, v9) & 1;
}

uint64_t sub_23A6C68E8(void *a1, void *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  if (v2)
  {
    if (!v3)
    {
      return 0;
    }

    if (*a1 != *a2 || v2 != v3)
    {
      v5 = a1;
      v6 = a2;
      v7 = sub_23A6DFC04();
      a2 = v6;
      v8 = v7;
      a1 = v5;
      if ((v8 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v3)
  {
    return 0;
  }

  v9 = a1[3];
  v10 = a2[3];
  if (v9)
  {
    if (!v10)
    {
      return 0;
    }

    if (a1[2] != a2[2] || v9 != v10)
    {
      v11 = a1;
      v12 = a2;
      v13 = sub_23A6DFC04();
      a2 = v12;
      v14 = v13;
      a1 = v11;
      if ((v14 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v10)
  {
    return 0;
  }

  v15 = a1[5];
  v16 = a2[5];
  if (v15)
  {
    if (!v16)
    {
      return 0;
    }

    if (a1[4] != a2[4] || v15 != v16)
    {
      v17 = a1;
      v18 = a2;
      v19 = sub_23A6DFC04();
      a2 = v18;
      v20 = v19;
      a1 = v17;
      if ((v20 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v16)
  {
    return 0;
  }

  v21 = a1[7];
  v22 = a2[7];
  if (v21)
  {
    if (!v22)
    {
      return 0;
    }

    if (a1[6] != a2[6] || v21 != v22)
    {
      v23 = a1;
      v24 = a2;
      v25 = sub_23A6DFC04();
      a2 = v24;
      v26 = v25;
      a1 = v23;
      if ((v26 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v22)
  {
    return 0;
  }

  v27 = a1[9];
  v28 = a2[9];
  if (v27)
  {
    if (v28 && (a1[8] == a2[8] && v27 == v28 || (sub_23A6DFC04() & 1) != 0))
    {
      return 1;
    }
  }

  else if (!v28)
  {
    return 1;
  }

  return 0;
}

uint64_t sub_23A6C6AAC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 80))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_23A6C6B08(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 80) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 80) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t MobileNationalIDCardDataRequest.Response.DocumentElements.Sex.hashValue.getter()
{
  v1 = *v0;
  sub_23A6DFCE4();
  MEMORY[0x23EE8A1E0](v1);
  return sub_23A6DFD14();
}

uint64_t MobileNationalIDCardDataRequest.Response.DocumentElements.Sex.localizedName.getter()
{
  v1 = sub_23A6DEFB4();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x28223BE20](v1);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v2 + 104))(v5, **(&unk_278B544E0 + *v0), v1, v3);
  v6 = sub_23A6DEFA4();
  (*(v2 + 8))(v5, v1);
  return v6;
}

uint64_t MobilePhotoIDDataRequest.retainedElements.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t MobilePhotoIDDataRequest.nonRetainedElements.setter(uint64_t a1)
{

  *(v1 + 8) = a1;
  return result;
}

uint64_t MobilePhotoIDDataRequest.init(retainedElements:nonRetainedElements:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t static MobilePhotoIDDataRequest.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  if ((sub_23A6C6E30(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  return sub_23A6C6E30(v2, v3);
}

uint64_t sub_23A6C6E30(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MobilePhotoIDDataRequest.Element(0);
  MEMORY[0x28223BE20](v4);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = &v18 - v9;
  v11 = *(a1 + 16);
  if (v11 == *(a2 + 16))
  {
    if (!v11 || a1 == a2)
    {
      v16 = 1;
    }

    else
    {
      v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
      v13 = a1 + v12;
      v14 = a2 + v12;
      v15 = *(v8 + 72);
      do
      {
        sub_23A6C7208(v13, v10);
        sub_23A6C7208(v14, v6);
        sub_23A6C7AE0(&qword_27DF9D390, type metadata accessor for MobilePhotoIDDataRequest.Element, &protocol conformance descriptor for MobilePhotoIDDataRequest.Element);
        v16 = sub_23A6DF604();
        sub_23A6C726C(v6);
        sub_23A6C726C(v10);
        if ((v16 & 1) == 0)
        {
          break;
        }

        v14 += v15;
        v13 += v15;
        --v11;
      }

      while (v11);
    }
  }

  else
  {
    v16 = 0;
  }

  return v16 & 1;
}

uint64_t MobilePhotoIDDataRequest.hash(into:)(uint64_t a1)
{
  v2 = type metadata accessor for MobilePhotoIDDataRequest.Element(0);
  v19 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v5);
  v8 = &v18 - v7;
  v9 = *v1;
  v10 = v1[1];
  MEMORY[0x23EE8A1E0](*(*v1 + 16), v6);
  v11 = *(v9 + 16);
  if (v11)
  {
    v12 = v9 + ((*(v19 + 80) + 32) & ~*(v19 + 80));
    v13 = *(v19 + 72);
    do
    {
      sub_23A6C7208(v12, v8);
      sub_23A6C7AE0(&qword_27DF9D378, type metadata accessor for MobilePhotoIDDataRequest.Element, &protocol conformance descriptor for MobilePhotoIDDataRequest.Element);
      sub_23A6DF5E4();
      sub_23A6C726C(v8);
      v12 += v13;
      --v11;
    }

    while (v11);
  }

  result = MEMORY[0x23EE8A1E0](*(v10 + 16));
  v15 = *(v10 + 16);
  if (v15)
  {
    v16 = v10 + ((*(v19 + 80) + 32) & ~*(v19 + 80));
    v17 = *(v19 + 72);
    do
    {
      sub_23A6C7208(v16, v4);
      sub_23A6C7AE0(&qword_27DF9D378, type metadata accessor for MobilePhotoIDDataRequest.Element, &protocol conformance descriptor for MobilePhotoIDDataRequest.Element);
      sub_23A6DF5E4();
      result = sub_23A6C726C(v4);
      v16 += v17;
      --v15;
    }

    while (v15);
  }

  return result;
}

uint64_t sub_23A6C7208(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MobilePhotoIDDataRequest.Element(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23A6C726C(uint64_t a1)
{
  v2 = type metadata accessor for MobilePhotoIDDataRequest.Element(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t MobilePhotoIDDataRequest.hashValue.getter()
{
  v1 = type metadata accessor for MobilePhotoIDDataRequest.Element(0);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v17 - v6;
  v8 = *v0;
  v9 = v0[1];
  sub_23A6DFCE4();
  MEMORY[0x23EE8A1E0](*(v8 + 16));
  v10 = *(v8 + 16);
  if (v10)
  {
    v11 = v8 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
    v12 = *(v2 + 72);
    do
    {
      sub_23A6C7208(v11, v7);
      sub_23A6C7AE0(&qword_27DF9D378, type metadata accessor for MobilePhotoIDDataRequest.Element, &protocol conformance descriptor for MobilePhotoIDDataRequest.Element);
      sub_23A6DF5E4();
      sub_23A6C726C(v7);
      v11 += v12;
      --v10;
    }

    while (v10);
  }

  MEMORY[0x23EE8A1E0](*(v9 + 16));
  v13 = *(v9 + 16);
  if (v13)
  {
    v14 = v9 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
    v15 = *(v2 + 72);
    do
    {
      sub_23A6C7208(v14, v4);
      sub_23A6C7AE0(&qword_27DF9D378, type metadata accessor for MobilePhotoIDDataRequest.Element, &protocol conformance descriptor for MobilePhotoIDDataRequest.Element);
      sub_23A6DF5E4();
      sub_23A6C726C(v4);
      v14 += v15;
      --v13;
    }

    while (v13);
  }

  return sub_23A6DFD14();
}

uint64_t sub_23A6C74E8(uint64_t a1)
{
  v2 = type metadata accessor for MobilePhotoIDDataRequest.Element(0);
  v19 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v5);
  v8 = &v18 - v7;
  v9 = *v1;
  v10 = v1[1];
  MEMORY[0x23EE8A1E0](*(*v1 + 16), v6);
  v11 = *(v9 + 16);
  if (v11)
  {
    v12 = v9 + ((*(v19 + 80) + 32) & ~*(v19 + 80));
    v13 = *(v19 + 72);
    do
    {
      sub_23A6C7208(v12, v8);
      sub_23A6C7AE0(&qword_27DF9D378, type metadata accessor for MobilePhotoIDDataRequest.Element, &protocol conformance descriptor for MobilePhotoIDDataRequest.Element);
      sub_23A6DF5E4();
      sub_23A6C726C(v8);
      v12 += v13;
      --v11;
    }

    while (v11);
  }

  result = MEMORY[0x23EE8A1E0](*(v10 + 16));
  v15 = *(v10 + 16);
  if (v15)
  {
    v16 = v10 + ((*(v19 + 80) + 32) & ~*(v19 + 80));
    v17 = *(v19 + 72);
    do
    {
      sub_23A6C7208(v16, v4);
      sub_23A6C7AE0(&qword_27DF9D378, type metadata accessor for MobilePhotoIDDataRequest.Element, &protocol conformance descriptor for MobilePhotoIDDataRequest.Element);
      sub_23A6DF5E4();
      result = sub_23A6C726C(v4);
      v16 += v17;
      --v15;
    }

    while (v15);
  }

  return result;
}

uint64_t sub_23A6C76FC(uint64_t a1)
{
  v2 = type metadata accessor for MobilePhotoIDDataRequest.Element(0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v18 - v7;
  v9 = *v1;
  v10 = v1[1];
  sub_23A6DFCE4();
  MEMORY[0x23EE8A1E0](*(v9 + 16));
  v11 = *(v9 + 16);
  if (v11)
  {
    v12 = v9 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v13 = *(v3 + 72);
    do
    {
      sub_23A6C7208(v12, v8);
      sub_23A6C7AE0(&qword_27DF9D378, type metadata accessor for MobilePhotoIDDataRequest.Element, &protocol conformance descriptor for MobilePhotoIDDataRequest.Element);
      sub_23A6DF5E4();
      sub_23A6C726C(v8);
      v12 += v13;
      --v11;
    }

    while (v11);
  }

  MEMORY[0x23EE8A1E0](*(v10 + 16));
  v14 = *(v10 + 16);
  if (v14)
  {
    v15 = v10 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v16 = *(v3 + 72);
    do
    {
      sub_23A6C7208(v15, v5);
      sub_23A6C7AE0(&qword_27DF9D378, type metadata accessor for MobilePhotoIDDataRequest.Element, &protocol conformance descriptor for MobilePhotoIDDataRequest.Element);
      sub_23A6DF5E4();
      sub_23A6C726C(v5);
      v15 += v16;
      --v14;
    }

    while (v14);
  }

  return sub_23A6DFD14();
}

uint64_t sub_23A6C791C(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  if ((sub_23A6C6E30(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  return sub_23A6C6E30(v2, v3);
}

uint64_t static MobileDocumentRequest<>.photoIDData(retaining:notRetaining:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = a1;
  a3[1] = a2;
}

unint64_t sub_23A6C79FC(uint64_t a1)
{
  result = sub_23A6C7A24();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_23A6C7A24()
{
  result = qword_27DF9D380;
  if (!qword_27DF9D380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF9D380);
  }

  return result;
}

unint64_t sub_23A6C7A7C()
{
  result = qword_27DF9D388;
  if (!qword_27DF9D388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF9D388);
  }

  return result;
}

uint64_t sub_23A6C7AE0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t type metadata accessor for MobilePhotoIDDataRequest.Element(uint64_t a1)
{
  result = qword_27DFA2DD0;
  if (!qword_27DFA2DD0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_23A6C7DB8(uint64_t a1, uint64_t *a2, unsigned int *a3)
{
  v5 = type metadata accessor for MobilePhotoIDDataRequest.Element(0);
  __swift_allocate_value_buffer(v5, a2);
  v6 = __swift_project_value_buffer(v5, a2);
  v7 = *a3;
  v8 = sub_23A6DE9B4();
  v9 = *(*(v8 - 8) + 104);

  return v9(v6, v7, v8);
}

uint64_t sub_23A6C7E78@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for MobilePhotoIDDataRequest.Element(0);
  v7 = __swift_project_value_buffer(v6, a2);

  return sub_23A6C7208(v7, a4);
}

uint64_t static MobilePhotoIDDataRequest.Element.ageAtLeast(_:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = a1;
  v3 = *MEMORY[0x277D43A48];
  v4 = sub_23A6DE9B4();
  v5 = *(*(v4 - 8) + 104);

  return v5(a2, v3, v4);
}

uint64_t MobilePhotoIDDataRequest.Element.hash(into:)(uint64_t a1)
{
  sub_23A6DE9B4();
  sub_23A6C8238(&qword_27DF9CC10, MEMORY[0x277D43AE8], MEMORY[0x277D43AF0]);

  return sub_23A6DF5E4();
}

uint64_t MobilePhotoIDDataRequest.Element.hashValue.getter()
{
  sub_23A6DFCE4();
  sub_23A6DE9B4();
  sub_23A6C8238(&qword_27DF9CC10, MEMORY[0x277D43AE8], MEMORY[0x277D43AF0]);
  sub_23A6DF5E4();
  return sub_23A6DFD14();
}

uint64_t sub_23A6C8060()
{
  sub_23A6DFCE4();
  sub_23A6DE9B4();
  sub_23A6C8238(&qword_27DF9CC10, MEMORY[0x277D43AE8], MEMORY[0x277D43AF0]);
  sub_23A6DF5E4();
  return sub_23A6DFD14();
}

uint64_t sub_23A6C80E8(uint64_t a1)
{
  sub_23A6DE9B4();
  sub_23A6C8238(&qword_27DF9CC10, MEMORY[0x277D43AE8], MEMORY[0x277D43AF0]);

  return sub_23A6DF5E4();
}

uint64_t sub_23A6C816C(uint64_t a1)
{
  sub_23A6DFCE4();
  sub_23A6DE9B4();
  sub_23A6C8238(&qword_27DF9CC10, MEMORY[0x277D43AE8], MEMORY[0x277D43AF0]);
  sub_23A6DF5E4();
  return sub_23A6DFD14();
}

uint64_t sub_23A6C8238(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_23A6C82B4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MobilePhotoIDDataRequest.Response.DocumentElements(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t MobilePhotoIDDataRequest.Response.hash(into:)(uint64_t a1)
{
  type metadata accessor for MobilePhotoIDDataRequest.Response.DocumentElements(0);
  sub_23A6C8710(&qword_27DF9D398, type metadata accessor for MobilePhotoIDDataRequest.Response.DocumentElements, &protocol conformance descriptor for MobilePhotoIDDataRequest.Response.DocumentElements);

  return sub_23A6DF5E4();
}

uint64_t MobilePhotoIDDataRequest.Response.hashValue.getter()
{
  sub_23A6DFCE4();
  type metadata accessor for MobilePhotoIDDataRequest.Response.DocumentElements(0);
  sub_23A6C8710(&qword_27DF9D398, type metadata accessor for MobilePhotoIDDataRequest.Response.DocumentElements, &protocol conformance descriptor for MobilePhotoIDDataRequest.Response.DocumentElements);
  sub_23A6DF5E4();
  return sub_23A6DFD14();
}

uint64_t sub_23A6C8430()
{
  sub_23A6DFCE4();
  type metadata accessor for MobilePhotoIDDataRequest.Response.DocumentElements(0);
  sub_23A6C8710(&qword_27DF9D398, type metadata accessor for MobilePhotoIDDataRequest.Response.DocumentElements, &protocol conformance descriptor for MobilePhotoIDDataRequest.Response.DocumentElements);
  sub_23A6DF5E4();
  return sub_23A6DFD14();
}

uint64_t sub_23A6C84B8(uint64_t a1)
{
  type metadata accessor for MobilePhotoIDDataRequest.Response.DocumentElements(0);
  sub_23A6C8710(&qword_27DF9D398, type metadata accessor for MobilePhotoIDDataRequest.Response.DocumentElements, &protocol conformance descriptor for MobilePhotoIDDataRequest.Response.DocumentElements);

  return sub_23A6DF5E4();
}

uint64_t sub_23A6C853C(uint64_t a1)
{
  sub_23A6DFCE4();
  type metadata accessor for MobilePhotoIDDataRequest.Response.DocumentElements(0);
  sub_23A6C8710(&qword_27DF9D398, type metadata accessor for MobilePhotoIDDataRequest.Response.DocumentElements, &protocol conformance descriptor for MobilePhotoIDDataRequest.Response.DocumentElements);
  sub_23A6DF5E4();
  return sub_23A6DFD14();
}

uint64_t sub_23A6C85C0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MobilePhotoIDDataRequest.Response.DocumentElements(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_23A6C8624(uint64_t a1)
{
  result = sub_23A6C8710(&qword_27DF9CC58, type metadata accessor for MobilePhotoIDDataRequest.Response, &protocol conformance descriptor for MobilePhotoIDDataRequest.Response);
  *(a1 + 8) = result;
  return result;
}

uint64_t type metadata accessor for MobilePhotoIDDataRequest.Response(uint64_t a1)
{
  result = qword_27DFA2F60;
  if (!qword_27DFA2F60)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_23A6C8710(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_23A6C8784(uint64_t a1)
{
  result = type metadata accessor for MobilePhotoIDDataRequest.Response.DocumentElements(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t MobilePhotoIDDataRequest.Response.DocumentElements.portraitData.getter()
{
  v1 = v0 + *(type metadata accessor for MobilePhotoIDDataRequest.Response.DocumentElements(0) + 20);
  v2 = *v1;
  sub_23A693750(*v1, *(v1 + 8));
  return v2;
}

uint64_t type metadata accessor for MobilePhotoIDDataRequest.Response.DocumentElements(uint64_t a1)
{
  result = qword_27DFA3070;
  if (!qword_27DFA3070)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t MobilePhotoIDDataRequest.Response.DocumentElements.ageAtLeastElements.getter()
{
  type metadata accessor for MobilePhotoIDDataRequest.Response.DocumentElements(0);
}

uint64_t MobilePhotoIDDataRequest.Response.DocumentElements.sex.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for MobilePhotoIDDataRequest.Response.DocumentElements(0);
  *a1 = *(v1 + *(result + 36));
  return result;
}

uint64_t MobilePhotoIDDataRequest.Response.DocumentElements.address.getter()
{
  v1 = type metadata accessor for MobilePhotoIDDataRequest.Response.DocumentElements(0);
  result = 0;
  if (*(v0 + *(v1 + 40) + 8) != 1)
  {
    return sub_23A6C64E8();
  }

  return result;
}

void MobilePhotoIDDataRequest.Response.DocumentElements.issuingAuthority.getter(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for MobilePhotoIDDataRequest.Response.DocumentElements(0) + 44));
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  v8 = v3[4];
  v9 = v3[5];
  *a1 = *v3;
  a1[1] = v5;
  a1[2] = v6;
  a1[3] = v7;
  a1[4] = v8;
  a1[5] = v9;

  sub_23A6A1FA8(v4, v5, v6, v7, v8, v9);
}

uint64_t MobilePhotoIDDataRequest.Response.DocumentElements.documentNumber.getter()
{
  v1 = *(v0 + *(type metadata accessor for MobilePhotoIDDataRequest.Response.DocumentElements(0) + 48));

  return v1;
}

uint64_t MobilePhotoIDDataRequest.Response.DocumentElements.hash(into:)(uint64_t a1, __n128 a2)
{
  v3 = v2;
  v5 = sub_23A6DE0A4();
  v6 = *(v5 - 8);
  v51 = v5;
  v52 = v6;
  MEMORY[0x28223BE20](v5);
  v50 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9CCC8, &qword_23A6E3C40);
  MEMORY[0x28223BE20](v8 - 8);
  v49 = &v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v48 = &v47 - v11;
  MEMORY[0x28223BE20](v12);
  *&v47 = &v47 - v13;
  v14 = sub_23A6DE0F4();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v47 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9CCC0, &unk_23A6E3790);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = &v47 - v19;
  v21 = v3;
  sub_23A646D48(v3, &v47 - v19, &qword_27DF9CCC0, &unk_23A6E3790);
  if ((*(v15 + 48))(v20, 1, v14) == 1)
  {
    sub_23A6DFD04();
  }

  else
  {
    (*(v15 + 32))(v17, v20, v14);
    sub_23A6DFD04();
    sub_23A6CAB64(&qword_27DF9CCF8, MEMORY[0x277CC8E50], MEMORY[0x277CC8E60]);
    sub_23A6DF5E4();
    (*(v15 + 8))(v17, v14);
  }

  v22 = type metadata accessor for MobilePhotoIDDataRequest.Response.DocumentElements(0);
  v23 = v51;
  if (*(v3 + v22[5] + 8) >> 60 == 15)
  {
    sub_23A6DFD04();
  }

  else
  {
    sub_23A6DFD04();
    sub_23A6DE244();
  }

  sub_23A6A3D10(a1, *(v3 + v22[6]));
  v24 = v3 + v22[7];
  if (*(v24 + 8) == 1)
  {
    sub_23A6DFD04();
  }

  else
  {
    v25 = *v24;
    sub_23A6DFD04();
    MEMORY[0x23EE8A1E0](v25);
  }

  v26 = v52;
  v27 = v47;
  sub_23A646D48(v3 + v22[8], v47, &qword_27DF9CCC8, &qword_23A6E3C40);
  v28 = *(v26 + 48);
  if (v28(v27, 1, v23) == 1)
  {
    sub_23A6DFD04();
  }

  else
  {
    v29 = v50;
    (*(v26 + 32))(v50, v27, v23);
    sub_23A6DFD04();
    sub_23A6CAB64(&qword_27DF9CD00, MEMORY[0x277CC8990], MEMORY[0x277CC89A0]);
    sub_23A6DF5E4();
    (*(v26 + 8))(v29, v23);
  }

  if (*(v21 + v22[9]) == 4)
  {
    sub_23A6DFD04();
  }

  else
  {
    LOBYTE(v63) = *(v21 + v22[9]);
    sub_23A6DFD04();
    sub_23A6CA7D4();
    sub_23A6DF5E4();
  }

  v30 = v21 + v22[10];
  v31 = *v30;
  v32 = *(v30 + 8);
  v33 = *(v30 + 32);
  v65 = *(v30 + 16);
  v66 = v33;
  v34 = *(v30 + 64);
  v67 = *(v30 + 48);
  v68 = v34;
  if (v32 == 1)
  {
    sub_23A6DFD04();
  }

  else
  {
    v35 = *(v30 + 32);
    v54 = *(v30 + 16);
    v55 = v35;
    v36 = *(v30 + 64);
    v56 = *(v30 + 48);
    v57 = v36;
    *&v53 = v31;
    *(&v53 + 1) = v32;
    sub_23A6DFD04();
    v58[0] = v31;
    v58[1] = v32;
    v59 = v65;
    v60 = v66;
    v61 = v67;
    v62 = v68;
    sub_23A6A5A74(v58, &v63);
    sub_23A6A5AD0();
    sub_23A6DF5E4();
    v64[1] = v55;
    v64[2] = v56;
    v64[3] = v57;
    v63 = v53;
    v64[0] = v54;
    sub_23A6A5B24(&v63);
  }

  v37 = v21 + v22[11];
  v38 = *(v37 + 8);
  if (v38 == 1)
  {
    sub_23A6DFD04();
  }

  else
  {
    v39 = *(v37 + 40);
    v40 = *(v37 + 16);
    *&v63 = *v37;
    *(&v63 + 1) = v38;
    *&v64[0] = v40;
    v47 = *(v37 + 24);
    *(v64 + 8) = v47;
    *(&v64[1] + 1) = v39;
    sub_23A6DFD04();
    sub_23A6CA828();

    v23 = v51;
    sub_23A6DF5E4();
  }

  if (*(v21 + v22[12] + 8))
  {
    sub_23A6DFD04();
    sub_23A6DF684();
  }

  else
  {
    sub_23A6DFD04();
  }

  v41 = v52;
  v42 = v48;
  sub_23A646D48(v21 + v22[13], v48, &qword_27DF9CCC8, &qword_23A6E3C40);
  if (v28(v42, 1, v23) == 1)
  {
    sub_23A6DFD04();
  }

  else
  {
    v43 = v50;
    (*(v41 + 32))(v50, v42, v23);
    sub_23A6DFD04();
    sub_23A6CAB64(&qword_27DF9CD00, MEMORY[0x277CC8990], MEMORY[0x277CC89A0]);
    sub_23A6DF5E4();
    (*(v41 + 8))(v43, v23);
  }

  v44 = v49;
  sub_23A646D48(v21 + v22[14], v49, &qword_27DF9CCC8, &qword_23A6E3C40);
  if (v28(v44, 1, v23) == 1)
  {
    return sub_23A6DFD04();
  }

  v46 = v50;
  (*(v41 + 32))(v50, v44, v23);
  sub_23A6DFD04();
  sub_23A6CAB64(&qword_27DF9CD00, MEMORY[0x277CC8990], MEMORY[0x277CC89A0]);
  sub_23A6DF5E4();
  return (*(v41 + 8))(v46, v23);
}

uint64_t MobilePhotoIDDataRequest.Response.DocumentElements.hashValue.getter()
{
  sub_23A6DFCE4();
  MobilePhotoIDDataRequest.Response.DocumentElements.hash(into:)(v2, v0);
  return sub_23A6DFD14();
}

uint64_t sub_23A6C93CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X6>, char *a8@<X7>, uint64_t a9@<X8>, _OWORD *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  v21 = *a8;
  v33 = *(a11 + 40);
  v34 = *(a11 + 32);
  sub_23A69EED0(a1, a9, &qword_27DF9CCC0, &unk_23A6E3790);
  v22 = type metadata accessor for MobilePhotoIDDataRequest.Response.DocumentElements(0);
  v23 = (a9 + v22[5]);
  *v23 = a2;
  v23[1] = a3;
  *(a9 + v22[6]) = a4;
  v24 = a9 + v22[7];
  *v24 = a5;
  *(v24 + 8) = a6 & 1;
  sub_23A69EED0(a7, a9 + v22[8], &qword_27DF9CCC8, &qword_23A6E3C40);
  *(a9 + v22[9]) = v21;
  v25 = (a9 + v22[10]);
  v26 = a10[3];
  v25[2] = a10[2];
  v25[3] = v26;
  v25[4] = a10[4];
  v27 = a10[1];
  *v25 = *a10;
  v25[1] = v27;
  v28 = a9 + v22[11];
  v29 = *(a11 + 16);
  *v28 = *a11;
  *(v28 + 16) = v29;
  *(v28 + 32) = v34;
  *(v28 + 40) = v33;
  v30 = (a9 + v22[12]);
  *v30 = a12;
  v30[1] = a13;
  sub_23A69EED0(a14, a9 + v22[13], &qword_27DF9CCC8, &qword_23A6E3C40);
  return sub_23A69EED0(a15, a9 + v22[14], &qword_27DF9CCC8, &qword_23A6E3C40);
}

uint64_t sub_23A6C9550()
{
  sub_23A6DFCE4();
  MobilePhotoIDDataRequest.Response.DocumentElements.hash(into:)(v2, v0);
  return sub_23A6DFD14();
}

uint64_t sub_23A6C9594(uint64_t a1)
{
  sub_23A6DFCE4();
  MobilePhotoIDDataRequest.Response.DocumentElements.hash(into:)(v3, v1);
  return sub_23A6DFD14();
}

BOOL _s15ProximityReader24MobilePhotoIDDataRequestV8ResponseV16DocumentElementsV2eeoiySbAG_AGtFZ_0(uint64_t a1, uint64_t a2, __n128 a3)
{
  v167 = a2;
  v4 = sub_23A6DE0A4();
  v5 = *(v4 - 8);
  v164 = v4;
  v165 = v5;
  MEMORY[0x28223BE20](v4);
  v160 = &v148 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9CCC8, &qword_23A6E3C40);
  MEMORY[0x28223BE20](v7 - 8);
  v156 = &v148 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v157 = &v148 - v10;
  MEMORY[0x28223BE20](v11);
  v161 = &v148 - v12;
  v163 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9CDF0, &qword_23A6E3DA0);
  MEMORY[0x28223BE20](v163);
  v158 = &v148 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v159 = &v148 - v15;
  MEMORY[0x28223BE20](v16);
  v162 = &v148 - v17;
  v18 = sub_23A6DE0F4();
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v21 = &v148 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9CCC0, &unk_23A6E3790);
  MEMORY[0x28223BE20](v22 - 8);
  v24 = &v148 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9CDF8, &qword_23A6E3900);
  MEMORY[0x28223BE20](v25 - 8);
  v27 = &v148 - v26;
  v29 = *(v28 + 56);
  v166 = a1;
  sub_23A646D48(a1, &v148 - v26, &qword_27DF9CCC0, &unk_23A6E3790);
  sub_23A646D48(v167, &v27[v29], &qword_27DF9CCC0, &unk_23A6E3790);
  v30 = *(v19 + 48);
  if (v30(v27, 1, v18) == 1)
  {
    if (v30(&v27[v29], 1, v18) == 1)
    {
      sub_23A646DB0(v27, &qword_27DF9CCC0, &unk_23A6E3790);
      goto LABEL_9;
    }

LABEL_6:
    v31 = &qword_27DF9CDF8;
    v32 = &qword_23A6E3900;
    v33 = v27;
LABEL_7:
    sub_23A646DB0(v33, v31, v32);
    return 0;
  }

  sub_23A646D48(v27, v24, &qword_27DF9CCC0, &unk_23A6E3790);
  if (v30(&v27[v29], 1, v18) == 1)
  {
    (*(v19 + 8))(v24, v18);
    goto LABEL_6;
  }

  (*(v19 + 32))(v21, &v27[v29], v18);
  sub_23A6CAB64(&qword_27DF9CE50, MEMORY[0x277CC8E50], MEMORY[0x277CC8E68]);
  v34 = sub_23A6DF604();
  v35 = *(v19 + 8);
  v35(v21, v18);
  v35(v24, v18);
  sub_23A646DB0(v27, &qword_27DF9CCC0, &unk_23A6E3790);
  if ((v34 & 1) == 0)
  {
    return 0;
  }

LABEL_9:
  v36 = type metadata accessor for MobilePhotoIDDataRequest.Response.DocumentElements(0);
  v37 = v36[5];
  v39 = v166;
  v38 = v167;
  v41 = *(v166 + v37);
  v40 = *(v166 + v37 + 8);
  v42 = (v167 + v37);
  v44 = *v42;
  v43 = v42[1];
  if (v40 >> 60 == 15)
  {
    if (v43 >> 60 == 15)
    {
      sub_23A693750(v41, v40);
      sub_23A693750(v44, v43);
      sub_23A6A62F8(v41, v40);
      goto LABEL_15;
    }

LABEL_13:
    sub_23A693750(v41, v40);
    sub_23A693750(v44, v43);
    sub_23A6A62F8(v41, v40);
    sub_23A6A62F8(v44, v43);
    return 0;
  }

  if (v43 >> 60 == 15)
  {
    goto LABEL_13;
  }

  sub_23A693750(v41, v40);
  sub_23A693750(v44, v43);
  v45 = sub_23A6A3EE8(v41, v40, v44, v43);
  sub_23A6A62F8(v44, v43);
  sub_23A6A62F8(v41, v40);
  if (!v45)
  {
    return 0;
  }

LABEL_15:
  if ((sub_23A6A216C(*(v39 + v36[6]), *(v38 + v36[6])) & 1) == 0)
  {
    return 0;
  }

  v46 = v36[7];
  v47 = (v39 + v46);
  v48 = *(v39 + v46 + 8);
  v49 = (v38 + v46);
  v50 = *(v38 + v46 + 8);
  if (v48)
  {
    if (!v50)
    {
      return 0;
    }
  }

  else
  {
    if (*v47 != *v49)
    {
      LOBYTE(v50) = 1;
    }

    if (v50)
    {
      return 0;
    }
  }

  v155 = v36;
  v52 = v36[8];
  v53 = v162;
  v54 = *(v163 + 48);
  sub_23A646D48(v39 + v52, v162, &qword_27DF9CCC8, &qword_23A6E3C40);
  v55 = v53;
  sub_23A646D48(v38 + v52, v53 + v54, &qword_27DF9CCC8, &qword_23A6E3C40);
  v56 = v164;
  v58 = v165 + 48;
  v57 = *(v165 + 48);
  if (v57(v55, 1, v164) == 1)
  {
    if (v57(v55 + v54, 1, v56) == 1)
    {
      sub_23A646DB0(v55, &qword_27DF9CCC8, &qword_23A6E3C40);
      goto LABEL_30;
    }

    goto LABEL_28;
  }

  v59 = v161;
  sub_23A646D48(v55, v161, &qword_27DF9CCC8, &qword_23A6E3C40);
  if (v57(v55 + v54, 1, v56) == 1)
  {
    (*(v165 + 8))(v59, v56);
LABEL_28:
    v31 = &qword_27DF9CDF0;
    v32 = &qword_23A6E3DA0;
    v33 = v55;
    goto LABEL_7;
  }

  v60 = v165;
  v61 = v160;
  (*(v165 + 32))(v160, v55 + v54, v56);
  sub_23A6CAB64(&qword_27DF9CE10, MEMORY[0x277CC8990], MEMORY[0x277CC89A8]);
  v154 = v58;
  v62 = v57;
  v63 = v55;
  v64 = sub_23A6DF604();
  v65 = *(v60 + 8);
  v65(v61, v56);
  v66 = v59;
  v39 = v166;
  v38 = v167;
  v65(v66, v56);
  v67 = v63;
  v57 = v62;
  sub_23A646DB0(v67, &qword_27DF9CCC8, &qword_23A6E3C40);
  if ((v64 & 1) == 0)
  {
    return 0;
  }

LABEL_30:
  v68 = v155;
  v69 = v155[9];
  v70 = *(v39 + v69);
  v71 = *(v38 + v69);
  if (v70 == 4)
  {
    if (v71 != 4)
    {
      return 0;
    }
  }

  else
  {
    LOBYTE(v180) = v70;
    if (v71 == 4)
    {
      return 0;
    }

    LOBYTE(v202[0]) = v71;
    sub_23A6CAB10();
    if ((sub_23A6DF604() & 1) == 0)
    {
      return 0;
    }
  }

  v72 = (v39 + v68[10]);
  v73 = v72[1];
  v74 = v72[3];
  v199 = v72[2];
  v200 = v74;
  v75 = v72[3];
  v201 = v72[4];
  v76 = v72[1];
  v198[0] = *v72;
  v198[1] = v76;
  v77 = (v38 + v68[10]);
  v78 = v77[3];
  v205 = v77[4];
  v79 = v77[3];
  v80 = v77[1];
  v203 = v77[2];
  v204 = v79;
  v81 = v77[1];
  v202[0] = *v77;
  v202[1] = v81;
  v194 = v73;
  v195 = v199;
  v82 = v72[4];
  v196 = v75;
  v197 = v82;
  v83 = v77[4];
  v192 = v78;
  v193 = v83;
  v84 = v198[0];
  v85 = v202[0];
  v190 = v80;
  v191 = v203;
  if (*(&v198[0] + 1) == 1)
  {
    if (*(&v202[0] + 1) == 1)
    {
      *&v180 = *&v198[0];
      *(&v180 + 1) = 1;
      v86 = v72[2];
      v181 = v72[1];
      v182 = v86;
      v87 = v72[4];
      v183 = v72[3];
      v184 = v87;
      sub_23A646D48(v198, &v175, &qword_27DF9CCD0, &qword_23A6E37A0);
      sub_23A646D48(v202, &v175, &qword_27DF9CCD0, &qword_23A6E37A0);
      sub_23A646DB0(&v180, &qword_27DF9CCD0, &qword_23A6E37A0);
      goto LABEL_43;
    }

    sub_23A646D48(v198, &v180, &qword_27DF9CCD0, &qword_23A6E37A0);
    sub_23A646D48(v202, &v180, &qword_27DF9CCD0, &qword_23A6E37A0);
    goto LABEL_41;
  }

  v180 = v198[0];
  v88 = v72[2];
  v181 = v72[1];
  v182 = v88;
  v89 = v72[4];
  v183 = v72[3];
  v184 = v89;
  v177 = v88;
  v178 = v183;
  v179 = v89;
  v175 = v198[0];
  v176 = v181;
  if (*(&v202[0] + 1) == 1)
  {
    v172 = v182;
    v173 = v183;
    v174 = v184;
    v170 = v180;
    v171 = v181;
    sub_23A646D48(v198, v169, &qword_27DF9CCD0, &qword_23A6E37A0);
    sub_23A646D48(v202, v169, &qword_27DF9CCD0, &qword_23A6E37A0);
    sub_23A646D48(&v180, v169, &qword_27DF9CCD0, &qword_23A6E37A0);
    sub_23A6A5B24(&v170);
LABEL_41:
    v180 = v84;
    v181 = v194;
    v182 = v195;
    v183 = v196;
    v184 = v197;
    v185 = v85;
    v186 = v190;
    v187 = v191;
    v188 = v192;
    v189 = v193;
    v31 = &qword_27DF9CE00;
    v32 = &qword_23A6E3908;
    v33 = &v180;
    goto LABEL_7;
  }

  v90 = v77[2];
  v171 = v77[1];
  v172 = v90;
  v91 = v77[4];
  v173 = v77[3];
  v174 = v91;
  v170 = v202[0];
  sub_23A646D48(v198, v169, &qword_27DF9CCD0, &qword_23A6E37A0);
  sub_23A646D48(v202, v169, &qword_27DF9CCD0, &qword_23A6E37A0);
  sub_23A646D48(&v180, v169, &qword_27DF9CCD0, &qword_23A6E37A0);
  sub_23A6A64F8();
  v92 = sub_23A6DF604();
  v168[2] = v172;
  v168[3] = v173;
  v168[4] = v174;
  v168[0] = v170;
  v168[1] = v171;
  sub_23A6A5B24(v168);
  v169[2] = v177;
  v169[3] = v178;
  v169[4] = v179;
  v169[0] = v175;
  v169[1] = v176;
  sub_23A6A5B24(v169);
  v170 = v84;
  v171 = v194;
  v172 = v195;
  v173 = v196;
  v174 = v197;
  sub_23A646DB0(&v170, &qword_27DF9CCD0, &qword_23A6E37A0);
  if ((v92 & 1) == 0)
  {
    return 0;
  }

LABEL_43:
  v93 = v155[11];
  v95 = *(v166 + v93);
  v94 = *(v166 + v93 + 8);
  v97 = *(v166 + v93 + 16);
  v96 = *(v166 + v93 + 24);
  v99 = *(v166 + v93 + 32);
  v98 = *(v166 + v93 + 40);
  v100 = (v167 + v93);
  v101 = *v100;
  v102 = v100[1];
  v104 = v100[2];
  v103 = v100[3];
  v105 = v100[4];
  v153 = v100[5];
  v154 = v101;
  v161 = v104;
  v162 = v103;
  if (v94 == 1)
  {
    v152 = 1;
    v106 = v96;
    sub_23A6A1FA8(v95, 1, v97, v96, v99, v98);
    if (v102 == 1)
    {
      sub_23A6A1FA8(v154, 1, v161, v162, v105, v153);
      sub_23A6A630C(v95, 1, v97, v106, v99, v98);
      goto LABEL_51;
    }

    v110 = v153;
    sub_23A6A1FA8(v154, v102, v161, v162, v105, v153);
    v108 = v152;
LABEL_49:
    sub_23A6A630C(v95, v108, v97, v106, v99, v98);
    sub_23A6A630C(v154, v102, v161, v162, v105, v110);
    return 0;
  }

  *&v180 = v95;
  *(&v180 + 1) = v94;
  *&v181 = v97;
  *(&v181 + 1) = v96;
  *&v182 = v99;
  *(&v182 + 1) = v98;
  if (v102 == 1)
  {
    v107 = v101;
    v108 = v94;
    v106 = v96;
    sub_23A6A1FA8(v95, v94, v97, v96, v99, v98);
    v109 = v107;
    v110 = v153;
    sub_23A6A1FA8(v109, 1, v161, v162, v105, v153);
    sub_23A6A1FA8(v95, v108, v97, v106, v99, v98);

    goto LABEL_49;
  }

  *&v175 = v101;
  *(&v175 + 1) = v102;
  *&v176 = v104;
  *(&v176 + 1) = v103;
  v111 = v153;
  *&v177 = v105;
  *(&v177 + 1) = v153;
  v149 = v95;
  v150 = v97;
  v112 = v95;
  v113 = v94;
  v151 = v96;
  v152 = v94;
  v114 = v97;
  v115 = v96;
  sub_23A6A1FA8(v112, v94, v114, v96, v99, v98);
  sub_23A6A1FA8(v154, v102, v161, v162, v105, v111);
  v117 = v149;
  v116 = v150;
  sub_23A6A1FA8(v149, v113, v150, v115, v99, v98);
  sub_23A6CAABC();
  LOBYTE(v115) = sub_23A6DF604();

  sub_23A6A630C(v117, v152, v116, v151, v99, v98);
  if ((v115 & 1) == 0)
  {
    return 0;
  }

LABEL_51:
  v118 = v155;
  v119 = v155[12];
  v120 = v167;
  v121 = (v166 + v119);
  v122 = *(v166 + v119 + 8);
  v123 = (v167 + v119);
  v124 = v123[1];
  if (v122)
  {
    if (!v124 || (*v121 != *v123 || v122 != v124) && (sub_23A6DFC04() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v124)
  {
    return 0;
  }

  v125 = v118[13];
  v126 = *(v163 + 48);
  v127 = v159;
  sub_23A646D48(v166 + v125, v159, &qword_27DF9CCC8, &qword_23A6E3C40);
  v128 = v120 + v125;
  v129 = v127;
  sub_23A646D48(v128, v127 + v126, &qword_27DF9CCC8, &qword_23A6E3C40);
  v130 = v164;
  if (v57(v127, 1, v164) == 1)
  {
    if (v57(v127 + v126, 1, v130) == 1)
    {
      sub_23A646DB0(v127, &qword_27DF9CCC8, &qword_23A6E3C40);
      goto LABEL_65;
    }

    goto LABEL_63;
  }

  v131 = v157;
  sub_23A646D48(v127, v157, &qword_27DF9CCC8, &qword_23A6E3C40);
  if (v57(v127 + v126, 1, v130) == 1)
  {
    (*(v165 + 8))(v131, v130);
LABEL_63:
    v31 = &qword_27DF9CDF0;
    v32 = &qword_23A6E3DA0;
    v33 = v127;
    goto LABEL_7;
  }

  v132 = v165;
  v133 = v127 + v126;
  v134 = v160;
  (*(v165 + 32))(v160, v133, v130);
  sub_23A6CAB64(&qword_27DF9CE10, MEMORY[0x277CC8990], MEMORY[0x277CC89A8]);
  LODWORD(v162) = sub_23A6DF604();
  v135 = *(v132 + 8);
  v135(v134, v130);
  v135(v131, v130);
  sub_23A646DB0(v129, &qword_27DF9CCC8, &qword_23A6E3C40);
  if ((v162 & 1) == 0)
  {
    return 0;
  }

LABEL_65:
  v136 = v155[14];
  v137 = *(v163 + 48);
  v138 = v158;
  sub_23A646D48(v166 + v136, v158, &qword_27DF9CCC8, &qword_23A6E3C40);
  sub_23A646D48(v167 + v136, v138 + v137, &qword_27DF9CCC8, &qword_23A6E3C40);
  v139 = v164;
  if (v57(v138, 1, v164) != 1)
  {
    sub_23A646D48(v138, v156, &qword_27DF9CCC8, &qword_23A6E3C40);
    if (v57(v138 + v137, 1, v139) != 1)
    {
      v140 = v165;
      v141 = v158;
      v142 = v158 + v137;
      v143 = v160;
      v144 = v164;
      (*(v165 + 32))(v160, v142, v164);
      sub_23A6CAB64(&qword_27DF9CE10, MEMORY[0x277CC8990], MEMORY[0x277CC89A8]);
      v145 = v156;
      v146 = sub_23A6DF604();
      v147 = *(v140 + 8);
      v147(v143, v144);
      v147(v145, v144);
      sub_23A646DB0(v141, &qword_27DF9CCC8, &qword_23A6E3C40);
      return (v146 & 1) != 0;
    }

    (*(v165 + 8))(v156, v164);
    v138 = v158;
    goto LABEL_70;
  }

  if (v57(v138 + v137, 1, v139) != 1)
  {
LABEL_70:
    v31 = &qword_27DF9CDF0;
    v32 = &qword_23A6E3DA0;
    v33 = v138;
    goto LABEL_7;
  }

  sub_23A646DB0(v138, &qword_27DF9CCC8, &qword_23A6E3C40);
  return 1;
}

unint64_t sub_23A6CA7D4()
{
  result = qword_27DF9D3A8;
  if (!qword_27DF9D3A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF9D3A8);
  }

  return result;
}

unint64_t sub_23A6CA828()
{
  result = qword_27DF9D3B0;
  if (!qword_27DF9D3B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF9D3B0);
  }

  return result;
}

void sub_23A6CA8EC(uint64_t a1)
{
  sub_23A6AF2EC(319, &qword_27DF9CD60, MEMORY[0x277CC8E50]);
  if (v1 <= 0x3F)
  {
    sub_23A6A62AC(319, &qword_27DF9CD68, MEMORY[0x277CC9318]);
    if (v2 <= 0x3F)
    {
      sub_23A6A6194();
      if (v3 <= 0x3F)
      {
        sub_23A6A62AC(319, &qword_27DF9CD78, MEMORY[0x277D83B88]);
        if (v4 <= 0x3F)
        {
          sub_23A6AF2EC(319, &qword_27DF9CD80, MEMORY[0x277CC8990]);
          if (v5 <= 0x3F)
          {
            sub_23A6A62AC(319, &qword_27DF9D3C0, &type metadata for MobilePhotoIDDataRequest.Response.DocumentElements.Sex);
            if (v6 <= 0x3F)
            {
              sub_23A6A62AC(319, &qword_27DF9CD90, &type metadata for PostalAddressInternal);
              if (v7 <= 0x3F)
              {
                sub_23A6A62AC(319, &qword_27DF9D3C8, &type metadata for MobilePhotoIDDataRequest.Response.DocumentElements.IssuingAuthority);
                if (v8 <= 0x3F)
                {
                  sub_23A6A62AC(319, &qword_27DF9C7C8, MEMORY[0x277D837D0]);
                  if (v9 <= 0x3F)
                  {
                    swift_cvw_initStructMetadataWithLayoutString();
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

unint64_t sub_23A6CAABC()
{
  result = qword_27DF9D3D0;
  if (!qword_27DF9D3D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF9D3D0);
  }

  return result;
}

unint64_t sub_23A6CAB10()
{
  result = qword_27DF9D3D8;
  if (!qword_27DF9D3D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF9D3D8);
  }

  return result;
}

uint64_t sub_23A6CAB64(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t MobilePhotoIDDataRequest.Response.DocumentElements.IssuingAuthority.name.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t MobilePhotoIDDataRequest.Response.DocumentElements.IssuingAuthority.jurisdiction.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t MobilePhotoIDDataRequest.Response.DocumentElements.IssuingAuthority.isoCountryCode.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t MobilePhotoIDDataRequest.Response.DocumentElements.IssuingAuthority.hash(into:)(uint64_t a1)
{
  v2 = v1[3];
  v3 = v1[5];
  if (v1[1])
  {
    sub_23A6DFD04();
    sub_23A6DF684();
    if (v2)
    {
      goto LABEL_3;
    }

LABEL_8:
    sub_23A6DFD04();
    if (v3)
    {
      goto LABEL_4;
    }

    return sub_23A6DFD04();
  }

  sub_23A6DFD04();
  if (!v2)
  {
    goto LABEL_8;
  }

LABEL_3:
  sub_23A6DFD04();
  sub_23A6DF684();
  if (!v3)
  {
    return sub_23A6DFD04();
  }

LABEL_4:
  sub_23A6DFD04();

  return sub_23A6DF684();
}

uint64_t MobilePhotoIDDataRequest.Response.DocumentElements.IssuingAuthority.hashValue.getter()
{
  v1 = v0[1];
  v2 = v0[3];
  v3 = v0[5];
  sub_23A6DFCE4();
  if (v1)
  {
    sub_23A6DFD04();
    sub_23A6DF684();
    if (v2)
    {
      goto LABEL_3;
    }

LABEL_6:
    sub_23A6DFD04();
    if (v3)
    {
      goto LABEL_4;
    }

LABEL_7:
    sub_23A6DFD04();
    return sub_23A6DFD14();
  }

  sub_23A6DFD04();
  if (!v2)
  {
    goto LABEL_6;
  }

LABEL_3:
  sub_23A6DFD04();
  sub_23A6DF684();
  if (!v3)
  {
    goto LABEL_7;
  }

LABEL_4:
  sub_23A6DFD04();
  sub_23A6DF684();
  return sub_23A6DFD14();
}

uint64_t MobilePhotoIDDataRequest.Response.DocumentElements.Sex.hashValue.getter()
{
  v1 = *v0;
  sub_23A6DFCE4();
  MEMORY[0x23EE8A1E0](v1);
  return sub_23A6DFD14();
}

uint64_t MobilePhotoIDDataRequest.Response.DocumentElements.Sex.localizedName.getter()
{
  v1 = sub_23A6DEFB4();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x28223BE20](v1);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v2 + 104))(v5, **(&unk_278B54500 + *v0), v1, v3);
  v6 = sub_23A6DEFA4();
  (*(v2 + 8))(v5, v1);
  return v6;
}

uint64_t MobileDocumentDisplayRequest.elements.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t type metadata accessor for MobileDocumentDisplayRequest(uint64_t a1)
{
  result = qword_27DFA3400;
  if (!qword_27DFA3400)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t MobileDocumentDisplayRequest.options.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for MobileDocumentDisplayRequest(0) + 20);

  return sub_23A6CB0F8(a1, v3);
}

uint64_t sub_23A6CB0F8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MobileDocumentDisplayRequest.Options(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t MobileDocumentDisplayRequest.init(elements:options:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = a1;
  v4 = a3 + *(type metadata accessor for MobileDocumentDisplayRequest(0) + 20);

  return sub_23A6CB1F0(a2, v4);
}

uint64_t sub_23A6CB1F0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MobileDocumentDisplayRequest.Options(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

BOOL static MobileDocumentDisplayRequest.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  if ((sub_23A6CB2BC(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  v4 = *(type metadata accessor for MobileDocumentDisplayRequest(0) + 20);

  return static MobileDocumentDisplayRequest.Options.== infix(_:_:)((a1 + v4), (a2 + v4));
}

uint64_t sub_23A6CB2BC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MobileDocumentDisplayRequest.Element(0);
  MEMORY[0x28223BE20](v4);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = &v18 - v9;
  v11 = *(a1 + 16);
  if (v11 == *(a2 + 16))
  {
    if (!v11 || a1 == a2)
    {
      v16 = 1;
    }

    else
    {
      v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
      v13 = a1 + v12;
      v14 = a2 + v12;
      v15 = *(v8 + 72);
      do
      {
        sub_23A6CB674(v13, v10, type metadata accessor for MobileDocumentDisplayRequest.Element);
        sub_23A6CB674(v14, v6, type metadata accessor for MobileDocumentDisplayRequest.Element);
        sub_23A6CBF9C(&qword_27DF9D410, type metadata accessor for MobileDocumentDisplayRequest.Element, &protocol conformance descriptor for MobileDocumentDisplayRequest.Element);
        v16 = sub_23A6DF604();
        sub_23A6CB6DC(v6);
        sub_23A6CB6DC(v10);
        if ((v16 & 1) == 0)
        {
          break;
        }

        v14 += v15;
        v13 += v15;
        --v11;
      }

      while (v11);
    }
  }

  else
  {
    v16 = 0;
  }

  return v16 & 1;
}

uint64_t MobileDocumentDisplayRequest.hash(into:)(uint64_t a1)
{
  v2 = type metadata accessor for MobileDocumentDisplayRequest.Element(0);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v1;
  MEMORY[0x23EE8A1E0](*(*v1 + 16), v4);
  v8 = *(v7 + 16);
  if (v8)
  {
    v9 = v7 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);
    do
    {
      sub_23A6CB674(v9, v6, type metadata accessor for MobileDocumentDisplayRequest.Element);
      sub_23A6CBF9C(&qword_27DF9D3E0, type metadata accessor for MobileDocumentDisplayRequest.Element, &protocol conformance descriptor for MobileDocumentDisplayRequest.Element);
      sub_23A6DF5E4();
      sub_23A6CB6DC(v6);
      v9 += v10;
      --v8;
    }

    while (v8);
  }

  type metadata accessor for MobileDocumentDisplayRequest(0);
  type metadata accessor for MobileDocumentDisplayRequest.Options(0);
  sub_23A6CBF9C(&qword_27DF9D3E8, type metadata accessor for MobileDocumentDisplayRequest.Options, &protocol conformance descriptor for MobileDocumentDisplayRequest.Options);
  return sub_23A6DF5E4();
}

uint64_t sub_23A6CB674(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_23A6CB6DC(uint64_t a1)
{
  v2 = type metadata accessor for MobileDocumentDisplayRequest.Element(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t MobileDocumentDisplayRequest.hashValue.getter()
{
  v1 = type metadata accessor for MobileDocumentDisplayRequest.Element(0);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23A6DFCE4();
  v5 = *v0;
  MEMORY[0x23EE8A1E0](*(*v0 + 16));
  v6 = *(v5 + 16);
  if (v6)
  {
    v7 = v5 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
    v8 = *(v2 + 72);
    do
    {
      sub_23A6CB674(v7, v4, type metadata accessor for MobileDocumentDisplayRequest.Element);
      sub_23A6CBF9C(&qword_27DF9D3E0, type metadata accessor for MobileDocumentDisplayRequest.Element, &protocol conformance descriptor for MobileDocumentDisplayRequest.Element);
      sub_23A6DF5E4();
      sub_23A6CB6DC(v4);
      v7 += v8;
      --v6;
    }

    while (v6);
  }

  type metadata accessor for MobileDocumentDisplayRequest(0);
  type metadata accessor for MobileDocumentDisplayRequest.Options(0);
  sub_23A6CBF9C(&qword_27DF9D3E8, type metadata accessor for MobileDocumentDisplayRequest.Options, &protocol conformance descriptor for MobileDocumentDisplayRequest.Options);
  sub_23A6DF5E4();
  return sub_23A6DFD14();
}

uint64_t sub_23A6CB914(uint64_t a1)
{
  v2 = type metadata accessor for MobileDocumentDisplayRequest.Element(0);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v1;
  MEMORY[0x23EE8A1E0](*(*v1 + 16), v4);
  v8 = *(v7 + 16);
  if (v8)
  {
    v9 = v7 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);
    do
    {
      sub_23A6CB674(v9, v6, type metadata accessor for MobileDocumentDisplayRequest.Element);
      sub_23A6CBF9C(&qword_27DF9D3E0, type metadata accessor for MobileDocumentDisplayRequest.Element, &protocol conformance descriptor for MobileDocumentDisplayRequest.Element);
      sub_23A6DF5E4();
      sub_23A6CB6DC(v6);
      v9 += v10;
      --v8;
    }

    while (v8);
  }

  type metadata accessor for MobileDocumentDisplayRequest.Options(0);
  sub_23A6CBF9C(&qword_27DF9D3E8, type metadata accessor for MobileDocumentDisplayRequest.Options, &protocol conformance descriptor for MobileDocumentDisplayRequest.Options);
  return sub_23A6DF5E4();
}

uint64_t sub_23A6CBADC(uint64_t a1)
{
  v2 = type metadata accessor for MobileDocumentDisplayRequest.Element(0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23A6DFCE4();
  v6 = *v1;
  MEMORY[0x23EE8A1E0](*(*v1 + 16));
  v7 = *(v6 + 16);
  if (v7)
  {
    v8 = v6 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v9 = *(v3 + 72);
    do
    {
      sub_23A6CB674(v8, v5, type metadata accessor for MobileDocumentDisplayRequest.Element);
      sub_23A6CBF9C(&qword_27DF9D3E0, type metadata accessor for MobileDocumentDisplayRequest.Element, &protocol conformance descriptor for MobileDocumentDisplayRequest.Element);
      sub_23A6DF5E4();
      sub_23A6CB6DC(v5);
      v8 += v9;
      --v7;
    }

    while (v7);
  }

  type metadata accessor for MobileDocumentDisplayRequest.Options(0);
  sub_23A6CBF9C(&qword_27DF9D3E8, type metadata accessor for MobileDocumentDisplayRequest.Options, &protocol conformance descriptor for MobileDocumentDisplayRequest.Options);
  sub_23A6DF5E4();
  return sub_23A6DFD14();
}

BOOL sub_23A6CBCBC(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  if ((sub_23A6CB2BC(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  v6 = *(a3 + 20);

  return static MobileDocumentDisplayRequest.Options.== infix(_:_:)((a1 + v6), (a2 + v6));
}

uint64_t static MobileDocumentRequest<>.displayDocument(_:options:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = type metadata accessor for MobileDocumentDisplayRequest(0);
  sub_23A6CB674(a2, a3 + *(v6 + 20), type metadata accessor for MobileDocumentDisplayRequest.Options);
  *a3 = a1;
}

unint64_t sub_23A6CBDA4()
{
  result = qword_27DF9D3F0;
  if (!qword_27DF9D3F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF9D3F0);
  }

  return result;
}

uint64_t sub_23A6CBDF8(uint64_t a1)
{
  result = sub_23A6CBF9C(&qword_27DF9D3F8, type metadata accessor for MobileDocumentDisplayRequest, &protocol conformance descriptor for MobileDocumentDisplayRequest);
  *(a1 + 8) = result;
  return result;
}

void sub_23A6CBEC0(uint64_t a1)
{
  sub_23A6CBF44(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for MobileDocumentDisplayRequest.Options(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_23A6CBF44(uint64_t a1)
{
  if (!qword_27DF9D408)
  {
    type metadata accessor for MobileDocumentDisplayRequest.Element(255);
    v1 = sub_23A6DF744();
    if (!v2)
    {
      atomic_store(v1, &qword_27DF9D408);
    }
  }
}

uint64_t sub_23A6CBF9C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t type metadata accessor for MobileDocumentDisplayRequest.Options.DocumentType(uint64_t a1)
{
  result = qword_27DFA3550;
  if (!qword_27DFA3550)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_23A6CC068(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MobileDocumentDisplayRequest.Options.DocumentType(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t static MobileDocumentDisplayRequest.Options.DocumentType.nationalIDCard(region:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_23A6DE314();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  v5 = *MEMORY[0x277D43928];
  v6 = sub_23A6DE8C4();
  v7 = *(*(v6 - 8) + 104);

  return v7(a2, v5, v6);
}

uint64_t sub_23A6CC194(uint64_t a1, uint64_t *a2, unsigned int *a3)
{
  v5 = type metadata accessor for MobileDocumentDisplayRequest.Options.DocumentType(0);
  __swift_allocate_value_buffer(v5, a2);
  v6 = __swift_project_value_buffer(v5, a2);
  v7 = *a3;
  v8 = sub_23A6DE8C4();
  v9 = *(*(v8 - 8) + 104);

  return v9(v6, v7, v8);
}

uint64_t sub_23A6CC254@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for MobileDocumentDisplayRequest.Options.DocumentType(0);
  v7 = __swift_project_value_buffer(v6, a2);

  return sub_23A6CC068(v7, a4);
}

uint64_t MobileDocumentDisplayRequest.Options.DocumentType.hash(into:)(uint64_t a1)
{
  sub_23A6DE8C4();
  sub_23A6CC59C(&qword_27DF9CC00, MEMORY[0x277D43938], MEMORY[0x277D43940]);

  return sub_23A6DF5E4();
}

uint64_t MobileDocumentDisplayRequest.Options.DocumentType.hashValue.getter()
{
  sub_23A6DFCE4();
  sub_23A6DE8C4();
  sub_23A6CC59C(&qword_27DF9CC00, MEMORY[0x277D43938], MEMORY[0x277D43940]);
  sub_23A6DF5E4();
  return sub_23A6DFD14();
}

uint64_t sub_23A6CC3C4()
{
  sub_23A6DFCE4();
  sub_23A6DE8C4();
  sub_23A6CC59C(&qword_27DF9CC00, MEMORY[0x277D43938], MEMORY[0x277D43940]);
  sub_23A6DF5E4();
  return sub_23A6DFD14();
}

uint64_t sub_23A6CC44C(uint64_t a1)
{
  sub_23A6DE8C4();
  sub_23A6CC59C(&qword_27DF9CC00, MEMORY[0x277D43938], MEMORY[0x277D43940]);

  return sub_23A6DF5E4();
}

uint64_t sub_23A6CC4D0(uint64_t a1)
{
  sub_23A6DFCE4();
  sub_23A6DE8C4();
  sub_23A6CC59C(&qword_27DF9CC00, MEMORY[0x277D43938], MEMORY[0x277D43940]);
  sub_23A6DF5E4();
  return sub_23A6DFD14();
}

uint64_t sub_23A6CC59C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_23A6CC610(uint64_t a1)
{
  result = sub_23A6DE8C4();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t type metadata accessor for MobileDocumentDisplayRequest.Element(uint64_t a1)
{
  result = qword_27DFA36C0;
  if (!qword_27DFA36C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_23A6CC700(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MobileDocumentDisplayRequest.Element(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23A6CC7B0(uint64_t a1, uint64_t *a2, unsigned int *a3)
{
  v5 = type metadata accessor for MobileDocumentDisplayRequest.Element(0);
  __swift_allocate_value_buffer(v5, a2);
  v6 = __swift_project_value_buffer(v5, a2);
  v7 = *a3;
  v8 = sub_23A6DE9B4();
  v9 = *(*(v8 - 8) + 104);

  return v9(v6, v7, v8);
}

uint64_t sub_23A6CC870@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for MobileDocumentDisplayRequest.Element(0);
  v7 = __swift_project_value_buffer(v6, a2);

  return sub_23A6CC700(v7, a4);
}

uint64_t static MobileDocumentDisplayRequest.Element.ageAtLeast(_:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = a1;
  v3 = *MEMORY[0x277D43A48];
  v4 = sub_23A6DE9B4();
  v5 = *(*(v4 - 8) + 104);

  return v5(a2, v3, v4);
}

uint64_t MobileDocumentDisplayRequest.Element.hash(into:)(uint64_t a1)
{
  sub_23A6DE9B4();
  sub_23A6CCC30(&qword_27DF9CC10, MEMORY[0x277D43AE8], MEMORY[0x277D43AF0]);

  return sub_23A6DF5E4();
}

uint64_t MobileDocumentDisplayRequest.Element.hashValue.getter()
{
  sub_23A6DFCE4();
  sub_23A6DE9B4();
  sub_23A6CCC30(&qword_27DF9CC10, MEMORY[0x277D43AE8], MEMORY[0x277D43AF0]);
  sub_23A6DF5E4();
  return sub_23A6DFD14();
}

uint64_t sub_23A6CCA58()
{
  sub_23A6DFCE4();
  sub_23A6DE9B4();
  sub_23A6CCC30(&qword_27DF9CC10, MEMORY[0x277D43AE8], MEMORY[0x277D43AF0]);
  sub_23A6DF5E4();
  return sub_23A6DFD14();
}

uint64_t sub_23A6CCAE0(uint64_t a1)
{
  sub_23A6DE9B4();
  sub_23A6CCC30(&qword_27DF9CC10, MEMORY[0x277D43AE8], MEMORY[0x277D43AF0]);

  return sub_23A6DF5E4();
}

uint64_t sub_23A6CCB64(uint64_t a1)
{
  sub_23A6DFCE4();
  sub_23A6DE9B4();
  sub_23A6CCC30(&qword_27DF9CC10, MEMORY[0x277D43AE8], MEMORY[0x277D43AF0]);
  sub_23A6DF5E4();
  return sub_23A6DFD14();
}

uint64_t sub_23A6CCC30(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t MobileDocumentDisplayRequest.Options.allowedDocumentTypes.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t type metadata accessor for MobileDocumentDisplayRequest.Options(uint64_t a1)
{
  result = qword_27DFA37D0;
  if (!qword_27DFA37D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t MobileDocumentDisplayRequest.Options.validationMode.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for MobileDocumentDisplayRequest.Options(0) + 20);

  return sub_23A6CCDD0(a1, v3);
}

uint64_t sub_23A6CCDD0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MobileDocumentDisplayRequest.Options.ValidationMode(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t MobileDocumentDisplayRequest.Options.init(allowedDocumentTypes:validationMode:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = *(type metadata accessor for MobileDocumentDisplayRequest.Options(0) + 20);
  v7 = sub_23A6CDE68();
  sub_23A6CD314(v7, a3 + v6, type metadata accessor for MobileDocumentDisplayRequest.Options.ValidationMode);
  *a3 = a1;

  return sub_23A6CCDD0(a2, a3 + v6);
}

BOOL static MobileDocumentDisplayRequest.Options.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  if ((sub_23A6CCF5C(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for MobileDocumentDisplayRequest.Options(0);

  return static MobileDocumentDisplayRequest.Options.ValidationMode.== infix(_:_:)();
}

uint64_t sub_23A6CCF5C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MobileDocumentDisplayRequest.Options.DocumentType(0);
  MEMORY[0x28223BE20](v4);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = &v18 - v9;
  v11 = *(a1 + 16);
  if (v11 == *(a2 + 16))
  {
    if (!v11 || a1 == a2)
    {
      v16 = 1;
    }

    else
    {
      v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
      v13 = a1 + v12;
      v14 = a2 + v12;
      v15 = *(v8 + 72);
      do
      {
        sub_23A6CD314(v13, v10, type metadata accessor for MobileDocumentDisplayRequest.Options.DocumentType);
        sub_23A6CD314(v14, v6, type metadata accessor for MobileDocumentDisplayRequest.Options.DocumentType);
        sub_23A6CDB18(&qword_27DF9D418, type metadata accessor for MobileDocumentDisplayRequest.Options.DocumentType, &protocol conformance descriptor for MobileDocumentDisplayRequest.Options.DocumentType);
        v16 = sub_23A6DF604();
        sub_23A6CD37C(v6);
        sub_23A6CD37C(v10);
        if ((v16 & 1) == 0)
        {
          break;
        }

        v14 += v15;
        v13 += v15;
        --v11;
      }

      while (v11);
    }
  }

  else
  {
    v16 = 0;
  }

  return v16 & 1;
}

uint64_t MobileDocumentDisplayRequest.Options.hash(into:)(uint64_t a1)
{
  v2 = type metadata accessor for MobileDocumentDisplayRequest.Options.DocumentType(0);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v1;
  MEMORY[0x23EE8A1E0](*(*v1 + 16), v4);
  v8 = *(v7 + 16);
  if (v8)
  {
    v9 = v7 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);
    do
    {
      sub_23A6CD314(v9, v6, type metadata accessor for MobileDocumentDisplayRequest.Options.DocumentType);
      sub_23A6CDB18(&qword_27DF9D420, type metadata accessor for MobileDocumentDisplayRequest.Options.DocumentType, &protocol conformance descriptor for MobileDocumentDisplayRequest.Options.DocumentType);
      sub_23A6DF5E4();
      sub_23A6CD37C(v6);
      v9 += v10;
      --v8;
    }

    while (v8);
  }

  type metadata accessor for MobileDocumentDisplayRequest.Options(0);
  type metadata accessor for MobileDocumentDisplayRequest.Options.ValidationMode(0);
  sub_23A6CDB18(&qword_27DF9D428, type metadata accessor for MobileDocumentDisplayRequest.Options.ValidationMode, &protocol conformance descriptor for MobileDocumentDisplayRequest.Options.ValidationMode);
  return sub_23A6DF5E4();
}

uint64_t sub_23A6CD314(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_23A6CD37C(uint64_t a1)
{
  v2 = type metadata accessor for MobileDocumentDisplayRequest.Options.DocumentType(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t MobileDocumentDisplayRequest.Options.hashValue.getter()
{
  v1 = type metadata accessor for MobileDocumentDisplayRequest.Options.DocumentType(0);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23A6DFCE4();
  v5 = *v0;
  MEMORY[0x23EE8A1E0](*(*v0 + 16));
  v6 = *(v5 + 16);
  if (v6)
  {
    v7 = v5 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
    v8 = *(v2 + 72);
    do
    {
      sub_23A6CD314(v7, v4, type metadata accessor for MobileDocumentDisplayRequest.Options.DocumentType);
      sub_23A6CDB18(&qword_27DF9D420, type metadata accessor for MobileDocumentDisplayRequest.Options.DocumentType, &protocol conformance descriptor for MobileDocumentDisplayRequest.Options.DocumentType);
      sub_23A6DF5E4();
      sub_23A6CD37C(v4);
      v7 += v8;
      --v6;
    }

    while (v6);
  }

  type metadata accessor for MobileDocumentDisplayRequest.Options(0);
  type metadata accessor for MobileDocumentDisplayRequest.Options.ValidationMode(0);
  sub_23A6CDB18(&qword_27DF9D428, type metadata accessor for MobileDocumentDisplayRequest.Options.ValidationMode, &protocol conformance descriptor for MobileDocumentDisplayRequest.Options.ValidationMode);
  sub_23A6DF5E4();
  return sub_23A6DFD14();
}

uint64_t sub_23A6CD5B4(uint64_t a1)
{
  v2 = type metadata accessor for MobileDocumentDisplayRequest.Options.DocumentType(0);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v1;
  MEMORY[0x23EE8A1E0](*(*v1 + 16), v4);
  v8 = *(v7 + 16);
  if (v8)
  {
    v9 = v7 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);
    do
    {
      sub_23A6CD314(v9, v6, type metadata accessor for MobileDocumentDisplayRequest.Options.DocumentType);
      sub_23A6CDB18(&qword_27DF9D420, type metadata accessor for MobileDocumentDisplayRequest.Options.DocumentType, &protocol conformance descriptor for MobileDocumentDisplayRequest.Options.DocumentType);
      sub_23A6DF5E4();
      sub_23A6CD37C(v6);
      v9 += v10;
      --v8;
    }

    while (v8);
  }

  type metadata accessor for MobileDocumentDisplayRequest.Options.ValidationMode(0);
  sub_23A6CDB18(&qword_27DF9D428, type metadata accessor for MobileDocumentDisplayRequest.Options.ValidationMode, &protocol conformance descriptor for MobileDocumentDisplayRequest.Options.ValidationMode);
  return sub_23A6DF5E4();
}

uint64_t sub_23A6CD77C(uint64_t a1)
{
  v2 = type metadata accessor for MobileDocumentDisplayRequest.Options.DocumentType(0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23A6DFCE4();
  v6 = *v1;
  MEMORY[0x23EE8A1E0](*(*v1 + 16));
  v7 = *(v6 + 16);
  if (v7)
  {
    v8 = v6 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v9 = *(v3 + 72);
    do
    {
      sub_23A6CD314(v8, v5, type metadata accessor for MobileDocumentDisplayRequest.Options.DocumentType);
      sub_23A6CDB18(&qword_27DF9D420, type metadata accessor for MobileDocumentDisplayRequest.Options.DocumentType, &protocol conformance descriptor for MobileDocumentDisplayRequest.Options.DocumentType);
      sub_23A6DF5E4();
      sub_23A6CD37C(v5);
      v8 += v9;
      --v7;
    }

    while (v7);
  }

  type metadata accessor for MobileDocumentDisplayRequest.Options.ValidationMode(0);
  sub_23A6CDB18(&qword_27DF9D428, type metadata accessor for MobileDocumentDisplayRequest.Options.ValidationMode, &protocol conformance descriptor for MobileDocumentDisplayRequest.Options.ValidationMode);
  sub_23A6DF5E4();
  return sub_23A6DFD14();
}

BOOL sub_23A6CD9A4(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  if ((sub_23A6CCF5C(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  return static MobileDocumentDisplayRequest.Options.ValidationMode.== infix(_:_:)();
}

void sub_23A6CDA3C(uint64_t a1)
{
  sub_23A6CDAC0(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for MobileDocumentDisplayRequest.Options.ValidationMode(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_23A6CDAC0(uint64_t a1)
{
  if (!qword_27DF9D438)
  {
    type metadata accessor for MobileDocumentDisplayRequest.Options.DocumentType(255);
    v1 = sub_23A6DF744();
    if (!v2)
    {
      atomic_store(v1, &qword_27DF9D438);
    }
  }
}

uint64_t sub_23A6CDB18(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

BOOL static MobileDocumentDisplayRequest.Response.== infix(_:_:)(char *a1, char *a2)
{
  v2 = *a2;
  v5 = *a1;
  v4 = v2;
  return static MobileDocumentDisplayRequest.Response.ValidationOutcome.== infix(_:_:)(&v5, &v4);
}

unint64_t sub_23A6CDBF4()
{
  result = qword_27DF9D440;
  if (!qword_27DF9D440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF9D440);
  }

  return result;
}

uint64_t MobileDocumentDisplayRequest.Response.hashValue.getter()
{
  sub_23A6DFCE4();
  sub_23A6CDBF4();
  sub_23A6DF5E4();
  return sub_23A6DFD14();
}

uint64_t sub_23A6CDCB0()
{
  sub_23A6DFCE4();
  sub_23A6CDBF4();
  sub_23A6DF5E4();
  return sub_23A6DFD14();
}

uint64_t sub_23A6CDD58(uint64_t a1)
{
  sub_23A6DFCE4();
  sub_23A6CDBF4();
  sub_23A6DF5E4();
  return sub_23A6DFD14();
}

unint64_t sub_23A6CDDB4()
{
  result = qword_27DF9D448;
  if (!qword_27DF9D448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF9D448);
  }

  return result;
}

BOOL sub_23A6CDE08(char *a1, char *a2)
{
  v2 = *a2;
  v5 = *a1;
  v4 = v2;
  return static MobileDocumentDisplayRequest.Response.ValidationOutcome.== infix(_:_:)(&v5, &v4);
}

uint64_t type metadata accessor for MobileDocumentDisplayRequest.Options.ValidationMode(uint64_t a1)
{
  result = qword_27DFA3A40;
  if (!qword_27DFA3A40)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_23A6CDEFC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MobileDocumentDisplayRequest.Options.ValidationMode(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23A6CDFAC(uint64_t a1, uint64_t *a2, unsigned int *a3)
{
  v5 = type metadata accessor for MobileDocumentDisplayRequest.Options.ValidationMode(0);
  __swift_allocate_value_buffer(v5, a2);
  v6 = __swift_project_value_buffer(v5, a2);
  v7 = *a3;
  v8 = sub_23A6DEB24();
  v9 = *(*(v8 - 8) + 104);

  return v9(v6, v7, v8);
}

uint64_t sub_23A6CE048(void *a1, uint64_t a2, uint64_t a3)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for MobileDocumentDisplayRequest.Options.ValidationMode(0);

  return __swift_project_value_buffer(v4, a2);
}

uint64_t sub_23A6CE0C0@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for MobileDocumentDisplayRequest.Options.ValidationMode(0);
  v7 = __swift_project_value_buffer(v6, a2);

  return sub_23A6CDEFC(v7, a4);
}

BOOL static MobileDocumentDisplayRequest.Options.ValidationMode.== infix(_:_:)()
{
  sub_23A6DEB24();
  sub_23A6CE4AC(&qword_27DF9D450, MEMORY[0x277D43BB8], MEMORY[0x277D43BD0]);
  sub_23A6DF714();
  sub_23A6DF714();
  return v2 == v1;
}

uint64_t MobileDocumentDisplayRequest.Options.ValidationMode.hash(into:)(uint64_t a1)
{
  sub_23A6DEB24();
  sub_23A6CE4AC(&qword_27DF9D458, MEMORY[0x277D43BB8], MEMORY[0x277D43BC0]);

  return sub_23A6DF5E4();
}

uint64_t MobileDocumentDisplayRequest.Options.ValidationMode.hashValue.getter()
{
  sub_23A6DFCE4();
  sub_23A6DEB24();
  sub_23A6CE4AC(&qword_27DF9D458, MEMORY[0x277D43BB8], MEMORY[0x277D43BC0]);
  sub_23A6DF5E4();
  return sub_23A6DFD14();
}

uint64_t sub_23A6CE2D4()
{
  sub_23A6DFCE4();
  sub_23A6DEB24();
  sub_23A6CE4AC(&qword_27DF9D458, MEMORY[0x277D43BB8], MEMORY[0x277D43BC0]);
  sub_23A6DF5E4();
  return sub_23A6DFD14();
}

uint64_t sub_23A6CE35C(uint64_t a1)
{
  sub_23A6DEB24();
  sub_23A6CE4AC(&qword_27DF9D458, MEMORY[0x277D43BB8], MEMORY[0x277D43BC0]);

  return sub_23A6DF5E4();
}

uint64_t sub_23A6CE3E0(uint64_t a1)
{
  sub_23A6DFCE4();
  sub_23A6DEB24();
  sub_23A6CE4AC(&qword_27DF9D458, MEMORY[0x277D43BB8], MEMORY[0x277D43BC0]);
  sub_23A6DF5E4();
  return sub_23A6DFD14();
}

uint64_t sub_23A6CE4AC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

BOOL sub_23A6CE4F4()
{
  sub_23A6DEB24();
  sub_23A6CE4AC(&qword_27DF9D450, MEMORY[0x277D43BB8], MEMORY[0x277D43BD0]);
  sub_23A6DF714();
  sub_23A6DF714();
  return v2 == v1;
}

uint64_t sub_23A6CE5C4(uint64_t a1)
{
  result = sub_23A6DEB24();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t MobileDocumentDisplayRequest.Response.ValidationOutcome.hashValue.getter()
{
  v1 = *v0;
  sub_23A6DFCE4();
  MEMORY[0x23EE8A1E0](v1);
  return sub_23A6DFD14();
}

unint64_t sub_23A6CE6BC()
{
  result = qword_27DF9D468;
  if (!qword_27DF9D468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF9D468);
  }

  return result;
}

uint64_t MobileDriversLicenseDisplayRequest.elements.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t type metadata accessor for MobileDriversLicenseDisplayRequest(uint64_t a1)
{
  result = qword_27DFA3CD0;
  if (!qword_27DFA3CD0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t MobileDriversLicenseDisplayRequest.options.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for MobileDriversLicenseDisplayRequest(0) + 20);

  return sub_23A6CE850(a1, v3);
}

uint64_t sub_23A6CE850(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MobileDriversLicenseDisplayRequest.Options(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t MobileDriversLicenseDisplayRequest.init(elements:options:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = a1;
  v4 = a3 + *(type metadata accessor for MobileDriversLicenseDisplayRequest(0) + 20);

  return sub_23A6CE948(a2, v4);
}

uint64_t sub_23A6CE948(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MobileDriversLicenseDisplayRequest.Options(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t static MobileDriversLicenseDisplayRequest.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  if ((sub_23A6CEA14(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  v4 = *(type metadata accessor for MobileDriversLicenseDisplayRequest(0) + 20);

  return static MobileDriversLicenseDisplayRequest.Options.== infix(_:_:)(a1 + v4, a2 + v4);
}

uint64_t sub_23A6CEA14(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MobileDriversLicenseDisplayRequest.Element(0);
  MEMORY[0x28223BE20](v4);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = &v18 - v9;
  v11 = *(a1 + 16);
  if (v11 == *(a2 + 16))
  {
    if (!v11 || a1 == a2)
    {
      v16 = 1;
    }

    else
    {
      v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
      v13 = a1 + v12;
      v14 = a2 + v12;
      v15 = *(v8 + 72);
      do
      {
        sub_23A6CEDCC(v13, v10, type metadata accessor for MobileDriversLicenseDisplayRequest.Element);
        sub_23A6CEDCC(v14, v6, type metadata accessor for MobileDriversLicenseDisplayRequest.Element);
        sub_23A6CF6F4(&qword_27DF9D4A0, type metadata accessor for MobileDriversLicenseDisplayRequest.Element, &protocol conformance descriptor for MobileDriversLicenseDisplayRequest.Element);
        v16 = sub_23A6DF604();
        sub_23A6CEE34(v6);
        sub_23A6CEE34(v10);
        if ((v16 & 1) == 0)
        {
          break;
        }

        v14 += v15;
        v13 += v15;
        --v11;
      }

      while (v11);
    }
  }

  else
  {
    v16 = 0;
  }

  return v16 & 1;
}

uint64_t MobileDriversLicenseDisplayRequest.hash(into:)(uint64_t a1)
{
  v2 = type metadata accessor for MobileDriversLicenseDisplayRequest.Element(0);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v1;
  MEMORY[0x23EE8A1E0](*(*v1 + 16), v4);
  v8 = *(v7 + 16);
  if (v8)
  {
    v9 = v7 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);
    do
    {
      sub_23A6CEDCC(v9, v6, type metadata accessor for MobileDriversLicenseDisplayRequest.Element);
      sub_23A6CF6F4(&qword_27DF9D470, type metadata accessor for MobileDriversLicenseDisplayRequest.Element, &protocol conformance descriptor for MobileDriversLicenseDisplayRequest.Element);
      sub_23A6DF5E4();
      sub_23A6CEE34(v6);
      v9 += v10;
      --v8;
    }

    while (v8);
  }

  type metadata accessor for MobileDriversLicenseDisplayRequest(0);
  type metadata accessor for MobileDriversLicenseDisplayRequest.Options(0);
  sub_23A6CF6F4(&qword_27DF9D478, type metadata accessor for MobileDriversLicenseDisplayRequest.Options, &protocol conformance descriptor for MobileDriversLicenseDisplayRequest.Options);
  return sub_23A6DF5E4();
}

uint64_t sub_23A6CEDCC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_23A6CEE34(uint64_t a1)
{
  v2 = type metadata accessor for MobileDriversLicenseDisplayRequest.Element(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t MobileDriversLicenseDisplayRequest.hashValue.getter()
{
  v1 = type metadata accessor for MobileDriversLicenseDisplayRequest.Element(0);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23A6DFCE4();
  v5 = *v0;
  MEMORY[0x23EE8A1E0](*(*v0 + 16));
  v6 = *(v5 + 16);
  if (v6)
  {
    v7 = v5 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
    v8 = *(v2 + 72);
    do
    {
      sub_23A6CEDCC(v7, v4, type metadata accessor for MobileDriversLicenseDisplayRequest.Element);
      sub_23A6CF6F4(&qword_27DF9D470, type metadata accessor for MobileDriversLicenseDisplayRequest.Element, &protocol conformance descriptor for MobileDriversLicenseDisplayRequest.Element);
      sub_23A6DF5E4();
      sub_23A6CEE34(v4);
      v7 += v8;
      --v6;
    }

    while (v6);
  }

  type metadata accessor for MobileDriversLicenseDisplayRequest(0);
  type metadata accessor for MobileDriversLicenseDisplayRequest.Options(0);
  sub_23A6CF6F4(&qword_27DF9D478, type metadata accessor for MobileDriversLicenseDisplayRequest.Options, &protocol conformance descriptor for MobileDriversLicenseDisplayRequest.Options);
  sub_23A6DF5E4();
  return sub_23A6DFD14();
}

uint64_t sub_23A6CF06C(uint64_t a1)
{
  v2 = type metadata accessor for MobileDriversLicenseDisplayRequest.Element(0);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v1;
  MEMORY[0x23EE8A1E0](*(*v1 + 16), v4);
  v8 = *(v7 + 16);
  if (v8)
  {
    v9 = v7 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);
    do
    {
      sub_23A6CEDCC(v9, v6, type metadata accessor for MobileDriversLicenseDisplayRequest.Element);
      sub_23A6CF6F4(&qword_27DF9D470, type metadata accessor for MobileDriversLicenseDisplayRequest.Element, &protocol conformance descriptor for MobileDriversLicenseDisplayRequest.Element);
      sub_23A6DF5E4();
      sub_23A6CEE34(v6);
      v9 += v10;
      --v8;
    }

    while (v8);
  }

  type metadata accessor for MobileDriversLicenseDisplayRequest.Options(0);
  sub_23A6CF6F4(&qword_27DF9D478, type metadata accessor for MobileDriversLicenseDisplayRequest.Options, &protocol conformance descriptor for MobileDriversLicenseDisplayRequest.Options);
  return sub_23A6DF5E4();
}

uint64_t sub_23A6CF234(uint64_t a1)
{
  v2 = type metadata accessor for MobileDriversLicenseDisplayRequest.Element(0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23A6DFCE4();
  v6 = *v1;
  MEMORY[0x23EE8A1E0](*(*v1 + 16));
  v7 = *(v6 + 16);
  if (v7)
  {
    v8 = v6 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v9 = *(v3 + 72);
    do
    {
      sub_23A6CEDCC(v8, v5, type metadata accessor for MobileDriversLicenseDisplayRequest.Element);
      sub_23A6CF6F4(&qword_27DF9D470, type metadata accessor for MobileDriversLicenseDisplayRequest.Element, &protocol conformance descriptor for MobileDriversLicenseDisplayRequest.Element);
      sub_23A6DF5E4();
      sub_23A6CEE34(v5);
      v8 += v9;
      --v7;
    }

    while (v7);
  }

  type metadata accessor for MobileDriversLicenseDisplayRequest.Options(0);
  sub_23A6CF6F4(&qword_27DF9D478, type metadata accessor for MobileDriversLicenseDisplayRequest.Options, &protocol conformance descriptor for MobileDriversLicenseDisplayRequest.Options);
  sub_23A6DF5E4();
  return sub_23A6DFD14();
}

uint64_t sub_23A6CF414(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  if ((sub_23A6CEA14(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  v6 = *(a3 + 20);

  return static MobileDriversLicenseDisplayRequest.Options.== infix(_:_:)(a1 + v6, a2 + v6);
}

uint64_t static MobileDocumentRequest<>.displayDriversLicense(_:options:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = type metadata accessor for MobileDriversLicenseDisplayRequest(0);
  sub_23A6CEDCC(a2, a3 + *(v6 + 20), type metadata accessor for MobileDriversLicenseDisplayRequest.Options);
  *a3 = a1;
}

unint64_t sub_23A6CF4FC()
{
  result = qword_27DF9D480;
  if (!qword_27DF9D480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF9D480);
  }

  return result;
}

uint64_t sub_23A6CF550(uint64_t a1)
{
  result = sub_23A6CF6F4(&qword_27DF9D488, type metadata accessor for MobileDriversLicenseDisplayRequest, &protocol conformance descriptor for MobileDriversLicenseDisplayRequest);
  *(a1 + 8) = result;
  return result;
}

void sub_23A6CF618(uint64_t a1)
{
  sub_23A6CF69C(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for MobileDriversLicenseDisplayRequest.Options(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_23A6CF69C(uint64_t a1)
{
  if (!qword_27DF9D498)
  {
    type metadata accessor for MobileDriversLicenseDisplayRequest.Element(255);
    v1 = sub_23A6DF744();
    if (!v2)
    {
      atomic_store(v1, &qword_27DF9D498);
    }
  }
}

uint64_t sub_23A6CF6F4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t type metadata accessor for MobileDriversLicenseDisplayRequest.Element(uint64_t a1)
{
  result = qword_27DFA3E40;
  if (!qword_27DFA3E40)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_23A6CF7C0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MobileDriversLicenseDisplayRequest.Element(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23A6CF870(uint64_t a1, uint64_t *a2, unsigned int *a3)
{
  v5 = type metadata accessor for MobileDriversLicenseDisplayRequest.Element(0);
  __swift_allocate_value_buffer(v5, a2);
  v6 = __swift_project_value_buffer(v5, a2);
  v7 = *a3;
  v8 = sub_23A6DE9B4();
  v9 = *(*(v8 - 8) + 104);

  return v9(v6, v7, v8);
}

uint64_t sub_23A6CF930@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for MobileDriversLicenseDisplayRequest.Element(0);
  v7 = __swift_project_value_buffer(v6, a2);

  return sub_23A6CF7C0(v7, a4);
}

uint64_t static MobileDriversLicenseDisplayRequest.Element.ageAtLeast(_:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = a1;
  v3 = *MEMORY[0x277D43A48];
  v4 = sub_23A6DE9B4();
  v5 = *(*(v4 - 8) + 104);

  return v5(a2, v3, v4);
}

uint64_t MobileDriversLicenseDisplayRequest.Element.hash(into:)(uint64_t a1)
{
  sub_23A6DE9B4();
  sub_23A6CFCF0(&qword_27DF9CC10, MEMORY[0x277D43AE8], MEMORY[0x277D43AF0]);

  return sub_23A6DF5E4();
}

uint64_t MobileDriversLicenseDisplayRequest.Element.hashValue.getter()
{
  sub_23A6DFCE4();
  sub_23A6DE9B4();
  sub_23A6CFCF0(&qword_27DF9CC10, MEMORY[0x277D43AE8], MEMORY[0x277D43AF0]);
  sub_23A6DF5E4();
  return sub_23A6DFD14();
}

uint64_t sub_23A6CFB18()
{
  sub_23A6DFCE4();
  sub_23A6DE9B4();
  sub_23A6CFCF0(&qword_27DF9CC10, MEMORY[0x277D43AE8], MEMORY[0x277D43AF0]);
  sub_23A6DF5E4();
  return sub_23A6DFD14();
}

uint64_t sub_23A6CFBA0(uint64_t a1)
{
  sub_23A6DE9B4();
  sub_23A6CFCF0(&qword_27DF9CC10, MEMORY[0x277D43AE8], MEMORY[0x277D43AF0]);

  return sub_23A6DF5E4();
}

uint64_t sub_23A6CFC24(uint64_t a1)
{
  sub_23A6DFCE4();
  sub_23A6DE9B4();
  sub_23A6CFCF0(&qword_27DF9CC10, MEMORY[0x277D43AE8], MEMORY[0x277D43AF0]);
  sub_23A6DF5E4();
  return sub_23A6DFD14();
}

uint64_t sub_23A6CFCF0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_23A6CFD60(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MobileDriversLicenseDisplayRequest.Options.ValidationMode(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23A6CFDD8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MobileDriversLicenseDisplayRequest.Options.ValidationMode(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t MobileDriversLicenseDisplayRequest.Options.init(validationMode:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_23A6D02CC();
  sub_23A6CFD60(v4, a2);

  return sub_23A6CFDD8(a1, a2);
}

uint64_t MobileDriversLicenseDisplayRequest.Options.hash(into:)(uint64_t a1)
{
  type metadata accessor for MobileDriversLicenseDisplayRequest.Options.ValidationMode(0);
  sub_23A6D018C(&qword_27DF9D4A8, type metadata accessor for MobileDriversLicenseDisplayRequest.Options.ValidationMode, &protocol conformance descriptor for MobileDriversLicenseDisplayRequest.Options.ValidationMode);

  return sub_23A6DF5E4();
}

uint64_t MobileDriversLicenseDisplayRequest.Options.hashValue.getter()
{
  sub_23A6DFCE4();
  type metadata accessor for MobileDriversLicenseDisplayRequest.Options.ValidationMode(0);
  sub_23A6D018C(&qword_27DF9D4A8, type metadata accessor for MobileDriversLicenseDisplayRequest.Options.ValidationMode, &protocol conformance descriptor for MobileDriversLicenseDisplayRequest.Options.ValidationMode);
  sub_23A6DF5E4();
  return sub_23A6DFD14();
}

uint64_t sub_23A6CFFB4()
{
  sub_23A6DFCE4();
  type metadata accessor for MobileDriversLicenseDisplayRequest.Options.ValidationMode(0);
  sub_23A6D018C(&qword_27DF9D4A8, type metadata accessor for MobileDriversLicenseDisplayRequest.Options.ValidationMode, &protocol conformance descriptor for MobileDriversLicenseDisplayRequest.Options.ValidationMode);
  sub_23A6DF5E4();
  return sub_23A6DFD14();
}

uint64_t sub_23A6D003C(uint64_t a1)
{
  type metadata accessor for MobileDriversLicenseDisplayRequest.Options.ValidationMode(0);
  sub_23A6D018C(&qword_27DF9D4A8, type metadata accessor for MobileDriversLicenseDisplayRequest.Options.ValidationMode, &protocol conformance descriptor for MobileDriversLicenseDisplayRequest.Options.ValidationMode);

  return sub_23A6DF5E4();
}

uint64_t sub_23A6D00C0(uint64_t a1)
{
  sub_23A6DFCE4();
  type metadata accessor for MobileDriversLicenseDisplayRequest.Options.ValidationMode(0);
  sub_23A6D018C(&qword_27DF9D4A8, type metadata accessor for MobileDriversLicenseDisplayRequest.Options.ValidationMode, &protocol conformance descriptor for MobileDriversLicenseDisplayRequest.Options.ValidationMode);
  sub_23A6DF5E4();
  return sub_23A6DFD14();
}

uint64_t sub_23A6D018C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t type metadata accessor for MobileDriversLicenseDisplayRequest.Options(uint64_t a1)
{
  result = qword_27DFA3F50;
  if (!qword_27DFA3F50)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_23A6D024C(uint64_t a1)
{
  result = type metadata accessor for MobileDriversLicenseDisplayRequest.Options.ValidationMode(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t type metadata accessor for MobileDriversLicenseDisplayRequest.Options.ValidationMode(uint64_t a1)
{
  result = qword_27DFA40C0;
  if (!qword_27DFA40C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_23A6D03AC(uint64_t a1, uint64_t *a2, unsigned int *a3)
{
  v5 = type metadata accessor for MobileDriversLicenseDisplayRequest.Options.ValidationMode(0);
  __swift_allocate_value_buffer(v5, a2);
  v6 = __swift_project_value_buffer(v5, a2);
  v7 = *a3;
  v8 = sub_23A6DEB24();
  v9 = *(*(v8 - 8) + 104);

  return v9(v6, v7, v8);
}

uint64_t sub_23A6D0448(void *a1, uint64_t a2, uint64_t a3)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for MobileDriversLicenseDisplayRequest.Options.ValidationMode(0);

  return __swift_project_value_buffer(v4, a2);
}

uint64_t sub_23A6D04C0@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for MobileDriversLicenseDisplayRequest.Options.ValidationMode(0);
  v7 = __swift_project_value_buffer(v6, a2);

  return sub_23A6CFD60(v7, a4);
}

BOOL static MobileDriversLicenseDisplayRequest.Options.ValidationMode.== infix(_:_:)()
{
  sub_23A6DEB24();
  sub_23A6D08AC(&qword_27DF9D450, MEMORY[0x277D43BB8], MEMORY[0x277D43BD0]);
  sub_23A6DF714();
  sub_23A6DF714();
  return v2 == v1;
}

uint64_t MobileDriversLicenseDisplayRequest.Options.ValidationMode.hash(into:)(uint64_t a1)
{
  sub_23A6DEB24();
  sub_23A6D08AC(&qword_27DF9D458, MEMORY[0x277D43BB8], MEMORY[0x277D43BC0]);

  return sub_23A6DF5E4();
}

uint64_t MobileDriversLicenseDisplayRequest.Options.ValidationMode.hashValue.getter()
{
  sub_23A6DFCE4();
  sub_23A6DEB24();
  sub_23A6D08AC(&qword_27DF9D458, MEMORY[0x277D43BB8], MEMORY[0x277D43BC0]);
  sub_23A6DF5E4();
  return sub_23A6DFD14();
}

uint64_t sub_23A6D06D4()
{
  sub_23A6DFCE4();
  sub_23A6DEB24();
  sub_23A6D08AC(&qword_27DF9D458, MEMORY[0x277D43BB8], MEMORY[0x277D43BC0]);
  sub_23A6DF5E4();
  return sub_23A6DFD14();
}

uint64_t sub_23A6D075C(uint64_t a1)
{
  sub_23A6DEB24();
  sub_23A6D08AC(&qword_27DF9D458, MEMORY[0x277D43BB8], MEMORY[0x277D43BC0]);

  return sub_23A6DF5E4();
}

uint64_t sub_23A6D07E0(uint64_t a1)
{
  sub_23A6DFCE4();
  sub_23A6DEB24();
  sub_23A6D08AC(&qword_27DF9D458, MEMORY[0x277D43BB8], MEMORY[0x277D43BC0]);
  sub_23A6DF5E4();
  return sub_23A6DFD14();
}

uint64_t sub_23A6D08AC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

BOOL sub_23A6D08F4()
{
  sub_23A6DEB24();
  sub_23A6D08AC(&qword_27DF9D450, MEMORY[0x277D43BB8], MEMORY[0x277D43BD0]);
  sub_23A6DF714();
  sub_23A6DF714();
  return v2 == v1;
}

BOOL static MobileDriversLicenseDisplayRequest.Response.== infix(_:_:)(char *a1, char *a2)
{
  v2 = *a2;
  v5 = *a1;
  v4 = v2;
  return static MobileDriversLicenseDisplayRequest.Response.ValidationOutcome.== infix(_:_:)(&v5, &v4);
}

unint64_t sub_23A6D0A58()
{
  result = qword_27DF9D4C0;
  if (!qword_27DF9D4C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF9D4C0);
  }

  return result;
}

uint64_t MobileDriversLicenseDisplayRequest.Response.hashValue.getter()
{
  sub_23A6DFCE4();
  sub_23A6D0A58();
  sub_23A6DF5E4();
  return sub_23A6DFD14();
}

uint64_t sub_23A6D0B08()
{
  sub_23A6DFCE4();
  sub_23A6D0A58();
  sub_23A6DF5E4();
  return sub_23A6DFD14();
}

uint64_t sub_23A6D0BB0(uint64_t a1)
{
  sub_23A6DFCE4();
  sub_23A6D0A58();
  sub_23A6DF5E4();
  return sub_23A6DFD14();
}

unint64_t sub_23A6D0C0C()
{
  result = qword_27DF9D4C8;
  if (!qword_27DF9D4C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF9D4C8);
  }

  return result;
}

BOOL sub_23A6D0C60(char *a1, char *a2)
{
  v2 = *a2;
  v5 = *a1;
  v4 = v2;
  return static MobileDriversLicenseDisplayRequest.Response.ValidationOutcome.== infix(_:_:)(&v5, &v4);
}

uint64_t MobileDriversLicenseDisplayRequest.Response.ValidationOutcome.hashValue.getter()
{
  v1 = *v0;
  sub_23A6DFCE4();
  MEMORY[0x23EE8A1E0](v1);
  return sub_23A6DFD14();
}

unint64_t sub_23A6D0D38()
{
  result = qword_27DF9D4D0;
  if (!qword_27DF9D4D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF9D4D0);
  }

  return result;
}

uint64_t static MobileNationalIDCardDisplayRequest.isSupportedRegion(_:)(uint64_t a1)
{
  v2 = *(**sub_23A6509F0() + 168);

  LOBYTE(a1) = v2(a1);

  return a1 & 1;
}

uint64_t MobileNationalIDCardDisplayRequest.region.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_23A6DE314();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t MobileNationalIDCardDisplayRequest.region.setter(uint64_t a1)
{
  v3 = sub_23A6DE314();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t MobileNationalIDCardDisplayRequest.elements.getter(__n128 a1)
{
  type metadata accessor for MobileNationalIDCardDisplayRequest(0);
}

uint64_t type metadata accessor for MobileNationalIDCardDisplayRequest(uint64_t a1)
{
  result = qword_27DFA4450;
  if (!qword_27DFA4450)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t MobileNationalIDCardDisplayRequest.elements.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for MobileNationalIDCardDisplayRequest(0) + 20);

  *(v1 + v3) = a1;
  return result;
}

uint64_t MobileNationalIDCardDisplayRequest.options.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for MobileNationalIDCardDisplayRequest(0) + 24);

  return sub_23A6D1094(a1, v3);
}

uint64_t sub_23A6D1094(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MobileNationalIDCardDisplayRequest.Options(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t MobileNationalIDCardDisplayRequest.init(region:elements:options:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_23A6DE314();
  (*(*(v8 - 8) + 32))(a4, a1, v8);
  v9 = type metadata accessor for MobileNationalIDCardDisplayRequest(0);
  *(a4 + *(v9 + 20)) = a2;
  v10 = a4 + *(v9 + 24);

  return sub_23A6D11DC(a3, v10);
}

uint64_t sub_23A6D11DC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MobileNationalIDCardDisplayRequest.Options(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t static MobileNationalIDCardDisplayRequest.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((MEMORY[0x23EE887F0]() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for MobileNationalIDCardDisplayRequest(0);
  if ((sub_23A6D12C4(*(a1 + *(v4 + 20)), *(a2 + *(v4 + 20))) & 1) == 0)
  {
    return 0;
  }

  v5 = *(v4 + 24);

  return static MobileNationalIDCardDisplayRequest.Options.== infix(_:_:)(a1 + v5, a2 + v5);
}

uint64_t sub_23A6D12C4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MobileNationalIDCardDisplayRequest.Element(0);
  MEMORY[0x28223BE20](v4);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = &v18 - v9;
  v11 = *(a1 + 16);
  if (v11 == *(a2 + 16))
  {
    if (!v11 || a1 == a2)
    {
      v16 = 1;
    }

    else
    {
      v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
      v13 = a1 + v12;
      v14 = a2 + v12;
      v15 = *(v8 + 72);
      do
      {
        sub_23A6D16D4(v13, v10, type metadata accessor for MobileNationalIDCardDisplayRequest.Element);
        sub_23A6D16D4(v14, v6, type metadata accessor for MobileNationalIDCardDisplayRequest.Element);
        sub_23A6D2174(&qword_27DF9D508, type metadata accessor for MobileNationalIDCardDisplayRequest.Element, &protocol conformance descriptor for MobileNationalIDCardDisplayRequest.Element);
        v16 = sub_23A6DF604();
        sub_23A6D173C(v6);
        sub_23A6D173C(v10);
        if ((v16 & 1) == 0)
        {
          break;
        }

        v14 += v15;
        v13 += v15;
        --v11;
      }

      while (v11);
    }
  }

  else
  {
    v16 = 0;
  }

  return v16 & 1;
}

uint64_t MobileNationalIDCardDisplayRequest.hash(into:)(uint64_t a1)
{
  v2 = type metadata accessor for MobileNationalIDCardDisplayRequest.Element(0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23A6DE314();
  sub_23A6D2174(&qword_27DF9CEC0, MEMORY[0x277CC9698], MEMORY[0x277CC96A8]);
  sub_23A6DF5E4();
  v6 = *(v1 + *(type metadata accessor for MobileNationalIDCardDisplayRequest(0) + 20));
  MEMORY[0x23EE8A1E0](*(v6 + 16));
  v7 = *(v6 + 16);
  if (v7)
  {
    v8 = v6 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v9 = *(v3 + 72);
    do
    {
      sub_23A6D16D4(v8, v5, type metadata accessor for MobileNationalIDCardDisplayRequest.Element);
      sub_23A6D2174(&qword_27DF9D4D8, type metadata accessor for MobileNationalIDCardDisplayRequest.Element, &protocol conformance descriptor for MobileNationalIDCardDisplayRequest.Element);
      sub_23A6DF5E4();
      sub_23A6D173C(v5);
      v8 += v9;
      --v7;
    }

    while (v7);
  }

  type metadata accessor for MobileNationalIDCardDisplayRequest.Options(0);
  sub_23A6D2174(&qword_27DF9D4E0, type metadata accessor for MobileNationalIDCardDisplayRequest.Options, &protocol conformance descriptor for MobileNationalIDCardDisplayRequest.Options);
  return sub_23A6DF5E4();
}

uint64_t sub_23A6D16D4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_23A6D173C(uint64_t a1)
{
  v2 = type metadata accessor for MobileNationalIDCardDisplayRequest.Element(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t MobileNationalIDCardDisplayRequest.hashValue.getter()
{
  v1 = type metadata accessor for MobileNationalIDCardDisplayRequest.Element(0);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23A6DFCE4();
  sub_23A6DE314();
  sub_23A6D2174(&qword_27DF9CEC0, MEMORY[0x277CC9698], MEMORY[0x277CC96A8]);
  sub_23A6DF5E4();
  v5 = *(v0 + *(type metadata accessor for MobileNationalIDCardDisplayRequest(0) + 20));
  MEMORY[0x23EE8A1E0](*(v5 + 16));
  v6 = *(v5 + 16);
  if (v6)
  {
    v7 = v5 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
    v8 = *(v2 + 72);
    do
    {
      sub_23A6D16D4(v7, v4, type metadata accessor for MobileNationalIDCardDisplayRequest.Element);
      sub_23A6D2174(&qword_27DF9D4D8, type metadata accessor for MobileNationalIDCardDisplayRequest.Element, &protocol conformance descriptor for MobileNationalIDCardDisplayRequest.Element);
      sub_23A6DF5E4();
      sub_23A6D173C(v4);
      v7 += v8;
      --v6;
    }

    while (v6);
  }

  type metadata accessor for MobileNationalIDCardDisplayRequest.Options(0);
  sub_23A6D2174(&qword_27DF9D4E0, type metadata accessor for MobileNationalIDCardDisplayRequest.Options, &protocol conformance descriptor for MobileNationalIDCardDisplayRequest.Options);
  sub_23A6DF5E4();
  return sub_23A6DFD14();
}

uint64_t sub_23A6D19D4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MobileNationalIDCardDisplayRequest.Element(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23A6DE314();
  sub_23A6D2174(&qword_27DF9CEC0, MEMORY[0x277CC9698], MEMORY[0x277CC96A8]);
  sub_23A6DF5E4();
  v8 = *(v2 + *(a2 + 20));
  MEMORY[0x23EE8A1E0](*(v8 + 16));
  v9 = *(v8 + 16);
  if (v9)
  {
    v10 = v8 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v11 = *(v5 + 72);
    do
    {
      sub_23A6D16D4(v10, v7, type metadata accessor for MobileNationalIDCardDisplayRequest.Element);
      sub_23A6D2174(&qword_27DF9D4D8, type metadata accessor for MobileNationalIDCardDisplayRequest.Element, &protocol conformance descriptor for MobileNationalIDCardDisplayRequest.Element);
      sub_23A6DF5E4();
      sub_23A6D173C(v7);
      v10 += v11;
      --v9;
    }

    while (v9);
  }

  type metadata accessor for MobileNationalIDCardDisplayRequest.Options(0);
  sub_23A6D2174(&qword_27DF9D4E0, type metadata accessor for MobileNationalIDCardDisplayRequest.Options, &protocol conformance descriptor for MobileNationalIDCardDisplayRequest.Options);
  return sub_23A6DF5E4();
}

uint64_t sub_23A6D1BF0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MobileNationalIDCardDisplayRequest.Element(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23A6DFCE4();
  sub_23A6DE314();
  sub_23A6D2174(&qword_27DF9CEC0, MEMORY[0x277CC9698], MEMORY[0x277CC96A8]);
  sub_23A6DF5E4();
  v8 = *(v2 + *(a2 + 20));
  MEMORY[0x23EE8A1E0](*(v8 + 16));
  v9 = *(v8 + 16);
  if (v9)
  {
    v10 = v8 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v11 = *(v5 + 72);
    do
    {
      sub_23A6D16D4(v10, v7, type metadata accessor for MobileNationalIDCardDisplayRequest.Element);
      sub_23A6D2174(&qword_27DF9D4D8, type metadata accessor for MobileNationalIDCardDisplayRequest.Element, &protocol conformance descriptor for MobileNationalIDCardDisplayRequest.Element);
      sub_23A6DF5E4();
      sub_23A6D173C(v7);
      v10 += v11;
      --v9;
    }

    while (v9);
  }

  type metadata accessor for MobileNationalIDCardDisplayRequest.Options(0);
  sub_23A6D2174(&qword_27DF9D4E0, type metadata accessor for MobileNationalIDCardDisplayRequest.Options, &protocol conformance descriptor for MobileNationalIDCardDisplayRequest.Options);
  sub_23A6DF5E4();
  return sub_23A6DFD14();
}

uint64_t sub_23A6D1E28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((MEMORY[0x23EE887F0]() & 1) == 0 || (sub_23A6D12C4(*(a1 + *(a3 + 20)), *(a2 + *(a3 + 20))) & 1) == 0)
  {
    return 0;
  }

  v6 = *(a3 + 24);

  return static MobileNationalIDCardDisplayRequest.Options.== infix(_:_:)(a1 + v6, a2 + v6);
}

uint64_t static MobileDocumentRequest<>.nationalIDCard(region:_:options:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_23A6DE314();
  (*(*(v8 - 8) + 16))(a4, a1, v8);
  v9 = type metadata accessor for MobileNationalIDCardDisplayRequest(0);
  sub_23A6D16D4(a3, a4 + *(v9 + 24), type metadata accessor for MobileNationalIDCardDisplayRequest.Options);
  *(a4 + *(v9 + 20)) = a2;
}

unint64_t sub_23A6D1F64()
{
  result = qword_27DF9D4E8;
  if (!qword_27DF9D4E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF9D4E8);
  }

  return result;
}

uint64_t sub_23A6D1FB8(uint64_t a1)
{
  result = sub_23A6D2174(&qword_27DF9D4F0, type metadata accessor for MobileNationalIDCardDisplayRequest, &protocol conformance descriptor for MobileNationalIDCardDisplayRequest);
  *(a1 + 8) = result;
  return result;
}

void sub_23A6D2080(uint64_t a1)
{
  sub_23A6DE314();
  if (v1 <= 0x3F)
  {
    sub_23A6D211C(319);
    if (v2 <= 0x3F)
    {
      type metadata accessor for MobileNationalIDCardDisplayRequest.Options(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_23A6D211C(uint64_t a1)
{
  if (!qword_27DF9D500)
  {
    type metadata accessor for MobileNationalIDCardDisplayRequest.Element(255);
    v1 = sub_23A6DF744();
    if (!v2)
    {
      atomic_store(v1, &qword_27DF9D500);
    }
  }
}

uint64_t sub_23A6D2174(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t type metadata accessor for MobileNationalIDCardDisplayRequest.Element(uint64_t a1)
{
  result = qword_27DFA45C0;
  if (!qword_27DFA45C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_23A6D2240(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MobileNationalIDCardDisplayRequest.Element(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23A6D22F0(uint64_t a1, uint64_t *a2, unsigned int *a3)
{
  v5 = type metadata accessor for MobileNationalIDCardDisplayRequest.Element(0);
  __swift_allocate_value_buffer(v5, a2);
  v6 = __swift_project_value_buffer(v5, a2);
  v7 = *a3;
  v8 = sub_23A6DE9B4();
  v9 = *(*(v8 - 8) + 104);

  return v9(v6, v7, v8);
}

uint64_t sub_23A6D23B0@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for MobileNationalIDCardDisplayRequest.Element(0);
  v7 = __swift_project_value_buffer(v6, a2);

  return sub_23A6D2240(v7, a4);
}

uint64_t static MobileNationalIDCardDisplayRequest.Element.ageAtLeast(_:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = a1;
  v3 = *MEMORY[0x277D43A48];
  v4 = sub_23A6DE9B4();
  v5 = *(*(v4 - 8) + 104);

  return v5(a2, v3, v4);
}

uint64_t MobileNationalIDCardDisplayRequest.Element.hash(into:)(uint64_t a1)
{
  sub_23A6DE9B4();
  sub_23A6D2770(&qword_27DF9CC10, MEMORY[0x277D43AE8], MEMORY[0x277D43AF0]);

  return sub_23A6DF5E4();
}

uint64_t MobileNationalIDCardDisplayRequest.Element.hashValue.getter()
{
  sub_23A6DFCE4();
  sub_23A6DE9B4();
  sub_23A6D2770(&qword_27DF9CC10, MEMORY[0x277D43AE8], MEMORY[0x277D43AF0]);
  sub_23A6DF5E4();
  return sub_23A6DFD14();
}

uint64_t sub_23A6D2598()
{
  sub_23A6DFCE4();
  sub_23A6DE9B4();
  sub_23A6D2770(&qword_27DF9CC10, MEMORY[0x277D43AE8], MEMORY[0x277D43AF0]);
  sub_23A6DF5E4();
  return sub_23A6DFD14();
}

uint64_t sub_23A6D2620(uint64_t a1)
{
  sub_23A6DE9B4();
  sub_23A6D2770(&qword_27DF9CC10, MEMORY[0x277D43AE8], MEMORY[0x277D43AF0]);

  return sub_23A6DF5E4();
}

uint64_t sub_23A6D26A4(uint64_t a1)
{
  sub_23A6DFCE4();
  sub_23A6DE9B4();
  sub_23A6D2770(&qword_27DF9CC10, MEMORY[0x277D43AE8], MEMORY[0x277D43AF0]);
  sub_23A6DF5E4();
  return sub_23A6DFD14();
}

uint64_t sub_23A6D2770(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_23A6D27E0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MobileNationalIDCardDisplayRequest.Options.ValidationMode(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23A6D2858(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MobileNationalIDCardDisplayRequest.Options.ValidationMode(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t MobileNationalIDCardDisplayRequest.Options.init(validationMode:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_23A6D2D4C();
  sub_23A6D27E0(v4, a2);

  return sub_23A6D2858(a1, a2);
}

uint64_t MobileNationalIDCardDisplayRequest.Options.hash(into:)(uint64_t a1)
{
  type metadata accessor for MobileNationalIDCardDisplayRequest.Options.ValidationMode(0);
  sub_23A6D2C0C(&qword_27DF9D510, type metadata accessor for MobileNationalIDCardDisplayRequest.Options.ValidationMode, &protocol conformance descriptor for MobileNationalIDCardDisplayRequest.Options.ValidationMode);

  return sub_23A6DF5E4();
}

uint64_t MobileNationalIDCardDisplayRequest.Options.hashValue.getter()
{
  sub_23A6DFCE4();
  type metadata accessor for MobileNationalIDCardDisplayRequest.Options.ValidationMode(0);
  sub_23A6D2C0C(&qword_27DF9D510, type metadata accessor for MobileNationalIDCardDisplayRequest.Options.ValidationMode, &protocol conformance descriptor for MobileNationalIDCardDisplayRequest.Options.ValidationMode);
  sub_23A6DF5E4();
  return sub_23A6DFD14();
}

uint64_t sub_23A6D2A34()
{
  sub_23A6DFCE4();
  type metadata accessor for MobileNationalIDCardDisplayRequest.Options.ValidationMode(0);
  sub_23A6D2C0C(&qword_27DF9D510, type metadata accessor for MobileNationalIDCardDisplayRequest.Options.ValidationMode, &protocol conformance descriptor for MobileNationalIDCardDisplayRequest.Options.ValidationMode);
  sub_23A6DF5E4();
  return sub_23A6DFD14();
}

uint64_t sub_23A6D2ABC(uint64_t a1)
{
  type metadata accessor for MobileNationalIDCardDisplayRequest.Options.ValidationMode(0);
  sub_23A6D2C0C(&qword_27DF9D510, type metadata accessor for MobileNationalIDCardDisplayRequest.Options.ValidationMode, &protocol conformance descriptor for MobileNationalIDCardDisplayRequest.Options.ValidationMode);

  return sub_23A6DF5E4();
}

uint64_t sub_23A6D2B40(uint64_t a1)
{
  sub_23A6DFCE4();
  type metadata accessor for MobileNationalIDCardDisplayRequest.Options.ValidationMode(0);
  sub_23A6D2C0C(&qword_27DF9D510, type metadata accessor for MobileNationalIDCardDisplayRequest.Options.ValidationMode, &protocol conformance descriptor for MobileNationalIDCardDisplayRequest.Options.ValidationMode);
  sub_23A6DF5E4();
  return sub_23A6DFD14();
}

uint64_t sub_23A6D2C0C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t type metadata accessor for MobileNationalIDCardDisplayRequest.Options(uint64_t a1)
{
  result = qword_27DFA46D0;
  if (!qword_27DFA46D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_23A6D2CCC(uint64_t a1)
{
  result = type metadata accessor for MobileNationalIDCardDisplayRequest.Options.ValidationMode(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t type metadata accessor for MobileNationalIDCardDisplayRequest.Options.ValidationMode(uint64_t a1)
{
  result = qword_27DFA4840;
  if (!qword_27DFA4840)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_23A6D2E2C(uint64_t a1, uint64_t *a2, unsigned int *a3)
{
  v5 = type metadata accessor for MobileNationalIDCardDisplayRequest.Options.ValidationMode(0);
  __swift_allocate_value_buffer(v5, a2);
  v6 = __swift_project_value_buffer(v5, a2);
  v7 = *a3;
  v8 = sub_23A6DEB24();
  v9 = *(*(v8 - 8) + 104);

  return v9(v6, v7, v8);
}

uint64_t sub_23A6D2EC8(void *a1, uint64_t a2, uint64_t a3)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for MobileNationalIDCardDisplayRequest.Options.ValidationMode(0);

  return __swift_project_value_buffer(v4, a2);
}

uint64_t sub_23A6D2F40@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for MobileNationalIDCardDisplayRequest.Options.ValidationMode(0);
  v7 = __swift_project_value_buffer(v6, a2);

  return sub_23A6D27E0(v7, a4);
}

BOOL static MobileNationalIDCardDisplayRequest.Options.ValidationMode.== infix(_:_:)()
{
  sub_23A6DEB24();
  sub_23A6D332C(&qword_27DF9D450, MEMORY[0x277D43BB8], MEMORY[0x277D43BD0]);
  sub_23A6DF714();
  sub_23A6DF714();
  return v2 == v1;
}

uint64_t MobileNationalIDCardDisplayRequest.Options.ValidationMode.hash(into:)(uint64_t a1)
{
  sub_23A6DEB24();
  sub_23A6D332C(&qword_27DF9D458, MEMORY[0x277D43BB8], MEMORY[0x277D43BC0]);

  return sub_23A6DF5E4();
}

uint64_t MobileNationalIDCardDisplayRequest.Options.ValidationMode.hashValue.getter()
{
  sub_23A6DFCE4();
  sub_23A6DEB24();
  sub_23A6D332C(&qword_27DF9D458, MEMORY[0x277D43BB8], MEMORY[0x277D43BC0]);
  sub_23A6DF5E4();
  return sub_23A6DFD14();
}

uint64_t sub_23A6D3154()
{
  sub_23A6DFCE4();
  sub_23A6DEB24();
  sub_23A6D332C(&qword_27DF9D458, MEMORY[0x277D43BB8], MEMORY[0x277D43BC0]);
  sub_23A6DF5E4();
  return sub_23A6DFD14();
}

uint64_t sub_23A6D31DC(uint64_t a1)
{
  sub_23A6DEB24();
  sub_23A6D332C(&qword_27DF9D458, MEMORY[0x277D43BB8], MEMORY[0x277D43BC0]);

  return sub_23A6DF5E4();
}

uint64_t sub_23A6D3260(uint64_t a1)
{
  sub_23A6DFCE4();
  sub_23A6DEB24();
  sub_23A6D332C(&qword_27DF9D458, MEMORY[0x277D43BB8], MEMORY[0x277D43BC0]);
  sub_23A6DF5E4();
  return sub_23A6DFD14();
}

uint64_t sub_23A6D332C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

BOOL sub_23A6D3374()
{
  sub_23A6DEB24();
  sub_23A6D332C(&qword_27DF9D450, MEMORY[0x277D43BB8], MEMORY[0x277D43BD0]);
  sub_23A6DF714();
  sub_23A6DF714();
  return v2 == v1;
}

BOOL static MobileNationalIDCardDisplayRequest.Response.== infix(_:_:)(char *a1, char *a2)
{
  v2 = *a2;
  v5 = *a1;
  v4 = v2;
  return static MobileNationalIDCardDisplayRequest.Response.ValidationOutcome.== infix(_:_:)(&v5, &v4);
}

unint64_t sub_23A6D34D8()
{
  result = qword_27DF9D528;
  if (!qword_27DF9D528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF9D528);
  }

  return result;
}

uint64_t MobileNationalIDCardDisplayRequest.Response.hashValue.getter()
{
  sub_23A6DFCE4();
  sub_23A6D34D8();
  sub_23A6DF5E4();
  return sub_23A6DFD14();
}

uint64_t sub_23A6D3588()
{
  sub_23A6DFCE4();
  sub_23A6D34D8();
  sub_23A6DF5E4();
  return sub_23A6DFD14();
}

uint64_t sub_23A6D3630(uint64_t a1)
{
  sub_23A6DFCE4();
  sub_23A6D34D8();
  sub_23A6DF5E4();
  return sub_23A6DFD14();
}

unint64_t sub_23A6D368C()
{
  result = qword_27DF9D530;
  if (!qword_27DF9D530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF9D530);
  }

  return result;
}

BOOL sub_23A6D36E0(char *a1, char *a2)
{
  v2 = *a2;
  v5 = *a1;
  v4 = v2;
  return static MobileNationalIDCardDisplayRequest.Response.ValidationOutcome.== infix(_:_:)(&v5, &v4);
}

uint64_t MobileNationalIDCardDisplayRequest.Response.ValidationOutcome.hashValue.getter()
{
  v1 = *v0;
  sub_23A6DFCE4();
  MEMORY[0x23EE8A1E0](v1);
  return sub_23A6DFD14();
}

unint64_t sub_23A6D37B8()
{
  result = qword_27DF9D538;
  if (!qword_27DF9D538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF9D538);
  }

  return result;
}

uint64_t MobileDocumentAnyOfRawDataRequest.addRequest(_:)(uint64_t a1)
{
  v2 = type metadata accessor for MobilePhotoIDRawDataRequest.Element(0);
  v198 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8);
  v196 = &v190 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v197 = &v190 - v5;
  v6 = type metadata accessor for MobileNationalIDCardRawDataRequest.Element(0);
  v204 = *(v6 - 8);
  MEMORY[0x28223BE20](v6 - 8);
  v202 = &v190 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v203 = &v190 - v9;
  v10 = type metadata accessor for MobileNationalIDCardRawDataRequest(0);
  MEMORY[0x28223BE20](v10);
  v194 = &v190 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v190 - v13;
  v15 = sub_23A6DE8C4();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v190 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v208 = sub_23A6DE9B4();
  v205 = *(v208 - 8);
  MEMORY[0x28223BE20](v208);
  v200 = (&v190 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v20);
  v201 = &v190 - v21;
  MEMORY[0x28223BE20](v22);
  v24 = &v190 - v23;
  MEMORY[0x28223BE20](v25);
  v27 = &v190 - v26;
  MEMORY[0x28223BE20](v28);
  v207 = (&v190 - v29);
  MEMORY[0x28223BE20](v30);
  v32 = &v190 - v31;
  v33 = type metadata accessor for MobileDriversLicenseRawDataRequest.Element(0);
  v206 = *(v33 - 8);
  MEMORY[0x28223BE20](v33 - 8);
  v199 = &v190 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v35);
  v37 = &v190 - v36;
  sub_23A675890(a1, v212);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9D540, &qword_23A6E60B0);
  if (swift_dynamicCast())
  {
    v191 = v18;
    v192 = v16;
    v193 = v15;
    v38 = v210;
    v203 = v211;
    v39 = sub_23A69EA14(MEMORY[0x277D84F90]);
    v40 = v38[2];
    v204 = v38;
    v202 = v40;
    if (v40)
    {
      v41 = 0;
      v201 = v38 + ((*(v206 + 80) + 32) & ~*(v206 + 80));
      v42 = (v205 + 16);
      v200 = (v205 + 8);
      do
      {
        if (v41 >= v38[2])
        {
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
          goto LABEL_106;
        }

        sub_23A6D4DC0(v201 + v206[9] * v41, v37, type metadata accessor for MobileDriversLicenseRawDataRequest.Element);
        v43 = *v42;
        (*v42)(v32, v37, v208);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v209 = v39;
        v46 = sub_23A69CEA0(v32);
        v47 = v39[2];
        v48 = (v45 & 1) == 0;
        v49 = v47 + v48;
        if (__OFADD__(v47, v48))
        {
          goto LABEL_102;
        }

        v50 = v45;
        if (v39[3] >= v49)
        {
          if (isUniquelyReferenced_nonNull_native)
          {
            v39 = v209;
            if (v45)
            {
              goto LABEL_4;
            }
          }

          else
          {
            sub_23A69DDB4();
            v39 = v209;
            if (v50)
            {
              goto LABEL_4;
            }
          }
        }

        else
        {
          sub_23A69D350(v49, isUniquelyReferenced_nonNull_native);
          v51 = sub_23A69CEA0(v32);
          if ((v50 & 1) != (v52 & 1))
          {
            goto LABEL_119;
          }

          v46 = v51;
          v39 = v209;
          if (v50)
          {
LABEL_4:
            *(v39[7] + v46) = 1;
            (*v200)(v32, v208);
            sub_23A6D4E28(v37, type metadata accessor for MobileDriversLicenseRawDataRequest.Element);
            goto LABEL_5;
          }
        }

        v39[(v46 >> 6) + 8] |= 1 << v46;
        v53 = v205;
        v54 = v208;
        v43((v39[6] + *(v205 + 72) * v46), v32, v208);
        *(v39[7] + v46) = 1;
        (*(v53 + 8))(v32, v54);
        sub_23A6D4E28(v37, type metadata accessor for MobileDriversLicenseRawDataRequest.Element);
        v55 = v39[2];
        v56 = __OFADD__(v55, 1);
        v57 = v55 + 1;
        if (v56)
        {
          goto LABEL_107;
        }

        v39[2] = v57;
LABEL_5:
        ++v41;
        v38 = v204;
      }

      while (v202 != v41);
    }

    v82 = v203;
    v83 = *(v203 + 16);
    if (v83)
    {
      v84 = 0;
      v202 = v203 + ((*(v206 + 80) + 32) & ~*(v206 + 80));
      v85 = (v205 + 16);
      v86 = (v205 + 8);
      v87 = v199;
      while (1)
      {
        if (v84 >= *(v82 + 16))
        {
          goto LABEL_103;
        }

        sub_23A6D4DC0(v202 + v206[9] * v84, v87, type metadata accessor for MobileDriversLicenseRawDataRequest.Element);
        v88 = *v85;
        v89 = v207;
        (*v85)(v207, v87, v208);
        v90 = swift_isUniquelyReferenced_nonNull_native();
        v209 = v39;
        v91 = sub_23A69CEA0(v89);
        v93 = v39[2];
        v94 = (v92 & 1) == 0;
        v56 = __OFADD__(v93, v94);
        v95 = v93 + v94;
        if (v56)
        {
          goto LABEL_104;
        }

        v96 = v92;
        if (v39[3] < v95)
        {
          break;
        }

        if (v90)
        {
          goto LABEL_44;
        }

        v105 = v91;
        sub_23A69DDB4();
        v91 = v105;
        v39 = v209;
        if (v96)
        {
LABEL_36:
          *(v39[7] + v91) = 0;
          (*v86)(v207, v208);
          sub_23A6D4E28(v87, type metadata accessor for MobileDriversLicenseRawDataRequest.Element);
          goto LABEL_37;
        }

LABEL_45:
        v39[(v91 >> 6) + 8] |= 1 << v91;
        v98 = v205;
        v99 = v91;
        v101 = v207;
        v100 = v208;
        v88(v39[6] + *(v205 + 72) * v91, v207, v208);
        *(v39[7] + v99) = 0;
        v102 = v101;
        v87 = v199;
        (*(v98 + 8))(v102, v100);
        sub_23A6D4E28(v87, type metadata accessor for MobileDriversLicenseRawDataRequest.Element);
        v103 = v39[2];
        v56 = __OFADD__(v103, 1);
        v104 = v103 + 1;
        if (v56)
        {
          goto LABEL_110;
        }

        v39[2] = v104;
LABEL_37:
        ++v84;
        v82 = v203;
        if (v83 == v84)
        {
          goto LABEL_82;
        }
      }

      sub_23A69D350(v95, v90);
      v91 = sub_23A69CEA0(v207);
      if ((v96 & 1) != (v97 & 1))
      {
        goto LABEL_119;
      }

LABEL_44:
      v39 = v209;
      if (v96)
      {
        goto LABEL_36;
      }

      goto LABEL_45;
    }

LABEL_82:

    v157 = v192;
    v158 = v191;
    v159 = v193;
    (*(v192 + 104))(v191, *MEMORY[0x277D43920], v193);

    v160 = v195;
    v161 = swift_isUniquelyReferenced_nonNull_native();
    v209 = *v160;
    *v160 = 0x8000000000000000;
    sub_23A69D710(v39, v158, v161);
    (*(v157 + 8))(v158, v159);
    goto LABEL_83;
  }

  if (swift_dynamicCast())
  {
    v59 = v10;
    v191 = v18;
    v192 = v16;
    v193 = v15;
    v60 = v194;
    sub_23A6D4D5C(v14, v194, v58);
    v61 = sub_23A69EA14(MEMORY[0x277D84F90]);
    v62 = v59;
    v63 = v61;
    v199 = v62;
    v64 = *(v60 + *(v62 + 5));
    v206 = *(v64 + 16);
    if (v206)
    {
      v65 = 0;
      v201 = v64 + ((*(v204 + 80) + 32) & ~*(v204 + 80));
      v207 = (v205 + 16);
      v200 = (v205 + 8);
      while (1)
      {
        if (v65 >= *(v64 + 16))
        {
          goto LABEL_105;
        }

        v66 = v203;
        sub_23A6D4DC0(v201 + v204[9] * v65, v203, type metadata accessor for MobileNationalIDCardRawDataRequest.Element);
        v67 = *v207;
        (*v207)(v27, v66, v208);
        v68 = swift_isUniquelyReferenced_nonNull_native();
        v210 = v63;
        v69 = sub_23A69CEA0(v27);
        v71 = v63[2];
        v72 = (v70 & 1) == 0;
        v56 = __OFADD__(v71, v72);
        v73 = v71 + v72;
        if (v56)
        {
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
          goto LABEL_112;
        }

        v74 = v70;
        if (v63[3] < v73)
        {
          break;
        }

        if (v68)
        {
          goto LABEL_29;
        }

        v81 = v69;
        sub_23A69DDB4();
        v69 = v81;
        v63 = v210;
        if (v74)
        {
LABEL_21:
          *(v63[7] + v69) = 1;
          (*v200)(v27, v208);
          sub_23A6D4E28(v203, type metadata accessor for MobileNationalIDCardRawDataRequest.Element);
          goto LABEL_22;
        }

LABEL_30:
        v63[(v69 >> 6) + 8] |= 1 << v69;
        v76 = v205;
        v77 = v69;
        v78 = v208;
        v67(v63[6] + *(v205 + 72) * v69, v27, v208);
        *(v63[7] + v77) = 1;
        (*(v76 + 8))(v27, v78);
        sub_23A6D4E28(v203, type metadata accessor for MobileNationalIDCardRawDataRequest.Element);
        v79 = v63[2];
        v56 = __OFADD__(v79, 1);
        v80 = v79 + 1;
        if (v56)
        {
          goto LABEL_113;
        }

        v63[2] = v80;
LABEL_22:
        if (v206 == ++v65)
        {
          goto LABEL_66;
        }
      }

      sub_23A69D350(v73, v68);
      v69 = sub_23A69CEA0(v27);
      if ((v74 & 1) != (v75 & 1))
      {
        goto LABEL_119;
      }

LABEL_29:
      v63 = v210;
      if (v74)
      {
        goto LABEL_21;
      }

      goto LABEL_30;
    }

LABEL_66:
    v130 = *(v194 + *(v199 + 6));
    v207 = *(v130 + 16);
    if (v207)
    {
      v131 = 0;
      v206 = (v130 + ((*(v204 + 80) + 32) & ~*(v204 + 80)));
      v132 = (v205 + 16);
      v133 = (v205 + 8);
      while (1)
      {
        if (v131 >= *(v130 + 16))
        {
          goto LABEL_108;
        }

        v134 = v202;
        sub_23A6D4DC0(v206 + v204[9] * v131, v202, type metadata accessor for MobileNationalIDCardRawDataRequest.Element);
        v135 = *v132;
        (*v132)(v24, v134, v208);
        v136 = swift_isUniquelyReferenced_nonNull_native();
        v210 = v63;
        v137 = sub_23A69CEA0(v24);
        v139 = v63[2];
        v140 = (v138 & 1) == 0;
        v56 = __OFADD__(v139, v140);
        v141 = v139 + v140;
        if (v56)
        {
          goto LABEL_109;
        }

        v142 = v138;
        if (v63[3] < v141)
        {
          break;
        }

        if (v136)
        {
          goto LABEL_76;
        }

        v149 = v137;
        sub_23A69DDB4();
        v137 = v149;
        v63 = v210;
        if (v142)
        {
LABEL_68:
          *(v63[7] + v137) = 0;
          (*v133)(v24, v208);
          sub_23A6D4E28(v202, type metadata accessor for MobileNationalIDCardRawDataRequest.Element);
          goto LABEL_69;
        }

LABEL_77:
        v63[(v137 >> 6) + 8] |= 1 << v137;
        v144 = v205;
        v145 = v137;
        v146 = v208;
        v135((v63[6] + *(v205 + 72) * v137), v24, v208);
        *(v63[7] + v145) = 0;
        (*(v144 + 8))(v24, v146);
        sub_23A6D4E28(v202, type metadata accessor for MobileNationalIDCardRawDataRequest.Element);
        v147 = v63[2];
        v56 = __OFADD__(v147, 1);
        v148 = v147 + 1;
        if (v56)
        {
          goto LABEL_116;
        }

        v63[2] = v148;
LABEL_69:
        if (v207 == ++v131)
        {
          goto LABEL_81;
        }
      }

      sub_23A69D350(v141, v136);
      v137 = sub_23A69CEA0(v24);
      if ((v142 & 1) != (v143 & 1))
      {
        goto LABEL_119;
      }

LABEL_76:
      v63 = v210;
      if (v142)
      {
        goto LABEL_68;
      }

      goto LABEL_77;
    }

LABEL_81:
    v150 = sub_23A6DE314();
    v151 = v191;
    v152 = v194;
    (*(*(v150 - 8) + 16))(v191, v194, v150);
    v153 = v192;
    v154 = v193;
    (*(v192 + 104))(v151, *MEMORY[0x277D43928], v193);

    v155 = v195;
    v156 = swift_isUniquelyReferenced_nonNull_native();
    v210 = *v155;
    *v155 = 0x8000000000000000;
    sub_23A69D710(v63, v151, v156);
    (*(v153 + 8))(v151, v154);
    *v155 = v210;
    sub_23A6D4E28(v152, type metadata accessor for MobileNationalIDCardRawDataRequest);

    return __swift_destroy_boxed_opaque_existential_1Tm(v212);
  }

  if (!swift_dynamicCast())
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(v212);
  }

  v191 = v18;
  v192 = v16;
  v193 = v15;
  v106 = v210;
  v203 = v211;
  v107 = sub_23A69EA14(MEMORY[0x277D84F90]);
  v108 = v106[2];
  v206 = v106;
  if (!v108)
  {
LABEL_85:
    v163 = v203;
    v164 = *(v203 + 16);
    if (!v164)
    {
LABEL_100:

      v186 = v192;
      v187 = v191;
      v188 = v193;
      (*(v192 + 104))(v191, *MEMORY[0x277D43930], v193);

      v160 = v195;
      v189 = swift_isUniquelyReferenced_nonNull_native();
      v209 = *v160;
      *v160 = 0x8000000000000000;
      sub_23A69D710(v107, v187, v189);
      (*(v186 + 8))(v187, v188);
LABEL_83:

      *v160 = v209;
      return __swift_destroy_boxed_opaque_existential_1Tm(v212);
    }

    v165 = 0;
    v207 = (v203 + ((*(v198 + 80) + 32) & ~*(v198 + 80)));
    v166 = (v205 + 16);
    v167 = (v205 + 8);
    while (1)
    {
      if (v165 >= *(v163 + 16))
      {
        goto LABEL_114;
      }

      v168 = v196;
      sub_23A6D4DC0(v207 + *(v198 + 72) * v165, v196, type metadata accessor for MobilePhotoIDRawDataRequest.Element);
      v169 = *v166;
      v170 = v200;
      (*v166)(v200, v168, v208);
      v171 = swift_isUniquelyReferenced_nonNull_native();
      v209 = v107;
      v172 = sub_23A69CEA0(v170);
      v174 = v107[2];
      v175 = (v173 & 1) == 0;
      v56 = __OFADD__(v174, v175);
      v176 = v174 + v175;
      if (v56)
      {
        goto LABEL_115;
      }

      v177 = v173;
      if (v107[3] < v176)
      {
        break;
      }

      if (v171)
      {
        goto LABEL_95;
      }

      v185 = v172;
      sub_23A69DDB4();
      v172 = v185;
      v107 = v209;
      if (v177)
      {
LABEL_87:
        *(v107[7] + v172) = 0;
        (*v167)(v200, v208);
        sub_23A6D4E28(v196, type metadata accessor for MobilePhotoIDRawDataRequest.Element);
        goto LABEL_88;
      }

LABEL_96:
      v107[(v172 >> 6) + 8] |= 1 << v172;
      v179 = v205;
      v180 = v172;
      v181 = v200;
      v182 = v208;
      v169((v107[6] + *(v205 + 72) * v172), v200, v208);
      *(v107[7] + v180) = 0;
      (*(v179 + 8))(v181, v182);
      sub_23A6D4E28(v196, type metadata accessor for MobilePhotoIDRawDataRequest.Element);
      v183 = v107[2];
      v56 = __OFADD__(v183, 1);
      v184 = v183 + 1;
      if (v56)
      {
        goto LABEL_118;
      }

      v107[2] = v184;
      v163 = v203;
LABEL_88:
      if (v164 == ++v165)
      {
        goto LABEL_100;
      }
    }

    sub_23A69D350(v176, v171);
    v172 = sub_23A69CEA0(v200);
    if ((v177 & 1) != (v178 & 1))
    {
      goto LABEL_119;
    }

LABEL_95:
    v107 = v209;
    if (v177)
    {
      goto LABEL_87;
    }

    goto LABEL_96;
  }

  v109 = 0;
  v110 = v106 + ((*(v198 + 80) + 32) & ~*(v198 + 80));
  v207 = (v205 + 16);
  v204 = (v205 + 8);
  while (1)
  {
    if (v109 >= v206[2])
    {
      goto LABEL_111;
    }

    v111 = v197;
    sub_23A6D4DC0(v110 + *(v198 + 72) * v109, v197, type metadata accessor for MobilePhotoIDRawDataRequest.Element);
    v112 = *v207;
    v113 = v201;
    (*v207)(v201, v111, v208);
    v114 = swift_isUniquelyReferenced_nonNull_native();
    v209 = v107;
    v115 = sub_23A69CEA0(v113);
    v117 = v107[2];
    v118 = (v116 & 1) == 0;
    v56 = __OFADD__(v117, v118);
    v119 = v117 + v118;
    if (v56)
    {
      break;
    }

    v120 = v116;
    if (v107[3] < v119)
    {
      sub_23A69D350(v119, v114);
      v115 = sub_23A69CEA0(v201);
      if ((v120 & 1) != (v121 & 1))
      {
        goto LABEL_119;
      }

LABEL_61:
      v107 = v209;
      if (v120)
      {
        goto LABEL_53;
      }

      goto LABEL_62;
    }

    if (v114)
    {
      goto LABEL_61;
    }

    v129 = v115;
    sub_23A69DDB4();
    v115 = v129;
    v107 = v209;
    if (v120)
    {
LABEL_53:
      *(v107[7] + v115) = 1;
      (*v204)(v201, v208);
      sub_23A6D4E28(v197, type metadata accessor for MobilePhotoIDRawDataRequest.Element);
      goto LABEL_54;
    }

LABEL_62:
    v122 = v110;
    v107[(v115 >> 6) + 8] |= 1 << v115;
    v123 = v205;
    v124 = v115;
    v125 = v201;
    v126 = v208;
    v112(v107[6] + *(v205 + 72) * v115, v201, v208);
    *(v107[7] + v124) = 1;
    (*(v123 + 8))(v125, v126);
    sub_23A6D4E28(v197, type metadata accessor for MobilePhotoIDRawDataRequest.Element);
    v127 = v107[2];
    v56 = __OFADD__(v127, 1);
    v128 = v127 + 1;
    if (v56)
    {
      goto LABEL_117;
    }

    v107[2] = v128;
    v110 = v122;
LABEL_54:
    if (v108 == ++v109)
    {
      goto LABEL_85;
    }
  }

LABEL_112:
  __break(1u);
LABEL_113:
  __break(1u);
LABEL_114:
  __break(1u);
LABEL_115:
  __break(1u);
LABEL_116:
  __break(1u);
LABEL_117:
  __break(1u);
LABEL_118:
  __break(1u);
LABEL_119:
  result = sub_23A6DFC54();
  __break(1u);
  return result;
}

uint64_t MobileDocumentAnyOfRawDataRequest.hashValue.getter()
{
  v1 = *v0;
  sub_23A6DFCE4();
  sub_23A69E024(v3, v1);
  return sub_23A6DFD14();
}

uint64_t sub_23A6D4D5C(uint64_t a1, uint64_t a2, __n128 a3)
{
  v5 = type metadata accessor for MobileNationalIDCardRawDataRequest(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_23A6D4DC0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_23A6D4E28(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_23A6D4E8C()
{
  result = qword_27DF9D548;
  if (!qword_27DF9D548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF9D548);
  }

  return result;
}

unint64_t sub_23A6D4EE0(uint64_t a1)
{
  result = sub_23A6D4F08();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_23A6D4F08()
{
  result = qword_27DF9D550;
  if (!qword_27DF9D550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF9D550);
  }

  return result;
}

unint64_t sub_23A6D4F60()
{
  result = qword_27DF9D558;
  if (!qword_27DF9D558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF9D558);
  }

  return result;
}

uint64_t MobileDocumentAnyOfRawDataRequest.Response.responseData.getter()
{
  v1 = *v0;
  sub_23A693764(*v0, *(v0 + 8));
  return v1;
}

uint64_t MobileDocumentAnyOfRawDataRequest.Response.sessionTranscript.getter()
{
  v1 = *(v0 + 16);
  sub_23A693764(v1, *(v0 + 24));
  return v1;
}

BOOL static MobileDocumentAnyOfRawDataRequest.Response.== infix(_:_:)(_BOOL8 *a1, uint64_t *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  if (!sub_23A6A3EE8(*a1, a1[1], *a2, a2[1]))
  {
    return 0;
  }

  return sub_23A6A3EE8(v2, v3, v4, v5);
}

uint64_t MobileDocumentAnyOfRawDataRequest.Response.hash(into:)(uint64_t a1)
{
  sub_23A6DE244();

  return sub_23A6DE244();
}

uint64_t MobileDocumentAnyOfRawDataRequest.Response.hashValue.getter()
{
  sub_23A6DFCE4();
  sub_23A6DE244();
  sub_23A6DE244();
  return sub_23A6DFD14();
}

uint64_t sub_23A6D515C()
{
  sub_23A6DFCE4();
  sub_23A6DE244();
  sub_23A6DE244();
  return sub_23A6DFD14();
}

uint64_t sub_23A6D51C4(uint64_t a1)
{
  sub_23A6DE244();

  return sub_23A6DE244();
}

uint64_t sub_23A6D5214(uint64_t a1)
{
  sub_23A6DFCE4();
  sub_23A6DE244();
  sub_23A6DE244();
  return sub_23A6DFD14();
}

BOOL sub_23A6D5278(_BOOL8 *a1, uint64_t *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  if (!sub_23A6A3EE8(*a1, a1[1], *a2, a2[1]))
  {
    return 0;
  }

  return sub_23A6A3EE8(v2, v3, v4, v5);
}

unint64_t sub_23A6D52F4()
{
  result = qword_27DF9D560;
  if (!qword_27DF9D560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF9D560);
  }

  return result;
}

uint64_t sub_23A6D5348(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xD && *(a1 + 32))
  {
    return (*a1 + 13);
  }

  v3 = (((*(a1 + 8) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 8) >> 60) & 3))) ^ 0xF;
  if (v3 >= 0xC)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_23A6D539C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 13;
    *(result + 8) = 0;
    if (a3 >= 0xD)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

uint64_t MobileDriversLicenseRawDataRequest.retainedElements.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t MobileDriversLicenseRawDataRequest.nonRetainedElements.setter(uint64_t a1)
{

  *(v1 + 8) = a1;
  return result;
}

uint64_t MobileDriversLicenseRawDataRequest.init(retainedElements:nonRetainedElements:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t static MobileDriversLicenseRawDataRequest.== infix(_:_:)(uint64_t *a1, uint64_t *a2, __n128 a3)
{
  v3 = a1[1];
  v4 = a2[1];
  if ((sub_23A6D5508(*a1, *a2, a3) & 1) == 0)
  {
    return 0;
  }

  return sub_23A6D5508(v3, v4, v5);
}

uint64_t sub_23A6D5508(uint64_t a1, uint64_t a2, __n128 a3)
{
  v5 = type metadata accessor for MobileDriversLicenseRawDataRequest.Element(0);
  MEMORY[0x28223BE20](v5);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v24 - v11;
  v13 = *(a1 + 16);
  if (v13 == *(a2 + 16))
  {
    if (!v13 || a1 == a2)
    {
      v20 = 1;
    }

    else
    {
      v14 = (*(v9 + 80) + 32) & ~*(v9 + 80);
      v15 = a1 + v14;
      v16 = a2 + v14;
      v17 = *(v9 + 72);
      do
      {
        sub_23A6D58A4(v15, v12, v10);
        sub_23A6D58A4(v16, v7, v18);
        sub_23A6D6114(&qword_27DF9D588, &protocol conformance descriptor for MobileDriversLicenseRawDataRequest.Element, v19);
        v20 = sub_23A6DF604();
        sub_23A6D5908(v7, v21);
        sub_23A6D5908(v12, v22);
        if ((v20 & 1) == 0)
        {
          break;
        }

        v16 += v17;
        v15 += v17;
        --v13;
      }

      while (v13);
    }
  }

  else
  {
    v20 = 0;
  }

  return v20 & 1;
}

uint64_t MobileDriversLicenseRawDataRequest.hash(into:)(uint64_t a1, __n128 a2)
{
  v3 = type metadata accessor for MobileDriversLicenseRawDataRequest.Element(0);
  v26 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v6);
  v9 = &v25 - v8;
  v10 = *v2;
  v11 = v2[1];
  MEMORY[0x23EE8A1E0](*(*v2 + 16), v7);
  v13 = *(v10 + 16);
  if (v13)
  {
    v14 = v10 + ((*(v26 + 80) + 32) & ~*(v26 + 80));
    v15 = *(v26 + 72);
    do
    {
      sub_23A6D58A4(v14, v9, v12);
      sub_23A6D6114(&qword_27DF9D568, &protocol conformance descriptor for MobileDriversLicenseRawDataRequest.Element, v16);
      sub_23A6DF5E4();
      sub_23A6D5908(v9, v17);
      v14 += v15;
      --v13;
    }

    while (v13);
  }

  result = MEMORY[0x23EE8A1E0](*(v11 + 16));
  v20 = *(v11 + 16);
  if (v20)
  {
    v21 = v11 + ((*(v26 + 80) + 32) & ~*(v26 + 80));
    v22 = *(v26 + 72);
    do
    {
      sub_23A6D58A4(v21, v5, v19);
      sub_23A6D6114(&qword_27DF9D568, &protocol conformance descriptor for MobileDriversLicenseRawDataRequest.Element, v23);
      sub_23A6DF5E4();
      result = sub_23A6D5908(v5, v24);
      v21 += v22;
      --v20;
    }

    while (v20);
  }

  return result;
}

uint64_t sub_23A6D58A4(uint64_t a1, uint64_t a2, __n128 a3)
{
  v5 = type metadata accessor for MobileDriversLicenseRawDataRequest.Element(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_23A6D5908(uint64_t a1, __n128 a2)
{
  v3 = type metadata accessor for MobileDriversLicenseRawDataRequest.Element(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t MobileDriversLicenseRawDataRequest.hashValue.getter(__n128 a1)
{
  v2 = type metadata accessor for MobileDriversLicenseRawDataRequest.Element(0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v24 - v7;
  v9 = *v1;
  v10 = v1[1];
  sub_23A6DFCE4();
  MEMORY[0x23EE8A1E0](*(v9 + 16));
  v12 = *(v9 + 16);
  if (v12)
  {
    v13 = v9 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v14 = *(v3 + 72);
    do
    {
      sub_23A6D58A4(v13, v8, v11);
      sub_23A6D6114(&qword_27DF9D568, &protocol conformance descriptor for MobileDriversLicenseRawDataRequest.Element, v15);
      sub_23A6DF5E4();
      sub_23A6D5908(v8, v16);
      v13 += v14;
      --v12;
    }

    while (v12);
  }

  MEMORY[0x23EE8A1E0](*(v10 + 16));
  v18 = *(v10 + 16);
  if (v18)
  {
    v19 = v10 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v20 = *(v3 + 72);
    do
    {
      sub_23A6D58A4(v19, v5, v17);
      sub_23A6D6114(&qword_27DF9D568, &protocol conformance descriptor for MobileDriversLicenseRawDataRequest.Element, v21);
      sub_23A6DF5E4();
      sub_23A6D5908(v5, v22);
      v19 += v20;
      --v18;
    }

    while (v18);
  }

  return sub_23A6DFD14();
}

uint64_t sub_23A6D5B5C(uint64_t a1, __n128 a2)
{
  v3 = type metadata accessor for MobileDriversLicenseRawDataRequest.Element(0);
  v26 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v6);
  v9 = &v25 - v8;
  v10 = *v2;
  v11 = v2[1];
  MEMORY[0x23EE8A1E0](*(*v2 + 16), v7);
  v13 = *(v10 + 16);
  if (v13)
  {
    v14 = v10 + ((*(v26 + 80) + 32) & ~*(v26 + 80));
    v15 = *(v26 + 72);
    do
    {
      sub_23A6D58A4(v14, v9, v12);
      sub_23A6D6114(&qword_27DF9D568, &protocol conformance descriptor for MobileDriversLicenseRawDataRequest.Element, v16);
      sub_23A6DF5E4();
      sub_23A6D5908(v9, v17);
      v14 += v15;
      --v13;
    }

    while (v13);
  }

  result = MEMORY[0x23EE8A1E0](*(v11 + 16));
  v20 = *(v11 + 16);
  if (v20)
  {
    v21 = v11 + ((*(v26 + 80) + 32) & ~*(v26 + 80));
    v22 = *(v26 + 72);
    do
    {
      sub_23A6D58A4(v21, v5, v19);
      sub_23A6D6114(&qword_27DF9D568, &protocol conformance descriptor for MobileDriversLicenseRawDataRequest.Element, v23);
      sub_23A6DF5E4();
      result = sub_23A6D5908(v5, v24);
      v21 += v22;
      --v20;
    }

    while (v20);
  }

  return result;
}

uint64_t sub_23A6D5D48(uint64_t a1, __n128 a2)
{
  v3 = type metadata accessor for MobileDriversLicenseRawDataRequest.Element(0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v25 - v8;
  v10 = *v2;
  v11 = v2[1];
  sub_23A6DFCE4();
  MEMORY[0x23EE8A1E0](*(v10 + 16));
  v13 = *(v10 + 16);
  if (v13)
  {
    v14 = v10 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v15 = *(v4 + 72);
    do
    {
      sub_23A6D58A4(v14, v9, v12);
      sub_23A6D6114(&qword_27DF9D568, &protocol conformance descriptor for MobileDriversLicenseRawDataRequest.Element, v16);
      sub_23A6DF5E4();
      sub_23A6D5908(v9, v17);
      v14 += v15;
      --v13;
    }

    while (v13);
  }

  MEMORY[0x23EE8A1E0](*(v11 + 16));
  v19 = *(v11 + 16);
  if (v19)
  {
    v20 = v11 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v21 = *(v4 + 72);
    do
    {
      sub_23A6D58A4(v20, v6, v18);
      sub_23A6D6114(&qword_27DF9D568, &protocol conformance descriptor for MobileDriversLicenseRawDataRequest.Element, v22);
      sub_23A6DF5E4();
      sub_23A6D5908(v6, v23);
      v20 += v21;
      --v19;
    }

    while (v19);
  }

  return sub_23A6DFD14();
}

uint64_t sub_23A6D5F40(uint64_t *a1, uint64_t *a2, __n128 a3)
{
  v3 = a1[1];
  v4 = a2[1];
  if ((sub_23A6D5508(*a1, *a2, a3) & 1) == 0)
  {
    return 0;
  }

  return sub_23A6D5508(v3, v4, v5);
}

uint64_t static MobileDocumentRequest<>.driversLicenseRawData(retaining:notRetaining:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = a1;
  a3[1] = a2;
}

unint64_t sub_23A6D5FDC()
{
  result = qword_27DF9D570;
  if (!qword_27DF9D570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF9D570);
  }

  return result;
}

unint64_t sub_23A6D6030(uint64_t a1)
{
  result = sub_23A6D6058();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_23A6D6058()
{
  result = qword_27DF9D578;
  if (!qword_27DF9D578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF9D578);
  }

  return result;
}

unint64_t sub_23A6D60B0()
{
  result = qword_27DF9D580;
  if (!qword_27DF9D580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF9D580);
  }

  return result;
}

uint64_t sub_23A6D6114(unint64_t *a1, uint64_t a2, __n128 a3)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for MobileDriversLicenseRawDataRequest.Element(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t type metadata accessor for MobileDriversLicenseRawDataRequest.Element(uint64_t a1)
{
  result = qword_27DFA5230;
  if (!qword_27DFA5230)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_23A6D65A8(uint64_t a1, uint64_t *a2, unsigned int *a3)
{
  v5 = type metadata accessor for MobileDriversLicenseRawDataRequest.Element(0);
  __swift_allocate_value_buffer(v5, a2);
  v6 = __swift_project_value_buffer(v5, a2);
  v7 = *a3;
  v8 = sub_23A6DE9B4();
  v9 = *(*(v8 - 8) + 104);

  return v9(v6, v7, v8);
}

uint64_t sub_23A6D6668@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for MobileDriversLicenseRawDataRequest.Element(0);
  v7 = __swift_project_value_buffer(v6, a2);

  return sub_23A6D58A4(v7, a4, v8);
}

uint64_t static MobileDriversLicenseRawDataRequest.Element.ageAtLeast(_:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = a1;
  v3 = *MEMORY[0x277D43A48];
  v4 = sub_23A6DE9B4();
  v5 = *(*(v4 - 8) + 104);

  return v5(a2, v3, v4);
}

uint64_t MobileDriversLicenseRawDataRequest.Element.hash(into:)(uint64_t a1)
{
  sub_23A6DE9B4();
  sub_23A6D6A28(&qword_27DF9CC10, MEMORY[0x277D43AE8], MEMORY[0x277D43AF0]);

  return sub_23A6DF5E4();
}

uint64_t MobileDriversLicenseRawDataRequest.Element.hashValue.getter()
{
  sub_23A6DFCE4();
  sub_23A6DE9B4();
  sub_23A6D6A28(&qword_27DF9CC10, MEMORY[0x277D43AE8], MEMORY[0x277D43AF0]);
  sub_23A6DF5E4();
  return sub_23A6DFD14();
}

uint64_t sub_23A6D6850()
{
  sub_23A6DFCE4();
  sub_23A6DE9B4();
  sub_23A6D6A28(&qword_27DF9CC10, MEMORY[0x277D43AE8], MEMORY[0x277D43AF0]);
  sub_23A6DF5E4();
  return sub_23A6DFD14();
}

uint64_t sub_23A6D68D8(uint64_t a1)
{
  sub_23A6DE9B4();
  sub_23A6D6A28(&qword_27DF9CC10, MEMORY[0x277D43AE8], MEMORY[0x277D43AF0]);

  return sub_23A6DF5E4();
}

uint64_t sub_23A6D695C(uint64_t a1)
{
  sub_23A6DFCE4();
  sub_23A6DE9B4();
  sub_23A6D6A28(&qword_27DF9CC10, MEMORY[0x277D43AE8], MEMORY[0x277D43AF0]);
  sub_23A6DF5E4();
  return sub_23A6DFD14();
}

uint64_t sub_23A6D6A28(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t MobileDriversLicenseRawDataRequest.Response.responseData.getter()
{
  v1 = *v0;
  sub_23A693764(*v0, *(v0 + 8));
  return v1;
}

uint64_t MobileDriversLicenseRawDataRequest.Response.sessionTranscript.getter()
{
  v1 = *(v0 + 16);
  sub_23A693764(v1, *(v0 + 24));
  return v1;
}

BOOL static MobileDriversLicenseRawDataRequest.Response.== infix(_:_:)(_BOOL8 *a1, uint64_t *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  if (!sub_23A6A3EE8(*a1, a1[1], *a2, a2[1]))
  {
    return 0;
  }

  return sub_23A6A3EE8(v2, v3, v4, v5);
}

uint64_t MobileDriversLicenseRawDataRequest.Response.hash(into:)(uint64_t a1)
{
  sub_23A6DE244();

  return sub_23A6DE244();
}

uint64_t MobileDriversLicenseRawDataRequest.Response.hashValue.getter()
{
  sub_23A6DFCE4();
  sub_23A6DE244();
  sub_23A6DE244();
  return sub_23A6DFD14();
}

unint64_t sub_23A6D6C34()
{
  result = qword_27DF9D590;
  if (!qword_27DF9D590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF9D590);
  }

  return result;
}

uint64_t static MobileNationalIDCardRawDataRequest.isSupportedRegion(_:)(uint64_t a1)
{
  v2 = *(**sub_23A6509F0() + 168);

  LOBYTE(a1) = v2(a1);

  return a1 & 1;
}

uint64_t MobileNationalIDCardRawDataRequest.region.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_23A6DE314();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t MobileNationalIDCardRawDataRequest.region.setter(uint64_t a1)
{
  v3 = sub_23A6DE314();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t MobileNationalIDCardRawDataRequest.retainedElements.getter(__n128 a1)
{
  type metadata accessor for MobileNationalIDCardRawDataRequest(0);
}

uint64_t type metadata accessor for MobileNationalIDCardRawDataRequest(uint64_t a1)
{
  result = qword_27DFA5540;
  if (!qword_27DFA5540)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t MobileNationalIDCardRawDataRequest.retainedElements.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for MobileNationalIDCardRawDataRequest(0) + 20);

  *(v1 + v3) = a1;
  return result;
}

uint64_t MobileNationalIDCardRawDataRequest.nonRetainedElements.getter()
{
  type metadata accessor for MobileNationalIDCardRawDataRequest(0);
}

uint64_t MobileNationalIDCardRawDataRequest.nonRetainedElements.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for MobileNationalIDCardRawDataRequest(0) + 24);

  *(v1 + v3) = a1;
  return result;
}

uint64_t MobileNationalIDCardRawDataRequest.init(region:retainedElements:nonRetainedElements:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_23A6DE314();
  (*(*(v8 - 8) + 32))(a4, a1, v8);
  result = type metadata accessor for MobileNationalIDCardRawDataRequest(0);
  *(a4 + *(result + 20)) = a2;
  *(a4 + *(result + 24)) = a3;
  return result;
}

uint64_t static MobileNationalIDCardRawDataRequest.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((MEMORY[0x23EE887F0]() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for MobileNationalIDCardRawDataRequest(0);
  if ((sub_23A6D70C8(*(a1 + *(v4 + 20)), *(a2 + *(v4 + 20)), v5) & 1) == 0)
  {
    return 0;
  }

  v7 = *(v4 + 24);
  v8 = *(a1 + v7);
  v9 = *(a2 + v7);

  return sub_23A6D70C8(v8, v9, v6);
}

uint64_t sub_23A6D70C8(uint64_t a1, uint64_t a2, __n128 a3)
{
  v5 = type metadata accessor for MobileNationalIDCardRawDataRequest.Element(0);
  MEMORY[0x28223BE20](v5);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v23 - v11;
  v13 = *(a1 + 16);
  if (v13 == *(a2 + 16))
  {
    if (!v13 || a1 == a2)
    {
      v19 = 1;
    }

    else
    {
      v14 = (*(v9 + 80) + 32) & ~*(v9 + 80);
      v15 = a1 + v14;
      v16 = a2 + v14;
      v17 = *(v9 + 72);
      do
      {
        sub_23A6D7510(v15, v12, v10);
        sub_23A6D7510(v16, v7, v18);
        sub_23A6D80EC(&qword_27DF9D5C0, type metadata accessor for MobileNationalIDCardRawDataRequest.Element, &protocol conformance descriptor for MobileNationalIDCardRawDataRequest.Element);
        v19 = sub_23A6DF604();
        sub_23A6D7574(v7, v20);
        sub_23A6D7574(v12, v21);
        if ((v19 & 1) == 0)
        {
          break;
        }

        v16 += v17;
        v15 += v17;
        --v13;
      }

      while (v13);
    }
  }

  else
  {
    v19 = 0;
  }

  return v19 & 1;
}

uint64_t MobileNationalIDCardRawDataRequest.hash(into:)(uint64_t a1, __n128 a2)
{
  v3 = type metadata accessor for MobileNationalIDCardRawDataRequest.Element(0);
  v25 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v24 - v7;
  sub_23A6DE314();
  sub_23A6D80EC(&qword_27DF9CEC0, MEMORY[0x277CC9698], MEMORY[0x277CC96A8]);
  sub_23A6DF5E4();
  v9 = type metadata accessor for MobileNationalIDCardRawDataRequest(0);
  v10 = *(v9 + 20);
  v24 = v2;
  v11 = *(v2 + v10);
  MEMORY[0x23EE8A1E0](*(v11 + 16));
  v13 = *(v11 + 16);
  if (v13)
  {
    v14 = v11 + ((*(v25 + 80) + 32) & ~*(v25 + 80));
    v15 = *(v25 + 72);
    do
    {
      sub_23A6D7510(v14, v8, v12);
      sub_23A6D80EC(&qword_27DF9D598, type metadata accessor for MobileNationalIDCardRawDataRequest.Element, &protocol conformance descriptor for MobileNationalIDCardRawDataRequest.Element);
      sub_23A6DF5E4();
      sub_23A6D7574(v8, v16);
      v14 += v15;
      --v13;
    }

    while (v13);
  }

  v17 = *(v24 + *(v9 + 24));
  result = MEMORY[0x23EE8A1E0](*(v17 + 16));
  v20 = *(v17 + 16);
  if (v20)
  {
    v21 = v17 + ((*(v25 + 80) + 32) & ~*(v25 + 80));
    v22 = *(v25 + 72);
    do
    {
      sub_23A6D7510(v21, v5, v19);
      sub_23A6D80EC(&qword_27DF9D598, type metadata accessor for MobileNationalIDCardRawDataRequest.Element, &protocol conformance descriptor for MobileNationalIDCardRawDataRequest.Element);
      sub_23A6DF5E4();
      result = sub_23A6D7574(v5, v23);
      v21 += v22;
      --v20;
    }

    while (v20);
  }

  return result;
}

uint64_t sub_23A6D7510(uint64_t a1, uint64_t a2, __n128 a3)
{
  v5 = type metadata accessor for MobileNationalIDCardRawDataRequest.Element(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_23A6D7574(uint64_t a1, __n128 a2)
{
  v3 = type metadata accessor for MobileNationalIDCardRawDataRequest.Element(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t MobileNationalIDCardRawDataRequest.hashValue.getter(__n128 a1)
{
  v2 = type metadata accessor for MobileNationalIDCardRawDataRequest.Element(0);
  v22 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v4 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v22 - v6;
  sub_23A6DFCE4();
  sub_23A6DE314();
  sub_23A6D80EC(&qword_27DF9CEC0, MEMORY[0x277CC9698], MEMORY[0x277CC96A8]);
  sub_23A6DF5E4();
  v8 = type metadata accessor for MobileNationalIDCardRawDataRequest(0);
  v9 = *(v1 + *(v8 + 20));
  MEMORY[0x23EE8A1E0](*(v9 + 16));
  v11 = *(v9 + 16);
  if (v11)
  {
    v12 = v9 + ((*(v22 + 80) + 32) & ~*(v22 + 80));
    v13 = *(v22 + 72);
    do
    {
      sub_23A6D7510(v12, v7, v10);
      sub_23A6D80EC(&qword_27DF9D598, type metadata accessor for MobileNationalIDCardRawDataRequest.Element, &protocol conformance descriptor for MobileNationalIDCardRawDataRequest.Element);
      sub_23A6DF5E4();
      sub_23A6D7574(v7, v14);
      v12 += v13;
      --v11;
    }

    while (v11);
  }

  v15 = *(v1 + *(v8 + 24));
  MEMORY[0x23EE8A1E0](*(v15 + 16));
  v17 = *(v15 + 16);
  if (v17)
  {
    v18 = v15 + ((*(v22 + 80) + 32) & ~*(v22 + 80));
    v19 = *(v22 + 72);
    do
    {
      sub_23A6D7510(v18, v4, v16);
      sub_23A6D80EC(&qword_27DF9D598, type metadata accessor for MobileNationalIDCardRawDataRequest.Element, &protocol conformance descriptor for MobileNationalIDCardRawDataRequest.Element);
      sub_23A6DF5E4();
      sub_23A6D7574(v4, v20);
      v18 += v19;
      --v17;
    }

    while (v17);
  }

  return sub_23A6DFD14();
}

uint64_t sub_23A6D7864(uint64_t a1, uint64_t a2, __n128 a3)
{
  v5 = type metadata accessor for MobileNationalIDCardRawDataRequest.Element(0);
  v25 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v24 - v9;
  sub_23A6DE314();
  sub_23A6D80EC(&qword_27DF9CEC0, MEMORY[0x277CC9698], MEMORY[0x277CC96A8]);
  sub_23A6DF5E4();
  v24 = a2;
  v11 = *(v3 + *(a2 + 20));
  MEMORY[0x23EE8A1E0](*(v11 + 16));
  v13 = *(v11 + 16);
  if (v13)
  {
    v14 = v11 + ((*(v25 + 80) + 32) & ~*(v25 + 80));
    v15 = *(v25 + 72);
    do
    {
      sub_23A6D7510(v14, v10, v12);
      sub_23A6D80EC(&qword_27DF9D598, type metadata accessor for MobileNationalIDCardRawDataRequest.Element, &protocol conformance descriptor for MobileNationalIDCardRawDataRequest.Element);
      sub_23A6DF5E4();
      sub_23A6D7574(v10, v16);
      v14 += v15;
      --v13;
    }

    while (v13);
  }

  v17 = *(v3 + *(v24 + 24));
  result = MEMORY[0x23EE8A1E0](*(v17 + 16));
  v20 = *(v17 + 16);
  if (v20)
  {
    v21 = v17 + ((*(v25 + 80) + 32) & ~*(v25 + 80));
    v22 = *(v25 + 72);
    do
    {
      sub_23A6D7510(v21, v7, v19);
      sub_23A6D80EC(&qword_27DF9D598, type metadata accessor for MobileNationalIDCardRawDataRequest.Element, &protocol conformance descriptor for MobileNationalIDCardRawDataRequest.Element);
      sub_23A6DF5E4();
      result = sub_23A6D7574(v7, v23);
      v21 += v22;
      --v20;
    }

    while (v20);
  }

  return result;
}

uint64_t sub_23A6D7AE4(uint64_t a1, uint64_t a2, __n128 a3)
{
  v5 = type metadata accessor for MobileNationalIDCardRawDataRequest.Element(0);
  v25 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v25 - v9;
  sub_23A6DFCE4();
  sub_23A6DE314();
  sub_23A6D80EC(&qword_27DF9CEC0, MEMORY[0x277CC9698], MEMORY[0x277CC96A8]);
  sub_23A6DF5E4();
  v11 = a2;
  v12 = *(v3 + *(a2 + 20));
  MEMORY[0x23EE8A1E0](*(v12 + 16));
  v14 = *(v12 + 16);
  if (v14)
  {
    v15 = v12 + ((*(v25 + 80) + 32) & ~*(v25 + 80));
    v16 = *(v25 + 72);
    do
    {
      sub_23A6D7510(v15, v10, v13);
      sub_23A6D80EC(&qword_27DF9D598, type metadata accessor for MobileNationalIDCardRawDataRequest.Element, &protocol conformance descriptor for MobileNationalIDCardRawDataRequest.Element);
      sub_23A6DF5E4();
      sub_23A6D7574(v10, v17);
      v15 += v16;
      --v14;
    }

    while (v14);
  }

  v18 = *(v3 + *(v11 + 24));
  MEMORY[0x23EE8A1E0](*(v18 + 16));
  v20 = *(v18 + 16);
  if (v20)
  {
    v21 = v18 + ((*(v25 + 80) + 32) & ~*(v25 + 80));
    v22 = *(v25 + 72);
    do
    {
      sub_23A6D7510(v21, v7, v19);
      sub_23A6D80EC(&qword_27DF9D598, type metadata accessor for MobileNationalIDCardRawDataRequest.Element, &protocol conformance descriptor for MobileNationalIDCardRawDataRequest.Element);
      sub_23A6DF5E4();
      sub_23A6D7574(v7, v23);
      v21 += v22;
      --v20;
    }

    while (v20);
  }

  return sub_23A6DFD14();
}

uint64_t sub_23A6D7D78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((MEMORY[0x23EE887F0]() & 1) == 0 || (sub_23A6D70C8(*(a1 + *(a3 + 20)), *(a2 + *(a3 + 20)), v6) & 1) == 0)
  {
    return 0;
  }

  v8 = *(a3 + 24);
  v9 = *(a1 + v8);
  v10 = *(a2 + v8);

  return sub_23A6D70C8(v9, v10, v7);
}

uint64_t static MobileDocumentRequest<>.nationalIDCardRawData(region:retaining:notRetaining:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_23A6DE314();
  (*(*(v8 - 8) + 16))(a4, a1, v8);
  v9 = type metadata accessor for MobileNationalIDCardRawDataRequest(0);
  *(a4 + *(v9 + 20)) = a2;
  *(a4 + *(v9 + 24)) = a3;
}

unint64_t sub_23A6D7E9C()
{
  result = qword_27DF9D5A0;
  if (!qword_27DF9D5A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF9D5A0);
  }

  return result;
}

uint64_t sub_23A6D7EF0(uint64_t a1)
{
  result = sub_23A6D80EC(&qword_27DF9D5A8, type metadata accessor for MobileNationalIDCardRawDataRequest, &protocol conformance descriptor for MobileNationalIDCardRawDataRequest);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_23A6D7F90(uint64_t a1)
{
  result = sub_23A6D80EC(&qword_27DF9CF80, type metadata accessor for MobileNationalIDCardRawDataRequest, &protocol conformance descriptor for MobileNationalIDCardRawDataRequest);
  *(a1 + 8) = result;
  return result;
}

void sub_23A6D8010(uint64_t a1)
{
  sub_23A6DE314();
  if (v2 <= 0x3F)
  {
    sub_23A6D8094(319, v1);
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_23A6D8094(uint64_t a1, __n128 a2)
{
  if (!qword_27DF9D5B8)
  {
    type metadata accessor for MobileNationalIDCardRawDataRequest.Element(255);
    v2 = sub_23A6DF744();
    if (!v3)
    {
      atomic_store(v2, &qword_27DF9D5B8);
    }
  }
}

uint64_t sub_23A6D80EC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t type metadata accessor for MobileNationalIDCardRawDataRequest.Element(uint64_t a1)
{
  result = qword_27DFA5750;
  if (!qword_27DFA5750)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_23A6D831C(uint64_t a1, uint64_t *a2, unsigned int *a3)
{
  v5 = type metadata accessor for MobileNationalIDCardRawDataRequest.Element(0);
  __swift_allocate_value_buffer(v5, a2);
  v6 = __swift_project_value_buffer(v5, a2);
  v7 = *a3;
  v8 = sub_23A6DE9B4();
  v9 = *(*(v8 - 8) + 104);

  return v9(v6, v7, v8);
}

uint64_t sub_23A6D83DC@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for MobileNationalIDCardRawDataRequest.Element(0);
  v7 = __swift_project_value_buffer(v6, a2);

  return sub_23A6D7510(v7, a4, v8);
}

uint64_t static MobileNationalIDCardRawDataRequest.Element.ageAtLeast(_:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = a1;
  v3 = *MEMORY[0x277D43A48];
  v4 = sub_23A6DE9B4();
  v5 = *(*(v4 - 8) + 104);

  return v5(a2, v3, v4);
}

uint64_t MobileNationalIDCardRawDataRequest.Element.hash(into:)(uint64_t a1)
{
  sub_23A6DE9B4();
  sub_23A6D879C(&qword_27DF9CC10, MEMORY[0x277D43AE8], MEMORY[0x277D43AF0]);

  return sub_23A6DF5E4();
}

uint64_t MobileNationalIDCardRawDataRequest.Element.hashValue.getter()
{
  sub_23A6DFCE4();
  sub_23A6DE9B4();
  sub_23A6D879C(&qword_27DF9CC10, MEMORY[0x277D43AE8], MEMORY[0x277D43AF0]);
  sub_23A6DF5E4();
  return sub_23A6DFD14();
}

uint64_t sub_23A6D85C4()
{
  sub_23A6DFCE4();
  sub_23A6DE9B4();
  sub_23A6D879C(&qword_27DF9CC10, MEMORY[0x277D43AE8], MEMORY[0x277D43AF0]);
  sub_23A6DF5E4();
  return sub_23A6DFD14();
}

uint64_t sub_23A6D864C(uint64_t a1)
{
  sub_23A6DE9B4();
  sub_23A6D879C(&qword_27DF9CC10, MEMORY[0x277D43AE8], MEMORY[0x277D43AF0]);

  return sub_23A6DF5E4();
}

uint64_t sub_23A6D86D0(uint64_t a1)
{
  sub_23A6DFCE4();
  sub_23A6DE9B4();
  sub_23A6D879C(&qword_27DF9CC10, MEMORY[0x277D43AE8], MEMORY[0x277D43AF0]);
  sub_23A6DF5E4();
  return sub_23A6DFD14();
}

uint64_t sub_23A6D879C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t MobileNationalIDCardRawDataRequest.Response.responseData.getter()
{
  v1 = *v0;
  sub_23A693764(*v0, *(v0 + 8));
  return v1;
}

uint64_t MobileNationalIDCardRawDataRequest.Response.sessionTranscript.getter()
{
  v1 = *(v0 + 16);
  sub_23A693764(v1, *(v0 + 24));
  return v1;
}

BOOL static MobileNationalIDCardRawDataRequest.Response.== infix(_:_:)(_BOOL8 *a1, uint64_t *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  if (!sub_23A6A3EE8(*a1, a1[1], *a2, a2[1]))
  {
    return 0;
  }

  return sub_23A6A3EE8(v2, v3, v4, v5);
}

uint64_t MobileNationalIDCardRawDataRequest.Response.hash(into:)(uint64_t a1)
{
  sub_23A6DE244();

  return sub_23A6DE244();
}

uint64_t MobileNationalIDCardRawDataRequest.Response.hashValue.getter()
{
  sub_23A6DFCE4();
  sub_23A6DE244();
  sub_23A6DE244();
  return sub_23A6DFD14();
}

unint64_t sub_23A6D89A8()
{
  result = qword_27DF9D5C8;
  if (!qword_27DF9D5C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF9D5C8);
  }

  return result;
}

uint64_t MobilePhotoIDRawDataRequest.retainedElements.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t MobilePhotoIDRawDataRequest.nonRetainedElements.setter(uint64_t a1)
{

  *(v1 + 8) = a1;
  return result;
}

uint64_t MobilePhotoIDRawDataRequest.init(retainedElements:nonRetainedElements:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t static MobilePhotoIDRawDataRequest.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  if ((sub_23A6D8B18(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  return sub_23A6D8B18(v2, v3);
}

uint64_t sub_23A6D8B18(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MobilePhotoIDRawDataRequest.Element(0);
  MEMORY[0x28223BE20](v4);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = &v18 - v9;
  v11 = *(a1 + 16);
  if (v11 == *(a2 + 16))
  {
    if (!v11 || a1 == a2)
    {
      v16 = 1;
    }

    else
    {
      v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
      v13 = a1 + v12;
      v14 = a2 + v12;
      v15 = *(v8 + 72);
      do
      {
        sub_23A6D8EB4(v13, v10);
        sub_23A6D8EB4(v14, v6);
        sub_23A6D9724(&qword_27DF9D5F0, &protocol conformance descriptor for MobilePhotoIDRawDataRequest.Element);
        v16 = sub_23A6DF604();
        sub_23A6D8F18(v6);
        sub_23A6D8F18(v10);
        if ((v16 & 1) == 0)
        {
          break;
        }

        v14 += v15;
        v13 += v15;
        --v11;
      }

      while (v11);
    }
  }

  else
  {
    v16 = 0;
  }

  return v16 & 1;
}

uint64_t MobilePhotoIDRawDataRequest.hash(into:)(uint64_t a1)
{
  v2 = type metadata accessor for MobilePhotoIDRawDataRequest.Element(0);
  v19 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v5);
  v8 = &v18 - v7;
  v9 = *v1;
  v10 = v1[1];
  MEMORY[0x23EE8A1E0](*(*v1 + 16), v6);
  v11 = *(v9 + 16);
  if (v11)
  {
    v12 = v9 + ((*(v19 + 80) + 32) & ~*(v19 + 80));
    v13 = *(v19 + 72);
    do
    {
      sub_23A6D8EB4(v12, v8);
      sub_23A6D9724(&qword_27DF9D5D0, &protocol conformance descriptor for MobilePhotoIDRawDataRequest.Element);
      sub_23A6DF5E4();
      sub_23A6D8F18(v8);
      v12 += v13;
      --v11;
    }

    while (v11);
  }

  result = MEMORY[0x23EE8A1E0](*(v10 + 16));
  v15 = *(v10 + 16);
  if (v15)
  {
    v16 = v10 + ((*(v19 + 80) + 32) & ~*(v19 + 80));
    v17 = *(v19 + 72);
    do
    {
      sub_23A6D8EB4(v16, v4);
      sub_23A6D9724(&qword_27DF9D5D0, &protocol conformance descriptor for MobilePhotoIDRawDataRequest.Element);
      sub_23A6DF5E4();
      result = sub_23A6D8F18(v4);
      v16 += v17;
      --v15;
    }

    while (v15);
  }

  return result;
}

uint64_t sub_23A6D8EB4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MobilePhotoIDRawDataRequest.Element(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23A6D8F18(uint64_t a1)
{
  v2 = type metadata accessor for MobilePhotoIDRawDataRequest.Element(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t MobilePhotoIDRawDataRequest.hashValue.getter()
{
  v1 = type metadata accessor for MobilePhotoIDRawDataRequest.Element(0);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v17 - v6;
  v8 = *v0;
  v9 = v0[1];
  sub_23A6DFCE4();
  MEMORY[0x23EE8A1E0](*(v8 + 16));
  v10 = *(v8 + 16);
  if (v10)
  {
    v11 = v8 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
    v12 = *(v2 + 72);
    do
    {
      sub_23A6D8EB4(v11, v7);
      sub_23A6D9724(&qword_27DF9D5D0, &protocol conformance descriptor for MobilePhotoIDRawDataRequest.Element);
      sub_23A6DF5E4();
      sub_23A6D8F18(v7);
      v11 += v12;
      --v10;
    }

    while (v10);
  }

  MEMORY[0x23EE8A1E0](*(v9 + 16));
  v13 = *(v9 + 16);
  if (v13)
  {
    v14 = v9 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
    v15 = *(v2 + 72);
    do
    {
      sub_23A6D8EB4(v14, v4);
      sub_23A6D9724(&qword_27DF9D5D0, &protocol conformance descriptor for MobilePhotoIDRawDataRequest.Element);
      sub_23A6DF5E4();
      sub_23A6D8F18(v4);
      v14 += v15;
      --v13;
    }

    while (v13);
  }

  return sub_23A6DFD14();
}

uint64_t sub_23A6D916C(uint64_t a1)
{
  v2 = type metadata accessor for MobilePhotoIDRawDataRequest.Element(0);
  v19 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v5);
  v8 = &v18 - v7;
  v9 = *v1;
  v10 = v1[1];
  MEMORY[0x23EE8A1E0](*(*v1 + 16), v6);
  v11 = *(v9 + 16);
  if (v11)
  {
    v12 = v9 + ((*(v19 + 80) + 32) & ~*(v19 + 80));
    v13 = *(v19 + 72);
    do
    {
      sub_23A6D8EB4(v12, v8);
      sub_23A6D9724(&qword_27DF9D5D0, &protocol conformance descriptor for MobilePhotoIDRawDataRequest.Element);
      sub_23A6DF5E4();
      sub_23A6D8F18(v8);
      v12 += v13;
      --v11;
    }

    while (v11);
  }

  result = MEMORY[0x23EE8A1E0](*(v10 + 16));
  v15 = *(v10 + 16);
  if (v15)
  {
    v16 = v10 + ((*(v19 + 80) + 32) & ~*(v19 + 80));
    v17 = *(v19 + 72);
    do
    {
      sub_23A6D8EB4(v16, v4);
      sub_23A6D9724(&qword_27DF9D5D0, &protocol conformance descriptor for MobilePhotoIDRawDataRequest.Element);
      sub_23A6DF5E4();
      result = sub_23A6D8F18(v4);
      v16 += v17;
      --v15;
    }

    while (v15);
  }

  return result;
}

uint64_t sub_23A6D9358(uint64_t a1)
{
  v2 = type metadata accessor for MobilePhotoIDRawDataRequest.Element(0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v18 - v7;
  v9 = *v1;
  v10 = v1[1];
  sub_23A6DFCE4();
  MEMORY[0x23EE8A1E0](*(v9 + 16));
  v11 = *(v9 + 16);
  if (v11)
  {
    v12 = v9 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v13 = *(v3 + 72);
    do
    {
      sub_23A6D8EB4(v12, v8);
      sub_23A6D9724(&qword_27DF9D5D0, &protocol conformance descriptor for MobilePhotoIDRawDataRequest.Element);
      sub_23A6DF5E4();
      sub_23A6D8F18(v8);
      v12 += v13;
      --v11;
    }

    while (v11);
  }

  MEMORY[0x23EE8A1E0](*(v10 + 16));
  v14 = *(v10 + 16);
  if (v14)
  {
    v15 = v10 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v16 = *(v3 + 72);
    do
    {
      sub_23A6D8EB4(v15, v5);
      sub_23A6D9724(&qword_27DF9D5D0, &protocol conformance descriptor for MobilePhotoIDRawDataRequest.Element);
      sub_23A6DF5E4();
      sub_23A6D8F18(v5);
      v15 += v16;
      --v14;
    }

    while (v14);
  }

  return sub_23A6DFD14();
}

uint64_t sub_23A6D9550(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  if ((sub_23A6D8B18(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  return sub_23A6D8B18(v2, v3);
}

uint64_t static MobileDocumentRequest<>.photoIDRawData(retaining:notRetaining:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = a1;
  a3[1] = a2;
}

unint64_t sub_23A6D95EC()
{
  result = qword_27DF9D5D8;
  if (!qword_27DF9D5D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF9D5D8);
  }

  return result;
}

unint64_t sub_23A6D9640(uint64_t a1)
{
  result = sub_23A6D9668();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_23A6D9668()
{
  result = qword_27DF9D5E0;
  if (!qword_27DF9D5E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF9D5E0);
  }

  return result;
}

unint64_t sub_23A6D96C0()
{
  result = qword_27DF9D5E8;
  if (!qword_27DF9D5E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF9D5E8);
  }

  return result;
}

uint64_t sub_23A6D9724(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for MobilePhotoIDRawDataRequest.Element(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t type metadata accessor for MobilePhotoIDRawDataRequest.Element(uint64_t a1)
{
  result = qword_27DFA5CC0;
  if (!qword_27DFA5CC0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_23A6D99F8(uint64_t a1, uint64_t *a2, unsigned int *a3)
{
  v5 = type metadata accessor for MobilePhotoIDRawDataRequest.Element(0);
  __swift_allocate_value_buffer(v5, a2);
  v6 = __swift_project_value_buffer(v5, a2);
  v7 = *a3;
  v8 = sub_23A6DE9B4();
  v9 = *(*(v8 - 8) + 104);

  return v9(v6, v7, v8);
}

uint64_t sub_23A6D9AB8@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for MobilePhotoIDRawDataRequest.Element(0);
  v7 = __swift_project_value_buffer(v6, a2);

  return sub_23A6D8EB4(v7, a4);
}

uint64_t static MobilePhotoIDRawDataRequest.Element.ageAtLeast(_:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = a1;
  v3 = *MEMORY[0x277D43A48];
  v4 = sub_23A6DE9B4();
  v5 = *(*(v4 - 8) + 104);

  return v5(a2, v3, v4);
}

uint64_t MobilePhotoIDRawDataRequest.Element.hash(into:)(uint64_t a1)
{
  sub_23A6DE9B4();
  sub_23A6D9E78(&qword_27DF9CC10, MEMORY[0x277D43AE8], MEMORY[0x277D43AF0]);

  return sub_23A6DF5E4();
}

uint64_t MobilePhotoIDRawDataRequest.Element.hashValue.getter()
{
  sub_23A6DFCE4();
  sub_23A6DE9B4();
  sub_23A6D9E78(&qword_27DF9CC10, MEMORY[0x277D43AE8], MEMORY[0x277D43AF0]);
  sub_23A6DF5E4();
  return sub_23A6DFD14();
}

uint64_t sub_23A6D9CA0()
{
  sub_23A6DFCE4();
  sub_23A6DE9B4();
  sub_23A6D9E78(&qword_27DF9CC10, MEMORY[0x277D43AE8], MEMORY[0x277D43AF0]);
  sub_23A6DF5E4();
  return sub_23A6DFD14();
}

uint64_t sub_23A6D9D28(uint64_t a1)
{
  sub_23A6DE9B4();
  sub_23A6D9E78(&qword_27DF9CC10, MEMORY[0x277D43AE8], MEMORY[0x277D43AF0]);

  return sub_23A6DF5E4();
}

uint64_t sub_23A6D9DAC(uint64_t a1)
{
  sub_23A6DFCE4();
  sub_23A6DE9B4();
  sub_23A6D9E78(&qword_27DF9CC10, MEMORY[0x277D43AE8], MEMORY[0x277D43AF0]);
  sub_23A6DF5E4();
  return sub_23A6DFD14();
}

uint64_t sub_23A6D9E78(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t MobilePhotoIDRawDataRequest.Response.responseData.getter()
{
  v1 = *v0;
  sub_23A693764(*v0, *(v0 + 8));
  return v1;
}

uint64_t MobilePhotoIDRawDataRequest.Response.sessionTranscript.getter()
{
  v1 = *(v0 + 16);
  sub_23A693764(v1, *(v0 + 24));
  return v1;
}

BOOL static MobilePhotoIDRawDataRequest.Response.== infix(_:_:)(_BOOL8 *a1, uint64_t *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  if (!sub_23A6A3EE8(*a1, a1[1], *a2, a2[1]))
  {
    return 0;
  }

  return sub_23A6A3EE8(v2, v3, v4, v5);
}

uint64_t MobilePhotoIDRawDataRequest.Response.hash(into:)(uint64_t a1)
{
  sub_23A6DE244();

  return sub_23A6DE244();
}

uint64_t MobilePhotoIDRawDataRequest.Response.hashValue.getter()
{
  sub_23A6DFCE4();
  sub_23A6DE244();
  sub_23A6DE244();
  return sub_23A6DFD14();
}

unint64_t sub_23A6DA084()
{
  result = qword_27DF9D5F8;
  if (!qword_27DF9D5F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF9D5F8);
  }

  return result;
}

void sub_23A6DA0F4(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_23A6DE784();
  v5 = *(v4 - 8);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  switch(a1)
  {
    case 0:
      *a2 = 0;
      *(a2 + 8) = 0;
      goto LABEL_37;
    case 1:
      v10 = xmmword_23A6E6DA0;
      goto LABEL_36;
    case 2:
      v10 = xmmword_23A6E1D00;
      goto LABEL_36;
    case 3:
      v10 = xmmword_23A6E1CB0;
      goto LABEL_36;
    case 4:
      v10 = xmmword_23A6E6D90;
      goto LABEL_36;
    case 5:
      v10 = xmmword_23A6E6D80;
      goto LABEL_36;
    case 6:
      v10 = xmmword_23A6E4E50;
      goto LABEL_36;
    case 7:
      v10 = xmmword_23A6E6D70;
      goto LABEL_36;
    case 8:
      v10 = xmmword_23A6E6D60;
      goto LABEL_36;
    case 9:
      v10 = xmmword_23A6E1CA0;
      goto LABEL_36;
    case 10:
      v10 = xmmword_23A6E1D10;
      goto LABEL_36;
    case 11:
      v10 = xmmword_23A6E6CB0;
      goto LABEL_36;
    case 12:
      v10 = xmmword_23A6E46D0;
      goto LABEL_36;
    case 13:
      v10 = xmmword_23A6E2C30;
      goto LABEL_36;
    case 14:
      v10 = xmmword_23A6E6C90;
      goto LABEL_36;
    case 16:
      v10 = xmmword_23A6E6D50;
      goto LABEL_36;
    case 18:
      v10 = xmmword_23A6E6D40;
      goto LABEL_36;
    case 19:
      v10 = xmmword_23A6E6D30;
      goto LABEL_36;
    case 20:
    case 21:
    case 22:
    case 23:
      v10 = xmmword_23A6E6CE0;
      goto LABEL_36;
    case 24:
      *a2 = 0xD00000000000001FLL;
      *(a2 + 8) = 0x800000023A6EB4B0;
      *(a2 + 16) = 0;
      return;
    case 25:
      v10 = xmmword_23A6E6D20;
      goto LABEL_36;
    case 26:
    case 27:
      v10 = xmmword_23A6E1CD0;
      goto LABEL_36;
    case 28:
      v10 = xmmword_23A6E1CE0;
      goto LABEL_36;
    case 29:
      v10 = xmmword_23A6E6D00;
      goto LABEL_36;
    case 30:
      v10 = xmmword_23A6E6CF0;
      goto LABEL_36;
    case 31:
      v10 = xmmword_23A6E1CC0;
      goto LABEL_36;
    case 32:
      v10 = xmmword_23A6E6D10;
      goto LABEL_36;
    case 33:
    case 34:
      v10 = xmmword_23A6E1CF0;
      goto LABEL_36;
    case 35:
      v10 = xmmword_23A6E6CC0;
      goto LABEL_36;
    case 36:
      v11 = MEMORY[0x277D43830];
      goto LABEL_21;
    case 37:
      v11 = MEMORY[0x277D43840];
LABEL_21:
      v12 = v6;
      (*(v5 + 104))(v9, *v11, v6, v7);
      v13 = sub_23A6DE774();
      (*(v5 + 8))(v9, v12);
      *a2 = v13;
      *(a2 + 8) = 0;
      v14 = 2;
      goto LABEL_38;
    case 42:
      v10 = xmmword_23A6E6CA0;
      goto LABEL_36;
    default:
      v10 = xmmword_23A6E6CD0;
LABEL_36:
      *a2 = v10;
LABEL_37:
      v14 = 3;
LABEL_38:
      *(a2 + 16) = v14;
      return;
  }
}

unint64_t sub_23A6DA3C0@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (result >= 0xA)
  {
    sub_23A6DFA84();

    v2 = sub_23A6DE8E4();
    MEMORY[0x23EE89BB0](v2);

    result = sub_23A6DFB44();
    __break(1u);
  }

  else
  {
    *a2 = result + 1;
    *(a2 + 8) = 1;
  }

  return result;
}

unint64_t sub_23A6DA480@<X0>(unint64_t result@<X0>, char *a2@<X8>)
{
  v2 = 7;
  if (result < 7)
  {
    v2 = result;
  }

  *a2 = v2;
  return result;
}

__n128 sub_23A6DA494@<Q0>(uint64_t a1@<X8>)
{
  v2 = sub_23A6DE2F4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v51 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23A6DE5E4();
  v6 = sub_23A6DE2C4();
  v53 = v7;
  v54 = v6;
  (*(v3 + 8))(v5, v2);
  v8 = sub_23A6DE584();
  v10 = v9 >> 62;
  if ((v9 >> 62) > 1)
  {
    if (v10 == 2)
    {
      v13 = *(v8 + 16);
      v12 = *(v8 + 24);
      sub_23A691B9C(v8, v9);
      if (v13 == v12)
      {
        goto LABEL_11;
      }

      goto LABEL_9;
    }

    sub_23A691B9C(v8, v9);
  }

  else
  {
    if (!v10)
    {
      v11 = v9;
      sub_23A691B9C(v8, v9);
      if ((v11 & 0xFF000000000000) == 0)
      {
        goto LABEL_11;
      }

LABEL_9:
      v15 = sub_23A6DE584();
      v17 = v16;
      v52 = sub_23A6DE224();
      v19 = v18;
      sub_23A691B9C(v15, v17);
      goto LABEL_12;
    }

    v14 = v8;
    sub_23A691B9C(v8, v9);
    if (v14 != v14 >> 32)
    {
      goto LABEL_9;
    }
  }

LABEL_11:
  v52 = 0;
  v19 = 0;
LABEL_12:
  v20 = sub_23A6DE5F4();
  v22 = v21 >> 62;
  if ((v21 >> 62) > 1)
  {
    if (v22 == 2)
    {
      v25 = *(v20 + 16);
      v24 = *(v20 + 24);
      sub_23A691B9C(v20, v21);
      if (v25 == v24)
      {
        goto LABEL_22;
      }

      goto LABEL_20;
    }

    sub_23A691B9C(v20, v21);
  }

  else
  {
    if (!v22)
    {
      v23 = v21;
      sub_23A691B9C(v20, v21);
      if ((v23 & 0xFF000000000000) == 0)
      {
        goto LABEL_22;
      }

LABEL_20:
      v27 = sub_23A6DE5F4();
      v29 = v28;
      v30 = sub_23A6DE224();
      v32 = v31;
      sub_23A691B9C(v27, v29);
      goto LABEL_23;
    }

    v26 = v20;
    sub_23A691B9C(v20, v21);
    if (v26 != v26 >> 32)
    {
      goto LABEL_20;
    }
  }

LABEL_22:
  v30 = 0;
  v32 = 0;
LABEL_23:
  v33 = sub_23A6DE594();
  v35 = v34;

  v36 = HIBYTE(v35) & 0xF;
  if ((v35 & 0x2000000000000000) == 0)
  {
    v36 = v33 & 0xFFFFFFFFFFFFLL;
  }

  if (v36)
  {
    v37 = sub_23A6DE594();
    v39 = v38;
  }

  else
  {
    v37 = 0;
    v39 = 0;
  }

  v40 = sub_23A6DE5C4();
  sub_23A6DA820(v40, &v59);
  v41 = sub_23A6DE5B4();
  v42 = sub_23A6DE5D4();
  v43 = sub_23A6DE604();
  if (v44)
  {
    v45 = 4;
  }

  else
  {
    sub_23A6DAA20(v56, "Unknown card effective state: %s", v43, MEMORY[0x277D439F0], v51, v52);
    v45 = v56[0];
  }

  v58 = v45;
  v46 = sub_23A6DE614();
  if (v47)
  {
    v48 = 4;
  }

  else
  {
    sub_23A6DAA20(v56, "Unknown card expiration state: %s", v46, MEMORY[0x277D43A00], v51, v52);
    v48 = v56[0];
  }

  v55 = v48;
  sub_23A644940(v54, v53, v52, v19, v30, v32, v37, v39, v56, &v59, v41 & 1, v42 & 1, &v58, &v55);
  v49 = *v57;
  *(a1 + 32) = v56[2];
  *(a1 + 48) = v49;
  *(a1 + 61) = *&v57[13];
  result = v56[1];
  *a1 = v56[0];
  *(a1 + 16) = result;
  return result;
}

void sub_23A6DA820(unint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9D240, qword_23A6E1D30);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v17 - v5;
  if (a1 >= 3)
  {
    v7 = sub_23A6DCDF0();
    sub_23A69A270(v7, v6);
    v8 = sub_23A6DECC4();
    v9 = *(v8 - 8);
    if ((*(v9 + 48))(v6, 1, v8) == 1)
    {
      sub_23A69A2E0(v6);
    }

    else
    {
      v10 = sub_23A6DECA4();
      v11 = sub_23A6DF884();
      if (os_log_type_enabled(v10, v11))
      {
        v12 = swift_slowAlloc();
        v13 = swift_slowAlloc();
        v17 = a1;
        v18 = v13;
        *v12 = 136315138;
        v14 = sub_23A6DF634();
        v16 = sub_23A657E78(v14, v15, &v18);

        *(v12 + 4) = v16;
        _os_log_impl(&dword_23A63D000, v10, v11, "Unknown read outcome: %s", v12, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v13);
        MEMORY[0x23EE8A960](v13, -1, -1);
        MEMORY[0x23EE8A960](v12, -1, -1);
      }

      (*(v9 + 8))(v6, v8);
    }

    LOBYTE(a1) = 2;
  }

  *a2 = a1;
}

void sub_23A6DAA20(void *__return_ptr a1@<X8>, const char *a2@<X2>, unint64_t a3@<X0>, uint64_t (*a4)(unint64_t)@<X1>, uint64_t a5, uint64_t a6, ...)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9D240, qword_23A6E1D30);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v24 - v11;
  if (a3 >= 4)
  {
    v13 = sub_23A6DCDF0();
    sub_23A69A270(v13, v12);
    v14 = sub_23A6DECC4();
    v15 = *(v14 - 8);
    if ((*(v15 + 48))(v12, 1, v14) == 1)
    {
      sub_23A69A2E0(v12);
    }

    else
    {
      v16 = sub_23A6DECA4();
      v17 = sub_23A6DF884();
      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        v24 = a2;
        v19 = v18;
        v20 = swift_slowAlloc();
        v25 = v20;
        *v19 = 136315138;
        v21 = a4(a3);
        v23 = sub_23A657E78(v21, v22, &v25);

        *(v19 + 4) = v23;
        _os_log_impl(&dword_23A63D000, v16, v17, v24, v19, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v20);
        MEMORY[0x23EE8A960](v20, -1, -1);
        MEMORY[0x23EE8A960](v19, -1, -1);
      }

      (*(v15 + 8))(v12, v14);
    }

    LOBYTE(a3) = 3;
  }

  *a1 = a3;
}

char *sub_23A6DAC24@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_23A6DE2F4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23A6DE5E4();
  v6 = sub_23A6DE2C4();
  v8 = v7;
  (*(v3 + 8))(v5, v2);
  v9 = sub_23A6DE5A4();
  v10 = v9;
  if (v9 >> 62)
  {
    v37 = v9;
    v38 = sub_23A6DFB54();
    v10 = v37;
    v11 = v38;
  }

  else
  {
    v11 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v12._rawValue = MEMORY[0x277D84F90];
  if (!v11)
  {
LABEL_15:

    v36._countAndFlagsBits = v6;
    v36._object = v8;
    return j___s15ProximityReader13VASReadResultV2id7entriesACSS_SayAC9ReadEntryVGtcfC(v36, v12);
  }

  v13 = v10;
  rawValue = MEMORY[0x277D84F90];
  result = sub_23A6DAEB4(0, v11 & ~(v11 >> 63), 0);
  if ((v11 & 0x8000000000000000) == 0)
  {
    v40 = v8;
    v41 = v6;
    v15 = 0;
    v12._rawValue = rawValue;
    v16 = v13;
    v42 = a1;
    v43 = v13 & 0xC000000000000001;
    v17 = v13;
    v18 = v11;
    do
    {
      if (v43)
      {
        v19 = MEMORY[0x23EE89F80](v15, v16);
      }

      else
      {
        v19 = *(v16 + 8 * v15 + 32);
      }

      v20 = v19;
      v21 = sub_23A6DE6D4();
      v23 = v22;
      v24 = sub_23A6DE6C4();
      v26 = v25;
      v27 = sub_23A6DE6B4();
      VASReadResult.ReadEntry.Status.init(rawValue:)(v27);
      v28 = v45[0];
      if (LOBYTE(v45[0]) == 8)
      {
        v28 = 0;
      }

      v44 = v28;
      sub_23A6939D8(v21, v23, v24, v26, &v44, v45);

      v29 = v45[0];
      v30 = v45[1];
      v31 = v46;
      v32 = v47;
      rawValue = v12._rawValue;
      v34 = *(v12._rawValue + 2);
      v33 = *(v12._rawValue + 3);
      if (v34 >= v33 >> 1)
      {
        v39 = v46;
        sub_23A6DAEB4((v33 > 1), v34 + 1, 1);
        v31 = v39;
        v12._rawValue = rawValue;
      }

      ++v15;
      *(v12._rawValue + 2) = v34 + 1;
      v35 = v12._rawValue + 40 * v34;
      *(v35 + 4) = v29;
      *(v35 + 5) = v30;
      *(v35 + 3) = v31;
      v35[64] = v32;
      v16 = v17;
    }

    while (v18 != v15);
    v6 = v41;
    v8 = v40;
    goto LABEL_15;
  }

  __break(1u);
  return result;
}

char *sub_23A6DAEB4(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_23A6DAED4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_23A6DAED4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9D600, &unk_23A6E6DB0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_23A6DAFF0@<X0>(void *a1@<X8>)
{
  v28 = a1;
  v1 = sub_23A6DE2F4();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23A6DEA54();
  v5 = sub_23A6DE2C4();
  v7 = v6;
  (*(v2 + 8))(v4, v1);
  v8 = sub_23A6DEA34();
  v10 = v9;
  v11 = sub_23A6DE224();
  v13 = v12;
  sub_23A691B9C(v8, v10);
  v14 = sub_23A6DEA44();
  v16 = v15;
  v17 = sub_23A6DE224();
  v19 = v18;
  sub_23A691B9C(v14, v16);
  v20 = sub_23A6DEA64();
  v22 = v21;
  v23 = sub_23A6DE224();
  v25 = v24;
  sub_23A691B9C(v20, v22);
  return sub_23A6456F8(v5, v7, v11, v13, v17, v19, v23, v25, v28);
}

uint64_t sub_23A6DB1A8@<X0>(char *a1@<X8>)
{
  v2 = sub_23A6DE294();
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_23A6DE9D4();
  sub_23A6DE9C4();
  return sub_23A64ED08(v5, v4, a1);
}

uint64_t sub_23A6DB238@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9D240, qword_23A6E1D30);
  MEMORY[0x28223BE20](v3 - 8);
  v47 = &v42[-v4];
  v5 = sub_23A6DE784();
  v48 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v42[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = sub_23A6DE014();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v42[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = sub_23A6DE794();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v42[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_23A6DE7A4();
  result = (v13)[11](v15, v12);
  if (result == *MEMORY[0x277D438D8])
  {
    result = (v13)[12](v15, v12);
    *a1 = *v15;
    *(a1 + 8) = 0;
    return result;
  }

  v46 = v5;
  v17 = a1;
  if (result == *MEMORY[0x277D43890])
  {
    (v13)[12](v15, v12);
    v18 = *v15;
    sub_23A6DDFE4();
    v19 = sub_23A6DE004();
    (*(v9 + 8))(v11, v8);
    v20 = (v48 + 8);
    if (v18 == v19)
    {
      v21 = MEMORY[0x277D43848];
    }

    else
    {
      v21 = MEMORY[0x277D43840];
    }

    v25 = v46;
    (*(v48 + 104))(v7, *v21, v46);
    v24 = sub_23A6DE774();
    result = (*v20)(v7, v25);
    goto LABEL_10;
  }

  if (result == *MEMORY[0x277D43878])
  {
    v22 = v48;
    v23 = v46;
    (*(v48 + 104))(v7, *MEMORY[0x277D43830], v46);
    v24 = sub_23A6DE774();
    result = (*(v22 + 8))(v7, v23);
LABEL_10:
    *v17 = v24;
    *(v17 + 8) = 0;
    return result;
  }

  if (result == *MEMORY[0x277D43888])
  {
    *a1 = 0;
LABEL_14:
    *(a1 + 8) = 1;
    return result;
  }

  if (result == *MEMORY[0x277D438D0])
  {
    *a1 = 1;
    *(a1 + 8) = 1;
    return result;
  }

  if (result == *MEMORY[0x277D43880])
  {
    *a1 = 2;
    goto LABEL_14;
  }

  if (result == *MEMORY[0x277D43898])
  {
    *a1 = 3;
    goto LABEL_14;
  }

  if (result == *MEMORY[0x277D438C8])
  {
    *a1 = 8;
    goto LABEL_14;
  }

  if (result == *MEMORY[0x277D438C0])
  {
    *a1 = 9;
    goto LABEL_14;
  }

  if (result == *MEMORY[0x277D438A8])
  {
    *a1 = 4;
    goto LABEL_14;
  }

  if (result == *MEMORY[0x277D438A0])
  {
    *a1 = 5;
    goto LABEL_14;
  }

  if (result == *MEMORY[0x277D438B0])
  {
    *a1 = 6;
    goto LABEL_14;
  }

  if (result == *MEMORY[0x277D438B8])
  {
    *a1 = 7;
    goto LABEL_14;
  }

  v26 = sub_23A6DCDF0();
  v27 = v47;
  sub_23A69A270(v26, v47);
  v28 = sub_23A6DECC4();
  v29 = *(v28 - 8);
  v30 = *(v29 + 48);
  v45 = v28;
  if (v30(v27, 1) == 1)
  {
    sub_23A646DB0(v27, &qword_27DF9D240, qword_23A6E1D30);
  }

  else
  {
    v31 = v1;
    v32 = sub_23A6DECA4();
    v33 = sub_23A6DF884();
    v44 = v31;

    v34 = v32;
    v43 = v33;
    if (os_log_type_enabled(v32, v33))
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      *v35 = 138412290;
      v37 = v44;
      *(v35 + 4) = v44;
      *v36 = v37;
      v38 = v37;
      _os_log_impl(&dword_23A63D000, v34, v43, "Unknown store error: %@", v35, 0xCu);
      sub_23A646DB0(v36, &qword_27DF9C8B0, &qword_23A6E4ED0);
      MEMORY[0x23EE8A960](v36, -1, -1);
      MEMORY[0x23EE8A960](v35, -1, -1);
    }

    (*(v29 + 8))(v27, v45);
  }

  v39 = v46;
  v40 = v48;
  (*(v48 + 104))(v7, *MEMORY[0x277D43838], v46);
  v41 = sub_23A6DE774();
  (*(v40 + 8))(v7, v39);
  *a1 = v41;
  *(a1 + 8) = 0;
  return (v13)[1](v15, v12);
}

uint64_t sub_23A6DB930(uint64_t a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, int a7, unsigned __int8 *a8)
{
  v70 = a8;
  v67 = a7;
  v65 = a6;
  v66 = a1;
  v68 = a3;
  v69 = a4;
  v58 = sub_23A6DEAD4();
  v57 = *(v58 - 8);
  MEMORY[0x28223BE20](v58);
  v55 = &v54 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v56 = &v54 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9CB80, &unk_23A6E6DC0);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v54 - v14;
  v16 = type metadata accessor for PaymentCardTransactionRequest(0);
  v17 = *(v16 - 1);
  MEMORY[0x28223BE20](v16);
  v19 = &v54 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9C7B0, &qword_23A6E11D0);
  MEMORY[0x28223BE20](v20 - 8);
  v22 = &v54 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v25 = &v54 - v24;
  v64 = *v70;
  v70 = a2;
  sub_23A646D48(a2, v15, &qword_27DF9CB80, &unk_23A6E6DC0);
  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {
    v26 = v25;
    sub_23A646DB0(v15, &qword_27DF9CB80, &unk_23A6E6DC0);
    sub_23A6DC2F8();
    v27 = sub_23A6DF8E4();
    v28 = v27;
    v63 = v27;
    if (a5)
    {
      v29 = *(*a5 + 104);
      v30 = v27;

      v32 = a5;
      v29(v31);
    }

    else
    {
      v32 = 0;
      v46 = sub_23A6DE324();
      (*(*(v46 - 8) + 56))(v22, 1, 1, v46);
      v47 = v28;
    }

    v25 = v26;
    sub_23A6DC344(v22, v26);
    v59 = 0;
    v61 = 0;
    v62 = 0;
    v60 = 0xE000000000000000;
    v33 = v32;
  }

  else
  {
    v33 = a5;
    sub_23A6DC6A8(v15, v19);
    v74 = *v19;
    v75 = *(v19 + 4);
    v34 = objc_allocWithZone(MEMORY[0x277CCA980]);
    v71 = v74;
    LODWORD(v72) = v75;
    v35 = [v34 initWithDecimal_];
    v62 = v19[40];
    v36 = *(v19 + 4);
    v61 = *(v19 + 3);
    v37 = v16[8];
    v59 = v19[v16[9]];
    sub_23A646D48(&v19[v37], v25, &qword_27DF9C7B0, &qword_23A6E11D0);
    v38 = &v19[v16[10]];
    v39 = v38[32];
    v63 = v35;
    v60 = v36;
    if (v39 == 255)
    {
      v48 = v35;
    }

    else
    {
      v40 = *(v38 + 1);
      v71 = *v38;
      v72 = v40;
      v73 = v39;
      v41 = v55;
      sub_23A6DBF4C(v55);
      v42 = v57;
      v43 = v56;
      v44 = v58;
      (*(v57 + 32))(v56, v41, v58);
      LOBYTE(v71) = v19[40];
      v45 = v35;

      sub_23A6DC818(v43, &v71);
      (*(v42 + 8))(v43, v44);
    }

    sub_23A6DCD64(v19, type metadata accessor for PaymentCardTransactionRequest);
  }

  sub_23A6DE6A4();
  v49 = v25;
  sub_23A6DE694();
  if (v33)
  {

    sub_23A6DC3B4(v50);
  }

  else
  {
    sub_23A6DC3B4(v65);
  }

  v51 = v63;
  v52 = sub_23A6DE834();

  sub_23A646DB0(v70, &qword_27DF9CB80, &unk_23A6E6DC0);
  sub_23A646DB0(v49, &qword_27DF9C7B0, &qword_23A6E11D0);
  return v52;
}

uint64_t sub_23A6DBF4C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_23A6DE8D4();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v11 = &v34 - v9;
  v12 = *v1;
  v13 = v1[1];
  v14 = v1[2];
  v15 = v1[3];
  v16 = *(v1 + 32);
  if (v16 <= 2)
  {
    if (!*(v1 + 32))
    {
      *a1 = v12;
      v17 = MEMORY[0x277D43B68];
      goto LABEL_15;
    }

    if (v16 == 1)
    {
      *a1 = v12;
      *(a1 + 8) = v13;
      *(a1 + 16) = v14;
      v17 = MEMORY[0x277D43B48];
      goto LABEL_15;
    }

    v20 = HIDWORD(v12);
    v34 = v13 >> 16;
    v35 = HIDWORD(v13);
    v36 = HIWORD(v13);
    v37 = v14 >> 16;
    v38 = HIDWORD(v14);
    v39 = HIWORD(v14);
    v21 = v8;
    (*(v4 + 104))(&v34 - v9, **(&unk_278B54520 + v12), v8, v10);
    v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9D620, &qword_23A6E6DD0);
    v23 = a1 + *(v22 + 48);
    v24 = *(v22 + 64);
    (*(v4 + 32))(a1, v11, v21);
    *v23 = v20;
    *(v23 + 4) = v13;
    v25 = v35;
    *(v23 + 6) = v34;
    *(v23 + 8) = v25;
    v26 = v37;
    *(v23 + 10) = v36;
    *(v23 + 12) = v14;
    *(v23 + 14) = v26;
    v27 = v39;
    *(v23 + 16) = v38;
    *(v23 + 18) = v27;
    *(a1 + v24) = v15;
    v19 = MEMORY[0x277D43B58];
LABEL_11:
    v28 = *v19;
    v29 = sub_23A6DEAD4();
    return (*(*(v29 - 8) + 104))(a1, v28, v29);
  }

  if (v16 == 3)
  {
    v18 = v8;
    (*(v4 + 104))(v6, **(&unk_278B54520 + v12), v8, v10);
    (*(v4 + 32))(a1, v6, v18);
    v19 = MEMORY[0x277D43B50];
    goto LABEL_11;
  }

  if (v16 == 4)
  {
    *a1 = v12;
    *(a1 + 8) = v13;
    *(a1 + 16) = v14;
    v17 = MEMORY[0x277D43B40];
  }

  else if (v14 | v13 | v12 | v15)
  {
    v17 = MEMORY[0x277D43B70];
  }

  else
  {
    v17 = MEMORY[0x277D43B60];
  }

LABEL_15:
  v31 = *v17;
  v32 = sub_23A6DEAD4();
  v33 = *(*(v32 - 8) + 104);

  return v33(a1, v31, v32);
}

unint64_t sub_23A6DC2F8()
{
  result = qword_27DF9D608;
  if (!qword_27DF9D608)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27DF9D608);
  }

  return result;
}

uint64_t sub_23A6DC344(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9C7B0, &qword_23A6E11D0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_23A6DC3B4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9CB68, &unk_23A6E4700);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v18 - v3;
  v5 = type metadata accessor for VASRequest.Merchant(0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = (&v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (v9)
  {
    v23 = MEMORY[0x277D84F90];
    sub_23A6DFAD4();
    v11 = a1 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
    v18 = *(v6 + 72);
    v19 = v5;
    v20 = v4;
    do
    {
      sub_23A6B57B8(v11, v8);
      v14 = v8[1];
      v22 = *v8;
      sub_23A646D48(v8 + *(v5 + 20), v4, &qword_27DF9CB68, &unk_23A6E4700);
      v15 = sub_23A6DE1D4();
      v16 = *(v15 - 8);
      v17 = (*(v16 + 48))(v4, 1, v15);
      v21 = v14;

      if (v17 == 1)
      {
        sub_23A646DB0(v4, &qword_27DF9CB68, &unk_23A6E4700);
      }

      else
      {
        sub_23A6DE154();
        (*(v16 + 8))(v4, v15);
      }

      v12 = v19;
      v13 = objc_allocWithZone(sub_23A6DE8A4());

      sub_23A6DE894();
      sub_23A6DCD64(v8, type metadata accessor for VASRequest.Merchant);
      sub_23A6DFAB4();
      sub_23A6DFAE4();
      v5 = v12;
      sub_23A6DFAF4();
      sub_23A6DFAC4();
      v11 += v18;
      --v9;
      v4 = v20;
    }

    while (v9);
    return v23;
  }

  return result;
}

uint64_t sub_23A6DC6A8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PaymentCardTransactionRequest(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_23A6DC70C(uint64_t *a1)
{
  sub_23A6DE6A4();
  type metadata accessor for PaymentCardVerificationRequest(0);
  sub_23A6DE694();
  sub_23A6DC2F8();
  sub_23A6DF8E4();

  sub_23A6DEC64();
  v2 = sub_23A6DE834();
  sub_23A6DCD64(a1, type metadata accessor for PaymentCardVerificationRequest);
  return v2;
}

uint64_t sub_23A6DC818(uint64_t a1, unsigned __int8 *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9D240, qword_23A6E1D30);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v37[-v5];
  v7 = sub_23A6DEAD4();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v37[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = MEMORY[0x28223BE20](v11);
  v14 = &v37[-v13];
  v15 = *a2;
  v16 = *(v8 + 16);
  v16(&v37[-v13], a1, v7, v12);
  v17 = (*(v8 + 88))(v14, v7);
  if (v17 != *MEMORY[0x277D43B68] && v17 != *MEMORY[0x277D43B48])
  {
    if (v17 == *MEMORY[0x277D43B58])
    {
      (*(v8 + 96))(v14, v7);
      v19 = sub_23A6DE8D4();
      (*(*(v19 - 8) + 8))(v14, v19);
    }

    else if (v17 == *MEMORY[0x277D43B50])
    {
      (*(v8 + 8))(v14, v7);
    }

    else if (v17 != *MEMORY[0x277D43B40] && v17 != *MEMORY[0x277D43B60])
    {
      if (v17 == *MEMORY[0x277D43B70])
      {
        v45 = v15;
        v44 = 1;
        if (static PaymentCardTransactionRequest.TransactionType.== infix(_:_:)(&v45, &v44))
        {
          goto LABEL_15;
        }
      }

      else
      {
        v22 = sub_23A6DCDF0();
        sub_23A646D48(v22, v6, &qword_27DF9D240, qword_23A6E1D30);
        v23 = sub_23A6DECC4();
        v24 = *(v23 - 8);
        if ((*(v24 + 48))(v6, 1, v23) == 1)
        {
          sub_23A646DB0(v6, &qword_27DF9D240, qword_23A6E1D30);
          (*(v8 + 8))(v14, v7);
        }

        else
        {
          (v16)(v10, a1, v7);
          v25 = sub_23A6DECA4();
          v26 = sub_23A6DF884();
          if (os_log_type_enabled(v25, v26))
          {
            v27 = swift_slowAlloc();
            v40 = v27;
            v41 = swift_slowAlloc();
            v46 = v41;
            *v27 = 136315138;
            sub_23A6DCD20(&qword_27DF9D610, MEMORY[0x277D43B90]);
            v39 = v25;
            v28 = sub_23A6DFBD4();
            v30 = v29;
            v38 = v26;
            v31 = *(v8 + 8);
            v31(v10, v7);
            v32 = sub_23A657E78(v28, v30, &v46);

            v34 = v39;
            v33 = v40;
            *(v40 + 1) = v32;
            v35 = v33;
            _os_log_impl(&dword_23A63D000, v34, v38, "Unknown transaction description type: %s", v33, 0xCu);
            v36 = v41;
            __swift_destroy_boxed_opaque_existential_1Tm(v41);
            MEMORY[0x23EE8A960](v36, -1, -1);
            MEMORY[0x23EE8A960](v35, -1, -1);
          }

          else
          {

            v31 = *(v8 + 8);
            v31(v10, v7);
          }

          (*(v24 + 8))(v6, v23);
          v31(v14, v7);
        }
      }

      return 0;
    }
  }

  v43 = v15;
  v42 = 0;
  if (static PaymentCardTransactionRequest.TransactionType.== infix(_:_:)(&v43, &v42))
  {
LABEL_15:
    sub_23A6DCD20(&qword_27DF9D618, MEMORY[0x277D43B80]);
    return sub_23A6DF5C4();
  }

  return 0;
}

uint64_t sub_23A6DCD20(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_23A6DEAD4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_23A6DCD64(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_23A6DCE5C(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9D240, qword_23A6E1D30);
  __swift_allocate_value_buffer(v5, a2);
  v6 = __swift_project_value_buffer(v5, a2);
  sub_23A6DECB4();
  v7 = sub_23A6DECC4();
  v8 = *(*(v7 - 8) + 56);

  return v8(v6, 0, 1, v7);
}

uint64_t sub_23A6DCF30(void *a1, uint64_t a2, uint64_t a3)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9D240, qword_23A6E1D30);

  return __swift_project_value_buffer(v4, a2);
}

uint64_t sub_23A6DCF90()
{
  result = MCGestaltIsInternalBuild();
  byte_27DFA5EE8 = result;
  return result;
}

void sub_23A6DCFBC(char a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6)
{
  if (qword_27DFA5DE0 != -1)
  {
    v33 = a1;
    v34 = a6;
    v35 = a5;
    swift_once();
    a1 = v33;
    a5 = v35;
    a6 = v34;
  }

  v8 = byte_27DFA5EE8;
  if (byte_27DFA5EE8 & 1) != 0 || (a1)
  {
    v9 = HIBYTE(a6) & 0xF;
    if ((a6 & 0x2000000000000000) == 0)
    {
      v9 = a5 & 0xFFFFFFFFFFFFLL;
    }

    if (v9)
    {
      v41 = a3;
      v42 = a4;
      v10 = a6;
      v11 = a5;

      MEMORY[0x23EE89BB0](8250, 0xE200000000000000);
      MEMORY[0x23EE89BB0](v11, v10);
      a4 = v42;
    }

    else
    {
    }

    swift_unknownObjectRetain();

    oslog = sub_23A6DECA4();
    v12 = sub_23A6DF8A4();

    swift_unknownObjectRelease();
    if (os_log_type_enabled(oslog, v12))
    {
      v37 = v12;
      v38 = a3;
      v13 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v40 = v36;
      *v13 = 136446466;
      sub_23A6DF5F4();
      sub_23A677268();
      v14 = sub_23A6DF974();
      v16 = v15;

      v17 = sub_23A6DD3AC(8uLL, v14, v16);
      v19 = v18;
      v21 = v20;
      v23 = v22;

      swift_getObjectType();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9D628, &qword_23A6E6DD8);
      v41 = sub_23A6DF634();
      v42 = v24;
      MEMORY[0x23EE89BB0](45, 0xE100000000000000);
      v25 = MEMORY[0x23EE89B50](v17, v19, v21, v23);
      v27 = v26;

      MEMORY[0x23EE89BB0](v25, v27);

      v28 = v41;
      v29 = v42;
      v41 = 2715432;
      v42 = 0xE300000000000000;
      if (v8)
      {
        MEMORY[0x23EE89BB0](v28, v29);
      }

      else
      {
        MEMORY[0x23EE89BD0](v28, v29);

        v30 = sub_23A6DFBD4();
        MEMORY[0x23EE89BB0](v30);
      }

      v31 = sub_23A657E78(v41, v42, &v40);

      *(v13 + 4) = v31;
      *(v13 + 12) = 2082;
      v32 = sub_23A657E78(v38, a4, &v40);

      *(v13 + 14) = v32;
      _os_log_impl(&dword_23A63D000, oslog, v37, "%{public}s.%{public}s", v13, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x23EE8A960](v36, -1, -1);
      MEMORY[0x23EE8A960](v13, -1, -1);
    }

    else
    {
    }
  }
}

unint64_t sub_23A6DD3AC(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if ((a3 & 0x2000000000000000) != 0)
  {
    v3 = HIBYTE(a3) & 0xF;
  }

  else
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  result = sub_23A6DF6B4();
  if (v4)
  {
    result = 15;
  }

  if (4 * v3 < result >> 14)
  {
    goto LABEL_12;
  }

  return sub_23A6DF704();
}

uint64_t sub_23A6DD4A8()
{
  v1 = sub_23A67832C();
  v2 = *v1;
  *(v0 + 32) = *v1;
  v3 = *(*v2 + 152);

  v6 = (v3 + *v3);
  v4 = swift_task_alloc();
  *(v0 + 40) = v4;
  *v4 = v0;
  v4[1] = sub_23A6DD5DC;

  return v6(v0 + 16);
}

uint64_t sub_23A6DD5DC(uint64_t a1)
{
  v4 = *v2;

  if (v1)
  {

    return MEMORY[0x2822009F8](sub_23A6DD73C, 0, 0);
  }

  else
  {
    v5 = *(v4 + 8);

    return v5(a1);
  }
}

uint64_t sub_23A6DD73C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_23A67EFA4();
  swift_allocError();
  *v3 = v1;
  *(v3 + 8) = v2;
  v4 = *(v0 + 8);

  return v4();
}

uint64_t PaymentCardReaderStore.fetchStoredPaymentCardReadResultBatch(size:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return MEMORY[0x2822009F8](sub_23A6DD7E4, 0, 0);
}

uint64_t sub_23A6DD7E4()
{
  v1 = sub_23A67832C();
  v2 = *v1;
  v0[6] = *v1;
  v3 = *(*v2 + 160);

  v8 = (v3 + *v3);
  v4 = swift_task_alloc();
  v0[7] = v4;
  *v4 = v0;
  v4[1] = sub_23A6DD91C;
  v5 = v0[4];
  v6 = v0[5];

  return (v8)(v5, v6, v0 + 2);
}

uint64_t sub_23A6DD91C()
{
  v2 = *v1;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_23A6DD73C, 0, 0);
  }

  else
  {
    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_23A6DDA84()
{
  v1 = sub_23A67832C();
  v2 = *v1;
  *(v0 + 32) = *v1;
  v3 = *(*v2 + 168);

  v6 = (v3 + *v3);
  v4 = swift_task_alloc();
  *(v0 + 40) = v4;
  *v4 = v0;
  v4[1] = sub_23A6DDBB8;

  return v6(v0 + 16);
}

uint64_t sub_23A6DDBB8()
{
  v2 = *v1;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_23A6DDFE0, 0, 0);
  }

  else
  {
    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t PaymentCardReaderStore.resolveBatch(batchDeletionToken:)(void *a1)
{
  v2 = a1[1];
  *(v1 + 32) = *a1;
  *(v1 + 40) = v2;
  return MEMORY[0x2822009F8](sub_23A6DDD28, 0, 0);
}

uint64_t sub_23A6DDD28()
{
  v1 = sub_23A67832C();
  v2 = *v1;
  v0[6] = *v1;
  v3 = *(*v2 + 176);

  v8 = (v3 + *v3);
  v4 = swift_task_alloc();
  v0[7] = v4;
  *v4 = v0;
  v4[1] = sub_23A6DDE60;
  v6 = v0[4];
  v5 = v0[5];

  return (v8)(v6, v5, v0 + 2);
}

uint64_t sub_23A6DDE60(uint64_t a1)
{
  v4 = *v2;

  if (v1)
  {

    return MEMORY[0x2822009F8](sub_23A6DDFE0, 0, 0);
  }

  else
  {
    v5 = *(v4 + 8);

    return v5(a1);
  }
}