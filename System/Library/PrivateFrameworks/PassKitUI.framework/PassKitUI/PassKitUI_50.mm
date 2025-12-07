void sub_1BD54FF44(uint64_t a1@<X8>)
{
  v2 = sub_1BE04BD74();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v59 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 104))(v6, *MEMORY[0x1E69B80F0], v2, v4);
  v7 = PKPassKitBundle();
  if (v7)
  {
    v8 = v7;
    v9 = sub_1BE04B6F4();
    v11 = v10;

    (*(v3 + 8))(v6, v2);
    v60 = v9;
    v61 = v11;
    sub_1BD0DDEBC();
    v12 = sub_1BE0506C4();
    v14 = v13;
    LOBYTE(v8) = v15;
    v17 = v16;
    LODWORD(v60) = sub_1BE04FC94();
    v18 = sub_1BE050574();
    v20 = v19;
    v22 = v21;
    v24 = v23;
    sub_1BD0DDF10(v12, v14, (v8 & 1), v23, v25, v26, v27, v28);
    v17, v29, v30, v31, v32, v33, v34, v35;
    v36 = sub_1BE050454();
    v37 = sub_1BE0505F4();
    v39 = v38;
    LOBYTE(v17) = v40;
    v42 = v41;
    v36, v38, v40, v41, v43, v44, v45, v46;
    sub_1BD0DDF10(v18, v20, (v22 & 1), v47, v48, v49, v50, v51);
    v24, v52, v53, v54, v55, v56, v57, v58;
    *a1 = v37;
    *(a1 + 8) = v39;
    *(a1 + 16) = v17 & 1;
    *(a1 + 24) = v42;
  }

  else
  {
    __break(1u);
  }
}

id sub_1BD55016C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v93 = a2;
  v3 = sub_1BE04BD74();
  v95 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v89 = &v84 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v84 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4A2C8, &qword_1BE0E09E0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v88 = &v84 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v84 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4A2D0, &qword_1BE0E09E8);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v92 = &v84 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v91 = &v84 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v90 = &v84 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v98 = &v84 - v21;
  KeyPath = swift_getKeyPath();
  v23 = OBJC_IVAR____TtC9PassKitUI17TransactionsModel___observationRegistrar;
  v101 = a1;
  sub_1BD20FC28();
  v94 = v23;
  sub_1BE04B594();
  KeyPath, v24, v25, v26, v27, v28, v29, v30;
  v31 = a1 + OBJC_IVAR____TtC9PassKitUI17TransactionsModel__appleCardDetailInfo;
  v32 = *(a1 + OBJC_IVAR____TtC9PassKitUI17TransactionsModel__appleCardDetailInfo);
  v96 = v9;
  v97 = v8;
  if (!v32)
  {
    v51 = 1;
LABEL_7:
    v50 = v98;
    goto LABEL_8;
  }

  v85 = v13;
  v86 = v7;
  v87 = v3;
  v34 = *(v31 + 32);
  v33 = *(v31 + 40);
  v36 = *(v31 + 16);
  v35 = *(v31 + 24);
  v37 = *(v31 + 8);
  v38 = v36;
  sub_1BD550B20(v32, v37, v36, v35, v34, v33);
  sub_1BD550B80(v32, v37, v36, v35, v34, v33);
  v39 = [v38 formattedStringValue];

  if (!v39)
  {
    v51 = 1;
    v9 = v96;
    v8 = v97;
    v3 = v87;
    goto LABEL_7;
  }

  v40 = sub_1BE052434();
  v84 = v41;

  v42 = v95;
  v43 = v86;
  v3 = v87;
  (*(v95 + 104))(v86, *MEMORY[0x1E69B80F0], v87);
  result = PKPassKitBundle();
  if (!result)
  {
    goto LABEL_14;
  }

  v45 = result;
  v46 = sub_1BE04B6F4();
  v48 = v47;

  (*(v42 + 8))(v43, v3);
  v101 = v46;
  v102 = v48;
  v99 = v40;
  v100 = v84;
  sub_1BD0DDEBC();
  v49 = v85;
  sub_1BE04E834();
  v9 = v96;
  v8 = v97;
  v50 = v98;
  (*(v96 + 32))(v98, v49, v97);
  v51 = 0;
LABEL_8:
  v52 = *(v9 + 56);
  v53 = 1;
  v52(v50, v51, 1, v8);
  v54 = swift_getKeyPath();
  v101 = a1;
  sub_1BE04B594();
  v54, v55, v56, v57, v58, v59, v60, v61;
  v62 = *v31;
  if (!*v31)
  {
    v78 = v90;
    goto LABEL_12;
  }

  v64 = *(v31 + 32);
  v63 = *(v31 + 40);
  v66 = *(v31 + 16);
  v65 = *(v31 + 24);
  v67 = v3;
  v68 = *(v31 + 8);
  sub_1BE048C84();
  sub_1BD550B20(v62, v68, v66, v65, v64, v63);
  v69 = v68;
  v70 = v67;
  sub_1BD550B80(v62, v69, v66, v65, v64, v63);
  v71 = v95;
  v72 = v89;
  (*(v95 + 104))(v89, *MEMORY[0x1E69B80F0], v67);
  result = PKPassKitBundle();
  if (result)
  {
    v73 = result;
    v74 = sub_1BE04B6F4();
    v76 = v75;

    (*(v71 + 8))(v72, v70);
    v101 = v74;
    v102 = v76;
    v99 = v64;
    v100 = v63;
    sub_1BD0DDEBC();
    v77 = v88;
    sub_1BE04E834();
    v8 = v97;
    v78 = v90;
    (*(v96 + 32))(v90, v77, v97);
    v53 = 0;
LABEL_12:
    v79 = v98;
    v52(v78, v53, 1, v8);
    v80 = v91;
    sub_1BD550BE0(v79, v91);
    v81 = v92;
    sub_1BD550BE0(v78, v92);
    v82 = v93;
    sub_1BD550BE0(v80, v93);
    v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4A2D8, &qword_1BE0E09F0);
    sub_1BD550BE0(v81, v82 + *(v83 + 48));
    sub_1BD550C50(v78);
    sub_1BD550C50(v79);
    sub_1BD550C50(v81);
    return sub_1BD550C50(v80);
  }

  __break(1u);
LABEL_14:
  __break(1u);
  return result;
}

void sub_1BD5507F4(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_1BE04BD74();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v78 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  KeyPath = swift_getKeyPath();
  v80 = a1;
  sub_1BD20FC28();
  sub_1BE04B594();
  KeyPath, v9, v10, v11, v12, v13, v14, v15;
  v16 = (a1 + OBJC_IVAR____TtC9PassKitUI17TransactionsModel__appleCardDetailInfo);
  v17 = *(a1 + OBJC_IVAR____TtC9PassKitUI17TransactionsModel__appleCardDetailInfo);
  if (!v17)
  {
    v55 = 0;
    v57 = 0;
    v77 = 0;
    goto LABEL_7;
  }

  v79 = v5;
  v19 = v16[4];
  v18 = v16[5];
  v21 = v16[2];
  v20 = v16[3];
  v22 = v16[1];
  sub_1BD550B20(v17, v22, v21, v20, v19, v18);
  v23 = v17;
  sub_1BD550B80(v17, v22, v21, v20, v19, v18);
  if (![v23 requiresDebtCollectionNotices])
  {

    v55 = 0;
    v57 = 0;
    v77 = 0;
    v17 = 0;
    goto LABEL_7;
  }

  v78 = v23;
  v24 = v79;
  (*(v79 + 104))(v7, *MEMORY[0x1E69B80F0], v4);
  v25 = PKPassKitBundle();
  if (v25)
  {
    v26 = v25;
    v27 = sub_1BE04B6F4();
    v29 = v28;

    (*(v24 + 8))(v7, v4);
    v80 = v27;
    v81 = v29;
    sub_1BD0DDEBC();
    v30 = sub_1BE0506C4();
    v32 = v31;
    LOBYTE(v26) = v33;
    v35 = v34;
    LODWORD(v80) = sub_1BE04FC94();
    v36 = sub_1BE050574();
    v38 = v37;
    v40 = v39;
    v42 = v41;
    sub_1BD0DDF10(v30, v32, (v26 & 1), v41, v43, v44, v45, v46);
    v35, v47, v48, v49, v50, v51, v52, v53;
    v54 = sub_1BE050454();
    v55 = sub_1BE0505F4();
    v57 = v56;
    v59 = v58;
    v17 = v60;
    v54, v56, v58, v60, v61, v62, v63, v64;

    sub_1BD0DDF10(v36, v38, (v40 & 1), v65, v66, v67, v68, v69);
    v42, v70, v71, v72, v73, v74, v75, v76;
    v77 = v59 & 1;
LABEL_7:
    *a2 = v55;
    a2[1] = v57;
    a2[2] = v77;
    a2[3] = v17;
    return;
  }

  __break(1u);
}

void *sub_1BD550B20(void *result, void *a2, void *a3, void *a4, uint64_t a5, uint64_t a6)
{
  if (result)
  {
    v9 = result;
    v10 = a2;
    v11 = a3;
    v12 = a4;

    return sub_1BE048C84();
  }

  return result;
}

void sub_1BD550B80(void *a1, void *a2, void *a3, void *a4, uint64_t a5, void *a6)
{
  if (a1)
  {

    a6, v10, v11, v12, v13, v14, v15, v16;
  }
}

uint64_t sub_1BD550BE0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4A2D0, &qword_1BE0E09E8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BD550C50(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4A2D0, &qword_1BE0E09E8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *sub_1BD550CB8()
{
  sub_1BD550CF0();

  return sub_1BE04F3E4();
}

unint64_t sub_1BD550CF0()
{
  result = qword_1EBD4D510;
  if (!qword_1EBD4D510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4D510);
  }

  return result;
}

uint64_t sub_1BD550D68()
{
  KeyPath = swift_getKeyPath();
  v1 = swift_getKeyPath();
  sub_1BE04D8B4(&v17);
  KeyPath, v2, v3, v4, v5, v6, v7, v8;
  v1, v9, v10, v11, v12, v13, v14, v15;
  return v17;
}

BOOL sub_1BD550DE0(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*(a1 + 8) != 1)
  {
    if ((*(a2 + 8) & 1) == 0)
    {
      return v2 == v3;
    }

    return 0;
  }

  if (v2 > 1)
  {
    if (v2 != 2)
    {
      if (v3 > 2)
      {
        v7 = *(a2 + 8);
      }

      else
      {
        v7 = 0;
      }

      return v7 == 1;
    }

    v4 = v3 == 2;
  }

  else if (v2)
  {
    v4 = v3 == 1;
  }

  else
  {
    v4 = v3 == 0;
  }

  if (v4)
  {
    v6 = *(a2 + 8);
  }

  else
  {
    v6 = 0;
  }

  return (v6 & 1) != 0;
}

uint64_t sub_1BD550E58()
{
  v1 = OBJC_IVAR____TtC9PassKitUI36RemoteNetworkPaymentLoadingViewModel__loadingState;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4A310, &qword_1BE0E0B48);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_1BD0D4534(v0 + OBJC_IVAR____TtC9PassKitUI36RemoteNetworkPaymentLoadingViewModel_delegate);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for RemoteNetworkPaymentLoadingViewModel(uint64_t a1)
{
  result = qword_1EBD4A2F8;
  if (!qword_1EBD4A2F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1BD550F64(uint64_t a1)
{
  sub_1BD550FFC();
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1BD550FFC()
{
  if (!qword_1EBD4A308)
  {
    v0 = sub_1BE04D8D4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBD4A308);
    }
  }
}

uint64_t getEnumTagSinglePayload for RemoteNetworkPaymentLoadingViewModel.State(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for RemoteNetworkPaymentLoadingViewModel.State(uint64_t result, int a2, int a3)
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

uint64_t sub_1BD55109C(uint64_t a1)
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

uint64_t sub_1BD5510B8(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 1;
  }

  else
  {
    *(result + 8) = 0;
  }

  return result;
}

uint64_t sub_1BD5510E8@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for RemoteNetworkPaymentLoadingViewModel(0);
  result = sub_1BE04D814();
  *a2 = result;
  return result;
}

uint64_t sub_1BD551128(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void *a6, void *a7, void *a8)
{
  v59 = MEMORY[0x1E69E7CC0];
  sub_1BD03B254(0, 4, 0, a4, a5, a6, a7, a8);
  v8 = v59;
  v9 = sub_1BE052434();
  v17 = *(v59 + 16);
  v16 = *(v59 + 24);
  if (v17 >= v16 >> 1)
  {
    v51 = v9;
    v52 = v10;
    sub_1BD03B254((v16 > 1), v17 + 1, 1, v11, v12, v13, v14, v15);
    v10 = v52;
    v9 = v51;
    v8 = v59;
  }

  *(v8 + 16) = v17 + 1;
  v18 = v8 + 16 * v17;
  *(v18 + 32) = v9;
  *(v18 + 40) = v10;
  v19 = sub_1BE052434();
  v27 = *(v8 + 16);
  v26 = *(v8 + 24);
  if (v27 >= v26 >> 1)
  {
    v53 = v19;
    v54 = v20;
    sub_1BD03B254((v26 > 1), v27 + 1, 1, v21, v22, v23, v24, v25);
    v20 = v54;
    v19 = v53;
    v8 = v59;
  }

  *(v8 + 16) = v27 + 1;
  v28 = v8 + 16 * v27;
  *(v28 + 32) = v19;
  *(v28 + 40) = v20;
  v29 = sub_1BE052434();
  v37 = *(v8 + 16);
  v36 = *(v8 + 24);
  if (v37 >= v36 >> 1)
  {
    v55 = v29;
    v56 = v30;
    sub_1BD03B254((v36 > 1), v37 + 1, 1, v31, v32, v33, v34, v35);
    v30 = v56;
    v29 = v55;
  }

  v38 = v59;
  *(v59 + 16) = v37 + 1;
  v39 = v59 + 16 * v37;
  *(v39 + 32) = v29;
  *(v39 + 40) = v30;
  v40 = sub_1BE052434();
  v48 = *(v59 + 16);
  v47 = *(v59 + 24);
  if (v48 >= v47 >> 1)
  {
    v57 = v40;
    v58 = v41;
    sub_1BD03B254((v47 > 1), v48 + 1, 1, v42, v43, v44, v45, v46);
    v41 = v58;
    v40 = v57;
    v38 = v59;
  }

  *(v38 + 16) = v48 + 1;
  v49 = v38 + 16 * v48;
  *(v49 + 32) = v40;
  *(v49 + 40) = v41;
  swift_arrayDestroy();
  return v38;
}

id sub_1BD55131C(uint64_t a1, unint64_t a2)
{
  v4 = sub_1BE04BD74();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  MEMORY[0x1EEE9AC00](v6);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v131 - v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v131 - v11;
  v133 = v14;
  v134 = v13;
  v132 = v15;
  if (a2 > 1)
  {
    if (a2 == 2 || a2 == 3)
    {
      goto LABEL_7;
    }

LABEL_6:
    v16 = a1;
    v17 = a2;
    goto LABEL_8;
  }

  if (a2 > 1)
  {
    goto LABEL_6;
  }

LABEL_7:
  v16 = sub_1BE052434();
  v17 = v18;
LABEL_8:
  v19 = sub_1BE052434();
  v21 = v20;
  if (v19 == v16 && v20 == v17)
  {
    sub_1BD14ED40(a1, a2);
    v17, v38, v39, v40, v41, v42, v43, v44;
    goto LABEL_15;
  }

  v23 = sub_1BE053B84();
  sub_1BD14ED40(a1, a2);
  v21, v24, v25, v26, v27, v28, v29, v30;
  if (v23)
  {
    v21 = v17;
LABEL_15:
    v21, v31, v32, v33, v34, v35, v36, v37;
    v45 = v134;
    (*(v5 + 104))(v12, *MEMORY[0x1E69B8068], v134);
    result = PKPassKitBundle();
    if (result)
    {
      v47 = result;
      a1 = sub_1BE04B6F4();

      (*(v5 + 8))(v12, v45);
      return a1;
    }

    __break(1u);
    goto LABEL_49;
  }

  v48 = sub_1BE052434();
  v56 = v49;
  if (v48 == v16 && v49 == v17)
  {
    v17, v49, v50, v51, v52, v53, v54, v55;
    goto LABEL_24;
  }

  v58 = sub_1BE053B84();
  v56, v59, v60, v61, v62, v63, v64, v65;
  if (v58)
  {
    v56 = v17;
LABEL_24:
    v56, v66, v67, v68, v69, v70, v71, v72;
    v73 = v134;
    (*(v5 + 104))(v9, *MEMORY[0x1E69B8068], v134);
    result = PKPassKitBundle();
    if (!result)
    {
LABEL_49:
      __break(1u);
      goto LABEL_50;
    }

    v74 = result;
LABEL_26:
    a1 = sub_1BE04B6F4();

    (*(v5 + 8))(v9, v73);
    return a1;
  }

  v75 = sub_1BE052434();
  v83 = v76;
  if (v75 == v16 && v76 == v17)
  {
    v17, v76, v77, v78, v79, v80, v81, v82;
LABEL_33:
    v83, v84, v85, v86, v87, v88, v89, v90;
    v9 = v133;
    v73 = v134;
    (*(v5 + 104))(v133, *MEMORY[0x1E69B8068], v134);
    result = PKPassKitBundle();
    if (!result)
    {
LABEL_50:
      __break(1u);
      goto LABEL_51;
    }

    v74 = result;
    goto LABEL_26;
  }

  v91 = sub_1BE053B84();
  v83, v92, v93, v94, v95, v96, v97, v98;
  if (v91)
  {
    v83 = v17;
    goto LABEL_33;
  }

  v99 = *MEMORY[0x1E695CB68];
  v100 = sub_1BE052434();
  v108 = v101;
  if (v100 == v16 && v101 == v17)
  {
    v17, v101, v102, v103, v104, v105, v106, v107;
    v108, v109, v110, v111, v112, v113, v114, v115;
    goto LABEL_39;
  }

  v133 = v99;
  v116 = sub_1BE053B84();
  v17, v117, v118, v119, v120, v121, v122, v123;
  v108, v124, v125, v126, v127, v128, v129, v130;
  if ((v116 & 1) == 0)
  {
    if (a2 > 1)
    {
      if (a2 == 2 || a2 == 3)
      {
        return sub_1BE052434();
      }
    }

    else if (a2 <= 1)
    {
      return sub_1BE052434();
    }

    sub_1BE048C84();
    return a1;
  }

LABEL_39:
  v9 = v132;
  v73 = v134;
  (*(v5 + 104))(v132, *MEMORY[0x1E69B8068], v134);
  result = PKPassKitBundle();
  if (result)
  {
    v74 = result;
    goto LABEL_26;
  }

LABEL_51:
  __break(1u);
  return result;
}

uint64_t sub_1BD551860(uint64_t a1, unint64_t a2)
{
  if (a2 > 1)
  {
    if (a2 == 2 || a2 == 3)
    {
      goto LABEL_7;
    }
  }

  else if (a2 <= 1)
  {
LABEL_7:
    v4 = sub_1BE052434();
    goto LABEL_8;
  }

  v4 = a1;
LABEL_8:
  sub_1BD14ED40(a1, a2);
  return v4;
}

uint64_t sub_1BD55190C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1BD551B1C(*a1, a1[1]);
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_1BD55193C()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1BE053D04();
  sub_1BDA27790(v4, v1, v2);
  return sub_1BE053D64();
}

uint64_t sub_1BD551990(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  sub_1BE053D04();
  sub_1BDA27790(v5, v2, v3);
  return sub_1BE053D64();
}

uint64_t get_enum_tag_for_layout_string_9PassKitUI20ShippingContactLabelO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1BD551A04(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFC && *(a1 + 16))
  {
    return (*a1 + 2147483644);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 3;
  if (v4 >= 5)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1BD551A58(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFB)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483644;
    if (a3 >= 0x7FFFFFFC)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFC)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 3;
    }
  }

  return result;
}

unint64_t sub_1BD551AC8()
{
  result = qword_1EBD4A318;
  if (!qword_1EBD4A318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4A318);
  }

  return result;
}

uint64_t sub_1BD551B1C(uint64_t a1, char *a2)
{
  v4 = sub_1BE052434();
  v12 = v5;
  if (v4 != a1 || v5 != a2)
  {
    v14 = sub_1BE053B84();
    v12, v15, v16, v17, v18, v19, v20, v21;
    if (v14)
    {
      goto LABEL_8;
    }

    v30 = sub_1BE052434();
    v12 = v5;
    if (v30 != a1 || v5 != a2)
    {
      v32 = sub_1BE053B84();
      v12, v33, v34, v35, v36, v37, v38, v39;
      if (v32)
      {
        goto LABEL_8;
      }

      v40 = sub_1BE052434();
      v12 = v5;
      if (v40 != a1 || v5 != a2)
      {
        v42 = sub_1BE053B84();
        v12, v43, v44, v45, v46, v47, v48, v49;
        if (v42)
        {
          goto LABEL_8;
        }

        v50 = sub_1BE052434();
        v12 = v5;
        if (v50 != a1 || v5 != a2)
        {
          v51 = sub_1BE053B84();
          v12, v52, v53, v54, v55, v56, v57, v58;
          if ((v51 & 1) == 0)
          {
            return a1;
          }

          goto LABEL_8;
        }
      }
    }
  }

  a2, v5, v6, v7, v8, v9, v10, v11;
  a2 = v12;
LABEL_8:
  a2, v22, v23, v24, v25, v26, v27, v28;
  return 0;
}

id sub_1BD551D8C()
{
  v1 = v0;
  v2 = sub_1BE04BAC4();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1BE04BBD4();
  sub_1BE04BC34();
  v7 = sub_1BE04B9A4();
  (*(v3 + 8))(v5, v2);
  v8 = [objc_allocWithZone(PKPaymentSetupWelcomeViewController) initWithProvisioningController:v6 context:v7];

  [v8 setFlowDelegate_];
  sub_1BE052434();
  v10 = v9;
  v11 = sub_1BE04BB74();
  v10, v12, v13, v14, v15, v16, v17, v18;
  [v8 setReporter_];

  return v8;
}

uint64_t sub_1BD551F04()
{
  v1 = *(v0 + OBJC_IVAR____TtC9PassKitUI27PaymentSetupWelcomeFlowItem_identifier);
  sub_1BE048C84();
  return v1;
}

uint64_t sub_1BD551F40(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC9PassKitUI27PaymentSetupWelcomeFlowItem_delegate + 8) = a2;
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

void sub_1BD5521A0(uint64_t a1)
{
  v2 = v1;
  v3 = *(v1 + OBJC_IVAR____TtC9PassKitUI27PaymentSetupWelcomeFlowItem_context);
  v4 = sub_1BE04BBD4();
  v5 = [v4 associatedCredentials];

  if (v5)
  {
    sub_1BD0E5E8C(0, &qword_1EBD444C0, 0x1E69B8BC8);
    v6 = sub_1BE052744();
  }

  else
  {
    v6 = MEMORY[0x1E69E7CC0];
  }

  v7 = type metadata accessor for PaymentSetupCredentialsFlowItem();
  v8 = objc_allocWithZone(v7);
  *&v8[OBJC_IVAR____TtC9PassKitUI31PaymentSetupCredentialsFlowItem__privacyDisclosures] = &type metadata for PrivacyDisclosures;
  *&v8[OBJC_IVAR____TtC9PassKitUI31PaymentSetupCredentialsFlowItem_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v9 = &v8[OBJC_IVAR____TtC9PassKitUI31PaymentSetupCredentialsFlowItem_identifier];
  *v9 = 0xD00000000000001FLL;
  v9[1] = 0x80000001BE1229B0;
  *&v8[OBJC_IVAR____TtC9PassKitUI31PaymentSetupCredentialsFlowItem_context] = v3;
  *&v8[OBJC_IVAR____TtC9PassKitUI31PaymentSetupCredentialsFlowItem_credentials] = v6;
  v8[OBJC_IVAR____TtC9PassKitUI31PaymentSetupCredentialsFlowItem_allowManualEntry] = 0;
  *&v8[OBJC_IVAR____TtC9PassKitUI31PaymentSetupCredentialsFlowItem_product] = 0;
  v14.receiver = v8;
  v14.super_class = v7;
  sub_1BE048964();
  v10 = objc_msgSendSuper2(&v14, sel_init);
  v11 = v2 + OBJC_IVAR____TtC9PassKitUI27PaymentSetupWelcomeFlowItem_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v12 = *(v11 + 8);
    ObjectType = swift_getObjectType();
    sub_1BD865948(v2, &off_1F3BAD340, v10, &off_1F3BCA500, ObjectType, v12);

    swift_unknownObjectRelease();
  }

  else
  {
  }
}

void sub_1BD552364()
{
  v1 = objc_allocWithZone(type metadata accessor for ProvisioningManualEntryFlowSection());
  v2 = sub_1BE048964();
  v6 = sub_1BD87126C(v2, 1, 1);
  v3 = v0 + OBJC_IVAR____TtC9PassKitUI27PaymentSetupWelcomeFlowItem_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v4 = *(v3 + 8);
    ObjectType = swift_getObjectType();
    sub_1BD865948(v0, &off_1F3BAD340, v6, &off_1F3BC0AB0, ObjectType, v4);

    swift_unknownObjectRelease();
  }

  else
  {
  }
}

uint64_t sub_1BD552458(void *a1, unint64_t a2)
{
  v3 = v2;
  v6 = [a1 identifier];
  if (v6)
  {
    v7 = v6;
    v8 = sub_1BE052434();
    v10 = v9;

    v11 = sub_1BE052434();
    v19 = v12;
    if (v10)
    {
      if (v8 == v11 && v10 == v12)
      {
        v10, v12, v11, v14, v15, v16, v17, v18;
        v19, v51, v52, v53, v54, v55, v56, v57;
      }

      else
      {
        v21 = sub_1BE053B84();
        v10, v22, v23, v24, v25, v26, v27, v28;
        v19, v29, v30, v31, v32, v33, v34, v35;
        if ((v21 & 1) == 0)
        {
          if (a2)
          {
LABEL_9:
            v36 = *(v3 + OBJC_IVAR____TtC9PassKitUI27PaymentSetupWelcomeFlowItem_context);
            type metadata accessor for PaymentSetupProductsFlowSection();
            swift_allocObject();
            sub_1BE048C84();
            sub_1BE048964();
            v37 = a1;
            v38 = sub_1BD0DB670(v36, a1, a2);
            v36, v39, v40, v41, v42, v43, v44, v45;

            type metadata accessor for UIFlowModifier();
            v46 = swift_allocObject();
            v47 = byte_1EBDAB281;
            *(v46 + 32) = byte_1EBDAB280;
            *(v46 + 33) = v47;
            *(v46 + 48) = 0;
            swift_unknownObjectWeakInit();
            *(v46 + 16) = v38;
            *(v46 + 24) = &off_1F3B98C00;
            *(v46 + 32) = 1;
            v48 = &off_1F3BAC7A0;
            goto LABEL_16;
          }

          goto LABEL_12;
        }
      }

      objc_allocWithZone(type metadata accessor for ProvisioningManualEntryFlowSection());
      v49 = sub_1BE048964();
      v50 = 1;
      goto LABEL_15;
    }
  }

  else
  {
    sub_1BE052434();
    v19 = v12;
  }

  v19, v12, v13, v14, v15, v16, v17, v18;
  if (a2)
  {
    goto LABEL_9;
  }

LABEL_12:
  objc_allocWithZone(type metadata accessor for ProvisioningManualEntryFlowSection());
  v49 = sub_1BE048964();
  v50 = 0;
LABEL_15:
  v46 = sub_1BD87126C(v49, v50, 0);
  v48 = &off_1F3BC0AB0;
LABEL_16:
  v58 = v3 + OBJC_IVAR____TtC9PassKitUI27PaymentSetupWelcomeFlowItem_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v59 = *(v58 + 8);
    ObjectType = swift_getObjectType();
    sub_1BD865948(v3, &off_1F3BAD340, v46, v48, ObjectType, v59);
    swift_unknownObjectRelease();
  }

  return swift_unknownObjectRelease();
}

id sub_1BD5527B0()
{
  v1 = sub_1BE04BA14();
  v136 = *(v1 - 8);
  v137 = v1;
  MEMORY[0x1EEE9AC00](v1);
  v3 = v128 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = v128 - v5;
  v140 = sub_1BE04B9C4();
  v7 = *(v140 - 8);
  MEMORY[0x1EEE9AC00](v140);
  v9 = v128 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v139 = v128 - v11;
  v12 = sub_1BE04BAC4();
  v138 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = v128 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  KeyPath = swift_getKeyPath();
  v16 = v0;
  sub_1BD12F824(1, v16, KeyPath);

  KeyPath, v17, v18, v19, v20, v21, v22, v23;
  v24 = *&v16[OBJC_IVAR____TtC9PassKitUI39ProvisioningVerificationMethodsFlowItem_verificationController];
  v25 = [v24 verificationRecord];
  v26 = off_1E8005000;
  v27 = &selRef_initWithIdentifier_;
  if (v25)
  {
    v28 = v25;
    v29 = [v25 verificationStatus];
    if (v29 > 1)
    {
      if (v29 != 2)
      {
LABEL_12:

LABEL_13:
        v26 = off_1E8005000;
        goto LABEL_14;
      }

      v133 = v28;
      v134 = v9;
      v89 = objc_allocWithZone(PKPaymentVerificationMethodsViewController);
      v135 = v24;
      v90 = [v89 initWithVerificationController_];
      v69 = v90;
      if (v90)
      {
        [v90 setFlowItemDelegate_];
      }

      v132 = *&v16[OBJC_IVAR____TtC9PassKitUI39ProvisioningVerificationMethodsFlowItem_context];
      sub_1BE04BC34();
      v91 = v139;
      sub_1BE04BAA4();
      v128[0] = *(v138 + 8);
      v128[1] = v138 + 8;
      (v128[0])(v14, v12);
      v92 = *MEMORY[0x1E69B7FB0];
      v93 = *(v7 + 104);
      v130 = v12;
      v94 = v134;
      v95 = v7;
      v96 = v140;
      v93(v134, v92, v140);
      v129 = sub_1BE04B9B4();
      v131 = v95;
      v97 = *(v95 + 8);
      v97(v94, v96);
      v97(v91, v96);
      if (v129)
      {
        v98 = 1;
        v12 = v130;
      }

      else
      {
        sub_1BE04BC34();
        sub_1BE04BA24();
        v12 = v130;
        (v128[0])(v14, v130);
        v99 = *MEMORY[0x1E69B7FE0];
        v100 = sub_1BE04B9D4();
        (*(*(v100 - 8) + 104))(v3, v99, v100);
        v102 = v136;
        v101 = v137;
        (*(v136 + 104))(v3, *MEMORY[0x1E69B8020], v137);
        v98 = MEMORY[0x1BFB38A90](v6, v3);
        v103 = *(v102 + 8);
        v103(v3, v101);
        v103(v6, v101);
      }

      [v69 setAlwaysPerformExternalVerificationInline_];
      v7 = v131;
      v9 = v134;
      v24 = v135;
      if (v69)
      {
        sub_1BE052434();
        v105 = v104;
        v79 = v69;
        v80 = sub_1BE04BB74();
        v105, v106, v107, v108, v109, v110, v111, v112;
        [v79 setReporter_];

        goto LABEL_16;
      }

LABEL_32:
      v27 = &selRef_initWithIdentifier_;
      goto LABEL_13;
    }

    if (v29 != 1)
    {
      goto LABEL_12;
    }

    v30 = [v28 requiredVerificationFields];
    if (!v30)
    {
      goto LABEL_12;
    }

    v31 = v30;
    v135 = v24;
    v32 = v12;
    sub_1BD5538A4();
    v33 = sub_1BE052744();

    if (v33 >> 62)
    {
      v41 = sub_1BE053704();
    }

    else
    {
      v41 = *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v33, v34, v35, v36, v37, v38, v39, v40;
    v12 = v32;
    if (!v41)
    {

      v24 = v135;
      goto LABEL_32;
    }

    v42 = [v28 requiredVerificationFields];
    if (v42)
    {
      v43 = v42;
      v44 = sub_1BE052744();

      v52 = sub_1BD3F0574(v44, v45, v46, v47, v48, v49, v50, v51);
      v44, v53, v54, v55, v56, v57, v58, v59;
      v60 = sub_1BE052724();
      v61 = v52;
      v12 = v32;
      v61, v62, v63, v64, v65, v66, v67, v68;
    }

    else
    {
      v60 = 0;
    }

    v24 = v135;
    v80 = [objc_allocWithZone(MEMORY[0x1E69B8E38]) initWithPaymentSetupFields_];

    if (!v80)
    {

      goto LABEL_32;
    }

    v133 = v28;
    v113 = [objc_allocWithZone(PKPaymentVerificationMethodsViewController) initWithVerificationController:v24 fieldsModel:v80];
    v27 = &selRef_initWithIdentifier_;
    if (v113)
    {
      v69 = v113;
      sub_1BE04BC34();
      v114 = v139;
      sub_1BE04BAA4();
      (*(v138 + 8))(v14, v12);
      v115 = v140;
      (*(v7 + 104))(v9, *MEMORY[0x1E69B7FB0], v140);
      v116 = sub_1BE04B9B4();
      v117 = *(v7 + 8);
      v117(v9, v115);
      v117(v114, v115);
      [v69 setAlwaysPerformExternalVerificationInline_];
      [v69 setFlowItemDelegate_];
      sub_1BE052434();
      v119 = v118;
      v120 = v69;
      v79 = sub_1BE04BB74();
      v119, v121, v122, v123, v124, v125, v126, v127;
      [v120 setReporter_];

      goto LABEL_16;
    }

    v26 = off_1E8005000;
  }

LABEL_14:
  v69 = [objc_allocWithZone(v26[451]) v27[511]];
  if (v69)
  {
    sub_1BE04BC34();
    v70 = v9;
    v71 = v139;
    sub_1BE04BAA4();
    (*(v138 + 8))(v14, v12);
    v72 = *(v7 + 104);
    v73 = v7;
    v74 = v140;
    v72(v70, *MEMORY[0x1E69B7FB0], v140);
    v75 = sub_1BE04B9B4();
    v76 = *(v73 + 8);
    v76(v70, v74);
    v76(v71, v74);
    [v69 setAlwaysPerformExternalVerificationInline_];
    [v69 setFlowItemDelegate_];
    sub_1BE052434();
    v78 = v77;
    v79 = v69;
    v80 = sub_1BE04BB74();
    v78, v81, v82, v83, v84, v85, v86, v87;
    [v79 setReporter_];
LABEL_16:
  }

  return v69;
}

uint64_t sub_1BD5530C0()
{
  v1 = *(v0 + OBJC_IVAR____TtC9PassKitUI39ProvisioningVerificationMethodsFlowItem_identifier);
  sub_1BE048C84();
  return v1;
}

uint64_t sub_1BD5530FC(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC9PassKitUI39ProvisioningVerificationMethodsFlowItem_delegate + 8) = a2;
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

void sub_1BD553318(uint64_t a1, char *a2)
{
  v4 = *&a2[OBJC_IVAR____TtC9PassKitUI35ProvisioningVerificationFlowSection_context];
  v5 = *&a2[OBJC_IVAR____TtC9PassKitUI35ProvisioningVerificationFlowSection_verificationController];
  objc_allocWithZone(type metadata accessor for ProvisioningVerificationMethodsFlowItem());
  sub_1BE048964();
  v6 = v5;
  v7 = a2;
  v18 = sub_1BD5537A8(v4, v6, v7);
  v4, v8, v9, v10, v11, v12, v13, v14;

  v15 = &v7[OBJC_IVAR____TtC9PassKitUI35ProvisioningVerificationFlowSection_delegate];
  if (swift_unknownObjectWeakLoadStrong())
  {
    v16 = *(v15 + 1);
    ObjectType = swift_getObjectType();
    sub_1BD865948(a1, &off_1F3BAD3B8, v18, &off_1F3BAD3B8, ObjectType, v16);

    swift_unknownObjectRelease();
  }

  else
  {
  }
}

uint64_t sub_1BD553448(uint64_t a1, void *a2, char *a3, double a4)
{
  v41 = a1;
  v45 = sub_1BE04B9C4();
  v6 = *(v45 - 8);
  MEMORY[0x1EEE9AC00](v45);
  v44 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v42 = &v40 - v9;
  v43 = sub_1BE04BAC4();
  v10 = *(v43 - 8);
  MEMORY[0x1EEE9AC00](v43);
  v12 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *&a3[OBJC_IVAR____TtC9PassKitUI35ProvisioningVerificationFlowSection_context];
  v14 = *&a3[OBJC_IVAR____TtC9PassKitUI35ProvisioningVerificationFlowSection_provisionedPasses];
  v15 = *&a3[OBJC_IVAR____TtC9PassKitUI35ProvisioningVerificationFlowSection_verificationController];
  v16 = objc_allocWithZone(type metadata accessor for ProvisioningPerformVerificationFlowSection());
  sub_1BE048964();
  v17 = v14;
  v18 = v15;
  v19 = a2;
  v20 = a3;
  v21 = sub_1BD724E68(v13, v17, v19, v18);
  v13, v22, v23, v24, v25, v26, v27, v28;

  sub_1BE04BC34();
  v29 = v42;
  sub_1BE04BAA4();
  (*(v10 + 8))(v12, v43);
  v31 = v44;
  v30 = v45;
  (*(v6 + 104))(v44, *MEMORY[0x1E69B7FB0], v45);
  LOBYTE(v19) = sub_1BE04B9B4();
  v32 = *(v6 + 8);
  v32(v31, v30);
  v32(v29, v30);
  v33 = &off_1F3BB88B0;
  if (v19)
  {
    type metadata accessor for UIFlowModifier();
    v34 = swift_allocObject();
    v35 = byte_1EBDAB281;
    *(v34 + 32) = byte_1EBDAB280;
    *(v34 + 33) = v35;
    *(v34 + 48) = 0;
    swift_unknownObjectWeakInit();
    *(v34 + 16) = v21;
    *(v34 + 24) = &off_1F3BB88B0;
    *(v34 + 32) = 1;
    v33 = &off_1F3BAC7A0;
    v21 = v34;
  }

  v36 = &v20[OBJC_IVAR____TtC9PassKitUI35ProvisioningVerificationFlowSection_delegate];
  if (swift_unknownObjectWeakLoadStrong())
  {
    v37 = *(v36 + 1);
    ObjectType = swift_getObjectType();
    sub_1BD865948(v41, &off_1F3BAD3B8, v21, v33, ObjectType, v37);
    swift_unknownObjectRelease();
  }

  return swift_unknownObjectRelease();
}

id sub_1BD5537A8(uint64_t a1, void *a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();
  swift_unknownObjectWeakInit();
  *&v3[OBJC_IVAR____TtC9PassKitUI39ProvisioningVerificationMethodsFlowItem_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v7 = &v3[OBJC_IVAR____TtC9PassKitUI39ProvisioningVerificationMethodsFlowItem_identifier];
  *v7 = 0xD00000000000001BLL;
  *(v7 + 1) = 0x80000001BE12E460;
  *&v3[OBJC_IVAR____TtC9PassKitUI39ProvisioningVerificationMethodsFlowItem__hasSeenMethodsScreen] = &type metadata for ProvisioningVerificationHasSeenMethodsScreenKey;
  *&v3[OBJC_IVAR____TtC9PassKitUI39ProvisioningVerificationMethodsFlowItem_context] = a1;
  *&v3[OBJC_IVAR____TtC9PassKitUI39ProvisioningVerificationMethodsFlowItem_verificationController] = a2;
  swift_unknownObjectWeakAssign();
  v10.receiver = v3;
  v10.super_class = ObjectType;
  sub_1BE048964();
  v8 = a2;
  return objc_msgSendSuper2(&v10, sel_init);
}

unint64_t sub_1BD5538A4()
{
  result = qword_1EBD4E6C0;
  if (!qword_1EBD4E6C0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EBD4E6C0);
  }

  return result;
}

uint64_t __swift_memcpy10_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for FDICSignage(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 10))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for FDICSignage(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 10) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 10) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

