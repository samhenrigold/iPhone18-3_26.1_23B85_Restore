id sub_2544FC16C(uint64_t a1, uint64_t a2)
{
  v7[1] = *MEMORY[0x277D85DE8];
  v2 = sub_25454BC74();

  v7[0] = 0;
  v3 = [swift_getObjCClassFromMetadata() setupPayloadWithOnboardingPayload:v2 error:v7];

  if (v3)
  {
    v4 = v7[0];
  }

  else
  {
    v5 = v7[0];
    sub_254549134();

    swift_willThrow();
  }

  return v3;
}

void sub_2544FC244(uint64_t a1)
{
  sub_25454BE14();
  sub_25454BE04();
  sub_25454BDB4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v1 = [objc_opt_self() generalPasteboard];
  type metadata accessor for AccessoryDetailsView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC410, &qword_25454FF90);
  sub_25454B7A4();
  v2 = sub_25454BC74();

  [v1 setString_];
}

uint64_t sub_2544FC370@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_254549074();
  v25 = *(v2 - 8);
  v26 = v2;
  MEMORY[0x28223BE20](v2);
  v4 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25454BE14();
  v33 = sub_25454BE04();
  sub_25454BDB4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v31 = sub_254549774();
  v32 = v5;
  sub_2544AECF0();
  v6 = sub_25454C064();
  if (v7 && (v31 = v6, v32 = v7, sub_25454C064(), v9 = v8, , v9))
  {
    v10 = sub_25454BCC4();
    v12 = v11;

    v31 = v10;
    v32 = v12;
    sub_25454BCF4();
    v13 = sub_25454BCC4();
    v24 = a1;
    v15 = v14;

    v29 = v13;
    v30 = v15;
    v27 = 0;
    v28 = 0xE000000000000000;
    v16 = sub_25454C084();
    v18 = v17;

    a1 = v24;

    v31 = v16;
    v32 = v18;
    sub_254549064();
    v19 = sub_25454C074();
    v21 = v20;
    (*(v25 + 8))(v4, v26);
  }

  else
  {

    v19 = 0;
    v21 = 0xE000000000000000;
  }

  *a1 = v19;
  a1[1] = v21;
  return result;
}

uint64_t sub_2544FC650@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_254549394();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

void sub_2544FC6B8(void *a1, uint64_t a2)
{
  sub_25454BE14();
  sub_25454BE04();
  sub_25454BDB4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  [a1 setNavigationBarHidden:0 animated:0];
  v3 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC370, &qword_25454FEF8));

  v4 = sub_25454AC64();
  [a1 pushViewController:v4 animated:1];
}

void sub_2544FC7C0(void *a1, uint64_t a2)
{
  v4 = sub_25454A1C4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25454BE14();
  sub_25454BE04();
  sub_25454BDB4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  [a1 setNavigationBarHidden:0 animated:0];
  (*(v5 + 16))(v7, a2, v4);
  v8 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC358, &qword_25454FEE0));
  v9 = sub_25454AC64();
  [a1 pushViewController:v9 animated:1];
}

double sub_2544FC954@<D0>(char a3@<W2>, uint64_t a5@<X4>, uint64_t a7@<X8>)
{
  sub_25454BE14();
  sub_25454BE04();
  sub_25454BDB4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v10 = sub_25454AB14();
  v24 = 1;
  sub_2544FCB00(a3 & 1, a5, &v17);
  v27 = v19;
  v28 = v20;
  v29 = v21;
  v30 = v22;
  v25 = v17;
  v26 = v18;
  v31[2] = v19;
  v31[3] = v20;
  v31[4] = v21;
  v31[5] = v22;
  v31[0] = v17;
  v31[1] = v18;
  sub_2544AE240(&v25, v16, &qword_27F5FC350, &qword_25454FED8);
  sub_2544AE150(v31, &qword_27F5FC350, &qword_25454FED8);

  *&v23[87] = v30;
  *&v23[71] = v29;
  *&v23[55] = v28;
  *&v23[39] = v27;
  *&v23[23] = v26;
  *&v23[7] = v25;
  v11 = *&v23[32];
  *(a7 + 65) = *&v23[48];
  v12 = *&v23[80];
  *(a7 + 81) = *&v23[64];
  *(a7 + 97) = v12;
  result = *v23;
  v14 = *&v23[16];
  *(a7 + 17) = *v23;
  *(a7 + 33) = v14;
  v15 = v24;
  *a7 = v10;
  *(a7 + 8) = 0;
  *(a7 + 16) = v15;
  *(a7 + 112) = *&v23[95];
  *(a7 + 49) = v11;
  return result;
}

uint64_t sub_2544FCB00@<X0>(char a3@<W2>, uint64_t a5@<X4>, uint64_t a7@<X8>)
{
  sub_25454BE14();
  sub_25454BE04();
  sub_25454BDB4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_2544AECF0();

  v10 = sub_25454B274();
  v12 = v11;
  v14 = v13;
  if (a3)
  {
    sub_25454B644();
  }

  else
  {
    sub_25454B6A4();
  }

  v15 = sub_25454B1E4();
  v43 = v16;
  v44 = v15;
  v18 = v17;
  v42 = v19;
  sub_2544C9C64(v10, v12, v14 & 1);

  if (a5)
  {

    v20 = sub_25454B274();
    v22 = v21;
    v24 = v23;
    v25 = sub_25454B1E4();
    v41 = v18;
    v27 = v26;
    v29 = v28;
    v31 = v30;
    sub_2544C9C64(v20, v22, v24 & 1);

    v32 = v29 & 1;
    a5 = v25;
    v33 = v27;
    v34 = v27;
    v18 = v41;
    sub_2544A8F00(v25, v34, v32);
    v35 = v31;
  }

  else
  {
    v33 = 0;
    v32 = 0;
    v35 = 0;
  }

  v36 = sub_25454B704();
  v37 = sub_25454B644();
  sub_2544A8F00(v44, v43, v18 & 1);

  sub_2544C9BDC(a5, v33, v32, v35);

  sub_2544C9C20(a5, v33, v32, v35, v38);
  *a7 = v44;
  *(a7 + 8) = v43;
  *(a7 + 16) = v18 & 1;
  *(a7 + 24) = v42;
  *(a7 + 32) = 0;
  *(a7 + 40) = 1;
  *(a7 + 48) = a5;
  *(a7 + 56) = v33;
  *(a7 + 64) = v32;
  *(a7 + 72) = v35;
  *(a7 + 80) = v36;
  *(a7 + 88) = v37;

  sub_2544C9C20(a5, v33, v32, v35, v39);
  sub_2544C9C64(v44, v43, v18 & 1);
}

__n128 sub_2544FCE2C@<Q0>(uint64_t a2@<X1>, char a5@<W4>, _OWORD *a7@<X8>)
{
  sub_25454BE14();
  sub_25454BE04();
  sub_25454BDB4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (a2)
  {
    sub_25454AB14();
    sub_25454BE04();
    sub_25454BDB4();
    if ((swift_task_isCurrentExecutor() & 1) == 0)
    {
      swift_task_reportUnexpectedExecutor();
    }

    sub_2544AECF0();

    v9 = sub_25454B274();
    v11 = v10;
    v13 = v12;
    if (a5)
    {
      sub_25454B644();
    }

    else
    {
      sub_25454B6A4();
    }

    v30 = sub_25454B1E4();
    v28 = v14;
    v27 = v15;
    sub_2544C9C64(v9, v11, v13 & 1);

    v16 = sub_25454B274();
    v18 = v17;
    v20 = v19;
    v21 = sub_25454B1E4();
    v23 = v22;
    v25 = v24;
    sub_2544C9C64(v16, v18, v20 & 1);

    sub_2544A8F00(v30, v28, v27 & 1);

    sub_2544A8F00(v21, v23, v25 & 1);

    sub_2544C9C64(v21, v23, v25 & 1);

    sub_2544C9C64(v30, v28, v27 & 1);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC318, &qword_25454FEC0);
    sub_2544AE1F0(&qword_27F5FC310, &qword_27F5FC318, &qword_25454FEC0, MEMORY[0x277CE1138]);
    sub_25454AD44();

    v37 = v35;
    *v38 = *v36;
  }

  else
  {
    sub_2544AECF0();

    sub_25454B274();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC318, &qword_25454FEC0);
    sub_2544AE1F0(&qword_27F5FC310, &qword_27F5FC318, &qword_25454FEC0, MEMORY[0x277CE1138]);
    sub_25454AD44();

    v37 = v35;
    *v38 = *v36;
  }

  *&v38[9] = *&v36[9];
  a7[4] = v37;
  a7[5] = *v38;
  *(a7 + 89) = *&v36[9];
  *a7 = v31;
  a7[1] = v32;
  result = v34;
  a7[2] = v33;
  a7[3] = v34;
  return result;
}

void sub_2544FD2E4(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v76 = a1;
  v73 = a2;
  v2 = sub_254549744();
  v66 = *(v2 - 8);
  v67 = v2;
  MEMORY[0x28223BE20](v2);
  v65 = &v61 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_25454A0A4();
  v77 = *(v4 - 8);
  v78 = v4;
  v5 = MEMORY[0x28223BE20](v4);
  v70 = &v61 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v69 = &v61 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FB370, &qword_254551530);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v61 - v9;
  v11 = sub_254549AB4();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v68 = &v61 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v16 = &v61 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FBF08, &qword_25454FB40);
  v18 = MEMORY[0x28223BE20](v17 - 8);
  v72 = &v61 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v75 = &v61 - v20;
  sub_25454BE14();
  v71 = sub_25454BE04();
  sub_25454BDB4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FBCD8, &qword_25454F730);
  sub_25454B7A4();
  v21 = sub_2544FDB64(v16, v105);
  v22 = *(v12 + 8);
  v74 = v11;
  v22(v16, v11, v21);
  v63 = v22;
  v64 = v12 + 8;
  v111 = v105[4];
  v112 = v105[5];
  v113[0] = v106[0];
  *(v113 + 10) = *(v106 + 10);
  v107 = v105[0];
  v108 = v105[1];
  v109 = v105[2];
  v110 = v105[3];
  sub_25454BA54();
  sub_25454A784();
  v23 = sub_25454B044();
  (*(*(v23 - 8) + 56))(v10, 1, 1, v23);
  v24 = sub_25454B0A4();
  sub_2544AE150(v10, &qword_27F5FB370, &qword_254551530);
  KeyPath = swift_getKeyPath();
  v93 = v113[6];
  v94 = v113[7];
  v95 = v113[8];
  v89 = v113[2];
  v90 = v113[3];
  v91 = v113[4];
  v92 = v113[5];
  v85 = v111;
  v86 = v112;
  v87 = v113[0];
  v88 = v113[1];
  v81 = v107;
  v82 = v108;
  v83 = v109;
  v84 = v110;
  *&v96 = KeyPath;
  *(&v96 + 1) = v24;
  sub_25454B7A4();
  v26 = v69;
  sub_254549AA4();
  (v22)(v16, v74);
  v27 = v65;
  sub_254549F44();
  v28 = *(v77 + 8);
  v77 += 8;
  v62 = v28;
  v28(v26, v78);
  v29 = sub_254549714();
  v31 = v30;
  (*(v66 + 8))(v27, v67);
  v98 = v29;
  v99 = v31;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FBF10, &qword_25454FB78);
  sub_254504B88();
  sub_2544AECF0();
  sub_25454B424();

  v97[12] = v93;
  v97[13] = v94;
  v97[14] = v95;
  v97[15] = v96;
  v97[8] = v89;
  v97[9] = v90;
  v97[10] = v91;
  v97[11] = v92;
  v97[4] = v85;
  v97[5] = v86;
  v97[6] = v87;
  v97[7] = v88;
  v97[0] = v81;
  v97[1] = v82;
  v97[2] = v83;
  v97[3] = v84;
  sub_2544AE150(v97, &qword_27F5FBF10, &qword_25454FB78);
  sub_25454B7A4();
  sub_254549AA4();
  v32 = v74;
  v33 = v63;
  v63(v16, v74);
  v34 = sub_254549F84();
  v66 = v35;
  v67 = v34;
  v36 = v26;
  v37 = v62;
  v62(v36, v78);
  v38 = v68;
  sub_25454B7A4();
  v39 = v70;
  sub_254549AA4();
  v33(v38, v32);
  v40 = sub_254549FB4();
  v42 = v41;
  v37(v39, v78);
  v43 = sub_25454AFF4();
  LOBYTE(v38) = sub_25454AF44();
  sub_25454A394();
  v45 = v44;
  v47 = v46;
  v49 = v48;
  v51 = v50;
  LOBYTE(v81) = 0;
  v52 = v75;
  v53 = v72;
  sub_2544AE240(v75, v72, &qword_27F5FBF08, &qword_25454FB40);
  v54 = v73;
  sub_2544AE240(v53, v73, &qword_27F5FBF08, &qword_25454FB40);
  v55 = (v54 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FBF90, &qword_25454FBC8) + 48));
  v99 = 0;
  v98 = 0;
  v56 = v66;
  v57 = v67;
  *&v100 = v67;
  *(&v100 + 1) = v66;
  *&v101 = v40;
  *(&v101 + 1) = v42;
  *&v102 = v43;
  BYTE8(v102) = 0;
  HIDWORD(v102) = *&v80[3];
  *(&v102 + 9) = *v80;
  LOBYTE(v103) = v38;
  *(&v103 + 1) = *v79;
  DWORD1(v103) = *&v79[3];
  *(&v103 + 1) = v45;
  *&v104[0] = v47;
  *(&v104[0] + 1) = v49;
  *&v104[1] = v51;
  BYTE8(v104[1]) = 0;
  v58 = v100;
  *v55 = 0u;
  v55[1] = v58;
  v59 = v102;
  v55[2] = v101;
  v55[3] = v59;
  v60 = v104[0];
  v55[4] = v103;
  v55[5] = v60;
  *(v55 + 89) = *(v104 + 9);
  sub_2544AE240(&v98, &v81, &qword_27F5FBF98, &unk_25454FBD0);
  sub_2544AE150(v52, &qword_27F5FBF08, &qword_25454FB40);
  v81 = 0uLL;
  *&v82 = v57;
  *(&v82 + 1) = v56;
  *&v83 = v40;
  *(&v83 + 1) = v42;
  *&v84 = v43;
  BYTE8(v84) = 0;
  *(&v84 + 9) = *v80;
  HIDWORD(v84) = *&v80[3];
  LOBYTE(v85) = v38;
  *(&v85 + 1) = *v79;
  DWORD1(v85) = *&v79[3];
  *(&v85 + 1) = v45;
  *&v86 = v47;
  *(&v86 + 1) = v49;
  *&v87 = v51;
  BYTE8(v87) = 0;
  sub_2544AE150(&v81, &qword_27F5FBF98, &unk_25454FBD0);
  sub_2544AE150(v53, &qword_27F5FBF08, &qword_25454FB40);
}

__n128 sub_2544FDB64@<Q0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v95 = a2;
  v3 = sub_254549744();
  v91 = *(v3 - 8);
  v92 = v3;
  MEMORY[0x28223BE20](v3);
  v90 = (&v87 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FBCA8, &unk_254550680);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v87 - v6;
  v8 = sub_25454A0A4();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v88 = &v87 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v87 - v13;
  v15 = MEMORY[0x28223BE20](v12);
  v89 = &v87 - v16;
  MEMORY[0x28223BE20](v15);
  v18 = &v87 - v17;
  v19 = sub_254549F04();
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v22 = &v87 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = a1;
  sub_254549AA4();
  sub_25454A064();
  v23 = v20;
  v24 = *(v9 + 8);
  v93 = v8;
  v24(v18, v8);
  if ((v23[6])(v7, 1, v19) == 1)
  {
    sub_2544AE150(v7, &qword_27F5FBCA8, &unk_254550680);
    sub_254549AA4();
    v25 = v90;
    sub_254549F44();
    v26 = v93;
    v24(v14, v93);
    sub_254549734();
    (*(v91 + 8))(v25, v92);
    v92 = sub_25454B704();
    v27 = v88;
    sub_254549AA4();
    v28 = sub_254549F94();
    v24(v27, v26);
    if (v28 == 2 || (v28 & 1) == 0)
    {
      v29 = sub_25454B644();
    }

    else
    {
      sub_254549AA4();
      v29 = sub_254549FD4();
      v24(v14, v26);
    }

    KeyPath = swift_getKeyPath();
    v46 = sub_25454AF24();
    sub_25454A394();
    v48 = v47;
    v50 = v49;
    v52 = v51;
    v54 = v53;
    v111 = 0;
    v55 = sub_25454AF44();
    sub_25454A394();
    v112 = 0;
    *&v104 = v92;
    *(&v104 + 1) = KeyPath;
    *&v105 = v29;
    BYTE8(v105) = v46;
    v106.n128_u64[0] = v48;
    v106.n128_u64[1] = v50;
    *&v107 = v52;
    *(&v107 + 1) = v54;
    LOBYTE(v108) = 0;
    BYTE8(v108) = v55;
    *&v109 = v56;
    *(&v109 + 1) = v57;
    *&v110[0] = v58;
    *(&v110[0] + 1) = v59;
    LOBYTE(v110[1]) = 0;
    sub_254505040(&v104);
    v101 = v108;
    v102 = v109;
    v103[0] = v110[0];
    *(v103 + 10) = *(v110 + 10);
    v97 = v104;
    v98 = v105;
    v99 = v106;
    v100 = v107;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FBF48, &qword_25454FB90);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FBF68, &qword_25454FBA0);
    sub_254504D58();
    sub_254504E68();
    sub_25454AD44();
  }

  else
  {
    v90 = v23;
    v91 = v19;
    v23[4](v22, v7, v19);
    v92 = v22;
    *&v113 = sub_254549EC4();
    *(&v113 + 1) = v30;
    sub_2544AECF0();
    v31 = sub_25454B274();
    v33 = v32;
    v35 = v34;
    sub_25454B054();
    v36 = sub_25454B194();
    v38 = v37;
    v39 = v24;
    v41 = v40;
    v88 = v42;
    sub_2544C9C64(v31, v33, v35 & 1);

    v43 = v89;
    sub_254549AA4();
    v44 = sub_254549F94();
    v39(v43, v93);
    if (v44 == 2 || (v44 & 1) == 0)
    {
      sub_25454B644();
    }

    else
    {
      sub_254549EF4();
    }

    v60 = sub_25454B1D4();
    v62 = v61;
    v64 = v63;
    v66 = v65;

    sub_2544C9C64(v36, v38, v41 & 1);

    v67 = sub_25454AF44();
    sub_25454A394();
    v69 = v68;
    v71 = v70;
    v73 = v72;
    v75 = v74;
    v76 = v64 & 1;
    v111 = v64 & 1;
    v96 = 0;
    v77 = sub_25454AF64();
    sub_25454A394();
    v112 = 0;
    *&v104 = v60;
    *(&v104 + 1) = v62;
    LOBYTE(v105) = v76;
    *(&v105 + 1) = v66;
    v106.n128_u8[0] = v67;
    v106.n128_u64[1] = v69;
    *&v107 = v71;
    *(&v107 + 1) = v73;
    *&v108 = v75;
    BYTE8(v108) = 0;
    LOBYTE(v109) = v77;
    *(&v109 + 1) = v78;
    *&v110[0] = v79;
    *(&v110[0] + 1) = v80;
    *&v110[1] = v81;
    BYTE8(v110[1]) = 0;
    sub_25450504C(&v104);
    v117 = v108;
    v118 = v109;
    v119[0] = v110[0];
    *(v119 + 10) = *(v110 + 10);
    v113 = v104;
    v114 = v105;
    v115 = v106;
    v116 = v107;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FBF48, &qword_25454FB90);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FBF68, &qword_25454FBA0);
    sub_254504D58();
    sub_254504E68();
    sub_25454AD44();
    v90[1](v92, v91);
    v117 = v101;
    v118 = v102;
    v119[0] = v103[0];
    *(v119 + 10) = *(v103 + 10);
    v113 = v97;
    v114 = v98;
    v115 = v99;
    v116 = v100;
  }

  v82 = v118;
  v83 = v95;
  v95[4] = v117;
  v83[5] = v82;
  v83[6] = v119[0];
  *(v83 + 106) = *(v119 + 10);
  v84 = v114;
  *v83 = v113;
  v83[1] = v84;
  result = v115;
  v86 = v116;
  v83[2] = v115;
  v83[3] = v86;
  return result;
}

double sub_2544FE2F4@<D0>(uint64_t a2@<X8>)
{
  v79 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC378, &qword_25454FF00);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v71 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC380, &qword_25454FF08);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v89 = &v71 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v88 = &v71 - v10;
  v11 = MEMORY[0x28223BE20](v9);
  v87 = &v71 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v86 = &v71 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v85 = &v71 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v92 = &v71 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v91 = &v71 - v20;
  MEMORY[0x28223BE20](v19);
  v90 = &v71 - v21;
  sub_25454BE14();
  v80 = sub_25454BE04();
  sub_25454BDB4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v22 = sub_254549D44();
  if (v23)
  {
    v24 = v22;
    v25 = v23;
    *v5 = sub_25454AB14();
    *(v5 + 1) = 0;
    v5[16] = 1;
    v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC3A0, &qword_25454FF28);
    sub_2544FEAF8(v24, v25, &v5[*(v26 + 44)]);

    v27 = v90;
    sub_2544B14E8(v5, v90, &qword_27F5FC378, &qword_25454FF00);
    v28 = *(v3 + 56);
    v28(v27, 0, 1, v2);
  }

  else
  {
    v28 = *(v3 + 56);
    v28(v90, 1, 1, v2);
  }

  v29 = sub_254549D54();
  v31 = 1;
  if (v30)
  {
    v32 = v29;
    v33 = v30;
    *v5 = sub_25454AB14();
    *(v5 + 1) = 0;
    v5[16] = 1;
    v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC3A0, &qword_25454FF28);
    sub_2544FEEF8(v32, v33, &v5[*(v34 + 44)]);

    v35 = v91;
    sub_2544B14E8(v5, v91, &qword_27F5FC378, &qword_25454FF00);
    v31 = 0;
  }

  else
  {
    v35 = v91;
  }

  v36 = 1;
  v28(v35, v31, 1, v2);
  v37 = sub_254549D74();
  if (v38)
  {
    v39 = v37;
    v40 = v38;
    *v5 = sub_25454AB14();
    *(v5 + 1) = 0;
    v5[16] = 1;
    v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC3A0, &qword_25454FF28);
    sub_2544FF2F8(v39, v40, &v5[*(v41 + 44)]);

    v42 = v92;
    sub_2544B14E8(v5, v92, &qword_27F5FC378, &qword_25454FF00);
    v36 = 0;
  }

  else
  {
    v42 = v92;
  }

  v43 = 1;
  v28(v42, v36, 1, v2);
  v44 = sub_254549D64();
  if (v45)
  {
    v46 = v44;
    v47 = v45;
    *v5 = sub_25454AB14();
    *(v5 + 1) = 0;
    v5[16] = 1;
    v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC3A0, &qword_25454FF28);
    sub_2544FF6F8(v46, v47, &v5[*(v48 + 44)]);

    v49 = v85;
    sub_2544B14E8(v5, v85, &qword_27F5FC378, &qword_25454FF00);
    v43 = 0;
  }

  else
  {
    v49 = v85;
  }

  v28(v49, v43, 1, v2);
  if (sub_254549D84())
  {
    v81 = 0;
    v82 = 0;
    v77 = 0;
    v78 = 0;
    v75 = 0;
    v76 = 0;
    v83 = 0;
    v84 = 0;
    v73 = 0;
    v74 = 0;
    v72 = 0;
    v50 = 0;
  }

  else
  {
    v81 = sub_25454AB14();
    v114 = 1;
    sub_2544FFAF8(&v109);
    v95 = v111;
    v96 = v112;
    v97 = v113;
    v93 = v109;
    v94 = v110;
    v102 = v111;
    v103 = v112;
    v104 = v113;
    v100 = v109;
    v101 = v110;
    sub_2544AE240(&v93, &v108, &qword_27F5FC388, &qword_25454FF10);
    sub_2544AE150(&v100, &qword_27F5FC388, &qword_25454FF10);
    v77 = *(&v93 + 1);
    v78 = v93;
    v75 = v95;
    v76 = v94;
    v74 = *(&v95 + 1);
    v83 = *(&v96 + 1);
    v84 = *(&v94 + 1);
    v72 = *(&v97 + 1);
    v82 = v97;
    v73 = v96;
    v50 = v114;
  }

  v51 = v91;
  v71 = v50;
  v52 = v86;
  sub_2544AE240(v90, v86, &qword_27F5FC380, &qword_25454FF08);
  v53 = v87;
  sub_2544AE240(v51, v87, &qword_27F5FC380, &qword_25454FF08);
  v54 = v88;
  sub_2544AE240(v92, v88, &qword_27F5FC380, &qword_25454FF08);
  v55 = v49;
  v56 = v89;
  sub_2544AE240(v55, v89, &qword_27F5FC380, &qword_25454FF08);
  v57 = v79;
  sub_2544AE240(v52, v79, &qword_27F5FC380, &qword_25454FF08);
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC390, &qword_25454FF18);
  sub_2544AE240(v53, v57 + v58[12], &qword_27F5FC380, &qword_25454FF08);
  sub_2544AE240(v54, v57 + v58[16], &qword_27F5FC380, &qword_25454FF08);
  sub_2544AE240(v56, v57 + v58[20], &qword_27F5FC380, &qword_25454FF08);
  v59 = v57 + v58[24];
  v93 = v81;
  v61 = v77;
  v60 = v78;
  *&v94 = v50;
  *(&v94 + 1) = v78;
  v63 = v75;
  v62 = v76;
  *&v95 = v77;
  *(&v95 + 1) = v76;
  *&v96 = v84;
  *(&v96 + 1) = v75;
  v64 = v73;
  v65 = v74;
  *&v97 = v74;
  *(&v97 + 1) = v73;
  *&v98 = v83;
  *(&v98 + 1) = v82;
  v66 = v72;
  v99 = v72;
  v67 = v98;
  *(v59 + 64) = v97;
  *(v59 + 80) = v67;
  *(v59 + 96) = v66;
  v68 = v94;
  *v59 = v93;
  *(v59 + 16) = v68;
  v69 = v96;
  *(v59 + 32) = v95;
  *(v59 + 48) = v69;
  sub_2544AE240(&v93, &v100, &qword_27F5FC398, &qword_25454FF20);
  sub_2544AE150(v85, &qword_27F5FC380, &qword_25454FF08);
  sub_2544AE150(v92, &qword_27F5FC380, &qword_25454FF08);
  sub_2544AE150(v91, &qword_27F5FC380, &qword_25454FF08);
  sub_2544AE150(v90, &qword_27F5FC380, &qword_25454FF08);
  v100 = v81;
  *&v101 = v71;
  *(&v101 + 1) = v60;
  *&v102 = v61;
  *(&v102 + 1) = v62;
  *&v103 = v84;
  *(&v103 + 1) = v63;
  *&v104 = v65;
  *(&v104 + 1) = v64;
  v105 = v83;
  v106 = v82;
  v107 = v66;
  sub_2544AE150(&v100, &qword_27F5FC398, &qword_25454FF20);
  sub_2544AE150(v89, &qword_27F5FC380, &qword_25454FF08);
  sub_2544AE150(v88, &qword_27F5FC380, &qword_25454FF08);
  sub_2544AE150(v87, &qword_27F5FC380, &qword_25454FF08);
  sub_2544AE150(v86, &qword_27F5FC380, &qword_25454FF08);

  return result;
}

uint64_t sub_2544FEAF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_25454AE74();
  v49 = *(v6 - 8);
  v50 = v6;
  MEMORY[0x28223BE20](v6);
  v48 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC3A8, &qword_25454FF30);
  v53 = *(v8 - 8);
  v54 = v8;
  v9 = MEMORY[0x28223BE20](v8);
  v52 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v12 = &v42 - v11;
  sub_25454BE14();
  v51 = sub_25454BE04();
  sub_25454BDB4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v55 = sub_25454BCF4();
  v56 = v13;
  sub_2544AECF0();
  v14 = sub_25454B274();
  v44 = v15;
  v45 = v14;
  v46 = v16;
  v47 = v17;
  v55 = a1;
  v56 = a2;

  v18 = sub_25454B274();
  v20 = v19;
  v22 = v21;
  LODWORD(v55) = sub_25454AE44();
  v23 = sub_25454B1E4();
  v25 = v24;
  v27 = v26;
  v29 = v28;
  sub_2544C9C64(v18, v20, v22 & 1);

  v55 = v23;
  v56 = v25;
  v30 = v27 & 1;
  v57 = v27 & 1;
  v58 = v29;
  v31 = v48;
  sub_25454AE64();
  v43 = v12;
  v32 = v50;
  sub_25454B344();
  (*(v49 + 8))(v31, v32);
  sub_2544C9C64(v23, v25, v30);

  v34 = v52;
  v33 = v53;
  v35 = *(v53 + 16);
  v36 = v54;
  v35(v52, v12, v54);
  v37 = v44;
  v38 = v45;
  *a3 = v45;
  *(a3 + 8) = v37;
  LOBYTE(v18) = v46 & 1;
  *(a3 + 16) = v46 & 1;
  *(a3 + 24) = v47;
  *(a3 + 32) = 0;
  *(a3 + 40) = 1;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC3B0, &qword_25454FF38);
  v35((a3 + *(v39 + 64)), v34, v36);
  sub_2544A8F00(v38, v37, v18);
  v40 = *(v33 + 8);

  v40(v43, v36);
  v40(v34, v36);
  sub_2544C9C64(v38, v37, v18);
}

