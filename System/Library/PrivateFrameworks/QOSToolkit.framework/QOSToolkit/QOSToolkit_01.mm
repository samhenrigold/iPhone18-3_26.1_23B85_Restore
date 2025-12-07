double sub_261451314@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v64 = a3;
  v62 = sub_2614647D0();
  MEMORY[0x28223BE20](v62, v9);
  v63 = v56 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(a1 + 16);
  if (!v12)
  {
LABEL_30:
    sub_261451F2C(&v91);
    goto LABEL_31;
  }

  v13 = 0;
  v14 = a1 + 32;
  v61 = (v10 + 8);
  v65 = "No language or item match with ";
  while (1)
  {
    v15 = (v14 + 216 * v13);
    v16 = v15[9];
    v17 = v15[11];
    v88[3] = v15[10];
    v88[4] = v17;
    v18 = v15[11];
    v88[5] = v15[12];
    v19 = v15[5];
    v20 = v15[7];
    v87 = v15[6];
    v88[0] = v20;
    v21 = v15[7];
    v22 = v15[9];
    v88[1] = v15[8];
    v88[2] = v22;
    v23 = v15[3];
    v83 = v15[2];
    v84 = v23;
    v24 = v15[5];
    v26 = v15[2];
    v25 = v15[3];
    v85 = v15[4];
    v86 = v24;
    v27 = v15[1];
    v81 = *v15;
    v82 = v27;
    v90[8] = v88[3];
    v90[9] = v18;
    v90[10] = v15[12];
    v90[4] = v87;
    v90[5] = v21;
    v90[6] = v88[1];
    v90[7] = v16;
    v90[0] = v26;
    v90[1] = v25;
    v89 = *(v15 + 26);
    v90[2] = v85;
    v90[3] = v19;
    if (sub_26144FF1C(v90) == 1 || LOBYTE(v90[0]) == 2)
    {
      goto LABEL_5;
    }

    if (v90[0])
    {
      sub_2614546F8(&v81, &v67);
    }

    else
    {
      v28 = sub_261464DA0();
      sub_2614546F8(&v81, &v67);

      if ((v28 & 1) == 0)
      {
        goto LABEL_4;
      }
    }

    v107 = *&v88[0];
    v110 = *(&v88[2] + 8);
    v111 = *(&v88[3] + 8);
    v112 = *(&v88[4] + 8);
    v113 = *(&v88[5] + 1);
    v108 = *(v88 + 8);
    v109 = *(&v88[1] + 8);
    if (*&v88[0] == 1 || (v114 = *&v88[0], v117 = *(&v88[2] + 8), v118 = *(&v88[3] + 8), v119 = *(&v88[4] + 8), v120 = *(&v88[5] + 1), v115 = *(v88 + 8), v116 = *(&v88[1] + 8), v66 = *(&v87 + 1), sub_261453B08(a2, v105), v29 = sub_2614589B4(v105), sub_2614547A8(v105), (v29 & 1) == 0))
    {
      (*(v5 + 56))(0, 0xD000000000000011, v65 | 0x8000000000000000);
      sub_261453B08(a2, v106);
      sub_261451F54(&v107, v106);
      sub_2614547A8(v106);
      goto LABEL_4;
    }

    if (v66 == 1)
    {
      goto LABEL_14;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEAF7B0, &qword_261466E18);
    v30 = swift_allocObject();
    *&v67 = [v64 code];
    *(v30 + 32) = sub_261464D90();
    v31 = v66;
    *(v30 + 40) = v32;
    if (v31)
    {
      v60 = v30 + 32;
      v33 = *(v31 + 16);
      if (v33)
      {
        v57 = a2;
        v58 = v5;
        v59 = a4;
        v34 = v31;
        sub_261454850(v31);
        v56[1] = v30;
        v35 = *(v30 + 32);
        v36 = *(v30 + 40);

        v37 = (v34 + 40);
        v38 = v33 + 1;
        while (--v38)
        {
          v39 = v37 + 2;
          v40 = *(v37 - 1);
          v41 = *v37;

          LOBYTE(v40) = sub_261449730(v40, v41, v35, v36);

          v37 = v39;
          if (v40)
          {

            sub_261454860(v66);
            v5 = v58;
            a4 = v59;
            a2 = v57;
            goto LABEL_21;
          }
        }

        sub_261454860(v66);
        swift_setDeallocating();
        sub_2614547FC(v60);
        swift_deallocClassInstance();
        v5 = v58;
        a4 = v59;
        a2 = v57;
LABEL_14:
        (*(v5 + 56))(0, 0x206373696D206F4ELL, 0xEE002E686374616DLL);
        goto LABEL_4;
      }

LABEL_21:
      swift_setDeallocating();
      v42 = v60;
    }

    else
    {
      swift_setDeallocating();
      v42 = v30 + 32;
    }

    sub_2614547FC(v42);
    swift_deallocClassInstance();
    v77 = v88[3];
    v78 = v88[4];
    v79 = v88[5];
    v80 = v89;
    v73 = v87;
    v74 = v88[0];
    v75 = v88[1];
    v76 = v88[2];
    v69 = v83;
    v70 = v84;
    v71 = v85;
    v72 = v86;
    v67 = v81;
    v68 = v82;
    nullsub_1();
    v43 = v63;
    if (BYTE8(v81) & 1) != 0 || (BYTE8(v82))
    {
      break;
    }

    v44 = *&v81;
    v45 = *&v82;
    sub_2614647C0();
    sub_2614647A0();
    if (v44 > v46 * 1000.0)
    {
      sub_261454754(&v81);
      (*v61)(v43, v62);
      goto LABEL_5;
    }

    sub_2614647A0();
    v48 = v47;
    (*v61)(v43, v62);
    if (v48 * 1000.0 < v45)
    {
      goto LABEL_33;
    }

LABEL_4:
    sub_261454754(&v81);
LABEL_5:
    if (++v13 == v12)
    {
      goto LABEL_30;
    }
  }

  (*(v5 + 56))(0, 0xD00000000000001BLL, 0x8000000261468EC0);
LABEL_33:
  v101 = v77;
  v102 = v78;
  v103 = v79;
  v104 = v80;
  v97 = v73;
  v98 = v74;
  v99 = v75;
  v100 = v76;
  v93 = v69;
  v94 = v70;
  v95 = v71;
  v96 = v72;
  v91 = v67;
  v92 = v68;
LABEL_31:
  v49 = v102;
  *(a4 + 160) = v101;
  *(a4 + 176) = v49;
  *(a4 + 192) = v103;
  *(a4 + 208) = v104;
  v50 = v98;
  *(a4 + 96) = v97;
  *(a4 + 112) = v50;
  v51 = v100;
  *(a4 + 128) = v99;
  *(a4 + 144) = v51;
  v52 = v94;
  *(a4 + 32) = v93;
  *(a4 + 48) = v52;
  v53 = v96;
  *(a4 + 64) = v95;
  *(a4 + 80) = v53;
  result = *&v91;
  v55 = v92;
  *a4 = v91;
  *(a4 + 16) = v55;
  return result;
}

unint64_t sub_2614519A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v36[1] = a2;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEAF730, &qword_261467C00);
  MEMORY[0x28223BE20](v9 - 8, v10);
  v12 = v36 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEAF610, &qword_261466E10);
  MEMORY[0x28223BE20](v13 - 8, v14);
  v16 = v36 - v15;
  v17 = sub_2614647D0();
  v37 = *(v17 - 8);
  v38 = v17;
  MEMORY[0x28223BE20](v17, v18);
  v20 = v36 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *(a1 + 16);
  v22 = *(a1 + 24);
  if ((a5 & 1) != 0 || (v43 = v21, v44 = v22, v41 = 0x4040656D69744040, v42 = 0xE800000000000000, sub_26144A0A4(), (sub_261464CA0() & 1) == 0))
  {
  }

  else
  {
    sub_261464790();
    v23 = *(v6 + 144);

    sub_2614647E0();
    v24 = sub_261464810();
    (*(*(v24 - 8) + 56))(v16, 0, 1, v24);
    sub_261464840();
    v25 = sub_261464850();
    (*(*(v25 - 8) + 56))(v12, 0, 1, v25);
    v26 = sub_26144F174(1, v12, v16);

    sub_26144D9E4(v12, &qword_27FEAF730, &qword_261467C00);
    sub_26144D9E4(v16, &qword_27FEAF610, &qword_261466E10);
    v27 = sub_261464770();
    v28 = [v26 stringFromDate_];

    v29 = sub_261464930();
    v31 = v30;

    v43 = v29;
    v44 = v31;
    v41 = 32;
    v42 = 0xE100000000000000;
    v39 = 41154;
    v40 = 0xA200000000000000;
    v32 = sub_261464C70();
    v34 = v33;

    v21 = sub_261449F28(v21, v22, v32, v34);

    (*(v37 + 8))(v20, v38);
  }

  return v21;
}

uint64_t sub_261451D78()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  __swift_destroy_boxed_opaque_existential_1((v0 + 104));

  return swift_deallocClassInstance();
}

uint64_t sub_261451DFC(uint64_t a1, uint64_t a2)
{
  v3[56] = a1;
  v3[57] = a2;
  v3[58] = *v2;
  return MEMORY[0x2822009F8](sub_261451E24, 0, 0);
}

uint64_t sub_261451E24()
{
  v1 = *(v0 + 456);
  v2 = *(v0 + 464);
  v3 = *(v0 + 448);
  v4 = *(v2 + 72);
  sub_261451F2C(v0 + 16);
  v5 = *(v0 + 192);
  *(v0 + 392) = *(v0 + 176);
  *(v0 + 408) = v5;
  *(v0 + 424) = *(v0 + 208);
  v6 = *(v0 + 128);
  *(v0 + 328) = *(v0 + 112);
  *(v0 + 344) = v6;
  v7 = *(v0 + 160);
  *(v0 + 360) = *(v0 + 144);
  *(v0 + 376) = v7;
  v8 = *(v0 + 64);
  *(v0 + 264) = *(v0 + 48);
  *(v0 + 280) = v8;
  v9 = *(v0 + 96);
  *(v0 + 296) = *(v0 + 80);
  *(v0 + 312) = v9;
  v10 = *(v0 + 32);
  *(v0 + 232) = *(v0 + 16);
  *(v0 + 440) = *(v0 + 224);
  *(v0 + 248) = v10;
  sub_261453E70(v3, v0 + 232, [v1 code], 1);
  v4();

  v12 = (*(v2 + 88))(v11);
  v13 = *(v0 + 8);

  return v13(v12);
}

double sub_261451F2C(uint64_t a1)
{
  *(a1 + 208) = 0;
  result = 0.0;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  return result;
}

uint64_t sub_261451F54(uint64_t result, uint64_t *a2)
{
  if (*result == 1)
  {
    return (*(v2 + 56))(0, 0xD00000000000001ALL, 0x8000000261468EE0);
  }

  v4 = *(result + 48);
  v5 = *a2;
  if (*result)
  {
    v6 = *result;
    if (v5)
    {
      result = sub_26145288C(v6, *a2);
      if (result)
      {
        goto LABEL_9;
      }
    }
  }

  else if (!v5)
  {
    goto LABEL_9;
  }

  v7 = *(v2 + 56);
  sub_261464CF0();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEAF7B8, &qword_261466E20);
  v8 = sub_261464980();
  MEMORY[0x266702930](v8);

  MEMORY[0x266702930](540877088, 0xE400000000000000);
  v9 = sub_261464980();
  MEMORY[0x266702930](v9);

  v7(0, 0xD000000000000015, 0x8000000261468F00);

LABEL_9:
  v10 = a2[6];
  if (v4)
  {
    if (v10)
    {
      result = sub_26145288C(v4, v10);
      if (result)
      {
        return result;
      }
    }
  }

  else if (!v10)
  {
    return result;
  }

  v11 = *(v2 + 56);
  sub_261464CF0();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEAF7B8, &qword_261466E20);
  v12 = sub_261464980();
  MEMORY[0x266702930](v12);

  MEMORY[0x266702930](540877088, 0xE400000000000000);
  v13 = sub_261464980();
  MEMORY[0x266702930](v13);

  v11(0, 0xD000000000000014, 0x8000000261468F20);
}

uint64_t sub_2614521E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  if (a2)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v4;
    sub_261453698(a1, a2, a3, a4, isUniquelyReferenced_nonNull_native);

    *v4 = v17;
  }

  else
  {
    v12 = sub_261452DC4(a3, a4);
    v14 = v13;

    if (v14)
    {
      v15 = swift_isUniquelyReferenced_nonNull_native();
      v16 = *v5;
      v18 = *v5;
      if (!v15)
      {
        sub_261453820();
        v16 = v18;
      }

      result = sub_2614534E8(v12, v16);
      *v5 = v16;
    }
  }

  return result;
}

