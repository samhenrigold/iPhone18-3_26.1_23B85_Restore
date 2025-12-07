uint64_t MapView.bodyInner.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = sub_26A84E668();
  v4 = OUTLINED_FUNCTION_79(v3);
  MEMORY[0x28223BE20](v4);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B0C68, &qword_26A86A568);
  OUTLINED_FUNCTION_15();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v18 - v14;
  type metadata accessor for MapView(0);
  if (sub_26A807B20())
  {
    sub_26A610904(v6);
    v19 = sub_26A807C50();
    v20 = &v18;
    MEMORY[0x28223BE20](v19);
    *(&v18 - 2) = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B0C70, &qword_26A86A570);
    sub_26A4D7DCC();
    sub_26A84E628();
    (*(v9 + 16))(v12, v15, v7);
    sub_26A4D7DCC();
    v16 = sub_26A851248();
    result = (*(v9 + 8))(v15, v7);
  }

  else
  {
    if (qword_2803A8C38 != -1)
    {
      swift_once();
    }

    v21 = qword_2803B0C40;

    result = sub_26A851248();
    v16 = result;
  }

  *a1 = v16;
  return result;
}

uint64_t sub_26A6110A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v85 = a2;
  v3 = sub_26A84E728();
  MEMORY[0x28223BE20](v3 - 8);
  v78 = &v75 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = sub_26A84E738();
  v77 = *(v82 - 1);
  MEMORY[0x28223BE20](v82);
  v76 = &v75 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B0CF8, &qword_26A86A758);
  MEMORY[0x28223BE20](v6 - 8);
  v94 = &v75 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v91 = &v75 - v9;
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B0D00, &qword_26A86A760);
  v84 = *(v93 - 8);
  MEMORY[0x28223BE20](v93);
  v92 = &v75 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v98 = &v75 - v12;
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B0D08, &qword_26A86A768);
  v83 = *(v100 - 8);
  MEMORY[0x28223BE20](v100);
  v99 = &v75 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v97 = &v75 - v15;
  v16 = type metadata accessor for MapView(0);
  v79 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v80 = v17;
  v81 = (&v75 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B0D10, &qword_26A86A770);
  v89 = *(v18 - 8);
  v90 = v18;
  MEMORY[0x28223BE20](v18);
  v88 = &v75 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v96 = &v75 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B0D18, &qword_26A86A778);
  v23 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v25 = &v75 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v28 = &v75 - v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B0D20, &qword_26A86A780);
  v30 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v32 = &v75 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v33);
  v35 = &v75 - v34;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B0D28, &qword_26A86A788);
  MEMORY[0x28223BE20](v36 - 8);
  v87 = &v75 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v38);
  v95 = &v75 - v39;
  v86 = v16;
  if ((sub_26A807B48() & 1) != 0 && !*(a1 + *(v86 + 32)))
  {
    sub_26A84E768();
    (*(v30 + 16))(v32, v35, v29);
    v44 = v95;
    sub_26A84E608();
    (*(v30 + 8))(v35, v29);
    v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B0D30, &qword_26A86A790);
    v42 = v44;
  }

  else
  {
    if ((sub_26A807B48() & 1) == 0)
    {
      v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B0D30, &qword_26A86A790);
      v42 = v95;
      v43 = 1;
      goto LABEL_8;
    }

    sub_26A84E768();
    (*(v23 + 16))(v25, v28, v22);
    v40 = v95;
    sub_26A84E618();
    (*(v23 + 8))(v28, v22);
    v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B0D30, &qword_26A86A790);
    v42 = v40;
  }

  v43 = 0;
LABEL_8:
  __swift_storeEnumTagSinglePayload(v42, v43, 1, v41);

  sub_26A56C114(v45);
  v47 = v46;

  v101 = v47;
  swift_getKeyPath();
  v48 = a1;
  v49 = v81;
  sub_26A614F78(a1, v81);
  v50 = (*(v79 + 80) + 16) & ~*(v79 + 80);
  v51 = swift_allocObject();
  sub_26A614FDC(v49, v51 + v50);
  v52 = swift_allocObject();
  *(v52 + 16) = sub_26A615A08;
  *(v52 + 24) = v51;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B0D38, &qword_26A86A7B8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B0D40, &qword_26A86A7C0);
  sub_26A4D7DCC();
  sub_26A615ABC();
  sub_26A8512D8();
  v53 = v86;
  v101 = *(v48 + *(v86 + 40));

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B0D88, &qword_26A86A7E0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B0D90, &qword_26A86A7E8);
  sub_26A4D7DCC();
  sub_26A615C24();
  sub_26A615D04();
  sub_26A8512E8();
  v101 = *(v48 + *(v53 + 44));
  swift_getKeyPath();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B0DD0, &qword_26A86A848);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B0DD8, &qword_26A86A850);
  sub_26A4D7DCC();
  sub_26A615D78();
  sub_26A615DF4();
  sub_26A8512D8();
  if (*(*(v48 + *(v53 + 48)) + 16))
  {

    sub_26A84E718();
    v54 = v76;
    sub_26A84E708();
    v55 = v91;
    v56 = v82;
    (*(v77 + 32))(v91, v54, v82);
    v57 = 0;
  }

  else
  {
    v57 = 1;
    v55 = v91;
    v56 = v82;
  }

  __swift_storeEnumTagSinglePayload(v55, v57, 1, v56);
  v58 = v87;
  sub_26A505CD4(v95, v87, &qword_2803B0D28, &qword_26A86A788);
  v59 = v88;
  v86 = *(v89 + 16);
  (v86)(v88, v96, v90);
  v60 = v83;
  v82 = *(v83 + 16);
  v82(v99, v97, v100);
  v61 = v84;
  v81 = *(v84 + 16);
  v62 = v92;
  (v81)(v92, v98, v93);
  sub_26A505CD4(v55, v94, &qword_2803B0CF8, &qword_26A86A758);
  v63 = v58;
  v64 = v85;
  sub_26A505CD4(v63, v85, &qword_2803B0D28, &qword_26A86A788);
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B0E00, &qword_26A86A860);
  v66 = v59;
  v67 = v90;
  (v86)(v64 + v65[12], v66, v90);
  v68 = v100;
  v82((v64 + v65[16]), v99, v100);
  v69 = v62;
  v70 = v93;
  (v81)(v64 + v65[20], v69, v93);
  sub_26A505CD4(v94, v64 + v65[24], &qword_2803B0CF8, &qword_26A86A758);
  sub_26A4D6FD8();
  v71 = *(v61 + 8);
  v71(v98, v70);
  v72 = *(v60 + 8);
  v72(v97, v68);
  v73 = *(v89 + 8);
  v73(v96, v67);
  sub_26A4D6FD8();
  sub_26A4D6FD8();
  v71(v92, v70);
  v72(v99, v100);
  v73(v88, v67);
  return sub_26A4D6FD8();
}

uint64_t sub_26A611DA4@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v31 = a2;
  v32 = a1;
  v33 = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B0D80, &qword_26A86A7D8);
  v30 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v28 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B0D70, &qword_26A86A7D0);
  v29 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v28 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B0D60, &qword_26A86A7C8);
  MEMORY[0x28223BE20](v17);
  v19 = &v28 - v18;
  v20 = type metadata accessor for MapView(0);
  if (sub_26A6B5028(v32, *(a3 + *(v20 + 56))))
  {
    v21 = v33;

    return __swift_storeEnumTagSinglePayload(v21, 1, 1, v17);
  }

  else
  {
    v23 = *(a3 + *(v20 + 32));
    v24 = v31;
    sub_26A84E758();
    if (v23 == 1)
    {
      v25 = v29;
      (*(v29 + 16))(v13, v16, v11);
      sub_26A84E608();
      (*(v25 + 8))(v16, v11);
    }

    else
    {
      v26 = v30;
      (*(v30 + 16))(v7, v10, v5);
      sub_26A84E618();
      (*(v26 + 8))(v10, v5);
    }

    v27 = v33;
    sub_26A505C8C(v19, v33, &qword_2803B0D60, &qword_26A86A7C8);
    return __swift_storeEnumTagSinglePayload(v27, 0, 1, v17);
  }
}

uint64_t sub_26A6120F8@<X0>(id *a1@<X0>, uint64_t a2@<X8>)
{
  v110 = a2;
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B0DB0, &qword_26A86A7F0);
  MEMORY[0x28223BE20](v109);
  v99 = &v89 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v100 = &v89 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B0E28, &qword_26A86A878);
  MEMORY[0x28223BE20](v6 - 8);
  v97 = &v89 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v94 = &v89 - v9;
  MEMORY[0x28223BE20](v10);
  v98 = &v89 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B0E30, &qword_26A86A880);
  MEMORY[0x28223BE20](v12 - 8);
  v96 = &v89 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v93 = &v89 - v15;
  MEMORY[0x28223BE20](v16);
  v107 = &v89 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B0E38, &qword_26A86A888);
  MEMORY[0x28223BE20](v18 - 8);
  v95 = &v89 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v91 = &v89 - v21;
  MEMORY[0x28223BE20](v22);
  v111 = &v89 - v23;
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B0DC0, &qword_26A86A7F8);
  MEMORY[0x28223BE20](v108);
  v106 = &v89 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v105 = &v89 - v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B0E40, &qword_26A86A890);
  MEMORY[0x28223BE20](v27 - 8);
  v92 = &v89 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v102 = &v89 - v30;
  MEMORY[0x28223BE20](v31);
  v104 = &v89 - v32;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B0E48, &qword_26A86A898);
  MEMORY[0x28223BE20](v33 - 8);
  v90 = &v89 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v35);
  v101 = &v89 - v36;
  MEMORY[0x28223BE20](v37);
  v103 = &v89 - v38;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B0E50, &qword_26A86A8A0);
  MEMORY[0x28223BE20](v39 - 8);
  v41 = &v89 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v42);
  v44 = &v89 - v43;
  MEMORY[0x28223BE20](v45);
  v112 = &v89 - v46;
  v47 = sub_26A84B048();
  v48 = *(v47 - 8);
  MEMORY[0x28223BE20](v47);
  v50 = &v89 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = sub_26A84DFA8();
  v52 = *(v51 - 8);
  *&v53 = MEMORY[0x28223BE20](v51).n128_u64[0];
  v55 = &v89 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = [*a1 tint];
  if (v56 && (v57 = v56, v58 = sub_26A68D85C(), Color.init(color:)(v58), v57, sub_26A84DF78(), v59 = _ProtoColor.swiftValue.getter(), (*(v48 + 8))(v50, v47), (*(v52 + 8))(v55, v51), v59))
  {
    sub_26A83AAEC();
    v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B0D80, &qword_26A86A7D8);
    if (__swift_getEnumTagSinglePayload(v41, 1, v60) == 1)
    {
      sub_26A4D6FD8();
      v61 = 1;
      v62 = v93;
      v63 = v91;
    }

    else
    {
      v113 = v59;
      sub_26A4D7DCC();
      v63 = v91;
      sub_26A84E6F8();
      (*(*(v60 - 8) + 8))(v41, v60);
      v61 = 0;
      v62 = v93;
    }

    v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B0E60, &qword_26A86A8B0);
    __swift_storeEnumTagSinglePayload(v63, v61, 1, v72);
    sub_26A505C8C(v63, v111, &qword_2803B0E38, &qword_26A86A888);
    v73 = v90;
    sub_26A83AC0C(v90);
    v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B0E68, &qword_26A86A8B8);
    if (__swift_getEnumTagSinglePayload(v73, 1, v74) == 1)
    {
      sub_26A4D6FD8();
      v75 = 1;
    }

    else
    {
      v113 = v59;
      sub_26A4D7DCC();
      sub_26A84E6F8();
      (*(*(v74 - 8) + 8))(v73, v74);
      v75 = 0;
    }

    v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B0E70, &qword_26A86A8C0);
    __swift_storeEnumTagSinglePayload(v62, v75, 1, v76);
    sub_26A505C8C(v62, v107, &qword_2803B0E30, &qword_26A86A880);
    v77 = v92;
    sub_26A83AF4C();
    v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B0E78, &qword_26A86A8C8);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v77, 1, v78);
    v89 = v59;
    if (EnumTagSinglePayload == 1)
    {
      sub_26A4D6FD8();
      v80 = 1;
      v81 = v94;
    }

    else
    {
      v113 = v59;
      sub_26A4D7DCC();
      v81 = v94;
      sub_26A84E6F8();
      (*(*(v78 - 8) + 8))(v77, v78);
      v80 = 0;
    }

    v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B0E80, &qword_26A86A8D0);
    __swift_storeEnumTagSinglePayload(v81, v80, 1, v82);
    v83 = v98;
    sub_26A505C8C(v81, v98, &qword_2803B0E28, &qword_26A86A878);
    v84 = v95;
    sub_26A505CD4(v111, v95, &qword_2803B0E38, &qword_26A86A888);
    v85 = v96;
    sub_26A505CD4(v107, v96, &qword_2803B0E30, &qword_26A86A880);
    v86 = v97;
    sub_26A505CD4(v83, v97, &qword_2803B0E28, &qword_26A86A878);
    v87 = v100;
    sub_26A505CD4(v84, v100, &qword_2803B0E38, &qword_26A86A888);
    v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B0E88, &qword_26A86A8D8);
    sub_26A505CD4(v85, v87 + *(v88 + 48), &qword_2803B0E30, &qword_26A86A880);
    sub_26A505CD4(v86, v87 + *(v88 + 64), &qword_2803B0E28, &qword_26A86A878);
    sub_26A4D6FD8();
    sub_26A4D6FD8();
    sub_26A4D6FD8();
    sub_26A505CD4(v87, v99, &qword_2803B0DB0, &qword_26A86A7F0);
    sub_26A84E608();

    sub_26A4D6FD8();
    sub_26A4D6FD8();
    sub_26A4D6FD8();
    return sub_26A4D6FD8();
  }

  else
  {
    v64 = v112;
    sub_26A83AAEC();
    v65 = v103;
    sub_26A83AC0C(v103);
    v66 = v104;
    sub_26A83AF4C();
    sub_26A505CD4(v64, v44, &qword_2803B0E50, &qword_26A86A8A0);
    v67 = v101;
    sub_26A505CD4(v65, v101, &qword_2803B0E48, &qword_26A86A898);
    v68 = v102;
    sub_26A505CD4(v66, v102, &qword_2803B0E40, &qword_26A86A890);
    v69 = v105;
    sub_26A505CD4(v44, v105, &qword_2803B0E50, &qword_26A86A8A0);
    v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B0E58, &qword_26A86A8A8);
    sub_26A505CD4(v67, v69 + *(v70 + 48), &qword_2803B0E48, &qword_26A86A898);
    sub_26A505CD4(v68, v69 + *(v70 + 64), &qword_2803B0E40, &qword_26A86A890);
    sub_26A4D6FD8();
    sub_26A4D6FD8();
    sub_26A4D6FD8();
    sub_26A505CD4(v69, v106, &qword_2803B0DC0, &qword_26A86A7F8);
    sub_26A84E618();
    sub_26A4D6FD8();
    sub_26A4D6FD8();
    sub_26A4D6FD8();
    return sub_26A4D6FD8();
  }
}

id sub_26A612EB4@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 coordinate];
  *a2 = result;
  return result;
}

uint64_t sub_26A612EF0@<X0>(void **a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_26A84BD28();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B0DF8, &qword_26A86A858);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v25 - v10;
  v12 = *a1;
  v13 = sub_26A74937C();
  v14 = [v12 content];
  if (v14)
  {
    v15 = v14;
    v25[0] = sub_26A74954C();
    v25[1] = v16;
    sub_26A7492F8();
    sub_26A749578();
    RFVisualProperty.asVisualProperty()();
    v17 = VisualProperty.asAnyView()();
    (*(v5 + 8))(v7, v4);
    v18 = sub_26A851448();
    v20 = v19;
    if (v13)
    {
      v21 = 1.0;
    }

    else
    {
      v21 = 0.0;
    }

    v22 = swift_allocObject();
    *(v22 + 16) = v17;
    *(v22 + 24) = v21;
    *(v22 + 28) = 256;
    *(v22 + 32) = v18;
    *(v22 + 40) = v20;
    MEMORY[0x28223BE20](v22);
    v25[-2] = sub_26A615EA4;
    v25[-1] = v23;
    sub_26A53ACC8();
    sub_26A84E748();

    (*(v9 + 32))(a2, v11, v8);
    return __swift_storeEnumTagSinglePayload(a2, 0, 1, v8);
  }

  else
  {

    return __swift_storeEnumTagSinglePayload(a2, 1, 1, v8);
  }
}

uint64_t sub_26A613228(uint64_t *a1)
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B0E08, &qword_26A86A868);
  sub_26A615EDC();
  return sub_26A851248();
}

uint64_t MapView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for MapView(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91C0, &unk_26A854CB0);
  v7 = OUTLINED_FUNCTION_79(v6);
  MEMORY[0x28223BE20](v7);
  v9 = &v29[-v8];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91C8, &unk_26A856820);
  v11 = OUTLINED_FUNCTION_79(v10);
  MEMORY[0x28223BE20](v11);
  v13 = &v29[-v12];
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B0C88, &qword_26A86A578);
  v15 = v14 - 8;
  MEMORY[0x28223BE20](v14);
  v17 = &v29[-v16];
  sub_26A610174(v13);
  sub_26A613638(v31);
  v35 = v32;
  v36 = v33;
  v37 = v34;
  sub_26A60FE34();
  sub_26A60FF6C(v9);
  v18 = sub_26A84F3A8();
  __swift_storeEnumTagSinglePayload(v9, 0, 1, v18);
  v30 = v1;
  sub_26A4C98A0();
  KeyPath = swift_getKeyPath();
  v20 = swift_getKeyPath();
  v21 = &v17[*(v15 + 44)];
  *v21 = KeyPath;
  v21[8] = 0;
  *(v21 + 2) = v20;
  *(v21 + 12) = 256;
  if (qword_2803A8C40 != -1)
  {
    swift_once();
  }

  v22 = sub_26A851F98();
  v23 = __swift_project_value_buffer(v22, qword_2803B0C48);
  sub_26A614F78(v1, &v29[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)]);
  v24 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v25 = swift_allocObject();
  sub_26A614FDC(&v29[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)], v25 + v24);
  sub_26A505CD4(v17, a1, &qword_2803B0C88, &qword_26A86A578);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B0C90, &qword_26A86A5D0);
  (*(*(v22 - 8) + 16))(a1 + *(v26 + 52), v23, v22);
  result = sub_26A4D6FD8();
  v28 = (a1 + *(v26 + 56));
  *v28 = sub_26A615040;
  v28[1] = v25;
  return result;
}

double sub_26A613638@<D0>(uint64_t a1@<X8>)
{
  v3 = sub_26A84F988();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v1;
  if (*(v1 + 8) == 1)
  {
    v20 = *v1;
  }

  else
  {

    sub_26A851EA8();
    v8 = sub_26A8501F8();
    sub_26A84EA78();

    sub_26A84F978();
    swift_getAtKeyPath();
    sub_26A49035C(v7, 0);
    (*(v4 + 8))(v6, v3);
    v7 = v20;
  }

  switch(v7)
  {
    case 1:
    case 2:
    case 3:
    case 8:
      goto LABEL_5;
    case 4:
      v9 = xmmword_26A86A480;
      goto LABEL_6;
    case 5:
      v9 = xmmword_26A86A4A0;
      goto LABEL_6;
    case 6:
      v9 = xmmword_26A86A490;
      goto LABEL_11;
    case 7:
      v9 = xmmword_26A86A480;
LABEL_11:
      v10 = 10.0;
      break;
    default:
      v17 = sub_26A851E98();
      LOBYTE(v18) = 2;
      sub_26A7AEFE4(v17, 0, "SnippetUI/IdiomDependentStaticValue.swift", 41, 2, 89, "value(for:)", 11, v18, v7, v19[0], v19[1], v19[2], v19[3], v19[4], v19[5], v19[6], v19[7], v19[8], v20, v21, v22, v23, v24, v25, v26);
LABEL_5:
      v9 = xmmword_26A86A470;
LABEL_6:
      v10 = 16.0;
      break;
  }

  *a1 = v9;
  *(a1 + 16) = v10;
  __asm { FMOV            V0.2D, #8.0 }

  *(a1 + 24) = _Q0;
  result = 0.0;
  *(a1 + 40) = xmmword_26A86A4B0;
  *(a1 + 56) = 0;
  return result;
}

uint64_t sub_26A613860@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v60 = a2;
  v3 = type metadata accessor for MapView(0);
  v84 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v85 = v4;
  v58 = v57 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = sub_26A84E688();
  v77 = *(v79 - 8);
  MEMORY[0x28223BE20](v79);
  v76 = v57 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = sub_26A84E6B8();
  v74 = *(v75 - 8);
  MEMORY[0x28223BE20](v75);
  v72 = v57 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = sub_26A84E798();
  v69 = *(v71 - 8);
  MEMORY[0x28223BE20](v71);
  v67 = v57 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = sub_26A84E6C8();
  v70 = *(v73 - 8);
  MEMORY[0x28223BE20](v73);
  v68 = v57 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_26A84F9E8();
  v63 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v61 = v57 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B0CF0, &qword_26A87CB90);
  v64 = *(v65 - 8);
  MEMORY[0x28223BE20](v65);
  v59 = v57 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v62 = v57 - v13;
  v14 = sub_26A84E668();
  MEMORY[0x28223BE20](v14 - 8);
  v16 = v57 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B0C68, &qword_26A86A568);
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = v57 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v23 = v57 - v22;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A9DD8, &qword_26A855B60);
  MEMORY[0x28223BE20](v66);
  v80 = v57 - v24;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A9DC8, &qword_26A855B58);
  MEMORY[0x28223BE20](v78);
  v82 = v57 - v25;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A9DB0, &qword_26A855B50);
  MEMORY[0x28223BE20](v83);
  v81 = v57 - v26;
  v57[2] = v3;
  if (sub_26A807B20())
  {
    sub_26A610904(v16);
    v57[0] = sub_26A807C50();
    v57[1] = v57;
    MEMORY[0x28223BE20](v57[0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B0C70, &qword_26A86A570);
    sub_26A4D7DCC();
    sub_26A84E628();
    (*(v18 + 16))(v20, v23, v17);
    sub_26A4D7DCC();
    v27 = sub_26A851248();
    (*(v18 + 8))(v23, v17);
  }

  else
  {
    if (qword_2803A8C38 != -1)
    {
      swift_once();
    }

    __src[0] = qword_2803B0C40;

    v27 = sub_26A851248();
  }

  v28 = v61;
  sub_26A84F9D8();
  sub_26A8514B8();
  v29 = sub_26A6155D8();
  v30 = v62;
  sub_26A84EE38();

  (*(v63 + 8))(v28, v9);
  v31 = v64;
  v32 = v65;
  (*(v64 + 16))(v59, v30, v65);
  __src[0] = v9;
  __src[1] = v29;
  swift_getOpaqueTypeConformance2();
  v33 = sub_26A84F058();
  (*(v31 + 8))(v30, v32);
  __src[0] = v27;
  __src[1] = v33;
  v34 = v67;
  sub_26A84E788();
  v35 = v72;
  sub_26A84E678();
  v36 = v76;
  sub_26A84E678();
  v37 = v68;
  sub_26A84E698();
  (*(v77 + 8))(v36, v79);
  (*(v74 + 8))(v35, v75);
  (*(v69 + 8))(v34, v71);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A9E00, &qword_26A855B78);
  sub_26A4D60CC();
  v38 = v80;
  sub_26A8508C8();
  (*(v70 + 8))(v37, v73);

  KeyPath = swift_getKeyPath();
  v40 = &v38[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A9DF8, &qword_26A855B70) + 36)];
  *v40 = KeyPath;
  v40[8] = 0;
  v41 = swift_getKeyPath();
  v42 = &v38[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A9DE8, &qword_26A855B68) + 36)];
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A9E48, &unk_26A855BA0);
  sub_26A614618(v42 + *(v43 + 28));
  *v42 = v41;
  v44 = &v38[*(v66 + 36)];
  sub_26A84F198();
  sub_26A851BF8();
  v45 = v58;
  sub_26A614F78(a1, v58);
  v46 = (*(v84 + 80) + 16) & ~*(v84 + 80);
  v47 = swift_allocObject();
  sub_26A614FDC(v45, v47 + v46);
  *v44 = &unk_26A86A750;
  *(v44 + 1) = v47;
  sub_26A613638(v86);
  sub_26A851448();
  sub_26A84F628();
  v48 = v38;
  v49 = v82;
  sub_26A505C8C(v48, v82, &qword_2803A9DD8, &qword_26A855B60);
  memcpy((v49 + *(v78 + 36)), __src, 0x70uLL);
  sub_26A613638(v88);
  v50 = v89;
  v51 = v81;
  v52 = &v81[*(v83 + 36)];
  v53 = *(sub_26A84F5F8() + 20);
  v54 = *MEMORY[0x277CE0118];
  v55 = sub_26A84FB88();
  (*(*(v55 - 8) + 104))(&v52[v53], v54, v55);
  *v52 = v50;
  *(v52 + 1) = v50;
  *&v52[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A9E58, &unk_26A857A00) + 36)] = 256;
  sub_26A505C8C(v49, v51, &qword_2803A9DC8, &qword_26A855B58);
  sub_26A4D5D20();
  sub_26A8508B8();
  return sub_26A4D6FD8();
}

uint64_t sub_26A614618@<X0>(uint64_t a1@<X8>)
{
  v2 = [objc_opt_self() currentTraitCollection];
  v3 = [v2 userInterfaceStyle];

  v4 = sub_26A84EE68();
  v5 = *(*(v4 - 8) + 104);
  v6 = MEMORY[0x277CDF3C0];
  if (v3 != 2)
  {
    v6 = MEMORY[0x277CDF3D0];
  }

  v7 = *v6;

  return v5(a1, v7, v4);
}

uint64_t sub_26A6146D8(uint64_t a1)
{
  v1[2] = a1;
  sub_26A851BD8();
  v1[3] = sub_26A851BC8();
  v1[4] = sub_26A851B78();
  v1[5] = v2;

  return MEMORY[0x2822009F8](sub_26A614770);
}

uint64_t sub_26A614770()
{
  OUTLINED_FUNCTION_1_10();
  type metadata accessor for MapView(0);
  v1 = swift_task_alloc();
  *(v0 + 48) = v1;
  *v1 = v0;
  v1[1] = sub_26A614810;

  return sub_26A808228();
}

uint64_t sub_26A614810()
{
  OUTLINED_FUNCTION_1_10();

  return MEMORY[0x2822009F8](sub_26A61492C);
}

uint64_t sub_26A61492C()
{
  OUTLINED_FUNCTION_1_10();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_26A614988()
{
  type metadata accessor for MapView(0);
  type metadata accessor for MapViewModel(0);
  sub_26A6155D8();
  sub_26A84EB88();
  sub_26A84EBC8();
}

void sub_26A614A54(unint64_t a1)
{
  v3 = sub_26A73670C();
  v4 = sub_26A73670C();
  v5 = __OFADD__(v4, v3);
  v6 = v4 + v3;
  if (v5)
  {
    __break(1u);
    goto LABEL_8;
  }

  sub_26A614DCC(v6, 1);
  v7 = *v1;
  v8 = *v1 & 0xFFFFFFFFFFFFFF8;
  sub_26A615F94(v8 + 8 * *(v8 + 0x10) + 32, (*(v8 + 0x18) >> 1) - *(v8 + 0x10), a1);
  v10 = v9;

  if (v10 < v3)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v10 < 1)
  {
LABEL_6:
    *v1 = v7;
    return;
  }

  v11 = *(v8 + 16);
  v5 = __OFADD__(v11, v10);
  v12 = v11 + v10;
  if (!v5)
  {
    *(v8 + 16) = v12;
    goto LABEL_6;
  }

LABEL_9:
  __break(1u);
}