uint64_t sub_2544FEEF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_25454AE74();
  v49 = *(v6 - 8);
  v50 = v6;
  MEMORY[0x28223BE20](v6);
  v48 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC3A8, &qword_25454FF30);
  v53 = *(v8 - 8);
  v54 = v8;
  v9 = MEMORY[0x28223BE20](v8);
  v52 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v12 = &v42 - v11;
  sub_25454BE14();
  v51 = sub_25454BE04();
  sub_25454BDB4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v55 = sub_25454BCF4();
  v56 = v13;
  sub_2544AECF0();
  v14 = sub_25454B274();
  v44 = v15;
  v45 = v14;
  v46 = v16;
  v47 = v17;
  v55 = a1;
  v56 = a2;

  v18 = sub_25454B274();
  v20 = v19;
  v22 = v21;
  LODWORD(v55) = sub_25454AE44();
  v23 = sub_25454B1E4();
  v25 = v24;
  v27 = v26;
  v29 = v28;
  sub_2544C9C64(v18, v20, v22 & 1);

  v55 = v23;
  v56 = v25;
  v30 = v27 & 1;
  v57 = v27 & 1;
  v58 = v29;
  v31 = v48;
  sub_25454AE64();
  v43 = v12;
  v32 = v50;
  sub_25454B344();
  (*(v49 + 8))(v31, v32);
  sub_2544C9C64(v23, v25, v30);

  v34 = v52;
  v33 = v53;
  v35 = *(v53 + 16);
  v36 = v54;
  v35(v52, v12, v54);
  v37 = v44;
  v38 = v45;
  *a3 = v45;
  *(a3 + 8) = v37;
  LOBYTE(v18) = v46 & 1;
  *(a3 + 16) = v46 & 1;
  *(a3 + 24) = v47;
  *(a3 + 32) = 0;
  *(a3 + 40) = 1;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC3B0, &qword_25454FF38);
  v35((a3 + *(v39 + 64)), v34, v36);
  sub_2544A8F00(v38, v37, v18);
  v40 = *(v33 + 8);

  v40(v43, v36);
  v40(v34, v36);
  sub_2544C9C64(v38, v37, v18);
}

uint64_t sub_2544FF2F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_25454AE74();
  v49 = *(v6 - 8);
  v50 = v6;
  MEMORY[0x28223BE20](v6);
  v48 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC3A8, &qword_25454FF30);
  v53 = *(v8 - 8);
  v54 = v8;
  v9 = MEMORY[0x28223BE20](v8);
  v52 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v12 = &v42 - v11;
  sub_25454BE14();
  v51 = sub_25454BE04();
  sub_25454BDB4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v55 = sub_25454BCF4();
  v56 = v13;
  sub_2544AECF0();
  v14 = sub_25454B274();
  v44 = v15;
  v45 = v14;
  v46 = v16;
  v47 = v17;
  v55 = a1;
  v56 = a2;

  v18 = sub_25454B274();
  v20 = v19;
  v22 = v21;
  LODWORD(v55) = sub_25454AE44();
  v23 = sub_25454B1E4();
  v25 = v24;
  v27 = v26;
  v29 = v28;
  sub_2544C9C64(v18, v20, v22 & 1);

  v55 = v23;
  v56 = v25;
  v30 = v27 & 1;
  v57 = v27 & 1;
  v58 = v29;
  v31 = v48;
  sub_25454AE64();
  v43 = v12;
  v32 = v50;
  sub_25454B344();
  (*(v49 + 8))(v31, v32);
  sub_2544C9C64(v23, v25, v30);

  v34 = v52;
  v33 = v53;
  v35 = *(v53 + 16);
  v36 = v54;
  v35(v52, v12, v54);
  v37 = v44;
  v38 = v45;
  *a3 = v45;
  *(a3 + 8) = v37;
  LOBYTE(v18) = v46 & 1;
  *(a3 + 16) = v46 & 1;
  *(a3 + 24) = v47;
  *(a3 + 32) = 0;
  *(a3 + 40) = 1;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC3B0, &qword_25454FF38);
  v35((a3 + *(v39 + 64)), v34, v36);
  sub_2544A8F00(v38, v37, v18);
  v40 = *(v33 + 8);

  v40(v43, v36);
  v40(v34, v36);
  sub_2544C9C64(v38, v37, v18);
}

uint64_t sub_2544FF6F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_25454AE74();
  v49 = *(v6 - 8);
  v50 = v6;
  MEMORY[0x28223BE20](v6);
  v48 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC3A8, &qword_25454FF30);
  v53 = *(v8 - 8);
  v54 = v8;
  v9 = MEMORY[0x28223BE20](v8);
  v52 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v12 = &v42 - v11;
  sub_25454BE14();
  v51 = sub_25454BE04();
  sub_25454BDB4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v55 = sub_25454BCF4();
  v56 = v13;
  sub_2544AECF0();
  v14 = sub_25454B274();
  v44 = v15;
  v45 = v14;
  v46 = v16;
  v47 = v17;
  v55 = a1;
  v56 = a2;

  v18 = sub_25454B274();
  v20 = v19;
  v22 = v21;
  LODWORD(v55) = sub_25454AE44();
  v23 = sub_25454B1E4();
  v25 = v24;
  v27 = v26;
  v29 = v28;
  sub_2544C9C64(v18, v20, v22 & 1);

  v55 = v23;
  v56 = v25;
  v30 = v27 & 1;
  v57 = v27 & 1;
  v58 = v29;
  v31 = v48;
  sub_25454AE64();
  v43 = v12;
  v32 = v50;
  sub_25454B344();
  (*(v49 + 8))(v31, v32);
  sub_2544C9C64(v23, v25, v30);

  v34 = v52;
  v33 = v53;
  v35 = *(v53 + 16);
  v36 = v54;
  v35(v52, v12, v54);
  v37 = v44;
  v38 = v45;
  *a3 = v45;
  *(a3 + 8) = v37;
  LOBYTE(v18) = v46 & 1;
  *(a3 + 16) = v46 & 1;
  *(a3 + 24) = v47;
  *(a3 + 32) = 0;
  *(a3 + 40) = 1;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC3B0, &qword_25454FF38);
  v35((a3 + *(v39 + 64)), v34, v36);
  sub_2544A8F00(v38, v37, v18);
  v40 = *(v33 + 8);

  v40(v43, v36);
  v40(v34, v36);
  sub_2544C9C64(v38, v37, v18);
}

uint64_t sub_2544FFAF8@<X0>(uint64_t a1@<X8>)
{
  sub_25454BE14();
  sub_25454BE04();
  sub_25454BDB4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_254549D34();
  sub_25454BCF4();
  sub_25454BCF4();
  sub_2544AECF0();
  v20 = sub_25454B274();
  v21 = v2;
  v4 = v3;
  v19 = v5;
  v6 = sub_25454B274();
  v8 = v7;
  v10 = v9;
  sub_25454AE44();
  v11 = sub_25454B1E4();
  v13 = v12;
  v15 = v14;
  v17 = v16;
  sub_2544C9C64(v6, v8, v10 & 1);

  *a1 = v20;
  *(a1 + 8) = v4;
  *(a1 + 16) = v19 & 1;
  *(a1 + 24) = v21;
  *(a1 + 32) = 0;
  *(a1 + 40) = 1;
  *(a1 + 48) = v11;
  *(a1 + 56) = v13;
  *(a1 + 64) = v15 & 1;
  *(a1 + 72) = v17;
  sub_2544A8F00(v20, v4, v19 & 1);

  sub_2544A8F00(v11, v13, v15 & 1);

  sub_2544C9C64(v11, v13, v15 & 1);

  sub_2544C9C64(v20, v4, v19 & 1);
}

uint64_t sub_2544FFD54(uint64_t a1)
{
  v3 = sub_25454AD84();
  MEMORY[0x28223BE20](v3 - 8);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FBEA8, &qword_25454FAC8);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10[-v6];
  sub_25454AD64();
  v11 = *(a1 + 16);
  v12 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FBEF0, &qword_25454FB00);
  sub_2544AE1F0(&qword_27F5FBEF8, &qword_27F5FBEF0, &qword_25454FB00, MEMORY[0x277CDF028]);
  sub_25454A494();
  v8 = sub_2544AE1F0(&qword_27F5FBEB0, &qword_27F5FBEA8, &qword_25454FAC8, MEMORY[0x277CDD7A8]);
  MEMORY[0x259C0DED0](v7, v4, v8);
  return (*(v5 + 8))(v7, v4);
}

double sub_2544FFF48@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, uint64_t a5@<X3>)
{
  v15[1] = a4;
  v8 = type metadata accessor for AccessoryDetailsView.ToolbarModifier(0, a2, a3, a5);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v15 - v10;
  sub_25454BE14();
  sub_25454BE04();
  sub_25454BDB4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  (*(v9 + 16))(v11, a1, v8);
  v12 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = a2;
  *(v13 + 24) = a3;
  (*(v9 + 32))(v13 + v12, v11, v8);
  sub_25454B7F4();

  return result;
}

double sub_254500120(uint64_t a1)
{
  sub_25454BE14();
  sub_25454BE04();
  sub_25454BDB4();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  if (*a1)
  {
    (*a1)(isCurrentExecutor);
  }

  v3 = *(a1 + 24);
  if (v3)
  {
    [v3 setNavigationBarHidden:0 animated:0];
  }

  return result;
}

void sub_2545001E8(uint64_t *a1@<X8>)
{
  sub_25454BE14();
  sub_25454BE04();
  sub_25454BDB4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v2 = sub_25454B704();

  *a1 = v2;
}

uint64_t sub_254500294(uint64_t a1)
{
  v3 = sub_25454AD84();
  MEMORY[0x28223BE20](v3 - 8);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FBEC0, &qword_25454FAD8);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10[-v6];
  sub_25454AD74();
  v11 = *(a1 + 16);
  v12 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FBC38, &qword_25454F670);
  sub_2544AE1F0(&qword_27F5FBC30, &qword_27F5FBC38, &qword_25454F670, MEMORY[0x277CDF028]);
  sub_25454A494();
  v8 = sub_2544AE1F0(&qword_27F5FBEC8, &qword_27F5FBEC0, &qword_25454FAD8, MEMORY[0x277CDD7A8]);
  MEMORY[0x259C0DED0](v7, v4, v8);
  return (*(v5 + 8))(v7, v4);
}

double sub_254500488@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, uint64_t a5@<X3>)
{
  v17[0] = a1;
  v17[1] = a4;
  v7 = type metadata accessor for AccessoryDetailsView.ToolbarModifier(0, a2, a3, a5);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v17 - v9;
  v11 = sub_25454A384();
  MEMORY[0x28223BE20](v11 - 8);
  v13 = v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25454BE14();
  sub_25454BE04();
  sub_25454BDB4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_25454A364();
  (*(v8 + 16))(v10, v17[0], v7);
  v14 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = a2;
  *(v15 + 24) = a3;
  (*(v8 + 32))(v15 + v14, v10, v7);
  MEMORY[0x259C0E900](v13, sub_25450488C, v15);

  return result;
}

double sub_254500684(void (**a1)(uint64_t))
{
  sub_25454BE14();
  sub_25454BE04();
  sub_25454BDB4();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  if (*a1)
  {
    (*a1)(isCurrentExecutor);
  }

  return result;
}

uint64_t sub_254500730@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v50 = a1;
  v51 = a3;
  swift_getWitnessTable();
  v4 = sub_25454AE24();
  v5 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5FBE78, &qword_25454FAA8);
  v41 = v4;
  WitnessTable = swift_getWitnessTable();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5FBE80, &qword_25454FAB0);
  sub_2545044BC();
  v68 = v4;
  v69 = v5;
  v40 = v5;
  v70 = WitnessTable;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v39 = WitnessTable;
  v7 = OpaqueTypeConformance2;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v49 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v47 = &v37 - v8;
  v42 = *(a2 + 16);
  sub_25454A714();
  v9 = sub_25454A714();
  v46 = *(a2 + 24);
  v66 = v46;
  v67 = MEMORY[0x277CDF918];
  v64 = swift_getWitnessTable();
  v65 = MEMORY[0x277CDFC48];
  v10 = swift_getWitnessTable();
  v68 = v9;
  v69 = v10;
  v11 = swift_getOpaqueTypeMetadata2();
  v68 = v9;
  v69 = v10;
  v12 = swift_getOpaqueTypeConformance2();
  v68 = v11;
  v69 = v12;
  swift_getOpaqueTypeMetadata2();
  swift_getTupleTypeMetadata2();
  sub_25454BAF4();
  swift_getWitnessTable();
  sub_25454B834();
  sub_25454A714();
  v13 = sub_25454C054();
  v68 = v41;
  v69 = v5;
  v70 = WitnessTable;
  OpaqueTypeConformance2 = v7;
  v14 = swift_getOpaqueTypeConformance2();
  v38 = v14;
  v62 = swift_getWitnessTable();
  v63 = MEMORY[0x277CDF918];
  v61 = swift_getWitnessTable();
  v37 = v13;
  v15 = swift_getWitnessTable();
  v68 = OpaqueTypeMetadata2;
  v69 = v13;
  v70 = v14;
  OpaqueTypeConformance2 = v15;
  v16 = swift_getOpaqueTypeMetadata2();
  v43 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v18 = &v37 - v17;
  v44 = v19;
  v20 = sub_25454A714();
  v45 = *(v20 - 8);
  v21 = MEMORY[0x28223BE20](v20);
  v23 = &v37 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v25 = &v37 - v24;
  v26 = v42;
  v27 = v46;
  v56 = v42;
  v57 = v46;
  v28 = v48;
  v58 = v48;
  swift_checkMetadataState();
  v29 = v47;
  sub_25454B554();
  v53 = v26;
  v54 = v27;
  v55 = v28;
  sub_25454AC14();
  v30 = swift_checkMetadataState();
  v50 = v15;
  v31 = v38;
  v32 = OpaqueTypeMetadata2;
  sub_25454B534();
  (*(v49 + 8))(v29, v32);
  if (*(v28 + 24))
  {
    sub_25454AF54();
  }

  else
  {
    sub_25454AF24();
  }

  sub_25454A734();
  v68 = v32;
  v69 = v30;
  v70 = v31;
  OpaqueTypeConformance2 = v50;
  v33 = swift_getOpaqueTypeConformance2();
  v34 = v44;
  sub_25454B394();
  (*(v43 + 8))(v18, v34);
  v59 = v33;
  v60 = MEMORY[0x277CE0880];
  swift_getWitnessTable();
  sub_2544DAD5C();
  v35 = *(v45 + 8);
  v35(v23, v20);
  sub_2544DAD5C();
  return (v35)(v25, v20);
}

double sub_254500EC4@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v63 = a2;
  v64 = a3;
  v75 = a4;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FBED8, &qword_25454FAE8);
  v70 = *(v74 - 8);
  MEMORY[0x28223BE20](v74);
  v69 = &v59 - v5;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FBEE0, &qword_25454FAF0);
  v62 = *(v68 - 8);
  MEMORY[0x28223BE20](v68);
  v7 = &v59 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FBEA0, &qword_25454FAC0);
  v61 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v59 - v9;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FBEE8, &qword_25454FAF8);
  v60 = *(v66 - 8);
  MEMORY[0x28223BE20](v66);
  v12 = &v59 - v11;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FBEB8, &qword_25454FAD0);
  v59 = *(v65 - 8);
  MEMORY[0x28223BE20](v65);
  v14 = &v59 - v13;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FBE90, &qword_25454FAB8);
  MEMORY[0x28223BE20](v71);
  v67 = &v59 - v15;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FBE80, &qword_25454FAB0);
  v16 = MEMORY[0x28223BE20](v73);
  v18 = &v59 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v59 - v19;
  sub_25454BE14();
  v72 = sub_25454BE04();
  sub_25454BDB4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (*a1 && (*(a1 + 16) & 1) == 0)
  {
    v28 = *(a1 + 24);
    v29 = type metadata accessor for AccessoryDetailsView.ToolbarModifier(0, v63, v64, v21);
    if (v28)
    {
      sub_2544FFD54(v29);
      v30 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5FBEA8, &qword_25454FAC8);
      v31 = MEMORY[0x277CDD7A8];
      v32 = sub_2544AE1F0(&qword_27F5FBEB0, &qword_27F5FBEA8, &qword_25454FAC8, MEMORY[0x277CDD7A8]);
      v76 = v30;
      v77 = v32;
      OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
      MEMORY[0x259C0DED0](v10, v8, OpaqueTypeConformance2);
      v76 = v8;
      v77 = OpaqueTypeConformance2;
      v64 = swift_getOpaqueTypeConformance2();
      v34 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5FBEC0, &qword_25454FAD8);
      v35 = sub_2544AE1F0(&qword_27F5FBEC8, &qword_27F5FBEC0, &qword_25454FAD8, v31);
      v76 = v34;
      v77 = v35;
      v36 = swift_getOpaqueTypeConformance2();
      v76 = v65;
      v77 = v36;
      v37 = swift_getOpaqueTypeConformance2();
      v39 = v67;
      v38 = v68;
      MEMORY[0x259C0DEE0](v7, v68, v66, v64, v37);
      (*(v62 + 8))(v7, v38);
      (*(v61 + 8))(v10, v8);
    }

    else
    {
      sub_254500294(v29);
      v40 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5FBEC0, &qword_25454FAD8);
      v63 = MEMORY[0x277CDD7A8];
      v41 = sub_2544AE1F0(&qword_27F5FBEC8, &qword_27F5FBEC0, &qword_25454FAD8, MEMORY[0x277CDD7A8]);
      v76 = v40;
      v77 = v41;
      v64 = swift_getOpaqueTypeConformance2();
      v42 = v65;
      MEMORY[0x259C0DED0](v14, v65, v64);
      v43 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5FBEA8, &qword_25454FAC8);
      v44 = sub_2544AE1F0(&qword_27F5FBEB0, &qword_27F5FBEA8, &qword_25454FAC8, v63);
      v76 = v43;
      v77 = v44;
      v45 = swift_getOpaqueTypeConformance2();
      v76 = v8;
      v77 = v45;
      v46 = swift_getOpaqueTypeConformance2();
      v76 = v42;
      v77 = v64;
      v47 = swift_getOpaqueTypeConformance2();
      v48 = v67;
      v49 = v66;
      MEMORY[0x259C0DEF0](v12, v68, v66, v46, v47);
      (*(v60 + 8))(v12, v49);
      v50 = v14;
      v39 = v48;
      (*(v59 + 8))(v50, v42);
    }

    v51 = sub_25450457C();
    v52 = v69;
    v53 = v71;
    MEMORY[0x259C0DED0](v39, v71, v51);
    v54 = v70;
    v55 = v74;
    (*(v70 + 16))(v18, v52, v74);
    (*(v54 + 56))(v18, 0, 1, v55);
    v76 = v53;
    v77 = v51;
    v56 = swift_getOpaqueTypeConformance2();
    MEMORY[0x259C0DF00](v18, v55, v56);
    sub_2544AE150(v18, &qword_27F5FBE80, &qword_25454FAB0);
    (*(v54 + 8))(v52, v55);
    v25 = &qword_27F5FBE90;
    v26 = &qword_25454FAB8;
    v27 = v39;
  }

  else
  {
    v22 = v74;
    (*(v70 + 56))(v18, 1, 1, v74);
    v23 = sub_25450457C();
    v76 = v71;
    v77 = v23;
    v24 = swift_getOpaqueTypeConformance2();
    MEMORY[0x259C0DF00](v18, v22, v24);
    v25 = &qword_27F5FBE80;
    v26 = &qword_25454FAB0;
    v27 = v18;
  }

  sub_2544AE150(v27, v25, v26);
  v57 = sub_2545044BC();
  MEMORY[0x259C0DED0](v20, v73, v57);
  sub_2544AE150(v20, &qword_27F5FBE80, &qword_25454FAB0);

  return result;
}

double sub_25450176C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v42 = a4;
  v38 = a2;
  sub_25454A714();
  sub_25454A714();
  v6 = MEMORY[0x277CDF918];
  v39 = a3;
  v55 = a3;
  v56 = MEMORY[0x277CDF918];
  WitnessTable = swift_getWitnessTable();
  v54 = MEMORY[0x277CDFC48];
  swift_getWitnessTable();
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  swift_getTupleTypeMetadata2();
  v35 = sub_25454BAF4();
  v33[1] = swift_getWitnessTable();
  v7 = sub_25454B834();
  v37 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = v33 - v8;
  v11 = v10;
  v12 = sub_25454A714();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v34 = v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v36 = v33 - v16;
  v17 = sub_25454C054();
  v40 = *(v17 - 8);
  v18 = MEMORY[0x28223BE20](v17);
  v20 = v33 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v43 = v33 - v21;
  sub_25454BE14();
  v41 = sub_25454BE04();
  sub_25454BDB4();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  if (*(a1 + 24))
  {
    (*(v13 + 56))(v20, 1, 1, v12);
    v44 = swift_getWitnessTable();
    v45 = v6;
    swift_getWitnessTable();
  }

  else
  {
    MEMORY[0x28223BE20](isCurrentExecutor);
    v23 = v39;
    v33[-4] = v38;
    v33[-3] = v23;
    v33[-2] = a1;
    sub_25454AB14();
    v24 = v9;
    sub_25454B824();
    sub_25454AF34();
    v25 = swift_getWitnessTable();
    v26 = v34;
    sub_25454B544();
    (*(v37 + 8))(v24, v11);
    v49 = v25;
    v50 = v6;
    swift_getWitnessTable();
    v27 = v36;
    sub_2544DAD5C();
    v28 = *(v13 + 8);
    v28(v26, v12);
    sub_2544DAD5C();
    v28(v27, v12);
    v6 = MEMORY[0x277CDF918];
    (*(v13 + 32))(v20, v26, v12);
    (*(v13 + 56))(v20, 0, 1, v12);
  }

  v29 = v40;
  v30 = v43;
  (*(v40 + 16))(v43, v20, v17);
  v31 = *(v29 + 8);
  v31(v20, v17);
  v47 = swift_getWitnessTable();
  v48 = v6;
  v46 = swift_getWitnessTable();
  swift_getWitnessTable();
  sub_2544DAD5C();
  v31(v30, v17);

  return result;
}

double sub_254501E1C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v52 = a1;
  v58 = a4;
  v6 = sub_25454AC04();
  v56 = *(v6 - 8);
  v57 = v6;
  MEMORY[0x28223BE20](v6);
  v55 = &WitnessTable - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = a2;
  v8 = sub_25454A714();
  v50 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v47 = &WitnessTable - v9;
  v10 = sub_25454A714();
  v51 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v49 = &WitnessTable - v11;
  v54 = a3;
  v68 = a3;
  v69 = MEMORY[0x277CDF918];
  WitnessTable = swift_getWitnessTable();
  v66 = WitnessTable;
  v67 = MEMORY[0x277CDFC48];
  v12 = swift_getWitnessTable();
  v64 = v10;
  v65 = v12;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v46 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v42 = &WitnessTable - v14;
  v64 = v10;
  v65 = v12;
  v41 = v12;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v64 = OpaqueTypeMetadata2;
  v65 = OpaqueTypeConformance2;
  v40 = OpaqueTypeConformance2;
  v16 = swift_getOpaqueTypeMetadata2();
  v43 = *(v16 - 8);
  v17 = MEMORY[0x28223BE20](v16);
  v48 = &WitnessTable - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v17);
  v21 = &WitnessTable - v20;
  MEMORY[0x28223BE20](v19);
  v45 = &WitnessTable - v22;
  sub_25454BE14();
  v44 = sub_25454BE04();
  sub_25454BDB4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FBED0, &qword_25454FAE0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_25454D8D0;
  v24 = sub_25454AF24();
  *(inited + 32) = v24;
  v25 = sub_25454AF44();
  *(inited + 33) = v25;
  v26 = sub_25454AF64();
  *(inited + 34) = v26;
  sub_25454AF54();
  sub_25454AF54();
  if (sub_25454AF54() != v24)
  {
    sub_25454AF54();
  }

  sub_25454AF54();
  if (sub_25454AF54() != v25)
  {
    sub_25454AF54();
  }

  sub_25454AF54();
  if (sub_25454AF54() != v26)
  {
    sub_25454AF54();
  }

  type metadata accessor for AccessoryDetailsView.ToolbarModifier(0, v53, v54, v27);
  v28 = v47;
  sub_25454B544();
  v29 = v49;
  sub_25454B594();
  (*(v50 + 8))(v28, v8);
  sub_25454AEE4();
  sub_25454BA64();
  v30 = v42;
  sub_25454B4B4();
  (*(v51 + 8))(v29, v10);
  v31 = v55;
  sub_25454ABF4();
  v32 = v40;
  sub_25454B334();
  (*(v56 + 8))(v31, v57);
  (*(v46 + 8))(v30, OpaqueTypeMetadata2);
  v64 = OpaqueTypeMetadata2;
  v65 = v32;
  v33 = swift_getOpaqueTypeConformance2();
  v34 = v45;
  sub_2544DAD5C();
  v35 = v43;
  v36 = *(v43 + 8);
  v36(v21, v16);
  v37 = v48;
  (*(v35 + 16))(v48, v34, v16);
  v62 = 0;
  v63 = 1;
  v64 = v37;
  v65 = &v62;
  v61[0] = v16;
  v61[1] = MEMORY[0x277CE1180];
  v59 = v33;
  v60 = MEMORY[0x277CE1170];
  sub_2544E307C(&v64, 2uLL, v61);
  v36(v34, v16);
  v36(v37, v16);

  return result;
}

void *sub_2545025C8()
{

  sub_2544AE150(v0 + 32, &qword_27F5FBCC8, &qword_25454F720);

  __swift_destroy_boxed_opaque_existential_0((v0 + 128));

  return v0;
}

uint64_t sub_254502698()
{
  sub_2545025C8();

  return swift_deallocClassInstance();
}

uint64_t sub_25450281C()
{
  v1 = *(*v0 + 216);

  return v1;
}

uint64_t sub_254502850()
{
  v1 = *(*v0 + 232);

  return v1;
}

uint64_t sub_254502884()
{
  v1 = *(*v0 + 248);

  return v1;
}

uint64_t sub_2545028B8()
{
  v1 = *(*v0 + 264);

  return v1;
}

uint64_t sub_2545028EC()
{
  v1 = *(*v0 + 280);

  return v1;
}

uint64_t sub_254502920()
{
  v1 = *(*v0 + 296);

  return v1;
}

uint64_t sub_254502954()
{
  v1 = *(*v0 + 312);

  return v1;
}

uint64_t sub_2545029B0(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_2545029C0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

double sub_254502A24(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
  }

  return result;
}

uint64_t sub_254502A34()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

void sub_254502A6C()
{
  v1 = [*(v0 + 16) popViewControllerAnimated_];
}