uint64_t sub_2614522E8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 40);
    for (i = (a2 + 40); ; i += 24)
    {
      v5 = *(v3 - 1) == *(i - 1) && *v3 == *i;
      if (!v5 && (sub_261464DA0() & 1) == 0)
      {
        break;
      }

      v3 += 24;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t sub_261452378(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  if (v4 != *(a2 + 16))
  {
    return 0;
  }

  if (!v4 || a1 == a2)
  {
    return 1;
  }

  v75 = v2;
  v76 = v3;
  v5 = v4 - 1;
  v6 = a2 + 64;
  for (i = (a1 + 64); ; i = (i + 216))
  {
    v8 = i[9];
    v67[8] = i[8];
    v67[9] = v8;
    v67[10] = i[10];
    v68 = *(i + 22);
    v9 = i[5];
    v67[4] = i[4];
    v67[5] = v9;
    v10 = i[7];
    v67[6] = i[6];
    v67[7] = v10;
    v11 = i[1];
    v67[0] = *i;
    v67[1] = v11;
    v12 = i[3];
    v67[2] = i[2];
    v67[3] = v12;
    v13 = *(i - 1);
    v65 = *(i - 2);
    v66 = v13;
    v14 = *(v6 + 144);
    v71[8] = *(v6 + 128);
    v71[9] = v14;
    v71[10] = *(v6 + 160);
    v72 = *(v6 + 176);
    v15 = *(v6 + 80);
    v71[4] = *(v6 + 64);
    v71[5] = v15;
    v16 = *(v6 + 112);
    v71[6] = *(v6 + 96);
    v71[7] = v16;
    v17 = *(v6 + 16);
    v71[0] = *v6;
    v71[1] = v17;
    v18 = *(v6 + 48);
    v71[2] = *(v6 + 32);
    v71[3] = v18;
    v19 = *(v6 - 16);
    v69 = *(v6 - 32);
    v70 = v19;
    if (BYTE8(v65))
    {
      if ((BYTE8(v69) & 1) == 0)
      {
        return 0;
      }
    }

    else if ((BYTE8(v69) & 1) != 0 || *&v65 != *&v69)
    {
      return 0;
    }

    if (BYTE8(v66))
    {
      if ((BYTE8(v70) & 1) == 0)
      {
        return 0;
      }
    }

    else if ((BYTE8(v70) & 1) != 0 || *&v66 != *&v70)
    {
      return 0;
    }

    v20 = i[7];
    v21 = i[9];
    __src[8] = i[8];
    __src[9] = v21;
    v22 = i[9];
    __src[10] = i[10];
    v23 = i[3];
    v24 = i[5];
    __src[4] = i[4];
    __src[5] = v24;
    v25 = i[5];
    v26 = i[7];
    __src[6] = i[6];
    __src[7] = v26;
    v27 = i[1];
    __src[0] = *i;
    __src[1] = v27;
    v28 = i[3];
    v30 = *i;
    v29 = i[1];
    __src[2] = i[2];
    __src[3] = v28;
    v31 = *(v6 + 144);
    __src[19] = *(v6 + 128);
    __src[20] = v31;
    __src[21] = *(v6 + 160);
    v32 = *(v6 + 80);
    __src[15] = *(v6 + 64);
    __src[16] = v32;
    v33 = *(v6 + 112);
    __src[17] = *(v6 + 96);
    __src[18] = v33;
    v34 = *(v6 + 16);
    __src[11] = *v6;
    __src[12] = v34;
    v35 = *(v6 + 48);
    __src[13] = *(v6 + 32);
    __src[14] = v35;
    v64[8] = __src[8];
    v64[9] = v22;
    v64[10] = i[10];
    v64[4] = __src[4];
    v64[5] = v25;
    v64[7] = v20;
    v64[6] = __src[6];
    v64[0] = v30;
    v64[1] = v29;
    v64[3] = v23;
    v64[2] = __src[2];
    if (sub_26144FF1C(v64) == 1)
    {
      v60 = __src[19];
      v61 = __src[20];
      v62 = __src[21];
      v56 = __src[15];
      v57 = __src[16];
      v58 = __src[17];
      v59 = __src[18];
      v52 = __src[11];
      v53 = __src[12];
      v54 = __src[13];
      v55 = __src[14];
      if (sub_26144FF1C(&v52) != 1)
      {
        goto LABEL_25;
      }

      v48 = __src[8];
      v49 = __src[9];
      v50 = __src[10];
      v44 = __src[4];
      v45 = __src[5];
      v46 = __src[6];
      v47 = __src[7];
      v40 = __src[0];
      v41 = __src[1];
      v42 = __src[2];
      v43 = __src[3];
      sub_2614546F8(&v65, __dst);
      sub_2614546F8(&v69, __dst);
      sub_26144FF40(v67, __dst);
      sub_26144FF40(v71, __dst);
      sub_26144D9E4(&v40, &qword_27FEAF738, &unk_261466E30);
      goto LABEL_20;
    }

    v60 = __src[19];
    v61 = __src[20];
    v62 = __src[21];
    v56 = __src[15];
    v57 = __src[16];
    v58 = __src[17];
    v59 = __src[18];
    v52 = __src[11];
    v53 = __src[12];
    v54 = __src[13];
    v55 = __src[14];
    if (sub_26144FF1C(&v52) == 1)
    {
LABEL_25:
      memcpy(__dst, __src, sizeof(__dst));
      sub_26144FF40(v67, &v52);
      sub_26144FF40(v71, &v52);
      sub_26144D9E4(__dst, &qword_27FEAF740, &qword_261466A30);
      return 0;
    }

    v39[8] = __src[19];
    v39[9] = __src[20];
    v39[10] = __src[21];
    v39[4] = __src[15];
    v39[5] = __src[16];
    v39[6] = __src[17];
    v39[7] = __src[18];
    v39[0] = __src[11];
    v39[1] = __src[12];
    v39[2] = __src[13];
    v39[3] = __src[14];
    v74[8] = __src[19];
    v74[9] = __src[20];
    v74[10] = __src[21];
    v74[4] = __src[15];
    v74[5] = __src[16];
    v74[6] = __src[17];
    v74[7] = __src[18];
    v74[0] = __src[11];
    v74[1] = __src[12];
    v74[2] = __src[13];
    v74[3] = __src[14];
    v73[8] = __src[8];
    v73[9] = __src[9];
    v73[10] = __src[10];
    v73[4] = __src[4];
    v73[5] = __src[5];
    v73[7] = __src[7];
    v73[6] = __src[6];
    v73[0] = __src[0];
    v73[1] = __src[1];
    v73[3] = __src[3];
    v73[2] = __src[2];
    sub_2614546F8(&v65, __dst);
    sub_2614546F8(&v69, __dst);
    sub_26144FF40(v67, __dst);
    sub_26144FF40(v71, __dst);
    v36 = sub_26144D288(v73, v74);
    sub_26144D9E4(v39, &qword_27FEAF738, &unk_261466E30);
    v48 = __src[8];
    v49 = __src[9];
    v50 = __src[10];
    v44 = __src[4];
    v45 = __src[5];
    v46 = __src[6];
    v47 = __src[7];
    v40 = __src[0];
    v41 = __src[1];
    v42 = __src[2];
    v43 = __src[3];
    sub_26144D9E4(&v40, &qword_27FEAF738, &unk_261466E30);
    if ((v36 & 1) == 0)
    {
      break;
    }

LABEL_20:
    v37 = sub_26145291C(v68, v72);
    sub_261454754(&v69);
    sub_261454754(&v65);
    if ((v37 & 1) == 0)
    {
      return 0;
    }

    if (!v5)
    {
      return 1;
    }

    --v5;
    v6 += 216;
  }

  sub_261454754(&v69);
  sub_261454754(&v65);
  return 0;
}

uint64_t sub_26145288C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 40);
    for (i = (a2 + 40); ; i += 2)
    {
      v5 = *(v3 - 1) == *(i - 1) && *v3 == *i;
      if (!v5 && (sub_261464DA0() & 1) == 0)
      {
        break;
      }

      v3 += 2;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t sub_26145291C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    for (i = 0; ; i += 56)
    {
      v5 = *(a1 + i + 48);
      v6 = *(a1 + i + 56);
      v7 = *(a1 + i + 64);
      v8 = *(a1 + i + 80);
      v9 = *(a2 + i + 48);
      v10 = *(a2 + i + 64);
      v24 = *(a2 + i + 72);
      v25 = *(a1 + i + 72);
      v26 = *(a2 + i + 80);
      v27 = *(a2 + i + 56);
      if ((*(a1 + i + 32) != *(a2 + i + 32) || *(a1 + i + 40) != *(a2 + i + 40)) && (sub_261464DA0() & 1) == 0)
      {
        break;
      }

      if ((v5 != v9 || v6 != v27) && (sub_261464DA0() & 1) == 0)
      {
        break;
      }

      if (v7 == 5)
      {
        if (v10 != 5)
        {
          return 0;
        }

        v11 = v26;
      }

      else
      {
        if (v10 == 5)
        {
          return 0;
        }

        if (v7 <= 1)
        {
          v15 = 0x6F65646976;
          if (v7)
          {
            v13 = 0x6F65646976;
          }

          else
          {
            v13 = 1735290739;
          }

          if (v7)
          {
            v14 = 0xE500000000000000;
          }

          else
          {
            v14 = 0xE400000000000000;
          }

          v12 = 0x7473696C79616C70;
        }

        else if (v7 == 2)
        {
          v14 = 0xE500000000000000;
          v13 = 0x6D75626C61;
          v12 = 0x7473696C79616C70;
          v15 = 0x6F65646976;
        }

        else
        {
          v12 = 0x7473696C79616C70;
          if (v7 == 3)
          {
            v13 = 0x6E6F6974617473;
          }

          else
          {
            v13 = 0x7473696C79616C70;
          }

          if (v7 == 3)
          {
            v14 = 0xE700000000000000;
          }

          else
          {
            v14 = 0xE800000000000000;
          }

          v15 = 0x6F65646976;
        }

        if (v10 == 3)
        {
          v12 = 0x6E6F6974617473;
          v16 = 0xE700000000000000;
        }

        else
        {
          v16 = 0xE800000000000000;
        }

        if (v10 == 2)
        {
          v12 = 0x6D75626C61;
          v16 = 0xE500000000000000;
        }

        if (v10)
        {
          v17 = 0xE500000000000000;
        }

        else
        {
          v15 = 1735290739;
          v17 = 0xE400000000000000;
        }

        if (v10 <= 1)
        {
          v18 = v15;
        }

        else
        {
          v18 = v12;
        }

        if (v10 <= 1)
        {
          v19 = v17;
        }

        else
        {
          v19 = v16;
        }

        if (v13 == v18 && v14 == v19)
        {

          v11 = v26;
        }

        else
        {
          v20 = sub_261464DA0();

          v11 = v26;

          if ((v20 & 1) == 0)
          {

            return 0;
          }
        }
      }

      if (v25 == v24 && v8 == v11)
      {
      }

      else
      {
        v4 = sub_261464DA0();

        if ((v4 & 1) == 0)
        {
          return 0;
        }
      }

      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

unint64_t sub_261452D4C(uint64_t a1)
{
  v1 = a1;
  sub_261464E10();
  MEMORY[0x266702D10]((v1 >> 7) & 1);
  MEMORY[0x266702D10](v1 & 0x7F);
  v2 = sub_261464E30();

  return sub_261452E3C(v1, v2);
}

unint64_t sub_261452DC4(uint64_t a1, uint64_t a2)
{
  sub_261464E10();
  sub_2614649E0();
  v4 = sub_261464E30();

  return sub_261452EC8(a1, a2, v4);
}

unint64_t sub_261452E3C(unsigned __int8 a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    v7 = *(v2 + 48);
    do
    {
      v8 = *(v7 + result);
      if (*(v7 + result) < 0)
      {
        if ((a1 & 0x80) != 0 && ((v8 ^ a1) & 0x7F) == 0)
        {
          return result;
        }
      }

      else if (v8 == a1)
      {
        return result;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_261452EC8(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_261464DA0())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

uint64_t sub_261452F80(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEAF790, &qword_261466DE8);
  v37 = v4;
  result = sub_261464D40();
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

      sub_261464E10();
      sub_2614649E0();
      result = sub_261464E30();
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

uint64_t sub_261453240(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEAF7C0, &qword_261466E28);
  v34 = v4;
  result = sub_261464D40();
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

      sub_261464E10();
      sub_2614649E0();
      result = sub_261464E30();
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

uint64_t sub_2614534E8(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_261464CD0() + 1) & ~v5;
    do
    {
      sub_261464E10();

      sub_2614649E0();
      v9 = sub_261464E30();

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
        v15 = (v14 + 16 * v3);
        v16 = (v14 + 16 * v6);
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

uint64_t sub_261453698(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = sub_261452DC4(a3, a4);
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_17;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a5 & 1) == 0)
  {
    if (v20 < v18 || (a5 & 1) != 0)
    {
      sub_261452F80(v18, a5 & 1);
      v13 = sub_261452DC4(a3, a4);
      if ((v19 & 1) != (v22 & 1))
      {
LABEL_18:
        result = sub_261464DC0();
        __break(1u);
        return result;
      }
    }

    else
    {
      v21 = v13;
      sub_261453820();
      v13 = v21;
    }
  }

  v23 = *v6;
  if (v19)
  {
    v24 = (v23[7] + 16 * v13);
    *v24 = a1;
    v24[1] = a2;
  }

  v23[(v13 >> 6) + 8] |= 1 << v13;
  v26 = (v23[6] + 16 * v13);
  *v26 = a3;
  v26[1] = a4;
  v27 = (v23[7] + 16 * v13);
  *v27 = a1;
  v27[1] = a2;
  v28 = v23[2];
  v17 = __OFADD__(v28, 1);
  v29 = v28 + 1;
  if (v17)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v23[2] = v29;
}

void *sub_261453820()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEAF790, &qword_261466DE8);
  v2 = *v0;
  v3 = sub_261464D30();
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

void *sub_261453998()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEAF7C0, &qword_261466E28);
  v2 = *v0;
  v3 = sub_261464D30();
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

double sub_261453B08@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  if (*(a1 + 16) && (v4 = sub_261452D4C(128), (v5 & 1) != 0))
  {
    v43 = *(*(a1 + 56) + 8 * v4);
  }

  else
  {
    v43 = MEMORY[0x277D84F90];
  }

  if (*(a1 + 16) && (v6 = sub_261452D4C(129), (v7 & 1) != 0))
  {
    v42 = *(*(a1 + 56) + 8 * v6);
  }

  else
  {
    v42 = MEMORY[0x277D84F90];
  }

  if (*(a1 + 16) && (v8 = sub_261452D4C(130), (v9 & 1) != 0))
  {
    v41 = *(*(a1 + 56) + 8 * v8);
  }

  else
  {
    v41 = MEMORY[0x277D84F90];
  }

  if (*(a1 + 16) && (v10 = sub_261452D4C(132), (v11 & 1) != 0))
  {
    v12 = *(*(a1 + 56) + 8 * v10);
  }

  else
  {
    v12 = MEMORY[0x277D84F90];
  }

  if (*(a1 + 16) && (v13 = sub_261452D4C(133), (v14 & 1) != 0))
  {
    v15 = *(*(a1 + 56) + 8 * v13);
  }

  else
  {
    v15 = MEMORY[0x277D84F90];
  }

  if (*(a1 + 16) && (v16 = sub_261452D4C(134), (v17 & 1) != 0))
  {
    v18 = *(*(a1 + 56) + 8 * v16);
  }

  else
  {
    v18 = MEMORY[0x277D84F90];
  }

  if (*(a1 + 16) && (v19 = sub_261452D4C(135), (v20 & 1) != 0))
  {
    v21 = *(*(a1 + 56) + 8 * v19);
  }

  else
  {
    v21 = MEMORY[0x277D84F90];
  }

  if (*(a1 + 16) && (v22 = sub_261452D4C(131), (v23 & 1) != 0))
  {
    v24 = *(*(a1 + 56) + 8 * v22);
  }

  else
  {
    v24 = MEMORY[0x277D84F90];
  }

  if (*(a1 + 16) && (v25 = sub_261452D4C(136), (v26 & 1) != 0))
  {
    v27 = *(*(a1 + 56) + 8 * v25);
  }

  else
  {
    v27 = MEMORY[0x277D84F90];
  }

  if (*(a1 + 16) && (v28 = sub_261452D4C(137), (v29 & 1) != 0))
  {
    v30 = *(*(a1 + 56) + 8 * v28);
  }

  else
  {
    v30 = MEMORY[0x277D84F90];
  }

  if (*(a1 + 16) && (v31 = sub_261452D4C(138), (v32 & 1) != 0))
  {
    v33 = *(*(a1 + 56) + 8 * v31);
  }

  else
  {
    v33 = MEMORY[0x277D84F90];
  }

  if (*(a1 + 16) && (v34 = sub_261452D4C(139), (v35 & 1) != 0))
  {
    v36 = *(*(a1 + 56) + 8 * v34);
  }

  else
  {
    v36 = MEMORY[0x277D84F90];
  }

  *&v45 = v43;
  *(&v45 + 1) = v41;
  *&v46 = v12;
  *(&v46 + 1) = v15;
  *&v47 = v18;
  *(&v47 + 1) = v21;
  *&v48 = v42;
  *(&v48 + 1) = v24;
  *&v49 = v27;
  *(&v49 + 1) = v30;
  *&v50 = v33;
  *(&v50 + 1) = v36;
  v51[0] = v43;
  v51[1] = v41;
  v51[2] = v12;
  v51[3] = v15;
  v51[4] = v18;
  v51[5] = v21;
  v51[6] = v42;
  v51[7] = v24;
  v51[8] = v27;
  v51[9] = v30;
  v51[10] = v33;
  v51[11] = v36;
  sub_261454870(&v45, v44);
  sub_2614547A8(v51);
  v37 = v48;
  a2[2] = v47;
  a2[3] = v37;
  v38 = v50;
  a2[4] = v49;
  a2[5] = v38;
  result = *&v45;
  v40 = v46;
  *a2 = v45;
  a2[1] = v40;
  return result;
}

uint64_t sub_261453E70(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v115 = MEMORY[0x277D84F98];
  if (a4)
  {
    v6 = 0x746C7561666564;
  }

  else
  {
    v6 = 0x6465636E61686E65;
  }

  if (a4)
  {
    v7 = 0xE700000000000000;
  }

  else
  {
    v7 = 0xE800000000000000;
  }

  sub_2614521E0(v6, v7, 0x546567617373656DLL, 0xEB00000000657079);
  v8 = sub_261464D90();
  v10 = v9;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v116[0] = v115;
  sub_261453698(v8, v10, 0x646F43726F727265, 0xE900000000000065, isUniquelyReferenced_nonNull_native);
  v12 = v115;
  if (*(a1 + 16))
  {
    v13 = sub_261452D4C(128);
    if (v14)
    {
      v15 = *(*(a1 + 56) + 8 * v13);
      if (v15[2])
      {
        v16 = v15[4];
        v17 = v15[5];

        v18 = swift_isUniquelyReferenced_nonNull_native();
        *&v116[0] = v115;
        sub_261453698(v16, v17, 0x657079546D657469, 0xE800000000000000, v18);
      }
    }

    if (*(a1 + 16))
    {
      v19 = sub_261452D4C(140);
      if (v20)
      {
        v21 = *(*(a1 + 56) + 8 * v19);
        if (v21[2])
        {
          v22 = v21[4];
          v23 = v21[5];

          v24 = swift_isUniquelyReferenced_nonNull_native();
          *&v116[0] = v115;
          sub_261453698(v22, v23, 0x656C61636F6CLL, 0xE600000000000000, v24);
        }
      }

      if (*(a1 + 16))
      {
        v25 = sub_261452D4C(129);
        if (v26)
        {
          v27 = *(*(a1 + 56) + 8 * v25);
          if (v27[2])
          {
            v28 = v27[4];
            v29 = v27[5];

            v30 = swift_isUniquelyReferenced_nonNull_native();
            *&v116[0] = v115;
            sub_261453698(v28, v29, 0x64497465737361, 0xE700000000000000, v30);
          }
        }

        if (*(a1 + 16))
        {
          v31 = sub_261452D4C(137);
          if (v32)
          {
            v33 = *(*(a1 + 56) + 8 * v31);
            if (v33[2])
            {
              v34 = v33[4];
              v35 = v33[5];

              v36 = swift_isUniquelyReferenced_nonNull_native();
              *&v116[0] = v115;
              sub_261453698(v34, v35, 0x546E6F6974617473, 0xEB00000000657079, v36);
            }
          }

          if (*(a1 + 16))
          {
            v37 = sub_261452D4C(135);
            if (v38)
            {
              v39 = *(*(a1 + 56) + 8 * v37);
              if (v39[2])
              {
                v40 = v39[4];
                v41 = v39[5];

                v42 = swift_isUniquelyReferenced_nonNull_native();
                *&v116[0] = v115;
                sub_261453698(v40, v41, 0x6E65526F69647561, 0xEE006E6F69746964, v42);
              }
            }

            if (*(a1 + 16))
            {
              v43 = sub_261452D4C(138);
              if (v44)
              {
                v45 = *(*(a1 + 56) + 8 * v43);
                if (v45[2])
                {
                  v46 = v45[4];
                  v47 = v45[5];

                  v48 = swift_isUniquelyReferenced_nonNull_native();
                  *&v116[0] = v115;
                  sub_261453698(v46, v47, 0xD000000000000013, 0x8000000261468DA0, v48);
                }
              }

              if (*(a1 + 16))
              {
                v49 = sub_261452D4C(139);
                if (v50)
                {
                  v51 = *(*(a1 + 56) + 8 * v49);
                  if (v51[2])
                  {
                    v52 = v51[4];
                    v53 = v51[5];

                    v54 = swift_isUniquelyReferenced_nonNull_native();
                    *&v116[0] = v115;
                    sub_261453698(v52, v53, 0xD000000000000015, 0x8000000261468D80, v54);
                  }
                }

                if (*(a1 + 16))
                {
                  v55 = sub_261452D4C(133);
                  if (v56)
                  {
                    v57 = *(*(a1 + 56) + 8 * v55);
                    if (v57[2])
                    {
                      v58 = v57[4];
                      v59 = v57[5];

                      v60 = swift_isUniquelyReferenced_nonNull_native();
                      *&v116[0] = v115;
                      sub_261453698(v58, v59, 0x6574614379616C70, 0xEC00000079726F67, v60);
                    }
                  }

                  if (*(a1 + 16))
                  {
                    v61 = sub_261452D4C(130);
                    if (v62)
                    {
                      v63 = *(*(a1 + 56) + 8 * v61);
                      if (v63[2])
                      {
                        v64 = v63[4];
                        v65 = v63[5];

                        v66 = swift_isUniquelyReferenced_nonNull_native();
                        *&v116[0] = v115;
                        sub_261453698(v64, v65, 0x5465636976726573, 0xEB00000000657079, v66);
                      }
                    }

                    if (*(a1 + 16))
                    {
                      v67 = sub_261452D4C(131);
                      if (v68)
                      {
                        v69 = *(*(a1 + 56) + 8 * v67);
                        if (v69[2])
                        {
                          v70 = v69[4];
                          v71 = v69[5];

                          v72 = swift_isUniquelyReferenced_nonNull_native();
                          *&v116[0] = v115;
                          sub_261453698(v70, v71, 0x707954616964656DLL, 0xE900000000000065, v72);
                        }
                      }

                      if (*(a1 + 16))
                      {
                        v73 = sub_261452D4C(132);
                        if (v74)
                        {
                          v75 = *(*(a1 + 56) + 8 * v73);
                          if (v75[2])
                          {
                            v76 = v75[4];
                            v77 = v75[5];

                            v78 = swift_isUniquelyReferenced_nonNull_native();
                            *&v116[0] = v115;
                            sub_261453698(v76, v77, 0x6570795479616C70, 0xE800000000000000, v78);
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
  }

  v79 = *(a2 + 176);
  *&v119[64] = *(a2 + 160);
  *&v119[80] = v79;
  *&v119[96] = *(a2 + 192);
  v120 = *(a2 + 208);
  v80 = *(a2 + 112);
  *v119 = *(a2 + 96);
  *&v119[16] = v80;
  v81 = *(a2 + 144);
  *&v119[32] = *(a2 + 128);
  *&v119[48] = v81;
  v82 = *(a2 + 48);
  v117 = *(a2 + 32);
  *v118 = v82;
  v83 = *(a2 + 80);
  *&v118[16] = *(a2 + 64);
  *&v118[32] = v83;
  v84 = *(a2 + 16);
  v116[0] = *a2;
  v116[1] = v84;
  if (sub_2614546E0(v116) != 1)
  {
    v111 = *&v119[56];
    v112 = *&v119[72];
    v113 = *&v119[88];
    v85 = *&v118[40];
    v86 = *v119;
    v114 = *&v119[104];
    v108 = *&v119[8];
    v109 = *&v119[24];
    v110 = *&v119[40];
    v103 = *v118;
    v102 = v117;
    v101 = *&v118[8];
    v104 = *&v118[8];
    v100 = *&v118[24];
    v105 = *&v118[24];
    v106 = *&v118[40];
    v107 = *v119;
    if (sub_26144FF1C(&v102) != 1)
    {
      if (v104 >= 2 && *(v104 + 16))
      {
        v87 = *(v104 + 32);
        v88 = *(v104 + 40);

        v89 = swift_isUniquelyReferenced_nonNull_native();
        sub_261453698(v87, v88, 0x6146656369766564, 0xEC000000796C696DLL, v89);
        v115 = v12;
      }

      if (v101 != 1 && v100 && v100[2])
      {
        v90 = v100[4];
        v91 = v100[5];

        v92 = swift_isUniquelyReferenced_nonNull_native();
        sub_261453698(v90, v91, 0x6F4D656369766564, 0xEB000000006C6564, v92);
        v115 = v12;
      }

      if (v101 == 1 || !v86)
      {
        if (v101 == 1)
        {
          return v12;
        }
      }

      else if (v86[2])
      {
        v93 = v86[4];
        v94 = v86[5];

        v95 = swift_isUniquelyReferenced_nonNull_native();
        sub_261453698(v93, v94, 29551, 0xE200000000000000, v95);
        v115 = v12;
      }

      if (v85 && v85[2])
      {
        v96 = v85[4];
        v97 = v85[5];

        v98 = swift_isUniquelyReferenced_nonNull_native();
        sub_261453698(v96, v97, 0x6F6973726556736FLL, 0xE90000000000006ELL, v98);
      }
    }
  }

  return v12;
}

uint64_t sub_2614546E0(uint64_t a1)
{
  v1 = *(a1 + 208);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_261454850(uint64_t result)
{
  if (result != 1)
  {
  }

  return result;
}

uint64_t sub_261454860(uint64_t result)
{
  if (result != 1)
  {
  }

  return result;
}

__n128 __swift_memcpy144_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  result = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 128);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = v7;
  *(a1 + 80) = result;
  *(a1 + 96) = v6;
  return result;
}

uint64_t sub_2614548F8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x7FFFFFFD && *(a1 + 144))
  {
    return (*a1 + 2147483646);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v5 = -1;
  }

  else
  {
    v5 = v4;
  }

  v6 = v5 - 1;
  if (v4 < 1)
  {
    v7 = -1;
  }

  else
  {
    v7 = v6;
  }

  return (v7 + 1);
}

uint64_t sub_261454960(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *(result + 136) = 0;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 2147483646;
    if (a3 > 0x7FFFFFFD)
    {
      *(result + 144) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFD)
    {
      *(result + 144) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

__n128 sub_2614549E4@<Q0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_2614550B0(a2, v8);
  if (!v2)
  {
    v5 = v8[7];
    *(a1 + 96) = v8[6];
    *(a1 + 112) = v5;
    *(a1 + 128) = v8[8];
    v6 = v8[3];
    *(a1 + 32) = v8[2];
    *(a1 + 48) = v6;
    v7 = v8[5];
    *(a1 + 64) = v8[4];
    *(a1 + 80) = v7;
    result = v8[1];
    *a1 = v8[0];
    *(a1 + 16) = result;
  }

  return result;
}

BOOL sub_261454A40(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[7];
  v11[6] = a1[6];
  v11[7] = v2;
  v11[8] = a1[8];
  v3 = a1[3];
  v11[2] = a1[2];
  v11[3] = v3;
  v4 = a1[5];
  v11[4] = a1[4];
  v11[5] = v4;
  v5 = a1[1];
  v11[0] = *a1;
  v11[1] = v5;
  v6 = a2[7];
  v12[6] = a2[6];
  v12[7] = v6;
  v12[8] = a2[8];
  v7 = a2[3];
  v12[2] = a2[2];
  v12[3] = v7;
  v8 = a2[5];
  v12[4] = a2[4];
  v12[5] = v8;
  v9 = a2[1];
  v12[0] = *a2;
  v12[1] = v9;
  return sub_261454B94(v11, v12);
}

unint64_t sub_261454AC4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_2614557A8(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_261454AF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2614557A8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_261454B1C(uint64_t a1)
{
  v2 = sub_26145543C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_261454B58(uint64_t a1)
{
  v2 = sub_26145543C();

  return MEMORY[0x2821FE720](a1, v2);
}

BOOL sub_261454B94(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v3 = *a1;
  v4 = *a2;
  if (v3 == 2)
  {
    if (v4 != 2)
    {
      return 0;
    }
  }

  else
  {
    if (v4 == 2)
    {
      return 0;
    }

    v5 = a2;
    if (v3)
    {
      v6 = 0x636973756DLL;
    }

    else
    {
      v6 = 0x6F65646976;
    }

    if (v4)
    {
      v7 = 0x636973756DLL;
    }

    else
    {
      v7 = 0x6F65646976;
    }

    if (v6 == v7)
    {
      swift_bridgeObjectRelease_n();
      a2 = v5;
    }

    else
    {
      v8 = sub_261464DA0();
      swift_bridgeObjectRelease_n();
      a2 = v5;
      if ((v8 & 1) == 0)
      {
        return 0;
      }
    }
  }

  v9 = *(a1 + 1);
  v10 = *(a2 + 1);
  if (v9 != 1)
  {
    if (v10 == 1)
    {
      return 0;
    }

    v19 = *(a1 + 2);
    v20 = *(a2 + 2);
    if (v9)
    {
      if (!v10)
      {

        goto LABEL_38;
      }

      v21 = a2;
      v22 = sub_26145288C(v9, *(a2 + 1));
      a2 = v21;
      if (v22)
      {
        goto LABEL_23;
      }
    }

    else if (!v10)
    {
LABEL_23:
      if (v19)
      {
        if (!v20)
        {
          return 0;
        }

        v23 = a2;
        v24 = sub_26145288C(v19, v20);
        a2 = v23;
        if ((v24 & 1) == 0)
        {
          return 0;
        }
      }

      else if (v20)
      {
        return 0;
      }

      goto LABEL_16;
    }

    sub_26144DA44(v10, v20);

LABEL_38:

    return 0;
  }

  if (v10 != 1)
  {
    return 0;
  }

LABEL_16:
  v11 = *(a1 + 40);
  v70[0] = *(a1 + 24);
  v70[1] = v11;
  v12 = *(a1 + 72);
  v70[2] = *(a1 + 56);
  v70[3] = v12;
  v13 = *(a2 + 40);
  v69[0] = *(a2 + 24);
  v69[1] = v13;
  v14 = *(a2 + 72);
  v69[2] = *(a2 + 56);
  v69[3] = v14;
  v15 = *&v70[0];
  if (*&v70[0] == 1)
  {
    if (*&v69[0] == 1)
    {
      v16 = a2;
      v17 = *(a1 + 3);
      *&v63[8] = *(a1 + 2);
      *&v63[24] = v17;
      *&v63[40] = *(a1 + 4);
      v18 = *(a1 + 10);
      *v63 = 1;
      *&v63[56] = v18;
      sub_261455538(v70, &v71);
      sub_261455538(v69, &v71);
      sub_26144D9E4(v63, &qword_27FEAF7E8, &qword_261466FD0);
      goto LABEL_32;
    }

LABEL_28:
    v25 = *(a1 + 3);
    *&v63[8] = *(a1 + 2);
    *&v63[24] = v25;
    *&v63[40] = *(a1 + 4);
    v26 = *(a2 + 3);
    v65 = *(a2 + 2);
    v27 = *(a1 + 10);
    *v63 = *&v70[0];
    *&v63[56] = v27;
    v64 = *&v69[0];
    v66 = v26;
    v67 = *(a2 + 4);
    v68 = *(a2 + 10);
    sub_261455538(v70, &v71);
    sub_261455538(v69, &v71);
    sub_26144D9E4(v63, &qword_27FEAF7F0, &qword_261466FD8);
    return 0;
  }

  if (*&v69[0] == 1)
  {
    goto LABEL_28;
  }

  *v57 = *&v69[0];
  v28 = *(a2 + 3);
  *&v57[8] = *(a2 + 2);
  *&v57[24] = v28;
  *&v57[40] = *(a2 + 4);
  v16 = a2;
  *&v57[56] = *(a2 + 10);
  *v63 = *v57;
  *&v63[16] = *&v57[16];
  *&v63[32] = *&v57[32];
  *&v63[48] = *&v57[48];
  v29 = *(a1 + 2);
  v30 = *(a1 + 3);
  v31 = *(a1 + 10);
  v74 = *(a1 + 4);
  v73 = v30;
  v72 = v29;
  v75 = v31;
  v71 = *&v70[0];
  v32 = sub_26145A2A0(&v71, v63);
  sub_261455538(v70, &v58);
  sub_261455538(v69, &v58);
  sub_26144D9E4(v57, &qword_27FEAF7E8, &qword_261466FD0);
  v58 = v15;
  v33 = *(a1 + 3);
  v59 = *(a1 + 2);
  v60 = v33;
  v61 = *(a1 + 4);
  v62 = *(a1 + 10);
  sub_26144D9E4(&v58, &qword_27FEAF7E8, &qword_261466FD0);
  if ((v32 & 1) == 0)
  {
    return 0;
  }

LABEL_32:
  v34 = *(a1 + 11);
  v35 = v16;
  v36 = *(v16 + 11);
  if (v34 == 1)
  {
    if (v36 == 1)
    {
      goto LABEL_34;
    }

    return 0;
  }

  if (v36 == 1)
  {
    return 0;
  }

  if (v34)
  {
    if (!v36)
    {
      return 0;
    }

    v50 = sub_26145288C(v34, v36);
    v35 = v16;
    if ((v50 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v36)
  {
    return 0;
  }

LABEL_34:
  v38 = *(a1 + 12);
  v37 = *(a1 + 13);
  v40 = *(a1 + 14);
  v39 = *(a1 + 15);
  v42 = *(a1 + 16);
  v41 = *(a1 + 17);
  v43 = *(v35 + 12);
  v44 = *(v35 + 13);
  v45 = *(v35 + 14);
  v46 = *(v35 + 15);
  v48 = *(v35 + 16);
  v47 = *(v35 + 17);
  if (v37 == 1)
  {
    if (v44 == 1)
    {
      return 1;
    }

    goto LABEL_48;
  }

  if (v44 == 1)
  {
LABEL_48:
    v54 = *(v35 + 14);
    v55 = *(v35 + 12);
    sub_2614555A8(v55, v44, v45, v46, v48, v47);
    sub_2614555A8(v38, v37, v40, v39, v42, v41);
    sub_26145561C(v38, v37, v40, v39, v42, v41);
    sub_26145561C(v55, v44, v54, v46, v48, v47);
    return 0;
  }

  v58 = *(v35 + 12);
  *&v59 = v44;
  *(&v59 + 1) = v45;
  *&v60 = v46;
  *(&v60 + 1) = v48;
  *&v61 = v47;
  *v57 = v38;
  *&v57[8] = v37;
  *&v57[16] = v40;
  *&v57[24] = v39;
  *&v57[32] = v42;
  *&v57[40] = v41;
  v56 = v43;
  v53 = v41;
  v51 = v45;
  v52 = sub_261458354(v57, &v58);
  sub_2614555A8(v56, v44, v51, v46, v48, v47);
  sub_2614555A8(v38, v37, v40, v39, v42, v53);

  sub_26145561C(v38, v37, v40, v39, v42, v53);
  return (v52 & 1) != 0;
}

uint64_t sub_2614550B0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEAF7C8, &qword_261466FC8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v18 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26145543C();
  sub_261464E40();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v28) = 0;
  sub_261464D70();
  v11 = sub_261464D60();

  if (v11 == 1)
  {
    v12 = 1;
  }

  else
  {
    v12 = 2;
  }

  if (!v11)
  {
    v12 = 0;
  }

  v26 = v12;
  LOBYTE(v32) = 1;
  sub_26144E01C();
  sub_261464D80();
  v24 = *(&v28 + 1);
  v25 = v28;
  LOBYTE(v32) = 2;
  sub_261455490();
  sub_261464D80();
  v22 = v29;
  v23 = v28;
  v13 = v30;
  LOBYTE(v32) = 3;
  sub_2614554E4();
  sub_261464D80();
  v20 = v29;
  v21 = v28;
  v18 = v31;
  v19 = v30;
  v27 = 4;
  sub_26144E118();
  sub_261464D80();
  v14 = v32;
  (*(v6 + 8))(v9, v5);
  result = __swift_destroy_boxed_opaque_existential_1(a1);
  *a2 = v26;
  v15 = v24;
  *(a2 + 8) = v25;
  *(a2 + 16) = v15;
  v16 = v21;
  *(a2 + 40) = v20;
  *(a2 + 24) = v16;
  *(a2 + 72) = v18;
  *(a2 + 56) = v19;
  *(a2 + 88) = v14;
  v17 = v22;
  *(a2 + 96) = v23;
  *(a2 + 112) = v17;
  *(a2 + 128) = v13;
  return result;
}

unint64_t sub_26145543C()
{
  result = qword_27FEAF7D0;
  if (!qword_27FEAF7D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEAF7D0);
  }

  return result;
}

unint64_t sub_261455490()
{
  result = qword_27FEAF7D8;
  if (!qword_27FEAF7D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEAF7D8);
  }

  return result;
}

unint64_t sub_2614554E4()
{
  result = qword_27FEAF7E0;
  if (!qword_27FEAF7E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEAF7E0);
  }

  return result;
}

uint64_t sub_261455538(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEAF7E8, &qword_261466FD0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_2614555A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a2 != 1)
  {
  }
}

void sub_26145561C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a2 != 1)
  {
  }
}

unint64_t sub_2614556A4()
{
  result = qword_27FEAF7F8;
  if (!qword_27FEAF7F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEAF7F8);
  }

  return result;
}

unint64_t sub_2614556FC()
{
  result = qword_27FEAF800;
  if (!qword_27FEAF800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEAF800);
  }

  return result;
}

unint64_t sub_261455754()
{
  result = qword_27FEAF808;
  if (!qword_27FEAF808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEAF808);
  }

  return result;
}

unint64_t sub_2614557A8(uint64_t a1, uint64_t a2)
{
  v2 = sub_261464D60();

  if (v2 >= 5)
  {
    return 5;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_2614558E0(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 64) + **(a2 + 64));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_26144440C;

  return v7(a1, a2);
}

id QOSAlertMessage.__allocating_init(title:body:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = objc_allocWithZone(v4);
  v10 = &v9[OBJC_IVAR___QOSAlertMessageInternal_title];
  *v10 = a1;
  *(v10 + 1) = a2;
  v11 = &v9[OBJC_IVAR___QOSAlertMessageInternal_body];
  *v11 = a3;
  *(v11 + 1) = a4;
  v13.receiver = v9;
  v13.super_class = v4;
  return objc_msgSendSuper2(&v13, sel_init);
}

uint64_t QOSError.hashValue.getter()
{
  v1 = *v0;
  sub_261464E10();
  MEMORY[0x266702D10](v1);
  return sub_261464E30();
}

uint64_t QOSAlertMessage.title.getter()
{
  v1 = *(v0 + OBJC_IVAR___QOSAlertMessageInternal_title);

  return v1;
}

id sub_261455B80(uint64_t a1, uint64_t a2, void *a3)
{
  if (*(a1 + *a3 + 8))
  {

    v3 = sub_261464920();
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

uint64_t QOSAlertMessage.body.getter()
{
  v1 = *(v0 + OBJC_IVAR___QOSAlertMessageInternal_body);

  return v1;
}

id QOSAlertMessage.init(title:body:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = &v4[OBJC_IVAR___QOSAlertMessageInternal_title];
  *v5 = a1;
  *(v5 + 1) = a2;
  v6 = &v4[OBJC_IVAR___QOSAlertMessageInternal_body];
  *v6 = a3;
  *(v6 + 1) = a4;
  v8.receiver = v4;
  v8.super_class = type metadata accessor for QOSAlertMessage();
  return objc_msgSendSuper2(&v8, sel_init);
}

id QOSAlertMessage.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id QOSAlertMessage.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for QOSAlertMessage();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_261455E7C(uint64_t a1)
{
  if (qword_2811AE950 != -1)
  {
    swift_once();
  }

  v1 = qword_2811AE958;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEAF838, &qword_2614672C8);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_261467150;
  v3 = MEMORY[0x277D837D0];
  v4 = sub_2614648F0();
  v6 = v5;
  *(v2 + 56) = v3;
  *(v2 + 64) = sub_261443D38();
  *(v2 + 32) = v4;
  *(v2 + 40) = v6;
  v7 = sub_261464BC0();
  sub_261464860("%{public}@", 10, 2, &dword_26143F000, v1, v7, v2);
}

void *static QOSErrorMessage.getObjcInstance(config:logger:metricsRecorder:defaultAlert:)(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7 = *&a1[OBJC_IVAR___QOSConfigInternal_appTarget];
  if (v7 == 1)
  {
    sub_2614560EC();
    swift_allocError();
    *v8 = 0;
    return swift_willThrow();
  }

  else if (v7)
  {
    result = sub_261464DB0();
    __break(1u);
  }

  else
  {
    v16 = a1;

    return sub_2614569A8(v16, a2, a3, a4, a5, a6, a7);
  }

  return result;
}

unint64_t sub_2614560EC()
{
  result = qword_27FEAF820;
  if (!qword_27FEAF820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEAF820);
  }

  return result;
}

id QOSErrorMessage.__deallocating_deinit(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t sub_261456364(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEAF830, &qword_261467BD0);
  MEMORY[0x28223BE20](v9 - 8, v10);
  v12 = v26 - v11;
  sub_261457084(a3, v26 - v11);
  v13 = sub_261464B40();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_261441D1C(v12);
  }

  else
  {
    sub_261464B30();
    (*(v14 + 8))(v12, v13);
  }

  v16 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_261464B20();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = sub_2614649A0() + 32;
      v21 = swift_allocObject();
      *(v21 + 16) = a4;
      *(v21 + 24) = a5;

      if (v19 | v17)
      {
        v27[0] = 0;
        v27[1] = 0;
        v22 = v27;
        v27[2] = v17;
        v27[3] = v19;
      }

      else
      {
        v22 = 0;
      }

      v26[1] = 7;
      v26[2] = v22;
      v26[3] = v20;
      v24 = swift_task_create();

      sub_261441D1C(a3);

      return v24;
    }
  }

  else
  {
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_261441D1C(a3);
  v23 = swift_allocObject();
  *(v23 + 16) = a4;
  *(v23 + 24) = a5;
  if (v19 | v17)
  {
    v27[4] = 0;
    v27[5] = 0;
    v27[6] = v17;
    v27[7] = v19;
  }

  return swift_task_create();
}

void *sub_261456624(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEAF830, &qword_261467BD0);
  MEMORY[0x28223BE20](v10 - 8, v11);
  v13 = v18 - v12;
  v19[3] = type metadata accessor for QOSConfig();
  v19[4] = &off_2873CC728;
  v19[0] = a1;
  v18[3] = type metadata accessor for Network();
  v18[4] = &off_2873CC4F0;
  v18[0] = a2;
  a5[14] = 0;
  a5[15] = 0;
  sub_261440F08(v19, (a5 + 2));
  sub_261440F08(v18, (a5 + 7));
  a5[12] = a3;
  a5[13] = a4;
  v14 = sub_261464B40();
  (*(*(v14 - 8) + 56))(v13, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = a5;

  v16 = sub_261456364(0, 0, v13, &unk_2614672C0, v15);
  __swift_destroy_boxed_opaque_existential_1(v18);
  __swift_destroy_boxed_opaque_existential_1(v19);
  a5[15] = v16;

  return a5;
}

void *sub_2614567BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v23 = type metadata accessor for QOSConfig();
  v24 = &off_2873CC728;
  v22[0] = a1;
  v20 = type metadata accessor for Network();
  v21 = &off_2873CC4F0;
  v19[0] = a2;
  type metadata accessor for TVIssuesService();
  v8 = swift_allocObject();
  v9 = __swift_mutable_project_boxed_opaque_existential_1(v22, v23);
  MEMORY[0x28223BE20](v9, v9);
  v11 = (v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v12 + 16))(v11);
  v13 = __swift_mutable_project_boxed_opaque_existential_1(v19, v20);
  MEMORY[0x28223BE20](v13, v13);
  v15 = (v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v16 + 16))(v15);
  v17 = sub_261456624(*v11, *v15, a3, a4, v8);
  __swift_destroy_boxed_opaque_existential_1(v19);
  __swift_destroy_boxed_opaque_existential_1(v22);
  return v17;
}