id sub_1BD5539AC()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 9);
  v4 = [objc_allocWithZone(PKFDICSignageView) initWithFeature:v1 displayingBankName:v2];
  [v4 setForceFixedHalfWrapping_];
  return v4;
}

uint64_t sub_1BD553A14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1BD553B08();

  return MEMORY[0x1EEDDAA28](a1, a2, a3, v6);
}

uint64_t sub_1BD553A78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1BD553B08();

  return MEMORY[0x1EEDDA9B8](a1, a2, a3, v6);
}

void sub_1BD553ADC(uint64_t a1)
{
  sub_1BD553B08();
  sub_1BE04F964();
  __break(1u);
}

unint64_t sub_1BD553B08()
{
  result = qword_1EBD4A448;
  if (!qword_1EBD4A448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4A448);
  }

  return result;
}

uint64_t type metadata accessor for PaymentOfferSelectorTile(uint64_t a1)
{
  result = qword_1EBD4A458;
  if (!qword_1EBD4A458)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1BD553BD0(uint64_t a1)
{
  sub_1BD553D88(319, &qword_1EBD4A468, type metadata accessor for PaymentOfferSelectorModel, MEMORY[0x1E6981790]);
  if (v1 <= 0x3F)
  {
    sub_1BD553D88(319, &qword_1EBD4A470, type metadata accessor for PKAccessibilityIdentifier, MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      sub_1BD23BBFC();
      if (v3 <= 0x3F)
      {
        sub_1BD553DEC(319, &qword_1EBD43D70, &unk_1EBD45160, &qword_1BE0C25A0, MEMORY[0x1E6981948]);
        if (v4 <= 0x3F)
        {
          sub_1BD1030A8();
          if (v5 <= 0x3F)
          {
            sub_1BD553DEC(319, &qword_1EBD39020, &qword_1EBD579E0, "0^\r", MEMORY[0x1E69E6720]);
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

void sub_1BD553D88(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1BD553DEC(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
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

unint64_t sub_1BD553E64()
{
  result = qword_1EBD4A478;
  if (!qword_1EBD4A478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4A478);
  }

  return result;
}

uint64_t sub_1BD553EB8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v59 = a1;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4A480, &qword_1BE0E0FB0);
  MEMORY[0x1EEE9AC00](v55);
  v58 = (&v47 - v3);
  v4 = sub_1BE04EDE4();
  MEMORY[0x1EEE9AC00](v4);
  v6 = (&v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = sub_1BE0518C4();
  v53 = *(v7 - 8);
  v54 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4A488, &qword_1BE0E0FB8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v47 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4A490, &qword_1BE0E0FC0);
  v56 = *(v13 - 8);
  v57 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v60 = &v47 - v14;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4A498, &qword_1BE0E0FC8);
  MEMORY[0x1EEE9AC00](v52);
  v51 = &v47 - v15;
  v16 = *(v2 + 136);
  if (v16)
  {
    v17 = 0x4042000000000000;
  }

  else
  {
    if (qword_1EBD36C90 != -1)
    {
      swift_once();
    }

    v17 = qword_1EBD4A450;
  }

  *v12 = sub_1BE04F7C4();
  *(v12 + 1) = 0;
  v12[16] = 0;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4A4A0, &unk_1BE0E0FD0);
  sub_1BD5544A0(v2, &v12[*(v18 + 44)]);
  v50 = v10;
  v19 = &v12[*(v10 + 36)];
  v20 = v4;
  v21 = *(v4 + 20);
  v22 = *MEMORY[0x1E697F468];
  v23 = sub_1BE04F684();
  v24 = *(*(v23 - 8) + 104);
  v24(v19 + v21, v22, v23);
  *v19 = v17;
  v19[1] = v17;
  *(v19 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3FC50, &unk_1BE0B7D20) + 36)) = 256;
  if (v16)
  {
    sub_1BE051894();
  }

  else
  {
    sub_1BE0518B4();
  }

  v25 = v6 + *(v20 + 20);
  v49 = v22;
  v24(v25, v22, v23);
  v48 = v24;
  *v6 = v17;
  v6[1] = v17;
  sub_1BD559828();
  sub_1BD55B02C(&qword_1EBD3BB58, MEMORY[0x1E697EAF0], MEMORY[0x1E697EAE0]);
  sub_1BE050994();
  sub_1BD1E4B74(v6);
  (*(v53 + 8))(v9, v54);
  sub_1BD0DE53C(v12, &qword_1EBD4A488, &qword_1BE0E0FB8);
  v26 = sub_1BE051CD4();
  v53 = v27;
  v54 = v26;
  v28 = v58;
  v24(v58 + *(v20 + 20), v22, v23);
  *v28 = v17;
  v28[1] = v17;
  *(v28 + *(v55 + 36)) = sub_1BE051404();
  v29 = [objc_opt_self() secondarySystemGroupedBackgroundColor];
  v30 = sub_1BE0511C4();
  v31 = v51;
  v32 = &v51[*(v52 + 36)];
  v33 = sub_1BE051454();
  v30, v34, v35, v36, v37, v38, v39, v40;
  v41 = (v32 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4A4C0, &qword_1BE0E0FE8) + 36));
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4A4C8, &qword_1BE0E0FF0);
  v43 = (v41 + *(v42 + 52));
  v48(v43 + *(v20 + 20), v49, v23);
  *v43 = v17;
  v43[1] = v17;
  *v41 = v33;
  *(v41 + *(v42 + 56)) = 256;
  sub_1BD0DE204(v28, v32, &qword_1EBD4A480, &qword_1BE0E0FB0);
  v44 = (v32 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4A4D0, &qword_1BE0E0FF8) + 36));
  v45 = v53;
  *v44 = v54;
  v44[1] = v45;
  (*(v56 + 32))(v31, v60, v57);
  return sub_1BD0DE204(v31, v59, &qword_1EBD4A498, &qword_1BE0E0FC8);
}

uint64_t sub_1BD5544A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4A4D8, &qword_1BE0E1000);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v28[-v6];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4A4E0, &qword_1BE0E1008);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v28[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v28[-v12];
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4A4E8, &qword_1BE0E1010);
  v15 = v14 - 8;
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v28[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v28[-v19];
  *v20 = sub_1BE04F504();
  *(v20 + 1) = 0;
  v20[16] = 0;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4A4F0, &unk_1BE0E1018);
  sub_1BD554B18(a1, &v20[*(v21 + 44)]);
  *&v20[*(v15 + 44)] = 256;
  v22 = *(a1 + 160);
  v23 = *(a1 + 168);
  v30 = *(a1 + 152);
  v31 = v22;
  v32 = v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD4DFE0, &qword_1BE0C42E0);
  MEMORY[0x1BFB3E970](&v29, v24);
  if (v29 == 1)
  {
    sub_1BD5547E0(v7);
    sub_1BD0DE204(v7, v13, &qword_1EBD4A4D8, &qword_1BE0E1000);
    v25 = 0;
  }

  else
  {
    v25 = 1;
  }

  (*(v5 + 56))(v13, v25, 1, v4);
  sub_1BD0DE19C(v20, v17, &qword_1EBD4A4E8, &qword_1BE0E1010);
  sub_1BD0DE19C(v13, v10, &qword_1EBD4A4E0, &qword_1BE0E1008);
  sub_1BD0DE19C(v17, a2, &qword_1EBD4A4E8, &qword_1BE0E1010);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4A4F8, &qword_1BE0E1028);
  sub_1BD0DE19C(v10, a2 + *(v26 + 48), &qword_1EBD4A4E0, &qword_1BE0E1008);
  sub_1BD0DE53C(v13, &qword_1EBD4A4E0, &qword_1BE0E1008);
  sub_1BD0DE53C(v20, &qword_1EBD4A4E8, &qword_1BE0E1010);
  sub_1BD0DE53C(v10, &qword_1EBD4A4E0, &qword_1BE0E1008);
  return sub_1BD0DE53C(v17, &qword_1EBD4A4E8, &qword_1BE0E1010);
}

uint64_t sub_1BD5547E0@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4A500, &qword_1BE0E1030);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v34 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4A508, &qword_1BE0E1038);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v34 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4A510, &qword_1BE0E1040);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14.n128_f64[0] = MEMORY[0x1EEE9AC00](v12);
  v16 = &v34 - v15;
  v17 = *(v1 + 128);
  if (v17)
  {
    v36 = a1;
    v37 = v13;
    v18 = *(v1 + 112);
    v35 = v18;
    sub_1BE048C84();
    *v5 = sub_1BE04F7B4();
    *(v5 + 1) = 0;
    v5[16] = 0;
    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4A518, &qword_1BE0E1048);
    sub_1BD555F3C(v18, v17, v1, &v5[*(v19 + 44)]);
    v20 = *(v1 + 160);
    v21 = *(v1 + 168);
    v39 = *(v1 + 152);
    v40 = v20;
    v41 = v21;
    v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD4DFE0, &qword_1BE0C42E0);
    MEMORY[0x1BFB3E970](&v38, v22);
    v17, v23, v24, v25, v26, v27, v28, v29;

    if (v38)
    {
      v30 = 1.0;
    }

    else
    {
      v30 = 0.0;
    }

    sub_1BD0DE204(v5, v8, &qword_1EBD4A500, &qword_1BE0E1030);
    *&v8[*(v6 + 36)] = v30;
    sub_1BD0DE204(v8, v11, &qword_1EBD4A508, &qword_1BE0E1038);
    sub_1BD0DE204(v11, v16, &qword_1EBD4A510, &qword_1BE0E1040);
    v31 = v36;
    sub_1BD0DE204(v16, v36, &qword_1EBD4A510, &qword_1BE0E1040);
    return (*(v37 + 56))(v31, 0, 1, v9);
  }

  else
  {
    v33 = *(v13 + 56);

    return v33(a1, 1, 1, v9, v14);
  }
}

uint64_t sub_1BD554B18@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v29[1] = a2;
  v3 = type metadata accessor for PaymentOfferSelectorTile(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4A5C8, &qword_1BE0E1118);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v29 - v8;
  v29[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4A5D0, &qword_1BE0E1120);
  v10 = *(v29[0] - 8);
  MEMORY[0x1EEE9AC00](v29[0]);
  v12 = v29 - v11;
  sub_1BD559924(a1, v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v14 = swift_allocObject();
  sub_1BD559988(v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v14 + v13);
  v29[4] = a1;
  v15 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4A5D8, &qword_1BE0E1128);
  sub_1BD55A724();
  sub_1BE051704();
  v16 = sub_1BD0DE4F4(&qword_1EBD4A608, &qword_1EBD4A5C8, &qword_1BE0E1118, MEMORY[0x1E697D680]);
  v17 = sub_1BD55A894();
  sub_1BE0508A4();
  (*(v7 + 8))(v9, v6);
  if (*(v15 + 144))
  {
    sub_1BE052434();
    v19 = v18;
  }

  else
  {
    v19 = 0xE000000000000000;
  }

  v29[6] = v6;
  v29[7] = &type metadata for PaymentOfferSelectorTile.TileButtonStyle;
  v29[8] = v16;
  v29[9] = v17;
  swift_getOpaqueTypeConformance2();
  v20 = v29[0];
  sub_1BE050DE4();
  v19, v21, v22, v23, v24, v25, v26, v27;
  return (*(v10 + 8))(v12, v20);
}

uint64_t sub_1BD554E6C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4A600, &unk_1BE0E1138);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v22 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4A5F0, &qword_1BE0E1130);
  v8 = v7 - 8;
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v22 - v9;
  *v6 = sub_1BE04F504();
  *(v6 + 1) = 0x402A000000000000;
  v6[16] = 0;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4A618, &qword_1BE0E1148);
  sub_1BD555034(a1, &v6[*(v11 + 44)]);
  LOBYTE(a1) = sub_1BE0501D4();
  sub_1BE04E1F4();
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  sub_1BD0DE204(v6, v10, &qword_1EBD4A600, &unk_1BE0E1138);
  v20 = &v10[*(v8 + 44)];
  *v20 = a1;
  *(v20 + 1) = v13;
  *(v20 + 2) = v15;
  *(v20 + 3) = v17;
  *(v20 + 4) = v19;
  v20[40] = 0;
  sub_1BD0DE204(v10, a2, &qword_1EBD4A5F0, &qword_1BE0E1130);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4A5D8, &qword_1BE0E1128);
  *(a2 + *(result + 36)) = 0;
  return result;
}

uint64_t sub_1BD555034@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4A620, &qword_1BE0E1150);
  v94 = *(v97 - 8);
  MEMORY[0x1EEE9AC00](v97);
  v88 = &v87 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4A628, &unk_1BE0E1158);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v96 = &v87 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v98 = &v87 - v8;
  v9 = sub_1BE04FEB4();
  v90 = *(v9 - 8);
  v91 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v87 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD51330, &qword_1BE0BB6F0);
  v89 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v87 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4A630, &qword_1BE0E1168);
  v92 = *(v15 - 8);
  v93 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v87 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4A638, &qword_1BE0E1170);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v95 = &v87 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v87 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4A640, &qword_1BE0E1178);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v100 = &v87 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v27 = (&v87 - v26);
  sub_1BD555A58(v114);
  *v27 = sub_1BE051CD4();
  v27[1] = v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4A648, &qword_1BE0E1180);
  sub_1BD557690(a1, v27 + *(v29 + 44));
  KeyPath = swift_getKeyPath();
  v31 = v27 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4A650, &qword_1BE0E11B8) + 36);
  *v31 = KeyPath;
  v31[8] = 0;
  LODWORD(KeyPath) = sub_1BE04FC74();
  v32 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4A658, &qword_1BE0E11C0) + 36);
  v99 = v27;
  *(v27 + v32) = KeyPath;
  if (*(a1 + 105) == 1)
  {
    sub_1BE04E4F4();
    sub_1BE04FEA4();
    sub_1BD0DE4F4(&unk_1EBD49880, &unk_1EBD51330, &qword_1BE0BB6F0, MEMORY[0x1E697BF38]);
    v87 = a1;
    sub_1BD55B02C(&qword_1EBD4A670, MEMORY[0x1E697C9C8], MEMORY[0x1E697C9B0]);
    v33 = v91;
    sub_1BE050804();
    (*(v90 + 8))(v11, v33);
    (*(v89 + 8))(v14, v12);
    v34 = &v17[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4A678, &unk_1BE0E1200) + 36)];
    v35 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3ABF0, &qword_1BE0BB6F8) + 28);
    v36 = *MEMORY[0x1E697DC28];
    v37 = sub_1BE04E364();
    (*(*(v37 - 8) + 104))(v34 + v35, v36, v37);
    *v34 = swift_getKeyPath();
    v38 = sub_1BE051494();
    v39 = swift_getKeyPath();
    v40 = v93;
    v41 = &v17[*(v93 + 36)];
    *v41 = v39;
    v41[1] = v38;
    a1 = v87;
    sub_1BD0DE204(v17, v22, &qword_1EBD4A630, &qword_1BE0E1168);
    v42 = 0;
    v43 = v22;
    v44 = v40;
  }

  else
  {
    v42 = 1;
    v43 = v22;
    v44 = v93;
  }

  (*(v92 + 56))(v43, v42, 1, v44);
  v45 = 1;
  if (*(a1 + 136) == 1)
  {
    v46 = (a1 + *(type metadata accessor for PaymentOfferSelectorTile(0) + 44));
    v47 = *v46;
    if (*v46)
    {
      v48 = v46[1];
      v49 = swift_allocObject();
      *(v49 + 16) = v47;
      *(v49 + 24) = v48;
      sub_1BD0D44B8(v47, v48);
      sub_1BE048964();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD41088, &unk_1BE0C9E90);
      sub_1BD55A998();
      v50 = v88;
      sub_1BE051704();
      v51 = [objc_opt_self() tertiaryLabelColor];
      v52 = sub_1BE0511C4();
      v53 = swift_getKeyPath();
      *&v113[0] = v52;
      sub_1BE048964();
      v54 = sub_1BE04E5F4();
      sub_1BD0D4744(v47, v48, v55, v56, v57, v58, v59, v60);
      v52, v61, v62, v63, v64, v65, v66, v67;
      v68 = v98;
      v69 = (v50 + *(v97 + 36));
      *v69 = v53;
      v69[1] = v54;
      sub_1BD0DE204(v50, v68, &qword_1EBD4A620, &qword_1BE0E1150);
      v45 = 0;
    }

    else
    {
      v45 = 1;
    }
  }

  v70 = v98;
  (*(v94 + 56))(v98, v45, 1, v97);
  v109 = v114[8];
  v110 = v114[9];
  v111 = v114[10];
  v105 = v114[4];
  v106 = v114[5];
  v107 = v114[6];
  v108 = v114[7];
  v101 = v114[0];
  v102 = v114[1];
  v103 = v114[2];
  v104 = v114[3];
  v71 = v100;
  sub_1BD0DE19C(v99, v100, &qword_1EBD4A640, &qword_1BE0E1178);
  v72 = v95;
  sub_1BD0DE19C(v43, v95, &qword_1EBD4A638, &qword_1BE0E1170);
  v97 = v43;
  v73 = v96;
  sub_1BD0DE19C(v70, v96, &qword_1EBD4A628, &unk_1BE0E1158);
  v74 = v110;
  v112[8] = v109;
  v112[9] = v110;
  v75 = v111;
  v112[10] = v111;
  v76 = v105;
  v77 = v106;
  v112[4] = v105;
  v112[5] = v106;
  v79 = v107;
  v78 = v108;
  v112[6] = v107;
  v112[7] = v108;
  v80 = v101;
  v81 = v102;
  v112[0] = v101;
  v112[1] = v102;
  v83 = v103;
  v82 = v104;
  v112[2] = v103;
  v112[3] = v104;
  a2[8] = v109;
  a2[9] = v74;
  a2[10] = v75;
  a2[4] = v76;
  a2[5] = v77;
  a2[6] = v79;
  a2[7] = v78;
  *a2 = v80;
  a2[1] = v81;
  a2[2] = v83;
  a2[3] = v82;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4A660, &qword_1BE0E11C8);
  sub_1BD0DE19C(v71, a2 + v84[12], &qword_1EBD4A640, &qword_1BE0E1178);
  v85 = a2 + v84[16];
  *v85 = 0;
  v85[8] = 1;
  sub_1BD0DE19C(v72, a2 + v84[20], &qword_1EBD4A638, &qword_1BE0E1170);
  sub_1BD0DE19C(v73, a2 + v84[24], &qword_1EBD4A628, &unk_1BE0E1158);
  sub_1BD55A8E8(v112, v113);
  sub_1BD0DE53C(v70, &qword_1EBD4A628, &unk_1BE0E1158);
  sub_1BD0DE53C(v97, &qword_1EBD4A638, &qword_1BE0E1170);
  sub_1BD0DE53C(v99, &qword_1EBD4A640, &qword_1BE0E1178);
  sub_1BD0DE53C(v73, &qword_1EBD4A628, &unk_1BE0E1158);
  sub_1BD0DE53C(v72, &qword_1EBD4A638, &qword_1BE0E1170);
  sub_1BD0DE53C(v100, &qword_1EBD4A640, &qword_1BE0E1178);
  v113[8] = v109;
  v113[9] = v110;
  v113[10] = v111;
  v113[4] = v105;
  v113[5] = v106;
  v113[6] = v107;
  v113[7] = v108;
  v113[0] = v101;
  v113[1] = v102;
  v113[2] = v103;
  v113[3] = v104;
  return sub_1BD55A944(v113);
}

void sub_1BD555A58(uint64_t a1@<X8>)
{
  v3 = *(v1 + 8);
  *&v46 = *v1;
  *(&v46 + 1) = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4A778, &qword_1BE0F2010);
  sub_1BE0516A4();
  v4 = sub_1BD227B28();

  v5 = *(v1 + 24);
  v6 = *(v1 + 136);
  if (v6 == 1)
  {
    v7 = *(v1 + 104);
  }

  else
  {
    v7 = 1;
  }

  v8 = *(v1 + 16);
  v50 = 0xC05E000000000000;
  sub_1BE048C84();
  sub_1BE051694();
  v9 = *(&v46 + 1);
  v10 = v46;
  v11 = v4[2];
  if (v11 > 1)
  {
    v44 = v5;
    v45 = *(&v46 + 1);
    v43 = v7;
    v42 = v8;
    if (v11 == 2)
    {
      v13 = v4[9];
      v12 = v4[10];
      v14 = v4[8];
      v15 = v4[5];
      v16 = v4[19];
      v17 = v4[20];
      v18 = v4[23];
      v19 = v4[24];
      v20 = v4[25];
      *&v46 = v4[4];
      *(&v46 + 1) = v15;
      *&v47 = v14;
      *(&v47 + 1) = v13;
      *v48 = v12;
      *&v48[8] = v16;
      *&v48[16] = v17;
      *&v48[24] = v18;
      *&v48[32] = v19;
      *&v48[40] = v20;
      memset(&v48[48], 0, 40);
      sub_1BD55AC84(&v46);
      *&v49[69] = *&v48[32];
      *&v49[85] = *&v48[48];
      *&v49[101] = *&v48[64];
      *&v49[110] = *&v48[73];
      *&v49[5] = v46;
      *&v49[21] = v47;
      *&v49[37] = *v48;
      *&v49[53] = *&v48[16];
      v5 = v44;
      sub_1BE048C84();
      sub_1BE048C84();
      sub_1BE048964();
      v7 = v43;
      sub_1BE048C84();
      v8 = v42;
      sub_1BE048C84();
LABEL_13:
      sub_1BE048964();
      v9 = v45;
      goto LABEL_14;
    }

    if (v11 == 3)
    {
      v25 = v4[5];
      v26 = v4[8];
      v27 = v4[9];
      v28 = v4[10];
      v29 = v4[24];
      v30 = v4[23];
      v31 = v4[19];
      v32 = v4[20];
      v33 = v4[34];
      v34 = v4[35];
      v35 = v4[38];
      v39 = v4[25];
      v40 = v4[39];
      v41 = v4[40];
      *&v46 = v4[4];
      *(&v46 + 1) = v25;
      *&v47 = v26;
      *(&v47 + 1) = v27;
      *v48 = v28;
      *&v48[8] = v31;
      *&v48[16] = v32;
      *&v48[24] = v30;
      *&v48[32] = v29;
      *&v48[40] = v39;
      *&v48[48] = v33;
      *&v48[56] = v34;
      *&v48[64] = v35;
      *&v48[72] = v40;
      *&v48[80] = v41;
      sub_1BD55AC78(&v46);
      *&v49[69] = *&v48[32];
      *&v49[85] = *&v48[48];
      *&v49[101] = *&v48[64];
      *&v49[110] = *&v48[73];
      *&v49[5] = v46;
      *&v49[21] = v47;
      *&v49[37] = *v48;
      *&v49[53] = *&v48[16];
      sub_1BE048C84();
      sub_1BE048C84();
      v8 = v42;
      sub_1BE048964();
      sub_1BE048C84();
      v7 = v43;
      sub_1BE048C84();
      sub_1BE048964();
      v5 = v44;
      sub_1BE048C84();
      sub_1BE048C84();
      goto LABEL_13;
    }
  }

  else
  {
    if (!v11)
    {
      sub_1BD55AC98(&v46);
      *&v49[69] = *&v48[32];
      *&v49[85] = *&v48[48];
      *&v49[101] = *&v48[64];
      *&v49[110] = *&v48[73];
      *&v49[5] = v46;
      *&v49[21] = v47;
      *&v49[37] = *v48;
      *&v49[53] = *&v48[16];
LABEL_14:
      v36 = *&v49[80];
      *(a1 + 91) = *&v49[64];
      *(a1 + 107) = v36;
      *(a1 + 123) = *&v49[96];
      *(a1 + 137) = *&v49[110];
      v37 = *&v49[16];
      *(a1 + 27) = *v49;
      *(a1 + 43) = v37;
      v38 = *&v49[48];
      *(a1 + 59) = *&v49[32];
      *a1 = v4;
      *(a1 + 8) = v8;
      *(a1 + 16) = v5;
      *(a1 + 24) = v6;
      *(a1 + 25) = v7;
      *(a1 + 26) = v6;
      *(a1 + 75) = v38;
      *(a1 + 160) = v10;
      *(a1 + 168) = v9;
      return;
    }

    v45 = *(&v46 + 1);
    if (v11 == 1)
    {
      v21 = v4[5];
      v22 = v4[8];
      v23 = v4[9];
      v24 = v4[10];
      *&v46 = v4[4];
      *(&v46 + 1) = v21;
      *&v47 = v22;
      *(&v47 + 1) = v23;
      *v48 = v24;
      memset(&v48[8], 0, 80);
      sub_1BD55AC90(&v46);
      *&v49[69] = *&v48[32];
      *&v49[85] = *&v48[48];
      *&v49[101] = *&v48[64];
      *&v49[110] = *&v48[73];
      *&v49[5] = v46;
      *&v49[21] = v47;
      *&v49[37] = *v48;
      *&v49[53] = *&v48[16];
      sub_1BE048C84();
      sub_1BE048C84();
      goto LABEL_13;
    }
  }

  sub_1BE053994();
  __break(1u);
}

uint64_t sub_1BD555E5C@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_1BE051574();
  v3 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD41088, &unk_1BE0C9E90) + 36);
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3EFB0, &qword_1BE0F32E0) + 28);
  v5 = *MEMORY[0x1E69816C0];
  v6 = sub_1BE0515D4();
  (*(*(v6 - 8) + 104))(&v3[v4], v5, v6);
  result = swift_getKeyPath();
  *v3 = result;
  *a1 = v2;
  return result;
}

uint64_t sub_1BD555F3C@<X0>(void *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v123 = a4;
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4A520, &qword_1BE0E1050);
  MEMORY[0x1EEE9AC00](v115);
  v118 = (&v110 - v7);
  v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4A528, &qword_1BE0E1058);
  MEMORY[0x1EEE9AC00](v117);
  v120 = &v110 - v8;
  v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4A530, &qword_1BE0E1060);
  MEMORY[0x1EEE9AC00](v119);
  v122 = &v110 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v116 = &v110 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v121 = &v110 - v13;
  v14 = type metadata accessor for PaymentOfferSelectorTile(0);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = &v110 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v110 - v19;
  v124 = a3;
  if (a1)
  {
    v112 = &v110 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
    v114 = a2;
    v21 = v15;
    v22 = *MEMORY[0x1E69DDD80];
    v23 = *MEMORY[0x1E69DDC40];
    v24 = a1;
    v111 = PKFontForDefaultDesign(v22, v23);
    v110 = sub_1BE051494();
    sub_1BD559924(a3, v20);
    v113 = v21;
    v25 = (*(v21 + 80) + 16) & ~*(v21 + 80);
    v26 = swift_allocObject();
    sub_1BD559988(v20, v26 + v25);
    v27 = objc_opt_self();
    v28 = swift_allocObject();
    v28[3] = 0;
    v28[4] = 0;
    v28[2] = 0;
    v28[5] = sub_1BD559CF4;
    v28[6] = v26;
    *&v152 = sub_1BD3A376C;
    *(&v152 + 1) = v28;
    *&v150 = MEMORY[0x1E69E9820];
    *(&v150 + 1) = 1107296256;
    *&v151 = sub_1BD198918;
    *(&v151 + 1) = &block_descriptor_121;
    v29 = _Block_copy(&v150);
    v30 = *(&v152 + 1);
    sub_1BE048964();
    v30, v31, v32, v33, v34, v35, v36, v37;
    v38 = [v27 hyperlinkSourcesFromApplyFooter:v24 linkTapped:v29];
    _Block_release(v29);
    if (v38)
    {
      sub_1BD559F34();
      v39 = sub_1BE052744();
    }

    else
    {
      v39 = MEMORY[0x1E69E7CC0];
    }

    v41 = [v24 footerText];
    v42 = sub_1BE052434();
    v44 = v43;

    v26, v45, v46, v47, v48, v49, v50, v51;
    v52 = sub_1BE0501C4();
    v40 = v124;
    sub_1BE04E1F4();
    v54 = v53;
    v56 = v55;
    v58 = v57;
    v60 = v59;
    LOBYTE(v140[0]) = 0;
    LOBYTE(v126) = 0;
    sub_1BE051CE4();
    sub_1BE04EE54();

    *&v125[55] = v148[11];
    *&v125[71] = v148[12];
    *&v125[87] = v148[13];
    *&v125[103] = v149;
    *&v125[7] = v148[8];
    *&v125[23] = v148[9];
    *&v125[39] = v148[10];
    *&v142 = v39;
    *(&v142 + 1) = 4;
    LOBYTE(v143) = 0;
    *(&v143 + 1) = v42;
    *&v144 = v44;
    *(&v144 + 1) = v111;
    *&v145 = v110;
    BYTE8(v145) = v52;
    *&v146 = v54;
    *(&v146 + 1) = v56;
    *&v147 = v58;
    *(&v147 + 1) = v60;
    LOBYTE(v148[0]) = 0;
    *(&v148[4] + 1) = *&v125[64];
    *(&v148[5] + 1) = *&v125[80];
    *(&v148[6] + 1) = *&v125[96];
    *&v148[7] = *(&v149 + 1);
    *(v148 + 1) = *v125;
    *(&v148[1] + 1) = *&v125[16];
    *(&v148[2] + 1) = *&v125[32];
    *(&v148[3] + 1) = *&v125[48];
    PKEdgeInsetsMake();
    v160 = v148[4];
    v161 = v148[5];
    v162 = v148[6];
    v163 = *&v148[7];
    v156 = v148[0];
    v157 = v148[1];
    v158 = v148[2];
    v159 = v148[3];
    v152 = v144;
    v153 = v145;
    v154 = v146;
    v155 = v147;
    v150 = v142;
    v151 = v143;
    v15 = v113;
    a2 = v114;
    v17 = v112;
  }

  else
  {
    sub_1BD316EB8(&v150);
    v40 = a3;
  }

  v61 = sub_1BE04F7B4();
  v62 = v118;
  *v118 = v61;
  *(v62 + 8) = 0x4020000000000000;
  *(v62 + 16) = 0;
  v114 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4A538, &unk_1BE0E1068) + 44);
  *&v142 = a2;
  swift_getKeyPath();
  sub_1BD559924(v40, v17);
  v63 = (*(v15 + 80) + 16) & ~*(v15 + 80);
  v64 = swift_allocObject();
  sub_1BD559988(v17, v64 + v63);
  sub_1BE048C84();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4A540, &qword_1BE0E1090);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4A548, &qword_1BE0E1098);
  sub_1BD0DE4F4(&qword_1EBD4A550, &qword_1EBD4A540, &qword_1BE0E1090, MEMORY[0x1E69E6338]);
  sub_1BD559A6C();
  sub_1BD559AC0();
  sub_1BE0519C4();
  v65 = sub_1BE0501E4();
  sub_1BE04E1F4();
  v66 = v62 + *(v115 + 36);
  *v66 = v65;
  *(v66 + 8) = v67;
  *(v66 + 16) = v68;
  *(v66 + 24) = v69;
  *(v66 + 32) = v70;
  *(v66 + 40) = 0;
  v71 = sub_1BE0501C4();
  sub_1BE04E1F4();
  v73 = v72;
  v75 = v74;
  v77 = v76;
  v79 = v78;
  v80 = v120;
  sub_1BD0DE204(v62, v120, &qword_1EBD4A520, &qword_1BE0E1050);
  v81 = v80 + *(v117 + 36);
  *v81 = v71;
  *(v81 + 8) = v73;
  *(v81 + 16) = v75;
  *(v81 + 24) = v77;
  *(v81 + 32) = v79;
  *(v81 + 40) = 0;
  v82 = sub_1BE0501F4();
  sub_1BE04E1F4();
  v84 = v83;
  v86 = v85;
  v88 = v87;
  v90 = v89;
  v91 = v80;
  v92 = v116;
  sub_1BD0DE204(v91, v116, &qword_1EBD4A528, &qword_1BE0E1058);
  v93 = v92 + *(v119 + 36);
  *v93 = v82;
  *(v93 + 8) = v84;
  *(v93 + 16) = v86;
  *(v93 + 24) = v88;
  *(v93 + 32) = v90;
  *(v93 + 40) = 0;
  v94 = v121;
  sub_1BD0DE204(v92, v121, &qword_1EBD4A530, &qword_1BE0E1060);
  v137 = v161;
  v138 = v162;
  v133 = v157;
  v134 = v158;
  v135 = v159;
  v136 = v160;
  v129 = v153;
  v130 = v154;
  v131 = v155;
  v132 = v156;
  v126 = v150;
  v139 = v163;
  v127 = v151;
  v128 = v152;
  v95 = v122;
  sub_1BD0DE19C(v94, v122, &qword_1EBD4A530, &qword_1BE0E1060);
  v96 = v135;
  v140[10] = v136;
  v140[11] = v137;
  v97 = v137;
  v140[12] = v138;
  v98 = v132;
  v99 = v131;
  v140[6] = v132;
  v140[7] = v133;
  v100 = v133;
  v101 = v134;
  v140[8] = v134;
  v140[9] = v135;
  v102 = v128;
  v103 = v127;
  v140[2] = v128;
  v140[3] = v129;
  v104 = v129;
  v105 = v130;
  v140[4] = v130;
  v140[5] = v131;
  v106 = v126;
  v140[0] = v126;
  v140[1] = v127;
  v107 = v123;
  *(v123 + 160) = v136;
  *(v107 + 176) = v97;
  *(v107 + 192) = v138;
  *(v107 + 96) = v98;
  *(v107 + 112) = v100;
  *(v107 + 128) = v101;
  *(v107 + 144) = v96;
  *(v107 + 32) = v102;
  *(v107 + 48) = v104;
  *(v107 + 64) = v105;
  *(v107 + 80) = v99;
  v141 = v139;
  *(v107 + 208) = v139;
  *v107 = v106;
  *(v107 + 16) = v103;
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4A590, &qword_1BE0E10B8);
  sub_1BD0DE19C(v95, v107 + *(v108 + 48), &qword_1EBD4A530, &qword_1BE0E1060);
  sub_1BD0DE19C(v140, &v142, &qword_1EBD4A598, &qword_1BE0E10C0);
  sub_1BD0DE53C(v94, &qword_1EBD4A530, &qword_1BE0E1060);
  sub_1BD0DE53C(v95, &qword_1EBD4A530, &qword_1BE0E1060);
  v148[4] = v136;
  v148[5] = v137;
  v148[6] = v138;
  v148[0] = v132;
  v148[1] = v133;
  v148[2] = v134;
  v148[3] = v135;
  v144 = v128;
  v145 = v129;
  *&v148[7] = v139;
  v146 = v130;
  v147 = v131;
  v142 = v126;
  v143 = v127;
  return sub_1BD0DE53C(&v142, &qword_1EBD4A598, &qword_1BE0E10C0);
}