unint64_t sub_254502AAC(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_254502B78(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_2544AE59C(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_254502B78(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_254502C84(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_25454C194();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

void *sub_254502C84(uint64_t a1, unint64_t a2)
{
  v3 = sub_254502CD0(a1, a2);
  sub_254502E00(&unk_28666D8F0);
  return v3;
}

void *sub_254502CD0(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = sub_254502EEC(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_25454C194();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_25454BD54();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_254502EEC(v10, 0);
        result = sub_25454C144();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_254502E00(uint64_t result)
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
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_254502F60(result, v11, 1, v3);
  v3 = result;
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
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_254502EEC(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC618, &unk_2545503A0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_254502F60(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC618, &unk_2545503A0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

unint64_t sub_254503060()
{
  result = qword_27F5FBD00;
  if (!qword_27F5FBD00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5FBCF8, &qword_25454F750);
    sub_254503118();
    sub_2544AE1F0(&qword_27F5FBD38, &qword_27F5FBD40, &qword_25454F770, &unk_25454FA58);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5FBD00);
  }

  return result;
}

unint64_t sub_254503118()
{
  result = qword_27F5FBD08;
  if (!qword_27F5FBD08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5FBD10, &qword_25454F758);
    sub_2544AE1F0(&qword_27F5FBD18, &qword_27F5FBD20, &unk_25454F760, MEMORY[0x277CE1198]);
    sub_2544AE1F0(&qword_27F5FBD28, &qword_27F5FBD30, &unk_254550C20, MEMORY[0x277CE0728]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5FBD08);
  }

  return result;
}

uint64_t objectdestroy_2Tm()
{
  v1 = type metadata accessor for AccessoryDetailsView(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;
  v6 = sub_254549AB4();
  (*(*(v6 - 8) + 8))(v0 + v3, v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FBCD8, &qword_25454F730);

  __swift_destroy_boxed_opaque_existential_0((v0 + v3 + v1[5]));

  if (*(v0 + v3 + v1[6]))
  {
  }

  MEMORY[0x259C0FEC0](v5 + v1[7]);

  __swift_destroy_boxed_opaque_existential_0((v5 + v1[18]));

  if (*(v5 + v1[19] + 24))
  {
    __swift_destroy_boxed_opaque_existential_0((v5 + v1[19]));
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_254503470(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for AccessoryDetailsView(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t sub_254503514(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FBCD8, &qword_25454F730);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 24);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_2545035F4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FBCD8, &qword_25454F730);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 24) = (a2 - 1);
  }

  return result;
}

void sub_2545036BC(uint64_t a1)
{
  sub_25450391C(319);
  if (v1 <= 0x3F)
  {
    sub_2545039C0(319, &qword_27F5FBD70, &qword_27F5FBCE0, &qword_25454F738, MEMORY[0x277CE10B8]);
    if (v2 <= 0x3F)
    {
      sub_2545039C0(319, &qword_27F5FBD78, &qword_27F5FBD80, &qword_25454F7F8, MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        sub_254503974(319, &qword_27F5FAE28, MEMORY[0x277D839B0]);
        if (v4 <= 0x3F)
        {
          sub_254503974(319, &qword_27F5FBD88, MEMORY[0x277D837D0]);
          if (v5 <= 0x3F)
          {
            sub_2545039C0(319, &qword_27F5FBD90, &qword_27F5FBCE8, &qword_25454F740, MEMORY[0x277CE10B8]);
            if (v6 <= 0x3F)
            {
              sub_2545039C0(319, &qword_27F5FBD98, &qword_27F5FBCC8, &qword_25454F720, MEMORY[0x277CE10B8]);
              if (v7 <= 0x3F)
              {
                sub_254503974(319, &qword_27F5FBDA0, MEMORY[0x277CE11C8]);
                if (v8 <= 0x3F)
                {
                  sub_2545039C0(319, &qword_27F5FBDA8, &qword_27F5FBCD0, &qword_25454F728, MEMORY[0x277CE10B8]);
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

void sub_25450391C(uint64_t a1)
{
  if (!qword_27F5FBD68)
  {
    sub_254549AB4();
    v1 = sub_25454B7D4();
    if (!v2)
    {
      atomic_store(v1, &qword_27F5FBD68);
    }
  }
}

void sub_254503974(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_25454B7D4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_2545039C0(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

unint64_t sub_254503AC0()
{
  result = qword_27F5FBDB0;
  if (!qword_27F5FBDB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5FBD50, &qword_25454F780);
    sub_254503B4C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5FBDB0);
  }

  return result;
}

unint64_t sub_254503B4C()
{
  result = qword_27F5FBDB8;
  if (!qword_27F5FBDB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5FBD48, &qword_25454F778);
    sub_2544AE1F0(&qword_27F5FBDC0, qword_27F5FBDC8, &qword_25454F9A0, MEMORY[0x277CDDA18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5FBDB8);
  }

  return result;
}

void sub_254503C04(uint64_t a1)
{
  sub_2545039C0(319, &qword_27F5FBD78, &qword_27F5FBD80, &qword_25454F7F8, MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    sub_2545040F0(319);
    if (v2 <= 0x3F)
    {
      swift_checkMetadataState();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_254503CD8(unint64_t a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (v5 <= 0x7FFFFFFE)
  {
    v7 = 2147483646;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v7;
  if (a2 <= v7)
  {
    goto LABEL_26;
  }

  v9 = ((v6 + 32) & ~v6) + *(*(*(a3 + 16) - 8) + 64);
  v10 = 8 * v9;
  if (v9 <= 3)
  {
    v13 = ((v8 + ~(-1 << v10)) >> v10) + 1;
    if (HIWORD(v13))
    {
      v11 = *(a1 + v9);
      if (!v11)
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 > 0xFF)
    {
      v11 = *(a1 + v9);
      if (!*(a1 + v9))
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 < 2)
    {
LABEL_26:
      if (v5 > 0x7FFFFFFE)
      {
        return (*(v4 + 48))(((a1 & 0xFFFFFFFFFFFFFFF8) + v6 + 32) & ~v6);
      }

      v15 = *a1;
      if (*a1 >= 0xFFFFFFFFuLL)
      {
        LODWORD(v15) = -1;
      }

      if ((v15 + 1) >= 2)
      {
        return v15;
      }

      else
      {
        return 0;
      }
    }
  }

  v11 = *(a1 + v9);
  if (!*(a1 + v9))
  {
    goto LABEL_26;
  }

LABEL_15:
  v14 = (v11 - 1) << v10;
  if (v9 > 3)
  {
    v14 = 0;
  }

  if (v9)
  {
    if (v9 > 3)
    {
      LODWORD(v9) = 4;
    }

    if (v9 > 2)
    {
      if (v9 == 3)
      {
        LODWORD(v9) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v9) = *a1;
      }
    }

    else if (v9 == 1)
    {
      LODWORD(v9) = *a1;
    }

    else
    {
      LODWORD(v9) = *a1;
    }
  }

  return v7 + (v9 | v14) + 1;
}

void sub_254503E70(unint64_t a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFE)
  {
    v8 = 2147483646;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(v6 + 80);
  v10 = ((v9 + 32) & ~v9) + *(*(*(a4 + 16) - 8) + 64);
  v11 = a3 >= v8;
  v12 = a3 - v8;
  if (v12 != 0 && v11)
  {
    if (v10 <= 3)
    {
      v16 = ((v12 + ~(-1 << (8 * v10))) >> (8 * v10)) + 1;
      if (HIWORD(v16))
      {
        v13 = 4;
      }

      else
      {
        if (v16 < 0x100)
        {
          v17 = 1;
        }

        else
        {
          v17 = 2;
        }

        if (v16 >= 2)
        {
          v13 = v17;
        }

        else
        {
          v13 = 0;
        }
      }
    }

    else
    {
      v13 = 1;
    }
  }

  else
  {
    v13 = 0;
  }

  if (v8 < a2)
  {
    v14 = ~v8 + a2;
    if (v10 < 4)
    {
      v15 = (v14 >> (8 * v10)) + 1;
      if (v10)
      {
        v18 = v14 & ~(-1 << (8 * v10));
        bzero(a1, v10);
        if (v10 != 3)
        {
          if (v10 == 2)
          {
            *a1 = v18;
            if (v13 > 1)
            {
LABEL_46:
              if (v13 == 2)
              {
                *(a1 + v10) = v15;
              }

              else
              {
                *(a1 + v10) = v15;
              }

              return;
            }
          }

          else
          {
            *a1 = v14;
            if (v13 > 1)
            {
              goto LABEL_46;
            }
          }

          goto LABEL_43;
        }

        *a1 = v18;
        *(a1 + 2) = BYTE2(v18);
      }

      if (v13 > 1)
      {
        goto LABEL_46;
      }
    }

    else
    {
      bzero(a1, v10);
      *a1 = v14;
      v15 = 1;
      if (v13 > 1)
      {
        goto LABEL_46;
      }
    }

LABEL_43:
    if (v13)
    {
      *(a1 + v10) = v15;
    }

    return;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *(a1 + v10) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *(a1 + v10) = 0;
  }

  else if (v13)
  {
    *(a1 + v10) = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return;
  }

LABEL_31:
  if (v7 > 0x7FFFFFFE)
  {
    v19 = *(v6 + 56);
    v20 = ((a1 & 0xFFFFFFFFFFFFFFF8) + v9 + 32) & ~v9;

    v19(v20);
  }

  else if (a2 > 0x7FFFFFFE)
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    *a1 = a2 - 0x7FFFFFFF;
  }

  else
  {
    *a1 = a2;
  }
}

void sub_2545040F0(uint64_t a1)
{
  if (!qword_27F5FBE50)
  {
    sub_2544AE2B0(255, &qword_27F5FBE58, 0x277D757A0);
    v1 = sub_25454C054();
    if (!v2)
    {
      atomic_store(v1, &qword_27F5FBE50);
    }
  }
}

uint64_t sub_25450416C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_254549394();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_254504240(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_254549394();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_25450431C(uint64_t a1)
{
  result = sub_254549394();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_2545043D8(uint64_t a1)
{
  result = sub_254504430(&qword_27F5FBE70, type metadata accessor for PreviewSuggestedAutomationsViewCoordinator, &unk_25454FA10);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_254504430(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_2545044BC()
{
  result = qword_27F5FBE88;
  if (!qword_27F5FBE88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5FBE80, &qword_25454FAB0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5FBE90, &qword_25454FAB8);
    sub_25450457C();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5FBE88);
  }

  return result;
}

unint64_t sub_25450457C()
{
  result = qword_27F5FBE98;
  if (!qword_27F5FBE98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5FBE90, &qword_25454FAB8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5FBEA0, &qword_25454FAC0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5FBEA8, &qword_25454FAC8);
    v1 = MEMORY[0x277CDD7A8];
    sub_2544AE1F0(&qword_27F5FBEB0, &qword_27F5FBEA8, &qword_25454FAC8, MEMORY[0x277CDD7A8]);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5FBEB8, &qword_25454FAD0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5FBEC0, &qword_25454FAD8);
    sub_2544AE1F0(&qword_27F5FBEC8, &qword_27F5FBEC0, &qword_25454FAD8, v1);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5FBE98);
  }

  return result;
}

uint64_t objectdestroy_142Tm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = type metadata accessor for AccessoryDetailsView.ToolbarModifier(0, v5, *(v4 + 24), a4);
  v7 = *(*(v6 - 8) + 80);
  v8 = (v7 + 32) & ~v7;
  v9 = *(*(v6 - 8) + 64);
  v10 = v4 + v8;
  if (*(v4 + v8))
  {
  }

  (*(*(v5 - 8) + 8))(v10 + *(v6 + 44), v5);

  return MEMORY[0x2821FE8E8](v4, v8 + v9, v7 | 7);
}

uint64_t sub_2545048A4(uint64_t (*a1)(uint64_t, uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = *(v4 + 24);
  v7 = *(type metadata accessor for AccessoryDetailsView.ToolbarModifier(0, v5, v6, a4) - 8);
  v8 = v4 + ((*(v7 + 80) + 32) & ~*(v7 + 80));

  return a1(v8, v5, v6);
}

uint64_t sub_254504940()
{
  type metadata accessor for AccessoryDetailsView(0);
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2544AE660;

  return sub_2544FB224();
}

void sub_254504A34(uint64_t a1)
{
  v3 = *(type metadata accessor for AccessoryDetailsView(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));
  v5 = *(v4 + *(v3 + 64));

  sub_2544E4124(a1, v4, v5);
}

uint64_t sub_254504AD4(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = a1(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

unint64_t sub_254504B88()
{
  result = qword_27F5FBF18;
  if (!qword_27F5FBF18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5FBF10, &qword_25454FB78);
    sub_254504C40();
    sub_2544AE1F0(&qword_27F5FB388, &qword_27F5FB390, &qword_25454FBC0, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5FBF18);
  }

  return result;
}

unint64_t sub_254504C40()
{
  result = qword_27F5FBF20;
  if (!qword_27F5FBF20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5FBF28, &qword_25454FB80);
    sub_254504CCC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5FBF20);
  }

  return result;
}

unint64_t sub_254504CCC()
{
  result = qword_27F5FBF30;
  if (!qword_27F5FBF30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5FBF38, &qword_25454FB88);
    sub_254504D58();
    sub_254504E68();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5FBF30);
  }

  return result;
}

unint64_t sub_254504D58()
{
  result = qword_27F5FBF40;
  if (!qword_27F5FBF40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5FBF48, &qword_25454FB90);
    sub_254504DE4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5FBF40);
  }

  return result;
}

unint64_t sub_254504DE4()
{
  result = qword_27F5FBF50;
  if (!qword_27F5FBF50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5FBF58, &qword_25454FB98);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5FBF50);
  }

  return result;
}

unint64_t sub_254504E68()
{
  result = qword_27F5FBF60;
  if (!qword_27F5FBF60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5FBF68, &qword_25454FBA0);
    sub_254504EF4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5FBF60);
  }

  return result;
}

unint64_t sub_254504EF4()
{
  result = qword_27F5FBF70;
  if (!qword_27F5FBF70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5FBF78, &qword_25454FBA8);
    sub_254504F80();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5FBF70);
  }

  return result;
}

unint64_t sub_254504F80()
{
  result = qword_27F5FBF80;
  if (!qword_27F5FBF80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5FBF88, &unk_25454FBB0);
    sub_2544AE1F0(&qword_27F5FB5E8, &qword_27F5FB5F0, &qword_25454E670, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5FBF80);
  }

  return result;
}

unint64_t sub_254505074()
{
  result = qword_27F5FC0A8;
  if (!qword_27F5FC0A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5FC0B0, &qword_25454FD08);
    sub_25450512C();
    sub_2544AE1F0(&qword_27F5FC148, &qword_27F5FC150, &qword_25454FD60, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5FC0A8);
  }

  return result;
}

unint64_t sub_25450512C()
{
  result = qword_27F5FC0B8;
  if (!qword_27F5FC0B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5FC0C0, &qword_25454FD10);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5FC0C8, &qword_25454FD18);
    sub_254505220();
    swift_getOpaqueTypeConformance2();
    sub_2544AE1F0(&qword_27F5FC138, &qword_27F5FC140, &unk_2545540A0, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5FC0B8);
  }

  return result;
}

unint64_t sub_254505220()
{
  result = qword_27F5FC0D0;
  if (!qword_27F5FC0D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5FC0C8, &qword_25454FD18);
    sub_2545052D8();
    sub_2544AE1F0(&qword_27F5FB388, &qword_27F5FB390, &qword_25454FBC0, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5FC0D0);
  }

  return result;
}

unint64_t sub_2545052D8()
{
  result = qword_27F5FC0D8;
  if (!qword_27F5FC0D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5FC0E0, &qword_25454FD20);
    sub_254505390();
    sub_2544AE1F0(&qword_27F5FC128, &qword_27F5FC130, &unk_25454FD50, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5FC0D8);
  }

  return result;
}

unint64_t sub_254505390()
{
  result = qword_27F5FC0E8;
  if (!qword_27F5FC0E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5FC0F0, &qword_25454FD28);
    sub_25450541C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5FC0E8);
  }

  return result;
}

unint64_t sub_25450541C()
{
  result = qword_27F5FC0F8;
  if (!qword_27F5FC0F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5FC100, &qword_25454FD30);
    sub_2545054D4();
    sub_2544AE1F0(&qword_27F5FB790, &qword_27F5FB798, &qword_25454EB60, MEMORY[0x277CE0740]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5FC0F8);
  }

  return result;
}

unint64_t sub_2545054D4()
{
  result = qword_27F5FC108;
  if (!qword_27F5FC108)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5FC110, &qword_25454FD38);
    sub_2544AE1F0(&qword_27F5FC118, &qword_27F5FC120, &unk_25454FD40, MEMORY[0x277CE1198]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5FC108);
  }

  return result;
}

unint64_t sub_25450558C()
{
  result = qword_27F5FC158;
  if (!qword_27F5FC158)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5FC098, &qword_25454FD00);
    sub_254505618();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5FC158);
  }

  return result;
}

unint64_t sub_254505618()
{
  result = qword_27F5FC160;
  if (!qword_27F5FC160)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5FC168, &qword_25454FD68);
    sub_2544AE1F0(&qword_27F5FC170, &qword_27F5FC178, &qword_25454FD70, MEMORY[0x277CE1138]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5FC160);
  }

  return result;
}

unint64_t sub_2545056D8()
{
  result = qword_27F5FC188;
  if (!qword_27F5FC188)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5FC180, &qword_25454FD78);
    sub_2544AE1F0(&qword_27F5FC190, &qword_27F5FC198, &qword_25454FD80, MEMORY[0x277CE14C0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5FC188);
  }

  return result;
}

unint64_t sub_254505794()
{
  result = qword_27F5FC1B8;
  if (!qword_27F5FC1B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5FC1A8, &qword_25454FD90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5FC1B8);
  }

  return result;
}

uint64_t sub_254505818(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_254505894()
{
  result = qword_27F5FC1D0;
  if (!qword_27F5FC1D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5FC1D8, &qword_25454FDA0);
    sub_254505964();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5FC200, &qword_25454FDC0);
    sub_254505A48();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5FC1D0);
  }

  return result;
}

unint64_t sub_254505964()
{
  result = qword_27F5FC1E0;
  if (!qword_27F5FC1E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5FC1E8, &qword_25454FDA8);
    sub_2544AE1F0(&qword_27F5FC1F0, &qword_27F5FC1F8, &unk_25454FDB0, MEMORY[0x277CDF028]);
    sub_2544AE1F0(&qword_27F5FB5F8, &qword_27F5FB600, &qword_25454E678, MEMORY[0x277CE08A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5FC1E0);
  }

  return result;
}

unint64_t sub_254505A48()
{
  result = qword_27F5FC208;
  if (!qword_27F5FC208)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5FC200, &qword_25454FDC0);
    sub_2544AE1F0(&qword_27F5FC210, &qword_27F5FC218, &qword_25454FDC8, MEMORY[0x277CDD938]);
    sub_2544AE1F0(&qword_27F5FB5F8, &qword_27F5FB600, &qword_25454E678, MEMORY[0x277CE08A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5FC208);
  }

  return result;
}

unint64_t sub_254505B34()
{
  result = qword_27F5FC228;
  if (!qword_27F5FC228)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5FC220, &qword_25454FDD0);
    sub_2544AE1F0(&qword_27F5FC230, &qword_27F5FC238, &qword_25454FDD8, MEMORY[0x277CDF028]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5FC228);
  }

  return result;
}

uint64_t sub_254505BFC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_254505C64(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

double sub_254505CCC(uint64_t a1)
{
  *(a1 + 160) = 0;
  result = 0.0;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

uint64_t objectdestroy_148Tm()
{
  v1 = type metadata accessor for AccessoryDetailsView(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  swift_unknownObjectRelease();
  v5 = v0 + v3;
  v6 = sub_254549AB4();
  (*(*(v6 - 8) + 8))(v0 + v3, v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FBCD8, &qword_25454F730);

  __swift_destroy_boxed_opaque_existential_0((v0 + v3 + v1[5]));

  if (*(v0 + v3 + v1[6]))
  {
  }

  MEMORY[0x259C0FEC0](v5 + v1[7]);

  __swift_destroy_boxed_opaque_existential_0((v5 + v1[18]));

  if (*(v5 + v1[19] + 24))
  {
    __swift_destroy_boxed_opaque_existential_0((v5 + v1[19]));
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_25450600C(uint64_t a1)
{
  v4 = *(type metadata accessor for AccessoryDetailsView(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_2544AE660;

  return sub_2544ED260(a1, v6, v7, v1 + v5);
}

unint64_t sub_254506100()
{
  result = qword_27F5FC308;
  if (!qword_27F5FC308)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5FC300, &qword_25454FEB8);
    sub_2544AE1F0(&qword_27F5FC310, &qword_27F5FC318, &qword_25454FEC0, MEMORY[0x277CE1138]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5FC308);
  }

  return result;
}

unint64_t sub_2545061B8()
{
  result = qword_27F5FC328;
  if (!qword_27F5FC328)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5FC2D0, &qword_25454FE88);
    sub_2544AE1F0(&qword_27F5FC330, &qword_27F5FC338, &qword_25454FEC8, MEMORY[0x277CDD938]);
    sub_2544AE1F0(&qword_27F5FB5F8, &qword_27F5FB600, &qword_25454E678, MEMORY[0x277CE08A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5FC328);
  }

  return result;
}

uint64_t objectdestroy_182Tm()
{
  v1 = sub_25454A1C4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

void sub_25450636C()
{
  v1 = *(sub_25454A1C4() - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  sub_2544FC7C0(v2, v3);
}

uint64_t sub_2545063D0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC5A0, &qword_254550288);
  MEMORY[0x28223BE20](v2 - 8);
  sub_2544AE240(a1, &v5 - v3, &qword_27F5FC5A0, &qword_254550288);
  return sub_25454A9E4();
}

unint64_t sub_25450649C()
{
  result = qword_27F5FC3E0;
  if (!qword_27F5FC3E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5FC3E0);
  }

  return result;
}

unint64_t sub_2545064F8()
{
  result = qword_27F5FC3F0;
  if (!qword_27F5FC3F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5FC3E8, &qword_25454FF78);
    sub_2544AE1F0(&qword_27F5FBC20, &qword_27F5FBC28, &unk_25454F660, MEMORY[0x277CDF028]);
    sub_2544AE1F0(&qword_27F5FC3F8, &qword_27F5FC400, &qword_25454FF80, MEMORY[0x277CE14C0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5FC3F0);
  }

  return result;
}

uint64_t sub_2545066C0()
{
  type metadata accessor for AccessoryDetailsView(0);
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2544AE660;

  return sub_2544F78C0();
}

uint64_t sub_2545067D4()
{
  type metadata accessor for AccessoryDetailsView(0);
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2544AE660;

  return sub_2544FADCC();
}

uint64_t sub_2545068E8()
{
  type metadata accessor for AccessoryDetailsView(0);
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2544AE660;

  return sub_2544FA888();
}

uint64_t sub_254506A3C()
{
  type metadata accessor for AccessoryDetailsView(0);
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2544AE660;

  return sub_2544F9824();
}

uint64_t sub_254506B44()
{
  v1 = type metadata accessor for AccessoryDetailsView(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 17) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;
  v6 = sub_254549AB4();
  (*(*(v6 - 8) + 8))(v0 + v3, v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FBCD8, &qword_25454F730);

  __swift_destroy_boxed_opaque_existential_0((v0 + v3 + v1[5]));

  if (*(v0 + v3 + v1[6]))
  {
  }

  MEMORY[0x259C0FEC0](v5 + v1[7]);

  __swift_destroy_boxed_opaque_existential_0((v5 + v1[18]));

  if (*(v5 + v1[19] + 24))
  {
    __swift_destroy_boxed_opaque_existential_0((v5 + v1[19]));
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

double sub_254506D88()
{
  v1 = *(type metadata accessor for AccessoryDetailsView(0) - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 17) & ~*(v1 + 80));

  return sub_2544EF7DC(v2, v3);
}

uint64_t sub_254506E5C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_25454A044();
  *a1 = result & 1;
  return result;
}

uint64_t sub_254506EBC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_254549F64();
  *a1 = result & 1;
  return result;
}

uint64_t objectdestroy_208Tm()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_254506F84@<X0>(uint64_t *a2@<X8>)
{
  result = sub_25454A084();
  *a2 = result;
  a2[1] = v4;
  return result;
}

double sub_254507008(uint64_t a1)
{
  v3 = *(type metadata accessor for AccessoryDetailsView(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_2544F1358(a1, v4);
}

uint64_t sub_254507078()
{
  v1 = type metadata accessor for AccessoryDetailsView(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  swift_unknownObjectRelease();
  v5 = v0 + v3;
  v6 = sub_254549AB4();
  (*(*(v6 - 8) + 8))(v0 + v3, v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FBCD8, &qword_25454F730);

  __swift_destroy_boxed_opaque_existential_0((v0 + v3 + v1[5]));

  if (*(v0 + v3 + v1[6]))
  {
  }

  MEMORY[0x259C0FEC0](v5 + v1[7]);

  __swift_destroy_boxed_opaque_existential_0((v5 + v1[18]));

  if (*(v5 + v1[19] + 24))
  {
    __swift_destroy_boxed_opaque_existential_0((v5 + v1[19]));
  }

  return MEMORY[0x2821FE8E8](v0, ((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 16, v2 | 7);
}

uint64_t sub_2545072DC(uint64_t a1)
{
  v4 = *(type metadata accessor for AccessoryDetailsView(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = (v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = *v8;
  v10 = v8[1];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_2544AE3EC;

  return sub_2544FBB34(a1, v6, v7, v1 + v5, v9, v10);
}

uint64_t sub_25450740C(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  sub_2544A8F00(a1, a2, a3 & 1);
}

uint64_t sub_254507448(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  sub_2544C9C64(a1, a2, a3 & 1);
}

uint64_t sub_2545074C0(uint64_t *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_25454C334() & 1;
  }
}

uint64_t sub_254507518(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

double sub_254507588(uint64_t a1)
{
  *(a1 + 320) = 0;
  result = 0.0;
  *(a1 + 288) = 0u;
  *(a1 + 304) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

uint64_t objectdestroy_154Tm()
{
  v1 = type metadata accessor for AccessoryDetailsView(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;
  v6 = sub_254549AB4();
  (*(*(v6 - 8) + 8))(v0 + v3, v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FBCD8, &qword_25454F730);

  __swift_destroy_boxed_opaque_existential_0((v0 + v3 + v1[5]));

  if (*(v0 + v3 + v1[6]))
  {
  }

  MEMORY[0x259C0FEC0](v5 + v1[7]);

  __swift_destroy_boxed_opaque_existential_0((v5 + v1[18]));

  if (*(v5 + v1[19] + 24))
  {
    __swift_destroy_boxed_opaque_existential_0((v5 + v1[19]));
  }

  return MEMORY[0x2821FE8E8](v0, v4 + v3 + 1, v2 | 7);
}

double sub_254507888()
{
  v1 = *(type metadata accessor for AccessoryDetailsView(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));
  v3 = *(v2 + *(v1 + 64));

  return sub_2544E9324(v2, v3);
}

uint64_t sub_25450792C(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for AccessoryDetailsView(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t sub_2545079B0@<X0>(uint64_t *a2@<X8>)
{
  result = sub_25454A074();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t keypath_set_347Tm(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  v6 = *a1;
  v7 = a1[1];

  return a5(v6, v7);
}

double sub_254507A3C(char *a1)
{
  v3 = *(type metadata accessor for AccessoryDetailsView(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_2544EA5DC(a1, v4);
}

uint64_t sub_254507AB0(uint64_t a1)
{
  v4 = *(type metadata accessor for AccessoryDetailsView(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_2544AE660;

  return sub_2544EAA40(a1, v6, v7, v1 + v5);
}

uint64_t sub_254507BA0()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 33, 7);
}

uint64_t sub_254507BE4()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_254507C88(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for AccessoryDetailsView.ToolbarModifier(255, *a1, a1[1], a4);
  swift_getWitnessTable();
  sub_25454AE24();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5FBE78, &qword_25454FAA8);
  swift_getWitnessTable();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5FBE80, &qword_25454FAB0);
  sub_2545044BC();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  sub_25454A714();
  sub_25454A714();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  swift_getTupleTypeMetadata2();
  sub_25454BAF4();
  swift_getWitnessTable();
  sub_25454B834();
  sub_25454A714();
  sub_25454C054();
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_25454A714();
  swift_getOpaqueTypeConformance2();
  return swift_getWitnessTable();
}

uint64_t AutoRelockTimePickerView.init(accessoryDetails:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for AutoRelockTimePickerView(0);
  v5 = a2 + *(v4 + 20);
  sub_25454B794();
  *v5 = v9;
  *(v5 + 8) = v10;
  v6 = a2 + *(v4 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC240, &qword_25454FDE0);
  sub_25454B794();
  *v6 = v9;
  *(v6 + 8) = v10;
  *(a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FBCD8, &qword_25454F730) + 28)) = 0;
  v7 = sub_254549AB4();
  return (*(*(v7 - 8) + 32))(a2, a1, v7);
}

uint64_t type metadata accessor for AutoRelockTimePickerView(uint64_t a1)
{
  result = qword_27F5FC660;
  if (!qword_27F5FC660)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_25450828C()
{
  sub_25454C3E4();
  sub_25454C414();
  return sub_25454C434();
}

uint64_t sub_254508314(uint64_t a1)
{
  sub_25454C3E4();
  sub_25454C414();
  return sub_25454C434();
}

uint64_t sub_254508360@<X0>(unsigned int *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_25450B1C0(*a1);
  *a2 = result;
  return result;
}

uint64_t AutoRelockTimePickerView.body.getter()
{
  v1 = sub_254549AB4();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v19[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC620, &qword_2545503B0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v19[-v6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FBCD8, &qword_25454F730);
  sub_25454B7A4();
  sub_2545499E4();
  (*(v2 + 8))(v4, v1);
  shouldShowAutoRelockTime = AutoRelockTimePickerView._shouldShowAutoRelockTimePicker()();
  v19[16] = shouldShowAutoRelockTime;
  v20 = v0;
  v21 = v7;
  sub_25454BE14();
  sub_25454BE04();
  sub_25454BDB4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (shouldShowAutoRelockTime)
  {
    v22 = sub_25454BCF4();
    v23 = v9;
    sub_2544AECF0();
    v10 = sub_25454B274();
    v12 = v11;
    v14 = v13;
    v16 = v15;

    v17 = v14 & 1;
  }

  else
  {

    v10 = 0;
    v12 = 0;
    v17 = 0;
    v16 = 0;
  }

  v22 = v10;
  v23 = v12;
  v24 = v17;
  v25 = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC628, &unk_2545503B8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC1A8, &qword_25454FD90);
  sub_25450A774();
  sub_254505794();
  sub_25454B9B4();
  return sub_25450A95C(v7);
}

Swift::Bool __swiftcall AutoRelockTimePickerView._shouldShowAutoRelockTimePicker()()
{
  v0 = sub_254549AB4();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v18 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC620, &qword_2545503B0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v18 - v5;
  v7 = sub_254549EA4();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FBCD8, &qword_25454F730);
  sub_25454B7A4();
  sub_2545499E4();
  (*(v1 + 8))(v3, v0);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_25450A95C(v6);
    if (qword_27F5FACE0 != -1)
    {
      swift_once();
    }

    v11 = sub_25454A2E4();
    __swift_project_value_buffer(v11, qword_27F5FD410);
    v12 = sub_25454A2C4();
    v13 = sub_25454BF94();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v19 = v15;
      *v14 = 136315394;
      *(v14 + 4) = sub_254502AAC(0xD000000000000026, 0x8000000254556230, &v19);
      *(v14 + 12) = 2080;
      *(v14 + 14) = sub_254502AAC(0xD000000000000021, 0x8000000254556290, &v19);
      _os_log_impl(&dword_2544A5000, v12, v13, "%s - %s: doorLockCluster is nil, so returning false.", v14, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x259C0FDF0](v15, -1, -1);
      MEMORY[0x259C0FDF0](v14, -1, -1);
    }

    v16 = 0;
  }

  else
  {
    (*(v8 + 32))(v10, v6, v7);
    v16 = AutoRelockTimePickerView._shouldShowAutoRelockTimePicker(doorLockCluster:)();
    (*(v8 + 8))(v10, v7);
  }

  return v16 & 1;
}

double sub_2545089F0@<D0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v56 = a3;
  v52 = a2;
  LODWORD(v51) = a1;
  v5 = type metadata accessor for AutoRelockTimePickerView(0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v49 = v7;
  v8 = v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC620, &qword_2545503B0);
  v10 = *(v9 - 8);
  v53 = *(v10 + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v47 = v42 - v11;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC638, &qword_2545503C8);
  MEMORY[0x28223BE20](v50);
  v13 = v42 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC6A8, &qword_254550580);
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v48 = v42 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC628, &unk_2545503B8);
  MEMORY[0x28223BE20](v17 - 8);
  v55 = v42 - v18;
  sub_25454BE14();
  v54 = sub_25454BE04();
  sub_25454BDB4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (v51)
  {
    v61 = sub_25454BCF4();
    v62 = v19;
    v20 = *(v5 + 20);
    v43 = v6;
    v21 = v52;
    v22 = (v52 + v20);
    v45 = *v22;
    v44 = *(v22 + 1);
    v59 = v45;
    v60 = v44;
    v42[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC6B0, &qword_254550588);
    sub_25454B7C4();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC6B8, &unk_254550590);
    sub_25450B124();
    sub_25450B2C4();
    sub_2544AECF0();
    v23 = v13;
    sub_25454B8A4();
    v24 = v47;
    sub_25450B388(v56, v47);
    sub_25450B3F8(v21, v8);
    v25 = *(v10 + 80);
    v51 = a4;
    v26 = (v25 + 16) & ~v25;
    v46 = v14;
    v27 = *(v43 + 80);
    v43 = v15;
    v42[0] = v23;
    v28 = (v53 + v27 + v26) & ~v27;
    v29 = v49;
    v30 = swift_allocObject();
    sub_25450B660(v24, v30 + v26);
    sub_25450B6D0(v8, v30 + v28);
    v31 = &v23[*(v50 + 36)];
    *v31 = sub_25450B734;
    v31[1] = v30;
    v31[2] = 0;
    v31[3] = 0;
    LOBYTE(v57) = v45;
    v58 = v44;
    sub_25454B7A4();
    sub_25450B3F8(v52, v8);
    sub_25450B388(v56, v24);
    v32 = (v27 + 16) & ~v27;
    v33 = (v29 + v25 + v32) & ~v25;
    v34 = swift_allocObject();
    sub_25450B6D0(v8, v34 + v32);
    v35 = v34 + v33;
    a4 = v51;
    sub_25450B660(v24, v35);
    sub_25450A850();
    sub_25450A908();
    v36 = v48;
    v37 = v42[0];
    sub_25454B574();

    sub_25450BAE0(v37);
    v38 = v43;
    v39 = v55;
    v40 = v46;
    (*(v43 + 32))(v55, v36, v46);
    (*(v38 + 56))(v39, 0, 1, v40);
  }

  else
  {
    v39 = v55;
    (*(v15 + 56))(v55, 1, 1, v14);
  }

  sub_25450B254(v39, a4);

  return result;
}

double sub_254508FEC()
{
  sub_25454BE14();
  sub_25454BE04();
  sub_25454BDB4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC6A0, qword_2545504A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC6D8, &qword_2545505E0);
  sub_2544AE1F0(&qword_27F5FC6E0, &qword_27F5FC6A0, qword_2545504A0, MEMORY[0x277D83980]);
  sub_25450B124();
  swift_getOpaqueTypeConformance2();
  sub_25454B974();

  return result;
}

double sub_254509190@<D0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC6D8, &qword_2545505E0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v16 - v6;
  v8 = *a1;
  sub_25454BE14();
  sub_25454BE04();
  sub_25454BDB4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v9 = sub_25454BCF4();
  v11 = v10;

  v16[0] = v9;
  v16[1] = v11;
  sub_2544AECF0();
  *v7 = sub_25454B274();
  *(v7 + 1) = v12;
  v7[16] = v13 & 1;
  *(v7 + 3) = v14;
  v7[32] = v8;
  v7[33] = 1;
  (*(v5 + 32))(a2, v7, v4);

  return result;
}

void sub_2545093F0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AutoRelockTimePickerView(0);
  v5 = MEMORY[0x28223BE20](v4);
  v7 = &v42[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v5);
  v9 = &v42[-v8];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC620, &qword_2545503B0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v42[-v11];
  sub_25454BE14();
  sub_25454BE04();
  sub_25454BDB4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_25450B388(a1, v12);
  v13 = sub_254549EA4();
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_25450A95C(v12);
LABEL_13:
    if (qword_27F5FACE0 != -1)
    {
      swift_once();
    }

    v33 = sub_25454A2E4();
    __swift_project_value_buffer(v33, qword_27F5FD410);
    sub_25450B3F8(a2, v7);
    v34 = sub_25454A2C4();
    v35 = sub_25454BF94();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v46 = v37;
      *v36 = 136315394;
      *(v36 + 4) = sub_254502AAC(0xD000000000000026, 0x8000000254556230, &v46);
      *(v36 + 12) = 1024;
      v38 = &v7[*(v4 + 20)];
      v39 = *v38;
      v40 = *(v38 + 1);
      v44 = v39;
      v45 = v40;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC6B0, &qword_254550588);
      sub_25454B7A4();
      v41 = dword_2545505EC[v43];
      sub_25450BEA8(v7);
      *(v36 + 14) = v41;
      _os_log_impl(&dword_2544A5000, v34, v35, "%s : Appearing without updating auto relock time. AutoRelockTime is currently %u", v36, 0x12u);
      __swift_destroy_boxed_opaque_existential_0(v37);
      MEMORY[0x259C0FDF0](v37, -1, -1);
      MEMORY[0x259C0FDF0](v36, -1, -1);
    }

    else
    {
      sub_25450BEA8(v7);
    }

    return;
  }

  v15 = sub_254549DF4();
  (*(v14 + 8))(v12, v13);
  if ((v15 & 0x100000000) != 0)
  {
    goto LABEL_13;
  }

  v16 = sub_25450B1C0(v15);
  if (v16 == 8)
  {
    v17 = 0;
  }

  else
  {
    v17 = v16;
  }

  v18 = (a2 + *(v4 + 20));
  v20 = *(v18 + 1);
  v44 = *v18;
  v19 = v44;
  v45 = v20;
  LOBYTE(v46) = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC6B0, &qword_254550588);
  sub_25454B7B4();
  v44 = v19;
  v45 = v20;
  sub_25454B7A4();
  v21 = (a2 + *(v4 + 24));
  v22 = *v21;
  v23 = *(v21 + 1);
  v44 = v22;
  v45 = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC6C8, &qword_2545505B0);
  sub_25454B7B4();
  if (qword_27F5FACE0 != -1)
  {
    swift_once();
  }

  v24 = sub_25454A2E4();
  __swift_project_value_buffer(v24, qword_27F5FD410);
  sub_25450B3F8(a2, v9);
  v25 = sub_25454A2C4();
  v26 = sub_25454BF94();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v46 = v28;
    *v27 = 136315650;
    *(v27 + 4) = sub_254502AAC(0xD000000000000026, 0x8000000254556230, &v46);
    *(v27 + 12) = 1024;
    v29 = &v9[*(v4 + 20)];
    v30 = *v29;
    v31 = *(v29 + 1);
    v44 = v30;
    v45 = v31;
    sub_25454B7A4();
    v32 = dword_2545505EC[v43];
    sub_25450BEA8(v9);
    *(v27 + 14) = v32;
    *(v27 + 18) = 1024;
    *(v27 + 20) = v15;
    _os_log_impl(&dword_2544A5000, v25, v26, "%s : On Appear setting value to %u from Matter %u", v27, 0x18u);
    __swift_destroy_boxed_opaque_existential_0(v28);
    MEMORY[0x259C0FDF0](v28, -1, -1);
    MEMORY[0x259C0FDF0](v27, -1, -1);
  }

  else
  {
    sub_25450BEA8(v9);
  }
}