void *sub_2614569A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = type metadata accessor for QOSConfig();
  v35[3] = v14;
  v35[4] = &off_2873CC728;
  v35[0] = a1;
  type metadata accessor for TVPlaybackErrorMessage();
  v15 = swift_allocObject();
  v16 = __swift_mutable_project_boxed_opaque_existential_1(v35, v14);
  MEMORY[0x28223BE20](v16, v16);
  v18 = (&v33[-1] - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v19 + 16))(v18);
  v20 = *v18;
  v34[3] = v14;
  v34[4] = &off_2873CC728;
  v34[0] = v20;
  sub_261440F08(v34, (v15 + 2));
  v15[7] = a2;
  v15[8] = a3;
  v15[9] = a4;
  v15[10] = a5;
  v15[11] = a6;
  v15[12] = a7;
  v21 = objc_opt_self();

  v22 = [v21 defaultSessionConfiguration];
  v23 = [objc_opt_self() sessionWithConfiguration_];

  type metadata accessor for Network();
  v24 = swift_allocObject();
  v24[2] = v23;
  v24[3] = a2;
  v24[4] = a3;
  sub_261440F08(v34, v33);
  v25 = __swift_mutable_project_boxed_opaque_existential_1(v33, v33[3]);
  MEMORY[0x28223BE20](v25, v25);
  v27 = (&v33[-1] - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v28 + 16))(v27);
  v29 = *v27;

  v30 = sub_2614567BC(v29, v24, a2, a3);
  __swift_destroy_boxed_opaque_existential_1(v33);
  v15[16] = type metadata accessor for TVIssuesService();
  v15[17] = &off_2811AE918;

  v15[13] = v30;
  __swift_destroy_boxed_opaque_existential_1(v34);
  __swift_destroy_boxed_opaque_existential_1(v35);
  return v15;
}

unint64_t sub_261456C84()
{
  result = qword_27FEAF828;
  if (!qword_27FEAF828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEAF828);
  }

  return result;
}

uint64_t dispatch thunk of SwiftQOSErrorMessageProtocol.fetchLocalizedErrorMessage(for:using:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 16) + **(a4 + 16));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_261456E58;

  return v11(a1, a2, a3, a4);
}

uint64_t sub_261456E58(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

void sub_261456F78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(v3 + 16);
  v6 = sub_261464920();
  (*(v5 + 16))(v5, a1, v6);
}

void sub_261456FE0(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = sub_2614648D0();
  (*(v2 + 16))(v2, v3);
}

id sub_26145704C()
{
  v1 = (*(*(v0 + 16) + 16))();

  return v1;
}

uint64_t sub_261457084(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEAF830, &qword_261467BD0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2614570F4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_26144440C;

  return sub_261441690(a1, v4);
}

uint64_t sub_2614571AC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_26144440C;

  return sub_2614639BC(a1, v4, v5, v6);
}

uint64_t sub_261457264()
{
  v1 = v0[24];
  v2 = v0[25];
  v3 = v0[23];
  swift_willThrow();

  v4 = v0[1];

  return v4(0, 0);
}

uint64_t sub_2614572F4()
{
  v1 = v0[24];
  v2 = v0[25];
  v3 = v0[23];
  swift_willThrow();

  v4 = v0[25] != 0;
  v5 = v0[1];

  return v5(0, v4);
}

uint64_t sub_2614573DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13 = (*(a5 + 48) + **(a5 + 48));
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_26144440C;

  return v13(a1, a2, a3, a4, a5);
}