void sub_26A614B2C(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(void))
{
  v5 = *(a1 + 16);
  v6 = *(*v3 + 16);
  if (__OFADD__(v6, v5))
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_26A614E6C(v6 + v5, 1, a2);
  v8 = *v3;
  if (!*(a1 + 16))
  {

    if (!v5)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  v9 = (*(v8 + 24) >> 1) - *(v8 + 16);
  a3(0);
  if (v9 < v5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  swift_arrayInitWithCopy();

  if (!v5)
  {
LABEL_8:
    *v3 = v8;
    return;
  }

  v10 = *(v8 + 16);
  v11 = __OFADD__(v10, v5);
  v12 = v10 + v5;
  if (!v11)
  {
    *(v8 + 16) = v12;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

void sub_26A614C40(uint64_t a1)
{
  v4 = OUTLINED_FUNCTION_3_43(a1);
  if (v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_26A614E6C(v4, 1, sub_26A7A1C94);
  v6 = *v2;
  if (!*(v1 + 16))
  {

    if (!v3)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  OUTLINED_FUNCTION_8_36();
  if (v8 != v5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  memcpy((v6 + 8 * v7 + 32), (v1 + 32), 8 * v3);

  if (!v3)
  {
LABEL_8:
    *v2 = v6;
    return;
  }

  v9 = *(v6 + 16);
  v5 = __OFADD__(v9, v3);
  v10 = v9 + v3;
  if (!v5)
  {
    *(v6 + 16) = v10;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

void sub_26A614CF0(uint64_t a1)
{
  v4 = OUTLINED_FUNCTION_3_43(a1);
  if (v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_26A614E6C(v4, 1, sub_26A7A12C4);
  v6 = *v2;
  if (!*(v1 + 16))
  {

    if (!v3)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  OUTLINED_FUNCTION_8_36();
  if (v8 != v5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  memcpy((v6 + 32 * v7 + 32), (v1 + 32), 32 * v3);

  if (!v3)
  {
LABEL_8:
    *v2 = v6;
    return;
  }

  v9 = *(v6 + 16);
  v5 = __OFADD__(v9, v3);
  v10 = v9 + v3;
  if (!v5)
  {
    *(v6 + 16) = v10;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

uint64_t sub_26A614DCC(uint64_t a1, char a2)
{
  v4 = *v2;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v2 = v4;
  if (result)
  {
    if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
    {
      if (a1 <= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }
  }

  else if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
  {
    goto LABEL_9;
  }

  sub_26A852168();
LABEL_9:
  result = sub_26A852288();
  *v2 = result;
  return result;
}

uint64_t sub_26A614E6C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v6 = *v3;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v3 = v6;
  if (!result || a1 > *(v6 + 24) >> 1)
  {
    result = a3();
    *v3 = result;
  }

  return result;
}

uint64_t type metadata accessor for MapView(uint64_t a1)
{
  result = qword_2803B0CA0;
  if (!qword_2803B0CA0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26A614F78(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MapView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26A614FDC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MapView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_26A615040()
{
  v0 = type metadata accessor for MapView(0);
  OUTLINED_FUNCTION_79(v0);

  return sub_26A614988();
}

unint64_t sub_26A6150B0()
{
  result = qword_2803B0C98;
  if (!qword_2803B0C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B0C98);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for MapAspectRatio(_BYTE *result, unsigned int a2, unsigned int a3)
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

void sub_26A615224(uint64_t a1)
{
  sub_26A615430(319, &qword_2803A9218, type metadata accessor for VRXIdiom, MEMORY[0x277CDF468]);
  if (v1 <= 0x3F)
  {
    sub_26A615430(319, &qword_2803A9230, MEMORY[0x277CDFA28], MEMORY[0x277CDF468]);
    if (v2 <= 0x3F)
    {
      sub_26A4EEA20();
      if (v3 <= 0x3F)
      {
        sub_26A615494(319);
        if (v4 <= 0x3F)
        {
          sub_26A615528(319, &qword_2803B0CB8, &qword_2803B0CC0, 0x277D4C018);
          if (v5 <= 0x3F)
          {
            sub_26A615528(319, &qword_2803B0CC8, &qword_2803B0CD0, 0x277D4C008);
            if (v6 <= 0x3F)
            {
              sub_26A615430(319, &qword_2803B0CD8, type metadata accessor for CLLocationCoordinate2D, MEMORY[0x277D83940]);
              if (v7 <= 0x3F)
              {
                sub_26A615580();
                if (v8 <= 0x3F)
                {
                  sub_26A4D27F4(319);
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

void sub_26A615430(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_26A615494(uint64_t a1)
{
  if (!qword_2803B0CB0)
  {
    type metadata accessor for MapViewModel(255);
    sub_26A6155D8();
    v1 = sub_26A84F288();
    if (!v2)
    {
      atomic_store(v1, &qword_2803B0CB0);
    }
  }
}

void sub_26A615528(uint64_t a1, unint64_t *a2, unint64_t *a3, void *a4)
{
  if (!*a2)
  {
    sub_26A4EC5B0(255, a3, a4);
    v5 = sub_26A851B48();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_26A615580()
{
  if (!qword_2803B0CE0)
  {
    v0 = sub_26A851D48();
    if (!v1)
    {
      atomic_store(v0, &qword_2803B0CE0);
    }
  }
}

unint64_t sub_26A6155D8()
{
  OUTLINED_FUNCTION_196();
  result = *v2;
  if (!result)
  {
    v1(255);
    result = swift_getWitnessTable();
    atomic_store(result, v0);
  }

  return result;
}

uint64_t sub_26A61561C()
{
  OUTLINED_FUNCTION_1_10();
  v2 = type metadata accessor for MapView(0);
  OUTLINED_FUNCTION_79(v2);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_26A6156E0;

  return sub_26A6146D8(v0 + v4);
}

uint64_t sub_26A6156E0()
{
  OUTLINED_FUNCTION_1_10();
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t objectdestroyTm_14()
{
  v1 = type metadata accessor for MapView(0);
  v2 = v0 + ((*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80));
  sub_26A49035C(*v2, *(v2 + 8));
  v3 = v1[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91A8, &qword_26A857040);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_26A84F3A8();
    OUTLINED_FUNCTION_46();
    (*(v4 + 8))(v2 + v3);
  }

  else
  {
  }

  sub_26A49035C(*(v2 + v1[6]), *(v2 + v1[6] + 8));

  v5 = (v2 + v1[15]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A9190, &unk_26A854C50);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
LABEL_9:

    goto LABEL_10;
  }

  v6 = type metadata accessor for ActionType(0);
  if (__swift_getEnumTagSinglePayload(v5, 1, v6))
  {
    goto LABEL_10;
  }

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 2)
  {
  }

  else
  {
    if (EnumCaseMultiPayload != 1)
    {
      if (EnumCaseMultiPayload)
      {
        goto LABEL_10;
      }

      goto LABEL_9;
    }

    sub_26A84BAB8();
    OUTLINED_FUNCTION_46();
    (*(v9 + 8))(v5);
  }

LABEL_10:

  return swift_deallocObject();
}

uint64_t sub_26A615A08@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v7 = type metadata accessor for MapView(0);
  OUTLINED_FUNCTION_79(v7);
  v9 = v3 + ((*(v8 + 80) + 16) & ~*(v8 + 80));

  return sub_26A611DA4(a1, a2, v9, a3);
}

unint64_t sub_26A615ABC()
{
  result = qword_2803B0D50;
  if (!qword_2803B0D50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B0D40, &qword_26A86A7C0);
    sub_26A615B40();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B0D50);
  }

  return result;
}

unint64_t sub_26A615B40()
{
  result = qword_2803B0D58;
  if (!qword_2803B0D58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B0D60, &qword_26A86A7C8);
    sub_26A4D7DCC();
    sub_26A4D7DCC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B0D58);
  }

  return result;
}

unint64_t sub_26A615C24()
{
  result = qword_2803B0DA0;
  if (!qword_2803B0DA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B0D90, &qword_26A86A7E8);
    sub_26A4D7DCC();
    sub_26A4D7DCC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B0DA0);
  }

  return result;
}

unint64_t sub_26A615D04()
{
  result = qword_2803B0DC8;
  if (!qword_2803B0DC8)
  {
    sub_26A4EC5B0(255, &qword_2803B0CC0, 0x277D4C018);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B0DC8);
  }

  return result;
}

unint64_t sub_26A615D78()
{
  result = qword_28157D8D8;
  if (!qword_28157D8D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803ABFB8, &qword_26A85A410);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28157D8D8);
  }

  return result;
}

unint64_t sub_26A615DF4()
{
  result = qword_2803B0DE8;
  if (!qword_2803B0DE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B0DD8, &qword_26A86A850);
    sub_26A4D7DCC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B0DE8);
  }

  return result;
}

uint64_t sub_26A615EAC@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 16))();
  *a1 = result;
  return result;
}

unint64_t sub_26A615EDC()
{
  result = qword_2803B0E10;
  if (!qword_2803B0E10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B0E08, &qword_26A86A868);
    sub_26A4D7DCC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B0E10);
  }

  return result;
}

uint64_t sub_26A615F94(uint64_t result, uint64_t a2, unint64_t a3)
{
  v5 = result;
  v6 = a3 >> 62;
  if (a3 >> 62)
  {
    result = sub_26A852168();
    v7 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v7 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return a3;
    }
  }

  if (v5)
  {
    result = sub_26A73670C();
    if (result > a2)
    {
      __break(1u);
    }

    else
    {
      if (!v6)
      {
        sub_26A4EC5B0(0, &qword_2803B0EA0, 0x277CD4E98);
        swift_arrayInitWithCopy();
        return a3;
      }

      if (v7 >= 1)
      {
        sub_26A4D7DCC();
        for (i = 0; i != v7; ++i)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B0EA8, &unk_26A86A8E0);
          v9 = sub_26A80A638(v12, i, a3);
          v11 = *v10;
          (v9)(v12, 0);
          *(v5 + 8 * i) = v11;
        }

        return a3;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

double HorizontalListStandard.Item.defaultHeight.getter()
{
  v0 = sub_26A84DDE8();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26A84D398();
  v4 = (*(v1 + 88))(v3, v0);
  v5 = 0.0;
  if (v4 != *MEMORY[0x277D63628])
  {
    if (v4 == *MEMORY[0x277D63630])
    {
      return 180.66667;
    }

    else if (v4 == *MEMORY[0x277D63618])
    {
      return 102.0;
    }

    else if (v4 == *MEMORY[0x277D63620])
    {
      return 150.333;
    }

    else
    {
      (*(v1 + 8))(v3, v0);
    }
  }

  return v5;
}

BOOL sub_26A616310()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AAD50, &unk_26A857890);
  *&v2 = MEMORY[0x28223BE20](v1 - 8).n128_u64[0];
  v4 = &v9 - v3;
  v5 = [v0 thumbnail];
  if (v5)
  {
    RFVisualProperty.asVisualProperty()();

    v6 = sub_26A84BD28();
    v7 = 0;
  }

  else
  {
    v6 = sub_26A84BD28();
    v7 = 1;
  }

  __swift_storeEnumTagSinglePayload(v4, v7, 1, v6);
  sub_26A4E2544(v4, &qword_2803AAD50, &unk_26A857890);
  return v5 != 0;
}

id sub_26A6163F8@<X0>(char *a1@<X8>)
{
  v3 = v1;
  v5 = [v1 number];
  if (!v5)
  {
    goto LABEL_6;
  }

  v6 = v5;
  v7 = [v1 text_1];
  if (!v7)
  {

LABEL_6:
    sub_26A4E353C();
    swift_allocError();
    *v11 = v1;
    *(v11 + 8) = &unk_287B13858;
    *(v11 + 16) = 0;
    swift_willThrow();
    return v1;
  }

  v8 = v7;
  v85 = v2;
  v83[3] = &type metadata for PartialText;
  v83[4] = &protocol witness table for PartialText;
  OUTLINED_FUNCTION_1_9();
  v83[0] = swift_allocObject();
  RFTextProperty.asPartialText()(v83[0] + 16);
  v82[3] = &type metadata for PartialText;
  v82[4] = &protocol witness table for PartialText;
  OUTLINED_FUNCTION_1_9();
  v82[0] = swift_allocObject();
  RFTextProperty.asPartialText()(v82[0] + 16);
  v9 = sub_26A54AB40(v1, &selRef_text_2);
  if (v9)
  {
    v10 = v9;
    *(&v80 + 1) = &type metadata for PartialText;
    v81 = &protocol witness table for PartialText;
    OUTLINED_FUNCTION_1_9();
    *&v79 = swift_allocObject();
    sub_26A735084(v10, v79 + 16);
  }

  else
  {
    v81 = 0;
    v79 = 0u;
    v80 = 0u;
  }

  v13 = sub_26A54AB40(v3, &selRef_text_3);
  if (v13)
  {
    v14 = v13;
    *(&v77 + 1) = &type metadata for PartialText;
    v78 = &protocol witness table for PartialText;
    OUTLINED_FUNCTION_1_9();
    *&v76 = swift_allocObject();
    sub_26A735084(v14, v76 + 16);
  }

  else
  {
    v78 = 0;
    v76 = 0u;
    v77 = 0u;
  }

  v15 = [v3 text_4];
  if (v15)
  {
    v16 = v15;
    *(&v74 + 1) = &type metadata for PartialText;
    v75 = &protocol witness table for PartialText;
    OUTLINED_FUNCTION_1_9();
    *&v73 = swift_allocObject();
    RFTextProperty.asPartialText()(v73 + 16);
  }

  else
  {
    v75 = 0;
    v73 = 0u;
    v74 = 0u;
  }

  v17 = [v3 unit];
  if (v17)
  {
    v18 = v17;
    *(&v71 + 1) = &type metadata for PartialText;
    v72 = &protocol witness table for PartialText;
    OUTLINED_FUNCTION_1_9();
    *&v70 = swift_allocObject();
    RFTextProperty.asPartialText()(v70 + 16);
  }

  else
  {
    v72 = 0;
    v70 = 0u;
    v71 = 0u;
  }

  v19 = [v3 thumbnail];
  if (v19)
  {
    v20 = v19;
    *(&v68 + 1) = sub_26A84BD28();
    v69 = &protocol witness table for VisualProperty;
    __swift_allocate_boxed_opaque_existential_1(&v67);
    RFVisualProperty.asVisualProperty()();
  }

  else
  {
    v69 = 0;
    v67 = 0u;
    v68 = 0u;
  }

  v53 = v8;
  if (qword_2803A8A80 != -1)
  {
    swift_once();
  }

  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB6F0, &qword_26A86A0B0);
  v22 = __swift_project_value_buffer(v21, qword_2803D1A70);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB6F8, &qword_26A858D30);
  v24 = &a1[*(v23 + 32)];
  sub_26A4EA070(v22, v24, &qword_2803AB6F0, &qword_26A86A0B0);
  sub_26A6AEE74(__src);
  memcpy(a1, __src, 0xBFuLL);
  sub_26A60E54C(&v24[*(v21 + 36)], &a1[*(v23 + 28)]);
  v25 = type metadata accessor for FactItemShortNumberView(0);
  v26 = &a1[v25[5]];
  if (qword_28157E660 != -1)
  {
    swift_once();
  }

  v61[0] = xmmword_281588758;
  v61[1] = unk_281588768;
  v61[2] = xmmword_281588778;
  v61[3] = xmmword_281588788;
  v62 = xmmword_281588758;
  v63 = unk_281588768;
  v64 = xmmword_281588778;
  v65 = xmmword_281588788;
  v51 = xmmword_281588788;
  v52 = xmmword_281588778;
  sub_26A4EA070(v61, __dst, &qword_2803A91B0, &unk_26A854CA0);
  sub_26A6AEE74(v66);
  memcpy(v26, v66, 0xC0uLL);
  *(v26 + 12) = v52;
  *(v26 + 13) = v51;
  v27 = v63;
  *(v26 + 14) = v62;
  *(v26 + 15) = v27;
  v28 = v65;
  *(v26 + 16) = v64;
  *(v26 + 17) = v28;
  v29 = &a1[v25[6]];
  *v29 = swift_getKeyPath();
  v29[8] = 0;
  v30 = &a1[v25[7]];
  *v30 = swift_getKeyPath();
  v30[8] = 0;
  v31 = v25[8];
  *&a1[v31] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A9190, &unk_26A854C50);
  swift_storeEnumTagMultiPayload();
  v32 = v25[9];
  *&a1[v32] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91A8, &qword_26A857040);
  swift_storeEnumTagMultiPayload();
  v33 = &a1[v25[17]];
  LOBYTE(v58[0]) = 0;
  sub_26A851048();
  v34 = *(&__dst[0] + 1);
  *v33 = __dst[0];
  *(v33 + 1) = v34;
  sub_26A50429C(v83, __dst);
  OUTLINED_FUNCTION_80();
  v35 = swift_allocObject();
  sub_26A4C2314(__dst, v35 + 16);
  v36 = &a1[v25[10]];
  *v36 = sub_26A616E08;
  *(v36 + 1) = v35;
  sub_26A50429C(v82, __dst);
  OUTLINED_FUNCTION_80();
  v37 = swift_allocObject();
  sub_26A4C2314(__dst, v37 + 16);
  v38 = &a1[v25[11]];
  *v38 = sub_26A616E08;
  *(v38 + 1) = v37;
  sub_26A4EA070(&v79, __dst, &qword_2803AB700, &unk_26A86AA40);
  OUTLINED_FUNCTION_80();
  v39 = swift_allocObject();
  v40 = __dst[1];
  *(v39 + 16) = __dst[0];
  *(v39 + 32) = v40;
  *(v39 + 48) = *&__dst[2];
  v41 = &a1[v25[12]];
  *v41 = sub_26A616E10;
  *(v41 + 1) = v39;
  sub_26A4EA070(&v76, v59, &qword_2803AB700, &unk_26A86AA40);
  if (v59[3])
  {
    OUTLINED_FUNCTION_3_44(v59);
    v42 = OUTLINED_FUNCTION_0_45();
    v43(v42);
    nullsub_1();
    __swift_destroy_boxed_opaque_existential_1(v59);
    memcpy(__dst, v58, 0xFAuLL);
  }

  else
  {
    sub_26A4E2544(v59, &qword_2803AB700, &unk_26A86AA40);
    sub_26A504324(__dst);
  }

  memcpy(&a1[v25[13]], __dst, 0xFAuLL);
  sub_26A4EA070(&v73, v57, &qword_2803AB700, &unk_26A86AA40);
  if (v57[3])
  {
    OUTLINED_FUNCTION_3_44(v57);
    v44 = OUTLINED_FUNCTION_0_45();
    v45(v44);
    nullsub_1();
    __swift_destroy_boxed_opaque_existential_1(v57);
    memcpy(v58, v56, 0xFAuLL);
  }

  else
  {
    sub_26A4E2544(v57, &qword_2803AB700, &unk_26A86AA40);
    sub_26A504324(v58);
  }

  memcpy(&a1[v25[14]], v58, 0xFAuLL);
  sub_26A4EA070(&v70, v55, &qword_2803AB700, &unk_26A86AA40);
  if (v55[3])
  {
    OUTLINED_FUNCTION_3_44(v55);
    v46 = OUTLINED_FUNCTION_0_45();
    v47(v46);
    nullsub_1();
    __swift_destroy_boxed_opaque_existential_1(v55);
    memcpy(v56, v54, 0xFAuLL);
  }

  else
  {
    sub_26A4E2544(v55, &qword_2803AB700, &unk_26A86AA40);
    sub_26A504324(v56);
  }

  memcpy(&a1[v25[15]], v56, 0xFAuLL);
  sub_26A4EA070(&v67, v54, &qword_2803A91B8, &qword_26A8575C0);
  if (v54[3])
  {
    __swift_project_boxed_opaque_existential_1(v54, v54[3]);
    v48 = OUTLINED_FUNCTION_0_45();
    v50 = v49(v48);

    sub_26A4E2544(&v67, &qword_2803A91B8, &qword_26A8575C0);
    OUTLINED_FUNCTION_3_7(&v70);
    OUTLINED_FUNCTION_3_7(&v73);
    OUTLINED_FUNCTION_3_7(&v76);
    OUTLINED_FUNCTION_3_7(&v79);
    __swift_destroy_boxed_opaque_existential_1(v82);
    __swift_destroy_boxed_opaque_existential_1(v83);
    result = __swift_destroy_boxed_opaque_existential_1(v54);
  }

  else
  {

    sub_26A4E2544(&v67, &qword_2803A91B8, &qword_26A8575C0);
    OUTLINED_FUNCTION_4_40(&v70);
    OUTLINED_FUNCTION_4_40(&v73);
    OUTLINED_FUNCTION_4_40(&v76);
    OUTLINED_FUNCTION_4_40(&v79);
    __swift_destroy_boxed_opaque_existential_1(v82);
    __swift_destroy_boxed_opaque_existential_1(v83);
    result = sub_26A4E2544(v54, &qword_2803A91B8, &qword_26A8575C0);
    v50 = 0;
  }

  *&a1[v25[16]] = v50;
  return result;
}

unint64_t sub_26A616DB0()
{
  result = qword_2803B0EC0;
  if (!qword_2803B0EC0)
  {
    type metadata accessor for FactItemShortNumberView(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B0EC0);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_4_40(uint64_t a1)
{

  return sub_26A4E2544(a1, v1, v2);
}

uint64_t sub_26A616E60()
{
  v1 = sub_26A84F988();
  OUTLINED_FUNCTION_15();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_41();
  v7 = v6 - v5;
  v8 = *v0;
  if ((*(v0 + 8) & 1) == 0)
  {

    sub_26A851EA8();
    v9 = sub_26A8501F8();
    sub_26A84EA78();

    sub_26A84F978();
    swift_getAtKeyPath();
    sub_26A49035C(v8, 0);
    (*(v3 + 8))(v7, v1);
    return v11;
  }

  return v8;
}

uint64_t ButtonView.init(model:willPerformAction:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *a4 = swift_getKeyPath();
  *(a4 + 8) = 0;
  v8 = type metadata accessor for ButtonView(0);
  v9 = *(v8 + 20);
  sub_26A84E158();
  OUTLINED_FUNCTION_46();
  result = (*(v10 + 32))(a4 + v9, a1);
  v12 = (a4 + *(v8 + 24));
  *v12 = a2;
  v12[1] = a3;
  return result;
}

uint64_t ButtonView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v65 = a1;
  *&v64 = sub_26A84B058();
  OUTLINED_FUNCTION_15();
  *&v63 = v2;
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_41();
  v62 = v5 - v4;
  v6 = type metadata accessor for ButtonLayout(0);
  OUTLINED_FUNCTION_46();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_41();
  v10 = v9 - v8;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AA960, &qword_26A856A38);
  v12 = v11 - 8;
  MEMORY[0x28223BE20](v11);
  v61 = &v59 - v13;
  v14 = type metadata accessor for ButtonView(0);
  v15 = *(v14 + 20);
  sub_26A84E158();
  OUTLINED_FUNCTION_46();
  v17 = *(v16 + 16);
  v60 = v1;
  v17(v10, v1 + v15);
  v18 = (v1 + *(v14 + 24));
  v19 = *v18;
  v20 = v18[1];
  v21 = v10 + v6[6];
  *v21 = swift_getKeyPath();
  *(v21 + 8) = 0;
  *(v21 + 16) = 0;
  *(v21 + 24) = swift_getKeyPath();
  *(v21 + 32) = 0;
  v22 = type metadata accessor for ActionHandler(0);
  v23 = v22[6];
  *(v21 + v23) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A93D0, &qword_26A856F10);
  swift_storeEnumTagMultiPayload();
  v24 = v21 + v22[7];
  *v24 = swift_getKeyPath();
  *(v24 + 8) = 0;
  *(v24 + 16) = 0;
  v25 = v21 + v22[8];
  *v25 = swift_getKeyPath();
  *(v25 + 8) = 0;
  v26 = v21 + v22[9];
  *v26 = swift_getKeyPath();
  *(v26 + 8) = 0;
  v27 = v21 + v22[10];
  *v27 = swift_getKeyPath();
  *(v27 + 9) = 0;
  swift_unknownObjectWeakInit();
  v28 = v22[11];
  v29 = type metadata accessor for StandardActionHandler(0);
  __swift_storeEnumTagSinglePayload(v21 + v28, 1, 1, v29);
  sub_26A4C2304(v19, v20);
  sub_26A5B7218(v21 + v28);
  v30 = v21 + v28;
  v31 = v61;
  __swift_storeEnumTagSinglePayload(v30, 1, 1, v29);
  v32 = v10 + v6[7];
  *v32 = sub_26A626198;
  *(v32 + 8) = 0;
  *(v32 + 16) = 0;
  v33 = (v10 + v6[5]);
  *v33 = v19;
  v33[1] = v20;
  sub_26A618934();
  sub_26A850AF8();
  sub_26A619278();
  v34 = &v31[*(v12 + 44)];
  v35 = type metadata accessor for ButtonStyleSelectorModifier(0);
  sub_26A84E0A8();
  v36 = sub_26A616E60();
  v37 = v62;
  VRXIdiom.idiom.getter(v36, v62);
  v38 = sub_26A84E0D8();
  (*(v63 + 8))(v37, v64);
  *v34 = swift_getKeyPath();
  v34[8] = 0;
  *(v34 + 2) = swift_getKeyPath();
  *(v34 + 12) = 0;
  *(v34 + 4) = swift_getKeyPath();
  v34[40] = 0;
  if (qword_2803A8AE8 != -1)
  {
    swift_once();
  }

  memcpy(v69, qword_2803D1B00, sizeof(v69));
  memcpy(v34 + 416, qword_2803D1B00, 0xD0uLL);
  sub_26A51D0F8(v69, v66, &qword_2803ACEF8, &unk_26A85CC30);
  sub_26A6AEE74(v67);
  memcpy(v34 + 48, v67, 0xBFuLL);
  memcpy(v70, v34 + 448, sizeof(v70));
  memcpy(v34 + 240, v34 + 448, 0xB0uLL);
  sub_26A54DFFC(v70, v66);
  if (qword_2803A8D08 != -1)
  {
    swift_once();
  }

  v39 = *(&xmmword_2803D2028 + 1);
  v40 = qword_2803D2038;
  v41 = unk_2803D2040;
  v42 = qword_2803D2048;
  *(v34 + 103) = xmmword_2803D2028;
  *(v34 + 104) = v39;
  *(v34 + 105) = v40;
  *(v34 + 106) = v41;
  *(v34 + 107) = v42;

  sub_26A6AEE74(v68);
  memcpy(v34 + 624, v68, 0xBFuLL);
  *(v34 + 102) = v42;
  if (qword_28157E660 != -1)
  {
    swift_once();
  }

  v43 = unk_281588768;
  v71[0] = xmmword_281588758;
  v71[1] = unk_281588768;
  v44 = xmmword_281588778;
  v45 = xmmword_281588788;
  v72 = xmmword_281588778;
  v73 = xmmword_281588788;
  *(v34 + 68) = xmmword_281588758;
  *(v34 + 69) = v43;
  *(v34 + 70) = v44;
  *(v34 + 71) = v45;
  v63 = v73;
  v64 = v72;
  sub_26A51D0F8(v71, v66, &qword_2803A91B0, &unk_26A854CA0);
  sub_26A6AEE74(v66);
  memcpy(v34 + 864, v66, 0xBFuLL);
  v46 = v64;
  *(v34 + 67) = v63;
  *(v34 + 66) = v46;
  v34[1152] = 0;
  v34[*(v35 + 48)] = (v38 & 1) == 0;
  v47 = sub_26A84E0E8();
  v48 = v65;
  sub_26A4DEB40(v47, v49);

  sub_26A4A2D28();
  sub_26A84E0F8();

  v50 = swift_allocObject();
  *(v50 + 16) = sub_26A68D064;
  *(v50 + 24) = 0;
  v51 = v48 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B0EC8, &unk_26A86ABD0) + 36);
  *(v51 + 16) = swift_getKeyPath();
  *(v51 + 24) = 0;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91D8, &qword_26A8575D0);
  v53 = *(v52 + 40);
  *(v51 + v53) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A9190, &unk_26A854C50);
  swift_storeEnumTagMultiPayload();
  v54 = v51 + *(v52 + 44);
  *v54 = swift_getKeyPath();
  *(v54 + 8) = 0;
  *v51 = sub_26A4D1F7C;
  *(v51 + 8) = v50;
  *(v48 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B0ED0, &qword_26A86AC10) + 36)) = 23;
  KeyPath = swift_getKeyPath();
  v56 = swift_getKeyPath();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B0ED8, &qword_26A86AC68);
  v58 = v48 + *(result + 36);
  *v58 = KeyPath;
  *(v58 + 8) = 0;
  *(v58 + 16) = v56;
  *(v58 + 24) = 256;
  return result;
}

uint64_t sub_26A6177E4()
{
  v1 = sub_26A84F988();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  if ((*(v0 + 8) & 1) == 0)
  {

    sub_26A851EA8();
    v6 = sub_26A8501F8();
    sub_26A84EA78();

    sub_26A84F978();
    swift_getAtKeyPath();
    sub_26A49035C(v5, 0);
    (*(v2 + 8))(v4, v1);
    return v8[1];
  }

  return v5;
}

double sub_26A617928@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for ButtonStyleSelectorModifier(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v2 + 1152) & 1) == 0)
  {
    v9 = sub_26A6177E4();
    sub_26A61B05C(v9, &unk_287B13068);
  }

  v10 = sub_26A617B98(a1);
  sub_26A619140(v2, &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v12 = swift_allocObject();
  sub_26A6191A4(v8, v12 + v11);
  sub_26A579F50(sub_26A619208, v12, v10, __src);

  v13 = sub_26A850278();
  sub_26A84ED48();
  v40 = v14;
  v39 = v15;
  v38 = v16;
  v37 = v17;
  v41 = 0;
  LOBYTE(v10) = sub_26A850298();
  sub_26A84ED48();
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v42 = 0;
  LOBYTE(v12) = sub_26A850268();
  sub_26A618244();
  sub_26A84ED48();
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v33 = v32;
  memcpy(a2, __src, 0xA8uLL);
  *(a2 + 168) = v13;
  v34 = v39;
  *(a2 + 176) = v40;
  *(a2 + 184) = v34;
  result = v37;
  *(a2 + 192) = v38;
  *(a2 + 200) = result;
  *(a2 + 208) = 0;
  *(a2 + 216) = v10;
  *(a2 + 224) = v19;
  *(a2 + 232) = v21;
  *(a2 + 240) = v23;
  *(a2 + 248) = v25;
  *(a2 + 256) = 0;
  *(a2 + 264) = v12;
  *(a2 + 272) = v27;
  *(a2 + 280) = v29;
  *(a2 + 288) = v31;
  *(a2 + 296) = v33;
  *(a2 + 304) = 0;
  return result;
}

uint64_t sub_26A617B98(uint64_t a1)
{
  v32 = a1;
  v2 = type metadata accessor for StandardSiriButtonStyle(0);
  MEMORY[0x28223BE20](v2);
  v4 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B0F40, &qword_26A86AD70);
  MEMORY[0x28223BE20](v31);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B0F48, &qword_26A86AD78);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v30 - v7;
  v9 = sub_26A84AD78();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_26A6177E4();
  if (sub_26A61B05C(v13, &unk_287B13B08) && (v14 = sub_26A6177E4(), !sub_26A61B05C(v14, &unk_287B13068)))
  {
    v33 = sub_26A618480();
  }

  else
  {
    v15 = sub_26A6177E4();
    if (sub_26A61B05C(v15, &unk_287B133E0))
    {
      v16 = sub_26A618480();
      type metadata accessor for ButtonStyleSelectorModifier(0);
      v17 = *(v10 + 104);
      v17(v12, *MEMORY[0x277D62858], v9);
      v18 = sub_26A84AD68();
      v19 = *(v10 + 8);
      v19(v12, v9);
      if ((v18 & 1) == 0)
      {
        v17(v12, *MEMORY[0x277D62848], v9);
        sub_26A84AD68();
        v19(v12, v9);
      }

      v33 = v16;
    }

    else
    {
      v20 = sub_26A6177E4();
      if (sub_26A61B05C(v20, &unk_287B131A0))
      {
        (*(v6 + 16))(v8, v32, v5);
        sub_26A4D7DCC();
      }

      else
      {
        v21 = *(v1 + *(type metadata accessor for ButtonStyleSelectorModifier(0) + 48));
        *(v4 + 1) = swift_getKeyPath();
        v4[16] = 0;
        *(v4 + 3) = swift_getKeyPath();
        v4[32] = 0;
        *(v4 + 5) = swift_getKeyPath();
        v4[48] = 0;
        v22 = v2[9];
        *&v4[v22] = swift_getKeyPath();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB430, &qword_26A85B010);
        swift_storeEnumTagMultiPayload();
        v23 = &v4[v2[10]];
        *v23 = swift_getKeyPath();
        v23[8] = 0;
        v24 = &v4[v2[11]];
        v37 = 0;
        sub_26A851048();
        v25 = v34;
        *v24 = v33;
        *(v24 + 1) = v25;
        v26 = &v4[v2[12]];
        v4[1] = v21;
        *v4 = 1;
        v27 = sub_26A4D7DCC();
        v28 = sub_26A618934();
        *v26 = 0;
        *(v26 + 1) = 0;
        sub_26A850988();
        sub_26A619278();
        v33 = v5;
        v34 = v2;
        v35 = v27;
        v36 = v28;
        swift_getOpaqueTypeConformance2();
      }
    }
  }

  return sub_26A851248();
}