double sub_2545099A0(uint64_t a1, uint64_t a2)
{
  v20 = a2;
  v18 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC620, &qword_2545503B0);
  v19 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v17 - v3;
  v5 = type metadata accessor for AutoRelockTimePickerView(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FAF28, &qword_25454D6C0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v17 - v9;
  sub_25454BE14();
  sub_25454BE04();
  sub_25454BDB4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v11 = sub_25454BE44();
  (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
  sub_25450B3F8(v18, &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_25450B388(v20, v4);
  v12 = sub_25454BE04();
  v13 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v14 = (v7 + *(v19 + 80) + v13) & ~*(v19 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = v12;
  *(v15 + 24) = MEMORY[0x277D85700];
  sub_25450B6D0(&v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v15 + v13);
  sub_25450B660(v4, v15 + v14);
  sub_2544B5138(0, 0, v10, &unk_2545505A8, v15);

  return result;
}

uint64_t sub_254509C84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[16] = a4;
  v5[17] = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC620, &qword_2545503B0);
  v5[18] = swift_task_alloc();
  v5[19] = type metadata accessor for AutoRelockTimePickerView(0);
  v5[20] = swift_task_alloc();
  v5[21] = swift_task_alloc();
  sub_25454BE14();
  v5[22] = sub_25454BE04();
  v7 = sub_25454BDB4();
  v5[23] = v7;
  v5[24] = v6;

  return MEMORY[0x2822009F8](sub_254509D90, v7, v6);
}

uint64_t sub_254509D90()
{
  v52 = v0;
  if (qword_27F5FACE0 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 160);
  v1 = *(v0 + 168);
  v3 = *(v0 + 128);
  v4 = sub_25454A2E4();
  __swift_project_value_buffer(v4, qword_27F5FD410);
  sub_25450B3F8(v3, v1);
  sub_25450B3F8(v3, v2);
  v5 = sub_25454A2C4();
  v6 = sub_25454BF94();
  v7 = os_log_type_enabled(v5, v6);
  v8 = *(v0 + 168);
  if (v7)
  {
    v9 = *(v0 + 152);
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v51 = v11;
    *v10 = 136315650;
    *(v10 + 4) = sub_254502AAC(0xD000000000000026, 0x8000000254556230, &v51);
    *(v10 + 12) = 1024;
    v12 = (v8 + *(v9 + 20));
    v13 = *v12;
    v14 = *(v12 + 1);
    *(v0 + 96) = v13;
    *(v0 + 104) = v14;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC6B0, &qword_254550588);
    sub_25454B7A4();
    v15 = dword_2545505EC[*(v0 + 233)];
    v16 = *(v0 + 160);
    v17 = *(v0 + 152);
    sub_25450BEA8(*(v0 + 168));
    *(v10 + 14) = v15;
    *(v10 + 18) = 2080;
    v18 = (v16 + *(v17 + 24));
    v19 = *v18;
    v20 = *(v18 + 1);
    *(v0 + 112) = v19;
    *(v0 + 120) = v20;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC6C8, &qword_2545505B0);
    sub_25454B7A4();
    v21 = *(v0 + 234);
    if (v21 <= 3)
    {
      if (*(v0 + 234) > 1u)
      {
        v22 = 0;
        if (v21 == 2)
        {
          v21 = 60;
        }

        else
        {
          v21 = 120;
        }
      }

      else
      {
        v22 = 0;
        if (*(v0 + 234))
        {
          v21 = 30;
        }
      }
    }

    else if (*(v0 + 234) <= 5u)
    {
      v22 = 0;
      if (v21 == 4)
      {
        v21 = 300;
      }

      else
      {
        v21 = 600;
      }
    }

    else if (v21 == 6)
    {
      v22 = 0;
      v21 = 900;
    }

    else if (v21 == 7)
    {
      v22 = 0;
      v21 = 1800;
    }

    else
    {
      v21 = 0;
      v22 = 1;
    }

    v24 = *(v0 + 160);
    *(v0 + 224) = v21;
    *(v0 + 228) = v22;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC6D0, &unk_2545505B8);
    v25 = sub_25454BCD4();
    v27 = v26;
    sub_25450BEA8(v24);
    v28 = sub_254502AAC(v25, v27, &v51);

    *(v10 + 20) = v28;
    _os_log_impl(&dword_2544A5000, v5, v6, "%s : Changing auto relock time to %u from %s", v10, 0x1Cu);
    swift_arrayDestroy();
    MEMORY[0x259C0FDF0](v11, -1, -1);
    MEMORY[0x259C0FDF0](v10, -1, -1);
  }

  else
  {
    v23 = *(v0 + 160);
    sub_25450BEA8(*(v0 + 168));

    sub_25450BEA8(v23);
  }

  v29 = *(v0 + 152);
  v30 = *(v0 + 128);
  v31 = (v30 + *(v29 + 24));
  v32 = *v31;
  v33 = *(v31 + 1);
  *(v0 + 16) = *v31;
  *(v0 + 24) = v33;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC6C8, &qword_2545505B0);
  sub_25454B7A4();
  v34 = *(v0 + 229);
  v35 = (v30 + *(v29 + 20));
  v36 = *v35;
  v37 = *(v35 + 1);
  *(v0 + 32) = *v35;
  *(v0 + 40) = v37;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC6B0, &qword_254550588);
  sub_25454B7A4();
  if (v34 <= 3)
  {
    if (v34 > 1)
    {
      if (v34 == 2)
      {
        v34 = 60;
      }

      else
      {
        v34 = 120;
      }
    }

    else if (v34)
    {
      v34 = 30;
    }
  }

  else if (v34 <= 5)
  {
    if (v34 == 4)
    {
      v34 = 300;
    }

    else
    {
      v34 = 600;
    }
  }

  else if (v34 == 6)
  {
    v34 = 900;
  }

  else
  {
    if (v34 != 7)
    {
      goto LABEL_41;
    }

    v34 = 1800;
  }

  if (v34 == dword_2545505EC[*(v0 + 230)])
  {

    v38 = sub_25454A2C4();
    v39 = sub_25454BF94();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v51 = v41;
      *v40 = 136315138;
      *(v40 + 4) = sub_254502AAC(0xD000000000000026, 0x8000000254556230, &v51);
      _os_log_impl(&dword_2544A5000, v38, v39, "%s : Not updating matter because the value has not changed.", v40, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v41);
      MEMORY[0x259C0FDF0](v41, -1, -1);
      MEMORY[0x259C0FDF0](v40, -1, -1);
    }

    goto LABEL_43;
  }

LABEL_41:
  v43 = *(v0 + 136);
  v42 = *(v0 + 144);
  *(v0 + 48) = v36;
  *(v0 + 56) = v37;
  sub_25454B7A4();
  *(v0 + 64) = v32;
  *(v0 + 72) = v33;
  sub_25454B7B4();
  sub_25450B388(v43, v42);
  v44 = sub_254549EA4();
  *(v0 + 200) = v44;
  v45 = *(v44 - 8);
  *(v0 + 208) = v45;
  if ((*(v45 + 48))(v42, 1, v44) == 1)
  {
    v46 = *(v0 + 144);

    sub_25450A95C(v46);
LABEL_43:

    v47 = *(v0 + 8);

    return v47();
  }

  *(v0 + 80) = v36;
  *(v0 + 88) = v37;
  sub_25454B7A4();
  v49 = dword_2545505EC[*(v0 + 232)];
  v50 = swift_task_alloc();
  *(v0 + 216) = v50;
  *v50 = v0;
  v50[1] = sub_25450A458;

  return MEMORY[0x282170610](v49);
}

uint64_t sub_25450A458()
{
  v1 = *v0;
  v2 = *(*v0 + 208);
  v3 = *(*v0 + 200);
  v4 = *(*v0 + 144);

  (*(v2 + 8))(v4, v3);
  v5 = *(v1 + 192);
  v6 = *(v1 + 184);

  return MEMORY[0x2822009F8](sub_25450A5DC, v6, v5);
}

uint64_t sub_25450A5DC()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_25450A658(char a1@<W0>, uint64_t *a2@<X8>)
{
  sub_25454BE14();
  sub_25454BE04();
  sub_25454BDB4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (a1)
  {
    sub_25454BCF4();
    sub_2544AECF0();
    v4 = sub_25454B274();
    v6 = v5;
    v8 = v7;
    v10 = v9;

    v11 = v8 & 1;
  }

  else
  {

    v4 = 0;
    v6 = 0;
    v11 = 0;
    v10 = 0;
  }

  *a2 = v4;
  a2[1] = v6;
  a2[2] = v11;
  a2[3] = v10;
}

unint64_t sub_25450A774()
{
  result = qword_27F5FC630;
  if (!qword_27F5FC630)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5FC628, &unk_2545503B8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5FC638, &qword_2545503C8);
    sub_25450A850();
    sub_25450A908();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5FC630);
  }

  return result;
}

unint64_t sub_25450A850()
{
  result = qword_27F5FC640;
  if (!qword_27F5FC640)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5FC638, &qword_2545503C8);
    sub_2544AE1F0(&qword_27F5FC648, &qword_27F5FC650, &qword_2545503D0, MEMORY[0x277CDF038]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5FC640);
  }

  return result;
}

unint64_t sub_25450A908()
{
  result = qword_27F5FC658;
  if (!qword_27F5FC658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5FC658);
  }

  return result;
}

uint64_t sub_25450A95C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC620, &qword_2545503B0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t AutoRelockTimePickerView._shouldShowAutoRelockTimePicker(doorLockCluster:)()
{
  v0 = sub_254549E84();
  if (qword_27F5FACE0 != -1)
  {
    swift_once();
  }

  v1 = sub_25454A2E4();
  __swift_project_value_buffer(v1, qword_27F5FD410);
  v2 = sub_25454A2C4();
  v3 = sub_25454BF94();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v7 = v5;
    *v4 = 136315650;
    *(v4 + 4) = sub_254502AAC(0xD000000000000026, 0x8000000254556230, &v7);
    *(v4 + 12) = 2080;
    *(v4 + 14) = sub_254502AAC(0xD000000000000031, 0x80000002545562C0, &v7);
    *(v4 + 22) = 1024;
    *(v4 + 24) = v0 & 1;
    _os_log_impl(&dword_2544A5000, v2, v3, "%s - %s: Returning %{BOOL}d.", v4, 0x1Cu);
    swift_arrayDestroy();
    MEMORY[0x259C0FDF0](v5, -1, -1);
    MEMORY[0x259C0FDF0](v4, -1, -1);
  }

  return v0 & 1;
}

uint64_t sub_25450AB64()
{
  v1 = sub_254549AB4();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v9[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC620, &qword_2545503B0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v9[-v6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FBCD8, &qword_25454F730);
  sub_25454B7A4();
  sub_2545499E4();
  (*(v2 + 8))(v4, v1);
  shouldShowAutoRelockTime = AutoRelockTimePickerView._shouldShowAutoRelockTimePicker()();
  v11 = v0;
  v12 = v7;
  sub_25450A658(shouldShowAutoRelockTime, v13);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC628, &unk_2545503B8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC1A8, &qword_25454FD90);
  sub_25450A774();
  sub_254505794();
  sub_25454B9B4();
  return sub_25450A95C(v7);
}

uint64_t sub_25450AD70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FBCD8, &qword_25454F730);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_25450AE5C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FBCD8, &qword_25454F730);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = a2;
  }

  return result;
}

void sub_25450AF24(uint64_t a1)
{
  sub_25450391C(319);
  if (v1 <= 0x3F)
  {
    sub_25450AFC0();
    if (v2 <= 0x3F)
    {
      sub_25450B010(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_25450AFC0()
{
  if (!qword_27F5FC670)
  {
    v0 = sub_25454B7D4();
    if (!v1)
    {
      atomic_store(v0, &qword_27F5FC670);
    }
  }
}

void sub_25450B010(uint64_t a1)
{
  if (!qword_27F5FC678)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5FC240, &qword_25454FDE0);
    v1 = sub_25454B7D4();
    if (!v2)
    {
      atomic_store(v1, &qword_27F5FC678);
    }
  }
}

unint64_t sub_25450B078()
{
  result = qword_27F5FC680;
  if (!qword_27F5FC680)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5FC688, &qword_254550450);
    sub_25450A774();
    sub_254505794();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5FC680);
  }

  return result;
}

unint64_t sub_25450B124()
{
  result = qword_27F5FC690;
  if (!qword_27F5FC690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5FC690);
  }

  return result;
}

uint64_t sub_25450B1C0(uint64_t result)
{
  if (result > 299)
  {
    if (result > 899)
    {
      if (result == 900)
      {
        return 6;
      }

      if (result == 1800)
      {
        return 7;
      }
    }

    else
    {
      if (result == 300)
      {
        return 4;
      }

      if (result == 600)
      {
        return 5;
      }
    }
  }

  else if (result > 59)
  {
    if (result == 60)
    {
      return 2;
    }

    if (result == 120)
    {
      return 3;
    }
  }

  else
  {
    if (!result)
    {
      return result;
    }

    if (result == 30)
    {
      return 1;
    }
  }

  return 8;
}

uint64_t sub_25450B254(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC628, &unk_2545503B8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_25450B2C4()
{
  result = qword_27F5FC6C0;
  if (!qword_27F5FC6C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5FC6B8, &unk_254550590);
    sub_25450B124();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5FC6C0);
  }

  return result;
}

uint64_t sub_25450B388(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC620, &qword_2545503B0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_25450B3F8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AutoRelockTimePickerView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_25450B45C()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC620, &qword_2545503B0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  v5 = *(type metadata accessor for AutoRelockTimePickerView(0) - 8);
  v6 = *(v5 + 80);
  v7 = *(v5 + 64);
  v8 = sub_254549EA4();
  v9 = *(v8 - 8);
  if (!(*(v9 + 48))(v0 + v3, 1, v8))
  {
    (*(v9 + 8))(v0 + v3, v8);
  }

  v10 = (v3 + v4 + v6) & ~v6;
  v11 = sub_254549AB4();
  (*(*(v11 - 8) + 8))(v0 + v10, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FBCD8, &qword_25454F730);

  return MEMORY[0x2821FE8E8](v0, v10 + v7, v2 | v6 | 7);
}

uint64_t sub_25450B660(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC620, &qword_2545503B0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_25450B6D0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AutoRelockTimePickerView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_25450B734()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC620, &qword_2545503B0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(type metadata accessor for AutoRelockTimePickerView(0) - 8);
  v5 = v0 + ((v2 + v3 + *(v4 + 80)) & ~*(v4 + 80));

  sub_2545093F0(v0 + v2, v5);
}

uint64_t sub_25450B80C()
{
  v1 = *(type metadata accessor for AutoRelockTimePickerView(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = v3 + *(v1 + 64);
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC620, &qword_2545503B0) - 8);
  v6 = *(v5 + 80);
  v7 = (v4 + v6) & ~v6;
  v8 = *(v5 + 64);
  v9 = sub_254549AB4();
  (*(*(v9 - 8) + 8))(v0 + v3, v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FBCD8, &qword_25454F730);

  v10 = sub_254549EA4();
  v11 = *(v10 - 8);
  if (!(*(v11 + 48))(v0 + v7, 1, v10))
  {
    (*(v11 + 8))(v0 + v7, v10);
  }

  return MEMORY[0x2821FE8E8](v0, v7 + v8, v2 | v6 | 7);
}

double sub_25450BA08()
{
  v1 = *(type metadata accessor for AutoRelockTimePickerView(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = v2 + *(v1 + 64);
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC620, &qword_2545503B0) - 8);
  v5 = v0 + ((v3 + *(v4 + 80)) & ~*(v4 + 80));

  return sub_2545099A0(v0 + v2, v5);
}

uint64_t sub_25450BAE0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC638, &qword_2545503C8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_25450BB48()
{
  v1 = *(type metadata accessor for AutoRelockTimePickerView(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = v3 + *(v1 + 64);
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC620, &qword_2545503B0) - 8);
  v6 = *(v5 + 80);
  v7 = (v4 + v6) & ~v6;
  v8 = *(v5 + 64);
  swift_unknownObjectRelease();
  v9 = sub_254549AB4();
  (*(*(v9 - 8) + 8))(v0 + v3, v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FBCD8, &qword_25454F730);

  v10 = sub_254549EA4();
  v11 = *(v10 - 8);
  if (!(*(v11 + 48))(v0 + v7, 1, v10))
  {
    (*(v11 + 8))(v0 + v7, v10);
  }

  return MEMORY[0x2821FE8E8](v0, v7 + v8, v2 | v6 | 7);
}

uint64_t sub_25450BD4C(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for AutoRelockTimePickerView(0) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = v6 + *(v5 + 64);
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC620, &qword_2545503B0) - 8);
  v9 = (v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_2544AE3EC;

  return sub_254509C84(a1, v10, v11, v1 + v6, v1 + v9);
}

uint64_t sub_25450BEA8(uint64_t a1)
{
  v2 = type metadata accessor for AutoRelockTimePickerView(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

double SelectableIconView.body.getter@<D0>(uint64_t *a2@<X8>)
{
  *a2 = sub_25454BA54();
  a2[1] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC6E8, &qword_254550610);
  sub_25450BFBC(v2, a2 + *(v5 + 44));
  type metadata accessor for SelectableIconView(0);
  sub_25454BA54();
  sub_25454A544();
  v6 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC6F0, &qword_254550618) + 36));
  *v6 = v8;
  v6[1] = v9;
  result = *&v10;
  v6[2] = v10;
  return result;
}

void sub_25450BFBC(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v112 = a1;
  v109 = a2;
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC738, &qword_2545506B0);
  MEMORY[0x28223BE20](v107);
  v108 = (&v91 - v2);
  v99 = sub_254549D24();
  v97 = *(v99 - 8);
  MEMORY[0x28223BE20](v99);
  v98 = &v91 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = sub_254549744();
  v95 = *(v100 - 8);
  MEMORY[0x28223BE20](v100);
  v5 = &v91 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC740, &qword_2545506B8);
  MEMORY[0x28223BE20](v106);
  v96 = (&v91 - v6);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FBCA8, &unk_254550680);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v91 - v8;
  v10 = sub_254549F04();
  v110 = *(v10 - 8);
  v111 = v10;
  MEMORY[0x28223BE20](v10);
  v12 = &v91 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC748, &qword_2545506C0);
  v14 = MEMORY[0x28223BE20](v13 - 8);
  v105 = &v91 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v104 = &v91 - v16;
  v17 = sub_25454A744();
  MEMORY[0x28223BE20](v17);
  v19 = &v91 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC750, &qword_2545506C8);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v103 = &v91 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v21);
  v25 = &v91 - v24;
  MEMORY[0x28223BE20](v23);
  v27 = &v91 - v26;
  sub_25454BE14();
  v102 = sub_25454BE04();
  sub_25454BDB4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v28 = type metadata accessor for SelectableIconView(0);
  v29 = v112;
  v30 = *(v112 + v28[9]);
  v31 = *(v17 + 20);
  v32 = *MEMORY[0x277CE0118];
  v33 = sub_25454ABA4();
  (*(*(v33 - 8) + 104))(&v19[v31], v32, v33);
  *v19 = v30;
  *(v19 + 1) = v30;
  v34 = sub_25454B684();
  v35 = *(v29 + 8);
  v36 = *(v29 + 16);
  *&v114 = *v29;
  *(&v114 + 1) = v35;
  LOBYTE(v115) = v36;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FB580, &unk_2545506D0);
  MEMORY[0x259C0EA00](v113, v37);
  sub_25454A484();
  sub_25450D24C(v19, v25);
  v38 = &v25[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC758, &unk_254550900) + 36)];
  v39 = v115;
  *v38 = v114;
  *(v38 + 1) = v39;
  *(v38 + 4) = v116;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC760, &unk_2545506E0);
  *&v25[*(v40 + 52)] = v34;
  *&v25[*(v40 + 56)] = 256;
  v41 = sub_25454BA54();
  v43 = v42;
  sub_25450D2B0(v19);
  v44 = &v25[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC768, &qword_254550910) + 36)];
  *v44 = v41;
  v44[1] = v43;
  v101 = v27;
  sub_25450D30C(v25, v27);
  sub_2544AE240(v29 + v28[6], v9, &qword_27F5FBCA8, &unk_254550680);
  v46 = v110;
  v45 = v111;
  if ((*(v110 + 48))(v9, 1, v111) == 1)
  {
    sub_2544AE150(v9, &qword_27F5FBCA8, &unk_254550680);
    v111 = v28[5];
    v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC610, &qword_254550368);
    v47 = v112;
    MEMORY[0x259C0EA00]();
    sub_254549734();
    v95 = *(v95 + 8);
    (v95)(v5, v100);
    v48 = sub_25454B704();
    v49 = *(v47 + v28[7]);
    KeyPath = swift_getKeyPath();
    v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC770, &unk_254550720);
    v51 = v96;
    v52 = (v96 + *(v50 + 36));
    v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FB3A0, &qword_2545509C0);
    v54 = *(v53 + 28);

    sub_25454AC34();
    v55 = sub_25454AC44();
    v56 = *(v55 - 8);
    v93 = *(v56 + 56);
    v94 = v56 + 56;
    v93(v52 + v54, 0, 1, v55);
    *v52 = swift_getKeyPath();
    v57 = KeyPath;
    *v51 = v48;
    v51[1] = v57;
    v51[2] = v49;
    v58 = (v51 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC778, &qword_254550760) + 36));
    v59 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC780, &qword_254550768) + 28);
    v60 = *MEMORY[0x277CE1048];
    v61 = sub_25454B754();
    (*(*(v61 - 8) + 104))(v58 + v59, v60, v61);
    *v58 = swift_getKeyPath();
    v62 = (v51 + *(v106 + 36));
    v63 = *(v53 + 28);
    MEMORY[0x259C0EA00](v110);
    v64 = v98;
    sub_254549724();
    (v95)(v5, v100);
    sub_254549D14();
    (*(v97 + 8))(v64, v99);
    v93(v62 + v63, 0, 1, v55);
    *v62 = swift_getKeyPath();
    sub_2544AE240(v51, v108, &qword_27F5FC740, &qword_2545506B8);
    swift_storeEnumTagMultiPayload();
    sub_25450D478(&qword_27F5FC788, &qword_27F5FC740, &qword_2545506B8, sub_25450D394);
    v65 = v104;
    sub_25454AD44();
    sub_2544AE150(v51, &qword_27F5FC740, &qword_2545506B8);
  }

  else
  {
    (*(v46 + 32))(v12, v9, v45);
    v113[0] = sub_254549EC4();
    v113[1] = v66;
    sub_2544AECF0();
    v67 = sub_25454B274();
    v69 = v68;
    v71 = v70;
    sub_25454B054();
    v72 = sub_25454B194();
    v74 = v73;
    v76 = v75;
    sub_2544C9C64(v67, v69, v71 & 1);

    if (*(v112 + v28[8]) == 1)
    {
      sub_254549EF4();
    }

    else
    {
      sub_25454B644();
    }

    v77 = v12;
    v78 = sub_25454B1D4();
    v80 = v79;
    v82 = v81;
    v84 = v83;

    sub_2544C9C64(v72, v74, v76 & 1);

    v85 = v108;
    *v108 = v78;
    v85[1] = v80;
    *(v85 + 16) = v82 & 1;
    v85[3] = v84;
    swift_storeEnumTagMultiPayload();
    sub_25450D478(&qword_27F5FC788, &qword_27F5FC740, &qword_2545506B8, sub_25450D394);
    v65 = v104;
    sub_25454AD44();
    (*(v110 + 8))(v77, v111);
  }

  v86 = v101;
  v87 = v103;
  sub_2544AE240(v101, v103, &qword_27F5FC750, &qword_2545506C8);
  v88 = v105;
  sub_2544AE240(v65, v105, &qword_27F5FC748, &qword_2545506C0);
  v89 = v109;
  sub_2544AE240(v87, v109, &qword_27F5FC750, &qword_2545506C8);
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC7B0, &unk_2545507A0);
  sub_2544AE240(v88, v89 + *(v90 + 48), &qword_27F5FC748, &qword_2545506C0);
  sub_2544AE150(v65, &qword_27F5FC748, &qword_2545506C0);
  sub_2544AE150(v86, &qword_27F5FC750, &qword_2545506C8);
  sub_2544AE150(v88, &qword_27F5FC748, &qword_2545506C0);
  sub_2544AE150(v87, &qword_27F5FC750, &qword_2545506C8);
}