uint64_t sub_261457528(uint64_t a1)
{
  result = sub_261464C00();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_261457598(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = v5 - 1;
  if (!v5)
  {
    v6 = 0;
  }

  v7 = *(*(*(a3 + 16) - 8) + 64);
  if (!v5)
  {
    ++v7;
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v6;
  if (a2 > v6)
  {
    v9 = 8 * v7;
    if (v7 > 3)
    {
      goto LABEL_8;
    }

    v11 = ((v8 + ~(-1 << v9)) >> v9) + 1;
    if (HIWORD(v11))
    {
      v10 = *(a1 + v7);
      if (v10)
      {
        goto LABEL_15;
      }
    }

    else
    {
      if (v11 <= 0xFF)
      {
        if (v11 < 2)
        {
          goto LABEL_28;
        }

LABEL_8:
        v10 = *(a1 + v7);
        if (!*(a1 + v7))
        {
          goto LABEL_28;
        }

LABEL_15:
        v12 = (v10 - 1) << v9;
        if (v7 > 3)
        {
          v12 = 0;
        }

        if (v7)
        {
          if (v7 <= 3)
          {
            v13 = v7;
          }

          else
          {
            v13 = 4;
          }

          if (v13 > 2)
          {
            if (v13 == 3)
            {
              v14 = *a1 | (*(a1 + 2) << 16);
            }

            else
            {
              v14 = *a1;
            }
          }

          else if (v13 == 1)
          {
            v14 = *a1;
          }

          else
          {
            v14 = *a1;
          }
        }

        else
        {
          v14 = 0;
        }

        return v6 + (v14 | v12) + 1;
      }

      v10 = *(a1 + v7);
      if (*(a1 + v7))
      {
        goto LABEL_15;
      }
    }
  }

LABEL_28:
  if (v5 < 2)
  {
    return 0;
  }

  v16 = (*(v4 + 48))(a1, v5);
  if (v16 >= 2)
  {
    return v16 - 1;
  }

  else
  {
    return 0;
  }
}

char *sub_261457718(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = 0;
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  v8 = v7 - 1;
  if (v7)
  {
    v9 = *(*(*(a4 + 16) - 8) + 64);
  }

  else
  {
    v8 = 0;
    v9 = *(*(*(a4 + 16) - 8) + 64) + 1;
  }

  v10 = a3 >= v8;
  v11 = a3 - v8;
  if (v11 == 0 || !v10)
  {
    goto LABEL_16;
  }

  if (v9 > 3)
  {
    v5 = 1;
    if (v8 < a2)
    {
      goto LABEL_17;
    }

    goto LABEL_26;
  }

  v12 = ((v11 + ~(-1 << (8 * v9))) >> (8 * v9)) + 1;
  if (!HIWORD(v12))
  {
    if (v12 < 0x100)
    {
      v13 = 1;
    }

    else
    {
      v13 = 2;
    }

    if (v12 >= 2)
    {
      v5 = v13;
    }

    else
    {
      v5 = 0;
    }

LABEL_16:
    if (v8 < a2)
    {
      goto LABEL_17;
    }

    goto LABEL_26;
  }

  v5 = 4;
  if (v8 < a2)
  {
LABEL_17:
    v14 = ~v8 + a2;
    if (v9 < 4)
    {
      v16 = (v14 >> (8 * v9)) + 1;
      if (v9)
      {
        v17 = v14 & ~(-1 << (8 * v9));
        v18 = result;
        bzero(result, v9);
        result = v18;
        if (v9 != 3)
        {
          if (v9 == 2)
          {
            *v18 = v17;
            if (v5 > 1)
            {
LABEL_44:
              if (v5 == 2)
              {
                *&result[v9] = v16;
              }

              else
              {
                *&result[v9] = v16;
              }

              return result;
            }
          }

          else
          {
            *v18 = v14;
            if (v5 > 1)
            {
              goto LABEL_44;
            }
          }

          goto LABEL_41;
        }

        *v18 = v17;
        v18[2] = BYTE2(v17);
      }

      if (v5 > 1)
      {
        goto LABEL_44;
      }
    }

    else
    {
      v15 = result;
      bzero(result, v9);
      result = v15;
      *v15 = v14;
      v16 = 1;
      if (v5 > 1)
      {
        goto LABEL_44;
      }
    }

LABEL_41:
    if (v5)
    {
      result[v9] = v16;
    }

    return result;
  }

LABEL_26:
  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *&result[v9] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_33;
    }

    *&result[v9] = 0;
  }

  else if (v5)
  {
    result[v9] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_33;
  }

  if (!a2)
  {
    return result;
  }

LABEL_33:
  if (v7 >= 2)
  {
    v19 = *(v6 + 56);

    return v19();
  }

  return result;
}

uint64_t sub_2614579B0(_BYTE *__src, _BYTE *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = a2 - __src;
  if (__src)
  {
    v3 = a2 - __src;
  }

  else
  {
    v3 = 0;
  }

  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_11:
    __break(1u);
  }

  if (v3 > 0xFF)
  {
    goto LABEL_11;
  }

  result = 0;
  __dst = 0;
  v9 = v3;
  v8 = 0;
  v7 = 0;
  if (__src)
  {
    if (a2 != __src)
    {
      memcpy(&__dst, __src, v2);
      return __dst;
    }
  }

  return result;
}

unint64_t sub_261457A68(_BYTE *a1, unint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 <= 14)
  {
    return sub_2614579B0(a1, &a1[a2]);
  }

  sub_261464710();
  swift_allocObject();
  sub_261464700();
  if (a2 < 0x7FFFFFFF)
  {
    return a2 << 32;
  }

  sub_261464750();
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = a2;
  return result;
}

uint64_t sub_261457B18()
{
  v17 = *MEMORY[0x277D85DE8];
  v0 = sub_261464690();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_261464960();
  MEMORY[0x28223BE20](v5 - 8, v6);
  bzero(&v14, 0x500uLL);
  uname(&v14);
  v15 = sub_261457A68(v14.machine, 0x100uLL);
  v16 = v7;
  sub_261464950();
  sub_261457CFC();
  v8 = sub_261464940();
  v10 = v9;
  sub_261457D50(v15, v16);
  if (!v10)
  {
    __break(1u);
  }

  v15 = v8;
  v16 = v10;
  sub_261464660();
  sub_26144A0A4();
  v11 = sub_261464C60();
  (*(v1 + 8))(v4, v0);

  return v11;
}

unint64_t sub_261457CFC()
{
  result = qword_2811AE988;
  if (!qword_2811AE988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811AE988);
  }

  return result;
}