uint64_t sub_1BD556914(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD45160, &qword_1BE0C25A0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v11 - v6;
  v8 = sub_1BE04AA64();
  (*(*(v8 - 8) + 16))(v7, a1, v8);
  v9 = type metadata accessor for MultiHyperLinkDetailSheet(0);
  swift_storeEnumTagMultiPayload();
  (*(*(v9 - 8) + 56))(v7, 0, 1, v9);
  type metadata accessor for PaymentOfferSelectorTile(0);
  sub_1BD0DE19C(v7, v4, &unk_1EBD45160, &qword_1BE0C25A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD393E8, &qword_1BE0B8680);
  sub_1BE0518F4();
  return sub_1BD0DE53C(v7, &unk_1EBD45160, &qword_1BE0C25A0);
}

uint64_t sub_1BD556AA8@<X0>(unsigned __int8 *a1@<X0>, _BYTE *a2@<X1>, uint64_t a3@<X8>)
{
  v49 = a3;
  v43 = sub_1BE04ECE4();
  v45 = *(v43 - 8);
  MEMORY[0x1EEE9AC00](v43);
  v6 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for PaymentOfferSelectorTile(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4A578, &unk_1BE0E10A8);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v42 - v13;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4A5A0, &qword_1BE0E10C8);
  v44 = *(v46 - 8);
  MEMORY[0x1EEE9AC00](v46);
  v16 = &v42 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4A570, &qword_1BE0E10A0);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v47 = &v42 - v18;
  v48 = a2;
  LOBYTE(a1) = *a1;
  sub_1BD559924(a2, v10);
  v19 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v20 = v19 + v9;
  v21 = swift_allocObject();
  sub_1BD559988(v10, v21 + v19);
  *(v21 + v20) = a1;
  v22 = v43;
  v50 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4A5A8, &qword_1BE0E10D0);
  sub_1BD55A014();
  sub_1BE051704();
  sub_1BE04ECD4();
  v23 = sub_1BD0DE4F4(&qword_1EBD4A580, &qword_1EBD4A578, &unk_1BE0E10A8, MEMORY[0x1E697D680]);
  v24 = sub_1BD55B02C(&qword_1EBD4A588, MEMORY[0x1E697C1D8], MEMORY[0x1E697C1D0]);
  sub_1BE050894();
  (*(v45 + 8))(v6, v22);
  (*(v12 + 8))(v14, v11);
  if (sub_1BD55A458(a1))
  {
    sub_1BE052434();
    v26 = v25;
  }

  else
  {
    v26 = 0xE000000000000000;
  }

  v51 = v11;
  v52 = v22;
  v53 = v23;
  v54 = v24;
  swift_getOpaqueTypeConformance2();
  v27 = v46;
  v28 = v47;
  sub_1BE050DE4();
  v26, v29, v30, v31, v32, v33, v34, v35;
  (*(v44 + 8))(v16, v27);
  if (v48[136] == 1)
  {
    if (v48[105])
    {
      v36 = 1;
    }

    else
    {
      v36 = v48[106];
    }
  }

  else
  {
    v36 = 0;
  }

  KeyPath = swift_getKeyPath();
  v38 = swift_allocObject();
  *(v38 + 16) = v36;
  v39 = v49;
  sub_1BD0DE204(v28, v49, &qword_1EBD4A570, &qword_1BE0E10A0);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4A548, &qword_1BE0E1098);
  v41 = (v39 + *(result + 36));
  *v41 = KeyPath;
  v41[1] = sub_1BD55A470;
  v41[2] = v38;
  return result;
}

uint64_t sub_1BD556FDC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = a1;
  v39 = a2;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C1D0, &qword_1BE0CC5C0);
  MEMORY[0x1EEE9AC00](v36);
  v4 = &v34 - v3;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4A5B8, &qword_1BE0E10D8);
  v5 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v7 = &v34 - v6;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4A5C0, &qword_1BE0E1110);
  v37 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v38);
  v9 = &v34 - v8;
  *&v42 = sub_1BD5574C4(v2);
  *(&v42 + 1) = v10;
  sub_1BD0DDEBC();
  v11 = sub_1BE0506C4();
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v18 = sub_1BE0501D4();
  sub_1BE04E1F4();
  v41 = v15 & 1;
  v40 = 0;
  *&v42 = v11;
  *(&v42 + 1) = v13;
  LOBYTE(v43) = v15 & 1;
  *(&v43 + 1) = v17;
  LOBYTE(v44) = v18;
  *(&v44 + 1) = v19;
  *v45 = v20;
  *&v45[8] = v21;
  *&v45[16] = v22;
  v45[24] = 0;
  sub_1BE050384();
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3DF90, &qword_1BE0C2E90);
  v24 = sub_1BD2A275C();
  sub_1BE050854();
  v48[2] = v44;
  v49[0] = *v45;
  *(v49 + 9) = *&v45[9];
  v48[0] = v42;
  v48[1] = v43;
  sub_1BD0DE53C(v48, &unk_1EBD3DF90, &qword_1BE0C2E90);
  v25 = *MEMORY[0x1E697E6C8];
  v26 = sub_1BE04EB24();
  (*(*(v26 - 8) + 104))(v4, v25, v26);
  sub_1BD55B02C(&qword_1EBD3C218, MEMORY[0x1E697E730], MEMORY[0x1E697E750]);
  result = sub_1BE052334();
  if (result)
  {
    *&v42 = v23;
    *(&v42 + 1) = v24;
    swift_getOpaqueTypeConformance2();
    sub_1BD0DE4F4(&qword_1EBD3C220, &qword_1EBD3C1D0, &qword_1BE0CC5C0, MEMORY[0x1E69E6ED8]);
    v28 = v35;
    sub_1BE050B34();
    sub_1BD0DE53C(v4, &qword_1EBD3C1D0, &qword_1BE0CC5C0);
    (*(v5 + 8))(v7, v28);
    sub_1BE051CD4();
    sub_1BE04EE54();
    v29 = v39;
    (*(v37 + 32))(v39, v9, v38);
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4A5A8, &qword_1BE0E10D0);
    v30 = (v29 + *(result + 36));
    v31 = v46;
    v30[4] = *&v45[16];
    v30[5] = v31;
    v30[6] = v47;
    v32 = v43;
    *v30 = v42;
    v30[1] = v32;
    v33 = *v45;
    v30[2] = v44;
    v30[3] = v33;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1BD5574C4(unsigned __int8 a1)
{
  v1 = sub_1BE04BD74();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x1EEE9AC00](v1);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v2 + 104))(v5, *MEMORY[0x1E69B8078], v1, v3);
  v6 = sub_1BE04B714();
  (*(v2 + 8))(v5, v1);
  return v6;
}

uint64_t sub_1BD557690@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4A680, &qword_1BE0E12A0);
  v5 = v4 - 8;
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v21 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4A688, &qword_1BE0E12A8);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v21 - v15;
  *v16 = sub_1BE04F7C4();
  *(v16 + 1) = 0x4010000000000000;
  v16[16] = 0;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4A690, &qword_1BE0E12B0);
  sub_1BD5578E8(a1, &v16[*(v17 + 44)]);
  *v10 = sub_1BE04F7C4();
  *(v10 + 1) = 0x4010000000000000;
  v10[16] = 0;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4A698, &qword_1BE0E12B8);
  sub_1BD557D6C(a1, &v10[*(v18 + 44)]);
  *&v10[*(v5 + 44)] = 0;
  sub_1BD0DE19C(v16, v13, &qword_1EBD4A688, &qword_1BE0E12A8);
  sub_1BD0DE19C(v10, v7, &qword_1EBD4A680, &qword_1BE0E12A0);
  sub_1BD0DE19C(v13, a2, &qword_1EBD4A688, &qword_1BE0E12A8);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4A6A0, &qword_1BE0E12C0);
  sub_1BD0DE19C(v7, a2 + *(v19 + 48), &qword_1EBD4A680, &qword_1BE0E12A0);
  sub_1BD0DE53C(v10, &qword_1EBD4A680, &qword_1BE0E12A0);
  sub_1BD0DE53C(v16, &qword_1EBD4A688, &qword_1BE0E12A8);
  sub_1BD0DE53C(v7, &qword_1EBD4A680, &qword_1BE0E12A0);
  return sub_1BD0DE53C(v13, &qword_1EBD4A688, &qword_1BE0E12A8);
}

uint64_t sub_1BD5578E8@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  v44 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4A6A8, &qword_1BE0E12C8);
  v42 = *(v3 - 8);
  v43 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v37 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4A768, &qword_1BE0E13C8);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v41 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v37 - v9;
  MEMORY[0x1EEE9AC00](v11);
  v40 = &v37 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4A6B0, &qword_1BE0E12D0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v37 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4A6B8, &qword_1BE0E12D8);
  v38 = *(v16 - 8);
  v39 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v37 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v37 - v20;
  *v15 = sub_1BE04F504();
  *(v15 + 1) = 0x4018000000000000;
  v15[16] = 0;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4A6C0, &qword_1BE0E12E0);
  sub_1BD5580D8(a1, &v15[*(v22 + 44)]);
  sub_1BE050394();
  sub_1BD0DE4F4(&qword_1EBD4A6C8, &qword_1EBD4A6B0, &qword_1BE0E12D0, MEMORY[0x1E69817F8]);
  v37 = v21;
  sub_1BE050854();
  sub_1BD0DE53C(v15, &qword_1EBD4A6B0, &qword_1BE0E12D0);
  v23 = a1[12];
  if (v23)
  {
    v24 = a1[11];
    *v5 = sub_1BE04F504();
    *(v5 + 1) = 0x4018000000000000;
    v5[16] = 0;
    v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4A6D0, &qword_1BE0E12E8);
    sub_1BD5588C4(a1, v24, v23, &v5[*(v25 + 44)]);
    sub_1BD0DE204(v5, v10, &qword_1EBD4A6A8, &qword_1BE0E12C8);
    v26 = 0;
  }

  else
  {
    v26 = 1;
  }

  (*(v42 + 56))(v10, v26, 1, v43);
  v27 = v40;
  sub_1BD0DE204(v10, v40, &qword_1EBD4A768, &qword_1BE0E13C8);
  v29 = v37;
  v28 = v38;
  v30 = *(v38 + 16);
  v31 = v39;
  v30(v18, v37, v39);
  v32 = v41;
  sub_1BD0DE19C(v27, v41, &qword_1EBD4A768, &qword_1BE0E13C8);
  v33 = v44;
  v30(v44, v18, v31);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4A770, &unk_1BE0E13D0);
  sub_1BD0DE19C(v32, &v33[*(v34 + 48)], &qword_1EBD4A768, &qword_1BE0E13C8);
  sub_1BD0DE53C(v27, &qword_1EBD4A768, &qword_1BE0E13C8);
  v35 = *(v28 + 8);
  v35(v29, v31);
  sub_1BD0DE53C(v32, &qword_1EBD4A768, &qword_1BE0E13C8);
  return (v35)(v18, v31);
}

uint64_t sub_1BD557D6C@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  v31 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4A6A8, &qword_1BE0E12C8);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v30 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v26 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4A6B0, &qword_1BE0E12D0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v26 - v9;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4A6B8, &qword_1BE0E12D8);
  v11 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v28 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v26 - v14;
  *v10 = sub_1BE04F504();
  *(v10 + 1) = 0x4018000000000000;
  v10[16] = 0;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4A6C0, &qword_1BE0E12E0);
  sub_1BD5580D8(a1, &v10[*(v16 + 44)]);
  sub_1BE050394();
  sub_1BD0DE4F4(&qword_1EBD4A6C8, &qword_1EBD4A6B0, &qword_1BE0E12D0, MEMORY[0x1E69817F8]);
  v27 = v15;
  sub_1BE050854();
  sub_1BD0DE53C(v10, &qword_1EBD4A6B0, &qword_1BE0E12D0);
  *v7 = sub_1BE04F504();
  *(v7 + 1) = 0x4018000000000000;
  v7[16] = 0;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4A6D0, &qword_1BE0E12E8);
  sub_1BD5588C4(a1, 0, 0xE000000000000000, &v7[*(v17 + 44)]);
  v18 = *(v11 + 16);
  v19 = v28;
  v20 = v29;
  v18(v28, v15, v29);
  v21 = v30;
  sub_1BD0DE19C(v7, v30, &qword_1EBD4A6A8, &qword_1BE0E12C8);
  v22 = v31;
  v18(v31, v19, v20);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4A6D8, &qword_1BE0E12F0);
  sub_1BD0DE19C(v21, &v22[*(v23 + 48)], &qword_1EBD4A6A8, &qword_1BE0E12C8);
  sub_1BD0DE53C(v7, &qword_1EBD4A6A8, &qword_1BE0E12C8);
  v24 = *(v11 + 8);
  v24(v27, v20);
  sub_1BD0DE53C(v21, &qword_1EBD4A6A8, &qword_1BE0E12C8);
  return (v24)(v19, v20);
}

uint64_t sub_1BD5580D8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v132 = a2;
  v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4A6E0, &qword_1BE0E12F8);
  v126 = *(v127 - 8);
  MEMORY[0x1EEE9AC00](v127);
  v125 = v121 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4A6E8, &qword_1BE0E1300);
  v129 = *(v4 - 8);
  v130 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v124 = v121 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4A6F0, &qword_1BE0E1308);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v131 = v121 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v141 = v121 - v9;
  v139 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C1D0, &qword_1BE0CC5C0);
  MEMORY[0x1EEE9AC00](v139);
  v11 = v121 - v10;
  v138 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4A758, &qword_1BE0E13B8);
  MEMORY[0x1EEE9AC00](v138);
  v128 = v121 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v134 = v121 - v14;
  v140 = a1;
  v15 = a1[9];
  v16 = a1[10];
  v142 = v15;
  v143 = v16;
  sub_1BD0DDEBC();
  sub_1BE048C84();
  v17 = sub_1BE0506C4();
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v24 = sub_1BE050324();
  v25 = sub_1BE0505F4();
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v24, v26, v28, v30, v32, v33, v34, v35;
  sub_1BD0DDF10(v17, v19, (v21 & 1), v36, v37, v38, v39, v40);
  v23, v41, v42, v43, v44, v45, v46, v47;
  KeyPath = swift_getKeyPath();
  v135 = v27;
  v136 = v25;
  v142 = v25;
  v143 = v27;
  v49 = (v29 & 1);
  LOBYTE(v144) = v29 & 1;
  v137 = v31;
  v145 = v31;
  v146 = KeyPath;
  v133 = KeyPath;
  v147 = 1;
  v148 = 0;
  v50 = *MEMORY[0x1E697E6C8];
  v51 = sub_1BE04EB24();
  v52 = *(v51 - 8);
  v53 = *(v52 + 104);
  v54 = v52 + 104;
  v53(v11, v50, v51);
  v55 = sub_1BD55B02C(&qword_1EBD3C218, MEMORY[0x1E697E730], MEMORY[0x1E697E750]);
  result = sub_1BE052334();
  if (result)
  {
    v121[1] = v55;
    v121[2] = v54;
    v122 = v53;
    v123 = v50;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C108, &unk_1BE0C28D0);
    sub_1BD1B9C50();
    v57 = sub_1BD0DE4F4(&qword_1EBD3C220, &qword_1EBD3C1D0, &qword_1BE0CC5C0, MEMORY[0x1E69E6ED8]);
    v58 = v134;
    v59 = v139;
    sub_1BE050B34();
    sub_1BD0DE53C(v11, &qword_1EBD3C1D0, &qword_1BE0CC5C0);
    sub_1BD0DDF10(v136, v135, v49, v60, v61, v62, v63, v64);
    v133, v65, v66, v67, v68, v69, v70, v71;
    v137, v72, v73, v74, v75, v76, v77, v78;
    *&v58[v138[9]] = sub_1BE04FC74();
    v79 = v58;
    if (v140[12])
    {
      v80 = 1;
      v81 = v131;
      v82 = v141;
LABEL_6:
      v85 = v129;
      v84 = v130;
LABEL_7:
      (*(v85 + 56))(v82, v80, 1, v84);
      v86 = v128;
      sub_1BD0DE19C(v79, v128, &qword_1EBD4A758, &qword_1BE0E13B8);
      sub_1BD0DE19C(v82, v81, &qword_1EBD4A6F0, &qword_1BE0E1308);
      v87 = v132;
      sub_1BD0DE19C(v86, v132, &qword_1EBD4A758, &qword_1BE0E13B8);
      v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4A760, &qword_1BE0E13C0);
      sub_1BD0DE19C(v81, v87 + *(v88 + 48), &qword_1EBD4A6F0, &qword_1BE0E1308);
      sub_1BD0DE53C(v82, &qword_1EBD4A6F0, &qword_1BE0E1308);
      sub_1BD0DE53C(v79, &qword_1EBD4A758, &qword_1BE0E13B8);
      sub_1BD0DE53C(v81, &qword_1EBD4A6F0, &qword_1BE0E1308);
      return sub_1BD0DE53C(v86, &qword_1EBD4A758, &qword_1BE0E13B8);
    }

    v83 = v57;
    v82 = v141;
    if (v140[17])
    {
      v80 = 1;
      v81 = v131;
      goto LABEL_6;
    }

    v89 = v59;
    v90 = sub_1BE051574();
    v91 = sub_1BE04FC94();
    v92 = sub_1BE050324();
    v93 = swift_getKeyPath();
    v140 = v90;
    v142 = v90;
    LODWORD(v143) = v91;
    v144 = v93;
    v145 = v92;
    v138 = v92;
    v122(v11, v123, v51);
    result = sub_1BE052334();
    if (result)
    {
      v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4A710, &qword_1BE0E1358);
      v95 = sub_1BD55AA50();
      v96 = v125;
      sub_1BE050B34();
      sub_1BD0DE53C(v11, &qword_1EBD3C1D0, &qword_1BE0CC5C0);
      v138, v97, v98, v99, v100, v101, v102, v103;
      v93, v104, v105, v106, v107, v108, v109, v110;
      v140, v111, v112, v113, v114, v115, v116, v117;
      sub_1BE050384();
      v142 = v94;
      v143 = v89;
      v144 = v95;
      v145 = v83;
      swift_getOpaqueTypeConformance2();
      v118 = v124;
      v119 = v127;
      sub_1BE050854();
      (*(v126 + 8))(v96, v119);
      v85 = v129;
      v120 = v130;
      (*(v129 + 32))(v82, v118, v130);
      v84 = v120;
      v80 = 0;
      v81 = v131;
      goto LABEL_7;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1BD5588C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v88 = a4;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C1D0, &qword_1BE0CC5C0);
  MEMORY[0x1EEE9AC00](v81);
  v8 = &v77 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4A6E0, &qword_1BE0E12F8);
  v82 = *(v9 - 8);
  v83 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v80 = &v77 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4A6E8, &qword_1BE0E1300);
  v85 = *(v11 - 8);
  v86 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v79 = &v77 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4A6F0, &qword_1BE0E1308);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v77 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v89 = &v77 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4A6F8, &qword_1BE0E1310);
  v19 = v18 - 8;
  MEMORY[0x1EEE9AC00](v18);
  v84 = &v77 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = (&v77 - v22);
  *v23 = sub_1BE051CE4();
  v23[1] = v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4A700, &qword_1BE0E1318);
  sub_1BD558F20(a1, a2, a3, (v23 + *(v25 + 44)));
  v26 = sub_1BE051D94();
  v27 = *(a1 + 160);
  v28 = *(a1 + 168);
  v90 = *(a1 + 152);
  v91 = v27;
  LOBYTE(v92) = v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD4DFE0, &qword_1BE0C42E0);
  MEMORY[0x1BFB3E970](&v94, v29);
  v30 = v94;
  v31 = v23 + *(v19 + 44);
  *v31 = v26;
  v31[8] = v30;
  v32 = *(a1 + 136);
  v87 = v15;
  if (v32)
  {
    v33 = 1;
    v35 = v85;
    v34 = v86;
LABEL_5:
    v72 = v89;
    (*(v35 + 56))(v89, v33, 1, v34);
    v73 = v84;
    sub_1BD0DE19C(v23, v84, &qword_1EBD4A6F8, &qword_1BE0E1310);
    v74 = v87;
    sub_1BD0DE19C(v72, v87, &qword_1EBD4A6F0, &qword_1BE0E1308);
    v75 = v88;
    sub_1BD0DE19C(v73, v88, &qword_1EBD4A6F8, &qword_1BE0E1310);
    v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4A708, &qword_1BE0E1320);
    sub_1BD0DE19C(v74, v75 + *(v76 + 48), &qword_1EBD4A6F0, &qword_1BE0E1308);
    sub_1BD0DE53C(v72, &qword_1EBD4A6F0, &qword_1BE0E1308);
    sub_1BD0DE53C(v23, &qword_1EBD4A6F8, &qword_1BE0E1310);
    sub_1BD0DE53C(v74, &qword_1EBD4A6F0, &qword_1BE0E1308);
    return sub_1BD0DE53C(v73, &qword_1EBD4A6F8, &qword_1BE0E1310);
  }

  v36 = sub_1BE051574();
  v37 = sub_1BE04FC94();
  v38 = sub_1BE050324();
  KeyPath = swift_getKeyPath();
  v78 = v36;
  v90 = v36;
  LODWORD(v91) = v37;
  v92 = KeyPath;
  v93 = v38;
  v40 = *MEMORY[0x1E697E6C8];
  v41 = sub_1BE04EB24();
  (*(*(v41 - 8) + 104))(v8, v40, v41);
  sub_1BD55B02C(&qword_1EBD3C218, MEMORY[0x1E697E730], MEMORY[0x1E697E750]);
  result = sub_1BE052334();
  if (result)
  {
    v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4A710, &qword_1BE0E1358);
    v44 = sub_1BD55AA50();
    v45 = sub_1BD0DE4F4(&qword_1EBD3C220, &qword_1EBD3C1D0, &qword_1BE0CC5C0, MEMORY[0x1E69E6ED8]);
    v46 = KeyPath;
    v48 = v80;
    v47 = v81;
    sub_1BE050B34();
    sub_1BD0DE53C(v8, &qword_1EBD3C1D0, &qword_1BE0CC5C0);
    v38, v49, v50, v51, v52, v53, v54, v55;
    v46, v56, v57, v58, v59, v60, v61, v62;
    v78, v63, v64, v65, v66, v67, v68, v69;
    sub_1BE050384();
    v90 = v43;
    v91 = v47;
    v92 = v44;
    v93 = v45;
    swift_getOpaqueTypeConformance2();
    v70 = v79;
    v71 = v83;
    sub_1BE050854();
    (*(v82 + 8))(v48, v71);
    v35 = v85;
    v34 = v86;
    (*(v85 + 32))(v89, v70, v86);
    v33 = 0;
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

uint64_t sub_1BD558F20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4A730, &qword_1BE0E1368);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v64 - v9;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C1D0, &qword_1BE0CC5C0);
  MEMORY[0x1EEE9AC00](v65);
  v12 = v64 - v11;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4A738, &qword_1BE0E1370);
  v67 = *(v68 - 8);
  MEMORY[0x1EEE9AC00](v68);
  v66 = v64 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4A740, &qword_1BE0E1378);
  v70 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v69 = v64 - v15;
  v16 = *(a1 + 136) == 1;
  v71 = v8;
  v64[1] = a4;
  if (v16)
  {
    v17 = *(a1 + 160);
    v18 = *(a1 + 168);
    *&v79 = *(a1 + 152);
    *(&v79 + 1) = v17;
    LOBYTE(v80) = v18;
    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD4DFE0, &qword_1BE0C42E0);
    MEMORY[0x1BFB3E970](&v72, v19);
    if (v72)
    {
      *&v79 = a2;
      *(&v79 + 1) = a3;
      sub_1BD0DDEBC();
      sub_1BE048C84();
      v20 = sub_1BE0506C4();
      v22 = v21;
      v24 = v23;
      v26 = v25;
      KeyPath = swift_getKeyPath();
      v28 = sub_1BE050324();
      v29 = swift_getKeyPath();
      v78 = v24 & 1;
      v77 = 0;
      *&v72 = v20;
      *(&v72 + 1) = v22;
      LOBYTE(v73) = v24 & 1;
      *(&v73 + 1) = v26;
      *&v74 = KeyPath;
      *(&v74 + 1) = 2;
      LOBYTE(v75) = 0;
      *(&v75 + 1) = v29;
      v76 = v28;
      v30 = *MEMORY[0x1E697E6C8];
      v31 = sub_1BE04EB24();
      (*(*(v31 - 8) + 104))(v12, v30, v31);
      sub_1BD55B02C(&qword_1EBD3C218, MEMORY[0x1E697E730], MEMORY[0x1E697E750]);
      result = sub_1BE052334();
      if (result)
      {
        v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4A748, &qword_1BE0E13B0);
        v34 = sub_1BD55ABC0();
        v35 = sub_1BD0DE4F4(&qword_1EBD3C220, &qword_1EBD3C1D0, &qword_1BE0CC5C0, MEMORY[0x1E69E6ED8]);
        v36 = v66;
        v37 = v65;
        sub_1BE050B34();
        sub_1BD0DE53C(v12, &qword_1EBD3C1D0, &qword_1BE0CC5C0);
        v82 = v75;
        v83 = v76;
        v80 = v73;
        v81 = v74;
        v79 = v72;
        sub_1BD0DE53C(&v79, &qword_1EBD4A748, &qword_1BE0E13B0);
        sub_1BE050384();
        *&v72 = v33;
        *(&v72 + 1) = v37;
        *&v73 = v34;
        *(&v73 + 1) = v35;
        OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
        v39 = v69;
        v40 = v68;
        sub_1BE050854();
        (*(v67 + 8))(v36, v40);
        v41 = v70;
        (*(v70 + 16))(v10, v39, v14);
        swift_storeEnumTagMultiPayload();
        *&v72 = v40;
        *(&v72 + 1) = OpaqueTypeConformance2;
        swift_getOpaqueTypeConformance2();
        sub_1BE04F9A4();
        return (*(v41 + 8))(v39, v14);
      }

      goto LABEL_10;
    }
  }

  v64[0] = v14;
  *&v79 = a2;
  *(&v79 + 1) = a3;
  sub_1BD0DDEBC();
  sub_1BE048C84();
  v42 = sub_1BE0506C4();
  v44 = v43;
  v46 = v45;
  v48 = v47;
  v49 = swift_getKeyPath();
  v50 = sub_1BE050324();
  v51 = swift_getKeyPath();
  v78 = v46 & 1;
  v77 = 0;
  *&v72 = v42;
  *(&v72 + 1) = v44;
  LOBYTE(v73) = v46 & 1;
  *(&v73 + 1) = v48;
  *&v74 = v49;
  *(&v74 + 1) = 1;
  LOBYTE(v75) = 0;
  *(&v75 + 1) = v51;
  v76 = v50;
  v52 = *MEMORY[0x1E697E6C8];
  v53 = sub_1BE04EB24();
  (*(*(v53 - 8) + 104))(v12, v52, v53);
  sub_1BD55B02C(&qword_1EBD3C218, MEMORY[0x1E697E730], MEMORY[0x1E697E750]);
  result = sub_1BE052334();
  if ((result & 1) == 0)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    return result;
  }

  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4A748, &qword_1BE0E13B0);
  v55 = sub_1BD55ABC0();
  v56 = sub_1BD0DE4F4(&qword_1EBD3C220, &qword_1EBD3C1D0, &qword_1BE0CC5C0, MEMORY[0x1E69E6ED8]);
  v57 = v66;
  v58 = v65;
  sub_1BE050B34();
  sub_1BD0DE53C(v12, &qword_1EBD3C1D0, &qword_1BE0CC5C0);
  v82 = v75;
  v83 = v76;
  v80 = v73;
  v81 = v74;
  v79 = v72;
  sub_1BD0DE53C(&v79, &qword_1EBD4A748, &qword_1BE0E13B0);
  sub_1BE050384();
  *&v72 = v54;
  *(&v72 + 1) = v58;
  *&v73 = v55;
  *(&v73 + 1) = v56;
  v59 = swift_getOpaqueTypeConformance2();
  v60 = v69;
  v61 = v68;
  sub_1BE050854();
  (*(v67 + 8))(v57, v61);
  v62 = v70;
  v63 = v64[0];
  (*(v70 + 16))(v10, v60, v64[0]);
  swift_storeEnumTagMultiPayload();
  *&v72 = v61;
  *(&v72 + 1) = v59;
  swift_getOpaqueTypeConformance2();
  sub_1BE04F9A4();
  return (*(v62 + 8))(v60, v63);
}

unint64_t sub_1BD559828()
{
  result = qword_1EBD4A4A8;
  if (!qword_1EBD4A4A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4A488, &qword_1BE0E0FB8);
    sub_1BD0DE4F4(&qword_1EBD4A4B0, &qword_1EBD4A4B8, &qword_1BE0E0FE0, MEMORY[0x1E6981870]);
    sub_1BD0DE4F4(&qword_1EBD3B468, &qword_1EBD3FC50, &unk_1BE0B7D20, MEMORY[0x1E697DDB0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4A4A8);
  }

  return result;
}

double sub_1BD55990C()
{
  result = 26.0;
  qword_1EBD4A450 = 0x403A000000000000;
  return result;
}

uint64_t sub_1BD559924(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PaymentOfferSelectorTile(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BD559988(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PaymentOfferSelectorTile(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BD5599EC@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for PaymentOfferSelectorTile(0) - 8);
  v6 = (v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80)));

  return sub_1BD556AA8(a1, v6, a2);
}

unint64_t sub_1BD559A6C()
{
  result = qword_1EBD4A558;
  if (!qword_1EBD4A558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4A558);
  }

  return result;
}

unint64_t sub_1BD559AC0()
{
  result = qword_1EBD4A560;
  if (!qword_1EBD4A560)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4A548, &qword_1BE0E1098);
    sub_1BD559B78();
    sub_1BD0DE4F4(&unk_1EBD366D0, &unk_1EBD511D0, &qword_1BE0B8740, MEMORY[0x1E6980B30]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4A560);
  }

  return result;
}

unint64_t sub_1BD559B78()
{
  result = qword_1EBD4A568;
  if (!qword_1EBD4A568)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4A570, &qword_1BE0E10A0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4A578, &unk_1BE0E10A8);
    sub_1BE04ECE4();
    sub_1BD0DE4F4(&qword_1EBD4A580, &qword_1EBD4A578, &unk_1BE0E10A8, MEMORY[0x1E697D680]);
    sub_1BD55B02C(&qword_1EBD4A588, MEMORY[0x1E697C1D8], MEMORY[0x1E697C1D0]);
    swift_getOpaqueTypeConformance2();
    sub_1BD55B02C(&qword_1EBD52210, MEMORY[0x1E697CBE8], MEMORY[0x1E697CBD8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4A568);
  }

  return result;
}

uint64_t sub_1BD559CF4(uint64_t a1)
{
  type metadata accessor for PaymentOfferSelectorTile(0);

  return sub_1BD556914(a1);
}

uint64_t sub_1BD559D64@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1BE04FE04();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4A7A0, &qword_1BE0E1430);
  v7 = v6 - 8;
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v17 - v8;
  sub_1BE04FE14();
  if (sub_1BE04FE24())
  {
    v10 = 0.4;
  }

  else
  {
    v10 = 1.0;
  }

  (*(v3 + 32))(v9, v5, v2);
  *&v9[*(v7 + 44)] = v10;
  v11 = sub_1BE04FE24();
  v12.n128_u64[0] = 0.5;
  if (v11)
  {
    v12.n128_f64[0] = 0.0;
  }

  v13 = MEMORY[0x1BFB3EDF0](v12, 1.0, 0.0);
  v14 = sub_1BE04FE24();
  sub_1BD0DE204(v9, a1, &qword_1EBD4A7A0, &qword_1BE0E1430);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4A7A8, &qword_1BE0E1438);
  v16 = a1 + *(result + 36);
  *v16 = v13;
  *(v16 + 8) = v14 & 1;
  return result;
}

unint64_t sub_1BD559F34()
{
  result = qword_1EBD43EA8;
  if (!qword_1EBD43EA8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EBD43EA8);
  }

  return result;
}

uint64_t sub_1BD559F80()
{
  v1 = type metadata accessor for PaymentOfferSelectorTile(0);
  v2 = *(v1 - 8);
  v3 = v0 + ((*(v2 + 80) + 16) & ~*(v2 + 80));
  return (*(v3 + *(v1 + 40)))(*(v3 + *(v2 + 64)));
}