uint64_t type metadata accessor for SelectableIconView(uint64_t a1)
{
  result = qword_27F5FC6F8;
  if (!qword_27F5FC6F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

double sub_25450CC64@<D0>(uint64_t *a2@<X8>)
{
  *a2 = sub_25454BA54();
  a2[1] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC6E8, &qword_254550610);
  sub_25450BFBC(v2, a2 + *(v5 + 44));
  sub_25454BA54();
  sub_25454A544();
  v6 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC6F0, &qword_254550618) + 36));
  *v6 = v8;
  v6[1] = v9;
  result = *&v10;
  v6[2] = v10;
  return result;
}

uint64_t sub_25450CD30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC610, &qword_254550368);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 20);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FBCA8, &unk_254550680);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 24);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_25450CE80(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC610, &qword_254550368);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 20);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FBCA8, &unk_254550680);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 24);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

void sub_25450CFBC(uint64_t a1)
{
  sub_25450D0DC();
  if (v1 <= 0x3F)
  {
    sub_25450D12C(319, &qword_27F5FC710, MEMORY[0x277D15460], MEMORY[0x277CE11F8]);
    if (v2 <= 0x3F)
    {
      sub_25450D12C(319, &qword_27F5FC718, MEMORY[0x277D169F8], MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_25450D0DC()
{
  if (!qword_27F5FC708)
  {
    v0 = sub_25454B964();
    if (!v1)
    {
      atomic_store(v0, &qword_27F5FC708);
    }
  }
}

void sub_25450D12C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

unint64_t sub_25450D194()
{
  result = qword_27F5FC720;
  if (!qword_27F5FC720)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5FC6F0, &qword_254550618);
    sub_2544AE1F0(&qword_27F5FC728, &qword_27F5FC730, &qword_2545506A8, MEMORY[0x277CE11A8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5FC720);
  }

  return result;
}

uint64_t sub_25450D24C(uint64_t a1, uint64_t a2)
{
  v4 = sub_25454A744();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_25450D2B0(uint64_t a1)
{
  v2 = sub_25454A744();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_25450D30C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC750, &qword_2545506C8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_25450D394()
{
  result = qword_27F5FC790;
  if (!qword_27F5FC790)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5FC778, &qword_254550760);
    sub_25450D478(&qword_27F5FC798, &qword_27F5FC770, &unk_254550720, sub_254504F80);
    sub_2544AE1F0(&qword_27F5FC7A8, &qword_27F5FC780, &qword_254550768, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5FC790);
  }

  return result;
}

uint64_t sub_25450D478(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    sub_2544AE1F0(&qword_27F5FC7A0, &qword_27F5FB3A0, &qword_2545509C0, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t SoftwareUpdateStatusView.body.getter@<X0>(uint64_t a1@<X8>)
{
  updated = type metadata accessor for SoftwareUpdateStatusView(0);
  v4 = *(updated - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](updated - 8);
  *a1 = sub_25454AC24();
  *(a1 + 8) = 0x4020000000000000;
  *(a1 + 16) = 0;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC7B8, &unk_2545507B0);
  sub_25450D6B8(v1, a1 + *(v6 + 44));
  sub_254515C8C(v1, &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for SoftwareUpdateStatusView);
  v7 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v8 = swift_allocObject();
  sub_254515F20(&v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v8 + v7, type metadata accessor for SoftwareUpdateStatusView);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC7D0, &qword_2545507D0);
  v10 = (a1 + *(result + 36));
  *v10 = sub_25450EDB4;
  v10[1] = v8;
  v10[2] = 0;
  v10[3] = 0;
  return result;
}

double sub_25450D6B8@<D0>(uint64_t (*a1)(char *, uint64_t, uint64_t)@<X0>, uint64_t a2@<X8>)
{
  v75 = a2;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC8B0, &qword_254550A10);
  v72 = *(v73 - 8);
  MEMORY[0x28223BE20](v73);
  v65 = (&v64 - v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC8B8, &qword_254550A18);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v74 = &v64 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v68 = &v64 - v7;
  v67 = sub_25454A0F4();
  v66 = *(v67 - 8);
  v8 = MEMORY[0x28223BE20](v67);
  v64 = &v64 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = &v64 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC8C0, &qword_254550A20);
  v13 = MEMORY[0x28223BE20](v12 - 8);
  v71 = &v64 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v77 = (&v64 - v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC8C8, &qword_254550A28);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v64 - v17;
  v19 = sub_254549AB4();
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v22 = &v64 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC8D0, &qword_254550A30);
  v24 = MEMORY[0x28223BE20](v23);
  v70 = &v64 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x28223BE20](v24);
  v28 = &v64 - v27;
  MEMORY[0x28223BE20](v26);
  v76 = &v64 - v29;
  sub_25454BE14();
  v69 = sub_25454BE04();
  sub_25454BDB4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FBCD8, &qword_25454F730);
  sub_25454B7A4();
  *v18 = sub_25454AB14();
  *(v18 + 1) = 0;
  v18[16] = 1;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC8D8, &qword_254550A38);
  sub_25450EDCC(v22, a1, &v18[*(v30 + 44)]);
  sub_25454BA54();
  sub_25454A784();
  sub_2544B14E8(v18, v28, &qword_27F5FC8C8, &qword_254550A28);
  v31 = &v28[*(v23 + 36)];
  v32 = v86;
  *(v31 + 4) = v85;
  *(v31 + 5) = v32;
  *(v31 + 6) = v87;
  v33 = v82;
  *v31 = v81;
  *(v31 + 1) = v33;
  v34 = v84;
  *(v31 + 2) = v83;
  *(v31 + 3) = v34;
  (*(v20 + 8))(v22, v19);
  sub_2544B14E8(v28, v76, &qword_27F5FC8D0, &qword_254550A30);
  updated = type metadata accessor for SoftwareUpdateStatusView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC7C0, &qword_2545507C0);
  sub_25454B7A4();
  v36 = sub_25454A0C4();
  v38 = v37;
  v39 = *(v66 + 8);
  v40 = v67;
  v39(v11, v67);
  v41 = sub_25454BA54();
  v42 = v77;
  *v77 = v41;
  v42[1] = v43;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC8E0, &qword_254550A40);
  sub_2545120A4(v36, v38, a1, v42 + *(v44 + 44));

  v45 = a1 + *(updated + 20);
  v46 = *v45;
  v47 = *(v45 + 1);
  v79 = v46;
  v80 = v47;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FADF8, &qword_25454FF70);
  sub_25454B7A4();
  if ((v78 & 1) != 0 || (v48 = v64, sub_25454B7A4(), sub_25454A0C4(), v50 = v49, v39(v48, v40), !v50))
  {
    v53 = sub_25454AC24();
    v54 = v65;
    *v65 = v53;
    *(v54 + 8) = 0x4038000000000000;
    *(v54 + 16) = 0;
    v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC8E8, &qword_254550A48);
    sub_25450DF5C(a1, (v54 + *(v55 + 44)));
    v52 = v68;
    sub_2544B14E8(v54, v68, &qword_27F5FC8B0, &qword_254550A10);
    v51 = 0;
  }

  else
  {

    v51 = 1;
    v52 = v68;
  }

  (*(v72 + 56))(v52, v51, 1, v73);
  v56 = v76;
  v57 = v70;
  sub_2544AE240(v76, v70, &qword_27F5FC8D0, &qword_254550A30);
  v58 = v77;
  v59 = v71;
  sub_2544AE240(v77, v71, &qword_27F5FC8C0, &qword_254550A20);
  v60 = v74;
  sub_2544AE240(v52, v74, &qword_27F5FC8B8, &qword_254550A18);
  v61 = v75;
  sub_2544AE240(v57, v75, &qword_27F5FC8D0, &qword_254550A30);
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC8F0, &qword_254550A50);
  sub_2544AE240(v59, v61 + *(v62 + 48), &qword_27F5FC8C0, &qword_254550A20);
  sub_2544AE240(v60, v61 + *(v62 + 64), &qword_27F5FC8B8, &qword_254550A18);
  sub_2544AE150(v52, &qword_27F5FC8B8, &qword_254550A18);
  sub_2544AE150(v58, &qword_27F5FC8C0, &qword_254550A20);
  sub_2544AE150(v56, &qword_27F5FC8D0, &qword_254550A30);
  sub_2544AE150(v60, &qword_27F5FC8B8, &qword_254550A18);
  sub_2544AE150(v59, &qword_27F5FC8C0, &qword_254550A20);
  sub_2544AE150(v57, &qword_27F5FC8D0, &qword_254550A30);

  return result;
}

double sub_25450DF5C@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = sub_254549AB4();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v71 = v64 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v70 = v64 - v9;
  MEMORY[0x28223BE20](v8);
  v69 = v64 - v10;
  updated = type metadata accessor for SoftwareUpdateAccessoryCell(0);
  MEMORY[0x28223BE20](updated - 8);
  v74 = v64 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC8F8, &qword_254550A58);
  v13 = MEMORY[0x28223BE20](v72);
  v75 = v64 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v73 = v64 - v16;
  MEMORY[0x28223BE20](v15);
  v18 = v64 - v17;
  sub_25454BE14();
  v76 = sub_25454BE04();
  sub_25454BDB4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v19 = sub_25450E600();
  if (v20)
  {
    *&v96 = v19;
    *(&v96 + 1) = v20;
    sub_2544AECF0();
    v21 = sub_25454B274();
    v23 = v22;
    v25 = v24;
    v65 = v5;
    sub_25454B104();
    v67 = v18;
    v26 = sub_25454B224();
    v66 = v4;
    v27 = v26;
    v68 = a2;
    v29 = v28;
    v31 = v30;
    v64[1] = a1;

    sub_2544C9C64(v21, v23, v25 & 1);

    sub_25454B644();
    v32 = sub_25454B1D4();
    v34 = v33;
    v36 = v35;
    v38 = v37;

    v39 = v27;
    v4 = v66;
    v40 = v29;
    a2 = v68;
    sub_2544C9C64(v39, v40, v31 & 1);

    sub_25454BA64();
    sub_25454A784();
    v41 = v36 & 1;
    v18 = v67;
    LOBYTE(v86[0]) = v41;
    *&v87 = v32;
    *(&v87 + 1) = v34;
    LOBYTE(v88) = v41;
    *(&v88 + 1) = v38;
    v5 = v65;
    nullsub_1();
    v102 = v93;
    v103 = v94;
    v104 = v95;
    v98 = v89;
    v99 = v90;
    v100 = v91;
    v101 = v92;
    v96 = v87;
    v97 = v88;
  }

  else
  {
    sub_254515F04(&v96);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FBCD8, &qword_25454F730);
  v42 = v69;
  sub_25454B7A4();
  v43 = *(v5 + 16);
  v44 = v70;
  v43(v70, v42, v4);
  v43(v71, v44, v4);
  v45 = v74;
  sub_25454B794();
  v46 = *(v5 + 8);
  v46(v44, v4);
  v46(v42, v4);
  sub_25454BA64();
  sub_25454A784();
  v47 = v45;
  v48 = v73;
  sub_254515F20(v47, v73, type metadata accessor for SoftwareUpdateAccessoryCell);
  v49 = (v48 + *(v72 + 36));
  v50 = v110;
  v49[4] = v109;
  v49[5] = v50;
  v49[6] = v111;
  v51 = v106;
  *v49 = v105;
  v49[1] = v51;
  v52 = v108;
  v49[2] = v107;
  v49[3] = v52;
  sub_2544B14E8(v48, v18, &qword_27F5FC8F8, &qword_254550A58);
  v83 = v102;
  v84 = v103;
  v85 = v104;
  v79 = v98;
  v80 = v99;
  v81 = v100;
  v82 = v101;
  v77 = v96;
  v78 = v97;
  v53 = v75;
  sub_2544AE240(v18, v75, &qword_27F5FC8F8, &qword_254550A58);
  v54 = v84;
  v86[6] = v83;
  v86[7] = v84;
  v55 = v85;
  v86[8] = v85;
  v56 = v79;
  v57 = v80;
  v86[2] = v79;
  v86[3] = v80;
  v59 = v81;
  v58 = v82;
  v86[4] = v81;
  v86[5] = v82;
  v61 = v77;
  v60 = v78;
  v86[0] = v77;
  v86[1] = v78;
  a2[6] = v83;
  a2[7] = v54;
  a2[8] = v55;
  a2[2] = v56;
  a2[3] = v57;
  a2[4] = v59;
  a2[5] = v58;
  *a2 = v61;
  a2[1] = v60;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC900, &qword_254550A60);
  sub_2544AE240(v53, a2 + *(v62 + 48), &qword_27F5FC8F8, &qword_254550A58);
  sub_2544AE240(v86, &v87, &qword_27F5FC908, &unk_254550A68);
  sub_2544AE150(v18, &qword_27F5FC8F8, &qword_254550A58);
  sub_2544AE150(v53, &qword_27F5FC8F8, &qword_254550A58);
  v93 = v83;
  v94 = v84;
  v95 = v85;
  v89 = v79;
  v90 = v80;
  v91 = v81;
  v92 = v82;
  v87 = v77;
  v88 = v78;
  sub_2544AE150(&v87, &qword_27F5FC908, &unk_254550A68);

  return result;
}

uint64_t sub_25450E600()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FB7A8, &unk_25454EB70);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v49 - v1;
  v3 = sub_25454A0F4();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v49 = &v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v50 = &v49 - v8;
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v49 - v10;
  MEMORY[0x28223BE20](v9);
  v13 = &v49 - v12;
  v14 = *(type metadata accessor for SoftwareUpdateStatusView(0) + 24);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC7C0, &qword_2545507C0);
  v52 = v14;
  v53 = v15;
  sub_25454B7A4();
  v16 = sub_25454A0D4();
  v18 = v17;
  v19 = *(v4 + 8);
  v19(v13, v3);
  if (v18)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FB990, "ܡ");
    v20 = swift_allocObject();
    *(v20 + 16) = xmmword_25454D8F0;
    *(v20 + 56) = MEMORY[0x277D837D0];
    *(v20 + 64) = sub_25450649C();
    *(v20 + 32) = v16;
    *(v20 + 40) = v18;
    v51 = sub_25454BD04();
    v18 = v21;
  }

  else
  {
    v51 = 0;
  }

  sub_25454B7A4();
  sub_25454A0B4();
  v22 = v11;
  v23 = v3;
  v24 = v19;
  v19(v22, v3);
  v25 = sub_254549354();
  v26 = (*(*(v25 - 8) + 48))(v2, 1, v25);
  sub_2544AE150(v2, &qword_27F5FB7A8, &unk_25454EB70);
  if (v26 == 1)
  {
    if (v18)
    {
      v27 = sub_254511480();
      if (v28)
      {
        if (v51 == v27 && v18 == v28)
        {

          goto LABEL_24;
        }

        v44 = sub_25454C334();

        if (v44)
        {
LABEL_24:
          v45 = v49;
          sub_25454B7A4();
          v46 = sub_25454A0E4();
          v48 = v47;
          v19(v45, v23);
          if (v48)
          {
            return v46;
          }

          else
          {
            return 0;
          }
        }
      }

      else
      {
      }
    }

    return 0;
  }

  v29 = v56;
  v55 = v51;
  v56[0] = v18;
  v30 = v50;
  sub_25454B7A4();
  v31 = sub_25454A0E4();
  v33 = v32;
  v24(v30, v23);
  v34 = 0;
  v56[1] = v31;
  v56[2] = v33;
  v35 = MEMORY[0x277D84F90];
  v49 = v56;
LABEL_11:
  v36 = &v29[2 * v34];
  while (++v34 != 3)
  {
    v38 = *(v36 - 1);
    v37 = *v36;
    sub_25454BE14();

    sub_25454BE04();
    sub_25454BDB4();
    if ((swift_task_isCurrentExecutor() & 1) == 0)
    {
      swift_task_reportUnexpectedExecutor();
    }

    v36 += 2;

    if (v37)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v35 = sub_2544D3ACC(0, *(v35 + 2) + 1, 1, v35);
      }

      v29 = v49;
      v40 = *(v35 + 2);
      v39 = *(v35 + 3);
      if (v40 >= v39 >> 1)
      {
        v35 = sub_2544D3ACC((v39 > 1), v40 + 1, 1, v35);
      }

      *(v35 + 2) = v40 + 1;
      v41 = &v35[16 * v40];
      *(v41 + 4) = v38;
      *(v41 + 5) = v37;
      goto LABEL_11;
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC910, &qword_254550A78);
  swift_arrayDestroy();
  v54 = v35;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC918, &unk_254550A80);
  sub_2544AE1F0(&qword_27F5FC920, &qword_27F5FC918, &unk_254550A80, MEMORY[0x277D83958]);
  v42 = sub_25454BC04();

  return v42;
}

double sub_25450EBD8(uint64_t a1)
{
  v2 = sub_25454A0F4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v15[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_25454BE14();
  sub_25454BE04();
  sub_25454BDB4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  updated = type metadata accessor for SoftwareUpdateStatusView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC7C0, &qword_2545507C0);
  sub_25454B7A4();
  v7 = sub_25454A0C4();
  v9 = v8;
  (*(v3 + 8))(v5, v2);
  if (!v9)
  {
    goto LABEL_7;
  }

  v10 = HIBYTE(v9) & 0xF;
  if ((v9 & 0x2000000000000000) == 0)
  {
    v10 = v7 & 0xFFFFFFFFFFFFLL;
  }

  if (!v10)
  {
LABEL_7:
    v11 = (a1 + *(updated + 20));
    v12 = *v11;
    v13 = *(v11 + 1);
    v15[16] = v12;
    v16 = v13;
    v15[15] = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FADF8, &qword_25454FF70);
    sub_25454B7B4();
  }

  return result;
}

void sub_25450EDCC(uint64_t a1@<X0>, uint64_t (*a2)(char *, uint64_t, uint64_t)@<X1>, uint64_t a3@<X8>)
{
  v251 = a2;
  v261 = a3;
  v205 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC9F0, &qword_254550B78);
  MEMORY[0x28223BE20](v205);
  v206 = &v192 - v4;
  v260 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC9F8, &qword_254550B80);
  MEMORY[0x28223BE20](v260);
  v207 = &v192 - v5;
  v194 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FCA00, &qword_254550B88);
  MEMORY[0x28223BE20](v194);
  v197 = &v192 - v6;
  v195 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FCA08, &qword_254550B90);
  MEMORY[0x28223BE20](v195);
  v198 = &v192 - v7;
  v196 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FCA10, &qword_254550B98);
  MEMORY[0x28223BE20](v196);
  v199 = &v192 - v8;
  v203 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FCA18, &qword_254550BA0);
  MEMORY[0x28223BE20](v203);
  v200 = &v192 - v9;
  v204 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FCA20, &qword_254550BA8);
  v202 = *(v204 - 8);
  MEMORY[0x28223BE20](v204);
  v201 = &v192 - v10;
  v234 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FB3C0, &qword_254550BB0);
  v228 = *(v234 - 8);
  MEMORY[0x28223BE20](v234);
  v227 = &v192 - v11;
  v257 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FCA28, &qword_254550BB8);
  MEMORY[0x28223BE20](v257);
  v259 = &v192 - v12;
  v231 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FCA30, &qword_254550BC0);
  MEMORY[0x28223BE20](v231);
  v232 = &v192 - v13;
  v258 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FCA38, &qword_254550BC8);
  MEMORY[0x28223BE20](v258);
  v233 = &v192 - v14;
  v252 = sub_25454ADA4();
  v226 = *(v252 - 8);
  MEMORY[0x28223BE20](v252);
  v225 = &v192 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_254549AB4();
  v213 = *(v16 - 8);
  v214 = v16;
  MEMORY[0x28223BE20](v16);
  v211 = v17;
  v212 = &v192 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  updated = type metadata accessor for SoftwareUpdateStatusView(0);
  v208 = *(updated - 8);
  MEMORY[0x28223BE20](updated);
  v209 = v18;
  v210 = &v192 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FCA40, &qword_254550BD0);
  v223 = *(v19 - 8);
  v224 = v19;
  v20 = MEMORY[0x28223BE20](v19);
  v192 = &v192 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v215 = &v192 - v22;
  v222 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FCA48, &qword_254550BD8);
  v23 = MEMORY[0x28223BE20](v222);
  v193 = &v192 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v217 = &v192 - v25;
  v216 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FCA50, &qword_254550BE0);
  MEMORY[0x28223BE20](v216);
  v218 = &v192 - v26;
  v229 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FCA58, &qword_254550BE8);
  MEMORY[0x28223BE20](v229);
  v219 = &v192 - v27;
  v230 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FCA60, &qword_254550BF0);
  v221 = *(v230 - 8);
  MEMORY[0x28223BE20](v230);
  v220 = &v192 - v28;
  v29 = sub_254549DC4();
  v249 = *(v29 - 8);
  v250 = v29;
  MEMORY[0x28223BE20](v29);
  v247 = &v192 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FCA68, &qword_254550BF8);
  v32 = MEMORY[0x28223BE20](v31 - 8);
  v256 = &v192 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32);
  v255 = &v192 - v34;
  v245 = sub_25454A744();
  MEMORY[0x28223BE20](v245);
  v246 = &v192 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_254549D24();
  v243 = *(v36 - 8);
  v244 = v36;
  MEMORY[0x28223BE20](v36);
  v242 = &v192 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v263 = sub_25454B714();
  v239 = *(v263 - 8);
  MEMORY[0x28223BE20](v263);
  v39 = &v192 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v262 = sub_254549744();
  v265 = *(v262 - 8);
  MEMORY[0x28223BE20](v262);
  v41 = &v192 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = sub_25454A0A4();
  v43 = *(v42 - 8);
  MEMORY[0x28223BE20](v42);
  v45 = &v192 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v241 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FCA70, &qword_254550C00);
  v46 = MEMORY[0x28223BE20](v241);
  v254 = &v192 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v46);
  v264 = &v192 - v48;
  sub_25454BE14();
  v253 = sub_25454BE04();
  sub_25454BDB4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_254549AA4();
  sub_254549F44();
  v236 = *(v43 + 8);
  v236(v45, v42);
  sub_254549734();
  v49 = *(v265 + 8);
  v265 += 8;
  v238 = v49;
  v49(v41, v262);
  sub_25454B704();
  v50 = v239;
  v51 = v263;
  (*(v239 + 104))(v39, *MEMORY[0x277CE0FE0], v263);
  v240 = sub_25454B764();

  (*(v50 + 8))(v39, v51);
  sub_25454BA54();
  sub_25454A544();
  LOBYTE(v266) = 1;
  *&v280[6] = *&v287[13];
  *&v280[22] = *&v287[15];
  *&v280[38] = *&v287[17];
  LODWORD(v239) = sub_25454AF14();
  sub_25454A394();
  v53 = v52;
  v55 = v54;
  v57 = v56;
  v59 = v58;
  LOBYTE(v268) = 0;
  sub_254549AA4();
  v237 = sub_254549FD4();
  v60 = v236;
  v236(v45, v42);
  KeyPath = swift_getKeyPath();
  v61 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FCA78, &qword_254550C08) + 36);
  v263 = a1;
  v62 = v264;
  v63 = (v264 + v61);
  v64 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FB3A0, &qword_2545509C0) + 28);
  sub_254549AA4();
  sub_254549F44();
  v60(v45, v42);
  v65 = v242;
  sub_254549724();
  v238(v41, v262);
  sub_254549D14();
  (*(v243 + 8))(v65, v244);
  v66 = sub_25454AC44();
  (*(*(v66 - 8) + 56))(v63 + v64, 0, 1, v66);
  *v63 = swift_getKeyPath();
  *v62 = v240;
  *(v62 + 8) = 0;
  *(v62 + 16) = 1;
  *(v62 + 18) = *v280;
  *(v62 + 34) = *&v280[16];
  *(v62 + 50) = *&v280[32];
  *(v62 + 64) = *&v280[46];
  *(v62 + 72) = v239;
  *(v62 + 80) = v53;
  *(v62 + 88) = v55;
  *(v62 + 96) = v57;
  *(v62 + 104) = v59;
  *(v62 + 112) = 0;
  v67 = v237;
  *(v62 + 120) = KeyPath;
  *(v62 + 128) = v67;
  v68 = *(v245 + 20);
  v69 = *MEMORY[0x277CE0118];
  v70 = sub_25454ABA4();
  v71 = *(v70 - 8);
  v72 = *(v71 + 104);
  v73 = v246;
  v245 = v71 + 104;
  v72(&v246[v68], v69, v70);
  __asm { FMOV            V0.2D, #10.0 }

  *v73 = _Q0;
  v79 = sub_25454B644();
  sub_25454A484();
  v80 = v62 + *(v241 + 36);
  v81 = v263;
  sub_254515C8C(v73, v80, MEMORY[0x277CDFC08]);
  v82 = v80 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC758, &unk_254550900) + 36);
  v83 = *&v287[21];
  *v82 = *&v287[19];
  *(v82 + 16) = v83;
  *(v82 + 32) = v287[23];
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC760, &unk_2545506E0);
  *(v80 + *(v84 + 52)) = v79;
  *(v80 + *(v84 + 56)) = 256;
  v85 = sub_25454BA54();
  v87 = v86;
  sub_25450D2B0(v73);
  v88 = (v80 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC768, &qword_254550910) + 36));
  *v88 = v85;
  v88[1] = v87;
  v89 = sub_25454BA54();
  v91 = v90;
  v92 = (v80 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC860, &qword_254550918) + 36));
  *v92 = v89;
  v92[1] = v91;
  v265 = sub_25454AC24();
  v279 = 0;
  v93 = v251;
  sub_254510E18(v251, &v268);
  v283 = *&v269[16];
  v284 = *&v269[32];
  v285 = *&v269[48];
  v286 = *&v269[64];
  v281 = v268;
  v282 = *v269;
  *&v287[4] = *&v269[16];
  *&v287[6] = *&v269[32];
  *&v287[10] = *&v269[64];
  *&v287[8] = *&v269[48];
  *v287 = v268;
  *&v287[2] = *v269;
  sub_2544AE240(&v281, &v266, &qword_27F5FCA80, &unk_254550C10);
  sub_2544AE150(v287, &qword_27F5FCA80, &unk_254550C10);
  *&v278[39] = v283;
  *&v278[55] = v284;
  *&v278[71] = v285;
  *&v278[87] = v286;
  *&v278[7] = v281;
  *&v278[23] = v282;
  LODWORD(v262) = v279;
  sub_25454BA64();
  sub_25454A784();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC7C8, &qword_2545507C8);
  v94 = v247;
  sub_25454B7A4();
  v95 = v249;
  v96 = v250;
  v97 = (*(v249 + 88))(v94, v250);
  if (v97 != *MEMORY[0x277D16608])
  {
    if (v97 == *MEMORY[0x277D16628])
    {
      goto LABEL_7;
    }

    if (v97 == *MEMORY[0x277D16618])
    {
      goto LABEL_5;
    }

    if (v97 == *MEMORY[0x277D165F8])
    {
LABEL_7:
      v105 = v210;
      sub_254515C8C(v93, v210, type metadata accessor for SoftwareUpdateStatusView);
      v251 = v72;
      v107 = v213;
      v106 = v214;
      v108 = *(v213 + 16);
      LODWORD(v250) = v69;
      v109 = v212;
      v108(v212, v81, v214);
      v110 = (*(v208 + 80) + 16) & ~*(v208 + 80);
      v111 = (v209 + *(v107 + 80) + v110) & ~*(v107 + 80);
      v112 = swift_allocObject();
      sub_254515F20(v105, v112 + v110, type metadata accessor for SoftwareUpdateStatusView);
      (*(v107 + 32))(v112 + v111, v109, v106);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FCB00, &qword_254550C48);
      v113 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5FCB08, &qword_254550C50);
      v114 = sub_254516DB8();
      *&v268 = v113;
      *(&v268 + 1) = v114;
      swift_getOpaqueTypeConformance2();
      v115 = v215;
      sub_25454B7F4();
      sub_25454BA54();
      sub_25454A784();
      v116 = v217;
      (*(v223 + 32))(v217, v115, v224);
      v117 = &v116[*(v222 + 36)];
      v118 = v293;
      *(v117 + 4) = v292;
      *(v117 + 5) = v118;
      *(v117 + 6) = v294;
      v119 = v289;
      *v117 = v288;
      *(v117 + 1) = v119;
      v120 = v291;
      *(v117 + 2) = v290;
      *(v117 + 3) = v120;
      v121 = [objc_opt_self() tertiarySystemFillColor];
      v122 = sub_25454B5F4();
      LOBYTE(v110) = sub_25454AF14();
      v123 = v116;
      v124 = v218;
      sub_2544B14E8(v123, v218, &qword_27F5FCA48, &qword_254550BD8);
      v125 = v124 + *(v216 + 36);
      *v125 = v122;
      *(v125 + 8) = v110;
      v126 = v229;
      v127 = v219;
      v128 = &v219[*(v229 + 36)];
      v251(v128, v250, v70);
      *&v128[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FCAC0, &qword_254550C30) + 36)] = 256;
      sub_2544B14E8(v124, v127, &qword_27F5FCA50, &qword_254550BE0);
      v129 = v225;
      sub_25454AD94();
      v130 = sub_254516B60();
      v131 = sub_254516300();
      v132 = v220;
      v133 = v252;
      sub_25454B304();
      (*(v226 + 8))(v129, v133);
      sub_2544AE150(v127, &qword_27F5FCA58, &qword_254550BE8);
      v134 = v221;
      v135 = v230;
      (*(v221 + 16))(v232, v132, v230);
      swift_storeEnumTagMultiPayload();
      *&v268 = v126;
      *(&v268 + 1) = v133;
      *v269 = v130;
      *&v269[8] = v131;
      swift_getOpaqueTypeConformance2();
      sub_2544AE1F0(&qword_27F5FCAE0, &qword_27F5FB3C0, &qword_254550BB0, MEMORY[0x277CDD7F8]);
      v136 = v233;
      sub_25454AD44();
      v137 = &qword_27F5FCA38;
      v138 = &qword_254550BC8;
      sub_2544AE240(v136, v259, &qword_27F5FCA38, &qword_254550BC8);
    }

    else
    {
      if (v97 != *MEMORY[0x277D16640])
      {
        swift_storeEnumTagMultiPayload();
        v188 = v95;
        v189 = sub_2545166B4();
        v190 = sub_254516300();
        *&v268 = v203;
        *(&v268 + 1) = v252;
        *v269 = v189;
        *&v269[8] = v190;
        swift_getOpaqueTypeConformance2();
        v191 = v207;
        sub_25454AD44();
        sub_2544AE240(v191, v259, &qword_27F5FC9F8, &qword_254550B80);
        swift_storeEnumTagMultiPayload();
        sub_254516A4C();
        sub_254516CD0();
        v104 = v255;
        sub_25454AD44();
        sub_2544AE150(v191, &qword_27F5FC9F8, &qword_254550B80);
        (*(v188 + 8))(v94, v96);
        goto LABEL_9;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FCB00, &qword_254550C48);
      v158 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5FCB08, &qword_254550C50);
      v159 = sub_254516DB8();
      *&v268 = v158;
      *(&v268 + 1) = v159;
      swift_getOpaqueTypeConformance2();
      v160 = v192;
      sub_25454B7F4();
      sub_25454BA54();
      sub_25454A784();
      v161 = v193;
      (*(v223 + 32))(v193, v160, v224);
      v162 = (v161 + *(v222 + 36));
      v163 = v293;
      v162[4] = v292;
      v162[5] = v163;
      v162[6] = v294;
      v164 = v289;
      *v162 = v288;
      v162[1] = v164;
      v165 = v291;
      v162[2] = v290;
      v162[3] = v165;
      v166 = swift_getKeyPath();
      v167 = swift_allocObject();
      *(v167 + 16) = 1;
      v168 = v197;
      sub_2544B14E8(v161, v197, &qword_27F5FCA48, &qword_254550BD8);
      v169 = (v168 + *(v194 + 36));
      *v169 = v166;
      v169[1] = sub_2544C8E8C;
      v169[2] = v167;
      v170 = [objc_opt_self() tertiarySystemFillColor];
      v171 = sub_25454B5F4();
      LOBYTE(v167) = sub_25454AF14();
      v172 = v168;
      v173 = v198;
      sub_2544B14E8(v172, v198, &qword_27F5FCA00, &qword_254550B88);
      v174 = v173 + *(v195 + 36);
      *v174 = v171;
      *(v174 + 8) = v167;
      v175 = sub_25454B644();
      v176 = swift_getKeyPath();
      v177 = v173;
      v178 = v199;
      sub_2544B14E8(v177, v199, &qword_27F5FCA08, &qword_254550B90);
      v179 = (v178 + *(v196 + 36));
      *v179 = v176;
      v179[1] = v175;
      v180 = v72;
      v181 = v203;
      v182 = v200;
      v183 = &v200[*(v203 + 36)];
      v180(v183, v69, v70);
      *&v183[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FCAC0, &qword_254550C30) + 36)] = 256;
      sub_2544B14E8(v178, v182, &qword_27F5FCA10, &qword_254550B98);
      v184 = v225;
      sub_25454AD94();
      v185 = sub_2545166B4();
      v186 = sub_254516300();
      v132 = v201;
      v187 = v252;
      sub_25454B304();
      (*(v226 + 8))(v184, v187);
      sub_2544AE150(v182, &qword_27F5FCA18, &qword_254550BA0);
      v134 = v202;
      v135 = v204;
      (*(v202 + 16))(v206, v132, v204);
      swift_storeEnumTagMultiPayload();
      *&v268 = v181;
      *(&v268 + 1) = v187;
      *v269 = v185;
      *&v269[8] = v186;
      swift_getOpaqueTypeConformance2();
      v136 = v207;
      sub_25454AD44();
      v137 = &qword_27F5FC9F8;
      v138 = &qword_254550B80;
      sub_2544AE240(v136, v259, &qword_27F5FC9F8, &qword_254550B80);
    }

    swift_storeEnumTagMultiPayload();
    sub_254516A4C();
    sub_254516CD0();
    v104 = v255;
    sub_25454AD44();
    sub_2544AE150(v136, v137, v138);
    (*(v134 + 8))(v132, v135);
    goto LABEL_9;
  }

  (*(v95 + 8))(v94, v96);