uint64_t sub_261457D50(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

double sub_261457DA4@<D0>(_OWORD *a1@<X8>, void *a2@<X0>)
{
  sub_261458518(a2, v6);
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

uint64_t sub_261457DE8(_OWORD *a1, __int128 *a2)
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
  return sub_261458354(v7, v8) & 1;
}

uint64_t sub_261457E3C()
{
  sub_261464E10();
  sub_2614649E0();

  return sub_261464E30();
}

uint64_t sub_261457F38(uint64_t a1)
{
  sub_2614649E0();
}

uint64_t sub_261458020(uint64_t a1)
{
  sub_261464E10();
  sub_2614649E0();

  return sub_261464E30();
}

unint64_t sub_261458118@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_261458968(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_261458148(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEB00000000657079;
  v4 = 0x54746E65746E6F63;
  v5 = 0xEA00000000007364;
  v6 = 0x4965636976726573;
  v7 = 0xE700000000000000;
  v8 = 0x7364496D616461;
  if (v2 != 3)
  {
    v8 = 0x6B63616279616C70;
    v7 = 0xED00007365646F4DLL;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x736449646E617262;
    v3 = 0xE800000000000000;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

uint64_t sub_261458200()
{
  v1 = *v0;
  v2 = 0x54746E65746E6F63;
  v3 = 0x4965636976726573;
  v4 = 0x7364496D616461;
  if (v1 != 3)
  {
    v4 = 0x6B63616279616C70;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x736449646E617262;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_2614582B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_261458968(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2614582DC(uint64_t a1)
{
  v2 = sub_2614587FC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_261458318(uint64_t a1)
{
  v2 = sub_2614587FC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_261458354(uint64_t *a1, void *a2)
{
  v4 = a1[1];
  v5 = a2[1];
  if (v4)
  {
    if (!v5)
    {
      return 0;
    }

    v6 = *a1 == *a2 && v4 == v5;
    if (!v6 && (sub_261464DA0() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v5)
  {
    return 0;
  }

  v7 = a1[2];
  v8 = a2[2];
  if (v7)
  {
    if (!v8 || (sub_26145288C(v7, v8) & 1) == 0)
    {
      return 0;
    }
  }

  else if (v8)
  {
    return 0;
  }

  v9 = a1[3];
  v10 = a2[3];
  if (v9)
  {
    if (!v10 || (sub_26145288C(v9, v10) & 1) == 0)
    {
      return 0;
    }
  }

  else if (v10)
  {
    return 0;
  }

  v11 = a1[4];
  v12 = a2[4];
  if (v11)
  {
    if (!v12 || (sub_26145288C(v11, v12) & 1) == 0)
    {
      return 0;
    }
  }

  else if (v12)
  {
    return 0;
  }

  v13 = a1[5];
  v14 = a2[5];
  if (v13)
  {
    if (v14 && (sub_26145288C(v13, v14) & 1) != 0)
    {
      return 1;
    }
  }

  else if (!v14)
  {
    return 1;
  }

  return 0;
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

uint64_t sub_26145844C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 48))
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

uint64_t sub_2614584A8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_261458518@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEAF8E0, &unk_261467418);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v17 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2614587FC();
  sub_261464E40();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v23) = 0;
  v11 = sub_261464D70();
  v21 = v6;
  v19 = v12;
  v20 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEAF658, &qword_261466260);
  v22 = 1;
  sub_26144C654();
  sub_261464D80();
  v18 = v23;
  v22 = 2;
  sub_261464D80();
  v13 = v23;
  v22 = 3;
  sub_261464D80();
  v14 = v23;
  v22 = 4;
  sub_261464D80();
  v15 = v23;
  (*(v21 + 8))(v9, v5);
  result = __swift_destroy_boxed_opaque_existential_1(a1);
  v16 = v19;
  *a2 = v20;
  a2[1] = v16;
  a2[2] = v18;
  a2[3] = v13;
  a2[4] = v14;
  a2[5] = v15;
  return result;
}

unint64_t sub_2614587FC()
{
  result = qword_27FEAF8E8;
  if (!qword_27FEAF8E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEAF8E8);
  }

  return result;
}

unint64_t sub_261458864()
{
  result = qword_27FEAF8F0;
  if (!qword_27FEAF8F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEAF8F0);
  }

  return result;
}

unint64_t sub_2614588BC()
{
  result = qword_27FEAF8F8;
  if (!qword_27FEAF8F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEAF8F8);
  }

  return result;
}

unint64_t sub_261458914()
{
  result = qword_27FEAF900;
  if (!qword_27FEAF900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEAF900);
  }

  return result;
}

unint64_t sub_261458968(uint64_t a1, uint64_t a2)
{
  v2 = sub_261464D60();

  if (v2 >= 5)
  {
    return 5;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_2614589B4(uint64_t *a1)
{
  v3 = *v1;
  if (*v1)
  {
    v4 = *a1;
    if (!*a1)
    {
      return 0;
    }

    v5 = sub_261448DAC(v3, v4);

    if ((v5 & 1) == 0)
    {
      return 0;
    }
  }

  v6 = v1[1];
  if (v6)
  {
    v7 = a1[1];
    if (!v7)
    {
      return 0;
    }

    v8 = sub_261448DAC(v6, v7);

    if ((v8 & 1) == 0)
    {
      return 0;
    }
  }

  v9 = v1[2];
  if (v9)
  {
    v10 = a1[2];
    if (!v10)
    {
      return 0;
    }

    v11 = sub_261448DAC(v9, v10);

    if ((v11 & 1) == 0)
    {
      return 0;
    }
  }

  v12 = v1[3];
  if (v12)
  {
    v13 = a1[3];
    if (!v13)
    {
      return 0;
    }

    v14 = sub_261448DAC(v12, v13);

    if ((v14 & 1) == 0)
    {
      return 0;
    }
  }

  v15 = v1[4];
  if (v15)
  {
    v16 = a1[4];
    if (!v16)
    {
      return 0;
    }

    v17 = sub_261448DAC(v15, v16);

    if ((v17 & 1) == 0)
    {
      return 0;
    }
  }

  v18 = v1[5];
  if (v18)
  {
    v19 = a1[5];
    if (!v19)
    {
      return 0;
    }

    v20 = sub_261448DAC(v18, v19);

    if ((v20 & 1) == 0)
    {
      return 0;
    }
  }

  v21 = v1[6];
  if (v21)
  {
    v22 = a1[6];
    if (!v22)
    {
      return 0;
    }

    v23 = sub_261448DAC(v21, v22);

    if ((v23 & 1) == 0)
    {
      return 0;
    }
  }

  v24 = v1[7];
  if (v24)
  {
    v25 = a1[7];
    if (!v25)
    {
      return 0;
    }

    v26 = sub_261448DAC(v24, v25);

    if ((v26 & 1) == 0)
    {
      return 0;
    }
  }

  v27 = v1[8];
  if (v27)
  {
    v28 = a1[8];
    if (!v28)
    {
      return 0;
    }

    v29 = sub_261448DAC(v27, v28);

    if ((v29 & 1) == 0)
    {
      return 0;
    }
  }

  v30 = v1[9];
  if (v30)
  {
    v31 = a1[9];
    if (!v31)
    {
      return 0;
    }

    v32 = sub_261448DAC(v30, v31);

    if ((v32 & 1) == 0)
    {
      return 0;
    }
  }

  v33 = v1[10];
  if (v33)
  {
    v34 = a1[10];
    if (!v34)
    {
      return 0;
    }

    v35 = sub_261448DAC(v33, v34);

    if ((v35 & 1) == 0)
    {
      return 0;
    }
  }

  v36 = v1[11];
  if (v36)
  {
    v37 = a1[11];
    if (v37)
    {

      v38 = sub_261448DAC(v36, v37);

      return v38 & 1;
    }

    return 0;
  }

  return 1;
}

double sub_261458D24@<D0>(_OWORD *a1@<X8>, void *a2@<X0>)
{
  sub_2614594EC(a2, v8);
  if (!v2)
  {
    v5 = v8[3];
    a1[2] = v8[2];
    a1[3] = v5;
    v6 = v8[5];
    a1[4] = v8[4];
    a1[5] = v6;
    result = *v8;
    v7 = v8[1];
    *a1 = v8[0];
    a1[1] = v7;
  }

  return result;
}

uint64_t sub_261458D70(unsigned __int8 a1)
{
  if (a1 > 5u)
  {
    v6 = 0x546E6F6974617473;
    v7 = 0xD000000000000014;
    if (a1 != 10)
    {
      v7 = 0xD000000000000016;
    }

    if (a1 != 9)
    {
      v6 = v7;
    }

    v8 = 0x7364497465737361;
    v9 = 0x707954616964656DLL;
    if (a1 != 7)
    {
      v9 = 0x614C64726F636572;
    }

    if (a1 != 6)
    {
      v8 = v9;
    }

    if (a1 <= 8u)
    {
      return v8;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0x657079546D657469;
    v2 = 0x6574614379616C70;
    v3 = 0x726F466F69647561;
    if (a1 != 4)
    {
      v3 = 0x6E65526F69647561;
    }

    if (a1 != 3)
    {
      v2 = v3;
    }

    v4 = 0x5465636976726573;
    if (a1 != 1)
    {
      v4 = 0x6570795479616C70;
    }

    if (a1)
    {
      v1 = v4;
    }

    if (a1 <= 2u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_261458F2C(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[3];
  v9[2] = a1[2];
  v9[3] = v2;
  v3 = a1[5];
  v9[4] = a1[4];
  v9[5] = v3;
  v4 = a1[1];
  v9[0] = *a1;
  v9[1] = v4;
  v5 = a2[3];
  v10[2] = a2[2];
  v10[3] = v5;
  v6 = a2[5];
  v10[4] = a2[4];
  v10[5] = v6;
  v7 = a2[1];
  v10[0] = *a2;
  v10[1] = v7;
  return sub_26145924C(v9, v10) & 1;
}

uint64_t sub_261458F88(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = sub_261458D70(*a1);
  v5 = v4;
  if (v3 == sub_261458D70(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_261464DA0();
  }

  return v8 & 1;
}

uint64_t sub_261459010()
{
  v1 = *v0;
  sub_261464E10();
  sub_261458D70(v1);
  sub_2614649E0();

  return sub_261464E30();
}

uint64_t sub_261459074(uint64_t a1)
{
  sub_261458D70(*v1);
  sub_2614649E0();
}

uint64_t sub_2614590C8(uint64_t a1)
{
  v2 = *v1;
  sub_261464E10();
  sub_261458D70(v2);
  sub_2614649E0();

  return sub_261464E30();
}

unint64_t sub_261459128@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_261459E74(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_261459158@<X0>(uint64_t *a1@<X8>)
{
  result = sub_261458D70(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_2614591A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_261459E74(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2614591D4(uint64_t a1)
{
  v2 = sub_261459BC8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_261459210(uint64_t a1)
{
  v2 = sub_261459BC8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26145924C(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  v5 = *a2;
  if (v4)
  {
    if (!v5 || (sub_26145288C(v4, v5) & 1) == 0)
    {
      return 0;
    }
  }

  else if (v5)
  {
    return 0;
  }

  v6 = a1[1];
  v7 = a2[1];
  if (v6)
  {
    if (!v7 || (sub_26145288C(v6, v7) & 1) == 0)
    {
      return 0;
    }
  }

  else if (v7)
  {
    return 0;
  }

  v8 = a1[2];
  v9 = a2[2];
  if (v8)
  {
    if (!v9 || (sub_26145288C(v8, v9) & 1) == 0)
    {
      return 0;
    }
  }

  else if (v9)
  {
    return 0;
  }

  v10 = a1[3];
  v11 = a2[3];
  if (v10)
  {
    if (!v11 || (sub_26145288C(v10, v11) & 1) == 0)
    {
      return 0;
    }
  }

  else if (v11)
  {
    return 0;
  }

  v12 = a1[4];
  v13 = a2[4];
  if (v12)
  {
    if (!v13 || (sub_26145288C(v12, v13) & 1) == 0)
    {
      return 0;
    }
  }

  else if (v13)
  {
    return 0;
  }

  v14 = a1[5];
  v15 = a2[5];
  if (v14)
  {
    if (!v15 || (sub_26145288C(v14, v15) & 1) == 0)
    {
      return 0;
    }
  }

  else if (v15)
  {
    return 0;
  }

  v16 = a1[6];
  v17 = a2[6];
  if (v16)
  {
    if (!v17 || (sub_26145288C(v16, v17) & 1) == 0)
    {
      return 0;
    }
  }

  else if (v17)
  {
    return 0;
  }

  v18 = a1[7];
  v19 = a2[7];
  if (v18)
  {
    if (!v19 || (sub_26145288C(v18, v19) & 1) == 0)
    {
      return 0;
    }
  }

  else if (v19)
  {
    return 0;
  }

  v20 = a1[8];
  v21 = a2[8];
  if (v20)
  {
    if (!v21 || (sub_26145288C(v20, v21) & 1) == 0)
    {
      return 0;
    }
  }

  else if (v21)
  {
    return 0;
  }

  v22 = a1[9];
  v23 = a2[9];
  if (v22)
  {
    if (!v23 || (sub_26145288C(v22, v23) & 1) == 0)
    {
      return 0;
    }
  }

  else if (v23)
  {
    return 0;
  }

  v24 = a1[10];
  v25 = a2[10];
  if (v24)
  {
    if (!v25 || (sub_26145288C(v24, v25) & 1) == 0)
    {
      return 0;
    }
  }

  else if (v25)
  {
    return 0;
  }

  v26 = a1[11];
  v27 = a2[11];
  if (v26)
  {
    if (v27 && (sub_26145288C(v26, v27) & 1) != 0)
    {
      return 1;
    }
  }

  else if (!v27)
  {
    return 1;
  }

  return 0;
}

__n128 __swift_memcpy96_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = result;
  *(a1 + 48) = v4;
  return result;
}

uint64_t sub_261459414(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 96))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_261459470(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 96) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 96) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_2614594EC@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEAF908, &qword_261467678);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v27 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_261459BC8();
  sub_261464E40();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
    v53 = 0u;
    v54 = 0u;
    v51 = 0u;
    v52 = 0u;
    v49 = 0u;
    v50 = 0u;
    return sub_2614547A8(&v49);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEAF658, &qword_261466260);
    LOBYTE(v42) = 0;
    sub_26144C654();
    sub_261464D80();
    v35 = v49;
    LOBYTE(v42) = 1;
    sub_261464D80();
    v34 = v49;
    LOBYTE(v42) = 2;
    sub_261464D80();
    v33 = v49;
    LOBYTE(v42) = 3;
    sub_261464D80();
    v32 = v49;
    LOBYTE(v42) = 4;
    sub_261464D80();
    v31 = v49;
    LOBYTE(v42) = 5;
    sub_261464D80();
    v30 = v49;
    LOBYTE(v42) = 6;
    sub_261464D80();
    v29 = v49;
    LOBYTE(v42) = 7;
    sub_261464D80();
    v27 = v49;
    LOBYTE(v42) = 8;
    sub_261464D80();
    v41 = v49;
    v36 = v6;
    v37 = a2;
    LOBYTE(v49) = 9;
    v11 = sub_261464D70();
    v13 = v12;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEAF7B0, &qword_261466E18);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_261467150;
    *(v14 + 32) = v11;
    *(v14 + 40) = v13;
    v40 = v14;
    LOBYTE(v42) = 10;
    sub_261464D80();
    v39 = v49;
    v48 = 11;
    sub_261464D80();
    v28 = a1;
    v38 = v55;
    (*(v36 + 8))(v9, v5);
    v15 = v35;
    *&v42 = v35;
    v16 = v34;
    *(&v42 + 1) = v34;
    v17 = v33;
    *&v43 = v33;
    v18 = v32;
    *(&v43 + 1) = v32;
    v19 = v31;
    *&v44 = v31;
    v20 = v30;
    v21 = v29;
    *(&v44 + 1) = v30;
    *&v45 = v29;
    v22 = v27;
    *(&v45 + 1) = v27;
    *&v46 = v41;
    *(&v46 + 1) = v40;
    *&v47 = v39;
    *(&v47 + 1) = v38;
    sub_261454870(&v42, &v49);
    __swift_destroy_boxed_opaque_existential_1(v28);
    *&v49 = v15;
    *(&v49 + 1) = v16;
    *&v50 = v17;
    *(&v50 + 1) = v18;
    *&v51 = v19;
    *(&v51 + 1) = v20;
    *&v52 = v21;
    *(&v52 + 1) = v22;
    *&v53 = v41;
    *(&v53 + 1) = v40;
    *&v54 = v39;
    *(&v54 + 1) = v38;
    result = sub_2614547A8(&v49);
    v23 = v45;
    v24 = v37;
    v37[2] = v44;
    v24[3] = v23;
    v25 = v47;
    v24[4] = v46;
    v24[5] = v25;
    v26 = v43;
    *v24 = v42;
    v24[1] = v26;
  }

  return result;
}

unint64_t sub_261459BC8()
{
  result = qword_27FEAF910;
  if (!qword_27FEAF910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEAF910);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MusicContentCriteria.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF5)
  {
    goto LABEL_17;
  }

  if (a2 + 11 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 11) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 11;
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

      return (*a1 | (v4 << 8)) - 11;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 11;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xC;
  v8 = v6 - 12;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for MusicContentCriteria.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 11 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 11) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF5)
  {
    v4 = 0;
  }

  if (a2 > 0xF4)
  {
    v5 = ((a2 - 245) >> 8) + 1;
    *result = a2 + 11;
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
    *result = a2 + 11;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_261459D70()
{
  result = qword_27FEAF918;
  if (!qword_27FEAF918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEAF918);
  }

  return result;
}

unint64_t sub_261459DC8()
{
  result = qword_27FEAF920;
  if (!qword_27FEAF920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEAF920);
  }

  return result;
}

unint64_t sub_261459E20()
{
  result = qword_27FEAF928;
  if (!qword_27FEAF928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEAF928);
  }

  return result;
}

unint64_t sub_261459E74(uint64_t a1, uint64_t a2)
{
  v2 = sub_261464D60();

  if (v2 >= 0xC)
  {
    return 12;
  }

  else
  {
    return v2;
  }
}

double sub_261459EC0@<D0>(_OWORD *a1@<X8>, void *a2@<X0>)
{
  sub_26145A4B0(a2, v7);
  if (!v2)
  {
    v5 = v7[1];
    *a1 = v7[0];
    a1[1] = v5;
    result = *&v8;
    v6 = v9;
    a1[2] = v8;
    a1[3] = v6;
  }

  return result;
}

uint64_t sub_261459F04(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  v7[0] = *a1;
  v7[1] = v2;
  v3 = a1[3];
  v7[2] = a1[2];
  v7[3] = v3;
  v4 = a2[1];
  v8[0] = *a2;
  v8[1] = v4;
  v5 = a2[3];
  v8[2] = a2[2];
  v8[3] = v5;
  return sub_26145A2A0(v7, v8) & 1;
}

unint64_t sub_261459F78@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_26145AC34(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_261459FA8(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEC000000796C696DLL;
  v4 = 0x6146656369766564;
  v5 = 0xE90000000000006ELL;
  v6 = 0x6F6973726556736FLL;
  if (v2 != 6)
  {
    v6 = 29551;
    v5 = 0xE200000000000000;
  }

  v7 = 0xEC0000006E6F6973;
  v8 = 0x726556736A736C68;
  if (v2 != 4)
  {
    v8 = 0x657261776D726966;
    v7 = 0xEF6E6F6973726556;
  }

  if (*v1 <= 5u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xEB000000006C6564;
  v10 = 0x6F4D656369766564;
  if (v2 != 2)
  {
    v10 = 0x6973726556707061;
    v9 = 0xEA00000000006E6FLL;
  }

  if (*v1)
  {
    v4 = 0x614E656369766564;
    v3 = 0xEA0000000000656DLL;
  }

  if (*v1 > 1u)
  {
    v4 = v10;
    v3 = v9;
  }

  v13 = __OFSUB__(v2, 3);
  v11 = v2 == 3;
  v12 = v2 - 3 < 0;
  if (*v1 <= 3u)
  {
    v14 = v4;
  }

  else
  {
    v14 = v6;
  }

  if (!(v12 ^ v13 | v11))
  {
    v3 = v5;
  }

  *a1 = v14;
  a1[1] = v3;
}

uint64_t sub_26145A0D0()
{
  v1 = *v0;
  v2 = 0x6146656369766564;
  v3 = 0x6F6973726556736FLL;
  if (v1 != 6)
  {
    v3 = 29551;
  }

  v4 = 0x726556736A736C68;
  if (v1 != 4)
  {
    v4 = 0x657261776D726966;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0x6F4D656369766564;
  if (v1 != 2)
  {
    v5 = 0x6973726556707061;
  }

  if (*v0)
  {
    v2 = 0x614E656369766564;
  }

  if (*v0 > 1u)
  {
    v2 = v5;
  }

  if (*v0 <= 3u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_26145A1F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_26145AC34(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_26145A228(uint64_t a1)
{
  v2 = sub_26145A920();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26145A264(uint64_t a1)
{
  v2 = sub_26145A920();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26145A2A0(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  v5 = *a2;
  if (v4)
  {
    if (!v5 || (sub_26145288C(v4, v5) & 1) == 0)
    {
      return 0;
    }
  }

  else if (v5)
  {
    return 0;
  }

  v6 = a1[1];
  v7 = a2[1];
  if (v6)
  {
    if (!v7 || (sub_26145288C(v6, v7) & 1) == 0)
    {
      return 0;
    }
  }

  else if (v7)
  {
    return 0;
  }

  v8 = a1[2];
  v9 = a2[2];
  if (v8)
  {
    if (!v9 || (sub_26145288C(v8, v9) & 1) == 0)
    {
      return 0;
    }
  }

  else if (v9)
  {
    return 0;
  }

  v10 = a1[3];
  v11 = a2[3];
  if (v10)
  {
    if (!v11 || (sub_26145288C(v10, v11) & 1) == 0)
    {
      return 0;
    }
  }

  else if (v11)
  {
    return 0;
  }

  v12 = a1[4];
  v13 = a2[4];
  if (v12)
  {
    if (!v13 || (sub_26145288C(v12, v13) & 1) == 0)
    {
      return 0;
    }
  }

  else if (v13)
  {
    return 0;
  }

  v14 = a1[5];
  v15 = a2[5];
  if (v14)
  {
    if (!v15 || (sub_26145288C(v14, v15) & 1) == 0)
    {
      return 0;
    }
  }

  else if (v15)
  {
    return 0;
  }

  v16 = a1[6];
  v17 = a2[6];
  if (v16)
  {
    if (!v17 || (sub_26145288C(v16, v17) & 1) == 0)
    {
      return 0;
    }
  }

  else if (v17)
  {
    return 0;
  }

  v18 = a1[7];
  v19 = a2[7];
  if (v18)
  {
    if (v19 && (sub_26145288C(v18, v19) & 1) != 0)
    {
      return 1;
    }
  }

  else if (!v19)
  {
    return 1;
  }

  return 0;
}

__n128 __swift_memcpy64_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_26145A3E0(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 64))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_26145A43C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 64) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 64) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_26145A4B0@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEAF930, &unk_2614678A8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v22 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26145A920();
  sub_261464E40();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    return sub_26145A974(&v36);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEAF658, &qword_261466260);
    LOBYTE(v32) = 2;
    sub_26144C654();
    sub_261464D80();
    v30 = v36;
    LOBYTE(v32) = 0;
    sub_261464D80();
    v29 = v36;
    LOBYTE(v32) = 1;
    sub_261464D80();
    v28 = v36;
    LOBYTE(v32) = 3;
    sub_261464D80();
    v27 = v36;
    LOBYTE(v32) = 4;
    sub_261464D80();
    v26 = v36;
    v40 = a2;
    LOBYTE(v32) = 5;
    sub_261464D80();
    v25 = v36;
    v31 = v6;
    LOBYTE(v32) = 6;
    sub_261464D80();
    v24 = v36;
    LOBYTE(v32) = 7;
    sub_261464D80();
    v23 = a1;
    v11 = v36;
    (*(v31 + 8))(v9, v5);
    v13 = v28;
    v12 = v29;
    *&v32 = v29;
    *(&v32 + 1) = v28;
    v14 = v30;
    v15 = v27;
    *&v33 = v30;
    *(&v33 + 1) = v27;
    v16 = v26;
    v17 = v25;
    *&v34 = v26;
    *(&v34 + 1) = v25;
    v18 = v24;
    *&v35 = v24;
    *(&v35 + 1) = v11;
    sub_26145A9A4(&v32, &v36);
    __swift_destroy_boxed_opaque_existential_1(v23);
    *&v36 = v12;
    *(&v36 + 1) = v13;
    *&v37 = v14;
    *(&v37 + 1) = v15;
    *&v38 = v16;
    *(&v38 + 1) = v17;
    *&v39 = v18;
    *(&v39 + 1) = v11;
    result = sub_26145A974(&v36);
    v19 = v33;
    v20 = v40;
    *v40 = v32;
    v20[1] = v19;
    v21 = v35;
    v20[2] = v34;
    v20[3] = v21;
  }

  return result;
}

unint64_t sub_26145A920()
{
  result = qword_27FEAF938;
  if (!qword_27FEAF938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEAF938);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TVDeviceCriteria.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF9)
  {
    goto LABEL_17;
  }

  if (a2 + 7 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 7) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 7;
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

      return (*a1 | (v4 << 8)) - 7;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 7;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v8 = v6 - 8;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for TVDeviceCriteria.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF9)
  {
    v4 = 0;
  }

  if (a2 > 0xF8)
  {
    v5 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
    *result = a2 + 7;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_26145AB30()
{
  result = qword_27FEAF940;
  if (!qword_27FEAF940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEAF940);
  }

  return result;
}

unint64_t sub_26145AB88()
{
  result = qword_27FEAF948;
  if (!qword_27FEAF948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEAF948);
  }

  return result;
}

unint64_t sub_26145ABE0()
{
  result = qword_27FEAF950;
  if (!qword_27FEAF950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEAF950);
  }

  return result;
}

unint64_t sub_26145AC34(uint64_t a1, uint64_t a2)
{
  v2 = sub_261464D60();

  if (v2 >= 8)
  {
    return 8;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_26145AD2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v5 = sub_261464930();
  v7 = v6;

  v4(a2, v5, v7);
}

uint64_t sub_26145AE54(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = sub_2614648E0();

  v2(v3);
}

id sub_26145AF78(uint64_t a1)
{
  v1 = *(a1 + 32);

  v3 = v1(v2);

  return v3;
}

uint64_t sub_26145B104(uint64_t a1, uint64_t a2)
{
  v3[227] = v2;
  v3[226] = a2;
  v3[225] = a1;
  v4 = sub_2614646B0();
  v3[228] = v4;
  v3[229] = *(v4 - 8);
  v3[230] = swift_task_alloc();
  v3[231] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26145B1D8, 0, 0);
}

uint64_t sub_26145B1D8()
{
  *(v0 + 1776) = [*(v0 + 1808) code];
  sub_261464D90();
  sub_2614646A0();

  v1 = sub_26145CEFC(0, 1, 1, MEMORY[0x277D84F90]);
  v3 = *(v1 + 2);
  v2 = *(v1 + 3);
  v4 = v3 + 1;
  if (v3 >= v2 >> 1)
  {
LABEL_18:
    v1 = sub_26145CEFC((v2 > 1), v4, 1, v1);
  }

  v5 = *(v0 + 1848);
  v6 = *(v0 + 1832);
  v7 = *(v0 + 1824);
  v8 = *(v0 + 1800);
  *(v1 + 2) = v4;
  v9 = *(v6 + 32);
  v6 += 32;
  v28 = (*(v6 + 48) + 32) & ~*(v6 + 48);
  v29 = v9;
  v27 = *(v6 + 40);
  v9(&v1[v28 + v27 * v3], v5, v7);
  v10 = v8 + 64;
  v11 = -1;
  v12 = -1 << *(v8 + 32);
  if (-v12 < 64)
  {
    v11 = ~(-1 << -v12);
  }

  v13 = v11 & *(v8 + 64);
  v14 = (63 - v12) >> 6;
  v30 = v8;

  v3 = 0;
  *(v0 + 1856) = v1;
  if (v13)
  {
    while (1)
    {
      v32 = v1;
LABEL_10:
      *(v0 + 1784) = *(*(v30 + 56) + 8 * (__clz(__rbit64(v13)) | (v3 << 6)));

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEAF658, &qword_261466260);
      sub_26145D468();
      sub_261464910();
      sub_2614646A0();

      v1 = v32;
      v16 = *(v32 + 2);
      v15 = *(v32 + 3);
      v4 = v16 + 1;
      if (v16 >= v15 >> 1)
      {
        v1 = sub_26145CEFC((v15 > 1), v16 + 1, 1, v32);
      }

      v13 &= v13 - 1;
      v17 = *(v0 + 1840);
      v18 = *(v0 + 1824);
      *(v1 + 2) = v4;
      v29(&v1[v28 + v16 * v27], v17, v18);

      *(v0 + 1856) = v1;
      if (!v13)
      {
        goto LABEL_6;
      }
    }
  }

  while (1)
  {
LABEL_6:
    v2 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      __break(1u);
      goto LABEL_18;
    }

    if (v2 >= v14)
    {
      break;
    }

    v13 = *(v10 + 8 * v2);
    ++v3;
    if (v13)
    {
      v32 = v1;
      v3 = v2;
      goto LABEL_10;
    }
  }

  v19 = *(v0 + 1816);

  v20 = v19[16];
  v21 = v19[17];
  __swift_project_boxed_opaque_existential_1(v19 + 13, v20);
  v22 = *(v21 + 48);
  *(v0 + 1864) = swift_getAssociatedTypeWitness();
  v23 = sub_261464C00();
  *(v0 + 1872) = v23;
  *(v0 + 1880) = *(v23 - 8);
  v24 = swift_task_alloc();
  *(v0 + 1888) = v24;
  v31 = (v22 + *v22);
  v25 = swift_task_alloc();
  *(v0 + 1896) = v25;
  *v25 = v0;
  v25[1] = sub_26145B648;

  return (v31)(v24, 0, v1, v20, v21);
}

uint64_t sub_26145B648()
{

  return MEMORY[0x2822009F8](sub_26145B744, 0, 0);
}

uint64_t sub_26145B744()
{
  v1 = *(v0 + 1888);
  v2 = *(v0 + 1864);
  v3 = *(v2 - 8);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    (*(*(v0 + 1880) + 8))(v1, *(v0 + 1872));

    *(v0 + 1696) = 0u;
    *(v0 + 1712) = 0u;
  }

  else
  {
    *(v0 + 1720) = v2;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v0 + 1696));
    (*(v3 + 32))(boxed_opaque_existential_0, v1, v2);
  }

  sub_26144F420(v0 + 1696, v0 + 1728, &qword_27FEAF958, &qword_261467AA0);
  if (!*(v0 + 1752))
  {
    sub_26144D9E4(v0 + 1728, &qword_27FEAF958, &qword_261467AA0);
    goto LABEL_17;
  }

  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
    goto LABEL_17;
  }

  v6 = *(v0 + 1792);
  v7 = *(v6 + 16);
  if (!v7)
  {
LABEL_16:

LABEL_17:
    v40 = *(v0 + 1816);
    v41 = *(v0 + 1808);
    v42 = *(v0 + 1800);
    v43 = *(v40 + 72);
    sub_26145D4CC((v0 + 400));
    v44 = *(v0 + 544);
    *(v0 + 336) = *(v0 + 528);
    *(v0 + 352) = v44;
    v45 = *(v0 + 576);
    *(v0 + 368) = *(v0 + 560);
    *(v0 + 384) = v45;
    v46 = *(v0 + 480);
    *(v0 + 272) = *(v0 + 464);
    *(v0 + 288) = v46;
    v47 = *(v0 + 512);
    *(v0 + 304) = *(v0 + 496);
    *(v0 + 320) = v47;
    v48 = *(v0 + 416);
    *(v0 + 208) = *(v0 + 400);
    *(v0 + 224) = v48;
    v49 = *(v0 + 448);
    *(v0 + 240) = *(v0 + 432);
    *(v0 + 256) = v49;
    sub_26145D654(v42, (v0 + 208), [v41 code], 1);
    v43();

    v51 = (*(v40 + 88))(v50);
LABEL_18:
    sub_26144D9E4(v0 + 1696, &qword_27FEAF958, &qword_261467AA0);

    v52 = *(v0 + 8);

    return v52(v51);
  }

  v8 = 0;
  v9 = (v0 + 1552);
  v10 = (v6 + 80);
  while (v8 < *(v6 + 16))
  {
    v11 = *(v10 - 3);
    v12 = *(v10 - 2);
    v13 = *v10;
    *(v0 + 624) = *(v10 - 1);
    *(v0 + 640) = v13;
    *(v0 + 592) = v11;
    *(v0 + 608) = v12;
    v14 = v10[1];
    v15 = v10[2];
    v16 = v10[4];
    *(v0 + 688) = v10[3];
    *(v0 + 704) = v16;
    *(v0 + 656) = v14;
    *(v0 + 672) = v15;
    v17 = v10[5];
    v18 = v10[6];
    v19 = v10[8];
    *(v0 + 752) = v10[7];
    *(v0 + 768) = v19;
    *(v0 + 720) = v17;
    *(v0 + 736) = v18;
    *v9 = *v10;
    v20 = v10[1];
    v21 = v10[2];
    v22 = v10[4];
    *(v0 + 1600) = v10[3];
    *(v0 + 1616) = v22;
    *(v0 + 1568) = v20;
    *(v0 + 1584) = v21;
    v23 = v10[5];
    v24 = v10[6];
    v25 = v10[8];
    *(v0 + 1664) = v10[7];
    *(v0 + 1680) = v25;
    *(v0 + 1632) = v23;
    *(v0 + 1648) = v24;
    result = sub_26144FF1C(v0 + 1552);
    if (result != 1)
    {
      v26 = *v9;
      if (v26 != 2)
      {
        v27 = *(v0 + 736);
        *(v0 + 912) = *(v0 + 720);
        *(v0 + 928) = v27;
        v28 = *(v0 + 768);
        *(v0 + 944) = *(v0 + 752);
        *(v0 + 960) = v28;
        v29 = *(v0 + 672);
        *(v0 + 848) = *(v0 + 656);
        *(v0 + 864) = v29;
        v30 = *(v0 + 704);
        *(v0 + 880) = *(v0 + 688);
        *(v0 + 896) = v30;
        v31 = *(v0 + 608);
        *(v0 + 784) = *(v0 + 592);
        *(v0 + 800) = v31;
        v32 = *(v0 + 640);
        *(v0 + 816) = *(v0 + 624);
        *(v0 + 832) = v32;
        nullsub_1();
        v33 = *(v0 + 928);
        *(v0 + 144) = *(v0 + 912);
        *(v0 + 160) = v33;
        v34 = *(v0 + 960);
        *(v0 + 176) = *(v0 + 944);
        *(v0 + 192) = v34;
        v35 = *(v0 + 864);
        *(v0 + 80) = *(v0 + 848);
        *(v0 + 96) = v35;
        v36 = *(v0 + 896);
        *(v0 + 112) = *(v0 + 880);
        *(v0 + 128) = v36;
        v37 = *(v0 + 800);
        *(v0 + 16) = *(v0 + 784);
        *(v0 + 32) = v37;
        v38 = *(v0 + 832);
        *(v0 + 48) = *(v0 + 816);
        *(v0 + 64) = v38;
        if ((v26 & 1) == 0)
        {
          sub_26145DCB4(v0 + 592, v0 + 1360);

LABEL_22:
          v53 = *(v0 + 1816);
          v54 = *(v0 + 1808);
          v55 = *(v0 + 1800);

          v56 = *(v53 + 72);
          sub_26145DCB4(v0 + 592, v0 + 1168);
          v57 = sub_26145D654(v55, (v0 + 16), [v54 code], 0);
          sub_26145DD10(v0 + 592);
          v56(v57);

          v58 = *(v0 + 592);
          v59 = *(v0 + 600);
          v60 = *(v0 + 608);
          v61 = *(v0 + 616);
          v62 = type metadata accessor for QOSAlertMessage();
          v63 = objc_allocWithZone(v62);
          v64 = &v63[OBJC_IVAR___QOSAlertMessageInternal_title];
          *v64 = v58;
          *(v64 + 1) = v59;
          v65 = &v63[OBJC_IVAR___QOSAlertMessageInternal_body];
          *v65 = v60;
          *(v65 + 1) = v61;
          *(v0 + 1760) = v63;
          *(v0 + 1768) = v62;

          v51 = objc_msgSendSuper2((v0 + 1760), sel_init);
          sub_26145DD10(v0 + 592);
          goto LABEL_18;
        }

        v39 = sub_261464DA0();
        sub_26145DCB4(v0 + 592, v0 + 976);

        if (v39)
        {
          goto LABEL_22;
        }

        result = sub_26145DD10(v0 + 592);
      }
    }

    ++v8;
    v10 += 12;
    if (v7 == v8)
    {
      goto LABEL_16;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_26145BDDC(uint64_t a1, void *a2, void *aBlock, uint64_t a4)
{
  v4[2] = a2;
  v4[3] = a4;
  v4[4] = _Block_copy(aBlock);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEAF658, &qword_261466260);
  v6 = sub_2614648E0();
  v4[5] = v6;
  v7 = a2;

  v8 = swift_task_alloc();
  v4[6] = v8;
  *v8 = v4;
  v8[1] = sub_26145BEE0;

  return sub_26145B104(v6, v7);
}

uint64_t sub_26145BEE0(void *a1)
{
  v3 = *(*v1 + 32);
  v4 = *(*v1 + 16);
  v7 = *v1;

  (v3)[2](v3, a1);
  _Block_release(v3);

  v5 = *(v7 + 8);

  return v5();
}

uint64_t sub_26145C06C(uint64_t a1, void *a2)
{
  v3 = v2;
  v6 = *(v3 + 72);
  sub_26145D4CC(v15);
  v14[8] = v15[8];
  v14[9] = v15[9];
  v14[10] = v15[10];
  v14[11] = v15[11];
  v14[4] = v15[4];
  v14[5] = v15[5];
  v14[6] = v15[6];
  v14[7] = v15[7];
  v14[0] = v15[0];
  v14[1] = v15[1];
  v14[2] = v15[2];
  v14[3] = v15[3];
  v7 = [a2 code];
  if (*(sub_26145C460(a1) + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEAF7C0, &qword_261466E28);
    v8 = sub_261464D50();
  }

  else
  {
    v8 = MEMORY[0x277D84F98];
  }

  v13 = v8;

  sub_26145D0D4(v9, 1, &v13);

  v10 = sub_26145D654(v13, v14, v7, 1);

  v6(v10);

  return (*(v3 + 88))(v11);
}

uint64_t sub_26145C1D8(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_26145C1FC, 0, 0);
}