unint64_t sub_1BD55A014()
{
  result = qword_1EBD4A5B0;
  if (!qword_1EBD4A5B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4A5A8, &qword_1BE0E10D0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4A5B8, &qword_1BE0E10D8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3C1D0, &qword_1BE0CC5C0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBD3DF90, &qword_1BE0C2E90);
    sub_1BD2A275C();
    swift_getOpaqueTypeConformance2();
    sub_1BD0DE4F4(&qword_1EBD3C220, &qword_1EBD3C1D0, &qword_1BE0CC5C0, MEMORY[0x1E69E6ED8]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4A5B0);
  }

  return result;
}

uint64_t sub_1BD55A178@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1BE04F224();
  *a1 = result;
  return result;
}

uint64_t sub_1BD55A1CC@<X0>(uint64_t *a1@<X8>)
{
  result = MEMORY[0x1BFB3C340]();
  *a1 = result;
  return result;
}

uint64_t sub_1BD55A224@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1BE04F364();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1BD55A2E0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1BE04F3A4();
  *a1 = result;
  return result;
}

uint64_t sub_1BD55A388(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(char *))
{
  v8 = a5(0);
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = &v14 - v10;
  (*(v12 + 16))(&v14 - v10, a1, v9);
  return a6(v11);
}

uint64_t objectdestroyTm_55()
{
  v1 = type metadata accessor for PaymentOfferSelectorTile(0);
  v2 = (v0 + ((*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80)));

  v2[1], v3, v4, v5, v6, v7, v8, v9;
  v2[3], v10, v11, v12, v13, v14, v15, v16;
  v2[7], v17, v18, v19, v20, v21, v22, v23;
  v2[8], v24, v25, v26, v27, v28, v29, v30;
  v2[10], v31, v32, v33, v34, v35, v36, v37;
  v2[12], v38, v39, v40, v41, v42, v43, v44;
  if (v2[16])
  {

    v2[16], v45, v46, v47, v48, v49, v50, v51;
  }

  v2[19], v52, v53, v54, v55, v56, v57, v58;
  v2[20], v59, v60, v61, v62, v63, v64, v65;
  v66 = (v2 + v1[9]);
  *v66, v67, v68, v69, v70, v71, v72, v73;
  v66[1], v74, v75, v76, v77, v78, v79, v80;
  v81 = (v66 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD393E8, &qword_1BE0B8680) + 32));
  v82 = type metadata accessor for MultiHyperLinkDetailSheet(0);
  if (!(*(*(v82 - 8) + 48))(v81, 1, v82))
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v90 = sub_1BE04AA64();
      (*(*(v90 - 8) + 8))(v81, v90);
    }

    else
    {

      v81[2], v91, v92, v93, v94, v95, v96, v97;
    }
  }

  *(v2 + v1[10] + 8), v83, v84, v85, v86, v87, v88, v89;
  v105 = (v2 + v1[11]);
  if (*v105)
  {
    v105[1], v98, v99, v100, v101, v102, v103, v104;
  }

  *(v2 + v1[12] + 8), v98, v99, v100, v101, v102, v103, v104;

  return swift_deallocObject();
}

unint64_t sub_1BD55A724()
{
  result = qword_1EBD4A5E0;
  if (!qword_1EBD4A5E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4A5D8, &qword_1BE0E1128);
    sub_1BD55A7DC();
    sub_1BD0DE4F4(&unk_1EBD512D0, &qword_1EBD486C8, &qword_1BE0DC350, MEMORY[0x1E697FD58]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4A5E0);
  }

  return result;
}

unint64_t sub_1BD55A7DC()
{
  result = qword_1EBD4A5E8;
  if (!qword_1EBD4A5E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4A5F0, &qword_1BE0E1130);
    sub_1BD0DE4F4(&qword_1EBD4A5F8, &qword_1EBD4A600, &unk_1BE0E1138, MEMORY[0x1E69817F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4A5E8);
  }

  return result;
}

unint64_t sub_1BD55A894()
{
  result = qword_1EBD4A610;
  if (!qword_1EBD4A610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4A610);
  }

  return result;
}

unint64_t sub_1BD55A998()
{
  result = qword_1EBD4A668;
  if (!qword_1EBD4A668)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD41088, &unk_1BE0C9E90);
    sub_1BD0DE4F4(&qword_1EBD3EFC8, &qword_1EBD3EFB0, &qword_1BE0F32E0, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4A668);
  }

  return result;
}

unint64_t sub_1BD55AA50()
{
  result = qword_1EBD4A718;
  if (!qword_1EBD4A718)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4A710, &qword_1BE0E1358);
    sub_1BD55AB08();
    sub_1BD0DE4F4(&qword_1EBD38BC8, &unk_1EBD49190, &unk_1BE0C5140, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4A718);
  }

  return result;
}

unint64_t sub_1BD55AB08()
{
  result = qword_1EBD4A720;
  if (!qword_1EBD4A720)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4A728, &qword_1BE0E1360);
    sub_1BD0DE4F4(&unk_1EBD4E900, &qword_1EBD3ACA0, &unk_1BE0BB830, MEMORY[0x1E6980490]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4A720);
  }

  return result;
}

unint64_t sub_1BD55ABC0()
{
  result = qword_1EBD4A750;
  if (!qword_1EBD4A750)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4A748, &qword_1BE0E13B0);
    sub_1BD1B9C50();
    sub_1BD0DE4F4(&qword_1EBD38BC8, &unk_1EBD49190, &unk_1BE0C5140, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4A750);
  }

  return result;
}

double sub_1BD55AC98(uint64_t a1)
{
  *(a1 + 112) = 0;
  result = 0.0;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 120) = 3;
  return result;
}

unint64_t sub_1BD55ACCC()
{
  result = qword_1EBD4A780;
  if (!qword_1EBD4A780)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4A788, &qword_1BE0E13F0);
    sub_1BD55AD58();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4A780);
  }

  return result;
}

unint64_t sub_1BD55AD58()
{
  result = qword_1EBD4A790;
  if (!qword_1EBD4A790)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4A498, &qword_1BE0E0FC8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4A488, &qword_1BE0E0FB8);
    sub_1BE04EDE4();
    sub_1BD559828();
    sub_1BD55B02C(&qword_1EBD3BB58, MEMORY[0x1E697EAF0], MEMORY[0x1E697EAE0]);
    swift_getOpaqueTypeConformance2();
    sub_1BD0DE4F4(&qword_1EBD4A798, &qword_1EBD4A4D0, &qword_1BE0E0FF8, MEMORY[0x1E697F940]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4A790);
  }

  return result;
}

unint64_t sub_1BD55AEB8()
{
  result = qword_1EBD4A7B0;
  if (!qword_1EBD4A7B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4A7A8, &qword_1BE0E1438);
    sub_1BD55AF70();
    sub_1BD0DE4F4(&unk_1EBD36780, &unk_1EBD51F60, &qword_1BE0C3580, MEMORY[0x1E697F548]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4A7B0);
  }

  return result;
}

unint64_t sub_1BD55AF70()
{
  result = qword_1EBD4A7B8;
  if (!qword_1EBD4A7B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4A7A0, &qword_1BE0E1430);
    sub_1BD55B02C(&qword_1EBD3EFA8, MEMORY[0x1E697C8D0], MEMORY[0x1E697C8C8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4A7B8);
  }

  return result;
}

uint64_t sub_1BD55B02C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t type metadata accessor for AddContactSheet(uint64_t a1)
{
  result = qword_1EBD4A7C0;
  if (!qword_1EBD4A7C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1BD55B0E8(uint64_t a1)
{
  sub_1BD55B248(319, &qword_1EBD3AB88, MEMORY[0x1E697BF90], MEMORY[0x1E697DCC0]);
  if (v1 <= 0x3F)
  {
    sub_1BD55B248(319, &qword_1EBD469B0, sub_1BD55B2AC, MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      sub_1BD1030A8();
      if (v3 <= 0x3F)
      {
        sub_1BD327BD8(319, &qword_1EBD40458, MEMORY[0x1E69E6158]);
        if (v4 <= 0x3F)
        {
          sub_1BD327BD8(319, &qword_1EBD496E0, MEMORY[0x1E69E6370]);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1BD55B248(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_1BD55B2AC()
{
  result = qword_1EBD3E6C8;
  if (!qword_1EBD3E6C8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EBD3E6C8);
  }

  return result;
}

unint64_t sub_1BD55B30C()
{
  result = qword_1EBD4A7D0;
  if (!qword_1EBD4A7D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4A7D0);
  }

  return result;
}

uint64_t sub_1BD55B360@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v4 = sub_1BE04F3D4();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3FA20, &qword_1BE0C6AD0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = (&v22 - v9);
  sub_1BD0DE19C(v2, &v22 - v9, &qword_1EBD3FA20, &qword_1BE0C6AD0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_1BE04E664();
    return (*(*(v11 - 8) + 32))(a1, v10, v11);
  }

  else
  {
    v13 = *v10;
    sub_1BE052C44();
    v14 = sub_1BE050174();
    sub_1BE04CF84();

    sub_1BE04F3C4();
    swift_getAtKeyPath();
    v13, v15, v16, v17, v18, v19, v20, v21;
    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t sub_1BD55B57C@<X0>(uint64_t a1@<X8>)
{
  v66 = a1;
  v2 = type metadata accessor for AddContactSheet(0);
  v3 = *(v2 - 8);
  v62 = v2 - 8;
  v65 = v3;
  v64 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v63 = &v51 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1BE04ECF4();
  v6 = *(v5 - 8);
  v60 = v5;
  v61 = v6;
  MEMORY[0x1EEE9AC00](v5);
  v59 = &v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4A7D8, &qword_1BE0E1518);
  v54 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v51 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4A7E0, &qword_1BE0E1520);
  v55 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v51 - v12;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4A7E8, &qword_1BE0E1528);
  v58 = *(v56 - 8);
  MEMORY[0x1EEE9AC00](v56);
  v15 = &v51 - v14;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4A7F0, &qword_1BE0E1530);
  MEMORY[0x1EEE9AC00](v57);
  v53 = &v51 - v16;
  v52 = v1;
  v68 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4A7F8, &qword_1BE0E1538);
  sub_1BD0DE4F4(&qword_1EBD4A800, &qword_1EBD4A7F8, &qword_1BE0E1538, MEMORY[0x1E69817F8]);
  sub_1BE0504A4();
  v67 = v1;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4A808, &qword_1BE0E1540);
  v18 = sub_1BD0DE4F4(&qword_1EBD4A810, &qword_1EBD4A7D8, &qword_1BE0E1518, MEMORY[0x1E697CCF0]);
  v19 = sub_1BD0DE4F4(&qword_1EBD4A818, &qword_1EBD4A808, &qword_1BE0E1540, MEMORY[0x1E697C5E0]);
  sub_1BE051024();
  (*(v54 + 8))(v10, v8);
  *&v70 = v8;
  *(&v70 + 1) = v17;
  v71 = v18;
  v72 = v19;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_1BE050AC4();
  (*(v55 + 8))(v13, v11);
  v21 = v59;
  sub_1BE051DD4();
  *&v70 = v11;
  *(&v70 + 1) = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  sub_1BD55D1AC();
  v22 = v53;
  v23 = v56;
  v24 = v60;
  sub_1BE051134();
  (*(v61 + 8))(v21, v24);
  (*(v58 + 8))(v15, v23);
  v25 = sub_1BE051274();
  v26 = sub_1BE0501D4();
  v27 = v22 + *(v57 + 36);
  *v27 = v25;
  *(v27 + 8) = v26;
  v28 = v52;
  v29 = v52 + *(v62 + 48);
  v30 = *v29;
  v31 = *(v29 + 16);
  v70 = v30;
  v71 = v31;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3AFA8, &qword_1BE0C80C0);
  sub_1BE0516A4();
  v32 = *(&v69 + 1);
  v70 = v69;
  v33 = v63;
  sub_1BD55D204(v28, v63);
  v34 = (*(v65 + 80) + 16) & ~*(v65 + 80);
  v35 = swift_allocObject();
  sub_1BD55D268(v33, v35 + v34);
  sub_1BD55D34C();
  sub_1BE051064();
  v32, v36, v37, v38, v39, v40, v41, v42;
  v35, v43, v44, v45, v46, v47, v48, v49;
  return sub_1BD08599C(v22);
}

uint64_t sub_1BD55BC24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = sub_1BE04F504();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4A838, &qword_1BE0E1580);
  return sub_1BD55BC7C(a1, (a2 + *(v4 + 44)));
}

uint64_t sub_1BD55BC7C@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v59 = a2;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD41590, &qword_1BE0CA980);
  v62 = *(v63 - 8);
  MEMORY[0x1EEE9AC00](v63);
  v61 = &v57 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v57 - v5;
  v7 = type metadata accessor for AddContactSheet(0);
  v8 = (a1 + v7[7]);
  v9 = v8[1];
  v78 = *v8;
  v79 = v9;
  v10 = (a1 + v7[10]);
  v58 = a1;
  v12 = v10[1];
  v13 = v10[2];
  *&v64 = *v10;
  v11 = v64;
  *(&v64 + 1) = v12;
  *&v65 = v13;
  sub_1BE048C84();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3AFA8, &qword_1BE0C80C0);
  sub_1BE0516C4();
  v57 = v72;
  v14 = (a1 + v7[8]);
  v15 = v14[1];
  v69 = *v14;
  v70 = v15;
  sub_1BD0DDEBC();
  sub_1BE048C84();
  sub_1BE0506C4();
  v60 = v6;
  sub_1BE051E24();
  v69 = v11;
  v70 = v12;
  v71 = v13;
  sub_1BE0516A4();
  v16 = *(&v64 + 1);
  LOBYTE(a1) = sub_1BD55C0DC(v64, *(&v64 + 1));
  v16, v17, v18, v19, v20, v21, v22, v23;
  v24 = 0;
  if (a1)
  {
    goto LABEL_6;
  }

  v69 = v11;
  v70 = v12;
  v71 = v13;
  sub_1BE0516A4();
  v25 = v64;
  *(&v64 + 1), v26, v27, v28, v29, v30, v31, v32;
  v33 = HIBYTE(*(&v25 + 1)) & 0xFLL;
  if ((*(&v25 + 1) & 0x2000000000000000) == 0)
  {
    v33 = v25 & 0xFFFFFFFFFFFFLL;
  }

  if (!v33)
  {
LABEL_6:
    v58 = 0;
    KeyPath = 0;
    v34 = 0;
    v44 = 0;
    v39 = 0;
    v41 = 0;
    v43 = 0;
  }

  else
  {
    v58 = sub_1BE051574();
    v34 = sub_1BE0513B4();
    KeyPath = swift_getKeyPath();
    v36 = sub_1BE0501C4();
    sub_1BE04E1F4();
    v24 = v37;
    v39 = v38;
    v41 = v40;
    v43 = v42;
    LOBYTE(v69) = 0;
    v44 = v36;
  }

  v45 = v62;
  v46 = *(v62 + 16);
  v47 = v61;
  v48 = v60;
  v49 = v63;
  v46(v61, v60, v63);
  v50 = v59;
  v46(v59, v47, v49);
  v51 = &v50[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4A840, &qword_1BE0E15B8) + 48)];
  v52 = v58;
  *&v64 = v58;
  *(&v64 + 1) = KeyPath;
  *&v65 = v34;
  *(&v65 + 1) = v44;
  *&v66 = v24;
  *(&v66 + 1) = v39;
  *&v67 = v41;
  *(&v67 + 1) = v43;
  v68 = 0;
  v51[64] = 0;
  v53 = v65;
  *v51 = v64;
  *(v51 + 1) = v53;
  v54 = v67;
  *(v51 + 2) = v66;
  *(v51 + 3) = v54;
  sub_1BD0DE19C(&v64, &v69, &qword_1EBD4A848, &unk_1BE0E15C0);
  v55 = *(v45 + 8);
  v55(v48, v49);
  v69 = v52;
  v70 = KeyPath;
  v71 = v34;
  v72 = v44;
  v73 = v24;
  v74 = v39;
  v75 = v41;
  v76 = v43;
  v77 = 0;
  sub_1BD55D7A0(&v69);
  return (v55)(v47, v49);
}

id sub_1BD55C0DC(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  v3 = type metadata accessor for AddContactSheet(0);
  v4 = *(v2 + *(v3 + 20));
  if (!v4)
  {
    return 0;
  }

  if (*(v2 + *(v3 + 24)))
  {
    v5 = objc_allocWithZone(MEMORY[0x1E695CF50]);
    v6 = v4;
    v7 = sub_1BE052404();
    v8 = [v5 initWithStringValue_];

    v9 = [v8 digits];
    if (!v9)
    {
      sub_1BE052434();
      v11 = v10;
      v9 = sub_1BE052404();
      v11, v12, v13, v14, v15, v16, v17, v18;
    }

    v19 = [objc_allocWithZone(MEMORY[0x1E695CF50]) initWithStringValue_];

    v20 = [v6 phoneNumberIsValid:v19 forCountryCode:0];
  }

  else
  {
    v8 = v4;
    v19 = sub_1BE052404();
    v20 = [v8 emailAddressIsValid_];
  }

  return v20;
}

uint64_t sub_1BD55C234@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v20 = a2;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4A828, &qword_1BE0E1548);
  MEMORY[0x1EEE9AC00](v19);
  v17 = &v17 - v3;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4A830, &qword_1BE0F8BA0);
  v4 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v6 = &v17 - v5;
  v7 = sub_1BE04FB44();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3ACD0, &unk_1BE0BB850);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v17 - v10;
  sub_1BE04FB04();
  v22 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3DF80, &qword_1BE0BB860);
  sub_1BD0DE4F4(&qword_1EBD3FBA0, &unk_1EBD3DF80, &qword_1BE0BB860, MEMORY[0x1E697D680]);
  sub_1BE04E424();
  sub_1BE04FAC4();
  v21 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD44590, &qword_1BE0DE5D0);
  sub_1BD3BAA6C();
  sub_1BE04E424();
  v12 = *(v19 + 48);
  v13 = v17;
  (*(v9 + 16))(v17, v11, v8);
  v14 = &v13[v12];
  v15 = v18;
  (*(v4 + 16))(v14, v6, v18);
  sub_1BE04F854();
  (*(v4 + 8))(v6, v15);
  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_1BD55C580(uint64_t a1)
{
  v2 = type metadata accessor for AddContactSheet(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  sub_1BD55D204(a1, &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v6 = swift_allocObject();
  sub_1BD55D268(&v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v6 + v5);
  return sub_1BE051704();
}

uint64_t sub_1BD55C6AC(uint64_t a1)
{
  v23 = sub_1BE04F3D4();
  v2 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v4 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3FA20, &qword_1BE0C6AD0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = (&v22 - v6);
  v8 = sub_1BE04E664();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BD0DE19C(a1, v7, &qword_1EBD3FA20, &qword_1BE0C6AD0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v9 + 32))(v11, v7, v8);
  }

  else
  {
    v12 = *v7;
    sub_1BE052C44();
    v13 = sub_1BE050174();
    sub_1BE04CF84();

    sub_1BE04F3C4();
    swift_getAtKeyPath();
    v12, v14, v15, v16, v17, v18, v19, v20;
    (*(v2 + 8))(v4, v23);
  }

  sub_1BE04E654();
  return (*(v9 + 8))(v11, v8);
}

id sub_1BD55C928@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1BE04BD74();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 104))(v6, *MEMORY[0x1E69B80F0], v2, v4);
  result = PKPassKitBundle();
  if (result)
  {
    v8 = result;
    v9 = sub_1BE04B6F4();
    v11 = v10;

    (*(v3 + 8))(v6, v2);
    v15[0] = v9;
    v15[1] = v11;
    sub_1BD0DDEBC();
    result = sub_1BE0506C4();
    *a1 = result;
    *(a1 + 8) = v12;
    *(a1 + 16) = v13 & 1;
    *(a1 + 24) = v14;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1BD55CA94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for AddContactSheet(0);
  v5 = v4 - 8;
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v4);
  sub_1BD55D204(a1, &v17[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)]);
  v8 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v9 = swift_allocObject();
  sub_1BD55D268(&v17[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)], v9 + v8);
  sub_1BE051704();
  v10 = (a1 + *(v5 + 52));
  v11 = *v10;
  v12 = *(v10 + 1);
  v17[16] = v11;
  v18 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350, &unk_1BE0B8D00);
  sub_1BE0516A4();
  LOBYTE(v6) = v17[15];
  KeyPath = swift_getKeyPath();
  v14 = swift_allocObject();
  *(v14 + 16) = (v6 & 1) == 0;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD44590, &qword_1BE0DE5D0);
  v16 = (a2 + *(result + 36));
  *v16 = KeyPath;
  v16[1] = sub_1BD10DF54;
  v16[2] = v14;
  return result;
}

void sub_1BD55CC74(uint64_t a1)
{
  v2 = sub_1BE04E664();
  v40 = *(v2 - 8);
  v41 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v38 = (&v37 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = sub_1BE04D214();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = type metadata accessor for AddContactSheet(0);
  v8 = (a1 + *(v37 + 40));
  v10 = *v8;
  v9 = v8[1];
  v11 = v8[2];
  v44 = *v8;
  v45 = v9;
  v46 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3AFA8, &qword_1BE0C80C0);
  sub_1BE0516A4();
  v12 = v43;
  v39 = a1;
  v13 = sub_1BD55C0DC(v42, v43);
  v12, v14, v15, v16, v17, v18, v19, v20;
  if (v13)
  {
    sub_1BE04D1E4();
    v21 = sub_1BE04D204();
    v22 = sub_1BE052C54();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_1BD026000, v21, v22, "Hit save with valid contact", v23, 2u);
      MEMORY[0x1BFB45F20](v23, -1, -1);
    }

    (*(v5 + 8))(v7, v4);
    v44 = v10;
    v45 = v9;
    v46 = v11;
    sub_1BE0516A4();
    v24 = v43;
    v25 = sub_1BE052404();
    v24, v26, v27, v28, v29, v30, v31, v32;
    v33 = [objc_opt_self() contactWithDisplayName:0 emailOrPhoneNumber:v25];

    [v33 setValueSource_];
    v34 = *(v39 + *(v37 + 36));
    v35 = v33;
    v34(v33);

    v36 = v38;
    sub_1BD55B360(v38);
    sub_1BE04E654();

    (*(v40 + 8))(v36, v41);
  }
}

id sub_1BD55CF84@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1BE04BD74();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 104))(v6, *MEMORY[0x1E69B80F0], v2, v4);
  result = PKPassKitBundle();
  if (result)
  {
    v8 = result;
    v9 = sub_1BE04B6F4();
    v11 = v10;

    (*(v3 + 8))(v6, v2);
    v15[0] = v9;
    v15[1] = v11;
    sub_1BD0DDEBC();
    result = sub_1BE0506C4();
    *a1 = result;
    *(a1 + 8) = v12;
    *(a1 + 16) = v13 & 1;
    *(a1 + 24) = v14;
  }

  else
  {
    __break(1u);
  }

  return result;
}

double sub_1BD55D0F0(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  sub_1BD55C0DC(*a2, a2[1]);
  type metadata accessor for AddContactSheet(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350, &unk_1BE0B8D00);
  sub_1BE0516B4();
  return result;
}

unint64_t sub_1BD55D1AC()
{
  result = qword_1EBD3ACB0;
  if (!qword_1EBD3ACB0)
  {
    sub_1BE04ECF4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3ACB0);
  }

  return result;
}

uint64_t sub_1BD55D204(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AddContactSheet(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BD55D268(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AddContactSheet(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

double sub_1BD55D2CC(uint64_t a1, uint64_t *a2)
{
  v5 = *(type metadata accessor for AddContactSheet(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_1BD55D0F0(a1, a2, v6);
}

unint64_t sub_1BD55D34C()
{
  result = qword_1EBD4A820;
  if (!qword_1EBD4A820)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4A7F0, &qword_1BE0E1530);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4A7E8, &qword_1BE0E1528);
    sub_1BE04ECF4();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4A7E0, &qword_1BE0E1520);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4A7D8, &qword_1BE0E1518);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4A808, &qword_1BE0E1540);
    sub_1BD0DE4F4(&qword_1EBD4A810, &qword_1EBD4A7D8, &qword_1BE0E1518, MEMORY[0x1E697CCF0]);
    sub_1BD0DE4F4(&qword_1EBD4A818, &qword_1EBD4A808, &qword_1BE0E1540, MEMORY[0x1E697C5E0]);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_1BD55D1AC();
    swift_getOpaqueTypeConformance2();
    sub_1BD0DE4F4(&qword_1EBD36710, &qword_1EBD491B0, &unk_1BE0B7C80, MEMORY[0x1E6980468]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4A820);
  }

  return result;
}

uint64_t objectdestroyTm_56()
{
  v1 = type metadata accessor for AddContactSheet(0);
  v2 = (*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80);
  v3 = (v0 + v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3FA20, &qword_1BE0C6AD0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_1BE04E664();
    (*(*(v11 - 8) + 8))(v0 + v2, v11);
  }

  else
  {
    *v3, v4, v5, v6, v7, v8, v9, v10;
  }

  *(v3 + v1[7] + 8), v12, v13, v14, v15, v16, v17, v18;
  *(v3 + v1[8] + 8), v19, v20, v21, v22, v23, v24, v25;
  *(v3 + v1[9] + 8), v26, v27, v28, v29, v30, v31, v32;
  v33 = (v3 + v1[10]);
  v33[1], v34, v35, v36, v37, v38, v39, v40;
  v33[2], v41, v42, v43, v44, v45, v46, v47;
  *(v3 + v1[11] + 8), v48, v49, v50, v51, v52, v53, v54;

  return swift_deallocObject();
}

uint64_t sub_1BD55D72C(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for AddContactSheet(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t sub_1BD55D7A0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4A848, &unk_1BE0E15C0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

double sub_1BD55D808(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD43BD0, &qword_1BE112720);
  sub_1BE0516A4();
  v2 = -v4;
  if (*v1 < -v4)
  {
    v2 = *v1;
  }

  result = v2 / *v1;
  if (result <= 0.0)
  {
    result = 0.0;
  }

  if (result > 1.0)
  {
    return 1.0;
  }

  return result;
}

uint64_t sub_1BD55D898@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a2;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4A898, &qword_1BE0E16A8);
  MEMORY[0x1EEE9AC00](v24);
  v22 = (&v20 - v4);
  v5 = *(a1 + 16);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4A858, &qword_1BE0E1658);
  swift_getTupleTypeMetadata2();
  sub_1BE051E34();
  swift_getWitnessTable();
  v6 = sub_1BE051854();
  v21 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v20 - v7;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4A860, &qword_1BE0E1660);
  v9 = sub_1BE04EBD4();
  v23 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v20 - v13;
  v26 = v5;
  v27 = *(a1 + 24);
  v28 = *(a1 + 40);
  v29 = *(a1 + 56);
  v30 = v2;
  sub_1BE04F7B4();
  sub_1BE051844();
  v15 = v22;
  sub_1BD55DE4C(a1, v22);
  sub_1BE051CD4();
  WitnessTable = swift_getWitnessTable();
  sub_1BD562710();
  sub_1BE050834();
  sub_1BD0DE53C(v15, &qword_1EBD4A898, &qword_1BE0E16A8);
  (*(v21 + 8))(v8, v6);
  v17 = sub_1BD0DE4F4(&qword_1EBD36758, &qword_1EBD4A860, &qword_1BE0E1660, MEMORY[0x1E697F940]);
  v31 = WitnessTable;
  v32 = v17;
  swift_getWitnessTable();
  sub_1BD147308();
  v18 = *(v23 + 8);
  v18(v11, v9);
  sub_1BD147308();
  return (v18)(v14, v9);
}

uint64_t sub_1BD55DC68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v9 = v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = v23 - v11;
  v26 = v13;
  v27 = v14;
  v28 = v15;
  v29 = v16;
  v30 = v17;
  v31 = v18;
  v19 = type metadata accessor for PaymentSheetContentContainer(0, &v26);
  sub_1BD147308();
  v20 = sub_1BD55D808(v19);
  (*(v7 + 16))(v9, v12, a2);
  v25 = v20;
  v26 = v9;
  v27 = &v25;
  v24[0] = a2;
  v24[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4A858, &qword_1BE0E1658);
  v23[1] = a5;
  v23[2] = sub_1BD562674(&qword_1EBD36868, &qword_1EBD4A858, &qword_1BE0E1658, sub_1BD0EEEE0);
  sub_1BD13A4C4(&v26, 2uLL, v24);
  v21 = *(v7 + 8);
  v21(v12, a2);
  return (v21)(v9, a2);
}

uint64_t sub_1BD55DE4C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_1BE051404();
  v5 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4A888, &qword_1BE0E1688) + 36);
  sub_1BE051BD4();
  v6 = sub_1BE0501D4();
  v5[*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD596C0, &unk_1BE0E1690) + 36)] = v6;
  *a2 = v4;
  v7 = sub_1BD55D808(a1);
  *(a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4A8A0, &unk_1BE0E16B0) + 36)) = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD43BD0, &qword_1BE112720);
  sub_1BE0516A4();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4A898, &qword_1BE0E16A8);
  v9 = (a2 + *(result + 36));
  *v9 = 0;
  v9[1] = v10;
  return result;
}

uint64_t sub_1BD55DF6C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a2;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4A870, &qword_1BE0E1670);
  MEMORY[0x1EEE9AC00](v24);
  v5 = (&v20 - v4);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4A858, &qword_1BE0E1658);
  v6 = *(a1 + 32);
  swift_getTupleTypeMetadata2();
  sub_1BE051E34();
  swift_getWitnessTable();
  v7 = sub_1BE051854();
  v22 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v20 - v8;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4A868, &qword_1BE0E1668);
  v10 = sub_1BE04EBD4();
  v23 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v21 = &v20 - v14;
  v26 = *(a1 + 16);
  v27 = v6;
  v28 = *(a1 + 40);
  v29 = *(a1 + 56);
  v30 = v2;
  sub_1BE04F7B4();
  sub_1BE051844();
  sub_1BD55E588(a1, v5);
  sub_1BE051CD4();
  WitnessTable = swift_getWitnessTable();
  sub_1BD562674(&qword_1EBD36810, &qword_1EBD4A870, &qword_1BE0E1670, sub_1BD56243C);
  sub_1BE050834();
  sub_1BD0DE53C(v5, &qword_1EBD4A870, &qword_1BE0E1670);
  (*(v22 + 8))(v9, v7);
  v16 = sub_1BD0DE4F4(&qword_1EBD36760, &qword_1EBD4A868, &qword_1BE0E1668, MEMORY[0x1E697F940]);
  v31 = WitnessTable;
  v32 = v16;
  swift_getWitnessTable();
  v17 = v21;
  sub_1BD147308();
  v18 = *(v23 + 8);
  v18(v12, v10);
  sub_1BD147308();
  return (v18)(v17, v10);
}

uint64_t sub_1BD55E370(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v10 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v12 = v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = v28 - v14;
  v31 = v16;
  v32 = v17;
  v33 = v18;
  v34 = v19;
  v35 = v20;
  v36 = v21;
  v22 = (a1 + *(type metadata accessor for PaymentSheetContentContainer(0, &v31) + 104));
  v23 = *v22;
  v24 = v22[1];
  v31 = v23;
  v32 = v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD43BD0, &qword_1BE112720);
  sub_1BE0516A4();
  v25 = v29[0];
  sub_1BD147308();
  v30 = v25;
  v31 = &v30;
  (*(v10 + 16))(v12, v15, a4);
  v32 = v12;
  v29[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4A858, &qword_1BE0E1658);
  v29[1] = a4;
  v28[1] = sub_1BD562674(&qword_1EBD36868, &qword_1EBD4A858, &qword_1BE0E1658, sub_1BD0EEEE0);
  v28[2] = a7;
  sub_1BD13A4C4(&v31, 2uLL, v29);
  v26 = *(v10 + 8);
  v26(v15, a4);
  return (v26)(v12, a4);
}

uint64_t sub_1BD55E588@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  sub_1BD55E630(v2, a1[2], a1[3], a1[4], a1[5], a1[6], a1[7], a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD43BD0, &qword_1BE112720);
  sub_1BE0516A4();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4A870, &qword_1BE0E1670);
  *(a2 + *(result + 36)) = v5;
  return result;
}

void *sub_1BD55E630@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, void *a8@<X8>)
{
  v26[0] = a1;
  v26[1] = a8;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4A890, &qword_1BE0E16A0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = (v26 - v15);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4A888, &qword_1BE0E1688);
  MEMORY[0x1EEE9AC00](v17);
  v19 = (v26 - v18);
  v27[0] = a2;
  v27[1] = a3;
  v27[2] = a4;
  v27[3] = a5;
  v27[4] = a6;
  v27[5] = a7;
  v20 = type metadata accessor for PaymentSheetContentContainer(0, v27);
  v21 = *(v26[0] + *(v20 + 84));
  if (v21)
  {
    *v16 = v21;
    swift_storeEnumTagMultiPayload();
    sub_1BD56254C();
    sub_1BE048964();
    return sub_1BE04F9A4();
  }

  else
  {
    v23 = sub_1BE051404();
    v24 = v19 + *(v17 + 36);
    sub_1BE051BD4();
    v25 = sub_1BE0501D4();
    v24[*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD596C0, &unk_1BE0E1690) + 36)] = v25;
    *v19 = v23;
    sub_1BD562604(v19, v16);
    swift_storeEnumTagMultiPayload();
    sub_1BD56254C();
    sub_1BE04F9A4();
    return sub_1BD0DE53C(v19, &qword_1EBD4A888, &qword_1BE0E1688);
  }
}