uint64_t sub_26A6180C4(unsigned __int8 *a1, uint64_t a2)
{
  v4 = sub_26A84F988();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a1;
  v10 = *(a2 + 32);
  if (v9 != 74)
  {
    v11 = *(a2 + 344);
    if (*(a2 + 40))
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v11 = *(a2 + 328);
  if ((*(a2 + 40) & 1) == 0)
  {
LABEL_3:

    sub_26A851EA8();
    v12 = sub_26A8501F8();
    sub_26A84EA78();

    sub_26A84F978();
    swift_getAtKeyPath();
    sub_26A49035C(v10, 0);
    (*(v5 + 8))(v8, v4);
    v10 = v14[1];
  }

LABEL_4:
  v11(v10, v6);
  return 1;
}

double sub_26A618244()
{
  v1 = v0;
  v2 = sub_26A84F988();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v0 + 16);
  v8 = *(v1 + 24);
  if (*(v1 + 25) == 1)
  {
    v16 = v7;
    v17 = v8 & 1;
  }

  else
  {

    sub_26A851EA8();
    v9 = sub_26A8501F8();
    sub_26A84EA78();

    sub_26A84F978();
    swift_getAtKeyPath();
    sub_26A4F5724(v7, v8, 0);
    (*(v3 + 8))(v6, v2);
    LOBYTE(v8) = v17;
    v7 = v16;
  }

  v4.n128_u64[0] = 0;
  if ((v8 & 1) != 0 && v7)
  {
    v10 = *(v1 + 328);
    v11 = *(v1 + 32);
    if ((*(v1 + 40) & 1) == 0)
    {

      sub_26A851EA8();
      v12 = sub_26A8501F8();
      sub_26A84EA78();

      sub_26A84F978();
      swift_getAtKeyPath();
      sub_26A49035C(v11, 0);
      (*(v3 + 8))(v6, v2);
      v11 = v15[1];
    }

    v10(v11, v4);
    v4.n128_f64[0] = v13 - *(v1 + 816);
    if (v4.n128_f64[0] <= 0.0)
    {
      v4.n128_f64[0] = 0.0;
    }
  }

  return v4.n128_f64[0];
}

uint64_t sub_26A618480()
{
  v1 = type metadata accessor for ButtonItemButtonStyle(0);
  MEMORY[0x28223BE20](v1);
  v3 = v20 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B0F58, &qword_26A86AE40);
  MEMORY[0x28223BE20](v4);
  v5 = sub_26A84AD78();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for ButtonStyleSelectorModifier(0);
  (*(v6 + 16))(v8, v0 + *(v9 + 44), v5);
  v10 = (*(v6 + 88))(v8, v5);
  if (v10 == *MEMORY[0x277D62850])
  {
    static ButtonStyle<>.buttonItemStandard.getter(v3);
  }

  else if (v10 == *MEMORY[0x277D62858])
  {
    static ButtonStyle<>.buttonItemPreferred.getter(v3);
  }

  else
  {
    if (v10 != *MEMORY[0x277D62848])
    {
      static ButtonStyle<>.buttonItemStandard.getter(v3);
      v20[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B0F48, &qword_26A86AD78);
      v16 = sub_26A4D7DCC();
      v20[1] = v4;
      v17 = v16;
      v18 = sub_26A618934();
      v19 = v20[0];
      sub_26A850988();
      sub_26A619278();
      v21 = v19;
      v22 = v1;
      v23 = v17;
      v24 = v18;
      swift_getOpaqueTypeConformance2();
      v14 = sub_26A851248();
      (*(v6 + 8))(v8, v5);
      return v14;
    }

    static ButtonStyle<>.buttonItemPreferredAndDestructive.getter(v3);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B0F48, &qword_26A86AD78);
  v12 = sub_26A4D7DCC();
  v13 = sub_26A618934();
  sub_26A850988();
  sub_26A619278();
  v21 = v11;
  v22 = v1;
  v23 = v12;
  v24 = v13;
  swift_getOpaqueTypeConformance2();
  return sub_26A851248();
}

unint64_t sub_26A618934()
{
  OUTLINED_FUNCTION_196();
  result = *v2;
  if (!result)
  {
    v1(255);
    result = swift_getWitnessTable();
    atomic_store(result, v0);
  }

  return result;
}

unint64_t sub_26A618978(uint64_t a1)
{
  result = sub_26A618934();
  *(a1 + 8) = result;
  return result;
}

void sub_26A6189F8(uint64_t a1)
{
  sub_26A606D60(319, &qword_2803A9218, type metadata accessor for VRXIdiom);
  if (v1 <= 0x3F)
  {
    sub_26A84E158();
    if (v2 <= 0x3F)
    {
      sub_26A586908(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_26A618AB0()
{
  result = qword_2803B0EF8;
  if (!qword_2803B0EF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B0ED8, &qword_26A86AC68);
    sub_26A618B3C();
    sub_26A4D38BC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B0EF8);
  }

  return result;
}

unint64_t sub_26A618B3C()
{
  result = qword_2803B0F00;
  if (!qword_2803B0F00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B0ED0, &qword_26A86AC10);
    sub_26A618BC8();
    sub_26A4DBA00();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B0F00);
  }

  return result;
}

unint64_t sub_26A618BC8()
{
  result = qword_2803B0F08;
  if (!qword_2803B0F08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B0EC8, &unk_26A86ABD0);
    sub_26A618C80();
    sub_26A4D7DCC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B0F08);
  }

  return result;
}

unint64_t sub_26A618C80()
{
  result = qword_2803B0F10;
  if (!qword_2803B0F10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AA968, &qword_26A856A40);
    sub_26A618D38();
    sub_26A4D7DCC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B0F10);
  }

  return result;
}

unint64_t sub_26A618D38()
{
  result = qword_2803B0F18;
  if (!qword_2803B0F18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AA958, &qword_26A856A30);
    sub_26A618DC4();
    sub_26A4D31BC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B0F18);
  }

  return result;
}

unint64_t sub_26A618DC4()
{
  result = qword_2803B0F20;
  if (!qword_2803B0F20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AA960, &qword_26A856A38);
    type metadata accessor for ButtonLayout(255);
    sub_26A618934();
    swift_getOpaqueTypeConformance2();
    sub_26A618934();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B0F20);
  }

  return result;
}

void sub_26A618F08(uint64_t a1)
{
  sub_26A606D60(319, &qword_2803A9218, type metadata accessor for VRXIdiom);
  if (v1 <= 0x3F)
  {
    sub_26A6190D4(319, &qword_2803ADCE8, &type metadata for ComponentStackBottomSpacing, MEMORY[0x277CDF468]);
    if (v2 <= 0x3F)
    {
      sub_26A606D60(319, &qword_2803ADCF8, type metadata accessor for VRXVisualResponseLocation);
      if (v3 <= 0x3F)
      {
        sub_26A6190D4(319, &qword_2803ADD00, &type metadata for ButtonViewConstants, type metadata accessor for EnvironmentConstant);
        if (v4 <= 0x3F)
        {
          sub_26A6190D4(319, &qword_2803AD138, MEMORY[0x277D85048], type metadata accessor for EnvironmentConstant);
          if (v5 <= 0x3F)
          {
            sub_26A6190D4(319, &qword_2803A9238, MEMORY[0x277CDF310], type metadata accessor for EnvironmentConstant);
            if (v6 <= 0x3F)
            {
              sub_26A84AD78();
              if (v7 <= 0x3F)
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

void sub_26A6190D4(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_26A619140(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ButtonStyleSelectorModifier(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26A6191A4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ButtonStyleSelectorModifier(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_26A619208(unsigned __int8 *a1)
{
  v3 = *(type metadata accessor for ButtonStyleSelectorModifier(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_26A6180C4(a1, v4);
}

uint64_t sub_26A619278()
{
  OUTLINED_FUNCTION_196();
  v1(0);
  OUTLINED_FUNCTION_46();
  (*(v2 + 8))(v0);
  return v0;
}

uint64_t sub_26A61932C(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
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

unint64_t sub_26A6193B0()
{
  result = qword_2803B0F98;
  if (!qword_2803B0F98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B0FA0, &unk_26A86AE60);
    sub_26A4D6BF8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B0F98);
  }

  return result;
}

uint64_t sub_26A61943C()
{
  type metadata accessor for ImageLoader();
  v0 = swift_allocObject();
  swift_defaultActor_initialize();
  sub_26A84A778();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AFEB0, &qword_26A86AF00);
  sub_26A61AD18(&qword_281580028, 255, MEMORY[0x277CC8678], MEMORY[0x277CC8680]);
  result = sub_26A8516A8();
  *(v0 + 112) = result;
  qword_2815889C8 = v0;
  return result;
}

uint64_t sub_26A6194F8()
{
  OUTLINED_FUNCTION_1_10();
  v1[15] = v2;
  v1[16] = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AC090, &qword_26A85A690);
  v1[17] = OUTLINED_FUNCTION_10_29();
  v3 = sub_26A84A778();
  v1[18] = v3;
  OUTLINED_FUNCTION_2_5(v3);
  v1[19] = v4;
  v1[20] = OUTLINED_FUNCTION_10_29();
  v5 = sub_26A84AB98();
  v1[21] = v5;
  OUTLINED_FUNCTION_2_5(v5);
  v1[22] = v6;
  v1[23] = *(v7 + 64);
  v1[24] = OUTLINED_FUNCTION_10_29();
  v8 = sub_26A84ACC8();
  v1[25] = v8;
  OUTLINED_FUNCTION_2_5(v8);
  v1[26] = v9;
  v1[27] = OUTLINED_FUNCTION_10_29();

  return MEMORY[0x2822009F8](sub_26A619674);
}

uint64_t sub_26A619674(uint64_t a1)
{
  v2 = v1[24];
  v3 = v1[22];
  v4 = v1[21];
  v57 = v1[20];
  v59 = v1[23];
  v5 = v1[15];
  v61 = v1[16];
  v55 = v5;
  sub_26A84ACB8();
  sub_26A852248();

  sub_26A61AD18(&qword_281580008, 255, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
  v6 = sub_26A852568();
  MEMORY[0x26D663B00](v6);

  v1[28] = 0xD000000000000016;
  v1[29] = 0x800000026A88D2B0;
  v7 = *(v3 + 16);
  v7(v2, v5, v4);
  v8 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v50 = *(v3 + 80);
  v9 = swift_allocObject();
  v10 = v9;
  *(v9 + 16) = 0xD000000000000016;
  *(v9 + 24) = 0x800000026A88D2B0;
  v11 = *(v3 + 32);
  v11(v9 + v8, v2, v4);

  v12 = sub_26A851E88();
  LOBYTE(v44) = 2;
  sub_26A7C7120(v12, sub_26A61AA94, v10, 0, "SnippetUI/ImageLoader.swift", 27, 2, 30, "loadImage(for:)", 15, v44, v45, v47, SHIDWORD(v47), v50, v3 + 32, v8 + v59, v8, v55, v57, 0xD000000000000016, v61, 0xD000000000000016, 0x800000026A88D2B0, v66, v68, v70, v72, v74, v76);

  v13 = v7;
  v7(v2, v56, v4);
  sub_26A84A768();
  swift_beginAccess();
  v14 = *(v62 + 112);

  v15 = sub_26A5076C0(v58, v14);
  v1[30] = v15;

  if (v15)
  {
    swift_bridgeObjectRetain_n();
    sub_26A851E88();
    LOBYTE(v43) = 2;
    OUTLINED_FUNCTION_0_46();
    sub_26A7B1608(v16, v17, v18, v19, v20, 36, v21, 15, v43, v60, 0x800000026A88D2B0, v46, v48, v51, v52, v53, v54, v56, v58, v60, v62, v63, v65, v67, v69, v71, v73, v75);

    v22 = swift_task_alloc();
    v1[31] = v22;
    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AC088, &qword_26A85A650);
    *v22 = v1;
    v22[1] = sub_26A619BB8;
    v24 = MEMORY[0x277CC9318];
    v25 = MEMORY[0x277D84950];
    v26 = v1 + 13;
    v27 = v15;
  }

  else
  {
    v28 = v1[24];
    v49 = v28;
    v29 = v1[21];
    v30 = v1[16];
    v31 = v1[17];
    v32 = v1[15];
    v33 = sub_26A851C18();
    __swift_storeEnumTagSinglePayload(v31, 1, 1, v33);
    v13(v28, v32, v29);
    v35 = v11;
    v36 = sub_26A61AD18(&qword_2803B0FB8, v34, type metadata accessor for ImageLoader, &unk_26A86AEC0);
    v37 = (v53 + 7) & 0xFFFFFFFFFFFFFFF8;
    v38 = swift_allocObject();
    *(v38 + 16) = v30;
    *(v38 + 24) = v36;
    v35(v38 + v54, v49, v29);
    *(v38 + v37) = v30;
    v39 = (v38 + ((v37 + 15) & 0xFFFFFFFFFFFFFFF8));
    *v39 = v60;
    v39[1] = 0x800000026A88D2B0;
    swift_retain_n();
    v40 = sub_26A7FEE94(0, 0, v31, &unk_26A86AEF0, v38);
    v1[33] = v40;
    swift_beginAccess();

    swift_isUniquelyReferenced_nonNull_native();
    v64 = *(v62 + 112);
    sub_26A654EF8();
    *(v62 + 112) = v64;
    swift_endAccess();
    v41 = swift_task_alloc();
    v1[34] = v41;
    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AC088, &qword_26A85A650);
    *v41 = v1;
    v41[1] = sub_26A619DF4;
    v24 = MEMORY[0x277CC9318];
    v25 = MEMORY[0x277D84950];
    v26 = v1 + 11;
    v27 = v40;
  }

  return MEMORY[0x282200430](v26, v27, v24, v23, v25);
}

uint64_t sub_26A619BB8()
{
  OUTLINED_FUNCTION_1_10();
  OUTLINED_FUNCTION_3_8();
  v3 = v2;
  OUTLINED_FUNCTION_2_48();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_2_48();
  *v6 = v5;
  *(v3 + 256) = v0;

  if (v0)
  {

    v7 = sub_26A61A030;
  }

  else
  {
    v7 = &sub_26A619CD0;
  }

  return MEMORY[0x2822009F8](v7);
}

uint64_t sub_26A619DF4(uint64_t a1)
{
  OUTLINED_FUNCTION_2_48();
  *v4 = v3;
  *v4 = *v2;
  *(v3 + 280) = v1;

  if (v1)
  {
    v5 = sub_26A61A0EC;
  }

  else
  {
    v5 = sub_26A619F1C;
  }

  return MEMORY[0x2822009F8](v5);
}

uint64_t sub_26A619F1C()
{
  v1 = v0[33];
  v2 = v0[11];
  v3 = v0[12];
  swift_beginAccess();
  sub_26A5EC014();
  swift_endAccess();

  v5 = v0[26];
  v4 = v0[27];
  v6 = OUTLINED_FUNCTION_5_38();
  v7(v6);
  (*(v5 + 8))(v4, v1);

  v8 = v0[1];

  return v8(v2, v3);
}

uint64_t sub_26A61A030()
{
  OUTLINED_FUNCTION_9_32();
  (*(v5 + 8))(v2, v3);
  (*(v4 + 8))(v1, v0);
  OUTLINED_FUNCTION_8_37();

  OUTLINED_FUNCTION_2_9();

  return v6();
}

uint64_t sub_26A61A0EC()
{
  OUTLINED_FUNCTION_9_32();
  (*(v5 + 8))(v2, v3);
  (*(v4 + 8))(v1, v0);
  OUTLINED_FUNCTION_8_37();

  OUTLINED_FUNCTION_2_9();

  return v6();
}

uint64_t sub_26A61A1A8(uint64_t a1)
{
  sub_26A852248();

  MEMORY[0x26D663B00](0xD00000000000001ELL, 0x800000026A88D300);
  v2 = sub_26A84AB48();
  MEMORY[0x26D663B00](v2);

  return a1;
}

uint64_t sub_26A61A24C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[5] = a6;
  v7[6] = a7;
  v7[3] = a4;
  v7[4] = a5;
  v7[2] = a1;
  return MEMORY[0x2822009F8](sub_26A61A274);
}

uint64_t sub_26A61A274()
{
  OUTLINED_FUNCTION_1_10();
  if (qword_28157D890 != -1)
  {
    swift_once();
  }

  v1 = qword_2815886C8;
  v0[7] = qword_2815886C8;
  v1;
  v2 = swift_task_alloc();
  v0[8] = v2;
  *v2 = v0;
  v2[1] = sub_26A61A358;
  v3 = v0[3];

  return MEMORY[0x28211ED00](v3, 0);
}

uint64_t sub_26A61A358()
{
  OUTLINED_FUNCTION_1_10();
  OUTLINED_FUNCTION_3_8();
  v3 = v2;
  OUTLINED_FUNCTION_2_48();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 72) = v5;
  *(v3 + 80) = v6;
  *(v3 + 88) = v7;
  *(v3 + 96) = v0;

  if (v0)
  {
    v8 = sub_26A61A5D4;
  }

  else
  {

    v8 = &sub_26A61A478;
  }

  return MEMORY[0x2822009F8](v8);
}

uint64_t sub_26A61A5D4()
{
  OUTLINED_FUNCTION_1_10();

  OUTLINED_FUNCTION_2_9();

  return v1();
}

char *sub_26A61A630(uint64_t a1)
{
  objc_opt_self();
  v1 = swift_dynamicCastObjCClass();
  v2 = v1;
  if (!v1)
  {
    v4 = 0;
    goto LABEL_5;
  }

  result = [v1 statusCode];
  v4 = result;
  if ((result - 300) < 0xFFFFFFFFFFFFFF9CLL)
  {
LABEL_5:
    sub_26A61AA40();
    swift_allocError();
    *v5 = v4;
    *(v5 + 8) = v2 == 0;
    return swift_willThrow();
  }

  return result;
}

id sub_26A61A6E0()
{
  if (qword_28157D898 != -1)
  {
    swift_once();
  }

  v1 = qword_28157D8A0;

  return [v1 removeAllCachedResponses];
}

uint64_t sub_26A61A744()
{

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

void sub_26A61A7C8()
{
  v0 = [objc_allocWithZone(MEMORY[0x277CCABD8]) init];
  [v0 setQualityOfService_];
  v1 = objc_opt_self();
  v2 = [v1 defaultSessionConfiguration];
  if (qword_28157D898 != -1)
  {
    swift_once();
  }

  v3 = qword_28157D8A0;
  [v2 setURLCache_];

  sub_26A4EC5B0(0, &qword_28157D888, 0x277CCAD30);
  v4 = [v1 defaultSessionConfiguration];
  v5 = v0;
  v7 = sub_26A61A904(v4, 0, v0, v6);

  qword_2815886C8 = v7;
}

id sub_26A61A904(void *a1, uint64_t a2, void *a3, __n128 a4)
{
  v6 = [swift_getObjCClassFromMetadata(a4) sessionWithConfiguration:a1 delegate:a2 delegateQueue:a3];

  swift_unknownObjectRelease();
  return v6;
}

uint64_t sub_26A61A974()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AF0D0, &qword_26A872080);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v5 - v1;
  sub_26A4EC5B0(0, &qword_28157D8B0, 0x277CCACD8);
  v3 = sub_26A84AB98();
  __swift_storeEnumTagSinglePayload(v2, 1, 1, v3);
  result = sub_26A851E38();
  qword_28157D8A0 = result;
  return result;
}

unint64_t sub_26A61AA40()
{
  result = qword_2803B0FB0;
  if (!qword_2803B0FB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B0FB0);
  }

  return result;
}

uint64_t sub_26A61AA94()
{
  sub_26A84AB98();
  v1 = *(v0 + 16);

  return sub_26A61A1A8(v1);
}

uint64_t sub_26A61AAF8(uint64_t a1)
{
  v3 = v2;
  v5 = sub_26A84AB98();
  OUTLINED_FUNCTION_2_5(v5);
  v7 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v9 = (*(v8 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v9 + 15) & 0xFFFFFFFFFFFFFFF8;
  v11 = *(v1 + v9);
  v12 = *(v1 + 16);
  v13 = *(v1 + 24);
  v14 = *(v1 + v10);
  v15 = *(v1 + v10 + 8);
  v16 = swift_task_alloc();
  *(v3 + 16) = v16;
  *v16 = v3;
  v16[1] = sub_26A61AC34;

  return sub_26A61A24C(a1, v12, v13, v1 + v7, v11, v14, v15);
}

uint64_t sub_26A61AC34()
{
  OUTLINED_FUNCTION_1_10();
  OUTLINED_FUNCTION_3_8();
  v1 = *v0;
  OUTLINED_FUNCTION_2_48();
  *v2 = v1;

  OUTLINED_FUNCTION_2_9();

  return v3();
}

uint64_t sub_26A61AD18(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t getEnumTagSinglePayload for ImageLoader.Failure(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for ImageLoader.Failure(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 1;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 9) = v3;
  return result;
}

uint64_t sub_26A61ADB0(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_26A61ADCC(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    v2 = 1;
  }

  else
  {
    v2 = 0;
  }

  *(result + 8) = v2;
  return result;
}

uint64_t OUTLINED_FUNCTION_8_37()
{
}

uint64_t OUTLINED_FUNCTION_9_32()
{
}

uint64_t OUTLINED_FUNCTION_10_29()
{

  return swift_task_alloc();
}

uint64_t sub_26A61AE88(__n128 a1)
{
  v2 = v1;
  v3 = sub_26A84DFD8();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v7, v2, v3, v5);
  v8 = (*(v4 + 88))(v7, v3);
  if (v8 == *MEMORY[0x277D63658] || v8 == *MEMORY[0x277D63660])
  {
    return sub_26A851458();
  }

  if (v8 == *MEMORY[0x277D63650])
  {
    return sub_26A851448();
  }

  if (v8 != *MEMORY[0x277D63668])
  {
    v10 = sub_26A851448();
    (*(v4 + 8))(v7, v3);
    return v10;
  }

  return sub_26A851468();
}

BOOL sub_26A61B05C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = (a2 + 32);
  do
  {
    v4 = v2;
    if (v2-- == 0)
    {
      break;
    }

    v6 = *v3++;
  }

  while (v6 != a1);
  return v4 != 0;
}

BOOL sub_26A61B088(_BOOL8 result, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v5 = a5 >> 1;
  v6 = *(result + 17);
  for (i = (a3 + 72 * a4 + 65); ; i += 72)
  {
    if (v5 == a4)
    {
      return v5 != a4;
    }

    if (a4 >= v5)
    {
      break;
    }

    if (*(i - 65) != *result)
    {
      goto LABEL_40;
    }

    v8 = *(i - 48);
    if (*(i - 49))
    {
      if (v8 == v6)
      {
        v9 = *(result + 16);
      }

      else
      {
        v9 = 0;
      }

      if (v9 != 1)
      {
        goto LABEL_40;
      }
    }

    else
    {
      if (*(result + 16))
      {
        goto LABEL_40;
      }

      if (*(i - 57) != *(result + 8) || v8 != v6)
      {
        goto LABEL_40;
      }
    }

    if (*(i - 33))
    {
      if (!*(result + 32))
      {
        goto LABEL_40;
      }
    }

    else
    {
      if (*(i - 41) == *(result + 24))
      {
        v11 = *(result + 32);
      }

      else
      {
        v11 = 1;
      }

      if (v11)
      {
        goto LABEL_40;
      }
    }

    if (*(i - 17))
    {
      if (!*(result + 48))
      {
        goto LABEL_40;
      }
    }

    else
    {
      if (*(i - 25) == *(result + 40))
      {
        v12 = *(result + 48);
      }

      else
      {
        v12 = 1;
      }

      if (v12)
      {
        goto LABEL_40;
      }
    }

    if ((*(i - 16) ^ *(result + 49)))
    {
      goto LABEL_40;
    }

    if (*(i - 1))
    {
      if (!*(result + 64))
      {
        goto LABEL_40;
      }
    }

    else
    {
      if (*(i - 9) == *(result + 56))
      {
        v13 = *(result + 64);
      }

      else
      {
        v13 = 1;
      }

      if (v13)
      {
        goto LABEL_40;
      }
    }

    if (((*i ^ *(result + 65)) & 1) == 0)
    {
      return v5 != a4;
    }

LABEL_40:
    ++a4;
  }

  __break(1u);
  return result;
}

uint64_t VRXIdiom.idiom.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if ((a1 - 1) >= 8)
  {
    sub_26A851E98();
    OUTLINED_FUNCTION_6_30();
    OUTLINED_FUNCTION_9_33();
    sub_26A7A6570(v4, v5, v6, v7, v8, 635, v9, 5, v14);
    v3 = MEMORY[0x277D62A18];
  }

  else
  {
    v3 = qword_279CA28E8[a1 - 1];
  }

  v10 = *v3;
  v11 = sub_26A84B058();
  v12 = *(*(v11 - 8) + 104);

  return v12(a2, v10, v11);
}

uint64_t sub_26A61B2A8@<X0>(uint64_t a2@<X8>)
{
  result = sub_26A61B310();
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_26A61B310()
{
  swift_getKeyPath();
  swift_getKeyPath();
  OUTLINED_FUNCTION_17_15();
  sub_26A84EC18();

  return v1;
}

uint64_t sub_26A61B384(uint64_t a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = v1;
  return OUTLINED_FUNCTION_48_2(v3, v4, v5, v6, v7, v8, v9, v10, a1);
}

uint64_t (*sub_26A61B3F4())()
{
  v1 = OUTLINED_FUNCTION_22_17();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_13_23(v2);
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_21_16(KeyPath);
  v4 = swift_getKeyPath();
  *(v0 + 48) = OUTLINED_FUNCTION_4_41(v4);
  return sub_26A6245D0;
}

uint64_t sub_26A61B480()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803B0FC0, &qword_26A86AFB0);
  OUTLINED_FUNCTION_0_34();
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v0);
  v2 = OUTLINED_FUNCTION_0_47(v1, v8);
  v3(v2);
  OUTLINED_FUNCTION_11_29();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB4B8, &qword_26A858A08);
  OUTLINED_FUNCTION_16_15(v4);
  swift_endAccess();
  v5 = OUTLINED_FUNCTION_7_38();
  return v6(v5);
}

uint64_t sub_26A61B564()
{
  v1 = OUTLINED_FUNCTION_23_13();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_8_38(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803B0FC0, &qword_26A86AFB0);
  OUTLINED_FUNCTION_3_45(v3);
  *(v0 + 40) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_25_16(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  OUTLINED_FUNCTION_20_16(v8);
  OUTLINED_FUNCTION_10_30();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB4B8, &qword_26A858A08);
  OUTLINED_FUNCTION_33_7(v9);
  swift_endAccess();
  return OUTLINED_FUNCTION_24_15();
}

uint64_t sub_26A61B664@<X0>(uint64_t *a2@<X8>)
{
  result = sub_26A61B6A8();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_26A61B6A8()
{
  swift_getKeyPath();
  swift_getKeyPath();
  OUTLINED_FUNCTION_17_15();
  sub_26A84EC18();

  return v1;
}

uint64_t sub_26A61B718(uint64_t a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = v1;
  return OUTLINED_FUNCTION_48_2(v3, v4, v5, v6, v7, v8, v9, v10, a1);
}

uint64_t (*sub_26A61B780())()
{
  v1 = OUTLINED_FUNCTION_22_17();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_13_23(v2);
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_21_16(KeyPath);
  v4 = swift_getKeyPath();
  *(v0 + 48) = OUTLINED_FUNCTION_4_41(v4);
  return sub_26A6245D0;
}

uint64_t sub_26A61B7F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(uint64_t))
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_9_5();
  v10 = OUTLINED_FUNCTION_112();
  v11(v10);
  return a7(v7);
}

uint64_t sub_26A61B8C4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B0FD8, &qword_26A86B008);
  OUTLINED_FUNCTION_0_34();
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v0);
  v2 = OUTLINED_FUNCTION_0_47(v1, v8);
  v3(v2);
  OUTLINED_FUNCTION_11_29();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B0FD0, &qword_26A86B000);
  OUTLINED_FUNCTION_16_15(v4);
  swift_endAccess();
  v5 = OUTLINED_FUNCTION_7_38();
  return v6(v5);
}

uint64_t sub_26A61B9A8()
{
  v1 = OUTLINED_FUNCTION_23_13();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_8_38(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B0FD8, &qword_26A86B008);
  OUTLINED_FUNCTION_3_45(v3);
  *(v0 + 40) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_25_16(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  OUTLINED_FUNCTION_20_16(v8);
  OUTLINED_FUNCTION_10_30();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B0FD0, &qword_26A86B000);
  OUTLINED_FUNCTION_33_7(v9);
  swift_endAccess();
  return OUTLINED_FUNCTION_24_15();
}

void sub_26A61BAA8(uint64_t a1, char a2, void (*a3)(void *))
{
  v4 = *a1;
  v5 = *(*a1 + 48);
  v6 = *(*a1 + 56);
  if (a2)
  {
    v7 = v4[4];
    v8 = v4[5];
    (*(v8 + 16))(*(*a1 + 48), v6, v7);
    a3(v5);
    (*(v8 + 8))(v6, v7);
  }

  else
  {
    a3(*(*a1 + 56));
  }

  free(v6);
  free(v5);

  free(v4);
}

uint64_t sub_26A61BB70@<X0>(uint64_t *a2@<X8>)
{
  result = sub_26A61BBC8();
  *a2 = result;
  return result;
}

uint64_t (*sub_26A61BBF0())()
{
  v1 = OUTLINED_FUNCTION_22_17();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_13_23(v2);
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_21_16(KeyPath);
  v4 = swift_getKeyPath();
  *(v0 + 48) = OUTLINED_FUNCTION_4_41(v4);
  return sub_26A6245D0;
}