uint64_t sub_26145C1FC()
{
  v8 = v0;
  if (*(sub_26145C460(v0[2]) + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEAF7C0, &qword_261466E28);
    v1 = sub_261464D50();
  }

  else
  {
    v1 = MEMORY[0x277D84F98];
  }

  v7 = v1;

  sub_26145D0D4(v2, 1, &v7);

  v3 = v7;
  v0[5] = v7;
  v4 = swift_task_alloc();
  v0[6] = v4;
  *v4 = v0;
  v4[1] = sub_26145C348;
  v5 = v0[3];

  return sub_26145B104(v3, v5);
}

uint64_t sub_26145C348(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t sub_26145C460(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (!v1)
  {
    return v2;
  }

  v3 = a1;
  v31 = MEMORY[0x277D84F90];
  sub_26145D4EC(0, v1, 0);
  v2 = v31;
  v4 = v3 + 64;
  result = sub_261464CC0();
  v6 = result;
  v7 = 0;
  v30 = *(v3 + 36);
  v25 = v3 + 72;
  v26 = v1;
  v27 = v3 + 64;
  v28 = v3;
  while ((v6 & 0x8000000000000000) == 0 && v6 < 1 << *(v3 + 32))
  {
    v10 = v6 >> 6;
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) == 0)
    {
      goto LABEL_45;
    }

    if (v30 != *(v3 + 36))
    {
      goto LABEL_46;
    }

    v29 = v7;
    v11 = *(*(v3 + 48) + v6);
    v12 = *(*(v3 + 56) + 8 * v6);
    if (*(*(v3 + 48) + v6) < 0)
    {
      v14 = 0x657079546D657469;
      v13 = 0xE900000000000073;
      switch(v11 & 0x7F)
      {
        case 1:
          v13 = 0xE800000000000000;
          v14 = 0x7364497465737361;
          break;
        case 2:
          v14 = 0x5465636976726573;
          goto LABEL_30;
        case 3:
          v13 = 0xEA00000000007365;
          v14 = 0x707954616964656DLL;
          break;
        case 4:
          v14 = 0x6570795479616C70;
          break;
        case 5:
          v14 = 0x6574614379616C70;
          v13 = 0xEE00736569726F67;
          break;
        case 6:
          v14 = 0x726F466F69647561;
          v13 = 0xEC0000007374616DLL;
          break;
        case 7:
          v14 = 0x6E65526F69647561;
          v13 = 0xEF736E6F69746964;
          break;
        case 8:
          v14 = 0x614C64726F636572;
          v13 = 0xEC000000736C6562;
          break;
        case 9:
          v14 = 0x546E6F6974617473;
LABEL_30:
          v13 = 0xEC00000073657079;
          break;
        case 0xA:
          v14 = 0xD000000000000014;
          v13 = 0x80000002614686E0;
          break;
        case 0xB:
          v14 = 0xD000000000000016;
          v13 = 0x8000000261468700;
          break;
        case 0xC:
          goto LABEL_13;
        default:
          break;
      }
    }

    else if (*(*(v3 + 48) + v6) <= 1u)
    {
      if (*(*(v3 + 48) + v6))
      {
        v13 = 0xE700000000000000;
        v14 = 0x6449646E617262;
      }

      else
      {
        v14 = 0x54746E65746E6F63;
        v13 = 0xEB00000000657079;
      }
    }

    else if (v11 == 2)
    {
      v14 = 0x656449616964656DLL;
      v13 = 0xEF7265696669746ELL;
    }

    else if (v11 == 3)
    {
LABEL_13:
      v13 = 0xE600000000000000;
      v14 = 0x656C61636F6CLL;
    }

    else
    {
      v14 = 0x6B63616279616C70;
      v13 = 0xEC00000065646F4DLL;
    }

    v16 = *(v31 + 16);
    v15 = *(v31 + 24);

    if (v16 >= v15 >> 1)
    {
      result = sub_26145D4EC((v15 > 1), v16 + 1, 1);
    }

    *(v31 + 16) = v16 + 1;
    v17 = (v31 + 24 * v16);
    v17[4] = v14;
    v17[5] = v13;
    v17[6] = v12;
    v3 = v28;
    v8 = 1 << *(v28 + 32);
    if (v6 >= v8)
    {
      goto LABEL_47;
    }

    v4 = v27;
    v18 = *(v27 + 8 * v10);
    if ((v18 & (1 << v6)) == 0)
    {
      goto LABEL_48;
    }

    if (v30 != *(v28 + 36))
    {
      goto LABEL_49;
    }

    v19 = v18 & (-2 << (v6 & 0x3F));
    if (v19)
    {
      v8 = __clz(__rbit64(v19)) | v6 & 0x7FFFFFFFFFFFFFC0;
      v9 = v26;
    }

    else
    {
      v20 = v10 << 6;
      v21 = v10 + 1;
      v9 = v26;
      v22 = (v25 + 8 * v10);
      while (v21 < (v8 + 63) >> 6)
      {
        v24 = *v22++;
        v23 = v24;
        v20 += 64;
        ++v21;
        if (v24)
        {
          result = sub_26145DDE0(v6, v30, 0);
          v8 = __clz(__rbit64(v23)) + v20;
          goto LABEL_4;
        }
      }

      result = sub_26145DDE0(v6, v30, 0);
    }

LABEL_4:
    v7 = v29 + 1;
    v6 = v8;
    if (v29 + 1 == v9)
    {
      return v2;
    }
  }

  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  __break(1u);
LABEL_49:
  __break(1u);
  return result;
}

uint64_t sub_26145C8E8()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  __swift_destroy_boxed_opaque_existential_1((v0 + 104));

  return swift_deallocClassInstance();
}

uint64_t sub_26145C988(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_261456E58;

  return sub_26145C1D8(a1, a2);
}

uint64_t sub_26145CA30(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = (a3 + *a3);
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v4[1] = sub_261444408;

  return v6();
}

uint64_t sub_26145CB18(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v7 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v5[1] = sub_26144440C;

  return v7();
}

uint64_t sub_26145CC00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEAF830, &qword_261467BD0);
  MEMORY[0x28223BE20](v9 - 8, v10);
  v12 = v24 - v11;
  sub_26144F420(a3, v24 - v11, &qword_27FEAF830, &qword_261467BD0);
  v13 = sub_261464B40();
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_26144D9E4(v12, &qword_27FEAF830, &qword_261467BD0);
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  sub_261464B30();
  (*(v14 + 8))(v12, v13);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  swift_getObjectType();
  swift_unknownObjectRetain();
  v15 = sub_261464B20();
  v17 = v16;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v18 = sub_2614649A0() + 32;
    v19 = swift_allocObject();
    *(v19 + 16) = a4;
    *(v19 + 24) = a5;

    if (v17 | v15)
    {
      v25[0] = 0;
      v25[1] = 0;
      v20 = v25;
      v25[2] = v15;
      v25[3] = v17;
    }

    else
    {
      v20 = 0;
    }

    v24[1] = 7;
    v24[2] = v20;
    v24[3] = v18;
    v22 = swift_task_create();

    sub_26144D9E4(a3, &qword_27FEAF830, &qword_261467BD0);

    return v22;
  }

LABEL_8:
  sub_26144D9E4(a3, &qword_27FEAF830, &qword_261467BD0);
  v21 = swift_allocObject();
  *(v21 + 16) = a4;
  *(v21 + 24) = a5;
  if (v17 | v15)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v15;
    v25[7] = v17;
  }

  return swift_task_create();
}

void *sub_26145CEFC(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEAF960, &qword_261467AA8);
  v10 = *(sub_2614646B0() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_2614646B0() - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

void sub_26145D0D4(void *a1, char a2, void *a3)
{
  v37 = a1[2];
  if (!v37)
  {
    goto LABEL_21;
  }

  LOBYTE(v5) = a2;
  v7 = a1[4];
  v6 = a1[5];
  v8 = a1[6];
  v9 = *a3;

  v10 = sub_261452DC4(v7, v6);
  v12 = v9[2];
  v13 = (v11 & 1) == 0;
  v14 = __OFADD__(v12, v13);
  v15 = v12 + v13;
  if (v14)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v16 = v11;
  if (v9[3] < v15)
  {
    sub_261453240(v15, v5 & 1);
    v10 = sub_261452DC4(v7, v6);
    if ((v16 & 1) == (v17 & 1))
    {
      goto LABEL_7;
    }

LABEL_5:
    v10 = sub_261464DC0();
    __break(1u);
  }

  if (v5)
  {
LABEL_7:
    if (v16)
    {
      goto LABEL_8;
    }

    goto LABEL_11;
  }

  v20 = v10;
  sub_261453998();
  v10 = v20;
  if (v16)
  {
LABEL_8:
    v18 = swift_allocError();
    swift_willThrow();
    v19 = v18;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEAF848, &qword_261467AB0);
    if ((swift_dynamicCast() & 1) == 0)
    {

      return;
    }

    goto LABEL_26;
  }

LABEL_11:
  v21 = *a3;
  *(*a3 + 8 * (v10 >> 6) + 64) |= 1 << v10;
  v22 = (v21[6] + 16 * v10);
  *v22 = v7;
  v22[1] = v6;
  *(v21[7] + 8 * v10) = v8;
  v23 = v21[2];
  v14 = __OFADD__(v23, 1);
  v24 = v23 + 1;
  if (v14)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    sub_261464CF0();
    MEMORY[0x266702930](0xD00000000000001BLL, 0x8000000261469260);
    sub_261464D10();
    MEMORY[0x266702930](39, 0xE100000000000000);
    sub_261464D20();
    __break(1u);
    return;
  }

  v21[2] = v24;
  if (v37 != 1)
  {
    v5 = a1 + 9;
    v25 = 1;
    while (v25 < a1[2])
    {
      v7 = *(v5 - 2);
      v6 = *(v5 - 1);
      v8 = *v5;
      v26 = *a3;

      v27 = sub_261452DC4(v7, v6);
      v29 = v26[2];
      v30 = (v28 & 1) == 0;
      v14 = __OFADD__(v29, v30);
      v31 = v29 + v30;
      if (v14)
      {
        goto LABEL_23;
      }

      v16 = v28;
      if (v26[3] < v31)
      {
        sub_261453240(v31, 1);
        v27 = sub_261452DC4(v7, v6);
        if ((v16 & 1) != (v32 & 1))
        {
          goto LABEL_5;
        }
      }

      if (v16)
      {
        goto LABEL_8;
      }

      v33 = *a3;
      *(*a3 + 8 * (v27 >> 6) + 64) |= 1 << v27;
      v34 = (v33[6] + 16 * v27);
      *v34 = v7;
      v34[1] = v6;
      *(v33[7] + 8 * v27) = v8;
      v35 = v33[2];
      v14 = __OFADD__(v35, 1);
      v36 = v35 + 1;
      if (v14)
      {
        goto LABEL_24;
      }

      ++v25;
      v33[2] = v36;
      v5 += 3;
      if (v37 == v25)
      {
        goto LABEL_21;
      }
    }

    goto LABEL_25;
  }

LABEL_21:
}

unint64_t sub_26145D468()
{
  result = qword_2811AE748;
  if (!qword_2811AE748)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FEAF658, &qword_261466260);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811AE748);
  }

  return result;
}