uint64_t sub_1BD55E848@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v42 = a1[3];
  v43 = a2;
  sub_1BE0534B4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD45B60, &qword_1BE0E1650);
  v3 = sub_1BE04EBD4();
  v41 = a1[6];
  v94 = v41;
  WitnessTable = swift_getWitnessTable();
  v36 = MEMORY[0x1E697F940];
  v92 = WitnessTable;
  v93 = sub_1BD0DE4F4(&qword_1EBD45B68, &qword_1EBD45B60, &qword_1BE0E1650, MEMORY[0x1E697F940]);
  v5 = MEMORY[0x1E697E858];
  v6 = swift_getWitnessTable();
  type metadata accessor for OffsetScrollView(255, v3, v6, v7);
  sub_1BE04EBD4();
  v8 = sub_1BE04EBD4();
  v47 = a1[2];
  v39 = a1[5];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v90 = swift_getWitnessTable();
  v91 = MEMORY[0x1E697EBF8];
  v31[1] = v5;
  v88 = swift_getWitnessTable();
  v89 = v93;
  v9 = v8;
  v10 = swift_getWitnessTable();
  *&v95 = v9;
  v46 = v9;
  *(&v95 + 1) = OpaqueTypeMetadata2;
  *&v96 = v10;
  v44 = v10;
  *(&v96 + 1) = swift_getOpaqueTypeConformance2();
  v11 = MEMORY[0x1E697CE30];
  v34 = swift_getOpaqueTypeMetadata2();
  v37 = a1;
  v12 = a1[7];
  v45 = a1[4];
  v38 = v12;
  swift_getOpaqueTypeMetadata2();
  v31[2] = v11;
  swift_getOpaqueTypeConformance2();
  v31[3] = swift_getOpaqueTypeConformance2();
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4A858, &qword_1BE0E1658);
  swift_getTupleTypeMetadata2();
  sub_1BE051E34();
  swift_getWitnessTable();
  sub_1BE051854();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4A860, &qword_1BE0E1660);
  sub_1BE04EBD4();
  v86 = swift_getWitnessTable();
  v87 = sub_1BD0DE4F4(&qword_1EBD36758, &qword_1EBD4A860, &qword_1BE0E1660, v36);
  swift_getWitnessTable();
  sub_1BE04F6A4();
  sub_1BE04EBD4();
  swift_getTupleTypeMetadata2();
  sub_1BE051E34();
  swift_getWitnessTable();
  sub_1BE051854();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4A868, &qword_1BE0E1668);
  sub_1BE04EBD4();
  v84 = swift_getWitnessTable();
  v85 = sub_1BD0DE4F4(&qword_1EBD36760, &qword_1EBD4A868, &qword_1BE0E1668, v36);
  swift_getWitnessTable();
  sub_1BE04F6A4();
  v13 = sub_1BE04EBD4();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v82 = v10;
  v83 = swift_getWitnessTable();
  v80 = swift_getWitnessTable();
  v81 = swift_getWitnessTable();
  v31[0] = v13;
  v14 = swift_getWitnessTable();
  *&v95 = v9;
  *(&v95 + 1) = MEMORY[0x1E6981CD8];
  *&v96 = OpaqueTypeMetadata2;
  *(&v96 + 1) = v13;
  *&v97 = v10;
  *(&v97 + 1) = MEMORY[0x1E6981CD0];
  *&v98 = OpaqueTypeConformance2;
  *(&v98 + 1) = v14;
  v32 = v14;
  v34 = MEMORY[0x1E6981460];
  v15 = swift_getOpaqueTypeMetadata2();
  v36 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v17 = v31 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = v31 - v19;
  v21 = v40;
  sub_1BD55F130(v37, &v69);
  v66 = v77;
  v67 = v78;
  v68 = v79;
  v62 = v73;
  v63 = v74;
  v64 = v75;
  v65 = v76;
  v58 = v69;
  v59 = v70;
  v60 = v71;
  v61 = v72;
  sub_1BE051C64();
  *&v22 = v47;
  *(&v22 + 1) = v42;
  *&v23 = v45;
  *(&v23 + 1) = v39;
  v53 = v22;
  v54 = v23;
  v55 = v41;
  v56 = v38;
  v57 = v21;
  v48 = v22;
  v49 = v23;
  v50 = v41;
  v51 = v38;
  v52 = v21;
  v24 = swift_checkMetadataState();
  v25 = swift_checkMetadataState();
  v26 = swift_checkMetadataState();
  v27 = OpaqueTypeConformance2;
  v28 = v44;
  sub_1BE0510B4();
  v103 = v66;
  v104 = v67;
  v105 = v68;
  v99 = v62;
  v100 = v63;
  v101 = v64;
  v102 = v65;
  v95 = v58;
  v96 = v59;
  v97 = v60;
  v98 = v61;
  (*(*(v24 - 8) + 8))(&v95, v24);
  *&v69 = v24;
  *(&v69 + 1) = MEMORY[0x1E6981CD8];
  *&v70 = v25;
  *(&v70 + 1) = v26;
  *&v71 = v28;
  *(&v71 + 1) = MEMORY[0x1E6981CD0];
  *&v72 = v27;
  *(&v72 + 1) = v32;
  swift_getOpaqueTypeConformance2();
  sub_1BD147308();
  v29 = *(v36 + 8);
  v29(v17, v15);
  sub_1BD147308();
  return (v29)(v20, v15);
}

uint64_t sub_1BD55F130@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v94 = a2;
  v4 = *(a1 - 1);
  MEMORY[0x1EEE9AC00](a1);
  v93 = v84 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = v5;
  MEMORY[0x1EEE9AC00](v6);
  v8 = v84 - v7;
  v10 = (v2 + *(v9 + 92));
  v96 = v2;
  v11 = *v10;
  v12 = v10[1];
  *&v146 = v11;
  *(&v146 + 1) = v12;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD43BD0, &qword_1BE112720);
  sub_1BE0516A4();
  v13 = v135;
  v14 = *(v4 + 16);
  v103 = v4 + 16;
  v104 = v14;
  v89 = v8;
  v14(v8, v2, a1);
  v15 = *(v4 + 80);
  v90 = (v15 + 72) & ~v15;
  v16 = swift_allocObject();
  v17 = a1;
  v18 = a1[2];
  v98 = a1[3];
  v19 = v98;
  *(v16 + 2) = v18;
  *(v16 + 3) = v19;
  v20 = a1[4];
  v100 = v17[5];
  v21 = v100;
  v101 = v18;
  *(v16 + 4) = v20;
  *(v16 + 5) = v21;
  v85 = v20;
  v22 = v17[7];
  v97 = v17[6];
  v99 = v22;
  *(v16 + 6) = v97;
  *(v16 + 7) = v22;
  *(v16 + 8) = v13;
  v23 = *(v4 + 32);
  v24 = v17;
  v95 = v17;
  v23(&v16[(v15 + 72) & ~v15], v8, v17);
  v87 = v23;
  v88 = v4 + 32;
  v25 = v93;
  v104(v93, v96, v24);
  v86 = v15;
  v26 = (v15 + 64) & ~v15;
  v27 = swift_allocObject();
  v28 = v100;
  v29 = v98;
  *(v27 + 2) = v101;
  *(v27 + 3) = v29;
  *(v27 + 4) = v20;
  *(v27 + 5) = v28;
  v30 = v97;
  v31 = v99;
  *(v27 + 6) = v97;
  *(v27 + 7) = v31;
  v32 = v95;
  v23(&v27[v26], v25, v95);
  sub_1BE0534B4();
  v93 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD45B60, &qword_1BE0E1650);
  v33 = sub_1BE04EBD4();
  v122 = v30;
  WitnessTable = swift_getWitnessTable();
  v92 = sub_1BD0DE4F4(&qword_1EBD45B68, &qword_1EBD45B60, &qword_1BE0E1650, MEMORY[0x1E697F940]);
  v120 = WitnessTable;
  v121 = v92;
  v84[1] = MEMORY[0x1E697E858];
  v35 = swift_getWitnessTable();
  PKEdgeInsetsMake();
  v37 = v36;
  v39 = v38;
  *&v146 = v40;
  *(&v146 + 1) = v36;
  *&v147 = v41;
  *(&v147 + 1) = v38;
  v42 = v96;
  v84[0] = sub_1BD561580(v32);
  sub_1BE051CD4();
  type metadata accessor for OffsetScrollView(0, v33, v35, v43);
  v83 = swift_getWitnessTable();
  sub_1BE050F54();
  v39, v44, v45, v46, v47, v48, v49, v50;
  v37, v51, v52, v53, v54, v55, v56, v57;
  v129 = v141;
  v130 = v142;
  v131 = v143;
  v125 = v137;
  v126 = v138;
  v127 = v139;
  v128 = v140;
  v123 = v135;
  v124 = v136;
  v58 = v95;
  v59 = (v42 + *(v95 + 25));
  v60 = *v59;
  v61 = v59[1];
  *&v146 = v60;
  *(&v146 + 1) = v61;
  sub_1BE0516A4();
  v62 = v107;
  v63 = v89;
  v64 = v42;
  v65 = v58;
  v104(v89, v64, v58);
  v66 = v90;
  v67 = swift_allocObject();
  v68 = v98;
  *(v67 + 2) = v101;
  *(v67 + 3) = v68;
  v69 = v100;
  *(v67 + 4) = v85;
  *(v67 + 5) = v69;
  v70 = v99;
  *(v67 + 6) = v97;
  *(v67 + 7) = v70;
  *(v67 + 8) = v62;
  v87(&v67[v66], v63, v65);
  v71 = sub_1BE04EBD4();
  v118 = v83;
  v119 = MEMORY[0x1E697EBF8];
  v72 = swift_getWitnessTable();
  sub_1BD561470(sub_1BD562B10, v67, v71, v72);
  v67, v73, v74, v75, v76, v77, v78, v79;
  v134[6] = v129;
  v134[7] = v130;
  v134[8] = v131;
  v134[2] = v125;
  v134[3] = v126;
  v134[4] = v127;
  v134[5] = v128;
  v134[0] = v123;
  v134[1] = v124;
  (*(*(v71 - 8) + 8))(v134, v71);
  v115 = v154;
  v116 = v155;
  v117 = v156;
  v111 = v150;
  v112 = v151;
  v113 = v152;
  v114 = v153;
  v107 = v146;
  v108 = v147;
  v109 = v148;
  v110 = v149;
  v80 = sub_1BE04EBD4();
  v105 = v72;
  v106 = v92;
  swift_getWitnessTable();
  sub_1BD147308();
  v143 = v115;
  v144 = v116;
  v145 = v117;
  v139 = v111;
  v140 = v112;
  v141 = v113;
  v142 = v114;
  v135 = v107;
  v136 = v108;
  v137 = v109;
  v138 = v110;
  v81 = *(*(v80 - 8) + 8);
  v81(&v135, v80);
  v115 = v131;
  v116 = v132;
  v117 = v133;
  v111 = v127;
  v112 = v128;
  v113 = v129;
  v114 = v130;
  v107 = v123;
  v108 = v124;
  v109 = v125;
  v110 = v126;
  sub_1BD147308();
  v154 = v115;
  v155 = v116;
  v156 = v117;
  v150 = v111;
  v151 = v112;
  v152 = v113;
  v153 = v114;
  v146 = v107;
  v147 = v108;
  v148 = v109;
  v149 = v110;
  return (v81)(&v146, v80);
}

uint64_t sub_1BD55F878@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  *&v64 = a5;
  *(&v64 + 1) = a8;
  v58 = a7;
  v59 = a4;
  v60 = a2;
  v61 = a9;
  v54 = a1;
  sub_1BE0534B4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD45B60, &qword_1BE0E1650);
  v12 = sub_1BE04EBD4();
  v96 = a7;
  WitnessTable = swift_getWitnessTable();
  v95 = sub_1BD0DE4F4(&qword_1EBD45B68, &qword_1EBD45B60, &qword_1BE0E1650, MEMORY[0x1E697F940]);
  v13 = swift_getWitnessTable();
  type metadata accessor for OffsetScrollView(255, v12, v13, v14);
  sub_1BE04EBD4();
  v15 = sub_1BE04EBD4();
  v53 = a3;
  v62 = a6;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v92 = swift_getWitnessTable();
  v93 = MEMORY[0x1E697EBF8];
  v90 = swift_getWitnessTable();
  v91 = v95;
  v17 = v15;
  v18 = swift_getWitnessTable();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  *&v79 = v17;
  *(&v79 + 1) = OpaqueTypeMetadata2;
  v46[0] = v17;
  v46[1] = OpaqueTypeMetadata2;
  *&v80 = v18;
  *(&v80 + 1) = OpaqueTypeConformance2;
  v46[2] = v18;
  v55 = MEMORY[0x1E697CE30];
  v63 = swift_getOpaqueTypeMetadata2();
  v57 = *(v63 - 8);
  MEMORY[0x1EEE9AC00](v63);
  v51 = v46 - v20;
  v21 = v64;
  v79 = v64;
  v22 = swift_getOpaqueTypeMetadata2();
  v48 = v22;
  *&v79 = v17;
  *(&v79 + 1) = OpaqueTypeMetadata2;
  *&v80 = v18;
  *(&v80 + 1) = OpaqueTypeConformance2;
  v23 = swift_getOpaqueTypeConformance2();
  v50 = v23;
  v79 = v21;
  v49 = swift_getOpaqueTypeConformance2();
  *&v79 = v63;
  *(&v79 + 1) = v22;
  *&v80 = v23;
  *(&v80 + 1) = v49;
  v24 = swift_getOpaqueTypeMetadata2();
  v56 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v47 = v46 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v52 = v46 - v27;
  v28 = v54[9];
  v87 = v54[8];
  v88 = v28;
  v89 = v54[10];
  v29 = v54[5];
  v83 = v54[4];
  v84 = v29;
  v30 = v54[7];
  v85 = v54[6];
  v86 = v30;
  v31 = v54[1];
  v79 = *v54;
  v80 = v31;
  v32 = v54[3];
  v81 = v54[2];
  v82 = v32;
  v33 = v53;
  v34 = v58;
  v35 = v59;
  v72 = v53;
  v73 = v59;
  v74 = v21;
  v75 = v62;
  v76 = v58;
  v77 = *(&v21 + 1);
  v36 = v60;
  v78 = v60;
  sub_1BE04F7B4();
  swift_checkMetadataState();
  swift_checkMetadataState();
  v37 = v51;
  sub_1BE050954();
  v65 = v33;
  v66 = v35;
  v67 = v64;
  v68 = v62;
  v69 = v34;
  v70 = *(&v64 + 1);
  v71 = v36;
  sub_1BE04F7B4();
  v38 = swift_checkMetadataState();
  v39 = v49;
  v40 = v50;
  v41 = v47;
  v42 = v63;
  sub_1BE050954();
  (*(v57 + 8))(v37, v42);
  *&v79 = v42;
  *(&v79 + 1) = v38;
  *&v80 = v40;
  *(&v80 + 1) = v39;
  swift_getOpaqueTypeConformance2();
  v43 = v52;
  sub_1BD147308();
  v44 = *(v56 + 8);
  v44(v41, v24);
  sub_1BD147308();
  return (v44)(v43, v24);
}

uint64_t sub_1BD55FE3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v24 = a6;
  v25 = a7;
  v23 = a4;
  v26 = a1;
  v28 = a8;
  v27 = sub_1BE04F714();
  v11 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = a2;
  v30 = a5;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v15 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v17 = &v23 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v23 - v19;
  v29 = a2;
  v30 = a3;
  v31 = v23;
  v32 = a5;
  v33 = v24;
  v34 = v25;
  type metadata accessor for PaymentSheetContentContainer(0, &v29);
  sub_1BE04F704();
  sub_1BE050CB4();
  (*(v11 + 8))(v13, v27);
  v29 = a2;
  v30 = a5;
  swift_getOpaqueTypeConformance2();
  sub_1BD147308();
  v21 = *(v15 + 8);
  v21(v17, OpaqueTypeMetadata2);
  sub_1BD147308();
  return (v21)(v20, OpaqueTypeMetadata2);
}

uint64_t sub_1BD56009C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v24 = a5;
  v25 = a6;
  v23 = a3;
  v26 = a1;
  v28 = a8;
  v27 = sub_1BE04F714();
  v11 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = a4;
  v30 = a7;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v15 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v17 = &v23 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v23 - v19;
  v29 = a2;
  v30 = v23;
  v31 = a4;
  v32 = v24;
  v33 = v25;
  v34 = a7;
  type metadata accessor for PaymentSheetContentContainer(0, &v29);
  sub_1BE04F704();
  sub_1BE050CB4();
  (*(v11 + 8))(v13, v27);
  v29 = a4;
  v30 = a7;
  swift_getOpaqueTypeConformance2();
  sub_1BD147308();
  v21 = *(v15 + 8);
  v21(v17, OpaqueTypeMetadata2);
  sub_1BD147308();
  return (v21)(v20, OpaqueTypeMetadata2);
}

uint64_t sub_1BD5602FC@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v70 = a5;
  v71 = a8;
  v62 = a7;
  v65 = a2;
  v66 = a6;
  v64 = a4;
  v57 = a3;
  v67 = a9;
  sub_1BE0534B4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD45B60, &qword_1BE0E1650);
  v11 = sub_1BE04EBD4();
  v111 = a7;
  WitnessTable = swift_getWitnessTable();
  v69 = MEMORY[0x1E697F940];
  v63 = sub_1BD0DE4F4(&qword_1EBD45B68, &qword_1EBD45B60, &qword_1BE0E1650, MEMORY[0x1E697F940]);
  v109 = WitnessTable;
  v110 = v63;
  v68 = MEMORY[0x1E697E858];
  v13 = swift_getWitnessTable();
  v59 = type metadata accessor for OffsetScrollView(255, v11, v13, v14);
  v61 = sub_1BE04EBD4();
  v51 = sub_1BE04EBD4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4A858, &qword_1BE0E1658);
  swift_getTupleTypeMetadata2();
  sub_1BE051E34();
  swift_getWitnessTable();
  sub_1BE051854();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4A860, &qword_1BE0E1660);
  v15 = sub_1BE04EBD4();
  v107 = swift_getWitnessTable();
  v108 = sub_1BD0DE4F4(&qword_1EBD36758, &qword_1EBD4A860, &qword_1BE0E1660, v69);
  v56 = v15;
  v55 = swift_getWitnessTable();
  v58 = sub_1BE04F6A4();
  v47 = sub_1BE04EBD4();
  v60 = *(v47 - 8);
  MEMORY[0x1EEE9AC00](v47);
  v53 = v45 - v16;
  v17 = v70;
  swift_getTupleTypeMetadata2();
  sub_1BE051E34();
  swift_getWitnessTable();
  sub_1BE051854();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4A868, &qword_1BE0E1668);
  v18 = sub_1BE04EBD4();
  v19 = swift_getWitnessTable();
  v20 = sub_1BD0DE4F4(&qword_1EBD36760, &qword_1EBD4A868, &qword_1BE0E1668, v69);
  v105 = v19;
  v106 = v20;
  v50 = v18;
  v48 = swift_getWitnessTable();
  v52 = sub_1BE04F6A4();
  v54 = sub_1BE04EBD4();
  v69 = *(v54 - 8);
  MEMORY[0x1EEE9AC00](v54);
  v46 = v45 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v49 = v45 - v23;
  v24 = a1[9];
  v102 = a1[8];
  v103 = v24;
  v104 = a1[10];
  v25 = a1[5];
  v98 = a1[4];
  v99 = v25;
  v26 = a1[7];
  v100 = a1[6];
  v101 = v26;
  v27 = a1[1];
  v94 = *a1;
  v95 = v27;
  v28 = a1[3];
  v96 = a1[2];
  v97 = v28;
  v29 = v57;
  v30 = v64;
  v31 = v65;
  v79 = v57;
  v80 = v64;
  v32 = v66;
  v81 = v17;
  v82 = v66;
  v33 = v62;
  v83 = v62;
  v84 = v71;
  v85 = v65;
  v45[1] = sub_1BE04F7B4();
  v92 = swift_getWitnessTable();
  v93 = MEMORY[0x1E697EBF8];
  v90 = swift_getWitnessTable();
  v91 = v63;
  v34 = swift_getWitnessTable();
  v35 = v53;
  sub_1BE050A44();
  v72 = v29;
  v73 = v30;
  v74 = v70;
  v75 = v32;
  v76 = v33;
  v77 = v71;
  v78 = v31;
  sub_1BE04F7B4();
  v36 = swift_getWitnessTable();
  v88 = v34;
  v89 = v36;
  v37 = v47;
  v44 = swift_getWitnessTable();
  v38 = v46;
  sub_1BE050A44();
  (*(v60 + 8))(v35, v37);
  v39 = swift_getWitnessTable();
  v86 = v44;
  v87 = v39;
  v40 = v54;
  swift_getWitnessTable();
  v41 = v49;
  sub_1BD147308();
  v42 = *(v69 + 8);
  v42(v38, v40);
  sub_1BD147308();
  return (v42)(v41, v40);
}

uint64_t sub_1BD5609D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v26 = a7;
  v27 = a1;
  v28 = a8;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4A858, &qword_1BE0E1658);
  swift_getTupleTypeMetadata2();
  sub_1BE051E34();
  swift_getWitnessTable();
  sub_1BE051854();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4A860, &qword_1BE0E1660);
  v13 = sub_1BE04EBD4();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v25 - v18;
  v31[0] = a2;
  v31[1] = a3;
  v31[2] = a4;
  v31[3] = a5;
  v31[4] = a6;
  v31[5] = v26;
  v20 = type metadata accessor for PaymentSheetContentContainer(0, v31);
  sub_1BD55D898(v20, v16);
  WitnessTable = swift_getWitnessTable();
  v22 = sub_1BD0DE4F4(&qword_1EBD36758, &qword_1EBD4A860, &qword_1BE0E1660, MEMORY[0x1E697F940]);
  v29 = WitnessTable;
  v30 = v22;
  swift_getWitnessTable();
  sub_1BD147308();
  v23 = *(v14 + 8);
  v23(v16, v13);
  sub_1BD147308();
  return (v23)(v19, v13);
}

uint64_t sub_1BD560C44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v26 = a7;
  v27 = a1;
  v28 = a8;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4A858, &qword_1BE0E1658);
  swift_getTupleTypeMetadata2();
  sub_1BE051E34();
  swift_getWitnessTable();
  sub_1BE051854();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4A868, &qword_1BE0E1668);
  v13 = sub_1BE04EBD4();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v25 - v18;
  v31[0] = a2;
  v31[1] = a3;
  v31[2] = a4;
  v31[3] = a5;
  v31[4] = a6;
  v31[5] = v26;
  v20 = type metadata accessor for PaymentSheetContentContainer(0, v31);
  sub_1BD55DF6C(v20, v16);
  WitnessTable = swift_getWitnessTable();
  v22 = sub_1BD0DE4F4(&qword_1EBD36760, &qword_1EBD4A868, &qword_1BE0E1668, MEMORY[0x1E697F940]);
  v29 = WitnessTable;
  v30 = v22;
  swift_getWitnessTable();
  sub_1BD147308();
  v23 = *(v14 + 8);
  v23(v16, v13);
  sub_1BD147308();
  return (v23)(v19, v13);
}

void sub_1BD560EB8(int *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD43BD0, &qword_1BE112720);
  sub_1BE0516A4();
  sub_1BE0516A4();
  sub_1BE0516A4();
  sub_1BE0516B4();
}

void sub_1BD560FE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, double a8, double a9)
{
  if (a9 != a8)
  {
    v24 = v12;
    v25 = v11;
    v26 = v9;
    v27 = v10;
    v18 = a2;
    v19 = a3;
    v20 = a4;
    v21 = a5;
    v22 = a6;
    v23 = a7;
    v14 = type metadata accessor for PaymentSheetContentContainer(0, &v18);
    v15 = (a1 + v14[23]);
    v16 = *v15;
    v17 = v15[1];
    v18 = v16;
    v19 = v17;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD43BD0, &qword_1BE112720);
    sub_1BE0516B4();
    sub_1BD560EB8(v14);
  }
}

uint64_t sub_1BD561094@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v43 = a5;
  v44 = a7;
  v40 = a6;
  v41 = a2;
  v42 = a4;
  v39[0] = a1;
  v46 = a8;
  v50[0] = a2;
  v50[1] = a3;
  v50[2] = a4;
  v50[3] = a5;
  v50[4] = a6;
  v50[5] = a7;
  v10 = type metadata accessor for PaymentSheetContentContainer(0, v50);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v39 - v12;
  v14 = sub_1BE0534B4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD45B60, &qword_1BE0E1650);
  v15 = sub_1BE04EBD4();
  v45 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v17 = v39 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v18);
  v21 = v39 - v20;
  v39[1] = *(v10 + 76);
  (*(v11 + 16))(v13, a1, v10, v19);
  v22 = (*(v11 + 80) + 64) & ~*(v11 + 80);
  v23 = swift_allocObject();
  v24 = v42;
  *(v23 + 2) = v41;
  *(v23 + 3) = a3;
  v26 = v43;
  v25 = v44;
  *(v23 + 4) = v24;
  *(v23 + 5) = v26;
  v27 = v40;
  *(v23 + 6) = v40;
  *(v23 + 7) = v25;
  (*(v11 + 32))(&v23[v22], v13, v10);
  v49 = v27;
  WitnessTable = swift_getWitnessTable();
  sub_1BD561470(sub_1BD563000, v23, v14, WitnessTable);
  v23, v29, v30, v31, v32, v33, v34, v35;
  v36 = sub_1BD0DE4F4(&qword_1EBD45B68, &qword_1EBD45B60, &qword_1BE0E1650, MEMORY[0x1E697F940]);
  v47 = WitnessTable;
  v48 = v36;
  swift_getWitnessTable();
  sub_1BD147308();
  v37 = *(v45 + 8);
  v37(v17, v15);
  sub_1BD147308();
  return (v37)(v21, v15);
}

void sub_1BD5613D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, double a8)
{
  v13 = a2;
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v9 = type metadata accessor for PaymentSheetContentContainer(0, &v13);
  v10 = (a1 + v9[24]);
  v11 = *v10;
  v12 = v10[1];
  v13 = v11;
  v14 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD43BD0, &qword_1BE112720);
  sub_1BE0516B4();
  sub_1BD560EB8(v9);
}

void sub_1BD561470(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = swift_allocObject();
  v6[2] = a1;
  v6[3] = a2;
  sub_1BE048964();
  sub_1BE051CD4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD45B70, qword_1BE0E16C0);
  sub_1BD0DE4F4(&qword_1EBD45B78, &qword_1EBD45B70, qword_1BE0E16C0, MEMORY[0x1E697E378]);
  sub_1BE050834();
  v6, v7, v8, v9, v10, v11, v12, v13;
}

double sub_1BD561580(uint64_t a1)
{
  v3 = *(a1 + 24);
  v4 = sub_1BE0534B4();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v11 - v6;
  v8 = 0.0;
  if ((sub_1BE051C54() & 1) == 0)
  {
    (*(v5 + 16))(v7, v1 + *(a1 + 76), v4);
    v9 = (*(*(v3 - 8) + 48))(v7, 1, v3);
    (*(v5 + 8))(v7, v4);
    if (v9 == 1)
    {
      return 0.0;
    }

    else
    {
      return 80.0;
    }
  }

  return v8;
}

void sub_1BD5616D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, double a8, double a9)
{
  if (a9 != a8)
  {
    v40 = a2;
    v41 = a3;
    v42 = a4;
    v43 = a5;
    v44 = a6;
    v45 = a7;
    v12 = (a1 + *(type metadata accessor for PaymentSheetContentContainer(0, &v40) + 100));
    v13 = *v12;
    v14 = v12[1];
    v40 = v13;
    v41 = v14;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD43BD0, &qword_1BE112720);
    sub_1BE0516B4();
    if (a9 < a8)
    {
      v15 = *(a1 + 8);
      if (!v15)
      {
        sub_1BE04CDA4();
        sub_1BD561ACC();
        sub_1BE04EEB4();
        __break(1u);
        return;
      }

      sub_1BE048964();
      sub_1BE04CD44();
      v15, v16, v17, v18, v19, v20, v21, v22;
    }

    v23 = sub_1BE051D94();
    v24 = sub_1BE051D24();
    v23, v25, v26, v27, v28, v29, v30, v31;
    MEMORY[0x1EEE9AC00](v32);
    sub_1BE04E7D4();
    v24, v33, v34, v35, v36, v37, v38, v39;
  }
}

double sub_1BD56188C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, double a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>, __int128 a10, uint64_t a11)
{
  *a9 = 0x4010000000000000;
  sub_1BE04CDA4();
  sub_1BD561ACC();
  *(a9 + 1) = sub_1BE04EEC4();
  *(a9 + 2) = v19;
  v33 = a6;
  v34 = a7;
  v35 = a8;
  v36 = a10;
  v37 = a11;
  v20 = type metadata accessor for PaymentSheetContentContainer(0, &v33);
  (*(*(*&a6 - 8) + 32))(&a9[v20[18]], a1, COERCE_DOUBLE(*&a6));
  v21 = v20[19];
  v22 = sub_1BE0534B4();
  (*(*(v22 - 8) + 32))(&a9[v21], a2, v22);
  (*(*(a8 - 8) + 32))(&a9[v20[20]], a3, a8);
  *&a9[v20[21]] = a4;
  a9[v20[22]] = a5;
  v23 = &a9[v20[23]];
  v38 = 0;
  sub_1BE051694();
  v24 = v34;
  *v23 = v33;
  *(v23 + 1) = v24;
  v25 = &a9[v20[24]];
  v38 = 0;
  sub_1BE051694();
  v26 = v34;
  *v25 = v33;
  *(v25 + 1) = v26;
  v27 = &a9[v20[25]];
  v38 = 0;
  sub_1BE051694();
  v28 = v34;
  *v27 = v33;
  *(v27 + 1) = v28;
  v29 = &a9[v20[26]];
  v38 = 0;
  sub_1BE051694();
  result = v33;
  v31 = v34;
  *v29 = v33;
  *(v29 + 1) = v31;
  return result;
}

unint64_t sub_1BD561ACC()
{
  result = qword_1EBD369D0;
  if (!qword_1EBD369D0)
  {
    sub_1BE04CDA4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD369D0);
  }

  return result;
}