uint64_t sub_26A61BC7C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803B0FE0, &qword_26A86B060);
  OUTLINED_FUNCTION_0_34();
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v0);
  v2 = OUTLINED_FUNCTION_0_47(v1, v8);
  v3(v2);
  OUTLINED_FUNCTION_11_29();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AF1B8, &unk_26A863FB0);
  OUTLINED_FUNCTION_16_15(v4);
  swift_endAccess();
  v5 = OUTLINED_FUNCTION_7_38();
  return v6(v5);
}

uint64_t sub_26A61BD60()
{
  v1 = OUTLINED_FUNCTION_23_13();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_8_38(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803B0FE0, &qword_26A86B060);
  OUTLINED_FUNCTION_3_45(v3);
  *(v0 + 40) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_25_16(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  OUTLINED_FUNCTION_20_16(v8);
  OUTLINED_FUNCTION_10_30();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AF1B8, &unk_26A863FB0);
  OUTLINED_FUNCTION_33_7(v9);
  swift_endAccess();
  return OUTLINED_FUNCTION_24_15();
}

uint64_t sub_26A61BE60@<X0>(_BYTE *a2@<X8>)
{
  result = sub_26A61BEB8();
  *a2 = result & 1;
  return result;
}

uint64_t (*sub_26A61BEE0())()
{
  v1 = OUTLINED_FUNCTION_22_17();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_13_23(v2);
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_21_16(KeyPath);
  v4 = swift_getKeyPath();
  *(v0 + 48) = OUTLINED_FUNCTION_4_41(v4);
  return sub_26A61BF50;
}

uint64_t sub_26A61BF70()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803B0FF8, &qword_26A86B0B8);
  OUTLINED_FUNCTION_0_34();
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v0);
  v2 = OUTLINED_FUNCTION_0_47(v1, v8);
  v3(v2);
  OUTLINED_FUNCTION_11_29();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B0FF0, &unk_26A858C70);
  OUTLINED_FUNCTION_16_15(v4);
  swift_endAccess();
  v5 = OUTLINED_FUNCTION_7_38();
  return v6(v5);
}

uint64_t sub_26A61C054()
{
  v1 = OUTLINED_FUNCTION_23_13();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_8_38(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803B0FF8, &qword_26A86B0B8);
  OUTLINED_FUNCTION_3_45(v3);
  *(v0 + 40) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_25_16(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  OUTLINED_FUNCTION_20_16(v8);
  OUTLINED_FUNCTION_10_30();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B0FF0, &unk_26A858C70);
  OUTLINED_FUNCTION_33_7(v9);
  swift_endAccess();
  return OUTLINED_FUNCTION_24_15();
}

double sub_26A61C1A8()
{
  swift_getKeyPath();
  swift_getKeyPath();
  OUTLINED_FUNCTION_30_10();
  OUTLINED_FUNCTION_17_15();
  sub_26A84EC18();

  return v1;
}

uint64_t sub_26A61C214(__n128 a1)
{
  v2 = a1.n128_u8[0];
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = v1;
  OUTLINED_FUNCTION_44_5(v3, v4, v5, v6, v7, v8, v9, v10, v12, v2);
  return sub_26A84EC28();
}

uint64_t (*sub_26A61C284())()
{
  v1 = OUTLINED_FUNCTION_22_17();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_13_23(v2);
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_21_16(KeyPath);
  v4 = swift_getKeyPath();
  *(v0 + 48) = OUTLINED_FUNCTION_4_41(v4);
  return sub_26A6245D0;
}

uint64_t sub_26A61C310()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B1010, &qword_26A86B110);
  OUTLINED_FUNCTION_0_34();
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v0);
  v2 = OUTLINED_FUNCTION_0_47(v1, v8);
  v3(v2);
  OUTLINED_FUNCTION_11_29();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B1008, &qword_26A86B108);
  OUTLINED_FUNCTION_16_15(v4);
  swift_endAccess();
  v5 = OUTLINED_FUNCTION_7_38();
  return v6(v5);
}

uint64_t sub_26A61C3F4()
{
  v1 = OUTLINED_FUNCTION_23_13();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_8_38(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B1010, &qword_26A86B110);
  OUTLINED_FUNCTION_3_45(v3);
  *(v0 + 40) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_25_16(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  OUTLINED_FUNCTION_20_16(v8);
  OUTLINED_FUNCTION_10_30();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B1008, &qword_26A86B108);
  OUTLINED_FUNCTION_33_7(v9);
  swift_endAccess();
  return OUTLINED_FUNCTION_24_15();
}

uint64_t sub_26A61C4F4@<X0>(_BYTE *a2@<X8>)
{
  result = sub_26A61C54C();
  *a2 = result & 1;
  return result;
}

uint64_t (*sub_26A61C574())()
{
  v1 = OUTLINED_FUNCTION_22_17();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_13_23(v2);
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_21_16(KeyPath);
  v4 = swift_getKeyPath();
  *(v0 + 48) = OUTLINED_FUNCTION_4_41(v4);
  return sub_26A6245D0;
}

uint64_t sub_26A61C600()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803B0FF8, &qword_26A86B0B8);
  OUTLINED_FUNCTION_0_34();
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v0);
  v2 = OUTLINED_FUNCTION_0_47(v1, v8);
  v3(v2);
  OUTLINED_FUNCTION_11_29();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B0FF0, &unk_26A858C70);
  OUTLINED_FUNCTION_16_15(v4);
  swift_endAccess();
  v5 = OUTLINED_FUNCTION_7_38();
  return v6(v5);
}

uint64_t sub_26A61C6E4()
{
  v1 = OUTLINED_FUNCTION_23_13();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_8_38(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803B0FF8, &qword_26A86B0B8);
  OUTLINED_FUNCTION_3_45(v3);
  *(v0 + 40) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_25_16(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  OUTLINED_FUNCTION_20_16(v8);
  OUTLINED_FUNCTION_10_30();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B0FF0, &unk_26A858C70);
  OUTLINED_FUNCTION_33_7(v9);
  swift_endAccess();
  return OUTLINED_FUNCTION_24_15();
}

uint64_t sub_26A61C7E4@<X0>(_BYTE *a2@<X8>)
{
  result = sub_26A61C83C();
  *a2 = result & 1;
  return result;
}

uint64_t (*sub_26A61C864())()
{
  v1 = OUTLINED_FUNCTION_22_17();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_13_23(v2);
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_21_16(KeyPath);
  v4 = swift_getKeyPath();
  *(v0 + 48) = OUTLINED_FUNCTION_4_41(v4);
  return sub_26A6245D0;
}

uint64_t sub_26A61C8F0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803B0FF8, &qword_26A86B0B8);
  OUTLINED_FUNCTION_0_34();
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v0);
  v2 = OUTLINED_FUNCTION_0_47(v1, v8);
  v3(v2);
  OUTLINED_FUNCTION_11_29();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B0FF0, &unk_26A858C70);
  OUTLINED_FUNCTION_16_15(v4);
  swift_endAccess();
  v5 = OUTLINED_FUNCTION_7_38();
  return v6(v5);
}

uint64_t sub_26A61C9D4()
{
  v1 = OUTLINED_FUNCTION_23_13();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_8_38(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803B0FF8, &qword_26A86B0B8);
  OUTLINED_FUNCTION_3_45(v3);
  *(v0 + 40) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_25_16(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  OUTLINED_FUNCTION_20_16(v8);
  OUTLINED_FUNCTION_10_30();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B0FF0, &unk_26A858C70);
  OUTLINED_FUNCTION_33_7(v9);
  swift_endAccess();
  return OUTLINED_FUNCTION_24_15();
}

uint64_t sub_26A61CAD4@<X0>(_BYTE *a2@<X8>)
{
  result = sub_26A61CB2C();
  *a2 = result & 1;
  return result;
}

uint64_t (*sub_26A61CB54())()
{
  v1 = OUTLINED_FUNCTION_22_17();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_13_23(v2);
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_21_16(KeyPath);
  v4 = swift_getKeyPath();
  *(v0 + 48) = OUTLINED_FUNCTION_4_41(v4);
  return sub_26A6245D0;
}

uint64_t sub_26A61CBE0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803B0FF8, &qword_26A86B0B8);
  OUTLINED_FUNCTION_0_34();
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v0);
  v2 = OUTLINED_FUNCTION_0_47(v1, v8);
  v3(v2);
  OUTLINED_FUNCTION_11_29();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B0FF0, &unk_26A858C70);
  OUTLINED_FUNCTION_16_15(v4);
  swift_endAccess();
  v5 = OUTLINED_FUNCTION_7_38();
  return v6(v5);
}

uint64_t sub_26A61CCC4()
{
  v1 = OUTLINED_FUNCTION_23_13();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_8_38(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803B0FF8, &qword_26A86B0B8);
  OUTLINED_FUNCTION_3_45(v3);
  *(v0 + 40) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_25_16(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  OUTLINED_FUNCTION_20_16(v8);
  OUTLINED_FUNCTION_10_30();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B0FF0, &unk_26A858C70);
  OUTLINED_FUNCTION_33_7(v9);
  swift_endAccess();
  return OUTLINED_FUNCTION_24_15();
}

uint64_t sub_26A61CDC4@<X0>(_BYTE *a2@<X8>)
{
  result = sub_26A61CE1C();
  *a2 = result & 1;
  return result;
}

uint64_t sub_26A61CE30(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_26A84EC18();

  return v3;
}

uint64_t sub_26A61CEB0(char a1, uint64_t a2, uint64_t a3)
{
  swift_getKeyPath();
  swift_getKeyPath();
  v4 = v3;
  return sub_26A84EC28();
}

uint64_t (*sub_26A61CF18())()
{
  v1 = OUTLINED_FUNCTION_22_17();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_13_23(v2);
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_21_16(KeyPath);
  v4 = swift_getKeyPath();
  *(v0 + 48) = OUTLINED_FUNCTION_4_41(v4);
  return sub_26A6245D0;
}

uint64_t sub_26A61CFA4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803B0FF8, &qword_26A86B0B8);
  OUTLINED_FUNCTION_0_34();
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v0);
  v2 = OUTLINED_FUNCTION_0_47(v1, v8);
  v3(v2);
  OUTLINED_FUNCTION_11_29();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B0FF0, &unk_26A858C70);
  OUTLINED_FUNCTION_16_15(v4);
  swift_endAccess();
  v5 = OUTLINED_FUNCTION_7_38();
  return v6(v5);
}

uint64_t sub_26A61D088()
{
  v1 = OUTLINED_FUNCTION_23_13();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_8_38(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803B0FF8, &qword_26A86B0B8);
  OUTLINED_FUNCTION_3_45(v3);
  *(v0 + 40) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_25_16(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  OUTLINED_FUNCTION_20_16(v8);
  OUTLINED_FUNCTION_10_30();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B0FF0, &unk_26A858C70);
  OUTLINED_FUNCTION_33_7(v9);
  swift_endAccess();
  return OUTLINED_FUNCTION_24_15();
}

uint64_t sub_26A61D1AC(uint64_t a1, uint64_t a2)
{
  v3 = OBJC_IVAR____TtC9SnippetUI7Context_currentIdiom;
  OUTLINED_FUNCTION_19_14(v2 + OBJC_IVAR____TtC9SnippetUI7Context_currentIdiom, a2);
  return *(v2 + v3);
}

uint64_t sub_26A61D238(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9SnippetUI7Context_currentIdiom;
  v4 = OUTLINED_FUNCTION_3_21(a1);
  *(v1 + v3) = a1;
  return sub_26A61D27C(v4);
}

uint64_t sub_26A61D2EC()
{
  OUTLINED_FUNCTION_34_9();
  *(v1 + 24) = v0;
  OUTLINED_FUNCTION_18_16();
  return OUTLINED_FUNCTION_40_7();
}

uint64_t sub_26A61D338(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return sub_26A61D27C(result);
  }

  return result;
}

uint64_t sub_26A61D36C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t))
{

  v6 = OUTLINED_FUNCTION_112();
  return a5(v6);
}

uint64_t sub_26A61D3C8()
{
  OUTLINED_FUNCTION_34_9();
  OUTLINED_FUNCTION_18_16();
  return OUTLINED_FUNCTION_40_7();
}

uint64_t sub_26A61D41C(void *a1)
{
  v2 = (v1 + *a1);
  OUTLINED_FUNCTION_6_22(v2, v5);
  v3 = *v2;

  return v3;
}

double sub_26A61D474(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = (v3 + *a3);
  swift_beginAccess();
  *v6 = a1;
  v6[1] = a2;

  return result;
}

uint64_t sub_26A61D4D0()
{
  OUTLINED_FUNCTION_34_9();
  OUTLINED_FUNCTION_18_16();
  return OUTLINED_FUNCTION_40_7();
}

uint64_t sub_26A61D544()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AFAD8, &qword_26A867688);
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v2);
  v4 = v13 - v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803B1030, &qword_26A867690);
  OUTLINED_FUNCTION_0_34();
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_9_5();
  v7 = OBJC_IVAR____TtC9SnippetUI7Context____lazy_storage___siriEventUpdatePublisher;
  if (*(v0 + OBJC_IVAR____TtC9SnippetUI7Context____lazy_storage___siriEventUpdatePublisher))
  {
    v8 = *(v0 + OBJC_IVAR____TtC9SnippetUI7Context____lazy_storage___siriEventUpdatePublisher);
  }

  else
  {
    v13[3] = *(v0 + OBJC_IVAR____TtC9SnippetUI7Context_siriEventUpdateSubject);
    v13[1] = v6;
    sub_26A4EC5B0(0, &qword_28157D830, 0x277D85C78);

    v13[0] = sub_26A851F28();
    v13[2] = v13[0];
    v9 = sub_26A851EE8();
    __swift_storeEnumTagSinglePayload(v4, 1, 1, v9);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803B1040, &qword_26A867698);
    sub_26A54FF6C(&qword_28157FF58, &unk_2803B1040, &qword_26A867698);
    sub_26A62185C();
    sub_26A84EC68();
    sub_26A6218C4(v4);

    sub_26A54FF6C(&qword_28157FF70, &unk_2803B1030, &qword_26A867690);
    v8 = sub_26A84EC48();
    v10 = OUTLINED_FUNCTION_112();
    v11(v10);
    *(v1 + v7) = v8;
  }

  return v8;
}

uint64_t (*sub_26A61D7D4(uint64_t *a1))()
{
  a1[1] = v1;
  *a1 = sub_26A61D544();
  return sub_26A61D81C;
}

double sub_26A61D870()
{
  swift_getKeyPath();
  swift_getKeyPath();
  OUTLINED_FUNCTION_30_10();
  OUTLINED_FUNCTION_17_15();
  sub_26A84EC18();

  return v1;
}

uint64_t sub_26A61D934(__n128 a1)
{
  v2 = a1.n128_u8[0];
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = v1;
  OUTLINED_FUNCTION_44_5(v3, v4, v5, v6, v7, v8, v9, v10, v12, v2);
  return sub_26A84EC28();
}

uint64_t (*sub_26A61D9F8())()
{
  v1 = OUTLINED_FUNCTION_22_17();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_13_23(v2);
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_21_16(KeyPath);
  v4 = swift_getKeyPath();
  *(v0 + 48) = OUTLINED_FUNCTION_4_41(v4);
  return sub_26A6245D0;
}

uint64_t sub_26A61DA84()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803B1050, &unk_26A86B2A0);
  OUTLINED_FUNCTION_0_34();
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v0);
  v2 = OUTLINED_FUNCTION_0_47(v1, v8);
  v3(v2);
  OUTLINED_FUNCTION_11_29();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AC778, &unk_26A876570);
  OUTLINED_FUNCTION_16_15(v4);
  swift_endAccess();
  v5 = OUTLINED_FUNCTION_7_38();
  return v6(v5);
}

uint64_t sub_26A61DB68()
{
  v1 = OUTLINED_FUNCTION_23_13();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_8_38(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803B1050, &unk_26A86B2A0);
  OUTLINED_FUNCTION_3_45(v3);
  *(v0 + 40) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_25_16(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  OUTLINED_FUNCTION_20_16(v8);
  OUTLINED_FUNCTION_10_30();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AC778, &unk_26A876570);
  OUTLINED_FUNCTION_33_7(v9);
  swift_endAccess();
  return OUTLINED_FUNCTION_24_15();
}

uint64_t sub_26A61DD38(uint64_t a1)
{
  OUTLINED_FUNCTION_3_21(a1);
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_26A61DDB4())(void **a1, char a2)
{
  OUTLINED_FUNCTION_34_9();
  v2 = __swift_coroFrameAllocStub(0x30uLL);
  v3 = OUTLINED_FUNCTION_13_23(v2);
  v4 = OBJC_IVAR____TtC9SnippetUI7Context_interactionDelegate;
  *(v3 + 32) = v0;
  *(v3 + 40) = v4;
  swift_beginAccess();
  *(v1 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_26A61DE30;
}

void sub_26A61DE30(void **a1, char a2)
{
  v3 = *a1;
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

uint64_t sub_26A61DEB0(void x0_0, uint64_t a1)
{
  OUTLINED_FUNCTION_19_14(v2 + OBJC_IVAR____TtC9SnippetUI7Context_interactionDelegate, a1);
  swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakInit();
  return swift_unknownObjectRelease();
}

uint64_t sub_26A61DF78(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9SnippetUI7Context_componentViewBuilderContext;
  OUTLINED_FUNCTION_3_21(a1);
  *(v1 + v3) = a1;
}

uint64_t sub_26A61DFC0()
{
  OUTLINED_FUNCTION_34_9();
  OUTLINED_FUNCTION_18_16();
  return OUTLINED_FUNCTION_40_7();
}

uint64_t sub_26A61E03C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  OUTLINED_FUNCTION_30_10();
  OUTLINED_FUNCTION_17_15();
  sub_26A84EC18();

  return v1;
}

uint64_t sub_26A61E0FC(char a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = v1;
  OUTLINED_FUNCTION_44_5(v3, v4, v5, v6, v7, v8, v9, v10, v12, a1);
  return sub_26A84EC28();
}

uint64_t sub_26A61E164@<X0>(uint64_t *a1@<X8>)
{
  result = sub_26A61E03C();
  *a1 = result;
  return result;
}

uint64_t (*sub_26A61E1B8())()
{
  v1 = OUTLINED_FUNCTION_22_17();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_13_23(v2);
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_21_16(KeyPath);
  v4 = swift_getKeyPath();
  *(v0 + 48) = OUTLINED_FUNCTION_4_41(v4);
  return sub_26A6245D0;
}

void sub_26A61E228(void *a1)
{
  v1 = *a1;
  (*(*a1 + 48))(*a1, 0);

  free(v1);
}

uint64_t sub_26A61E2AC(void *a1, uint64_t *a2, uint64_t *a3)
{
  swift_beginAccess();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_33_7(v5);
  return swift_endAccess();
}

uint64_t sub_26A61E31C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B1068, &qword_26A86B318);
  OUTLINED_FUNCTION_0_34();
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v0);
  v2 = OUTLINED_FUNCTION_0_47(v1, v8);
  v3(v2);
  OUTLINED_FUNCTION_11_29();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B1060, &qword_26A86B310);
  OUTLINED_FUNCTION_16_15(v4);
  swift_endAccess();
  v5 = OUTLINED_FUNCTION_7_38();
  return v6(v5);
}

uint64_t sub_26A61E400()
{
  v1 = OUTLINED_FUNCTION_23_13();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_8_38(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B1068, &qword_26A86B318);
  OUTLINED_FUNCTION_3_45(v3);
  *(v0 + 40) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_25_16(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  OUTLINED_FUNCTION_20_16(v8);
  OUTLINED_FUNCTION_10_30();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B1060, &qword_26A86B310);
  OUTLINED_FUNCTION_33_7(v9);
  swift_endAccess();
  return OUTLINED_FUNCTION_24_15();
}

uint64_t sub_26A61E514(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_26A84EC18();

  return v3;
}

uint64_t sub_26A61E594(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a1;
  swift_getKeyPath();
  swift_getKeyPath();
  v5 = v3;
  OUTLINED_FUNCTION_44_5(v5, v6, v7, v8, v9, v10, v11, v12, v14, v4);
  return sub_26A84EC28();
}

uint64_t sub_26A61E5F8(uint64_t a1, uint64_t a2)
{
  v3 = OBJC_IVAR____TtC9SnippetUI7Context_visualResponseLocation;
  OUTLINED_FUNCTION_19_14(v2 + OBJC_IVAR____TtC9SnippetUI7Context_visualResponseLocation, a2);
  return *(v2 + v3);
}

uint64_t sub_26A61E630(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9SnippetUI7Context_visualResponseLocation;
  result = OUTLINED_FUNCTION_3_21(a1);
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_26A61E670()
{
  OUTLINED_FUNCTION_34_9();
  OUTLINED_FUNCTION_18_16();
  return OUTLINED_FUNCTION_40_7();
}

BOOL sub_26A61E6B8()
{
  v0 = [objc_opt_self() mainScreen];
  [v0 bounds];
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;

  v10.origin.x = v2;
  v10.origin.y = v4;
  v10.size.width = v6;
  v10.size.height = v8;
  return CGRectGetWidth(v10) <= 375.0;
}

id Context.init(idiom:)(uint64_t a1, int a2)
{
  v4 = v2;
  v103 = a2;
  v104 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803B1070, &unk_26A86B320);
  OUTLINED_FUNCTION_15();
  v101 = v6;
  v102 = v5;
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_82();
  v100 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B1060, &qword_26A86B310);
  OUTLINED_FUNCTION_15();
  v98 = v10;
  v99 = v9;
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_82();
  v97 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AC778, &unk_26A876570);
  OUTLINED_FUNCTION_15();
  v95 = v14;
  v96 = v13;
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_82();
  v94 = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B1008, &qword_26A86B108);
  OUTLINED_FUNCTION_15();
  v92 = v18;
  v93 = v17;
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_82();
  v91 = v20;
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B0FF0, &unk_26A858C70);
  OUTLINED_FUNCTION_15();
  v22 = v21;
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v23);
  v25 = &v86 - v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AF1B8, &unk_26A863FB0);
  OUTLINED_FUNCTION_15();
  v88 = v27;
  v89 = v26;
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v28);
  v30 = &v86 - v29;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B0FD0, &qword_26A86B000);
  OUTLINED_FUNCTION_15();
  v32 = v31;
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v33);
  v35 = &v86 - v34;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB4B8, &qword_26A858A08);
  OUTLINED_FUNCTION_15();
  v38 = v37;
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_9_5();
  v40 = OBJC_IVAR____TtC9SnippetUI7Context__initialFocusIndex;
  v106 = 0;
  LOBYTE(v107) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB3B8, &qword_26A858510);
  OUTLINED_FUNCTION_43_5();
  sub_26A84EBD8();
  (*(v38 + 32))(&v4[v40], v3, v36);
  v41 = OBJC_IVAR____TtC9SnippetUI7Context__asrText;
  v106 = 0;
  v107 = 0xE000000000000000;
  sub_26A84EBD8();
  (*(v32 + 32))(&v4[v41], v35, v87);
  v106 = MEMORY[0x277D84F98];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B1080, &qword_26A86B330);
  OUTLINED_FUNCTION_43_5();
  sub_26A84EBD8();
  v42 = OUTLINED_FUNCTION_42_7();
  v43(v42, v30);
  v44 = OBJC_IVAR____TtC9SnippetUI7Context__isInAmbient;
  LOBYTE(v106) = 0;
  sub_26A84EBD8();
  v45 = *(v22 + 32);
  (v45)(&v4[v44], v25, v90);
  v106 = 0x3FF0000000000000;
  v46 = v91;
  sub_26A84EBD8();
  v47 = OUTLINED_FUNCTION_42_7();
  v48(v47, v46);
  OUTLINED_FUNCTION_26_9();
  v49 = OUTLINED_FUNCTION_29_12();
  v45(v49);
  OUTLINED_FUNCTION_26_9();
  v50 = OUTLINED_FUNCTION_29_12();
  v45(v50);
  OUTLINED_FUNCTION_26_9();
  v51 = OUTLINED_FUNCTION_29_12();
  v45(v51);
  OUTLINED_FUNCTION_26_9();
  v52 = OUTLINED_FUNCTION_29_12();
  v45(v52);
  sub_26A4EC5B0(0, &qword_28157D880, 0x277CCAC38);
  v54 = sub_26A63CD18(v53);
  if (v54 == 4)
  {
    v55 = 1;
  }

  else
  {
    v55 = v54;
  }

  v4[OBJC_IVAR____TtC9SnippetUI7Context_currentProcess] = v55;
  v56 = OBJC_IVAR____TtC9SnippetUI7Context_deviceScaleFactor;
  v4[v56] = sub_26A536D0C();
  v57 = &v4[OBJC_IVAR____TtC9SnippetUI7Context_viewId];
  *v57 = 0;
  v57[1] = 0xE000000000000000;
  v58 = &v4[OBJC_IVAR____TtC9SnippetUI7Context_responseViewId];
  *v58 = 0;
  v58[1] = 0xE000000000000000;
  v4[OBJC_IVAR____TtC9SnippetUI7Context_isRedacted] = 0;
  *&v4[OBJC_IVAR____TtC9SnippetUI7Context____lazy_storage___siriEventUpdatePublisher] = 0;
  v59 = OBJC_IVAR____TtC9SnippetUI7Context_siriEventUpdateSubject;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803B1040, &qword_26A867698);
  swift_allocObject();
  *&v4[v59] = sub_26A84EBA8();
  v106 = 0x7FEFFFFFFFFFFFFFLL;
  v60 = v94;
  sub_26A84EBD8();
  v61 = OUTLINED_FUNCTION_42_7();
  v62(v61, v60);
  swift_unknownObjectWeakInit();
  *&v4[OBJC_IVAR____TtC9SnippetUI7Context_componentViewBuilderContext] = 0;
  v106 = 0;
  type metadata accessor for VRXMaterial(0, v63, v64, v65);
  OUTLINED_FUNCTION_43_5();
  v66 = v97;
  sub_26A84EBD8();
  v67 = OUTLINED_FUNCTION_42_7();
  v68(v67, v66);
  v69 = OBJC_IVAR____TtC9SnippetUI7Context__backgroundElements;
  v106 = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B1088, &qword_26A86B338);
  OUTLINED_FUNCTION_43_5();
  v70 = v100;
  sub_26A84EBD8();
  (*(v101 + 32))(&v4[v69], v70, v102);
  if (sub_26A73670C())
  {
    sub_26A621FB8(MEMORY[0x277D84F90]);
  }

  else
  {
    v71 = MEMORY[0x277D84FA0];
  }

  *&v4[OBJC_IVAR____TtC9SnippetUI7Context_cancellables] = v71;
  v72 = OBJC_IVAR____TtC9SnippetUI7Context_requestsKeyWindowSubject;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AFA68, &qword_26A86B340);
  swift_allocObject();
  *&v4[v72] = sub_26A84EBA8();
  v73 = OBJC_IVAR____TtC9SnippetUI7Context_containsComponentsWithActionSubject;
  swift_allocObject();
  *&v4[v73] = sub_26A84EBA8();
  *&v4[OBJC_IVAR____TtC9SnippetUI7Context_visualResponseLocation] = 1;
  v74 = OBJC_IVAR____TtC9SnippetUI7Context_isModernizedSnippet;
  v4[v74] = sub_26A84BBC8() & 1;
  v4[OBJC_IVAR____TtC9SnippetUI7Context_isSpotlightPlus] = 0;
  v75 = OBJC_IVAR____TtC9SnippetUI7Context_isSolariumEnabled;
  v4[v75] = _UISolariumEnabled();
  *&v4[OBJC_IVAR____TtC9SnippetUI7Context_isEditingCount] = 0;
  v76 = objc_opt_self();
  v77 = [v76 currentDevice];
  v78 = [v77 userInterfaceIdiom];

  if (v78 == 1)
  {
    v79 = 2;
  }

  else
  {
    v80 = [v76 currentDevice];
    v81 = sub_26A64E8D8();

    if (v81)
    {
      v79 = 3;
    }

    else
    {
      v82 = [objc_opt_self() _carScreen];
      if (v82)
      {

        v79 = 4;
      }

      else
      {
        v79 = 1;
      }
    }
  }

  if ((v103 & 1) == 0)
  {
    v79 = v104;
  }

  *&v4[OBJC_IVAR____TtC9SnippetUI7Context_currentIdiom] = v79;
  v83 = type metadata accessor for Context(0);
  v105.receiver = v4;
  v105.super_class = v83;
  v84 = objc_msgSendSuper2(&v105, sel_init);
  sub_26A61F064();
  sub_26A61F408();
  sub_26A61F5B4();
  sub_26A61F8FC();
  sub_26A61FBA4();

  return v84;
}

uint64_t sub_26A61F064()
{
  v16 = sub_26A851F08();
  v0 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v2 = &v14 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803B0FE0, &qword_26A86B060);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v14 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B10C8, &qword_26A86B5C0);
  v8 = *(v7 - 8);
  v14 = v7;
  v15 = v8;
  MEMORY[0x28223BE20](v7);
  v10 = &v14 - v9;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AF1B8, &unk_26A863FB0);
  sub_26A84EBE8();
  swift_endAccess();
  sub_26A851EF8();
  sub_26A4EC5B0(0, &qword_28157D830, 0x277D85C78);
  v11 = sub_26A851F28();
  v17 = v11;
  sub_26A54FF6C(&qword_28157FF40, &unk_2803B0FE0, &qword_26A86B060);
  sub_26A62185C();
  sub_26A84EC78();

  (*(v0 + 8))(v2, v16);
  (*(v4 + 8))(v6, v3);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_26A54FF6C(&unk_28157FF78, &qword_2803B10C8, &qword_26A86B5C0);
  v12 = v14;
  sub_26A84EC98();

  (*(v15 + 8))(v10, v12);
  swift_beginAccess();
  sub_26A84EB58();
  swift_endAccess();
}

uint64_t sub_26A61F408()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B0FD8, &qword_26A86B008);
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v5 - v2;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B0FD0, &qword_26A86B000);
  sub_26A84EBE8();
  swift_endAccess();
  sub_26A54FF6C(&unk_28157FF30, &qword_2803B0FD8, &qword_26A86B008);
  sub_26A84EC98();
  (*(v1 + 8))(v3, v0);
  swift_beginAccess();
  sub_26A84EB58();
  swift_endAccess();
}