double sub_26145D4CC(_OWORD *a1)
{
  result = 0.0;
  a1[10] = 0u;
  a1[11] = 0u;
  a1[8] = 0u;
  a1[9] = 0u;
  a1[6] = 0u;
  a1[7] = 0u;
  a1[4] = 0u;
  a1[5] = 0u;
  a1[2] = 0u;
  a1[3] = 0u;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

void *sub_26145D4EC(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_26145D50C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_26145D50C(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEAF968, &qword_261467AB8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[3 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEAF970, &unk_261467AC0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_26145D654(uint64_t a1, _OWORD *a2, uint64_t a3, char a4)
{
  v7 = MEMORY[0x277D84F98];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v82[0] = v7;
  sub_261453698(0xD000000000000014, 0x80000002614691F0, 0x6449676F6C616964, 0xE800000000000000, isUniquelyReferenced_nonNull_native);
  v9 = swift_isUniquelyReferenced_nonNull_native();
  sub_261453698(0xD000000000000014, 0x80000002614691F0, 0x7954676F6C616964, 0xEA00000000006570, v9);
  v81 = v7;
  if (a4)
  {
    v10 = 0x746C7561666564;
  }

  else
  {
    v10 = 0x6465636E61686E65;
  }

  if (a4)
  {
    v11 = 0xE700000000000000;
  }

  else
  {
    v11 = 0xE800000000000000;
  }

  sub_2614521E0(v10, v11, 0xD000000000000018, 0x8000000261469210);
  v12 = sub_261464D90();
  v14 = v13;
  v15 = swift_isUniquelyReferenced_nonNull_native();
  *&v82[0] = v81;
  sub_261453698(v12, v14, 0x646F43726F727265, 0xE900000000000065, v15);
  v16 = v81;
  if (*(a1 + 16))
  {
    v17 = sub_261452DC4(0x656C61636F6CLL, 0xE600000000000000);
    if (v18)
    {
      v19 = *(*(a1 + 56) + 8 * v17);
      if (v19[2])
      {
        v20 = v19[4];
        v21 = v19[5];

        v22 = swift_isUniquelyReferenced_nonNull_native();
        *&v82[0] = v81;
        sub_261453698(v20, v21, 0x656C61636F6CLL, 0xE600000000000000, v22);
      }
    }

    if (*(a1 + 16))
    {
      v23 = sub_261452DC4(0x656449616964656DLL, 0xEF7265696669746ELL);
      if (v24)
      {
        v25 = *(*(a1 + 56) + 8 * v23);
        if (v25[2])
        {
          v26 = v25[4];
          v27 = v25[5];

          v28 = swift_isUniquelyReferenced_nonNull_native();
          *&v82[0] = v81;
          sub_261453698(v26, v27, 0x656449616964656DLL, 0xEF7265696669746ELL, v28);
        }
      }

      if (*(a1 + 16))
      {
        v29 = sub_261452DC4(0x6B63616279616C70, 0xEC00000065646F4DLL);
        if (v30)
        {
          v31 = *(*(a1 + 56) + 8 * v29);
          if (v31[2])
          {
            v32 = v31[4];
            v33 = v31[5];

            v34 = swift_isUniquelyReferenced_nonNull_native();
            *&v82[0] = v81;
            sub_261453698(v32, v33, 0x6B63616279616C70, 0xEC00000065646F4DLL, v34);
          }
        }

        if (*(a1 + 16))
        {
          v35 = sub_261452DC4(0x54746E65746E6F63, 0xEB00000000657079);
          if (v36)
          {
            v37 = *(*(a1 + 56) + 8 * v35);
            if (v37[2])
            {
              v38 = v37[4];
              v39 = v37[5];

              v40 = swift_isUniquelyReferenced_nonNull_native();
              *&v82[0] = v81;
              sub_261453698(v38, v39, 0x54746E65746E6F63, 0xEB00000000657079, v40);
            }
          }

          if (*(a1 + 16))
          {
            v41 = sub_261452DC4(0x6449646E617262, 0xE700000000000000);
            if (v42)
            {
              v43 = *(*(a1 + 56) + 8 * v41);
              if (v43[2])
              {
                v44 = v43[4];
                v45 = v43[5];

                v46 = swift_isUniquelyReferenced_nonNull_native();
                *&v82[0] = v81;
                sub_261453698(v44, v45, 0x6449646E617262, 0xE700000000000000, v46);
              }
            }
          }
        }
      }
    }
  }

  v47 = a2[9];
  *v87 = a2[8];
  *&v87[16] = v47;
  v48 = a2[11];
  *&v87[32] = a2[10];
  *&v87[48] = v48;
  v49 = a2[5];
  *v84 = a2[4];
  *&v84[16] = v49;
  v50 = a2[7];
  v85 = a2[6];
  v86 = v50;
  v51 = a2[1];
  v82[0] = *a2;
  v82[1] = v51;
  v52 = a2[3];
  v82[2] = a2[2];
  v83 = v52;
  if (sub_26145DDC8(v82) != 1)
  {
    v74 = v85;
    v79 = *&v87[40];
    v53 = *(&v86 + 1);
    v54 = *v87;
    v80 = *&v87[56];
    v55 = *&v84[24];
    v71 = *v84;
    v77 = *&v87[8];
    v78 = *&v87[24];
    v70 = v83;
    v69 = *&v84[8];
    v72 = *&v84[8];
    v73 = *&v84[24];
    v75 = v86;
    v76 = *v87;
    if (sub_26144FF1C(&v70) != 1)
    {
      if (v72 >= 2 && *(v72 + 16))
      {
        v56 = *(v72 + 32);
        v57 = *(v72 + 40);

        v58 = swift_isUniquelyReferenced_nonNull_native();
        sub_261453698(v56, v57, 0x6146656369766564, 0xEC000000796C696DLL, v58);
        v81 = v16;
      }

      if (v69 != 1 && v55 && v55[2])
      {
        v59 = v55[4];
        v60 = v55[5];

        v61 = swift_isUniquelyReferenced_nonNull_native();
        sub_261453698(v59, v60, 0x6F4D656369766564, 0xEB000000006C6564, v61);
        v81 = v16;
      }

      if (v69 == 1 || !v54)
      {
        if (v69 == 1)
        {
          return v16;
        }
      }

      else if (v54[2])
      {
        v62 = v54[4];
        v63 = v54[5];

        v64 = swift_isUniquelyReferenced_nonNull_native();
        sub_261453698(v62, v63, 29551, 0xE200000000000000, v64);
        v81 = v16;
      }

      if (v53 && v53[2])
      {
        v65 = v53[4];
        v66 = v53[5];

        v67 = swift_isUniquelyReferenced_nonNull_native();
        sub_261453698(v65, v66, 0x6F6973726556736FLL, 0xE90000000000006ELL, v67);
      }
    }
  }

  return v16;
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

uint64_t sub_26145DDC8(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_26145DDE0(uint64_t result, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return v3;
}

uint64_t sub_26145DDEC()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_26144440C;

  return sub_26145BDDC(v2, v3, v5, v4);
}

uint64_t sub_26145DEAC()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_261444408;

  return sub_26145CA30(v2, v3, v4);
}

uint64_t objectdestroy_9Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_26145DFAC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_261444408;

  return sub_26145CB18(a1, v4, v5, v6);
}

uint64_t sub_26145E078(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_261444408;

  return sub_261441690(a1, v4);
}

uint64_t sub_26145E130(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_26144440C;

  return sub_261441690(a1, v4);
}

uint64_t sub_26145E1F8(uint64_t a1)
{
  *(v2 + 48) = a1;
  *(v2 + 56) = v1;
  return MEMORY[0x2822009F8](sub_26145E218, 0, 0);
}

uint64_t sub_26145E218()
{
  v1 = swift_task_alloc();
  *(v0 + 64) = v1;
  *v1 = v0;
  v1[1] = sub_26145E2BC;
  v2 = *(v0 + 48);

  return MEMORY[0x28211ECF8](v2, 0);
}

uint64_t sub_26145E2BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v4;
  v5[9] = a1;
  v5[10] = a2;
  v5[11] = a3;
  v5[12] = v3;

  if (v3)
  {
    v6 = sub_261460700;
  }

  else
  {
    v6 = sub_26145E3D4;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_26145E3D4()
{
  objc_opt_self();
  v1 = swift_dynamicCastObjCClass();
  if (!v1 || [v1 statusCode] != 200)
  {
    v8 = v0[10];
    v9 = v0[11];
    v10 = v0[9];
    v11 = *(v0[7] + 24);
    sub_261464CF0();

    v12 = [v9 description];
    v13 = sub_261464930();
    v15 = v14;

    MEMORY[0x266702930](v13, v15);

    v11(1, 0xD000000000000018, 0x80000002614693B0);

    sub_261457D50(v10, v8);

    goto LABEL_6;
  }

  v2 = v0[12];
  sub_261464650();
  swift_allocObject();
  sub_261464640();
  sub_26145FF9C();
  sub_261464630();
  v3 = v2;
  v4 = v0[10];
  v5 = v0[11];
  v6 = v0[9];
  if (v3)
  {
    v7 = v0[7];

    (*(v7 + 24))(1, 0x676E69646F636544, 0xEE00726F72724520);

    sub_261457D50(v6, v4);
LABEL_6:
    v16 = 0;
    goto LABEL_7;
  }

  sub_261457D50(v6, v4);

  v16 = v0[5];
LABEL_7:
  v17 = v0[1];

  return v17(v16);
}

uint64_t sub_26145E610(uint64_t a1)
{
  *(v2 + 48) = a1;
  *(v2 + 56) = v1;
  return MEMORY[0x2822009F8](sub_26145E630, 0, 0);
}

uint64_t sub_26145E630()
{
  v1 = swift_task_alloc();
  *(v0 + 64) = v1;
  *v1 = v0;
  v1[1] = sub_26145E6D4;
  v2 = *(v0 + 48);

  return MEMORY[0x28211ECF8](v2, 0);
}

uint64_t sub_26145E6D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v4;
  v5[9] = a1;
  v5[10] = a2;
  v5[11] = a3;
  v5[12] = v3;

  if (v3)
  {
    v6 = sub_26145EA28;
  }

  else
  {
    v6 = sub_26145E7EC;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_26145E7EC()
{
  objc_opt_self();
  v1 = swift_dynamicCastObjCClass();
  if (!v1 || [v1 statusCode] != 200)
  {
    v8 = v0[10];
    v9 = v0[11];
    v10 = v0[9];
    v11 = *(v0[7] + 24);
    sub_261464CF0();

    v12 = [v9 description];
    v13 = sub_261464930();
    v15 = v14;

    MEMORY[0x266702930](v13, v15);

    v11(1, 0xD000000000000018, 0x80000002614693B0);

    sub_261457D50(v10, v8);

    goto LABEL_6;
  }

  v2 = v0[12];
  sub_261464650();
  swift_allocObject();
  sub_261464640();
  sub_26145FF48();
  sub_261464630();
  v3 = v2;
  v4 = v0[10];
  v5 = v0[11];
  v6 = v0[9];
  if (v3)
  {
    v7 = v0[7];

    (*(v7 + 24))(1, 0x676E69646F636544, 0xEE00726F72724520);

    sub_261457D50(v6, v4);
LABEL_6:
    v16 = 0;
    goto LABEL_7;
  }

  sub_261457D50(v6, v4);

  v16 = v0[5];
LABEL_7:
  v17 = v0[1];

  return v17(v16);
}

uint64_t sub_26145EA28()
{
  v1 = v0[12];
  v2 = *(v0[7] + 24);
  sub_261464CF0();
  v0[2] = 0;
  v0[3] = 0xE000000000000000;
  MEMORY[0x266702930](0x2074736575716552, 0xEF2064656C696166);
  v0[4] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEAF848, &qword_261467AB0);
  sub_261464D10();
  v2(1, v0[2], v0[3]);

  v3 = v0[1];

  return v3(0);
}

uint64_t sub_26145EB50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v4;
  v5[12] = a1;
  v5[13] = a2;
  v5[14] = a3;
  v5[15] = v3;

  if (v3)
  {
    v6 = sub_26145EEB4;
  }

  else
  {
    v6 = sub_26145EC68;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_26145EC68()
{
  objc_opt_self();
  v1 = swift_dynamicCastObjCClass();
  if (!v1 || [v1 statusCode] != 200)
  {
    v8 = v0[13];
    v9 = v0[14];
    v10 = v0[12];
    v11 = *(v0[10] + 24);
    sub_261464CF0();

    v12 = [v9 description];
    v13 = sub_261464930();
    v15 = v14;

    MEMORY[0x266702930](v13, v15);

    v11(1, 0xD000000000000018, 0x80000002614693B0);

    sub_261457D50(v10, v8);

    goto LABEL_6;
  }

  v2 = v0[15];
  sub_261464650();
  swift_allocObject();
  sub_261464640();
  sub_2614606AC();
  sub_261464630();
  v3 = v2;
  v4 = v0[13];
  v5 = v0[14];
  v6 = v0[12];
  if (v3)
  {
    v7 = v0[10];

    (*(v7 + 24))(1, 0x676E69646F636544, 0xEE00726F72724520);

    sub_261457D50(v6, v4);
LABEL_6:
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v19 = 0;
    goto LABEL_7;
  }

  sub_261457D50(v6, v4);

  v16 = v0[2];
  v17 = v0[3];
  v18 = v0[4];
  v19 = v0[5];
LABEL_7:
  v20 = v0[1];

  return v20(v16, v17, v18, v19);
}

uint64_t sub_26145EEB4()
{
  v1 = v0[15];
  v2 = *(v0[10] + 24);
  sub_261464CF0();
  v0[6] = 0;
  v0[7] = 0xE000000000000000;
  MEMORY[0x266702930](0x2074736575716552, 0xEF2064656C696166);
  v0[8] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEAF848, &qword_261467AB0);
  sub_261464D10();
  v2(1, v0[6], v0[7]);

  v3 = v0[1];

  return v3(0, 0, 0, 0);
}

uint64_t sub_26145EFE8(uint64_t a1, void (*a2)(uint64_t, unint64_t, unint64_t))
{
  v3 = sub_26144396C(a1, a2);
  if (v3)
  {
    v4 = v3;
    sub_261464650();
    swift_allocObject();
    sub_261464640();
    v5 = [v4 data];
    v6 = sub_261464760();
    v8 = v7;

    sub_26145FF48();
    sub_261464630();

    sub_261457D50(v6, v8);

    return v10;
  }

  else
  {
    a2(1, 0xD00000000000001ALL, 0x8000000261469470);
    return 0;
  }
}

uint64_t sub_26145F11C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEAF830, &qword_261467BD0);
  MEMORY[0x28223BE20](v1 - 8, v2);
  v4 = &v14 - v3;
  v5 = v0[15];
  v6 = v5[15];
  if (v6)
  {
    v8 = v5[16];
    v7 = v5[17];
    v9 = v5[14];
    v10 = sub_261464B40();
    (*(*(v10 - 8) + 56))(v4, 1, 1, v10);
    v11 = swift_allocObject();
    v11[2] = 0;
    v11[3] = 0;
    v11[4] = v0;
    v11[5] = v9;
    v11[6] = v6;
    v11[7] = v8;
    v11[8] = v7;
    sub_261460668(v9, v6, v8, v7);

    sub_261456364(0, 0, v4, &unk_261467BE0, v11);
  }

  else
  {
    v0[14] = 0;

    v13 = v0[12];

    v13(1, 0xD00000000000002CLL, 0x8000000261469420);
  }
}

uint64_t sub_26145F2D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[5] = a7;
  v8[6] = a8;
  v8[3] = a5;
  v8[4] = a6;
  v8[2] = a4;
  return MEMORY[0x2822009F8](sub_26145F2F8, 0, 0);
}

uint64_t sub_26145F2F8()
{
  v1 = sub_26145F584(v0[3], v0[4], v0[5], v0[6]);
  v0[7] = v1;
  v2 = swift_task_alloc();
  v0[8] = v2;
  *v2 = v0;
  v2[1] = sub_26145F3A8;

  return sub_26145F78C(1, v1);
}

uint64_t sub_26145F3A8(uint64_t a1)
{
  *(*v1 + 72) = a1;

  return MEMORY[0x2822009F8](sub_26145F4C8, 0, 0);
}

uint64_t sub_26145F4C8()
{
  v1 = v0[9];
  v2 = v0[2];
  if (v1)
  {
    *(v2 + 112) = v1;
  }

  else
  {
    *(v2 + 112) = 0;

    v3 = *(v2 + 96);

    v3(1, 0xD000000000000015, 0x8000000261469450);
  }

  v4 = v0[1];

  return v4();
}

uint64_t sub_26145F584(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v13[0] = sub_2614646B0();
  v5 = *(v13[0] - 8);
  v6 = v5;
  MEMORY[0x28223BE20](v13[0], v7);
  v9 = v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEAF960, &qword_261467AA8);
  v10 = ((*(v6 + 80) + 32) & ~*(v6 + 80)) + 2 * *(v5 + 72);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_261467B20;
  sub_2614646A0();
  sub_2614646A0();
  if (*(*__swift_project_boxed_opaque_existential_1((v4 + 16), *(v4 + 40)) + OBJC_IVAR___QOSConfigInternal_locale + 8))
  {

    sub_2614646A0();

    v11 = sub_26145CEFC(1, 3, 1, v11);
    *(v11 + 16) = 3;
    (*(v6 + 32))(v11 + v10, v9, v13[0]);
  }

  return v11;
}

uint64_t sub_26145F78C(uint64_t a1, uint64_t a2)
{
  v3[9] = a2;
  v3[10] = v2;
  v3[8] = a1;
  v4 = sub_261464620();
  v3[11] = v4;
  v3[12] = *(v4 - 8);
  v3[13] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26145F850, 0, 0);
}

uint64_t sub_26145F850()
{
  v1 = (*__swift_project_boxed_opaque_existential_1((v0[10] + 16), *(v0[10] + 40)) + OBJC_IVAR___QOSConfigInternal_issuesUrl);
  v2 = v1[1];
  if (v2)
  {
    v3 = v0[13];
    v4 = v0[9];
    v5 = v0[8];
    v6 = *v1;
    sub_261440F08(v0[10] + 56, (v0 + 2));
    __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);

    sub_261463188(v5, v6, v2, v4, v3);

    v7 = swift_task_alloc();
    v0[14] = v7;
    *v7 = v0;
    v7[1] = sub_26145FA14;
    v8 = v0[13];

    return sub_26145E610(v8);
  }

  else
  {
    v10 = *(v0[10] + 96);

    v10(1, 0xD000000000000023, 0x8000000261469330);

    v11 = v0[1];

    return v11(0);
  }
}

uint64_t sub_26145FA14(uint64_t a1)
{
  v2 = *(*v1 + 104);
  v3 = *(*v1 + 96);
  v4 = *(*v1 + 88);
  *(*v1 + 120) = a1;

  (*(v3 + 8))(v2, v4);

  return MEMORY[0x2822009F8](sub_26145FB74, 0, 0);
}

uint64_t sub_26145FB74()
{
  v1 = v0[15];
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  if (v1)
  {
    v2 = v0[15];
    v3 = v0[10];
    if (*(v2 + 16))
    {
      v4 = *(v3 + 96);

      sub_261464CF0();

      v0[7] = *(v2 + 16);
      v5 = sub_261464D90();
      MEMORY[0x266702930](v5);

      v4(0, 0xD00000000000001FLL, 0x8000000261469390);

      v6 = v0[15];
      goto LABEL_7;
    }

    v7 = *(v3 + 96);

    v8 = 0x726F727265206F4ELL;
    v9 = 0xEE00646E756F6620;
  }

  else
  {
    v7 = *(v0[10] + 96);

    v8 = 0xD000000000000029;
    v9 = 0x8000000261469360;
  }

  v7(1, v8, v9);

  v6 = 0;
LABEL_7:

  v10 = v0[1];

  return v10(v6);
}

uint64_t sub_26145FD2C()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  __swift_destroy_boxed_opaque_existential_1((v0 + 56));

  return swift_deallocClassInstance();
}

uint64_t sub_26145FD8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  v6 = swift_task_alloc();
  *(v3 + 24) = v6;
  *v6 = v3;
  v6[1] = sub_26145FE38;

  return sub_26145F78C(a2, a3);
}

uint64_t sub_26145FE38(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  *v3 = a1;
  v4 = *(v6 + 8);

  return v4();
}

unint64_t sub_26145FF48()
{
  result = qword_2811AE960;
  if (!qword_2811AE960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811AE960);
  }

  return result;
}

unint64_t sub_26145FF9C()
{
  result = qword_27FEAF978;
  if (!qword_27FEAF978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEAF978);
  }

  return result;
}

BOOL sub_26145FFF0(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEAF610, &qword_261466E10);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v6 = &v48 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEAF730, &qword_261467C00);
  MEMORY[0x28223BE20](v7 - 8, v8);
  v10 = &v48 - v9;
  v11 = sub_2614647D0();
  v12 = *(v11 - 8);
  v14 = MEMORY[0x28223BE20](v11, v13);
  v16 = &v48 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14, v17);
  v19 = &v48 - v18;
  v20 = *(v1 + 96);

  v21 = sub_26144396C(a1, v20);

  if (!v21)
  {
    goto LABEL_11;
  }

  v51 = v16;
  v52 = v19;
  v53 = v12;
  v22 = [v21 response];
  objc_opt_self();
  v23 = swift_dynamicCastObjCClass();
  if (!v23 || (v24 = v23, v49 = v11, v25 = sub_261464920(), v26 = [v24 valueForHTTPHeaderField_], v25, !v26))
  {
LABEL_10:

LABEL_11:
    v43 = *(v1 + 96);
    v54 = 0;
    v55 = 0xE000000000000000;

    sub_261464CF0();

    v54 = 0xD000000000000021;
    v55 = 0x8000000261469490;
    sub_261464620();
    sub_26144435C(&qword_2811AE990, MEMORY[0x277CC8678], MEMORY[0x277CC8698]);
    v44 = sub_261464D90();
    MEMORY[0x266702930](v44);

    v43(0, v54, v55);

    return 0;
  }

  v48 = sub_261464930();
  v50 = v27;

  v22 = [v21 response];
  objc_opt_self();
  v28 = swift_dynamicCastObjCClass();
  if (!v28 || (v29 = v28, v30 = sub_261464920(), v31 = [v29 valueForHTTPHeaderField_], v30, !v31))
  {

    goto LABEL_10;
  }

  sub_261464930();

  v32 = *(v1 + 128);
  sub_261464820();
  sub_261464800();
  v33 = sub_261464810();
  (*(*(v33 - 8) + 56))(v6, 0, 1, v33);
  v34 = sub_26144F174(0, v10, v6);

  sub_26144D9E4(v6, &qword_27FEAF610, &qword_261466E10);
  sub_26144D9E4(v10, &qword_27FEAF730, &qword_261467C00);
  v35 = sub_261464920();

  v36 = [v34 dateFromString_];

  if (!v36)
  {

    return 0;
  }

  v37 = v51;
  sub_2614647B0();

  v38 = v52;
  v39 = v53;
  v40 = v49;
  (*(v53 + 32))(v52, v37, v49);
  v41 = sub_26144ACBC(v48, v50);
  LOBYTE(v37) = v42;

  if (v37)
  {
    (*(v39 + 8))(v38, v40);

    return 0;
  }

  sub_261464780();
  v47 = v46;

  (*(v39 + 8))(v38, v40);
  return fabs(v47) < v41;
}

uint64_t sub_26146058C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_26144440C;

  return sub_26145F2D0(a1, v4, v5, v6, v7, v8, v9, v10);
}

void sub_261460668(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
  }
}

unint64_t sub_2614606AC()
{
  result = qword_2811AE770;
  if (!qword_2811AE770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811AE770);
  }

  return result;
}

uint64_t sub_26146070C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *v4;
  v5[4] = a1;
  v5[5] = a2;
  v5[6] = a3;
  v5[7] = a4;

  return MEMORY[0x2822009F8](sub_261460EDC, 0, 0);
}

uint64_t sub_261460810(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *v4;
  v6 = *(*v4 + 80);
  v7 = *(*v4 + 72);
  v8 = *(*v4 + 64);
  v5[12] = a1;
  v5[13] = a2;
  v5[14] = a3;
  v5[15] = a4;

  (*(v7 + 8))(v6, v8);

  return MEMORY[0x2822009F8](sub_261460974, 0, 0);
}

uint64_t sub_261460974()
{
  v1 = v0[13];
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v2 = *(v0[7] + 96);

  if (v1)
  {
    v2(0, 0xD000000000000012, 0x8000000261469580);

    v3 = v0[13];
  }

  else
  {
    v2(1, 0xD000000000000025, 0x8000000261469550);

    v3 = 0;
  }

  v5 = v0[14];
  v4 = v0[15];
  v6 = v0[12];

  v7 = v0[1];

  return v7(v6, v3, v5, v4);
}

uint64_t sub_261460A7C(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEAF830, &qword_261467BD0);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v6 = &v10 - v5;
  v7 = sub_261464B40();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = a2;

  sub_261456364(0, 0, v6, &unk_261467C50, v8);
}

uint64_t sub_261460B88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  v5 = swift_task_alloc();
  *(v4 + 24) = v5;
  *v5 = v4;
  v5[1] = sub_261460C1C;

  return sub_261444BE0();
}

uint64_t sub_261460C1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *v4;
  v5[4] = a1;
  v5[5] = a2;
  v5[6] = a3;
  v5[7] = a4;

  return MEMORY[0x2822009F8](sub_261460D20, 0, 0);
}

uint64_t sub_261460D20()
{
  v1 = *(v0 + 16);
  v2 = v1[14];
  v3 = v1[15];
  v4 = v1[16];
  v5 = v1[17];
  v6 = *(v0 + 48);
  *(v1 + 7) = *(v0 + 32);
  *(v1 + 8) = v6;
  sub_261460DE4(v2, v3, v4, v5);
  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_261460D90()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  __swift_destroy_boxed_opaque_existential_1(v0 + 7);

  sub_261460DE4(v0[14], v0[15], v0[16], v0[17]);

  return swift_deallocClassInstance();
}