void sub_1BD561B44(void *a1)
{
  sub_1BD0EDFE4(319);
  if (v1 <= 0x3F)
  {
    swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      sub_1BE0534B4();
      if (v3 <= 0x3F)
      {
        swift_checkMetadataState();
        if (v4 <= 0x3F)
        {
          sub_1BD127BD0(319, &qword_1EBD3D040, MEMORY[0x1E69815C0], MEMORY[0x1E69E6720]);
          if (v5 <= 0x3F)
          {
            sub_1BD127BD0(319, &qword_1EBD4A850, MEMORY[0x1E69E63B0], MEMORY[0x1E6981790]);
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

uint64_t sub_1BD561C98(int *a1, unsigned int a2, void *a3)
{
  v4 = *(a3[2] - 8);
  v5 = *(v4 + 84);
  v6 = *(a3[3] - 8);
  v7 = *(v6 + 84);
  if (v7)
  {
    v8 = v7 - 1;
  }

  else
  {
    v8 = 0;
  }

  if (v5 <= v8)
  {
    v9 = v8;
  }

  else
  {
    v9 = *(v4 + 84);
  }

  v10 = a3[4];
  v11 = *(v10 - 8);
  v12 = *(v4 + 80);
  v13 = *(*(a3[2] - 8) + 64);
  v14 = *(v6 + 80);
  v15 = *(v11 + 80);
  if (v9 <= *(v11 + 84))
  {
    v16 = *(v11 + 84);
  }

  else
  {
    v16 = v9;
  }

  if (v16 <= 0x7FFFFFFE)
  {
    v17 = 2147483646;
  }

  else
  {
    v17 = v16;
  }

  if (v7)
  {
    v18 = *(*(a3[3] - 8) + 64);
  }

  else
  {
    v18 = *(*(a3[3] - 8) + 64) + 1;
  }

  if (!a2)
  {
    return 0;
  }

  v19 = v18 + v15;
  if (v17 < a2)
  {
    v20 = ((((((((*(*(v10 - 8) + 64) + ((v19 + ((v13 + v14 + ((v12 + 24) & ~v12)) & ~v14)) & ~v15) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
    v21 = a2 - v17;
    v22 = v20 & 0xFFFFFFF8;
    if ((v20 & 0xFFFFFFF8) != 0)
    {
      v23 = 2;
    }

    else
    {
      v23 = v21 + 1;
    }

    if (v23 >= 0x10000)
    {
      v24 = 4;
    }

    else
    {
      v24 = 2;
    }

    if (v23 < 0x100)
    {
      v24 = 1;
    }

    if (v23 >= 2)
    {
      v25 = v24;
    }

    else
    {
      v25 = 0;
    }

    if (v25 > 1)
    {
      if (v25 == 2)
      {
        v26 = *(a1 + v20);
        if (v26)
        {
          goto LABEL_32;
        }
      }

      else
      {
        v26 = *(a1 + v20);
        if (v26)
        {
          goto LABEL_32;
        }
      }
    }

    else if (v25)
    {
      v26 = *(a1 + v20);
      if (v26)
      {
LABEL_32:
        v27 = v26 - 1;
        if (v22)
        {
          v27 = 0;
          v28 = *a1;
        }

        else
        {
          v28 = 0;
        }

        v31 = v17 + (v28 | v27);
        return (v31 + 1);
      }
    }
  }

  v29 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
  if (v16 <= 0x7FFFFFFE)
  {
    v30 = *v29;
    if (*v29 >= 0xFFFFFFFF)
    {
      LODWORD(v30) = -1;
    }

    v31 = v30 - 1;
    if (v31 < 0)
    {
      v31 = -1;
    }

    return (v31 + 1);
  }

  v32 = (v29 + v12 + 16) & ~v12;
  if (v5 == v17)
  {
    v33 = *(v4 + 48);
    v34 = *(v4 + 84);
    v35 = a3[2];

    return v33(v32, v34, v35);
  }

  v37 = (v32 + v13 + v14) & ~v14;
  if (v8 != v17)
  {
    v33 = *(v11 + 48);
    v32 = (v19 + v37) & ~v15;
    v34 = *(v11 + 84);
    v35 = a3[4];

    return v33(v32, v34, v35);
  }

  if (v7 < 2)
  {
    return 0;
  }

  v38 = (*(v6 + 48))(v37);
  if (v38 >= 2)
  {
    return v38 - 1;
  }

  else
  {
    return 0;
  }
}

unsigned int *sub_1BD561FCC(unsigned int *result, unsigned int a2, unsigned int a3, void *a4)
{
  v5 = 0;
  v6 = *(a4[2] - 8);
  v7 = *(v6 + 84);
  v8 = *(a4[3] - 8);
  v9 = *(v8 + 84);
  if (v9)
  {
    v10 = v9 - 1;
  }

  else
  {
    v10 = 0;
  }

  if (v7 <= v10)
  {
    v11 = v10;
  }

  else
  {
    v11 = *(v6 + 84);
  }

  v12 = a4[4];
  v13 = *(v12 - 8);
  v14 = *(v6 + 80);
  v15 = *(*(a4[2] - 8) + 64);
  v16 = *(v8 + 80);
  v17 = *(v13 + 80);
  if (v11 <= *(v13 + 84))
  {
    v18 = *(v13 + 84);
  }

  else
  {
    v18 = v11;
  }

  if (v18 <= 0x7FFFFFFE)
  {
    v19 = 2147483646;
  }

  else
  {
    v19 = v18;
  }

  if (v9)
  {
    v20 = *(*(a4[3] - 8) + 64);
  }

  else
  {
    v20 = *(*(a4[3] - 8) + 64) + 1;
  }

  v21 = v20 + v17;
  v22 = ((((((((*(*(v12 - 8) + 64) + ((v21 + ((v15 + v16 + ((v14 + 24) & ~v14)) & ~v16)) & ~v17) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v19 < a3)
  {
    v23 = a3 - v19;
    if (((((((((*(*(v12 - 8) + 64) + ((v21 + ((v15 + v16 + ((v14 + 24) & ~v14)) & ~v16)) & ~v17) + 23) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v24 = v23 + 1;
    }

    else
    {
      v24 = 2;
    }

    if (v24 >= 0x10000)
    {
      v25 = 4;
    }

    else
    {
      v25 = 2;
    }

    if (v24 < 0x100)
    {
      v25 = 1;
    }

    if (v24 >= 2)
    {
      v5 = v25;
    }

    else
    {
      v5 = 0;
    }
  }

  if (a2 > v19)
  {
    if (((((((((*(*(v12 - 8) + 64) + ((v21 + ((v15 + v16 + ((v14 + 24) & ~v14)) & ~v16)) & ~v17) + 23) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v26 = a2 - v19;
    }

    else
    {
      v26 = 1;
    }

    if (v22)
    {
      v27 = ~v19 + a2;
      v28 = result;
      bzero(result, v22);
      result = v28;
      *v28 = v27;
    }

    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(result + v22) = v26;
      }

      else
      {
        *(result + v22) = v26;
      }
    }

    else if (v5)
    {
      *(result + v22) = v26;
    }

    return result;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(result + v22) = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_46;
    }

    *(result + v22) = 0;
  }

  else if (v5)
  {
    *(result + v22) = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_46;
  }

  if (!a2)
  {
    return result;
  }

LABEL_46:
  v29 = ((result + 15) & 0xFFFFFFFFFFFFFFF8);
  if (v18 <= 0x7FFFFFFE)
  {
    if (a2 > 0x7FFFFFFE)
    {
      *v29 = a2 - 0x7FFFFFFF;
      v29[1] = 0;
    }

    else
    {
      *v29 = a2;
    }

    return result;
  }

  v30 = (v29 + v14 + 16) & ~v14;
  if (v7 == v19)
  {
    v31 = *(v6 + 56);

    return v31(v30);
  }

  result = ((v30 + v15 + v16) & ~v16);
  if (v10 != v19)
  {
    v31 = *(v13 + 56);
    v30 = (result + v21) & ~v17;

    return v31(v30);
  }

  if (v9 >= 2)
  {
    v32 = *(v8 + 56);
    v33 = a2 + 1;

    return v32(result, v33);
  }

  return result;
}

unint64_t sub_1BD56243C()
{
  result = qword_1EBD366C8;
  if (!qword_1EBD366C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4A878, &qword_1BE0E1678);
    sub_1BD5624C0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD366C8);
  }

  return result;
}

unint64_t sub_1BD5624C0()
{
  result = qword_1EBD36728;
  if (!qword_1EBD36728)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4A880, &qword_1BE0E1680);
    sub_1BD56254C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD36728);
  }

  return result;
}

unint64_t sub_1BD56254C()
{
  result = qword_1EBD36818;
  if (!qword_1EBD36818)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4A888, &qword_1BE0E1688);
    sub_1BD0DE4F4(&unk_1EBD36700, &unk_1EBD596C0, &unk_1BE0E1690, MEMORY[0x1E6980468]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD36818);
  }

  return result;
}

uint64_t sub_1BD562604(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4A888, &qword_1BE0E1688);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BD562674(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
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

unint64_t sub_1BD562710()
{
  result = qword_1EBD367C0;
  if (!qword_1EBD367C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4A898, &qword_1BE0E16A8);
    sub_1BD562674(&qword_1EBD367E0, &qword_1EBD4A8A0, &unk_1BE0E16B0, sub_1BD56254C);
    sub_1BD0DE4F4(&unk_1EBD36770, &qword_1EBD41708, &qword_1BE112760, MEMORY[0x1E697F548]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD367C0);
  }

  return result;
}

uint64_t sub_1BD562858@<X0>(uint64_t a1@<X8>)
{
  v4 = v1[3];
  v5 = v1[4];
  v6 = v1[5];
  v7 = v1[6];
  v8 = v1[7];
  v12[0] = v1[2];
  v3 = v12[0];
  v12[1] = v4;
  v12[2] = v5;
  v12[3] = v6;
  v12[4] = v7;
  v12[5] = v8;
  v9 = *(type metadata accessor for PaymentSheetContentContainer(0, v12) - 8);
  v10 = v1 + ((*(v9 + 80) + 64) & ~*(v9 + 80));

  return sub_1BD561094(v10, v3, v4, v5, v6, v7, v8, a1);
}

uint64_t objectdestroyTm_57()
{
  v1 = *(v0 + 24);
  v52[0] = *(v0 + 16);
  v2 = v52[0];
  v52[1] = v1;
  v3 = *(v0 + 48);
  v51 = *(v0 + 32);
  v53 = v51;
  v54 = v3;
  v4 = type metadata accessor for PaymentSheetContentContainer(0, v52);
  v5 = v0 + ((*(*(v4 - 1) + 80) + 72) & ~*(*(v4 - 1) + 80));
  *(v5 + 8), v6, v7, v8, v9, v10, v11, v12;
  (*(*(v2 - 8) + 8))(v5 + v4[18], v2);
  v13 = v4[19];
  v14 = *(v1 - 8);
  if (!(*(v14 + 48))(v5 + v13, 1, v1))
  {
    (*(v14 + 8))(v5 + v13, v1);
  }

  (*(*(v51 - 8) + 8))(v5 + v4[20]);
  *(v5 + v4[21]), v15, v16, v17, v18, v19, v20, v21;
  *(v5 + v4[23] + 8), v22, v23, v24, v25, v26, v27, v28;
  *(v5 + v4[24] + 8), v29, v30, v31, v32, v33, v34, v35;
  *(v5 + v4[25] + 8), v36, v37, v38, v39, v40, v41, v42;
  *(v5 + v4[26] + 8), v43, v44, v45, v46, v47, v48, v49;
  return swift_deallocObject();
}

uint64_t sub_1BD562B28(uint64_t (*a1)(char *, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, __n128, __n128), double a2)
{
  v5 = v2[3];
  v6 = v2[4];
  v7 = v2[5];
  v8 = v2[6];
  v9 = v2[7];
  v16[0] = v2[2];
  v4 = v16[0];
  v16[1] = v5;
  v16[2] = v6;
  v16[3] = v7;
  v16[4] = v8;
  v16[5] = v9;
  v10 = *(type metadata accessor for PaymentSheetContentContainer(0, v16) - 8);
  v11.n128_u64[0] = v2[8];
  v12 = v2 + ((*(v10 + 80) + 72) & ~*(v10 + 80));
  v13.n128_f64[0] = a2;

  return a1(v12, v4, v5, v6, v7, v8, v9, v13, v11);
}

void sub_1BD562C04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1BE04E684();
  v6 = v5;
  v7 = sub_1BE051404();
  v8 = swift_allocObject();
  v8[2] = a2;
  v8[3] = a3;
  v8[4] = v6;
  v9 = swift_allocObject();
  v9[2] = a2;
  v9[3] = a3;
  swift_retain_n();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD45B80, &unk_1BE0D51E0);
  sub_1BD4163BC();
  sub_1BD0F9764();
  sub_1BE051064();
  v8, v10, v11, v12, v13, v14, v15, v16;
  v7, v17, v18, v19, v20, v21, v22, v23;
  v9, v24, v25, v26, v27, v28, v29, v30;
}

void sub_1BD562DB0()
{
  v1 = v0[2];
  v3[0] = v0[1];
  v3[1] = v1;
  v3[2] = v0[3];
  v2 = type metadata accessor for PaymentSheetContentContainer(0, v3);
  sub_1BD560EB8(v2);
}

uint64_t objectdestroy_5Tm_1()
{
  v1 = *(v0 + 24);
  v52[0] = *(v0 + 16);
  v2 = v52[0];
  v52[1] = v1;
  v3 = *(v0 + 48);
  v51 = *(v0 + 32);
  v53 = v51;
  v54 = v3;
  v4 = type metadata accessor for PaymentSheetContentContainer(0, v52);
  v5 = v0 + ((*(*(v4 - 1) + 80) + 64) & ~*(*(v4 - 1) + 80));
  *(v5 + 8), v6, v7, v8, v9, v10, v11, v12;
  (*(*(v2 - 8) + 8))(v5 + v4[18], v2);
  v13 = v4[19];
  v14 = *(v1 - 8);
  if (!(*(v14 + 48))(v5 + v13, 1, v1))
  {
    (*(v14 + 8))(v5 + v13, v1);
  }

  (*(*(v51 - 8) + 8))(v5 + v4[20]);
  *(v5 + v4[21]), v15, v16, v17, v18, v19, v20, v21;
  *(v5 + v4[23] + 8), v22, v23, v24, v25, v26, v27, v28;
  *(v5 + v4[24] + 8), v29, v30, v31, v32, v33, v34, v35;
  *(v5 + v4[25] + 8), v36, v37, v38, v39, v40, v41, v42;
  *(v5 + v4[26] + 8), v43, v44, v45, v46, v47, v48, v49;
  return swift_deallocObject();
}

void sub_1BD563000(double a1)
{
  v4 = v1[3];
  v5 = v1[4];
  v6 = v1[5];
  v7 = v1[6];
  v8 = v1[7];
  v11[0] = v1[2];
  v3 = v11[0];
  v11[1] = v4;
  v11[2] = v5;
  v11[3] = v6;
  v11[4] = v7;
  v11[5] = v8;
  v9 = *(type metadata accessor for PaymentSheetContentContainer(0, v11) - 8);
  v10 = v1 + ((*(v9 + 80) + 64) & ~*(v9 + 80));

  sub_1BD5613D0(v10, v3, v4, v5, v6, v7, v8, a1);
}

unint64_t sub_1BD5630D0()
{
  result = qword_1EBD4A8A8;
  if (!qword_1EBD4A8A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4A8A8);
  }

  return result;
}

unint64_t sub_1BD563128()
{
  result = qword_1EBD4A8B0;
  if (!qword_1EBD4A8B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4A8B0);
  }

  return result;
}

uint64_t sub_1BD563200()
{
  v0 = sub_1BE04B0F4();
  MEMORY[0x1EEE9AC00](v0 - 8);
  v1 = sub_1BE04A874();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1BE0523D4();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v6 = sub_1BE04A884();
  __swift_allocate_value_buffer(v6, qword_1EBDAB290);
  __swift_project_value_buffer(v6, qword_1EBDAB290);
  sub_1BE052354();
  if (qword_1EBD36CF8 != -1)
  {
    swift_once();
  }

  v7 = __swift_project_value_buffer(v1, qword_1EBDAB400);
  (*(v2 + 16))(v4, v7, v1);
  sub_1BE04B0A4();
  return sub_1BE04A894();
}

uint64_t sub_1BD563418(uint64_t a1)
{
  v1[2] = a1;
  v2 = sub_1BE048834();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF70, &qword_1BE0BA000);
  v1[6] = swift_task_alloc();
  v3 = sub_1BE04AA64();
  v1[7] = v3;
  v1[8] = *(v3 - 8);
  v1[9] = swift_task_alloc();
  v1[10] = swift_task_alloc();
  v4 = sub_1BE04A3B4();
  v1[11] = v4;
  v1[12] = *(v4 - 8);
  v1[13] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1BD5635D4, 0, 0);
}

uint64_t sub_1BD5635D4(uint64_t a1)
{
  v2 = v1[7];
  v3 = v1[8];
  v4 = v1[6];
  sub_1BE04A3A4();
  sub_1BE052434();
  sub_1BE04A394();
  v5 = sub_1BE052434();
  MEMORY[0x1BFB37400](v5);
  sub_1BE04A364();
  if ((*(v3 + 48))(v4, 1, v2) == 1)
  {
    v7 = v1[12];
    v6 = v1[13];
    v8 = v1[11];
    sub_1BD226BBC(v1[6]);
    sub_1BE0484F4();
    sub_1BD563A34(&qword_1EBD56120, MEMORY[0x1E6959D40], MEMORY[0x1E6959D50]);
    swift_allocError();
    sub_1BE0484E4();
    swift_willThrow();
    (*(v7 + 8))(v6, v8);
  }

  else
  {
    v10 = v1[12];
    v11 = v1[10];
    v19 = v1[11];
    v20 = v1[13];
    v12 = v1[8];
    v13 = v1[9];
    v14 = v1[7];
    v16 = v1[4];
    v15 = v1[5];
    v17 = v1[3];
    (*(v12 + 32))(v11);
    (*(v12 + 16))(v13, v11, v14);
    sub_1BE048844();
    sub_1BD563A34(&qword_1EBD4A8B8, MEMORY[0x1E695A0D8], MEMORY[0x1E695A0D0]);
    sub_1BE048734();
    (*(v16 + 8))(v15, v17);
    (*(v12 + 8))(v11, v14);
    (*(v10 + 8))(v20, v19);
  }

  v9 = v1[1];

  return v9();
}

uint64_t sub_1BD5638A8@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EBD36C98 != -1)
  {
    swift_once();
  }

  v2 = sub_1BE04A884();
  v3 = __swift_project_value_buffer(v2, qword_1EBDAB290);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1BD563950(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1BD0F985C;

  return sub_1BD563418(a1);
}

uint64_t sub_1BD5639E8(uint64_t a1)
{
  v2 = sub_1BD15D248();

  return MEMORY[0x1EEDB2D90](a1, v2);
}

uint64_t sub_1BD563A34(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

char *ApplePayUserEducationDemoViewController.__allocating_init(delegate:)(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();

  return sub_1BD5672A4(a1, v2, ObjectType, a2);
}

char *ApplePayUserEducationDemoViewController.init(delegate:)(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();

  return sub_1BD5672FC(a1, v2, ObjectType, a2);
}

void sub_1BD563B1C(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong[OBJC_IVAR____TtC9PassKitUI39ApplePayUserEducationDemoViewController_stage];

    if (v2 == 1)
    {
      swift_beginAccess();
      v3 = swift_unknownObjectWeakLoadStrong();
      if (v3)
      {
        v4 = v3;
        v5 = *(v3 + OBJC_IVAR____TtC9PassKitUI39ApplePayUserEducationDemoViewController_stage);
        v4[OBJC_IVAR____TtC9PassKitUI39ApplePayUserEducationDemoViewController_stage] = 2;
        sub_1BD564A24(v5);
      }
    }
  }
}

id ApplePayUserEducationDemoViewController.__deallocating_deinit()
{
  v1 = *&v0[OBJC_IVAR____TtC9PassKitUI39ApplePayUserEducationDemoViewController_lockButtonConsumer];
  v2 = OBJC_IVAR____TtCC9PassKitUI39ApplePayUserEducationDemoViewControllerP33_722E2528CE6F81F660593DCAA893F90F18LockButtonConsumer_lockButtonObserver;
  v3 = *&v1[OBJC_IVAR____TtCC9PassKitUI39ApplePayUserEducationDemoViewControllerP33_722E2528CE6F81F660593DCAA893F90F18LockButtonConsumer_lockButtonObserver];
  v4 = v1;
  if (v3)
  {
    [v3 invalidate];
  }

  *&v1[v2] = 0;

  swift_unknownObjectRelease();
  v5 = *&v0[OBJC_IVAR____TtC9PassKitUI39ApplePayUserEducationDemoViewController_physicalButtonView];
  if (v5)
  {
    [v5 setAnimating_];
  }

  v7.receiver = v0;
  v7.super_class = type metadata accessor for ApplePayUserEducationDemoViewController();
  return objc_msgSendSuper2(&v7, sel_dealloc);
}

void sub_1BD563D58()
{
  v1 = v0;
  v2 = sub_1BE04BD74();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v48 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ApplePayUserEducationDemoViewController();
  v48.receiver = v1;
  v48.super_class = v6;
  objc_msgSendSuper2(&v48, sel_loadView);
  v7 = [objc_allocWithZone(type metadata accessor for ApplePayUserEducationDemoStackView()) init];
  v8 = OBJC_IVAR____TtC9PassKitUI39ApplePayUserEducationDemoViewController_stackView;
  v9 = *&v1[OBJC_IVAR____TtC9PassKitUI39ApplePayUserEducationDemoViewController_stackView];
  *&v1[OBJC_IVAR____TtC9PassKitUI39ApplePayUserEducationDemoViewController_stackView] = v7;
  v10 = v7;

  if (v10)
  {
    *&v10[OBJC_IVAR____TtC9PassKitUI34ApplePayUserEducationDemoStackView_delegate + 8] = &off_1F3BAD970;
    swift_unknownObjectWeakAssign();
  }

  v11 = *&v1[v8];
  if (v11)
  {
    [v11 setAlpha_];
    v12 = *&v1[v8];
    if (v12)
    {
      [v12 setHidden_];
    }
  }

  v1[OBJC_IVAR____TtC9PassKitUI39ApplePayUserEducationDemoViewController_stackViewTargetVisibility] = 0;
  v13 = [objc_allocWithZone(MEMORY[0x1E69AD308]) initWithStyle_];
  v14 = OBJC_IVAR____TtC9PassKitUI39ApplePayUserEducationDemoViewController_physicalButtonView;
  v15 = *&v1[OBJC_IVAR____TtC9PassKitUI39ApplePayUserEducationDemoViewController_physicalButtonView];
  *&v1[OBJC_IVAR____TtC9PassKitUI39ApplePayUserEducationDemoViewController_physicalButtonView] = v13;
  v16 = v13;

  if (v16)
  {
    (*(v3 + 104))(v5, *MEMORY[0x1E69B80B8], v2);
    v17 = PKPassKitBundle();
    if (!v17)
    {
      __break(1u);
      return;
    }

    v18 = v17;
    sub_1BE04B6F4();
    v20 = v19;

    (*(v3 + 8))(v5, v2);
    v21 = sub_1BE052404();
    v20, v22, v23, v24, v25, v26, v27, v28;
    [v16 setInstruction_];
  }

  v29 = [objc_allocWithZone(type metadata accessor for ApplePayUserEducationDemoViewController.SpringBoardBlurView()) init];
  v30 = OBJC_IVAR____TtC9PassKitUI39ApplePayUserEducationDemoViewController_springBoardBlurView;
  v31 = *&v1[OBJC_IVAR____TtC9PassKitUI39ApplePayUserEducationDemoViewController_springBoardBlurView];
  *&v1[OBJC_IVAR____TtC9PassKitUI39ApplePayUserEducationDemoViewController_springBoardBlurView] = v29;

  v32 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v33 = objc_allocWithZone(type metadata accessor for ApplePayUserEducationDemoViewController.HeaderInstructionView());
  v34 = sub_1BD567608(sub_1BD5674C0, v32);
  v32, v35, v36, v37, v38, v39, v40, v41;
  v42 = OBJC_IVAR____TtC9PassKitUI39ApplePayUserEducationDemoViewController_headerInstructionView;
  v43 = *&v1[OBJC_IVAR____TtC9PassKitUI39ApplePayUserEducationDemoViewController_headerInstructionView];
  *&v1[OBJC_IVAR____TtC9PassKitUI39ApplePayUserEducationDemoViewController_headerInstructionView] = v34;

  v44 = [v1 view];
  if (v44)
  {
    v45 = v44;
    if (*&v1[v30])
    {
      [v44 addSubview_];
    }

    if (*&v1[v14])
    {
      [v45 addSubview_];
    }

    if (*&v1[v8])
    {
      [v45 addSubview_];
    }

    v46 = *&v1[v42];
    if (v46)
    {
      v47 = v46;
      [v45 addSubview_];
    }
  }
}

void sub_1BD5640E8(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = *(Strong + OBJC_IVAR____TtC9PassKitUI39ApplePayUserEducationDemoViewController_lockButtonConsumer);
    v5 = OBJC_IVAR____TtCC9PassKitUI39ApplePayUserEducationDemoViewControllerP33_722E2528CE6F81F660593DCAA893F90F18LockButtonConsumer_lockButtonObserver;
    v6 = *&v4[OBJC_IVAR____TtCC9PassKitUI39ApplePayUserEducationDemoViewControllerP33_722E2528CE6F81F660593DCAA893F90F18LockButtonConsumer_lockButtonObserver];
    v7 = v4;
    if (v6)
    {
      [v6 invalidate];
    }

    *&v4[v5] = 0;

    swift_unknownObjectRelease();
    v8 = *&v3[OBJC_IVAR____TtC9PassKitUI39ApplePayUserEducationDemoViewController_physicalButtonView];
    if (v8)
    {
      [v8 setAnimating_];
    }

    v9 = v3[OBJC_IVAR____TtC9PassKitUI39ApplePayUserEducationDemoViewController_stage];
    v10 = *&v3[OBJC_IVAR____TtC9PassKitUI39ApplePayUserEducationDemoViewController_stackView];
    if (v10)
    {
      v11 = *&v10[OBJC_IVAR____TtC9PassKitUI34ApplePayUserEducationDemoStackView_groupStackView];
      v12 = v10;
      v13 = [v11 userEducationDemoController];
      v14 = v13 == 0;
      if (v13)
      {
        v15 = v13;
        v16 = [v13 state];
      }

      else
      {
        v16 = 0;
      }
    }

    else
    {
      v16 = 0;
      v14 = 1;
    }

    v17 = sub_1BD5674EC(v9, v16, v14);
    if (v18)
    {
      v19 = v17;
      v20 = v18;
      v21 = sub_1BE052434();
      v23 = v22;
      v24 = sub_1BE052434();
      v26 = v25;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3D1E0, &unk_1BE0B9A10);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1BE0B6CA0;
      v28 = *MEMORY[0x1E69BABE8];
      *(inited + 32) = *MEMORY[0x1E69BABE8];
      *(inited + 40) = v19;
      *(inited + 48) = v20;
      v29 = *MEMORY[0x1E69BA680];
      *(inited + 56) = *MEMORY[0x1E69BA680];
      *(inited + 64) = v21;
      *(inited + 72) = v23;
      v30 = v28;
      v31 = v29;
      v32 = sub_1BD1AAF50(inited);
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F590, &qword_1BE0C0E20);
      swift_arrayDestroy();
      v33 = *MEMORY[0x1E69BA440];
      sub_1BE048C84();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      sub_1BD1DAE70(v24, v26, v33, isUniquelyReferenced_nonNull_native);

      v35 = objc_opt_self();
      v36 = *MEMORY[0x1E69BB6B0];
      type metadata accessor for PKAnalyticsKey(0);
      sub_1BD5680EC(&qword_1EBD35F00, type metadata accessor for PKAnalyticsKey, &unk_1BE0B3A90);
      v37 = sub_1BE052224();
      v32, v38, v39, v40, v41, v42, v43, v44;
      [v35 subject:v36 sendEvent:v37];

      v26, v45, v46, v47, v48, v49, v50, v51;
    }

    v52 = &v3[OBJC_IVAR____TtC9PassKitUI39ApplePayUserEducationDemoViewController_delegate];
    if (swift_unknownObjectWeakLoadStrong())
    {
      v53 = *(v52 + 1);
      ObjectType = swift_getObjectType();
      (*(v53 + 8))(ObjectType, v53);

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }
}

void sub_1BD5644AC(uint64_t a1)
{
  v29 = *MEMORY[0x1E69E9840];
  v28.receiver = v1;
  v28.super_class = type metadata accessor for ApplePayUserEducationDemoViewController();
  objc_msgSendSuper2(&v28, sel_viewWillLayoutSubviews);
  v2 = [v1 view];
  if (!v2)
  {
    __break(1u);
  }

  v3 = v2;
  [v2 bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v12 = *&v1[OBJC_IVAR____TtC9PassKitUI39ApplePayUserEducationDemoViewController_springBoardBlurView];
  if (v12)
  {
    [v12 setFrame_];
  }

  [*&v1[OBJC_IVAR____TtC9PassKitUI39ApplePayUserEducationDemoViewController_physicalButtonView] updateFrame];
  v13 = *&v1[OBJC_IVAR____TtC9PassKitUI39ApplePayUserEducationDemoViewController_headerInstructionView];
  if (v13)
  {
    v14 = *&v1[OBJC_IVAR____TtC9PassKitUI39ApplePayUserEducationDemoViewController_stackView];
    if (v14)
    {
      v15 = v14;
      v16 = v13;
      [v16 sizeThatFits_];
      v18 = v17;
      v19 = [v1 view];
      if (v19)
      {
        v20 = v19;
        [v19 safeAreaInsets];
        v22 = v21;

        memset(&slice, 0, sizeof(slice));
        memset(&v26, 0, sizeof(v26));
        v30.origin.x = v5;
        v30.origin.y = v7;
        v30.size.width = v9;
        v30.size.height = v11;
        CGRectDivide(v30, &slice, &v26, v18 + v22, CGRectMinYEdge);
        origin = v26.origin;
        size = v26.size;
        [v16 setFrame_];
        v25 = v15;
        [v25 setFrame_];
      }

      else
      {
        __break(1u);
      }
    }
  }
}

void sub_1BD564780(uint64_t a1)
{
  v2 = a1;
  v34.receiver = v1;
  v34.super_class = type metadata accessor for ApplePayUserEducationDemoViewController();
  objc_msgSendSuper2(&v34, sel_viewDidDisappear_, v2 & 1);
  v3 = v1[OBJC_IVAR____TtC9PassKitUI39ApplePayUserEducationDemoViewController_stage];
  v4 = *&v1[OBJC_IVAR____TtC9PassKitUI39ApplePayUserEducationDemoViewController_stackView];
  if (v4)
  {
    v5 = *&v4[OBJC_IVAR____TtC9PassKitUI34ApplePayUserEducationDemoStackView_groupStackView];
    v6 = v4;
    v7 = [v5 userEducationDemoController];
    v8 = v7 == 0;
    if (v7)
    {
      v9 = v7;
      v10 = [v7 state];
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
    v8 = 1;
  }

  v11 = sub_1BD5674EC(v3, v10, v8);
  if (v12)
  {
    v13 = v11;
    v14 = v12;
    v15 = sub_1BE052434();
    v17 = v16;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3D1E0, &unk_1BE0B9A10);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1BE0B6CA0;
    v19 = *MEMORY[0x1E69BABE8];
    *(inited + 32) = *MEMORY[0x1E69BABE8];
    *(inited + 40) = v13;
    *(inited + 48) = v14;
    v20 = *MEMORY[0x1E69BA680];
    *(inited + 56) = *MEMORY[0x1E69BA680];
    *(inited + 64) = v15;
    *(inited + 72) = v17;
    v21 = v19;
    v22 = v20;
    v23 = sub_1BD1AAF50(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F590, &qword_1BE0C0E20);
    swift_arrayDestroy();
    v24 = objc_opt_self();
    v25 = *MEMORY[0x1E69BB6B0];
    type metadata accessor for PKAnalyticsKey(0);
    sub_1BD5680EC(&qword_1EBD35F00, type metadata accessor for PKAnalyticsKey, &unk_1BE0B3A90);
    v26 = sub_1BE052224();
    v23, v27, v28, v29, v30, v31, v32, v33;
    [v24 subject:v25 sendEvent:v26];
  }
}

void sub_1BD564A24(uint64_t a1)
{
  v2 = v1;
  v82 = OBJC_IVAR____TtC9PassKitUI39ApplePayUserEducationDemoViewController_stage;
  if (!*(v1 + OBJC_IVAR____TtC9PassKitUI39ApplePayUserEducationDemoViewController_stage))
  {
    v8 = *(v1 + OBJC_IVAR____TtC9PassKitUI39ApplePayUserEducationDemoViewController_physicalButtonView);
    if (v8)
    {
      [v8 setAnimating_];
    }

    v9 = *(v1 + OBJC_IVAR____TtC9PassKitUI39ApplePayUserEducationDemoViewController_springBoardBlurView);
    if (v9)
    {
      v10 = v9;
      sub_1BD566DD4(0, 1);
    }

    v6 = swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_1BE048964();
    v7 = sub_1BD5681B4;
    goto LABEL_11;
  }

  if (*(v1 + OBJC_IVAR____TtC9PassKitUI39ApplePayUserEducationDemoViewController_stage) == 1)
  {
    v4 = *(v1 + OBJC_IVAR____TtC9PassKitUI39ApplePayUserEducationDemoViewController_springBoardBlurView);
    if (v4)
    {
      v5 = v4;
      sub_1BD566DD4(1, 1);
    }

    v6 = swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_1BE048964();
    v7 = sub_1BD5681AC;
LABEL_11:
    sub_1BD5650CC(0, v7, v6);

    goto LABEL_17;
  }

  v11 = *(v1 + OBJC_IVAR____TtC9PassKitUI39ApplePayUserEducationDemoViewController_physicalButtonView);
  if (v11)
  {
    [v11 setAnimating_];
  }

  v12 = *(v1 + OBJC_IVAR____TtC9PassKitUI39ApplePayUserEducationDemoViewController_springBoardBlurView);
  if (v12)
  {
    v13 = v12;
    sub_1BD566DD4(2, 1);
  }

  sub_1BD5650CC(1, 0, 0);
LABEL_17:
  v14 = OBJC_IVAR____TtC9PassKitUI39ApplePayUserEducationDemoViewController_stackView;
  v15 = *(v2 + OBJC_IVAR____TtC9PassKitUI39ApplePayUserEducationDemoViewController_stackView);
  if (v15)
  {
    v16 = *&v15[OBJC_IVAR____TtC9PassKitUI34ApplePayUserEducationDemoStackView_groupStackView];
    v17 = v15;
    v18 = [v16 userEducationDemoController];
    v19 = v18 == 0;
    if (v18)
    {
      v20 = v18;
      v21 = [v18 state];
    }

    else
    {
      v21 = 0;
    }
  }

  else
  {
    v21 = 0;
    v19 = 1;
  }

  v22 = sub_1BD5674EC(a1, v21, v19);
  v24 = MEMORY[0x1E69BABE8];
  v25 = MEMORY[0x1E69BA680];
  v26 = MEMORY[0x1E69BB6B0];
  v27 = &selRef_startPrecursorPassFlowWithNavController_context_pass_precursorController_parentNavController_presentNavController_completion_;
  if (v23)
  {
    v28 = v22;
    v29 = v23;
    v30 = sub_1BE052434();
    v32 = v31;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3D1E0, &unk_1BE0B9A10);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1BE0B6CA0;
    v34 = *MEMORY[0x1E69BABE8];
    *(inited + 32) = *MEMORY[0x1E69BABE8];
    *(inited + 40) = v28;
    *(inited + 48) = v29;
    v35 = *MEMORY[0x1E69BA680];
    *(inited + 56) = *MEMORY[0x1E69BA680];
    *(inited + 64) = v30;
    *(inited + 72) = v32;
    v36 = v34;
    v37 = v35;
    v38 = sub_1BD1AAF50(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F590, &qword_1BE0C0E20);
    v27 = &selRef_startPrecursorPassFlowWithNavController_context_pass_precursorController_parentNavController_presentNavController_completion_;
    v26 = MEMORY[0x1E69BB6B0];
    swift_arrayDestroy();
    v39 = objc_opt_self();
    v40 = *v26;
    type metadata accessor for PKAnalyticsKey(0);
    sub_1BD5680EC(&qword_1EBD35F00, type metadata accessor for PKAnalyticsKey, &unk_1BE0B3A90);
    v41 = sub_1BE052224();
    v38, v42, v43, v44, v45, v46, v47, v48;
    [v39 subject:v40 sendEvent:v41];

    v25 = MEMORY[0x1E69BA680];
    v24 = MEMORY[0x1E69BABE8];
  }

  v49 = v24;
  v50 = *(v2 + v82);
  v51 = *(v2 + v14);
  if (v51)
  {
    v52 = *&v51[OBJC_IVAR____TtC9PassKitUI34ApplePayUserEducationDemoStackView_groupStackView];
    v53 = v51;
    v54 = [v52 userEducationDemoController];
    v55 = v54 == 0;
    v56 = v25;
    if (v54)
    {
      v57 = v54;
      v58 = [v54 state];
    }

    else
    {
      v58 = 0;
    }
  }

  else
  {
    v58 = 0;
    v55 = 1;
    v56 = v25;
  }

  v59 = sub_1BD5674EC(v50, v58, v55);
  if (v60)
  {
    v61 = v59;
    v62 = v60;
    v63 = sub_1BE052434();
    v65 = v64;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3D1E0, &unk_1BE0B9A10);
    v66 = swift_initStackObject();
    *(v66 + 16) = xmmword_1BE0B6CA0;
    v67 = *v49;
    *(v66 + 32) = *v49;
    *(v66 + 40) = v61;
    *(v66 + 48) = v62;
    v68 = *v56;
    *(v66 + 56) = *v56;
    *(v66 + 64) = v63;
    *(v66 + 72) = v65;
    v69 = v67;
    v70 = v68;
    v71 = sub_1BD1AAF50(v66);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F590, &qword_1BE0C0E20);
    swift_arrayDestroy();
    v72 = objc_opt_self();
    v73 = *v26;
    type metadata accessor for PKAnalyticsKey(0);
    sub_1BD5680EC(&qword_1EBD35F00, type metadata accessor for PKAnalyticsKey, &unk_1BE0B3A90);
    v74 = sub_1BE052224();
    v71, v75, v76, v77, v78, v79, v80, v81;
    [v72 v27[128]];
  }
}

void sub_1BD564FDC(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = *(Strong + OBJC_IVAR____TtC9PassKitUI39ApplePayUserEducationDemoViewController_stage);
    v2[OBJC_IVAR____TtC9PassKitUI39ApplePayUserEducationDemoViewController_stage] = 1;
    sub_1BD564A24(v3);
  }
}

void sub_1BD565044(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = *(Strong + OBJC_IVAR____TtC9PassKitUI39ApplePayUserEducationDemoViewController_physicalButtonView);
    v3 = Strong;
    v4 = v2;

    if (v2)
    {
      [v4 setAnimating_];
    }
  }
}

void sub_1BD5650CC(char a1, void (*a2)(void), uint64_t a3)
{
  if (*(v3 + OBJC_IVAR____TtC9PassKitUI39ApplePayUserEducationDemoViewController_stackViewTargetVisibility) == (a1 & 1))
  {
    if (a2)
    {
      a2();
    }
  }

  else
  {
    *(v3 + OBJC_IVAR____TtC9PassKitUI39ApplePayUserEducationDemoViewController_stackViewTargetVisibility) = a1 & 1;
    if (a1)
    {
      v7 = *(v3 + OBJC_IVAR____TtC9PassKitUI39ApplePayUserEducationDemoViewController_stackView);
      if (v7)
      {
        [v7 setHidden_];
      }

      v8 = objc_opt_self();
      v9 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v45 = sub_1BD568184;
      v46 = v9;
      v41 = MEMORY[0x1E69E9820];
      v42 = 1107296256;
      v43 = sub_1BD126964;
      v44 = &block_descriptor_81_0;
      v10 = _Block_copy(&v41);
      v46, v11, v12, v13, v14, v15, v16, v17;
      v18 = swift_allocObject();
      v18[2] = a2;
      v18[3] = a3;
      v45 = sub_1BD3B690C;
      v46 = v18;
      v41 = MEMORY[0x1E69E9820];
      v42 = 1107296256;
      v19 = &block_descriptor_87_1;
    }

    else
    {
      v8 = objc_opt_self();
      v20 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v45 = sub_1BD568158;
      v46 = v20;
      v41 = MEMORY[0x1E69E9820];
      v42 = 1107296256;
      v43 = sub_1BD126964;
      v44 = &block_descriptor_70_0;
      v10 = _Block_copy(&v41);
      v46, v21, v22, v23, v24, v25, v26, v27;
      v28 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v29 = swift_allocObject();
      v29[2] = v28;
      v29[3] = a2;
      v29[4] = a3;
      v45 = sub_1BD568178;
      v46 = v29;
      v41 = MEMORY[0x1E69E9820];
      v42 = 1107296256;
      v19 = &block_descriptor_77;
    }

    v43 = sub_1BD976224;
    v44 = v19;
    v30 = _Block_copy(&v41);
    v31 = v46;
    sub_1BD0D44B8(a2, a3);
    v31, v32, v33, v34, v35, v36, v37, v38;
    [v8 animateWithDuration:v10 animations:v30 completion:{0.5, v41, v42}];
    _Block_release(v30);
    _Block_release(v10);
    v39 = *(v3 + OBJC_IVAR____TtC9PassKitUI39ApplePayUserEducationDemoViewController_stackView);
    if (v39)
    {
      v40 = v39;
      sub_1BD2B5ABC(a1 & 1);
    }
  }
}

void sub_1BD565410(uint64_t a1, double a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = *(Strong + OBJC_IVAR____TtC9PassKitUI39ApplePayUserEducationDemoViewController_stackView);
    v5 = Strong;
    v6 = v4;

    if (v4)
    {
      [v6 setAlpha_];
    }
  }
}

void sub_1BD5654A4(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = *(Strong + OBJC_IVAR____TtC9PassKitUI39ApplePayUserEducationDemoViewController_stackView);
    v6 = Strong;
    v7 = v5;

    if (v5)
    {
      [v7 setHidden_];
    }
  }

  if (a3)
  {
    a3();
  }
}

id ApplePayUserEducationDemoViewController.__allocating_init(nibName:bundle:)(uint64_t a1, void *a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v7 = sub_1BE052404();
    a2, v8, v9, v10, v11, v12, v13, v14;
  }

  else
  {
    v7 = 0;
  }

  v15 = [objc_allocWithZone(v4) initWithNibName:v7 bundle:a3];

  return v15;
}

void sub_1BD565620(unint64_t a1, unint64_t a2)
{
  v5 = sub_1BE04AF64();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v59 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = OBJC_IVAR____TtC9PassKitUI39ApplePayUserEducationDemoViewController_stage;
  if (*(v2 + OBJC_IVAR____TtC9PassKitUI39ApplePayUserEducationDemoViewController_stage) == 2)
  {
    v10 = sub_1BD5674EC(2, a2, 0);
    v61 = a1;
    if (v11)
    {
      v12 = v10;
      v13 = v11;
      v14 = sub_1BE052434();
      v16 = v15;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3D1E0, &unk_1BE0B9A10);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1BE0B6CA0;
      v18 = *MEMORY[0x1E69BABE8];
      v60 = v6;
      *(inited + 32) = v18;
      *(inited + 40) = v12;
      *(inited + 48) = v13;
      v19 = *MEMORY[0x1E69BA680];
      *(inited + 56) = *MEMORY[0x1E69BA680];
      *(inited + 64) = v14;
      *(inited + 72) = v16;
      v20 = v18;
      v21 = v19;
      v22 = sub_1BD1AAF50(inited);
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F590, &qword_1BE0C0E20);
      v6 = v60;
      swift_arrayDestroy();
      v23 = objc_opt_self();
      v24 = *MEMORY[0x1E69BB6B0];
      type metadata accessor for PKAnalyticsKey(0);
      sub_1BD5680EC(&qword_1EBD35F00, type metadata accessor for PKAnalyticsKey, &unk_1BE0B3A90);
      v25 = sub_1BE052224();
      v22, v26, v27, v28, v29, v30, v31, v32;
      v33 = v24;
      a1 = v61;
      [v23 subject:v33 sendEvent:v25];
    }

    v34 = sub_1BD5674EC(*(v2 + v9), a1, 0);
    if (v35)
    {
      v36 = v34;
      v37 = v35;
      v38 = sub_1BE052434();
      v40 = v39;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3D1E0, &unk_1BE0B9A10);
      v41 = swift_initStackObject();
      *(v41 + 16) = xmmword_1BE0B6CA0;
      v42 = *MEMORY[0x1E69BABE8];
      *(v41 + 32) = *MEMORY[0x1E69BABE8];
      *(v41 + 40) = v36;
      *(v41 + 48) = v37;
      v43 = *MEMORY[0x1E69BA680];
      *(v41 + 56) = *MEMORY[0x1E69BA680];
      *(v41 + 64) = v38;
      *(v41 + 72) = v40;
      v44 = v42;
      v45 = v43;
      v46 = sub_1BD1AAF50(v41);
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F590, &qword_1BE0C0E20);
      swift_arrayDestroy();
      v47 = objc_opt_self();
      v48 = *MEMORY[0x1E69BB6B0];
      type metadata accessor for PKAnalyticsKey(0);
      sub_1BD5680EC(&qword_1EBD35F00, type metadata accessor for PKAnalyticsKey, &unk_1BE0B3A90);
      v49 = sub_1BE052224();
      v46, v50, v51, v52, v53, v54, v55, v56;
      [v47 subject:v48 sendEvent:v49];

      a1 = v61;
    }
  }

  if (a1 == 2)
  {
    sub_1BE04AF54();
    v57 = sub_1BE04AE64();
    (*(v6 + 8))(v8, v5);
    PKSetApplePayUserEducationDemoLastCompletedDate();

    v58 = [objc_allocWithZone(MEMORY[0x1E69B8DB8]) init];
    [v58 scheduleApplePayDemoActivitySignal];
  }
}

char *sub_1BD565A58()
{
  *&v0[OBJC_IVAR____TtCC9PassKitUI39ApplePayUserEducationDemoViewControllerP33_722E2528CE6F81F660593DCAA893F90F18LockButtonConsumer_lockButtonObserver] = 0;
  v1 = &v0[OBJC_IVAR____TtCC9PassKitUI39ApplePayUserEducationDemoViewControllerP33_722E2528CE6F81F660593DCAA893F90F18LockButtonConsumer_didConsumeDoublePressUp];
  v2 = type metadata accessor for ApplePayUserEducationDemoViewController.LockButtonConsumer();
  *v1 = 0;
  *(v1 + 1) = 0;
  v9.receiver = v0;
  v9.super_class = v2;
  v3 = objc_msgSendSuper2(&v9, sel_init);
  v4 = objc_opt_self();
  v5 = v3;
  v6 = [v4 sharedInstance];
  v7 = [v6 beginConsumingPressesForButtonKind:2 eventConsumer:v5 priority:0];

  *&v5[OBJC_IVAR____TtCC9PassKitUI39ApplePayUserEducationDemoViewControllerP33_722E2528CE6F81F660593DCAA893F90F18LockButtonConsumer_lockButtonObserver] = v7;
  swift_unknownObjectRelease();
  return v5;
}

uint64_t sub_1BD565C48@<X0>(uint64_t a1@<X0>, NSString *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_1BE04A604();
  (*(*(v6 - 8) + 16))(a3, a1, v6);
  PKFontForDefaultDesign(*MEMORY[0x1E69DDD40], a2);
  sub_1BD1EB2D0();
  return sub_1BE04A614();
}

double sub_1BD565D58(char a1, double a2, double a3, double a4, double a5)
{
  v39 = *MEMORY[0x1E69E9840];
  [v5 safeAreaInsets];
  v12 = PKEdgeInsetsInsetRectTm(a2, a3, a4, a5, v11, 16.0);
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v19 = *&v5[OBJC_IVAR____TtCC9PassKitUI39ApplePayUserEducationDemoViewControllerP33_722E2528CE6F81F660593DCAA893F90F21HeaderInstructionView_endDemoButton];
  [v19 sizeThatFits_];
  v21 = v20;
  v23 = v22;
  memset(&slice, 0, sizeof(slice));
  memset(&v37, 0, sizeof(v37));
  v40.origin.x = v12;
  v40.origin.y = v14;
  v40.size.width = v16;
  v40.size.height = v18;
  CGRectDivide(v40, &slice, &v37, v21, CGRectMaxXEdge);
  v41 = slice;
  origin = v37.origin;
  size = v37.size;
  memset(&slice, 0, sizeof(slice));
  memset(&v37, 0, sizeof(v37));
  CGRectDivide(v41, &slice, &v37, v23, CGRectMinYEdge);
  if ((a1 & 1) == 0)
  {
    [v19 setFrame_];
  }

  memset(&slice, 0, sizeof(slice));
  memset(&v37, 0, sizeof(v37));
  v42.origin = origin;
  v42.size = size;
  CGRectDivide(v42, &slice, &v37, 20.0, CGRectMaxXEdge);
  v26 = v37.origin;
  v27 = v37.size;
  v28 = *&v5[OBJC_IVAR____TtCC9PassKitUI39ApplePayUserEducationDemoViewControllerP33_722E2528CE6F81F660593DCAA893F90F21HeaderInstructionView_titleLabel];
  [v28 sizeThatFits_];
  v30 = v29;
  memset(&slice, 0, sizeof(slice));
  memset(&v37, 0, sizeof(v37));
  v43.origin = v26;
  v43.size = v27;
  CGRectDivide(v43, &slice, &v37, v30, CGRectMinYEdge);
  v31 = v37.origin;
  v32 = v37.size;
  if ((a1 & 1) == 0)
  {
    [v28 setFrame_];
  }

  v33 = *&v5[OBJC_IVAR____TtCC9PassKitUI39ApplePayUserEducationDemoViewControllerP33_722E2528CE6F81F660593DCAA893F90F21HeaderInstructionView_subtitleLabel];
  [v33 sizeThatFits_];
  v35 = v34;
  memset(&slice, 0, sizeof(slice));
  memset(&v37, 0, sizeof(v37));
  v44.origin = v31;
  v44.size = v32;
  CGRectDivide(v44, &slice, &v37, v35, CGRectMinYEdge);
  if ((a1 & 1) == 0)
  {
    [v33 setFrame_];
  }

  return a4;
}

char *sub_1BD566180()
{
  v0[OBJC_IVAR____TtCC9PassKitUI39ApplePayUserEducationDemoViewControllerP33_722E2528CE6F81F660593DCAA893F90F19SpringBoardBlurView_previousFilterLevel] = 0;
  v1 = OBJC_IVAR____TtCC9PassKitUI39ApplePayUserEducationDemoViewControllerP33_722E2528CE6F81F660593DCAA893F90F19SpringBoardBlurView_wallpaperView;
  *&v0[v1] = [objc_allocWithZone(MEMORY[0x1E69DCAE0]) init];
  v2 = OBJC_IVAR____TtCC9PassKitUI39ApplePayUserEducationDemoViewControllerP33_722E2528CE6F81F660593DCAA893F90F19SpringBoardBlurView_backdropView;
  *&v0[v2] = [objc_allocWithZone(PKBackdropView) init];
  v32.receiver = v0;
  v32.super_class = type metadata accessor for ApplePayUserEducationDemoViewController.SpringBoardBlurView();
  v3 = objc_msgSendSuper2(&v32, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v4 = *MEMORY[0x1E6979928];
  v5 = objc_allocWithZone(MEMORY[0x1E6979378]);
  v6 = v3;
  v7 = [v5 initWithType_];
  v8 = sub_1BE052404();
  [v7 setName_];

  v9 = sub_1BE052824();
  v10 = sub_1BE052404();
  [v7 setValue:v9 forKeyPath:v10];

  v11 = [objc_allocWithZone(MEMORY[0x1E6979378]) initWithType_];
  v12 = sub_1BE052404();
  [v11 setName_];

  v13 = [objc_allocWithZone(MEMORY[0x1E6979378]) initWithType_];
  v14 = sub_1BE052404();
  [v13 setName_];

  v15 = OBJC_IVAR____TtCC9PassKitUI39ApplePayUserEducationDemoViewControllerP33_722E2528CE6F81F660593DCAA893F90F19SpringBoardBlurView_backdropView;
  v16 = [*&v6[OBJC_IVAR____TtCC9PassKitUI39ApplePayUserEducationDemoViewControllerP33_722E2528CE6F81F660593DCAA893F90F19SpringBoardBlurView_backdropView] backdropLayer];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40A50, &unk_1BE0C74D0);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_1BE0B98D0;
  v18 = sub_1BD0E5E8C(0, &qword_1EBD4A9E0, 0x1E6979378);
  *(v17 + 32) = v7;
  *(v17 + 56) = v18;
  *(v17 + 64) = v13;
  *(v17 + 120) = v18;
  *(v17 + 88) = v18;
  *(v17 + 96) = v11;
  v19 = v16;
  v20 = v7;
  v21 = v13;
  v22 = v11;
  v23 = sub_1BE052724();
  v17, v24, v25, v26, v27, v28, v29, v30;
  [v19 setFilters_];

  [v6 addSubview_];
  [v6 addSubview_];
  sub_1BD566DD4(0, 0);
  sub_1BD566674();

  return v6;
}

void sub_1BD566674()
{
  v0 = sub_1BE051F54();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v29 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_1BE051FA4();
  v4 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1BE051F64();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BD0E5E8C(0, &qword_1EBD35E90, 0x1E69E9610);
  (*(v8 + 104))(v10, *MEMORY[0x1E69E7F88], v7);
  v11 = sub_1BE052D84();
  (*(v8 + 8))(v10, v7);
  v12 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = sub_1BD5680E4;
  v33 = v12;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BD126964;
  aBlock[3] = &block_descriptor_122;
  v13 = _Block_copy(aBlock);
  sub_1BE048964();
  sub_1BE051F74();
  v31 = MEMORY[0x1E69E7CC0];
  sub_1BD5680EC(&qword_1EBD366B0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0, &unk_1BE0B8FF0);
  sub_1BD14ECDC();
  sub_1BE053664();
  MEMORY[0x1BFB3FDF0](0, v6, v3, v13);
  _Block_release(v13);

  (*(v1 + 8))(v3, v0);
  (*(v4 + 8))(v6, v30);
  v14 = v33;
  v12, v15, v16, v17, v18, v19, v20, v21;
  v14, v22, v23, v24, v25, v26, v27, v28;
}

void *sub_1BD566A0C(uint64_t a1)
{
  v1 = sub_1BE051F54();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1BE051FA4();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v10 = result;
    v11 = PKUIGetMinScreenWidthType();
    PKUIScreenWidthTypeGetWidth(v11);
    v12 = SBSUIWallpaperGetPreview();
    v30 = v6;
    v13 = v12;
    sub_1BD0E5E8C(0, &qword_1EBD35E90, 0x1E69E9610);
    v14 = sub_1BE052D54();
    v29 = v5;
    v15 = v14;
    v16 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v17 = swift_allocObject();
    *(v17 + 16) = v16;
    *(v17 + 24) = v13;
    aBlock[4] = sub_1BD568150;
    v32 = v17;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1BD126964;
    aBlock[3] = &block_descriptor_66_1;
    v18 = _Block_copy(aBlock);
    v19 = v32;
    v20 = v13;
    v19, v21, v22, v23, v24, v25, v26, v27;
    sub_1BE051F74();
    aBlock[0] = MEMORY[0x1E69E7CC0];
    sub_1BD5680EC(&qword_1EBD366B0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0, &unk_1BE0B8FF0);
    sub_1BD14ECDC();
    sub_1BE053664();
    MEMORY[0x1BFB3FDF0](0, v8, v4, v18);
    _Block_release(v18);

    (*(v2 + 8))(v4, v1);
    return (*(v30 + 8))(v8, v29);
  }

  return result;
}

void sub_1BD566D4C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = *(Strong + OBJC_IVAR____TtCC9PassKitUI39ApplePayUserEducationDemoViewControllerP33_722E2528CE6F81F660593DCAA893F90F19SpringBoardBlurView_wallpaperView);

    [v5 setImage_];
  }
}

void sub_1BD566DD4(char a1, char a2)
{
  Tracker = PKCATrackedLayoutGetTracker();
  v6 = [*(v2 + OBJC_IVAR____TtCC9PassKitUI39ApplePayUserEducationDemoViewControllerP33_722E2528CE6F81F660593DCAA893F90F19SpringBoardBlurView_backdropView) backdropLayer];
  v7 = OBJC_IVAR____TtCC9PassKitUI39ApplePayUserEducationDemoViewControllerP33_722E2528CE6F81F660593DCAA893F90F19SpringBoardBlurView_previousFilterLevel;
  v8 = dbl_1BE0E19E0[a1];
  if (a2)
  {
    v9 = dbl_1BE0E19E0[*(v2 + OBJC_IVAR____TtCC9PassKitUI39ApplePayUserEducationDemoViewControllerP33_722E2528CE6F81F660593DCAA893F90F19SpringBoardBlurView_previousFilterLevel)];
    v10 = [objc_opt_self() createDefaultFactory];
    v11 = sub_1BE052404();
    v12 = [v10 springAnimationWithKeyPath_];

    [v12 pkui:v9 updateForAdditiveAnimationFromScalar:v8 toScalar:?];
    if (Tracker)
    {
      [Tracker trackAnimation_];
    }

    v13 = v12;
  }

  v14 = sub_1BE04C564();
  v15 = sub_1BE052404();
  [v6 setValue:v14 forKeyPath:v15];

  v16 = dbl_1BE0E19F8[a1];
  if (a2)
  {
    v17 = dbl_1BE0E19F8[*(v2 + v7)];
    v18 = [objc_opt_self() createDefaultFactory];
    v19 = sub_1BE052404();
    v20 = [v18 springAnimationWithKeyPath_];

    [v20 pkui:v17 updateForAdditiveAnimationFromScalar:v16 toScalar:?];
    if (Tracker)
    {
      [Tracker trackAnimation_];
    }

    v21 = v20;
  }

  v22 = sub_1BE04C564();
  v23 = sub_1BE052404();
  [v6 setValue:v22 forKeyPath:v23];

  v24 = dbl_1BE0E1A10[a1];
  if (a2)
  {
    v25 = dbl_1BE0E1A10[*(v2 + v7)];
    v26 = [objc_opt_self() createDefaultFactory];
    v27 = sub_1BE052404();
    v28 = [v26 springAnimationWithKeyPath_];

    [v28 pkui:v25 updateForAdditiveAnimationFromScalar:v24 toScalar:?];
    if (Tracker)
    {
      [Tracker trackAnimation_];
    }

    v29 = v28;
  }

  v30 = sub_1BE04C564();
  v31 = sub_1BE052404();
  [v6 setValue:v30 forKeyPath:v31];

  *(v2 + v7) = a1;
}

id sub_1BD567218(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1(0);
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

char *sub_1BD5672A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = objc_allocWithZone(type metadata accessor for ApplePayUserEducationDemoViewController());

  return sub_1BD5672FC(a1, v7, a3, a4);
}

char *sub_1BD5672FC(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4)
{
  *&a2[OBJC_IVAR____TtC9PassKitUI39ApplePayUserEducationDemoViewController_delegate + 8] = 0;
  v6 = swift_unknownObjectWeakInit();
  *&a2[OBJC_IVAR____TtC9PassKitUI39ApplePayUserEducationDemoViewController_headerInstructionView] = 0;
  *&a2[OBJC_IVAR____TtC9PassKitUI39ApplePayUserEducationDemoViewController_stackView] = 0;
  *&a2[OBJC_IVAR____TtC9PassKitUI39ApplePayUserEducationDemoViewController_physicalButtonView] = 0;
  *&a2[OBJC_IVAR____TtC9PassKitUI39ApplePayUserEducationDemoViewController_springBoardBlurView] = 0;
  *(v6 + 8) = a4;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  a2[OBJC_IVAR____TtC9PassKitUI39ApplePayUserEducationDemoViewController_stage] = 0;
  a2[OBJC_IVAR____TtC9PassKitUI39ApplePayUserEducationDemoViewController_stackViewTargetVisibility] = 1;
  *&a2[OBJC_IVAR____TtC9PassKitUI39ApplePayUserEducationDemoViewController_lockButtonConsumer] = [objc_allocWithZone(type metadata accessor for ApplePayUserEducationDemoViewController.LockButtonConsumer()) init];
  v28.receiver = a2;
  v28.super_class = type metadata accessor for ApplePayUserEducationDemoViewController();
  v7 = objc_msgSendSuper2(&v28, sel_initWithNibName_bundle_, 0, 0);
  v8 = *&v7[OBJC_IVAR____TtC9PassKitUI39ApplePayUserEducationDemoViewController_lockButtonConsumer];
  v9 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v10 = &v8[OBJC_IVAR____TtCC9PassKitUI39ApplePayUserEducationDemoViewControllerP33_722E2528CE6F81F660593DCAA893F90F18LockButtonConsumer_didConsumeDoublePressUp];
  v11 = *&v8[OBJC_IVAR____TtCC9PassKitUI39ApplePayUserEducationDemoViewControllerP33_722E2528CE6F81F660593DCAA893F90F18LockButtonConsumer_didConsumeDoublePressUp];
  v12 = *&v8[OBJC_IVAR____TtCC9PassKitUI39ApplePayUserEducationDemoViewControllerP33_722E2528CE6F81F660593DCAA893F90F18LockButtonConsumer_didConsumeDoublePressUp + 8];
  *v10 = sub_1BD1F1EFC;
  v10[1] = v9;
  v13 = v8;
  sub_1BE048964();
  sub_1BD0D4744(v11, v12, v14, v15, v16, v17, v18, v19);

  v9, v20, v21, v22, v23, v24, v25, v26;
  return v7;
}

uint64_t sub_1BD5674EC(uint64_t result, unint64_t a2, char a3)
{
  if (!result)
  {
    return result;
  }

  if (result == 1 || (a3 & 1) != 0 || a2 <= 3)
  {
    return sub_1BE052434();
  }

  return 0;
}

void sub_1BD567564()
{
  *(v0 + OBJC_IVAR____TtC9PassKitUI39ApplePayUserEducationDemoViewController_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC9PassKitUI39ApplePayUserEducationDemoViewController_headerInstructionView) = 0;
  *(v0 + OBJC_IVAR____TtC9PassKitUI39ApplePayUserEducationDemoViewController_stackView) = 0;
  *(v0 + OBJC_IVAR____TtC9PassKitUI39ApplePayUserEducationDemoViewController_physicalButtonView) = 0;
  *(v0 + OBJC_IVAR____TtC9PassKitUI39ApplePayUserEducationDemoViewController_springBoardBlurView) = 0;
  sub_1BE053994();
  __break(1u);
}

char *sub_1BD567608(uint64_t a1, uint64_t a2)
{
  v93 = a2;
  v94 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD44678, &unk_1BE0D5230);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v92 = &v84 - v4;
  v5 = sub_1BE053204();
  v89 = *(v5 - 8);
  v90 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v88 = &v84 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1BE053104();
  v86 = *(v7 - 8);
  v87 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v85 = &v84 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1BE053274();
  v96 = *(v9 - 8);
  v97 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v91 = &v84 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v95 = &v84 - v12;
  v13 = sub_1BE04BD74();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v98 = &v84 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v84 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v84 - v20;
  v22 = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  v23 = OBJC_IVAR____TtCC9PassKitUI39ApplePayUserEducationDemoViewControllerP33_722E2528CE6F81F660593DCAA893F90F21HeaderInstructionView_titleLabel;
  v104 = v2;
  *&v2[OBJC_IVAR____TtCC9PassKitUI39ApplePayUserEducationDemoViewControllerP33_722E2528CE6F81F660593DCAA893F90F21HeaderInstructionView_titleLabel] = v22;
  v24 = v14;
  v25 = v14 + 104;
  v26 = *(v14 + 104);
  v103 = *MEMORY[0x1E69B80D8];
  v27 = v13;
  v99 = v25;
  v102 = v26;
  v26(v21);
  v28 = v22;
  result = PKPassKitBundle();
  if (!result)
  {
    __break(1u);
    goto LABEL_6;
  }

  v30 = result;
  v31 = *MEMORY[0x1E69DDC40];
  sub_1BE04B6F4();
  v33 = v32;

  v34 = *(v24 + 8);
  v84 = v24 + 8;
  v100 = v34;
  v34(v21, v27);
  v35 = sub_1BE052404();
  v33, v36, v37, v38, v39, v40, v41, v42;
  [v28 setText_];

  v43 = v104;
  v44 = *&v104[v23];
  v45 = objc_opt_self();
  v46 = v44;
  v101 = v45;
  v47 = [v45 systemWhiteColor];
  [v46 setTextColor_];

  v48 = *MEMORY[0x1E69DDD40];
  v49 = *&v43[v23];
  v50 = PKFontForDefaultDesign(v48, v31);
  [v49 setFont_];

  [*&v43[v23] setNumberOfLines_];
  v51 = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  v52 = OBJC_IVAR____TtCC9PassKitUI39ApplePayUserEducationDemoViewControllerP33_722E2528CE6F81F660593DCAA893F90F21HeaderInstructionView_subtitleLabel;
  *&v43[OBJC_IVAR____TtCC9PassKitUI39ApplePayUserEducationDemoViewControllerP33_722E2528CE6F81F660593DCAA893F90F21HeaderInstructionView_subtitleLabel] = v51;
  v102(v18, v103, v27);
  v53 = v51;
  result = PKPassKitBundle();
  if (!result)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v54 = result;
  sub_1BE04B6F4();
  v56 = v55;

  v100(v18, v27);
  v57 = sub_1BE052404();
  v56, v58, v59, v60, v61, v62, v63, v64;
  [v53 setText_];

  v65 = v104;
  v66 = *&v104[v52];
  v67 = [v101 systemWhiteColor];
  [v66 setTextColor_];

  v68 = *MEMORY[0x1E69DDD28];
  v69 = *&v65[v52];
  v70 = PKFontForDefaultDesign(v68, v31);
  [v69 setFont_];

  [*&v65[v52] setNumberOfLines_];
  v71 = v98;
  v102(v98, v103, v27);
  result = PKPassKitBundle();
  if (result)
  {
    v72 = result;
    sub_1BE04B6F4();

    v100(v71, v27);
    v73 = v95;
    sub_1BE053134();
    (*(v86 + 104))(v85, *MEMORY[0x1E69DC508], v87);
    sub_1BE053124();
    (*(v89 + 104))(v88, *MEMORY[0x1E69DC568], v90);
    sub_1BE0530F4();
    sub_1BE048C84();
    sub_1BE053234();
    *(swift_allocObject() + 16) = v31;
    v74 = v31;
    v75 = v92;
    sub_1BE04D3D4();
    v76 = sub_1BE04D3C4();
    (*(*(v76 - 8) + 56))(v75, 0, 1, v76);
    sub_1BE0531F4();
    sub_1BD0E5E8C(0, &qword_1EBD4A9F0, 0x1E69DC738);
    v78 = v96;
    v77 = v97;
    (*(v96 + 16))(v91, v73, v97);
    sub_1BD0E5E8C(0, &qword_1EBD3ECB0, 0x1E69DC628);
    sub_1BE048964();
    sub_1BE0530B4();
    v79 = sub_1BE053284();
    v80 = v104;
    *&v104[OBJC_IVAR____TtCC9PassKitUI39ApplePayUserEducationDemoViewControllerP33_722E2528CE6F81F660593DCAA893F90F21HeaderInstructionView_endDemoButton] = v79;
    v81 = type metadata accessor for ApplePayUserEducationDemoViewController.HeaderInstructionView();
    v105.receiver = v80;
    v105.super_class = v81;
    v82 = objc_msgSendSuper2(&v105, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
    v83 = [v101 systemBlueColor];
    [v82 setBackgroundColor_];

    [v82 setOverrideUserInterfaceStyle_];
    [v82 addSubview_];
    [v82 addSubview_];
    [v82 addSubview_];

    (*(v78 + 8))(v73, v77);
    return v82;
  }

LABEL_7:
  __break(1u);
  return result;
}

unint64_t sub_1BD568038()
{
  result = qword_1EBD4A9C8;
  if (!qword_1EBD4A9C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4A9C8);
  }

  return result;
}