LABEL_5:
  v98 = v227;
  sub_25454A4C4();
  v99 = v228;
  v100 = v234;
  (*(v228 + 16))(v232, v98, v234);
  swift_storeEnumTagMultiPayload();
  v101 = sub_254516B60();
  v102 = sub_254516300();
  *&v268 = v229;
  *(&v268 + 1) = v252;
  *v269 = v101;
  *&v269[8] = v102;
  swift_getOpaqueTypeConformance2();
  sub_2544AE1F0(&qword_27F5FCAE0, &qword_27F5FB3C0, &qword_254550BB0, MEMORY[0x277CDD7F8]);
  v103 = v233;
  sub_25454AD44();
  sub_2544AE240(v103, v259, &qword_27F5FCA38, &qword_254550BC8);
  swift_storeEnumTagMultiPayload();
  sub_254516A4C();
  sub_254516CD0();
  v104 = v255;
  sub_25454AD44();
  sub_2544AE150(v103, &qword_27F5FCA38, &qword_254550BC8);
  (*(v99 + 8))(v98, v100);
LABEL_9:
  v139 = v264;
  v140 = v254;
  sub_2544AE240(v264, v254, &qword_27F5FCA70, &qword_254550C00);
  v141 = v256;
  sub_2544AE240(v104, v256, &qword_27F5FCA68, &qword_254550BF8);
  v142 = v261;
  sub_2544AE240(v140, v261, &qword_27F5FCA70, &qword_254550C00);
  v143 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FCAF0, &qword_254550C38);
  v144 = v142 + *(v143 + 48);
  v145 = v265;
  *&v266 = v265;
  *(&v266 + 1) = 0x4000000000000000;
  v146 = v262;
  v267[0] = v262;
  *&v267[49] = *&v278[48];
  *&v267[65] = *&v278[64];
  *&v267[81] = *&v278[80];
  *&v267[96] = *&v278[95];
  *&v267[17] = *&v278[16];
  *&v267[33] = *&v278[32];
  *&v267[1] = *v278;
  *&v267[136] = v273;
  *&v267[120] = v272;
  *&v267[104] = v271;
  *&v267[200] = v277;
  *&v267[184] = v276;
  *&v267[168] = v275;
  *&v267[152] = v274;
  v147 = *v267;
  *v144 = v266;
  *(v144 + 16) = v147;
  v148 = *&v267[16];
  v149 = *&v267[32];
  v150 = *&v267[64];
  *(v144 + 64) = *&v267[48];
  *(v144 + 80) = v150;
  *(v144 + 32) = v148;
  *(v144 + 48) = v149;
  v151 = *&v267[80];
  v152 = *&v267[96];
  v153 = *&v267[128];
  *(v144 + 128) = *&v267[112];
  *(v144 + 144) = v153;
  *(v144 + 96) = v151;
  *(v144 + 112) = v152;
  v154 = *&v267[144];
  v155 = *&v267[160];
  v156 = *&v267[176];
  v157 = *&v267[192];
  *(v144 + 224) = *&v267[208];
  *(v144 + 192) = v156;
  *(v144 + 208) = v157;
  *(v144 + 160) = v154;
  *(v144 + 176) = v155;
  sub_2544AE240(v141, v142 + *(v143 + 64), &qword_27F5FCA68, &qword_254550BF8);
  sub_2544AE240(&v266, &v268, &qword_27F5FCAF8, &qword_254550C40);
  sub_2544AE150(v104, &qword_27F5FCA68, &qword_254550BF8);
  sub_2544AE150(v139, &qword_27F5FCA70, &qword_254550C00);
  sub_2544AE150(v141, &qword_27F5FCA68, &qword_254550BF8);
  *&v269[49] = *&v278[48];
  *&v269[65] = *&v278[64];
  *v270 = *&v278[80];
  *&v269[1] = *v278;
  *&v269[17] = *&v278[16];
  *&v269[33] = *&v278[32];
  *&v270[71] = v274;
  *&v270[87] = v275;
  *&v270[103] = v276;
  *&v270[119] = v277;
  *&v270[23] = v271;
  *&v270[39] = v272;
  *&v268 = v145;
  *(&v268 + 1) = 0x4000000000000000;
  v269[0] = v146;
  *&v270[15] = *&v278[95];
  *&v270[55] = v273;
  sub_2544AE150(&v268, &qword_27F5FCAF8, &qword_254550C40);
  sub_2544AE150(v140, &qword_27F5FCA70, &qword_254550C00);
}

uint64_t sub_254510E18@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  v91 = a1;
  v88 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FBFE0, &unk_254550CD0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v86 - v3;
  v5 = sub_2545497F4();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v86 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_25454A0A4();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v86 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25454BE14();
  v93 = sub_25454BE04();
  sub_25454BDB4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_254549AA4();
  sub_25454A004();
  (*(v10 + 8))(v12, v9);
  v13 = sub_2545497E4();
  v15 = v14;
  (*(v6 + 8))(v8, v5);
  v98 = v13;
  v99 = v15;
  sub_2544AECF0();
  v16 = sub_25454B274();
  v18 = v17;
  v20 = v19;
  sub_25454AFF4();
  v92 = sub_25454B224();
  v95 = v21;
  v96 = v22;
  v90 = v23;

  sub_2544C9C64(v16, v18, v20 & 1);

  sub_254549984();
  v24 = sub_254549D94();
  v25 = *(v24 - 8);
  if ((*(v25 + 48))(v4, 1, v24) == 1)
  {
    sub_2544AE150(v4, &qword_27F5FBFE0, &unk_254550CD0);
  }

  else
  {
    v26 = sub_254549D44();
    v28 = v27;
    (*(v25 + 8))(v4, v24);
    if (v28)
    {
      v98 = v26;
      v99 = v28;
      v29 = sub_25454B274();
      v31 = v30;
      v33 = v32;
      sub_25454B104();
      v34 = sub_25454B224();
      v36 = v35;
      v38 = v37;
      v40 = v39;

      sub_2544C9C64(v29, v31, v33 & 1);

      v41 = v38 & 1;
      v42 = v34;
      v89 = v36;
      v86 = v41;
      sub_2544A8F00(v34, v36, v41);
      v87 = v40;

      goto LABEL_8;
    }
  }

  v42 = 0;
  v89 = 0;
  v86 = 0;
  v87 = 0;
LABEL_8:
  v43 = sub_254511480();
  v94 = v42;
  if (v44)
  {
    v98 = v43;
    v99 = v44;
    v45 = sub_25454B274();
    v47 = v46;
    v49 = v48;
    sub_25454B124();
    v50 = sub_25454B224();
    v52 = v51;
    v54 = v53;

    sub_2544C9C64(v45, v47, v49 & 1);

    sub_25454B644();
    v55 = sub_25454B1D4();
    v57 = v56;
    v59 = v58;
    v61 = v60;

    v62 = v52;
    v42 = v94;
    sub_2544C9C64(v50, v62, v54 & 1);

    v63 = v59 & 1;
    v64 = v55;
    v65 = v57;
    v66 = v59 & 1;
    sub_2544A8F00(v55, v57, v63);
    v67 = v61;
  }

  else
  {
    v64 = 0;
    v65 = 0;
    v66 = 0;
    v67 = 0;
  }

  v68 = v90 & 1;
  LOBYTE(v98) = v90 & 1;
  v97 = v90 & 1;
  v69 = v92;
  v70 = v95;
  sub_2544A8F00(v92, v95, v90 & 1);

  sub_2544A8F00(v69, v70, v68);

  v71 = v42;
  v72 = v42;
  v73 = v89;
  v74 = v86;
  v75 = v87;
  sub_2544C9BDC(v72, v89, v86, v87);
  sub_2544C9BDC(v64, v65, v66, v67);
  sub_2544C9C20(v71, v73, v74, v75, v76);
  sub_2544C9C20(v64, v65, v66, v67, v77);
  v78 = v95;
  sub_2544C9C64(v69, v95, v68);
  v79 = v96;

  v80 = v97;
  v81 = v88;
  *v88 = v69;
  v81[1] = v78;
  *(v81 + 16) = v80;
  v81[3] = v79;
  v82 = v94;
  v81[4] = v94;
  v81[5] = v73;
  v81[6] = v74;
  v81[7] = v75;
  v81[8] = v64;
  v81[9] = v65;
  v81[10] = v66;
  v81[11] = v67;
  sub_2544C9C20(v64, v65, v66, v67, v83);
  sub_2544C9C20(v82, v73, v74, v75, v84);
  sub_2544C9C64(v69, v78, v98);
}

uint64_t sub_254511480()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FB7A8, &unk_25454EB70);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = v33 - v2;
  v4 = sub_25454A0F4();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v33[0] = v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v34 = v33 - v9;
  MEMORY[0x28223BE20](v8);
  v11 = v33 - v10;
  v12 = sub_254549354();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  updated = type metadata accessor for SoftwareUpdateStatusView(0);
  v17 = *(updated + 24);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC7C0, &qword_2545507C0);
  v36 = v0;
  v33[1] = v18;
  v33[2] = v17;
  sub_25454B7A4();
  sub_25454A0B4();
  v19 = *(v5 + 8);
  v35 = v4;
  v19(v11, v4);
  if ((*(v13 + 48))(v3, 1, v12) == 1)
  {
    sub_2544AE150(v3, &qword_27F5FB7A8, &unk_25454EB70);
    v20 = v34;
    sub_25454B7A4();
    v21 = sub_25454A0D4();
    v23 = v22;
    v24 = v20;
    v25 = v35;
    v19(v24, v35);
    if (v23)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FB990, "ܡ");
      v26 = swift_allocObject();
      *(v26 + 16) = xmmword_25454D8F0;
      *(v26 + 56) = MEMORY[0x277D837D0];
      *(v26 + 64) = sub_25450649C();
      *(v26 + 32) = v21;
      *(v26 + 40) = v23;
      v27 = sub_25454BD04();
    }

    else
    {
      v31 = v33[0];
      sub_25454B7A4();
      v27 = sub_25454A0E4();
      v19(v31, v25);
    }
  }

  else
  {
    (*(v13 + 32))(v15, v3, v12);
    v28 = *(v36 + *(updated + 32));
    v29 = sub_254549314();
    v30 = [v28 stringFromDate_];

    v27 = sub_25454BC84();
    (*(v13 + 8))(v15, v12);
  }

  return v27;
}

double sub_254511878()
{
  sub_25454BE14();
  sub_25454BE04();
  sub_25454BDB4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  return result;
}

void sub_254511908()
{
  sub_25454BE14();
  sub_25454BE04();
  sub_25454BDB4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v0 = sub_25454BCF4();
  v2 = v1;
  v3 = sub_25454AF14();
  sub_25454A394();
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = sub_25454B104();
  KeyPath = swift_getKeyPath();
  *&v14 = v0;
  *(&v14 + 1) = v2;
  LOBYTE(v15) = 0;
  *(&v15 + 1) = MEMORY[0x277D84F90];
  LOBYTE(v16) = v3;
  *(&v16 + 1) = v5;
  *&v17 = v7;
  *(&v17 + 1) = v9;
  *&v18 = v11;
  BYTE8(v18) = 0;
  *&v19 = KeyPath;
  *(&v19 + 1) = v12;
  sub_25454B054();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FCB08, &qword_254550C50);
  sub_254516DB8();
  sub_25454B2D4();
  v20[2] = v16;
  v20[3] = v17;
  v20[4] = v18;
  v20[5] = v19;
  v20[0] = v14;
  v20[1] = v15;
  sub_2544AE150(v20, &qword_27F5FCB08, &qword_254550C50);
}

double sub_254511AB4(uint64_t a1, uint64_t a2)
{
  v21[2] = a1;
  v22 = a2;
  v24 = sub_254549AB4();
  v2 = *(v24 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v24);
  v23 = v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FAF28, &qword_25454D6C0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v21 - v5;
  v7 = sub_254549DC4();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = v21 - v12;
  sub_25454BE14();
  v21[1] = sub_25454BE04();
  sub_25454BDB4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  (*(v8 + 104))(v13, *MEMORY[0x277D16618], v7);
  type metadata accessor for SoftwareUpdateStatusView(0);
  (*(v8 + 16))(v11, v13, v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC7C8, &qword_2545507C8);
  sub_25454B7B4();
  (*(v8 + 8))(v13, v7);
  v14 = sub_25454BE44();
  (*(*(v14 - 8) + 56))(v6, 1, 1, v14);
  v15 = v23;
  v16 = v24;
  (*(v2 + 16))(v23, v22, v24);
  v17 = sub_25454BE04();
  v18 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = v17;
  *(v19 + 24) = MEMORY[0x277D85700];
  (*(v2 + 32))(v19 + v18, v15, v16);
  sub_2544B5138(0, 0, v6, &unk_254550CC8, v19);

  return result;
}

uint64_t sub_254511E48()
{
  v0[2] = sub_25454BE14();
  v0[3] = sub_25454BE04();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_2544AAF90;

  return MEMORY[0x28216FBE8]();
}

void sub_254511EF8()
{
  sub_25454BE14();
  sub_25454BE04();
  sub_25454BDB4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v0 = sub_25454BCF4();
  v2 = v1;
  v3 = sub_25454AF14();
  sub_25454A394();
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = sub_25454B104();
  KeyPath = swift_getKeyPath();
  *&v14 = v0;
  *(&v14 + 1) = v2;
  LOBYTE(v15) = 0;
  *(&v15 + 1) = MEMORY[0x277D84F90];
  LOBYTE(v16) = v3;
  *(&v16 + 1) = v5;
  *&v17 = v7;
  *(&v17 + 1) = v9;
  *&v18 = v11;
  BYTE8(v18) = 0;
  *&v19 = KeyPath;
  *(&v19 + 1) = v12;
  sub_25454B054();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FCB08, &qword_254550C50);
  sub_254516DB8();
  sub_25454B2D4();
  v20[2] = v16;
  v20[3] = v17;
  v20[4] = v18;
  v20[5] = v19;
  v20[0] = v14;
  v20[1] = v15;
  sub_2544AE150(v20, &qword_27F5FCB08, &qword_254550C50);
}

double sub_2545120A4@<D0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v35 = a3;
  v39 = a4;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC928, &qword_254550A90);
  MEMORY[0x28223BE20](v36);
  v7 = &v34 - v6;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC930, &qword_254550A98);
  MEMORY[0x28223BE20](v37);
  v9 = &v34 - v8;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC938, &qword_254550AA0);
  v10 = *(v38 - 8);
  MEMORY[0x28223BE20](v38);
  v12 = &v34 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC940, &qword_254550AA8);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v34 - v14;
  sub_25454BE14();
  sub_25454BE04();
  sub_25454BDB4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (!a2)
  {
    goto LABEL_9;
  }

  v16 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v16 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v16)
  {
    updated = type metadata accessor for SoftwareUpdateStatusView(0);
    v18 = v35;
    v19 = v35 + *(updated + 20);
    v20 = *v19;
    v21 = *(v19 + 8);
    LOBYTE(v40) = v20;
    *(&v40 + 1) = v21;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FADF8, &qword_25454FF70);
    sub_25454B7A4();
    if (v47)
    {
      *&v40 = a1;
      *(&v40 + 1) = a2;
      sub_2544AECF0();
      v22 = sub_25454B274();
      v24 = v23;
      v26 = v25;
      v28 = v27;
      sub_25454BA64();
      sub_25454A784();
      LOBYTE(v47) = v26 & 1;
      *v7 = v22;
      *(v7 + 1) = v24;
      v7[16] = v26 & 1;
      *(v7 + 3) = v28;
      v29 = v45;
      *(v7 + 6) = v44;
      *(v7 + 7) = v29;
      *(v7 + 8) = v46;
      v30 = v41;
      *(v7 + 2) = v40;
      *(v7 + 3) = v30;
      v31 = v43;
      *(v7 + 4) = v42;
      *(v7 + 5) = v31;
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC580, &qword_2545501D0);
      sub_2544AE1F0(&qword_27F5FC950, &qword_27F5FC930, &qword_254550A98, MEMORY[0x277CE1138]);
      sub_254516E90(&qword_27F5FC958, &qword_27F5FC580, &qword_2545501D0);
      sub_25454AD44();
    }

    else
    {
      *v9 = sub_25454AB14();
      *(v9 + 1) = 0;
      v9[16] = 1;
      v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC948, &unk_254550AB0);
      sub_254512604(a1, a2, v18, &v9[*(v32 + 44)]);

      sub_2544AE240(v9, v7, &qword_27F5FC930, &qword_254550A98);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC580, &qword_2545501D0);
      sub_2544AE1F0(&qword_27F5FC950, &qword_27F5FC930, &qword_254550A98, MEMORY[0x277CE1138]);
      sub_254516E90(&qword_27F5FC958, &qword_27F5FC580, &qword_2545501D0);
      sub_25454AD44();
      sub_2544AE150(v9, &qword_27F5FC930, &qword_254550A98);
    }

    sub_2544B14E8(v12, v15, &qword_27F5FC938, &qword_254550AA0);
    (*(v10 + 56))(v15, 0, 1, v38);
  }

  else
  {
LABEL_9:
    (*(v10 + 56))(v15, 1, 1, v38);
  }

  sub_2544B14E8(v15, v39, &qword_27F5FC940, &qword_254550AA8);

  return result;
}

double sub_254512604@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v77 = a3;
  v78 = a4;
  updated = type metadata accessor for SoftwareUpdateStatusView(0);
  v63 = *(updated - 8);
  MEMORY[0x28223BE20](updated - 8);
  v64 = v7;
  v65 = &v62 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC960, &qword_254550AC0);
  MEMORY[0x28223BE20](v66);
  v9 = &v62 - v8;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC968, &qword_254550AC8);
  MEMORY[0x28223BE20](v68);
  v72 = &v62 - v10;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC970, &qword_254550AD0);
  MEMORY[0x28223BE20](v71);
  v76 = &v62 - v11;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC978, &qword_254550AD8);
  MEMORY[0x28223BE20](v73);
  v75 = &v62 - v12;
  v13 = sub_25454BE14();
  v74 = sub_25454BE04();
  v79 = v13;
  sub_25454BDB4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v67 = a1;
  *&v98 = a1;
  *(&v98 + 1) = a2;
  sub_2544AECF0();
  v69 = a2;

  v14 = sub_25454B274();
  v16 = v15;
  *&v98 = v14;
  *(&v98 + 1) = v15;
  v18 = v17 & 1;
  LOBYTE(v99) = v17 & 1;
  *(&v99 + 1) = v19;
  v70 = v9;
  sub_25454B5A4();
  sub_2544C9C64(v14, v16, v18);

  v20 = sub_25454BA44();
  v22 = v21;
  sub_25454BE04();
  sub_25454BDB4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v23 = sub_25454AC14();
  LOBYTE(v80[0]) = 0;
  sub_254512E94(&v98);
  v90 = *&v100[96];
  v91 = *&v100[112];
  v92 = *&v100[128];
  v93 = *&v100[144];
  v86 = *&v100[32];
  v87 = *&v100[48];
  v88 = *&v100[64];
  v89 = *&v100[80];
  v82 = v98;
  v83 = v99;
  v84 = *v100;
  v85 = *&v100[16];
  v94[8] = *&v100[96];
  v94[9] = *&v100[112];
  v94[10] = *&v100[128];
  v94[11] = *&v100[144];
  v94[4] = *&v100[32];
  v94[5] = *&v100[48];
  v94[6] = *&v100[64];
  v94[7] = *&v100[80];
  v94[0] = v98;
  v94[1] = v99;
  v94[2] = *v100;
  v94[3] = *&v100[16];
  sub_2544AE240(&v82, &v95, &qword_27F5FC980, &qword_254550AE0);
  sub_2544AE150(v94, &qword_27F5FC980, &qword_254550AE0);

  *&v81[135] = v90;
  *&v81[151] = v91;
  *&v81[167] = v92;
  *&v81[183] = v93;
  *&v81[71] = v86;
  *&v81[87] = v87;
  *&v81[103] = v88;
  *&v81[119] = v89;
  *&v81[7] = v82;
  *&v81[23] = v83;
  *&v81[39] = v84;
  *&v81[55] = v85;
  *&v97[145] = *&v81[144];
  *&v97[161] = *&v81[160];
  *&v97[177] = *&v81[176];
  *&v97[81] = *&v81[80];
  *&v97[97] = *&v81[96];
  *&v97[113] = *&v81[112];
  *&v97[129] = *&v81[128];
  *&v97[17] = *&v81[16];
  *&v97[33] = *&v81[32];
  *&v97[49] = *&v81[48];
  *&v97[65] = *&v81[64];
  v24 = v80[0];
  *&v95 = v20;
  *(&v95 + 1) = v22;
  v96 = v23;
  v97[0] = v80[0];
  *&v97[192] = *(&v93 + 1);
  *&v97[1] = *v81;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC988, &qword_254550AE8);
  v26 = v70;
  v27 = &v70[*(v25 + 36)];
  v28 = *&v97[176];
  *(v27 + 12) = *&v97[160];
  *(v27 + 13) = v28;
  v29 = *&v97[112];
  *(v27 + 8) = *&v97[96];
  *(v27 + 9) = v29;
  v30 = *&v97[144];
  *(v27 + 10) = *&v97[128];
  *(v27 + 11) = v30;
  v31 = *&v97[48];
  *(v27 + 4) = *&v97[32];
  *(v27 + 5) = v31;
  v32 = *&v97[80];
  *(v27 + 6) = *&v97[64];
  *(v27 + 7) = v32;
  v33 = v96;
  *v27 = v95;
  *(v27 + 1) = v33;
  v34 = *&v97[16];
  *(v27 + 2) = *v97;
  *(v27 + 3) = v34;
  *&v100[145] = *&v81[144];
  *&v100[161] = *&v81[160];
  v101[0] = *&v81[176];
  *&v100[81] = *&v81[80];
  *&v100[97] = *&v81[96];
  *&v100[113] = *&v81[112];
  *&v100[129] = *&v81[128];
  v35 = *v81;
  *&v100[17] = *&v81[16];
  *&v100[33] = *&v81[32];
  *&v100[49] = *&v81[48];
  *&v100[65] = *&v81[64];
  *(v27 + 28) = *&v97[192];
  *&v98 = v20;
  *(&v98 + 1) = v22;
  v99 = v23;
  v100[0] = v24;
  *(v101 + 15) = *&v81[191];
  *&v100[1] = v35;
  sub_2544AE240(&v95, v80, &qword_27F5FC990, &qword_254550AF0);
  sub_2544AE150(&v98, &qword_27F5FC990, &qword_254550AF0);
  v36 = v77;
  v37 = v65;
  sub_254515C8C(v77, v65, type metadata accessor for SoftwareUpdateStatusView);
  v38 = (*(v63 + 80) + 16) & ~*(v63 + 80);
  v39 = (v64 + v38 + 7) & 0xFFFFFFFFFFFFFFF8;
  v40 = swift_allocObject();
  sub_254515F20(v37, v40 + v38, type metadata accessor for SoftwareUpdateStatusView);
  v41 = (v40 + v39);
  v42 = v69;
  *v41 = v67;
  v41[1] = v42;

  v43 = sub_25454BA54();
  v44 = (v26 + *(v66 + 36));
  *v44 = sub_254516178;
  v44[1] = v40;
  v44[2] = v43;
  v44[3] = v45;
  sub_25454BA64();
  sub_25454A784();
  v46 = v72;
  sub_2544B14E8(v26, v72, &qword_27F5FC960, &qword_254550AC0);
  v47 = (v46 + *(v68 + 36));
  v48 = v80[5];
  v47[4] = v80[4];
  v47[5] = v48;
  v47[6] = v80[6];
  v49 = v80[1];
  *v47 = v80[0];
  v47[1] = v49;
  v50 = v80[3];
  v47[2] = v80[2];
  v47[3] = v50;
  KeyPath = swift_getKeyPath();
  v52 = v76;
  sub_2544B14E8(v46, v76, &qword_27F5FC968, &qword_254550AC8);
  v53 = v52 + *(v71 + 36);
  *v53 = KeyPath;
  *(v53 + 8) = 0;
  v54 = sub_25454BA44();
  v56 = v55;
  sub_25454BE04();
  sub_25454BDB4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v57 = v75;
  v58 = &v75[*(v73 + 36)];
  *v58 = sub_25454AB14();
  *(v58 + 1) = 0;
  v58[16] = 1;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC998, &qword_254550B28);
  sub_25451384C(v36, &v58[*(v59 + 44)]);

  v60 = &v58[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC9A0, &qword_254550B30) + 36)];
  *v60 = v54;
  v60[1] = v56;
  sub_2544B14E8(v52, v57, &qword_27F5FC970, &qword_254550AD0);
  sub_2544B14E8(v57, v78, &qword_27F5FC978, &qword_254550AD8);

  return result;
}