uint64_t sub_26A61F5B4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AFAD8, &qword_26A867688);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = v15 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803B0FF8, &qword_26A86B0B8);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v15 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803B10B8, &qword_26A86B5B8);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v15 - v10;
  v15[0] = v0;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B0FF0, &unk_26A858C70);
  sub_26A84EBE8();
  swift_endAccess();
  sub_26A4EC5B0(0, &qword_28157D830, 0x277D85C78);
  v12 = sub_26A851F28();
  v15[1] = v12;
  v13 = sub_26A851EE8();
  __swift_storeEnumTagSinglePayload(v3, 1, 1, v13);
  sub_26A54FF6C(&unk_28157FF20, &unk_2803B0FF8, &qword_26A86B0B8);
  sub_26A62185C();
  sub_26A84EC68();
  sub_26A6218C4(v3);

  (*(v5 + 8))(v7, v4);
  sub_26A54FF6C(&qword_28157FF68, &unk_2803B10B8, &qword_26A86B5B8);
  sub_26A84EC98();
  (*(v9 + 8))(v11, v8);
  swift_beginAccess();
  sub_26A84EB58();
  swift_endAccess();
}

uint64_t sub_26A61F8FC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AFAD8, &qword_26A867688);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = v11 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803B1030, &qword_26A867690);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v11 - v6;
  v11[2] = *(v0 + OBJC_IVAR____TtC9SnippetUI7Context_siriEventUpdateSubject);
  sub_26A4EC5B0(0, &qword_28157D830, 0x277D85C78);

  v8 = sub_26A851F28();
  v11[5] = v8;
  v9 = sub_26A851EE8();
  __swift_storeEnumTagSinglePayload(v3, 1, 1, v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803B1040, &qword_26A867698);
  sub_26A54FF6C(&qword_28157FF58, &unk_2803B1040, &qword_26A867698);
  sub_26A62185C();
  sub_26A84EC68();
  sub_26A6218C4(v3);

  sub_26A54FF6C(&qword_28157FF70, &unk_2803B1030, &qword_26A867690);
  sub_26A84EC98();
  (*(v5 + 8))(v7, v4);
  swift_beginAccess();
  sub_26A84EB58();
  swift_endAccess();
}

uint64_t sub_26A61FBA4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AFAD8, &qword_26A867688);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v15 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B10A0, &qword_26A86B5A8);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v15 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803B10A8, &qword_26A86B5B0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v15 - v10;
  v16 = *(v0 + OBJC_IVAR____TtC9SnippetUI7Context_containsComponentsWithActionSubject);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AFA68, &qword_26A86B340);
  sub_26A54FF6C(&qword_28157FF50, &qword_2803AFA68, &qword_26A86B340);
  sub_26A84EC88();
  sub_26A4EC5B0(0, &qword_28157D830, 0x277D85C78);
  v12 = sub_26A851F28();
  v16 = v12;
  v13 = sub_26A851EE8();
  __swift_storeEnumTagSinglePayload(v3, 1, 1, v13);
  sub_26A54FF6C(&qword_28157FF88, &qword_2803B10A0, &qword_26A86B5A8);
  sub_26A62185C();
  sub_26A84EC68();
  sub_26A6218C4(v3);

  (*(v5 + 8))(v7, v4);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_26A54FF6C(&qword_28157FF60, &unk_2803B10A8, &qword_26A86B5B0);
  sub_26A84EC98();

  (*(v9 + 8))(v11, v8);
  swift_beginAccess();
  sub_26A84EB58();
  swift_endAccess();
}

uint64_t sub_26A620070(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  OUTLINED_FUNCTION_30_10();
  sub_26A61DEB0(v4, v5);
  v6 = a2(v2);
  OUTLINED_FUNCTION_41_8(v6, v7);
  return a2 & 1;
}

uint64_t sub_26A6200D8(uint64_t a1, uint64_t (*a2)(void))
{
  OUTLINED_FUNCTION_30_10();
  sub_26A61DEB0(v4, v5);
  v6 = [objc_opt_self() wrapCommandInStartLocalRequest_];
  LOBYTE(a2) = a2();

  sub_26A53F320(v8);
  return a2 & 1;
}

uint64_t sub_26A620178(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  sub_26A61DEB0(a1, a2);
  v8 = a4(a1, a2, a3);
  OUTLINED_FUNCTION_41_8(v8, v9);
  return a4 & 1;
}

uint64_t sub_26A6201FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_49_3(a1, a2, a3);
  v4 = OUTLINED_FUNCTION_112();
  v5 = InteractionDelegateWrapper.navigate<A>(to:)(v4);
  OUTLINED_FUNCTION_41_8(v5, v6);
  return v3 & 1;
}

uint64_t sub_26A620244(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  OUTLINED_FUNCTION_30_10();
  sub_26A61DEB0(v4, v5);
  v6 = a2(v2);
  OUTLINED_FUNCTION_41_8(v6, v7);
  return a2 & 1;
}

uint64_t sub_26A6202AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_49_3(a1, a2, a3);
  v4 = OUTLINED_FUNCTION_112();
  v5 = v3(v4);
  OUTLINED_FUNCTION_41_8(v5, v6);
  return v3 & 1;
}

uint64_t sub_26A6202F4(uint64_t a1, uint64_t a2)
{
  sub_26A61DEB0(a1, a2);
  v3 = InteractionDelegateWrapper.perform(appPunchout:shouldExplicitlyClearContext:)(a1, 0);
  OUTLINED_FUNCTION_41_8(v3, v4);
  return a1 & 1;
}

uint64_t sub_26A62033C(uint64_t a1)
{
  sub_26A84C318();
  OUTLINED_FUNCTION_0_34();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a1 + 16);
  v10 = MEMORY[0x277D84F90];
  if (v9)
  {
    v15[1] = v1;
    v17 = MEMORY[0x277D84F90];
    sub_26A7DD21C(0, v9, 0);
    v10 = v17;
    v11 = a1 + 32;
    do
    {
      sub_26A50429C(v11, v16);
      __swift_project_boxed_opaque_existential_1(v16, v16[3]);
      sub_26A84DD08();
      __swift_destroy_boxed_opaque_existential_1(v16);
      v17 = v10;
      v13 = *(v10 + 16);
      v12 = *(v10 + 24);
      if (v13 >= v12 >> 1)
      {
        sub_26A7DD21C(v12 > 1, v13 + 1, 1);
        v10 = v17;
      }

      *(v10 + 16) = v13 + 1;
      (*(v5 + 32))(v10 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v13, v8, v2);
      v11 += 40;
      --v9;
    }

    while (v9);
  }

  return sub_26A61E580(v10);
}

void *sub_26A6204F8(SEL *a1, uint64_t a2)
{
  OUTLINED_FUNCTION_19_14(v2 + OBJC_IVAR____TtC9SnippetUI7Context_interactionDelegate, a2);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v5 = result;
    if ([result respondsToSelector_])
    {
      [v5 *a1];
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_26A62072C(uint64_t a1, uint64_t a2)
{
  v2 = sub_26A61DEB0(a1, a2);
  sub_26A5E8428(v2);
  return sub_26A53F320(v4);
}

uint64_t sub_26A620774(uint64_t a1)
{
  OUTLINED_FUNCTION_30_10();
  sub_26A61DEB0(v2, v3);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return sub_26A53F320(v7);
  }

  v5 = Strong;
  if ([Strong respondsToSelector_])
  {
    [v5 *v1];
    swift_unknownObjectRelease();
    return sub_26A53F320(v7);
  }

  sub_26A53F320(v7);
  return swift_unknownObjectRelease();
}

double sub_26A6207FC(uint64_t a1, uint64_t a2, uint64_t a3)
{

  sub_26A84EB98();

  return sub_26A6223E8(a1, a2, a3, 0);
}

uint64_t sub_26A62086C(uint64_t a1)
{

  sub_26A84EB98();
}

double sub_26A6208C4(uint64_t a1, uint64_t a2)
{

  sub_26A84EB98();

  return sub_26A6223E8(a1, a2, 0, 2);
}

void *sub_26A620938(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_19_14(v2 + OBJC_IVAR____TtC9SnippetUI7Context_interactionDelegate, a2);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v5 = result;
    if ([result respondsToSelector_])
    {
      [v5 emitInstrumentationEvent:a1 requiresNewTurn:0];
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_26A6209BC(void *a1, uint64_t a2)
{
  sub_26A61DEB0(a1, a2);
  v4 = (v2 + OBJC_IVAR____TtC9SnippetUI7Context_viewId);
  OUTLINED_FUNCTION_6_22(v4, &v8);
  v5 = *v4;
  v6 = v4[1];

  sub_26A5E6164(a1, v5, v6);

  return sub_26A53F320(v9);
}

uint64_t sub_26A620D20(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_30_10();
  sub_26A61DEB0(v4, v5);
  InteractionDelegateWrapper.requestDeviceUnlock(_:)(v2, a2);
  return sub_26A53F320(v7);
}

id Context.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id Context.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for Context(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_26A621160@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for Context(0);
  result = sub_26A84EB88();
  *a2 = result;
  return result;
}

void sub_26A6211A0(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    sub_26A6211FC(v2);
  }
}

void sub_26A6211FC(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    if ([Strong respondsToSelector_])
    {
      v3 = sub_26A851688();
      [v2 sharedStateDidUpdate_];
      swift_unknownObjectRelease();
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }
}

uint64_t VRXPlayerState.description.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a1)
  {
    return 0x676E6979616C50;
  }

  if (a1 == 1)
  {
    return 0x646573756150;
  }

  type metadata accessor for VRXPlayerState(0, a2, a3, a4);
  result = sub_26A8525E8();
  __break(1u);
  return result;
}

uint64_t VRXIdiom.description.getter(uint64_t a1)
{
  v1 = a1 - 1;
  result = 0x656E6F6870;
  switch(v1)
  {
    case 0:
      return result;
    case 1:
      result = 6578544;
      break;
    case 2:
      result = 6582128;
      break;
    case 3:
      result = 7496035;
      break;
    case 4:
      result = 30324;
      break;
    case 5:
      result = 0x6863746177;
      break;
    case 6:
      result = 6513005;
      break;
    case 7:
      result = 0x6465767265736572;
      break;
    default:
      result = 0x6E776F6E6B6E75;
      break;
  }

  return result;
}

uint64_t VRXSiriEvent.description.getter(uint64_t a1)
{
  result = 0x6E776F6E6B6E75;
  switch(a1)
  {
    case 0:
      return result;
    case 1:
      result = 0xD000000000000011;
      break;
    case 2:
      result = 0x656C6C65636E6163;
      break;
    case 3:
      result = 0x657373696D736964;
      break;
    case 4:
      result = 0xD000000000000014;
      break;
    case 5:
      result = 1701602409;
      break;
    default:
      result = sub_26A852568();
      break;
  }

  return result;
}

unint64_t sub_26A62185C()
{
  result = qword_28157D840;
  if (!qword_28157D840)
  {
    sub_26A4EC5B0(255, &qword_28157D830, 0x277D85C78);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28157D840);
  }

  return result;
}

uint64_t sub_26A6218C4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AFAD8, &qword_26A867688);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_26A621958(uint64_t a1)
{
  if (*(a1 + 16) && (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B1098, &qword_26A875910), OUTLINED_FUNCTION_10_6(), v2 = sub_26A852208(), v3 = v2, (v4 = *(a1 + 16)) != 0))
  {
    v5 = 0;
    v6 = v2 + 56;
    while (v5 < *(a1 + 16))
    {
      v7 = *(a1 + 32 + 8 * v5++);
      sub_26A8526B8();
      MEMORY[0x26D664930](v7);
      v8 = sub_26A8526F8();
      v9 = ~(-1 << *(v3 + 32));
      while (1)
      {
        v10 = v8 & v9;
        v11 = (v8 & v9) >> 6;
        v12 = *(v6 + 8 * v11);
        v13 = 1 << (v8 & v9);
        if ((v13 & v12) == 0)
        {
          break;
        }

        if (*(*(v3 + 48) + 8 * v10) == v7)
        {
          goto LABEL_11;
        }

        v8 = v10 + 1;
      }

      *(v6 + 8 * v11) = v13 | v12;
      *(*(v3 + 48) + 8 * v10) = v7;
      OUTLINED_FUNCTION_47_2();
      if (v15)
      {
        goto LABEL_14;
      }

      *(v3 + 16) = v14;
LABEL_11:
      if (v5 == v4)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
  }

  else
  {
LABEL_12:
  }
}

void sub_26A621A9C(uint64_t a1)
{
  v1 = a1;
  if (!*(a1 + 16) || (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B1090, &unk_26A86B550), OUTLINED_FUNCTION_10_6(), v2 = sub_26A852208(), v3 = v2, (v49 = *(v1 + 16)) == 0))
  {
LABEL_81:

    return;
  }

  v4 = 0;
  v5 = v2 + 56;
  v47 = v1;
  v48 = v1 + 32;
LABEL_4:
  if (v4 >= *(v1 + 16))
  {
    goto LABEL_83;
  }

  v50 = v4;
  v6 = v48 + 16 * v4;
  v7 = *v6;
  v8 = *(v6 + 8);
  sub_26A8526B8();
  sub_26A4E324C(v7, v8);
  sub_26A6B036C(v51, v7, v8);
  v9 = sub_26A8526F8();
  v10 = -1 << *(v3 + 32);
  v11 = v9 & ~v10;
  v12 = v11 >> 6;
  v13 = *(v5 + 8 * (v11 >> 6));
  v14 = 1 << v11;
  if (((1 << v11) & v13) == 0)
  {
LABEL_75:
    *(v5 + 8 * v12) = v13 | v14;
    v41 = *(v3 + 48) + 16 * v11;
    *v41 = v7;
    *(v41 + 8) = v8;
    OUTLINED_FUNCTION_47_2();
    if (v43)
    {
      goto LABEL_84;
    }

    *(v3 + 16) = v42;
    goto LABEL_77;
  }

  v15 = ~v10;
  v16 = v7 + 56;
  while (2)
  {
    v17 = *(v3 + 48) + 16 * v11;
    v18 = *v17;
    switch(*(v17 + 8))
    {
      case 1:
        if (v8 != 1)
        {
          goto LABEL_52;
        }

        v32 = 0xE900000000000074;
        v33 = 0x6867696C746F7053;
        switch(*v17)
        {
          case 1u:
            v32 = 0xE400000000000000;
            v33 = 1769105747;
            break;
          case 2u:
            v33 = 0xD000000000000010;
            v32 = 0x800000026A88A230;
            break;
          case 3u:
            v33 = 0x6153656C69626F4DLL;
            v32 = 0xEC00000069726166;
            break;
          default:
            break;
        }

        v36 = 0x6867696C746F7053;
        v37 = 0xE900000000000074;
        switch(v7)
        {
          case 1:
            v37 = 0xE400000000000000;
            v36 = 1769105747;
            break;
          case 2:
            v36 = 0xD000000000000010;
            v37 = 0x800000026A88A230;
            break;
          case 3:
            v36 = 0x6153656C69626F4DLL;
            v37 = 0xEC00000069726166;
            break;
          default:
            break;
        }

        if (v33 == v36 && v32 == v37)
        {
        }

        else
        {
          v39 = v16;
          v40 = sub_26A852598();

          v16 = v39;
          if ((v40 & 1) == 0)
          {
            goto LABEL_52;
          }
        }

        goto LABEL_77;
      case 2:
        if (v8 == 2 && v18 == v7)
        {
          goto LABEL_77;
        }

        goto LABEL_52;
      case 3:
        if (v8 != 3)
        {
          goto LABEL_52;
        }

        goto LABEL_51;
      case 4:
        if (v8 != 4)
        {
          goto LABEL_52;
        }

        goto LABEL_51;
      case 5:
        if (v8 != 5)
        {
          goto LABEL_52;
        }

        goto LABEL_51;
      case 6:
        if (v8 != 6)
        {
          goto LABEL_52;
        }

        goto LABEL_51;
      case 7:
        if (v8 == 7 && ((v18 ^ v7) & 1) == 0)
        {
          goto LABEL_77;
        }

        goto LABEL_52;
      case 8:
        if (v8 != 8)
        {
          goto LABEL_52;
        }

        v34 = v18 << 56;
        if (v7)
        {
          if (v7 == 1)
          {
            v35 = 0x100000000000000;
          }

          else
          {
            v35 = 0x200000000000000;
          }

          if (v34 == v35)
          {
            goto LABEL_77;
          }
        }

        else if (!v34)
        {
          goto LABEL_77;
        }

LABEL_52:
        v11 = (v11 + 1) & v15;
        v12 = v11 >> 6;
        v13 = *(v5 + 8 * (v11 >> 6));
        v14 = 1 << v11;
        if ((v13 & (1 << v11)) == 0)
        {
          goto LABEL_75;
        }

        continue;
      case 9:
        if (v8 != 9)
        {
          goto LABEL_52;
        }

        goto LABEL_51;
      case 0xA:
        if (v8 == 10)
        {
          goto LABEL_51;
        }

        goto LABEL_52;
      case 0xB:
        if (v8 != 11)
        {
          goto LABEL_52;
        }

LABEL_51:
        if ((v18 ^ v7))
        {
          goto LABEL_52;
        }

        goto LABEL_77;
      default:
        if (v8)
        {
          goto LABEL_52;
        }

        if (v18 == v7)
        {
          goto LABEL_79;
        }

        if (*(v18 + 16) != *(v7 + 16))
        {
          goto LABEL_52;
        }

        v19 = 0;
        v20 = 1 << *(v18 + 32);
        if (v20 < 64)
        {
          v21 = ~(-1 << v20);
        }

        else
        {
          v21 = -1;
        }

        v22 = v21 & *(v18 + 56);
        v23 = (v20 + 63) >> 6;
        v44 = v23;
        v46 = v16;
        if (v22)
        {
          goto LABEL_15;
        }

        while (2)
        {
          v25 = v19;
LABEL_17:
          v19 = v25 + 1;
          if (!__OFADD__(v25, 1))
          {
            if (v19 < v23)
            {
              v26 = *(v18 + 56 + 8 * v19);
              ++v25;
              if (v26)
              {
                v24 = __clz(__rbit64(v26));
                for (i = (v26 - 1) & v26; ; i = (v22 - 1) & v22)
                {
                  v27 = *(*(v18 + 48) + 8 * (v24 | (v19 << 6)));
                  sub_26A8526B8();
                  MEMORY[0x26D664930](v27);
                  v28 = sub_26A8526F8();
                  v29 = ~(-1 << *(v7 + 32));
                  v16 = v46;
                  do
                  {
                    v30 = v28 & v29;
                    if (((*(v46 + (((v28 & v29) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v28 & v29)) & 1) == 0)
                    {
                      goto LABEL_52;
                    }

                    v28 = v30 + 1;
                  }

                  while (*(*(v7 + 48) + 8 * v30) != v27);
                  v23 = v44;
                  v22 = i;
                  if (!i)
                  {
                    break;
                  }

LABEL_15:
                  v24 = __clz(__rbit64(v22));
                }

                continue;
              }

              goto LABEL_17;
            }

LABEL_79:
            sub_26A587EE4(v7, 0);
LABEL_77:
            v4 = v50 + 1;
            v1 = v47;
            if (v50 + 1 == v49)
            {
              goto LABEL_81;
            }

            goto LABEL_4;
          }

          break;
        }

        __break(1u);
LABEL_83:
        __break(1u);
LABEL_84:
        __break(1u);
        return;
    }
  }
}

void sub_26A621FB8(uint64_t a1)
{
  if (sub_26A73670C())
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B10D0, &qword_26A86B5C8);
    OUTLINED_FUNCTION_10_6();
    v2 = v4;
    v5 = sub_26A852208();
  }

  else
  {
    v5 = MEMORY[0x277D84FA0];
  }

  v20 = sub_26A73670C();
  if (v20)
  {
    v6 = 0;
    v7 = v5 + 56;
    OUTLINED_FUNCTION_37_10();
    while (1)
    {
      OUTLINED_FUNCTION_35_7();
      sub_26A736710();
      if (v2)
      {
        v8 = MEMORY[0x26D6644E0](v6, a1);
      }

      else
      {
        v8 = *(v18 + 8 * v6);
      }

      v9 = __OFADD__(v6++, 1);
      if (v9)
      {
        break;
      }

      v21 = v8;
      v10 = sub_26A84EB68();
      sub_26A624590(&qword_2803B10D8);
      v2 = &v21;
      v11 = sub_26A8516E8();
      v12 = ~(-1 << *(v5 + 32));
      while (1)
      {
        v13 = v11 & v12;
        v14 = (v11 & v12) >> 6;
        v15 = *(v7 + 8 * v14);
        v16 = v1 << (v11 & v12);
        if ((v16 & v15) == 0)
        {
          break;
        }

        sub_26A624590(&unk_2803B10E0);
        v2 = v10;
        if (sub_26A851758())
        {

          goto LABEL_17;
        }

        v11 = v13 + 1;
      }

      *(v7 + 8 * v14) = v16 | v15;
      *(*(v5 + 48) + 8 * v13) = v8;
      OUTLINED_FUNCTION_47_2();
      if (v9)
      {
        goto LABEL_20;
      }

      *(v5 + 16) = v17;
LABEL_17:
      a1 = v19;
      if (v6 == v20)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
  }

  else
  {
LABEL_18:
  }
}

uint64_t type metadata accessor for Context(uint64_t a1)
{
  result = qword_28157D9D0;
  if (!qword_28157D9D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_26A6221EC(uint64_t a1)
{
  if (sub_26A73670C())
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803B3950, &unk_26A86B5D0);
    OUTLINED_FUNCTION_10_6();
    v2 = v4;
    v5 = sub_26A852208();
  }

  else
  {
    v5 = MEMORY[0x277D84FA0];
  }

  v21 = sub_26A73670C();
  if (v21)
  {
    v6 = 0;
    v7 = v5 + 56;
    OUTLINED_FUNCTION_37_10();
    while (1)
    {
      OUTLINED_FUNCTION_35_7();
      sub_26A736710();
      v8 = v2 ? MEMORY[0x26D6644E0](v6, a1) : *(v19 + 8 * v6);
      v9 = v8;
      v10 = __OFADD__(v6++, 1);
      if (v10)
      {
        break;
      }

      v2 = v8;
      v11 = sub_26A851FE8();
      v12 = ~(-1 << *(v5 + 32));
      while (1)
      {
        v13 = v11 & v12;
        v14 = (v11 & v12) >> 6;
        v15 = *(v7 + 8 * v14);
        v16 = v1 << (v11 & v12);
        if ((v16 & v15) == 0)
        {
          break;
        }

        sub_26A4EC5B0(0, &qword_2803B10F0, 0x277CD3E50);
        v17 = *(*(v5 + 48) + 8 * v13);
        v2 = sub_26A851FF8();

        if (v2)
        {

          goto LABEL_17;
        }

        v11 = v13 + 1;
      }

      *(v7 + 8 * v14) = v16 | v15;
      *(*(v5 + 48) + 8 * v13) = v9;
      OUTLINED_FUNCTION_47_2();
      if (v10)
      {
        goto LABEL_20;
      }

      *(v5 + 16) = v18;
LABEL_17:
      a1 = v20;
      if (v6 == v21)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
  }

  else
  {
LABEL_18:
  }
}

uint64_t sub_26A622388(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, _BYTE *, uint64_t))
{
  sub_26A61DEB0(a1, a2);
  v7 = a4(a1, v10, a3);
  OUTLINED_FUNCTION_41_8(v7, v8);
  return a4 & 1;
}

double sub_26A6223E8(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (!a4 || a4 == 2)
  {
  }

  return result;
}

void sub_26A622410(uint64_t a1)
{
  sub_26A62443C(319, &qword_28157FEC0, &qword_2803AB3B8, &qword_26A858510);
  if (v1 <= 0x3F)
  {
    sub_26A624398(319, &qword_28157FEF8, MEMORY[0x277D837D0]);
    if (v2 <= 0x3F)
    {
      sub_26A62443C(319, &qword_28157FF00, &qword_2803B1080, &qword_26A86B330);
      if (v3 <= 0x3F)
      {
        sub_26A624398(319, &qword_28157FEE0, MEMORY[0x277D839B0]);
        if (v4 <= 0x3F)
        {
          sub_26A624398(319, &unk_28157FED0, MEMORY[0x277D839F8]);
          if (v5 <= 0x3F)
          {
            sub_26A624398(319, &qword_28157FF10, MEMORY[0x277D85048]);
            if (v6 <= 0x3F)
            {
              sub_26A6243E4(319, v6, v7, v8);
              if (v9 <= 0x3F)
              {
                sub_26A62443C(319, &unk_28157FEE8, &qword_2803B1088, &qword_26A86B338);
                if (v10 <= 0x3F)
                {
                  swift_updateClassMetadata2();
                }
              }
            }
          }
        }
      }
    }
  }
}

uint64_t dispatch thunk of Context.navigateTo(nextSnippet:)()
{
  return (*((*MEMORY[0x277D85000] & *v0) + 0x590))();
}

{
  return (*((*MEMORY[0x277D85000] & *v0) + 0x598))();
}

{
  return (*((*MEMORY[0x277D85000] & *v0) + 0x5A0))();
}

{
  return (*((*MEMORY[0x277D85000] & *v0) + 0x5B0))();
}

uint64_t dispatch thunk of Context.perform(nextSnippet:)()
{
  return (*((*MEMORY[0x277D85000] & *v0) + 0x5C0))();
}

{
  return (*((*MEMORY[0x277D85000] & *v0) + 0x5D0))();
}

void sub_26A624398(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_26A84EC38();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_26A6243E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!qword_28157FEB0)
  {
    type metadata accessor for VRXMaterial(255, a2, a3, a4);
    v4 = sub_26A84EC38();
    if (!v5)
    {
      atomic_store(v4, &qword_28157FEB0);
    }
  }
}

void sub_26A62443C(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    OUTLINED_FUNCTION_10_6();
    v5 = sub_26A84EC38();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_26A624498(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFE && *(a1 + 25))
    {
      v2 = *a1 + 253;
    }

    else
    {
      v3 = *(a1 + 24);
      if (v3 <= 2)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_26A6244D8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 24) = -a2;
    }
  }

  return result;
}

double sub_26A624568(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (!a4 || a4 == 2)
  {
  }

  return result;
}

uint64_t sub_26A624590(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_26A84EB68();
    OUTLINED_FUNCTION_10_6();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_4_41(uint64_t a1)
{
  *(v1 + 40) = a1;

  return sub_26A84EC08();
}

uint64_t OUTLINED_FUNCTION_8_38(uint64_t result)
{
  *v1 = result;
  *(result + 24) = v2;
  return result;
}

uint64_t OUTLINED_FUNCTION_10_30()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_11_29()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_16_15(uint64_t a1)
{

  return sub_26A84EBF8();
}

uint64_t OUTLINED_FUNCTION_18_16()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_26_9()
{
  *(v0 - 104) = 0;

  return sub_26A84EBD8();
}

uint64_t OUTLINED_FUNCTION_33_7(uint64_t a1)
{

  return sub_26A84EBE8();
}

uint64_t OUTLINED_FUNCTION_41_8(uint64_t a1, uint64_t a2, ...)
{
  va_start(va, a2);

  return sub_26A53F320(va);
}

uint64_t OUTLINED_FUNCTION_48_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return sub_26A84EC28();
}

uint64_t OUTLINED_FUNCTION_49_3(uint64_t a1, uint64_t a2, uint64_t a3, ...)
{

  return sub_26A61DEB0(a1, a2);
}