void sub_261460DE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
  }
}

uint64_t sub_261460E28(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_26144440C;

  return sub_261460B88(a1, v4, v5, v6);
}

void *sub_261460EF0@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_261461208(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_261460F1C()
{
  v1 = *v0;
  sub_261464E10();
  sub_261461138(v3, v1);
  return sub_261464E30();
}

uint64_t sub_261460F6C(uint64_t a1)
{
  v2 = *v1;
  sub_261464E10();
  sub_261461138(v4, v2);
  return sub_261464E30();
}

unint64_t sub_261460FC0()
{
  result = qword_27FEAF988;
  if (!qword_27FEAF988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEAF988);
  }

  return result;
}

uint64_t sub_261461014@<X0>(BOOL *a2@<X8>)
{
  v3 = sub_261464D60();

  *a2 = v3 != 0;
  return result;
}

uint64_t sub_261461068@<X0>(BOOL *a3@<X8>)
{
  v4 = sub_261464D60();

  *a3 = v4 != 0;
  return result;
}

uint64_t sub_2614610C0(uint64_t a1)
{
  v2 = sub_2614613A4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2614610FC(uint64_t a1)
{
  v2 = sub_2614613A4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_261461138(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x266702D10](v3);
  if (v3)
  {
    v5 = (a2 + 32);
    do
    {
      v6 = v5[9];
      v13[8] = v5[8];
      v13[9] = v6;
      v7 = v5[11];
      v13[10] = v5[10];
      v13[11] = v7;
      v8 = v5[5];
      v13[4] = v5[4];
      v13[5] = v8;
      v9 = v5[7];
      v13[6] = v5[6];
      v13[7] = v9;
      v10 = v5[1];
      v13[0] = *v5;
      v13[1] = v10;
      v11 = v5[3];
      v13[2] = v5[2];
      v13[3] = v11;
      sub_26145DCB4(v13, &v12);
      sub_2614649E0();
      sub_2614649E0();
      result = sub_26145DD10(v13);
      v5 += 12;
      --v3;
    }

    while (v3);
  }

  return result;
}

void *sub_261461208(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEAF990, &qword_261467D38);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = v10 - v6;
  v8 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2614613A4();
  sub_261464E40();
  if (!v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEAF9A0, &qword_261467D40);
    sub_2614613F8();
    sub_261464D80();
    v8 = v10[1];
    (*(v4 + 8))(v7, v3);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v8;
}

unint64_t sub_2614613A4()
{
  result = qword_27FEAF998;
  if (!qword_27FEAF998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEAF998);
  }

  return result;
}

unint64_t sub_2614613F8()
{
  result = qword_27FEAF9A8;
  if (!qword_27FEAF9A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FEAF9A0, &qword_261467D40);
    sub_26146147C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEAF9A8);
  }

  return result;
}

unint64_t sub_26146147C()
{
  result = qword_27FEAF9B0;
  if (!qword_27FEAF9B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEAF9B0);
  }

  return result;
}

unint64_t sub_2614614E4()
{
  result = qword_27FEAF9B8;
  if (!qword_27FEAF9B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEAF9B8);
  }

  return result;
}

unint64_t sub_26146153C()
{
  result = qword_27FEAF9C0;
  if (!qword_27FEAF9C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEAF9C0);
  }

  return result;
}

unint64_t sub_261461594()
{
  result = qword_27FEAF9C8;
  if (!qword_27FEAF9C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEAF9C8);
  }

  return result;
}

uint64_t sub_2614615E8(unsigned __int8 a1)
{
  sub_261464E10();
  sub_2614649E0();

  return sub_261464E30();
}

uint64_t sub_261461704(uint64_t a1, unsigned __int8 a2)
{
  sub_2614649E0();
}

uint64_t sub_26146185C(uint64_t a1, unsigned __int8 a2)
{
  sub_261464E10();
  sub_2614649E0();

  return sub_261464E30();
}

uint64_t sub_2614619C8(uint64_t a1, unsigned __int8 a2)
{
  sub_261464E10();
  sub_2614649E0();

  return sub_261464E30();
}

double sub_261461AE0@<D0>(_OWORD *a1@<X8>, void *a2@<X0>)
{
  sub_2614620C4(a2, v6);
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

uint64_t sub_261461B24(_OWORD *a1, __int128 *a2)
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
  return sub_261461F0C(v7, v8) & 1;
}

uint64_t sub_261461B80(uint64_t a1)
{
  sub_2614649E0();
}

unint64_t sub_261461C8C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_261462578(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_261461CBC(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEC000000796C696DLL;
  v4 = 0x6146656369766564;
  v5 = 0xEA00000000006E6FLL;
  v6 = 0x6973726556707061;
  v7 = 0xE90000000000006ELL;
  v8 = 0x6F6973726556736FLL;
  if (v2 != 4)
  {
    v8 = 29551;
    v7 = 0xE200000000000000;
  }

  if (v2 != 3)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0x614E656369766564;
  v10 = 0xEA0000000000656DLL;
  if (v2 != 1)
  {
    v9 = 0x6F4D656369766564;
    v10 = 0xEB000000006C6564;
  }

  if (*v1)
  {
    v4 = v9;
    v3 = v10;
  }

  if (*v1 <= 2u)
  {
    v11 = v4;
  }

  else
  {
    v11 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v11;
  a1[1] = v3;
}

uint64_t sub_261461D90()
{
  v1 = *v0;
  v2 = 0x6146656369766564;
  v3 = 0x6973726556707061;
  v4 = 0x6F6973726556736FLL;
  if (v1 != 4)
  {
    v4 = 29551;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x614E656369766564;
  if (v1 != 1)
  {
    v5 = 0x6F4D656369766564;
  }

  if (*v0)
  {
    v2 = v5;
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

unint64_t sub_261461E60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_261462578(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_261461E94(uint64_t a1)
{
  v2 = sub_26146240C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_261461ED0(uint64_t a1)
{
  v2 = sub_26146240C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_261461F0C(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  v5 = *a2;
  if (v4)
  {
    if (!v5 || (sub_26145288C(v4, v5) & 1) == 0)
    {
      return 0;
    }
  }

  else if (v5)
  {
    return 0;
  }

  v6 = a1[1];
  v7 = a2[1];
  if (v6)
  {
    if (!v7 || (sub_26145288C(v6, v7) & 1) == 0)
    {
      return 0;
    }
  }

  else if (v7)
  {
    return 0;
  }

  v8 = a1[2];
  v9 = a2[2];
  if (v8)
  {
    if (!v9 || (sub_26145288C(v8, v9) & 1) == 0)
    {
      return 0;
    }
  }

  else if (v9)
  {
    return 0;
  }

  v10 = a1[3];
  v11 = a2[3];
  if (v10)
  {
    if (!v11 || (sub_26145288C(v10, v11) & 1) == 0)
    {
      return 0;
    }
  }

  else if (v11)
  {
    return 0;
  }

  v12 = a1[4];
  v13 = a2[4];
  if (v12)
  {
    if (!v13 || (sub_26145288C(v12, v13) & 1) == 0)
    {
      return 0;
    }
  }

  else if (v13)
  {
    return 0;
  }

  v14 = a1[5];
  v15 = a2[5];
  if (v14)
  {
    if (v15 && (sub_26145288C(v14, v15) & 1) != 0)
    {
      return 1;
    }
  }

  else if (!v15)
  {
    return 1;
  }

  return 0;
}

uint64_t sub_261461FF8(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 48))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_261462054(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_2614620C4@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEAF9D0, &unk_261467F68);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v15 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26146240C();
  sub_261464E40();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEAF658, &qword_261466260);
  v20 = 2;
  sub_26144C654();
  sub_261464D80();
  v18 = v21;
  v20 = 0;
  sub_261464D80();
  v17 = v21;
  v20 = 1;
  sub_261464D80();
  v16 = v21;
  v20 = 3;
  sub_261464D80();
  v15 = v21;
  v19 = v6;
  v20 = 4;
  sub_261464D80();
  v11 = v21;
  v20 = 5;
  sub_261464D80();
  v12 = v21;
  (*(v19 + 8))(v9, v5);
  result = __swift_destroy_boxed_opaque_existential_1(a1);
  v13 = v16;
  *a2 = v17;
  a2[1] = v13;
  v14 = v15;
  a2[2] = v18;
  a2[3] = v14;
  a2[4] = v11;
  a2[5] = v12;
  return result;
}

unint64_t sub_26146240C()
{
  result = qword_27FEAF9D8;
  if (!qword_27FEAF9D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEAF9D8);
  }

  return result;
}

unint64_t sub_261462474()
{
  result = qword_27FEAF9E0;
  if (!qword_27FEAF9E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEAF9E0);
  }

  return result;
}

unint64_t sub_2614624CC()
{
  result = qword_27FEAF9E8;
  if (!qword_27FEAF9E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEAF9E8);
  }

  return result;
}

unint64_t sub_261462524()
{
  result = qword_27FEAF9F0;
  if (!qword_27FEAF9F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEAF9F0);
  }

  return result;
}

unint64_t sub_261462578(uint64_t a1, uint64_t a2)
{
  v2 = sub_261464D60();

  if (v2 >= 6)
  {
    return 6;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_2614625D0(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 8))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_26146262C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

void *sub_26146268C@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_261462920(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_2614626B8(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2)
  {
    if (v3 && (sub_26145288C(v2, v3) & 1) != 0)
    {
      return 1;
    }
  }

  else if (!v3)
  {
    return 1;
  }

  return 0;
}

uint64_t sub_2614626F8()
{
  sub_261464E10();
  sub_2614649E0();
  return sub_261464E30();
}

uint64_t sub_26146276C(uint64_t a1)
{
  sub_261464E10();
  sub_2614649E0();
  return sub_261464E30();
}

uint64_t sub_2614627C0@<X0>(BOOL *a2@<X8>)
{
  v3 = sub_261464D60();

  *a2 = v3 != 0;
  return result;
}

uint64_t sub_261462850@<X0>(BOOL *a3@<X8>)
{
  v4 = sub_261464D60();

  *a3 = v4 != 0;
  return result;
}

uint64_t sub_2614628A8(uint64_t a1)
{
  v2 = sub_261462ABC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2614628E4(uint64_t a1)
{
  v2 = sub_261462ABC();

  return MEMORY[0x2821FE720](a1, v2);
}

void *sub_261462920(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEAF9F8, &qword_261468150);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = v10 - v6;
  v8 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_261462ABC();
  sub_261464E40();
  if (!v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEAF658, &qword_261466260);
    sub_26144C654();
    sub_261464D80();
    v8 = v10[1];
    (*(v4 + 8))(v7, v3);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v8;
}

unint64_t sub_261462ABC()
{
  result = qword_27FEAFA00;
  if (!qword_27FEAFA00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEAFA00);
  }

  return result;
}

unint64_t sub_261462B24()
{
  result = qword_27FEAFA08;
  if (!qword_27FEAFA08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEAFA08);
  }

  return result;
}

unint64_t sub_261462B7C()
{
  result = qword_27FEAFA10;
  if (!qword_27FEAFA10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEAFA10);
  }

  return result;
}

unint64_t sub_261462BD4()
{
  result = qword_27FEAFA18;
  if (!qword_27FEAFA18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEAFA18);
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

uint64_t sub_261462C34(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_261462C7C(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_261462CCC@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_261462E38(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
    a1[2] = v6;
    a1[3] = v7;
  }

  return result;
}

uint64_t sub_261462CFC@<X0>(char *a2@<X8>)
{
  v3 = sub_261464D60();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

uint64_t sub_261462D5C@<X0>(char *a3@<X8>)
{
  v4 = sub_261464D60();

  if (v4 == 1)
  {
    v6 = 1;
  }

  else
  {
    v6 = 2;
  }

  if (!v4)
  {
    v6 = 0;
  }

  *a3 = v6;
  return result;
}

uint64_t sub_261462DC0(uint64_t a1)
{
  v2 = sub_26146301C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_261462DFC(uint64_t a1)
{
  v2 = sub_26146301C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_261462E38(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEAFA20, &qword_261468310);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v10 - v6;
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26146301C();
  sub_261464E40();
  if (!v1)
  {
    v12 = 0;
    v8 = sub_261464D70();
    v11 = 1;
    sub_261464D70();
    (*(v4 + 8))(v7, v3);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v8;
}

unint64_t sub_26146301C()
{
  result = qword_2811AE788[0];
  if (!qword_2811AE788[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2811AE788);
  }

  return result;
}

unint64_t sub_261463084()
{
  result = qword_27FEAFA28;
  if (!qword_27FEAFA28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEAFA28);
  }

  return result;
}

unint64_t sub_2614630DC()
{
  result = qword_2811AE778;
  if (!qword_2811AE778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811AE778);
  }

  return result;
}

unint64_t sub_261463134()
{
  result = qword_2811AE780;
  if (!qword_2811AE780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811AE780);
  }

  return result;
}

uint64_t sub_261463188@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v50 = a4;
  v51 = a2;
  v52 = a3;
  v44 = a5;
  v6 = sub_261464620();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEAFA30, &qword_261468480);
  MEMORY[0x28223BE20](v11 - 8, v12);
  v49 = &v43 - v13;
  v14 = sub_261464740();
  v15 = *(v14 - 8);
  v17 = MEMORY[0x28223BE20](v14, v16);
  v45 = &v43 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17, v19);
  v46 = &v43 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEAFA38, &qword_261468488);
  MEMORY[0x28223BE20](v21 - 8, v22);
  v24 = &v43 - v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEAF960, &qword_261467AA8);
  v25 = *(sub_2614646B0() - 8);
  v26 = (*(v25 + 80) + 32) & ~*(v25 + 80);
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_261468470;
  v54 = v24;
  v55 = v6;
  v47 = v10;
  v53 = v14;
  if (a1 <= 1)
  {
    a1 = v27 + v26;
    v48 = v27;
    sub_2614646A0();

    sub_261457B18();
    sub_2614646A0();

    v28 = objc_opt_self();
    v29 = [v28 currentDevice];
    v30 = [v29 model];

    sub_261464930();
    sub_2614646A0();

    v31 = [v28 currentDevice];
    v32 = [v31 systemName];

    sub_261464930();
    sub_2614646A0();

    v33 = [v28 currentDevice];
    v34 = [v33 systemVersion];

    sub_261464930();
    sub_2614646A0();

    v56 = v48;

    sub_261463828(v35);

    v36 = v49;
    sub_2614435C4(v49);

    v37 = v53;
    if ((*(v15 + 48))(v36, 1, v53) == 1)
    {
      sub_261463954(v36);
      (*(v7 + 56))(v54, 1, 1, v55);
    }

    else
    {
      v38 = v46;
      (*(v15 + 32))(v46, v36, v37);
      (*(v15 + 16))(v45, v38, v37);
      v39 = v47;
      sub_261464610();
      sub_2614645F0();
      (*(v15 + 8))(v38, v37);
      v41 = v54;
      v40 = v55;
      (*(v7 + 16))(v54, v39, v55);
      (*(v7 + 56))(v41, 0, 1, v40);
      (*(v7 + 8))(v39, v40);
      if ((*(v7 + 48))(v41, 1, v40) != 1)
      {
        return (*(v7 + 32))(v44, v41, v40);
      }
    }

    __break(1u);
  }

  v56 = a1;
  result = sub_261464DB0();
  __break(1u);
  return result;
}

uint64_t sub_261463828(uint64_t result)
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

  v3 = sub_26145CEFC(isUniquelyReferenced_nonNull_native, v12, 1, v3);
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
  result = sub_2614646B0();
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

uint64_t sub_261463954(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEAFA30, &qword_261468480);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2614639DC()
{
  __swift_project_boxed_opaque_existential_1((*(v0 + 16) + 16), *(*(v0 + 16) + 40));
  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = sub_261463A7C;

  return sub_261441AB4();
}

uint64_t sub_261463A7C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_261463B70(uint64_t a1, uint64_t a2)
{
  v3[8] = a2;
  v3[9] = v2;
  v3[7] = a1;
  v4 = sub_261464620();
  v3[10] = v4;
  v3[11] = *(v4 - 8);
  v3[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_261463C34, 0, 0);
}

uint64_t sub_261463C34()
{
  v1 = v0[9];
  v2 = v1[15];
  v0[13] = v2;
  if (v2)
  {

    v3 = swift_task_alloc();
    v0[14] = v3;
    *v3 = v0;
    v3[1] = sub_261463EAC;
    v4 = MEMORY[0x277D84A98];
    v5 = MEMORY[0x277D84AC0];
    v6 = MEMORY[0x277D84F78] + 8;

    return MEMORY[0x282200440](v0 + 17, v2, v6, v4, v5);
  }

  else
  {
    v7 = (*__swift_project_boxed_opaque_existential_1(v1 + 2, v1[5]) + OBJC_IVAR___QOSConfigInternal_issuesUrl);
    v8 = v7[1];
    if (v8)
    {
      v9 = v0[12];
      v10 = v0[8];
      v11 = v0[7];
      v12 = *v7;
      sub_261440F08(v0[9] + 56, (v0 + 2));
      __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);

      sub_261463188(v11, v12, v8, v10, v9);

      v13 = swift_task_alloc();
      v0[15] = v13;
      *v13 = v0;
      v13[1] = sub_2614641CC;
      v14 = v0[12];

      return sub_26145E1F8(v14);
    }

    else
    {
      v15 = *(v0[9] + 96);

      v15(1, 0xD000000000000023, 0x8000000261469330);

      v16 = v0[1];

      return v16(0);
    }
  }
}

uint64_t sub_261463EAC()
{

  return MEMORY[0x2822009F8](sub_261463FC4, 0, 0);
}

uint64_t sub_261463FC4(uint64_t a1)
{
  if (*(v1 + 136))
  {
    v2 = MEMORY[0x277D84A98];
    v3 = MEMORY[0x277D84AC0];

    return MEMORY[0x2821FECA8](a1, v2, v3);
  }

  else
  {
    v4 = (*__swift_project_boxed_opaque_existential_1((*(v1 + 72) + 16), *(*(v1 + 72) + 40)) + OBJC_IVAR___QOSConfigInternal_issuesUrl);
    v5 = v4[1];
    if (v5)
    {
      v6 = *(v1 + 96);
      v7 = *(v1 + 64);
      v8 = *(v1 + 56);
      v9 = *v4;
      sub_261440F08(*(v1 + 72) + 56, v1 + 16);
      __swift_project_boxed_opaque_existential_1((v1 + 16), *(v1 + 40));

      sub_261463188(v8, v9, v5, v7, v6);

      v10 = swift_task_alloc();
      *(v1 + 120) = v10;
      *v10 = v1;
      v10[1] = sub_2614641CC;
      v11 = *(v1 + 96);

      return sub_26145E1F8(v11);
    }

    else
    {
      v12 = *(*(v1 + 72) + 96);

      v12(1, 0xD000000000000023, 0x8000000261469330);

      v13 = *(v1 + 8);

      return v13(0);
    }
  }
}

uint64_t sub_2614641CC(uint64_t a1)
{
  v2 = *(*v1 + 96);
  v3 = *(*v1 + 88);
  v4 = *(*v1 + 80);
  *(*v1 + 128) = a1;

  (*(v3 + 8))(v2, v4);

  return MEMORY[0x2822009F8](sub_26146432C, 0, 0);
}

uint64_t sub_26146432C()
{
  v1 = v0[16];
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  if (v1)
  {
    v2 = v0[16];
    if (*(v2 + 16))
    {
      goto LABEL_6;
    }

    v3 = 0x726F727265206F4ELL;
    v4 = 0xEE00646E756F6620;
  }

  else
  {
    v4 = 0x8000000261469360;
    v3 = 0xD000000000000029;
  }

  v5 = *(v0[9] + 96);

  v5(1, v3, v4);

  v2 = 0;
LABEL_6:

  v6 = v0[1];

  return v6(v2);
}

uint64_t sub_26146442C()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  __swift_destroy_boxed_opaque_existential_1((v0 + 56));

  return swift_deallocClassInstance();
}

uint64_t sub_2614644A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  v6 = swift_task_alloc();
  *(v3 + 24) = v6;
  *v6 = v3;
  v6[1] = sub_26145FE38;

  return sub_261463B70(a2, a3);
}

void sub_261464554()
{
  v0 = sub_261464920();
  v1 = objc_opt_self();
  v2 = [v1 bundleWithIdentifier_];

  if (!v2)
  {
    v2 = [v1 mainBundle];
  }

  qword_27FEB3C40 = v2;
}