unint64_t sub_1BD568090()
{
  result = qword_1EBD4A9D0;
  if (!qword_1EBD4A9D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4A9D0);
  }

  return result;
}

uint64_t sub_1BD5680EC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

double PKUIScreenWidthTypeGetWidth(unint64_t a1)
{
  result = 0.0;
  if (a1 <= 0xE)
  {
    return dbl_1BE0E1A28[a1];
  }

  return result;
}

void sub_1BD5681EC(_BYTE *a2@<X8>)
{
  KeyPath = swift_getKeyPath();
  v4 = swift_getKeyPath();
  sub_1BE04D8B4(&v19);
  KeyPath, v5, v6, v7, v8, v9, v10, v11;
  v4, v12, v13, v14, v15, v16, v17, v18;
  *a2 = v19;
}

uint64_t sub_1BD56826C(char *a1, void **a2)
{
  v2 = *a2;
  sub_1BD5686CC(*a1);
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = v2;
  return sub_1BE04D8C4();
}

id sub_1BD5682E4(unsigned __int8 a1)
{
  v2 = sub_1BE04BD74();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v24 - v7;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v24 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v24 - v13;
  v17 = MEMORY[0x1EEE9AC00](v15);
  v18 = &v24 - v16;
  v19 = *MEMORY[0x1E69B80E0];
  v20 = *(v3 + 104);
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v20(v14, v19, v2, v17);
      result = PKPassKitBundle();
      if (result)
      {
        v22 = result;
        v23 = sub_1BE04B6F4();
        v18 = v14;
        goto LABEL_15;
      }

      __break(1u);
    }

    else
    {
      if (a1 != 3)
      {
        v20(v5, v19, v2, v17);
        result = PKPassKitBundle();
        if (result)
        {
          v22 = result;
          v23 = sub_1BE04B6F4();
          v18 = v5;
          goto LABEL_15;
        }

        goto LABEL_19;
      }

      v20(v8, v19, v2, v17);
      result = PKPassKitBundle();
      if (result)
      {
        v22 = result;
        v23 = sub_1BE04B6F4();
        v18 = v8;
LABEL_15:

        (*(v3 + 8))(v18, v2);
        return v23;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (!a1)
  {
    v20(&v24 - v16, v19, v2, v17);
    result = PKPassKitBundle();
    if (result)
    {
      v22 = result;
      v23 = sub_1BE04B6F4();
      goto LABEL_15;
    }

    goto LABEL_18;
  }

  v20(v11, v19, v2, v17);
  result = PKPassKitBundle();
  if (result)
  {
    v22 = result;
    v23 = sub_1BE04B6F4();
    v18 = v11;
    goto LABEL_15;
  }

LABEL_20:
  __break(1u);
  return result;
}

id sub_1BD5686A0@<X0>(void *a1@<X8>)
{
  result = sub_1BD5682E4(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

void sub_1BD5686CC(unsigned __int8 a1)
{
  v2 = a1;
  KeyPath = swift_getKeyPath();
  v4 = swift_getKeyPath();
  sub_1BE04D8B4(v40);
  KeyPath, v5, v6, v7, v8, v9, v10, v11;
  v4, v12, v13, v14, v15, v16, v17, v18;
  if (LOBYTE(v40[0]) != v2)
  {
    if (v2 <= 1)
    {
      if (!v2)
      {
        v21 = *(v1 + OBJC_IVAR____TtC9PassKitUI15TransactionList_transactionFetcher);
        [v21 filterTypes_];
LABEL_12:
        v31 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v40[4] = sub_1BD56AC60;
        v41 = v31;
        v40[0] = MEMORY[0x1E69E9820];
        v40[1] = 1107296256;
        v40[2] = sub_1BD56AD40;
        v40[3] = &block_descriptor_73;
        v32 = _Block_copy(v40);
        v41, v33, v34, v35, v36, v37, v38, v39;
        [v21 reloadTransactionsWithCompletion_];
        _Block_release(v32);
        return;
      }

      v20 = 9;
    }

    else
    {
      v19 = 11;
      if (v2 != 3)
      {
        v19 = 5;
      }

      if (v2 == 2)
      {
        v20 = 6;
      }

      else
      {
        v20 = v19;
      }
    }

    v21 = *(v1 + OBJC_IVAR____TtC9PassKitUI15TransactionList_transactionFetcher);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39F80, &unk_1BE0B8CF0);
    v22 = swift_allocObject();
    *(v22 + 16) = xmmword_1BE0B7020;
    *(v22 + 32) = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
    sub_1BD0E5E8C(0, &qword_1EBD3D270, 0x1E696AD98);
    v23 = sub_1BE052724();
    v22, v24, v25, v26, v27, v28, v29, v30;
    [v21 filterTypes_];

    goto LABEL_12;
  }
}

uint64_t sub_1BD5688F8()
{
  KeyPath = swift_getKeyPath();
  v1 = swift_getKeyPath();
  sub_1BE04D8B4(&v17);
  KeyPath, v2, v3, v4, v5, v6, v7, v8;
  v1, v9, v10, v11, v12, v13, v14, v15;
  return v17;
}

void sub_1BD56896C(void *a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    if (a1)
    {
      v5 = a1;
    }

    else
    {
      v5 = MEMORY[0x1E69E7CC0];
    }

    sub_1BE048C84();
    sub_1BD568A84();
    v5, v6, v7, v8, v9, v10, v11, v12;
    sub_1BD568E5C();
  }
}

void *sub_1BD568A84()
{
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4F770, &qword_1BE0ECB90);
  v1 = *(v45 - 8);
  MEMORY[0x1EEE9AC00](v45);
  v4 = &v37 - v3;
  v48 = MEMORY[0x1E69E7CC0];
  if (!(v2 >> 62))
  {
    v5 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5)
    {
      goto LABEL_3;
    }

LABEL_13:
    v33 = MEMORY[0x1E69E7CC0];
LABEL_14:
    swift_getKeyPath();
    swift_getKeyPath();
    v47 = v33;
    v36 = v0;
    return sub_1BE04D8C4();
  }

  v34 = v2;
  v35 = sub_1BE053704();
  v2 = v34;
  v5 = v35;
  if (!v35)
  {
    goto LABEL_13;
  }

LABEL_3:
  v6 = v2;
  result = objc_opt_self();
  v44 = result;
  if (v5 >= 1)
  {
    v8 = 0;
    v9 = *&v0[OBJC_IVAR____TtC9PassKitUI15TransactionList_source];
    v40 = *&v0[OBJC_IVAR____TtC9PassKitUI15TransactionList_account];
    v41 = v9;
    v10 = *&v0[OBJC_IVAR____TtC9PassKitUI15TransactionList_iconGenerator];
    v11 = v6;
    v38 = v0;
    v39 = v6 & 0xC000000000000001;
    v12 = (v1 + 32);
    v42 = v5;
    v43 = v6;
    do
    {
      if (v39)
      {
        v13 = MEMORY[0x1BFB40900](v8, v11);
      }

      else
      {
        v13 = *(v11 + 8 * v8 + 32);
      }

      v14 = v13;
      v15 = [v44 presentationInformationForTransaction:v13 transactionSource:v41 secondaryTransactionSource:0 familyMember:0 account:v40 deviceName:0 context:0];
      type metadata accessor for TransactionPresentation(0);
      v16 = swift_allocObject();
      v17 = OBJC_IVAR____TtC9PassKitUI23TransactionPresentation__icon;
      v47 = 0;
      v18 = v14;
      v19 = v15;
      v20 = v10;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD4AB00, &qword_1BE0C85C0);
      sub_1BE04D874();
      (*v12)(&v16[v17], v4, v45);
      v21 = OBJC_IVAR____TtC9PassKitUI23TransactionPresentation_iconGenerator;
      *&v16[OBJC_IVAR____TtC9PassKitUI23TransactionPresentation_transaction] = v18;
      *&v16[v21] = v10;
      swift_beginAccess();
      v46 = v19;
      sub_1BD0E5E8C(0, &qword_1EBD407E0, 0x1E69B8EC0);
      v22 = v18;
      v23 = v19;
      v24 = v20;
      sub_1BE04D874();
      swift_endAccess();
      swift_getKeyPath();
      swift_getKeyPath();
      v47 = 0;
      sub_1BE048964();
      sub_1BE04D8C4();

      v25 = sub_1BE048964();
      MEMORY[0x1BFB3F7A0](v25);
      if (*((v48 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v48 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1BE052774();
      }

      ++v8;
      sub_1BE0527C4();
      v16, v26, v27, v28, v29, v30, v31, v32;

      v11 = v43;
    }

    while (v42 != v8);
    v33 = v48;
    v0 = v38;
    goto LABEL_14;
  }

  __break(1u);
  return result;
}