void sub_26A624890()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803ABEA0, &qword_26A859E08);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26A86B5E0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AADE0, &unk_26A857190);
  v1 = swift_initStackObject();
  *(v1 + 16) = xmmword_26A857110;
  if (qword_28157E760 != -1)
  {
    OUTLINED_FUNCTION_7_17(&qword_28157E760);
  }

  v2 = OUTLINED_FUNCTION_0_48();
  *(v1 + 48) = 1;
  *(v1 + 56) = 3;
  *(v1 + 64) = 0;
  *(v1 + 72) = 7;
  OUTLINED_FUNCTION_12_25(v2, v3);
  *(inited + 32) = v4;
  *(inited + 40) = xmmword_26A86B5F0;
  *(inited + 56) = xmmword_26A86B5F0;
  v5 = swift_initStackObject();
  *(v5 + 16) = xmmword_26A8570F0;
  v6 = OUTLINED_FUNCTION_0_48();
  *(v5 + 48) = 1;
  *(v5 + 56) = 3;
  OUTLINED_FUNCTION_12_25(v6, v7);
  *(inited + 72) = v8;
  __asm { FMOV            V0.2D, #16.0 }

  *(inited + 80) = _Q0;
  *(inited + 96) = _Q0;
  v186 = _Q0;
  v14 = swift_initStackObject();
  OUTLINED_FUNCTION_6_29(v14, v15, v16, v17, v18, v19, v20, v21, v22, v169, v179, v186, *(&v186 + 1), 3, 6, v23);
  v24 = OUTLINED_FUNCTION_0_48();
  *(v5 + 48) = 1;
  *(v5 + 56) = 11;
  OUTLINED_FUNCTION_12_25(v24, v25);
  *(inited + 120) = 0;
  *(inited + 128) = 0;
  *(inited + 112) = v26;
  *(inited + 136) = xmmword_26A86B600;
  v27 = swift_initStackObject();
  OUTLINED_FUNCTION_14_23(v27, v28, v29, v30, v31, v32, v33, v34, v35, 0x4034000000000000, 0, v187, v195, v36);
  v37 = OUTLINED_FUNCTION_0_48();
  *(v5 + 48) = 1;
  *(v5 + 56) = 11;
  *(v5 + 64) = 0;
  *(v5 + 72) = 7;
  OUTLINED_FUNCTION_12_25(v37, v38);
  *(inited + 160) = 0;
  *(inited + 168) = 0;
  *(inited + 152) = v39;
  *(inited + 176) = v170;
  v40 = swift_initStackObject();
  OUTLINED_FUNCTION_14_23(v40, v41, v42, v43, v44, v45, v46, v47, v48, v170, *(&v170 + 1), v188, v196, v49);
  if (qword_28157E750 != -1)
  {
    swift_once();
  }

  v50 = OUTLINED_FUNCTION_2_17(&qword_281588958);
  *(v5 + 48) = 1;
  *(v5 + 56) = 5;
  *(v5 + 64) = 0;
  *(v5 + 72) = 1;
  OUTLINED_FUNCTION_12_25(v50, v51);
  *(inited + 192) = v52;
  *(inited + 200) = xmmword_26A86B610;
  *(inited + 216) = xmmword_26A86B610;
  v53 = OUTLINED_FUNCTION_9_16();
  OUTLINED_FUNCTION_6_29(v53, v54, v55, v56, v57, v58, v59, v60, v61, v171, v180, v189, v197, v201, v207, v62);
  if (qword_28157E758 != -1)
  {
    OUTLINED_FUNCTION_4_19(&qword_28157E758);
  }

  v63 = OUTLINED_FUNCTION_1_48();
  *(v5 + 48) = 0;
  *(v5 + 56) = 1;
  OUTLINED_FUNCTION_12_25(v63, v64);
  *(inited + 232) = v65;
  __asm { FMOV            V0.2D, #12.0 }

  *(inited + 240) = _Q0;
  *(inited + 256) = _Q0;
  v67 = swift_allocObject();
  OUTLINED_FUNCTION_14_23(v67, v68, v69, v70, v71, v72, v73, v74, v75, v172, v181, v190, v198, v76);
  v77 = OUTLINED_FUNCTION_1_48();
  *(v5 + 48) = 3;
  *(v5 + 56) = 1;
  *(v5 + 64) = 1;
  *(v5 + 72) = 5;
  OUTLINED_FUNCTION_12_25(v77, v78);
  *(inited + 272) = v79;
  *(inited + 280) = 0x4024000000000000;
  __asm { FMOV            V0.2D, #10.0 }

  v202 = _Q0;
  *(inited + 288) = _Q0;
  *(inited + 304) = 0x4024000000000000;
  v81 = OUTLINED_FUNCTION_9_16();
  OUTLINED_FUNCTION_6_29(v81, v82, v83, v84, v85, v86, v87, v88, v89, v173, v182, v191, v199, v202, *(&v202 + 1), v90);
  v91 = OUTLINED_FUNCTION_1_48();
  *(v5 + 48) = 1;
  *(v5 + 56) = 3;
  OUTLINED_FUNCTION_12_25(v91, v92);
  *(inited + 312) = v93;
  *(inited + 320) = v192;
  *(inited + 336) = v192;
  v94 = OUTLINED_FUNCTION_9_16();
  OUTLINED_FUNCTION_6_29(v94, v95, v96, v97, v98, v99, v100, v101, v102, v174, v183, v192, *(&v192 + 1), v203, v208, v103);
  if (qword_28157E738 != -1)
  {
    OUTLINED_FUNCTION_2_19(&qword_28157E738);
  }

  v104 = OUTLINED_FUNCTION_1_48();
  *(v5 + 48) = 1;
  *(v5 + 56) = 3;
  OUTLINED_FUNCTION_12_25(v104, v105);
  *(inited + 352) = v106;
  *(inited + 360) = 0x4024000000000000;
  *(inited + 368) = v204;
  *(inited + 384) = 0x4024000000000000;
  v107 = OUTLINED_FUNCTION_10_13();
  *(v107 + 16) = xmmword_26A8570D0;
  v108 = OUTLINED_FUNCTION_1_48();
  OUTLINED_FUNCTION_12_25(v108, v109);
  *(inited + 392) = v110;
  *(inited + 400) = xmmword_26A86B620;
  *(inited + 416) = xmmword_26A86B620;
  v111 = OUTLINED_FUNCTION_9_16();
  OUTLINED_FUNCTION_6_29(v111, v112, v113, v114, v115, v116, v117, v118, v119, v175, v184, 1, 2, v204, *(&v204 + 1), v120);
  if (qword_28157E780 != -1)
  {
    OUTLINED_FUNCTION_3_20(&qword_28157E780);
  }

  v121 = OUTLINED_FUNCTION_0_48();
  *(v107 + 48) = 1;
  *(v107 + 56) = 3;
  OUTLINED_FUNCTION_12_25(v121, v122);
  *(inited + 432) = v123;
  *(inited + 440) = 0x403C000000000000;
  __asm { FMOV            V0.2D, #28.0 }

  v176 = _Q0;
  *(inited + 448) = _Q0;
  *(inited + 464) = 0x403C000000000000;
  v125 = OUTLINED_FUNCTION_10_13();
  OUTLINED_FUNCTION_2_49(v125, v126, v127, v128, v129, v130, v131, v132, v133, v176, *(&v176 + 1), v134);
  v135 = OUTLINED_FUNCTION_0_48();
  OUTLINED_FUNCTION_12_25(v135, v136);
  *(inited + 472) = v137;
  *(inited + 480) = v177;
  *(inited + 496) = v177;
  v138 = OUTLINED_FUNCTION_10_13();
  OUTLINED_FUNCTION_2_49(v138, v139, v140, v141, v142, v143, v144, v145, v146, v177, *(&v177 + 1), v147);
  if (qword_28157E770 != -1)
  {
    OUTLINED_FUNCTION_6_21(&qword_28157E770);
  }

  v148 = OUTLINED_FUNCTION_0_48();
  OUTLINED_FUNCTION_12_25(v148, v149);
  *(inited + 512) = v150;
  *(inited + 520) = 0x4024000000000000;
  *(inited + 528) = v205;
  *(inited + 544) = 0x4024000000000000;
  v151 = OUTLINED_FUNCTION_9_16();
  OUTLINED_FUNCTION_6_29(v151, v152, v153, v154, v155, v156, v157, v158, v159, v178, v185, v193, v200, v205, *(&v205 + 1), v160);
  v161 = OUTLINED_FUNCTION_0_48();
  *(v107 + 48) = 1;
  *(v107 + 56) = 3;
  OUTLINED_FUNCTION_12_25(v161, v162);
  *(inited + 552) = v163;
  *(inited + 560) = v206;
  *(inited + 576) = v206;
  v164 = OUTLINED_FUNCTION_10_13();
  *(v164 + 16) = v194;
  if (qword_28157E788 != -1)
  {
    swift_once();
  }

  v165 = qword_2815889A8;
  *(v164 + 32) = qword_2815889A8;
  v166 = byte_2815889B0;
  *(v164 + 40) = byte_2815889B0;
  sub_26A4E324C(v165, v166);
  sub_26A621A9C(v164);
  *(inited + 592) = v167;
  *(inited + 600) = 0x402C000000000000;
  *(inited + 608) = xmmword_26A86B630;
  *(inited + 624) = 0x4030000000000000;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B1D80, &qword_26A8593E0);
  sub_26A4E325C();
  v168 = sub_26A8516A8();
  sub_26A80D548(v168, &xmmword_281588758, 16.0, 16.0, 16.0, 16.0);
}

void sub_26A624DC0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803ABEA0, &qword_26A859E08);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26A85C600;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AADE0, &unk_26A857190);
  *(swift_initStackObject() + 16) = xmmword_26A8570D0;
  if (qword_28157E760 != -1)
  {
    OUTLINED_FUNCTION_7_17(&qword_28157E760);
  }

  v1 = OUTLINED_FUNCTION_2_17(&qword_281588978);
  OUTLINED_FUNCTION_12_25(v1, v2);
  *(inited + 32) = v3;
  __asm { FMOV            V0.2D, #8.0 }

  *(inited + 40) = _Q0;
  *(inited + 56) = _Q0;
  v9 = swift_initStackObject();
  OUTLINED_FUNCTION_2_49(v9, v10, v11, v12, v13, v14, v15, v16, v17, v74, v78, v18);
  if (qword_28157E758 != -1)
  {
    OUTLINED_FUNCTION_4_19(&qword_28157E758);
  }

  v19 = OUTLINED_FUNCTION_1_34();
  OUTLINED_FUNCTION_12_25(v19, v20);
  *(inited + 72) = v21;
  __asm { FMOV            V0.2D, #16.0 }

  *(inited + 80) = _Q0;
  *(inited + 96) = _Q0;
  v23 = swift_initStackObject();
  *(v23 + 16) = xmmword_26A8570F0;
  v24 = OUTLINED_FUNCTION_1_34();
  *(v23 + 48) = 0;
  *(v23 + 56) = 1;
  OUTLINED_FUNCTION_12_25(v24, v25);
  *(inited + 112) = v26;
  __asm { FMOV            V0.2D, #12.0 }

  *(inited + 120) = _Q0;
  *(inited + 136) = _Q0;
  v28 = swift_initStackObject();
  OUTLINED_FUNCTION_2_49(v28, v29, v30, v31, v32, v33, v34, v35, v36, 2, 4, v37);
  if (qword_28157E738 != -1)
  {
    OUTLINED_FUNCTION_2_19(&qword_28157E738);
  }

  v38 = OUTLINED_FUNCTION_2_17(&qword_281588938);
  OUTLINED_FUNCTION_12_25(v38, v39);
  *(inited + 152) = v40;
  *(inited + 160) = xmmword_26A86B640;
  *(inited + 176) = xmmword_26A86B640;
  v41 = swift_initStackObject();
  OUTLINED_FUNCTION_2_49(v41, v42, v43, v44, v45, v46, v47, v48, v49, v75, v79, v50);
  if (qword_28157E780 != -1)
  {
    OUTLINED_FUNCTION_3_20(&qword_28157E780);
  }

  v51 = OUTLINED_FUNCTION_2_17(&qword_281588998);
  OUTLINED_FUNCTION_12_25(v51, v52);
  *(inited + 192) = v53;
  __asm { FMOV            V0.2D, #28.0 }

  *(inited + 200) = _Q0;
  *(inited + 216) = _Q0;
  v55 = swift_initStackObject();
  OUTLINED_FUNCTION_2_49(v55, v56, v57, v58, v59, v60, v61, v62, v63, v76, v80, v64);
  if (qword_28157E770 != -1)
  {
    OUTLINED_FUNCTION_6_21(&qword_28157E770);
  }

  v65 = OUTLINED_FUNCTION_1_34();
  OUTLINED_FUNCTION_12_25(v65, v66);
  *(inited + 232) = v67;
  __asm { FMOV            V0.2D, #10.0 }

  *(inited + 240) = _Q0;
  *(inited + 256) = xmmword_26A860600;
  v69 = swift_initStackObject();
  *(v69 + 16) = v77;
  v70 = qword_281588988;
  *(v69 + 32) = qword_281588988;
  v71 = byte_281588990;
  *(v69 + 40) = byte_281588990;
  *(v69 + 48) = 1;
  *(v69 + 56) = 3;
  sub_26A4E324C(v70, v71);
  sub_26A621A9C(v69);
  *(inited + 272) = v72;
  *(inited + 280) = 0x4024000000000000;
  *(inited + 288) = xmmword_26A860690;
  *(inited + 304) = 0x4024000000000000;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B1D80, &qword_26A8593E0);
  sub_26A4E325C();
  v73 = sub_26A8516A8();
  sub_26A80D548(v73, &xmmword_2803D1DE8, 20.0, 20.0, 20.0, 20.0);
}

uint64_t OUTLINED_FUNCTION_0_48()
{
  result = *v1;
  *(v0 + 32) = *v1;
  *(v0 + 40) = *(v1 + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_1_48()
{
  result = *v1;
  *(v0 + 32) = *v1;
  *(v0 + 40) = *(v1 + 8);
  return result;
}

__n128 OUTLINED_FUNCTION_2_49(__n128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a11, uint64_t a9, uint64_t a10, __n128 a12)
{
  result = a12;
  a1[1] = a12;
  return result;
}

void OUTLINED_FUNCTION_12_25(uint64_t a1, char a2)
{
  sub_26A4E324C(a1, a2);

  sub_26A621A9C(v2);
}

__n128 OUTLINED_FUNCTION_14_23(__n128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a13, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, __n128 a14)
{
  result = a14;
  a1[1] = a14;
  return result;
}

uint64_t type metadata accessor for TableRowViewModel(uint64_t a1)
{
  result = qword_281580830;
  if (!qword_281580830)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_26A6251A8(uint64_t a1)
{
  sub_26A84ACC8();
  if (v1 <= 0x3F)
  {
    sub_26A6252B8(319);
    if (v2 <= 0x3F)
    {
      sub_26A625310(319);
      if (v3 <= 0x3F)
      {
        type metadata accessor for TableLayoutManager(319);
        if (v4 <= 0x3F)
        {
          sub_26A538008(319, &qword_2803B1118, &type metadata for RowVerticalAlignment);
          if (v5 <= 0x3F)
          {
            sub_26A538008(319, &qword_2803B0110, MEMORY[0x277D83B88]);
            if (v6 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_26A6252B8(uint64_t a1)
{
  if (!qword_2803B1100)
  {
    type metadata accessor for TableCell(255);
    v1 = sub_26A851B48();
    if (!v2)
    {
      atomic_store(v1, &qword_2803B1100);
    }
  }
}

void sub_26A625310(uint64_t a1)
{
  if (!qword_2803B1108)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B1110, qword_26A86B668);
    v1 = sub_26A852068();
    if (!v2)
    {
      atomic_store(v1, &qword_2803B1108);
    }
  }
}

unint64_t sub_26A625378()
{
  result = qword_281580AB0;
  if (!qword_281580AB0)
  {
    sub_26A84ACC8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281580AB0);
  }

  return result;
}

uint64_t sub_26A6253D0(uint64_t a1, uint64_t a2, double a3)
{
  v7 = type metadata accessor for ResolvedTableLayout(0);
  v8 = v7 - 8;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_41();
  v11 = v10 - v9;
  v12 = type metadata accessor for TableRowViewModel(0);
  v13 = *(v3 + v12[9]);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_26A84EC18();

  v14 = *(v11 + *(v8 + 32));
  OUTLINED_FUNCTION_0_49();
  result = sub_26A625E48(v11, v15);
  if (v13 == 1)
  {
    if (!v14 || !*(v3 + v12[8]))
    {
      swift_beginAccess();
LABEL_11:
      sub_26A69662C(a1, a2, a3);
      return swift_endAccess();
    }

LABEL_10:
    OUTLINED_FUNCTION_3_46();
    goto LABEL_11;
  }

  if (v14 && *(v3 + v12[6]) || (*(v3 + v12[12]) & 1) == 0)
  {
    goto LABEL_10;
  }

  return result;
}

BOOL sub_26A625580()
{
  v2 = type metadata accessor for ResolvedTableLayout(0);
  OUTLINED_FUNCTION_46();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_41();
  v4 = OUTLINED_FUNCTION_6_34();
  if (*(v0 + *(v4 + 36)) == 1 && (v5 = v4, swift_getKeyPath(), KeyPath = swift_getKeyPath(), OUTLINED_FUNCTION_4_42(KeyPath), , , v7 = *(v1 + *(v2 + 24)), OUTLINED_FUNCTION_0_49(), sub_26A625E48(v1, v8), v7 == 1))
  {
    return *(v0 + *(v5 + 32)) != 0;
  }

  else
  {
    return 0;
  }
}

BOOL sub_26A625670()
{
  v2 = type metadata accessor for ResolvedTableLayout(0);
  OUTLINED_FUNCTION_46();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_41();
  v4 = OUTLINED_FUNCTION_6_34();
  if (*(v0 + *(v4 + 36)))
  {
    return 0;
  }

  v5 = v4;
  swift_getKeyPath();
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_4_42(KeyPath);

  v7 = *(v1 + *(v2 + 24));
  OUTLINED_FUNCTION_0_49();
  sub_26A625E48(v1, v8);
  return v7 == 1 && *(v0 + *(v5 + 24)) != 0;
}

double sub_26A62575C()
{
  v2 = type metadata accessor for ResolvedTableLayout(0);
  v3 = v2 - 8;
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_41();
  v4 = OUTLINED_FUNCTION_6_34();
  v5 = *(v0 + v4[9]);
  swift_getKeyPath();
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_4_42(KeyPath);

  v7 = *(v1 + *(v3 + 32));
  OUTLINED_FUNCTION_0_49();
  sub_26A625E48(v1, v8);
  if (v5 != 1 || v7 && *(v0 + v4[8]) || *(v0 + v4[7]))
  {
  }

  return result;
}

uint64_t sub_26A625870()
{
  v1 = type metadata accessor for TableRowViewModel(0);
  v2 = *(v1 + 32);
  if (*(v0 + v2))
  {
    v3 = *(v0 + v2);
  }

  else
  {
    if (*(v0 + *(v1 + 28)))
    {
      v3 = *(v0 + *(v1 + 28));
    }

    else
    {
      v3 = MEMORY[0x277D84F90];
    }
  }

  return v3;
}

uint64_t sub_26A6258D4(uint64_t a1, uint64_t a2)
{
  v44 = a2;
  v3 = type metadata accessor for TableCell(0);
  MEMORY[0x28223BE20](v3);
  v42 = &v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  isUniquelyReferenced_nonNull_native = &v42 - v6;
  MEMORY[0x28223BE20](v8);
  v12 = &v42 - v11;
  v13 = *(a1 + 16);
  v43 = v10;
  if (v13)
  {
    v45 = *(v9 + 24);
    v14 = a1 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
    v15 = MEMORY[0x277D84F98];
    v16 = *(v10 + 72);
    while (1)
    {
      v46 = v13;
      sub_26A625D84(v14, v12, type metadata accessor for TableCell);
      v17 = *(v12 + v45);
      sub_26A625D84(v12, isUniquelyReferenced_nonNull_native, type metadata accessor for TableCell);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v47 = v15;
      v18 = sub_26A5484D4(v17);
      if (__OFADD__(v15[2], (v19 & 1) == 0))
      {
        break;
      }

      v12 = v18;
      v20 = v19;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B1120, &qword_26A86B6F0);
      if (sub_26A8523E8())
      {
        v21 = sub_26A5484D4(v17);
        if ((v20 & 1) != (v22 & 1))
        {
          goto LABEL_29;
        }

        v12 = v21;
      }

      v15 = v47;
      if (v20)
      {
        v23 = OUTLINED_FUNCTION_7_39();
        sub_26A625EA0(v23, v24);
        OUTLINED_FUNCTION_2_50();
      }

      else
      {
        v47[(v12 >> 6) + 8] |= 1 << v12;
        *(v15[6] + 8 * v12) = v17;
        v25 = OUTLINED_FUNCTION_7_39();
        sub_26A625DE4(v25, v26);
        OUTLINED_FUNCTION_2_50();
        v27 = v15[2];
        v28 = __OFADD__(v27, 1);
        v29 = v27 + 1;
        if (v28)
        {
          goto LABEL_28;
        }

        v15[2] = v29;
      }

      v14 += v16;
      v13 = v46 - 1;
      if (v46 == 1)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    result = sub_26A852618();
    __break(1u);
  }

  else
  {
    v15 = MEMORY[0x277D84F98];
LABEL_14:
    v30 = *(v44 + 16);
    if (v30)
    {
      v31 = (v44 + 32);
      v32 = MEMORY[0x277D84F90];
      v34 = v42;
      v33 = v43;
      do
      {
        if (v15[2])
        {
          v35 = sub_26A5484D4(*v31);
          if (v36)
          {
            v37 = *(v33 + 72);
            sub_26A625D84(v15[7] + v37 * v35, v34, type metadata accessor for TableCell);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              sub_26A7A2598();
              v32 = v39;
            }

            v38 = *(v32 + 16);
            if (v38 >= *(v32 + 24) >> 1)
            {
              sub_26A7A2598();
              v32 = v40;
            }

            *(v32 + 16) = v38 + 1;
            sub_26A625DE4(v34, v32 + ((*(v33 + 80) + 32) & ~*(v33 + 80)) + v38 * v37);
          }
        }

        ++v31;
        --v30;
      }

      while (v30);
    }

    else
    {

      return MEMORY[0x277D84F90];
    }

    return v32;
  }

  return result;
}

uint64_t sub_26A625C60@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_26A84ACC8();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_26A625CEC(uint64_t a1)
{
  v2 = type metadata accessor for ResolvedTableLayout(0);
  MEMORY[0x28223BE20](v2 - 8);
  OUTLINED_FUNCTION_41();
  v5 = v4 - v3;
  sub_26A625D84(a1, v4 - v3, type metadata accessor for ResolvedTableLayout);
  return sub_26A73AF84(v5);
}

uint64_t sub_26A625D84(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_46();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_26A625DE4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TableCell(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_26A625E48(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_46();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_26A625EA0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TableCell(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t OUTLINED_FUNCTION_2_50()
{

  return sub_26A625E48(v0, type metadata accessor for TableCell);
}

uint64_t OUTLINED_FUNCTION_3_46()
{

  return swift_beginAccess();
}

void *OUTLINED_FUNCTION_4_42(uint64_t a1)
{

  return sub_26A84EC18();
}

uint64_t OUTLINED_FUNCTION_6_34()
{

  return type metadata accessor for TableRowViewModel(0);
}

uint64_t type metadata accessor for ButtonLayout(uint64_t a1)
{
  result = qword_2803B1128;
  if (!qword_2803B1128)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_26A626034(uint64_t a1)
{
  sub_26A84E158();
  if (v1 <= 0x3F)
  {
    sub_26A586908(319);
    if (v2 <= 0x3F)
    {
      type metadata accessor for ActionHandler(319);
      if (v3 <= 0x3F)
      {
        sub_26A6260E8(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_26A6260E8(uint64_t a1)
{
  if (!qword_2803B1138)
  {
    type metadata accessor for ActionTapThrottler();
    sub_26A627444(&qword_2803B1140, type metadata accessor for ActionTapThrottler, &unk_26A888834);
    v1 = sub_26A84EF08();
    if (!v2)
    {
      atomic_store(v1, &qword_2803B1138);
    }
  }
}

uint64_t sub_26A626198()
{
  type metadata accessor for ActionTapThrottler();
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = 0x3FE0000000000000;
  return result;
}

uint64_t sub_26A62638C@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for ButtonLayout(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  sub_26A626EBC(v1, &v16[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)]);
  v6 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v7 = swift_allocObject();
  sub_26A626F20(&v16[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)], v7 + v6);
  v17 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B1148, &qword_26A86B758);
  sub_26A4DBCC8(&qword_2803B1150, &qword_2803B1148, &qword_26A86B758, MEMORY[0x277CDEFF0]);
  v8 = sub_26A8510D8();
  v9 = sub_26A6261CC(v8);
  KeyPath = swift_getKeyPath();
  v11 = swift_allocObject();
  *(v11 + 16) = v9 & 1;
  v12 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B1158, &qword_26A86B790) + 36));
  *v12 = KeyPath;
  v12[1] = sub_26A626FF8;
  v12[2] = v11;
  v13 = swift_getKeyPath();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B1160, &qword_26A86B7C0);
  v15 = a1 + *(result + 36);
  *v15 = 0;
  *(v15 + 8) = v13;
  *(v15 + 16) = 0;
  return result;
}

uint64_t sub_26A6265A0(uint64_t a1)
{
  v2 = type metadata accessor for ButtonLayout(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  type metadata accessor for ActionTapThrottler();
  sub_26A627444(&qword_2803B1140, type metadata accessor for ActionTapThrottler, &unk_26A888834);
  sub_26A84EEF8();
  sub_26A626EBC(a1, &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v6 = swift_allocObject();
  sub_26A626F20(&v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v6 + v5);
  sub_26A80B4C4(sub_26A6273B8, v6);
}

uint64_t sub_26A626724(uint64_t a1)
{
  type metadata accessor for TextPropertyView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B1168, &qword_26A86B7C8);
  sub_26A627444(&qword_2803AB1C0, type metadata accessor for TextPropertyView, &protocol conformance descriptor for TextPropertyView);
  sub_26A627020();
  return sub_26A850FC8();
}

uint64_t sub_26A626804@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_26A84B888();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v10 - v7;
  sub_26A84E108();
  (*(v3 + 16))(v5, v8, v2);
  TextPropertyView.init(_:)(v5, a1);
  return (*(v3 + 8))(v8, v2);
}

uint64_t sub_26A626920@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_26A84BD28();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AAD50, &unk_26A857890);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v12 - v7;
  sub_26A84E148();
  if (__swift_getEnumTagSinglePayload(v8, 1, v2) == 1)
  {
    sub_26A576F4C(v8, &qword_2803AAD50, &unk_26A857890);
    v9 = 1;
  }

  else
  {
    (*(v3 + 16))(v5, v8, v2);
    VisualPropertyView.init(_:)(v5, a1);
    (*(v3 + 8))(v8, v2);
    v9 = 0;
  }

  v10 = type metadata accessor for VisualPropertyView(0);
  return __swift_storeEnumTagSinglePayload(a1, v9, 1, v10);
}

uint64_t sub_26A626AC0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B3800, &unk_26A856760);
  MEMORY[0x28223BE20](v2 - 8);
  v34 = &v33 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B3910, &qword_26A855580);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v33 - v8;
  v10 = sub_26A84B8A8();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v33 - v15;
  v17 = type metadata accessor for ButtonLayout(0);
  v18 = (a1 + *(v17 + 20));
  if (*v18)
  {
    (*v18)();
  }

  sub_26A84E0B8();
  (*(v11 + 104))(v13, *MEMORY[0x277D62E20], v10);
  sub_26A627444(&qword_2803B1178, MEMORY[0x277D62E28], MEMORY[0x277D62E30]);
  sub_26A851A48();
  sub_26A851A48();
  v19 = *(v11 + 8);
  v19(v13, v10);
  v19(v16, v10);
  v21 = v35;
  v20 = v36;
  v22 = a1 + *(v17 + 24);
  v23 = v22 + *(type metadata accessor for ActionHandler(0) + 44);
  if (v20 == v21)
  {
    sub_26A5925C0(v23, v9);
    v24 = type metadata accessor for StandardActionHandler(0);
    if (__swift_getEnumTagSinglePayload(v9, 1, v24) == 1)
    {
      v25 = v9;
      return sub_26A576F4C(v25, &qword_2803B3910, &qword_26A855580);
    }

    v28 = v34;
    sub_26A84E138();
    v29 = sub_26A84BAB8();
    __swift_storeEnumTagSinglePayload(v28, 0, 1, v29);
    LOBYTE(v36) = 1;
    StandardActionHandler.submitForm(using:interactionType:)(v28, &v36);
    sub_26A576F4C(v28, &qword_2803B3800, &unk_26A856760);
    v30 = v9;
  }

  else
  {
    sub_26A5925C0(v23, v6);
    v26 = type metadata accessor for StandardActionHandler(0);
    if (__swift_getEnumTagSinglePayload(v6, 1, v26) == 1)
    {
      v25 = v6;
      return sub_26A576F4C(v25, &qword_2803B3910, &qword_26A855580);
    }

    v31 = v34;
    sub_26A84E138();
    v32 = sub_26A84BAB8();
    __swift_storeEnumTagSinglePayload(v31, 0, 1, v32);
    LOBYTE(v36) = 1;
    StandardActionHandler.perform(_:interactionType:)();
    sub_26A576F4C(v31, &qword_2803B3800, &unk_26A856760);
    v30 = v6;
  }

  return sub_26A592630(v30);
}

uint64_t sub_26A626EBC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ButtonLayout(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26A626F20(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ButtonLayout(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_26A626FA4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_26A6C9194();
  *a1 = result;
  return result;
}

unint64_t sub_26A627020()
{
  result = qword_2803B1170;
  if (!qword_2803B1170)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B1168, &qword_26A86B7C8);
    sub_26A627444(&qword_28157E9E0, type metadata accessor for VisualPropertyView, &protocol conformance descriptor for VisualPropertyView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B1170);
  }

  return result;
}

uint64_t objectdestroyTm_15()
{
  v1 = type metadata accessor for ButtonLayout(0);
  v2 = v0 + ((*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80));
  sub_26A84E158();
  OUTLINED_FUNCTION_4_11();
  (*(v3 + 8))(v2);
  if (*(v2 + v1[5]))
  {
  }

  v4 = v2 + v1[6];
  sub_26A556DF4(*v4, *(v4 + 8), *(v4 + 16));
  sub_26A49035C(*(v4 + 24), *(v4 + 32));
  v5 = type metadata accessor for ActionHandler(0);
  v6 = v5[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A93D0, &qword_26A856F10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_26A84E408();
    if (!__swift_getEnumTagSinglePayload(v4 + v6, 1, v7))
    {
      OUTLINED_FUNCTION_4_11();
      (*(v8 + 8))(v4 + v6, v7);
    }
  }

  else
  {
  }

  sub_26A556DF4(*(v4 + v5[7]), *(v4 + v5[7] + 8), *(v4 + v5[7] + 16));
  sub_26A49035C(*(v4 + v5[8]), *(v4 + v5[8] + 8));
  sub_26A49035C(*(v4 + v5[9]), *(v4 + v5[9] + 8));
  v9 = v4 + v5[10];
  if (*(v9 + 9))
  {
    if ((*(v9 + 8) & 1) == 0)
    {
      MEMORY[0x26D665710](v4 + v5[10]);
    }
  }

  else
  {
  }

  MEMORY[0x26D665710](v9 + 16);
  v10 = v4 + v5[11];
  v11 = type metadata accessor for StandardActionHandler(0);
  if (!__swift_getEnumTagSinglePayload(v10, 1, v11))
  {
    MEMORY[0x26D665710](v10);
    v12 = *(v11 + 24);
    v13 = sub_26A84E408();
    if (!__swift_getEnumTagSinglePayload(v10 + v12, 1, v13))
    {
      OUTLINED_FUNCTION_4_11();
      (*(v14 + 8))(v10 + v12, v13);
    }
  }

  sub_26A492280(*(v2 + v1[7]), *(v2 + v1[7] + 8));

  return swift_deallocObject();
}

uint64_t sub_26A6273D0(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for ButtonLayout(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t sub_26A627444(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_26A62748C()
{
  result = qword_2803B1180;
  if (!qword_2803B1180)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B1160, &qword_26A86B7C0);
    sub_26A627518();
    sub_26A6275FC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B1180);
  }

  return result;
}

unint64_t sub_26A627518()
{
  result = qword_2803B1188;
  if (!qword_2803B1188)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B1158, &qword_26A86B790);
    sub_26A4DBCC8(&qword_2803B1190, &qword_2803B1198, &unk_26A87AF70, MEMORY[0x277CDF028]);
    sub_26A4DBCC8(&qword_2803B11A0, &qword_2803B11A8, &unk_26A86B7D0, MEMORY[0x277CE08A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B1188);
  }

  return result;
}

unint64_t sub_26A6275FC()
{
  result = qword_2803B11B0;
  if (!qword_2803B11B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B11B0);
  }

  return result;
}

id sub_26A627650@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v70 = a2;
  sub_26A84B2E8();
  OUTLINED_FUNCTION_15();
  v63 = v4;
  v64 = v3;
  MEMORY[0x28223BE20](v3);
  v60 = &v58 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = sub_26A850F68();
  OUTLINED_FUNCTION_15();
  v65 = v6;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v9);
  v68 = &v58 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v58 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AF0D0, &qword_26A872080);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v58 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v58 - v17;
  v19 = sub_26A84AB98();
  OUTLINED_FUNCTION_15();
  v69 = v20;
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v23);
  v66 = &v58 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v26 = &v58 - v25;
  MEMORY[0x28223BE20](v27);
  v29 = &v58 - v28;
  MEMORY[0x28223BE20](v30);
  v32 = &v58 - v31;
  v62 = *a1;
  HIDWORD(v61) = *(a1 + 8);
  sub_26A67C224(v71);
  if (!v33)
  {
    goto LABEL_5;
  }

  sub_26A84AB88();

  OUTLINED_FUNCTION_17_13(v18);
  if (v34)
  {
    sub_26A4E2544(v18, &qword_2803AF0D0, &qword_26A872080);
LABEL_5:
    v35 = v71;
    v36 = sub_26A851E98();
    LOBYTE(v57) = 2;
    result = sub_26A7A96A8(v36, 1, "SnippetUI/RFURLImage+FormattedTextView.swift", 44, 2, 17, "asFormattedTextRun(engageable:)", 31, v57, v35, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73);
    v38 = v70;
    *(v70 + 32) = 0;
    *v38 = 0u;
    *(v38 + 16) = 0u;
    *(v38 + 40) = -256;
    return result;
  }

  v59 = *(v69 + 32);
  v59(v32, v18, v19);
  sub_26A67C230(v71);
  if (!v39)
  {
    __swift_storeEnumTagSinglePayload(v15, 1, 1, v19);
LABEL_10:
    (*(v69 + 16))(v29, v32, v19);
    OUTLINED_FUNCTION_17_13(v15);
    if (!v34)
    {
      sub_26A4E2544(v15, &qword_2803AF0D0, &qword_26A872080);
    }

    goto LABEL_12;
  }

  sub_26A84AB88();

  OUTLINED_FUNCTION_17_13(v15);
  if (v34)
  {
    goto LABEL_10;
  }

  v59(v29, v15, v19);
LABEL_12:
  v40 = [v71 image_rendering_mode];
  v41 = v60;
  v42 = sub_26A5AB214(v40);
  sub_26A5B8444(v42);
  (*(v63 + 8))(v41, v64);
  v58 = v26;
  v43 = v26;
  v44 = v59;
  v59(v43, v32, v19);
  v44(v66, v29, v19);
  v45 = v65 + 32;
  v65 = *(v65 + 32);
  (v65)(v68, v12, v67);
  v46 = *(v69 + 80);
  v47 = (v46 + 16) & ~v46;
  v48 = (v22 + v46 + v47) & ~v46;
  v49 = (v22 + v48 + 7) & 0xFFFFFFFFFFFFFFF8;
  v50 = (*(v45 + 48) + v49 + 9) & ~*(v45 + 48);
  v51 = swift_allocObject();
  v44(v51 + v47, v58, v19);
  v44(v51 + v48, v66, v19);
  v52 = v51 + v49;
  v53 = v62;
  *v52 = v62;
  LOWORD(v49) = WORD2(v61);
  *(v52 + 8) = BYTE4(v61);
  (v65)(v51 + v50, v68, v67);
  v54 = swift_allocObject();
  v55 = v70;
  *(v54 + 16) = v71;
  *(v54 + 24) = v53;
  *(v54 + 32) = v49;
  *v55 = sub_26A628358;
  *(v55 + 8) = v51;
  *(v55 + 16) = sub_26A628464;
  *(v55 + 24) = v54;
  *(v55 + 32) = v53;
  *(v55 + 40) = v49 | 0x200;
  sub_26A5065CC(v53, v49);
  sub_26A5065CC(v53, v49);
  sub_26A5065CC(v53, v49);
  v56 = v71;

  return v56;
}

void sub_26A627C50(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, int a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v32 = a6;
  v33 = a4;
  v34 = a5;
  v30 = a2;
  v31 = a3;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AC918, &qword_26A85DBA0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v29 - v10;
  v12 = sub_26A84EE68();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_26A84AB98();
  v17 = *(v16 - 8);
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v29 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 104))(v15, *MEMORY[0x277CDF3D0], v12, v18);
  v21 = sub_26A84EE58();
  (*(v13 + 8))(v15, v12);
  if (v21)
  {
    v22 = v30;
  }

  else
  {
    v22 = v31;
  }

  (*(v17 + 16))(v20, v22, v16);
  v23 = *(a1 + *(type metadata accessor for LoadableText.Context(0) + 20));
  v24 = sub_26A850F68();
  (*(*(v24 - 8) + 16))(v11, v32, v24);
  __swift_storeEnumTagSinglePayload(v11, 0, 1, v24);
  (*(v17 + 32))(a7, v20, v16);
  v25 = type metadata accessor for LoadableText.Source.URLImage(0);
  v26 = (a7 + v25[5]);
  *v26 = 0;
  v26[1] = 0;
  *(a7 + v25[6]) = v23;
  v27 = a7 + v25[7];
  v28 = v33;
  *v27 = v33;
  LOBYTE(v24) = v34;
  *(v27 + 8) = v34;
  sub_26A628470(v11, a7 + v25[8]);
  type metadata accessor for LoadableText.Source(0);
  swift_storeEnumTagMultiPayload();
  sub_26A5065CC(v28, v24);
}