double sub_254512E94@<D0>(uint64_t a1@<X8>)
{
  sub_25454BE14();
  sub_25454BE04();
  sub_25454BDB4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v2 = sub_25454B654();
  v3 = sub_25454AB14();
  v20[0] = 0;
  sub_254513160(&v35);
  v28 = *&v36[80];
  v29 = *&v36[96];
  v30 = *&v36[112];
  v31 = *&v36[128];
  v24 = *&v36[16];
  v25 = *&v36[32];
  v26 = *&v36[48];
  v27 = *&v36[64];
  v22 = v35;
  v23 = *v36;
  v32[6] = *&v36[80];
  v32[7] = *&v36[96];
  v32[8] = *&v36[112];
  v32[9] = *&v36[128];
  v32[2] = *&v36[16];
  v32[3] = *&v36[32];
  v32[4] = *&v36[48];
  v32[5] = *&v36[64];
  v32[0] = v35;
  v32[1] = *v36;
  sub_2544AE240(&v22, &v33, &qword_27F5FC9D0, &qword_254550B58);
  sub_2544AE150(v32, &qword_27F5FC9D0, &qword_254550B58);
  *&v21[55] = v25;
  *&v21[39] = v24;
  *&v21[103] = v28;
  *&v21[119] = v29;
  *&v21[135] = v30;
  *&v21[151] = v31;
  *&v21[71] = v26;
  *&v21[87] = v27;
  *&v21[7] = v22;
  *&v21[23] = v23;
  v33 = v3;
  v34[0] = 0;
  v4 = *&v21[96];
  *&v34[113] = *&v21[112];
  v5 = *&v21[112];
  *&v34[129] = *&v21[128];
  v6 = *&v21[128];
  *&v34[145] = *&v21[144];
  v7 = *&v21[32];
  *&v34[49] = *&v21[48];
  v8 = *&v21[48];
  *&v34[65] = *&v21[64];
  v9 = *&v21[64];
  *&v34[81] = *&v21[80];
  v10 = *&v21[80];
  *&v34[97] = *&v21[96];
  v11 = *&v21[16];
  *&v34[1] = *v21;
  v12 = *v21;
  *&v34[17] = *&v21[16];
  *&v34[33] = *&v21[32];
  v13 = *&v34[128];
  *(a1 + 136) = *&v34[112];
  *(a1 + 152) = v13;
  *(a1 + 168) = *&v34[144];
  v14 = *&v34[64];
  *(a1 + 72) = *&v34[48];
  *(a1 + 88) = v14;
  v15 = *&v34[96];
  *(a1 + 104) = *&v34[80];
  *(a1 + 120) = v15;
  v16 = *v34;
  *(a1 + 8) = v33;
  *(a1 + 24) = v16;
  v17 = *&v34[32];
  *(a1 + 40) = *&v34[16];
  *(a1 + 56) = v17;
  *&v36[113] = v5;
  *&v36[129] = v6;
  *v37 = *&v21[144];
  *&v36[49] = v8;
  *&v36[65] = v9;
  *&v36[81] = v10;
  *&v36[97] = v4;
  *&v36[1] = v12;
  *&v36[17] = v11;
  *&v34[160] = *&v21[159];
  v18 = *&v21[159];
  *a1 = v2;
  *(a1 + 184) = v18;
  v35 = v3;
  v36[0] = 0;
  *&v37[15] = *&v21[159];
  *&v36[33] = v7;

  sub_2544AE240(&v33, v20, &qword_27F5FC9D8, &qword_254550B60);
  sub_2544AE150(&v35, &qword_27F5FC9D8, &qword_254550B60);

  return result;
}

void sub_254513160(uint64_t a1@<X8>)
{
  sub_25454BE14();
  sub_25454BE04();
  sub_25454BDB4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v2 = sub_25454B654();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC9E0, &qword_254550B68);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_25454D8E0;
  *(v3 + 32) = sub_25454B654();
  *(v3 + 40) = sub_25454B664();
  sub_25454BB54();
  sub_25454BB64();
  MEMORY[0x259C0EAC0](v3);
  sub_25454A664();
  v4 = v26;
  v6 = v27;
  v5 = v28;
  sub_25454BA54();
  sub_25454A544();
  *&v16[6] = v29[0];
  *&v16[22] = v29[1];
  *&v16[38] = v29[2];
  v7 = sub_25454B664();
  sub_25454BA54();
  sub_25454A544();
  v8 = v30;
  v9 = v32;
  v17 = v26;
  v18 = v27;
  *v19 = v28;
  *&v19[8] = 256;
  *&v19[10] = *v16;
  *&v19[26] = *&v16[16];
  *&v19[42] = *&v16[32];
  *&v19[56] = *(&v29[2] + 1);
  v15 = v31;
  v14 = v33;
  *a1 = v2;
  v10 = v17;
  *(a1 + 24) = v18;
  *(a1 + 8) = v10;
  v11 = *v19;
  v12 = *&v19[16];
  v13 = *&v19[32];
  *(a1 + 88) = *&v19[48];
  *(a1 + 72) = v13;
  *(a1 + 56) = v12;
  *(a1 + 40) = v11;
  *(a1 + 104) = v7;
  *(a1 + 112) = v8;
  *(a1 + 120) = v15;
  *(a1 + 128) = v9;
  *(a1 + 136) = v14;
  *(a1 + 144) = v34;

  sub_2544AE240(&v17, v20, &qword_27F5FC9E8, &qword_254550B70);
  v20[0] = v4;
  v20[1] = v6;
  v21 = v5;
  v22 = 256;
  v23 = *v16;
  v24 = *&v16[16];
  *v25 = *&v16[32];
  *&v25[14] = *&v16[46];
  sub_2544AE150(v20, &qword_27F5FC9E8, &qword_254550B70);
}

void sub_254513424(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v26 = a3;
  v27 = a4;
  v24 = a2;
  v25 = a1;
  v6 = sub_25454A5B4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  updated = type metadata accessor for SoftwareUpdateStatusView(0);
  v22 = *(updated - 8);
  v11 = *(v22 + 64);
  MEMORY[0x28223BE20](updated - 8);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25454BE14();
  v23 = sub_25454BE04();
  sub_25454BDB4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v21 = sub_25454B664();
  sub_254515C8C(v24, &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for SoftwareUpdateStatusView);
  (*(v7 + 16))(&v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v25, v6);
  v13 = (*(v22 + 80) + 16) & ~*(v22 + 80);
  v14 = (v11 + v13 + 7) & 0xFFFFFFFFFFFFFFF8;
  v15 = v6;
  v16 = (*(v7 + 80) + v14 + 16) & ~*(v7 + 80);
  v17 = swift_allocObject();
  sub_254515F20(v12, v17 + v13, type metadata accessor for SoftwareUpdateStatusView);
  v18 = (v17 + v14);
  v19 = v27;
  *v18 = v26;
  v18[1] = v19;
  (*(v7 + 32))(v17 + v16, v9, v15);

  *a5 = v21;
  a5[1] = sub_2545165D4;
  a5[2] = v17;
  a5[3] = 0;
  a5[4] = 0;
}

double sub_2545136C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_25454BE14();
  sub_25454BE04();
  sub_25454BDB4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v3 = sub_25454BC74();
  sub_25454A594();
  [v3 boundingRectWithSize:1 options:0 attributes:0 context:?];
  v5 = v4;

  sub_25454A594();
  if (v5 >= v6)
  {
  }

  else
  {
    type metadata accessor for SoftwareUpdateStatusView(0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FADF8, &qword_25454FF70);
    sub_25454B7B4();
  }

  return result;
}

double sub_25451384C@<D0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v28 = a1;
  v33 = a2;
  v2 = sub_25454ADA4();
  v31 = *(v2 - 8);
  v32 = v2;
  MEMORY[0x28223BE20](v2);
  v4 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  updated = type metadata accessor for SoftwareUpdateStatusView(0);
  v27 = *(updated - 8);
  v6 = *(v27 + 64);
  MEMORY[0x28223BE20](updated - 8);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC9A8, &qword_254550B38);
  MEMORY[0x28223BE20](v30);
  v8 = &v26 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC9B0, &unk_254550B40);
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v26 - v14;
  sub_25454BE14();
  v29 = sub_25454BE04();
  sub_25454BDB4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_254515C8C(v28, &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for SoftwareUpdateStatusView);
  v16 = (*(v27 + 80) + 16) & ~*(v27 + 80);
  v17 = swift_allocObject();
  sub_254515F20(&v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v17 + v16, type metadata accessor for SoftwareUpdateStatusView);
  sub_25454B7F4();
  sub_25454BA54();
  sub_25454A544();
  v18 = &v8[*(v30 + 36)];
  v19 = v35;
  *v18 = v34;
  *(v18 + 1) = v19;
  *(v18 + 2) = v36;
  sub_25454AD94();
  sub_254516248();
  sub_254516300();
  v20 = v32;
  sub_25454B304();
  (*(v31 + 8))(v4, v20);
  sub_2544AE150(v8, &qword_27F5FC9A8, &qword_254550B38);
  v21 = *(v10 + 16);
  v21(v13, v15, v9);
  v22 = v33;
  *v33 = 0;
  *(v22 + 8) = 1;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC9C8, &qword_254550B50);
  v21(v22 + *(v23 + 48), v13, v9);
  v24 = *(v10 + 8);
  v24(v15, v9);
  v24(v13, v9);

  return result;
}

double sub_254513CC4(uint64_t a1)
{
  sub_25454BE14();
  sub_25454BE04();
  sub_25454BDB4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  type metadata accessor for SoftwareUpdateStatusView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FADF8, &qword_25454FF70);
  sub_25454B7B4();

  return result;
}

void sub_254513DA4(uint64_t a1@<X8>)
{
  sub_25454BE14();
  sub_25454BE04();
  sub_25454BDB4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v2 = sub_25454BCF4();
  v4 = v3;

  *a1 = v2;
  *(a1 + 8) = v4;
  *(a1 + 16) = 0;
  *(a1 + 24) = MEMORY[0x277D84F90];
}

uint64_t sub_254513E64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](a1 - 8);
  *a2 = sub_25454AC24();
  *(a2 + 8) = 0x4020000000000000;
  *(a2 + 16) = 0;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC7B8, &unk_2545507B0);
  sub_25450D6B8(v2, a2 + *(v6 + 44));
  sub_254515C8C(v2, &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for SoftwareUpdateStatusView);
  v7 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v8 = swift_allocObject();
  sub_254515F20(&v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v8 + v7, type metadata accessor for SoftwareUpdateStatusView);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC7D0, &qword_2545507D0);
  v10 = (a2 + *(result + 36));
  *v10 = sub_2545173BC;
  v10[1] = v8;
  v10[2] = 0;
  v10[3] = 0;
  return result;
}

uint64_t SoftwareUpdateAccessoryCell.body.getter@<X0>(uint64_t *a2@<X8>)
{
  *a2 = sub_25454BA54();
  a2[1] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC7D8, &qword_2545507D8);
  return sub_254514018(v2, a2 + *(v5 + 44));
}

uint64_t sub_254514018@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_25454A744();
  MEMORY[0x28223BE20](v4);
  v6 = &v42[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_25454BE14();
  sub_25454BE04();
  sub_25454BDB4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  *a2 = sub_25454AC14();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC840, &qword_2545508E0);
  sub_254514398(a1, a2 + *(v7 + 44));
  sub_25454BA64();
  sub_25454A544();
  v8 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC848, &qword_2545508E8) + 36));
  v9 = v43;
  *v8 = *&v42[8];
  v8[1] = v9;
  v8[2] = v44;
  v10 = sub_25454AF14();
  sub_25454A394();
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v19 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC850, &qword_2545508F0) + 36);
  *v19 = v10;
  *(v19 + 8) = v12;
  *(v19 + 16) = v14;
  *(v19 + 24) = v16;
  *(v19 + 32) = v18;
  *(v19 + 40) = 0;
  v20 = *(v4 + 20);
  v21 = *MEMORY[0x277CE0118];
  v22 = sub_25454ABA4();
  (*(*(v22 - 8) + 104))(&v6[v20], v21, v22);
  __asm { FMOV            V0.2D, #10.0 }

  *v6 = _Q0;
  v28 = sub_25454B644();
  sub_25454A484();
  v29 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC858, &qword_2545508F8) + 36);
  sub_254515C8C(v6, v29, MEMORY[0x277CDFC08]);
  v30 = v29 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC758, &unk_254550900) + 36);
  v31 = v46;
  *v30 = v45;
  *(v30 + 16) = v31;
  *(v30 + 32) = v47;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC760, &unk_2545506E0);
  *(v29 + *(v32 + 52)) = v28;
  *(v29 + *(v32 + 56)) = 256;
  v33 = sub_25454BA54();
  v35 = v34;
  sub_25450D2B0(v6);
  v36 = (v29 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC768, &qword_254550910) + 36));
  *v36 = v33;
  v36[1] = v35;
  v37 = sub_25454BA54();
  v39 = v38;

  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC860, &qword_254550918);
  v41 = (v29 + *(result + 36));
  *v41 = v37;
  v41[1] = v39;
  return result;
}

double sub_254514398@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC868, &qword_254550920);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v26 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v7 = &v21 - v6;
  sub_25454BE14();
  v25 = sub_25454BE04();
  sub_25454BDB4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  *v7 = sub_25454AB14();
  *(v7 + 1) = 0;
  v7[16] = 1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC870, &qword_254550928);
  sub_254514614(a1, &v7[*(v8 + 44)]);
  v23 = sub_25454AB14();
  sub_254514F40(v27);
  v9 = v27[0];
  v10 = v27[1];
  v11 = v28;
  v12 = v29;
  v22 = v30;
  v13 = v31;
  LOBYTE(v27[0]) = 1;
  v33 = v28;
  v32 = v31;
  v14 = v26;
  sub_2544AE240(v7, v26, &qword_27F5FC868, &qword_254550920);
  v15 = v24;
  sub_2544AE240(v14, v24, &qword_27F5FC868, &qword_254550920);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC878, &qword_254550930);
  v17 = v15 + *(v16 + 48);
  *v17 = 0;
  *(v17 + 8) = 1;
  v18 = v15 + *(v16 + 64);
  *v18 = v23;
  *(v18 + 8) = 0;
  *(v18 + 16) = 1;
  *(v18 + 24) = v9;
  *(v18 + 32) = v10;
  *(v18 + 40) = v11;
  v19 = v22;
  *(v18 + 48) = v12;
  *(v18 + 56) = v19;
  *(v18 + 64) = v13;
  sub_2544A8F00(v9, v10, v11);

  sub_2544AE150(v7, &qword_27F5FC868, &qword_254550920);
  sub_2544C9C64(v9, v10, v11);

  sub_2544AE150(v14, &qword_27F5FC868, &qword_254550920);

  return result;
}

double sub_254514614@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v70 = a2;
  v69 = sub_254549D24();
  v68 = *(v69 - 8);
  MEMORY[0x28223BE20](v69);
  v67 = v54 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_254549744();
  v77 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = v54 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_25454A0A4();
  v75 = *(v7 - 8);
  v76 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = sub_254549AB4();
  v10 = *(v74 - 8);
  MEMORY[0x28223BE20](v74);
  v12 = v54 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC880, &qword_254550938);
  MEMORY[0x28223BE20](v13);
  v58 = (v54 - v14);
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC888, &qword_254550940);
  MEMORY[0x28223BE20](v60);
  v63 = v54 - v15;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC890, &qword_254550948);
  MEMORY[0x28223BE20](v62);
  v73 = v54 - v16;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC898, &unk_254550950);
  v17 = MEMORY[0x28223BE20](v61);
  v66 = v54 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v17);
  v72 = v54 - v20;
  MEMORY[0x28223BE20](v19);
  v65 = v54 - v21;
  sub_25454BE14();
  v64 = sub_25454BE04();
  sub_25454BDB4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FBCD8, &qword_25454F730);
  sub_25454B7A4();
  sub_254549AA4();
  v54[1] = a1;
  v55 = *(v10 + 8);
  v55(v12, v74);
  sub_254549F44();
  v22 = *(v75 + 8);
  v75 += 8;
  v71 = v22;
  v22(v9, v76);
  sub_254549734();
  v57 = v6;
  v23 = *(v77 + 8);
  v77 += 8;
  v59 = v23;
  v23(v6, v4);
  v24 = sub_25454B704();
  v25 = v58;
  v26 = (v58 + *(v13 + 36));
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC780, &qword_254550768);
  v56 = v4;
  v28 = *(v27 + 28);
  v29 = *MEMORY[0x277CE1048];
  v30 = sub_25454B754();
  (*(*(v30 - 8) + 104))(v26 + v28, v29, v30);
  *v26 = swift_getKeyPath();
  *v25 = v24;
  sub_25454BA54();
  sub_25454A784();
  v31 = v63;
  sub_2544B14E8(v25, v63, &qword_27F5FC880, &qword_254550938);
  v32 = (v31 + *(v60 + 36));
  v33 = v83;
  v32[4] = v82;
  v32[5] = v33;
  v32[6] = v84;
  v34 = v79;
  *v32 = v78;
  v32[1] = v34;
  v35 = v81;
  v32[2] = v80;
  v32[3] = v35;
  sub_25454B7A4();
  sub_254549AA4();
  v36 = v74;
  v37 = v55;
  v55(v12, v74);
  v38 = sub_254549FD4();
  v71(v9, v76);
  KeyPath = swift_getKeyPath();
  v40 = v31;
  v41 = v73;
  sub_2544B14E8(v40, v73, &qword_27F5FC888, &qword_254550940);
  v42 = (v41 + *(v62 + 36));
  *v42 = KeyPath;
  v42[1] = v38;
  v43 = (v72 + *(v61 + 36));
  v44 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FB3A0, &qword_2545509C0) + 28);
  sub_25454B7A4();
  sub_254549AA4();
  v37(v12, v36);
  v45 = v57;
  sub_254549F44();
  v71(v9, v76);
  v46 = v67;
  sub_254549724();
  v59(v45, v56);
  sub_254549D14();
  (*(v68 + 8))(v46, v69);
  v47 = sub_25454AC44();
  (*(*(v47 - 8) + 56))(v43 + v44, 0, 1, v47);
  *v43 = swift_getKeyPath();
  v48 = v72;
  sub_2544B14E8(v73, v72, &qword_27F5FC890, &qword_254550948);
  v49 = v65;
  sub_2544B14E8(v48, v65, &qword_27F5FC898, &unk_254550950);
  v50 = v66;
  sub_2544AE240(v49, v66, &qword_27F5FC898, &unk_254550950);
  v51 = v70;
  sub_2544AE240(v50, v70, &qword_27F5FC898, &unk_254550950);
  v52 = v51 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC8A0, &qword_2545509F8) + 48);
  *v52 = 0;
  *(v52 + 8) = 1;
  sub_2544AE150(v49, &qword_27F5FC898, &unk_254550950);
  sub_2544AE150(v50, &qword_27F5FC898, &unk_254550950);

  return result;
}

uint64_t sub_254514F40@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_25454A0A4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_254549AB4();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25454BE14();
  v29[1] = sub_25454BE04();
  sub_25454BDB4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FBCD8, &qword_25454F730);
  sub_25454B7A4();
  sub_254549AA4();
  (*(v7 + 8))(v9, v6);
  v10 = sub_25454A074();
  v12 = v11;
  (*(v3 + 8))(v5, v2);
  v29[4] = v10;
  v29[5] = v12;
  sub_2544AECF0();
  v13 = sub_25454B274();
  v15 = v14;
  LOBYTE(v12) = v16;
  sub_25454B104();
  v17 = sub_25454B224();
  v19 = v18;
  v21 = v20;

  sub_2544C9C64(v13, v15, v12 & 1);

  sub_25454B054();
  v22 = sub_25454B194();
  v24 = v23;
  LOBYTE(v12) = v25;
  v27 = v26;
  sub_2544C9C64(v17, v19, v21 & 1);

  *a1 = v22;
  *(a1 + 8) = v24;
  *(a1 + 16) = v12 & 1;
  *(a1 + 24) = v27;
  *(a1 + 32) = 0;
  *(a1 + 40) = 1;
  sub_2544A8F00(v22, v24, v12 & 1);

  sub_2544C9C64(v22, v24, v12 & 1);
}

uint64_t sub_254515254@<X0>(uint64_t *a2@<X8>)
{
  *a2 = sub_25454BA54();
  a2[1] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC7D8, &qword_2545507D8);
  return sub_254514018(v2, a2 + *(v5 + 44));
}

uint64_t sub_2545152B4(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FBCD8, &qword_25454F730);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_8:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC7C0, &qword_2545507C0);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[6];
LABEL_7:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_8;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC7C8, &qword_2545507C8);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[7];
    goto LABEL_7;
  }

  v16 = *(a1 + a3[8]);
  if (v16 >= 0xFFFFFFFF)
  {
    LODWORD(v16) = -1;
  }

  return (v16 + 1);
}

uint64_t sub_254515440(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FBCD8, &qword_25454F730);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC7C0, &qword_2545507C0);
    if (*(*(v13 - 8) + 84) == a3)
    {
      v10 = v13;
      v14 = *(v13 - 8);
      v15 = a4[6];
    }

    else
    {
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC7C8, &qword_2545507C8);
      if (*(*(result - 8) + 84) != a3)
      {
        *(a1 + a4[8]) = (a2 - 1);
        return result;
      }

      v10 = result;
      v14 = *(result - 8);
      v15 = a4[7];
    }

    v11 = *(v14 + 56);
    v12 = a1 + v15;
  }

  return v11(v12, a2, a2, v10);
}