void sub_1BD568E5C()
{
  KeyPath = swift_getKeyPath();
  v2 = swift_getKeyPath();
  v102 = v0;
  sub_1BE04D8B4(aBlock);
  KeyPath, v3, v4, v5, v6, v7, v8, v9;
  v2, v10, v11, v12, v13, v14, v15, v16;
  v24 = aBlock[0];
  if (aBlock[0] >> 62)
  {
LABEL_25:
    v100 = v24;
    v25 = sub_1BE053704();
    v24 = v100;
  }

  else
  {
    v25 = *((aBlock[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v24, v17, v18, v19, v20, v21, v22, v23;
  if (v25 > 9)
  {
    goto LABEL_22;
  }

  v26 = swift_getKeyPath();
  v27 = swift_getKeyPath();
  sub_1BE04D8B4(aBlock);
  v26, v28, v29, v30, v31, v32, v33, v34;
  v27, v35, v36, v37, v38, v39, v40, v41;
  v49 = aBlock[0];
  if (aBlock[0] >> 62)
  {
    v50 = sub_1BE053704();
    if (v50)
    {
      goto LABEL_6;
    }

LABEL_27:
    v49, v42, v43, v44, v45, v46, v47, v48;
    return;
  }

  v50 = *((aBlock[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v50)
  {
    goto LABEL_27;
  }

LABEL_6:
  if (v50 < 1)
  {
    __break(1u);
    return;
  }

  v51 = 0;
  v52 = 0;
  v101 = OBJC_IVAR____TtC9PassKitUI15TransactionList_transactionFetcher;
  while (1)
  {
    if ((v49 & 0xC000000000000001) != 0)
    {
      v61 = MEMORY[0x1BFB40900](v52, v49);
    }

    else
    {
      v61 = *(v49 + 8 * v52 + 32);
      sub_1BE048964();
    }

    v62 = OBJC_IVAR____TtC9PassKitUI23TransactionPresentation_transaction;
    if ([*&v61[OBJC_IVAR____TtC9PassKitUI23TransactionPresentation_transaction] transactionType] == 9)
    {
      break;
    }

    v61, v63, v64, v65, v66, v67, v68, v69;
    v60 = __OFADD__(v51++, 1);
    if (v60)
    {
      __break(1u);
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

LABEL_9:
    if (v50 == ++v52)
    {
      goto LABEL_21;
    }
  }

  v70 = *&v102[v101];
  v71 = [*&v61[v62] identifier];
  v72 = [v70 cashbackGroupForTransactionWithIdentifier:v71 cashbackTransactionSourceCollection:0];

  if (v72)
  {
    v80 = [v72 transactionCount];
    v61, v81, v82, v83, v84, v85, v86, v87;

    v60 = __OFADD__(v51, v80);
    v51 += v80;
    if (v60)
    {
      goto LABEL_24;
    }

    goto LABEL_9;
  }

  v61, v73, v74, v75, v76, v77, v78, v79;
  v60 = __OFADD__(v51++, 1);
  if (!v60)
  {
    goto LABEL_9;
  }

  __break(1u);
LABEL_21:
  v49, v53, v54, v55, v56, v57, v58, v59;
  if (v51 < 10)
  {
    return;
  }

LABEL_22:
  v88 = *&v102[OBJC_IVAR____TtC9PassKitUI15TransactionList_transactionFetcher];
  v89 = swift_allocObject();
  *(v89 + 16) = v102;
  aBlock[4] = sub_1BD56AACC;
  v104 = v89;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BD967884;
  aBlock[3] = &block_descriptor_43_1;
  v90 = _Block_copy(aBlock);
  v91 = v104;
  v92 = v102;
  v91, v93, v94, v95, v96, v97, v98, v99;
  [v88 transactionCountByPeriod:4 withCompletion:v90];
  _Block_release(v90);
}

void sub_1BD5691A0(uint64_t a1, uint64_t a2)
{
  v48 = a2;
  v3 = sub_1BE051F54();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1BE051FA4();
  v8 = a1;
  v9 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = MEMORY[0x1E69E7CC0];
  if (v10)
  {
    v13 = v10;
  }

  else
  {
    v13 = MEMORY[0x1E69E7CC0];
  }

  if (v13 >> 62)
  {
    v14 = sub_1BE053704();
  }

  else
  {
    v14 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v51 = v4;
  v52 = v3;
  v49 = v9;
  v50 = v7;
  if (!v14)
  {
    sub_1BE048C84();
    v35 = MEMORY[0x1E69E7CC0];
LABEL_17:
    v13, v28, v29, v30, v31, v32, v33, v34;
    sub_1BD0E5E8C(0, &qword_1EBD35E90, 0x1E69E9610);
    v36 = sub_1BE052D54();
    v37 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v38 = swift_allocObject();
    v38[2] = v37;
    v38[3] = v35;
    aBlock[4] = sub_1BD56AAD4;
    v54 = v38;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1BD126964;
    aBlock[3] = &block_descriptor_50_2;
    v39 = _Block_copy(aBlock);
    v54, v40, v41, v42, v43, v44, v45, v46;
    sub_1BE051F74();
    aBlock[0] = MEMORY[0x1E69E7CC0];
    sub_1BD56AADC(&qword_1EBD366B0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0, &unk_1BE0B8FF0);
    sub_1BD0DE4F4(&qword_1EBD35F20, &unk_1EBD387F0, &unk_1BE0B8FF0, MEMORY[0x1E69E6328]);
    v47 = v52;
    sub_1BE053664();
    MEMORY[0x1BFB3FDF0](0, v12, v6, v39);
    _Block_release(v39);

    (*(v51 + 8))(v6, v47);
    (*(v49 + 8))(v12, v50);
    return;
  }

  if (v14 >= 1)
  {
    sub_1BE048C84();
    v15 = 0;
    do
    {
      if ((v13 & 0xC000000000000001) != 0)
      {
        v16 = MEMORY[0x1BFB40900](v15, v13);
      }

      else
      {
        v16 = *(v13 + 8 * v15 + 32);
      }

      v17 = v16;
      type metadata accessor for TransactionGroupPresentation(0);
      swift_allocObject();
      v18 = v17;
      v19 = sub_1BD2B0580(v18);

      v20 = sub_1BE048964();
      MEMORY[0x1BFB3F7A0](v20);
      if (*((v55 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v55 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1BE052774();
      }

      ++v15;
      sub_1BE0527C4();
      v19, v21, v22, v23, v24, v25, v26, v27;
    }

    while (v14 != v15);
    v35 = v55;
    goto LABEL_17;
  }

  __break(1u);
}

uint64_t sub_1BD5695FC(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1BE048C84();
    return sub_1BE04D8C4();
  }

  return result;
}

void sub_1BD56970C()
{
  v1 = v0;
  v2 = sub_1BE051F54();
  v62 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v60 = v49 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = sub_1BE051FA4();
  v59 = *(v61 - 8);
  MEMORY[0x1EEE9AC00](v61);
  v58 = v49 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1BE051F44();
  v57 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = (v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v8);
  v10 = (v49 - v9);
  v11 = sub_1BE051FC4();
  v55 = *(v11 - 8);
  v56 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v13 = v49 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = v49 - v15;
  v17 = sub_1BE052DC4();
  MEMORY[0x1EEE9AC00](v17);
  v20 = v49 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v1 + OBJC_IVAR____TtC9PassKitUI15TransactionList_activeState) != 2)
  {
    v21 = OBJC_IVAR____TtC9PassKitUI15TransactionList_timer;
    if (*(v1 + OBJC_IVAR____TtC9PassKitUI15TransactionList_timer))
    {
      if ((*(v1 + OBJC_IVAR____TtC9PassKitUI15TransactionList_activeState) & 0x100) == 0)
      {
        swift_getObjectType();
        swift_unknownObjectRetain();
        sub_1BE052E04();
        swift_unknownObjectRelease();
        *(v1 + v21) = 0;

        swift_unknownObjectRelease();
      }
    }

    else if ((*(v1 + OBJC_IVAR____TtC9PassKitUI15TransactionList_activeState) & 0x100) != 0)
    {
      ObjectType = v18;
      v51 = sub_1BD0E5E8C(0, &unk_1EBD39A90, 0x1E69E9630);
      sub_1BD0E5E8C(0, &qword_1EBD35E90, 0x1E69E9610);
      v53 = v2;
      v54 = v1;
      v50 = sub_1BE052D54();
      aBlock[0] = MEMORY[0x1E69E7CC0];
      v49[1] = sub_1BD56AADC(&unk_1EBD3F6A0, MEMORY[0x1E69E80B0], MEMORY[0x1E69E80B8]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39AA0, &qword_1BE0B95A0);
      sub_1BD0DE4F4(&qword_1EBD3F6B0, &unk_1EBD39AA0, &qword_1BE0B95A0, MEMORY[0x1E69E6328]);
      sub_1BE053664();
      v22 = v50;
      v23 = sub_1BE052DD4();

      (*(ObjectType + 8))(v20, v17);
      *(v54 + v21) = v23;
      v51 = v23;
      swift_unknownObjectRetain();
      swift_unknownObjectRelease();
      ObjectType = swift_getObjectType();
      sub_1BE051FB4();
      *v10 = 60;
      v24 = *MEMORY[0x1E69E7F48];
      v25 = v57;
      v50 = *(v57 + 104);
      v50(v10, v24, v5);
      MEMORY[0x1BFB3F070](v13, v10);
      v26 = *(v25 + 8);
      v26(v10, v5);
      v57 = *(v55 + 8);
      v27 = v13;
      v28 = v56;
      (v57)(v27, v56);
      *v10 = 60;
      v50(v10, v24, v5);
      v29 = ObjectType;
      sub_1BD85BBDC(v7);
      MEMORY[0x1BFB3FF60](v16, v10, v7, v29);
      v26(v7, v5);
      v26(v10, v5);
      (v57)(v16, v28);
      v30 = swift_allocObject();
      swift_unknownObjectWeakInit();
      aBlock[4] = sub_1BD56AABC;
      v64 = v30;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1BD126964;
      aBlock[3] = &block_descriptor_123;
      v31 = _Block_copy(aBlock);
      sub_1BE048964();
      v32 = v58;
      sub_1BD85BC54(v29);
      v33 = v60;
      sub_1BD56AC68();
      sub_1BE052DE4();
      _Block_release(v31);
      (*(v62 + 8))(v33, v53);
      (*(v59 + 8))(v32, v61);
      v34 = v64;
      v30, v35, v36, v37, v38, v39, v40, v41;
      v34, v42, v43, v44, v45, v46, v47, v48;
      sub_1BE052E14();
      swift_unknownObjectRelease();
    }
  }
}

void sub_1BD569E1C(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = *(Strong + OBJC_IVAR____TtC9PassKitUI15TransactionList_transactionFetcher);
    v3 = Strong;
    v4 = swift_allocObject();
    swift_unknownObjectWeakInit();
    aBlock[4] = sub_1BD56AAC4;
    v14 = v4;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1BD56AD40;
    aBlock[3] = &block_descriptor_35_1;
    v5 = _Block_copy(aBlock);
    v14, v6, v7, v8, v9, v10, v11, v12;
    [v2 reloadTransactionsWithCompletion_];
    _Block_release(v5);
  }
}

id sub_1BD569F60()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TransactionList(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for TransactionList(uint64_t a1)
{
  result = qword_1EBD4AA48;
  if (!qword_1EBD4AA48)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1BD56A14C(uint64_t a1)
{
  sub_1BD0E4578(319, &unk_1EBD4AA58, &qword_1EBD3FBC0, &unk_1BE0E1AC0);
  if (v1 <= 0x3F)
  {
    sub_1BD0E4578(319, &qword_1EBD4AA68, &qword_1EBD4AA70, &qword_1BE0F8700);
    if (v2 <= 0x3F)
    {
      sub_1BD56A2A8();
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_1BD56A2A8()
{
  if (!qword_1EBD4AA78)
  {
    v0 = sub_1BE04D8D4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBD4AA78);
    }
  }
}

unint64_t sub_1BD56A350()
{
  result = qword_1EBD4AAF0;
  if (!qword_1EBD4AAF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4AAF0);
  }

  return result;
}

uint64_t sub_1BD56A3A4@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for TransactionList(0);
  result = sub_1BE04D814();
  *a2 = result;
  return result;
}

void sub_1BD56A3E4(void *a2@<X8>)
{
  KeyPath = swift_getKeyPath();
  v4 = swift_getKeyPath();
  sub_1BE04D8B4(&v19);
  KeyPath, v5, v6, v7, v8, v9, v10, v11;
  v4, v12, v13, v14, v15, v16, v17, v18;
  *a2 = v19;
}

uint64_t sub_1BD56A464(uint64_t *a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE048C84();
  v3 = v2;
  return sub_1BE04D8C4();
}

void sub_1BD56A4DC(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39970, &unk_1BE0B9F80);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &aBlock[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &aBlock[-1] - v10;
  v12 = sub_1BE04AF64();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v48 = &aBlock[-1] - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v3[OBJC_IVAR____TtC9PassKitUI15TransactionList_activeState] = 2;
  *&v3[OBJC_IVAR____TtC9PassKitUI15TransactionList_timer] = 0;
  swift_beginAccess();
  v15 = MEMORY[0x1E69E7CC0];
  v52 = MEMORY[0x1E69E7CC0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3FBC0, &unk_1BE0E1AC0);
  sub_1BE04D874();
  swift_endAccess();
  swift_beginAccess();
  v52 = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4AA70, &qword_1BE0F8700);
  sub_1BE04D874();
  swift_endAccess();
  swift_beginAccess();
  LOBYTE(v52) = 0;
  sub_1BE04D874();
  swift_endAccess();
  *&v3[OBJC_IVAR____TtC9PassKitUI15TransactionList_account] = a1;
  v16 = objc_allocWithZone(MEMORY[0x1E69B92F8]);
  v17 = a1;
  v18 = [v16 initWithAccount_];
  *&v3[OBJC_IVAR____TtC9PassKitUI15TransactionList_source] = v18;
  v19 = [objc_allocWithZone(MEMORY[0x1E69B9300]) initWithTransactionSource_];
  v20 = [objc_allocWithZone(MEMORY[0x1E69B8BD8]) init];
  v21 = [objc_allocWithZone(MEMORY[0x1E69B8788]) initWithTransactionSourceCollection:v19 paymentDataProvider:v20];

  if (!v21)
  {
    __break(1u);
    goto LABEL_14;
  }

  v22 = OBJC_IVAR____TtC9PassKitUI15TransactionList_transactionFetcher;
  *&v3[OBJC_IVAR____TtC9PassKitUI15TransactionList_transactionFetcher] = v21;
  [v21 setCashbackPass_];
  [*&v3[v22] setAllowSynchronousFetch_];
  v23 = *&v3[v22];
  v24 = [v17 savingsDetails];
  if (!v24)
  {
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
    return;
  }

  v25 = v24;
  v26 = [v24 createdDate];

  if (v26)
  {
    sub_1BE04AEE4();

    v27 = 0;
  }

  else
  {
    v27 = 1;
  }

  (*(v13 + 56))(v8, v27, 1, v12);
  sub_1BD1CBBEC(v8, v11);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_1BD15D69C(v11);
    v28 = 0;
  }

  else
  {
    v29 = v48;
    sub_1BE04ADD4();
    v30 = *(v13 + 8);
    v30(v11, v12);
    v28 = sub_1BE04AE64();
    v30(v29, v12);
  }

  [v23 setLimit:10 startDate:v28 endDate:0];

  v31 = [objc_allocWithZone(PKPaymentTransactionIconGenerator) initWithCache:1 scale:PKUIScreenScale()];
  if (!v31)
  {
    goto LABEL_15;
  }

  *&v3[OBJC_IVAR____TtC9PassKitUI15TransactionList_iconGenerator] = v31;
  v32 = type metadata accessor for TransactionList(0);
  v51.receiver = v3;
  v51.super_class = v32;
  v33 = objc_msgSendSuper2(&v51, sel_init);
  v34 = [objc_opt_self() sharedInstance];
  if (v34)
  {
    v35 = v34;
    v36 = [v34 registerObserver_];

    *&v33[OBJC_IVAR____TtC9PassKitUI15TransactionList_activeState] = v36 & 0x101;
  }

  sub_1BD56970C();
  v37 = OBJC_IVAR____TtC9PassKitUI15TransactionList_transactionFetcher;
  v38 = *&v33[OBJC_IVAR____TtC9PassKitUI15TransactionList_transactionFetcher];
  v39 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = sub_1BD56AC60;
  v50 = v39;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BD56AD40;
  aBlock[3] = &block_descriptor_83;
  v40 = _Block_copy(aBlock);
  v50, v41, v42, v43, v44, v45, v46, v47;
  [v38 reloadTransactionsWithCompletion_];
  _Block_release(v40);
  [*&v33[v37] setDelegate_];
}

uint64_t sub_1BD56AADC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1BD56AB24(__int16 a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC9PassKitUI15TransactionList_activeState);
  if (v2 != 2)
  {
    *(v1 + OBJC_IVAR____TtC9PassKitUI15TransactionList_activeState) = a1 & 0x101;
    if ((a1 & 1) != 0 && (v2 & 1) == 0)
    {
      v3 = *(v1 + OBJC_IVAR____TtC9PassKitUI15TransactionList_transactionFetcher);
      v4 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v13[4] = sub_1BD56AC60;
      v14 = v4;
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 1107296256;
      v13[2] = sub_1BD56AD40;
      v13[3] = &block_descriptor_78_0;
      v5 = _Block_copy(v13);
      v14, v6, v7, v8, v9, v10, v11, v12;
      [v3 reloadTransactionsWithCompletion_];
      _Block_release(v5);
    }

    sub_1BD56970C();
  }
}

uint64_t sub_1BD56AC68()
{
  sub_1BE051F54();
  sub_1BD56E888(&qword_1EBD366B0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0, &unk_1BE0B8FF0);
  sub_1BD126024(&qword_1EBD35F20, &unk_1EBD387F0, &unk_1BE0B8FF0);
  return sub_1BE053664();
}

void sub_1BD56AD40(uint64_t a1, void *a2)
{
  v2 = a2;
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);
  if (a2)
  {
    sub_1BD0E5E8C(0, &qword_1EBD4AB10, 0x1E69B8EA8);
    v2 = sub_1BE052744();
  }

  sub_1BE048964();
  v4(v2);
  v3, v5, v6, v7, v8, v9, v10, v11;

  v2, v12, v13, v14, v15, v16, v17, v18;
}

id sub_1BD56ADF8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AccountTransferAuthorizationController(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for AccountTransferAuthorizationController(uint64_t a1)
{
  result = qword_1EBD4ABD0;
  if (!qword_1EBD4ABD0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1BD56AFCC(uint64_t a1)
{
  result = sub_1BE051F44();
  if (v2 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

uint64_t sub_1BD56B0C4@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for AccountTransferAuthorizationController(0);
  result = sub_1BE04D814();
  *a2 = result;
  return result;
}

void sub_1BD56B114(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    if (*(Strong + OBJC_IVAR____TtC9PassKitUI38AccountTransferAuthorizationController_authorized) == 1)
    {
      if (*(Strong + OBJC_IVAR____TtC9PassKitUI38AccountTransferAuthorizationController_presentFraudStepUp))
      {
        v3 = &OBJC_IVAR____TtC9PassKitUI38AccountTransferAuthorizationController_stepUpAction;
      }

      else
      {
        v3 = &OBJC_IVAR____TtC9PassKitUI38AccountTransferAuthorizationController_dismissAction;
      }

      v4 = Strong + *v3;
      v6 = *v4;
      v5 = *(v4 + 8);
      v7 = sub_1BE048964();
      v6(v7);
      v5, v8, v9, v10, v11, v12, v13, v14;
    }

    v15 = *&v2[OBJC_IVAR____TtC9PassKitUI38AccountTransferAuthorizationController_transferDidFinish];
    if (v15)
    {
      v15();
    }
  }
}

void sub_1BD56B2E4(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void (*a5)(uint64_t, uint64_t))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = *(Strong + OBJC_IVAR____TtC9PassKitUI38AccountTransferAuthorizationController_scheduleTransferRequest);
    *(Strong + OBJC_IVAR____TtC9PassKitUI38AccountTransferAuthorizationController_scheduleTransferRequest) = a3;
    v11 = Strong;
    v12 = a3;
  }

  if (a5)
  {
    a5(a2, a1);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1BD56B470(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_1BE051F54();
  v33 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_1BE051FA4();
  v12 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v14 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BD0E5E8C(0, &qword_1EBD35E90, 0x1E69E9610);
  v31 = sub_1BE052D54();
  v15 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v16 = swift_allocObject();
  v16[2] = v15;
  v16[3] = a1;
  v16[4] = a2;
  v16[5] = a4;
  v16[6] = a5;
  aBlock[4] = sub_1BD56E878;
  v35 = v16;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BD126964;
  aBlock[3] = &block_descriptor_42_1;
  v17 = _Block_copy(aBlock);
  v18 = v35;
  v19 = a1;
  v20 = a2;
  sub_1BD0D44B8(a4, a5);
  v18, v21, v22, v23, v24, v25, v26, v27;
  sub_1BE051F74();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1BD56E888(&qword_1EBD366B0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0, &unk_1BE0B8FF0);
  sub_1BD126024(&qword_1EBD35F20, &unk_1EBD387F0, &unk_1BE0B8FF0);
  sub_1BE053664();
  v28 = v31;
  MEMORY[0x1BFB3FDF0](0, v14, v11, v17);
  _Block_release(v17);

  (*(v33 + 8))(v11, v9);
  return (*(v12 + 8))(v14, v32);
}

void sub_1BD56B7A0(uint64_t a1, void (*a2)(void *), void *a3, void (*a4)(void *), uint64_t a5)
{
  v285 = a5;
  v286 = a4;
  v287 = a3;
  v7 = sub_1BE04AF64();
  v276 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v257 = v248 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v275 = v248 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v255 = v248 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v15 = v248 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v256 = v248 - v17;
  v278 = sub_1BE051F54();
  v274 = *(v278 - 8);
  MEMORY[0x1EEE9AC00](v278);
  v273 = v248 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v272 = sub_1BE051FA4();
  v271 = *(v272 - 8);
  MEMORY[0x1EEE9AC00](v272);
  v270 = v248 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v269 = sub_1BE051F44();
  v268 = *(v269 - 1);
  MEMORY[0x1EEE9AC00](v269);
  v267 = (v248 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v21);
  v266 = v248 - v22;
  v265 = sub_1BE051FC4();
  v264 = *(v265 - 8);
  MEMORY[0x1EEE9AC00](v265);
  v262 = v248 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v263 = v248 - v25;
  v280 = sub_1BE04D214();
  v281 = *(v280 - 8);
  MEMORY[0x1EEE9AC00](v280);
  v279 = v248 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v254 = v248 - v28;
  MEMORY[0x1EEE9AC00](v29);
  v261 = v248 - v30;
  v260 = sub_1BE052DC4();
  v259 = *(v260 - 8);
  MEMORY[0x1EEE9AC00](v260);
  v258 = v248 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_1BE04BD74();
  v33 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v35 = v248 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v36);
  v38 = v248 - v37;
  MEMORY[0x1EEE9AC00](v39);
  v41 = v248 - v40;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v43 = Strong;
    v253 = v7;
    v251 = a1;
    v283 = a2;
    v45 = a2 == 0;
    v44 = v287;
    v45 = !v45 && v287 == 0;
    v46 = v45;
    v47 = OBJC_IVAR____TtC9PassKitUI38AccountTransferAuthorizationController_authorized;
    *(Strong + OBJC_IVAR____TtC9PassKitUI38AccountTransferAuthorizationController_authorized) = v46;
    LODWORD(v282) = v46;
    v48 = [objc_allocWithZone(MEMORY[0x1E69B8B80]) initWithStatus:v46 ^ 1u errors:0];
    v49 = v48;
    v50 = v43[v47];
    v284 = v43;
    v252 = v15;
    if ((v50 & 1) == 0)
    {
      v277 = v48;
      v51 = *MEMORY[0x1E69B80E0];
      v249 = *(v33 + 104);
      v249(v41, v51, v32);
      v52 = PKPassKitBundle();
      if (!v52)
      {
LABEL_78:
        __break(1u);
        goto LABEL_79;
      }

      v53 = v52;
      v248[1] = sub_1BE04B6F4();
      v55 = v54;

      v56 = *(v33 + 8);
      v56(v41, v32);
      if (v44)
      {
        v250 = v55;
        aBlock = v44;
        v64 = v44;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E5A0, &qword_1BE0BFD10);
        sub_1BD0E5E8C(0, &qword_1EBD45E80, 0x1E696ABC0);
        if (swift_dynamicCast())
        {
          v65 = v288;
          if ([v288 code] == 60015)
          {
            v250, v66, v67, v68, v69, v70, v71, v72;
            v249(v38, v51, v32);
            v73 = PKPassKitBundle();
            if (!v73)
            {
LABEL_82:
              __break(1u);
              goto LABEL_83;
            }

            v74 = v73;
            sub_1BE04B6F4();
            v76 = v75;

            v77 = v38;
            goto LABEL_36;
          }

          if ([v65 code] == 60016)
          {
            v250, v105, v106, v107, v108, v109, v110, v111;
            v249(v35, v51, v32);
            v112 = PKPassKitBundle();
            if (!v112)
            {
LABEL_83:
              __break(1u);
              return;
            }

            v113 = v112;
            sub_1BE04B6F4();
            v76 = v114;

            v77 = v35;
LABEL_36:
            v56(v77, v32);
            v43 = v284;
            v49 = v277;
            goto LABEL_37;
          }

          v123 = [v65 code];
          v43 = v284;
          if (v123 == 60000)
          {
            v124 = [v65 localizedFailureReason];
            v49 = v277;
            v125 = v250;
            if (v124)
            {
              v126 = v124;
              sub_1BE052434();
              v76 = v127;

              if (sub_1BE052534() >= 1)
              {
                v125, v128, v129, v130, v131, v132, v133, v134;
                goto LABEL_37;
              }

              v76, v128, v129, v130, v131, v132, v133, v134;
            }

            v76 = v125;
          }

          else
          {
            v76 = v250;
            v49 = v277;
          }

LABEL_37:
          v115 = sub_1BE052404();
          v76, v116, v117, v118, v119, v120, v121, v122;
          [v49 setLocalizedErrorMessageOverride_];

          v79 = v283;
          if (!v283)
          {
            goto LABEL_38;
          }

          goto LABEL_19;
        }

        v78 = v250;
      }

      else
      {
        v78 = v55;
      }

      v78, v57, v58, v59, v60, v61, v62, v63;
      v43 = v284;
      v49 = v277;
    }

    v79 = v283;
    if (!v283)
    {
      goto LABEL_38;
    }

LABEL_19:
    objc_opt_self();
    v80 = swift_dynamicCastObjCClass();
    if (v80)
    {
      v81 = v80;
      v82 = v79;
      v83 = [v81 transfers];
      if (!v83)
      {
LABEL_79:
        __break(1u);
        goto LABEL_80;
      }

      v84 = v83;
      sub_1BD0E5E8C(0, &qword_1EBD4AD60, 0x1E69B8430);
      v85 = sub_1BE052744();

      v277 = v49;
      if (v85 >> 62)
      {
        goto LABEL_49;
      }

      for (i = *((v85 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1BE053704())
      {
        v94 = 0;
        while (1)
        {
          if ((v85 & 0xC000000000000001) != 0)
          {
            v95 = MEMORY[0x1BFB40900](v94, v85);
          }

          else
          {
            if (v94 >= *((v85 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_48;
            }

            v95 = *(v85 + 8 * v94 + 32);
          }

          v96 = v95;
          v97 = v94 + 1;
          if (__OFADD__(v94, 1))
          {
            break;
          }

          if ([v95 state] == 5 && objc_msgSend(v96, sel_statusCode) == 2)
          {
            v85, v98, v99, v100, v101, v102, v103, v104;

            goto LABEL_51;
          }

          ++v94;
          if (v97 == i)
          {
            goto LABEL_50;
          }
        }

        __break(1u);
LABEL_48:
        __break(1u);
LABEL_49:
        ;
      }

LABEL_50:
      v85, v86, v87, v88, v89, v90, v91, v92;

      v96 = 0;
LABEL_51:

      v43 = v284;
      v284[OBJC_IVAR____TtC9PassKitUI38AccountTransferAuthorizationController_presentFraudStepUp] = v96 != 0;
      v49 = v277;
      if (!v282)
      {
        goto LABEL_53;
      }

      goto LABEL_52;
    }

LABEL_38:
    if (!v282)
    {
LABEL_53:
      v135 = v286;
      if (v286)
      {
LABEL_54:
        v136 = v49;
        v135(v49);

LABEL_55:
        return;
      }

      __break(1u);
      goto LABEL_78;
    }

LABEL_52:
    if ((v43[OBJC_IVAR____TtC9PassKitUI38AccountTransferAuthorizationController_presentFraudStepUp] & 1) == 0)
    {
      v135 = OBJC_IVAR____TtC9PassKitUI38AccountTransferAuthorizationController_accountModel;
      v137 = *&v43[OBJC_IVAR____TtC9PassKitUI38AccountTransferAuthorizationController_accountModel];
      sub_1BD1E0C6C();

      v138 = OBJC_IVAR____TtC9PassKitUI38AccountTransferAuthorizationController_waitingForData;
      if (*&v43[OBJC_IVAR____TtC9PassKitUI38AccountTransferAuthorizationController_waitingForData])
      {
        v139 = v279;
        sub_1BE04D194();
        v140 = sub_1BE04D204();
        v141 = sub_1BE052C34();
        if (os_log_type_enabled(v140, v141))
        {
          v142 = swift_slowAlloc();
          *v142 = 0;
          _os_log_impl(&dword_1BD026000, v140, v141, "Transfer timer already exist, abort", v142, 2u);
          v143 = v142;
          v139 = v279;
          MEMORY[0x1BFB45F20](v143, -1, -1);
        }

        (*(v281 + 8))(v139, v280);
        if (*&v43[v138])
        {
          swift_getObjectType();
          swift_unknownObjectRetain();
          sub_1BE052E04();
          swift_unknownObjectRelease();
        }

        v135 = v286;
        if (v286)
        {
          goto LABEL_54;
        }

        __break(1u);
      }

      v283 = v135;
      v144 = v49;
      sub_1BD0E5E8C(0, &unk_1EBD39A90, 0x1E69E9630);
      aBlock = MEMORY[0x1E69E7CC0];
      sub_1BD56E888(&unk_1EBD3F6A0, MEMORY[0x1E69E80B0], MEMORY[0x1E69E80B8]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39AA0, &qword_1BE0B95A0);
      sub_1BD126024(&qword_1EBD3F6B0, &unk_1EBD39AA0, &qword_1BE0B95A0);
      v145 = v258;
      v146 = v260;
      sub_1BE053664();
      v147 = sub_1BE052DD4();
      (*(v259 + 8))(v145, v146);
      *&v43[v138] = v147;
      v287 = v147;
      swift_unknownObjectRetain();
      swift_unknownObjectRelease();
      v148 = v261;
      sub_1BE04D194();
      v149 = sub_1BE04D204();
      v150 = sub_1BE052C54();
      if (os_log_type_enabled(v149, v150))
      {
        v151 = swift_slowAlloc();
        *v151 = 0;
        _os_log_impl(&dword_1BD026000, v149, v150, "Creating timer to wait for transfer data", v151, 2u);
        MEMORY[0x1BFB45F20](v151, -1, -1);
      }

      v152 = *(v281 + 8);
      v281 += 8;
      v261 = v152;
      (v152)(v148, v280);
      ObjectType = swift_getObjectType();
      v154 = v262;
      sub_1BE051FB4();
      v155 = &v43[OBJC_IVAR____TtC9PassKitUI38AccountTransferAuthorizationController_dismissalTimer];
      v156 = v263;
      MEMORY[0x1BFB3F070](v154, v155);
      v157 = *(v264 + 8);
      v158 = v265;
      v157(v154, v265);
      v159 = v266;
      sub_1BD85BB68(v266);
      v160 = v267;
      sub_1BD85BBDC(v267);
      MEMORY[0x1BFB3FF60](v156, v159, v160, ObjectType);
      v161 = *(v268 + 8);
      v162 = v160;
      v163 = v269;
      v161(v162, v269);
      v161(v159, v163);
      v157(v156, v158);
      v164 = swift_allocObject();
      v166 = v285;
      v165 = v286;
      v164[2] = v286;
      v164[3] = v166;
      v164[4] = v144;
      v293 = sub_1BD56E8D0;
      v294 = v164;
      aBlock = MEMORY[0x1E69E9820];
      v290 = 1107296256;
      v282 = &v291;
      v291 = sub_1BD126964;
      v292 = &block_descriptor_48_1;
      v167 = _Block_copy(&aBlock);
      v269 = v144;
      sub_1BD0D44B8(v165, v166);
      v168 = v270;
      sub_1BD85BC54(ObjectType);
      v169 = v273;
      sub_1BD56AC68();
      sub_1BE052DE4();
      _Block_release(v167);
      v279 = *(v274 + 8);
      (v279)(v169, v278);
      v277 = *(v271 + 8);
      v170 = v272;
      v277(v168, v272);
      v294, v171, v172, v173, v174, v175, v176, v177;
      v178 = swift_allocObject();
      v178[2] = v165;
      v178[3] = v166;
      v179 = v269;
      v178[4] = v269;
      v293 = sub_1BD56E940;
      v294 = v178;
      aBlock = MEMORY[0x1E69E9820];
      v290 = 1107296256;
      v291 = sub_1BD126964;
      v292 = &block_descriptor_54;
      v180 = _Block_copy(&aBlock);
      v282 = v179;
      sub_1BD0D44B8(v165, v166);
      sub_1BE051F74();
      sub_1BD56AC68();
      sub_1BE052DF4();
      _Block_release(v180);
      (v279)(v169, v278);
      v181 = v284;
      v277(v168, v170);
      v294, v182, v183, v184, v185, v186, v187, v188;
      sub_1BE052E14();
      v189 = v283;
      v190 = *(v283 + v181);
      swift_getKeyPath();
      swift_getKeyPath();
      LOBYTE(aBlock) = 1;
      v191 = v190;
      sub_1BE04D8C4();
      v192 = *&v181[OBJC_IVAR____TtC9PassKitUI38AccountTransferAuthorizationController_accountService];
      if (v192)
      {
        [v192 registerObserver_];
      }

      KeyPath = swift_getKeyPath();
      v194 = swift_getKeyPath();
      sub_1BE04D8B4(&aBlock);
      KeyPath, v195, v196, v197, v198, v199, v200, v201;
      v194, v202, v203, v204, v205, v206, v207, v208;
      v209 = aBlock;
      v210 = [aBlock lastUpdated];

      v211 = v181;
      v212 = v253;
      v213 = v276;
      v214 = v252;
      if (v210)
      {
        v215 = v256;
        sub_1BE04AEE4();

        v216 = v255;
        sub_1BE04AEF4();
        sub_1BE04AEA4();
        v217 = *(v213 + 8);
        v217(v216, v212);
        LOBYTE(v216) = sub_1BE04AE74();
        v217(v214, v212);
        if (v216)
        {
          v218 = v254;
          sub_1BE04D194();
          v219 = sub_1BE04D204();
          v220 = sub_1BE052C54();
          if (os_log_type_enabled(v219, v220))
          {
            v221 = swift_slowAlloc();
            *v221 = 0;
            _os_log_impl(&dword_1BD026000, v219, v220, "Found a recent account update", v221, 2u);
            MEMORY[0x1BFB45F20](v221, -1, -1);
          }

          (v261)(v218, v280);
          v211 = v284;
          v222 = *(v189 + v284);
          swift_getKeyPath();
          swift_getKeyPath();
          LOBYTE(aBlock) = 0;
          v223 = v222;
          sub_1BE04D8C4();
          v212 = v253;
          v217(v256, v253);
          v211[OBJC_IVAR____TtC9PassKitUI38AccountTransferAuthorizationController_hasReceivedAccountUpdate] = 1;
          v213 = v276;
        }

        else
        {
          v217(v215, v212);
          v213 = v276;
          v211 = v284;
        }
      }

      v224 = OBJC_IVAR____TtC9PassKitUI38AccountTransferAuthorizationController_transactionFetcher;
      v225 = *&v211[OBJC_IVAR____TtC9PassKitUI38AccountTransferAuthorizationController_transactionFetcher];
      sub_1BE04AEF4();
      v226 = sub_1BE04AE64();
      v227 = *(v213 + 8);
      v227(v214, v212);
      v228 = PKStartOfDay();

      if (v228)
      {
        v229 = v275;
        sub_1BE04AEE4();

        v230 = sub_1BE04AE64();
        v227(v229, v212);
        sub_1BE04AEF4();
        v231 = sub_1BE04AE64();
        v227(v214, v212);
        v232 = PKEndOfDay();

        if (v232)
        {
          v233 = v257;
          sub_1BE04AEE4();

          v234 = sub_1BE04AE64();
          v227(v233, v212);
          [v225 setLimit:1 startDate:v230 endDate:v234];

          v235 = v284;
          [*&v284[v224] setDelegate_];
          v236 = *&v235[v224];
          v237 = swift_allocObject();
          swift_beginAccess();
          v238 = swift_unknownObjectWeakLoadStrong();
          swift_unknownObjectWeakInit();
          v136 = v236;

          v239 = swift_allocObject();
          v239[2] = 0x4014000000000000;
          v239[3] = v237;
          v293 = sub_1BD56E968;
          v294 = v239;
          aBlock = MEMORY[0x1E69E9820];
          v290 = 1107296256;
          v291 = sub_1BD56AD40;
          v292 = &block_descriptor_67_1;
          v240 = _Block_copy(&aBlock);
          v294, v241, v242, v243, v244, v245, v246, v247;
          [v136 reloadTransactionsWithCompletion_];

          _Block_release(v240);
          swift_unknownObjectRelease();
          goto LABEL_55;
        }

        goto LABEL_81;
      }

LABEL_80:
      __break(1u);
LABEL_81:
      __break(1u);
      goto LABEL_82;
    }

    goto LABEL_53;
  }
}