uint64_t sub_26A627F88(uint64_t a1)
{
  v2 = v1;
  v25[0] = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AF0C0, &unk_26A87C580);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v25 - v4;
  v6 = sub_26A84B2B8();
  v7 = *(v6 - 8);
  *&v8 = MEMORY[0x28223BE20](v6).n128_u64[0];
  v10 = v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = [v1 symbol:v8 placeholder:?image];
  if (!v11 || (v12 = v11, v13 = sub_26A51D368(), v15 = v14, v12, !v15))
  {
    v16 = [v2 aspect_ratio];
    if (v16)
    {
      v17 = v16;
      sub_26A7DC2F4(v5);

      if (__swift_getEnumTagSinglePayload(v5, 1, v6) != 1)
      {
        (*(v7 + 32))(v10, v5, v6);
        sub_26A84B278();
        if (v18 > 1.0)
        {
          sub_26A84B288();
          if (v19 > 1.0)
          {
            sub_26A84B278();
            v21 = v20;
            v22 = *(v25[0] + *(type metadata accessor for LoadableText.Context(0) + 20));
            sub_26A84B288();
            v13 = sub_26A628248(v21 / v22, v23 / v22);
            (*(v7 + 8))(v10, v6);
            return v13;
          }
        }

        (*(v7 + 8))(v10, v6);
        return sub_26A628248(14.0, 14.0);
      }
    }

    else
    {
      __swift_storeEnumTagSinglePayload(v5, 1, 1, v6);
    }

    sub_26A4E2544(v5, &qword_2803AF0C0, &unk_26A87C580);
    return sub_26A628248(14.0, 14.0);
  }

  return v13;
}

uint64_t sub_26A628248(double a1, double a2)
{
  v2 = sub_26A84FA98();
  v3 = MEMORY[0x28223BE20](v2);
  (*(v5 + 104))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x277CE00F0], v3);
  sub_26A850F78();
  return sub_26A8508A8();
}

void sub_26A628358(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(sub_26A84AB98() - 8);
  v6 = *(v5 + 80);
  v7 = (v6 + 16) & ~v6;
  v8 = *(v5 + 64);
  v9 = (v8 + v6 + v7) & ~v6;
  v10 = (v8 + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = *(sub_26A850F68() - 8);
  v12 = *(v2 + v10);
  v13 = *(v2 + v10 + 8);
  v14 = v2 + ((*(v11 + 80) + v10 + 9) & ~*(v11 + 80));

  sub_26A627C50(a1, v2 + v7, v2 + v9, v12, v13, v14, a2);
}

uint64_t sub_26A628470(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AC918, &qword_26A85DBA0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

_BYTE *storeEnumTagSinglePayload for ColumnHorizontalAlignment(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_26A6285C0()
{
  result = qword_2803B11B8;
  if (!qword_2803B11B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B11B8);
  }

  return result;
}

uint64_t sub_26A628614(unsigned int a1)
{
  if (a1 >= 4)
  {
    return 3;
  }

  else
  {
    return 0x2010003u >> (8 * a1);
  }
}

uint64_t sub_26A628634(uint64_t result, unsigned __int8 a2, uint64_t a3)
{
  if (a3 < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = a3;
    v5 = result;
    result = MEMORY[0x277D84F90];
    if (a3)
    {
      v12 = MEMORY[0x277D84F90];
      sub_26A7DCD20(0, a3, 0);
      result = v12;
      v6 = *(v12 + 16);
      v7 = v5;
      do
      {
        v9 = v7-- != 0;
        if ((a2 | v9))
        {
          v10 = 0.0;
        }

        else
        {
          v10 = 1.0;
        }

        v13 = result;
        v11 = *(result + 24);
        if (v6 >= v11 >> 1)
        {
          sub_26A7DCD20(v11 > 1, v6 + 1, 1);
          result = v13;
        }

        *(result + 16) = v6 + 1;
        *(result + 8 * v6++ + 32) = v10;
        --v3;
      }

      while (v3);
    }
  }

  return result;
}

uint64_t sub_26A628738()
{
  result = Color.init(hex:)(0x39363936413623, 0xE700000000000000);
  if (!result)
  {
    result = sub_26A850E18();
  }

  qword_2803D1E28 = result;
  return result;
}

uint64_t sub_26A6287A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 == a3 && a2 == a4)
  {
    return 1;
  }

  else
  {
    return sub_26A852598();
  }
}

uint64_t sub_26A6287C4(uint64_t a1, uint64_t a2)
{
  sub_26A8526B8();
  sub_26A851848();
  return sub_26A8526F8();
}

uint64_t sub_26A628814(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a1 == a3)
  {
    return sub_26A756E44(a2, a4);
  }

  else
  {
    return 0;
  }
}

void sub_26A628830(uint64_t a1, uint64_t a2, uint64_t a3)
{
  MEMORY[0x26D664930](a2);

  sub_26A75925C(a1, a3);
}

uint64_t sub_26A628874(uint64_t a1, uint64_t a2)
{
  sub_26A8526B8();
  MEMORY[0x26D664930](a1);
  sub_26A75925C(v5, a2);
  return sub_26A8526F8();
}

uint64_t sub_26A6288D4(uint64_t a1)
{
  sub_26A8526B8();
  MEMORY[0x26D664930](a1);
  return sub_26A8526F8();
}

uint64_t sub_26A62892C(uint64_t a1)
{
  sub_26A8526B8();
  sub_26A851848();
  return sub_26A8526F8();
}

uint64_t sub_26A628998(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  sub_26A8526B8();
  MEMORY[0x26D664930](v2);
  sub_26A75925C(v5, v3);
  return sub_26A8526F8();
}

uint64_t sub_26A628A14(uint64_t a1)
{
  v2 = *v1;
  sub_26A8526B8();
  MEMORY[0x26D664930](v2);
  return sub_26A8526F8();
}

uint64_t sub_26A628A64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v116 = a5;
  v115 = a4;
  v117 = a3;
  v121 = a2;
  v103 = sub_26A84F4A8();
  OUTLINED_FUNCTION_15();
  v97[0] = v6;
  MEMORY[0x28223BE20](v7);
  v102 = v97 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_26A850758();
  OUTLINED_FUNCTION_15();
  v100 = v10;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_10_5();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_10_5();
  MEMORY[0x28223BE20](v13);
  v15 = v97 - v14;
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB498, &unk_26A8589B0);
  OUTLINED_FUNCTION_46();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_10_5();
  MEMORY[0x28223BE20](v17);
  v19 = v97 - v18;
  v20 = sub_26A850798();
  OUTLINED_FUNCTION_15();
  v22 = v21;
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_10_5();
  MEMORY[0x28223BE20](v24);
  v106 = v97 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB4A0, &qword_26A858C10);
  OUTLINED_FUNCTION_46();
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_10_5();
  MEMORY[0x28223BE20](v28);
  v30 = v97 - v29;
  v31 = sub_26A8507A8();
  OUTLINED_FUNCTION_46();
  v98 = *(v32 + 16);
  v97[2] = v32 + 16;
  v98(v30, a1, v31);
  v99 = v26;
  v33 = *(v26 + 36);
  v34 = sub_26A62AAD0(&qword_28157FB18, MEMORY[0x277CE0B80], MEMORY[0x277CE0B98]);
  *&v111 = v30;
  v101 = a1;
  sub_26A851D88();
  v97[1] = 0;
  v109 = (v22 + 16);
  v108 = (v22 + 8);
  v125 = (v100 + 16);
  v35 = MEMORY[0x277D84F90];
  v124 = (v100 + 8);
  v118 = v9;
  v112 = v31;
  v113 = v34;
  v104 = v33;
  v119 = v20;
  while (1)
  {
    v36 = v111;
    sub_26A851DD8();
    if (*(v33 + v36) == v129)
    {
      break;
    }

    v37 = sub_26A851E18();
    *&v120 = v35;
    v38 = *v109;
    v39 = v106;
    (*v109)(v106);
    v37(&v129, 0);
    sub_26A851DE8();
    (v38)(v19, v39, v119);
    v35 = v120;
    v20 = v119;
    v40 = *(v110 + 36);
    OUTLINED_FUNCTION_3_47();
    sub_26A62AAD0(&qword_28157FB20, v41, MEMORY[0x277CE0B78]);
    sub_26A851D88();
    (*v108)(v39, v20);
LABEL_4:
    *&v120 = v35 + 40;
LABEL_5:
    while (1)
    {
      sub_26A851DD8();
      if (*&v19[v40] == v129)
      {
        break;
      }

      v42 = sub_26A851E18();
      (*v125)(v15);
      v42(&v129, 0);
      sub_26A851DE8();
      sub_26A62A9E0();
      sub_26A850768();
      (*v124)(v15, v9);
      v43 = v130;
      if (v130)
      {
        v44 = v129;
        v45 = v35;
        v46 = *(v35 + 16) + 1;
        v47 = v120;
        while (--v46)
        {
          if (*(v47 - 1) != v44 || v43 != *v47)
          {
            v47 += 2;
            if ((sub_26A852598() & 1) == 0)
            {
              continue;
            }
          }

          v9 = v118;
          v35 = v45;
          v20 = v119;
          goto LABEL_5;
        }

        v49 = v45;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_26A7A110C();
          v49 = v54;
        }

        v9 = v118;
        v20 = v119;
        v50 = v49;
        v51 = *(v49 + 16);
        v52 = v50;
        if (v51 >= *(v50 + 24) >> 1)
        {
          sub_26A7A110C();
          v52 = v55;
        }

        *(v52 + 16) = v51 + 1;
        v53 = v52 + 16 * v51;
        v35 = v52;
        *(v53 + 32) = v44;
        *(v53 + 40) = v43;
        goto LABEL_4;
      }
    }

    sub_26A4DBD10(v19, &qword_2803AB498, &unk_26A8589B0);
    v33 = v104;
  }

  v56 = sub_26A4DBD10(v36, &qword_2803AB4A0, &qword_26A858C10);
  MEMORY[0x28223BE20](v56);
  v97[-2] = v101;
  v57 = sub_26A7EC4D0(sub_26A62AA34, &v97[-4], v35);

  v106 = v57;
  v58 = *(v57 + 16);
  if (v58)
  {
    OUTLINED_FUNCTION_6_35();
    v60 = (v106 + 32);
    v61 = (v97[0] + 8);
    v120 = xmmword_26A86B870;
    v111 = xmmword_26A86B880;
    do
    {
      v129 = *v60;
      v130 = v120;
      v131 = v111;
      MEMORY[0x28223BE20](v59);
      v97[-2] = &v129;

      sub_26A850558();

      if (qword_2803A8C50 != -1)
      {
        swift_once();
      }

      sub_26A850E68();
      v62 = v102;
      sub_26A84F498();
      sub_26A84F428();

      sub_26A59DFE8(&v128);
      v59 = (*v61)(v62, v103);
      ++v60;
      --v58;
    }

    while (v58);
  }

  v63 = v105;
  v98(v105, v101, v112);
  *&v111 = *(v99 + 36);
  sub_26A851D88();
  v64 = (v100 + 32);
  v104 = (v117 + 32);
  *&v120 = v117 + 40;
  v65 = v118;
  v66 = v114;
LABEL_27:
  sub_26A851DD8();
  if (*(v63 + v111) == v126)
  {
    return sub_26A4DBD10(v63, &qword_2803AB4A0, &qword_26A858C10);
  }

  v106 = sub_26A851E18();
  v67 = *v109;
  (*v109)(v107);
  (v106)(&v126, 0);
  sub_26A851DE8();
  v68 = v107;
  (v67)(v122, v107, v20);
  v69 = *(v110 + 36);
  OUTLINED_FUNCTION_3_47();
  sub_26A62AAD0(&qword_28157FB20, v70, MEMORY[0x277CE0B78]);
  sub_26A851D88();
  (*v108)(v68, v20);
  v71 = v104;
  while (1)
  {
    while (1)
    {
      v72 = v122;
      sub_26A851DD8();
      if (*(v72 + v69) == v126)
      {
        sub_26A4DBD10(v72, &qword_2803AB498, &unk_26A8589B0);
        v63 = v105;
        goto LABEL_27;
      }

      v73 = sub_26A851E18();
      (*v125)(v66);
      v73(&v126, 0);
      sub_26A851DE8();
      v74 = v123;
      (*v64)(v123, v66, v65);
      sub_26A4F5D20();
      sub_26A850768();
      result = v127;
      if (!v127)
      {
        OUTLINED_FUNCTION_6_35();
        goto LABEL_59;
      }

      v76 = v126;
      v77 = *(v117 + 16);
      if (!v77)
      {
        if (v116)
        {
          goto LABEL_56;
        }

        goto LABEL_57;
      }

      v78 = *v71;
      v79 = v77 - 1;
      if (v77 != 1)
      {
        break;
      }

      if (v116)
      {
        if (v78 <= 0.0)
        {
          goto LABEL_56;
        }

        goto LABEL_52;
      }

LABEL_57:

      if (v76 == v115)
      {
        goto LABEL_58;
      }

LABEL_61:
      OUTLINED_FUNCTION_6_35();
      v126 = *v94;

      sub_26A84F4B8();
      v95 = v123;
      sub_26A84F408();
      v96 = v95;
      v66 = v114;
      (*v124)(v96, v65);
    }

    v80 = v120;
    v81 = v77 - 1;
    v82 = *v71;
    do
    {
      v83 = *v80++;
      v84 = v83;
      if (v82 < v83)
      {
        v82 = v84;
      }

      --v81;
    }

    while (v81);
    v85 = v120;
    v86 = v77 - 1;
    v87 = *v71;
    if ((v116 & 1) == 0)
    {
      goto LABEL_57;
    }

    do
    {
      v88 = *v85++;
      v89 = v88;
      if (v87 < v88)
      {
        v87 = v89;
      }

      --v86;
    }

    while (v86);
    if (v87 <= 0.0)
    {
LABEL_56:

      goto LABEL_58;
    }

    v90 = v120;
    do
    {
      v91 = *v90++;
      v92 = v91;
      if (v78 < v91)
      {
        v78 = v92;
      }

      --v79;
    }

    while (v79);
LABEL_52:
    if (v78 <= 0.0)
    {

      goto LABEL_61;
    }

    if (v126 >= v77)
    {
      break;
    }

    v93 = v71[v126];

    if (v93 <= 0.0)
    {
      goto LABEL_61;
    }

LABEL_58:
    OUTLINED_FUNCTION_6_35();
    v74 = v123;
LABEL_59:
    sub_26A84F408();
    (*v124)(v74, v65);
  }

  __break(1u);
  return result;
}

uint64_t sub_26A62988C@<X0>(uint64_t *a1@<X0>, void (**a2)(char *, uint64_t)@<X1>, uint64_t a3@<X8>)
{
  v112 = a2;
  v83[0] = a3;
  v114 = sub_26A850758();
  v110 = *(v114 - 8);
  MEMORY[0x28223BE20](v114);
  v105 = v83 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = v83 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B1208, &qword_26A86BBA8);
  MEMORY[0x28223BE20](v8 - 8);
  v109 = v83 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v108 = v83 - v11;
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B1210, &qword_26A86BBB0);
  MEMORY[0x28223BE20](v95);
  v94 = v83 - v12;
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B1218, &qword_26A86BBB8);
  MEMORY[0x28223BE20](v93);
  v14 = v83 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B1220, &qword_26A86BBC0);
  MEMORY[0x28223BE20](v15 - 8);
  v92 = v83 - v16;
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B1228, &qword_26A86BBC8);
  MEMORY[0x28223BE20](v103);
  v91 = v83 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v102 = v83 - v19;
  v20 = sub_26A850798();
  v107 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v90 = v83 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v101 = v83 - v23;
  v24 = sub_26A8507A8();
  v25 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v27 = v83 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB4A0, &qword_26A858C10);
  v29 = v28 - 8;
  v30 = MEMORY[0x28223BE20](v28);
  v32 = v83 - v31;
  v33 = a1[1];
  v88 = *a1;
  v99 = v33;
  (*(v25 + 16))(v27, v112, v24, v30);
  v34 = MEMORY[0x277CE0B80];
  sub_26A62AAD0(&qword_2803B1230, MEMORY[0x277CE0B80], MEMORY[0x277CE0B90]);
  sub_26A851998();
  v35 = &v32[*(v29 + 44)];
  v36 = v34;
  v37 = v7;
  v38 = sub_26A62AAD0(&qword_28157FB18, v36, MEMORY[0x277CE0B98]);
  v39 = v32;
  v87 = (v107 + 16);
  v86 = (v107 + 32);
  v111 = (v110 + 2);
  v112 = (v110 + 1);
  v110 += 4;
  v84 = MEMORY[0x277D84F90];
  v40 = *MEMORY[0x277CBF398];
  v41 = *(MEMORY[0x277CBF398] + 8);
  v85 = (v107 + 8);
  v42 = *(MEMORY[0x277CBF398] + 16);
  v43 = *(MEMORY[0x277CBF398] + 24);
  v104 = v7;
  v100 = v24;
  v89 = v32;
  v96 = v35;
  v98 = v38;
  while (1)
  {
    sub_26A851DD8();
    if (*v35 == *&v113.origin.x)
    {
      break;
    }

    v44 = sub_26A851E18();
    v45 = v102;
    v107 = *v87;
    v46 = v101;
    v107(v101);
    v44(&v113, 0);
    sub_26A851DE8();
    v47 = v92;
    (v107)(v92, v46, v20);
    v48 = swift_allocObject();
    v49 = v99;
    *(v48 + 16) = v88;
    *(v48 + 24) = v49;
    v107 = *v86;
    (v107)(v45, v47, v20);
    v50 = v95;
    v51 = (v45 + *(v95 + 36));
    *v51 = sub_26A62AA58;
    v51[1] = v48;
    v52 = (v45 + *(v103 + 44));
    *v52 = sub_26A62A51C;
    v52[1] = 0;
    v53 = v91;
    sub_26A62AA60(v45, v91);
    v54 = v94;
    sub_26A544EC8(v53, v94, &qword_2803B1210, &qword_26A86BBB0);
    (v107)(v90, v54, v20);
    v97 = MEMORY[0x277CE0B68];
    sub_26A62AAD0(&qword_2803B1238, MEMORY[0x277CE0B68], MEMORY[0x277CE0B70]);

    sub_26A851998();
    v55 = v54 + *(v50 + 36);
    v56 = *v55;
    v57 = *(v55 + 8);
    v58 = &v14[*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803B1240, &unk_26A86BBD0) + 36)];
    *v58 = v56;
    *(v58 + 1) = v57;
    v59 = (v53 + *(v103 + 44));
    v60 = *v59;
    v61 = v59[1];
    v62 = &v14[*(v93 + 44)];
    v106 = v61;
    v107 = v60;
    *v62 = v60;
    *(v62 + 1) = v61;
    v63 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB498, &unk_26A8589B0) + 36);
    sub_26A62AAD0(&qword_28157FB20, v97, MEMORY[0x277CE0B78]);
    x = v40;
    y = v41;
    width = v42;
    for (i = v43; ; i = v116.size.height)
    {
      while (1)
      {
        sub_26A851DD8();
        if (*&v14[v63] == *&v113.origin.x)
        {
          v70 = 1;
          v69 = v114;
          v71 = v108;
          goto LABEL_9;
        }

        v68 = sub_26A851E18();
        v69 = v114;
        (*v111)(v37);
        v68(&v113, 0);
        sub_26A851DE8();
        if (v56(v37))
        {
          break;
        }

        (*v112)(v37, v69);
      }

      v71 = v108;
      (*v110)(v108, v37, v69);
      v70 = 0;
LABEL_9:
      __swift_storeEnumTagSinglePayload(v71, v70, 1, v69);
      v72 = v71;
      v73 = v109;
      sub_26A544EC8(v72, v109, &qword_2803B1208, &qword_26A86BBA8);
      if (__swift_getEnumTagSinglePayload(v73, 1, v69) == 1)
      {
        break;
      }

      v74 = v105;
      (*v110)(v105, v73, v69);
      (v107)(&v113, v74);
      v75 = v74;
      v37 = v104;
      (*v112)(v75, v114);
      v115.origin.x = x;
      v115.origin.y = y;
      v115.size.width = width;
      v115.size.height = i;
      v116 = CGRectUnion(v115, v113);
      x = v116.origin.x;
      y = v116.origin.y;
      width = v116.size.width;
    }

    sub_26A4DBD10(v14, &qword_2803B1218, &qword_26A86BBB8);
    sub_26A4DBD10(v102, &qword_2803B1228, &qword_26A86BBC8);
    v117.origin.x = x;
    v117.origin.y = y;
    v117.size.width = width;
    v117.size.height = i;
    v118.origin.x = v40;
    v118.origin.y = v41;
    v118.size.width = v42;
    v118.size.height = v43;
    v76 = CGRectEqualToRect(v117, v118);
    (*v85)(v101, v20);
    v39 = v89;
    v35 = v96;
    if (!v76)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_26A7A12C4();
        v84 = v80;
      }

      v77 = *(v84 + 16);
      if (v77 >= *(v84 + 24) >> 1)
      {
        sub_26A7A12C4();
        v84 = v81;
      }

      v78 = v84;
      *(v84 + 16) = v77 + 1;
      v79 = (v78 + 32 * v77);
      v79[4] = x;
      v79[5] = y;
      v79[6] = width;
      v79[7] = i;
      v35 = v96;
    }
  }

  result = sub_26A4DBD10(v39, &qword_2803AB4A0, &qword_26A858C10);
  *v83[0] = v84;
  return result;
}

uint64_t sub_26A62A474(__n128 a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_26A62A9E0();
  sub_26A850768();
  if (v10)
  {
    if (v9 == a3 && v10 == a4)
    {

      v7 = 1;
    }

    else
    {
      v7 = sub_26A852598();
    }
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

double sub_26A62A51C@<D0>(uint64_t a2@<X8>)
{
  sub_26A850748();
  result = v4;
  *a2 = v4;
  *(a2 + 8) = v5 - v7;
  *(a2 + 16) = v6;
  *(a2 + 24) = v7 + v8;
  return result;
}

void (*sub_26A62A5AC(void *a1))(uint64_t *a1, char a2)
{
  v3 = *v1;
  a1[1] = v1;
  a1[2] = v3;
  *a1 = v3;

  return sub_26A62A5FC;
}

void sub_26A62A5FC(uint64_t *a1, char a2)
{
  v2 = a1[1];
  v3 = *a1;
  if (a2)
  {

    *v2 = v3;
  }

  else
  {

    *v2 = v3;
  }
}

uint64_t sub_26A62A694(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 17))
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

uint64_t sub_26A62A6D4(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

unint64_t sub_26A62A724()
{
  result = qword_2803B11C0;
  if (!qword_2803B11C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B11C0);
  }

  return result;
}

unint64_t sub_26A62A77C()
{
  result = qword_2803B11C8;
  if (!qword_2803B11C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B11C8);
  }

  return result;
}

unint64_t sub_26A62A7D4()
{
  result = qword_2803B11D0;
  if (!qword_2803B11D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B11D0);
  }

  return result;
}

unint64_t sub_26A62A82C()
{
  result = qword_2803B11D8;
  if (!qword_2803B11D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B11D8);
  }

  return result;
}

unint64_t sub_26A62A884()
{
  result = qword_2803B11E0;
  if (!qword_2803B11E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B11E0);
  }

  return result;
}

unint64_t sub_26A62A8DC()
{
  result = qword_2803B11E8;
  if (!qword_2803B11E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B11E8);
  }

  return result;
}

unint64_t sub_26A62A934()
{
  result = qword_2803B11F0;
  if (!qword_2803B11F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B11F0);
  }

  return result;
}

unint64_t sub_26A62A98C()
{
  result = qword_2803B11F8;
  if (!qword_2803B11F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B11F8);
  }

  return result;
}

unint64_t sub_26A62A9E0()
{
  result = qword_2803B1200;
  if (!qword_2803B1200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B1200);
  }

  return result;
}

uint64_t sub_26A62AA60(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B1228, &qword_26A86BBC8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26A62AAD0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void *sub_26A62AB44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[2] = 0;
  v6[3] = 0;
  v6[4] = a1;
  v6[5] = a2;
  v6[6] = a3;
  v6[7] = a4;
  v9 = swift_allocObject();
  *(v9 + 16) = a5;
  *(v9 + 24) = a6;
  v10 = type metadata accessor for ArchiveInteractionRunner.Delegate();
  v11 = objc_allocWithZone(v10);
  v12 = &v11[OBJC_IVAR____TtCC9SnippetUI24ArchiveInteractionRunnerP33_FBD2CC1275D80BD340178D0FCCB05C6B8Delegate_completion];
  *v12 = sub_26A62B35C;
  v12[1] = v9;
  v14.receiver = v11;
  v14.super_class = v10;

  v6[8] = objc_msgSendSuper2(&v14, sel_init);
  v6[9] = a5;
  v6[10] = a6;
  return v6;
}

void sub_26A62AC04(void *a1, void (*a2)(void *))
{
  if (a1)
  {
    sub_26A62B244();
    v4 = swift_allocError();
    *v5 = a1;
    *(v5 + 8) = 1;
  }

  else
  {
    v4 = 0;
  }

  v6 = a1;
  v7 = a1;
  a2(v4);
}

uint64_t sub_26A62AE70(uint64_t a1, uint64_t a2)
{
  v4 = *(v2 + OBJC_IVAR____TtCC9SnippetUI24ArchiveInteractionRunnerP33_FBD2CC1275D80BD340178D0FCCB05C6B8Delegate_completion);

  v4(a2);
}