void sub_2545155B4(uint64_t a1)
{
  sub_2545156D4(319, &qword_27F5FBD68, MEMORY[0x277D15E00]);
  if (v1 <= 0x3F)
  {
    sub_2544AD890();
    if (v2 <= 0x3F)
    {
      sub_2545156D4(319, &qword_27F5FC7F0, MEMORY[0x277D16CD8]);
      if (v3 <= 0x3F)
      {
        sub_2545156D4(319, &qword_27F5FC7F8, MEMORY[0x277D16648]);
        if (v4 <= 0x3F)
        {
          sub_254515728();
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_2545156D4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_25454B7D4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_254515728()
{
  result = qword_27F5FC800;
  if (!qword_27F5FC800)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F5FC800);
  }

  return result;
}

uint64_t sub_254515788(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FBCD8, &qword_25454F730);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_254515814(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FBCD8, &qword_25454F730);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

void sub_2545158B0(uint64_t a1)
{
  sub_2545156D4(319, &qword_27F5FBD68, MEMORY[0x277D15E00]);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

unint64_t sub_25451593C()
{
  result = qword_27F5FC818;
  if (!qword_27F5FC818)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5FC7D0, &qword_2545507D0);
    sub_2544AE1F0(&qword_27F5FC820, &qword_27F5FC828, &qword_2545508D0, MEMORY[0x277CE1198]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5FC818);
  }

  return result;
}

uint64_t objectdestroyTm_2()
{
  v1 = (type metadata accessor for SoftwareUpdateStatusView(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = sub_254549AB4();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FBCD8, &qword_25454F730);

  v6 = v0 + v3 + v1[8];
  v7 = sub_25454A0F4();
  (*(*(v7 - 8) + 8))(v6, v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC7C0, &qword_2545507C0);

  v8 = v0 + v3 + v1[9];
  v9 = sub_254549DC4();
  (*(*(v9 - 8) + 8))(v8, v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC7C8, &qword_2545507C8);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_254515C18(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for SoftwareUpdateStatusView(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t sub_254515C8C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_254515D18(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC8A8, &unk_254550A00);
  MEMORY[0x28223BE20](v2 - 8);
  sub_2544AE240(a1, &v5 - v3, &qword_27F5FC8A8, &unk_254550A00);
  return sub_25454A934();
}

uint64_t sub_254515E08(uint64_t a1)
{
  v2 = sub_25454B754();
  MEMORY[0x28223BE20](v2);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_25454A7E4();
}

double sub_254515F04(_OWORD *a1)
{
  result = 0.0;
  a1[7] = 0u;
  a1[8] = 0u;
  a1[5] = 0u;
  a1[6] = 0u;
  a1[3] = 0u;
  a1[4] = 0u;
  a1[1] = 0u;
  a1[2] = 0u;
  *a1 = 0u;
  return result;
}

uint64_t sub_254515F20(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_254515F88()
{
  v1 = (type metadata accessor for SoftwareUpdateStatusView(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = (*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = v0 + v3;
  v6 = sub_254549AB4();
  (*(*(v6 - 8) + 8))(v5, v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FBCD8, &qword_25454F730);

  v7 = v5 + v1[8];
  v8 = sub_25454A0F4();
  (*(*(v8 - 8) + 8))(v7, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC7C0, &qword_2545507C0);

  v9 = v5 + v1[9];
  v10 = sub_254549DC4();
  (*(*(v10 - 8) + 8))(v9, v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC7C8, &qword_2545507C8);

  return MEMORY[0x2821FE8E8](v0, v4 + 16, v2 | 7);
}

void sub_254516178(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *(type metadata accessor for SoftwareUpdateStatusView(0) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = *v7;
  v9 = v7[1];

  sub_254513424(a1, v2 + v6, v8, v9, a2);
}

unint64_t sub_254516248()
{
  result = qword_27F5FC9B8;
  if (!qword_27F5FC9B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5FC9A8, &qword_254550B38);
    sub_2544AE1F0(&qword_27F5FBC20, &qword_27F5FBC28, &unk_25454F660, MEMORY[0x277CDF028]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5FC9B8);
  }

  return result;
}

unint64_t sub_254516300()
{
  result = qword_27F5FC9C0;
  if (!qword_27F5FC9C0)
  {
    sub_25454ADA4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5FC9C0);
  }

  return result;
}

uint64_t sub_254516358()
{
  v1 = (type metadata accessor for SoftwareUpdateStatusView(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = (*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = sub_25454A5B4();
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v8 = (v4 + v7 + 16) & ~v7;
  v9 = *(v6 + 64);
  v10 = v2 | v7;
  v11 = v0 + v3;
  v12 = sub_254549AB4();
  (*(*(v12 - 8) + 8))(v0 + v3, v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FBCD8, &qword_25454F730);

  v13 = v0 + v3 + v1[8];
  v14 = sub_25454A0F4();
  (*(*(v14 - 8) + 8))(v13, v14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC7C0, &qword_2545507C0);

  v15 = v11 + v1[9];
  v16 = sub_254549DC4();
  (*(*(v16 - 8) + 8))(v15, v16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC7C8, &qword_2545507C8);

  (*(v6 + 8))(v0 + v8, v5);

  return MEMORY[0x2821FE8E8](v0, v8 + v9, v10 | 7);
}

double sub_2545165D4()
{
  v1 = *(type metadata accessor for SoftwareUpdateStatusView(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  sub_25454A5B4();
  v4 = *(v0 + v3);
  v5 = *(v0 + v3 + 8);

  return sub_2545136C4(v0 + v2, v4, v5);
}

unint64_t sub_2545166B4()
{
  result = qword_27F5FCA88;
  if (!qword_27F5FCA88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5FCA18, &qword_254550BA0);
    sub_25451676C();
    sub_2544AE1F0(&qword_27F5FCAB8, &qword_27F5FCAC0, &qword_254550C30, MEMORY[0x277CDF4F0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5FCA88);
  }

  return result;
}

unint64_t sub_25451676C()
{
  result = qword_27F5FCA90;
  if (!qword_27F5FCA90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5FCA10, &qword_254550B98);
    sub_254516824();
    sub_2544AE1F0(&qword_27F5FB5E8, &qword_27F5FB5F0, &qword_25454E670, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5FCA90);
  }

  return result;
}

unint64_t sub_254516824()
{
  result = qword_27F5FCA98;
  if (!qword_27F5FCA98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5FCA08, &qword_254550B90);
    sub_2545168DC();
    sub_2544AE1F0(&qword_27F5FBD28, &qword_27F5FBD30, &unk_254550C20, MEMORY[0x277CE0728]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5FCA98);
  }

  return result;
}

unint64_t sub_2545168DC()
{
  result = qword_27F5FCAA0;
  if (!qword_27F5FCAA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5FCA00, &qword_254550B88);
    sub_254516994();
    sub_2544AE1F0(&qword_27F5FB5F8, &qword_27F5FB600, &qword_25454E678, MEMORY[0x277CE08A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5FCAA0);
  }

  return result;
}

unint64_t sub_254516994()
{
  result = qword_27F5FCAA8;
  if (!qword_27F5FCAA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5FCA48, &qword_254550BD8);
    sub_2544AE1F0(&qword_27F5FCAB0, &qword_27F5FCA40, &qword_254550BD0, MEMORY[0x277CDF028]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5FCAA8);
  }

  return result;
}

unint64_t sub_254516A4C()
{
  result = qword_27F5FCAC8;
  if (!qword_27F5FCAC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5FCA38, &qword_254550BC8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5FCA58, &qword_254550BE8);
    sub_25454ADA4();
    sub_254516B60();
    sub_254516300();
    swift_getOpaqueTypeConformance2();
    sub_2544AE1F0(&qword_27F5FCAE0, &qword_27F5FB3C0, &qword_254550BB0, MEMORY[0x277CDD7F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5FCAC8);
  }

  return result;
}

unint64_t sub_254516B60()
{
  result = qword_27F5FCAD0;
  if (!qword_27F5FCAD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5FCA58, &qword_254550BE8);
    sub_254516C18();
    sub_2544AE1F0(&qword_27F5FCAB8, &qword_27F5FCAC0, &qword_254550C30, MEMORY[0x277CDF4F0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5FCAD0);
  }

  return result;
}

unint64_t sub_254516C18()
{
  result = qword_27F5FCAD8;
  if (!qword_27F5FCAD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5FCA50, &qword_254550BE0);
    sub_254516994();
    sub_2544AE1F0(&qword_27F5FBD28, &qword_27F5FBD30, &unk_254550C20, MEMORY[0x277CE0728]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5FCAD8);
  }

  return result;
}

unint64_t sub_254516CD0()
{
  result = qword_27F5FCAE8;
  if (!qword_27F5FCAE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5FC9F8, &qword_254550B80);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5FCA18, &qword_254550BA0);
    sub_25454ADA4();
    sub_2545166B4();
    sub_254516300();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5FCAE8);
  }

  return result;
}

unint64_t sub_254516DB8()
{
  result = qword_27F5FCB10;
  if (!qword_27F5FCB10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5FCB08, &qword_254550C50);
    sub_254516E90(&qword_27F5FBF50, &qword_27F5FBF58, &qword_25454FB98);
    sub_2544AE1F0(&qword_27F5FB388, &qword_27F5FB390, &qword_25454FBC0, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5FCB10);
  }

  return result;
}

uint64_t sub_254516E90(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_254516F18()
{
  v1 = (type metadata accessor for SoftwareUpdateStatusView(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = v3 + *(*v1 + 64);
  v5 = sub_254549AB4();
  v6 = *(v5 - 8);
  v7 = *(v6 + 8);
  v8 = *(v6 + 80);
  v9 = (v4 + v8) & ~v8;
  v10 = *(v6 + 64);
  v11 = v2 | v8;
  v12 = v0 + v3;
  v7(v0 + v3, v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FBCD8, &qword_25454F730);

  v13 = v0 + v3 + v1[8];
  v14 = sub_25454A0F4();
  (*(*(v14 - 8) + 8))(v13, v14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC7C0, &qword_2545507C0);

  v15 = v12 + v1[9];
  v16 = sub_254549DC4();
  (*(*(v16 - 8) + 8))(v15, v16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC7C8, &qword_2545507C8);

  v7(v0 + v9, v5);

  return MEMORY[0x2821FE8E8](v0, v9 + v10, v11 | 7);
}

double sub_254517130()
{
  v1 = *(type metadata accessor for SoftwareUpdateStatusView(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(sub_254549AB4() - 8);
  v5 = v0 + ((v2 + v3 + *(v4 + 80)) & ~*(v4 + 80));

  return sub_254511AB4(v0 + v2, v5);
}

uint64_t sub_254517204()
{
  v1 = sub_254549AB4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_2545172C8()
{
  sub_254549AB4();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2544AE3EC;

  return sub_254511E48();
}

__n128 __swift_memcpy57_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 41) = *(a2 + 41);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_2545173E0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 57))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_254517428(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 57) = 1;
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

    *(result + 57) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

double sub_2545174A4@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FCB20, &qword_254550D90);
  v5 = MEMORY[0x28223BE20](v4);
  v80 = &v59 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v83 = &v59 - v7;
  sub_25454BE14();
  v69 = sub_25454BE04();
  sub_25454BDB4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v8 = a1[1];
  if (v8)
  {
    v99 = *a1;
    v100 = v8;
    sub_2544AECF0();

    v9 = sub_25454B274();
    v78 = v10;
    v79 = v9;
    v12 = v11;
    v77 = v13;
    KeyPath = swift_getKeyPath();
    v75 = swift_getKeyPath();
    LOBYTE(v99) = v12 & 1;
    LOBYTE(v98[0]) = 0;
    v71 = v12 & 1;
    v73 = 0;
    v14 = a1[6];
    v72 = swift_getKeyPath();
    v74 = v14;

    v82 = sub_25454B6C4();
    v70 = swift_getKeyPath();
    v81 = 1;
  }

  else
  {
    v78 = 0;
    v79 = 0;
    KeyPath = 0;
    v77 = 0;
    v74 = 0;
    v75 = 0;
    v81 = 0;
    v82 = 0;
    v72 = 0;
    v73 = 0;
    v70 = 0;
    v71 = 0;
  }

  v15 = a1[3];
  v99 = a1[2];
  v100 = v15;
  sub_2544AECF0();

  v16 = sub_25454B274();
  v18 = v17;
  v99 = v16;
  v100 = v17;
  v20 = v19 & 1;
  LOBYTE(v101) = v19 & 1;
  v102 = v21;
  v22 = v83;
  sub_25454B3F4();
  sub_2544C9C64(v16, v18, v20);

  *(v22 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FCB28, &qword_254550D98) + 36)) = 256;
  v23 = swift_getKeyPath();
  v24 = v22 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FCB30, &qword_254550DD0) + 36);
  *v24 = v23;
  *(v24 + 8) = 1;
  v25 = swift_getKeyPath();
  v26 = v22 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FCB38, &qword_254550E08) + 36);
  *v26 = v25;
  *(v26 + 8) = 1;
  *(v26 + 16) = 0;
  v27 = a1[6];

  sub_25454B054();
  v28 = sub_25454B0D4();
  v29 = swift_getKeyPath();
  v30 = (v22 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FCB40, &qword_254550E40) + 36));
  *v30 = v29;
  v30[1] = v28;
  v31 = sub_25454B6A4();
  v32 = swift_getKeyPath();
  v33 = (v22 + *(v4 + 36));
  *v33 = v32;
  v33[1] = v31;
  v34 = a1[5];
  if (v34)
  {
    v68 = a1[4];
    v35 = swift_getKeyPath();
    v67 = swift_getKeyPath();
    LOBYTE(v98[0]) = 0;
    v36 = swift_getKeyPath();
    LOBYTE(v99) = 0;
    v65 = 0;
    v66 = v36;

    v64 = sub_25454B6C4();
    v37 = swift_getKeyPath();
    v63 = 1;
  }

  else
  {

    v35 = 0;
    v67 = 0;
    v68 = 0;
    v27 = 0;
    v65 = 0;
    v66 = 0;
    v63 = 0;
    v64 = 0;
    v37 = 0;
  }

  v60 = 0;
  v61 = v35;
  v62 = v37;
  v38 = v80;
  sub_254517C10(v83, v80);
  *a2 = 0;
  *(a2 + 8) = 0;
  *&v84 = v79;
  *(&v84 + 1) = v78;
  *&v85 = v71;
  *(&v85 + 1) = v77;
  *&v86 = KeyPath;
  *(&v86 + 1) = v81;
  *&v87 = v75;
  *(&v87 + 1) = v81;
  *&v88 = v73;
  *(&v88 + 1) = v72;
  *&v89 = v74;
  *(&v89 + 1) = v70;
  v39 = v82;
  v90 = v82;
  v40 = v85;
  *(a2 + 16) = v84;
  *(a2 + 32) = v40;
  v41 = v86;
  v42 = v87;
  v43 = v88;
  v44 = v89;
  *(a2 + 112) = v39;
  *(a2 + 80) = v43;
  *(a2 + 96) = v44;
  *(a2 + 48) = v41;
  *(a2 + 64) = v42;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FCB48, &qword_254550E78);
  sub_254517C10(v38, a2 + v45[16]);
  v46 = a2 + v45[20];
  v91 = v35;
  v47 = v67;
  v48 = v68;
  *&v92 = v68;
  *(&v92 + 1) = v34;
  v93 = v27;
  v49 = v63;
  *&v94 = v67;
  *(&v94 + 1) = v63;
  v50 = v66;
  *&v95 = v66;
  *(&v95 + 1) = v63;
  v51 = a2;
  v52 = v65;
  *&v96 = v65;
  *(&v96 + 1) = v37;
  v53 = v64;
  v97 = v64;
  *(v46 + 96) = v64;
  v54 = v92;
  *v46 = v91;
  *(v46 + 16) = v54;
  v55 = v94;
  *(v46 + 32) = v93;
  *(v46 + 48) = v55;
  v56 = v96;
  *(v46 + 64) = v95;
  *(v46 + 80) = v56;
  v57 = v51 + v45[24];
  *v57 = 0;
  *(v57 + 8) = 0;
  sub_2544AE240(&v84, &v99, &qword_27F5FCB50, &qword_254550E80);
  sub_2544AE240(&v91, &v99, &qword_27F5FCB58, &qword_254550E88);
  sub_254517C80(v83);
  v98[0] = v61;
  v98[1] = v60;
  v98[2] = v48;
  v98[3] = v34;
  v98[4] = v27;
  v98[5] = 0;
  v98[6] = v47;
  v98[7] = v49;
  v98[8] = v50;
  v98[9] = v49;
  v98[10] = v52;
  v98[11] = v62;
  v98[12] = v53;
  sub_2544AE150(v98, &qword_27F5FCB58, &qword_254550E88);
  sub_254517C80(v80);
  v99 = v79;
  v100 = v78;
  v101 = v71;
  v102 = v77;
  v103 = KeyPath;
  v104 = v81;
  v105 = v75;
  v106 = v81;
  v107 = v73;
  v108 = v72;
  v109 = v74;
  v110 = v70;
  v111 = v82;
  sub_2544AE150(&v99, &qword_27F5FCB50, &qword_254550E80);

  return result;
}

double sub_254517AD4@<D0>(uint64_t a2@<X8>)
{
  v4 = v2[1];
  v7[0] = *v2;
  v7[1] = v4;
  v8[0] = v2[2];
  *(v8 + 9) = *(v2 + 41);
  *a2 = sub_25454AC24();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FCB18, &qword_254550D88);
  return sub_2545174A4(v7, a2 + *(v5 + 44));
}

uint64_t sub_254517B48@<X0>(uint64_t *a1@<X8>)
{
  result = sub_25454A894();
  *a1 = result;
  return result;
}

uint64_t sub_254517BB8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_25454A894();
  *a1 = result;
  return result;
}

uint64_t sub_254517C10(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FCB20, &qword_254550D90);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_254517C80(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FCB20, &qword_254550D90);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_254517CF4()
{
  result = qword_27F5FCB60;
  if (!qword_27F5FCB60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5FCB68, &qword_254550EC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5FCB60);
  }

  return result;
}

uint64_t WalletKeyUWBApproachAngleSection.init(accessoryDetails:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FBCD8, &qword_25454F730) + 28)) = 0;
  v4 = sub_254549AB4();
  v5 = *(*(v4 - 8) + 32);

  return v5(a2, a1, v4);
}

uint64_t WalletKeyUWBApproachAngleSection.body.getter()
{
  v1 = sub_254549AB4();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v19[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC620, &qword_2545503B0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v19[-v6];
  shouldShowWalletKeyUWBApproachAngle = WalletKeyUWBApproachAngleSection._shouldShowWalletKeyUWBApproachAngleSection()();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FBCD8, &qword_25454F730);
  sub_25454B7A4();
  sub_2545499E4();
  (*(v2 + 8))(v4, v1);
  v19[16] = shouldShowWalletKeyUWBApproachAngle;
  v20 = v7;
  v21 = v0;
  sub_25454BE14();
  sub_25454BE04();
  sub_25454BDB4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (shouldShowWalletKeyUWBApproachAngle)
  {
    v22 = sub_25454BCF4();
    v23 = v9;
    sub_2544AECF0();
    v10 = sub_25454B274();
    v12 = v11;
    v14 = v13;
    v16 = v15;

    v17 = v14 & 1;
  }

  else
  {

    v10 = 0;
    v12 = 0;
    v17 = 0;
    v16 = 0;
  }

  v22 = v10;
  v23 = v12;
  v24 = v17;
  v25 = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FCB70, &unk_254550EE0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC1A8, &qword_25454FD90);
  sub_254519A54();
  sub_254505794();
  sub_25454B9B4();
  return sub_2544AE150(v7, &qword_27F5FC620, &qword_2545503B0);
}

Swift::Bool __swiftcall WalletKeyUWBApproachAngleSection._shouldShowWalletKeyUWBApproachAngleSection()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC620, &qword_2545503B0);
  MEMORY[0x28223BE20](v0 - 8);
  v68 = &v66 - v1;
  v2 = sub_254549EA4();
  v69 = *(v2 - 8);
  v70 = v2;
  v3 = MEMORY[0x28223BE20](v2);
  v66 = &v66 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v67 = &v66 - v5;
  v6 = sub_254549AB4();
  v76 = *(v6 - 8);
  v77 = v6;
  MEMORY[0x28223BE20](v6);
  v75 = &v66 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2545495B4();
  v78 = *(v8 - 8);
  v79 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = &v66 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_254549844();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v66 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_2545497D4();
  v16 = *(v15 - 8);
  v80 = v15;
  v81 = v16;
  MEMORY[0x28223BE20](v15);
  v18 = &v66 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_254549624();
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v22 = &v66 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = *(v20 + 104);
  v74 = *MEMORY[0x277D15238];
  v73 = v23;
  v23(v22);
  v72 = sub_254521084(&qword_27F5FCB90, MEMORY[0x277D15260], MEMORY[0x277D15230]);
  v24 = sub_254549564();
  v71 = *(v20 + 8);
  v71(v22, v19);
  if ((v24 & 1) == 0)
  {
    if (qword_27F5FACF0 != -1)
    {
      swift_once();
    }

    v39 = sub_25454A2E4();
    __swift_project_value_buffer(v39, qword_27F5FD440);
    v40 = sub_25454A2C4();
    v41 = sub_25454BF94();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v82 = v43;
      *v42 = 136315650;
      *(v42 + 4) = sub_254502AAC(0xD00000000000002BLL, 0x8000000254556600, &v82);
      *(v42 + 12) = 2080;
      *(v42 + 14) = sub_254502AAC(0xD00000000000002DLL, 0x8000000254556660, &v82);
      *(v42 + 22) = 2080;
      v73(v22, v74, v19);
      v44 = sub_254549564();
      v71(v22, v19);
      if (v44)
      {
        v45 = 0x2E64656C62616E65;
      }

      else
      {
        v45 = 0x62616E6520544F4ELL;
      }

      if (v44)
      {
        v46 = 0xE800000000000000;
      }

      else
      {
        v46 = 0xEC0000002E64656CLL;
      }

      v47 = sub_254502AAC(v45, v46, &v82);

      *(v42 + 24) = v47;
      _os_log_impl(&dword_2544A5000, v40, v41, "%s - %s: Returning false to hide Wallet Key UWB approach angle because wallet_key_uwb is %s", v42, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x259C0FDF0](v43, -1, -1);
      MEMORY[0x259C0FDF0](v42, -1, -1);
    }

    goto LABEL_30;
  }

  sub_254549704();
  v25 = sub_2545496F4();
  sub_2545496E4();

  sub_254549814();
  (*(v12 + 8))(v14, v11);
  sub_2545495A4();
  (*(v78 + 1))(v10, v79);
  if ((sub_254549794() & 1) == 0)
  {
    if (qword_27F5FACF0 != -1)
    {
      swift_once();
    }

    v48 = sub_25454A2E4();
    __swift_project_value_buffer(v48, qword_27F5FD440);
    v34 = sub_25454A2C4();
    v35 = sub_25454BF94();
    if (!os_log_type_enabled(v34, v35))
    {
      goto LABEL_29;
    }

    v36 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v82 = v37;
    *v36 = 136315394;
    *(v36 + 4) = sub_254502AAC(0xD00000000000002BLL, 0x8000000254556600, &v82);
    *(v36 + 12) = 2080;
    *(v36 + 14) = sub_254502AAC(0xD00000000000002DLL, 0x8000000254556660, &v82);
    v38 = "%s - %s: Returning false to hide Wallet Key UWB approach angle because currentUser does NOT have admin privilege.";
    goto LABEL_28;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FBCD8, &qword_25454F730);
  v26 = v75;
  sub_25454B7A4();
  v27 = sub_2545499B4();
  v28 = v77;
  v29 = *(v76 + 8);
  v29(v26, v77);
  if ((v27 & 1) == 0)
  {
    if (qword_27F5FACF0 != -1)
    {
      swift_once();
    }

    v49 = sub_25454A2E4();
    __swift_project_value_buffer(v49, qword_27F5FD440);
    v34 = sub_25454A2C4();
    v35 = sub_25454BF94();
    if (!os_log_type_enabled(v34, v35))
    {
      goto LABEL_29;
    }

    v36 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v82 = v37;
    *v36 = 136315394;
    *(v36 + 4) = sub_254502AAC(0xD00000000000002BLL, 0x8000000254556600, &v82);
    *(v36 + 12) = 2080;
    *(v36 + 14) = sub_254502AAC(0xD00000000000002DLL, 0x8000000254556660, &v82);
    v38 = "%s - %s: Returning false to hide Wallet Key UWB approach angle because supportsUWBUnlock is false.";
    goto LABEL_28;
  }

  sub_25454B7A4();
  v30 = v68;
  sub_2545499E4();
  v29(v26, v28);
  v31 = v69;
  v32 = v70;
  if ((*(v69 + 48))(v30, 1, v70) == 1)
  {
    sub_2544AE150(v30, &qword_27F5FC620, &qword_2545503B0);
    if (qword_27F5FACF0 != -1)
    {
      swift_once();
    }

    v33 = sub_25454A2E4();
    __swift_project_value_buffer(v33, qword_27F5FD440);
    v34 = sub_25454A2C4();
    v35 = sub_25454BF94();
    if (!os_log_type_enabled(v34, v35))
    {
      goto LABEL_29;
    }

    v36 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v82 = v37;
    *v36 = 136315394;
    *(v36 + 4) = sub_254502AAC(0xD00000000000002BLL, 0x8000000254556600, &v82);
    *(v36 + 12) = 2080;
    *(v36 + 14) = sub_254502AAC(0xD00000000000002DLL, 0x8000000254556660, &v82);
    v38 = "%s - %s: doorLockCluster is nil, so returning false to hide Wallet Key UWB approach angle.";
LABEL_28:
    _os_log_impl(&dword_2544A5000, v34, v35, v38, v36, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x259C0FDF0](v37, -1, -1);
    MEMORY[0x259C0FDF0](v36, -1, -1);
LABEL_29:

    (*(v81 + 8))(v18, v80);
LABEL_30:
    v50 = 0;
    return v50 & 1;
  }

  v52 = v67;
  (*(v31 + 32))(v67, v30, v32);
  v50 = sub_254549E94();
  if (qword_27F5FACF0 != -1)
  {
    swift_once();
  }

  v53 = sub_25454A2E4();
  __swift_project_value_buffer(v53, qword_27F5FD440);
  v54 = v66;
  (*(v31 + 16))(v66, v52, v32);
  v55 = sub_25454A2C4();
  v56 = sub_25454BF94();
  if (os_log_type_enabled(v55, v56))
  {
    v57 = swift_slowAlloc();
    v58 = swift_slowAlloc();
    v78 = v18;
    v79 = v58;
    v82 = v58;
    *v57 = 136315906;
    *(v57 + 4) = sub_254502AAC(0xD00000000000002BLL, 0x8000000254556600, &v82);
    *(v57 + 12) = 2080;
    *(v57 + 14) = sub_254502AAC(0xD00000000000002DLL, 0x8000000254556660, &v82);
    *(v57 + 22) = 1024;
    *(v57 + 24) = v50 & 1;
    *(v57 + 28) = 2080;
    v59 = sub_254549DE4();
    v61 = v60;
    v62 = *(v31 + 8);
    v62(v54, v32);
    v63 = sub_254502AAC(v59, v61, &v82);

    *(v57 + 30) = v63;
    _os_log_impl(&dword_2544A5000, v55, v56, "%s - %s: Returning %{BOOL}d | doorLockCluster = %s", v57, 0x26u);
    v64 = v79;
    swift_arrayDestroy();
    MEMORY[0x259C0FDF0](v64, -1, -1);
    MEMORY[0x259C0FDF0](v57, -1, -1);

    v62(v67, v32);
    (*(v81 + 8))(v78, v80);
  }

  else
  {

    v65 = *(v31 + 8);
    v65(v54, v32);
    v65(v52, v32);
    (*(v81 + 8))(v18, v80);
  }

  return v50 & 1;
}

double sub_254518DD4@<D0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v24 = a3;
  v20 = a2;
  v26 = a1;
  v27 = a4;
  v25 = sub_254549AB4();
  v22 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC620, &qword_2545503B0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v20 - v7;
  v23 = type metadata accessor for WalletKeyUWBApproachAngleView(0);
  MEMORY[0x28223BE20](v23);
  v21 = (&v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FCB88, &qword_254550EF0);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v20 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FCB70, &unk_254550EE0);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v20 - v15;
  sub_25454BE14();
  sub_25454BE04();
  sub_25454BDB4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (v26)
  {
    v28 = sub_25454BCF4();
    v29 = v17;
    sub_25454BE04();
    sub_25454BDB4();
    if ((swift_task_isCurrentExecutor() & 1) == 0)
    {
      swift_task_reportUnexpectedExecutor();
    }

    sub_2544AE240(v20, v8, &qword_27F5FC620, &qword_2545503B0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FBCD8, &qword_25454F730);
    sub_25454B7A4();
    v18 = sub_254549964();
    (*(v22 + 8))(v5, v25);
    WalletKeyUWBApproachAngleView.init(doorLockCluster:canEdit:)(v8, v18 & 1, v21);

    sub_254521084(&qword_27F5FCDA0, type metadata accessor for WalletKeyUWBApproachAngleView, &protocol conformance descriptor for WalletKeyUWBApproachAngleView);
    sub_2544AECF0();
    sub_25454A684();
    (*(v11 + 32))(v16, v13, v10);
    (*(v11 + 56))(v16, 0, 1, v10);
  }

  else
  {
    (*(v11 + 56))(v16, 1, 1, v10);
  }

  sub_2545227C8(v16, v27);

  return result;
}

void WalletKeyUWBApproachAngleView.init(doorLockCluster:canEdit:)(uint64_t a1@<X0>, int a2@<W1>, void *a3@<X8>)
{
  v59 = a2;
  v60 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FCB98, &qword_254550EF8);
  MEMORY[0x28223BE20](v4 - 8);
  v51 = v47 - v5;
  v6 = sub_254549E54();
  v52 = *(v6 - 8);
  v53 = v6;
  v7 = MEMORY[0x28223BE20](v6);
  v49 = v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v50 = v47 - v9;
  v10 = sub_254549EA4();
  v56 = v10;
  v54 = *(v10 - 8);
  v11 = v54;
  MEMORY[0x28223BE20](v10);
  v58 = v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC620, &qword_2545503B0);
  v13 = MEMORY[0x28223BE20](v55);
  v15 = v47 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v13);
  v18 = v47 - v17;
  MEMORY[0x28223BE20](v16);
  v20 = v47 - v19;
  (*(v11 + 56))(v47 - v19, 1, 1, v10);
  sub_2544AE240(v20, v18, &qword_27F5FC620, &qword_2545503B0);
  sub_25454B794();
  sub_2544AE150(v20, &qword_27F5FC620, &qword_2545503B0);
  v21 = type metadata accessor for WalletKeyUWBApproachAngleView(0);
  v22 = a3 + v21[6];
  v61 = 1;
  sub_25454B794();
  v23 = v63;
  *v22 = v62;
  v48 = v22;
  v47[0] = v23;
  *(v22 + 1) = v23;
  v24 = a3 + v21[7];
  v61 = 2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FCBA0, &qword_254550F00);
  sub_25454B794();
  v25 = v63;
  *v24 = v62;
  *(v24 + 1) = v25;
  v26 = a3 + v21[8];
  v61 = 1;
  sub_25454B794();
  v27 = v63;
  *v26 = v62;
  v47[1] = v27;
  *(v26 + 1) = v27;
  v28 = a3 + v21[9];
  v61 = 2;
  v29 = v60;
  sub_25454B794();
  v30 = v63;
  *v28 = v62;
  *(v28 + 1) = v30;
  v57 = v21;
  v31 = v21[10];
  *(a3 + v31) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FCBA8, &qword_254550F38);
  v32 = v54;
  swift_storeEnumTagMultiPayload();
  sub_2544AE240(v29, v20, &qword_27F5FC620, &qword_2545503B0);
  sub_2544AE150(a3, &qword_27F5FCBB0, &qword_254550F40);
  sub_2544AE240(v20, v18, &qword_27F5FC620, &qword_2545503B0);
  v33 = v56;
  sub_25454B794();
  sub_2544AE150(v20, &qword_27F5FC620, &qword_2545503B0);
  sub_2544AE240(v29, v15, &qword_27F5FC620, &qword_2545503B0);
  if ((*(v32 + 48))(v15, 1, v33) == 1)
  {
    sub_2544AE150(v60, &qword_27F5FC620, &qword_2545503B0);
    sub_2544AE150(v15, &qword_27F5FC620, &qword_2545503B0);
  }

  else
  {
    v55 = v26;
    (*(v32 + 32))(v58, v15, v33);
    v34 = v51;
    sub_254549E64();
    v36 = v52;
    v35 = v53;
    if ((*(v52 + 48))(v34, 1, v53) == 1)
    {
      sub_2544AE150(v60, &qword_27F5FC620, &qword_2545503B0);
      (*(v32 + 8))(v58, v33);
      sub_2544AE150(v34, &qword_27F5FCB98, &qword_254550EF8);
    }

    else
    {
      v37 = v50;
      (*(v36 + 32))(v50, v34, v35);
      v38 = v49;
      sub_254549E44();
      sub_254521084(&qword_27F5FCBB8, MEMORY[0x277D166C0], MEMORY[0x277D166D0]);
      v39 = v32;
      v40 = sub_25454C0B4();
      v41 = *(v36 + 8);
      v41(v38, v35);
      v61 = v40 & 1;
      sub_25454B794();

      v42 = v63;
      v43 = v48;
      *v48 = v62;
      *(v43 + 1) = v42;
      sub_254549E14();
      v44 = sub_25454C0B4();
      v41(v38, v35);
      v61 = v44 & 1;
      sub_25454B794();
      sub_2544AE150(v60, &qword_27F5FC620, &qword_2545503B0);
      v41(v37, v35);
      (*(v39 + 8))(v58, v33);

      v45 = v63;
      v46 = v55;
      *v55 = v62;
      *(v46 + 1) = v45;
    }
  }

  *(a3 + v57[5]) = v59 & 1;
}