id sub_26A62AFA4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ArchiveInteractionRunner.Delegate();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_26A62AFF0(void *a1, char a2)
{
  if (!a2)
  {
    sub_26A852248();

    v8 = 0xD000000000000012;
    v3 = [a1 description];
    v4 = sub_26A8517B8();
    v6 = v5;

    MEMORY[0x26D663B00](v4, v6);

    MEMORY[0x26D663B00](0x63414E4C206F7420, 0xEC0000006E6F6974);
    return v8;
  }

  if (a2 == 1)
  {
    v8 = 0;
    sub_26A852248();
    MEMORY[0x26D663B00](0xD00000000000001CLL, 0x800000026A88D9B0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AC088, &qword_26A85A650);
    sub_26A8523D8();
    return v8;
  }

  return 0xD00000000000001ALL;
}

uint64_t sub_26A62B188()
{

  return v0;
}

uint64_t sub_26A62B1C8()
{
  sub_26A62B188();

  return MEMORY[0x2821FE8D8](v0, 88, 7);
}

unint64_t sub_26A62B244()
{
  result = qword_2803B12C0;
  if (!qword_2803B12C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B12C0);
  }

  return result;
}

id sub_26A62B298(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v13 = sub_26A851788();

  if (a5)
  {
    v14 = sub_26A851788();
  }

  else
  {
    v14 = 0;
  }

  v15 = [v8 initWithLinkAction:a1 appBundleIdentifier:v13 extensionBundleIdentifier:v14 runSource:a6 authenticationPolicy:a7];

  return v15;
}

uint64_t get_enum_tag_for_layout_string_9SnippetUI24ArchiveInteractionRunnerC6ErrorsO(uint64_t a1)
{
  if ((*(a1 + 8) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 8) & 3;
  }
}

uint64_t sub_26A62B380(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFE && *(a1 + 9))
    {
      v2 = *a1 + 253;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 <= 2)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_26A62B3C0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_26A62B404(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 8) = a2;
  return result;
}

void SummaryItemSwitchV2View.init(isOn:text1:text2:text3:text4:thumbnail:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_28_0();
  a19 = v20;
  a20 = v21;
  v94 = v22;
  v95 = v23;
  v96 = v24;
  v88 = v25;
  v27 = v26;
  v90 = v28;
  v91 = v29;
  v89 = v30;
  v93 = v31;
  v92 = type metadata accessor for SwitchView(0);
  OUTLINED_FUNCTION_46();
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_10_5();
  MEMORY[0x28223BE20](v33);
  v35 = &v87 - v34;
  v36 = type metadata accessor for SummaryItemSwitchV2View(0);
  OUTLINED_FUNCTION_46();
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_41();
  v40 = (v39 - v38);
  if (qword_28157E670 != -1)
  {
    OUTLINED_FUNCTION_146(&qword_28157E670);
  }

  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B3890, &unk_26A856670);
  __swift_project_value_buffer(v41, qword_281588798);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91A0, &qword_26A854C60);
  sub_26A4D7E54();
  sub_26A6AEE74(v100);
  memcpy(v40, v100, 0xBFuLL);
  OUTLINED_FUNCTION_3_48();
  sub_26A62ECC0();
  v42 = v36[5];
  *&v40[v42] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A9190, &unk_26A854C50);
  swift_storeEnumTagMultiPayload();
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_43_4(KeyPath);
  v44 = v36[7];
  *&v40[v44] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91A8, &qword_26A857040);
  swift_storeEnumTagMultiPayload();
  v45 = v27[3];
  v46 = v27[4];
  v47 = __swift_project_boxed_opaque_existential_1(v27, v45);
  *&v40[v36[8]] = (*(v46 + 8))(v45, v46);
  v48 = v88;
  sub_26A4D7E54();
  OUTLINED_FUNCTION_23_14();
  v49 = v27;
  if (&unk_26A856670)
  {
    v50 = OUTLINED_FUNCTION_2_51();
    v51(v50);
    OUTLINED_FUNCTION_23_0();
  }

  else
  {
    sub_26A4DBD10(&v98, &qword_2803A91B8, &qword_26A8575C0);
    v47 = 0;
  }

  *&v40[v36[9]] = v47;
  sub_26A4D7E54();
  OUTLINED_FUNCTION_23_14();
  if (&unk_26A856670)
  {
    v52 = OUTLINED_FUNCTION_2_51();
    v53(v52);
    OUTLINED_FUNCTION_23_0();
  }

  else
  {
    sub_26A4DBD10(&v98, &qword_2803A91B8, &qword_26A8575C0);
    v47 = 0;
  }

  *&v40[v36[10]] = v47;
  sub_26A4D7E54();
  OUTLINED_FUNCTION_23_14();
  if (&unk_26A856670)
  {
    v54 = OUTLINED_FUNCTION_2_51();
    v55(v54);
    OUTLINED_FUNCTION_23_0();
  }

  else
  {
    sub_26A4DBD10(&v98, &qword_2803A91B8, &qword_26A8575C0);
    v47 = 0;
  }

  *&v40[v36[11]] = v47;
  sub_26A4D7E54();
  OUTLINED_FUNCTION_23_14();
  if (&unk_26A856670)
  {
    v56 = OUTLINED_FUNCTION_2_51();
    v57(v56);
    OUTLINED_FUNCTION_23_0();
  }

  else
  {
    sub_26A4DBD10(&v98, &qword_2803A91B8, &qword_26A8575C0);
    v47 = 0;
  }

  *&v40[v36[12]] = v47;
  sub_26A84E228();
  OUTLINED_FUNCTION_81();
  __swift_storeEnumTagSinglePayload(v58, v59, v60, v61);
  v62 = v92;
  v63 = &v35[*(v92 + 20)];
  v64 = swift_getKeyPath();
  OUTLINED_FUNCTION_43_4(v64);
  v65 = &v35[*(v62 + 28)];
  *v65 = swift_getKeyPath();
  *(v65 + 1) = 0;
  v65[16] = 0;
  *(v65 + 3) = swift_getKeyPath();
  v65[32] = 0;
  v66 = type metadata accessor for ActionHandler(0);
  v67 = v66[6];
  *&v65[v67] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A93D0, &qword_26A856F10);
  swift_storeEnumTagMultiPayload();
  v68 = &v65[v66[7]];
  *v68 = swift_getKeyPath();
  *(v68 + 1) = 0;
  v68[16] = 0;
  v69 = swift_getKeyPath();
  OUTLINED_FUNCTION_43_4(v69);
  v70 = swift_getKeyPath();
  OUTLINED_FUNCTION_43_4(v70);
  v71 = &v65[v66[10]];
  *v71 = swift_getKeyPath();
  v71[9] = 0;
  swift_unknownObjectWeakInit();
  v72 = v66[11];
  v73 = type metadata accessor for StandardActionHandler(0);
  OUTLINED_FUNCTION_81();
  __swift_storeEnumTagSinglePayload(v74, v75, v76, v73);
  sub_26A4DBD10(&v65[v72], &qword_2803B3910, &qword_26A855580);
  OUTLINED_FUNCTION_81();
  __swift_storeEnumTagSinglePayload(v77, v78, v79, v73);
  v80 = &v35[*(v62 + 32)];
  v97 = 0;
  sub_26A851048();
  v81 = v99;
  *v80 = v98;
  *(v80 + 1) = v81;
  v82 = v90 & 1;
  v83 = v91;
  *v63 = v89;
  *(v63 + 1) = v83;
  v63[16] = v82;
  OUTLINED_FUNCTION_10_31();
  sub_26A62ECC0();
  OUTLINED_FUNCTION_9_34();
  sub_26A62F318(v84, v85, &protocol conformance descriptor for SwitchView);
  v86 = sub_26A851248();
  OUTLINED_FUNCTION_19_16(&v100[184]);
  OUTLINED_FUNCTION_19_16(&v101);
  OUTLINED_FUNCTION_19_16(&a9);
  sub_26A4DBD10(v48, &qword_2803A91B8, &qword_26A8575C0);
  sub_26A4E2440(v35);
  *&v40[v36[13]] = v86;
  OUTLINED_FUNCTION_8_39();
  sub_26A62F098();
  __swift_destroy_boxed_opaque_existential_1(v49);
  OUTLINED_FUNCTION_27_0();
}

uint64_t type metadata accessor for SummaryItemSwitchV2View(uint64_t a1)
{
  result = qword_2803B12E8;
  if (!qword_2803B12E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26A62BB18()
{
  v0 = sub_26A84F988();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A9190, &unk_26A854C50);
  MEMORY[0x28223BE20](v4);
  type metadata accessor for SummaryItemSwitchV2View(0);
  sub_26A4D7E54();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_26A4D7EA8();
  }

  sub_26A851EA8();
  v6 = sub_26A8501F8();
  sub_26A84EA78();

  sub_26A84F978();
  swift_getAtKeyPath();

  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_26A62BD00()
{
  v1 = sub_26A84F988();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = v0 + *(type metadata accessor for SummaryItemSwitchV2View(0) + 24);
  v6 = *v5;
  if ((*(v5 + 8) & 1) == 0)
  {

    sub_26A851EA8();
    v7 = sub_26A8501F8();
    sub_26A84EA78();

    sub_26A84F978();
    swift_getAtKeyPath();
    sub_26A4D82E8(v6, 0);
    (*(v2 + 8))(v4, v1);
    return v9[1];
  }

  return v6;
}

uint64_t sub_26A62BE54@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_26A84F988();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91A8, &qword_26A857040);
  MEMORY[0x28223BE20](v6);
  v8 = &v12 - v7;
  type metadata accessor for SummaryItemSwitchV2View(0);
  sub_26A4D7E54();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_26A84F3A8();
    return (*(*(v9 - 8) + 32))(a1, v8, v9);
  }

  else
  {
    sub_26A851EA8();
    v11 = sub_26A8501F8();
    sub_26A84EA78();

    sub_26A84F978();
    swift_getAtKeyPath();

    return (*(v3 + 8))(v5, v2);
  }
}

void SummaryItemSwitchV2View.init(model:)()
{
  OUTLINED_FUNCTION_28_0();
  v89 = v0;
  v2 = v1;
  v86 = sub_26A84E228();
  OUTLINED_FUNCTION_15();
  v85 = v3;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_10_0(v6 - v5);
  v87 = type metadata accessor for SwitchView(0);
  OUTLINED_FUNCTION_46();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_10_5();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_10_0(&v79 - v9);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AAD50, &unk_26A857890);
  OUTLINED_FUNCTION_79(v10);
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_10_0(&v79 - v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AA838, &unk_26A856770);
  OUTLINED_FUNCTION_79(v13);
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_10_0(&v79 - v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AA830, &unk_26A856FA0);
  v17 = OUTLINED_FUNCTION_79(v16);
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_10_5();
  MEMORY[0x28223BE20](v18);
  v20 = &v79 - v19;
  v80 = sub_26A84B888();
  OUTLINED_FUNCTION_15();
  v22 = v21;
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_41();
  v26 = v25 - v24;
  if (qword_28157E670 != -1)
  {
    OUTLINED_FUNCTION_146(&qword_28157E670);
  }

  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B3890, &unk_26A856670);
  __swift_project_value_buffer(v27, qword_281588798);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91A0, &qword_26A854C60);
  sub_26A4D7E54();
  sub_26A6AEE74(v93);
  memcpy(v2, v93, 0xBFuLL);
  OUTLINED_FUNCTION_3_48();
  sub_26A62ECC0();
  v28 = type metadata accessor for SummaryItemSwitchV2View(0);
  v29 = v28[5];
  *&v2[v29] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A9190, &unk_26A854C50);
  swift_storeEnumTagMultiPayload();
  v30 = &v2[v28[6]];
  *v30 = swift_getKeyPath();
  v30[8] = 0;
  v31 = v28[7];
  *&v2[v31] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91A8, &qword_26A857040);
  swift_storeEnumTagMultiPayload();
  sub_26A84CDB8();
  v32 = TextProperty.asAnyView()();
  v33 = *(v22 + 8);
  v34 = v80;
  v33(v26, v80);
  *&v2[v28[8]] = v32;
  sub_26A84CDC8();
  v35 = sub_26A84D098();
  OUTLINED_FUNCTION_34(v20);
  if (v36)
  {
    sub_26A4DBD10(v20, &qword_2803AA830, &unk_26A856FA0);
    v37 = 0;
  }

  else
  {
    v37 = v20;
    MultilineTextProperty.asAnyView()();
    OUTLINED_FUNCTION_29();
    (*(v38 + 8))(v20, v35);
  }

  *&v2[v28[9]] = v37;
  v39 = v81;
  sub_26A84CDD8();
  OUTLINED_FUNCTION_34(v39);
  if (v36)
  {
    sub_26A4DBD10(v39, &qword_2803AA830, &unk_26A856FA0);
    v40 = 0;
  }

  else
  {
    v40 = v39;
    MultilineTextProperty.asAnyView()();
    OUTLINED_FUNCTION_29();
    (*(v41 + 8))(v39, v35);
  }

  *&v2[v28[10]] = v40;
  v42 = v82;
  sub_26A84CDE8();
  if (__swift_getEnumTagSinglePayload(v42, 1, v34) == 1)
  {
    sub_26A4DBD10(v42, &qword_2803AA838, &unk_26A856770);
    v43 = 0;
  }

  else
  {
    v43 = TextProperty.asAnyView()();
    v33(v42, v34);
  }

  *&v2[v28[11]] = v43;
  v44 = v83;
  sub_26A84CE18();
  v45 = sub_26A84BD28();
  OUTLINED_FUNCTION_34(v44);
  if (v36)
  {
    sub_26A4DBD10(v44, &qword_2803AAD50, &unk_26A857890);
    v46 = 0;
  }

  else
  {
    v46 = v44;
    VisualProperty.asAnyView()();
    OUTLINED_FUNCTION_29();
    (*(v47 + 8))(v44, v45);
  }

  *&v2[v28[12]] = v46;
  v48 = v84;
  sub_26A84CE08();
  v49 = v88;
  OUTLINED_FUNCTION_81();
  v50 = v86;
  __swift_storeEnumTagSinglePayload(v51, v52, v53, v86);
  v54 = v87;
  v55 = v49 + *(v87 + 20);
  *v55 = 0;
  *(v55 + 8) = 0;
  *(v55 + 16) = 0;
  v56 = v49 + v54[6];
  *v56 = swift_getKeyPath();
  *(v56 + 8) = 0;
  v57 = v49 + v54[7];
  *v57 = swift_getKeyPath();
  *(v57 + 8) = 0;
  *(v57 + 16) = 0;
  *(v57 + 24) = swift_getKeyPath();
  *(v57 + 32) = 0;
  v58 = type metadata accessor for ActionHandler(0);
  v59 = v58[6];
  *(v57 + v59) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A93D0, &qword_26A856F10);
  swift_storeEnumTagMultiPayload();
  v60 = v57 + v58[7];
  *v60 = swift_getKeyPath();
  *(v60 + 8) = 0;
  *(v60 + 16) = 0;
  v61 = v57 + v58[8];
  *v61 = swift_getKeyPath();
  *(v61 + 8) = 0;
  v62 = v57 + v58[9];
  *v62 = swift_getKeyPath();
  *(v62 + 8) = 0;
  v63 = v57 + v58[10];
  *v63 = swift_getKeyPath();
  *(v63 + 9) = 0;
  swift_unknownObjectWeakInit();
  v64 = v58[11];
  v65 = type metadata accessor for StandardActionHandler(0);
  OUTLINED_FUNCTION_81();
  __swift_storeEnumTagSinglePayload(v66, v67, v68, v65);
  sub_26A4DBD10(v57 + v64, &qword_2803B3910, &qword_26A855580);
  OUTLINED_FUNCTION_81();
  __swift_storeEnumTagSinglePayload(v69, v70, v71, v65);
  v72 = v49 + v54[8];
  v90 = 0;
  sub_26A851048();
  sub_26A4DBD10(v49, &qword_2803AAD90, &qword_26A8570A0);
  v83 = v28;
  v73 = v85;
  (*(v85 + 16))(v49, v48, v50);
  __swift_storeEnumTagSinglePayload(v49, 0, 1, v50);
  v90 = sub_26A84E1F8() & 1;
  sub_26A851048();
  (*(v73 + 8))(v48, v50);

  v74 = v92;
  *v72 = v91;
  *(v72 + 8) = v74;
  OUTLINED_FUNCTION_10_31();
  sub_26A62ECC0();
  OUTLINED_FUNCTION_9_34();
  sub_26A62F318(v75, v76, &protocol conformance descriptor for SwitchView);
  v77 = sub_26A851248();
  sub_26A84CE28();
  OUTLINED_FUNCTION_46();
  (*(v78 + 8))(v89);
  sub_26A4E2440(v49);
  *&v2[v83[13]] = v77;
  OUTLINED_FUNCTION_27_0();
}

void SummaryItemSwitchV2View.init(switchView:text1:text2:text3:text4:thumbnail:)()
{
  OUTLINED_FUNCTION_28_0();
  v34 = v0;
  v31 = v1;
  v32 = v2;
  v4 = v3;
  v6 = v5;
  v33 = v7;
  v8 = type metadata accessor for SummaryItemSwitchV2View(0);
  OUTLINED_FUNCTION_46();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_41();
  v12 = (v11 - v10);
  if (qword_28157E670 != -1)
  {
    OUTLINED_FUNCTION_146(&qword_28157E670);
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B3890, &unk_26A856670);
  __swift_project_value_buffer(v13, qword_281588798);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91A0, &qword_26A854C60);
  sub_26A4D7E54();
  sub_26A6AEE74(v36);
  memcpy(v12, v36, 0xBFuLL);
  OUTLINED_FUNCTION_3_48();
  sub_26A62ECC0();
  v14 = v8[5];
  *&v12[v14] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A9190, &unk_26A854C50);
  swift_storeEnumTagMultiPayload();
  v15 = &v12[v8[6]];
  *v15 = swift_getKeyPath();
  v15[8] = 0;
  v16 = v8[7];
  *&v12[v16] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91A8, &qword_26A857040);
  swift_storeEnumTagMultiPayload();
  v17 = v6[3];
  __swift_project_boxed_opaque_existential_1(v6, v17);
  v18 = OUTLINED_FUNCTION_0_7();
  *&v12[v8[8]] = v19(v18);
  sub_26A4D7E54();
  OUTLINED_FUNCTION_24_16();
  if (v17)
  {
    __swift_project_boxed_opaque_existential_1(v35, v17);
    v20 = OUTLINED_FUNCTION_0_7();
    v21(v20);
    OUTLINED_FUNCTION_23_0();
  }

  else
  {
    sub_26A4DBD10(v35, &qword_2803A91B8, &qword_26A8575C0);
    v16 = 0;
  }

  *&v12[v8[9]] = v16;
  sub_26A4D7E54();
  OUTLINED_FUNCTION_24_16();
  if (v17)
  {
    __swift_project_boxed_opaque_existential_1(v35, v17);
    v22 = OUTLINED_FUNCTION_0_7();
    v23(v22);
    OUTLINED_FUNCTION_23_0();
  }

  else
  {
    sub_26A4DBD10(v35, &qword_2803A91B8, &qword_26A8575C0);
    v16 = 0;
  }

  *&v12[v8[10]] = v16;
  sub_26A4D7E54();
  OUTLINED_FUNCTION_24_16();
  if (v17)
  {
    __swift_project_boxed_opaque_existential_1(v35, v17);
    v24 = OUTLINED_FUNCTION_0_7();
    v25(v24);
    OUTLINED_FUNCTION_23_0();
  }

  else
  {
    sub_26A4DBD10(v35, &qword_2803A91B8, &qword_26A8575C0);
    v16 = 0;
  }

  *&v12[v8[11]] = v16;
  sub_26A4D7E54();
  OUTLINED_FUNCTION_24_16();
  if (v17)
  {
    __swift_project_boxed_opaque_existential_1(v35, v17);
    v26 = OUTLINED_FUNCTION_0_7();
    v27(v26);
    OUTLINED_FUNCTION_23_0();
  }

  else
  {
    sub_26A4DBD10(v35, &qword_2803A91B8, &qword_26A8575C0);
    v16 = 0;
  }

  *&v12[v8[12]] = v16;
  __swift_project_boxed_opaque_existential_1(v33, v33[3]);
  v28 = OUTLINED_FUNCTION_0_7();
  v30 = v29(v28);
  OUTLINED_FUNCTION_27_9(v34);
  OUTLINED_FUNCTION_27_9(v31);
  OUTLINED_FUNCTION_27_9(v32);
  OUTLINED_FUNCTION_27_9(v4);
  *&v12[v8[13]] = v30;
  OUTLINED_FUNCTION_8_39();
  sub_26A62F098();
  __swift_destroy_boxed_opaque_existential_1(v6);
  __swift_destroy_boxed_opaque_existential_1(v33);
  OUTLINED_FUNCTION_27_0();
}

uint64_t SummaryItemSwitchV2View.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91C0, &unk_26A854CB0);
  OUTLINED_FUNCTION_79(v3);
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v4);
  v6 = &v16[-v5];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91C8, &unk_26A856820);
  OUTLINED_FUNCTION_79(v7);
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v8);
  sub_26A62BB18();
  v18 = 0u;
  v19 = 0u;
  v20 = 1;
  sub_26A62BD00();
  sub_26A62BE54(v6);
  v9 = sub_26A84F3A8();
  __swift_storeEnumTagSinglePayload(v6, 0, 1, v9);
  v17 = v1;
  sub_26A4CA1F4();
  v10 = swift_allocObject();
  *(v10 + 16) = sub_26A68CCBC;
  *(v10 + 24) = 0;
  v11 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B12D0, &unk_26A86BEF0) + 36);
  *(v11 + 16) = swift_getKeyPath();
  *(v11 + 24) = 0;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91D8, &qword_26A8575D0);
  v13 = *(v12 + 40);
  *(v11 + v13) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A9190, &unk_26A854C50);
  swift_storeEnumTagMultiPayload();
  v14 = v11 + *(v12 + 44);
  *v14 = swift_getKeyPath();
  *(v14 + 8) = 0;
  *v11 = sub_26A4D1F7C;
  *(v11 + 8) = v10;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B12D8, &qword_26A86BF28);
  *(a1 + *(result + 36)) = 51;
  return result;
}

uint64_t sub_26A62D02C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v23[1] = a2;
  v23[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A9D80, &qword_26A86BFC0);
  MEMORY[0x28223BE20](v23[0]);
  v4 = v23 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B1310, &qword_26A86BFC8);
  MEMORY[0x28223BE20](v5);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A9D60, &qword_26A86BFD0);
  MEMORY[0x28223BE20](v6);
  v8 = (v23 - v7);
  v9 = sub_26A84F3A8();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26A62BE54(v12);
  v13 = sub_26A84F388();
  (*(v10 + 8))(v12, v9);
  v14 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91A0, &qword_26A854C60) + 28);
  if (v13)
  {
    v15 = *(a1 + v14);
    *v8 = sub_26A84FC08();
    v8[1] = v15;
    *(v8 + 16) = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B1320, &qword_26A86BFE0);
    sub_26A62DB9C(a1, v15);
    *(v8 + *(v6 + 36)) = 256;
    v16 = &qword_2803A9D60;
    v17 = &qword_26A86BFD0;
    sub_26A4D7E54();
    swift_storeEnumTagMultiPayload();
    sub_26A4D5BB0();
    sub_26A4D5C68();
    sub_26A84FDF8();
    v18 = v8;
  }

  else
  {
    v19 = v23[0];
    v20 = *(a1 + v14);
    if (qword_28157FCB0 != -1)
    {
      swift_once();
    }

    *v4 = qword_2815889E0;
    *(v4 + 1) = v20;
    v4[16] = 0;
    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B1318, &qword_26A86BFD8);
    sub_26A62D3D0(a1, &v4[*(v21 + 44)]);
    *&v4[*(v19 + 36)] = 256;
    v16 = &qword_2803A9D80;
    v17 = &qword_26A86BFC0;
    sub_26A4D7E54();
    swift_storeEnumTagMultiPayload();
    sub_26A4D5BB0();
    sub_26A4D5C68();
    sub_26A84FDF8();
    v18 = v4;
  }

  return sub_26A4DBD10(v18, v16, v17);
}

uint64_t sub_26A62D3D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v59 = a2;
  v3 = type metadata accessor for SummaryItemStandardLayout(0);
  MEMORY[0x28223BE20](v3);
  v5 = &v51 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v55 = &v51 - v7;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AADA0, &qword_26A8570B0);
  MEMORY[0x28223BE20](v54);
  v57 = &v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v53 = &v51 - v10;
  MEMORY[0x28223BE20](v11);
  v56 = &v51 - v12;
  v13 = type metadata accessor for SummaryItemSwitchV2View(0);
  v14 = v13[8];
  if (*(a1 + v13[9]))
  {
    v15 = &protocol witness table for AnyView;
    v16 = MEMORY[0x277CE11C8];
    v17 = *(a1 + v13[9]);
  }

  else
  {
    v17 = 0;
    v16 = 0;
    v15 = 0;
    __src[1] = 0;
    __src[2] = 0;
  }

  v18 = *(a1 + v14);
  __src[0] = v17;
  __src[3] = v16;
  __src[4] = v15;
  if (*(a1 + v13[10]))
  {
    v19 = &protocol witness table for AnyView;
    v20 = MEMORY[0x277CE11C8];
    v21 = *(a1 + v13[10]);
  }

  else
  {
    v21 = 0;
    v20 = 0;
    v19 = 0;
    v65[1] = 0;
    v65[2] = 0;
  }

  v65[0] = v21;
  v65[3] = v20;
  v65[4] = v19;
  if (*(a1 + v13[11]))
  {
    v22 = &protocol witness table for AnyView;
    v23 = MEMORY[0x277CE11C8];
    v24 = *(a1 + v13[11]);
  }

  else
  {
    v24 = 0;
    v23 = 0;
    v22 = 0;
    v64[1] = 0;
    v64[2] = 0;
  }

  v64[0] = v24;
  v64[3] = v23;
  v64[4] = v22;
  v25 = *(a1 + v13[12]);
  v58 = a1;
  v52 = v13;
  if (v25)
  {
    v26 = &protocol witness table for AnyView;
    v27 = MEMORY[0x277CE11C8];
  }

  else
  {
    v27 = 0;
    v26 = 0;
    v63[1] = 0;
    v63[2] = 0;
  }

  v63[0] = v25;
  v63[3] = v27;
  v63[4] = v26;
  v28 = qword_28157E670;

  if (v28 != -1)
  {
    swift_once();
  }

  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B3890, &unk_26A856670);
  __swift_project_value_buffer(v29, qword_281588798);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91A0, &qword_26A854C60);
  sub_26A4D7E54();
  sub_26A6AEE74(v66);
  memcpy(v5, v66, 0xBFuLL);
  sub_26A62ECC0();
  v30 = v3[5];
  *&v5[v30] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91A8, &qword_26A857040);
  swift_storeEnumTagMultiPayload();
  v31 = &v5[v3[6]];
  *v31 = swift_getKeyPath();
  v31[8] = 0;
  *&v5[v3[7]] = v18;
  sub_26A4D7E54();
  v32 = v61;
  if (v61)
  {
    v33 = v62;
    __swift_project_boxed_opaque_existential_1(v60, v61);
    v34 = *(v33 + 8);

    v35 = v34(v32, v33);
    __swift_destroy_boxed_opaque_existential_1(v60);
  }

  else
  {

    sub_26A4DBD10(v60, &qword_2803A91B8, &qword_26A8575C0);
    v35 = 0;
  }

  *&v5[v3[8]] = v35;
  sub_26A4D7E54();
  v36 = v61;
  if (v61)
  {
    v37 = v62;
    __swift_project_boxed_opaque_existential_1(v60, v61);
    v38 = (*(v37 + 8))(v36, v37);
    __swift_destroy_boxed_opaque_existential_1(v60);
  }

  else
  {
    sub_26A4DBD10(v60, &qword_2803A91B8, &qword_26A8575C0);
    v38 = 0;
  }

  *&v5[v3[9]] = v38;
  sub_26A4D7E54();
  v39 = v61;
  if (v61)
  {
    v40 = v62;
    __swift_project_boxed_opaque_existential_1(v60, v61);
    v41 = (*(v40 + 8))(v39, v40);
    __swift_destroy_boxed_opaque_existential_1(v60);
  }

  else
  {
    sub_26A4DBD10(v60, &qword_2803A91B8, &qword_26A8575C0);
    v41 = 0;
  }

  *&v5[v3[10]] = v41;
  sub_26A4D7E54();
  v42 = v61;
  if (v61)
  {
    v43 = v62;
    __swift_project_boxed_opaque_existential_1(v60, v61);
    v44 = (*(v43 + 8))(v42, v43);
    sub_26A4DBD10(v63, &qword_2803A91B8, &qword_26A8575C0);
    sub_26A4DBD10(v64, &qword_2803A91B8, &qword_26A8575C0);
    sub_26A4DBD10(v65, &qword_2803A91B8, &qword_26A8575C0);
    sub_26A4DBD10(__src, &qword_2803A91B8, &qword_26A8575C0);
    __swift_destroy_boxed_opaque_existential_1(v60);
  }

  else
  {
    sub_26A4DBD10(v63, &qword_2803A91B8, &qword_26A8575C0);
    sub_26A4DBD10(v64, &qword_2803A91B8, &qword_26A8575C0);
    sub_26A4DBD10(v65, &qword_2803A91B8, &qword_26A8575C0);
    sub_26A4DBD10(__src, &qword_2803A91B8, &qword_26A8575C0);
    sub_26A4DBD10(v60, &qword_2803A91B8, &qword_26A8575C0);
    v44 = 0;
  }

  *&v5[v3[11]] = v44;
  sub_26A62F098();
  sub_26A851458();
  sub_26A84F628();
  v45 = v53;
  sub_26A62F098();
  memcpy(&v45[*(v54 + 36)], __src, 0x70uLL);
  v46 = v56;
  sub_26A4D7EA8();
  v47 = v57;
  v48 = *(v58 + v52[13]);
  sub_26A4D7E54();
  v49 = v59;
  sub_26A4D7E54();
  *(v49 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B1348, &qword_26A86C128) + 48)) = v48;
  swift_retain_n();
  sub_26A4DBD10(v46, &qword_2803AADA0, &qword_26A8570B0);

  return sub_26A4DBD10(v47, &qword_2803AADA0, &qword_26A8570B0);
}